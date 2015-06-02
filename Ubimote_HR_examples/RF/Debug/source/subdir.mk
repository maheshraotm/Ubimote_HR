################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/basic_rf.c \
../source/hal_int.c \
../source/hal_rf.c \
../source/hal_timer_32k.c \
../source/main.c 

OBJS += \
./source/basic_rf.o \
./source/hal_int.o \
./source/hal_rf.o \
./source/hal_timer_32k.o \
./source/main.o 

C_DEPS += \
./source/basic_rf.d \
./source/hal_int.d \
./source/hal_rf.d \
./source/hal_timer_32k.d \
./source/main.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


