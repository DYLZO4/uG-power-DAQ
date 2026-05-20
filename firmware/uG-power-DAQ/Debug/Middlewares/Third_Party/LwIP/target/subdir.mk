################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/target/ethernetif.c 

OBJS += \
./Middlewares/Third_Party/LwIP/target/ethernetif.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/target/ethernetif.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/target/%.o Middlewares/Third_Party/LwIP/target/%.su Middlewares/Third_Party/LwIP/target/%.cyclo: ../Middlewares/Third_Party/LwIP/target/%.c Middlewares/Third_Party/LwIP/target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H563xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H5xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/src" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/src/include" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/system" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/system/arch" -I../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP/app" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP/target" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Drivers/BSP/Components/lan8742" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-target

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-target:
	-$(RM) ./Middlewares/Third_Party/LwIP/target/ethernetif.cyclo ./Middlewares/Third_Party/LwIP/target/ethernetif.d ./Middlewares/Third_Party/LwIP/target/ethernetif.o ./Middlewares/Third_Party/LwIP/target/ethernetif.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-target

