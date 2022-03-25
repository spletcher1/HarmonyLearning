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
ifeq "$(wildcard nbproject/Makefile-local-LVBoard.mk)" "nbproject/Makefile-local-LVBoard.mk"
include nbproject/Makefile-local-LVBoard.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LVBoard
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c ../src/config/LVBoard/peripheral/uart/plib_uart1.c ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c ../src/main.c ../src/config/LVBoard/initialization.c ../src/config/LVBoard/interrupts.c ../src/config/LVBoard/exceptions.c ../src/config/LVBoard/stdio/xc32_monitor.c ../src/config/LVBoard/peripheral/clk/plib_clk.c ../src/config/LVBoard/peripheral/gpio/plib_gpio.c ../src/config/LVBoard/peripheral/evic/plib_evic.c ../src/config/LVBoard/peripheral/dmac/plib_dmac.c ../src/config/LVBoard/peripheral/adc/plib_adc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/136256871/plib_coretimer.o ${OBJECTDIR}/_ext/971171219/plib_i2c2.o ${OBJECTDIR}/_ext/971158804/plib_tmr4.o ${OBJECTDIR}/_ext/41133477/plib_uart1.o ${OBJECTDIR}/_ext/971158804/plib_tmr2.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/883953129/initialization.o ${OBJECTDIR}/_ext/883953129/interrupts.o ${OBJECTDIR}/_ext/883953129/exceptions.o ${OBJECTDIR}/_ext/503107299/xc32_monitor.o ${OBJECTDIR}/_ext/971175179/plib_clk.o ${OBJECTDIR}/_ext/41536420/plib_gpio.o ${OBJECTDIR}/_ext/41590248/plib_evic.o ${OBJECTDIR}/_ext/41628936/plib_dmac.o ${OBJECTDIR}/_ext/971177357/plib_adc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d ${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d ${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d ${OBJECTDIR}/_ext/41133477/plib_uart1.o.d ${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/883953129/initialization.o.d ${OBJECTDIR}/_ext/883953129/interrupts.o.d ${OBJECTDIR}/_ext/883953129/exceptions.o.d ${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d ${OBJECTDIR}/_ext/971175179/plib_clk.o.d ${OBJECTDIR}/_ext/41536420/plib_gpio.o.d ${OBJECTDIR}/_ext/41590248/plib_evic.o.d ${OBJECTDIR}/_ext/41628936/plib_dmac.o.d ${OBJECTDIR}/_ext/971177357/plib_adc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/136256871/plib_coretimer.o ${OBJECTDIR}/_ext/971171219/plib_i2c2.o ${OBJECTDIR}/_ext/971158804/plib_tmr4.o ${OBJECTDIR}/_ext/41133477/plib_uart1.o ${OBJECTDIR}/_ext/971158804/plib_tmr2.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/883953129/initialization.o ${OBJECTDIR}/_ext/883953129/interrupts.o ${OBJECTDIR}/_ext/883953129/exceptions.o ${OBJECTDIR}/_ext/503107299/xc32_monitor.o ${OBJECTDIR}/_ext/971175179/plib_clk.o ${OBJECTDIR}/_ext/41536420/plib_gpio.o ${OBJECTDIR}/_ext/41590248/plib_evic.o ${OBJECTDIR}/_ext/41628936/plib_dmac.o ${OBJECTDIR}/_ext/971177357/plib_adc.o

# Source Files
SOURCEFILES=../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c ../src/config/LVBoard/peripheral/uart/plib_uart1.c ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c ../src/main.c ../src/config/LVBoard/initialization.c ../src/config/LVBoard/interrupts.c ../src/config/LVBoard/exceptions.c ../src/config/LVBoard/stdio/xc32_monitor.c ../src/config/LVBoard/peripheral/clk/plib_clk.c ../src/config/LVBoard/peripheral/gpio/plib_gpio.c ../src/config/LVBoard/peripheral/evic/plib_evic.c ../src/config/LVBoard/peripheral/dmac/plib_dmac.c ../src/config/LVBoard/peripheral/adc/plib_adc.c



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
	${MAKE}  -f nbproject/Makefile-LVBoard.mk dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/136256871/plib_coretimer.o: ../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136256871" 
	@${RM} ${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/136256871/plib_coretimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/136256871/plib_coretimer.o ../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971171219/plib_i2c2.o: ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971171219" 
	@${RM} ${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d 
	@${RM} ${OBJECTDIR}/_ext/971171219/plib_i2c2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d" -o ${OBJECTDIR}/_ext/971171219/plib_i2c2.o ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971158804/plib_tmr4.o: ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971158804" 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/971158804/plib_tmr4.o ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41133477/plib_uart1.o: ../src/config/LVBoard/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41133477" 
	@${RM} ${OBJECTDIR}/_ext/41133477/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/41133477/plib_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41133477/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41133477/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/41133477/plib_uart1.o ../src/config/LVBoard/peripheral/uart/plib_uart1.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971158804/plib_tmr2.o: ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971158804" 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/971158804/plib_tmr2.o ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/initialization.o: ../src/config/LVBoard/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/initialization.o.d" -o ${OBJECTDIR}/_ext/883953129/initialization.o ../src/config/LVBoard/initialization.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/interrupts.o: ../src/config/LVBoard/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/interrupts.o.d" -o ${OBJECTDIR}/_ext/883953129/interrupts.o ../src/config/LVBoard/interrupts.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/exceptions.o: ../src/config/LVBoard/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/exceptions.o.d" -o ${OBJECTDIR}/_ext/883953129/exceptions.o ../src/config/LVBoard/exceptions.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/503107299/xc32_monitor.o: ../src/config/LVBoard/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/503107299" 
	@${RM} ${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/503107299/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/503107299/xc32_monitor.o ../src/config/LVBoard/stdio/xc32_monitor.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971175179/plib_clk.o: ../src/config/LVBoard/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971175179" 
	@${RM} ${OBJECTDIR}/_ext/971175179/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/971175179/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971175179/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971175179/plib_clk.o.d" -o ${OBJECTDIR}/_ext/971175179/plib_clk.o ../src/config/LVBoard/peripheral/clk/plib_clk.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41536420/plib_gpio.o: ../src/config/LVBoard/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41536420" 
	@${RM} ${OBJECTDIR}/_ext/41536420/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/41536420/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41536420/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41536420/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/41536420/plib_gpio.o ../src/config/LVBoard/peripheral/gpio/plib_gpio.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41590248/plib_evic.o: ../src/config/LVBoard/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41590248" 
	@${RM} ${OBJECTDIR}/_ext/41590248/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/41590248/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41590248/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41590248/plib_evic.o.d" -o ${OBJECTDIR}/_ext/41590248/plib_evic.o ../src/config/LVBoard/peripheral/evic/plib_evic.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41628936/plib_dmac.o: ../src/config/LVBoard/peripheral/dmac/plib_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41628936" 
	@${RM} ${OBJECTDIR}/_ext/41628936/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/41628936/plib_dmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41628936/plib_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41628936/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/41628936/plib_dmac.o ../src/config/LVBoard/peripheral/dmac/plib_dmac.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971177357/plib_adc.o: ../src/config/LVBoard/peripheral/adc/plib_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971177357" 
	@${RM} ${OBJECTDIR}/_ext/971177357/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/971177357/plib_adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971177357/plib_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971177357/plib_adc.o.d" -o ${OBJECTDIR}/_ext/971177357/plib_adc.o ../src/config/LVBoard/peripheral/adc/plib_adc.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/136256871/plib_coretimer.o: ../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136256871" 
	@${RM} ${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/136256871/plib_coretimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136256871/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/136256871/plib_coretimer.o ../src/config/LVBoard/peripheral/coretimer/plib_coretimer.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971171219/plib_i2c2.o: ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971171219" 
	@${RM} ${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d 
	@${RM} ${OBJECTDIR}/_ext/971171219/plib_i2c2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971171219/plib_i2c2.o.d" -o ${OBJECTDIR}/_ext/971171219/plib_i2c2.o ../src/config/LVBoard/peripheral/i2c/plib_i2c2.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971158804/plib_tmr4.o: ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971158804" 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971158804/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/971158804/plib_tmr4.o ../src/config/LVBoard/peripheral/tmr/plib_tmr4.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41133477/plib_uart1.o: ../src/config/LVBoard/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41133477" 
	@${RM} ${OBJECTDIR}/_ext/41133477/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/41133477/plib_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41133477/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41133477/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/41133477/plib_uart1.o ../src/config/LVBoard/peripheral/uart/plib_uart1.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971158804/plib_tmr2.o: ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971158804" 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/971158804/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971158804/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/971158804/plib_tmr2.o ../src/config/LVBoard/peripheral/tmr/plib_tmr2.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/initialization.o: ../src/config/LVBoard/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/initialization.o.d" -o ${OBJECTDIR}/_ext/883953129/initialization.o ../src/config/LVBoard/initialization.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/interrupts.o: ../src/config/LVBoard/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/interrupts.o.d" -o ${OBJECTDIR}/_ext/883953129/interrupts.o ../src/config/LVBoard/interrupts.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/883953129/exceptions.o: ../src/config/LVBoard/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/883953129" 
	@${RM} ${OBJECTDIR}/_ext/883953129/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/883953129/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/883953129/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/883953129/exceptions.o.d" -o ${OBJECTDIR}/_ext/883953129/exceptions.o ../src/config/LVBoard/exceptions.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/503107299/xc32_monitor.o: ../src/config/LVBoard/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/503107299" 
	@${RM} ${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/503107299/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/503107299/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/503107299/xc32_monitor.o ../src/config/LVBoard/stdio/xc32_monitor.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971175179/plib_clk.o: ../src/config/LVBoard/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971175179" 
	@${RM} ${OBJECTDIR}/_ext/971175179/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/971175179/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971175179/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971175179/plib_clk.o.d" -o ${OBJECTDIR}/_ext/971175179/plib_clk.o ../src/config/LVBoard/peripheral/clk/plib_clk.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41536420/plib_gpio.o: ../src/config/LVBoard/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41536420" 
	@${RM} ${OBJECTDIR}/_ext/41536420/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/41536420/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41536420/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41536420/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/41536420/plib_gpio.o ../src/config/LVBoard/peripheral/gpio/plib_gpio.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41590248/plib_evic.o: ../src/config/LVBoard/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41590248" 
	@${RM} ${OBJECTDIR}/_ext/41590248/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/41590248/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41590248/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41590248/plib_evic.o.d" -o ${OBJECTDIR}/_ext/41590248/plib_evic.o ../src/config/LVBoard/peripheral/evic/plib_evic.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/41628936/plib_dmac.o: ../src/config/LVBoard/peripheral/dmac/plib_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41628936" 
	@${RM} ${OBJECTDIR}/_ext/41628936/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/41628936/plib_dmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41628936/plib_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/41628936/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/41628936/plib_dmac.o ../src/config/LVBoard/peripheral/dmac/plib_dmac.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/971177357/plib_adc.o: ../src/config/LVBoard/peripheral/adc/plib_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/971177357" 
	@${RM} ${OBJECTDIR}/_ext/971177357/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/971177357/plib_adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/971177357/plib_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LVBoard" -I"../src/packs/PIC32MX795F512L_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/971177357/plib_adc.o.d" -o ${OBJECTDIR}/_ext/971177357/plib_adc.o ../src/config/LVBoard/peripheral/adc/plib_adc.c    -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LVBoard=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SecondOne.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/LVBoard
	${RM} -r dist/LVBoard

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
