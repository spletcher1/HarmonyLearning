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
#include <stdio.h>

#define LED1GPIOPIN GPIO_PIN_RE3
#define LED2GPIOPIN GPIO_PIN_RE4
#define LED3GPIOPIN GPIO_PIN_RE6

// Adjust for DMA coherent memory as per : https://www.aidanmocke.com/blog/2019/01/08/DMA-Intro/
//unsigned char uartTxBuffer[5000];
//unsigned char uartRxBuffer[5000];
unsigned char __attribute__ ((coherent, aligned(8))) uartTxBuffer[5000];
unsigned char __attribute__ ((coherent, aligned(8))) uartRxBuffer[5000];

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

bool isTmr2Expired;
bool changeRate;
bool isUARTTxComplete;
bool isUARTRxComplete;
bool isReceived;

void TIMER2_EventHandler(uint32_t status, uintptr_t context){
    int i;
    int writeLength;
    GPIO_PinToggle(LED1GPIOPIN);
    isTmr2Expired=true;
    
}

void SendTxBuffer(){
     if(isUARTTxComplete==false){
      GPIO_PinToggle(LED3GPIOPIN);
      return;
    }
    isUARTTxComplete = false;
    //CACHE_DataCacheClean((uint32_t)uartTxBuffer, sizeof(uartTxBuffer));
    DMAC_ChannelTransfer(DMAC_CHANNEL_0, (const void *)uartTxBuffer, 21, 
                (const void *)&U2TXREG, 1, 1); 
}


static void SW1_User_Handler(GPIO_PIN pin, uintptr_t context)
{
    if(SwitchPin_Get() == 1)
    {
        GPIO_PinToggle(LED2GPIOPIN);
        changeRate = true;      
    }
}
static void UARTDma0ChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{

    if (event == DMAC_TRANSFER_EVENT_COMPLETE)
    {
        //GPIO_PinToggle(LED2GPIOPIN);
        isUARTTxComplete = true;
    }
}

static void UARTDma1ChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{
    unsigned int bytesReceived=0, counter=0;
    if (event == DMAC_TRANSFER_EVENT_COMPLETE)
    {
        GPIO_PinToggle(LED2GPIOPIN);
        isUARTRxComplete = true;    
        //CACHE_DataCacheClean((uint32_t)uartRxBuffer, sizeof(uartRxBuffer));
        DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)(const void *)&U2RXREG, 1, 
                (const void *)uartRxBuffer, 10, 1);
        isUARTRxComplete = true;
        isReceived=true;
    }
}


void RegisterCallBacks(void){
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_0, UARTDma0ChannelHandler, 0);
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_1, UARTDma1ChannelHandler, 0);
    TMR2_CallbackRegister(TIMER2_EventHandler,(uintptr_t)NULL);
    GPIO_PinInterruptCallbackRegister(SwitchPin_PIN, SW1_User_Handler, 0);
    GPIO_PinInterruptEnable(SwitchPin_PIN);
}

int main ( void )
{
    int i;
    int bytesReceived=0;
    isReceived=false;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    RegisterCallBacks();
    //GPIO_PortSet(GPIO_PORT_B, 0x23);
    //TOGGLEHB();
    isTmr2Expired=false;
    changeRate=false;
    isUARTTxComplete=true;
    isUARTRxComplete=true;
    sprintf(uartTxBuffer,"Running.\r");
    SendTxBuffer();
    //sprintf(uartTxBuffer,"UART Packet received.");
    TMR2_Start();
     //CACHE_DataCacheClean((uint32_t)uartRxBuffer, sizeof(uartRxBuffer));
    DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)(const void *)&U2RXREG, 1, 
                (const void *)uartRxBuffer, 10, 1); 
    while ( true )
    {
        if(isTmr2Expired){
            isTmr2Expired=false;
        }
        if(isReceived){
            while(uartRxBuffer[bytesReceived++]!=0);
            sprintf(uartTxBuffer,"%d bytes received.\n",bytesReceived-1);
            bytesReceived=0;
            SendTxBuffer();
            for(i=0;i<100000;i++)
                Nop();
            for(i=0;i<21;i++){
                uartTxBuffer[i]=uartRxBuffer[i];
            }
            SendTxBuffer();
            isReceived=false;
        }
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        //SYS_Tasks ( );
    
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

