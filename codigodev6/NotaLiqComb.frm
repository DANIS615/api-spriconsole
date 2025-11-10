VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form NotaLiqComb
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 11910
  ClientHeight = 8775
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 10080
    Top = 1680
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 7080
    Top = 7920
    Width = 2175
    Height = 735
    TabIndex = 10
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
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 120
    Width = 1545
    Height = 780
    TabIndex = 9
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9600
    Top = 120
    Width = 2175
    Height = 510
    TabIndex = 8
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 9480
    Top = 7920
    Width = 2175
    Height = 735
    TabIndex = 1
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
  Begin MSFlexGridLib.MSFlexGrid gLista
    Left = 120
    Top = 3000
    Width = 11655
    Height = 4575
    TabIndex = 2
    OleObjectBlob = "NotaLiqComb.frx":0000
  End
  Begin VB.Label Label3
    Caption = "Razón Social:"
    Left = 2520
    Top = 1560
    Width = 1935
    Height = 375
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lRazonSocial
    Caption = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    Left = 4560
    Top = 1560
    Width = 5295
    Height = 375
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lFecha
    Caption = "DD/MM/YYYY"
    Left = 120
    Top = 1080
    Width = 1935
    Height = 375
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10560
    Top = 1080
    Width = 1215
    Height = 375
    TabIndex = 4
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lNota
    Caption = "Por la venta efectuada por vuestra cuenta y orden el período xxxxxxxxxx de aaaa"
    Left = 120
    Top = 2400
    Width = 11655
    Height = 375
    TabIndex = 3
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Nota de Liquidación de Combustible"
    Left = 2400
    Top = 240
    Width = 7215
    Height = 735
    TabIndex = 0
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

Attribute VB_Name = "NotaLiqComb"

Public PeriodoElegido As String
Public NroPreImpreso As String


Private Sub Form_Load() '5E5170
  'Data Table: 435BC8
  loc_5E50FC: LitI2_Byte 0
  loc_5E50FE: CR8I2
  loc_5E50FF: PopFPR4
  loc_5E5100: FLdPr Me
  loc_5E5103: Me.Top = from_stack_1s
  loc_5E5108: LitI2_Byte 0
  loc_5E510A: CR8I2
  loc_5E510B: PopFPR4
  loc_5E510C: FLdPr Me
  loc_5E510F: Me.Left = from_stack_1s
  loc_5E5114: FLdRfVar var_8C
  loc_5E5117: FLdRfVar var_88
  loc_5E511A: ImpAdLdRf MemVar_7520D4
  loc_5E511D: NewIfNullPr Global
  loc_5E5120:  = Global.Screen
  loc_5E5125: FLdPr var_88
  loc_5E5128:  = Screen.TwipsPerPixelX
  loc_5E512D: FLdFPR4 var_8C
  loc_5E5130: LitI2 800
  loc_5E5133: CR8I2
  loc_5E5134: MulR8
  loc_5E5135: PopFPR4
  loc_5E5136: FLdPr Me
  loc_5E5139: Me.Width = from_stack_1s
  loc_5E513E: FFree1Ad var_88
  loc_5E5141: FLdRfVar var_8C
  loc_5E5144: FLdRfVar var_88
  loc_5E5147: ImpAdLdRf MemVar_7520D4
  loc_5E514A: NewIfNullPr Global
  loc_5E514D:  = Global.Screen
  loc_5E5152: FLdPr var_88
  loc_5E5155:  = Screen.TwipsPerPixelY
  loc_5E515A: FLdFPR4 var_8C
  loc_5E515D: LitI2 600
  loc_5E5160: CR8I2
  loc_5E5161: MulR8
  loc_5E5162: PopFPR4
  loc_5E5163: FLdPr Me
  loc_5E5166: Me.Height = from_stack_1s
  loc_5E516B: FFree1Ad var_88
  loc_5E516E: ExitProcHresult
  loc_5E516F: CI4Str
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D4C74
  'Data Table: 435BC8
  loc_5D4C54: LitI2_Byte 0
  loc_5D4C56: FLdPr Me
  loc_5D4C59: MemStI2 global_100
  loc_5D4C5C: LitI2_Byte 0
  loc_5D4C5E: FLdPrThis
  loc_5D4C5F: VCallAd Control_ID_Reloj
  loc_5D4C62: FStAdFunc var_88
  loc_5D4C65: FLdPr var_88
  loc_5D4C68: Me.Enabled = from_stack_1b
  loc_5D4C6D: FFree1Ad var_88
  loc_5D4C70: ExitProcHresult
End Sub

Private Sub Form_Activate() '71EDCC
  'Data Table: 435BC8
  loc_71CDC4: LitI2_Byte 1
  loc_71CDC6: FLdRfVar var_94
  loc_71CDC9: LitI2_Byte &HA
  loc_71CDCB: ForI2 var_B4
  loc_71CDD1: LitStr vbNullString
  loc_71CDD4: FLdI2 var_94
  loc_71CDD7: CI4UI1
  loc_71CDD8: FLdPr Me
  loc_71CDDB: MemLdRfVar from_stack_1.global_104
  loc_71CDDE: Ary1StStrCopy
  loc_71CDDF: LitStr vbNullString
  loc_71CDE2: FLdI2 var_94
  loc_71CDE5: CI4UI1
  loc_71CDE6: FLdPr Me
  loc_71CDE9: MemLdRfVar from_stack_1.global_128
  loc_71CDEC: Ary1StStrCopy
  loc_71CDED: FLdRfVar var_94
  loc_71CDF0: NextI2 var_B4, loc_71CDD1
  loc_71CDF5: FLdPr Me
  loc_71CDF8: MemLdI2 global_100
  loc_71CDFB: BranchF loc_71CDFF
  loc_71CDFE: ExitProcHresult
  loc_71CDFF: LitI2_Byte &HFF
  loc_71CE01: FLdPr Me
  loc_71CE04: MemStI2 global_100
  loc_71CE07: LitI2_Byte &HFF
  loc_71CE09: FLdPrThis
  loc_71CE0A: VCallAd Control_ID_Reloj
  loc_71CE0D: FStAdFunc var_B8
  loc_71CE10: FLdPr var_B8
  loc_71CE13: Me.Enabled = from_stack_1b
  loc_71CE18: FFree1Ad var_B8
  loc_71CE1B: FLdPrThis
  loc_71CE1C: VCallAd Control_ID_Picture1
  loc_71CE1F: FStAdFunc var_C8
  loc_71CE22: FLdRfVar var_BC
  loc_71CE25: FLdRfVar var_B8
  loc_71CE28: ImpAdLdRf MemVar_7520D4
  loc_71CE2B: NewIfNullPr Global
  loc_71CE2E:  = Global.App
  loc_71CE33: FLdPr var_B8
  loc_71CE36:  = App.Path
  loc_71CE3B: ILdRf var_BC
  loc_71CE3E: LitStr "\Logo_Compania.bmp"
  loc_71CE41: ConcatStr
  loc_71CE42: FStStrNoPop var_C4
  loc_71CE45: FLdZeroAd var_C8
  loc_71CE48: FStAdFunc var_C0
  loc_71CE4B: FLdRfVar var_C0
  loc_71CE4E: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_71CE53: FFreeStr var_BC = ""
  loc_71CE5A: FFreeAd var_B8 = "": var_C0 = ""
  loc_71CE63: LitI2_Byte 0
  loc_71CE65: FLdPrThis
  loc_71CE66: VCallAd Control_ID_Picture2
  loc_71CE69: FStAdFunc var_B8
  loc_71CE6C: FLdPr var_B8
  loc_71CE6F: Me.Visible = from_stack_1b
  loc_71CE74: FFree1Ad var_B8
  loc_71CE77: FLdRfVar var_D8
  loc_71CE7A: ImpAdCallFPR4  = Date
  loc_71CE7F: LitI4 1
  loc_71CE84: LitI4 1
  loc_71CE89: LitVarStr var_E8, "dd/mm/yyyy"
  loc_71CE8E: FStVarCopyObj var_F8
  loc_71CE91: FLdRfVar var_F8
  loc_71CE94: FLdRfVar var_D8
  loc_71CE97: ImpAdCallI2 Format$(, )
  loc_71CE9C: FStStrNoPop var_BC
  loc_71CE9F: FLdPrThis
  loc_71CEA0: VCallAd Control_ID_lFecha
  loc_71CEA3: FStAdFunc var_B8
  loc_71CEA6: FLdPr var_B8
  loc_71CEA9: Me.Caption = from_stack_1
  loc_71CEAE: FFree1Str var_BC
  loc_71CEB1: FFree1Ad var_B8
  loc_71CEB4: FFreeVar var_D8 = ""
  loc_71CEBB: FLdRfVar var_D8
  loc_71CEBE: ImpAdCallFPR4  = Time
  loc_71CEC3: LitI4 1
  loc_71CEC8: LitI4 1
  loc_71CECD: LitVarStr var_E8, "hh:mm"
  loc_71CED2: FStVarCopyObj var_F8
  loc_71CED5: FLdRfVar var_F8
  loc_71CED8: FLdRfVar var_D8
  loc_71CEDB: ImpAdCallI2 Format$(, )
  loc_71CEE0: FStStrNoPop var_BC
  loc_71CEE3: FLdPrThis
  loc_71CEE4: VCallAd Control_ID_lHora
  loc_71CEE7: FStAdFunc var_B8
  loc_71CEEA: FLdPr var_B8
  loc_71CEED: Me.Caption = from_stack_1
  loc_71CEF2: FFree1Str var_BC
  loc_71CEF5: FFree1Ad var_B8
  loc_71CEF8: FFreeVar var_D8 = ""
  loc_71CEFF: LitI2_Byte 0
  loc_71CF01: PopTmpLdAd2 var_FA
  loc_71CF04: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_71CF09: FLdRfVar var_FA
  loc_71CF0C: FLdRfVar var_88
  loc_71CF0F: FLdRfVar var_B8
  loc_71CF12: ImpAdLdRf MemVar_74C760
  loc_71CF15: NewIfNullPr Formx
  loc_71CF18: from_stack_1v = Formx.global_4589716Get()
  loc_71CF1D: FLdPr var_B8
  loc_71CF20:  = Formx.Picture
  loc_71CF25: FLdI2 var_FA
  loc_71CF28: NotI4
  loc_71CF29: FFree1Ad var_B8
  loc_71CF2C: BranchF loc_71CF5B
  loc_71CF2F: FLdRfVar var_D8
  loc_71CF32: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_71CF37: FLdRfVar var_D8
  loc_71CF3A: CBoolVarNull
  loc_71CF3C: FFree1Var var_D8 = ""
  loc_71CF3F: BranchF loc_71CF58
  loc_71CF42: ILdRf Me
  loc_71CF45: FStAdNoPop
  loc_71CF49: ImpAdLdRf MemVar_7520D4
  loc_71CF4C: NewIfNullPr Global
  loc_71CF4F: Global.Unload from_stack_1
  loc_71CF54: FFree1Ad var_B8
  loc_71CF57: ExitProcHresult
  loc_71CF58: Branch loc_71CF09
  loc_71CF5B: LitVarI2 var_D8, 6
  loc_71CF60: LitI4 1
  loc_71CF65: ILdRf var_88
  loc_71CF68: ImpAdCallI2 Mid$(, , )
  loc_71CF6D: FStStrNoPop var_BC
  loc_71CF70: ImpAdCallFPR4 push Val()
  loc_71CF75: FStFPR8 var_134
  loc_71CF78: LitI4 1
  loc_71CF7D: LitI4 1
  loc_71CF82: LitVarStr var_11C, "00000"
  loc_71CF87: FStVarCopyObj var_12C
  loc_71CF8A: FLdRfVar var_12C
  loc_71CF8D: FLdFPR8 var_134
  loc_71CF90: CVarR8
  loc_71CF94: ImpAdCallI2 Format$(, )
  loc_71CF99: FStStrNoPop var_C4
  loc_71CF9C: FLdPr Me
  loc_71CF9F: MemStStrCopy
  loc_71CFA3: FFreeStr var_BC = ""
  loc_71CFAA: FFreeVar var_D8 = "": var_F8 = ""
  loc_71CFB3: LitVarI2 var_D8, 30
  loc_71CFB8: LitI4 7
  loc_71CFBD: ILdRf var_88
  loc_71CFC0: ImpAdCallI2 Mid$(, , )
  loc_71CFC5: CVarStr var_F8
  loc_71CFC8: FLdRfVar var_12C
  loc_71CFCB: ImpAdCallFPR4  = Trim()
  loc_71CFD0: FLdRfVar var_12C
  loc_71CFD3: CStrVarVal var_BC
  loc_71CFD7: FLdPrThis
  loc_71CFD8: VCallAd Control_ID_lRazonSocial
  loc_71CFDB: FStAdFunc var_B8
  loc_71CFDE: FLdPr var_B8
  loc_71CFE1: Me.Caption = from_stack_1
  loc_71CFE6: FFree1Str var_BC
  loc_71CFE9: FFree1Ad var_B8
  loc_71CFEC: FFreeVar var_D8 = "": var_F8 = ""
  loc_71CFF5: FLdRfVar var_D8
  loc_71CFF8: FLdPr Me
  loc_71CFFB: MemLdRfVar from_stack_1.global_80
  loc_71CFFE: FLdPr Me
  loc_71D001: MemLdRfVar from_stack_1.PeriodoElegido
  loc_71D004: LitStr "N"
  loc_71D007: FStStrCopy var_C4
  loc_71D00A: FLdRfVar var_C4
  loc_71D00D: LitStr "N"
  loc_71D010: FStStrCopy var_BC
  loc_71D013: FLdRfVar var_BC
  loc_71D016: FLdRfVar var_B8
  loc_71D019: ImpAdLdRf MemVar_74C760
  loc_71D01C: NewIfNullPr Formx
  loc_71D01F: from_stack_1v = Formx.global_4589716Get()
  loc_71D024: FLdPr var_B8
  loc_71D027:  = Formx.FontBold
  loc_71D02C: FLdRfVar var_D8
  loc_71D02F: NotVar var_F8
  loc_71D033: CBoolVarNull
  loc_71D035: FFreeStr var_BC = ""
  loc_71D03C: FFree1Ad var_B8
  loc_71D03F: FFree1Var var_D8 = ""
  loc_71D042: BranchF loc_71D071
  loc_71D045: FLdRfVar var_D8
  loc_71D048: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_71D04D: FLdRfVar var_D8
  loc_71D050: CBoolVarNull
  loc_71D052: FFree1Var var_D8 = ""
  loc_71D055: BranchF loc_71D06E
  loc_71D058: ILdRf Me
  loc_71D05B: FStAdNoPop
  loc_71D05F: ImpAdLdRf MemVar_7520D4
  loc_71D062: NewIfNullPr Global
  loc_71D065: Global.Unload from_stack_1
  loc_71D06A: FFree1Ad var_B8
  loc_71D06D: ExitProcHresult
  loc_71D06E: Branch loc_71CFF5
  loc_71D071: LitVarI2 var_D8, 7
  loc_71D076: LitI4 1
  loc_71D07B: FLdPr Me
  loc_71D07E: MemLdRfVar from_stack_1.global_80
  loc_71D081: CVarRef
  loc_71D086: FLdRfVar var_F8
  loc_71D089: ImpAdCallFPR4  = Mid(, , )
  loc_71D08E: FLdRfVar var_F8
  loc_71D091: CStrVarTmp
  loc_71D092: FStStrNoPop var_BC
  loc_71D095: FLdPr Me
  loc_71D098: MemStStrCopy
  loc_71D09C: FFree1Str var_BC
  loc_71D09F: FFreeVar var_D8 = ""
  loc_71D0A6: LitVar_Missing var_D8
  loc_71D0A9: LitI4 8
  loc_71D0AE: FLdPr Me
  loc_71D0B1: MemLdRfVar from_stack_1.global_80
  loc_71D0B4: CVarRef
  loc_71D0B9: FLdRfVar var_F8
  loc_71D0BC: ImpAdCallFPR4  = Mid(, , )
  loc_71D0C1: FLdRfVar var_F8
  loc_71D0C4: CStrVarTmp
  loc_71D0C5: FStStrNoPop var_BC
  loc_71D0C8: FLdPr Me
  loc_71D0CB: MemStStrCopy
  loc_71D0CF: FFree1Str var_BC
  loc_71D0D2: FFreeVar var_D8 = ""
  loc_71D0D9: LitVarI2 var_D8, 12
  loc_71D0DE: LitI4 1
  loc_71D0E3: FLdPr Me
  loc_71D0E6: MemLdStr global_80
  loc_71D0E9: ImpAdCallI2 Mid$(, , )
  loc_71D0EE: FStStrNoPop var_BC
  loc_71D0F1: ImpAdCallFPR4 push Val()
  loc_71D0F6: FStFPR8 var_134
  loc_71D0F9: LitI4 1
  loc_71D0FE: LitI4 1
  loc_71D103: LitVarStr var_11C, "000000000000"
  loc_71D108: FStVarCopyObj var_12C
  loc_71D10B: FLdRfVar var_12C
  loc_71D10E: FLdFPR8 var_134
  loc_71D111: CVarR8
  loc_71D115: FLdRfVar var_144
  loc_71D118: ImpAdCallFPR4  = Format(, )
  loc_71D11D: FLdRfVar var_144
  loc_71D120: CStrVarTmp
  loc_71D121: FStStrNoPop var_C4
  loc_71D124: FLdPr Me
  loc_71D127: MemStStrCopy
  loc_71D12B: FFreeStr var_BC = ""
  loc_71D132: FFreeVar var_D8 = "": var_F8 = "": var_12C = ""
  loc_71D13D: FLdPr Me
  loc_71D140: MemLdStr global_156
  loc_71D143: LitStr "0000004"
  loc_71D146: GeStr
  loc_71D148: BranchF loc_71D166
  loc_71D14B: LitVarI4
  loc_71D153: PopAdLdVar
  loc_71D154: FLdPrThis
  loc_71D155: VCallAd Control_ID_gLista
  loc_71D158: FStAdFunc var_B8
  loc_71D15B: FLdPr var_B8
  loc_71D15E: LateIdSt
  loc_71D163: FFree1Ad var_B8
  loc_71D166: LitVarI2 var_D8, 4
  loc_71D16B: LitI4 &HD
  loc_71D170: FLdPr Me
  loc_71D173: MemLdStr global_80
  loc_71D176: ImpAdCallI2 Mid$(, , )
  loc_71D17B: CVarStr var_F8
  loc_71D17E: FLdPr Me
  loc_71D181: MemStVar
  loc_71D185: FFreeVar var_D8 = ""
  loc_71D18C: LitVarI2 var_D8, 2
  loc_71D191: LitI4 &H11
  loc_71D196: FLdPr Me
  loc_71D199: MemLdStr global_80
  loc_71D19C: ImpAdCallI2 Mid$(, , )
  loc_71D1A1: FStStrNoPop var_BC
  loc_71D1A4: ImpAdCallFPR4 push Val()
  loc_71D1A9: FStFPR8 var_134
  loc_71D1AC: LitI4 0
  loc_71D1B1: LitI4 &HB
  loc_71D1B6: FLdRfVar var_148
  loc_71D1B9: Redim
  loc_71D1C3: LitVarStr var_10C, "Enero"
  loc_71D1C8: LitI4 0
  loc_71D1CD: ILdRf var_148
  loc_71D1D0: Ary1StVarCopy
  loc_71D1D2: LitVarStr var_11C, "Febrero"
  loc_71D1D7: LitI4 1
  loc_71D1DC: ILdRf var_148
  loc_71D1DF: Ary1StVarCopy
  loc_71D1E1: LitVarStr var_158, "Marzo"
  loc_71D1E6: LitI4 2
  loc_71D1EB: ILdRf var_148
  loc_71D1EE: Ary1StVarCopy
  loc_71D1F0: LitVarStr var_168, "Abril"
  loc_71D1F5: LitI4 3
  loc_71D1FA: ILdRf var_148
  loc_71D1FD: Ary1StVarCopy
  loc_71D1FF: LitVarStr var_178, "Mayo"
  loc_71D204: LitI4 4
  loc_71D209: ILdRf var_148
  loc_71D20C: Ary1StVarCopy
  loc_71D20E: LitVarStr var_188, "Junio"
  loc_71D213: LitI4 5
  loc_71D218: ILdRf var_148
  loc_71D21B: Ary1StVarCopy
  loc_71D21D: LitVarStr var_198, "Julio"
  loc_71D222: LitI4 6
  loc_71D227: ILdRf var_148
  loc_71D22A: Ary1StVarCopy
  loc_71D22C: LitVarStr var_1A8, "Agosto"
  loc_71D231: LitI4 7
  loc_71D236: ILdRf var_148
  loc_71D239: Ary1StVarCopy
  loc_71D23B: LitVarStr var_1B8, "Septiembre"
  loc_71D240: LitI4 8
  loc_71D245: ILdRf var_148
  loc_71D248: Ary1StVarCopy
  loc_71D24A: LitVarStr var_1C8, "Octubre"
  loc_71D24F: LitI4 9
  loc_71D254: ILdRf var_148
  loc_71D257: Ary1StVarCopy
  loc_71D259: LitVarStr var_1D8, "Noviembre"
  loc_71D25E: LitI4 &HA
  loc_71D263: ILdRf var_148
  loc_71D266: Ary1StVarCopy
  loc_71D268: LitVarStr var_1E8, "Diciembre"
  loc_71D26D: LitI4 &HB
  loc_71D272: ILdRf var_148
  loc_71D275: Ary1StVarCopy
  loc_71D277: FLdRfVar var_148
  loc_71D27A: FLdFPR8 var_134
  loc_71D27D: PopFPR4
  loc_71D27E: FLdRfVar var_F8
  loc_71D281: ImpAdCallFPR4  = Choose(, )
  loc_71D286: FLdRfVar var_148
  loc_71D289: Erase
  loc_71D28A: FLdRfVar var_F8
  loc_71D28D: CStrVarTmp
  loc_71D28E: FStStrNoPop var_C4
  loc_71D291: FLdPr Me
  loc_71D294: MemStStrCopy
  loc_71D298: FFreeStr var_BC = ""
  loc_71D29F: FFreeVar var_D8 = ""
  loc_71D2A6: LitVarI2 var_D8, 4
  loc_71D2AB: LitI4 &H13
  loc_71D2B0: FLdPr Me
  loc_71D2B3: MemLdStr global_80
  loc_71D2B6: ImpAdCallI2 Mid$(, , )
  loc_71D2BB: FStStrNoPop var_BC
  loc_71D2BE: ImpAdCallFPR4 push Val()
  loc_71D2C3: FStFPR8 var_134
  loc_71D2C6: LitI4 1
  loc_71D2CB: LitI4 1
  loc_71D2D0: LitVarStr var_11C, "#0.00"
  loc_71D2D5: FStVarCopyObj var_12C
  loc_71D2D8: FLdRfVar var_12C
  loc_71D2DB: FLdFPR8 var_134
  loc_71D2DE: LitI2_Byte &H64
  loc_71D2E0: CR8I2
  loc_71D2E1: DivR8
  loc_71D2E2: CVarR8
  loc_71D2E6: ImpAdCallI2 Format$(, )
  loc_71D2EB: FStStrNoPop var_C4
  loc_71D2EE: FLdPr Me
  loc_71D2F1: MemStStrCopy
  loc_71D2F5: FFreeStr var_BC = ""
  loc_71D2FC: FFreeVar var_D8 = "": var_F8 = ""
  loc_71D305: LitStr "Por la venta efectuadas por vuestra cuenta y orden en el período "
  loc_71D308: FLdPr Me
  loc_71D30B: MemLdStr global_76
  loc_71D30E: ConcatStr
  loc_71D30F: FStStrNoPop var_BC
  loc_71D312: LitStr " de "
  loc_71D315: ConcatStr
  loc_71D316: CVarStr var_D8
  loc_71D319: FLdPr Me
  loc_71D31C: MemLdRfVar from_stack_1.global_60
  loc_71D31F: ConcatVar var_F8
  loc_71D323: CStrVarVal var_C4
  loc_71D327: FLdPrThis
  loc_71D328: VCallAd Control_ID_lNota
  loc_71D32B: FStAdFunc var_B8
  loc_71D32E: FLdPr var_B8
  loc_71D331: Me.Caption = from_stack_1
  loc_71D336: FFreeStr var_BC = ""
  loc_71D33D: FFree1Ad var_B8
  loc_71D340: FFreeVar var_D8 = ""
  loc_71D347: FLdPrThis
  loc_71D348: VCallAd Control_ID_gLista
  loc_71D34B: FStAdFunc var_B8
  loc_71D34E: FLdPr var_B8
  loc_71D351: LateIdCall
  loc_71D359: FFree1Ad var_B8
  loc_71D35C: LitVar_TRUE var_E8
  loc_71D35F: PopAdLdVar
  loc_71D360: FLdPrThis
  loc_71D361: VCallAd Control_ID_gLista
  loc_71D364: FStAdFunc var_B8
  loc_71D367: FLdPr var_B8
  loc_71D36A: LateIdSt
  loc_71D36F: FFree1Ad var_B8
  loc_71D372: LitStr "^Producto|^Litros|^Neto|^I.V.A. "
  loc_71D375: FLdPr Me
  loc_71D378: MemLdStr global_96
  loc_71D37B: ConcatStr
  loc_71D37C: FStStrNoPop var_BC
  loc_71D37F: LitStr Chr(37)
  loc_71D382: ConcatStr
  loc_71D383: FStStrNoPop var_C4
  loc_71D386: LitStr "|^I.T.C.|^Total"
  loc_71D389: ConcatStr
  loc_71D38A: CVarStr var_D8
  loc_71D38D: PopAdLdVar
  loc_71D38E: FLdPrThis
  loc_71D38F: VCallAd Control_ID_gLista
  loc_71D392: FStAdFunc var_B8
  loc_71D395: FLdPr var_B8
  loc_71D398: LateIdSt
  loc_71D39D: FFreeStr var_BC = ""
  loc_71D3A4: FFree1Ad var_B8
  loc_71D3A7: FFree1Var var_D8 = ""
  loc_71D3AA: FLdPr Me
  loc_71D3AD: MemLdStr global_156
  loc_71D3B0: LitStr "0000004"
  loc_71D3B3: GeStr
  loc_71D3B5: BranchF loc_71D3F0
  loc_71D3B8: LitStr "^Producto|^Litros|^Neto|^I.V.A. "
  loc_71D3BB: FLdPr Me
  loc_71D3BE: MemLdStr global_96
  loc_71D3C1: ConcatStr
  loc_71D3C2: FStStrNoPop var_BC
  loc_71D3C5: LitStr Chr(37)
  loc_71D3C8: ConcatStr
  loc_71D3C9: FStStrNoPop var_C4
  loc_71D3CC: LitStr "|^I.T.C.|^TOIL|^TINFRA|^Total"
  loc_71D3CF: ConcatStr
  loc_71D3D0: CVarStr var_D8
  loc_71D3D3: PopAdLdVar
  loc_71D3D4: FLdPrThis
  loc_71D3D5: VCallAd Control_ID_gLista
  loc_71D3D8: FStAdFunc var_B8
  loc_71D3DB: FLdPr var_B8
  loc_71D3DE: LateIdSt
  loc_71D3E3: FFreeStr var_BC = ""
  loc_71D3EA: FFree1Ad var_B8
  loc_71D3ED: FFree1Var var_D8 = ""
  loc_71D3F0: LitVarI2 var_E8, 12
  loc_71D3F5: PopAdLdVar
  loc_71D3F6: FLdPrThis
  loc_71D3F7: VCallAd Control_ID_gLista
  loc_71D3FA: FStAdFunc var_B8
  loc_71D3FD: FLdPr var_B8
  loc_71D400: LateIdLdVar var_D8 DispID_-512 -1
  loc_71D407: CastAdVar Me
  loc_71D40B: FStAdFunc var_C0
  loc_71D40E: FLdPr var_C0
  loc_71D411: LateIdSt
  loc_71D416: FFreeAd var_B8 = ""
  loc_71D41D: FFree1Var var_D8 = ""
  loc_71D420: LitVarI4
  loc_71D428: PopAdLdVar
  loc_71D429: LitVarI4
  loc_71D431: PopAdLdVar
  loc_71D432: FLdPrThis
  loc_71D433: VCallAd Control_ID_gLista
  loc_71D436: FStAdFunc var_B8
  loc_71D439: FLdPr var_B8
  loc_71D43C: LateIdCallSt
  loc_71D444: FFree1Ad var_B8
  loc_71D447: LitVarI4
  loc_71D44F: PopAdLdVar
  loc_71D450: LitVarI4
  loc_71D458: PopAdLdVar
  loc_71D459: FLdPrThis
  loc_71D45A: VCallAd Control_ID_gLista
  loc_71D45D: FStAdFunc var_B8
  loc_71D460: FLdPr var_B8
  loc_71D463: LateIdCallSt
  loc_71D46B: FFree1Ad var_B8
  loc_71D46E: LitVarI4
  loc_71D476: PopAdLdVar
  loc_71D477: LitVarI4
  loc_71D47F: PopAdLdVar
  loc_71D480: FLdPrThis
  loc_71D481: VCallAd Control_ID_gLista
  loc_71D484: FStAdFunc var_B8
  loc_71D487: FLdPr var_B8
  loc_71D48A: LateIdCallSt
  loc_71D492: FFree1Ad var_B8
  loc_71D495: LitVarI4
  loc_71D49D: PopAdLdVar
  loc_71D49E: LitVarI4
  loc_71D4A6: PopAdLdVar
  loc_71D4A7: FLdPrThis
  loc_71D4A8: VCallAd Control_ID_gLista
  loc_71D4AB: FStAdFunc var_B8
  loc_71D4AE: FLdPr var_B8
  loc_71D4B1: LateIdCallSt
  loc_71D4B9: FFree1Ad var_B8
  loc_71D4BC: LitVarI4
  loc_71D4C4: PopAdLdVar
  loc_71D4C5: LitVarI4
  loc_71D4CD: PopAdLdVar
  loc_71D4CE: FLdPrThis
  loc_71D4CF: VCallAd Control_ID_gLista
  loc_71D4D2: FStAdFunc var_B8
  loc_71D4D5: FLdPr var_B8
  loc_71D4D8: LateIdCallSt
  loc_71D4E0: FFree1Ad var_B8
  loc_71D4E3: LitVarI4
  loc_71D4EB: PopAdLdVar
  loc_71D4EC: LitVarI4
  loc_71D4F4: PopAdLdVar
  loc_71D4F5: FLdPrThis
  loc_71D4F6: VCallAd Control_ID_gLista
  loc_71D4F9: FStAdFunc var_B8
  loc_71D4FC: FLdPr var_B8
  loc_71D4FF: LateIdCallSt
  loc_71D507: FFree1Ad var_B8
  loc_71D50A: LitVarI4
  loc_71D512: PopAdLdVar
  loc_71D513: LitI4 7
  loc_71D518: CI2I4
  loc_71D519: CVarI2 var_10C
  loc_71D51C: PopAdLdVar
  loc_71D51D: FLdPrThis
  loc_71D51E: VCallAd Control_ID_gLista
  loc_71D521: FStAdFunc var_B8
  loc_71D524: FLdPr var_B8
  loc_71D527: LateIdCallSt
  loc_71D52F: FFree1Ad var_B8
  loc_71D532: LitVarI4
  loc_71D53A: PopAdLdVar
  loc_71D53B: LitI4 7
  loc_71D540: CI2I4
  loc_71D541: CVarI2 var_10C
  loc_71D544: PopAdLdVar
  loc_71D545: FLdPrThis
  loc_71D546: VCallAd Control_ID_gLista
  loc_71D549: FStAdFunc var_B8
  loc_71D54C: FLdPr var_B8
  loc_71D54F: LateIdCallSt
  loc_71D557: FFree1Ad var_B8
  loc_71D55A: LitVarI4
  loc_71D562: PopAdLdVar
  loc_71D563: LitI4 7
  loc_71D568: CI2I4
  loc_71D569: CVarI2 var_10C
  loc_71D56C: PopAdLdVar
  loc_71D56D: FLdPrThis
  loc_71D56E: VCallAd Control_ID_gLista
  loc_71D571: FStAdFunc var_B8
  loc_71D574: FLdPr var_B8
  loc_71D577: LateIdCallSt
  loc_71D57F: FFree1Ad var_B8
  loc_71D582: LitVarI4
  loc_71D58A: PopAdLdVar
  loc_71D58B: LitI4 7
  loc_71D590: CI2I4
  loc_71D591: CVarI2 var_10C
  loc_71D594: PopAdLdVar
  loc_71D595: FLdPrThis
  loc_71D596: VCallAd Control_ID_gLista
  loc_71D599: FStAdFunc var_B8
  loc_71D59C: FLdPr var_B8
  loc_71D59F: LateIdCallSt
  loc_71D5A7: FFree1Ad var_B8
  loc_71D5AA: LitVarI4
  loc_71D5B2: PopAdLdVar
  loc_71D5B3: LitI4 7
  loc_71D5B8: CI2I4
  loc_71D5B9: CVarI2 var_10C
  loc_71D5BC: PopAdLdVar
  loc_71D5BD: FLdPrThis
  loc_71D5BE: VCallAd Control_ID_gLista
  loc_71D5C1: FStAdFunc var_B8
  loc_71D5C4: FLdPr var_B8
  loc_71D5C7: LateIdCallSt
  loc_71D5CF: FFree1Ad var_B8
  loc_71D5D2: LitVarI4
  loc_71D5DA: PopAdLdVar
  loc_71D5DB: LitI4 7
  loc_71D5E0: CI2I4
  loc_71D5E1: CVarI2 var_10C
  loc_71D5E4: PopAdLdVar
  loc_71D5E5: FLdPrThis
  loc_71D5E6: VCallAd Control_ID_gLista
  loc_71D5E9: FStAdFunc var_B8
  loc_71D5EC: FLdPr var_B8
  loc_71D5EF: LateIdCallSt
  loc_71D5F7: FFree1Ad var_B8
  loc_71D5FA: FLdPr Me
  loc_71D5FD: MemLdStr global_156
  loc_71D600: LitStr "0000004"
  loc_71D603: GeStr
  loc_71D605: BranchF loc_71D6A6
  loc_71D608: LitVarI4
  loc_71D610: PopAdLdVar
  loc_71D611: LitI4 7
  loc_71D616: CI2I4
  loc_71D617: CVarI2 var_10C
  loc_71D61A: PopAdLdVar
  loc_71D61B: FLdPrThis
  loc_71D61C: VCallAd Control_ID_gLista
  loc_71D61F: FStAdFunc var_B8
  loc_71D622: FLdPr var_B8
  loc_71D625: LateIdCallSt
  loc_71D62D: FFree1Ad var_B8
  loc_71D630: LitVarI4
  loc_71D638: PopAdLdVar
  loc_71D639: LitVarI4
  loc_71D641: PopAdLdVar
  loc_71D642: FLdPrThis
  loc_71D643: VCallAd Control_ID_gLista
  loc_71D646: FStAdFunc var_B8
  loc_71D649: FLdPr var_B8
  loc_71D64C: LateIdCallSt
  loc_71D654: FFree1Ad var_B8
  loc_71D657: LitVarI4
  loc_71D65F: PopAdLdVar
  loc_71D660: LitI4 7
  loc_71D665: CI2I4
  loc_71D666: CVarI2 var_10C
  loc_71D669: PopAdLdVar
  loc_71D66A: FLdPrThis
  loc_71D66B: VCallAd Control_ID_gLista
  loc_71D66E: FStAdFunc var_B8
  loc_71D671: FLdPr var_B8
  loc_71D674: LateIdCallSt
  loc_71D67C: FFree1Ad var_B8
  loc_71D67F: LitVarI4
  loc_71D687: PopAdLdVar
  loc_71D688: LitVarI4
  loc_71D690: PopAdLdVar
  loc_71D691: FLdPrThis
  loc_71D692: VCallAd Control_ID_gLista
  loc_71D695: FStAdFunc var_B8
  loc_71D698: FLdPr var_B8
  loc_71D69B: LateIdCallSt
  loc_71D6A3: FFree1Ad var_B8
  loc_71D6A6: LitVarI4
  loc_71D6AE: PopAdLdVar
  loc_71D6AF: FLdPrThis
  loc_71D6B0: VCallAd Control_ID_gLista
  loc_71D6B3: FStAdFunc var_B8
  loc_71D6B6: FLdPr var_B8
  loc_71D6B9: LateIdSt
  loc_71D6BE: FFree1Ad var_B8
  loc_71D6C1: LitI2_Byte &H18
  loc_71D6C3: FStI2 var_8E
  loc_71D6C6: LitI2_Byte 1
  loc_71D6C8: FStI2 var_94
  loc_71D6CB: FLdI2 var_8E
  loc_71D6CE: CI4UI1
  loc_71D6CF: FLdPr Me
  loc_71D6D2: MemLdStr global_80
  loc_71D6D5: FnLenStr
  loc_71D6D6: LtI4
  loc_71D6D7: BranchF loc_71DD9A
  loc_71D6DA: LitVarI2 var_D8, 2
  loc_71D6DF: FLdI2 var_8E
  loc_71D6E2: CI4UI1
  loc_71D6E3: FLdPr Me
  loc_71D6E6: MemLdStr global_80
  loc_71D6E9: ImpAdCallI2 Mid$(, , )
  loc_71D6EE: FStStrNoPop var_BC
  loc_71D6F1: ImpAdCallFPR4 push Val()
  loc_71D6F6: CI2R8
  loc_71D6F7: FStI2 var_90
  loc_71D6FA: FFree1Str var_BC
  loc_71D6FD: FFree1Var var_D8 = ""
  loc_71D700: FLdI2 var_90
  loc_71D703: FStI2 var_1EA
  loc_71D706: FLdI2 var_1EA
  loc_71D709: LitI2_Byte &HA
  loc_71D70B: EqI2
  loc_71D70C: BranchF loc_71D71B
  loc_71D70F: FLdI2 var_8E
  loc_71D712: LitI2_Byte 2
  loc_71D714: AddI2
  loc_71D715: FStI2 var_8E
  loc_71D718: Branch loc_71D753
  loc_71D71B: FLdI2 var_1EA
  loc_71D71E: LitI2_Byte &HB
  loc_71D720: EqI2
  loc_71D721: BranchT loc_71D73F
  loc_71D724: FLdI2 var_1EA
  loc_71D727: LitI2_Byte &H14
  loc_71D729: EqI2
  loc_71D72A: BranchT loc_71D73F
  loc_71D72D: FLdI2 var_1EA
  loc_71D730: LitI2_Byte &H1E
  loc_71D732: EqI2
  loc_71D733: BranchT loc_71D73F
  loc_71D736: FLdI2 var_1EA
  loc_71D739: LitI2_Byte &H5A
  loc_71D73B: EqI2
  loc_71D73C: BranchF loc_71D745
  loc_71D73F: Branch loc_71DD9A
  loc_71D742: Branch loc_71D753
  loc_71D745: FLdI2 var_8E
  loc_71D748: LitI2_Byte &H37
  loc_71D74A: AddI2
  loc_71D74B: FStI2 var_8E
  loc_71D74E: LitI2_Byte &HFF
  loc_71D750: FStI2 var_92
  loc_71D753: FLdI2 var_92
  loc_71D756: BranchF loc_71D761
  loc_71D759: LitI2_Byte 0
  loc_71D75B: FStI2 var_92
  loc_71D75E: Branch loc_71DD97
  loc_71D761: LitVarI2 var_D8, 2
  loc_71D766: FLdI2 var_8E
  loc_71D769: CI4UI1
  loc_71D76A: FLdPr Me
  loc_71D76D: MemLdStr global_80
  loc_71D770: ImpAdCallI2 Mid$(, , )
  loc_71D775: FStStrNoPop var_BC
  loc_71D778: ImpAdCallFPR4 push Val()
  loc_71D77D: FStFPR8 var_134
  loc_71D780: FLdRfVar var_C4
  loc_71D783: FLdFPR8 var_134
  loc_71D786: CI2R8
  loc_71D787: ImpAdLdRf MemVar_74A220
  loc_71D78A: NewIfNullPr clsProducts
  loc_71D792: FLdZeroAd var_C4
  loc_71D795: FStStr var_8C
  loc_71D798: FFree1Str var_BC
  loc_71D79B: FFree1Var var_D8 = ""
  loc_71D79E: LitVarI2 var_D8, 2
  loc_71D7A3: FLdI2 var_8E
  loc_71D7A6: CI4UI1
  loc_71D7A7: FLdPr Me
  loc_71D7AA: MemLdStr global_80
  loc_71D7AD: ImpAdCallI2 Mid$(, , )
  loc_71D7B2: FStStrNoPop var_BC
  loc_71D7B5: ImpAdCallFPR4 push Val()
  loc_71D7BA: FStFPR8 var_134
  loc_71D7BD: FLdRfVar var_C4
  loc_71D7C0: FLdFPR8 var_134
  loc_71D7C3: CI2R8
  loc_71D7C4: ImpAdLdRf MemVar_74A220
  loc_71D7C7: NewIfNullPr clsProducts
  loc_71D7CF: ILdRf var_C4
  loc_71D7D2: FLdI2 var_94
  loc_71D7D5: CI4UI1
  loc_71D7D6: FLdPr Me
  loc_71D7D9: MemLdRfVar from_stack_1.global_128
  loc_71D7DC: Ary1StStrCopy
  loc_71D7DD: FFreeStr var_BC = ""
  loc_71D7E4: FFree1Var var_D8 = ""
  loc_71D7E7: FLdI2 var_8E
  loc_71D7EA: LitI2_Byte 2
  loc_71D7EC: AddI2
  loc_71D7ED: FStI2 var_8E
  loc_71D7F0: LitVarI2 var_12C, 10
  loc_71D7F5: FLdI2 var_8E
  loc_71D7F8: CI4UI1
  loc_71D7F9: FLdPr Me
  loc_71D7FC: MemLdStr global_80
  loc_71D7FF: ImpAdCallI2 Mid$(, , )
  loc_71D804: FStStrNoPop var_BC
  loc_71D807: ImpAdCallFPR4 push Val()
  loc_71D80C: FStFPR8 var_134
  loc_71D80F: ILdRf var_8C
  loc_71D812: CVarStr var_E8
  loc_71D815: LitI4 9
  loc_71D81A: FLdRfVar var_D8
  loc_71D81D: ImpAdCallFPR4  = Chr()
  loc_71D822: FLdRfVar var_D8
  loc_71D825: ConcatVar var_F8
  loc_71D829: LitI4 1
  loc_71D82E: LitI4 1
  loc_71D833: LitVarStr var_158, "#######0.00"
  loc_71D838: FStVarCopyObj var_1FC
  loc_71D83B: FLdRfVar var_1FC
  loc_71D83E: FLdFPR8 var_134
  loc_71D841: LitI2_Byte &H64
  loc_71D843: CR8I2
  loc_71D844: DivR8
  loc_71D845: CVarR8
  loc_71D849: ImpAdCallI2 Format$(, )
  loc_71D84E: CVarStr var_20C
  loc_71D851: ConcatVar var_21C
  loc_71D855: CStrVarTmp
  loc_71D856: FStStr var_8C
  loc_71D859: FFree1Str var_BC
  loc_71D85C: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71D86D: FLdI2 var_8E
  loc_71D870: LitI2_Byte &HA
  loc_71D872: AddI2
  loc_71D873: FStI2 var_8E
  loc_71D876: LitVarI2 var_12C, 10
  loc_71D87B: FLdI2 var_8E
  loc_71D87E: CI4UI1
  loc_71D87F: FLdPr Me
  loc_71D882: MemLdStr global_80
  loc_71D885: ImpAdCallI2 Mid$(, , )
  loc_71D88A: FStStrNoPop var_BC
  loc_71D88D: ImpAdCallFPR4 push Val()
  loc_71D892: FStFPR8 var_134
  loc_71D895: ILdRf var_8C
  loc_71D898: CVarStr var_E8
  loc_71D89B: LitI4 9
  loc_71D8A0: FLdRfVar var_D8
  loc_71D8A3: ImpAdCallFPR4  = Chr()
  loc_71D8A8: FLdRfVar var_D8
  loc_71D8AB: ConcatVar var_F8
  loc_71D8AF: LitI4 1
  loc_71D8B4: LitI4 1
  loc_71D8B9: LitVarStr var_158, "#######0.00"
  loc_71D8BE: FStVarCopyObj var_1FC
  loc_71D8C1: FLdRfVar var_1FC
  loc_71D8C4: FLdFPR8 var_134
  loc_71D8C7: LitI2_Byte &H64
  loc_71D8C9: CR8I2
  loc_71D8CA: DivR8
  loc_71D8CB: CVarR8
  loc_71D8CF: ImpAdCallI2 Format$(, )
  loc_71D8D4: CVarStr var_20C
  loc_71D8D7: ConcatVar var_21C
  loc_71D8DB: CStrVarTmp
  loc_71D8DC: FStStr var_8C
  loc_71D8DF: FFree1Str var_BC
  loc_71D8E2: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71D8F3: FLdI2 var_8E
  loc_71D8F6: LitI2_Byte &HA
  loc_71D8F8: AddI2
  loc_71D8F9: FStI2 var_8E
  loc_71D8FC: LitVarI2 var_12C, 10
  loc_71D901: FLdI2 var_8E
  loc_71D904: CI4UI1
  loc_71D905: FLdPr Me
  loc_71D908: MemLdStr global_80
  loc_71D90B: ImpAdCallI2 Mid$(, , )
  loc_71D910: FStStrNoPop var_BC
  loc_71D913: ImpAdCallFPR4 push Val()
  loc_71D918: FStFPR8 var_134
  loc_71D91B: ILdRf var_8C
  loc_71D91E: CVarStr var_E8
  loc_71D921: LitI4 9
  loc_71D926: FLdRfVar var_D8
  loc_71D929: ImpAdCallFPR4  = Chr()
  loc_71D92E: FLdRfVar var_D8
  loc_71D931: ConcatVar var_F8
  loc_71D935: LitI4 1
  loc_71D93A: LitI4 1
  loc_71D93F: LitVarStr var_158, "#######0.00"
  loc_71D944: FStVarCopyObj var_1FC
  loc_71D947: FLdRfVar var_1FC
  loc_71D94A: FLdFPR8 var_134
  loc_71D94D: LitI2_Byte &H64
  loc_71D94F: CR8I2
  loc_71D950: DivR8
  loc_71D951: CVarR8
  loc_71D955: ImpAdCallI2 Format$(, )
  loc_71D95A: CVarStr var_20C
  loc_71D95D: ConcatVar var_21C
  loc_71D961: CStrVarTmp
  loc_71D962: FStStr var_8C
  loc_71D965: FFree1Str var_BC
  loc_71D968: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71D979: FLdI2 var_8E
  loc_71D97C: LitI2_Byte &HA
  loc_71D97E: AddI2
  loc_71D97F: FStI2 var_8E
  loc_71D982: LitVarI2 var_12C, 10
  loc_71D987: FLdI2 var_8E
  loc_71D98A: CI4UI1
  loc_71D98B: FLdPr Me
  loc_71D98E: MemLdStr global_80
  loc_71D991: ImpAdCallI2 Mid$(, , )
  loc_71D996: FStStrNoPop var_BC
  loc_71D999: ImpAdCallFPR4 push Val()
  loc_71D99E: FStFPR8 var_134
  loc_71D9A1: ILdRf var_8C
  loc_71D9A4: CVarStr var_E8
  loc_71D9A7: LitI4 9
  loc_71D9AC: FLdRfVar var_D8
  loc_71D9AF: ImpAdCallFPR4  = Chr()
  loc_71D9B4: FLdRfVar var_D8
  loc_71D9B7: ConcatVar var_F8
  loc_71D9BB: LitI4 1
  loc_71D9C0: LitI4 1
  loc_71D9C5: LitVarStr var_158, "#######0.00"
  loc_71D9CA: FStVarCopyObj var_1FC
  loc_71D9CD: FLdRfVar var_1FC
  loc_71D9D0: FLdFPR8 var_134
  loc_71D9D3: LitI2_Byte &H64
  loc_71D9D5: CR8I2
  loc_71D9D6: DivR8
  loc_71D9D7: CVarR8
  loc_71D9DB: ImpAdCallI2 Format$(, )
  loc_71D9E0: CVarStr var_20C
  loc_71D9E3: ConcatVar var_21C
  loc_71D9E7: CStrVarTmp
  loc_71D9E8: FStStr var_8C
  loc_71D9EB: FFree1Str var_BC
  loc_71D9EE: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71D9FF: FLdI2 var_8E
  loc_71DA02: LitI2_Byte &HA
  loc_71DA04: AddI2
  loc_71DA05: FStI2 var_8E
  loc_71DA08: FLdPr Me
  loc_71DA0B: MemLdStr global_156
  loc_71DA0E: LitStr "0000004"
  loc_71DA11: GeStr
  loc_71DA13: BranchF loc_71DC6A
  loc_71DA16: LitVarI2 var_D8, 10
  loc_71DA1B: FLdI2 var_8E
  loc_71DA1E: CI4UI1
  loc_71DA1F: FLdPr Me
  loc_71DA22: MemLdRfVar from_stack_1.global_80
  loc_71DA25: CVarRef
  loc_71DA2A: FLdRfVar var_F8
  loc_71DA2D: ImpAdCallFPR4  = Mid(, , )
  loc_71DA32: FLdRfVar var_F8
  loc_71DA35: FnCDblVar
  loc_71DA37: LitI2_Byte &H64
  loc_71DA39: CR8I2
  loc_71DA3A: DivR8
  loc_71DA3B: FStFPR8 var_A8
  loc_71DA3E: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DA47: FLdI2 var_8E
  loc_71DA4A: LitI2_Byte &HA
  loc_71DA4C: AddI2
  loc_71DA4D: FStI2 var_8E
  loc_71DA50: LitVarI2 var_D8, 10
  loc_71DA55: FLdI2 var_8E
  loc_71DA58: CI4UI1
  loc_71DA59: FLdPr Me
  loc_71DA5C: MemLdRfVar from_stack_1.global_80
  loc_71DA5F: CVarRef
  loc_71DA64: FLdRfVar var_F8
  loc_71DA67: ImpAdCallFPR4  = Mid(, , )
  loc_71DA6C: FLdRfVar var_F8
  loc_71DA6F: FnCDblVar
  loc_71DA71: LitI2_Byte &H64
  loc_71DA73: CR8I2
  loc_71DA74: DivR8
  loc_71DA75: FStFPR8 var_B0
  loc_71DA78: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DA81: FLdFPR8 var_A8
  loc_71DA84: FLdFPR8 var_B0
  loc_71DA87: AddR8
  loc_71DA88: FStFPR8 var_A0
  loc_71DA8B: LitI4 1
  loc_71DA90: FLdRfVar var_BC
  loc_71DA93: FLdRfVar var_B0
  loc_71DA96: FLdRfVar var_A8
  loc_71DA99: FLdRfVar var_A0
  loc_71DA9C: from_stack_4v = Proc_124_11_5F0F1C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_71DAA1: ILdRf var_BC
  loc_71DAA4: LitStr "(1)"
  loc_71DAA7: LitI4 0
  loc_71DAAC: FnInStr4
  loc_71DAAE: CBoolI4
  loc_71DAB0: FFree1Str var_BC
  loc_71DAB3: BranchF loc_71DB8D
  loc_71DAB6: FLdRfVar var_FA
  loc_71DAB9: FLdI2 var_94
  loc_71DABC: ImpAdLdRf MemVar_74A220
  loc_71DABF: NewIfNullPr clsProducts
  loc_71DAC2:  = clsProducts.Name
  loc_71DAC7: FLdI2 var_FA
  loc_71DACA: LitI2_Byte 6
  loc_71DACC: EqI2
  loc_71DACD: BranchF loc_71DB1B
  loc_71DAD0: ILdRf var_8C
  loc_71DAD3: CVarStr var_E8
  loc_71DAD6: LitI4 9
  loc_71DADB: FLdRfVar var_D8
  loc_71DADE: ImpAdCallFPR4  = Chr()
  loc_71DAE3: FLdRfVar var_D8
  loc_71DAE6: ConcatVar var_F8
  loc_71DAEA: LitVarStr var_10C, vbNullString
  loc_71DAEF: ConcatVar var_12C
  loc_71DAF3: LitI4 9
  loc_71DAF8: FLdRfVar var_144
  loc_71DAFB: ImpAdCallFPR4  = Chr()
  loc_71DB00: FLdRfVar var_144
  loc_71DB03: ConcatVar var_1FC
  loc_71DB07: CStrVarTmp
  loc_71DB08: FStStr var_8C
  loc_71DB0B: FFreeVar var_D8 = "": var_F8 = "": var_12C = "": var_144 = ""
  loc_71DB18: Branch loc_71DB8A
  loc_71DB1B: ILdRf var_8C
  loc_71DB1E: CVarStr var_E8
  loc_71DB21: LitI4 9
  loc_71DB26: FLdRfVar var_D8
  loc_71DB29: ImpAdCallFPR4  = Chr()
  loc_71DB2E: FLdRfVar var_D8
  loc_71DB31: ConcatVar var_F8
  loc_71DB35: LitI4 1
  loc_71DB3A: LitI4 1
  loc_71DB3F: LitVarStr var_11C, "#######0.00"
  loc_71DB44: FStVarCopyObj var_12C
  loc_71DB47: FLdRfVar var_12C
  loc_71DB4A: FLdRfVar var_A0
  loc_71DB4D: CVarRef
  loc_71DB52: FLdRfVar var_144
  loc_71DB55: ImpAdCallFPR4  = Format(, )
  loc_71DB5A: FLdRfVar var_144
  loc_71DB5D: ConcatVar var_1FC
  loc_71DB61: LitI4 9
  loc_71DB66: FLdRfVar var_20C
  loc_71DB69: ImpAdCallFPR4  = Chr()
  loc_71DB6E: FLdRfVar var_20C
  loc_71DB71: ConcatVar var_21C
  loc_71DB75: CStrVarTmp
  loc_71DB76: FStStr var_8C
  loc_71DB79: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = "": var_1FC = "": var_20C = ""
  loc_71DB8A: Branch loc_71DC61
  loc_71DB8D: FLdRfVar var_FA
  loc_71DB90: FLdI2 var_94
  loc_71DB93: ImpAdLdRf MemVar_74A220
  loc_71DB96: NewIfNullPr clsProducts
  loc_71DB99:  = clsProducts.Name
  loc_71DB9E: FLdI2 var_FA
  loc_71DBA1: LitI2_Byte 6
  loc_71DBA3: EqI2
  loc_71DBA4: BranchF loc_71DBF2
  loc_71DBA7: ILdRf var_8C
  loc_71DBAA: CVarStr var_E8
  loc_71DBAD: LitI4 9
  loc_71DBB2: FLdRfVar var_D8
  loc_71DBB5: ImpAdCallFPR4  = Chr()
  loc_71DBBA: FLdRfVar var_D8
  loc_71DBBD: ConcatVar var_F8
  loc_71DBC1: LitI4 9
  loc_71DBC6: FLdRfVar var_12C
  loc_71DBC9: ImpAdCallFPR4  = Chr()
  loc_71DBCE: FLdRfVar var_12C
  loc_71DBD1: ConcatVar var_144
  loc_71DBD5: LitVarStr var_10C, vbNullString
  loc_71DBDA: ConcatVar var_1FC
  loc_71DBDE: CStrVarTmp
  loc_71DBDF: FStStr var_8C
  loc_71DBE2: FFreeVar var_D8 = "": var_F8 = "": var_12C = "": var_144 = ""
  loc_71DBEF: Branch loc_71DC61
  loc_71DBF2: ILdRf var_8C
  loc_71DBF5: CVarStr var_E8
  loc_71DBF8: LitI4 9
  loc_71DBFD: FLdRfVar var_D8
  loc_71DC00: ImpAdCallFPR4  = Chr()
  loc_71DC05: FLdRfVar var_D8
  loc_71DC08: ConcatVar var_F8
  loc_71DC0C: LitI4 9
  loc_71DC11: FLdRfVar var_12C
  loc_71DC14: ImpAdCallFPR4  = Chr()
  loc_71DC19: FLdRfVar var_12C
  loc_71DC1C: ConcatVar var_144
  loc_71DC20: LitI4 1
  loc_71DC25: LitI4 1
  loc_71DC2A: LitVarStr var_11C, "#######0.00"
  loc_71DC2F: FStVarCopyObj var_1FC
  loc_71DC32: FLdRfVar var_1FC
  loc_71DC35: FLdRfVar var_A0
  loc_71DC38: CVarRef
  loc_71DC3D: FLdRfVar var_20C
  loc_71DC40: ImpAdCallFPR4  = Format(, )
  loc_71DC45: FLdRfVar var_20C
  loc_71DC48: ConcatVar var_21C
  loc_71DC4C: CStrVarTmp
  loc_71DC4D: FStStr var_8C
  loc_71DC50: FFreeVar var_D8 = "": var_F8 = "": var_12C = "": var_1FC = "": var_144 = "": var_20C = ""
  loc_71DC61: FLdI2 var_8E
  loc_71DC64: LitI2_Byte &HA
  loc_71DC66: AddI2
  loc_71DC67: FStI2 var_8E
  loc_71DC6A: FLdPr Me
  loc_71DC6D: MemLdStr global_156
  loc_71DC70: LitStr "0000003"
  loc_71DC73: GeStr
  loc_71DC75: BranchF loc_71DCE3
  loc_71DC78: LitVarI2 var_D8, 10
  loc_71DC7D: FLdI2 var_8E
  loc_71DC80: CI4UI1
  loc_71DC81: FLdPr Me
  loc_71DC84: MemLdStr global_80
  loc_71DC87: ImpAdCallI2 Mid$(, , )
  loc_71DC8C: FStStrNoPop var_BC
  loc_71DC8F: ImpAdCallFPR4 push Val()
  loc_71DC94: FStFPR8 var_134
  loc_71DC97: LitI4 1
  loc_71DC9C: LitI4 1
  loc_71DCA1: LitVarStr var_11C, "#######0.00"
  loc_71DCA6: FStVarCopyObj var_12C
  loc_71DCA9: FLdRfVar var_12C
  loc_71DCAC: FLdFPR8 var_134
  loc_71DCAF: LitI2_Byte &H64
  loc_71DCB1: CR8I2
  loc_71DCB2: DivR8
  loc_71DCB3: CVarR8
  loc_71DCB7: ImpAdCallI2 Format$(, )
  loc_71DCBC: FStStrNoPop var_C4
  loc_71DCBF: FLdI2 var_94
  loc_71DCC2: CI4UI1
  loc_71DCC3: FLdPr Me
  loc_71DCC6: MemLdRfVar from_stack_1.global_104
  loc_71DCC9: Ary1StStrCopy
  loc_71DCCA: FFreeStr var_BC = ""
  loc_71DCD1: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DCDA: FLdI2 var_8E
  loc_71DCDD: LitI2_Byte &HA
  loc_71DCDF: AddI2
  loc_71DCE0: FStI2 var_8E
  loc_71DCE3: LitVarI2 var_12C, 10
  loc_71DCE8: FLdI2 var_8E
  loc_71DCEB: CI4UI1
  loc_71DCEC: FLdPr Me
  loc_71DCEF: MemLdStr global_80
  loc_71DCF2: ImpAdCallI2 Mid$(, , )
  loc_71DCF7: FStStrNoPop var_BC
  loc_71DCFA: ImpAdCallFPR4 push Val()
  loc_71DCFF: FStFPR8 var_134
  loc_71DD02: ILdRf var_8C
  loc_71DD05: CVarStr var_E8
  loc_71DD08: LitI4 9
  loc_71DD0D: FLdRfVar var_D8
  loc_71DD10: ImpAdCallFPR4  = Chr()
  loc_71DD15: FLdRfVar var_D8
  loc_71DD18: ConcatVar var_F8
  loc_71DD1C: LitI4 1
  loc_71DD21: LitI4 1
  loc_71DD26: LitVarStr var_158, "#######0.00"
  loc_71DD2B: FStVarCopyObj var_1FC
  loc_71DD2E: FLdRfVar var_1FC
  loc_71DD31: FLdFPR8 var_134
  loc_71DD34: LitI2_Byte &H64
  loc_71DD36: CR8I2
  loc_71DD37: DivR8
  loc_71DD38: CVarR8
  loc_71DD3C: ImpAdCallI2 Format$(, )
  loc_71DD41: CVarStr var_20C
  loc_71DD44: ConcatVar var_21C
  loc_71DD48: CStrVarTmp
  loc_71DD49: FStStr var_8C
  loc_71DD4C: FFree1Str var_BC
  loc_71DD4F: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71DD60: FLdI2 var_8E
  loc_71DD63: LitI2_Byte &HA
  loc_71DD65: AddI2
  loc_71DD66: FStI2 var_8E
  loc_71DD69: FLdI2 var_8E
  loc_71DD6C: LitI2_Byte 1
  loc_71DD6E: AddI2
  loc_71DD6F: FStI2 var_8E
  loc_71DD72: FLdRfVar var_8C
  loc_71DD75: CDargRef
  loc_71DD79: FLdPrThis
  loc_71DD7A: VCallAd Control_ID_gLista
  loc_71DD7D: FStAdFunc var_B8
  loc_71DD80: FLdPr var_B8
  loc_71DD83: LateIdCall
  loc_71DD8B: FFree1Ad var_B8
  loc_71DD8E: FLdI2 var_94
  loc_71DD91: LitI2_Byte 1
  loc_71DD93: AddI2
  loc_71DD94: FStI2 var_94
  loc_71DD97: Branch loc_71D6CB
  loc_71DD9A: FLdPr Me
  loc_71DD9D: MemLdStr global_156
  loc_71DDA0: LitStr "0000003"
  loc_71DDA3: GeStr
  loc_71DDA5: BranchF loc_71DFC7
  loc_71DDA8: FLdI2 var_8E
  loc_71DDAB: CI4UI1
  loc_71DDAC: FLdPr Me
  loc_71DDAF: MemLdStr global_80
  loc_71DDB2: FnLenStr
  loc_71DDB3: LtI4
  loc_71DDB4: BranchF loc_71DE7F
  loc_71DDB7: LitVarI2 var_D8, 2
  loc_71DDBC: FLdI2 var_8E
  loc_71DDBF: CI4UI1
  loc_71DDC0: FLdPr Me
  loc_71DDC3: MemLdStr global_80
  loc_71DDC6: ImpAdCallI2 Mid$(, , )
  loc_71DDCB: FStStrNoPop var_BC
  loc_71DDCE: ImpAdCallFPR4 push Val()
  loc_71DDD3: CI2R8
  loc_71DDD4: FStI2 var_90
  loc_71DDD7: FFree1Str var_BC
  loc_71DDDA: FFree1Var var_D8 = ""
  loc_71DDDD: FLdI2 var_90
  loc_71DDE0: LitI2_Byte &HB
  loc_71DDE2: NeI2
  loc_71DDE3: BranchF loc_71DDF2
  loc_71DDE6: FLdI2 var_8E
  loc_71DDE9: LitI2_Byte &H37
  loc_71DDEB: AddI2
  loc_71DDEC: FStI2 var_8E
  loc_71DDEF: Branch loc_71DE7C
  loc_71DDF2: FLdPr Me
  loc_71DDF5: MemLdStr global_156
  loc_71DDF8: LitStr "0000004"
  loc_71DDFB: GeStr
  loc_71DDFD: BranchF loc_71DE09
  loc_71DE00: FLdI2 var_8E
  loc_71DE03: LitI2_Byte &H14
  loc_71DE05: AddI2
  loc_71DE06: FStI2 var_8E
  loc_71DE09: FLdI2 var_8E
  loc_71DE0C: LitI2_Byte &H2C
  loc_71DE0E: AddI2
  loc_71DE0F: FStI2 var_8E
  loc_71DE12: LitVarI2 var_D8, 10
  loc_71DE17: FLdI2 var_8E
  loc_71DE1A: CI4UI1
  loc_71DE1B: FLdPr Me
  loc_71DE1E: MemLdStr global_80
  loc_71DE21: ImpAdCallI2 Mid$(, , )
  loc_71DE26: FStStrNoPop var_BC
  loc_71DE29: ImpAdCallFPR4 push Val()
  loc_71DE2E: FStFPR8 var_134
  loc_71DE31: LitI4 1
  loc_71DE36: LitI4 1
  loc_71DE3B: LitVarStr var_11C, "#######0.00"
  loc_71DE40: FStVarCopyObj var_12C
  loc_71DE43: FLdRfVar var_12C
  loc_71DE46: FLdFPR8 var_134
  loc_71DE49: LitI2_Byte &H64
  loc_71DE4B: CR8I2
  loc_71DE4C: DivR8
  loc_71DE4D: CVarR8
  loc_71DE51: ImpAdCallI2 Format$(, )
  loc_71DE56: FStStrNoPop var_C4
  loc_71DE59: FLdPr Me
  loc_71DE5C: MemStStrCopy
  loc_71DE60: FFreeStr var_BC = ""
  loc_71DE67: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DE70: FLdI2 var_8E
  loc_71DE73: LitI2_Byte &H15
  loc_71DE75: AddI2
  loc_71DE76: FStI2 var_8E
  loc_71DE79: Branch loc_71DE7F
  loc_71DE7C: Branch loc_71DDA8
  loc_71DE7F: FLdI2 var_94
  loc_71DE82: FStI2 var_96
  loc_71DE85: LitVarStr var_E8, vbNullString
  loc_71DE8A: PopAdLdVar
  loc_71DE8B: FLdPrThis
  loc_71DE8C: VCallAd Control_ID_gLista
  loc_71DE8F: FStAdFunc var_B8
  loc_71DE92: FLdPr var_B8
  loc_71DE95: LateIdCall
  loc_71DE9D: FFree1Ad var_B8
  loc_71DEA0: LitVarStr var_E8, "PRODUCTO"
  loc_71DEA5: LitI4 9
  loc_71DEAA: FLdRfVar var_D8
  loc_71DEAD: ImpAdCallFPR4  = Chr()
  loc_71DEB2: FLdRfVar var_D8
  loc_71DEB5: ConcatVar var_F8
  loc_71DEB9: LitVarStr var_10C, "RETENIDO"
  loc_71DEBE: ConcatVar var_12C
  loc_71DEC2: CStrVarTmp
  loc_71DEC3: FStStr var_8C
  loc_71DEC6: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DECF: FLdRfVar var_8C
  loc_71DED2: CDargRef
  loc_71DED6: FLdPrThis
  loc_71DED7: VCallAd Control_ID_gLista
  loc_71DEDA: FStAdFunc var_B8
  loc_71DEDD: FLdPr var_B8
  loc_71DEE0: LateIdCall
  loc_71DEE8: FFree1Ad var_B8
  loc_71DEEB: LitI2_Byte 1
  loc_71DEED: FLdRfVar var_94
  loc_71DEF0: FLdI2 var_96
  loc_71DEF3: LitI2_Byte 1
  loc_71DEF5: SubI2
  loc_71DEF6: ForI2 var_220
  loc_71DEFC: FLdI2 var_94
  loc_71DEFF: CI4UI1
  loc_71DF00: FLdPr Me
  loc_71DF03: MemLdRfVar from_stack_1.global_128
  loc_71DF06: Ary1LdI4
  loc_71DF07: CVarStr var_E8
  loc_71DF0A: LitI4 9
  loc_71DF0F: FLdRfVar var_D8
  loc_71DF12: ImpAdCallFPR4  = Chr()
  loc_71DF17: FLdRfVar var_D8
  loc_71DF1A: ConcatVar var_F8
  loc_71DF1E: FLdI2 var_94
  loc_71DF21: CI4UI1
  loc_71DF22: FLdPr Me
  loc_71DF25: MemLdRfVar from_stack_1.global_104
  loc_71DF28: Ary1LdI4
  loc_71DF29: CVarStr var_10C
  loc_71DF2C: ConcatVar var_12C
  loc_71DF30: CStrVarTmp
  loc_71DF31: FStStr var_8C
  loc_71DF34: FFreeVar var_D8 = "": var_F8 = ""
  loc_71DF3D: FLdRfVar var_8C
  loc_71DF40: CDargRef
  loc_71DF44: FLdPrThis
  loc_71DF45: VCallAd Control_ID_gLista
  loc_71DF48: FStAdFunc var_B8
  loc_71DF4B: FLdPr var_B8
  loc_71DF4E: LateIdCall
  loc_71DF56: FFree1Ad var_B8
  loc_71DF59: FLdRfVar var_94
  loc_71DF5C: NextI2 var_220, loc_71DEFC
  loc_71DF61: LitVarStr var_E8, "TOTAL "
  loc_71DF66: LitI4 9
  loc_71DF6B: FLdRfVar var_D8
  loc_71DF6E: ImpAdCallFPR4  = Chr()
  loc_71DF73: FLdRfVar var_D8
  loc_71DF76: ConcatVar var_F8
  loc_71DF7A: FLdPr Me
  loc_71DF7D: MemLdStr global_152
  loc_71DF80: CVarStr var_10C
  loc_71DF83: ConcatVar var_12C
  loc_71DF87: CStrVarTmp
  loc_71DF88: CVarStr var_144
  loc_71DF8B: PopAdLdVar
  loc_71DF8C: FLdPrThis
  loc_71DF8D: VCallAd Control_ID_gLista
  loc_71DF90: FStAdFunc var_B8
  loc_71DF93: FLdPr var_B8
  loc_71DF96: LateIdCall
  loc_71DF9E: FFree1Ad var_B8
  loc_71DFA1: FFreeVar var_D8 = "": var_F8 = "": var_12C = ""
  loc_71DFAC: LitVarStr var_E8, vbNullString
  loc_71DFB1: PopAdLdVar
  loc_71DFB2: FLdPrThis
  loc_71DFB3: VCallAd Control_ID_gLista
  loc_71DFB6: FStAdFunc var_B8
  loc_71DFB9: FLdPr var_B8
  loc_71DFBC: LateIdCall
  loc_71DFC4: FFree1Ad var_B8
  loc_71DFC7: FLdI2 var_8E
  loc_71DFCA: CI4UI1
  loc_71DFCB: FLdPr Me
  loc_71DFCE: MemLdStr global_80
  loc_71DFD1: FnLenStr
  loc_71DFD2: LtI4
  loc_71DFD3: BranchF loc_71E454
  loc_71DFD6: LitVarI2 var_D8, 2
  loc_71DFDB: FLdI2 var_8E
  loc_71DFDE: CI4UI1
  loc_71DFDF: FLdPr Me
  loc_71DFE2: MemLdStr global_80
  loc_71DFE5: ImpAdCallI2 Mid$(, , )
  loc_71DFEA: FStStrNoPop var_BC
  loc_71DFED: ImpAdCallFPR4 push Val()
  loc_71DFF2: CI2R8
  loc_71DFF3: FStI2 var_90
  loc_71DFF6: FFree1Str var_BC
  loc_71DFF9: FFree1Var var_D8 = ""
  loc_71DFFC: FLdI2 var_90
  loc_71DFFF: LitI2_Byte &H14
  loc_71E001: NeI2
  loc_71E002: BranchF loc_71E011
  loc_71E005: FLdI2 var_8E
  loc_71E008: LitI2_Byte &H37
  loc_71E00A: AddI2
  loc_71E00B: FStI2 var_8E
  loc_71E00E: Branch loc_71E451
  loc_71E011: FLdI2 var_8E
  loc_71E014: LitI2_Byte 2
  loc_71E016: AddI2
  loc_71E017: FStI2 var_8E
  loc_71E01A: LitVarStr var_E8, vbNullString
  loc_71E01F: PopAdLdVar
  loc_71E020: FLdPrThis
  loc_71E021: VCallAd Control_ID_gLista
  loc_71E024: FStAdFunc var_B8
  loc_71E027: FLdPr var_B8
  loc_71E02A: LateIdCall
  loc_71E032: FFree1Ad var_B8
  loc_71E035: LitStr "Subtotal Ventas"
  loc_71E038: FStStrCopy var_8C
  loc_71E03B: FLdI2 var_8E
  loc_71E03E: LitI2_Byte 2
  loc_71E040: AddI2
  loc_71E041: FStI2 var_8E
  loc_71E044: LitVarI2 var_12C, 10
  loc_71E049: FLdI2 var_8E
  loc_71E04C: CI4UI1
  loc_71E04D: FLdPr Me
  loc_71E050: MemLdStr global_80
  loc_71E053: ImpAdCallI2 Mid$(, , )
  loc_71E058: FStStrNoPop var_BC
  loc_71E05B: ImpAdCallFPR4 push Val()
  loc_71E060: FStFPR8 var_134
  loc_71E063: ILdRf var_8C
  loc_71E066: CVarStr var_E8
  loc_71E069: LitI4 9
  loc_71E06E: FLdRfVar var_D8
  loc_71E071: ImpAdCallFPR4  = Chr()
  loc_71E076: FLdRfVar var_D8
  loc_71E079: ConcatVar var_F8
  loc_71E07D: LitI4 1
  loc_71E082: LitI4 1
  loc_71E087: LitVarStr var_158, "######0.00"
  loc_71E08C: FStVarCopyObj var_1FC
  loc_71E08F: FLdRfVar var_1FC
  loc_71E092: FLdFPR8 var_134
  loc_71E095: LitI2_Byte &H64
  loc_71E097: CR8I2
  loc_71E098: DivR8
  loc_71E099: CVarR8
  loc_71E09D: ImpAdCallI2 Format$(, )
  loc_71E0A2: CVarStr var_20C
  loc_71E0A5: ConcatVar var_21C
  loc_71E0A9: CStrVarTmp
  loc_71E0AA: FStStr var_8C
  loc_71E0AD: FFree1Str var_BC
  loc_71E0B0: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E0C1: FLdI2 var_8E
  loc_71E0C4: LitI2_Byte &HA
  loc_71E0C6: AddI2
  loc_71E0C7: FStI2 var_8E
  loc_71E0CA: LitVarI2 var_12C, 10
  loc_71E0CF: FLdI2 var_8E
  loc_71E0D2: CI4UI1
  loc_71E0D3: FLdPr Me
  loc_71E0D6: MemLdStr global_80
  loc_71E0D9: ImpAdCallI2 Mid$(, , )
  loc_71E0DE: FStStrNoPop var_BC
  loc_71E0E1: ImpAdCallFPR4 push Val()
  loc_71E0E6: FStFPR8 var_134
  loc_71E0E9: ILdRf var_8C
  loc_71E0EC: CVarStr var_E8
  loc_71E0EF: LitI4 9
  loc_71E0F4: FLdRfVar var_D8
  loc_71E0F7: ImpAdCallFPR4  = Chr()
  loc_71E0FC: FLdRfVar var_D8
  loc_71E0FF: ConcatVar var_F8
  loc_71E103: LitI4 1
  loc_71E108: LitI4 1
  loc_71E10D: LitVarStr var_158, "######0.00"
  loc_71E112: FStVarCopyObj var_1FC
  loc_71E115: FLdRfVar var_1FC
  loc_71E118: FLdFPR8 var_134
  loc_71E11B: LitI2_Byte &H64
  loc_71E11D: CR8I2
  loc_71E11E: DivR8
  loc_71E11F: CVarR8
  loc_71E123: ImpAdCallI2 Format$(, )
  loc_71E128: CVarStr var_20C
  loc_71E12B: ConcatVar var_21C
  loc_71E12F: CStrVarTmp
  loc_71E130: FStStr var_8C
  loc_71E133: FFree1Str var_BC
  loc_71E136: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E147: FLdI2 var_8E
  loc_71E14A: LitI2_Byte &HA
  loc_71E14C: AddI2
  loc_71E14D: FStI2 var_8E
  loc_71E150: LitVarI2 var_12C, 10
  loc_71E155: FLdI2 var_8E
  loc_71E158: CI4UI1
  loc_71E159: FLdPr Me
  loc_71E15C: MemLdStr global_80
  loc_71E15F: ImpAdCallI2 Mid$(, , )
  loc_71E164: FStStrNoPop var_BC
  loc_71E167: ImpAdCallFPR4 push Val()
  loc_71E16C: FStFPR8 var_134
  loc_71E16F: ILdRf var_8C
  loc_71E172: CVarStr var_E8
  loc_71E175: LitI4 9
  loc_71E17A: FLdRfVar var_D8
  loc_71E17D: ImpAdCallFPR4  = Chr()
  loc_71E182: FLdRfVar var_D8
  loc_71E185: ConcatVar var_F8
  loc_71E189: LitI4 1
  loc_71E18E: LitI4 1
  loc_71E193: LitVarStr var_158, "######0.00"
  loc_71E198: FStVarCopyObj var_1FC
  loc_71E19B: FLdRfVar var_1FC
  loc_71E19E: FLdFPR8 var_134
  loc_71E1A1: LitI2_Byte &H64
  loc_71E1A3: CR8I2
  loc_71E1A4: DivR8
  loc_71E1A5: CVarR8
  loc_71E1A9: ImpAdCallI2 Format$(, )
  loc_71E1AE: CVarStr var_20C
  loc_71E1B1: ConcatVar var_21C
  loc_71E1B5: CStrVarTmp
  loc_71E1B6: FStStr var_8C
  loc_71E1B9: FFree1Str var_BC
  loc_71E1BC: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E1CD: FLdI2 var_8E
  loc_71E1D0: LitI2_Byte &HA
  loc_71E1D2: AddI2
  loc_71E1D3: FStI2 var_8E
  loc_71E1D6: LitVarI2 var_12C, 10
  loc_71E1DB: FLdI2 var_8E
  loc_71E1DE: CI4UI1
  loc_71E1DF: FLdPr Me
  loc_71E1E2: MemLdStr global_80
  loc_71E1E5: ImpAdCallI2 Mid$(, , )
  loc_71E1EA: FStStrNoPop var_BC
  loc_71E1ED: ImpAdCallFPR4 push Val()
  loc_71E1F2: FStFPR8 var_134
  loc_71E1F5: ILdRf var_8C
  loc_71E1F8: CVarStr var_E8
  loc_71E1FB: LitI4 9
  loc_71E200: FLdRfVar var_D8
  loc_71E203: ImpAdCallFPR4  = Chr()
  loc_71E208: FLdRfVar var_D8
  loc_71E20B: ConcatVar var_F8
  loc_71E20F: LitI4 1
  loc_71E214: LitI4 1
  loc_71E219: LitVarStr var_158, "######0.00"
  loc_71E21E: FStVarCopyObj var_1FC
  loc_71E221: FLdRfVar var_1FC
  loc_71E224: FLdFPR8 var_134
  loc_71E227: LitI2_Byte &H64
  loc_71E229: CR8I2
  loc_71E22A: DivR8
  loc_71E22B: CVarR8
  loc_71E22F: ImpAdCallI2 Format$(, )
  loc_71E234: CVarStr var_20C
  loc_71E237: ConcatVar var_21C
  loc_71E23B: CStrVarTmp
  loc_71E23C: FStStr var_8C
  loc_71E23F: FFree1Str var_BC
  loc_71E242: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E253: FLdI2 var_8E
  loc_71E256: LitI2_Byte &HA
  loc_71E258: AddI2
  loc_71E259: FStI2 var_8E
  loc_71E25C: FLdPr Me
  loc_71E25F: MemLdStr global_156
  loc_71E262: LitStr "0000004"
  loc_71E265: GeStr
  loc_71E267: BranchF loc_71E38C
  loc_71E26A: LitVarI2 var_D8, 10
  loc_71E26F: FLdI2 var_8E
  loc_71E272: CI4UI1
  loc_71E273: FLdPr Me
  loc_71E276: MemLdRfVar from_stack_1.global_80
  loc_71E279: CVarRef
  loc_71E27E: FLdRfVar var_F8
  loc_71E281: ImpAdCallFPR4  = Mid(, , )
  loc_71E286: FLdRfVar var_F8
  loc_71E289: FnCDblVar
  loc_71E28B: LitI2_Byte &H64
  loc_71E28D: CR8I2
  loc_71E28E: DivR8
  loc_71E28F: FStFPR8 var_A8
  loc_71E292: FFreeVar var_D8 = "": var_F8 = ""
  loc_71E29B: FLdI2 var_8E
  loc_71E29E: LitI2_Byte &HA
  loc_71E2A0: AddI2
  loc_71E2A1: FStI2 var_8E
  loc_71E2A4: LitVarI2 var_D8, 10
  loc_71E2A9: FLdI2 var_8E
  loc_71E2AC: CI4UI1
  loc_71E2AD: FLdPr Me
  loc_71E2B0: MemLdRfVar from_stack_1.global_80
  loc_71E2B3: CVarRef
  loc_71E2B8: FLdRfVar var_F8
  loc_71E2BB: ImpAdCallFPR4  = Mid(, , )
  loc_71E2C0: FLdRfVar var_F8
  loc_71E2C3: FnCDblVar
  loc_71E2C5: LitI2_Byte &H64
  loc_71E2C7: CR8I2
  loc_71E2C8: DivR8
  loc_71E2C9: FStFPR8 var_B0
  loc_71E2CC: FFreeVar var_D8 = "": var_F8 = ""
  loc_71E2D5: FLdI2 var_8E
  loc_71E2D8: LitI2_Byte &HA
  loc_71E2DA: AddI2
  loc_71E2DB: FStI2 var_8E
  loc_71E2DE: ILdRf var_8C
  loc_71E2E1: CVarStr var_E8
  loc_71E2E4: LitI4 9
  loc_71E2E9: FLdRfVar var_D8
  loc_71E2EC: ImpAdCallFPR4  = Chr()
  loc_71E2F1: FLdRfVar var_D8
  loc_71E2F4: ConcatVar var_F8
  loc_71E2F8: LitI4 1
  loc_71E2FD: LitI4 1
  loc_71E302: LitVarStr var_11C, "#######0.00"
  loc_71E307: FStVarCopyObj var_12C
  loc_71E30A: FLdRfVar var_12C
  loc_71E30D: FLdRfVar var_A8
  loc_71E310: CVarRef
  loc_71E315: FLdRfVar var_144
  loc_71E318: ImpAdCallFPR4  = Format(, )
  loc_71E31D: FLdRfVar var_144
  loc_71E320: ConcatVar var_1FC
  loc_71E324: CStrVarTmp
  loc_71E325: FStStr var_8C
  loc_71E328: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71E335: ILdRf var_8C
  loc_71E338: CVarStr var_E8
  loc_71E33B: LitI4 9
  loc_71E340: FLdRfVar var_D8
  loc_71E343: ImpAdCallFPR4  = Chr()
  loc_71E348: FLdRfVar var_D8
  loc_71E34B: ConcatVar var_F8
  loc_71E34F: LitI4 1
  loc_71E354: LitI4 1
  loc_71E359: LitVarStr var_11C, "#######0.00"
  loc_71E35E: FStVarCopyObj var_12C
  loc_71E361: FLdRfVar var_12C
  loc_71E364: FLdRfVar var_B0
  loc_71E367: CVarRef
  loc_71E36C: FLdRfVar var_144
  loc_71E36F: ImpAdCallFPR4  = Format(, )
  loc_71E374: FLdRfVar var_144
  loc_71E377: ConcatVar var_1FC
  loc_71E37B: CStrVarTmp
  loc_71E37C: FStStr var_8C
  loc_71E37F: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71E38C: FLdPr Me
  loc_71E38F: MemLdStr global_156
  loc_71E392: LitStr "0000003"
  loc_71E395: GeStr
  loc_71E397: BranchF loc_71E3A3
  loc_71E39A: FLdI2 var_8E
  loc_71E39D: LitI2_Byte &HA
  loc_71E39F: AddI2
  loc_71E3A0: FStI2 var_8E
  loc_71E3A3: LitVarI2 var_12C, 10
  loc_71E3A8: FLdI2 var_8E
  loc_71E3AB: CI4UI1
  loc_71E3AC: FLdPr Me
  loc_71E3AF: MemLdStr global_80
  loc_71E3B2: ImpAdCallI2 Mid$(, , )
  loc_71E3B7: FStStrNoPop var_BC
  loc_71E3BA: ImpAdCallFPR4 push Val()
  loc_71E3BF: FStFPR8 var_134
  loc_71E3C2: ILdRf var_8C
  loc_71E3C5: CVarStr var_E8
  loc_71E3C8: LitI4 9
  loc_71E3CD: FLdRfVar var_D8
  loc_71E3D0: ImpAdCallFPR4  = Chr()
  loc_71E3D5: FLdRfVar var_D8
  loc_71E3D8: ConcatVar var_F8
  loc_71E3DC: LitI4 1
  loc_71E3E1: LitI4 1
  loc_71E3E6: LitVarStr var_158, "######0.00"
  loc_71E3EB: FStVarCopyObj var_1FC
  loc_71E3EE: FLdRfVar var_1FC
  loc_71E3F1: FLdFPR8 var_134
  loc_71E3F4: LitI2_Byte &H64
  loc_71E3F6: CR8I2
  loc_71E3F7: DivR8
  loc_71E3F8: CVarR8
  loc_71E3FC: ImpAdCallI2 Format$(, )
  loc_71E401: CVarStr var_20C
  loc_71E404: ConcatVar var_21C
  loc_71E408: CStrVarTmp
  loc_71E409: FStStr var_8C
  loc_71E40C: FFree1Str var_BC
  loc_71E40F: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E420: FLdI2 var_8E
  loc_71E423: LitI2_Byte &HA
  loc_71E425: AddI2
  loc_71E426: FStI2 var_8E
  loc_71E429: FLdI2 var_8E
  loc_71E42C: LitI2_Byte 1
  loc_71E42E: AddI2
  loc_71E42F: FStI2 var_8E
  loc_71E432: FLdRfVar var_8C
  loc_71E435: CDargRef
  loc_71E439: FLdPrThis
  loc_71E43A: VCallAd Control_ID_gLista
  loc_71E43D: FStAdFunc var_B8
  loc_71E440: FLdPr var_B8
  loc_71E443: LateIdCall
  loc_71E44B: FFree1Ad var_B8
  loc_71E44E: Branch loc_71E454
  loc_71E451: Branch loc_71DFC7
  loc_71E454: FLdI2 var_8E
  loc_71E457: CI4UI1
  loc_71E458: FLdPr Me
  loc_71E45B: MemLdStr global_80
  loc_71E45E: FnLenStr
  loc_71E45F: LtI4
  loc_71E460: BranchF loc_71E8E1
  loc_71E463: LitVarI2 var_D8, 2
  loc_71E468: FLdI2 var_8E
  loc_71E46B: CI4UI1
  loc_71E46C: FLdPr Me
  loc_71E46F: MemLdStr global_80
  loc_71E472: ImpAdCallI2 Mid$(, , )
  loc_71E477: FStStrNoPop var_BC
  loc_71E47A: ImpAdCallFPR4 push Val()
  loc_71E47F: CI2R8
  loc_71E480: FStI2 var_90
  loc_71E483: FFree1Str var_BC
  loc_71E486: FFree1Var var_D8 = ""
  loc_71E489: FLdI2 var_90
  loc_71E48C: LitI2_Byte &H1E
  loc_71E48E: NeI2
  loc_71E48F: BranchF loc_71E49E
  loc_71E492: FLdI2 var_8E
  loc_71E495: LitI2_Byte &H37
  loc_71E497: AddI2
  loc_71E498: FStI2 var_8E
  loc_71E49B: Branch loc_71E8DE
  loc_71E49E: FLdI2 var_8E
  loc_71E4A1: LitI2_Byte 2
  loc_71E4A3: AddI2
  loc_71E4A4: FStI2 var_8E
  loc_71E4A7: LitVarStr var_E8, vbNullString
  loc_71E4AC: PopAdLdVar
  loc_71E4AD: FLdPrThis
  loc_71E4AE: VCallAd Control_ID_gLista
  loc_71E4B1: FStAdFunc var_B8
  loc_71E4B4: FLdPr var_B8
  loc_71E4B7: LateIdCall
  loc_71E4BF: FFree1Ad var_B8
  loc_71E4C2: LitStr "Comision"
  loc_71E4C5: FStStrCopy var_8C
  loc_71E4C8: FLdI2 var_8E
  loc_71E4CB: LitI2_Byte 2
  loc_71E4CD: AddI2
  loc_71E4CE: FStI2 var_8E
  loc_71E4D1: LitVarI2 var_12C, 10
  loc_71E4D6: FLdI2 var_8E
  loc_71E4D9: CI4UI1
  loc_71E4DA: FLdPr Me
  loc_71E4DD: MemLdStr global_80
  loc_71E4E0: ImpAdCallI2 Mid$(, , )
  loc_71E4E5: FStStrNoPop var_BC
  loc_71E4E8: ImpAdCallFPR4 push Val()
  loc_71E4ED: FStFPR8 var_134
  loc_71E4F0: ILdRf var_8C
  loc_71E4F3: CVarStr var_E8
  loc_71E4F6: LitI4 9
  loc_71E4FB: FLdRfVar var_D8
  loc_71E4FE: ImpAdCallFPR4  = Chr()
  loc_71E503: FLdRfVar var_D8
  loc_71E506: ConcatVar var_F8
  loc_71E50A: LitI4 1
  loc_71E50F: LitI4 1
  loc_71E514: LitVarStr var_158, "######0.00"
  loc_71E519: FStVarCopyObj var_1FC
  loc_71E51C: FLdRfVar var_1FC
  loc_71E51F: FLdFPR8 var_134
  loc_71E522: LitI2_Byte &H64
  loc_71E524: CR8I2
  loc_71E525: DivR8
  loc_71E526: CVarR8
  loc_71E52A: ImpAdCallI2 Format$(, )
  loc_71E52F: CVarStr var_20C
  loc_71E532: ConcatVar var_21C
  loc_71E536: CStrVarTmp
  loc_71E537: FStStr var_8C
  loc_71E53A: FFree1Str var_BC
  loc_71E53D: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E54E: FLdI2 var_8E
  loc_71E551: LitI2_Byte &HA
  loc_71E553: AddI2
  loc_71E554: FStI2 var_8E
  loc_71E557: LitVarI2 var_12C, 10
  loc_71E55C: FLdI2 var_8E
  loc_71E55F: CI4UI1
  loc_71E560: FLdPr Me
  loc_71E563: MemLdStr global_80
  loc_71E566: ImpAdCallI2 Mid$(, , )
  loc_71E56B: FStStrNoPop var_BC
  loc_71E56E: ImpAdCallFPR4 push Val()
  loc_71E573: FStFPR8 var_134
  loc_71E576: ILdRf var_8C
  loc_71E579: CVarStr var_E8
  loc_71E57C: LitI4 9
  loc_71E581: FLdRfVar var_D8
  loc_71E584: ImpAdCallFPR4  = Chr()
  loc_71E589: FLdRfVar var_D8
  loc_71E58C: ConcatVar var_F8
  loc_71E590: LitI4 1
  loc_71E595: LitI4 1
  loc_71E59A: LitVarStr var_158, "######0.00"
  loc_71E59F: FStVarCopyObj var_1FC
  loc_71E5A2: FLdRfVar var_1FC
  loc_71E5A5: FLdFPR8 var_134
  loc_71E5A8: LitI2_Byte &H64
  loc_71E5AA: CR8I2
  loc_71E5AB: DivR8
  loc_71E5AC: CVarR8
  loc_71E5B0: ImpAdCallI2 Format$(, )
  loc_71E5B5: CVarStr var_20C
  loc_71E5B8: ConcatVar var_21C
  loc_71E5BC: CStrVarTmp
  loc_71E5BD: FStStr var_8C
  loc_71E5C0: FFree1Str var_BC
  loc_71E5C3: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E5D4: FLdI2 var_8E
  loc_71E5D7: LitI2_Byte &HA
  loc_71E5D9: AddI2
  loc_71E5DA: FStI2 var_8E
  loc_71E5DD: LitVarI2 var_12C, 10
  loc_71E5E2: FLdI2 var_8E
  loc_71E5E5: CI4UI1
  loc_71E5E6: FLdPr Me
  loc_71E5E9: MemLdStr global_80
  loc_71E5EC: ImpAdCallI2 Mid$(, , )
  loc_71E5F1: FStStrNoPop var_BC
  loc_71E5F4: ImpAdCallFPR4 push Val()
  loc_71E5F9: FStFPR8 var_134
  loc_71E5FC: ILdRf var_8C
  loc_71E5FF: CVarStr var_E8
  loc_71E602: LitI4 9
  loc_71E607: FLdRfVar var_D8
  loc_71E60A: ImpAdCallFPR4  = Chr()
  loc_71E60F: FLdRfVar var_D8
  loc_71E612: ConcatVar var_F8
  loc_71E616: LitI4 1
  loc_71E61B: LitI4 1
  loc_71E620: LitVarStr var_158, "######0.00"
  loc_71E625: FStVarCopyObj var_1FC
  loc_71E628: FLdRfVar var_1FC
  loc_71E62B: FLdFPR8 var_134
  loc_71E62E: LitI2_Byte &H64
  loc_71E630: CR8I2
  loc_71E631: DivR8
  loc_71E632: CVarR8
  loc_71E636: ImpAdCallI2 Format$(, )
  loc_71E63B: CVarStr var_20C
  loc_71E63E: ConcatVar var_21C
  loc_71E642: CStrVarTmp
  loc_71E643: FStStr var_8C
  loc_71E646: FFree1Str var_BC
  loc_71E649: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E65A: FLdI2 var_8E
  loc_71E65D: LitI2_Byte &HA
  loc_71E65F: AddI2
  loc_71E660: FStI2 var_8E
  loc_71E663: LitVarI2 var_12C, 10
  loc_71E668: FLdI2 var_8E
  loc_71E66B: CI4UI1
  loc_71E66C: FLdPr Me
  loc_71E66F: MemLdStr global_80
  loc_71E672: ImpAdCallI2 Mid$(, , )
  loc_71E677: FStStrNoPop var_BC
  loc_71E67A: ImpAdCallFPR4 push Val()
  loc_71E67F: FStFPR8 var_134
  loc_71E682: ILdRf var_8C
  loc_71E685: CVarStr var_E8
  loc_71E688: LitI4 9
  loc_71E68D: FLdRfVar var_D8
  loc_71E690: ImpAdCallFPR4  = Chr()
  loc_71E695: FLdRfVar var_D8
  loc_71E698: ConcatVar var_F8
  loc_71E69C: LitI4 1
  loc_71E6A1: LitI4 1
  loc_71E6A6: LitVarStr var_158, "######0.00"
  loc_71E6AB: FStVarCopyObj var_1FC
  loc_71E6AE: FLdRfVar var_1FC
  loc_71E6B1: FLdFPR8 var_134
  loc_71E6B4: LitI2_Byte &H64
  loc_71E6B6: CR8I2
  loc_71E6B7: DivR8
  loc_71E6B8: CVarR8
  loc_71E6BC: ImpAdCallI2 Format$(, )
  loc_71E6C1: CVarStr var_20C
  loc_71E6C4: ConcatVar var_21C
  loc_71E6C8: CStrVarTmp
  loc_71E6C9: FStStr var_8C
  loc_71E6CC: FFree1Str var_BC
  loc_71E6CF: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E6E0: FLdI2 var_8E
  loc_71E6E3: LitI2_Byte &HA
  loc_71E6E5: AddI2
  loc_71E6E6: FStI2 var_8E
  loc_71E6E9: FLdPr Me
  loc_71E6EC: MemLdStr global_156
  loc_71E6EF: LitStr "0000004"
  loc_71E6F2: GeStr
  loc_71E6F4: BranchF loc_71E819
  loc_71E6F7: LitVarI2 var_D8, 10
  loc_71E6FC: FLdI2 var_8E
  loc_71E6FF: CI4UI1
  loc_71E700: FLdPr Me
  loc_71E703: MemLdRfVar from_stack_1.global_80
  loc_71E706: CVarRef
  loc_71E70B: FLdRfVar var_F8
  loc_71E70E: ImpAdCallFPR4  = Mid(, , )
  loc_71E713: FLdRfVar var_F8
  loc_71E716: FnCDblVar
  loc_71E718: LitI2_Byte &H64
  loc_71E71A: CR8I2
  loc_71E71B: DivR8
  loc_71E71C: FStFPR8 var_A8
  loc_71E71F: FFreeVar var_D8 = "": var_F8 = ""
  loc_71E728: FLdI2 var_8E
  loc_71E72B: LitI2_Byte &HA
  loc_71E72D: AddI2
  loc_71E72E: FStI2 var_8E
  loc_71E731: LitVarI2 var_D8, 10
  loc_71E736: FLdI2 var_8E
  loc_71E739: CI4UI1
  loc_71E73A: FLdPr Me
  loc_71E73D: MemLdRfVar from_stack_1.global_80
  loc_71E740: CVarRef
  loc_71E745: FLdRfVar var_F8
  loc_71E748: ImpAdCallFPR4  = Mid(, , )
  loc_71E74D: FLdRfVar var_F8
  loc_71E750: FnCDblVar
  loc_71E752: LitI2_Byte &H64
  loc_71E754: CR8I2
  loc_71E755: DivR8
  loc_71E756: FStFPR8 var_B0
  loc_71E759: FFreeVar var_D8 = "": var_F8 = ""
  loc_71E762: ILdRf var_8C
  loc_71E765: CVarStr var_E8
  loc_71E768: LitI4 9
  loc_71E76D: FLdRfVar var_D8
  loc_71E770: ImpAdCallFPR4  = Chr()
  loc_71E775: FLdRfVar var_D8
  loc_71E778: ConcatVar var_F8
  loc_71E77C: LitI4 1
  loc_71E781: LitI4 1
  loc_71E786: LitVarStr var_11C, "#######0.00"
  loc_71E78B: FStVarCopyObj var_12C
  loc_71E78E: FLdRfVar var_12C
  loc_71E791: FLdRfVar var_A8
  loc_71E794: CVarRef
  loc_71E799: FLdRfVar var_144
  loc_71E79C: ImpAdCallFPR4  = Format(, )
  loc_71E7A1: FLdRfVar var_144
  loc_71E7A4: ConcatVar var_1FC
  loc_71E7A8: CStrVarTmp
  loc_71E7A9: FStStr var_8C
  loc_71E7AC: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71E7B9: ILdRf var_8C
  loc_71E7BC: CVarStr var_E8
  loc_71E7BF: LitI4 9
  loc_71E7C4: FLdRfVar var_D8
  loc_71E7C7: ImpAdCallFPR4  = Chr()
  loc_71E7CC: FLdRfVar var_D8
  loc_71E7CF: ConcatVar var_F8
  loc_71E7D3: LitI4 1
  loc_71E7D8: LitI4 1
  loc_71E7DD: LitVarStr var_11C, "#######0.00"
  loc_71E7E2: FStVarCopyObj var_12C
  loc_71E7E5: FLdRfVar var_12C
  loc_71E7E8: FLdRfVar var_B0
  loc_71E7EB: CVarRef
  loc_71E7F0: FLdRfVar var_144
  loc_71E7F3: ImpAdCallFPR4  = Format(, )
  loc_71E7F8: FLdRfVar var_144
  loc_71E7FB: ConcatVar var_1FC
  loc_71E7FF: CStrVarTmp
  loc_71E800: FStStr var_8C
  loc_71E803: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71E810: FLdI2 var_8E
  loc_71E813: LitI2_Byte &HA
  loc_71E815: AddI2
  loc_71E816: FStI2 var_8E
  loc_71E819: FLdPr Me
  loc_71E81C: MemLdStr global_156
  loc_71E81F: LitStr "0000003"
  loc_71E822: GeStr
  loc_71E824: BranchF loc_71E830
  loc_71E827: FLdI2 var_8E
  loc_71E82A: LitI2_Byte &HA
  loc_71E82C: AddI2
  loc_71E82D: FStI2 var_8E
  loc_71E830: LitVarI2 var_12C, 10
  loc_71E835: FLdI2 var_8E
  loc_71E838: CI4UI1
  loc_71E839: FLdPr Me
  loc_71E83C: MemLdStr global_80
  loc_71E83F: ImpAdCallI2 Mid$(, , )
  loc_71E844: FStStrNoPop var_BC
  loc_71E847: ImpAdCallFPR4 push Val()
  loc_71E84C: FStFPR8 var_134
  loc_71E84F: ILdRf var_8C
  loc_71E852: CVarStr var_E8
  loc_71E855: LitI4 9
  loc_71E85A: FLdRfVar var_D8
  loc_71E85D: ImpAdCallFPR4  = Chr()
  loc_71E862: FLdRfVar var_D8
  loc_71E865: ConcatVar var_F8
  loc_71E869: LitI4 1
  loc_71E86E: LitI4 1
  loc_71E873: LitVarStr var_158, "######0.00"
  loc_71E878: FStVarCopyObj var_1FC
  loc_71E87B: FLdRfVar var_1FC
  loc_71E87E: FLdFPR8 var_134
  loc_71E881: LitI2_Byte &H64
  loc_71E883: CR8I2
  loc_71E884: DivR8
  loc_71E885: CVarR8
  loc_71E889: ImpAdCallI2 Format$(, )
  loc_71E88E: CVarStr var_20C
  loc_71E891: ConcatVar var_21C
  loc_71E895: CStrVarTmp
  loc_71E896: FStStr var_8C
  loc_71E899: FFree1Str var_BC
  loc_71E89C: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E8AD: FLdI2 var_8E
  loc_71E8B0: LitI2_Byte &HA
  loc_71E8B2: AddI2
  loc_71E8B3: FStI2 var_8E
  loc_71E8B6: FLdI2 var_8E
  loc_71E8B9: LitI2_Byte 1
  loc_71E8BB: AddI2
  loc_71E8BC: FStI2 var_8E
  loc_71E8BF: FLdRfVar var_8C
  loc_71E8C2: CDargRef
  loc_71E8C6: FLdPrThis
  loc_71E8C7: VCallAd Control_ID_gLista
  loc_71E8CA: FStAdFunc var_B8
  loc_71E8CD: FLdPr var_B8
  loc_71E8D0: LateIdCall
  loc_71E8D8: FFree1Ad var_B8
  loc_71E8DB: Branch loc_71E8E1
  loc_71E8DE: Branch loc_71E454
  loc_71E8E1: FLdI2 var_8E
  loc_71E8E4: CI4UI1
  loc_71E8E5: FLdPr Me
  loc_71E8E8: MemLdStr global_80
  loc_71E8EB: FnLenStr
  loc_71E8EC: LtI4
  loc_71E8ED: BranchF loc_71EDC8
  loc_71E8F0: LitVarI2 var_D8, 2
  loc_71E8F5: FLdI2 var_8E
  loc_71E8F8: CI4UI1
  loc_71E8F9: FLdPr Me
  loc_71E8FC: MemLdStr global_80
  loc_71E8FF: ImpAdCallI2 Mid$(, , )
  loc_71E904: FStStrNoPop var_BC
  loc_71E907: ImpAdCallFPR4 push Val()
  loc_71E90C: CI2R8
  loc_71E90D: FStI2 var_90
  loc_71E910: FFree1Str var_BC
  loc_71E913: FFree1Var var_D8 = ""
  loc_71E916: FLdI2 var_90
  loc_71E919: LitI2_Byte &H5A
  loc_71E91B: NeI2
  loc_71E91C: BranchF loc_71E92B
  loc_71E91F: FLdI2 var_8E
  loc_71E922: LitI2_Byte &H37
  loc_71E924: AddI2
  loc_71E925: FStI2 var_8E
  loc_71E928: Branch loc_71EDC5
  loc_71E92B: FLdI2 var_8E
  loc_71E92E: LitI2_Byte 2
  loc_71E930: AddI2
  loc_71E931: FStI2 var_8E
  loc_71E934: LitVarStr var_E8, vbNullString
  loc_71E939: PopAdLdVar
  loc_71E93A: FLdPrThis
  loc_71E93B: VCallAd Control_ID_gLista
  loc_71E93E: FStAdFunc var_B8
  loc_71E941: FLdPr var_B8
  loc_71E944: LateIdCall
  loc_71E94C: FFree1Ad var_B8
  loc_71E94F: LitStr "Total a Liquidar"
  loc_71E952: FStStrCopy var_8C
  loc_71E955: FLdI2 var_8E
  loc_71E958: LitI2_Byte 2
  loc_71E95A: AddI2
  loc_71E95B: FStI2 var_8E
  loc_71E95E: LitVarI2 var_12C, 10
  loc_71E963: FLdI2 var_8E
  loc_71E966: CI4UI1
  loc_71E967: FLdPr Me
  loc_71E96A: MemLdStr global_80
  loc_71E96D: ImpAdCallI2 Mid$(, , )
  loc_71E972: FStStrNoPop var_BC
  loc_71E975: ImpAdCallFPR4 push Val()
  loc_71E97A: FStFPR8 var_134
  loc_71E97D: ILdRf var_8C
  loc_71E980: CVarStr var_E8
  loc_71E983: LitI4 9
  loc_71E988: FLdRfVar var_D8
  loc_71E98B: ImpAdCallFPR4  = Chr()
  loc_71E990: FLdRfVar var_D8
  loc_71E993: ConcatVar var_F8
  loc_71E997: LitI4 1
  loc_71E99C: LitI4 1
  loc_71E9A1: LitVarStr var_158, "######0.00"
  loc_71E9A6: FStVarCopyObj var_1FC
  loc_71E9A9: FLdRfVar var_1FC
  loc_71E9AC: FLdFPR8 var_134
  loc_71E9AF: LitI2_Byte &H64
  loc_71E9B1: CR8I2
  loc_71E9B2: DivR8
  loc_71E9B3: CVarR8
  loc_71E9B7: ImpAdCallI2 Format$(, )
  loc_71E9BC: CVarStr var_20C
  loc_71E9BF: ConcatVar var_21C
  loc_71E9C3: CStrVarTmp
  loc_71E9C4: FStStr var_8C
  loc_71E9C7: FFree1Str var_BC
  loc_71E9CA: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71E9DB: FLdI2 var_8E
  loc_71E9DE: LitI2_Byte &HA
  loc_71E9E0: AddI2
  loc_71E9E1: FStI2 var_8E
  loc_71E9E4: LitVarI2 var_12C, 10
  loc_71E9E9: FLdI2 var_8E
  loc_71E9EC: CI4UI1
  loc_71E9ED: FLdPr Me
  loc_71E9F0: MemLdStr global_80
  loc_71E9F3: ImpAdCallI2 Mid$(, , )
  loc_71E9F8: FStStrNoPop var_BC
  loc_71E9FB: ImpAdCallFPR4 push Val()
  loc_71EA00: FStFPR8 var_134
  loc_71EA03: ILdRf var_8C
  loc_71EA06: CVarStr var_E8
  loc_71EA09: LitI4 9
  loc_71EA0E: FLdRfVar var_D8
  loc_71EA11: ImpAdCallFPR4  = Chr()
  loc_71EA16: FLdRfVar var_D8
  loc_71EA19: ConcatVar var_F8
  loc_71EA1D: LitI4 1
  loc_71EA22: LitI4 1
  loc_71EA27: LitVarStr var_158, "######0.00"
  loc_71EA2C: FStVarCopyObj var_1FC
  loc_71EA2F: FLdRfVar var_1FC
  loc_71EA32: FLdFPR8 var_134
  loc_71EA35: LitI2_Byte &H64
  loc_71EA37: CR8I2
  loc_71EA38: DivR8
  loc_71EA39: CVarR8
  loc_71EA3D: ImpAdCallI2 Format$(, )
  loc_71EA42: CVarStr var_20C
  loc_71EA45: ConcatVar var_21C
  loc_71EA49: CStrVarTmp
  loc_71EA4A: FStStr var_8C
  loc_71EA4D: FFree1Str var_BC
  loc_71EA50: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71EA61: FLdI2 var_8E
  loc_71EA64: LitI2_Byte &HA
  loc_71EA66: AddI2
  loc_71EA67: FStI2 var_8E
  loc_71EA6A: LitVarI2 var_12C, 10
  loc_71EA6F: FLdI2 var_8E
  loc_71EA72: CI4UI1
  loc_71EA73: FLdPr Me
  loc_71EA76: MemLdStr global_80
  loc_71EA79: ImpAdCallI2 Mid$(, , )
  loc_71EA7E: FStStrNoPop var_BC
  loc_71EA81: ImpAdCallFPR4 push Val()
  loc_71EA86: FStFPR8 var_134
  loc_71EA89: ILdRf var_8C
  loc_71EA8C: CVarStr var_E8
  loc_71EA8F: LitI4 9
  loc_71EA94: FLdRfVar var_D8
  loc_71EA97: ImpAdCallFPR4  = Chr()
  loc_71EA9C: FLdRfVar var_D8
  loc_71EA9F: ConcatVar var_F8
  loc_71EAA3: LitI4 1
  loc_71EAA8: LitI4 1
  loc_71EAAD: LitVarStr var_158, "######0.00"
  loc_71EAB2: FStVarCopyObj var_1FC
  loc_71EAB5: FLdRfVar var_1FC
  loc_71EAB8: FLdFPR8 var_134
  loc_71EABB: LitI2_Byte &H64
  loc_71EABD: CR8I2
  loc_71EABE: DivR8
  loc_71EABF: CVarR8
  loc_71EAC3: ImpAdCallI2 Format$(, )
  loc_71EAC8: CVarStr var_20C
  loc_71EACB: ConcatVar var_21C
  loc_71EACF: CStrVarTmp
  loc_71EAD0: FStStr var_8C
  loc_71EAD3: FFree1Str var_BC
  loc_71EAD6: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71EAE7: FLdI2 var_8E
  loc_71EAEA: LitI2_Byte &HA
  loc_71EAEC: AddI2
  loc_71EAED: FStI2 var_8E
  loc_71EAF0: LitVarI2 var_12C, 10
  loc_71EAF5: FLdI2 var_8E
  loc_71EAF8: CI4UI1
  loc_71EAF9: FLdPr Me
  loc_71EAFC: MemLdStr global_80
  loc_71EAFF: ImpAdCallI2 Mid$(, , )
  loc_71EB04: FStStrNoPop var_BC
  loc_71EB07: ImpAdCallFPR4 push Val()
  loc_71EB0C: FStFPR8 var_134
  loc_71EB0F: ILdRf var_8C
  loc_71EB12: CVarStr var_E8
  loc_71EB15: LitI4 9
  loc_71EB1A: FLdRfVar var_D8
  loc_71EB1D: ImpAdCallFPR4  = Chr()
  loc_71EB22: FLdRfVar var_D8
  loc_71EB25: ConcatVar var_F8
  loc_71EB29: LitI4 1
  loc_71EB2E: LitI4 1
  loc_71EB33: LitVarStr var_158, "######0.00"
  loc_71EB38: FStVarCopyObj var_1FC
  loc_71EB3B: FLdRfVar var_1FC
  loc_71EB3E: FLdFPR8 var_134
  loc_71EB41: LitI2_Byte &H64
  loc_71EB43: CR8I2
  loc_71EB44: DivR8
  loc_71EB45: CVarR8
  loc_71EB49: ImpAdCallI2 Format$(, )
  loc_71EB4E: CVarStr var_20C
  loc_71EB51: ConcatVar var_21C
  loc_71EB55: CStrVarTmp
  loc_71EB56: FStStr var_8C
  loc_71EB59: FFree1Str var_BC
  loc_71EB5C: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71EB6D: FLdI2 var_8E
  loc_71EB70: LitI2_Byte &HA
  loc_71EB72: AddI2
  loc_71EB73: FStI2 var_8E
  loc_71EB76: FLdPr Me
  loc_71EB79: MemLdStr global_156
  loc_71EB7C: LitStr "0000004"
  loc_71EB7F: GeStr
  loc_71EB81: BranchF loc_71ECA6
  loc_71EB84: LitVarI2 var_D8, 10
  loc_71EB89: FLdI2 var_8E
  loc_71EB8C: CI4UI1
  loc_71EB8D: FLdPr Me
  loc_71EB90: MemLdRfVar from_stack_1.global_80
  loc_71EB93: CVarRef
  loc_71EB98: FLdRfVar var_F8
  loc_71EB9B: ImpAdCallFPR4  = Mid(, , )
  loc_71EBA0: FLdRfVar var_F8
  loc_71EBA3: FnCDblVar
  loc_71EBA5: LitI2_Byte &H64
  loc_71EBA7: CR8I2
  loc_71EBA8: DivR8
  loc_71EBA9: FStFPR8 var_A8
  loc_71EBAC: FFreeVar var_D8 = "": var_F8 = ""
  loc_71EBB5: FLdI2 var_8E
  loc_71EBB8: LitI2_Byte &HA
  loc_71EBBA: AddI2
  loc_71EBBB: FStI2 var_8E
  loc_71EBBE: LitVarI2 var_D8, 10
  loc_71EBC3: FLdI2 var_8E
  loc_71EBC6: CI4UI1
  loc_71EBC7: FLdPr Me
  loc_71EBCA: MemLdRfVar from_stack_1.global_80
  loc_71EBCD: CVarRef
  loc_71EBD2: FLdRfVar var_F8
  loc_71EBD5: ImpAdCallFPR4  = Mid(, , )
  loc_71EBDA: FLdRfVar var_F8
  loc_71EBDD: FnCDblVar
  loc_71EBDF: LitI2_Byte &H64
  loc_71EBE1: CR8I2
  loc_71EBE2: DivR8
  loc_71EBE3: FStFPR8 var_B0
  loc_71EBE6: FFreeVar var_D8 = "": var_F8 = ""
  loc_71EBEF: ILdRf var_8C
  loc_71EBF2: CVarStr var_E8
  loc_71EBF5: LitI4 9
  loc_71EBFA: FLdRfVar var_D8
  loc_71EBFD: ImpAdCallFPR4  = Chr()
  loc_71EC02: FLdRfVar var_D8
  loc_71EC05: ConcatVar var_F8
  loc_71EC09: LitI4 1
  loc_71EC0E: LitI4 1
  loc_71EC13: LitVarStr var_11C, "#######0.00"
  loc_71EC18: FStVarCopyObj var_12C
  loc_71EC1B: FLdRfVar var_12C
  loc_71EC1E: FLdRfVar var_A8
  loc_71EC21: CVarRef
  loc_71EC26: FLdRfVar var_144
  loc_71EC29: ImpAdCallFPR4  = Format(, )
  loc_71EC2E: FLdRfVar var_144
  loc_71EC31: ConcatVar var_1FC
  loc_71EC35: CStrVarTmp
  loc_71EC36: FStStr var_8C
  loc_71EC39: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71EC46: ILdRf var_8C
  loc_71EC49: CVarStr var_E8
  loc_71EC4C: LitI4 9
  loc_71EC51: FLdRfVar var_D8
  loc_71EC54: ImpAdCallFPR4  = Chr()
  loc_71EC59: FLdRfVar var_D8
  loc_71EC5C: ConcatVar var_F8
  loc_71EC60: LitI4 1
  loc_71EC65: LitI4 1
  loc_71EC6A: LitVarStr var_11C, "#######0.00"
  loc_71EC6F: FStVarCopyObj var_12C
  loc_71EC72: FLdRfVar var_12C
  loc_71EC75: FLdRfVar var_B0
  loc_71EC78: CVarRef
  loc_71EC7D: FLdRfVar var_144
  loc_71EC80: ImpAdCallFPR4  = Format(, )
  loc_71EC85: FLdRfVar var_144
  loc_71EC88: ConcatVar var_1FC
  loc_71EC8C: CStrVarTmp
  loc_71EC8D: FStStr var_8C
  loc_71EC90: FFreeVar var_D8 = "": var_12C = "": var_F8 = "": var_144 = ""
  loc_71EC9D: FLdI2 var_8E
  loc_71ECA0: LitI2_Byte &HA
  loc_71ECA2: AddI2
  loc_71ECA3: FStI2 var_8E
  loc_71ECA6: FLdPr Me
  loc_71ECA9: MemLdStr global_156
  loc_71ECAC: LitStr "0000003"
  loc_71ECAF: GeStr
  loc_71ECB1: BranchF loc_71ECBD
  loc_71ECB4: FLdI2 var_8E
  loc_71ECB7: LitI2_Byte &HA
  loc_71ECB9: AddI2
  loc_71ECBA: FStI2 var_8E
  loc_71ECBD: LitVarI2 var_12C, 10
  loc_71ECC2: FLdI2 var_8E
  loc_71ECC5: CI4UI1
  loc_71ECC6: FLdPr Me
  loc_71ECC9: MemLdStr global_80
  loc_71ECCC: ImpAdCallI2 Mid$(, , )
  loc_71ECD1: FStStrNoPop var_BC
  loc_71ECD4: ImpAdCallFPR4 push Val()
  loc_71ECD9: FStFPR8 var_134
  loc_71ECDC: ILdRf var_8C
  loc_71ECDF: CVarStr var_E8
  loc_71ECE2: LitI4 9
  loc_71ECE7: FLdRfVar var_D8
  loc_71ECEA: ImpAdCallFPR4  = Chr()
  loc_71ECEF: FLdRfVar var_D8
  loc_71ECF2: ConcatVar var_F8
  loc_71ECF6: LitI4 1
  loc_71ECFB: LitI4 1
  loc_71ED00: LitVarStr var_158, "######0.00"
  loc_71ED05: FStVarCopyObj var_1FC
  loc_71ED08: FLdRfVar var_1FC
  loc_71ED0B: FLdFPR8 var_134
  loc_71ED0E: LitI2_Byte &H64
  loc_71ED10: CR8I2
  loc_71ED11: DivR8
  loc_71ED12: CVarR8
  loc_71ED16: ImpAdCallI2 Format$(, )
  loc_71ED1B: CVarStr var_20C
  loc_71ED1E: ConcatVar var_21C
  loc_71ED22: CStrVarTmp
  loc_71ED23: FStStr var_8C
  loc_71ED26: FFree1Str var_BC
  loc_71ED29: FFreeVar var_D8 = "": var_12C = "": var_144 = "": var_1FC = "": var_F8 = "": var_20C = ""
  loc_71ED3A: LitVarI2 var_D8, 9
  loc_71ED3F: FLdI2 var_8E
  loc_71ED42: CI4UI1
  loc_71ED43: FLdPr Me
  loc_71ED46: MemLdStr global_80
  loc_71ED49: ImpAdCallI2 Mid$(, , )
  loc_71ED4E: FStStrNoPop var_BC
  loc_71ED51: ImpAdCallFPR4 push Val()
  loc_71ED56: FStFPR8 var_134
  loc_71ED59: LitI4 1
  loc_71ED5E: LitI4 1
  loc_71ED63: LitVarStr var_11C, "0000000000"
  loc_71ED68: FStVarCopyObj var_12C
  loc_71ED6B: FLdRfVar var_12C
  loc_71ED6E: FLdFPR8 var_134
  loc_71ED71: CVarR8
  loc_71ED75: ImpAdCallI2 Format$(, )
  loc_71ED7A: FStStrNoPop var_C4
  loc_71ED7D: FLdPr Me
  loc_71ED80: MemStStrCopy
  loc_71ED84: FFreeStr var_BC = ""
  loc_71ED8B: FFreeVar var_D8 = "": var_F8 = ""
  loc_71ED94: FLdI2 var_8E
  loc_71ED97: LitI2_Byte &HA
  loc_71ED99: AddI2
  loc_71ED9A: FStI2 var_8E
  loc_71ED9D: FLdI2 var_8E
  loc_71EDA0: LitI2_Byte 1
  loc_71EDA2: AddI2
  loc_71EDA3: FStI2 var_8E
  loc_71EDA6: FLdRfVar var_8C
  loc_71EDA9: CDargRef
  loc_71EDAD: FLdPrThis
  loc_71EDAE: VCallAd Control_ID_gLista
  loc_71EDB1: FStAdFunc var_B8
  loc_71EDB4: FLdPr var_B8
  loc_71EDB7: LateIdCall
  loc_71EDBF: FFree1Ad var_B8
  loc_71EDC2: Branch loc_71EDC8
  loc_71EDC5: Branch loc_71E8E1
  loc_71EDC8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5D5C40
  'Data Table: 435BC8
  loc_5D5C1C: ILdI2 KeyAscii
  loc_5D5C1F: CI4UI1
  loc_5D5C20: LitI4 &H1B
  loc_5D5C25: EqI4
  loc_5D5C26: BranchF loc_5D5C3E
  loc_5D5C29: ILdRf Me
  loc_5D5C2C: FStAdNoPop
  loc_5D5C30: ImpAdLdRf MemVar_7520D4
  loc_5D5C33: NewIfNullPr Global
  loc_5D5C36: Global.Unload from_stack_1
  loc_5D5C3B: FFree1Ad var_88
  loc_5D5C3E: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5EEBC0
  'Data Table: 435BC8
  loc_5EEB34: FLdRfVar var_94
  loc_5EEB37: ImpAdCallFPR4  = Date
  loc_5EEB3C: LitI4 1
  loc_5EEB41: LitI4 1
  loc_5EEB46: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EEB4B: FStVarCopyObj var_B4
  loc_5EEB4E: FLdRfVar var_B4
  loc_5EEB51: FLdRfVar var_94
  loc_5EEB54: ImpAdCallI2 Format$(, )
  loc_5EEB59: FStStrNoPop var_B8
  loc_5EEB5C: FLdPrThis
  loc_5EEB5D: VCallAd Control_ID_lFecha
  loc_5EEB60: FStAdFunc var_BC
  loc_5EEB63: FLdPr var_BC
  loc_5EEB66: Me.Caption = from_stack_1
  loc_5EEB6B: FFree1Str var_B8
  loc_5EEB6E: FFree1Ad var_BC
  loc_5EEB71: FFreeVar var_94 = ""
  loc_5EEB78: FLdRfVar var_94
  loc_5EEB7B: ImpAdCallFPR4  = Time
  loc_5EEB80: LitI4 1
  loc_5EEB85: LitI4 1
  loc_5EEB8A: LitVarStr var_A4, "hh:mm"
  loc_5EEB8F: FStVarCopyObj var_B4
  loc_5EEB92: FLdRfVar var_B4
  loc_5EEB95: FLdRfVar var_94
  loc_5EEB98: ImpAdCallI2 Format$(, )
  loc_5EEB9D: FStStrNoPop var_B8
  loc_5EEBA0: FLdPrThis
  loc_5EEBA1: VCallAd Control_ID_lHora
  loc_5EEBA4: FStAdFunc var_BC
  loc_5EEBA7: FLdPr var_BC
  loc_5EEBAA: Me.Caption = from_stack_1
  loc_5EEBAF: FFree1Str var_B8
  loc_5EEBB2: FFree1Ad var_BC
  loc_5EEBB5: FFreeVar var_94 = ""
  loc_5EEBBC: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D2770
  'Data Table: 435BC8
  loc_5D2758: ILdRf Me
  loc_5D275B: FStAdNoPop
  loc_5D275F: ImpAdLdRf MemVar_7520D4
  loc_5D2762: NewIfNullPr Global
  loc_5D2765: Global.Unload from_stack_1
  loc_5D276A: FFree1Ad var_88
  loc_5D276D: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '7253B0
  'Data Table: 435BC8
  loc_7231E0: LitVar_Missing var_E4
  loc_7231E3: PopAdLdVar
  loc_7231E4: LitVarI2 var_D4, 1
  loc_7231E9: PopAdLdVar
  loc_7231EA: ImpAdLdRf MemVar_74C98C
  loc_7231ED: NewIfNullPr NumeroNLP
  loc_7231F0: NumeroNLP.Show from_stack_1, from_stack_2
  loc_7231F7: FLdPr Me
  loc_7231FA: MemLdStr NroPreImpreso
  loc_7231FD: ImpAdCallFPR4 push Val()
  loc_723202: CR8R8
  loc_723203: LitI2_Byte 0
  loc_723205: CR8I2
  loc_723206: LeR8
  loc_723207: BranchF loc_72320D
  loc_72320C: ExitProcHresult
  loc_723211: FLdRfVar var_E8
  loc_723214: ImpAdLdRf MemVar_7520D4
  loc_723217: NewIfNullPr Global
  loc_72321A:  = Global.Printer
  loc_72321F: FLdZeroAd var_E8
  loc_723222: FStAdFunc var_90
  loc_723227: OnErrorGoto loc_725281
  loc_72322C: LitVarStr var_D4, "Courier New"
  loc_723231: PopAdLdVar
  loc_723232: FLdPr var_90
  loc_723235: LateIdSt
  loc_72323C: LitI4 9
  loc_723241: CI2I4
  loc_723242: CVarI2 var_D4
  loc_723245: PopAdLdVar
  loc_723246: FLdPr var_90
  loc_723249: LateIdSt
  loc_723250: LitI4 7
  loc_723255: CI2I4
  loc_723256: CVarI2 var_D4
  loc_723259: PopAdLdVar
  loc_72325A: FLdPr var_90
  loc_72325D: LateIdSt
  loc_723264: LitI2_Byte 9
  loc_723266: CR8I2
  loc_723267: CVarR4
  loc_72326B: PopAdLdVar
  loc_72326C: FLdPr var_90
  loc_72326F: LateIdSt
  loc_723276: LitDate 15.5
  loc_72327F: CVarR4
  loc_723283: PopAdLdVar
  loc_723284: FLdPr var_90
  loc_723287: LateIdSt
  loc_72328E: LitI2_Byte 2
  loc_723290: CR8I2
  loc_723291: CVarR4
  loc_723295: PopAdLdVar
  loc_723296: FLdPr var_90
  loc_723299: LateIdSt
  loc_7232A0: LitI4 0
  loc_7232A5: LitI4 &H19
  loc_7232AA: FLdRfVar var_40C
  loc_7232AD: Redim
  loc_7232B7: FLdPr Me
  loc_7232BA: MemLdRfVar from_stack_1.global_76
  loc_7232BD: CVarRef
  loc_7232C2: FLdRfVar var_F8
  loc_7232C5: ImpAdCallFPR4  = Ucase()
  loc_7232CA: FLdRfVar var_F8
  loc_7232CD: LitVarStr var_E4, "ENERO"
  loc_7232D2: HardType
  loc_7232D3: EqVar var_108
  loc_7232D7: LitI4 0
  loc_7232DC: ILdRf var_40C
  loc_7232DF: Ary1StVar
  loc_7232E0: LitVarI2 var_41C, 1
  loc_7232E5: LitI4 1
  loc_7232EA: ILdRf var_40C
  loc_7232ED: Ary1StVar
  loc_7232EE: FLdPr Me
  loc_7232F1: MemLdRfVar from_stack_1.global_76
  loc_7232F4: CVarRef
  loc_7232F9: FLdRfVar var_128
  loc_7232FC: ImpAdCallFPR4  = Ucase()
  loc_723301: FLdRfVar var_128
  loc_723304: LitVarStr var_138, "FEBRERO"
  loc_723309: HardType
  loc_72330A: EqVar var_148
  loc_72330E: LitI4 2
  loc_723313: ILdRf var_40C
  loc_723316: Ary1StVar
  loc_723317: LitVarI2 var_42C, 2
  loc_72331C: LitI4 3
  loc_723321: ILdRf var_40C
  loc_723324: Ary1StVar
  loc_723325: FLdPr Me
  loc_723328: MemLdRfVar from_stack_1.global_76
  loc_72332B: CVarRef
  loc_723330: FLdRfVar var_168
  loc_723333: ImpAdCallFPR4  = Ucase()
  loc_723338: FLdRfVar var_168
  loc_72333B: LitVarStr var_178, "MARZO"
  loc_723340: HardType
  loc_723341: EqVar var_188
  loc_723345: LitI4 4
  loc_72334A: ILdRf var_40C
  loc_72334D: Ary1StVar
  loc_72334E: LitVarI2 var_43C, 3
  loc_723353: LitI4 5
  loc_723358: ILdRf var_40C
  loc_72335B: Ary1StVar
  loc_72335C: FLdPr Me
  loc_72335F: MemLdRfVar from_stack_1.global_76
  loc_723362: CVarRef
  loc_723367: FLdRfVar var_1A8
  loc_72336A: ImpAdCallFPR4  = Ucase()
  loc_72336F: FLdRfVar var_1A8
  loc_723372: LitVarStr var_1B8, "ABRIL"
  loc_723377: HardType
  loc_723378: EqVar var_1C8
  loc_72337C: LitI4 6
  loc_723381: ILdRf var_40C
  loc_723384: Ary1StVar
  loc_723385: LitVarI2 var_44C, 4
  loc_72338A: LitI4 7
  loc_72338F: ILdRf var_40C
  loc_723392: Ary1StVar
  loc_723393: FLdPr Me
  loc_723396: MemLdRfVar from_stack_1.global_76
  loc_723399: CVarRef
  loc_72339E: FLdRfVar var_1E8
  loc_7233A1: ImpAdCallFPR4  = Ucase()
  loc_7233A6: FLdRfVar var_1E8
  loc_7233A9: LitVarStr var_1F8, "MAYO"
  loc_7233AE: HardType
  loc_7233AF: EqVar var_208
  loc_7233B3: LitI4 8
  loc_7233B8: ILdRf var_40C
  loc_7233BB: Ary1StVar
  loc_7233BC: LitVarI2 var_45C, 5
  loc_7233C1: LitI4 9
  loc_7233C6: ILdRf var_40C
  loc_7233C9: Ary1StVar
  loc_7233CA: FLdPr Me
  loc_7233CD: MemLdRfVar from_stack_1.global_76
  loc_7233D0: CVarRef
  loc_7233D5: FLdRfVar var_228
  loc_7233D8: ImpAdCallFPR4  = Ucase()
  loc_7233DD: FLdRfVar var_228
  loc_7233E0: LitVarStr var_238, "JUNIO"
  loc_7233E5: HardType
  loc_7233E6: EqVar var_248
  loc_7233EA: LitI4 &HA
  loc_7233EF: ILdRf var_40C
  loc_7233F2: Ary1StVar
  loc_7233F3: LitVarI2 var_46C, 6
  loc_7233F8: LitI4 &HB
  loc_7233FD: ILdRf var_40C
  loc_723400: Ary1StVar
  loc_723401: FLdPr Me
  loc_723404: MemLdRfVar from_stack_1.global_76
  loc_723407: CVarRef
  loc_72340C: FLdRfVar var_268
  loc_72340F: ImpAdCallFPR4  = Ucase()
  loc_723414: FLdRfVar var_268
  loc_723417: LitVarStr var_278, "JULIO"
  loc_72341C: HardType
  loc_72341D: EqVar var_288
  loc_723421: LitI4 &HC
  loc_723426: ILdRf var_40C
  loc_723429: Ary1StVar
  loc_72342A: LitVarI2 var_47C, 7
  loc_72342F: LitI4 &HD
  loc_723434: ILdRf var_40C
  loc_723437: Ary1StVar
  loc_723438: FLdPr Me
  loc_72343B: MemLdRfVar from_stack_1.global_76
  loc_72343E: CVarRef
  loc_723443: FLdRfVar var_2A8
  loc_723446: ImpAdCallFPR4  = Ucase()
  loc_72344B: FLdRfVar var_2A8
  loc_72344E: LitVarStr var_2B8, "AGOSTO"
  loc_723453: HardType
  loc_723454: EqVar var_2C8
  loc_723458: LitI4 &HE
  loc_72345D: ILdRf var_40C
  loc_723460: Ary1StVar
  loc_723461: LitVarI2 var_48C, 8
  loc_723466: LitI4 &HF
  loc_72346B: ILdRf var_40C
  loc_72346E: Ary1StVar
  loc_72346F: FLdPr Me
  loc_723472: MemLdRfVar from_stack_1.global_76
  loc_723475: CVarRef
  loc_72347A: FLdRfVar var_2E8
  loc_72347D: ImpAdCallFPR4  = Ucase()
  loc_723482: FLdRfVar var_2E8
  loc_723485: LitVarStr var_2F8, "SEPTIEMBRE"
  loc_72348A: HardType
  loc_72348B: EqVar var_308
  loc_72348F: LitI4 &H10
  loc_723494: ILdRf var_40C
  loc_723497: Ary1StVar
  loc_723498: LitVarI2 var_49C, 9
  loc_72349D: LitI4 &H11
  loc_7234A2: ILdRf var_40C
  loc_7234A5: Ary1StVar
  loc_7234A6: FLdPr Me
  loc_7234A9: MemLdRfVar from_stack_1.global_76
  loc_7234AC: CVarRef
  loc_7234B1: FLdRfVar var_328
  loc_7234B4: ImpAdCallFPR4  = Ucase()
  loc_7234B9: FLdRfVar var_328
  loc_7234BC: LitVarStr var_338, "SETIEMBRE"
  loc_7234C1: HardType
  loc_7234C2: EqVar var_348
  loc_7234C6: LitI4 &H12
  loc_7234CB: ILdRf var_40C
  loc_7234CE: Ary1StVar
  loc_7234CF: LitVarI2 var_4AC, 9
  loc_7234D4: LitI4 &H13
  loc_7234D9: ILdRf var_40C
  loc_7234DC: Ary1StVar
  loc_7234DD: FLdPr Me
  loc_7234E0: MemLdRfVar from_stack_1.global_76
  loc_7234E3: CVarRef
  loc_7234E8: FLdRfVar var_368
  loc_7234EB: ImpAdCallFPR4  = Ucase()
  loc_7234F0: FLdRfVar var_368
  loc_7234F3: LitVarStr var_378, "OCTUBRE"
  loc_7234F8: HardType
  loc_7234F9: EqVar var_388
  loc_7234FD: LitI4 &H14
  loc_723502: ILdRf var_40C
  loc_723505: Ary1StVar
  loc_723506: LitVarI2 var_4BC, 10
  loc_72350B: LitI4 &H15
  loc_723510: ILdRf var_40C
  loc_723513: Ary1StVar
  loc_723514: FLdPr Me
  loc_723517: MemLdRfVar from_stack_1.global_76
  loc_72351A: CVarRef
  loc_72351F: FLdRfVar var_3A8
  loc_723522: ImpAdCallFPR4  = Ucase()
  loc_723527: FLdRfVar var_3A8
  loc_72352A: LitVarStr var_3B8, "NOVIEMBRE"
  loc_72352F: HardType
  loc_723530: EqVar var_3C8
  loc_723534: LitI4 &H16
  loc_723539: ILdRf var_40C
  loc_72353C: Ary1StVar
  loc_72353D: LitVarI2 var_4CC, 11
  loc_723542: LitI4 &H17
  loc_723547: ILdRf var_40C
  loc_72354A: Ary1StVar
  loc_72354B: FLdPr Me
  loc_72354E: MemLdRfVar from_stack_1.global_76
  loc_723551: CVarRef
  loc_723556: FLdRfVar var_3E8
  loc_723559: ImpAdCallFPR4  = Ucase()
  loc_72355E: FLdRfVar var_3E8
  loc_723561: LitVarStr var_3F8, "DICIEMBRE"
  loc_723566: HardType
  loc_723567: EqVar var_408
  loc_72356B: LitI4 &H18
  loc_723570: ILdRf var_40C
  loc_723573: Ary1StVar
  loc_723574: LitVarI2 var_4DC, 12
  loc_723579: LitI4 &H19
  loc_72357E: ILdRf var_40C
  loc_723581: Ary1StVar
  loc_723582: FLdRfVar var_40C
  loc_723585: FLdRfVar var_4EC
  loc_723588: ImpAdCallFPR4  = Switch()
  loc_72358D: FLdRfVar var_40C
  loc_723590: Erase
  loc_723591: FLdRfVar var_4EC
  loc_723594: CI2Var
  loc_723595: FStI2 var_B8
  loc_723598: FFreeVar var_F8 = "": var_128 = "": var_168 = "": var_1A8 = "": var_1E8 = "": var_228 = "": var_268 = "": var_2A8 = "": var_2E8 = "": var_328 = "": var_368 = "": var_3A8 = "": var_3E8 = ""
  loc_7235B9: FLdPr Me
  loc_7235BC: MemLdRfVar from_stack_1.global_60
  loc_7235BF: CStrVarVal var_4F0
  loc_7235C3: ImpAdCallFPR4 push Val()
  loc_7235C8: FStFPR8 var_4FC
  loc_7235CB: FLdFPR8 var_4FC
  loc_7235CE: CI2R8
  loc_7235CF: FLdI2 var_B8
  loc_7235D2: ImpAdCallFPR4 Proc_158_8_5EFE74(, )
  loc_7235D7: FStFPR8 var_504
  loc_7235DA: LitI4 1
  loc_7235DF: LitI4 1
  loc_7235E4: LitVarStr var_E4, "dd/mm/yyyy"
  loc_7235E9: FStVarCopyObj var_108
  loc_7235EC: FLdRfVar var_108
  loc_7235EF: FLdFPR8 var_504
  loc_7235F2: CVarDate var_F8
  loc_7235F6: ImpAdCallI2 Format$(, )
  loc_7235FB: FStStr var_508
  loc_7235FE: FLdZeroAd var_508
  loc_723601: FStStrNoPop var_4F4
  loc_723604: ILdRf var_90
  loc_723607: PrintObject
  loc_72360D: FFreeStr var_4F0 = "": var_4F4 = ""
  loc_723616: FFreeVar var_F8 = ""
  loc_72361F: LitDate 15.8
  loc_723628: CVarR4
  loc_72362C: PopAdLdVar
  loc_72362D: FLdPr var_90
  loc_723630: LateIdSt
  loc_723637: LitDate 7.2
  loc_723640: CVarR4
  loc_723644: PopAdLdVar
  loc_723645: FLdPr var_90
  loc_723648: LateIdSt
  loc_72364F: FLdPr Me
  loc_723652: MemLdRfVar from_stack_1.global_60
  loc_723655: LitStr "/"
  loc_723658: FLdPr Me
  loc_72365B: MemLdStr global_76
  loc_72365E: ILdRf var_90
  loc_723661: PrintObject
  loc_723669: LitI2_Byte &HC
  loc_72366B: CR8I2
  loc_72366C: CVarR4
  loc_723670: PopAdLdVar
  loc_723671: FLdPr var_90
  loc_723674: LateIdSt
  loc_72367B: LitI2_Byte 9
  loc_72367D: CR8I2
  loc_72367E: CVarR4
  loc_723682: PopAdLdVar
  loc_723683: FLdPr var_90
  loc_723686: LateIdSt
  loc_72368D: LitStr "     "
  loc_723690: FLdPr Me
  loc_723693: MemLdStr global_96
  loc_723696: ConcatStr
  loc_723697: FStStrNoPop var_4F0
  loc_72369A: ILdRf var_90
  loc_72369D: PrintObject
  loc_7236A3: FFree1Str var_4F0
  loc_7236A8: LitI2_Byte 0
  loc_7236AA: FStI2 var_BA
  loc_7236AF: LitI2_Byte &H18
  loc_7236B1: FStI2 var_86
  loc_7236B6: LitI2_Byte 0
  loc_7236B8: FStI2 var_88
  loc_7236BD: FLdPr Me
  loc_7236C0: MemLdStr global_156
  loc_7236C3: LitStr "0000004"
  loc_7236C6: GeStr
  loc_7236C8: BranchF loc_7236F5
  loc_7236CD: LitI2_Byte 9
  loc_7236CF: CR8I2
  loc_7236D0: CVarR4
  loc_7236D4: PopAdLdVar
  loc_7236D5: FLdPr var_90
  loc_7236D8: LateIdSt
  loc_7236DF: LitStr "TOIL/TINFRA"
  loc_7236E2: LitI2_Byte &H4A
  loc_7236E4: LitStr "I.T.C."
  loc_7236E7: LitI2_Byte &H3E
  loc_7236E9: ILdRf var_90
  loc_7236EC: PrintObject
  loc_7236F2: Branch loc_723709
  loc_7236F9: LitStr "I.T.C."
  loc_7236FC: LitI2_Byte &H4A
  loc_7236FE: LitI2_Byte &H3E
  loc_723700: ILdRf var_90
  loc_723703: PrintObject
  loc_72370D: FLdI2 var_86
  loc_723710: CI4UI1
  loc_723711: FLdPr Me
  loc_723714: MemLdStr global_80
  loc_723717: FnLenStr
  loc_723718: LtI4
  loc_723719: BranchF loc_723DDB
  loc_72371E: LitVarI2 var_F8, 2
  loc_723723: FLdI2 var_86
  loc_723726: CI4UI1
  loc_723727: FLdPr Me
  loc_72372A: MemLdStr global_80
  loc_72372D: ImpAdCallI2 Mid$(, , )
  loc_723732: FStStrNoPop var_4F0
  loc_723735: ImpAdCallFPR4 push Val()
  loc_72373A: CI2R8
  loc_72373B: FStI2 var_8C
  loc_72373E: FFree1Str var_4F0
  loc_723741: FFree1Var var_F8 = ""
  loc_723746: FLdI2 var_8C
  loc_723749: FStI2 var_50A
  loc_72374E: FLdI2 var_50A
  loc_723751: LitI2_Byte &HA
  loc_723753: EqI2
  loc_723754: BranchF loc_723765
  loc_723759: FLdI2 var_86
  loc_72375C: LitI2_Byte 2
  loc_72375E: AddI2
  loc_72375F: FStI2 var_86
  loc_723762: Branch loc_7237A7
  loc_723767: FLdI2 var_50A
  loc_72376A: LitI2_Byte &HB
  loc_72376C: EqI2
  loc_72376D: BranchT loc_72378B
  loc_723770: FLdI2 var_50A
  loc_723773: LitI2_Byte &H14
  loc_723775: EqI2
  loc_723776: BranchT loc_72378B
  loc_723779: FLdI2 var_50A
  loc_72377C: LitI2_Byte &H1E
  loc_72377E: EqI2
  loc_72377F: BranchT loc_72378B
  loc_723782: FLdI2 var_50A
  loc_723785: LitI2_Byte &H5A
  loc_723787: EqI2
  loc_723788: BranchF loc_723793
  loc_72378D: Branch loc_723DDB
  loc_723790: Branch loc_7237A7
  loc_723797: FLdI2 var_86
  loc_72379A: LitI2_Byte &H41
  loc_72379C: AddI2
  loc_72379D: FStI2 var_86
  loc_7237A2: LitI2_Byte &HFF
  loc_7237A4: FStI2 var_B6
  loc_7237AB: FLdI2 var_B6
  loc_7237AE: BranchF loc_7237BB
  loc_7237B3: LitI2_Byte 0
  loc_7237B5: FStI2 var_B6
  loc_7237B8: Branch loc_723DD4
  loc_7237BF: LitVarI2 var_F8, 2
  loc_7237C4: FLdI2 var_86
  loc_7237C7: CI4UI1
  loc_7237C8: FLdPr Me
  loc_7237CB: MemLdStr global_80
  loc_7237CE: ImpAdCallI2 Mid$(, , )
  loc_7237D3: FStStrNoPop var_4F0
  loc_7237D6: ImpAdCallFPR4 push Val()
  loc_7237DB: FStFPR8 var_4FC
  loc_7237DE: FLdRfVar var_4F4
  loc_7237E1: FLdFPR8 var_4FC
  loc_7237E4: CI2R8
  loc_7237E5: ImpAdLdRf MemVar_74A220
  loc_7237E8: NewIfNullPr clsProducts
  loc_7237F0: LitVarI2 var_108, 19
  loc_7237F5: LitI4 1
  loc_7237FA: ILdRf var_4F4
  loc_7237FD: ImpAdCallI2 Mid$(, , )
  loc_723802: FStStr var_94
  loc_723805: FFreeStr var_4F0 = ""
  loc_72380C: FFreeVar var_F8 = ""
  loc_723815: FLdI2 var_86
  loc_723818: LitI2_Byte 2
  loc_72381A: AddI2
  loc_72381B: FStI2 var_86
  loc_723820: LitVarI2 var_F8, 10
  loc_723825: FLdI2 var_86
  loc_723828: CI4UI1
  loc_723829: FLdPr Me
  loc_72382C: MemLdStr global_80
  loc_72382F: ImpAdCallI2 Mid$(, , )
  loc_723834: FStStrNoPop var_4F0
  loc_723837: ImpAdCallFPR4 push Val()
  loc_72383C: FStFPR8 var_4FC
  loc_72383F: LitI4 1
  loc_723844: LitI4 1
  loc_723849: LitVarStr var_118, "######0.00"
  loc_72384E: FStVarCopyObj var_128
  loc_723851: FLdRfVar var_128
  loc_723854: FLdFPR8 var_4FC
  loc_723857: LitI2_Byte &H64
  loc_723859: CR8I2
  loc_72385A: DivR8
  loc_72385B: CVarR8
  loc_72385F: ImpAdCallI2 Format$(, )
  loc_723864: FStStr var_98
  loc_723867: FFree1Str var_4F0
  loc_72386A: FFreeVar var_F8 = "": var_108 = ""
  loc_723875: FLdI2 var_86
  loc_723878: LitI2_Byte &HA
  loc_72387A: AddI2
  loc_72387B: FStI2 var_86
  loc_723880: LitVarI2 var_F8, 10
  loc_723885: FLdI2 var_86
  loc_723888: CI4UI1
  loc_723889: FLdPr Me
  loc_72388C: MemLdStr global_80
  loc_72388F: ImpAdCallI2 Mid$(, , )
  loc_723894: FStStrNoPop var_4F0
  loc_723897: ImpAdCallFPR4 push Val()
  loc_72389C: FStFPR8 var_4FC
  loc_72389F: LitI4 1
  loc_7238A4: LitI4 1
  loc_7238A9: LitVarStr var_118, "######0.00"
  loc_7238AE: FStVarCopyObj var_128
  loc_7238B1: FLdRfVar var_128
  loc_7238B4: FLdFPR8 var_4FC
  loc_7238B7: LitI2_Byte &H64
  loc_7238B9: CR8I2
  loc_7238BA: DivR8
  loc_7238BB: CVarR8
  loc_7238BF: ImpAdCallI2 Format$(, )
  loc_7238C4: FStStr var_9C
  loc_7238C7: FFree1Str var_4F0
  loc_7238CA: FFreeVar var_F8 = "": var_108 = ""
  loc_7238D5: FLdI2 var_86
  loc_7238D8: LitI2_Byte &HA
  loc_7238DA: AddI2
  loc_7238DB: FStI2 var_86
  loc_7238E0: LitVarI2 var_F8, 10
  loc_7238E5: FLdI2 var_86
  loc_7238E8: CI4UI1
  loc_7238E9: FLdPr Me
  loc_7238EC: MemLdStr global_80
  loc_7238EF: ImpAdCallI2 Mid$(, , )
  loc_7238F4: FStStrNoPop var_4F0
  loc_7238F7: ImpAdCallFPR4 push Val()
  loc_7238FC: FStFPR8 var_4FC
  loc_7238FF: LitI4 1
  loc_723904: LitI4 1
  loc_723909: LitVarStr var_118, "######0.00"
  loc_72390E: FStVarCopyObj var_128
  loc_723911: FLdRfVar var_128
  loc_723914: FLdFPR8 var_4FC
  loc_723917: LitI2_Byte &H64
  loc_723919: CR8I2
  loc_72391A: DivR8
  loc_72391B: CVarR8
  loc_72391F: ImpAdCallI2 Format$(, )
  loc_723924: FStStr var_A0
  loc_723927: FFree1Str var_4F0
  loc_72392A: FFreeVar var_F8 = "": var_108 = ""
  loc_723935: FLdI2 var_86
  loc_723938: LitI2_Byte &HA
  loc_72393A: AddI2
  loc_72393B: FStI2 var_86
  loc_723940: LitVarI2 var_F8, 10
  loc_723945: FLdI2 var_86
  loc_723948: CI4UI1
  loc_723949: FLdPr Me
  loc_72394C: MemLdStr global_80
  loc_72394F: ImpAdCallI2 Mid$(, , )
  loc_723954: FStStrNoPop var_4F0
  loc_723957: ImpAdCallFPR4 push Val()
  loc_72395C: FStFPR8 var_4FC
  loc_72395F: LitI4 1
  loc_723964: LitI4 1
  loc_723969: LitVarStr var_118, "######0.00"
  loc_72396E: FStVarCopyObj var_128
  loc_723971: FLdRfVar var_128
  loc_723974: FLdFPR8 var_4FC
  loc_723977: LitI2_Byte &H64
  loc_723979: CR8I2
  loc_72397A: DivR8
  loc_72397B: CVarR8
  loc_72397F: ImpAdCallI2 Format$(, )
  loc_723984: FStStr var_A4
  loc_723987: FFree1Str var_4F0
  loc_72398A: FFreeVar var_F8 = "": var_108 = ""
  loc_723995: FLdI2 var_86
  loc_723998: LitI2_Byte &HA
  loc_72399A: AddI2
  loc_72399B: FStI2 var_86
  loc_7239A0: FLdPr Me
  loc_7239A3: MemLdStr global_156
  loc_7239A6: LitStr "0000004"
  loc_7239A9: GeStr
  loc_7239AB: BranchF loc_723AA3
  loc_7239B0: LitVarI2 var_F8, 10
  loc_7239B5: FLdI2 var_86
  loc_7239B8: CI4UI1
  loc_7239B9: FLdPr Me
  loc_7239BC: MemLdStr global_80
  loc_7239BF: ImpAdCallI2 Mid$(, , )
  loc_7239C4: FStStrNoPop var_4F0
  loc_7239C7: ImpAdCallFPR4 push Val()
  loc_7239CC: FStFPR8 var_4FC
  loc_7239CF: LitI4 1
  loc_7239D4: LitI4 1
  loc_7239D9: LitVarStr var_118, "######0.00"
  loc_7239DE: FStVarCopyObj var_128
  loc_7239E1: FLdRfVar var_128
  loc_7239E4: FLdFPR8 var_4FC
  loc_7239E7: LitI2_Byte &H64
  loc_7239E9: CR8I2
  loc_7239EA: DivR8
  loc_7239EB: CVarR8
  loc_7239EF: ImpAdCallI2 Format$(, )
  loc_7239F4: FStStr var_B0
  loc_7239F7: FFree1Str var_4F0
  loc_7239FA: FFreeVar var_F8 = "": var_108 = ""
  loc_723A05: FLdI2 var_86
  loc_723A08: LitI2_Byte &HA
  loc_723A0A: AddI2
  loc_723A0B: FStI2 var_86
  loc_723A10: LitVarI2 var_F8, 10
  loc_723A15: FLdI2 var_86
  loc_723A18: CI4UI1
  loc_723A19: FLdPr Me
  loc_723A1C: MemLdStr global_80
  loc_723A1F: ImpAdCallI2 Mid$(, , )
  loc_723A24: FStStrNoPop var_4F0
  loc_723A27: ImpAdCallFPR4 push Val()
  loc_723A2C: FStFPR8 var_4FC
  loc_723A2F: LitI4 1
  loc_723A34: LitI4 1
  loc_723A39: LitVarStr var_118, "######0.00"
  loc_723A3E: FStVarCopyObj var_128
  loc_723A41: FLdRfVar var_128
  loc_723A44: FLdFPR8 var_4FC
  loc_723A47: LitI2_Byte &H64
  loc_723A49: CR8I2
  loc_723A4A: DivR8
  loc_723A4B: CVarR8
  loc_723A4F: ImpAdCallI2 Format$(, )
  loc_723A54: FStStr var_B4
  loc_723A57: FFree1Str var_4F0
  loc_723A5A: FFreeVar var_F8 = "": var_108 = ""
  loc_723A65: FLdI2 var_86
  loc_723A68: LitI2_Byte &HA
  loc_723A6A: AddI2
  loc_723A6B: FStI2 var_86
  loc_723A70: ILdRf var_B4
  loc_723A73: CR8Str
  loc_723A75: ILdRf var_B0
  loc_723A78: CR8Str
  loc_723A7A: AddR8
  loc_723A7B: FStFPR8 var_C4
  loc_723A80: FLdRfVar var_4F0
  loc_723A83: ILdRf var_B4
  loc_723A86: CR8Str
  loc_723A88: PopTmpLdAdFPR8
  loc_723A8C: ILdRf var_B0
  loc_723A8F: CR8Str
  loc_723A91: PopTmpLdAdFPR8
  loc_723A95: FLdRfVar var_C4
  loc_723A98: from_stack_4v = Proc_124_11_5F0F1C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_723A9D: FLdZeroAd var_4F0
  loc_723AA0: FStStr var_B0
  loc_723AA7: FLdPr Me
  loc_723AAA: MemLdStr global_156
  loc_723AAD: LitStr "0000003"
  loc_723AB0: GeStr
  loc_723AB2: BranchF loc_723AC0
  loc_723AB7: FLdI2 var_86
  loc_723ABA: LitI2_Byte &HA
  loc_723ABC: AddI2
  loc_723ABD: FStI2 var_86
  loc_723AC4: LitVarI2 var_F8, 10
  loc_723AC9: FLdI2 var_86
  loc_723ACC: CI4UI1
  loc_723ACD: FLdPr Me
  loc_723AD0: MemLdStr global_80
  loc_723AD3: ImpAdCallI2 Mid$(, , )
  loc_723AD8: FStStrNoPop var_4F0
  loc_723ADB: ImpAdCallFPR4 push Val()
  loc_723AE0: FStFPR8 var_4FC
  loc_723AE3: LitI4 1
  loc_723AE8: LitI4 1
  loc_723AED: LitVarStr var_118, "######0.00"
  loc_723AF2: FStVarCopyObj var_128
  loc_723AF5: FLdRfVar var_128
  loc_723AF8: FLdFPR8 var_4FC
  loc_723AFB: LitI2_Byte &H64
  loc_723AFD: CR8I2
  loc_723AFE: DivR8
  loc_723AFF: CVarR8
  loc_723B03: ImpAdCallI2 Format$(, )
  loc_723B08: FStStr var_A8
  loc_723B0B: FFree1Str var_4F0
  loc_723B0E: FFreeVar var_F8 = "": var_108 = ""
  loc_723B19: FLdI2 var_86
  loc_723B1C: LitI2_Byte &HA
  loc_723B1E: AddI2
  loc_723B1F: FStI2 var_86
  loc_723B24: FLdI2 var_86
  loc_723B27: LitI2_Byte 1
  loc_723B29: AddI2
  loc_723B2A: FStI2 var_86
  loc_723B2F: FLdPr Me
  loc_723B32: MemLdStr global_156
  loc_723B35: LitStr "0000004"
  loc_723B38: GeStr
  loc_723B3A: BranchF loc_723C88
  loc_723B3F: LitI4 1
  loc_723B44: LitI4 1
  loc_723B49: LitVarStr var_E4, "@@@@@@@@@@"
  loc_723B4E: FStVarCopyObj var_F8
  loc_723B51: FLdRfVar var_F8
  loc_723B54: FLdRfVar var_98
  loc_723B57: CVarRef
  loc_723B5C: ImpAdCallI2 Format$(, )
  loc_723B61: FStStr var_51C
  loc_723B64: LitI4 1
  loc_723B69: LitI4 1
  loc_723B6E: LitVarStr var_138, "@@@@@@@@@@"
  loc_723B73: FStVarCopyObj var_108
  loc_723B76: FLdRfVar var_108
  loc_723B79: FLdRfVar var_9C
  loc_723B7C: CVarRef
  loc_723B81: ImpAdCallI2 Format$(, )
  loc_723B86: FStStr var_520
  loc_723B89: LitI4 1
  loc_723B8E: LitI4 1
  loc_723B93: LitVarStr var_178, "@@@@@@@@@@"
  loc_723B98: FStVarCopyObj var_128
  loc_723B9B: FLdRfVar var_128
  loc_723B9E: FLdRfVar var_A0
  loc_723BA1: CVarRef
  loc_723BA6: ImpAdCallI2 Format$(, )
  loc_723BAB: FStStr var_524
  loc_723BAE: LitI4 1
  loc_723BB3: LitI4 1
  loc_723BB8: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_723BBD: FStVarCopyObj var_148
  loc_723BC0: FLdRfVar var_148
  loc_723BC3: FLdRfVar var_A4
  loc_723BC6: CVarRef
  loc_723BCB: ImpAdCallI2 Format$(, )
  loc_723BD0: FStStr var_528
  loc_723BD3: LitI4 1
  loc_723BD8: LitI4 1
  loc_723BDD: LitVarStr var_1F8, "@@@@@@@@@@@@@@"
  loc_723BE2: FStVarCopyObj var_168
  loc_723BE5: FLdRfVar var_168
  loc_723BE8: FLdRfVar var_B0
  loc_723BEB: CVarRef
  loc_723BF0: ImpAdCallI2 Format$(, )
  loc_723BF5: FStStr var_52C
  loc_723BF8: LitI4 1
  loc_723BFD: LitI4 1
  loc_723C02: LitVarStr var_238, "@@@@@@@@@@"
  loc_723C07: FStVarCopyObj var_188
  loc_723C0A: FLdRfVar var_188
  loc_723C0D: FLdRfVar var_A8
  loc_723C10: CVarRef
  loc_723C15: ImpAdCallI2 Format$(, )
  loc_723C1A: FStStr var_530
  loc_723C1D: FLdZeroAd var_530
  loc_723C20: FStStrNoPop var_518
  loc_723C23: LitI2_Byte &H59
  loc_723C25: FLdZeroAd var_52C
  loc_723C28: FStStrNoPop var_514
  loc_723C2B: LitI2_Byte &H4A
  loc_723C2D: FLdZeroAd var_528
  loc_723C30: FStStrNoPop var_510
  loc_723C33: LitI2_Byte &H3E
  loc_723C35: FLdZeroAd var_524
  loc_723C38: FStStrNoPop var_508
  loc_723C3B: LitI2_Byte &H32
  loc_723C3D: FLdZeroAd var_520
  loc_723C40: FStStrNoPop var_4F4
  loc_723C43: LitI2_Byte &H26
  loc_723C45: FLdZeroAd var_51C
  loc_723C48: FStStrNoPop var_4F0
  loc_723C4B: LitI2_Byte &H1A
  loc_723C4D: ILdRf var_94
  loc_723C50: LitI2_Byte 1
  loc_723C52: ILdRf var_90
  loc_723C55: PrintObject
  loc_723C5B: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = "": var_528 = "": var_52C = ""
  loc_723C76: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_723C85: Branch loc_723D9F
  loc_723C8C: LitI4 1
  loc_723C91: LitI4 1
  loc_723C96: LitVarStr var_E4, "@@@@@@@@@@"
  loc_723C9B: FStVarCopyObj var_F8
  loc_723C9E: FLdRfVar var_F8
  loc_723CA1: FLdRfVar var_98
  loc_723CA4: CVarRef
  loc_723CA9: ImpAdCallI2 Format$(, )
  loc_723CAE: FStStr var_518
  loc_723CB1: LitI4 1
  loc_723CB6: LitI4 1
  loc_723CBB: LitVarStr var_138, "@@@@@@@@@@"
  loc_723CC0: FStVarCopyObj var_108
  loc_723CC3: FLdRfVar var_108
  loc_723CC6: FLdRfVar var_9C
  loc_723CC9: CVarRef
  loc_723CCE: ImpAdCallI2 Format$(, )
  loc_723CD3: FStStr var_51C
  loc_723CD6: LitI4 1
  loc_723CDB: LitI4 1
  loc_723CE0: LitVarStr var_178, "@@@@@@@@@@"
  loc_723CE5: FStVarCopyObj var_128
  loc_723CE8: FLdRfVar var_128
  loc_723CEB: FLdRfVar var_A0
  loc_723CEE: CVarRef
  loc_723CF3: ImpAdCallI2 Format$(, )
  loc_723CF8: FStStr var_520
  loc_723CFB: LitI4 1
  loc_723D00: LitI4 1
  loc_723D05: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_723D0A: FStVarCopyObj var_148
  loc_723D0D: FLdRfVar var_148
  loc_723D10: FLdRfVar var_A4
  loc_723D13: CVarRef
  loc_723D18: ImpAdCallI2 Format$(, )
  loc_723D1D: FStStr var_524
  loc_723D20: LitI4 1
  loc_723D25: LitI4 1
  loc_723D2A: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_723D2F: FStVarCopyObj var_168
  loc_723D32: FLdRfVar var_168
  loc_723D35: FLdRfVar var_A8
  loc_723D38: CVarRef
  loc_723D3D: ImpAdCallI2 Format$(, )
  loc_723D42: FStStr var_528
  loc_723D45: FLdZeroAd var_528
  loc_723D48: FStStrNoPop var_514
  loc_723D4B: LitI2_Byte &H57
  loc_723D4D: FLdZeroAd var_524
  loc_723D50: FStStrNoPop var_510
  loc_723D53: LitI2_Byte &H46
  loc_723D55: FLdZeroAd var_520
  loc_723D58: FStStrNoPop var_508
  loc_723D5B: LitI2_Byte &H37
  loc_723D5D: FLdZeroAd var_51C
  loc_723D60: FStStrNoPop var_4F4
  loc_723D63: LitI2_Byte &H27
  loc_723D65: FLdZeroAd var_518
  loc_723D68: FStStrNoPop var_4F0
  loc_723D6B: LitI2_Byte &H1B
  loc_723D6D: ILdRf var_94
  loc_723D70: LitI2_Byte 2
  loc_723D72: ILdRf var_90
  loc_723D75: PrintObject
  loc_723D7B: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_723D92: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_723DA3: FLdPr Me
  loc_723DA6: MemLdStr global_156
  loc_723DA9: LitStr "0000003"
  loc_723DAC: LtStr
  loc_723DAE: BranchF loc_723DBC
  loc_723DB3: ILdRf var_90
  loc_723DB6: PrintObject
  loc_723DC0: FLdI2 var_88
  loc_723DC3: LitI2_Byte 2
  loc_723DC5: AddI2
  loc_723DC6: FStI2 var_88
  loc_723DCB: FLdI2 var_BA
  loc_723DCE: LitI2_Byte 1
  loc_723DD0: AddI2
  loc_723DD1: FStI2 var_BA
  loc_723DD8: Branch loc_72370B
  loc_723DDD: FLdPr Me
  loc_723DE0: MemLdStr global_156
  loc_723DE3: LitStr "0000003"
  loc_723DE6: GeStr
  loc_723DE8: BranchF loc_723F69
  loc_723DED: FLdI2 var_86
  loc_723DF0: CI4UI1
  loc_723DF1: FLdPr Me
  loc_723DF4: MemLdStr global_80
  loc_723DF7: FnLenStr
  loc_723DF8: LtI4
  loc_723DF9: BranchF loc_723F5E
  loc_723DFE: LitVarI2 var_F8, 2
  loc_723E03: FLdI2 var_86
  loc_723E06: CI4UI1
  loc_723E07: FLdPr Me
  loc_723E0A: MemLdStr global_80
  loc_723E0D: ImpAdCallI2 Mid$(, , )
  loc_723E12: FStStrNoPop var_4F0
  loc_723E15: ImpAdCallFPR4 push Val()
  loc_723E1A: CI2R8
  loc_723E1B: FStI2 var_8C
  loc_723E1E: FFree1Str var_4F0
  loc_723E21: FFree1Var var_F8 = ""
  loc_723E26: FLdI2 var_8C
  loc_723E29: LitI2_Byte &HB
  loc_723E2B: NeI2
  loc_723E2C: BranchF loc_723E3D
  loc_723E31: FLdI2 var_86
  loc_723E34: LitI2_Byte &H41
  loc_723E36: AddI2
  loc_723E37: FStI2 var_86
  loc_723E3A: Branch loc_723F57
  loc_723E41: FLdI2 var_86
  loc_723E44: LitI2_Byte &H2C
  loc_723E46: AddI2
  loc_723E47: FStI2 var_86
  loc_723E4C: ILdRf var_90
  loc_723E4F: PrintObject
  loc_723E57: LitStr "Retenido"
  loc_723E5A: LitI2_Byte &H1B
  loc_723E5C: LitStr "Producto"
  loc_723E5F: LitI2_Byte 3
  loc_723E61: ILdRf var_90
  loc_723E64: PrintObject
  loc_723E6C: LitI2_Byte 1
  loc_723E6E: FLdRfVar var_8A
  loc_723E71: FLdI2 var_BA
  loc_723E74: ForI2 var_534
  loc_723E7C: LitI4 1
  loc_723E81: LitI4 1
  loc_723E86: LitVarStr var_E4, "@@@@@@@@@@"
  loc_723E8B: FStVarCopyObj var_F8
  loc_723E8E: FLdRfVar var_F8
  loc_723E91: FLdI2 var_8A
  loc_723E94: CI4UI1
  loc_723E95: FLdPr Me
  loc_723E98: MemLdRfVar from_stack_1.global_104
  loc_723E9B: Ary1LdRf
  loc_723E9C: CVarRef
  loc_723EA1: ImpAdCallI2 Format$(, )
  loc_723EA6: FStStr var_4F4
  loc_723EA9: FLdZeroAd var_4F4
  loc_723EAC: FStStrNoPop var_4F0
  loc_723EAF: LitI2_Byte &H1B
  loc_723EB1: FLdI2 var_8A
  loc_723EB4: CI4UI1
  loc_723EB5: FLdPr Me
  loc_723EB8: MemLdRfVar from_stack_1.global_128
  loc_723EBB: Ary1LdI4
  loc_723EBC: LitI2_Byte 3
  loc_723EBE: ILdRf var_90
  loc_723EC1: PrintObject
  loc_723EC7: FFreeStr var_4F0 = ""
  loc_723ECE: FFree1Var var_F8 = ""
  loc_723ED3: FLdRfVar var_8A
  loc_723ED6: NextI2 var_534, loc_723E7A
  loc_723EDD: LitStr "-----------------"
  loc_723EE0: LitI2_Byte &H1B
  loc_723EE2: ILdRf var_90
  loc_723EE5: PrintObject
  loc_723EED: LitI4 1
  loc_723EF2: LitI4 1
  loc_723EF7: LitVarStr var_E4, "@@@@@@@@@@"
  loc_723EFC: FStVarCopyObj var_F8
  loc_723EFF: FLdRfVar var_F8
  loc_723F02: FLdPr Me
  loc_723F05: MemLdRfVar from_stack_1.global_152
  loc_723F08: CVarRef
  loc_723F0D: ImpAdCallI2 Format$(, )
  loc_723F12: FStStr var_4F4
  loc_723F15: FLdZeroAd var_4F4
  loc_723F18: FStStrNoPop var_4F0
  loc_723F1B: LitI2_Byte &H1B
  loc_723F1D: LitStr "TOTAL"
  loc_723F20: LitI2_Byte 3
  loc_723F22: ILdRf var_90
  loc_723F25: PrintObject
  loc_723F2B: FFreeStr var_4F0 = ""
  loc_723F32: FFree1Var var_F8 = ""
  loc_723F37: FLdPr Me
  loc_723F3A: MemLdStr global_156
  loc_723F3D: LitStr "0000004"
  loc_723F40: GeStr
  loc_723F42: BranchF loc_723F50
  loc_723F47: FLdI2 var_86
  loc_723F4A: LitI2_Byte &H14
  loc_723F4C: AddI2
  loc_723F4D: FStI2 var_86
  loc_723F54: Branch loc_723F5E
  loc_723F5B: Branch loc_723DEB
  loc_723F60: FLdI2 var_86
  loc_723F63: LitI2_Byte &H15
  loc_723F65: AddI2
  loc_723F66: FStI2 var_86
  loc_723F6D: FLdI2 var_86
  loc_723F70: CI4UI1
  loc_723F71: FLdPr Me
  loc_723F74: MemLdStr global_80
  loc_723F77: FnLenStr
  loc_723F78: LtI4
  loc_723F79: BranchF loc_724569
  loc_723F7E: LitVarI2 var_F8, 2
  loc_723F83: FLdI2 var_86
  loc_723F86: CI4UI1
  loc_723F87: FLdPr Me
  loc_723F8A: MemLdStr global_80
  loc_723F8D: ImpAdCallI2 Mid$(, , )
  loc_723F92: FStStrNoPop var_4F0
  loc_723F95: ImpAdCallFPR4 push Val()
  loc_723F9A: CI2R8
  loc_723F9B: FStI2 var_8C
  loc_723F9E: FFree1Str var_4F0
  loc_723FA1: FFree1Var var_F8 = ""
  loc_723FA6: FLdI2 var_8C
  loc_723FA9: LitI2_Byte &H14
  loc_723FAB: NeI2
  loc_723FAC: BranchF loc_723FBD
  loc_723FB1: FLdI2 var_86
  loc_723FB4: LitI2_Byte &H37
  loc_723FB6: AddI2
  loc_723FB7: FStI2 var_86
  loc_723FBA: Branch loc_724562
  loc_723FC1: FLdI2 var_86
  loc_723FC4: LitI2_Byte 4
  loc_723FC6: AddI2
  loc_723FC7: FStI2 var_86
  loc_723FCC: LitVarI2 var_F8, 10
  loc_723FD1: FLdI2 var_86
  loc_723FD4: CI4UI1
  loc_723FD5: FLdPr Me
  loc_723FD8: MemLdStr global_80
  loc_723FDB: ImpAdCallI2 Mid$(, , )
  loc_723FE0: FStStrNoPop var_4F0
  loc_723FE3: ImpAdCallFPR4 push Val()
  loc_723FE8: FStFPR8 var_4FC
  loc_723FEB: LitI4 1
  loc_723FF0: LitI4 1
  loc_723FF5: LitVarStr var_118, "######0.00"
  loc_723FFA: FStVarCopyObj var_128
  loc_723FFD: FLdRfVar var_128
  loc_724000: FLdFPR8 var_4FC
  loc_724003: LitI2_Byte &H64
  loc_724005: CR8I2
  loc_724006: DivR8
  loc_724007: CVarR8
  loc_72400B: ImpAdCallI2 Format$(, )
  loc_724010: FStStr var_98
  loc_724013: FFree1Str var_4F0
  loc_724016: FFreeVar var_F8 = "": var_108 = ""
  loc_724021: FLdI2 var_86
  loc_724024: LitI2_Byte &HA
  loc_724026: AddI2
  loc_724027: FStI2 var_86
  loc_72402C: LitVarI2 var_F8, 10
  loc_724031: FLdI2 var_86
  loc_724034: CI4UI1
  loc_724035: FLdPr Me
  loc_724038: MemLdStr global_80
  loc_72403B: ImpAdCallI2 Mid$(, , )
  loc_724040: FStStrNoPop var_4F0
  loc_724043: ImpAdCallFPR4 push Val()
  loc_724048: FStFPR8 var_4FC
  loc_72404B: LitI4 1
  loc_724050: LitI4 1
  loc_724055: LitVarStr var_118, "######0.00"
  loc_72405A: FStVarCopyObj var_128
  loc_72405D: FLdRfVar var_128
  loc_724060: FLdFPR8 var_4FC
  loc_724063: LitI2_Byte &H64
  loc_724065: CR8I2
  loc_724066: DivR8
  loc_724067: CVarR8
  loc_72406B: ImpAdCallI2 Format$(, )
  loc_724070: FStStr var_9C
  loc_724073: FFree1Str var_4F0
  loc_724076: FFreeVar var_F8 = "": var_108 = ""
  loc_724081: FLdI2 var_86
  loc_724084: LitI2_Byte &HA
  loc_724086: AddI2
  loc_724087: FStI2 var_86
  loc_72408C: LitVarI2 var_F8, 10
  loc_724091: FLdI2 var_86
  loc_724094: CI4UI1
  loc_724095: FLdPr Me
  loc_724098: MemLdStr global_80
  loc_72409B: ImpAdCallI2 Mid$(, , )
  loc_7240A0: FStStrNoPop var_4F0
  loc_7240A3: ImpAdCallFPR4 push Val()
  loc_7240A8: FStFPR8 var_4FC
  loc_7240AB: LitI4 1
  loc_7240B0: LitI4 1
  loc_7240B5: LitVarStr var_118, "######0.00"
  loc_7240BA: FStVarCopyObj var_128
  loc_7240BD: FLdRfVar var_128
  loc_7240C0: FLdFPR8 var_4FC
  loc_7240C3: LitI2_Byte &H64
  loc_7240C5: CR8I2
  loc_7240C6: DivR8
  loc_7240C7: CVarR8
  loc_7240CB: ImpAdCallI2 Format$(, )
  loc_7240D0: FStStr var_A0
  loc_7240D3: FFree1Str var_4F0
  loc_7240D6: FFreeVar var_F8 = "": var_108 = ""
  loc_7240E1: FLdI2 var_86
  loc_7240E4: LitI2_Byte &HA
  loc_7240E6: AddI2
  loc_7240E7: FStI2 var_86
  loc_7240EC: LitVarI2 var_F8, 10
  loc_7240F1: FLdI2 var_86
  loc_7240F4: CI4UI1
  loc_7240F5: FLdPr Me
  loc_7240F8: MemLdStr global_80
  loc_7240FB: ImpAdCallI2 Mid$(, , )
  loc_724100: FStStrNoPop var_4F0
  loc_724103: ImpAdCallFPR4 push Val()
  loc_724108: FStFPR8 var_4FC
  loc_72410B: LitI4 1
  loc_724110: LitI4 1
  loc_724115: LitVarStr var_118, "######0.00"
  loc_72411A: FStVarCopyObj var_128
  loc_72411D: FLdRfVar var_128
  loc_724120: FLdFPR8 var_4FC
  loc_724123: LitI2_Byte &H64
  loc_724125: CR8I2
  loc_724126: DivR8
  loc_724127: CVarR8
  loc_72412B: ImpAdCallI2 Format$(, )
  loc_724130: FStStr var_A4
  loc_724133: FFree1Str var_4F0
  loc_724136: FFreeVar var_F8 = "": var_108 = ""
  loc_724141: FLdI2 var_86
  loc_724144: LitI2_Byte &HA
  loc_724146: AddI2
  loc_724147: FStI2 var_86
  loc_72414C: FLdPr Me
  loc_72414F: MemLdStr global_156
  loc_724152: LitStr "0000004"
  loc_724155: GeStr
  loc_724157: BranchF loc_724257
  loc_72415C: LitVarI2 var_F8, 10
  loc_724161: FLdI2 var_86
  loc_724164: CI4UI1
  loc_724165: FLdPr Me
  loc_724168: MemLdStr global_80
  loc_72416B: ImpAdCallI2 Mid$(, , )
  loc_724170: FStStrNoPop var_4F0
  loc_724173: ImpAdCallFPR4 push Val()
  loc_724178: FStFPR8 var_4FC
  loc_72417B: LitI4 1
  loc_724180: LitI4 1
  loc_724185: LitVarStr var_118, "######0.00"
  loc_72418A: FStVarCopyObj var_128
  loc_72418D: FLdRfVar var_128
  loc_724190: FLdFPR8 var_4FC
  loc_724193: LitI2_Byte &H64
  loc_724195: CR8I2
  loc_724196: DivR8
  loc_724197: CVarR8
  loc_72419B: ImpAdCallI2 Format$(, )
  loc_7241A0: FStStr var_B0
  loc_7241A3: FFree1Str var_4F0
  loc_7241A6: FFreeVar var_F8 = "": var_108 = ""
  loc_7241B1: FLdI2 var_86
  loc_7241B4: LitI2_Byte &HA
  loc_7241B6: AddI2
  loc_7241B7: FStI2 var_86
  loc_7241BC: LitVarI2 var_F8, 10
  loc_7241C1: FLdI2 var_86
  loc_7241C4: CI4UI1
  loc_7241C5: FLdPr Me
  loc_7241C8: MemLdStr global_80
  loc_7241CB: ImpAdCallI2 Mid$(, , )
  loc_7241D0: FStStrNoPop var_4F0
  loc_7241D3: ImpAdCallFPR4 push Val()
  loc_7241D8: FStFPR8 var_4FC
  loc_7241DB: LitI4 1
  loc_7241E0: LitI4 1
  loc_7241E5: LitVarStr var_118, "######0.00"
  loc_7241EA: FStVarCopyObj var_128
  loc_7241ED: FLdRfVar var_128
  loc_7241F0: FLdFPR8 var_4FC
  loc_7241F3: LitI2_Byte &H64
  loc_7241F5: CR8I2
  loc_7241F6: DivR8
  loc_7241F7: CVarR8
  loc_7241FB: ImpAdCallI2 Format$(, )
  loc_724200: FStStr var_B4
  loc_724203: FFree1Str var_4F0
  loc_724206: FFreeVar var_F8 = "": var_108 = ""
  loc_724211: FLdI2 var_86
  loc_724214: LitI2_Byte &HA
  loc_724216: AddI2
  loc_724217: FStI2 var_86
  loc_72421C: ILdRf var_B4
  loc_72421F: CR8Str
  loc_724221: ILdRf var_B0
  loc_724224: CR8Str
  loc_724226: AddR8
  loc_724227: FStFPR8 var_C4
  loc_72422C: FLdRfVar var_4F0
  loc_72422F: LitDate 0
  loc_724238: PopTmpLdAdFPR8
  loc_72423C: LitDate 0
  loc_724245: PopTmpLdAdFPR8
  loc_724249: FLdRfVar var_C4
  loc_72424C: from_stack_4v = Proc_124_11_5F0F1C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_724251: FLdZeroAd var_4F0
  loc_724254: FStStr var_B0
  loc_72425B: FLdPr Me
  loc_72425E: MemLdStr global_156
  loc_724261: LitStr "0000003"
  loc_724264: GeStr
  loc_724266: BranchF loc_724274
  loc_72426B: FLdI2 var_86
  loc_72426E: LitI2_Byte &HA
  loc_724270: AddI2
  loc_724271: FStI2 var_86
  loc_724278: LitVarI2 var_F8, 10
  loc_72427D: FLdI2 var_86
  loc_724280: CI4UI1
  loc_724281: FLdPr Me
  loc_724284: MemLdStr global_80
  loc_724287: ImpAdCallI2 Mid$(, , )
  loc_72428C: FStStrNoPop var_4F0
  loc_72428F: ImpAdCallFPR4 push Val()
  loc_724294: FStFPR8 var_4FC
  loc_724297: LitI4 1
  loc_72429C: LitI4 1
  loc_7242A1: LitVarStr var_118, "######0.00"
  loc_7242A6: FStVarCopyObj var_128
  loc_7242A9: FLdRfVar var_128
  loc_7242AC: FLdFPR8 var_4FC
  loc_7242AF: LitI2_Byte &H64
  loc_7242B1: CR8I2
  loc_7242B2: DivR8
  loc_7242B3: CVarR8
  loc_7242B7: ImpAdCallI2 Format$(, )
  loc_7242BC: FStStr var_A8
  loc_7242BF: FFree1Str var_4F0
  loc_7242C2: FFreeVar var_F8 = "": var_108 = ""
  loc_7242CD: FLdI2 var_86
  loc_7242D0: LitI2_Byte &HA
  loc_7242D2: AddI2
  loc_7242D3: FStI2 var_86
  loc_7242D8: FLdI2 var_86
  loc_7242DB: LitI2_Byte 1
  loc_7242DD: AddI2
  loc_7242DE: FStI2 var_86
  loc_7242E3: LitI2_Byte &H13
  loc_7242E5: CR8I2
  loc_7242E6: CVarR4
  loc_7242EA: PopAdLdVar
  loc_7242EB: FLdPr var_90
  loc_7242EE: LateIdSt
  loc_7242F5: FLdPr Me
  loc_7242F8: MemLdStr global_156
  loc_7242FB: LitStr "0000004"
  loc_7242FE: GeStr
  loc_724300: BranchF loc_724449
  loc_724305: LitI4 1
  loc_72430A: LitI4 1
  loc_72430F: LitVarStr var_E4, "@@@@@@@@@@"
  loc_724314: FStVarCopyObj var_F8
  loc_724317: FLdRfVar var_F8
  loc_72431A: FLdRfVar var_98
  loc_72431D: CVarRef
  loc_724322: ImpAdCallI2 Format$(, )
  loc_724327: FStStr var_51C
  loc_72432A: LitI4 1
  loc_72432F: LitI4 1
  loc_724334: LitVarStr var_138, "@@@@@@@@@@"
  loc_724339: FStVarCopyObj var_108
  loc_72433C: FLdRfVar var_108
  loc_72433F: FLdRfVar var_9C
  loc_724342: CVarRef
  loc_724347: ImpAdCallI2 Format$(, )
  loc_72434C: FStStr var_520
  loc_72434F: LitI4 1
  loc_724354: LitI4 1
  loc_724359: LitVarStr var_178, "@@@@@@@@@@"
  loc_72435E: FStVarCopyObj var_128
  loc_724361: FLdRfVar var_128
  loc_724364: FLdRfVar var_A0
  loc_724367: CVarRef
  loc_72436C: ImpAdCallI2 Format$(, )
  loc_724371: FStStr var_524
  loc_724374: LitI4 1
  loc_724379: LitI4 1
  loc_72437E: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_724383: FStVarCopyObj var_148
  loc_724386: FLdRfVar var_148
  loc_724389: FLdRfVar var_A4
  loc_72438C: CVarRef
  loc_724391: ImpAdCallI2 Format$(, )
  loc_724396: FStStr var_528
  loc_724399: LitI4 1
  loc_72439E: LitI4 1
  loc_7243A3: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_7243A8: FStVarCopyObj var_168
  loc_7243AB: FLdRfVar var_168
  loc_7243AE: FLdRfVar var_B0
  loc_7243B1: CVarRef
  loc_7243B6: ImpAdCallI2 Format$(, )
  loc_7243BB: FStStr var_52C
  loc_7243BE: LitI4 1
  loc_7243C3: LitI4 1
  loc_7243C8: LitVarStr var_238, "@@@@@@@@@@"
  loc_7243CD: FStVarCopyObj var_188
  loc_7243D0: FLdRfVar var_188
  loc_7243D3: FLdRfVar var_A8
  loc_7243D6: CVarRef
  loc_7243DB: ImpAdCallI2 Format$(, )
  loc_7243E0: FStStr var_530
  loc_7243E3: FLdZeroAd var_530
  loc_7243E6: FStStrNoPop var_518
  loc_7243E9: LitI2_Byte &H59
  loc_7243EB: FLdZeroAd var_52C
  loc_7243EE: FStStrNoPop var_514
  loc_7243F1: LitI2_Byte &H4A
  loc_7243F3: FLdZeroAd var_528
  loc_7243F6: FStStrNoPop var_510
  loc_7243F9: LitI2_Byte &H3E
  loc_7243FB: FLdZeroAd var_524
  loc_7243FE: FStStrNoPop var_508
  loc_724401: LitI2_Byte &H32
  loc_724403: FLdZeroAd var_520
  loc_724406: FStStrNoPop var_4F4
  loc_724409: LitI2_Byte &H26
  loc_72440B: FLdZeroAd var_51C
  loc_72440E: FStStrNoPop var_4F0
  loc_724411: LitI2_Byte &H1A
  loc_724413: ILdRf var_90
  loc_724416: PrintObject
  loc_72441C: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = "": var_528 = "": var_52C = ""
  loc_724437: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_724446: Branch loc_72455B
  loc_72444D: LitI4 1
  loc_724452: LitI4 1
  loc_724457: LitVarStr var_E4, "@@@@@@@@@@"
  loc_72445C: FStVarCopyObj var_F8
  loc_72445F: FLdRfVar var_F8
  loc_724462: FLdRfVar var_98
  loc_724465: CVarRef
  loc_72446A: ImpAdCallI2 Format$(, )
  loc_72446F: FStStr var_518
  loc_724472: LitI4 1
  loc_724477: LitI4 1
  loc_72447C: LitVarStr var_138, "@@@@@@@@@@"
  loc_724481: FStVarCopyObj var_108
  loc_724484: FLdRfVar var_108
  loc_724487: FLdRfVar var_9C
  loc_72448A: CVarRef
  loc_72448F: ImpAdCallI2 Format$(, )
  loc_724494: FStStr var_51C
  loc_724497: LitI4 1
  loc_72449C: LitI4 1
  loc_7244A1: LitVarStr var_178, "@@@@@@@@@@"
  loc_7244A6: FStVarCopyObj var_128
  loc_7244A9: FLdRfVar var_128
  loc_7244AC: FLdRfVar var_A0
  loc_7244AF: CVarRef
  loc_7244B4: ImpAdCallI2 Format$(, )
  loc_7244B9: FStStr var_520
  loc_7244BC: LitI4 1
  loc_7244C1: LitI4 1
  loc_7244C6: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_7244CB: FStVarCopyObj var_148
  loc_7244CE: FLdRfVar var_148
  loc_7244D1: FLdRfVar var_A4
  loc_7244D4: CVarRef
  loc_7244D9: ImpAdCallI2 Format$(, )
  loc_7244DE: FStStr var_524
  loc_7244E1: LitI4 1
  loc_7244E6: LitI4 1
  loc_7244EB: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_7244F0: FStVarCopyObj var_168
  loc_7244F3: FLdRfVar var_168
  loc_7244F6: FLdRfVar var_A8
  loc_7244F9: CVarRef
  loc_7244FE: ImpAdCallI2 Format$(, )
  loc_724503: FStStr var_528
  loc_724506: FLdZeroAd var_528
  loc_724509: FStStrNoPop var_514
  loc_72450C: LitI2_Byte &H57
  loc_72450E: FLdZeroAd var_524
  loc_724511: FStStrNoPop var_510
  loc_724514: LitI2_Byte &H46
  loc_724516: FLdZeroAd var_520
  loc_724519: FStStrNoPop var_508
  loc_72451C: LitI2_Byte &H37
  loc_72451E: FLdZeroAd var_51C
  loc_724521: FStStrNoPop var_4F4
  loc_724524: LitI2_Byte &H27
  loc_724526: FLdZeroAd var_518
  loc_724529: FStStrNoPop var_4F0
  loc_72452C: LitI2_Byte &H1B
  loc_72452E: ILdRf var_90
  loc_724531: PrintObject
  loc_724537: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_72454E: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_72455F: Branch loc_724569
  loc_724566: Branch loc_723F6B
  loc_72456B: FLdI2 var_86
  loc_72456E: CI4UI1
  loc_72456F: FLdPr Me
  loc_724572: MemLdStr global_80
  loc_724575: FnLenStr
  loc_724576: LtI4
  loc_724577: BranchF loc_724B67
  loc_72457C: LitVarI2 var_F8, 2
  loc_724581: FLdI2 var_86
  loc_724584: CI4UI1
  loc_724585: FLdPr Me
  loc_724588: MemLdStr global_80
  loc_72458B: ImpAdCallI2 Mid$(, , )
  loc_724590: FStStrNoPop var_4F0
  loc_724593: ImpAdCallFPR4 push Val()
  loc_724598: CI2R8
  loc_724599: FStI2 var_8C
  loc_72459C: FFree1Str var_4F0
  loc_72459F: FFree1Var var_F8 = ""
  loc_7245A4: FLdI2 var_8C
  loc_7245A7: LitI2_Byte &H1E
  loc_7245A9: NeI2
  loc_7245AA: BranchF loc_7245BB
  loc_7245AF: FLdI2 var_86
  loc_7245B2: LitI2_Byte &H41
  loc_7245B4: AddI2
  loc_7245B5: FStI2 var_86
  loc_7245B8: Branch loc_724B60
  loc_7245BF: FLdI2 var_86
  loc_7245C2: LitI2_Byte 4
  loc_7245C4: AddI2
  loc_7245C5: FStI2 var_86
  loc_7245CA: LitVarI2 var_F8, 10
  loc_7245CF: FLdI2 var_86
  loc_7245D2: CI4UI1
  loc_7245D3: FLdPr Me
  loc_7245D6: MemLdStr global_80
  loc_7245D9: ImpAdCallI2 Mid$(, , )
  loc_7245DE: FStStrNoPop var_4F0
  loc_7245E1: ImpAdCallFPR4 push Val()
  loc_7245E6: FStFPR8 var_4FC
  loc_7245E9: LitI4 1
  loc_7245EE: LitI4 1
  loc_7245F3: LitVarStr var_118, "######0.00"
  loc_7245F8: FStVarCopyObj var_128
  loc_7245FB: FLdRfVar var_128
  loc_7245FE: FLdFPR8 var_4FC
  loc_724601: LitI2_Byte &H64
  loc_724603: CR8I2
  loc_724604: DivR8
  loc_724605: CVarR8
  loc_724609: ImpAdCallI2 Format$(, )
  loc_72460E: FStStr var_98
  loc_724611: FFree1Str var_4F0
  loc_724614: FFreeVar var_F8 = "": var_108 = ""
  loc_72461F: FLdI2 var_86
  loc_724622: LitI2_Byte &HA
  loc_724624: AddI2
  loc_724625: FStI2 var_86
  loc_72462A: LitVarI2 var_F8, 10
  loc_72462F: FLdI2 var_86
  loc_724632: CI4UI1
  loc_724633: FLdPr Me
  loc_724636: MemLdStr global_80
  loc_724639: ImpAdCallI2 Mid$(, , )
  loc_72463E: FStStrNoPop var_4F0
  loc_724641: ImpAdCallFPR4 push Val()
  loc_724646: FStFPR8 var_4FC
  loc_724649: LitI4 1
  loc_72464E: LitI4 1
  loc_724653: LitVarStr var_118, "######0.00"
  loc_724658: FStVarCopyObj var_128
  loc_72465B: FLdRfVar var_128
  loc_72465E: FLdFPR8 var_4FC
  loc_724661: LitI2_Byte &H64
  loc_724663: CR8I2
  loc_724664: DivR8
  loc_724665: CVarR8
  loc_724669: ImpAdCallI2 Format$(, )
  loc_72466E: FStStr var_9C
  loc_724671: FFree1Str var_4F0
  loc_724674: FFreeVar var_F8 = "": var_108 = ""
  loc_72467F: FLdI2 var_86
  loc_724682: LitI2_Byte &HA
  loc_724684: AddI2
  loc_724685: FStI2 var_86
  loc_72468A: LitVarI2 var_F8, 10
  loc_72468F: FLdI2 var_86
  loc_724692: CI4UI1
  loc_724693: FLdPr Me
  loc_724696: MemLdStr global_80
  loc_724699: ImpAdCallI2 Mid$(, , )
  loc_72469E: FStStrNoPop var_4F0
  loc_7246A1: ImpAdCallFPR4 push Val()
  loc_7246A6: FStFPR8 var_4FC
  loc_7246A9: LitI4 1
  loc_7246AE: LitI4 1
  loc_7246B3: LitVarStr var_118, "######0.00"
  loc_7246B8: FStVarCopyObj var_128
  loc_7246BB: FLdRfVar var_128
  loc_7246BE: FLdFPR8 var_4FC
  loc_7246C1: LitI2_Byte &H64
  loc_7246C3: CR8I2
  loc_7246C4: DivR8
  loc_7246C5: CVarR8
  loc_7246C9: ImpAdCallI2 Format$(, )
  loc_7246CE: FStStr var_A0
  loc_7246D1: FFree1Str var_4F0
  loc_7246D4: FFreeVar var_F8 = "": var_108 = ""
  loc_7246DF: FLdI2 var_86
  loc_7246E2: LitI2_Byte &HA
  loc_7246E4: AddI2
  loc_7246E5: FStI2 var_86
  loc_7246EA: LitVarI2 var_F8, 10
  loc_7246EF: FLdI2 var_86
  loc_7246F2: CI4UI1
  loc_7246F3: FLdPr Me
  loc_7246F6: MemLdStr global_80
  loc_7246F9: ImpAdCallI2 Mid$(, , )
  loc_7246FE: FStStrNoPop var_4F0
  loc_724701: ImpAdCallFPR4 push Val()
  loc_724706: FStFPR8 var_4FC
  loc_724709: LitI4 1
  loc_72470E: LitI4 1
  loc_724713: LitVarStr var_118, "######0.00"
  loc_724718: FStVarCopyObj var_128
  loc_72471B: FLdRfVar var_128
  loc_72471E: FLdFPR8 var_4FC
  loc_724721: LitI2_Byte &H64
  loc_724723: CR8I2
  loc_724724: DivR8
  loc_724725: CVarR8
  loc_724729: ImpAdCallI2 Format$(, )
  loc_72472E: FStStr var_A4
  loc_724731: FFree1Str var_4F0
  loc_724734: FFreeVar var_F8 = "": var_108 = ""
  loc_72473F: FLdI2 var_86
  loc_724742: LitI2_Byte &HA
  loc_724744: AddI2
  loc_724745: FStI2 var_86
  loc_72474A: FLdPr Me
  loc_72474D: MemLdStr global_156
  loc_724750: LitStr "0000004"
  loc_724753: GeStr
  loc_724755: BranchF loc_724855
  loc_72475A: LitVarI2 var_F8, 10
  loc_72475F: FLdI2 var_86
  loc_724762: CI4UI1
  loc_724763: FLdPr Me
  loc_724766: MemLdStr global_80
  loc_724769: ImpAdCallI2 Mid$(, , )
  loc_72476E: FStStrNoPop var_4F0
  loc_724771: ImpAdCallFPR4 push Val()
  loc_724776: FStFPR8 var_4FC
  loc_724779: LitI4 1
  loc_72477E: LitI4 1
  loc_724783: LitVarStr var_118, "######0.00"
  loc_724788: FStVarCopyObj var_128
  loc_72478B: FLdRfVar var_128
  loc_72478E: FLdFPR8 var_4FC
  loc_724791: LitI2_Byte &H64
  loc_724793: CR8I2
  loc_724794: DivR8
  loc_724795: CVarR8
  loc_724799: ImpAdCallI2 Format$(, )
  loc_72479E: FStStr var_B0
  loc_7247A1: FFree1Str var_4F0
  loc_7247A4: FFreeVar var_F8 = "": var_108 = ""
  loc_7247AF: FLdI2 var_86
  loc_7247B2: LitI2_Byte &HA
  loc_7247B4: AddI2
  loc_7247B5: FStI2 var_86
  loc_7247BA: LitVarI2 var_F8, 10
  loc_7247BF: FLdI2 var_86
  loc_7247C2: CI4UI1
  loc_7247C3: FLdPr Me
  loc_7247C6: MemLdStr global_80
  loc_7247C9: ImpAdCallI2 Mid$(, , )
  loc_7247CE: FStStrNoPop var_4F0
  loc_7247D1: ImpAdCallFPR4 push Val()
  loc_7247D6: FStFPR8 var_4FC
  loc_7247D9: LitI4 1
  loc_7247DE: LitI4 1
  loc_7247E3: LitVarStr var_118, "######0.00"
  loc_7247E8: FStVarCopyObj var_128
  loc_7247EB: FLdRfVar var_128
  loc_7247EE: FLdFPR8 var_4FC
  loc_7247F1: LitI2_Byte &H64
  loc_7247F3: CR8I2
  loc_7247F4: DivR8
  loc_7247F5: CVarR8
  loc_7247F9: ImpAdCallI2 Format$(, )
  loc_7247FE: FStStr var_B4
  loc_724801: FFree1Str var_4F0
  loc_724804: FFreeVar var_F8 = "": var_108 = ""
  loc_72480F: FLdI2 var_86
  loc_724812: LitI2_Byte &HA
  loc_724814: AddI2
  loc_724815: FStI2 var_86
  loc_72481A: ILdRf var_B4
  loc_72481D: CR8Str
  loc_72481F: ILdRf var_B0
  loc_724822: CR8Str
  loc_724824: AddR8
  loc_724825: FStFPR8 var_C4
  loc_72482A: FLdRfVar var_4F0
  loc_72482D: LitDate 0
  loc_724836: PopTmpLdAdFPR8
  loc_72483A: LitDate 0
  loc_724843: PopTmpLdAdFPR8
  loc_724847: FLdRfVar var_C4
  loc_72484A: from_stack_4v = Proc_124_11_5F0F1C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_72484F: FLdZeroAd var_4F0
  loc_724852: FStStr var_B0
  loc_724859: FLdPr Me
  loc_72485C: MemLdStr global_156
  loc_72485F: LitStr "0000003"
  loc_724862: GeStr
  loc_724864: BranchF loc_724872
  loc_724869: FLdI2 var_86
  loc_72486C: LitI2_Byte &HA
  loc_72486E: AddI2
  loc_72486F: FStI2 var_86
  loc_724876: LitVarI2 var_F8, 10
  loc_72487B: FLdI2 var_86
  loc_72487E: CI4UI1
  loc_72487F: FLdPr Me
  loc_724882: MemLdStr global_80
  loc_724885: ImpAdCallI2 Mid$(, , )
  loc_72488A: FStStrNoPop var_4F0
  loc_72488D: ImpAdCallFPR4 push Val()
  loc_724892: FStFPR8 var_4FC
  loc_724895: LitI4 1
  loc_72489A: LitI4 1
  loc_72489F: LitVarStr var_118, "######0.00"
  loc_7248A4: FStVarCopyObj var_128
  loc_7248A7: FLdRfVar var_128
  loc_7248AA: FLdFPR8 var_4FC
  loc_7248AD: LitI2_Byte &H64
  loc_7248AF: CR8I2
  loc_7248B0: DivR8
  loc_7248B1: CVarR8
  loc_7248B5: ImpAdCallI2 Format$(, )
  loc_7248BA: FStStr var_A8
  loc_7248BD: FFree1Str var_4F0
  loc_7248C0: FFreeVar var_F8 = "": var_108 = ""
  loc_7248CB: FLdI2 var_86
  loc_7248CE: LitI2_Byte &HA
  loc_7248D0: AddI2
  loc_7248D1: FStI2 var_86
  loc_7248D6: FLdI2 var_86
  loc_7248D9: LitI2_Byte 1
  loc_7248DB: AddI2
  loc_7248DC: FStI2 var_86
  loc_7248E1: LitI2_Byte &H14
  loc_7248E3: CR8I2
  loc_7248E4: CVarR4
  loc_7248E8: PopAdLdVar
  loc_7248E9: FLdPr var_90
  loc_7248EC: LateIdSt
  loc_7248F3: FLdPr Me
  loc_7248F6: MemLdStr global_156
  loc_7248F9: LitStr "0000004"
  loc_7248FC: GeStr
  loc_7248FE: BranchF loc_724A47
  loc_724903: LitI4 1
  loc_724908: LitI4 1
  loc_72490D: LitVarStr var_E4, "@@@@@@@@@@"
  loc_724912: FStVarCopyObj var_F8
  loc_724915: FLdRfVar var_F8
  loc_724918: FLdRfVar var_98
  loc_72491B: CVarRef
  loc_724920: ImpAdCallI2 Format$(, )
  loc_724925: FStStr var_51C
  loc_724928: LitI4 1
  loc_72492D: LitI4 1
  loc_724932: LitVarStr var_138, "@@@@@@@@@@"
  loc_724937: FStVarCopyObj var_108
  loc_72493A: FLdRfVar var_108
  loc_72493D: FLdRfVar var_9C
  loc_724940: CVarRef
  loc_724945: ImpAdCallI2 Format$(, )
  loc_72494A: FStStr var_520
  loc_72494D: LitI4 1
  loc_724952: LitI4 1
  loc_724957: LitVarStr var_178, "@@@@@@@@@@"
  loc_72495C: FStVarCopyObj var_128
  loc_72495F: FLdRfVar var_128
  loc_724962: FLdRfVar var_A0
  loc_724965: CVarRef
  loc_72496A: ImpAdCallI2 Format$(, )
  loc_72496F: FStStr var_524
  loc_724972: LitI4 1
  loc_724977: LitI4 1
  loc_72497C: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_724981: FStVarCopyObj var_148
  loc_724984: FLdRfVar var_148
  loc_724987: FLdRfVar var_A4
  loc_72498A: CVarRef
  loc_72498F: ImpAdCallI2 Format$(, )
  loc_724994: FStStr var_528
  loc_724997: LitI4 1
  loc_72499C: LitI4 1
  loc_7249A1: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_7249A6: FStVarCopyObj var_168
  loc_7249A9: FLdRfVar var_168
  loc_7249AC: FLdRfVar var_B0
  loc_7249AF: CVarRef
  loc_7249B4: ImpAdCallI2 Format$(, )
  loc_7249B9: FStStr var_52C
  loc_7249BC: LitI4 1
  loc_7249C1: LitI4 1
  loc_7249C6: LitVarStr var_238, "@@@@@@@@@@"
  loc_7249CB: FStVarCopyObj var_188
  loc_7249CE: FLdRfVar var_188
  loc_7249D1: FLdRfVar var_A8
  loc_7249D4: CVarRef
  loc_7249D9: ImpAdCallI2 Format$(, )
  loc_7249DE: FStStr var_530
  loc_7249E1: FLdZeroAd var_530
  loc_7249E4: FStStrNoPop var_518
  loc_7249E7: LitI2_Byte &H59
  loc_7249E9: FLdZeroAd var_52C
  loc_7249EC: FStStrNoPop var_514
  loc_7249EF: LitI2_Byte &H4A
  loc_7249F1: FLdZeroAd var_528
  loc_7249F4: FStStrNoPop var_510
  loc_7249F7: LitI2_Byte &H3E
  loc_7249F9: FLdZeroAd var_524
  loc_7249FC: FStStrNoPop var_508
  loc_7249FF: LitI2_Byte &H32
  loc_724A01: FLdZeroAd var_520
  loc_724A04: FStStrNoPop var_4F4
  loc_724A07: LitI2_Byte &H26
  loc_724A09: FLdZeroAd var_51C
  loc_724A0C: FStStrNoPop var_4F0
  loc_724A0F: LitI2_Byte &H1A
  loc_724A11: ILdRf var_90
  loc_724A14: PrintObject
  loc_724A1A: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = "": var_528 = "": var_52C = ""
  loc_724A35: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_724A44: Branch loc_724B59
  loc_724A4B: LitI4 1
  loc_724A50: LitI4 1
  loc_724A55: LitVarStr var_E4, "@@@@@@@@@@"
  loc_724A5A: FStVarCopyObj var_F8
  loc_724A5D: FLdRfVar var_F8
  loc_724A60: FLdRfVar var_98
  loc_724A63: CVarRef
  loc_724A68: ImpAdCallI2 Format$(, )
  loc_724A6D: FStStr var_518
  loc_724A70: LitI4 1
  loc_724A75: LitI4 1
  loc_724A7A: LitVarStr var_138, "@@@@@@@@@@"
  loc_724A7F: FStVarCopyObj var_108
  loc_724A82: FLdRfVar var_108
  loc_724A85: FLdRfVar var_9C
  loc_724A88: CVarRef
  loc_724A8D: ImpAdCallI2 Format$(, )
  loc_724A92: FStStr var_51C
  loc_724A95: LitI4 1
  loc_724A9A: LitI4 1
  loc_724A9F: LitVarStr var_178, "@@@@@@@@@@"
  loc_724AA4: FStVarCopyObj var_128
  loc_724AA7: FLdRfVar var_128
  loc_724AAA: FLdRfVar var_A0
  loc_724AAD: CVarRef
  loc_724AB2: ImpAdCallI2 Format$(, )
  loc_724AB7: FStStr var_520
  loc_724ABA: LitI4 1
  loc_724ABF: LitI4 1
  loc_724AC4: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_724AC9: FStVarCopyObj var_148
  loc_724ACC: FLdRfVar var_148
  loc_724ACF: FLdRfVar var_A4
  loc_724AD2: CVarRef
  loc_724AD7: ImpAdCallI2 Format$(, )
  loc_724ADC: FStStr var_524
  loc_724ADF: LitI4 1
  loc_724AE4: LitI4 1
  loc_724AE9: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_724AEE: FStVarCopyObj var_168
  loc_724AF1: FLdRfVar var_168
  loc_724AF4: FLdRfVar var_A8
  loc_724AF7: CVarRef
  loc_724AFC: ImpAdCallI2 Format$(, )
  loc_724B01: FStStr var_528
  loc_724B04: FLdZeroAd var_528
  loc_724B07: FStStrNoPop var_514
  loc_724B0A: LitI2_Byte &H57
  loc_724B0C: FLdZeroAd var_524
  loc_724B0F: FStStrNoPop var_510
  loc_724B12: LitI2_Byte &H46
  loc_724B14: FLdZeroAd var_520
  loc_724B17: FStStrNoPop var_508
  loc_724B1A: LitI2_Byte &H37
  loc_724B1C: FLdZeroAd var_51C
  loc_724B1F: FStStrNoPop var_4F4
  loc_724B22: LitI2_Byte &H27
  loc_724B24: FLdZeroAd var_518
  loc_724B27: FStStrNoPop var_4F0
  loc_724B2A: LitI2_Byte &H1B
  loc_724B2C: ILdRf var_90
  loc_724B2F: PrintObject
  loc_724B35: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_724B4C: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_724B5D: Branch loc_724B67
  loc_724B64: Branch loc_724569
  loc_724B69: FLdPr Me
  loc_724B6C: MemLdStr global_156
  loc_724B6F: LitStr "0000004"
  loc_724B72: GeStr
  loc_724B74: BranchF loc_724B77
  loc_724B7B: FLdI2 var_86
  loc_724B7E: CI4UI1
  loc_724B7F: FLdPr Me
  loc_724B82: MemLdStr global_80
  loc_724B85: FnLenStr
  loc_724B86: LtI4
  loc_724B87: BranchF loc_725177
  loc_724B8C: LitVarI2 var_F8, 2
  loc_724B91: FLdI2 var_86
  loc_724B94: CI4UI1
  loc_724B95: FLdPr Me
  loc_724B98: MemLdStr global_80
  loc_724B9B: ImpAdCallI2 Mid$(, , )
  loc_724BA0: FStStrNoPop var_4F0
  loc_724BA3: ImpAdCallFPR4 push Val()
  loc_724BA8: CI2R8
  loc_724BA9: FStI2 var_8C
  loc_724BAC: FFree1Str var_4F0
  loc_724BAF: FFree1Var var_F8 = ""
  loc_724BB4: FLdI2 var_8C
  loc_724BB7: LitI2_Byte &H5A
  loc_724BB9: NeI2
  loc_724BBA: BranchF loc_724BCB
  loc_724BBF: FLdI2 var_86
  loc_724BC2: LitI2_Byte &H41
  loc_724BC4: AddI2
  loc_724BC5: FStI2 var_86
  loc_724BC8: Branch loc_725170
  loc_724BCF: FLdI2 var_86
  loc_724BD2: LitI2_Byte 4
  loc_724BD4: AddI2
  loc_724BD5: FStI2 var_86
  loc_724BDA: LitVarI2 var_F8, 10
  loc_724BDF: FLdI2 var_86
  loc_724BE2: CI4UI1
  loc_724BE3: FLdPr Me
  loc_724BE6: MemLdStr global_80
  loc_724BE9: ImpAdCallI2 Mid$(, , )
  loc_724BEE: FStStrNoPop var_4F0
  loc_724BF1: ImpAdCallFPR4 push Val()
  loc_724BF6: FStFPR8 var_4FC
  loc_724BF9: LitI4 1
  loc_724BFE: LitI4 1
  loc_724C03: LitVarStr var_118, "######0.00"
  loc_724C08: FStVarCopyObj var_128
  loc_724C0B: FLdRfVar var_128
  loc_724C0E: FLdFPR8 var_4FC
  loc_724C11: LitI2_Byte &H64
  loc_724C13: CR8I2
  loc_724C14: DivR8
  loc_724C15: CVarR8
  loc_724C19: ImpAdCallI2 Format$(, )
  loc_724C1E: FStStr var_98
  loc_724C21: FFree1Str var_4F0
  loc_724C24: FFreeVar var_F8 = "": var_108 = ""
  loc_724C2F: FLdI2 var_86
  loc_724C32: LitI2_Byte &HA
  loc_724C34: AddI2
  loc_724C35: FStI2 var_86
  loc_724C3A: LitVarI2 var_F8, 10
  loc_724C3F: FLdI2 var_86
  loc_724C42: CI4UI1
  loc_724C43: FLdPr Me
  loc_724C46: MemLdStr global_80
  loc_724C49: ImpAdCallI2 Mid$(, , )
  loc_724C4E: FStStrNoPop var_4F0
  loc_724C51: ImpAdCallFPR4 push Val()
  loc_724C56: FStFPR8 var_4FC
  loc_724C59: LitI4 1
  loc_724C5E: LitI4 1
  loc_724C63: LitVarStr var_118, "######0.00"
  loc_724C68: FStVarCopyObj var_128
  loc_724C6B: FLdRfVar var_128
  loc_724C6E: FLdFPR8 var_4FC
  loc_724C71: LitI2_Byte &H64
  loc_724C73: CR8I2
  loc_724C74: DivR8
  loc_724C75: CVarR8
  loc_724C79: ImpAdCallI2 Format$(, )
  loc_724C7E: FStStr var_9C
  loc_724C81: FFree1Str var_4F0
  loc_724C84: FFreeVar var_F8 = "": var_108 = ""
  loc_724C8F: FLdI2 var_86
  loc_724C92: LitI2_Byte &HA
  loc_724C94: AddI2
  loc_724C95: FStI2 var_86
  loc_724C9A: LitVarI2 var_F8, 10
  loc_724C9F: FLdI2 var_86
  loc_724CA2: CI4UI1
  loc_724CA3: FLdPr Me
  loc_724CA6: MemLdStr global_80
  loc_724CA9: ImpAdCallI2 Mid$(, , )
  loc_724CAE: FStStrNoPop var_4F0
  loc_724CB1: ImpAdCallFPR4 push Val()
  loc_724CB6: FStFPR8 var_4FC
  loc_724CB9: LitI4 1
  loc_724CBE: LitI4 1
  loc_724CC3: LitVarStr var_118, "######0.00"
  loc_724CC8: FStVarCopyObj var_128
  loc_724CCB: FLdRfVar var_128
  loc_724CCE: FLdFPR8 var_4FC
  loc_724CD1: LitI2_Byte &H64
  loc_724CD3: CR8I2
  loc_724CD4: DivR8
  loc_724CD5: CVarR8
  loc_724CD9: ImpAdCallI2 Format$(, )
  loc_724CDE: FStStr var_A0
  loc_724CE1: FFree1Str var_4F0
  loc_724CE4: FFreeVar var_F8 = "": var_108 = ""
  loc_724CEF: FLdI2 var_86
  loc_724CF2: LitI2_Byte &HA
  loc_724CF4: AddI2
  loc_724CF5: FStI2 var_86
  loc_724CFA: LitVarI2 var_F8, 10
  loc_724CFF: FLdI2 var_86
  loc_724D02: CI4UI1
  loc_724D03: FLdPr Me
  loc_724D06: MemLdStr global_80
  loc_724D09: ImpAdCallI2 Mid$(, , )
  loc_724D0E: FStStrNoPop var_4F0
  loc_724D11: ImpAdCallFPR4 push Val()
  loc_724D16: FStFPR8 var_4FC
  loc_724D19: LitI4 1
  loc_724D1E: LitI4 1
  loc_724D23: LitVarStr var_118, "######0.00"
  loc_724D28: FStVarCopyObj var_128
  loc_724D2B: FLdRfVar var_128
  loc_724D2E: FLdFPR8 var_4FC
  loc_724D31: LitI2_Byte &H64
  loc_724D33: CR8I2
  loc_724D34: DivR8
  loc_724D35: CVarR8
  loc_724D39: ImpAdCallI2 Format$(, )
  loc_724D3E: FStStr var_A4
  loc_724D41: FFree1Str var_4F0
  loc_724D44: FFreeVar var_F8 = "": var_108 = ""
  loc_724D4F: FLdI2 var_86
  loc_724D52: LitI2_Byte &HA
  loc_724D54: AddI2
  loc_724D55: FStI2 var_86
  loc_724D5A: FLdPr Me
  loc_724D5D: MemLdStr global_156
  loc_724D60: LitStr "0000004"
  loc_724D63: GeStr
  loc_724D65: BranchF loc_724E65
  loc_724D6A: LitVarI2 var_F8, 10
  loc_724D6F: FLdI2 var_86
  loc_724D72: CI4UI1
  loc_724D73: FLdPr Me
  loc_724D76: MemLdStr global_80
  loc_724D79: ImpAdCallI2 Mid$(, , )
  loc_724D7E: FStStrNoPop var_4F0
  loc_724D81: ImpAdCallFPR4 push Val()
  loc_724D86: FStFPR8 var_4FC
  loc_724D89: LitI4 1
  loc_724D8E: LitI4 1
  loc_724D93: LitVarStr var_118, "######0.00"
  loc_724D98: FStVarCopyObj var_128
  loc_724D9B: FLdRfVar var_128
  loc_724D9E: FLdFPR8 var_4FC
  loc_724DA1: LitI2_Byte &H64
  loc_724DA3: CR8I2
  loc_724DA4: DivR8
  loc_724DA5: CVarR8
  loc_724DA9: ImpAdCallI2 Format$(, )
  loc_724DAE: FStStr var_B0
  loc_724DB1: FFree1Str var_4F0
  loc_724DB4: FFreeVar var_F8 = "": var_108 = ""
  loc_724DBF: FLdI2 var_86
  loc_724DC2: LitI2_Byte &HA
  loc_724DC4: AddI2
  loc_724DC5: FStI2 var_86
  loc_724DCA: LitVarI2 var_F8, 10
  loc_724DCF: FLdI2 var_86
  loc_724DD2: CI4UI1
  loc_724DD3: FLdPr Me
  loc_724DD6: MemLdStr global_80
  loc_724DD9: ImpAdCallI2 Mid$(, , )
  loc_724DDE: FStStrNoPop var_4F0
  loc_724DE1: ImpAdCallFPR4 push Val()
  loc_724DE6: FStFPR8 var_4FC
  loc_724DE9: LitI4 1
  loc_724DEE: LitI4 1
  loc_724DF3: LitVarStr var_118, "######0.00"
  loc_724DF8: FStVarCopyObj var_128
  loc_724DFB: FLdRfVar var_128
  loc_724DFE: FLdFPR8 var_4FC
  loc_724E01: LitI2_Byte &H64
  loc_724E03: CR8I2
  loc_724E04: DivR8
  loc_724E05: CVarR8
  loc_724E09: ImpAdCallI2 Format$(, )
  loc_724E0E: FStStr var_B4
  loc_724E11: FFree1Str var_4F0
  loc_724E14: FFreeVar var_F8 = "": var_108 = ""
  loc_724E1F: FLdI2 var_86
  loc_724E22: LitI2_Byte &HA
  loc_724E24: AddI2
  loc_724E25: FStI2 var_86
  loc_724E2A: ILdRf var_B4
  loc_724E2D: CR8Str
  loc_724E2F: ILdRf var_B0
  loc_724E32: CR8Str
  loc_724E34: AddR8
  loc_724E35: FStFPR8 var_C4
  loc_724E3A: FLdRfVar var_4F0
  loc_724E3D: LitDate 0
  loc_724E46: PopTmpLdAdFPR8
  loc_724E4A: LitDate 0
  loc_724E53: PopTmpLdAdFPR8
  loc_724E57: FLdRfVar var_C4
  loc_724E5A: from_stack_4v = Proc_124_11_5F0F1C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_724E5F: FLdZeroAd var_4F0
  loc_724E62: FStStr var_B0
  loc_724E69: FLdPr Me
  loc_724E6C: MemLdStr global_156
  loc_724E6F: LitStr "0000003"
  loc_724E72: GeStr
  loc_724E74: BranchF loc_724E82
  loc_724E79: FLdI2 var_86
  loc_724E7C: LitI2_Byte &HA
  loc_724E7E: AddI2
  loc_724E7F: FStI2 var_86
  loc_724E86: LitVarI2 var_F8, 10
  loc_724E8B: FLdI2 var_86
  loc_724E8E: CI4UI1
  loc_724E8F: FLdPr Me
  loc_724E92: MemLdStr global_80
  loc_724E95: ImpAdCallI2 Mid$(, , )
  loc_724E9A: FStStrNoPop var_4F0
  loc_724E9D: ImpAdCallFPR4 push Val()
  loc_724EA2: FStFPR8 var_4FC
  loc_724EA5: LitI4 1
  loc_724EAA: LitI4 1
  loc_724EAF: LitVarStr var_118, "######0.00"
  loc_724EB4: FStVarCopyObj var_128
  loc_724EB7: FLdRfVar var_128
  loc_724EBA: FLdFPR8 var_4FC
  loc_724EBD: LitI2_Byte &H64
  loc_724EBF: CR8I2
  loc_724EC0: DivR8
  loc_724EC1: CVarR8
  loc_724EC5: ImpAdCallI2 Format$(, )
  loc_724ECA: FStStr var_A8
  loc_724ECD: FFree1Str var_4F0
  loc_724ED0: FFreeVar var_F8 = "": var_108 = ""
  loc_724EDB: FLdI2 var_86
  loc_724EDE: LitI2_Byte &HA
  loc_724EE0: AddI2
  loc_724EE1: FStI2 var_86
  loc_724EE6: FLdI2 var_86
  loc_724EE9: LitI2_Byte 1
  loc_724EEB: AddI2
  loc_724EEC: FStI2 var_86
  loc_724EF1: LitI2_Byte &H17
  loc_724EF3: CR8I2
  loc_724EF4: CVarR4
  loc_724EF8: PopAdLdVar
  loc_724EF9: FLdPr var_90
  loc_724EFC: LateIdSt
  loc_724F03: FLdPr Me
  loc_724F06: MemLdStr global_156
  loc_724F09: LitStr "0000004"
  loc_724F0C: GeStr
  loc_724F0E: BranchF loc_725057
  loc_724F13: LitI4 1
  loc_724F18: LitI4 1
  loc_724F1D: LitVarStr var_E4, "@@@@@@@@@@"
  loc_724F22: FStVarCopyObj var_F8
  loc_724F25: FLdRfVar var_F8
  loc_724F28: FLdRfVar var_98
  loc_724F2B: CVarRef
  loc_724F30: ImpAdCallI2 Format$(, )
  loc_724F35: FStStr var_51C
  loc_724F38: LitI4 1
  loc_724F3D: LitI4 1
  loc_724F42: LitVarStr var_138, "@@@@@@@@@@"
  loc_724F47: FStVarCopyObj var_108
  loc_724F4A: FLdRfVar var_108
  loc_724F4D: FLdRfVar var_9C
  loc_724F50: CVarRef
  loc_724F55: ImpAdCallI2 Format$(, )
  loc_724F5A: FStStr var_520
  loc_724F5D: LitI4 1
  loc_724F62: LitI4 1
  loc_724F67: LitVarStr var_178, "@@@@@@@@@@"
  loc_724F6C: FStVarCopyObj var_128
  loc_724F6F: FLdRfVar var_128
  loc_724F72: FLdRfVar var_A0
  loc_724F75: CVarRef
  loc_724F7A: ImpAdCallI2 Format$(, )
  loc_724F7F: FStStr var_524
  loc_724F82: LitI4 1
  loc_724F87: LitI4 1
  loc_724F8C: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_724F91: FStVarCopyObj var_148
  loc_724F94: FLdRfVar var_148
  loc_724F97: FLdRfVar var_A4
  loc_724F9A: CVarRef
  loc_724F9F: ImpAdCallI2 Format$(, )
  loc_724FA4: FStStr var_528
  loc_724FA7: LitI4 1
  loc_724FAC: LitI4 1
  loc_724FB1: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_724FB6: FStVarCopyObj var_168
  loc_724FB9: FLdRfVar var_168
  loc_724FBC: FLdRfVar var_B0
  loc_724FBF: CVarRef
  loc_724FC4: ImpAdCallI2 Format$(, )
  loc_724FC9: FStStr var_52C
  loc_724FCC: LitI4 1
  loc_724FD1: LitI4 1
  loc_724FD6: LitVarStr var_238, "@@@@@@@@@@"
  loc_724FDB: FStVarCopyObj var_188
  loc_724FDE: FLdRfVar var_188
  loc_724FE1: FLdRfVar var_A8
  loc_724FE4: CVarRef
  loc_724FE9: ImpAdCallI2 Format$(, )
  loc_724FEE: FStStr var_530
  loc_724FF1: FLdZeroAd var_530
  loc_724FF4: FStStrNoPop var_518
  loc_724FF7: LitI2_Byte &H59
  loc_724FF9: FLdZeroAd var_52C
  loc_724FFC: FStStrNoPop var_514
  loc_724FFF: LitI2_Byte &H4A
  loc_725001: FLdZeroAd var_528
  loc_725004: FStStrNoPop var_510
  loc_725007: LitI2_Byte &H3E
  loc_725009: FLdZeroAd var_524
  loc_72500C: FStStrNoPop var_508
  loc_72500F: LitI2_Byte &H32
  loc_725011: FLdZeroAd var_520
  loc_725014: FStStrNoPop var_4F4
  loc_725017: LitI2_Byte &H26
  loc_725019: FLdZeroAd var_51C
  loc_72501C: FStStrNoPop var_4F0
  loc_72501F: LitI2_Byte &H1A
  loc_725021: ILdRf var_90
  loc_725024: PrintObject
  loc_72502A: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = "": var_528 = "": var_52C = ""
  loc_725045: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_725054: Branch loc_725169
  loc_72505B: LitI4 1
  loc_725060: LitI4 1
  loc_725065: LitVarStr var_E4, "@@@@@@@@@@"
  loc_72506A: FStVarCopyObj var_F8
  loc_72506D: FLdRfVar var_F8
  loc_725070: FLdRfVar var_98
  loc_725073: CVarRef
  loc_725078: ImpAdCallI2 Format$(, )
  loc_72507D: FStStr var_518
  loc_725080: LitI4 1
  loc_725085: LitI4 1
  loc_72508A: LitVarStr var_138, "@@@@@@@@@@"
  loc_72508F: FStVarCopyObj var_108
  loc_725092: FLdRfVar var_108
  loc_725095: FLdRfVar var_9C
  loc_725098: CVarRef
  loc_72509D: ImpAdCallI2 Format$(, )
  loc_7250A2: FStStr var_51C
  loc_7250A5: LitI4 1
  loc_7250AA: LitI4 1
  loc_7250AF: LitVarStr var_178, "@@@@@@@@@@"
  loc_7250B4: FStVarCopyObj var_128
  loc_7250B7: FLdRfVar var_128
  loc_7250BA: FLdRfVar var_A0
  loc_7250BD: CVarRef
  loc_7250C2: ImpAdCallI2 Format$(, )
  loc_7250C7: FStStr var_520
  loc_7250CA: LitI4 1
  loc_7250CF: LitI4 1
  loc_7250D4: LitVarStr var_1B8, "@@@@@@@@@@"
  loc_7250D9: FStVarCopyObj var_148
  loc_7250DC: FLdRfVar var_148
  loc_7250DF: FLdRfVar var_A4
  loc_7250E2: CVarRef
  loc_7250E7: ImpAdCallI2 Format$(, )
  loc_7250EC: FStStr var_524
  loc_7250EF: LitI4 1
  loc_7250F4: LitI4 1
  loc_7250F9: LitVarStr var_1F8, "@@@@@@@@@@"
  loc_7250FE: FStVarCopyObj var_168
  loc_725101: FLdRfVar var_168
  loc_725104: FLdRfVar var_A8
  loc_725107: CVarRef
  loc_72510C: ImpAdCallI2 Format$(, )
  loc_725111: FStStr var_528
  loc_725114: FLdZeroAd var_528
  loc_725117: FStStrNoPop var_514
  loc_72511A: LitI2_Byte &H57
  loc_72511C: FLdZeroAd var_524
  loc_72511F: FStStrNoPop var_510
  loc_725122: LitI2_Byte &H46
  loc_725124: FLdZeroAd var_520
  loc_725127: FStStrNoPop var_508
  loc_72512A: LitI2_Byte &H37
  loc_72512C: FLdZeroAd var_51C
  loc_72512F: FStStrNoPop var_4F4
  loc_725132: LitI2_Byte &H27
  loc_725134: FLdZeroAd var_518
  loc_725137: FStStrNoPop var_4F0
  loc_72513A: LitI2_Byte &H1B
  loc_72513C: ILdRf var_90
  loc_72513F: PrintObject
  loc_725145: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_72515C: FFreeVar var_F8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_72516D: Branch loc_725177
  loc_725174: Branch loc_724B79
  loc_725179: ILdRf var_90
  loc_72517C: PrintObject
  loc_725184: ILdRf var_90
  loc_725187: PrintObject
  loc_72518F: FLdRfVar var_514
  loc_725192: LitStr "0"
  loc_725195: FLdPr Me
  loc_725198: MemLdStr global_84
  loc_72519B: ConcatStr
  loc_72519C: FStStrNoPop var_4F0
  loc_72519F: FLdPr Me
  loc_7251A2: MemLdStr global_92
  loc_7251A5: ConcatStr
  loc_7251A6: FStStrNoPop var_4F4
  loc_7251A9: FLdPr Me
  loc_7251AC: MemLdStr global_88
  loc_7251AF: ConcatStr
  loc_7251B0: FStStrNoPop var_508
  loc_7251B3: FLdPr Me
  loc_7251B6: MemLdStr NroPreImpreso
  loc_7251B9: ConcatStr
  loc_7251BA: PopTmpLdAdStr
  loc_7251BE: from_stack_2v = Proc_124_12_5EC1A4(from_stack_1v)
  loc_7251C3: FLdZeroAd var_514
  loc_7251C6: FStStr var_AC
  loc_7251C9: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = ""
  loc_7251D6: LitVarStr var_D4, "Interleaved2of5D"
  loc_7251DB: PopAdLdVar
  loc_7251DC: FLdPr var_90
  loc_7251DF: LateIdSt
  loc_7251E6: LitI2_Byte &H26
  loc_7251E8: CR8I2
  loc_7251E9: CVarR4
  loc_7251ED: PopAdLdVar
  loc_7251EE: FLdPr var_90
  loc_7251F1: LateIdSt
  loc_7251F8: ILdRf var_AC
  loc_7251FB: LitI2_Byte 5
  loc_7251FD: ILdRf var_90
  loc_725200: PrintObject
  loc_725208: LitVarStr var_D4, "Courier New"
  loc_72520D: PopAdLdVar
  loc_72520E: FLdPr var_90
  loc_725211: LateIdSt
  loc_725218: LitI2_Byte 8
  loc_72521A: CR8I2
  loc_72521B: CVarR4
  loc_72521F: PopAdLdVar
  loc_725220: FLdPr var_90
  loc_725223: LateIdSt
  loc_72522A: FLdPr Me
  loc_72522D: MemLdStr global_156
  loc_725230: LitStr "0000004"
  loc_725233: GeStr
  loc_725235: BranchF loc_725258
  loc_72523A: LitStr "(1) TOIL : TASA SOBRE EL GASOIL - Decreto 976/2001"
  loc_72523D: LitI2_Byte 2
  loc_72523F: ILdRf var_90
  loc_725242: PrintObject
  loc_72524A: LitStr "(2) TINFRA : TASA INFRAESTRUCTURA HIDRICA - Decreto 1381/2001"
  loc_72524D: LitI2_Byte 2
  loc_72524F: ILdRf var_90
  loc_725252: PrintObject
  loc_72525C: FLdPr var_90
  loc_72525F: LateIdCall
  loc_725269: ILdRf Me
  loc_72526C: FStAdNoPop
  loc_725270: ImpAdLdRf MemVar_7520D4
  loc_725273: NewIfNullPr Global
  loc_725276: Global.Unload from_stack_1
  loc_72527B: FFree1Ad var_E8
  loc_725280: ExitProcHresult
  loc_725283: LitI4 &HD
  loc_725288: ImpAdCallI2 Chr$()
  loc_72528D: FStStr var_530
  loc_725290: LitI4 &HD
  loc_725295: ImpAdCallI2 Chr$()
  loc_72529A: FStStr var_540
  loc_72529D: FLdRfVar var_538
  loc_7252A0: ImpAdCallI2 Err 'rtcErrObj
  loc_7252A5: FStAdFunc var_E8
  loc_7252A8: FLdPr var_E8
  loc_7252AB:  = Err.Number
  loc_7252B0: LitI4 &HD
  loc_7252B5: ImpAdCallI2 Chr$()
  loc_7252BA: FStStr var_544
  loc_7252BD: FLdRfVar var_528
  loc_7252C0: ImpAdCallI2 Err 'rtcErrObj
  loc_7252C5: FStAdFunc var_53C
  loc_7252C8: FLdPr var_53C
  loc_7252CB:  = Err.Description
  loc_7252D0: LitVar_Missing var_148
  loc_7252D3: LitVar_Missing var_128
  loc_7252D6: LitVarStr var_D4, "Error en la impresora"
  loc_7252DB: FStVarCopyObj var_108
  loc_7252DE: FLdRfVar var_108
  loc_7252E1: LitI4 &H45
  loc_7252E6: LitStr "Error en impresora. Verifique por favor que haya papel en la impresora y este en READY."
  loc_7252E9: FLdZeroAd var_530
  loc_7252EC: FStStrNoPop var_4F0
  loc_7252EF: ConcatStr
  loc_7252F0: FStStrNoPop var_4F4
  loc_7252F3: FLdZeroAd var_540
  loc_7252F6: FStStrNoPop var_508
  loc_7252F9: ConcatStr
  loc_7252FA: FStStrNoPop var_510
  loc_7252FD: LitStr "Error Número: "
  loc_725300: ConcatStr
  loc_725301: FStStrNoPop var_514
  loc_725304: ILdRf var_538
  loc_725307: CStrI4
  loc_725309: FStStrNoPop var_518
  loc_72530C: ConcatStr
  loc_72530D: FStStrNoPop var_51C
  loc_725310: FLdZeroAd var_544
  loc_725313: FStStrNoPop var_520
  loc_725316: ConcatStr
  loc_725317: FStStrNoPop var_524
  loc_72531A: LitStr "Descripción: "
  loc_72531D: ConcatStr
  loc_72531E: FStStrNoPop var_52C
  loc_725321: ILdRf var_528
  loc_725324: ConcatStr
  loc_725325: CVarStr var_F8
  loc_725328: ImpAdCallI2 MsgBox(, , , , )
  loc_72532D: LitI4 4
  loc_725332: EqI4
  loc_725333: FFreeStr var_4F0 = "": var_4F4 = "": var_508 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = "": var_52C = "": var_528 = "": var_530 = "": var_540 = ""
  loc_725352: FFreeAd var_E8 = ""
  loc_725359: FFreeVar var_F8 = "": var_108 = "": var_128 = ""
  loc_725364: BranchF loc_725370
  loc_725369: Resume
  loc_72536D: Branch loc_7253A8
  loc_725374: FLdPr var_90
  loc_725377: LateIdCall
  loc_725381: FLdPr var_90
  loc_725384: LateIdCall
  loc_72538E: On Error GoTo 0
  loc_725393: ILdRf Me
  loc_725396: FStAdNoPop
  loc_72539A: ImpAdLdRf MemVar_7520D4
  loc_72539D: NewIfNullPr Global
  loc_7253A0: Global.Unload from_stack_1
  loc_7253A5: FFree1Ad var_E8
  loc_7253AC: ExitProcHresult
End Sub

Public Function PeriodoElegidoGet() '4366BC
  PeriodoElegidoGet = PeriodoElegido
End Function

Public Sub PeriodoElegidoPut(Value) '4366CB
  PeriodoElegido = Value
End Sub

Public Function NroPreImpresoGet() '4366DA
  NroPreImpresoGet = NroPreImpreso
End Function

Public Sub NroPreImpresoPut(Value) '4366E9
  NroPreImpreso = Value
End Sub

Private Function Proc_124_11_5F0F1C(arg_C, arg_10, arg_14) '5F0F1C
  'Data Table: 435BC8
  loc_5F0E84: ZeroRetVal
  loc_5F0E86: ILdFPR8 arg_C
  loc_5F0E89: LitDate 99999999.99
  loc_5F0E92: GeR8
  loc_5F0E93: BranchF loc_5F0E9F
  loc_5F0E96: LitStr "99999999.99"
  loc_5F0E99: FStStrCopy var_8C
  loc_5F0E9C: Branch loc_5F0EE5
  loc_5F0E9F: ILdFPR8 arg_C
  loc_5F0EA2: LitI2_Byte 0
  loc_5F0EA4: CR8I2
  loc_5F0EA5: EqR4
  loc_5F0EA6: BranchF loc_5F0EB2
  loc_5F0EA9: LitStr vbNullString
  loc_5F0EAC: FStStrCopy var_8C
  loc_5F0EAF: Branch loc_5F0EE5
  loc_5F0EB2: LitI4 1
  loc_5F0EB7: LitI4 1
  loc_5F0EBC: LitVarStr var_AC, "######0.00"
  loc_5F0EC1: FStVarCopyObj var_BC
  loc_5F0EC4: FLdRfVar var_BC
  loc_5F0EC7: ILdRf arg_C
  loc_5F0ECA: CVarRef
  loc_5F0ECF: FLdRfVar var_CC
  loc_5F0ED2: ImpAdCallFPR4  = Format(, )
  loc_5F0ED7: FLdRfVar var_CC
  loc_5F0EDA: CStrVarTmp
  loc_5F0EDB: FStStr var_8C
  loc_5F0EDE: FFreeVar var_BC = ""
  loc_5F0EE5: ILdFPR8 arg_10
  loc_5F0EE8: LitI2_Byte 0
  loc_5F0EEA: CR8I2
  loc_5F0EEB: GtR4
  loc_5F0EEC: BranchF loc_5F0EFC
  loc_5F0EEF: ILdRf var_8C
  loc_5F0EF2: LitStr " (1)"
  loc_5F0EF5: ConcatStr
  loc_5F0EF6: FStStr var_8C
  loc_5F0EF9: Branch loc_5F0F10
  loc_5F0EFC: ILdFPR8 arg_14
  loc_5F0EFF: LitI2_Byte 0
  loc_5F0F01: CR8I2
  loc_5F0F02: GtR4
  loc_5F0F03: BranchF loc_5F0F10
  loc_5F0F06: ILdRf var_8C
  loc_5F0F09: LitStr " (2)"
  loc_5F0F0C: ConcatStr
  loc_5F0F0D: FStStr var_8C
  loc_5F0F10: ILdRf var_8C
  loc_5F0F13: FStStrCopy var_88
  loc_5F0F16: ExitProcCbHresult
End Function

Private Function Proc_124_12_5EC1A4(arg_C) '5EC1A4
  'Data Table: 435BC8
  loc_5EC124: ZeroRetVal
  loc_5EC126: LitStr "<"
  loc_5EC129: FStStrCopy var_88
  loc_5EC12C: LitI2_Byte 1
  loc_5EC12E: FStI2 var_8A
  loc_5EC131: FLdI2 var_8A
  loc_5EC134: CI4UI1
  loc_5EC135: ILdI4 arg_C
  loc_5EC138: FnLenStr
  loc_5EC139: LtI4
  loc_5EC13A: BranchF loc_5EC191
  loc_5EC13D: LitVarI2 var_AC, 2
  loc_5EC142: FLdI2 var_8A
  loc_5EC145: CI4UI1
  loc_5EC146: ILdI4 arg_C
  loc_5EC149: ImpAdCallI2 Mid$(, , )
  loc_5EC14E: FStStrNoPop var_B0
  loc_5EC151: ImpAdCallFPR4 push Val()
  loc_5EC156: FStFPR8 var_EC
  loc_5EC159: ILdRf var_88
  loc_5EC15C: CVarStr var_D4
  loc_5EC15F: FLdRfVar var_C4
  loc_5EC162: FLdFPR8 var_EC
  loc_5EC165: CI2R8
  loc_5EC166: PopTmpLdAd2 var_B2
  loc_5EC169: from_stack_2v = Proc_124_13_67D350(from_stack_1v)
  loc_5EC16E: FLdRfVar var_C4
  loc_5EC171: ConcatVar var_E4
  loc_5EC175: CStrVarTmp
  loc_5EC176: FStStr var_88
  loc_5EC179: FFree1Str var_B0
  loc_5EC17C: FFreeVar var_AC = "": var_C4 = ""
  loc_5EC185: FLdI2 var_8A
  loc_5EC188: LitI2_Byte 2
  loc_5EC18A: AddI2
  loc_5EC18B: FStI2 var_8A
  loc_5EC18E: Branch loc_5EC131
  loc_5EC191: ILdRf var_88
  loc_5EC194: LitStr ">"
  loc_5EC197: ConcatStr
  loc_5EC198: FStStr var_88
  loc_5EC19B: ExitProcCbHresult
  loc_5EC1A1: FLdRfVar arg_2800
End Function

Private Function Proc_124_13_67D350(arg_C) '67D350
  'Data Table: 435BC8
  loc_67CE88: ZeroRetValVar
  loc_67CE8A: LitStr "AADDA"
  loc_67CE8D: LitI4 0
  loc_67CE92: FLdRfVar var_AC
  loc_67CE95: Ary1StStrCopy
  loc_67CE96: LitStr "BACCB"
  loc_67CE99: LitI4 1
  loc_67CE9E: FLdRfVar var_AC
  loc_67CEA1: Ary1StStrCopy
  loc_67CEA2: LitStr "ABCCB"
  loc_67CEA5: LitI4 2
  loc_67CEAA: FLdRfVar var_AC
  loc_67CEAD: Ary1StStrCopy
  loc_67CEAE: LitStr "BBCCA"
  loc_67CEB1: LitI4 3
  loc_67CEB6: FLdRfVar var_AC
  loc_67CEB9: Ary1StStrCopy
  loc_67CEBA: LitStr "AADCB"
  loc_67CEBD: LitI4 4
  loc_67CEC2: FLdRfVar var_AC
  loc_67CEC5: Ary1StStrCopy
  loc_67CEC6: LitStr "BADCA"
  loc_67CEC9: LitI4 5
  loc_67CECE: FLdRfVar var_AC
  loc_67CED1: Ary1StStrCopy
  loc_67CED2: LitStr "ABDCA"
  loc_67CED5: LitI4 6
  loc_67CEDA: FLdRfVar var_AC
  loc_67CEDD: Ary1StStrCopy
  loc_67CEDE: LitStr "AACDB"
  loc_67CEE1: LitI4 7
  loc_67CEE6: FLdRfVar var_AC
  loc_67CEE9: Ary1StStrCopy
  loc_67CEEA: LitStr "BACDA"
  loc_67CEED: LitI4 8
  loc_67CEF2: FLdRfVar var_AC
  loc_67CEF5: Ary1StStrCopy
  loc_67CEF6: LitStr "ABCDA"
  loc_67CEF9: LitI4 9
  loc_67CEFE: FLdRfVar var_AC
  loc_67CF01: Ary1StStrCopy
  loc_67CF02: LitStr "CABBC"
  loc_67CF05: LitI4 &HA
  loc_67CF0A: FLdRfVar var_AC
  loc_67CF0D: Ary1StStrCopy
  loc_67CF0E: LitStr "DAAAD"
  loc_67CF11: LitI4 &HB
  loc_67CF16: FLdRfVar var_AC
  loc_67CF19: Ary1StStrCopy
  loc_67CF1A: LitStr "CBAAD"
  loc_67CF1D: LitI4 &HC
  loc_67CF22: FLdRfVar var_AC
  loc_67CF25: Ary1StStrCopy
  loc_67CF26: LitStr "DBAAC"
  loc_67CF29: LitI4 &HD
  loc_67CF2E: FLdRfVar var_AC
  loc_67CF31: Ary1StStrCopy
  loc_67CF32: LitStr "CABAD"
  loc_67CF35: LitI4 &HE
  loc_67CF3A: FLdRfVar var_AC
  loc_67CF3D: Ary1StStrCopy
  loc_67CF3E: LitStr "DABAC"
  loc_67CF41: LitI4 &HF
  loc_67CF46: FLdRfVar var_AC
  loc_67CF49: Ary1StStrCopy
  loc_67CF4A: LitStr "CBBAC"
  loc_67CF4D: LitI4 &H10
  loc_67CF52: FLdRfVar var_AC
  loc_67CF55: Ary1StStrCopy
  loc_67CF56: LitStr "CAABD"
  loc_67CF59: LitI4 &H11
  loc_67CF5E: FLdRfVar var_AC
  loc_67CF61: Ary1StStrCopy
  loc_67CF62: LitStr "DAABC"
  loc_67CF65: LitI4 &H12
  loc_67CF6A: FLdRfVar var_AC
  loc_67CF6D: Ary1StStrCopy
  loc_67CF6E: LitStr "CBABC"
  loc_67CF71: LitI4 &H13
  loc_67CF76: FLdRfVar var_AC
  loc_67CF79: Ary1StStrCopy
  loc_67CF7A: LitStr "ACBBC"
  loc_67CF7D: LitI4 &H14
  loc_67CF82: FLdRfVar var_AC
  loc_67CF85: Ary1StStrCopy
  loc_67CF86: LitStr "BCAAD"
  loc_67CF89: LitI4 &H15
  loc_67CF8E: FLdRfVar var_AC
  loc_67CF91: Ary1StStrCopy
  loc_67CF92: LitStr "ADAAD"
  loc_67CF95: LitI4 &H16
  loc_67CF9A: FLdRfVar var_AC
  loc_67CF9D: Ary1StStrCopy
  loc_67CF9E: LitStr "BDAAC"
  loc_67CFA1: LitI4 &H17
  loc_67CFA6: FLdRfVar var_AC
  loc_67CFA9: Ary1StStrCopy
  loc_67CFAA: LitStr "ACBAD"
  loc_67CFAD: LitI4 &H18
  loc_67CFB2: FLdRfVar var_AC
  loc_67CFB5: Ary1StStrCopy
  loc_67CFB6: LitStr "BCBAC"
  loc_67CFB9: LitI4 &H19
  loc_67CFBE: FLdRfVar var_AC
  loc_67CFC1: Ary1StStrCopy
  loc_67CFC2: LitStr "ADBAC"
  loc_67CFC5: LitI4 &H1A
  loc_67CFCA: FLdRfVar var_AC
  loc_67CFCD: Ary1StStrCopy
  loc_67CFCE: LitStr "ACABD"
  loc_67CFD1: LitI4 &H1B
  loc_67CFD6: FLdRfVar var_AC
  loc_67CFD9: Ary1StStrCopy
  loc_67CFDA: LitStr "BCABC"
  loc_67CFDD: LitI4 &H1C
  loc_67CFE2: FLdRfVar var_AC
  loc_67CFE5: Ary1StStrCopy
  loc_67CFE6: LitStr "ADABC"
  loc_67CFE9: LitI4 &H1D
  loc_67CFEE: FLdRfVar var_AC
  loc_67CFF1: Ary1StStrCopy
  loc_67CFF2: LitStr "CCBBA"
  loc_67CFF5: LitI4 &H1E
  loc_67CFFA: FLdRfVar var_AC
  loc_67CFFD: Ary1StStrCopy
  loc_67CFFE: LitStr "DCAAB"
  loc_67D001: LitI4 &H1F
  loc_67D006: FLdRfVar var_AC
  loc_67D009: Ary1StStrCopy
  loc_67D00A: LitStr "CDAAB"
  loc_67D00D: LitI4 &H20
  loc_67D012: FLdRfVar var_AC
  loc_67D015: Ary1StStrCopy
  loc_67D016: LitStr "DDAAA"
  loc_67D019: LitI4 &H21
  loc_67D01E: FLdRfVar var_AC
  loc_67D021: Ary1StStrCopy
  loc_67D022: LitStr "CCBAB"
  loc_67D025: LitI4 &H22
  loc_67D02A: FLdRfVar var_AC
  loc_67D02D: Ary1StStrCopy
  loc_67D02E: LitStr "DCBAA"
  loc_67D031: LitI4 &H23
  loc_67D036: FLdRfVar var_AC
  loc_67D039: Ary1StStrCopy
  loc_67D03A: LitStr "CDBAA"
  loc_67D03D: LitI4 &H24
  loc_67D042: FLdRfVar var_AC
  loc_67D045: Ary1StStrCopy
  loc_67D046: LitStr "CCABB"
  loc_67D049: LitI4 &H25
  loc_67D04E: FLdRfVar var_AC
  loc_67D051: Ary1StStrCopy
  loc_67D052: LitStr "DCABA"
  loc_67D055: LitI4 &H26
  loc_67D05A: FLdRfVar var_AC
  loc_67D05D: Ary1StStrCopy
  loc_67D05E: LitStr "CDABA"
  loc_67D061: LitI4 &H27
  loc_67D066: FLdRfVar var_AC
  loc_67D069: Ary1StStrCopy
  loc_67D06A: LitStr "AADBC"
  loc_67D06D: LitI4 &H28
  loc_67D072: FLdRfVar var_AC
  loc_67D075: Ary1StStrCopy
  loc_67D076: LitStr "BACAD"
  loc_67D079: LitI4 &H29
  loc_67D07E: FLdRfVar var_AC
  loc_67D081: Ary1StStrCopy
  loc_67D082: LitStr "ABCAD"
  loc_67D085: LitI4 &H2A
  loc_67D08A: FLdRfVar var_AC
  loc_67D08D: Ary1StStrCopy
  loc_67D08E: LitStr "BBCAC"
  loc_67D091: LitI4 &H2B
  loc_67D096: FLdRfVar var_AC
  loc_67D099: Ary1StStrCopy
  loc_67D09A: LitStr "AADAD"
  loc_67D09D: LitI4 &H2C
  loc_67D0A2: FLdRfVar var_AC
  loc_67D0A5: Ary1StStrCopy
  loc_67D0A6: LitStr "BADAC"
  loc_67D0A9: LitI4 &H2D
  loc_67D0AE: FLdRfVar var_AC
  loc_67D0B1: Ary1StStrCopy
  loc_67D0B2: LitStr "ABDAC"
  loc_67D0B5: LitI4 &H2E
  loc_67D0BA: FLdRfVar var_AC
  loc_67D0BD: Ary1StStrCopy
  loc_67D0BE: LitStr "AACBD"
  loc_67D0C1: LitI4 &H2F
  loc_67D0C6: FLdRfVar var_AC
  loc_67D0C9: Ary1StStrCopy
  loc_67D0CA: LitStr "BACBC"
  loc_67D0CD: LitI4 &H30
  loc_67D0D2: FLdRfVar var_AC
  loc_67D0D5: Ary1StStrCopy
  loc_67D0D6: LitStr "ABCBC"
  loc_67D0D9: LitI4 &H31
  loc_67D0DE: FLdRfVar var_AC
  loc_67D0E1: Ary1StStrCopy
  loc_67D0E2: LitStr "CADBA"
  loc_67D0E5: LitI4 &H32
  loc_67D0EA: FLdRfVar var_AC
  loc_67D0ED: Ary1StStrCopy
  loc_67D0EE: LitStr "DACAB"
  loc_67D0F1: LitI4 &H33
  loc_67D0F6: FLdRfVar var_AC
  loc_67D0F9: Ary1StStrCopy
  loc_67D0FA: LitStr "CBCAB"
  loc_67D0FD: LitI4 &H34
  loc_67D102: FLdRfVar var_AC
  loc_67D105: Ary1StStrCopy
  loc_67D106: LitStr "DBCAA"
  loc_67D109: LitI4 &H35
  loc_67D10E: FLdRfVar var_AC
  loc_67D111: Ary1StStrCopy
  loc_67D112: LitStr "CADAB"
  loc_67D115: LitI4 &H36
  loc_67D11A: FLdRfVar var_AC
  loc_67D11D: Ary1StStrCopy
  loc_67D11E: LitStr "DADAA"
  loc_67D121: LitI4 &H37
  loc_67D126: FLdRfVar var_AC
  loc_67D129: Ary1StStrCopy
  loc_67D12A: LitStr "CBDAA"
  loc_67D12D: LitI4 &H38
  loc_67D132: FLdRfVar var_AC
  loc_67D135: Ary1StStrCopy
  loc_67D136: LitStr "CACBB"
  loc_67D139: LitI4 &H39
  loc_67D13E: FLdRfVar var_AC
  loc_67D141: Ary1StStrCopy
  loc_67D142: LitStr "DACBA"
  loc_67D145: LitI4 &H3A
  loc_67D14A: FLdRfVar var_AC
  loc_67D14D: Ary1StStrCopy
  loc_67D14E: LitStr "CBCBA"
  loc_67D151: LitI4 &H3B
  loc_67D156: FLdRfVar var_AC
  loc_67D159: Ary1StStrCopy
  loc_67D15A: LitStr "ACDBA"
  loc_67D15D: LitI4 &H3C
  loc_67D162: FLdRfVar var_AC
  loc_67D165: Ary1StStrCopy
  loc_67D166: LitStr "BCCAB"
  loc_67D169: LitI4 &H3D
  loc_67D16E: FLdRfVar var_AC
  loc_67D171: Ary1StStrCopy
  loc_67D172: LitStr "ADCAB"
  loc_67D175: LitI4 &H3E
  loc_67D17A: FLdRfVar var_AC
  loc_67D17D: Ary1StStrCopy
  loc_67D17E: LitStr "BDCAA"
  loc_67D181: LitI4 &H3F
  loc_67D186: FLdRfVar var_AC
  loc_67D189: Ary1StStrCopy
  loc_67D18A: LitStr "ACDAB"
  loc_67D18D: LitI4 &H40
  loc_67D192: FLdRfVar var_AC
  loc_67D195: Ary1StStrCopy
  loc_67D196: LitStr "BCDAA"
  loc_67D199: LitI4 &H41
  loc_67D19E: FLdRfVar var_AC
  loc_67D1A1: Ary1StStrCopy
  loc_67D1A2: LitStr "ADDAA"
  loc_67D1A5: LitI4 &H42
  loc_67D1AA: FLdRfVar var_AC
  loc_67D1AD: Ary1StStrCopy
  loc_67D1AE: LitStr "ACCBB"
  loc_67D1B1: LitI4 &H43
  loc_67D1B6: FLdRfVar var_AC
  loc_67D1B9: Ary1StStrCopy
  loc_67D1BA: LitStr "BCCBA"
  loc_67D1BD: LitI4 &H44
  loc_67D1C2: FLdRfVar var_AC
  loc_67D1C5: Ary1StStrCopy
  loc_67D1C6: LitStr "ADCBA"
  loc_67D1C9: LitI4 &H45
  loc_67D1CE: FLdRfVar var_AC
  loc_67D1D1: Ary1StStrCopy
  loc_67D1D2: LitStr "AABDC"
  loc_67D1D5: LitI4 &H46
  loc_67D1DA: FLdRfVar var_AC
  loc_67D1DD: Ary1StStrCopy
  loc_67D1DE: LitStr "BAACD"
  loc_67D1E1: LitI4 &H47
  loc_67D1E6: FLdRfVar var_AC
  loc_67D1E9: Ary1StStrCopy
  loc_67D1EA: LitStr "ABACD"
  loc_67D1ED: LitI4 &H48
  loc_67D1F2: FLdRfVar var_AC
  loc_67D1F5: Ary1StStrCopy
  loc_67D1F6: LitStr "BBACC"
  loc_67D1F9: LitI4 &H49
  loc_67D1FE: FLdRfVar var_AC
  loc_67D201: Ary1StStrCopy
  loc_67D202: LitStr "AABCD"
  loc_67D205: LitI4 &H4A
  loc_67D20A: FLdRfVar var_AC
  loc_67D20D: Ary1StStrCopy
  loc_67D20E: LitStr "BABCC"
  loc_67D211: LitI4 &H4B
  loc_67D216: FLdRfVar var_AC
  loc_67D219: Ary1StStrCopy
  loc_67D21A: LitStr "ABBCC"
  loc_67D21D: LitI4 &H4C
  loc_67D222: FLdRfVar var_AC
  loc_67D225: Ary1StStrCopy
  loc_67D226: LitStr "AAADD"
  loc_67D229: LitI4 &H4D
  loc_67D22E: FLdRfVar var_AC
  loc_67D231: Ary1StStrCopy
  loc_67D232: LitStr "BAADC"
  loc_67D235: LitI4 &H4E
  loc_67D23A: FLdRfVar var_AC
  loc_67D23D: Ary1StStrCopy
  loc_67D23E: LitStr "ABADC"
  loc_67D241: LitI4 &H4F
  loc_67D246: FLdRfVar var_AC
  loc_67D249: Ary1StStrCopy
  loc_67D24A: LitStr "CABDA"
  loc_67D24D: LitI4 &H50
  loc_67D252: FLdRfVar var_AC
  loc_67D255: Ary1StStrCopy
  loc_67D256: LitStr "DAACB"
  loc_67D259: LitI4 &H51
  loc_67D25E: FLdRfVar var_AC
  loc_67D261: Ary1StStrCopy
  loc_67D262: LitStr "CBACB"
  loc_67D265: LitI4 &H52
  loc_67D26A: FLdRfVar var_AC
  loc_67D26D: Ary1StStrCopy
  loc_67D26E: LitStr "DBACA"
  loc_67D271: LitI4 &H53
  loc_67D276: FLdRfVar var_AC
  loc_67D279: Ary1StStrCopy
  loc_67D27A: LitStr "CABCB"
  loc_67D27D: LitI4 &H54
  loc_67D282: FLdRfVar var_AC
  loc_67D285: Ary1StStrCopy
  loc_67D286: LitStr "DABCA"
  loc_67D289: LitI4 &H55
  loc_67D28E: FLdRfVar var_AC
  loc_67D291: Ary1StStrCopy
  loc_67D292: LitStr "CBBCA"
  loc_67D295: LitI4 &H56
  loc_67D29A: FLdRfVar var_AC
  loc_67D29D: Ary1StStrCopy
  loc_67D29E: LitStr "CAADB"
  loc_67D2A1: LitI4 &H57
  loc_67D2A6: FLdRfVar var_AC
  loc_67D2A9: Ary1StStrCopy
  loc_67D2AA: LitStr "DAADA"
  loc_67D2AD: LitI4 &H58
  loc_67D2B2: FLdRfVar var_AC
  loc_67D2B5: Ary1StStrCopy
  loc_67D2B6: LitStr "CBADA"
  loc_67D2B9: LitI4 &H59
  loc_67D2BE: FLdRfVar var_AC
  loc_67D2C1: Ary1StStrCopy
  loc_67D2C2: LitStr "ACBDA"
  loc_67D2C5: LitI4 &H5A
  loc_67D2CA: FLdRfVar var_AC
  loc_67D2CD: Ary1StStrCopy
  loc_67D2CE: LitStr "BCACB"
  loc_67D2D1: LitI4 &H5B
  loc_67D2D6: FLdRfVar var_AC
  loc_67D2D9: Ary1StStrCopy
  loc_67D2DA: LitStr "ADACB"
  loc_67D2DD: LitI4 &H5C
  loc_67D2E2: FLdRfVar var_AC
  loc_67D2E5: Ary1StStrCopy
  loc_67D2E6: LitStr "BDACA"
  loc_67D2E9: LitI4 &H5D
  loc_67D2EE: FLdRfVar var_AC
  loc_67D2F1: Ary1StStrCopy
  loc_67D2F2: LitStr "ACBCB"
  loc_67D2F5: LitI4 &H5E
  loc_67D2FA: FLdRfVar var_AC
  loc_67D2FD: Ary1StStrCopy
  loc_67D2FE: LitStr "BCBCA"
  loc_67D301: LitI4 &H5F
  loc_67D306: FLdRfVar var_AC
  loc_67D309: Ary1StStrCopy
  loc_67D30A: LitStr "ADBCA"
  loc_67D30D: LitI4 &H60
  loc_67D312: FLdRfVar var_AC
  loc_67D315: Ary1StStrCopy
  loc_67D316: LitStr "ACADB"
  loc_67D319: LitI4 &H61
  loc_67D31E: FLdRfVar var_AC
  loc_67D321: Ary1StStrCopy
  loc_67D322: LitStr "BCADA"
  loc_67D325: LitI4 &H62
  loc_67D32A: FLdRfVar var_AC
  loc_67D32D: Ary1StStrCopy
  loc_67D32E: LitStr "ADADA"
  loc_67D331: LitI4 &H63
  loc_67D336: FLdRfVar var_AC
  loc_67D339: Ary1StStrCopy
  loc_67D33A: ILdI2 arg_C
  loc_67D33D: CI4UI1
  loc_67D33E: FLdRfVar var_AC
  loc_67D341: Ary1LdI4
  loc_67D342: CVarStr var_BC
  loc_67D345: FStVarCopy
  loc_67D349: ExitProcCbHresult
  loc_67D34F: Ary1LdRf
End Function
