################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/syscalls.c \
../src/system_stm32f3xx.c 

CPP_SRCS += \
../src/main.cpp \
../src/stm32f3xx_hal_msp.cpp \
../src/stm32f3xx_it.cpp 

OBJS += \
./src/main.o \
./src/stm32f3xx_hal_msp.o \
./src/stm32f3xx_it.o \
./src/syscalls.o \
./src/system_stm32f3xx.o 

C_DEPS += \
./src/syscalls.d \
./src/system_stm32f3xx.d 

CPP_DEPS += \
./src/main.d \
./src/stm32f3xx_hal_msp.d \
./src/stm32f3xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo $(PWD)
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F3 -DSTM32F30 -DSTM32F303VCTx -DSTM32F3DISCOVERY -DDEBUG -DSTM32F303xC -DUSE_HAL_DRIVER -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc/Legacy" -I"D:/workspace_ac6/ros_stm32_2/Utilities/STM32F3-Discovery" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/lsm303dlhc" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/Common" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/l3gd20" -I"D:/workspace_ac6/ros_stm32_2/inc" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/device" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/core" -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc" -I"D:/workspace_ac6/ros_stm32_2/ros_lib" -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F3 -DSTM32F30 -DSTM32F303VCTx -DSTM32F3DISCOVERY -DDEBUG -DSTM32F303xC -DUSE_HAL_DRIVER -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc/Legacy" -I"D:/workspace_ac6/ros_stm32_2/Utilities/STM32F3-Discovery" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/lsm303dlhc" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/Common" -I"D:/workspace_ac6/ros_stm32_2/Utilities/Components/l3gd20" -I"D:/workspace_ac6/ros_stm32_2/inc" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/device" -I"D:/workspace_ac6/ros_stm32_2/CMSIS/core" -I"D:/workspace_ac6/ros_stm32_2/HAL_Driver/Inc" -I"D:/workspace_ac6/ros_stm32_2/ros_lib" -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


