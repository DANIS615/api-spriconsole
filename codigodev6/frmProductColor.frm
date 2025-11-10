VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWow64\COMDLG32.OCX"
Begin VB.Form frmProductColor
  Caption = "Color de Producto"
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
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6330
  ClientHeight = 4395
  StartUpPosition = 1 'CenterOwner
  Begin MSComDlg.CommonDialog CommonDialog
    OleObjectBlob = "frmProductColor.frx":0000
    Left = 360
    Top = 3240
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 2400
    Top = 3480
    Width = 1815
    Height = 735
    TabIndex = 1
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 4320
    Top = 3480
    Width = 1815
    Height = 735
    TabIndex = 0
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
  Begin VB.Label lbProduct
    Caption = "Label1"
    Index = 0
    Left = 360
    Top = 480
    Width = 4935
    Height = 375
    Visible = 0   'False
    TabIndex = 2
    BackStyle = 0 'Transparent
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
  Begin VB.Label lbColor
    Index = 0
    Left = 5520
    Top = 480
    Width = 495
    Height = 255
    Visible = 0   'False
    MousePointer = 10 'Up Arrow
    TabIndex = 3
  End
End

Attribute VB_Name = "frmProductColor"


Private Sub cmdAceptar_Click() '66AB00
  'Data Table: 40AC18
  loc_66A78C: FLdRfVar var_1D4
  loc_66A78F: LitVar_Missing var_1D0
  loc_66A792: LitVar_Missing var_1B0
  loc_66A795: LitVar_Missing var_190
  loc_66A798: LitVar_Missing var_170
  loc_66A79B: LitVar_Missing var_150
  loc_66A79E: LitVar_Missing var_130
  loc_66A7A1: LitVar_Missing var_110
  loc_66A7A4: LitVar_Missing var_F0
  loc_66A7A7: LitVar_Missing var_D0
  loc_66A7AA: LitVar_Missing var_B0
  loc_66A7AD: LitStr "¿Desea guardar los colores?"
  loc_66A7B0: FStStrCopy var_90
  loc_66A7B3: FLdRfVar var_90
  loc_66A7B6: LitI4 4
  loc_66A7BB: PopTmpLdAdStr var_8C
  loc_66A7BE: LitI2_Byte &H52
  loc_66A7C0: PopTmpLdAd2 var_88
  loc_66A7C3: ImpAdLdRf MemVar_74C7D0
  loc_66A7C6: NewIfNullPr clsMsg
  loc_66A7C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A7CE: FLdRfVar var_324
  loc_66A7D1: LitVar_Missing var_320
  loc_66A7D4: LitVar_Missing var_300
  loc_66A7D7: LitVar_Missing var_2E0
  loc_66A7DA: LitVar_Missing var_2C0
  loc_66A7DD: LitVar_Missing var_2A0
  loc_66A7E0: LitVar_Missing var_280
  loc_66A7E3: LitVar_Missing var_260
  loc_66A7E6: LitVar_Missing var_240
  loc_66A7E9: LitVar_Missing var_220
  loc_66A7EC: LitVar_Missing var_200
  loc_66A7EF: LitStr "Aviso"
  loc_66A7F2: FStStrCopy var_1E0
  loc_66A7F5: FLdRfVar var_1E0
  loc_66A7F8: LitI4 5
  loc_66A7FD: PopTmpLdAdStr var_1DC
  loc_66A800: LitI2_Byte &H52
  loc_66A802: PopTmpLdAd2 var_1D6
  loc_66A805: ImpAdLdRf MemVar_74C7D0
  loc_66A808: NewIfNullPr clsMsg
  loc_66A80B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A810: LitVar_Missing var_384
  loc_66A813: LitVar_Missing var_364
  loc_66A816: FLdZeroAd var_324
  loc_66A819: CVarStr var_344
  loc_66A81C: LitI4 &H24
  loc_66A821: FLdZeroAd var_1D4
  loc_66A824: CVarStr var_334
  loc_66A827: ImpAdCallI2 MsgBox(, , , , )
  loc_66A82C: LitI4 6
  loc_66A831: EqI4
  loc_66A832: FFreeStr var_90 = ""
  loc_66A839: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_334 = "": var_344 = "": var_364 = ""
  loc_66A86C: BranchF loc_66AAE9
  loc_66A86F: LitI2_Byte 1
  loc_66A871: FLdRfVar var_86
  loc_66A874: ImpAdLdUI1
  loc_66A878: CI2UI1
  loc_66A87A: ForI2 var_388
  loc_66A880: FLdI2 var_86
  loc_66A883: CI4UI1
  loc_66A884: ImpAdLdRf MemVar_74C1D8
  loc_66A887: Ary1LdUI1
  loc_66A889: FStUI1 var_38A
  loc_66A88D: FLdUI1
  loc_66A891: LitI2_Byte 1
  loc_66A893: CUI1I2
  loc_66A895: EqI2
  loc_66A896: BranchT loc_66A8A5
  loc_66A899: FLdUI1
  loc_66A89D: LitI2_Byte 6
  loc_66A89F: CUI1I2
  loc_66A8A1: EqI2
  loc_66A8A2: BranchF loc_66A900
  loc_66A8A5: FLdRfVar var_8C
  loc_66A8A8: FLdRfVar var_394
  loc_66A8AB: FLdI2 var_86
  loc_66A8AE: FLdPrThis
  loc_66A8AF: VCallAd Control_ID_lbColor
  loc_66A8B2: FStAdFunc var_390
  loc_66A8B5: FLdPr var_390
  loc_66A8B8: Set from_stack_2 = Me(from_stack_1)
  loc_66A8BD: FLdPr var_394
  loc_66A8C0:  = Me.BackColor
  loc_66A8C5: ILdRf var_8C
  loc_66A8C8: CStrI4
  loc_66A8CA: FStStrNoPop var_1E0
  loc_66A8CD: LitStr "Color"
  loc_66A8D0: FLdI2 var_86
  loc_66A8D3: CI4UI1
  loc_66A8D4: ImpAdLdRf MemVar_74C1D8
  loc_66A8D7: Ary1LdUI1
  loc_66A8D9: CStrI2
  loc_66A8DB: FStStrNoPop var_90
  loc_66A8DE: ConcatStr
  loc_66A8DF: FStStrNoPop var_1D4
  loc_66A8E2: LitStr "Properties\Color"
  loc_66A8E5: LitStr "CEM44"
  loc_66A8E8: ImpAdCallFPR4 SaveSetting(, , , )
  loc_66A8ED: FFreeStr var_90 = "": var_1D4 = ""
  loc_66A8F6: FFreeAd var_390 = ""
  loc_66A8FD: Branch loc_66AAC9
  loc_66A900: FLdUI1
  loc_66A904: LitI2_Byte 2
  loc_66A906: CUI1I2
  loc_66A908: EqI2
  loc_66A909: BranchT loc_66A918
  loc_66A90C: FLdUI1
  loc_66A910: LitI2_Byte 7
  loc_66A912: CUI1I2
  loc_66A914: EqI2
  loc_66A915: BranchF loc_66A973
  loc_66A918: FLdRfVar var_8C
  loc_66A91B: FLdRfVar var_394
  loc_66A91E: FLdI2 var_86
  loc_66A921: FLdPrThis
  loc_66A922: VCallAd Control_ID_lbColor
  loc_66A925: FStAdFunc var_390
  loc_66A928: FLdPr var_390
  loc_66A92B: Set from_stack_2 = Me(from_stack_1)
  loc_66A930: FLdPr var_394
  loc_66A933:  = Me.BackColor
  loc_66A938: ILdRf var_8C
  loc_66A93B: CStrI4
  loc_66A93D: FStStrNoPop var_1E0
  loc_66A940: LitStr "Color"
  loc_66A943: FLdI2 var_86
  loc_66A946: CI4UI1
  loc_66A947: ImpAdLdRf MemVar_74C1D8
  loc_66A94A: Ary1LdUI1
  loc_66A94C: CStrI2
  loc_66A94E: FStStrNoPop var_90
  loc_66A951: ConcatStr
  loc_66A952: FStStrNoPop var_1D4
  loc_66A955: LitStr "Properties\Color"
  loc_66A958: LitStr "CEM44"
  loc_66A95B: ImpAdCallFPR4 SaveSetting(, , , )
  loc_66A960: FFreeStr var_90 = "": var_1D4 = ""
  loc_66A969: FFreeAd var_390 = ""
  loc_66A970: Branch loc_66AAC9
  loc_66A973: FLdUI1
  loc_66A977: LitI2_Byte 3
  loc_66A979: CUI1I2
  loc_66A97B: EqI2
  loc_66A97C: BranchT loc_66A98B
  loc_66A97F: FLdUI1
  loc_66A983: LitI2_Byte 8
  loc_66A985: CUI1I2
  loc_66A987: EqI2
  loc_66A988: BranchF loc_66A9E6
  loc_66A98B: FLdRfVar var_8C
  loc_66A98E: FLdRfVar var_394
  loc_66A991: FLdI2 var_86
  loc_66A994: FLdPrThis
  loc_66A995: VCallAd Control_ID_lbColor
  loc_66A998: FStAdFunc var_390
  loc_66A99B: FLdPr var_390
  loc_66A99E: Set from_stack_2 = Me(from_stack_1)
  loc_66A9A3: FLdPr var_394
  loc_66A9A6:  = Me.BackColor
  loc_66A9AB: ILdRf var_8C
  loc_66A9AE: CStrI4
  loc_66A9B0: FStStrNoPop var_1E0
  loc_66A9B3: LitStr "Color"
  loc_66A9B6: FLdI2 var_86
  loc_66A9B9: CI4UI1
  loc_66A9BA: ImpAdLdRf MemVar_74C1D8
  loc_66A9BD: Ary1LdUI1
  loc_66A9BF: CStrI2
  loc_66A9C1: FStStrNoPop var_90
  loc_66A9C4: ConcatStr
  loc_66A9C5: FStStrNoPop var_1D4
  loc_66A9C8: LitStr "Properties\Color"
  loc_66A9CB: LitStr "CEM44"
  loc_66A9CE: ImpAdCallFPR4 SaveSetting(, , , )
  loc_66A9D3: FFreeStr var_90 = "": var_1D4 = ""
  loc_66A9DC: FFreeAd var_390 = ""
  loc_66A9E3: Branch loc_66AAC9
  loc_66A9E6: FLdUI1
  loc_66A9EA: LitI2_Byte 4
  loc_66A9EC: CUI1I2
  loc_66A9EE: EqI2
  loc_66A9EF: BranchT loc_66A9FE
  loc_66A9F2: FLdUI1
  loc_66A9F6: LitI2_Byte 9
  loc_66A9F8: CUI1I2
  loc_66A9FA: EqI2
  loc_66A9FB: BranchF loc_66AA59
  loc_66A9FE: FLdRfVar var_8C
  loc_66AA01: FLdRfVar var_394
  loc_66AA04: FLdI2 var_86
  loc_66AA07: FLdPrThis
  loc_66AA08: VCallAd Control_ID_lbColor
  loc_66AA0B: FStAdFunc var_390
  loc_66AA0E: FLdPr var_390
  loc_66AA11: Set from_stack_2 = Me(from_stack_1)
  loc_66AA16: FLdPr var_394
  loc_66AA19:  = Me.BackColor
  loc_66AA1E: ILdRf var_8C
  loc_66AA21: CStrI4
  loc_66AA23: FStStrNoPop var_1E0
  loc_66AA26: LitStr "Color"
  loc_66AA29: FLdI2 var_86
  loc_66AA2C: CI4UI1
  loc_66AA2D: ImpAdLdRf MemVar_74C1D8
  loc_66AA30: Ary1LdUI1
  loc_66AA32: CStrI2
  loc_66AA34: FStStrNoPop var_90
  loc_66AA37: ConcatStr
  loc_66AA38: FStStrNoPop var_1D4
  loc_66AA3B: LitStr "Properties\Color"
  loc_66AA3E: LitStr "CEM44"
  loc_66AA41: ImpAdCallFPR4 SaveSetting(, , , )
  loc_66AA46: FFreeStr var_90 = "": var_1D4 = ""
  loc_66AA4F: FFreeAd var_390 = ""
  loc_66AA56: Branch loc_66AAC9
  loc_66AA59: FLdUI1
  loc_66AA5D: LitI2_Byte 5
  loc_66AA5F: CUI1I2
  loc_66AA61: EqI2
  loc_66AA62: BranchT loc_66AA71
  loc_66AA65: FLdUI1
  loc_66AA69: LitI2_Byte &HA
  loc_66AA6B: CUI1I2
  loc_66AA6D: EqI2
  loc_66AA6E: BranchF loc_66AAC9
  loc_66AA71: FLdRfVar var_8C
  loc_66AA74: FLdRfVar var_394
  loc_66AA77: FLdI2 var_86
  loc_66AA7A: FLdPrThis
  loc_66AA7B: VCallAd Control_ID_lbColor
  loc_66AA7E: FStAdFunc var_390
  loc_66AA81: FLdPr var_390
  loc_66AA84: Set from_stack_2 = Me(from_stack_1)
  loc_66AA89: FLdPr var_394
  loc_66AA8C:  = Me.BackColor
  loc_66AA91: ILdRf var_8C
  loc_66AA94: CStrI4
  loc_66AA96: FStStrNoPop var_1E0
  loc_66AA99: LitStr "Color"
  loc_66AA9C: FLdI2 var_86
  loc_66AA9F: CI4UI1
  loc_66AAA0: ImpAdLdRf MemVar_74C1D8
  loc_66AAA3: Ary1LdUI1
  loc_66AAA5: CStrI2
  loc_66AAA7: FStStrNoPop var_90
  loc_66AAAA: ConcatStr
  loc_66AAAB: FStStrNoPop var_1D4
  loc_66AAAE: LitStr "Properties\Color"
  loc_66AAB1: LitStr "CEM44"
  loc_66AAB4: ImpAdCallFPR4 SaveSetting(, , , )
  loc_66AAB9: FFreeStr var_90 = "": var_1D4 = ""
  loc_66AAC2: FFreeAd var_390 = ""
  loc_66AAC9: FLdRfVar var_86
  loc_66AACC: NextI2 var_388, loc_66A880
  loc_66AAD1: ILdRf Me
  loc_66AAD4: FStAdNoPop
  loc_66AAD8: ImpAdLdRf MemVar_7520D4
  loc_66AADB: NewIfNullPr Global
  loc_66AADE: Global.Unload from_stack_1
  loc_66AAE3: FFree1Ad var_390
  loc_66AAE6: Branch loc_66AAFE
  loc_66AAE9: ILdRf Me
  loc_66AAEC: FStAdNoPop
  loc_66AAF0: ImpAdLdRf MemVar_7520D4
  loc_66AAF3: NewIfNullPr Global
  loc_66AAF6: Global.Unload from_stack_1
  loc_66AAFB: FFree1Ad var_390
  loc_66AAFE: ExitProcHresult
End Sub

Private Sub Form_Load() '5D08F4
  'Data Table: 40AC18
  loc_5D08DC: from_stack_1v = Proc_131_6_62712C()
  loc_5D08E1: from_stack_1v = Proc_131_5_62F378()
  loc_5D08E6: from_stack_1v = Proc_131_7_667730()
  loc_5D08EB: from_stack_1v = Proc_131_4_5E1820()
  loc_5D08F0: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D0DE8
  'Data Table: 40AC18
  loc_5D0DD0: ILdRf Me
  loc_5D0DD3: FStAdNoPop
  loc_5D0DD7: ImpAdLdRf MemVar_7520D4
  loc_5D0DDA: NewIfNullPr Global
  loc_5D0DDD: Global.Unload from_stack_1
  loc_5D0DE2: FFree1Ad var_88
  loc_5D0DE5: ExitProcHresult
End Sub

Private Sub lbColor_Click(arg_C) '5FAACC
  'Data Table: 40AC18
  loc_5FAA08: OnErrorGoto loc_5FAAA4
  loc_5FAA0B: FLdRfVar var_94
  loc_5FAA0E: FLdRfVar var_90
  loc_5FAA11: ILdI2 arg_C
  loc_5FAA14: FLdPrThis
  loc_5FAA15: VCallAd Control_ID_lbColor
  loc_5FAA18: FStAdFunc var_8C
  loc_5FAA1B: FLdPr var_8C
  loc_5FAA1E: Set from_stack_2 = Me(from_stack_1)
  loc_5FAA23: FLdPr var_90
  loc_5FAA26:  = Me.BackColor
  loc_5FAA2B: ILdRf var_94
  loc_5FAA2E: FStR4 var_88
  loc_5FAA31: FFreeAd var_8C = ""
  loc_5FAA38: LitVar_TRUE var_A4
  loc_5FAA3B: PopAdLdVar
  loc_5FAA3C: FLdPrThis
  loc_5FAA3D: VCallAd Control_ID_CommonDialog
  loc_5FAA40: FStAdFunc var_8C
  loc_5FAA43: FLdPr var_8C
  loc_5FAA46: LateIdSt
  loc_5FAA4B: FFree1Ad var_8C
  loc_5FAA4E: FLdPr Me
  loc_5FAA51: VCallAd Control_ID_CommonDialog
  loc_5FAA54: FStAdFunc var_8C
  loc_5FAA57: FLdPr var_8C
  loc_5FAA5A: LateIdCall
  loc_5FAA62: FFree1Ad var_8C
  loc_5FAA65: FLdPr Me
  loc_5FAA68: VCallAd Control_ID_CommonDialog
  loc_5FAA6B: FStAdFunc var_8C
  loc_5FAA6E: FLdPr var_8C
  loc_5FAA71: LateIdLdVar var_B4 DispID_6 0
  loc_5FAA78: CI4Var
  loc_5FAA7A: FLdRfVar var_B8
  loc_5FAA7D: ILdI2 arg_C
  loc_5FAA80: FLdPrThis
  loc_5FAA81: VCallAd Control_ID_lbColor
  loc_5FAA84: FStAdFunc var_90
  loc_5FAA87: FLdPr var_90
  loc_5FAA8A: Set from_stack_2 = Me(from_stack_1)
  loc_5FAA8F: FLdPr var_B8
  loc_5FAA92: Me.BackColor = from_stack_1
  loc_5FAA97: FFreeAd var_8C = "": var_90 = ""
  loc_5FAAA0: FFree1Var var_B4 = ""
  loc_5FAAA3: ExitProcHresult
  loc_5FAAA4: ILdRf var_88
  loc_5FAAA7: FLdRfVar var_90
  loc_5FAAAA: ILdI2 arg_C
  loc_5FAAAD: FLdPrThis
  loc_5FAAAE: VCallAd Control_ID_lbColor
  loc_5FAAB1: FStAdFunc var_8C
  loc_5FAAB4: FLdPr var_8C
  loc_5FAAB7: Set from_stack_2 = Me(from_stack_1)
  loc_5FAABC: FLdPr var_90
  loc_5FAABF: Me.BackColor = from_stack_1
  loc_5FAAC4: FFreeAd var_8C = ""
  loc_5FAACB: ExitProcHresult
End Sub

Private Function Proc_131_4_5E1820() '5E1820
  'Data Table: 40AC18
  loc_5E17C0: FLdRfVar var_8A
  loc_5E17C3: FLdPrThis
  loc_5E17C4: VCallAd Control_ID_lbProduct
  loc_5E17C7: FStAdFunc var_88
  loc_5E17CA: FLdPr var_88
  loc_5E17CD: Call 0.Method_Proc_131_4_5E1820C ()
  loc_5E17D2: FLdI2 var_8A
  loc_5E17D5: LitI2_Byte 9
  loc_5E17D7: GtI2
  loc_5E17D8: FFree1Ad var_88
  loc_5E17DB: BranchF loc_5E181D
  loc_5E17DE: LitI2 8010
  loc_5E17E1: CR8I2
  loc_5E17E2: PopFPR4
  loc_5E17E3: FLdPr Me
  loc_5E17E6: Me.Height = from_stack_1s
  loc_5E17EB: LitI2 6720
  loc_5E17EE: CR8I2
  loc_5E17EF: PopFPR4
  loc_5E17F0: FLdPr Me
  loc_5E17F3: VCallAd Control_ID_cmdAceptar
  loc_5E17F6: FStAdFunc var_88
  loc_5E17F9: FLdPr var_88
  loc_5E17FC: Me.Top = from_stack_1s
  loc_5E1801: FFree1Ad var_88
  loc_5E1804: LitI2 6720
  loc_5E1807: CR8I2
  loc_5E1808: PopFPR4
  loc_5E1809: FLdPr Me
  loc_5E180C: VCallAd Control_ID_cmdCancelar
  loc_5E180F: FStAdFunc var_88
  loc_5E1812: FLdPr var_88
  loc_5E1815: Me.Top = from_stack_1s
  loc_5E181A: FFree1Ad var_88
  loc_5E181D: ExitProcHresult
End Function

Private Function Proc_131_5_62F378() '62F378
  'Data Table: 40AC18
  loc_62F1BC: FLdRfVar var_94
  loc_62F1BF: FLdRfVar var_90
  loc_62F1C2: LitI2_Byte 0
  loc_62F1C4: FLdPrThis
  loc_62F1C5: VCallAd Control_ID_lbProduct
  loc_62F1C8: FStAdFunc var_8C
  loc_62F1CB: FLdPr var_8C
  loc_62F1CE: Set from_stack_2 = Me(from_stack_1)
  loc_62F1D3: FLdPr var_90
  loc_62F1D6:  = Me.Top
  loc_62F1DB: FLdFPR4 var_94
  loc_62F1DE: CI2R8
  loc_62F1DF: FStI2 var_88
  loc_62F1E2: FFreeAd var_8C = ""
  loc_62F1E9: LitI2_Byte 1
  loc_62F1EB: FLdRfVar var_86
  loc_62F1EE: ImpAdLdUI1
  loc_62F1F2: CI2UI1
  loc_62F1F4: ForI2 var_98
  loc_62F1FA: FLdRfVar var_90
  loc_62F1FD: FLdI2 var_86
  loc_62F200: FLdPrThis
  loc_62F201: VCallAd Control_ID_lbProduct
  loc_62F204: FStAdFunc var_8C
  loc_62F207: FLdPr var_8C
  loc_62F20A: Set from_stack_2 = Me(from_stack_1)
  loc_62F20F: FLdZeroAd var_90
  loc_62F212: FStAdFuncNoPop
  loc_62F215: ImpAdLdRf MemVar_7520D4
  loc_62F218: NewIfNullPr Global
  loc_62F21B: Global.Load from_stack_1
  loc_62F220: FFreeAd var_8C = ""
  loc_62F227: FLdRfVar var_90
  loc_62F22A: FLdI2 var_86
  loc_62F22D: FLdPrThis
  loc_62F22E: VCallAd Control_ID_lbColor
  loc_62F231: FStAdFunc var_8C
  loc_62F234: FLdPr var_8C
  loc_62F237: Set from_stack_2 = Me(from_stack_1)
  loc_62F23C: FLdZeroAd var_90
  loc_62F23F: FStAdFuncNoPop
  loc_62F242: ImpAdLdRf MemVar_7520D4
  loc_62F245: NewIfNullPr Global
  loc_62F248: Global.Load from_stack_1
  loc_62F24D: FFreeAd var_8C = ""
  loc_62F254: FLdI2 var_88
  loc_62F257: CR8I2
  loc_62F258: PopFPR4
  loc_62F259: FLdRfVar var_90
  loc_62F25C: FLdI2 var_86
  loc_62F25F: FLdPrThis
  loc_62F260: VCallAd Control_ID_lbProduct
  loc_62F263: FStAdFunc var_8C
  loc_62F266: FLdPr var_8C
  loc_62F269: Set from_stack_2 = Me(from_stack_1)
  loc_62F26E: FLdPr var_90
  loc_62F271: Me.Top = from_stack_1s
  loc_62F276: FFreeAd var_8C = ""
  loc_62F27D: FLdI2 var_88
  loc_62F280: CR8I2
  loc_62F281: PopFPR4
  loc_62F282: FLdRfVar var_90
  loc_62F285: FLdI2 var_86
  loc_62F288: FLdPrThis
  loc_62F289: VCallAd Control_ID_lbColor
  loc_62F28C: FStAdFunc var_8C
  loc_62F28F: FLdPr var_8C
  loc_62F292: Set from_stack_2 = Me(from_stack_1)
  loc_62F297: FLdPr var_90
  loc_62F29A: Me.Top = from_stack_1s
  loc_62F29F: FFreeAd var_8C = ""
  loc_62F2A6: FLdRfVar var_A0
  loc_62F2A9: FLdI2 var_86
  loc_62F2AC: CI4UI1
  loc_62F2AD: ImpAdLdRf MemVar_74C1D8
  loc_62F2B0: Ary1LdUI1
  loc_62F2B2: CI2UI1
  loc_62F2B4: ImpAdLdRf MemVar_74A220
  loc_62F2B7: NewIfNullPr clsProducts
  loc_62F2BF: ILdRf var_A0
  loc_62F2C2: FLdRfVar var_90
  loc_62F2C5: FLdI2 var_86
  loc_62F2C8: FLdPrThis
  loc_62F2C9: VCallAd Control_ID_lbProduct
  loc_62F2CC: FStAdFunc var_8C
  loc_62F2CF: FLdPr var_8C
  loc_62F2D2: Set from_stack_2 = Me(from_stack_1)
  loc_62F2D7: FLdPr var_90
  loc_62F2DA: Me.Caption = from_stack_1
  loc_62F2DF: FFree1Str var_A0
  loc_62F2E2: FFreeAd var_8C = ""
  loc_62F2E9: LitI2_Byte &HFF
  loc_62F2EB: FLdRfVar var_90
  loc_62F2EE: FLdI2 var_86
  loc_62F2F1: FLdPrThis
  loc_62F2F2: VCallAd Control_ID_lbProduct
  loc_62F2F5: FStAdFunc var_8C
  loc_62F2F8: FLdPr var_8C
  loc_62F2FB: Set from_stack_2 = Me(from_stack_1)
  loc_62F300: FLdPr var_90
  loc_62F303: Me.Visible = from_stack_1b
  loc_62F308: FFreeAd var_8C = ""
  loc_62F30F: LitI2_Byte &HFF
  loc_62F311: FLdRfVar var_90
  loc_62F314: FLdI2 var_86
  loc_62F317: FLdPrThis
  loc_62F318: VCallAd Control_ID_lbColor
  loc_62F31B: FStAdFunc var_8C
  loc_62F31E: FLdPr var_8C
  loc_62F321: Set from_stack_2 = Me(from_stack_1)
  loc_62F326: FLdPr var_90
  loc_62F329: Me.Visible = from_stack_1b
  loc_62F32E: FFreeAd var_8C = ""
  loc_62F335: FLdRfVar var_94
  loc_62F338: FLdRfVar var_90
  loc_62F33B: FLdI2 var_86
  loc_62F33E: FLdPrThis
  loc_62F33F: VCallAd Control_ID_lbProduct
  loc_62F342: FStAdFunc var_8C
  loc_62F345: FLdPr var_8C
  loc_62F348: Set from_stack_2 = Me(from_stack_1)
  loc_62F34D: FLdPr var_90
  loc_62F350:  = Me.Height
  loc_62F355: FLdI2 var_88
  loc_62F358: CR8I2
  loc_62F359: FLdFPR4 var_94
  loc_62F35C: AddR8
  loc_62F35D: LitI2_Byte &H14
  loc_62F35F: CR8I2
  loc_62F360: AddR8
  loc_62F361: CI2R8
  loc_62F362: FStI2 var_88
  loc_62F365: FFreeAd var_8C = ""
  loc_62F36C: FLdRfVar var_86
  loc_62F36F: NextI2 var_98, loc_62F1FA
  loc_62F374: ExitProcHresult
End Function

Private Function Proc_131_6_62712C() '62712C
  'Data Table: 40AC18
  loc_626FD0: FLdRfVar var_1D4
  loc_626FD3: LitVar_Missing var_1D0
  loc_626FD6: LitVar_Missing var_1B0
  loc_626FD9: LitVar_Missing var_190
  loc_626FDC: LitVar_Missing var_170
  loc_626FDF: LitVar_Missing var_150
  loc_626FE2: LitVar_Missing var_130
  loc_626FE5: LitVar_Missing var_110
  loc_626FE8: LitVar_Missing var_F0
  loc_626FEB: LitVar_Missing var_D0
  loc_626FEE: LitVar_Missing var_B0
  loc_626FF1: LitStr "Seleccione un color haciendo un click sobre la imagen"
  loc_626FF4: FStStrCopy var_90
  loc_626FF7: FLdRfVar var_90
  loc_626FFA: LitI4 1
  loc_626FFF: PopTmpLdAdStr var_8C
  loc_627002: LitI2_Byte &H52
  loc_627004: PopTmpLdAd2 var_86
  loc_627007: ImpAdLdRf MemVar_74C7D0
  loc_62700A: NewIfNullPr clsMsg
  loc_62700D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_627012: ILdRf var_1D4
  loc_627015: FLdPr Me
  loc_627018: Me.Caption = from_stack_1
  loc_62701D: FFreeStr var_90 = ""
  loc_627024: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_62703B: FLdRfVar var_1D4
  loc_62703E: LitVar_Missing var_1D0
  loc_627041: LitVar_Missing var_1B0
  loc_627044: LitVar_Missing var_190
  loc_627047: LitVar_Missing var_170
  loc_62704A: LitVar_Missing var_150
  loc_62704D: LitVar_Missing var_130
  loc_627050: LitVar_Missing var_110
  loc_627053: LitVar_Missing var_F0
  loc_627056: LitVar_Missing var_D0
  loc_627059: LitVar_Missing var_B0
  loc_62705C: LitStr "&Aceptar"
  loc_62705F: FStStrCopy var_90
  loc_627062: FLdRfVar var_90
  loc_627065: LitI4 2
  loc_62706A: PopTmpLdAdStr var_8C
  loc_62706D: LitI2_Byte &H52
  loc_62706F: PopTmpLdAd2 var_86
  loc_627072: ImpAdLdRf MemVar_74C7D0
  loc_627075: NewIfNullPr clsMsg
  loc_627078: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62707D: ILdRf var_1D4
  loc_627080: FLdPr Me
  loc_627083: VCallAd Control_ID_cmdAceptar
  loc_627086: FStAdFunc var_1D8
  loc_627089: FLdPr var_1D8
  loc_62708C: Me.Caption = from_stack_1
  loc_627091: FFreeStr var_90 = ""
  loc_627098: FFree1Ad var_1D8
  loc_62709B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6270B2: FLdRfVar var_1D4
  loc_6270B5: LitVar_Missing var_1D0
  loc_6270B8: LitVar_Missing var_1B0
  loc_6270BB: LitVar_Missing var_190
  loc_6270BE: LitVar_Missing var_170
  loc_6270C1: LitVar_Missing var_150
  loc_6270C4: LitVar_Missing var_130
  loc_6270C7: LitVar_Missing var_110
  loc_6270CA: LitVar_Missing var_F0
  loc_6270CD: LitVar_Missing var_D0
  loc_6270D0: LitVar_Missing var_B0
  loc_6270D3: LitStr "&Cancelar"
  loc_6270D6: FStStrCopy var_90
  loc_6270D9: FLdRfVar var_90
  loc_6270DC: LitI4 3
  loc_6270E1: PopTmpLdAdStr var_8C
  loc_6270E4: LitI2_Byte &H52
  loc_6270E6: PopTmpLdAd2 var_86
  loc_6270E9: ImpAdLdRf MemVar_74C7D0
  loc_6270EC: NewIfNullPr clsMsg
  loc_6270EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6270F4: ILdRf var_1D4
  loc_6270F7: FLdPr Me
  loc_6270FA: VCallAd Control_ID_cmdCancelar
  loc_6270FD: FStAdFunc var_1D8
  loc_627100: FLdPr var_1D8
  loc_627103: Me.Caption = from_stack_1
  loc_627108: FFreeStr var_90 = ""
  loc_62710F: FFree1Ad var_1D8
  loc_627112: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_627129: ExitProcHresult
  loc_62712A: FFree1Ad var_6000
End Function

Private Function Proc_131_7_667730() '667730
  'Data Table: 40AC18
  loc_66738C: LitI2_Byte 1
  loc_66738E: FLdRfVar var_86
  loc_667391: ImpAdLdUI1
  loc_667395: CI2UI1
  loc_667397: ForI2 var_90
  loc_66739D: FLdI2 var_86
  loc_6673A0: CI4UI1
  loc_6673A1: ImpAdLdRf MemVar_74C1D8
  loc_6673A4: Ary1LdUI1
  loc_6673A6: FStUI1 var_92
  loc_6673AA: FLdUI1
  loc_6673AE: LitI2_Byte 1
  loc_6673B0: CUI1I2
  loc_6673B2: EqI2
  loc_6673B3: BranchT loc_6673C2
  loc_6673B6: FLdUI1
  loc_6673BA: LitI2_Byte 6
  loc_6673BC: CUI1I2
  loc_6673BE: EqI2
  loc_6673BF: BranchF loc_66745D
  loc_6673C2: LitVar_Missing var_AC
  loc_6673C5: PopAdLdVar
  loc_6673C6: LitStr "Color"
  loc_6673C9: FLdI2 var_86
  loc_6673CC: CI4UI1
  loc_6673CD: ImpAdLdRf MemVar_74C1D8
  loc_6673D0: Ary1LdUI1
  loc_6673D2: CStrI2
  loc_6673D4: FStStrNoPop var_98
  loc_6673D7: ConcatStr
  loc_6673D8: FStStrNoPop var_9C
  loc_6673DB: LitStr "Properties\Color"
  loc_6673DE: LitStr "CEM44"
  loc_6673E1: ImpAdCallI2 GetSetting(, , , )
  loc_6673E6: FStStrNoPop var_B0
  loc_6673E9: ImpAdCallFPR4 push Val()
  loc_6673EE: CI4R8
  loc_6673EF: FStR4 var_8C
  loc_6673F2: FFreeStr var_98 = "": var_9C = ""
  loc_6673FB: ILdRf var_8C
  loc_6673FE: LitI4 0
  loc_667403: EqI4
  loc_667404: BranchF loc_667433
  loc_667407: LitI4 &HFF00
  loc_66740C: FLdRfVar var_B8
  loc_66740F: FLdI2 var_86
  loc_667412: FLdPrThis
  loc_667413: VCallAd Control_ID_lbColor
  loc_667416: FStAdFunc var_B4
  loc_667419: FLdPr var_B4
  loc_66741C: Set from_stack_2 = Me(from_stack_1)
  loc_667421: FLdPr var_B8
  loc_667424: Me.BackColor = from_stack_1
  loc_667429: FFreeAd var_B4 = ""
  loc_667430: Branch loc_66745A
  loc_667433: ILdRf var_8C
  loc_667436: FLdRfVar var_B8
  loc_667439: FLdI2 var_86
  loc_66743C: FLdPrThis
  loc_66743D: VCallAd Control_ID_lbColor
  loc_667440: FStAdFunc var_B4
  loc_667443: FLdPr var_B4
  loc_667446: Set from_stack_2 = Me(from_stack_1)
  loc_66744B: FLdPr var_B8
  loc_66744E: Me.BackColor = from_stack_1
  loc_667453: FFreeAd var_B4 = ""
  loc_66745A: Branch loc_667726
  loc_66745D: FLdUI1
  loc_667461: LitI2_Byte 2
  loc_667463: CUI1I2
  loc_667465: EqI2
  loc_667466: BranchT loc_667475
  loc_667469: FLdUI1
  loc_66746D: LitI2_Byte 7
  loc_66746F: CUI1I2
  loc_667471: EqI2
  loc_667472: BranchF loc_667510
  loc_667475: LitVar_Missing var_AC
  loc_667478: PopAdLdVar
  loc_667479: LitStr "Color"
  loc_66747C: FLdI2 var_86
  loc_66747F: CI4UI1
  loc_667480: ImpAdLdRf MemVar_74C1D8
  loc_667483: Ary1LdUI1
  loc_667485: CStrI2
  loc_667487: FStStrNoPop var_98
  loc_66748A: ConcatStr
  loc_66748B: FStStrNoPop var_9C
  loc_66748E: LitStr "Properties\Color"
  loc_667491: LitStr "CEM44"
  loc_667494: ImpAdCallI2 GetSetting(, , , )
  loc_667499: FStStrNoPop var_B0
  loc_66749C: ImpAdCallFPR4 push Val()
  loc_6674A1: CI4R8
  loc_6674A2: FStR4 var_8C
  loc_6674A5: FFreeStr var_98 = "": var_9C = ""
  loc_6674AE: ILdRf var_8C
  loc_6674B1: LitI4 0
  loc_6674B6: EqI4
  loc_6674B7: BranchF loc_6674E6
  loc_6674BA: LitI4 &HFF80FF
  loc_6674BF: FLdRfVar var_B8
  loc_6674C2: FLdI2 var_86
  loc_6674C5: FLdPrThis
  loc_6674C6: VCallAd Control_ID_lbColor
  loc_6674C9: FStAdFunc var_B4
  loc_6674CC: FLdPr var_B4
  loc_6674CF: Set from_stack_2 = Me(from_stack_1)
  loc_6674D4: FLdPr var_B8
  loc_6674D7: Me.BackColor = from_stack_1
  loc_6674DC: FFreeAd var_B4 = ""
  loc_6674E3: Branch loc_66750D
  loc_6674E6: ILdRf var_8C
  loc_6674E9: FLdRfVar var_B8
  loc_6674EC: FLdI2 var_86
  loc_6674EF: FLdPrThis
  loc_6674F0: VCallAd Control_ID_lbColor
  loc_6674F3: FStAdFunc var_B4
  loc_6674F6: FLdPr var_B4
  loc_6674F9: Set from_stack_2 = Me(from_stack_1)
  loc_6674FE: FLdPr var_B8
  loc_667501: Me.BackColor = from_stack_1
  loc_667506: FFreeAd var_B4 = ""
  loc_66750D: Branch loc_667726
  loc_667510: FLdUI1
  loc_667514: LitI2_Byte 3
  loc_667516: CUI1I2
  loc_667518: EqI2
  loc_667519: BranchT loc_667528
  loc_66751C: FLdUI1
  loc_667520: LitI2_Byte 8
  loc_667522: CUI1I2
  loc_667524: EqI2
  loc_667525: BranchF loc_6675C3
  loc_667528: LitVar_Missing var_AC
  loc_66752B: PopAdLdVar
  loc_66752C: LitStr "Color"
  loc_66752F: FLdI2 var_86
  loc_667532: CI4UI1
  loc_667533: ImpAdLdRf MemVar_74C1D8
  loc_667536: Ary1LdUI1
  loc_667538: CStrI2
  loc_66753A: FStStrNoPop var_98
  loc_66753D: ConcatStr
  loc_66753E: FStStrNoPop var_9C
  loc_667541: LitStr "Properties\Color"
  loc_667544: LitStr "CEM44"
  loc_667547: ImpAdCallI2 GetSetting(, , , )
  loc_66754C: FStStrNoPop var_B0
  loc_66754F: ImpAdCallFPR4 push Val()
  loc_667554: CI4R8
  loc_667555: FStR4 var_8C
  loc_667558: FFreeStr var_98 = "": var_9C = ""
  loc_667561: ILdRf var_8C
  loc_667564: LitI4 0
  loc_667569: EqI4
  loc_66756A: BranchF loc_667599
  loc_66756D: LitI4 &HFFFF
  loc_667572: FLdRfVar var_B8
  loc_667575: FLdI2 var_86
  loc_667578: FLdPrThis
  loc_667579: VCallAd Control_ID_lbColor
  loc_66757C: FStAdFunc var_B4
  loc_66757F: FLdPr var_B4
  loc_667582: Set from_stack_2 = Me(from_stack_1)
  loc_667587: FLdPr var_B8
  loc_66758A: Me.BackColor = from_stack_1
  loc_66758F: FFreeAd var_B4 = ""
  loc_667596: Branch loc_6675C0
  loc_667599: ILdRf var_8C
  loc_66759C: FLdRfVar var_B8
  loc_66759F: FLdI2 var_86
  loc_6675A2: FLdPrThis
  loc_6675A3: VCallAd Control_ID_lbColor
  loc_6675A6: FStAdFunc var_B4
  loc_6675A9: FLdPr var_B4
  loc_6675AC: Set from_stack_2 = Me(from_stack_1)
  loc_6675B1: FLdPr var_B8
  loc_6675B4: Me.BackColor = from_stack_1
  loc_6675B9: FFreeAd var_B4 = ""
  loc_6675C0: Branch loc_667726
  loc_6675C3: FLdUI1
  loc_6675C7: LitI2_Byte 4
  loc_6675C9: CUI1I2
  loc_6675CB: EqI2
  loc_6675CC: BranchT loc_6675DB
  loc_6675CF: FLdUI1
  loc_6675D3: LitI2_Byte 9
  loc_6675D5: CUI1I2
  loc_6675D7: EqI2
  loc_6675D8: BranchF loc_667676
  loc_6675DB: LitVar_Missing var_AC
  loc_6675DE: PopAdLdVar
  loc_6675DF: LitStr "Color"
  loc_6675E2: FLdI2 var_86
  loc_6675E5: CI4UI1
  loc_6675E6: ImpAdLdRf MemVar_74C1D8
  loc_6675E9: Ary1LdUI1
  loc_6675EB: CStrI2
  loc_6675ED: FStStrNoPop var_98
  loc_6675F0: ConcatStr
  loc_6675F1: FStStrNoPop var_9C
  loc_6675F4: LitStr "Properties\Color"
  loc_6675F7: LitStr "CEM44"
  loc_6675FA: ImpAdCallI2 GetSetting(, , , )
  loc_6675FF: FStStrNoPop var_B0
  loc_667602: ImpAdCallFPR4 push Val()
  loc_667607: CI4R8
  loc_667608: FStR4 var_8C
  loc_66760B: FFreeStr var_98 = "": var_9C = ""
  loc_667614: ILdRf var_8C
  loc_667617: LitI4 0
  loc_66761C: EqI4
  loc_66761D: BranchF loc_66764C
  loc_667620: LitI4 &H80C0FF
  loc_667625: FLdRfVar var_B8
  loc_667628: FLdI2 var_86
  loc_66762B: FLdPrThis
  loc_66762C: VCallAd Control_ID_lbColor
  loc_66762F: FStAdFunc var_B4
  loc_667632: FLdPr var_B4
  loc_667635: Set from_stack_2 = Me(from_stack_1)
  loc_66763A: FLdPr var_B8
  loc_66763D: Me.BackColor = from_stack_1
  loc_667642: FFreeAd var_B4 = ""
  loc_667649: Branch loc_667673
  loc_66764C: ILdRf var_8C
  loc_66764F: FLdRfVar var_B8
  loc_667652: FLdI2 var_86
  loc_667655: FLdPrThis
  loc_667656: VCallAd Control_ID_lbColor
  loc_667659: FStAdFunc var_B4
  loc_66765C: FLdPr var_B4
  loc_66765F: Set from_stack_2 = Me(from_stack_1)
  loc_667664: FLdPr var_B8
  loc_667667: Me.BackColor = from_stack_1
  loc_66766C: FFreeAd var_B4 = ""
  loc_667673: Branch loc_667726
  loc_667676: FLdUI1
  loc_66767A: LitI2_Byte 5
  loc_66767C: CUI1I2
  loc_66767E: EqI2
  loc_66767F: BranchT loc_66768E
  loc_667682: FLdUI1
  loc_667686: LitI2_Byte &HA
  loc_667688: CUI1I2
  loc_66768A: EqI2
  loc_66768B: BranchF loc_667726
  loc_66768E: LitVar_Missing var_AC
  loc_667691: PopAdLdVar
  loc_667692: LitStr "Color"
  loc_667695: FLdI2 var_86
  loc_667698: CI4UI1
  loc_667699: ImpAdLdRf MemVar_74C1D8
  loc_66769C: Ary1LdUI1
  loc_66769E: CStrI2
  loc_6676A0: FStStrNoPop var_98
  loc_6676A3: ConcatStr
  loc_6676A4: FStStrNoPop var_9C
  loc_6676A7: LitStr "Properties\Color"
  loc_6676AA: LitStr "CEM44"
  loc_6676AD: ImpAdCallI2 GetSetting(, , , )
  loc_6676B2: FStStrNoPop var_B0
  loc_6676B5: ImpAdCallFPR4 push Val()
  loc_6676BA: CI4R8
  loc_6676BB: FStR4 var_8C
  loc_6676BE: FFreeStr var_98 = "": var_9C = ""
  loc_6676C7: ILdRf var_8C
  loc_6676CA: LitI4 0
  loc_6676CF: EqI4
  loc_6676D0: BranchF loc_6676FF
  loc_6676D3: LitI4 &H3D3DFA
  loc_6676D8: FLdRfVar var_B8
  loc_6676DB: FLdI2 var_86
  loc_6676DE: FLdPrThis
  loc_6676DF: VCallAd Control_ID_lbColor
  loc_6676E2: FStAdFunc var_B4
  loc_6676E5: FLdPr var_B4
  loc_6676E8: Set from_stack_2 = Me(from_stack_1)
  loc_6676ED: FLdPr var_B8
  loc_6676F0: Me.BackColor = from_stack_1
  loc_6676F5: FFreeAd var_B4 = ""
  loc_6676FC: Branch loc_667726
  loc_6676FF: ILdRf var_8C
  loc_667702: FLdRfVar var_B8
  loc_667705: FLdI2 var_86
  loc_667708: FLdPrThis
  loc_667709: VCallAd Control_ID_lbColor
  loc_66770C: FStAdFunc var_B4
  loc_66770F: FLdPr var_B4
  loc_667712: Set from_stack_2 = Me(from_stack_1)
  loc_667717: FLdPr var_B8
  loc_66771A: Me.BackColor = from_stack_1
  loc_66771F: FFreeAd var_B4 = ""
  loc_667726: FLdRfVar var_86
  loc_667729: NextI2 var_90, loc_66739D
  loc_66772E: ExitProcHresult
End Function
