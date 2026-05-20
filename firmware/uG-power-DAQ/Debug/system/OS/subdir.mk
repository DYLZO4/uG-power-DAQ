################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/OS/sys_arch.c 

OBJS += \
./system/OS/sys_arch.o 

C_DEPS += \
./system/OS/sys_arch.d 


# Each subdirectory must supply rules for building sources it contributes
system/OS/%.o system/OS/%.su system/OS/%.cyclo: ../system/OS/%.c system/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H563xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H5xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/src" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/src/include" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/system" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/system/arch" -I../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP/app" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Middlewares/Third_Party/LwIP/target" -I"C:/Users/dylan/git/uG-power-DAQ/firmware/uG-power-DAQ/Drivers/BSP/Components/lan8742" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-system-2f-OS

clean-system-2f-OS:
	-$(RM) ./system/OS/sys_arch.cyclo ./system/OS/sys_arch.d ./system/OS/sys_arch.o ./system/OS/sys_arch.su

.PHONY: clean-system-2f-OS

