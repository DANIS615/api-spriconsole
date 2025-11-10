VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form TiposCierres
  Caption = "Cierres de Consignado"
  ForeColor = &H8000000E&
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
  ClientWidth = 11685
  ClientHeight = 7500
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin MSFlexGridLib.MSFlexGrid T
    Left = 600
    Top = 480
    Width = 10455
    Height = 5295
    TabIndex = 4
    OleObjectBlob = "TiposCierres.frx":0000
  End
  Begin VB.CommandButton Command1
    Left = 240
    Top = 240
    Width = 11175
    Height = 6015
    TabIndex = 3
  End
  Begin VB.CommandButton siguiente
    Caption = "&Siguiente"
    Left = 8400
    Top = 6600
    Width = 1634
    Height = 672
    TabIndex = 2
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
  Begin VB.CommandButton aceptar
    Caption = "&Aceptar"
    Left = 5040
    Top = 6600
    Width = 1634
    Height = 672
    TabIndex = 1
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
  Begin VB.CommandButton anterior
    Caption = "&Anterior"
    Left = 1920
    Top = 6600
    Width = 1634
    Height = 672
    TabIndex = 0
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

Attribute VB_Name = "TiposCierres"


Private Sub Aceptar_Click() '5D1E88
  'Data Table: 40ED00
  loc_5D1E70: ILdRf Me
  loc_5D1E73: FStAdNoPop
  loc_5D1E77: ImpAdLdRf MemVar_7520D4
  loc_5D1E7A: NewIfNullPr Global
  loc_5D1E7D: Global.Unload from_stack_1
  loc_5D1E82: FFree1Ad var_88
  loc_5D1E85: ExitProcHresult
End Sub

Private Sub Form_Load() '67E2C4
  'Data Table: 40ED00
  loc_67DE08: FLdRfVar var_98
  loc_67DE0B: ImpAdLdRf MemVar_74DC6C
  loc_67DE0E: NewIfNullPr Reportes_Anteriores
  loc_67DE11: from_stack_1v = Reportes_Anteriores.CargarMotivosCierre()
  loc_67DE16: FFree1Var var_98 = ""
  loc_67DE19: LitVarI4
  loc_67DE21: PopAdLdVar
  loc_67DE22: FLdPrThis
  loc_67DE23: VCallAd Control_ID_sscMesAnterior
  loc_67DE26: FStAdFunc var_AC
  loc_67DE29: FLdPr var_AC
  loc_67DE2C: LateIdSt
  loc_67DE31: FFree1Ad var_AC
  loc_67DE34: LitVarI4
  loc_67DE3C: PopAdLdVar
  loc_67DE3D: FLdPrThis
  loc_67DE3E: VCallAd Control_ID_sscMesAnterior
  loc_67DE41: FStAdFunc var_AC
  loc_67DE44: FLdPr var_AC
  loc_67DE47: LateIdSt
  loc_67DE4C: FFree1Ad var_AC
  loc_67DE4F: LitVarI4
  loc_67DE57: PopAdLdVar
  loc_67DE58: LitVarI4
  loc_67DE60: PopAdLdVar
  loc_67DE61: FLdPrThis
  loc_67DE62: VCallAd Control_ID_sscMesAnterior
  loc_67DE65: FStAdFunc var_AC
  loc_67DE68: FLdPr var_AC
  loc_67DE6B: LateIdCallSt
  loc_67DE73: FFree1Ad var_AC
  loc_67DE76: LitVarI4
  loc_67DE7E: PopAdLdVar
  loc_67DE7F: LitVarI4
  loc_67DE87: PopAdLdVar
  loc_67DE88: FLdPrThis
  loc_67DE89: VCallAd Control_ID_sscMesAnterior
  loc_67DE8C: FStAdFunc var_AC
  loc_67DE8F: FLdPr var_AC
  loc_67DE92: LateIdCallSt
  loc_67DE9A: FFree1Ad var_AC
  loc_67DE9D: LitVarI4
  loc_67DEA5: PopAdLdVar
  loc_67DEA6: LitVarI4
  loc_67DEAE: PopAdLdVar
  loc_67DEAF: FLdPrThis
  loc_67DEB0: VCallAd Control_ID_sscMesAnterior
  loc_67DEB3: FStAdFunc var_AC
  loc_67DEB6: FLdPr var_AC
  loc_67DEB9: LateIdCallSt
  loc_67DEC1: FFree1Ad var_AC
  loc_67DEC4: LitVarI4
  loc_67DECC: PopAdLdVar
  loc_67DECD: LitVarI4
  loc_67DED5: PopAdLdVar
  loc_67DED6: FLdPrThis
  loc_67DED7: VCallAd Control_ID_sscMesAnterior
  loc_67DEDA: FStAdFunc var_AC
  loc_67DEDD: FLdPr var_AC
  loc_67DEE0: LateIdCallSt
  loc_67DEE8: FFree1Ad var_AC
  loc_67DEEB: LitVarI4
  loc_67DEF3: PopAdLdVar
  loc_67DEF4: LitVarI4
  loc_67DEFC: PopAdLdVar
  loc_67DEFD: FLdPrThis
  loc_67DEFE: VCallAd Control_ID_sscMesAnterior
  loc_67DF01: FStAdFunc var_AC
  loc_67DF04: FLdPr var_AC
  loc_67DF07: LateIdCallSt
  loc_67DF0F: FFree1Ad var_AC
  loc_67DF12: LitVarStr var_A8, "^Fecha Apertura|^Hora Apertura|^Fecha Cierre|^Hora Cierre|^                                 Tipo de Cierre                                                                    "
  loc_67DF17: PopAdLdVar
  loc_67DF18: FLdPrThis
  loc_67DF19: VCallAd Control_ID_sscMesAnterior
  loc_67DF1C: FStAdFunc var_AC
  loc_67DF1F: FLdPr var_AC
  loc_67DF22: LateIdSt
  loc_67DF27: FFree1Ad var_AC
  loc_67DF2A: LitVarI4
  loc_67DF32: PopAdLdVar
  loc_67DF33: LitVarI2 var_BC, 4
  loc_67DF38: PopAdLdVar
  loc_67DF39: FLdPrThis
  loc_67DF3A: VCallAd Control_ID_sscMesAnterior
  loc_67DF3D: FStAdFunc var_AC
  loc_67DF40: FLdPr var_AC
  loc_67DF43: LateIdCallSt
  loc_67DF4B: FFree1Ad var_AC
  loc_67DF4E: LitVarI4
  loc_67DF56: PopAdLdVar
  loc_67DF57: LitVarI2 var_BC, 4
  loc_67DF5C: PopAdLdVar
  loc_67DF5D: FLdPrThis
  loc_67DF5E: VCallAd Control_ID_sscMesAnterior
  loc_67DF61: FStAdFunc var_AC
  loc_67DF64: FLdPr var_AC
  loc_67DF67: LateIdCallSt
  loc_67DF6F: FFree1Ad var_AC
  loc_67DF72: LitVarI4
  loc_67DF7A: PopAdLdVar
  loc_67DF7B: LitVarI2 var_BC, 4
  loc_67DF80: PopAdLdVar
  loc_67DF81: FLdPrThis
  loc_67DF82: VCallAd Control_ID_sscMesAnterior
  loc_67DF85: FStAdFunc var_AC
  loc_67DF88: FLdPr var_AC
  loc_67DF8B: LateIdCallSt
  loc_67DF93: FFree1Ad var_AC
  loc_67DF96: LitVarI4
  loc_67DF9E: PopAdLdVar
  loc_67DF9F: LitVarI2 var_BC, 4
  loc_67DFA4: PopAdLdVar
  loc_67DFA5: FLdPrThis
  loc_67DFA6: VCallAd Control_ID_sscMesAnterior
  loc_67DFA9: FStAdFunc var_AC
  loc_67DFAC: FLdPr var_AC
  loc_67DFAF: LateIdCallSt
  loc_67DFB7: FFree1Ad var_AC
  loc_67DFBA: LitVarI4
  loc_67DFC2: PopAdLdVar
  loc_67DFC3: LitVarI2 var_BC, 1
  loc_67DFC8: PopAdLdVar
  loc_67DFC9: FLdPrThis
  loc_67DFCA: VCallAd Control_ID_sscMesAnterior
  loc_67DFCD: FStAdFunc var_AC
  loc_67DFD0: FLdPr var_AC
  loc_67DFD3: LateIdCallSt
  loc_67DFDB: FFree1Ad var_AC
  loc_67DFDE: LitVarI2 var_A8, 10
  loc_67DFE3: PopAdLdVar
  loc_67DFE4: FLdPrThis
  loc_67DFE5: VCallAd Control_ID_sscMesAnterior
  loc_67DFE8: FStAdFunc var_AC
  loc_67DFEB: FLdPr var_AC
  loc_67DFEE: LateIdLdVar var_98 DispID_-512 -1
  loc_67DFF5: CastAdVar Me
  loc_67DFF9: FStAdFunc var_C0
  loc_67DFFC: FLdPr var_C0
  loc_67DFFF: LateIdSt
  loc_67E004: FFreeAd var_AC = ""
  loc_67E00B: FFree1Var var_98 = ""
  loc_67E00E: LitVar_TRUE var_A8
  loc_67E011: PopAdLdVar
  loc_67E012: FLdPrThis
  loc_67E013: VCallAd Control_ID_T
  loc_67E016: FStAdFunc var_AC
  loc_67E019: FLdPr var_AC
  loc_67E01C: LateIdLdVar var_98 DispID_-512 -1
  loc_67E023: CastAdVar Me
  loc_67E027: FStAdFunc var_C0
  loc_67E02A: FLdPr var_C0
  loc_67E02D: LateIdSt
  loc_67E032: FFreeAd var_AC = ""
  loc_67E039: FFree1Var var_98 = ""
  loc_67E03C: LitStr "CEM44.INI"
  loc_67E03F: FLdRfVar var_CC
  loc_67E042: CStr2Ansi
  loc_67E043: ILdRf var_CC
  loc_67E046: LitI4 0
  loc_67E04B: LitStr "Tipos_Cierres"
  loc_67E04E: FLdRfVar var_C8
  loc_67E051: CStr2Ansi
  loc_67E052: ILdRf var_C8
  loc_67E055: LitStr "DIAS_A_RESTAR"
  loc_67E058: FLdRfVar var_C4
  loc_67E05B: CStr2Ansi
  loc_67E05C: ILdRf var_C4
  loc_67E05F: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_67E064: FStR4 var_D0
  loc_67E067: SetLastSystemError
  loc_67E068: ILdRf var_D0
  loc_67E06B: CI2I4
  loc_67E06C: FStI2 var_86
  loc_67E06F: FFreeStr var_C4 = "": var_C8 = ""
  loc_67E078: FLdI2 var_86
  loc_67E07B: LitI2_Byte 0
  loc_67E07D: EqI2
  loc_67E07E: BranchF loc_67E087
  loc_67E081: LitI2 365
  loc_67E084: FStI2 var_86
  loc_67E087: FLdRfVar var_98
  loc_67E08A: ImpAdCallFPR4  = Date
  loc_67E08F: FLdRfVar var_98
  loc_67E092: FnCDateVar
  loc_67E094: FLdPr Me
  loc_67E097: MemStFPR8 global_52
  loc_67E09A: FFree1Var var_98 = ""
  loc_67E09D: FLdPr Me
  loc_67E0A0: MemLdFPR8 global_52
  loc_67E0A3: FLdI2 var_86
  loc_67E0A6: CR8I2
  loc_67E0A7: SubR4
  loc_67E0A8: CDateR8
  loc_67E0A9: FLdPr Me
  loc_67E0AC: MemStFPR8 global_60
  loc_67E0AF: LitI4 1
  loc_67E0B4: LitI4 1
  loc_67E0B9: LitVarStr var_BC, "dd/mm/yyyy"
  loc_67E0BE: FStVarCopyObj var_98
  loc_67E0C1: FLdRfVar var_98
  loc_67E0C4: FLdPr Me
  loc_67E0C7: MemLdRfVar from_stack_1.global_60
  loc_67E0CA: CVarRef
  loc_67E0CF: FLdRfVar var_E0
  loc_67E0D2: ImpAdCallFPR4  = Format(, )
  loc_67E0D7: LitI4 1
  loc_67E0DC: LitI4 1
  loc_67E0E1: LitVarStr var_120, "dd/mm/yyyy"
  loc_67E0E6: FStVarCopyObj var_130
  loc_67E0E9: FLdRfVar var_130
  loc_67E0EC: FLdPr Me
  loc_67E0EF: MemLdRfVar from_stack_1.global_60
  loc_67E0F2: CVarRef
  loc_67E0F7: FLdRfVar var_140
  loc_67E0FA: ImpAdCallFPR4  = Format(, )
  loc_67E0FF: LitI4 1
  loc_67E104: LitI4 1
  loc_67E109: LitVarStr var_184, "dd/mm/yyyy"
  loc_67E10E: FStVarCopyObj var_194
  loc_67E111: FLdRfVar var_194
  loc_67E114: FLdPr Me
  loc_67E117: MemLdRfVar from_stack_1.global_60
  loc_67E11A: CVarRef
  loc_67E11F: FLdRfVar var_1A4
  loc_67E122: ImpAdCallFPR4  = Format(, )
  loc_67E127: LitVarI2 var_100, 4
  loc_67E12C: LitI4 7
  loc_67E131: FLdRfVar var_E0
  loc_67E134: CStrVarVal var_C4
  loc_67E138: ImpAdCallI2 Mid$(, , )
  loc_67E13D: FStStrNoPop var_CC
  loc_67E140: LitVarI2 var_160, 2
  loc_67E145: LitI4 4
  loc_67E14A: FLdRfVar var_140
  loc_67E14D: CStrVarVal var_C8
  loc_67E151: ImpAdCallI2 Mid$(, , )
  loc_67E156: FStStrNoPop var_164
  loc_67E159: ConcatStr
  loc_67E15A: FStStrNoPop var_1CC
  loc_67E15D: LitVarI2 var_1C8, 2
  loc_67E162: LitI4 1
  loc_67E167: FLdRfVar var_1A4
  loc_67E16A: CStrVarVal var_1A8
  loc_67E16E: ImpAdCallI2 Mid$(, , )
  loc_67E173: FStStrNoPop var_1D0
  loc_67E176: ConcatStr
  loc_67E177: FStStrNoPop var_1D4
  loc_67E17A: LitStr "000000"
  loc_67E17D: ConcatStr
  loc_67E17E: FStStrNoPop var_1D8
  loc_67E181: FLdPr Me
  loc_67E184: MemStStrCopy
  loc_67E188: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_164 = "": var_1A8 = "": var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_67E19D: FFreeVar var_98 = "": var_E0 = "": var_100 = "": var_130 = "": var_140 = "": var_160 = "": var_194 = "": var_1A4 = ""
  loc_67E1B2: LitI4 1
  loc_67E1B7: LitI4 1
  loc_67E1BC: LitVarStr var_BC, "dd/mm/yyyy"
  loc_67E1C1: FStVarCopyObj var_98
  loc_67E1C4: FLdRfVar var_98
  loc_67E1C7: FLdPr Me
  loc_67E1CA: MemLdRfVar from_stack_1.global_52
  loc_67E1CD: CVarRef
  loc_67E1D2: FLdRfVar var_E0
  loc_67E1D5: ImpAdCallFPR4  = Format(, )
  loc_67E1DA: LitI4 1
  loc_67E1DF: LitI4 1
  loc_67E1E4: LitVarStr var_120, "dd/mm/yyyy"
  loc_67E1E9: FStVarCopyObj var_130
  loc_67E1EC: FLdRfVar var_130
  loc_67E1EF: FLdPr Me
  loc_67E1F2: MemLdRfVar from_stack_1.global_52
  loc_67E1F5: CVarRef
  loc_67E1FA: FLdRfVar var_140
  loc_67E1FD: ImpAdCallFPR4  = Format(, )
  loc_67E202: LitI4 1
  loc_67E207: LitI4 1
  loc_67E20C: LitVarStr var_184, "dd/mm/yyyy"
  loc_67E211: FStVarCopyObj var_194
  loc_67E214: FLdRfVar var_194
  loc_67E217: FLdPr Me
  loc_67E21A: MemLdRfVar from_stack_1.global_52
  loc_67E21D: CVarRef
  loc_67E222: FLdRfVar var_1A4
  loc_67E225: ImpAdCallFPR4  = Format(, )
  loc_67E22A: FLdPr Me
  loc_67E22D: MemLdStr global_68
  loc_67E230: LitVarI2 var_100, 4
  loc_67E235: LitI4 7
  loc_67E23A: FLdRfVar var_E0
  loc_67E23D: CStrVarVal var_C4
  loc_67E241: ImpAdCallI2 Mid$(, , )
  loc_67E246: FStStrNoPop var_C8
  loc_67E249: ConcatStr
  loc_67E24A: FStStrNoPop var_164
  loc_67E24D: LitVarI2 var_160, 2
  loc_67E252: LitI4 4
  loc_67E257: FLdRfVar var_140
  loc_67E25A: CStrVarVal var_CC
  loc_67E25E: ImpAdCallI2 Mid$(, , )
  loc_67E263: FStStrNoPop var_1A8
  loc_67E266: ConcatStr
  loc_67E267: FStStrNoPop var_1D0
  loc_67E26A: LitVarI2 var_1C8, 2
  loc_67E26F: LitI4 1
  loc_67E274: FLdRfVar var_1A4
  loc_67E277: CStrVarVal var_1CC
  loc_67E27B: ImpAdCallI2 Mid$(, , )
  loc_67E280: FStStrNoPop var_1D4
  loc_67E283: ConcatStr
  loc_67E284: FStStrNoPop var_1D8
  loc_67E287: LitStr "235959"
  loc_67E28A: ConcatStr
  loc_67E28B: FStStrNoPop var_1DC
  loc_67E28E: FLdPr Me
  loc_67E291: MemStStrCopy
  loc_67E295: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_164 = "": var_1A8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = ""
  loc_67E2AC: FFreeVar var_98 = "": var_E0 = "": var_100 = "": var_130 = "": var_140 = "": var_160 = "": var_194 = "": var_1A4 = ""
  loc_67E2C1: ExitProcHresult
End Sub

Private Sub Form_Activate() '5ED978
  'Data Table: 40ED00
  loc_5ED8F4: LitI2_Byte 0
  loc_5ED8F6: FLdPrThis
  loc_5ED8F7: VCallAd Control_ID_anterior
  loc_5ED8FA: FStAdFunc var_88
  loc_5ED8FD: FLdPr var_88
  loc_5ED900: Me.Visible = from_stack_1b
  loc_5ED905: FFree1Ad var_88
  loc_5ED908: LitI2_Byte 0
  loc_5ED90A: FLdPrThis
  loc_5ED90B: VCallAd Control_ID_siguiente
  loc_5ED90E: FStAdFunc var_88
  loc_5ED911: FLdPr var_88
  loc_5ED914: Me.Visible = from_stack_1b
  loc_5ED919: FFree1Ad var_88
  loc_5ED91C: FLdRfVar var_8A
  loc_5ED91F: FLdPr Me
  loc_5ED922: MemLdRfVar from_stack_1.global_68
  loc_5ED925: from_stack_2v = CargarGrilla(from_stack_1v)
  loc_5ED92A: FLdI2 var_8A
  loc_5ED92D: NotI4
  loc_5ED92E: BranchF loc_5ED977
  loc_5ED931: LitVar_Missing var_10C
  loc_5ED934: LitVar_Missing var_EC
  loc_5ED937: LitVarStr var_BC, "Atención"
  loc_5ED93C: FStVarCopyObj var_CC
  loc_5ED93F: FLdRfVar var_CC
  loc_5ED942: LitI4 &H40
  loc_5ED947: LitVarStr var_9C, "No hay Tipos de Cierre de Consignado para visualizar."
  loc_5ED94C: FStVarCopyObj var_AC
  loc_5ED94F: FLdRfVar var_AC
  loc_5ED952: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5ED957: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_5ED962: ILdRf Me
  loc_5ED965: FStAdNoPop
  loc_5ED969: ImpAdLdRf MemVar_7520D4
  loc_5ED96C: NewIfNullPr Global
  loc_5ED96F: Global.Unload from_stack_1
  loc_5ED974: FFree1Ad var_88
  loc_5ED977: ExitProcHresult
End Sub

Private Sub T_KeyDown(KeyCode As Integer, Shift As Integer) '643844
  'Data Table: 40ED00
  loc_643630: FLdPrThis
  loc_643631: VCallAd Control_ID_T
  loc_643634: FStAdFunc var_90
  loc_643637: FLdPr var_90
  loc_64363A: LateIdLdVar var_A0 DispID_10 0
  loc_643641: CI4Var
  loc_643643: LitI4 0
  loc_643648: GtI4
  loc_643649: FLdPrThis
  loc_64364A: VCallAd Control_ID_T
  loc_64364D: FStAdFunc var_A4
  loc_643650: FLdPr var_A4
  loc_643653: LateIdLdVar var_B4 DispID_10 0
  loc_64365A: CI4Var
  loc_64365C: CVarI4
  loc_643660: PopAdLdVar
  loc_643661: LitVarI4
  loc_643669: PopAdLdVar
  loc_64366A: FLdPrThis
  loc_64366B: VCallAd Control_ID_T
  loc_64366E: FStAdFunc var_D8
  loc_643671: FLdPr var_D8
  loc_643674: LateIdCallLdVar
  loc_64367E: CStrVarTmp
  loc_64367F: FStStrNoPop var_EC
  loc_643682: LitStr vbNullString
  loc_643685: NeStr
  loc_643687: AndI4
  loc_643688: FFree1Str var_EC
  loc_64368B: FFreeAd var_90 = "": var_A4 = ""
  loc_643694: FFreeVar var_A0 = "": var_B4 = ""
  loc_64369D: BranchF loc_643841
  loc_6436A0: FLdPrThis
  loc_6436A1: VCallAd Control_ID_T
  loc_6436A4: FStAdFunc var_90
  loc_6436A7: FLdPr var_90
  loc_6436AA: LateIdLdVar var_A0 DispID_10 0
  loc_6436B1: CI4Var
  loc_6436B3: CVarI4
  loc_6436B7: PopAdLdVar
  loc_6436B8: LitVarI4
  loc_6436C0: PopAdLdVar
  loc_6436C1: FLdPrThis
  loc_6436C2: VCallAd Control_ID_T
  loc_6436C5: FStAdFunc var_A4
  loc_6436C8: FLdPr var_A4
  loc_6436CB: LateIdCallLdVar
  loc_6436D5: PopAd
  loc_6436D7: FLdRfVar var_F0
  loc_6436DA: FLdRfVar var_B4
  loc_6436DD: CStrVarTmp
  loc_6436DE: PopTmpLdAdStr
  loc_6436E2: from_stack_2v = CargarDescripcionCierre(from_stack_1v)
  loc_6436E7: FLdZeroAd var_F0
  loc_6436EA: FStStr var_88
  loc_6436ED: FFree1Str var_EC
  loc_6436F0: FFreeAd var_90 = ""
  loc_6436F7: FFreeVar var_A0 = ""
  loc_6436FE: FLdPrThis
  loc_6436FF: VCallAd Control_ID_T
  loc_643702: FStAdFunc var_90
  loc_643705: FLdPr var_90
  loc_643708: LateIdLdVar var_A0 DispID_10 0
  loc_64370F: CI4Var
  loc_643711: CVarI4
  loc_643715: PopAdLdVar
  loc_643716: LitVarI4
  loc_64371E: PopAdLdVar
  loc_64371F: FLdPrThis
  loc_643720: VCallAd Control_ID_T
  loc_643723: FStAdFunc var_A4
  loc_643726: FLdPr var_A4
  loc_643729: LateIdCallLdVar
  loc_643733: CStrVarTmp
  loc_643734: FStStrNoPop var_EC
  loc_643737: FLdPrThis
  loc_643738: VCallAd Control_ID_T
  loc_64373B: FStAdFunc var_D8
  loc_64373E: FLdPr var_D8
  loc_643741: LateIdLdVar var_E8 DispID_10 0
  loc_643748: CI4Var
  loc_64374A: CVarI4
  loc_64374E: PopAdLdVar
  loc_64374F: LitVarI4
  loc_643757: PopAdLdVar
  loc_643758: FLdPrThis
  loc_643759: VCallAd Control_ID_T
  loc_64375C: FStAdFunc var_114
  loc_64375F: FLdPr var_114
  loc_643762: LateIdCallLdVar
  loc_64376C: CStrVarTmp
  loc_64376D: FStStrNoPop var_F0
  loc_643770: ConcatStr
  loc_643771: FStStrNoPop var_170
  loc_643774: FLdPrThis
  loc_643775: VCallAd Control_ID_T
  loc_643778: FStAdFunc var_128
  loc_64377B: FLdPr var_128
  loc_64377E: LateIdLdVar var_138 DispID_10 0
  loc_643785: CI4Var
  loc_643787: CVarI4
  loc_64378B: PopAdLdVar
  loc_64378C: LitVarI4
  loc_643794: PopAdLdVar
  loc_643795: FLdPrThis
  loc_643796: VCallAd Control_ID_T
  loc_643799: FStAdFunc var_15C
  loc_64379C: FLdPr var_15C
  loc_64379F: LateIdCallLdVar
  loc_6437A9: CStrVarTmp
  loc_6437AA: FStStrNoPop var_174
  loc_6437AD: ConcatStr
  loc_6437AE: FStStrNoPop var_1C0
  loc_6437B1: FLdPrThis
  loc_6437B2: VCallAd Control_ID_T
  loc_6437B5: FStAdFunc var_178
  loc_6437B8: FLdPr var_178
  loc_6437BB: LateIdLdVar var_188 DispID_10 0
  loc_6437C2: CI4Var
  loc_6437C4: CVarI4
  loc_6437C8: PopAdLdVar
  loc_6437C9: LitVarI4
  loc_6437D1: PopAdLdVar
  loc_6437D2: FLdPrThis
  loc_6437D3: VCallAd Control_ID_T
  loc_6437D6: FStAdFunc var_1AC
  loc_6437D9: FLdPr var_1AC
  loc_6437DC: LateIdCallLdVar
  loc_6437E6: CStrVarTmp
  loc_6437E7: FStStrNoPop var_1C4
  loc_6437EA: ConcatStr
  loc_6437EB: FStStr var_8C
  loc_6437EE: FFreeStr var_EC = "": var_F0 = "": var_170 = "": var_174 = "": var_1C0 = ""
  loc_6437FD: FFreeAd var_90 = "": var_A4 = "": var_D8 = "": var_114 = "": var_128 = "": var_15C = "": var_178 = ""
  loc_643810: FFreeVar var_A0 = "": var_B4 = "": var_E8 = "": var_124 = "": var_138 = "": var_16C = "": var_188 = ""
  loc_643823: LitI2_Byte 0
  loc_643825: ImpAdLdRf MemVar_74DC6C
  loc_643828: NewIfNullPr Reportes_Anteriores
  loc_64382B: Call Reportes_Anteriores.ImprimirPut(from_stack_1v)
  loc_643830: FLdRfVar var_A0
  loc_643833: FLdRfVar var_8C
  loc_643836: FLdRfVar var_88
  loc_643839: from_stack_3v = ImprimirCierreStartUp(from_stack_1v, from_stack_2v)
  loc_64383E: FFree1Var var_A0 = ""
  loc_643841: ExitProcHresult
End Sub

Private Sub T_DblClick(arg_C) '64602C
  'Data Table: 40ED00
  loc_645E10: ILdI2 arg_C
  loc_645E13: LitI2_Byte &HD
  loc_645E15: EqI2
  loc_645E16: BranchF loc_64602A
  loc_645E19: FLdPrThis
  loc_645E1A: VCallAd Control_ID_T
  loc_645E1D: FStAdFunc var_90
  loc_645E20: FLdPr var_90
  loc_645E23: LateIdLdVar var_A0 DispID_10 0
  loc_645E2A: CI4Var
  loc_645E2C: LitI4 0
  loc_645E31: GtI4
  loc_645E32: FLdPrThis
  loc_645E33: VCallAd Control_ID_T
  loc_645E36: FStAdFunc var_A4
  loc_645E39: FLdPr var_A4
  loc_645E3C: LateIdLdVar var_B4 DispID_10 0
  loc_645E43: CI4Var
  loc_645E45: CVarI4
  loc_645E49: PopAdLdVar
  loc_645E4A: LitVarI4
  loc_645E52: PopAdLdVar
  loc_645E53: FLdPrThis
  loc_645E54: VCallAd Control_ID_T
  loc_645E57: FStAdFunc var_D8
  loc_645E5A: FLdPr var_D8
  loc_645E5D: LateIdCallLdVar
  loc_645E67: CStrVarTmp
  loc_645E68: FStStrNoPop var_EC
  loc_645E6B: LitStr vbNullString
  loc_645E6E: NeStr
  loc_645E70: AndI4
  loc_645E71: FFree1Str var_EC
  loc_645E74: FFreeAd var_90 = "": var_A4 = ""
  loc_645E7D: FFreeVar var_A0 = "": var_B4 = ""
  loc_645E86: BranchF loc_64602A
  loc_645E89: FLdPrThis
  loc_645E8A: VCallAd Control_ID_T
  loc_645E8D: FStAdFunc var_90
  loc_645E90: FLdPr var_90
  loc_645E93: LateIdLdVar var_A0 DispID_10 0
  loc_645E9A: CI4Var
  loc_645E9C: CVarI4
  loc_645EA0: PopAdLdVar
  loc_645EA1: LitVarI4
  loc_645EA9: PopAdLdVar
  loc_645EAA: FLdPrThis
  loc_645EAB: VCallAd Control_ID_T
  loc_645EAE: FStAdFunc var_A4
  loc_645EB1: FLdPr var_A4
  loc_645EB4: LateIdCallLdVar
  loc_645EBE: PopAd
  loc_645EC0: FLdRfVar var_F0
  loc_645EC3: FLdRfVar var_B4
  loc_645EC6: CStrVarTmp
  loc_645EC7: PopTmpLdAdStr
  loc_645ECB: from_stack_2v = CargarDescripcionCierre(from_stack_1v)
  loc_645ED0: FLdZeroAd var_F0
  loc_645ED3: FStStr var_88
  loc_645ED6: FFree1Str var_EC
  loc_645ED9: FFreeAd var_90 = ""
  loc_645EE0: FFreeVar var_A0 = ""
  loc_645EE7: FLdPrThis
  loc_645EE8: VCallAd Control_ID_T
  loc_645EEB: FStAdFunc var_90
  loc_645EEE: FLdPr var_90
  loc_645EF1: LateIdLdVar var_A0 DispID_10 0
  loc_645EF8: CI4Var
  loc_645EFA: CVarI4
  loc_645EFE: PopAdLdVar
  loc_645EFF: LitVarI4
  loc_645F07: PopAdLdVar
  loc_645F08: FLdPrThis
  loc_645F09: VCallAd Control_ID_T
  loc_645F0C: FStAdFunc var_A4
  loc_645F0F: FLdPr var_A4
  loc_645F12: LateIdCallLdVar
  loc_645F1C: CStrVarTmp
  loc_645F1D: FStStrNoPop var_EC
  loc_645F20: FLdPrThis
  loc_645F21: VCallAd Control_ID_T
  loc_645F24: FStAdFunc var_D8
  loc_645F27: FLdPr var_D8
  loc_645F2A: LateIdLdVar var_E8 DispID_10 0
  loc_645F31: CI4Var
  loc_645F33: CVarI4
  loc_645F37: PopAdLdVar
  loc_645F38: LitVarI4
  loc_645F40: PopAdLdVar
  loc_645F41: FLdPrThis
  loc_645F42: VCallAd Control_ID_T
  loc_645F45: FStAdFunc var_114
  loc_645F48: FLdPr var_114
  loc_645F4B: LateIdCallLdVar
  loc_645F55: CStrVarTmp
  loc_645F56: FStStrNoPop var_F0
  loc_645F59: ConcatStr
  loc_645F5A: FStStrNoPop var_170
  loc_645F5D: FLdPrThis
  loc_645F5E: VCallAd Control_ID_T
  loc_645F61: FStAdFunc var_128
  loc_645F64: FLdPr var_128
  loc_645F67: LateIdLdVar var_138 DispID_10 0
  loc_645F6E: CI4Var
  loc_645F70: CVarI4
  loc_645F74: PopAdLdVar
  loc_645F75: LitVarI4
  loc_645F7D: PopAdLdVar
  loc_645F7E: FLdPrThis
  loc_645F7F: VCallAd Control_ID_T
  loc_645F82: FStAdFunc var_15C
  loc_645F85: FLdPr var_15C
  loc_645F88: LateIdCallLdVar
  loc_645F92: CStrVarTmp
  loc_645F93: FStStrNoPop var_174
  loc_645F96: ConcatStr
  loc_645F97: FStStrNoPop var_1C0
  loc_645F9A: FLdPrThis
  loc_645F9B: VCallAd Control_ID_T
  loc_645F9E: FStAdFunc var_178
  loc_645FA1: FLdPr var_178
  loc_645FA4: LateIdLdVar var_188 DispID_10 0
  loc_645FAB: CI4Var
  loc_645FAD: CVarI4
  loc_645FB1: PopAdLdVar
  loc_645FB2: LitVarI4
  loc_645FBA: PopAdLdVar
  loc_645FBB: FLdPrThis
  loc_645FBC: VCallAd Control_ID_T
  loc_645FBF: FStAdFunc var_1AC
  loc_645FC2: FLdPr var_1AC
  loc_645FC5: LateIdCallLdVar
  loc_645FCF: CStrVarTmp
  loc_645FD0: FStStrNoPop var_1C4
  loc_645FD3: ConcatStr
  loc_645FD4: FStStr var_8C
  loc_645FD7: FFreeStr var_EC = "": var_F0 = "": var_170 = "": var_174 = "": var_1C0 = ""
  loc_645FE6: FFreeAd var_90 = "": var_A4 = "": var_D8 = "": var_114 = "": var_128 = "": var_15C = "": var_178 = ""
  loc_645FF9: FFreeVar var_A0 = "": var_B4 = "": var_E8 = "": var_124 = "": var_138 = "": var_16C = "": var_188 = ""
  loc_64600C: LitI2_Byte 0
  loc_64600E: ImpAdLdRf MemVar_74DC6C
  loc_646011: NewIfNullPr Reportes_Anteriores
  loc_646014: Call Reportes_Anteriores.ImprimirPut(from_stack_1v)
  loc_646019: FLdRfVar var_A0
  loc_64601C: FLdRfVar var_8C
  loc_64601F: FLdRfVar var_88
  loc_646022: from_stack_3v = ImprimirCierreStartUp(from_stack_1v, from_stack_2v)
  loc_646027: FFree1Var var_A0 = ""
  loc_64602A: ExitProcHresult
End Sub

Public Function CargarGrilla(Rango) '650D84
  'Data Table: 40ED00
  loc_650AC8: LitI2_Byte 0
  loc_650ACA: FStI2 var_86
  loc_650ACD: FLdRfVar var_9A
  loc_650AD0: FLdRfVar var_8C
  loc_650AD3: ILdRf Rango
  loc_650AD6: LitStr "P"
  loc_650AD9: FStStrCopy var_98
  loc_650ADC: FLdRfVar var_98
  loc_650ADF: FLdRfVar CargarGrilla
  loc_650AE2: ImpAdLdRf MemVar_74C760
  loc_650AE5: NewIfNullPr Formx
  loc_650AE8: from_stack_1v = Formx.global_4589716Get()
  loc_650AED: FLdPr CargarGrilla
  loc_650AF0: Formx.FontSize = from_stack_1s
  loc_650AF5: FLdI2 var_9A
  loc_650AF8: NotI4
  loc_650AF9: FFree1Str var_98
  loc_650AFC: FFree1Ad CargarGrilla
  loc_650AFF: BranchF loc_650B33
  loc_650B02: FLdRfVar var_AC
  loc_650B05: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_650B0A: FLdRfVar var_AC
  loc_650B0D: CBoolVarNull
  loc_650B0F: FFree1Var var_AC = ""
  loc_650B12: BranchF loc_650B30
  loc_650B15: ILdRf Me
  loc_650B18: FStAdNoPop
  loc_650B1C: ImpAdLdRf MemVar_7520D4
  loc_650B1F: NewIfNullPr Global
  loc_650B22: Global.Unload from_stack_1
  loc_650B27: FFree1Ad CargarGrilla
  loc_650B2A: ExitProcCbHresult
  loc_650B30: Branch loc_650ACD
  loc_650B33: FLdRfVar var_8C
  loc_650B36: CVarRef
  loc_650B3B: FLdRfVar var_AC
  loc_650B3E: ImpAdCallFPR4  = Trim()
  loc_650B43: FLdRfVar var_AC
  loc_650B46: CStrVarTmp
  loc_650B47: FStStr var_8C
  loc_650B4A: FFree1Var var_AC = ""
  loc_650B4D: ILdRf var_8C
  loc_650B50: FnLenStr
  loc_650B51: LitI4 5
  loc_650B56: GtI4
  loc_650B57: BranchF loc_650B62
  loc_650B5A: LitI2_Byte &HFF
  loc_650B5C: FStI2 var_86
  loc_650B5F: Branch loc_650B68
  loc_650B62: ExitProcCbHresult
  loc_650B68: LitI2_Byte 1
  loc_650B6A: FStI2 var_8E
  loc_650B6D: LitI2_Byte 1
  loc_650B6F: FStI2 var_90
  loc_650B72: FLdI2 var_8E
  loc_650B75: CI4UI1
  loc_650B76: ILdRf var_8C
  loc_650B79: FnLenStr
  loc_650B7A: LeI4
  loc_650B7B: BranchF loc_650D7C
  loc_650B7E: LitVarI2 var_AC, 3
  loc_650B83: FLdI2 var_8E
  loc_650B86: CI4UI1
  loc_650B87: FLdRfVar var_8C
  loc_650B8A: CVarRef
  loc_650B8F: FLdRfVar var_DC
  loc_650B92: ImpAdCallFPR4  = Mid(, , )
  loc_650B97: FLdI2 var_90
  loc_650B9A: CI4UI1
  loc_650B9B: CVarI4
  loc_650B9F: PopAdLdVar
  loc_650BA0: LitVarI4
  loc_650BA8: PopAdLdVar
  loc_650BA9: FLdRfVar var_E0
  loc_650BAC: FLdRfVar var_DC
  loc_650BAF: CStrVarTmp
  loc_650BB0: PopTmpLdAdStr
  loc_650BB4: from_stack_2v = CargarTipoCierre(from_stack_1v)
  loc_650BB9: FLdZeroAd var_E0
  loc_650BBC: CVarStr var_110
  loc_650BBF: PopAdLdVar
  loc_650BC0: FLdPrThis
  loc_650BC1: VCallAd Control_ID_T
  loc_650BC4: FStAdFunc CargarGrilla
  loc_650BC7: FLdPr CargarGrilla
  loc_650BCA: LateIdCallSt
  loc_650BD2: FFree1Str var_98
  loc_650BD5: FFree1Ad CargarGrilla
  loc_650BD8: FFreeVar var_AC = "": var_DC = ""
  loc_650BE1: FLdI2 var_8E
  loc_650BE4: LitI2_Byte 3
  loc_650BE6: AddI2
  loc_650BE7: FStI2 var_8E
  loc_650BEA: FLdI2 var_90
  loc_650BED: CI4UI1
  loc_650BEE: CVarI4
  loc_650BF2: PopAdLdVar
  loc_650BF3: LitVarI4
  loc_650BFB: PopAdLdVar
  loc_650BFC: LitVarI2 var_AC, 10
  loc_650C01: FLdI2 var_8E
  loc_650C04: CI4UI1
  loc_650C05: FLdRfVar var_8C
  loc_650C08: CVarRef
  loc_650C0D: FLdRfVar var_DC
  loc_650C10: ImpAdCallFPR4  = Mid(, , )
  loc_650C15: FLdRfVar var_DC
  loc_650C18: CStrVarTmp
  loc_650C19: CVarStr var_110
  loc_650C1C: PopAdLdVar
  loc_650C1D: FLdPrThis
  loc_650C1E: VCallAd Control_ID_T
  loc_650C21: FStAdFunc CargarGrilla
  loc_650C24: FLdPr CargarGrilla
  loc_650C27: LateIdCallSt
  loc_650C2F: FFree1Ad CargarGrilla
  loc_650C32: FFreeVar var_AC = "": var_DC = ""
  loc_650C3B: FLdI2 var_8E
  loc_650C3E: LitI2_Byte &HA
  loc_650C40: AddI2
  loc_650C41: FStI2 var_8E
  loc_650C44: FLdI2 var_90
  loc_650C47: CI4UI1
  loc_650C48: CVarI4
  loc_650C4C: PopAdLdVar
  loc_650C4D: LitVarI4
  loc_650C55: PopAdLdVar
  loc_650C56: LitVarI2 var_AC, 8
  loc_650C5B: FLdI2 var_8E
  loc_650C5E: CI4UI1
  loc_650C5F: FLdRfVar var_8C
  loc_650C62: CVarRef
  loc_650C67: FLdRfVar var_DC
  loc_650C6A: ImpAdCallFPR4  = Mid(, , )
  loc_650C6F: FLdRfVar var_DC
  loc_650C72: CStrVarTmp
  loc_650C73: CVarStr var_110
  loc_650C76: PopAdLdVar
  loc_650C77: FLdPrThis
  loc_650C78: VCallAd Control_ID_T
  loc_650C7B: FStAdFunc CargarGrilla
  loc_650C7E: FLdPr CargarGrilla
  loc_650C81: LateIdCallSt
  loc_650C89: FFree1Ad CargarGrilla
  loc_650C8C: FFreeVar var_AC = "": var_DC = ""
  loc_650C95: FLdI2 var_8E
  loc_650C98: LitI2_Byte 8
  loc_650C9A: AddI2
  loc_650C9B: FStI2 var_8E
  loc_650C9E: FLdI2 var_90
  loc_650CA1: CI4UI1
  loc_650CA2: CVarI4
  loc_650CA6: PopAdLdVar
  loc_650CA7: LitVarI4
  loc_650CAF: PopAdLdVar
  loc_650CB0: LitVarI2 var_AC, 10
  loc_650CB5: FLdI2 var_8E
  loc_650CB8: CI4UI1
  loc_650CB9: FLdRfVar var_8C
  loc_650CBC: CVarRef
  loc_650CC1: FLdRfVar var_DC
  loc_650CC4: ImpAdCallFPR4  = Mid(, , )
  loc_650CC9: FLdRfVar var_DC
  loc_650CCC: CStrVarTmp
  loc_650CCD: CVarStr var_110
  loc_650CD0: PopAdLdVar
  loc_650CD1: FLdPrThis
  loc_650CD2: VCallAd Control_ID_T
  loc_650CD5: FStAdFunc CargarGrilla
  loc_650CD8: FLdPr CargarGrilla
  loc_650CDB: LateIdCallSt
  loc_650CE3: FFree1Ad CargarGrilla
  loc_650CE6: FFreeVar var_AC = "": var_DC = ""
  loc_650CEF: FLdI2 var_8E
  loc_650CF2: LitI2_Byte &HA
  loc_650CF4: AddI2
  loc_650CF5: FStI2 var_8E
  loc_650CF8: FLdI2 var_90
  loc_650CFB: CI4UI1
  loc_650CFC: CVarI4
  loc_650D00: PopAdLdVar
  loc_650D01: LitVarI4
  loc_650D09: PopAdLdVar
  loc_650D0A: LitVarI2 var_AC, 8
  loc_650D0F: FLdI2 var_8E
  loc_650D12: CI4UI1
  loc_650D13: FLdRfVar var_8C
  loc_650D16: CVarRef
  loc_650D1B: FLdRfVar var_DC
  loc_650D1E: ImpAdCallFPR4  = Mid(, , )
  loc_650D23: FLdRfVar var_DC
  loc_650D26: CStrVarTmp
  loc_650D27: CVarStr var_110
  loc_650D2A: PopAdLdVar
  loc_650D2B: FLdPrThis
  loc_650D2C: VCallAd Control_ID_T
  loc_650D2F: FStAdFunc CargarGrilla
  loc_650D32: FLdPr CargarGrilla
  loc_650D35: LateIdCallSt
  loc_650D3D: FFree1Ad CargarGrilla
  loc_650D40: FFreeVar var_AC = "": var_DC = ""
  loc_650D49: FLdI2 var_8E
  loc_650D4C: LitI2_Byte 9
  loc_650D4E: AddI2
  loc_650D4F: FStI2 var_8E
  loc_650D52: FLdI2 var_90
  loc_650D55: LitI2_Byte 1
  loc_650D57: AddI2
  loc_650D58: FStI2 var_90
  loc_650D5B: FLdI2 var_90
  loc_650D5E: LitI2_Byte 1
  loc_650D60: AddI2
  loc_650D61: CI4UI1
  loc_650D62: CVarI4
  loc_650D66: PopAdLdVar
  loc_650D67: FLdPrThis
  loc_650D68: VCallAd Control_ID_T
  loc_650D6B: FStAdFunc CargarGrilla
  loc_650D6E: FLdPr CargarGrilla
  loc_650D71: LateIdSt
  loc_650D76: FFree1Ad CargarGrilla
  loc_650D79: Branch loc_650B72
  loc_650D7C: ExitProcCbHresult
  loc_650D82: ExitProcHresult
End Function

Public Function CargarTipoCierre(sValor) '5F3CD4
  'Data Table: 40ED00
  loc_5F3C34: ZeroRetVal
  loc_5F3C36: LitI2_Byte 1
  loc_5F3C38: FLdRfVar var_8A
  loc_5F3C3B: LitI2_Byte &H32
  loc_5F3C3D: ForI2 var_90
  loc_5F3C43: LitVarI2 var_C0, 3
  loc_5F3C48: LitI4 1
  loc_5F3C4D: FLdI2 var_8A
  loc_5F3C50: CI4UI1
  loc_5F3C51: ImpAdLdRf MemVar_74A224
  loc_5F3C54: Ary1LdRf
  loc_5F3C55: CVarRef
  loc_5F3C5A: FLdRfVar var_D0
  loc_5F3C5D: ImpAdCallFPR4  = Mid(, , )
  loc_5F3C62: FLdRfVar var_D0
  loc_5F3C65: ILdRf sValor
  loc_5F3C68: CVarRef
  loc_5F3C6D: FLdRfVar var_F0
  loc_5F3C70: ImpAdCallFPR4  = Trim()
  loc_5F3C75: FLdRfVar var_F0
  loc_5F3C78: EqVarBool
  loc_5F3C7A: FFreeVar var_C0 = "": var_D0 = ""
  loc_5F3C83: BranchF loc_5F3CC6
  loc_5F3C86: LitVarI2 var_C0, 50
  loc_5F3C8B: LitI4 4
  loc_5F3C90: FLdI2 var_8A
  loc_5F3C93: CI4UI1
  loc_5F3C94: ImpAdLdRf MemVar_74A224
  loc_5F3C97: Ary1LdRf
  loc_5F3C98: CVarRef
  loc_5F3C9D: FLdRfVar var_D0
  loc_5F3CA0: ImpAdCallFPR4  = Mid(, , )
  loc_5F3CA5: FLdRfVar var_D0
  loc_5F3CA8: FLdRfVar var_F0
  loc_5F3CAB: ImpAdCallFPR4  = Trim()
  loc_5F3CB0: FLdRfVar var_F0
  loc_5F3CB3: CStrVarTmp
  loc_5F3CB4: FStStr var_88
  loc_5F3CB7: FFreeVar var_C0 = "": var_D0 = ""
  loc_5F3CC0: ExitProcCbHresult
  loc_5F3CC6: FLdRfVar var_8A
  loc_5F3CC9: NextI2 var_90, loc_5F3C43
  loc_5F3CCE: ExitProcCbHresult
End Function

Public Function CargarDescripcionCierre(sValor) '605754
  'Data Table: 40ED00
  loc_605680: ZeroRetVal
  loc_605682: ILdI4 sValor
  loc_605685: LitStr vbNullString
  loc_605688: EqStr
  loc_60568A: BranchF loc_605699
  loc_60568D: LitStr "255"
  loc_605690: FStStrCopy var_88
  loc_605693: ExitProcCbHresult
  loc_605699: LitI2_Byte 1
  loc_60569B: FLdRfVar var_8A
  loc_60569E: LitI2_Byte &H32
  loc_6056A0: ForI2 var_90
  loc_6056A6: LitVarI2 var_C0, 50
  loc_6056AB: LitI4 4
  loc_6056B0: FLdI2 var_8A
  loc_6056B3: CI4UI1
  loc_6056B4: ImpAdLdRf MemVar_74A224
  loc_6056B7: Ary1LdRf
  loc_6056B8: CVarRef
  loc_6056BD: FLdRfVar var_D0
  loc_6056C0: ImpAdCallFPR4  = Mid(, , )
  loc_6056C5: FLdRfVar var_D0
  loc_6056C8: FLdRfVar var_E0
  loc_6056CB: ImpAdCallFPR4  = Trim()
  loc_6056D0: FLdRfVar var_E0
  loc_6056D3: ILdRf sValor
  loc_6056D6: CVarRef
  loc_6056DB: FLdRfVar var_100
  loc_6056DE: ImpAdCallFPR4  = Trim()
  loc_6056E3: FLdRfVar var_100
  loc_6056E6: EqVarBool
  loc_6056E8: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_6056F3: BranchF loc_605736
  loc_6056F6: LitVarI2 var_C0, 3
  loc_6056FB: LitI4 1
  loc_605700: FLdI2 var_8A
  loc_605703: CI4UI1
  loc_605704: ImpAdLdRf MemVar_74A224
  loc_605707: Ary1LdRf
  loc_605708: CVarRef
  loc_60570D: FLdRfVar var_D0
  loc_605710: ImpAdCallFPR4  = Mid(, , )
  loc_605715: FLdRfVar var_D0
  loc_605718: FLdRfVar var_E0
  loc_60571B: ImpAdCallFPR4  = Trim()
  loc_605720: FLdRfVar var_E0
  loc_605723: CStrVarTmp
  loc_605724: FStStr var_88
  loc_605727: FFreeVar var_C0 = "": var_D0 = ""
  loc_605730: ExitProcCbHresult
  loc_605736: FLdRfVar var_8A
  loc_605739: NextI2 var_90, loc_6056A6
  loc_60573E: FLdI2 var_8A
  loc_605741: LitI2_Byte &H33
  loc_605743: EqI2
  loc_605744: BranchF loc_60574D
  loc_605747: LitStr "255"
  loc_60574A: FStStrCopy var_88
  loc_60574D: ExitProcCbHresult
End Function

Public Function ImprimirCierreStartUp(desc, Msg) '652F4C
  'Data Table: 40ED00
  loc_652C94: ZeroRetValVar
  loc_652C96: OnErrorGoto loc_652F04
  loc_652C99: ILdI4 desc
  loc_652C9C: CR8Str
  loc_652C9E: LitI2_Byte 1
  loc_652CA0: CR8I2
  loc_652CA1: AddR8
  loc_652CA2: CI4R8
  loc_652CA3: FLdRfVar var_B0
  loc_652CA6: ImpAdCallFPR4  = Chr()
  loc_652CAB: FLdRfVar var_CC
  loc_652CAE: FLdRfVar var_98
  loc_652CB1: ILdRf Msg
  loc_652CB4: FLdRfVar var_B0
  loc_652CB7: CStrVarTmp
  loc_652CB8: PopTmpLdAdStr
  loc_652CBC: LitStr "P"
  loc_652CBF: FStStrCopy var_B8
  loc_652CC2: FLdRfVar var_B8
  loc_652CC5: FLdRfVar var_B4
  loc_652CC8: ImpAdLdRf MemVar_74C760
  loc_652CCB: NewIfNullPr Formx
  loc_652CCE: from_stack_1v = Formx.global_4589716Get()
  loc_652CD3: FLdPr var_B4
  loc_652CD6:  = Formx.FontBold
  loc_652CDB: FLdRfVar var_CC
  loc_652CDE: NotVar var_DC
  loc_652CE2: CBoolVarNull
  loc_652CE4: FFreeStr var_B8 = ""
  loc_652CEB: FFree1Ad var_B4
  loc_652CEE: FFreeVar var_B0 = ""
  loc_652CF5: BranchF loc_652D29
  loc_652CF8: FLdRfVar var_B0
  loc_652CFB: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_652D00: FLdRfVar var_B0
  loc_652D03: CBoolVarNull
  loc_652D05: FFree1Var var_B0 = ""
  loc_652D08: BranchF loc_652D26
  loc_652D0B: ILdRf Me
  loc_652D0E: FStAdNoPop
  loc_652D12: ImpAdLdRf MemVar_7520D4
  loc_652D15: NewIfNullPr Global
  loc_652D18: Global.Unload from_stack_1
  loc_652D1D: FFree1Ad var_B4
  loc_652D20: ExitProcCbHresult
  loc_652D26: Branch loc_652C99
  loc_652D29: ILdRf var_98
  loc_652D2C: FnLenStr
  loc_652D2D: LitI4 5
  loc_652D32: LtI4
  loc_652D33: BranchF loc_652D3C
  loc_652D36: ExitProcCbHresult
  loc_652D3C: LitVarI2 var_FC, 1
  loc_652D41: FStVar var_EC
  loc_652D45: LitVarI2 var_B0, 4
  loc_652D4A: LitI4 1
  loc_652D4F: FLdRfVar var_98
  loc_652D52: CVarRef
  loc_652D57: FLdRfVar var_CC
  loc_652D5A: ImpAdCallFPR4  = Mid(, , )
  loc_652D5F: FLdRfVar var_CC
  loc_652D62: LitVarStr var_120, "TR02"
  loc_652D67: HardType
  loc_652D68: EqVar var_DC
  loc_652D6C: LitVarI2 var_150, 3
  loc_652D71: LitI4 &H6E
  loc_652D76: FLdRfVar var_98
  loc_652D79: CVarRef
  loc_652D7E: FLdRfVar var_160
  loc_652D81: ImpAdCallFPR4  = Mid(, , )
  loc_652D86: FLdRfVar var_160
  loc_652D89: LitVarStr var_170, "TR0"
  loc_652D8E: HardType
  loc_652D8F: EqVar var_180
  loc_652D93: AndVar var_190
  loc_652D97: CBoolVarNull
  loc_652D99: FFreeVar var_B0 = "": var_CC = "": var_150 = ""
  loc_652DA4: BranchF loc_652DB2
  loc_652DA7: LitI2_Byte &H6B
  loc_652DA9: CUI1I2
  loc_652DAB: FStUI1 var_FE
  loc_652DAF: Branch loc_652DBA
  loc_652DB2: LitI2_Byte &H6C
  loc_652DB4: CUI1I2
  loc_652DB6: FStUI1 var_FE
  loc_652DBA: FLdRfVar var_192
  loc_652DBD: LitStr "\reporte.mdb"
  loc_652DC0: FStStrCopy var_B8
  loc_652DC3: FLdRfVar var_B8
  loc_652DC6: ImpAdLdRf MemVar_74DC6C
  loc_652DC9: NewIfNullPr Reportes_Anteriores
  loc_652DCC: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_652DD1: FLdI2 var_192
  loc_652DD4: FFree1Str var_B8
  loc_652DD7: BranchF loc_652EF8
  loc_652DDA: FLdRfVar var_192
  loc_652DDD: LitStr "RC_DETALLE"
  loc_652DE0: FStStrCopy var_B8
  loc_652DE3: FLdRfVar var_B8
  loc_652DE6: ImpAdLdRf MemVar_74DC6C
  loc_652DE9: NewIfNullPr Reportes_Anteriores
  loc_652DEC: from_stack_2v = Reportes_Anteriores.BorrarBD(from_stack_1v)
  loc_652DF1: FLdI2 var_192
  loc_652DF4: FFree1Str var_B8
  loc_652DF7: BranchF loc_652EEF
  loc_652DFA: LitI2_Byte 0
  loc_652DFC: PopTmpLdAd2 var_192
  loc_652DFF: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_652E04: ImpAdLdRf MemVar_74DC6C
  loc_652E07: NewIfNullPr Reportes_Anteriores
  loc_652E0A: Call Reportes_Anteriores.InicializarVariables()
  loc_652E0F: LitVarI2 var_B0, 4
  loc_652E14: FLdRfVar var_EC
  loc_652E17: CI4Var
  loc_652E19: FLdRfVar var_98
  loc_652E1C: CVarRef
  loc_652E21: FLdRfVar var_CC
  loc_652E24: ImpAdCallFPR4  = Mid(, , )
  loc_652E29: FLdRfVar var_CC
  loc_652E2C: LitVarStr var_120, "TR02"
  loc_652E31: HardType
  loc_652E32: EqVarBool
  loc_652E34: FFreeVar var_B0 = ""
  loc_652E3B: BranchF loc_652EA5
  loc_652E3E: FLdRfVar var_FE
  loc_652E41: CVarRef
  loc_652E46: FLdRfVar var_EC
  loc_652E49: CI4Var
  loc_652E4B: FLdRfVar var_98
  loc_652E4E: CVarRef
  loc_652E53: FLdRfVar var_B0
  loc_652E56: ImpAdCallFPR4  = Mid(, , )
  loc_652E5B: FLdRfVar var_B0
  loc_652E5E: CStrVarTmp
  loc_652E5F: FStStr var_A0
  loc_652E62: FFree1Var var_B0 = ""
  loc_652E65: FLdRfVar var_192
  loc_652E68: FLdRfVar var_A0
  loc_652E6B: ImpAdLdRf MemVar_74DC6C
  loc_652E6E: NewIfNullPr Reportes_Anteriores
  loc_652E71: from_stack_2v = Reportes_Anteriores.PorcesarDatosDetalles(from_stack_1v)
  loc_652E76: FLdI2 var_192
  loc_652E79: NotI4
  loc_652E7A: BranchF loc_652E83
  loc_652E7D: ExitProcCbHresult
  loc_652E83: FLdRfVar var_EC
  loc_652E86: FLdUI1
  loc_652E8A: CVarUI1
  loc_652E8E: AddVar var_B0
  loc_652E92: LitVarI2 var_110, 2
  loc_652E97: AddVar var_CC
  loc_652E9B: FStVar var_EC
  loc_652E9F: FFree1Var var_B0 = ""
  loc_652EA2: Branch loc_652E0F
  loc_652EA5: FLdRfVar var_192
  loc_652EA8: ImpAdLdRf MemVar_74DC6C
  loc_652EAB: NewIfNullPr Reportes_Anteriores
  loc_652EAE: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_652EB3: LitStr "REPORTE DE "
  loc_652EB6: FLdRfVar var_B8
  loc_652EB9: ILdRf desc
  loc_652EBC: from_stack_2v = CargarTipoCierre(from_stack_1v)
  loc_652EC1: ILdRf var_B8
  loc_652EC4: ConcatStr
  loc_652EC5: FStStr var_9C
  loc_652EC8: FFree1Str var_B8
  loc_652ECB: FLdRfVar var_BC
  loc_652ECE: FLdRfVar var_9C
  loc_652ED1: LitStr "\CierreXTipo.rpt"
  loc_652ED4: FStStrCopy var_B8
  loc_652ED7: FLdRfVar var_B8
  loc_652EDA: ImpAdLdRf MemVar_74DC6C
  loc_652EDD: NewIfNullPr Reportes_Anteriores
  loc_652EE0: from_stack_3v = Reportes_Anteriores.MostrarReporte(from_stack_1v, from_stack_2v)
  loc_652EE5: FFreeStr var_B8 = ""
  loc_652EEC: Branch loc_652EF5
  loc_652EEF: ExitProcCbHresult
  loc_652EF5: Branch loc_652EFE
  loc_652EF8: ExitProcCbHresult
  loc_652EFE: ExitProcCbHresult
  loc_652F04: LitVar_Missing var_150
  loc_652F07: LitVar_Missing var_DC
  loc_652F0A: LitVarStr var_110, "ERROR"
  loc_652F0F: FStVarCopyObj var_CC
  loc_652F12: FLdRfVar var_CC
  loc_652F15: LitI4 &H10
  loc_652F1A: LitVarStr var_FC, "Error en la carga del reporte"
  loc_652F1F: FStVarCopyObj var_B0
  loc_652F22: FLdRfVar var_B0
  loc_652F25: ImpAdCallFPR4 MsgBox(, , , , )
  loc_652F2A: FFreeVar var_B0 = "": var_CC = "": var_DC = ""
  loc_652F35: FLdRfVar var_192
  loc_652F38: ImpAdLdRf MemVar_74DC6C
  loc_652F3B: NewIfNullPr Reportes_Anteriores
  loc_652F3E: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_652F43: ExitProcCbHresult
End Function

Private Function Proc_73_9_5D1F20() '5D1F20
  'Data Table: 40ED00
  loc_5D1F08: ILdRf Me
  loc_5D1F0B: FStAdNoPop
  loc_5D1F0F: ImpAdLdRf MemVar_7520D4
  loc_5D1F12: NewIfNullPr Global
  loc_5D1F15: Global.Unload from_stack_1
  loc_5D1F1A: FFree1Ad var_88
  loc_5D1F1D: ExitProcHresult
End Function
