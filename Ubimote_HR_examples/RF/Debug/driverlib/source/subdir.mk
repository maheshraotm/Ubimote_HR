################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/adc.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/aes.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ccm.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/cpu.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/debug.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/flash.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/gpio.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/gptimer.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/i2c.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/interrupt.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ioc.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/pka.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sha256.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sleepmode.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ssi.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/startup_gcc.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sys_ctrl.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/systick.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/uart.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/uartstdio.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/udma.c \
/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/watchdog.c 

OBJS += \
./driverlib/source/adc.o \
./driverlib/source/aes.o \
./driverlib/source/ccm.o \
./driverlib/source/cpu.o \
./driverlib/source/debug.o \
./driverlib/source/flash.o \
./driverlib/source/gpio.o \
./driverlib/source/gptimer.o \
./driverlib/source/i2c.o \
./driverlib/source/interrupt.o \
./driverlib/source/ioc.o \
./driverlib/source/pka.o \
./driverlib/source/sha256.o \
./driverlib/source/sleepmode.o \
./driverlib/source/ssi.o \
./driverlib/source/startup_gcc.o \
./driverlib/source/sys_ctrl.o \
./driverlib/source/systick.o \
./driverlib/source/uart.o \
./driverlib/source/uartstdio.o \
./driverlib/source/udma.o \
./driverlib/source/watchdog.o 

C_DEPS += \
./driverlib/source/adc.d \
./driverlib/source/aes.d \
./driverlib/source/ccm.d \
./driverlib/source/cpu.d \
./driverlib/source/debug.d \
./driverlib/source/flash.d \
./driverlib/source/gpio.d \
./driverlib/source/gptimer.d \
./driverlib/source/i2c.d \
./driverlib/source/interrupt.d \
./driverlib/source/ioc.d \
./driverlib/source/pka.d \
./driverlib/source/sha256.d \
./driverlib/source/sleepmode.d \
./driverlib/source/ssi.d \
./driverlib/source/startup_gcc.d \
./driverlib/source/sys_ctrl.d \
./driverlib/source/systick.d \
./driverlib/source/uart.d \
./driverlib/source/uartstdio.d \
./driverlib/source/udma.d \
./driverlib/source/watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
driverlib/source/adc.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/aes.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/aes.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ccm.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ccm.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/cpu.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/cpu.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/debug.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/debug.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/flash.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/gpio.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/gptimer.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/gptimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/i2c.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/interrupt.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/interrupt.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ioc.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ioc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/pka.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/pka.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sha256.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sha256.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sleepmode.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sleepmode.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ssi.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/ssi.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/startup_gcc.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/startup_gcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sys_ctrl.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/sys_ctrl.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/systick.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/systick.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/uart.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/uartstdio.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/uartstdio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/udma.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/udma.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/watchdog.o: /home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/source -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib -I/home/cdac/Ubimote_HR/Ubimote_HR_examples/driverlib/headers -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


