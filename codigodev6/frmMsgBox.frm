VERSION 5.00
Begin VB.Form frmMsgBox
  Caption = "Controlador de surtidores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 4440
  ClientTop = 4935
  ClientWidth = 3105
  ClientHeight = 1395
  Begin VB.Timer tmrClose
    Enabled = 0   'False
    Interval = 30000
    Left = 240
    Top = 720
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "Aceptar"
    Left = 960
    Top = 840
    Width = 1215
    Height = 375
    TabIndex = 1
  End
  Begin VB.Image Image1
    Picture = "frmMsgBox.frx":0000
    Left = 120
    Top = 120
    Width = 555
    Height = 525
  End
  Begin VB.Label lmensaje
    Left = 840
    Top = 240
    Width = 2055
    Height = 375
    TabIndex = 0
  End
End

Attribute VB_Name = "frmMsgBox"

Public strMensaje As String


Private Sub cmdAceptar_Click() '5D1684
  'Data Table: 406B8C
  loc_5D166C: ILdRf Me
  loc_5D166F: FStAdNoPop
  loc_5D1673: ImpAdLdRf MemVar_7520D4
  loc_5D1676: NewIfNullPr Global
  loc_5D1679: Global.Unload from_stack_1
  loc_5D167E: FFree1Ad var_88
  loc_5D1681: ExitProcHresult
End Sub

Private Sub Form_Load() '614CFC
  'Data Table: 406B8C
  loc_614C00: FLdPr Me
  loc_614C03: MemLdStr strMensaje
  loc_614C06: FLdPrThis
  loc_614C07: VCallAd Control_ID_lmensaje
  loc_614C0A: FStAdFunc var_88
  loc_614C0D: FLdPr var_88
  loc_614C10: Me.Caption = from_stack_1
  loc_614C15: FFree1Ad var_88
  loc_614C18: FLdRfVar var_1D8
  loc_614C1B: LitVar_Missing var_1D4
  loc_614C1E: LitVar_Missing var_1B4
  loc_614C21: LitVar_Missing var_194
  loc_614C24: LitVar_Missing var_174
  loc_614C27: LitVar_Missing var_154
  loc_614C2A: LitVar_Missing var_134
  loc_614C2D: LitVar_Missing var_114
  loc_614C30: LitVar_Missing var_F4
  loc_614C33: LitVar_Missing var_D4
  loc_614C36: LitVar_Missing var_B4
  loc_614C39: LitStr "Controlador de surtidores"
  loc_614C3C: FStStrCopy var_94
  loc_614C3F: FLdRfVar var_94
  loc_614C42: LitI4 1
  loc_614C47: PopTmpLdAdStr var_90
  loc_614C4A: LitI2_Byte &H54
  loc_614C4C: PopTmpLdAd2 var_8A
  loc_614C4F: ImpAdLdRf MemVar_74C7D0
  loc_614C52: NewIfNullPr clsMsg
  loc_614C55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_614C5A: ILdRf var_1D8
  loc_614C5D: FLdPr Me
  loc_614C60: Me.Caption = from_stack_1
  loc_614C65: FFreeStr var_94 = ""
  loc_614C6C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_614C83: FLdRfVar var_1D8
  loc_614C86: LitVar_Missing var_1D4
  loc_614C89: LitVar_Missing var_1B4
  loc_614C8C: LitVar_Missing var_194
  loc_614C8F: LitVar_Missing var_174
  loc_614C92: LitVar_Missing var_154
  loc_614C95: LitVar_Missing var_134
  loc_614C98: LitVar_Missing var_114
  loc_614C9B: LitVar_Missing var_F4
  loc_614C9E: LitVar_Missing var_D4
  loc_614CA1: LitVar_Missing var_B4
  loc_614CA4: LitStr "Aceptar"
  loc_614CA7: FStStrCopy var_94
  loc_614CAA: FLdRfVar var_94
  loc_614CAD: LitI4 2
  loc_614CB2: PopTmpLdAdStr var_90
  loc_614CB5: LitI2_Byte &H54
  loc_614CB7: PopTmpLdAd2 var_8A
  loc_614CBA: ImpAdLdRf MemVar_74C7D0
  loc_614CBD: NewIfNullPr clsMsg
  loc_614CC0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_614CC5: ILdRf var_1D8
  loc_614CC8: FLdPrThis
  loc_614CC9: VCallAd Control_ID_cmdAceptar
  loc_614CCC: FStAdFunc var_88
  loc_614CCF: FLdPr var_88
  loc_614CD2: Me.Caption = from_stack_1
  loc_614CD7: FFreeStr var_94 = ""
  loc_614CDE: FFree1Ad var_88
  loc_614CE1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_614CF8: ExitProcHresult
End Sub

Private Sub tmrClose_Timer() '5C85C0
  'Data Table: 406B8C
  loc_5C85BC: ExitProcHresult
End Sub

Public Function strMensajeGet() '406E54
  strMensajeGet = strMensaje
End Function

Public Sub strMensajePut(Value) '406E63
  strMensaje = Value
End Sub
