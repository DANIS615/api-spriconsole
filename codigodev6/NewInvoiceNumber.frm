VERSION 5.00
Begin VB.Form NewInvoiceNumber
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
  ClientTop = 105
  ClientWidth = 6480
  ClientHeight = 4965
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtB
    Left = 3600
    Top = 2280
    Width = 2175
    Height = 375
    Text = "iva"
    TabIndex = 1
    Alignment = 1 'Right Justify
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
  Begin VB.TextBox txtA
    Left = 3600
    Top = 1680
    Width = 2175
    Height = 375
    Text = "iva"
    TabIndex = 0
    Alignment = 1 'Right Justify
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
  Begin VB.TextBox txtIva
    Left = 3600
    Top = 3120
    Width = 2175
    Height = 375
    Text = "iva"
    TabIndex = 2
    Alignment = 1 'Right Justify
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
    Left = 2160
    Top = 4080
    Width = 1935
    Height = 615
    TabIndex = 4
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 4320
    Top = 4080
    Width = 1935
    Height = 615
    TabIndex = 3
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
  Begin VB.Line Line1
    X1 = 120
    Y1 = 2880
    X2 = 6360
    Y2 = 2880
    BorderWidth = 3
  End
  Begin VB.Label Label3
    Caption = "N. Comprobante B"
    Left = 240
    Top = 2280
    Width = 3015
    Height = 375
    TabIndex = 8
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
    Caption = "N. Comprobante A"
    Left = 240
    Top = 1680
    Width = 3015
    Height = 375
    TabIndex = 7
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
  Begin VB.Label lblIva
    Caption = "iva descrip"
    Left = 240
    Top = 3120
    Width = 3015
    Height = 375
    TabIndex = 6
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
    Caption = "Cambio de número de Factura e IVA"
    Left = 120
    Top = 240
    Width = 6135
    Height = 1095
    TabIndex = 5
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 21.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "NewInvoiceNumber"


Private Sub cmdCancelar_Click() '5D2510
  'Data Table: 41E45C
  loc_5D24F8: ILdRf Me
  loc_5D24FB: FStAdNoPop
  loc_5D24FF: ImpAdLdRf MemVar_7520D4
  loc_5D2502: NewIfNullPr Global
  loc_5D2505: Global.Unload from_stack_1
  loc_5D250A: FFree1Ad var_88
  loc_5D250D: ExitProcHresult
  loc_5D250E: ExitProcR8
End Sub

Private Sub cmdAceptar_Click() '64A1A4
  'Data Table: 41E45C
  loc_649F30: LitVar_Missing var_104
  loc_649F33: LitVar_Missing var_E4
  loc_649F36: LitVarStr var_B4, "Confirmación"
  loc_649F3B: FStVarCopyObj var_C4
  loc_649F3E: FLdRfVar var_C4
  loc_649F41: LitI4 &H101
  loc_649F46: LitVarStr var_94, "¿Está seguro que desea modificar el número de factura e IVA?"
  loc_649F4B: FStVarCopyObj var_A4
  loc_649F4E: FLdRfVar var_A4
  loc_649F51: ImpAdCallI2 MsgBox(, , , , )
  loc_649F56: LitI4 1
  loc_649F5B: EqI4
  loc_649F5C: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_649F67: BranchF loc_64A1A2
  loc_649F6A: FLdRfVar var_10C
  loc_649F6D: FLdPrThis
  loc_649F6E: VCallAd Control_ID_txtA
  loc_649F71: FStAdFunc var_108
  loc_649F74: FLdPr var_108
  loc_649F77:  = Me.Text
  loc_649F7C: ILdRf var_10C
  loc_649F7F: ImpAdCallFPR4 push Val()
  loc_649F84: FStFPR8 var_124
  loc_649F87: LitI4 1
  loc_649F8C: LitI4 1
  loc_649F91: LitVarStr var_B4, "00000000"
  loc_649F96: FStVarCopyObj var_C4
  loc_649F99: FLdRfVar var_C4
  loc_649F9C: FLdFPR8 var_124
  loc_649F9F: CVarR8
  loc_649FA3: FLdRfVar var_E4
  loc_649FA6: ImpAdCallFPR4  = Format(, )
  loc_649FAB: FLdRfVar var_11A
  loc_649FAE: FLdRfVar var_E4
  loc_649FB1: CStrVarTmp
  loc_649FB2: PopTmpLdAdStr
  loc_649FB6: LitStr "A"
  loc_649FB9: FStStrCopy var_114
  loc_649FBC: FLdRfVar var_114
  loc_649FBF: FLdRfVar var_110
  loc_649FC2: ImpAdLdRf MemVar_74C760
  loc_649FC5: NewIfNullPr Formx
  loc_649FC8: from_stack_1v = Formx.global_4589716Get()
  loc_649FCD: FLdPr var_110
  loc_649FD0:  = Formx.FontStrikethru
  loc_649FD5: FLdI2 var_11A
  loc_649FD8: NotI4
  loc_649FD9: FFreeStr var_10C = "": var_114 = ""
  loc_649FE2: FFreeAd var_108 = ""
  loc_649FE9: FFreeVar var_A4 = "": var_C4 = ""
  loc_649FF2: BranchF loc_64A021
  loc_649FF5: FLdRfVar var_A4
  loc_649FF8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_649FFD: FLdRfVar var_A4
  loc_64A000: CBoolVarNull
  loc_64A002: FFree1Var var_A4 = ""
  loc_64A005: BranchF loc_64A01E
  loc_64A008: ILdRf Me
  loc_64A00B: FStAdNoPop
  loc_64A00F: ImpAdLdRf MemVar_7520D4
  loc_64A012: NewIfNullPr Global
  loc_64A015: Global.Unload from_stack_1
  loc_64A01A: FFree1Ad var_108
  loc_64A01D: ExitProcHresult
  loc_64A01E: Branch loc_649F6A
  loc_64A021: FLdRfVar var_10C
  loc_64A024: FLdPrThis
  loc_64A025: VCallAd Control_ID_txtB
  loc_64A028: FStAdFunc var_108
  loc_64A02B: FLdPr var_108
  loc_64A02E:  = Me.Text
  loc_64A033: ILdRf var_10C
  loc_64A036: ImpAdCallFPR4 push Val()
  loc_64A03B: FStFPR8 var_124
  loc_64A03E: LitI4 1
  loc_64A043: LitI4 1
  loc_64A048: LitVarStr var_B4, "00000000"
  loc_64A04D: FStVarCopyObj var_C4
  loc_64A050: FLdRfVar var_C4
  loc_64A053: FLdFPR8 var_124
  loc_64A056: CVarR8
  loc_64A05A: FLdRfVar var_E4
  loc_64A05D: ImpAdCallFPR4  = Format(, )
  loc_64A062: FLdRfVar var_11A
  loc_64A065: FLdRfVar var_E4
  loc_64A068: CStrVarTmp
  loc_64A069: PopTmpLdAdStr
  loc_64A06D: LitStr "B"
  loc_64A070: FStStrCopy var_114
  loc_64A073: FLdRfVar var_114
  loc_64A076: FLdRfVar var_110
  loc_64A079: ImpAdLdRf MemVar_74C760
  loc_64A07C: NewIfNullPr Formx
  loc_64A07F: from_stack_1v = Formx.global_4589716Get()
  loc_64A084: FLdPr var_110
  loc_64A087:  = Formx.FontStrikethru
  loc_64A08C: FLdI2 var_11A
  loc_64A08F: NotI4
  loc_64A090: FFreeStr var_10C = "": var_114 = ""
  loc_64A099: FFreeAd var_108 = ""
  loc_64A0A0: FFreeVar var_A4 = "": var_C4 = ""
  loc_64A0A9: BranchF loc_64A0D8
  loc_64A0AC: FLdRfVar var_A4
  loc_64A0AF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64A0B4: FLdRfVar var_A4
  loc_64A0B7: CBoolVarNull
  loc_64A0B9: FFree1Var var_A4 = ""
  loc_64A0BC: BranchF loc_64A0D5
  loc_64A0BF: ILdRf Me
  loc_64A0C2: FStAdNoPop
  loc_64A0C6: ImpAdLdRf MemVar_7520D4
  loc_64A0C9: NewIfNullPr Global
  loc_64A0CC: Global.Unload from_stack_1
  loc_64A0D1: FFree1Ad var_108
  loc_64A0D4: ExitProcHresult
  loc_64A0D5: Branch loc_64A021
  loc_64A0D8: FLdRfVar var_10C
  loc_64A0DB: FLdPrThis
  loc_64A0DC: VCallAd Control_ID_txtIva
  loc_64A0DF: FStAdFunc var_108
  loc_64A0E2: FLdPr var_108
  loc_64A0E5:  = Me.Text
  loc_64A0EA: ILdRf var_10C
  loc_64A0ED: ImpAdCallFPR4 push Val()
  loc_64A0F2: FStFPR8 var_124
  loc_64A0F5: LitI4 1
  loc_64A0FA: LitI4 1
  loc_64A0FF: LitVarStr var_B4, "0000"
  loc_64A104: FStVarCopyObj var_C4
  loc_64A107: FLdRfVar var_C4
  loc_64A10A: FLdFPR8 var_124
  loc_64A10D: LitI2_Byte &H64
  loc_64A10F: CR8I2
  loc_64A110: MulR8
  loc_64A111: CVarR8
  loc_64A115: ImpAdCallI2 Format$(, )
  loc_64A11A: FStStr var_118
  loc_64A11D: FLdRfVar var_11A
  loc_64A120: FLdZeroAd var_118
  loc_64A123: PopTmpLdAdStr
  loc_64A127: FLdPr Me
  loc_64A12A: MemLdRfVar from_stack_1.global_60
  loc_64A12D: FLdRfVar var_110
  loc_64A130: ImpAdLdRf MemVar_74C760
  loc_64A133: NewIfNullPr Formx
  loc_64A136: from_stack_1v = Formx.global_4589716Get()
  loc_64A13B: FLdPr var_110
  loc_64A13E: Formx.FontStrikethru = from_stack_1b
  loc_64A143: FLdI2 var_11A
  loc_64A146: NotI4
  loc_64A147: FFreeStr var_10C = "": var_114 = ""
  loc_64A150: FFreeAd var_108 = ""
  loc_64A157: FFreeVar var_A4 = ""
  loc_64A15E: BranchF loc_64A18D
  loc_64A161: FLdRfVar var_A4
  loc_64A164: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64A169: FLdRfVar var_A4
  loc_64A16C: CBoolVarNull
  loc_64A16E: FFree1Var var_A4 = ""
  loc_64A171: BranchF loc_64A18A
  loc_64A174: ILdRf Me
  loc_64A177: FStAdNoPop
  loc_64A17B: ImpAdLdRf MemVar_7520D4
  loc_64A17E: NewIfNullPr Global
  loc_64A181: Global.Unload from_stack_1
  loc_64A186: FFree1Ad var_108
  loc_64A189: ExitProcHresult
  loc_64A18A: Branch loc_64A0D8
  loc_64A18D: ILdRf Me
  loc_64A190: FStAdNoPop
  loc_64A194: ImpAdLdRf MemVar_7520D4
  loc_64A197: NewIfNullPr Global
  loc_64A19A: Global.Unload from_stack_1
  loc_64A19F: FFree1Ad var_108
  loc_64A1A2: ExitProcHresult
End Sub

Private Sub Form_Load() '5D468C
  'Data Table: 41E45C
  loc_5D466C: LitI2_Byte 0
  loc_5D466E: FLdPr Me
  loc_5D4671: MemStI2 global_68
  loc_5D4674: ImpAdLdI4 MemVar_74BEF4
  loc_5D4677: FLdPrThis
  loc_5D4678: VCallAd Control_ID_lblIva
  loc_5D467B: FStAdFunc var_88
  loc_5D467E: FLdPr var_88
  loc_5D4681: Me.Caption = from_stack_1
  loc_5D4686: FFree1Ad var_88
  loc_5D4689: ExitProcHresult
  loc_5D468A: BranchF loc_5E2A6C
End Sub

Private Sub Form_Activate() '61FAFC
  'Data Table: 41E45C
  loc_61F9B0: FLdPr Me
  loc_61F9B3: MemLdI2 global_68
  loc_61F9B6: BranchF loc_61F9BA
  loc_61F9B9: ExitProcHresult
  loc_61F9BA: LitI2_Byte &HFF
  loc_61F9BC: FLdPr Me
  loc_61F9BF: MemStI2 global_68
  loc_61F9C2: FLdRfVar var_8A
  loc_61F9C5: FLdPr Me
  loc_61F9C8: MemLdRfVar from_stack_1.global_64
  loc_61F9CB: FLdPr Me
  loc_61F9CE: MemLdRfVar from_stack_1.global_60
  loc_61F9D1: FLdPr Me
  loc_61F9D4: MemLdRfVar from_stack_1.global_56
  loc_61F9D7: FLdPr Me
  loc_61F9DA: MemLdRfVar from_stack_1.global_52
  loc_61F9DD: FLdRfVar var_88
  loc_61F9E0: ImpAdLdRf MemVar_74C760
  loc_61F9E3: NewIfNullPr Formx
  loc_61F9E6: from_stack_1v = Formx.global_4589716Get()
  loc_61F9EB: FLdPr var_88
  loc_61F9EE: Formx.FontItalic = from_stack_1b
  loc_61F9F3: FLdI2 var_8A
  loc_61F9F6: NotI4
  loc_61F9F7: FFree1Ad var_88
  loc_61F9FA: BranchF loc_61FA29
  loc_61F9FD: FLdRfVar var_9C
  loc_61FA00: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_61FA05: FLdRfVar var_9C
  loc_61FA08: CBoolVarNull
  loc_61FA0A: FFree1Var var_9C = ""
  loc_61FA0D: BranchF loc_61FA26
  loc_61FA10: ILdRf Me
  loc_61FA13: FStAdNoPop
  loc_61FA17: ImpAdLdRf MemVar_7520D4
  loc_61FA1A: NewIfNullPr Global
  loc_61FA1D: Global.Unload from_stack_1
  loc_61FA22: FFree1Ad var_88
  loc_61FA25: ExitProcHresult
  loc_61FA26: Branch loc_61F9C2
  loc_61FA29: LitStr "0"
  loc_61FA2C: FLdPr Me
  loc_61FA2F: MemLdStr global_64
  loc_61FA32: ConcatStr
  loc_61FA33: FStStrNoPop var_A0
  loc_61FA36: ImpAdCallFPR4 push Val()
  loc_61FA3B: FStFPR8 var_DC
  loc_61FA3E: LitI4 1
  loc_61FA43: LitI4 1
  loc_61FA48: LitVarStr var_C0, "#0.00"
  loc_61FA4D: FStVarCopyObj var_D0
  loc_61FA50: FLdRfVar var_D0
  loc_61FA53: FLdFPR8 var_DC
  loc_61FA56: LitI2_Byte &H64
  loc_61FA58: CR8I2
  loc_61FA59: DivR8
  loc_61FA5A: CVarR8
  loc_61FA5E: ImpAdCallI2 Format$(, )
  loc_61FA63: FStStrNoPop var_D4
  loc_61FA66: FLdPrThis
  loc_61FA67: VCallAd Control_ID_txtIva
  loc_61FA6A: FStAdFunc var_88
  loc_61FA6D: FLdPr var_88
  loc_61FA70: Me.Text = from_stack_1
  loc_61FA75: FFreeStr var_A0 = ""
  loc_61FA7C: FFree1Ad var_88
  loc_61FA7F: FFreeVar var_9C = ""
  loc_61FA86: LitStr "0"
  loc_61FA89: FLdPr Me
  loc_61FA8C: MemLdStr global_52
  loc_61FA8F: ConcatStr
  loc_61FA90: FStStrNoPop var_A0
  loc_61FA93: ImpAdCallFPR4 push Val()
  loc_61FA98: CStrR8
  loc_61FA9A: FStStrNoPop var_D4
  loc_61FA9D: FLdPrThis
  loc_61FA9E: VCallAd Control_ID_txtA
  loc_61FAA1: FStAdFunc var_88
  loc_61FAA4: FLdPr var_88
  loc_61FAA7: Me.Text = from_stack_1
  loc_61FAAC: FFreeStr var_A0 = ""
  loc_61FAB3: FFree1Ad var_88
  loc_61FAB6: LitStr "0"
  loc_61FAB9: FLdPr Me
  loc_61FABC: MemLdStr global_56
  loc_61FABF: ConcatStr
  loc_61FAC0: FStStrNoPop var_A0
  loc_61FAC3: ImpAdCallFPR4 push Val()
  loc_61FAC8: CStrR8
  loc_61FACA: FStStrNoPop var_D4
  loc_61FACD: FLdPrThis
  loc_61FACE: VCallAd Control_ID_txtB
  loc_61FAD1: FStAdFunc var_88
  loc_61FAD4: FLdPr var_88
  loc_61FAD7: Me.Text = from_stack_1
  loc_61FADC: FFreeStr var_A0 = ""
  loc_61FAE3: FFree1Ad var_88
  loc_61FAE6: FLdPrThis
  loc_61FAE7: VCallAd Control_ID_txtA
  loc_61FAEA: FStAdFunc var_88
  loc_61FAED: FLdPr var_88
  loc_61FAF0: Me.SetFocus
  loc_61FAF5: FFree1Ad var_88
  loc_61FAF8: ExitProcHresult
  loc_61FAF9: LeI4
  loc_61FAFA: FFree1Ad var_1C00
End Sub

Private Sub txtA_GotFocus() '5D8A30
  'Data Table: 41E45C
  loc_5D8A00: LitI4 0
  loc_5D8A05: FLdPrThis
  loc_5D8A06: VCallAd Control_ID_txtA
  loc_5D8A09: FStAdFunc var_88
  loc_5D8A0C: FLdPr var_88
  loc_5D8A0F: Me.SelStart = from_stack_1
  loc_5D8A14: FFree1Ad var_88
  loc_5D8A17: LitI4 &H63
  loc_5D8A1C: FLdPrThis
  loc_5D8A1D: VCallAd Control_ID_txtA
  loc_5D8A20: FStAdFunc var_88
  loc_5D8A23: FLdPr var_88
  loc_5D8A26: Me.SelLength = from_stack_1
  loc_5D8A2B: FFree1Ad var_88
  loc_5D8A2E: ExitProcHresult
End Sub

Private Sub txtA_KeyDown(KeyCode As Integer, Shift As Integer) '682D30
  'Data Table: 41E45C
  loc_68283C: ILdI2 KeyCode
  loc_68283F: LitI2_Byte &H2E
  loc_682841: EqI2
  loc_682842: BranchF loc_682D2C
  loc_682845: LitStr "0"
  loc_682848: LitI4 1
  loc_68284D: FLdRfVar var_98
  loc_682850: FLdPrThis
  loc_682851: VCallAd Control_ID_txtA
  loc_682854: FStAdFunc var_94
  loc_682857: FLdPr var_94
  loc_68285A:  = Me.Text
  loc_68285F: ILdRf var_98
  loc_682862: LitStr "."
  loc_682865: LitI4 0
  loc_68286A: FnInStr4
  loc_68286C: CStrI4
  loc_68286E: FStStrNoPop var_9C
  loc_682871: ConcatStr
  loc_682872: FStStrNoPop var_A0
  loc_682875: CI2Str
  loc_682877: LitI2_Byte 0
  loc_682879: NeI2
  loc_68287A: FFreeStr var_98 = "": var_9C = ""
  loc_682883: FFree1Ad var_94
  loc_682886: BranchF loc_6828CD
  loc_682889: LitStr "0"
  loc_68288C: LitI4 1
  loc_682891: FLdRfVar var_98
  loc_682894: FLdPrThis
  loc_682895: VCallAd Control_ID_txtA
  loc_682898: FStAdFunc var_94
  loc_68289B: FLdPr var_94
  loc_68289E:  = Me.Text
  loc_6828A3: ILdRf var_98
  loc_6828A6: LitStr "."
  loc_6828A9: LitI4 0
  loc_6828AE: FnInStr4
  loc_6828B0: CStrI4
  loc_6828B2: FStStrNoPop var_9C
  loc_6828B5: ConcatStr
  loc_6828B6: FStStrNoPop var_A0
  loc_6828B9: CI2Str
  loc_6828BB: FStI2 var_8E
  loc_6828BE: FFreeStr var_98 = "": var_9C = ""
  loc_6828C7: FFree1Ad var_94
  loc_6828CA: Branch loc_682975
  loc_6828CD: LitStr "0"
  loc_6828D0: LitI4 1
  loc_6828D5: FLdRfVar var_98
  loc_6828D8: FLdPrThis
  loc_6828D9: VCallAd Control_ID_txtA
  loc_6828DC: FStAdFunc var_94
  loc_6828DF: FLdPr var_94
  loc_6828E2:  = Me.Text
  loc_6828E7: ILdRf var_98
  loc_6828EA: LitStr ","
  loc_6828ED: LitI4 0
  loc_6828F2: FnInStr4
  loc_6828F4: CStrI4
  loc_6828F6: FStStrNoPop var_9C
  loc_6828F9: ConcatStr
  loc_6828FA: FStStrNoPop var_A0
  loc_6828FD: CI2Str
  loc_6828FF: LitI2_Byte 0
  loc_682901: NeI2
  loc_682902: FFreeStr var_98 = "": var_9C = ""
  loc_68290B: FFree1Ad var_94
  loc_68290E: BranchF loc_682955
  loc_682911: LitStr "0"
  loc_682914: LitI4 1
  loc_682919: FLdRfVar var_98
  loc_68291C: FLdPrThis
  loc_68291D: VCallAd Control_ID_txtA
  loc_682920: FStAdFunc var_94
  loc_682923: FLdPr var_94
  loc_682926:  = Me.Text
  loc_68292B: ILdRf var_98
  loc_68292E: LitStr ","
  loc_682931: LitI4 0
  loc_682936: FnInStr4
  loc_682938: CStrI4
  loc_68293A: FStStrNoPop var_9C
  loc_68293D: ConcatStr
  loc_68293E: FStStrNoPop var_A0
  loc_682941: CI2Str
  loc_682943: FStI2 var_8E
  loc_682946: FFreeStr var_98 = "": var_9C = ""
  loc_68294F: FFree1Ad var_94
  loc_682952: Branch loc_682975
  loc_682955: FLdRfVar var_98
  loc_682958: FLdPrThis
  loc_682959: VCallAd Control_ID_txtA
  loc_68295C: FStAdFunc var_94
  loc_68295F: FLdPr var_94
  loc_682962:  = Me.Text
  loc_682967: ILdRf var_98
  loc_68296A: FnLenStr
  loc_68296B: CI2I4
  loc_68296C: FStI2 var_8E
  loc_68296F: FFree1Str var_98
  loc_682972: FFree1Ad var_94
  loc_682975: FLdRfVar var_A4
  loc_682978: FLdPrThis
  loc_682979: VCallAd Control_ID_txtA
  loc_68297C: FStAdFunc var_94
  loc_68297F: FLdPr var_94
  loc_682982:  = Me.SelLength
  loc_682987: ILdRf var_A4
  loc_68298A: LitI4 0
  loc_68298F: GtI4
  loc_682990: FFree1Ad var_94
  loc_682993: BranchF loc_682B50
  loc_682996: FLdRfVar var_A4
  loc_682999: FLdPrThis
  loc_68299A: VCallAd Control_ID_txtA
  loc_68299D: FStAdFunc var_94
  loc_6829A0: FLdPr var_94
  loc_6829A3:  = Me.SelStart
  loc_6829A8: ILdRf var_A4
  loc_6829AB: LitI4 0
  loc_6829B0: EqI4
  loc_6829B1: FFree1Ad var_94
  loc_6829B4: BranchF loc_682A11
  loc_6829B7: FLdRfVar var_98
  loc_6829BA: FLdPrThis
  loc_6829BB: VCallAd Control_ID_txtA
  loc_6829BE: FStAdFunc var_94
  loc_6829C1: FLdPr var_94
  loc_6829C4:  = Me.Text
  loc_6829C9: FLdRfVar var_A4
  loc_6829CC: FLdPrThis
  loc_6829CD: VCallAd Control_ID_txtA
  loc_6829D0: FStAdFunc var_A8
  loc_6829D3: FLdPr var_A8
  loc_6829D6:  = Me.SelLength
  loc_6829DB: LitVar_Missing var_C8
  loc_6829DE: ILdRf var_A4
  loc_6829E1: ILdRf var_98
  loc_6829E4: ImpAdCallI2 Mid$(, , )
  loc_6829E9: FStStrNoPop var_9C
  loc_6829EC: FLdPrThis
  loc_6829ED: VCallAd Control_ID_txtA
  loc_6829F0: FStAdFunc var_CC
  loc_6829F3: FLdPr var_CC
  loc_6829F6: Me.Text = from_stack_1
  loc_6829FB: FFreeStr var_98 = ""
  loc_682A02: FFreeAd var_94 = "": var_A8 = ""
  loc_682A0B: FFree1Var var_C8 = ""
  loc_682A0E: Branch loc_682AD3
  loc_682A11: FLdRfVar var_98
  loc_682A14: FLdPrThis
  loc_682A15: VCallAd Control_ID_txtA
  loc_682A18: FStAdFunc var_94
  loc_682A1B: FLdPr var_94
  loc_682A1E:  = Me.Text
  loc_682A23: FLdRfVar var_9C
  loc_682A26: FLdPrThis
  loc_682A27: VCallAd Control_ID_txtA
  loc_682A2A: FStAdFunc var_CC
  loc_682A2D: FLdPr var_CC
  loc_682A30:  = Me.Text
  loc_682A35: FLdRfVar var_D4
  loc_682A38: FLdPrThis
  loc_682A39: VCallAd Control_ID_txtA
  loc_682A3C: FStAdFunc var_D0
  loc_682A3F: FLdPr var_D0
  loc_682A42:  = Me.SelStart
  loc_682A47: FLdRfVar var_DC
  loc_682A4A: FLdPrThis
  loc_682A4B: VCallAd Control_ID_txtA
  loc_682A4E: FStAdFunc var_D8
  loc_682A51: FLdPr var_D8
  loc_682A54:  = Me.SelLength
  loc_682A59: FLdRfVar var_A4
  loc_682A5C: FLdPrThis
  loc_682A5D: VCallAd Control_ID_txtA
  loc_682A60: FStAdFunc var_A8
  loc_682A63: FLdPr var_A8
  loc_682A66:  = Me.SelStart
  loc_682A6B: ILdRf var_A4
  loc_682A6E: CVarI4
  loc_682A72: LitI4 1
  loc_682A77: ILdRf var_98
  loc_682A7A: ImpAdCallI2 Mid$(, , )
  loc_682A7F: FStStrNoPop var_A0
  loc_682A82: LitVar_Missing var_FC
  loc_682A85: ILdRf var_D4
  loc_682A88: ILdRf var_DC
  loc_682A8B: AddI4
  loc_682A8C: LitI4 1
  loc_682A91: AddI4
  loc_682A92: ILdRf var_9C
  loc_682A95: ImpAdCallI2 Mid$(, , )
  loc_682A9A: FStStrNoPop var_100
  loc_682A9D: ConcatStr
  loc_682A9E: FStStrNoPop var_104
  loc_682AA1: FLdPrThis
  loc_682AA2: VCallAd Control_ID_txtA
  loc_682AA5: FStAdFunc var_108
  loc_682AA8: FLdPr var_108
  loc_682AAB: Me.Text = from_stack_1
  loc_682AB0: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_100 = ""
  loc_682ABD: FFreeAd var_94 = "": var_A8 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_682ACC: FFreeVar var_C8 = ""
  loc_682AD3: FLdI2 var_8E
  loc_682AD6: LitI2_Byte 1
  loc_682AD8: EqI2
  loc_682AD9: BranchF loc_682AE5
  loc_682ADC: LitStr vbNullString
  loc_682ADF: FStStrCopy var_88
  loc_682AE2: Branch loc_682B28
  loc_682AE5: FLdRfVar var_98
  loc_682AE8: FLdPrThis
  loc_682AE9: VCallAd Control_ID_txtA
  loc_682AEC: FStAdFunc var_94
  loc_682AEF: FLdPr var_94
  loc_682AF2:  = Me.Text
  loc_682AF7: LitStr "0"
  loc_682AFA: FLdRfVar var_8E
  loc_682AFD: CVarRef
  loc_682B02: LitI4 1
  loc_682B07: ILdRf var_98
  loc_682B0A: ImpAdCallI2 Mid$(, , )
  loc_682B0F: FStStrNoPop var_9C
  loc_682B12: ConcatStr
  loc_682B13: FStStrNoPop var_A0
  loc_682B16: CI4Str
  loc_682B17: CStrI4
  loc_682B19: FStStr var_88
  loc_682B1C: FFreeStr var_98 = "": var_9C = ""
  loc_682B25: FFree1Ad var_94
  loc_682B28: ILdRf var_88
  loc_682B2B: FnLenStr
  loc_682B2C: LitI4 8
  loc_682B31: GtI4
  loc_682B32: ILdRf var_8C
  loc_682B35: FnLenStr
  loc_682B36: LitI4 0
  loc_682B3B: GtI4
  loc_682B3C: OrI4
  loc_682B3D: BranchF loc_682B4D
  loc_682B40: ImpAdCallFPR4 Beep()
  loc_682B45: LitI2_Byte 0
  loc_682B47: IStI2 KeyCode
  loc_682B4A: Branch loc_682B4D
  loc_682B4D: Branch loc_682D2C
  loc_682B50: FLdI2 var_8E
  loc_682B53: LitI2_Byte 1
  loc_682B55: EqI2
  loc_682B56: BranchF loc_682B62
  loc_682B59: LitStr vbNullString
  loc_682B5C: FStStrCopy var_88
  loc_682B5F: Branch loc_682BA5
  loc_682B62: FLdRfVar var_98
  loc_682B65: FLdPrThis
  loc_682B66: VCallAd Control_ID_txtA
  loc_682B69: FStAdFunc var_94
  loc_682B6C: FLdPr var_94
  loc_682B6F:  = Me.Text
  loc_682B74: LitStr "0"
  loc_682B77: FLdRfVar var_8E
  loc_682B7A: CVarRef
  loc_682B7F: LitI4 1
  loc_682B84: ILdRf var_98
  loc_682B87: ImpAdCallI2 Mid$(, , )
  loc_682B8C: FStStrNoPop var_9C
  loc_682B8F: ConcatStr
  loc_682B90: FStStrNoPop var_A0
  loc_682B93: CI4Str
  loc_682B94: CStrI4
  loc_682B96: FStStr var_88
  loc_682B99: FFreeStr var_98 = "": var_9C = ""
  loc_682BA2: FFree1Ad var_94
  loc_682BA5: FLdI2 var_8E
  loc_682BA8: CI4UI1
  loc_682BA9: FLdRfVar var_98
  loc_682BAC: FLdPrThis
  loc_682BAD: VCallAd Control_ID_txtA
  loc_682BB0: FStAdFunc var_94
  loc_682BB3: FLdPr var_94
  loc_682BB6:  = Me.Text
  loc_682BBB: ILdRf var_98
  loc_682BBE: FnLenStr
  loc_682BBF: EqI4
  loc_682BC0: FFree1Str var_98
  loc_682BC3: FFree1Ad var_94
  loc_682BC6: BranchF loc_682BD2
  loc_682BC9: LitStr vbNullString
  loc_682BCC: FStStrCopy var_8C
  loc_682BCF: Branch loc_682C02
  loc_682BD2: FLdRfVar var_98
  loc_682BD5: FLdPrThis
  loc_682BD6: VCallAd Control_ID_txtA
  loc_682BD9: FStAdFunc var_94
  loc_682BDC: FLdPr var_94
  loc_682BDF:  = Me.Text
  loc_682BE4: LitVar_Missing var_C8
  loc_682BE7: FLdI2 var_8E
  loc_682BEA: LitI2_Byte 1
  loc_682BEC: AddI2
  loc_682BED: CI4UI1
  loc_682BEE: ILdRf var_98
  loc_682BF1: ImpAdCallI2 Mid$(, , )
  loc_682BF6: FStStr var_8C
  loc_682BF9: FFree1Str var_98
  loc_682BFC: FFree1Ad var_94
  loc_682BFF: FFree1Var var_C8 = ""
  loc_682C02: FLdRfVar var_A4
  loc_682C05: FLdPrThis
  loc_682C06: VCallAd Control_ID_txtA
  loc_682C09: FStAdFunc var_94
  loc_682C0C: FLdPr var_94
  loc_682C0F:  = Me.SelStart
  loc_682C14: ILdRf var_A4
  loc_682C17: FLdRfVar var_98
  loc_682C1A: FLdPrThis
  loc_682C1B: VCallAd Control_ID_txtA
  loc_682C1E: FStAdFunc var_A8
  loc_682C21: FLdPr var_A8
  loc_682C24:  = Me.Text
  loc_682C29: ILdRf var_98
  loc_682C2C: FnLenStr
  loc_682C2D: EqI4
  loc_682C2E: FFree1Str var_98
  loc_682C31: FFreeAd var_94 = ""
  loc_682C38: BranchF loc_682C48
  loc_682C3B: ImpAdCallFPR4 Beep()
  loc_682C40: LitI2_Byte 0
  loc_682C42: IStI2 KeyCode
  loc_682C45: Branch loc_682D2C
  loc_682C48: FLdRfVar var_A4
  loc_682C4B: FLdPrThis
  loc_682C4C: VCallAd Control_ID_txtA
  loc_682C4F: FStAdFunc var_94
  loc_682C52: FLdPr var_94
  loc_682C55:  = Me.SelStart
  loc_682C5A: ILdRf var_A4
  loc_682C5D: LitI4 0
  loc_682C62: GtI4
  loc_682C63: FFree1Ad var_94
  loc_682C66: BranchF loc_682D2C
  loc_682C69: FLdRfVar var_98
  loc_682C6C: FLdPrThis
  loc_682C6D: VCallAd Control_ID_txtA
  loc_682C70: FStAdFunc var_94
  loc_682C73: FLdPr var_94
  loc_682C76:  = Me.Text
  loc_682C7B: FLdRfVar var_A4
  loc_682C7E: FLdPrThis
  loc_682C7F: VCallAd Control_ID_txtA
  loc_682C82: FStAdFunc var_A8
  loc_682C85: FLdPr var_A8
  loc_682C88:  = Me.SelStart
  loc_682C8D: FLdRfVar var_A0
  loc_682C90: FLdPrThis
  loc_682C91: VCallAd Control_ID_txtA
  loc_682C94: FStAdFunc var_CC
  loc_682C97: FLdPr var_CC
  loc_682C9A:  = Me.Text
  loc_682C9F: FLdRfVar var_D4
  loc_682CA2: FLdPrThis
  loc_682CA3: VCallAd Control_ID_txtA
  loc_682CA6: FStAdFunc var_D0
  loc_682CA9: FLdPr var_D0
  loc_682CAC:  = Me.SelStart
  loc_682CB1: LitVarI2 var_C8, 1
  loc_682CB6: ILdRf var_A4
  loc_682CB9: ILdRf var_98
  loc_682CBC: ImpAdCallI2 Mid$(, , )
  loc_682CC1: FStStrNoPop var_9C
  loc_682CC4: LitStr "."
  loc_682CC7: EqStr
  loc_682CC9: LitVarI2 var_FC, 1
  loc_682CCE: ILdRf var_D4
  loc_682CD1: ILdRf var_A0
  loc_682CD4: ImpAdCallI2 Mid$(, , )
  loc_682CD9: FStStrNoPop var_100
  loc_682CDC: LitStr ","
  loc_682CDF: EqStr
  loc_682CE1: OrI4
  loc_682CE2: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_682CED: FFreeAd var_94 = "": var_A8 = "": var_CC = ""
  loc_682CF8: FFreeVar var_C8 = ""
  loc_682CFF: BranchF loc_682D29
  loc_682D02: ILdRf var_88
  loc_682D05: ILdRf var_8C
  loc_682D08: ConcatStr
  loc_682D09: FStStrNoPop var_98
  loc_682D0C: FnLenStr
  loc_682D0D: LitI4 8
  loc_682D12: GtI4
  loc_682D13: FFree1Str var_98
  loc_682D16: BranchF loc_682D26
  loc_682D19: ImpAdCallFPR4 Beep()
  loc_682D1E: LitI2_Byte 0
  loc_682D20: IStI2 KeyCode
  loc_682D23: Branch loc_682D26
  loc_682D26: Branch loc_682D29
  loc_682D29: Branch loc_682D2C
  loc_682D2C: ExitProcHresult
End Sub

Private Sub txtA_KeyPress(KeyAscii As Integer) '618ACC
  'Data Table: 41E45C
  loc_6189A4: ILdI2 KeyAscii
  loc_6189A7: FStI2 var_8E
  loc_6189AA: FLdI2 var_8E
  loc_6189AD: LitI4 &H30
  loc_6189B2: CI2I4
  loc_6189B3: LitI4 &H39
  loc_6189B8: CI2I4
  loc_6189B9: BetweenI2
  loc_6189BB: BranchT loc_6189DC
  loc_6189BE: FLdI2 var_8E
  loc_6189C1: LitStr "."
  loc_6189C4: ImpAdCallI2 Asc()
  loc_6189C9: EqI2
  loc_6189CA: BranchT loc_6189DC
  loc_6189CD: FLdI2 var_8E
  loc_6189D0: LitStr ","
  loc_6189D3: ImpAdCallI2 Asc()
  loc_6189D8: EqI2
  loc_6189D9: BranchF loc_618A3B
  loc_6189DC: FLdRfVar var_98
  loc_6189DF: FLdPrThis
  loc_6189E0: VCallAd Control_ID_txtA
  loc_6189E3: FStAdFunc var_94
  loc_6189E6: FLdPr var_94
  loc_6189E9:  = Me.Text
  loc_6189EE: FLdRfVar var_A0
  loc_6189F1: FLdPrThis
  loc_6189F2: VCallAd Control_ID_txtA
  loc_6189F5: FStAdFunc var_9C
  loc_6189F8: FLdPr var_9C
  loc_6189FB:  = Me.SelStart
  loc_618A00: FLdRfVar var_A8
  loc_618A03: FLdPrThis
  loc_618A04: VCallAd Control_ID_txtA
  loc_618A07: FStAdFunc var_A4
  loc_618A0A: FLdPr var_A4
  loc_618A0D:  = Me.SelLength
  loc_618A12: ILdRf var_A8
  loc_618A15: CI2I4
  loc_618A16: ILdRf var_A0
  loc_618A19: CI2I4
  loc_618A1A: LitI2_Byte 0
  loc_618A1C: LitI2_Byte 8
  loc_618A1E: ILdI2 KeyAscii
  loc_618A21: ILdRf var_98
  loc_618A24: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_618A29: IStI2 KeyAscii
  loc_618A2C: FFree1Str var_98
  loc_618A2F: FFreeAd var_94 = "": var_9C = ""
  loc_618A38: Branch loc_618ACA
  loc_618A3B: FLdI2 var_8E
  loc_618A3E: LitI4 &HD
  loc_618A43: CI2I4
  loc_618A44: EqI2
  loc_618A45: BranchF loc_618A5D
  loc_618A48: LitI2_Byte 0
  loc_618A4A: IStI2 KeyAscii
  loc_618A4D: LitI2_Byte 0
  loc_618A4F: PopTmpLdAd2 var_AA
  loc_618A52: LitStr "{TAB}"
  loc_618A55: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_618A5A: Branch loc_618ACA
  loc_618A5D: FLdI2 var_8E
  loc_618A60: LitI2_Byte 8
  loc_618A62: EqI2
  loc_618A63: BranchF loc_618AC5
  loc_618A66: FLdRfVar var_98
  loc_618A69: FLdPrThis
  loc_618A6A: VCallAd Control_ID_txtA
  loc_618A6D: FStAdFunc var_94
  loc_618A70: FLdPr var_94
  loc_618A73:  = Me.Text
  loc_618A78: FLdRfVar var_A0
  loc_618A7B: FLdPrThis
  loc_618A7C: VCallAd Control_ID_txtA
  loc_618A7F: FStAdFunc var_9C
  loc_618A82: FLdPr var_9C
  loc_618A85:  = Me.SelStart
  loc_618A8A: FLdRfVar var_A8
  loc_618A8D: FLdPrThis
  loc_618A8E: VCallAd Control_ID_txtA
  loc_618A91: FStAdFunc var_A4
  loc_618A94: FLdPr var_A4
  loc_618A97:  = Me.SelLength
  loc_618A9C: ILdRf var_A8
  loc_618A9F: CI2I4
  loc_618AA0: ILdRf var_A0
  loc_618AA3: CI2I4
  loc_618AA4: LitI2_Byte 0
  loc_618AA6: LitI2_Byte 8
  loc_618AA8: ILdI2 KeyAscii
  loc_618AAB: ILdRf var_98
  loc_618AAE: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_618AB3: IStI2 KeyAscii
  loc_618AB6: FFree1Str var_98
  loc_618AB9: FFreeAd var_94 = "": var_9C = ""
  loc_618AC2: Branch loc_618ACA
  loc_618AC5: LitI2_Byte 0
  loc_618AC7: IStI2 KeyAscii
  loc_618ACA: ExitProcHresult
End Sub

Private Sub txtA_LostFocus() '5E7DF0
  'Data Table: 41E45C
  loc_5E7D88: FLdRfVar var_8C
  loc_5E7D8B: FLdPrThis
  loc_5E7D8C: VCallAd Control_ID_txtA
  loc_5E7D8F: FStAdFunc var_88
  loc_5E7D92: FLdPr var_88
  loc_5E7D95:  = Me.Text
  loc_5E7D9A: LitI4 1
  loc_5E7D9F: LitI4 1
  loc_5E7DA4: LitVarStr var_C0, "#0"
  loc_5E7DA9: FStVarCopyObj var_D0
  loc_5E7DAC: FLdRfVar var_D0
  loc_5E7DAF: LitStr "0"
  loc_5E7DB2: ILdRf var_8C
  loc_5E7DB5: ConcatStr
  loc_5E7DB6: FStStrNoPop var_90
  loc_5E7DB9: CR8Str
  loc_5E7DBB: CVarR8
  loc_5E7DBF: ImpAdCallI2 Format$(, )
  loc_5E7DC4: FStStrNoPop var_D4
  loc_5E7DC7: FLdPrThis
  loc_5E7DC8: VCallAd Control_ID_txtA
  loc_5E7DCB: FStAdFunc var_D8
  loc_5E7DCE: FLdPr var_D8
  loc_5E7DD1: Me.Text = from_stack_1
  loc_5E7DD6: FFreeStr var_8C = "": var_90 = ""
  loc_5E7DDF: FFreeAd var_88 = ""
  loc_5E7DE6: FFreeVar var_B0 = ""
  loc_5E7DED: ExitProcHresult
End Sub

Private Sub txtB_GotFocus() '5D883C
  'Data Table: 41E45C
  loc_5D880C: LitI4 0
  loc_5D8811: FLdPrThis
  loc_5D8812: VCallAd Control_ID_txtB
  loc_5D8815: FStAdFunc var_88
  loc_5D8818: FLdPr var_88
  loc_5D881B: Me.SelStart = from_stack_1
  loc_5D8820: FFree1Ad var_88
  loc_5D8823: LitI4 &H63
  loc_5D8828: FLdPrThis
  loc_5D8829: VCallAd Control_ID_txtB
  loc_5D882C: FStAdFunc var_88
  loc_5D882F: FLdPr var_88
  loc_5D8832: Me.SelLength = from_stack_1
  loc_5D8837: FFree1Ad var_88
  loc_5D883A: ExitProcHresult
End Sub

Private Sub txtB_KeyDown(KeyCode As Integer, Shift As Integer) '683290
  'Data Table: 41E45C
  loc_682D9C: ILdI2 KeyCode
  loc_682D9F: LitI2_Byte &H2E
  loc_682DA1: EqI2
  loc_682DA2: BranchF loc_68328C
  loc_682DA5: LitStr "0"
  loc_682DA8: LitI4 1
  loc_682DAD: FLdRfVar var_98
  loc_682DB0: FLdPrThis
  loc_682DB1: VCallAd Control_ID_txtB
  loc_682DB4: FStAdFunc var_94
  loc_682DB7: FLdPr var_94
  loc_682DBA:  = Me.Text
  loc_682DBF: ILdRf var_98
  loc_682DC2: LitStr "."
  loc_682DC5: LitI4 0
  loc_682DCA: FnInStr4
  loc_682DCC: CStrI4
  loc_682DCE: FStStrNoPop var_9C
  loc_682DD1: ConcatStr
  loc_682DD2: FStStrNoPop var_A0
  loc_682DD5: CI2Str
  loc_682DD7: LitI2_Byte 0
  loc_682DD9: NeI2
  loc_682DDA: FFreeStr var_98 = "": var_9C = ""
  loc_682DE3: FFree1Ad var_94
  loc_682DE6: BranchF loc_682E2D
  loc_682DE9: LitStr "0"
  loc_682DEC: LitI4 1
  loc_682DF1: FLdRfVar var_98
  loc_682DF4: FLdPrThis
  loc_682DF5: VCallAd Control_ID_txtB
  loc_682DF8: FStAdFunc var_94
  loc_682DFB: FLdPr var_94
  loc_682DFE:  = Me.Text
  loc_682E03: ILdRf var_98
  loc_682E06: LitStr "."
  loc_682E09: LitI4 0
  loc_682E0E: FnInStr4
  loc_682E10: CStrI4
  loc_682E12: FStStrNoPop var_9C
  loc_682E15: ConcatStr
  loc_682E16: FStStrNoPop var_A0
  loc_682E19: CI2Str
  loc_682E1B: FStI2 var_8E
  loc_682E1E: FFreeStr var_98 = "": var_9C = ""
  loc_682E27: FFree1Ad var_94
  loc_682E2A: Branch loc_682ED5
  loc_682E2D: LitStr "0"
  loc_682E30: LitI4 1
  loc_682E35: FLdRfVar var_98
  loc_682E38: FLdPrThis
  loc_682E39: VCallAd Control_ID_txtB
  loc_682E3C: FStAdFunc var_94
  loc_682E3F: FLdPr var_94
  loc_682E42:  = Me.Text
  loc_682E47: ILdRf var_98
  loc_682E4A: LitStr ","
  loc_682E4D: LitI4 0
  loc_682E52: FnInStr4
  loc_682E54: CStrI4
  loc_682E56: FStStrNoPop var_9C
  loc_682E59: ConcatStr
  loc_682E5A: FStStrNoPop var_A0
  loc_682E5D: CI2Str
  loc_682E5F: LitI2_Byte 0
  loc_682E61: NeI2
  loc_682E62: FFreeStr var_98 = "": var_9C = ""
  loc_682E6B: FFree1Ad var_94
  loc_682E6E: BranchF loc_682EB5
  loc_682E71: LitStr "0"
  loc_682E74: LitI4 1
  loc_682E79: FLdRfVar var_98
  loc_682E7C: FLdPrThis
  loc_682E7D: VCallAd Control_ID_txtB
  loc_682E80: FStAdFunc var_94
  loc_682E83: FLdPr var_94
  loc_682E86:  = Me.Text
  loc_682E8B: ILdRf var_98
  loc_682E8E: LitStr ","
  loc_682E91: LitI4 0
  loc_682E96: FnInStr4
  loc_682E98: CStrI4
  loc_682E9A: FStStrNoPop var_9C
  loc_682E9D: ConcatStr
  loc_682E9E: FStStrNoPop var_A0
  loc_682EA1: CI2Str
  loc_682EA3: FStI2 var_8E
  loc_682EA6: FFreeStr var_98 = "": var_9C = ""
  loc_682EAF: FFree1Ad var_94
  loc_682EB2: Branch loc_682ED5
  loc_682EB5: FLdRfVar var_98
  loc_682EB8: FLdPrThis
  loc_682EB9: VCallAd Control_ID_txtB
  loc_682EBC: FStAdFunc var_94
  loc_682EBF: FLdPr var_94
  loc_682EC2:  = Me.Text
  loc_682EC7: ILdRf var_98
  loc_682ECA: FnLenStr
  loc_682ECB: CI2I4
  loc_682ECC: FStI2 var_8E
  loc_682ECF: FFree1Str var_98
  loc_682ED2: FFree1Ad var_94
  loc_682ED5: FLdRfVar var_A4
  loc_682ED8: FLdPrThis
  loc_682ED9: VCallAd Control_ID_txtB
  loc_682EDC: FStAdFunc var_94
  loc_682EDF: FLdPr var_94
  loc_682EE2:  = Me.SelLength
  loc_682EE7: ILdRf var_A4
  loc_682EEA: LitI4 0
  loc_682EEF: GtI4
  loc_682EF0: FFree1Ad var_94
  loc_682EF3: BranchF loc_6830B0
  loc_682EF6: FLdRfVar var_A4
  loc_682EF9: FLdPrThis
  loc_682EFA: VCallAd Control_ID_txtB
  loc_682EFD: FStAdFunc var_94
  loc_682F00: FLdPr var_94
  loc_682F03:  = Me.SelStart
  loc_682F08: ILdRf var_A4
  loc_682F0B: LitI4 0
  loc_682F10: EqI4
  loc_682F11: FFree1Ad var_94
  loc_682F14: BranchF loc_682F71
  loc_682F17: FLdRfVar var_98
  loc_682F1A: FLdPrThis
  loc_682F1B: VCallAd Control_ID_txtB
  loc_682F1E: FStAdFunc var_94
  loc_682F21: FLdPr var_94
  loc_682F24:  = Me.Text
  loc_682F29: FLdRfVar var_A4
  loc_682F2C: FLdPrThis
  loc_682F2D: VCallAd Control_ID_txtB
  loc_682F30: FStAdFunc var_A8
  loc_682F33: FLdPr var_A8
  loc_682F36:  = Me.SelLength
  loc_682F3B: LitVar_Missing var_C8
  loc_682F3E: ILdRf var_A4
  loc_682F41: ILdRf var_98
  loc_682F44: ImpAdCallI2 Mid$(, , )
  loc_682F49: FStStrNoPop var_9C
  loc_682F4C: FLdPrThis
  loc_682F4D: VCallAd Control_ID_txtB
  loc_682F50: FStAdFunc var_CC
  loc_682F53: FLdPr var_CC
  loc_682F56: Me.Text = from_stack_1
  loc_682F5B: FFreeStr var_98 = ""
  loc_682F62: FFreeAd var_94 = "": var_A8 = ""
  loc_682F6B: FFree1Var var_C8 = ""
  loc_682F6E: Branch loc_683033
  loc_682F71: FLdRfVar var_98
  loc_682F74: FLdPrThis
  loc_682F75: VCallAd Control_ID_txtB
  loc_682F78: FStAdFunc var_94
  loc_682F7B: FLdPr var_94
  loc_682F7E:  = Me.Text
  loc_682F83: FLdRfVar var_9C
  loc_682F86: FLdPrThis
  loc_682F87: VCallAd Control_ID_txtB
  loc_682F8A: FStAdFunc var_CC
  loc_682F8D: FLdPr var_CC
  loc_682F90:  = Me.Text
  loc_682F95: FLdRfVar var_D4
  loc_682F98: FLdPrThis
  loc_682F99: VCallAd Control_ID_txtB
  loc_682F9C: FStAdFunc var_D0
  loc_682F9F: FLdPr var_D0
  loc_682FA2:  = Me.SelStart
  loc_682FA7: FLdRfVar var_DC
  loc_682FAA: FLdPrThis
  loc_682FAB: VCallAd Control_ID_txtB
  loc_682FAE: FStAdFunc var_D8
  loc_682FB1: FLdPr var_D8
  loc_682FB4:  = Me.SelLength
  loc_682FB9: FLdRfVar var_A4
  loc_682FBC: FLdPrThis
  loc_682FBD: VCallAd Control_ID_txtB
  loc_682FC0: FStAdFunc var_A8
  loc_682FC3: FLdPr var_A8
  loc_682FC6:  = Me.SelStart
  loc_682FCB: ILdRf var_A4
  loc_682FCE: CVarI4
  loc_682FD2: LitI4 1
  loc_682FD7: ILdRf var_98
  loc_682FDA: ImpAdCallI2 Mid$(, , )
  loc_682FDF: FStStrNoPop var_A0
  loc_682FE2: LitVar_Missing var_FC
  loc_682FE5: ILdRf var_D4
  loc_682FE8: ILdRf var_DC
  loc_682FEB: AddI4
  loc_682FEC: LitI4 1
  loc_682FF1: AddI4
  loc_682FF2: ILdRf var_9C
  loc_682FF5: ImpAdCallI2 Mid$(, , )
  loc_682FFA: FStStrNoPop var_100
  loc_682FFD: ConcatStr
  loc_682FFE: FStStrNoPop var_104
  loc_683001: FLdPrThis
  loc_683002: VCallAd Control_ID_txtB
  loc_683005: FStAdFunc var_108
  loc_683008: FLdPr var_108
  loc_68300B: Me.Text = from_stack_1
  loc_683010: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_100 = ""
  loc_68301D: FFreeAd var_94 = "": var_A8 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_68302C: FFreeVar var_C8 = ""
  loc_683033: FLdI2 var_8E
  loc_683036: LitI2_Byte 1
  loc_683038: EqI2
  loc_683039: BranchF loc_683045
  loc_68303C: LitStr vbNullString
  loc_68303F: FStStrCopy var_88
  loc_683042: Branch loc_683088
  loc_683045: FLdRfVar var_98
  loc_683048: FLdPrThis
  loc_683049: VCallAd Control_ID_txtB
  loc_68304C: FStAdFunc var_94
  loc_68304F: FLdPr var_94
  loc_683052:  = Me.Text
  loc_683057: LitStr "0"
  loc_68305A: FLdRfVar var_8E
  loc_68305D: CVarRef
  loc_683062: LitI4 1
  loc_683067: ILdRf var_98
  loc_68306A: ImpAdCallI2 Mid$(, , )
  loc_68306F: FStStrNoPop var_9C
  loc_683072: ConcatStr
  loc_683073: FStStrNoPop var_A0
  loc_683076: CI4Str
  loc_683077: CStrI4
  loc_683079: FStStr var_88
  loc_68307C: FFreeStr var_98 = "": var_9C = ""
  loc_683085: FFree1Ad var_94
  loc_683088: ILdRf var_88
  loc_68308B: FnLenStr
  loc_68308C: LitI4 8
  loc_683091: GtI4
  loc_683092: ILdRf var_8C
  loc_683095: FnLenStr
  loc_683096: LitI4 0
  loc_68309B: GtI4
  loc_68309C: OrI4
  loc_68309D: BranchF loc_6830AD
  loc_6830A0: ImpAdCallFPR4 Beep()
  loc_6830A5: LitI2_Byte 0
  loc_6830A7: IStI2 KeyCode
  loc_6830AA: Branch loc_6830AD
  loc_6830AD: Branch loc_68328C
  loc_6830B0: FLdI2 var_8E
  loc_6830B3: LitI2_Byte 1
  loc_6830B5: EqI2
  loc_6830B6: BranchF loc_6830C2
  loc_6830B9: LitStr vbNullString
  loc_6830BC: FStStrCopy var_88
  loc_6830BF: Branch loc_683105
  loc_6830C2: FLdRfVar var_98
  loc_6830C5: FLdPrThis
  loc_6830C6: VCallAd Control_ID_txtB
  loc_6830C9: FStAdFunc var_94
  loc_6830CC: FLdPr var_94
  loc_6830CF:  = Me.Text
  loc_6830D4: LitStr "0"
  loc_6830D7: FLdRfVar var_8E
  loc_6830DA: CVarRef
  loc_6830DF: LitI4 1
  loc_6830E4: ILdRf var_98
  loc_6830E7: ImpAdCallI2 Mid$(, , )
  loc_6830EC: FStStrNoPop var_9C
  loc_6830EF: ConcatStr
  loc_6830F0: FStStrNoPop var_A0
  loc_6830F3: CI4Str
  loc_6830F4: CStrI4
  loc_6830F6: FStStr var_88
  loc_6830F9: FFreeStr var_98 = "": var_9C = ""
  loc_683102: FFree1Ad var_94
  loc_683105: FLdI2 var_8E
  loc_683108: CI4UI1
  loc_683109: FLdRfVar var_98
  loc_68310C: FLdPrThis
  loc_68310D: VCallAd Control_ID_txtB
  loc_683110: FStAdFunc var_94
  loc_683113: FLdPr var_94
  loc_683116:  = Me.Text
  loc_68311B: ILdRf var_98
  loc_68311E: FnLenStr
  loc_68311F: EqI4
  loc_683120: FFree1Str var_98
  loc_683123: FFree1Ad var_94
  loc_683126: BranchF loc_683132
  loc_683129: LitStr vbNullString
  loc_68312C: FStStrCopy var_8C
  loc_68312F: Branch loc_683162
  loc_683132: FLdRfVar var_98
  loc_683135: FLdPrThis
  loc_683136: VCallAd Control_ID_txtB
  loc_683139: FStAdFunc var_94
  loc_68313C: FLdPr var_94
  loc_68313F:  = Me.Text
  loc_683144: LitVar_Missing var_C8
  loc_683147: FLdI2 var_8E
  loc_68314A: LitI2_Byte 1
  loc_68314C: AddI2
  loc_68314D: CI4UI1
  loc_68314E: ILdRf var_98
  loc_683151: ImpAdCallI2 Mid$(, , )
  loc_683156: FStStr var_8C
  loc_683159: FFree1Str var_98
  loc_68315C: FFree1Ad var_94
  loc_68315F: FFree1Var var_C8 = ""
  loc_683162: FLdRfVar var_A4
  loc_683165: FLdPrThis
  loc_683166: VCallAd Control_ID_txtB
  loc_683169: FStAdFunc var_94
  loc_68316C: FLdPr var_94
  loc_68316F:  = Me.SelStart
  loc_683174: ILdRf var_A4
  loc_683177: FLdRfVar var_98
  loc_68317A: FLdPrThis
  loc_68317B: VCallAd Control_ID_txtB
  loc_68317E: FStAdFunc var_A8
  loc_683181: FLdPr var_A8
  loc_683184:  = Me.Text
  loc_683189: ILdRf var_98
  loc_68318C: FnLenStr
  loc_68318D: EqI4
  loc_68318E: FFree1Str var_98
  loc_683191: FFreeAd var_94 = ""
  loc_683198: BranchF loc_6831A8
  loc_68319B: ImpAdCallFPR4 Beep()
  loc_6831A0: LitI2_Byte 0
  loc_6831A2: IStI2 KeyCode
  loc_6831A5: Branch loc_68328C
  loc_6831A8: FLdRfVar var_A4
  loc_6831AB: FLdPrThis
  loc_6831AC: VCallAd Control_ID_txtB
  loc_6831AF: FStAdFunc var_94
  loc_6831B2: FLdPr var_94
  loc_6831B5:  = Me.SelStart
  loc_6831BA: ILdRf var_A4
  loc_6831BD: LitI4 0
  loc_6831C2: GtI4
  loc_6831C3: FFree1Ad var_94
  loc_6831C6: BranchF loc_68328C
  loc_6831C9: FLdRfVar var_98
  loc_6831CC: FLdPrThis
  loc_6831CD: VCallAd Control_ID_txtB
  loc_6831D0: FStAdFunc var_94
  loc_6831D3: FLdPr var_94
  loc_6831D6:  = Me.Text
  loc_6831DB: FLdRfVar var_A4
  loc_6831DE: FLdPrThis
  loc_6831DF: VCallAd Control_ID_txtB
  loc_6831E2: FStAdFunc var_A8
  loc_6831E5: FLdPr var_A8
  loc_6831E8:  = Me.SelStart
  loc_6831ED: FLdRfVar var_A0
  loc_6831F0: FLdPrThis
  loc_6831F1: VCallAd Control_ID_txtB
  loc_6831F4: FStAdFunc var_CC
  loc_6831F7: FLdPr var_CC
  loc_6831FA:  = Me.Text
  loc_6831FF: FLdRfVar var_D4
  loc_683202: FLdPrThis
  loc_683203: VCallAd Control_ID_txtB
  loc_683206: FStAdFunc var_D0
  loc_683209: FLdPr var_D0
  loc_68320C:  = Me.SelStart
  loc_683211: LitVarI2 var_C8, 1
  loc_683216: ILdRf var_A4
  loc_683219: ILdRf var_98
  loc_68321C: ImpAdCallI2 Mid$(, , )
  loc_683221: FStStrNoPop var_9C
  loc_683224: LitStr "."
  loc_683227: EqStr
  loc_683229: LitVarI2 var_FC, 1
  loc_68322E: ILdRf var_D4
  loc_683231: ILdRf var_A0
  loc_683234: ImpAdCallI2 Mid$(, , )
  loc_683239: FStStrNoPop var_100
  loc_68323C: LitStr ","
  loc_68323F: EqStr
  loc_683241: OrI4
  loc_683242: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_68324D: FFreeAd var_94 = "": var_A8 = "": var_CC = ""
  loc_683258: FFreeVar var_C8 = ""
  loc_68325F: BranchF loc_683289
  loc_683262: ILdRf var_88
  loc_683265: ILdRf var_8C
  loc_683268: ConcatStr
  loc_683269: FStStrNoPop var_98
  loc_68326C: FnLenStr
  loc_68326D: LitI4 8
  loc_683272: GtI4
  loc_683273: FFree1Str var_98
  loc_683276: BranchF loc_683286
  loc_683279: ImpAdCallFPR4 Beep()
  loc_68327E: LitI2_Byte 0
  loc_683280: IStI2 KeyCode
  loc_683283: Branch loc_683286
  loc_683286: Branch loc_683289
  loc_683289: Branch loc_68328C
  loc_68328C: ExitProcHresult
End Sub

Private Sub txtB_KeyPress(KeyAscii As Integer) '617F6C
  'Data Table: 41E45C
  loc_617E44: ILdI2 KeyAscii
  loc_617E47: FStI2 var_8E
  loc_617E4A: FLdI2 var_8E
  loc_617E4D: LitI4 &H30
  loc_617E52: CI2I4
  loc_617E53: LitI4 &H39
  loc_617E58: CI2I4
  loc_617E59: BetweenI2
  loc_617E5B: BranchT loc_617E7C
  loc_617E5E: FLdI2 var_8E
  loc_617E61: LitStr "."
  loc_617E64: ImpAdCallI2 Asc()
  loc_617E69: EqI2
  loc_617E6A: BranchT loc_617E7C
  loc_617E6D: FLdI2 var_8E
  loc_617E70: LitStr ","
  loc_617E73: ImpAdCallI2 Asc()
  loc_617E78: EqI2
  loc_617E79: BranchF loc_617EDB
  loc_617E7C: FLdRfVar var_98
  loc_617E7F: FLdPrThis
  loc_617E80: VCallAd Control_ID_txtB
  loc_617E83: FStAdFunc var_94
  loc_617E86: FLdPr var_94
  loc_617E89:  = Me.Text
  loc_617E8E: FLdRfVar var_A0
  loc_617E91: FLdPrThis
  loc_617E92: VCallAd Control_ID_txtB
  loc_617E95: FStAdFunc var_9C
  loc_617E98: FLdPr var_9C
  loc_617E9B:  = Me.SelStart
  loc_617EA0: FLdRfVar var_A8
  loc_617EA3: FLdPrThis
  loc_617EA4: VCallAd Control_ID_txtB
  loc_617EA7: FStAdFunc var_A4
  loc_617EAA: FLdPr var_A4
  loc_617EAD:  = Me.SelLength
  loc_617EB2: ILdRf var_A8
  loc_617EB5: CI2I4
  loc_617EB6: ILdRf var_A0
  loc_617EB9: CI2I4
  loc_617EBA: LitI2_Byte 0
  loc_617EBC: LitI2_Byte 8
  loc_617EBE: ILdI2 KeyAscii
  loc_617EC1: ILdRf var_98
  loc_617EC4: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_617EC9: IStI2 KeyAscii
  loc_617ECC: FFree1Str var_98
  loc_617ECF: FFreeAd var_94 = "": var_9C = ""
  loc_617ED8: Branch loc_617F6A
  loc_617EDB: FLdI2 var_8E
  loc_617EDE: LitI4 &HD
  loc_617EE3: CI2I4
  loc_617EE4: EqI2
  loc_617EE5: BranchF loc_617EFD
  loc_617EE8: LitI2_Byte 0
  loc_617EEA: IStI2 KeyAscii
  loc_617EED: LitI2_Byte 0
  loc_617EEF: PopTmpLdAd2 var_AA
  loc_617EF2: LitStr "{TAB}"
  loc_617EF5: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_617EFA: Branch loc_617F6A
  loc_617EFD: FLdI2 var_8E
  loc_617F00: LitI2_Byte 8
  loc_617F02: EqI2
  loc_617F03: BranchF loc_617F65
  loc_617F06: FLdRfVar var_98
  loc_617F09: FLdPrThis
  loc_617F0A: VCallAd Control_ID_txtB
  loc_617F0D: FStAdFunc var_94
  loc_617F10: FLdPr var_94
  loc_617F13:  = Me.Text
  loc_617F18: FLdRfVar var_A0
  loc_617F1B: FLdPrThis
  loc_617F1C: VCallAd Control_ID_txtB
  loc_617F1F: FStAdFunc var_9C
  loc_617F22: FLdPr var_9C
  loc_617F25:  = Me.SelStart
  loc_617F2A: FLdRfVar var_A8
  loc_617F2D: FLdPrThis
  loc_617F2E: VCallAd Control_ID_txtB
  loc_617F31: FStAdFunc var_A4
  loc_617F34: FLdPr var_A4
  loc_617F37:  = Me.SelLength
  loc_617F3C: ILdRf var_A8
  loc_617F3F: CI2I4
  loc_617F40: ILdRf var_A0
  loc_617F43: CI2I4
  loc_617F44: LitI2_Byte 0
  loc_617F46: LitI2_Byte 8
  loc_617F48: ILdI2 KeyAscii
  loc_617F4B: ILdRf var_98
  loc_617F4E: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_617F53: IStI2 KeyAscii
  loc_617F56: FFree1Str var_98
  loc_617F59: FFreeAd var_94 = "": var_9C = ""
  loc_617F62: Branch loc_617F6A
  loc_617F65: LitI2_Byte 0
  loc_617F67: IStI2 KeyAscii
  loc_617F6A: ExitProcHresult
End Sub

Private Sub txtB_LostFocus() '5E8444
  'Data Table: 41E45C
  loc_5E83DC: FLdRfVar var_8C
  loc_5E83DF: FLdPrThis
  loc_5E83E0: VCallAd Control_ID_txtB
  loc_5E83E3: FStAdFunc var_88
  loc_5E83E6: FLdPr var_88
  loc_5E83E9:  = Me.Text
  loc_5E83EE: LitI4 1
  loc_5E83F3: LitI4 1
  loc_5E83F8: LitVarStr var_C0, "#0"
  loc_5E83FD: FStVarCopyObj var_D0
  loc_5E8400: FLdRfVar var_D0
  loc_5E8403: LitStr "0"
  loc_5E8406: ILdRf var_8C
  loc_5E8409: ConcatStr
  loc_5E840A: FStStrNoPop var_90
  loc_5E840D: CR8Str
  loc_5E840F: CVarR8
  loc_5E8413: ImpAdCallI2 Format$(, )
  loc_5E8418: FStStrNoPop var_D4
  loc_5E841B: FLdPrThis
  loc_5E841C: VCallAd Control_ID_txtB
  loc_5E841F: FStAdFunc var_D8
  loc_5E8422: FLdPr var_D8
  loc_5E8425: Me.Text = from_stack_1
  loc_5E842A: FFreeStr var_8C = "": var_90 = ""
  loc_5E8433: FFreeAd var_88 = ""
  loc_5E843A: FFreeVar var_B0 = ""
  loc_5E8441: ExitProcHresult
End Sub

Private Sub txtIva_GotFocus() '5D7C84
  'Data Table: 41E45C
  loc_5D7C54: LitI4 0
  loc_5D7C59: FLdPrThis
  loc_5D7C5A: VCallAd Control_ID_txtIva
  loc_5D7C5D: FStAdFunc var_88
  loc_5D7C60: FLdPr var_88
  loc_5D7C63: Me.SelStart = from_stack_1
  loc_5D7C68: FFree1Ad var_88
  loc_5D7C6B: LitI4 &H63
  loc_5D7C70: FLdPrThis
  loc_5D7C71: VCallAd Control_ID_txtIva
  loc_5D7C74: FStAdFunc var_88
  loc_5D7C77: FLdPr var_88
  loc_5D7C7A: Me.SelLength = from_stack_1
  loc_5D7C7F: FFree1Ad var_88
  loc_5D7C82: ExitProcHresult
End Sub

Private Sub txtIva_KeyDown(KeyCode As Integer, Shift As Integer) '6827D0
  'Data Table: 41E45C
  loc_6822DC: ILdI2 KeyCode
  loc_6822DF: LitI2_Byte &H2E
  loc_6822E1: EqI2
  loc_6822E2: BranchF loc_6827CC
  loc_6822E5: LitStr "0"
  loc_6822E8: LitI4 1
  loc_6822ED: FLdRfVar var_98
  loc_6822F0: FLdPrThis
  loc_6822F1: VCallAd Control_ID_txtIva
  loc_6822F4: FStAdFunc var_94
  loc_6822F7: FLdPr var_94
  loc_6822FA:  = Me.Text
  loc_6822FF: ILdRf var_98
  loc_682302: LitStr "."
  loc_682305: LitI4 0
  loc_68230A: FnInStr4
  loc_68230C: CStrI4
  loc_68230E: FStStrNoPop var_9C
  loc_682311: ConcatStr
  loc_682312: FStStrNoPop var_A0
  loc_682315: CI2Str
  loc_682317: LitI2_Byte 0
  loc_682319: NeI2
  loc_68231A: FFreeStr var_98 = "": var_9C = ""
  loc_682323: FFree1Ad var_94
  loc_682326: BranchF loc_68236D
  loc_682329: LitStr "0"
  loc_68232C: LitI4 1
  loc_682331: FLdRfVar var_98
  loc_682334: FLdPrThis
  loc_682335: VCallAd Control_ID_txtIva
  loc_682338: FStAdFunc var_94
  loc_68233B: FLdPr var_94
  loc_68233E:  = Me.Text
  loc_682343: ILdRf var_98
  loc_682346: LitStr "."
  loc_682349: LitI4 0
  loc_68234E: FnInStr4
  loc_682350: CStrI4
  loc_682352: FStStrNoPop var_9C
  loc_682355: ConcatStr
  loc_682356: FStStrNoPop var_A0
  loc_682359: CI2Str
  loc_68235B: FStI2 var_8E
  loc_68235E: FFreeStr var_98 = "": var_9C = ""
  loc_682367: FFree1Ad var_94
  loc_68236A: Branch loc_682415
  loc_68236D: LitStr "0"
  loc_682370: LitI4 1
  loc_682375: FLdRfVar var_98
  loc_682378: FLdPrThis
  loc_682379: VCallAd Control_ID_txtIva
  loc_68237C: FStAdFunc var_94
  loc_68237F: FLdPr var_94
  loc_682382:  = Me.Text
  loc_682387: ILdRf var_98
  loc_68238A: LitStr ","
  loc_68238D: LitI4 0
  loc_682392: FnInStr4
  loc_682394: CStrI4
  loc_682396: FStStrNoPop var_9C
  loc_682399: ConcatStr
  loc_68239A: FStStrNoPop var_A0
  loc_68239D: CI2Str
  loc_68239F: LitI2_Byte 0
  loc_6823A1: NeI2
  loc_6823A2: FFreeStr var_98 = "": var_9C = ""
  loc_6823AB: FFree1Ad var_94
  loc_6823AE: BranchF loc_6823F5
  loc_6823B1: LitStr "0"
  loc_6823B4: LitI4 1
  loc_6823B9: FLdRfVar var_98
  loc_6823BC: FLdPrThis
  loc_6823BD: VCallAd Control_ID_txtIva
  loc_6823C0: FStAdFunc var_94
  loc_6823C3: FLdPr var_94
  loc_6823C6:  = Me.Text
  loc_6823CB: ILdRf var_98
  loc_6823CE: LitStr ","
  loc_6823D1: LitI4 0
  loc_6823D6: FnInStr4
  loc_6823D8: CStrI4
  loc_6823DA: FStStrNoPop var_9C
  loc_6823DD: ConcatStr
  loc_6823DE: FStStrNoPop var_A0
  loc_6823E1: CI2Str
  loc_6823E3: FStI2 var_8E
  loc_6823E6: FFreeStr var_98 = "": var_9C = ""
  loc_6823EF: FFree1Ad var_94
  loc_6823F2: Branch loc_682415
  loc_6823F5: FLdRfVar var_98
  loc_6823F8: FLdPrThis
  loc_6823F9: VCallAd Control_ID_txtIva
  loc_6823FC: FStAdFunc var_94
  loc_6823FF: FLdPr var_94
  loc_682402:  = Me.Text
  loc_682407: ILdRf var_98
  loc_68240A: FnLenStr
  loc_68240B: CI2I4
  loc_68240C: FStI2 var_8E
  loc_68240F: FFree1Str var_98
  loc_682412: FFree1Ad var_94
  loc_682415: FLdRfVar var_A4
  loc_682418: FLdPrThis
  loc_682419: VCallAd Control_ID_txtIva
  loc_68241C: FStAdFunc var_94
  loc_68241F: FLdPr var_94
  loc_682422:  = Me.SelLength
  loc_682427: ILdRf var_A4
  loc_68242A: LitI4 0
  loc_68242F: GtI4
  loc_682430: FFree1Ad var_94
  loc_682433: BranchF loc_6825F0
  loc_682436: FLdRfVar var_A4
  loc_682439: FLdPrThis
  loc_68243A: VCallAd Control_ID_txtIva
  loc_68243D: FStAdFunc var_94
  loc_682440: FLdPr var_94
  loc_682443:  = Me.SelStart
  loc_682448: ILdRf var_A4
  loc_68244B: LitI4 0
  loc_682450: EqI4
  loc_682451: FFree1Ad var_94
  loc_682454: BranchF loc_6824B1
  loc_682457: FLdRfVar var_98
  loc_68245A: FLdPrThis
  loc_68245B: VCallAd Control_ID_txtIva
  loc_68245E: FStAdFunc var_94
  loc_682461: FLdPr var_94
  loc_682464:  = Me.Text
  loc_682469: FLdRfVar var_A4
  loc_68246C: FLdPrThis
  loc_68246D: VCallAd Control_ID_txtIva
  loc_682470: FStAdFunc var_A8
  loc_682473: FLdPr var_A8
  loc_682476:  = Me.SelLength
  loc_68247B: LitVar_Missing var_C8
  loc_68247E: ILdRf var_A4
  loc_682481: ILdRf var_98
  loc_682484: ImpAdCallI2 Mid$(, , )
  loc_682489: FStStrNoPop var_9C
  loc_68248C: FLdPrThis
  loc_68248D: VCallAd Control_ID_txtIva
  loc_682490: FStAdFunc var_CC
  loc_682493: FLdPr var_CC
  loc_682496: Me.Text = from_stack_1
  loc_68249B: FFreeStr var_98 = ""
  loc_6824A2: FFreeAd var_94 = "": var_A8 = ""
  loc_6824AB: FFree1Var var_C8 = ""
  loc_6824AE: Branch loc_682573
  loc_6824B1: FLdRfVar var_98
  loc_6824B4: FLdPrThis
  loc_6824B5: VCallAd Control_ID_txtIva
  loc_6824B8: FStAdFunc var_94
  loc_6824BB: FLdPr var_94
  loc_6824BE:  = Me.Text
  loc_6824C3: FLdRfVar var_9C
  loc_6824C6: FLdPrThis
  loc_6824C7: VCallAd Control_ID_txtIva
  loc_6824CA: FStAdFunc var_CC
  loc_6824CD: FLdPr var_CC
  loc_6824D0:  = Me.Text
  loc_6824D5: FLdRfVar var_D4
  loc_6824D8: FLdPrThis
  loc_6824D9: VCallAd Control_ID_txtIva
  loc_6824DC: FStAdFunc var_D0
  loc_6824DF: FLdPr var_D0
  loc_6824E2:  = Me.SelStart
  loc_6824E7: FLdRfVar var_DC
  loc_6824EA: FLdPrThis
  loc_6824EB: VCallAd Control_ID_txtIva
  loc_6824EE: FStAdFunc var_D8
  loc_6824F1: FLdPr var_D8
  loc_6824F4:  = Me.SelLength
  loc_6824F9: FLdRfVar var_A4
  loc_6824FC: FLdPrThis
  loc_6824FD: VCallAd Control_ID_txtIva
  loc_682500: FStAdFunc var_A8
  loc_682503: FLdPr var_A8
  loc_682506:  = Me.SelStart
  loc_68250B: ILdRf var_A4
  loc_68250E: CVarI4
  loc_682512: LitI4 1
  loc_682517: ILdRf var_98
  loc_68251A: ImpAdCallI2 Mid$(, , )
  loc_68251F: FStStrNoPop var_A0
  loc_682522: LitVar_Missing var_FC
  loc_682525: ILdRf var_D4
  loc_682528: ILdRf var_DC
  loc_68252B: AddI4
  loc_68252C: LitI4 1
  loc_682531: AddI4
  loc_682532: ILdRf var_9C
  loc_682535: ImpAdCallI2 Mid$(, , )
  loc_68253A: FStStrNoPop var_100
  loc_68253D: ConcatStr
  loc_68253E: FStStrNoPop var_104
  loc_682541: FLdPrThis
  loc_682542: VCallAd Control_ID_txtIva
  loc_682545: FStAdFunc var_108
  loc_682548: FLdPr var_108
  loc_68254B: Me.Text = from_stack_1
  loc_682550: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_100 = ""
  loc_68255D: FFreeAd var_94 = "": var_A8 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_68256C: FFreeVar var_C8 = ""
  loc_682573: FLdI2 var_8E
  loc_682576: LitI2_Byte 1
  loc_682578: EqI2
  loc_682579: BranchF loc_682585
  loc_68257C: LitStr vbNullString
  loc_68257F: FStStrCopy var_88
  loc_682582: Branch loc_6825C8
  loc_682585: FLdRfVar var_98
  loc_682588: FLdPrThis
  loc_682589: VCallAd Control_ID_txtIva
  loc_68258C: FStAdFunc var_94
  loc_68258F: FLdPr var_94
  loc_682592:  = Me.Text
  loc_682597: LitStr "0"
  loc_68259A: FLdRfVar var_8E
  loc_68259D: CVarRef
  loc_6825A2: LitI4 1
  loc_6825A7: ILdRf var_98
  loc_6825AA: ImpAdCallI2 Mid$(, , )
  loc_6825AF: FStStrNoPop var_9C
  loc_6825B2: ConcatStr
  loc_6825B3: FStStrNoPop var_A0
  loc_6825B6: CI4Str
  loc_6825B7: CStrI4
  loc_6825B9: FStStr var_88
  loc_6825BC: FFreeStr var_98 = "": var_9C = ""
  loc_6825C5: FFree1Ad var_94
  loc_6825C8: ILdRf var_88
  loc_6825CB: FnLenStr
  loc_6825CC: LitI4 2
  loc_6825D1: GtI4
  loc_6825D2: ILdRf var_8C
  loc_6825D5: FnLenStr
  loc_6825D6: LitI4 2
  loc_6825DB: GtI4
  loc_6825DC: OrI4
  loc_6825DD: BranchF loc_6825ED
  loc_6825E0: ImpAdCallFPR4 Beep()
  loc_6825E5: LitI2_Byte 0
  loc_6825E7: IStI2 KeyCode
  loc_6825EA: Branch loc_6825ED
  loc_6825ED: Branch loc_6827CC
  loc_6825F0: FLdI2 var_8E
  loc_6825F3: LitI2_Byte 1
  loc_6825F5: EqI2
  loc_6825F6: BranchF loc_682602
  loc_6825F9: LitStr vbNullString
  loc_6825FC: FStStrCopy var_88
  loc_6825FF: Branch loc_682645
  loc_682602: FLdRfVar var_98
  loc_682605: FLdPrThis
  loc_682606: VCallAd Control_ID_txtIva
  loc_682609: FStAdFunc var_94
  loc_68260C: FLdPr var_94
  loc_68260F:  = Me.Text
  loc_682614: LitStr "0"
  loc_682617: FLdRfVar var_8E
  loc_68261A: CVarRef
  loc_68261F: LitI4 1
  loc_682624: ILdRf var_98
  loc_682627: ImpAdCallI2 Mid$(, , )
  loc_68262C: FStStrNoPop var_9C
  loc_68262F: ConcatStr
  loc_682630: FStStrNoPop var_A0
  loc_682633: CI4Str
  loc_682634: CStrI4
  loc_682636: FStStr var_88
  loc_682639: FFreeStr var_98 = "": var_9C = ""
  loc_682642: FFree1Ad var_94
  loc_682645: FLdI2 var_8E
  loc_682648: CI4UI1
  loc_682649: FLdRfVar var_98
  loc_68264C: FLdPrThis
  loc_68264D: VCallAd Control_ID_txtIva
  loc_682650: FStAdFunc var_94
  loc_682653: FLdPr var_94
  loc_682656:  = Me.Text
  loc_68265B: ILdRf var_98
  loc_68265E: FnLenStr
  loc_68265F: EqI4
  loc_682660: FFree1Str var_98
  loc_682663: FFree1Ad var_94
  loc_682666: BranchF loc_682672
  loc_682669: LitStr vbNullString
  loc_68266C: FStStrCopy var_8C
  loc_68266F: Branch loc_6826A2
  loc_682672: FLdRfVar var_98
  loc_682675: FLdPrThis
  loc_682676: VCallAd Control_ID_txtIva
  loc_682679: FStAdFunc var_94
  loc_68267C: FLdPr var_94
  loc_68267F:  = Me.Text
  loc_682684: LitVar_Missing var_C8
  loc_682687: FLdI2 var_8E
  loc_68268A: LitI2_Byte 1
  loc_68268C: AddI2
  loc_68268D: CI4UI1
  loc_68268E: ILdRf var_98
  loc_682691: ImpAdCallI2 Mid$(, , )
  loc_682696: FStStr var_8C
  loc_682699: FFree1Str var_98
  loc_68269C: FFree1Ad var_94
  loc_68269F: FFree1Var var_C8 = ""
  loc_6826A2: FLdRfVar var_A4
  loc_6826A5: FLdPrThis
  loc_6826A6: VCallAd Control_ID_txtIva
  loc_6826A9: FStAdFunc var_94
  loc_6826AC: FLdPr var_94
  loc_6826AF:  = Me.SelStart
  loc_6826B4: ILdRf var_A4
  loc_6826B7: FLdRfVar var_98
  loc_6826BA: FLdPrThis
  loc_6826BB: VCallAd Control_ID_txtIva
  loc_6826BE: FStAdFunc var_A8
  loc_6826C1: FLdPr var_A8
  loc_6826C4:  = Me.Text
  loc_6826C9: ILdRf var_98
  loc_6826CC: FnLenStr
  loc_6826CD: EqI4
  loc_6826CE: FFree1Str var_98
  loc_6826D1: FFreeAd var_94 = ""
  loc_6826D8: BranchF loc_6826E8
  loc_6826DB: ImpAdCallFPR4 Beep()
  loc_6826E0: LitI2_Byte 0
  loc_6826E2: IStI2 KeyCode
  loc_6826E5: Branch loc_6827CC
  loc_6826E8: FLdRfVar var_A4
  loc_6826EB: FLdPrThis
  loc_6826EC: VCallAd Control_ID_txtIva
  loc_6826EF: FStAdFunc var_94
  loc_6826F2: FLdPr var_94
  loc_6826F5:  = Me.SelStart
  loc_6826FA: ILdRf var_A4
  loc_6826FD: LitI4 0
  loc_682702: GtI4
  loc_682703: FFree1Ad var_94
  loc_682706: BranchF loc_6827CC
  loc_682709: FLdRfVar var_98
  loc_68270C: FLdPrThis
  loc_68270D: VCallAd Control_ID_txtIva
  loc_682710: FStAdFunc var_94
  loc_682713: FLdPr var_94
  loc_682716:  = Me.Text
  loc_68271B: FLdRfVar var_A4
  loc_68271E: FLdPrThis
  loc_68271F: VCallAd Control_ID_txtIva
  loc_682722: FStAdFunc var_A8
  loc_682725: FLdPr var_A8
  loc_682728:  = Me.SelStart
  loc_68272D: FLdRfVar var_A0
  loc_682730: FLdPrThis
  loc_682731: VCallAd Control_ID_txtIva
  loc_682734: FStAdFunc var_CC
  loc_682737: FLdPr var_CC
  loc_68273A:  = Me.Text
  loc_68273F: FLdRfVar var_D4
  loc_682742: FLdPrThis
  loc_682743: VCallAd Control_ID_txtIva
  loc_682746: FStAdFunc var_D0
  loc_682749: FLdPr var_D0
  loc_68274C:  = Me.SelStart
  loc_682751: LitVarI2 var_C8, 1
  loc_682756: ILdRf var_A4
  loc_682759: ILdRf var_98
  loc_68275C: ImpAdCallI2 Mid$(, , )
  loc_682761: FStStrNoPop var_9C
  loc_682764: LitStr "."
  loc_682767: EqStr
  loc_682769: LitVarI2 var_FC, 1
  loc_68276E: ILdRf var_D4
  loc_682771: ILdRf var_A0
  loc_682774: ImpAdCallI2 Mid$(, , )
  loc_682779: FStStrNoPop var_100
  loc_68277C: LitStr ","
  loc_68277F: EqStr
  loc_682781: OrI4
  loc_682782: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_68278D: FFreeAd var_94 = "": var_A8 = "": var_CC = ""
  loc_682798: FFreeVar var_C8 = ""
  loc_68279F: BranchF loc_6827C9
  loc_6827A2: ILdRf var_88
  loc_6827A5: ILdRf var_8C
  loc_6827A8: ConcatStr
  loc_6827A9: FStStrNoPop var_98
  loc_6827AC: FnLenStr
  loc_6827AD: LitI4 2
  loc_6827B2: GtI4
  loc_6827B3: FFree1Str var_98
  loc_6827B6: BranchF loc_6827C6
  loc_6827B9: ImpAdCallFPR4 Beep()
  loc_6827BE: LitI2_Byte 0
  loc_6827C0: IStI2 KeyCode
  loc_6827C3: Branch loc_6827C6
  loc_6827C6: Branch loc_6827C9
  loc_6827C9: Branch loc_6827CC
  loc_6827CC: ExitProcHresult
  loc_6827CD: ConcatStr
  loc_6827CE: MemLdR8 global_-7167
End Sub

Private Sub txtIva_KeyPress(KeyAscii As Integer) '618C38
  'Data Table: 41E45C
  loc_618B10: ILdI2 KeyAscii
  loc_618B13: FStI2 var_8E
  loc_618B16: FLdI2 var_8E
  loc_618B19: LitI4 &H30
  loc_618B1E: CI2I4
  loc_618B1F: LitI4 &H39
  loc_618B24: CI2I4
  loc_618B25: BetweenI2
  loc_618B27: BranchT loc_618B48
  loc_618B2A: FLdI2 var_8E
  loc_618B2D: LitStr "."
  loc_618B30: ImpAdCallI2 Asc()
  loc_618B35: EqI2
  loc_618B36: BranchT loc_618B48
  loc_618B39: FLdI2 var_8E
  loc_618B3C: LitStr ","
  loc_618B3F: ImpAdCallI2 Asc()
  loc_618B44: EqI2
  loc_618B45: BranchF loc_618BA7
  loc_618B48: FLdRfVar var_98
  loc_618B4B: FLdPrThis
  loc_618B4C: VCallAd Control_ID_txtIva
  loc_618B4F: FStAdFunc var_94
  loc_618B52: FLdPr var_94
  loc_618B55:  = Me.Text
  loc_618B5A: FLdRfVar var_A0
  loc_618B5D: FLdPrThis
  loc_618B5E: VCallAd Control_ID_txtIva
  loc_618B61: FStAdFunc var_9C
  loc_618B64: FLdPr var_9C
  loc_618B67:  = Me.SelStart
  loc_618B6C: FLdRfVar var_A8
  loc_618B6F: FLdPrThis
  loc_618B70: VCallAd Control_ID_txtIva
  loc_618B73: FStAdFunc var_A4
  loc_618B76: FLdPr var_A4
  loc_618B79:  = Me.SelLength
  loc_618B7E: ILdRf var_A8
  loc_618B81: CI2I4
  loc_618B82: ILdRf var_A0
  loc_618B85: CI2I4
  loc_618B86: LitI2_Byte 2
  loc_618B88: LitI2_Byte 2
  loc_618B8A: ILdI2 KeyAscii
  loc_618B8D: ILdRf var_98
  loc_618B90: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_618B95: IStI2 KeyAscii
  loc_618B98: FFree1Str var_98
  loc_618B9B: FFreeAd var_94 = "": var_9C = ""
  loc_618BA4: Branch loc_618C36
  loc_618BA7: FLdI2 var_8E
  loc_618BAA: LitI4 &HD
  loc_618BAF: CI2I4
  loc_618BB0: EqI2
  loc_618BB1: BranchF loc_618BC9
  loc_618BB4: LitI2_Byte 0
  loc_618BB6: IStI2 KeyAscii
  loc_618BB9: LitI2_Byte 0
  loc_618BBB: PopTmpLdAd2 var_AA
  loc_618BBE: LitStr "{TAB}"
  loc_618BC1: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_618BC6: Branch loc_618C36
  loc_618BC9: FLdI2 var_8E
  loc_618BCC: LitI2_Byte 8
  loc_618BCE: EqI2
  loc_618BCF: BranchF loc_618C31
  loc_618BD2: FLdRfVar var_98
  loc_618BD5: FLdPrThis
  loc_618BD6: VCallAd Control_ID_txtIva
  loc_618BD9: FStAdFunc var_94
  loc_618BDC: FLdPr var_94
  loc_618BDF:  = Me.Text
  loc_618BE4: FLdRfVar var_A0
  loc_618BE7: FLdPrThis
  loc_618BE8: VCallAd Control_ID_txtIva
  loc_618BEB: FStAdFunc var_9C
  loc_618BEE: FLdPr var_9C
  loc_618BF1:  = Me.SelStart
  loc_618BF6: FLdRfVar var_A8
  loc_618BF9: FLdPrThis
  loc_618BFA: VCallAd Control_ID_txtIva
  loc_618BFD: FStAdFunc var_A4
  loc_618C00: FLdPr var_A4
  loc_618C03:  = Me.SelLength
  loc_618C08: ILdRf var_A8
  loc_618C0B: CI2I4
  loc_618C0C: ILdRf var_A0
  loc_618C0F: CI2I4
  loc_618C10: LitI2_Byte 2
  loc_618C12: LitI2_Byte 2
  loc_618C14: ILdI2 KeyAscii
  loc_618C17: ILdRf var_98
  loc_618C1A: ImpAdCallI2 Proc_87_10_68AE2C(, , , , , )
  loc_618C1F: IStI2 KeyAscii
  loc_618C22: FFree1Str var_98
  loc_618C25: FFreeAd var_94 = "": var_9C = ""
  loc_618C2E: Branch loc_618C36
  loc_618C31: LitI2_Byte 0
  loc_618C33: IStI2 KeyAscii
  loc_618C36: ExitProcHresult
End Sub

Private Sub txtIva_LostFocus() '5E7BD4
  'Data Table: 41E45C
  loc_5E7B6C: FLdRfVar var_8C
  loc_5E7B6F: FLdPrThis
  loc_5E7B70: VCallAd Control_ID_txtIva
  loc_5E7B73: FStAdFunc var_88
  loc_5E7B76: FLdPr var_88
  loc_5E7B79:  = Me.Text
  loc_5E7B7E: LitI4 1
  loc_5E7B83: LitI4 1
  loc_5E7B88: LitVarStr var_C0, "#0.00"
  loc_5E7B8D: FStVarCopyObj var_D0
  loc_5E7B90: FLdRfVar var_D0
  loc_5E7B93: LitStr "0"
  loc_5E7B96: ILdRf var_8C
  loc_5E7B99: ConcatStr
  loc_5E7B9A: FStStrNoPop var_90
  loc_5E7B9D: CR8Str
  loc_5E7B9F: CVarR8
  loc_5E7BA3: ImpAdCallI2 Format$(, )
  loc_5E7BA8: FStStrNoPop var_D4
  loc_5E7BAB: FLdPrThis
  loc_5E7BAC: VCallAd Control_ID_txtIva
  loc_5E7BAF: FStAdFunc var_D8
  loc_5E7BB2: FLdPr var_D8
  loc_5E7BB5: Me.Text = from_stack_1
  loc_5E7BBA: FFreeStr var_8C = "": var_90 = ""
  loc_5E7BC3: FFreeAd var_88 = ""
  loc_5E7BCA: FFreeVar var_B0 = ""
  loc_5E7BD1: ExitProcHresult
End Sub
