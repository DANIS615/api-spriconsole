VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form FrmFechas
  Caption = "Aceptar"
  BackColor = &HE0E0E0&
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
  ClientWidth = 6210
  ClientHeight = 6165
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton Command4
    Caption = "&Imprimir"
    Left = 360
    Top = 5400
    Width = 1455
    Height = 615
    TabIndex = 6
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
  Begin MSFlexGridLib.MSFlexGrid TablaAnexo
    Left = 3720
    Top = 240
    Width = 2175
    Height = 4815
    TabIndex = 5
    OleObjectBlob = "FrmFechas.frx":0000
  End
  Begin VB.CommandButton PanelAnexo
    Caption = "Command4"
    Left = 3600
    Top = 120
    Width = 2415
    Height = 5055
    TabIndex = 4
  End
  Begin VB.CommandButton Command3
    Caption = "&Visualizar"
    Left = 2400
    Top = 5400
    Width = 1455
    Height = 615
    TabIndex = 3
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
  Begin VB.CommandButton Command2
    Caption = "&Salir"
    Left = 4440
    Top = 5400
    Width = 1455
    Height = 615
    TabIndex = 2
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
  Begin MSFlexGridLib.MSFlexGrid TablaFechas
    Left = 240
    Top = 240
    Width = 3000
    Height = 4815
    TabIndex = 1
    OleObjectBlob = "FrmFechas.frx":00EC
  End
  Begin VB.CommandButton Command1
    Caption = "Command1"
    Left = 120
    Top = 120
    Width = 3255
    Height = 5055
    TabIndex = 0
  End
End

Attribute VB_Name = "FrmFechas"

Public Historico As Integer
Public TipoReporte As String


Private Sub Form_Load() '5D1B44
  'Data Table: 42D060
  loc_5D1B2C: ILdRf Me
  loc_5D1B2F: CastAd
  loc_5D1B32: FStAdFunc var_88
  loc_5D1B35: FLdRfVar var_88
  loc_5D1B38: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5D1B3D: FFree1Ad var_88
  loc_5D1B40: ExitProcHresult
  loc_5D1B41: FLdPr var_B8
End Sub

Private Sub Form_Activate() '5D5508
  'Data Table: 42D060
  loc_5D54E4: FLdPr Me
  loc_5D54E7: MemLdStr TipoReporte
  loc_5D54EA: FStStrCopy var_88
  loc_5D54ED: ILdRf var_88
  loc_5D54F0: LitStr "C"
  loc_5D54F3: EqStr
  loc_5D54F5: BranchF loc_5D5500
  loc_5D54F8: from_stack_2v = Proc_85_25_6184E4(from_stack_1v)
  loc_5D54FD: Branch loc_5D5505
  loc_5D5500: from_stack_1v = Proc_85_24_66E170()
  loc_5D5505: ExitProcHresult
End Sub

Private Sub Command4_Click() '6C70E4
  'Data Table: 42D060
  loc_6C686C: FLdPr Me
  loc_6C686F: MemLdStr TipoReporte
  loc_6C6872: LitStr "G"
  loc_6C6875: EqStr
  loc_6C6877: FLdPr Me
  loc_6C687A: MemLdStr TipoReporte
  loc_6C687D: LitStr "F"
  loc_6C6880: EqStr
  loc_6C6882: OrI4
  loc_6C6883: FLdPr Me
  loc_6C6886: MemLdStr TipoReporte
  loc_6C6889: LitStr "L"
  loc_6C688C: EqStr
  loc_6C688E: OrI4
  loc_6C688F: BranchF loc_6C6C8A
  loc_6C6892: LitVar_Missing var_110
  loc_6C6895: LitVar_Missing var_F0
  loc_6C6898: LitVar_Missing var_D0
  loc_6C689B: LitI4 &H44
  loc_6C68A0: LitVarStr var_A0, "¿Desea imprimir el reporte?"
  loc_6C68A5: FStVarCopyObj var_B0
  loc_6C68A8: FLdRfVar var_B0
  loc_6C68AB: ImpAdCallI2 MsgBox(, , , , )
  loc_6C68B0: LitI4 6
  loc_6C68B5: EqI4
  loc_6C68B6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6C68C1: BranchF loc_6C6C87
  loc_6C68C4: FLdPrThis
  loc_6C68C5: VCallAd Control_ID_TablaFechas
  loc_6C68C8: FStAdFunc var_114
  loc_6C68CB: FLdPr var_114
  loc_6C68CE: LateIdLdVar var_B0 DispID_10 0
  loc_6C68D5: CI4Var
  loc_6C68D7: CVarI4
  loc_6C68DB: PopAdLdVar
  loc_6C68DC: LitVarI4
  loc_6C68E4: PopAdLdVar
  loc_6C68E5: FLdPrThis
  loc_6C68E6: VCallAd Control_ID_TablaFechas
  loc_6C68E9: FStAdFunc var_118
  loc_6C68EC: FLdPr var_118
  loc_6C68EF: LateIdCallLdVar
  loc_6C68F9: PopAd
  loc_6C68FB: FLdPrThis
  loc_6C68FC: VCallAd Control_ID_TablaFechas
  loc_6C68FF: FStAdFunc var_13C
  loc_6C6902: FLdPr var_13C
  loc_6C6905: LateIdLdVar var_14C DispID_10 0
  loc_6C690C: CI4Var
  loc_6C690E: CVarI4
  loc_6C6912: PopAdLdVar
  loc_6C6913: LitVarI4
  loc_6C691B: PopAdLdVar
  loc_6C691C: FLdPrThis
  loc_6C691D: VCallAd Control_ID_TablaFechas
  loc_6C6920: FStAdFunc var_170
  loc_6C6923: FLdPr var_170
  loc_6C6926: LateIdCallLdVar
  loc_6C6930: PopAd
  loc_6C6932: FLdPrThis
  loc_6C6933: VCallAd Control_ID_TablaFechas
  loc_6C6936: FStAdFunc var_1F4
  loc_6C6939: FLdPr var_1F4
  loc_6C693C: LateIdLdVar var_204 DispID_10 0
  loc_6C6943: CI4Var
  loc_6C6945: CVarI4
  loc_6C6949: PopAdLdVar
  loc_6C694A: LitVarI4
  loc_6C6952: PopAdLdVar
  loc_6C6953: FLdPrThis
  loc_6C6954: VCallAd Control_ID_TablaFechas
  loc_6C6957: FStAdFunc var_228
  loc_6C695A: FLdPr var_228
  loc_6C695D: LateIdCallLdVar
  loc_6C6967: PopAd
  loc_6C6969: LitVarI2 var_110, 4
  loc_6C696E: LitI4 7
  loc_6C6973: FLdRfVar var_D0
  loc_6C6976: CStrVarTmp
  loc_6C6977: CVarStr var_F0
  loc_6C697A: FLdRfVar var_128
  loc_6C697D: ImpAdCallFPR4  = Mid(, , )
  loc_6C6982: FLdRfVar var_128
  loc_6C6985: LitVarStr var_100, "/"
  loc_6C698A: ConcatVar var_138
  loc_6C698E: LitVarI2 var_1B0, 2
  loc_6C6993: LitI4 4
  loc_6C6998: FLdRfVar var_180
  loc_6C699B: CStrVarTmp
  loc_6C699C: CVarStr var_190
  loc_6C699F: FLdRfVar var_1C0
  loc_6C69A2: ImpAdCallFPR4  = Mid(, , )
  loc_6C69A7: FLdRfVar var_1C0
  loc_6C69AA: ConcatVar var_1D0
  loc_6C69AE: LitVarStr var_1E0, "/"
  loc_6C69B3: ConcatVar var_1F0
  loc_6C69B7: LitVarI2 var_268, 2
  loc_6C69BC: LitI4 1
  loc_6C69C1: FLdRfVar var_238
  loc_6C69C4: CStrVarTmp
  loc_6C69C5: CVarStr var_248
  loc_6C69C8: FLdRfVar var_278
  loc_6C69CB: ImpAdCallFPR4  = Mid(, , )
  loc_6C69D0: FLdRfVar var_278
  loc_6C69D3: ConcatVar var_288
  loc_6C69D7: LitVarStr var_298, "00:00:00"
  loc_6C69DC: ConcatVar var_2A8
  loc_6C69E0: CStrVarTmp
  loc_6C69E1: FStStr var_8C
  loc_6C69E4: FFreeAd var_114 = "": var_118 = "": var_13C = "": var_170 = "": var_1F4 = ""
  loc_6C69F3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_128 = "": var_14C = "": var_180 = "": var_190 = "": var_1B0 = "": var_138 = "": var_1C0 = "": var_1D0 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_1F0 = "": var_278 = "": var_288 = ""
  loc_6C6A1E: ILdRf var_8C
  loc_6C6A21: ILdRf var_8C
  loc_6C6A24: ConcatStr
  loc_6C6A25: FStStrNoPop var_2AC
  loc_6C6A28: FLdPrThis
  loc_6C6A29: VCallAd Control_ID_TablaFechas
  loc_6C6A2C: FStAdFunc var_114
  loc_6C6A2F: FLdPr var_114
  loc_6C6A32: LateIdLdVar var_B0 DispID_10 0
  loc_6C6A39: CI4Var
  loc_6C6A3B: CVarI4
  loc_6C6A3F: PopAdLdVar
  loc_6C6A40: LitVarI4
  loc_6C6A48: PopAdLdVar
  loc_6C6A49: FLdPrThis
  loc_6C6A4A: VCallAd Control_ID_TablaFechas
  loc_6C6A4D: FStAdFunc var_118
  loc_6C6A50: FLdPr var_118
  loc_6C6A53: LateIdCallLdVar
  loc_6C6A5D: CStrVarTmp
  loc_6C6A5E: FStStrNoPop var_2B0
  loc_6C6A61: ConcatStr
  loc_6C6A62: FStStr var_8C
  loc_6C6A65: FFreeStr var_2AC = ""
  loc_6C6A6C: FFreeAd var_114 = ""
  loc_6C6A73: FFreeVar var_B0 = ""
  loc_6C6A7A: FLdPrThis
  loc_6C6A7B: VCallAd Control_ID_TablaFechas
  loc_6C6A7E: FStAdFunc var_114
  loc_6C6A81: FLdPr var_114
  loc_6C6A84: LateIdLdVar var_B0 DispID_10 0
  loc_6C6A8B: CI4Var
  loc_6C6A8D: CVarI4
  loc_6C6A91: PopAdLdVar
  loc_6C6A92: FLdPrThis
  loc_6C6A93: VCallAd Control_ID_TablaFechas
  loc_6C6A96: FStAdFunc var_118
  loc_6C6A99: FLdPr var_118
  loc_6C6A9C: LateIdLdVar var_D0 DispID_11 0
  loc_6C6AA3: CI4Var
  loc_6C6AA5: CVarI4
  loc_6C6AA9: PopAdLdVar
  loc_6C6AAA: FLdPrThis
  loc_6C6AAB: VCallAd Control_ID_TablaFechas
  loc_6C6AAE: FStAdFunc var_13C
  loc_6C6AB1: FLdPr var_13C
  loc_6C6AB4: LateIdCallLdVar
  loc_6C6ABE: CStrVarTmp
  loc_6C6ABF: FStStrNoPop var_2AC
  loc_6C6AC2: LitStr " - Vacio - "
  loc_6C6AC5: NeStr
  loc_6C6AC7: FFree1Str var_2AC
  loc_6C6ACA: FFreeAd var_114 = "": var_118 = ""
  loc_6C6AD3: FFreeVar var_B0 = "": var_D0 = ""
  loc_6C6ADC: BranchF loc_6C6B8C
  loc_6C6ADF: FLdRfVar var_B0
  loc_6C6AE2: FLdRfVar var_90
  loc_6C6AE5: FLdRfVar var_8C
  loc_6C6AE8: FLdPr Me
  loc_6C6AEB: MemLdRfVar from_stack_1.TipoReporte
  loc_6C6AEE: FLdPr Me
  loc_6C6AF1: MemLdRfVar from_stack_1.TipoReporte
  loc_6C6AF4: FLdRfVar var_114
  loc_6C6AF7: ImpAdLdRf MemVar_74C760
  loc_6C6AFA: NewIfNullPr Formx
  loc_6C6AFD: from_stack_1v = Formx.global_4589716Get()
  loc_6C6B02: FLdPr var_114
  loc_6C6B05:  = Formx.FontBold
  loc_6C6B0A: FLdRfVar var_B0
  loc_6C6B0D: NotVar var_D0
  loc_6C6B11: CBoolVarNull
  loc_6C6B13: FFree1Ad var_114
  loc_6C6B16: FFree1Var var_B0 = ""
  loc_6C6B19: BranchF loc_6C6B48
  loc_6C6B1C: FLdRfVar var_B0
  loc_6C6B1F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C6B24: FLdRfVar var_B0
  loc_6C6B27: CBoolVarNull
  loc_6C6B29: FFree1Var var_B0 = ""
  loc_6C6B2C: BranchF loc_6C6B45
  loc_6C6B2F: ILdRf Me
  loc_6C6B32: FStAdNoPop
  loc_6C6B36: ImpAdLdRf MemVar_7520D4
  loc_6C6B39: NewIfNullPr Global
  loc_6C6B3C: Global.Unload from_stack_1
  loc_6C6B41: FFree1Ad var_114
  loc_6C6B44: ExitProcHresult
  loc_6C6B45: Branch loc_6C6ADF
  loc_6C6B48: FLdRfVar var_2B2
  loc_6C6B4B: FLdRfVar var_90
  loc_6C6B4E: from_stack_2v = ArmarReporteRV(from_stack_1v)
  loc_6C6B53: FLdI2 var_2B2
  loc_6C6B56: NotI4
  loc_6C6B57: BranchF loc_6C6B8C
  loc_6C6B5A: LitVar_Missing var_110
  loc_6C6B5D: LitVar_Missing var_F0
  loc_6C6B60: LitVarStr var_C0, "Reportes"
  loc_6C6B65: FStVarCopyObj var_D0
  loc_6C6B68: FLdRfVar var_D0
  loc_6C6B6B: LitI4 &H40
  loc_6C6B70: LitVarStr var_A0, "Los archivos estan siendo utilizados. Por favor reintente."
  loc_6C6B75: FStVarCopyObj var_B0
  loc_6C6B78: FLdRfVar var_B0
  loc_6C6B7B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C6B80: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6C6B8B: ExitProcHresult
  loc_6C6B8C: FLdRfVar var_2B4
  loc_6C6B8F: LitI2_Byte &HFF
  loc_6C6B91: PopTmpLdAd2 var_2B2
  loc_6C6B94: LitStr vbNullString
  loc_6C6B97: FStStrCopy var_2AC
  loc_6C6B9A: FLdRfVar var_2AC
  loc_6C6B9D: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6C6BA2: FFree1Str var_2AC
  loc_6C6BA5: LitI2_Byte 1
  loc_6C6BA7: FLdRfVar var_86
  loc_6C6BAA: FLdPrThis
  loc_6C6BAB: VCallAd Control_ID_TablaAnexo
  loc_6C6BAE: FStAdFunc var_114
  loc_6C6BB1: FLdPr var_114
  loc_6C6BB4: LateIdLdVar var_B0 DispID_4 0
  loc_6C6BBB: CI4Var
  loc_6C6BBD: LitI4 1
  loc_6C6BC2: SubI4
  loc_6C6BC3: CI2I4
  loc_6C6BC4: FFree1Ad var_114
  loc_6C6BC7: FFree1Var var_B0 = ""
  loc_6C6BCA: ForI2 var_2B8
  loc_6C6BD0: FLdI2 var_86
  loc_6C6BD3: CI4UI1
  loc_6C6BD4: CVarI4
  loc_6C6BD8: PopAdLdVar
  loc_6C6BD9: FLdPrThis
  loc_6C6BDA: VCallAd Control_ID_TablaAnexo
  loc_6C6BDD: FStAdFunc var_114
  loc_6C6BE0: FLdPr var_114
  loc_6C6BE3: LateIdLdVar var_B0 DispID_11 0
  loc_6C6BEA: CI4Var
  loc_6C6BEC: CVarI4
  loc_6C6BF0: PopAdLdVar
  loc_6C6BF1: FLdPrThis
  loc_6C6BF2: VCallAd Control_ID_TablaAnexo
  loc_6C6BF5: FStAdFunc var_118
  loc_6C6BF8: FLdPr var_118
  loc_6C6BFB: LateIdCallLdVar
  loc_6C6C05: CStrVarTmp
  loc_6C6C06: FStStrNoPop var_2AC
  loc_6C6C09: LitStr " - Vacio - "
  loc_6C6C0C: NeStr
  loc_6C6C0E: FFree1Str var_2AC
  loc_6C6C11: FFreeAd var_114 = ""
  loc_6C6C18: FFreeVar var_B0 = ""
  loc_6C6C1F: BranchF loc_6C6C7F
  loc_6C6C22: FLdI2 var_86
  loc_6C6C25: CI4UI1
  loc_6C6C26: CVarI4
  loc_6C6C2A: PopAdLdVar
  loc_6C6C2B: FLdPrThis
  loc_6C6C2C: VCallAd Control_ID_TablaAnexo
  loc_6C6C2F: FStAdFunc var_114
  loc_6C6C32: FLdPr var_114
  loc_6C6C35: LateIdLdVar var_B0 DispID_11 0
  loc_6C6C3C: CI4Var
  loc_6C6C3E: CVarI4
  loc_6C6C42: PopAdLdVar
  loc_6C6C43: FLdPrThis
  loc_6C6C44: VCallAd Control_ID_TablaAnexo
  loc_6C6C47: FStAdFunc var_118
  loc_6C6C4A: FLdPr var_118
  loc_6C6C4D: LateIdCallLdVar
  loc_6C6C57: PopAd
  loc_6C6C59: FLdRfVar var_2B4
  loc_6C6C5C: LitI2_Byte &HFF
  loc_6C6C5E: PopTmpLdAd2 var_2B2
  loc_6C6C61: FLdRfVar var_D0
  loc_6C6C64: CStrVarTmp
  loc_6C6C65: PopTmpLdAdStr
  loc_6C6C69: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6C6C6E: FFree1Str var_2AC
  loc_6C6C71: FFreeAd var_114 = ""
  loc_6C6C78: FFreeVar var_B0 = ""
  loc_6C6C7F: FLdRfVar var_86
  loc_6C6C82: NextI2 var_2B8, loc_6C6BD0
  loc_6C6C87: Branch loc_6C70E1
  loc_6C6C8A: FLdPr Me
  loc_6C6C8D: MemLdStr TipoReporte
  loc_6C6C90: LitStr "J"
  loc_6C6C93: EqStr
  loc_6C6C95: FLdPr Me
  loc_6C6C98: MemLdStr TipoReporte
  loc_6C6C9B: LitStr "I"
  loc_6C6C9E: EqStr
  loc_6C6CA0: OrI4
  loc_6C6CA1: BranchF loc_6C70E1
  loc_6C6CA4: LitVar_Missing var_110
  loc_6C6CA7: LitVar_Missing var_F0
  loc_6C6CAA: LitVarStr var_C0, "Ajuste de rendición de Venta"
  loc_6C6CAF: FStVarCopyObj var_D0
  loc_6C6CB2: FLdRfVar var_D0
  loc_6C6CB5: LitI4 &H44
  loc_6C6CBA: LitVarStr var_A0, "¿Desea imprimir el Ajuste?"
  loc_6C6CBF: FStVarCopyObj var_B0
  loc_6C6CC2: FLdRfVar var_B0
  loc_6C6CC5: ImpAdCallI2 MsgBox(, , , , )
  loc_6C6CCA: LitI4 6
  loc_6C6CCF: EqI4
  loc_6C6CD0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6C6CDB: BranchF loc_6C70E1
  loc_6C6CDE: FLdPrThis
  loc_6C6CDF: VCallAd Control_ID_TablaFechas
  loc_6C6CE2: FStAdFunc var_114
  loc_6C6CE5: FLdPr var_114
  loc_6C6CE8: LateIdLdVar var_B0 DispID_10 0
  loc_6C6CEF: CI4Var
  loc_6C6CF1: CVarI4
  loc_6C6CF5: PopAdLdVar
  loc_6C6CF6: LitVarI4
  loc_6C6CFE: PopAdLdVar
  loc_6C6CFF: FLdPrThis
  loc_6C6D00: VCallAd Control_ID_TablaFechas
  loc_6C6D03: FStAdFunc var_118
  loc_6C6D06: FLdPr var_118
  loc_6C6D09: LateIdCallLdVar
  loc_6C6D13: PopAd
  loc_6C6D15: FLdPrThis
  loc_6C6D16: VCallAd Control_ID_TablaFechas
  loc_6C6D19: FStAdFunc var_13C
  loc_6C6D1C: FLdPr var_13C
  loc_6C6D1F: LateIdLdVar var_14C DispID_10 0
  loc_6C6D26: CI4Var
  loc_6C6D28: CVarI4
  loc_6C6D2C: PopAdLdVar
  loc_6C6D2D: LitVarI4
  loc_6C6D35: PopAdLdVar
  loc_6C6D36: FLdPrThis
  loc_6C6D37: VCallAd Control_ID_TablaFechas
  loc_6C6D3A: FStAdFunc var_170
  loc_6C6D3D: FLdPr var_170
  loc_6C6D40: LateIdCallLdVar
  loc_6C6D4A: PopAd
  loc_6C6D4C: FLdPrThis
  loc_6C6D4D: VCallAd Control_ID_TablaFechas
  loc_6C6D50: FStAdFunc var_1F4
  loc_6C6D53: FLdPr var_1F4
  loc_6C6D56: LateIdLdVar var_204 DispID_10 0
  loc_6C6D5D: CI4Var
  loc_6C6D5F: CVarI4
  loc_6C6D63: PopAdLdVar
  loc_6C6D64: LitVarI4
  loc_6C6D6C: PopAdLdVar
  loc_6C6D6D: FLdPrThis
  loc_6C6D6E: VCallAd Control_ID_TablaFechas
  loc_6C6D71: FStAdFunc var_228
  loc_6C6D74: FLdPr var_228
  loc_6C6D77: LateIdCallLdVar
  loc_6C6D81: PopAd
  loc_6C6D83: LitVarI2 var_110, 4
  loc_6C6D88: LitI4 7
  loc_6C6D8D: FLdRfVar var_D0
  loc_6C6D90: CStrVarTmp
  loc_6C6D91: CVarStr var_F0
  loc_6C6D94: FLdRfVar var_128
  loc_6C6D97: ImpAdCallFPR4  = Mid(, , )
  loc_6C6D9C: FLdRfVar var_128
  loc_6C6D9F: LitVarStr var_100, "/"
  loc_6C6DA4: ConcatVar var_138
  loc_6C6DA8: LitVarI2 var_1B0, 2
  loc_6C6DAD: LitI4 4
  loc_6C6DB2: FLdRfVar var_180
  loc_6C6DB5: CStrVarTmp
  loc_6C6DB6: CVarStr var_190
  loc_6C6DB9: FLdRfVar var_1C0
  loc_6C6DBC: ImpAdCallFPR4  = Mid(, , )
  loc_6C6DC1: FLdRfVar var_1C0
  loc_6C6DC4: ConcatVar var_1D0
  loc_6C6DC8: LitVarStr var_1E0, "/"
  loc_6C6DCD: ConcatVar var_1F0
  loc_6C6DD1: LitVarI2 var_268, 2
  loc_6C6DD6: LitI4 1
  loc_6C6DDB: FLdRfVar var_238
  loc_6C6DDE: CStrVarTmp
  loc_6C6DDF: CVarStr var_248
  loc_6C6DE2: FLdRfVar var_278
  loc_6C6DE5: ImpAdCallFPR4  = Mid(, , )
  loc_6C6DEA: FLdRfVar var_278
  loc_6C6DED: ConcatVar var_288
  loc_6C6DF1: CStrVarTmp
  loc_6C6DF2: FStStr var_8C
  loc_6C6DF5: FFreeAd var_114 = "": var_118 = "": var_13C = "": var_170 = "": var_1F4 = ""
  loc_6C6E04: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_128 = "": var_14C = "": var_180 = "": var_190 = "": var_1B0 = "": var_138 = "": var_1C0 = "": var_1D0 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_1F0 = "": var_278 = ""
  loc_6C6E2D: FLdPrThis
  loc_6C6E2E: VCallAd Control_ID_TablaFechas
  loc_6C6E31: FStAdFunc var_114
  loc_6C6E34: FLdPr var_114
  loc_6C6E37: LateIdLdVar var_B0 DispID_10 0
  loc_6C6E3E: CI4Var
  loc_6C6E40: CVarI4
  loc_6C6E44: PopAdLdVar
  loc_6C6E45: LitVarI4
  loc_6C6E4D: PopAdLdVar
  loc_6C6E4E: FLdPrThis
  loc_6C6E4F: VCallAd Control_ID_TablaFechas
  loc_6C6E52: FStAdFunc var_118
  loc_6C6E55: FLdPr var_118
  loc_6C6E58: LateIdCallLdVar
  loc_6C6E62: PopAd
  loc_6C6E64: FLdPrThis
  loc_6C6E65: VCallAd Control_ID_TablaFechas
  loc_6C6E68: FStAdFunc var_13C
  loc_6C6E6B: FLdPr var_13C
  loc_6C6E6E: LateIdLdVar var_190 DispID_10 0
  loc_6C6E75: CI4Var
  loc_6C6E77: CVarI4
  loc_6C6E7B: PopAdLdVar
  loc_6C6E7C: LitVarI4
  loc_6C6E84: PopAdLdVar
  loc_6C6E85: FLdPrThis
  loc_6C6E86: VCallAd Control_ID_TablaFechas
  loc_6C6E89: FStAdFunc var_170
  loc_6C6E8C: FLdPr var_170
  loc_6C6E8F: LateIdCallLdVar
  loc_6C6E99: PopAd
  loc_6C6E9B: FLdPrThis
  loc_6C6E9C: VCallAd Control_ID_TablaFechas
  loc_6C6E9F: FStAdFunc var_1F4
  loc_6C6EA2: FLdPr var_1F4
  loc_6C6EA5: LateIdLdVar var_248 DispID_10 0
  loc_6C6EAC: CI4Var
  loc_6C6EAE: CVarI4
  loc_6C6EB2: PopAdLdVar
  loc_6C6EB3: LitVarI4
  loc_6C6EBB: PopAdLdVar
  loc_6C6EBC: FLdPrThis
  loc_6C6EBD: VCallAd Control_ID_TablaFechas
  loc_6C6EC0: FStAdFunc var_228
  loc_6C6EC3: FLdPr var_228
  loc_6C6EC6: LateIdCallLdVar
  loc_6C6ED0: PopAd
  loc_6C6ED2: ILdRf var_8C
  loc_6C6ED5: LitStr "00:00:00"
  loc_6C6ED8: ConcatStr
  loc_6C6ED9: CVarStr var_138
  loc_6C6EDC: LitVarI2 var_110, 4
  loc_6C6EE1: LitI4 7
  loc_6C6EE6: FLdRfVar var_D0
  loc_6C6EE9: CStrVarTmp
  loc_6C6EEA: CVarStr var_F0
  loc_6C6EED: FLdRfVar var_128
  loc_6C6EF0: ImpAdCallFPR4  = Mid(, , )
  loc_6C6EF5: FLdRfVar var_128
  loc_6C6EF8: ConcatVar var_14C
  loc_6C6EFC: LitVarStr var_100, "/"
  loc_6C6F01: ConcatVar var_180
  loc_6C6F05: LitVarI2 var_1D0, 2
  loc_6C6F0A: LitI4 4
  loc_6C6F0F: FLdRfVar var_1B0
  loc_6C6F12: CStrVarTmp
  loc_6C6F13: CVarStr var_1C0
  loc_6C6F16: FLdRfVar var_1F0
  loc_6C6F19: ImpAdCallFPR4  = Mid(, , )
  loc_6C6F1E: FLdRfVar var_1F0
  loc_6C6F21: ConcatVar var_204
  loc_6C6F25: LitVarStr var_1E0, "/"
  loc_6C6F2A: ConcatVar var_238
  loc_6C6F2E: LitVarI2 var_288, 2
  loc_6C6F33: LitI4 1
  loc_6C6F38: FLdRfVar var_268
  loc_6C6F3B: CStrVarTmp
  loc_6C6F3C: CVarStr var_278
  loc_6C6F3F: FLdRfVar var_2A8
  loc_6C6F42: ImpAdCallFPR4  = Mid(, , )
  loc_6C6F47: FLdRfVar var_2A8
  loc_6C6F4A: ConcatVar var_2C8
  loc_6C6F4E: LitVarStr var_298, "00:00:00"
  loc_6C6F53: ConcatVar var_2D8
  loc_6C6F57: FLdPrThis
  loc_6C6F58: VCallAd Control_ID_TablaFechas
  loc_6C6F5B: FStAdFunc var_2DC
  loc_6C6F5E: FLdPr var_2DC
  loc_6C6F61: LateIdLdVar var_2EC DispID_10 0
  loc_6C6F68: CI4Var
  loc_6C6F6A: CVarI4
  loc_6C6F6E: PopAdLdVar
  loc_6C6F6F: LitVarI4
  loc_6C6F77: PopAdLdVar
  loc_6C6F78: FLdPrThis
  loc_6C6F79: VCallAd Control_ID_TablaFechas
  loc_6C6F7C: FStAdFunc var_310
  loc_6C6F7F: FLdPr var_310
  loc_6C6F82: LateIdCallLdVar
  loc_6C6F8C: CStrVarTmp
  loc_6C6F8D: CVarStr var_330
  loc_6C6F90: ConcatVar var_340
  loc_6C6F94: CStrVarTmp
  loc_6C6F95: FStStr var_8C
  loc_6C6F98: FFreeAd var_114 = "": var_118 = "": var_13C = "": var_170 = "": var_1F4 = "": var_228 = "": var_2DC = ""
  loc_6C6FAB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_128 = "": var_14C = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_180 = "": var_1F0 = "": var_204 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_238 = "": var_2A8 = "": var_2C8 = "": var_2EC = "": var_320 = "": var_2D8 = "": var_330 = ""
  loc_6C6FE2: FLdRfVar var_B0
  loc_6C6FE5: FLdRfVar var_90
  loc_6C6FE8: FLdRfVar var_8C
  loc_6C6FEB: FLdPr Me
  loc_6C6FEE: MemLdRfVar from_stack_1.TipoReporte
  loc_6C6FF1: FLdPr Me
  loc_6C6FF4: MemLdRfVar from_stack_1.TipoReporte
  loc_6C6FF7: FLdRfVar var_114
  loc_6C6FFA: ImpAdLdRf MemVar_74C760
  loc_6C6FFD: NewIfNullPr Formx
  loc_6C7000: from_stack_1v = Formx.global_4589716Get()
  loc_6C7005: FLdPr var_114
  loc_6C7008:  = Formx.FontBold
  loc_6C700D: FLdRfVar var_B0
  loc_6C7010: NotVar var_D0
  loc_6C7014: CBoolVarNull
  loc_6C7016: FFree1Ad var_114
  loc_6C7019: FFree1Var var_B0 = ""
  loc_6C701C: BranchF loc_6C704B
  loc_6C701F: FLdRfVar var_B0
  loc_6C7022: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C7027: FLdRfVar var_B0
  loc_6C702A: CBoolVarNull
  loc_6C702C: FFree1Var var_B0 = ""
  loc_6C702F: BranchF loc_6C7048
  loc_6C7032: ILdRf Me
  loc_6C7035: FStAdNoPop
  loc_6C7039: ImpAdLdRf MemVar_7520D4
  loc_6C703C: NewIfNullPr Global
  loc_6C703F: Global.Unload from_stack_1
  loc_6C7044: FFree1Ad var_114
  loc_6C7047: ExitProcHresult
  loc_6C7048: Branch loc_6C6FE2
  loc_6C704B: FLdRfVar var_90
  loc_6C704E: CVarRef
  loc_6C7053: FLdRfVar var_B0
  loc_6C7056: ImpAdCallFPR4  = Trim()
  loc_6C705B: FLdRfVar var_B0
  loc_6C705E: LitVarStr var_C0, "0"
  loc_6C7063: HardType
  loc_6C7064: EqVarBool
  loc_6C7066: FFree1Var var_B0 = ""
  loc_6C7069: BranchF loc_6C70C0
  loc_6C706C: LitVar_Missing var_110
  loc_6C706F: LitVar_Missing var_F0
  loc_6C7072: LitVarStr var_A0, "Aviso"
  loc_6C7077: FStVarCopyObj var_D0
  loc_6C707A: FLdRfVar var_D0
  loc_6C707D: LitI4 &H40
  loc_6C7082: LitStr "Se ha recibido un Archivo de Ajuste de Rendiciones."
  loc_6C7085: LitStr vbCrLf
  loc_6C7088: ConcatStr
  loc_6C7089: FStStrNoPop var_2AC
  loc_6C708C: LitStr "Se actualizara la grilla. Por favor luego de la"
  loc_6C708F: ConcatStr
  loc_6C7090: FStStrNoPop var_2B0
  loc_6C7093: LitStr vbCrLf
  loc_6C7096: ConcatStr
  loc_6C7097: FStStrNoPop var_344
  loc_6C709A: LitStr "operación seleccione el registro deseado."
  loc_6C709D: ConcatStr
  loc_6C709E: CVarStr var_B0
  loc_6C70A1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C70A6: FFreeStr var_2AC = "": var_2B0 = ""
  loc_6C70AF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6C70BA: from_stack_1v = Proc_85_31_661918()
  loc_6C70BF: ExitProcHresult
  loc_6C70C0: FLdRfVar var_2B2
  loc_6C70C3: FLdRfVar var_90
  loc_6C70C6: from_stack_2v = ArmarReporteRA(from_stack_1v)
  loc_6C70CB: FLdI2 var_2B2
  loc_6C70CE: BranchF loc_6C70E1
  loc_6C70D1: FLdRfVar var_2B4
  loc_6C70D4: LitI2_Byte &HFF
  loc_6C70D6: PopTmpLdAd2 var_2B2
  loc_6C70D9: FLdRfVar var_90
  loc_6C70DC: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6C70E1: ExitProcHresult
  loc_6C70E2: LdFixedStr
End Sub

Private Sub TablaFechas_UnknownEvent_1 '5C9DC4
  'Data Table: 42D060
  loc_5C9DB8: LitI2_Byte 1
  loc_5C9DBA: FLdPr Me
  loc_5C9DBD: MemStI2 global_124
  loc_5C9DC0: ExitProcHresult
  loc_5C9DC1: MulI2
End Sub

Private Sub TablaFechas_UnknownEvent_8 '5CA7D8
  'Data Table: 42D060
  loc_5CA7CC: from_stack_1v = Proc_85_27_65E6C0()
  loc_5CA7D1: ImpAdCallFPR4 DoEvents()
  loc_5CA7D6: ExitProcHresult
End Sub

Private Sub TablaFechas_KeyDown(KeyCode As Integer, Shift As Integer) '5C9EF0
  'Data Table: 42D060
  loc_5C9EE4: from_stack_2v = Proc_85_26_6D6E68(from_stack_1v)
  loc_5C9EE9: ImpAdCallFPR4 DoEvents()
  loc_5C9EEE: ExitProcHresult
End Sub

Private Sub TablaFechas_MouseUp(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '5D3650
  'Data Table: 42D060
  loc_5D3634: LitVarI4
  loc_5D363C: PopAdLdVar
  loc_5D363D: FLdPrThis
  loc_5D363E: VCallAd Control_ID_TablaFechas
  loc_5D3641: FStAdFunc var_98
  loc_5D3644: FLdPr var_98
  loc_5D3647: LateIdSt
  loc_5D364C: FFree1Ad var_98
  loc_5D364F: ExitProcHresult
End Sub

Private Sub TablaFechas_EnterCell() '5D35B0
  'Data Table: 42D060
  loc_5D3594: LitVarI4
  loc_5D359C: PopAdLdVar
  loc_5D359D: FLdPrThis
  loc_5D359E: VCallAd Control_ID_TablaFechas
  loc_5D35A1: FStAdFunc var_98
  loc_5D35A4: FLdPr var_98
  loc_5D35A7: LateIdSt
  loc_5D35AC: FFree1Ad var_98
  loc_5D35AF: ExitProcHresult
End Sub

Private Sub TablaFechas_Scroll(arg_C, arg_10, arg_14) '6863D0
  'Data Table: 42D060
  loc_685EC0: OnErrorGoto loc_6863C8
  loc_685EC3: FLdPrThis
  loc_685EC4: VCallAd Control_ID_TablaFechas
  loc_685EC7: FStAdFunc var_90
  loc_685ECA: FLdRfVar arg_C
  loc_685ECD: CDargRef
  loc_685ED1: LitVarI4
  loc_685ED9: PopAdLdVar
  loc_685EDA: FLdPr var_90
  loc_685EDD: LateIdCallLdVar
  loc_685EE7: PopAd
  loc_685EE9: FLdRfVar arg_C
  loc_685EEC: CDargRef
  loc_685EF0: LitVarI4
  loc_685EF8: PopAdLdVar
  loc_685EF9: FLdPr var_90
  loc_685EFC: LateIdCallLdVar
  loc_685F06: PopAd
  loc_685F08: FLdRfVar arg_C
  loc_685F0B: CDargRef
  loc_685F0F: LitVarI4
  loc_685F17: PopAdLdVar
  loc_685F18: FLdPr var_90
  loc_685F1B: LateIdCallLdVar
  loc_685F25: PopAd
  loc_685F27: LitVarI2 var_F0, 4
  loc_685F2C: LitI4 7
  loc_685F31: FLdRfVar var_C0
  loc_685F34: CStrVarTmp
  loc_685F35: CVarStr var_D0
  loc_685F38: FLdRfVar var_100
  loc_685F3B: ImpAdCallFPR4  = Mid(, , )
  loc_685F40: FLdRfVar var_100
  loc_685F43: LitVarI2 var_160, 2
  loc_685F48: LitI4 4
  loc_685F4D: FLdRfVar var_130
  loc_685F50: CStrVarTmp
  loc_685F51: CVarStr var_140
  loc_685F54: FLdRfVar var_170
  loc_685F57: ImpAdCallFPR4  = Mid(, , )
  loc_685F5C: FLdRfVar var_170
  loc_685F5F: ConcatVar var_180
  loc_685F63: LitVarI2 var_1E0, 2
  loc_685F68: LitI4 1
  loc_685F6D: FLdRfVar var_1B0
  loc_685F70: CStrVarTmp
  loc_685F71: CVarStr var_1C0
  loc_685F74: FLdRfVar var_1F0
  loc_685F77: ImpAdCallFPR4  = Mid(, , )
  loc_685F7C: FLdRfVar var_1F0
  loc_685F7F: ConcatVar var_200
  loc_685F83: CStrVarTmp
  loc_685F84: FStStr var_88
  loc_685F87: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_130 = "": var_140 = "": var_160 = "": var_100 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_180 = "": var_1F0 = ""
  loc_685FA6: FLdRfVar arg_10
  loc_685FA9: CDargRef
  loc_685FAD: LitVarI4
  loc_685FB5: PopAdLdVar
  loc_685FB6: FLdPr var_90
  loc_685FB9: LateIdCallLdVar
  loc_685FC3: PopAd
  loc_685FC5: FLdRfVar arg_10
  loc_685FC8: CDargRef
  loc_685FCC: LitVarI4
  loc_685FD4: PopAdLdVar
  loc_685FD5: FLdPr var_90
  loc_685FD8: LateIdCallLdVar
  loc_685FE2: PopAd
  loc_685FE4: FLdRfVar arg_10
  loc_685FE7: CDargRef
  loc_685FEB: LitVarI4
  loc_685FF3: PopAdLdVar
  loc_685FF4: FLdPr var_90
  loc_685FF7: LateIdCallLdVar
  loc_686001: PopAd
  loc_686003: LitVarI2 var_F0, 4
  loc_686008: LitI4 7
  loc_68600D: FLdRfVar var_C0
  loc_686010: CStrVarTmp
  loc_686011: CVarStr var_D0
  loc_686014: FLdRfVar var_100
  loc_686017: ImpAdCallFPR4  = Mid(, , )
  loc_68601C: FLdRfVar var_100
  loc_68601F: LitVarI2 var_160, 2
  loc_686024: LitI4 4
  loc_686029: FLdRfVar var_130
  loc_68602C: CStrVarTmp
  loc_68602D: CVarStr var_140
  loc_686030: FLdRfVar var_170
  loc_686033: ImpAdCallFPR4  = Mid(, , )
  loc_686038: FLdRfVar var_170
  loc_68603B: ConcatVar var_180
  loc_68603F: LitVarI2 var_1E0, 2
  loc_686044: LitI4 1
  loc_686049: FLdRfVar var_1B0
  loc_68604C: CStrVarTmp
  loc_68604D: CVarStr var_1C0
  loc_686050: FLdRfVar var_1F0
  loc_686053: ImpAdCallFPR4  = Mid(, , )
  loc_686058: FLdRfVar var_1F0
  loc_68605B: ConcatVar var_200
  loc_68605F: CStrVarTmp
  loc_686060: FStStr var_8C
  loc_686063: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_130 = "": var_140 = "": var_160 = "": var_100 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_180 = "": var_1F0 = ""
  loc_686082: FLdPr Me
  loc_686085: MemLdStr TipoReporte
  loc_686088: FStStrCopy var_204
  loc_68608B: ILdRf var_204
  loc_68608E: LitStr "J"
  loc_686091: EqStr
  loc_686093: BranchT loc_6860A1
  loc_686096: ILdRf var_204
  loc_686099: LitStr "I"
  loc_68609C: EqStr
  loc_68609E: BranchF loc_6862FE
  loc_6860A1: FLdRfVar arg_C
  loc_6860A4: CDargRef
  loc_6860A8: LitVarI4
  loc_6860B0: PopAdLdVar
  loc_6860B1: FLdPr var_90
  loc_6860B4: LateIdCallLdVar
  loc_6860BE: PopAd
  loc_6860C0: FLdRfVar arg_C
  loc_6860C3: CDargRef
  loc_6860C7: LitVarI4
  loc_6860CF: PopAdLdVar
  loc_6860D0: FLdPr var_90
  loc_6860D3: LateIdCallLdVar
  loc_6860DD: PopAd
  loc_6860DF: FLdRfVar arg_C
  loc_6860E2: CDargRef
  loc_6860E6: LitVarI4
  loc_6860EE: PopAdLdVar
  loc_6860EF: FLdPr var_90
  loc_6860F2: LateIdCallLdVar
  loc_6860FC: PopAd
  loc_6860FE: LitVarI2 var_F0, 4
  loc_686103: LitI4 7
  loc_686108: FLdRfVar var_C0
  loc_68610B: CStrVarTmp
  loc_68610C: CVarStr var_D0
  loc_68610F: FLdRfVar var_100
  loc_686112: ImpAdCallFPR4  = Mid(, , )
  loc_686117: FLdRfVar var_100
  loc_68611A: LitVarI2 var_160, 2
  loc_68611F: LitI4 4
  loc_686124: FLdRfVar var_130
  loc_686127: CStrVarTmp
  loc_686128: CVarStr var_140
  loc_68612B: FLdRfVar var_170
  loc_68612E: ImpAdCallFPR4  = Mid(, , )
  loc_686133: FLdRfVar var_170
  loc_686136: ConcatVar var_180
  loc_68613A: LitVarI2 var_1E0, 2
  loc_68613F: LitI4 1
  loc_686144: FLdRfVar var_1B0
  loc_686147: CStrVarTmp
  loc_686148: CVarStr var_1C0
  loc_68614B: FLdRfVar var_1F0
  loc_68614E: ImpAdCallFPR4  = Mid(, , )
  loc_686153: FLdRfVar var_1F0
  loc_686156: ConcatVar var_200
  loc_68615A: ILdRf var_88
  loc_68615D: CVarStr var_214
  loc_686160: ConcatVar var_224
  loc_686164: CStrVarTmp
  loc_686165: FStStr var_88
  loc_686168: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_130 = "": var_140 = "": var_160 = "": var_100 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_180 = "": var_1F0 = "": var_200 = ""
  loc_686189: FLdRfVar arg_10
  loc_68618C: CDargRef
  loc_686190: LitVarI4
  loc_686198: PopAdLdVar
  loc_686199: FLdPr var_90
  loc_68619C: LateIdCallLdVar
  loc_6861A6: PopAd
  loc_6861A8: FLdRfVar arg_10
  loc_6861AB: CDargRef
  loc_6861AF: LitVarI4
  loc_6861B7: PopAdLdVar
  loc_6861B8: FLdPr var_90
  loc_6861BB: LateIdCallLdVar
  loc_6861C5: PopAd
  loc_6861C7: FLdRfVar arg_10
  loc_6861CA: CDargRef
  loc_6861CE: LitVarI4
  loc_6861D6: PopAdLdVar
  loc_6861D7: FLdPr var_90
  loc_6861DA: LateIdCallLdVar
  loc_6861E4: PopAd
  loc_6861E6: LitVarI2 var_F0, 4
  loc_6861EB: LitI4 7
  loc_6861F0: FLdRfVar var_C0
  loc_6861F3: CStrVarTmp
  loc_6861F4: CVarStr var_D0
  loc_6861F7: FLdRfVar var_100
  loc_6861FA: ImpAdCallFPR4  = Mid(, , )
  loc_6861FF: FLdRfVar var_100
  loc_686202: LitVarI2 var_160, 2
  loc_686207: LitI4 4
  loc_68620C: FLdRfVar var_130
  loc_68620F: CStrVarTmp
  loc_686210: CVarStr var_140
  loc_686213: FLdRfVar var_170
  loc_686216: ImpAdCallFPR4  = Mid(, , )
  loc_68621B: FLdRfVar var_170
  loc_68621E: ConcatVar var_180
  loc_686222: LitVarI2 var_1E0, 2
  loc_686227: LitI4 1
  loc_68622C: FLdRfVar var_1B0
  loc_68622F: CStrVarTmp
  loc_686230: CVarStr var_1C0
  loc_686233: FLdRfVar var_1F0
  loc_686236: ImpAdCallFPR4  = Mid(, , )
  loc_68623B: FLdRfVar var_1F0
  loc_68623E: ConcatVar var_200
  loc_686242: ILdRf var_8C
  loc_686245: CVarStr var_214
  loc_686248: ConcatVar var_224
  loc_68624C: CStrVarTmp
  loc_68624D: FStStr var_8C
  loc_686250: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_130 = "": var_140 = "": var_160 = "": var_100 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_180 = "": var_1F0 = "": var_200 = ""
  loc_686271: FLdRfVar arg_C
  loc_686274: CDargRef
  loc_686278: LitVarI4
  loc_686280: PopAdLdVar
  loc_686281: FLdPr var_90
  loc_686284: LateIdCallLdVar
  loc_68628E: CStrVarTmp
  loc_68628F: CVarStr var_D0
  loc_686292: FLdRfVar var_F0
  loc_686295: ImpAdCallFPR4  = Trim()
  loc_68629A: FLdRfVar var_F0
  loc_68629D: ILdRf var_88
  loc_6862A0: CVarStr var_E0
  loc_6862A3: ConcatVar var_100
  loc_6862A7: CStrVarTmp
  loc_6862A8: FStStr var_88
  loc_6862AB: FFreeVar var_C0 = "": var_D0 = "": var_F0 = ""
  loc_6862B6: FLdRfVar arg_10
  loc_6862B9: CDargRef
  loc_6862BD: LitVarI4
  loc_6862C5: PopAdLdVar
  loc_6862C6: FLdPr var_90
  loc_6862C9: LateIdCallLdVar
  loc_6862D3: CStrVarTmp
  loc_6862D4: CVarStr var_D0
  loc_6862D7: FLdRfVar var_F0
  loc_6862DA: ImpAdCallFPR4  = Trim()
  loc_6862DF: FLdRfVar var_F0
  loc_6862E2: ILdRf var_8C
  loc_6862E5: CVarStr var_E0
  loc_6862E8: ConcatVar var_100
  loc_6862EC: CStrVarTmp
  loc_6862ED: FStStr var_8C
  loc_6862F0: FFreeVar var_C0 = "": var_D0 = "": var_F0 = ""
  loc_6862FB: Branch loc_6863A9
  loc_6862FE: ILdRf var_204
  loc_686301: LitStr "G"
  loc_686304: EqStr
  loc_686306: BranchT loc_68631F
  loc_686309: ILdRf var_204
  loc_68630C: LitStr "F"
  loc_68630F: EqStr
  loc_686311: BranchT loc_68631F
  loc_686314: ILdRf var_204
  loc_686317: LitStr "L"
  loc_68631A: EqStr
  loc_68631C: BranchF loc_6863A9
  loc_68631F: FLdRfVar arg_C
  loc_686322: CDargRef
  loc_686326: LitVarI4
  loc_68632E: PopAdLdVar
  loc_68632F: FLdPr var_90
  loc_686332: LateIdCallLdVar
  loc_68633C: CStrVarTmp
  loc_68633D: CVarStr var_D0
  loc_686340: FLdRfVar var_F0
  loc_686343: ImpAdCallFPR4  = Trim()
  loc_686348: FLdRfVar var_F0
  loc_68634B: ILdRf var_88
  loc_68634E: CVarStr var_E0
  loc_686351: ConcatVar var_100
  loc_686355: CStrVarTmp
  loc_686356: FStStr var_88
  loc_686359: FFreeVar var_C0 = "": var_D0 = "": var_F0 = ""
  loc_686364: FLdRfVar arg_10
  loc_686367: CDargRef
  loc_68636B: LitVarI4
  loc_686373: PopAdLdVar
  loc_686374: FLdPr var_90
  loc_686377: LateIdCallLdVar
  loc_686381: CStrVarTmp
  loc_686382: CVarStr var_D0
  loc_686385: FLdRfVar var_F0
  loc_686388: ImpAdCallFPR4  = Trim()
  loc_68638D: FLdRfVar var_F0
  loc_686390: ILdRf var_8C
  loc_686393: CVarStr var_E0
  loc_686396: ConcatVar var_100
  loc_68639A: CStrVarTmp
  loc_68639B: FStStr var_8C
  loc_68639E: FFreeVar var_C0 = "": var_D0 = "": var_F0 = ""
  loc_6863A9: LitNothing
  loc_6863AB: FStAd var_90 
  loc_6863AF: ILdRf var_88
  loc_6863B2: ILdRf var_8C
  loc_6863B5: GtStr
  loc_6863B7: BranchF loc_6863C2
  loc_6863BA: LitI2_Byte &HFF
  loc_6863BC: IStI2 arg_14
  loc_6863BF: Branch loc_6863C7
  loc_6863C2: LitI2_Byte 1
  loc_6863C4: IStI2 arg_14
  loc_6863C7: ExitProcHresult
  loc_6863C8: LitI2_Byte 1
  loc_6863CA: IStI2 arg_14
  loc_6863CD: ExitProcHresult
End Sub

Private Sub Command2_Click() '5D1BDC
  'Data Table: 42D060
  loc_5D1BC4: ILdRf Me
  loc_5D1BC7: FStAdNoPop
  loc_5D1BCB: ImpAdLdRf MemVar_7520D4
  loc_5D1BCE: NewIfNullPr Global
  loc_5D1BD1: Global.Unload from_stack_1
  loc_5D1BD6: FFree1Ad var_88
  loc_5D1BD9: ExitProcHresult
End Sub

Private Sub TablaAnexo_UnknownEvent_1 '5C9F2C
  'Data Table: 42D060
  loc_5C9F20: LitI2_Byte 2
  loc_5C9F22: FLdPr Me
  loc_5C9F25: MemStI2 global_124
  loc_5C9F28: ExitProcHresult
End Sub

Private Sub TablaAnexo_KeyDown(KeyCode As Integer, Shift As Integer) '5FFC30
  'Data Table: 42D060
  loc_5FFB70: LitVarI4
  loc_5FFB78: PopAdLdVar
  loc_5FFB79: LitVarI4
  loc_5FFB81: PopAdLdVar
  loc_5FFB82: FLdPrThis
  loc_5FFB83: VCallAd Control_ID_TablaAnexo
  loc_5FFB86: FStAdFunc var_A8
  loc_5FFB89: FLdPr var_A8
  loc_5FFB8C: LateIdCallLdVar
  loc_5FFB96: CStrVarTmp
  loc_5FFB97: FStStrNoPop var_BC
  loc_5FFB9A: LitStr " - Vacio - "
  loc_5FFB9D: NeStr
  loc_5FFB9F: FFree1Str var_BC
  loc_5FFBA2: FFree1Ad var_A8
  loc_5FFBA5: FFree1Var var_B8 = ""
  loc_5FFBA8: BranchF loc_5FFC2D
  loc_5FFBAB: FLdPrThis
  loc_5FFBAC: VCallAd Control_ID_TablaAnexo
  loc_5FFBAF: FStAdFunc var_A8
  loc_5FFBB2: FLdPr var_A8
  loc_5FFBB5: LateIdLdVar var_B8 DispID_10 0
  loc_5FFBBC: CI4Var
  loc_5FFBBE: CVarI4
  loc_5FFBC2: PopAdLdVar
  loc_5FFBC3: FLdPrThis
  loc_5FFBC4: VCallAd Control_ID_TablaAnexo
  loc_5FFBC7: FStAdFunc var_C0
  loc_5FFBCA: FLdPr var_C0
  loc_5FFBCD: LateIdLdVar var_D0 DispID_11 0
  loc_5FFBD4: CI4Var
  loc_5FFBD6: CVarI4
  loc_5FFBDA: PopAdLdVar
  loc_5FFBDB: FLdPrThis
  loc_5FFBDC: VCallAd Control_ID_TablaAnexo
  loc_5FFBDF: FStAdFunc var_D4
  loc_5FFBE2: FLdPr var_D4
  loc_5FFBE5: LateIdCallLdVar
  loc_5FFBEF: PopAd
  loc_5FFBF1: FLdRfVar var_E8
  loc_5FFBF4: LitI2_Byte 0
  loc_5FFBF6: PopTmpLdAd2 var_E6
  loc_5FFBF9: FLdRfVar var_E4
  loc_5FFBFC: CStrVarTmp
  loc_5FFBFD: PopTmpLdAdStr
  loc_5FFC01: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_5FFC06: FLdI2 var_E8
  loc_5FFC09: NotI4
  loc_5FFC0A: FFree1Str var_BC
  loc_5FFC0D: FFreeAd var_A8 = "": var_C0 = ""
  loc_5FFC16: FFreeVar var_B8 = "": var_D0 = ""
  loc_5FFC1F: BranchF loc_5FFC2D
  loc_5FFC22: LitI4 &H1388
  loc_5FFC27: ImpAdCallFPR4 Sleep()
  loc_5FFC2C: SetLastSystemError
  loc_5FFC2D: ExitProcHresult
End Sub

Private Sub Command3_Click() '5D5564
  'Data Table: 42D060
  loc_5D553C: FLdPr Me
  loc_5D553F: MemLdI2 global_124
  loc_5D5542: LitI2_Byte 1
  loc_5D5544: EqI2
  loc_5D5545: BranchF loc_5D5550
  loc_5D5548: Call TablaFechas_KeyDown(from_stack_1v, from_stack_2v)
  loc_5D554D: Branch loc_5D5562
  loc_5D5550: FLdPr Me
  loc_5D5553: MemLdI2 global_124
  loc_5D5556: LitI2_Byte 2
  loc_5D5558: EqI2
  loc_5D5559: BranchF loc_5D5561
  loc_5D555C: Call TablaAnexo_KeyDown(from_stack_1v, from_stack_2v)
  loc_5D5561: ExitProcHresult
  loc_5D5562: ExitProcHresult
End Sub

Public Function HistoricoGet() '42D8A8
  HistoricoGet = Historico
End Function

Public Sub HistoricoPut(Value) '42D8B7
  Historico = Value
End Sub

Public Function TipoReporteGet() '42D8C6
  TipoReporteGet = TipoReporte
End Function

Public Sub TipoReportePut(Value) '42D8D5
  TipoReporte = Value
End Sub

Public Function CargarTablaFechas(sValor) '6EC99C
  'Data Table: 42D060
  loc_6EBBF8: ZeroRetValVar
  loc_6EBBFA: OnErrorGoto loc_6EC994
  loc_6EBBFD: LitVarI4
  loc_6EBC05: PopAdLdVar
  loc_6EBC06: FLdPrThis
  loc_6EBC07: VCallAd Control_ID_TablaFechas
  loc_6EBC0A: FStAdFunc var_B8
  loc_6EBC0D: FLdPr var_B8
  loc_6EBC10: LateIdSt
  loc_6EBC15: FFree1Ad var_B8
  loc_6EBC18: LitVarI4
  loc_6EBC20: PopAdLdVar
  loc_6EBC21: LitVarI2 var_C8, 4
  loc_6EBC26: PopAdLdVar
  loc_6EBC27: FLdPrThis
  loc_6EBC28: VCallAd Control_ID_TablaFechas
  loc_6EBC2B: FStAdFunc var_B8
  loc_6EBC2E: FLdPr var_B8
  loc_6EBC31: LateIdCallSt
  loc_6EBC39: FFree1Ad var_B8
  loc_6EBC3C: LitVarI4
  loc_6EBC44: PopAdLdVar
  loc_6EBC45: FLdPrThis
  loc_6EBC46: VCallAd Control_ID_TablaFechas
  loc_6EBC49: FStAdFunc var_B8
  loc_6EBC4C: FLdPr var_B8
  loc_6EBC4F: LateIdSt
  loc_6EBC54: FFree1Ad var_B8
  loc_6EBC57: LitVarI4
  loc_6EBC5F: PopAdLdVar
  loc_6EBC60: FLdPrThis
  loc_6EBC61: VCallAd Control_ID_TablaFechas
  loc_6EBC64: FStAdFunc var_B8
  loc_6EBC67: FLdPr var_B8
  loc_6EBC6A: LateIdSt
  loc_6EBC6F: FFree1Ad var_B8
  loc_6EBC72: LitVarI4
  loc_6EBC7A: PopAdLdVar
  loc_6EBC7B: LitVarI4
  loc_6EBC83: PopAdLdVar
  loc_6EBC84: FLdPrThis
  loc_6EBC85: VCallAd Control_ID_TablaFechas
  loc_6EBC88: FStAdFunc var_B8
  loc_6EBC8B: FLdPr var_B8
  loc_6EBC8E: LateIdCallSt
  loc_6EBC96: FFree1Ad var_B8
  loc_6EBC99: LitVarI2 var_B4, 12
  loc_6EBC9E: PopAdLdVar
  loc_6EBC9F: FLdPrThis
  loc_6EBCA0: VCallAd Control_ID_TablaFechas
  loc_6EBCA3: FStAdFunc var_B8
  loc_6EBCA6: FLdPr var_B8
  loc_6EBCA9: LateIdLdVar var_D8 DispID_-512 -1
  loc_6EBCB0: CastAdVar Me
  loc_6EBCB4: FStAdFunc var_DC
  loc_6EBCB7: FLdPr var_DC
  loc_6EBCBA: LateIdSt
  loc_6EBCBF: FFreeAd var_B8 = ""
  loc_6EBCC6: FFree1Var var_D8 = ""
  loc_6EBCC9: LitI2_Byte 0
  loc_6EBCCB: FLdPrThis
  loc_6EBCCC: VCallAd Control_ID_PanelAnexo
  loc_6EBCCF: FStAdFunc var_B8
  loc_6EBCD2: FLdPr var_B8
  loc_6EBCD5: Me.CommandButton.Visible = from_stack_1b
  loc_6EBCDA: FFree1Ad var_B8
  loc_6EBCDD: LitVar_FALSE
  loc_6EBCE1: PopAdLdVar
  loc_6EBCE2: FLdPrThis
  loc_6EBCE3: VCallAd Control_ID_TablaAnexo
  loc_6EBCE6: FStAdFunc var_B8
  loc_6EBCE9: FLdPr var_B8
  loc_6EBCEC: LateIdSt
  loc_6EBCF1: FFree1Ad var_B8
  loc_6EBCF4: FLdPr Me
  loc_6EBCF7: MemLdStr TipoReporte
  loc_6EBCFA: FStStrCopy var_E0
  loc_6EBCFD: ILdRf var_E0
  loc_6EBD00: LitStr "B"
  loc_6EBD03: EqStr
  loc_6EBD05: BranchF loc_6EBE59
  loc_6EBD08: LitVarI4
  loc_6EBD10: PopAdLdVar
  loc_6EBD11: LitVarI4
  loc_6EBD19: PopAdLdVar
  loc_6EBD1A: LitVarStr var_F0, "Fechas de Débito"
  loc_6EBD1F: PopAdLdVar
  loc_6EBD20: FLdPrThis
  loc_6EBD21: VCallAd Control_ID_TablaFechas
  loc_6EBD24: FStAdFunc var_B8
  loc_6EBD27: FLdPr var_B8
  loc_6EBD2A: LateIdCallSt
  loc_6EBD32: FFree1Ad var_B8
  loc_6EBD35: LitStr "Débitos Bancarios"
  loc_6EBD38: FLdPr Me
  loc_6EBD3B: Me.Caption = from_stack_1
  loc_6EBD40: LitI2_Byte 1
  loc_6EBD42: FStI2 var_96
  loc_6EBD45: FLdI2 var_96
  loc_6EBD48: CI4UI1
  loc_6EBD49: ILdI4 sValor
  loc_6EBD4C: FnLenStr
  loc_6EBD4D: LeI4
  loc_6EBD4E: BranchF loc_6EBE08
  loc_6EBD51: LitVarI2 var_D8, 2
  loc_6EBD56: FLdI2 var_96
  loc_6EBD59: LitI2_Byte 8
  loc_6EBD5B: AddI2
  loc_6EBD5C: CI4UI1
  loc_6EBD5D: ILdRf sValor
  loc_6EBD60: CVarRef
  loc_6EBD65: FLdRfVar var_100
  loc_6EBD68: ImpAdCallFPR4  = Mid(, , )
  loc_6EBD6D: FLdRfVar var_100
  loc_6EBD70: LitVarStr var_F0, "/"
  loc_6EBD75: AddVar var_110
  loc_6EBD79: LitVarI2 var_140, 2
  loc_6EBD7E: FLdI2 var_96
  loc_6EBD81: LitI2_Byte 5
  loc_6EBD83: AddI2
  loc_6EBD84: CI4UI1
  loc_6EBD85: ILdRf sValor
  loc_6EBD88: CVarRef
  loc_6EBD8D: FLdRfVar var_150
  loc_6EBD90: ImpAdCallFPR4  = Mid(, , )
  loc_6EBD95: FLdRfVar var_150
  loc_6EBD98: AddVar var_160
  loc_6EBD9C: LitVarStr var_170, "/"
  loc_6EBDA1: AddVar var_180
  loc_6EBDA5: LitVarI2 var_1B0, 4
  loc_6EBDAA: FLdI2 var_96
  loc_6EBDAD: CI4UI1
  loc_6EBDAE: ILdRf sValor
  loc_6EBDB1: CVarRef
  loc_6EBDB6: FLdRfVar var_1C0
  loc_6EBDB9: ImpAdCallFPR4  = Mid(, , )
  loc_6EBDBE: FLdRfVar var_1C0
  loc_6EBDC1: AddVar var_1D0
  loc_6EBDC5: CStrVarTmp
  loc_6EBDC6: FStStr var_9C
  loc_6EBDC9: FFreeVar var_D8 = "": var_100 = "": var_140 = "": var_110 = "": var_150 = "": var_160 = "": var_1B0 = "": var_180 = "": var_1C0 = ""
  loc_6EBDE0: ILdRf var_9C
  loc_6EBDE3: CVarStr var_B4
  loc_6EBDE6: PopAdLdVar
  loc_6EBDE7: FLdPrThis
  loc_6EBDE8: VCallAd Control_ID_TablaFechas
  loc_6EBDEB: FStAdFunc var_B8
  loc_6EBDEE: FLdPr var_B8
  loc_6EBDF1: LateIdCall
  loc_6EBDF9: FFree1Ad var_B8
  loc_6EBDFC: FLdI2 var_96
  loc_6EBDFF: LitI2_Byte &H25
  loc_6EBE01: AddI2
  loc_6EBE02: FStI2 var_96
  loc_6EBE05: Branch loc_6EBD45
  loc_6EBE08: LitI2_Byte 0
  loc_6EBE0A: FLdPrThis
  loc_6EBE0B: VCallAd Control_ID_Command4
  loc_6EBE0E: FStAdFunc var_B8
  loc_6EBE11: FLdPr var_B8
  loc_6EBE14: Me.Visible = from_stack_1b
  loc_6EBE19: FFree1Ad var_B8
  loc_6EBE1C: LitI2_Byte &H78
  loc_6EBE1E: CR8I2
  loc_6EBE1F: PopFPR4
  loc_6EBE20: FLdPrThis
  loc_6EBE21: VCallAd Control_ID_Command3
  loc_6EBE24: FStAdFunc var_B8
  loc_6EBE27: FLdPr var_B8
  loc_6EBE2A: Me.Left = from_stack_1s
  loc_6EBE2F: FFree1Ad var_B8
  loc_6EBE32: LitI2 1920
  loc_6EBE35: CR8I2
  loc_6EBE36: PopFPR4
  loc_6EBE37: FLdPrThis
  loc_6EBE38: VCallAd Control_ID_Command2
  loc_6EBE3B: FStAdFunc var_B8
  loc_6EBE3E: FLdPr var_B8
  loc_6EBE41: Me.Left = from_stack_1s
  loc_6EBE46: FFree1Ad var_B8
  loc_6EBE49: LitI2 3600
  loc_6EBE4C: CR8I2
  loc_6EBE4D: PopFPR4
  loc_6EBE4E: FLdPr Me
  loc_6EBE51: Me.Width = from_stack_1s
  loc_6EBE56: Branch loc_6EC976
  loc_6EBE59: ILdRf var_E0
  loc_6EBE5C: LitStr "J"
  loc_6EBE5F: EqStr
  loc_6EBE61: BranchT loc_6EBE6F
  loc_6EBE64: ILdRf var_E0
  loc_6EBE67: LitStr "I"
  loc_6EBE6A: EqStr
  loc_6EBE6C: BranchF loc_6EC2AD
  loc_6EBE6F: LitVarI4
  loc_6EBE77: PopAdLdVar
  loc_6EBE78: FLdPrThis
  loc_6EBE79: VCallAd Control_ID_TablaFechas
  loc_6EBE7C: FStAdFunc var_B8
  loc_6EBE7F: FLdPr var_B8
  loc_6EBE82: LateIdSt
  loc_6EBE87: FFree1Ad var_B8
  loc_6EBE8A: LitVarI4
  loc_6EBE92: PopAdLdVar
  loc_6EBE93: LitVarI4
  loc_6EBE9B: PopAdLdVar
  loc_6EBE9C: LitVarStr var_F0, "Desde"
  loc_6EBEA1: PopAdLdVar
  loc_6EBEA2: FLdPrThis
  loc_6EBEA3: VCallAd Control_ID_TablaFechas
  loc_6EBEA6: FStAdFunc var_B8
  loc_6EBEA9: FLdPr var_B8
  loc_6EBEAC: LateIdCallSt
  loc_6EBEB4: FFree1Ad var_B8
  loc_6EBEB7: LitVarI4
  loc_6EBEBF: PopAdLdVar
  loc_6EBEC0: LitVarI4
  loc_6EBEC8: PopAdLdVar
  loc_6EBEC9: LitVarStr var_F0, "Hasta"
  loc_6EBECE: PopAdLdVar
  loc_6EBECF: FLdPrThis
  loc_6EBED0: VCallAd Control_ID_TablaFechas
  loc_6EBED3: FStAdFunc var_B8
  loc_6EBED6: FLdPr var_B8
  loc_6EBED9: LateIdCallSt
  loc_6EBEE1: FFree1Ad var_B8
  loc_6EBEE4: LitVarI4
  loc_6EBEEC: PopAdLdVar
  loc_6EBEED: LitVarI4
  loc_6EBEF5: PopAdLdVar
  loc_6EBEF6: LitVarStr var_F0, "Nro. Ajuste"
  loc_6EBEFB: PopAdLdVar
  loc_6EBEFC: FLdPrThis
  loc_6EBEFD: VCallAd Control_ID_TablaFechas
  loc_6EBF00: FStAdFunc var_B8
  loc_6EBF03: FLdPr var_B8
  loc_6EBF06: LateIdCallSt
  loc_6EBF0E: FFree1Ad var_B8
  loc_6EBF11: LitVarI4
  loc_6EBF19: PopAdLdVar
  loc_6EBF1A: LitVarI2 var_C8, 4
  loc_6EBF1F: PopAdLdVar
  loc_6EBF20: FLdPrThis
  loc_6EBF21: VCallAd Control_ID_TablaFechas
  loc_6EBF24: FStAdFunc var_B8
  loc_6EBF27: FLdPr var_B8
  loc_6EBF2A: LateIdCallSt
  loc_6EBF32: FFree1Ad var_B8
  loc_6EBF35: LitVarI4
  loc_6EBF3D: PopAdLdVar
  loc_6EBF3E: LitVarI2 var_C8, 4
  loc_6EBF43: PopAdLdVar
  loc_6EBF44: FLdPrThis
  loc_6EBF45: VCallAd Control_ID_TablaFechas
  loc_6EBF48: FStAdFunc var_B8
  loc_6EBF4B: FLdPr var_B8
  loc_6EBF4E: LateIdCallSt
  loc_6EBF56: FFree1Ad var_B8
  loc_6EBF59: LitVarI4
  loc_6EBF61: PopAdLdVar
  loc_6EBF62: LitVarI4
  loc_6EBF6A: PopAdLdVar
  loc_6EBF6B: FLdPrThis
  loc_6EBF6C: VCallAd Control_ID_TablaFechas
  loc_6EBF6F: FStAdFunc var_B8
  loc_6EBF72: FLdPr var_B8
  loc_6EBF75: LateIdCallSt
  loc_6EBF7D: FFree1Ad var_B8
  loc_6EBF80: LitVarI4
  loc_6EBF88: PopAdLdVar
  loc_6EBF89: LitVarI4
  loc_6EBF91: PopAdLdVar
  loc_6EBF92: FLdPrThis
  loc_6EBF93: VCallAd Control_ID_TablaFechas
  loc_6EBF96: FStAdFunc var_B8
  loc_6EBF99: FLdPr var_B8
  loc_6EBF9C: LateIdCallSt
  loc_6EBFA4: FFree1Ad var_B8
  loc_6EBFA7: LitI2 9150
  loc_6EBFAA: CR8I2
  loc_6EBFAB: CVarR4
  loc_6EBFAF: PopAdLdVar
  loc_6EBFB0: FLdPrThis
  loc_6EBFB1: VCallAd Control_ID_TablaFechas
  loc_6EBFB4: FStAdFunc var_B8
  loc_6EBFB7: FLdPr var_B8
  loc_6EBFBA: LateIdSt
  loc_6EBFBF: FFree1Ad var_B8
  loc_6EBFC2: LitI2 9350
  loc_6EBFC5: CR8I2
  loc_6EBFC6: PopFPR4
  loc_6EBFC7: FLdPrThis
  loc_6EBFC8: VCallAd Control_ID_Command1
  loc_6EBFCB: FStAdFunc var_B8
  loc_6EBFCE: FLdPr var_B8
  loc_6EBFD1: Me.Width = from_stack_1s
  loc_6EBFD6: FFree1Ad var_B8
  loc_6EBFD9: LitI2 10000
  loc_6EBFDC: CR8I2
  loc_6EBFDD: PopFPR4
  loc_6EBFDE: FLdPr Me
  loc_6EBFE1: Me.Width = from_stack_1s
  loc_6EBFE6: FLdRfVar var_1D8
  loc_6EBFE9: FLdPrThis
  loc_6EBFEA: VCallAd Control_ID_Command3
  loc_6EBFED: FStAdFunc var_B8
  loc_6EBFF0: FLdPr var_B8
  loc_6EBFF3:  = Me.Width
  loc_6EBFF8: FLdRfVar var_1D4
  loc_6EBFFB: FLdPr Me
  loc_6EBFFE:  = Me.Width
  loc_6EC003: FLdFPR4 var_1D4
  loc_6EC006: LitI2_Byte 2
  loc_6EC008: CR8I2
  loc_6EC009: DivR8
  loc_6EC00A: FLdFPR4 var_1D8
  loc_6EC00D: LitI2_Byte 2
  loc_6EC00F: CR8I2
  loc_6EC010: DivR8
  loc_6EC011: SubR4
  loc_6EC012: PopFPR4
  loc_6EC013: FLdPrThis
  loc_6EC014: VCallAd Control_ID_Command3
  loc_6EC017: FStAdFunc var_DC
  loc_6EC01A: FLdPr var_DC
  loc_6EC01D: Me.Left = from_stack_1s
  loc_6EC022: FFreeAd var_B8 = ""
  loc_6EC029: FLdRfVar var_1D8
  loc_6EC02C: FLdPrThis
  loc_6EC02D: VCallAd Control_ID_Command4
  loc_6EC030: FStAdFunc var_DC
  loc_6EC033: FLdPr var_DC
  loc_6EC036:  = Me.Width
  loc_6EC03B: FLdRfVar var_1D4
  loc_6EC03E: FLdPrThis
  loc_6EC03F: VCallAd Control_ID_Command3
  loc_6EC042: FStAdFunc var_B8
  loc_6EC045: FLdPr var_B8
  loc_6EC048:  = Me.Left
  loc_6EC04D: FLdFPR4 var_1D4
  loc_6EC050: FLdFPR4 var_1D8
  loc_6EC053: SubR4
  loc_6EC054: LitI2 450
  loc_6EC057: CR8I2
  loc_6EC058: SubR4
  loc_6EC059: PopFPR4
  loc_6EC05A: FLdPrThis
  loc_6EC05B: VCallAd Control_ID_Command4
  loc_6EC05E: FStAdFunc var_1DC
  loc_6EC061: FLdPr var_1DC
  loc_6EC064: Me.Left = from_stack_1s
  loc_6EC069: FFreeAd var_B8 = "": var_DC = ""
  loc_6EC072: FLdRfVar var_1D8
  loc_6EC075: FLdPrThis
  loc_6EC076: VCallAd Control_ID_Command3
  loc_6EC079: FStAdFunc var_DC
  loc_6EC07C: FLdPr var_DC
  loc_6EC07F:  = Me.Width
  loc_6EC084: FLdRfVar var_1D4
  loc_6EC087: FLdPrThis
  loc_6EC088: VCallAd Control_ID_Command3
  loc_6EC08B: FStAdFunc var_B8
  loc_6EC08E: FLdPr var_B8
  loc_6EC091:  = Me.Left
  loc_6EC096: FLdFPR4 var_1D4
  loc_6EC099: FLdFPR4 var_1D8
  loc_6EC09C: AddR8
  loc_6EC09D: LitI2 450
  loc_6EC0A0: CR8I2
  loc_6EC0A1: AddR8
  loc_6EC0A2: PopFPR4
  loc_6EC0A3: FLdPrThis
  loc_6EC0A4: VCallAd Control_ID_Command2
  loc_6EC0A7: FStAdFunc var_1DC
  loc_6EC0AA: FLdPr var_1DC
  loc_6EC0AD: Me.Left = from_stack_1s
  loc_6EC0B2: FFreeAd var_B8 = "": var_DC = ""
  loc_6EC0BB: FLdPr Me
  loc_6EC0BE: MemLdStr TipoReporte
  loc_6EC0C1: LitStr "J"
  loc_6EC0C4: EqStr
  loc_6EC0C6: BranchF loc_6EC0D7
  loc_6EC0C9: LitStr "Ajuste de Rendiciones"
  loc_6EC0CC: FLdPr Me
  loc_6EC0CF: Me.Caption = from_stack_1
  loc_6EC0D4: Branch loc_6EC0E2
  loc_6EC0D7: LitStr "Anulación de Ajuste de Rendiciones"
  loc_6EC0DA: FLdPr Me
  loc_6EC0DD: Me.Caption = from_stack_1
  loc_6EC0E2: LitI2_Byte 1
  loc_6EC0E4: FStI2 var_96
  loc_6EC0E7: FLdI2 var_96
  loc_6EC0EA: CI4UI1
  loc_6EC0EB: ILdI4 sValor
  loc_6EC0EE: FnLenStr
  loc_6EC0EF: LeI4
  loc_6EC0F0: BranchF loc_6EC2AA
  loc_6EC0F3: LitVarI2 var_D8, 2
  loc_6EC0F8: FLdI2 var_96
  loc_6EC0FB: LitI2_Byte 8
  loc_6EC0FD: AddI2
  loc_6EC0FE: CI4UI1
  loc_6EC0FF: ILdRf sValor
  loc_6EC102: CVarRef
  loc_6EC107: FLdRfVar var_100
  loc_6EC10A: ImpAdCallFPR4  = Mid(, , )
  loc_6EC10F: FLdRfVar var_100
  loc_6EC112: LitVarStr var_F0, "/"
  loc_6EC117: AddVar var_110
  loc_6EC11B: LitVarI2 var_140, 2
  loc_6EC120: FLdI2 var_96
  loc_6EC123: LitI2_Byte 5
  loc_6EC125: AddI2
  loc_6EC126: CI4UI1
  loc_6EC127: ILdRf sValor
  loc_6EC12A: CVarRef
  loc_6EC12F: FLdRfVar var_150
  loc_6EC132: ImpAdCallFPR4  = Mid(, , )
  loc_6EC137: FLdRfVar var_150
  loc_6EC13A: AddVar var_160
  loc_6EC13E: LitVarStr var_170, "/"
  loc_6EC143: AddVar var_180
  loc_6EC147: LitVarI2 var_1B0, 4
  loc_6EC14C: FLdI2 var_96
  loc_6EC14F: CI4UI1
  loc_6EC150: ILdRf sValor
  loc_6EC153: CVarRef
  loc_6EC158: FLdRfVar var_1C0
  loc_6EC15B: ImpAdCallFPR4  = Mid(, , )
  loc_6EC160: FLdRfVar var_1C0
  loc_6EC163: AddVar var_1D0
  loc_6EC167: CStrVarTmp
  loc_6EC168: FStStr var_9C
  loc_6EC16B: FFreeVar var_D8 = "": var_100 = "": var_140 = "": var_110 = "": var_150 = "": var_160 = "": var_1B0 = "": var_180 = "": var_1C0 = ""
  loc_6EC182: LitVarI2 var_D8, 2
  loc_6EC187: FLdI2 var_96
  loc_6EC18A: LitI2_Byte &H1A
  loc_6EC18C: AddI2
  loc_6EC18D: CI4UI1
  loc_6EC18E: ILdRf sValor
  loc_6EC191: CVarRef
  loc_6EC196: FLdRfVar var_100
  loc_6EC199: ImpAdCallFPR4  = Mid(, , )
  loc_6EC19E: FLdRfVar var_100
  loc_6EC1A1: LitVarStr var_F0, "/"
  loc_6EC1A6: AddVar var_110
  loc_6EC1AA: LitVarI2 var_140, 2
  loc_6EC1AF: FLdI2 var_96
  loc_6EC1B2: LitI2_Byte &H17
  loc_6EC1B4: AddI2
  loc_6EC1B5: CI4UI1
  loc_6EC1B6: ILdRf sValor
  loc_6EC1B9: CVarRef
  loc_6EC1BE: FLdRfVar var_150
  loc_6EC1C1: ImpAdCallFPR4  = Mid(, , )
  loc_6EC1C6: FLdRfVar var_150
  loc_6EC1C9: AddVar var_160
  loc_6EC1CD: LitVarStr var_170, "/"
  loc_6EC1D2: AddVar var_180
  loc_6EC1D6: LitVarI2 var_1B0, 4
  loc_6EC1DB: FLdI2 var_96
  loc_6EC1DE: LitI2_Byte &H12
  loc_6EC1E0: AddI2
  loc_6EC1E1: CI4UI1
  loc_6EC1E2: ILdRf sValor
  loc_6EC1E5: CVarRef
  loc_6EC1EA: FLdRfVar var_1C0
  loc_6EC1ED: ImpAdCallFPR4  = Mid(, , )
  loc_6EC1F2: FLdRfVar var_1C0
  loc_6EC1F5: AddVar var_1D0
  loc_6EC1F9: CStrVarTmp
  loc_6EC1FA: FStStr var_A0
  loc_6EC1FD: FFreeVar var_D8 = "": var_100 = "": var_140 = "": var_110 = "": var_150 = "": var_160 = "": var_1B0 = "": var_180 = "": var_1C0 = ""
  loc_6EC214: ILdRf var_9C
  loc_6EC217: CVarStr var_B4
  loc_6EC21A: LitI4 9
  loc_6EC21F: FLdRfVar var_D8
  loc_6EC222: ImpAdCallFPR4  = Chr()
  loc_6EC227: FLdRfVar var_D8
  loc_6EC22A: ConcatVar var_100
  loc_6EC22E: ILdRf var_A0
  loc_6EC231: CVarStr var_C8
  loc_6EC234: ConcatVar var_110
  loc_6EC238: LitI4 9
  loc_6EC23D: FLdRfVar var_140
  loc_6EC240: ImpAdCallFPR4  = Chr()
  loc_6EC245: FLdRfVar var_140
  loc_6EC248: ConcatVar var_150
  loc_6EC24C: LitVarI2 var_160, 13
  loc_6EC251: FLdI2 var_96
  loc_6EC254: LitI2_Byte &H25
  loc_6EC256: AddI2
  loc_6EC257: CI4UI1
  loc_6EC258: ILdRf sValor
  loc_6EC25B: CVarRef
  loc_6EC260: FLdRfVar var_180
  loc_6EC263: ImpAdCallFPR4  = Mid(, , )
  loc_6EC268: FLdRfVar var_180
  loc_6EC26B: ConcatVar var_1B0
  loc_6EC26F: CStrVarTmp
  loc_6EC270: CVarStr var_1C0
  loc_6EC273: PopAdLdVar
  loc_6EC274: FLdPrThis
  loc_6EC275: VCallAd Control_ID_TablaFechas
  loc_6EC278: FStAdFunc var_B8
  loc_6EC27B: FLdPr var_B8
  loc_6EC27E: LateIdCall
  loc_6EC286: FFree1Ad var_B8
  loc_6EC289: FFreeVar var_D8 = "": var_100 = "": var_110 = "": var_140 = "": var_160 = "": var_150 = "": var_180 = "": var_1B0 = ""
  loc_6EC29E: FLdI2 var_96
  loc_6EC2A1: LitI2_Byte &H32
  loc_6EC2A3: AddI2
  loc_6EC2A4: FStI2 var_96
  loc_6EC2A7: Branch loc_6EC0E7
  loc_6EC2AA: Branch loc_6EC976
  loc_6EC2AD: ILdRf var_E0
  loc_6EC2B0: LitStr "C"
  loc_6EC2B3: EqStr
  loc_6EC2B5: BranchF loc_6EC571
  loc_6EC2B8: LitVarI4
  loc_6EC2C0: PopAdLdVar
  loc_6EC2C1: FLdPrThis
  loc_6EC2C2: VCallAd Control_ID_TablaFechas
  loc_6EC2C5: FStAdFunc var_B8
  loc_6EC2C8: FLdPr var_B8
  loc_6EC2CB: LateIdSt
  loc_6EC2D0: FFree1Ad var_B8
  loc_6EC2D3: LitVarI4
  loc_6EC2DB: PopAdLdVar
  loc_6EC2DC: LitVarI4
  loc_6EC2E4: PopAdLdVar
  loc_6EC2E5: LitVarStr var_F0, "Fecha"
  loc_6EC2EA: PopAdLdVar
  loc_6EC2EB: FLdPrThis
  loc_6EC2EC: VCallAd Control_ID_TablaFechas
  loc_6EC2EF: FStAdFunc var_B8
  loc_6EC2F2: FLdPr var_B8
  loc_6EC2F5: LateIdCallSt
  loc_6EC2FD: FFree1Ad var_B8
  loc_6EC300: LitVarI4
  loc_6EC308: PopAdLdVar
  loc_6EC309: LitVarI2 var_C8, 4
  loc_6EC30E: PopAdLdVar
  loc_6EC30F: FLdPrThis
  loc_6EC310: VCallAd Control_ID_TablaFechas
  loc_6EC313: FStAdFunc var_B8
  loc_6EC316: FLdPr var_B8
  loc_6EC319: LateIdCallSt
  loc_6EC321: FFree1Ad var_B8
  loc_6EC324: LitVarI4
  loc_6EC32C: PopAdLdVar
  loc_6EC32D: LitVarI4
  loc_6EC335: PopAdLdVar
  loc_6EC336: FLdPrThis
  loc_6EC337: VCallAd Control_ID_TablaFechas
  loc_6EC33A: FStAdFunc var_B8
  loc_6EC33D: FLdPr var_B8
  loc_6EC340: LateIdCallSt
  loc_6EC348: FFree1Ad var_B8
  loc_6EC34B: LitVarI4
  loc_6EC353: PopAdLdVar
  loc_6EC354: LitVarI4
  loc_6EC35C: PopAdLdVar
  loc_6EC35D: FLdPrThis
  loc_6EC35E: VCallAd Control_ID_TablaFechas
  loc_6EC361: FStAdFunc var_B8
  loc_6EC364: FLdPr var_B8
  loc_6EC367: LateIdCallSt
  loc_6EC36F: FFree1Ad var_B8
  loc_6EC372: LitI2 3650
  loc_6EC375: CR8I2
  loc_6EC376: CVarR4
  loc_6EC37A: PopAdLdVar
  loc_6EC37B: FLdPrThis
  loc_6EC37C: VCallAd Control_ID_TablaFechas
  loc_6EC37F: FStAdFunc var_B8
  loc_6EC382: FLdPr var_B8
  loc_6EC385: LateIdSt
  loc_6EC38A: FFree1Ad var_B8
  loc_6EC38D: LitI2 3850
  loc_6EC390: CR8I2
  loc_6EC391: PopFPR4
  loc_6EC392: FLdPrThis
  loc_6EC393: VCallAd Control_ID_Command1
  loc_6EC396: FStAdFunc var_B8
  loc_6EC399: FLdPr var_B8
  loc_6EC39C: Me.Width = from_stack_1s
  loc_6EC3A1: FFree1Ad var_B8
  loc_6EC3A4: LitI2 4200
  loc_6EC3A7: CR8I2
  loc_6EC3A8: PopFPR4
  loc_6EC3A9: FLdPr Me
  loc_6EC3AC: Me.Width = from_stack_1s
  loc_6EC3B1: LitI2_Byte 0
  loc_6EC3B3: FLdPrThis
  loc_6EC3B4: VCallAd Control_ID_Command4
  loc_6EC3B7: FStAdFunc var_B8
  loc_6EC3BA: FLdPr var_B8
  loc_6EC3BD: Me.Visible = from_stack_1b
  loc_6EC3C2: FFree1Ad var_B8
  loc_6EC3C5: FLdRfVar var_1D8
  loc_6EC3C8: FLdPrThis
  loc_6EC3C9: VCallAd Control_ID_Command3
  loc_6EC3CC: FStAdFunc var_B8
  loc_6EC3CF: FLdPr var_B8
  loc_6EC3D2:  = Me.Width
  loc_6EC3D7: FLdRfVar var_1D4
  loc_6EC3DA: FLdPr Me
  loc_6EC3DD:  = Me.Width
  loc_6EC3E2: FLdFPR4 var_1D4
  loc_6EC3E5: LitI2_Byte 2
  loc_6EC3E7: CR8I2
  loc_6EC3E8: DivR8
  loc_6EC3E9: FLdFPR4 var_1D8
  loc_6EC3EC: SubR4
  loc_6EC3ED: LitI2_Byte &H64
  loc_6EC3EF: CR8I2
  loc_6EC3F0: SubR4
  loc_6EC3F1: PopFPR4
  loc_6EC3F2: FLdPrThis
  loc_6EC3F3: VCallAd Control_ID_Command3
  loc_6EC3F6: FStAdFunc var_DC
  loc_6EC3F9: FLdPr var_DC
  loc_6EC3FC: Me.Left = from_stack_1s
  loc_6EC401: FFreeAd var_B8 = ""
  loc_6EC408: FLdRfVar var_1D8
  loc_6EC40B: FLdPrThis
  loc_6EC40C: VCallAd Control_ID_Command3
  loc_6EC40F: FStAdFunc var_DC
  loc_6EC412: FLdPr var_DC
  loc_6EC415:  = Me.Width
  loc_6EC41A: FLdRfVar var_1D4
  loc_6EC41D: FLdPrThis
  loc_6EC41E: VCallAd Control_ID_Command3
  loc_6EC421: FStAdFunc var_B8
  loc_6EC424: FLdPr var_B8
  loc_6EC427:  = Me.Left
  loc_6EC42C: FLdFPR4 var_1D4
  loc_6EC42F: FLdFPR4 var_1D8
  loc_6EC432: AddR8
  loc_6EC433: LitI2 200
  loc_6EC436: CR8I2
  loc_6EC437: AddR8
  loc_6EC438: PopFPR4
  loc_6EC439: FLdPrThis
  loc_6EC43A: VCallAd Control_ID_Command2
  loc_6EC43D: FStAdFunc var_1DC
  loc_6EC440: FLdPr var_1DC
  loc_6EC443: Me.Left = from_stack_1s
  loc_6EC448: FFreeAd var_B8 = "": var_DC = ""
  loc_6EC451: LitStr "Comisiones"
  loc_6EC454: FLdPr Me
  loc_6EC457: Me.Caption = from_stack_1
  loc_6EC45C: LitI2_Byte 1
  loc_6EC45E: FStI2 var_96
  loc_6EC461: LitVar_Missing var_D8
  loc_6EC464: LitI4 2
  loc_6EC469: ILdRf sValor
  loc_6EC46C: CVarRef
  loc_6EC471: FLdRfVar var_100
  loc_6EC474: ImpAdCallFPR4  = Mid(, , )
  loc_6EC479: FLdRfVar var_100
  loc_6EC47C: CStrVarTmp
  loc_6EC47D: IStStr
  loc_6EC481: FFreeVar var_D8 = ""
  loc_6EC488: FLdI2 var_96
  loc_6EC48B: CI4UI1
  loc_6EC48C: ILdI4 sValor
  loc_6EC48F: FnLenStr
  loc_6EC490: LtI4
  loc_6EC491: BranchF loc_6EC56E
  loc_6EC494: LitVarI2 var_D8, 25
  loc_6EC499: FLdI2 var_96
  loc_6EC49C: CI4UI1
  loc_6EC49D: ILdRf sValor
  loc_6EC4A0: CVarRef
  loc_6EC4A5: FLdRfVar var_100
  loc_6EC4A8: ImpAdCallFPR4  = Mid(, , )
  loc_6EC4AD: FLdRfVar var_100
  loc_6EC4B0: CStrVarTmp
  loc_6EC4B1: FStStr var_9C
  loc_6EC4B4: FFreeVar var_D8 = ""
  loc_6EC4BB: LitVarI2 var_D8, 2
  loc_6EC4C0: FLdI2 var_96
  loc_6EC4C3: LitI2_Byte &H13
  loc_6EC4C5: AddI2
  loc_6EC4C6: CI4UI1
  loc_6EC4C7: ILdRf sValor
  loc_6EC4CA: CVarRef
  loc_6EC4CF: FLdRfVar var_100
  loc_6EC4D2: ImpAdCallFPR4  = Mid(, , )
  loc_6EC4D7: FLdRfVar var_100
  loc_6EC4DA: LitVarStr var_F0, "/"
  loc_6EC4DF: ConcatVar var_110
  loc_6EC4E3: LitVarI2 var_140, 4
  loc_6EC4E8: FLdI2 var_96
  loc_6EC4EB: LitI2_Byte &HF
  loc_6EC4ED: AddI2
  loc_6EC4EE: CI4UI1
  loc_6EC4EF: ILdRf sValor
  loc_6EC4F2: CVarRef
  loc_6EC4F7: FLdRfVar var_150
  loc_6EC4FA: ImpAdCallFPR4  = Mid(, , )
  loc_6EC4FF: FLdRfVar var_150
  loc_6EC502: ConcatVar var_160
  loc_6EC506: CStrVarTmp
  loc_6EC507: FStStr var_A0
  loc_6EC50A: FFreeVar var_D8 = "": var_100 = "": var_140 = "": var_110 = "": var_150 = ""
  loc_6EC519: ILdRf var_9C
  loc_6EC51C: CVarStr var_B4
  loc_6EC51F: LitI4 9
  loc_6EC524: FLdRfVar var_D8
  loc_6EC527: ImpAdCallFPR4  = Chr()
  loc_6EC52C: FLdRfVar var_D8
  loc_6EC52F: ConcatVar var_100
  loc_6EC533: ILdRf var_A0
  loc_6EC536: CVarStr var_C8
  loc_6EC539: ConcatVar var_110
  loc_6EC53D: CStrVarTmp
  loc_6EC53E: CVarStr var_140
  loc_6EC541: PopAdLdVar
  loc_6EC542: FLdPrThis
  loc_6EC543: VCallAd Control_ID_TablaFechas
  loc_6EC546: FStAdFunc var_B8
  loc_6EC549: FLdPr var_B8
  loc_6EC54C: LateIdCall
  loc_6EC554: FFree1Ad var_B8
  loc_6EC557: FFreeVar var_D8 = "": var_100 = "": var_110 = ""
  loc_6EC562: FLdI2 var_96
  loc_6EC565: LitI2_Byte &H19
  loc_6EC567: AddI2
  loc_6EC568: FStI2 var_96
  loc_6EC56B: Branch loc_6EC488
  loc_6EC56E: Branch loc_6EC976
  loc_6EC571: ILdRf var_E0
  loc_6EC574: LitStr "G"
  loc_6EC577: EqStr
  loc_6EC579: BranchT loc_6EC592
  loc_6EC57C: ILdRf var_E0
  loc_6EC57F: LitStr "F"
  loc_6EC582: EqStr
  loc_6EC584: BranchT loc_6EC592
  loc_6EC587: ILdRf var_E0
  loc_6EC58A: LitStr "L"
  loc_6EC58D: EqStr
  loc_6EC58F: BranchF loc_6EC976
  loc_6EC592: LitI2_Byte &HFF
  loc_6EC594: FLdPrThis
  loc_6EC595: VCallAd Control_ID_PanelAnexo
  loc_6EC598: FStAdFunc var_B8
  loc_6EC59B: FLdPr var_B8
  loc_6EC59E: Me.Visible = from_stack_1b
  loc_6EC5A3: FFree1Ad var_B8
  loc_6EC5A6: LitVar_TRUE var_B4
  loc_6EC5A9: PopAdLdVar
  loc_6EC5AA: FLdPrThis
  loc_6EC5AB: VCallAd Control_ID_TablaAnexo
  loc_6EC5AE: FStAdFunc var_B8
  loc_6EC5B1: FLdPr var_B8
  loc_6EC5B4: LateIdSt
  loc_6EC5B9: FFree1Ad var_B8
  loc_6EC5BC: LitI2 6330
  loc_6EC5BF: CR8I2
  loc_6EC5C0: PopFPR4
  loc_6EC5C1: FLdPr Me
  loc_6EC5C4: Me.Width = from_stack_1s
  loc_6EC5C9: LitVarI4
  loc_6EC5D1: PopAdLdVar
  loc_6EC5D2: FLdPrThis
  loc_6EC5D3: VCallAd Control_ID_TablaFechas
  loc_6EC5D6: FStAdFunc var_B8
  loc_6EC5D9: FLdPr var_B8
  loc_6EC5DC: LateIdSt
  loc_6EC5E1: FFree1Ad var_B8
  loc_6EC5E4: LitVarI4
  loc_6EC5EC: PopAdLdVar
  loc_6EC5ED: LitVarI4
  loc_6EC5F5: PopAdLdVar
  loc_6EC5F6: LitVarStr var_F0, "Fecha"
  loc_6EC5FB: PopAdLdVar
  loc_6EC5FC: FLdPrThis
  loc_6EC5FD: VCallAd Control_ID_TablaFechas
  loc_6EC600: FStAdFunc var_B8
  loc_6EC603: FLdPr var_B8
  loc_6EC606: LateIdCallSt
  loc_6EC60E: FFree1Ad var_B8
  loc_6EC611: LitVarI4
  loc_6EC619: PopAdLdVar
  loc_6EC61A: LitVarI4
  loc_6EC622: PopAdLdVar
  loc_6EC623: LitVarStr var_F0, "Numero"
  loc_6EC628: PopAdLdVar
  loc_6EC629: FLdPrThis
  loc_6EC62A: VCallAd Control_ID_TablaFechas
  loc_6EC62D: FStAdFunc var_B8
  loc_6EC630: FLdPr var_B8
  loc_6EC633: LateIdCallSt
  loc_6EC63B: FFree1Ad var_B8
  loc_6EC63E: LitVarI4
  loc_6EC646: PopAdLdVar
  loc_6EC647: FLdPrThis
  loc_6EC648: VCallAd Control_ID_TablaAnexo
  loc_6EC64B: FStAdFunc var_B8
  loc_6EC64E: FLdPr var_B8
  loc_6EC651: LateIdSt
  loc_6EC656: FFree1Ad var_B8
  loc_6EC659: LitVarI2 var_B4, 10
  loc_6EC65E: PopAdLdVar
  loc_6EC65F: FLdPrThis
  loc_6EC660: VCallAd Control_ID_TablaAnexo
  loc_6EC663: FStAdFunc var_B8
  loc_6EC666: FLdPr var_B8
  loc_6EC669: LateIdLdVar var_D8 DispID_-512 -1
  loc_6EC670: CastAdVar Me
  loc_6EC674: FStAdFunc var_DC
  loc_6EC677: FLdPr var_DC
  loc_6EC67A: LateIdSt
  loc_6EC67F: FFreeAd var_B8 = ""
  loc_6EC686: FFree1Var var_D8 = ""
  loc_6EC689: LitVarI2 var_B4, 10
  loc_6EC68E: PopAdLdVar
  loc_6EC68F: FLdPrThis
  loc_6EC690: VCallAd Control_ID_TablaFechas
  loc_6EC693: FStAdFunc var_B8
  loc_6EC696: FLdPr var_B8
  loc_6EC699: LateIdLdVar var_D8 DispID_-512 -1
  loc_6EC6A0: CastAdVar Me
  loc_6EC6A4: FStAdFunc var_DC
  loc_6EC6A7: FLdPr var_DC
  loc_6EC6AA: LateIdSt
  loc_6EC6AF: FFreeAd var_B8 = ""
  loc_6EC6B6: FFree1Var var_D8 = ""
  loc_6EC6B9: LitVarI4
  loc_6EC6C1: PopAdLdVar
  loc_6EC6C2: LitVarI4
  loc_6EC6CA: PopAdLdVar
  loc_6EC6CB: FLdPrThis
  loc_6EC6CC: VCallAd Control_ID_TablaAnexo
  loc_6EC6CF: FStAdFunc var_B8
  loc_6EC6D2: FLdPr var_B8
  loc_6EC6D5: LateIdCallSt
  loc_6EC6DD: FFree1Ad var_B8
  loc_6EC6E0: LitVarI4
  loc_6EC6E8: PopAdLdVar
  loc_6EC6E9: FLdPrThis
  loc_6EC6EA: VCallAd Control_ID_TablaAnexo
  loc_6EC6ED: FStAdFunc var_B8
  loc_6EC6F0: FLdPr var_B8
  loc_6EC6F3: LateIdSt
  loc_6EC6F8: FFree1Ad var_B8
  loc_6EC6FB: LitVarI4
  loc_6EC703: PopAdLdVar
  loc_6EC704: LitVarI2 var_C8, 4
  loc_6EC709: PopAdLdVar
  loc_6EC70A: FLdPrThis
  loc_6EC70B: VCallAd Control_ID_TablaAnexo
  loc_6EC70E: FStAdFunc var_B8
  loc_6EC711: FLdPr var_B8
  loc_6EC714: LateIdCallSt
  loc_6EC71C: FFree1Ad var_B8
  loc_6EC71F: LitVarI4
  loc_6EC727: PopAdLdVar
  loc_6EC728: LitVarI4
  loc_6EC730: PopAdLdVar
  loc_6EC731: LitVarStr var_F0, "Anexos"
  loc_6EC736: PopAdLdVar
  loc_6EC737: FLdPrThis
  loc_6EC738: VCallAd Control_ID_TablaAnexo
  loc_6EC73B: FStAdFunc var_B8
  loc_6EC73E: FLdPr var_B8
  loc_6EC741: LateIdCallSt
  loc_6EC749: FFree1Ad var_B8
  loc_6EC74C: LitVarI4
  loc_6EC754: PopAdLdVar
  loc_6EC755: LitVarI4
  loc_6EC75D: PopAdLdVar
  loc_6EC75E: FLdPrThis
  loc_6EC75F: VCallAd Control_ID_TablaFechas
  loc_6EC762: FStAdFunc var_B8
  loc_6EC765: FLdPr var_B8
  loc_6EC768: LateIdCallSt
  loc_6EC770: FFree1Ad var_B8
  loc_6EC773: LitVarI4
  loc_6EC77B: PopAdLdVar
  loc_6EC77C: LitVarI4
  loc_6EC784: PopAdLdVar
  loc_6EC785: FLdPrThis
  loc_6EC786: VCallAd Control_ID_TablaFechas
  loc_6EC789: FStAdFunc var_B8
  loc_6EC78C: FLdPr var_B8
  loc_6EC78F: LateIdCallSt
  loc_6EC797: FFree1Ad var_B8
  loc_6EC79A: LitVarI4
  loc_6EC7A2: PopAdLdVar
  loc_6EC7A3: LitVarI2 var_C8, 4
  loc_6EC7A8: PopAdLdVar
  loc_6EC7A9: FLdPrThis
  loc_6EC7AA: VCallAd Control_ID_TablaFechas
  loc_6EC7AD: FStAdFunc var_B8
  loc_6EC7B0: FLdPr var_B8
  loc_6EC7B3: LateIdCallSt
  loc_6EC7BB: FFree1Ad var_B8
  loc_6EC7BE: FLdPr Me
  loc_6EC7C1: MemLdStr TipoReporte
  loc_6EC7C4: FStStrCopy var_1E0
  loc_6EC7C7: ILdRf var_1E0
  loc_6EC7CA: LitStr "G"
  loc_6EC7CD: EqStr
  loc_6EC7CF: BranchF loc_6EC7E0
  loc_6EC7D2: LitStr "Rendición de Ventas"
  loc_6EC7D5: FLdPr Me
  loc_6EC7D8: Me.Caption = from_stack_1
  loc_6EC7DD: Branch loc_6EC80F
  loc_6EC7E0: ILdRf var_1E0
  loc_6EC7E3: LitStr "F"
  loc_6EC7E6: EqStr
  loc_6EC7E8: BranchF loc_6EC7F9
  loc_6EC7EB: LitStr "Anulación Total de Rendición de Ventas"
  loc_6EC7EE: FLdPr Me
  loc_6EC7F1: Me.Caption = from_stack_1
  loc_6EC7F6: Branch loc_6EC80F
  loc_6EC7F9: ILdRf var_1E0
  loc_6EC7FC: LitStr "L"
  loc_6EC7FF: EqStr
  loc_6EC801: BranchF loc_6EC80F
  loc_6EC804: LitStr "Anulación Parcial de Rendición de Ventas"
  loc_6EC807: FLdPr Me
  loc_6EC80A: Me.Caption = from_stack_1
  loc_6EC80F: LitI2_Byte 1
  loc_6EC811: FStI2 var_96
  loc_6EC814: FLdI2 var_96
  loc_6EC817: CI4UI1
  loc_6EC818: ILdI4 sValor
  loc_6EC81B: FnLenStr
  loc_6EC81C: LeI4
  loc_6EC81D: BranchF loc_6EC934
  loc_6EC820: LitVarI2 var_D8, 2
  loc_6EC825: FLdI2 var_96
  loc_6EC828: LitI2_Byte 8
  loc_6EC82A: AddI2
  loc_6EC82B: CI4UI1
  loc_6EC82C: ILdRf sValor
  loc_6EC82F: CVarRef
  loc_6EC834: FLdRfVar var_100
  loc_6EC837: ImpAdCallFPR4  = Mid(, , )
  loc_6EC83C: FLdRfVar var_100
  loc_6EC83F: LitVarStr var_F0, "/"
  loc_6EC844: AddVar var_110
  loc_6EC848: LitVarI2 var_140, 2
  loc_6EC84D: FLdI2 var_96
  loc_6EC850: LitI2_Byte 5
  loc_6EC852: AddI2
  loc_6EC853: CI4UI1
  loc_6EC854: ILdRf sValor
  loc_6EC857: CVarRef
  loc_6EC85C: FLdRfVar var_150
  loc_6EC85F: ImpAdCallFPR4  = Mid(, , )
  loc_6EC864: FLdRfVar var_150
  loc_6EC867: AddVar var_160
  loc_6EC86B: LitVarStr var_170, "/"
  loc_6EC870: AddVar var_180
  loc_6EC874: LitVarI2 var_1B0, 4
  loc_6EC879: FLdI2 var_96
  loc_6EC87C: CI4UI1
  loc_6EC87D: ILdRf sValor
  loc_6EC880: CVarRef
  loc_6EC885: FLdRfVar var_1C0
  loc_6EC888: ImpAdCallFPR4  = Mid(, , )
  loc_6EC88D: FLdRfVar var_1C0
  loc_6EC890: AddVar var_1D0
  loc_6EC894: CStrVarTmp
  loc_6EC895: FStStr var_9C
  loc_6EC898: FFreeVar var_D8 = "": var_100 = "": var_140 = "": var_110 = "": var_150 = "": var_160 = "": var_1B0 = "": var_180 = "": var_1C0 = ""
  loc_6EC8AF: FLdI2 var_96
  loc_6EC8B2: LitI2_Byte &H25
  loc_6EC8B4: AddI2
  loc_6EC8B5: FStI2 var_96
  loc_6EC8B8: LitVarI2 var_D8, 13
  loc_6EC8BD: FLdI2 var_96
  loc_6EC8C0: CI4UI1
  loc_6EC8C1: ILdRf sValor
  loc_6EC8C4: CVarRef
  loc_6EC8C9: FLdRfVar var_100
  loc_6EC8CC: ImpAdCallFPR4  = Mid(, , )
  loc_6EC8D1: FLdRfVar var_100
  loc_6EC8D4: CStrVarTmp
  loc_6EC8D5: FStStr var_A4
  loc_6EC8D8: FFreeVar var_D8 = ""
  loc_6EC8DF: ILdRf var_9C
  loc_6EC8E2: CVarStr var_B4
  loc_6EC8E5: LitI4 9
  loc_6EC8EA: FLdRfVar var_D8
  loc_6EC8ED: ImpAdCallFPR4  = Chr()
  loc_6EC8F2: FLdRfVar var_D8
  loc_6EC8F5: ConcatVar var_100
  loc_6EC8F9: ILdRf var_A4
  loc_6EC8FC: CVarStr var_C8
  loc_6EC8FF: ConcatVar var_110
  loc_6EC903: CStrVarTmp
  loc_6EC904: CVarStr var_140
  loc_6EC907: PopAdLdVar
  loc_6EC908: FLdPrThis
  loc_6EC909: VCallAd Control_ID_TablaFechas
  loc_6EC90C: FStAdFunc var_B8
  loc_6EC90F: FLdPr var_B8
  loc_6EC912: LateIdCall
  loc_6EC91A: FFree1Ad var_B8
  loc_6EC91D: FFreeVar var_D8 = "": var_100 = "": var_110 = ""
  loc_6EC928: FLdI2 var_96
  loc_6EC92B: LitI2_Byte &HD
  loc_6EC92D: AddI2
  loc_6EC92E: FStI2 var_96
  loc_6EC931: Branch loc_6EC814
  loc_6EC934: LitI2_Byte &HFF
  loc_6EC936: FLdPrThis
  loc_6EC937: VCallAd Control_ID_Command4
  loc_6EC93A: FStAdFunc var_B8
  loc_6EC93D: FLdPr var_B8
  loc_6EC940: Me.Visible = from_stack_1b
  loc_6EC945: FFree1Ad var_B8
  loc_6EC948: LitI2 2400
  loc_6EC94B: CR8I2
  loc_6EC94C: PopFPR4
  loc_6EC94D: FLdPrThis
  loc_6EC94E: VCallAd Control_ID_Command3
  loc_6EC951: FStAdFunc var_B8
  loc_6EC954: FLdPr var_B8
  loc_6EC957: Me.Left = from_stack_1s
  loc_6EC95C: FFree1Ad var_B8
  loc_6EC95F: LitI2 4440
  loc_6EC962: CR8I2
  loc_6EC963: PopFPR4
  loc_6EC964: FLdPrThis
  loc_6EC965: VCallAd Control_ID_Command2
  loc_6EC968: FStAdFunc var_B8
  loc_6EC96B: FLdPr var_B8
  loc_6EC96E: Me.Left = from_stack_1s
  loc_6EC973: FFree1Ad var_B8
  loc_6EC976: LitVarI2 var_B4, 9
  loc_6EC97B: PopAdLdVar
  loc_6EC97C: FLdPrThis
  loc_6EC97D: VCallAd Control_ID_TablaFechas
  loc_6EC980: FStAdFunc var_B8
  loc_6EC983: FLdPr var_B8
  loc_6EC986: LateIdSt
  loc_6EC98B: FFree1Ad var_B8
  loc_6EC98E: ExitProcCbHresult
  loc_6EC994: ExitProcCbHresult
End Function

Public Function CargarPeriodo() '64B53C
  'Data Table: 42D060
  loc_64B2CC: ZeroRetValVar
  loc_64B2CE: FLdRfVar var_E4
  loc_64B2D1: LitVar_Missing var_E0
  loc_64B2D4: PopAdLdVar
  loc_64B2D5: LitVar_Missing var_D0
  loc_64B2D8: PopAdLdVar
  loc_64B2D9: LitVar_Missing var_C0
  loc_64B2DC: PopAdLdVar
  loc_64B2DD: FLdRfVar var_AC
  loc_64B2E0: FLdRfVar var_A8
  loc_64B2E3: ImpAdLdRf MemVar_7520D4
  loc_64B2E6: NewIfNullPr Global
  loc_64B2E9:  = Global.App
  loc_64B2EE: FLdPr var_A8
  loc_64B2F1:  = App.Path
  loc_64B2F6: ILdRf var_AC
  loc_64B2F9: LitStr "\reporte.mdb"
  loc_64B2FC: ConcatStr
  loc_64B2FD: FStStrNoPop var_B0
  loc_64B300: ImpAdLdRf MemVar_752164
  loc_64B303: NewIfNullPr Me
  loc_64B306: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_64B30B: FLdZeroAd var_E4
  loc_64B30E: FStAdFunc var_98
  loc_64B311: FFreeStr var_AC = ""
  loc_64B318: FFree1Ad var_A8
  loc_64B31B: FLdRfVar var_A8
  loc_64B31E: LitVar_Missing var_E0
  loc_64B321: PopAdLdVar
  loc_64B322: LitVar_Missing var_D0
  loc_64B325: PopAdLdVar
  loc_64B326: LitVar_Missing var_C0
  loc_64B329: PopAdLdVar
  loc_64B32A: LitStr "SELECT PERI FROM ARVD4"
  loc_64B32D: FLdPr var_98
  loc_64B330: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_64B335: FLdZeroAd var_A8
  loc_64B338: FStAdFunc var_9C
  loc_64B33B: FLdPrThis
  loc_64B33C: VCallAd Control_ID_TablaAnexo
  loc_64B33F: FStAdFunc var_A8
  loc_64B342: FLdPr var_A8
  loc_64B345: LateIdCall
  loc_64B34D: FFree1Ad var_A8
  loc_64B350: LitVarI4
  loc_64B358: PopAdLdVar
  loc_64B359: LitVarI4
  loc_64B361: PopAdLdVar
  loc_64B362: LitVarStr var_E0, "Anexos"
  loc_64B367: PopAdLdVar
  loc_64B368: FLdPrThis
  loc_64B369: VCallAd Control_ID_TablaAnexo
  loc_64B36C: FStAdFunc var_A8
  loc_64B36F: FLdPr var_A8
  loc_64B372: LateIdCallSt
  loc_64B37A: FFree1Ad var_A8
  loc_64B37D: LitVarI4
  loc_64B385: PopAdLdVar
  loc_64B386: FLdPrThis
  loc_64B387: VCallAd Control_ID_TablaAnexo
  loc_64B38A: FStAdFunc var_A8
  loc_64B38D: FLdPr var_A8
  loc_64B390: LateIdSt
  loc_64B395: FFree1Ad var_A8
  loc_64B398: FLdRfVar var_E8
  loc_64B39B: FLdPr var_9C
  loc_64B39E:  = Me.RecordCount
  loc_64B3A3: ILdRf var_E8
  loc_64B3A6: LitI4 0
  loc_64B3AB: GtI4
  loc_64B3AC: BranchF loc_64B442
  loc_64B3AF: FLdPr var_9C
  loc_64B3B2: Me.MoveFirst
  loc_64B3B7: FLdRfVar var_EA
  loc_64B3BA: FLdPr var_9C
  loc_64B3BD:  = Me.EOF
  loc_64B3C2: FLdI2 var_EA
  loc_64B3C5: NotI4
  loc_64B3C6: BranchF loc_64B43F
  loc_64B3C9: LitI4 0
  loc_64B3CE: FLdRfVar var_FC
  loc_64B3D1: CI4Var
  loc_64B3D3: FLdRfVar var_A4
  loc_64B3D6: RedimPreserve
  loc_64B3E0: FLdRfVar var_10C
  loc_64B3E3: FLdRfVar var_E4
  loc_64B3E6: LitVarI2 var_C0, 0
  loc_64B3EB: PopAdLdVar
  loc_64B3EC: FLdRfVar var_A8
  loc_64B3EF: FLdPr var_9C
  loc_64B3F2:  = Me.Fields
  loc_64B3F7: FLdPr var_A8
  loc_64B3FA: from_stack_2 = Me.Item(from_stack_1)
  loc_64B3FF: FLdPr var_E4
  loc_64B402:  = Me.Value
  loc_64B407: FLdRfVar var_10C
  loc_64B40A: CStrVarTmp
  loc_64B40B: FStStrNoPop var_AC
  loc_64B40E: FLdRfVar var_FC
  loc_64B411: CI4Var
  loc_64B413: ILdRf var_A4
  loc_64B416: Ary1StStrCopy
  loc_64B417: FFree1Str var_AC
  loc_64B41A: FFreeAd var_A8 = ""
  loc_64B421: FFree1Var var_10C = ""
  loc_64B424: FLdRfVar var_FC
  loc_64B427: LitVarI2 var_C0, 1
  loc_64B42C: AddVar var_10C
  loc_64B430: FStVar var_FC
  loc_64B434: FLdPr var_9C
  loc_64B437: Me.MoveNext
  loc_64B43C: Branch loc_64B3B7
  loc_64B43F: Branch loc_64B470
  loc_64B442: FLdRfVar var_FC
  loc_64B445: CI4Var
  loc_64B447: CVarI4
  loc_64B44B: PopAdLdVar
  loc_64B44C: LitVarI4
  loc_64B454: PopAdLdVar
  loc_64B455: LitVarStr var_E0, " - Vacio - "
  loc_64B45A: PopAdLdVar
  loc_64B45B: FLdPrThis
  loc_64B45C: VCallAd Control_ID_TablaAnexo
  loc_64B45F: FStAdFunc var_A8
  loc_64B462: FLdPr var_A8
  loc_64B465: LateIdCallSt
  loc_64B46D: FFree1Ad var_A8
  loc_64B470: LitVarI4
  loc_64B478: PopAdLdVar
  loc_64B479: LitVarI4
  loc_64B481: PopAdLdVar
  loc_64B482: FLdPrThis
  loc_64B483: VCallAd Control_ID_TablaAnexo
  loc_64B486: FStAdFunc var_A8
  loc_64B489: FLdPr var_A8
  loc_64B48C: LateIdCallLdVar
  loc_64B496: CStrVarTmp
  loc_64B497: FStStrNoPop var_AC
  loc_64B49A: LitStr " - Vacio - "
  loc_64B49D: NeStr
  loc_64B49F: FFree1Str var_AC
  loc_64B4A2: FFree1Ad var_A8
  loc_64B4A5: FFree1Var var_10C = ""
  loc_64B4A8: BranchF loc_64B535
  loc_64B4AB: FLdRfVar var_A4
  loc_64B4AE: from_stack_2v = Proc_85_32_64485C(from_stack_1v)
  loc_64B4B3: FLdRfVar var_E8
  loc_64B4B6: FLdPr var_9C
  loc_64B4B9:  = Me.RecordCount
  loc_64B4BE: ILdRf var_E8
  loc_64B4C1: LitI4 1
  loc_64B4C6: AddI4
  loc_64B4C7: CVarI4
  loc_64B4CB: PopAdLdVar
  loc_64B4CC: FLdPrThis
  loc_64B4CD: VCallAd Control_ID_TablaAnexo
  loc_64B4D0: FStAdFunc var_A8
  loc_64B4D3: FLdPr var_A8
  loc_64B4D6: LateIdSt
  loc_64B4DB: FFree1Ad var_A8
  loc_64B4DE: LitI2_Byte 0
  loc_64B4E0: FLdRfVar var_9E
  loc_64B4E3: ILdRf var_A4
  loc_64B4E6: LitI2_Byte 1
  loc_64B4E8: FnUBound
  loc_64B4EA: CI2I4
  loc_64B4EB: ForI2 var_110
  loc_64B4F1: FLdI2 var_9E
  loc_64B4F4: LitI2_Byte 1
  loc_64B4F6: AddI2
  loc_64B4F7: CI4UI1
  loc_64B4F8: CVarI4
  loc_64B4FC: PopAdLdVar
  loc_64B4FD: LitVarI4
  loc_64B505: PopAdLdVar
  loc_64B506: FLdI2 var_9E
  loc_64B509: CI4UI1
  loc_64B50A: ILdRf var_A4
  loc_64B50D: AryLock
  loc_64B510: Ary1LdRf
  loc_64B511: CDargRef
  loc_64B515: FLdPrThis
  loc_64B516: VCallAd Control_ID_TablaAnexo
  loc_64B519: FStAdFunc var_A8
  loc_64B51C: FLdPr var_A8
  loc_64B51F: LateIdCallSt
  loc_64B527: AryUnlock
  loc_64B52A: FFree1Ad var_A8
  loc_64B52D: FLdRfVar var_9E
  loc_64B530: NextI2 var_110, loc_64B4F1
  loc_64B535: ExitProcCbHresult
End Function

Public Function ArmarReportes(sValor) '5FBF10
  'Data Table: 42D060
  loc_5FBE58: ZeroRetValVar
  loc_5FBE5A: FLdPr Me
  loc_5FBE5D: MemLdStr TipoReporte
  loc_5FBE60: FStStrCopy var_98
  loc_5FBE63: ILdRf var_98
  loc_5FBE66: LitStr "B"
  loc_5FBE69: EqStr
  loc_5FBE6B: BranchF loc_5FBE8E
  loc_5FBE6E: FLdRfVar var_A8
  loc_5FBE71: ILdRf sValor
  loc_5FBE74: from_stack_2v = ArmarReporteDB(from_stack_1v)
  loc_5FBE79: FLdRfVar var_A8
  loc_5FBE7C: NotVar var_B8
  loc_5FBE80: CBoolVarNull
  loc_5FBE82: FFree1Var var_A8 = ""
  loc_5FBE85: BranchF loc_5FBE8B
  loc_5FBE88: Branch loc_5FBE6E
  loc_5FBE8B: Branch loc_5FBEB8
  loc_5FBE8E: ILdRf var_98
  loc_5FBE91: LitStr "J"
  loc_5FBE94: EqStr
  loc_5FBE96: BranchT loc_5FBEA4
  loc_5FBE99: ILdRf var_98
  loc_5FBE9C: LitStr "I"
  loc_5FBE9F: EqStr
  loc_5FBEA1: BranchF loc_5FBEB8
  loc_5FBEA4: FLdRfVar var_BE
  loc_5FBEA7: ILdI4 sValor
  loc_5FBEAA: FStStrCopy var_BC
  loc_5FBEAD: FLdRfVar var_BC
  loc_5FBEB0: from_stack_2v = ArmarReporteRA(from_stack_1v)
  loc_5FBEB5: FFree1Str var_BC
  loc_5FBEB8: FLdRfVar var_C0
  loc_5FBEBB: LitI2_Byte 0
  loc_5FBEBD: PopTmpLdAd2 var_BE
  loc_5FBEC0: ILdRf sValor
  loc_5FBEC3: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_5FBEC8: FLdI2 var_C0
  loc_5FBECB: NotI4
  loc_5FBECC: BranchF loc_5FBF09
  loc_5FBECF: LitVar_Missing var_110
  loc_5FBED2: LitVar_Missing var_F0
  loc_5FBED5: LitVarStr var_D0, "Aviso"
  loc_5FBEDA: FStVarCopyObj var_B8
  loc_5FBEDD: FLdRfVar var_B8
  loc_5FBEE0: LitI4 &H40
  loc_5FBEE5: LitStr "Se produjo un error al intentar"
  loc_5FBEE8: LitStr vbCrLf
  loc_5FBEEB: ConcatStr
  loc_5FBEEC: FStStrNoPop var_BC
  loc_5FBEEF: LitStr "Visualizar el reporte."
  loc_5FBEF2: ConcatStr
  loc_5FBEF3: CVarStr var_A8
  loc_5FBEF6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FBEFB: FFree1Str var_BC
  loc_5FBEFE: FFreeVar var_A8 = "": var_B8 = "": var_F0 = ""
  loc_5FBF09: ExitProcCbHresult
End Function

Public Function ArmarReporteRA(sValor) '71AD14
  'Data Table: 42D060
  loc_718FCC: OnErrorGoto loc_71AC54
  loc_718FCF: FLdRfVar var_C4
  loc_718FD2: FLdRfVar var_C0
  loc_718FD5: ImpAdLdRf MemVar_7520D4
  loc_718FD8: NewIfNullPr Global
  loc_718FDB:  = Global.App
  loc_718FE0: FLdPr var_C0
  loc_718FE3:  = App.Path
  loc_718FE8: ILdRf var_C4
  loc_718FEB: LitStr "\REPORTE.MDB"
  loc_718FEE: ConcatStr
  loc_718FEF: FStStr var_A8
  loc_718FF2: FFree1Str var_C4
  loc_718FF5: FFree1Ad var_C0
  loc_718FF8: FLdRfVar var_C0
  loc_718FFB: LitVar_Missing var_F4
  loc_718FFE: PopAdLdVar
  loc_718FFF: LitVar_Missing var_E4
  loc_719002: PopAdLdVar
  loc_719003: LitVar_TRUE var_D4
  loc_719006: PopAdLdVar
  loc_719007: ILdRf var_A8
  loc_71900A: ImpAdLdRf MemVar_752164
  loc_71900D: NewIfNullPr Me
  loc_719010: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_719015: FLdZeroAd var_C0
  loc_719018: FStVarAdFunc
  loc_71901C: LitI2_Byte 0
  loc_71901E: FStI2 var_86
  loc_719021: LitI2_Byte 0
  loc_719023: FLdRfVar var_BA
  loc_719026: FLdPr Me
  loc_719029: MemLdRfVar from_stack_1.global_60
  loc_71902C: LitI2_Byte 1
  loc_71902E: FnUBound
  loc_719030: CI2I4
  loc_719031: ForI2 var_108
  loc_719037: LitI2_Byte 0
  loc_719039: CStrUI1
  loc_71903B: FStStrNoPop var_C4
  loc_71903E: FLdI2 var_BA
  loc_719041: CI4UI1
  loc_719042: FLdPr Me
  loc_719045: MemLdRfVar from_stack_1.global_60
  loc_719048: Ary1StStrCopy
  loc_719049: FFree1Str var_C4
  loc_71904C: FLdRfVar var_BA
  loc_71904F: NextI2 var_108, loc_719037
  loc_719054: LitI4 &H19
  loc_719059: FStR4 var_B4
  loc_71905C: LitVarStr var_D4, "Delete * from Datos_D1"
  loc_719061: PopAdLdVar
  loc_719062: LitVarI4
  loc_71906A: PopAdLdVar
  loc_71906B: FLdRfVar var_104
  loc_71906E: LdPrVar
  loc_719070: LateMemCall
  loc_719076: LitVarStr var_D4, "Delete * from Datos_D2"
  loc_71907B: PopAdLdVar
  loc_71907C: LitVarI4
  loc_719084: PopAdLdVar
  loc_719085: FLdRfVar var_104
  loc_719088: LdPrVar
  loc_71908A: LateMemCall
  loc_719090: LitVarStr var_D4, "Delete * from Datos_D3"
  loc_719095: PopAdLdVar
  loc_719096: LitVarI4
  loc_71909E: PopAdLdVar
  loc_71909F: FLdRfVar var_104
  loc_7190A2: LdPrVar
  loc_7190A4: LateMemCall
  loc_7190AA: LitVarStr var_D4, "Delete * from Datos_D4"
  loc_7190AF: PopAdLdVar
  loc_7190B0: LitVarI4
  loc_7190B8: PopAdLdVar
  loc_7190B9: FLdRfVar var_104
  loc_7190BC: LdPrVar
  loc_7190BE: LateMemCall
  loc_7190C4: LitVarStr var_D4, "Delete * from Datos_D5"
  loc_7190C9: PopAdLdVar
  loc_7190CA: LitVarI4
  loc_7190D2: PopAdLdVar
  loc_7190D3: FLdRfVar var_104
  loc_7190D6: LdPrVar
  loc_7190D8: LateMemCall
  loc_7190DE: ILdRf var_B4
  loc_7190E1: ILdI4 sValor
  loc_7190E4: FnLenStr
  loc_7190E5: LtI4
  loc_7190E6: BranchF loc_71AC3E
  loc_7190E9: LitI4 8
  loc_7190EE: FLdRfVar var_118
  loc_7190F1: ImpAdCallFPR4  = Chr()
  loc_7190F6: FLdRfVar var_118
  loc_7190F9: LitI4 8
  loc_7190FE: FLdRfVar var_128
  loc_719101: ImpAdCallFPR4  = Chr()
  loc_719106: FLdRfVar var_128
  loc_719109: ConcatVar var_138
  loc_71910D: LitI4 8
  loc_719112: FLdRfVar var_148
  loc_719115: ImpAdCallFPR4  = Chr()
  loc_71911A: FLdRfVar var_148
  loc_71911D: ConcatVar var_158
  loc_719121: LitI4 &H20
  loc_719126: FLdRfVar var_168
  loc_719129: ImpAdCallFPR4  = Chr()
  loc_71912E: FLdRfVar var_168
  loc_719131: ConcatVar var_178
  loc_719135: LitI4 &H1E
  loc_71913A: FLdRfVar var_188
  loc_71913D: ImpAdCallFPR4  = Chr()
  loc_719142: FLdRfVar var_188
  loc_719145: ConcatVar var_198
  loc_719149: LitI4 &H19
  loc_71914E: FLdRfVar var_1A8
  loc_719151: ImpAdCallFPR4  = Chr()
  loc_719156: FLdRfVar var_1A8
  loc_719159: ConcatVar var_1B8
  loc_71915D: LitI4 8
  loc_719162: FLdRfVar var_1C8
  loc_719165: ImpAdCallFPR4  = Chr()
  loc_71916A: FLdRfVar var_1C8
  loc_71916D: ConcatVar var_1D8
  loc_719171: LitI4 &HA
  loc_719176: FLdRfVar var_1E8
  loc_719179: ImpAdCallFPR4  = Chr()
  loc_71917E: FLdRfVar var_1E8
  loc_719181: ConcatVar var_1F8
  loc_719185: LitI4 &H14
  loc_71918A: FLdRfVar var_208
  loc_71918D: ImpAdCallFPR4  = Chr()
  loc_719192: FLdRfVar var_208
  loc_719195: ConcatVar var_218
  loc_719199: LitI4 8
  loc_71919E: FLdRfVar var_228
  loc_7191A1: ImpAdCallFPR4  = Chr()
  loc_7191A6: FLdRfVar var_228
  loc_7191A9: ConcatVar var_238
  loc_7191AD: LitI4 &HF
  loc_7191B2: FLdRfVar var_248
  loc_7191B5: ImpAdCallFPR4  = Chr()
  loc_7191BA: FLdRfVar var_248
  loc_7191BD: ConcatVar var_258
  loc_7191C1: LitI4 1
  loc_7191C6: FLdRfVar var_268
  loc_7191C9: ImpAdCallFPR4  = Chr()
  loc_7191CE: FLdRfVar var_268
  loc_7191D1: ConcatVar var_278
  loc_7191D5: LitI4 5
  loc_7191DA: FLdRfVar var_288
  loc_7191DD: ImpAdCallFPR4  = Chr()
  loc_7191E2: FLdRfVar var_288
  loc_7191E5: ConcatVar var_298
  loc_7191E9: LitI4 1
  loc_7191EE: FLdRfVar var_2A8
  loc_7191F1: ImpAdCallFPR4  = Chr()
  loc_7191F6: FLdRfVar var_2A8
  loc_7191F9: ConcatVar var_2B8
  loc_7191FD: LitI4 &HA
  loc_719202: FLdRfVar var_2C8
  loc_719205: ImpAdCallFPR4  = Chr()
  loc_71920A: FLdRfVar var_2C8
  loc_71920D: ConcatVar var_2D8
  loc_719211: CStrVarTmp
  loc_719212: FStStr var_A4
  loc_719215: FFreeVar var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = ""
  loc_719252: ILdRf var_B4
  loc_719255: ILdI4 sValor
  loc_719258: FnLenStr
  loc_719259: LeI4
  loc_71925A: CVarBoolI2 var_2E8
  loc_71925E: LitVarI2 var_118, 2
  loc_719263: ILdRf var_B4
  loc_719266: ILdRf sValor
  loc_719269: CVarRef
  loc_71926E: FLdRfVar var_128
  loc_719271: ImpAdCallFPR4  = Mid(, , )
  loc_719276: FLdRfVar var_128
  loc_719279: LitVarStr var_F4, "D1"
  loc_71927E: HardType
  loc_71927F: EqVar var_138
  loc_719283: AndVar var_148
  loc_719287: CBoolVarNull
  loc_719289: FFreeVar var_118 = "": var_128 = ""
  loc_719292: BranchF loc_71954C
  loc_719295: LitVarI2 var_118, 2
  loc_71929A: ILdRf var_B4
  loc_71929D: LitI4 2
  loc_7192A2: AddI4
  loc_7192A3: ILdRf sValor
  loc_7192A6: CVarRef
  loc_7192AB: FLdRfVar var_128
  loc_7192AE: ImpAdCallFPR4  = Mid(, , )
  loc_7192B3: FLdRfVar var_128
  loc_7192B6: CStrVarTmp
  loc_7192B7: FStStr var_B8
  loc_7192BA: FFreeVar var_118 = ""
  loc_7192C1: ILdRf var_B4
  loc_7192C4: LitI4 4
  loc_7192C9: AddI4
  loc_7192CA: FStR4 var_B4
  loc_7192CD: LitVar_Missing var_118
  loc_7192D0: ILdRf var_B4
  loc_7192D3: ILdRf sValor
  loc_7192D6: CVarRef
  loc_7192DB: FLdRfVar var_128
  loc_7192DE: ImpAdCallFPR4  = Mid(, , )
  loc_7192E3: ILdRf var_B4
  loc_7192E6: LitI2_Byte &HF
  loc_7192E8: PopTmpLdAd2 var_2EE
  loc_7192EB: FLdRfVar var_A4
  loc_7192EE: FLdRfVar var_A0
  loc_7192F1: PopTmpLdAdStr var_2EC
  loc_7192F4: FLdRfVar var_128
  loc_7192F7: CStrVarTmp
  loc_7192F8: PopTmpLdAdStr
  loc_7192FC: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_719301: CI4UI1
  loc_719302: AddI4
  loc_719303: FStR4 var_B4
  loc_719306: FFree1Str var_C4
  loc_719309: FFreeVar var_118 = ""
  loc_719310: LitI4 &HE
  loc_719315: FLdRfVar var_A0
  loc_719318: Ary1LdI4
  loc_719319: CI2Str
  loc_71931B: FLdPr Me
  loc_71931E: MemStI2 global_116
  loc_719321: LitStr "INSERT INTO Datos_D1(fer8, fdes, fhas, dcli, dabr, loca, ccli, ctad, cuit, fvto, tcob, sgtc, tint, qcpy, blco, creg)"
  loc_719324: FStStrCopy var_AC
  loc_719327: LitStr " VALUES ('"
  loc_71932A: LitI4 1
  loc_71932F: FLdRfVar var_A0
  loc_719332: Ary1LdI4
  loc_719333: ConcatStr
  loc_719334: FStStrNoPop var_C4
  loc_719337: LitStr "','"
  loc_71933A: ConcatStr
  loc_71933B: FStStrNoPop var_2F4
  loc_71933E: LitI4 2
  loc_719343: FLdRfVar var_A0
  loc_719346: Ary1LdI4
  loc_719347: ConcatStr
  loc_719348: FStStrNoPop var_2F8
  loc_71934B: LitStr "','"
  loc_71934E: ConcatStr
  loc_71934F: FStStrNoPop var_2FC
  loc_719352: LitI4 3
  loc_719357: FLdRfVar var_A0
  loc_71935A: Ary1LdI4
  loc_71935B: ConcatStr
  loc_71935C: FStStrNoPop var_300
  loc_71935F: LitStr "','"
  loc_719362: ConcatStr
  loc_719363: FStStr var_B0
  loc_719366: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_719373: LitI4 &HC
  loc_719378: FLdRfVar var_A0
  loc_71937B: Ary1LdI4
  loc_71937C: ImpAdCallFPR4 push Val()
  loc_719381: FStFPR8 var_350
  loc_719384: LitStr vbNullString
  loc_719387: FStStrCopy var_324
  loc_71938A: FLdRfVar var_324
  loc_71938D: LitI2_Byte &HD
  loc_71938F: PopTmpLdAd2 var_2EE
  loc_719392: LitI4 &HB
  loc_719397: FLdRfVar var_A0
  loc_71939A: Ary1LdRf
  loc_71939B: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_7193A0: FStFPR8 var_358
  loc_7193A3: ILdRf var_B0
  loc_7193A6: LitI4 4
  loc_7193AB: FLdRfVar var_A0
  loc_7193AE: Ary1LdI4
  loc_7193AF: ConcatStr
  loc_7193B0: FStStrNoPop var_C4
  loc_7193B3: LitStr "','"
  loc_7193B6: ConcatStr
  loc_7193B7: FStStrNoPop var_2F4
  loc_7193BA: LitI4 5
  loc_7193BF: FLdRfVar var_A0
  loc_7193C2: Ary1LdI4
  loc_7193C3: ConcatStr
  loc_7193C4: FStStrNoPop var_2F8
  loc_7193C7: LitStr "','"
  loc_7193CA: ConcatStr
  loc_7193CB: FStStrNoPop var_2FC
  loc_7193CE: LitI4 6
  loc_7193D3: FLdRfVar var_A0
  loc_7193D6: Ary1LdI4
  loc_7193D7: ConcatStr
  loc_7193D8: FStStrNoPop var_300
  loc_7193DB: LitStr "','"
  loc_7193DE: ConcatStr
  loc_7193DF: FStStrNoPop var_304
  loc_7193E2: LitI4 7
  loc_7193E7: FLdRfVar var_A0
  loc_7193EA: Ary1LdI4
  loc_7193EB: ConcatStr
  loc_7193EC: FStStrNoPop var_308
  loc_7193EF: LitStr "','"
  loc_7193F2: ConcatStr
  loc_7193F3: FStStrNoPop var_30C
  loc_7193F6: LitI4 8
  loc_7193FB: FLdRfVar var_A0
  loc_7193FE: Ary1LdI4
  loc_7193FF: ConcatStr
  loc_719400: FStStrNoPop var_310
  loc_719403: LitStr "','"
  loc_719406: ConcatStr
  loc_719407: FStStrNoPop var_314
  loc_71940A: LitI4 9
  loc_71940F: FLdRfVar var_A0
  loc_719412: Ary1LdI4
  loc_719413: ConcatStr
  loc_719414: FStStrNoPop var_318
  loc_719417: LitStr "','"
  loc_71941A: ConcatStr
  loc_71941B: FStStrNoPop var_31C
  loc_71941E: LitI4 &HA
  loc_719423: FLdRfVar var_A0
  loc_719426: Ary1LdI4
  loc_719427: ConcatStr
  loc_719428: FStStrNoPop var_320
  loc_71942B: LitStr "',"
  loc_71942E: ConcatStr
  loc_71942F: FStStrNoPop var_340
  loc_719432: FLdRfVar var_33C
  loc_719435: FLdFPR8 var_358
  loc_719438: PopTmpLdAdFPR8
  loc_71943C: FLdFPR8 var_350
  loc_71943F: PopTmpLdAdFPR8
  loc_719443: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719448: FLdFPR8 var_33C
  loc_71944B: CStrR8
  loc_71944D: FStStrNoPop var_344
  loc_719450: ConcatStr
  loc_719451: FStStrNoPop var_348
  loc_719454: LitStr ",'"
  loc_719457: ConcatStr
  loc_719458: FStStr var_B0
  loc_71945B: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = ""
  loc_719480: ILdRf var_B0
  loc_719483: LitI4 &HC
  loc_719488: FLdRfVar var_A0
  loc_71948B: Ary1LdI4
  loc_71948C: ConcatStr
  loc_71948D: FStStrNoPop var_C4
  loc_719490: LitStr "',"
  loc_719493: ConcatStr
  loc_719494: FStStrNoPop var_2F8
  loc_719497: LitStr vbNullString
  loc_71949A: FStStrCopy var_2F4
  loc_71949D: FLdRfVar var_2F4
  loc_7194A0: LitI2_Byte 3
  loc_7194A2: PopTmpLdAd2 var_2EE
  loc_7194A5: LitI4 &HD
  loc_7194AA: FLdRfVar var_A0
  loc_7194AD: Ary1LdRf
  loc_7194AE: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_7194B3: CStrR8
  loc_7194B5: FStStrNoPop var_2FC
  loc_7194B8: ConcatStr
  loc_7194B9: FStStrNoPop var_300
  loc_7194BC: LitStr ","
  loc_7194BF: ConcatStr
  loc_7194C0: FStStrNoPop var_304
  loc_7194C3: LitI4 &HE
  loc_7194C8: FLdRfVar var_A0
  loc_7194CB: Ary1LdI4
  loc_7194CC: ConcatStr
  loc_7194CD: FStStrNoPop var_308
  loc_7194D0: LitStr ",'"
  loc_7194D3: ConcatStr
  loc_7194D4: FStStrNoPop var_30C
  loc_7194D7: LitI4 &HF
  loc_7194DC: FLdRfVar var_A0
  loc_7194DF: Ary1LdI4
  loc_7194E0: ConcatStr
  loc_7194E1: FStStrNoPop var_310
  loc_7194E4: LitStr "','"
  loc_7194E7: ConcatStr
  loc_7194E8: FStStrNoPop var_314
  loc_7194EB: ILdRf var_B8
  loc_7194EE: ConcatStr
  loc_7194EF: FStStrNoPop var_318
  loc_7194F2: LitStr "')"
  loc_7194F5: ConcatStr
  loc_7194F6: FStStr var_B0
  loc_7194F9: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = ""
  loc_719512: ILdRf var_AC
  loc_719515: ILdRf var_B0
  loc_719518: ConcatStr
  loc_719519: FStStr var_AC
  loc_71951C: FLdRfVar var_AC
  loc_71951F: CDargRef
  loc_719523: LitVarI4
  loc_71952B: PopAdLdVar
  loc_71952C: FLdRfVar var_104
  loc_71952F: LdPrVar
  loc_719531: LateMemCall
  loc_719537: ILdRf var_B4
  loc_71953A: LitI4 2
  loc_71953F: AddI4
  loc_719540: LitI4 &HF
  loc_719545: AddI4
  loc_719546: FStR4 var_B4
  loc_719549: Branch loc_719252
  loc_71954C: LitI4 6
  loc_719551: FLdRfVar var_118
  loc_719554: ImpAdCallFPR4  = Chr()
  loc_719559: FLdRfVar var_118
  loc_71955C: LitI4 &H19
  loc_719561: FLdRfVar var_128
  loc_719564: ImpAdCallFPR4  = Chr()
  loc_719569: FLdRfVar var_128
  loc_71956C: ConcatVar var_138
  loc_719570: LitI4 &HF
  loc_719575: FLdRfVar var_148
  loc_719578: ImpAdCallFPR4  = Chr()
  loc_71957D: FLdRfVar var_148
  loc_719580: ConcatVar var_158
  loc_719584: LitI4 1
  loc_719589: FLdRfVar var_168
  loc_71958C: ImpAdCallFPR4  = Chr()
  loc_719591: FLdRfVar var_168
  loc_719594: ConcatVar var_178
  loc_719598: LitI4 &HF
  loc_71959D: FLdRfVar var_188
  loc_7195A0: ImpAdCallFPR4  = Chr()
  loc_7195A5: FLdRfVar var_188
  loc_7195A8: ConcatVar var_198
  loc_7195AC: LitI4 1
  loc_7195B1: FLdRfVar var_1A8
  loc_7195B4: ImpAdCallFPR4  = Chr()
  loc_7195B9: FLdRfVar var_1A8
  loc_7195BC: ConcatVar var_1B8
  loc_7195C0: LitI4 &HF
  loc_7195C5: FLdRfVar var_1C8
  loc_7195C8: ImpAdCallFPR4  = Chr()
  loc_7195CD: FLdRfVar var_1C8
  loc_7195D0: ConcatVar var_1D8
  loc_7195D4: LitI4 1
  loc_7195D9: FLdRfVar var_1E8
  loc_7195DC: ImpAdCallFPR4  = Chr()
  loc_7195E1: FLdRfVar var_1E8
  loc_7195E4: ConcatVar var_1F8
  loc_7195E8: LitI4 &HF
  loc_7195ED: FLdRfVar var_208
  loc_7195F0: ImpAdCallFPR4  = Chr()
  loc_7195F5: FLdRfVar var_208
  loc_7195F8: ConcatVar var_218
  loc_7195FC: LitI4 1
  loc_719601: FLdRfVar var_228
  loc_719604: ImpAdCallFPR4  = Chr()
  loc_719609: FLdRfVar var_228
  loc_71960C: ConcatVar var_238
  loc_719610: LitI4 &H5E
  loc_719615: FLdRfVar var_248
  loc_719618: ImpAdCallFPR4  = Chr()
  loc_71961D: FLdRfVar var_248
  loc_719620: ConcatVar var_258
  loc_719624: CStrVarTmp
  loc_719625: FStStr var_A4
  loc_719628: FFreeVar var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = ""
  loc_719655: ILdRf var_B4
  loc_719658: ILdI4 sValor
  loc_71965B: FnLenStr
  loc_71965C: LeI4
  loc_71965D: CVarBoolI2 var_2E8
  loc_719661: LitVarI2 var_118, 2
  loc_719666: ILdRf var_B4
  loc_719669: ILdRf sValor
  loc_71966C: CVarRef
  loc_719671: FLdRfVar var_128
  loc_719674: ImpAdCallFPR4  = Mid(, , )
  loc_719679: FLdRfVar var_128
  loc_71967C: LitVarStr var_F4, "D2"
  loc_719681: HardType
  loc_719682: EqVar var_138
  loc_719686: AndVar var_148
  loc_71968A: CBoolVarNull
  loc_71968C: FFreeVar var_118 = "": var_128 = ""
  loc_719695: BranchF loc_7199E6
  loc_719698: LitVarI2 var_118, 2
  loc_71969D: ILdRf var_B4
  loc_7196A0: ILdRf sValor
  loc_7196A3: CVarRef
  loc_7196A8: FLdRfVar var_128
  loc_7196AB: ImpAdCallFPR4  = Mid(, , )
  loc_7196B0: FLdRfVar var_128
  loc_7196B3: FLdRfVar var_138
  loc_7196B6: ImpAdCallFPR4  = Trim()
  loc_7196BB: FLdRfVar var_2EE
  loc_7196BE: FLdRfVar var_138
  loc_7196C1: CStrVarTmp
  loc_7196C2: PopTmpLdAdStr
  loc_7196C6: from_stack_2v = Proc_85_29_5F1A1C(from_stack_1v)
  loc_7196CB: FFree1Str var_C4
  loc_7196CE: FFreeVar var_118 = "": var_128 = ""
  loc_7196D7: LitVarI2 var_118, 2
  loc_7196DC: ILdRf var_B4
  loc_7196DF: LitI4 2
  loc_7196E4: AddI4
  loc_7196E5: ILdRf sValor
  loc_7196E8: CVarRef
  loc_7196ED: FLdRfVar var_128
  loc_7196F0: ImpAdCallFPR4  = Mid(, , )
  loc_7196F5: FLdRfVar var_128
  loc_7196F8: CStrVarTmp
  loc_7196F9: FStStr var_B8
  loc_7196FC: FFreeVar var_118 = ""
  loc_719703: ILdRf var_B4
  loc_719706: LitI4 4
  loc_71970B: AddI4
  loc_71970C: FStR4 var_B4
  loc_71970F: LitVar_Missing var_118
  loc_719712: ILdRf var_B4
  loc_719715: ILdRf sValor
  loc_719718: CVarRef
  loc_71971D: FLdRfVar var_128
  loc_719720: ImpAdCallFPR4  = Mid(, , )
  loc_719725: ILdRf var_B4
  loc_719728: LitI2_Byte &HB
  loc_71972A: PopTmpLdAd2 var_2EE
  loc_71972D: FLdRfVar var_A4
  loc_719730: FLdRfVar var_A0
  loc_719733: PopTmpLdAdStr var_2EC
  loc_719736: FLdRfVar var_128
  loc_719739: CStrVarTmp
  loc_71973A: PopTmpLdAdStr
  loc_71973E: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_719743: CI4UI1
  loc_719744: AddI4
  loc_719745: FStR4 var_B4
  loc_719748: FFree1Str var_C4
  loc_71974B: FFreeVar var_118 = ""
  loc_719752: LitStr "INSERT INTO Datos_D2(cart, descp, mbru, sgtc, mcom, sgco, mcfv, sgfv, tdrr, sgtd, blco, creg)"
  loc_719755: FStStrCopy var_AC
  loc_719758: LitI4 4
  loc_71975D: FLdRfVar var_A0
  loc_719760: Ary1LdI4
  loc_719761: ImpAdCallFPR4 push Val()
  loc_719766: FStFPR8 var_350
  loc_719769: LitStr vbNullString
  loc_71976C: FStStrCopy var_2FC
  loc_71976F: FLdRfVar var_2FC
  loc_719772: LitI2_Byte &HD
  loc_719774: PopTmpLdAd2 var_2EE
  loc_719777: LitI4 3
  loc_71977C: FLdRfVar var_A0
  loc_71977F: Ary1LdRf
  loc_719780: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719785: FStFPR8 var_358
  loc_719788: LitStr " VALUES ('"
  loc_71978B: LitI4 1
  loc_719790: FLdRfVar var_A0
  loc_719793: Ary1LdI4
  loc_719794: ConcatStr
  loc_719795: FStStrNoPop var_C4
  loc_719798: LitStr "','"
  loc_71979B: ConcatStr
  loc_71979C: FStStrNoPop var_2F4
  loc_71979F: LitI4 2
  loc_7197A4: FLdRfVar var_A0
  loc_7197A7: Ary1LdI4
  loc_7197A8: ConcatStr
  loc_7197A9: FStStrNoPop var_2F8
  loc_7197AC: LitStr "',"
  loc_7197AF: ConcatStr
  loc_7197B0: FStStrNoPop var_300
  loc_7197B3: FLdRfVar var_33C
  loc_7197B6: FLdFPR8 var_358
  loc_7197B9: PopTmpLdAdFPR8
  loc_7197BD: FLdFPR8 var_350
  loc_7197C0: FnCDblR8
  loc_7197C2: PopTmpLdAdFPR8
  loc_7197C6: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_7197CB: FLdFPR8 var_33C
  loc_7197CE: CStrR8
  loc_7197D0: FStStrNoPop var_304
  loc_7197D3: ConcatStr
  loc_7197D4: FStStrNoPop var_308
  loc_7197D7: LitStr ",'"
  loc_7197DA: ConcatStr
  loc_7197DB: FStStr var_B0
  loc_7197DE: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = ""
  loc_7197EF: LitI4 6
  loc_7197F4: FLdRfVar var_A0
  loc_7197F7: Ary1LdI4
  loc_7197F8: ImpAdCallFPR4 push Val()
  loc_7197FD: FStFPR8 var_3A0
  loc_719800: LitStr vbNullString
  loc_719803: FStStrCopy var_2F4
  loc_719806: FLdRfVar var_2F4
  loc_719809: LitI2_Byte &HD
  loc_71980B: PopTmpLdAd2 var_2EE
  loc_71980E: LitI4 5
  loc_719813: FLdRfVar var_A0
  loc_719816: Ary1LdRf
  loc_719817: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71981C: FStFPR8 var_3A8
  loc_71981F: LitI4 8
  loc_719824: FLdRfVar var_A0
  loc_719827: Ary1LdI4
  loc_719828: ImpAdCallFPR4 push Val()
  loc_71982D: FStFPR8 var_3B0
  loc_719830: LitStr vbNullString
  loc_719833: FStStrCopy var_30C
  loc_719836: FLdRfVar var_30C
  loc_719839: LitI2_Byte &HD
  loc_71983B: PopTmpLdAd2 var_35A
  loc_71983E: LitI4 7
  loc_719843: FLdRfVar var_A0
  loc_719846: Ary1LdRf
  loc_719847: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71984C: FStFPR8 var_3B8
  loc_71984F: LitI4 &HA
  loc_719854: FLdRfVar var_A0
  loc_719857: Ary1LdI4
  loc_719858: ImpAdCallFPR4 push Val()
  loc_71985D: FStFPR8 var_3C0
  loc_719860: LitStr vbNullString
  loc_719863: FStStrCopy var_324
  loc_719866: FLdRfVar var_324
  loc_719869: LitI2_Byte &HD
  loc_71986B: PopTmpLdAd2 var_366
  loc_71986E: LitI4 9
  loc_719873: FLdRfVar var_A0
  loc_719876: Ary1LdRf
  loc_719877: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71987C: FStFPR8 var_3C8
  loc_71987F: ILdRf var_B0
  loc_719882: LitI4 4
  loc_719887: FLdRfVar var_A0
  loc_71988A: Ary1LdI4
  loc_71988B: ConcatStr
  loc_71988C: FStStrNoPop var_C4
  loc_71988F: LitStr "',"
  loc_719892: ConcatStr
  loc_719893: FStStrNoPop var_2F8
  loc_719896: FLdRfVar var_33C
  loc_719899: FLdFPR8 var_3A8
  loc_71989C: FnCDblR8
  loc_71989E: PopTmpLdAdFPR8
  loc_7198A2: FLdFPR8 var_3A0
  loc_7198A5: FnCDblR8
  loc_7198A7: PopTmpLdAdFPR8
  loc_7198AB: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_7198B0: FLdFPR8 var_33C
  loc_7198B3: CStrR8
  loc_7198B5: FStStrNoPop var_2FC
  loc_7198B8: ConcatStr
  loc_7198B9: FStStrNoPop var_300
  loc_7198BC: LitStr ",'"
  loc_7198BF: ConcatStr
  loc_7198C0: FStStrNoPop var_304
  loc_7198C3: LitI4 6
  loc_7198C8: FLdRfVar var_A0
  loc_7198CB: Ary1LdI4
  loc_7198CC: ConcatStr
  loc_7198CD: FStStrNoPop var_308
  loc_7198D0: LitStr "',"
  loc_7198D3: ConcatStr
  loc_7198D4: FStStrNoPop var_310
  loc_7198D7: FLdRfVar var_364
  loc_7198DA: FLdFPR8 var_3B8
  loc_7198DD: FnCDblR8
  loc_7198DF: PopTmpLdAdFPR8
  loc_7198E3: FLdFPR8 var_3B0
  loc_7198E6: FnCDblR8
  loc_7198E8: PopTmpLdAdFPR8
  loc_7198EC: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_7198F1: FLdFPR8 var_364
  loc_7198F4: CStrR8
  loc_7198F6: FStStrNoPop var_314
  loc_7198F9: ConcatStr
  loc_7198FA: FStStrNoPop var_318
  loc_7198FD: LitStr ",'"
  loc_719900: ConcatStr
  loc_719901: FStStrNoPop var_31C
  loc_719904: LitI4 8
  loc_719909: FLdRfVar var_A0
  loc_71990C: Ary1LdI4
  loc_71990D: ConcatStr
  loc_71990E: FStStrNoPop var_320
  loc_719911: LitStr "',"
  loc_719914: ConcatStr
  loc_719915: FStStrNoPop var_340
  loc_719918: FLdRfVar var_380
  loc_71991B: FLdFPR8 var_3C8
  loc_71991E: FnCDblR8
  loc_719920: PopTmpLdAdFPR8
  loc_719924: FLdFPR8 var_3C0
  loc_719927: FnCDblR8
  loc_719929: PopTmpLdAdFPR8
  loc_71992D: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719932: FLdFPR8 var_380
  loc_719935: CStrR8
  loc_719937: FStStrNoPop var_344
  loc_71993A: ConcatStr
  loc_71993B: FStStrNoPop var_348
  loc_71993E: LitStr ",'"
  loc_719941: ConcatStr
  loc_719942: FStStrNoPop var_384
  loc_719945: LitI4 &HA
  loc_71994A: FLdRfVar var_A0
  loc_71994D: Ary1LdI4
  loc_71994E: ConcatStr
  loc_71994F: FStStrNoPop var_388
  loc_719952: LitStr "','"
  loc_719955: ConcatStr
  loc_719956: FStStrNoPop var_38C
  loc_719959: LitI4 &HB
  loc_71995E: FLdRfVar var_A0
  loc_719961: Ary1LdI4
  loc_719962: ConcatStr
  loc_719963: FStStrNoPop var_390
  loc_719966: LitStr "','"
  loc_719969: ConcatStr
  loc_71996A: FStStrNoPop var_394
  loc_71996D: ILdRf var_B8
  loc_719970: ConcatStr
  loc_719971: FStStrNoPop var_398
  loc_719974: LitStr "')"
  loc_719977: ConcatStr
  loc_719978: FStStr var_B0
  loc_71997B: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = "": var_348 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_7199AC: ILdRf var_AC
  loc_7199AF: ILdRf var_B0
  loc_7199B2: ConcatStr
  loc_7199B3: FStStr var_AC
  loc_7199B6: FLdRfVar var_AC
  loc_7199B9: CDargRef
  loc_7199BD: LitVarI4
  loc_7199C5: PopAdLdVar
  loc_7199C6: FLdRfVar var_104
  loc_7199C9: LdPrVar
  loc_7199CB: LateMemCall
  loc_7199D1: ILdRf var_B4
  loc_7199D4: LitI4 2
  loc_7199D9: AddI4
  loc_7199DA: LitI4 &HF
  loc_7199DF: AddI4
  loc_7199E0: FStR4 var_B4
  loc_7199E3: Branch loc_719655
  loc_7199E6: LitI4 &H1E
  loc_7199EB: FLdRfVar var_118
  loc_7199EE: ImpAdCallFPR4  = Chr()
  loc_7199F3: FLdRfVar var_118
  loc_7199F6: LitI4 &HD
  loc_7199FB: FLdRfVar var_128
  loc_7199FE: ImpAdCallFPR4  = Chr()
  loc_719A03: FLdRfVar var_128
  loc_719A06: ConcatVar var_138
  loc_719A0A: LitI4 6
  loc_719A0F: FLdRfVar var_148
  loc_719A12: ImpAdCallFPR4  = Chr()
  loc_719A17: FLdRfVar var_148
  loc_719A1A: ConcatVar var_158
  loc_719A1E: LitI4 &H19
  loc_719A23: FLdRfVar var_168
  loc_719A26: ImpAdCallFPR4  = Chr()
  loc_719A2B: FLdRfVar var_168
  loc_719A2E: ConcatVar var_178
  loc_719A32: LitI4 &HC
  loc_719A37: FLdRfVar var_188
  loc_719A3A: ImpAdCallFPR4  = Chr()
  loc_719A3F: FLdRfVar var_188
  loc_719A42: ConcatVar var_198
  loc_719A46: LitI4 1
  loc_719A4B: FLdRfVar var_1A8
  loc_719A4E: ImpAdCallFPR4  = Chr()
  loc_719A53: FLdRfVar var_1A8
  loc_719A56: ConcatVar var_1B8
  loc_719A5A: LitI4 &HD
  loc_719A5F: FLdRfVar var_1C8
  loc_719A62: ImpAdCallFPR4  = Chr()
  loc_719A67: FLdRfVar var_1C8
  loc_719A6A: ConcatVar var_1D8
  loc_719A6E: LitI4 &HF
  loc_719A73: FLdRfVar var_1E8
  loc_719A76: ImpAdCallFPR4  = Chr()
  loc_719A7B: FLdRfVar var_1E8
  loc_719A7E: ConcatVar var_1F8
  loc_719A82: LitI4 1
  loc_719A87: FLdRfVar var_208
  loc_719A8A: ImpAdCallFPR4  = Chr()
  loc_719A8F: FLdRfVar var_208
  loc_719A92: ConcatVar var_218
  loc_719A96: LitI4 &HF
  loc_719A9B: FLdRfVar var_228
  loc_719A9E: ImpAdCallFPR4  = Chr()
  loc_719AA3: FLdRfVar var_228
  loc_719AA6: ConcatVar var_238
  loc_719AAA: LitI4 1
  loc_719AAF: FLdRfVar var_248
  loc_719AB2: ImpAdCallFPR4  = Chr()
  loc_719AB7: FLdRfVar var_248
  loc_719ABA: ConcatVar var_258
  loc_719ABE: LitI4 &HF
  loc_719AC3: FLdRfVar var_268
  loc_719AC6: ImpAdCallFPR4  = Chr()
  loc_719ACB: FLdRfVar var_268
  loc_719ACE: ConcatVar var_278
  loc_719AD2: LitI4 1
  loc_719AD7: FLdRfVar var_288
  loc_719ADA: ImpAdCallFPR4  = Chr()
  loc_719ADF: FLdRfVar var_288
  loc_719AE2: ConcatVar var_298
  loc_719AE6: LitI4 &HF
  loc_719AEB: FLdRfVar var_2A8
  loc_719AEE: ImpAdCallFPR4  = Chr()
  loc_719AF3: FLdRfVar var_2A8
  loc_719AF6: ConcatVar var_2B8
  loc_719AFA: LitI4 1
  loc_719AFF: FLdRfVar var_2C8
  loc_719B02: ImpAdCallFPR4  = Chr()
  loc_719B07: FLdRfVar var_2C8
  loc_719B0A: ConcatVar var_2D8
  loc_719B0E: LitI4 &H19
  loc_719B13: FLdRfVar var_3D8
  loc_719B16: ImpAdCallFPR4  = Chr()
  loc_719B1B: FLdRfVar var_3D8
  loc_719B1E: ConcatVar var_3E8
  loc_719B22: CStrVarTmp
  loc_719B23: FStStr var_A4
  loc_719B26: FFreeVar var_3E8 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = ""
  loc_719B67: ILdRf var_B4
  loc_719B6A: ILdI4 sValor
  loc_719B6D: FnLenStr
  loc_719B6E: LeI4
  loc_719B6F: CVarBoolI2 var_2E8
  loc_719B73: LitVarI2 var_118, 2
  loc_719B78: ILdRf var_B4
  loc_719B7B: ILdRf sValor
  loc_719B7E: CVarRef
  loc_719B83: FLdRfVar var_128
  loc_719B86: ImpAdCallFPR4  = Mid(, , )
  loc_719B8B: FLdRfVar var_128
  loc_719B8E: LitVarStr var_F4, "D3"
  loc_719B93: HardType
  loc_719B94: EqVar var_138
  loc_719B98: AndVar var_148
  loc_719B9C: CBoolVarNull
  loc_719B9E: FFreeVar var_118 = "": var_128 = ""
  loc_719BA7: BranchF loc_719FDF
  loc_719BAA: LitVarI2 var_118, 2
  loc_719BAF: ILdRf var_B4
  loc_719BB2: ILdRf sValor
  loc_719BB5: CVarRef
  loc_719BBA: FLdRfVar var_128
  loc_719BBD: ImpAdCallFPR4  = Mid(, , )
  loc_719BC2: FLdRfVar var_128
  loc_719BC5: FLdRfVar var_138
  loc_719BC8: ImpAdCallFPR4  = Trim()
  loc_719BCD: FLdRfVar var_2EE
  loc_719BD0: FLdRfVar var_138
  loc_719BD3: CStrVarTmp
  loc_719BD4: PopTmpLdAdStr
  loc_719BD8: from_stack_2v = Proc_85_29_5F1A1C(from_stack_1v)
  loc_719BDD: FFree1Str var_C4
  loc_719BE0: FFreeVar var_118 = "": var_128 = ""
  loc_719BE9: LitVarI2 var_118, 2
  loc_719BEE: ILdRf var_B4
  loc_719BF1: LitI4 2
  loc_719BF6: AddI4
  loc_719BF7: ILdRf sValor
  loc_719BFA: CVarRef
  loc_719BFF: FLdRfVar var_128
  loc_719C02: ImpAdCallFPR4  = Mid(, , )
  loc_719C07: FLdRfVar var_128
  loc_719C0A: CStrVarTmp
  loc_719C0B: FStStr var_B8
  loc_719C0E: FFreeVar var_118 = ""
  loc_719C15: ILdRf var_B4
  loc_719C18: LitI4 4
  loc_719C1D: AddI4
  loc_719C1E: FStR4 var_B4
  loc_719C21: LitVar_Missing var_118
  loc_719C24: ILdRf var_B4
  loc_719C27: ILdRf sValor
  loc_719C2A: CVarRef
  loc_719C2F: FLdRfVar var_128
  loc_719C32: ImpAdCallFPR4  = Mid(, , )
  loc_719C37: ILdRf var_B4
  loc_719C3A: LitI2_Byte &H10
  loc_719C3C: PopTmpLdAd2 var_2EE
  loc_719C3F: FLdRfVar var_A4
  loc_719C42: FLdRfVar var_A0
  loc_719C45: PopTmpLdAdStr var_2EC
  loc_719C48: FLdRfVar var_128
  loc_719C4B: CStrVarTmp
  loc_719C4C: PopTmpLdAdStr
  loc_719C50: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_719C55: CI4UI1
  loc_719C56: AddI4
  loc_719C57: FStR4 var_B4
  loc_719C5A: FFree1Str var_C4
  loc_719C5D: FFreeVar var_118 = ""
  loc_719C64: LitStr "INSERT INTO Datos_D3(tpaj, numd, cart, desp, vrvt, sgvr, ipro, mbru, sgbr, mcom, sgco, mcfv, sgfv, tdrr, sgtd, blco, creg)"
  loc_719C67: FStStrCopy var_AC
  loc_719C6A: LitStr " VALUES ('"
  loc_719C6D: LitI4 1
  loc_719C72: FLdRfVar var_A0
  loc_719C75: Ary1LdI4
  loc_719C76: ConcatStr
  loc_719C77: FStStrNoPop var_C4
  loc_719C7A: LitStr "','"
  loc_719C7D: ConcatStr
  loc_719C7E: FStStrNoPop var_2F4
  loc_719C81: LitI4 2
  loc_719C86: FLdRfVar var_A0
  loc_719C89: Ary1LdI4
  loc_719C8A: ConcatStr
  loc_719C8B: FStStrNoPop var_2F8
  loc_719C8E: LitStr "','"
  loc_719C91: ConcatStr
  loc_719C92: FStStrNoPop var_2FC
  loc_719C95: LitI4 3
  loc_719C9A: FLdRfVar var_A0
  loc_719C9D: Ary1LdI4
  loc_719C9E: ConcatStr
  loc_719C9F: FStStrNoPop var_300
  loc_719CA2: LitStr "','"
  loc_719CA5: ConcatStr
  loc_719CA6: FStStr var_B0
  loc_719CA9: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_719CB6: LitI4 6
  loc_719CBB: FLdRfVar var_A0
  loc_719CBE: Ary1LdI4
  loc_719CBF: ImpAdCallFPR4 push Val()
  loc_719CC4: FStFPR8 var_3A0
  loc_719CC7: LitStr vbNullString
  loc_719CCA: FStStrCopy var_2F4
  loc_719CCD: FLdRfVar var_2F4
  loc_719CD0: LitI2_Byte 9
  loc_719CD2: PopTmpLdAd2 var_2EE
  loc_719CD5: LitI4 5
  loc_719CDA: FLdRfVar var_A0
  loc_719CDD: Ary1LdRf
  loc_719CDE: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719CE3: FStFPR8 var_3A8
  loc_719CE6: LitI4 9
  loc_719CEB: FLdRfVar var_A0
  loc_719CEE: Ary1LdI4
  loc_719CEF: ImpAdCallFPR4 push Val()
  loc_719CF4: FStFPR8 var_3B0
  loc_719CF7: LitStr vbNullString
  loc_719CFA: FStStrCopy var_31C
  loc_719CFD: FLdRfVar var_31C
  loc_719D00: LitI2_Byte &HD
  loc_719D02: PopTmpLdAd2 var_366
  loc_719D05: LitI4 8
  loc_719D0A: FLdRfVar var_A0
  loc_719D0D: Ary1LdRf
  loc_719D0E: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719D13: FStFPR8 var_3B8
  loc_719D16: LitI4 &HB
  loc_719D1B: FLdRfVar var_A0
  loc_719D1E: Ary1LdI4
  loc_719D1F: ImpAdCallFPR4 push Val()
  loc_719D24: FStFPR8 var_3C0
  loc_719D27: LitStr vbNullString
  loc_719D2A: FStStrCopy var_384
  loc_719D2D: FLdRfVar var_384
  loc_719D30: LitI2_Byte &HD
  loc_719D32: PopTmpLdAd2 var_3EA
  loc_719D35: LitI4 &HA
  loc_719D3A: FLdRfVar var_A0
  loc_719D3D: Ary1LdRf
  loc_719D3E: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719D43: FStFPR8 var_3C8
  loc_719D46: ILdRf var_B0
  loc_719D49: LitI4 4
  loc_719D4E: FLdRfVar var_A0
  loc_719D51: Ary1LdI4
  loc_719D52: ConcatStr
  loc_719D53: FStStrNoPop var_C4
  loc_719D56: LitStr "',"
  loc_719D59: ConcatStr
  loc_719D5A: FStStrNoPop var_2F8
  loc_719D5D: FLdRfVar var_33C
  loc_719D60: FLdFPR8 var_3A8
  loc_719D63: FnCDblR8
  loc_719D65: PopTmpLdAdFPR8
  loc_719D69: FLdFPR8 var_3A0
  loc_719D6C: FnCDblR8
  loc_719D6E: PopTmpLdAdFPR8
  loc_719D72: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719D77: FLdFPR8 var_33C
  loc_719D7A: CStrR8
  loc_719D7C: FStStrNoPop var_2FC
  loc_719D7F: ConcatStr
  loc_719D80: FStStrNoPop var_300
  loc_719D83: LitStr ",'"
  loc_719D86: ConcatStr
  loc_719D87: FStStrNoPop var_304
  loc_719D8A: LitI4 6
  loc_719D8F: FLdRfVar var_A0
  loc_719D92: Ary1LdI4
  loc_719D93: ConcatStr
  loc_719D94: FStStrNoPop var_308
  loc_719D97: LitStr "',"
  loc_719D9A: ConcatStr
  loc_719D9B: FStStrNoPop var_310
  loc_719D9E: LitStr vbNullString
  loc_719DA1: FStStrCopy var_30C
  loc_719DA4: FLdRfVar var_30C
  loc_719DA7: LitI2_Byte 7
  loc_719DA9: PopTmpLdAd2 var_35A
  loc_719DAC: LitI4 7
  loc_719DB1: FLdRfVar var_A0
  loc_719DB4: Ary1LdRf
  loc_719DB5: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719DBA: CStrR8
  loc_719DBC: FStStrNoPop var_314
  loc_719DBF: ConcatStr
  loc_719DC0: FStStrNoPop var_318
  loc_719DC3: LitStr ","
  loc_719DC6: ConcatStr
  loc_719DC7: FStStrNoPop var_320
  loc_719DCA: FLdRfVar var_364
  loc_719DCD: FLdFPR8 var_3B8
  loc_719DD0: FnCDblR8
  loc_719DD2: PopTmpLdAdFPR8
  loc_719DD6: FLdFPR8 var_3B0
  loc_719DD9: FnCDblR8
  loc_719DDB: PopTmpLdAdFPR8
  loc_719DDF: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719DE4: FLdFPR8 var_364
  loc_719DE7: CStrR8
  loc_719DE9: FStStrNoPop var_324
  loc_719DEC: ConcatStr
  loc_719DED: FStStrNoPop var_340
  loc_719DF0: LitStr ",'"
  loc_719DF3: ConcatStr
  loc_719DF4: FStStrNoPop var_344
  loc_719DF7: LitI4 9
  loc_719DFC: FLdRfVar var_A0
  loc_719DFF: Ary1LdI4
  loc_719E00: ConcatStr
  loc_719E01: FStStrNoPop var_348
  loc_719E04: LitStr "',"
  loc_719E07: ConcatStr
  loc_719E08: FStStrNoPop var_388
  loc_719E0B: FLdRfVar var_380
  loc_719E0E: FLdFPR8 var_3C8
  loc_719E11: FnCDblR8
  loc_719E13: PopTmpLdAdFPR8
  loc_719E17: FLdFPR8 var_3C0
  loc_719E1A: FnCDblR8
  loc_719E1C: PopTmpLdAdFPR8
  loc_719E20: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719E25: FLdFPR8 var_380
  loc_719E28: CStrR8
  loc_719E2A: FStStrNoPop var_38C
  loc_719E2D: ConcatStr
  loc_719E2E: FStStrNoPop var_390
  loc_719E31: LitStr ",'"
  loc_719E34: ConcatStr
  loc_719E35: FStStrNoPop var_394
  loc_719E38: LitI4 &HB
  loc_719E3D: FLdRfVar var_A0
  loc_719E40: Ary1LdI4
  loc_719E41: ConcatStr
  loc_719E42: FStStrNoPop var_398
  loc_719E45: LitStr "',"
  loc_719E48: ConcatStr
  loc_719E49: FStStr var_B0
  loc_719E4C: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = "": var_348 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_719E7D: LitI4 &HD
  loc_719E82: FLdRfVar var_A0
  loc_719E85: Ary1LdI4
  loc_719E86: ImpAdCallFPR4 push Val()
  loc_719E8B: FStFPR8 var_370
  loc_719E8E: LitStr vbNullString
  loc_719E91: FStStrCopy var_C4
  loc_719E94: FLdRfVar var_C4
  loc_719E97: LitI2_Byte &HD
  loc_719E99: PopTmpLdAd2 var_2EE
  loc_719E9C: LitI4 &HC
  loc_719EA1: FLdRfVar var_A0
  loc_719EA4: Ary1LdRf
  loc_719EA5: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719EAA: FStFPR8 var_378
  loc_719EAD: LitI4 &HF
  loc_719EB2: FLdRfVar var_A0
  loc_719EB5: Ary1LdI4
  loc_719EB6: ImpAdCallFPR4 push Val()
  loc_719EBB: FStFPR8 var_380
  loc_719EBE: LitStr vbNullString
  loc_719EC1: FStStrCopy var_304
  loc_719EC4: FLdRfVar var_304
  loc_719EC7: LitI2_Byte &HD
  loc_719EC9: PopTmpLdAd2 var_35A
  loc_719ECC: LitI4 &HE
  loc_719ED1: FLdRfVar var_A0
  loc_719ED4: Ary1LdRf
  loc_719ED5: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_719EDA: FStFPR8 var_3A0
  loc_719EDD: ILdRf var_B0
  loc_719EE0: FLdRfVar var_33C
  loc_719EE3: FLdFPR8 var_378
  loc_719EE6: FnCDblR8
  loc_719EE8: PopTmpLdAdFPR8
  loc_719EEC: FLdFPR8 var_370
  loc_719EEF: FnCDblR8
  loc_719EF1: PopTmpLdAdFPR8
  loc_719EF5: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719EFA: FLdFPR8 var_33C
  loc_719EFD: CStrR8
  loc_719EFF: FStStrNoPop var_2F4
  loc_719F02: ConcatStr
  loc_719F03: FStStrNoPop var_2F8
  loc_719F06: LitStr ",'"
  loc_719F09: ConcatStr
  loc_719F0A: FStStrNoPop var_2FC
  loc_719F0D: LitI4 &HD
  loc_719F12: FLdRfVar var_A0
  loc_719F15: Ary1LdI4
  loc_719F16: ConcatStr
  loc_719F17: FStStrNoPop var_300
  loc_719F1A: LitStr "',"
  loc_719F1D: ConcatStr
  loc_719F1E: FStStrNoPop var_308
  loc_719F21: FLdRfVar var_364
  loc_719F24: FLdFPR8 var_3A0
  loc_719F27: FnCDblR8
  loc_719F29: PopTmpLdAdFPR8
  loc_719F2D: FLdFPR8 var_380
  loc_719F30: FnCDblR8
  loc_719F32: PopTmpLdAdFPR8
  loc_719F36: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_719F3B: FLdFPR8 var_364
  loc_719F3E: CStrR8
  loc_719F40: FStStrNoPop var_30C
  loc_719F43: ConcatStr
  loc_719F44: FStStrNoPop var_310
  loc_719F47: LitStr ",'"
  loc_719F4A: ConcatStr
  loc_719F4B: FStStrNoPop var_314
  loc_719F4E: LitI4 &HF
  loc_719F53: FLdRfVar var_A0
  loc_719F56: Ary1LdI4
  loc_719F57: ConcatStr
  loc_719F58: FStStrNoPop var_318
  loc_719F5B: LitStr "','"
  loc_719F5E: ConcatStr
  loc_719F5F: FStStrNoPop var_31C
  loc_719F62: LitI4 &H10
  loc_719F67: FLdRfVar var_A0
  loc_719F6A: Ary1LdI4
  loc_719F6B: ConcatStr
  loc_719F6C: FStStrNoPop var_320
  loc_719F6F: LitStr "','"
  loc_719F72: ConcatStr
  loc_719F73: FStStrNoPop var_324
  loc_719F76: ILdRf var_B8
  loc_719F79: ConcatStr
  loc_719F7A: FStStrNoPop var_340
  loc_719F7D: LitStr "')"
  loc_719F80: ConcatStr
  loc_719F81: FStStr var_B0
  loc_719F84: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = ""
  loc_719FA5: ILdRf var_AC
  loc_719FA8: ILdRf var_B0
  loc_719FAB: ConcatStr
  loc_719FAC: FStStr var_AC
  loc_719FAF: FLdRfVar var_AC
  loc_719FB2: CDargRef
  loc_719FB6: LitVarI4
  loc_719FBE: PopAdLdVar
  loc_719FBF: FLdRfVar var_104
  loc_719FC2: LdPrVar
  loc_719FC4: LateMemCall
  loc_719FCA: ILdRf var_B4
  loc_719FCD: LitI4 2
  loc_719FD2: AddI4
  loc_719FD3: LitI4 &HF
  loc_719FD8: AddI4
  loc_719FD9: FStR4 var_B4
  loc_719FDC: Branch loc_719B67
  loc_719FDF: LitI4 2
  loc_719FE4: FLdRfVar var_118
  loc_719FE7: ImpAdCallFPR4  = Chr()
  loc_719FEC: FLdRfVar var_118
  loc_719FEF: LitI4 &HD
  loc_719FF4: FLdRfVar var_128
  loc_719FF7: ImpAdCallFPR4  = Chr()
  loc_719FFC: FLdRfVar var_128
  loc_719FFF: ConcatVar var_138
  loc_71A003: LitI4 8
  loc_71A008: FLdRfVar var_148
  loc_71A00B: ImpAdCallFPR4  = Chr()
  loc_71A010: FLdRfVar var_148
  loc_71A013: ConcatVar var_158
  loc_71A017: LitI4 6
  loc_71A01C: FLdRfVar var_168
  loc_71A01F: ImpAdCallFPR4  = Chr()
  loc_71A024: FLdRfVar var_168
  loc_71A027: ConcatVar var_178
  loc_71A02B: LitI4 &H19
  loc_71A030: FLdRfVar var_188
  loc_71A033: ImpAdCallFPR4  = Chr()
  loc_71A038: FLdRfVar var_188
  loc_71A03B: ConcatVar var_198
  loc_71A03F: LitI4 &HC
  loc_71A044: FLdRfVar var_1A8
  loc_71A047: ImpAdCallFPR4  = Chr()
  loc_71A04C: FLdRfVar var_1A8
  loc_71A04F: ConcatVar var_1B8
  loc_71A053: LitI4 1
  loc_71A058: FLdRfVar var_1C8
  loc_71A05B: ImpAdCallFPR4  = Chr()
  loc_71A060: FLdRfVar var_1C8
  loc_71A063: ConcatVar var_1D8
  loc_71A067: LitI4 &HD
  loc_71A06C: FLdRfVar var_1E8
  loc_71A06F: ImpAdCallFPR4  = Chr()
  loc_71A074: FLdRfVar var_1E8
  loc_71A077: ConcatVar var_1F8
  loc_71A07B: LitI4 &HF
  loc_71A080: FLdRfVar var_208
  loc_71A083: ImpAdCallFPR4  = Chr()
  loc_71A088: FLdRfVar var_208
  loc_71A08B: ConcatVar var_218
  loc_71A08F: LitI4 1
  loc_71A094: FLdRfVar var_228
  loc_71A097: ImpAdCallFPR4  = Chr()
  loc_71A09C: FLdRfVar var_228
  loc_71A09F: ConcatVar var_238
  loc_71A0A3: LitI4 &HF
  loc_71A0A8: FLdRfVar var_248
  loc_71A0AB: ImpAdCallFPR4  = Chr()
  loc_71A0B0: FLdRfVar var_248
  loc_71A0B3: ConcatVar var_258
  loc_71A0B7: LitI4 1
  loc_71A0BC: FLdRfVar var_268
  loc_71A0BF: ImpAdCallFPR4  = Chr()
  loc_71A0C4: FLdRfVar var_268
  loc_71A0C7: ConcatVar var_278
  loc_71A0CB: LitI4 &HF
  loc_71A0D0: FLdRfVar var_288
  loc_71A0D3: ImpAdCallFPR4  = Chr()
  loc_71A0D8: FLdRfVar var_288
  loc_71A0DB: ConcatVar var_298
  loc_71A0DF: LitI4 1
  loc_71A0E4: FLdRfVar var_2A8
  loc_71A0E7: ImpAdCallFPR4  = Chr()
  loc_71A0EC: FLdRfVar var_2A8
  loc_71A0EF: ConcatVar var_2B8
  loc_71A0F3: LitI4 &HF
  loc_71A0F8: FLdRfVar var_2C8
  loc_71A0FB: ImpAdCallFPR4  = Chr()
  loc_71A100: FLdRfVar var_2C8
  loc_71A103: ConcatVar var_2D8
  loc_71A107: LitI4 1
  loc_71A10C: FLdRfVar var_3D8
  loc_71A10F: ImpAdCallFPR4  = Chr()
  loc_71A114: FLdRfVar var_3D8
  loc_71A117: ConcatVar var_3E8
  loc_71A11B: LitI4 &H2D
  loc_71A120: FLdRfVar var_3FC
  loc_71A123: ImpAdCallFPR4  = Chr()
  loc_71A128: FLdRfVar var_3FC
  loc_71A12B: ConcatVar var_40C
  loc_71A12F: CStrVarTmp
  loc_71A130: FStStr var_A4
  loc_71A133: FFreeVar var_3E8 = "": var_3FC = "": var_40C = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = ""
  loc_71A178: ILdRf var_B4
  loc_71A17B: ILdI4 sValor
  loc_71A17E: FnLenStr
  loc_71A17F: LeI4
  loc_71A180: CVarBoolI2 var_2E8
  loc_71A184: LitVarI2 var_118, 2
  loc_71A189: ILdRf var_B4
  loc_71A18C: ILdRf sValor
  loc_71A18F: CVarRef
  loc_71A194: FLdRfVar var_128
  loc_71A197: ImpAdCallFPR4  = Mid(, , )
  loc_71A19C: FLdRfVar var_128
  loc_71A19F: LitVarStr var_F4, "D4"
  loc_71A1A4: HardType
  loc_71A1A5: EqVar var_138
  loc_71A1A9: AndVar var_148
  loc_71A1AD: CBoolVarNull
  loc_71A1AF: FFreeVar var_118 = "": var_128 = ""
  loc_71A1B8: BranchF loc_71A608
  loc_71A1BB: LitVarI2 var_118, 2
  loc_71A1C0: ILdRf var_B4
  loc_71A1C3: ILdRf sValor
  loc_71A1C6: CVarRef
  loc_71A1CB: FLdRfVar var_128
  loc_71A1CE: ImpAdCallFPR4  = Mid(, , )
  loc_71A1D3: FLdRfVar var_128
  loc_71A1D6: FLdRfVar var_138
  loc_71A1D9: ImpAdCallFPR4  = Trim()
  loc_71A1DE: FLdRfVar var_2EE
  loc_71A1E1: FLdRfVar var_138
  loc_71A1E4: CStrVarTmp
  loc_71A1E5: PopTmpLdAdStr
  loc_71A1E9: from_stack_2v = Proc_85_29_5F1A1C(from_stack_1v)
  loc_71A1EE: FFree1Str var_C4
  loc_71A1F1: FFreeVar var_118 = "": var_128 = ""
  loc_71A1FA: LitVarI2 var_118, 2
  loc_71A1FF: ILdRf var_B4
  loc_71A202: LitI4 2
  loc_71A207: AddI4
  loc_71A208: ILdRf sValor
  loc_71A20B: CVarRef
  loc_71A210: FLdRfVar var_128
  loc_71A213: ImpAdCallFPR4  = Mid(, , )
  loc_71A218: FLdRfVar var_128
  loc_71A21B: CStrVarTmp
  loc_71A21C: FStStr var_B8
  loc_71A21F: FFreeVar var_118 = ""
  loc_71A226: ILdRf var_B4
  loc_71A229: LitI4 4
  loc_71A22E: AddI4
  loc_71A22F: FStR4 var_B4
  loc_71A232: LitVar_Missing var_118
  loc_71A235: ILdRf var_B4
  loc_71A238: ILdRf sValor
  loc_71A23B: CVarRef
  loc_71A240: FLdRfVar var_128
  loc_71A243: ImpAdCallFPR4  = Mid(, , )
  loc_71A248: ILdRf var_B4
  loc_71A24B: LitI2_Byte &H11
  loc_71A24D: PopTmpLdAd2 var_2EE
  loc_71A250: FLdRfVar var_A4
  loc_71A253: FLdRfVar var_A0
  loc_71A256: PopTmpLdAdStr var_2EC
  loc_71A259: FLdRfVar var_128
  loc_71A25C: CStrVarTmp
  loc_71A25D: PopTmpLdAdStr
  loc_71A261: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71A266: CI4UI1
  loc_71A267: AddI4
  loc_71A268: FStR4 var_B4
  loc_71A26B: FFree1Str var_C4
  loc_71A26E: FFreeVar var_118 = ""
  loc_71A275: LitStr "INSERT INTO Datos_D4(ctdi, numd, fpr8, cart, desp, vrvt, sgvo, ipro, mbru, sgbr, mcom, sgco, mcfv, sgfv, tdrr, sgtd, blco, creg)"
  loc_71A278: FStStrCopy var_AC
  loc_71A27B: LitStr " VALUES ('"
  loc_71A27E: LitI4 1
  loc_71A283: FLdRfVar var_A0
  loc_71A286: Ary1LdI4
  loc_71A287: ConcatStr
  loc_71A288: FStStrNoPop var_C4
  loc_71A28B: LitStr "','"
  loc_71A28E: ConcatStr
  loc_71A28F: FStStrNoPop var_2F4
  loc_71A292: LitI4 2
  loc_71A297: FLdRfVar var_A0
  loc_71A29A: Ary1LdI4
  loc_71A29B: ConcatStr
  loc_71A29C: FStStrNoPop var_2F8
  loc_71A29F: LitStr "','"
  loc_71A2A2: ConcatStr
  loc_71A2A3: FStStrNoPop var_2FC
  loc_71A2A6: LitI4 3
  loc_71A2AB: FLdRfVar var_A0
  loc_71A2AE: Ary1LdI4
  loc_71A2AF: ConcatStr
  loc_71A2B0: FStStrNoPop var_300
  loc_71A2B3: LitStr "','"
  loc_71A2B6: ConcatStr
  loc_71A2B7: FStStr var_B0
  loc_71A2BA: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_71A2C7: LitI4 7
  loc_71A2CC: FLdRfVar var_A0
  loc_71A2CF: Ary1LdI4
  loc_71A2D0: ImpAdCallFPR4 push Val()
  loc_71A2D5: FStFPR8 var_3A0
  loc_71A2D8: LitStr vbNullString
  loc_71A2DB: FStStrCopy var_2FC
  loc_71A2DE: FLdRfVar var_2FC
  loc_71A2E1: LitI2_Byte 9
  loc_71A2E3: PopTmpLdAd2 var_2EE
  loc_71A2E6: LitI4 6
  loc_71A2EB: FLdRfVar var_A0
  loc_71A2EE: Ary1LdRf
  loc_71A2EF: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A2F4: FStFPR8 var_3A8
  loc_71A2F7: LitI4 &HA
  loc_71A2FC: FLdRfVar var_A0
  loc_71A2FF: Ary1LdI4
  loc_71A300: ImpAdCallFPR4 push Val()
  loc_71A305: FStFPR8 var_3B0
  loc_71A308: LitStr vbNullString
  loc_71A30B: FStStrCopy var_324
  loc_71A30E: FLdRfVar var_324
  loc_71A311: LitI2_Byte &HD
  loc_71A313: PopTmpLdAd2 var_366
  loc_71A316: LitI4 9
  loc_71A31B: FLdRfVar var_A0
  loc_71A31E: Ary1LdRf
  loc_71A31F: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A324: FStFPR8 var_3B8
  loc_71A327: LitI4 &HC
  loc_71A32C: FLdRfVar var_A0
  loc_71A32F: Ary1LdI4
  loc_71A330: ImpAdCallFPR4 push Val()
  loc_71A335: FStFPR8 var_3C0
  loc_71A338: LitStr vbNullString
  loc_71A33B: FStStrCopy var_38C
  loc_71A33E: FLdRfVar var_38C
  loc_71A341: LitI2_Byte &HD
  loc_71A343: PopTmpLdAd2 var_3EA
  loc_71A346: LitI4 &HB
  loc_71A34B: FLdRfVar var_A0
  loc_71A34E: Ary1LdRf
  loc_71A34F: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A354: FStFPR8 var_3C8
  loc_71A357: ILdRf var_B0
  loc_71A35A: LitI4 4
  loc_71A35F: FLdRfVar var_A0
  loc_71A362: Ary1LdI4
  loc_71A363: ConcatStr
  loc_71A364: FStStrNoPop var_C4
  loc_71A367: LitStr "','"
  loc_71A36A: ConcatStr
  loc_71A36B: FStStrNoPop var_2F4
  loc_71A36E: LitI4 5
  loc_71A373: FLdRfVar var_A0
  loc_71A376: Ary1LdI4
  loc_71A377: ConcatStr
  loc_71A378: FStStrNoPop var_2F8
  loc_71A37B: LitStr "',"
  loc_71A37E: ConcatStr
  loc_71A37F: FStStrNoPop var_300
  loc_71A382: FLdRfVar var_33C
  loc_71A385: FLdFPR8 var_3A8
  loc_71A388: FnCDblR8
  loc_71A38A: PopTmpLdAdFPR8
  loc_71A38E: FLdFPR8 var_3A0
  loc_71A391: FnCDblR8
  loc_71A393: PopTmpLdAdFPR8
  loc_71A397: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A39C: FLdFPR8 var_33C
  loc_71A39F: CStrR8
  loc_71A3A1: FStStrNoPop var_304
  loc_71A3A4: ConcatStr
  loc_71A3A5: FStStrNoPop var_308
  loc_71A3A8: LitStr ",'"
  loc_71A3AB: ConcatStr
  loc_71A3AC: FStStrNoPop var_30C
  loc_71A3AF: LitI4 7
  loc_71A3B4: FLdRfVar var_A0
  loc_71A3B7: Ary1LdI4
  loc_71A3B8: ConcatStr
  loc_71A3B9: FStStrNoPop var_310
  loc_71A3BC: LitStr "',"
  loc_71A3BF: ConcatStr
  loc_71A3C0: FStStrNoPop var_318
  loc_71A3C3: LitStr vbNullString
  loc_71A3C6: FStStrCopy var_314
  loc_71A3C9: FLdRfVar var_314
  loc_71A3CC: LitI2_Byte 7
  loc_71A3CE: PopTmpLdAd2 var_35A
  loc_71A3D1: LitI4 8
  loc_71A3D6: FLdRfVar var_A0
  loc_71A3D9: Ary1LdRf
  loc_71A3DA: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A3DF: CStrR8
  loc_71A3E1: FStStrNoPop var_31C
  loc_71A3E4: ConcatStr
  loc_71A3E5: FStStrNoPop var_320
  loc_71A3E8: LitStr ","
  loc_71A3EB: ConcatStr
  loc_71A3EC: FStStrNoPop var_340
  loc_71A3EF: FLdRfVar var_364
  loc_71A3F2: FLdFPR8 var_3B8
  loc_71A3F5: FnCDblR8
  loc_71A3F7: PopTmpLdAdFPR8
  loc_71A3FB: FLdFPR8 var_3B0
  loc_71A3FE: FnCDblR8
  loc_71A400: PopTmpLdAdFPR8
  loc_71A404: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A409: FLdFPR8 var_364
  loc_71A40C: CStrR8
  loc_71A40E: FStStrNoPop var_344
  loc_71A411: ConcatStr
  loc_71A412: FStStrNoPop var_348
  loc_71A415: LitStr ",'"
  loc_71A418: ConcatStr
  loc_71A419: FStStrNoPop var_384
  loc_71A41C: LitI4 &HA
  loc_71A421: FLdRfVar var_A0
  loc_71A424: Ary1LdI4
  loc_71A425: ConcatStr
  loc_71A426: FStStrNoPop var_388
  loc_71A429: LitStr "',"
  loc_71A42C: ConcatStr
  loc_71A42D: FStStrNoPop var_390
  loc_71A430: FLdRfVar var_380
  loc_71A433: FLdFPR8 var_3C8
  loc_71A436: FnCDblR8
  loc_71A438: PopTmpLdAdFPR8
  loc_71A43C: FLdFPR8 var_3C0
  loc_71A43F: FnCDblR8
  loc_71A441: PopTmpLdAdFPR8
  loc_71A445: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A44A: FLdFPR8 var_380
  loc_71A44D: CStrR8
  loc_71A44F: FStStrNoPop var_394
  loc_71A452: ConcatStr
  loc_71A453: FStStrNoPop var_398
  loc_71A456: LitStr ",'"
  loc_71A459: ConcatStr
  loc_71A45A: FStStr var_B0
  loc_71A45D: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = "": var_348 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_71A48E: LitI4 &HE
  loc_71A493: FLdRfVar var_A0
  loc_71A496: Ary1LdI4
  loc_71A497: ImpAdCallFPR4 push Val()
  loc_71A49C: FStFPR8 var_370
  loc_71A49F: LitStr vbNullString
  loc_71A4A2: FStStrCopy var_2F4
  loc_71A4A5: FLdRfVar var_2F4
  loc_71A4A8: LitI2_Byte &HD
  loc_71A4AA: PopTmpLdAd2 var_2EE
  loc_71A4AD: LitI4 &HD
  loc_71A4B2: FLdRfVar var_A0
  loc_71A4B5: Ary1LdRf
  loc_71A4B6: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A4BB: FStFPR8 var_378
  loc_71A4BE: LitI4 &H10
  loc_71A4C3: FLdRfVar var_A0
  loc_71A4C6: Ary1LdI4
  loc_71A4C7: ImpAdCallFPR4 push Val()
  loc_71A4CC: FStFPR8 var_380
  loc_71A4CF: LitStr vbNullString
  loc_71A4D2: FStStrCopy var_30C
  loc_71A4D5: FLdRfVar var_30C
  loc_71A4D8: LitI2_Byte &HD
  loc_71A4DA: PopTmpLdAd2 var_35A
  loc_71A4DD: LitI4 &HF
  loc_71A4E2: FLdRfVar var_A0
  loc_71A4E5: Ary1LdRf
  loc_71A4E6: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A4EB: FStFPR8 var_3A0
  loc_71A4EE: ILdRf var_B0
  loc_71A4F1: LitI4 &HC
  loc_71A4F6: FLdRfVar var_A0
  loc_71A4F9: Ary1LdI4
  loc_71A4FA: ConcatStr
  loc_71A4FB: FStStrNoPop var_C4
  loc_71A4FE: LitStr "',"
  loc_71A501: ConcatStr
  loc_71A502: FStStrNoPop var_2F8
  loc_71A505: FLdRfVar var_33C
  loc_71A508: FLdFPR8 var_378
  loc_71A50B: FnCDblR8
  loc_71A50D: PopTmpLdAdFPR8
  loc_71A511: FLdFPR8 var_370
  loc_71A514: FnCDblR8
  loc_71A516: PopTmpLdAdFPR8
  loc_71A51A: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A51F: FLdFPR8 var_33C
  loc_71A522: CStrR8
  loc_71A524: FStStrNoPop var_2FC
  loc_71A527: ConcatStr
  loc_71A528: FStStrNoPop var_300
  loc_71A52B: LitStr ",'"
  loc_71A52E: ConcatStr
  loc_71A52F: FStStrNoPop var_304
  loc_71A532: LitI4 &HE
  loc_71A537: FLdRfVar var_A0
  loc_71A53A: Ary1LdI4
  loc_71A53B: ConcatStr
  loc_71A53C: FStStrNoPop var_308
  loc_71A53F: LitStr "',"
  loc_71A542: ConcatStr
  loc_71A543: FStStrNoPop var_310
  loc_71A546: FLdRfVar var_364
  loc_71A549: FLdFPR8 var_3A0
  loc_71A54C: FnCDblR8
  loc_71A54E: PopTmpLdAdFPR8
  loc_71A552: FLdFPR8 var_380
  loc_71A555: FnCDblR8
  loc_71A557: PopTmpLdAdFPR8
  loc_71A55B: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A560: FLdFPR8 var_364
  loc_71A563: CStrR8
  loc_71A565: FStStrNoPop var_314
  loc_71A568: ConcatStr
  loc_71A569: FStStrNoPop var_318
  loc_71A56C: LitStr ",'"
  loc_71A56F: ConcatStr
  loc_71A570: FStStrNoPop var_31C
  loc_71A573: LitI4 &H10
  loc_71A578: FLdRfVar var_A0
  loc_71A57B: Ary1LdI4
  loc_71A57C: ConcatStr
  loc_71A57D: FStStrNoPop var_320
  loc_71A580: LitStr "','"
  loc_71A583: ConcatStr
  loc_71A584: FStStrNoPop var_324
  loc_71A587: LitI4 &H11
  loc_71A58C: FLdRfVar var_A0
  loc_71A58F: Ary1LdI4
  loc_71A590: ConcatStr
  loc_71A591: FStStrNoPop var_340
  loc_71A594: LitStr "','"
  loc_71A597: ConcatStr
  loc_71A598: FStStrNoPop var_344
  loc_71A59B: ILdRf var_B8
  loc_71A59E: ConcatStr
  loc_71A59F: FStStrNoPop var_348
  loc_71A5A2: LitStr "')"
  loc_71A5A5: ConcatStr
  loc_71A5A6: FStStr var_B0
  loc_71A5A9: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = ""
  loc_71A5CE: ILdRf var_AC
  loc_71A5D1: ILdRf var_B0
  loc_71A5D4: ConcatStr
  loc_71A5D5: FStStr var_AC
  loc_71A5D8: FLdRfVar var_AC
  loc_71A5DB: CDargRef
  loc_71A5DF: LitVarI4
  loc_71A5E7: PopAdLdVar
  loc_71A5E8: FLdRfVar var_104
  loc_71A5EB: LdPrVar
  loc_71A5ED: LateMemCall
  loc_71A5F3: ILdRf var_B4
  loc_71A5F6: LitI4 2
  loc_71A5FB: AddI4
  loc_71A5FC: LitI4 &HF
  loc_71A601: AddI4
  loc_71A602: FStR4 var_B4
  loc_71A605: Branch loc_71A178
  loc_71A608: LitI4 2
  loc_71A60D: FLdRfVar var_118
  loc_71A610: ImpAdCallFPR4  = Chr()
  loc_71A615: FLdRfVar var_118
  loc_71A618: LitI4 &HD
  loc_71A61D: FLdRfVar var_128
  loc_71A620: ImpAdCallFPR4  = Chr()
  loc_71A625: FLdRfVar var_128
  loc_71A628: ConcatVar var_138
  loc_71A62C: LitI4 8
  loc_71A631: FLdRfVar var_148
  loc_71A634: ImpAdCallFPR4  = Chr()
  loc_71A639: FLdRfVar var_148
  loc_71A63C: ConcatVar var_158
  loc_71A640: LitI4 6
  loc_71A645: FLdRfVar var_168
  loc_71A648: ImpAdCallFPR4  = Chr()
  loc_71A64D: FLdRfVar var_168
  loc_71A650: ConcatVar var_178
  loc_71A654: LitI4 &H19
  loc_71A659: FLdRfVar var_188
  loc_71A65C: ImpAdCallFPR4  = Chr()
  loc_71A661: FLdRfVar var_188
  loc_71A664: ConcatVar var_198
  loc_71A668: LitI4 &HC
  loc_71A66D: FLdRfVar var_1A8
  loc_71A670: ImpAdCallFPR4  = Chr()
  loc_71A675: FLdRfVar var_1A8
  loc_71A678: ConcatVar var_1B8
  loc_71A67C: LitI4 1
  loc_71A681: FLdRfVar var_1C8
  loc_71A684: ImpAdCallFPR4  = Chr()
  loc_71A689: FLdRfVar var_1C8
  loc_71A68C: ConcatVar var_1D8
  loc_71A690: LitI4 &HD
  loc_71A695: FLdRfVar var_1E8
  loc_71A698: ImpAdCallFPR4  = Chr()
  loc_71A69D: FLdRfVar var_1E8
  loc_71A6A0: ConcatVar var_1F8
  loc_71A6A4: LitI4 &HF
  loc_71A6A9: FLdRfVar var_208
  loc_71A6AC: ImpAdCallFPR4  = Chr()
  loc_71A6B1: FLdRfVar var_208
  loc_71A6B4: ConcatVar var_218
  loc_71A6B8: LitI4 1
  loc_71A6BD: FLdRfVar var_228
  loc_71A6C0: ImpAdCallFPR4  = Chr()
  loc_71A6C5: FLdRfVar var_228
  loc_71A6C8: ConcatVar var_238
  loc_71A6CC: LitI4 &HF
  loc_71A6D1: FLdRfVar var_248
  loc_71A6D4: ImpAdCallFPR4  = Chr()
  loc_71A6D9: FLdRfVar var_248
  loc_71A6DC: ConcatVar var_258
  loc_71A6E0: LitI4 1
  loc_71A6E5: FLdRfVar var_268
  loc_71A6E8: ImpAdCallFPR4  = Chr()
  loc_71A6ED: FLdRfVar var_268
  loc_71A6F0: ConcatVar var_278
  loc_71A6F4: LitI4 &HF
  loc_71A6F9: FLdRfVar var_288
  loc_71A6FC: ImpAdCallFPR4  = Chr()
  loc_71A701: FLdRfVar var_288
  loc_71A704: ConcatVar var_298
  loc_71A708: LitI4 1
  loc_71A70D: FLdRfVar var_2A8
  loc_71A710: ImpAdCallFPR4  = Chr()
  loc_71A715: FLdRfVar var_2A8
  loc_71A718: ConcatVar var_2B8
  loc_71A71C: LitI4 &HF
  loc_71A721: FLdRfVar var_2C8
  loc_71A724: ImpAdCallFPR4  = Chr()
  loc_71A729: FLdRfVar var_2C8
  loc_71A72C: ConcatVar var_2D8
  loc_71A730: LitI4 1
  loc_71A735: FLdRfVar var_3D8
  loc_71A738: ImpAdCallFPR4  = Chr()
  loc_71A73D: FLdRfVar var_3D8
  loc_71A740: ConcatVar var_3E8
  loc_71A744: LitI4 &H2D
  loc_71A749: FLdRfVar var_3FC
  loc_71A74C: ImpAdCallFPR4  = Chr()
  loc_71A751: FLdRfVar var_3FC
  loc_71A754: ConcatVar var_40C
  loc_71A758: CStrVarTmp
  loc_71A759: FStStr var_A4
  loc_71A75C: FFreeVar var_3E8 = "": var_3FC = "": var_40C = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = ""
  loc_71A7A1: ILdRf var_B4
  loc_71A7A4: ILdI4 sValor
  loc_71A7A7: FnLenStr
  loc_71A7A8: LeI4
  loc_71A7A9: CVarBoolI2 var_2E8
  loc_71A7AD: LitVarI2 var_118, 2
  loc_71A7B2: ILdRf var_B4
  loc_71A7B5: ILdRf sValor
  loc_71A7B8: CVarRef
  loc_71A7BD: FLdRfVar var_128
  loc_71A7C0: ImpAdCallFPR4  = Mid(, , )
  loc_71A7C5: FLdRfVar var_128
  loc_71A7C8: LitVarStr var_F4, "D5"
  loc_71A7CD: HardType
  loc_71A7CE: EqVar var_138
  loc_71A7D2: AndVar var_148
  loc_71A7D6: CBoolVarNull
  loc_71A7D8: FFreeVar var_118 = "": var_128 = ""
  loc_71A7E1: BranchF loc_71AC3B
  loc_71A7E4: LitVarI2 var_118, 2
  loc_71A7E9: ILdRf var_B4
  loc_71A7EC: ILdRf sValor
  loc_71A7EF: CVarRef
  loc_71A7F4: FLdRfVar var_128
  loc_71A7F7: ImpAdCallFPR4  = Mid(, , )
  loc_71A7FC: FLdRfVar var_128
  loc_71A7FF: FLdRfVar var_138
  loc_71A802: ImpAdCallFPR4  = Trim()
  loc_71A807: FLdRfVar var_2EE
  loc_71A80A: FLdRfVar var_138
  loc_71A80D: CStrVarTmp
  loc_71A80E: PopTmpLdAdStr
  loc_71A812: from_stack_2v = Proc_85_29_5F1A1C(from_stack_1v)
  loc_71A817: FFree1Str var_C4
  loc_71A81A: FFreeVar var_118 = "": var_128 = ""
  loc_71A823: LitVarI2 var_118, 2
  loc_71A828: ILdRf var_B4
  loc_71A82B: LitI4 2
  loc_71A830: AddI4
  loc_71A831: ILdRf sValor
  loc_71A834: CVarRef
  loc_71A839: FLdRfVar var_128
  loc_71A83C: ImpAdCallFPR4  = Mid(, , )
  loc_71A841: FLdRfVar var_128
  loc_71A844: CStrVarTmp
  loc_71A845: FStStr var_B8
  loc_71A848: FFreeVar var_118 = ""
  loc_71A84F: ILdRf var_B4
  loc_71A852: LitI4 4
  loc_71A857: AddI4
  loc_71A858: FStR4 var_B4
  loc_71A85B: LitVar_Missing var_118
  loc_71A85E: ILdRf var_B4
  loc_71A861: ILdRf sValor
  loc_71A864: CVarRef
  loc_71A869: FLdRfVar var_128
  loc_71A86C: ImpAdCallFPR4  = Mid(, , )
  loc_71A871: ILdRf var_B4
  loc_71A874: LitI2_Byte &H11
  loc_71A876: PopTmpLdAd2 var_2EE
  loc_71A879: FLdRfVar var_A4
  loc_71A87C: FLdRfVar var_A0
  loc_71A87F: PopTmpLdAdStr var_2EC
  loc_71A882: FLdRfVar var_128
  loc_71A885: CStrVarTmp
  loc_71A886: PopTmpLdAdStr
  loc_71A88A: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71A88F: CI4UI1
  loc_71A890: AddI4
  loc_71A891: FStR4 var_B4
  loc_71A894: FFree1Str var_C4
  loc_71A897: FFreeVar var_118 = ""
  loc_71A89E: LitStr "INSERT INTO Datos_D5(ctdi, numd, fpr8, cart, desp, vrvt, sgvo, ipro, mbru, sgbr, mcom, sgco, mcfv, sgfv, tdrr, sgtd, blco, creg)"
  loc_71A8A1: FStStrCopy var_AC
  loc_71A8A4: LitStr " VALUES ('"
  loc_71A8A7: LitI4 1
  loc_71A8AC: FLdRfVar var_A0
  loc_71A8AF: Ary1LdI4
  loc_71A8B0: ConcatStr
  loc_71A8B1: FStStrNoPop var_C4
  loc_71A8B4: LitStr "','"
  loc_71A8B7: ConcatStr
  loc_71A8B8: FStStrNoPop var_2F4
  loc_71A8BB: LitI4 2
  loc_71A8C0: FLdRfVar var_A0
  loc_71A8C3: Ary1LdI4
  loc_71A8C4: ConcatStr
  loc_71A8C5: FStStrNoPop var_2F8
  loc_71A8C8: LitStr "','"
  loc_71A8CB: ConcatStr
  loc_71A8CC: FStStrNoPop var_2FC
  loc_71A8CF: LitI4 3
  loc_71A8D4: FLdRfVar var_A0
  loc_71A8D7: Ary1LdRf
  loc_71A8D8: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71A8DD: FStStrNoPop var_300
  loc_71A8E0: ConcatStr
  loc_71A8E1: FStStrNoPop var_304
  loc_71A8E4: LitStr "','"
  loc_71A8E7: ConcatStr
  loc_71A8E8: FStStr var_B0
  loc_71A8EB: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = ""
  loc_71A8FA: LitI4 7
  loc_71A8FF: FLdRfVar var_A0
  loc_71A902: Ary1LdI4
  loc_71A903: ImpAdCallFPR4 push Val()
  loc_71A908: FStFPR8 var_3A0
  loc_71A90B: LitStr vbNullString
  loc_71A90E: FStStrCopy var_2FC
  loc_71A911: FLdRfVar var_2FC
  loc_71A914: LitI2_Byte 9
  loc_71A916: PopTmpLdAd2 var_2EE
  loc_71A919: LitI4 6
  loc_71A91E: FLdRfVar var_A0
  loc_71A921: Ary1LdRf
  loc_71A922: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A927: FStFPR8 var_3A8
  loc_71A92A: LitI4 &HA
  loc_71A92F: FLdRfVar var_A0
  loc_71A932: Ary1LdI4
  loc_71A933: ImpAdCallFPR4 push Val()
  loc_71A938: FStFPR8 var_3B0
  loc_71A93B: LitStr vbNullString
  loc_71A93E: FStStrCopy var_324
  loc_71A941: FLdRfVar var_324
  loc_71A944: LitI2_Byte &HD
  loc_71A946: PopTmpLdAd2 var_366
  loc_71A949: LitI4 9
  loc_71A94E: FLdRfVar var_A0
  loc_71A951: Ary1LdRf
  loc_71A952: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A957: FStFPR8 var_3B8
  loc_71A95A: LitI4 &HC
  loc_71A95F: FLdRfVar var_A0
  loc_71A962: Ary1LdI4
  loc_71A963: ImpAdCallFPR4 push Val()
  loc_71A968: FStFPR8 var_3C0
  loc_71A96B: LitStr vbNullString
  loc_71A96E: FStStrCopy var_38C
  loc_71A971: FLdRfVar var_38C
  loc_71A974: LitI2_Byte &HD
  loc_71A976: PopTmpLdAd2 var_3EA
  loc_71A979: LitI4 &HB
  loc_71A97E: FLdRfVar var_A0
  loc_71A981: Ary1LdRf
  loc_71A982: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71A987: FStFPR8 var_3C8
  loc_71A98A: ILdRf var_B0
  loc_71A98D: LitI4 4
  loc_71A992: FLdRfVar var_A0
  loc_71A995: Ary1LdI4
  loc_71A996: ConcatStr
  loc_71A997: FStStrNoPop var_C4
  loc_71A99A: LitStr "','"
  loc_71A99D: ConcatStr
  loc_71A99E: FStStrNoPop var_2F4
  loc_71A9A1: LitI4 5
  loc_71A9A6: FLdRfVar var_A0
  loc_71A9A9: Ary1LdI4
  loc_71A9AA: ConcatStr
  loc_71A9AB: FStStrNoPop var_2F8
  loc_71A9AE: LitStr "',"
  loc_71A9B1: ConcatStr
  loc_71A9B2: FStStrNoPop var_300
  loc_71A9B5: FLdRfVar var_33C
  loc_71A9B8: FLdFPR8 var_3A8
  loc_71A9BB: FnCDblR8
  loc_71A9BD: PopTmpLdAdFPR8
  loc_71A9C1: FLdFPR8 var_3A0
  loc_71A9C4: FnCDblR8
  loc_71A9C6: PopTmpLdAdFPR8
  loc_71A9CA: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71A9CF: FLdFPR8 var_33C
  loc_71A9D2: CStrR8
  loc_71A9D4: FStStrNoPop var_304
  loc_71A9D7: ConcatStr
  loc_71A9D8: FStStrNoPop var_308
  loc_71A9DB: LitStr ",'"
  loc_71A9DE: ConcatStr
  loc_71A9DF: FStStrNoPop var_30C
  loc_71A9E2: LitI4 7
  loc_71A9E7: FLdRfVar var_A0
  loc_71A9EA: Ary1LdI4
  loc_71A9EB: ConcatStr
  loc_71A9EC: FStStrNoPop var_310
  loc_71A9EF: LitStr "',"
  loc_71A9F2: ConcatStr
  loc_71A9F3: FStStrNoPop var_318
  loc_71A9F6: LitStr vbNullString
  loc_71A9F9: FStStrCopy var_314
  loc_71A9FC: FLdRfVar var_314
  loc_71A9FF: LitI2_Byte 7
  loc_71AA01: PopTmpLdAd2 var_35A
  loc_71AA04: LitI4 8
  loc_71AA09: FLdRfVar var_A0
  loc_71AA0C: Ary1LdRf
  loc_71AA0D: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71AA12: CStrR8
  loc_71AA14: FStStrNoPop var_31C
  loc_71AA17: ConcatStr
  loc_71AA18: FStStrNoPop var_320
  loc_71AA1B: LitStr ","
  loc_71AA1E: ConcatStr
  loc_71AA1F: FStStrNoPop var_340
  loc_71AA22: FLdRfVar var_364
  loc_71AA25: FLdFPR8 var_3B8
  loc_71AA28: FnCDblR8
  loc_71AA2A: PopTmpLdAdFPR8
  loc_71AA2E: FLdFPR8 var_3B0
  loc_71AA31: FnCDblR8
  loc_71AA33: PopTmpLdAdFPR8
  loc_71AA37: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71AA3C: FLdFPR8 var_364
  loc_71AA3F: CStrR8
  loc_71AA41: FStStrNoPop var_344
  loc_71AA44: ConcatStr
  loc_71AA45: FStStrNoPop var_348
  loc_71AA48: LitStr ",'"
  loc_71AA4B: ConcatStr
  loc_71AA4C: FStStrNoPop var_384
  loc_71AA4F: LitI4 &HA
  loc_71AA54: FLdRfVar var_A0
  loc_71AA57: Ary1LdI4
  loc_71AA58: ConcatStr
  loc_71AA59: FStStrNoPop var_388
  loc_71AA5C: LitStr "',"
  loc_71AA5F: ConcatStr
  loc_71AA60: FStStrNoPop var_390
  loc_71AA63: FLdRfVar var_380
  loc_71AA66: FLdFPR8 var_3C8
  loc_71AA69: FnCDblR8
  loc_71AA6B: PopTmpLdAdFPR8
  loc_71AA6F: FLdFPR8 var_3C0
  loc_71AA72: FnCDblR8
  loc_71AA74: PopTmpLdAdFPR8
  loc_71AA78: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71AA7D: FLdFPR8 var_380
  loc_71AA80: CStrR8
  loc_71AA82: FStStrNoPop var_394
  loc_71AA85: ConcatStr
  loc_71AA86: FStStrNoPop var_398
  loc_71AA89: LitStr ",'"
  loc_71AA8C: ConcatStr
  loc_71AA8D: FStStr var_B0
  loc_71AA90: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = "": var_348 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_71AAC1: LitI4 &HE
  loc_71AAC6: FLdRfVar var_A0
  loc_71AAC9: Ary1LdI4
  loc_71AACA: ImpAdCallFPR4 push Val()
  loc_71AACF: FStFPR8 var_370
  loc_71AAD2: LitStr vbNullString
  loc_71AAD5: FStStrCopy var_2F4
  loc_71AAD8: FLdRfVar var_2F4
  loc_71AADB: LitI2_Byte &HD
  loc_71AADD: PopTmpLdAd2 var_2EE
  loc_71AAE0: LitI4 &HD
  loc_71AAE5: FLdRfVar var_A0
  loc_71AAE8: Ary1LdRf
  loc_71AAE9: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71AAEE: FStFPR8 var_378
  loc_71AAF1: LitI4 &H10
  loc_71AAF6: FLdRfVar var_A0
  loc_71AAF9: Ary1LdI4
  loc_71AAFA: ImpAdCallFPR4 push Val()
  loc_71AAFF: FStFPR8 var_380
  loc_71AB02: LitStr vbNullString
  loc_71AB05: FStStrCopy var_30C
  loc_71AB08: FLdRfVar var_30C
  loc_71AB0B: LitI2_Byte &HD
  loc_71AB0D: PopTmpLdAd2 var_35A
  loc_71AB10: LitI4 &HF
  loc_71AB15: FLdRfVar var_A0
  loc_71AB18: Ary1LdRf
  loc_71AB19: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71AB1E: FStFPR8 var_3A0
  loc_71AB21: ILdRf var_B0
  loc_71AB24: LitI4 &HC
  loc_71AB29: FLdRfVar var_A0
  loc_71AB2C: Ary1LdI4
  loc_71AB2D: ConcatStr
  loc_71AB2E: FStStrNoPop var_C4
  loc_71AB31: LitStr "',"
  loc_71AB34: ConcatStr
  loc_71AB35: FStStrNoPop var_2F8
  loc_71AB38: FLdRfVar var_33C
  loc_71AB3B: FLdFPR8 var_378
  loc_71AB3E: FnCDblR8
  loc_71AB40: PopTmpLdAdFPR8
  loc_71AB44: FLdFPR8 var_370
  loc_71AB47: FnCDblR8
  loc_71AB49: PopTmpLdAdFPR8
  loc_71AB4D: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71AB52: FLdFPR8 var_33C
  loc_71AB55: CStrR8
  loc_71AB57: FStStrNoPop var_2FC
  loc_71AB5A: ConcatStr
  loc_71AB5B: FStStrNoPop var_300
  loc_71AB5E: LitStr ",'"
  loc_71AB61: ConcatStr
  loc_71AB62: FStStrNoPop var_304
  loc_71AB65: LitI4 &HE
  loc_71AB6A: FLdRfVar var_A0
  loc_71AB6D: Ary1LdI4
  loc_71AB6E: ConcatStr
  loc_71AB6F: FStStrNoPop var_308
  loc_71AB72: LitStr "',"
  loc_71AB75: ConcatStr
  loc_71AB76: FStStrNoPop var_310
  loc_71AB79: FLdRfVar var_364
  loc_71AB7C: FLdFPR8 var_3A0
  loc_71AB7F: FnCDblR8
  loc_71AB81: PopTmpLdAdFPR8
  loc_71AB85: FLdFPR8 var_380
  loc_71AB88: FnCDblR8
  loc_71AB8A: PopTmpLdAdFPR8
  loc_71AB8E: from_stack_3v = Proc_85_30_5D4594(from_stack_1v, from_stack_2v)
  loc_71AB93: FLdFPR8 var_364
  loc_71AB96: CStrR8
  loc_71AB98: FStStrNoPop var_314
  loc_71AB9B: ConcatStr
  loc_71AB9C: FStStrNoPop var_318
  loc_71AB9F: LitStr ",'"
  loc_71ABA2: ConcatStr
  loc_71ABA3: FStStrNoPop var_31C
  loc_71ABA6: LitI4 &H10
  loc_71ABAB: FLdRfVar var_A0
  loc_71ABAE: Ary1LdI4
  loc_71ABAF: ConcatStr
  loc_71ABB0: FStStrNoPop var_320
  loc_71ABB3: LitStr "','"
  loc_71ABB6: ConcatStr
  loc_71ABB7: FStStrNoPop var_324
  loc_71ABBA: LitI4 &H11
  loc_71ABBF: FLdRfVar var_A0
  loc_71ABC2: Ary1LdI4
  loc_71ABC3: ConcatStr
  loc_71ABC4: FStStrNoPop var_340
  loc_71ABC7: LitStr "','"
  loc_71ABCA: ConcatStr
  loc_71ABCB: FStStrNoPop var_344
  loc_71ABCE: ILdRf var_B8
  loc_71ABD1: ConcatStr
  loc_71ABD2: FStStrNoPop var_348
  loc_71ABD5: LitStr "')"
  loc_71ABD8: ConcatStr
  loc_71ABD9: FStStr var_B0
  loc_71ABDC: FFreeStr var_C4 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_340 = "": var_344 = ""
  loc_71AC01: ILdRf var_AC
  loc_71AC04: ILdRf var_B0
  loc_71AC07: ConcatStr
  loc_71AC08: FStStr var_AC
  loc_71AC0B: FLdRfVar var_AC
  loc_71AC0E: CDargRef
  loc_71AC12: LitVarI4
  loc_71AC1A: PopAdLdVar
  loc_71AC1B: FLdRfVar var_104
  loc_71AC1E: LdPrVar
  loc_71AC20: LateMemCall
  loc_71AC26: ILdRf var_B4
  loc_71AC29: LitI4 2
  loc_71AC2E: AddI4
  loc_71AC2F: LitI4 &HF
  loc_71AC34: AddI4
  loc_71AC35: FStR4 var_B4
  loc_71AC38: Branch loc_71A7A1
  loc_71AC3B: Branch loc_7190DE
  loc_71AC3E: FLdRfVar var_104
  loc_71AC41: LdPrVar
  loc_71AC43: LateMemCall
  loc_71AC49: LitI2_Byte &HFF
  loc_71AC4B: FStI2 var_86
  loc_71AC4E: ExitProcCbHresult
  loc_71AC54: LitI2_Byte 0
  loc_71AC56: FStI2 var_86
  loc_71AC59: FLdRfVar var_2EC
  loc_71AC5C: ImpAdCallI2 Err 'rtcErrObj
  loc_71AC61: FStAdFunc var_C0
  loc_71AC64: FLdPr var_C0
  loc_71AC67:  = Err.Number
  loc_71AC6C: ILdRf var_2EC
  loc_71AC6F: LitI4 &H1B6
  loc_71AC74: EqI4
  loc_71AC75: FLdRfVar var_414
  loc_71AC78: ImpAdCallI2 Err 'rtcErrObj
  loc_71AC7D: FStAdFunc var_410
  loc_71AC80: FLdPr var_410
  loc_71AC83:  = Err.Number
  loc_71AC88: ILdRf var_414
  loc_71AC8B: LitI4 &HC0E
  loc_71AC90: EqI4
  loc_71AC91: OrI4
  loc_71AC92: FFreeAd var_C0 = ""
  loc_71AC99: BranchF loc_71ACC8
  loc_71AC9C: LitVar_Missing var_148
  loc_71AC9F: LitVar_Missing var_138
  loc_71ACA2: LitVar_Missing var_128
  loc_71ACA5: LitI4 &H40
  loc_71ACAA: LitVarStr var_D4, "Los archivos de impresion estan siendo utilizados"
  loc_71ACAF: FStVarCopyObj var_118
  loc_71ACB2: FLdRfVar var_118
  loc_71ACB5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_71ACBA: FFreeVar var_118 = "": var_128 = "": var_138 = ""
  loc_71ACC5: Branch loc_71AD02
  loc_71ACC8: FLdRfVar var_C4
  loc_71ACCB: ImpAdCallI2 Err 'rtcErrObj
  loc_71ACD0: FStAdFunc var_C0
  loc_71ACD3: FLdPr var_C0
  loc_71ACD6:  = Err.Description
  loc_71ACDB: LitVar_Missing var_148
  loc_71ACDE: LitVar_Missing var_138
  loc_71ACE1: LitVar_Missing var_128
  loc_71ACE4: LitI4 &H10
  loc_71ACE9: FLdZeroAd var_C4
  loc_71ACEC: CVarStr var_118
  loc_71ACEF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_71ACF4: FFree1Ad var_C0
  loc_71ACF7: FFreeVar var_118 = "": var_128 = "": var_138 = ""
  loc_71AD02: FLdRfVar var_104
  loc_71AD05: LdPrVar
  loc_71AD07: LateMemCall
  loc_71AD0D: ExitProcCbHresult
End Function

Public Function ArmarReporteDB(sValor) '69BEA4
  'Data Table: 42D060
  loc_69B8E4: ZeroRetValVar
  loc_69B8E6: OnErrorGoto loc_69BE59
  loc_69B8E9: FLdRfVar var_D8
  loc_69B8EC: FLdRfVar var_D4
  loc_69B8EF: ImpAdLdRf MemVar_7520D4
  loc_69B8F2: NewIfNullPr Global
  loc_69B8F5:  = Global.App
  loc_69B8FA: FLdPr var_D4
  loc_69B8FD:  = App.Path
  loc_69B902: ILdRf var_D8
  loc_69B905: LitStr "\REPORTE.MDB"
  loc_69B908: ConcatStr
  loc_69B909: FStStr var_B8
  loc_69B90C: FFree1Str var_D8
  loc_69B90F: FFree1Ad var_D4
  loc_69B912: FLdRfVar var_D4
  loc_69B915: LitVar_Missing var_108
  loc_69B918: PopAdLdVar
  loc_69B919: LitVar_Missing var_F8
  loc_69B91C: PopAdLdVar
  loc_69B91D: LitVar_TRUE var_E8
  loc_69B920: PopAdLdVar
  loc_69B921: ILdRf var_B8
  loc_69B924: ImpAdLdRf MemVar_752164
  loc_69B927: NewIfNullPr Me
  loc_69B92A: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69B92F: FLdZeroAd var_D4
  loc_69B932: FStVarAdFunc
  loc_69B936: LitVarStr var_E8, "Delete * from RtaDebitosBancarios"
  loc_69B93B: PopAdLdVar
  loc_69B93C: LitVarI4
  loc_69B944: PopAdLdVar
  loc_69B945: FLdRfVar var_118
  loc_69B948: LdPrVar
  loc_69B94A: LateMemCall
  loc_69B950: LitVarStr var_E8, "Delete * from DebitosBancarios"
  loc_69B955: PopAdLdVar
  loc_69B956: LitVarI4
  loc_69B95E: PopAdLdVar
  loc_69B95F: FLdRfVar var_118
  loc_69B962: LdPrVar
  loc_69B964: LateMemCall
  loc_69B96A: LitI4 &H11
  loc_69B96F: FLdRfVar var_128
  loc_69B972: ImpAdCallFPR4  = Chr()
  loc_69B977: FLdRfVar var_128
  loc_69B97A: LitI4 8
  loc_69B97F: FLdRfVar var_138
  loc_69B982: ImpAdCallFPR4  = Chr()
  loc_69B987: FLdRfVar var_138
  loc_69B98A: ConcatVar var_148
  loc_69B98E: LitI4 &HC
  loc_69B993: FLdRfVar var_158
  loc_69B996: ImpAdCallFPR4  = Chr()
  loc_69B99B: FLdRfVar var_158
  loc_69B99E: ConcatVar var_168
  loc_69B9A2: LitI4 8
  loc_69B9A7: FLdRfVar var_178
  loc_69B9AA: ImpAdCallFPR4  = Chr()
  loc_69B9AF: FLdRfVar var_178
  loc_69B9B2: ConcatVar var_188
  loc_69B9B6: LitI4 2
  loc_69B9BB: FLdRfVar var_198
  loc_69B9BE: ImpAdCallFPR4  = Chr()
  loc_69B9C3: FLdRfVar var_198
  loc_69B9C6: ConcatVar var_1A8
  loc_69B9CA: LitI4 &HD
  loc_69B9CF: FLdRfVar var_1B8
  loc_69B9D2: ImpAdCallFPR4  = Chr()
  loc_69B9D7: FLdRfVar var_1B8
  loc_69B9DA: ConcatVar var_1C8
  loc_69B9DE: LitI4 2
  loc_69B9E3: FLdRfVar var_1D8
  loc_69B9E6: ImpAdCallFPR4  = Chr()
  loc_69B9EB: FLdRfVar var_1D8
  loc_69B9EE: ConcatVar var_1E8
  loc_69B9F2: LitI4 &H1E
  loc_69B9F7: FLdRfVar var_1F8
  loc_69B9FA: ImpAdCallFPR4  = Chr()
  loc_69B9FF: FLdRfVar var_1F8
  loc_69BA02: ConcatVar var_208
  loc_69BA06: LitI4 8
  loc_69BA0B: FLdRfVar var_218
  loc_69BA0E: ImpAdCallFPR4  = Chr()
  loc_69BA13: FLdRfVar var_218
  loc_69BA16: ConcatVar var_228
  loc_69BA1A: LitI4 8
  loc_69BA1F: FLdRfVar var_238
  loc_69BA22: ImpAdCallFPR4  = Chr()
  loc_69BA27: FLdRfVar var_238
  loc_69BA2A: ConcatVar var_248
  loc_69BA2E: LitI4 2
  loc_69BA33: FLdRfVar var_258
  loc_69BA36: ImpAdCallFPR4  = Chr()
  loc_69BA3B: FLdRfVar var_258
  loc_69BA3E: ConcatVar var_268
  loc_69BA42: CStrVarTmp
  loc_69BA43: FStStr var_B4
  loc_69BA46: FFreeVar var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = ""
  loc_69BA73: LitI2_Byte &HA
  loc_69BA75: FStI2 var_C2
  loc_69BA78: LitI2_Byte &HFF
  loc_69BA7A: FStI2 var_CE
  loc_69BA7D: FLdI2 var_C2
  loc_69BA80: CI4UI1
  loc_69BA81: ILdI4 sValor
  loc_69BA84: FnLenStr
  loc_69BA85: LeI4
  loc_69BA86: CVarBoolI2 var_278
  loc_69BA8A: LitVarI2 var_128, 5
  loc_69BA8F: FLdI2 var_C2
  loc_69BA92: CI4UI1
  loc_69BA93: ILdRf sValor
  loc_69BA96: CVarRef
  loc_69BA9B: FLdRfVar var_138
  loc_69BA9E: ImpAdCallFPR4  = Mid(, , )
  loc_69BAA3: FLdRfVar var_138
  loc_69BAA6: LitVarStr var_108, "<RTA>"
  loc_69BAAB: HardType
  loc_69BAAC: NeVar var_148
  loc_69BAB0: AndVar var_158
  loc_69BAB4: CBoolVarNull
  loc_69BAB6: FFreeVar var_128 = "": var_138 = ""
  loc_69BABF: BranchF loc_69BCA1
  loc_69BAC2: LitVar_Missing var_128
  loc_69BAC5: FLdI2 var_C2
  loc_69BAC8: CI4UI1
  loc_69BAC9: ILdRf sValor
  loc_69BACC: CVarRef
  loc_69BAD1: FLdRfVar var_138
  loc_69BAD4: ImpAdCallFPR4  = Mid(, , )
  loc_69BAD9: FLdI2 var_C2
  loc_69BADC: LitI2_Byte &HB
  loc_69BADE: PopTmpLdAd2 var_27E
  loc_69BAE1: FLdRfVar var_B4
  loc_69BAE4: FLdRfVar var_AC
  loc_69BAE7: PopTmpLdAdStr var_27C
  loc_69BAEA: FLdRfVar var_138
  loc_69BAED: CStrVarTmp
  loc_69BAEE: PopTmpLdAdStr
  loc_69BAF2: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_69BAF7: AddI2
  loc_69BAF8: FStI2 var_C2
  loc_69BAFB: FFree1Str var_D8
  loc_69BAFE: FFreeVar var_128 = ""
  loc_69BB05: FLdI2 var_CE
  loc_69BB08: BranchF loc_69BB20
  loc_69BB0B: LitI4 1
  loc_69BB10: FLdRfVar var_AC
  loc_69BB13: Ary1LdI4
  loc_69BB14: FLdPr Me
  loc_69BB17: MemStStrCopy
  loc_69BB1B: LitI2_Byte 0
  loc_69BB1D: FStI2 var_CE
  loc_69BB20: LitStr "INSERT INTO DEBITOSBANCARIOS(nro_cuenta, fecha_debito, importe_debito, nro_cta_sgc, un_neg, Nro_doc_sgc, tipo_doc, desc_doc, fec_emision, fec_vto, dias_venc)"
  loc_69BB23: FStStrCopy var_BC
  loc_69BB26: LitStr " VALUES ('"
  loc_69BB29: LitI4 1
  loc_69BB2E: FLdRfVar var_AC
  loc_69BB31: Ary1LdI4
  loc_69BB32: ConcatStr
  loc_69BB33: FStStrNoPop var_D8
  loc_69BB36: LitStr "','"
  loc_69BB39: ConcatStr
  loc_69BB3A: FStStrNoPop var_284
  loc_69BB3D: LitI4 2
  loc_69BB42: FLdRfVar var_AC
  loc_69BB45: Ary1LdRf
  loc_69BB46: ImpAdCallI2 Proc_87_29_6028E4()
  loc_69BB4B: FStStrNoPop var_288
  loc_69BB4E: ConcatStr
  loc_69BB4F: FStStrNoPop var_28C
  loc_69BB52: LitStr "',"
  loc_69BB55: ConcatStr
  loc_69BB56: FStStrNoPop var_294
  loc_69BB59: LitStr vbNullString
  loc_69BB5C: FStStrCopy var_290
  loc_69BB5F: FLdRfVar var_290
  loc_69BB62: LitI2_Byte &HA
  loc_69BB64: PopTmpLdAd2 var_27E
  loc_69BB67: LitI4 3
  loc_69BB6C: FLdRfVar var_AC
  loc_69BB6F: Ary1LdRf
  loc_69BB70: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_69BB75: CStrR8
  loc_69BB77: FStStrNoPop var_298
  loc_69BB7A: ConcatStr
  loc_69BB7B: FStStrNoPop var_29C
  loc_69BB7E: LitStr ",'"
  loc_69BB81: ConcatStr
  loc_69BB82: FStStr var_C0
  loc_69BB85: FFreeStr var_D8 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_298 = ""
  loc_69BB98: ILdRf var_C0
  loc_69BB9B: LitI4 4
  loc_69BBA0: FLdRfVar var_AC
  loc_69BBA3: Ary1LdI4
  loc_69BBA4: ConcatStr
  loc_69BBA5: FStStrNoPop var_D8
  loc_69BBA8: LitStr "','"
  loc_69BBAB: ConcatStr
  loc_69BBAC: FStStrNoPop var_284
  loc_69BBAF: LitI4 5
  loc_69BBB4: FLdRfVar var_AC
  loc_69BBB7: Ary1LdI4
  loc_69BBB8: ConcatStr
  loc_69BBB9: FStStrNoPop var_288
  loc_69BBBC: LitStr "','"
  loc_69BBBF: ConcatStr
  loc_69BBC0: FStStrNoPop var_28C
  loc_69BBC3: LitI4 6
  loc_69BBC8: FLdRfVar var_AC
  loc_69BBCB: Ary1LdI4
  loc_69BBCC: ConcatStr
  loc_69BBCD: FStStrNoPop var_290
  loc_69BBD0: LitStr "','"
  loc_69BBD3: ConcatStr
  loc_69BBD4: FStStrNoPop var_294
  loc_69BBD7: LitI4 7
  loc_69BBDC: FLdRfVar var_AC
  loc_69BBDF: Ary1LdI4
  loc_69BBE0: ConcatStr
  loc_69BBE1: FStStrNoPop var_298
  loc_69BBE4: LitStr "','"
  loc_69BBE7: ConcatStr
  loc_69BBE8: FStStrNoPop var_29C
  loc_69BBEB: LitI4 8
  loc_69BBF0: FLdRfVar var_AC
  loc_69BBF3: Ary1LdI4
  loc_69BBF4: ConcatStr
  loc_69BBF5: FStStrNoPop var_2A0
  loc_69BBF8: LitStr "','"
  loc_69BBFB: ConcatStr
  loc_69BBFC: FStStrNoPop var_2A4
  loc_69BBFF: LitI4 9
  loc_69BC04: FLdRfVar var_AC
  loc_69BC07: Ary1LdRf
  loc_69BC08: ImpAdCallI2 Proc_87_29_6028E4()
  loc_69BC0D: FStStrNoPop var_2A8
  loc_69BC10: ConcatStr
  loc_69BC11: FStStrNoPop var_2AC
  loc_69BC14: LitStr "','"
  loc_69BC17: ConcatStr
  loc_69BC18: FStStrNoPop var_2B0
  loc_69BC1B: LitI4 &HA
  loc_69BC20: FLdRfVar var_AC
  loc_69BC23: Ary1LdRf
  loc_69BC24: ImpAdCallI2 Proc_87_29_6028E4()
  loc_69BC29: FStStrNoPop var_2B4
  loc_69BC2C: ConcatStr
  loc_69BC2D: FStStrNoPop var_2B8
  loc_69BC30: LitStr "','"
  loc_69BC33: ConcatStr
  loc_69BC34: FStStrNoPop var_2BC
  loc_69BC37: LitI4 &HB
  loc_69BC3C: FLdRfVar var_AC
  loc_69BC3F: Ary1LdI4
  loc_69BC40: ConcatStr
  loc_69BC41: FStStrNoPop var_2C0
  loc_69BC44: LitStr "')"
  loc_69BC47: ConcatStr
  loc_69BC48: FStStr var_C0
  loc_69BC4B: FFreeStr var_D8 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = ""
  loc_69BC70: ILdRf var_BC
  loc_69BC73: ILdRf var_C0
  loc_69BC76: ConcatStr
  loc_69BC77: FStStr var_BC
  loc_69BC7A: FLdRfVar var_BC
  loc_69BC7D: CDargRef
  loc_69BC81: LitVarI4
  loc_69BC89: PopAdLdVar
  loc_69BC8A: FLdRfVar var_118
  loc_69BC8D: LdPrVar
  loc_69BC8F: LateMemCall
  loc_69BC95: FLdI2 var_C2
  loc_69BC98: LitI2_Byte 2
  loc_69BC9A: AddI2
  loc_69BC9B: FStI2 var_C2
  loc_69BC9E: Branch loc_69BA7D
  loc_69BCA1: LitVarI2 var_128, 5
  loc_69BCA6: FLdI2 var_C2
  loc_69BCA9: CI4UI1
  loc_69BCAA: ILdRf sValor
  loc_69BCAD: CVarRef
  loc_69BCB2: FLdRfVar var_138
  loc_69BCB5: ImpAdCallFPR4  = Mid(, , )
  loc_69BCBA: FLdRfVar var_138
  loc_69BCBD: LitVarStr var_108, "<RTA>"
  loc_69BCC2: HardType
  loc_69BCC3: EqVarBool
  loc_69BCC5: FFreeVar var_128 = ""
  loc_69BCCC: BranchF loc_69BE48
  loc_69BCCF: LitI4 &HD
  loc_69BCD4: FLdRfVar var_128
  loc_69BCD7: ImpAdCallFPR4  = Chr()
  loc_69BCDC: FLdRfVar var_128
  loc_69BCDF: LitI4 &HC
  loc_69BCE4: FLdRfVar var_138
  loc_69BCE7: ImpAdCallFPR4  = Chr()
  loc_69BCEC: FLdRfVar var_138
  loc_69BCEF: ConcatVar var_148
  loc_69BCF3: LitI4 1
  loc_69BCF8: FLdRfVar var_158
  loc_69BCFB: ImpAdCallFPR4  = Chr()
  loc_69BD00: FLdRfVar var_158
  loc_69BD03: ConcatVar var_168
  loc_69BD07: CStrVarTmp
  loc_69BD08: FStStr var_B4
  loc_69BD0B: FFreeVar var_128 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_69BD18: FLdI2 var_C2
  loc_69BD1B: LitI2_Byte &HE
  loc_69BD1D: AddI2
  loc_69BD1E: FStI2 var_C2
  loc_69BD21: FLdI2 var_C2
  loc_69BD24: CI4UI1
  loc_69BD25: ILdI4 sValor
  loc_69BD28: FnLenStr
  loc_69BD29: LeI4
  loc_69BD2A: CVarBoolI2 var_278
  loc_69BD2E: LitVarI2 var_128, 1
  loc_69BD33: FLdI2 var_C2
  loc_69BD36: CI4UI1
  loc_69BD37: ILdRf sValor
  loc_69BD3A: CVarRef
  loc_69BD3F: FLdRfVar var_138
  loc_69BD42: ImpAdCallFPR4  = Mid(, , )
  loc_69BD47: FLdRfVar var_138
  loc_69BD4A: LitVarStr var_108, "|"
  loc_69BD4F: HardType
  loc_69BD50: NeVar var_148
  loc_69BD54: AndVar var_158
  loc_69BD58: CBoolVarNull
  loc_69BD5A: FFreeVar var_128 = "": var_138 = ""
  loc_69BD63: BranchF loc_69BE48
  loc_69BD66: LitVar_Missing var_128
  loc_69BD69: FLdI2 var_C2
  loc_69BD6C: CI4UI1
  loc_69BD6D: ILdRf sValor
  loc_69BD70: CVarRef
  loc_69BD75: FLdRfVar var_138
  loc_69BD78: ImpAdCallFPR4  = Mid(, , )
  loc_69BD7D: FLdI2 var_C2
  loc_69BD80: LitI2_Byte 3
  loc_69BD82: PopTmpLdAd2 var_27E
  loc_69BD85: FLdRfVar var_B4
  loc_69BD88: FLdRfVar var_AC
  loc_69BD8B: PopTmpLdAdStr var_27C
  loc_69BD8E: FLdRfVar var_138
  loc_69BD91: CStrVarTmp
  loc_69BD92: PopTmpLdAdStr
  loc_69BD96: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_69BD9B: AddI2
  loc_69BD9C: FStI2 var_C2
  loc_69BD9F: FFree1Str var_D8
  loc_69BDA2: FFreeVar var_128 = ""
  loc_69BDA9: LitStr "INSERT INTO RTADEBITOSBANCARIOS(nro_doc, importe_debito, flag_est )"
  loc_69BDAC: FStStrCopy var_BC
  loc_69BDAF: LitStr " VALUES ('"
  loc_69BDB2: LitI4 1
  loc_69BDB7: FLdRfVar var_AC
  loc_69BDBA: Ary1LdI4
  loc_69BDBB: ConcatStr
  loc_69BDBC: FStStrNoPop var_D8
  loc_69BDBF: LitStr "',"
  loc_69BDC2: ConcatStr
  loc_69BDC3: FStStrNoPop var_288
  loc_69BDC6: LitStr vbNullString
  loc_69BDC9: FStStrCopy var_284
  loc_69BDCC: FLdRfVar var_284
  loc_69BDCF: LitI2_Byte &HA
  loc_69BDD1: PopTmpLdAd2 var_27E
  loc_69BDD4: LitI4 2
  loc_69BDD9: FLdRfVar var_AC
  loc_69BDDC: Ary1LdRf
  loc_69BDDD: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_69BDE2: CStrR8
  loc_69BDE4: FStStrNoPop var_28C
  loc_69BDE7: ConcatStr
  loc_69BDE8: FStStrNoPop var_290
  loc_69BDEB: LitStr ",'"
  loc_69BDEE: ConcatStr
  loc_69BDEF: FStStrNoPop var_294
  loc_69BDF2: LitI4 3
  loc_69BDF7: FLdRfVar var_AC
  loc_69BDFA: Ary1LdI4
  loc_69BDFB: ConcatStr
  loc_69BDFC: FStStrNoPop var_298
  loc_69BDFF: LitStr "')"
  loc_69BE02: ConcatStr
  loc_69BE03: FStStr var_C0
  loc_69BE06: FFreeStr var_D8 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = ""
  loc_69BE17: ILdRf var_BC
  loc_69BE1A: ILdRf var_C0
  loc_69BE1D: ConcatStr
  loc_69BE1E: FStStr var_BC
  loc_69BE21: FLdRfVar var_BC
  loc_69BE24: CDargRef
  loc_69BE28: LitVarI4
  loc_69BE30: PopAdLdVar
  loc_69BE31: FLdRfVar var_118
  loc_69BE34: LdPrVar
  loc_69BE36: LateMemCall
  loc_69BE3C: FLdI2 var_C2
  loc_69BE3F: LitI2_Byte 2
  loc_69BE41: AddI2
  loc_69BE42: FStI2 var_C2
  loc_69BE45: Branch loc_69BD21
  loc_69BE48: FLdRfVar var_118
  loc_69BE4B: LdPrVar
  loc_69BE4D: LateMemCall
  loc_69BE53: ExitProcCbHresult
  loc_69BE59: FLdRfVar var_118
  loc_69BE5C: LdPrVar
  loc_69BE5E: LateMemCall
  loc_69BE64: FLdRfVar var_D8
  loc_69BE67: ImpAdCallI2 Err 'rtcErrObj
  loc_69BE6C: FStAdFunc var_D4
  loc_69BE6F: FLdPr var_D4
  loc_69BE72:  = Err.Description
  loc_69BE77: LitVar_Missing var_158
  loc_69BE7A: LitVar_Missing var_148
  loc_69BE7D: LitVar_Missing var_138
  loc_69BE80: LitI4 &H10
  loc_69BE85: FLdZeroAd var_D8
  loc_69BE88: CVarStr var_128
  loc_69BE8B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69BE90: FFree1Ad var_D4
  loc_69BE93: FFreeVar var_128 = "": var_138 = "": var_148 = ""
  loc_69BE9E: ExitProcCbHresult
End Function

Public Function MostrarReporte(valor, Imprimir) '6BE9B4
  'Data Table: 42D060
  loc_6BE158: OnErrorGoto loc_6BE8E8
  loc_6BE15B: ImpAdLdRf MemVar_74C760
  loc_6BE15E: NewIfNullPr Formx
  loc_6BE161: VCallAd Control_ID_CrystalReport1
  loc_6BE164: FStAdFunc var_8C
  loc_6BE167: LitI2_Byte 0
  loc_6BE169: CUI1I2
  loc_6BE16B: FLdRfVar var_96
  loc_6BE16E: LitI2_Byte &H32
  loc_6BE170: CUI1I2
  loc_6BE172: ForUI1 var_9A
  loc_6BE178: FLdUI1
  loc_6BE17C: CI2UI1
  loc_6BE17E: CVarI2 var_AC
  loc_6BE181: PopAdLdVar
  loc_6BE182: LitVarStr var_BC, vbNullString
  loc_6BE187: PopAdLdVar
  loc_6BE188: FLdPr var_8C
  loc_6BE18B: LateIdCallSt
  loc_6BE193: FLdRfVar var_96
  loc_6BE196: NextUI1
  loc_6BE19C: LitVar_FALSE
  loc_6BE1A0: PopAdLdVar
  loc_6BE1A1: FLdPr var_8C
  loc_6BE1A4: LateIdSt
  loc_6BE1A9: ILdI2 Imprimir
  loc_6BE1AC: BranchF loc_6BE1C3
  loc_6BE1AF: LitVarI4
  loc_6BE1B7: PopAdLdVar
  loc_6BE1B8: FLdPr var_8C
  loc_6BE1BB: LateIdSt
  loc_6BE1C0: Branch loc_6BE1D4
  loc_6BE1C3: LitVarI4
  loc_6BE1CB: PopAdLdVar
  loc_6BE1CC: FLdPr var_8C
  loc_6BE1CF: LateIdSt
  loc_6BE1D4: FLdPr Me
  loc_6BE1D7: MemLdStr TipoReporte
  loc_6BE1DA: FStStrCopy var_C0
  loc_6BE1DD: ILdRf var_C0
  loc_6BE1E0: LitStr "J"
  loc_6BE1E3: EqStr
  loc_6BE1E5: BranchT loc_6BE1F3
  loc_6BE1E8: ILdRf var_C0
  loc_6BE1EB: LitStr "I"
  loc_6BE1EE: EqStr
  loc_6BE1F0: BranchF loc_6BE440
  loc_6BE1F3: FLdRfVar var_C6
  loc_6BE1F6: FLdRfVar var_90
  loc_6BE1F9: FLdRfVar var_C4
  loc_6BE1FC: ImpAdLdRf MemVar_74C760
  loc_6BE1FF: NewIfNullPr Formx
  loc_6BE202: from_stack_1v = Formx.global_4589716Get()
  loc_6BE207: FLdPr var_C4
  loc_6BE20A:  = Formx.Picture
  loc_6BE20F: FLdI2 var_C6
  loc_6BE212: FFree1Ad var_C4
  loc_6BE215: BranchF loc_6BE276
  loc_6BE218: LitVarI2 var_D8, 50
  loc_6BE21D: LitI4 1
  loc_6BE222: FLdRfVar var_90
  loc_6BE225: CVarRef
  loc_6BE22A: FLdRfVar var_E8
  loc_6BE22D: ImpAdCallFPR4  = Mid(, , )
  loc_6BE232: FLdRfVar var_E8
  loc_6BE235: FLdRfVar var_F8
  loc_6BE238: ImpAdCallFPR4  = Trim()
  loc_6BE23D: FLdRfVar var_F8
  loc_6BE240: CStrVarTmp
  loc_6BE241: FStStr var_90
  loc_6BE244: FFreeVar var_D8 = "": var_E8 = ""
  loc_6BE24D: LitVarI2 var_AC, 0
  loc_6BE252: PopAdLdVar
  loc_6BE253: LitStr "DATOSEESS;"
  loc_6BE256: ILdRf var_90
  loc_6BE259: ConcatStr
  loc_6BE25A: FStStrNoPop var_FC
  loc_6BE25D: LitStr ";true"
  loc_6BE260: ConcatStr
  loc_6BE261: CVarStr var_D8
  loc_6BE264: PopAdLdVar
  loc_6BE265: FLdPr var_8C
  loc_6BE268: LateIdCallSt
  loc_6BE270: FFree1Str var_FC
  loc_6BE273: FFree1Var var_D8 = ""
  loc_6BE276: LitVarI2 var_AC, 1
  loc_6BE27B: PopAdLdVar
  loc_6BE27C: LitStr "sD2;"
  loc_6BE27F: LitI4 2
  loc_6BE284: FLdPr Me
  loc_6BE287: MemLdRfVar from_stack_1.global_60
  loc_6BE28A: Ary1LdI4
  loc_6BE28B: ConcatStr
  loc_6BE28C: FStStrNoPop var_FC
  loc_6BE28F: LitStr ";true"
  loc_6BE292: ConcatStr
  loc_6BE293: CVarStr var_D8
  loc_6BE296: PopAdLdVar
  loc_6BE297: FLdPr var_8C
  loc_6BE29A: LateIdCallSt
  loc_6BE2A2: FFree1Str var_FC
  loc_6BE2A5: FFree1Var var_D8 = ""
  loc_6BE2A8: LitVarI2 var_AC, 2
  loc_6BE2AD: PopAdLdVar
  loc_6BE2AE: LitStr "sD3;"
  loc_6BE2B1: LitI4 3
  loc_6BE2B6: FLdPr Me
  loc_6BE2B9: MemLdRfVar from_stack_1.global_60
  loc_6BE2BC: Ary1LdI4
  loc_6BE2BD: ConcatStr
  loc_6BE2BE: FStStrNoPop var_FC
  loc_6BE2C1: LitStr ";true"
  loc_6BE2C4: ConcatStr
  loc_6BE2C5: CVarStr var_D8
  loc_6BE2C8: PopAdLdVar
  loc_6BE2C9: FLdPr var_8C
  loc_6BE2CC: LateIdCallSt
  loc_6BE2D4: FFree1Str var_FC
  loc_6BE2D7: FFree1Var var_D8 = ""
  loc_6BE2DA: LitVarI2 var_AC, 3
  loc_6BE2DF: PopAdLdVar
  loc_6BE2E0: LitStr "sD4;"
  loc_6BE2E3: LitI4 4
  loc_6BE2E8: FLdPr Me
  loc_6BE2EB: MemLdRfVar from_stack_1.global_60
  loc_6BE2EE: Ary1LdI4
  loc_6BE2EF: ConcatStr
  loc_6BE2F0: FStStrNoPop var_FC
  loc_6BE2F3: LitStr ";true"
  loc_6BE2F6: ConcatStr
  loc_6BE2F7: CVarStr var_D8
  loc_6BE2FA: PopAdLdVar
  loc_6BE2FB: FLdPr var_8C
  loc_6BE2FE: LateIdCallSt
  loc_6BE306: FFree1Str var_FC
  loc_6BE309: FFree1Var var_D8 = ""
  loc_6BE30C: LitVarI2 var_AC, 4
  loc_6BE311: PopAdLdVar
  loc_6BE312: LitStr "sD5;"
  loc_6BE315: LitI4 5
  loc_6BE31A: FLdPr Me
  loc_6BE31D: MemLdRfVar from_stack_1.global_60
  loc_6BE320: Ary1LdI4
  loc_6BE321: ConcatStr
  loc_6BE322: FStStrNoPop var_FC
  loc_6BE325: LitStr ";true"
  loc_6BE328: ConcatStr
  loc_6BE329: CVarStr var_D8
  loc_6BE32C: PopAdLdVar
  loc_6BE32D: FLdPr var_8C
  loc_6BE330: LateIdCallSt
  loc_6BE338: FFree1Str var_FC
  loc_6BE33B: FFree1Var var_D8 = ""
  loc_6BE33E: LitVarI2 var_13C, 5
  loc_6BE343: PopAdLdVar
  loc_6BE344: LitVarStr var_10C, "NumeroRV;"
  loc_6BE349: LitVarI2 var_D8, 13
  loc_6BE34E: LitI4 &HC
  loc_6BE353: ILdRf valor
  loc_6BE356: CVarRef
  loc_6BE35B: FLdRfVar var_E8
  loc_6BE35E: ImpAdCallFPR4  = Mid(, , )
  loc_6BE363: FLdRfVar var_E8
  loc_6BE366: ConcatVar var_F8
  loc_6BE36A: LitVarStr var_11C, ";true"
  loc_6BE36F: ConcatVar var_12C
  loc_6BE373: CStrVarTmp
  loc_6BE374: CVarStr var_14C
  loc_6BE377: PopAdLdVar
  loc_6BE378: FLdPr var_8C
  loc_6BE37B: LateIdCallSt
  loc_6BE383: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_12C = ""
  loc_6BE390: LitVarI2 var_D8, 2
  loc_6BE395: LitI4 &HA
  loc_6BE39A: ILdRf valor
  loc_6BE39D: CVarRef
  loc_6BE3A2: FLdRfVar var_E8
  loc_6BE3A5: ImpAdCallFPR4  = Mid(, , )
  loc_6BE3AA: FLdRfVar var_E8
  loc_6BE3AD: LitVarStr var_10C, "A1"
  loc_6BE3B2: HardType
  loc_6BE3B3: EqVarBool
  loc_6BE3B5: FFreeVar var_D8 = ""
  loc_6BE3BC: BranchF loc_6BE3EB
  loc_6BE3BF: LitVarI2 var_AC, 6
  loc_6BE3C4: PopAdLdVar
  loc_6BE3C5: LitStr "TipoAjuste;"
  loc_6BE3C8: LitStr "1"
  loc_6BE3CB: ConcatStr
  loc_6BE3CC: FStStrNoPop var_FC
  loc_6BE3CF: LitStr ";true"
  loc_6BE3D2: ConcatStr
  loc_6BE3D3: CVarStr var_D8
  loc_6BE3D6: PopAdLdVar
  loc_6BE3D7: FLdPr var_8C
  loc_6BE3DA: LateIdCallSt
  loc_6BE3E2: FFree1Str var_FC
  loc_6BE3E5: FFree1Var var_D8 = ""
  loc_6BE3E8: Branch loc_6BE414
  loc_6BE3EB: LitVarI2 var_AC, 6
  loc_6BE3F0: PopAdLdVar
  loc_6BE3F1: LitStr "TipoAjuste;"
  loc_6BE3F4: LitStr "0"
  loc_6BE3F7: ConcatStr
  loc_6BE3F8: FStStrNoPop var_FC
  loc_6BE3FB: LitStr ";true"
  loc_6BE3FE: ConcatStr
  loc_6BE3FF: CVarStr var_D8
  loc_6BE402: PopAdLdVar
  loc_6BE403: FLdPr var_8C
  loc_6BE406: LateIdCallSt
  loc_6BE40E: FFree1Str var_FC
  loc_6BE411: FFree1Var var_D8 = ""
  loc_6BE414: FLdRfVar var_FC
  loc_6BE417: FLdRfVar var_C4
  loc_6BE41A: ImpAdLdRf MemVar_7520D4
  loc_6BE41D: NewIfNullPr Global
  loc_6BE420:  = Global.App
  loc_6BE425: FLdPr var_C4
  loc_6BE428:  = App.Path
  loc_6BE42D: ILdRf var_FC
  loc_6BE430: LitStr "\AjusteRend.rpt"
  loc_6BE433: ConcatStr
  loc_6BE434: FStStr MostrarReporte
  loc_6BE437: FFree1Str var_FC
  loc_6BE43A: FFree1Ad var_C4
  loc_6BE43D: Branch loc_6BE83E
  loc_6BE440: ILdRf var_C0
  loc_6BE443: LitStr "G"
  loc_6BE446: EqStr
  loc_6BE448: BranchT loc_6BE461
  loc_6BE44B: ILdRf var_C0
  loc_6BE44E: LitStr "F"
  loc_6BE451: EqStr
  loc_6BE453: BranchT loc_6BE461
  loc_6BE456: ILdRf var_C0
  loc_6BE459: LitStr "L"
  loc_6BE45C: EqStr
  loc_6BE45E: BranchF loc_6BE4ED
  loc_6BE461: ILdI4 valor
  loc_6BE464: LitStr vbNullString
  loc_6BE467: NeStr
  loc_6BE469: BranchF loc_6BE4C1
  loc_6BE46C: LitVarI2 var_AC, 0
  loc_6BE471: PopAdLdVar
  loc_6BE472: LitStr "periodo;"
  loc_6BE475: ILdI4 valor
  loc_6BE478: ConcatStr
  loc_6BE479: FStStrNoPop var_FC
  loc_6BE47C: LitStr ";true"
  loc_6BE47F: ConcatStr
  loc_6BE480: CVarStr var_D8
  loc_6BE483: PopAdLdVar
  loc_6BE484: FLdPr var_8C
  loc_6BE487: LateIdCallSt
  loc_6BE48F: FFree1Str var_FC
  loc_6BE492: FFree1Var var_D8 = ""
  loc_6BE495: FLdRfVar var_FC
  loc_6BE498: FLdRfVar var_C4
  loc_6BE49B: ImpAdLdRf MemVar_7520D4
  loc_6BE49E: NewIfNullPr Global
  loc_6BE4A1:  = Global.App
  loc_6BE4A6: FLdPr var_C4
  loc_6BE4A9:  = App.Path
  loc_6BE4AE: ILdRf var_FC
  loc_6BE4B1: LitStr "\anexos.rpt"
  loc_6BE4B4: ConcatStr
  loc_6BE4B5: FStStr MostrarReporte
  loc_6BE4B8: FFree1Str var_FC
  loc_6BE4BB: FFree1Ad var_C4
  loc_6BE4BE: Branch loc_6BE4EA
  loc_6BE4C1: FLdRfVar var_FC
  loc_6BE4C4: FLdRfVar var_C4
  loc_6BE4C7: ImpAdLdRf MemVar_7520D4
  loc_6BE4CA: NewIfNullPr Global
  loc_6BE4CD:  = Global.App
  loc_6BE4D2: FLdPr var_C4
  loc_6BE4D5:  = App.Path
  loc_6BE4DA: ILdRf var_FC
  loc_6BE4DD: LitStr "\Rendicion.rpt"
  loc_6BE4E0: ConcatStr
  loc_6BE4E1: FStStr MostrarReporte
  loc_6BE4E4: FFree1Str var_FC
  loc_6BE4E7: FFree1Ad var_C4
  loc_6BE4EA: Branch loc_6BE83E
  loc_6BE4ED: ILdRf var_C0
  loc_6BE4F0: LitStr "B"
  loc_6BE4F3: EqStr
  loc_6BE4F5: BranchF loc_6BE6B6
  loc_6BE4F8: FLdRfVar var_C6
  loc_6BE4FB: FLdRfVar var_90
  loc_6BE4FE: FLdRfVar var_C4
  loc_6BE501: ImpAdLdRf MemVar_74C760
  loc_6BE504: NewIfNullPr Formx
  loc_6BE507: from_stack_1v = Formx.global_4589716Get()
  loc_6BE50C: FLdPr var_C4
  loc_6BE50F:  = Formx.Picture
  loc_6BE514: FLdI2 var_C6
  loc_6BE517: FFree1Ad var_C4
  loc_6BE51A: BranchF loc_6BE583
  loc_6BE51D: LitVarI2 var_D8, 30
  loc_6BE522: LitI4 7
  loc_6BE527: FLdRfVar var_90
  loc_6BE52A: CVarRef
  loc_6BE52F: FLdRfVar var_E8
  loc_6BE532: ImpAdCallFPR4  = Mid(, , )
  loc_6BE537: FLdRfVar var_E8
  loc_6BE53A: FLdRfVar var_F8
  loc_6BE53D: ImpAdCallFPR4  = Trim()
  loc_6BE542: FLdRfVar var_F8
  loc_6BE545: FStVar var_15C
  loc_6BE549: FFreeVar var_D8 = ""
  loc_6BE550: LitVarI2 var_D8, 6
  loc_6BE555: LitI4 1
  loc_6BE55A: FLdRfVar var_90
  loc_6BE55D: CVarRef
  loc_6BE562: FLdRfVar var_E8
  loc_6BE565: ImpAdCallFPR4  = Mid(, , )
  loc_6BE56A: FLdRfVar var_E8
  loc_6BE56D: FLdRfVar var_F8
  loc_6BE570: ImpAdCallFPR4  = Trim()
  loc_6BE575: FLdRfVar var_F8
  loc_6BE578: FStVar var_16C
  loc_6BE57C: FFreeVar var_D8 = ""
  loc_6BE583: ILdI4 valor
  loc_6BE586: IStStrCopy valor
  loc_6BE58A: LitVarI2 var_AC, 0
  loc_6BE58F: PopAdLdVar
  loc_6BE590: LitStr "fechayhora;"
  loc_6BE593: ILdI4 valor
  loc_6BE596: ConcatStr
  loc_6BE597: FStStrNoPop var_FC
  loc_6BE59A: LitStr ";true"
  loc_6BE59D: ConcatStr
  loc_6BE59E: CVarStr var_D8
  loc_6BE5A1: PopAdLdVar
  loc_6BE5A2: FLdPr var_8C
  loc_6BE5A5: LateIdCallSt
  loc_6BE5AD: FFree1Str var_FC
  loc_6BE5B0: FFree1Var var_D8 = ""
  loc_6BE5B3: LitVarI2 var_10C, 1
  loc_6BE5B8: PopAdLdVar
  loc_6BE5B9: LitVarStr var_AC, "apies;"
  loc_6BE5BE: FLdRfVar var_16C
  loc_6BE5C1: ConcatVar var_D8
  loc_6BE5C5: LitVarStr var_BC, ";true"
  loc_6BE5CA: ConcatVar var_E8
  loc_6BE5CE: CStrVarTmp
  loc_6BE5CF: CVarStr var_F8
  loc_6BE5D2: PopAdLdVar
  loc_6BE5D3: FLdPr var_8C
  loc_6BE5D6: LateIdCallSt
  loc_6BE5DE: FFreeVar var_D8 = "": var_E8 = ""
  loc_6BE5E7: LitVarI2 var_10C, 2
  loc_6BE5EC: PopAdLdVar
  loc_6BE5ED: LitVarStr var_AC, "razonsocial;"
  loc_6BE5F2: FLdRfVar var_15C
  loc_6BE5F5: ConcatVar var_D8
  loc_6BE5F9: LitVarStr var_BC, ";true"
  loc_6BE5FE: ConcatVar var_E8
  loc_6BE602: CStrVarTmp
  loc_6BE603: CVarStr var_F8
  loc_6BE606: PopAdLdVar
  loc_6BE607: FLdPr var_8C
  loc_6BE60A: LateIdCallSt
  loc_6BE612: FFreeVar var_D8 = "": var_E8 = ""
  loc_6BE61B: LitVarI2 var_AC, 3
  loc_6BE620: PopAdLdVar
  loc_6BE621: LitStr "NumeroCuenta;"
  loc_6BE624: FLdPr Me
  loc_6BE627: MemLdStr global_128
  loc_6BE62A: ConcatStr
  loc_6BE62B: FStStrNoPop var_FC
  loc_6BE62E: LitStr ";true"
  loc_6BE631: ConcatStr
  loc_6BE632: CVarStr var_D8
  loc_6BE635: PopAdLdVar
  loc_6BE636: FLdPr var_8C
  loc_6BE639: LateIdCallSt
  loc_6BE641: FFree1Str var_FC
  loc_6BE644: FFree1Var var_D8 = ""
  loc_6BE647: FLdRfVar var_FC
  loc_6BE64A: FLdRfVar var_C4
  loc_6BE64D: ImpAdLdRf MemVar_7520D4
  loc_6BE650: NewIfNullPr Global
  loc_6BE653:  = Global.App
  loc_6BE658: FLdPr var_C4
  loc_6BE65B:  = App.Path
  loc_6BE660: ILdRf var_FC
  loc_6BE663: LitStr "\debitosredxxi.rpt"
  loc_6BE666: ConcatStr
  loc_6BE667: FStStr MostrarReporte
  loc_6BE66A: FFree1Str var_FC
  loc_6BE66D: FFree1Ad var_C4
  loc_6BE670: FLdRfVar MostrarReporte
  loc_6BE673: CDargRef
  loc_6BE677: FLdPr var_8C
  loc_6BE67A: LateIdSt
  loc_6BE67F: LitVarI2 var_D8, 1
  loc_6BE684: LitI4 4
  loc_6BE689: ImpAdLdI4 MemVar_74BEAC
  loc_6BE68C: ImpAdCallI2 Mid$(, , )
  loc_6BE691: FStStrNoPop var_FC
  loc_6BE694: LitStr "1"
  loc_6BE697: EqStr
  loc_6BE699: FFree1Str var_FC
  loc_6BE69C: FFree1Var var_D8 = ""
  loc_6BE69F: BranchF loc_6BE6AE
  loc_6BE6A2: LitVar_TRUE var_AC
  loc_6BE6A5: PopAdLdVar
  loc_6BE6A6: FLdPr var_8C
  loc_6BE6A9: LateIdSt
  loc_6BE6AE: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6BE6B3: Branch loc_6BE83E
  loc_6BE6B6: ILdRf var_C0
  loc_6BE6B9: LitStr "C"
  loc_6BE6BC: EqStr
  loc_6BE6BE: BranchF loc_6BE83E
  loc_6BE6C1: FLdRfVar var_C6
  loc_6BE6C4: FLdRfVar var_90
  loc_6BE6C7: FLdRfVar var_C4
  loc_6BE6CA: ImpAdLdRf MemVar_74C760
  loc_6BE6CD: NewIfNullPr Formx
  loc_6BE6D0: from_stack_1v = Formx.global_4589716Get()
  loc_6BE6D5: FLdPr var_C4
  loc_6BE6D8:  = Formx.Picture
  loc_6BE6DD: FLdI2 var_C6
  loc_6BE6E0: FFree1Ad var_C4
  loc_6BE6E3: BranchF loc_6BE801
  loc_6BE6E6: LitVarI2 var_13C, 0
  loc_6BE6EB: PopAdLdVar
  loc_6BE6EC: LitVarStr var_10C, "pPlanta;"
  loc_6BE6F1: LitVarI2 var_D8, 6
  loc_6BE6F6: LitI4 1
  loc_6BE6FB: FLdRfVar var_90
  loc_6BE6FE: CVarRef
  loc_6BE703: FLdRfVar var_E8
  loc_6BE706: ImpAdCallFPR4  = Mid(, , )
  loc_6BE70B: FLdRfVar var_E8
  loc_6BE70E: FLdRfVar var_F8
  loc_6BE711: ImpAdCallFPR4  = Trim()
  loc_6BE716: FLdRfVar var_F8
  loc_6BE719: ConcatVar var_12C
  loc_6BE71D: LitVarStr var_11C, ";true"
  loc_6BE722: ConcatVar var_14C
  loc_6BE726: CStrVarTmp
  loc_6BE727: CVarStr var_17C
  loc_6BE72A: PopAdLdVar
  loc_6BE72B: FLdPr var_8C
  loc_6BE72E: LateIdCallSt
  loc_6BE736: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_12C = "": var_14C = ""
  loc_6BE745: LitVarI2 var_13C, 1
  loc_6BE74A: PopAdLdVar
  loc_6BE74B: LitVarStr var_10C, "pRazonSocial;"
  loc_6BE750: LitVarI2 var_D8, 30
  loc_6BE755: LitI4 7
  loc_6BE75A: FLdRfVar var_90
  loc_6BE75D: CVarRef
  loc_6BE762: FLdRfVar var_E8
  loc_6BE765: ImpAdCallFPR4  = Mid(, , )
  loc_6BE76A: FLdRfVar var_E8
  loc_6BE76D: FLdRfVar var_F8
  loc_6BE770: ImpAdCallFPR4  = Trim()
  loc_6BE775: FLdRfVar var_F8
  loc_6BE778: ConcatVar var_12C
  loc_6BE77C: LitVarStr var_11C, ";true"
  loc_6BE781: ConcatVar var_14C
  loc_6BE785: CStrVarTmp
  loc_6BE786: CVarStr var_17C
  loc_6BE789: PopAdLdVar
  loc_6BE78A: FLdPr var_8C
  loc_6BE78D: LateIdCallSt
  loc_6BE795: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_12C = "": var_14C = ""
  loc_6BE7A4: LitVarI2 var_13C, 2
  loc_6BE7A9: PopAdLdVar
  loc_6BE7AA: LitVarStr var_10C, "pDireccion;"
  loc_6BE7AF: LitVar_Missing var_D8
  loc_6BE7B2: LitI4 &H25
  loc_6BE7B7: FLdRfVar var_90
  loc_6BE7BA: CVarRef
  loc_6BE7BF: FLdRfVar var_E8
  loc_6BE7C2: ImpAdCallFPR4  = Mid(, , )
  loc_6BE7C7: FLdRfVar var_E8
  loc_6BE7CA: FLdRfVar var_F8
  loc_6BE7CD: ImpAdCallFPR4  = Trim()
  loc_6BE7D2: FLdRfVar var_F8
  loc_6BE7D5: ConcatVar var_12C
  loc_6BE7D9: LitVarStr var_11C, ";true"
  loc_6BE7DE: ConcatVar var_14C
  loc_6BE7E2: CStrVarTmp
  loc_6BE7E3: CVarStr var_17C
  loc_6BE7E6: PopAdLdVar
  loc_6BE7E7: FLdPr var_8C
  loc_6BE7EA: LateIdCallSt
  loc_6BE7F2: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_12C = "": var_14C = ""
  loc_6BE801: FLdRfVar var_FC
  loc_6BE804: FLdRfVar var_C4
  loc_6BE807: ImpAdLdRf MemVar_7520D4
  loc_6BE80A: NewIfNullPr Global
  loc_6BE80D:  = Global.App
  loc_6BE812: FLdPr var_C4
  loc_6BE815:  = App.Path
  loc_6BE81A: ILdRf var_FC
  loc_6BE81D: LitStr "\comisiones.rpt"
  loc_6BE820: ConcatStr
  loc_6BE821: FStStr MostrarReporte
  loc_6BE824: FFree1Str var_FC
  loc_6BE827: FFree1Ad var_C4
  loc_6BE82A: FLdRfVar MostrarReporte
  loc_6BE82D: CDargRef
  loc_6BE831: FLdPr var_8C
  loc_6BE834: LateIdSt
  loc_6BE839: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6BE83E: FLdRfVar MostrarReporte
  loc_6BE841: CDargRef
  loc_6BE845: FLdPr var_8C
  loc_6BE848: LateIdSt
  loc_6BE84D: FLdPr Me
  loc_6BE850: MemLdStr TipoReporte
  loc_6BE853: LitStr "B"
  loc_6BE856: NeStr
  loc_6BE858: FLdPr Me
  loc_6BE85B: MemLdStr TipoReporte
  loc_6BE85E: LitStr "C"
  loc_6BE861: NeStr
  loc_6BE863: AndI4
  loc_6BE864: BranchF loc_6BE8CC
  loc_6BE867: ILdI2 Imprimir
  loc_6BE86A: NotI4
  loc_6BE86B: BranchF loc_6BE876
  loc_6BE86E: LitI2_Byte 1
  loc_6BE870: FLdPr Me
  loc_6BE873: MemStI2 global_116
  loc_6BE876: LitI2_Byte 1
  loc_6BE878: CUI1I2
  loc_6BE87A: FLdRfVar var_96
  loc_6BE87D: FLdPr Me
  loc_6BE880: MemLdI2 global_116
  loc_6BE883: CUI1I2
  loc_6BE885: ForUI1 var_180
  loc_6BE88B: LitVarI2 var_AC, 7
  loc_6BE890: PopAdLdVar
  loc_6BE891: LitStr "QCpy;"
  loc_6BE894: FLdUI1
  loc_6BE898: CStrI2
  loc_6BE89A: FStStrNoPop var_FC
  loc_6BE89D: ConcatStr
  loc_6BE89E: FStStrNoPop var_184
  loc_6BE8A1: LitStr ";true"
  loc_6BE8A4: ConcatStr
  loc_6BE8A5: CVarStr var_D8
  loc_6BE8A8: PopAdLdVar
  loc_6BE8A9: FLdPr var_8C
  loc_6BE8AC: LateIdCallSt
  loc_6BE8B4: FFreeStr var_FC = ""
  loc_6BE8BB: FFree1Var var_D8 = ""
  loc_6BE8BE: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6BE8C3: FLdRfVar var_96
  loc_6BE8C6: NextUI1
  loc_6BE8CC: ILdI2 Imprimir
  loc_6BE8CF: NotI4
  loc_6BE8D0: BranchF loc_6BE8DD
  loc_6BE8D3: LitI2_Byte &HFF
  loc_6BE8D5: PopTmpLdAd2 var_C6
  loc_6BE8D8: ImpAdCallFPR4 Proc_87_1_630780()
  loc_6BE8DD: LitI2_Byte &HFF
  loc_6BE8DF: FStI2 var_86
  loc_6BE8E2: ExitProcCbHresult
  loc_6BE8E8: FLdRfVar var_188
  loc_6BE8EB: ImpAdCallI2 Err 'rtcErrObj
  loc_6BE8F0: FStAdFunc var_C4
  loc_6BE8F3: FLdPr var_C4
  loc_6BE8F6:  = Err.Number
  loc_6BE8FB: ILdRf var_188
  loc_6BE8FE: LitI4 &H5028
  loc_6BE903: EqI4
  loc_6BE904: FFree1Ad var_C4
  loc_6BE907: BranchF loc_6BE93E
  loc_6BE90A: LitVar_Missing var_12C
  loc_6BE90D: LitVar_Missing var_F8
  loc_6BE910: LitVarStr var_BC, "Reportes"
  loc_6BE915: FStVarCopyObj var_E8
  loc_6BE918: FLdRfVar var_E8
  loc_6BE91B: LitI4 &H40
  loc_6BE920: LitVarStr var_AC, "Los archivos estan siendo utilizados. Reintente por favor."
  loc_6BE925: FStVarCopyObj var_D8
  loc_6BE928: FLdRfVar var_D8
  loc_6BE92B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BE930: FFreeVar var_D8 = "": var_E8 = "": var_F8 = ""
  loc_6BE93B: Branch loc_6BE9AD
  loc_6BE93E: LitI2_Byte 0
  loc_6BE940: FStI2 var_86
  loc_6BE943: LitVar_Missing var_12C
  loc_6BE946: LitVar_Missing var_F8
  loc_6BE949: LitVar_Missing var_E8
  loc_6BE94C: LitI4 0
  loc_6BE951: FLdRfVar var_188
  loc_6BE954: ImpAdCallI2 Err 'rtcErrObj
  loc_6BE959: FStAdFunc var_C4
  loc_6BE95C: FLdPr var_C4
  loc_6BE95F:  = Err.Number
  loc_6BE964: ILdRf var_188
  loc_6BE967: CStrI4
  loc_6BE969: FStStrNoPop var_FC
  loc_6BE96C: LitStr " "
  loc_6BE96F: ConcatStr
  loc_6BE970: FStStrNoPop var_190
  loc_6BE973: FLdRfVar var_184
  loc_6BE976: ImpAdCallI2 Err 'rtcErrObj
  loc_6BE97B: FStAdFunc var_18C
  loc_6BE97E: FLdPr var_18C
  loc_6BE981:  = Err.Description
  loc_6BE986: ILdRf var_184
  loc_6BE989: ConcatStr
  loc_6BE98A: CVarStr var_D8
  loc_6BE98D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BE992: FFreeStr var_FC = "": var_190 = ""
  loc_6BE99B: FFreeAd var_C4 = ""
  loc_6BE9A2: FFreeVar var_D8 = "": var_E8 = "": var_F8 = ""
  loc_6BE9AD: ExitProcCbHresult
  loc_6BE9B3: Ary1LdI4
End Function

Public Function ArmarReporteRV(sValor) '71CC58
  'Data Table: 42D060
  loc_71AE6C: OnErrorGoto loc_71CB13
  loc_71AE6F: FLdRfVar var_D0
  loc_71AE72: FLdRfVar var_CC
  loc_71AE75: ImpAdLdRf MemVar_7520D4
  loc_71AE78: NewIfNullPr Global
  loc_71AE7B:  = Global.App
  loc_71AE80: FLdPr var_CC
  loc_71AE83:  = App.Path
  loc_71AE88: ILdRf var_D0
  loc_71AE8B: LitStr "\REPORTE.MDB"
  loc_71AE8E: ConcatStr
  loc_71AE8F: FStStr var_A8
  loc_71AE92: FFree1Str var_D0
  loc_71AE95: FFree1Ad var_CC
  loc_71AE98: FLdRfVar var_CC
  loc_71AE9B: LitVar_Missing var_100
  loc_71AE9E: PopAdLdVar
  loc_71AE9F: LitVar_Missing var_F0
  loc_71AEA2: PopAdLdVar
  loc_71AEA3: LitVar_TRUE var_E0
  loc_71AEA6: PopAdLdVar
  loc_71AEA7: ILdRf var_A8
  loc_71AEAA: ImpAdLdRf MemVar_752164
  loc_71AEAD: NewIfNullPr Me
  loc_71AEB0: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_71AEB5: FLdZeroAd var_CC
  loc_71AEB8: FStAdFunc var_BC
  loc_71AEBB: LitVarI4
  loc_71AEC3: PopAdLdVar
  loc_71AEC4: LitStr "Delete * from ARVCabecera "
  loc_71AEC7: FLdPr var_BC
  loc_71AECA: Me.Execute from_stack_1, from_stack_2
  loc_71AECF: LitVarI4
  loc_71AED7: PopAdLdVar
  loc_71AED8: LitStr "Delete * from ARVD1 "
  loc_71AEDB: FLdPr var_BC
  loc_71AEDE: Me.Execute from_stack_1, from_stack_2
  loc_71AEE3: LitVarI4
  loc_71AEEB: PopAdLdVar
  loc_71AEEC: LitStr "Delete * from ARVD1_1 "
  loc_71AEEF: FLdPr var_BC
  loc_71AEF2: Me.Execute from_stack_1, from_stack_2
  loc_71AEF7: LitVarI4
  loc_71AEFF: PopAdLdVar
  loc_71AF00: LitStr "Delete * from ARVD2 "
  loc_71AF03: FLdPr var_BC
  loc_71AF06: Me.Execute from_stack_1, from_stack_2
  loc_71AF0B: LitVarI4
  loc_71AF13: PopAdLdVar
  loc_71AF14: LitStr "Delete * from ARVD3 "
  loc_71AF17: FLdPr var_BC
  loc_71AF1A: Me.Execute from_stack_1, from_stack_2
  loc_71AF1F: LitVarI4
  loc_71AF27: PopAdLdVar
  loc_71AF28: LitStr "Delete * from ARVD4 "
  loc_71AF2B: FLdPr var_BC
  loc_71AF2E: Me.Execute from_stack_1, from_stack_2
  loc_71AF33: LitVarI4
  loc_71AF3B: PopAdLdVar
  loc_71AF3C: LitStr "Delete * from ARVD5 "
  loc_71AF3F: FLdPr var_BC
  loc_71AF42: Me.Execute from_stack_1, from_stack_2
  loc_71AF47: LitVarI4
  loc_71AF4F: PopAdLdVar
  loc_71AF50: LitStr "Delete * from ARVD6 "
  loc_71AF53: FLdPr var_BC
  loc_71AF56: Me.Execute from_stack_1, from_stack_2
  loc_71AF5B: LitI4 9
  loc_71AF60: FLdRfVar var_110
  loc_71AF63: ImpAdCallFPR4  = Chr()
  loc_71AF68: FLdRfVar var_110
  loc_71AF6B: LitI4 2
  loc_71AF70: FLdRfVar var_120
  loc_71AF73: ImpAdCallFPR4  = Chr()
  loc_71AF78: FLdRfVar var_120
  loc_71AF7B: ConcatVar var_130
  loc_71AF7F: LitI4 &HD
  loc_71AF84: FLdRfVar var_140
  loc_71AF87: ImpAdCallFPR4  = Chr()
  loc_71AF8C: FLdRfVar var_140
  loc_71AF8F: ConcatVar var_150
  loc_71AF93: LitI4 2
  loc_71AF98: FLdRfVar var_160
  loc_71AF9B: ImpAdCallFPR4  = Chr()
  loc_71AFA0: FLdRfVar var_160
  loc_71AFA3: ConcatVar var_170
  loc_71AFA7: CStrVarTmp
  loc_71AFA8: FStStr var_A4
  loc_71AFAB: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = ""
  loc_71AFBC: LitI4 1
  loc_71AFC1: FStR4 var_B8
  loc_71AFC4: LitVar_Missing var_110
  loc_71AFC7: ILdRf var_B8
  loc_71AFCA: ILdRf sValor
  loc_71AFCD: CVarRef
  loc_71AFD2: FLdRfVar var_120
  loc_71AFD5: ImpAdCallFPR4  = Mid(, , )
  loc_71AFDA: LitI2_Byte 4
  loc_71AFDC: PopTmpLdAd2 var_176
  loc_71AFDF: FLdRfVar var_A4
  loc_71AFE2: FLdRfVar var_A0
  loc_71AFE5: PopTmpLdAdStr var_174
  loc_71AFE8: FLdRfVar var_120
  loc_71AFEB: CStrVarTmp
  loc_71AFEC: PopTmpLdAdStr
  loc_71AFF0: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71AFF5: CI4UI1
  loc_71AFF6: FStR4 var_B8
  loc_71AFF9: FFree1Str var_D0
  loc_71AFFC: FFreeVar var_110 = ""
  loc_71B003: LitVarI2 var_110, 7
  loc_71B008: LitI4 1
  loc_71B00D: LitI4 1
  loc_71B012: FLdRfVar var_A0
  loc_71B015: Ary1LdRf
  loc_71B016: CVarRef
  loc_71B01B: FLdRfVar var_120
  loc_71B01E: ImpAdCallFPR4  = Mid(, , )
  loc_71B023: FLdRfVar var_120
  loc_71B026: CStrVarTmp
  loc_71B027: FStStrNoPop var_D0
  loc_71B02A: LitI4 1
  loc_71B02F: FLdRfVar var_A0
  loc_71B032: Ary1StStrCopy
  loc_71B033: FFree1Str var_D0
  loc_71B036: FFreeVar var_110 = ""
  loc_71B03D: LitStr "INSERT INTO ARVCabecera (version, ctrv, nurv, treg ) VALUES ('"
  loc_71B040: LitI4 1
  loc_71B045: FLdRfVar var_A0
  loc_71B048: Ary1LdI4
  loc_71B049: ConcatStr
  loc_71B04A: FStStrNoPop var_D0
  loc_71B04D: LitStr "', '"
  loc_71B050: ConcatStr
  loc_71B051: FStStrNoPop var_17C
  loc_71B054: LitI4 2
  loc_71B059: FLdRfVar var_A0
  loc_71B05C: Ary1LdI4
  loc_71B05D: ConcatStr
  loc_71B05E: FStStrNoPop var_180
  loc_71B061: LitStr "', '"
  loc_71B064: ConcatStr
  loc_71B065: FStStrNoPop var_184
  loc_71B068: LitI4 3
  loc_71B06D: FLdRfVar var_A0
  loc_71B070: Ary1LdI4
  loc_71B071: ConcatStr
  loc_71B072: FStStrNoPop var_188
  loc_71B075: LitStr "','"
  loc_71B078: ConcatStr
  loc_71B079: FStStrNoPop var_18C
  loc_71B07C: LitI4 4
  loc_71B081: FLdRfVar var_A0
  loc_71B084: Ary1LdI4
  loc_71B085: ConcatStr
  loc_71B086: FStStrNoPop var_190
  loc_71B089: LitStr "')"
  loc_71B08C: ConcatStr
  loc_71B08D: FStStr var_AC
  loc_71B090: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_71B0A1: LitVarI4
  loc_71B0A9: PopAdLdVar
  loc_71B0AA: ILdRf var_AC
  loc_71B0AD: FLdPr var_BC
  loc_71B0B0: Me.Execute from_stack_1, from_stack_2
  loc_71B0B5: LitI4 &H19
  loc_71B0BA: FStR4 var_B8
  loc_71B0BD: LitVarI2 var_110, 2
  loc_71B0C2: ILdRf var_B8
  loc_71B0C5: ILdRf sValor
  loc_71B0C8: CVarRef
  loc_71B0CD: FLdRfVar var_120
  loc_71B0D0: ImpAdCallFPR4  = Mid(, , )
  loc_71B0D5: FLdRfVar var_120
  loc_71B0D8: CStrVarTmp
  loc_71B0D9: FStStr var_C4
  loc_71B0DC: FFreeVar var_110 = ""
  loc_71B0E3: LitI2_Byte &HFF
  loc_71B0E5: FStI2 var_C6
  loc_71B0E8: ILdRf var_B8
  loc_71B0EB: ILdI4 sValor
  loc_71B0EE: FnLenStr
  loc_71B0EF: LeI4
  loc_71B0F0: BranchF loc_71CB00
  loc_71B0F3: ILdRf var_C4
  loc_71B0F6: FStStrCopy var_194
  loc_71B0F9: ILdRf var_194
  loc_71B0FC: LitStr "D1"
  loc_71B0FF: EqStr
  loc_71B101: BranchF loc_71B8F8
  loc_71B104: LitI4 8
  loc_71B109: FLdRfVar var_110
  loc_71B10C: ImpAdCallFPR4  = Chr()
  loc_71B111: FLdRfVar var_110
  loc_71B114: LitI4 6
  loc_71B119: FLdRfVar var_120
  loc_71B11C: ImpAdCallFPR4  = Chr()
  loc_71B121: FLdRfVar var_120
  loc_71B124: ConcatVar var_130
  loc_71B128: LitI4 &H20
  loc_71B12D: FLdRfVar var_140
  loc_71B130: ImpAdCallFPR4  = Chr()
  loc_71B135: FLdRfVar var_140
  loc_71B138: ConcatVar var_150
  loc_71B13C: LitI4 &HF
  loc_71B141: FLdRfVar var_160
  loc_71B144: ImpAdCallFPR4  = Chr()
  loc_71B149: FLdRfVar var_160
  loc_71B14C: ConcatVar var_170
  loc_71B150: LitI4 &H1E
  loc_71B155: FLdRfVar var_1A4
  loc_71B158: ImpAdCallFPR4  = Chr()
  loc_71B15D: FLdRfVar var_1A4
  loc_71B160: ConcatVar var_1B4
  loc_71B164: LitI4 &H1E
  loc_71B169: FLdRfVar var_1C4
  loc_71B16C: ImpAdCallFPR4  = Chr()
  loc_71B171: FLdRfVar var_1C4
  loc_71B174: ConcatVar var_1D4
  loc_71B178: LitI4 &H19
  loc_71B17D: FLdRfVar var_1E4
  loc_71B180: ImpAdCallFPR4  = Chr()
  loc_71B185: FLdRfVar var_1E4
  loc_71B188: ConcatVar var_1F4
  loc_71B18C: LitI4 8
  loc_71B191: FLdRfVar var_204
  loc_71B194: ImpAdCallFPR4  = Chr()
  loc_71B199: FLdRfVar var_204
  loc_71B19C: ConcatVar var_214
  loc_71B1A0: LitI4 &HA
  loc_71B1A5: FLdRfVar var_224
  loc_71B1A8: ImpAdCallFPR4  = Chr()
  loc_71B1AD: FLdRfVar var_224
  loc_71B1B0: ConcatVar var_234
  loc_71B1B4: CStrVarTmp
  loc_71B1B5: FStStr var_A4
  loc_71B1B8: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = ""
  loc_71B1DD: ILdRf var_A4
  loc_71B1E0: CVarStr var_E0
  loc_71B1E3: LitI4 &H14
  loc_71B1E8: FLdRfVar var_110
  loc_71B1EB: ImpAdCallFPR4  = Chr()
  loc_71B1F0: FLdRfVar var_110
  loc_71B1F3: ConcatVar var_120
  loc_71B1F7: LitI4 &HD
  loc_71B1FC: FLdRfVar var_130
  loc_71B1FF: ImpAdCallFPR4  = Chr()
  loc_71B204: FLdRfVar var_130
  loc_71B207: ConcatVar var_140
  loc_71B20B: LitI4 8
  loc_71B210: FLdRfVar var_150
  loc_71B213: ImpAdCallFPR4  = Chr()
  loc_71B218: FLdRfVar var_150
  loc_71B21B: ConcatVar var_160
  loc_71B21F: LitI4 8
  loc_71B224: FLdRfVar var_170
  loc_71B227: ImpAdCallFPR4  = Chr()
  loc_71B22C: FLdRfVar var_170
  loc_71B22F: ConcatVar var_1A4
  loc_71B233: LitI4 &HD
  loc_71B238: FLdRfVar var_1B4
  loc_71B23B: ImpAdCallFPR4  = Chr()
  loc_71B240: FLdRfVar var_1B4
  loc_71B243: ConcatVar var_1C4
  loc_71B247: LitI4 2
  loc_71B24C: FLdRfVar var_1D4
  loc_71B24F: ImpAdCallFPR4  = Chr()
  loc_71B254: FLdRfVar var_1D4
  loc_71B257: ConcatVar var_1E4
  loc_71B25B: LitI4 &HF
  loc_71B260: FLdRfVar var_1F4
  loc_71B263: ImpAdCallFPR4  = Chr()
  loc_71B268: FLdRfVar var_1F4
  loc_71B26B: ConcatVar var_204
  loc_71B26F: LitI4 1
  loc_71B274: FLdRfVar var_214
  loc_71B277: ImpAdCallFPR4  = Chr()
  loc_71B27C: FLdRfVar var_214
  loc_71B27F: ConcatVar var_224
  loc_71B283: LitI4 &HF
  loc_71B288: FLdRfVar var_234
  loc_71B28B: ImpAdCallFPR4  = Chr()
  loc_71B290: FLdRfVar var_234
  loc_71B293: ConcatVar var_244
  loc_71B297: LitI4 1
  loc_71B29C: FLdRfVar var_254
  loc_71B29F: ImpAdCallFPR4  = Chr()
  loc_71B2A4: FLdRfVar var_254
  loc_71B2A7: ConcatVar var_264
  loc_71B2AB: LitI4 1
  loc_71B2B0: FLdRfVar var_274
  loc_71B2B3: ImpAdCallFPR4  = Chr()
  loc_71B2B8: FLdRfVar var_274
  loc_71B2BB: ConcatVar var_284
  loc_71B2BF: LitI4 5
  loc_71B2C4: FLdRfVar var_294
  loc_71B2C7: ImpAdCallFPR4  = Chr()
  loc_71B2CC: FLdRfVar var_294
  loc_71B2CF: ConcatVar var_2A4
  loc_71B2D3: LitI4 &HC
  loc_71B2D8: FLdRfVar var_2B4
  loc_71B2DB: ImpAdCallFPR4  = Chr()
  loc_71B2E0: FLdRfVar var_2B4
  loc_71B2E3: ConcatVar var_2C4
  loc_71B2E7: CStrVarTmp
  loc_71B2E8: FStStr var_A4
  loc_71B2EB: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = ""
  loc_71B322: ILdRf var_B8
  loc_71B325: LitI4 2
  loc_71B32A: AddI4
  loc_71B32B: FStR4 var_B8
  loc_71B32E: LitVar_Missing var_110
  loc_71B331: ILdRf var_B8
  loc_71B334: ILdRf sValor
  loc_71B337: CVarRef
  loc_71B33C: FLdRfVar var_120
  loc_71B33F: ImpAdCallFPR4  = Mid(, , )
  loc_71B344: ILdRf var_B8
  loc_71B347: LitI2_Byte &H16
  loc_71B349: PopTmpLdAd2 var_176
  loc_71B34C: FLdRfVar var_A4
  loc_71B34F: FLdRfVar var_A0
  loc_71B352: PopTmpLdAdStr var_174
  loc_71B355: FLdRfVar var_120
  loc_71B358: CStrVarTmp
  loc_71B359: PopTmpLdAdStr
  loc_71B35D: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71B362: CI4UI1
  loc_71B363: AddI4
  loc_71B364: FStR4 var_B8
  loc_71B367: FFree1Str var_D0
  loc_71B36A: FFreeVar var_110 = ""
  loc_71B371: LitStr "INSERT INTO ARVD1_1 (fer8, hora, dcli, dete, dite, dabr, loca, ccli, ctad, cuit, nrem, frem, fvto, nurx, sevt, msfi, sgfi, mpag, sgpa, cpi, tint, blco)"
  loc_71B374: FStStrCopy var_AC
  loc_71B377: LitStr " VALUES ('"
  loc_71B37A: LitI4 1
  loc_71B37F: FLdRfVar var_A0
  loc_71B382: Ary1LdRf
  loc_71B383: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B388: FStStrNoPop var_D0
  loc_71B38B: ConcatStr
  loc_71B38C: FStStrNoPop var_17C
  loc_71B38F: LitStr "', '"
  loc_71B392: ConcatStr
  loc_71B393: FStStrNoPop var_180
  loc_71B396: LitI4 2
  loc_71B39B: FLdRfVar var_A0
  loc_71B39E: Ary1LdRf
  loc_71B39F: ImpAdCallI2 Proc_87_30_602158()
  loc_71B3A4: FStStrNoPop var_184
  loc_71B3A7: ConcatStr
  loc_71B3A8: FStStrNoPop var_188
  loc_71B3AB: LitStr "', '"
  loc_71B3AE: ConcatStr
  loc_71B3AF: FStStrNoPop var_18C
  loc_71B3B2: LitI4 3
  loc_71B3B7: FLdRfVar var_A0
  loc_71B3BA: Ary1LdI4
  loc_71B3BB: ConcatStr
  loc_71B3BC: FStStrNoPop var_190
  loc_71B3BF: LitStr "','"
  loc_71B3C2: ConcatStr
  loc_71B3C3: FStStr var_B0
  loc_71B3C6: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_71B3D7: ILdRf var_B0
  loc_71B3DA: LitI4 4
  loc_71B3DF: FLdRfVar var_A0
  loc_71B3E2: Ary1LdI4
  loc_71B3E3: ConcatStr
  loc_71B3E4: FStStrNoPop var_D0
  loc_71B3E7: LitStr "', '"
  loc_71B3EA: ConcatStr
  loc_71B3EB: FStStrNoPop var_17C
  loc_71B3EE: LitI4 5
  loc_71B3F3: FLdRfVar var_A0
  loc_71B3F6: Ary1LdI4
  loc_71B3F7: ConcatStr
  loc_71B3F8: FStStrNoPop var_180
  loc_71B3FB: LitStr "', '"
  loc_71B3FE: ConcatStr
  loc_71B3FF: FStStrNoPop var_184
  loc_71B402: LitI4 6
  loc_71B407: FLdRfVar var_A0
  loc_71B40A: Ary1LdI4
  loc_71B40B: ConcatStr
  loc_71B40C: FStStrNoPop var_188
  loc_71B40F: LitStr "', '"
  loc_71B412: ConcatStr
  loc_71B413: FStStrNoPop var_18C
  loc_71B416: LitI4 7
  loc_71B41B: FLdRfVar var_A0
  loc_71B41E: Ary1LdI4
  loc_71B41F: ConcatStr
  loc_71B420: FStStrNoPop var_190
  loc_71B423: LitStr "', '"
  loc_71B426: ConcatStr
  loc_71B427: FStStrNoPop var_2C8
  loc_71B42A: LitI4 8
  loc_71B42F: FLdRfVar var_A0
  loc_71B432: Ary1LdI4
  loc_71B433: ConcatStr
  loc_71B434: FStStrNoPop var_2CC
  loc_71B437: LitStr "', '"
  loc_71B43A: ConcatStr
  loc_71B43B: FStStrNoPop var_2D0
  loc_71B43E: LitI4 9
  loc_71B443: FLdRfVar var_A0
  loc_71B446: Ary1LdI4
  loc_71B447: ConcatStr
  loc_71B448: FStStrNoPop var_2D4
  loc_71B44B: LitStr "', '"
  loc_71B44E: ConcatStr
  loc_71B44F: FStStrNoPop var_2D8
  loc_71B452: LitI4 &HA
  loc_71B457: FLdRfVar var_A0
  loc_71B45A: Ary1LdI4
  loc_71B45B: ConcatStr
  loc_71B45C: FStStrNoPop var_2DC
  loc_71B45F: LitStr "', '"
  loc_71B462: ConcatStr
  loc_71B463: FStStrNoPop var_2E0
  loc_71B466: LitI4 &HB
  loc_71B46B: FLdRfVar var_A0
  loc_71B46E: Ary1LdI4
  loc_71B46F: ConcatStr
  loc_71B470: FStStrNoPop var_2E4
  loc_71B473: LitStr "', '"
  loc_71B476: ConcatStr
  loc_71B477: FStStr var_B0
  loc_71B47A: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = ""
  loc_71B49B: ILdRf var_B0
  loc_71B49E: LitI4 &HC
  loc_71B4A3: FLdRfVar var_A0
  loc_71B4A6: Ary1LdRf
  loc_71B4A7: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B4AC: FStStrNoPop var_D0
  loc_71B4AF: ConcatStr
  loc_71B4B0: FStStrNoPop var_17C
  loc_71B4B3: LitStr "', '"
  loc_71B4B6: ConcatStr
  loc_71B4B7: FStStrNoPop var_180
  loc_71B4BA: LitI4 &HD
  loc_71B4BF: FLdRfVar var_A0
  loc_71B4C2: Ary1LdRf
  loc_71B4C3: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B4C8: FStStrNoPop var_184
  loc_71B4CB: ConcatStr
  loc_71B4CC: FStStrNoPop var_188
  loc_71B4CF: LitStr "', '"
  loc_71B4D2: ConcatStr
  loc_71B4D3: FStStrNoPop var_18C
  loc_71B4D6: LitI4 &HE
  loc_71B4DB: FLdRfVar var_A0
  loc_71B4DE: Ary1LdI4
  loc_71B4DF: ConcatStr
  loc_71B4E0: FStStrNoPop var_190
  loc_71B4E3: LitStr "', '"
  loc_71B4E6: ConcatStr
  loc_71B4E7: FStStrNoPop var_2C8
  loc_71B4EA: LitI4 &HF
  loc_71B4EF: FLdRfVar var_A0
  loc_71B4F2: Ary1LdI4
  loc_71B4F3: ConcatStr
  loc_71B4F4: FStStrNoPop var_2CC
  loc_71B4F7: LitStr "', "
  loc_71B4FA: ConcatStr
  loc_71B4FB: FStStrNoPop var_2D0
  loc_71B4FE: LitI4 &H11
  loc_71B503: FLdRfVar var_A0
  loc_71B506: Ary1LdRf
  loc_71B507: LitI2_Byte &HD
  loc_71B509: PopTmpLdAd2 var_176
  loc_71B50C: LitI4 &H10
  loc_71B511: FLdRfVar var_A0
  loc_71B514: Ary1LdRf
  loc_71B515: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B51A: CStrR8
  loc_71B51C: FStStrNoPop var_2D4
  loc_71B51F: ConcatStr
  loc_71B520: FStStrNoPop var_2D8
  loc_71B523: LitStr ", '"
  loc_71B526: ConcatStr
  loc_71B527: FStStrNoPop var_2DC
  loc_71B52A: LitI4 &H11
  loc_71B52F: FLdRfVar var_A0
  loc_71B532: Ary1LdI4
  loc_71B533: ConcatStr
  loc_71B534: FStStrNoPop var_2E0
  loc_71B537: LitStr "', "
  loc_71B53A: ConcatStr
  loc_71B53B: FStStrNoPop var_2E4
  loc_71B53E: LitI4 &H13
  loc_71B543: FLdRfVar var_A0
  loc_71B546: Ary1LdRf
  loc_71B547: LitI2_Byte &HD
  loc_71B549: PopTmpLdAd2 var_2E6
  loc_71B54C: LitI4 &H12
  loc_71B551: FLdRfVar var_A0
  loc_71B554: Ary1LdRf
  loc_71B555: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B55A: CStrR8
  loc_71B55C: FStStrNoPop var_2EC
  loc_71B55F: ConcatStr
  loc_71B560: FStStrNoPop var_2F0
  loc_71B563: LitStr ", '"
  loc_71B566: ConcatStr
  loc_71B567: FStStrNoPop var_2F4
  loc_71B56A: LitI4 &H13
  loc_71B56F: FLdRfVar var_A0
  loc_71B572: Ary1LdI4
  loc_71B573: ConcatStr
  loc_71B574: FStStrNoPop var_2F8
  loc_71B577: LitStr "', '"
  loc_71B57A: ConcatStr
  loc_71B57B: FStStrNoPop var_2FC
  loc_71B57E: LitI4 &H14
  loc_71B583: FLdRfVar var_A0
  loc_71B586: Ary1LdI4
  loc_71B587: ConcatStr
  loc_71B588: FStStrNoPop var_300
  loc_71B58B: LitStr "', "
  loc_71B58E: ConcatStr
  loc_71B58F: FStStrNoPop var_30C
  loc_71B592: LitStr vbNullString
  loc_71B595: FStStrCopy var_308
  loc_71B598: FLdRfVar var_308
  loc_71B59B: LitI2_Byte 3
  loc_71B59D: PopTmpLdAd2 var_302
  loc_71B5A0: LitI4 &H15
  loc_71B5A5: FLdRfVar var_A0
  loc_71B5A8: Ary1LdRf
  loc_71B5A9: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B5AE: CStrR8
  loc_71B5B0: FStStrNoPop var_310
  loc_71B5B3: ConcatStr
  loc_71B5B4: FStStrNoPop var_314
  loc_71B5B7: LitStr ", '"
  loc_71B5BA: ConcatStr
  loc_71B5BB: FStStrNoPop var_318
  loc_71B5BE: LitI4 &H16
  loc_71B5C3: FLdRfVar var_A0
  loc_71B5C6: Ary1LdI4
  loc_71B5C7: ConcatStr
  loc_71B5C8: FStStrNoPop var_31C
  loc_71B5CB: LitStr "')"
  loc_71B5CE: ConcatStr
  loc_71B5CF: FStStr var_B0
  loc_71B5D2: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_71B60B: ILdRf var_AC
  loc_71B60E: ILdRf var_B0
  loc_71B611: ConcatStr
  loc_71B612: FStStr var_AC
  loc_71B615: ILdRf var_B8
  loc_71B618: LitI4 &H11
  loc_71B61D: AddI4
  loc_71B61E: FStR4 var_B8
  loc_71B621: FLdI2 var_C6
  loc_71B624: BranchF loc_71B8F5
  loc_71B627: LitStr "INSERT INTO ARVD1 (fer8, hora, dcli, dete, dite, dabr, loca, ccli, ctad, cuit, nrem, frem, fvto, nurx, sevt, msfi, sgfi, mpag, sgpa, cpi, tint, blco)"
  loc_71B62A: FStStrCopy var_B0
  loc_71B62D: LitStr " VALUES ('"
  loc_71B630: LitI4 1
  loc_71B635: FLdRfVar var_A0
  loc_71B638: Ary1LdRf
  loc_71B639: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B63E: FStStrNoPop var_D0
  loc_71B641: ConcatStr
  loc_71B642: FStStrNoPop var_17C
  loc_71B645: LitStr "', '"
  loc_71B648: ConcatStr
  loc_71B649: FStStrNoPop var_180
  loc_71B64C: LitI4 2
  loc_71B651: FLdRfVar var_A0
  loc_71B654: Ary1LdRf
  loc_71B655: ImpAdCallI2 Proc_87_30_602158()
  loc_71B65A: FStStrNoPop var_184
  loc_71B65D: ConcatStr
  loc_71B65E: FStStrNoPop var_188
  loc_71B661: LitStr "', '"
  loc_71B664: ConcatStr
  loc_71B665: FStStrNoPop var_18C
  loc_71B668: LitI4 3
  loc_71B66D: FLdRfVar var_A0
  loc_71B670: Ary1LdI4
  loc_71B671: ConcatStr
  loc_71B672: FStStrNoPop var_190
  loc_71B675: LitStr "','"
  loc_71B678: ConcatStr
  loc_71B679: FStStr var_B4
  loc_71B67C: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_71B68D: ILdRf var_B4
  loc_71B690: LitI4 4
  loc_71B695: FLdRfVar var_A0
  loc_71B698: Ary1LdI4
  loc_71B699: ConcatStr
  loc_71B69A: FStStrNoPop var_D0
  loc_71B69D: LitStr "', '"
  loc_71B6A0: ConcatStr
  loc_71B6A1: FStStrNoPop var_17C
  loc_71B6A4: LitI4 5
  loc_71B6A9: FLdRfVar var_A0
  loc_71B6AC: Ary1LdI4
  loc_71B6AD: ConcatStr
  loc_71B6AE: FStStrNoPop var_180
  loc_71B6B1: LitStr "', '"
  loc_71B6B4: ConcatStr
  loc_71B6B5: FStStrNoPop var_184
  loc_71B6B8: LitI4 6
  loc_71B6BD: FLdRfVar var_A0
  loc_71B6C0: Ary1LdI4
  loc_71B6C1: ConcatStr
  loc_71B6C2: FStStrNoPop var_188
  loc_71B6C5: LitStr "', '"
  loc_71B6C8: ConcatStr
  loc_71B6C9: FStStrNoPop var_18C
  loc_71B6CC: LitI4 7
  loc_71B6D1: FLdRfVar var_A0
  loc_71B6D4: Ary1LdI4
  loc_71B6D5: ConcatStr
  loc_71B6D6: FStStrNoPop var_190
  loc_71B6D9: LitStr "', '"
  loc_71B6DC: ConcatStr
  loc_71B6DD: FStStrNoPop var_2C8
  loc_71B6E0: LitI4 8
  loc_71B6E5: FLdRfVar var_A0
  loc_71B6E8: Ary1LdI4
  loc_71B6E9: ConcatStr
  loc_71B6EA: FStStrNoPop var_2CC
  loc_71B6ED: LitStr "', '"
  loc_71B6F0: ConcatStr
  loc_71B6F1: FStStrNoPop var_2D0
  loc_71B6F4: LitI4 9
  loc_71B6F9: FLdRfVar var_A0
  loc_71B6FC: Ary1LdI4
  loc_71B6FD: ConcatStr
  loc_71B6FE: FStStrNoPop var_2D4
  loc_71B701: LitStr "', '"
  loc_71B704: ConcatStr
  loc_71B705: FStStrNoPop var_2D8
  loc_71B708: LitI4 &HA
  loc_71B70D: FLdRfVar var_A0
  loc_71B710: Ary1LdI4
  loc_71B711: ConcatStr
  loc_71B712: FStStrNoPop var_2DC
  loc_71B715: LitStr "', '"
  loc_71B718: ConcatStr
  loc_71B719: FStStrNoPop var_2E0
  loc_71B71C: LitI4 &HB
  loc_71B721: FLdRfVar var_A0
  loc_71B724: Ary1LdI4
  loc_71B725: ConcatStr
  loc_71B726: FStStrNoPop var_2E4
  loc_71B729: LitStr "', '"
  loc_71B72C: ConcatStr
  loc_71B72D: FStStr var_B4
  loc_71B730: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = ""
  loc_71B751: ILdRf var_B4
  loc_71B754: LitI4 &HC
  loc_71B759: FLdRfVar var_A0
  loc_71B75C: Ary1LdRf
  loc_71B75D: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B762: FStStrNoPop var_D0
  loc_71B765: ConcatStr
  loc_71B766: FStStrNoPop var_17C
  loc_71B769: LitStr "', '"
  loc_71B76C: ConcatStr
  loc_71B76D: FStStrNoPop var_180
  loc_71B770: LitI4 &HD
  loc_71B775: FLdRfVar var_A0
  loc_71B778: Ary1LdRf
  loc_71B779: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71B77E: FStStrNoPop var_184
  loc_71B781: ConcatStr
  loc_71B782: FStStrNoPop var_188
  loc_71B785: LitStr "', '"
  loc_71B788: ConcatStr
  loc_71B789: FStStrNoPop var_18C
  loc_71B78C: LitI4 &HE
  loc_71B791: FLdRfVar var_A0
  loc_71B794: Ary1LdI4
  loc_71B795: ConcatStr
  loc_71B796: FStStrNoPop var_190
  loc_71B799: LitStr "', '"
  loc_71B79C: ConcatStr
  loc_71B79D: FStStrNoPop var_2C8
  loc_71B7A0: LitI4 &HF
  loc_71B7A5: FLdRfVar var_A0
  loc_71B7A8: Ary1LdI4
  loc_71B7A9: ConcatStr
  loc_71B7AA: FStStrNoPop var_2CC
  loc_71B7AD: LitStr "', "
  loc_71B7B0: ConcatStr
  loc_71B7B1: FStStrNoPop var_2D0
  loc_71B7B4: LitI4 &H11
  loc_71B7B9: FLdRfVar var_A0
  loc_71B7BC: Ary1LdRf
  loc_71B7BD: LitI2_Byte &HD
  loc_71B7BF: PopTmpLdAd2 var_176
  loc_71B7C2: LitI4 &H10
  loc_71B7C7: FLdRfVar var_A0
  loc_71B7CA: Ary1LdRf
  loc_71B7CB: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B7D0: CStrR8
  loc_71B7D2: FStStrNoPop var_2D4
  loc_71B7D5: ConcatStr
  loc_71B7D6: FStStrNoPop var_2D8
  loc_71B7D9: LitStr ", '"
  loc_71B7DC: ConcatStr
  loc_71B7DD: FStStrNoPop var_2DC
  loc_71B7E0: LitI4 &H11
  loc_71B7E5: FLdRfVar var_A0
  loc_71B7E8: Ary1LdI4
  loc_71B7E9: ConcatStr
  loc_71B7EA: FStStrNoPop var_2E0
  loc_71B7ED: LitStr "', "
  loc_71B7F0: ConcatStr
  loc_71B7F1: FStStrNoPop var_2E4
  loc_71B7F4: LitI4 &H13
  loc_71B7F9: FLdRfVar var_A0
  loc_71B7FC: Ary1LdRf
  loc_71B7FD: LitI2_Byte &HD
  loc_71B7FF: PopTmpLdAd2 var_2E6
  loc_71B802: LitI4 &H12
  loc_71B807: FLdRfVar var_A0
  loc_71B80A: Ary1LdRf
  loc_71B80B: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B810: CStrR8
  loc_71B812: FStStrNoPop var_2EC
  loc_71B815: ConcatStr
  loc_71B816: FStStrNoPop var_2F0
  loc_71B819: LitStr ", '"
  loc_71B81C: ConcatStr
  loc_71B81D: FStStrNoPop var_2F4
  loc_71B820: LitI4 &H13
  loc_71B825: FLdRfVar var_A0
  loc_71B828: Ary1LdI4
  loc_71B829: ConcatStr
  loc_71B82A: FStStrNoPop var_2F8
  loc_71B82D: LitStr "', '"
  loc_71B830: ConcatStr
  loc_71B831: FStStrNoPop var_2FC
  loc_71B834: LitI4 &H14
  loc_71B839: FLdRfVar var_A0
  loc_71B83C: Ary1LdI4
  loc_71B83D: ConcatStr
  loc_71B83E: FStStrNoPop var_300
  loc_71B841: LitStr "', "
  loc_71B844: ConcatStr
  loc_71B845: FStStrNoPop var_30C
  loc_71B848: LitStr vbNullString
  loc_71B84B: FStStrCopy var_308
  loc_71B84E: FLdRfVar var_308
  loc_71B851: LitI2_Byte 3
  loc_71B853: PopTmpLdAd2 var_302
  loc_71B856: LitI4 &H15
  loc_71B85B: FLdRfVar var_A0
  loc_71B85E: Ary1LdRf
  loc_71B85F: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71B864: CStrR8
  loc_71B866: FStStrNoPop var_310
  loc_71B869: ConcatStr
  loc_71B86A: FStStrNoPop var_314
  loc_71B86D: LitStr ", '"
  loc_71B870: ConcatStr
  loc_71B871: FStStrNoPop var_318
  loc_71B874: LitI4 &H16
  loc_71B879: FLdRfVar var_A0
  loc_71B87C: Ary1LdI4
  loc_71B87D: ConcatStr
  loc_71B87E: FStStrNoPop var_31C
  loc_71B881: LitStr "')"
  loc_71B884: ConcatStr
  loc_71B885: FStStr var_B4
  loc_71B888: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_71B8C1: ILdRf var_B0
  loc_71B8C4: ILdRf var_B4
  loc_71B8C7: ConcatStr
  loc_71B8C8: FStStr var_B4
  loc_71B8CB: LitI2_Byte 0
  loc_71B8CD: FStI2 var_C6
  loc_71B8D0: LitVarI4
  loc_71B8D8: PopAdLdVar
  loc_71B8D9: ILdRf var_B4
  loc_71B8DC: FLdPr var_BC
  loc_71B8DF: Me.Execute from_stack_1, from_stack_2
  loc_71B8E4: LitI4 &H14
  loc_71B8E9: FLdRfVar var_A0
  loc_71B8EC: Ary1LdI4
  loc_71B8ED: CI2Str
  loc_71B8EF: FLdPr Me
  loc_71B8F2: MemStI2 global_116
  loc_71B8F5: Branch loc_71CAC3
  loc_71B8F8: ILdRf var_194
  loc_71B8FB: LitStr "D2"
  loc_71B8FE: EqStr
  loc_71B900: BranchF loc_71BD63
  loc_71B903: LitI4 6
  loc_71B908: FLdRfVar var_110
  loc_71B90B: ImpAdCallFPR4  = Chr()
  loc_71B910: FLdRfVar var_110
  loc_71B913: LitI4 &H19
  loc_71B918: FLdRfVar var_120
  loc_71B91B: ImpAdCallFPR4  = Chr()
  loc_71B920: FLdRfVar var_120
  loc_71B923: ConcatVar var_130
  loc_71B927: LitI4 8
  loc_71B92C: FLdRfVar var_140
  loc_71B92F: ImpAdCallFPR4  = Chr()
  loc_71B934: FLdRfVar var_140
  loc_71B937: ConcatVar var_150
  loc_71B93B: LitI4 2
  loc_71B940: FLdRfVar var_160
  loc_71B943: ImpAdCallFPR4  = Chr()
  loc_71B948: FLdRfVar var_160
  loc_71B94B: ConcatVar var_170
  loc_71B94F: LitI4 &H14
  loc_71B954: FLdRfVar var_1A4
  loc_71B957: ImpAdCallFPR4  = Chr()
  loc_71B95C: FLdRfVar var_1A4
  loc_71B95F: ConcatVar var_1B4
  loc_71B963: LitI4 &HB
  loc_71B968: FLdRfVar var_1C4
  loc_71B96B: ImpAdCallFPR4  = Chr()
  loc_71B970: FLdRfVar var_1C4
  loc_71B973: ConcatVar var_1D4
  loc_71B977: LitI4 1
  loc_71B97C: FLdRfVar var_1E4
  loc_71B97F: ImpAdCallFPR4  = Chr()
  loc_71B984: FLdRfVar var_1E4
  loc_71B987: ConcatVar var_1F4
  loc_71B98B: LitI4 6
  loc_71B990: FLdRfVar var_204
  loc_71B993: ImpAdCallFPR4  = Chr()
  loc_71B998: FLdRfVar var_204
  loc_71B99B: ConcatVar var_214
  loc_71B99F: LitI4 &HF
  loc_71B9A4: FLdRfVar var_224
  loc_71B9A7: ImpAdCallFPR4  = Chr()
  loc_71B9AC: FLdRfVar var_224
  loc_71B9AF: ConcatVar var_234
  loc_71B9B3: CStrVarTmp
  loc_71B9B4: FStStr var_A4
  loc_71B9B7: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = ""
  loc_71B9DC: ILdRf var_A4
  loc_71B9DF: CVarStr var_E0
  loc_71B9E2: LitI4 1
  loc_71B9E7: FLdRfVar var_110
  loc_71B9EA: ImpAdCallFPR4  = Chr()
  loc_71B9EF: FLdRfVar var_110
  loc_71B9F2: ConcatVar var_120
  loc_71B9F6: LitI4 &HF
  loc_71B9FB: FLdRfVar var_130
  loc_71B9FE: ImpAdCallFPR4  = Chr()
  loc_71BA03: FLdRfVar var_130
  loc_71BA06: ConcatVar var_140
  loc_71BA0A: LitI4 1
  loc_71BA0F: FLdRfVar var_150
  loc_71BA12: ImpAdCallFPR4  = Chr()
  loc_71BA17: FLdRfVar var_150
  loc_71BA1A: ConcatVar var_160
  loc_71BA1E: LitI4 &HF
  loc_71BA23: FLdRfVar var_170
  loc_71BA26: ImpAdCallFPR4  = Chr()
  loc_71BA2B: FLdRfVar var_170
  loc_71BA2E: ConcatVar var_1A4
  loc_71BA32: LitI4 1
  loc_71BA37: FLdRfVar var_1B4
  loc_71BA3A: ImpAdCallFPR4  = Chr()
  loc_71BA3F: FLdRfVar var_1B4
  loc_71BA42: ConcatVar var_1C4
  loc_71BA46: LitI4 &HF
  loc_71BA4B: FLdRfVar var_1D4
  loc_71BA4E: ImpAdCallFPR4  = Chr()
  loc_71BA53: FLdRfVar var_1D4
  loc_71BA56: ConcatVar var_1E4
  loc_71BA5A: LitI4 1
  loc_71BA5F: FLdRfVar var_1F4
  loc_71BA62: ImpAdCallFPR4  = Chr()
  loc_71BA67: FLdRfVar var_1F4
  loc_71BA6A: ConcatVar var_204
  loc_71BA6E: LitI4 &H87
  loc_71BA73: FLdRfVar var_214
  loc_71BA76: ImpAdCallFPR4  = Chr()
  loc_71BA7B: FLdRfVar var_214
  loc_71BA7E: ConcatVar var_224
  loc_71BA82: CStrVarTmp
  loc_71BA83: FStStr var_A4
  loc_71BA86: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = ""
  loc_71BAA9: ILdRf var_B8
  loc_71BAAC: LitI4 2
  loc_71BAB1: AddI4
  loc_71BAB2: FStR4 var_B8
  loc_71BAB5: LitVar_Missing var_110
  loc_71BAB8: ILdRf var_B8
  loc_71BABB: ILdRf sValor
  loc_71BABE: CVarRef
  loc_71BAC3: FLdRfVar var_120
  loc_71BAC6: ImpAdCallFPR4  = Mid(, , )
  loc_71BACB: ILdRf var_B8
  loc_71BACE: LitI2_Byte &H11
  loc_71BAD0: PopTmpLdAd2 var_176
  loc_71BAD3: FLdRfVar var_A4
  loc_71BAD6: FLdRfVar var_A0
  loc_71BAD9: PopTmpLdAdStr var_174
  loc_71BADC: FLdRfVar var_120
  loc_71BADF: CStrVarTmp
  loc_71BAE0: PopTmpLdAdStr
  loc_71BAE4: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71BAE9: CI4UI1
  loc_71BAEA: AddI4
  loc_71BAEB: FStR4 var_B8
  loc_71BAEE: FFree1Str var_D0
  loc_71BAF1: FFreeVar var_110 = ""
  loc_71BAF8: LitStr "INSERT INTO ARVD2 (cart, descp, fvt8, sevt, desco, qetr, sgvo, ipro, mbru, sgdb, mcom, sgdc, mcfv, sgdf, mpag, sgdt, blco)"
  loc_71BAFB: FStStrCopy var_AC
  loc_71BAFE: LitStr " VALUES ('"
  loc_71BB01: LitI4 1
  loc_71BB06: FLdRfVar var_A0
  loc_71BB09: Ary1LdI4
  loc_71BB0A: ConcatStr
  loc_71BB0B: FStStrNoPop var_D0
  loc_71BB0E: LitStr "', '"
  loc_71BB11: ConcatStr
  loc_71BB12: FStStrNoPop var_17C
  loc_71BB15: LitI4 2
  loc_71BB1A: FLdRfVar var_A0
  loc_71BB1D: Ary1LdI4
  loc_71BB1E: ConcatStr
  loc_71BB1F: FStStrNoPop var_180
  loc_71BB22: LitStr "', '"
  loc_71BB25: ConcatStr
  loc_71BB26: FStStrNoPop var_184
  loc_71BB29: LitI4 3
  loc_71BB2E: FLdRfVar var_A0
  loc_71BB31: Ary1LdRf
  loc_71BB32: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71BB37: FStStrNoPop var_188
  loc_71BB3A: ConcatStr
  loc_71BB3B: FStStrNoPop var_18C
  loc_71BB3E: LitStr "','"
  loc_71BB41: ConcatStr
  loc_71BB42: FStStr var_B0
  loc_71BB45: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_71BB54: ILdRf var_B0
  loc_71BB57: LitI4 4
  loc_71BB5C: FLdRfVar var_A0
  loc_71BB5F: Ary1LdI4
  loc_71BB60: ConcatStr
  loc_71BB61: FStStrNoPop var_D0
  loc_71BB64: LitStr "', '"
  loc_71BB67: ConcatStr
  loc_71BB68: FStStrNoPop var_17C
  loc_71BB6B: LitI4 5
  loc_71BB70: FLdRfVar var_A0
  loc_71BB73: Ary1LdI4
  loc_71BB74: ConcatStr
  loc_71BB75: FStStrNoPop var_180
  loc_71BB78: LitStr "', "
  loc_71BB7B: ConcatStr
  loc_71BB7C: FStStrNoPop var_184
  loc_71BB7F: LitI4 7
  loc_71BB84: FLdRfVar var_A0
  loc_71BB87: Ary1LdRf
  loc_71BB88: LitI2_Byte 8
  loc_71BB8A: PopTmpLdAd2 var_176
  loc_71BB8D: LitI4 6
  loc_71BB92: FLdRfVar var_A0
  loc_71BB95: Ary1LdRf
  loc_71BB96: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BB9B: CStrR8
  loc_71BB9D: FStStrNoPop var_188
  loc_71BBA0: ConcatStr
  loc_71BBA1: FStStrNoPop var_18C
  loc_71BBA4: LitStr ", '"
  loc_71BBA7: ConcatStr
  loc_71BBA8: FStStrNoPop var_190
  loc_71BBAB: LitI4 7
  loc_71BBB0: FLdRfVar var_A0
  loc_71BBB3: Ary1LdI4
  loc_71BBB4: ConcatStr
  loc_71BBB5: FStStrNoPop var_2C8
  loc_71BBB8: LitStr "', '"
  loc_71BBBB: ConcatStr
  loc_71BBBC: FStStrNoPop var_2D0
  loc_71BBBF: LitStr vbNullString
  loc_71BBC2: FStStrCopy var_2CC
  loc_71BBC5: FLdRfVar var_2CC
  loc_71BBC8: LitI2_Byte 2
  loc_71BBCA: PopTmpLdAd2 var_2E6
  loc_71BBCD: LitI4 8
  loc_71BBD2: FLdRfVar var_A0
  loc_71BBD5: Ary1LdRf
  loc_71BBD6: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BBDB: CStrR8
  loc_71BBDD: FStStrNoPop var_2D4
  loc_71BBE0: ConcatStr
  loc_71BBE1: FStStrNoPop var_2D8
  loc_71BBE4: LitStr "', '"
  loc_71BBE7: ConcatStr
  loc_71BBE8: FStStrNoPop var_2DC
  loc_71BBEB: LitI4 &HA
  loc_71BBF0: FLdRfVar var_A0
  loc_71BBF3: Ary1LdRf
  loc_71BBF4: LitI2_Byte &HD
  loc_71BBF6: PopTmpLdAd2 var_302
  loc_71BBF9: LitI4 9
  loc_71BBFE: FLdRfVar var_A0
  loc_71BC01: Ary1LdRf
  loc_71BC02: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BC07: CStrR8
  loc_71BC09: FStStrNoPop var_2E0
  loc_71BC0C: ConcatStr
  loc_71BC0D: FStStrNoPop var_2E4
  loc_71BC10: LitStr "', '"
  loc_71BC13: ConcatStr
  loc_71BC14: FStStrNoPop var_2EC
  loc_71BC17: LitI4 &HA
  loc_71BC1C: FLdRfVar var_A0
  loc_71BC1F: Ary1LdI4
  loc_71BC20: ConcatStr
  loc_71BC21: FStStrNoPop var_2F0
  loc_71BC24: LitStr "', '"
  loc_71BC27: ConcatStr
  loc_71BC28: FStStrNoPop var_2F4
  loc_71BC2B: LitI4 &HC
  loc_71BC30: FLdRfVar var_A0
  loc_71BC33: Ary1LdRf
  loc_71BC34: LitI2_Byte &HD
  loc_71BC36: PopTmpLdAd2 var_31E
  loc_71BC39: LitI4 &HB
  loc_71BC3E: FLdRfVar var_A0
  loc_71BC41: Ary1LdRf
  loc_71BC42: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BC47: CStrR8
  loc_71BC49: FStStrNoPop var_2F8
  loc_71BC4C: ConcatStr
  loc_71BC4D: FStStrNoPop var_2FC
  loc_71BC50: LitStr "', '"
  loc_71BC53: ConcatStr
  loc_71BC54: FStStr var_B0
  loc_71BC57: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = ""
  loc_71BC82: ILdRf var_B0
  loc_71BC85: LitI4 &HC
  loc_71BC8A: FLdRfVar var_A0
  loc_71BC8D: Ary1LdI4
  loc_71BC8E: ConcatStr
  loc_71BC8F: FStStrNoPop var_D0
  loc_71BC92: LitStr "', '"
  loc_71BC95: ConcatStr
  loc_71BC96: FStStrNoPop var_17C
  loc_71BC99: LitI4 &HE
  loc_71BC9E: FLdRfVar var_A0
  loc_71BCA1: Ary1LdRf
  loc_71BCA2: LitI2_Byte &HD
  loc_71BCA4: PopTmpLdAd2 var_176
  loc_71BCA7: LitI4 &HD
  loc_71BCAC: FLdRfVar var_A0
  loc_71BCAF: Ary1LdRf
  loc_71BCB0: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BCB5: CStrR8
  loc_71BCB7: FStStrNoPop var_180
  loc_71BCBA: ConcatStr
  loc_71BCBB: FStStrNoPop var_184
  loc_71BCBE: LitStr "', '"
  loc_71BCC1: ConcatStr
  loc_71BCC2: FStStrNoPop var_188
  loc_71BCC5: LitI4 &HE
  loc_71BCCA: FLdRfVar var_A0
  loc_71BCCD: Ary1LdI4
  loc_71BCCE: ConcatStr
  loc_71BCCF: FStStrNoPop var_18C
  loc_71BCD2: LitStr "', '"
  loc_71BCD5: ConcatStr
  loc_71BCD6: FStStrNoPop var_190
  loc_71BCD9: LitI4 &H10
  loc_71BCDE: FLdRfVar var_A0
  loc_71BCE1: Ary1LdRf
  loc_71BCE2: LitI2_Byte &HD
  loc_71BCE4: PopTmpLdAd2 var_2E6
  loc_71BCE7: LitI4 &HF
  loc_71BCEC: FLdRfVar var_A0
  loc_71BCEF: Ary1LdRf
  loc_71BCF0: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BCF5: CStrR8
  loc_71BCF7: FStStrNoPop var_2C8
  loc_71BCFA: ConcatStr
  loc_71BCFB: FStStrNoPop var_2CC
  loc_71BCFE: LitStr "', "
  loc_71BD01: ConcatStr
  loc_71BD02: FStStrNoPop var_2D0
  loc_71BD05: LitI4 &H10
  loc_71BD0A: FLdRfVar var_A0
  loc_71BD0D: Ary1LdI4
  loc_71BD0E: ConcatStr
  loc_71BD0F: FStStrNoPop var_2D4
  loc_71BD12: LitStr ", '"
  loc_71BD15: ConcatStr
  loc_71BD16: FStStrNoPop var_2D8
  loc_71BD19: LitI4 &H11
  loc_71BD1E: FLdRfVar var_A0
  loc_71BD21: Ary1LdI4
  loc_71BD22: ConcatStr
  loc_71BD23: FStStrNoPop var_2DC
  loc_71BD26: LitStr "')"
  loc_71BD29: ConcatStr
  loc_71BD2A: FStStr var_B0
  loc_71BD2D: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_71BD4A: ILdRf var_AC
  loc_71BD4D: ILdRf var_B0
  loc_71BD50: ConcatStr
  loc_71BD51: FStStr var_AC
  loc_71BD54: ILdRf var_B8
  loc_71BD57: LitI4 &H11
  loc_71BD5C: AddI4
  loc_71BD5D: FStR4 var_B8
  loc_71BD60: Branch loc_71CAC3
  loc_71BD63: ILdRf var_194
  loc_71BD66: LitStr "D3"
  loc_71BD69: EqStr
  loc_71BD6B: BranchF loc_71C0E8
  loc_71BD6E: LitI4 6
  loc_71BD73: FLdRfVar var_110
  loc_71BD76: ImpAdCallFPR4  = Chr()
  loc_71BD7B: FLdRfVar var_110
  loc_71BD7E: LitI4 &H1E
  loc_71BD83: FLdRfVar var_120
  loc_71BD86: ImpAdCallFPR4  = Chr()
  loc_71BD8B: FLdRfVar var_120
  loc_71BD8E: ConcatVar var_130
  loc_71BD92: LitI4 &HB
  loc_71BD97: FLdRfVar var_140
  loc_71BD9A: ImpAdCallFPR4  = Chr()
  loc_71BD9F: FLdRfVar var_140
  loc_71BDA2: ConcatVar var_150
  loc_71BDA6: LitI4 1
  loc_71BDAB: FLdRfVar var_160
  loc_71BDAE: ImpAdCallFPR4  = Chr()
  loc_71BDB3: FLdRfVar var_160
  loc_71BDB6: ConcatVar var_170
  loc_71BDBA: LitI4 &HF
  loc_71BDBF: FLdRfVar var_1A4
  loc_71BDC2: ImpAdCallFPR4  = Chr()
  loc_71BDC7: FLdRfVar var_1A4
  loc_71BDCA: ConcatVar var_1B4
  loc_71BDCE: LitI4 1
  loc_71BDD3: FLdRfVar var_1C4
  loc_71BDD6: ImpAdCallFPR4  = Chr()
  loc_71BDDB: FLdRfVar var_1C4
  loc_71BDDE: ConcatVar var_1D4
  loc_71BDE2: LitI4 &HF
  loc_71BDE7: FLdRfVar var_1E4
  loc_71BDEA: ImpAdCallFPR4  = Chr()
  loc_71BDEF: FLdRfVar var_1E4
  loc_71BDF2: ConcatVar var_1F4
  loc_71BDF6: LitI4 1
  loc_71BDFB: FLdRfVar var_204
  loc_71BDFE: ImpAdCallFPR4  = Chr()
  loc_71BE03: FLdRfVar var_204
  loc_71BE06: ConcatVar var_214
  loc_71BE0A: LitI4 &HF
  loc_71BE0F: FLdRfVar var_224
  loc_71BE12: ImpAdCallFPR4  = Chr()
  loc_71BE17: FLdRfVar var_224
  loc_71BE1A: ConcatVar var_234
  loc_71BE1E: CStrVarTmp
  loc_71BE1F: FStStr var_A4
  loc_71BE22: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = ""
  loc_71BE47: ILdRf var_A4
  loc_71BE4A: CVarStr var_E0
  loc_71BE4D: LitI4 1
  loc_71BE52: FLdRfVar var_110
  loc_71BE55: ImpAdCallFPR4  = Chr()
  loc_71BE5A: FLdRfVar var_110
  loc_71BE5D: ConcatVar var_120
  loc_71BE61: LitI4 &HF
  loc_71BE66: FLdRfVar var_130
  loc_71BE69: ImpAdCallFPR4  = Chr()
  loc_71BE6E: FLdRfVar var_130
  loc_71BE71: ConcatVar var_140
  loc_71BE75: LitI4 1
  loc_71BE7A: FLdRfVar var_150
  loc_71BE7D: ImpAdCallFPR4  = Chr()
  loc_71BE82: FLdRfVar var_150
  loc_71BE85: ConcatVar var_160
  loc_71BE89: LitI4 &HA6
  loc_71BE8E: FLdRfVar var_170
  loc_71BE91: ImpAdCallFPR4  = Chr()
  loc_71BE96: FLdRfVar var_170
  loc_71BE99: ConcatVar var_1A4
  loc_71BE9D: CStrVarTmp
  loc_71BE9E: FStStr var_A4
  loc_71BEA1: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_71BEB4: ILdRf var_B8
  loc_71BEB7: LitI4 2
  loc_71BEBC: AddI4
  loc_71BEBD: FStR4 var_B8
  loc_71BEC0: LitVar_Missing var_110
  loc_71BEC3: ILdRf var_B8
  loc_71BEC6: ILdRf sValor
  loc_71BEC9: CVarRef
  loc_71BECE: FLdRfVar var_120
  loc_71BED1: ImpAdCallFPR4  = Mid(, , )
  loc_71BED6: ILdRf var_B8
  loc_71BED9: LitI2_Byte &HD
  loc_71BEDB: PopTmpLdAd2 var_176
  loc_71BEDE: FLdRfVar var_A4
  loc_71BEE1: FLdRfVar var_A0
  loc_71BEE4: PopTmpLdAdStr var_174
  loc_71BEE7: FLdRfVar var_120
  loc_71BEEA: CStrVarTmp
  loc_71BEEB: PopTmpLdAdStr
  loc_71BEEF: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71BEF4: CI4UI1
  loc_71BEF5: AddI4
  loc_71BEF6: FStR4 var_B8
  loc_71BEF9: FFree1Str var_D0
  loc_71BEFC: FFreeVar var_110 = ""
  loc_71BF03: LitStr "INSERT INTO ARVD3 (cart, descp, tvol, sgtv, tmbr, sgtb, tmco, sgtc, tmcf, sgtf, tmpa, sgtt, blco)"
  loc_71BF06: FStStrCopy var_AC
  loc_71BF09: LitStr " VALUES ('"
  loc_71BF0C: LitI4 1
  loc_71BF11: FLdRfVar var_A0
  loc_71BF14: Ary1LdI4
  loc_71BF15: ConcatStr
  loc_71BF16: FStStrNoPop var_D0
  loc_71BF19: LitStr "', '"
  loc_71BF1C: ConcatStr
  loc_71BF1D: FStStrNoPop var_17C
  loc_71BF20: LitI4 2
  loc_71BF25: FLdRfVar var_A0
  loc_71BF28: Ary1LdI4
  loc_71BF29: ConcatStr
  loc_71BF2A: FStStrNoPop var_180
  loc_71BF2D: LitStr "', '"
  loc_71BF30: ConcatStr
  loc_71BF31: FStStrNoPop var_184
  loc_71BF34: LitI4 4
  loc_71BF39: FLdRfVar var_A0
  loc_71BF3C: Ary1LdRf
  loc_71BF3D: LitI2_Byte 8
  loc_71BF3F: PopTmpLdAd2 var_176
  loc_71BF42: LitI4 3
  loc_71BF47: FLdRfVar var_A0
  loc_71BF4A: Ary1LdRf
  loc_71BF4B: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BF50: CStrR8
  loc_71BF52: FStStrNoPop var_188
  loc_71BF55: ConcatStr
  loc_71BF56: FStStrNoPop var_18C
  loc_71BF59: LitStr "','"
  loc_71BF5C: ConcatStr
  loc_71BF5D: FStStr var_B0
  loc_71BF60: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_71BF6F: ILdRf var_B0
  loc_71BF72: LitI4 4
  loc_71BF77: FLdRfVar var_A0
  loc_71BF7A: Ary1LdI4
  loc_71BF7B: ConcatStr
  loc_71BF7C: FStStrNoPop var_D0
  loc_71BF7F: LitStr "', "
  loc_71BF82: ConcatStr
  loc_71BF83: FStStrNoPop var_17C
  loc_71BF86: LitI4 6
  loc_71BF8B: FLdRfVar var_A0
  loc_71BF8E: Ary1LdRf
  loc_71BF8F: LitI2_Byte &HD
  loc_71BF91: PopTmpLdAd2 var_176
  loc_71BF94: LitI4 5
  loc_71BF99: FLdRfVar var_A0
  loc_71BF9C: Ary1LdRf
  loc_71BF9D: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BFA2: CStrR8
  loc_71BFA4: FStStrNoPop var_180
  loc_71BFA7: ConcatStr
  loc_71BFA8: FStStrNoPop var_184
  loc_71BFAB: LitStr ",' "
  loc_71BFAE: ConcatStr
  loc_71BFAF: FStStrNoPop var_188
  loc_71BFB2: LitI4 6
  loc_71BFB7: FLdRfVar var_A0
  loc_71BFBA: Ary1LdI4
  loc_71BFBB: ConcatStr
  loc_71BFBC: FStStrNoPop var_18C
  loc_71BFBF: LitStr "', "
  loc_71BFC2: ConcatStr
  loc_71BFC3: FStStrNoPop var_190
  loc_71BFC6: LitI4 8
  loc_71BFCB: FLdRfVar var_A0
  loc_71BFCE: Ary1LdRf
  loc_71BFCF: LitI2_Byte &HD
  loc_71BFD1: PopTmpLdAd2 var_2E6
  loc_71BFD4: LitI4 7
  loc_71BFD9: FLdRfVar var_A0
  loc_71BFDC: Ary1LdRf
  loc_71BFDD: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71BFE2: CStrR8
  loc_71BFE4: FStStrNoPop var_2C8
  loc_71BFE7: ConcatStr
  loc_71BFE8: FStStrNoPop var_2CC
  loc_71BFEB: LitStr ", '"
  loc_71BFEE: ConcatStr
  loc_71BFEF: FStStrNoPop var_2D0
  loc_71BFF2: LitI4 8
  loc_71BFF7: FLdRfVar var_A0
  loc_71BFFA: Ary1LdI4
  loc_71BFFB: ConcatStr
  loc_71BFFC: FStStrNoPop var_2D4
  loc_71BFFF: LitStr "', "
  loc_71C002: ConcatStr
  loc_71C003: FStStrNoPop var_2D8
  loc_71C006: LitI4 &HA
  loc_71C00B: FLdRfVar var_A0
  loc_71C00E: Ary1LdRf
  loc_71C00F: LitI2_Byte &HD
  loc_71C011: PopTmpLdAd2 var_302
  loc_71C014: LitI4 9
  loc_71C019: FLdRfVar var_A0
  loc_71C01C: Ary1LdRf
  loc_71C01D: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C022: CStrR8
  loc_71C024: FStStrNoPop var_2DC
  loc_71C027: ConcatStr
  loc_71C028: FStStrNoPop var_2E0
  loc_71C02B: LitStr ", '"
  loc_71C02E: ConcatStr
  loc_71C02F: FStStrNoPop var_2E4
  loc_71C032: LitI4 &HA
  loc_71C037: FLdRfVar var_A0
  loc_71C03A: Ary1LdI4
  loc_71C03B: ConcatStr
  loc_71C03C: FStStrNoPop var_2EC
  loc_71C03F: LitStr "', '"
  loc_71C042: ConcatStr
  loc_71C043: FStStrNoPop var_2F0
  loc_71C046: LitI4 &HC
  loc_71C04B: FLdRfVar var_A0
  loc_71C04E: Ary1LdRf
  loc_71C04F: LitI2_Byte &HD
  loc_71C051: PopTmpLdAd2 var_31E
  loc_71C054: LitI4 &HB
  loc_71C059: FLdRfVar var_A0
  loc_71C05C: Ary1LdRf
  loc_71C05D: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C062: CStrR8
  loc_71C064: FStStrNoPop var_2F4
  loc_71C067: ConcatStr
  loc_71C068: FStStrNoPop var_2F8
  loc_71C06B: LitStr "', '"
  loc_71C06E: ConcatStr
  loc_71C06F: FStStr var_B0
  loc_71C072: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = ""
  loc_71C09B: ILdRf var_B0
  loc_71C09E: LitI4 &HC
  loc_71C0A3: FLdRfVar var_A0
  loc_71C0A6: Ary1LdI4
  loc_71C0A7: ConcatStr
  loc_71C0A8: FStStrNoPop var_D0
  loc_71C0AB: LitStr "', '"
  loc_71C0AE: ConcatStr
  loc_71C0AF: FStStrNoPop var_17C
  loc_71C0B2: LitI4 &HD
  loc_71C0B7: FLdRfVar var_A0
  loc_71C0BA: Ary1LdI4
  loc_71C0BB: ConcatStr
  loc_71C0BC: FStStrNoPop var_180
  loc_71C0BF: LitStr "')"
  loc_71C0C2: ConcatStr
  loc_71C0C3: FStStr var_B0
  loc_71C0C6: FFreeStr var_D0 = "": var_17C = ""
  loc_71C0CF: ILdRf var_AC
  loc_71C0D2: ILdRf var_B0
  loc_71C0D5: ConcatStr
  loc_71C0D6: FStStr var_AC
  loc_71C0D9: ILdRf var_B8
  loc_71C0DC: LitI4 &H11
  loc_71C0E1: AddI4
  loc_71C0E2: FStR4 var_B8
  loc_71C0E5: Branch loc_71CAC3
  loc_71C0E8: ILdRf var_194
  loc_71C0EB: LitStr "D4"
  loc_71C0EE: EqStr
  loc_71C0F0: BranchF loc_71C32C
  loc_71C0F3: LitI4 6
  loc_71C0F8: FLdRfVar var_110
  loc_71C0FB: ImpAdCallFPR4  = Chr()
  loc_71C100: FLdRfVar var_110
  loc_71C103: LitI4 &HF
  loc_71C108: FLdRfVar var_120
  loc_71C10B: ImpAdCallFPR4  = Chr()
  loc_71C110: FLdRfVar var_120
  loc_71C113: ConcatVar var_130
  loc_71C117: LitI4 1
  loc_71C11C: FLdRfVar var_140
  loc_71C11F: ImpAdCallFPR4  = Chr()
  loc_71C124: FLdRfVar var_140
  loc_71C127: ConcatVar var_150
  loc_71C12B: LitI4 &HF
  loc_71C130: FLdRfVar var_160
  loc_71C133: ImpAdCallFPR4  = Chr()
  loc_71C138: FLdRfVar var_160
  loc_71C13B: ConcatVar var_170
  loc_71C13F: LitI4 1
  loc_71C144: FLdRfVar var_1A4
  loc_71C147: ImpAdCallFPR4  = Chr()
  loc_71C14C: FLdRfVar var_1A4
  loc_71C14F: ConcatVar var_1B4
  loc_71C153: LitI4 &HF0
  loc_71C158: FLdRfVar var_1C4
  loc_71C15B: ImpAdCallFPR4  = Chr()
  loc_71C160: FLdRfVar var_1C4
  loc_71C163: ConcatVar var_1D4
  loc_71C167: CStrVarTmp
  loc_71C168: FStStr var_A4
  loc_71C16B: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = ""
  loc_71C184: ILdRf var_B8
  loc_71C187: LitI4 2
  loc_71C18C: AddI4
  loc_71C18D: FStR4 var_B8
  loc_71C190: LitVar_Missing var_110
  loc_71C193: ILdRf var_B8
  loc_71C196: ILdRf sValor
  loc_71C199: CVarRef
  loc_71C19E: FLdRfVar var_120
  loc_71C1A1: ImpAdCallFPR4  = Mid(, , )
  loc_71C1A6: ILdRf var_B8
  loc_71C1A9: LitI2_Byte 6
  loc_71C1AB: PopTmpLdAd2 var_176
  loc_71C1AE: FLdRfVar var_A4
  loc_71C1B1: FLdRfVar var_A0
  loc_71C1B4: PopTmpLdAdStr var_174
  loc_71C1B7: FLdRfVar var_120
  loc_71C1BA: CStrVarTmp
  loc_71C1BB: PopTmpLdAdStr
  loc_71C1BF: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71C1C4: CI4UI1
  loc_71C1C5: AddI4
  loc_71C1C6: FStR4 var_B8
  loc_71C1C9: FFree1Str var_D0
  loc_71C1CC: FFreeVar var_110 = ""
  loc_71C1D3: LitVarI2 var_110, 2
  loc_71C1D8: LitI4 5
  loc_71C1DD: LitI4 1
  loc_71C1E2: FLdRfVar var_A0
  loc_71C1E5: Ary1LdRf
  loc_71C1E6: CVarRef
  loc_71C1EB: FLdRfVar var_120
  loc_71C1EE: ImpAdCallFPR4  = Mid(, , )
  loc_71C1F3: FLdRfVar var_120
  loc_71C1F6: LitVarStr var_100, "/"
  loc_71C1FB: ConcatVar var_130
  loc_71C1FF: LitVarI2 var_140, 4
  loc_71C204: LitI4 1
  loc_71C209: LitI4 1
  loc_71C20E: FLdRfVar var_A0
  loc_71C211: Ary1LdRf
  loc_71C212: CVarRef
  loc_71C217: FLdRfVar var_150
  loc_71C21A: ImpAdCallFPR4  = Mid(, , )
  loc_71C21F: FLdRfVar var_150
  loc_71C222: ConcatVar var_160
  loc_71C226: CStrVarTmp
  loc_71C227: FStStrNoPop var_D0
  loc_71C22A: LitI4 1
  loc_71C22F: FLdRfVar var_A0
  loc_71C232: Ary1StStrCopy
  loc_71C233: FFree1Str var_D0
  loc_71C236: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_130 = "": var_150 = ""
  loc_71C245: LitStr "INSERT INTO ARVD4 (peri, salv, sgva,sali, sgia, blco) "
  loc_71C248: FStStrCopy var_AC
  loc_71C24B: LitStr " VALUES ('"
  loc_71C24E: LitI4 1
  loc_71C253: FLdRfVar var_A0
  loc_71C256: Ary1LdI4
  loc_71C257: ConcatStr
  loc_71C258: FStStrNoPop var_D0
  loc_71C25B: LitStr "', "
  loc_71C25E: ConcatStr
  loc_71C25F: FStStrNoPop var_17C
  loc_71C262: LitI4 3
  loc_71C267: FLdRfVar var_A0
  loc_71C26A: Ary1LdRf
  loc_71C26B: LitI2_Byte &HC
  loc_71C26D: PopTmpLdAd2 var_176
  loc_71C270: LitI4 2
  loc_71C275: FLdRfVar var_A0
  loc_71C278: Ary1LdRf
  loc_71C279: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C27E: CStrR8
  loc_71C280: FStStrNoPop var_180
  loc_71C283: ConcatStr
  loc_71C284: FStStrNoPop var_184
  loc_71C287: LitStr ", '"
  loc_71C28A: ConcatStr
  loc_71C28B: FStStrNoPop var_188
  loc_71C28E: LitI4 3
  loc_71C293: FLdRfVar var_A0
  loc_71C296: Ary1LdI4
  loc_71C297: ConcatStr
  loc_71C298: FStStrNoPop var_18C
  loc_71C29B: LitStr "',"
  loc_71C29E: ConcatStr
  loc_71C29F: FStStrNoPop var_190
  loc_71C2A2: LitI4 5
  loc_71C2A7: FLdRfVar var_A0
  loc_71C2AA: Ary1LdRf
  loc_71C2AB: LitI2_Byte &HD
  loc_71C2AD: PopTmpLdAd2 var_2E6
  loc_71C2B0: LitI4 4
  loc_71C2B5: FLdRfVar var_A0
  loc_71C2B8: Ary1LdRf
  loc_71C2B9: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C2BE: CStrR8
  loc_71C2C0: FStStrNoPop var_2C8
  loc_71C2C3: ConcatStr
  loc_71C2C4: FStStrNoPop var_2CC
  loc_71C2C7: LitStr ", '"
  loc_71C2CA: ConcatStr
  loc_71C2CB: FStStrNoPop var_2D0
  loc_71C2CE: LitI4 5
  loc_71C2D3: FLdRfVar var_A0
  loc_71C2D6: Ary1LdI4
  loc_71C2D7: ConcatStr
  loc_71C2D8: FStStrNoPop var_2D4
  loc_71C2DB: LitStr "', '"
  loc_71C2DE: ConcatStr
  loc_71C2DF: FStStrNoPop var_2D8
  loc_71C2E2: LitI4 6
  loc_71C2E7: FLdRfVar var_A0
  loc_71C2EA: Ary1LdI4
  loc_71C2EB: ConcatStr
  loc_71C2EC: FStStrNoPop var_2DC
  loc_71C2EF: LitStr "')"
  loc_71C2F2: ConcatStr
  loc_71C2F3: FStStr var_B0
  loc_71C2F6: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = ""
  loc_71C313: ILdRf var_AC
  loc_71C316: ILdRf var_B0
  loc_71C319: ConcatStr
  loc_71C31A: FStStr var_AC
  loc_71C31D: ILdRf var_B8
  loc_71C320: LitI4 &H11
  loc_71C325: AddI4
  loc_71C326: FStR4 var_B8
  loc_71C329: Branch loc_71CAC3
  loc_71C32C: ILdRf var_194
  loc_71C32F: LitStr "D5"
  loc_71C332: EqStr
  loc_71C334: BranchF loc_71C72E
  loc_71C337: LitI4 6
  loc_71C33C: FLdRfVar var_110
  loc_71C33F: ImpAdCallFPR4  = Chr()
  loc_71C344: FLdRfVar var_110
  loc_71C347: LitI4 2
  loc_71C34C: FLdRfVar var_120
  loc_71C34F: ImpAdCallFPR4  = Chr()
  loc_71C354: FLdRfVar var_120
  loc_71C357: ConcatVar var_130
  loc_71C35B: LitI4 8
  loc_71C360: FLdRfVar var_140
  loc_71C363: ImpAdCallFPR4  = Chr()
  loc_71C368: FLdRfVar var_140
  loc_71C36B: ConcatVar var_150
  loc_71C36F: LitI4 6
  loc_71C374: FLdRfVar var_160
  loc_71C377: ImpAdCallFPR4  = Chr()
  loc_71C37C: FLdRfVar var_160
  loc_71C37F: ConcatVar var_170
  loc_71C383: LitI4 &H19
  loc_71C388: FLdRfVar var_1A4
  loc_71C38B: ImpAdCallFPR4  = Chr()
  loc_71C390: FLdRfVar var_1A4
  loc_71C393: ConcatVar var_1B4
  loc_71C397: LitI4 &HE
  loc_71C39C: FLdRfVar var_1C4
  loc_71C39F: ImpAdCallFPR4  = Chr()
  loc_71C3A4: FLdRfVar var_1C4
  loc_71C3A7: ConcatVar var_1D4
  loc_71C3AB: LitI4 1
  loc_71C3B0: FLdRfVar var_1E4
  loc_71C3B3: ImpAdCallFPR4  = Chr()
  loc_71C3B8: FLdRfVar var_1E4
  loc_71C3BB: ConcatVar var_1F4
  loc_71C3BF: LitI4 &HF
  loc_71C3C4: FLdRfVar var_204
  loc_71C3C7: ImpAdCallFPR4  = Chr()
  loc_71C3CC: FLdRfVar var_204
  loc_71C3CF: ConcatVar var_214
  loc_71C3D3: LitI4 1
  loc_71C3D8: FLdRfVar var_224
  loc_71C3DB: ImpAdCallFPR4  = Chr()
  loc_71C3E0: FLdRfVar var_224
  loc_71C3E3: ConcatVar var_234
  loc_71C3E7: LitI4 &HD
  loc_71C3EC: FLdRfVar var_244
  loc_71C3EF: ImpAdCallFPR4  = Chr()
  loc_71C3F4: FLdRfVar var_244
  loc_71C3F7: ConcatVar var_254
  loc_71C3FB: LitI4 1
  loc_71C400: FLdRfVar var_264
  loc_71C403: ImpAdCallFPR4  = Chr()
  loc_71C408: FLdRfVar var_264
  loc_71C40B: ConcatVar var_274
  loc_71C40F: LitI4 &HF
  loc_71C414: FLdRfVar var_284
  loc_71C417: ImpAdCallFPR4  = Chr()
  loc_71C41C: FLdRfVar var_284
  loc_71C41F: ConcatVar var_294
  loc_71C423: LitI4 1
  loc_71C428: FLdRfVar var_2A4
  loc_71C42B: ImpAdCallFPR4  = Chr()
  loc_71C430: FLdRfVar var_2A4
  loc_71C433: ConcatVar var_2B4
  loc_71C437: LitI4 &HAA
  loc_71C43C: FLdRfVar var_2C4
  loc_71C43F: ImpAdCallFPR4  = Chr()
  loc_71C444: FLdRfVar var_2C4
  loc_71C447: ConcatVar var_350
  loc_71C44B: CStrVarTmp
  loc_71C44C: FStStr var_A4
  loc_71C44F: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2C4 = ""
  loc_71C488: ILdRf var_B8
  loc_71C48B: LitI4 2
  loc_71C490: AddI4
  loc_71C491: FStR4 var_B8
  loc_71C494: LitVar_Missing var_110
  loc_71C497: ILdRf var_B8
  loc_71C49A: ILdRf sValor
  loc_71C49D: CVarRef
  loc_71C4A2: FLdRfVar var_120
  loc_71C4A5: ImpAdCallFPR4  = Mid(, , )
  loc_71C4AA: ILdRf var_B8
  loc_71C4AD: LitI2_Byte &HE
  loc_71C4AF: PopTmpLdAd2 var_176
  loc_71C4B2: FLdRfVar var_A4
  loc_71C4B5: FLdRfVar var_A0
  loc_71C4B8: PopTmpLdAdStr var_174
  loc_71C4BB: FLdRfVar var_120
  loc_71C4BE: CStrVarTmp
  loc_71C4BF: PopTmpLdAdStr
  loc_71C4C3: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71C4C8: CI4UI1
  loc_71C4C9: AddI4
  loc_71C4CA: FStR4 var_B8
  loc_71C4CD: FFree1Str var_D0
  loc_71C4D0: FFreeVar var_110 = ""
  loc_71C4D7: LitVarI2 var_110, 2
  loc_71C4DC: LitI4 5
  loc_71C4E1: LitI4 1
  loc_71C4E6: FLdRfVar var_A0
  loc_71C4E9: Ary1LdRf
  loc_71C4EA: CVarRef
  loc_71C4EF: FLdRfVar var_120
  loc_71C4F2: ImpAdCallFPR4  = Mid(, , )
  loc_71C4F7: FLdRfVar var_120
  loc_71C4FA: LitVarStr var_100, "/"
  loc_71C4FF: ConcatVar var_130
  loc_71C503: LitVarI2 var_140, 4
  loc_71C508: LitI4 1
  loc_71C50D: LitI4 1
  loc_71C512: FLdRfVar var_A0
  loc_71C515: Ary1LdRf
  loc_71C516: CVarRef
  loc_71C51B: FLdRfVar var_150
  loc_71C51E: ImpAdCallFPR4  = Mid(, , )
  loc_71C523: FLdRfVar var_150
  loc_71C526: ConcatVar var_160
  loc_71C52A: CStrVarTmp
  loc_71C52B: FStStrNoPop var_D0
  loc_71C52E: LitI4 1
  loc_71C533: FLdRfVar var_A0
  loc_71C536: Ary1StStrCopy
  loc_71C537: FFree1Str var_D0
  loc_71C53A: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_130 = "": var_150 = ""
  loc_71C549: LitStr "INSERT INTO ARVD5 (peri, tcon, fer8, cart, descp, volu, sgvd, voac, sgva, comd, sgcd, coma, sgca, blco)"
  loc_71C54C: FStStrCopy var_AC
  loc_71C54F: LitStr " VALUES ('"
  loc_71C552: LitI4 1
  loc_71C557: FLdRfVar var_A0
  loc_71C55A: Ary1LdI4
  loc_71C55B: ConcatStr
  loc_71C55C: FStStrNoPop var_D0
  loc_71C55F: LitStr "', '"
  loc_71C562: ConcatStr
  loc_71C563: FStStrNoPop var_17C
  loc_71C566: LitI4 2
  loc_71C56B: FLdRfVar var_A0
  loc_71C56E: Ary1LdI4
  loc_71C56F: ConcatStr
  loc_71C570: FStStrNoPop var_180
  loc_71C573: LitStr "', '"
  loc_71C576: ConcatStr
  loc_71C577: FStStrNoPop var_184
  loc_71C57A: LitI4 3
  loc_71C57F: FLdRfVar var_A0
  loc_71C582: Ary1LdRf
  loc_71C583: ImpAdCallI2 Proc_87_29_6028E4()
  loc_71C588: FStStrNoPop var_188
  loc_71C58B: ConcatStr
  loc_71C58C: FStStrNoPop var_18C
  loc_71C58F: LitStr "', '"
  loc_71C592: ConcatStr
  loc_71C593: FStStrNoPop var_190
  loc_71C596: LitI4 4
  loc_71C59B: FLdRfVar var_A0
  loc_71C59E: Ary1LdI4
  loc_71C59F: ConcatStr
  loc_71C5A0: FStStrNoPop var_2C8
  loc_71C5A3: LitStr "', '"
  loc_71C5A6: ConcatStr
  loc_71C5A7: FStStrNoPop var_2CC
  loc_71C5AA: LitI4 5
  loc_71C5AF: FLdRfVar var_A0
  loc_71C5B2: Ary1LdI4
  loc_71C5B3: ConcatStr
  loc_71C5B4: FStStrNoPop var_2D0
  loc_71C5B7: LitStr "', "
  loc_71C5BA: ConcatStr
  loc_71C5BB: FStStrNoPop var_2D4
  loc_71C5BE: LitI4 7
  loc_71C5C3: FLdRfVar var_A0
  loc_71C5C6: Ary1LdRf
  loc_71C5C7: LitI2_Byte &HB
  loc_71C5C9: PopTmpLdAd2 var_176
  loc_71C5CC: LitI4 6
  loc_71C5D1: FLdRfVar var_A0
  loc_71C5D4: Ary1LdRf
  loc_71C5D5: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C5DA: CStrR8
  loc_71C5DC: FStStrNoPop var_2D8
  loc_71C5DF: ConcatStr
  loc_71C5E0: FStStrNoPop var_2DC
  loc_71C5E3: LitStr ", '"
  loc_71C5E6: ConcatStr
  loc_71C5E7: FStStrNoPop var_2E0
  loc_71C5EA: LitI4 7
  loc_71C5EF: FLdRfVar var_A0
  loc_71C5F2: Ary1LdI4
  loc_71C5F3: ConcatStr
  loc_71C5F4: FStStrNoPop var_2E4
  loc_71C5F7: LitStr "', "
  loc_71C5FA: ConcatStr
  loc_71C5FB: FStStrNoPop var_2EC
  loc_71C5FE: LitI4 9
  loc_71C603: FLdRfVar var_A0
  loc_71C606: Ary1LdRf
  loc_71C607: LitI2_Byte &HC
  loc_71C609: PopTmpLdAd2 var_2E6
  loc_71C60C: LitI4 8
  loc_71C611: FLdRfVar var_A0
  loc_71C614: Ary1LdRf
  loc_71C615: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C61A: CStrR8
  loc_71C61C: FStStrNoPop var_2F0
  loc_71C61F: ConcatStr
  loc_71C620: FStStrNoPop var_2F4
  loc_71C623: LitStr ", '"
  loc_71C626: ConcatStr
  loc_71C627: FStStrNoPop var_2F8
  loc_71C62A: LitI4 9
  loc_71C62F: FLdRfVar var_A0
  loc_71C632: Ary1LdI4
  loc_71C633: ConcatStr
  loc_71C634: FStStrNoPop var_2FC
  loc_71C637: LitStr "', "
  loc_71C63A: ConcatStr
  loc_71C63B: FStStrNoPop var_300
  loc_71C63E: LitI4 &HB
  loc_71C643: FLdRfVar var_A0
  loc_71C646: Ary1LdRf
  loc_71C647: LitI2_Byte &HB
  loc_71C649: PopTmpLdAd2 var_302
  loc_71C64C: LitI4 &HA
  loc_71C651: FLdRfVar var_A0
  loc_71C654: Ary1LdRf
  loc_71C655: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C65A: CStrR8
  loc_71C65C: FStStrNoPop var_308
  loc_71C65F: ConcatStr
  loc_71C660: FStStrNoPop var_30C
  loc_71C663: LitStr ", '"
  loc_71C666: ConcatStr
  loc_71C667: FStStrNoPop var_310
  loc_71C66A: LitI4 &HB
  loc_71C66F: FLdRfVar var_A0
  loc_71C672: Ary1LdI4
  loc_71C673: ConcatStr
  loc_71C674: FStStrNoPop var_314
  loc_71C677: LitStr "', "
  loc_71C67A: ConcatStr
  loc_71C67B: FStStrNoPop var_318
  loc_71C67E: LitI4 &HD
  loc_71C683: FLdRfVar var_A0
  loc_71C686: Ary1LdRf
  loc_71C687: LitI2_Byte &HD
  loc_71C689: PopTmpLdAd2 var_31E
  loc_71C68C: LitI4 &HC
  loc_71C691: FLdRfVar var_A0
  loc_71C694: Ary1LdRf
  loc_71C695: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C69A: CStrR8
  loc_71C69C: FStStrNoPop var_31C
  loc_71C69F: ConcatStr
  loc_71C6A0: FStStrNoPop var_354
  loc_71C6A3: LitStr ", '"
  loc_71C6A6: ConcatStr
  loc_71C6A7: FStStrNoPop var_358
  loc_71C6AA: LitI4 &HD
  loc_71C6AF: FLdRfVar var_A0
  loc_71C6B2: Ary1LdI4
  loc_71C6B3: ConcatStr
  loc_71C6B4: FStStrNoPop var_35C
  loc_71C6B7: LitStr "', '"
  loc_71C6BA: ConcatStr
  loc_71C6BB: FStStrNoPop var_360
  loc_71C6BE: LitI4 &HE
  loc_71C6C3: FLdRfVar var_A0
  loc_71C6C6: Ary1LdI4
  loc_71C6C7: ConcatStr
  loc_71C6C8: FStStrNoPop var_364
  loc_71C6CB: LitStr "')"
  loc_71C6CE: ConcatStr
  loc_71C6CF: FStStr var_B0
  loc_71C6D2: FFreeStr var_360 = "": var_364 = "": var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_354 = "": var_358 = ""
  loc_71C715: ILdRf var_AC
  loc_71C718: ILdRf var_B0
  loc_71C71B: ConcatStr
  loc_71C71C: FStStr var_AC
  loc_71C71F: ILdRf var_B8
  loc_71C722: LitI4 &H11
  loc_71C727: AddI4
  loc_71C728: FStR4 var_B8
  loc_71C72B: Branch loc_71CAC3
  loc_71C72E: ILdRf var_194
  loc_71C731: LitStr "D6"
  loc_71C734: EqStr
  loc_71C736: BranchF loc_71CAC3
  loc_71C739: LitI4 6
  loc_71C73E: FLdRfVar var_110
  loc_71C741: ImpAdCallFPR4  = Chr()
  loc_71C746: FLdRfVar var_110
  loc_71C749: LitI4 2
  loc_71C74E: FLdRfVar var_120
  loc_71C751: ImpAdCallFPR4  = Chr()
  loc_71C756: FLdRfVar var_120
  loc_71C759: ConcatVar var_130
  loc_71C75D: LitI4 &H28
  loc_71C762: FLdRfVar var_140
  loc_71C765: ImpAdCallFPR4  = Chr()
  loc_71C76A: FLdRfVar var_140
  loc_71C76D: ConcatVar var_150
  loc_71C771: LitI4 &HF
  loc_71C776: FLdRfVar var_160
  loc_71C779: ImpAdCallFPR4  = Chr()
  loc_71C77E: FLdRfVar var_160
  loc_71C781: ConcatVar var_170
  loc_71C785: LitI4 1
  loc_71C78A: FLdRfVar var_1A4
  loc_71C78D: ImpAdCallFPR4  = Chr()
  loc_71C792: FLdRfVar var_1A4
  loc_71C795: ConcatVar var_1B4
  loc_71C799: LitI4 &HF
  loc_71C79E: FLdRfVar var_1C4
  loc_71C7A1: ImpAdCallFPR4  = Chr()
  loc_71C7A6: FLdRfVar var_1C4
  loc_71C7A9: ConcatVar var_1D4
  loc_71C7AD: LitI4 1
  loc_71C7B2: FLdRfVar var_1E4
  loc_71C7B5: ImpAdCallFPR4  = Chr()
  loc_71C7BA: FLdRfVar var_1E4
  loc_71C7BD: ConcatVar var_1F4
  loc_71C7C1: LitI4 &HF
  loc_71C7C6: FLdRfVar var_204
  loc_71C7C9: ImpAdCallFPR4  = Chr()
  loc_71C7CE: FLdRfVar var_204
  loc_71C7D1: ConcatVar var_214
  loc_71C7D5: LitI4 1
  loc_71C7DA: FLdRfVar var_224
  loc_71C7DD: ImpAdCallFPR4  = Chr()
  loc_71C7E2: FLdRfVar var_224
  loc_71C7E5: ConcatVar var_234
  loc_71C7E9: LitI4 &HF
  loc_71C7EE: FLdRfVar var_244
  loc_71C7F1: ImpAdCallFPR4  = Chr()
  loc_71C7F6: FLdRfVar var_244
  loc_71C7F9: ConcatVar var_254
  loc_71C7FD: LitI4 1
  loc_71C802: FLdRfVar var_264
  loc_71C805: ImpAdCallFPR4  = Chr()
  loc_71C80A: FLdRfVar var_264
  loc_71C80D: ConcatVar var_274
  loc_71C811: LitI4 &HA6
  loc_71C816: FLdRfVar var_284
  loc_71C819: ImpAdCallFPR4  = Chr()
  loc_71C81E: FLdRfVar var_284
  loc_71C821: ConcatVar var_294
  loc_71C825: CStrVarTmp
  loc_71C826: FStStr var_A4
  loc_71C829: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = ""
  loc_71C85A: ILdRf var_B8
  loc_71C85D: LitI4 2
  loc_71C862: AddI4
  loc_71C863: FStR4 var_B8
  loc_71C866: LitVar_Missing var_110
  loc_71C869: ILdRf var_B8
  loc_71C86C: ILdRf sValor
  loc_71C86F: CVarRef
  loc_71C874: FLdRfVar var_120
  loc_71C877: ImpAdCallFPR4  = Mid(, , )
  loc_71C87C: ILdRf var_B8
  loc_71C87F: LitI2_Byte &HC
  loc_71C881: PopTmpLdAd2 var_176
  loc_71C884: FLdRfVar var_A4
  loc_71C887: FLdRfVar var_A0
  loc_71C88A: PopTmpLdAdStr var_174
  loc_71C88D: FLdRfVar var_120
  loc_71C890: CStrVarTmp
  loc_71C891: PopTmpLdAdStr
  loc_71C895: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_71C89A: CI4UI1
  loc_71C89B: AddI4
  loc_71C89C: FStR4 var_B8
  loc_71C89F: FFree1Str var_D0
  loc_71C8A2: FFreeVar var_110 = ""
  loc_71C8A9: LitVarI2 var_110, 2
  loc_71C8AE: LitI4 5
  loc_71C8B3: LitI4 1
  loc_71C8B8: FLdRfVar var_A0
  loc_71C8BB: Ary1LdRf
  loc_71C8BC: CVarRef
  loc_71C8C1: FLdRfVar var_120
  loc_71C8C4: ImpAdCallFPR4  = Mid(, , )
  loc_71C8C9: FLdRfVar var_120
  loc_71C8CC: LitVarStr var_100, "/"
  loc_71C8D1: ConcatVar var_130
  loc_71C8D5: LitVarI2 var_140, 4
  loc_71C8DA: LitI4 1
  loc_71C8DF: LitI4 1
  loc_71C8E4: FLdRfVar var_A0
  loc_71C8E7: Ary1LdRf
  loc_71C8E8: CVarRef
  loc_71C8ED: FLdRfVar var_150
  loc_71C8F0: ImpAdCallFPR4  = Mid(, , )
  loc_71C8F5: FLdRfVar var_150
  loc_71C8F8: ConcatVar var_160
  loc_71C8FC: CStrVarTmp
  loc_71C8FD: FStStrNoPop var_D0
  loc_71C900: LitI4 1
  loc_71C905: FLdRfVar var_A0
  loc_71C908: Ary1StStrCopy
  loc_71C909: FFree1Str var_D0
  loc_71C90C: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_130 = "": var_150 = ""
  loc_71C91B: LitStr "INSERT INTO ARVD6 (peri, tcon, descc, volu, sgvd, voac, sgva, comd, sgcd, coma, sgca, blco)"
  loc_71C91E: FStStrCopy var_AC
  loc_71C921: LitStr " VALUES ('"
  loc_71C924: LitI4 1
  loc_71C929: FLdRfVar var_A0
  loc_71C92C: Ary1LdI4
  loc_71C92D: ConcatStr
  loc_71C92E: FStStrNoPop var_D0
  loc_71C931: LitStr "', '"
  loc_71C934: ConcatStr
  loc_71C935: FStStrNoPop var_17C
  loc_71C938: LitI4 2
  loc_71C93D: FLdRfVar var_A0
  loc_71C940: Ary1LdI4
  loc_71C941: ConcatStr
  loc_71C942: FStStrNoPop var_180
  loc_71C945: LitStr "', '"
  loc_71C948: ConcatStr
  loc_71C949: FStStrNoPop var_184
  loc_71C94C: LitI4 3
  loc_71C951: FLdRfVar var_A0
  loc_71C954: Ary1LdI4
  loc_71C955: ConcatStr
  loc_71C956: FStStrNoPop var_188
  loc_71C959: LitStr "', "
  loc_71C95C: ConcatStr
  loc_71C95D: FStStrNoPop var_18C
  loc_71C960: LitI4 5
  loc_71C965: FLdRfVar var_A0
  loc_71C968: Ary1LdRf
  loc_71C969: LitI2_Byte &HC
  loc_71C96B: PopTmpLdAd2 var_176
  loc_71C96E: LitI4 4
  loc_71C973: FLdRfVar var_A0
  loc_71C976: Ary1LdRf
  loc_71C977: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C97C: CStrR8
  loc_71C97E: FStStrNoPop var_190
  loc_71C981: ConcatStr
  loc_71C982: FStStrNoPop var_2C8
  loc_71C985: LitStr ", '"
  loc_71C988: ConcatStr
  loc_71C989: FStStrNoPop var_2CC
  loc_71C98C: LitI4 5
  loc_71C991: FLdRfVar var_A0
  loc_71C994: Ary1LdI4
  loc_71C995: ConcatStr
  loc_71C996: FStStrNoPop var_2D0
  loc_71C999: LitStr "', "
  loc_71C99C: ConcatStr
  loc_71C99D: FStStrNoPop var_2D4
  loc_71C9A0: LitI4 7
  loc_71C9A5: FLdRfVar var_A0
  loc_71C9A8: Ary1LdRf
  loc_71C9A9: LitI2_Byte &HC
  loc_71C9AB: PopTmpLdAd2 var_2E6
  loc_71C9AE: LitI4 6
  loc_71C9B3: FLdRfVar var_A0
  loc_71C9B6: Ary1LdRf
  loc_71C9B7: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C9BC: CStrR8
  loc_71C9BE: FStStrNoPop var_2D8
  loc_71C9C1: ConcatStr
  loc_71C9C2: FStStrNoPop var_2DC
  loc_71C9C5: LitStr ", '"
  loc_71C9C8: ConcatStr
  loc_71C9C9: FStStrNoPop var_2E0
  loc_71C9CC: LitI4 7
  loc_71C9D1: FLdRfVar var_A0
  loc_71C9D4: Ary1LdI4
  loc_71C9D5: ConcatStr
  loc_71C9D6: FStStrNoPop var_2E4
  loc_71C9D9: LitStr "', "
  loc_71C9DC: ConcatStr
  loc_71C9DD: FStStrNoPop var_2EC
  loc_71C9E0: LitI4 9
  loc_71C9E5: FLdRfVar var_A0
  loc_71C9E8: Ary1LdRf
  loc_71C9E9: LitI2_Byte &HD
  loc_71C9EB: PopTmpLdAd2 var_302
  loc_71C9EE: LitI4 8
  loc_71C9F3: FLdRfVar var_A0
  loc_71C9F6: Ary1LdRf
  loc_71C9F7: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71C9FC: CStrR8
  loc_71C9FE: FStStrNoPop var_2F0
  loc_71CA01: ConcatStr
  loc_71CA02: FStStrNoPop var_2F4
  loc_71CA05: LitStr ", '"
  loc_71CA08: ConcatStr
  loc_71CA09: FStStrNoPop var_2F8
  loc_71CA0C: LitI4 9
  loc_71CA11: FLdRfVar var_A0
  loc_71CA14: Ary1LdI4
  loc_71CA15: ConcatStr
  loc_71CA16: FStStrNoPop var_2FC
  loc_71CA19: LitStr "', "
  loc_71CA1C: ConcatStr
  loc_71CA1D: FStStrNoPop var_300
  loc_71CA20: LitI4 &HB
  loc_71CA25: FLdRfVar var_A0
  loc_71CA28: Ary1LdRf
  loc_71CA29: LitI2_Byte &HD
  loc_71CA2B: PopTmpLdAd2 var_31E
  loc_71CA2E: LitI4 &HA
  loc_71CA33: FLdRfVar var_A0
  loc_71CA36: Ary1LdRf
  loc_71CA37: ImpAdCallFPR4 Proc_87_28_5F3778(, , )
  loc_71CA3C: CStrR8
  loc_71CA3E: FStStrNoPop var_308
  loc_71CA41: ConcatStr
  loc_71CA42: FStStrNoPop var_30C
  loc_71CA45: LitStr ", '"
  loc_71CA48: ConcatStr
  loc_71CA49: FStStrNoPop var_310
  loc_71CA4C: LitI4 &HB
  loc_71CA51: FLdRfVar var_A0
  loc_71CA54: Ary1LdI4
  loc_71CA55: ConcatStr
  loc_71CA56: FStStrNoPop var_314
  loc_71CA59: LitStr "', '"
  loc_71CA5C: ConcatStr
  loc_71CA5D: FStStrNoPop var_318
  loc_71CA60: LitI4 &HC
  loc_71CA65: FLdRfVar var_A0
  loc_71CA68: Ary1LdI4
  loc_71CA69: ConcatStr
  loc_71CA6A: FStStrNoPop var_31C
  loc_71CA6D: LitStr "')"
  loc_71CA70: ConcatStr
  loc_71CA71: FStStr var_B0
  loc_71CA74: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_71CAAD: ILdRf var_AC
  loc_71CAB0: ILdRf var_B0
  loc_71CAB3: ConcatStr
  loc_71CAB4: FStStr var_AC
  loc_71CAB7: ILdRf var_B8
  loc_71CABA: LitI4 &H11
  loc_71CABF: AddI4
  loc_71CAC0: FStR4 var_B8
  loc_71CAC3: LitVarI2 var_110, 2
  loc_71CAC8: ILdRf var_B8
  loc_71CACB: ILdRf sValor
  loc_71CACE: CVarRef
  loc_71CAD3: FLdRfVar var_120
  loc_71CAD6: ImpAdCallFPR4  = Mid(, , )
  loc_71CADB: FLdRfVar var_120
  loc_71CADE: CStrVarTmp
  loc_71CADF: FStStr var_C4
  loc_71CAE2: FFreeVar var_110 = ""
  loc_71CAE9: LitVarI4
  loc_71CAF1: PopAdLdVar
  loc_71CAF2: ILdRf var_AC
  loc_71CAF5: FLdPr var_BC
  loc_71CAF8: Me.Execute from_stack_1, from_stack_2
  loc_71CAFD: Branch loc_71B0E8
  loc_71CB00: FLdPr var_BC
  loc_71CB03: Me.Close
  loc_71CB08: LitI2_Byte &HFF
  loc_71CB0A: FStI2 var_86
  loc_71CB0D: ExitProcCbHresult
  loc_71CB13: LitI2_Byte 0
  loc_71CB15: FStI2 var_86
  loc_71CB18: FLdRfVar var_174
  loc_71CB1B: ImpAdCallI2 Err 'rtcErrObj
  loc_71CB20: FStAdFunc var_CC
  loc_71CB23: FLdPr var_CC
  loc_71CB26:  = Err.Number
  loc_71CB2B: ILdRf var_174
  loc_71CB2E: LitI4 &HC0E
  loc_71CB33: EqI4
  loc_71CB34: FFree1Ad var_CC
  loc_71CB37: BranchF loc_71CB6E
  loc_71CB3A: LitVar_Missing var_140
  loc_71CB3D: LitVar_Missing var_130
  loc_71CB40: LitVarStr var_F0, "Reportes"
  loc_71CB45: FStVarCopyObj var_120
  loc_71CB48: FLdRfVar var_120
  loc_71CB4B: LitI4 &H40
  loc_71CB50: LitVarStr var_E0, "Los archivos de impresión estan siendo utilizados. Reintente por favor"
  loc_71CB55: FStVarCopyObj var_110
  loc_71CB58: FLdRfVar var_110
  loc_71CB5B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_71CB60: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_71CB6B: Branch loc_71CC4A
  loc_71CB6E: FLdRfVar var_174
  loc_71CB71: ImpAdCallI2 Err 'rtcErrObj
  loc_71CB76: FStAdFunc var_CC
  loc_71CB79: FLdPr var_CC
  loc_71CB7C:  = Err.Number
  loc_71CB81: ILdRf var_174
  loc_71CB84: LitI4 &HBCE
  loc_71CB89: EqI4
  loc_71CB8A: FFree1Ad var_CC
  loc_71CB8D: BranchF loc_71CBE0
  loc_71CB90: LitI4 &HD
  loc_71CB95: FLdRfVar var_110
  loc_71CB98: ImpAdCallFPR4  = Chr()
  loc_71CB9D: LitVar_Missing var_160
  loc_71CBA0: LitVar_Missing var_150
  loc_71CBA3: LitVarStr var_100, "Reportes"
  loc_71CBA8: FStVarCopyObj var_140
  loc_71CBAB: FLdRfVar var_140
  loc_71CBAE: LitI4 &H40
  loc_71CBB3: LitVarStr var_E0, "Esta intentando cargar datos duplicados "
  loc_71CBB8: FLdRfVar var_110
  loc_71CBBB: ConcatVar var_120
  loc_71CBBF: ILdRf var_AC
  loc_71CBC2: CVarStr var_F0
  loc_71CBC5: ConcatVar var_130
  loc_71CBC9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_71CBCE: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = ""
  loc_71CBDD: Branch loc_71CC4A
  loc_71CBE0: FLdRfVar var_174
  loc_71CBE3: ImpAdCallI2 Err 'rtcErrObj
  loc_71CBE8: FStAdFunc var_CC
  loc_71CBEB: FLdPr var_CC
  loc_71CBEE:  = Err.Number
  loc_71CBF3: FLdRfVar var_17C
  loc_71CBF6: ImpAdCallI2 Err 'rtcErrObj
  loc_71CBFB: FStAdFunc var_368
  loc_71CBFE: FLdPr var_368
  loc_71CC01:  = Err.Description
  loc_71CC06: LitVar_Missing var_140
  loc_71CC09: LitVar_Missing var_130
  loc_71CC0C: LitVar_Missing var_120
  loc_71CC0F: LitI4 &H40
  loc_71CC14: ILdRf var_174
  loc_71CC17: CStrI4
  loc_71CC19: FStStrNoPop var_D0
  loc_71CC1C: LitStr "  "
  loc_71CC1F: ConcatStr
  loc_71CC20: FStStrNoPop var_180
  loc_71CC23: ILdRf var_17C
  loc_71CC26: ConcatStr
  loc_71CC27: CVarStr var_110
  loc_71CC2A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_71CC2F: FFreeStr var_D0 = "": var_180 = ""
  loc_71CC38: FFreeAd var_CC = ""
  loc_71CC3F: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_71CC4A: FLdPr var_BC
  loc_71CC4D: Me.Close
  loc_71CC52: ExitProcCbHresult
End Function

Private Function Proc_85_24_66E170() '66E170
  'Data Table: 42D060
  loc_66DDB4: OnErrorGoto loc_66E133
  loc_66DDB7: LitI2_Byte 1
  loc_66DDB9: FLdRfVar var_9E
  loc_66DDBC: LitI2_Byte &H14
  loc_66DDBE: ForI2 var_A2
  loc_66DDC4: LitStr "0"
  loc_66DDC7: FLdI2 var_9E
  loc_66DDCA: CI4UI1
  loc_66DDCB: FLdPr Me
  loc_66DDCE: MemLdRfVar from_stack_1.global_60
  loc_66DDD1: Ary1StStrCopy
  loc_66DDD2: FLdRfVar var_9E
  loc_66DDD5: NextI2 var_A2, loc_66DDC4
  loc_66DDDA: FLdRfVar var_B4
  loc_66DDDD: ImpAdCallFPR4  = Date
  loc_66DDE2: FLdRfVar var_B4
  loc_66DDE5: FnCDateVar
  loc_66DDE7: FStFPR8 var_98
  loc_66DDEA: FFree1Var var_B4 = ""
  loc_66DDED: LitI4 1
  loc_66DDF2: LitI4 1
  loc_66DDF7: LitVarStr var_D4, "dd/mm/yyyy"
  loc_66DDFC: FStVarCopyObj var_B4
  loc_66DDFF: FLdRfVar var_B4
  loc_66DE02: FLdRfVar var_90
  loc_66DE05: CVarRef
  loc_66DE0A: FLdRfVar var_E4
  loc_66DE0D: ImpAdCallFPR4  = Format(, )
  loc_66DE12: LitI4 1
  loc_66DE17: LitI4 1
  loc_66DE1C: LitVarStr var_128, "dd/mm/yyyy"
  loc_66DE21: FStVarCopyObj var_138
  loc_66DE24: FLdRfVar var_138
  loc_66DE27: FLdRfVar var_90
  loc_66DE2A: CVarRef
  loc_66DE2F: FLdRfVar var_148
  loc_66DE32: ImpAdCallFPR4  = Format(, )
  loc_66DE37: LitI4 1
  loc_66DE3C: LitI4 1
  loc_66DE41: LitVarStr var_194, "dd/mm/yyyy"
  loc_66DE46: FStVarCopyObj var_1A4
  loc_66DE49: FLdRfVar var_1A4
  loc_66DE4C: FLdRfVar var_90
  loc_66DE4F: CVarRef
  loc_66DE54: FLdRfVar var_1B4
  loc_66DE57: ImpAdCallFPR4  = Format(, )
  loc_66DE5C: LitVarI2 var_108, 4
  loc_66DE61: LitI4 7
  loc_66DE66: FLdRfVar var_E4
  loc_66DE69: CStrVarVal var_E8
  loc_66DE6D: ImpAdCallI2 Mid$(, , )
  loc_66DE72: FStStrNoPop var_170
  loc_66DE75: LitVarI2 var_16C, 2
  loc_66DE7A: LitI4 4
  loc_66DE7F: FLdRfVar var_148
  loc_66DE82: CStrVarVal var_14C
  loc_66DE86: ImpAdCallI2 Mid$(, , )
  loc_66DE8B: FStStrNoPop var_174
  loc_66DE8E: ConcatStr
  loc_66DE8F: FStStrNoPop var_1DC
  loc_66DE92: LitVarI2 var_1D8, 2
  loc_66DE97: LitI4 1
  loc_66DE9C: FLdRfVar var_1B4
  loc_66DE9F: CStrVarVal var_1B8
  loc_66DEA3: ImpAdCallI2 Mid$(, , )
  loc_66DEA8: FStStrNoPop var_1E0
  loc_66DEAB: ConcatStr
  loc_66DEAC: FStStrNoPop var_1E4
  loc_66DEAF: LitStr "000000"
  loc_66DEB2: ConcatStr
  loc_66DEB3: FStStr var_88
  loc_66DEB6: FFreeStr var_E8 = "": var_14C = "": var_170 = "": var_174 = "": var_1B8 = "": var_1DC = "": var_1E0 = ""
  loc_66DEC9: FFreeVar var_B4 = "": var_E4 = "": var_108 = "": var_138 = "": var_148 = "": var_16C = "": var_1A4 = "": var_1B4 = ""
  loc_66DEDE: LitI4 1
  loc_66DEE3: LitI4 1
  loc_66DEE8: LitVarStr var_D4, "dd/mm/yyyy"
  loc_66DEED: FStVarCopyObj var_B4
  loc_66DEF0: FLdRfVar var_B4
  loc_66DEF3: FLdRfVar var_98
  loc_66DEF6: CVarRef
  loc_66DEFB: FLdRfVar var_E4
  loc_66DEFE: ImpAdCallFPR4  = Format(, )
  loc_66DF03: LitI4 1
  loc_66DF08: LitI4 1
  loc_66DF0D: LitVarStr var_128, "dd/mm/yyyy"
  loc_66DF12: FStVarCopyObj var_138
  loc_66DF15: FLdRfVar var_138
  loc_66DF18: FLdRfVar var_98
  loc_66DF1B: CVarRef
  loc_66DF20: FLdRfVar var_148
  loc_66DF23: ImpAdCallFPR4  = Format(, )
  loc_66DF28: LitI4 1
  loc_66DF2D: LitI4 1
  loc_66DF32: LitVarStr var_194, "dd/mm/yyyy"
  loc_66DF37: FStVarCopyObj var_1A4
  loc_66DF3A: FLdRfVar var_1A4
  loc_66DF3D: FLdRfVar var_98
  loc_66DF40: CVarRef
  loc_66DF45: FLdRfVar var_1B4
  loc_66DF48: ImpAdCallFPR4  = Format(, )
  loc_66DF4D: ILdRf var_88
  loc_66DF50: LitVarI2 var_108, 4
  loc_66DF55: LitI4 7
  loc_66DF5A: FLdRfVar var_E4
  loc_66DF5D: CStrVarVal var_E8
  loc_66DF61: ImpAdCallI2 Mid$(, , )
  loc_66DF66: FStStrNoPop var_14C
  loc_66DF69: ConcatStr
  loc_66DF6A: FStStrNoPop var_174
  loc_66DF6D: LitVarI2 var_16C, 2
  loc_66DF72: LitI4 4
  loc_66DF77: FLdRfVar var_148
  loc_66DF7A: CStrVarVal var_170
  loc_66DF7E: ImpAdCallI2 Mid$(, , )
  loc_66DF83: FStStrNoPop var_1B8
  loc_66DF86: ConcatStr
  loc_66DF87: FStStrNoPop var_1E0
  loc_66DF8A: LitVarI2 var_1D8, 2
  loc_66DF8F: LitI4 1
  loc_66DF94: FLdRfVar var_1B4
  loc_66DF97: CStrVarVal var_1DC
  loc_66DF9B: ImpAdCallI2 Mid$(, , )
  loc_66DFA0: FStStrNoPop var_1E4
  loc_66DFA3: ConcatStr
  loc_66DFA4: FStStrNoPop var_1E8
  loc_66DFA7: LitStr "235959"
  loc_66DFAA: ConcatStr
  loc_66DFAB: FStStr var_88
  loc_66DFAE: FFreeStr var_E8 = "": var_14C = "": var_170 = "": var_174 = "": var_1B8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_66DFC3: FFreeVar var_B4 = "": var_E4 = "": var_108 = "": var_138 = "": var_148 = "": var_16C = "": var_1A4 = "": var_1B4 = ""
  loc_66DFD8: FLdRfVar var_1EE
  loc_66DFDB: FLdRfVar var_9C
  loc_66DFDE: FLdRfVar var_88
  loc_66DFE1: FLdPr Me
  loc_66DFE4: MemLdRfVar from_stack_1.TipoReporte
  loc_66DFE7: FLdRfVar var_1EC
  loc_66DFEA: ImpAdLdRf MemVar_74C760
  loc_66DFED: NewIfNullPr Formx
  loc_66DFF0: from_stack_1v = Formx.global_4589716Get()
  loc_66DFF5: FLdPr var_1EC
  loc_66DFF8: Formx.FontSize = from_stack_1s
  loc_66DFFD: FLdI2 var_1EE
  loc_66E000: NotI4
  loc_66E001: FFree1Ad var_1EC
  loc_66E004: BranchF loc_66E033
  loc_66E007: FLdRfVar var_B4
  loc_66E00A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66E00F: FLdRfVar var_B4
  loc_66E012: CBoolVarNull
  loc_66E014: FFree1Var var_B4 = ""
  loc_66E017: BranchF loc_66E030
  loc_66E01A: ILdRf Me
  loc_66E01D: FStAdNoPop
  loc_66E021: ImpAdLdRf MemVar_7520D4
  loc_66E024: NewIfNullPr Global
  loc_66E027: Global.Unload from_stack_1
  loc_66E02C: FFree1Ad var_1EC
  loc_66E02F: ExitProcHresult
  loc_66E030: Branch loc_66DFD8
  loc_66E033: FLdRfVar var_9C
  loc_66E036: CVarRef
  loc_66E03B: FLdRfVar var_B4
  loc_66E03E: ImpAdCallFPR4  = Trim()
  loc_66E043: FLdRfVar var_B4
  loc_66E046: CStrVarTmp
  loc_66E047: FStStr var_9C
  loc_66E04A: FFree1Var var_B4 = ""
  loc_66E04D: ILdRf var_9C
  loc_66E050: LitStr "0"
  loc_66E053: NeStr
  loc_66E055: BranchF loc_66E07A
  loc_66E058: LitI2_Byte 0
  loc_66E05A: FLdPr Me
  loc_66E05D: MemStI2 global_126
  loc_66E060: FLdRfVar var_B4
  loc_66E063: ILdRf var_9C
  loc_66E066: FStStrCopy var_E8
  loc_66E069: FLdRfVar var_E8
  loc_66E06C: from_stack_2v = CargarTablaFechas(from_stack_1v)
  loc_66E071: FFree1Str var_E8
  loc_66E074: FFree1Var var_B4 = ""
  loc_66E077: Branch loc_66E0E0
  loc_66E07A: LitI2_Byte 0
  loc_66E07C: FLdPr Me
  loc_66E07F: Me.Visible = from_stack_1b
  loc_66E084: LitVar_Missing var_138
  loc_66E087: LitVar_Missing var_108
  loc_66E08A: LitVarStr var_D4, "Reportes"
  loc_66E08F: FStVarCopyObj var_E4
  loc_66E092: FLdRfVar var_E4
  loc_66E095: LitI4 &H40
  loc_66E09A: LitVarStr var_C4, "No hay datos a mostrar en el reporte."
  loc_66E09F: FStVarCopyObj var_B4
  loc_66E0A2: FLdRfVar var_B4
  loc_66E0A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66E0AA: FFreeVar var_B4 = "": var_E4 = "": var_108 = ""
  loc_66E0B5: FLdPr Me
  loc_66E0B8: MemLdI2 global_126
  loc_66E0BB: LitI2_Byte &HFF
  loc_66E0BD: EqI2
  loc_66E0BE: ILdRf var_88
  loc_66E0C1: ILdRf Me
  loc_66E0C4: PrintObject
  loc_66E0CA: ILdRf Me
  loc_66E0CD: FStAdNoPop
  loc_66E0D1: ImpAdLdRf MemVar_7520D4
  loc_66E0D4: NewIfNullPr Global
  loc_66E0D7: Global.Unload from_stack_1
  loc_66E0DC: FFree1Ad var_1EC
  loc_66E0DF: ExitProcHresult
  loc_66E0E0: ILdRf Me
  loc_66E0E3: CastAd
  loc_66E0E6: FStAdFunc var_1EC
  loc_66E0E9: FLdRfVar var_1EC
  loc_66E0EC: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_66E0F1: FFree1Ad var_1EC
  loc_66E0F4: FLdPrThis
  loc_66E0F5: VCallAd Control_ID_TablaFechas
  loc_66E0F8: FStAdFunc var_1EC
  loc_66E0FB: FLdPr var_1EC
  loc_66E0FE: LateIdCall
  loc_66E106: FFree1Ad var_1EC
  loc_66E109: Call TablaFechas_UnknownEvent_8()
  loc_66E10E: FLdPr Me
  loc_66E111: MemLdI2 global_126
  loc_66E114: LitI2_Byte 0
  loc_66E116: EqI2
  loc_66E117: BranchF loc_66E11E
  loc_66E11A: ExitProcHresult
  loc_66E11B: Branch loc_66E133
  loc_66E11E: ILdRf Me
  loc_66E121: FStAdNoPop
  loc_66E125: ImpAdLdRf MemVar_7520D4
  loc_66E128: NewIfNullPr Global
  loc_66E12B: Global.Unload from_stack_1
  loc_66E130: FFree1Ad var_1EC
  loc_66E133: LitVar_Missing var_138
  loc_66E136: LitVar_Missing var_108
  loc_66E139: LitVar_Missing var_E4
  loc_66E13C: LitI4 0
  loc_66E141: FLdRfVar var_E8
  loc_66E144: ImpAdCallI2 Err 'rtcErrObj
  loc_66E149: FStAdFunc var_1EC
  loc_66E14C: FLdPr var_1EC
  loc_66E14F:  = Err.Description
  loc_66E154: FLdZeroAd var_E8
  loc_66E157: CVarStr var_B4
  loc_66E15A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66E15F: FFree1Ad var_1EC
  loc_66E162: FFreeVar var_B4 = "": var_E4 = "": var_108 = ""
  loc_66E16D: ExitProcHresult
End Function

Private Function Proc_85_25_6184E4(arg_34) '6184E4
  'Data Table: 42D060
  loc_6183F4: FLdRfVar var_8E
  loc_6183F7: FLdRfVar var_88
  loc_6183FA: FLdRfVar var_8C
  loc_6183FD: ImpAdLdRf MemVar_74C760
  loc_618400: NewIfNullPr Formx
  loc_618403: from_stack_1v = Formx.global_4589716Get()
  loc_618408: FLdPr var_8C
  loc_61840B: Call 0.Method_arg_348 ()
  loc_618410: FFree1Ad var_8C
  loc_618413: ILdRf var_88
  loc_618416: LitStr "1"
  loc_618419: NeStr
  loc_61841B: BranchF loc_61842F
  loc_61841E: FLdRfVar var_A0
  loc_618421: FLdRfVar var_88
  loc_618424: from_stack_2v = CargarTablaFechas(from_stack_1v)
  loc_618429: FFree1Var var_A0 = ""
  loc_61842C: Branch loc_6184E1
  loc_61842F: LitI2_Byte 0
  loc_618431: FLdPr Me
  loc_618434: Formx.Visible = from_stack_1b
  loc_618439: FLdRfVar var_1DC
  loc_61843C: LitVar_Missing var_1D8
  loc_61843F: LitVar_Missing var_1B8
  loc_618442: LitVar_Missing var_198
  loc_618445: LitVar_Missing var_178
  loc_618448: LitVar_Missing var_158
  loc_61844B: LitVar_Missing var_138
  loc_61844E: LitVar_Missing var_118
  loc_618451: LitVar_Missing var_F8
  loc_618454: LitVar_Missing var_D8
  loc_618457: LitVar_Missing var_A0
  loc_61845A: LitStr "No existen reportes"
  loc_61845D: FStStrCopy var_A8
  loc_618460: FLdRfVar var_A8
  loc_618463: LitI4 &H17
  loc_618468: PopTmpLdAdStr var_A4
  loc_61846B: LitI2_Byte &H53
  loc_61846D: PopTmpLdAd2 var_8E
  loc_618470: ImpAdLdRf MemVar_74C7D0
  loc_618473: NewIfNullPr clsMsg
  loc_618476: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61847B: LitVar_Missing var_24C
  loc_61847E: LitVar_Missing var_22C
  loc_618481: LitVar_Missing var_20C
  loc_618484: LitI4 &H40
  loc_618489: FLdZeroAd var_1DC
  loc_61848C: CVarStr var_1EC
  loc_61848F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_618494: FFree1Str var_A8
  loc_618497: FFreeVar var_A0 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_20C = "": var_22C = ""
  loc_6184B6: FLdPr Me
  loc_6184B9: MemLdI2 global_126
  loc_6184BC: LitI2_Byte &HFF
  loc_6184BE: EqI2
  loc_6184BF: FLdRfVar var_25C
  loc_6184C2: ILdRf Me
  loc_6184C5: PrintObject
  loc_6184CB: ILdRf Me
  loc_6184CE: FStAdNoPop
  loc_6184D2: ImpAdLdRf MemVar_7520D4
  loc_6184D5: NewIfNullPr Global
  loc_6184D8: Global.Unload from_stack_1
  loc_6184DD: FFree1Ad var_8C
  loc_6184E0: ExitProcHresult
  loc_6184E1: ExitProcHresult
End Function

Private Function Proc_85_26_6D6E68(arg_34) '6D6E68
  'Data Table: 42D060
  loc_6D63A8: FLdPr Me
  loc_6D63AB: MemLdStr TipoReporte
  loc_6D63AE: FStStrCopy var_90
  loc_6D63B1: ILdRf var_90
  loc_6D63B4: LitStr "I"
  loc_6D63B7: EqStr
  loc_6D63B9: BranchT loc_6D63C7
  loc_6D63BC: ILdRf var_90
  loc_6D63BF: LitStr "J"
  loc_6D63C2: EqStr
  loc_6D63C4: BranchF loc_6D67CD
  loc_6D63C7: FLdPrThis
  loc_6D63C8: VCallAd Control_ID_TablaFechas
  loc_6D63CB: FStAdFunc var_94
  loc_6D63CE: FLdPr var_94
  loc_6D63D1: LateIdLdVar var_A4 DispID_10 0
  loc_6D63D8: CI4Var
  loc_6D63DA: CVarI4
  loc_6D63DE: PopAdLdVar
  loc_6D63DF: LitVarI4
  loc_6D63E7: PopAdLdVar
  loc_6D63E8: FLdPrThis
  loc_6D63E9: VCallAd Control_ID_TablaFechas
  loc_6D63EC: FStAdFunc var_C8
  loc_6D63EF: FLdPr var_C8
  loc_6D63F2: LateIdCallLdVar
  loc_6D63FC: PopAd
  loc_6D63FE: FLdPrThis
  loc_6D63FF: VCallAd Control_ID_TablaFechas
  loc_6D6402: FStAdFunc var_13C
  loc_6D6405: FLdPr var_13C
  loc_6D6408: LateIdLdVar var_14C DispID_10 0
  loc_6D640F: CI4Var
  loc_6D6411: CVarI4
  loc_6D6415: PopAdLdVar
  loc_6D6416: LitVarI4
  loc_6D641E: PopAdLdVar
  loc_6D641F: FLdPrThis
  loc_6D6420: VCallAd Control_ID_TablaFechas
  loc_6D6423: FStAdFunc var_170
  loc_6D6426: FLdPr var_170
  loc_6D6429: LateIdCallLdVar
  loc_6D6433: PopAd
  loc_6D6435: FLdPrThis
  loc_6D6436: VCallAd Control_ID_TablaFechas
  loc_6D6439: FStAdFunc var_1F4
  loc_6D643C: FLdPr var_1F4
  loc_6D643F: LateIdLdVar var_204 DispID_10 0
  loc_6D6446: CI4Var
  loc_6D6448: CVarI4
  loc_6D644C: PopAdLdVar
  loc_6D644D: LitVarI4
  loc_6D6455: PopAdLdVar
  loc_6D6456: FLdPrThis
  loc_6D6457: VCallAd Control_ID_TablaFechas
  loc_6D645A: FStAdFunc var_228
  loc_6D645D: FLdPr var_228
  loc_6D6460: LateIdCallLdVar
  loc_6D646A: PopAd
  loc_6D646C: LitVarI2 var_108, 4
  loc_6D6471: LitI4 7
  loc_6D6476: FLdRfVar var_D8
  loc_6D6479: CStrVarTmp
  loc_6D647A: CVarStr var_E8
  loc_6D647D: FLdRfVar var_118
  loc_6D6480: ImpAdCallFPR4  = Mid(, , )
  loc_6D6485: FLdRfVar var_118
  loc_6D6488: LitVarStr var_128, "/"
  loc_6D648D: ConcatVar var_138
  loc_6D6491: LitVarI2 var_1B0, 2
  loc_6D6496: LitI4 4
  loc_6D649B: FLdRfVar var_180
  loc_6D649E: CStrVarTmp
  loc_6D649F: CVarStr var_190
  loc_6D64A2: FLdRfVar var_1C0
  loc_6D64A5: ImpAdCallFPR4  = Mid(, , )
  loc_6D64AA: FLdRfVar var_1C0
  loc_6D64AD: ConcatVar var_1D0
  loc_6D64B1: LitVarStr var_1E0, "/"
  loc_6D64B6: ConcatVar var_1F0
  loc_6D64BA: LitVarI2 var_268, 2
  loc_6D64BF: LitI4 1
  loc_6D64C4: FLdRfVar var_238
  loc_6D64C7: CStrVarTmp
  loc_6D64C8: CVarStr var_248
  loc_6D64CB: FLdRfVar var_278
  loc_6D64CE: ImpAdCallFPR4  = Mid(, , )
  loc_6D64D3: FLdRfVar var_278
  loc_6D64D6: ConcatVar var_288
  loc_6D64DA: CStrVarTmp
  loc_6D64DB: FStStr var_88
  loc_6D64DE: FFreeAd var_94 = "": var_C8 = "": var_13C = "": var_170 = "": var_1F4 = ""
  loc_6D64ED: FFreeVar var_A4 = "": var_D8 = "": var_E8 = "": var_108 = "": var_118 = "": var_14C = "": var_180 = "": var_190 = "": var_1B0 = "": var_138 = "": var_1C0 = "": var_1D0 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_1F0 = "": var_278 = ""
  loc_6D6516: FLdPrThis
  loc_6D6517: VCallAd Control_ID_TablaFechas
  loc_6D651A: FStAdFunc var_94
  loc_6D651D: FLdPr var_94
  loc_6D6520: LateIdLdVar var_A4 DispID_10 0
  loc_6D6527: CI4Var
  loc_6D6529: CVarI4
  loc_6D652D: PopAdLdVar
  loc_6D652E: LitVarI4
  loc_6D6536: PopAdLdVar
  loc_6D6537: FLdPrThis
  loc_6D6538: VCallAd Control_ID_TablaFechas
  loc_6D653B: FStAdFunc var_C8
  loc_6D653E: FLdPr var_C8
  loc_6D6541: LateIdCallLdVar
  loc_6D654B: PopAd
  loc_6D654D: FLdPrThis
  loc_6D654E: VCallAd Control_ID_TablaFechas
  loc_6D6551: FStAdFunc var_13C
  loc_6D6554: FLdPr var_13C
  loc_6D6557: LateIdLdVar var_190 DispID_10 0
  loc_6D655E: CI4Var
  loc_6D6560: CVarI4
  loc_6D6564: PopAdLdVar
  loc_6D6565: LitVarI4
  loc_6D656D: PopAdLdVar
  loc_6D656E: FLdPrThis
  loc_6D656F: VCallAd Control_ID_TablaFechas
  loc_6D6572: FStAdFunc var_170
  loc_6D6575: FLdPr var_170
  loc_6D6578: LateIdCallLdVar
  loc_6D6582: PopAd
  loc_6D6584: FLdPrThis
  loc_6D6585: VCallAd Control_ID_TablaFechas
  loc_6D6588: FStAdFunc var_1F4
  loc_6D658B: FLdPr var_1F4
  loc_6D658E: LateIdLdVar var_248 DispID_10 0
  loc_6D6595: CI4Var
  loc_6D6597: CVarI4
  loc_6D659B: PopAdLdVar
  loc_6D659C: LitVarI4
  loc_6D65A4: PopAdLdVar
  loc_6D65A5: FLdPrThis
  loc_6D65A6: VCallAd Control_ID_TablaFechas
  loc_6D65A9: FStAdFunc var_228
  loc_6D65AC: FLdPr var_228
  loc_6D65AF: LateIdCallLdVar
  loc_6D65B9: PopAd
  loc_6D65BB: ILdRf var_88
  loc_6D65BE: LitStr "00:00:00"
  loc_6D65C1: ConcatStr
  loc_6D65C2: CVarStr var_138
  loc_6D65C5: LitVarI2 var_108, 4
  loc_6D65CA: LitI4 7
  loc_6D65CF: FLdRfVar var_D8
  loc_6D65D2: CStrVarTmp
  loc_6D65D3: CVarStr var_E8
  loc_6D65D6: FLdRfVar var_118
  loc_6D65D9: ImpAdCallFPR4  = Mid(, , )
  loc_6D65DE: FLdRfVar var_118
  loc_6D65E1: ConcatVar var_14C
  loc_6D65E5: LitVarStr var_128, "/"
  loc_6D65EA: ConcatVar var_180
  loc_6D65EE: LitVarI2 var_1D0, 2
  loc_6D65F3: LitI4 4
  loc_6D65F8: FLdRfVar var_1B0
  loc_6D65FB: CStrVarTmp
  loc_6D65FC: CVarStr var_1C0
  loc_6D65FF: FLdRfVar var_1F0
  loc_6D6602: ImpAdCallFPR4  = Mid(, , )
  loc_6D6607: FLdRfVar var_1F0
  loc_6D660A: ConcatVar var_204
  loc_6D660E: LitVarStr var_1E0, "/"
  loc_6D6613: ConcatVar var_238
  loc_6D6617: LitVarI2 var_288, 2
  loc_6D661C: LitI4 1
  loc_6D6621: FLdRfVar var_268
  loc_6D6624: CStrVarTmp
  loc_6D6625: CVarStr var_278
  loc_6D6628: FLdRfVar var_298
  loc_6D662B: ImpAdCallFPR4  = Mid(, , )
  loc_6D6630: FLdRfVar var_298
  loc_6D6633: ConcatVar var_2A8
  loc_6D6637: LitVarStr var_2B8, "00:00:00"
  loc_6D663C: ConcatVar var_2C8
  loc_6D6640: FLdPrThis
  loc_6D6641: VCallAd Control_ID_TablaFechas
  loc_6D6644: FStAdFunc var_2CC
  loc_6D6647: FLdPr var_2CC
  loc_6D664A: LateIdLdVar var_2DC DispID_10 0
  loc_6D6651: CI4Var
  loc_6D6653: CVarI4
  loc_6D6657: PopAdLdVar
  loc_6D6658: LitVarI4
  loc_6D6660: PopAdLdVar
  loc_6D6661: FLdPrThis
  loc_6D6662: VCallAd Control_ID_TablaFechas
  loc_6D6665: FStAdFunc var_300
  loc_6D6668: FLdPr var_300
  loc_6D666B: LateIdCallLdVar
  loc_6D6675: CStrVarTmp
  loc_6D6676: CVarStr var_320
  loc_6D6679: ConcatVar var_330
  loc_6D667D: CStrVarTmp
  loc_6D667E: FStStr var_88
  loc_6D6681: FFreeAd var_94 = "": var_C8 = "": var_13C = "": var_170 = "": var_1F4 = "": var_228 = "": var_2CC = ""
  loc_6D6694: FFreeVar var_A4 = "": var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_118 = "": var_14C = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_180 = "": var_1F0 = "": var_204 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_238 = "": var_298 = "": var_2A8 = "": var_2DC = "": var_310 = "": var_2C8 = "": var_320 = ""
  loc_6D66CB: FLdRfVar var_A4
  loc_6D66CE: FLdRfVar var_8C
  loc_6D66D1: FLdRfVar var_88
  loc_6D66D4: FLdPr Me
  loc_6D66D7: MemLdRfVar from_stack_1.TipoReporte
  loc_6D66DA: FLdPr Me
  loc_6D66DD: MemLdRfVar from_stack_1.TipoReporte
  loc_6D66E0: FLdRfVar var_94
  loc_6D66E3: ImpAdLdRf MemVar_74C760
  loc_6D66E6: NewIfNullPr Formx
  loc_6D66E9: from_stack_1v = Formx.global_4589716Get()
  loc_6D66EE: FLdPr var_94
  loc_6D66F1:  = Formx.FontBold
  loc_6D66F6: FLdRfVar var_A4
  loc_6D66F9: NotVar var_D8
  loc_6D66FD: CBoolVarNull
  loc_6D66FF: FFree1Ad var_94
  loc_6D6702: FFree1Var var_A4 = ""
  loc_6D6705: BranchF loc_6D6734
  loc_6D6708: FLdRfVar var_A4
  loc_6D670B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D6710: FLdRfVar var_A4
  loc_6D6713: CBoolVarNull
  loc_6D6715: FFree1Var var_A4 = ""
  loc_6D6718: BranchF loc_6D6731
  loc_6D671B: ILdRf Me
  loc_6D671E: FStAdNoPop
  loc_6D6722: ImpAdLdRf MemVar_7520D4
  loc_6D6725: NewIfNullPr Global
  loc_6D6728: Global.Unload from_stack_1
  loc_6D672D: FFree1Ad var_94
  loc_6D6730: ExitProcHresult
  loc_6D6731: Branch loc_6D66CB
  loc_6D6734: FLdRfVar var_8C
  loc_6D6737: CVarRef
  loc_6D673C: FLdRfVar var_A4
  loc_6D673F: ImpAdCallFPR4  = Trim()
  loc_6D6744: FLdRfVar var_A4
  loc_6D6747: LitVarStr var_C4, "0"
  loc_6D674C: HardType
  loc_6D674D: EqVarBool
  loc_6D674F: FFree1Var var_A4 = ""
  loc_6D6752: BranchF loc_6D67A9
  loc_6D6755: LitVar_Missing var_108
  loc_6D6758: LitVar_Missing var_E8
  loc_6D675B: LitVarStr var_B4, "Aviso"
  loc_6D6760: FStVarCopyObj var_D8
  loc_6D6763: FLdRfVar var_D8
  loc_6D6766: LitI4 &H40
  loc_6D676B: LitStr "Se ha recibido un Archivo de Ajuste de Rendiciones."
  loc_6D676E: LitStr vbCrLf
  loc_6D6771: ConcatStr
  loc_6D6772: FStStrNoPop var_334
  loc_6D6775: LitStr "Se actualizara la grilla. Por favor luego de la"
  loc_6D6778: ConcatStr
  loc_6D6779: FStStrNoPop var_338
  loc_6D677C: LitStr vbCrLf
  loc_6D677F: ConcatStr
  loc_6D6780: FStStrNoPop var_33C
  loc_6D6783: LitStr "operación seleccione el registro deseado."
  loc_6D6786: ConcatStr
  loc_6D6787: CVarStr var_A4
  loc_6D678A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D678F: FFreeStr var_334 = "": var_338 = ""
  loc_6D6798: FFreeVar var_A4 = "": var_D8 = "": var_E8 = ""
  loc_6D67A3: from_stack_1v = Proc_85_31_661918()
  loc_6D67A8: ExitProcHresult
  loc_6D67A9: FLdRfVar var_33E
  loc_6D67AC: FLdRfVar var_8C
  loc_6D67AF: from_stack_2v = ArmarReporteRA(from_stack_1v)
  loc_6D67B4: FLdI2 var_33E
  loc_6D67B7: BranchF loc_6D67CA
  loc_6D67BA: FLdRfVar var_340
  loc_6D67BD: LitI2_Byte 0
  loc_6D67BF: PopTmpLdAd2 var_33E
  loc_6D67C2: FLdRfVar var_8C
  loc_6D67C5: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6D67CA: Branch loc_6D6E67
  loc_6D67CD: ILdRf var_90
  loc_6D67D0: LitStr "C"
  loc_6D67D3: EqStr
  loc_6D67D5: BranchF loc_6D68CC
  loc_6D67D8: FLdPrThis
  loc_6D67D9: VCallAd Control_ID_TablaFechas
  loc_6D67DC: FStAdFunc var_94
  loc_6D67DF: FLdPr var_94
  loc_6D67E2: LateIdLdVar var_A4 DispID_10 0
  loc_6D67E9: CI4Var
  loc_6D67EB: CVarI4
  loc_6D67EF: PopAdLdVar
  loc_6D67F0: LitVarI4
  loc_6D67F8: PopAdLdVar
  loc_6D67F9: FLdPrThis
  loc_6D67FA: VCallAd Control_ID_TablaFechas
  loc_6D67FD: FStAdFunc var_C8
  loc_6D6800: FLdPr var_C8
  loc_6D6803: LateIdCallLdVar
  loc_6D680D: CStrVarTmp
  loc_6D680E: FStStr var_88
  loc_6D6811: FFreeAd var_94 = ""
  loc_6D6818: FFreeVar var_A4 = ""
  loc_6D681F: FLdRfVar var_33E
  loc_6D6822: FLdRfVar var_88
  loc_6D6825: FLdRfVar var_94
  loc_6D6828: ImpAdLdRf MemVar_74C760
  loc_6D682B: NewIfNullPr Formx
  loc_6D682E: from_stack_1v = Formx.global_4589716Get()
  loc_6D6833: FLdPr var_94
  loc_6D6836: Call 0.Method_arg_34C ()
  loc_6D683B: FLdI2 var_33E
  loc_6D683E: NotI4
  loc_6D683F: FFree1Ad var_94
  loc_6D6842: BranchF loc_6D6871
  loc_6D6845: FLdRfVar var_A4
  loc_6D6848: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D684D: FLdRfVar var_A4
  loc_6D6850: CBoolVarNull
  loc_6D6852: FFree1Var var_A4 = ""
  loc_6D6855: BranchF loc_6D686E
  loc_6D6858: ILdRf Me
  loc_6D685B: FStAdNoPop
  loc_6D685F: ImpAdLdRf MemVar_7520D4
  loc_6D6862: NewIfNullPr Global
  loc_6D6865: Global.Unload from_stack_1
  loc_6D686A: FFree1Ad var_94
  loc_6D686D: ExitProcHresult
  loc_6D686E: Branch loc_6D681F
  loc_6D6871: FLdRfVar var_33E
  loc_6D6874: FLdRfVar var_88
  loc_6D6877: from_stack_2v = Proc_85_28_6E6818(from_stack_1v)
  loc_6D687C: FLdI2 var_33E
  loc_6D687F: BranchF loc_6D68A0
  loc_6D6882: FLdRfVar var_340
  loc_6D6885: LitI2_Byte 0
  loc_6D6887: PopTmpLdAd2 var_33E
  loc_6D688A: LitI4 0
  loc_6D688F: FStStrCopy var_334
  loc_6D6892: FLdRfVar var_334
  loc_6D6895: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6D689A: FFree1Str var_334
  loc_6D689D: Branch loc_6D68C9
  loc_6D68A0: LitVar_Missing var_108
  loc_6D68A3: LitVar_Missing var_E8
  loc_6D68A6: LitVar_Missing var_D8
  loc_6D68A9: LitI4 0
  loc_6D68AE: LitVarStr var_B4, "No se pudo visualizar el reporte de comisiones"
  loc_6D68B3: FStVarCopyObj var_A4
  loc_6D68B6: FLdRfVar var_A4
  loc_6D68B9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D68BE: FFreeVar var_A4 = "": var_D8 = "": var_E8 = ""
  loc_6D68C9: Branch loc_6D6E67
  loc_6D68CC: ILdRf var_90
  loc_6D68CF: LitStr "G"
  loc_6D68D2: EqStr
  loc_6D68D4: BranchT loc_6D68ED
  loc_6D68D7: ILdRf var_90
  loc_6D68DA: LitStr "F"
  loc_6D68DD: EqStr
  loc_6D68DF: BranchT loc_6D68ED
  loc_6D68E2: ILdRf var_90
  loc_6D68E5: LitStr "L"
  loc_6D68E8: EqStr
  loc_6D68EA: BranchF loc_6D6BA3
  loc_6D68ED: FLdPrThis
  loc_6D68EE: VCallAd Control_ID_TablaFechas
  loc_6D68F1: FStAdFunc var_94
  loc_6D68F4: FLdPr var_94
  loc_6D68F7: LateIdLdVar var_A4 DispID_10 0
  loc_6D68FE: CI4Var
  loc_6D6900: CVarI4
  loc_6D6904: PopAdLdVar
  loc_6D6905: LitVarI4
  loc_6D690D: PopAdLdVar
  loc_6D690E: FLdPrThis
  loc_6D690F: VCallAd Control_ID_TablaFechas
  loc_6D6912: FStAdFunc var_C8
  loc_6D6915: FLdPr var_C8
  loc_6D6918: LateIdCallLdVar
  loc_6D6922: PopAd
  loc_6D6924: FLdPrThis
  loc_6D6925: VCallAd Control_ID_TablaFechas
  loc_6D6928: FStAdFunc var_13C
  loc_6D692B: FLdPr var_13C
  loc_6D692E: LateIdLdVar var_14C DispID_10 0
  loc_6D6935: CI4Var
  loc_6D6937: CVarI4
  loc_6D693B: PopAdLdVar
  loc_6D693C: LitVarI4
  loc_6D6944: PopAdLdVar
  loc_6D6945: FLdPrThis
  loc_6D6946: VCallAd Control_ID_TablaFechas
  loc_6D6949: FStAdFunc var_170
  loc_6D694C: FLdPr var_170
  loc_6D694F: LateIdCallLdVar
  loc_6D6959: PopAd
  loc_6D695B: FLdPrThis
  loc_6D695C: VCallAd Control_ID_TablaFechas
  loc_6D695F: FStAdFunc var_1F4
  loc_6D6962: FLdPr var_1F4
  loc_6D6965: LateIdLdVar var_204 DispID_10 0
  loc_6D696C: CI4Var
  loc_6D696E: CVarI4
  loc_6D6972: PopAdLdVar
  loc_6D6973: LitVarI4
  loc_6D697B: PopAdLdVar
  loc_6D697C: FLdPrThis
  loc_6D697D: VCallAd Control_ID_TablaFechas
  loc_6D6980: FStAdFunc var_228
  loc_6D6983: FLdPr var_228
  loc_6D6986: LateIdCallLdVar
  loc_6D6990: PopAd
  loc_6D6992: LitVarI2 var_108, 4
  loc_6D6997: LitI4 7
  loc_6D699C: FLdRfVar var_D8
  loc_6D699F: CStrVarTmp
  loc_6D69A0: CVarStr var_E8
  loc_6D69A3: FLdRfVar var_118
  loc_6D69A6: ImpAdCallFPR4  = Mid(, , )
  loc_6D69AB: FLdRfVar var_118
  loc_6D69AE: LitVarStr var_128, "/"
  loc_6D69B3: ConcatVar var_138
  loc_6D69B7: LitVarI2 var_1B0, 2
  loc_6D69BC: LitI4 4
  loc_6D69C1: FLdRfVar var_180
  loc_6D69C4: CStrVarTmp
  loc_6D69C5: CVarStr var_190
  loc_6D69C8: FLdRfVar var_1C0
  loc_6D69CB: ImpAdCallFPR4  = Mid(, , )
  loc_6D69D0: FLdRfVar var_1C0
  loc_6D69D3: ConcatVar var_1D0
  loc_6D69D7: LitVarStr var_1E0, "/"
  loc_6D69DC: ConcatVar var_1F0
  loc_6D69E0: LitVarI2 var_268, 2
  loc_6D69E5: LitI4 1
  loc_6D69EA: FLdRfVar var_238
  loc_6D69ED: CStrVarTmp
  loc_6D69EE: CVarStr var_248
  loc_6D69F1: FLdRfVar var_278
  loc_6D69F4: ImpAdCallFPR4  = Mid(, , )
  loc_6D69F9: FLdRfVar var_278
  loc_6D69FC: ConcatVar var_288
  loc_6D6A00: LitVarStr var_2B8, "00:00:00"
  loc_6D6A05: ConcatVar var_298
  loc_6D6A09: CStrVarTmp
  loc_6D6A0A: FStStr var_88
  loc_6D6A0D: FFreeAd var_94 = "": var_C8 = "": var_13C = "": var_170 = "": var_1F4 = ""
  loc_6D6A1C: FFreeVar var_A4 = "": var_D8 = "": var_E8 = "": var_108 = "": var_118 = "": var_14C = "": var_180 = "": var_190 = "": var_1B0 = "": var_138 = "": var_1C0 = "": var_1D0 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_1F0 = "": var_278 = "": var_288 = ""
  loc_6D6A47: ILdRf var_88
  loc_6D6A4A: ILdRf var_88
  loc_6D6A4D: ConcatStr
  loc_6D6A4E: FStStrNoPop var_334
  loc_6D6A51: FLdPrThis
  loc_6D6A52: VCallAd Control_ID_TablaFechas
  loc_6D6A55: FStAdFunc var_94
  loc_6D6A58: FLdPr var_94
  loc_6D6A5B: LateIdLdVar var_A4 DispID_10 0
  loc_6D6A62: CI4Var
  loc_6D6A64: CVarI4
  loc_6D6A68: PopAdLdVar
  loc_6D6A69: LitVarI4
  loc_6D6A71: PopAdLdVar
  loc_6D6A72: FLdPrThis
  loc_6D6A73: VCallAd Control_ID_TablaFechas
  loc_6D6A76: FStAdFunc var_C8
  loc_6D6A79: FLdPr var_C8
  loc_6D6A7C: LateIdCallLdVar
  loc_6D6A86: CStrVarTmp
  loc_6D6A87: FStStrNoPop var_338
  loc_6D6A8A: ConcatStr
  loc_6D6A8B: FStStr var_88
  loc_6D6A8E: FFreeStr var_334 = ""
  loc_6D6A95: FFreeAd var_94 = ""
  loc_6D6A9C: FFreeVar var_A4 = ""
  loc_6D6AA3: FLdPrThis
  loc_6D6AA4: VCallAd Control_ID_TablaFechas
  loc_6D6AA7: FStAdFunc var_94
  loc_6D6AAA: FLdPr var_94
  loc_6D6AAD: LateIdLdVar var_A4 DispID_10 0
  loc_6D6AB4: CI4Var
  loc_6D6AB6: CVarI4
  loc_6D6ABA: PopAdLdVar
  loc_6D6ABB: FLdPrThis
  loc_6D6ABC: VCallAd Control_ID_TablaFechas
  loc_6D6ABF: FStAdFunc var_C8
  loc_6D6AC2: FLdPr var_C8
  loc_6D6AC5: LateIdLdVar var_D8 DispID_11 0
  loc_6D6ACC: CI4Var
  loc_6D6ACE: CVarI4
  loc_6D6AD2: PopAdLdVar
  loc_6D6AD3: FLdPrThis
  loc_6D6AD4: VCallAd Control_ID_TablaFechas
  loc_6D6AD7: FStAdFunc var_13C
  loc_6D6ADA: FLdPr var_13C
  loc_6D6ADD: LateIdCallLdVar
  loc_6D6AE7: CStrVarTmp
  loc_6D6AE8: FStStrNoPop var_334
  loc_6D6AEB: LitStr vbNullString
  loc_6D6AEE: NeStr
  loc_6D6AF0: FFree1Str var_334
  loc_6D6AF3: FFreeAd var_94 = "": var_C8 = ""
  loc_6D6AFC: FFreeVar var_A4 = "": var_D8 = ""
  loc_6D6B05: BranchF loc_6D6BA0
  loc_6D6B08: FLdRfVar var_A4
  loc_6D6B0B: FLdRfVar var_8C
  loc_6D6B0E: FLdRfVar var_88
  loc_6D6B11: FLdPr Me
  loc_6D6B14: MemLdRfVar from_stack_1.TipoReporte
  loc_6D6B17: FLdPr Me
  loc_6D6B1A: MemLdRfVar from_stack_1.TipoReporte
  loc_6D6B1D: FLdRfVar var_94
  loc_6D6B20: ImpAdLdRf MemVar_74C760
  loc_6D6B23: NewIfNullPr Formx
  loc_6D6B26: from_stack_1v = Formx.global_4589716Get()
  loc_6D6B2B: FLdPr var_94
  loc_6D6B2E:  = Formx.FontBold
  loc_6D6B33: FLdRfVar var_A4
  loc_6D6B36: NotVar var_D8
  loc_6D6B3A: CBoolVarNull
  loc_6D6B3C: FFree1Ad var_94
  loc_6D6B3F: FFree1Var var_A4 = ""
  loc_6D6B42: BranchF loc_6D6B71
  loc_6D6B45: FLdRfVar var_A4
  loc_6D6B48: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D6B4D: FLdRfVar var_A4
  loc_6D6B50: CBoolVarNull
  loc_6D6B52: FFree1Var var_A4 = ""
  loc_6D6B55: BranchF loc_6D6B6E
  loc_6D6B58: ILdRf Me
  loc_6D6B5B: FStAdNoPop
  loc_6D6B5F: ImpAdLdRf MemVar_7520D4
  loc_6D6B62: NewIfNullPr Global
  loc_6D6B65: Global.Unload from_stack_1
  loc_6D6B6A: FFree1Ad var_94
  loc_6D6B6D: ExitProcHresult
  loc_6D6B6E: Branch loc_6D6B08
  loc_6D6B71: FLdRfVar var_33E
  loc_6D6B74: ILdRf var_8C
  loc_6D6B77: FStStrCopy var_334
  loc_6D6B7A: FLdRfVar var_334
  loc_6D6B7D: from_stack_2v = ArmarReporteRV(from_stack_1v)
  loc_6D6B82: FFree1Str var_334
  loc_6D6B85: FLdRfVar var_340
  loc_6D6B88: LitI2_Byte 0
  loc_6D6B8A: PopTmpLdAd2 var_33E
  loc_6D6B8D: LitI4 0
  loc_6D6B92: FStStrCopy var_334
  loc_6D6B95: FLdRfVar var_334
  loc_6D6B98: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6D6B9D: FFree1Str var_334
  loc_6D6BA0: Branch loc_6D6E67
  loc_6D6BA3: ILdRf var_90
  loc_6D6BA6: LitStr "B"
  loc_6D6BA9: EqStr
  loc_6D6BAB: BranchF loc_6D6E67
  loc_6D6BAE: FLdPrThis
  loc_6D6BAF: VCallAd Control_ID_TablaFechas
  loc_6D6BB2: FStAdFunc var_94
  loc_6D6BB5: FLdPr var_94
  loc_6D6BB8: LateIdLdVar var_A4 DispID_10 0
  loc_6D6BBF: CI4Var
  loc_6D6BC1: CVarI4
  loc_6D6BC5: PopAdLdVar
  loc_6D6BC6: LitVarI4
  loc_6D6BCE: PopAdLdVar
  loc_6D6BCF: FLdPrThis
  loc_6D6BD0: VCallAd Control_ID_TablaFechas
  loc_6D6BD3: FStAdFunc var_C8
  loc_6D6BD6: FLdPr var_C8
  loc_6D6BD9: LateIdCallLdVar
  loc_6D6BE3: PopAd
  loc_6D6BE5: FLdPrThis
  loc_6D6BE6: VCallAd Control_ID_TablaFechas
  loc_6D6BE9: FStAdFunc var_13C
  loc_6D6BEC: FLdPr var_13C
  loc_6D6BEF: LateIdLdVar var_14C DispID_10 0
  loc_6D6BF6: CI4Var
  loc_6D6BF8: CVarI4
  loc_6D6BFC: PopAdLdVar
  loc_6D6BFD: LitVarI4
  loc_6D6C05: PopAdLdVar
  loc_6D6C06: FLdPrThis
  loc_6D6C07: VCallAd Control_ID_TablaFechas
  loc_6D6C0A: FStAdFunc var_170
  loc_6D6C0D: FLdPr var_170
  loc_6D6C10: LateIdCallLdVar
  loc_6D6C1A: PopAd
  loc_6D6C1C: FLdPrThis
  loc_6D6C1D: VCallAd Control_ID_TablaFechas
  loc_6D6C20: FStAdFunc var_1F4
  loc_6D6C23: FLdPr var_1F4
  loc_6D6C26: LateIdLdVar var_204 DispID_10 0
  loc_6D6C2D: CI4Var
  loc_6D6C2F: CVarI4
  loc_6D6C33: PopAdLdVar
  loc_6D6C34: LitVarI4
  loc_6D6C3C: PopAdLdVar
  loc_6D6C3D: FLdPrThis
  loc_6D6C3E: VCallAd Control_ID_TablaFechas
  loc_6D6C41: FStAdFunc var_228
  loc_6D6C44: FLdPr var_228
  loc_6D6C47: LateIdCallLdVar
  loc_6D6C51: PopAd
  loc_6D6C53: LitVarI2 var_108, 4
  loc_6D6C58: LitI4 7
  loc_6D6C5D: FLdRfVar var_D8
  loc_6D6C60: CStrVarTmp
  loc_6D6C61: CVarStr var_E8
  loc_6D6C64: FLdRfVar var_118
  loc_6D6C67: ImpAdCallFPR4  = Mid(, , )
  loc_6D6C6C: FLdRfVar var_118
  loc_6D6C6F: LitVarStr var_128, "/"
  loc_6D6C74: ConcatVar var_138
  loc_6D6C78: LitVarI2 var_1B0, 2
  loc_6D6C7D: LitI4 4
  loc_6D6C82: FLdRfVar var_180
  loc_6D6C85: CStrVarTmp
  loc_6D6C86: CVarStr var_190
  loc_6D6C89: FLdRfVar var_1C0
  loc_6D6C8C: ImpAdCallFPR4  = Mid(, , )
  loc_6D6C91: FLdRfVar var_1C0
  loc_6D6C94: ConcatVar var_1D0
  loc_6D6C98: LitVarStr var_1E0, "/"
  loc_6D6C9D: ConcatVar var_1F0
  loc_6D6CA1: LitVarI2 var_268, 2
  loc_6D6CA6: LitI4 1
  loc_6D6CAB: FLdRfVar var_238
  loc_6D6CAE: CStrVarTmp
  loc_6D6CAF: CVarStr var_248
  loc_6D6CB2: FLdRfVar var_278
  loc_6D6CB5: ImpAdCallFPR4  = Mid(, , )
  loc_6D6CBA: FLdRfVar var_278
  loc_6D6CBD: ConcatVar var_288
  loc_6D6CC1: LitVarStr var_2B8, "00:00:00"
  loc_6D6CC6: ConcatVar var_298
  loc_6D6CCA: CStrVarTmp
  loc_6D6CCB: FStStr var_88
  loc_6D6CCE: FFreeAd var_94 = "": var_C8 = "": var_13C = "": var_170 = "": var_1F4 = ""
  loc_6D6CDD: FFreeVar var_A4 = "": var_D8 = "": var_E8 = "": var_108 = "": var_118 = "": var_14C = "": var_180 = "": var_190 = "": var_1B0 = "": var_138 = "": var_1C0 = "": var_1D0 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_1F0 = "": var_278 = "": var_288 = ""
  loc_6D6D08: ILdRf var_88
  loc_6D6D0B: ILdRf var_88
  loc_6D6D0E: ConcatStr
  loc_6D6D0F: FStStr var_88
  loc_6D6D12: FLdPrThis
  loc_6D6D13: VCallAd Control_ID_TablaFechas
  loc_6D6D16: FStAdFunc var_94
  loc_6D6D19: FLdPr var_94
  loc_6D6D1C: LateIdLdVar var_A4 DispID_10 0
  loc_6D6D23: CI4Var
  loc_6D6D25: CVarI4
  loc_6D6D29: PopAdLdVar
  loc_6D6D2A: FLdPrThis
  loc_6D6D2B: VCallAd Control_ID_TablaFechas
  loc_6D6D2E: FStAdFunc var_C8
  loc_6D6D31: FLdPr var_C8
  loc_6D6D34: LateIdLdVar var_D8 DispID_11 0
  loc_6D6D3B: CI4Var
  loc_6D6D3D: CVarI4
  loc_6D6D41: PopAdLdVar
  loc_6D6D42: FLdPrThis
  loc_6D6D43: VCallAd Control_ID_TablaFechas
  loc_6D6D46: FStAdFunc var_13C
  loc_6D6D49: FLdPr var_13C
  loc_6D6D4C: LateIdCallLdVar
  loc_6D6D56: CStrVarTmp
  loc_6D6D57: FStStrNoPop var_334
  loc_6D6D5A: LitStr vbNullString
  loc_6D6D5D: NeStr
  loc_6D6D5F: FFree1Str var_334
  loc_6D6D62: FFreeAd var_94 = "": var_C8 = ""
  loc_6D6D6B: FFreeVar var_A4 = "": var_D8 = ""
  loc_6D6D74: BranchF loc_6D6DE0
  loc_6D6D77: FLdRfVar var_A4
  loc_6D6D7A: FLdRfVar var_8C
  loc_6D6D7D: FLdRfVar var_88
  loc_6D6D80: FLdPr Me
  loc_6D6D83: MemLdRfVar from_stack_1.TipoReporte
  loc_6D6D86: FLdPr Me
  loc_6D6D89: MemLdRfVar from_stack_1.TipoReporte
  loc_6D6D8C: FLdRfVar var_94
  loc_6D6D8F: ImpAdLdRf MemVar_74C760
  loc_6D6D92: NewIfNullPr Formx
  loc_6D6D95: from_stack_1v = Formx.global_4589716Get()
  loc_6D6D9A: FLdPr var_94
  loc_6D6D9D:  = Formx.FontBold
  loc_6D6DA2: FLdRfVar var_A4
  loc_6D6DA5: NotVar var_D8
  loc_6D6DA9: CBoolVarNull
  loc_6D6DAB: FFree1Ad var_94
  loc_6D6DAE: FFree1Var var_A4 = ""
  loc_6D6DB1: BranchF loc_6D6DE0
  loc_6D6DB4: FLdRfVar var_A4
  loc_6D6DB7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D6DBC: FLdRfVar var_A4
  loc_6D6DBF: CBoolVarNull
  loc_6D6DC1: FFree1Var var_A4 = ""
  loc_6D6DC4: BranchF loc_6D6DDD
  loc_6D6DC7: ILdRf Me
  loc_6D6DCA: FStAdNoPop
  loc_6D6DCE: ImpAdLdRf MemVar_7520D4
  loc_6D6DD1: NewIfNullPr Global
  loc_6D6DD4: Global.Unload from_stack_1
  loc_6D6DD9: FFree1Ad var_94
  loc_6D6DDC: ExitProcHresult
  loc_6D6DDD: Branch loc_6D6D77
  loc_6D6DE0: FLdRfVar var_A4
  loc_6D6DE3: ILdRf var_8C
  loc_6D6DE6: FStStrCopy var_334
  loc_6D6DE9: FLdRfVar var_334
  loc_6D6DEC: from_stack_2v = ArmarReporteDB(from_stack_1v)
  loc_6D6DF1: FFree1Str var_334
  loc_6D6DF4: FFree1Var var_A4 = ""
  loc_6D6DF7: FLdPrThis
  loc_6D6DF8: VCallAd Control_ID_TablaFechas
  loc_6D6DFB: FStAdFunc var_94
  loc_6D6DFE: FLdPr var_94
  loc_6D6E01: LateIdLdVar var_A4 DispID_10 0
  loc_6D6E08: CI4Var
  loc_6D6E0A: CVarI4
  loc_6D6E0E: PopAdLdVar
  loc_6D6E0F: FLdPrThis
  loc_6D6E10: VCallAd Control_ID_TablaFechas
  loc_6D6E13: FStAdFunc var_C8
  loc_6D6E16: FLdPr var_C8
  loc_6D6E19: LateIdLdVar var_D8 DispID_11 0
  loc_6D6E20: CI4Var
  loc_6D6E22: CVarI4
  loc_6D6E26: PopAdLdVar
  loc_6D6E27: FLdPrThis
  loc_6D6E28: VCallAd Control_ID_TablaFechas
  loc_6D6E2B: FStAdFunc var_13C
  loc_6D6E2E: FLdPr var_13C
  loc_6D6E31: LateIdCallLdVar
  loc_6D6E3B: PopAd
  loc_6D6E3D: FLdRfVar var_340
  loc_6D6E40: LitI2_Byte 0
  loc_6D6E42: PopTmpLdAd2 var_33E
  loc_6D6E45: FLdRfVar var_E8
  loc_6D6E48: CStrVarTmp
  loc_6D6E49: PopTmpLdAdStr
  loc_6D6E4D: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_6D6E52: FFree1Str var_334
  loc_6D6E55: FFreeAd var_94 = "": var_C8 = ""
  loc_6D6E5E: FFreeVar var_A4 = "": var_D8 = ""
  loc_6D6E67: ExitProcHresult
End Function

Private Function Proc_85_27_65E6C0() '65E6C0
  'Data Table: 42D060
  loc_65E3E8: LitVarI2 var_AC, 0
  loc_65E3ED: FStVar var_9C
  loc_65E3F1: FLdPr Me
  loc_65E3F4: MemLdStr TipoReporte
  loc_65E3F7: FStStrCopy var_B0
  loc_65E3FA: ILdRf var_B0
  loc_65E3FD: LitStr "G"
  loc_65E400: EqStr
  loc_65E402: BranchT loc_65E41B
  loc_65E405: ILdRf var_B0
  loc_65E408: LitStr "F"
  loc_65E40B: EqStr
  loc_65E40D: BranchT loc_65E41B
  loc_65E410: ILdRf var_B0
  loc_65E413: LitStr "L"
  loc_65E416: EqStr
  loc_65E418: BranchF loc_65E6BE
  loc_65E41B: FLdPrThis
  loc_65E41C: VCallAd Control_ID_TablaFechas
  loc_65E41F: FStAdFunc var_B4
  loc_65E422: FLdPr var_B4
  loc_65E425: LateIdLdVar var_C4 DispID_10 0
  loc_65E42C: CI4Var
  loc_65E42E: CVarI4
  loc_65E432: PopAdLdVar
  loc_65E433: LitVarI4
  loc_65E43B: PopAdLdVar
  loc_65E43C: FLdPrThis
  loc_65E43D: VCallAd Control_ID_TablaFechas
  loc_65E440: FStAdFunc var_D8
  loc_65E443: FLdPr var_D8
  loc_65E446: LateIdCallLdVar
  loc_65E450: PopAd
  loc_65E452: FLdPrThis
  loc_65E453: VCallAd Control_ID_TablaFechas
  loc_65E456: FStAdFunc var_14C
  loc_65E459: FLdPr var_14C
  loc_65E45C: LateIdLdVar var_15C DispID_10 0
  loc_65E463: CI4Var
  loc_65E465: CVarI4
  loc_65E469: PopAdLdVar
  loc_65E46A: LitVarI4
  loc_65E472: PopAdLdVar
  loc_65E473: FLdPrThis
  loc_65E474: VCallAd Control_ID_TablaFechas
  loc_65E477: FStAdFunc var_180
  loc_65E47A: FLdPr var_180
  loc_65E47D: LateIdCallLdVar
  loc_65E487: PopAd
  loc_65E489: FLdPrThis
  loc_65E48A: VCallAd Control_ID_TablaFechas
  loc_65E48D: FStAdFunc var_204
  loc_65E490: FLdPr var_204
  loc_65E493: LateIdLdVar var_214 DispID_10 0
  loc_65E49A: CI4Var
  loc_65E49C: CVarI4
  loc_65E4A0: PopAdLdVar
  loc_65E4A1: LitVarI4
  loc_65E4A9: PopAdLdVar
  loc_65E4AA: FLdPrThis
  loc_65E4AB: VCallAd Control_ID_TablaFechas
  loc_65E4AE: FStAdFunc var_238
  loc_65E4B1: FLdPr var_238
  loc_65E4B4: LateIdCallLdVar
  loc_65E4BE: PopAd
  loc_65E4C0: LitVarI2 var_118, 4
  loc_65E4C5: LitI4 7
  loc_65E4CA: FLdRfVar var_E8
  loc_65E4CD: CStrVarTmp
  loc_65E4CE: CVarStr var_F8
  loc_65E4D1: FLdRfVar var_128
  loc_65E4D4: ImpAdCallFPR4  = Mid(, , )
  loc_65E4D9: FLdRfVar var_128
  loc_65E4DC: LitVarStr var_138, "/"
  loc_65E4E1: ConcatVar var_148
  loc_65E4E5: LitVarI2 var_1C0, 2
  loc_65E4EA: LitI4 4
  loc_65E4EF: FLdRfVar var_190
  loc_65E4F2: CStrVarTmp
  loc_65E4F3: CVarStr var_1A0
  loc_65E4F6: FLdRfVar var_1D0
  loc_65E4F9: ImpAdCallFPR4  = Mid(, , )
  loc_65E4FE: FLdRfVar var_1D0
  loc_65E501: ConcatVar var_1E0
  loc_65E505: LitVarStr var_1F0, "/"
  loc_65E50A: ConcatVar var_200
  loc_65E50E: LitVarI2 var_278, 2
  loc_65E513: LitI4 1
  loc_65E518: FLdRfVar var_248
  loc_65E51B: CStrVarTmp
  loc_65E51C: CVarStr var_258
  loc_65E51F: FLdRfVar var_288
  loc_65E522: ImpAdCallFPR4  = Mid(, , )
  loc_65E527: FLdRfVar var_288
  loc_65E52A: ConcatVar var_298
  loc_65E52E: LitVarStr var_2A8, "00:00:00"
  loc_65E533: ConcatVar var_2B8
  loc_65E537: CStrVarTmp
  loc_65E538: FStStr var_88
  loc_65E53B: FFreeAd var_B4 = "": var_D8 = "": var_14C = "": var_180 = "": var_204 = ""
  loc_65E54A: FFreeVar var_C4 = "": var_E8 = "": var_F8 = "": var_118 = "": var_128 = "": var_15C = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_148 = "": var_1D0 = "": var_1E0 = "": var_214 = "": var_248 = "": var_258 = "": var_278 = "": var_200 = "": var_288 = "": var_298 = ""
  loc_65E575: ILdRf var_88
  loc_65E578: ILdRf var_88
  loc_65E57B: ConcatStr
  loc_65E57C: FStStrNoPop var_2BC
  loc_65E57F: FLdPrThis
  loc_65E580: VCallAd Control_ID_TablaFechas
  loc_65E583: FStAdFunc var_B4
  loc_65E586: FLdPr var_B4
  loc_65E589: LateIdLdVar var_C4 DispID_10 0
  loc_65E590: CI4Var
  loc_65E592: CVarI4
  loc_65E596: PopAdLdVar
  loc_65E597: LitVarI4
  loc_65E59F: PopAdLdVar
  loc_65E5A0: FLdPrThis
  loc_65E5A1: VCallAd Control_ID_TablaFechas
  loc_65E5A4: FStAdFunc var_D8
  loc_65E5A7: FLdPr var_D8
  loc_65E5AA: LateIdCallLdVar
  loc_65E5B4: CStrVarTmp
  loc_65E5B5: FStStrNoPop var_2C0
  loc_65E5B8: ConcatStr
  loc_65E5B9: FStStr var_88
  loc_65E5BC: FFreeStr var_2BC = ""
  loc_65E5C3: FFreeAd var_B4 = ""
  loc_65E5CA: FFreeVar var_C4 = ""
  loc_65E5D1: FLdPrThis
  loc_65E5D2: VCallAd Control_ID_TablaFechas
  loc_65E5D5: FStAdFunc var_B4
  loc_65E5D8: FLdPr var_B4
  loc_65E5DB: LateIdLdVar var_C4 DispID_10 0
  loc_65E5E2: CI4Var
  loc_65E5E4: CVarI4
  loc_65E5E8: PopAdLdVar
  loc_65E5E9: FLdPrThis
  loc_65E5EA: VCallAd Control_ID_TablaFechas
  loc_65E5ED: FStAdFunc var_D8
  loc_65E5F0: FLdPr var_D8
  loc_65E5F3: LateIdLdVar var_E8 DispID_11 0
  loc_65E5FA: CI4Var
  loc_65E5FC: CVarI4
  loc_65E600: PopAdLdVar
  loc_65E601: FLdPrThis
  loc_65E602: VCallAd Control_ID_TablaFechas
  loc_65E605: FStAdFunc var_14C
  loc_65E608: FLdPr var_14C
  loc_65E60B: LateIdCallLdVar
  loc_65E615: CStrVarTmp
  loc_65E616: FStStrNoPop var_2BC
  loc_65E619: LitStr vbNullString
  loc_65E61C: NeStr
  loc_65E61E: FFree1Str var_2BC
  loc_65E621: FFreeAd var_B4 = "": var_D8 = ""
  loc_65E62A: FFreeVar var_C4 = "": var_E8 = ""
  loc_65E633: BranchF loc_65E6BE
  loc_65E636: FLdRfVar var_C4
  loc_65E639: FLdRfVar var_8C
  loc_65E63C: FLdRfVar var_88
  loc_65E63F: FLdPr Me
  loc_65E642: MemLdRfVar from_stack_1.TipoReporte
  loc_65E645: FLdPr Me
  loc_65E648: MemLdRfVar from_stack_1.TipoReporte
  loc_65E64B: FLdRfVar var_B4
  loc_65E64E: ImpAdLdRf MemVar_74C760
  loc_65E651: NewIfNullPr Formx
  loc_65E654: from_stack_1v = Formx.global_4589716Get()
  loc_65E659: FLdPr var_B4
  loc_65E65C:  = Formx.FontBold
  loc_65E661: FLdRfVar var_C4
  loc_65E664: NotVar var_E8
  loc_65E668: CBoolVarNull
  loc_65E66A: FFree1Ad var_B4
  loc_65E66D: FFree1Var var_C4 = ""
  loc_65E670: BranchF loc_65E69F
  loc_65E673: FLdRfVar var_C4
  loc_65E676: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65E67B: FLdRfVar var_C4
  loc_65E67E: CBoolVarNull
  loc_65E680: FFree1Var var_C4 = ""
  loc_65E683: BranchF loc_65E69C
  loc_65E686: ILdRf Me
  loc_65E689: FStAdNoPop
  loc_65E68D: ImpAdLdRf MemVar_7520D4
  loc_65E690: NewIfNullPr Global
  loc_65E693: Global.Unload from_stack_1
  loc_65E698: FFree1Ad var_B4
  loc_65E69B: ExitProcHresult
  loc_65E69C: Branch loc_65E636
  loc_65E69F: FLdRfVar var_2C2
  loc_65E6A2: ILdRf var_8C
  loc_65E6A5: FStStrCopy var_2BC
  loc_65E6A8: FLdRfVar var_2BC
  loc_65E6AB: from_stack_2v = ArmarReporteRV(from_stack_1v)
  loc_65E6B0: FFree1Str var_2BC
  loc_65E6B3: FLdRfVar var_C4
  loc_65E6B6: from_stack_1v = CargarPeriodo()
  loc_65E6BB: FFree1Var var_C4 = ""
  loc_65E6BE: ExitProcHresult
End Function

Private Function Proc_85_28_6E6818(arg_C) '6E6818
  'Data Table: 42D060
  loc_6E5B98: OnErrorGoto loc_6E680B
  loc_6E5B9B: FLdRfVar var_B8
  loc_6E5B9E: FLdRfVar var_B4
  loc_6E5BA1: ImpAdLdRf MemVar_7520D4
  loc_6E5BA4: NewIfNullPr Global
  loc_6E5BA7:  = Global.App
  loc_6E5BAC: FLdPr var_B4
  loc_6E5BAF:  = App.Path
  loc_6E5BB4: ILdRf var_B8
  loc_6E5BB7: LitStr "\REPORTE.MDB"
  loc_6E5BBA: ConcatStr
  loc_6E5BBB: FStStr var_A8
  loc_6E5BBE: FFree1Str var_B8
  loc_6E5BC1: FFree1Ad var_B4
  loc_6E5BC4: FLdRfVar var_B4
  loc_6E5BC7: LitVar_Missing var_E8
  loc_6E5BCA: PopAdLdVar
  loc_6E5BCB: LitVar_Missing var_D8
  loc_6E5BCE: PopAdLdVar
  loc_6E5BCF: LitVar_TRUE var_C8
  loc_6E5BD2: PopAdLdVar
  loc_6E5BD3: ILdRf var_A8
  loc_6E5BD6: ImpAdLdRf MemVar_752164
  loc_6E5BD9: NewIfNullPr Me
  loc_6E5BDC: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6E5BE1: FLdZeroAd var_B4
  loc_6E5BE4: FStVarAdFunc
  loc_6E5BE8: LitI4 1
  loc_6E5BED: FStR4 var_B0
  loc_6E5BF0: LitVarStr var_C8, "Delete * from COM_TR02"
  loc_6E5BF5: PopAdLdVar
  loc_6E5BF6: LitVarI4
  loc_6E5BFE: PopAdLdVar
  loc_6E5BFF: FLdRfVar var_F8
  loc_6E5C02: LdPrVar
  loc_6E5C04: LateMemCall
  loc_6E5C0A: LitVarStr var_C8, "Delete * from COM_TR03"
  loc_6E5C0F: PopAdLdVar
  loc_6E5C10: LitVarI4
  loc_6E5C18: PopAdLdVar
  loc_6E5C19: FLdRfVar var_F8
  loc_6E5C1C: LdPrVar
  loc_6E5C1E: LateMemCall
  loc_6E5C24: LitVarStr var_C8, "Delete * from COM_TR04"
  loc_6E5C29: PopAdLdVar
  loc_6E5C2A: LitVarI4
  loc_6E5C32: PopAdLdVar
  loc_6E5C33: FLdRfVar var_F8
  loc_6E5C36: LdPrVar
  loc_6E5C38: LateMemCall
  loc_6E5C3E: LitVarStr var_C8, "Delete * from COM_TR05"
  loc_6E5C43: PopAdLdVar
  loc_6E5C44: LitVarI4
  loc_6E5C4C: PopAdLdVar
  loc_6E5C4D: FLdRfVar var_F8
  loc_6E5C50: LdPrVar
  loc_6E5C52: LateMemCall
  loc_6E5C58: LitVarStr var_C8, "Delete * from COM_TR06"
  loc_6E5C5D: PopAdLdVar
  loc_6E5C5E: LitVarI4
  loc_6E5C66: PopAdLdVar
  loc_6E5C67: FLdRfVar var_F8
  loc_6E5C6A: LdPrVar
  loc_6E5C6C: LateMemCall
  loc_6E5C72: LitVarStr var_C8, "Delete * from COM_TR07"
  loc_6E5C77: PopAdLdVar
  loc_6E5C78: LitVarI4
  loc_6E5C80: PopAdLdVar
  loc_6E5C81: FLdRfVar var_F8
  loc_6E5C84: LdPrVar
  loc_6E5C86: LateMemCall
  loc_6E5C8C: ILdRf var_B0
  loc_6E5C8F: ILdI4 arg_C
  loc_6E5C92: FnLenStr
  loc_6E5C93: LtI4
  loc_6E5C94: BranchF loc_6E6800
  loc_6E5C97: LitI4 &HA
  loc_6E5C9C: FLdRfVar var_108
  loc_6E5C9F: ImpAdCallFPR4  = Chr()
  loc_6E5CA4: FLdRfVar var_108
  loc_6E5CA7: LitI4 &HA
  loc_6E5CAC: FLdRfVar var_118
  loc_6E5CAF: ImpAdCallFPR4  = Chr()
  loc_6E5CB4: FLdRfVar var_118
  loc_6E5CB7: ConcatVar var_128
  loc_6E5CBB: LitI4 &HA
  loc_6E5CC0: FLdRfVar var_138
  loc_6E5CC3: ImpAdCallFPR4  = Chr()
  loc_6E5CC8: FLdRfVar var_138
  loc_6E5CCB: ConcatVar var_148
  loc_6E5CCF: LitI4 4
  loc_6E5CD4: FLdRfVar var_158
  loc_6E5CD7: ImpAdCallFPR4  = Chr()
  loc_6E5CDC: FLdRfVar var_158
  loc_6E5CDF: ConcatVar var_168
  loc_6E5CE3: LitI4 &HA
  loc_6E5CE8: FLdRfVar var_178
  loc_6E5CEB: ImpAdCallFPR4  = Chr()
  loc_6E5CF0: FLdRfVar var_178
  loc_6E5CF3: ConcatVar var_188
  loc_6E5CF7: LitI4 2
  loc_6E5CFC: FLdRfVar var_198
  loc_6E5CFF: ImpAdCallFPR4  = Chr()
  loc_6E5D04: FLdRfVar var_198
  loc_6E5D07: ConcatVar var_1A8
  loc_6E5D0B: LitI4 4
  loc_6E5D10: FLdRfVar var_1B8
  loc_6E5D13: ImpAdCallFPR4  = Chr()
  loc_6E5D18: FLdRfVar var_1B8
  loc_6E5D1B: ConcatVar var_1C8
  loc_6E5D1F: CStrVarTmp
  loc_6E5D20: FStStr var_A4
  loc_6E5D23: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = ""
  loc_6E5D40: ILdRf var_B0
  loc_6E5D43: ILdI4 arg_C
  loc_6E5D46: FnLenStr
  loc_6E5D47: LeI4
  loc_6E5D48: CVarBoolI2 var_1D8
  loc_6E5D4C: LitVarI2 var_108, 4
  loc_6E5D51: ILdRf var_B0
  loc_6E5D54: ILdRf arg_C
  loc_6E5D57: CVarRef
  loc_6E5D5C: FLdRfVar var_118
  loc_6E5D5F: ImpAdCallFPR4  = Mid(, , )
  loc_6E5D64: FLdRfVar var_118
  loc_6E5D67: LitVarStr var_E8, "TR02"
  loc_6E5D6C: HardType
  loc_6E5D6D: EqVar var_128
  loc_6E5D71: AndVar var_138
  loc_6E5D75: CBoolVarNull
  loc_6E5D77: FFreeVar var_108 = "": var_118 = ""
  loc_6E5D80: BranchF loc_6E5EA5
  loc_6E5D83: ILdRf var_B0
  loc_6E5D86: LitI4 4
  loc_6E5D8B: AddI4
  loc_6E5D8C: FStR4 var_B0
  loc_6E5D8F: LitVar_Missing var_108
  loc_6E5D92: ILdRf var_B0
  loc_6E5D95: ILdRf arg_C
  loc_6E5D98: CVarRef
  loc_6E5D9D: FLdRfVar var_118
  loc_6E5DA0: ImpAdCallFPR4  = Mid(, , )
  loc_6E5DA5: ILdRf var_B0
  loc_6E5DA8: LitI2_Byte 7
  loc_6E5DAA: PopTmpLdAd2 var_1DE
  loc_6E5DAD: FLdRfVar var_A4
  loc_6E5DB0: FLdRfVar var_A0
  loc_6E5DB3: PopTmpLdAdStr var_1DC
  loc_6E5DB6: FLdRfVar var_118
  loc_6E5DB9: CStrVarTmp
  loc_6E5DBA: PopTmpLdAdStr
  loc_6E5DBE: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E5DC3: CI4UI1
  loc_6E5DC4: AddI4
  loc_6E5DC5: FStR4 var_B0
  loc_6E5DC8: FFree1Str var_B8
  loc_6E5DCB: FFreeVar var_108 = ""
  loc_6E5DD2: LitStr "INSERT INTO COM_TR02(nro_doc, planta, prov, nro_doc_1, nro_doc_2, mes, ano)"
  loc_6E5DD5: LitStr " VALUES('"
  loc_6E5DD8: ConcatStr
  loc_6E5DD9: FStStrNoPop var_B8
  loc_6E5DDC: LitI4 1
  loc_6E5DE1: FLdRfVar var_A0
  loc_6E5DE4: Ary1LdI4
  loc_6E5DE5: ConcatStr
  loc_6E5DE6: FStStrNoPop var_1E4
  loc_6E5DE9: LitStr "', '"
  loc_6E5DEC: ConcatStr
  loc_6E5DED: FStStrNoPop var_1E8
  loc_6E5DF0: LitI4 2
  loc_6E5DF5: FLdRfVar var_A0
  loc_6E5DF8: Ary1LdI4
  loc_6E5DF9: ConcatStr
  loc_6E5DFA: FStStrNoPop var_1EC
  loc_6E5DFD: LitStr "', '"
  loc_6E5E00: ConcatStr
  loc_6E5E01: FStStrNoPop var_1F0
  loc_6E5E04: LitI4 3
  loc_6E5E09: FLdRfVar var_A0
  loc_6E5E0C: Ary1LdI4
  loc_6E5E0D: ConcatStr
  loc_6E5E0E: FStStrNoPop var_1F4
  loc_6E5E11: LitStr "', '"
  loc_6E5E14: ConcatStr
  loc_6E5E15: FStStrNoPop var_1F8
  loc_6E5E18: LitI4 4
  loc_6E5E1D: FLdRfVar var_A0
  loc_6E5E20: Ary1LdI4
  loc_6E5E21: ConcatStr
  loc_6E5E22: FStStrNoPop var_1FC
  loc_6E5E25: LitStr "', '"
  loc_6E5E28: ConcatStr
  loc_6E5E29: FStStrNoPop var_200
  loc_6E5E2C: LitI4 5
  loc_6E5E31: FLdRfVar var_A0
  loc_6E5E34: Ary1LdI4
  loc_6E5E35: ConcatStr
  loc_6E5E36: FStStrNoPop var_204
  loc_6E5E39: LitStr "', '"
  loc_6E5E3C: ConcatStr
  loc_6E5E3D: FStStrNoPop var_208
  loc_6E5E40: LitI4 6
  loc_6E5E45: FLdRfVar var_A0
  loc_6E5E48: Ary1LdI4
  loc_6E5E49: ConcatStr
  loc_6E5E4A: FStStrNoPop var_20C
  loc_6E5E4D: LitStr "', '"
  loc_6E5E50: ConcatStr
  loc_6E5E51: FStStrNoPop var_210
  loc_6E5E54: LitI4 7
  loc_6E5E59: FLdRfVar var_A0
  loc_6E5E5C: Ary1LdI4
  loc_6E5E5D: ConcatStr
  loc_6E5E5E: FStStrNoPop var_214
  loc_6E5E61: LitStr "')"
  loc_6E5E64: ConcatStr
  loc_6E5E65: FStStr var_AC
  loc_6E5E68: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = ""
  loc_6E5E87: FLdRfVar var_AC
  loc_6E5E8A: CDargRef
  loc_6E5E8E: LitVarI4
  loc_6E5E96: PopAdLdVar
  loc_6E5E97: FLdRfVar var_F8
  loc_6E5E9A: LdPrVar
  loc_6E5E9C: LateMemCall
  loc_6E5EA2: Branch loc_6E5D40
  loc_6E5EA5: LitI4 4
  loc_6E5EAA: FLdRfVar var_108
  loc_6E5EAD: ImpAdCallFPR4  = Chr()
  loc_6E5EB2: FLdRfVar var_108
  loc_6E5EB5: LitI4 &HA
  loc_6E5EBA: FLdRfVar var_118
  loc_6E5EBD: ImpAdCallFPR4  = Chr()
  loc_6E5EC2: FLdRfVar var_118
  loc_6E5EC5: ConcatVar var_128
  loc_6E5EC9: LitI4 &HE
  loc_6E5ECE: FLdRfVar var_138
  loc_6E5ED1: ImpAdCallFPR4  = Chr()
  loc_6E5ED6: FLdRfVar var_138
  loc_6E5ED9: ConcatVar var_148
  loc_6E5EDD: CStrVarTmp
  loc_6E5EDE: FStStr var_A4
  loc_6E5EE1: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_6E5EEE: ILdRf var_B0
  loc_6E5EF1: ILdI4 arg_C
  loc_6E5EF4: FnLenStr
  loc_6E5EF5: LeI4
  loc_6E5EF6: CVarBoolI2 var_1D8
  loc_6E5EFA: LitVarI2 var_108, 4
  loc_6E5EFF: ILdRf var_B0
  loc_6E5F02: ILdRf arg_C
  loc_6E5F05: CVarRef
  loc_6E5F0A: FLdRfVar var_118
  loc_6E5F0D: ImpAdCallFPR4  = Mid(, , )
  loc_6E5F12: FLdRfVar var_118
  loc_6E5F15: LitVarStr var_E8, "TR03"
  loc_6E5F1A: HardType
  loc_6E5F1B: EqVar var_128
  loc_6E5F1F: AndVar var_138
  loc_6E5F23: CBoolVarNull
  loc_6E5F25: FFreeVar var_108 = "": var_118 = ""
  loc_6E5F2E: BranchF loc_6E5FF3
  loc_6E5F31: ILdRf var_B0
  loc_6E5F34: LitI4 4
  loc_6E5F39: AddI4
  loc_6E5F3A: FStR4 var_B0
  loc_6E5F3D: LitVar_Missing var_108
  loc_6E5F40: ILdRf var_B0
  loc_6E5F43: ILdRf arg_C
  loc_6E5F46: CVarRef
  loc_6E5F4B: FLdRfVar var_118
  loc_6E5F4E: ImpAdCallFPR4  = Mid(, , )
  loc_6E5F53: ILdRf var_B0
  loc_6E5F56: LitI2_Byte 3
  loc_6E5F58: PopTmpLdAd2 var_1DE
  loc_6E5F5B: FLdRfVar var_A4
  loc_6E5F5E: FLdRfVar var_A0
  loc_6E5F61: PopTmpLdAdStr var_1DC
  loc_6E5F64: FLdRfVar var_118
  loc_6E5F67: CStrVarTmp
  loc_6E5F68: PopTmpLdAdStr
  loc_6E5F6C: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E5F71: CI4UI1
  loc_6E5F72: AddI4
  loc_6E5F73: FStR4 var_B0
  loc_6E5F76: FFree1Str var_B8
  loc_6E5F79: FFreeVar var_108 = ""
  loc_6E5F80: LitStr "INSERT INTO COM_TR03(nro_doc_1, nro_doc_2, fecha_hora)"
  loc_6E5F83: LitStr " VALUES('"
  loc_6E5F86: ConcatStr
  loc_6E5F87: FStStrNoPop var_B8
  loc_6E5F8A: LitI4 1
  loc_6E5F8F: FLdRfVar var_A0
  loc_6E5F92: Ary1LdI4
  loc_6E5F93: ConcatStr
  loc_6E5F94: FStStrNoPop var_1E4
  loc_6E5F97: LitStr "', '"
  loc_6E5F9A: ConcatStr
  loc_6E5F9B: FStStrNoPop var_1E8
  loc_6E5F9E: LitI4 2
  loc_6E5FA3: FLdRfVar var_A0
  loc_6E5FA6: Ary1LdI4
  loc_6E5FA7: ConcatStr
  loc_6E5FA8: FStStrNoPop var_1EC
  loc_6E5FAB: LitStr "', '"
  loc_6E5FAE: ConcatStr
  loc_6E5FAF: FStStrNoPop var_1F0
  loc_6E5FB2: LitI4 3
  loc_6E5FB7: FLdRfVar var_A0
  loc_6E5FBA: Ary1LdI4
  loc_6E5FBB: ConcatStr
  loc_6E5FBC: FStStrNoPop var_1F4
  loc_6E5FBF: LitStr "')"
  loc_6E5FC2: ConcatStr
  loc_6E5FC3: FStStr var_AC
  loc_6E5FC6: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_6E5FD5: FLdRfVar var_AC
  loc_6E5FD8: CDargRef
  loc_6E5FDC: LitVarI4
  loc_6E5FE4: PopAdLdVar
  loc_6E5FE5: FLdRfVar var_F8
  loc_6E5FE8: LdPrVar
  loc_6E5FEA: LateMemCall
  loc_6E5FF0: Branch loc_6E5EEE
  loc_6E5FF3: LitI4 &H12
  loc_6E5FF8: FLdRfVar var_108
  loc_6E5FFB: ImpAdCallFPR4  = Chr()
  loc_6E6000: FLdRfVar var_108
  loc_6E6003: LitI4 &H3C
  loc_6E6008: FLdRfVar var_118
  loc_6E600B: ImpAdCallFPR4  = Chr()
  loc_6E6010: FLdRfVar var_118
  loc_6E6013: ConcatVar var_128
  loc_6E6017: LitI4 &HD
  loc_6E601C: FLdRfVar var_138
  loc_6E601F: ImpAdCallFPR4  = Chr()
  loc_6E6024: FLdRfVar var_138
  loc_6E6027: ConcatVar var_148
  loc_6E602B: LitI4 &HD
  loc_6E6030: FLdRfVar var_158
  loc_6E6033: ImpAdCallFPR4  = Chr()
  loc_6E6038: FLdRfVar var_158
  loc_6E603B: ConcatVar var_168
  loc_6E603F: LitI4 &HD
  loc_6E6044: FLdRfVar var_178
  loc_6E6047: ImpAdCallFPR4  = Chr()
  loc_6E604C: FLdRfVar var_178
  loc_6E604F: ConcatVar var_188
  loc_6E6053: CStrVarTmp
  loc_6E6054: FStStr var_A4
  loc_6E6057: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = ""
  loc_6E606C: ILdRf var_B0
  loc_6E606F: ILdI4 arg_C
  loc_6E6072: FnLenStr
  loc_6E6073: LeI4
  loc_6E6074: CVarBoolI2 var_1D8
  loc_6E6078: LitVarI2 var_108, 4
  loc_6E607D: ILdRf var_B0
  loc_6E6080: ILdRf arg_C
  loc_6E6083: CVarRef
  loc_6E6088: FLdRfVar var_118
  loc_6E608B: ImpAdCallFPR4  = Mid(, , )
  loc_6E6090: FLdRfVar var_118
  loc_6E6093: LitVarStr var_E8, "TR04"
  loc_6E6098: HardType
  loc_6E6099: EqVar var_128
  loc_6E609D: AndVar var_138
  loc_6E60A1: CBoolVarNull
  loc_6E60A3: FFreeVar var_108 = "": var_118 = ""
  loc_6E60AC: BranchF loc_6E6240
  loc_6E60AF: ILdRf var_B0
  loc_6E60B2: LitI4 4
  loc_6E60B7: AddI4
  loc_6E60B8: FStR4 var_B0
  loc_6E60BB: LitVar_Missing var_108
  loc_6E60BE: ILdRf var_B0
  loc_6E60C1: ILdRf arg_C
  loc_6E60C4: CVarRef
  loc_6E60C9: FLdRfVar var_118
  loc_6E60CC: ImpAdCallFPR4  = Mid(, , )
  loc_6E60D1: ILdRf var_B0
  loc_6E60D4: LitI2_Byte 5
  loc_6E60D6: PopTmpLdAd2 var_1DE
  loc_6E60D9: FLdRfVar var_A4
  loc_6E60DC: FLdRfVar var_A0
  loc_6E60DF: PopTmpLdAdStr var_1DC
  loc_6E60E2: FLdRfVar var_118
  loc_6E60E5: CStrVarTmp
  loc_6E60E6: PopTmpLdAdStr
  loc_6E60EA: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E60EF: CI4UI1
  loc_6E60F0: AddI4
  loc_6E60F1: FStR4 var_B0
  loc_6E60F4: FFree1Str var_B8
  loc_6E60F7: FFreeVar var_108 = ""
  loc_6E60FE: LitI2_Byte &HA
  loc_6E6100: PopTmpLdAd2 var_1DE
  loc_6E6103: LitI4 3
  loc_6E6108: FLdRfVar var_A0
  loc_6E610B: Ary1LdRf
  loc_6E610C: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E6111: PopTmpLdAdStr
  loc_6E6115: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E611A: FStStr var_238
  loc_6E611D: LitI2_Byte &HA
  loc_6E611F: PopTmpLdAd2 var_218
  loc_6E6122: LitI4 4
  loc_6E6127: FLdRfVar var_A0
  loc_6E612A: Ary1LdRf
  loc_6E612B: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E6130: PopTmpLdAdStr
  loc_6E6134: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6139: FStStr var_23C
  loc_6E613C: LitI2_Byte &HA
  loc_6E613E: PopTmpLdAd2 var_21C
  loc_6E6141: LitI4 5
  loc_6E6146: FLdRfVar var_A0
  loc_6E6149: Ary1LdRf
  loc_6E614A: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E614F: PopTmpLdAdStr
  loc_6E6153: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6158: FStStr var_240
  loc_6E615B: LitStr "INSERT INTO COM_TR04(cod_prod, desc_prod, vol_elec, vol_aj, vol_tot)"
  loc_6E615E: LitStr " VALUES('"
  loc_6E6161: ConcatStr
  loc_6E6162: FStStrNoPop var_B8
  loc_6E6165: LitI4 1
  loc_6E616A: FLdRfVar var_A0
  loc_6E616D: Ary1LdI4
  loc_6E616E: ConcatStr
  loc_6E616F: FStStrNoPop var_1E4
  loc_6E6172: LitStr "', '"
  loc_6E6175: ConcatStr
  loc_6E6176: FStStrNoPop var_1E8
  loc_6E6179: LitI4 2
  loc_6E617E: FLdRfVar var_A0
  loc_6E6181: Ary1LdI4
  loc_6E6182: ConcatStr
  loc_6E6183: FStStrNoPop var_1EC
  loc_6E6186: LitStr "', '"
  loc_6E6189: ConcatStr
  loc_6E618A: FStStrNoPop var_1F8
  loc_6E618D: LitI2_Byte 3
  loc_6E618F: CUI1I2
  loc_6E6191: PopTmpLdAd1
  loc_6E6195: FLdZeroAd var_238
  loc_6E6198: PopTmpLdAdStr
  loc_6E619C: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E61A1: FStStrNoPop var_1FC
  loc_6E61A4: ConcatStr
  loc_6E61A5: FStStrNoPop var_200
  loc_6E61A8: LitStr "', '"
  loc_6E61AB: ConcatStr
  loc_6E61AC: FStStrNoPop var_20C
  loc_6E61AF: LitI2_Byte 3
  loc_6E61B1: CUI1I2
  loc_6E61B3: PopTmpLdAd1
  loc_6E61B7: FLdZeroAd var_23C
  loc_6E61BA: PopTmpLdAdStr
  loc_6E61BE: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E61C3: FStStrNoPop var_210
  loc_6E61C6: ConcatStr
  loc_6E61C7: FStStrNoPop var_214
  loc_6E61CA: LitStr "', '"
  loc_6E61CD: ConcatStr
  loc_6E61CE: FStStrNoPop var_22C
  loc_6E61D1: LitI2_Byte 3
  loc_6E61D3: CUI1I2
  loc_6E61D5: PopTmpLdAd1
  loc_6E61D9: FLdZeroAd var_240
  loc_6E61DC: PopTmpLdAdStr
  loc_6E61E0: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E61E5: FStStrNoPop var_230
  loc_6E61E8: ConcatStr
  loc_6E61E9: FStStrNoPop var_234
  loc_6E61EC: LitStr "')"
  loc_6E61EF: ConcatStr
  loc_6E61F0: FStStr var_AC
  loc_6E61F3: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_220 = "": var_224 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_6E6222: FLdRfVar var_AC
  loc_6E6225: CDargRef
  loc_6E6229: LitVarI4
  loc_6E6231: PopAdLdVar
  loc_6E6232: FLdRfVar var_F8
  loc_6E6235: LdPrVar
  loc_6E6237: LateMemCall
  loc_6E623D: Branch loc_6E606C
  loc_6E6240: LitI4 &H12
  loc_6E6245: FLdRfVar var_108
  loc_6E6248: ImpAdCallFPR4  = Chr()
  loc_6E624D: FLdRfVar var_108
  loc_6E6250: LitI4 &H3C
  loc_6E6255: FLdRfVar var_118
  loc_6E6258: ImpAdCallFPR4  = Chr()
  loc_6E625D: FLdRfVar var_118
  loc_6E6260: ConcatVar var_128
  loc_6E6264: LitI4 &HD
  loc_6E6269: FLdRfVar var_138
  loc_6E626C: ImpAdCallFPR4  = Chr()
  loc_6E6271: FLdRfVar var_138
  loc_6E6274: ConcatVar var_148
  loc_6E6278: LitI4 &HD
  loc_6E627D: FLdRfVar var_158
  loc_6E6280: ImpAdCallFPR4  = Chr()
  loc_6E6285: FLdRfVar var_158
  loc_6E6288: ConcatVar var_168
  loc_6E628C: LitI4 &H11
  loc_6E6291: FLdRfVar var_178
  loc_6E6294: ImpAdCallFPR4  = Chr()
  loc_6E6299: FLdRfVar var_178
  loc_6E629C: ConcatVar var_188
  loc_6E62A0: CStrVarTmp
  loc_6E62A1: FStStr var_A4
  loc_6E62A4: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = ""
  loc_6E62B9: ILdRf var_B0
  loc_6E62BC: ILdI4 arg_C
  loc_6E62BF: FnLenStr
  loc_6E62C0: LeI4
  loc_6E62C1: CVarBoolI2 var_1D8
  loc_6E62C5: LitVarI2 var_108, 4
  loc_6E62CA: ILdRf var_B0
  loc_6E62CD: ILdRf arg_C
  loc_6E62D0: CVarRef
  loc_6E62D5: FLdRfVar var_118
  loc_6E62D8: ImpAdCallFPR4  = Mid(, , )
  loc_6E62DD: FLdRfVar var_118
  loc_6E62E0: LitVarStr var_E8, "TR05"
  loc_6E62E5: HardType
  loc_6E62E6: EqVar var_128
  loc_6E62EA: AndVar var_138
  loc_6E62EE: CBoolVarNull
  loc_6E62F0: FFreeVar var_108 = "": var_118 = ""
  loc_6E62F9: BranchF loc_6E648D
  loc_6E62FC: ILdRf var_B0
  loc_6E62FF: LitI4 4
  loc_6E6304: AddI4
  loc_6E6305: FStR4 var_B0
  loc_6E6308: LitVar_Missing var_108
  loc_6E630B: ILdRf var_B0
  loc_6E630E: ILdRf arg_C
  loc_6E6311: CVarRef
  loc_6E6316: FLdRfVar var_118
  loc_6E6319: ImpAdCallFPR4  = Mid(, , )
  loc_6E631E: ILdRf var_B0
  loc_6E6321: LitI2_Byte 5
  loc_6E6323: PopTmpLdAd2 var_1DE
  loc_6E6326: FLdRfVar var_A4
  loc_6E6329: FLdRfVar var_A0
  loc_6E632C: PopTmpLdAdStr var_1DC
  loc_6E632F: FLdRfVar var_118
  loc_6E6332: CStrVarTmp
  loc_6E6333: PopTmpLdAdStr
  loc_6E6337: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E633C: CI4UI1
  loc_6E633D: AddI4
  loc_6E633E: FStR4 var_B0
  loc_6E6341: FFree1Str var_B8
  loc_6E6344: FFreeVar var_108 = ""
  loc_6E634B: LitI2_Byte &HA
  loc_6E634D: PopTmpLdAd2 var_1DE
  loc_6E6350: LitI4 3
  loc_6E6355: FLdRfVar var_A0
  loc_6E6358: Ary1LdRf
  loc_6E6359: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E635E: PopTmpLdAdStr
  loc_6E6362: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6367: FStStr var_238
  loc_6E636A: LitI2_Byte &HA
  loc_6E636C: PopTmpLdAd2 var_218
  loc_6E636F: LitI4 4
  loc_6E6374: FLdRfVar var_A0
  loc_6E6377: Ary1LdRf
  loc_6E6378: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E637D: PopTmpLdAdStr
  loc_6E6381: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6386: FStStr var_23C
  loc_6E6389: LitI2_Byte &HC
  loc_6E638B: PopTmpLdAd2 var_21C
  loc_6E638E: LitI4 5
  loc_6E6393: FLdRfVar var_A0
  loc_6E6396: Ary1LdRf
  loc_6E6397: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E639C: PopTmpLdAdStr
  loc_6E63A0: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E63A5: FStStr var_240
  loc_6E63A8: LitStr "INSERT INTO COM_TR05(cod_prod, desc_prod, vol_desde, vol_hasta, comision)"
  loc_6E63AB: LitStr " VALUES('"
  loc_6E63AE: ConcatStr
  loc_6E63AF: FStStrNoPop var_B8
  loc_6E63B2: LitI4 1
  loc_6E63B7: FLdRfVar var_A0
  loc_6E63BA: Ary1LdI4
  loc_6E63BB: ConcatStr
  loc_6E63BC: FStStrNoPop var_1E4
  loc_6E63BF: LitStr "', '"
  loc_6E63C2: ConcatStr
  loc_6E63C3: FStStrNoPop var_1E8
  loc_6E63C6: LitI4 2
  loc_6E63CB: FLdRfVar var_A0
  loc_6E63CE: Ary1LdI4
  loc_6E63CF: ConcatStr
  loc_6E63D0: FStStrNoPop var_1EC
  loc_6E63D3: LitStr "', '"
  loc_6E63D6: ConcatStr
  loc_6E63D7: FStStrNoPop var_1F8
  loc_6E63DA: LitI2_Byte 3
  loc_6E63DC: CUI1I2
  loc_6E63DE: PopTmpLdAd1
  loc_6E63E2: FLdZeroAd var_238
  loc_6E63E5: PopTmpLdAdStr
  loc_6E63E9: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E63EE: FStStrNoPop var_1FC
  loc_6E63F1: ConcatStr
  loc_6E63F2: FStStrNoPop var_200
  loc_6E63F5: LitStr "', '"
  loc_6E63F8: ConcatStr
  loc_6E63F9: FStStrNoPop var_20C
  loc_6E63FC: LitI2_Byte 3
  loc_6E63FE: CUI1I2
  loc_6E6400: PopTmpLdAd1
  loc_6E6404: FLdZeroAd var_23C
  loc_6E6407: PopTmpLdAdStr
  loc_6E640B: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E6410: FStStrNoPop var_210
  loc_6E6413: ConcatStr
  loc_6E6414: FStStrNoPop var_214
  loc_6E6417: LitStr "', '"
  loc_6E641A: ConcatStr
  loc_6E641B: FStStrNoPop var_22C
  loc_6E641E: LitI2_Byte 5
  loc_6E6420: CUI1I2
  loc_6E6422: PopTmpLdAd1
  loc_6E6426: FLdZeroAd var_240
  loc_6E6429: PopTmpLdAdStr
  loc_6E642D: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E6432: FStStrNoPop var_230
  loc_6E6435: ConcatStr
  loc_6E6436: FStStrNoPop var_234
  loc_6E6439: LitStr "')"
  loc_6E643C: ConcatStr
  loc_6E643D: FStStr var_AC
  loc_6E6440: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_220 = "": var_224 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_6E646F: FLdRfVar var_AC
  loc_6E6472: CDargRef
  loc_6E6476: LitVarI4
  loc_6E647E: PopAdLdVar
  loc_6E647F: FLdRfVar var_F8
  loc_6E6482: LdPrVar
  loc_6E6484: LateMemCall
  loc_6E648A: Branch loc_6E62B9
  loc_6E648D: LitI4 &HE
  loc_6E6492: FLdRfVar var_108
  loc_6E6495: ImpAdCallFPR4  = Chr()
  loc_6E649A: FLdRfVar var_108
  loc_6E649D: LitI4 &H3C
  loc_6E64A2: FLdRfVar var_118
  loc_6E64A5: ImpAdCallFPR4  = Chr()
  loc_6E64AA: FLdRfVar var_118
  loc_6E64AD: ConcatVar var_128
  loc_6E64B1: LitI4 &H11
  loc_6E64B6: FLdRfVar var_138
  loc_6E64B9: ImpAdCallFPR4  = Chr()
  loc_6E64BE: FLdRfVar var_138
  loc_6E64C1: ConcatVar var_148
  loc_6E64C5: CStrVarTmp
  loc_6E64C6: FStStr var_A4
  loc_6E64C9: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_6E64D6: ILdRf var_B0
  loc_6E64D9: ILdI4 arg_C
  loc_6E64DC: FnLenStr
  loc_6E64DD: LeI4
  loc_6E64DE: CVarBoolI2 var_1D8
  loc_6E64E2: LitVarI2 var_108, 4
  loc_6E64E7: ILdRf var_B0
  loc_6E64EA: ILdRf arg_C
  loc_6E64ED: CVarRef
  loc_6E64F2: FLdRfVar var_118
  loc_6E64F5: ImpAdCallFPR4  = Mid(, , )
  loc_6E64FA: FLdRfVar var_118
  loc_6E64FD: LitVarStr var_E8, "TR06"
  loc_6E6502: HardType
  loc_6E6503: EqVar var_128
  loc_6E6507: AndVar var_138
  loc_6E650B: CBoolVarNull
  loc_6E650D: FFreeVar var_108 = "": var_118 = ""
  loc_6E6516: BranchF loc_6E6610
  loc_6E6519: ILdRf var_B0
  loc_6E651C: LitI4 4
  loc_6E6521: AddI4
  loc_6E6522: FStR4 var_B0
  loc_6E6525: LitVar_Missing var_108
  loc_6E6528: ILdRf var_B0
  loc_6E652B: ILdRf arg_C
  loc_6E652E: CVarRef
  loc_6E6533: FLdRfVar var_118
  loc_6E6536: ImpAdCallFPR4  = Mid(, , )
  loc_6E653B: ILdRf var_B0
  loc_6E653E: LitI2_Byte 3
  loc_6E6540: PopTmpLdAd2 var_1DE
  loc_6E6543: FLdRfVar var_A4
  loc_6E6546: FLdRfVar var_A0
  loc_6E6549: PopTmpLdAdStr var_1DC
  loc_6E654C: FLdRfVar var_118
  loc_6E654F: CStrVarTmp
  loc_6E6550: PopTmpLdAdStr
  loc_6E6554: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E6559: CI4UI1
  loc_6E655A: AddI4
  loc_6E655B: FStR4 var_B0
  loc_6E655E: FFree1Str var_B8
  loc_6E6561: FFreeVar var_108 = ""
  loc_6E6568: LitI2_Byte &HC
  loc_6E656A: PopTmpLdAd2 var_1DE
  loc_6E656D: LitI4 3
  loc_6E6572: FLdRfVar var_A0
  loc_6E6575: Ary1LdRf
  loc_6E6576: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E657B: PopTmpLdAdStr
  loc_6E657F: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6584: FStStr var_204
  loc_6E6587: LitStr "INSERT INTO COM_TR06(fecha_evento, descr, monto)"
  loc_6E658A: LitStr " VALUES('"
  loc_6E658D: ConcatStr
  loc_6E658E: FStStrNoPop var_B8
  loc_6E6591: LitI4 1
  loc_6E6596: FLdRfVar var_A0
  loc_6E6599: Ary1LdI4
  loc_6E659A: ConcatStr
  loc_6E659B: FStStrNoPop var_1E4
  loc_6E659E: LitStr "', '"
  loc_6E65A1: ConcatStr
  loc_6E65A2: FStStrNoPop var_1E8
  loc_6E65A5: LitI4 2
  loc_6E65AA: FLdRfVar var_A0
  loc_6E65AD: Ary1LdI4
  loc_6E65AE: ConcatStr
  loc_6E65AF: FStStrNoPop var_1EC
  loc_6E65B2: LitStr "', '"
  loc_6E65B5: ConcatStr
  loc_6E65B6: FStStrNoPop var_1F8
  loc_6E65B9: LitI2_Byte 5
  loc_6E65BB: CUI1I2
  loc_6E65BD: PopTmpLdAd1
  loc_6E65C1: FLdZeroAd var_204
  loc_6E65C4: PopTmpLdAdStr
  loc_6E65C8: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E65CD: FStStrNoPop var_1FC
  loc_6E65D0: ConcatStr
  loc_6E65D1: FStStrNoPop var_200
  loc_6E65D4: LitStr "')"
  loc_6E65D7: ConcatStr
  loc_6E65D8: FStStr var_AC
  loc_6E65DB: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = ""
  loc_6E65F2: FLdRfVar var_AC
  loc_6E65F5: CDargRef
  loc_6E65F9: LitVarI4
  loc_6E6601: PopAdLdVar
  loc_6E6602: FLdRfVar var_F8
  loc_6E6605: LdPrVar
  loc_6E6607: LateMemCall
  loc_6E660D: Branch loc_6E64D6
  loc_6E6610: LitI4 &H11
  loc_6E6615: FLdRfVar var_108
  loc_6E6618: ImpAdCallFPR4  = Chr()
  loc_6E661D: FLdRfVar var_108
  loc_6E6620: LitI4 &H11
  loc_6E6625: FLdRfVar var_118
  loc_6E6628: ImpAdCallFPR4  = Chr()
  loc_6E662D: FLdRfVar var_118
  loc_6E6630: ConcatVar var_128
  loc_6E6634: LitI4 &H11
  loc_6E6639: FLdRfVar var_138
  loc_6E663C: ImpAdCallFPR4  = Chr()
  loc_6E6641: FLdRfVar var_138
  loc_6E6644: ConcatVar var_148
  loc_6E6648: CStrVarTmp
  loc_6E6649: FStStr var_A4
  loc_6E664C: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_6E6659: ILdRf var_B0
  loc_6E665C: ILdI4 arg_C
  loc_6E665F: FnLenStr
  loc_6E6660: LeI4
  loc_6E6661: CVarBoolI2 var_1D8
  loc_6E6665: LitVarI2 var_108, 4
  loc_6E666A: ILdRf var_B0
  loc_6E666D: ILdRf arg_C
  loc_6E6670: CVarRef
  loc_6E6675: FLdRfVar var_118
  loc_6E6678: ImpAdCallFPR4  = Mid(, , )
  loc_6E667D: FLdRfVar var_118
  loc_6E6680: LitVarStr var_E8, "TR07"
  loc_6E6685: HardType
  loc_6E6686: EqVar var_128
  loc_6E668A: AndVar var_138
  loc_6E668E: CBoolVarNull
  loc_6E6690: FFreeVar var_108 = "": var_118 = ""
  loc_6E6699: BranchF loc_6E67FD
  loc_6E669C: ILdRf var_B0
  loc_6E669F: LitI4 4
  loc_6E66A4: AddI4
  loc_6E66A5: FStR4 var_B0
  loc_6E66A8: LitVar_Missing var_108
  loc_6E66AB: ILdRf var_B0
  loc_6E66AE: ILdRf arg_C
  loc_6E66B1: CVarRef
  loc_6E66B6: FLdRfVar var_118
  loc_6E66B9: ImpAdCallFPR4  = Mid(, , )
  loc_6E66BE: ILdRf var_B0
  loc_6E66C1: LitI2_Byte 3
  loc_6E66C3: PopTmpLdAd2 var_1DE
  loc_6E66C6: FLdRfVar var_A4
  loc_6E66C9: FLdRfVar var_A0
  loc_6E66CC: PopTmpLdAdStr var_1DC
  loc_6E66CF: FLdRfVar var_118
  loc_6E66D2: CStrVarTmp
  loc_6E66D3: PopTmpLdAdStr
  loc_6E66D7: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E66DC: CI4UI1
  loc_6E66DD: AddI4
  loc_6E66DE: FStR4 var_B0
  loc_6E66E1: FFree1Str var_B8
  loc_6E66E4: FFreeVar var_108 = ""
  loc_6E66EB: LitI2_Byte &HC
  loc_6E66ED: PopTmpLdAd2 var_1DE
  loc_6E66F0: LitI4 1
  loc_6E66F5: FLdRfVar var_A0
  loc_6E66F8: Ary1LdRf
  loc_6E66F9: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E66FE: PopTmpLdAdStr
  loc_6E6702: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6707: FStStr var_224
  loc_6E670A: LitI2_Byte &HC
  loc_6E670C: PopTmpLdAd2 var_218
  loc_6E670F: LitI4 2
  loc_6E6714: FLdRfVar var_A0
  loc_6E6717: Ary1LdRf
  loc_6E6718: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E671D: PopTmpLdAdStr
  loc_6E6721: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6726: FStStr var_22C
  loc_6E6729: LitI2_Byte &HC
  loc_6E672B: PopTmpLdAd2 var_21C
  loc_6E672E: LitI4 3
  loc_6E6733: FLdRfVar var_A0
  loc_6E6736: Ary1LdRf
  loc_6E6737: ImpAdCallI2 Proc_87_25_5EBDCC(, )
  loc_6E673C: PopTmpLdAdStr
  loc_6E6740: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E6745: FStStr var_230
  loc_6E6748: LitStr "INSERT INTO COM_TR07(subtot_com, iva, tot_com)"
  loc_6E674B: LitStr " VALUES('"
  loc_6E674E: ConcatStr
  loc_6E674F: FStStrNoPop var_1E8
  loc_6E6752: LitI2_Byte 5
  loc_6E6754: CUI1I2
  loc_6E6756: PopTmpLdAd1
  loc_6E675A: FLdZeroAd var_224
  loc_6E675D: PopTmpLdAdStr
  loc_6E6761: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E6766: FStStrNoPop var_1EC
  loc_6E6769: ConcatStr
  loc_6E676A: FStStrNoPop var_1F0
  loc_6E676D: LitStr "', '"
  loc_6E6770: ConcatStr
  loc_6E6771: FStStrNoPop var_1FC
  loc_6E6774: LitI2_Byte 5
  loc_6E6776: CUI1I2
  loc_6E6778: PopTmpLdAd1
  loc_6E677C: FLdZeroAd var_22C
  loc_6E677F: PopTmpLdAdStr
  loc_6E6783: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E6788: FStStrNoPop var_200
  loc_6E678B: ConcatStr
  loc_6E678C: FStStrNoPop var_204
  loc_6E678F: LitStr "', '"
  loc_6E6792: ConcatStr
  loc_6E6793: FStStrNoPop var_210
  loc_6E6796: LitI2_Byte 5
  loc_6E6798: CUI1I2
  loc_6E679A: PopTmpLdAd1
  loc_6E679E: FLdZeroAd var_230
  loc_6E67A1: PopTmpLdAdStr
  loc_6E67A5: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E67AA: FStStrNoPop var_214
  loc_6E67AD: ConcatStr
  loc_6E67AE: FStStrNoPop var_220
  loc_6E67B1: LitStr "')"
  loc_6E67B4: ConcatStr
  loc_6E67B5: FStStr var_AC
  loc_6E67B8: FFreeStr var_B8 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_220 = "": var_224 = "": var_22C = ""
  loc_6E67DF: FLdRfVar var_AC
  loc_6E67E2: CDargRef
  loc_6E67E6: LitVarI4
  loc_6E67EE: PopAdLdVar
  loc_6E67EF: FLdRfVar var_F8
  loc_6E67F2: LdPrVar
  loc_6E67F4: LateMemCall
  loc_6E67FA: Branch loc_6E6659
  loc_6E67FD: Branch loc_6E5C8C
  loc_6E6800: LitI2_Byte &HFF
  loc_6E6802: FStI2 var_86
  loc_6E6805: ExitProcCbHresult
  loc_6E680B: LitI2_Byte 0
  loc_6E680D: FStI2 var_86
  loc_6E6810: ExitProcCbHresult
End Function

Private Function Proc_85_29_5F1A1C(arg_C) '5F1A1C
  'Data Table: 42D060
  loc_5F197C: ILdRf arg_C
  loc_5F197F: CVarRef
  loc_5F1984: FLdRfVar var_A8
  loc_5F1987: ImpAdCallFPR4  = Trim()
  loc_5F198C: FLdRfVar var_A8
  loc_5F198F: FStVar var_B8
  loc_5F1993: FLdRfVar var_B8
  loc_5F1996: LitVarStr var_98, "D2"
  loc_5F199B: HardType
  loc_5F199C: EqVarBool
  loc_5F199E: BranchF loc_5F19B3
  loc_5F19A1: LitStr "1"
  loc_5F19A4: LitI4 2
  loc_5F19A9: FLdPr Me
  loc_5F19AC: MemLdRfVar from_stack_1.global_60
  loc_5F19AF: Ary1StStrCopy
  loc_5F19B0: Branch loc_5F1A13
  loc_5F19B3: FLdRfVar var_B8
  loc_5F19B6: LitVarStr var_98, "D3"
  loc_5F19BB: HardType
  loc_5F19BC: EqVarBool
  loc_5F19BE: BranchF loc_5F19D3
  loc_5F19C1: LitStr "1"
  loc_5F19C4: LitI4 3
  loc_5F19C9: FLdPr Me
  loc_5F19CC: MemLdRfVar from_stack_1.global_60
  loc_5F19CF: Ary1StStrCopy
  loc_5F19D0: Branch loc_5F1A13
  loc_5F19D3: FLdRfVar var_B8
  loc_5F19D6: LitVarStr var_98, "D4"
  loc_5F19DB: HardType
  loc_5F19DC: EqVarBool
  loc_5F19DE: BranchF loc_5F19F3
  loc_5F19E1: LitStr "1"
  loc_5F19E4: LitI4 4
  loc_5F19E9: FLdPr Me
  loc_5F19EC: MemLdRfVar from_stack_1.global_60
  loc_5F19EF: Ary1StStrCopy
  loc_5F19F0: Branch loc_5F1A13
  loc_5F19F3: FLdRfVar var_B8
  loc_5F19F6: LitVarStr var_98, "D5"
  loc_5F19FB: HardType
  loc_5F19FC: EqVarBool
  loc_5F19FE: BranchF loc_5F1A13
  loc_5F1A01: LitStr "1"
  loc_5F1A04: LitI4 5
  loc_5F1A09: FLdPr Me
  loc_5F1A0C: MemLdRfVar from_stack_1.global_60
  loc_5F1A0F: Ary1StStrCopy
  loc_5F1A10: Branch loc_5F1A13
  loc_5F1A13: ExitProcCbHresult
  loc_5F1A19: MidStr var_200
End Function

Private Function Proc_85_30_5D4594(arg_C, arg_10) '5D4594
  'Data Table: 42D060
  loc_5D4570: ILdFPR8 arg_C
  loc_5D4573: LitI2_Byte 1
  loc_5D4575: CR8I2
  loc_5D4576: EqR4
  loc_5D4577: BranchF loc_5D4583
  loc_5D457A: ILdFPR8 arg_10
  loc_5D457D: FStFPR8 var_8C
  loc_5D4580: Branch loc_5D458D
  loc_5D4583: ILdFPR8 arg_10
  loc_5D4586: LitI2_Byte &HFF
  loc_5D4588: CR8I2
  loc_5D4589: MulR8
  loc_5D458A: FStFPR8 var_8C
  loc_5D458D: ExitProcCbHresult
End Function

Private Function Proc_85_31_661918() '661918
  'Data Table: 42D060
  loc_6615FC: FLdRfVar var_AC
  loc_6615FF: ImpAdCallFPR4  = Date
  loc_661604: FLdRfVar var_AC
  loc_661607: LitVarI2 var_BC, 60
  loc_66160C: SubVar var_CC
  loc_661610: FnCDateVar
  loc_661612: FStFPR8 var_90
  loc_661615: FFree1Var var_AC = ""
  loc_661618: FLdRfVar var_AC
  loc_66161B: ImpAdCallFPR4  = Date
  loc_661620: FLdRfVar var_AC
  loc_661623: FnCDateVar
  loc_661625: FStFPR8 var_98
  loc_661628: FFree1Var var_AC = ""
  loc_66162B: LitI4 1
  loc_661630: LitI4 1
  loc_661635: LitVarStr var_DC, "dd/mm/yyyy"
  loc_66163A: FStVarCopyObj var_AC
  loc_66163D: FLdRfVar var_AC
  loc_661640: FLdRfVar var_90
  loc_661643: CVarRef
  loc_661648: FLdRfVar var_CC
  loc_66164B: ImpAdCallFPR4  = Format(, )
  loc_661650: LitI4 1
  loc_661655: LitI4 1
  loc_66165A: LitVarStr var_120, "dd/mm/yyyy"
  loc_66165F: FStVarCopyObj var_130
  loc_661662: FLdRfVar var_130
  loc_661665: FLdRfVar var_90
  loc_661668: CVarRef
  loc_66166D: FLdRfVar var_140
  loc_661670: ImpAdCallFPR4  = Format(, )
  loc_661675: LitI4 1
  loc_66167A: LitI4 1
  loc_66167F: LitVarStr var_18C, "dd/mm/yyyy"
  loc_661684: FStVarCopyObj var_19C
  loc_661687: FLdRfVar var_19C
  loc_66168A: FLdRfVar var_90
  loc_66168D: CVarRef
  loc_661692: FLdRfVar var_1AC
  loc_661695: ImpAdCallFPR4  = Format(, )
  loc_66169A: LitVarI2 var_100, 4
  loc_66169F: LitI4 7
  loc_6616A4: FLdRfVar var_CC
  loc_6616A7: CStrVarVal var_E0
  loc_6616AB: ImpAdCallI2 Mid$(, , )
  loc_6616B0: FStStrNoPop var_168
  loc_6616B3: LitVarI2 var_164, 2
  loc_6616B8: LitI4 4
  loc_6616BD: FLdRfVar var_140
  loc_6616C0: CStrVarVal var_144
  loc_6616C4: ImpAdCallI2 Mid$(, , )
  loc_6616C9: FStStrNoPop var_16C
  loc_6616CC: ConcatStr
  loc_6616CD: FStStrNoPop var_1D4
  loc_6616D0: LitVarI2 var_1D0, 2
  loc_6616D5: LitI4 1
  loc_6616DA: FLdRfVar var_1AC
  loc_6616DD: CStrVarVal var_1B0
  loc_6616E1: ImpAdCallI2 Mid$(, , )
  loc_6616E6: FStStrNoPop var_1D8
  loc_6616E9: ConcatStr
  loc_6616EA: FStStrNoPop var_1DC
  loc_6616ED: LitStr "000000"
  loc_6616F0: ConcatStr
  loc_6616F1: FStStr var_88
  loc_6616F4: FFreeStr var_E0 = "": var_144 = "": var_168 = "": var_16C = "": var_1B0 = "": var_1D4 = "": var_1D8 = ""
  loc_661707: FFreeVar var_AC = "": var_CC = "": var_100 = "": var_130 = "": var_140 = "": var_164 = "": var_19C = "": var_1AC = ""
  loc_66171C: LitI4 1
  loc_661721: LitI4 1
  loc_661726: LitVarStr var_DC, "dd/mm/yyyy"
  loc_66172B: FStVarCopyObj var_AC
  loc_66172E: FLdRfVar var_AC
  loc_661731: FLdRfVar var_98
  loc_661734: CVarRef
  loc_661739: FLdRfVar var_CC
  loc_66173C: ImpAdCallFPR4  = Format(, )
  loc_661741: LitI4 1
  loc_661746: LitI4 1
  loc_66174B: LitVarStr var_120, "dd/mm/yyyy"
  loc_661750: FStVarCopyObj var_130
  loc_661753: FLdRfVar var_130
  loc_661756: FLdRfVar var_98
  loc_661759: CVarRef
  loc_66175E: FLdRfVar var_140
  loc_661761: ImpAdCallFPR4  = Format(, )
  loc_661766: LitI4 1
  loc_66176B: LitI4 1
  loc_661770: LitVarStr var_18C, "dd/mm/yyyy"
  loc_661775: FStVarCopyObj var_19C
  loc_661778: FLdRfVar var_19C
  loc_66177B: FLdRfVar var_98
  loc_66177E: CVarRef
  loc_661783: FLdRfVar var_1AC
  loc_661786: ImpAdCallFPR4  = Format(, )
  loc_66178B: ILdRf var_88
  loc_66178E: LitVarI2 var_100, 4
  loc_661793: LitI4 7
  loc_661798: FLdRfVar var_CC
  loc_66179B: CStrVarVal var_E0
  loc_66179F: ImpAdCallI2 Mid$(, , )
  loc_6617A4: FStStrNoPop var_144
  loc_6617A7: ConcatStr
  loc_6617A8: FStStrNoPop var_16C
  loc_6617AB: LitVarI2 var_164, 2
  loc_6617B0: LitI4 4
  loc_6617B5: FLdRfVar var_140
  loc_6617B8: CStrVarVal var_168
  loc_6617BC: ImpAdCallI2 Mid$(, , )
  loc_6617C1: FStStrNoPop var_1B0
  loc_6617C4: ConcatStr
  loc_6617C5: FStStrNoPop var_1D8
  loc_6617C8: LitVarI2 var_1D0, 2
  loc_6617CD: LitI4 1
  loc_6617D2: FLdRfVar var_1AC
  loc_6617D5: CStrVarVal var_1D4
  loc_6617D9: ImpAdCallI2 Mid$(, , )
  loc_6617DE: FStStrNoPop var_1DC
  loc_6617E1: ConcatStr
  loc_6617E2: FStStrNoPop var_1E0
  loc_6617E5: LitStr "235959"
  loc_6617E8: ConcatStr
  loc_6617E9: FStStr var_88
  loc_6617EC: FFreeStr var_E0 = "": var_144 = "": var_168 = "": var_16C = "": var_1B0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_661801: FFreeVar var_AC = "": var_CC = "": var_100 = "": var_130 = "": var_140 = "": var_164 = "": var_19C = "": var_1AC = ""
  loc_661816: FLdRfVar var_1E6
  loc_661819: FLdRfVar var_9C
  loc_66181C: FLdRfVar var_88
  loc_66181F: FLdPr Me
  loc_661822: MemLdRfVar from_stack_1.TipoReporte
  loc_661825: FLdRfVar var_1E4
  loc_661828: ImpAdLdRf MemVar_74C760
  loc_66182B: NewIfNullPr Formx
  loc_66182E: from_stack_1v = Formx.global_4589716Get()
  loc_661833: FLdPr var_1E4
  loc_661836: Formx.FontSize = from_stack_1s
  loc_66183B: FLdI2 var_1E6
  loc_66183E: NotI4
  loc_66183F: FFree1Ad var_1E4
  loc_661842: BranchF loc_661871
  loc_661845: FLdRfVar var_AC
  loc_661848: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66184D: FLdRfVar var_AC
  loc_661850: CBoolVarNull
  loc_661852: FFree1Var var_AC = ""
  loc_661855: BranchF loc_66186E
  loc_661858: ILdRf Me
  loc_66185B: FStAdNoPop
  loc_66185F: ImpAdLdRf MemVar_7520D4
  loc_661862: NewIfNullPr Global
  loc_661865: Global.Unload from_stack_1
  loc_66186A: FFree1Ad var_1E4
  loc_66186D: ExitProcHresult
  loc_66186E: Branch loc_661816
  loc_661871: FLdRfVar var_9C
  loc_661874: CVarRef
  loc_661879: FLdRfVar var_AC
  loc_66187C: ImpAdCallFPR4  = Trim()
  loc_661881: FLdRfVar var_AC
  loc_661884: CStrVarTmp
  loc_661885: FStStr var_9C
  loc_661888: FFree1Var var_AC = ""
  loc_66188B: ILdRf var_9C
  loc_66188E: LitStr "0"
  loc_661891: NeStr
  loc_661893: BranchF loc_6618B8
  loc_661896: LitI2_Byte 0
  loc_661898: FLdPr Me
  loc_66189B: MemStI2 global_126
  loc_66189E: FLdRfVar var_AC
  loc_6618A1: ILdRf var_9C
  loc_6618A4: FStStrCopy var_E0
  loc_6618A7: FLdRfVar var_E0
  loc_6618AA: from_stack_2v = CargarTablaFechas(from_stack_1v)
  loc_6618AF: FFree1Str var_E0
  loc_6618B2: FFree1Var var_AC = ""
  loc_6618B5: Branch loc_661914
  loc_6618B8: LitVar_Missing var_130
  loc_6618BB: LitVar_Missing var_100
  loc_6618BE: LitVarStr var_DC, "Reportes"
  loc_6618C3: FStVarCopyObj var_CC
  loc_6618C6: FLdRfVar var_CC
  loc_6618C9: LitI4 &H40
  loc_6618CE: LitVarStr var_BC, "No hay datos a mostrar en el reporte."
  loc_6618D3: FStVarCopyObj var_AC
  loc_6618D6: FLdRfVar var_AC
  loc_6618D9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6618DE: FFreeVar var_AC = "": var_CC = "": var_100 = ""
  loc_6618E9: FLdPr Me
  loc_6618EC: MemLdI2 global_126
  loc_6618EF: LitI2_Byte &HFF
  loc_6618F1: EqI2
  loc_6618F2: ILdRf var_88
  loc_6618F5: ILdRf Me
  loc_6618F8: PrintObject
  loc_6618FE: ILdRf Me
  loc_661901: FStAdNoPop
  loc_661905: ImpAdLdRf MemVar_7520D4
  loc_661908: NewIfNullPr Global
  loc_66190B: Global.Unload from_stack_1
  loc_661910: FFree1Ad var_1E4
  loc_661913: ExitProcHresult
  loc_661914: ExitProcHresult
  loc_661915: DOC
End Function

Private Function Proc_85_32_64485C(arg_C) '64485C
  'Data Table: 42D060
  loc_644608: LitI2_Byte 0
  loc_64460A: FLdRfVar var_86
  loc_64460D: ILdI4 arg_C
  loc_644610: LitI2_Byte 1
  loc_644612: FnUBound
  loc_644614: CI2I4
  loc_644615: ForI2 var_90
  loc_64461B: FLdI2 var_86
  loc_64461E: LitI2_Byte 1
  loc_644620: AddI2
  loc_644621: FStI2 var_88
  loc_644624: FLdI2 var_88
  loc_644627: CI4UI1
  loc_644628: ILdI4 arg_C
  loc_64462B: LitI2_Byte 1
  loc_64462D: FnUBound
  loc_64462F: LeI4
  loc_644630: BranchF loc_6446E5
  loc_644633: LitVarI2 var_10C, 4
  loc_644638: LitI4 4
  loc_64463D: FLdI2 var_88
  loc_644640: CI4UI1
  loc_644641: ILdI4 arg_C
  loc_644644: AryLock
  loc_644647: Ary1LdRf
  loc_644648: CVarRef
  loc_64464D: FLdRfVar var_11C
  loc_644650: ImpAdCallFPR4  = Mid(, , )
  loc_644655: AryUnlock
  loc_644658: FLdRfVar var_11C
  loc_64465B: CStrVarVal var_120
  loc_64465F: ImpAdCallFPR4 push Val()
  loc_644664: FStFPR8 var_128
  loc_644667: LitVarI2 var_C4, 4
  loc_64466C: LitI4 4
  loc_644671: FLdI2 var_86
  loc_644674: CI4UI1
  loc_644675: ILdI4 arg_C
  loc_644678: AryLock
  loc_64467B: Ary1LdRf
  loc_64467C: CVarRef
  loc_644681: FLdRfVar var_D4
  loc_644684: ImpAdCallFPR4  = Mid(, , )
  loc_644689: AryUnlock
  loc_64468C: FLdRfVar var_D4
  loc_64468F: CStrVarVal var_D8
  loc_644693: ImpAdCallFPR4 push Val()
  loc_644698: CR8R8
  loc_644699: FLdFPR8 var_128
  loc_64469C: CR8R8
  loc_64469D: LeR8
  loc_64469E: FFreeStr var_D8 = ""
  loc_6446A5: FFreeVar var_C4 = "": var_D4 = "": var_10C = ""
  loc_6446B0: BranchF loc_6446D9
  loc_6446B3: FLdI2 var_86
  loc_6446B6: CI4UI1
  loc_6446B7: ILdI4 arg_C
  loc_6446BA: Ary1LdI4
  loc_6446BB: FStStrCopy var_8C
  loc_6446BE: FLdI2 var_88
  loc_6446C1: CI4UI1
  loc_6446C2: ILdI4 arg_C
  loc_6446C5: Ary1LdI4
  loc_6446C6: FLdI2 var_86
  loc_6446C9: CI4UI1
  loc_6446CA: ILdI4 arg_C
  loc_6446CD: Ary1StStrCopy
  loc_6446CE: ILdRf var_8C
  loc_6446D1: FLdI2 var_88
  loc_6446D4: CI4UI1
  loc_6446D5: ILdI4 arg_C
  loc_6446D8: Ary1StStrCopy
  loc_6446D9: FLdI2 var_88
  loc_6446DC: LitI2_Byte 1
  loc_6446DE: AddI2
  loc_6446DF: FStI2 var_88
  loc_6446E2: Branch loc_644624
  loc_6446E5: FLdRfVar var_86
  loc_6446E8: NextI2 var_90, loc_64461B
  loc_6446ED: LitI2_Byte 0
  loc_6446EF: FLdRfVar var_86
  loc_6446F2: ILdI4 arg_C
  loc_6446F5: LitI2_Byte 1
  loc_6446F7: FnUBound
  loc_6446F9: CI2I4
  loc_6446FA: ForI2 var_12C
  loc_644700: FLdI2 var_86
  loc_644703: LitI2_Byte 1
  loc_644705: AddI2
  loc_644706: FStI2 var_88
  loc_644709: FLdI2 var_88
  loc_64470C: CI4UI1
  loc_64470D: ILdI4 arg_C
  loc_644710: LitI2_Byte 1
  loc_644712: FnUBound
  loc_644714: LeI4
  loc_644715: BranchF loc_644850
  loc_644718: LitVarI2 var_10C, 4
  loc_64471D: LitI4 4
  loc_644722: FLdI2 var_88
  loc_644725: CI4UI1
  loc_644726: ILdI4 arg_C
  loc_644729: AryLock
  loc_64472C: Ary1LdRf
  loc_64472D: CVarRef
  loc_644732: FLdRfVar var_11C
  loc_644735: ImpAdCallFPR4  = Mid(, , )
  loc_64473A: AryUnlock
  loc_64473D: FLdRfVar var_11C
  loc_644740: CStrVarVal var_120
  loc_644744: ImpAdCallFPR4 push Val()
  loc_644749: FStFPR8 var_128
  loc_64474C: LitVarI2 var_C4, 4
  loc_644751: LitI4 4
  loc_644756: FLdI2 var_86
  loc_644759: CI4UI1
  loc_64475A: ILdI4 arg_C
  loc_64475D: AryLock
  loc_644760: Ary1LdRf
  loc_644761: CVarRef
  loc_644766: FLdRfVar var_D4
  loc_644769: ImpAdCallFPR4  = Mid(, , )
  loc_64476E: AryUnlock
  loc_644771: FLdRfVar var_D4
  loc_644774: CStrVarVal var_D8
  loc_644778: ImpAdCallFPR4 push Val()
  loc_64477D: CR8R8
  loc_64477E: FLdFPR8 var_128
  loc_644781: CR8R8
  loc_644782: EqR4
  loc_644783: FFreeStr var_D8 = ""
  loc_64478A: FFreeVar var_C4 = "": var_D4 = "": var_10C = ""
  loc_644795: BranchF loc_644841
  loc_644798: LitVarI2 var_10C, 2
  loc_64479D: LitI4 1
  loc_6447A2: FLdI2 var_88
  loc_6447A5: CI4UI1
  loc_6447A6: ILdI4 arg_C
  loc_6447A9: AryLock
  loc_6447AC: Ary1LdRf
  loc_6447AD: CVarRef
  loc_6447B2: FLdRfVar var_11C
  loc_6447B5: ImpAdCallFPR4  = Mid(, , )
  loc_6447BA: AryUnlock
  loc_6447BD: FLdRfVar var_11C
  loc_6447C0: CStrVarVal var_120
  loc_6447C4: ImpAdCallFPR4 push Val()
  loc_6447C9: FStFPR8 var_128
  loc_6447CC: LitVarI2 var_C4, 2
  loc_6447D1: LitI4 1
  loc_6447D6: FLdI2 var_86
  loc_6447D9: CI4UI1
  loc_6447DA: ILdI4 arg_C
  loc_6447DD: AryLock
  loc_6447E0: Ary1LdRf
  loc_6447E1: CVarRef
  loc_6447E6: FLdRfVar var_D4
  loc_6447E9: ImpAdCallFPR4  = Mid(, , )
  loc_6447EE: AryUnlock
  loc_6447F1: FLdRfVar var_D4
  loc_6447F4: CStrVarVal var_D8
  loc_6447F8: ImpAdCallFPR4 push Val()
  loc_6447FD: CR8R8
  loc_6447FE: FLdFPR8 var_128
  loc_644801: CR8R8
  loc_644802: LtR8
  loc_644803: FFreeStr var_D8 = ""
  loc_64480A: FFreeVar var_C4 = "": var_D4 = "": var_10C = ""
  loc_644815: BranchF loc_64483E
  loc_644818: FLdI2 var_86
  loc_64481B: CI4UI1
  loc_64481C: ILdI4 arg_C
  loc_64481F: Ary1LdI4
  loc_644820: FStStrCopy var_8C
  loc_644823: FLdI2 var_88
  loc_644826: CI4UI1
  loc_644827: ILdI4 arg_C
  loc_64482A: Ary1LdI4
  loc_64482B: FLdI2 var_86
  loc_64482E: CI4UI1
  loc_64482F: ILdI4 arg_C
  loc_644832: Ary1StStrCopy
  loc_644833: ILdRf var_8C
  loc_644836: FLdI2 var_88
  loc_644839: CI4UI1
  loc_64483A: ILdI4 arg_C
  loc_64483D: Ary1StStrCopy
  loc_64483E: Branch loc_644844
  loc_644841: Branch loc_644850
  loc_644844: FLdI2 var_88
  loc_644847: LitI2_Byte 1
  loc_644849: AddI2
  loc_64484A: FStI2 var_88
  loc_64484D: Branch loc_644709
  loc_644850: FLdRfVar var_86
  loc_644853: NextI2 var_12C, loc_644700
  loc_644858: ExitProcHresult
  loc_644859: CStr2Ansi
End Function
