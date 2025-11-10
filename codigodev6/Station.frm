VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form Station
  Caption = "Configuración de Datos de la Estación"
  BackColor = &H8000000A&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 2385
  ClientTop = 1260
  ClientWidth = 7635
  ClientHeight = 3510
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7395
    Height = 3375
    TabIndex = 5
    Begin VB.TextBox RazonSocial
      Left = 2700
      Top = 1140
      Width = 3855
      Height = 375
      Text = "123456789012345678901234567890"
      TabIndex = 1
      MaxLength = 30
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
    Begin VB.TextBox DatosEstacion
      Left = 2700
      Top = 1860
      Width = 4455
      Height = 405
      Text = "1234567890123456789012345678901234567890"
      TabIndex = 2
      MaxLength = 40
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
    Begin MSMask.MaskEdBox NroAgencia
      Left = 2700
      Top = 420
      Width = 1215
      Height = 495
      TabIndex = 0
      OleObjectBlob = "Station.frx":0000
    End
    Begin Threed.SSCommand SSCommand2
      Left = 4920
      Top = 2580
      Width = 2235
      Height = 615
      TabIndex = 4
      OleObjectBlob = "Station.frx":0096
    End
    Begin Threed.SSCommand SSCommand1
      Left = 2520
      Top = 2580
      Width = 2235
      Height = 615
      TabIndex = 3
      OleObjectBlob = "Station.frx":00FA
    End
    Begin VB.Label Label1
      Caption = "Nro de Agencia"
      Index = 0
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 300
      Top = 420
      Width = 2295
      Height = 480
      TabIndex = 8
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Razón Social"
      Index = 1
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 300
      Top = 1140
      Width = 2295
      Height = 480
      TabIndex = 7
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Datos Estación"
      Index = 2
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 300
      Top = 1860
      Width = 2295
      Height = 480
      TabIndex = 6
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "Station"


Private Sub SSCommand2_UnknownEvent_8 '626880
  'Data Table: 4103B4
  loc_626714: FLdPrThis
  loc_626715: VCallAd Control_ID_NroAgencia
  loc_626718: FStAdFunc var_8C
  loc_62671B: FLdPr var_8C
  loc_62671E: LateIdLdVar var_9C DispID_22 0
  loc_626725: PopAd
  loc_626727: LitI4 1
  loc_62672C: LitI4 1
  loc_626731: LitVarStr var_BC, "000000"
  loc_626736: FStVarCopyObj var_CC
  loc_626739: FLdRfVar var_CC
  loc_62673C: FLdRfVar var_9C
  loc_62673F: CStrVarTmp
  loc_626740: CVarStr var_AC
  loc_626743: FLdRfVar var_DC
  loc_626746: ImpAdCallFPR4  = Format(, )
  loc_62674B: FLdRfVar var_DC
  loc_62674E: CStrVarTmp
  loc_62674F: FStStr var_88
  loc_626752: FFree1Ad var_8C
  loc_626755: FFreeVar var_9C = "": var_AC = "": var_CC = ""
  loc_626760: FLdRfVar var_E0
  loc_626763: FLdPrThis
  loc_626764: VCallAd Control_ID_RazonSocial
  loc_626767: FStAdFunc var_8C
  loc_62676A: FLdPr var_8C
  loc_62676D:  = Me.Text
  loc_626772: LitVarStr var_BC, "@"
  loc_626777: FStVarCopyObj var_9C
  loc_62677A: FLdRfVar var_9C
  loc_62677D: LitI4 &H1E
  loc_626782: FLdRfVar var_AC
  loc_626785: ImpAdCallFPR4  = String(, )
  loc_62678A: ILdRf var_88
  loc_62678D: CVarStr var_F0
  loc_626790: LitI4 1
  loc_626795: LitI4 1
  loc_62679A: FLdRfVar var_AC
  loc_62679D: FLdZeroAd var_E0
  loc_6267A0: CVarStr var_CC
  loc_6267A3: FLdRfVar var_DC
  loc_6267A6: ImpAdCallFPR4  = Format(, )
  loc_6267AB: FLdRfVar var_DC
  loc_6267AE: ConcatVar var_100
  loc_6267B2: CStrVarTmp
  loc_6267B3: FStStr var_88
  loc_6267B6: FFree1Ad var_8C
  loc_6267B9: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_6267C6: FLdRfVar var_E0
  loc_6267C9: FLdPrThis
  loc_6267CA: VCallAd Control_ID_DatosEstacion
  loc_6267CD: FStAdFunc var_8C
  loc_6267D0: FLdPr var_8C
  loc_6267D3:  = Me.Text
  loc_6267D8: LitVarStr var_BC, "@"
  loc_6267DD: FStVarCopyObj var_9C
  loc_6267E0: FLdRfVar var_9C
  loc_6267E3: LitI4 &H28
  loc_6267E8: FLdRfVar var_AC
  loc_6267EB: ImpAdCallFPR4  = String(, )
  loc_6267F0: ILdRf var_88
  loc_6267F3: CVarStr var_F0
  loc_6267F6: LitI4 1
  loc_6267FB: LitI4 1
  loc_626800: FLdRfVar var_AC
  loc_626803: FLdZeroAd var_E0
  loc_626806: CVarStr var_CC
  loc_626809: FLdRfVar var_DC
  loc_62680C: ImpAdCallFPR4  = Format(, )
  loc_626811: FLdRfVar var_DC
  loc_626814: ConcatVar var_100
  loc_626818: CStrVarTmp
  loc_626819: FStStr var_88
  loc_62681C: FFree1Ad var_8C
  loc_62681F: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_62682C: FLdRfVar var_102
  loc_62682F: FLdRfVar var_88
  loc_626832: FLdRfVar var_8C
  loc_626835: ImpAdLdRf MemVar_74C760
  loc_626838: NewIfNullPr Formx
  loc_62683B: from_stack_1v = Formx.global_4589716Get()
  loc_626840: FLdPr var_8C
  loc_626843: Formx.AutoRedraw = from_stack_1b
  loc_626848: FLdI2 var_102
  loc_62684B: NotI4
  loc_62684C: FFree1Ad var_8C
  loc_62684F: BranchF loc_626869
  loc_626852: FLdRfVar var_9C
  loc_626855: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62685A: FLdRfVar var_9C
  loc_62685D: CBoolVarNull
  loc_62685F: FFree1Var var_9C = ""
  loc_626862: BranchF loc_626866
  loc_626865: ExitProcHresult
  loc_626866: Branch loc_62682C
  loc_626869: ILdRf Me
  loc_62686C: FStAdNoPop
  loc_626870: ImpAdLdRf MemVar_7520D4
  loc_626873: NewIfNullPr Global
  loc_626876: Global.Unload from_stack_1
  loc_62687B: FFree1Ad var_8C
  loc_62687E: ExitProcHresult
End Sub

Private Sub Form_Load() '65ABB8
  'Data Table: 4103B4
  loc_65A8B8: ILdRf Me
  loc_65A8BB: CastAd
  loc_65A8BE: FStAdFunc var_88
  loc_65A8C1: FLdRfVar var_88
  loc_65A8C4: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_65A8C9: FFree1Ad var_88
  loc_65A8CC: FLdRfVar var_1D8
  loc_65A8CF: LitVar_Missing var_1D4
  loc_65A8D2: LitVar_Missing var_1B4
  loc_65A8D5: LitVar_Missing var_194
  loc_65A8D8: LitVar_Missing var_174
  loc_65A8DB: LitVar_Missing var_154
  loc_65A8DE: LitVar_Missing var_134
  loc_65A8E1: LitVar_Missing var_114
  loc_65A8E4: LitVar_Missing var_F4
  loc_65A8E7: LitVar_Missing var_D4
  loc_65A8EA: LitVar_Missing var_B4
  loc_65A8ED: LitStr "Configuración de Datos de la Estación"
  loc_65A8F0: FStStrCopy var_94
  loc_65A8F3: FLdRfVar var_94
  loc_65A8F6: LitI4 1
  loc_65A8FB: PopTmpLdAdStr var_90
  loc_65A8FE: LitI2_Byte &H26
  loc_65A900: PopTmpLdAd2 var_8A
  loc_65A903: ImpAdLdRf MemVar_74C7D0
  loc_65A906: NewIfNullPr clsMsg
  loc_65A909: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65A90E: ILdRf var_1D8
  loc_65A911: FLdPr Me
  loc_65A914: Me.Caption = from_stack_1
  loc_65A919: FFreeStr var_94 = ""
  loc_65A920: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_65A937: FLdRfVar var_1D8
  loc_65A93A: LitVar_Missing var_1D4
  loc_65A93D: LitVar_Missing var_1B4
  loc_65A940: LitVar_Missing var_194
  loc_65A943: LitVar_Missing var_174
  loc_65A946: LitVar_Missing var_154
  loc_65A949: LitVar_Missing var_134
  loc_65A94C: LitVar_Missing var_114
  loc_65A94F: LitVar_Missing var_F4
  loc_65A952: LitVar_Missing var_D4
  loc_65A955: LitVar_Missing var_B4
  loc_65A958: LitStr "Nro de Agencia"
  loc_65A95B: FStStrCopy var_94
  loc_65A95E: FLdRfVar var_94
  loc_65A961: LitI4 2
  loc_65A966: PopTmpLdAdStr var_90
  loc_65A969: LitI2_Byte &H26
  loc_65A96B: PopTmpLdAd2 var_8A
  loc_65A96E: ImpAdLdRf MemVar_74C7D0
  loc_65A971: NewIfNullPr clsMsg
  loc_65A974: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65A979: ILdRf var_1D8
  loc_65A97C: FLdRfVar var_1DC
  loc_65A97F: LitI2_Byte 0
  loc_65A981: FLdPrThis
  loc_65A982: VCallAd Control_ID_Label1
  loc_65A985: FStAdFunc var_88
  loc_65A988: FLdPr var_88
  loc_65A98B: Set from_stack_2 = Me(from_stack_1)
  loc_65A990: FLdPr var_1DC
  loc_65A993: Me.Caption = from_stack_1
  loc_65A998: FFreeStr var_94 = ""
  loc_65A99F: FFreeAd var_88 = ""
  loc_65A9A6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_65A9BD: FLdRfVar var_1D8
  loc_65A9C0: LitVar_Missing var_1D4
  loc_65A9C3: LitVar_Missing var_1B4
  loc_65A9C6: LitVar_Missing var_194
  loc_65A9C9: LitVar_Missing var_174
  loc_65A9CC: LitVar_Missing var_154
  loc_65A9CF: LitVar_Missing var_134
  loc_65A9D2: LitVar_Missing var_114
  loc_65A9D5: LitVar_Missing var_F4
  loc_65A9D8: LitVar_Missing var_D4
  loc_65A9DB: LitVar_Missing var_B4
  loc_65A9DE: LitStr "Razón Social"
  loc_65A9E1: FStStrCopy var_94
  loc_65A9E4: FLdRfVar var_94
  loc_65A9E7: LitI4 3
  loc_65A9EC: PopTmpLdAdStr var_90
  loc_65A9EF: LitI2_Byte &H26
  loc_65A9F1: PopTmpLdAd2 var_8A
  loc_65A9F4: ImpAdLdRf MemVar_74C7D0
  loc_65A9F7: NewIfNullPr clsMsg
  loc_65A9FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65A9FF: ILdRf var_1D8
  loc_65AA02: FLdRfVar var_1DC
  loc_65AA05: LitI2_Byte 1
  loc_65AA07: FLdPrThis
  loc_65AA08: VCallAd Control_ID_Label1
  loc_65AA0B: FStAdFunc var_88
  loc_65AA0E: FLdPr var_88
  loc_65AA11: Set from_stack_2 = Me(from_stack_1)
  loc_65AA16: FLdPr var_1DC
  loc_65AA19: Me.Caption = from_stack_1
  loc_65AA1E: FFreeStr var_94 = ""
  loc_65AA25: FFreeAd var_88 = ""
  loc_65AA2C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_65AA43: FLdRfVar var_1D8
  loc_65AA46: LitVar_Missing var_1D4
  loc_65AA49: LitVar_Missing var_1B4
  loc_65AA4C: LitVar_Missing var_194
  loc_65AA4F: LitVar_Missing var_174
  loc_65AA52: LitVar_Missing var_154
  loc_65AA55: LitVar_Missing var_134
  loc_65AA58: LitVar_Missing var_114
  loc_65AA5B: LitVar_Missing var_F4
  loc_65AA5E: LitVar_Missing var_D4
  loc_65AA61: LitVar_Missing var_B4
  loc_65AA64: LitStr "Datos Estación"
  loc_65AA67: FStStrCopy var_94
  loc_65AA6A: FLdRfVar var_94
  loc_65AA6D: LitI4 4
  loc_65AA72: PopTmpLdAdStr var_90
  loc_65AA75: LitI2_Byte &H26
  loc_65AA77: PopTmpLdAd2 var_8A
  loc_65AA7A: ImpAdLdRf MemVar_74C7D0
  loc_65AA7D: NewIfNullPr clsMsg
  loc_65AA80: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AA85: ILdRf var_1D8
  loc_65AA88: FLdRfVar var_1DC
  loc_65AA8B: LitI2_Byte 2
  loc_65AA8D: FLdPrThis
  loc_65AA8E: VCallAd Control_ID_Label1
  loc_65AA91: FStAdFunc var_88
  loc_65AA94: FLdPr var_88
  loc_65AA97: Set from_stack_2 = Me(from_stack_1)
  loc_65AA9C: FLdPr var_1DC
  loc_65AA9F: Me.Caption = from_stack_1
  loc_65AAA4: FFreeStr var_94 = ""
  loc_65AAAB: FFreeAd var_88 = ""
  loc_65AAB2: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_65AAC9: FLdRfVar var_1D8
  loc_65AACC: LitVar_Missing var_1D4
  loc_65AACF: LitVar_Missing var_1B4
  loc_65AAD2: LitVar_Missing var_194
  loc_65AAD5: LitVar_Missing var_174
  loc_65AAD8: LitVar_Missing var_154
  loc_65AADB: LitVar_Missing var_134
  loc_65AADE: LitVar_Missing var_114
  loc_65AAE1: LitVar_Missing var_F4
  loc_65AAE4: LitVar_Missing var_D4
  loc_65AAE7: LitVar_Missing var_B4
  loc_65AAEA: LitStr "&Cancelar"
  loc_65AAED: FStStrCopy var_94
  loc_65AAF0: FLdRfVar var_94
  loc_65AAF3: LitI4 5
  loc_65AAF8: PopTmpLdAdStr var_90
  loc_65AAFB: LitI2_Byte &H26
  loc_65AAFD: PopTmpLdAd2 var_8A
  loc_65AB00: ImpAdLdRf MemVar_74C7D0
  loc_65AB03: NewIfNullPr clsMsg
  loc_65AB06: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AB0B: FLdZeroAd var_1D8
  loc_65AB0E: CVarStr var_1EC
  loc_65AB11: PopAdLdVar
  loc_65AB12: FLdPrThis
  loc_65AB13: VCallAd Control_ID_SSCommand1
  loc_65AB16: FStAdFunc var_88
  loc_65AB19: FLdPr var_88
  loc_65AB1C: LateIdSt
  loc_65AB21: FFree1Str var_94
  loc_65AB24: FFree1Ad var_88
  loc_65AB27: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_65AB40: FLdRfVar var_1D8
  loc_65AB43: LitVar_Missing var_1D4
  loc_65AB46: LitVar_Missing var_1B4
  loc_65AB49: LitVar_Missing var_194
  loc_65AB4C: LitVar_Missing var_174
  loc_65AB4F: LitVar_Missing var_154
  loc_65AB52: LitVar_Missing var_134
  loc_65AB55: LitVar_Missing var_114
  loc_65AB58: LitVar_Missing var_F4
  loc_65AB5B: LitVar_Missing var_D4
  loc_65AB5E: LitVar_Missing var_B4
  loc_65AB61: LitStr "&Aceptar"
  loc_65AB64: FStStrCopy var_94
  loc_65AB67: FLdRfVar var_94
  loc_65AB6A: LitI4 6
  loc_65AB6F: PopTmpLdAdStr var_90
  loc_65AB72: LitI2_Byte &H26
  loc_65AB74: PopTmpLdAd2 var_8A
  loc_65AB77: ImpAdLdRf MemVar_74C7D0
  loc_65AB7A: NewIfNullPr clsMsg
  loc_65AB7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65AB82: FLdZeroAd var_1D8
  loc_65AB85: CVarStr var_1EC
  loc_65AB88: PopAdLdVar
  loc_65AB89: FLdPrThis
  loc_65AB8A: VCallAd Control_ID_SSCommand2
  loc_65AB8D: FStAdFunc var_88
  loc_65AB90: FLdPr var_88
  loc_65AB93: LateIdSt
  loc_65AB98: FFree1Str var_94
  loc_65AB9B: FFree1Ad var_88
  loc_65AB9E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_65ABB7: ExitProcHresult
End Sub

Private Sub Form_Activate() '617574
  'Data Table: 4103B4
  loc_617450: FLdRfVar var_8E
  loc_617453: FLdRfVar var_88
  loc_617456: FLdRfVar var_8C
  loc_617459: ImpAdLdRf MemVar_74C760
  loc_61745C: NewIfNullPr Formx
  loc_61745F: from_stack_1v = Formx.global_4589716Get()
  loc_617464: FLdPr var_8C
  loc_617467:  = Formx.Picture
  loc_61746C: FLdI2 var_8E
  loc_61746F: NotI4
  loc_617470: FFree1Ad var_8C
  loc_617473: BranchF loc_6174A2
  loc_617476: FLdRfVar var_A0
  loc_617479: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_61747E: FLdRfVar var_A0
  loc_617481: CBoolVarNull
  loc_617483: FFree1Var var_A0 = ""
  loc_617486: BranchF loc_61749F
  loc_617489: ILdRf Me
  loc_61748C: FStAdNoPop
  loc_617490: ImpAdLdRf MemVar_7520D4
  loc_617493: NewIfNullPr Global
  loc_617496: Global.Unload from_stack_1
  loc_61749B: FFree1Ad var_8C
  loc_61749E: ExitProcHresult
  loc_61749F: Branch loc_617450
  loc_6174A2: LitVarI2 var_A0, 6
  loc_6174A7: LitI4 1
  loc_6174AC: FLdRfVar var_88
  loc_6174AF: CVarRef
  loc_6174B4: FLdRfVar var_D0
  loc_6174B7: ImpAdCallFPR4  = Mid(, , )
  loc_6174BC: FLdRfVar var_D0
  loc_6174BF: CStrVarTmp
  loc_6174C0: CVarStr var_E0
  loc_6174C3: PopAdLdVar
  loc_6174C4: FLdPrThis
  loc_6174C5: VCallAd Control_ID_NroAgencia
  loc_6174C8: FStAdFunc var_8C
  loc_6174CB: FLdPr var_8C
  loc_6174CE: LateIdSt
  loc_6174D3: FFree1Ad var_8C
  loc_6174D6: FFreeVar var_A0 = "": var_D0 = ""
  loc_6174DF: LitVarI2 var_A0, 30
  loc_6174E4: LitI4 7
  loc_6174E9: FLdRfVar var_88
  loc_6174EC: CVarRef
  loc_6174F1: FLdRfVar var_D0
  loc_6174F4: ImpAdCallFPR4  = Mid(, , )
  loc_6174F9: FLdRfVar var_D0
  loc_6174FC: FLdRfVar var_E0
  loc_6174FF: ImpAdCallFPR4  = Trim()
  loc_617504: FLdRfVar var_E0
  loc_617507: CStrVarVal var_E4
  loc_61750B: FLdPrThis
  loc_61750C: VCallAd Control_ID_RazonSocial
  loc_61750F: FStAdFunc var_8C
  loc_617512: FLdPr var_8C
  loc_617515: Me.Text = from_stack_1
  loc_61751A: FFree1Str var_E4
  loc_61751D: FFree1Ad var_8C
  loc_617520: FFreeVar var_A0 = "": var_D0 = ""
  loc_617529: LitVarI2 var_A0, 40
  loc_61752E: LitI4 &H25
  loc_617533: FLdRfVar var_88
  loc_617536: CVarRef
  loc_61753B: FLdRfVar var_D0
  loc_61753E: ImpAdCallFPR4  = Mid(, , )
  loc_617543: FLdRfVar var_D0
  loc_617546: FLdRfVar var_E0
  loc_617549: ImpAdCallFPR4  = Trim()
  loc_61754E: FLdRfVar var_E0
  loc_617551: CStrVarVal var_E4
  loc_617555: FLdPrThis
  loc_617556: VCallAd Control_ID_DatosEstacion
  loc_617559: FStAdFunc var_8C
  loc_61755C: FLdPr var_8C
  loc_61755F: Me.Text = from_stack_1
  loc_617564: FFree1Str var_E4
  loc_617567: FFree1Ad var_8C
  loc_61756A: FFreeVar var_A0 = "": var_D0 = ""
  loc_617573: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '5D2FC0
  'Data Table: 4103B4
  loc_5D2FA8: ILdRf Me
  loc_5D2FAB: FStAdNoPop
  loc_5D2FAF: ImpAdLdRf MemVar_7520D4
  loc_5D2FB2: NewIfNullPr Global
  loc_5D2FB5: Global.Unload from_stack_1
  loc_5D2FBA: FFree1Ad var_88
  loc_5D2FBD: ExitProcHresult
End Sub
