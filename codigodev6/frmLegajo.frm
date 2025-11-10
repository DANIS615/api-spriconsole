VERSION 5.00
Begin VB.Form frmLegajo
  Caption = "Legajo"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 3285
  ClientHeight = 2730
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton Ok
    Caption = "&Aceptar"
    Left = 120
    Top = 2040
    Width = 1335
    Height = 495
    TabIndex = 2
  End
  Begin VB.CommandButton Cancel
    Caption = "&Cancelar"
    Left = 1800
    Top = 2040
    Width = 1335
    Height = 495
    TabIndex = 1
  End
  Begin VB.Frame Frame1
    Left = 0
    Top = 0
    Width = 3255
    Height = 1695
    TabIndex = 0
    Begin VB.TextBox txtLegajo
      Left = 360
      Top = 840
      Width = 2535
      Height = 495
      TabIndex = 3
      Alignment = 1 'Right Justify
      MaxLength = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Código interno"
      Left = 720
      Top = 360
      Width = 1935
      Height = 495
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "frmLegajo"


Private Sub Cancel_Click() '5D4B78
  'Data Table: 40A794
  loc_5D4B58: LitStr "000000"
  loc_5D4B5B: FLdPr Me
  loc_5D4B5E: MemStStrCopy
  loc_5D4B62: ILdRf Me
  loc_5D4B65: FStAdNoPop
  loc_5D4B69: ImpAdLdRf MemVar_7520D4
  loc_5D4B6C: NewIfNullPr Global
  loc_5D4B6F: Global.Unload from_stack_1
  loc_5D4B74: FFree1Ad var_88
  loc_5D4B77: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D01E8
  'Data Table: 40A794
  loc_5D01D4: FLdPrThis
  loc_5D01D5: VCallAd Control_ID_txtLegajo
  loc_5D01D8: FStAdFunc var_88
  loc_5D01DB: FLdPr var_88
  loc_5D01DE: Me.SetFocus
  loc_5D01E3: FFree1Ad var_88
  loc_5D01E6: ExitProcHresult
End Sub

Private Sub txtLegajo_KeyPress(KeyAscii As Integer) '5D86B0
  'Data Table: 40A794
  loc_5D867C: ILdI2 KeyAscii
  loc_5D867F: LitI2_Byte &H30
  loc_5D8681: LtI2
  loc_5D8682: ILdI2 KeyAscii
  loc_5D8685: LitI2_Byte &H39
  loc_5D8687: GtI2
  loc_5D8688: OrI4
  loc_5D8689: ILdI2 KeyAscii
  loc_5D868C: LitI2_Byte 8
  loc_5D868E: NeI2
  loc_5D868F: AndI4
  loc_5D8690: BranchF loc_5D86AC
  loc_5D8693: ILdI2 KeyAscii
  loc_5D8696: LitI2_Byte &HD
  loc_5D8698: EqI2
  loc_5D8699: BranchF loc_5D86A2
  loc_5D869C: Call OK_Click()
  loc_5D86A1: ExitProcHresult
  loc_5D86A2: ImpAdCallFPR4 Beep()
  loc_5D86A7: LitI2_Byte 0
  loc_5D86A9: IStI2 KeyAscii
  loc_5D86AC: ExitProcHresult
  loc_5D86AD: Ary1StStrCopy
  loc_5D86AE: BranchF loc_5DA27C
End Sub

Private Sub OK_Click() '607F00
  'Data Table: 40A794
  loc_607E20: FLdRfVar var_8C
  loc_607E23: FLdPrThis
  loc_607E24: VCallAd Control_ID_txtLegajo
  loc_607E27: FStAdFunc var_88
  loc_607E2A: FLdPr var_88
  loc_607E2D:  = Me.Text
  loc_607E32: ILdRf var_8C
  loc_607E35: LitStr vbNullString
  loc_607E38: NeStr
  loc_607E3A: FFree1Str var_8C
  loc_607E3D: FFree1Ad var_88
  loc_607E40: BranchF loc_607EBC
  loc_607E43: FLdRfVar var_8C
  loc_607E46: FLdPrThis
  loc_607E47: VCallAd Control_ID_txtLegajo
  loc_607E4A: FStAdFunc var_88
  loc_607E4D: FLdPr var_88
  loc_607E50:  = Me.Text
  loc_607E55: ILdRf var_8C
  loc_607E58: FLdPr Me
  loc_607E5B: MemStStrCopy
  loc_607E5F: FFree1Str var_8C
  loc_607E62: FFree1Ad var_88
  loc_607E65: LitVarI2 var_CC, 6
  loc_607E6A: LitI4 2
  loc_607E6F: FLdPr Me
  loc_607E72: MemLdStr global_52
  loc_607E75: CR8Str
  loc_607E77: LitI4 &HF4240
  loc_607E7C: CR8I4
  loc_607E7D: AddR8
  loc_607E7E: CVarR8
  loc_607E82: FLdRfVar var_DC
  loc_607E85: ImpAdCallFPR4  = Mid(, , )
  loc_607E8A: FLdRfVar var_DC
  loc_607E8D: CStrVarTmp
  loc_607E8E: FStStrNoPop var_8C
  loc_607E91: FLdPr Me
  loc_607E94: MemStStrCopy
  loc_607E98: FFree1Str var_8C
  loc_607E9B: FFreeVar var_AC = "": var_CC = ""
  loc_607EA4: ILdRf Me
  loc_607EA7: FStAdNoPop
  loc_607EAB: ImpAdLdRf MemVar_7520D4
  loc_607EAE: NewIfNullPr Global
  loc_607EB1: Global.Unload from_stack_1
  loc_607EB6: FFree1Ad var_88
  loc_607EB9: Branch loc_607EFF
  loc_607EBC: LitVar_Missing var_10C
  loc_607EBF: LitVar_Missing var_DC
  loc_607EC2: LitVarStr var_BC, "Atención"
  loc_607EC7: FStVarCopyObj var_CC
  loc_607ECA: FLdRfVar var_CC
  loc_607ECD: LitI4 &H40
  loc_607ED2: LitVarStr var_9C, "Debe ingresar un número de legajo"
  loc_607ED7: FStVarCopyObj var_AC
  loc_607EDA: FLdRfVar var_AC
  loc_607EDD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_607EE2: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_607EED: FLdPrThis
  loc_607EEE: VCallAd Control_ID_txtLegajo
  loc_607EF1: FStAdFunc var_88
  loc_607EF4: FLdPr var_88
  loc_607EF7: Me.SetFocus
  loc_607EFC: FFree1Ad var_88
  loc_607EFF: ExitProcHresult
End Sub

Public Function GetLegajo() '5D0158
  'Data Table: 40A794
  loc_5D0144: ZeroRetVal
  loc_5D0146: FLdPr Me
  loc_5D0149: MemLdStr global_52
  loc_5D014C: FStStrCopy var_88
  loc_5D014F: ExitProcCbHresult
  loc_5D0155: LitI2_Byte &H1A
End Function
