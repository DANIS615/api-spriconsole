VERSION 5.00
Begin VB.Form frmDineroenPlaya
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 9030
  ClientHeight = 3645
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Moveable = 0   'False
  Begin VB.CommandButton cmdBuzon
    Caption = "&Tirada a Buzón"
    Left = 600
    Top = 2160
    Width = 2175
    Height = 975
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
    Left = 3360
    Top = 2160
    Width = 2175
    Height = 975
    TabIndex = 3
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
  Begin VB.TextBox txtMaximo
    Left = 5400
    Top = 1080
    Width = 3015
    Height = 495
    Text = "123456.789 Pesos"
    TabIndex = 1
    Alignment = 2 'Center
    MaxLength = 10
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
  Begin VB.TextBox txtTotal
    Left = 600
    Top = 1080
    Width = 3495
    Height = 495
    Text = "123456.789 Pesos"
    TabIndex = 0
    TabStop = 0   'False
    Alignment = 2 'Center
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 6120
    Top = 2160
    Width = 2175
    Height = 975
    TabIndex = 4
    Default = -1  'True
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
  Begin VB.Label Label2
    Caption = "Máximo Permitido"
    Left = 5400
    Top = 360
    Width = 3015
    Height = 495
    TabIndex = 6
    Alignment = 2 'Center
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
  Begin VB.Label Label1
    Caption = "Total en Playa"
    Left = 480
    Top = 360
    Width = 3495
    Height = 495
    TabIndex = 5
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmDineroenPlaya"


Private Sub cmdCancelar_Click() '5D20E8
  'Data Table: 414170
  loc_5D20D0: ILdRf Me
  loc_5D20D3: FStAdNoPop
  loc_5D20D7: ImpAdLdRf MemVar_7520D4
  loc_5D20DA: NewIfNullPr Global
  loc_5D20DD: Global.Unload from_stack_1
  loc_5D20E2: FFree1Ad var_88
  loc_5D20E5: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '6176DC
  'Data Table: 414170
  loc_6175BC: FLdRfVar var_90
  loc_6175BF: FLdPrThis
  loc_6175C0: VCallAd Control_ID_txtMaximo
  loc_6175C3: FStAdFunc var_8C
  loc_6175C6: FLdPr var_8C
  loc_6175C9:  = Me.Text
  loc_6175CE: FLdZeroAd var_90
  loc_6175D1: CVarStr var_A0
  loc_6175D4: ImpAdCallI2 IsNumeric()
  loc_6175D9: FFree1Ad var_8C
  loc_6175DC: FFree1Var var_A0 = ""
  loc_6175DF: BranchF loc_6176AF
  loc_6175E2: FLdRfVar var_90
  loc_6175E5: FLdPrThis
  loc_6175E6: VCallAd Control_ID_txtMaximo
  loc_6175E9: FStAdFunc var_8C
  loc_6175EC: FLdPr var_8C
  loc_6175EF:  = Me.Text
  loc_6175F4: ILdRf var_90
  loc_6175F7: ImpAdCallFPR4 push Val()
  loc_6175FC: FStFPR8 var_E8
  loc_6175FF: LitI4 1
  loc_617604: LitI4 1
  loc_617609: LitVarStr var_C0, "000000000"
  loc_61760E: FStVarCopyObj var_D0
  loc_617611: FLdRfVar var_D0
  loc_617614: FLdFPR8 var_E8
  loc_617617: ImpAdLdFPR4 MemVar_74C2E0
  loc_61761A: MulR8
  loc_61761B: CVarR8
  loc_61761F: FLdRfVar var_E0
  loc_617622: ImpAdCallFPR4  = Format(, )
  loc_617627: FLdRfVar var_E0
  loc_61762A: CStrVarTmp
  loc_61762B: FStStr var_88
  loc_61762E: FFree1Str var_90
  loc_617631: FFree1Ad var_8C
  loc_617634: FFreeVar var_A0 = "": var_D0 = ""
  loc_61763D: FLdRfVar var_A0
  loc_617640: ILdRf var_88
  loc_617643: FLdRfVar var_8C
  loc_617646: ImpAdLdRf MemVar_74C760
  loc_617649: NewIfNullPr Formx
  loc_61764C: from_stack_1v = Formx.global_4589716Get()
  loc_617651: FLdPr var_8C
  loc_617654: Call 0.Method_arg_1F8 ()
  loc_617659: FLdRfVar var_A0
  loc_61765C: NotVar var_D0
  loc_617660: CBoolVarNull
  loc_617662: FFree1Ad var_8C
  loc_617665: FFree1Var var_A0 = ""
  loc_617668: BranchF loc_617697
  loc_61766B: FLdRfVar var_A0
  loc_61766E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_617673: FLdRfVar var_A0
  loc_617676: CBoolVarNull
  loc_617678: FFree1Var var_A0 = ""
  loc_61767B: BranchF loc_617694
  loc_61767E: ILdRf Me
  loc_617681: FStAdNoPop
  loc_617685: ImpAdLdRf MemVar_7520D4
  loc_617688: NewIfNullPr Global
  loc_61768B: Global.Unload from_stack_1
  loc_617690: FFree1Ad var_8C
  loc_617693: ExitProcHresult
  loc_617694: Branch loc_61763D
  loc_617697: ILdRf Me
  loc_61769A: FStAdNoPop
  loc_61769E: ImpAdLdRf MemVar_7520D4
  loc_6176A1: NewIfNullPr Global
  loc_6176A4: Global.Unload from_stack_1
  loc_6176A9: FFree1Ad var_8C
  loc_6176AC: Branch loc_6176D8
  loc_6176AF: LitVar_Missing var_118
  loc_6176B2: LitVar_Missing var_E0
  loc_6176B5: LitVar_Missing var_D0
  loc_6176B8: LitI4 &H40
  loc_6176BD: LitVarStr var_B0, "Debe ingresar un monto correcto. Verifique por favor."
  loc_6176C2: FStVarCopyObj var_A0
  loc_6176C5: FLdRfVar var_A0
  loc_6176C8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6176CD: FFreeVar var_A0 = "": var_D0 = "": var_E0 = ""
  loc_6176D8: ExitProcHresult
End Sub

Private Sub txtMaximo_GotFocus() '5DEDE8
  'Data Table: 414170
  loc_5DEDA0: LitI4 0
  loc_5DEDA5: FLdPrThis
  loc_5DEDA6: VCallAd Control_ID_txtMaximo
  loc_5DEDA9: FStAdFunc var_88
  loc_5DEDAC: FLdPr var_88
  loc_5DEDAF: Me.SelStart = from_stack_1
  loc_5DEDB4: FFree1Ad var_88
  loc_5DEDB7: FLdRfVar var_8C
  loc_5DEDBA: FLdPrThis
  loc_5DEDBB: VCallAd Control_ID_txtMaximo
  loc_5DEDBE: FStAdFunc var_88
  loc_5DEDC1: FLdPr var_88
  loc_5DEDC4:  = Me.Text
  loc_5DEDC9: ILdRf var_8C
  loc_5DEDCC: FnLenStr
  loc_5DEDCD: FLdPrThis
  loc_5DEDCE: VCallAd Control_ID_txtMaximo
  loc_5DEDD1: FStAdFunc var_90
  loc_5DEDD4: FLdPr var_90
  loc_5DEDD7: Me.SelLength = from_stack_1
  loc_5DEDDC: FFree1Str var_8C
  loc_5DEDDF: FFreeAd var_88 = ""
  loc_5DEDE6: ExitProcHresult
End Sub

Private Sub txtMaximo_KeyDown(KeyCode As Integer, Shift As Integer) '5CEF10
  'Data Table: 414170
  loc_5CEEFC: ILdI2 KeyCode
  loc_5CEEFF: CI4UI1
  loc_5CEF00: LitI4 &H2E
  loc_5CEF05: NeI4
  loc_5CEF06: BranchF loc_5CEF0E
  loc_5CEF09: LitI2_Byte 0
  loc_5CEF0B: IStI2 KeyCode
  loc_5CEF0E: ExitProcHresult
End Sub

Private Sub txtMaximo_KeyPress(KeyAscii As Integer) '5DB144
  'Data Table: 414170
  loc_5DB104: ILdI2 KeyAscii
  loc_5DB107: FStI2 var_86
  loc_5DB10A: FLdI2 var_86
  loc_5DB10D: LitI4 &H2E
  loc_5DB112: CI2I4
  loc_5DB113: EqI2
  loc_5DB114: BranchT loc_5DB138
  loc_5DB117: FLdI2 var_86
  loc_5DB11A: LitI4 8
  loc_5DB11F: CI2I4
  loc_5DB120: EqI2
  loc_5DB121: BranchT loc_5DB138
  loc_5DB124: FLdI2 var_86
  loc_5DB127: LitI4 &H30
  loc_5DB12C: CI2I4
  loc_5DB12D: LitI4 &H39
  loc_5DB132: CI2I4
  loc_5DB133: BetweenI2
  loc_5DB135: BranchF loc_5DB13B
  loc_5DB138: Branch loc_5DB140
  loc_5DB13B: LitI2_Byte 0
  loc_5DB13D: IStI2 KeyAscii
  loc_5DB140: ExitProcHresult
  loc_5DB141: FStFPR4 arg_18
End Sub

Private Sub txtMaximo_KeyUp(KeyCode As Integer, Shift As Integer) '5C9260
  'Data Table: 414170
  loc_5C9258: LitI2_Byte 0
  loc_5C925A: IStI2 KeyCode
  loc_5C925D: ExitProcHresult
End Sub

Private Sub txtMaximo_LostFocus() '5E7444
  'Data Table: 414170
  loc_5E73DC: FLdRfVar var_8C
  loc_5E73DF: FLdPrThis
  loc_5E73E0: VCallAd Control_ID_txtMaximo
  loc_5E73E3: FStAdFunc var_88
  loc_5E73E6: FLdPr var_88
  loc_5E73E9:  = Me.Text
  loc_5E73EE: ILdRf var_8C
  loc_5E73F1: ImpAdCallFPR4 push Val()
  loc_5E73F6: FStFPR8 var_DC
  loc_5E73F9: LitI4 1
  loc_5E73FE: LitI4 1
  loc_5E7403: LitVarStr var_BC, "#####0.00"
  loc_5E7408: FStVarCopyObj var_CC
  loc_5E740B: FLdRfVar var_CC
  loc_5E740E: FLdFPR8 var_DC
  loc_5E7411: CVarR8
  loc_5E7415: ImpAdCallI2 Format$(, )
  loc_5E741A: FStStrNoPop var_D0
  loc_5E741D: FLdPrThis
  loc_5E741E: VCallAd Control_ID_txtMaximo
  loc_5E7421: FStAdFunc var_D4
  loc_5E7424: FLdPr var_D4
  loc_5E7427: Me.Text = from_stack_1
  loc_5E742C: FFreeStr var_8C = ""
  loc_5E7433: FFreeAd var_88 = ""
  loc_5E743A: FFreeVar var_AC = ""
  loc_5E7441: ExitProcHresult
End Sub

Private Sub cmdBuzon_Click() '5F119C
  'Data Table: 414170
  loc_5F110C: FLdRfVar var_8C
  loc_5F110F: FLdPrThis
  loc_5F1110: VCallAd Control_ID_txtTotal
  loc_5F1113: FStAdFunc var_88
  loc_5F1116: FLdPr var_88
  loc_5F1119:  = Me.Text
  loc_5F111E: LitI4 1
  loc_5F1123: FLdRfVar var_94
  loc_5F1126: FLdPrThis
  loc_5F1127: VCallAd Control_ID_txtTotal
  loc_5F112A: FStAdFunc var_90
  loc_5F112D: FLdPr var_90
  loc_5F1130:  = Me.Text
  loc_5F1135: ILdRf var_94
  loc_5F1138: LitStr "$"
  loc_5F113B: LitI4 0
  loc_5F1140: FnInStr4
  loc_5F1142: LitI4 1
  loc_5F1147: SubI4
  loc_5F1148: CVarI4
  loc_5F114C: LitI4 1
  loc_5F1151: ILdRf var_8C
  loc_5F1154: ImpAdCallI2 Mid$(, , )
  loc_5F1159: FStStrNoPop var_B8
  loc_5F115C: ImpAdCallFPR4 push Val()
  loc_5F1161: PopFPR4
  loc_5F1162: ImpAdLdRf MemVar_74D914
  loc_5F1165: NewIfNullPr frmTiradaBuzon
  loc_5F1168: Call frmTiradaBuzon.sngTotalBilleteraPut(from_stack_1v)
  loc_5F116D: FFreeStr var_94 = "": var_8C = ""
  loc_5F1176: FFreeAd var_88 = ""
  loc_5F117D: FFree1Var var_B4 = ""
  loc_5F1180: LitVar_Missing var_C8
  loc_5F1183: PopAdLdVar
  loc_5F1184: LitVarI4
  loc_5F118C: PopAdLdVar
  loc_5F118D: ImpAdLdRf MemVar_74D914
  loc_5F1190: NewIfNullPr frmTiradaBuzon
  loc_5F1193: frmTiradaBuzon.Show from_stack_1, from_stack_2
  loc_5F1198: ExitProcHresult
End Sub

Private Sub Form_Load() '655F40
  'Data Table: 414170
  loc_655C64: FLdRfVar var_1D4
  loc_655C67: LitVar_Missing var_1D0
  loc_655C6A: LitVar_Missing var_1B0
  loc_655C6D: LitVar_Missing var_190
  loc_655C70: LitVar_Missing var_170
  loc_655C73: LitVar_Missing var_150
  loc_655C76: LitVar_Missing var_130
  loc_655C79: LitVar_Missing var_110
  loc_655C7C: LitVar_Missing var_F0
  loc_655C7F: LitVar_Missing var_D0
  loc_655C82: LitVar_Missing var_B0
  loc_655C85: LitStr "Total en Playa"
  loc_655C88: FStStrCopy var_90
  loc_655C8B: FLdRfVar var_90
  loc_655C8E: LitI4 1
  loc_655C93: PopTmpLdAdStr var_8C
  loc_655C96: LitI2_Byte 3
  loc_655C98: PopTmpLdAd2 var_86
  loc_655C9B: ImpAdLdRf MemVar_74C7D0
  loc_655C9E: NewIfNullPr clsMsg
  loc_655CA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655CA6: ILdRf var_1D4
  loc_655CA9: FLdPrThis
  loc_655CAA: VCallAd Control_ID_Label1
  loc_655CAD: FStAdFunc var_1D8
  loc_655CB0: FLdPr var_1D8
  loc_655CB3: Me.Caption = from_stack_1
  loc_655CB8: FFreeStr var_90 = ""
  loc_655CBF: FFree1Ad var_1D8
  loc_655CC2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655CD9: FLdRfVar var_1D4
  loc_655CDC: LitVar_Missing var_1D0
  loc_655CDF: LitVar_Missing var_1B0
  loc_655CE2: LitVar_Missing var_190
  loc_655CE5: LitVar_Missing var_170
  loc_655CE8: LitVar_Missing var_150
  loc_655CEB: LitVar_Missing var_130
  loc_655CEE: LitVar_Missing var_110
  loc_655CF1: LitVar_Missing var_F0
  loc_655CF4: LitVar_Missing var_D0
  loc_655CF7: LitVar_Missing var_B0
  loc_655CFA: LitStr "Máximo Permitido"
  loc_655CFD: FStStrCopy var_90
  loc_655D00: FLdRfVar var_90
  loc_655D03: LitI4 2
  loc_655D08: PopTmpLdAdStr var_8C
  loc_655D0B: LitI2_Byte 3
  loc_655D0D: PopTmpLdAd2 var_86
  loc_655D10: ImpAdLdRf MemVar_74C7D0
  loc_655D13: NewIfNullPr clsMsg
  loc_655D16: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655D1B: ILdRf var_1D4
  loc_655D1E: FLdPrThis
  loc_655D1F: VCallAd Control_ID_Label2
  loc_655D22: FStAdFunc var_1D8
  loc_655D25: FLdPr var_1D8
  loc_655D28: Me.Caption = from_stack_1
  loc_655D2D: FFreeStr var_90 = ""
  loc_655D34: FFree1Ad var_1D8
  loc_655D37: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655D4E: FLdRfVar var_1D4
  loc_655D51: LitVar_Missing var_1D0
  loc_655D54: LitVar_Missing var_1B0
  loc_655D57: LitVar_Missing var_190
  loc_655D5A: LitVar_Missing var_170
  loc_655D5D: LitVar_Missing var_150
  loc_655D60: LitVar_Missing var_130
  loc_655D63: LitVar_Missing var_110
  loc_655D66: LitVar_Missing var_F0
  loc_655D69: LitVar_Missing var_D0
  loc_655D6C: LitVar_Missing var_B0
  loc_655D6F: LitStr "&Tirada a Buzón"
  loc_655D72: FStStrCopy var_90
  loc_655D75: FLdRfVar var_90
  loc_655D78: LitI4 3
  loc_655D7D: PopTmpLdAdStr var_8C
  loc_655D80: LitI2_Byte 3
  loc_655D82: PopTmpLdAd2 var_86
  loc_655D85: ImpAdLdRf MemVar_74C7D0
  loc_655D88: NewIfNullPr clsMsg
  loc_655D8B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655D90: ILdRf var_1D4
  loc_655D93: FLdPrThis
  loc_655D94: VCallAd Control_ID_cmdBuzon
  loc_655D97: FStAdFunc var_1D8
  loc_655D9A: FLdPr var_1D8
  loc_655D9D: Me.Caption = from_stack_1
  loc_655DA2: FFreeStr var_90 = ""
  loc_655DA9: FFree1Ad var_1D8
  loc_655DAC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655DC3: FLdRfVar var_1D4
  loc_655DC6: LitVar_Missing var_1D0
  loc_655DC9: LitVar_Missing var_1B0
  loc_655DCC: LitVar_Missing var_190
  loc_655DCF: LitVar_Missing var_170
  loc_655DD2: LitVar_Missing var_150
  loc_655DD5: LitVar_Missing var_130
  loc_655DD8: LitVar_Missing var_110
  loc_655DDB: LitVar_Missing var_F0
  loc_655DDE: LitVar_Missing var_D0
  loc_655DE1: LitVar_Missing var_B0
  loc_655DE4: LitStr "&Aceptar"
  loc_655DE7: FStStrCopy var_90
  loc_655DEA: FLdRfVar var_90
  loc_655DED: LitI4 4
  loc_655DF2: PopTmpLdAdStr var_8C
  loc_655DF5: LitI2_Byte 3
  loc_655DF7: PopTmpLdAd2 var_86
  loc_655DFA: ImpAdLdRf MemVar_74C7D0
  loc_655DFD: NewIfNullPr clsMsg
  loc_655E00: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655E05: ILdRf var_1D4
  loc_655E08: FLdPrThis
  loc_655E09: VCallAd Control_ID_cmdAceptar
  loc_655E0C: FStAdFunc var_1D8
  loc_655E0F: FLdPr var_1D8
  loc_655E12: Me.Caption = from_stack_1
  loc_655E17: FFreeStr var_90 = ""
  loc_655E1E: FFree1Ad var_1D8
  loc_655E21: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655E38: FLdRfVar var_1D4
  loc_655E3B: LitVar_Missing var_1D0
  loc_655E3E: LitVar_Missing var_1B0
  loc_655E41: LitVar_Missing var_190
  loc_655E44: LitVar_Missing var_170
  loc_655E47: LitVar_Missing var_150
  loc_655E4A: LitVar_Missing var_130
  loc_655E4D: LitVar_Missing var_110
  loc_655E50: LitVar_Missing var_F0
  loc_655E53: LitVar_Missing var_D0
  loc_655E56: LitVar_Missing var_B0
  loc_655E59: LitStr "&Cancelar"
  loc_655E5C: FStStrCopy var_90
  loc_655E5F: FLdRfVar var_90
  loc_655E62: LitI4 5
  loc_655E67: PopTmpLdAdStr var_8C
  loc_655E6A: LitI2_Byte 3
  loc_655E6C: PopTmpLdAd2 var_86
  loc_655E6F: ImpAdLdRf MemVar_74C7D0
  loc_655E72: NewIfNullPr clsMsg
  loc_655E75: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655E7A: ILdRf var_1D4
  loc_655E7D: FLdPrThis
  loc_655E7E: VCallAd Control_ID_cmdCancelar
  loc_655E81: FStAdFunc var_1D8
  loc_655E84: FLdPr var_1D8
  loc_655E87: Me.Caption = from_stack_1
  loc_655E8C: FFreeStr var_90 = ""
  loc_655E93: FFree1Ad var_1D8
  loc_655E96: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655EAD: FLdRfVar var_1DC
  loc_655EB0: FLdPr Me
  loc_655EB3:  = Me.Width
  loc_655EB8: FLdRfVar var_8C
  loc_655EBB: FLdRfVar var_1D8
  loc_655EBE: ImpAdLdRf MemVar_7520D4
  loc_655EC1: NewIfNullPr Global
  loc_655EC4:  = Global.Screen
  loc_655EC9: FLdPr var_1D8
  loc_655ECC:  = Screen.Width
  loc_655ED1: FLdFPR4 var_8C
  loc_655ED4: FLdFPR4 var_1DC
  loc_655ED7: SubR4
  loc_655ED8: CI4R8
  loc_655ED9: LitI4 2
  loc_655EDE: IDvI4
  loc_655EDF: CR8I4
  loc_655EE0: PopFPR4
  loc_655EE1: FLdPr Me
  loc_655EE4: Me.Left = from_stack_1s
  loc_655EE9: FFree1Ad var_1D8
  loc_655EEC: FLdRfVar var_1DC
  loc_655EEF: FLdPr Me
  loc_655EF2:  = Me.Height
  loc_655EF7: FLdRfVar var_8C
  loc_655EFA: FLdRfVar var_1D8
  loc_655EFD: ImpAdLdRf MemVar_7520D4
  loc_655F00: NewIfNullPr Global
  loc_655F03:  = Global.Screen
  loc_655F08: FLdPr var_1D8
  loc_655F0B:  = Screen.Height
  loc_655F10: FLdFPR4 var_8C
  loc_655F13: FLdFPR4 var_1DC
  loc_655F16: SubR4
  loc_655F17: CI4R8
  loc_655F18: LitI4 2
  loc_655F1D: IDvI4
  loc_655F1E: CR8I4
  loc_655F1F: PopFPR4
  loc_655F20: FLdPr Me
  loc_655F23: Me.Top = from_stack_1s
  loc_655F28: FFree1Ad var_1D8
  loc_655F2B: LitI2_Byte 0
  loc_655F2D: FLdPrThis
  loc_655F2E: VCallAd Control_ID_txtTotal
  loc_655F31: FStAdFunc var_1D8
  loc_655F34: FLdPr var_1D8
  loc_655F37: Me.Enabled = from_stack_1b
  loc_655F3C: FFree1Ad var_1D8
  loc_655F3F: ExitProcHresult
End Sub

Private Sub Form_Activate() '632AAC
  'Data Table: 414170
  loc_6328E0: FLdRfVar var_9C
  loc_6328E3: FLdRfVar var_88
  loc_6328E6: FLdRfVar var_8C
  loc_6328E9: ImpAdLdRf MemVar_74C760
  loc_6328EC: NewIfNullPr Formx
  loc_6328EF: from_stack_1v = Formx.global_4589716Get()
  loc_6328F4: FLdPr var_8C
  loc_6328F7: Call 0.Method_arg_1F4 ()
  loc_6328FC: FLdRfVar var_9C
  loc_6328FF: NotVar var_AC
  loc_632903: CBoolVarNull
  loc_632905: FFree1Ad var_8C
  loc_632908: FFree1Var var_9C = ""
  loc_63290B: BranchF loc_63293A
  loc_63290E: FLdRfVar var_9C
  loc_632911: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_632916: FLdRfVar var_9C
  loc_632919: CBoolVarNull
  loc_63291B: FFree1Var var_9C = ""
  loc_63291E: BranchF loc_632937
  loc_632921: ILdRf Me
  loc_632924: FStAdNoPop
  loc_632928: ImpAdLdRf MemVar_7520D4
  loc_63292B: NewIfNullPr Global
  loc_63292E: Global.Unload from_stack_1
  loc_632933: FFree1Ad var_8C
  loc_632936: ExitProcHresult
  loc_632937: Branch loc_6328E0
  loc_63293A: FLdRfVar var_88
  loc_63293D: CVarRef
  loc_632942: FLdRfVar var_9C
  loc_632945: ImpAdCallFPR4  = Trim()
  loc_63294A: FLdRfVar var_9C
  loc_63294D: CStrVarTmp
  loc_63294E: FStStr var_88
  loc_632951: FFree1Var var_9C = ""
  loc_632954: ILdRf var_88
  loc_632957: FnLenStr
  loc_632958: LitI4 1
  loc_63295D: GtI4
  loc_63295E: BranchF loc_632A3B
  loc_632961: LitVarI2 var_9C, 9
  loc_632966: LitI4 1
  loc_63296B: ILdRf var_88
  loc_63296E: ImpAdCallI2 Mid$(, , )
  loc_632973: FStStrNoPop var_C0
  loc_632976: ImpAdCallFPR4 push Val()
  loc_63297B: FStFPR8 var_100
  loc_63297E: LitI4 1
  loc_632983: LitI4 1
  loc_632988: LitVarStr var_E0, "######0.00"
  loc_63298D: FStVarCopyObj var_F0
  loc_632990: FLdRfVar var_F0
  loc_632993: FLdFPR8 var_100
  loc_632996: LitI2_Byte &H64
  loc_632998: CR8I2
  loc_632999: DivR8
  loc_63299A: CVarR8
  loc_63299E: ImpAdCallI2 Format$(, )
  loc_6329A3: FStStrNoPop var_F4
  loc_6329A6: ImpAdLdI4 MemVar_74BED0
  loc_6329A9: ConcatStr
  loc_6329AA: FStStrNoPop var_F8
  loc_6329AD: FLdPrThis
  loc_6329AE: VCallAd Control_ID_txtTotal
  loc_6329B1: FStAdFunc var_8C
  loc_6329B4: FLdPr var_8C
  loc_6329B7: Me.Text = from_stack_1
  loc_6329BC: FFreeStr var_C0 = "": var_F4 = ""
  loc_6329C5: FFree1Ad var_8C
  loc_6329C8: FFreeVar var_9C = "": var_AC = ""
  loc_6329D1: LitVarI2 var_9C, 9
  loc_6329D6: LitI4 &HA
  loc_6329DB: ILdRf var_88
  loc_6329DE: ImpAdCallI2 Mid$(, , )
  loc_6329E3: FStStrNoPop var_C0
  loc_6329E6: ImpAdCallFPR4 push Val()
  loc_6329EB: FStFPR8 var_100
  loc_6329EE: LitI4 1
  loc_6329F3: LitI4 1
  loc_6329F8: LitVarStr var_E0, "######0.00"
  loc_6329FD: FStVarCopyObj var_F0
  loc_632A00: FLdRfVar var_F0
  loc_632A03: FLdFPR8 var_100
  loc_632A06: LitI2_Byte &H64
  loc_632A08: CR8I2
  loc_632A09: DivR8
  loc_632A0A: CVarR8
  loc_632A0E: ImpAdCallI2 Format$(, )
  loc_632A13: FStStrNoPop var_F4
  loc_632A16: FLdPrThis
  loc_632A17: VCallAd Control_ID_txtMaximo
  loc_632A1A: FStAdFunc var_8C
  loc_632A1D: FLdPr var_8C
  loc_632A20: Me.Text = from_stack_1
  loc_632A25: FFreeStr var_C0 = ""
  loc_632A2C: FFree1Ad var_8C
  loc_632A2F: FFreeVar var_9C = "": var_AC = ""
  loc_632A38: Branch loc_632A6F
  loc_632A3B: LitStr "0.00"
  loc_632A3E: ImpAdLdI4 MemVar_74BED0
  loc_632A41: ConcatStr
  loc_632A42: FStStrNoPop var_C0
  loc_632A45: FLdPrThis
  loc_632A46: VCallAd Control_ID_txtTotal
  loc_632A49: FStAdFunc var_8C
  loc_632A4C: FLdPr var_8C
  loc_632A4F: Me.Text = from_stack_1
  loc_632A54: FFree1Str var_C0
  loc_632A57: FFree1Ad var_8C
  loc_632A5A: LitStr "0.00"
  loc_632A5D: FLdPrThis
  loc_632A5E: VCallAd Control_ID_txtMaximo
  loc_632A61: FStAdFunc var_8C
  loc_632A64: FLdPr var_8C
  loc_632A67: Me.Text = from_stack_1
  loc_632A6C: FFree1Ad var_8C
  loc_632A6F: FLdRfVar var_C0
  loc_632A72: FLdPrThis
  loc_632A73: VCallAd Control_ID_txtTotal
  loc_632A76: FStAdFunc var_8C
  loc_632A79: FLdPr var_8C
  loc_632A7C:  = Me.Text
  loc_632A81: ILdRf var_C0
  loc_632A84: ImpAdCallFPR4 push Val()
  loc_632A89: CR8R8
  loc_632A8A: LitI2_Byte 0
  loc_632A8C: CR8I2
  loc_632A8D: EqR4
  loc_632A8E: FFree1Str var_C0
  loc_632A91: FFree1Ad var_8C
  loc_632A94: BranchF loc_632AAB
  loc_632A97: LitI2_Byte 0
  loc_632A99: FLdPrThis
  loc_632A9A: VCallAd Control_ID_cmdBuzon
  loc_632A9D: FStAdFunc var_8C
  loc_632AA0: FLdPr var_8C
  loc_632AA3: Me.Visible = from_stack_1b
  loc_632AA8: FFree1Ad var_8C
  loc_632AAB: ExitProcHresult
End Sub
