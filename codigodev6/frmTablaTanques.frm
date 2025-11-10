VERSION 5.00
Begin VB.Form frmTablaTanques
  Caption = "Tabla de Tanques"
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
  ClientWidth = 5670
  ClientHeight = 2265
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 13.5
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton SSCommand3
    Caption = "=>"
    Left = 2228
    Top = 1080
    Width = 615
    Height = 500
    TabIndex = 2
  End
  Begin VB.CommandButton SSCommand4
    Caption = "<="
    Left = 2828
    Top = 1080
    Width = 615
    Height = 500
    TabIndex = 3
  End
  Begin VB.CommandButton SSCommand5
    Caption = "&Salir"
    Left = 2228
    Top = 1680
    Width = 1230
    Height = 500
    TabIndex = 5
  End
  Begin VB.TextBox Text3
    Left = 188
    Top = 1080
    Width = 2055
    Height = 500
    TabIndex = 1
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
  Begin VB.TextBox Text4
    Left = 3428
    Top = 1080
    Width = 2055
    Height = 500
    TabIndex = 4
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
  Begin VB.ComboBox Combo2
    Style = 2
    Left = 1688
    Top = 120
    Width = 3855
    Height = 420
    TabIndex = 0
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
  Begin VB.Label Label3
    Caption = "Tanque"
    Left = 128
    Top = 105
    Width = 1455
    Height = 450
    TabIndex = 8
    Alignment = 2 'Center
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
  Begin VB.Label Label2
    Caption = "Litros"
    Left = 3480
    Top = 720
    Width = 2055
    Height = 255
    TabIndex = 7
    Alignment = 2 'Center
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
  Begin VB.Label Label1
    Caption = "Milimetros"
    Left = 255
    Top = 720
    Width = 2055
    Height = 255
    TabIndex = 6
    Alignment = 2 'Center
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

Attribute VB_Name = "frmTablaTanques"


Private Sub Text4_KeyPress(KeyAscii As Integer) '615140
  'Data Table: 419D88
  loc_615020: ILdI2 KeyAscii
  loc_615023: LitI2_Byte 8
  loc_615025: EqI2
  loc_615026: BranchF loc_61502D
  loc_615029: ExitProcHresult
  loc_61502A: Branch loc_61513F
  loc_61502D: LitI4 0
  loc_615032: LitI4 1
  loc_615037: FLdRfVar var_8C
  loc_61503A: FLdPrThis
  loc_61503B: VCallAd Control_ID_Text4
  loc_61503E: FStAdFunc var_88
  loc_615041: FLdPr var_88
  loc_615044:  = Me.Text
  loc_615049: ILdRf var_8C
  loc_61504C: LitStr "."
  loc_61504F: LitI4 0
  loc_615054: FnInStr4
  loc_615056: LtI4
  loc_615057: FFree1Str var_8C
  loc_61505A: FFree1Ad var_88
  loc_61505D: BranchF loc_6150DE
  loc_615060: ILdI2 KeyAscii
  loc_615063: LitStr "0"
  loc_615066: ImpAdCallI2 Asc()
  loc_61506B: LtI2
  loc_61506C: ILdI2 KeyAscii
  loc_61506F: LitStr "9"
  loc_615072: ImpAdCallI2 Asc()
  loc_615077: GtI2
  loc_615078: OrI4
  loc_615079: BranchF loc_615084
  loc_61507C: LitI2_Byte 0
  loc_61507E: IStI2 KeyAscii
  loc_615081: Branch loc_6150DB
  loc_615084: LitI4 1
  loc_615089: FLdRfVar var_8C
  loc_61508C: FLdPrThis
  loc_61508D: VCallAd Control_ID_Text4
  loc_615090: FStAdFunc var_88
  loc_615093: FLdPr var_88
  loc_615096:  = Me.Text
  loc_61509B: ILdRf var_8C
  loc_61509E: LitStr "."
  loc_6150A1: LitI4 0
  loc_6150A6: FnInStr4
  loc_6150A8: FLdRfVar var_94
  loc_6150AB: FLdPrThis
  loc_6150AC: VCallAd Control_ID_Text4
  loc_6150AF: FStAdFunc var_90
  loc_6150B2: FLdPr var_90
  loc_6150B5:  = Me.Text
  loc_6150BA: ILdRf var_94
  loc_6150BD: FnLenStr
  loc_6150BE: LitI4 2
  loc_6150C3: SubI4
  loc_6150C4: LeI4
  loc_6150C5: FFreeStr var_8C = ""
  loc_6150CC: FFreeAd var_88 = ""
  loc_6150D3: BranchF loc_6150DB
  loc_6150D6: LitI2_Byte 0
  loc_6150D8: IStI2 KeyAscii
  loc_6150DB: Branch loc_61513F
  loc_6150DE: ILdI2 KeyAscii
  loc_6150E1: LitStr "."
  loc_6150E4: ImpAdCallI2 Asc()
  loc_6150E9: EqI2
  loc_6150EA: BranchF loc_6150F1
  loc_6150ED: ExitProcHresult
  loc_6150EE: Branch loc_61513F
  loc_6150F1: ILdI2 KeyAscii
  loc_6150F4: LitStr "0"
  loc_6150F7: ImpAdCallI2 Asc()
  loc_6150FC: LtI2
  loc_6150FD: ILdI2 KeyAscii
  loc_615100: LitStr "9"
  loc_615103: ImpAdCallI2 Asc()
  loc_615108: GtI2
  loc_615109: OrI4
  loc_61510A: BranchF loc_615115
  loc_61510D: LitI2_Byte 0
  loc_61510F: IStI2 KeyAscii
  loc_615112: Branch loc_61513F
  loc_615115: LitI4 6
  loc_61511A: FLdRfVar var_8C
  loc_61511D: FLdPrThis
  loc_61511E: VCallAd Control_ID_Text4
  loc_615121: FStAdFunc var_88
  loc_615124: FLdPr var_88
  loc_615127:  = Me.Text
  loc_61512C: ILdRf var_8C
  loc_61512F: FnLenStr
  loc_615130: LeI4
  loc_615131: FFree1Str var_8C
  loc_615134: FFree1Ad var_88
  loc_615137: BranchF loc_61513F
  loc_61513A: LitI2_Byte 0
  loc_61513C: IStI2 KeyAscii
  loc_61513F: ExitProcHresult
End Sub

Private Sub Form_Load() '624274
  'Data Table: 419D88
  loc_624130: ILdRf Me
  loc_624133: CastAd
  loc_624136: FStAdFunc var_8C
  loc_624139: FLdRfVar var_8C
  loc_62413C: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_624141: FFree1Ad var_8C
  loc_624144: FLdPrThis
  loc_624145: VCallAd Control_ID_Combo2
  loc_624148: FStAdFunc var_8C
  loc_62414B: FLdPr var_8C
  loc_62414E: Me.Clear
  loc_624153: FFree1Ad var_8C
  loc_624156: ImpAdLdI4 MemVar_74BEBC
  loc_624159: FLdPrThis
  loc_62415A: VCallAd Control_ID_Label2
  loc_62415D: FStAdFunc var_8C
  loc_624160: FLdPr var_8C
  loc_624163: Me.Caption = from_stack_1
  loc_624168: FFree1Ad var_8C
  loc_62416B: ImpAdLdI4 MemVar_74BEC4
  loc_62416E: FLdPrThis
  loc_62416F: VCallAd Control_ID_Label1
  loc_624172: FStAdFunc var_8C
  loc_624175: FLdPr var_8C
  loc_624178: Me.Caption = from_stack_1
  loc_62417D: FFree1Ad var_8C
  loc_624180: FLdRfVar var_1DC
  loc_624183: LitVar_Missing var_1D8
  loc_624186: LitVar_Missing var_1B8
  loc_624189: LitVar_Missing var_198
  loc_62418C: LitVar_Missing var_178
  loc_62418F: LitVar_Missing var_158
  loc_624192: LitVar_Missing var_138
  loc_624195: LitVar_Missing var_118
  loc_624198: LitVar_Missing var_F8
  loc_62419B: LitVar_Missing var_D8
  loc_62419E: LitVar_Missing var_B8
  loc_6241A1: LitStr "&Salir"
  loc_6241A4: FStStrCopy var_98
  loc_6241A7: FLdRfVar var_98
  loc_6241AA: LitI4 &H2D
  loc_6241AF: PopTmpLdAdStr var_94
  loc_6241B2: LitI2_Byte &H1B
  loc_6241B4: PopTmpLdAd2 var_8E
  loc_6241B7: ImpAdLdRf MemVar_74C7D0
  loc_6241BA: NewIfNullPr clsMsg
  loc_6241BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6241C2: ILdRf var_1DC
  loc_6241C5: FLdPrThis
  loc_6241C6: VCallAd Control_ID_SSCommand5
  loc_6241C9: FStAdFunc var_8C
  loc_6241CC: FLdPr var_8C
  loc_6241CF: Me.Caption = from_stack_1
  loc_6241D4: FFreeStr var_98 = ""
  loc_6241DB: FFree1Ad var_8C
  loc_6241DE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6241F5: LitI2_Byte 1
  loc_6241F7: FLdRfVar var_86
  loc_6241FA: ImpAdLdUI1
  loc_6241FE: CI2UI1
  loc_624200: ForI2 var_1E0
  loc_624206: LitVar_Missing var_A8
  loc_624209: PopAdLdVar
  loc_62420A: FLdI2 var_86
  loc_62420D: CStrUI1
  loc_62420F: FStStrNoPop var_98
  loc_624212: LitStr " "
  loc_624215: ConcatStr
  loc_624216: FStStrNoPop var_1E4
  loc_624219: FLdRfVar var_1DC
  loc_62421C: FLdI2 var_86
  loc_62421F: CI4UI1
  loc_624220: ImpAdLdRf MemVar_74C1D8
  loc_624223: Ary1LdUI1
  loc_624225: CI2UI1
  loc_624227: ImpAdLdRf MemVar_74A220
  loc_62422A: NewIfNullPr clsProducts
  loc_624232: ILdRf var_1DC
  loc_624235: ConcatStr
  loc_624236: FStStrNoPop var_1E8
  loc_624239: FLdPrThis
  loc_62423A: VCallAd Control_ID_Combo2
  loc_62423D: FStAdFunc var_8C
  loc_624240: FLdPr var_8C
  loc_624243: Me.AddItem from_stack_1, from_stack_2
  loc_624248: FFreeStr var_98 = "": var_1E4 = "": var_1DC = ""
  loc_624253: FFree1Ad var_8C
  loc_624256: FLdRfVar var_86
  loc_624259: NextI2 var_1E0, loc_624206
  loc_62425E: LitI2_Byte 0
  loc_624260: FLdPrThis
  loc_624261: VCallAd Control_ID_Combo2
  loc_624264: FStAdFunc var_8C
  loc_624267: FLdPr var_8C
  loc_62426A: Me.ListIndex = from_stack_1
  loc_62426F: FFree1Ad var_8C
  loc_624272: ExitProcHresult
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer) '5E19D8
  'Data Table: 419D88
  loc_5E197C: ILdI2 KeyAscii
  loc_5E197F: LitI2_Byte 8
  loc_5E1981: EqI2
  loc_5E1982: BranchF loc_5E1989
  loc_5E1985: ExitProcHresult
  loc_5E1986: Branch loc_5E19D7
  loc_5E1989: ILdI2 KeyAscii
  loc_5E198C: LitStr "0"
  loc_5E198F: ImpAdCallI2 Asc()
  loc_5E1994: LtI2
  loc_5E1995: ILdI2 KeyAscii
  loc_5E1998: LitStr "9"
  loc_5E199B: ImpAdCallI2 Asc()
  loc_5E19A0: GtI2
  loc_5E19A1: OrI4
  loc_5E19A2: BranchF loc_5E19AD
  loc_5E19A5: LitI2_Byte 0
  loc_5E19A7: IStI2 KeyAscii
  loc_5E19AA: Branch loc_5E19D7
  loc_5E19AD: LitI4 8
  loc_5E19B2: FLdRfVar var_8C
  loc_5E19B5: FLdPrThis
  loc_5E19B6: VCallAd Control_ID_Text3
  loc_5E19B9: FStAdFunc var_88
  loc_5E19BC: FLdPr var_88
  loc_5E19BF:  = Me.Text
  loc_5E19C4: ILdRf var_8C
  loc_5E19C7: FnLenStr
  loc_5E19C8: LeI4
  loc_5E19C9: FFree1Str var_8C
  loc_5E19CC: FFree1Ad var_88
  loc_5E19CF: BranchF loc_5E19D7
  loc_5E19D2: LitI2_Byte 0
  loc_5E19D4: IStI2 KeyAscii
  loc_5E19D7: ExitProcHresult
End Sub

Private Sub SSCommand3_Click() '633558
  'Data Table: 419D88
  loc_63337C: FLdRfVar var_98
  loc_63337F: FLdPrThis
  loc_633380: VCallAd Control_ID_Text3
  loc_633383: FStAdFunc var_94
  loc_633386: FLdPr var_94
  loc_633389:  = Me.Text
  loc_63338E: ILdRf var_98
  loc_633391: LitStr vbNullString
  loc_633394: EqStr
  loc_633396: FFree1Str var_98
  loc_633399: FFree1Ad var_94
  loc_63339C: BranchF loc_6333D5
  loc_63339F: LitVar_Missing var_108
  loc_6333A2: LitVar_Missing var_E8
  loc_6333A5: LitVarStr var_B8, "Tabla de Tanques"
  loc_6333AA: FStVarCopyObj var_C8
  loc_6333AD: FLdRfVar var_C8
  loc_6333B0: LitI4 &H40
  loc_6333B5: LitStr "Debe introducir un valor en el campo"
  loc_6333B8: ImpAdLdI4 MemVar_74BEC4
  loc_6333BB: ConcatStr
  loc_6333BC: CVarStr var_A8
  loc_6333BF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6333C4: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_6333CF: from_stack_1v = Proc_130_6_5D7240()
  loc_6333D4: ExitProcHresult
  loc_6333D5: FLdRfVar var_10A
  loc_6333D8: FLdPrThis
  loc_6333D9: VCallAd Control_ID_Combo2
  loc_6333DC: FStAdFunc var_94
  loc_6333DF: FLdPr var_94
  loc_6333E2:  = Me.ListIndex
  loc_6333E7: FLdI2 var_10A
  loc_6333EA: LitI2_Byte 1
  loc_6333EC: AddI2
  loc_6333ED: FStI2 var_86
  loc_6333F0: FFree1Ad var_94
  loc_6333F3: FLdRfVar var_98
  loc_6333F6: FLdPrThis
  loc_6333F7: VCallAd Control_ID_Text3
  loc_6333FA: FStAdFunc var_94
  loc_6333FD: FLdPr var_94
  loc_633400:  = Me.Text
  loc_633405: ILdRf var_98
  loc_633408: CI4Str
  loc_633409: FStR4 var_8C
  loc_63340C: FFree1Str var_98
  loc_63340F: FFree1Ad var_94
  loc_633412: FLdRfVar var_10A
  loc_633415: FLdRfVar var_90
  loc_633418: ILdRf var_8C
  loc_63341B: FLdI2 var_86
  loc_63341E: LitI2_Byte 0
  loc_633420: FLdRfVar var_94
  loc_633423: ImpAdLdRf MemVar_74C760
  loc_633426: NewIfNullPr Formx
  loc_633429: from_stack_1v = Formx.global_4589716Get()
  loc_63342E: FLdPr var_94
  loc_633431: Formx.ScaleX from_stack_1s, from_stack_2, from_stack_3
  loc_633436: FLdI2 var_10A
  loc_633439: NotI4
  loc_63343A: FFree1Ad var_94
  loc_63343D: BranchF loc_63346C
  loc_633440: FLdRfVar var_A8
  loc_633443: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_633448: FLdRfVar var_A8
  loc_63344B: CBoolVarNull
  loc_63344D: FFree1Var var_A8 = ""
  loc_633450: BranchF loc_633469
  loc_633453: ILdRf Me
  loc_633456: FStAdNoPop
  loc_63345A: ImpAdLdRf MemVar_7520D4
  loc_63345D: NewIfNullPr Global
  loc_633460: Global.Unload from_stack_1
  loc_633465: FFree1Ad var_94
  loc_633468: ExitProcHresult
  loc_633469: Branch loc_633412
  loc_63346C: ILdRf var_90
  loc_63346F: LitI4 -1
  loc_633474: EqI4
  loc_633475: BranchF loc_6334B2
  loc_633478: LitVar_Missing var_108
  loc_63347B: LitVar_Missing var_E8
  loc_63347E: LitVarStr var_D8, "Tabla de Tanques"
  loc_633483: FStVarCopyObj var_C8
  loc_633486: FLdRfVar var_C8
  loc_633489: LitI4 &H40
  loc_63348E: LitVarStr var_B8, "No se pudo obtener de la Tabla de Tanques la conversion pedida"
  loc_633493: FStVarCopyObj var_A8
  loc_633496: FLdRfVar var_A8
  loc_633499: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63349E: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_6334A9: from_stack_1v = Proc_130_6_5D7240()
  loc_6334AE: ExitProcHresult
  loc_6334AF: Branch loc_633508
  loc_6334B2: LitI4 0
  loc_6334B7: ILdRf var_90
  loc_6334BA: EqI4
  loc_6334BB: LitI4 0
  loc_6334C0: ILdRf var_8C
  loc_6334C3: LtI4
  loc_6334C4: AndI4
  loc_6334C5: BranchF loc_633508
  loc_6334C8: LitVar_Missing var_108
  loc_6334CB: LitVar_Missing var_E8
  loc_6334CE: LitVarStr var_B8, "Tabla de Tanques"
  loc_6334D3: FStVarCopyObj var_C8
  loc_6334D6: FLdRfVar var_C8
  loc_6334D9: LitI4 &H40
  loc_6334DE: LitStr "El valor en el campo"
  loc_6334E1: ImpAdLdI4 MemVar_74BEC4
  loc_6334E4: ConcatStr
  loc_6334E5: FStStrNoPop var_98
  loc_6334E8: LitStr "no esta definido en la Tabla de Tanques"
  loc_6334EB: ConcatStr
  loc_6334EC: CVarStr var_A8
  loc_6334EF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6334F4: FFree1Str var_98
  loc_6334F7: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_633502: from_stack_1v = Proc_130_6_5D7240()
  loc_633507: ExitProcHresult
  loc_633508: LitI4 1
  loc_63350D: LitI4 1
  loc_633512: LitVarStr var_D8, "0.00"
  loc_633517: FStVarCopyObj var_C8
  loc_63351A: FLdRfVar var_C8
  loc_63351D: ILdRf var_90
  loc_633520: CR8I4
  loc_633521: LitI2_Byte &H64
  loc_633523: CR8I2
  loc_633524: DivR8
  loc_633525: CVarR8
  loc_633529: FLdRfVar var_E8
  loc_63352C: ImpAdCallFPR4  = Format(, )
  loc_633531: FLdRfVar var_E8
  loc_633534: CStrVarVal var_98
  loc_633538: FLdPrThis
  loc_633539: VCallAd Control_ID_Text4
  loc_63353C: FStAdFunc var_94
  loc_63353F: FLdPr var_94
  loc_633542: Me.Text = from_stack_1
  loc_633547: FFree1Str var_98
  loc_63354A: FFree1Ad var_94
  loc_63354D: FFreeVar var_A8 = "": var_C8 = ""
  loc_633556: ExitProcHresult
End Sub

Private Sub SSCommand4_Click() '662444
  'Data Table: 419D88
  loc_6620EC: FLdRfVar var_A0
  loc_6620EF: FLdPrThis
  loc_6620F0: VCallAd Control_ID_Text4
  loc_6620F3: FStAdFunc var_9C
  loc_6620F6: FLdPr var_9C
  loc_6620F9:  = Me.Text
  loc_6620FE: ILdRf var_A0
  loc_662101: LitStr vbNullString
  loc_662104: EqStr
  loc_662106: FFree1Str var_A0
  loc_662109: FFree1Ad var_9C
  loc_66210C: BranchF loc_662145
  loc_66210F: LitVar_Missing var_110
  loc_662112: LitVar_Missing var_F0
  loc_662115: LitVarStr var_C0, "Tabla de Tanques"
  loc_66211A: FStVarCopyObj var_D0
  loc_66211D: FLdRfVar var_D0
  loc_662120: LitI4 &H40
  loc_662125: LitStr "Debe introducir un valor en el campo "
  loc_662128: ImpAdLdI4 MemVar_74BEBC
  loc_66212B: ConcatStr
  loc_66212C: CVarStr var_B0
  loc_66212F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_662134: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_66213F: from_stack_1v = Proc_130_6_5D7240()
  loc_662144: ExitProcHresult
  loc_662145: LitI4 0
  loc_66214A: LitI4 1
  loc_66214F: FLdRfVar var_A0
  loc_662152: FLdPrThis
  loc_662153: VCallAd Control_ID_Text4
  loc_662156: FStAdFunc var_9C
  loc_662159: FLdPr var_9C
  loc_66215C:  = Me.Text
  loc_662161: ILdRf var_A0
  loc_662164: LitStr "."
  loc_662167: LitI4 0
  loc_66216C: FnInStr4
  loc_66216E: LtI4
  loc_66216F: FFree1Str var_A0
  loc_662172: FFree1Ad var_9C
  loc_662175: BranchF loc_66224F
  loc_662178: FLdRfVar var_A0
  loc_66217B: FLdPrThis
  loc_66217C: VCallAd Control_ID_Text4
  loc_66217F: FStAdFunc var_9C
  loc_662182: FLdPr var_9C
  loc_662185:  = Me.Text
  loc_66218A: LitI4 1
  loc_66218F: FLdRfVar var_118
  loc_662192: FLdPrThis
  loc_662193: VCallAd Control_ID_Text4
  loc_662196: FStAdFunc var_114
  loc_662199: FLdPr var_114
  loc_66219C:  = Me.Text
  loc_6621A1: ILdRf var_118
  loc_6621A4: LitStr "."
  loc_6621A7: LitI4 0
  loc_6621AC: FnInStr4
  loc_6621AE: LitI4 1
  loc_6621B3: SubI4
  loc_6621B4: CVarI4
  loc_6621B8: LitI4 1
  loc_6621BD: FLdZeroAd var_A0
  loc_6621C0: CVarStr var_B0
  loc_6621C3: FLdRfVar var_F0
  loc_6621C6: ImpAdCallFPR4  = Mid(, , )
  loc_6621CB: FLdRfVar var_F0
  loc_6621CE: CStrVarTmp
  loc_6621CF: FStStr var_94
  loc_6621D2: FFree1Str var_118
  loc_6621D5: FFreeAd var_9C = ""
  loc_6621DC: FFreeVar var_B0 = "": var_D0 = ""
  loc_6621E5: FLdRfVar var_A0
  loc_6621E8: FLdPrThis
  loc_6621E9: VCallAd Control_ID_Text4
  loc_6621EC: FStAdFunc var_9C
  loc_6621EF: FLdPr var_9C
  loc_6621F2:  = Me.Text
  loc_6621F7: FLdRfVar var_118
  loc_6621FA: FLdPrThis
  loc_6621FB: VCallAd Control_ID_Text4
  loc_6621FE: FStAdFunc var_114
  loc_662201: FLdPr var_114
  loc_662204:  = Me.Text
  loc_662209: LitVar_Missing var_D0
  loc_66220C: LitI4 1
  loc_662211: ILdRf var_118
  loc_662214: LitStr "."
  loc_662217: LitI4 0
  loc_66221C: FnInStr4
  loc_66221E: LitI4 1
  loc_662223: AddI4
  loc_662224: FLdZeroAd var_A0
  loc_662227: CVarStr var_B0
  loc_66222A: FLdRfVar var_F0
  loc_66222D: ImpAdCallFPR4  = Mid(, , )
  loc_662232: FLdRfVar var_F0
  loc_662235: CStrVarTmp
  loc_662236: FStStr var_98
  loc_662239: FFree1Str var_118
  loc_66223C: FFreeAd var_9C = ""
  loc_662243: FFreeVar var_B0 = "": var_D0 = ""
  loc_66224C: Branch loc_662270
  loc_66224F: FLdRfVar var_A0
  loc_662252: FLdPrThis
  loc_662253: VCallAd Control_ID_Text4
  loc_662256: FStAdFunc var_9C
  loc_662259: FLdPr var_9C
  loc_66225C:  = Me.Text
  loc_662261: FLdZeroAd var_A0
  loc_662264: FStStr var_94
  loc_662267: FFree1Ad var_9C
  loc_66226A: LitStr "00"
  loc_66226D: FStStrCopy var_98
  loc_662270: LitVarI2 var_B0, 6
  loc_662275: LitI4 1
  loc_66227A: FLdRfVar var_94
  loc_66227D: CVarRef
  loc_662282: FLdRfVar var_D0
  loc_662285: ImpAdCallFPR4  = Mid(, , )
  loc_66228A: FLdRfVar var_D0
  loc_66228D: CStrVarTmp
  loc_66228E: FStStr var_94
  loc_662291: FFreeVar var_B0 = ""
  loc_662298: LitVarI2 var_B0, 2
  loc_66229D: LitI4 1
  loc_6622A2: FLdRfVar var_98
  loc_6622A5: CVarRef
  loc_6622AA: FLdRfVar var_D0
  loc_6622AD: ImpAdCallFPR4  = Mid(, , )
  loc_6622B2: FLdRfVar var_D0
  loc_6622B5: CStrVarTmp
  loc_6622B6: FStStr var_98
  loc_6622B9: FFreeVar var_B0 = ""
  loc_6622C0: ILdRf var_94
  loc_6622C3: LitStr "."
  loc_6622C6: ConcatStr
  loc_6622C7: FStStrNoPop var_A0
  loc_6622CA: ILdRf var_98
  loc_6622CD: ConcatStr
  loc_6622CE: FStStrNoPop var_118
  loc_6622D1: FLdPrThis
  loc_6622D2: VCallAd Control_ID_Text4
  loc_6622D5: FStAdFunc var_9C
  loc_6622D8: FLdPr var_9C
  loc_6622DB: Me.Text = from_stack_1
  loc_6622E0: FFreeStr var_A0 = ""
  loc_6622E7: FFree1Ad var_9C
  loc_6622EA: FLdRfVar var_11A
  loc_6622ED: FLdPrThis
  loc_6622EE: VCallAd Control_ID_Combo2
  loc_6622F1: FStAdFunc var_9C
  loc_6622F4: FLdPr var_9C
  loc_6622F7:  = Me.ListIndex
  loc_6622FC: FLdI2 var_11A
  loc_6622FF: LitI2_Byte 1
  loc_662301: AddI2
  loc_662302: FStI2 var_86
  loc_662305: FFree1Ad var_9C
  loc_662308: FLdRfVar var_A0
  loc_66230B: FLdPrThis
  loc_66230C: VCallAd Control_ID_Text4
  loc_66230F: FStAdFunc var_9C
  loc_662312: FLdPr var_9C
  loc_662315:  = Me.Text
  loc_66231A: ILdRf var_A0
  loc_66231D: CR8Str
  loc_66231F: LitI2_Byte &H64
  loc_662321: CR8I2
  loc_662322: MulR8
  loc_662323: CI4R8
  loc_662324: FStR4 var_90
  loc_662327: FFree1Str var_A0
  loc_66232A: FFree1Ad var_9C
  loc_66232D: FLdRfVar var_11A
  loc_662330: FLdRfVar var_8C
  loc_662333: ILdRf var_90
  loc_662336: FLdI2 var_86
  loc_662339: LitI2_Byte 1
  loc_66233B: FLdRfVar var_9C
  loc_66233E: ImpAdLdRf MemVar_74C760
  loc_662341: NewIfNullPr Formx
  loc_662344: from_stack_1v = Formx.global_4589716Get()
  loc_662349: FLdPr var_9C
  loc_66234C: Formx.ScaleX from_stack_1s, from_stack_2, from_stack_3
  loc_662351: FLdI2 var_11A
  loc_662354: NotI4
  loc_662355: FFree1Ad var_9C
  loc_662358: BranchF loc_662387
  loc_66235B: FLdRfVar var_B0
  loc_66235E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_662363: FLdRfVar var_B0
  loc_662366: CBoolVarNull
  loc_662368: FFree1Var var_B0 = ""
  loc_66236B: BranchF loc_662384
  loc_66236E: ILdRf Me
  loc_662371: FStAdNoPop
  loc_662375: ImpAdLdRf MemVar_7520D4
  loc_662378: NewIfNullPr Global
  loc_66237B: Global.Unload from_stack_1
  loc_662380: FFree1Ad var_9C
  loc_662383: ExitProcHresult
  loc_662384: Branch loc_66232D
  loc_662387: ILdRf var_8C
  loc_66238A: LitI4 -1
  loc_66238F: EqI4
  loc_662390: BranchF loc_6623CD
  loc_662393: LitVar_Missing var_110
  loc_662396: LitVar_Missing var_F0
  loc_662399: LitVarStr var_E0, "Tabla de Tanques"
  loc_66239E: FStVarCopyObj var_D0
  loc_6623A1: FLdRfVar var_D0
  loc_6623A4: LitI4 &H40
  loc_6623A9: LitVarStr var_C0, "No se pudo obtener de la Tabla de Tanques la conversion pedida"
  loc_6623AE: FStVarCopyObj var_B0
  loc_6623B1: FLdRfVar var_B0
  loc_6623B4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6623B9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6623C4: from_stack_1v = Proc_130_6_5D7240()
  loc_6623C9: ExitProcHresult
  loc_6623CA: Branch loc_662423
  loc_6623CD: ILdRf var_8C
  loc_6623D0: LitI4 0
  loc_6623D5: EqI4
  loc_6623D6: LitI4 0
  loc_6623DB: ILdRf var_90
  loc_6623DE: LtI4
  loc_6623DF: AndI4
  loc_6623E0: BranchF loc_662423
  loc_6623E3: LitVar_Missing var_110
  loc_6623E6: LitVar_Missing var_F0
  loc_6623E9: LitVarStr var_C0, "Tabla de Tanques"
  loc_6623EE: FStVarCopyObj var_D0
  loc_6623F1: FLdRfVar var_D0
  loc_6623F4: LitI4 &H40
  loc_6623F9: LitStr "El valor en el campo "
  loc_6623FC: ImpAdLdI4 MemVar_74BEBC
  loc_6623FF: ConcatStr
  loc_662400: FStStrNoPop var_A0
  loc_662403: LitStr " no esta definido en la Tabla de Tanques"
  loc_662406: ConcatStr
  loc_662407: CVarStr var_B0
  loc_66240A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66240F: FFree1Str var_A0
  loc_662412: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_66241D: from_stack_1v = Proc_130_6_5D7240()
  loc_662422: ExitProcHresult
  loc_662423: ILdRf var_8C
  loc_662426: CStrI4
  loc_662428: FStStrNoPop var_A0
  loc_66242B: FLdPrThis
  loc_66242C: VCallAd Control_ID_Text3
  loc_66242F: FStAdFunc var_9C
  loc_662432: FLdPr var_9C
  loc_662435: Me.Text = from_stack_1
  loc_66243A: FFree1Str var_A0
  loc_66243D: FFree1Ad var_9C
  loc_662440: ExitProcHresult
End Sub

Private Sub SSCommand5_Click() '5D1768
  'Data Table: 419D88
  loc_5D1750: ILdRf Me
  loc_5D1753: FStAdNoPop
  loc_5D1757: ImpAdLdRf MemVar_7520D4
  loc_5D175A: NewIfNullPr Global
  loc_5D175D: Global.Unload from_stack_1
  loc_5D1762: FFree1Ad var_88
  loc_5D1765: ExitProcHresult
  loc_5D1766: ExitProcR8
End Sub

Private Function Proc_130_6_5D7240() '5D7240
  'Data Table: 419D88
  loc_5D7214: LitStr vbNullString
  loc_5D7217: FLdPrThis
  loc_5D7218: VCallAd Control_ID_Text3
  loc_5D721B: FStAdFunc var_88
  loc_5D721E: FLdPr var_88
  loc_5D7221: Me.Text = from_stack_1
  loc_5D7226: FFree1Ad var_88
  loc_5D7229: LitStr vbNullString
  loc_5D722C: FLdPrThis
  loc_5D722D: VCallAd Control_ID_Text4
  loc_5D7230: FStAdFunc var_88
  loc_5D7233: FLdPr var_88
  loc_5D7236: Me.Text = from_stack_1
  loc_5D723B: FFree1Ad var_88
  loc_5D723E: ExitProcHresult
End Function
