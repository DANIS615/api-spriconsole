VERSION 5.00
Begin VB.Form traspaso
  Caption = "Traspaso"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 5910
  ClientHeight = 4275
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.CommandButton Command2
    Caption = "&Cancelar"
    Left = 600
    Top = 3360
    Width = 1815
    Height = 495
    TabIndex = 5
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
  Begin VB.TextBox Text1
    Left = 1680
    Top = 2520
    Width = 2895
    Height = 405
    TabIndex = 3
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
  Begin VB.CommandButton Command1
    Caption = "&Aceptar"
    Left = 3360
    Top = 3360
    Width = 1815
    Height = 495
    TabIndex = 4
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
  Begin VB.ComboBox Combo3
    Style = 2
    Left = 1680
    Top = 1320
    Width = 1695
    Height = 420
    TabIndex = 1
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
  Begin VB.ComboBox Combo2
    Style = 2
    Left = 1680
    Top = 1920
    Width = 1695
    Height = 420
    TabIndex = 2
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
  Begin VB.ComboBox Combo1
    Style = 2
    Left = 1680
    Top = 720
    Width = 2895
    Height = 420
    TabIndex = 0
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
  Begin VB.Label Label5
    Caption = "Cantidad"
    Left = 360
    Top = 2640
    Width = 2175
    Height = 375
    TabIndex = 10
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
  Begin VB.Label Label4
    Caption = "Traspaso entre tanques"
    Left = 0
    Top = 120
    Width = 5895
    Height = 375
    TabIndex = 9
    Alignment = 2 'Center
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
  Begin VB.Label Label3
    Caption = "Destino"
    Left = 360
    Top = 1920
    Width = 2055
    Height = 375
    TabIndex = 8
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
  Begin VB.Label Label2
    Caption = "Origen"
    Left = 360
    Top = 1320
    Width = 2055
    Height = 375
    TabIndex = 7
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
  Begin VB.Label Label1
    Caption = "Producto"
    Left = 360
    Top = 720
    Width = 2175
    Height = 375
    TabIndex = 6
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

Attribute VB_Name = "traspaso"


Private Sub Command2_Click() '5D0FFC
  'Data Table: 4243C0
  loc_5D0FE4: ILdRf Me
  loc_5D0FE7: FStAdNoPop
  loc_5D0FEB: ImpAdLdRf MemVar_7520D4
  loc_5D0FEE: NewIfNullPr Global
  loc_5D0FF1: Global.Unload from_stack_1
  loc_5D0FF6: FFree1Ad var_88
  loc_5D0FF9: ExitProcHresult
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '641170
  'Data Table: 4243C0
  loc_640F3C: LitI4 1
  loc_640F41: FLdRfVar var_A4
  loc_640F44: FLdPrThis
  loc_640F45: VCallAd Control_ID_Text1
  loc_640F48: FStAdFunc var_A0
  loc_640F4B: FLdPr var_A0
  loc_640F4E:  = Me.Text
  loc_640F53: ILdRf var_A4
  loc_640F56: LitStr "."
  loc_640F59: LitI4 0
  loc_640F5E: FnInStr4
  loc_640F60: CI2I4
  loc_640F61: FStI2 var_86
  loc_640F64: FFree1Str var_A4
  loc_640F67: FFree1Ad var_A0
  loc_640F6A: ILdI2 KeyAscii
  loc_640F6D: LitI2_Byte 8
  loc_640F6F: EqI2
  loc_640F70: FLdRfVar var_A4
  loc_640F73: FLdPrThis
  loc_640F74: VCallAd Control_ID_Text1
  loc_640F77: FStAdFunc var_A0
  loc_640F7A: FLdPr var_A0
  loc_640F7D:  = Me.Text
  loc_640F82: ILdRf var_A4
  loc_640F85: LitStr vbNullString
  loc_640F88: NeStr
  loc_640F8A: AndI4
  loc_640F8B: FFree1Str var_A4
  loc_640F8E: FFree1Ad var_A0
  loc_640F91: BranchF loc_64100B
  loc_640F94: FLdRfVar var_A4
  loc_640F97: FLdPrThis
  loc_640F98: VCallAd Control_ID_Text1
  loc_640F9B: FStAdFunc var_A0
  loc_640F9E: FLdPr var_A0
  loc_640FA1:  = Me.Text
  loc_640FA6: FLdRfVar var_AC
  loc_640FA9: FLdPrThis
  loc_640FAA: VCallAd Control_ID_Text1
  loc_640FAD: FStAdFunc var_A8
  loc_640FB0: FLdPr var_A8
  loc_640FB3:  = Me.Text
  loc_640FB8: ILdRf var_AC
  loc_640FBB: FnLenStr
  loc_640FBC: LitI4 1
  loc_640FC1: SubI4
  loc_640FC2: CVarI4
  loc_640FC6: LitI4 1
  loc_640FCB: FLdZeroAd var_A4
  loc_640FCE: CVarStr var_BC
  loc_640FD1: FLdRfVar var_EC
  loc_640FD4: ImpAdCallFPR4  = Mid(, , )
  loc_640FD9: FLdRfVar var_EC
  loc_640FDC: CStrVarVal var_F0
  loc_640FE0: FLdPrThis
  loc_640FE1: VCallAd Control_ID_Text1
  loc_640FE4: FStAdFunc var_F4
  loc_640FE7: FLdPr var_F4
  loc_640FEA: Me.Text = from_stack_1
  loc_640FEF: FFreeStr var_AC = ""
  loc_640FF6: FFreeAd var_A0 = "": var_A8 = ""
  loc_640FFF: FFreeVar var_BC = "": var_DC = ""
  loc_641008: Branch loc_641169
  loc_64100B: ILdI2 KeyAscii
  loc_64100E: LitI2_Byte &H2E
  loc_641010: EqI2
  loc_641011: FLdI2 var_86
  loc_641014: LitI2_Byte 0
  loc_641016: EqI2
  loc_641017: AndI4
  loc_641018: BranchF loc_641057
  loc_64101B: FLdRfVar var_A4
  loc_64101E: FLdPrThis
  loc_64101F: VCallAd Control_ID_Text1
  loc_641022: FStAdFunc var_A0
  loc_641025: FLdPr var_A0
  loc_641028:  = Me.Text
  loc_64102D: ILdRf var_A4
  loc_641030: LitStr "."
  loc_641033: ConcatStr
  loc_641034: FStStrNoPop var_AC
  loc_641037: FLdPrThis
  loc_641038: VCallAd Control_ID_Text1
  loc_64103B: FStAdFunc var_A8
  loc_64103E: FLdPr var_A8
  loc_641041: Me.Text = from_stack_1
  loc_641046: FFreeStr var_A4 = ""
  loc_64104D: FFreeAd var_A0 = ""
  loc_641054: Branch loc_641169
  loc_641057: LitI2_Byte &H30
  loc_641059: ILdI2 KeyAscii
  loc_64105C: LeI2
  loc_64105D: ILdI2 KeyAscii
  loc_641060: LitI2_Byte &H39
  loc_641062: LeI2
  loc_641063: AndI4
  loc_641064: BranchF loc_641169
  loc_641067: LitI2_Byte 0
  loc_641069: FLdI2 var_86
  loc_64106C: EqI2
  loc_64106D: FLdRfVar var_A4
  loc_641070: FLdPrThis
  loc_641071: VCallAd Control_ID_Text1
  loc_641074: FStAdFunc var_A0
  loc_641077: FLdPr var_A0
  loc_64107A:  = Me.Text
  loc_64107F: ILdRf var_A4
  loc_641082: FnLenStr
  loc_641083: LitI4 6
  loc_641088: LtI4
  loc_641089: AndI4
  loc_64108A: FFree1Str var_A4
  loc_64108D: FFree1Ad var_A0
  loc_641090: BranchF loc_6410E7
  loc_641093: FLdRfVar var_A4
  loc_641096: FLdPrThis
  loc_641097: VCallAd Control_ID_Text1
  loc_64109A: FStAdFunc var_A0
  loc_64109D: FLdPr var_A0
  loc_6410A0:  = Me.Text
  loc_6410A5: FLdZeroAd var_A4
  loc_6410A8: CVarStr var_DC
  loc_6410AB: ILdI2 KeyAscii
  loc_6410AE: CI4UI1
  loc_6410AF: FLdRfVar var_BC
  loc_6410B2: ImpAdCallFPR4  = Chr()
  loc_6410B7: FLdRfVar var_BC
  loc_6410BA: ConcatVar var_EC
  loc_6410BE: CStrVarVal var_AC
  loc_6410C2: FLdPrThis
  loc_6410C3: VCallAd Control_ID_Text1
  loc_6410C6: FStAdFunc var_A8
  loc_6410C9: FLdPr var_A8
  loc_6410CC: Me.Text = from_stack_1
  loc_6410D1: FFree1Str var_AC
  loc_6410D4: FFreeAd var_A0 = ""
  loc_6410DB: FFreeVar var_DC = "": var_BC = ""
  loc_6410E4: Branch loc_641169
  loc_6410E7: LitI2_Byte 0
  loc_6410E9: FLdI2 var_86
  loc_6410EC: LtI2
  loc_6410ED: FLdRfVar var_A4
  loc_6410F0: FLdPrThis
  loc_6410F1: VCallAd Control_ID_Text1
  loc_6410F4: FStAdFunc var_A0
  loc_6410F7: FLdPr var_A0
  loc_6410FA:  = Me.Text
  loc_6410FF: ILdRf var_A4
  loc_641102: FnLenStr
  loc_641103: FLdI2 var_86
  loc_641106: CI4UI1
  loc_641107: SubI4
  loc_641108: LitI4 2
  loc_64110D: LtI4
  loc_64110E: AndI4
  loc_64110F: FFree1Str var_A4
  loc_641112: FFree1Ad var_A0
  loc_641115: BranchF loc_641169
  loc_641118: FLdRfVar var_A4
  loc_64111B: FLdPrThis
  loc_64111C: VCallAd Control_ID_Text1
  loc_64111F: FStAdFunc var_A0
  loc_641122: FLdPr var_A0
  loc_641125:  = Me.Text
  loc_64112A: FLdZeroAd var_A4
  loc_64112D: CVarStr var_DC
  loc_641130: ILdI2 KeyAscii
  loc_641133: CI4UI1
  loc_641134: FLdRfVar var_BC
  loc_641137: ImpAdCallFPR4  = Chr()
  loc_64113C: FLdRfVar var_BC
  loc_64113F: ConcatVar var_EC
  loc_641143: CStrVarVal var_AC
  loc_641147: FLdPrThis
  loc_641148: VCallAd Control_ID_Text1
  loc_64114B: FStAdFunc var_A8
  loc_64114E: FLdPr var_A8
  loc_641151: Me.Text = from_stack_1
  loc_641156: FFree1Str var_AC
  loc_641159: FFreeAd var_A0 = ""
  loc_641160: FFreeVar var_DC = "": var_BC = ""
  loc_641169: LitI2_Byte 0
  loc_64116B: IStI2 KeyAscii
  loc_64116E: ExitProcHresult
  loc_64116F: FLdPrThis
End Sub

Private Sub Text1_LostFocus() '60C6D0
  'Data Table: 4243C0
  loc_60C5E4: OnErrorGoto loc_60C689
  loc_60C5E7: FLdRfVar var_86
  loc_60C5EA: from_stack_1v = CheckFormat()
  loc_60C5EF: FLdI2 var_86
  loc_60C5F2: NotI4
  loc_60C5F3: BranchF loc_60C627
  loc_60C5F6: LitVar_Missing var_108
  loc_60C5F9: LitVar_Missing var_E8
  loc_60C5FC: LitVarStr var_B8, "Formato"
  loc_60C601: FStVarCopyObj var_C8
  loc_60C604: FLdRfVar var_C8
  loc_60C607: LitI4 &H40
  loc_60C60C: LitVarStr var_98, "Verifique el formato de cantidad"
  loc_60C611: FStVarCopyObj var_A8
  loc_60C614: FLdRfVar var_A8
  loc_60C617: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60C61C: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_60C627: FLdRfVar var_110
  loc_60C62A: FLdPrThis
  loc_60C62B: VCallAd Control_ID_Text1
  loc_60C62E: FStAdFunc var_10C
  loc_60C631: FLdPr var_10C
  loc_60C634:  = Me.Text
  loc_60C639: ILdRf var_110
  loc_60C63C: LitStr vbNullString
  loc_60C63F: NeStr
  loc_60C641: FFree1Str var_110
  loc_60C644: FFree1Ad var_10C
  loc_60C647: BranchF loc_60C688
  loc_60C64A: FLdRfVar var_110
  loc_60C64D: FLdPrThis
  loc_60C64E: VCallAd Control_ID_Text1
  loc_60C651: FStAdFunc var_10C
  loc_60C654: FLdPr var_10C
  loc_60C657:  = Me.Text
  loc_60C65C: ILdRf var_110
  loc_60C65F: CR8Str
  loc_60C661: FLdPr Me
  loc_60C664: MemStFPR8 global_52
  loc_60C667: FFree1Str var_110
  loc_60C66A: FFree1Ad var_10C
  loc_60C66D: FLdRfVar var_110
  loc_60C670: FLdPr Me
  loc_60C673: MemLdRfVar from_stack_1.global_52
  loc_60C676: from_stack_2v = ArmarVolumen(from_stack_1v)
  loc_60C67B: ILdRf var_110
  loc_60C67E: FLdPr Me
  loc_60C681: MemStStrCopy
  loc_60C685: FFree1Str var_110
  loc_60C688: ExitProcHresult
  loc_60C689: LitVar_Missing var_108
  loc_60C68C: LitVar_Missing var_E8
  loc_60C68F: LitVarStr var_B8, "Atención"
  loc_60C694: FStVarCopyObj var_C8
  loc_60C697: FLdRfVar var_C8
  loc_60C69A: LitI4 &H40
  loc_60C69F: LitVarStr var_98, "El número ingresado es incorrecto. Verifique por favor."
  loc_60C6A4: FStVarCopyObj var_A8
  loc_60C6A7: FLdRfVar var_A8
  loc_60C6AA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60C6AF: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_60C6BA: FLdPrThis
  loc_60C6BB: VCallAd Control_ID_Text1
  loc_60C6BE: FStAdFunc var_10C
  loc_60C6C1: FLdPr var_10C
  loc_60C6C4: Me.SetFocus
  loc_60C6C9: FFree1Ad var_10C
  loc_60C6CC: ExitProcHresult
End Sub

Private Sub Combo3_DropDown() '630358
  'Data Table: 4243C0
  loc_6301B8: FLdPrThis
  loc_6301B9: VCallAd Control_ID_Combo3
  loc_6301BC: FStAdFunc var_8C
  loc_6301BF: FLdPr var_8C
  loc_6301C2: Me.Clear
  loc_6301C7: FFree1Ad var_8C
  loc_6301CA: LitI2_Byte 1
  loc_6301CC: FLdRfVar var_86
  loc_6301CF: ImpAdLdUI1
  loc_6301D3: CI2UI1
  loc_6301D5: ForI2 var_90
  loc_6301DB: FLdRfVar var_94
  loc_6301DE: FLdPrThis
  loc_6301DF: VCallAd Control_ID_Combo2
  loc_6301E2: FStAdFunc var_8C
  loc_6301E5: FLdPr var_8C
  loc_6301E8:  = Me.Text
  loc_6301ED: ILdRf var_94
  loc_6301F0: LitStr vbNullString
  loc_6301F3: NeStr
  loc_6301F5: FFree1Str var_94
  loc_6301F8: FFree1Ad var_8C
  loc_6301FB: BranchF loc_6302CE
  loc_6301FE: FLdRfVar var_E0
  loc_630201: FLdPrThis
  loc_630202: VCallAd Control_ID_Combo2
  loc_630205: FStAdFunc var_DC
  loc_630208: FLdPr var_DC
  loc_63020B:  = Me.Text
  loc_630210: FLdRfVar var_94
  loc_630213: FLdI2 var_86
  loc_630216: CI4UI1
  loc_630217: ImpAdLdRf MemVar_74C1D8
  loc_63021A: Ary1LdUI1
  loc_63021C: CI2UI1
  loc_63021E: ImpAdLdRf MemVar_74A220
  loc_630221: NewIfNullPr clsProducts
  loc_630229: FLdZeroAd var_94
  loc_63022C: CVarStr var_C8
  loc_63022F: HardType
  loc_630230: FLdRfVar var_98
  loc_630233: FLdPrThis
  loc_630234: VCallAd Control_ID_Combo1
  loc_630237: FStAdFunc var_8C
  loc_63023A: FLdPr var_8C
  loc_63023D:  = Me.Text
  loc_630242: FLdZeroAd var_98
  loc_630245: CVarStr var_A8
  loc_630248: FLdRfVar var_B8
  loc_63024B: ImpAdCallFPR4  = Trim()
  loc_630250: FLdRfVar var_B8
  loc_630253: EqVar var_D8
  loc_630257: LitVarI2 var_110, 2
  loc_63025C: LitI4 8
  loc_630261: FLdZeroAd var_E0
  loc_630264: CVarStr var_F0
  loc_630267: FLdRfVar var_120
  loc_63026A: ImpAdCallFPR4  = Mid(, , )
  loc_63026F: FLdRfVar var_120
  loc_630272: FnCIntVar
  loc_630274: FLdI2 var_86
  loc_630277: NeI2
  loc_630278: CVarBoolI2 var_130
  loc_63027C: AndVar var_140
  loc_630280: CBoolVarNull
  loc_630282: FFreeAd var_8C = ""
  loc_630289: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_F0 = "": var_110 = "": var_120 = "": var_120 = ""
  loc_63029C: BranchF loc_6302CB
  loc_63029F: LitVar_Missing var_100
  loc_6302A2: PopAdLdVar
  loc_6302A3: LitStr "Tanque "
  loc_6302A6: FLdI2 var_86
  loc_6302A9: CStrUI1
  loc_6302AB: FStStrNoPop var_94
  loc_6302AE: ConcatStr
  loc_6302AF: FStStrNoPop var_98
  loc_6302B2: FLdPrThis
  loc_6302B3: VCallAd Control_ID_Combo3
  loc_6302B6: FStAdFunc var_8C
  loc_6302B9: FLdPr var_8C
  loc_6302BC: Me.AddItem from_stack_1, from_stack_2
  loc_6302C1: FFreeStr var_94 = ""
  loc_6302C8: FFree1Ad var_8C
  loc_6302CB: Branch loc_63034E
  loc_6302CE: FLdRfVar var_94
  loc_6302D1: FLdI2 var_86
  loc_6302D4: CI4UI1
  loc_6302D5: ImpAdLdRf MemVar_74C1D8
  loc_6302D8: Ary1LdUI1
  loc_6302DA: CI2UI1
  loc_6302DC: ImpAdLdRf MemVar_74A220
  loc_6302DF: NewIfNullPr clsProducts
  loc_6302E7: FLdZeroAd var_94
  loc_6302EA: CVarStr var_C8
  loc_6302ED: HardType
  loc_6302EE: FLdRfVar var_98
  loc_6302F1: FLdPrThis
  loc_6302F2: VCallAd Control_ID_Combo1
  loc_6302F5: FStAdFunc var_8C
  loc_6302F8: FLdPr var_8C
  loc_6302FB:  = Me.Text
  loc_630300: FLdZeroAd var_98
  loc_630303: CVarStr var_A8
  loc_630306: FLdRfVar var_B8
  loc_630309: ImpAdCallFPR4  = Trim()
  loc_63030E: FLdRfVar var_B8
  loc_630311: EqVarBool
  loc_630313: FFree1Ad var_8C
  loc_630316: FFreeVar var_A8 = "": var_C8 = ""
  loc_63031F: BranchF loc_63034E
  loc_630322: LitVar_Missing var_100
  loc_630325: PopAdLdVar
  loc_630326: LitStr "Tanque "
  loc_630329: FLdI2 var_86
  loc_63032C: CStrUI1
  loc_63032E: FStStrNoPop var_94
  loc_630331: ConcatStr
  loc_630332: FStStrNoPop var_98
  loc_630335: FLdPrThis
  loc_630336: VCallAd Control_ID_Combo3
  loc_630339: FStAdFunc var_8C
  loc_63033C: FLdPr var_8C
  loc_63033F: Me.AddItem from_stack_1, from_stack_2
  loc_630344: FFreeStr var_94 = ""
  loc_63034B: FFree1Ad var_8C
  loc_63034E: FLdRfVar var_86
  loc_630351: NextI2 var_90, loc_6301DB
  loc_630356: ExitProcHresult
End Sub

Private Sub Command1_Click() '5E0090
  'Data Table: 4243C0
  loc_5E0044: FLdRfVar var_86
  loc_5E0047: from_stack_1v = CheckFormat()
  loc_5E004C: FLdI2 var_86
  loc_5E004F: BranchF loc_5E005D
  loc_5E0052: FLdRfVar var_86
  loc_5E0055: from_stack_1v = Proc_125_14_65E38C()
  loc_5E005A: Branch loc_5E008E
  loc_5E005D: LitVar_Missing var_108
  loc_5E0060: LitVar_Missing var_E8
  loc_5E0063: LitVarStr var_B8, "Formato"
  loc_5E0068: FStVarCopyObj var_C8
  loc_5E006B: FLdRfVar var_C8
  loc_5E006E: LitI4 &H40
  loc_5E0073: LitVarStr var_98, "Verifique el formato de cantidad"
  loc_5E0078: FStVarCopyObj var_A8
  loc_5E007B: FLdRfVar var_A8
  loc_5E007E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5E0083: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5E008E: ExitProcHresult
End Sub

Private Sub Combo1_Click() '5D6A8C
  'Data Table: 4243C0
  loc_5D6A64: FLdPrThis
  loc_5D6A65: VCallAd Control_ID_Combo2
  loc_5D6A68: FStAdFunc var_88
  loc_5D6A6B: FLdPr var_88
  loc_5D6A6E: Me.Clear
  loc_5D6A73: FFree1Ad var_88
  loc_5D6A76: FLdPrThis
  loc_5D6A77: VCallAd Control_ID_Combo3
  loc_5D6A7A: FStAdFunc var_88
  loc_5D6A7D: FLdPr var_88
  loc_5D6A80: Me.Clear
  loc_5D6A85: FFree1Ad var_88
  loc_5D6A88: ExitProcHresult
  loc_5D6A89: CExtInstUnk
End Sub

Private Sub Combo2_DropDown() '62FD4C
  'Data Table: 4243C0
  loc_62FBAC: FLdPrThis
  loc_62FBAD: VCallAd Control_ID_Combo2
  loc_62FBB0: FStAdFunc var_8C
  loc_62FBB3: FLdPr var_8C
  loc_62FBB6: Me.Clear
  loc_62FBBB: FFree1Ad var_8C
  loc_62FBBE: LitI2_Byte 1
  loc_62FBC0: FLdRfVar var_86
  loc_62FBC3: ImpAdLdUI1
  loc_62FBC7: CI2UI1
  loc_62FBC9: ForI2 var_90
  loc_62FBCF: FLdRfVar var_94
  loc_62FBD2: FLdPrThis
  loc_62FBD3: VCallAd Control_ID_Combo3
  loc_62FBD6: FStAdFunc var_8C
  loc_62FBD9: FLdPr var_8C
  loc_62FBDC:  = Me.Text
  loc_62FBE1: ILdRf var_94
  loc_62FBE4: LitStr vbNullString
  loc_62FBE7: NeStr
  loc_62FBE9: FFree1Str var_94
  loc_62FBEC: FFree1Ad var_8C
  loc_62FBEF: BranchF loc_62FCC2
  loc_62FBF2: FLdRfVar var_E0
  loc_62FBF5: FLdPrThis
  loc_62FBF6: VCallAd Control_ID_Combo3
  loc_62FBF9: FStAdFunc var_DC
  loc_62FBFC: FLdPr var_DC
  loc_62FBFF:  = Me.Text
  loc_62FC04: FLdRfVar var_94
  loc_62FC07: FLdI2 var_86
  loc_62FC0A: CI4UI1
  loc_62FC0B: ImpAdLdRf MemVar_74C1D8
  loc_62FC0E: Ary1LdUI1
  loc_62FC10: CI2UI1
  loc_62FC12: ImpAdLdRf MemVar_74A220
  loc_62FC15: NewIfNullPr clsProducts
  loc_62FC1D: FLdZeroAd var_94
  loc_62FC20: CVarStr var_C8
  loc_62FC23: HardType
  loc_62FC24: FLdRfVar var_98
  loc_62FC27: FLdPrThis
  loc_62FC28: VCallAd Control_ID_Combo1
  loc_62FC2B: FStAdFunc var_8C
  loc_62FC2E: FLdPr var_8C
  loc_62FC31:  = Me.Text
  loc_62FC36: FLdZeroAd var_98
  loc_62FC39: CVarStr var_A8
  loc_62FC3C: FLdRfVar var_B8
  loc_62FC3F: ImpAdCallFPR4  = Trim()
  loc_62FC44: FLdRfVar var_B8
  loc_62FC47: EqVar var_D8
  loc_62FC4B: LitVarI2 var_110, 2
  loc_62FC50: LitI4 8
  loc_62FC55: FLdZeroAd var_E0
  loc_62FC58: CVarStr var_F0
  loc_62FC5B: FLdRfVar var_120
  loc_62FC5E: ImpAdCallFPR4  = Mid(, , )
  loc_62FC63: FLdRfVar var_120
  loc_62FC66: FnCIntVar
  loc_62FC68: FLdI2 var_86
  loc_62FC6B: NeI2
  loc_62FC6C: CVarBoolI2 var_130
  loc_62FC70: AndVar var_140
  loc_62FC74: CBoolVarNull
  loc_62FC76: FFreeAd var_8C = ""
  loc_62FC7D: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_F0 = "": var_110 = "": var_120 = "": var_120 = ""
  loc_62FC90: BranchF loc_62FCBF
  loc_62FC93: LitVar_Missing var_100
  loc_62FC96: PopAdLdVar
  loc_62FC97: LitStr "Tanque "
  loc_62FC9A: FLdI2 var_86
  loc_62FC9D: CStrUI1
  loc_62FC9F: FStStrNoPop var_94
  loc_62FCA2: ConcatStr
  loc_62FCA3: FStStrNoPop var_98
  loc_62FCA6: FLdPrThis
  loc_62FCA7: VCallAd Control_ID_Combo2
  loc_62FCAA: FStAdFunc var_8C
  loc_62FCAD: FLdPr var_8C
  loc_62FCB0: Me.AddItem from_stack_1, from_stack_2
  loc_62FCB5: FFreeStr var_94 = ""
  loc_62FCBC: FFree1Ad var_8C
  loc_62FCBF: Branch loc_62FD42
  loc_62FCC2: FLdRfVar var_94
  loc_62FCC5: FLdI2 var_86
  loc_62FCC8: CI4UI1
  loc_62FCC9: ImpAdLdRf MemVar_74C1D8
  loc_62FCCC: Ary1LdUI1
  loc_62FCCE: CI2UI1
  loc_62FCD0: ImpAdLdRf MemVar_74A220
  loc_62FCD3: NewIfNullPr clsProducts
  loc_62FCDB: FLdZeroAd var_94
  loc_62FCDE: CVarStr var_C8
  loc_62FCE1: HardType
  loc_62FCE2: FLdRfVar var_98
  loc_62FCE5: FLdPrThis
  loc_62FCE6: VCallAd Control_ID_Combo1
  loc_62FCE9: FStAdFunc var_8C
  loc_62FCEC: FLdPr var_8C
  loc_62FCEF:  = Me.Text
  loc_62FCF4: FLdZeroAd var_98
  loc_62FCF7: CVarStr var_A8
  loc_62FCFA: FLdRfVar var_B8
  loc_62FCFD: ImpAdCallFPR4  = Trim()
  loc_62FD02: FLdRfVar var_B8
  loc_62FD05: EqVarBool
  loc_62FD07: FFree1Ad var_8C
  loc_62FD0A: FFreeVar var_A8 = "": var_C8 = ""
  loc_62FD13: BranchF loc_62FD42
  loc_62FD16: LitVar_Missing var_100
  loc_62FD19: PopAdLdVar
  loc_62FD1A: LitStr "Tanque "
  loc_62FD1D: FLdI2 var_86
  loc_62FD20: CStrUI1
  loc_62FD22: FStStrNoPop var_94
  loc_62FD25: ConcatStr
  loc_62FD26: FStStrNoPop var_98
  loc_62FD29: FLdPrThis
  loc_62FD2A: VCallAd Control_ID_Combo2
  loc_62FD2D: FStAdFunc var_8C
  loc_62FD30: FLdPr var_8C
  loc_62FD33: Me.AddItem from_stack_1, from_stack_2
  loc_62FD38: FFreeStr var_94 = ""
  loc_62FD3F: FFree1Ad var_8C
  loc_62FD42: FLdRfVar var_86
  loc_62FD45: NextI2 var_90, loc_62FBCF
  loc_62FD4A: ExitProcHresult
End Sub

Private Sub Form_Activate() '5CCF30
  'Data Table: 4243C0
  loc_5CCF24: FLdRfVar var_94
  loc_5CCF27: from_stack_1v = CargarProductos()
  loc_5CCF2C: FFree1Var var_94 = ""
  loc_5CCF2F: ExitProcHresult
End Sub

Public Function CargarProductos() '61CFA8
  'Data Table: 4243C0
  loc_61CE7C: ZeroRetValVar
  loc_61CE7E: FLdPrThis
  loc_61CE7F: VCallAd Control_ID_Combo1
  loc_61CE82: FStAdFunc var_A0
  loc_61CE85: FLdPr var_A0
  loc_61CE88: Me.Clear
  loc_61CE8D: FFree1Ad var_A0
  loc_61CE90: LitI2_Byte 1
  loc_61CE92: FLdRfVar var_96
  loc_61CE95: ImpAdLdUI1
  loc_61CE99: CI2UI1
  loc_61CE9B: ForI2 var_A4
  loc_61CEA1: FLdI2 var_96
  loc_61CEA4: CI4UI1
  loc_61CEA5: ImpAdLdRf MemVar_74C1D8
  loc_61CEA8: Ary1LdUI1
  loc_61CEAA: CStrI2
  loc_61CEAC: FStStr var_9C
  loc_61CEAF: FLdPrThis
  loc_61CEB0: VCallAd Control_ID_Combo1
  loc_61CEB3: FStAdFunc var_B8
  loc_61CEB6: FLdRfVar var_AC
  loc_61CEB9: ILdRf var_9C
  loc_61CEBC: CI2Str
  loc_61CEBE: ImpAdLdRf MemVar_74A220
  loc_61CEC1: NewIfNullPr clsProducts
  loc_61CEC9: FLdRfVar var_A6
  loc_61CECC: FLdRfVar var_9C
  loc_61CECF: from_stack_2v = ContarProdTanques(from_stack_1v)
  loc_61CED4: FLdI2 var_A6
  loc_61CED7: LitI2_Byte 1
  loc_61CED9: GtI2
  loc_61CEDA: FLdRfVar var_B2
  loc_61CEDD: FLdZeroAd var_AC
  loc_61CEE0: PopTmpLdAdStr
  loc_61CEE4: FLdZeroAd var_B8
  loc_61CEE7: FStAdFunc var_A0
  loc_61CEEA: FLdRfVar var_A0
  loc_61CEED: from_stack_3v = ExisteEnCombo(from_stack_1v, from_stack_2v)
  loc_61CEF2: FLdI2 var_B2
  loc_61CEF5: NotI4
  loc_61CEF6: AndI4
  loc_61CEF7: FFree1Str var_B0
  loc_61CEFA: FFreeAd var_A0 = ""
  loc_61CF01: BranchF loc_61CF33
  loc_61CF04: LitVar_Missing var_C8
  loc_61CF07: PopAdLdVar
  loc_61CF08: FLdRfVar var_AC
  loc_61CF0B: ILdRf var_9C
  loc_61CF0E: CI2Str
  loc_61CF10: ImpAdLdRf MemVar_74A220
  loc_61CF13: NewIfNullPr clsProducts
  loc_61CF1B: ILdRf var_AC
  loc_61CF1E: FLdPrThis
  loc_61CF1F: VCallAd Control_ID_Combo1
  loc_61CF22: FStAdFunc var_A0
  loc_61CF25: FLdPr var_A0
  loc_61CF28: Me.AddItem from_stack_1, from_stack_2
  loc_61CF2D: FFree1Str var_AC
  loc_61CF30: FFree1Ad var_A0
  loc_61CF33: FLdRfVar var_96
  loc_61CF36: NextI2 var_A4, loc_61CEA1
  loc_61CF3B: FLdRfVar var_A6
  loc_61CF3E: FLdPrThis
  loc_61CF3F: VCallAd Control_ID_Combo1
  loc_61CF42: FStAdFunc var_A0
  loc_61CF45: FLdPr var_A0
  loc_61CF48:  = Me.ListCount
  loc_61CF4D: FLdI2 var_A6
  loc_61CF50: LitI2_Byte 0
  loc_61CF52: EqI2
  loc_61CF53: FFree1Ad var_A0
  loc_61CF56: BranchF loc_61CF9F
  loc_61CF59: LitVar_Missing var_138
  loc_61CF5C: LitVar_Missing var_118
  loc_61CF5F: LitVarStr var_E8, "Traspaso entre tanques"
  loc_61CF64: FStVarCopyObj var_F8
  loc_61CF67: FLdRfVar var_F8
  loc_61CF6A: LitI4 &H40
  loc_61CF6F: LitVarStr var_C8, "No hay tanques que posean el mismo producto"
  loc_61CF74: FStVarCopyObj var_D8
  loc_61CF77: FLdRfVar var_D8
  loc_61CF7A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61CF7F: FFreeVar var_D8 = "": var_F8 = "": var_118 = ""
  loc_61CF8A: ILdRf Me
  loc_61CF8D: FStAdNoPop
  loc_61CF91: ImpAdLdRf MemVar_7520D4
  loc_61CF94: NewIfNullPr Global
  loc_61CF97: Global.Unload from_stack_1
  loc_61CF9C: FFree1Ad var_A0
  loc_61CF9F: ExitProcCbHresult
End Function

Public Function ExisteEnCombo(combo, sValor) '5EBB84
  'Data Table: 4243C0
  loc_5EBB04: LitI2_Byte 0
  loc_5EBB06: FStI2 var_86
  loc_5EBB09: LitI2_Byte 1
  loc_5EBB0B: FLdRfVar var_88
  loc_5EBB0E: FLdRfVar var_8A
  loc_5EBB11: ILdPr
  loc_5EBB14:  = Me.ListCount
  loc_5EBB19: FLdI2 var_8A
  loc_5EBB1C: ForI2 var_8E
  loc_5EBB22: FLdI2 var_88
  loc_5EBB25: LitI2_Byte 1
  loc_5EBB27: SubI2
  loc_5EBB28: ILdPr
  loc_5EBB2B: Me.ListIndex = from_stack_1
  loc_5EBB30: FLdRfVar ExisteEnCombo
  loc_5EBB33: ILdPr
  loc_5EBB36:  = Me.Text
  loc_5EBB3B: FLdZeroAd ExisteEnCombo
  loc_5EBB3E: CVarStr var_A4
  loc_5EBB41: FLdRfVar var_B4
  loc_5EBB44: ImpAdCallFPR4  = Trim()
  loc_5EBB49: FLdRfVar var_B4
  loc_5EBB4C: ILdRf sValor
  loc_5EBB4F: CVarRef
  loc_5EBB54: FLdRfVar var_D4
  loc_5EBB57: ImpAdCallFPR4  = Trim()
  loc_5EBB5C: FLdRfVar var_D4
  loc_5EBB5F: EqVarBool
  loc_5EBB61: FFreeVar var_A4 = "": var_B4 = ""
  loc_5EBB6A: BranchF loc_5EBB75
  loc_5EBB6D: LitI2_Byte &HFF
  loc_5EBB6F: FStI2 var_86
  loc_5EBB72: Branch loc_5EBB7D
  loc_5EBB75: FLdRfVar var_88
  loc_5EBB78: NextI2 var_8E, loc_5EBB22
  loc_5EBB7D: ExitProcCbHresult
End Function

Public Function ContarProdTanques(sValor) '5DFE64
  'Data Table: 4243C0
  loc_5DFE14: LitI2_Byte 0
  loc_5DFE16: FStI2 var_88
  loc_5DFE19: LitVarI2 var_C8, 1
  loc_5DFE1E: FLdRfVar var_98
  loc_5DFE21: ImpAdLdUI1
  loc_5DFE25: CVarUI1
  loc_5DFE29: ForVar var_E8
  loc_5DFE2F: FLdRfVar var_98
  loc_5DFE32: CI4Var
  loc_5DFE34: ImpAdLdRf MemVar_74C1D8
  loc_5DFE37: Ary1LdUI1
  loc_5DFE39: CR8I2
  loc_5DFE3A: ILdI4 sValor
  loc_5DFE3D: CR8Str
  loc_5DFE3F: EqR4
  loc_5DFE40: BranchF loc_5DFE4C
  loc_5DFE43: FLdI2 var_88
  loc_5DFE46: LitI2_Byte 1
  loc_5DFE48: AddI2
  loc_5DFE49: FStI2 var_88
  loc_5DFE4C: FLdRfVar var_98
  loc_5DFE4F: NextStepVar var_E8
  loc_5DFE55: FLdI2 var_88
  loc_5DFE58: FStI2 var_86
  loc_5DFE5B: ExitProcCbHresult
End Function

Public Function CheckFormat() '637F18
  'Data Table: 4243C0
  loc_637D3C: OnErrorGoto loc_637F0B
  loc_637D3F: LitI4 1
  loc_637D44: FLdRfVar var_90
  loc_637D47: FLdPrThis
  loc_637D48: VCallAd Control_ID_Text1
  loc_637D4B: FStAdFunc var_8C
  loc_637D4E: FLdPr var_8C
  loc_637D51:  = Me.Text
  loc_637D56: ILdRf var_90
  loc_637D59: LitStr ","
  loc_637D5C: LitI4 0
  loc_637D61: FnInStr4
  loc_637D63: CUI1I4
  loc_637D65: FStUI1 var_88
  loc_637D69: FFree1Str var_90
  loc_637D6C: FFree1Ad var_8C
  loc_637D6F: FLdUI1
  loc_637D73: CI2UI1
  loc_637D75: LitI2_Byte 0
  loc_637D77: EqI2
  loc_637D78: NotI4
  loc_637D79: BranchF loc_637E8F
  loc_637D7C: FLdUI1
  loc_637D80: CI2UI1
  loc_637D82: LitI2_Byte 0
  loc_637D84: EqI2
  loc_637D85: NotI4
  loc_637D86: BranchF loc_637E5C
  loc_637D89: FLdRfVar var_90
  loc_637D8C: FLdPrThis
  loc_637D8D: VCallAd Control_ID_Text1
  loc_637D90: FStAdFunc var_8C
  loc_637D93: FLdPr var_8C
  loc_637D96:  = Me.Text
  loc_637D9B: FLdRfVar var_F8
  loc_637D9E: FLdPrThis
  loc_637D9F: VCallAd Control_ID_Text1
  loc_637DA2: FStAdFunc var_F4
  loc_637DA5: FLdPr var_F4
  loc_637DA8:  = Me.Text
  loc_637DAD: FLdUI1
  loc_637DB1: CI2UI1
  loc_637DB3: LitI2_Byte 1
  loc_637DB5: SubI2
  loc_637DB6: CVarI2 var_C0
  loc_637DB9: LitI4 1
  loc_637DBE: FLdZeroAd var_90
  loc_637DC1: CVarStr var_A0
  loc_637DC4: FLdRfVar var_D0
  loc_637DC7: ImpAdCallFPR4  = Mid(, , )
  loc_637DCC: FLdRfVar var_D0
  loc_637DCF: LitVarStr var_E0, "."
  loc_637DD4: AddVar var_F0
  loc_637DD8: FLdRfVar var_100
  loc_637DDB: FLdPrThis
  loc_637DDC: VCallAd Control_ID_Text1
  loc_637DDF: FStAdFunc var_FC
  loc_637DE2: FLdPr var_FC
  loc_637DE5:  = Me.Text
  loc_637DEA: ILdRf var_100
  loc_637DED: FnLenStr
  loc_637DEE: FLdUI1
  loc_637DF2: CI4UI1
  loc_637DF3: SubI4
  loc_637DF4: CVarI4
  loc_637DF8: FLdUI1
  loc_637DFC: CI2UI1
  loc_637DFE: LitI2_Byte 1
  loc_637E00: AddI2
  loc_637E01: CI4UI1
  loc_637E02: FLdZeroAd var_F8
  loc_637E05: CVarStr var_110
  loc_637E08: FLdRfVar var_140
  loc_637E0B: ImpAdCallFPR4  = Mid(, , )
  loc_637E10: FLdRfVar var_140
  loc_637E13: AddVar var_150
  loc_637E17: FLdRfVar var_160
  loc_637E1A: ImpAdCallFPR4  = Trim()
  loc_637E1F: FLdRfVar var_160
  loc_637E22: CStrVarVal var_164
  loc_637E26: FLdPrThis
  loc_637E27: VCallAd Control_ID_Text1
  loc_637E2A: FStAdFunc var_168
  loc_637E2D: FLdPr var_168
  loc_637E30: Me.Text = from_stack_1
  loc_637E35: FFreeStr var_100 = ""
  loc_637E3C: FFreeAd var_8C = "": var_F4 = "": var_FC = ""
  loc_637E47: FFreeVar var_A0 = "": var_C0 = "": var_D0 = "": var_110 = "": var_130 = "": var_F0 = "": var_140 = "": var_150 = ""
  loc_637E5C: LitI4 1
  loc_637E61: FLdRfVar var_90
  loc_637E64: FLdPrThis
  loc_637E65: VCallAd Control_ID_Text1
  loc_637E68: FStAdFunc var_8C
  loc_637E6B: FLdPr var_8C
  loc_637E6E:  = Me.Text
  loc_637E73: ILdRf var_90
  loc_637E76: LitStr ","
  loc_637E79: LitI4 0
  loc_637E7E: FnInStr4
  loc_637E80: CUI1I4
  loc_637E82: FStUI1 var_88
  loc_637E86: FFree1Str var_90
  loc_637E89: FFree1Ad var_8C
  loc_637E8C: Branch loc_637D6F
  loc_637E8F: LitI4 1
  loc_637E94: FLdRfVar var_90
  loc_637E97: FLdPrThis
  loc_637E98: VCallAd Control_ID_Text1
  loc_637E9B: FStAdFunc var_8C
  loc_637E9E: FLdPr var_8C
  loc_637EA1:  = Me.Text
  loc_637EA6: ILdRf var_90
  loc_637EA9: LitStr "-"
  loc_637EAC: LitI4 0
  loc_637EB1: FnInStr4
  loc_637EB3: CUI1I4
  loc_637EB5: FStUI1 var_88
  loc_637EB9: FFree1Str var_90
  loc_637EBC: FFree1Ad var_8C
  loc_637EBF: FLdUI1
  loc_637EC3: CI2UI1
  loc_637EC5: LitI2_Byte 0
  loc_637EC7: EqI2
  loc_637EC8: NotI4
  loc_637EC9: BranchF loc_637F00
  loc_637ECC: LitVar_Missing var_F0
  loc_637ECF: LitVar_Missing var_D0
  loc_637ED2: LitVarStr var_E0, "Aviso"
  loc_637ED7: FStVarCopyObj var_C0
  loc_637EDA: FLdRfVar var_C0
  loc_637EDD: LitI4 &H40
  loc_637EE2: LitVarStr var_B0, "No se puede ingresar un número negativo"
  loc_637EE7: FStVarCopyObj var_A0
  loc_637EEA: FLdRfVar var_A0
  loc_637EED: ImpAdCallFPR4 MsgBox(, , , , )
  loc_637EF2: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_637EFD: Branch loc_637F0B
  loc_637F00: LitI2_Byte &HFF
  loc_637F02: FStI2 var_86
  loc_637F05: ExitProcCbHresult
  loc_637F0B: LitI2_Byte 0
  loc_637F0D: FStI2 var_86
  loc_637F10: ExitProcCbHresult
End Function

Public Function ArmarVolumen(iValor) '623D80
  'Data Table: 4243C0
  loc_623C20: ZeroRetVal
  loc_623C22: ILdFPR8 iValor
  loc_623C25: CStrR8
  loc_623C27: FStStr var_8C
  loc_623C2A: LitI4 1
  loc_623C2F: ILdRf var_8C
  loc_623C32: LitStr "."
  loc_623C35: LitI4 0
  loc_623C3A: FnInStr4
  loc_623C3C: LitI4 1
  loc_623C41: AddI4
  loc_623C42: LitI4 1
  loc_623C47: NeI4
  loc_623C48: BranchF loc_623C8C
  loc_623C4B: ILdRf var_8C
  loc_623C4E: FnLenStr
  loc_623C4F: CVarI4
  loc_623C53: LitI4 1
  loc_623C58: ILdRf var_8C
  loc_623C5B: LitStr "."
  loc_623C5E: LitI4 0
  loc_623C63: FnInStr4
  loc_623C65: LitI4 1
  loc_623C6A: AddI4
  loc_623C6B: FLdRfVar var_8C
  loc_623C6E: CVarRef
  loc_623C73: FLdRfVar var_D4
  loc_623C76: ImpAdCallFPR4  = Mid(, , )
  loc_623C7B: FLdRfVar var_D4
  loc_623C7E: CStrVarTmp
  loc_623C7F: FStStr ArmarVolumen
  loc_623C82: FFreeVar var_C4 = ""
  loc_623C89: Branch loc_623C92
  loc_623C8C: LitStr vbNullString
  loc_623C8F: FStStrCopy ArmarVolumen
  loc_623C92: LitI4 1
  loc_623C97: ILdRf var_8C
  loc_623C9A: LitStr "."
  loc_623C9D: LitI4 0
  loc_623CA2: FnInStr4
  loc_623CA4: LitI4 1
  loc_623CA9: SubI4
  loc_623CAA: LitI4 0
  loc_623CAF: GtI4
  loc_623CB0: BranchF loc_623CF5
  loc_623CB3: LitI4 1
  loc_623CB8: ILdRf var_8C
  loc_623CBB: LitStr "."
  loc_623CBE: LitI4 0
  loc_623CC3: FnInStr4
  loc_623CC5: LitI4 1
  loc_623CCA: SubI4
  loc_623CCB: CVarI4
  loc_623CCF: LitI4 1
  loc_623CD4: FLdRfVar var_8C
  loc_623CD7: CVarRef
  loc_623CDC: FLdRfVar var_D4
  loc_623CDF: ImpAdCallFPR4  = Mid(, , )
  loc_623CE4: FLdRfVar var_D4
  loc_623CE7: CStrVarTmp
  loc_623CE8: FStStr var_90
  loc_623CEB: FFreeVar var_C4 = ""
  loc_623CF2: Branch loc_623D20
  loc_623CF5: ILdRf var_8C
  loc_623CF8: FnLenStr
  loc_623CF9: CVarI4
  loc_623CFD: LitI4 1
  loc_623D02: FLdRfVar var_8C
  loc_623D05: CVarRef
  loc_623D0A: FLdRfVar var_D4
  loc_623D0D: ImpAdCallFPR4  = Mid(, , )
  loc_623D12: FLdRfVar var_D4
  loc_623D15: CStrVarTmp
  loc_623D16: FStStr var_90
  loc_623D19: FFreeVar var_C4 = ""
  loc_623D20: FLdRfVar var_E0
  loc_623D23: LitI2_Byte &HFF
  loc_623D25: PopTmpLdAd2 var_DC
  loc_623D28: LitI2_Byte 2
  loc_623D2A: PopTmpLdAd2 var_DA
  loc_623D2D: LitStr "0"
  loc_623D30: FStStrCopy var_D8
  loc_623D33: FLdRfVar var_D8
  loc_623D36: FLdRfVar ArmarVolumen
  loc_623D39: from_stack_5v = Rellenar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_623D3E: FLdZeroAd var_E0
  loc_623D41: FStStr ArmarVolumen
  loc_623D44: FFree1Str var_D8
  loc_623D47: FLdRfVar var_E0
  loc_623D4A: LitI2_Byte 0
  loc_623D4C: PopTmpLdAd2 var_DC
  loc_623D4F: LitI2_Byte 6
  loc_623D51: PopTmpLdAd2 var_DA
  loc_623D54: LitStr "0"
  loc_623D57: FStStrCopy var_D8
  loc_623D5A: FLdRfVar var_D8
  loc_623D5D: FLdRfVar var_90
  loc_623D60: from_stack_5v = Rellenar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_623D65: FLdZeroAd var_E0
  loc_623D68: FStStr var_90
  loc_623D6B: FFree1Str var_D8
  loc_623D6E: ILdRf var_90
  loc_623D71: ILdRf ArmarVolumen
  loc_623D74: ConcatStr
  loc_623D75: FStStr var_88
  loc_623D78: ExitProcCbHresult
End Function

Public Function Rellenar(sValor, Caracter, Tamano, IdentIzq) '5FE428
  'Data Table: 4243C0
  loc_5FE35C: ZeroRetVal
  loc_5FE35E: ILdI2 IdentIzq
  loc_5FE361: BranchF loc_5FE3BA
  loc_5FE364: ILdI4 sValor
  loc_5FE367: CVarStr var_C0
  loc_5FE36A: ILdRf Caracter
  loc_5FE36D: CVarRef
  loc_5FE372: ILdI2 Tamano
  loc_5FE375: CI4UI1
  loc_5FE376: FLdRfVar var_B0
  loc_5FE379: ImpAdCallFPR4  = String(, )
  loc_5FE37E: FLdRfVar var_B0
  loc_5FE381: AddVar var_D0
  loc_5FE385: CStrVarTmp
  loc_5FE386: FStStr var_8C
  loc_5FE389: FFreeVar var_B0 = ""
  loc_5FE390: ILdRf Tamano
  loc_5FE393: CVarRef
  loc_5FE398: LitI4 1
  loc_5FE39D: FLdRfVar var_8C
  loc_5FE3A0: CVarRef
  loc_5FE3A5: FLdRfVar var_B0
  loc_5FE3A8: ImpAdCallFPR4  = Mid(, , )
  loc_5FE3AD: FLdRfVar var_B0
  loc_5FE3B0: CStrVarTmp
  loc_5FE3B1: FStStr var_88
  loc_5FE3B4: FFree1Var var_B0 = ""
  loc_5FE3B7: Branch loc_5FE41F
  loc_5FE3BA: ILdRf Caracter
  loc_5FE3BD: CVarRef
  loc_5FE3C2: ILdI2 Tamano
  loc_5FE3C5: CI4UI1
  loc_5FE3C6: FLdRfVar var_B0
  loc_5FE3C9: ImpAdCallFPR4  = String(, )
  loc_5FE3CE: FLdRfVar var_B0
  loc_5FE3D1: ILdI4 sValor
  loc_5FE3D4: CVarStr var_C0
  loc_5FE3D7: AddVar var_D0
  loc_5FE3DB: CStrVarTmp
  loc_5FE3DC: FStStr var_8C
  loc_5FE3DF: FFreeVar var_B0 = ""
  loc_5FE3E6: ILdRf var_8C
  loc_5FE3E9: FnLenStr
  loc_5FE3EA: ILdI2 Tamano
  loc_5FE3ED: CI4UI1
  loc_5FE3EE: SubI4
  loc_5FE3EF: LitI4 1
  loc_5FE3F4: AddI4
  loc_5FE3F5: CI2I4
  loc_5FE3F6: FStI2 var_8E
  loc_5FE3F9: ILdRf Tamano
  loc_5FE3FC: CVarRef
  loc_5FE401: FLdI2 var_8E
  loc_5FE404: CI4UI1
  loc_5FE405: FLdRfVar var_8C
  loc_5FE408: CVarRef
  loc_5FE40D: FLdRfVar var_B0
  loc_5FE410: ImpAdCallFPR4  = Mid(, , )
  loc_5FE415: FLdRfVar var_B0
  loc_5FE418: CStrVarTmp
  loc_5FE419: FStStr var_88
  loc_5FE41C: FFree1Var var_B0 = ""
  loc_5FE41F: ExitProcCbHresult
End Function

Private Function Proc_125_14_65E38C() '65E38C
  'Data Table: 4243C0
  loc_65E060: FLdRfVar var_A0
  loc_65E063: FLdPrThis
  loc_65E064: VCallAd Control_ID_Combo3
  loc_65E067: FStAdFunc var_9C
  loc_65E06A: FLdPr var_9C
  loc_65E06D:  = Me.Text
  loc_65E072: ILdRf var_A0
  loc_65E075: LitStr vbNullString
  loc_65E078: EqStr
  loc_65E07A: FFree1Str var_A0
  loc_65E07D: FFree1Ad var_9C
  loc_65E080: BranchF loc_65E0B2
  loc_65E083: LitVar_Missing var_120
  loc_65E086: LitVar_Missing var_100
  loc_65E089: LitVar_Missing var_E0
  loc_65E08C: LitI4 &H40
  loc_65E091: LitVarStr var_B0, "Debe seleccionar el tanque origen."
  loc_65E096: FStVarCopyObj var_C0
  loc_65E099: FLdRfVar var_C0
  loc_65E09C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E0A1: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E0AC: ExitProcCbHresult
  loc_65E0B2: FLdRfVar var_A0
  loc_65E0B5: FLdPrThis
  loc_65E0B6: VCallAd Control_ID_Combo2
  loc_65E0B9: FStAdFunc var_9C
  loc_65E0BC: FLdPr var_9C
  loc_65E0BF:  = Me.Text
  loc_65E0C4: ILdRf var_A0
  loc_65E0C7: LitStr vbNullString
  loc_65E0CA: EqStr
  loc_65E0CC: FFree1Str var_A0
  loc_65E0CF: FFree1Ad var_9C
  loc_65E0D2: BranchF loc_65E104
  loc_65E0D5: LitVar_Missing var_120
  loc_65E0D8: LitVar_Missing var_100
  loc_65E0DB: LitVar_Missing var_E0
  loc_65E0DE: LitI4 &H40
  loc_65E0E3: LitVarStr var_B0, "Debe seleccionar el tanque destino."
  loc_65E0E8: FStVarCopyObj var_C0
  loc_65E0EB: FLdRfVar var_C0
  loc_65E0EE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E0F3: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E0FE: ExitProcCbHresult
  loc_65E104: FLdRfVar var_A0
  loc_65E107: FLdPrThis
  loc_65E108: VCallAd Control_ID_Text1
  loc_65E10B: FStAdFunc var_9C
  loc_65E10E: FLdPr var_9C
  loc_65E111:  = Me.Text
  loc_65E116: ILdRf var_A0
  loc_65E119: LitStr vbNullString
  loc_65E11C: EqStr
  loc_65E11E: FFree1Str var_A0
  loc_65E121: FFree1Ad var_9C
  loc_65E124: BranchF loc_65E156
  loc_65E127: LitVar_Missing var_120
  loc_65E12A: LitVar_Missing var_100
  loc_65E12D: LitVar_Missing var_E0
  loc_65E130: LitI4 &H40
  loc_65E135: LitVarStr var_B0, "Debe ingresar una cantidad."
  loc_65E13A: FStVarCopyObj var_C0
  loc_65E13D: FLdRfVar var_C0
  loc_65E140: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E145: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E150: ExitProcCbHresult
  loc_65E156: FLdRfVar var_A0
  loc_65E159: FLdPrThis
  loc_65E15A: VCallAd Control_ID_Combo3
  loc_65E15D: FStAdFunc var_9C
  loc_65E160: FLdPr var_9C
  loc_65E163:  = Me.Text
  loc_65E168: LitVarI2 var_E0, 2
  loc_65E16D: LitI4 7
  loc_65E172: FLdZeroAd var_A0
  loc_65E175: CVarStr var_C0
  loc_65E178: FLdRfVar var_100
  loc_65E17B: ImpAdCallFPR4  = Mid(, , )
  loc_65E180: FLdRfVar var_100
  loc_65E183: CI2Var
  loc_65E184: FStI2 var_88
  loc_65E187: FFree1Ad var_9C
  loc_65E18A: FFreeVar var_C0 = "": var_E0 = ""
  loc_65E193: FLdRfVar var_A0
  loc_65E196: FLdPrThis
  loc_65E197: VCallAd Control_ID_Combo2
  loc_65E19A: FStAdFunc var_9C
  loc_65E19D: FLdPr var_9C
  loc_65E1A0:  = Me.Text
  loc_65E1A5: LitVarI2 var_E0, 2
  loc_65E1AA: LitI4 7
  loc_65E1AF: FLdZeroAd var_A0
  loc_65E1B2: CVarStr var_C0
  loc_65E1B5: FLdRfVar var_100
  loc_65E1B8: ImpAdCallFPR4  = Mid(, , )
  loc_65E1BD: FLdRfVar var_100
  loc_65E1C0: CI2Var
  loc_65E1C1: FStI2 var_8A
  loc_65E1C4: FFree1Ad var_9C
  loc_65E1C7: FFreeVar var_C0 = "": var_E0 = ""
  loc_65E1D0: FLdI2 var_8A
  loc_65E1D3: CI4UI1
  loc_65E1D4: ImpAdLdRf MemVar_74C2EC
  loc_65E1D7: Ary1LdCy
  loc_65E1D8: FLdRfVar var_A0
  loc_65E1DB: FLdPrThis
  loc_65E1DC: VCallAd Control_ID_Text1
  loc_65E1DF: FStAdFunc var_9C
  loc_65E1E2: FLdPr var_9C
  loc_65E1E5:  = Me.Text
  loc_65E1EA: ILdRf var_A0
  loc_65E1ED: CR8Str
  loc_65E1EF: LtCyR8
  loc_65E1F0: FFree1Str var_A0
  loc_65E1F3: FFree1Ad var_9C
  loc_65E1F6: BranchF loc_65E225
  loc_65E1F9: LitVar_Missing var_120
  loc_65E1FC: LitVar_Missing var_100
  loc_65E1FF: LitVar_Missing var_E0
  loc_65E202: LitI4 &H40
  loc_65E207: LitVarStr var_B0, "La cantidad ingresada excede la capacidad del Tanque Destino."
  loc_65E20C: FStVarCopyObj var_C0
  loc_65E20F: FLdRfVar var_C0
  loc_65E212: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E217: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E222: Branch loc_65E383
  loc_65E225: FLdI2 var_88
  loc_65E228: CI4UI1
  loc_65E229: ImpAdLdRf MemVar_74C2EC
  loc_65E22C: Ary1LdCy
  loc_65E22D: FLdRfVar var_A0
  loc_65E230: FLdPrThis
  loc_65E231: VCallAd Control_ID_Text1
  loc_65E234: FStAdFunc var_9C
  loc_65E237: FLdPr var_9C
  loc_65E23A:  = Me.Text
  loc_65E23F: ILdRf var_A0
  loc_65E242: CR8Str
  loc_65E244: LtCyR8
  loc_65E245: FFree1Str var_A0
  loc_65E248: FFree1Ad var_9C
  loc_65E24B: BranchF loc_65E27A
  loc_65E24E: LitVar_Missing var_120
  loc_65E251: LitVar_Missing var_100
  loc_65E254: LitVar_Missing var_E0
  loc_65E257: LitI4 &H40
  loc_65E25C: LitVarStr var_B0, "La cantidad ingresada excede la capacidad del Tanque Origen."
  loc_65E261: FStVarCopyObj var_C0
  loc_65E264: FLdRfVar var_C0
  loc_65E267: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E26C: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E277: Branch loc_65E383
  loc_65E27A: LitI4 1
  loc_65E27F: LitI4 1
  loc_65E284: LitVarStr var_D0, "00"
  loc_65E289: FStVarCopyObj var_C0
  loc_65E28C: FLdRfVar var_C0
  loc_65E28F: FLdRfVar var_88
  loc_65E292: CVarRef
  loc_65E297: FLdRfVar var_E0
  loc_65E29A: ImpAdCallFPR4  = Format(, )
  loc_65E29F: FLdRfVar var_E0
  loc_65E2A2: LitI4 1
  loc_65E2A7: LitI4 1
  loc_65E2AC: LitVarStr var_110, "00"
  loc_65E2B1: FStVarCopyObj var_100
  loc_65E2B4: FLdRfVar var_100
  loc_65E2B7: FLdRfVar var_8A
  loc_65E2BA: CVarRef
  loc_65E2BF: FLdRfVar var_120
  loc_65E2C2: ImpAdCallFPR4  = Format(, )
  loc_65E2C7: FLdRfVar var_120
  loc_65E2CA: ConcatVar var_130
  loc_65E2CE: FLdPr Me
  loc_65E2D1: MemLdStr global_60
  loc_65E2D4: CVarStr var_140
  loc_65E2D7: ConcatVar var_150
  loc_65E2DB: CStrVarTmp
  loc_65E2DC: FStStr var_98
  loc_65E2DF: FFreeVar var_C0 = "": var_100 = "": var_E0 = "": var_120 = "": var_130 = ""
  loc_65E2EE: FLdRfVar var_152
  loc_65E2F1: FLdRfVar var_98
  loc_65E2F4: FLdRfVar var_9C
  loc_65E2F7: ImpAdLdRf MemVar_74C760
  loc_65E2FA: NewIfNullPr Formx
  loc_65E2FD: from_stack_1v = Formx.global_4589716Get()
  loc_65E302: FLdPr var_9C
  loc_65E305: Call 0.Method_arg_33C ()
  loc_65E30A: FLdI2 var_152
  loc_65E30D: NotI4
  loc_65E30E: FFree1Ad var_9C
  loc_65E311: BranchF loc_65E345
  loc_65E314: FLdRfVar var_C0
  loc_65E317: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65E31C: FLdRfVar var_C0
  loc_65E31F: CBoolVarNull
  loc_65E321: FFree1Var var_C0 = ""
  loc_65E324: BranchF loc_65E342
  loc_65E327: ILdRf Me
  loc_65E32A: FStAdNoPop
  loc_65E32E: ImpAdLdRf MemVar_7520D4
  loc_65E331: NewIfNullPr Global
  loc_65E334: Global.Unload from_stack_1
  loc_65E339: FFree1Ad var_9C
  loc_65E33C: ExitProcCbHresult
  loc_65E342: Branch loc_65E2EE
  loc_65E345: LitVar_Missing var_120
  loc_65E348: LitVar_Missing var_100
  loc_65E34B: LitVar_Missing var_E0
  loc_65E34E: LitI4 &H40
  loc_65E353: LitVarStr var_B0, "El traspaso se ha concretado con exito."
  loc_65E358: FStVarCopyObj var_C0
  loc_65E35B: FLdRfVar var_C0
  loc_65E35E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E363: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_65E36E: ILdRf Me
  loc_65E371: FStAdNoPop
  loc_65E375: ImpAdLdRf MemVar_7520D4
  loc_65E378: NewIfNullPr Global
  loc_65E37B: Global.Unload from_stack_1
  loc_65E380: FFree1Ad var_9C
  loc_65E383: ExitProcCbHresult
  loc_65E389: CI2Cy
  loc_65E38A: FStStrNoPop Proc_125_14_65E38C802
End Function
