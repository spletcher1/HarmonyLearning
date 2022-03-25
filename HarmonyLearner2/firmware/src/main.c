/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
#define TOGGLES_PER_HALFSEC    5
#define FLIP_HEARTBEAT_LED() PORTEINV = 0x0001

int volatile HBCounter;
int volatile secondCounter;
extern unsigned char isInDarkMode;
unsigned char volatile timerFlag_1sec;
char tester[10];

void TIMER1_EventHandler(uint32_t status, uintptr_t context) {     
    if (HBCounter >= TOGGLES_PER_HALFSEC) {     
        FLIP_HEARTBEAT_LED();       
        HBCounter=0;
    }
    HBCounter++;
    if(secondCounter++>=5) {
        secondCounter=0;
        timerFlag_1sec=1;         
    }    
}

void ConfigureUpdateTimer(void) {   
    TMR2_CallbackRegister(TIMER1_EventHandler,(uintptr_t)NULL);
    TMR2_Start();
    HBCounter = 0;
    secondCounter=0;    
}
void TestUART(){
  
 
    DMAC_ChannelTransfer(DMAC_CHANNEL_0, (const void *)tester, 10, 
               (const void *)&U2TXREG, 1, 1);    
    
    //UART2_Write(tester,10);
}
int main ( void )
{
    int i;
    
    for(i=0;i<10;i++){
        tester[i]='A'+i;
    }
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    ConfigureUpdateTimer();
    while ( true )
    {
        if(timerFlag_1sec){
            TestUART();
            timerFlag_1sec=0;
        }
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

