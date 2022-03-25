#include "GlobalIncludes.h"


bool volatile isTmr2Expired;
char volatile lightState = 0;
int volatile hbCounter = 0;
int volatile secCounter=0;
char volatile timerFlag_1s;
char volatile timerFlag_1ms;


void TIMER2_EventHandler(uint32_t status, uintptr_t context) {
    timerFlag_1ms=1;
    if(hbCounter>=499){
        hbCounter=0;
        RedLED_Toggle();
    }
    if(secCounter>=999){
        timerFlag_1s=1;
        secCounter=0;
    }
 
    hbCounter++;
    secCounter++;    
    isTmr2Expired = true;
}

void ConfigureTimer2(void) {
    TMR2_CallbackRegister(TIMER2_EventHandler, (uintptr_t) NULL);
    timerFlag_1s=0;
    TMR2_Start();
}