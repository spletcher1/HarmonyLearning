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
ifeq "$(wildcard nbproject/Makefile-local-LV32MX.mk)" "nbproject/Makefile-local-LV32MX.mk"
include nbproject/Makefile-local-LV32MX.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LV32MX
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c ..\src\main.c ..\src\config\LV32MX\initialization.c ..\src\config\LV32MX\interrupts.c ..\src\config\LV32MX\exceptions.c ..\src\config\LV32MX\stdio\xc32_monitor.c ..\src\config\LV32MX\peripheral\clk\plib_clk.c ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c ..\src\config\LV32MX\peripheral\evic\plib_evic.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/136590139/plib_tmr2.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/635990118/initialization.o ${OBJECTDIR}/_ext/635990118/interrupts.o ${OBJECTDIR}/_ext/635990118/exceptions.o ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o ${OBJECTDIR}/_ext/136573764/plib_clk.o ${OBJECTDIR}/_ext/61057555/plib_gpio.o ${OBJECTDIR}/_ext/61111383/plib_evic.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d ${OBJECTDIR}/_ext/1362277832/main.o.d ${OBJECTDIR}/_ext/635990118/initialization.o.d ${OBJECTDIR}/_ext/635990118/interrupts.o.d ${OBJECTDIR}/_ext/635990118/exceptions.o.d ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d ${OBJECTDIR}/_ext/136573764/plib_clk.o.d ${OBJECTDIR}/_ext/61057555/plib_gpio.o.d ${OBJECTDIR}/_ext/61111383/plib_evic.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/136590139/plib_tmr2.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/635990118/initialization.o ${OBJECTDIR}/_ext/635990118/interrupts.o ${OBJECTDIR}/_ext/635990118/exceptions.o ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o ${OBJECTDIR}/_ext/136573764/plib_clk.o ${OBJECTDIR}/_ext/61057555/plib_gpio.o ${OBJECTDIR}/_ext/61111383/plib_evic.o

# Source Files
SOURCEFILES=..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c ..\src\main.c ..\src\config\LV32MX\initialization.c ..\src\config\LV32MX\interrupts.c ..\src\config\LV32MX\exceptions.c ..\src\config\LV32MX\stdio\xc32_monitor.c ..\src\config\LV32MX\peripheral\clk\plib_clk.c ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c ..\src\config\LV32MX\peripheral\evic\plib_evic.c



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
	${MAKE}  -f nbproject/Makefile-LV32MX.mk dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ0512EFE064
MP_LINKER_FILE_OPTION=,--script="..\\src\\config\\LV32MX\\p32MZ0512EFE064.ld"
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
${OBJECTDIR}/_ext/136590139/plib_tmr2.o: ..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136590139" 
	@${RM} ${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/136590139/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/136590139/plib_tmr2.o ..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/initialization.o: ..\src\config\LV32MX\initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/initialization.o.d" -o ${OBJECTDIR}/_ext/635990118/initialization.o ..\src\config\LV32MX\initialization.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/interrupts.o: ..\src\config\LV32MX\interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/interrupts.o.d" -o ${OBJECTDIR}/_ext/635990118/interrupts.o ..\src\config\LV32MX\interrupts.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/exceptions.o: ..\src\config\LV32MX\exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/exceptions.o.d" -o ${OBJECTDIR}/_ext/635990118/exceptions.o ..\src\config\LV32MX\exceptions.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1107780665/xc32_monitor.o: ..\src\config\LV32MX\stdio\xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1107780665" 
	@${RM} ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o ..\src\config\LV32MX\stdio\xc32_monitor.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/136573764/plib_clk.o: ..\src\config\LV32MX\peripheral\clk\plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136573764" 
	@${RM} ${OBJECTDIR}/_ext/136573764/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/136573764/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136573764/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136573764/plib_clk.o.d" -o ${OBJECTDIR}/_ext/136573764/plib_clk.o ..\src\config\LV32MX\peripheral\clk\plib_clk.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/61057555/plib_gpio.o: ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/61057555" 
	@${RM} ${OBJECTDIR}/_ext/61057555/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/61057555/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/61057555/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/61057555/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/61057555/plib_gpio.o ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/61111383/plib_evic.o: ..\src\config\LV32MX\peripheral\evic\plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/61111383" 
	@${RM} ${OBJECTDIR}/_ext/61111383/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/61111383/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/61111383/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/61111383/plib_evic.o.d" -o ${OBJECTDIR}/_ext/61111383/plib_evic.o ..\src\config\LV32MX\peripheral\evic\plib_evic.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/136590139/plib_tmr2.o: ..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136590139" 
	@${RM} ${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/136590139/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136590139/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/136590139/plib_tmr2.o ..\src\config\LV32MX\peripheral\tmr\plib_tmr2.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/initialization.o: ..\src\config\LV32MX\initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/initialization.o.d" -o ${OBJECTDIR}/_ext/635990118/initialization.o ..\src\config\LV32MX\initialization.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/interrupts.o: ..\src\config\LV32MX\interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/interrupts.o.d" -o ${OBJECTDIR}/_ext/635990118/interrupts.o ..\src\config\LV32MX\interrupts.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/635990118/exceptions.o: ..\src\config\LV32MX\exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/635990118" 
	@${RM} ${OBJECTDIR}/_ext/635990118/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/635990118/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/635990118/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/635990118/exceptions.o.d" -o ${OBJECTDIR}/_ext/635990118/exceptions.o ..\src\config\LV32MX\exceptions.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1107780665/xc32_monitor.o: ..\src\config\LV32MX\stdio\xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1107780665" 
	@${RM} ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1107780665/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1107780665/xc32_monitor.o ..\src\config\LV32MX\stdio\xc32_monitor.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/136573764/plib_clk.o: ..\src\config\LV32MX\peripheral\clk\plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136573764" 
	@${RM} ${OBJECTDIR}/_ext/136573764/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/136573764/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/136573764/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/136573764/plib_clk.o.d" -o ${OBJECTDIR}/_ext/136573764/plib_clk.o ..\src\config\LV32MX\peripheral\clk\plib_clk.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/61057555/plib_gpio.o: ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/61057555" 
	@${RM} ${OBJECTDIR}/_ext/61057555/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/61057555/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/61057555/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/61057555/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/61057555/plib_gpio.o ..\src\config\LV32MX\peripheral\gpio\plib_gpio.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/61111383/plib_evic.o: ..\src\config\LV32MX\peripheral\evic\plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/61111383" 
	@${RM} ${OBJECTDIR}/_ext/61111383/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/61111383/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/61111383/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/LV32MX" -I"../src/packs/PIC32MZ0512EFE064_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/61111383/plib_evic.o.d" -o ${OBJECTDIR}/_ext/61111383/plib_evic.o ..\src\config\LV32MX\peripheral\evic\plib_evic.c    -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ..\\src\\config\\LV32MX\\p32MZ0512EFE064.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ..\\src\\config\\LV32MX\\p32MZ0512EFE064.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LV32MX=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FirstOne.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/LV32MX
	${RM} -r dist/LV32MX

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
