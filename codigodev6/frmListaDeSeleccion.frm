VERSION 5.00
Begin VB.Form frmListaDeSeleccion
  Caption = "Lista de Selección"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  ClientLeft = 3870
  ClientTop = 1755
  ClientWidth = 3930
  ClientHeight = 5595
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 2160
    Top = 4800
    Width = 1575
    Height = 615
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 240
    Top = 4800
    Width = 1575
    Height = 615
    TabIndex = 1
    Cancel = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ListBox lstOpciones
    Left = 240
    Top = 840
    Width = 3495
    Height = 3660
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblSelecMensaje
    Caption = "Seleccione la opción"
    Left = 240
    Top = 120
    Width = 3495
    Height = 675
    TabIndex = 3
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmListaDeSeleccion"

Public sTitulo As String
Public sMensaje As String
Public sListaOpciones As String
Public sSeparador As String
Public sSeleccion As String


Private Sub lstOpciones_DblClick() '5C8E38
  'Data Table: 40D220
  loc_5C8E30: Call cmdAceptar_Click()
  loc_5C8E35: ExitProcHresult
End Sub

Private Sub lstOpciones_KeyDown(KeyCode As Integer, Shift As Integer) '5CB834
  'Data Table: 40D220
  loc_5CB824: ILdI2 KeyCode
  loc_5CB827: LitI2_Byte &HD
  loc_5CB829: EqI2
  loc_5CB82A: BranchF loc_5CB832
  loc_5CB82D: Call cmdAceptar_Click()
  loc_5CB832: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5EEF00
  'Data Table: 40D220
  loc_5EEE70: FLdRfVar var_8A
  loc_5EEE73: FLdPrThis
  loc_5EEE74: VCallAd Control_ID_lstOpciones
  loc_5EEE77: FStAdFunc var_88
  loc_5EEE7A: FLdPr var_88
  loc_5EEE7D:  = Me.ListIndex
  loc_5EEE82: FLdI2 var_8A
  loc_5EEE85: LitI2_Byte &HFF
  loc_5EEE87: EqI2
  loc_5EEE88: FFree1Ad var_88
  loc_5EEE8B: BranchF loc_5EEEA2
  loc_5EEE8E: LitI2_Byte 0
  loc_5EEE90: FLdPrThis
  loc_5EEE91: VCallAd Control_ID_lstOpciones
  loc_5EEE94: FStAdFunc var_88
  loc_5EEE97: FLdPr var_88
  loc_5EEE9A: Me.ListIndex = from_stack_1
  loc_5EEE9F: FFree1Ad var_88
  loc_5EEEA2: FLdRfVar var_94
  loc_5EEEA5: FLdRfVar var_8A
  loc_5EEEA8: FLdPrThis
  loc_5EEEA9: VCallAd Control_ID_lstOpciones
  loc_5EEEAC: FStAdFunc var_88
  loc_5EEEAF: FLdPr var_88
  loc_5EEEB2:  = Me.ListIndex
  loc_5EEEB7: FLdI2 var_8A
  loc_5EEEBA: FLdPrThis
  loc_5EEEBB: VCallAd Control_ID_lstOpciones
  loc_5EEEBE: FStAdFunc var_90
  loc_5EEEC1: FLdPr var_90
  loc_5EEEC4: from_stack_2 = Me.List(from_stack_1)
  loc_5EEEC9: ILdRf var_94
  loc_5EEECC: LitStr vbNullString
  loc_5EEECF: ConcatStr
  loc_5EEED0: FStStrNoPop var_98
  loc_5EEED3: FLdPr Me
  loc_5EEED6: MemStStrCopy
  loc_5EEEDA: FFreeStr var_94 = ""
  loc_5EEEE1: FFreeAd var_88 = ""
  loc_5EEEE8: ILdRf Me
  loc_5EEEEB: FStAdNoPop
  loc_5EEEEF: ImpAdLdRf MemVar_7520D4
  loc_5EEEF2: NewIfNullPr Global
  loc_5EEEF5: Global.Unload from_stack_1
  loc_5EEEFA: FFree1Ad var_88
  loc_5EEEFD: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D2984
  'Data Table: 40D220
  loc_5D296C: ILdRf Me
  loc_5D296F: FStAdNoPop
  loc_5D2973: ImpAdLdRf MemVar_7520D4
  loc_5D2976: NewIfNullPr Global
  loc_5D2979: Global.Unload from_stack_1
  loc_5D297E: FFree1Ad var_88
  loc_5D2981: ExitProcHresult
End Sub

Private Sub Form_Load() '65AEFC
  'Data Table: 40D220
  loc_65AC24: OnErrorGoto loc_65ADFF
  loc_65AC27: FLdPr Me
  loc_65AC2A: MemLdStr sTitulo
  loc_65AC2D: FLdPr Me
  loc_65AC30: Me.Caption = from_stack_1
  loc_65AC35: FLdPr Me
  loc_65AC38: MemLdStr sMensaje
  loc_65AC3B: FLdPrThis
  loc_65AC3C: VCallAd Control_ID_lblSelecMensaje
  loc_65AC3F: FStAdFunc var_94
  loc_65AC42: FLdPr var_94
  loc_65AC45: Me.Caption = from_stack_1
  loc_65AC4A: FFree1Ad var_94
  loc_65AC4D: LitStr vbNullString
  loc_65AC50: FLdPr Me
  loc_65AC53: MemStStrCopy
  loc_65AC57: FLdRfVar var_1E4
  loc_65AC5A: LitVar_Missing var_1E0
  loc_65AC5D: LitVar_Missing var_1C0
  loc_65AC60: LitVar_Missing var_1A0
  loc_65AC63: LitVar_Missing var_180
  loc_65AC66: LitVar_Missing var_160
  loc_65AC69: LitVar_Missing var_140
  loc_65AC6C: LitVar_Missing var_120
  loc_65AC6F: LitVar_Missing var_100
  loc_65AC72: LitVar_Missing var_E0
  loc_65AC75: LitVar_Missing var_C0
  loc_65AC78: LitStr "&Cancelar"
  loc_65AC7B: FStStrCopy var_A0
  loc_65AC7E: FLdRfVar var_A0
  loc_65AC81: LitI4 2
  loc_65AC86: PopTmpLdAdStr var_9C
  loc_65AC89: LitI2_Byte &H20
  loc_65AC8B: PopTmpLdAd2 var_96
  loc_65AC8E: ImpAdLdRf MemVar_74C7D0
  loc_65AC91: NewIfNullPr clsMsg
  loc_65AC94: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AC99: ILdRf var_1E4
  loc_65AC9C: FLdPrThis
  loc_65AC9D: VCallAd Control_ID_cmdCancelar
  loc_65ACA0: FStAdFunc var_94
  loc_65ACA3: FLdPr var_94
  loc_65ACA6: Me.Caption = from_stack_1
  loc_65ACAB: FFreeStr var_A0 = ""
  loc_65ACB2: FFree1Ad var_94
  loc_65ACB5: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_65ACCC: FLdRfVar var_1E4
  loc_65ACCF: LitVar_Missing var_1E0
  loc_65ACD2: LitVar_Missing var_1C0
  loc_65ACD5: LitVar_Missing var_1A0
  loc_65ACD8: LitVar_Missing var_180
  loc_65ACDB: LitVar_Missing var_160
  loc_65ACDE: LitVar_Missing var_140
  loc_65ACE1: LitVar_Missing var_120
  loc_65ACE4: LitVar_Missing var_100
  loc_65ACE7: LitVar_Missing var_E0
  loc_65ACEA: LitVar_Missing var_C0
  loc_65ACED: LitStr "&Aceptar"
  loc_65ACF0: FStStrCopy var_A0
  loc_65ACF3: FLdRfVar var_A0
  loc_65ACF6: LitI4 3
  loc_65ACFB: PopTmpLdAdStr var_9C
  loc_65ACFE: LitI2_Byte &H20
  loc_65AD00: PopTmpLdAd2 var_96
  loc_65AD03: ImpAdLdRf MemVar_74C7D0
  loc_65AD06: NewIfNullPr clsMsg
  loc_65AD09: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AD0E: ILdRf var_1E4
  loc_65AD11: FLdPrThis
  loc_65AD12: VCallAd Control_ID_cmdAceptar
  loc_65AD15: FStAdFunc var_94
  loc_65AD18: FLdPr var_94
  loc_65AD1B: Me.Caption = from_stack_1
  loc_65AD20: FFreeStr var_A0 = ""
  loc_65AD27: FFree1Ad var_94
  loc_65AD2A: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_65AD41: ILdRf Me
  loc_65AD44: CastAd
  loc_65AD47: FStAdFunc var_94
  loc_65AD4A: FLdRfVar var_94
  loc_65AD4D: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_65AD52: FFree1Ad var_94
  loc_65AD55: LitI2_Byte 1
  loc_65AD57: FStI2 var_8A
  loc_65AD5A: FLdPr Me
  loc_65AD5D: MemLdStr sSeparador
  loc_65AD60: FnLenStr
  loc_65AD61: CI2I4
  loc_65AD62: FStI2 var_88
  loc_65AD65: FLdPr Me
  loc_65AD68: MemLdStr sListaOpciones
  loc_65AD6B: FnLenStr
  loc_65AD6C: CI2I4
  loc_65AD6D: FStI2 var_8E
  loc_65AD70: FLdI2 var_8A
  loc_65AD73: CI4UI1
  loc_65AD74: FLdPr Me
  loc_65AD77: MemLdStr sListaOpciones
  loc_65AD7A: FLdPr Me
  loc_65AD7D: MemLdStr sSeparador
  loc_65AD80: LitI4 0
  loc_65AD85: FnInStr4
  loc_65AD87: CI2I4
  loc_65AD88: FStI2 var_8C
  loc_65AD8B: FLdI2 var_8C
  loc_65AD8E: LitI2_Byte 0
  loc_65AD90: EqI2
  loc_65AD91: BranchF loc_65AD9F
  loc_65AD94: FLdPr Me
  loc_65AD97: MemLdStr sListaOpciones
  loc_65AD9A: FnLenStr
  loc_65AD9B: CI2I4
  loc_65AD9C: FStI2 var_8C
  loc_65AD9F: FLdI2 var_8C
  loc_65ADA2: FLdI2 var_8A
  loc_65ADA5: SubI2
  loc_65ADA6: FStI2 var_90
  loc_65ADA9: FLdRfVar var_90
  loc_65ADAC: CVarRef
  loc_65ADB1: FLdI2 var_8A
  loc_65ADB4: CI4UI1
  loc_65ADB5: FLdPr Me
  loc_65ADB8: MemLdStr sListaOpciones
  loc_65ADBB: ImpAdCallI2 Mid$(, , )
  loc_65ADC0: FStStr var_1E4
  loc_65ADC3: LitVar_Missing var_D0
  loc_65ADC6: PopAdLdVar
  loc_65ADC7: FLdZeroAd var_1E4
  loc_65ADCA: FStStrNoPop var_A0
  loc_65ADCD: FLdPrThis
  loc_65ADCE: VCallAd Control_ID_lstOpciones
  loc_65ADD1: FStAdFunc var_94
  loc_65ADD4: FLdPr var_94
  loc_65ADD7: Me.AddItem from_stack_1, from_stack_2
  loc_65ADDC: FFreeStr var_A0 = ""
  loc_65ADE3: FFree1Ad var_94
  loc_65ADE6: FLdI2 var_8A
  loc_65ADE9: FLdI2 var_90
  loc_65ADEC: AddI2
  loc_65ADED: FLdI2 var_88
  loc_65ADF0: AddI2
  loc_65ADF1: FStI2 var_8A
  loc_65ADF4: FLdI2 var_8C
  loc_65ADF7: FLdI2 var_8E
  loc_65ADFA: LtI2
  loc_65ADFB: BranchT loc_65AD70
  loc_65ADFE: ExitProcHresult
  loc_65ADFF: FLdRfVar var_1E4
  loc_65AE02: LitVar_Missing var_1E0
  loc_65AE05: LitVar_Missing var_1C0
  loc_65AE08: LitVar_Missing var_1A0
  loc_65AE0B: LitVar_Missing var_180
  loc_65AE0E: LitVar_Missing var_160
  loc_65AE11: LitVar_Missing var_140
  loc_65AE14: LitVar_Missing var_120
  loc_65AE17: LitVar_Missing var_100
  loc_65AE1A: LitVar_Missing var_E0
  loc_65AE1D: LitVar_Missing var_C0
  loc_65AE20: LitStr "Error #"
  loc_65AE23: FStStrCopy var_A0
  loc_65AE26: FLdRfVar var_A0
  loc_65AE29: LitI4 1
  loc_65AE2E: PopTmpLdAdStr var_9C
  loc_65AE31: LitI2_Byte &H20
  loc_65AE33: PopTmpLdAd2 var_96
  loc_65AE36: ImpAdLdRf MemVar_74C7D0
  loc_65AE39: NewIfNullPr clsMsg
  loc_65AE3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AE41: FLdRfVar var_1E8
  loc_65AE44: ImpAdCallI2 Err 'rtcErrObj
  loc_65AE49: FStAdFunc var_94
  loc_65AE4C: FLdPr var_94
  loc_65AE4F:  = Err.Number
  loc_65AE54: FLdRfVar var_1FC
  loc_65AE57: ImpAdCallI2 Err 'rtcErrObj
  loc_65AE5C: FStAdFunc var_1F8
  loc_65AE5F: FLdPr var_1F8
  loc_65AE62:  = Err.Description
  loc_65AE67: LitI4 &HD
  loc_65AE6C: ImpAdCallI2 Chr$()
  loc_65AE71: FStStr var_280
  loc_65AE74: LitVar_Missing var_27C
  loc_65AE77: LitVar_Missing var_25C
  loc_65AE7A: LitVar_Missing var_23C
  loc_65AE7D: LitI4 0
  loc_65AE82: ILdRf var_1E4
  loc_65AE85: LitStr " "
  loc_65AE88: ConcatStr
  loc_65AE89: FStStrNoPop var_1EC
  loc_65AE8C: ILdRf var_1E8
  loc_65AE8F: CStrI4
  loc_65AE91: FStStrNoPop var_1F0
  loc_65AE94: ConcatStr
  loc_65AE95: FStStrNoPop var_1F4
  loc_65AE98: LitStr " - "
  loc_65AE9B: ConcatStr
  loc_65AE9C: FStStrNoPop var_200
  loc_65AE9F: ILdRf var_1FC
  loc_65AEA2: ConcatStr
  loc_65AEA3: FStStrNoPop var_204
  loc_65AEA6: FLdZeroAd var_280
  loc_65AEA9: FStStrNoPop var_208
  loc_65AEAC: ConcatStr
  loc_65AEAD: FStStrNoPop var_20C
  loc_65AEB0: LitStr "(frmListaDeSeleccion.Load)"
  loc_65AEB3: ConcatStr
  loc_65AEB4: CVarStr var_21C
  loc_65AEB7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65AEBC: FFreeStr var_A0 = "": var_1E4 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_200 = "": var_1FC = "": var_204 = "": var_208 = "": var_20C = ""
  loc_65AED5: FFreeAd var_94 = ""
  loc_65AEDC: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_21C = "": var_23C = "": var_25C = ""
  loc_65AEFB: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D9900
  'Data Table: 40D220
  loc_5D98CC: FLdRfVar var_8A
  loc_5D98CF: FLdPrThis
  loc_5D98D0: VCallAd Control_ID_lstOpciones
  loc_5D98D3: FStAdFunc var_88
  loc_5D98D6: FLdPr var_88
  loc_5D98D9:  = Me.ListCount
  loc_5D98DE: FLdI2 var_8A
  loc_5D98E1: LitI2_Byte 1
  loc_5D98E3: EqI2
  loc_5D98E4: FFree1Ad var_88
  loc_5D98E7: BranchF loc_5D98F2
  loc_5D98EA: Call cmdAceptar_Click()
  loc_5D98EF: Branch loc_5D98FC
  loc_5D98F2: LitI2_Byte &HFF
  loc_5D98F4: FLdPr Me
  loc_5D98F7: Me.Visible = from_stack_1b
  loc_5D98FC: ExitProcHresult
End Sub

Public Function sTituloGet() '40D5A8
  sTituloGet = sTitulo
End Function

Public Sub sTituloPut(Value) '40D5B7
  sTitulo = Value
End Sub

Public Function sMensajeGet() '40D5C6
  sMensajeGet = sMensaje
End Function

Public Sub sMensajePut(Value) '40D5D5
  sMensaje = Value
End Sub

Public Function sListaOpcionesGet() '40D5E4
  sListaOpcionesGet = sListaOpciones
End Function

Public Sub sListaOpcionesPut(Value) '40D5F3
  sListaOpciones = Value
End Sub

Public Function sSeparadorGet() '40D602
  sSeparadorGet = sSeparador
End Function

Public Sub sSeparadorPut(Value) '40D611
  sSeparador = Value
End Sub

Public Function sSeleccionGet() '40D620
  sSeleccionGet = sSeleccion
End Function

Public Sub sSeleccionPut(Value) '40D62F
  sSeleccion = Value
End Sub
