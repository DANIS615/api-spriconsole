VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form Cambios_Diferidos
  Caption = "Cambios de Precios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = -15
  ClientTop = 315
  ClientWidth = 11910
  ClientHeight = 8565
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  PaletteMode = 1
  Moveable = 0   'False
  Begin Threed.SSPanel SSPanel1
    Left = 240
    Top = 240
    Width = 11415
    Height = 7095
    TabIndex = 4
    OleObjectBlob = "Cambios_Diferidos.frx":0000
    Begin MSFlexGridLib.MSFlexGrid Grid1
      Left = 240
      Top = 1380
      Width = 10815
      Height = 5415
      TabIndex = 0
      OleObjectBlob = "Cambios_Diferidos.frx":0079
    End
    Begin VB.Label Label2
      Caption = "Diferidos"
      BackColor = &H80000002&
      ForeColor = &H8000000E&
      Left = 60
      Top = 420
      Width = 11295
      Height = 495
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
  Begin Threed.SSCommand sscEliminar
    Left = 7200
    Top = 7560
    Width = 2175
    Height = 735
    TabIndex = 2
    OleObjectBlob = "Cambios_Diferidos.frx":0165
  End
  Begin Threed.SSCommand sscModificar
    Left = 4920
    Top = 7560
    Width = 2175
    Height = 735
    TabIndex = 1
    OleObjectBlob = "Cambios_Diferidos.frx":01D1
  End
  Begin Threed.SSCommand sscCancelar
    Left = 9480
    Top = 7560
    Width = 2175
    Height = 735
    TabIndex = 3
    OleObjectBlob = "Cambios_Diferidos.frx":023F
  End
End

Attribute VB_Name = "Cambios_Diferidos"


Private Sub sscModificar_UnknownEvent_8 '678D08
  'Data Table: 414810
  loc_6788E0: LitVarI4
  loc_6788E8: PopAdLdVar
  loc_6788E9: FLdPrThis
  loc_6788EA: VCallAd Control_ID_Grid1
  loc_6788ED: FStAdFunc var_B0
  loc_6788F0: FLdPr var_B0
  loc_6788F3: LateIdSt
  loc_6788F8: FFree1Ad var_B0
  loc_6788FB: FLdPrThis
  loc_6788FC: VCallAd Control_ID_Grid1
  loc_6788FF: FStAdFunc var_B0
  loc_678902: FLdPr var_B0
  loc_678905: LateIdLdVar var_C0 DispID_10 0
  loc_67890C: CI4Var
  loc_67890E: CVarI4
  loc_678912: PopAdLdVar
  loc_678913: LitVarI4
  loc_67891B: PopAdLdVar
  loc_67891C: FLdPrThis
  loc_67891D: VCallAd Control_ID_Grid1
  loc_678920: FStAdFunc var_D4
  loc_678923: FLdPr var_D4
  loc_678926: LateIdCallLdVar
  loc_678930: CStrVarTmp
  loc_678931: FStStrNoPop var_E8
  loc_678934: ImpAdLdRf MemVar_74DD0C
  loc_678937: NewIfNullPr frmProgramacionPrecios
  loc_67893A: Call frmProgramacionPrecios.strLevelPut(from_stack_1v)
  loc_67893F: FFree1Str var_E8
  loc_678942: FFreeAd var_B0 = ""
  loc_678949: FFreeVar var_C0 = ""
  loc_678950: FLdPrThis
  loc_678951: VCallAd Control_ID_txtNivel
  loc_678954: FStAdFunc var_B0
  loc_678957: FLdPr var_B0
  loc_67895A: LateIdLdVar var_C0 DispID_12 0
  loc_678961: CI4Var
  loc_678963: CVarI4
  loc_678967: PopAdLdVar
  loc_678968: FLdPrThis
  loc_678969: VCallAd Control_ID_txtNivel
  loc_67896C: FStAdFunc var_D4
  loc_67896F: FLdPr var_D4
  loc_678972: LateIdSt
  loc_678977: FFreeAd var_B0 = ""
  loc_67897E: FFree1Var var_C0 = ""
  loc_678981: FLdPrThis
  loc_678982: VCallAd Control_ID_txtNivel
  loc_678985: FStAdFunc var_B0
  loc_678988: FLdPr var_B0
  loc_67898B: LateIdLdVar var_C0 DispID_0 0
  loc_678992: PopAd
  loc_678994: FLdPrThis
  loc_678995: VCallAd Control_ID_txtNivel
  loc_678998: FStAdFunc var_D4
  loc_67899B: FLdPr var_D4
  loc_67899E: LateIdLdVar var_118 DispID_0 0
  loc_6789A5: PopAd
  loc_6789A7: FLdPrThis
  loc_6789A8: VCallAd Control_ID_txtNivel
  loc_6789AB: FStAdFunc var_15C
  loc_6789AE: FLdPr var_15C
  loc_6789B1: LateIdLdVar var_16C DispID_0 0
  loc_6789B8: PopAd
  loc_6789BA: FLdPrThis
  loc_6789BB: VCallAd Control_ID_txtNivel
  loc_6789BE: FStAdFunc var_1C0
  loc_6789C1: FLdPr var_1C0
  loc_6789C4: LateIdLdVar var_1D0 DispID_0 0
  loc_6789CB: PopAd
  loc_6789CD: FLdPrThis
  loc_6789CE: VCallAd Control_ID_txtNivel
  loc_6789D1: FStAdFunc var_224
  loc_6789D4: FLdPr var_224
  loc_6789D7: LateIdLdVar var_234 DispID_0 0
  loc_6789DE: PopAd
  loc_6789E0: LitVarI2 var_F8, 4
  loc_6789E5: LitI4 7
  loc_6789EA: FLdRfVar var_C0
  loc_6789ED: CStrVarTmp
  loc_6789EE: CVarStr var_E4
  loc_6789F1: FLdRfVar var_108
  loc_6789F4: ImpAdCallFPR4  = Mid(, , )
  loc_6789F9: FLdRfVar var_108
  loc_6789FC: LitVarI2 var_138, 2
  loc_678A01: LitI4 4
  loc_678A06: FLdRfVar var_118
  loc_678A09: CStrVarTmp
  loc_678A0A: CVarStr var_128
  loc_678A0D: FLdRfVar var_148
  loc_678A10: ImpAdCallFPR4  = Mid(, , )
  loc_678A15: FLdRfVar var_148
  loc_678A18: ConcatVar var_158
  loc_678A1C: LitVarI2 var_19C, 2
  loc_678A21: LitI4 1
  loc_678A26: FLdRfVar var_16C
  loc_678A29: CStrVarTmp
  loc_678A2A: CVarStr var_17C
  loc_678A2D: FLdRfVar var_1AC
  loc_678A30: ImpAdCallFPR4  = Mid(, , )
  loc_678A35: FLdRfVar var_1AC
  loc_678A38: ConcatVar var_1BC
  loc_678A3C: LitVarI2 var_200, 2
  loc_678A41: LitI4 &HD
  loc_678A46: FLdRfVar var_1D0
  loc_678A49: CStrVarTmp
  loc_678A4A: CVarStr var_1E0
  loc_678A4D: FLdRfVar var_210
  loc_678A50: ImpAdCallFPR4  = Mid(, , )
  loc_678A55: FLdRfVar var_210
  loc_678A58: ConcatVar var_220
  loc_678A5C: LitVarI2 var_264, 2
  loc_678A61: LitI4 &H10
  loc_678A66: FLdRfVar var_234
  loc_678A69: CStrVarTmp
  loc_678A6A: CVarStr var_244
  loc_678A6D: FLdRfVar var_274
  loc_678A70: ImpAdCallFPR4  = Mid(, , )
  loc_678A75: FLdRfVar var_274
  loc_678A78: ConcatVar var_284
  loc_678A7C: FStVar var_94
  loc_678A80: FFreeAd var_B0 = "": var_D4 = "": var_15C = "": var_1C0 = ""
  loc_678A8D: FFreeVar var_C0 = "": var_E4 = "": var_F8 = "": var_118 = "": var_128 = "": var_138 = "": var_108 = "": var_148 = "": var_16C = "": var_17C = "": var_19C = "": var_158 = "": var_1AC = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_1BC = "": var_210 = "": var_234 = "": var_244 = "": var_264 = "": var_220 = ""
  loc_678ABE: LitVarI4
  loc_678AC6: PopAdLdVar
  loc_678AC7: FLdPrThis
  loc_678AC8: VCallAd Control_ID_txtNivel
  loc_678ACB: FStAdFunc var_B0
  loc_678ACE: FLdPr var_B0
  loc_678AD1: LateIdSt
  loc_678AD6: FFree1Ad var_B0
  loc_678AD9: FLdPrThis
  loc_678ADA: VCallAd Control_ID_txtNivel
  loc_678ADD: FStAdFunc var_B0
  loc_678AE0: FLdPr var_B0
  loc_678AE3: LateIdLdVar var_C0 DispID_12 0
  loc_678AEA: CI4Var
  loc_678AEC: LitI4 1
  loc_678AF1: SubI4
  loc_678AF2: FLdRfVar var_286
  loc_678AF5: ImpAdLdRf MemVar_74A220
  loc_678AF8: NewIfNullPr clsProducts
  loc_678AFB: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_678B00: FLdI2 var_286
  loc_678B03: CI4UI1
  loc_678B04: IDvI4
  loc_678B05: CVarI4
  loc_678B09: PopAdLdVar
  loc_678B0A: FLdPrThis
  loc_678B0B: VCallAd Control_ID_Grid1
  loc_678B0E: FStAdFunc var_D4
  loc_678B11: FLdPr var_D4
  loc_678B14: LateIdSt
  loc_678B19: FFreeAd var_B0 = ""
  loc_678B20: FFree1Var var_C0 = ""
  loc_678B23: FLdPrThis
  loc_678B24: VCallAd Control_ID_Grid1
  loc_678B27: FStAdFunc var_B0
  loc_678B2A: FLdPr var_B0
  loc_678B2D: LateIdLdVar var_C0 DispID_10 0
  loc_678B34: CI4Var
  loc_678B36: FLdRfVar var_286
  loc_678B39: ImpAdLdRf MemVar_74A220
  loc_678B3C: NewIfNullPr clsProducts
  loc_678B3F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_678B44: FLdI2 var_286
  loc_678B47: CI4UI1
  loc_678B48: MulI4
  loc_678B49: CVarI4
  loc_678B4D: PopAdLdVar
  loc_678B4E: FLdPrThis
  loc_678B4F: VCallAd Control_ID_Grid1
  loc_678B52: FStAdFunc var_D4
  loc_678B55: FLdPr var_D4
  loc_678B58: LateIdSt
  loc_678B5D: FFreeAd var_B0 = ""
  loc_678B64: FFree1Var var_C0 = ""
  loc_678B67: LitStr vbNullString
  loc_678B6A: FStStrCopy var_98
  loc_678B6D: LitI2_Byte 1
  loc_678B6F: FLdRfVar var_9A
  loc_678B72: FLdRfVar var_286
  loc_678B75: ImpAdLdRf MemVar_74A220
  loc_678B78: NewIfNullPr clsProducts
  loc_678B7B: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_678B80: FLdI2 var_286
  loc_678B83: ForI2 var_28A
  loc_678B89: FLdPrThis
  loc_678B8A: VCallAd Control_ID_Grid1
  loc_678B8D: FStAdFunc var_B0
  loc_678B90: FLdPr var_B0
  loc_678B93: LateIdLdVar var_C0 DispID_10 0
  loc_678B9A: CI4Var
  loc_678B9C: LitI4 0
  loc_678BA1: EqI4
  loc_678BA2: FFree1Ad var_B0
  loc_678BA5: FFree1Var var_C0 = ""
  loc_678BA8: BranchF loc_678BC9
  loc_678BAB: LitVarI4
  loc_678BB3: PopAdLdVar
  loc_678BB4: FLdPrThis
  loc_678BB5: VCallAd Control_ID_Grid1
  loc_678BB8: FStAdFunc var_B0
  loc_678BBB: FLdPr var_B0
  loc_678BBE: LateIdSt
  loc_678BC3: FFree1Ad var_B0
  loc_678BC6: Branch loc_678C00
  loc_678BC9: FLdPrThis
  loc_678BCA: VCallAd Control_ID_Grid1
  loc_678BCD: FStAdFunc var_B0
  loc_678BD0: FLdPr var_B0
  loc_678BD3: LateIdLdVar var_C0 DispID_10 0
  loc_678BDA: CI4Var
  loc_678BDC: LitI4 1
  loc_678BE1: AddI4
  loc_678BE2: CVarI4
  loc_678BE6: PopAdLdVar
  loc_678BE7: FLdPrThis
  loc_678BE8: VCallAd Control_ID_Grid1
  loc_678BEB: FStAdFunc var_D4
  loc_678BEE: FLdPr var_D4
  loc_678BF1: LateIdSt
  loc_678BF6: FFreeAd var_B0 = ""
  loc_678BFD: FFree1Var var_C0 = ""
  loc_678C00: FLdPrThis
  loc_678C01: VCallAd Control_ID_Grid1
  loc_678C04: FStAdFunc var_B0
  loc_678C07: FLdPr var_B0
  loc_678C0A: LateIdLdVar var_C0 DispID_0 0
  loc_678C11: PopAd
  loc_678C13: ILdRf var_98
  loc_678C16: LitI4 1
  loc_678C1B: LitI4 1
  loc_678C20: LitVarStr var_D0, "000000"
  loc_678C25: FStVarCopyObj var_F8
  loc_678C28: FLdRfVar var_F8
  loc_678C2B: FLdRfVar var_C0
  loc_678C2E: CStrVarTmp
  loc_678C2F: FStStrNoPop var_E8
  loc_678C32: FnCSngStr
  loc_678C34: FnAbsR4
  loc_678C35: ImpAdLdFPR4 MemVar_74C2DC
  loc_678C38: MulR8
  loc_678C39: CI4R8
  loc_678C3A: CVarI4
  loc_678C3E: ImpAdCallI2 Format$(, )
  loc_678C43: FStStrNoPop var_290
  loc_678C46: ConcatStr
  loc_678C47: FStStr var_98
  loc_678C4A: FFreeStr var_E8 = ""
  loc_678C51: FFree1Ad var_B0
  loc_678C54: FFreeVar var_C0 = "": var_E4 = ""
  loc_678C5D: FLdRfVar var_9A
  loc_678C60: NextI2 var_28A, loc_678B89
  loc_678C65: FLdRfVar var_286
  loc_678C68: ImpAdLdRf MemVar_74A220
  loc_678C6B: NewIfNullPr clsProducts
  loc_678C6E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_678C73: FLdI2 var_286
  loc_678C76: LitI2_Byte 1
  loc_678C78: AddI2
  loc_678C79: FLdRfVar var_9A
  loc_678C7C: LitI2_Byte &HA
  loc_678C7E: ForI2 var_294
  loc_678C84: ILdRf var_98
  loc_678C87: LitStr "000000"
  loc_678C8A: ConcatStr
  loc_678C8B: FStStr var_98
  loc_678C8E: FLdRfVar var_9A
  loc_678C91: NextI2 var_294, loc_678C84
  loc_678C96: FLdRfVar var_94
  loc_678C99: CStrVarVal var_E8
  loc_678C9D: ImpAdLdRf MemVar_74DD0C
  loc_678CA0: NewIfNullPr frmProgramacionPrecios
  loc_678CA3: Call frmProgramacionPrecios.strFechaPut(from_stack_1v)
  loc_678CA8: FFree1Str var_E8
  loc_678CAB: ILdRf var_98
  loc_678CAE: ImpAdLdRf MemVar_74DD0C
  loc_678CB1: NewIfNullPr frmProgramacionPrecios
  loc_678CB4: Call frmProgramacionPrecios.strPrecioPut(from_stack_1v)
  loc_678CB9: LitI2_Byte &HFF
  loc_678CBB: ImpAdStI2 MemVar_74BEA8
  loc_678CBE: LitI2_Byte &HFF
  loc_678CC0: ImpAdStI2 MemVar_74C7C0
  loc_678CC3: LitVar_Missing var_D0
  loc_678CC6: PopAdLdVar
  loc_678CC7: LitVarI4
  loc_678CCF: PopAdLdVar
  loc_678CD0: ImpAdLdRf MemVar_74DD0C
  loc_678CD3: NewIfNullPr frmProgramacionPrecios
  loc_678CD6: frmProgramacionPrecios.Show from_stack_1, from_stack_2
  loc_678CDB: LitI2_Byte 0
  loc_678CDD: ImpAdStI2 MemVar_74BEA8
  loc_678CE0: LitI2_Byte 0
  loc_678CE2: ImpAdStI2 MemVar_74C7C0
  loc_678CE5: FLdPrThis
  loc_678CE6: VCallAd Control_ID_Grid1
  loc_678CE9: FStAdFunc var_B0
  loc_678CEC: FLdPr var_B0
  loc_678CEF: LateIdCall
  loc_678CF7: FFree1Ad var_B0
  loc_678CFA: Call Form_Load()
  loc_678CFF: Call Form_Activate()
  loc_678D04: ExitProcHresult
End Sub

Private Sub sscEliminar_UnknownEvent_8 '64233C
  'Data Table: 414810
  loc_64214C: LitVarI4
  loc_642154: PopAdLdVar
  loc_642155: FLdPrThis
  loc_642156: VCallAd Control_ID_Grid1
  loc_642159: FStAdFunc var_9C
  loc_64215C: FLdPr var_9C
  loc_64215F: LateIdSt
  loc_642164: FFree1Ad var_9C
  loc_642167: FLdPrThis
  loc_642168: VCallAd Control_ID_Grid1
  loc_64216B: FStAdFunc var_9C
  loc_64216E: FLdPr var_9C
  loc_642171: LateIdLdVar var_AC DispID_12 0
  loc_642178: CI4Var
  loc_64217A: CVarI4
  loc_64217E: PopAdLdVar
  loc_64217F: FLdPrThis
  loc_642180: VCallAd Control_ID_Grid1
  loc_642183: FStAdFunc var_B0
  loc_642186: FLdPr var_B0
  loc_642189: LateIdSt
  loc_64218E: FFreeAd var_9C = ""
  loc_642195: FFree1Var var_AC = ""
  loc_642198: FLdPrThis
  loc_642199: VCallAd Control_ID_Grid1
  loc_64219C: FStAdFunc var_9C
  loc_64219F: FLdPr var_9C
  loc_6421A2: LateIdLdVar var_AC DispID_0 0
  loc_6421A9: PopAd
  loc_6421AB: FLdPrThis
  loc_6421AC: VCallAd Control_ID_Grid1
  loc_6421AF: FStAdFunc var_B0
  loc_6421B2: FLdPr var_B0
  loc_6421B5: LateIdLdVar var_F0 DispID_0 0
  loc_6421BC: PopAd
  loc_6421BE: FLdPrThis
  loc_6421BF: VCallAd Control_ID_Grid1
  loc_6421C2: FStAdFunc var_144
  loc_6421C5: FLdPr var_144
  loc_6421C8: LateIdLdVar var_154 DispID_0 0
  loc_6421CF: PopAd
  loc_6421D1: FLdPrThis
  loc_6421D2: VCallAd Control_ID_Grid1
  loc_6421D5: FStAdFunc var_1A8
  loc_6421D8: FLdPr var_1A8
  loc_6421DB: LateIdLdVar var_1B8 DispID_0 0
  loc_6421E2: PopAd
  loc_6421E4: FLdPrThis
  loc_6421E5: VCallAd Control_ID_Grid1
  loc_6421E8: FStAdFunc var_20C
  loc_6421EB: FLdPr var_20C
  loc_6421EE: LateIdLdVar var_21C DispID_0 0
  loc_6421F5: PopAd
  loc_6421F7: LitVarI2 var_D0, 4
  loc_6421FC: LitI4 7
  loc_642201: FLdRfVar var_AC
  loc_642204: CStrVarTmp
  loc_642205: CVarStr var_C0
  loc_642208: FLdRfVar var_E0
  loc_64220B: ImpAdCallFPR4  = Mid(, , )
  loc_642210: FLdRfVar var_E0
  loc_642213: LitVarI2 var_120, 2
  loc_642218: LitI4 4
  loc_64221D: FLdRfVar var_F0
  loc_642220: CStrVarTmp
  loc_642221: CVarStr var_100
  loc_642224: FLdRfVar var_130
  loc_642227: ImpAdCallFPR4  = Mid(, , )
  loc_64222C: FLdRfVar var_130
  loc_64222F: ConcatVar var_140
  loc_642233: LitVarI2 var_184, 2
  loc_642238: LitI4 1
  loc_64223D: FLdRfVar var_154
  loc_642240: CStrVarTmp
  loc_642241: CVarStr var_164
  loc_642244: FLdRfVar var_194
  loc_642247: ImpAdCallFPR4  = Mid(, , )
  loc_64224C: FLdRfVar var_194
  loc_64224F: ConcatVar var_1A4
  loc_642253: LitVarI2 var_1E8, 2
  loc_642258: LitI4 &HD
  loc_64225D: FLdRfVar var_1B8
  loc_642260: CStrVarTmp
  loc_642261: CVarStr var_1C8
  loc_642264: FLdRfVar var_1F8
  loc_642267: ImpAdCallFPR4  = Mid(, , )
  loc_64226C: FLdRfVar var_1F8
  loc_64226F: ConcatVar var_208
  loc_642273: LitVarI2 var_24C, 2
  loc_642278: LitI4 &H10
  loc_64227D: FLdRfVar var_21C
  loc_642280: CStrVarTmp
  loc_642281: CVarStr var_22C
  loc_642284: FLdRfVar var_25C
  loc_642287: ImpAdCallFPR4  = Mid(, , )
  loc_64228C: FLdRfVar var_25C
  loc_64228F: ConcatVar var_26C
  loc_642293: CStrVarTmp
  loc_642294: FStStr var_88
  loc_642297: FFreeAd var_9C = "": var_B0 = "": var_144 = "": var_1A8 = ""
  loc_6422A4: FFreeVar var_AC = "": var_C0 = "": var_D0 = "": var_F0 = "": var_100 = "": var_120 = "": var_E0 = "": var_130 = "": var_154 = "": var_164 = "": var_184 = "": var_140 = "": var_194 = "": var_1B8 = "": var_1C8 = "": var_1E8 = "": var_1A4 = "": var_1F8 = "": var_21C = "": var_22C = "": var_24C = "": var_208 = "": var_25C = ""
  loc_6422D7: FLdRfVar var_26E
  loc_6422DA: ILdRf var_88
  loc_6422DD: FLdRfVar var_9C
  loc_6422E0: ImpAdLdRf MemVar_74C760
  loc_6422E3: NewIfNullPr Formx
  loc_6422E6: from_stack_1v = Formx.global_4589716Get()
  loc_6422EB: FLdPr var_9C
  loc_6422EE: Set from_stack_2 = Formx(from_stack_1)
  loc_6422F3: FLdI2 var_26E
  loc_6422F6: NotI4
  loc_6422F7: FFree1Ad var_9C
  loc_6422FA: BranchF loc_642329
  loc_6422FD: FLdRfVar var_AC
  loc_642300: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_642305: FLdRfVar var_AC
  loc_642308: CBoolVarNull
  loc_64230A: FFree1Var var_AC = ""
  loc_64230D: BranchF loc_642326
  loc_642310: ExitProcHresult
  loc_642311: ILdRf Me
  loc_642314: FStAdNoPop
  loc_642318: ImpAdLdRf MemVar_7520D4
  loc_64231B: NewIfNullPr Global
  loc_64231E: Global.Unload from_stack_1
  loc_642323: FFree1Ad var_9C
  loc_642326: Branch loc_6422D7
  loc_642329: LitI2_Byte &HFF
  loc_64232B: FLdPr Me
  loc_64232E: MemStI2 global_76
  loc_642331: Call Form_Activate()
  loc_642336: LitI2_Byte 0
  loc_642338: ImpAdStI2 MemVar_74BEA8
  loc_64233B: ExitProcHresult
End Sub

Private Sub sscCancelar_UnknownEvent_8 '5D39C0
  'Data Table: 414810
  loc_5D39A4: LitI2_Byte 0
  loc_5D39A6: ImpAdStI2 MemVar_74BEA8
  loc_5D39A9: ILdRf Me
  loc_5D39AC: FStAdNoPop
  loc_5D39B0: ImpAdLdRf MemVar_7520D4
  loc_5D39B3: NewIfNullPr Global
  loc_5D39B6: Global.Unload from_stack_1
  loc_5D39BB: FFree1Ad var_88
  loc_5D39BE: ExitProcHresult
End Sub

Private Sub Form_Load() '65EE1C
  'Data Table: 414810
  loc_65EAF8: LitI2_Byte 0
  loc_65EAFA: CR8I2
  loc_65EAFB: PopFPR4
  loc_65EAFC: FLdPr Me
  loc_65EAFF: Me.Top = from_stack_1s
  loc_65EB04: LitI2_Byte 0
  loc_65EB06: CR8I2
  loc_65EB07: PopFPR4
  loc_65EB08: FLdPr Me
  loc_65EB0B: Me.Left = from_stack_1s
  loc_65EB10: FLdRfVar var_90
  loc_65EB13: FLdRfVar var_8C
  loc_65EB16: ImpAdLdRf MemVar_7520D4
  loc_65EB19: NewIfNullPr Global
  loc_65EB1C:  = Global.Screen
  loc_65EB21: FLdPr var_8C
  loc_65EB24:  = Screen.TwipsPerPixelX
  loc_65EB29: LitI2 800
  loc_65EB2C: CR8I2
  loc_65EB2D: FLdFPR4 var_90
  loc_65EB30: MulR8
  loc_65EB31: PopFPR4
  loc_65EB32: FLdPr Me
  loc_65EB35: Me.Width = from_stack_1s
  loc_65EB3A: FFree1Ad var_8C
  loc_65EB3D: FLdRfVar var_90
  loc_65EB40: FLdRfVar var_8C
  loc_65EB43: ImpAdLdRf MemVar_7520D4
  loc_65EB46: NewIfNullPr Global
  loc_65EB49:  = Global.Screen
  loc_65EB4E: FLdPr var_8C
  loc_65EB51:  = Screen.TwipsPerPixelY
  loc_65EB56: LitI2 600
  loc_65EB59: CR8I2
  loc_65EB5A: FLdFPR4 var_90
  loc_65EB5D: MulR8
  loc_65EB5E: PopFPR4
  loc_65EB5F: FLdPr Me
  loc_65EB62: Me.Height = from_stack_1s
  loc_65EB67: FFree1Ad var_8C
  loc_65EB6A: ILdRf Me
  loc_65EB6D: CastAd
  loc_65EB70: FStAdFunc var_8C
  loc_65EB73: FLdRfVar var_8C
  loc_65EB76: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_65EB7B: FFree1Ad var_8C
  loc_65EB7E: LitVar_TRUE var_A0
  loc_65EB81: FLdPr Me
  loc_65EB84: MemStVar
  loc_65EB88: LitI2_Byte 0
  loc_65EB8A: FLdPr Me
  loc_65EB8D: MemStI2 global_76
  loc_65EB90: LitVar_FALSE
  loc_65EB94: PopAdLdVar
  loc_65EB95: FLdPrThis
  loc_65EB96: VCallAd Control_ID_sscModificar
  loc_65EB99: FStAdFunc var_8C
  loc_65EB9C: FLdPr var_8C
  loc_65EB9F: LateIdSt
  loc_65EBA4: FFree1Ad var_8C
  loc_65EBA7: LitVar_FALSE
  loc_65EBAB: PopAdLdVar
  loc_65EBAC: FLdPrThis
  loc_65EBAD: VCallAd Control_ID_sscEliminar
  loc_65EBB0: FStAdFunc var_8C
  loc_65EBB3: FLdPr var_8C
  loc_65EBB6: LateIdSt
  loc_65EBBB: FFree1Ad var_8C
  loc_65EBBE: LitVar_FALSE
  loc_65EBC2: PopAdLdVar
  loc_65EBC3: FLdPrThis
  loc_65EBC4: VCallAd Control_ID_Grid1
  loc_65EBC7: FStAdFunc var_8C
  loc_65EBCA: FLdPr var_8C
  loc_65EBCD: LateIdSt
  loc_65EBD2: FFree1Ad var_8C
  loc_65EBD5: FLdRfVar var_1DC
  loc_65EBD8: LitVar_Missing var_1D8
  loc_65EBDB: LitVar_Missing var_1B8
  loc_65EBDE: LitVar_Missing var_198
  loc_65EBE1: LitVar_Missing var_178
  loc_65EBE4: LitVar_Missing var_158
  loc_65EBE7: LitVar_Missing var_138
  loc_65EBEA: LitVar_Missing var_118
  loc_65EBED: LitVar_Missing var_F8
  loc_65EBF0: LitVar_Missing var_D8
  loc_65EBF3: LitVar_Missing var_B8
  loc_65EBF6: LitStr "Cambios de Precios"
  loc_65EBF9: FStStrCopy var_A8
  loc_65EBFC: FLdRfVar var_A8
  loc_65EBFF: LitI4 3
  loc_65EC04: PopTmpLdAdStr var_90
  loc_65EC07: LitI2_Byte &H24
  loc_65EC09: PopTmpLdAd2 var_A2
  loc_65EC0C: ImpAdLdRf MemVar_74C7D0
  loc_65EC0F: NewIfNullPr clsMsg
  loc_65EC12: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65EC17: ILdRf var_1DC
  loc_65EC1A: FLdPr Me
  loc_65EC1D: Me.Caption = from_stack_1
  loc_65EC22: FFreeStr var_A8 = ""
  loc_65EC29: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_65EC40: FLdRfVar var_1DC
  loc_65EC43: LitVar_Missing var_1D8
  loc_65EC46: LitVar_Missing var_1B8
  loc_65EC49: LitVar_Missing var_198
  loc_65EC4C: LitVar_Missing var_178
  loc_65EC4F: LitVar_Missing var_158
  loc_65EC52: LitVar_Missing var_138
  loc_65EC55: LitVar_Missing var_118
  loc_65EC58: LitVar_Missing var_F8
  loc_65EC5B: LitVar_Missing var_D8
  loc_65EC5E: LitVar_Missing var_B8
  loc_65EC61: LitStr "Diferidos"
  loc_65EC64: FStStrCopy var_A8
  loc_65EC67: FLdRfVar var_A8
  loc_65EC6A: LitI4 4
  loc_65EC6F: PopTmpLdAdStr var_90
  loc_65EC72: LitI2_Byte &H24
  loc_65EC74: PopTmpLdAd2 var_A2
  loc_65EC77: ImpAdLdRf MemVar_74C7D0
  loc_65EC7A: NewIfNullPr clsMsg
  loc_65EC7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65EC82: ILdRf var_1DC
  loc_65EC85: FLdPrThis
  loc_65EC86: VCallAd Control_ID_Label2
  loc_65EC89: FStAdFunc var_8C
  loc_65EC8C: FLdPr var_8C
  loc_65EC8F: Me.Caption = from_stack_1
  loc_65EC94: FFreeStr var_A8 = ""
  loc_65EC9B: FFree1Ad var_8C
  loc_65EC9E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_65ECB5: FLdRfVar var_1DC
  loc_65ECB8: LitVar_Missing var_1D8
  loc_65ECBB: LitVar_Missing var_1B8
  loc_65ECBE: LitVar_Missing var_198
  loc_65ECC1: LitVar_Missing var_178
  loc_65ECC4: LitVar_Missing var_158
  loc_65ECC7: LitVar_Missing var_138
  loc_65ECCA: LitVar_Missing var_118
  loc_65ECCD: LitVar_Missing var_F8
  loc_65ECD0: LitVar_Missing var_D8
  loc_65ECD3: LitVar_Missing var_B8
  loc_65ECD6: LitStr "&MODIFICAR"
  loc_65ECD9: FStStrCopy var_A8
  loc_65ECDC: FLdRfVar var_A8
  loc_65ECDF: LitI4 5
  loc_65ECE4: PopTmpLdAdStr var_90
  loc_65ECE7: LitI2_Byte &H24
  loc_65ECE9: PopTmpLdAd2 var_A2
  loc_65ECEC: ImpAdLdRf MemVar_74C7D0
  loc_65ECEF: NewIfNullPr clsMsg
  loc_65ECF2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65ECF7: FLdZeroAd var_1DC
  loc_65ECFA: CVarStr var_1EC
  loc_65ECFD: PopAdLdVar
  loc_65ECFE: FLdPrThis
  loc_65ECFF: VCallAd Control_ID_sscModificar
  loc_65ED02: FStAdFunc var_8C
  loc_65ED05: FLdPr var_8C
  loc_65ED08: LateIdSt
  loc_65ED0D: FFree1Str var_A8
  loc_65ED10: FFree1Ad var_8C
  loc_65ED13: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_65ED2C: FLdRfVar var_1DC
  loc_65ED2F: LitVar_Missing var_1D8
  loc_65ED32: LitVar_Missing var_1B8
  loc_65ED35: LitVar_Missing var_198
  loc_65ED38: LitVar_Missing var_178
  loc_65ED3B: LitVar_Missing var_158
  loc_65ED3E: LitVar_Missing var_138
  loc_65ED41: LitVar_Missing var_118
  loc_65ED44: LitVar_Missing var_F8
  loc_65ED47: LitVar_Missing var_D8
  loc_65ED4A: LitVar_Missing var_B8
  loc_65ED4D: LitStr "ELIMINAR"
  loc_65ED50: FStStrCopy var_A8
  loc_65ED53: FLdRfVar var_A8
  loc_65ED56: LitI4 6
  loc_65ED5B: PopTmpLdAdStr var_90
  loc_65ED5E: LitI2_Byte &H24
  loc_65ED60: PopTmpLdAd2 var_A2
  loc_65ED63: ImpAdLdRf MemVar_74C7D0
  loc_65ED66: NewIfNullPr clsMsg
  loc_65ED69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65ED6E: FLdZeroAd var_1DC
  loc_65ED71: CVarStr var_1EC
  loc_65ED74: PopAdLdVar
  loc_65ED75: FLdPrThis
  loc_65ED76: VCallAd Control_ID_sscEliminar
  loc_65ED79: FStAdFunc var_8C
  loc_65ED7C: FLdPr var_8C
  loc_65ED7F: LateIdSt
  loc_65ED84: FFree1Str var_A8
  loc_65ED87: FFree1Ad var_8C
  loc_65ED8A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_65EDA3: FLdRfVar var_1DC
  loc_65EDA6: LitVar_Missing var_1D8
  loc_65EDA9: LitVar_Missing var_1B8
  loc_65EDAC: LitVar_Missing var_198
  loc_65EDAF: LitVar_Missing var_178
  loc_65EDB2: LitVar_Missing var_158
  loc_65EDB5: LitVar_Missing var_138
  loc_65EDB8: LitVar_Missing var_118
  loc_65EDBB: LitVar_Missing var_F8
  loc_65EDBE: LitVar_Missing var_D8
  loc_65EDC1: LitVar_Missing var_B8
  loc_65EDC4: LitStr "CANCELAR"
  loc_65EDC7: FStStrCopy var_A8
  loc_65EDCA: FLdRfVar var_A8
  loc_65EDCD: LitI4 7
  loc_65EDD2: PopTmpLdAdStr var_90
  loc_65EDD5: LitI2_Byte &H24
  loc_65EDD7: PopTmpLdAd2 var_A2
  loc_65EDDA: ImpAdLdRf MemVar_74C7D0
  loc_65EDDD: NewIfNullPr clsMsg
  loc_65EDE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65EDE5: FLdZeroAd var_1DC
  loc_65EDE8: CVarStr var_1EC
  loc_65EDEB: PopAdLdVar
  loc_65EDEC: FLdPrThis
  loc_65EDED: VCallAd Control_ID_sscCancelar
  loc_65EDF0: FStAdFunc var_8C
  loc_65EDF3: FLdPr var_8C
  loc_65EDF6: LateIdSt
  loc_65EDFB: FFree1Str var_A8
  loc_65EDFE: FFree1Ad var_8C
  loc_65EE01: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_65EE1A: ExitProcHresult
End Sub

Private Sub Form_Activate() '621764
  'Data Table: 414810
  loc_62163C: LitI4 1
  loc_621641: LitI4 &H64
  loc_621646: FLdPr Me
  loc_621649: MemLdRfVar from_stack_1.global_56
  loc_62164C: Redim
  loc_621656: LitI2_Byte 0
  loc_621658: PopTmpLdAd2 var_86
  loc_62165B: ImpAdCallI2 Proc_53_4_718EF4()
  loc_621660: NotI4
  loc_621661: BranchF loc_62167A
  loc_621664: ILdRf Me
  loc_621667: FStAdNoPop
  loc_62166B: ImpAdLdRf MemVar_7520D4
  loc_62166E: NewIfNullPr Global
  loc_621671: Global.Unload from_stack_1
  loc_621676: FFree1Ad var_8C
  loc_621679: ExitProcHresult
  loc_62167A: from_stack_1v = Proc_110_10_6682D4()
  loc_62167F: FLdPr Me
  loc_621682: MemLdRfVar from_stack_1.global_60
  loc_621685: NotVar var_9C
  loc_621689: CBoolVarNull
  loc_62168B: BranchF loc_621743
  loc_62168E: FLdPr Me
  loc_621691: MemLdI2 global_76
  loc_621694: BranchF loc_6216B0
  loc_621697: ILdRf Me
  loc_62169A: FStAdNoPop
  loc_62169E: ImpAdLdRf MemVar_7520D4
  loc_6216A1: NewIfNullPr Global
  loc_6216A4: Global.Unload from_stack_1
  loc_6216A9: FFree1Ad var_8C
  loc_6216AC: ExitProcHresult
  loc_6216AD: Branch loc_621743
  loc_6216B0: FLdRfVar var_1D8
  loc_6216B3: LitVar_Missing var_1D4
  loc_6216B6: LitVar_Missing var_1B4
  loc_6216B9: LitVar_Missing var_194
  loc_6216BC: LitVar_Missing var_174
  loc_6216BF: LitVar_Missing var_154
  loc_6216C2: LitVar_Missing var_134
  loc_6216C5: LitVar_Missing var_114
  loc_6216C8: LitVar_Missing var_F4
  loc_6216CB: LitVar_Missing var_D4
  loc_6216CE: LitVar_Missing var_9C
  loc_6216D1: LitStr "No hay ningún precio pendiente"
  loc_6216D4: FStStrCopy var_A4
  loc_6216D7: FLdRfVar var_A4
  loc_6216DA: LitI4 1
  loc_6216DF: PopTmpLdAdStr var_A0
  loc_6216E2: LitI2_Byte &H24
  loc_6216E4: PopTmpLdAd2 var_86
  loc_6216E7: ImpAdLdRf MemVar_74C7D0
  loc_6216EA: NewIfNullPr clsMsg
  loc_6216ED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6216F2: LitVar_Missing var_248
  loc_6216F5: LitVar_Missing var_228
  loc_6216F8: LitVar_Missing var_208
  loc_6216FB: LitI4 0
  loc_621700: FLdZeroAd var_1D8
  loc_621703: CVarStr var_1E8
  loc_621706: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62170B: FFree1Str var_A4
  loc_62170E: FFreeVar var_9C = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_62172D: ILdRf Me
  loc_621730: FStAdNoPop
  loc_621734: ImpAdLdRf MemVar_7520D4
  loc_621737: NewIfNullPr Global
  loc_62173A: Global.Unload from_stack_1
  loc_62173F: FFree1Ad var_8C
  loc_621742: ExitProcHresult
  loc_621743: LitVar_TRUE var_B4
  loc_621746: PopAdLdVar
  loc_621747: FLdPrThis
  loc_621748: VCallAd Control_ID_Grid1
  loc_62174B: FStAdFunc var_8C
  loc_62174E: FLdPr var_8C
  loc_621751: LateIdSt
  loc_621756: FFree1Ad var_8C
  loc_621759: Call InicioGrilla()
  loc_62175E: Call CargaGrilla()
  loc_621763: ExitProcHresult
End Sub

Private Sub Grid1_UnknownEvent_8 '63401C
  'Data Table: 414810
  loc_633E44: LitI4 &HA
  loc_633E49: ImpAdLdRf MemVar_74A170
  loc_633E4C: Ary1LdI2
  loc_633E4D: NotI4
  loc_633E4E: CVarBoolI2 var_104
  loc_633E52: LitVarI2 var_B4, 3
  loc_633E57: LitI4 1
  loc_633E5C: ImpAdLdRf MemVar_74BF90
  loc_633E5F: CVarRef
  loc_633E64: FLdRfVar var_C4
  loc_633E67: ImpAdCallFPR4  = Mid(, , )
  loc_633E6C: FLdRfVar var_C4
  loc_633E6F: LitVarStr var_D4, "\\."
  loc_633E74: HardType
  loc_633E75: EqVar var_E4
  loc_633E79: NotVar var_F4
  loc_633E7D: AndVar var_114
  loc_633E81: CBoolVarNull
  loc_633E83: FFreeVar var_B4 = "": var_C4 = ""
  loc_633E8C: BranchF loc_633E95
  loc_633E8F: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_633E94: ExitProcHresult
  loc_633E95: FLdPrThis
  loc_633E96: VCallAd Control_ID_Grid1
  loc_633E99: FStAdFunc var_118
  loc_633E9C: FLdPr var_118
  loc_633E9F: LateIdLdVar var_B4 DispID_12 0
  loc_633EA6: CI4Var
  loc_633EA8: LitI4 0
  loc_633EAD: NeI4
  loc_633EAE: FFree1Ad var_118
  loc_633EB1: FFree1Var var_B4 = ""
  loc_633EB4: BranchF loc_63401A
  loc_633EB7: LitVarI4
  loc_633EBF: PopAdLdVar
  loc_633EC0: FLdPrThis
  loc_633EC1: VCallAd Control_ID_Grid1
  loc_633EC4: FStAdFunc var_118
  loc_633EC7: FLdPr var_118
  loc_633ECA: LateIdSt
  loc_633ECF: FFree1Ad var_118
  loc_633ED2: LitI4 1
  loc_633ED7: FLdPrThis
  loc_633ED8: VCallAd Control_ID_Grid1
  loc_633EDB: FStAdFunc var_118
  loc_633EDE: FLdPr var_118
  loc_633EE1: LateIdLdVar var_B4 DispID_10 0
  loc_633EE8: CI4Var
  loc_633EEA: CVarI4
  loc_633EEE: PopAdLdVar
  loc_633EEF: FLdPrThis
  loc_633EF0: VCallAd Control_ID_Grid1
  loc_633EF3: FStAdFunc var_11C
  loc_633EF6: FLdPr var_11C
  loc_633EF9: LateIdLdVar var_C4 DispID_11 0
  loc_633F00: CI4Var
  loc_633F02: CVarI4
  loc_633F06: PopAdLdVar
  loc_633F07: FLdPrThis
  loc_633F08: VCallAd Control_ID_Grid1
  loc_633F0B: FStAdFunc var_120
  loc_633F0E: FLdPr var_120
  loc_633F11: LateIdCallLdVar
  loc_633F1B: CStrVarTmp
  loc_633F1C: FStStrNoPop var_124
  loc_633F1F: LitStr "Interface"
  loc_633F22: LitI4 0
  loc_633F27: FnInStr4
  loc_633F29: LitI4 0
  loc_633F2E: GtI4
  loc_633F2F: FFree1Str var_124
  loc_633F32: FFreeAd var_118 = "": var_11C = ""
  loc_633F3B: FFreeVar var_B4 = "": var_C4 = ""
  loc_633F44: BranchF loc_633F8E
  loc_633F47: LitVar_TRUE var_94
  loc_633F4A: PopAdLdVar
  loc_633F4B: FLdPrThis
  loc_633F4C: VCallAd Control_ID_sscCancelar
  loc_633F4F: FStAdFunc var_118
  loc_633F52: FLdPr var_118
  loc_633F55: LateIdSt
  loc_633F5A: FFree1Ad var_118
  loc_633F5D: LitVar_FALSE
  loc_633F61: PopAdLdVar
  loc_633F62: FLdPrThis
  loc_633F63: VCallAd Control_ID_sscEliminar
  loc_633F66: FStAdFunc var_118
  loc_633F69: FLdPr var_118
  loc_633F6C: LateIdSt
  loc_633F71: FFree1Ad var_118
  loc_633F74: LitVar_FALSE
  loc_633F78: PopAdLdVar
  loc_633F79: FLdPrThis
  loc_633F7A: VCallAd Control_ID_sscModificar
  loc_633F7D: FStAdFunc var_118
  loc_633F80: FLdPr var_118
  loc_633F83: LateIdSt
  loc_633F88: FFree1Ad var_118
  loc_633F8B: Branch loc_63401A
  loc_633F8E: LitVar_TRUE var_94
  loc_633F91: PopAdLdVar
  loc_633F92: FLdPrThis
  loc_633F93: VCallAd Control_ID_sscCancelar
  loc_633F96: FStAdFunc var_118
  loc_633F99: FLdPr var_118
  loc_633F9C: LateIdSt
  loc_633FA1: FFree1Ad var_118
  loc_633FA4: LitVarI2 var_B4, 1
  loc_633FA9: LitI4 4
  loc_633FAE: ImpAdLdI4 MemVar_74BEAC
  loc_633FB1: ImpAdCallI2 Mid$(, , )
  loc_633FB6: FStStrNoPop var_124
  loc_633FB9: LitStr "1"
  loc_633FBC: NeStr
  loc_633FBE: CVarBoolI2 var_A4
  loc_633FC2: PopAdLdVar
  loc_633FC3: FLdPrThis
  loc_633FC4: VCallAd Control_ID_sscEliminar
  loc_633FC7: FStAdFunc var_118
  loc_633FCA: FLdPr var_118
  loc_633FCD: LateIdSt
  loc_633FD2: FFree1Str var_124
  loc_633FD5: FFree1Ad var_118
  loc_633FD8: FFreeVar var_B4 = ""
  loc_633FDF: LitVarI2 var_B4, 1
  loc_633FE4: LitI4 4
  loc_633FE9: ImpAdLdI4 MemVar_74BEAC
  loc_633FEC: ImpAdCallI2 Mid$(, , )
  loc_633FF1: FStStrNoPop var_124
  loc_633FF4: LitStr "1"
  loc_633FF7: NeStr
  loc_633FF9: CVarBoolI2 var_A4
  loc_633FFD: PopAdLdVar
  loc_633FFE: FLdPrThis
  loc_633FFF: VCallAd Control_ID_sscModificar
  loc_634002: FStAdFunc var_118
  loc_634005: FLdPr var_118
  loc_634008: LateIdSt
  loc_63400D: FFree1Str var_124
  loc_634010: FFree1Ad var_118
  loc_634013: FFreeVar var_B4 = ""
  loc_63401A: ExitProcHresult
End Sub

Private Sub Grid1_Scroll(arg_C, arg_10, arg_14) '660E18
  'Data Table: 414810
  loc_660B28: LitStr vbNullString
  loc_660B2B: FStStrCopy var_88
  loc_660B2E: LitStr vbNullString
  loc_660B31: FStStrCopy var_8C
  loc_660B34: LitVarI4
  loc_660B3C: PopAdLdVar
  loc_660B3D: FLdPrThis
  loc_660B3E: VCallAd Control_ID_Grid1
  loc_660B41: FStAdFunc var_A0
  loc_660B44: FLdPr var_A0
  loc_660B47: LateIdSt
  loc_660B4C: FFree1Ad var_A0
  loc_660B4F: FLdRfVar arg_C
  loc_660B52: CDargRef
  loc_660B56: FLdPrThis
  loc_660B57: VCallAd Control_ID_Grid1
  loc_660B5A: FStAdFunc var_A0
  loc_660B5D: FLdPr var_A0
  loc_660B60: LateIdSt
  loc_660B65: FFree1Ad var_A0
  loc_660B68: FLdPrThis
  loc_660B69: VCallAd Control_ID_Grid1
  loc_660B6C: FStAdFunc var_A0
  loc_660B6F: FLdPr var_A0
  loc_660B72: LateIdLdVar var_B0 DispID_0 0
  loc_660B79: PopAd
  loc_660B7B: FLdPrThis
  loc_660B7C: VCallAd Control_ID_Grid1
  loc_660B7F: FStAdFunc var_E4
  loc_660B82: FLdPr var_E4
  loc_660B85: LateIdLdVar var_F4 DispID_0 0
  loc_660B8C: PopAd
  loc_660B8E: FLdPrThis
  loc_660B8F: VCallAd Control_ID_Grid1
  loc_660B92: FStAdFunc var_148
  loc_660B95: FLdPr var_148
  loc_660B98: LateIdLdVar var_158 DispID_0 0
  loc_660B9F: PopAd
  loc_660BA1: FLdPrThis
  loc_660BA2: VCallAd Control_ID_Grid1
  loc_660BA5: FStAdFunc var_1AC
  loc_660BA8: FLdPr var_1AC
  loc_660BAB: LateIdLdVar var_1BC DispID_0 0
  loc_660BB2: PopAd
  loc_660BB4: FLdPrThis
  loc_660BB5: VCallAd Control_ID_Grid1
  loc_660BB8: FStAdFunc var_210
  loc_660BBB: FLdPr var_210
  loc_660BBE: LateIdLdVar var_220 DispID_0 0
  loc_660BC5: PopAd
  loc_660BC7: LitVarI2 var_D0, 4
  loc_660BCC: LitI4 7
  loc_660BD1: FLdRfVar var_B0
  loc_660BD4: CStrVarTmp
  loc_660BD5: CVarStr var_C0
  loc_660BD8: FLdRfVar var_E0
  loc_660BDB: ImpAdCallFPR4  = Mid(, , )
  loc_660BE0: FLdRfVar var_E0
  loc_660BE3: LitVarI2 var_124, 2
  loc_660BE8: LitI4 4
  loc_660BED: FLdRfVar var_F4
  loc_660BF0: CStrVarTmp
  loc_660BF1: CVarStr var_104
  loc_660BF4: FLdRfVar var_134
  loc_660BF7: ImpAdCallFPR4  = Mid(, , )
  loc_660BFC: FLdRfVar var_134
  loc_660BFF: ConcatVar var_144
  loc_660C03: LitVarI2 var_188, 2
  loc_660C08: LitI4 1
  loc_660C0D: FLdRfVar var_158
  loc_660C10: CStrVarTmp
  loc_660C11: CVarStr var_168
  loc_660C14: FLdRfVar var_198
  loc_660C17: ImpAdCallFPR4  = Mid(, , )
  loc_660C1C: FLdRfVar var_198
  loc_660C1F: ConcatVar var_1A8
  loc_660C23: LitVarI2 var_1EC, 2
  loc_660C28: LitI4 &HD
  loc_660C2D: FLdRfVar var_1BC
  loc_660C30: CStrVarTmp
  loc_660C31: CVarStr var_1CC
  loc_660C34: FLdRfVar var_1FC
  loc_660C37: ImpAdCallFPR4  = Mid(, , )
  loc_660C3C: FLdRfVar var_1FC
  loc_660C3F: ConcatVar var_20C
  loc_660C43: LitVarI2 var_250, 2
  loc_660C48: LitI4 &H10
  loc_660C4D: FLdRfVar var_220
  loc_660C50: CStrVarTmp
  loc_660C51: CVarStr var_230
  loc_660C54: FLdRfVar var_260
  loc_660C57: ImpAdCallFPR4  = Mid(, , )
  loc_660C5C: FLdRfVar var_260
  loc_660C5F: ConcatVar var_270
  loc_660C63: CStrVarTmp
  loc_660C64: FStStr var_88
  loc_660C67: FFreeAd var_A0 = "": var_E4 = "": var_148 = "": var_1AC = ""
  loc_660C74: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = "": var_1BC = "": var_1CC = "": var_1EC = "": var_1A8 = "": var_1FC = "": var_220 = "": var_230 = "": var_250 = "": var_20C = "": var_260 = ""
  loc_660CA7: FLdRfVar arg_10
  loc_660CAA: CDargRef
  loc_660CAE: FLdPrThis
  loc_660CAF: VCallAd Control_ID_Grid1
  loc_660CB2: FStAdFunc var_A0
  loc_660CB5: FLdPr var_A0
  loc_660CB8: LateIdSt
  loc_660CBD: FFree1Ad var_A0
  loc_660CC0: FLdPrThis
  loc_660CC1: VCallAd Control_ID_Grid1
  loc_660CC4: FStAdFunc var_A0
  loc_660CC7: FLdPr var_A0
  loc_660CCA: LateIdLdVar var_B0 DispID_0 0
  loc_660CD1: PopAd
  loc_660CD3: FLdPrThis
  loc_660CD4: VCallAd Control_ID_Grid1
  loc_660CD7: FStAdFunc var_E4
  loc_660CDA: FLdPr var_E4
  loc_660CDD: LateIdLdVar var_F4 DispID_0 0
  loc_660CE4: PopAd
  loc_660CE6: FLdPrThis
  loc_660CE7: VCallAd Control_ID_Grid1
  loc_660CEA: FStAdFunc var_148
  loc_660CED: FLdPr var_148
  loc_660CF0: LateIdLdVar var_158 DispID_0 0
  loc_660CF7: PopAd
  loc_660CF9: FLdPrThis
  loc_660CFA: VCallAd Control_ID_Grid1
  loc_660CFD: FStAdFunc var_1AC
  loc_660D00: FLdPr var_1AC
  loc_660D03: LateIdLdVar var_1BC DispID_0 0
  loc_660D0A: PopAd
  loc_660D0C: FLdPrThis
  loc_660D0D: VCallAd Control_ID_Grid1
  loc_660D10: FStAdFunc var_210
  loc_660D13: FLdPr var_210
  loc_660D16: LateIdLdVar var_220 DispID_0 0
  loc_660D1D: PopAd
  loc_660D1F: LitVarI2 var_D0, 4
  loc_660D24: LitI4 7
  loc_660D29: FLdRfVar var_B0
  loc_660D2C: CStrVarTmp
  loc_660D2D: CVarStr var_C0
  loc_660D30: FLdRfVar var_E0
  loc_660D33: ImpAdCallFPR4  = Mid(, , )
  loc_660D38: FLdRfVar var_E0
  loc_660D3B: LitVarI2 var_124, 2
  loc_660D40: LitI4 4
  loc_660D45: FLdRfVar var_F4
  loc_660D48: CStrVarTmp
  loc_660D49: CVarStr var_104
  loc_660D4C: FLdRfVar var_134
  loc_660D4F: ImpAdCallFPR4  = Mid(, , )
  loc_660D54: FLdRfVar var_134
  loc_660D57: ConcatVar var_144
  loc_660D5B: LitVarI2 var_188, 2
  loc_660D60: LitI4 1
  loc_660D65: FLdRfVar var_158
  loc_660D68: CStrVarTmp
  loc_660D69: CVarStr var_168
  loc_660D6C: FLdRfVar var_198
  loc_660D6F: ImpAdCallFPR4  = Mid(, , )
  loc_660D74: FLdRfVar var_198
  loc_660D77: ConcatVar var_1A8
  loc_660D7B: LitVarI2 var_1EC, 2
  loc_660D80: LitI4 &HD
  loc_660D85: FLdRfVar var_1BC
  loc_660D88: CStrVarTmp
  loc_660D89: CVarStr var_1CC
  loc_660D8C: FLdRfVar var_1FC
  loc_660D8F: ImpAdCallFPR4  = Mid(, , )
  loc_660D94: FLdRfVar var_1FC
  loc_660D97: ConcatVar var_20C
  loc_660D9B: LitVarI2 var_250, 2
  loc_660DA0: LitI4 &H10
  loc_660DA5: FLdRfVar var_220
  loc_660DA8: CStrVarTmp
  loc_660DA9: CVarStr var_230
  loc_660DAC: FLdRfVar var_260
  loc_660DAF: ImpAdCallFPR4  = Mid(, , )
  loc_660DB4: FLdRfVar var_260
  loc_660DB7: ConcatVar var_270
  loc_660DBB: CStrVarTmp
  loc_660DBC: FStStr var_8C
  loc_660DBF: FFreeAd var_A0 = "": var_E4 = "": var_148 = "": var_1AC = ""
  loc_660DCC: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = "": var_1BC = "": var_1CC = "": var_1EC = "": var_1A8 = "": var_1FC = "": var_220 = "": var_230 = "": var_250 = "": var_20C = "": var_260 = ""
  loc_660DFF: ILdRf var_88
  loc_660E02: ILdRf var_8C
  loc_660E05: LtStr
  loc_660E07: BranchF loc_660E12
  loc_660E0A: LitI2_Byte &HFF
  loc_660E0C: IStI2 arg_14
  loc_660E0F: Branch loc_660E17
  loc_660E12: LitI2_Byte 1
  loc_660E14: IStI2 arg_14
  loc_660E17: ExitProcHresult
End Sub

Public Sub InicioGrilla() '616084
  'Data Table: 414810
  loc_615F5C: LitVarI4
  loc_615F64: PopAdLdVar
  loc_615F65: FLdPrThis
  loc_615F66: VCallAd Control_ID_Grid1
  loc_615F69: FStAdFunc var_98
  loc_615F6C: FLdPr var_98
  loc_615F6F: LateIdSt
  loc_615F74: FFree1Ad var_98
  loc_615F77: LitVarI4
  loc_615F7F: PopAdLdVar
  loc_615F80: FLdPrThis
  loc_615F81: VCallAd Control_ID_Grid1
  loc_615F84: FStAdFunc var_98
  loc_615F87: FLdPr var_98
  loc_615F8A: LateIdSt
  loc_615F8F: FFree1Ad var_98
  loc_615F92: LitVarI4
  loc_615F9A: PopAdLdVar
  loc_615F9B: FLdPrThis
  loc_615F9C: VCallAd Control_ID_Grid1
  loc_615F9F: FStAdFunc var_98
  loc_615FA2: FLdPr var_98
  loc_615FA5: LateIdSt
  loc_615FAA: FFree1Ad var_98
  loc_615FAD: LitVarI4
  loc_615FB5: PopAdLdVar
  loc_615FB6: LitVar_TRUE var_A8
  loc_615FB9: PopAdLdVar
  loc_615FBA: FLdPrThis
  loc_615FBB: VCallAd Control_ID_Grid1
  loc_615FBE: FStAdFunc var_98
  loc_615FC1: FLdPr var_98
  loc_615FC4: LateIdCallSt
  loc_615FCC: FFree1Ad var_98
  loc_615FCF: LitVarI4
  loc_615FD7: PopAdLdVar
  loc_615FD8: LitVar_FALSE
  loc_615FDC: PopAdLdVar
  loc_615FDD: FLdPrThis
  loc_615FDE: VCallAd Control_ID_Grid1
  loc_615FE1: FStAdFunc var_98
  loc_615FE4: FLdPr var_98
  loc_615FE7: LateIdCallSt
  loc_615FEF: FFree1Ad var_98
  loc_615FF2: LitVarI4
  loc_615FFA: PopAdLdVar
  loc_615FFB: LitVar_FALSE
  loc_615FFF: PopAdLdVar
  loc_616000: FLdPrThis
  loc_616001: VCallAd Control_ID_Grid1
  loc_616004: FStAdFunc var_98
  loc_616007: FLdPr var_98
  loc_61600A: LateIdCallSt
  loc_616012: FFree1Ad var_98
  loc_616015: LitVarI4
  loc_61601D: PopAdLdVar
  loc_61601E: LitVar_FALSE
  loc_616022: PopAdLdVar
  loc_616023: FLdPrThis
  loc_616024: VCallAd Control_ID_Grid1
  loc_616027: FStAdFunc var_98
  loc_61602A: FLdPr var_98
  loc_61602D: LateIdCallSt
  loc_616035: FFree1Ad var_98
  loc_616038: LitVarStr var_94, "Arial"
  loc_61603D: PopAdLdVar
  loc_61603E: FLdPrThis
  loc_61603F: VCallAd Control_ID_Grid1
  loc_616042: FStAdFunc var_98
  loc_616045: FLdPr var_98
  loc_616048: LateIdLdVar var_B8 DispID_-512 -1
  loc_61604F: CastAdVar Me
  loc_616053: FStAdFunc var_BC
  loc_616056: FLdPr var_BC
  loc_616059: LateIdSt
  loc_61605E: FFreeAd var_98 = ""
  loc_616065: FFree1Var var_B8 = ""
  loc_616068: LitI2_Byte &HE
  loc_61606A: CR8I2
  loc_61606B: CVarR4
  loc_61606F: PopAdLdVar
  loc_616070: FLdPrThis
  loc_616071: VCallAd Control_ID_Grid1
  loc_616074: FStAdFunc var_98
  loc_616077: FLdPr var_98
  loc_61607A: LateIdSt
  loc_61607F: FFree1Ad var_98
  loc_616082: ExitProcHresult
End Sub

Public Sub CargaGrilla() '676B84
  'Data Table: 414810
  loc_676760: FLdPrThis
  loc_676761: VCallAd Control_ID_Grid1
  loc_676764: FStAdFunc var_A0
  loc_676767: FLdPr var_A0
  loc_67676A: LateIdCall
  loc_676772: FFree1Ad var_A0
  loc_676775: LitVar_FALSE
  loc_676779: PopAdLdVar
  loc_67677A: FLdPrThis
  loc_67677B: VCallAd Control_ID_Grid1
  loc_67677E: FStAdFunc var_A0
  loc_676781: FLdPr var_A0
  loc_676784: LateIdSt
  loc_676789: FFree1Ad var_A0
  loc_67678C: FLdRfVar var_1F0
  loc_67678F: LitVar_Missing var_1EC
  loc_676792: LitVar_Missing var_1CC
  loc_676795: LitVar_Missing var_1AC
  loc_676798: LitVar_Missing var_18C
  loc_67679B: LitVar_Missing var_16C
  loc_67679E: LitVar_Missing var_14C
  loc_6767A1: LitVar_Missing var_12C
  loc_6767A4: LitVar_Missing var_10C
  loc_6767A7: LitVar_Missing var_EC
  loc_6767AA: LitVar_Missing var_CC
  loc_6767AD: LitStr "<FECHA, HORA y MODO       |<PRODUCTO                   |<NIVEL    |<PPU"
  loc_6767B0: FStStrCopy var_BC
  loc_6767B3: FLdRfVar var_BC
  loc_6767B6: LitI4 2
  loc_6767BB: PopTmpLdAdStr var_B8
  loc_6767BE: LitI2_Byte &H24
  loc_6767C0: PopTmpLdAd2 var_B2
  loc_6767C3: ImpAdLdRf MemVar_74C7D0
  loc_6767C6: NewIfNullPr clsMsg
  loc_6767C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6767CE: ILdRf var_1F0
  loc_6767D1: LitStr "                   "
  loc_6767D4: ConcatStr
  loc_6767D5: CVarStr var_200
  loc_6767D8: PopAdLdVar
  loc_6767D9: FLdPrThis
  loc_6767DA: VCallAd Control_ID_Grid1
  loc_6767DD: FStAdFunc var_A0
  loc_6767E0: FLdPr var_A0
  loc_6767E3: LateIdSt
  loc_6767E8: FFreeStr var_BC = ""
  loc_6767EF: FFree1Ad var_A0
  loc_6767F2: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = ""
  loc_67680B: LitVarI4
  loc_676813: PopAdLdVar
  loc_676814: LitI4 7
  loc_676819: CI2I4
  loc_67681A: CVarI2 var_DC
  loc_67681D: PopAdLdVar
  loc_67681E: FLdPrThis
  loc_67681F: VCallAd Control_ID_Grid1
  loc_676822: FStAdFunc var_A0
  loc_676825: FLdPr var_A0
  loc_676828: LateIdCallSt
  loc_676830: FFree1Ad var_A0
  loc_676833: LitI2_Byte 1
  loc_676835: CUI1I2
  loc_676837: FLdRfVar var_88
  loc_67683A: LitI2_Byte &H64
  loc_67683C: CUI1I2
  loc_67683E: ForUI1 var_204
  loc_676844: LitI2_Byte 1
  loc_676846: CUI1I2
  loc_676848: FLdRfVar var_8A
  loc_67684B: LitI2_Byte 5
  loc_67684D: CUI1I2
  loc_67684F: ForUI1 var_208
  loc_676855: FLdUI1
  loc_676859: CI4UI1
  loc_67685A: FLdPr Me
  loc_67685D: MemLdStr global_56
  loc_676860: Ary1LdPr
  loc_676861: MemLdStr global_400
  loc_676864: ImpAdCallFPR4 push Val()
  loc_676869: CR8R8
  loc_67686A: LitI2_Byte 0
  loc_67686C: CR8I2
  loc_67686D: NeR8
  loc_67686E: BranchF loc_676B59
  loc_676871: LitI2_Byte 1
  loc_676873: CUI1I2
  loc_676875: FLdRfVar var_86
  loc_676878: FLdRfVar var_B2
  loc_67687B: ImpAdLdRf MemVar_74A220
  loc_67687E: NewIfNullPr clsProducts
  loc_676881: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_676886: FLdI2 var_B2
  loc_676889: CUI1I2
  loc_67688B: ForUI1 var_20C
  loc_676891: LitVarI2 var_CC, 2
  loc_676896: LitI4 7
  loc_67689B: FLdUI1
  loc_67689F: CI4UI1
  loc_6768A0: FLdPr Me
  loc_6768A3: MemLdStr global_56
  loc_6768A6: AryLock
  loc_6768A9: Ary1LdPr
  loc_6768AA: MemLdRfVar from_stack_1.global_400
  loc_6768AD: CVarRef
  loc_6768B2: FLdRfVar var_EC
  loc_6768B5: ImpAdCallFPR4  = Mid(, , )
  loc_6768BA: AryUnlock
  loc_6768BD: FLdRfVar var_EC
  loc_6768C0: LitVarStr var_FC, "/"
  loc_6768C5: ConcatVar var_10C
  loc_6768C9: LitVarI2 var_12C, 2
  loc_6768CE: LitI4 5
  loc_6768D3: FLdUI1
  loc_6768D7: CI4UI1
  loc_6768D8: FLdPr Me
  loc_6768DB: MemLdStr global_56
  loc_6768DE: AryLock
  loc_6768E1: Ary1LdPr
  loc_6768E2: MemLdRfVar from_stack_1.global_400
  loc_6768E5: CVarRef
  loc_6768EA: FLdRfVar var_14C
  loc_6768ED: ImpAdCallFPR4  = Mid(, , )
  loc_6768F2: AryUnlock
  loc_6768F5: FLdRfVar var_14C
  loc_6768F8: ConcatVar var_16C
  loc_6768FC: LitVarStr var_15C, "/"
  loc_676901: ConcatVar var_18C
  loc_676905: LitVarI2 var_1AC, 4
  loc_67690A: LitI4 1
  loc_67690F: FLdUI1
  loc_676913: CI4UI1
  loc_676914: FLdPr Me
  loc_676917: MemLdStr global_56
  loc_67691A: AryLock
  loc_67691D: Ary1LdPr
  loc_67691E: MemLdRfVar from_stack_1.global_400
  loc_676921: CVarRef
  loc_676926: FLdRfVar var_1CC
  loc_676929: ImpAdCallFPR4  = Mid(, , )
  loc_67692E: AryUnlock
  loc_676931: FLdRfVar var_1CC
  loc_676934: ConcatVar var_1EC
  loc_676938: CStrVarTmp
  loc_676939: FStStr var_90
  loc_67693C: FFreeVar var_CC = "": var_EC = "": var_12C = "": var_10C = "": var_14C = "": var_16C = "": var_1AC = "": var_18C = "": var_1CC = ""
  loc_676953: LitVarI2 var_CC, 2
  loc_676958: LitI4 9
  loc_67695D: FLdUI1
  loc_676961: CI4UI1
  loc_676962: FLdPr Me
  loc_676965: MemLdStr global_56
  loc_676968: AryLock
  loc_67696B: Ary1LdPr
  loc_67696C: MemLdRfVar from_stack_1.global_400
  loc_67696F: CVarRef
  loc_676974: FLdRfVar var_EC
  loc_676977: ImpAdCallFPR4  = Mid(, , )
  loc_67697C: AryUnlock
  loc_67697F: FLdRfVar var_EC
  loc_676982: LitVarStr var_FC, ":"
  loc_676987: ConcatVar var_10C
  loc_67698B: LitVarI2 var_12C, 2
  loc_676990: LitI4 &HB
  loc_676995: FLdUI1
  loc_676999: CI4UI1
  loc_67699A: FLdPr Me
  loc_67699D: MemLdStr global_56
  loc_6769A0: AryLock
  loc_6769A3: Ary1LdPr
  loc_6769A4: MemLdRfVar from_stack_1.global_400
  loc_6769A7: CVarRef
  loc_6769AC: FLdRfVar var_14C
  loc_6769AF: ImpAdCallFPR4  = Mid(, , )
  loc_6769B4: AryUnlock
  loc_6769B7: FLdRfVar var_14C
  loc_6769BA: ConcatVar var_16C
  loc_6769BE: CStrVarTmp
  loc_6769BF: FStStr var_94
  loc_6769C2: FFreeVar var_CC = "": var_EC = "": var_12C = "": var_10C = "": var_14C = ""
  loc_6769D1: FLdUI1
  loc_6769D5: CI4UI1
  loc_6769D6: FLdPr Me
  loc_6769D9: MemLdStr global_56
  loc_6769DC: Ary1LdPr
  loc_6769DD: MemLdUI1 global_405
  loc_6769E1: CI2UI1
  loc_6769E3: LitI2_Byte 0
  loc_6769E5: EqI2
  loc_6769E6: BranchF loc_6769F2
  loc_6769E9: LitStr " Pantalla"
  loc_6769EC: FStStrCopy var_98
  loc_6769EF: Branch loc_676A10
  loc_6769F2: FLdUI1
  loc_6769F6: CI4UI1
  loc_6769F7: FLdPr Me
  loc_6769FA: MemLdStr global_56
  loc_6769FD: Ary1LdPr
  loc_6769FE: MemLdUI1 global_405
  loc_676A02: CI2UI1
  loc_676A04: LitI2_Byte 1
  loc_676A06: EqI2
  loc_676A07: BranchF loc_676A10
  loc_676A0A: LitStr " Interface"
  loc_676A0D: FStStrCopy var_98
  loc_676A10: FLdUI1
  loc_676A14: CI4UI1
  loc_676A15: FLdUI1
  loc_676A19: CI4UI1
  loc_676A1A: FLdUI1
  loc_676A1E: CI4UI1
  loc_676A1F: FLdPr Me
  loc_676A22: MemLdStr global_56
  loc_676A25: Ary1LdPr
  loc_676A26: MemLdRfVar from_stack_1.global_0
  loc_676A29: AryInRecLdPr
  loc_676A2F: MemLdR8 global_0
  loc_676A32: LitI2_Byte 0
  loc_676A34: CR8I2
  loc_676A35: NeCyR8
  loc_676A36: BranchF loc_676B50
  loc_676A39: ILdRf var_90
  loc_676A3C: LitStr "  "
  loc_676A3F: ConcatStr
  loc_676A40: FStStrNoPop var_BC
  loc_676A43: ILdRf var_94
  loc_676A46: ConcatStr
  loc_676A47: FStStrNoPop var_1F0
  loc_676A4A: LitStr " "
  loc_676A4D: ConcatStr
  loc_676A4E: FStStrNoPop var_21C
  loc_676A51: ILdRf var_98
  loc_676A54: ConcatStr
  loc_676A55: CVarStr var_EC
  loc_676A58: LitI4 9
  loc_676A5D: FLdRfVar var_CC
  loc_676A60: ImpAdCallFPR4  = Chr()
  loc_676A65: FLdRfVar var_CC
  loc_676A68: ConcatVar var_10C
  loc_676A6C: FLdRfVar var_220
  loc_676A6F: FLdUI1
  loc_676A73: CI2UI1
  loc_676A75: ImpAdLdRf MemVar_74A220
  loc_676A78: NewIfNullPr clsProducts
  loc_676A80: FLdZeroAd var_220
  loc_676A83: CVarStr var_12C
  loc_676A86: ConcatVar var_14C
  loc_676A8A: LitI4 9
  loc_676A8F: FLdRfVar var_16C
  loc_676A92: ImpAdCallFPR4  = Chr()
  loc_676A97: FLdRfVar var_16C
  loc_676A9A: ConcatVar var_18C
  loc_676A9E: FLdUI1
  loc_676AA2: CVarUI1
  loc_676AA6: ConcatVar var_1AC
  loc_676AAA: LitI4 9
  loc_676AAF: FLdRfVar var_1CC
  loc_676AB2: ImpAdCallFPR4  = Chr()
  loc_676AB7: FLdRfVar var_1CC
  loc_676ABA: ConcatVar var_1EC
  loc_676ABE: LitI4 1
  loc_676AC3: LitI4 1
  loc_676AC8: ImpAdLdRf MemVar_74C350
  loc_676ACB: CVarRef
  loc_676AD0: FLdUI1
  loc_676AD4: CI4UI1
  loc_676AD5: FLdUI1
  loc_676AD9: CI4UI1
  loc_676ADA: FLdUI1
  loc_676ADE: CI4UI1
  loc_676ADF: FLdPr Me
  loc_676AE2: MemLdStr global_56
  loc_676AE5: Ary1LdPr
  loc_676AE6: MemLdRfVar from_stack_1.global_0
  loc_676AE9: AryInRecLdPr
  loc_676AEF: MemLdR8 global_0
  loc_676AF2: CR8Cy
  loc_676AF3: ImpAdLdFPR4 MemVar_74C2DC
  loc_676AF6: DivR8
  loc_676AF7: CVarR8
  loc_676AFB: FLdRfVar var_230
  loc_676AFE: ImpAdCallFPR4  = Format(, )
  loc_676B03: FLdRfVar var_230
  loc_676B06: ConcatVar var_240
  loc_676B0A: CStrVarTmp
  loc_676B0B: FStStr var_9C
  loc_676B0E: FFreeStr var_BC = "": var_1F0 = ""
  loc_676B17: FFreeVar var_EC = "": var_CC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_200 = "": var_1EC = "": var_230 = ""
  loc_676B34: FLdRfVar var_9C
  loc_676B37: CDargRef
  loc_676B3B: FLdPrThis
  loc_676B3C: VCallAd Control_ID_Grid1
  loc_676B3F: FStAdFunc var_A0
  loc_676B42: FLdPr var_A0
  loc_676B45: LateIdCall
  loc_676B4D: FFree1Ad var_A0
  loc_676B50: FLdRfVar var_86
  loc_676B53: NextUI1
  loc_676B59: FLdRfVar var_8A
  loc_676B5C: NextUI1
  loc_676B62: FLdRfVar var_88
  loc_676B65: NextUI1
  loc_676B6B: LitVar_TRUE var_B0
  loc_676B6E: PopAdLdVar
  loc_676B6F: FLdPrThis
  loc_676B70: VCallAd Control_ID_Grid1
  loc_676B73: FStAdFunc var_A0
  loc_676B76: FLdPr var_A0
  loc_676B79: LateIdSt
  loc_676B7E: FFree1Ad var_A0
  loc_676B81: ExitProcHresult
  loc_676B82: CRec2Uni var_6800
End Sub

Private Function Proc_110_9_5D13D8() '5D13D8
  'Data Table: 414810
  loc_5D13C0: ILdRf Me
  loc_5D13C3: FStAdNoPop
  loc_5D13C7: ImpAdLdRf MemVar_7520D4
  loc_5D13CA: NewIfNullPr Global
  loc_5D13CD: Global.Unload from_stack_1
  loc_5D13D2: FFree1Ad var_88
  loc_5D13D5: ExitProcHresult
End Function

Private Function Proc_110_10_6682D4() '6682D4
  'Data Table: 414810
  loc_667F60: FLdRfVar var_BA
  loc_667F63: FLdRfVar var_B8
  loc_667F66: NewIfNullRf
  loc_667F6A: FLdRfVar var_B4
  loc_667F6D: NewIfNullPr CMsgPrice
  loc_667F75: FLdRfVar var_BA
  loc_667F78: ILdRf var_88
  loc_667F7B: FStStrCopy var_C4
  loc_667F7E: FLdRfVar var_C4
  loc_667F81: FLdRfVar var_C0
  loc_667F84: ImpAdLdRf MemVar_74C760
  loc_667F87: NewIfNullPr Formx
  loc_667F8A: from_stack_1v = Formx.global_4589716Get()
  loc_667F8F: FLdPr var_C0
  loc_667F92: Reset
  loc_667F97: ILdRf var_C4
  loc_667F9A: ILdRf var_88
  loc_667F9D: StFixedStr
  loc_667FA0: FLdI2 var_BA
  loc_667FA3: NotI4
  loc_667FA4: FFree1Str var_C4
  loc_667FA7: FFree1Ad var_C0
  loc_667FAA: BranchF loc_667FD9
  loc_667FAD: FLdRfVar var_D4
  loc_667FB0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_667FB5: FLdRfVar var_D4
  loc_667FB8: CBoolVarNull
  loc_667FBA: FFree1Var var_D4 = ""
  loc_667FBD: BranchF loc_667FD6
  loc_667FC0: ILdRf Me
  loc_667FC3: FStAdNoPop
  loc_667FC7: ImpAdLdRf MemVar_7520D4
  loc_667FCA: NewIfNullPr Global
  loc_667FCD: Global.Unload from_stack_1
  loc_667FD2: FFree1Ad var_C0
  loc_667FD5: ExitProcHresult
  loc_667FD6: Branch loc_667F75
  loc_667FD9: LitI4 1
  loc_667FDE: ILdRf var_88
  loc_667FE1: FStStrCopy var_C4
  loc_667FE4: FLdRfVar var_C4
  loc_667FE7: CVarRef
  loc_667FEC: FLdRfVar var_D4
  loc_667FEF: ImpAdCallFPR4  = Left(, )
  loc_667FF4: ILdRf var_C4
  loc_667FF7: ILdRf var_88
  loc_667FFA: StFixedStr
  loc_667FFD: FLdRfVar var_D4
  loc_668000: LitVarStr var_F4, "Z"
  loc_668005: HardType
  loc_668006: EqVarBool
  loc_668008: FFree1Str var_C4
  loc_66800B: FFree1Var var_D4 = ""
  loc_66800E: BranchF loc_66801D
  loc_668011: LitVar_FALSE
  loc_668015: FLdPr Me
  loc_668018: MemStVar
  loc_66801C: ExitProcHresult
  loc_66801D: LitVarI2 var_114, 1
  loc_668022: FLdRfVar var_98
  loc_668025: LitVarI2 var_F4, 100
  loc_66802A: ForVar var_134
  loc_668030: LitI2_Byte 1
  loc_668032: CUI1I2
  loc_668034: FLdRfVar var_AA
  loc_668037: LitI2_Byte 5
  loc_668039: CUI1I2
  loc_66803B: ForUI1 var_138
  loc_668041: LitVarI2 var_114, 1
  loc_668046: FLdRfVar var_A8
  loc_668049: LitVarI2 var_F4, 10
  loc_66804E: ForVar var_158
  loc_668054: LitI2_Byte 0
  loc_668056: CCyI2
  loc_668057: FLdUI1
  loc_66805B: CI4UI1
  loc_66805C: FLdRfVar var_A8
  loc_66805F: CI4Var
  loc_668061: FLdRfVar var_98
  loc_668064: CI4Var
  loc_668066: FLdPr Me
  loc_668069: MemLdStr global_56
  loc_66806C: Ary1LdPr
  loc_66806D: MemLdRfVar from_stack_1.global_0
  loc_668070: AryInRecLdPr
  loc_668076: MemStR8 global_0
  loc_668079: FLdRfVar var_A8
  loc_66807C: NextStepVar var_158
  loc_668082: FLdRfVar var_AA
  loc_668085: NextUI1
  loc_66808B: LitStr vbNullString
  loc_66808E: FLdRfVar var_98
  loc_668091: CI4Var
  loc_668093: FLdPr Me
  loc_668096: MemLdStr global_56
  loc_668099: Ary1LdPr
  loc_66809A: MemStStrCopy
  loc_66809E: LitI2_Byte 0
  loc_6680A0: CUI1I2
  loc_6680A2: FLdRfVar var_98
  loc_6680A5: CI4Var
  loc_6680A7: FLdPr Me
  loc_6680AA: MemLdStr global_56
  loc_6680AD: Ary1LdPr
  loc_6680AE: MemStUI1
  loc_6680B2: LitI2_Byte 0
  loc_6680B4: CUI1I2
  loc_6680B6: FLdRfVar var_98
  loc_6680B9: CI4Var
  loc_6680BB: FLdPr Me
  loc_6680BE: MemLdStr global_56
  loc_6680C1: Ary1LdPr
  loc_6680C2: MemStUI1
  loc_6680C6: FLdRfVar var_98
  loc_6680C9: NextStepVar var_134
  loc_6680CF: LitI4 1
  loc_6680D4: FStR4 var_B0
  loc_6680D7: LitVarI2 var_114, 1
  loc_6680DC: FLdRfVar var_98
  loc_6680DF: LitVarI2 var_F4, 100
  loc_6680E4: ForVar var_178
  loc_6680EA: LitI2_Byte 1
  loc_6680EC: CUI1I2
  loc_6680EE: FLdRfVar var_AA
  loc_6680F1: LitI2_Byte 5
  loc_6680F3: CUI1I2
  loc_6680F5: ForUI1 var_17C
  loc_6680FB: LitVarI2 var_114, 1
  loc_668100: FLdRfVar var_A8
  loc_668103: LitVarI2 var_F4, 10
  loc_668108: ForVar var_19C
  loc_66810E: LitVarI2 var_D4, 6
  loc_668113: ILdRf var_B0
  loc_668116: ILdRf var_88
  loc_668119: FStStrCopy var_C4
  loc_66811C: FLdRfVar var_C4
  loc_66811F: CVarRef
  loc_668124: FLdRfVar var_104
  loc_668127: ImpAdCallFPR4  = Mid(, , )
  loc_66812C: ILdRf var_C4
  loc_66812F: ILdRf var_88
  loc_668132: StFixedStr
  loc_668135: FLdRfVar var_104
  loc_668138: FnCCurVar
  loc_66813A: FLdUI1
  loc_66813E: CI4UI1
  loc_66813F: FLdRfVar var_A8
  loc_668142: CI4Var
  loc_668144: FLdRfVar var_98
  loc_668147: CI4Var
  loc_668149: FLdPr Me
  loc_66814C: MemLdStr global_56
  loc_66814F: Ary1LdPr
  loc_668150: MemLdRfVar from_stack_1.global_0
  loc_668153: AryInRecLdPr
  loc_668159: MemStR8 global_0
  loc_66815C: FFree1Str var_C4
  loc_66815F: FFreeVar var_D4 = "": var_104 = ""
  loc_668168: ILdRf var_B0
  loc_66816B: LitI4 6
  loc_668170: AddI4
  loc_668171: FStR4 var_B0
  loc_668174: FLdRfVar var_A8
  loc_668177: NextStepVar var_19C
  loc_66817D: FLdRfVar var_AA
  loc_668180: NextUI1
  loc_668186: ILdRf var_B0
  loc_668189: LitI4 &H50
  loc_66818E: AddI4
  loc_66818F: FStR4 var_B0
  loc_668192: LitVarI2 var_D4, 12
  loc_668197: ILdRf var_B0
  loc_66819A: ILdRf var_88
  loc_66819D: FStStrCopy var_C4
  loc_6681A0: FLdRfVar var_C4
  loc_6681A3: CVarRef
  loc_6681A8: FLdRfVar var_104
  loc_6681AB: ImpAdCallFPR4  = Mid(, , )
  loc_6681B0: ILdRf var_C4
  loc_6681B3: ILdRf var_88
  loc_6681B6: StFixedStr
  loc_6681B9: FLdRfVar var_104
  loc_6681BC: CStrVarTmp
  loc_6681BD: FStStrNoPop var_1A0
  loc_6681C0: FLdRfVar var_98
  loc_6681C3: CI4Var
  loc_6681C5: FLdPr Me
  loc_6681C8: MemLdStr global_56
  loc_6681CB: Ary1LdPr
  loc_6681CC: MemStStrCopy
  loc_6681D0: FFreeStr var_C4 = ""
  loc_6681D7: FFreeVar var_D4 = ""
  loc_6681DE: ILdRf var_B0
  loc_6681E1: LitI4 &HC
  loc_6681E6: AddI4
  loc_6681E7: FStR4 var_B0
  loc_6681EA: LitVarI2 var_D4, 1
  loc_6681EF: ILdRf var_B0
  loc_6681F2: ILdRf var_88
  loc_6681F5: FStStrCopy var_C4
  loc_6681F8: FLdRfVar var_C4
  loc_6681FB: CVarRef
  loc_668200: FLdRfVar var_104
  loc_668203: ImpAdCallFPR4  = Mid(, , )
  loc_668208: ILdRf var_C4
  loc_66820B: ILdRf var_88
  loc_66820E: StFixedStr
  loc_668211: FLdRfVar var_104
  loc_668214: FnCByteVar
  loc_668216: FLdRfVar var_98
  loc_668219: CI4Var
  loc_66821B: FLdPr Me
  loc_66821E: MemLdStr global_56
  loc_668221: Ary1LdPr
  loc_668222: MemStUI1
  loc_668226: FFree1Str var_C4
  loc_668229: FFreeVar var_D4 = "": var_104 = ""
  loc_668232: ILdRf var_B0
  loc_668235: LitI4 1
  loc_66823A: AddI4
  loc_66823B: FStR4 var_B0
  loc_66823E: FLdRfVar var_1A2
  loc_668241: FLdRfVar var_98
  loc_668244: FnCByteVar
  loc_668246: CI2UI1
  loc_668248: PopTmpLdAd2 var_BA
  loc_66824B: FLdRfVar var_B8
  loc_66824E: NewIfNullRf
  loc_668252: from_stack_2v = Proc_110_11_5F6E70(from_stack_1v)
  loc_668257: FLdUI1
  loc_66825B: FLdRfVar var_98
  loc_66825E: CI4Var
  loc_668260: FLdPr Me
  loc_668263: MemLdStr global_56
  loc_668266: Ary1LdPr
  loc_668267: MemStUI1
  loc_66826B: ILdRf var_B0
  loc_66826E: LitI4 1
  loc_668273: AddI4
  loc_668274: FStR4 var_B0
  loc_668277: LitVarI2 var_D4, 1
  loc_66827C: ILdRf var_B0
  loc_66827F: ILdRf var_88
  loc_668282: FStStrCopy var_C4
  loc_668285: FLdRfVar var_C4
  loc_668288: CVarRef
  loc_66828D: FLdRfVar var_104
  loc_668290: ImpAdCallFPR4  = Mid(, , )
  loc_668295: ILdRf var_C4
  loc_668298: ILdRf var_88
  loc_66829B: StFixedStr
  loc_66829E: FLdRfVar var_104
  loc_6682A1: LitVarStr var_114, "Z"
  loc_6682A6: HardType
  loc_6682A7: EqVarBool
  loc_6682A9: FFree1Str var_C4
  loc_6682AC: FFreeVar var_D4 = ""
  loc_6682B3: BranchF loc_6682B9
  loc_6682B6: Branch loc_6682C2
  loc_6682B9: FLdRfVar var_98
  loc_6682BC: NextStepVar var_178
  loc_6682C2: FLdRfVar var_98
  loc_6682C5: CI2Var
  loc_6682C6: FLdPr Me
  loc_6682C9: MemLdRfVar from_stack_1.global_56
  loc_6682CC: from_stack_3v = Proc_110_12_5F669C(from_stack_1v, from_stack_2v)
  loc_6682D1: ExitProcHresult
End Function

Private Function Proc_110_11_5F6E70(arg_10) '5F6E70
  'Data Table: 414810
  loc_5F6DB8: LitI2_Byte 1
  loc_5F6DBA: CUI1I2
  loc_5F6DBC: FLdRfVar var_88
  loc_5F6DBF: FLdRfVar var_8A
  loc_5F6DC2: ILdPr
  loc_5F6DC5: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5F6DCA: FLdI2 var_8A
  loc_5F6DCD: CUI1I2
  loc_5F6DCF: ForUI1 var_8E
  loc_5F6DD5: ILdI2 arg_10
  loc_5F6DD8: CI4UI1
  loc_5F6DD9: FLdPr Me
  loc_5F6DDC: MemLdStr global_56
  loc_5F6DDF: Ary1LdPr
  loc_5F6DE0: MemLdStr global_400
  loc_5F6DE3: FLdRfVar var_94
  loc_5F6DE6: FLdUI1
  loc_5F6DEA: CI2UI1
  loc_5F6DEC: LitI2_Byte 1
  loc_5F6DEE: SubI2
  loc_5F6DEF: ILdPr
  loc_5F6DF7: ILdRf var_94
  loc_5F6DFA: EqStr
  loc_5F6DFC: FFree1Str var_94
  loc_5F6DFF: BranchF loc_5F6E57
  loc_5F6E02: FLdRfVar var_94
  loc_5F6E05: FLdUI1
  loc_5F6E09: CI2UI1
  loc_5F6E0B: LitI2_Byte 1
  loc_5F6E0D: SubI2
  loc_5F6E0E: ILdPr
  loc_5F6E16: ILdRf var_94
  loc_5F6E19: ImpAdCallI2 Proc_98_0_5D7360()
  loc_5F6E1E: FStI2 var_8A
  loc_5F6E21: LitVarI2 var_E4, 0
  loc_5F6E26: LitVarI2 var_C4, 1
  loc_5F6E2B: FLdI2 var_8A
  loc_5F6E2E: CVarBoolI2 var_A4
  loc_5F6E32: FLdRfVar var_F4
  loc_5F6E35: ImpAdCallFPR4  = IIf(, , )
  loc_5F6E3A: FLdRfVar var_F4
  loc_5F6E3D: CUI1Var
  loc_5F6E3F: FStUI1 var_86
  loc_5F6E43: FFree1Str var_94
  loc_5F6E46: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_5F6E51: ExitProcCbHresult
  loc_5F6E57: FLdRfVar var_88
  loc_5F6E5A: NextUI1
  loc_5F6E60: LitI2_Byte 0
  loc_5F6E62: CUI1I2
  loc_5F6E64: FStUI1 var_86
  loc_5F6E68: ExitProcCbHresult
End Function

Private Function Proc_110_12_5F669C(arg_C, arg_10) '5F669C
  'Data Table: 414810
  loc_5F65F8: LitI2_Byte 1
  loc_5F65FA: FLdRfVar var_86
  loc_5F65FD: FLdI2 arg_10
  loc_5F6600: LitI2_Byte 1
  loc_5F6602: SubI2
  loc_5F6603: ForI2 var_224
  loc_5F6609: LitI2_Byte 1
  loc_5F660B: FLdRfVar var_88
  loc_5F660E: FLdI2 arg_10
  loc_5F6611: LitI2_Byte 1
  loc_5F6613: SubI2
  loc_5F6614: ForI2 var_228
  loc_5F661A: FLdRfVar var_232
  loc_5F661D: FLdI2 var_88
  loc_5F6620: LitI2_Byte 1
  loc_5F6622: AddI2
  loc_5F6623: CI4UI1
  loc_5F6624: ILdI4 arg_C
  loc_5F6627: AryLock
  loc_5F662A: Ary1LdPr
  loc_5F662B: MemLdRfVar from_stack_1.global_400
  loc_5F662E: FLdI2 var_88
  loc_5F6631: CI4UI1
  loc_5F6632: ILdI4 arg_C
  loc_5F6635: AryLock
  loc_5F6638: Ary1LdPr
  loc_5F6639: MemLdRfVar from_stack_1.global_400
  loc_5F663C: from_stack_3v = Proc_110_13_630F6C(from_stack_1v, from_stack_2v)
  loc_5F6641: AryUnlock
  loc_5F6644: AryUnlock
  loc_5F6647: FLdI2 var_232
  loc_5F664A: LitI2_Byte 0
  loc_5F664C: GtI2
  loc_5F664D: BranchF loc_5F6688
  loc_5F6650: FLdI2 var_88
  loc_5F6653: CI4UI1
  loc_5F6654: ILdI4 arg_C
  loc_5F6657: Ary1LdRf
  loc_5F6658: FLdRfVar var_220
  loc_5F665B: AssignRecord
  loc_5F665F: FLdI2 var_88
  loc_5F6662: LitI2_Byte 1
  loc_5F6664: AddI2
  loc_5F6665: CI4UI1
  loc_5F6666: ILdI4 arg_C
  loc_5F6669: Ary1LdRf
  loc_5F666A: FLdI2 var_88
  loc_5F666D: CI4UI1
  loc_5F666E: ILdI4 arg_C
  loc_5F6671: Ary1LdRf
  loc_5F6672: AssignRecord
  loc_5F6676: FLdRfVar var_220
  loc_5F6679: FLdI2 var_88
  loc_5F667C: LitI2_Byte 1
  loc_5F667E: AddI2
  loc_5F667F: CI4UI1
  loc_5F6680: ILdI4 arg_C
  loc_5F6683: Ary1LdRf
  loc_5F6684: AssignRecord
  loc_5F6688: FLdRfVar var_88
  loc_5F668B: NextI2 var_228, loc_5F661A
  loc_5F6690: FLdRfVar var_86
  loc_5F6693: NextI2 var_224, loc_5F6609
  loc_5F6698: ExitProcHresult
End Function

Private Function Proc_110_13_630F6C(arg_C, arg_10) '630F6C
  'Data Table: 414810
  loc_630DD8: LitVarI2 var_A8, 2
  loc_630DDD: LitI4 7
  loc_630DE2: ILdI4 arg_C
  loc_630DE5: ImpAdCallI2 Mid$(, , )
  loc_630DEA: FStStr var_168
  loc_630DED: LitVarI2 var_C8, 2
  loc_630DF2: LitI4 5
  loc_630DF7: ILdI4 arg_C
  loc_630DFA: ImpAdCallI2 Mid$(, , )
  loc_630DFF: FStStr var_16C
  loc_630E02: LitVarI2 var_E8, 4
  loc_630E07: LitI4 1
  loc_630E0C: ILdI4 arg_C
  loc_630E0F: ImpAdCallI2 Mid$(, , )
  loc_630E14: FStStr var_170
  loc_630E17: LitVarI2 var_108, 2
  loc_630E1C: LitI4 7
  loc_630E21: ILdI4 arg_10
  loc_630E24: ImpAdCallI2 Mid$(, , )
  loc_630E29: FStStr var_174
  loc_630E2C: LitVarI2 var_128, 2
  loc_630E31: LitI4 5
  loc_630E36: ILdI4 arg_10
  loc_630E39: ImpAdCallI2 Mid$(, , )
  loc_630E3E: FStStr var_178
  loc_630E41: LitVarI2 var_148, 4
  loc_630E46: LitI4 1
  loc_630E4B: ILdI4 arg_10
  loc_630E4E: ImpAdCallI2 Mid$(, , )
  loc_630E53: FStStrNoPop var_160
  loc_630E56: CI2Str
  loc_630E58: FLdZeroAd var_178
  loc_630E5B: FStStrNoPop var_15C
  loc_630E5E: CI2Str
  loc_630E60: FLdZeroAd var_174
  loc_630E63: FStStrNoPop var_158
  loc_630E66: CI2Str
  loc_630E68: FLdZeroAd var_170
  loc_630E6B: FStStrNoPop var_154
  loc_630E6E: CI2Str
  loc_630E70: FLdZeroAd var_16C
  loc_630E73: FStStrNoPop var_150
  loc_630E76: CI2Str
  loc_630E78: FLdZeroAd var_168
  loc_630E7B: FStStrNoPop var_14C
  loc_630E7E: CI2Str
  loc_630E80: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_630E85: FStI2 var_162
  loc_630E88: FFreeStr var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_630EA1: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_630EB0: FLdI2 var_162
  loc_630EB3: LitI2_Byte &HFF
  loc_630EB5: EqI2
  loc_630EB6: BranchF loc_630EC1
  loc_630EB9: LitI2_Byte &HFF
  loc_630EBB: FStI2 var_86
  loc_630EBE: Branch loc_630F65
  loc_630EC1: FLdI2 var_162
  loc_630EC4: LitI2_Byte 0
  loc_630EC6: EqI2
  loc_630EC7: BranchF loc_630F57
  loc_630ECA: LitVarI2 var_A8, 4
  loc_630ECF: LitI4 9
  loc_630ED4: ILdI4 arg_C
  loc_630ED7: ImpAdCallI2 Mid$(, , )
  loc_630EDC: FStStr var_15C
  loc_630EDF: LitVarI2 var_C8, 4
  loc_630EE4: LitI4 9
  loc_630EE9: ILdI4 arg_10
  loc_630EEC: ImpAdCallI2 Mid$(, , )
  loc_630EF1: FStStrNoPop var_150
  loc_630EF4: LitStr "00"
  loc_630EF7: ConcatStr
  loc_630EF8: FStStrNoPop var_158
  loc_630EFB: FLdZeroAd var_15C
  loc_630EFE: FStStrNoPop var_14C
  loc_630F01: LitStr "00"
  loc_630F04: ConcatStr
  loc_630F05: FStStrNoPop var_154
  loc_630F08: ImpAdCallI2 Proc_65_3_641944(, )
  loc_630F0D: FStI2 var_17A
  loc_630F10: FFreeStr var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_630F1D: FFreeVar var_A8 = ""
  loc_630F24: FLdI2 var_17A
  loc_630F27: LitI2_Byte &HFF
  loc_630F29: EqI2
  loc_630F2A: BranchF loc_630F35
  loc_630F2D: LitI2_Byte &HFF
  loc_630F2F: FStI2 var_86
  loc_630F32: Branch loc_630F54
  loc_630F35: FLdI2 var_17A
  loc_630F38: LitI2_Byte 0
  loc_630F3A: EqI2
  loc_630F3B: BranchF loc_630F46
  loc_630F3E: LitI2_Byte 0
  loc_630F40: FStI2 var_86
  loc_630F43: Branch loc_630F54
  loc_630F46: FLdI2 var_17A
  loc_630F49: LitI2_Byte 1
  loc_630F4B: EqI2
  loc_630F4C: BranchF loc_630F54
  loc_630F4F: LitI2_Byte 1
  loc_630F51: FStI2 var_86
  loc_630F54: Branch loc_630F65
  loc_630F57: FLdI2 var_162
  loc_630F5A: LitI2_Byte 1
  loc_630F5C: EqI2
  loc_630F5D: BranchF loc_630F65
  loc_630F60: LitI2_Byte 1
  loc_630F62: FStI2 var_86
  loc_630F65: ExitProcCbHresult
End Function
