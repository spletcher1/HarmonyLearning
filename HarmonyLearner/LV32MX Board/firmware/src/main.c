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

static bool volatile bToggleLED = false;
static int volatile counter;


void Handler(uint32_t status, uintptr_t context){
    //counter++;
    //if(counter>=1000){
    //    counter=0;
        bToggleLED=true;
    //}
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    counter=0;
   
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    TMR2_CallbackRegister(Handler, (uintptr_t) NULL );
    TMR2_Start();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        if(bToggleLED){
            PORTEINV=0x01;
            bToggleLED=false;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

