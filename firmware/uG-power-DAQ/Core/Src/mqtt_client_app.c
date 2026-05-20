/*
 * mqtt_client_app.c
 *
 *  Created on: 20 May 2026
 *      Author: dylan
 */
#include "mqtt_client_app.h"
#include "lwip/apps/mqtt.h"
#include "lwip/ip_addr.h"
#include "cmsis_os2.h"
#include <stdio.h>
#include <string.h>

static mqtt_client_t *client;
static ip_addr_t broker_addr;
static volatile uint8_t mqtt_connected = 0;
static volatile uint8_t mqtt_connecting = 0;
static uint32_t publish_counter = 0;

static osThreadId_t mqttTaskHandle;

/* Connection callback - called when broker accepts or rejects connection */
static void mqtt_connection_cb(mqtt_client_t *c, void *arg, mqtt_connection_status_t status)
{
    (void)c; (void)arg;
    mqtt_connecting = 0;
    if (status == MQTT_CONNECT_ACCEPTED) {
        printf("MQTT: connected to broker\r\n");
        mqtt_connected = 1;
    } else {
        printf("MQTT: connect failed, status=%d\r\n", status);
        mqtt_connected = 0;
    }
}

/* Publish completion callback - debugging */
static void mqtt_pub_request_cb(void *arg, err_t result)
{
    (void)arg;
    if (result != ERR_OK) {
        printf("MQTT: publish failed err=%d\r\n", result);
    }
}

static void mqtt_do_connect(void)
{
    if (mqtt_connecting || mqtt_connected) return;

    struct mqtt_connect_client_info_t ci;
    memset(&ci, 0, sizeof(ci));
    ci.client_id = MQTT_CLIENT_ID;
    ci.keep_alive = 60;

    IP4_ADDR(&broker_addr, MQTT_BROKER_IP_0, MQTT_BROKER_IP_1,
                           MQTT_BROKER_IP_2, MQTT_BROKER_IP_3);

    mqtt_connecting = 1;
    err_t err = mqtt_client_connect(client, &broker_addr, MQTT_BROKER_PORT,
                                     mqtt_connection_cb, NULL, &ci);
    if (err != ERR_OK) {
        mqtt_connecting = 0;
        printf("MQTT: mqtt_client_connect returned err=%d\r\n", err);
    }
}

/* Publish task - runs forever, publishes a counter every 1s */
static void mqtt_publish_task(void *argument)
{
    (void)argument;

    /* Give LwIP a moment to bring the netif up */
    osDelay(2000);

    client = mqtt_client_new();
    if (client == NULL) {
        printf("MQTT: mqtt_client_new failed\r\n");
        for(;;) osDelay(1000);  /* halt task */
    }

    mqtt_do_connect();

    char topic[64];
    char payload[64];

    for (;;) {
        if (mqtt_connected) {
            uint64_t ts_ns = (uint64_t)HAL_GetTick() * 1000000ULL;

            snprintf(topic, sizeof(topic),
                     "microgrid/%s/test/counter", MQTT_NODE_ID);
            snprintf(payload, sizeof(payload),
                     "{\"ts\":%llu,\"v\":%lu}",
                     (unsigned long long)ts_ns,
                     (unsigned long)publish_counter);

            err_t err = mqtt_publish(client, topic, payload, strlen(payload),
                                      0 /* qos */, 0 /* retain */,
                                      mqtt_pub_request_cb, NULL);
            if (err != ERR_OK) {
                printf("MQTT: mqtt_publish err=%d\r\n", err);
            } else {
                printf("MQTT pub: %s = %s\r\n", topic, payload);
            }

            publish_counter++;
        } else {
            /* Not connected, try reconnecting */
            mqtt_do_connect();
        }

        osDelay(1000);
    }
}

void mqtt_client_start(void)
{
    const osThreadAttr_t mqttTask_attr = {
        .name = "mqttTask",
        .priority = (osPriority_t)osPriorityNormal,
        .stack_size = 4096
    };
    mqttTaskHandle = osThreadNew(mqtt_publish_task, NULL, &mqttTask_attr);
}


