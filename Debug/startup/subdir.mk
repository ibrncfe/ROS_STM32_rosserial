################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f303xc.s 

OBJS += \
./startup/startup_stm32f303xc.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc/Legacy" -I"D:/workspace_ac6/ros_stm32_2/Utilities/STM32F3-Discovery" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/lsm303dlhc" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/Common" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/l3gd20" -I"D:/workspace_ac6/ros_stm32_2/inc" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/device" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/core" -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc" -I"D:/workspace_ac6/ros_stm32_2/ros_lib" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


