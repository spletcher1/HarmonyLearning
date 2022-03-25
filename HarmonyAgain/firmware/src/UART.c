#include "GlobalIncludes.h"
// Adjust for DMA coherent memory as per : https://www.aidanmocke.com/blog/2019/01/08/DMA-Intro/
//unsigned char uartTxBuffer[5000];
//unsigned char uartRxBuffer[5000];
unsigned char __attribute__ ((coherent, aligned(8))) uartTxBuffer[5000];
unsigned char __attribute__ ((coherent, aligned(8))) uartRxBuffer[5000];


bool volatile isUARTTxComplete;
bool volatile isUARTRxComplete;
bool volatile isReceived;
int TxBufferSize; 

void SendTxBuffer(){      
    if(!isUARTTxComplete)
        return;
    isUARTTxComplete = false;
    DMAC_ChannelTransfer(DMAC_CHANNEL_0, (const void *)uartTxBuffer, TxBufferSize, 
                (const void *)&U1TXREG, 1, 1); 
}

void CopyToTxBuffer(char *ss, int size){
    int i;
    for(i=0;i<size;i++)
        uartTxBuffer[i]=ss[i];
    TxBufferSize=size;
}

void SendString(char *ss, int size){
    CopyToTxBuffer(ss, size);
    SendTxBuffer();
}

static void UARTTxChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{
    if (event == DMAC_TRANSFER_EVENT_COMPLETE)
    {         
        isUARTTxComplete = true;
    }
}

static void UARTRxChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{    
    if (event == DMAC_TRANSFER_EVENT_COMPLETE)
    {        
        isUARTRxComplete = true;    
        //CACHE_DataCacheClean((uint32_t)uartRxBuffer, sizeof(uartRxBuffer));
        DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)(const void *)&U1RXREG, 1, 
                (const void *)uartRxBuffer, 10, 1);
        isUARTRxComplete = true;
        isReceived=true;
    }
}


void ConfigureUART(void){
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_0, UARTTxChannelHandler, 0);
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_1, UARTRxChannelHandler, 0); 
    isUARTRxComplete = true;  
    isUARTTxComplete = true;
    isReceived=true;
}