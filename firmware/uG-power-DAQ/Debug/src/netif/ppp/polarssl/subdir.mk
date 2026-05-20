################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/netif/ppp/polarssl/arc4.c \
../src/netif/ppp/polarssl/des.c \
../src/netif/ppp/polarssl/md4.c \
../src/netif/ppp/polarssl/md5.c \
../src/netif/ppp/polarssl/sha1.c 

OBJS += \
./src/netif/ppp/polarssl/arc4.o \
./src/netif/ppp/polarssl/des.o \
./src/netif/ppp/polarssl/md4.o \
./src/netif/ppp/polarssl/md5.o \
./src/netif/ppp/polarssl/sha1.o 

C_DEPS += \
./src/netif/ppp/polarssl/arc4.d \
./src/netif/ppp/polarssl/des.d \
./src/netif/ppp/polarssl/md4.d \
./src/netif/ppp/polarssl/md5.d \
./src/netif/ppp/polarssl/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
src/netif/ppp/polarssl/%.o src/netif/ppp/polarssl/%.su src/netif/ppp/polarssl/%.cyclo: ../src/netif/ppp/polarssl/%.c src/netif/ppp/polarssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H563xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H5xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/lwip" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/lwip/app" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/lwip/target" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/src" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/src/include" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/system" -I"C:/Users/dylan/git/uG-power-DAQ/firmware2/uG-power-DAQ/system/arch" -I../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-netif-2f-ppp-2f-polarssl

clean-src-2f-netif-2f-ppp-2f-polarssl:
	-$(RM) ./src/netif/ppp/polarssl/arc4.cyclo ./src/netif/ppp/polarssl/arc4.d ./src/netif/ppp/polarssl/arc4.o ./src/netif/ppp/polarssl/arc4.su ./src/netif/ppp/polarssl/des.cyclo ./src/netif/ppp/polarssl/des.d ./src/netif/ppp/polarssl/des.o ./src/netif/ppp/polarssl/des.su ./src/netif/ppp/polarssl/md4.cyclo ./src/netif/ppp/polarssl/md4.d ./src/netif/ppp/polarssl/md4.o ./src/netif/ppp/polarssl/md4.su ./src/netif/ppp/polarssl/md5.cyclo ./src/netif/ppp/polarssl/md5.d ./src/netif/ppp/polarssl/md5.o ./src/netif/ppp/polarssl/md5.su ./src/netif/ppp/polarssl/sha1.cyclo ./src/netif/ppp/polarssl/sha1.d ./src/netif/ppp/polarssl/sha1.o ./src/netif/ppp/polarssl/sha1.su

.PHONY: clean-src-2f-netif-2f-ppp-2f-polarssl

