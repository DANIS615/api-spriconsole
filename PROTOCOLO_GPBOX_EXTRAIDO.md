# 🔬 PROTOCOLO GPBOX EXTRAÍDO DE DLLs

Análisis automático de DLLs de Smart Ship Factory

---

## 📡 BAUDRATES DETECTADOS

| Baudrate | Apariciones | DLL |
|----------|-------------|-----|
| 19200 bps | 7 | SSF.FC.Comm.Serial.D.dll |
| 38400 bps | 7 | SSF.FC.Comm.Serial.D.dll |
| 19200 bps | 7 | SSF.FC.Comm.GPBox.D.dll |
| 38400 bps | 7 | SSF.FC.Comm.GPBox.D.dll |
| 9600 bps | 6 | SSF.FC.Comm.Serial.D.dll |
| 9600 bps | 6 | SSF.FC.Comm.GPBox.D.dll |
| 115200 bps | 5 | SSF.FC.Comm.Serial.D.dll |
| 115200 bps | 5 | SSF.FC.Comm.GPBox.D.dll |
| 57600 bps | 4 | SSF.FC.Comm.Serial.D.dll |
| 57600 bps | 4 | SSF.FC.Comm.GPBox.D.dll |
| 38400 bps | 3 | SSF.FC.AddIn.DBMaintenance.D.dll |
| 38400 bps | 2 | SSF.Gilbarco.D.dll |
| 38400 bps | 2 | SSF.FC.Pump.Bogus.D.dll |
| 38400 bps | 2 | SSF.Wayne.D.dll |
| 38400 bps | 2 | SSF.FC.AddIn.Payments.D.dll |
| 38400 bps | 2 | SSF.FC.AddIn.ServiceModes.D.dll |
| 38400 bps | 2 | SSF.FC.AddIn.Prices.D.dll |
| 38400 bps | 2 | SSF.FC.AddIn.FlowControl.D.dll |
| 38400 bps | 2 | SSF.FC.AddIn.Shifts.D.dll |
| 38400 bps | 2 | SSFRouterSecurity.D.dll |
| 38400 bps | 2 | SSF.FC.Comm.Bogus.D.dll |
| 38400 bps | 2 | SSF.FC.Comm.TCP.D.dll |
| 38400 bps | 2 | SSF.Router.Message.D.dll |
| 38400 bps | 2 | SSF.Router.Message.dll |
| 38400 bps | 2 | SSF.PlugInServer.D.dll |
| 38400 bps | 2 | SSF.Tools.Library.D.dll |
| 19200 bps | 1 | SSF.Gilbarco.D.dll |
| 9600 bps | 1 | SSF.Gilbarco.D.dll |
| 19200 bps | 1 | SSF.FC.Pump.Bogus.D.dll |
| 19200 bps | 1 | SSF.Wayne.D.dll |
| 9600 bps | 1 | SSF.Wayne.D.dll |
| 9600 bps | 1 | SSF.FC.AddIn.Payments.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.Payments.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.ServiceModes.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.Prices.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.FlowControl.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.Shifts.D.dll |
| 19200 bps | 1 | SSF.FC.AddIn.DBMaintenance.D.dll |
| 19200 bps | 1 | SSFRouterSecurity.D.dll |
| 19200 bps | 1 | SSF.FC.Comm.Bogus.D.dll |
| 19200 bps | 1 | SSF.FC.Comm.TCP.D.dll |
| 19200 bps | 1 | SSF.Router.Message.D.dll |
| 19200 bps | 1 | SSF.Router.Message.dll |
| 19200 bps | 1 | SSF.PlugInServer.D.dll |
| 19200 bps | 1 | SSF.Tools.Library.D.dll |

---

## 💬 STRINGS DE COMUNICACIÓN SERIAL

### Keyword: `ACK`

Apariciones: 34

**[1] Offset 0x1E0D22** en `SSF.Gilbarco.D.dll`
```
LT..FLT_INVALID_OPERATION...FLT_OVERFLOW....FLT_STACK_CHECK.FLT_UNDERFLOW...INT_DIVIDE_BY_ZERO..INT_OVE
```

**[2] Offset 0x1E0D22** en `SSF.Gilbarco.D.dll`
```
LT..FLT_INVALID_OPERATION...FLT_OVERFLOW....FLT_STACK_CHECK.FLT_UNDERFLOW...INT_DIVIDE_BY_ZERO..INT_OVE
```

**[3] Offset 0x1D5BE2** en `SSF.FC.Pump.Bogus.D.dll`
```
LT..FLT_INVALID_OPERATION...FLT_OVERFLOW....FLT_STACK_CHECK.FLT_UNDERFLOW...INT_DIVIDE_BY_ZERO..INT_OVE
```

### Keyword: `Baud`

Apariciones: 3

**[1] Offset 0x1C4363** en `SSF.Gilbarco.D.dll`
```
...5760....4800|5760|9600......Pump Communication Baudrate.........Communication Baudrate......pump_baud
```

**[2] Offset 0x100EFA** en `SSF.FC.Comm.Serial.D.dll`
```
ng EVEN as default..............parity..[%s-%s] - Bauds configured is not supported [%ld]...........[%s-
```

**[3] Offset 0x10461A** en `SSF.FC.Comm.GPBox.D.dll`
```
ng EVEN as default..............parity..[%s-%s] - Bauds configured is not supported [%ld]...........[%s-
```

### Keyword: `COM`

Apariciones: 36

**[1] Offset 0x1D2BC8** en `SSF.Gilbarco.D.dll`
```
help32Snapshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivile
```

**[2] Offset 0x1D2BC8** en `SSF.Gilbarco.D.dll`
```
help32Snapshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivile
```

**[3] Offset 0x1CCF68** en `SSF.FC.Pump.Bogus.D.dll`
```
help32Snapshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivile
```

### Keyword: `COMMAND`

Apariciones: 17

**[1] Offset 0x1D2BD1** en `SSF.Gilbarco.D.dll`
```
pshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivilege.unknown wx
```

**[2] Offset 0x1CCF71** en `SSF.FC.Pump.Bogus.D.dll`
```
pshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivilege.unknown wx
```

**[3] Offset 0x1C9149** en `SSF.Wayne.D.dll`
```
pshot....Process32First..Process32Next...COMSPEC.\COMMAND.COM....%s /c %s....SeShutdownPrivilege.unknown wx
```

### Keyword: `CRC`

Apariciones: 8

**[1] Offset 0xF4977** en `SSF.Gilbarco.D.dll`
```
...L�..����....��..�����...u�..����....p�..wxEr.szCRCStream.function_name.�����������������������������
```

**[2] Offset 0xF4977** en `SSF.Gilbarco.D.dll`
```
...L�..����....��..�����...u�..����....p�..wxEr.szCRCStream.function_name.�����������������������������
```

**[3] Offset 0xEDF87** en `SSF.FC.Pump.Bogus.D.dll`
```
...\...����....�...�����...�...����....�...wxEr.szCRCStream.function_name.�����������������������������
```

### Keyword: `Command`

Apariciones: 18

**[1] Offset 0x92D3F** en `SSF.Gilbarco.D.dll`
```
pipeStdinWrite.pipeErr.pipeOut.pipeIn.noErrors.ddeCommand.ddeTopic.ddeServer.command.��������������U��QV�E�
```

**[2] Offset 0x8E09F** en `SSF.FC.Pump.Bogus.D.dll`
```
pipeStdinWrite.pipeErr.pipeOut.pipeIn.noErrors.ddeCommand.ddeTopic.ddeServer.command.��������������U��QV�E�
```

**[3] Offset 0x8E62F** en `SSF.Wayne.D.dll`
```
pipeStdinWrite.pipeErr.pipeOut.pipeIn.noErrors.ddeCommand.ddeTopic.ddeServer.command.��������������U��QV�E�
```

### Keyword: `DLE`

Apariciones: 34

**[1] Offset 0x1C7391** en `SSF.Gilbarco.D.dll`
```
Gilbarco::ifSupportSpecialCmd........,GILB_SEC...IDLE....Invalid pump status to execute the requested o
```

**[2] Offset 0x1C7391** en `SSF.Gilbarco.D.dll`
```
Gilbarco::ifSupportSpecialCmd........,GILB_SEC...IDLE....Invalid pump status to execute the requested o
```

**[3] Offset 0x1BD816** en `SSF.FC.Pump.Bogus.D.dll`
```
OP......-STOPPED....AUTHORIZE,PRESET,INFO,STOP,HANDLE,AUTOMATIC.........CALLING.....REAUTHORIZE,STOP,IN
```

### Keyword: `Frame`

Apariciones: 17

**[1] Offset 0x67135** en `SSF.Gilbarco.D.dll`
```
�...;��t�����]���.....�..x����...(�..imagehlpStackFrame.�����U��j�h�k(.d�....Pd�%....���...VWQ��.�����...
```

**[2] Offset 0x76945** en `SSF.FC.Pump.Bogus.D.dll`
```
�...;��.�����]���....,�..x����...8�..imagehlpStackFrame.�����U��j�h\�'.d�....Pd�%....���...VWQ��.�����...
```

**[3] Offset 0x57B95** en `SSF.Wayne.D.dll`
```
�...;��������]���....|�..x����...��..imagehlpStackFrame.�����U��j�h..(.d�....Pd�%....���...VWQ��.�����...
```

### Keyword: `GPBox`

Apariciones: 4

**[1] Offset 0x1C423C** en `SSF.Gilbarco.D.dll`
```
ts....8...wordlen.....EVEN....parity..bauds...%ld.GPBox...Serial..Error instantiating Configuration Infor
```

**[2] Offset 0x1D9EC2** en `SSF.FC.Pump.Bogus.D.dll`
```
device..Slot ID where the pump is conected to the GPBox.............Slot ID.....slot_id.....30..Time to w
```

**[3] Offset 0x1BF410** en `SSF.Wayne.D.dll`
```
rdlen.....ODD.parity..9600....bauds...Tequila.....GPBox...Serial..%s......The message [%s] is not support
```

### Keyword: `LRC`

Apariciones: 2

**[1] Offset 0x1C5F1E** en `SSF.Gilbarco.D.dll`
```
SSFPumpGilbarco::sendReadCmd........Error sending LRC DATA NEXT byte........Error sending byte index [%
```

**[2] Offset 0x1C5F1E** en `SSF.Gilbarco.D.dll`
```
SSFPumpGilbarco::sendReadCmd........Error sending LRC DATA NEXT byte........Error sending byte index [%
```

### Keyword: `Port`

Apariciones: 17

**[1] Offset 0x1D77CC** en `SSF.Gilbarco.D.dll`
```
mo....ps..Pashto, Pushto..pl_PL...Polish..pt_PT...Portuguese..pt_BR...Portuguese (Brazilian)..pa..Punjab
```

**[2] Offset 0x1C8E0C** en `SSF.FC.Pump.Bogus.D.dll`
```
mo....ps..Pashto, Pushto..pl_PL...Polish..pt_PT...Portuguese..pt_BR...Portuguese (Brazilian)..pa..Punjab
```

**[3] Offset 0x1CD56C** en `SSF.Wayne.D.dll`
```
mo....ps..Pashto, Pushto..pl_PL...Polish..pt_PT...Portuguese..pt_BR...Portuguese (Brazilian)..pa..Punjab
```

### Keyword: `READ`

Apariciones: 5

**[1] Offset 0x1E4D28** en `SSF.Gilbarco.D.dll`
```
ld] was not found.................PUMPID[%02ld] - READING PUMP [%s] LAST SALE ON HOSE [%d]............SS
```

**[2] Offset 0x1DBC10** en `SSF.FC.Pump.Bogus.D.dll`
```
ld] was not found.................PUMPID[%02ld] - READING PUMP [%s] LAST SALE ON HOSE [%d]............SS
```

**[3] Offset 0x1DE150** en `SSF.Wayne.D.dll`
```
ld] was not found.................PUMPID[%02ld] - READING PUMP [%s] LAST SALE ON HOSE [%d]............SS
```

### Keyword: `RECEIVE`

Apariciones: 7

**[1] Offset 0x1EB4BC** en `SSF.Gilbarco.D.dll`
```
g Client entry is finished ...........NO RESPONSE RECEIVED FROM ECHO. WILL CLOSE THE SOCKET AND RETRY CONNE
```

**[2] Offset 0x1E2284** en `SSF.FC.Pump.Bogus.D.dll`
```
g Client entry is finished ...........NO RESPONSE RECEIVED FROM ECHO. WILL CLOSE THE SOCKET AND RETRY CONNE
```

**[3] Offset 0x1E4904** en `SSF.Wayne.D.dll`
```
g Client entry is finished ...........NO RESPONSE RECEIVED FROM ECHO. WILL CLOSE THE SOCKET AND RETRY CONNE
```

### Keyword: `RESPONSE`

Apariciones: 7

**[1] Offset 0x1EB4B3** en `SSF.Gilbarco.D.dll`
```
.......Msg Client entry is finished ...........NO RESPONSE RECEIVED FROM ECHO. WILL CLOSE THE SOCKET AND RET
```

**[2] Offset 0x1E227B** en `SSF.FC.Pump.Bogus.D.dll`
```
.......Msg Client entry is finished ...........NO RESPONSE RECEIVED FROM ECHO. WILL CLOSE THE SOCKET AND RET
```

**[3] Offset 0x1BFA8C** en `SSF.Wayne.D.dll`
```
TE %d.........PUMP %s ERROR ON FORMAT.....PUMP %s RESPONSE INCOMPLETE.........PUMP %s RESPONSE TIMEOUT......
```

### Keyword: `Read`

Apariciones: 18

**[1] Offset 0x1678A** en `SSF.Gilbarco.D.dll`
```
....`�..����....��..�����...��..����....��..lBytesRead.szBuffer.function_name.��E�...�..@�..��..��..��..
```

**[2] Offset 0x8CD71** en `SSF.FC.Pump.Bogus.D.dll`
```
�����XZ^��.;��������]�..�....`...����....l...bytesRead.����������U��j�h��'.d�....Pd�%....��.V������E��E�
```

**[3] Offset 0x8D301** en `SSF.Wayne.D.dll`
```
�&���XZ^��.;��,�����]�..�....�"..����....�"..bytesRead.����������U��j�hx%(.d�....Pd�%....��.V������E��E�
```

### Keyword: `Receive`

Apariciones: 8

**[1] Offset 0x1C71F0** en `SSF.Gilbarco.D.dll`
```
%ld]..........The response was not like expected. Received only [%ld] bytes...............PUMPID[%02ld] - S
```

**[2] Offset 0x1E19C4** en `SSF.FC.Pump.Bogus.D.dll`
```
oment to be destroyed ........................The Received Event queue is not empty at the moment to be des
```

**[3] Offset 0x1557E** en `SSF.Wayne.D.dll`
```
....��..����....��..����....��..x���....x�..lBytesReceived.szMessResponse.szMessOut.function_name.���������
```

### Keyword: `Response`

Apariciones: 4

**[1] Offset 0x1E6211** en `SSF.Gilbarco.D.dll`
```
.RES_GENERIC_ERROR.......SSFBasePump::sendEvtErrorResponse.......The event [%s] is not supported.........REQ
```

**[2] Offset 0x1DD08D** en `SSF.FC.Pump.Bogus.D.dll`
```
.RES_GENERIC_ERROR.......SSFBasePump::sendEvtErrorResponse.......The event [%s] is not supported.........REQ
```

**[3] Offset 0x1558D** en `SSF.Wayne.D.dll`
```
.��..����....��..x���....x�..lBytesReceived.szMessResponse.szMessOut.function_name.�������������������������
```

### Keyword: `SEND`

Apariciones: 1

**[1] Offset 0x1BFAD6** en `SSF.Wayne.D.dll`
```
....PUMP %s RESPONSE TIMEOUT........PUMP %s ERROR SENDING MSG.......Sending message to pump %s(%d) - [%0
```

### Keyword: `SERIAL`

Apariciones: 2

**[1] Offset 0x1011FF** en `SSF.FC.Comm.Serial.D.dll`
```
Id (Ex. 'COM1' or '/dev/ttyS0'.............SSF_FC_SERIAL_COMM_LANGUAGE.........Port Id.....port_name...gen
```

**[2] Offset 0x1048DF** en `SSF.FC.Comm.GPBox.D.dll`
```
Id (Ex. 'COM1' or '/dev/ttyS0'.............SSF_FC_SERIAL_COMM_LANGUAGE.........Port Id.....port_name...gen
```

### Keyword: `STX`

Apariciones: 2

**[1] Offset 0x1C5F6E** en `SSF.Gilbarco.D.dll`
```
r sending byte index [%ld]..........Error sending STX byte......Pump is not ready to send data - Pump A
```

**[2] Offset 0x1C5F6E** en `SSF.Gilbarco.D.dll`
```
r sending byte index [%ld]..........Error sending STX byte......Pump is not ready to send data - Pump A
```

### Keyword: `Send`

Apariciones: 17

**[1] Offset 0xDA8E5** en `SSF.Gilbarco.D.dll`
```
ist.strAuthOnState.wxsDevId.wxsLockMode.wxsForceToSend.wxsErrorMsg.function_name.�����������������������
```

**[2] Offset 0xD3B45** en `SSF.FC.Pump.Bogus.D.dll`
```
ist.strAuthOnState.wxsDevId.wxsLockMode.wxsForceToSend.wxsErrorMsg.function_name.�����������������������
```

**[3] Offset 0xD6835** en `SSF.Wayne.D.dll`
```
ist.strAuthOnState.wxsDevId.wxsLockMode.wxsForceToSend.wxsErrorMsg.function_name.�����������������������
```

### Keyword: `Serial`

Apariciones: 5

**[1] Offset 0x1C4244** en `SSF.Gilbarco.D.dll`
```
..wordlen.....EVEN....parity..bauds...%ld.GPBox...Serial..Error instantiating Configuration Information ..
```

**[2] Offset 0x1BD740** en `SSF.FC.Pump.Bogus.D.dll`
```
..wordlen.....8...parity..EVEN....bauds...4800....Serial......~�.A........�������?........................
```

**[3] Offset 0x1BF418** en `SSF.Wayne.D.dll`
```
..ODD.parity..9600....bauds...Tequila.....GPBox...Serial..%s......The message [%s] is not supported by Mod
```

### Keyword: `WRITE`

Apariciones: 2

**[1] Offset 0x100BAF** en `SSF.FC.Comm.Serial.D.dll`
```
s] - Add default configuration [%s] for INTERBYTE_WRITE_INTERVAL parameter ....................[%s-%s] - 
```

**[2] Offset 0x1042CF** en `SSF.FC.Comm.GPBox.D.dll`
```
s] - Add default configuration [%s] for INTERBYTE_WRITE_INTERVAL parameter ....................[%s-%s] - 
```

### Keyword: `Write`

Apariciones: 18

**[1] Offset 0x52F7E** en `SSF.Gilbarco.D.dll`
```
����....��..����....��..����....��..����....|�..ftWrite.ftCreate.ftAccess.fh.�������U����DVW�}��....�����
```

**[2] Offset 0x6641E** en `SSF.FC.Pump.Bogus.D.dll`
```
����....6�..����....-�..����....$�..����.....�..ftWrite.ftCreate.ftAccess.fh.�������U����DVW�}��....�����
```

**[3] Offset 0x42FCE** en `SSF.Wayne.D.dll`
```
����....�...����....�...����....�...����....�...ftWrite.ftCreate.ftAccess.fh.�������U����DVW�}��....�����
```

### Keyword: `ack`

Apariciones: 18

**[1] Offset 0x31B22** en `SSF.Gilbarco.D.dll`
```
��$;���6����]���.....�..����....+�..����.... �..stackTrace.msg.�U��j�h.B(.d�....Pd�%....��4W�}��....���
```

**[2] Offset 0x3B7D2** en `SSF.FC.Pump.Bogus.D.dll`
```
��$;��w�����]���....��..����....��..����....��..stackTrace.msg.�U��j�h8�'.d�....Pd�%....��4W�}��....���
```

**[3] Offset 0x2DCE2** en `SSF.Wayne.D.dll`
```
��$;��Sv����]���....�,..����....�,..����....�,..stackTrace.msg.�U��j�h(�'.d�....Pd�%....��4W�}��....���
```

### Keyword: `baud`

Apariciones: 5

**[1] Offset 0x1C4230** en `SSF.Gilbarco.D.dll`
```
..1...stopbits....8...wordlen.....EVEN....parity..bauds...%ld.GPBox...Serial..Error instantiating Config
```

**[2] Offset 0x1BD730** en `SSF.FC.Pump.Bogus.D.dll`
```
..stopbits....2...wordlen.....8...parity..EVEN....bauds...4800....Serial......~�.A........�������?......
```

**[3] Offset 0x1BF3FC** en `SSF.Wayne.D.dll`
```
..stopbits....8...wordlen.....ODD.parity..9600....bauds...Tequila.....GPBox...Serial..%s......The messag
```

### Keyword: `com`

Apariciones: 18

**[1] Offset 0x85870** en `SSF.Gilbarco.D.dll`
```
..p���....L�..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E�����
```

**[2] Offset 0x805E0** en `SSF.FC.Pump.Bogus.D.dll`
```
..p���....�E..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E�����
```

**[3] Offset 0x5E740** en `SSF.Wayne.D.dll`
```
..p���.....7..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E�����
```

### Keyword: `command`

Apariciones: 17

**[1] Offset 0x85870** en `SSF.Gilbarco.D.dll`
```
..p���....L�..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E������Q��
```

**[2] Offset 0x805E0** en `SSF.FC.Pump.Bogus.D.dll`
```
..p���....�E..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E�������"�
```

**[3] Offset 0x5E740** en `SSF.Wayne.D.dll`
```
..p���.....7..ddeCmd.ddeTopic.keyTopic.keyDDE.key.command.finalurl.���������������U����.V�E������E�������A�
```

### Keyword: `crc`

Apariciones: 1

**[1] Offset 0x1A776F** en `SSF.Tools.Library.D.dll`
```
ession method..unknown header flags set....header crc mismatch.invalid block type..invalid stored block
```

### Keyword: `dle`

Apariciones: 18

**[1] Offset 0x1C4217** en `SSF.Gilbarco.D.dll`
```
onxoff.....FALSE...rtscts..1...stopbits....8...wordlen.....EVEN....parity..bauds...%ld.GPBox...Serial..
```

**[2] Offset 0x1BD713** en `SSF.FC.Pump.Bogus.D.dll`
```
...xonxoff.....rtscts..FALSE...stopbits....2...wordlen.....8...parity..EVEN....bauds...4800....Serial..
```

**[3] Offset 0x1BF3DF** en `SSF.Wayne.D.dll`
```
onxoff.....FALSE...rtscts..1...stopbits....8...wordlen.....ODD.parity..9600....bauds...Tequila.....GPBo
```

### Keyword: `frame`

Apariciones: 17

**[1] Offset 0x673B8** en `SSF.Gilbarco.D.dll`
```
�..�I.....��...����...��..h����...��...���X...��..frame.sf.ctx.�����������U��Q�E������M��E.P�M.�Q.R�M��.�
```

**[2] Offset 0x76BC8** en `SSF.FC.Pump.Bogus.D.dll`
```
�..�I.....��...����...��..h����...��...���X...��..frame.sf.ctx.�����������U��Q�E������M��E.P�M.�Q.R�M���.
```

**[3] Offset 0x57E18** en `SSF.Wayne.D.dll`
```
�..�I.....��...����...!�..h����....�...���X....�..frame.sf.ctx.�����������U��Q�E������M��E.P�M.�Q.R�M��C�
```

### Keyword: `port`

Apariciones: 18

**[1] Offset 0x1C4700** en `SSF.Gilbarco.D.dll`
```
tus value [0x%02X]............Pump status first reported BUSY status..............I will force FUELLING 
```

**[2] Offset 0x1C0DA9** en `SSF.FC.Pump.Bogus.D.dll`
```
SW.wxWidgets-2.6.2\src\common\datetime.cpp...unsupported calendar....wxAssertFailure.....\SSF\SSF.Dev\Ex
```

**[3] Offset 0x1BF443** en `SSF.Wayne.D.dll`
```
PBox...Serial..%s......The message [%s] is not supported by Module [%s] - Device Type [%s] - Device Id [
```

### Keyword: `read`

Apariciones: 18

**[1] Offset 0xBB34C** en `SSF.Gilbarco.D.dll`
```
=���XZ_^[���...;��R�����]�....<#..����....H#..dwThreadId.�����������������������������������������������
```

**[2] Offset 0xBC49C** en `SSF.FC.Pump.Bogus.D.dll`
```
����XZ_^[���...;��������]�....�...����....�...dwThreadId.�����������������������������������������������
```

**[3] Offset 0xBEFBC** en `SSF.Wayne.D.dll`
```
l���XZ_^[���...;��mc����]�....�?..����....�?..dwThreadId.�����������������������������������������������
```

### Keyword: `receive`

Apariciones: 11

**[1] Offset 0x1C5D08** en `SSF.Gilbarco.D.dll`
```
..The pump is in error state or is ok but could't receive answer. I will retry .......................Error
```

**[2] Offset 0x1DE615** en `SSF.FC.Pump.Bogus.D.dll`
```
ected................Client <%s> disconnect event received but the pump is locked by another client........
```

**[3] Offset 0x1E0BED** en `SSF.Wayne.D.dll`
```
ected................Client <%s> disconnect event received but the pump is locked by another client........
```

### Keyword: `response`

Apariciones: 18

**[1] Offset 0x1C71D0** en `SSF.Gilbarco.D.dll`
```
actions counter for grade 6 is [%ld]..........The response was not like expected. Received only [%ld] bytes.
```

**[2] Offset 0x1D76BC** en `SSF.FC.Pump.Bogus.D.dll`
```
nchronous advise transaction has timed out....the response to the transaction caused the DDE_FBUSY bit to be
```

**[3] Offset 0x1C03D6** en `SSF.Wayne.D.dll`
```
SSFPumpWayne::reauthorizePump.......Error on pump response to command. Block not echoed as expected [%02X][%
```

### Keyword: `send`

Apariciones: 18

**[1] Offset 0x1C481A** en `SSF.Gilbarco.D.dll`
```
r enabling pump programming (Stop)..........Error sending stop due the pump is in authorize state.......
```

**[2] Offset 0x1D258A** en `SSF.FC.Pump.Bogus.D.dll`
```
Timeout too small in WaitForInputIdle...Failed to send DDE request to the process "%s"..no wxAppTraits i
```

**[3] Offset 0x1BFB42** en `SSF.Wayne.D.dll`
```
%02X][%02X][%02X][%02X].............SSFPumpWayne::sendCommand.......Pump %s(%d) with unknown status.....
```

### Keyword: `serial`

Apariciones: 11

**[1] Offset 0x1EA31B** en `SSF.Gilbarco.D.dll`
```
YPE field separator ...................SSFTask::deserializeByPipes.........|%02ld|.....��..z�..~�...�...�.
```

**[2] Offset 0x1E10EB** en `SSF.FC.Pump.Bogus.D.dll`
```
YPE field separator ...................SSFTask::deserializeByPipes.........|%02ld|.....\�...�..e^..��..��.
```

**[3] Offset 0x1E34A3** en `SSF.Wayne.D.dll`
```
YPE field separator ...................SSFTask::deserializeByPipes.........|%02ld|.....@�..7�..~n..��..��.
```

### Keyword: `write`

Apariciones: 18

**[1] Offset 0x149172** en `SSF.Gilbarco.D.dll`
```
f.".����....`.".����....\.".len.error.c.exceptfds.writefds.readfds.�������������U��Q�E������M��}�.u.h�...
```

**[2] Offset 0x1427E2** en `SSF.FC.Pump.Bogus.D.dll`
```
�g!.����....�g!.����....�g!.len.error.c.exceptfds.writefds.readfds.�������������U��Q�E������M��}�.u.h�...
```

**[3] Offset 0x145072** en `SSF.Wayne.D.dll`
```
f�!.����....`�!.����....\�!.len.error.c.exceptfds.writefds.readfds.�������������U��Q�E������M��}�.u.h�...
```


---

## 🎯 CONCLUSIONES

### Baudrate más probable: **19200 bps**

- Apariciones: 7
- DLL: `SSF.FC.Comm.Serial.D.dll`

### Recomendaciones:

1. Usar baudrate detectado para comunicación
2. Buscar implementación de comandos en DLL principal
3. Decodificar secuencias de bytes encontradas
4. Comparar con capturas reales del hardware

