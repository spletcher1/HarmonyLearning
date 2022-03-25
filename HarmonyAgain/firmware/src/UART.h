#ifndef UART_H    /* Guard against multiple inclusion */
#define UART_H

#ifdef __cplusplus
extern "C" {
#endif

void ConfigureUART(void);
void SendString(char *ss, int size);
void CopyToTxBuffer(char *ss, int size);
void SendTxBuffer();

#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
