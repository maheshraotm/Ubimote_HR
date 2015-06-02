################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/opt/Ubimote_HR/driverlib/source/adc.c \
/opt/Ubimote_HR/driverlib/source/aes.c \
/opt/Ubimote_HR/driverlib/source/ccm.c \
/opt/Ubimote_HR/driverlib/source/cpu.c \
/opt/Ubimote_HR/driverlib/source/debug.c \
/opt/Ubimote_HR/driverlib/source/flash.c \
/opt/Ubimote_HR/driverlib/source/gpio.c \
/opt/Ubimote_HR/driverlib/source/gptimer.c \
/opt/Ubimote_HR/driverlib/source/i2c.c \
/opt/Ubimote_HR/driverlib/source/interrupt.c \
/opt/Ubimote_HR/driverlib/source/ioc.c \
/opt/Ubimote_HR/driverlib/source/pka.c \
/opt/Ubimote_HR/driverlib/source/sha256.c \
/opt/Ubimote_HR/driverlib/source/sleepmode.c \
/opt/Ubimote_HR/driverlib/source/ssi.c \
/opt/Ubimote_HR/driverlib/source/startup_gcc.c \
/opt/Ubimote_HR/driverlib/source/sys_ctrl.c \
/opt/Ubimote_HR/driverlib/source/systick.c \
/opt/Ubimote_HR/driverlib/source/uart.c \
/opt/Ubimote_HR/driverlib/source/uartstdio.c \
/opt/Ubimote_HR/driverlib/source/udma.c \
/opt/Ubimote_HR/driverlib/source/watchdog.c 

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
driverlib/source/adc.o: /opt/Ubimote_HR/driverlib/source/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/aes.o: /opt/Ubimote_HR/driverlib/source/aes.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ccm.o: /opt/Ubimote_HR/driverlib/source/ccm.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/cpu.o: /opt/Ubimote_HR/driverlib/source/cpu.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/debug.o: /opt/Ubimote_HR/driverlib/source/debug.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/flash.o: /opt/Ubimote_HR/driverlib/source/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/gpio.o: /opt/Ubimote_HR/driverlib/source/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/gptimer.o: /opt/Ubimote_HR/driverlib/source/gptimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/i2c.o: /opt/Ubimote_HR/driverlib/source/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/interrupt.o: /opt/Ubimote_HR/driverlib/source/interrupt.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ioc.o: /opt/Ubimote_HR/driverlib/source/ioc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/pka.o: /opt/Ubimote_HR/driverlib/source/pka.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sha256.o: /opt/Ubimote_HR/driverlib/source/sha256.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sleepmode.o: /opt/Ubimote_HR/driverlib/source/sleepmode.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/ssi.o: /opt/Ubimote_HR/driverlib/source/ssi.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/startup_gcc.o: /opt/Ubimote_HR/driverlib/source/startup_gcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/sys_ctrl.o: /opt/Ubimote_HR/driverlib/source/sys_ctrl.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/systick.o: /opt/Ubimote_HR/driverlib/source/systick.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/uart.o: /opt/Ubimote_HR/driverlib/source/uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/uartstdio.o: /opt/Ubimote_HR/driverlib/source/uartstdio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/udma.o: /opt/Ubimote_HR/driverlib/source/udma.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/source/watchdog.o: /opt/Ubimote_HR/driverlib/source/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I/opt/Ubimote_HR/driverlib -I/opt/Ubimote_HR/driverlib/headers -I/opt/Ubimote_HR/driverlib/source -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


