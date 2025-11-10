VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmDensity
  Caption = "Densidad"
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
  ClientWidth = 3900
  ClientHeight = 1830
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame frame
    Left = 240
    Top = 120
    Width = 3495
    Height = 975
    TabIndex = 3
    Begin MSMask.MaskEdBox txDensity
      Left = 2160
      Top = 300
      Width = 1095
      Height = 375
      TabIndex = 0
      OleObjectBlob = "frmDensity.frx":0000
      ToolTipText = "Ingrese la densidad que aplicara"
    End
    Begin VB.Label lbPump
      Caption = "Densidad"
      Left = 195
      Top = 300
      Width = 1935
      Height = 375
      TabIndex = 4
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CommandButton cmdCancel
    Caption = "&Cancelar"
    Left = 240
    Top = 1200
    Width = 1695
    Height = 495
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdOk
    Caption = "&Aceptar"
    Left = 2040
    Top = 1200
    Width = 1695
    Height = 495
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmDensity"


Private Sub Form_Load() '64FE44
  'Data Table: 40C820
  loc_64FBAC: FLdRfVar var_1D8
  loc_64FBAF: LitVar_Missing var_1D4
  loc_64FBB2: LitVar_Missing var_1B4
  loc_64FBB5: LitVar_Missing var_194
  loc_64FBB8: LitVar_Missing var_174
  loc_64FBBB: LitVar_Missing var_154
  loc_64FBBE: LitVar_Missing var_134
  loc_64FBC1: LitVar_Missing var_114
  loc_64FBC4: LitVar_Missing var_F4
  loc_64FBC7: LitVar_Missing var_D4
  loc_64FBCA: LitVar_Missing var_B4
  loc_64FBCD: LitStr "Densidad"
  loc_64FBD0: FStStrCopy var_94
  loc_64FBD3: FLdRfVar var_94
  loc_64FBD6: LitI4 1
  loc_64FBDB: PopTmpLdAdStr var_90
  loc_64FBDE: LitI2_Byte &H65
  loc_64FBE0: PopTmpLdAd2 var_8A
  loc_64FBE3: ImpAdLdRf MemVar_74C7D0
  loc_64FBE6: NewIfNullPr clsMsg
  loc_64FBE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64FBEE: ILdRf var_1D8
  loc_64FBF1: ImpAdLdRf MemVar_74E36C
  loc_64FBF4: NewIfNullPr frmDensity
  loc_64FBF7: frmDensity.Caption = from_stack_1
  loc_64FBFC: FFreeStr var_94 = ""
  loc_64FC03: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64FC1A: FLdRfVar var_1D8
  loc_64FC1D: LitVar_Missing var_1D4
  loc_64FC20: LitVar_Missing var_1B4
  loc_64FC23: LitVar_Missing var_194
  loc_64FC26: LitVar_Missing var_174
  loc_64FC29: LitVar_Missing var_154
  loc_64FC2C: LitVar_Missing var_134
  loc_64FC2F: LitVar_Missing var_114
  loc_64FC32: LitVar_Missing var_F4
  loc_64FC35: LitVar_Missing var_D4
  loc_64FC38: LitVar_Missing var_B4
  loc_64FC3B: LitStr "Densidad"
  loc_64FC3E: FStStrCopy var_94
  loc_64FC41: FLdRfVar var_94
  loc_64FC44: LitI4 2
  loc_64FC49: PopTmpLdAdStr var_90
  loc_64FC4C: LitI2_Byte &H65
  loc_64FC4E: PopTmpLdAd2 var_8A
  loc_64FC51: ImpAdLdRf MemVar_74C7D0
  loc_64FC54: NewIfNullPr clsMsg
  loc_64FC57: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64FC5C: ILdRf var_1D8
  loc_64FC5F: FLdPrThis
  loc_64FC60: VCallAd Control_ID_lbPump
  loc_64FC63: FStAdFunc var_1DC
  loc_64FC66: FLdPr var_1DC
  loc_64FC69: Me.Caption = from_stack_1
  loc_64FC6E: FFreeStr var_94 = ""
  loc_64FC75: FFree1Ad var_1DC
  loc_64FC78: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64FC8F: FLdRfVar var_1D8
  loc_64FC92: LitVar_Missing var_1D4
  loc_64FC95: LitVar_Missing var_1B4
  loc_64FC98: LitVar_Missing var_194
  loc_64FC9B: LitVar_Missing var_174
  loc_64FC9E: LitVar_Missing var_154
  loc_64FCA1: LitVar_Missing var_134
  loc_64FCA4: LitVar_Missing var_114
  loc_64FCA7: LitVar_Missing var_F4
  loc_64FCAA: LitVar_Missing var_D4
  loc_64FCAD: LitVar_Missing var_B4
  loc_64FCB0: LitStr "&Aceptar"
  loc_64FCB3: FStStrCopy var_94
  loc_64FCB6: FLdRfVar var_94
  loc_64FCB9: LitI4 3
  loc_64FCBE: PopTmpLdAdStr var_90
  loc_64FCC1: LitI2_Byte &H65
  loc_64FCC3: PopTmpLdAd2 var_8A
  loc_64FCC6: ImpAdLdRf MemVar_74C7D0
  loc_64FCC9: NewIfNullPr clsMsg
  loc_64FCCC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64FCD1: ILdRf var_1D8
  loc_64FCD4: FLdPrThis
  loc_64FCD5: VCallAd Control_ID_cmdOk
  loc_64FCD8: FStAdFunc var_1DC
  loc_64FCDB: FLdPr var_1DC
  loc_64FCDE: Me.Caption = from_stack_1
  loc_64FCE3: FFreeStr var_94 = ""
  loc_64FCEA: FFree1Ad var_1DC
  loc_64FCED: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64FD04: FLdRfVar var_8A
  loc_64FD07: FLdRfVar var_88
  loc_64FD0A: FLdRfVar var_1DC
  loc_64FD0D: ImpAdLdRf MemVar_74C760
  loc_64FD10: NewIfNullPr Formx
  loc_64FD13: from_stack_1v = Formx.global_4589716Get()
  loc_64FD18: FLdPr var_1DC
  loc_64FD1B: Call 0.Method_arg_384 ()
  loc_64FD20: FLdI2 var_8A
  loc_64FD23: NotI4
  loc_64FD24: FFree1Ad var_1DC
  loc_64FD27: BranchF loc_64FD53
  loc_64FD2A: LitVar_Missing var_114
  loc_64FD2D: LitVar_Missing var_F4
  loc_64FD30: LitVar_Missing var_D4
  loc_64FD33: LitI4 &H40
  loc_64FD38: LitVarStr var_A4, "No se logro obtene la información de densidad"
  loc_64FD3D: FStVarCopyObj var_B4
  loc_64FD40: FLdRfVar var_B4
  loc_64FD43: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64FD48: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_64FD53: ILdRf var_88
  loc_64FD56: ImpAdCallFPR4 push Val()
  loc_64FD5B: CR8R8
  loc_64FD5C: LitI2_Byte 0
  loc_64FD5E: CR8I2
  loc_64FD5F: EqR4
  loc_64FD60: BranchF loc_64FDAD
  loc_64FD63: LitI4 1
  loc_64FD68: LitI4 1
  loc_64FD6D: LitVarStr var_C4, "0.0000"
  loc_64FD72: FStVarCopyObj var_D4
  loc_64FD75: FLdRfVar var_D4
  loc_64FD78: LitVarI2 var_B4, 0
  loc_64FD7D: FLdRfVar var_F4
  loc_64FD80: ImpAdCallFPR4  = Format(, )
  loc_64FD85: FLdRfVar var_F4
  loc_64FD88: CStrVarTmp
  loc_64FD89: CVarStr var_114
  loc_64FD8C: PopAdLdVar
  loc_64FD8D: FLdPrThis
  loc_64FD8E: VCallAd Control_ID_Text4
  loc_64FD91: FStAdFunc var_1DC
  loc_64FD94: FLdPr var_1DC
  loc_64FD97: LateIdSt
  loc_64FD9C: FFree1Ad var_1DC
  loc_64FD9F: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_64FDAA: Branch loc_64FE06
  loc_64FDAD: ILdRf var_88
  loc_64FDB0: ImpAdCallFPR4 push Val()
  loc_64FDB5: FStFPR8 var_1E4
  loc_64FDB8: LitI4 1
  loc_64FDBD: LitI4 1
  loc_64FDC2: LitVarStr var_C4, "0.0000"
  loc_64FDC7: FStVarCopyObj var_D4
  loc_64FDCA: FLdRfVar var_D4
  loc_64FDCD: FLdFPR8 var_1E4
  loc_64FDD0: LitI2 10000
  loc_64FDD3: CR8I2
  loc_64FDD4: DivR8
  loc_64FDD5: CVarR8
  loc_64FDD9: FLdRfVar var_F4
  loc_64FDDC: ImpAdCallFPR4  = Format(, )
  loc_64FDE1: FLdRfVar var_F4
  loc_64FDE4: CStrVarTmp
  loc_64FDE5: CVarStr var_114
  loc_64FDE8: PopAdLdVar
  loc_64FDE9: FLdPrThis
  loc_64FDEA: VCallAd Control_ID_Text4
  loc_64FDED: FStAdFunc var_1DC
  loc_64FDF0: FLdPr var_1DC
  loc_64FDF3: LateIdSt
  loc_64FDF8: FFree1Ad var_1DC
  loc_64FDFB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_64FE06: FLdPrThis
  loc_64FE07: VCallAd Control_ID_Text4
  loc_64FE0A: FStAdFunc var_1DC
  loc_64FE0D: FLdPr var_1DC
  loc_64FE10: LateIdLdVar var_B4 DispID_22 0
  loc_64FE17: CStrVarTmp
  loc_64FE18: CVarStr var_D4
  loc_64FE1B: FLdRfVar var_F4
  loc_64FE1E: ImpAdCallFPR4  = Trim()
  loc_64FE23: FLdRfVar var_F4
  loc_64FE26: CStrVarTmp
  loc_64FE27: FStStrNoPop var_94
  loc_64FE2A: FLdPr Me
  loc_64FE2D: MemLdRfVar from_stack_1.global_52
  loc_64FE30: StFixedStr
  loc_64FE33: FFree1Str var_94
  loc_64FE36: FFree1Ad var_1DC
  loc_64FE39: FFreeVar var_B4 = "": var_D4 = ""
  loc_64FE42: ExitProcHresult
End Sub

Private Sub txDensity_UnknownEvent_0 '5E2154
  'Data Table: 40C820
  loc_5E2100: LitVarI4
  loc_5E2108: PopAdLdVar
  loc_5E2109: FLdPrThis
  loc_5E210A: VCallAd Control_ID_txDensity
  loc_5E210D: FStAdFunc var_98
  loc_5E2110: FLdPr var_98
  loc_5E2113: LateIdSt
  loc_5E2118: FFree1Ad var_98
  loc_5E211B: FLdPrThis
  loc_5E211C: VCallAd Control_ID_txDensity
  loc_5E211F: FStAdFunc var_98
  loc_5E2122: FLdPr var_98
  loc_5E2125: LateIdLdVar var_A8 DispID_22 0
  loc_5E212C: CStrVarTmp
  loc_5E212D: FStStrNoPop var_AC
  loc_5E2130: FnLenStr
  loc_5E2131: CVarI4
  loc_5E2135: PopAdLdVar
  loc_5E2136: FLdPrThis
  loc_5E2137: VCallAd Control_ID_txDensity
  loc_5E213A: FStAdFunc var_B0
  loc_5E213D: FLdPr var_B0
  loc_5E2140: LateIdSt
  loc_5E2145: FFree1Str var_AC
  loc_5E2148: FFreeAd var_98 = ""
  loc_5E214F: FFree1Var var_A8 = ""
  loc_5E2152: ExitProcHresult
End Sub

Private Sub txDensity_KeyDown(KeyCode As Integer, Shift As Integer) '5D8B5C
  'Data Table: 40C820
  loc_5D8B2C: ILdI2 KeyCode
  loc_5D8B2F: LitI2_Byte &HD
  loc_5D8B31: EqI2
  loc_5D8B32: BranchF loc_5D8B3D
  loc_5D8B35: from_stack_1v = Proc_154_5_6398F8()
  loc_5D8B3A: Branch loc_5D8B5B
  loc_5D8B3D: ILdI2 KeyCode
  loc_5D8B40: LitI2_Byte &H1B
  loc_5D8B42: EqI2
  loc_5D8B43: BranchF loc_5D8B5B
  loc_5D8B46: ILdRf Me
  loc_5D8B49: FStAdNoPop
  loc_5D8B4D: ImpAdLdRf MemVar_7520D4
  loc_5D8B50: NewIfNullPr Global
  loc_5D8B53: Global.Unload from_stack_1
  loc_5D8B58: FFree1Ad var_88
  loc_5D8B5B: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '5D1E3C
  'Data Table: 40C820
  loc_5D1E24: ILdRf Me
  loc_5D1E27: FStAdNoPop
  loc_5D1E2B: ImpAdLdRf MemVar_7520D4
  loc_5D1E2E: NewIfNullPr Global
  loc_5D1E31: Global.Unload from_stack_1
  loc_5D1E36: FFree1Ad var_88
  loc_5D1E39: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '5C9298
  'Data Table: 40C820
  loc_5C9290: from_stack_1v = Proc_154_5_6398F8()
  loc_5C9295: ExitProcHresult
End Sub

Private Function Proc_154_5_6398F8() '6398F8
  'Data Table: 40C820
  loc_6396F4: FLdPr Me
  loc_6396F7: MemLdRfVar from_stack_1.global_52
  loc_6396FA: LdFixedStr
  loc_6396FD: PopTmpLdAdStr
  loc_639701: CVarRef
  loc_639706: FLdRfVar var_A8
  loc_639709: ImpAdCallFPR4  = Trim()
  loc_63970E: ILdRf var_88
  loc_639711: FLdPr Me
  loc_639714: MemLdRfVar from_stack_1.global_52
  loc_639717: StFixedStr
  loc_63971A: FLdRfVar var_A8
  loc_63971D: FLdPrThis
  loc_63971E: VCallAd Control_ID_txDensity
  loc_639721: FStAdFunc var_AC
  loc_639724: FLdPr var_AC
  loc_639727: LateIdLdVar var_BC DispID_22 0
  loc_63972E: CStrVarTmp
  loc_63972F: CVarStr var_CC
  loc_639732: FLdRfVar var_DC
  loc_639735: ImpAdCallFPR4  = Trim()
  loc_63973A: FLdRfVar var_DC
  loc_63973D: EqVarBool
  loc_63973F: FFree1Str var_88
  loc_639742: FFree1Ad var_AC
  loc_639745: FFreeVar var_BC = "": var_CC = "": var_A8 = ""
  loc_639750: BranchF loc_639769
  loc_639753: ILdRf Me
  loc_639756: FStAdNoPop
  loc_63975A: ImpAdLdRf MemVar_7520D4
  loc_63975D: NewIfNullPr Global
  loc_639760: Global.Unload from_stack_1
  loc_639765: FFree1Ad var_AC
  loc_639768: ExitProcHresult
  loc_639769: FLdRfVar var_F0
  loc_63976C: from_stack_1v = Proc_154_6_605634()
  loc_639771: FLdI2 var_F0
  loc_639774: BranchF loc_6398F5
  loc_639777: ImpAdCallUI1 Proc_155_3_5EE224()
  loc_63977D: LitI2_Byte &HD
  loc_63977F: EqI2
  loc_639780: BranchF loc_6397AC
  loc_639783: LitVar_Missing var_DC
  loc_639786: LitVar_Missing var_CC
  loc_639789: LitVar_Missing var_BC
  loc_63978C: LitI4 &H40
  loc_639791: LitStr "No se puede enviar un cambio de densidad debido a que se encuentra un cambio de precios pendiente. "
  loc_639794: LitStr "Intente nuevamente en unos minutos"
  loc_639797: ConcatStr
  loc_639798: CVarStr var_A8
  loc_63979B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6397A0: FFreeVar var_A8 = "": var_BC = "": var_CC = ""
  loc_6397AB: ExitProcHresult
  loc_6397AC: FLdPrThis
  loc_6397AD: VCallAd Control_ID_txDensity
  loc_6397B0: FStAdFunc var_AC
  loc_6397B3: FLdPr var_AC
  loc_6397B6: LateIdLdVar var_A8 DispID_22 0
  loc_6397BD: PopAd
  loc_6397BF: FLdPrThis
  loc_6397C0: VCallAd Control_ID_txDensity
  loc_6397C3: FStAdFunc var_114
  loc_6397C6: FLdPr var_114
  loc_6397C9: LateIdLdVar var_BC DispID_22 0
  loc_6397D0: PopAd
  loc_6397D2: LitVar_Missing var_DC
  loc_6397D5: LitI4 1
  loc_6397DA: FLdRfVar var_BC
  loc_6397DD: CStrVarTmp
  loc_6397DE: FStStrNoPop var_88
  loc_6397E1: LitStr "."
  loc_6397E4: LitI4 0
  loc_6397E9: FnInStr4
  loc_6397EB: LitI4 1
  loc_6397F0: AddI4
  loc_6397F1: FLdRfVar var_A8
  loc_6397F4: CStrVarTmp
  loc_6397F5: CVarStr var_CC
  loc_6397F8: FLdRfVar var_EC
  loc_6397FB: ImpAdCallFPR4  = Mid(, , )
  loc_639800: FLdRfVar var_F0
  loc_639803: FLdRfVar var_EC
  loc_639806: CStrVarTmp
  loc_639807: PopTmpLdAdStr
  loc_63980B: FLdRfVar var_118
  loc_63980E: ImpAdLdRf MemVar_74C760
  loc_639811: NewIfNullPr Formx
  loc_639814: from_stack_1v = Formx.global_4589716Get()
  loc_639819: FLdPr var_118
  loc_63981C: Call 0.Method_arg_380 ()
  loc_639821: FLdI2 var_F0
  loc_639824: FStI2 var_EE
  loc_639827: FFreeStr var_88 = ""
  loc_63982E: FFreeAd var_AC = "": var_114 = ""
  loc_639837: FFreeVar var_A8 = "": var_BC = "": var_CC = "": var_DC = ""
  loc_639844: FLdI2 var_EE
  loc_639847: LitI2_Byte 0
  loc_639849: EqI2
  loc_63984A: BranchF loc_639879
  loc_63984D: LitVar_Missing var_DC
  loc_639850: LitVar_Missing var_CC
  loc_639853: LitVar_Missing var_BC
  loc_639856: LitI4 &H40
  loc_63985B: LitVarStr var_98, "No se pudo guardar la densidad"
  loc_639860: FStVarCopyObj var_A8
  loc_639863: FLdRfVar var_A8
  loc_639866: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63986B: FFreeVar var_A8 = "": var_BC = "": var_CC = ""
  loc_639876: Branch loc_6398F5
  loc_639879: FLdI2 var_EE
  loc_63987C: LitI2_Byte 1
  loc_63987E: EqI2
  loc_63987F: BranchF loc_6398C3
  loc_639882: ILdRf Me
  loc_639885: FStAdNoPop
  loc_639889: ImpAdLdRf MemVar_7520D4
  loc_63988C: NewIfNullPr Global
  loc_63988F: Global.Unload from_stack_1
  loc_639894: FFree1Ad var_AC
  loc_639897: LitVar_Missing var_DC
  loc_63989A: LitVar_Missing var_CC
  loc_63989D: LitVar_Missing var_BC
  loc_6398A0: LitI4 &H40
  loc_6398A5: LitVarStr var_98, "El cambio de densidad fue realizado con exito."
  loc_6398AA: FStVarCopyObj var_A8
  loc_6398AD: FLdRfVar var_A8
  loc_6398B0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6398B5: FFreeVar var_A8 = "": var_BC = "": var_CC = ""
  loc_6398C0: Branch loc_6398F5
  loc_6398C3: FLdI2 var_EE
  loc_6398C6: LitI2_Byte 2
  loc_6398C8: EqI2
  loc_6398C9: BranchF loc_6398F5
  loc_6398CC: LitVar_Missing var_DC
  loc_6398CF: LitVar_Missing var_CC
  loc_6398D2: LitVar_Missing var_BC
  loc_6398D5: LitI4 &H40
  loc_6398DA: LitVarStr var_98, "Hay un cambio de densidad pendiente, vuelva a intentar cuando este finalize"
  loc_6398DF: FStVarCopyObj var_A8
  loc_6398E2: FLdRfVar var_A8
  loc_6398E5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6398EA: FFreeVar var_A8 = "": var_BC = "": var_CC = ""
  loc_6398F5: ExitProcHresult
End Function

Private Function Proc_154_6_605634() '605634
  'Data Table: 40C820
  loc_605564: LitI2_Byte 1
  loc_605566: FLdRfVar var_88
  loc_605569: FLdPrThis
  loc_60556A: VCallAd Control_ID_txDensity
  loc_60556D: FStAdFunc var_8C
  loc_605570: FLdPr var_8C
  loc_605573: LateIdLdVar var_9C DispID_22 0
  loc_60557A: CStrVarTmp
  loc_60557B: FStStrNoPop var_A0
  loc_60557E: FnLenStr
  loc_60557F: CI2I4
  loc_605580: FFree1Str var_A0
  loc_605583: FFree1Ad var_8C
  loc_605586: FFree1Var var_9C = ""
  loc_605589: ForI2 var_A4
  loc_60558F: FLdPrThis
  loc_605590: VCallAd Control_ID_txDensity
  loc_605593: FStAdFunc var_8C
  loc_605596: FLdPr var_8C
  loc_605599: LateIdLdVar var_9C DispID_22 0
  loc_6055A0: PopAd
  loc_6055A2: LitVarI2 var_D4, 1
  loc_6055A7: FLdI2 var_88
  loc_6055AA: CI4UI1
  loc_6055AB: FLdRfVar var_9C
  loc_6055AE: CStrVarTmp
  loc_6055AF: CVarStr var_B4
  loc_6055B2: FLdRfVar var_E4
  loc_6055B5: ImpAdCallFPR4  = Mid(, , )
  loc_6055BA: FLdRfVar var_E4
  loc_6055BD: LitVarStr var_F4, "#"
  loc_6055C2: HardType
  loc_6055C3: EqVarBool
  loc_6055C5: FFree1Ad var_8C
  loc_6055C8: FFreeVar var_9C = "": var_B4 = "": var_D4 = ""
  loc_6055D3: BranchF loc_60561F
  loc_6055D6: LitVar_Missing var_E4
  loc_6055D9: LitVar_Missing var_D4
  loc_6055DC: LitVar_Missing var_B4
  loc_6055DF: LitI4 &H40
  loc_6055E4: LitVarStr var_C4, "Debe completarse la densidad con caracateres númericos(0.####)"
  loc_6055E9: FStVarCopyObj var_9C
  loc_6055EC: FLdRfVar var_9C
  loc_6055EF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6055F4: FFreeVar var_9C = "": var_B4 = "": var_D4 = ""
  loc_6055FF: FLdPrThis
  loc_605600: VCallAd Control_ID_txDensity
  loc_605603: FStAdFunc var_8C
  loc_605606: FLdPr var_8C
  loc_605609: LateIdCall
  loc_605611: FFree1Ad var_8C
  loc_605614: LitI2_Byte 0
  loc_605616: FStI2 var_86
  loc_605619: ExitProcCbHresult
  loc_60561F: FLdRfVar var_88
  loc_605622: NextI2 var_A4, loc_60558F
  loc_605627: LitI2_Byte &HFF
  loc_605629: FStI2 var_86
  loc_60562C: ExitProcCbHresult
End Function
