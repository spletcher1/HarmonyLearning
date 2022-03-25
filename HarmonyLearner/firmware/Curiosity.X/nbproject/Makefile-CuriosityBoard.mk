#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-CuriosityBoard.mk)" "nbproject/Makefile-local-CuriosityBoard.mk"
include nbproject/Makefile-local-CuriosityBoard.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=CuriosityBoard
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/CuriosityBoard/driver/i2c/src/drv_i2c.c ../src/config/CuriosityBoard/driver/usart/src/drv_usart.c ../src/config/CuriosityBoard/driver/usb/usbhs/src/drv_usbhs.c ../src/config/CuriosityBoard/driver/usb/usbhs/src/drv_usbhs_host.c ../src/config/CuriosityBoard/osal/osal_freertos.c ../src/config/CuriosityBoard/peripheral/cache/plib_cache.c ../src/config/CuriosityBoard/peripheral/cache/plib_cache_pic32mz.S ../src/config/CuriosityBoard/peripheral/clk/plib_clk.c ../src/config/CuriosityBoard/peripheral/coretimer/plib_coretimer.c ../src/config/CuriosityBoard/peripheral/dmac/plib_dmac.c ../src/config/CuriosityBoard/peripheral/evic/plib_evic.c ../src/config/CuriosityBoard/peripheral/gpio/plib_gpio.c ../src/config/CuriosityBoard/peripheral/i2c/master/plib_i2c1_master.c ../src/config/CuriosityBoard/peripheral/tmr/plib_tmr2.c ../src/config/CuriosityBoard/peripheral/tmr1/plib_tmr1.c ../src/config/CuriosityBoard/peripheral/uart/plib_uart2.c ../src/config/CuriosityBoard/stdio/xc32_monitor.c ../src/config/CuriosityBoard/system/dma/sys_dma.c ../src/config/CuriosityBoard/system/int/src/sys_int.c ../src/config/CuriosityBoard/system/time/src/sys_time.c ../src/config/CuriosityBoard/usb/src/usb_host_msd.c ../src/config/CuriosityBoard/usb/src/usb_host_scsi.c ../src/config/CuriosityBoard/usb/src/usb_host.c ../src/config/CuriosityBoard/initialization.c ../src/config/CuriosityBoard/interrupts.c ../src/config/CuriosityBoard/exceptions.c ../src/config/CuriosityBoard/interrupts_a.S ../src/config/CuriosityBoard/freertos_hooks.c ../src/config/CuriosityBoard/tasks.c ../src/config/CuriosityBoard/usb_host_init_data.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_sensor_thread.c ../src/app_eeprom_thread.c ../src/app_use_thread.c ../src/app_user_input_thread.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1104907839/drv_i2c.o ${OBJECTDIR}/_ext/1794458838/drv_usart.o ${OBJECTDIR}/_ext/1948011031/drv_usbhs.o ${OBJECTDIR}/_ext/1948011031/drv_usbhs_host.o ${OBJECTDIR}/_ext/4705286/osal_freertos.o ${OBJECTDIR}/_ext/1059507622/plib_cache.o ${OBJECTDIR}/_ext/1059507622/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1006688326/plib_clk.o ${OBJECTDIR}/_ext/1372565290/plib_coretimer.o ${OBJECTDIR}/_ext/1142597575/plib_dmac.o ${OBJECTDIR}/_ext/1142636263/plib_evic.o ${OBJECTDIR}/_ext/1142690091/plib_gpio.o ${OBJECTDIR}/_ext/40800723/plib_i2c1_master.o ${OBJECTDIR}/_ext/1006704701/plib_tmr2.o ${OBJECTDIR}/_ext/1143074708/plib_tmr1.o ${OBJECTDIR}/_ext/1143093034/plib_uart2.o ${OBJECTDIR}/_ext/149590642/xc32_monitor.o ${OBJECTDIR}/_ext/366734031/sys_dma.o ${OBJECTDIR}/_ext/1466776037/sys_int.o ${OBJECTDIR}/_ext/824448981/sys_time.o ${OBJECTDIR}/_ext/529470334/usb_host_msd.o ${OBJECTDIR}/_ext/529470334/usb_host_scsi.o ${OBJECTDIR}/_ext/529470334/usb_host.o ${OBJECTDIR}/_ext/941659976/initialization.o ${OBJECTDIR}/_ext/941659976/interrupts.o ${OBJECTDIR}/_ext/941659976/exceptions.o ${OBJECTDIR}/_ext/941659976/interrupts_a.o ${OBJECTDIR}/_ext/941659976/freertos_hooks.o ${OBJECTDIR}/_ext/941659976/tasks.o ${OBJECTDIR}/_ext/941659976/usb_host_init_data.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553246/port.o ${OBJECTDIR}/_ext/951553246/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o ${OBJECTDIR}/_ext/1360937237/app_use_thread.o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1104907839/drv_i2c.o.d ${OBJECTDIR}/_ext/1794458838/drv_usart.o.d ${OBJECTDIR}/_ext/1948011031/drv_usbhs.o.d ${OBJECTDIR}/_ext/1948011031/drv_usbhs_host.o.d ${OBJECTDIR}/_ext/4705286/osal_freertos.o.d ${OBJECTDIR}/_ext/1059507622/plib_cache.o.d ${OBJECTDIR}/_ext/1059507622/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1006688326/plib_clk.o.d ${OBJECTDIR}/_ext/1372565290/plib_coretimer.o.d ${OBJECTDIR}/_ext/1142597575/plib_dmac.o.d ${OBJECTDIR}/_ext/1142636263/plib_evic.o.d ${OBJECTDIR}/_ext/1142690091/plib_gpio.o.d ${OBJECTDIR}/_ext/40800723/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1006704701/plib_tmr2.o.d ${OBJECTDIR}/_ext/1143074708/plib_tmr1.o.d ${OBJECTDIR}/_ext/1143093034/plib_uart2.o.d ${OBJECTDIR}/_ext/149590642/xc32_monitor.o.d ${OBJECTDIR}/_ext/366734031/sys_dma.o.d ${OBJECTDIR}/_ext/1466776037/sys_int.o.d ${OBJECTDIR}/_ext/824448981/sys_time.o.d ${OBJECTDIR}/_ext/529470334/usb_host_msd.o.d ${OBJECTDIR}/_ext/529470334/usb_host_scsi.o.d ${OBJECTDIR}/_ext/529470334/usb_host.o.d ${OBJECTDIR}/_ext/941659976/initialization.o.d ${OBJECTDIR}/_ext/941659976/interrupts.o.d ${OBJECTDIR}/_ext/941659976/exceptions.o.d ${OBJECTDIR}/_ext/941659976/interrupts_a.o.d ${OBJECTDIR}/_ext/941659976/freertos_hooks.o.d ${OBJECTDIR}/_ext/941659976/tasks.o.d ${OBJECTDIR}/_ext/941659976/usb_host_init_data.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553246/port.o.d ${OBJECTDIR}/_ext/951553246/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d ${OBJECTDIR}/_ext/1360937237/app_use_thread.o.d ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1104907839/drv_i2c.o ${OBJECTDIR}/_ext/1794458838/drv_usart.o ${OBJECTDIR}/_ext/1948011031/drv_usbhs.o ${OBJECTDIR}/_ext/1948011031/drv_usbhs_host.o ${OBJECTDIR}/_ext/4705286/osal_freertos.o ${OBJECTDIR}/_ext/1059507622/plib_cache.o ${OBJECTDIR}/_ext/1059507622/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1006688326/plib_clk.o ${OBJECTDIR}/_ext/1372565290/plib_coretimer.o ${OBJECTDIR}/_ext/1142597575/plib_dmac.o ${OBJECTDIR}/_ext/1142636263/plib_evic.o ${OBJECTDIR}/_ext/1142690091/plib_gpio.o ${OBJECTDIR}/_ext/40800723/plib_i2c1_master.o ${OBJECTDIR}/_ext/1006704701/plib_tmr2.o ${OBJECTDIR}/_ext/1143074708/plib_tmr1.o ${OBJECTDIR}/_ext/1143093034/plib_uart2.o ${OBJECTDIR}/_ext/149590642/xc32_monitor.o ${OBJECTDIR}/_ext/366734031/sys_dma.o ${OBJECTDIR}/_ext/1466776037/sys_int.o ${OBJECTDIR}/_ext/824448981/sys_time.o ${OBJECTDIR}/_ext/529470334/usb_host_msd.o ${OBJECTDIR}/_ext/529470334/usb_host_scsi.o ${OBJECTDIR}/_ext/529470334/usb_host.o ${OBJECTDIR}/_ext/941659976/initialization.o ${OBJECTDIR}/_ext/941659976/interrupts.o ${OBJECTDIR}/_ext/941659976/exceptions.o ${OBJECTDIR}/_ext/941659976/interrupts_a.o ${OBJECTDIR}/_ext/941659976/freertos_hooks.o ${OBJECTDIR}/_ext/941659976/tasks.o ${OBJECTDIR}/_ext/941659976/usb_host_init_data.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553246/port.o ${OBJECTDIR}/_ext/951553246/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o ${OBJECTDIR}/_ext/1360937237/app_use_thread.o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o

# Source Files
SOURCEFILES=../src/config/CuriosityBoard/driver/i2c/src/drv_i2c.c ../src/config/CuriosityBoard/driver/usart/src/drv_usart.c ../src/config/CuriosityBoard/driver/usb/usbhs/src/drv_usbhs.c ../src/config/CuriosityBoard/driver/usb/usbhs/src/drv_usbhs_host.c ../src/config/CuriosityBoard/osal/osal_freertos.c ../src/config/CuriosityBoard/peripheral/cache/plib_cache.c ../src/config/CuriosityBoard/peripheral/cache/plib_cache_pic32mz.S ../src/config/CuriosityBoard/peripheral/clk/plib_clk.c ../src/config/CuriosityBoard/peripheral/coretimer/plib_coretimer.c ../src/config/CuriosityBoard/peripheral/dmac/plib_dmac.c ../src/config/CuriosityBoard/peripheral/evic/plib_evic.c ../src/config/CuriosityBoard/peripheral/gpio/plib_gpio.c ../src/config/CuriosityBoard/peripheral/i2c/master/plib_i2c1_master.c ../src/config/CuriosityBoard/peripheral/tmr/plib_tmr2.c ../src/config/CuriosityBoard/peripheral/tmr1/plib_tmr1.c ../src/config/CuriosityBoard/peripheral/uart/plib_uart2.c ../src/config/CuriosityBoard/stdio/xc32_monitor.c ../src/config/CuriosityBoard/system/dma/sys_dma.c ../src/config/CuriosityBoard/system/int/src/sys_int.c ../src/config/CuriosityBoard/system/time/src/sys_time.c ../src/config/CuriosityBoard/usb/src/usb_host_msd.c ../src/config/CuriosityBoard/usb/src/usb_host_scsi.c ../src/config/CuriosityBoard/usb/src/usb_host.c ../src/config/CuriosityBoard/initialization.c ../src/config/CuriosityBoard/interrupts.c ../src/config/CuriosityBoard/exceptions.c ../src/config/CuriosityBoard/interrupts_a.S ../src/config/CuriosityBoard/freertos_hooks.c ../src/config/CuriosityBoard/tasks.c ../src/config/CuriosityBoard/usb_host_init_data.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_sensor_thread.c ../src/app_eeprom_thread.c ../src/app_use_thread.c ../src/app_user_input_thread.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-CuriosityBoard.mk ${DISTDIR}/Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
