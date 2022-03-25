#ifndef GLOBAL_INCLUDES_H    /* Guard against multiple inclusion */
#define GLOBAL_INCLUDES_H    


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>

#include "UART.h"
#include "Timers.h"
    
    
typedef union {
    unsigned char byte;
     struct ErrorBits {
        unsigned I2C : 1;
        unsigned SICONFIG : 1;
        unsigned PACKETTYPEERR : 1;
        unsigned DMA_TX : 1;
        unsigned DMA_RX : 1;
        unsigned PACKETSIZEERR : 1;
        unsigned AIINTERRUPT : 1;
        unsigned OINTERRUPT : 1;
    } bits;
    
} errorFlags_t;
    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
