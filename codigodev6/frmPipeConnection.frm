VERSION 5.00
Begin VB.Form frmPipeConnection
  Caption = "CEM44"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5985
  ClientHeight = 3090
  StartUpPosition = 3 'Windows Default
  Begin VB.Timer tmrConnect
    Enabled = 0   'False
    Left = 5160
    Top = -45
  End
  Begin VB.Timer tmrRetry
    Enabled = 0   'False
    Interval = 1000
    Left = 5625
    Top = -45
  End
  Begin VB.Frame Frame1
    Left = 45
    Top = 855
    Width = 5910
    Height = 2175
    TabIndex = 4
    Begin VB.CommandButton cmdEnd
      Caption = "&Finalizar"
      Left = 1600
      Top = 1680
      Width = 1140
      Height = 375
      Visible = 0   'False
      TabIndex = 8
    End
    Begin VB.CommandButton cmdRetry
      Caption = "Restablecer"
      Left = 3105
      Top = 1680
      Width = 1140
      Height = 375
      TabIndex = 1
    End
    Begin VB.CommandButton cmdConfigure
      Caption = "Configurar"
      Left = 4590
      Top = 1710
      Width = 1140
      Height = 375
      TabIndex = 2
    End
    Begin VB.TextBox txtServer
      Left = 90
      Top = 1215
      Width = 5640
      Height = 375
      TabIndex = 0
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblState
      Caption = "Estado:"
      Left = 135
      Top = 225
      Width = 735
      Height = 195
      TabIndex = 7
    End
    Begin VB.Label lblUbic
      Caption = "Servidor CEM44:"
      Left = 135
      Top = 945
      Width = 1275
      Height = 195
      TabIndex = 6
    End
    Begin VB.Label lblMsg
      Caption = "Error de comunicación entre la consola y el servicio CEM-44."
      Left = 135
      Top = 495
      Width = 5595
      Height = 330
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Label lblAdvise
    Caption = "Con anterioridad al uso de la consola debe configurar dirección en forma UNC del servidor del CEM-44 Pump"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 90
    Width = 5910
    Height = 690
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    WordWrap = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmPipeConnection"


Private Sub txtServer_LostFocus() '5D6B34
  'Data Table: 420E38
  loc_5D6B1C: LitI2_Byte 0
  loc_5D6B1E: FLdPrThis
  loc_5D6B1F: VCallAd Control_ID_txtServer
  loc_5D6B22: FStAdFunc var_90
  loc_5D6B25: FLdPr var_90
  loc_5D6B28: Me.Enabled = from_stack_1b
  loc_5D6B2D: FFree1Ad var_90
  loc_5D6B30: ExitProcHresult
End Sub

Private Sub tmrConnect_Timer() '5C9490
  'Data Table: 420E38
  loc_5C9488: from_stack_1v = Proc_144_10_616A24()
  loc_5C948D: ExitProcHresult
End Sub

Private Sub cmdConfigure_Click() '5F2F94
  'Data Table: 420E38
  loc_5F2EF0: LitI2_Byte &HFF
  loc_5F2EF2: FLdPrThis
  loc_5F2EF3: VCallAd Control_ID_txtServer
  loc_5F2EF6: FStAdFunc var_88
  loc_5F2EF9: FLdPr var_88
  loc_5F2EFC: Me.Enabled = from_stack_1b
  loc_5F2F01: FFree1Ad var_88
  loc_5F2F04: FLdPrThis
  loc_5F2F05: VCallAd Control_ID_txtServer
  loc_5F2F08: FStAdFunc var_88
  loc_5F2F0B: FLdPr var_88
  loc_5F2F0E: Me.SetFocus
  loc_5F2F13: FFree1Ad var_88
  loc_5F2F16: LitI4 0
  loc_5F2F1B: FLdPrThis
  loc_5F2F1C: VCallAd Control_ID_txtServer
  loc_5F2F1F: FStAdFunc var_88
  loc_5F2F22: FLdPr var_88
  loc_5F2F25: Me.SelStart = from_stack_1
  loc_5F2F2A: FFree1Ad var_88
  loc_5F2F2D: FLdRfVar var_8C
  loc_5F2F30: FLdPrThis
  loc_5F2F31: VCallAd Control_ID_txtServer
  loc_5F2F34: FStAdFunc var_88
  loc_5F2F37: FLdPr var_88
  loc_5F2F3A:  = Me.Text
  loc_5F2F3F: ILdRf var_8C
  loc_5F2F42: FnLenStr
  loc_5F2F43: FLdPrThis
  loc_5F2F44: VCallAd Control_ID_txtServer
  loc_5F2F47: FStAdFunc var_90
  loc_5F2F4A: FLdPr var_90
  loc_5F2F4D: Me.SelLength = from_stack_1
  loc_5F2F52: FFree1Str var_8C
  loc_5F2F55: FFreeAd var_88 = ""
  loc_5F2F5C: LitI2_Byte 0
  loc_5F2F5E: FLdPrThis
  loc_5F2F5F: VCallAd Control_ID_tmrConnect
  loc_5F2F62: FStAdFunc var_88
  loc_5F2F65: FLdPr var_88
  loc_5F2F68: Me.Enabled = from_stack_1b
  loc_5F2F6D: FFree1Ad var_88
  loc_5F2F70: FLdPr Me
  loc_5F2F73: MemLdI2 global_72
  loc_5F2F76: BranchF loc_5F2F92
  loc_5F2F79: LitI2_Byte 0
  loc_5F2F7B: FLdPrThis
  loc_5F2F7C: VCallAd Control_ID_txtServer
  loc_5F2F7F: FStAdFunc var_88
  loc_5F2F82: FLdPr var_88
  loc_5F2F85: Me.Enabled = from_stack_1b
  loc_5F2F8A: FFree1Ad var_88
  loc_5F2F8D: Call cmdRetry_Click()
  loc_5F2F92: ExitProcHresult
End Sub

Private Sub cmdRetry_Click() '5F55A0
  'Data Table: 420E38
  loc_5F54EC: LitI2_Byte 0
  loc_5F54EE: FLdPr Me
  loc_5F54F1: MemStI2 global_68
  loc_5F54F4: LitI2_Byte 0
  loc_5F54F6: FLdPr Me
  loc_5F54F9: MemStI2 global_70
  loc_5F54FC: LitI4 0
  loc_5F5501: PopTmpLdAdStr var_90
  loc_5F5504: LitStr "AUTO_RECONNECT"
  loc_5F5507: FStStrCopy var_8C
  loc_5F550A: FLdRfVar var_8C
  loc_5F550D: ImpAdCallI2 Proc_94_8_5DD400(, )
  loc_5F5512: LitI4 0
  loc_5F5517: GtI4
  loc_5F5518: FFree1Str var_8C
  loc_5F551B: BranchF loc_5F5532
  loc_5F551E: LitI2_Byte &HFF
  loc_5F5520: FLdPrThis
  loc_5F5521: VCallAd Control_ID_tmrConnect
  loc_5F5524: FStAdFunc var_94
  loc_5F5527: FLdPr var_94
  loc_5F552A: Me.Enabled = from_stack_1b
  loc_5F552F: FFree1Ad var_94
  loc_5F5532: FLdPr Me
  loc_5F5535: MemLdStr global_56
  loc_5F5538: FLdPrThis
  loc_5F5539: VCallAd Control_ID_lblMsg
  loc_5F553C: FStAdFunc var_94
  loc_5F553F: FLdPr var_94
  loc_5F5542: Me.Caption = from_stack_1
  loc_5F5547: FFree1Ad var_94
  loc_5F554A: LitI2_Byte 0
  loc_5F554C: FLdPrThis
  loc_5F554D: VCallAd Control_ID_cmdRetry
  loc_5F5550: FStAdFunc var_94
  loc_5F5553: FLdPr var_94
  loc_5F5556: Me.Enabled = from_stack_1b
  loc_5F555B: FFree1Ad var_94
  loc_5F555E: LitI2_Byte 0
  loc_5F5560: FLdPrThis
  loc_5F5561: VCallAd Control_ID_cmdConfigure
  loc_5F5564: FStAdFunc var_94
  loc_5F5567: FLdPr var_94
  loc_5F556A: Me.Enabled = from_stack_1b
  loc_5F556F: FFree1Ad var_94
  loc_5F5572: LitI4 &H64
  loc_5F5577: FLdPrThis
  loc_5F5578: VCallAd Control_ID_tmrRetry
  loc_5F557B: FStAdFunc var_94
  loc_5F557E: FLdPr var_94
  loc_5F5581: Me.Interval = from_stack_1
  loc_5F5586: FFree1Ad var_94
  loc_5F5589: LitI2_Byte &HFF
  loc_5F558B: FLdPrThis
  loc_5F558C: VCallAd Control_ID_tmrRetry
  loc_5F558F: FStAdFunc var_94
  loc_5F5592: FLdPr var_94
  loc_5F5595: Me.Enabled = from_stack_1b
  loc_5F559A: FFree1Ad var_94
  loc_5F559D: ExitProcHresult
End Sub

Private Sub cmdEnd_Click() '5C81E4
  'Data Table: 420E38
  loc_5C81E0: End
  loc_5C81E2: ExitProcHresult
End Sub

Private Sub tmrRetry_Timer() '64EF48
  'Data Table: 420E38
  loc_64ECBC: LitI4 &H320
  loc_64ECC1: FLdPrThis
  loc_64ECC2: VCallAd Control_ID_tmrRetry
  loc_64ECC5: FStAdFunc var_90
  loc_64ECC8: FLdPr var_90
  loc_64ECCB: Me.Interval = from_stack_1
  loc_64ECD0: FFree1Ad var_90
  loc_64ECD3: FLdPr Me
  loc_64ECD6: MemLdI2 global_70
  loc_64ECD9: BranchF loc_64EDB5
  loc_64ECDC: FLdRfVar var_90
  loc_64ECDF: ImpAdLdRf MemVar_7520D4
  loc_64ECE2: NewIfNullPr Global
  loc_64ECE5:  = Global.Forms
  loc_64ECEA: FLdPr var_90
  loc_64ECED: LateMemLdVar
  loc_64ECF2: LitVarI2 var_A0, 1
  loc_64ECF7: SubVar var_C0
  loc_64ECFB: CI2Var
  loc_64ECFC: FLdRfVar var_8A
  loc_64ECFF: LitI2_Byte 0
  loc_64ED01: LitI2_Byte &HFF
  loc_64ED03: FFree1Ad var_90
  loc_64ED06: FFree1Var var_B0 = ""
  loc_64ED09: ForStepI2 var_C4
  loc_64ED0F: FLdRfVar var_8A
  loc_64ED12: CDargRef
  loc_64ED16: FLdRfVar var_90
  loc_64ED19: ImpAdLdRf MemVar_7520D4
  loc_64ED1C: NewIfNullPr Global
  loc_64ED1F:  = Global.Forms
  loc_64ED24: FLdPr var_90
  loc_64ED27: LateIdCallLdVar
  loc_64ED31: LdPrVar
  loc_64ED33: LateMemLdVar
  loc_64ED38: FLdRfVar var_C8
  loc_64ED3B: FLdPr Me
  loc_64ED3E:  = Me.Name
  loc_64ED43: FLdZeroAd var_C8
  loc_64ED46: CVarStr var_D8
  loc_64ED49: HardType
  loc_64ED4A: EqVarBool
  loc_64ED4C: FFree1Ad var_90
  loc_64ED4F: FFreeVar var_C0 = "": var_E8 = ""
  loc_64ED58: BranchF loc_64ED98
  loc_64ED5B: FLdRfVar var_8A
  loc_64ED5E: CDargRef
  loc_64ED62: FLdRfVar var_90
  loc_64ED65: ImpAdLdRf MemVar_7520D4
  loc_64ED68: NewIfNullPr Global
  loc_64ED6B:  = Global.Forms
  loc_64ED70: FLdPr var_90
  loc_64ED73: LateIdCallLdVar
  loc_64ED7D: CAdVar
  loc_64ED7F: FStAdNoPop
  loc_64ED83: ImpAdLdRf MemVar_7520D4
  loc_64ED86: NewIfNullPr Global
  loc_64ED89: Global.Unload from_stack_1
  loc_64ED8E: FFreeAd var_90 = ""
  loc_64ED95: FFree1Var var_B0 = ""
  loc_64ED98: FLdRfVar var_8A
  loc_64ED9B: NextStepI2 var_C4, loc_64ED0F
  loc_64EDA0: LitI2_Byte &HFF
  loc_64EDA2: ImpAdStI2 MemVar_74C7C8
  loc_64EDA5: ImpAdLdI2 MemVar_74C7C2
  loc_64EDA8: BranchF loc_64EDB5
  loc_64EDAB: LitI2_Byte &HFF
  loc_64EDAD: PopTmpLdAd2 var_FE
  loc_64EDB0: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_64EDB5: FLdPr Me
  loc_64EDB8: MemLdI2 global_68
  loc_64EDBB: LitI2_Byte 5
  loc_64EDBD: LtI2
  loc_64EDBE: BranchF loc_64EEC7
  loc_64EDC1: FLdRfVar var_C8
  loc_64EDC4: FLdPrThis
  loc_64EDC5: VCallAd Control_ID_txtServer
  loc_64EDC8: FStAdFunc var_90
  loc_64EDCB: FLdPr var_90
  loc_64EDCE:  = Me.Text
  loc_64EDD3: FLdRfVar var_FE
  loc_64EDD6: FLdRfVar var_88
  loc_64EDD9: FLdZeroAd var_C8
  loc_64EDDC: PopTmpLdAdStr
  loc_64EDE0: from_stack_2v = Proc_144_12_601F38(from_stack_1v)
  loc_64EDE5: FLdI2 var_FE
  loc_64EDE8: FFree1Str var_104
  loc_64EDEB: FFree1Ad var_90
  loc_64EDEE: BranchF loc_64EE14
  loc_64EDF1: FLdPr Me
  loc_64EDF4: MemLdStr global_60
  loc_64EDF7: FLdPrThis
  loc_64EDF8: VCallAd Control_ID_lblMsg
  loc_64EDFB: FStAdFunc var_90
  loc_64EDFE: FLdPr var_90
  loc_64EE01: Me.Caption = from_stack_1
  loc_64EE06: FFree1Ad var_90
  loc_64EE09: LitI2_Byte &HFF
  loc_64EE0B: FLdPr Me
  loc_64EE0E: MemStI2 global_70
  loc_64EE11: Branch loc_64EEC4
  loc_64EE14: FLdRfVar var_108
  loc_64EE17: FLdPr Me
  loc_64EE1A:  = Me.hWnd
  loc_64EE1F: FLdPrThis
  loc_64EE20: VCallAd Control_ID_txtServer
  loc_64EE23: CVarAd
  loc_64EE27: FLdRfVar var_C0
  loc_64EE2A: ImpAdCallFPR4  = Trim()
  loc_64EE2F: FLdRfVar var_C8
  loc_64EE32: FLdRfVar var_90
  loc_64EE35: ImpAdLdRf MemVar_7520D4
  loc_64EE38: NewIfNullPr Global
  loc_64EE3B:  = Global.App
  loc_64EE40: FLdPr var_90
  loc_64EE43:  = App.Path
  loc_64EE48: LitI4 0
  loc_64EE4D: ILdRf var_C8
  loc_64EE50: LitStr "\"
  loc_64EE53: ConcatStr
  loc_64EE54: FStStrNoPop var_128
  loc_64EE57: FLdRfVar var_12C
  loc_64EE5A: CStr2Ansi
  loc_64EE5B: ILdRf var_12C
  loc_64EE5E: LitVarStr var_A0, "/C net use "
  loc_64EE63: FLdRfVar var_C0
  loc_64EE66: ConcatVar var_D8
  loc_64EE6A: LitVarStr var_118, " /user:operador operador"
  loc_64EE6F: ConcatVar var_E8
  loc_64EE73: CStrVarVal var_120
  loc_64EE77: FLdRfVar var_124
  loc_64EE7A: CStr2Ansi
  loc_64EE7B: ILdRf var_124
  loc_64EE7E: LitStr "cmd"
  loc_64EE81: FLdRfVar var_11C
  loc_64EE84: CStr2Ansi
  loc_64EE85: ILdRf var_11C
  loc_64EE88: LitStr "open"
  loc_64EE8B: FLdRfVar var_104
  loc_64EE8E: CStr2Ansi
  loc_64EE8F: ILdRf var_104
  loc_64EE92: ILdRf var_108
  loc_64EE95: ImpAdCallI2 ShellExecute(, , , , , )
  loc_64EE9A: FStR4 var_130
  loc_64EE9D: SetLastSystemError
  loc_64EE9E: ILdRf var_130
  loc_64EEA1: CI2I4
  loc_64EEA2: FStI2 var_8C
  loc_64EEA5: FFreeStr var_C8 = "": var_104 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_64EEB6: FFree1Ad var_90
  loc_64EEB9: FFreeVar var_B0 = "": var_C0 = "": var_D8 = ""
  loc_64EEC4: Branch loc_64EF38
  loc_64EEC7: FLdPr Me
  loc_64EECA: MemLdStr global_52
  loc_64EECD: FLdPrThis
  loc_64EECE: VCallAd Control_ID_lblMsg
  loc_64EED1: FStAdFunc var_90
  loc_64EED4: FLdPr var_90
  loc_64EED7: Me.Caption = from_stack_1
  loc_64EEDC: FFree1Ad var_90
  loc_64EEDF: LitI2_Byte &HFF
  loc_64EEE1: FLdPrThis
  loc_64EEE2: VCallAd Control_ID_cmdRetry
  loc_64EEE5: FStAdFunc var_90
  loc_64EEE8: FLdPr var_90
  loc_64EEEB: Me.Enabled = from_stack_1b
  loc_64EEF0: FFree1Ad var_90
  loc_64EEF3: LitI2_Byte &HFF
  loc_64EEF5: FLdPrThis
  loc_64EEF6: VCallAd Control_ID_cmdConfigure
  loc_64EEF9: FStAdFunc var_90
  loc_64EEFC: FLdPr var_90
  loc_64EEFF: Me.Enabled = from_stack_1b
  loc_64EF04: FFree1Ad var_90
  loc_64EF07: FLdPr Me
  loc_64EF0A: MemLdI2 global_72
  loc_64EF0D: BranchF loc_64EF24
  loc_64EF10: LitI2_Byte &HFF
  loc_64EF12: FLdPrThis
  loc_64EF13: VCallAd Control_ID_txtServer
  loc_64EF16: FStAdFunc var_90
  loc_64EF19: FLdPr var_90
  loc_64EF1C: Me.Enabled = from_stack_1b
  loc_64EF21: FFree1Ad var_90
  loc_64EF24: LitI2_Byte 0
  loc_64EF26: FLdPrThis
  loc_64EF27: VCallAd Control_ID_tmrRetry
  loc_64EF2A: FStAdFunc var_90
  loc_64EF2D: FLdPr var_90
  loc_64EF30: Me.Enabled = from_stack_1b
  loc_64EF35: FFree1Ad var_90
  loc_64EF38: FLdPr Me
  loc_64EF3B: MemLdI2 global_68
  loc_64EF3E: LitI2_Byte 1
  loc_64EF40: AddI2
  loc_64EF41: FLdPr Me
  loc_64EF44: MemStI2 global_68
  loc_64EF47: ExitProcHresult
End Sub

Private Sub Form_Load() '5F1E44
  'Data Table: 420E38
  loc_5F1DBC: LitI2_Byte 0
  loc_5F1DBE: FLdPrThis
  loc_5F1DBF: VCallAd Control_ID_txtServer
  loc_5F1DC2: FStAdFunc var_88
  loc_5F1DC5: FLdPr var_88
  loc_5F1DC8: Me.Enabled = from_stack_1b
  loc_5F1DCD: FFree1Ad var_88
  loc_5F1DD0: ImpAdLdRf MemVar_74BF90
  loc_5F1DD3: CVarRef
  loc_5F1DD8: FLdRfVar var_A8
  loc_5F1DDB: ImpAdCallFPR4  = Trim()
  loc_5F1DE0: FLdRfVar var_A8
  loc_5F1DE3: FnLenVar var_B8
  loc_5F1DE7: LitVarStr var_C8, "\pipe\Cem44Pipe"
  loc_5F1DEC: FStVarCopyObj var_D8
  loc_5F1DEF: FLdRfVar var_D8
  loc_5F1DF2: FLdRfVar var_E8
  loc_5F1DF5: ImpAdCallFPR4  = Trim()
  loc_5F1DFA: FLdRfVar var_E8
  loc_5F1DFD: FnLenVar var_F8
  loc_5F1E01: SubVar var_108
  loc_5F1E05: CI4Var
  loc_5F1E07: ImpAdLdRf MemVar_74BF90
  loc_5F1E0A: CVarRef
  loc_5F1E0F: FLdRfVar var_128
  loc_5F1E12: ImpAdCallFPR4  = Left(, )
  loc_5F1E17: FLdRfVar var_128
  loc_5F1E1A: CStrVarVal var_12C
  loc_5F1E1E: FLdPrThis
  loc_5F1E1F: VCallAd Control_ID_txtServer
  loc_5F1E22: FStAdFunc var_88
  loc_5F1E25: FLdPr var_88
  loc_5F1E28: Me.Text = from_stack_1
  loc_5F1E2D: FFree1Str var_12C
  loc_5F1E30: FFree1Ad var_88
  loc_5F1E33: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_5F1E3E: from_stack_1v = Proc_144_11_5ED270()
  loc_5F1E43: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5DF29C
  'Data Table: 420E38
  loc_5DF250: FLdPr Me
  loc_5DF253: MemLdI2 global_70
  loc_5DF256: BranchF loc_5DF299
  loc_5DF259: FLdRfVar var_8C
  loc_5DF25C: FLdPrThis
  loc_5DF25D: VCallAd Control_ID_txtServer
  loc_5DF260: FStAdFunc var_88
  loc_5DF263: FLdPr var_88
  loc_5DF266:  = Me.Text
  loc_5DF26B: ILdRf var_8C
  loc_5DF26E: LitStr "\pipe\Cem44Pipe"
  loc_5DF271: ConcatStr
  loc_5DF272: FStStrNoPop var_90
  loc_5DF275: ImpAdLdI4 MemVar_74BF90
  loc_5DF278: NeStr
  loc_5DF27A: FFreeStr var_8C = ""
  loc_5DF281: FFree1Ad var_88
  loc_5DF284: BranchF loc_5DF299
  loc_5DF287: FLdPrThis
  loc_5DF288: VCallAd Control_ID_txtServer
  loc_5DF28B: FStAdFunc var_88
  loc_5DF28E: FLdRfVar var_88
  loc_5DF291: ImpAdCallFPR4 Proc_166_12_63739C()
  loc_5DF296: FFree1Ad var_88
  loc_5DF299: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E23AC
  'Data Table: 420E38
  loc_5E2350: LitI4 0
  loc_5E2355: PopTmpLdAdStr var_90
  loc_5E2358: LitStr "AUTO_RECONNECT"
  loc_5E235B: FStStrCopy var_8C
  loc_5E235E: FLdRfVar var_8C
  loc_5E2361: ImpAdCallI2 Proc_94_8_5DD400(, )
  loc_5E2366: FStR4 var_88
  loc_5E2369: FFree1Str var_8C
  loc_5E236C: ILdRf var_88
  loc_5E236F: LitI4 0
  loc_5E2374: EqI4
  loc_5E2375: NotI4
  loc_5E2376: BranchF loc_5E23A8
  loc_5E2379: ILdRf var_88
  loc_5E237C: LitI4 &H3E8
  loc_5E2381: MulI4
  loc_5E2382: FLdPrThis
  loc_5E2383: VCallAd Control_ID_tmrConnect
  loc_5E2386: FStAdFunc var_94
  loc_5E2389: FLdPr var_94
  loc_5E238C: Me.Interval = from_stack_1
  loc_5E2391: FFree1Ad var_94
  loc_5E2394: LitI2_Byte &HFF
  loc_5E2396: FLdPrThis
  loc_5E2397: VCallAd Control_ID_tmrConnect
  loc_5E239A: FStAdFunc var_94
  loc_5E239D: FLdPr var_94
  loc_5E23A0: Me.Enabled = from_stack_1b
  loc_5E23A5: FFree1Ad var_94
  loc_5E23A8: ExitProcHresult
End Sub

Public Sub ShowMe(Configure, MissingPipe) '62BD74
  'Data Table: 420E38
  loc_62BBFC: FDupVar
  loc_62BC02: from_stack_1v = Proc_144_13_679BF4()
  loc_62BC07: FLdPr Me
  loc_62BC0A: MemLdStr global_52
  loc_62BC0D: FLdPrThis
  loc_62BC0E: VCallAd Control_ID_lblMsg
  loc_62BC11: FStAdFunc var_9C
  loc_62BC14: FLdPr var_9C
  loc_62BC17: Me.Caption = from_stack_1
  loc_62BC1C: FFree1Ad var_9C
  loc_62BC1F: LitI2_Byte &HFF
  loc_62BC21: FStI2 var_96
  loc_62BC24: FLdRfVar var_94
  loc_62BC27: ImpAdCallI2 IsMissing()
  loc_62BC2C: BranchF loc_62BC37
  loc_62BC2F: LitI2_Byte 0
  loc_62BC31: FStI2 var_96
  loc_62BC34: Branch loc_62BC3F
  loc_62BC37: FLdRfVar var_94
  loc_62BC3A: CBoolVar
  loc_62BC3C: FStI2 var_96
  loc_62BC3F: FLdI2 Configure
  loc_62BC42: FLdPr Me
  loc_62BC45: MemStI2 global_72
  loc_62BC48: ILdRf Me
  loc_62BC4B: FStAdNoPop
  loc_62BC4F: ImpAdLdRf MemVar_7520D4
  loc_62BC52: NewIfNullPr Global
  loc_62BC55: Global.Load from_stack_1
  loc_62BC5A: FFree1Ad var_9C
  loc_62BC5D: ILdRf Me
  loc_62BC60: CastAd
  loc_62BC63: FStAdFunc var_9C
  loc_62BC66: FLdRfVar var_9C
  loc_62BC69: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_62BC6E: FFree1Ad var_9C
  loc_62BC71: FLdI2 Configure
  loc_62BC74: BranchF loc_62BD40
  loc_62BC77: LitI2_Byte &HFF
  loc_62BC79: FLdPrThis
  loc_62BC7A: VCallAd Control_ID_txtServer
  loc_62BC7D: FStAdFunc var_9C
  loc_62BC80: FLdPr var_9C
  loc_62BC83: Me.Enabled = from_stack_1b
  loc_62BC88: FFree1Ad var_9C
  loc_62BC8B: FLdPr Me
  loc_62BC8E: MemLdStr global_60
  loc_62BC91: FLdPrThis
  loc_62BC92: VCallAd Control_ID_lblMsg
  loc_62BC95: FStAdFunc var_9C
  loc_62BC98: FLdPr var_9C
  loc_62BC9B: Me.Caption = from_stack_1
  loc_62BCA0: FFree1Ad var_9C
  loc_62BCA3: FLdRfVar var_1EC
  loc_62BCA6: LitVar_Missing var_1E8
  loc_62BCA9: LitVar_Missing var_1C8
  loc_62BCAC: LitVar_Missing var_1A8
  loc_62BCAF: LitVar_Missing var_188
  loc_62BCB2: LitVar_Missing var_168
  loc_62BCB5: LitVar_Missing var_148
  loc_62BCB8: LitVar_Missing var_128
  loc_62BCBB: LitVar_Missing var_108
  loc_62BCBE: LitVar_Missing var_E8
  loc_62BCC1: LitVar_Missing var_C8
  loc_62BCC4: LitStr "Aceptar"
  loc_62BCC7: FStStrCopy var_A8
  loc_62BCCA: FLdRfVar var_A8
  loc_62BCCD: LitI4 &HA
  loc_62BCD2: PopTmpLdAdStr var_A4
  loc_62BCD5: LitI2_Byte &H50
  loc_62BCD7: PopTmpLdAd2 var_9E
  loc_62BCDA: ImpAdLdRf MemVar_74C7D0
  loc_62BCDD: NewIfNullPr clsMsg
  loc_62BCE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62BCE5: ILdRf var_1EC
  loc_62BCE8: FLdPrThis
  loc_62BCE9: VCallAd Control_ID_cmdConfigure
  loc_62BCEC: FStAdFunc var_9C
  loc_62BCEF: FLdPr var_9C
  loc_62BCF2: Me.Caption = from_stack_1
  loc_62BCF7: FFreeStr var_A8 = ""
  loc_62BCFE: FFree1Ad var_9C
  loc_62BD01: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_62BD18: LitI2_Byte &HFF
  loc_62BD1A: FLdPrThis
  loc_62BD1B: VCallAd Control_ID_cmdConfigure
  loc_62BD1E: FStAdFunc var_9C
  loc_62BD21: FLdPr var_9C
  loc_62BD24: Me.Default = from_stack_1b
  loc_62BD29: FFree1Ad var_9C
  loc_62BD2C: LitI2_Byte 0
  loc_62BD2E: FLdPrThis
  loc_62BD2F: VCallAd Control_ID_cmdRetry
  loc_62BD32: FStAdFunc var_9C
  loc_62BD35: FLdPr var_9C
  loc_62BD38: Me.Visible = from_stack_1b
  loc_62BD3D: FFree1Ad var_9C
  loc_62BD40: FLdI2 var_96
  loc_62BD43: BranchF loc_62BD5E
  loc_62BD46: FLdPr Me
  loc_62BD49: MemLdStr global_64
  loc_62BD4C: FLdPrThis
  loc_62BD4D: VCallAd Control_ID_lblMsg
  loc_62BD50: FStAdFunc var_9C
  loc_62BD53: FLdPr var_9C
  loc_62BD56: Me.Caption = from_stack_1
  loc_62BD5B: FFree1Ad var_9C
  loc_62BD5E: LitVar_Missing var_D8
  loc_62BD61: PopAdLdVar
  loc_62BD62: LitVarI4
  loc_62BD6A: PopAdLdVar
  loc_62BD6B: FLdPr Me
  loc_62BD6E: Me.Show from_stack_1, from_stack_2
  loc_62BD73: ExitProcHresult
End Sub

Private Function Proc_144_10_616A24() '616A24
  'Data Table: 420E38
  loc_616918: FLdRfVar var_94
  loc_61691B: FLdPrThis
  loc_61691C: VCallAd Control_ID_txtServer
  loc_61691F: FStAdFunc var_90
  loc_616922: FLdPr var_90
  loc_616925:  = Me.Text
  loc_61692A: FLdRfVar var_9A
  loc_61692D: FLdRfVar var_8C
  loc_616930: FLdZeroAd var_94
  loc_616933: PopTmpLdAdStr
  loc_616937: from_stack_2v = Proc_144_12_601F38(from_stack_1v)
  loc_61693C: FLdI2 var_9A
  loc_61693F: FFree1Str var_98
  loc_616942: FFree1Ad var_90
  loc_616945: BranchF loc_616A21
  loc_616948: FLdRfVar var_90
  loc_61694B: ImpAdLdRf MemVar_7520D4
  loc_61694E: NewIfNullPr Global
  loc_616951:  = Global.Forms
  loc_616956: FLdPr var_90
  loc_616959: LateMemLdVar
  loc_61695E: LitVarI2 var_AC, 1
  loc_616963: SubVar var_CC
  loc_616967: CI2Var
  loc_616968: FLdRfVar var_86
  loc_61696B: LitI2_Byte 0
  loc_61696D: LitI2_Byte &HFF
  loc_61696F: FFree1Ad var_90
  loc_616972: FFree1Var var_BC = ""
  loc_616975: ForStepI2 var_D0
  loc_61697B: FLdRfVar var_86
  loc_61697E: CDargRef
  loc_616982: FLdRfVar var_90
  loc_616985: ImpAdLdRf MemVar_7520D4
  loc_616988: NewIfNullPr Global
  loc_61698B:  = Global.Forms
  loc_616990: FLdPr var_90
  loc_616993: LateIdCallLdVar
  loc_61699D: LdPrVar
  loc_61699F: LateMemLdVar
  loc_6169A4: FLdRfVar var_94
  loc_6169A7: FLdPr Me
  loc_6169AA:  = Me.Name
  loc_6169AF: FLdZeroAd var_94
  loc_6169B2: CVarStr var_E0
  loc_6169B5: HardType
  loc_6169B6: EqVarBool
  loc_6169B8: FFree1Ad var_90
  loc_6169BB: FFreeVar var_CC = "": var_F0 = ""
  loc_6169C4: BranchF loc_616A04
  loc_6169C7: FLdRfVar var_86
  loc_6169CA: CDargRef
  loc_6169CE: FLdRfVar var_90
  loc_6169D1: ImpAdLdRf MemVar_7520D4
  loc_6169D4: NewIfNullPr Global
  loc_6169D7:  = Global.Forms
  loc_6169DC: FLdPr var_90
  loc_6169DF: LateIdCallLdVar
  loc_6169E9: CAdVar
  loc_6169EB: FStAdNoPop
  loc_6169EF: ImpAdLdRf MemVar_7520D4
  loc_6169F2: NewIfNullPr Global
  loc_6169F5: Global.Unload from_stack_1
  loc_6169FA: FFreeAd var_90 = ""
  loc_616A01: FFree1Var var_BC = ""
  loc_616A04: FLdRfVar var_86
  loc_616A07: NextStepI2 var_D0, loc_61697B
  loc_616A0C: LitI2_Byte &HFF
  loc_616A0E: ImpAdStI2 MemVar_74C7C8
  loc_616A11: ImpAdLdI2 MemVar_74C7C2
  loc_616A14: BranchF loc_616A21
  loc_616A17: LitI2_Byte &HFF
  loc_616A19: PopTmpLdAd2 var_9A
  loc_616A1C: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_616A21: ExitProcHresult
  loc_616A22: FStAdFunc var_4000
End Function

Private Function Proc_144_11_5ED270() '5ED270
  'Data Table: 420E38
  loc_5ED1FC: LitVarStr var_94, "WINDIR"
  loc_5ED201: FStVarCopyObj var_A4
  loc_5ED204: FLdRfVar var_A4
  loc_5ED207: FLdRfVar var_B4
  loc_5ED20A: ImpAdCallFPR4  = Environ()
  loc_5ED20F: FLdRfVar var_B4
  loc_5ED212: LitVarStr var_C4, "\cem44.ini"
  loc_5ED217: ConcatVar var_D4
  loc_5ED21B: CStrVarTmp
  loc_5ED21C: PopTmpLdAdStr
  loc_5ED220: LitStr "CERRAR_CONSOLA"
  loc_5ED223: FStStrCopy var_DC
  loc_5ED226: FLdRfVar var_DC
  loc_5ED229: LitStr "GENERAL"
  loc_5ED22C: FStStrCopy var_D8
  loc_5ED22F: FLdRfVar var_D8
  loc_5ED232: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5ED237: FStStrNoPop var_E4
  loc_5ED23A: LitStr "1"
  loc_5ED23D: EqStr
  loc_5ED23F: FFreeStr var_D8 = "": var_DC = "": var_E0 = ""
  loc_5ED24A: FFreeVar var_A4 = "": var_B4 = ""
  loc_5ED253: BranchF loc_5ED26C
  loc_5ED256: LitI2_Byte &HFF
  loc_5ED258: FLdPr Me
  loc_5ED25B: VCallAd Control_ID_cmdEnd
  loc_5ED25E: FStAdFunc var_E8
  loc_5ED261: FLdPr var_E8
  loc_5ED264: Me.Visible = from_stack_1b
  loc_5ED269: FFree1Ad var_E8
  loc_5ED26C: ExitProcHresult
End Function

Private Function Proc_144_12_601F38(arg_C) '601F38
  'Data Table: 420E38
  loc_601E78: LitI4 3
  loc_601E7D: ImpAdCallI2 Chr$()
  loc_601E82: FStStrNoPop var_E8
  loc_601E85: LitStr "000"
  loc_601E88: ConcatStr
  loc_601E89: FStStr var_A0
  loc_601E8C: FFree1Str var_E8
  loc_601E8F: LitI4 &H22
  loc_601E94: FLdRfVar var_F8
  loc_601E97: ImpAdCallFPR4  = Space()
  loc_601E9C: FLdRfVar var_F8
  loc_601E9F: CStrVarTmp
  loc_601EA0: IStStr
  loc_601EA4: FFree1Var var_F8 = ""
  loc_601EA7: LitI2 1000
  loc_601EAA: LitI4 &H22
  loc_601EAF: FLdRfVar var_E4
  loc_601EB2: LdFixedStr
  loc_601EB5: FStStrNoPop var_104
  loc_601EB8: FLdRfVar var_108
  loc_601EBB: CStr2Ansi
  loc_601EBC: ILdRf var_108
  loc_601EBF: ILdRf var_A0
  loc_601EC2: FLdRfVar var_100
  loc_601EC5: CStr2Ansi
  loc_601EC6: ILdRf var_100
  loc_601EC9: ILdI4 arg_C
  loc_601ECC: LitStr "\pipe\Cem44Pipe"
  loc_601ECF: ConcatStr
  loc_601ED0: FStStrNoPop var_E8
  loc_601ED3: FLdRfVar var_FC
  loc_601ED6: CStr2Ansi
  loc_601ED7: ILdRf var_FC
  loc_601EDA: ImpAdCallI2 ()
  loc_601EDF: FStI2 var_10E
  loc_601EE2: SetLastSystemError
  loc_601EE3: ILdRf var_100
  loc_601EE6: FLdRfVar var_A0
  loc_601EE9: CStr2Uni
  loc_601EEB: ILdRf var_108
  loc_601EEE: FLdRfVar var_10C
  loc_601EF1: CStr2Uni
  loc_601EF3: ILdRf var_10C
  loc_601EF6: FLdRfVar var_E4
  loc_601EF9: StFixedStr
  loc_601EFC: FLdI2 var_10E
  loc_601EFF: CVarI2 var_120
  loc_601F02: FStVar var_98
  loc_601F06: FFreeStr var_E8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_601F15: FLdRfVar var_E4
  loc_601F18: LdFixedStr
  loc_601F1B: IStStr
  loc_601F1F: FLdRfVar var_98
  loc_601F22: LitVarI2 var_120, 0
  loc_601F27: HardType
  loc_601F28: EqVar var_F8
  loc_601F2C: CBoolVar
  loc_601F2E: FStI2 var_86
  loc_601F31: ExitProcCbHresult
End Function

Private Function Proc_144_13_679BF4() '679BF4
  'Data Table: 420E38
  loc_679778: LitI2_Byte 0
  loc_67977A: FLdPrThis
  loc_67977B: VCallAd Control_ID_cmdConfigure
  loc_67977E: FStAdFunc var_88
  loc_679781: FLdPr var_88
  loc_679784: Me.Default = from_stack_1b
  loc_679789: FFree1Ad var_88
  loc_67978C: FLdRfVar var_1D8
  loc_67978F: LitVar_Missing var_1D4
  loc_679792: LitVar_Missing var_1B4
  loc_679795: LitVar_Missing var_194
  loc_679798: LitVar_Missing var_174
  loc_67979B: LitVar_Missing var_154
  loc_67979E: LitVar_Missing var_134
  loc_6797A1: LitVar_Missing var_114
  loc_6797A4: LitVar_Missing var_F4
  loc_6797A7: LitVar_Missing var_D4
  loc_6797AA: LitVar_Missing var_B4
  loc_6797AD: LitStr "Con anterioridad al uso de la consola debe configurar dirección en forma UNC del servidor del CEM-44 Pump"
  loc_6797B0: FStStrCopy var_94
  loc_6797B3: FLdRfVar var_94
  loc_6797B6: LitI4 1
  loc_6797BB: PopTmpLdAdStr var_90
  loc_6797BE: LitI2_Byte &H50
  loc_6797C0: PopTmpLdAd2 var_8A
  loc_6797C3: ImpAdLdRf MemVar_74C7D0
  loc_6797C6: NewIfNullPr clsMsg
  loc_6797C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6797CE: ILdRf var_1D8
  loc_6797D1: FLdPrThis
  loc_6797D2: VCallAd Control_ID_lblAdvise
  loc_6797D5: FStAdFunc var_88
  loc_6797D8: FLdPr var_88
  loc_6797DB: Me.Caption = from_stack_1
  loc_6797E0: FFreeStr var_94 = ""
  loc_6797E7: FFree1Ad var_88
  loc_6797EA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679801: FLdRfVar var_1D8
  loc_679804: LitVar_Missing var_1D4
  loc_679807: LitVar_Missing var_1B4
  loc_67980A: LitVar_Missing var_194
  loc_67980D: LitVar_Missing var_174
  loc_679810: LitVar_Missing var_154
  loc_679813: LitVar_Missing var_134
  loc_679816: LitVar_Missing var_114
  loc_679819: LitVar_Missing var_F4
  loc_67981C: LitVar_Missing var_D4
  loc_67981F: LitVar_Missing var_B4
  loc_679822: LitStr "Estado:"
  loc_679825: FStStrCopy var_94
  loc_679828: FLdRfVar var_94
  loc_67982B: LitI4 2
  loc_679830: PopTmpLdAdStr var_90
  loc_679833: LitI2_Byte &H50
  loc_679835: PopTmpLdAd2 var_8A
  loc_679838: ImpAdLdRf MemVar_74C7D0
  loc_67983B: NewIfNullPr clsMsg
  loc_67983E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679843: ILdRf var_1D8
  loc_679846: FLdPrThis
  loc_679847: VCallAd Control_ID_lblState
  loc_67984A: FStAdFunc var_88
  loc_67984D: FLdPr var_88
  loc_679850: Me.Caption = from_stack_1
  loc_679855: FFreeStr var_94 = ""
  loc_67985C: FFree1Ad var_88
  loc_67985F: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679876: FLdRfVar var_1D8
  loc_679879: LitVar_Missing var_1D4
  loc_67987C: LitVar_Missing var_1B4
  loc_67987F: LitVar_Missing var_194
  loc_679882: LitVar_Missing var_174
  loc_679885: LitVar_Missing var_154
  loc_679888: LitVar_Missing var_134
  loc_67988B: LitVar_Missing var_114
  loc_67988E: LitVar_Missing var_F4
  loc_679891: LitVar_Missing var_D4
  loc_679894: LitVar_Missing var_B4
  loc_679897: LitStr "Servidor CEM44:"
  loc_67989A: FStStrCopy var_94
  loc_67989D: FLdRfVar var_94
  loc_6798A0: LitI4 3
  loc_6798A5: PopTmpLdAdStr var_90
  loc_6798A8: LitI2_Byte &H50
  loc_6798AA: PopTmpLdAd2 var_8A
  loc_6798AD: ImpAdLdRf MemVar_74C7D0
  loc_6798B0: NewIfNullPr clsMsg
  loc_6798B3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6798B8: ILdRf var_1D8
  loc_6798BB: FLdPrThis
  loc_6798BC: VCallAd Control_ID_lblUbic
  loc_6798BF: FStAdFunc var_88
  loc_6798C2: FLdPr var_88
  loc_6798C5: Me.Caption = from_stack_1
  loc_6798CA: FFreeStr var_94 = ""
  loc_6798D1: FFree1Ad var_88
  loc_6798D4: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6798EB: FLdRfVar var_1D8
  loc_6798EE: LitVar_Missing var_1D4
  loc_6798F1: LitVar_Missing var_1B4
  loc_6798F4: LitVar_Missing var_194
  loc_6798F7: LitVar_Missing var_174
  loc_6798FA: LitVar_Missing var_154
  loc_6798FD: LitVar_Missing var_134
  loc_679900: LitVar_Missing var_114
  loc_679903: LitVar_Missing var_F4
  loc_679906: LitVar_Missing var_D4
  loc_679909: LitVar_Missing var_B4
  loc_67990C: LitStr "Error de comunicación entre la consola y el servicio CEM-44."
  loc_67990F: FStStrCopy var_94
  loc_679912: FLdRfVar var_94
  loc_679915: LitI4 4
  loc_67991A: PopTmpLdAdStr var_90
  loc_67991D: LitI2_Byte &H50
  loc_67991F: PopTmpLdAd2 var_8A
  loc_679922: ImpAdLdRf MemVar_74C7D0
  loc_679925: NewIfNullPr clsMsg
  loc_679928: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67992D: ILdRf var_1D8
  loc_679930: FLdPr Me
  loc_679933: MemStStrCopy
  loc_679937: FFreeStr var_94 = ""
  loc_67993E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679955: FLdRfVar var_1D8
  loc_679958: LitVar_Missing var_1D4
  loc_67995B: LitVar_Missing var_1B4
  loc_67995E: LitVar_Missing var_194
  loc_679961: LitVar_Missing var_174
  loc_679964: LitVar_Missing var_154
  loc_679967: LitVar_Missing var_134
  loc_67996A: LitVar_Missing var_114
  loc_67996D: LitVar_Missing var_F4
  loc_679970: LitVar_Missing var_D4
  loc_679973: LitVar_Missing var_B4
  loc_679976: LitStr "Reconectando con servicio..."
  loc_679979: FStStrCopy var_94
  loc_67997C: FLdRfVar var_94
  loc_67997F: LitI4 5
  loc_679984: PopTmpLdAdStr var_90
  loc_679987: LitI2_Byte &H50
  loc_679989: PopTmpLdAd2 var_8A
  loc_67998C: ImpAdLdRf MemVar_74C7D0
  loc_67998F: NewIfNullPr clsMsg
  loc_679992: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679997: ILdRf var_1D8
  loc_67999A: FLdPr Me
  loc_67999D: MemStStrCopy
  loc_6799A1: FFreeStr var_94 = ""
  loc_6799A8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6799BF: FLdRfVar var_1D8
  loc_6799C2: LitVar_Missing var_1D4
  loc_6799C5: LitVar_Missing var_1B4
  loc_6799C8: LitVar_Missing var_194
  loc_6799CB: LitVar_Missing var_174
  loc_6799CE: LitVar_Missing var_154
  loc_6799D1: LitVar_Missing var_134
  loc_6799D4: LitVar_Missing var_114
  loc_6799D7: LitVar_Missing var_F4
  loc_6799DA: LitVar_Missing var_D4
  loc_6799DD: LitVar_Missing var_B4
  loc_6799E0: LitStr "Comunicación establecida Ok"
  loc_6799E3: FStStrCopy var_94
  loc_6799E6: FLdRfVar var_94
  loc_6799E9: LitI4 6
  loc_6799EE: PopTmpLdAdStr var_90
  loc_6799F1: LitI2_Byte &H50
  loc_6799F3: PopTmpLdAd2 var_8A
  loc_6799F6: ImpAdLdRf MemVar_74C7D0
  loc_6799F9: NewIfNullPr clsMsg
  loc_6799FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679A01: ILdRf var_1D8
  loc_679A04: FLdPr Me
  loc_679A07: MemStStrCopy
  loc_679A0B: FFreeStr var_94 = ""
  loc_679A12: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679A29: FLdRfVar var_1D8
  loc_679A2C: LitVar_Missing var_1D4
  loc_679A2F: LitVar_Missing var_1B4
  loc_679A32: LitVar_Missing var_194
  loc_679A35: LitVar_Missing var_174
  loc_679A38: LitVar_Missing var_154
  loc_679A3B: LitVar_Missing var_134
  loc_679A3E: LitVar_Missing var_114
  loc_679A41: LitVar_Missing var_F4
  loc_679A44: LitVar_Missing var_D4
  loc_679A47: LitVar_Missing var_B4
  loc_679A4A: LitStr "No esta configurada la consola"
  loc_679A4D: FStStrCopy var_94
  loc_679A50: FLdRfVar var_94
  loc_679A53: LitI4 7
  loc_679A58: PopTmpLdAdStr var_90
  loc_679A5B: LitI2_Byte &H50
  loc_679A5D: PopTmpLdAd2 var_8A
  loc_679A60: ImpAdLdRf MemVar_74C7D0
  loc_679A63: NewIfNullPr clsMsg
  loc_679A66: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679A6B: ILdRf var_1D8
  loc_679A6E: FLdPr Me
  loc_679A71: MemStStrCopy
  loc_679A75: FFreeStr var_94 = ""
  loc_679A7C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679A93: FLdRfVar var_1D8
  loc_679A96: LitVar_Missing var_1D4
  loc_679A99: LitVar_Missing var_1B4
  loc_679A9C: LitVar_Missing var_194
  loc_679A9F: LitVar_Missing var_174
  loc_679AA2: LitVar_Missing var_154
  loc_679AA5: LitVar_Missing var_134
  loc_679AA8: LitVar_Missing var_114
  loc_679AAB: LitVar_Missing var_F4
  loc_679AAE: LitVar_Missing var_D4
  loc_679AB1: LitVar_Missing var_B4
  loc_679AB4: LitStr "Restablecer"
  loc_679AB7: FStStrCopy var_94
  loc_679ABA: FLdRfVar var_94
  loc_679ABD: LitI4 8
  loc_679AC2: PopTmpLdAdStr var_90
  loc_679AC5: LitI2_Byte &H50
  loc_679AC7: PopTmpLdAd2 var_8A
  loc_679ACA: ImpAdLdRf MemVar_74C7D0
  loc_679ACD: NewIfNullPr clsMsg
  loc_679AD0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679AD5: ILdRf var_1D8
  loc_679AD8: FLdPrThis
  loc_679AD9: VCallAd Control_ID_cmdRetry
  loc_679ADC: FStAdFunc var_88
  loc_679ADF: FLdPr var_88
  loc_679AE2: Me.Caption = from_stack_1
  loc_679AE7: FFreeStr var_94 = ""
  loc_679AEE: FFree1Ad var_88
  loc_679AF1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679B08: FLdRfVar var_1D8
  loc_679B0B: LitVar_Missing var_1D4
  loc_679B0E: LitVar_Missing var_1B4
  loc_679B11: LitVar_Missing var_194
  loc_679B14: LitVar_Missing var_174
  loc_679B17: LitVar_Missing var_154
  loc_679B1A: LitVar_Missing var_134
  loc_679B1D: LitVar_Missing var_114
  loc_679B20: LitVar_Missing var_F4
  loc_679B23: LitVar_Missing var_D4
  loc_679B26: LitVar_Missing var_B4
  loc_679B29: LitStr "Configurar"
  loc_679B2C: FStStrCopy var_94
  loc_679B2F: FLdRfVar var_94
  loc_679B32: LitI4 9
  loc_679B37: PopTmpLdAdStr var_90
  loc_679B3A: LitI2_Byte &H50
  loc_679B3C: PopTmpLdAd2 var_8A
  loc_679B3F: ImpAdLdRf MemVar_74C7D0
  loc_679B42: NewIfNullPr clsMsg
  loc_679B45: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679B4A: ILdRf var_1D8
  loc_679B4D: FLdPrThis
  loc_679B4E: VCallAd Control_ID_cmdConfigure
  loc_679B51: FStAdFunc var_88
  loc_679B54: FLdPr var_88
  loc_679B57: Me.Caption = from_stack_1
  loc_679B5C: FFreeStr var_94 = ""
  loc_679B63: FFree1Ad var_88
  loc_679B66: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679B7D: FLdRfVar var_1D8
  loc_679B80: LitVar_Missing var_1D4
  loc_679B83: LitVar_Missing var_1B4
  loc_679B86: LitVar_Missing var_194
  loc_679B89: LitVar_Missing var_174
  loc_679B8C: LitVar_Missing var_154
  loc_679B8F: LitVar_Missing var_134
  loc_679B92: LitVar_Missing var_114
  loc_679B95: LitVar_Missing var_F4
  loc_679B98: LitVar_Missing var_D4
  loc_679B9B: LitVar_Missing var_B4
  loc_679B9E: LitStr "&Finalizar"
  loc_679BA1: FStStrCopy var_94
  loc_679BA4: FLdRfVar var_94
  loc_679BA7: LitI4 &HB
  loc_679BAC: PopTmpLdAdStr var_90
  loc_679BAF: LitI2_Byte &H50
  loc_679BB1: PopTmpLdAd2 var_8A
  loc_679BB4: ImpAdLdRf MemVar_74C7D0
  loc_679BB7: NewIfNullPr clsMsg
  loc_679BBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_679BBF: ILdRf var_1D8
  loc_679BC2: FLdPrThis
  loc_679BC3: VCallAd Control_ID_cmdEnd
  loc_679BC6: FStAdFunc var_88
  loc_679BC9: FLdPr var_88
  loc_679BCC: Me.Caption = from_stack_1
  loc_679BD1: FFreeStr var_94 = ""
  loc_679BD8: FFree1Ad var_88
  loc_679BDB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_679BF2: ExitProcHresult
End Function
