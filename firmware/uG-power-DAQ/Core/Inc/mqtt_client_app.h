/*
 * mqtt_client_app.h
 *
 *  Created on: 20 May 2026
 *      Author: dylan
 */

#ifndef MQTT_CLIENT_APP_H
#define MQTT_CLIENT_APP_H

#include "main.h"

/* Broker config */
#define MQTT_BROKER_IP_0    192
#define MQTT_BROKER_IP_1    168
#define MQTT_BROKER_IP_2    99
#define MQTT_BROKER_IP_3    30
#define MQTT_BROKER_PORT    1883

/* Node identity (we'll move to UID-based later) */
#define MQTT_NODE_ID        "node-001"
#define MQTT_CLIENT_ID      "ug-daq-" MQTT_NODE_ID

void mqtt_client_start(void);

#endif /* INC_MQTT_CLIENT_APP_H_ */
