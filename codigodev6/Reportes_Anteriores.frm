VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form Reportes_Anteriores
  Caption = "Reportes anteriores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 30
  ClientTop = 195
  ClientWidth = 11910
  ClientHeight = 8565
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Moveable = 0   'False
  Begin Threed.SSCommand SSCommand2
    Left = 4680
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 0
    OleObjectBlob = "Reportes_Anteriores.frx":0000
  End
  Begin Threed.SSPanel SSPanel1
    Left = 240
    Top = 120
    Width = 11415
    Height = 7335
    TabIndex = 1
    OleObjectBlob = "Reportes_Anteriores.frx":006C
    Begin Threed.SSPanel PanelImpresion
      Left = 1620
      Top = 960
      Width = 7935
      Height = 4335
      Visible = 0   'False
      TabIndex = 3
      OleObjectBlob = "Reportes_Anteriores.frx":00ED
    End
    Begin MSFlexGridLib.MSFlexGrid Grid1
      Left = 360
      Top = 240
      Width = 10695
      Height = 6015
      TabIndex = 2
      OleObjectBlob = "Reportes_Anteriores.frx":0178
    End
    Begin Threed.SSCommand sscMesAnterior
      Left = 360
      Top = 6480
      Width = 2295
      Height = 615
      TabIndex = 4
      OleObjectBlob = "Reportes_Anteriores.frx":0264
    End
    Begin Threed.SSCommand sscMesSiguiente
      Left = 8760
      Top = 6480
      Width = 2295
      Height = 615
      TabIndex = 5
      OleObjectBlob = "Reportes_Anteriores.frx":02D9
    End
  End
  Begin Threed.SSCommand verclp
    Left = 600
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 6
    OleObjectBlob = "Reportes_Anteriores.frx":034F
  End
  Begin Threed.SSCommand printclp
    Left = 8640
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 7
    OleObjectBlob = "Reportes_Anteriores.frx":03BF
  End
End

Attribute VB_Name = "Reportes_Anteriores"

Public TipoReporte As String
Public SoloFecha As Boolean
Public RangoFecha As String
Public DBase As New UnkObject
Public Imprimir As Boolean
Public ClpParam As String
Public OldfilePConsign As Boolean

Private Type UDT_1_0048401C
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub verclp_UnknownEvent_8 '5CC7F4
  'Data Table: 440CF4
  loc_5CC7E4: LitI2_Byte 0
  loc_5CC7E6: FLdPr Me
  loc_5CC7E9: MemStI2 Imprimir
  loc_5CC7EC: Call Grid1_KeyDown(from_stack_1v, from_stack_2v)
  loc_5CC7F1: ExitProcHresult
End Sub

Private Sub printclp_UnknownEvent_8 '600C10
  'Data Table: 440CF4
  loc_600B54: LitI4 &H64
  loc_600B59: FLdRfVar var_9C
  loc_600B5C: ImpAdCallFPR4  = Space()
  loc_600B61: FLdRfVar var_9C
  loc_600B64: CStrVarTmp
  loc_600B65: FStStr var_8C
  loc_600B68: FFree1Var var_9C = ""
  loc_600B6B: LitI2_Byte &HFF
  loc_600B6D: FLdPr Me
  loc_600B70: MemStI2 Imprimir
  loc_600B73: LitStr "CEM44.INI"
  loc_600B76: FLdRfVar var_B0
  loc_600B79: CStr2Ansi
  loc_600B7A: ILdRf var_B0
  loc_600B7D: LitI4 &H64
  loc_600B82: ILdRf var_8C
  loc_600B85: FLdRfVar var_AC
  loc_600B88: CStr2Ansi
  loc_600B89: ILdRf var_AC
  loc_600B8C: LitStr "0"
  loc_600B8F: FLdRfVar var_A8
  loc_600B92: CStr2Ansi
  loc_600B93: ILdRf var_A8
  loc_600B96: LitStr "IMPRESORA"
  loc_600B99: FLdRfVar var_A4
  loc_600B9C: CStr2Ansi
  loc_600B9D: ILdRf var_A4
  loc_600BA0: LitStr "GENERAL"
  loc_600BA3: FLdRfVar var_A0
  loc_600BA6: CStr2Ansi
  loc_600BA7: ILdRf var_A0
  loc_600BAA: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_600BAF: FStR4 var_B4
  loc_600BB2: SetLastSystemError
  loc_600BB3: ILdRf var_AC
  loc_600BB6: FLdRfVar var_8C
  loc_600BB9: CStr2Uni
  loc_600BBB: ILdRf var_B4
  loc_600BBE: CStrI4
  loc_600BC0: FStStrNoPop var_B8
  loc_600BC3: CI4Str
  loc_600BC4: FStR4 var_88
  loc_600BC7: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_600BD6: LitVarI2 var_9C, 1
  loc_600BDB: LitI4 1
  loc_600BE0: FLdRfVar var_8C
  loc_600BE3: CVarRef
  loc_600BE8: FLdRfVar var_E8
  loc_600BEB: ImpAdCallFPR4  = Mid(, , )
  loc_600BF0: FLdRfVar var_E8
  loc_600BF3: CStrVarTmp
  loc_600BF4: FStStrNoPop var_A0
  loc_600BF7: FLdPr Me
  loc_600BFA: MemStStrCopy
  loc_600BFE: FFree1Str var_A0
  loc_600C01: FFreeVar var_9C = ""
  loc_600C08: Call Grid1_KeyDown(from_stack_1v, from_stack_2v)
  loc_600C0D: ExitProcHresult
End Sub

Private Sub sscMesAnterior_UnknownEvent_8 '60D308
  'Data Table: 440CF4
  loc_60D21C: FLdPr Me
  loc_60D21F: MemLdI2 global_148
  loc_60D222: LitI2_Byte 1
  loc_60D224: AddI2
  loc_60D225: FLdPr Me
  loc_60D228: MemStI2 global_148
  loc_60D22B: FLdPr Me
  loc_60D22E: MemLdI2 global_148
  loc_60D231: CI4UI1
  loc_60D232: FLdPr Me
  loc_60D235: MemLdStr global_144
  loc_60D238: Ary1LdPr
  loc_60D239: MemLdStr global_0
  loc_60D23C: FLdPr Me
  loc_60D23F: MemStStrCopy
  loc_60D243: FLdPr Me
  loc_60D246: MemLdI2 global_148
  loc_60D249: CI4UI1
  loc_60D24A: FLdPr Me
  loc_60D24D: MemLdStr global_144
  loc_60D250: Ary1LdPr
  loc_60D251: MemLdStr global_4
  loc_60D254: FLdPr Me
  loc_60D257: MemStStrCopy
  loc_60D25B: LitStr "Reportes anteriores - [Período "
  loc_60D25E: FLdRfVar var_88
  loc_60D261: FLdPr Me
  loc_60D264: MemLdStr global_88
  loc_60D267: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_60D26C: ILdRf var_88
  loc_60D26F: ConcatStr
  loc_60D270: FStStrNoPop var_8C
  loc_60D273: LitStr "-"
  loc_60D276: ConcatStr
  loc_60D277: FStStrNoPop var_94
  loc_60D27A: FLdRfVar var_90
  loc_60D27D: FLdPr Me
  loc_60D280: MemLdStr global_84
  loc_60D283: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_60D288: ILdRf var_90
  loc_60D28B: ConcatStr
  loc_60D28C: FStStrNoPop var_98
  loc_60D28F: LitStr "]"
  loc_60D292: ConcatStr
  loc_60D293: FStStrNoPop var_9C
  loc_60D296: FLdPr Me
  loc_60D299: Me.Caption = from_stack_1
  loc_60D29E: FFreeStr var_88 = "": var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_60D2AD: FLdRfVar var_AC
  loc_60D2B0: from_stack_1v = Proc_100_47_694DD0()
  loc_60D2B5: FFree1Var var_AC = ""
  loc_60D2B8: Call InicioGrilla()
  loc_60D2BD: Call CargaGrilla()
  loc_60D2C2: FLdPr Me
  loc_60D2C5: MemLdI2 global_148
  loc_60D2C8: CI4UI1
  loc_60D2C9: FLdPr Me
  loc_60D2CC: MemLdStr global_144
  loc_60D2CF: LitI2_Byte 1
  loc_60D2D1: FnUBound
  loc_60D2D3: GeI4
  loc_60D2D4: BranchF loc_60D2EE
  loc_60D2D7: LitVar_FALSE
  loc_60D2DB: PopAdLdVar
  loc_60D2DC: FLdPrThis
  loc_60D2DD: VCallAd Control_ID_sscMesAnterior
  loc_60D2E0: FStAdFunc var_C0
  loc_60D2E3: FLdPr var_C0
  loc_60D2E6: LateIdSt
  loc_60D2EB: FFree1Ad var_C0
  loc_60D2EE: LitVar_TRUE var_BC
  loc_60D2F1: PopAdLdVar
  loc_60D2F2: FLdPrThis
  loc_60D2F3: VCallAd Control_ID_sscMesSiguiente
  loc_60D2F6: FStAdFunc var_C0
  loc_60D2F9: FLdPr var_C0
  loc_60D2FC: LateIdSt
  loc_60D301: FFree1Ad var_C0
  loc_60D304: ExitProcHresult
End Sub

Private Sub sscMesSiguiente_UnknownEvent_8 '628100
  'Data Table: 440CF4
  loc_627FB8: FLdPr Me
  loc_627FBB: MemLdI2 global_148
  loc_627FBE: LitI2_Byte 1
  loc_627FC0: SubI2
  loc_627FC1: FLdPr Me
  loc_627FC4: MemStI2 global_148
  loc_627FC7: FLdPr Me
  loc_627FCA: MemLdI2 global_148
  loc_627FCD: CI4UI1
  loc_627FCE: FLdPr Me
  loc_627FD1: MemLdStr global_144
  loc_627FD4: Ary1LdPr
  loc_627FD5: MemLdStr global_0
  loc_627FD8: FLdPr Me
  loc_627FDB: MemStStrCopy
  loc_627FDF: FLdPr Me
  loc_627FE2: MemLdI2 global_148
  loc_627FE5: CI4UI1
  loc_627FE6: FLdPr Me
  loc_627FE9: MemLdStr global_144
  loc_627FEC: Ary1LdPr
  loc_627FED: MemLdStr global_4
  loc_627FF0: FLdPr Me
  loc_627FF3: MemStStrCopy
  loc_627FF7: FLdRfVar var_1D4
  loc_627FFA: LitVar_Missing var_1D0
  loc_627FFD: LitVar_Missing var_1B0
  loc_628000: LitVar_Missing var_190
  loc_628003: LitVar_Missing var_170
  loc_628006: LitVar_Missing var_150
  loc_628009: LitVar_Missing var_130
  loc_62800C: LitVar_Missing var_110
  loc_62800F: LitVar_Missing var_F0
  loc_628012: LitVar_Missing var_D0
  loc_628015: LitVar_Missing var_B0
  loc_628018: LitStr "Reportes anteriores - [Período"
  loc_62801B: FStStrCopy var_90
  loc_62801E: FLdRfVar var_90
  loc_628021: LitI4 &H23
  loc_628026: PopTmpLdAdStr var_8C
  loc_628029: LitI2_Byte &H1D
  loc_62802B: PopTmpLdAd2 var_86
  loc_62802E: ImpAdLdRf MemVar_74C7D0
  loc_628031: NewIfNullPr clsMsg
  loc_628034: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_628039: ILdRf var_1D4
  loc_62803C: LitStr " "
  loc_62803F: ConcatStr
  loc_628040: FStStrNoPop var_1DC
  loc_628043: FLdRfVar var_1D8
  loc_628046: FLdPr Me
  loc_628049: MemLdStr global_88
  loc_62804C: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_628051: ILdRf var_1D8
  loc_628054: ConcatStr
  loc_628055: FStStrNoPop var_1E0
  loc_628058: LitStr "-"
  loc_62805B: ConcatStr
  loc_62805C: FStStrNoPop var_1E8
  loc_62805F: FLdRfVar var_1E4
  loc_628062: FLdPr Me
  loc_628065: MemLdStr global_84
  loc_628068: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_62806D: ILdRf var_1E4
  loc_628070: ConcatStr
  loc_628071: FStStrNoPop var_1EC
  loc_628074: LitStr "]"
  loc_628077: ConcatStr
  loc_628078: FStStrNoPop var_1F0
  loc_62807B: FLdPr Me
  loc_62807E: Me.Caption = from_stack_1
  loc_628083: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1D8 = "": var_1E0 = "": var_1E8 = "": var_1E4 = "": var_1EC = ""
  loc_628098: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6280AF: FLdRfVar var_B0
  loc_6280B2: from_stack_1v = Proc_100_47_694DD0()
  loc_6280B7: FFree1Var var_B0 = ""
  loc_6280BA: Call InicioGrilla()
  loc_6280BF: Call CargaGrilla()
  loc_6280C4: FLdPr Me
  loc_6280C7: MemLdI2 global_148
  loc_6280CA: LitI2_Byte 0
  loc_6280CC: LeI2
  loc_6280CD: BranchF loc_6280E7
  loc_6280D0: LitVar_FALSE
  loc_6280D4: PopAdLdVar
  loc_6280D5: FLdPrThis
  loc_6280D6: VCallAd Control_ID_sscMesSiguiente
  loc_6280D9: FStAdFunc var_1F4
  loc_6280DC: FLdPr var_1F4
  loc_6280DF: LateIdSt
  loc_6280E4: FFree1Ad var_1F4
  loc_6280E7: LitVar_TRUE var_A0
  loc_6280EA: PopAdLdVar
  loc_6280EB: FLdPrThis
  loc_6280EC: VCallAd Control_ID_sscMesAnterior
  loc_6280EF: FStAdFunc var_1F4
  loc_6280F2: FLdPr var_1F4
  loc_6280F5: LateIdSt
  loc_6280FA: FFree1Ad var_1F4
  loc_6280FD: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D2134
  'Data Table: 440CF4
  loc_5D211C: ILdRf Me
  loc_5D211F: FStAdNoPop
  loc_5D2123: ImpAdLdRf MemVar_7520D4
  loc_5D2126: NewIfNullPr Global
  loc_5D2129: Global.Unload from_stack_1
  loc_5D212E: FFree1Ad var_88
  loc_5D2131: ExitProcHresult
End Sub

Private Sub Grid1_Click(arg_C) '5CF41C
  'Data Table: 440CF4
  loc_5CF408: ILdI2 arg_C
  loc_5CF40B: CI4UI1
  loc_5CF40C: LitI4 &HD
  loc_5CF411: EqI4
  loc_5CF412: BranchF loc_5CF41A
  loc_5CF415: Call Grid1_KeyDown(from_stack_1v, from_stack_2v)
  loc_5CF41A: ExitProcHresult
End Sub

Private Sub Grid1_KeyDown(KeyCode As Integer, Shift As Integer) '70B058
  'Data Table: 440CF4
  loc_709BC4: OnErrorGoto loc_70AEB7
  loc_709BC7: FLdPrThis
  loc_709BC8: VCallAd Control_ID_Grid1
  loc_709BCB: FStAdFunc var_B4
  loc_709BCE: FLdPr var_B4
  loc_709BD1: LateIdLdVar var_C4 DispID_12 0
  loc_709BD8: CI4Var
  loc_709BDA: LitI4 0
  loc_709BDF: EqI4
  loc_709BE0: FFree1Ad var_B4
  loc_709BE3: FFree1Var var_C4 = ""
  loc_709BE6: BranchF loc_709BEA
  loc_709BE9: ExitProcHresult
  loc_709BEA: LitVarI4
  loc_709BF2: PopAdLdVar
  loc_709BF3: FLdPrThis
  loc_709BF4: VCallAd Control_ID_Grid1
  loc_709BF7: FStAdFunc var_B4
  loc_709BFA: FLdPr var_B4
  loc_709BFD: LateIdSt
  loc_709C02: FFree1Ad var_B4
  loc_709C05: FLdPrThis
  loc_709C06: VCallAd Control_ID_Grid1
  loc_709C09: FStAdFunc var_B4
  loc_709C0C: FLdPr var_B4
  loc_709C0F: LateIdLdVar var_C4 DispID_12 0
  loc_709C16: CI4Var
  loc_709C18: CVarI4
  loc_709C1C: PopAdLdVar
  loc_709C1D: FLdPrThis
  loc_709C1E: VCallAd Control_ID_Grid1
  loc_709C21: FStAdFunc var_D8
  loc_709C24: FLdPr var_D8
  loc_709C27: LateIdSt
  loc_709C2C: FFreeAd var_B4 = ""
  loc_709C33: FFree1Var var_C4 = ""
  loc_709C36: LitStr vbNullString
  loc_709C39: FStStrCopy var_88
  loc_709C3C: LitI2_Byte 2
  loc_709C3E: FLdRfVar var_A2
  loc_709C41: LitI2_Byte &HA
  loc_709C43: ForI2 var_DC
  loc_709C49: LitI2_Byte 0
  loc_709C4B: FLdI2 var_A2
  loc_709C4E: CI4UI1
  loc_709C4F: FLdPr Me
  loc_709C52: MemLdRfVar from_stack_1.global_100
  loc_709C55: Ary1StI2
  loc_709C56: FLdRfVar var_A2
  loc_709C59: NextI2 var_DC, loc_709C49
  loc_709C5E: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_709C63: FLdPr Me
  loc_709C66: MemLdStr TipoReporte
  loc_709C69: LitStr "C"
  loc_709C6C: EqStr
  loc_709C6E: FLdPr Me
  loc_709C71: MemLdStr TipoReporte
  loc_709C74: LitStr "B"
  loc_709C77: EqStr
  loc_709C79: OrI4
  loc_709C7A: BranchF loc_709CF2
  loc_709C7D: LitI2_Byte 0
  loc_709C7F: CUI1I2
  loc_709C81: FLdRfVar var_8A
  loc_709C84: LitI2_Byte 4
  loc_709C86: CUI1I2
  loc_709C88: ForUI1 var_E0
  loc_709C8E: FLdUI1
  loc_709C92: CI4UI1
  loc_709C93: CVarI4
  loc_709C97: PopAdLdVar
  loc_709C98: FLdPrThis
  loc_709C99: VCallAd Control_ID_Grid1
  loc_709C9C: FStAdFunc var_B4
  loc_709C9F: FLdPr var_B4
  loc_709CA2: LateIdSt
  loc_709CA7: FFree1Ad var_B4
  loc_709CAA: ILdRf var_88
  loc_709CAD: CVarStr var_D4
  loc_709CB0: FLdPrThis
  loc_709CB1: VCallAd Control_ID_Grid1
  loc_709CB4: FStAdFunc var_B4
  loc_709CB7: FLdPr var_B4
  loc_709CBA: LateIdLdVar var_C4 DispID_0 0
  loc_709CC1: CStrVarTmp
  loc_709CC2: CVarStr var_F0
  loc_709CC5: FLdRfVar var_100
  loc_709CC8: ImpAdCallFPR4  = Trim()
  loc_709CCD: FLdRfVar var_100
  loc_709CD0: ConcatVar var_110
  loc_709CD4: CStrVarTmp
  loc_709CD5: FStStr var_88
  loc_709CD8: FFree1Ad var_B4
  loc_709CDB: FFreeVar var_C4 = "": var_F0 = "": var_100 = ""
  loc_709CE6: FLdRfVar var_8A
  loc_709CE9: NextUI1
  loc_709CEF: Branch loc_709D4D
  loc_709CF2: LitI2_Byte 0
  loc_709CF4: CUI1I2
  loc_709CF6: FLdRfVar var_8A
  loc_709CF9: LitI2_Byte 3
  loc_709CFB: CUI1I2
  loc_709CFD: ForUI1 var_114
  loc_709D03: FLdUI1
  loc_709D07: CI4UI1
  loc_709D08: CVarI4
  loc_709D0C: PopAdLdVar
  loc_709D0D: FLdPrThis
  loc_709D0E: VCallAd Control_ID_Grid1
  loc_709D11: FStAdFunc var_B4
  loc_709D14: FLdPr var_B4
  loc_709D17: LateIdSt
  loc_709D1C: FFree1Ad var_B4
  loc_709D1F: ILdRf var_88
  loc_709D22: FLdPrThis
  loc_709D23: VCallAd Control_ID_Grid1
  loc_709D26: FStAdFunc var_B4
  loc_709D29: FLdPr var_B4
  loc_709D2C: LateIdLdVar var_C4 DispID_0 0
  loc_709D33: CStrVarTmp
  loc_709D34: FStStrNoPop var_118
  loc_709D37: ConcatStr
  loc_709D38: FStStr var_88
  loc_709D3B: FFree1Str var_118
  loc_709D3E: FFree1Ad var_B4
  loc_709D41: FFree1Var var_C4 = ""
  loc_709D44: FLdRfVar var_8A
  loc_709D47: NextUI1
  loc_709D4D: FLdPr Me
  loc_709D50: MemLdI2 SoloFecha
  loc_709D53: BranchF loc_709D76
  loc_709D56: ILdRf var_88
  loc_709D59: FLdPr Me
  loc_709D5C: MemStStrCopy
  loc_709D60: ILdRf Me
  loc_709D63: FStAdNoPop
  loc_709D67: ImpAdLdRf MemVar_7520D4
  loc_709D6A: NewIfNullPr Global
  loc_709D6D: Global.Unload from_stack_1
  loc_709D72: FFree1Ad var_B4
  loc_709D75: ExitProcHresult
  loc_709D76: FLdPr Me
  loc_709D79: MemLdStr TipoReporte
  loc_709D7C: FStStrCopy var_11C
  loc_709D7F: ILdRf var_11C
  loc_709D82: LitStr "C"
  loc_709D85: EqStr
  loc_709D87: BranchF loc_709FA7
  loc_709D8A: LitI2_Byte 0
  loc_709D8C: FLdPr Me
  loc_709D8F: MemStI2 global_164
  loc_709D92: FLdPrThis
  loc_709D93: VCallAd Control_ID_Grid1
  loc_709D96: FStAdFunc var_B4
  loc_709D99: FLdPr var_B4
  loc_709D9C: LateIdLdVar var_C4 DispID_10 0
  loc_709DA3: CI4Var
  loc_709DA5: CVarI4
  loc_709DA9: PopAdLdVar
  loc_709DAA: FLdPrThis
  loc_709DAB: VCallAd Control_ID_Grid1
  loc_709DAE: FStAdFunc var_D8
  loc_709DB1: FLdPr var_D8
  loc_709DB4: LateIdLdVar var_F0 DispID_11 0
  loc_709DBB: CI4Var
  loc_709DBD: CVarI4
  loc_709DC1: PopAdLdVar
  loc_709DC2: FLdPrThis
  loc_709DC3: VCallAd Control_ID_Grid1
  loc_709DC6: FStAdFunc var_130
  loc_709DC9: FLdPr var_130
  loc_709DCC: LateIdCallLdVar
  loc_709DD6: CStrVarTmp
  loc_709DD7: FStStrNoPop var_118
  loc_709DDA: FnLenStr
  loc_709DDB: LitI4 &H10
  loc_709DE0: EqI4
  loc_709DE1: FFree1Str var_118
  loc_709DE4: FFreeAd var_B4 = "": var_D8 = ""
  loc_709DED: FFreeVar var_C4 = "": var_F0 = ""
  loc_709DF6: BranchF loc_709ED4
  loc_709DF9: LitI2_Byte &HFF
  loc_709DFB: FLdPr Me
  loc_709DFE: MemStI2 global_164
  loc_709E01: FLdPr Me
  loc_709E04: MemLdI2 Imprimir
  loc_709E07: BranchF loc_709E6F
  loc_709E0A: FLdRfVar var_21C
  loc_709E0D: LitVar_Missing var_218
  loc_709E10: LitVar_Missing var_1F8
  loc_709E13: LitVar_Missing var_1D8
  loc_709E16: LitVar_Missing var_1B8
  loc_709E19: LitVar_Missing var_198
  loc_709E1C: LitVar_Missing var_178
  loc_709E1F: LitVar_Missing var_110
  loc_709E22: LitVar_Missing var_100
  loc_709E25: LitVar_Missing var_F0
  loc_709E28: LitVar_Missing var_C4
  loc_709E2B: LitStr "Desea Imprimir el Documento Legal?"
  loc_709E2E: FStStrCopy var_118
  loc_709E31: FLdRfVar var_118
  loc_709E34: LitI4 &H1A
  loc_709E39: PopTmpLdAdStr var_138
  loc_709E3C: LitI2_Byte &H1D
  loc_709E3E: PopTmpLdAd2 var_132
  loc_709E41: ImpAdLdRf MemVar_74C7D0
  loc_709E44: NewIfNullPr clsMsg
  loc_709E47: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709E4C: FLdZeroAd var_21C
  loc_709E4F: FStStr var_94
  loc_709E52: FFree1Str var_118
  loc_709E55: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_709E6C: Branch loc_709ED1
  loc_709E6F: FLdRfVar var_21C
  loc_709E72: LitVar_Missing var_218
  loc_709E75: LitVar_Missing var_1F8
  loc_709E78: LitVar_Missing var_1D8
  loc_709E7B: LitVar_Missing var_1B8
  loc_709E7E: LitVar_Missing var_198
  loc_709E81: LitVar_Missing var_178
  loc_709E84: LitVar_Missing var_110
  loc_709E87: LitVar_Missing var_100
  loc_709E8A: LitVar_Missing var_F0
  loc_709E8D: LitVar_Missing var_C4
  loc_709E90: LitStr "Desea Ver el Documento Legal?"
  loc_709E93: FStStrCopy var_118
  loc_709E96: FLdRfVar var_118
  loc_709E99: LitI4 &H1B
  loc_709E9E: PopTmpLdAdStr var_138
  loc_709EA1: LitI2_Byte &H1D
  loc_709EA3: PopTmpLdAd2 var_132
  loc_709EA6: ImpAdLdRf MemVar_74C7D0
  loc_709EA9: NewIfNullPr clsMsg
  loc_709EAC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709EB1: FLdZeroAd var_21C
  loc_709EB4: FStStr var_94
  loc_709EB7: FFree1Str var_118
  loc_709EBA: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_709ED1: Branch loc_709FA4
  loc_709ED4: FLdPr Me
  loc_709ED7: MemLdI2 Imprimir
  loc_709EDA: BranchF loc_709F42
  loc_709EDD: FLdRfVar var_21C
  loc_709EE0: LitVar_Missing var_218
  loc_709EE3: LitVar_Missing var_1F8
  loc_709EE6: LitVar_Missing var_1D8
  loc_709EE9: LitVar_Missing var_1B8
  loc_709EEC: LitVar_Missing var_198
  loc_709EEF: LitVar_Missing var_178
  loc_709EF2: LitVar_Missing var_110
  loc_709EF5: LitVar_Missing var_100
  loc_709EF8: LitVar_Missing var_F0
  loc_709EFB: LitVar_Missing var_C4
  loc_709EFE: LitStr "Desea Imprimir la Cuenta Liquido Producto?"
  loc_709F01: FStStrCopy var_118
  loc_709F04: FLdRfVar var_118
  loc_709F07: LitI4 &H1C
  loc_709F0C: PopTmpLdAdStr var_138
  loc_709F0F: LitI2_Byte &H1D
  loc_709F11: PopTmpLdAd2 var_132
  loc_709F14: ImpAdLdRf MemVar_74C7D0
  loc_709F17: NewIfNullPr clsMsg
  loc_709F1A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709F1F: FLdZeroAd var_21C
  loc_709F22: FStStr var_94
  loc_709F25: FFree1Str var_118
  loc_709F28: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_709F3F: Branch loc_709FA4
  loc_709F42: FLdRfVar var_21C
  loc_709F45: LitVar_Missing var_218
  loc_709F48: LitVar_Missing var_1F8
  loc_709F4B: LitVar_Missing var_1D8
  loc_709F4E: LitVar_Missing var_1B8
  loc_709F51: LitVar_Missing var_198
  loc_709F54: LitVar_Missing var_178
  loc_709F57: LitVar_Missing var_110
  loc_709F5A: LitVar_Missing var_100
  loc_709F5D: LitVar_Missing var_F0
  loc_709F60: LitVar_Missing var_C4
  loc_709F63: LitStr "Desea Ver la Cuenta Liquido Producto?"
  loc_709F66: FStStrCopy var_118
  loc_709F69: FLdRfVar var_118
  loc_709F6C: LitI4 &H1D
  loc_709F71: PopTmpLdAdStr var_138
  loc_709F74: LitI2_Byte &H1D
  loc_709F76: PopTmpLdAd2 var_132
  loc_709F79: ImpAdLdRf MemVar_74C7D0
  loc_709F7C: NewIfNullPr clsMsg
  loc_709F7F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709F84: FLdZeroAd var_21C
  loc_709F87: FStStr var_94
  loc_709F8A: FFree1Str var_118
  loc_709F8D: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_709FA4: Branch loc_70A21B
  loc_709FA7: ILdRf var_11C
  loc_709FAA: LitStr "R"
  loc_709FAD: EqStr
  loc_709FAF: BranchF loc_70A0BF
  loc_709FB2: LitVarI2 var_C4, 1
  loc_709FB7: LitI4 4
  loc_709FBC: ImpAdLdI4 MemVar_74BEAC
  loc_709FBF: ImpAdCallI2 Mid$(, , )
  loc_709FC4: FStStrNoPop var_118
  loc_709FC7: LitStr "1"
  loc_709FCA: EqStr
  loc_709FCC: FFree1Str var_118
  loc_709FCF: FFree1Var var_C4 = ""
  loc_709FD2: BranchF loc_70A037
  loc_709FD5: FLdRfVar var_21C
  loc_709FD8: LitVar_Missing var_218
  loc_709FDB: LitVar_Missing var_1F8
  loc_709FDE: LitVar_Missing var_1D8
  loc_709FE1: LitVar_Missing var_1B8
  loc_709FE4: LitVar_Missing var_198
  loc_709FE7: LitVar_Missing var_178
  loc_709FEA: LitVar_Missing var_110
  loc_709FED: LitVar_Missing var_100
  loc_709FF0: LitVar_Missing var_F0
  loc_709FF3: LitVar_Missing var_C4
  loc_709FF6: LitStr "Desea Ver/Imprimir el Informe de Cierre Red XXI?"
  loc_709FF9: FStStrCopy var_118
  loc_709FFC: FLdRfVar var_118
  loc_709FFF: LitI4 9
  loc_70A004: PopTmpLdAdStr var_138
  loc_70A007: LitI2_Byte &H1D
  loc_70A009: PopTmpLdAd2 var_132
  loc_70A00C: ImpAdLdRf MemVar_74C7D0
  loc_70A00F: NewIfNullPr clsMsg
  loc_70A012: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A017: FLdZeroAd var_21C
  loc_70A01A: FStStr var_94
  loc_70A01D: FFree1Str var_118
  loc_70A020: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_70A037: LitVarI2 var_C4, 1
  loc_70A03C: LitI4 &HC
  loc_70A041: ImpAdLdI4 MemVar_74BEAC
  loc_70A044: ImpAdCallI2 Mid$(, , )
  loc_70A049: FStStrNoPop var_118
  loc_70A04C: LitStr "1"
  loc_70A04F: EqStr
  loc_70A051: FFree1Str var_118
  loc_70A054: FFree1Var var_C4 = ""
  loc_70A057: BranchF loc_70A0BC
  loc_70A05A: FLdRfVar var_21C
  loc_70A05D: LitVar_Missing var_218
  loc_70A060: LitVar_Missing var_1F8
  loc_70A063: LitVar_Missing var_1D8
  loc_70A066: LitVar_Missing var_1B8
  loc_70A069: LitVar_Missing var_198
  loc_70A06C: LitVar_Missing var_178
  loc_70A06F: LitVar_Missing var_110
  loc_70A072: LitVar_Missing var_100
  loc_70A075: LitVar_Missing var_F0
  loc_70A078: LitVar_Missing var_C4
  loc_70A07B: LitStr "Desea Ver/Imprimir el Informe de Cierre Esso Conectividad?"
  loc_70A07E: FStStrCopy var_118
  loc_70A081: FLdRfVar var_118
  loc_70A084: LitI4 &H1E
  loc_70A089: PopTmpLdAdStr var_138
  loc_70A08C: LitI2_Byte &H1D
  loc_70A08E: PopTmpLdAd2 var_132
  loc_70A091: ImpAdLdRf MemVar_74C7D0
  loc_70A094: NewIfNullPr clsMsg
  loc_70A097: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A09C: FLdZeroAd var_21C
  loc_70A09F: FStStr var_94
  loc_70A0A2: FFree1Str var_118
  loc_70A0A5: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_70A0BC: Branch loc_70A21B
  loc_70A0BF: ILdRf var_11C
  loc_70A0C2: LitStr "G"
  loc_70A0C5: EqStr
  loc_70A0C7: BranchF loc_70A149
  loc_70A0CA: FLdRfVar var_21C
  loc_70A0CD: LitVar_Missing var_218
  loc_70A0D0: LitVar_Missing var_1F8
  loc_70A0D3: LitVar_Missing var_1D8
  loc_70A0D6: LitVar_Missing var_1B8
  loc_70A0D9: LitVar_Missing var_198
  loc_70A0DC: LitVar_Missing var_178
  loc_70A0DF: LitVar_Missing var_110
  loc_70A0E2: LitVar_Missing var_100
  loc_70A0E5: LitVar_Missing var_F0
  loc_70A0E8: LitVar_Missing var_C4
  loc_70A0EB: LitStr "Desea Ver/Imprimir el Reporte de Grupos de"
  loc_70A0EE: FStStrCopy var_118
  loc_70A0F1: FLdRfVar var_118
  loc_70A0F4: LitI4 &H1F
  loc_70A0F9: PopTmpLdAdStr var_138
  loc_70A0FC: LitI2_Byte &H1D
  loc_70A0FE: PopTmpLdAd2 var_132
  loc_70A101: ImpAdLdRf MemVar_74C7D0
  loc_70A104: NewIfNullPr clsMsg
  loc_70A107: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A10C: ILdRf var_21C
  loc_70A10F: LitStr " "
  loc_70A112: ConcatStr
  loc_70A113: FStStrNoPop var_220
  loc_70A116: ImpAdLdI4 MemVar_74BEE4
  loc_70A119: ConcatStr
  loc_70A11A: FStStrNoPop var_224
  loc_70A11D: LitStr "?"
  loc_70A120: ConcatStr
  loc_70A121: FStStr var_94
  loc_70A124: FFreeStr var_118 = "": var_21C = "": var_220 = ""
  loc_70A12F: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_70A146: Branch loc_70A21B
  loc_70A149: ILdRf var_11C
  loc_70A14C: LitStr "B"
  loc_70A14F: EqStr
  loc_70A151: BranchF loc_70A1B9
  loc_70A154: FLdRfVar var_21C
  loc_70A157: LitVar_Missing var_218
  loc_70A15A: LitVar_Missing var_1F8
  loc_70A15D: LitVar_Missing var_1D8
  loc_70A160: LitVar_Missing var_1B8
  loc_70A163: LitVar_Missing var_198
  loc_70A166: LitVar_Missing var_178
  loc_70A169: LitVar_Missing var_110
  loc_70A16C: LitVar_Missing var_100
  loc_70A16F: LitVar_Missing var_F0
  loc_70A172: LitVar_Missing var_C4
  loc_70A175: LitStr "Desea Ver/Imprimir el Reporte de Débitos Bancarios?"
  loc_70A178: FStStrCopy var_118
  loc_70A17B: FLdRfVar var_118
  loc_70A17E: LitI4 &H20
  loc_70A183: PopTmpLdAdStr var_138
  loc_70A186: LitI2_Byte &H1D
  loc_70A188: PopTmpLdAd2 var_132
  loc_70A18B: ImpAdLdRf MemVar_74C7D0
  loc_70A18E: NewIfNullPr clsMsg
  loc_70A191: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A196: FLdZeroAd var_21C
  loc_70A199: FStStr var_94
  loc_70A19C: FFree1Str var_118
  loc_70A19F: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_70A1B6: Branch loc_70A21B
  loc_70A1B9: FLdRfVar var_21C
  loc_70A1BC: LitVar_Missing var_218
  loc_70A1BF: LitVar_Missing var_1F8
  loc_70A1C2: LitVar_Missing var_1D8
  loc_70A1C5: LitVar_Missing var_1B8
  loc_70A1C8: LitVar_Missing var_198
  loc_70A1CB: LitVar_Missing var_178
  loc_70A1CE: LitVar_Missing var_110
  loc_70A1D1: LitVar_Missing var_100
  loc_70A1D4: LitVar_Missing var_F0
  loc_70A1D7: LitVar_Missing var_C4
  loc_70A1DA: LitStr "Desea ver/imprimir el reporte?"
  loc_70A1DD: FStStrCopy var_118
  loc_70A1E0: FLdRfVar var_118
  loc_70A1E3: LitI4 &HB
  loc_70A1E8: PopTmpLdAdStr var_138
  loc_70A1EB: LitI2_Byte &H1D
  loc_70A1ED: PopTmpLdAd2 var_132
  loc_70A1F0: ImpAdLdRf MemVar_74C7D0
  loc_70A1F3: NewIfNullPr clsMsg
  loc_70A1F6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A1FB: FLdZeroAd var_21C
  loc_70A1FE: FStStr var_94
  loc_70A201: FFree1Str var_118
  loc_70A204: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_70A21B: LitVar_Missing var_F0
  loc_70A21E: LitVar_Missing var_C4
  loc_70A221: ImpAdLdRf MemVar_74BF24
  loc_70A224: CVarRef
  loc_70A229: LitI4 &H1021
  loc_70A22E: FLdRfVar var_94
  loc_70A231: CVarRef
  loc_70A236: ImpAdCallI2 MsgBox(, , , , )
  loc_70A23B: LitI4 2
  loc_70A240: EqI4
  loc_70A241: FFreeVar var_C4 = ""
  loc_70A248: BranchF loc_70A24C
  loc_70A24B: ExitProcHresult
  loc_70A24C: FLdPr Me
  loc_70A24F: MemLdStr TipoReporte
  loc_70A252: FStStrCopy var_228
  loc_70A255: ILdRf var_228
  loc_70A258: LitStr "C"
  loc_70A25B: EqStr
  loc_70A25D: BranchF loc_70A43E
  loc_70A260: FLdRfVar var_C4
  loc_70A263: FLdRfVar var_90
  loc_70A266: FLdRfVar var_88
  loc_70A269: LitStr "C"
  loc_70A26C: FStStrCopy var_21C
  loc_70A26F: FLdRfVar var_21C
  loc_70A272: LitStr "C"
  loc_70A275: FStStrCopy var_118
  loc_70A278: FLdRfVar var_118
  loc_70A27B: FLdRfVar var_B4
  loc_70A27E: ImpAdLdRf MemVar_74C760
  loc_70A281: NewIfNullPr Formx
  loc_70A284: from_stack_1v = Formx.global_4589716Get()
  loc_70A289: FLdPr var_B4
  loc_70A28C:  = Formx.FontBold
  loc_70A291: FLdRfVar var_C4
  loc_70A294: NotVar var_F0
  loc_70A298: CBoolVarNull
  loc_70A29A: FFreeStr var_118 = ""
  loc_70A2A1: FFree1Ad var_B4
  loc_70A2A4: FFree1Var var_C4 = ""
  loc_70A2A7: BranchF loc_70A2D6
  loc_70A2AA: FLdRfVar var_C4
  loc_70A2AD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A2B2: FLdRfVar var_C4
  loc_70A2B5: CBoolVarNull
  loc_70A2B7: FFree1Var var_C4 = ""
  loc_70A2BA: BranchF loc_70A2D3
  loc_70A2BD: ILdRf Me
  loc_70A2C0: FStAdNoPop
  loc_70A2C4: ImpAdLdRf MemVar_7520D4
  loc_70A2C7: NewIfNullPr Global
  loc_70A2CA: Global.Unload from_stack_1
  loc_70A2CF: FFree1Ad var_B4
  loc_70A2D2: ExitProcHresult
  loc_70A2D3: Branch loc_70A260
  loc_70A2D6: FLdRfVar var_90
  loc_70A2D9: CVarRef
  loc_70A2DE: FLdRfVar var_C4
  loc_70A2E1: ImpAdCallFPR4  = Trim()
  loc_70A2E6: FLdRfVar var_C4
  loc_70A2E9: LitVarStr var_12C, "0"
  loc_70A2EE: HardType
  loc_70A2EF: NeVarBool
  loc_70A2F1: FFree1Var var_C4 = ""
  loc_70A2F4: BranchF loc_70A3BE
  loc_70A2F7: FLdRfVar var_C4
  loc_70A2FA: FLdPr Me
  loc_70A2FD: MemLdRfVar from_stack_1.global_164
  loc_70A300: FLdRfVar var_90
  loc_70A303: from_stack_3v = ArmarReporteCLP(from_stack_1v, from_stack_2v)
  loc_70A308: FFree1Var var_C4 = ""
  loc_70A30B: FLdPr Me
  loc_70A30E: MemLdI2 Imprimir
  loc_70A311: BranchF loc_70A369
  loc_70A314: FLdPr Me
  loc_70A317: MemLdI2 global_164
  loc_70A31A: BranchF loc_70A343
  loc_70A31D: FLdRfVar var_220
  loc_70A320: LitStr "Reporte de Cierre"
  loc_70A323: FStStrCopy var_21C
  loc_70A326: FLdRfVar var_21C
  loc_70A329: LitStr "\lch.rpt"
  loc_70A32C: FStStrCopy var_118
  loc_70A32F: FLdRfVar var_118
  loc_70A332: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A337: FFreeStr var_118 = "": var_21C = ""
  loc_70A340: Branch loc_70A366
  loc_70A343: FLdRfVar var_220
  loc_70A346: LitStr "Reporte de Cierre"
  loc_70A349: FStStrCopy var_21C
  loc_70A34C: FLdRfVar var_21C
  loc_70A34F: LitStr "\clpprint.rpt"
  loc_70A352: FStStrCopy var_118
  loc_70A355: FLdRfVar var_118
  loc_70A358: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A35D: FFreeStr var_118 = "": var_21C = ""
  loc_70A366: Branch loc_70A3BB
  loc_70A369: FLdPr Me
  loc_70A36C: MemLdI2 global_164
  loc_70A36F: BranchF loc_70A398
  loc_70A372: FLdRfVar var_220
  loc_70A375: LitStr "Reporte de Cierre"
  loc_70A378: FStStrCopy var_21C
  loc_70A37B: FLdRfVar var_21C
  loc_70A37E: LitStr "\clp.rpt"
  loc_70A381: FStStrCopy var_118
  loc_70A384: FLdRfVar var_118
  loc_70A387: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A38C: FFreeStr var_118 = "": var_21C = ""
  loc_70A395: Branch loc_70A3BB
  loc_70A398: FLdRfVar var_220
  loc_70A39B: LitStr "Reporte de Cierre"
  loc_70A39E: FStStrCopy var_21C
  loc_70A3A1: FLdRfVar var_21C
  loc_70A3A4: LitStr "\clpOld.rpt"
  loc_70A3A7: FStStrCopy var_118
  loc_70A3AA: FLdRfVar var_118
  loc_70A3AD: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A3B2: FFreeStr var_118 = "": var_21C = ""
  loc_70A3BB: Branch loc_70A43B
  loc_70A3BE: FLdRfVar var_21C
  loc_70A3C1: LitVar_Missing var_218
  loc_70A3C4: LitVar_Missing var_1F8
  loc_70A3C7: LitVar_Missing var_1D8
  loc_70A3CA: LitVar_Missing var_1B8
  loc_70A3CD: LitVar_Missing var_198
  loc_70A3D0: LitVar_Missing var_178
  loc_70A3D3: LitVar_Missing var_110
  loc_70A3D6: LitVar_Missing var_100
  loc_70A3D9: LitVar_Missing var_F0
  loc_70A3DC: LitVar_Missing var_C4
  loc_70A3DF: LitStr " No se encuentra el reporte solicitado."
  loc_70A3E2: FStStrCopy var_118
  loc_70A3E5: FLdRfVar var_118
  loc_70A3E8: LitI4 &H21
  loc_70A3ED: PopTmpLdAdStr var_138
  loc_70A3F0: LitI2_Byte &H1D
  loc_70A3F2: PopTmpLdAd2 var_132
  loc_70A3F5: ImpAdLdRf MemVar_74C7D0
  loc_70A3F8: NewIfNullPr clsMsg
  loc_70A3FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A400: LitVar_Missing var_298
  loc_70A403: LitVar_Missing var_278
  loc_70A406: LitVar_Missing var_258
  loc_70A409: LitI4 &H40
  loc_70A40E: FLdZeroAd var_21C
  loc_70A411: CVarStr var_238
  loc_70A414: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70A419: FFree1Str var_118
  loc_70A41C: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_70A43B: Branch loc_70AEB6
  loc_70A43E: ILdRf var_228
  loc_70A441: LitStr "B"
  loc_70A444: EqStr
  loc_70A446: BranchF loc_70A59D
  loc_70A449: FLdRfVar var_C4
  loc_70A44C: FLdRfVar var_90
  loc_70A44F: FLdRfVar var_88
  loc_70A452: LitStr "B"
  loc_70A455: FStStrCopy var_21C
  loc_70A458: FLdRfVar var_21C
  loc_70A45B: LitStr "B"
  loc_70A45E: FStStrCopy var_118
  loc_70A461: FLdRfVar var_118
  loc_70A464: FLdRfVar var_B4
  loc_70A467: ImpAdLdRf MemVar_74C760
  loc_70A46A: NewIfNullPr Formx
  loc_70A46D: from_stack_1v = Formx.global_4589716Get()
  loc_70A472: FLdPr var_B4
  loc_70A475:  = Formx.FontBold
  loc_70A47A: FLdRfVar var_C4
  loc_70A47D: NotVar var_F0
  loc_70A481: CBoolVarNull
  loc_70A483: FFreeStr var_118 = ""
  loc_70A48A: FFree1Ad var_B4
  loc_70A48D: FFree1Var var_C4 = ""
  loc_70A490: BranchF loc_70A4BF
  loc_70A493: FLdRfVar var_C4
  loc_70A496: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A49B: FLdRfVar var_C4
  loc_70A49E: CBoolVarNull
  loc_70A4A0: FFree1Var var_C4 = ""
  loc_70A4A3: BranchF loc_70A4BC
  loc_70A4A6: ILdRf Me
  loc_70A4A9: FStAdNoPop
  loc_70A4AD: ImpAdLdRf MemVar_7520D4
  loc_70A4B0: NewIfNullPr Global
  loc_70A4B3: Global.Unload from_stack_1
  loc_70A4B8: FFree1Ad var_B4
  loc_70A4BB: ExitProcHresult
  loc_70A4BC: Branch loc_70A449
  loc_70A4BF: FLdRfVar var_90
  loc_70A4C2: CVarRef
  loc_70A4C7: FLdRfVar var_C4
  loc_70A4CA: ImpAdCallFPR4  = Trim()
  loc_70A4CF: FLdRfVar var_C4
  loc_70A4D2: LitVarStr var_12C, "0"
  loc_70A4D7: HardType
  loc_70A4D8: NeVarBool
  loc_70A4DA: FFree1Var var_C4 = ""
  loc_70A4DD: BranchF loc_70A51D
  loc_70A4E0: FLdRfVar var_C4
  loc_70A4E3: ILdRf var_90
  loc_70A4E6: FStStrCopy var_118
  loc_70A4E9: FLdRfVar var_118
  loc_70A4EC: from_stack_2v = ArmarReporteDB(from_stack_1v)
  loc_70A4F1: FFree1Str var_118
  loc_70A4F4: FFree1Var var_C4 = ""
  loc_70A4F7: FLdRfVar var_220
  loc_70A4FA: LitStr "Reporte de Cierre"
  loc_70A4FD: FStStrCopy var_21C
  loc_70A500: FLdRfVar var_21C
  loc_70A503: LitStr "\debitos.rpt"
  loc_70A506: FStStrCopy var_118
  loc_70A509: FLdRfVar var_118
  loc_70A50C: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A511: FFreeStr var_118 = "": var_21C = ""
  loc_70A51A: Branch loc_70A59A
  loc_70A51D: FLdRfVar var_21C
  loc_70A520: LitVar_Missing var_218
  loc_70A523: LitVar_Missing var_1F8
  loc_70A526: LitVar_Missing var_1D8
  loc_70A529: LitVar_Missing var_1B8
  loc_70A52C: LitVar_Missing var_198
  loc_70A52F: LitVar_Missing var_178
  loc_70A532: LitVar_Missing var_110
  loc_70A535: LitVar_Missing var_100
  loc_70A538: LitVar_Missing var_F0
  loc_70A53B: LitVar_Missing var_C4
  loc_70A53E: LitStr " No se encuentra el reporte solicitado."
  loc_70A541: FStStrCopy var_118
  loc_70A544: FLdRfVar var_118
  loc_70A547: LitI4 &H21
  loc_70A54C: PopTmpLdAdStr var_138
  loc_70A54F: LitI2_Byte &H1D
  loc_70A551: PopTmpLdAd2 var_132
  loc_70A554: ImpAdLdRf MemVar_74C7D0
  loc_70A557: NewIfNullPr clsMsg
  loc_70A55A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A55F: LitVar_Missing var_298
  loc_70A562: LitVar_Missing var_278
  loc_70A565: LitVar_Missing var_258
  loc_70A568: LitI4 &H40
  loc_70A56D: FLdZeroAd var_21C
  loc_70A570: CVarStr var_238
  loc_70A573: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70A578: FFree1Str var_118
  loc_70A57B: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_70A59A: Branch loc_70AEB6
  loc_70A59D: ILdRf var_228
  loc_70A5A0: LitStr "R"
  loc_70A5A3: EqStr
  loc_70A5A5: BranchF loc_70A7AE
  loc_70A5A8: LitVarI2 var_C4, 1
  loc_70A5AD: LitI4 4
  loc_70A5B2: ImpAdLdI4 MemVar_74BEAC
  loc_70A5B5: ImpAdCallI2 Mid$(, , )
  loc_70A5BA: FStStrNoPop var_118
  loc_70A5BD: LitStr "1"
  loc_70A5C0: EqStr
  loc_70A5C2: FFree1Str var_118
  loc_70A5C5: FFree1Var var_C4 = ""
  loc_70A5C8: BranchF loc_70A60D
  loc_70A5CB: LitI2_Byte &HFF
  loc_70A5CD: FLdPr Me
  loc_70A5D0: MemStI2 global_156
  loc_70A5D3: FLdPr Me
  loc_70A5D6: MemLdStr TipoReporte
  loc_70A5D9: ImpAdLdRf MemVar_74DAB4
  loc_70A5DC: NewIfNullPr frmShowCloseRed21
  loc_70A5DF: Call frmShowCloseRed21.TipoReportePut(from_stack_1v)
  loc_70A5E4: ILdRf var_88
  loc_70A5E7: ImpAdLdRf MemVar_74DAB4
  loc_70A5EA: NewIfNullPr frmShowCloseRed21
  loc_70A5ED: Call frmShowCloseRed21.DesdehastaPut(from_stack_1v)
  loc_70A5F2: LitVar_Missing var_12C
  loc_70A5F5: PopAdLdVar
  loc_70A5F6: LitVarI4
  loc_70A5FE: PopAdLdVar
  loc_70A5FF: ImpAdLdRf MemVar_74DAB4
  loc_70A602: NewIfNullPr frmShowCloseRed21
  loc_70A605: frmShowCloseRed21.Show from_stack_1, from_stack_2
  loc_70A60A: Branch loc_70A7AB
  loc_70A60D: FLdRfVar var_C4
  loc_70A610: FLdRfVar var_94
  loc_70A613: FLdRfVar var_88
  loc_70A616: LitStr "1"
  loc_70A619: FStStrCopy var_118
  loc_70A61C: FLdRfVar var_118
  loc_70A61F: FLdPr Me
  loc_70A622: MemLdRfVar from_stack_1.TipoReporte
  loc_70A625: FLdRfVar var_B4
  loc_70A628: ImpAdLdRf MemVar_74C760
  loc_70A62B: NewIfNullPr Formx
  loc_70A62E: from_stack_1v = Formx.global_4589716Get()
  loc_70A633: FLdPr var_B4
  loc_70A636:  = Formx.FontBold
  loc_70A63B: FLdRfVar var_C4
  loc_70A63E: NotVar var_F0
  loc_70A642: CBoolVarNull
  loc_70A644: FFree1Str var_118
  loc_70A647: FFree1Ad var_B4
  loc_70A64A: FFree1Var var_C4 = ""
  loc_70A64D: BranchF loc_70A667
  loc_70A650: FLdRfVar var_C4
  loc_70A653: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A658: FLdRfVar var_C4
  loc_70A65B: CBoolVarNull
  loc_70A65D: FFree1Var var_C4 = ""
  loc_70A660: BranchF loc_70A664
  loc_70A663: ExitProcHresult
  loc_70A664: Branch loc_70A60D
  loc_70A667: FLdRfVar var_94
  loc_70A66A: CVarRef
  loc_70A66F: FLdRfVar var_C4
  loc_70A672: ImpAdCallFPR4  = Trim()
  loc_70A677: FLdRfVar var_C4
  loc_70A67A: CStrVarTmp
  loc_70A67B: FStStr var_94
  loc_70A67E: FFree1Var var_C4 = ""
  loc_70A681: FLdRfVar var_132
  loc_70A684: FLdRfVar var_94
  loc_70A687: from_stack_2v = ArmarReporteConectividad(from_stack_1v)
  loc_70A68C: FLdI2 var_132
  loc_70A68F: BranchF loc_70A7AB
  loc_70A692: FLdRfVar var_C4
  loc_70A695: FLdRfVar var_94
  loc_70A698: FLdRfVar var_88
  loc_70A69B: LitStr "A"
  loc_70A69E: FStStrCopy var_118
  loc_70A6A1: FLdRfVar var_118
  loc_70A6A4: FLdPr Me
  loc_70A6A7: MemLdRfVar from_stack_1.TipoReporte
  loc_70A6AA: FLdRfVar var_B4
  loc_70A6AD: ImpAdLdRf MemVar_74C760
  loc_70A6B0: NewIfNullPr Formx
  loc_70A6B3: from_stack_1v = Formx.global_4589716Get()
  loc_70A6B8: FLdPr var_B4
  loc_70A6BB:  = Formx.FontBold
  loc_70A6C0: FLdRfVar var_C4
  loc_70A6C3: NotVar var_F0
  loc_70A6C7: CBoolVarNull
  loc_70A6C9: FFree1Str var_118
  loc_70A6CC: FFree1Ad var_B4
  loc_70A6CF: FFree1Var var_C4 = ""
  loc_70A6D2: BranchF loc_70A6EC
  loc_70A6D5: FLdRfVar var_C4
  loc_70A6D8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A6DD: FLdRfVar var_C4
  loc_70A6E0: CBoolVarNull
  loc_70A6E2: FFree1Var var_C4 = ""
  loc_70A6E5: BranchF loc_70A6E9
  loc_70A6E8: ExitProcHresult
  loc_70A6E9: Branch loc_70A692
  loc_70A6EC: ILdRf var_94
  loc_70A6EF: FnLenStr
  loc_70A6F0: LitI4 5
  loc_70A6F5: GtI4
  loc_70A6F6: BranchF loc_70A70D
  loc_70A6F9: FLdRfVar var_132
  loc_70A6FC: ILdRf var_94
  loc_70A6FF: FStStrCopy var_118
  loc_70A702: FLdRfVar var_118
  loc_70A705: from_stack_2v = ArmarReporteAnexoIII(from_stack_1v)
  loc_70A70A: FFree1Str var_118
  loc_70A70D: LitVarI2 var_C4, 1
  loc_70A712: LitI4 &HC
  loc_70A717: ImpAdLdI4 MemVar_74BEAC
  loc_70A71A: ImpAdCallI2 Mid$(, , )
  loc_70A71F: FStStrNoPop var_118
  loc_70A722: LitStr "1"
  loc_70A725: EqStr
  loc_70A727: FFree1Str var_118
  loc_70A72A: FFree1Var var_C4 = ""
  loc_70A72D: BranchF loc_70A7AB
  loc_70A730: LitVar_Missing var_110
  loc_70A733: LitVar_Missing var_100
  loc_70A736: LitVar_Missing var_F0
  loc_70A739: LitI4 4
  loc_70A73E: LitVarStr var_D4, "¿Desea ver el reporte detallado?"
  loc_70A743: FStVarCopyObj var_C4
  loc_70A746: FLdRfVar var_C4
  loc_70A749: ImpAdCallI2 MsgBox(, , , , )
  loc_70A74E: LitI4 6
  loc_70A753: EqI4
  loc_70A754: FFreeVar var_C4 = "": var_F0 = "": var_100 = ""
  loc_70A75F: BranchF loc_70A788
  loc_70A762: FLdRfVar var_220
  loc_70A765: LitStr "Reporte de Cierre"
  loc_70A768: FStStrCopy var_21C
  loc_70A76B: FLdRfVar var_21C
  loc_70A76E: LitStr "\cierre.rpt"
  loc_70A771: FStStrCopy var_118
  loc_70A774: FLdRfVar var_118
  loc_70A777: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A77C: FFreeStr var_118 = "": var_21C = ""
  loc_70A785: Branch loc_70A7AB
  loc_70A788: FLdRfVar var_220
  loc_70A78B: LitStr "Reporte de Cierre"
  loc_70A78E: FStStrCopy var_21C
  loc_70A791: FLdRfVar var_21C
  loc_70A794: LitStr "\cierreAgrup.rpt"
  loc_70A797: FStStrCopy var_118
  loc_70A79A: FLdRfVar var_118
  loc_70A79D: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A7A2: FFreeStr var_118 = "": var_21C = ""
  loc_70A7AB: Branch loc_70AEB6
  loc_70A7AE: ILdRf var_228
  loc_70A7B1: LitStr "G"
  loc_70A7B4: EqStr
  loc_70A7B6: BranchF loc_70A82A
  loc_70A7B9: ILdRf var_88
  loc_70A7BC: ImpAdLdRf MemVar_74DA68
  loc_70A7BF: NewIfNullPr frmReporteGrupos
  loc_70A7C2: Call frmReporteGrupos.DesdehastaPut(from_stack_1v)
  loc_70A7C7: ImpAdLdRf MemVar_74DA68
  loc_70A7CA: NewIfNullAd
  loc_70A7CD: FStAdNoPop
  loc_70A7D1: ImpAdLdRf MemVar_7520D4
  loc_70A7D4: NewIfNullPr Global
  loc_70A7D7: Global.Load from_stack_1
  loc_70A7DC: FFree1Ad var_B4
  loc_70A7DF: LitI2_Byte &HFF
  loc_70A7E1: ImpAdLdRf MemVar_74DA68
  loc_70A7E4: NewIfNullPr frmReporteGrupos
  loc_70A7E7: Call frmReporteGrupos.ImprimeListado(from_stack_1v)
  loc_70A7EC: FLdRfVar var_220
  loc_70A7EF: LitStr "Reporte de Cierre"
  loc_70A7F2: FStStrCopy var_21C
  loc_70A7F5: FLdRfVar var_21C
  loc_70A7F8: LitStr "\grupos.rpt"
  loc_70A7FB: FStStrCopy var_118
  loc_70A7FE: FLdRfVar var_118
  loc_70A801: from_stack_3v = MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70A806: FFreeStr var_118 = "": var_21C = ""
  loc_70A80F: ImpAdLdRf MemVar_74DA68
  loc_70A812: NewIfNullAd
  loc_70A815: FStAdNoPop
  loc_70A819: ImpAdLdRf MemVar_7520D4
  loc_70A81C: NewIfNullPr Global
  loc_70A81F: Global.Unload from_stack_1
  loc_70A824: FFree1Ad var_B4
  loc_70A827: Branch loc_70AEB6
  loc_70A82A: FLdRfVar var_21C
  loc_70A82D: LitVar_Missing var_218
  loc_70A830: LitVar_Missing var_1F8
  loc_70A833: LitVar_Missing var_1D8
  loc_70A836: LitVar_Missing var_1B8
  loc_70A839: LitVar_Missing var_198
  loc_70A83C: LitVar_Missing var_178
  loc_70A83F: LitVar_Missing var_110
  loc_70A842: LitVar_Missing var_100
  loc_70A845: LitVar_Missing var_F0
  loc_70A848: LitVar_Missing var_C4
  loc_70A84B: LitStr "Impresion en curso"
  loc_70A84E: FStStrCopy var_118
  loc_70A851: FLdRfVar var_118
  loc_70A854: LitI4 &HC
  loc_70A859: PopTmpLdAdStr var_138
  loc_70A85C: LitI2_Byte &H1D
  loc_70A85E: PopTmpLdAd2 var_132
  loc_70A861: ImpAdLdRf MemVar_74C7D0
  loc_70A864: NewIfNullPr clsMsg
  loc_70A867: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70A86C: FLdZeroAd var_21C
  loc_70A86F: CVarStr var_238
  loc_70A872: PopAdLdVar
  loc_70A873: FLdPrThis
  loc_70A874: VCallAd Control_ID_PanelImpresion
  loc_70A877: FStAdFunc var_B4
  loc_70A87A: FLdPr var_B4
  loc_70A87D: LateIdSt
  loc_70A882: FFree1Str var_118
  loc_70A885: FFree1Ad var_B4
  loc_70A888: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = ""
  loc_70A8A1: LitVar_TRUE var_D4
  loc_70A8A4: PopAdLdVar
  loc_70A8A5: FLdPrThis
  loc_70A8A6: VCallAd Control_ID_PanelImpresion
  loc_70A8A9: FStAdFunc var_B4
  loc_70A8AC: FLdPr var_B4
  loc_70A8AF: LateIdSt
  loc_70A8B4: FFree1Ad var_B4
  loc_70A8B7: FLdRfVar var_C4
  loc_70A8BA: FLdRfVar var_90
  loc_70A8BD: FLdRfVar var_88
  loc_70A8C0: LitStr "D"
  loc_70A8C3: FStStrCopy var_118
  loc_70A8C6: FLdRfVar var_118
  loc_70A8C9: FLdPr Me
  loc_70A8CC: MemLdRfVar from_stack_1.TipoReporte
  loc_70A8CF: FLdRfVar var_B4
  loc_70A8D2: ImpAdLdRf MemVar_74C760
  loc_70A8D5: NewIfNullPr Formx
  loc_70A8D8: from_stack_1v = Formx.global_4589716Get()
  loc_70A8DD: FLdPr var_B4
  loc_70A8E0:  = Formx.FontBold
  loc_70A8E5: FLdRfVar var_C4
  loc_70A8E8: NotVar var_F0
  loc_70A8EC: CBoolVarNull
  loc_70A8EE: FFree1Str var_118
  loc_70A8F1: FFree1Ad var_B4
  loc_70A8F4: FFree1Var var_C4 = ""
  loc_70A8F7: BranchF loc_70A926
  loc_70A8FA: FLdRfVar var_C4
  loc_70A8FD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A902: FLdRfVar var_C4
  loc_70A905: CBoolVarNull
  loc_70A907: FFree1Var var_C4 = ""
  loc_70A90A: BranchF loc_70A923
  loc_70A90D: ILdRf Me
  loc_70A910: FStAdNoPop
  loc_70A914: ImpAdLdRf MemVar_7520D4
  loc_70A917: NewIfNullPr Global
  loc_70A91A: Global.Unload from_stack_1
  loc_70A91F: FFree1Ad var_B4
  loc_70A922: ExitProcHresult
  loc_70A923: Branch loc_70A8B7
  loc_70A926: LitStr "´"
  loc_70A929: FStStrCopy var_21C
  loc_70A92C: FLdRfVar var_21C
  loc_70A92F: LitStr "'"
  loc_70A932: FStStrCopy var_118
  loc_70A935: FLdRfVar var_118
  loc_70A938: FLdRfVar var_90
  loc_70A93B: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_70A940: FStStr var_90
  loc_70A943: FFreeStr var_118 = ""
  loc_70A94A: FLdRfVar var_AC
  loc_70A94D: FLdRfVar var_90
  loc_70A950: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_70A955: FLdRfVar var_C4
  loc_70A958: FLdRfVar var_90
  loc_70A95B: FLdRfVar var_88
  loc_70A95E: LitStr "H"
  loc_70A961: FStStrCopy var_118
  loc_70A964: FLdRfVar var_118
  loc_70A967: FLdPr Me
  loc_70A96A: MemLdRfVar from_stack_1.TipoReporte
  loc_70A96D: FLdRfVar var_B4
  loc_70A970: ImpAdLdRf MemVar_74C760
  loc_70A973: NewIfNullPr Formx
  loc_70A976: from_stack_1v = Formx.global_4589716Get()
  loc_70A97B: FLdPr var_B4
  loc_70A97E:  = Formx.FontBold
  loc_70A983: FLdRfVar var_C4
  loc_70A986: NotVar var_F0
  loc_70A98A: CBoolVarNull
  loc_70A98C: FFree1Str var_118
  loc_70A98F: FFree1Ad var_B4
  loc_70A992: FFree1Var var_C4 = ""
  loc_70A995: BranchF loc_70A9DB
  loc_70A998: FLdRfVar var_C4
  loc_70A99B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70A9A0: FLdRfVar var_C4
  loc_70A9A3: CBoolVarNull
  loc_70A9A5: FFree1Var var_C4 = ""
  loc_70A9A8: BranchF loc_70A9D8
  loc_70A9AB: ILdRf Me
  loc_70A9AE: FStAdNoPop
  loc_70A9B2: ImpAdLdRf MemVar_7520D4
  loc_70A9B5: NewIfNullPr Global
  loc_70A9B8: Global.Unload from_stack_1
  loc_70A9BD: FFree1Ad var_B4
  loc_70A9C0: LitVar_FALSE
  loc_70A9C4: PopAdLdVar
  loc_70A9C5: FLdPrThis
  loc_70A9C6: VCallAd Control_ID_PanelImpresion
  loc_70A9C9: FStAdFunc var_B4
  loc_70A9CC: FLdPr var_B4
  loc_70A9CF: LateIdSt
  loc_70A9D4: FFree1Ad var_B4
  loc_70A9D7: ExitProcHresult
  loc_70A9D8: Branch loc_70A955
  loc_70A9DB: FLdRfVar var_B0
  loc_70A9DE: FLdRfVar var_90
  loc_70A9E1: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_70A9E6: FLdRfVar var_118
  loc_70A9E9: FLdRfVar var_B4
  loc_70A9EC: ImpAdLdRf MemVar_7520D4
  loc_70A9EF: NewIfNullPr Global
  loc_70A9F2:  = Global.App
  loc_70A9F7: FLdPr var_B4
  loc_70A9FA:  = App.Path
  loc_70A9FF: FLdRfVar var_9C
  loc_70AA02: FLdRfVar var_A0
  loc_70AA05: LitI2_Byte &HFF
  loc_70AA07: PopTmpLdAd2 var_132
  loc_70AA0A: ILdRf var_118
  loc_70AA0D: LitStr "\reporte.mdb"
  loc_70AA10: ConcatStr
  loc_70AA11: PopTmpLdAdStr
  loc_70AA15: FLdRfVar var_AC
  loc_70AA18: FLdPr Me
  loc_70AA1B: MemLdRfVar from_stack_1.TipoReporte
  loc_70AA1E: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_70AA23: NotI4
  loc_70AA24: FFreeStr var_118 = ""
  loc_70AA2B: FFree1Ad var_B4
  loc_70AA2E: BranchF loc_70AB25
  loc_70AA31: FLdRfVar var_21C
  loc_70AA34: LitVar_Missing var_218
  loc_70AA37: LitVar_Missing var_1F8
  loc_70AA3A: LitVar_Missing var_1D8
  loc_70AA3D: LitVar_Missing var_1B8
  loc_70AA40: LitVar_Missing var_198
  loc_70AA43: LitVar_Missing var_178
  loc_70AA46: LitVar_Missing var_110
  loc_70AA49: LitVar_Missing var_100
  loc_70AA4C: LitVar_Missing var_F0
  loc_70AA4F: LitVar_Missing var_C4
  loc_70AA52: LitStr "Error en la conversión de archivos."
  loc_70AA55: FStStrCopy var_118
  loc_70AA58: FLdRfVar var_118
  loc_70AA5B: LitI4 &HD
  loc_70AA60: PopTmpLdAdStr var_138
  loc_70AA63: LitI2_Byte &H1D
  loc_70AA65: PopTmpLdAd2 var_132
  loc_70AA68: ImpAdLdRf MemVar_74C7D0
  loc_70AA6B: NewIfNullPr clsMsg
  loc_70AA6E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70AA73: LitI4 &HD
  loc_70AA78: ImpAdCallI2 Chr$()
  loc_70AA7D: FStStr var_2B0
  loc_70AA80: LitVar_Missing var_278
  loc_70AA83: LitVar_Missing var_258
  loc_70AA86: ImpAdLdRf MemVar_74BF24
  loc_70AA89: CVarRef
  loc_70AA8E: LitI4 5
  loc_70AA93: ILdRf var_21C
  loc_70AA96: FLdZeroAd var_2B0
  loc_70AA99: FStStrNoPop var_220
  loc_70AA9C: ConcatStr
  loc_70AA9D: FStStrNoPop var_224
  loc_70AAA0: LitStr "Error "
  loc_70AAA3: ConcatStr
  loc_70AAA4: FStStrNoPop var_29C
  loc_70AAA7: ILdRf var_9C
  loc_70AAAA: CStrI4
  loc_70AAAC: FStStrNoPop var_2A0
  loc_70AAAF: ConcatStr
  loc_70AAB0: FStStrNoPop var_2A4
  loc_70AAB3: LitStr ". "
  loc_70AAB6: ConcatStr
  loc_70AAB7: FStStrNoPop var_2A8
  loc_70AABA: ILdRf var_A0
  loc_70AABD: ConcatStr
  loc_70AABE: FStStrNoPop var_2AC
  loc_70AAC1: LitStr "."
  loc_70AAC4: ConcatStr
  loc_70AAC5: CVarStr var_238
  loc_70AAC8: ImpAdCallI2 MsgBox(, , , , )
  loc_70AACD: LitI4 2
  loc_70AAD2: EqI4
  loc_70AAD3: FFreeStr var_118 = "": var_21C = "": var_220 = "": var_224 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = ""
  loc_70AAEA: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = ""
  loc_70AB07: BranchF loc_70AB22
  loc_70AB0A: LitVar_FALSE
  loc_70AB0E: PopAdLdVar
  loc_70AB0F: FLdPrThis
  loc_70AB10: VCallAd Control_ID_PanelImpresion
  loc_70AB13: FStAdFunc var_B4
  loc_70AB16: FLdPr var_B4
  loc_70AB19: LateIdSt
  loc_70AB1E: FFree1Ad var_B4
  loc_70AB21: ExitProcHresult
  loc_70AB22: Branch loc_70A9E6
  loc_70AB25: FLdRfVar var_118
  loc_70AB28: FLdRfVar var_B4
  loc_70AB2B: ImpAdLdRf MemVar_7520D4
  loc_70AB2E: NewIfNullPr Global
  loc_70AB31:  = Global.App
  loc_70AB36: FLdPr var_B4
  loc_70AB39:  = App.Path
  loc_70AB3E: FLdRfVar var_9C
  loc_70AB41: FLdRfVar var_A0
  loc_70AB44: LitI2_Byte 0
  loc_70AB46: PopTmpLdAd2 var_132
  loc_70AB49: ILdRf var_118
  loc_70AB4C: LitStr "\reporte.mdb"
  loc_70AB4F: ConcatStr
  loc_70AB50: PopTmpLdAdStr
  loc_70AB54: FLdRfVar var_B0
  loc_70AB57: FLdPr Me
  loc_70AB5A: MemLdRfVar from_stack_1.TipoReporte
  loc_70AB5D: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_70AB62: NotI4
  loc_70AB63: FFreeStr var_118 = ""
  loc_70AB6A: FFree1Ad var_B4
  loc_70AB6D: BranchF loc_70AC64
  loc_70AB70: FLdRfVar var_21C
  loc_70AB73: LitVar_Missing var_218
  loc_70AB76: LitVar_Missing var_1F8
  loc_70AB79: LitVar_Missing var_1D8
  loc_70AB7C: LitVar_Missing var_1B8
  loc_70AB7F: LitVar_Missing var_198
  loc_70AB82: LitVar_Missing var_178
  loc_70AB85: LitVar_Missing var_110
  loc_70AB88: LitVar_Missing var_100
  loc_70AB8B: LitVar_Missing var_F0
  loc_70AB8E: LitVar_Missing var_C4
  loc_70AB91: LitStr "Error en la conversión de archivos."
  loc_70AB94: FStStrCopy var_118
  loc_70AB97: FLdRfVar var_118
  loc_70AB9A: LitI4 &HD
  loc_70AB9F: PopTmpLdAdStr var_138
  loc_70ABA2: LitI2_Byte &H1D
  loc_70ABA4: PopTmpLdAd2 var_132
  loc_70ABA7: ImpAdLdRf MemVar_74C7D0
  loc_70ABAA: NewIfNullPr clsMsg
  loc_70ABAD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70ABB2: LitI4 &HD
  loc_70ABB7: ImpAdCallI2 Chr$()
  loc_70ABBC: FStStr var_2B0
  loc_70ABBF: LitVar_Missing var_278
  loc_70ABC2: LitVar_Missing var_258
  loc_70ABC5: ImpAdLdRf MemVar_74BF24
  loc_70ABC8: CVarRef
  loc_70ABCD: LitI4 5
  loc_70ABD2: ILdRf var_21C
  loc_70ABD5: FLdZeroAd var_2B0
  loc_70ABD8: FStStrNoPop var_220
  loc_70ABDB: ConcatStr
  loc_70ABDC: FStStrNoPop var_224
  loc_70ABDF: LitStr "Error "
  loc_70ABE2: ConcatStr
  loc_70ABE3: FStStrNoPop var_29C
  loc_70ABE6: ILdRf var_9C
  loc_70ABE9: CStrI4
  loc_70ABEB: FStStrNoPop var_2A0
  loc_70ABEE: ConcatStr
  loc_70ABEF: FStStrNoPop var_2A4
  loc_70ABF2: LitStr ". "
  loc_70ABF5: ConcatStr
  loc_70ABF6: FStStrNoPop var_2A8
  loc_70ABF9: ILdRf var_A0
  loc_70ABFC: ConcatStr
  loc_70ABFD: FStStrNoPop var_2AC
  loc_70AC00: LitStr "."
  loc_70AC03: ConcatStr
  loc_70AC04: CVarStr var_238
  loc_70AC07: ImpAdCallI2 MsgBox(, , , , )
  loc_70AC0C: LitI4 2
  loc_70AC11: EqI4
  loc_70AC12: FFreeStr var_118 = "": var_21C = "": var_220 = "": var_224 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = ""
  loc_70AC29: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = ""
  loc_70AC46: BranchF loc_70AC61
  loc_70AC49: LitVar_FALSE
  loc_70AC4D: PopAdLdVar
  loc_70AC4E: FLdPrThis
  loc_70AC4F: VCallAd Control_ID_PanelImpresion
  loc_70AC52: FStAdFunc var_B4
  loc_70AC55: FLdPr var_B4
  loc_70AC58: LateIdSt
  loc_70AC5D: FFree1Ad var_B4
  loc_70AC60: ExitProcHresult
  loc_70AC61: Branch loc_70AB25
  loc_70AC64: LitVarI4
  loc_70AC6C: PopAdLdVar
  loc_70AC6D: ImpAdLdRf MemVar_74C760
  loc_70AC70: NewIfNullPr Formx
  loc_70AC73: VCallAd Control_ID_CrystalReport1
  loc_70AC76: FStAdFunc var_B4
  loc_70AC79: FLdPr var_B4
  loc_70AC7C: LateIdSt
  loc_70AC81: FFree1Ad var_B4
  loc_70AC84: FLdRfVar var_118
  loc_70AC87: FLdRfVar var_B4
  loc_70AC8A: ImpAdLdRf MemVar_7520D4
  loc_70AC8D: NewIfNullPr Global
  loc_70AC90:  = Global.App
  loc_70AC95: FLdPr var_B4
  loc_70AC98:  = App.Path
  loc_70AC9D: ILdRf var_118
  loc_70ACA0: LitStr "\"
  loc_70ACA3: ConcatStr
  loc_70ACA4: CVarStr var_F0
  loc_70ACA7: FLdRfVar var_C4
  loc_70ACAA: ImpAdCallFPR4  = Proc_101_19_61BD94()
  loc_70ACAF: FLdRfVar var_C4
  loc_70ACB2: ConcatVar var_100
  loc_70ACB6: CStrVarTmp
  loc_70ACB7: CVarStr var_110
  loc_70ACBA: PopAdLdVar
  loc_70ACBB: ImpAdLdRf MemVar_74C760
  loc_70ACBE: NewIfNullPr Formx
  loc_70ACC1: VCallAd Control_ID_CrystalReport1
  loc_70ACC4: FStAdFunc var_D8
  loc_70ACC7: FLdPr var_D8
  loc_70ACCA: LateIdSt
  loc_70ACCF: FFree1Str var_118
  loc_70ACD2: FFreeAd var_B4 = ""
  loc_70ACD9: FFreeVar var_F0 = "": var_C4 = "": var_100 = ""
  loc_70ACE4: LitVar_FALSE
  loc_70ACE8: PopAdLdVar
  loc_70ACE9: FLdPrThis
  loc_70ACEA: VCallAd Control_ID_Text3
  loc_70ACED: FStAdFunc var_B4
  loc_70ACF0: FLdPr var_B4
  loc_70ACF3: LateIdSt
  loc_70ACF8: FFree1Ad var_B4
  loc_70ACFB: FLdPr Me
  loc_70ACFE: MemLdStr TipoReporte
  loc_70AD01: LitStr "D"
  loc_70AD04: EqStr
  loc_70AD06: BranchF loc_70AD12
  loc_70AD09: ImpAdLdI4 MemVar_74BEB4
  loc_70AD0C: FStStrCopy var_A8
  loc_70AD0F: Branch loc_70AD2F
  loc_70AD12: FLdPr Me
  loc_70AD15: MemLdStr TipoReporte
  loc_70AD18: LitStr "M"
  loc_70AD1B: EqStr
  loc_70AD1D: BranchF loc_70AD29
  loc_70AD20: ImpAdLdI4 MemVar_74BEB8
  loc_70AD23: FStStrCopy var_A8
  loc_70AD26: Branch loc_70AD2F
  loc_70AD29: ImpAdLdI4 MemVar_74BEB0
  loc_70AD2C: FStStrCopy var_A8
  loc_70AD2F: FLdRfVar var_A8
  loc_70AD32: ImpAdCallFPR4 Proc_101_3_662098()
  loc_70AD37: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_70AD3C: LitVarI2 var_C4, 1
  loc_70AD41: LitI4 4
  loc_70AD46: ImpAdLdI4 MemVar_74BEAC
  loc_70AD49: ImpAdCallI2 Mid$(, , )
  loc_70AD4E: FStStrNoPop var_118
  loc_70AD51: LitStr "1"
  loc_70AD54: EqStr
  loc_70AD56: FFree1Str var_118
  loc_70AD59: FFree1Var var_C4 = ""
  loc_70AD5C: BranchF loc_70AD7A
  loc_70AD5F: LitVar_TRUE var_D4
  loc_70AD62: PopAdLdVar
  loc_70AD63: ImpAdLdRf MemVar_74C760
  loc_70AD66: NewIfNullPr Formx
  loc_70AD69: VCallAd Control_ID_CrystalReport1
  loc_70AD6C: FStAdFunc var_B4
  loc_70AD6F: FLdPr var_B4
  loc_70AD72: LateIdSt
  loc_70AD77: FFree1Ad var_B4
  loc_70AD7A: LitStr "CEM44.INI"
  loc_70AD7D: FLdRfVar var_220
  loc_70AD80: CStr2Ansi
  loc_70AD81: ILdRf var_220
  loc_70AD84: LitI4 0
  loc_70AD89: LitStr "REPORTTOFILE"
  loc_70AD8C: FLdRfVar var_21C
  loc_70AD8F: CStr2Ansi
  loc_70AD90: ILdRf var_21C
  loc_70AD93: LitStr "GENERAL"
  loc_70AD96: FLdRfVar var_118
  loc_70AD99: CStr2Ansi
  loc_70AD9A: ILdRf var_118
  loc_70AD9D: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_70ADA2: FStR4 var_138
  loc_70ADA5: SetLastSystemError
  loc_70ADA6: ILdRf var_138
  loc_70ADA9: LitI4 1
  loc_70ADAE: EqI4
  loc_70ADAF: FFreeStr var_118 = "": var_21C = ""
  loc_70ADB8: BranchF loc_70AE5A
  loc_70ADBB: LitVarI4
  loc_70ADC3: PopAdLdVar
  loc_70ADC4: ImpAdLdRf MemVar_74C760
  loc_70ADC7: NewIfNullPr Formx
  loc_70ADCA: VCallAd Control_ID_CrystalReport1
  loc_70ADCD: FStAdFunc var_B4
  loc_70ADD0: FLdPr var_B4
  loc_70ADD3: LateIdSt
  loc_70ADD8: FFree1Ad var_B4
  loc_70ADDB: LitStr "CEM44.INI"
  loc_70ADDE: FLdRfVar var_220
  loc_70ADE1: CStr2Ansi
  loc_70ADE2: ILdRf var_220
  loc_70ADE5: LitI4 &H11
  loc_70ADEA: LitStr "REPORTTOFILETYPE"
  loc_70ADED: FLdRfVar var_21C
  loc_70ADF0: CStr2Ansi
  loc_70ADF1: ILdRf var_21C
  loc_70ADF4: LitStr "GENERAL"
  loc_70ADF7: FLdRfVar var_118
  loc_70ADFA: CStr2Ansi
  loc_70ADFB: ILdRf var_118
  loc_70ADFE: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_70AE03: FStR4 var_138
  loc_70AE06: SetLastSystemError
  loc_70AE07: ILdRf var_138
  loc_70AE0A: CUI1I4
  loc_70AE0C: FStUI1 var_2B2
  loc_70AE10: FFreeStr var_118 = "": var_21C = ""
  loc_70AE19: FLdUI1
  loc_70AE1D: CI4UI1
  loc_70AE1E: CVarI4
  loc_70AE22: PopAdLdVar
  loc_70AE23: ImpAdLdRf MemVar_74C760
  loc_70AE26: NewIfNullPr Formx
  loc_70AE29: VCallAd Control_ID_CrystalReport1
  loc_70AE2C: FStAdFunc var_B4
  loc_70AE2F: FLdPr var_B4
  loc_70AE32: LateIdSt
  loc_70AE37: FFree1Ad var_B4
  loc_70AE3A: LitVarI4
  loc_70AE42: PopAdLdVar
  loc_70AE43: ImpAdLdRf MemVar_74C760
  loc_70AE46: NewIfNullPr Formx
  loc_70AE49: VCallAd Control_ID_CrystalReport1
  loc_70AE4C: FStAdFunc var_B4
  loc_70AE4F: FLdPr var_B4
  loc_70AE52: LateIdSt
  loc_70AE57: FFree1Ad var_B4
  loc_70AE5A: LitVarI2 var_D4, 1
  loc_70AE5F: PopAdLdVar
  loc_70AE60: ImpAdLdRf MemVar_74C760
  loc_70AE63: NewIfNullPr Formx
  loc_70AE66: VCallAd Control_ID_CrystalReport1
  loc_70AE69: FStAdFunc var_B4
  loc_70AE6C: FLdPr var_B4
  loc_70AE6F: LateIdSt
  loc_70AE74: FFree1Ad var_B4
  loc_70AE77: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_70AE7C: LitVarI2 var_C4, 1
  loc_70AE81: LitI4 4
  loc_70AE86: ImpAdLdI4 MemVar_74BEAC
  loc_70AE89: ImpAdCallI2 Mid$(, , )
  loc_70AE8E: FStStrNoPop var_118
  loc_70AE91: LitStr "1"
  loc_70AE94: EqStr
  loc_70AE96: FFree1Str var_118
  loc_70AE99: FFree1Var var_C4 = ""
  loc_70AE9C: BranchF loc_70AEAC
  loc_70AE9F: LitI2_Byte 0
  loc_70AEA1: PopTmpLdAd2 var_132
  loc_70AEA4: ImpAdCallFPR4 Proc_87_1_630780()
  loc_70AEA9: Branch loc_70AEB6
  loc_70AEAC: LitI2_Byte &HFF
  loc_70AEAE: PopTmpLdAd2 var_132
  loc_70AEB1: ImpAdCallFPR4 Proc_87_1_630780()
  loc_70AEB6: ExitProcHresult
  loc_70AEB7: FLdRfVar var_138
  loc_70AEBA: ImpAdCallI2 Err 'rtcErrObj
  loc_70AEBF: FStAdFunc var_B4
  loc_70AEC2: FLdPr var_B4
  loc_70AEC5:  = Formx.Number
  loc_70AECA: ILdRf var_138
  loc_70AECD: FStR4 var_2B8
  loc_70AED0: FFree1Ad var_B4
  loc_70AED3: ILdRf var_2B8
  loc_70AED6: LitI4 &H501B
  loc_70AEDB: EqI4
  loc_70AEDC: BranchF loc_70AF5F
  loc_70AEDF: FLdRfVar var_21C
  loc_70AEE2: LitVar_Missing var_218
  loc_70AEE5: LitVar_Missing var_1F8
  loc_70AEE8: LitVar_Missing var_1D8
  loc_70AEEB: LitVar_Missing var_1B8
  loc_70AEEE: LitVar_Missing var_198
  loc_70AEF1: LitVar_Missing var_178
  loc_70AEF4: LitVar_Missing var_110
  loc_70AEF7: LitVar_Missing var_100
  loc_70AEFA: LitVar_Missing var_F0
  loc_70AEFD: LitVar_Missing var_C4
  loc_70AF00: LitStr "Se ha intentado abrir un archivo inexistente."
  loc_70AF03: FStStrCopy var_118
  loc_70AF06: FLdRfVar var_118
  loc_70AF09: LitI4 &HF
  loc_70AF0E: PopTmpLdAdStr var_138
  loc_70AF11: LitI2_Byte &H1D
  loc_70AF13: PopTmpLdAd2 var_132
  loc_70AF16: ImpAdLdRf MemVar_74C7D0
  loc_70AF19: NewIfNullPr clsMsg
  loc_70AF1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70AF21: LitVar_Missing var_298
  loc_70AF24: LitVar_Missing var_278
  loc_70AF27: LitVar_Missing var_258
  loc_70AF2A: LitI4 1
  loc_70AF2F: FLdZeroAd var_21C
  loc_70AF32: CVarStr var_238
  loc_70AF35: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70AF3A: FFree1Str var_118
  loc_70AF3D: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_70AF5C: Branch loc_70B055
  loc_70AF5F: ILdRf var_2B8
  loc_70AF62: LitI4 &H5028
  loc_70AF67: EqI4
  loc_70AF68: BranchF loc_70AFEB
  loc_70AF6B: FLdRfVar var_21C
  loc_70AF6E: LitVar_Missing var_218
  loc_70AF71: LitVar_Missing var_1F8
  loc_70AF74: LitVar_Missing var_1D8
  loc_70AF77: LitVar_Missing var_1B8
  loc_70AF7A: LitVar_Missing var_198
  loc_70AF7D: LitVar_Missing var_178
  loc_70AF80: LitVar_Missing var_110
  loc_70AF83: LitVar_Missing var_100
  loc_70AF86: LitVar_Missing var_F0
  loc_70AF89: LitVar_Missing var_C4
  loc_70AF8C: LitStr "Ya se ha mandado imprimir el reporte. Aguarde a que finalice la impresión."
  loc_70AF8F: FStStrCopy var_118
  loc_70AF92: FLdRfVar var_118
  loc_70AF95: LitI4 &H10
  loc_70AF9A: PopTmpLdAdStr var_138
  loc_70AF9D: LitI2_Byte &H1D
  loc_70AF9F: PopTmpLdAd2 var_132
  loc_70AFA2: ImpAdLdRf MemVar_74C7D0
  loc_70AFA5: NewIfNullPr clsMsg
  loc_70AFA8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70AFAD: LitVar_Missing var_298
  loc_70AFB0: LitVar_Missing var_278
  loc_70AFB3: LitVar_Missing var_258
  loc_70AFB6: LitI4 1
  loc_70AFBB: FLdZeroAd var_21C
  loc_70AFBE: CVarStr var_238
  loc_70AFC1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70AFC6: FFree1Str var_118
  loc_70AFC9: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_110 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_70AFE8: Branch loc_70B055
  loc_70AFEB: LitVar_Missing var_110
  loc_70AFEE: LitVar_Missing var_100
  loc_70AFF1: LitVar_Missing var_F0
  loc_70AFF4: LitI4 0
  loc_70AFF9: FLdRfVar var_138
  loc_70AFFC: ImpAdCallI2 Err 'rtcErrObj
  loc_70B001: FStAdFunc var_B4
  loc_70B004: FLdPr var_B4
  loc_70B007:  = Err.Number
  loc_70B00C: ILdRf var_138
  loc_70B00F: CStrI4
  loc_70B011: FStStrNoPop var_118
  loc_70B014: LitStr "   "
  loc_70B017: ConcatStr
  loc_70B018: FStStrNoPop var_220
  loc_70B01B: FLdRfVar var_21C
  loc_70B01E: ImpAdCallI2 Err 'rtcErrObj
  loc_70B023: FStAdFunc var_D8
  loc_70B026: FLdPr var_D8
  loc_70B029:  = Err.Description
  loc_70B02E: ILdRf var_21C
  loc_70B031: ConcatStr
  loc_70B032: CVarStr var_C4
  loc_70B035: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70B03A: FFreeStr var_118 = "": var_220 = ""
  loc_70B043: FFreeAd var_B4 = ""
  loc_70B04A: FFreeVar var_C4 = "": var_F0 = "": var_100 = ""
  loc_70B055: ExitProcHresult
End Sub

Private Sub Grid1_Scroll(arg_C, arg_10, arg_14) '651368
  'Data Table: 440CF4
  loc_6510DC: LitStr vbNullString
  loc_6510DF: FStStrCopy var_88
  loc_6510E2: LitStr vbNullString
  loc_6510E5: FStStrCopy var_8C
  loc_6510E8: LitVarI4
  loc_6510F0: PopAdLdVar
  loc_6510F1: FLdPrThis
  loc_6510F2: VCallAd Control_ID_Grid1
  loc_6510F5: FStAdFunc var_A0
  loc_6510F8: FLdPr var_A0
  loc_6510FB: LateIdSt
  loc_651100: FFree1Ad var_A0
  loc_651103: FLdRfVar arg_C
  loc_651106: CDargRef
  loc_65110A: FLdPrThis
  loc_65110B: VCallAd Control_ID_Grid1
  loc_65110E: FStAdFunc var_A0
  loc_651111: FLdPr var_A0
  loc_651114: LateIdSt
  loc_651119: FFree1Ad var_A0
  loc_65111C: FLdPrThis
  loc_65111D: VCallAd Control_ID_Grid1
  loc_651120: FStAdFunc var_A0
  loc_651123: FLdPr var_A0
  loc_651126: LateIdLdVar var_B0 DispID_0 0
  loc_65112D: PopAd
  loc_65112F: FLdPrThis
  loc_651130: VCallAd Control_ID_Grid1
  loc_651133: FStAdFunc var_E4
  loc_651136: FLdPr var_E4
  loc_651139: LateIdLdVar var_F4 DispID_0 0
  loc_651140: PopAd
  loc_651142: FLdPrThis
  loc_651143: VCallAd Control_ID_Grid1
  loc_651146: FStAdFunc var_148
  loc_651149: FLdPr var_148
  loc_65114C: LateIdLdVar var_158 DispID_0 0
  loc_651153: PopAd
  loc_651155: LitVarI2 var_D0, 4
  loc_65115A: LitI4 1
  loc_65115F: FLdRfVar var_B0
  loc_651162: CStrVarTmp
  loc_651163: CVarStr var_C0
  loc_651166: FLdRfVar var_E0
  loc_651169: ImpAdCallFPR4  = Mid(, , )
  loc_65116E: FLdRfVar var_E0
  loc_651171: LitVarI2 var_124, 2
  loc_651176: LitI4 6
  loc_65117B: FLdRfVar var_F4
  loc_65117E: CStrVarTmp
  loc_65117F: CVarStr var_104
  loc_651182: FLdRfVar var_134
  loc_651185: ImpAdCallFPR4  = Mid(, , )
  loc_65118A: FLdRfVar var_134
  loc_65118D: ConcatVar var_144
  loc_651191: LitVarI2 var_188, 2
  loc_651196: LitI4 9
  loc_65119B: FLdRfVar var_158
  loc_65119E: CStrVarTmp
  loc_65119F: CVarStr var_168
  loc_6511A2: FLdRfVar var_198
  loc_6511A5: ImpAdCallFPR4  = Mid(, , )
  loc_6511AA: FLdRfVar var_198
  loc_6511AD: ConcatVar var_1A8
  loc_6511B1: CStrVarTmp
  loc_6511B2: FStStr var_88
  loc_6511B5: FFreeAd var_A0 = "": var_E4 = ""
  loc_6511BE: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = ""
  loc_6511DD: FLdRfVar arg_10
  loc_6511E0: CDargRef
  loc_6511E4: FLdPrThis
  loc_6511E5: VCallAd Control_ID_Grid1
  loc_6511E8: FStAdFunc var_A0
  loc_6511EB: FLdPr var_A0
  loc_6511EE: LateIdSt
  loc_6511F3: FFree1Ad var_A0
  loc_6511F6: FLdPrThis
  loc_6511F7: VCallAd Control_ID_Grid1
  loc_6511FA: FStAdFunc var_A0
  loc_6511FD: FLdPr var_A0
  loc_651200: LateIdLdVar var_B0 DispID_0 0
  loc_651207: PopAd
  loc_651209: FLdPrThis
  loc_65120A: VCallAd Control_ID_Grid1
  loc_65120D: FStAdFunc var_E4
  loc_651210: FLdPr var_E4
  loc_651213: LateIdLdVar var_F4 DispID_0 0
  loc_65121A: PopAd
  loc_65121C: FLdPrThis
  loc_65121D: VCallAd Control_ID_Grid1
  loc_651220: FStAdFunc var_148
  loc_651223: FLdPr var_148
  loc_651226: LateIdLdVar var_158 DispID_0 0
  loc_65122D: PopAd
  loc_65122F: LitVarI2 var_D0, 4
  loc_651234: LitI4 1
  loc_651239: FLdRfVar var_B0
  loc_65123C: CStrVarTmp
  loc_65123D: CVarStr var_C0
  loc_651240: FLdRfVar var_E0
  loc_651243: ImpAdCallFPR4  = Mid(, , )
  loc_651248: FLdRfVar var_E0
  loc_65124B: LitVarI2 var_124, 2
  loc_651250: LitI4 6
  loc_651255: FLdRfVar var_F4
  loc_651258: CStrVarTmp
  loc_651259: CVarStr var_104
  loc_65125C: FLdRfVar var_134
  loc_65125F: ImpAdCallFPR4  = Mid(, , )
  loc_651264: FLdRfVar var_134
  loc_651267: ConcatVar var_144
  loc_65126B: LitVarI2 var_188, 2
  loc_651270: LitI4 9
  loc_651275: FLdRfVar var_158
  loc_651278: CStrVarTmp
  loc_651279: CVarStr var_168
  loc_65127C: FLdRfVar var_198
  loc_65127F: ImpAdCallFPR4  = Mid(, , )
  loc_651284: FLdRfVar var_198
  loc_651287: ConcatVar var_1A8
  loc_65128B: CStrVarTmp
  loc_65128C: FStStr var_8C
  loc_65128F: FFreeAd var_A0 = "": var_E4 = ""
  loc_651298: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = ""
  loc_6512B7: LitVarI4
  loc_6512BF: PopAdLdVar
  loc_6512C0: FLdPrThis
  loc_6512C1: VCallAd Control_ID_Grid1
  loc_6512C4: FStAdFunc var_A0
  loc_6512C7: FLdPr var_A0
  loc_6512CA: LateIdSt
  loc_6512CF: FFree1Ad var_A0
  loc_6512D2: FLdRfVar arg_C
  loc_6512D5: CDargRef
  loc_6512D9: FLdPrThis
  loc_6512DA: VCallAd Control_ID_Grid1
  loc_6512DD: FStAdFunc var_A0
  loc_6512E0: FLdPr var_A0
  loc_6512E3: LateIdSt
  loc_6512E8: FFree1Ad var_A0
  loc_6512EB: ILdRf var_88
  loc_6512EE: FLdPrThis
  loc_6512EF: VCallAd Control_ID_Grid1
  loc_6512F2: FStAdFunc var_A0
  loc_6512F5: FLdPr var_A0
  loc_6512F8: LateIdLdVar var_B0 DispID_0 0
  loc_6512FF: CStrVarTmp
  loc_651300: FStStrNoPop var_1AC
  loc_651303: ConcatStr
  loc_651304: FStStr var_88
  loc_651307: FFree1Str var_1AC
  loc_65130A: FFree1Ad var_A0
  loc_65130D: FFree1Var var_B0 = ""
  loc_651310: FLdRfVar arg_10
  loc_651313: CDargRef
  loc_651317: FLdPrThis
  loc_651318: VCallAd Control_ID_Grid1
  loc_65131B: FStAdFunc var_A0
  loc_65131E: FLdPr var_A0
  loc_651321: LateIdSt
  loc_651326: FFree1Ad var_A0
  loc_651329: ILdRf var_8C
  loc_65132C: FLdPrThis
  loc_65132D: VCallAd Control_ID_Grid1
  loc_651330: FStAdFunc var_A0
  loc_651333: FLdPr var_A0
  loc_651336: LateIdLdVar var_B0 DispID_0 0
  loc_65133D: CStrVarTmp
  loc_65133E: FStStrNoPop var_1AC
  loc_651341: ConcatStr
  loc_651342: FStStr var_8C
  loc_651345: FFree1Str var_1AC
  loc_651348: FFree1Ad var_A0
  loc_65134B: FFree1Var var_B0 = ""
  loc_65134E: ILdRf var_88
  loc_651351: ILdRf var_8C
  loc_651354: GtStr
  loc_651356: BranchF loc_651361
  loc_651359: LitI2_Byte &HFF
  loc_65135B: IStI2 arg_14
  loc_65135E: Branch loc_651366
  loc_651361: LitI2_Byte 1
  loc_651363: IStI2 arg_14
  loc_651366: ExitProcHresult
End Sub

Private Sub Form_Load() '6B5FE8
  'Data Table: 440CF4
  loc_6B5804: LitI2_Byte 0
  loc_6B5806: CR8I2
  loc_6B5807: PopFPR4
  loc_6B5808: FLdPr Me
  loc_6B580B: Me.Top = from_stack_1s
  loc_6B5810: LitI2_Byte 0
  loc_6B5812: CR8I2
  loc_6B5813: PopFPR4
  loc_6B5814: FLdPr Me
  loc_6B5817: Me.Left = from_stack_1s
  loc_6B581C: FLdRfVar var_90
  loc_6B581F: FLdRfVar var_8C
  loc_6B5822: ImpAdLdRf MemVar_7520D4
  loc_6B5825: NewIfNullPr Global
  loc_6B5828:  = Global.Screen
  loc_6B582D: FLdPr var_8C
  loc_6B5830:  = Screen.TwipsPerPixelX
  loc_6B5835: LitI2 800
  loc_6B5838: CR8I2
  loc_6B5839: FLdFPR4 var_90
  loc_6B583C: MulR8
  loc_6B583D: PopFPR4
  loc_6B583E: FLdPr Me
  loc_6B5841: Me.Width = from_stack_1s
  loc_6B5846: FFree1Ad var_8C
  loc_6B5849: FLdRfVar var_90
  loc_6B584C: FLdRfVar var_8C
  loc_6B584F: ImpAdLdRf MemVar_7520D4
  loc_6B5852: NewIfNullPr Global
  loc_6B5855:  = Global.Screen
  loc_6B585A: FLdPr var_8C
  loc_6B585D:  = Screen.TwipsPerPixelX
  loc_6B5862: LitI2 600
  loc_6B5865: CR8I2
  loc_6B5866: FLdFPR4 var_90
  loc_6B5869: MulR8
  loc_6B586A: PopFPR4
  loc_6B586B: FLdPr Me
  loc_6B586E: Me.Height = from_stack_1s
  loc_6B5873: FFree1Ad var_8C
  loc_6B5876: LitI2_Byte 0
  loc_6B5878: FLdPr Me
  loc_6B587B: MemStI2 Imprimir
  loc_6B587E: LitI2_Byte 0
  loc_6B5880: FLdPr Me
  loc_6B5883: MemStI2 global_96
  loc_6B5886: LitStr vbNullString
  loc_6B5889: FLdPr Me
  loc_6B588C: MemStStrCopy
  loc_6B5890: LitVar_FALSE
  loc_6B5894: PopAdLdVar
  loc_6B5895: FLdPr Me
  loc_6B5898: VCallAd Control_ID_verclp
  loc_6B589B: FStAdFunc var_8C
  loc_6B589E: FLdPr var_8C
  loc_6B58A1: LateIdSt
  loc_6B58A6: FFree1Ad var_8C
  loc_6B58A9: LitVar_FALSE
  loc_6B58AD: PopAdLdVar
  loc_6B58AE: FLdPr Me
  loc_6B58B1: VCallAd Control_ID_printclp
  loc_6B58B4: FStAdFunc var_8C
  loc_6B58B7: FLdPr var_8C
  loc_6B58BA: LateIdSt
  loc_6B58BF: FFree1Ad var_8C
  loc_6B58C2: LitI2 4800
  loc_6B58C5: CR8I2
  loc_6B58C6: CVarR4
  loc_6B58CA: PopAdLdVar
  loc_6B58CB: FLdPrThis
  loc_6B58CC: VCallAd Control_ID_SSCommand2
  loc_6B58CF: FStAdFunc var_8C
  loc_6B58D2: FLdPr var_8C
  loc_6B58D5: LateIdSt
  loc_6B58DA: FFree1Ad var_8C
  loc_6B58DD: FLdPr Me
  loc_6B58E0: MemLdStr TipoReporte
  loc_6B58E3: FStStrCopy var_A4
  loc_6B58E6: ILdRf var_A4
  loc_6B58E9: LitStr "C"
  loc_6B58EC: EqStr
  loc_6B58EE: BranchF loc_6B59AC
  loc_6B58F1: FLdRfVar var_1E0
  loc_6B58F4: LitVar_Missing var_1DC
  loc_6B58F7: LitVar_Missing var_1BC
  loc_6B58FA: LitVar_Missing var_19C
  loc_6B58FD: LitVar_Missing var_17C
  loc_6B5900: LitVar_Missing var_15C
  loc_6B5903: LitVar_Missing var_13C
  loc_6B5906: LitVar_Missing var_11C
  loc_6B5909: LitVar_Missing var_FC
  loc_6B590C: LitVar_Missing var_DC
  loc_6B590F: LitVar_Missing var_BC
  loc_6B5912: LitStr "Imprimir Doc."
  loc_6B5915: FStStrCopy var_AC
  loc_6B5918: FLdRfVar var_AC
  loc_6B591B: LitI4 &H18
  loc_6B5920: PopTmpLdAdStr var_90
  loc_6B5923: LitI2_Byte &H1D
  loc_6B5925: PopTmpLdAd2 var_A6
  loc_6B5928: ImpAdLdRf MemVar_74C7D0
  loc_6B592B: NewIfNullPr clsMsg
  loc_6B592E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5933: FLdZeroAd var_1E0
  loc_6B5936: CVarStr var_1F0
  loc_6B5939: PopAdLdVar
  loc_6B593A: FLdPrThis
  loc_6B593B: VCallAd Control_ID_printclp
  loc_6B593E: FStAdFunc var_8C
  loc_6B5941: FLdPr var_8C
  loc_6B5944: LateIdSt
  loc_6B5949: FFree1Str var_AC
  loc_6B594C: FFree1Ad var_8C
  loc_6B594F: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6B5968: LitStr "Documento Legal"
  loc_6B596B: FLdPr Me
  loc_6B596E: Me.Caption = from_stack_1
  loc_6B5973: LitVar_TRUE var_A0
  loc_6B5976: PopAdLdVar
  loc_6B5977: FLdPrThis
  loc_6B5978: VCallAd Control_ID_printclp
  loc_6B597B: FStAdFunc var_8C
  loc_6B597E: FLdPr var_8C
  loc_6B5981: LateIdSt
  loc_6B5986: FFree1Ad var_8C
  loc_6B5989: LitVar_TRUE var_A0
  loc_6B598C: PopAdLdVar
  loc_6B598D: FLdPrThis
  loc_6B598E: VCallAd Control_ID_verclp
  loc_6B5991: FStAdFunc var_8C
  loc_6B5994: FLdPr var_8C
  loc_6B5997: LateIdSt
  loc_6B599C: FFree1Ad var_8C
  loc_6B599F: LitStr "M"
  loc_6B59A2: FLdPr Me
  loc_6B59A5: MemStStrCopy
  loc_6B59A9: Branch loc_6B5E77
  loc_6B59AC: ILdRf var_A4
  loc_6B59AF: LitStr "T"
  loc_6B59B2: EqStr
  loc_6B59B4: BranchF loc_6B5A2F
  loc_6B59B7: FLdRfVar var_1E0
  loc_6B59BA: LitVar_Missing var_1DC
  loc_6B59BD: LitVar_Missing var_1BC
  loc_6B59C0: LitVar_Missing var_19C
  loc_6B59C3: LitVar_Missing var_17C
  loc_6B59C6: LitVar_Missing var_15C
  loc_6B59C9: LitVar_Missing var_13C
  loc_6B59CC: LitVar_Missing var_11C
  loc_6B59CF: LitVar_Missing var_FC
  loc_6B59D2: LitVar_Missing var_DC
  loc_6B59D5: LitVar_Missing var_BC
  loc_6B59D8: LitStr "Reportes de Turnos Anteriores"
  loc_6B59DB: FStStrCopy var_AC
  loc_6B59DE: FLdRfVar var_AC
  loc_6B59E1: LitI4 3
  loc_6B59E6: PopTmpLdAdStr var_90
  loc_6B59E9: LitI2_Byte &H1D
  loc_6B59EB: PopTmpLdAd2 var_A6
  loc_6B59EE: ImpAdLdRf MemVar_74C7D0
  loc_6B59F1: NewIfNullPr clsMsg
  loc_6B59F4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B59F9: ILdRf var_1E0
  loc_6B59FC: FLdPr Me
  loc_6B59FF: Me.Caption = from_stack_1
  loc_6B5A04: FFreeStr var_AC = ""
  loc_6B5A0B: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5A22: LitStr "M"
  loc_6B5A25: FLdPr Me
  loc_6B5A28: MemStStrCopy
  loc_6B5A2C: Branch loc_6B5E77
  loc_6B5A2F: ILdRf var_A4
  loc_6B5A32: LitStr "M"
  loc_6B5A35: EqStr
  loc_6B5A37: BranchF loc_6B5AB2
  loc_6B5A3A: FLdRfVar var_1E0
  loc_6B5A3D: LitVar_Missing var_1DC
  loc_6B5A40: LitVar_Missing var_1BC
  loc_6B5A43: LitVar_Missing var_19C
  loc_6B5A46: LitVar_Missing var_17C
  loc_6B5A49: LitVar_Missing var_15C
  loc_6B5A4C: LitVar_Missing var_13C
  loc_6B5A4F: LitVar_Missing var_11C
  loc_6B5A52: LitVar_Missing var_FC
  loc_6B5A55: LitVar_Missing var_DC
  loc_6B5A58: LitVar_Missing var_BC
  loc_6B5A5B: LitStr "Reportes de Meses Anteriores"
  loc_6B5A5E: FStStrCopy var_AC
  loc_6B5A61: FLdRfVar var_AC
  loc_6B5A64: LitI4 4
  loc_6B5A69: PopTmpLdAdStr var_90
  loc_6B5A6C: LitI2_Byte &H1D
  loc_6B5A6E: PopTmpLdAd2 var_A6
  loc_6B5A71: ImpAdLdRf MemVar_74C7D0
  loc_6B5A74: NewIfNullPr clsMsg
  loc_6B5A77: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5A7C: ILdRf var_1E0
  loc_6B5A7F: FLdPr Me
  loc_6B5A82: Me.Caption = from_stack_1
  loc_6B5A87: FFreeStr var_AC = ""
  loc_6B5A8E: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5AA5: LitStr "A"
  loc_6B5AA8: FLdPr Me
  loc_6B5AAB: MemStStrCopy
  loc_6B5AAF: Branch loc_6B5E77
  loc_6B5AB2: ILdRf var_A4
  loc_6B5AB5: LitStr "D"
  loc_6B5AB8: EqStr
  loc_6B5ABA: BranchF loc_6B5B35
  loc_6B5ABD: FLdRfVar var_1E0
  loc_6B5AC0: LitVar_Missing var_1DC
  loc_6B5AC3: LitVar_Missing var_1BC
  loc_6B5AC6: LitVar_Missing var_19C
  loc_6B5AC9: LitVar_Missing var_17C
  loc_6B5ACC: LitVar_Missing var_15C
  loc_6B5ACF: LitVar_Missing var_13C
  loc_6B5AD2: LitVar_Missing var_11C
  loc_6B5AD5: LitVar_Missing var_FC
  loc_6B5AD8: LitVar_Missing var_DC
  loc_6B5ADB: LitVar_Missing var_BC
  loc_6B5ADE: LitStr "Reportes de Dias Anteriores"
  loc_6B5AE1: FStStrCopy var_AC
  loc_6B5AE4: FLdRfVar var_AC
  loc_6B5AE7: LitI4 5
  loc_6B5AEC: PopTmpLdAdStr var_90
  loc_6B5AEF: LitI2_Byte &H1D
  loc_6B5AF1: PopTmpLdAd2 var_A6
  loc_6B5AF4: ImpAdLdRf MemVar_74C7D0
  loc_6B5AF7: NewIfNullPr clsMsg
  loc_6B5AFA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5AFF: ILdRf var_1E0
  loc_6B5B02: FLdPr Me
  loc_6B5B05: Me.Caption = from_stack_1
  loc_6B5B0A: FFreeStr var_AC = ""
  loc_6B5B11: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5B28: LitStr "T"
  loc_6B5B2B: FLdPr Me
  loc_6B5B2E: MemStStrCopy
  loc_6B5B32: Branch loc_6B5E77
  loc_6B5B35: ILdRf var_A4
  loc_6B5B38: LitStr "R"
  loc_6B5B3B: EqStr
  loc_6B5B3D: BranchF loc_6B5C6C
  loc_6B5B40: LitVarI2 var_BC, 1
  loc_6B5B45: LitI4 4
  loc_6B5B4A: ImpAdLdI4 MemVar_74BEAC
  loc_6B5B4D: ImpAdCallI2 Mid$(, , )
  loc_6B5B52: FStStrNoPop var_AC
  loc_6B5B55: LitStr "1"
  loc_6B5B58: EqStr
  loc_6B5B5A: FFree1Str var_AC
  loc_6B5B5D: FFree1Var var_BC = ""
  loc_6B5B60: BranchF loc_6B5BD1
  loc_6B5B63: FLdRfVar var_1E0
  loc_6B5B66: LitVar_Missing var_1DC
  loc_6B5B69: LitVar_Missing var_1BC
  loc_6B5B6C: LitVar_Missing var_19C
  loc_6B5B6F: LitVar_Missing var_17C
  loc_6B5B72: LitVar_Missing var_15C
  loc_6B5B75: LitVar_Missing var_13C
  loc_6B5B78: LitVar_Missing var_11C
  loc_6B5B7B: LitVar_Missing var_FC
  loc_6B5B7E: LitVar_Missing var_DC
  loc_6B5B81: LitVar_Missing var_BC
  loc_6B5B84: LitStr "Informes de Cierre Red XXI"
  loc_6B5B87: FStStrCopy var_AC
  loc_6B5B8A: FLdRfVar var_AC
  loc_6B5B8D: LitI4 6
  loc_6B5B92: PopTmpLdAdStr var_90
  loc_6B5B95: LitI2_Byte &H1D
  loc_6B5B97: PopTmpLdAd2 var_A6
  loc_6B5B9A: ImpAdLdRf MemVar_74C7D0
  loc_6B5B9D: NewIfNullPr clsMsg
  loc_6B5BA0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5BA5: ILdRf var_1E0
  loc_6B5BA8: FLdPr Me
  loc_6B5BAB: Me.Caption = from_stack_1
  loc_6B5BB0: FFreeStr var_AC = ""
  loc_6B5BB7: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5BCE: Branch loc_6B5C5F
  loc_6B5BD1: LitVarI2 var_BC, 1
  loc_6B5BD6: LitI4 &HC
  loc_6B5BDB: ImpAdLdI4 MemVar_74BEAC
  loc_6B5BDE: ImpAdCallI2 Mid$(, , )
  loc_6B5BE3: FStStrNoPop var_AC
  loc_6B5BE6: LitStr "1"
  loc_6B5BE9: EqStr
  loc_6B5BEB: FFree1Str var_AC
  loc_6B5BEE: FFree1Var var_BC = ""
  loc_6B5BF1: BranchF loc_6B5C5F
  loc_6B5BF4: FLdRfVar var_1E0
  loc_6B5BF7: LitVar_Missing var_1DC
  loc_6B5BFA: LitVar_Missing var_1BC
  loc_6B5BFD: LitVar_Missing var_19C
  loc_6B5C00: LitVar_Missing var_17C
  loc_6B5C03: LitVar_Missing var_15C
  loc_6B5C06: LitVar_Missing var_13C
  loc_6B5C09: LitVar_Missing var_11C
  loc_6B5C0C: LitVar_Missing var_FC
  loc_6B5C0F: LitVar_Missing var_DC
  loc_6B5C12: LitVar_Missing var_BC
  loc_6B5C15: LitStr "Informes de Cierre Esso Conectividad"
  loc_6B5C18: FStStrCopy var_AC
  loc_6B5C1B: FLdRfVar var_AC
  loc_6B5C1E: LitI4 6
  loc_6B5C23: PopTmpLdAdStr var_90
  loc_6B5C26: LitI2_Byte &H1D
  loc_6B5C28: PopTmpLdAd2 var_A6
  loc_6B5C2B: ImpAdLdRf MemVar_74C7D0
  loc_6B5C2E: NewIfNullPr clsMsg
  loc_6B5C31: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5C36: ILdRf var_1E0
  loc_6B5C39: FLdPr Me
  loc_6B5C3C: Me.Caption = from_stack_1
  loc_6B5C41: FFreeStr var_AC = ""
  loc_6B5C48: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5C5F: LitStr "M"
  loc_6B5C62: FLdPr Me
  loc_6B5C65: MemStStrCopy
  loc_6B5C69: Branch loc_6B5E77
  loc_6B5C6C: ILdRf var_A4
  loc_6B5C6F: LitStr "G"
  loc_6B5C72: EqStr
  loc_6B5C74: BranchF loc_6B5D01
  loc_6B5C77: FLdRfVar var_1E0
  loc_6B5C7A: LitVar_Missing var_1DC
  loc_6B5C7D: LitVar_Missing var_1BC
  loc_6B5C80: LitVar_Missing var_19C
  loc_6B5C83: LitVar_Missing var_17C
  loc_6B5C86: LitVar_Missing var_15C
  loc_6B5C89: LitVar_Missing var_13C
  loc_6B5C8C: LitVar_Missing var_11C
  loc_6B5C8F: LitVar_Missing var_FC
  loc_6B5C92: LitVar_Missing var_DC
  loc_6B5C95: LitVar_Missing var_BC
  loc_6B5C98: LitStr "Reporte de Grupos de"
  loc_6B5C9B: FStStrCopy var_AC
  loc_6B5C9E: FLdRfVar var_AC
  loc_6B5CA1: LitI4 7
  loc_6B5CA6: PopTmpLdAdStr var_90
  loc_6B5CA9: LitI2_Byte &H1D
  loc_6B5CAB: PopTmpLdAd2 var_A6
  loc_6B5CAE: ImpAdLdRf MemVar_74C7D0
  loc_6B5CB1: NewIfNullPr clsMsg
  loc_6B5CB4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5CB9: ILdRf var_1E0
  loc_6B5CBC: LitStr " "
  loc_6B5CBF: ConcatStr
  loc_6B5CC0: FStStrNoPop var_1F4
  loc_6B5CC3: ImpAdLdI4 MemVar_74BEE4
  loc_6B5CC6: ConcatStr
  loc_6B5CC7: FStStrNoPop var_1F8
  loc_6B5CCA: FLdPr Me
  loc_6B5CCD: Me.Caption = from_stack_1
  loc_6B5CD2: FFreeStr var_AC = "": var_1E0 = "": var_1F4 = ""
  loc_6B5CDD: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5CF4: LitStr "M"
  loc_6B5CF7: FLdPr Me
  loc_6B5CFA: MemStStrCopy
  loc_6B5CFE: Branch loc_6B5E77
  loc_6B5D01: ILdRf var_A4
  loc_6B5D04: LitStr "B"
  loc_6B5D07: EqStr
  loc_6B5D09: BranchF loc_6B5DCB
  loc_6B5D0C: FLdRfVar var_1E0
  loc_6B5D0F: LitVar_Missing var_1DC
  loc_6B5D12: LitVar_Missing var_1BC
  loc_6B5D15: LitVar_Missing var_19C
  loc_6B5D18: LitVar_Missing var_17C
  loc_6B5D1B: LitVar_Missing var_15C
  loc_6B5D1E: LitVar_Missing var_13C
  loc_6B5D21: LitVar_Missing var_11C
  loc_6B5D24: LitVar_Missing var_FC
  loc_6B5D27: LitVar_Missing var_DC
  loc_6B5D2A: LitVar_Missing var_BC
  loc_6B5D2D: LitStr "Reporte de Débitos Bancarios"
  loc_6B5D30: FStStrCopy var_AC
  loc_6B5D33: FLdRfVar var_AC
  loc_6B5D36: LitI4 &H19
  loc_6B5D3B: PopTmpLdAdStr var_90
  loc_6B5D3E: LitI2_Byte &H1D
  loc_6B5D40: PopTmpLdAd2 var_A6
  loc_6B5D43: ImpAdLdRf MemVar_74C7D0
  loc_6B5D46: NewIfNullPr clsMsg
  loc_6B5D49: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5D4E: ILdRf var_1E0
  loc_6B5D51: FLdPr Me
  loc_6B5D54: Me.Caption = from_stack_1
  loc_6B5D59: FFreeStr var_AC = ""
  loc_6B5D60: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5D77: LitStr "CEM44.INI"
  loc_6B5D7A: FLdRfVar var_1F4
  loc_6B5D7D: CStr2Ansi
  loc_6B5D7E: ILdRf var_1F4
  loc_6B5D81: LitI4 0
  loc_6B5D86: LitStr "debitos"
  loc_6B5D89: FLdRfVar var_1E0
  loc_6B5D8C: CStr2Ansi
  loc_6B5D8D: ILdRf var_1E0
  loc_6B5D90: LitStr "DIAS_A_RESTAR"
  loc_6B5D93: FLdRfVar var_AC
  loc_6B5D96: CStr2Ansi
  loc_6B5D97: ILdRf var_AC
  loc_6B5D9A: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6B5D9F: FStR4 var_90
  loc_6B5DA2: SetLastSystemError
  loc_6B5DA3: ILdRf var_90
  loc_6B5DA6: CI2I4
  loc_6B5DA7: CStrUI1
  loc_6B5DA9: FStStrNoPop var_1F8
  loc_6B5DAC: FLdPr Me
  loc_6B5DAF: MemStStrCopy
  loc_6B5DB3: FFreeStr var_AC = "": var_1E0 = "": var_1F4 = ""
  loc_6B5DBE: LitStr "M"
  loc_6B5DC1: FLdPr Me
  loc_6B5DC4: MemStStrCopy
  loc_6B5DC8: Branch loc_6B5E77
  loc_6B5DCB: ILdRf var_A4
  loc_6B5DCE: LitStr "C"
  loc_6B5DD1: EqStr
  loc_6B5DD3: BranchF loc_6B5E77
  loc_6B5DD6: FLdRfVar var_1E0
  loc_6B5DD9: LitVar_Missing var_1DC
  loc_6B5DDC: LitVar_Missing var_1BC
  loc_6B5DDF: LitVar_Missing var_19C
  loc_6B5DE2: LitVar_Missing var_17C
  loc_6B5DE5: LitVar_Missing var_15C
  loc_6B5DE8: LitVar_Missing var_13C
  loc_6B5DEB: LitVar_Missing var_11C
  loc_6B5DEE: LitVar_Missing var_FC
  loc_6B5DF1: LitVar_Missing var_DC
  loc_6B5DF4: LitVar_Missing var_BC
  loc_6B5DF7: LitStr "Cuenta Liquido Producto"
  loc_6B5DFA: FStStrCopy var_AC
  loc_6B5DFD: FLdRfVar var_AC
  loc_6B5E00: LitI4 2
  loc_6B5E05: PopTmpLdAdStr var_90
  loc_6B5E08: LitI2_Byte &H1D
  loc_6B5E0A: PopTmpLdAd2 var_A6
  loc_6B5E0D: ImpAdLdRf MemVar_74C7D0
  loc_6B5E10: NewIfNullPr clsMsg
  loc_6B5E13: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5E18: ILdRf var_1E0
  loc_6B5E1B: FLdPr Me
  loc_6B5E1E: Me.Caption = from_stack_1
  loc_6B5E23: FFreeStr var_AC = ""
  loc_6B5E2A: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6B5E41: LitVar_TRUE var_A0
  loc_6B5E44: PopAdLdVar
  loc_6B5E45: FLdPrThis
  loc_6B5E46: VCallAd Control_ID_printclp
  loc_6B5E49: FStAdFunc var_8C
  loc_6B5E4C: FLdPr var_8C
  loc_6B5E4F: LateIdSt
  loc_6B5E54: FFree1Ad var_8C
  loc_6B5E57: LitVar_TRUE var_A0
  loc_6B5E5A: PopAdLdVar
  loc_6B5E5B: FLdPrThis
  loc_6B5E5C: VCallAd Control_ID_verclp
  loc_6B5E5F: FStAdFunc var_8C
  loc_6B5E62: FLdPr var_8C
  loc_6B5E65: LateIdSt
  loc_6B5E6A: FFree1Ad var_8C
  loc_6B5E6D: LitStr "M"
  loc_6B5E70: FLdPr Me
  loc_6B5E73: MemStStrCopy
  loc_6B5E77: FLdRfVar var_1E0
  loc_6B5E7A: LitVar_Missing var_1DC
  loc_6B5E7D: LitVar_Missing var_1BC
  loc_6B5E80: LitVar_Missing var_19C
  loc_6B5E83: LitVar_Missing var_17C
  loc_6B5E86: LitVar_Missing var_15C
  loc_6B5E89: LitVar_Missing var_13C
  loc_6B5E8C: LitVar_Missing var_11C
  loc_6B5E8F: LitVar_Missing var_FC
  loc_6B5E92: LitVar_Missing var_DC
  loc_6B5E95: LitVar_Missing var_BC
  loc_6B5E98: LitStr "Periodo anterior"
  loc_6B5E9B: FStStrCopy var_AC
  loc_6B5E9E: FLdRfVar var_AC
  loc_6B5EA1: LitI4 &H12
  loc_6B5EA6: PopTmpLdAdStr var_90
  loc_6B5EA9: LitI2_Byte &H1D
  loc_6B5EAB: PopTmpLdAd2 var_A6
  loc_6B5EAE: ImpAdLdRf MemVar_74C7D0
  loc_6B5EB1: NewIfNullPr clsMsg
  loc_6B5EB4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5EB9: FLdZeroAd var_1E0
  loc_6B5EBC: CVarStr var_1F0
  loc_6B5EBF: PopAdLdVar
  loc_6B5EC0: FLdPrThis
  loc_6B5EC1: VCallAd Control_ID_sscMesAnterior
  loc_6B5EC4: FStAdFunc var_8C
  loc_6B5EC7: FLdPr var_8C
  loc_6B5ECA: LateIdSt
  loc_6B5ECF: FFree1Str var_AC
  loc_6B5ED2: FFree1Ad var_8C
  loc_6B5ED5: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6B5EEE: FLdRfVar var_1E0
  loc_6B5EF1: LitVar_Missing var_1DC
  loc_6B5EF4: LitVar_Missing var_1BC
  loc_6B5EF7: LitVar_Missing var_19C
  loc_6B5EFA: LitVar_Missing var_17C
  loc_6B5EFD: LitVar_Missing var_15C
  loc_6B5F00: LitVar_Missing var_13C
  loc_6B5F03: LitVar_Missing var_11C
  loc_6B5F06: LitVar_Missing var_FC
  loc_6B5F09: LitVar_Missing var_DC
  loc_6B5F0C: LitVar_Missing var_BC
  loc_6B5F0F: LitStr "Continuar"
  loc_6B5F12: FStStrCopy var_AC
  loc_6B5F15: FLdRfVar var_AC
  loc_6B5F18: LitI4 &H13
  loc_6B5F1D: PopTmpLdAdStr var_90
  loc_6B5F20: LitI2_Byte &H1D
  loc_6B5F22: PopTmpLdAd2 var_A6
  loc_6B5F25: ImpAdLdRf MemVar_74C7D0
  loc_6B5F28: NewIfNullPr clsMsg
  loc_6B5F2B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5F30: FLdZeroAd var_1E0
  loc_6B5F33: CVarStr var_1F0
  loc_6B5F36: PopAdLdVar
  loc_6B5F37: FLdPrThis
  loc_6B5F38: VCallAd Control_ID_SSCommand2
  loc_6B5F3B: FStAdFunc var_8C
  loc_6B5F3E: FLdPr var_8C
  loc_6B5F41: LateIdSt
  loc_6B5F46: FFree1Str var_AC
  loc_6B5F49: FFree1Ad var_8C
  loc_6B5F4C: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6B5F65: FLdRfVar var_1E0
  loc_6B5F68: LitVar_Missing var_1DC
  loc_6B5F6B: LitVar_Missing var_1BC
  loc_6B5F6E: LitVar_Missing var_19C
  loc_6B5F71: LitVar_Missing var_17C
  loc_6B5F74: LitVar_Missing var_15C
  loc_6B5F77: LitVar_Missing var_13C
  loc_6B5F7A: LitVar_Missing var_11C
  loc_6B5F7D: LitVar_Missing var_FC
  loc_6B5F80: LitVar_Missing var_DC
  loc_6B5F83: LitVar_Missing var_BC
  loc_6B5F86: LitStr "Periodo siguiente"
  loc_6B5F89: FStStrCopy var_AC
  loc_6B5F8C: FLdRfVar var_AC
  loc_6B5F8F: LitI4 &H14
  loc_6B5F94: PopTmpLdAdStr var_90
  loc_6B5F97: LitI2_Byte &H1D
  loc_6B5F99: PopTmpLdAd2 var_A6
  loc_6B5F9C: ImpAdLdRf MemVar_74C7D0
  loc_6B5F9F: NewIfNullPr clsMsg
  loc_6B5FA2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5FA7: FLdZeroAd var_1E0
  loc_6B5FAA: CVarStr var_1F0
  loc_6B5FAD: PopAdLdVar
  loc_6B5FAE: FLdPrThis
  loc_6B5FAF: VCallAd Control_ID_sscMesSiguiente
  loc_6B5FB2: FStAdFunc var_8C
  loc_6B5FB5: FLdPr var_8C
  loc_6B5FB8: LateIdSt
  loc_6B5FBD: FFree1Str var_AC
  loc_6B5FC0: FFree1Ad var_8C
  loc_6B5FC3: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6B5FDC: LitI2_Byte 0
  loc_6B5FDE: FLdPr Me
  loc_6B5FE1: MemStI2 global_156
  loc_6B5FE4: ExitProcHresult
  loc_6B5FE5: ILdRf arg_1F2
End Sub

Private Sub Form_Activate() '67D844
  'Data Table: 440CF4
  loc_67D3AC: FLdPr Me
  loc_67D3AF: MemLdI2 global_156
  loc_67D3B2: BranchF loc_67D3B6
  loc_67D3B5: ExitProcHresult
  loc_67D3B6: FLdPr Me
  loc_67D3B9: MemLdRfVar from_stack_1.TipoReporte
  loc_67D3BC: CVarRef
  loc_67D3C1: LitVarStr var_A8, "T"
  loc_67D3C6: FStVarCopyObj var_B8
  loc_67D3C9: FLdRfVar var_B8
  loc_67D3CC: FLdPr Me
  loc_67D3CF: MemLdStr TipoReporte
  loc_67D3D2: LitStr "G"
  loc_67D3D5: EqStr
  loc_67D3D7: CVarBoolI2 var_98
  loc_67D3DB: FLdRfVar var_D8
  loc_67D3DE: ImpAdCallFPR4  = IIf(, , )
  loc_67D3E3: FLdRfVar var_E2
  loc_67D3E6: FLdRfVar var_88
  loc_67D3E9: FLdPr Me
  loc_67D3EC: MemLdStr global_92
  loc_67D3EF: FLdRfVar var_D8
  loc_67D3F2: CStrVarVal var_E0
  loc_67D3F6: FLdRfVar var_DC
  loc_67D3F9: ImpAdLdRf MemVar_74C760
  loc_67D3FC: NewIfNullPr Formx
  loc_67D3FF: from_stack_1v = Formx.global_4589716Get()
  loc_67D404: FLdPr var_DC
  loc_67D407: Call 0.Method_arg_328 ()
  loc_67D40C: FLdI2 var_E2
  loc_67D40F: NotI4
  loc_67D410: FFree1Str var_E0
  loc_67D413: FFree1Ad var_DC
  loc_67D416: FFreeVar var_98 = "": var_B8 = ""
  loc_67D41F: BranchF loc_67D44E
  loc_67D422: FLdRfVar var_B8
  loc_67D425: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67D42A: FLdRfVar var_B8
  loc_67D42D: CBoolVarNull
  loc_67D42F: FFree1Var var_B8 = ""
  loc_67D432: BranchF loc_67D44B
  loc_67D435: ILdRf Me
  loc_67D438: FStAdNoPop
  loc_67D43C: ImpAdLdRf MemVar_7520D4
  loc_67D43F: NewIfNullPr Global
  loc_67D442: Global.Unload from_stack_1
  loc_67D447: FFree1Ad var_DC
  loc_67D44A: ExitProcHresult
  loc_67D44B: Branch loc_67D3B6
  loc_67D44E: LitVar_FALSE
  loc_67D452: PopAdLdVar
  loc_67D453: FLdPrThis
  loc_67D454: VCallAd Control_ID_sscMesSiguiente
  loc_67D457: FStAdFunc var_DC
  loc_67D45A: FLdPr var_DC
  loc_67D45D: LateIdSt
  loc_67D462: FFree1Ad var_DC
  loc_67D465: LitVar_FALSE
  loc_67D469: PopAdLdVar
  loc_67D46A: FLdPrThis
  loc_67D46B: VCallAd Control_ID_sscMesAnterior
  loc_67D46E: FStAdFunc var_DC
  loc_67D471: FLdPr var_DC
  loc_67D474: LateIdSt
  loc_67D479: FFree1Ad var_DC
  loc_67D47C: ILdRf var_88
  loc_67D47F: LitStr "0"
  loc_67D482: NeStr
  loc_67D484: BranchF loc_67D4C6
  loc_67D487: ILdRf var_88
  loc_67D48A: from_stack_2v = Proc_100_59_619C0C(from_stack_1v)
  loc_67D48F: LitI4 0
  loc_67D494: FLdPr Me
  loc_67D497: MemLdStr global_144
  loc_67D49A: Ary1LdPr
  loc_67D49B: MemLdStr global_0
  loc_67D49E: FLdPr Me
  loc_67D4A1: MemStStrCopy
  loc_67D4A5: LitI4 0
  loc_67D4AA: FLdPr Me
  loc_67D4AD: MemLdStr global_144
  loc_67D4B0: Ary1LdPr
  loc_67D4B1: MemLdStr global_4
  loc_67D4B4: FLdPr Me
  loc_67D4B7: MemStStrCopy
  loc_67D4BB: LitI2_Byte 0
  loc_67D4BD: FLdPr Me
  loc_67D4C0: MemStI2 global_148
  loc_67D4C3: Branch loc_67D4CE
  loc_67D4C6: LitI2_Byte &HFF
  loc_67D4C8: FLdPr Me
  loc_67D4CB: MemStI2 global_148
  loc_67D4CE: FLdPr Me
  loc_67D4D1: MemLdI2 global_148
  loc_67D4D4: LitI2_Byte 0
  loc_67D4D6: GeI2
  loc_67D4D7: BranchF loc_67D7AF
  loc_67D4DA: LitI2_Byte 0
  loc_67D4DC: PopTmpLdAd2 var_E2
  loc_67D4DF: ImpAdCallI2 Proc_53_4_718EF4()
  loc_67D4E4: NotI4
  loc_67D4E5: BranchF loc_67D4FE
  loc_67D4E8: ILdRf Me
  loc_67D4EB: FStAdNoPop
  loc_67D4EF: ImpAdLdRf MemVar_7520D4
  loc_67D4F2: NewIfNullPr Global
  loc_67D4F5: Global.Unload from_stack_1
  loc_67D4FA: FFree1Ad var_DC
  loc_67D4FD: ExitProcHresult
  loc_67D4FE: LitVar_FALSE
  loc_67D502: PopAdLdVar
  loc_67D503: FLdPrThis
  loc_67D504: VCallAd Control_ID_PanelImpresion
  loc_67D507: FStAdFunc var_DC
  loc_67D50A: FLdPr var_DC
  loc_67D50D: LateIdSt
  loc_67D512: FFree1Ad var_DC
  loc_67D515: FLdRfVar var_B8
  loc_67D518: from_stack_1v = Proc_100_47_694DD0()
  loc_67D51D: FLdRfVar var_B8
  loc_67D520: NotVar var_D8
  loc_67D524: CBoolVarNull
  loc_67D526: FFree1Var var_B8 = ""
  loc_67D529: BranchF loc_67D5DC
  loc_67D52C: FLdRfVar var_1DC
  loc_67D52F: LitVar_Missing var_1D8
  loc_67D532: LitVar_Missing var_1B8
  loc_67D535: LitVar_Missing var_198
  loc_67D538: LitVar_Missing var_178
  loc_67D53B: LitVar_Missing var_158
  loc_67D53E: LitVar_Missing var_138
  loc_67D541: LitVar_Missing var_118
  loc_67D544: LitVar_Missing var_F8
  loc_67D547: LitVar_Missing var_D8
  loc_67D54A: LitVar_Missing var_B8
  loc_67D54D: LitStr "No existen reportes en el periodo"
  loc_67D550: FStStrCopy var_E0
  loc_67D553: FLdRfVar var_E0
  loc_67D556: LitI4 1
  loc_67D55B: PopTmpLdAdStr var_E8
  loc_67D55E: LitI2_Byte &H1D
  loc_67D560: PopTmpLdAd2 var_E2
  loc_67D563: ImpAdLdRf MemVar_74C7D0
  loc_67D566: NewIfNullPr clsMsg
  loc_67D569: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67D56E: LitVar_Missing var_24C
  loc_67D571: LitVar_Missing var_22C
  loc_67D574: LitVar_Missing var_20C
  loc_67D577: LitI4 0
  loc_67D57C: FLdZeroAd var_1DC
  loc_67D57F: CVarStr var_1EC
  loc_67D582: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67D587: FFree1Str var_E0
  loc_67D58A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_20C = "": var_22C = ""
  loc_67D5A9: FLdPrThis
  loc_67D5AA: VCallAd Control_ID_sscMesAnterior
  loc_67D5AD: FStAdFunc var_DC
  loc_67D5B0: FLdPr var_DC
  loc_67D5B3: LateIdLdVar var_B8 DispID_7 -32767
  loc_67D5BA: CBoolVar
  loc_67D5BC: NotI4
  loc_67D5BD: FFree1Ad var_DC
  loc_67D5C0: FFree1Var var_B8 = ""
  loc_67D5C3: BranchF loc_67D5DC
  loc_67D5C6: ILdRf Me
  loc_67D5C9: FStAdNoPop
  loc_67D5CD: ImpAdLdRf MemVar_7520D4
  loc_67D5D0: NewIfNullPr Global
  loc_67D5D3: Global.Unload from_stack_1
  loc_67D5D8: FFree1Ad var_DC
  loc_67D5DB: ExitProcHresult
  loc_67D5DC: FLdPr Me
  loc_67D5DF: MemLdStr global_144
  loc_67D5E2: LitI2_Byte 1
  loc_67D5E4: FnUBound
  loc_67D5E6: LitI4 0
  loc_67D5EB: GtI4
  loc_67D5EC: BranchF loc_67D691
  loc_67D5EF: LitVar_TRUE var_98
  loc_67D5F2: PopAdLdVar
  loc_67D5F3: FLdPrThis
  loc_67D5F4: VCallAd Control_ID_sscMesAnterior
  loc_67D5F7: FStAdFunc var_DC
  loc_67D5FA: FLdPr var_DC
  loc_67D5FD: LateIdSt
  loc_67D602: FFree1Ad var_DC
  loc_67D605: FLdPr Me
  loc_67D608: MemLdStr global_152
  loc_67D60B: LitStr " - ["
  loc_67D60E: ConcatStr
  loc_67D60F: FStStrNoPop var_250
  loc_67D612: FLdRfVar var_1DC
  loc_67D615: LitVar_Missing var_1D8
  loc_67D618: LitVar_Missing var_1B8
  loc_67D61B: LitVar_Missing var_198
  loc_67D61E: LitVar_Missing var_178
  loc_67D621: LitVar_Missing var_158
  loc_67D624: LitVar_Missing var_138
  loc_67D627: LitVar_Missing var_118
  loc_67D62A: LitVar_Missing var_F8
  loc_67D62D: LitVar_Missing var_D8
  loc_67D630: LitVar_Missing var_B8
  loc_67D633: LitStr "Período"
  loc_67D636: FStStrCopy var_E0
  loc_67D639: FLdRfVar var_E0
  loc_67D63C: LitI4 &H15
  loc_67D641: PopTmpLdAdStr var_E8
  loc_67D644: LitI2_Byte &H1D
  loc_67D646: PopTmpLdAd2 var_E2
  loc_67D649: ImpAdLdRf MemVar_74C7D0
  loc_67D64C: NewIfNullPr clsMsg
  loc_67D64F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67D654: ILdRf var_1DC
  loc_67D657: ConcatStr
  loc_67D658: FStStrNoPop var_254
  loc_67D65B: LitStr " "
  loc_67D65E: ConcatStr
  loc_67D65F: FStStrNoPop var_258
  loc_67D662: FLdPr Me
  loc_67D665: Me.Caption = from_stack_1
  loc_67D66A: FFreeStr var_E0 = "": var_250 = "": var_1DC = "": var_254 = ""
  loc_67D677: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_67D68E: Branch loc_67D731
  loc_67D691: LitVar_FALSE
  loc_67D695: PopAdLdVar
  loc_67D696: FLdPrThis
  loc_67D697: VCallAd Control_ID_sscMesAnterior
  loc_67D69A: FStAdFunc var_DC
  loc_67D69D: FLdPr var_DC
  loc_67D6A0: LateIdSt
  loc_67D6A5: FFree1Ad var_DC
  loc_67D6A8: FLdPr Me
  loc_67D6AB: MemLdStr global_152
  loc_67D6AE: LitStr " - ["
  loc_67D6B1: ConcatStr
  loc_67D6B2: FStStrNoPop var_250
  loc_67D6B5: FLdRfVar var_1DC
  loc_67D6B8: LitVar_Missing var_1D8
  loc_67D6BB: LitVar_Missing var_1B8
  loc_67D6BE: LitVar_Missing var_198
  loc_67D6C1: LitVar_Missing var_178
  loc_67D6C4: LitVar_Missing var_158
  loc_67D6C7: LitVar_Missing var_138
  loc_67D6CA: LitVar_Missing var_118
  loc_67D6CD: LitVar_Missing var_F8
  loc_67D6D0: LitVar_Missing var_D8
  loc_67D6D3: LitVar_Missing var_B8
  loc_67D6D6: LitStr "Período Único"
  loc_67D6D9: FStStrCopy var_E0
  loc_67D6DC: FLdRfVar var_E0
  loc_67D6DF: LitI4 &H16
  loc_67D6E4: PopTmpLdAdStr var_E8
  loc_67D6E7: LitI2_Byte &H1D
  loc_67D6E9: PopTmpLdAd2 var_E2
  loc_67D6EC: ImpAdLdRf MemVar_74C7D0
  loc_67D6EF: NewIfNullPr clsMsg
  loc_67D6F2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67D6F7: ILdRf var_1DC
  loc_67D6FA: ConcatStr
  loc_67D6FB: FStStrNoPop var_254
  loc_67D6FE: LitStr " "
  loc_67D701: ConcatStr
  loc_67D702: FStStrNoPop var_258
  loc_67D705: FLdPr Me
  loc_67D708: Me.Caption = from_stack_1
  loc_67D70D: FFreeStr var_E0 = "": var_250 = "": var_1DC = "": var_254 = ""
  loc_67D71A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_67D731: FLdRfVar var_E0
  loc_67D734: FLdPr Me
  loc_67D737:  = Me.Caption
  loc_67D73C: ILdRf var_E0
  loc_67D73F: FLdRfVar var_1DC
  loc_67D742: FLdPr Me
  loc_67D745: MemLdStr global_88
  loc_67D748: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_67D74D: ILdRf var_1DC
  loc_67D750: ConcatStr
  loc_67D751: FStStrNoPop var_250
  loc_67D754: LitStr "-"
  loc_67D757: ConcatStr
  loc_67D758: FStStrNoPop var_258
  loc_67D75B: FLdRfVar var_254
  loc_67D75E: FLdPr Me
  loc_67D761: MemLdStr global_84
  loc_67D764: from_stack_2v = Proc_100_60_5F92A4(from_stack_1v)
  loc_67D769: ILdRf var_254
  loc_67D76C: ConcatStr
  loc_67D76D: FStStrNoPop var_25C
  loc_67D770: LitStr "]"
  loc_67D773: ConcatStr
  loc_67D774: FStStrNoPop var_260
  loc_67D777: FLdPr Me
  loc_67D77A: Me.Caption = from_stack_1
  loc_67D77F: FFreeStr var_E0 = "": var_1DC = "": var_250 = "": var_258 = "": var_254 = "": var_25C = ""
  loc_67D790: FLdPr Me
  loc_67D793: MemLdI2 global_96
  loc_67D796: NotI4
  loc_67D797: BranchF loc_67D7AC
  loc_67D79A: Call InicioGrilla()
  loc_67D79F: Call CargaGrilla()
  loc_67D7A4: LitI2_Byte &HFF
  loc_67D7A6: FLdPr Me
  loc_67D7A9: MemStI2 global_96
  loc_67D7AC: Branch loc_67D841
  loc_67D7AF: FLdRfVar var_1DC
  loc_67D7B2: LitVar_Missing var_1D8
  loc_67D7B5: LitVar_Missing var_1B8
  loc_67D7B8: LitVar_Missing var_198
  loc_67D7BB: LitVar_Missing var_178
  loc_67D7BE: LitVar_Missing var_158
  loc_67D7C1: LitVar_Missing var_138
  loc_67D7C4: LitVar_Missing var_118
  loc_67D7C7: LitVar_Missing var_F8
  loc_67D7CA: LitVar_Missing var_D8
  loc_67D7CD: LitVar_Missing var_B8
  loc_67D7D0: LitStr "No existen reportes"
  loc_67D7D3: FStStrCopy var_E0
  loc_67D7D6: FLdRfVar var_E0
  loc_67D7D9: LitI4 &H17
  loc_67D7DE: PopTmpLdAdStr var_E8
  loc_67D7E1: LitI2_Byte &H1D
  loc_67D7E3: PopTmpLdAd2 var_E2
  loc_67D7E6: ImpAdLdRf MemVar_74C7D0
  loc_67D7E9: NewIfNullPr clsMsg
  loc_67D7EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67D7F1: LitVar_Missing var_24C
  loc_67D7F4: LitVar_Missing var_22C
  loc_67D7F7: LitVar_Missing var_20C
  loc_67D7FA: LitI4 &H40
  loc_67D7FF: FLdZeroAd var_1DC
  loc_67D802: CVarStr var_1EC
  loc_67D805: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67D80A: FFree1Str var_E0
  loc_67D80D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_20C = "": var_22C = ""
  loc_67D82C: ILdRf Me
  loc_67D82F: FStAdNoPop
  loc_67D833: ImpAdLdRf MemVar_7520D4
  loc_67D836: NewIfNullPr Global
  loc_67D839: Global.Unload from_stack_1
  loc_67D83E: FFree1Ad var_DC
  loc_67D841: ExitProcHresult
End Sub

Public Function TipoReporteGet() '441768
  TipoReporteGet = TipoReporte
End Function

Public Sub TipoReportePut(Value) '441777
  TipoReporte = Value
End Sub

Public Function SoloFechaGet() '441786
  SoloFechaGet = SoloFecha
End Function

Public Sub SoloFechaPut(Value) '441795
  SoloFecha = Value
End Sub

Public Function RangoFechaGet() '4417A4
  RangoFechaGet = RangoFecha
End Function

Public Sub RangoFechaPut(Value) '4417B3
  RangoFecha = Value
End Sub

Public Function DBaseGet() '4417C2
  DBaseGet = DBase
End Function

Public Sub DBasePut(Value) '4417D1
  DBase = Value
End Sub

Public Sub DBaseSet(Value) '4417E0
  DBase = Value
End Sub

Public Function ImprimirGet() '4417EF
  ImprimirGet = Imprimir
End Function

Public Sub ImprimirPut(Value) '4417FE
  Imprimir = Value
End Sub

Public Function ClpParamGet() '44180D
  ClpParamGet = ClpParam
End Function

Public Sub ClpParamPut(Value) '44181C
  ClpParam = Value
End Sub

Public Function OldfilePConsignGet() '44182B
  OldfilePConsignGet = OldfilePConsign
End Function

Public Sub OldfilePConsignPut(Value) '44183A
  OldfilePConsign = Value
End Sub

Public Function ArmarReporteAnexoIII(sValor) '633DC0
  'Data Table: 440CF4
  loc_633C18: OnErrorGoto loc_633D2F
  loc_633C1B: FLdRfVar var_AA
  loc_633C1E: LitStr "\reporte.mdb"
  loc_633C21: FStStrCopy var_A8
  loc_633C24: FLdRfVar var_A8
  loc_633C27: from_stack_2v = AbrirBD(from_stack_1v)
  loc_633C2C: FLdI2 var_AA
  loc_633C2F: FFree1Str var_A8
  loc_633C32: BranchF loc_633D29
  loc_633C35: LitI2_Byte &HFF
  loc_633C37: FStI2 var_86
  loc_633C3A: LitI2_Byte 1
  loc_633C3C: CR8I2
  loc_633C3D: FStFPR8 var_A4
  loc_633C40: FLdRfVar var_AA
  loc_633C43: LitStr "AnexoConectividad"
  loc_633C46: FStStrCopy var_A8
  loc_633C49: FLdRfVar var_A8
  loc_633C4C: from_stack_2v = BorrarBD(from_stack_1v)
  loc_633C51: FLdI2 var_AA
  loc_633C54: FFree1Str var_A8
  loc_633C57: BranchF loc_633D1B
  loc_633C5A: LitVarI2 var_DC, 4
  loc_633C5F: FLdFPR8 var_A4
  loc_633C62: CI4R8
  loc_633C63: ILdRf sValor
  loc_633C66: CVarRef
  loc_633C6B: FLdRfVar var_EC
  loc_633C6E: ImpAdCallFPR4  = Mid(, , )
  loc_633C73: FLdRfVar var_EC
  loc_633C76: LitVarStr var_FC, "TR01"
  loc_633C7B: HardType
  loc_633C7C: EqVarBool
  loc_633C7E: FFreeVar var_DC = ""
  loc_633C85: BranchF loc_633D12
  loc_633C88: FLdFPR8 var_A4
  loc_633C8B: LitI2_Byte &H1C
  loc_633C8D: CR8I2
  loc_633C8E: AddR8
  loc_633C8F: FStFPR8 var_A4
  loc_633C92: LitVarI2 var_DC, 4
  loc_633C97: FLdFPR8 var_A4
  loc_633C9A: CI4R8
  loc_633C9B: ILdRf sValor
  loc_633C9E: CVarRef
  loc_633CA3: FLdRfVar var_EC
  loc_633CA6: ImpAdCallFPR4  = Mid(, , )
  loc_633CAB: FLdRfVar var_EC
  loc_633CAE: LitVarStr var_FC, "TR02"
  loc_633CB3: HardType
  loc_633CB4: EqVarBool
  loc_633CB6: FFreeVar var_DC = ""
  loc_633CBD: BranchF loc_633D0F
  loc_633CC0: LitVarI2 var_DC, 53
  loc_633CC5: FLdFPR8 var_A4
  loc_633CC8: CI4R8
  loc_633CC9: ILdRf sValor
  loc_633CCC: CVarRef
  loc_633CD1: FLdRfVar var_EC
  loc_633CD4: ImpAdCallFPR4  = Mid(, , )
  loc_633CD9: FLdRfVar var_EC
  loc_633CDC: CStrVarTmp
  loc_633CDD: FStStr var_9C
  loc_633CE0: FFreeVar var_DC = ""
  loc_633CE7: FLdRfVar var_AA
  loc_633CEA: FLdRfVar var_9C
  loc_633CED: from_stack_2v = PorcesarDatosAnexo(from_stack_1v)
  loc_633CF2: FLdI2 var_AA
  loc_633CF5: NotI4
  loc_633CF6: BranchF loc_633CFE
  loc_633CF9: LitI2_Byte 0
  loc_633CFB: FStI2 var_86
  loc_633CFE: FLdFPR8 var_A4
  loc_633D01: LitI2_Byte &H35
  loc_633D03: CR8I2
  loc_633D04: AddR8
  loc_633D05: LitI2_Byte 2
  loc_633D07: CR8I2
  loc_633D08: AddR8
  loc_633D09: FStFPR8 var_A4
  loc_633D0C: Branch loc_633C92
  loc_633D0F: Branch loc_633D18
  loc_633D12: ExitProcCbHresult
  loc_633D18: Branch loc_633D21
  loc_633D1B: ExitProcCbHresult
  loc_633D21: FLdRfVar var_AA
  loc_633D24: from_stack_1v = CerrarBD()
  loc_633D29: ExitProcCbHresult
  loc_633D2F: FLdRfVar var_AA
  loc_633D32: from_stack_1v = CerrarBD()
  loc_633D37: FLdRfVar var_1F4
  loc_633D3A: LitVar_Missing var_1F0
  loc_633D3D: LitVar_Missing var_1D0
  loc_633D40: LitVar_Missing var_1B0
  loc_633D43: LitVar_Missing var_190
  loc_633D46: LitVar_Missing var_170
  loc_633D49: LitVar_Missing var_150
  loc_633D4C: LitVar_Missing var_130
  loc_633D4F: LitVar_Missing var_10C
  loc_633D52: LitVar_Missing var_EC
  loc_633D55: LitVar_Missing var_DC
  loc_633D58: LitStr "Error al armar el reporte de conetividad"
  loc_633D5B: FStStrCopy var_A8
  loc_633D5E: FLdRfVar var_A8
  loc_633D61: LitI4 &H22
  loc_633D66: PopTmpLdAdStr var_110
  loc_633D69: LitI2_Byte &H1D
  loc_633D6B: PopTmpLdAd2 var_AA
  loc_633D6E: ImpAdLdRf MemVar_74C7D0
  loc_633D71: NewIfNullPr clsMsg
  loc_633D74: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_633D79: LitVar_Missing var_264
  loc_633D7C: LitVar_Missing var_244
  loc_633D7F: LitVar_Missing var_224
  loc_633D82: LitI4 &H10
  loc_633D87: FLdZeroAd var_1F4
  loc_633D8A: CVarStr var_204
  loc_633D8D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_633D92: FFree1Str var_A8
  loc_633D95: FFreeVar var_DC = "": var_EC = "": var_10C = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_204 = "": var_224 = "": var_244 = ""
  loc_633DB4: LitI2_Byte 0
  loc_633DB6: FStI2 var_86
  loc_633DB9: ExitProcCbHresult
End Function

Public Sub InicioGrilla() '62E99C
  'Data Table: 440CF4
  loc_62E7E4: LitVarI4
  loc_62E7EC: PopAdLdVar
  loc_62E7ED: FLdPrThis
  loc_62E7EE: VCallAd Control_ID_Grid1
  loc_62E7F1: FStAdFunc var_98
  loc_62E7F4: FLdPr var_98
  loc_62E7F7: LateIdSt
  loc_62E7FC: FFree1Ad var_98
  loc_62E7FF: LitVarI4
  loc_62E807: PopAdLdVar
  loc_62E808: FLdPrThis
  loc_62E809: VCallAd Control_ID_Grid1
  loc_62E80C: FStAdFunc var_98
  loc_62E80F: FLdPr var_98
  loc_62E812: LateIdSt
  loc_62E817: FFree1Ad var_98
  loc_62E81A: LitVarI4
  loc_62E822: PopAdLdVar
  loc_62E823: FLdPrThis
  loc_62E824: VCallAd Control_ID_Grid1
  loc_62E827: FStAdFunc var_98
  loc_62E82A: FLdPr var_98
  loc_62E82D: LateIdSt
  loc_62E832: FFree1Ad var_98
  loc_62E835: LitVarI4
  loc_62E83D: PopAdLdVar
  loc_62E83E: LitVar_FALSE
  loc_62E842: PopAdLdVar
  loc_62E843: FLdPrThis
  loc_62E844: VCallAd Control_ID_Grid1
  loc_62E847: FStAdFunc var_98
  loc_62E84A: FLdPr var_98
  loc_62E84D: LateIdCallSt
  loc_62E855: FFree1Ad var_98
  loc_62E858: LitVarI4
  loc_62E860: PopAdLdVar
  loc_62E861: LitVar_FALSE
  loc_62E865: PopAdLdVar
  loc_62E866: FLdPrThis
  loc_62E867: VCallAd Control_ID_Grid1
  loc_62E86A: FStAdFunc var_98
  loc_62E86D: FLdPr var_98
  loc_62E870: LateIdCallSt
  loc_62E878: FFree1Ad var_98
  loc_62E87B: LitVarI4
  loc_62E883: PopAdLdVar
  loc_62E884: LitVar_FALSE
  loc_62E888: PopAdLdVar
  loc_62E889: FLdPrThis
  loc_62E88A: VCallAd Control_ID_Grid1
  loc_62E88D: FStAdFunc var_98
  loc_62E890: FLdPr var_98
  loc_62E893: LateIdCallSt
  loc_62E89B: FFree1Ad var_98
  loc_62E89E: LitVarI4
  loc_62E8A6: PopAdLdVar
  loc_62E8A7: LitVar_FALSE
  loc_62E8AB: PopAdLdVar
  loc_62E8AC: FLdPrThis
  loc_62E8AD: VCallAd Control_ID_Grid1
  loc_62E8B0: FStAdFunc var_98
  loc_62E8B3: FLdPr var_98
  loc_62E8B6: LateIdCallSt
  loc_62E8BE: FFree1Ad var_98
  loc_62E8C1: LitVarI4
  loc_62E8C9: PopAdLdVar
  loc_62E8CA: LitVarI2 var_A8, 1
  loc_62E8CF: PopAdLdVar
  loc_62E8D0: FLdPrThis
  loc_62E8D1: VCallAd Control_ID_Grid1
  loc_62E8D4: FStAdFunc var_98
  loc_62E8D7: FLdPr var_98
  loc_62E8DA: LateIdCallSt
  loc_62E8E2: FFree1Ad var_98
  loc_62E8E5: LitVarI4
  loc_62E8ED: PopAdLdVar
  loc_62E8EE: LitVarI2 var_A8, 1
  loc_62E8F3: PopAdLdVar
  loc_62E8F4: FLdPrThis
  loc_62E8F5: VCallAd Control_ID_Grid1
  loc_62E8F8: FStAdFunc var_98
  loc_62E8FB: FLdPr var_98
  loc_62E8FE: LateIdCallSt
  loc_62E906: FFree1Ad var_98
  loc_62E909: LitVarI4
  loc_62E911: PopAdLdVar
  loc_62E912: LitVarI2 var_A8, 1
  loc_62E917: PopAdLdVar
  loc_62E918: FLdPrThis
  loc_62E919: VCallAd Control_ID_Grid1
  loc_62E91C: FStAdFunc var_98
  loc_62E91F: FLdPr var_98
  loc_62E922: LateIdCallSt
  loc_62E92A: FFree1Ad var_98
  loc_62E92D: LitVarI4
  loc_62E935: PopAdLdVar
  loc_62E936: LitVarI2 var_A8, 1
  loc_62E93B: PopAdLdVar
  loc_62E93C: FLdPrThis
  loc_62E93D: VCallAd Control_ID_Grid1
  loc_62E940: FStAdFunc var_98
  loc_62E943: FLdPr var_98
  loc_62E946: LateIdCallSt
  loc_62E94E: FFree1Ad var_98
  loc_62E951: LitVarStr var_94, "Arial"
  loc_62E956: PopAdLdVar
  loc_62E957: FLdPrThis
  loc_62E958: VCallAd Control_ID_Grid1
  loc_62E95B: FStAdFunc var_98
  loc_62E95E: FLdPr var_98
  loc_62E961: LateIdLdVar var_B8 DispID_-512 -1
  loc_62E968: CastAdVar Me
  loc_62E96C: FStAdFunc var_BC
  loc_62E96F: FLdPr var_BC
  loc_62E972: LateIdSt
  loc_62E977: FFreeAd var_98 = ""
  loc_62E97E: FFree1Var var_B8 = ""
  loc_62E981: LitI2_Byte &HE
  loc_62E983: CR8I2
  loc_62E984: CVarR4
  loc_62E988: PopAdLdVar
  loc_62E989: FLdPrThis
  loc_62E98A: VCallAd Control_ID_Grid1
  loc_62E98D: FStAdFunc var_98
  loc_62E990: FLdPr var_98
  loc_62E993: LateIdSt
  loc_62E998: FFree1Ad var_98
  loc_62E99B: ExitProcHresult
End Sub

Public Sub CargaGrilla() '6E5A6C
  'Data Table: 440CF4
  loc_6E4E20: FLdPrThis
  loc_6E4E21: VCallAd Control_ID_Grid1
  loc_6E4E24: FStAdFunc var_9C
  loc_6E4E27: FLdPr var_9C
  loc_6E4E2A: LateIdCall
  loc_6E4E32: FFree1Ad var_9C
  loc_6E4E35: LitVar_FALSE
  loc_6E4E39: PopAdLdVar
  loc_6E4E3A: FLdPrThis
  loc_6E4E3B: VCallAd Control_ID_Grid1
  loc_6E4E3E: FStAdFunc var_9C
  loc_6E4E41: FLdPr var_9C
  loc_6E4E44: LateIdSt
  loc_6E4E49: FFree1Ad var_9C
  loc_6E4E4C: FLdPr Me
  loc_6E4E4F: MemLdStr TipoReporte
  loc_6E4E52: LitStr "B"
  loc_6E4E55: EqStr
  loc_6E4E57: BranchF loc_6E4F6C
  loc_6E4E5A: LitStr "<    "
  loc_6E4E5D: FLdRfVar var_1EC
  loc_6E4E60: LitVar_Missing var_1E8
  loc_6E4E63: LitVar_Missing var_1C8
  loc_6E4E66: LitVar_Missing var_1A8
  loc_6E4E69: LitVar_Missing var_188
  loc_6E4E6C: LitVar_Missing var_168
  loc_6E4E6F: LitVar_Missing var_148
  loc_6E4E72: LitVar_Missing var_128
  loc_6E4E75: LitVar_Missing var_108
  loc_6E4E78: LitVar_Missing var_E8
  loc_6E4E7B: LitVar_Missing var_C8
  loc_6E4E7E: LitStr "Fecha del Débito"
  loc_6E4E81: FStStrCopy var_B8
  loc_6E4E84: FLdRfVar var_B8
  loc_6E4E87: LitI4 &H24
  loc_6E4E8C: PopTmpLdAdStr var_B4
  loc_6E4E8F: LitI2_Byte &H1D
  loc_6E4E91: PopTmpLdAd2 var_AE
  loc_6E4E94: ImpAdLdRf MemVar_74C7D0
  loc_6E4E97: NewIfNullPr clsMsg
  loc_6E4E9A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4E9F: ILdRf var_1EC
  loc_6E4EA2: ConcatStr
  loc_6E4EA3: FStStrNoPop var_1F0
  loc_6E4EA6: LitStr "   | | | |<   "
  loc_6E4EA9: ConcatStr
  loc_6E4EAA: FStStrNoPop var_344
  loc_6E4EAD: FLdRfVar var_340
  loc_6E4EB0: LitVar_Missing var_33C
  loc_6E4EB3: LitVar_Missing var_31C
  loc_6E4EB6: LitVar_Missing var_2FC
  loc_6E4EB9: LitVar_Missing var_2DC
  loc_6E4EBC: LitVar_Missing var_2BC
  loc_6E4EBF: LitVar_Missing var_29C
  loc_6E4EC2: LitVar_Missing var_27C
  loc_6E4EC5: LitVar_Missing var_25C
  loc_6E4EC8: LitVar_Missing var_23C
  loc_6E4ECB: LitVar_Missing var_21C
  loc_6E4ECE: LitStr "Nro. DBT"
  loc_6E4ED1: FStStrCopy var_1FC
  loc_6E4ED4: FLdRfVar var_1FC
  loc_6E4ED7: LitI4 &H25
  loc_6E4EDC: PopTmpLdAdStr var_1F8
  loc_6E4EDF: LitI2_Byte &H1D
  loc_6E4EE1: PopTmpLdAd2 var_1F2
  loc_6E4EE4: ImpAdLdRf MemVar_74C7D0
  loc_6E4EE7: NewIfNullPr clsMsg
  loc_6E4EEA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4EEF: ILdRf var_340
  loc_6E4EF2: ConcatStr
  loc_6E4EF3: FStStrNoPop var_348
  loc_6E4EF6: LitStr "                 "
  loc_6E4EF9: ConcatStr
  loc_6E4EFA: CVarStr var_358
  loc_6E4EFD: PopAdLdVar
  loc_6E4EFE: FLdPrThis
  loc_6E4EFF: VCallAd Control_ID_Grid1
  loc_6E4F02: FStAdFunc var_9C
  loc_6E4F05: FLdPr var_9C
  loc_6E4F08: LateIdSt
  loc_6E4F0D: FFreeStr var_B8 = "": var_1EC = "": var_1F0 = "": var_1FC = "": var_344 = "": var_340 = ""
  loc_6E4F1E: FFree1Ad var_9C
  loc_6E4F21: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_6E4F4E: LitVarI4
  loc_6E4F56: PopAdLdVar
  loc_6E4F57: FLdPrThis
  loc_6E4F58: VCallAd Control_ID_Grid1
  loc_6E4F5B: FStAdFunc var_9C
  loc_6E4F5E: FLdPr var_9C
  loc_6E4F61: LateIdSt
  loc_6E4F66: FFree1Ad var_9C
  loc_6E4F69: Branch loc_6E5269
  loc_6E4F6C: FLdPr Me
  loc_6E4F6F: MemLdStr TipoReporte
  loc_6E4F72: LitStr "C"
  loc_6E4F75: EqStr
  loc_6E4F77: BranchF loc_6E508C
  loc_6E4F7A: LitVarI4
  loc_6E4F82: PopAdLdVar
  loc_6E4F83: FLdPrThis
  loc_6E4F84: VCallAd Control_ID_Grid1
  loc_6E4F87: FStAdFunc var_9C
  loc_6E4F8A: FLdPr var_9C
  loc_6E4F8D: LateIdSt
  loc_6E4F92: FFree1Ad var_9C
  loc_6E4F95: LitStr "<         "
  loc_6E4F98: FLdRfVar var_1EC
  loc_6E4F9B: LitVar_Missing var_1E8
  loc_6E4F9E: LitVar_Missing var_1C8
  loc_6E4FA1: LitVar_Missing var_1A8
  loc_6E4FA4: LitVar_Missing var_188
  loc_6E4FA7: LitVar_Missing var_168
  loc_6E4FAA: LitVar_Missing var_148
  loc_6E4FAD: LitVar_Missing var_128
  loc_6E4FB0: LitVar_Missing var_108
  loc_6E4FB3: LitVar_Missing var_E8
  loc_6E4FB6: LitVar_Missing var_C8
  loc_6E4FB9: LitStr "Fecha"
  loc_6E4FBC: FStStrCopy var_B8
  loc_6E4FBF: FLdRfVar var_B8
  loc_6E4FC2: LitI4 &H26
  loc_6E4FC7: PopTmpLdAdStr var_B4
  loc_6E4FCA: LitI2_Byte &H1D
  loc_6E4FCC: PopTmpLdAd2 var_AE
  loc_6E4FCF: ImpAdLdRf MemVar_74C7D0
  loc_6E4FD2: NewIfNullPr clsMsg
  loc_6E4FD5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4FDA: ILdRf var_1EC
  loc_6E4FDD: ConcatStr
  loc_6E4FDE: FStStrNoPop var_1F0
  loc_6E4FE1: LitStr "         ||||<   "
  loc_6E4FE4: ConcatStr
  loc_6E4FE5: FStStrNoPop var_344
  loc_6E4FE8: FLdRfVar var_340
  loc_6E4FEB: LitVar_Missing var_33C
  loc_6E4FEE: LitVar_Missing var_31C
  loc_6E4FF1: LitVar_Missing var_2FC
  loc_6E4FF4: LitVar_Missing var_2DC
  loc_6E4FF7: LitVar_Missing var_2BC
  loc_6E4FFA: LitVar_Missing var_29C
  loc_6E4FFD: LitVar_Missing var_27C
  loc_6E5000: LitVar_Missing var_25C
  loc_6E5003: LitVar_Missing var_23C
  loc_6E5006: LitVar_Missing var_21C
  loc_6E5009: LitStr "Nro. DOC."
  loc_6E500C: FStStrCopy var_1FC
  loc_6E500F: FLdRfVar var_1FC
  loc_6E5012: LitI4 &H28
  loc_6E5017: PopTmpLdAdStr var_1F8
  loc_6E501A: LitI2_Byte &H1D
  loc_6E501C: PopTmpLdAd2 var_1F2
  loc_6E501F: ImpAdLdRf MemVar_74C7D0
  loc_6E5022: NewIfNullPr clsMsg
  loc_6E5025: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E502A: ILdRf var_340
  loc_6E502D: ConcatStr
  loc_6E502E: FStStrNoPop var_348
  loc_6E5031: LitStr "                         "
  loc_6E5034: ConcatStr
  loc_6E5035: CVarStr var_358
  loc_6E5038: PopAdLdVar
  loc_6E5039: FLdPrThis
  loc_6E503A: VCallAd Control_ID_Grid1
  loc_6E503D: FStAdFunc var_9C
  loc_6E5040: FLdPr var_9C
  loc_6E5043: LateIdSt
  loc_6E5048: FFreeStr var_B8 = "": var_1EC = "": var_1F0 = "": var_1FC = "": var_344 = "": var_340 = ""
  loc_6E5059: FFree1Ad var_9C
  loc_6E505C: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_6E5089: Branch loc_6E5269
  loc_6E508C: FLdPr Me
  loc_6E508F: MemLdStr TipoReporte
  loc_6E5092: LitStr "A"
  loc_6E5095: EqStr
  loc_6E5097: BranchF loc_6E509D
  loc_6E509A: Branch loc_6E5269
  loc_6E509D: LitStr "<    "
  loc_6E50A0: FLdRfVar var_1EC
  loc_6E50A3: LitVar_Missing var_1E8
  loc_6E50A6: LitVar_Missing var_1C8
  loc_6E50A9: LitVar_Missing var_1A8
  loc_6E50AC: LitVar_Missing var_188
  loc_6E50AF: LitVar_Missing var_168
  loc_6E50B2: LitVar_Missing var_148
  loc_6E50B5: LitVar_Missing var_128
  loc_6E50B8: LitVar_Missing var_108
  loc_6E50BB: LitVar_Missing var_E8
  loc_6E50BE: LitVar_Missing var_C8
  loc_6E50C1: LitStr "Fecha Apertura"
  loc_6E50C4: FStStrCopy var_B8
  loc_6E50C7: FLdRfVar var_B8
  loc_6E50CA: LitI4 &H26
  loc_6E50CF: PopTmpLdAdStr var_B4
  loc_6E50D2: LitI2_Byte &H1D
  loc_6E50D4: PopTmpLdAd2 var_AE
  loc_6E50D7: ImpAdLdRf MemVar_74C7D0
  loc_6E50DA: NewIfNullPr clsMsg
  loc_6E50DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E50E2: ILdRf var_1EC
  loc_6E50E5: ConcatStr
  loc_6E50E6: FStStrNoPop var_1F0
  loc_6E50E9: LitStr "     |<   "
  loc_6E50EC: ConcatStr
  loc_6E50ED: FStStrNoPop var_344
  loc_6E50F0: FLdRfVar var_340
  loc_6E50F3: LitVar_Missing var_33C
  loc_6E50F6: LitVar_Missing var_31C
  loc_6E50F9: LitVar_Missing var_2FC
  loc_6E50FC: LitVar_Missing var_2DC
  loc_6E50FF: LitVar_Missing var_2BC
  loc_6E5102: LitVar_Missing var_29C
  loc_6E5105: LitVar_Missing var_27C
  loc_6E5108: LitVar_Missing var_25C
  loc_6E510B: LitVar_Missing var_23C
  loc_6E510E: LitVar_Missing var_21C
  loc_6E5111: LitStr "Hora Apertura"
  loc_6E5114: FStStrCopy var_1FC
  loc_6E5117: FLdRfVar var_1FC
  loc_6E511A: LitI4 &H29
  loc_6E511F: PopTmpLdAdStr var_1F8
  loc_6E5122: LitI2_Byte &H1D
  loc_6E5124: PopTmpLdAd2 var_1F2
  loc_6E5127: ImpAdLdRf MemVar_74C7D0
  loc_6E512A: NewIfNullPr clsMsg
  loc_6E512D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E5132: ILdRf var_340
  loc_6E5135: ConcatStr
  loc_6E5136: FStStrNoPop var_348
  loc_6E5139: LitStr "               |<"
  loc_6E513C: ConcatStr
  loc_6E513D: FStStrNoPop var_49C
  loc_6E5140: FLdRfVar var_498
  loc_6E5143: LitVar_Missing var_494
  loc_6E5146: LitVar_Missing var_474
  loc_6E5149: LitVar_Missing var_454
  loc_6E514C: LitVar_Missing var_434
  loc_6E514F: LitVar_Missing var_414
  loc_6E5152: LitVar_Missing var_3F4
  loc_6E5155: LitVar_Missing var_3D4
  loc_6E5158: LitVar_Missing var_3B4
  loc_6E515B: LitVar_Missing var_394
  loc_6E515E: LitVar_Missing var_358
  loc_6E5161: LitStr "Fecha Cierre"
  loc_6E5164: FStStrCopy var_364
  loc_6E5167: FLdRfVar var_364
  loc_6E516A: LitI4 &H27
  loc_6E516F: PopTmpLdAdStr var_360
  loc_6E5172: LitI2_Byte &H1D
  loc_6E5174: PopTmpLdAd2 var_35A
  loc_6E5177: ImpAdLdRf MemVar_74C7D0
  loc_6E517A: NewIfNullPr clsMsg
  loc_6E517D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E5182: ILdRf var_498
  loc_6E5185: ConcatStr
  loc_6E5186: FStStrNoPop var_4A0
  loc_6E5189: LitStr "         |<"
  loc_6E518C: ConcatStr
  loc_6E518D: FStStrNoPop var_5F4
  loc_6E5190: FLdRfVar var_5F0
  loc_6E5193: LitVar_Missing var_5EC
  loc_6E5196: LitVar_Missing var_5CC
  loc_6E5199: LitVar_Missing var_5AC
  loc_6E519C: LitVar_Missing var_58C
  loc_6E519F: LitVar_Missing var_56C
  loc_6E51A2: LitVar_Missing var_54C
  loc_6E51A5: LitVar_Missing var_52C
  loc_6E51A8: LitVar_Missing var_50C
  loc_6E51AB: LitVar_Missing var_4EC
  loc_6E51AE: LitVar_Missing var_4CC
  loc_6E51B1: LitStr "Hora Cierre"
  loc_6E51B4: FStStrCopy var_4AC
  loc_6E51B7: FLdRfVar var_4AC
  loc_6E51BA: LitI4 &H2A
  loc_6E51BF: PopTmpLdAdStr var_4A8
  loc_6E51C2: LitI2_Byte &H1D
  loc_6E51C4: PopTmpLdAd2 var_4A2
  loc_6E51C7: ImpAdLdRf MemVar_74C7D0
  loc_6E51CA: NewIfNullPr clsMsg
  loc_6E51CD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E51D2: ILdRf var_5F0
  loc_6E51D5: ConcatStr
  loc_6E51D6: FStStrNoPop var_5F8
  loc_6E51D9: LitStr "              "
  loc_6E51DC: ConcatStr
  loc_6E51DD: CVarStr var_608
  loc_6E51E0: PopAdLdVar
  loc_6E51E1: FLdPrThis
  loc_6E51E2: VCallAd Control_ID_Grid1
  loc_6E51E5: FStAdFunc var_9C
  loc_6E51E8: FLdPr var_9C
  loc_6E51EB: LateIdSt
  loc_6E51F0: FFreeStr var_B8 = "": var_1EC = "": var_1F0 = "": var_1FC = "": var_344 = "": var_340 = "": var_348 = "": var_364 = "": var_49C = "": var_498 = "": var_4A0 = "": var_4AC = "": var_5F4 = "": var_5F0 = ""
  loc_6E5211: FFree1Ad var_9C
  loc_6E5214: FFreeVar var_4CC = "": var_4EC = "": var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5EC = "": var_608 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_358 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_434 = "": var_454 = "": var_474 = ""
  loc_6E5269: LitVarI4
  loc_6E5271: PopAdLdVar
  loc_6E5272: FLdPrThis
  loc_6E5273: VCallAd Control_ID_Grid1
  loc_6E5276: FStAdFunc var_9C
  loc_6E5279: FLdPr var_9C
  loc_6E527C: LateIdSt
  loc_6E5281: FFree1Ad var_9C
  loc_6E5284: LitVarI4
  loc_6E528C: PopAdLdVar
  loc_6E528D: LitI4 4
  loc_6E5292: CI2I4
  loc_6E5293: CVarI2 var_D8
  loc_6E5296: PopAdLdVar
  loc_6E5297: FLdPrThis
  loc_6E5298: VCallAd Control_ID_Grid1
  loc_6E529B: FStAdFunc var_9C
  loc_6E529E: FLdPr var_9C
  loc_6E52A1: LateIdCallSt
  loc_6E52A9: FFree1Ad var_9C
  loc_6E52AC: LitVarI4
  loc_6E52B4: PopAdLdVar
  loc_6E52B5: LitI4 4
  loc_6E52BA: CI2I4
  loc_6E52BB: CVarI2 var_D8
  loc_6E52BE: PopAdLdVar
  loc_6E52BF: FLdPrThis
  loc_6E52C0: VCallAd Control_ID_Grid1
  loc_6E52C3: FStAdFunc var_9C
  loc_6E52C6: FLdPr var_9C
  loc_6E52C9: LateIdCallSt
  loc_6E52D1: FFree1Ad var_9C
  loc_6E52D4: LitVarI4
  loc_6E52DC: PopAdLdVar
  loc_6E52DD: LitI4 4
  loc_6E52E2: CI2I4
  loc_6E52E3: CVarI2 var_D8
  loc_6E52E6: PopAdLdVar
  loc_6E52E7: FLdPrThis
  loc_6E52E8: VCallAd Control_ID_Grid1
  loc_6E52EB: FStAdFunc var_9C
  loc_6E52EE: FLdPr var_9C
  loc_6E52F1: LateIdCallSt
  loc_6E52F9: FFree1Ad var_9C
  loc_6E52FC: LitVarI4
  loc_6E5304: PopAdLdVar
  loc_6E5305: LitI4 4
  loc_6E530A: CI2I4
  loc_6E530B: CVarI2 var_D8
  loc_6E530E: PopAdLdVar
  loc_6E530F: FLdPrThis
  loc_6E5310: VCallAd Control_ID_Grid1
  loc_6E5313: FStAdFunc var_9C
  loc_6E5316: FLdPr var_9C
  loc_6E5319: LateIdCallSt
  loc_6E5321: FFree1Ad var_9C
  loc_6E5324: FLdPr Me
  loc_6E5327: MemLdStr TipoReporte
  loc_6E532A: LitStr "C"
  loc_6E532D: EqStr
  loc_6E532F: FLdPr Me
  loc_6E5332: MemLdStr TipoReporte
  loc_6E5335: LitStr "B"
  loc_6E5338: EqStr
  loc_6E533A: OrI4
  loc_6E533B: BranchF loc_6E5366
  loc_6E533E: LitVarI4
  loc_6E5346: PopAdLdVar
  loc_6E5347: LitI4 4
  loc_6E534C: CI2I4
  loc_6E534D: CVarI2 var_D8
  loc_6E5350: PopAdLdVar
  loc_6E5351: FLdPrThis
  loc_6E5352: VCallAd Control_ID_Grid1
  loc_6E5355: FStAdFunc var_9C
  loc_6E5358: FLdPr var_9C
  loc_6E535B: LateIdCallSt
  loc_6E5363: FFree1Ad var_9C
  loc_6E5366: LitI4 1
  loc_6E536B: FLdPr Me
  loc_6E536E: MemLdStr global_80
  loc_6E5371: Ary1LdPr
  loc_6E5372: MemLdStr global_0
  loc_6E5375: LitStr vbNullString
  loc_6E5378: NeStr
  loc_6E537A: BranchF loc_6E5790
  loc_6E537D: FLdPr Me
  loc_6E5380: MemLdStr TipoReporte
  loc_6E5383: LitStr "C"
  loc_6E5386: EqStr
  loc_6E5388: BranchF loc_6E554A
  loc_6E538B: LitI2_Byte 1
  loc_6E538D: FLdRfVar var_88
  loc_6E5390: FLdPr Me
  loc_6E5393: MemLdStr global_80
  loc_6E5396: LitI2_Byte 1
  loc_6E5398: FnUBound
  loc_6E539A: CI2I4
  loc_6E539B: ForI2 var_60C
  loc_6E53A1: FLdI2 var_88
  loc_6E53A4: CI4UI1
  loc_6E53A5: FLdPr Me
  loc_6E53A8: MemLdStr global_80
  loc_6E53AB: Ary1LdPr
  loc_6E53AC: MemLdStr global_0
  loc_6E53AF: CVarStr var_AC
  loc_6E53B2: LitI4 9
  loc_6E53B7: FLdRfVar var_C8
  loc_6E53BA: ImpAdCallFPR4  = Chr()
  loc_6E53BF: FLdRfVar var_C8
  loc_6E53C2: ConcatVar var_E8
  loc_6E53C6: LitVarStr var_D8, "          "
  loc_6E53CB: ConcatVar var_108
  loc_6E53CF: FLdI2 var_88
  loc_6E53D2: CI4UI1
  loc_6E53D3: FLdPr Me
  loc_6E53D6: MemLdStr global_80
  loc_6E53D9: Ary1LdPr
  loc_6E53DA: MemLdStr global_8
  loc_6E53DD: CVarStr var_F8
  loc_6E53E0: ConcatVar var_128
  loc_6E53E4: CStrVarTmp
  loc_6E53E5: FStStr var_98
  loc_6E53E8: FFreeVar var_C8 = "": var_E8 = "": var_108 = ""
  loc_6E53F3: ILdRf var_98
  loc_6E53F6: CVarStr var_AC
  loc_6E53F9: LitI4 9
  loc_6E53FE: FLdRfVar var_C8
  loc_6E5401: ImpAdCallFPR4  = Chr()
  loc_6E5406: FLdRfVar var_C8
  loc_6E5409: ConcatVar var_E8
  loc_6E540D: FLdI2 var_88
  loc_6E5410: CI4UI1
  loc_6E5411: FLdPr Me
  loc_6E5414: MemLdStr global_80
  loc_6E5417: Ary1LdPr
  loc_6E5418: MemLdStr global_4
  loc_6E541B: CVarStr var_D8
  loc_6E541E: ConcatVar var_108
  loc_6E5422: LitI4 9
  loc_6E5427: FLdRfVar var_128
  loc_6E542A: ImpAdCallFPR4  = Chr()
  loc_6E542F: FLdRfVar var_128
  loc_6E5432: ConcatVar var_148
  loc_6E5436: LitVarStr var_F8, "          "
  loc_6E543B: ConcatVar var_168
  loc_6E543F: FLdI2 var_88
  loc_6E5442: CI4UI1
  loc_6E5443: FLdPr Me
  loc_6E5446: MemLdStr global_80
  loc_6E5449: Ary1LdPr
  loc_6E544A: MemLdStr global_12
  loc_6E544D: CVarStr var_118
  loc_6E5450: ConcatVar var_188
  loc_6E5454: CStrVarTmp
  loc_6E5455: FStStr var_98
  loc_6E5458: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_6E5469: LitI4 2
  loc_6E546E: FLdI2 var_88
  loc_6E5471: CI4UI1
  loc_6E5472: FLdPr Me
  loc_6E5475: MemLdStr global_80
  loc_6E5478: AryLock
  loc_6E547B: Ary1LdPr
  loc_6E547C: MemLdRfVar from_stack_1.global_16
  loc_6E547F: CVarRef
  loc_6E5484: FLdRfVar var_C8
  loc_6E5487: ImpAdCallFPR4  = Right(, )
  loc_6E548C: AryUnlock
  loc_6E548F: FLdRfVar var_C8
  loc_6E5492: LitVarStr var_D8, "AR"
  loc_6E5497: HardType
  loc_6E5498: EqVar var_E8
  loc_6E549C: NotVar var_108
  loc_6E54A0: CBoolVarNull
  loc_6E54A2: FFree1Var var_C8 = ""
  loc_6E54A5: BranchF loc_6E54E7
  loc_6E54A8: ILdRf var_98
  loc_6E54AB: CVarStr var_AC
  loc_6E54AE: LitI4 9
  loc_6E54B3: FLdRfVar var_C8
  loc_6E54B6: ImpAdCallFPR4  = Chr()
  loc_6E54BB: FLdRfVar var_C8
  loc_6E54BE: ConcatVar var_E8
  loc_6E54C2: FLdI2 var_88
  loc_6E54C5: CI4UI1
  loc_6E54C6: FLdPr Me
  loc_6E54C9: MemLdStr global_80
  loc_6E54CC: Ary1LdPr
  loc_6E54CD: MemLdStr global_16
  loc_6E54D0: CVarStr var_D8
  loc_6E54D3: ConcatVar var_108
  loc_6E54D7: CStrVarTmp
  loc_6E54D8: FStStr var_98
  loc_6E54DB: FFreeVar var_C8 = "": var_E8 = ""
  loc_6E54E4: Branch loc_6E5523
  loc_6E54E7: ILdRf var_98
  loc_6E54EA: CVarStr var_AC
  loc_6E54ED: LitI4 9
  loc_6E54F2: FLdRfVar var_C8
  loc_6E54F5: ImpAdCallFPR4  = Chr()
  loc_6E54FA: FLdRfVar var_C8
  loc_6E54FD: ConcatVar var_E8
  loc_6E5501: FLdI2 var_88
  loc_6E5504: CI4UI1
  loc_6E5505: FLdPr Me
  loc_6E5508: MemLdStr global_80
  loc_6E550B: Ary1LdPr
  loc_6E550C: MemLdStr global_16
  loc_6E550F: CVarStr var_D8
  loc_6E5512: ConcatVar var_108
  loc_6E5516: CStrVarTmp
  loc_6E5517: FStStr var_98
  loc_6E551A: FFreeVar var_C8 = "": var_E8 = ""
  loc_6E5523: FLdRfVar var_98
  loc_6E5526: CDargRef
  loc_6E552A: FLdPrThis
  loc_6E552B: VCallAd Control_ID_Grid1
  loc_6E552E: FStAdFunc var_9C
  loc_6E5531: FLdPr var_9C
  loc_6E5534: LateIdCall
  loc_6E553C: FFree1Ad var_9C
  loc_6E553F: FLdRfVar var_88
  loc_6E5542: NextI2 var_60C, loc_6E53A1
  loc_6E5547: Branch loc_6E5790
  loc_6E554A: FLdPr Me
  loc_6E554D: MemLdStr TipoReporte
  loc_6E5550: LitStr "B"
  loc_6E5553: EqStr
  loc_6E5555: BranchF loc_6E56A4
  loc_6E5558: LitI2_Byte 1
  loc_6E555A: FLdRfVar var_88
  loc_6E555D: FLdPr Me
  loc_6E5560: MemLdStr global_80
  loc_6E5563: LitI2_Byte 1
  loc_6E5565: FnUBound
  loc_6E5567: CI2I4
  loc_6E5568: ForI2 var_614
  loc_6E556E: FLdI2 var_88
  loc_6E5571: CI4UI1
  loc_6E5572: FLdPr Me
  loc_6E5575: MemLdStr global_80
  loc_6E5578: Ary1LdPr
  loc_6E5579: MemLdStr global_0
  loc_6E557C: CVarStr var_AC
  loc_6E557F: LitI4 9
  loc_6E5584: FLdRfVar var_C8
  loc_6E5587: ImpAdCallFPR4  = Chr()
  loc_6E558C: FLdRfVar var_C8
  loc_6E558F: ConcatVar var_E8
  loc_6E5593: LitVarStr var_D8, "          "
  loc_6E5598: ConcatVar var_108
  loc_6E559C: FLdI2 var_88
  loc_6E559F: CI4UI1
  loc_6E55A0: FLdPr Me
  loc_6E55A3: MemLdStr global_80
  loc_6E55A6: Ary1LdPr
  loc_6E55A7: MemLdStr global_8
  loc_6E55AA: CVarStr var_F8
  loc_6E55AD: ConcatVar var_128
  loc_6E55B1: CStrVarTmp
  loc_6E55B2: FStStr var_98
  loc_6E55B5: FFreeVar var_C8 = "": var_E8 = "": var_108 = ""
  loc_6E55C0: ILdRf var_98
  loc_6E55C3: CVarStr var_AC
  loc_6E55C6: LitI4 9
  loc_6E55CB: FLdRfVar var_C8
  loc_6E55CE: ImpAdCallFPR4  = Chr()
  loc_6E55D3: FLdRfVar var_C8
  loc_6E55D6: ConcatVar var_E8
  loc_6E55DA: LitVarStr var_D8, "          "
  loc_6E55DF: ConcatVar var_108
  loc_6E55E3: FLdI2 var_88
  loc_6E55E6: CI4UI1
  loc_6E55E7: FLdPr Me
  loc_6E55EA: MemLdStr global_80
  loc_6E55ED: Ary1LdPr
  loc_6E55EE: MemLdStr global_4
  loc_6E55F1: CVarStr var_F8
  loc_6E55F4: ConcatVar var_128
  loc_6E55F8: LitI4 9
  loc_6E55FD: FLdRfVar var_148
  loc_6E5600: ImpAdCallFPR4  = Chr()
  loc_6E5605: FLdRfVar var_148
  loc_6E5608: ConcatVar var_168
  loc_6E560C: LitVarStr var_118, "          "
  loc_6E5611: ConcatVar var_188
  loc_6E5615: FLdI2 var_88
  loc_6E5618: CI4UI1
  loc_6E5619: FLdPr Me
  loc_6E561C: MemLdStr global_80
  loc_6E561F: Ary1LdPr
  loc_6E5620: MemLdStr global_12
  loc_6E5623: CVarStr var_138
  loc_6E5626: ConcatVar var_1A8
  loc_6E562A: CStrVarTmp
  loc_6E562B: FStStr var_98
  loc_6E562E: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = ""
  loc_6E5641: ILdRf var_98
  loc_6E5644: CVarStr var_AC
  loc_6E5647: LitI4 9
  loc_6E564C: FLdRfVar var_C8
  loc_6E564F: ImpAdCallFPR4  = Chr()
  loc_6E5654: FLdRfVar var_C8
  loc_6E5657: ConcatVar var_E8
  loc_6E565B: FLdI2 var_88
  loc_6E565E: CI4UI1
  loc_6E565F: FLdPr Me
  loc_6E5662: MemLdStr global_80
  loc_6E5665: Ary1LdPr
  loc_6E5666: MemLdStr global_16
  loc_6E5669: CVarStr var_D8
  loc_6E566C: ConcatVar var_108
  loc_6E5670: CStrVarTmp
  loc_6E5671: FStStr var_98
  loc_6E5674: FFreeVar var_C8 = "": var_E8 = ""
  loc_6E567D: FLdRfVar var_98
  loc_6E5680: CDargRef
  loc_6E5684: FLdPrThis
  loc_6E5685: VCallAd Control_ID_Grid1
  loc_6E5688: FStAdFunc var_9C
  loc_6E568B: FLdPr var_9C
  loc_6E568E: LateIdCall
  loc_6E5696: FFree1Ad var_9C
  loc_6E5699: FLdRfVar var_88
  loc_6E569C: NextI2 var_614, loc_6E556E
  loc_6E56A1: Branch loc_6E5790
  loc_6E56A4: LitI2_Byte 1
  loc_6E56A6: FLdRfVar var_88
  loc_6E56A9: FLdPr Me
  loc_6E56AC: MemLdStr global_80
  loc_6E56AF: LitI2_Byte 1
  loc_6E56B1: FnUBound
  loc_6E56B3: CI2I4
  loc_6E56B4: ForI2 var_618
  loc_6E56BA: FLdI2 var_88
  loc_6E56BD: CI4UI1
  loc_6E56BE: FLdPr Me
  loc_6E56C1: MemLdStr global_80
  loc_6E56C4: Ary1LdPr
  loc_6E56C5: MemLdStr global_0
  loc_6E56C8: CVarStr var_AC
  loc_6E56CB: LitI4 9
  loc_6E56D0: FLdRfVar var_C8
  loc_6E56D3: ImpAdCallFPR4  = Chr()
  loc_6E56D8: FLdRfVar var_C8
  loc_6E56DB: ConcatVar var_E8
  loc_6E56DF: FLdI2 var_88
  loc_6E56E2: CI4UI1
  loc_6E56E3: FLdPr Me
  loc_6E56E6: MemLdStr global_80
  loc_6E56E9: Ary1LdPr
  loc_6E56EA: MemLdStr global_8
  loc_6E56ED: CVarStr var_D8
  loc_6E56F0: ConcatVar var_108
  loc_6E56F4: CStrVarTmp
  loc_6E56F5: FStStr var_98
  loc_6E56F8: FFreeVar var_C8 = "": var_E8 = ""
  loc_6E5701: ILdRf var_98
  loc_6E5704: CVarStr var_AC
  loc_6E5707: LitI4 9
  loc_6E570C: FLdRfVar var_C8
  loc_6E570F: ImpAdCallFPR4  = Chr()
  loc_6E5714: FLdRfVar var_C8
  loc_6E5717: ConcatVar var_E8
  loc_6E571B: FLdI2 var_88
  loc_6E571E: CI4UI1
  loc_6E571F: FLdPr Me
  loc_6E5722: MemLdStr global_80
  loc_6E5725: Ary1LdPr
  loc_6E5726: MemLdStr global_4
  loc_6E5729: CVarStr var_D8
  loc_6E572C: ConcatVar var_108
  loc_6E5730: LitI4 9
  loc_6E5735: FLdRfVar var_128
  loc_6E5738: ImpAdCallFPR4  = Chr()
  loc_6E573D: FLdRfVar var_128
  loc_6E5740: ConcatVar var_148
  loc_6E5744: FLdI2 var_88
  loc_6E5747: CI4UI1
  loc_6E5748: FLdPr Me
  loc_6E574B: MemLdStr global_80
  loc_6E574E: Ary1LdPr
  loc_6E574F: MemLdStr global_12
  loc_6E5752: CVarStr var_F8
  loc_6E5755: ConcatVar var_168
  loc_6E5759: CStrVarTmp
  loc_6E575A: FStStr var_98
  loc_6E575D: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_6E576C: FLdRfVar var_98
  loc_6E576F: CDargRef
  loc_6E5773: FLdPrThis
  loc_6E5774: VCallAd Control_ID_Grid1
  loc_6E5777: FStAdFunc var_9C
  loc_6E577A: FLdPr var_9C
  loc_6E577D: LateIdCall
  loc_6E5785: FFree1Ad var_9C
  loc_6E5788: FLdRfVar var_88
  loc_6E578B: NextI2 var_618, loc_6E56BA
  loc_6E5790: LitVarI2 var_AC, 9
  loc_6E5795: PopAdLdVar
  loc_6E5796: FLdPrThis
  loc_6E5797: VCallAd Control_ID_Grid1
  loc_6E579A: FStAdFunc var_9C
  loc_6E579D: FLdPr var_9C
  loc_6E57A0: LateIdSt
  loc_6E57A5: FFree1Ad var_9C
  loc_6E57A8: LitVar_TRUE var_AC
  loc_6E57AB: PopAdLdVar
  loc_6E57AC: FLdPrThis
  loc_6E57AD: VCallAd Control_ID_Grid1
  loc_6E57B0: FStAdFunc var_9C
  loc_6E57B3: FLdPr var_9C
  loc_6E57B6: LateIdSt
  loc_6E57BB: FFree1Ad var_9C
  loc_6E57BE: LitI2 240
  loc_6E57C1: CR8I2
  loc_6E57C2: CVarR4
  loc_6E57C6: PopAdLdVar
  loc_6E57C7: FLdPrThis
  loc_6E57C8: VCallAd Control_ID_Grid1
  loc_6E57CB: FStAdFunc var_9C
  loc_6E57CE: FLdPr var_9C
  loc_6E57D1: LateIdSt
  loc_6E57D6: FFree1Ad var_9C
  loc_6E57D9: LitI2 10700
  loc_6E57DC: CR8I2
  loc_6E57DD: CVarR4
  loc_6E57E1: PopAdLdVar
  loc_6E57E2: FLdPrThis
  loc_6E57E3: VCallAd Control_ID_Grid1
  loc_6E57E6: FStAdFunc var_9C
  loc_6E57E9: FLdPr var_9C
  loc_6E57EC: LateIdSt
  loc_6E57F1: FFree1Ad var_9C
  loc_6E57F4: FLdPr Me
  loc_6E57F7: MemLdStr TipoReporte
  loc_6E57FA: LitStr "B"
  loc_6E57FD: EqStr
  loc_6E57FF: BranchF loc_6E58E7
  loc_6E5802: LitVarI4
  loc_6E580A: PopAdLdVar
  loc_6E580B: LitVarI4
  loc_6E5813: PopAdLdVar
  loc_6E5814: FLdPrThis
  loc_6E5815: VCallAd Control_ID_Grid1
  loc_6E5818: FStAdFunc var_9C
  loc_6E581B: FLdPr var_9C
  loc_6E581E: LateIdCallSt
  loc_6E5826: FFree1Ad var_9C
  loc_6E5829: LitVarI4
  loc_6E5831: PopAdLdVar
  loc_6E5832: LitVarI4
  loc_6E583A: PopAdLdVar
  loc_6E583B: FLdPrThis
  loc_6E583C: VCallAd Control_ID_Grid1
  loc_6E583F: FStAdFunc var_9C
  loc_6E5842: FLdPr var_9C
  loc_6E5845: LateIdCallSt
  loc_6E584D: FFree1Ad var_9C
  loc_6E5850: LitVarI4
  loc_6E5858: PopAdLdVar
  loc_6E5859: LitVarI4
  loc_6E5861: PopAdLdVar
  loc_6E5862: FLdPrThis
  loc_6E5863: VCallAd Control_ID_Grid1
  loc_6E5866: FStAdFunc var_9C
  loc_6E5869: FLdPr var_9C
  loc_6E586C: LateIdCallSt
  loc_6E5874: FFree1Ad var_9C
  loc_6E5877: LitI2 6000
  loc_6E587A: CR8I2
  loc_6E587B: CVarR4
  loc_6E587F: PopAdLdVar
  loc_6E5880: FLdPrThis
  loc_6E5881: VCallAd Control_ID_Grid1
  loc_6E5884: FStAdFunc var_9C
  loc_6E5887: FLdPr var_9C
  loc_6E588A: LateIdSt
  loc_6E588F: FFree1Ad var_9C
  loc_6E5892: FLdPrThis
  loc_6E5893: VCallAd Control_ID_Grid1
  loc_6E5896: FStAdFunc var_9C
  loc_6E5899: FLdPr var_9C
  loc_6E589C: LateIdLdVar var_C8 DispID_5 -32767
  loc_6E58A3: PopAd
  loc_6E58A5: FLdRfVar var_B4
  loc_6E58A8: FLdPr Me
  loc_6E58AB:  = Me.Width
  loc_6E58B0: FLdFPR4 var_B4
  loc_6E58B3: LitI2_Byte 2
  loc_6E58B5: CR8I2
  loc_6E58B6: DivR8
  loc_6E58B7: FLdRfVar var_C8
  loc_6E58BA: CR8Var
  loc_6E58BC: LitI2_Byte 2
  loc_6E58BE: CR8I2
  loc_6E58BF: DivR8
  loc_6E58C0: SubR4
  loc_6E58C1: LitI2 300
  loc_6E58C4: CR8I2
  loc_6E58C5: SubR4
  loc_6E58C6: CVarR4
  loc_6E58CA: PopAdLdVar
  loc_6E58CB: FLdPrThis
  loc_6E58CC: VCallAd Control_ID_Grid1
  loc_6E58CF: FStAdFunc var_61C
  loc_6E58D2: FLdPr var_61C
  loc_6E58D5: LateIdSt
  loc_6E58DA: FFreeAd var_9C = ""
  loc_6E58E1: FFree1Var var_C8 = ""
  loc_6E58E4: Branch loc_6E5A6A
  loc_6E58E7: FLdPr Me
  loc_6E58EA: MemLdStr TipoReporte
  loc_6E58ED: LitStr "C"
  loc_6E58F0: EqStr
  loc_6E58F2: BranchF loc_6E5A6A
  loc_6E58F5: LitVarI4
  loc_6E58FD: PopAdLdVar
  loc_6E58FE: LitVarI4
  loc_6E5906: PopAdLdVar
  loc_6E5907: FLdPrThis
  loc_6E5908: VCallAd Control_ID_Grid1
  loc_6E590B: FStAdFunc var_9C
  loc_6E590E: FLdPr var_9C
  loc_6E5911: LateIdCallSt
  loc_6E5919: FFree1Ad var_9C
  loc_6E591C: LitVarI4
  loc_6E5924: PopAdLdVar
  loc_6E5925: LitVarI4
  loc_6E592D: PopAdLdVar
  loc_6E592E: FLdPrThis
  loc_6E592F: VCallAd Control_ID_Grid1
  loc_6E5932: FStAdFunc var_9C
  loc_6E5935: FLdPr var_9C
  loc_6E5938: LateIdCallSt
  loc_6E5940: FFree1Ad var_9C
  loc_6E5943: LitVarI4
  loc_6E594B: PopAdLdVar
  loc_6E594C: LitI4 7
  loc_6E5951: CI2I4
  loc_6E5952: CVarI2 var_D8
  loc_6E5955: PopAdLdVar
  loc_6E5956: FLdPrThis
  loc_6E5957: VCallAd Control_ID_Grid1
  loc_6E595A: FStAdFunc var_9C
  loc_6E595D: FLdPr var_9C
  loc_6E5960: LateIdCallSt
  loc_6E5968: FFree1Ad var_9C
  loc_6E596B: LitVarI4
  loc_6E5973: PopAdLdVar
  loc_6E5974: LitI4 7
  loc_6E5979: CI2I4
  loc_6E597A: CVarI2 var_D8
  loc_6E597D: PopAdLdVar
  loc_6E597E: FLdPrThis
  loc_6E597F: VCallAd Control_ID_Grid1
  loc_6E5982: FStAdFunc var_9C
  loc_6E5985: FLdPr var_9C
  loc_6E5988: LateIdCallSt
  loc_6E5990: FFree1Ad var_9C
  loc_6E5993: LitVarI4
  loc_6E599B: PopAdLdVar
  loc_6E599C: LitI4 7
  loc_6E59A1: CI2I4
  loc_6E59A2: CVarI2 var_D8
  loc_6E59A5: PopAdLdVar
  loc_6E59A6: FLdPrThis
  loc_6E59A7: VCallAd Control_ID_Grid1
  loc_6E59AA: FStAdFunc var_9C
  loc_6E59AD: FLdPr var_9C
  loc_6E59B0: LateIdCallSt
  loc_6E59B8: FFree1Ad var_9C
  loc_6E59BB: LitVarI4
  loc_6E59C3: PopAdLdVar
  loc_6E59C4: LitVarI4
  loc_6E59CC: PopAdLdVar
  loc_6E59CD: FLdPrThis
  loc_6E59CE: VCallAd Control_ID_Grid1
  loc_6E59D1: FStAdFunc var_9C
  loc_6E59D4: FLdPr var_9C
  loc_6E59D7: LateIdCallSt
  loc_6E59DF: FFree1Ad var_9C
  loc_6E59E2: LitI2 6000
  loc_6E59E5: CR8I2
  loc_6E59E6: CVarR4
  loc_6E59EA: PopAdLdVar
  loc_6E59EB: FLdPrThis
  loc_6E59EC: VCallAd Control_ID_Grid1
  loc_6E59EF: FStAdFunc var_9C
  loc_6E59F2: FLdPr var_9C
  loc_6E59F5: LateIdSt
  loc_6E59FA: FFree1Ad var_9C
  loc_6E59FD: LitI2 8000
  loc_6E5A00: CR8I2
  loc_6E5A01: CVarR4
  loc_6E5A05: PopAdLdVar
  loc_6E5A06: FLdPrThis
  loc_6E5A07: VCallAd Control_ID_Grid1
  loc_6E5A0A: FStAdFunc var_9C
  loc_6E5A0D: FLdPr var_9C
  loc_6E5A10: LateIdSt
  loc_6E5A15: FFree1Ad var_9C
  loc_6E5A18: FLdPrThis
  loc_6E5A19: VCallAd Control_ID_Grid1
  loc_6E5A1C: FStAdFunc var_9C
  loc_6E5A1F: FLdPr var_9C
  loc_6E5A22: LateIdLdVar var_C8 DispID_5 -32767
  loc_6E5A29: PopAd
  loc_6E5A2B: FLdRfVar var_B4
  loc_6E5A2E: FLdPr Me
  loc_6E5A31:  = Me.Width
  loc_6E5A36: FLdFPR4 var_B4
  loc_6E5A39: LitI2_Byte 2
  loc_6E5A3B: CR8I2
  loc_6E5A3C: DivR8
  loc_6E5A3D: FLdRfVar var_C8
  loc_6E5A40: CR8Var
  loc_6E5A42: LitI2_Byte 2
  loc_6E5A44: CR8I2
  loc_6E5A45: DivR8
  loc_6E5A46: SubR4
  loc_6E5A47: LitI2 300
  loc_6E5A4A: CR8I2
  loc_6E5A4B: SubR4
  loc_6E5A4C: CVarR4
  loc_6E5A50: PopAdLdVar
  loc_6E5A51: FLdPrThis
  loc_6E5A52: VCallAd Control_ID_Grid1
  loc_6E5A55: FStAdFunc var_61C
  loc_6E5A58: FLdPr var_61C
  loc_6E5A5B: LateIdSt
  loc_6E5A60: FFreeAd var_9C = ""
  loc_6E5A67: FFree1Var var_C8 = ""
  loc_6E5A6A: ExitProcHresult
End Sub

Public Function HayDatosAnteriores() '5EF314
  'Data Table: 440CF4
  loc_5EF280: LitI2_Byte &HFF
  loc_5EF282: FStI2 var_86
  loc_5EF285: FLdPr Me
  loc_5EF288: MemLdStr global_84
  loc_5EF28B: FStStrCopy HayDatosAnteriores
  loc_5EF28E: FLdPr Me
  loc_5EF291: MemLdStr global_88
  loc_5EF294: FLdPr Me
  loc_5EF297: MemStStrCopy
  loc_5EF29B: FLdPr Me
  loc_5EF29E: MemLdStr global_88
  loc_5EF2A1: CR8Str
  loc_5EF2A3: FLdPr Me
  loc_5EF2A6: MemLdStr global_92
  loc_5EF2A9: CR8Str
  loc_5EF2AB: SubR4
  loc_5EF2AC: CStrR8
  loc_5EF2AE: FStStrNoPop var_98
  loc_5EF2B1: FLdPr Me
  loc_5EF2B4: MemStStrCopy
  loc_5EF2B8: FFree1Str var_98
  loc_5EF2BB: FLdRfVar var_A8
  loc_5EF2BE: from_stack_1v = Proc_100_47_694DD0()
  loc_5EF2C3: FFree1Var var_A8 = ""
  loc_5EF2C6: LitI4 1
  loc_5EF2CB: FLdPr Me
  loc_5EF2CE: MemLdStr global_80
  loc_5EF2D1: Ary1LdPr
  loc_5EF2D2: MemLdStr global_0
  loc_5EF2D5: LitStr vbNullString
  loc_5EF2D8: EqStr
  loc_5EF2DA: BranchF loc_5EF2E2
  loc_5EF2DD: LitI2_Byte 0
  loc_5EF2DF: FStI2 var_86
  loc_5EF2E2: FLdPr Me
  loc_5EF2E5: MemLdStr global_88
  loc_5EF2E8: FLdPr Me
  loc_5EF2EB: MemLdStr global_92
  loc_5EF2EE: ConcatStr
  loc_5EF2EF: FStStrNoPop var_98
  loc_5EF2F2: FLdPr Me
  loc_5EF2F5: MemStStrCopy
  loc_5EF2F9: FFree1Str var_98
  loc_5EF2FC: FLdFPR8 var_90
  loc_5EF2FF: CStrDate
  loc_5EF301: FStStrNoPop var_98
  loc_5EF304: FLdPr Me
  loc_5EF307: MemStStrCopy
  loc_5EF30B: FFree1Str var_98
  loc_5EF30E: ExitProcCbHresult
End Function

Public Function ArmarDocumento(sValor) '67A094
  'Data Table: 440CF4
  loc_679C58: ZeroRetValVar
  loc_679C5A: OnErrorGoto loc_67A047
  loc_679C5D: FLdRfVar var_C8
  loc_679C60: FLdRfVar var_C4
  loc_679C63: ImpAdLdRf MemVar_7520D4
  loc_679C66: NewIfNullPr Global
  loc_679C69:  = Global.App
  loc_679C6E: FLdPr var_C4
  loc_679C71:  = App.Path
  loc_679C76: ILdRf var_C8
  loc_679C79: LitStr "\reporte.mdb"
  loc_679C7C: ConcatStr
  loc_679C7D: FStStr var_98
  loc_679C80: FFree1Str var_C8
  loc_679C83: FFree1Ad var_C4
  loc_679C86: FLdRfVar var_C4
  loc_679C89: LitVar_Missing var_F8
  loc_679C8C: PopAdLdVar
  loc_679C8D: LitVar_Missing var_E8
  loc_679C90: PopAdLdVar
  loc_679C91: LitVar_TRUE var_D8
  loc_679C94: PopAdLdVar
  loc_679C95: ILdRf var_98
  loc_679C98: ImpAdLdRf MemVar_752164
  loc_679C9B: NewIfNullPr Me
  loc_679C9E: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_679CA3: ILdRf var_C4
  loc_679CA6: FLdPr Me
  loc_679CA9: MemStAd
  loc_679CAD: FFree1Ad var_C4
  loc_679CB0: LitI4 4
  loc_679CB5: FLdRfVar var_108
  loc_679CB8: ImpAdCallFPR4  = Chr()
  loc_679CBD: FLdRfVar var_108
  loc_679CC0: LitI4 &H10
  loc_679CC5: FLdRfVar var_118
  loc_679CC8: ImpAdCallFPR4  = Chr()
  loc_679CCD: FLdRfVar var_118
  loc_679CD0: ConcatVar var_128
  loc_679CD4: LitI4 8
  loc_679CD9: FLdRfVar var_138
  loc_679CDC: ImpAdCallFPR4  = Chr()
  loc_679CE1: FLdRfVar var_138
  loc_679CE4: ConcatVar var_148
  loc_679CE8: LitI4 &H13
  loc_679CED: FLdRfVar var_158
  loc_679CF0: ImpAdCallFPR4  = Chr()
  loc_679CF5: FLdRfVar var_158
  loc_679CF8: ConcatVar var_168
  loc_679CFC: LitI4 &HB
  loc_679D01: FLdRfVar var_178
  loc_679D04: ImpAdCallFPR4  = Chr()
  loc_679D09: FLdRfVar var_178
  loc_679D0C: ConcatVar var_188
  loc_679D10: CStrVarTmp
  loc_679D11: FStStr var_9C
  loc_679D14: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = ""
  loc_679D29: FLdRfVar var_18A
  loc_679D2C: FLdPrThis
  loc_679D2D:  = Me.Count
  loc_679D32: LitVar_Missing var_108
  loc_679D35: FLdI2 var_18A
  loc_679D38: CI4UI1
  loc_679D39: ILdRf sValor
  loc_679D3C: CVarRef
  loc_679D41: FLdRfVar var_118
  loc_679D44: ImpAdCallFPR4  = Mid(, , )
  loc_679D49: LitI2_Byte 5
  loc_679D4B: PopTmpLdAd2 var_192
  loc_679D4E: FLdRfVar var_9C
  loc_679D51: FLdRfVar var_B4
  loc_679D54: PopTmpLdAdStr var_190
  loc_679D57: FLdRfVar var_118
  loc_679D5A: CStrVarTmp
  loc_679D5B: PopTmpLdAdStr
  loc_679D5F: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_679D64: LitI2_Byte 2
  loc_679D66: AddI2
  loc_679D67: FStI2 var_BC
  loc_679D6A: FFree1Str var_C8
  loc_679D6D: FFreeVar var_108 = ""
  loc_679D74: LitStr "INSERT INTO CLP_Encabezado(Cod_Registro, Nro_Doc, Fecha, Tot_Monto, Tot_Vol) VALUES ("
  loc_679D77: FStStrCopy var_B8
  loc_679D7A: ILdRf var_B8
  loc_679D7D: LitStr "'"
  loc_679D80: ConcatStr
  loc_679D81: FStStrNoPop var_C8
  loc_679D84: LitI4 1
  loc_679D89: FLdRfVar var_B4
  loc_679D8C: Ary1LdI4
  loc_679D8D: ConcatStr
  loc_679D8E: FStStrNoPop var_198
  loc_679D91: LitStr "', '"
  loc_679D94: ConcatStr
  loc_679D95: FStStrNoPop var_19C
  loc_679D98: LitI4 2
  loc_679D9D: FLdRfVar var_B4
  loc_679DA0: Ary1LdI4
  loc_679DA1: ConcatStr
  loc_679DA2: FStStrNoPop var_1A0
  loc_679DA5: LitStr "', "
  loc_679DA8: ConcatStr
  loc_679DA9: FStStrNoPop var_1AC
  loc_679DAC: FLdRfVar var_1A8
  loc_679DAF: LitI2_Byte &H10
  loc_679DB1: PopTmpLdAd2 var_18A
  loc_679DB4: LitI4 3
  loc_679DB9: FLdRfVar var_B4
  loc_679DBC: Ary1LdRf
  loc_679DBD: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_679DC2: FLdFPR8 var_1A8
  loc_679DC5: CStrR8
  loc_679DC7: FStStrNoPop var_1B0
  loc_679DCA: ConcatStr
  loc_679DCB: FStStr var_B8
  loc_679DCE: FFreeStr var_C8 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1AC = ""
  loc_679DDD: ILdRf var_B8
  loc_679DE0: LitStr ", "
  loc_679DE3: ConcatStr
  loc_679DE4: FStStrNoPop var_C8
  loc_679DE7: FLdRfVar var_1A8
  loc_679DEA: LitI2_Byte 8
  loc_679DEC: PopTmpLdAd2 var_18A
  loc_679DEF: LitI4 4
  loc_679DF4: FLdRfVar var_B4
  loc_679DF7: Ary1LdRf
  loc_679DF8: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_679DFD: FLdFPR8 var_1A8
  loc_679E00: CStrR8
  loc_679E02: FStStrNoPop var_198
  loc_679E05: ConcatStr
  loc_679E06: FStStrNoPop var_19C
  loc_679E09: LitStr ")"
  loc_679E0C: ConcatStr
  loc_679E0D: FStStr var_B8
  loc_679E10: FFreeStr var_C8 = "": var_198 = ""
  loc_679E19: LitVarI4
  loc_679E21: PopAdLdVar
  loc_679E22: LitStr "DELETE * FROM CLP_Encabezado"
  loc_679E25: FLdPr Me
  loc_679E28: MemLdPr DBase
  loc_679E2B: Me.Execute from_stack_1, from_stack_2
  loc_679E30: LitVarI4
  loc_679E38: PopAdLdVar
  loc_679E39: ILdRf var_B8
  loc_679E3C: FLdPr Me
  loc_679E3F: MemLdPr DBase
  loc_679E42: Me.Execute from_stack_1, from_stack_2
  loc_679E47: LitI4 4
  loc_679E4C: FLdRfVar var_108
  loc_679E4F: ImpAdCallFPR4  = Chr()
  loc_679E54: FLdRfVar var_108
  loc_679E57: LitI4 2
  loc_679E5C: FLdRfVar var_118
  loc_679E5F: ImpAdCallFPR4  = Chr()
  loc_679E64: FLdRfVar var_118
  loc_679E67: ConcatVar var_128
  loc_679E6B: LitI4 2
  loc_679E70: FLdRfVar var_138
  loc_679E73: ImpAdCallFPR4  = Chr()
  loc_679E78: FLdRfVar var_138
  loc_679E7B: ConcatVar var_148
  loc_679E7F: LitI4 &H14
  loc_679E84: FLdRfVar var_158
  loc_679E87: ImpAdCallFPR4  = Chr()
  loc_679E8C: FLdRfVar var_158
  loc_679E8F: ConcatVar var_168
  loc_679E93: LitI4 &HB
  loc_679E98: FLdRfVar var_178
  loc_679E9B: ImpAdCallFPR4  = Chr()
  loc_679EA0: FLdRfVar var_178
  loc_679EA3: ConcatVar var_188
  loc_679EA7: LitI4 &HB
  loc_679EAC: FLdRfVar var_1C0
  loc_679EAF: ImpAdCallFPR4  = Chr()
  loc_679EB4: FLdRfVar var_1C0
  loc_679EB7: ConcatVar var_1D0
  loc_679EBB: CStrVarTmp
  loc_679EBC: FStStr var_9C
  loc_679EBF: FFreeVar var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_1C0 = ""
  loc_679ED8: LitVarI4
  loc_679EE0: PopAdLdVar
  loc_679EE1: LitStr "DELETE * FROM CLP_Detalle"
  loc_679EE4: FLdPr Me
  loc_679EE7: MemLdPr DBase
  loc_679EEA: Me.Execute from_stack_1, from_stack_2
  loc_679EEF: FLdI2 var_BC
  loc_679EF2: FStI2 var_BE
  loc_679EF5: FLdI2 var_BC
  loc_679EF8: CI4UI1
  loc_679EF9: ILdI4 sValor
  loc_679EFC: FnLenStr
  loc_679EFD: LeI4
  loc_679EFE: BranchF loc_67A036
  loc_679F01: LitVar_Missing var_108
  loc_679F04: FLdI2 var_BC
  loc_679F07: CI4UI1
  loc_679F08: ILdRf sValor
  loc_679F0B: CVarRef
  loc_679F10: FLdRfVar var_118
  loc_679F13: ImpAdCallFPR4  = Mid(, , )
  loc_679F18: FLdI2 var_BC
  loc_679F1B: LitI2_Byte 2
  loc_679F1D: AddI2
  loc_679F1E: LitI2_Byte 6
  loc_679F20: PopTmpLdAd2 var_18A
  loc_679F23: FLdRfVar var_9C
  loc_679F26: FLdRfVar var_B4
  loc_679F29: PopTmpLdAdStr var_190
  loc_679F2C: FLdRfVar var_118
  loc_679F2F: CStrVarTmp
  loc_679F30: PopTmpLdAdStr
  loc_679F34: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_679F39: AddI2
  loc_679F3A: FStI2 var_BC
  loc_679F3D: FFree1Str var_C8
  loc_679F40: FFreeVar var_108 = ""
  loc_679F47: LitStr "INSERT INTO CLP_Detalle(Cod_Registro, Tipo, Codigo, Descripcion, Volumen, Monto) VALUES("
  loc_679F4A: FStStrCopy var_B8
  loc_679F4D: ILdRf var_B8
  loc_679F50: LitStr "'"
  loc_679F53: ConcatStr
  loc_679F54: FStStrNoPop var_C8
  loc_679F57: LitI4 1
  loc_679F5C: FLdRfVar var_B4
  loc_679F5F: Ary1LdI4
  loc_679F60: ConcatStr
  loc_679F61: FStStrNoPop var_198
  loc_679F64: LitStr "', "
  loc_679F67: ConcatStr
  loc_679F68: FStStrNoPop var_19C
  loc_679F6B: LitI4 2
  loc_679F70: FLdRfVar var_B4
  loc_679F73: Ary1LdI4
  loc_679F74: ConcatStr
  loc_679F75: FStStrNoPop var_1A0
  loc_679F78: LitStr ", "
  loc_679F7B: ConcatStr
  loc_679F7C: FStStrNoPop var_1AC
  loc_679F7F: LitI4 3
  loc_679F84: FLdRfVar var_B4
  loc_679F87: Ary1LdI4
  loc_679F88: ConcatStr
  loc_679F89: FStStrNoPop var_1B0
  loc_679F8C: LitStr ", '"
  loc_679F8F: ConcatStr
  loc_679F90: FStStr var_B8
  loc_679F93: FFreeStr var_C8 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1AC = ""
  loc_679FA2: ILdRf var_B8
  loc_679FA5: LitI4 4
  loc_679FAA: FLdRfVar var_B4
  loc_679FAD: Ary1LdI4
  loc_679FAE: ConcatStr
  loc_679FAF: FStStrNoPop var_C8
  loc_679FB2: LitStr "', "
  loc_679FB5: ConcatStr
  loc_679FB6: FStStrNoPop var_198
  loc_679FB9: FLdRfVar var_1A8
  loc_679FBC: LitI2_Byte 8
  loc_679FBE: PopTmpLdAd2 var_18A
  loc_679FC1: LitI4 5
  loc_679FC6: FLdRfVar var_B4
  loc_679FC9: Ary1LdRf
  loc_679FCA: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_679FCF: FLdFPR8 var_1A8
  loc_679FD2: CStrR8
  loc_679FD4: FStStrNoPop var_19C
  loc_679FD7: ConcatStr
  loc_679FD8: FStStrNoPop var_1A0
  loc_679FDB: LitStr ", "
  loc_679FDE: ConcatStr
  loc_679FDF: FStStrNoPop var_1AC
  loc_679FE2: FLdRfVar var_1D8
  loc_679FE5: LitI2_Byte 8
  loc_679FE7: PopTmpLdAd2 var_192
  loc_679FEA: LitI4 6
  loc_679FEF: FLdRfVar var_B4
  loc_679FF2: Ary1LdRf
  loc_679FF3: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_679FF8: FLdFPR8 var_1D8
  loc_679FFB: CStrR8
  loc_679FFD: FStStrNoPop var_1B0
  loc_67A000: ConcatStr
  loc_67A001: FStStrNoPop var_1DC
  loc_67A004: LitStr ")"
  loc_67A007: ConcatStr
  loc_67A008: FStStr var_B8
  loc_67A00B: FFreeStr var_C8 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1AC = "": var_1B0 = ""
  loc_67A01C: LitVarI4
  loc_67A024: PopAdLdVar
  loc_67A025: ILdRf var_B8
  loc_67A028: FLdPr Me
  loc_67A02B: MemLdPr DBase
  loc_67A02E: Me.Execute from_stack_1, from_stack_2
  loc_67A033: Branch loc_679EF5
  loc_67A036: FLdPr Me
  loc_67A039: MemLdPr DBase
  loc_67A03C: Me.Close
  loc_67A041: ExitProcCbHresult
  loc_67A047: FLdPr Me
  loc_67A04A: MemLdPr DBase
  loc_67A04D: Me.Close
  loc_67A052: FLdRfVar var_C8
  loc_67A055: ImpAdCallI2 Err 'rtcErrObj
  loc_67A05A: FStAdFunc var_C4
  loc_67A05D: FLdPr var_C4
  loc_67A060:  = Err.Description
  loc_67A065: LitVar_Missing var_138
  loc_67A068: LitVar_Missing var_128
  loc_67A06B: LitVar_Missing var_118
  loc_67A06E: LitI4 &H10
  loc_67A073: FLdZeroAd var_C8
  loc_67A076: CVarStr var_108
  loc_67A079: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67A07E: FFree1Ad var_C4
  loc_67A081: FFreeVar var_108 = "": var_118 = "": var_128 = ""
  loc_67A08C: ExitProcCbHresult
  loc_67A092: OrI4
End Function

Public Function NewCLPDocument(sValor) '6E8338
  'Data Table: 440CF4
  loc_6E7694: ZeroRetValVar
  loc_6E7696: OnErrorGoto loc_6E82EB
  loc_6E7699: LitI2_Byte 0
  loc_6E769B: FStI2 var_C4
  loc_6E769E: FLdRfVar var_D0
  loc_6E76A1: FLdRfVar var_CC
  loc_6E76A4: ImpAdLdRf MemVar_7520D4
  loc_6E76A7: NewIfNullPr Global
  loc_6E76AA:  = Global.App
  loc_6E76AF: FLdPr var_CC
  loc_6E76B2:  = App.Path
  loc_6E76B7: ILdRf var_D0
  loc_6E76BA: LitStr "\REPORTE.MDB"
  loc_6E76BD: ConcatStr
  loc_6E76BE: FStStr var_B8
  loc_6E76C1: FFree1Str var_D0
  loc_6E76C4: FFree1Ad var_CC
  loc_6E76C7: FLdRfVar var_CC
  loc_6E76CA: LitVar_Missing var_100
  loc_6E76CD: PopAdLdVar
  loc_6E76CE: LitVar_Missing var_F0
  loc_6E76D1: PopAdLdVar
  loc_6E76D2: LitVar_TRUE var_E0
  loc_6E76D5: PopAdLdVar
  loc_6E76D6: ILdRf var_B8
  loc_6E76D9: ImpAdLdRf MemVar_752164
  loc_6E76DC: NewIfNullPr Me
  loc_6E76DF: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6E76E4: ILdRf var_CC
  loc_6E76E7: FLdPr Me
  loc_6E76EA: MemStAd
  loc_6E76EE: FFree1Ad var_CC
  loc_6E76F1: LitI4 4
  loc_6E76F6: FLdRfVar var_110
  loc_6E76F9: ImpAdCallFPR4  = Chr()
  loc_6E76FE: FLdRfVar var_110
  loc_6E7701: LitI4 &H10
  loc_6E7706: FLdRfVar var_120
  loc_6E7709: ImpAdCallFPR4  = Chr()
  loc_6E770E: FLdRfVar var_120
  loc_6E7711: ConcatVar var_130
  loc_6E7715: LitI4 8
  loc_6E771A: FLdRfVar var_140
  loc_6E771D: ImpAdCallFPR4  = Chr()
  loc_6E7722: FLdRfVar var_140
  loc_6E7725: ConcatVar var_150
  loc_6E7729: LitI4 &HB
  loc_6E772E: FLdRfVar var_160
  loc_6E7731: ImpAdCallFPR4  = Chr()
  loc_6E7736: FLdRfVar var_160
  loc_6E7739: ConcatVar var_170
  loc_6E773D: LitI4 &H13
  loc_6E7742: FLdRfVar var_180
  loc_6E7745: ImpAdCallFPR4  = Chr()
  loc_6E774A: FLdRfVar var_180
  loc_6E774D: ConcatVar var_190
  loc_6E7751: CStrVarTmp
  loc_6E7752: FStStr var_B4
  loc_6E7755: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_6E776A: LitI2_Byte &H18
  loc_6E776C: FStI2 var_C2
  loc_6E776F: LitVar_Missing var_110
  loc_6E7772: FLdI2 var_C2
  loc_6E7775: CI4UI1
  loc_6E7776: ILdRf sValor
  loc_6E7779: CVarRef
  loc_6E777E: FLdRfVar var_120
  loc_6E7781: ImpAdCallFPR4  = Mid(, , )
  loc_6E7786: FLdI2 var_C2
  loc_6E7789: LitI2_Byte 2
  loc_6E778B: AddI2
  loc_6E778C: LitI2_Byte 5
  loc_6E778E: PopTmpLdAd2 var_196
  loc_6E7791: FLdRfVar var_B4
  loc_6E7794: FLdRfVar var_AC
  loc_6E7797: PopTmpLdAdStr var_194
  loc_6E779A: FLdRfVar var_120
  loc_6E779D: CStrVarTmp
  loc_6E779E: PopTmpLdAdStr
  loc_6E77A2: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E77A7: AddI2
  loc_6E77A8: FStI2 var_C2
  loc_6E77AB: FFree1Str var_D0
  loc_6E77AE: FFreeVar var_110 = ""
  loc_6E77B5: LitStr "INSERT INTO CLP_ENCABEZADO (cod_reg, nro_doc, fecha, tot_vol, tot_monto"
  loc_6E77B8: FStStrCopy var_BC
  loc_6E77BB: ILdRf var_BC
  loc_6E77BE: LitStr ") VALUES ('"
  loc_6E77C1: ConcatStr
  loc_6E77C2: FStStrNoPop var_D0
  loc_6E77C5: LitI4 1
  loc_6E77CA: FLdRfVar var_AC
  loc_6E77CD: Ary1LdI4
  loc_6E77CE: ConcatStr
  loc_6E77CF: FStStrNoPop var_19C
  loc_6E77D2: LitStr "', '"
  loc_6E77D5: ConcatStr
  loc_6E77D6: FStStrNoPop var_1A0
  loc_6E77D9: LitI4 2
  loc_6E77DE: FLdRfVar var_AC
  loc_6E77E1: Ary1LdI4
  loc_6E77E2: ConcatStr
  loc_6E77E3: FStStrNoPop var_1A4
  loc_6E77E6: LitStr "','"
  loc_6E77E9: ConcatStr
  loc_6E77EA: FStStrNoPop var_1AC
  loc_6E77ED: FLdRfVar var_1A8
  loc_6E77F0: LitI4 3
  loc_6E77F5: FLdRfVar var_AC
  loc_6E77F8: Ary1LdI4
  loc_6E77F9: from_stack_2v = Proc_100_62_5F8AC4(from_stack_1v)
  loc_6E77FE: ILdRf var_1A8
  loc_6E7801: ConcatStr
  loc_6E7802: FStStrNoPop var_1B0
  loc_6E7805: LitStr "','"
  loc_6E7808: ConcatStr
  loc_6E7809: FStStr var_BC
  loc_6E780C: FFreeStr var_D0 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1AC = "": var_1A8 = ""
  loc_6E781D: FLdRfVar var_D0
  loc_6E7820: LitI2_Byte 8
  loc_6E7822: PopTmpLdAd2 var_196
  loc_6E7825: LitI4 4
  loc_6E782A: FLdRfVar var_AC
  loc_6E782D: Ary1LdRf
  loc_6E782E: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E7833: FLdZeroAd var_D0
  loc_6E7836: PopTmpLdAdStr
  loc_6E783A: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E783F: FStStr var_1CC
  loc_6E7842: FLdRfVar var_1AC
  loc_6E7845: LitI2_Byte &H10
  loc_6E7847: PopTmpLdAd2 var_1B4
  loc_6E784A: LitI4 5
  loc_6E784F: FLdRfVar var_AC
  loc_6E7852: Ary1LdRf
  loc_6E7853: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E7858: FLdZeroAd var_1AC
  loc_6E785B: PopTmpLdAdStr
  loc_6E785F: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E7864: FStStr var_1D0
  loc_6E7867: ILdRf var_BC
  loc_6E786A: LitI2_Byte 3
  loc_6E786C: CUI1I2
  loc_6E786E: PopTmpLdAd1
  loc_6E7872: FLdZeroAd var_1CC
  loc_6E7875: PopTmpLdAdStr
  loc_6E7879: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E787E: FStStrNoPop var_1A4
  loc_6E7881: ConcatStr
  loc_6E7882: FStStrNoPop var_1A8
  loc_6E7885: LitStr "','"
  loc_6E7888: ConcatStr
  loc_6E7889: FStStrNoPop var_1C0
  loc_6E788C: LitI2_Byte 3
  loc_6E788E: CUI1I2
  loc_6E7890: PopTmpLdAd1
  loc_6E7894: FLdZeroAd var_1D0
  loc_6E7897: PopTmpLdAdStr
  loc_6E789B: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E78A0: FStStrNoPop var_1C4
  loc_6E78A3: ConcatStr
  loc_6E78A4: FStStrNoPop var_1C8
  loc_6E78A7: LitStr "')"
  loc_6E78AA: ConcatStr
  loc_6E78AB: FStStr var_BC
  loc_6E78AE: FFreeStr var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1B0 = "": var_1B8 = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_6E78C7: LitVarI4
  loc_6E78CF: PopAdLdVar
  loc_6E78D0: LitStr "Delete * from CLP_ENCABEZADO"
  loc_6E78D3: FLdPr Me
  loc_6E78D6: MemLdPr DBase
  loc_6E78D9: Me.Execute from_stack_1, from_stack_2
  loc_6E78DE: LitVarI4
  loc_6E78E6: PopAdLdVar
  loc_6E78E7: ILdRf var_BC
  loc_6E78EA: FLdPr Me
  loc_6E78ED: MemLdPr DBase
  loc_6E78F0: Me.Execute from_stack_1, from_stack_2
  loc_6E78F5: LitI4 4
  loc_6E78FA: FLdRfVar var_110
  loc_6E78FD: ImpAdCallFPR4  = Chr()
  loc_6E7902: FLdRfVar var_110
  loc_6E7905: LitI4 2
  loc_6E790A: FLdRfVar var_120
  loc_6E790D: ImpAdCallFPR4  = Chr()
  loc_6E7912: FLdRfVar var_120
  loc_6E7915: ConcatVar var_130
  loc_6E7919: LitI4 &H10
  loc_6E791E: FLdRfVar var_140
  loc_6E7921: ImpAdCallFPR4  = Chr()
  loc_6E7926: FLdRfVar var_140
  loc_6E7929: ConcatVar var_150
  loc_6E792D: LitI4 2
  loc_6E7932: FLdRfVar var_160
  loc_6E7935: ImpAdCallFPR4  = Chr()
  loc_6E793A: FLdRfVar var_160
  loc_6E793D: ConcatVar var_170
  loc_6E7941: LitI4 &H3C
  loc_6E7946: FLdRfVar var_180
  loc_6E7949: ImpAdCallFPR4  = Chr()
  loc_6E794E: FLdRfVar var_180
  loc_6E7951: ConcatVar var_190
  loc_6E7955: LitI4 &HB
  loc_6E795A: FLdRfVar var_1E0
  loc_6E795D: ImpAdCallFPR4  = Chr()
  loc_6E7962: FLdRfVar var_1E0
  loc_6E7965: ConcatVar var_1F0
  loc_6E7969: LitI4 &H13
  loc_6E796E: FLdRfVar var_200
  loc_6E7971: ImpAdCallFPR4  = Chr()
  loc_6E7976: FLdRfVar var_200
  loc_6E7979: ConcatVar var_210
  loc_6E797D: CStrVarTmp
  loc_6E797E: FStStr var_B4
  loc_6E7981: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1E0 = "": var_1F0 = "": var_200 = ""
  loc_6E799E: LitVarI4
  loc_6E79A6: PopAdLdVar
  loc_6E79A7: LitStr "Delete * from CLP_DETALLE"
  loc_6E79AA: FLdPr Me
  loc_6E79AD: MemLdPr DBase
  loc_6E79B0: Me.Execute from_stack_1, from_stack_2
  loc_6E79B5: FLdI2 var_C2
  loc_6E79B8: FStI2 var_C6
  loc_6E79BB: LitI4 1
  loc_6E79C0: LitI4 1
  loc_6E79C5: ImpAdLdRf MemVar_74C9C8
  loc_6E79C8: Ary1LdI2
  loc_6E79C9: CI4UI1
  loc_6E79CA: FLdPr Me
  loc_6E79CD: MemLdRfVar from_stack_1.global_124
  loc_6E79D0: RedimPreserve
  loc_6E79DA: LitI4 1
  loc_6E79DF: LitI4 2
  loc_6E79E4: ImpAdLdRf MemVar_74C9C8
  loc_6E79E7: Ary1LdI2
  loc_6E79E8: CI4UI1
  loc_6E79E9: FLdPr Me
  loc_6E79EC: MemLdRfVar from_stack_1.global_128
  loc_6E79EF: RedimPreserve
  loc_6E79F9: LitI2_Byte 1
  loc_6E79FB: FLdRfVar var_AE
  loc_6E79FE: LitI4 1
  loc_6E7A03: ImpAdLdRf MemVar_74C9C8
  loc_6E7A06: Ary1LdI2
  loc_6E7A07: ForI2 var_214
  loc_6E7A0D: LitStr vbNullString
  loc_6E7A10: FLdI2 var_AE
  loc_6E7A13: CI4UI1
  loc_6E7A14: FLdPr Me
  loc_6E7A17: MemLdStr global_124
  loc_6E7A1A: Ary1LdPr
  loc_6E7A1B: MemStStrCopy
  loc_6E7A1F: LitStr vbNullString
  loc_6E7A22: FLdI2 var_AE
  loc_6E7A25: CI4UI1
  loc_6E7A26: FLdPr Me
  loc_6E7A29: MemLdStr global_124
  loc_6E7A2C: Ary1LdPr
  loc_6E7A2D: MemStStrCopy
  loc_6E7A31: LitStr vbNullString
  loc_6E7A34: FLdI2 var_AE
  loc_6E7A37: CI4UI1
  loc_6E7A38: FLdPr Me
  loc_6E7A3B: MemLdStr global_124
  loc_6E7A3E: Ary1LdPr
  loc_6E7A3F: MemStStrCopy
  loc_6E7A43: LitStr vbNullString
  loc_6E7A46: FLdI2 var_AE
  loc_6E7A49: CI4UI1
  loc_6E7A4A: FLdPr Me
  loc_6E7A4D: MemLdStr global_124
  loc_6E7A50: Ary1LdPr
  loc_6E7A51: MemStStrCopy
  loc_6E7A55: LitStr vbNullString
  loc_6E7A58: FLdI2 var_AE
  loc_6E7A5B: CI4UI1
  loc_6E7A5C: FLdPr Me
  loc_6E7A5F: MemLdStr global_124
  loc_6E7A62: Ary1LdPr
  loc_6E7A63: MemStStrCopy
  loc_6E7A67: LitStr vbNullString
  loc_6E7A6A: FLdI2 var_AE
  loc_6E7A6D: CI4UI1
  loc_6E7A6E: FLdPr Me
  loc_6E7A71: MemLdStr global_124
  loc_6E7A74: Ary1LdPr
  loc_6E7A75: MemStStrCopy
  loc_6E7A79: LitStr vbNullString
  loc_6E7A7C: FLdI2 var_AE
  loc_6E7A7F: CI4UI1
  loc_6E7A80: FLdPr Me
  loc_6E7A83: MemLdStr global_124
  loc_6E7A86: Ary1LdPr
  loc_6E7A87: MemStStrCopy
  loc_6E7A8B: FLdRfVar var_AE
  loc_6E7A8E: NextI2 var_214, loc_6E7A0D
  loc_6E7A93: LitI2_Byte 1
  loc_6E7A95: FLdRfVar var_AE
  loc_6E7A98: LitI4 2
  loc_6E7A9D: ImpAdLdRf MemVar_74C9C8
  loc_6E7AA0: Ary1LdI2
  loc_6E7AA1: ForI2 var_218
  loc_6E7AA7: LitStr vbNullString
  loc_6E7AAA: FLdI2 var_AE
  loc_6E7AAD: CI4UI1
  loc_6E7AAE: FLdPr Me
  loc_6E7AB1: MemLdStr global_128
  loc_6E7AB4: Ary1LdPr
  loc_6E7AB5: MemStStrCopy
  loc_6E7AB9: LitStr vbNullString
  loc_6E7ABC: FLdI2 var_AE
  loc_6E7ABF: CI4UI1
  loc_6E7AC0: FLdPr Me
  loc_6E7AC3: MemLdStr global_128
  loc_6E7AC6: Ary1LdPr
  loc_6E7AC7: MemStStrCopy
  loc_6E7ACB: LitStr vbNullString
  loc_6E7ACE: FLdI2 var_AE
  loc_6E7AD1: CI4UI1
  loc_6E7AD2: FLdPr Me
  loc_6E7AD5: MemLdStr global_128
  loc_6E7AD8: Ary1LdPr
  loc_6E7AD9: MemStStrCopy
  loc_6E7ADD: LitStr vbNullString
  loc_6E7AE0: FLdI2 var_AE
  loc_6E7AE3: CI4UI1
  loc_6E7AE4: FLdPr Me
  loc_6E7AE7: MemLdStr global_128
  loc_6E7AEA: Ary1LdPr
  loc_6E7AEB: MemStStrCopy
  loc_6E7AEF: LitStr vbNullString
  loc_6E7AF2: FLdI2 var_AE
  loc_6E7AF5: CI4UI1
  loc_6E7AF6: FLdPr Me
  loc_6E7AF9: MemLdStr global_128
  loc_6E7AFC: Ary1LdPr
  loc_6E7AFD: MemStStrCopy
  loc_6E7B01: LitStr vbNullString
  loc_6E7B04: FLdI2 var_AE
  loc_6E7B07: CI4UI1
  loc_6E7B08: FLdPr Me
  loc_6E7B0B: MemLdStr global_128
  loc_6E7B0E: Ary1LdPr
  loc_6E7B0F: MemStStrCopy
  loc_6E7B13: LitStr vbNullString
  loc_6E7B16: FLdI2 var_AE
  loc_6E7B19: CI4UI1
  loc_6E7B1A: FLdPr Me
  loc_6E7B1D: MemLdStr global_128
  loc_6E7B20: Ary1LdPr
  loc_6E7B21: MemStStrCopy
  loc_6E7B25: FLdRfVar var_AE
  loc_6E7B28: NextI2 var_218, loc_6E7AA7
  loc_6E7B2D: LitI2_Byte 1
  loc_6E7B2F: FStI2 var_AE
  loc_6E7B32: LitI2_Byte 1
  loc_6E7B34: FStI2 var_B0
  loc_6E7B37: FLdI2 var_C2
  loc_6E7B3A: CI4UI1
  loc_6E7B3B: ILdI4 sValor
  loc_6E7B3E: FnLenStr
  loc_6E7B3F: LeI4
  loc_6E7B40: BranchF loc_6E7D39
  loc_6E7B43: LitVar_Missing var_110
  loc_6E7B46: FLdI2 var_C2
  loc_6E7B49: CI4UI1
  loc_6E7B4A: ILdRf sValor
  loc_6E7B4D: CVarRef
  loc_6E7B52: FLdRfVar var_120
  loc_6E7B55: ImpAdCallFPR4  = Mid(, , )
  loc_6E7B5A: FLdI2 var_C2
  loc_6E7B5D: LitI2_Byte 2
  loc_6E7B5F: AddI2
  loc_6E7B60: LitI2_Byte 7
  loc_6E7B62: PopTmpLdAd2 var_196
  loc_6E7B65: FLdRfVar var_B4
  loc_6E7B68: FLdRfVar var_AC
  loc_6E7B6B: PopTmpLdAdStr var_194
  loc_6E7B6E: FLdRfVar var_120
  loc_6E7B71: CStrVarTmp
  loc_6E7B72: PopTmpLdAdStr
  loc_6E7B76: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6E7B7B: AddI2
  loc_6E7B7C: FStI2 var_C2
  loc_6E7B7F: FFree1Str var_D0
  loc_6E7B82: FFreeVar var_110 = ""
  loc_6E7B89: LitI4 2
  loc_6E7B8E: FLdRfVar var_AC
  loc_6E7B91: Ary1LdI4
  loc_6E7B92: ImpAdCallFPR4 push Val()
  loc_6E7B97: CR8R8
  loc_6E7B98: LitI2_Byte 1
  loc_6E7B9A: CR8I2
  loc_6E7B9B: EqR4
  loc_6E7B9C: FLdI2 var_AE
  loc_6E7B9F: LitI4 1
  loc_6E7BA4: ImpAdLdRf MemVar_74C9C8
  loc_6E7BA7: Ary1LdI2
  loc_6E7BA8: LeI2
  loc_6E7BA9: AndI4
  loc_6E7BAA: BranchF loc_6E7C61
  loc_6E7BAD: LitI4 1
  loc_6E7BB2: FLdRfVar var_AC
  loc_6E7BB5: Ary1LdI4
  loc_6E7BB6: FLdI2 var_AE
  loc_6E7BB9: CI4UI1
  loc_6E7BBA: FLdPr Me
  loc_6E7BBD: MemLdStr global_124
  loc_6E7BC0: Ary1LdPr
  loc_6E7BC1: MemStStrCopy
  loc_6E7BC5: LitI4 2
  loc_6E7BCA: FLdRfVar var_AC
  loc_6E7BCD: Ary1LdI4
  loc_6E7BCE: FLdI2 var_AE
  loc_6E7BD1: CI4UI1
  loc_6E7BD2: FLdPr Me
  loc_6E7BD5: MemLdStr global_124
  loc_6E7BD8: Ary1LdPr
  loc_6E7BD9: MemStStrCopy
  loc_6E7BDD: LitI4 3
  loc_6E7BE2: FLdRfVar var_AC
  loc_6E7BE5: Ary1LdI4
  loc_6E7BE6: FLdI2 var_AE
  loc_6E7BE9: CI4UI1
  loc_6E7BEA: FLdPr Me
  loc_6E7BED: MemLdStr global_124
  loc_6E7BF0: Ary1LdPr
  loc_6E7BF1: MemStStrCopy
  loc_6E7BF5: LitI4 4
  loc_6E7BFA: FLdRfVar var_AC
  loc_6E7BFD: Ary1LdI4
  loc_6E7BFE: FLdI2 var_AE
  loc_6E7C01: CI4UI1
  loc_6E7C02: FLdPr Me
  loc_6E7C05: MemLdStr global_124
  loc_6E7C08: Ary1LdPr
  loc_6E7C09: MemStStrCopy
  loc_6E7C0D: LitI4 5
  loc_6E7C12: FLdRfVar var_AC
  loc_6E7C15: Ary1LdI4
  loc_6E7C16: FLdI2 var_AE
  loc_6E7C19: CI4UI1
  loc_6E7C1A: FLdPr Me
  loc_6E7C1D: MemLdStr global_124
  loc_6E7C20: Ary1LdPr
  loc_6E7C21: MemStStrCopy
  loc_6E7C25: LitI4 6
  loc_6E7C2A: FLdRfVar var_AC
  loc_6E7C2D: Ary1LdI4
  loc_6E7C2E: FLdI2 var_AE
  loc_6E7C31: CI4UI1
  loc_6E7C32: FLdPr Me
  loc_6E7C35: MemLdStr global_124
  loc_6E7C38: Ary1LdPr
  loc_6E7C39: MemStStrCopy
  loc_6E7C3D: LitI4 7
  loc_6E7C42: FLdRfVar var_AC
  loc_6E7C45: Ary1LdI4
  loc_6E7C46: FLdI2 var_AE
  loc_6E7C49: CI4UI1
  loc_6E7C4A: FLdPr Me
  loc_6E7C4D: MemLdStr global_124
  loc_6E7C50: Ary1LdPr
  loc_6E7C51: MemStStrCopy
  loc_6E7C55: FLdI2 var_AE
  loc_6E7C58: LitI2_Byte 1
  loc_6E7C5A: AddI2
  loc_6E7C5B: FStI2 var_AE
  loc_6E7C5E: Branch loc_6E7D36
  loc_6E7C61: LitI4 2
  loc_6E7C66: FLdRfVar var_AC
  loc_6E7C69: Ary1LdI4
  loc_6E7C6A: ImpAdCallFPR4 push Val()
  loc_6E7C6F: CR8R8
  loc_6E7C70: LitI2_Byte 2
  loc_6E7C72: CR8I2
  loc_6E7C73: EqR4
  loc_6E7C74: FLdI2 var_B0
  loc_6E7C77: LitI4 2
  loc_6E7C7C: ImpAdLdRf MemVar_74C9C8
  loc_6E7C7F: Ary1LdI2
  loc_6E7C80: LeI2
  loc_6E7C81: AndI4
  loc_6E7C82: BranchF loc_6E7D36
  loc_6E7C85: LitI4 1
  loc_6E7C8A: FLdRfVar var_AC
  loc_6E7C8D: Ary1LdI4
  loc_6E7C8E: FLdI2 var_B0
  loc_6E7C91: CI4UI1
  loc_6E7C92: FLdPr Me
  loc_6E7C95: MemLdStr global_128
  loc_6E7C98: Ary1LdPr
  loc_6E7C99: MemStStrCopy
  loc_6E7C9D: LitI4 2
  loc_6E7CA2: FLdRfVar var_AC
  loc_6E7CA5: Ary1LdI4
  loc_6E7CA6: FLdI2 var_B0
  loc_6E7CA9: CI4UI1
  loc_6E7CAA: FLdPr Me
  loc_6E7CAD: MemLdStr global_128
  loc_6E7CB0: Ary1LdPr
  loc_6E7CB1: MemStStrCopy
  loc_6E7CB5: LitI4 3
  loc_6E7CBA: FLdRfVar var_AC
  loc_6E7CBD: Ary1LdI4
  loc_6E7CBE: FLdI2 var_B0
  loc_6E7CC1: CI4UI1
  loc_6E7CC2: FLdPr Me
  loc_6E7CC5: MemLdStr global_128
  loc_6E7CC8: Ary1LdPr
  loc_6E7CC9: MemStStrCopy
  loc_6E7CCD: LitI4 4
  loc_6E7CD2: FLdRfVar var_AC
  loc_6E7CD5: Ary1LdI4
  loc_6E7CD6: FLdI2 var_B0
  loc_6E7CD9: CI4UI1
  loc_6E7CDA: FLdPr Me
  loc_6E7CDD: MemLdStr global_128
  loc_6E7CE0: Ary1LdPr
  loc_6E7CE1: MemStStrCopy
  loc_6E7CE5: LitI4 5
  loc_6E7CEA: FLdRfVar var_AC
  loc_6E7CED: Ary1LdI4
  loc_6E7CEE: FLdI2 var_B0
  loc_6E7CF1: CI4UI1
  loc_6E7CF2: FLdPr Me
  loc_6E7CF5: MemLdStr global_128
  loc_6E7CF8: Ary1LdPr
  loc_6E7CF9: MemStStrCopy
  loc_6E7CFD: LitI4 6
  loc_6E7D02: FLdRfVar var_AC
  loc_6E7D05: Ary1LdI4
  loc_6E7D06: FLdI2 var_B0
  loc_6E7D09: CI4UI1
  loc_6E7D0A: FLdPr Me
  loc_6E7D0D: MemLdStr global_128
  loc_6E7D10: Ary1LdPr
  loc_6E7D11: MemStStrCopy
  loc_6E7D15: LitI4 7
  loc_6E7D1A: FLdRfVar var_AC
  loc_6E7D1D: Ary1LdI4
  loc_6E7D1E: FLdI2 var_B0
  loc_6E7D21: CI4UI1
  loc_6E7D22: FLdPr Me
  loc_6E7D25: MemLdStr global_128
  loc_6E7D28: Ary1LdPr
  loc_6E7D29: MemStStrCopy
  loc_6E7D2D: FLdI2 var_B0
  loc_6E7D30: LitI2_Byte 1
  loc_6E7D32: AddI2
  loc_6E7D33: FStI2 var_B0
  loc_6E7D36: Branch loc_6E7B37
  loc_6E7D39: LitI2_Byte 1
  loc_6E7D3B: FLdRfVar var_AE
  loc_6E7D3E: LitI4 1
  loc_6E7D43: ImpAdLdRf MemVar_74C9C8
  loc_6E7D46: Ary1LdI2
  loc_6E7D47: ForI2 var_21C
  loc_6E7D4D: FLdI2 var_AE
  loc_6E7D50: CI4UI1
  loc_6E7D51: FLdPr Me
  loc_6E7D54: MemLdStr global_124
  loc_6E7D57: Ary1LdPr
  loc_6E7D58: MemLdStr global_0
  loc_6E7D5B: LitStr vbNullString
  loc_6E7D5E: EqStr
  loc_6E7D60: BranchF loc_6E7D8E
  loc_6E7D63: LitStr "TR03"
  loc_6E7D66: FLdI2 var_AE
  loc_6E7D69: CI4UI1
  loc_6E7D6A: FLdPr Me
  loc_6E7D6D: MemLdStr global_124
  loc_6E7D70: Ary1LdPr
  loc_6E7D71: MemStStrCopy
  loc_6E7D75: LitI2_Byte 1
  loc_6E7D77: CStrUI1
  loc_6E7D79: FStStrNoPop var_D0
  loc_6E7D7C: FLdI2 var_AE
  loc_6E7D7F: CI4UI1
  loc_6E7D80: FLdPr Me
  loc_6E7D83: MemLdStr global_124
  loc_6E7D86: Ary1LdPr
  loc_6E7D87: MemStStrCopy
  loc_6E7D8B: FFree1Str var_D0
  loc_6E7D8E: LitStr "INSERT INTO CLP_DETALLE(cod_reg, tipo, nro_doc, cod, descrip, vol, monto)"
  loc_6E7D91: FStStrCopy var_BC
  loc_6E7D94: ILdRf var_BC
  loc_6E7D97: LitStr " VALUES ('"
  loc_6E7D9A: ConcatStr
  loc_6E7D9B: FStStrNoPop var_D0
  loc_6E7D9E: FLdI2 var_AE
  loc_6E7DA1: CI4UI1
  loc_6E7DA2: FLdPr Me
  loc_6E7DA5: MemLdStr global_124
  loc_6E7DA8: Ary1LdPr
  loc_6E7DA9: MemLdStr global_0
  loc_6E7DAC: ConcatStr
  loc_6E7DAD: FStStrNoPop var_19C
  loc_6E7DB0: LitStr "',"
  loc_6E7DB3: ConcatStr
  loc_6E7DB4: FStStrNoPop var_1A0
  loc_6E7DB7: FLdI2 var_AE
  loc_6E7DBA: CI4UI1
  loc_6E7DBB: FLdPr Me
  loc_6E7DBE: MemLdStr global_124
  loc_6E7DC1: Ary1LdPr
  loc_6E7DC2: MemLdStr global_4
  loc_6E7DC5: ConcatStr
  loc_6E7DC6: FStStrNoPop var_1A4
  loc_6E7DC9: LitStr ",'"
  loc_6E7DCC: ConcatStr
  loc_6E7DCD: FStStrNoPop var_1A8
  loc_6E7DD0: FLdI2 var_AE
  loc_6E7DD3: CI4UI1
  loc_6E7DD4: FLdPr Me
  loc_6E7DD7: MemLdStr global_124
  loc_6E7DDA: Ary1LdPr
  loc_6E7DDB: MemLdStr global_8
  loc_6E7DDE: ConcatStr
  loc_6E7DDF: FStStrNoPop var_1AC
  loc_6E7DE2: LitStr "',"
  loc_6E7DE5: ConcatStr
  loc_6E7DE6: FStStr var_BC
  loc_6E7DE9: FFreeStr var_D0 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = ""
  loc_6E7DF8: FLdI2 var_AE
  loc_6E7DFB: CI4UI1
  loc_6E7DFC: FLdPr Me
  loc_6E7DFF: MemLdStr global_124
  loc_6E7E02: AryLock
  loc_6E7E05: Ary1LdPr
  loc_6E7E06: MemLdRfVar from_stack_1.global_20
  loc_6E7E09: CVarRef
  loc_6E7E0E: LitVarI2 var_180, 0
  loc_6E7E13: FLdI2 var_AE
  loc_6E7E16: CI4UI1
  loc_6E7E17: FLdPr Me
  loc_6E7E1A: MemLdStr global_124
  loc_6E7E1D: Ary1LdPr
  loc_6E7E1E: MemLdStr global_20
  loc_6E7E21: LitStr vbNullString
  loc_6E7E24: EqStr
  loc_6E7E26: CVarBoolI2 var_264
  loc_6E7E2A: FLdRfVar var_190
  loc_6E7E2D: ImpAdCallFPR4  = IIf(, , )
  loc_6E7E32: AryUnlock
  loc_6E7E35: FLdRfVar var_1A0
  loc_6E7E38: LitI2_Byte 8
  loc_6E7E3A: PopTmpLdAd2 var_196
  loc_6E7E3D: FLdRfVar var_190
  loc_6E7E40: CStrVarTmp
  loc_6E7E41: PopTmpLdAdStr
  loc_6E7E45: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E7E4A: FLdZeroAd var_1A0
  loc_6E7E4D: PopTmpLdAdStr
  loc_6E7E51: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E7E56: FStStr var_1C4
  loc_6E7E59: FLdI2 var_AE
  loc_6E7E5C: CI4UI1
  loc_6E7E5D: FLdPr Me
  loc_6E7E60: MemLdStr global_124
  loc_6E7E63: AryLock
  loc_6E7E66: Ary1LdPr
  loc_6E7E67: MemLdRfVar from_stack_1.global_24
  loc_6E7E6A: CVarRef
  loc_6E7E6F: LitVarI2 var_210, 0
  loc_6E7E74: FLdI2 var_AE
  loc_6E7E77: CI4UI1
  loc_6E7E78: FLdPr Me
  loc_6E7E7B: MemLdStr global_124
  loc_6E7E7E: Ary1LdPr
  loc_6E7E7F: MemLdStr global_24
  loc_6E7E82: LitStr vbNullString
  loc_6E7E85: EqStr
  loc_6E7E87: CVarBoolI2 var_2A8
  loc_6E7E8B: FLdRfVar var_2DC
  loc_6E7E8E: ImpAdCallFPR4  = IIf(, , )
  loc_6E7E93: AryUnlock
  loc_6E7E96: FLdRfVar var_1B0
  loc_6E7E99: LitI2_Byte &H10
  loc_6E7E9B: PopTmpLdAd2 var_1B4
  loc_6E7E9E: FLdRfVar var_2DC
  loc_6E7EA1: CStrVarTmp
  loc_6E7EA2: PopTmpLdAdStr
  loc_6E7EA6: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E7EAB: FLdZeroAd var_1B0
  loc_6E7EAE: PopTmpLdAdStr
  loc_6E7EB2: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E7EB7: FStStr var_1C8
  loc_6E7EBA: ILdRf var_BC
  loc_6E7EBD: CVarStr var_230
  loc_6E7EC0: FLdI2 var_AE
  loc_6E7EC3: CI4UI1
  loc_6E7EC4: FLdPr Me
  loc_6E7EC7: MemLdStr global_124
  loc_6E7ECA: AryLock
  loc_6E7ECD: Ary1LdPr
  loc_6E7ECE: MemLdRfVar from_stack_1.global_12
  loc_6E7ED1: CVarRef
  loc_6E7ED6: LitVarI2 var_110, 0
  loc_6E7EDB: FLdI2 var_AE
  loc_6E7EDE: CI4UI1
  loc_6E7EDF: FLdPr Me
  loc_6E7EE2: MemLdStr global_124
  loc_6E7EE5: Ary1LdPr
  loc_6E7EE6: MemLdStr global_12
  loc_6E7EE9: LitStr vbNullString
  loc_6E7EEC: EqStr
  loc_6E7EEE: CVarBoolI2 var_E0
  loc_6E7EF2: FLdRfVar var_120
  loc_6E7EF5: ImpAdCallFPR4  = IIf(, , )
  loc_6E7EFA: AryUnlock
  loc_6E7EFD: FLdRfVar var_120
  loc_6E7F00: ConcatVar var_130
  loc_6E7F04: LitVarStr var_240, ",'"
  loc_6E7F09: ConcatVar var_140
  loc_6E7F0D: FLdRfVar var_D0
  loc_6E7F10: FLdI2 var_AE
  loc_6E7F13: CI4UI1
  loc_6E7F14: FLdPr Me
  loc_6E7F17: MemLdStr global_124
  loc_6E7F1A: AryLock
  loc_6E7F1D: Ary1LdPr
  loc_6E7F1E: MemLdRfVar from_stack_1.global_16
  loc_6E7F21: from_stack_2v = Proc_100_48_61895C(from_stack_1v)
  loc_6E7F26: AryUnlock
  loc_6E7F29: FLdZeroAd var_D0
  loc_6E7F2C: CVarStr var_150
  loc_6E7F2F: ConcatVar var_160
  loc_6E7F33: LitVarStr var_254, "','"
  loc_6E7F38: ConcatVar var_170
  loc_6E7F3C: LitI2_Byte 3
  loc_6E7F3E: CUI1I2
  loc_6E7F40: PopTmpLdAd1
  loc_6E7F44: FLdZeroAd var_1C4
  loc_6E7F47: PopTmpLdAdStr
  loc_6E7F4B: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E7F50: CVarStr var_1E0
  loc_6E7F53: ConcatVar var_1F0
  loc_6E7F57: LitVarStr var_298, "','"
  loc_6E7F5C: ConcatVar var_200
  loc_6E7F60: LitI2_Byte 3
  loc_6E7F62: CUI1I2
  loc_6E7F64: PopTmpLdAd1
  loc_6E7F68: FLdZeroAd var_1C8
  loc_6E7F6B: PopTmpLdAdStr
  loc_6E7F6F: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E7F74: CVarStr var_2EC
  loc_6E7F77: ConcatVar var_2FC
  loc_6E7F7B: LitVarStr var_30C, "')"
  loc_6E7F80: ConcatVar var_31C
  loc_6E7F84: CStrVarTmp
  loc_6E7F85: FStStr var_BC
  loc_6E7F88: FFreeStr var_19C = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B8 = "": var_1C0 = "": var_1C4 = ""
  loc_6E7F9B: FFreeVar var_E0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_264 = "": var_180 = "": var_190 = "": var_170 = "": var_1E0 = "": var_1F0 = "": var_2A8 = "": var_210 = "": var_2DC = "": var_200 = "": var_2EC = "": var_2FC = ""
  loc_6E7FC6: LitVarI4
  loc_6E7FCE: PopAdLdVar
  loc_6E7FCF: ILdRf var_BC
  loc_6E7FD2: FLdPr Me
  loc_6E7FD5: MemLdPr DBase
  loc_6E7FD8: Me.Execute from_stack_1, from_stack_2
  loc_6E7FDD: FLdRfVar var_AE
  loc_6E7FE0: NextI2 var_21C, loc_6E7D4D
  loc_6E7FE5: LitI2_Byte 1
  loc_6E7FE7: FLdRfVar var_AE
  loc_6E7FEA: LitI4 2
  loc_6E7FEF: ImpAdLdRf MemVar_74C9C8
  loc_6E7FF2: Ary1LdI2
  loc_6E7FF3: ForI2 var_324
  loc_6E7FF9: FLdI2 var_AE
  loc_6E7FFC: CI4UI1
  loc_6E7FFD: FLdPr Me
  loc_6E8000: MemLdStr global_128
  loc_6E8003: AryLock
  loc_6E8006: Ary1LdPr
  loc_6E8007: MemLdRfVar from_stack_1.global_20
  loc_6E800A: CVarRef
  loc_6E800F: FLdRfVar var_110
  loc_6E8012: ImpAdCallFPR4  = Trim()
  loc_6E8017: AryUnlock
  loc_6E801A: FLdRfVar var_110
  loc_6E801D: FnLenVar var_120
  loc_6E8021: LitVarI2 var_F0, 0
  loc_6E8026: HardType
  loc_6E8027: EqVarBool
  loc_6E8029: FFree1Var var_110 = ""
  loc_6E802C: BranchF loc_6E8038
  loc_6E802F: LitStr " "
  loc_6E8032: FStStrCopy var_320
  loc_6E8035: Branch loc_6E80C4
  loc_6E8038: FLdI2 var_AE
  loc_6E803B: CI4UI1
  loc_6E803C: FLdPr Me
  loc_6E803F: MemLdStr global_128
  loc_6E8042: AryLock
  loc_6E8045: Ary1LdPr
  loc_6E8046: MemLdRfVar from_stack_1.global_20
  loc_6E8049: CVarRef
  loc_6E804E: LitVarI2 var_110, 0
  loc_6E8053: FLdI2 var_AE
  loc_6E8056: CI4UI1
  loc_6E8057: FLdPr Me
  loc_6E805A: MemLdStr global_128
  loc_6E805D: Ary1LdPr
  loc_6E805E: MemLdStr global_20
  loc_6E8061: LitStr vbNullString
  loc_6E8064: EqStr
  loc_6E8066: CVarBoolI2 var_E0
  loc_6E806A: FLdRfVar var_120
  loc_6E806D: ImpAdCallFPR4  = IIf(, , )
  loc_6E8072: AryUnlock
  loc_6E8075: FLdRfVar var_19C
  loc_6E8078: LitI2_Byte 8
  loc_6E807A: PopTmpLdAd2 var_196
  loc_6E807D: FLdRfVar var_120
  loc_6E8080: CStrVarTmp
  loc_6E8081: PopTmpLdAdStr
  loc_6E8085: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E808A: FLdZeroAd var_19C
  loc_6E808D: PopTmpLdAdStr
  loc_6E8091: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E8096: FStStr var_1A8
  loc_6E8099: LitI2_Byte 3
  loc_6E809B: CUI1I2
  loc_6E809D: PopTmpLdAd1
  loc_6E80A1: FLdZeroAd var_1A8
  loc_6E80A4: PopTmpLdAdStr
  loc_6E80A8: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E80AD: FStStr var_320
  loc_6E80B0: FFreeStr var_D0 = "": var_1A0 = "": var_1A4 = ""
  loc_6E80BB: FFreeVar var_E0 = "": var_110 = ""
  loc_6E80C4: FLdI2 var_AE
  loc_6E80C7: CI4UI1
  loc_6E80C8: FLdPr Me
  loc_6E80CB: MemLdStr global_128
  loc_6E80CE: Ary1LdPr
  loc_6E80CF: MemLdStr global_0
  loc_6E80D2: LitStr vbNullString
  loc_6E80D5: EqStr
  loc_6E80D7: BranchF loc_6E8105
  loc_6E80DA: LitStr "TR03"
  loc_6E80DD: FLdI2 var_AE
  loc_6E80E0: CI4UI1
  loc_6E80E1: FLdPr Me
  loc_6E80E4: MemLdStr global_128
  loc_6E80E7: Ary1LdPr
  loc_6E80E8: MemStStrCopy
  loc_6E80EC: LitI2_Byte 2
  loc_6E80EE: CStrUI1
  loc_6E80F0: FStStrNoPop var_D0
  loc_6E80F3: FLdI2 var_AE
  loc_6E80F6: CI4UI1
  loc_6E80F7: FLdPr Me
  loc_6E80FA: MemLdStr global_128
  loc_6E80FD: Ary1LdPr
  loc_6E80FE: MemStStrCopy
  loc_6E8102: FFree1Str var_D0
  loc_6E8105: LitStr "INSERT INTO CLP_DETALLE(cod_reg, tipo, nro_doc, cod, descrip, vol, monto)"
  loc_6E8108: FStStrCopy var_BC
  loc_6E810B: ILdRf var_BC
  loc_6E810E: LitStr " VALUES ('"
  loc_6E8111: ConcatStr
  loc_6E8112: FStStrNoPop var_D0
  loc_6E8115: FLdI2 var_AE
  loc_6E8118: CI4UI1
  loc_6E8119: FLdPr Me
  loc_6E811C: MemLdStr global_128
  loc_6E811F: Ary1LdPr
  loc_6E8120: MemLdStr global_0
  loc_6E8123: ConcatStr
  loc_6E8124: FStStrNoPop var_19C
  loc_6E8127: LitStr "',"
  loc_6E812A: ConcatStr
  loc_6E812B: FStStrNoPop var_1A0
  loc_6E812E: FLdI2 var_AE
  loc_6E8131: CI4UI1
  loc_6E8132: FLdPr Me
  loc_6E8135: MemLdStr global_128
  loc_6E8138: Ary1LdPr
  loc_6E8139: MemLdStr global_4
  loc_6E813C: ConcatStr
  loc_6E813D: FStStrNoPop var_1A4
  loc_6E8140: LitStr ",'"
  loc_6E8143: ConcatStr
  loc_6E8144: FStStrNoPop var_1A8
  loc_6E8147: FLdI2 var_AE
  loc_6E814A: CI4UI1
  loc_6E814B: FLdPr Me
  loc_6E814E: MemLdStr global_128
  loc_6E8151: Ary1LdPr
  loc_6E8152: MemLdStr global_8
  loc_6E8155: ConcatStr
  loc_6E8156: FStStrNoPop var_1AC
  loc_6E8159: LitStr "',"
  loc_6E815C: ConcatStr
  loc_6E815D: FStStr var_BC
  loc_6E8160: FFreeStr var_D0 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = ""
  loc_6E816F: FLdI2 var_AE
  loc_6E8172: CI4UI1
  loc_6E8173: FLdPr Me
  loc_6E8176: MemLdStr global_128
  loc_6E8179: AryLock
  loc_6E817C: Ary1LdPr
  loc_6E817D: MemLdRfVar from_stack_1.global_24
  loc_6E8180: CVarRef
  loc_6E8185: LitVarI2 var_1E0, 0
  loc_6E818A: FLdI2 var_AE
  loc_6E818D: CI4UI1
  loc_6E818E: FLdPr Me
  loc_6E8191: MemLdStr global_128
  loc_6E8194: Ary1LdPr
  loc_6E8195: MemLdStr global_24
  loc_6E8198: LitStr vbNullString
  loc_6E819B: EqStr
  loc_6E819D: CVarBoolI2 var_284
  loc_6E81A1: FLdRfVar var_1F0
  loc_6E81A4: ImpAdCallFPR4  = IIf(, , )
  loc_6E81A9: AryUnlock
  loc_6E81AC: FLdRfVar var_1A0
  loc_6E81AF: LitI2_Byte &H10
  loc_6E81B1: PopTmpLdAd2 var_196
  loc_6E81B4: FLdRfVar var_1F0
  loc_6E81B7: CStrVarTmp
  loc_6E81B8: PopTmpLdAdStr
  loc_6E81BC: from_stack_3v = Proc_100_50_5EDFC4(from_stack_1v, from_stack_2v)
  loc_6E81C1: FLdZeroAd var_1A0
  loc_6E81C4: PopTmpLdAdStr
  loc_6E81C8: ImpAdCallI2 Proc_87_26_6253BC()
  loc_6E81CD: FStStr var_1AC
  loc_6E81D0: ILdRf var_BC
  loc_6E81D3: CVarStr var_230
  loc_6E81D6: FLdI2 var_AE
  loc_6E81D9: CI4UI1
  loc_6E81DA: FLdPr Me
  loc_6E81DD: MemLdStr global_128
  loc_6E81E0: AryLock
  loc_6E81E3: Ary1LdPr
  loc_6E81E4: MemLdRfVar from_stack_1.global_12
  loc_6E81E7: CVarRef
  loc_6E81EC: LitVarI2 var_110, 0
  loc_6E81F1: FLdI2 var_AE
  loc_6E81F4: CI4UI1
  loc_6E81F5: FLdPr Me
  loc_6E81F8: MemLdStr global_128
  loc_6E81FB: Ary1LdPr
  loc_6E81FC: MemLdStr global_12
  loc_6E81FF: LitStr vbNullString
  loc_6E8202: EqStr
  loc_6E8204: CVarBoolI2 var_E0
  loc_6E8208: FLdRfVar var_120
  loc_6E820B: ImpAdCallFPR4  = IIf(, , )
  loc_6E8210: AryUnlock
  loc_6E8213: FLdRfVar var_120
  loc_6E8216: ConcatVar var_130
  loc_6E821A: LitVarStr var_240, ",'"
  loc_6E821F: ConcatVar var_140
  loc_6E8223: FLdRfVar var_D0
  loc_6E8226: FLdI2 var_AE
  loc_6E8229: CI4UI1
  loc_6E822A: FLdPr Me
  loc_6E822D: MemLdStr global_128
  loc_6E8230: AryLock
  loc_6E8233: Ary1LdPr
  loc_6E8234: MemLdRfVar from_stack_1.global_16
  loc_6E8237: from_stack_2v = Proc_100_48_61895C(from_stack_1v)
  loc_6E823C: AryUnlock
  loc_6E823F: FLdZeroAd var_D0
  loc_6E8242: CVarStr var_150
  loc_6E8245: ConcatVar var_160
  loc_6E8249: LitVarStr var_254, "','"
  loc_6E824E: ConcatVar var_170
  loc_6E8252: ILdRf var_320
  loc_6E8255: CVarStr var_264
  loc_6E8258: ConcatVar var_180
  loc_6E825C: LitVarStr var_274, "','"
  loc_6E8261: ConcatVar var_190
  loc_6E8265: LitI2_Byte 3
  loc_6E8267: CUI1I2
  loc_6E8269: PopTmpLdAd1
  loc_6E826D: FLdZeroAd var_1AC
  loc_6E8270: PopTmpLdAdStr
  loc_6E8274: ImpAdCallI2  = Proc_87_27_638F78()
  loc_6E8279: CVarStr var_200
  loc_6E827C: ConcatVar var_210
  loc_6E8280: LitVarStr var_2B8, "')"
  loc_6E8285: ConcatVar var_2DC
  loc_6E8289: CStrVarTmp
  loc_6E828A: FStStr var_BC
  loc_6E828D: FFreeStr var_19C = "": var_1A4 = "": var_1A8 = ""
  loc_6E8298: FFreeVar var_E0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_284 = "": var_1E0 = "": var_1F0 = "": var_190 = "": var_200 = "": var_210 = ""
  loc_6E82BB: LitVarI4
  loc_6E82C3: PopAdLdVar
  loc_6E82C4: ILdRf var_BC
  loc_6E82C7: FLdPr Me
  loc_6E82CA: MemLdPr DBase
  loc_6E82CD: Me.Execute from_stack_1, from_stack_2
  loc_6E82D2: FLdRfVar var_AE
  loc_6E82D5: NextI2 var_324, loc_6E7FF9
  loc_6E82DA: FLdPr Me
  loc_6E82DD: MemLdPr DBase
  loc_6E82E0: Me.Close
  loc_6E82E5: ExitProcCbHresult
  loc_6E82EB: FLdPr Me
  loc_6E82EE: MemLdPr DBase
  loc_6E82F1: Me.Close
  loc_6E82F6: FLdRfVar var_D0
  loc_6E82F9: ImpAdCallI2 Err 'rtcErrObj
  loc_6E82FE: FStAdFunc var_CC
  loc_6E8301: FLdPr var_CC
  loc_6E8304:  = Err.Description
  loc_6E8309: LitVar_Missing var_140
  loc_6E830C: LitVar_Missing var_130
  loc_6E830F: LitVar_Missing var_120
  loc_6E8312: LitI4 &H10
  loc_6E8317: FLdZeroAd var_D0
  loc_6E831A: CVarStr var_110
  loc_6E831D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E8322: FFree1Ad var_CC
  loc_6E8325: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_6E8330: ExitProcCbHresult
End Function

Public Function OldCLPDocument(sValor) '6F119C
  'Data Table: 440CF4
  loc_6F041C: ZeroRetValVar
  loc_6F041E: OnErrorGoto loc_6F114F
  loc_6F0421: LitI2_Byte 0
  loc_6F0423: FStI2 var_C4
  loc_6F0426: FLdRfVar var_D0
  loc_6F0429: FLdRfVar var_CC
  loc_6F042C: ImpAdLdRf MemVar_7520D4
  loc_6F042F: NewIfNullPr Global
  loc_6F0432:  = Global.App
  loc_6F0437: FLdPr var_CC
  loc_6F043A:  = App.Path
  loc_6F043F: ILdRf var_D0
  loc_6F0442: LitStr "\REPORTE.MDB"
  loc_6F0445: ConcatStr
  loc_6F0446: FStStr var_B8
  loc_6F0449: FFree1Str var_D0
  loc_6F044C: FFree1Ad var_CC
  loc_6F044F: FLdRfVar var_CC
  loc_6F0452: LitVar_Missing var_100
  loc_6F0455: PopAdLdVar
  loc_6F0456: LitVar_Missing var_F0
  loc_6F0459: PopAdLdVar
  loc_6F045A: LitVar_TRUE var_E0
  loc_6F045D: PopAdLdVar
  loc_6F045E: ILdRf var_B8
  loc_6F0461: ImpAdLdRf MemVar_752164
  loc_6F0464: NewIfNullPr Me
  loc_6F0467: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6F046C: ILdRf var_CC
  loc_6F046F: FLdPr Me
  loc_6F0472: MemStAd
  loc_6F0476: FFree1Ad var_CC
  loc_6F0479: LitI4 4
  loc_6F047E: FLdRfVar var_110
  loc_6F0481: ImpAdCallFPR4  = Chr()
  loc_6F0486: FLdRfVar var_110
  loc_6F0489: LitI4 &HC
  loc_6F048E: FLdRfVar var_120
  loc_6F0491: ImpAdCallFPR4  = Chr()
  loc_6F0496: FLdRfVar var_120
  loc_6F0499: ConcatVar var_130
  loc_6F049D: LitI4 8
  loc_6F04A2: FLdRfVar var_140
  loc_6F04A5: ImpAdCallFPR4  = Chr()
  loc_6F04AA: FLdRfVar var_140
  loc_6F04AD: ConcatVar var_150
  loc_6F04B1: LitI4 &HA
  loc_6F04B6: FLdRfVar var_160
  loc_6F04B9: ImpAdCallFPR4  = Chr()
  loc_6F04BE: FLdRfVar var_160
  loc_6F04C1: ConcatVar var_170
  loc_6F04C5: LitI4 &HA
  loc_6F04CA: FLdRfVar var_180
  loc_6F04CD: ImpAdCallFPR4  = Chr()
  loc_6F04D2: FLdRfVar var_180
  loc_6F04D5: ConcatVar var_190
  loc_6F04D9: LitI4 &HA
  loc_6F04DE: FLdRfVar var_1A0
  loc_6F04E1: ImpAdCallFPR4  = Chr()
  loc_6F04E6: FLdRfVar var_1A0
  loc_6F04E9: ConcatVar var_1B0
  loc_6F04ED: LitI4 &HA
  loc_6F04F2: FLdRfVar var_1C0
  loc_6F04F5: ImpAdCallFPR4  = Chr()
  loc_6F04FA: FLdRfVar var_1C0
  loc_6F04FD: ConcatVar var_1D0
  loc_6F0501: LitI4 &HA
  loc_6F0506: FLdRfVar var_1E0
  loc_6F0509: ImpAdCallFPR4  = Chr()
  loc_6F050E: FLdRfVar var_1E0
  loc_6F0511: ConcatVar var_1F0
  loc_6F0515: LitI4 &HA
  loc_6F051A: FLdRfVar var_200
  loc_6F051D: ImpAdCallFPR4  = Chr()
  loc_6F0522: FLdRfVar var_200
  loc_6F0525: ConcatVar var_210
  loc_6F0529: LitI4 &HA
  loc_6F052E: FLdRfVar var_220
  loc_6F0531: ImpAdCallFPR4  = Chr()
  loc_6F0536: FLdRfVar var_220
  loc_6F0539: ConcatVar var_230
  loc_6F053D: LitI4 &HA
  loc_6F0542: FLdRfVar var_240
  loc_6F0545: ImpAdCallFPR4  = Chr()
  loc_6F054A: FLdRfVar var_240
  loc_6F054D: ConcatVar var_250
  loc_6F0551: LitI4 8
  loc_6F0556: FLdRfVar var_260
  loc_6F0559: ImpAdCallFPR4  = Chr()
  loc_6F055E: FLdRfVar var_260
  loc_6F0561: ConcatVar var_270
  loc_6F0565: LitI4 8
  loc_6F056A: FLdRfVar var_280
  loc_6F056D: ImpAdCallFPR4  = Chr()
  loc_6F0572: FLdRfVar var_280
  loc_6F0575: ConcatVar var_290
  loc_6F0579: LitI4 &HA
  loc_6F057E: FLdRfVar var_2A0
  loc_6F0581: ImpAdCallFPR4  = Chr()
  loc_6F0586: FLdRfVar var_2A0
  loc_6F0589: ConcatVar var_2B0
  loc_6F058D: LitI4 &HA
  loc_6F0592: FLdRfVar var_2C0
  loc_6F0595: ImpAdCallFPR4  = Chr()
  loc_6F059A: FLdRfVar var_2C0
  loc_6F059D: ConcatVar var_2D0
  loc_6F05A1: LitI4 &HA
  loc_6F05A6: FLdRfVar var_2E0
  loc_6F05A9: ImpAdCallFPR4  = Chr()
  loc_6F05AE: FLdRfVar var_2E0
  loc_6F05B1: ConcatVar var_2F0
  loc_6F05B5: LitI4 &HA
  loc_6F05BA: FLdRfVar var_300
  loc_6F05BD: ImpAdCallFPR4  = Chr()
  loc_6F05C2: FLdRfVar var_300
  loc_6F05C5: ConcatVar var_310
  loc_6F05C9: LitI4 &HA
  loc_6F05CE: FLdRfVar var_320
  loc_6F05D1: ImpAdCallFPR4  = Chr()
  loc_6F05D6: FLdRfVar var_320
  loc_6F05D9: ConcatVar var_330
  loc_6F05DD: LitI4 &HA
  loc_6F05E2: FLdRfVar var_340
  loc_6F05E5: ImpAdCallFPR4  = Chr()
  loc_6F05EA: FLdRfVar var_340
  loc_6F05ED: ConcatVar var_350
  loc_6F05F1: CStrVarTmp
  loc_6F05F2: FStStr var_B4
  loc_6F05F5: FFreeVar var_2F0 = "": var_300 = "": var_310 = "": var_320 = "": var_330 = "": var_340 = "": var_350 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = ""
  loc_6F0642: LitI2_Byte &H18
  loc_6F0644: FStI2 var_C2
  loc_6F0647: LitVar_Missing var_110
  loc_6F064A: FLdI2 var_C2
  loc_6F064D: CI4UI1
  loc_6F064E: ILdRf sValor
  loc_6F0651: CVarRef
  loc_6F0656: FLdRfVar var_120
  loc_6F0659: ImpAdCallFPR4  = Mid(, , )
  loc_6F065E: FLdI2 var_C2
  loc_6F0661: LitI2_Byte 2
  loc_6F0663: AddI2
  loc_6F0664: LitI2_Byte &H13
  loc_6F0666: PopTmpLdAd2 var_356
  loc_6F0669: FLdRfVar var_B4
  loc_6F066C: FLdRfVar var_AC
  loc_6F066F: PopTmpLdAdStr var_354
  loc_6F0672: FLdRfVar var_120
  loc_6F0675: CStrVarTmp
  loc_6F0676: PopTmpLdAdStr
  loc_6F067A: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6F067F: AddI2
  loc_6F0680: FStI2 var_C2
  loc_6F0683: FFree1Str var_D0
  loc_6F0686: FFreeVar var_110 = ""
  loc_6F068D: LitStr "INSERT INTO CLP_OLD_ENCABEZADO (cod_reg, nro_clp, fecha, subtot_prod, subtot_itc, comision_calculada"
  loc_6F0690: FStStrCopy var_BC
  loc_6F0693: ILdRf var_BC
  loc_6F0696: LitStr ", iva_comision, comision_especial, iva_comision_especial, iva_clp, total_clp, fecha_desde, fecha_hasta, subtot_prod_itc_itv, subtot_neto_comision, subtot_itv, subtot_imp1, imp2, subtot_imp2)"
  loc_6F0699: ConcatStr
  loc_6F069A: FStStr var_BC
  loc_6F069D: LitStr " VALUES ('"
  loc_6F06A0: LitI4 1
  loc_6F06A5: FLdRfVar var_AC
  loc_6F06A8: Ary1LdI4
  loc_6F06A9: ConcatStr
  loc_6F06AA: FStStrNoPop var_D0
  loc_6F06AD: LitStr "','"
  loc_6F06B0: ConcatStr
  loc_6F06B1: FStStrNoPop var_35C
  loc_6F06B4: LitI4 2
  loc_6F06B9: FLdRfVar var_AC
  loc_6F06BC: Ary1LdI4
  loc_6F06BD: ConcatStr
  loc_6F06BE: FStStrNoPop var_360
  loc_6F06C1: LitStr "','"
  loc_6F06C4: ConcatStr
  loc_6F06C5: FStStrNoPop var_364
  loc_6F06C8: LitI4 3
  loc_6F06CD: FLdRfVar var_AC
  loc_6F06D0: Ary1LdI4
  loc_6F06D1: ConcatStr
  loc_6F06D2: FStStrNoPop var_368
  loc_6F06D5: LitStr "',"
  loc_6F06D8: ConcatStr
  loc_6F06D9: FStStr var_C0
  loc_6F06DC: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = ""
  loc_6F06E9: ILdRf var_C0
  loc_6F06EC: FLdRfVar var_370
  loc_6F06EF: LitI2_Byte 8
  loc_6F06F1: PopTmpLdAd2 var_356
  loc_6F06F4: LitI4 4
  loc_6F06F9: FLdRfVar var_AC
  loc_6F06FC: Ary1LdRf
  loc_6F06FD: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0702: FLdFPR8 var_370
  loc_6F0705: CStrR8
  loc_6F0707: FStStrNoPop var_D0
  loc_6F070A: ConcatStr
  loc_6F070B: FStStrNoPop var_35C
  loc_6F070E: LitStr ","
  loc_6F0711: ConcatStr
  loc_6F0712: FStStrNoPop var_360
  loc_6F0715: FLdRfVar var_37C
  loc_6F0718: LitI2_Byte 8
  loc_6F071A: PopTmpLdAd2 var_372
  loc_6F071D: LitI4 5
  loc_6F0722: FLdRfVar var_AC
  loc_6F0725: Ary1LdRf
  loc_6F0726: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F072B: FLdFPR8 var_37C
  loc_6F072E: CStrR8
  loc_6F0730: FStStrNoPop var_364
  loc_6F0733: ConcatStr
  loc_6F0734: FStStrNoPop var_368
  loc_6F0737: LitStr ","
  loc_6F073A: ConcatStr
  loc_6F073B: FStStrNoPop var_38C
  loc_6F073E: FLdRfVar var_388
  loc_6F0741: LitI2_Byte 8
  loc_6F0743: PopTmpLdAd2 var_37E
  loc_6F0746: LitI4 6
  loc_6F074B: FLdRfVar var_AC
  loc_6F074E: Ary1LdRf
  loc_6F074F: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0754: FLdFPR8 var_388
  loc_6F0757: CStrR8
  loc_6F0759: FStStrNoPop var_390
  loc_6F075C: ConcatStr
  loc_6F075D: FStStrNoPop var_394
  loc_6F0760: LitStr ","
  loc_6F0763: ConcatStr
  loc_6F0764: FStStrNoPop var_3A4
  loc_6F0767: FLdRfVar var_3A0
  loc_6F076A: LitI2_Byte 8
  loc_6F076C: PopTmpLdAd2 var_396
  loc_6F076F: LitI4 7
  loc_6F0774: FLdRfVar var_AC
  loc_6F0777: Ary1LdRf
  loc_6F0778: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F077D: FLdFPR8 var_3A0
  loc_6F0780: CStrR8
  loc_6F0782: FStStrNoPop var_3A8
  loc_6F0785: ConcatStr
  loc_6F0786: FStStr var_C0
  loc_6F0789: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = ""
  loc_6F07A0: ILdRf var_C0
  loc_6F07A3: LitStr ","
  loc_6F07A6: ConcatStr
  loc_6F07A7: FStStrNoPop var_D0
  loc_6F07AA: FLdRfVar var_370
  loc_6F07AD: LitI2_Byte 8
  loc_6F07AF: PopTmpLdAd2 var_356
  loc_6F07B2: LitI4 8
  loc_6F07B7: FLdRfVar var_AC
  loc_6F07BA: Ary1LdRf
  loc_6F07BB: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F07C0: FLdFPR8 var_370
  loc_6F07C3: CStrR8
  loc_6F07C5: FStStrNoPop var_35C
  loc_6F07C8: ConcatStr
  loc_6F07C9: FStStrNoPop var_360
  loc_6F07CC: LitStr ","
  loc_6F07CF: ConcatStr
  loc_6F07D0: FStStrNoPop var_364
  loc_6F07D3: FLdRfVar var_37C
  loc_6F07D6: LitI2_Byte 8
  loc_6F07D8: PopTmpLdAd2 var_372
  loc_6F07DB: LitI4 9
  loc_6F07E0: FLdRfVar var_AC
  loc_6F07E3: Ary1LdRf
  loc_6F07E4: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F07E9: FLdFPR8 var_37C
  loc_6F07EC: CStrR8
  loc_6F07EE: FStStrNoPop var_368
  loc_6F07F1: ConcatStr
  loc_6F07F2: FStStrNoPop var_38C
  loc_6F07F5: LitStr ","
  loc_6F07F8: ConcatStr
  loc_6F07F9: FStStrNoPop var_390
  loc_6F07FC: FLdRfVar var_388
  loc_6F07FF: LitI2_Byte 8
  loc_6F0801: PopTmpLdAd2 var_37E
  loc_6F0804: LitI4 &HA
  loc_6F0809: FLdRfVar var_AC
  loc_6F080C: Ary1LdRf
  loc_6F080D: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0812: FLdFPR8 var_388
  loc_6F0815: CStrR8
  loc_6F0817: FStStrNoPop var_394
  loc_6F081A: ConcatStr
  loc_6F081B: FStStrNoPop var_3A4
  loc_6F081E: LitStr ","
  loc_6F0821: ConcatStr
  loc_6F0822: FStStrNoPop var_3A8
  loc_6F0825: FLdRfVar var_3A0
  loc_6F0828: LitI2_Byte 8
  loc_6F082A: PopTmpLdAd2 var_396
  loc_6F082D: LitI4 &HB
  loc_6F0832: FLdRfVar var_AC
  loc_6F0835: Ary1LdRf
  loc_6F0836: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F083B: FLdFPR8 var_3A0
  loc_6F083E: CStrR8
  loc_6F0840: FStStrNoPop var_3AC
  loc_6F0843: ConcatStr
  loc_6F0844: FStStr var_C0
  loc_6F0847: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = ""
  loc_6F0860: ILdRf var_C0
  loc_6F0863: LitStr ","
  loc_6F0866: ConcatStr
  loc_6F0867: FStStrNoPop var_D0
  loc_6F086A: LitI4 &HC
  loc_6F086F: FLdRfVar var_AC
  loc_6F0872: Ary1LdI4
  loc_6F0873: ConcatStr
  loc_6F0874: FStStrNoPop var_35C
  loc_6F0877: LitStr ","
  loc_6F087A: ConcatStr
  loc_6F087B: FStStrNoPop var_360
  loc_6F087E: LitI4 &HD
  loc_6F0883: FLdRfVar var_AC
  loc_6F0886: Ary1LdI4
  loc_6F0887: ConcatStr
  loc_6F0888: FStStrNoPop var_364
  loc_6F088B: LitStr ","
  loc_6F088E: ConcatStr
  loc_6F088F: FStStrNoPop var_368
  loc_6F0892: FLdRfVar var_370
  loc_6F0895: LitI2_Byte 8
  loc_6F0897: PopTmpLdAd2 var_356
  loc_6F089A: LitI4 &HE
  loc_6F089F: FLdRfVar var_AC
  loc_6F08A2: Ary1LdRf
  loc_6F08A3: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F08A8: FLdFPR8 var_370
  loc_6F08AB: CStrR8
  loc_6F08AD: FStStrNoPop var_38C
  loc_6F08B0: ConcatStr
  loc_6F08B1: FStStrNoPop var_390
  loc_6F08B4: LitStr ","
  loc_6F08B7: ConcatStr
  loc_6F08B8: FStStrNoPop var_394
  loc_6F08BB: FLdRfVar var_37C
  loc_6F08BE: LitI2_Byte 8
  loc_6F08C0: PopTmpLdAd2 var_372
  loc_6F08C3: LitI4 &HF
  loc_6F08C8: FLdRfVar var_AC
  loc_6F08CB: Ary1LdRf
  loc_6F08CC: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F08D1: FLdFPR8 var_37C
  loc_6F08D4: CStrR8
  loc_6F08D6: FStStrNoPop var_3A4
  loc_6F08D9: ConcatStr
  loc_6F08DA: FStStrNoPop var_3A8
  loc_6F08DD: LitStr ","
  loc_6F08E0: ConcatStr
  loc_6F08E1: FStStrNoPop var_3AC
  loc_6F08E4: FLdRfVar var_388
  loc_6F08E7: LitI2_Byte 8
  loc_6F08E9: PopTmpLdAd2 var_37E
  loc_6F08EC: LitI4 &H10
  loc_6F08F1: FLdRfVar var_AC
  loc_6F08F4: Ary1LdRf
  loc_6F08F5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F08FA: FLdFPR8 var_388
  loc_6F08FD: CStrR8
  loc_6F08FF: FStStrNoPop var_3B0
  loc_6F0902: ConcatStr
  loc_6F0903: FStStrNoPop var_3B4
  loc_6F0906: LitStr ","
  loc_6F0909: ConcatStr
  loc_6F090A: FStStrNoPop var_3B8
  loc_6F090D: FLdRfVar var_3A0
  loc_6F0910: LitI2_Byte 8
  loc_6F0912: PopTmpLdAd2 var_396
  loc_6F0915: LitI4 &H11
  loc_6F091A: FLdRfVar var_AC
  loc_6F091D: Ary1LdRf
  loc_6F091E: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0923: FLdFPR8 var_3A0
  loc_6F0926: CStrR8
  loc_6F0928: FStStrNoPop var_3BC
  loc_6F092B: ConcatStr
  loc_6F092C: FStStrNoPop var_3C0
  loc_6F092F: LitStr ","
  loc_6F0932: ConcatStr
  loc_6F0933: FStStrNoPop var_3D0
  loc_6F0936: FLdRfVar var_3CC
  loc_6F0939: LitI2_Byte 8
  loc_6F093B: PopTmpLdAd2 var_3C2
  loc_6F093E: LitI4 &H12
  loc_6F0943: FLdRfVar var_AC
  loc_6F0946: Ary1LdRf
  loc_6F0947: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F094C: FLdFPR8 var_3CC
  loc_6F094F: CStrR8
  loc_6F0951: FStStrNoPop var_3D4
  loc_6F0954: ConcatStr
  loc_6F0955: FStStrNoPop var_3D8
  loc_6F0958: LitStr ","
  loc_6F095B: ConcatStr
  loc_6F095C: FStStrNoPop var_3E8
  loc_6F095F: FLdRfVar var_3E4
  loc_6F0962: LitI2_Byte 8
  loc_6F0964: PopTmpLdAd2 var_3DA
  loc_6F0967: LitI4 &H13
  loc_6F096C: FLdRfVar var_AC
  loc_6F096F: Ary1LdRf
  loc_6F0970: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0975: FLdFPR8 var_3E4
  loc_6F0978: CStrR8
  loc_6F097A: FStStrNoPop var_3EC
  loc_6F097D: ConcatStr
  loc_6F097E: FStStrNoPop var_3F0
  loc_6F0981: LitStr ")"
  loc_6F0984: ConcatStr
  loc_6F0985: FStStr var_C0
  loc_6F0988: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3E8 = "": var_3EC = ""
  loc_6F09B7: ILdRf var_BC
  loc_6F09BA: ILdRf var_C0
  loc_6F09BD: ConcatStr
  loc_6F09BE: FStStr var_BC
  loc_6F09C1: LitVarI4
  loc_6F09C9: PopAdLdVar
  loc_6F09CA: LitStr "Delete * from CLP_OLD_ENCABEZADO"
  loc_6F09CD: FLdPr Me
  loc_6F09D0: MemLdPr DBase
  loc_6F09D3: Me.Execute from_stack_1, from_stack_2
  loc_6F09D8: LitVarI4
  loc_6F09E0: PopAdLdVar
  loc_6F09E1: ILdRf var_BC
  loc_6F09E4: FLdPr Me
  loc_6F09E7: MemLdPr DBase
  loc_6F09EA: Me.Execute from_stack_1, from_stack_2
  loc_6F09EF: LitI4 4
  loc_6F09F4: FLdRfVar var_110
  loc_6F09F7: ImpAdCallFPR4  = Chr()
  loc_6F09FC: FLdRfVar var_110
  loc_6F09FF: LitI4 &HC
  loc_6F0A04: FLdRfVar var_120
  loc_6F0A07: ImpAdCallFPR4  = Chr()
  loc_6F0A0C: FLdRfVar var_120
  loc_6F0A0F: ConcatVar var_130
  loc_6F0A13: LitI4 2
  loc_6F0A18: FLdRfVar var_140
  loc_6F0A1B: ImpAdCallFPR4  = Chr()
  loc_6F0A20: FLdRfVar var_140
  loc_6F0A23: ConcatVar var_150
  loc_6F0A27: LitI4 &HA
  loc_6F0A2C: FLdRfVar var_160
  loc_6F0A2F: ImpAdCallFPR4  = Chr()
  loc_6F0A34: FLdRfVar var_160
  loc_6F0A37: ConcatVar var_170
  loc_6F0A3B: LitI4 &HB
  loc_6F0A40: FLdRfVar var_180
  loc_6F0A43: ImpAdCallFPR4  = Chr()
  loc_6F0A48: FLdRfVar var_180
  loc_6F0A4B: ConcatVar var_190
  loc_6F0A4F: LitI4 &HB
  loc_6F0A54: FLdRfVar var_1A0
  loc_6F0A57: ImpAdCallFPR4  = Chr()
  loc_6F0A5C: FLdRfVar var_1A0
  loc_6F0A5F: ConcatVar var_1B0
  loc_6F0A63: LitI4 &HB
  loc_6F0A68: FLdRfVar var_1C0
  loc_6F0A6B: ImpAdCallFPR4  = Chr()
  loc_6F0A70: FLdRfVar var_1C0
  loc_6F0A73: ConcatVar var_1D0
  loc_6F0A77: LitI4 &HA
  loc_6F0A7C: FLdRfVar var_1E0
  loc_6F0A7F: ImpAdCallFPR4  = Chr()
  loc_6F0A84: FLdRfVar var_1E0
  loc_6F0A87: ConcatVar var_1F0
  loc_6F0A8B: LitI4 &HA
  loc_6F0A90: FLdRfVar var_200
  loc_6F0A93: ImpAdCallFPR4  = Chr()
  loc_6F0A98: FLdRfVar var_200
  loc_6F0A9B: ConcatVar var_210
  loc_6F0A9F: LitI4 &HA
  loc_6F0AA4: FLdRfVar var_220
  loc_6F0AA7: ImpAdCallFPR4  = Chr()
  loc_6F0AAC: FLdRfVar var_220
  loc_6F0AAF: ConcatVar var_230
  loc_6F0AB3: LitI4 &HA
  loc_6F0AB8: FLdRfVar var_240
  loc_6F0ABB: ImpAdCallFPR4  = Chr()
  loc_6F0AC0: FLdRfVar var_240
  loc_6F0AC3: ConcatVar var_250
  loc_6F0AC7: LitI4 &HA
  loc_6F0ACC: FLdRfVar var_260
  loc_6F0ACF: ImpAdCallFPR4  = Chr()
  loc_6F0AD4: FLdRfVar var_260
  loc_6F0AD7: ConcatVar var_270
  loc_6F0ADB: LitI4 &HB
  loc_6F0AE0: FLdRfVar var_280
  loc_6F0AE3: ImpAdCallFPR4  = Chr()
  loc_6F0AE8: FLdRfVar var_280
  loc_6F0AEB: ConcatVar var_290
  loc_6F0AEF: LitI4 &HA
  loc_6F0AF4: FLdRfVar var_2A0
  loc_6F0AF7: ImpAdCallFPR4  = Chr()
  loc_6F0AFC: FLdRfVar var_2A0
  loc_6F0AFF: ConcatVar var_2B0
  loc_6F0B03: LitI4 &HB
  loc_6F0B08: FLdRfVar var_2C0
  loc_6F0B0B: ImpAdCallFPR4  = Chr()
  loc_6F0B10: FLdRfVar var_2C0
  loc_6F0B13: ConcatVar var_2D0
  loc_6F0B17: LitI4 &HA
  loc_6F0B1C: FLdRfVar var_2E0
  loc_6F0B1F: ImpAdCallFPR4  = Chr()
  loc_6F0B24: FLdRfVar var_2E0
  loc_6F0B27: ConcatVar var_2F0
  loc_6F0B2B: CStrVarTmp
  loc_6F0B2C: FStStr var_B4
  loc_6F0B2F: FFreeVar var_2F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = ""
  loc_6F0B70: LitVarI4
  loc_6F0B78: PopAdLdVar
  loc_6F0B79: LitStr "Delete * from CLP_OLD_DETALLE"
  loc_6F0B7C: FLdPr Me
  loc_6F0B7F: MemLdPr DBase
  loc_6F0B82: Me.Execute from_stack_1, from_stack_2
  loc_6F0B87: FLdI2 var_C2
  loc_6F0B8A: FStI2 var_C6
  loc_6F0B8D: LitI2_Byte 1
  loc_6F0B8F: FLdRfVar var_AE
  loc_6F0B92: LitI2_Byte 3
  loc_6F0B94: ForI2 var_3F4
  loc_6F0B9A: FLdI2 var_C2
  loc_6F0B9D: CI4UI1
  loc_6F0B9E: ILdI4 sValor
  loc_6F0BA1: FnLenStr
  loc_6F0BA2: LeI4
  loc_6F0BA3: BranchF loc_6F0F34
  loc_6F0BA6: LitVar_Missing var_110
  loc_6F0BA9: FLdI2 var_C2
  loc_6F0BAC: CI4UI1
  loc_6F0BAD: ILdRf sValor
  loc_6F0BB0: CVarRef
  loc_6F0BB5: FLdRfVar var_120
  loc_6F0BB8: ImpAdCallFPR4  = Mid(, , )
  loc_6F0BBD: FLdI2 var_C2
  loc_6F0BC0: LitI2_Byte 2
  loc_6F0BC2: AddI2
  loc_6F0BC3: LitI2_Byte &H10
  loc_6F0BC5: PopTmpLdAd2 var_356
  loc_6F0BC8: FLdRfVar var_B4
  loc_6F0BCB: FLdRfVar var_AC
  loc_6F0BCE: PopTmpLdAdStr var_354
  loc_6F0BD1: FLdRfVar var_120
  loc_6F0BD4: CStrVarTmp
  loc_6F0BD5: PopTmpLdAdStr
  loc_6F0BD9: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6F0BDE: AddI2
  loc_6F0BDF: FStI2 var_C2
  loc_6F0BE2: FFree1Str var_D0
  loc_6F0BE5: FFreeVar var_110 = ""
  loc_6F0BEC: LitStr "INSERT INTO CLP_OLD_DETALLE(grupo, cod_reg, nro_clp, cod_prod_fms, litros, precio_neto, itc"
  loc_6F0BEF: FStStrCopy var_BC
  loc_6F0BF2: ILdRf var_BC
  loc_6F0BF5: LitStr ", iva, com_prod, iva_com_prod , subtot_prod, subtot_itc, subtot_iva, itv, subtot_itv, imp2, subtot_imp2)"
  loc_6F0BF8: ConcatStr
  loc_6F0BF9: FStStr var_BC
  loc_6F0BFC: LitI4 3
  loc_6F0C01: FLdRfVar var_AC
  loc_6F0C04: Ary1LdI4
  loc_6F0C05: ImpAdCallFPR4 push Val()
  loc_6F0C0A: FStFPR8 var_370
  loc_6F0C0D: LitStr " VALUES ("
  loc_6F0C10: FLdI2 var_AE
  loc_6F0C13: CStrUI1
  loc_6F0C15: FStStrNoPop var_D0
  loc_6F0C18: ConcatStr
  loc_6F0C19: FStStrNoPop var_35C
  loc_6F0C1C: LitStr ",'"
  loc_6F0C1F: ConcatStr
  loc_6F0C20: FStStrNoPop var_360
  loc_6F0C23: LitI4 1
  loc_6F0C28: FLdRfVar var_AC
  loc_6F0C2B: Ary1LdI4
  loc_6F0C2C: ConcatStr
  loc_6F0C2D: FStStrNoPop var_364
  loc_6F0C30: LitStr "','"
  loc_6F0C33: ConcatStr
  loc_6F0C34: FStStrNoPop var_368
  loc_6F0C37: LitI4 2
  loc_6F0C3C: FLdRfVar var_AC
  loc_6F0C3F: Ary1LdI4
  loc_6F0C40: ConcatStr
  loc_6F0C41: FStStrNoPop var_38C
  loc_6F0C44: LitStr "','"
  loc_6F0C47: ConcatStr
  loc_6F0C48: FStStrNoPop var_390
  loc_6F0C4B: LitI4 3
  loc_6F0C50: FLdRfVar var_AC
  loc_6F0C53: Ary1LdI4
  loc_6F0C54: ConcatStr
  loc_6F0C55: FStStrNoPop var_394
  loc_6F0C58: LitStr " - "
  loc_6F0C5B: ConcatStr
  loc_6F0C5C: FStStrNoPop var_3A8
  loc_6F0C5F: FLdRfVar var_3A4
  loc_6F0C62: FLdFPR8 var_370
  loc_6F0C65: CI2R8
  loc_6F0C66: ImpAdLdRf MemVar_74A220
  loc_6F0C69: NewIfNullPr clsProducts
  loc_6F0C71: ILdRf var_3A4
  loc_6F0C74: ConcatStr
  loc_6F0C75: FStStrNoPop var_3AC
  loc_6F0C78: LitStr "',"
  loc_6F0C7B: ConcatStr
  loc_6F0C7C: FStStr var_C0
  loc_6F0C7F: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A8 = "": var_3A4 = ""
  loc_6F0C98: ILdRf var_C0
  loc_6F0C9B: FLdRfVar var_370
  loc_6F0C9E: LitI2_Byte 8
  loc_6F0CA0: PopTmpLdAd2 var_356
  loc_6F0CA3: LitI4 4
  loc_6F0CA8: FLdRfVar var_AC
  loc_6F0CAB: Ary1LdRf
  loc_6F0CAC: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0CB1: FLdFPR8 var_370
  loc_6F0CB4: CStrR8
  loc_6F0CB6: FStStrNoPop var_D0
  loc_6F0CB9: ConcatStr
  loc_6F0CBA: FStStrNoPop var_35C
  loc_6F0CBD: LitStr ","
  loc_6F0CC0: ConcatStr
  loc_6F0CC1: FStStrNoPop var_360
  loc_6F0CC4: FLdRfVar var_37C
  loc_6F0CC7: LitI2_Byte 4
  loc_6F0CC9: PopTmpLdAd2 var_372
  loc_6F0CCC: LitI4 5
  loc_6F0CD1: FLdRfVar var_AC
  loc_6F0CD4: Ary1LdRf
  loc_6F0CD5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0CDA: FLdFPR8 var_37C
  loc_6F0CDD: CStrR8
  loc_6F0CDF: FStStrNoPop var_364
  loc_6F0CE2: ConcatStr
  loc_6F0CE3: FStStrNoPop var_368
  loc_6F0CE6: LitStr ","
  loc_6F0CE9: ConcatStr
  loc_6F0CEA: FStStrNoPop var_38C
  loc_6F0CED: FLdRfVar var_388
  loc_6F0CF0: LitI2_Byte 4
  loc_6F0CF2: PopTmpLdAd2 var_37E
  loc_6F0CF5: LitI4 6
  loc_6F0CFA: FLdRfVar var_AC
  loc_6F0CFD: Ary1LdRf
  loc_6F0CFE: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0D03: FLdFPR8 var_388
  loc_6F0D06: CStrR8
  loc_6F0D08: FStStrNoPop var_390
  loc_6F0D0B: ConcatStr
  loc_6F0D0C: FStStrNoPop var_394
  loc_6F0D0F: LitStr ","
  loc_6F0D12: ConcatStr
  loc_6F0D13: FStStrNoPop var_3A4
  loc_6F0D16: FLdRfVar var_3A0
  loc_6F0D19: LitI2_Byte 4
  loc_6F0D1B: PopTmpLdAd2 var_396
  loc_6F0D1E: LitI4 7
  loc_6F0D23: FLdRfVar var_AC
  loc_6F0D26: Ary1LdRf
  loc_6F0D27: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0D2C: FLdFPR8 var_3A0
  loc_6F0D2F: CStrR8
  loc_6F0D31: FStStrNoPop var_3A8
  loc_6F0D34: ConcatStr
  loc_6F0D35: FStStr var_C0
  loc_6F0D38: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = ""
  loc_6F0D4F: ILdRf var_C0
  loc_6F0D52: LitStr ","
  loc_6F0D55: ConcatStr
  loc_6F0D56: FStStrNoPop var_D0
  loc_6F0D59: FLdRfVar var_370
  loc_6F0D5C: LitI2_Byte 8
  loc_6F0D5E: PopTmpLdAd2 var_356
  loc_6F0D61: LitI4 8
  loc_6F0D66: FLdRfVar var_AC
  loc_6F0D69: Ary1LdRf
  loc_6F0D6A: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0D6F: FLdFPR8 var_370
  loc_6F0D72: CStrR8
  loc_6F0D74: FStStrNoPop var_35C
  loc_6F0D77: ConcatStr
  loc_6F0D78: FStStrNoPop var_360
  loc_6F0D7B: LitStr ","
  loc_6F0D7E: ConcatStr
  loc_6F0D7F: FStStrNoPop var_364
  loc_6F0D82: FLdRfVar var_37C
  loc_6F0D85: LitI2_Byte 8
  loc_6F0D87: PopTmpLdAd2 var_372
  loc_6F0D8A: LitI4 9
  loc_6F0D8F: FLdRfVar var_AC
  loc_6F0D92: Ary1LdRf
  loc_6F0D93: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0D98: FLdFPR8 var_37C
  loc_6F0D9B: CStrR8
  loc_6F0D9D: FStStrNoPop var_368
  loc_6F0DA0: ConcatStr
  loc_6F0DA1: FStStrNoPop var_38C
  loc_6F0DA4: LitStr ","
  loc_6F0DA7: ConcatStr
  loc_6F0DA8: FStStrNoPop var_390
  loc_6F0DAB: FLdRfVar var_388
  loc_6F0DAE: LitI2_Byte 8
  loc_6F0DB0: PopTmpLdAd2 var_37E
  loc_6F0DB3: LitI4 &HA
  loc_6F0DB8: FLdRfVar var_AC
  loc_6F0DBB: Ary1LdRf
  loc_6F0DBC: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0DC1: FLdFPR8 var_388
  loc_6F0DC4: CStrR8
  loc_6F0DC6: FStStrNoPop var_394
  loc_6F0DC9: ConcatStr
  loc_6F0DCA: FStStrNoPop var_3A4
  loc_6F0DCD: LitStr ","
  loc_6F0DD0: ConcatStr
  loc_6F0DD1: FStStrNoPop var_3A8
  loc_6F0DD4: FLdRfVar var_3A0
  loc_6F0DD7: LitI2_Byte 8
  loc_6F0DD9: PopTmpLdAd2 var_396
  loc_6F0DDC: LitI4 &HB
  loc_6F0DE1: FLdRfVar var_AC
  loc_6F0DE4: Ary1LdRf
  loc_6F0DE5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0DEA: FLdFPR8 var_3A0
  loc_6F0DED: CStrR8
  loc_6F0DEF: FStStrNoPop var_3AC
  loc_6F0DF2: ConcatStr
  loc_6F0DF3: FStStrNoPop var_3B0
  loc_6F0DF6: LitStr ","
  loc_6F0DF9: ConcatStr
  loc_6F0DFA: FStStrNoPop var_3B4
  loc_6F0DFD: FLdRfVar var_3CC
  loc_6F0E00: LitI2_Byte 8
  loc_6F0E02: PopTmpLdAd2 var_3C2
  loc_6F0E05: LitI4 &HC
  loc_6F0E0A: FLdRfVar var_AC
  loc_6F0E0D: Ary1LdRf
  loc_6F0E0E: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0E13: FLdFPR8 var_3CC
  loc_6F0E16: CStrR8
  loc_6F0E18: FStStrNoPop var_3B8
  loc_6F0E1B: ConcatStr
  loc_6F0E1C: FStStr var_C0
  loc_6F0E1F: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = ""
  loc_6F0E3E: ILdRf var_C0
  loc_6F0E41: LitStr ","
  loc_6F0E44: ConcatStr
  loc_6F0E45: FStStrNoPop var_D0
  loc_6F0E48: FLdRfVar var_370
  loc_6F0E4B: LitI2_Byte 4
  loc_6F0E4D: PopTmpLdAd2 var_356
  loc_6F0E50: LitI4 &HD
  loc_6F0E55: FLdRfVar var_AC
  loc_6F0E58: Ary1LdRf
  loc_6F0E59: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0E5E: FLdFPR8 var_370
  loc_6F0E61: CStrR8
  loc_6F0E63: FStStrNoPop var_35C
  loc_6F0E66: ConcatStr
  loc_6F0E67: FStStrNoPop var_360
  loc_6F0E6A: LitStr ","
  loc_6F0E6D: ConcatStr
  loc_6F0E6E: FStStrNoPop var_364
  loc_6F0E71: FLdRfVar var_37C
  loc_6F0E74: LitI2_Byte 8
  loc_6F0E76: PopTmpLdAd2 var_372
  loc_6F0E79: LitI4 &HE
  loc_6F0E7E: FLdRfVar var_AC
  loc_6F0E81: Ary1LdRf
  loc_6F0E82: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0E87: FLdFPR8 var_37C
  loc_6F0E8A: CStrR8
  loc_6F0E8C: FStStrNoPop var_368
  loc_6F0E8F: ConcatStr
  loc_6F0E90: FStStrNoPop var_38C
  loc_6F0E93: LitStr ","
  loc_6F0E96: ConcatStr
  loc_6F0E97: FStStrNoPop var_390
  loc_6F0E9A: FLdRfVar var_388
  loc_6F0E9D: LitI2_Byte 4
  loc_6F0E9F: PopTmpLdAd2 var_37E
  loc_6F0EA2: LitI4 &HF
  loc_6F0EA7: FLdRfVar var_AC
  loc_6F0EAA: Ary1LdRf
  loc_6F0EAB: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0EB0: FLdFPR8 var_388
  loc_6F0EB3: CStrR8
  loc_6F0EB5: FStStrNoPop var_394
  loc_6F0EB8: ConcatStr
  loc_6F0EB9: FStStrNoPop var_3A4
  loc_6F0EBC: LitStr ","
  loc_6F0EBF: ConcatStr
  loc_6F0EC0: FStStrNoPop var_3A8
  loc_6F0EC3: FLdRfVar var_3A0
  loc_6F0EC6: LitI2_Byte 8
  loc_6F0EC8: PopTmpLdAd2 var_396
  loc_6F0ECB: LitI4 &H10
  loc_6F0ED0: FLdRfVar var_AC
  loc_6F0ED3: Ary1LdRf
  loc_6F0ED4: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6F0ED9: FLdFPR8 var_3A0
  loc_6F0EDC: CStrR8
  loc_6F0EDE: FStStrNoPop var_3AC
  loc_6F0EE1: ConcatStr
  loc_6F0EE2: FStStrNoPop var_3B0
  loc_6F0EE5: LitStr ")"
  loc_6F0EE8: ConcatStr
  loc_6F0EE9: FStStr var_C0
  loc_6F0EEC: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = "": var_3AC = ""
  loc_6F0F07: ILdRf var_BC
  loc_6F0F0A: ILdRf var_C0
  loc_6F0F0D: ConcatStr
  loc_6F0F0E: FStStr var_BC
  loc_6F0F11: LitVarI4
  loc_6F0F19: PopAdLdVar
  loc_6F0F1A: ILdRf var_BC
  loc_6F0F1D: FLdPr Me
  loc_6F0F20: MemLdPr DBase
  loc_6F0F23: Me.Execute from_stack_1, from_stack_2
  loc_6F0F28: FLdI2 var_C4
  loc_6F0F2B: LitI2_Byte 1
  loc_6F0F2D: AddI2
  loc_6F0F2E: FStI2 var_C4
  loc_6F0F31: Branch loc_6F0B9A
  loc_6F0F34: FLdI2 var_C6
  loc_6F0F37: FStI2 var_C2
  loc_6F0F3A: FLdI2 var_C4
  loc_6F0F3D: LitI2_Byte 1
  loc_6F0F3F: AddI2
  loc_6F0F40: FLdRfVar var_C8
  loc_6F0F43: LitI2_Byte 5
  loc_6F0F45: ForI2 var_3F8
  loc_6F0F4B: LitStr "INSERT INTO CLP_OLD_DETALLE(grupo, cod_reg, nro_clp, cod_prod_fms, litros, precio_neto, itc"
  loc_6F0F4E: FStStrCopy var_BC
  loc_6F0F51: ILdRf var_BC
  loc_6F0F54: LitStr ", iva, com_prod, iva_com_prod , subtot_prod, subtot_itc, subtot_iva, itv, subtot_itv, imp2, subtot_imp2)"
  loc_6F0F57: ConcatStr
  loc_6F0F58: FStStr var_BC
  loc_6F0F5B: LitStr " VALUES ("
  loc_6F0F5E: FLdI2 var_AE
  loc_6F0F61: CStrUI1
  loc_6F0F63: FStStrNoPop var_D0
  loc_6F0F66: ConcatStr
  loc_6F0F67: FStStrNoPop var_35C
  loc_6F0F6A: LitStr ",'"
  loc_6F0F6D: ConcatStr
  loc_6F0F6E: FStStrNoPop var_360
  loc_6F0F71: LitI2_Byte 0
  loc_6F0F73: CStrUI1
  loc_6F0F75: FStStrNoPop var_364
  loc_6F0F78: ConcatStr
  loc_6F0F79: FStStrNoPop var_368
  loc_6F0F7C: LitStr "','"
  loc_6F0F7F: ConcatStr
  loc_6F0F80: FStStrNoPop var_38C
  loc_6F0F83: LitI4 2
  loc_6F0F88: FLdRfVar var_AC
  loc_6F0F8B: Ary1LdI4
  loc_6F0F8C: ConcatStr
  loc_6F0F8D: FStStrNoPop var_390
  loc_6F0F90: LitStr "','"
  loc_6F0F93: ConcatStr
  loc_6F0F94: FStStrNoPop var_394
  loc_6F0F97: FLdI2 var_C8
  loc_6F0F9A: LitI2_Byte &H64
  loc_6F0F9C: AddI2
  loc_6F0F9D: CStrUI1
  loc_6F0F9F: FStStrNoPop var_3A4
  loc_6F0FA2: ConcatStr
  loc_6F0FA3: FStStrNoPop var_3A8
  loc_6F0FA6: LitStr "',"
  loc_6F0FA9: ConcatStr
  loc_6F0FAA: FStStr var_C0
  loc_6F0FAD: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = ""
  loc_6F0FC4: ILdRf var_C0
  loc_6F0FC7: LitI2_Byte 0
  loc_6F0FC9: CStrUI1
  loc_6F0FCB: FStStrNoPop var_D0
  loc_6F0FCE: ConcatStr
  loc_6F0FCF: FStStrNoPop var_35C
  loc_6F0FD2: LitStr ","
  loc_6F0FD5: ConcatStr
  loc_6F0FD6: FStStrNoPop var_360
  loc_6F0FD9: LitI2_Byte 0
  loc_6F0FDB: CStrUI1
  loc_6F0FDD: FStStrNoPop var_364
  loc_6F0FE0: ConcatStr
  loc_6F0FE1: FStStrNoPop var_368
  loc_6F0FE4: LitStr ","
  loc_6F0FE7: ConcatStr
  loc_6F0FE8: FStStrNoPop var_38C
  loc_6F0FEB: LitI2_Byte 0
  loc_6F0FED: CStrUI1
  loc_6F0FEF: FStStrNoPop var_390
  loc_6F0FF2: ConcatStr
  loc_6F0FF3: FStStrNoPop var_394
  loc_6F0FF6: LitStr ","
  loc_6F0FF9: ConcatStr
  loc_6F0FFA: FStStrNoPop var_3A4
  loc_6F0FFD: LitI2_Byte 0
  loc_6F0FFF: CStrUI1
  loc_6F1001: FStStrNoPop var_3A8
  loc_6F1004: ConcatStr
  loc_6F1005: FStStr var_C0
  loc_6F1008: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = ""
  loc_6F101F: ILdRf var_C0
  loc_6F1022: LitStr ","
  loc_6F1025: ConcatStr
  loc_6F1026: FStStrNoPop var_D0
  loc_6F1029: LitI2_Byte 0
  loc_6F102B: CStrUI1
  loc_6F102D: FStStrNoPop var_35C
  loc_6F1030: ConcatStr
  loc_6F1031: FStStrNoPop var_360
  loc_6F1034: LitStr ","
  loc_6F1037: ConcatStr
  loc_6F1038: FStStrNoPop var_364
  loc_6F103B: LitI2_Byte 0
  loc_6F103D: CStrUI1
  loc_6F103F: FStStrNoPop var_368
  loc_6F1042: ConcatStr
  loc_6F1043: FStStrNoPop var_38C
  loc_6F1046: LitStr ","
  loc_6F1049: ConcatStr
  loc_6F104A: FStStrNoPop var_390
  loc_6F104D: LitI2_Byte 0
  loc_6F104F: CStrUI1
  loc_6F1051: FStStrNoPop var_394
  loc_6F1054: ConcatStr
  loc_6F1055: FStStrNoPop var_3A4
  loc_6F1058: LitStr ","
  loc_6F105B: ConcatStr
  loc_6F105C: FStStrNoPop var_3A8
  loc_6F105F: LitI2_Byte 0
  loc_6F1061: CStrUI1
  loc_6F1063: FStStrNoPop var_3AC
  loc_6F1066: ConcatStr
  loc_6F1067: FStStrNoPop var_3B0
  loc_6F106A: LitStr ","
  loc_6F106D: ConcatStr
  loc_6F106E: FStStrNoPop var_3B4
  loc_6F1071: LitI2_Byte 0
  loc_6F1073: CStrUI1
  loc_6F1075: FStStrNoPop var_3B8
  loc_6F1078: ConcatStr
  loc_6F1079: FStStr var_C0
  loc_6F107C: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = ""
  loc_6F109B: ILdRf var_C0
  loc_6F109E: LitStr ","
  loc_6F10A1: ConcatStr
  loc_6F10A2: FStStrNoPop var_D0
  loc_6F10A5: LitI2_Byte 0
  loc_6F10A7: CStrUI1
  loc_6F10A9: FStStrNoPop var_35C
  loc_6F10AC: ConcatStr
  loc_6F10AD: FStStrNoPop var_360
  loc_6F10B0: LitStr ","
  loc_6F10B3: ConcatStr
  loc_6F10B4: FStStrNoPop var_364
  loc_6F10B7: LitI2_Byte 0
  loc_6F10B9: CStrUI1
  loc_6F10BB: FStStrNoPop var_368
  loc_6F10BE: ConcatStr
  loc_6F10BF: FStStrNoPop var_38C
  loc_6F10C2: LitStr ","
  loc_6F10C5: ConcatStr
  loc_6F10C6: FStStrNoPop var_390
  loc_6F10C9: LitI2_Byte 0
  loc_6F10CB: CStrUI1
  loc_6F10CD: FStStrNoPop var_394
  loc_6F10D0: ConcatStr
  loc_6F10D1: FStStrNoPop var_3A4
  loc_6F10D4: LitStr ","
  loc_6F10D7: ConcatStr
  loc_6F10D8: FStStrNoPop var_3A8
  loc_6F10DB: LitI2_Byte 0
  loc_6F10DD: CStrUI1
  loc_6F10DF: FStStrNoPop var_3AC
  loc_6F10E2: ConcatStr
  loc_6F10E3: FStStrNoPop var_3B0
  loc_6F10E6: LitStr ")"
  loc_6F10E9: ConcatStr
  loc_6F10EA: FStStr var_C0
  loc_6F10ED: FFreeStr var_D0 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_38C = "": var_390 = "": var_394 = "": var_3A4 = "": var_3A8 = "": var_3AC = ""
  loc_6F1108: ILdRf var_BC
  loc_6F110B: ILdRf var_C0
  loc_6F110E: ConcatStr
  loc_6F110F: FStStr var_BC
  loc_6F1112: LitVarI4
  loc_6F111A: PopAdLdVar
  loc_6F111B: ILdRf var_BC
  loc_6F111E: FLdPr Me
  loc_6F1121: MemLdPr DBase
  loc_6F1124: Me.Execute from_stack_1, from_stack_2
  loc_6F1129: FLdRfVar var_C8
  loc_6F112C: NextI2 var_3F8, loc_6F0F4B
  loc_6F1131: LitI2_Byte 0
  loc_6F1133: FStI2 var_C4
  loc_6F1136: FLdRfVar var_AE
  loc_6F1139: NextI2 var_3F4, loc_6F0B9A
  loc_6F113E: FLdPr Me
  loc_6F1141: MemLdPr DBase
  loc_6F1144: Me.Close
  loc_6F1149: ExitProcCbHresult
  loc_6F114F: FLdPr Me
  loc_6F1152: MemLdPr DBase
  loc_6F1155: Me.Close
  loc_6F115A: FLdRfVar var_D0
  loc_6F115D: ImpAdCallI2 Err 'rtcErrObj
  loc_6F1162: FStAdFunc var_CC
  loc_6F1165: FLdPr var_CC
  loc_6F1168:  = Err.Description
  loc_6F116D: LitVar_Missing var_140
  loc_6F1170: LitVar_Missing var_130
  loc_6F1173: LitVar_Missing var_120
  loc_6F1176: LitI4 &H10
  loc_6F117B: FLdZeroAd var_D0
  loc_6F117E: CVarStr var_110
  loc_6F1181: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1186: FFree1Ad var_CC
  loc_6F1189: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_6F1194: ExitProcCbHresult
End Function

Public Function ArmarReporteCLP(sValor, newClp) '5D90DC
  'Data Table: 440CF4
  loc_5D90AC: ZeroRetValVar
  loc_5D90AE: ILdI2 newClp
  loc_5D90B1: BranchF loc_5D90C5
  loc_5D90B4: FLdRfVar var_A4
  loc_5D90B7: ILdRf sValor
  loc_5D90BA: from_stack_2v = NewCLPDocument(from_stack_1v)
  loc_5D90BF: FFree1Var var_A4 = ""
  loc_5D90C2: Branch loc_5D90D3
  loc_5D90C5: FLdRfVar var_A4
  loc_5D90C8: ILdRf sValor
  loc_5D90CB: from_stack_2v = OldCLPDocument(from_stack_1v)
  loc_5D90D0: FFree1Var var_A4 = ""
  loc_5D90D3: ExitProcCbHresult
  loc_5D90D9: FFree1Str var_D0
End Function

Public Function ArmarReporteDB(sValor) '68BF48
  'Data Table: 440CF4
  loc_68BA34: ZeroRetValVar
  loc_68BA36: OnErrorGoto loc_68BEFA
  loc_68BA39: FLdRfVar var_D0
  loc_68BA3C: FLdRfVar var_CC
  loc_68BA3F: ImpAdLdRf MemVar_7520D4
  loc_68BA42: NewIfNullPr Global
  loc_68BA45:  = Global.App
  loc_68BA4A: FLdPr var_CC
  loc_68BA4D:  = App.Path
  loc_68BA52: ILdRf var_D0
  loc_68BA55: LitStr "\REPORTE.MDB"
  loc_68BA58: ConcatStr
  loc_68BA59: FStStr var_B8
  loc_68BA5C: FFree1Str var_D0
  loc_68BA5F: FFree1Ad var_CC
  loc_68BA62: FLdRfVar var_CC
  loc_68BA65: LitVar_Missing var_100
  loc_68BA68: PopAdLdVar
  loc_68BA69: LitVar_Missing var_F0
  loc_68BA6C: PopAdLdVar
  loc_68BA6D: LitVar_TRUE var_E0
  loc_68BA70: PopAdLdVar
  loc_68BA71: ILdRf var_B8
  loc_68BA74: ImpAdLdRf MemVar_752164
  loc_68BA77: NewIfNullPr Me
  loc_68BA7A: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_68BA7F: ILdRf var_CC
  loc_68BA82: FLdPr Me
  loc_68BA85: MemStAd
  loc_68BA89: FFree1Ad var_CC
  loc_68BA8C: LitI4 4
  loc_68BA91: FLdRfVar var_110
  loc_68BA94: ImpAdCallFPR4  = Chr()
  loc_68BA99: FLdRfVar var_110
  loc_68BA9C: LitI4 &HC
  loc_68BAA1: FLdRfVar var_120
  loc_68BAA4: ImpAdCallFPR4  = Chr()
  loc_68BAA9: FLdRfVar var_120
  loc_68BAAC: ConcatVar var_130
  loc_68BAB0: LitI4 8
  loc_68BAB5: FLdRfVar var_140
  loc_68BAB8: ImpAdCallFPR4  = Chr()
  loc_68BABD: FLdRfVar var_140
  loc_68BAC0: ConcatVar var_150
  loc_68BAC4: LitI4 &HC
  loc_68BAC9: FLdRfVar var_160
  loc_68BACC: ImpAdCallFPR4  = Chr()
  loc_68BAD1: FLdRfVar var_160
  loc_68BAD4: ConcatVar var_170
  loc_68BAD8: CStrVarTmp
  loc_68BAD9: FStStr var_B4
  loc_68BADC: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = ""
  loc_68BAED: LitI2_Byte &H18
  loc_68BAEF: CR8I2
  loc_68BAF0: FStFPR8 var_C8
  loc_68BAF3: LitVar_Missing var_110
  loc_68BAF6: FLdFPR8 var_C8
  loc_68BAF9: CI4R8
  loc_68BAFA: ILdRf sValor
  loc_68BAFD: CVarRef
  loc_68BB02: FLdRfVar var_120
  loc_68BB05: ImpAdCallFPR4  = Mid(, , )
  loc_68BB0A: LitI2_Byte 4
  loc_68BB0C: PopTmpLdAd2 var_176
  loc_68BB0F: FLdRfVar var_B4
  loc_68BB12: FLdRfVar var_AC
  loc_68BB15: PopTmpLdAdStr var_174
  loc_68BB18: FLdRfVar var_120
  loc_68BB1B: CStrVarTmp
  loc_68BB1C: PopTmpLdAdStr
  loc_68BB20: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_68BB25: FStI2 var_178
  loc_68BB28: FLdFPR8 var_C8
  loc_68BB2B: LitI2_Byte 2
  loc_68BB2D: CR8I2
  loc_68BB2E: AddR8
  loc_68BB2F: FLdI2 var_178
  loc_68BB32: CR8I2
  loc_68BB33: AddR8
  loc_68BB34: FStFPR8 var_C8
  loc_68BB37: FFree1Str var_D0
  loc_68BB3A: FFreeVar var_110 = ""
  loc_68BB41: LitStr "INSERT INTO DBENCABEZADO (cod_reg, nro_adb, fecha_deb, importe_deb )"
  loc_68BB44: FStStrCopy var_BC
  loc_68BB47: LitStr " VALUES ('"
  loc_68BB4A: LitI4 1
  loc_68BB4F: FLdRfVar var_AC
  loc_68BB52: Ary1LdI4
  loc_68BB53: ConcatStr
  loc_68BB54: FStStrNoPop var_D0
  loc_68BB57: LitStr "','"
  loc_68BB5A: ConcatStr
  loc_68BB5B: FStStrNoPop var_17C
  loc_68BB5E: LitI4 2
  loc_68BB63: FLdRfVar var_AC
  loc_68BB66: Ary1LdI4
  loc_68BB67: ConcatStr
  loc_68BB68: FStStrNoPop var_180
  loc_68BB6B: LitStr "','"
  loc_68BB6E: ConcatStr
  loc_68BB6F: FStStrNoPop var_184
  loc_68BB72: LitI4 3
  loc_68BB77: FLdRfVar var_AC
  loc_68BB7A: Ary1LdI4
  loc_68BB7B: ConcatStr
  loc_68BB7C: FStStrNoPop var_188
  loc_68BB7F: LitStr "',"
  loc_68BB82: ConcatStr
  loc_68BB83: FStStrNoPop var_194
  loc_68BB86: FLdRfVar var_190
  loc_68BB89: LitI2_Byte &HA
  loc_68BB8B: PopTmpLdAd2 var_176
  loc_68BB8E: LitI4 4
  loc_68BB93: FLdRfVar var_AC
  loc_68BB96: Ary1LdRf
  loc_68BB97: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_68BB9C: FLdFPR8 var_190
  loc_68BB9F: CStrR8
  loc_68BBA1: FStStrNoPop var_198
  loc_68BBA4: ConcatStr
  loc_68BBA5: FStStrNoPop var_19C
  loc_68BBA8: LitStr ")"
  loc_68BBAB: ConcatStr
  loc_68BBAC: FStStr var_C0
  loc_68BBAF: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_194 = "": var_198 = ""
  loc_68BBC2: ILdRf var_BC
  loc_68BBC5: ILdRf var_C0
  loc_68BBC8: ConcatStr
  loc_68BBC9: FStStr var_BC
  loc_68BBCC: LitVarI4
  loc_68BBD4: PopAdLdVar
  loc_68BBD5: LitStr "Delete * from DBENCABEZADO"
  loc_68BBD8: FLdPr Me
  loc_68BBDB: MemLdPr DBase
  loc_68BBDE: Me.Execute from_stack_1, from_stack_2
  loc_68BBE3: LitVarI4
  loc_68BBEB: PopAdLdVar
  loc_68BBEC: ILdRf var_BC
  loc_68BBEF: FLdPr Me
  loc_68BBF2: MemLdPr DBase
  loc_68BBF5: Me.Execute from_stack_1, from_stack_2
  loc_68BBFA: LitI4 4
  loc_68BBFF: FLdRfVar var_110
  loc_68BC02: ImpAdCallFPR4  = Chr()
  loc_68BC07: FLdRfVar var_110
  loc_68BC0A: LitI4 &HC
  loc_68BC0F: FLdRfVar var_120
  loc_68BC12: ImpAdCallFPR4  = Chr()
  loc_68BC17: FLdRfVar var_120
  loc_68BC1A: ConcatVar var_130
  loc_68BC1E: LitI4 8
  loc_68BC23: FLdRfVar var_140
  loc_68BC26: ImpAdCallFPR4  = Chr()
  loc_68BC2B: FLdRfVar var_140
  loc_68BC2E: ConcatVar var_150
  loc_68BC32: LitI4 2
  loc_68BC37: FLdRfVar var_160
  loc_68BC3A: ImpAdCallFPR4  = Chr()
  loc_68BC3F: FLdRfVar var_160
  loc_68BC42: ConcatVar var_170
  loc_68BC46: LitI4 &HA
  loc_68BC4B: FLdRfVar var_1AC
  loc_68BC4E: ImpAdCallFPR4  = Chr()
  loc_68BC53: FLdRfVar var_1AC
  loc_68BC56: ConcatVar var_1BC
  loc_68BC5A: LitI4 &HA
  loc_68BC5F: FLdRfVar var_1CC
  loc_68BC62: ImpAdCallFPR4  = Chr()
  loc_68BC67: FLdRfVar var_1CC
  loc_68BC6A: ConcatVar var_1DC
  loc_68BC6E: LitI4 1
  loc_68BC73: FLdRfVar var_1EC
  loc_68BC76: ImpAdCallFPR4  = Chr()
  loc_68BC7B: FLdRfVar var_1EC
  loc_68BC7E: ConcatVar var_1FC
  loc_68BC82: CStrVarTmp
  loc_68BC83: FStStr var_B4
  loc_68BC86: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1EC = ""
  loc_68BCA3: LitVarI4
  loc_68BCAB: PopAdLdVar
  loc_68BCAC: LitStr "Delete * from DBDETALLE"
  loc_68BCAF: FLdPr Me
  loc_68BCB2: MemLdPr DBase
  loc_68BCB5: Me.Execute from_stack_1, from_stack_2
  loc_68BCBA: FLdFPR8 var_C8
  loc_68BCBD: ILdI4 sValor
  loc_68BCC0: FnLenStr
  loc_68BCC1: CR8I4
  loc_68BCC2: LeR8
  loc_68BCC3: BranchF loc_68BEE9
  loc_68BCC6: LitVar_Missing var_110
  loc_68BCC9: FLdFPR8 var_C8
  loc_68BCCC: CI4R8
  loc_68BCCD: ILdRf sValor
  loc_68BCD0: CVarRef
  loc_68BCD5: FLdRfVar var_120
  loc_68BCD8: ImpAdCallFPR4  = Mid(, , )
  loc_68BCDD: LitI2_Byte 7
  loc_68BCDF: PopTmpLdAd2 var_176
  loc_68BCE2: FLdRfVar var_B4
  loc_68BCE5: FLdRfVar var_AC
  loc_68BCE8: PopTmpLdAdStr var_174
  loc_68BCEB: FLdRfVar var_120
  loc_68BCEE: CStrVarTmp
  loc_68BCEF: PopTmpLdAdStr
  loc_68BCF3: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_68BCF8: FStI2 var_178
  loc_68BCFB: FLdFPR8 var_C8
  loc_68BCFE: LitI2_Byte 2
  loc_68BD00: CR8I2
  loc_68BD01: AddR8
  loc_68BD02: FLdI2 var_178
  loc_68BD05: CR8I2
  loc_68BD06: AddR8
  loc_68BD07: FStFPR8 var_C8
  loc_68BD0A: FFree1Str var_D0
  loc_68BD0D: FFreeVar var_110 = ""
  loc_68BD14: LitI4 4
  loc_68BD19: FLdRfVar var_AC
  loc_68BD1C: Ary1LdI4
  loc_68BD1D: ImpAdCallFPR4 push Val()
  loc_68BD22: FStFPR8 var_190
  loc_68BD25: LitI4 4
  loc_68BD2A: FLdRfVar var_AC
  loc_68BD2D: Ary1LdI4
  loc_68BD2E: LitStr " - "
  loc_68BD31: ConcatStr
  loc_68BD32: FStStrNoPop var_17C
  loc_68BD35: FLdRfVar var_D0
  loc_68BD38: FLdFPR8 var_190
  loc_68BD3B: CI2R8
  loc_68BD3C: ImpAdLdRf MemVar_74A220
  loc_68BD3F: NewIfNullPr clsProducts
  loc_68BD47: ILdRf var_D0
  loc_68BD4A: ConcatStr
  loc_68BD4B: CVarStr var_110
  loc_68BD4E: FLdRfVar var_120
  loc_68BD51: ImpAdCallFPR4  = Trim()
  loc_68BD56: FLdRfVar var_120
  loc_68BD59: CStrVarTmp
  loc_68BD5A: FStStrNoPop var_180
  loc_68BD5D: LitI4 4
  loc_68BD62: FLdRfVar var_AC
  loc_68BD65: Ary1StStrCopy
  loc_68BD66: FFreeStr var_17C = "": var_D0 = ""
  loc_68BD6F: FFreeVar var_110 = ""
  loc_68BD76: LitI4 4
  loc_68BD7B: FLdRfVar var_AC
  loc_68BD7E: Ary1LdI4
  loc_68BD7F: FnLenStr
  loc_68BD80: CVarI4
  loc_68BD84: LitI4 1
  loc_68BD89: LitI4 4
  loc_68BD8E: FLdRfVar var_AC
  loc_68BD91: Ary1LdRf
  loc_68BD92: CVarRef
  loc_68BD97: FLdRfVar var_120
  loc_68BD9A: ImpAdCallFPR4  = Mid(, , )
  loc_68BD9F: FLdRfVar var_120
  loc_68BDA2: CStrVarTmp
  loc_68BDA3: FStStrNoPop var_D0
  loc_68BDA6: LitI4 4
  loc_68BDAB: FLdRfVar var_AC
  loc_68BDAE: Ary1StStrCopy
  loc_68BDAF: FFree1Str var_D0
  loc_68BDB2: FFreeVar var_110 = ""
  loc_68BDB9: FLdRfVar var_190
  loc_68BDBC: LitI2_Byte 8
  loc_68BDBE: PopTmpLdAd2 var_176
  loc_68BDC1: LitI4 6
  loc_68BDC6: FLdRfVar var_AC
  loc_68BDC9: Ary1LdRf
  loc_68BDCA: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_68BDCF: FLdFPR8 var_190
  loc_68BDD2: LitI2_Byte 0
  loc_68BDD4: CR8I2
  loc_68BDD5: NeR8
  loc_68BDD6: BranchF loc_68BDE1
  loc_68BDD9: LitI2_Byte &HFF
  loc_68BDDB: FLdPr Me
  loc_68BDDE: MemStI2 global_132
  loc_68BDE1: LitStr "INSERT INTO DBDETALLE(cod_reg, nro_adb, fecha, cod_prod, litros, litros_mpc, tipo_Venta)"
  loc_68BDE4: FStStrCopy var_BC
  loc_68BDE7: LitStr " VALUES ('"
  loc_68BDEA: LitI4 1
  loc_68BDEF: FLdRfVar var_AC
  loc_68BDF2: Ary1LdI4
  loc_68BDF3: ConcatStr
  loc_68BDF4: FStStrNoPop var_D0
  loc_68BDF7: LitStr "','"
  loc_68BDFA: ConcatStr
  loc_68BDFB: FStStrNoPop var_17C
  loc_68BDFE: LitI4 2
  loc_68BE03: FLdRfVar var_AC
  loc_68BE06: Ary1LdI4
  loc_68BE07: ConcatStr
  loc_68BE08: FStStrNoPop var_180
  loc_68BE0B: LitStr "','"
  loc_68BE0E: ConcatStr
  loc_68BE0F: FStStrNoPop var_184
  loc_68BE12: LitI4 3
  loc_68BE17: FLdRfVar var_AC
  loc_68BE1A: Ary1LdI4
  loc_68BE1B: ConcatStr
  loc_68BE1C: FStStrNoPop var_188
  loc_68BE1F: LitStr "','"
  loc_68BE22: ConcatStr
  loc_68BE23: FStStr var_C0
  loc_68BE26: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_68BE33: ILdRf var_C0
  loc_68BE36: LitI4 4
  loc_68BE3B: FLdRfVar var_AC
  loc_68BE3E: Ary1LdI4
  loc_68BE3F: ConcatStr
  loc_68BE40: FStStrNoPop var_D0
  loc_68BE43: LitStr "', "
  loc_68BE46: ConcatStr
  loc_68BE47: FStStrNoPop var_17C
  loc_68BE4A: FLdRfVar var_190
  loc_68BE4D: LitI2_Byte 8
  loc_68BE4F: PopTmpLdAd2 var_176
  loc_68BE52: LitI4 5
  loc_68BE57: FLdRfVar var_AC
  loc_68BE5A: Ary1LdRf
  loc_68BE5B: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_68BE60: FLdFPR8 var_190
  loc_68BE63: CStrR8
  loc_68BE65: FStStrNoPop var_180
  loc_68BE68: ConcatStr
  loc_68BE69: FStStrNoPop var_184
  loc_68BE6C: LitStr ","
  loc_68BE6F: ConcatStr
  loc_68BE70: FStStrNoPop var_188
  loc_68BE73: FLdRfVar var_204
  loc_68BE76: LitI2_Byte 8
  loc_68BE78: PopTmpLdAd2 var_178
  loc_68BE7B: LitI4 6
  loc_68BE80: FLdRfVar var_AC
  loc_68BE83: Ary1LdRf
  loc_68BE84: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_68BE89: FLdFPR8 var_204
  loc_68BE8C: CStrR8
  loc_68BE8E: FStStrNoPop var_194
  loc_68BE91: ConcatStr
  loc_68BE92: FStStrNoPop var_198
  loc_68BE95: LitStr ",'"
  loc_68BE98: ConcatStr
  loc_68BE99: FStStrNoPop var_19C
  loc_68BE9C: LitI4 7
  loc_68BEA1: FLdRfVar var_AC
  loc_68BEA4: Ary1LdI4
  loc_68BEA5: ConcatStr
  loc_68BEA6: FStStrNoPop var_208
  loc_68BEA9: LitStr "')"
  loc_68BEAC: ConcatStr
  loc_68BEAD: FStStr var_C0
  loc_68BEB0: FFreeStr var_D0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_68BEC5: ILdRf var_BC
  loc_68BEC8: ILdRf var_C0
  loc_68BECB: ConcatStr
  loc_68BECC: FStStr var_BC
  loc_68BECF: LitVarI4
  loc_68BED7: PopAdLdVar
  loc_68BED8: ILdRf var_BC
  loc_68BEDB: FLdPr Me
  loc_68BEDE: MemLdPr DBase
  loc_68BEE1: Me.Execute from_stack_1, from_stack_2
  loc_68BEE6: Branch loc_68BCBA
  loc_68BEE9: FLdPr Me
  loc_68BEEC: MemLdPr DBase
  loc_68BEEF: Me.Close
  loc_68BEF4: ExitProcCbHresult
  loc_68BEFA: FLdPr Me
  loc_68BEFD: MemLdPr DBase
  loc_68BF00: Me.Close
  loc_68BF05: FLdRfVar var_D0
  loc_68BF08: ImpAdCallI2 Err 'rtcErrObj
  loc_68BF0D: FStAdFunc var_CC
  loc_68BF10: FLdPr var_CC
  loc_68BF13:  = Err.Description
  loc_68BF18: LitVar_Missing var_140
  loc_68BF1B: LitVar_Missing var_130
  loc_68BF1E: LitVar_Missing var_120
  loc_68BF21: LitI4 &H10
  loc_68BF26: FLdZeroAd var_D0
  loc_68BF29: CVarStr var_110
  loc_68BF2C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68BF31: FFree1Ad var_CC
  loc_68BF34: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_68BF3F: ExitProcCbHresult
  loc_68BF45: Ary1LdRf
  loc_68BF46: CI2Str
End Function

Public Function ArmarReporteConectividad(sValor) '6B3E78
  'Data Table: 440CF4
  loc_6B36EC: OnErrorGoto loc_6B3D53
  loc_6B36EF: FLdRfVar var_B2
  loc_6B36F2: LitStr "\reporte.mdb"
  loc_6B36F5: FStStrCopy var_B0
  loc_6B36F8: FLdRfVar var_B0
  loc_6B36FB: from_stack_2v = AbrirBD(from_stack_1v)
  loc_6B3700: FFree1Str var_B0
  loc_6B3703: FLdRfVar var_C4
  loc_6B3706: from_stack_1v = CargarMotivosCierre()
  loc_6B370B: FFree1Var var_C4 = ""
  loc_6B370E: Call InicializarVariables()
  loc_6B3713: LitI2_Byte &HFF
  loc_6B3715: FStI2 var_86
  loc_6B3718: LitI2_Byte 2
  loc_6B371A: CR8I2
  loc_6B371B: FLdRfVar var_A8
  loc_6B371E: LitI2_Byte &HA
  loc_6B3720: CR8I2
  loc_6B3721: ForR8 var_D4
  loc_6B3727: LitI2_Byte 0
  loc_6B3729: FLdFPR8 var_A8
  loc_6B372C: CI4R8
  loc_6B372D: FLdPr Me
  loc_6B3730: MemLdRfVar from_stack_1.global_100
  loc_6B3733: Ary1StI2
  loc_6B3734: FLdRfVar var_A8
  loc_6B3737: NextStepR8 var_D4, loc_6B3727
  loc_6B373C: LitI2_Byte 0
  loc_6B373E: CR8I2
  loc_6B373F: FStFPR8 var_A8
  loc_6B3742: FLdFPR8 var_A8
  loc_6B3745: LitI2_Byte &H5C
  loc_6B3747: CR8I2
  loc_6B3748: AddR8
  loc_6B3749: FStFPR8 var_A8
  loc_6B374C: FLdRfVar var_A8
  loc_6B374F: CVarRef
  loc_6B3754: LitI4 1
  loc_6B3759: ILdRf sValor
  loc_6B375C: CVarRef
  loc_6B3761: FLdRfVar var_C4
  loc_6B3764: ImpAdCallFPR4  = Mid(, , )
  loc_6B3769: FLdRfVar var_C4
  loc_6B376C: CStrVarTmp
  loc_6B376D: FStStr var_8C
  loc_6B3770: FFree1Var var_C4 = ""
  loc_6B3773: from_stack_1v = Proc_100_54_5DE28C()
  loc_6B3778: FLdRfVar var_B2
  loc_6B377B: LitStr "RC_CABECERA"
  loc_6B377E: FStStrCopy var_B0
  loc_6B3781: FLdRfVar var_B0
  loc_6B3784: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3789: FLdI2 var_B2
  loc_6B378C: FFree1Str var_B0
  loc_6B378F: BranchF loc_6B37BA
  loc_6B3792: FLdRfVar var_B2
  loc_6B3795: FLdRfVar var_8C
  loc_6B3798: from_stack_2v = PorcesarDatosCabecera(from_stack_1v)
  loc_6B379D: FLdI2 var_B2
  loc_6B37A0: NotI4
  loc_6B37A1: BranchF loc_6B37A9
  loc_6B37A4: LitI2_Byte 0
  loc_6B37A6: FStI2 var_86
  loc_6B37A9: FLdFPR8 var_A8
  loc_6B37AC: LitI2_Byte 1
  loc_6B37AE: CR8I2
  loc_6B37AF: AddR8
  loc_6B37B0: LitI2_Byte 2
  loc_6B37B2: CR8I2
  loc_6B37B3: AddR8
  loc_6B37B4: FStFPR8 var_A8
  loc_6B37B7: Branch loc_6B37C8
  loc_6B37BA: FLdRfVar var_B2
  loc_6B37BD: from_stack_1v = CerrarBD()
  loc_6B37C2: ExitProcCbHresult
  loc_6B37C8: LitVarI2 var_C4, 4
  loc_6B37CD: FLdFPR8 var_A8
  loc_6B37D0: CI4R8
  loc_6B37D1: ILdRf sValor
  loc_6B37D4: CVarRef
  loc_6B37D9: FLdRfVar var_108
  loc_6B37DC: ImpAdCallFPR4  = Mid(, , )
  loc_6B37E1: FLdRfVar var_108
  loc_6B37E4: LitVarStr var_118, "TR02"
  loc_6B37E9: HardType
  loc_6B37EA: EqVar var_128
  loc_6B37EE: LitVarI2 var_158, 3
  loc_6B37F3: FLdFPR8 var_A8
  loc_6B37F6: LitI2_Byte &H6D
  loc_6B37F8: CR8I2
  loc_6B37F9: AddR8
  loc_6B37FA: CI4R8
  loc_6B37FB: ILdRf sValor
  loc_6B37FE: CVarRef
  loc_6B3803: FLdRfVar var_168
  loc_6B3806: ImpAdCallFPR4  = Mid(, , )
  loc_6B380B: FLdRfVar var_168
  loc_6B380E: LitVarStr var_178, "TR0"
  loc_6B3813: HardType
  loc_6B3814: EqVar var_188
  loc_6B3818: AndVar var_198
  loc_6B381C: CBoolVarNull
  loc_6B381E: FFreeVar var_C4 = "": var_108 = "": var_158 = ""
  loc_6B3829: BranchF loc_6B383F
  loc_6B382C: LitI2_Byte &H6B
  loc_6B382E: CUI1I2
  loc_6B3830: FStUI1 var_F6
  loc_6B3834: LitI2_Byte &HFF
  loc_6B3836: FLdPr Me
  loc_6B3839: MemStI2 OldfilePConsign
  loc_6B383C: Branch loc_6B384F
  loc_6B383F: LitI2_Byte &H6C
  loc_6B3841: CUI1I2
  loc_6B3843: FStUI1 var_F6
  loc_6B3847: LitI2_Byte 0
  loc_6B3849: FLdPr Me
  loc_6B384C: MemStI2 OldfilePConsign
  loc_6B384F: FLdRfVar var_B2
  loc_6B3852: LitStr "RC_DETALLE"
  loc_6B3855: FStStrCopy var_B0
  loc_6B3858: FLdRfVar var_B0
  loc_6B385B: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3860: FLdI2 var_B2
  loc_6B3863: FFree1Str var_B0
  loc_6B3866: BranchF loc_6B38EA
  loc_6B3869: LitVarI2 var_C4, 4
  loc_6B386E: FLdFPR8 var_A8
  loc_6B3871: CI4R8
  loc_6B3872: ILdRf sValor
  loc_6B3875: CVarRef
  loc_6B387A: FLdRfVar var_108
  loc_6B387D: ImpAdCallFPR4  = Mid(, , )
  loc_6B3882: FLdRfVar var_108
  loc_6B3885: LitVarStr var_118, "TR02"
  loc_6B388A: HardType
  loc_6B388B: EqVarBool
  loc_6B388D: FFreeVar var_C4 = ""
  loc_6B3894: BranchF loc_6B38E7
  loc_6B3897: FLdRfVar var_F6
  loc_6B389A: CVarRef
  loc_6B389F: FLdFPR8 var_A8
  loc_6B38A2: CI4R8
  loc_6B38A3: ILdRf sValor
  loc_6B38A6: CVarRef
  loc_6B38AB: FLdRfVar var_C4
  loc_6B38AE: ImpAdCallFPR4  = Mid(, , )
  loc_6B38B3: FLdRfVar var_C4
  loc_6B38B6: CStrVarTmp
  loc_6B38B7: FStStr var_90
  loc_6B38BA: FFree1Var var_C4 = ""
  loc_6B38BD: FLdRfVar var_B2
  loc_6B38C0: FLdRfVar var_90
  loc_6B38C3: from_stack_2v = PorcesarDatosDetalles(from_stack_1v)
  loc_6B38C8: FLdI2 var_B2
  loc_6B38CB: NotI4
  loc_6B38CC: BranchF loc_6B38D4
  loc_6B38CF: LitI2_Byte 0
  loc_6B38D1: FStI2 var_86
  loc_6B38D4: FLdFPR8 var_A8
  loc_6B38D7: FLdUI1
  loc_6B38DB: CR8I2
  loc_6B38DC: AddR8
  loc_6B38DD: LitI2_Byte 2
  loc_6B38DF: CR8I2
  loc_6B38E0: AddR8
  loc_6B38E1: FStFPR8 var_A8
  loc_6B38E4: Branch loc_6B3869
  loc_6B38E7: Branch loc_6B38F8
  loc_6B38EA: FLdRfVar var_B2
  loc_6B38ED: from_stack_1v = CerrarBD()
  loc_6B38F2: ExitProcCbHresult
  loc_6B38F8: LitI2_Byte 0
  loc_6B38FA: FLdPr Me
  loc_6B38FD: MemStI2 OldfilePConsign
  loc_6B3900: LitVarI2 var_C4, 4
  loc_6B3905: FLdFPR8 var_A8
  loc_6B3908: CI4R8
  loc_6B3909: ILdRf sValor
  loc_6B390C: CVarRef
  loc_6B3911: FLdRfVar var_108
  loc_6B3914: ImpAdCallFPR4  = Mid(, , )
  loc_6B3919: FLdRfVar var_108
  loc_6B391C: LitVarStr var_118, "TR03"
  loc_6B3921: HardType
  loc_6B3922: EqVar var_128
  loc_6B3926: LitVarI2 var_158, 3
  loc_6B392B: FLdFPR8 var_A8
  loc_6B392E: LitI2 135
  loc_6B3931: CR8I2
  loc_6B3932: AddR8
  loc_6B3933: CI4R8
  loc_6B3934: ILdRf sValor
  loc_6B3937: CVarRef
  loc_6B393C: FLdRfVar var_168
  loc_6B393F: ImpAdCallFPR4  = Mid(, , )
  loc_6B3944: FLdRfVar var_168
  loc_6B3947: LitVarStr var_178, "TR0"
  loc_6B394C: HardType
  loc_6B394D: EqVar var_188
  loc_6B3951: AndVar var_198
  loc_6B3955: CBoolVarNull
  loc_6B3957: FFreeVar var_C4 = "": var_108 = "": var_158 = ""
  loc_6B3962: BranchF loc_6B396D
  loc_6B3965: LitI2_Byte &HFF
  loc_6B3967: FLdPr Me
  loc_6B396A: MemStI2 OldfilePConsign
  loc_6B396D: FLdPr Me
  loc_6B3970: MemLdI2 OldfilePConsign
  loc_6B3973: LitI2_Byte &HFF
  loc_6B3975: EqI2
  loc_6B3976: BranchF loc_6B3A35
  loc_6B3979: LitI2_Byte 0
  loc_6B397B: FLdPr Me
  loc_6B397E: MemStI2 global_140
  loc_6B3981: FLdRfVar var_B2
  loc_6B3984: LitStr "RC_OPDIF"
  loc_6B3987: FStStrCopy var_B0
  loc_6B398A: FLdRfVar var_B0
  loc_6B398D: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3992: FLdI2 var_B2
  loc_6B3995: FFree1Str var_B0
  loc_6B3998: BranchF loc_6B3A24
  loc_6B399B: LitVarI2 var_C4, 4
  loc_6B39A0: FLdFPR8 var_A8
  loc_6B39A3: CI4R8
  loc_6B39A4: ILdRf sValor
  loc_6B39A7: CVarRef
  loc_6B39AC: FLdRfVar var_108
  loc_6B39AF: ImpAdCallFPR4  = Mid(, , )
  loc_6B39B4: FLdRfVar var_108
  loc_6B39B7: LitVarStr var_118, "TR03"
  loc_6B39BC: HardType
  loc_6B39BD: EqVarBool
  loc_6B39BF: FFreeVar var_C4 = ""
  loc_6B39C6: BranchF loc_6B3A21
  loc_6B39C9: LitI2_Byte &HFF
  loc_6B39CB: FLdPr Me
  loc_6B39CE: MemStI2 global_140
  loc_6B39D1: LitVarI2 var_C4, 133
  loc_6B39D6: FLdFPR8 var_A8
  loc_6B39D9: CI4R8
  loc_6B39DA: ILdRf sValor
  loc_6B39DD: CVarRef
  loc_6B39E2: FLdRfVar var_108
  loc_6B39E5: ImpAdCallFPR4  = Mid(, , )
  loc_6B39EA: FLdRfVar var_108
  loc_6B39ED: CStrVarTmp
  loc_6B39EE: FStStr ArmarReporteConectividad
  loc_6B39F1: FFreeVar var_C4 = ""
  loc_6B39F8: FLdRfVar var_B2
  loc_6B39FB: FLdRfVar ArmarReporteConectividad
  loc_6B39FE: from_stack_2v = PorcesarDatosOpDif(from_stack_1v)
  loc_6B3A03: FLdI2 var_B2
  loc_6B3A06: NotI4
  loc_6B3A07: BranchF loc_6B3A0F
  loc_6B3A0A: LitI2_Byte 0
  loc_6B3A0C: FStI2 var_86
  loc_6B3A0F: FLdFPR8 var_A8
  loc_6B3A12: LitI2 133
  loc_6B3A15: CR8I2
  loc_6B3A16: AddR8
  loc_6B3A17: LitI2_Byte 2
  loc_6B3A19: CR8I2
  loc_6B3A1A: AddR8
  loc_6B3A1B: FStFPR8 var_A8
  loc_6B3A1E: Branch loc_6B399B
  loc_6B3A21: Branch loc_6B3A32
  loc_6B3A24: FLdRfVar var_B2
  loc_6B3A27: from_stack_1v = CerrarBD()
  loc_6B3A2C: ExitProcCbHresult
  loc_6B3A32: Branch loc_6B3AEE
  loc_6B3A35: LitI2_Byte 0
  loc_6B3A37: FLdPr Me
  loc_6B3A3A: MemStI2 global_140
  loc_6B3A3D: FLdRfVar var_B2
  loc_6B3A40: LitStr "RC_OPDIF"
  loc_6B3A43: FStStrCopy var_B0
  loc_6B3A46: FLdRfVar var_B0
  loc_6B3A49: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3A4E: FLdI2 var_B2
  loc_6B3A51: FFree1Str var_B0
  loc_6B3A54: BranchF loc_6B3AE0
  loc_6B3A57: LitVarI2 var_C4, 4
  loc_6B3A5C: FLdFPR8 var_A8
  loc_6B3A5F: CI4R8
  loc_6B3A60: ILdRf sValor
  loc_6B3A63: CVarRef
  loc_6B3A68: FLdRfVar var_108
  loc_6B3A6B: ImpAdCallFPR4  = Mid(, , )
  loc_6B3A70: FLdRfVar var_108
  loc_6B3A73: LitVarStr var_118, "TR03"
  loc_6B3A78: HardType
  loc_6B3A79: EqVarBool
  loc_6B3A7B: FFreeVar var_C4 = ""
  loc_6B3A82: BranchF loc_6B3ADD
  loc_6B3A85: LitI2_Byte &HFF
  loc_6B3A87: FLdPr Me
  loc_6B3A8A: MemStI2 global_140
  loc_6B3A8D: LitVarI2 var_C4, 183
  loc_6B3A92: FLdFPR8 var_A8
  loc_6B3A95: CI4R8
  loc_6B3A96: ILdRf sValor
  loc_6B3A99: CVarRef
  loc_6B3A9E: FLdRfVar var_108
  loc_6B3AA1: ImpAdCallFPR4  = Mid(, , )
  loc_6B3AA6: FLdRfVar var_108
  loc_6B3AA9: CStrVarTmp
  loc_6B3AAA: FStStr ArmarReporteConectividad
  loc_6B3AAD: FFreeVar var_C4 = ""
  loc_6B3AB4: FLdRfVar var_B2
  loc_6B3AB7: FLdRfVar ArmarReporteConectividad
  loc_6B3ABA: from_stack_2v = PorcesarDatosOpDif(from_stack_1v)
  loc_6B3ABF: FLdI2 var_B2
  loc_6B3AC2: NotI4
  loc_6B3AC3: BranchF loc_6B3ACB
  loc_6B3AC6: LitI2_Byte 0
  loc_6B3AC8: FStI2 var_86
  loc_6B3ACB: FLdFPR8 var_A8
  loc_6B3ACE: LitI2 183
  loc_6B3AD1: CR8I2
  loc_6B3AD2: AddR8
  loc_6B3AD3: LitI2_Byte 2
  loc_6B3AD5: CR8I2
  loc_6B3AD6: AddR8
  loc_6B3AD7: FStFPR8 var_A8
  loc_6B3ADA: Branch loc_6B3A57
  loc_6B3ADD: Branch loc_6B3AEE
  loc_6B3AE0: FLdRfVar var_B2
  loc_6B3AE3: from_stack_1v = CerrarBD()
  loc_6B3AE8: ExitProcCbHresult
  loc_6B3AEE: LitI4 &HC8
  loc_6B3AF3: FLdRfVar var_C4
  loc_6B3AF6: ImpAdCallFPR4  = Space()
  loc_6B3AFB: FLdRfVar var_C4
  loc_6B3AFE: CStrVarTmp
  loc_6B3AFF: FStStr var_19C
  loc_6B3B02: FFree1Var var_C4 = ""
  loc_6B3B05: LitStr "CEM44.ini"
  loc_6B3B08: FLdRfVar var_1B0
  loc_6B3B0B: CStr2Ansi
  loc_6B3B0C: ILdRf var_1B0
  loc_6B3B0F: LitI4 &H64
  loc_6B3B14: ILdRf var_19C
  loc_6B3B17: FLdRfVar var_1AC
  loc_6B3B1A: CStr2Ansi
  loc_6B3B1B: ILdRf var_1AC
  loc_6B3B1E: LitI2_Byte 0
  loc_6B3B20: CStrUI1
  loc_6B3B22: FStStrNoPop var_1A4
  loc_6B3B25: FLdRfVar var_1A8
  loc_6B3B28: CStr2Ansi
  loc_6B3B29: ILdRf var_1A8
  loc_6B3B2C: LitStr "MOSTRAR_EVENTOS"
  loc_6B3B2F: FLdRfVar var_1A0
  loc_6B3B32: CStr2Ansi
  loc_6B3B33: ILdRf var_1A0
  loc_6B3B36: LitStr "CONECTIVIDAD"
  loc_6B3B39: FLdRfVar var_B0
  loc_6B3B3C: CStr2Ansi
  loc_6B3B3D: ILdRf var_B0
  loc_6B3B40: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_6B3B45: SetLastSystemError
  loc_6B3B46: ILdRf var_1AC
  loc_6B3B49: FLdRfVar var_19C
  loc_6B3B4C: CStr2Uni
  loc_6B3B4E: FFreeStr var_B0 = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_6B3B5D: LitVarI2 var_C4, 1
  loc_6B3B62: LitI4 1
  loc_6B3B67: FLdRfVar var_19C
  loc_6B3B6A: CVarRef
  loc_6B3B6F: FLdRfVar var_108
  loc_6B3B72: ImpAdCallFPR4  = Mid(, , )
  loc_6B3B77: FLdRfVar var_108
  loc_6B3B7A: CStrVarTmp
  loc_6B3B7B: FStStr var_19C
  loc_6B3B7E: FFreeVar var_C4 = ""
  loc_6B3B85: FLdRfVar var_B2
  loc_6B3B88: LitStr "RC_EVENTOS"
  loc_6B3B8B: FStStrCopy var_B0
  loc_6B3B8E: FLdRfVar var_B0
  loc_6B3B91: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3B96: FLdI2 var_B2
  loc_6B3B99: FFree1Str var_B0
  loc_6B3B9C: BranchF loc_6B3C2B
  loc_6B3B9F: LitVarI2 var_C4, 4
  loc_6B3BA4: FLdFPR8 var_A8
  loc_6B3BA7: CI4R8
  loc_6B3BA8: ILdRf sValor
  loc_6B3BAB: CVarRef
  loc_6B3BB0: FLdRfVar var_108
  loc_6B3BB3: ImpAdCallFPR4  = Mid(, , )
  loc_6B3BB8: FLdRfVar var_108
  loc_6B3BBB: LitVarStr var_118, "TR04"
  loc_6B3BC0: HardType
  loc_6B3BC1: EqVarBool
  loc_6B3BC3: FFreeVar var_C4 = ""
  loc_6B3BCA: BranchF loc_6B3C28
  loc_6B3BCD: LitVarI2 var_C4, 174
  loc_6B3BD2: FLdFPR8 var_A8
  loc_6B3BD5: CI4R8
  loc_6B3BD6: ILdRf sValor
  loc_6B3BD9: CVarRef
  loc_6B3BDE: FLdRfVar var_108
  loc_6B3BE1: ImpAdCallFPR4  = Mid(, , )
  loc_6B3BE6: FLdRfVar var_108
  loc_6B3BE9: CStrVarTmp
  loc_6B3BEA: FStStr var_98
  loc_6B3BED: FFreeVar var_C4 = ""
  loc_6B3BF4: ILdRf var_19C
  loc_6B3BF7: LitStr "0"
  loc_6B3BFA: NeStr
  loc_6B3BFC: BranchF loc_6B3C16
  loc_6B3BFF: FLdRfVar var_B2
  loc_6B3C02: FLdRfVar var_98
  loc_6B3C05: from_stack_2v = PorcesarDatosEventos(from_stack_1v)
  loc_6B3C0A: FLdI2 var_B2
  loc_6B3C0D: NotI4
  loc_6B3C0E: BranchF loc_6B3C16
  loc_6B3C11: LitI2_Byte 0
  loc_6B3C13: FStI2 var_86
  loc_6B3C16: FLdFPR8 var_A8
  loc_6B3C19: LitI2 174
  loc_6B3C1C: CR8I2
  loc_6B3C1D: AddR8
  loc_6B3C1E: LitI2_Byte 2
  loc_6B3C20: CR8I2
  loc_6B3C21: AddR8
  loc_6B3C22: FStFPR8 var_A8
  loc_6B3C25: Branch loc_6B3B9F
  loc_6B3C28: Branch loc_6B3C39
  loc_6B3C2B: FLdRfVar var_B2
  loc_6B3C2E: from_stack_1v = CerrarBD()
  loc_6B3C33: ExitProcCbHresult
  loc_6B3C39: FLdRfVar var_B2
  loc_6B3C3C: LitStr "AnexoConectividad"
  loc_6B3C3F: FStStrCopy var_B0
  loc_6B3C42: FLdRfVar var_B0
  loc_6B3C45: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3C4A: FLdI2 var_B2
  loc_6B3C4D: FFree1Str var_B0
  loc_6B3C50: BranchF loc_6B3D0F
  loc_6B3C53: LitVarI2 var_C4, 4
  loc_6B3C58: FLdFPR8 var_A8
  loc_6B3C5B: CI4R8
  loc_6B3C5C: ILdRf sValor
  loc_6B3C5F: CVarRef
  loc_6B3C64: FLdRfVar var_108
  loc_6B3C67: ImpAdCallFPR4  = Mid(, , )
  loc_6B3C6C: FLdRfVar var_108
  loc_6B3C6F: LitVarStr var_118, "TR01"
  loc_6B3C74: HardType
  loc_6B3C75: EqVarBool
  loc_6B3C77: FFreeVar var_C4 = ""
  loc_6B3C7E: BranchF loc_6B3D0C
  loc_6B3C81: FLdFPR8 var_A8
  loc_6B3C84: LitI2_Byte &H15
  loc_6B3C86: CR8I2
  loc_6B3C87: AddR8
  loc_6B3C88: LitI2_Byte 2
  loc_6B3C8A: CR8I2
  loc_6B3C8B: AddR8
  loc_6B3C8C: FStFPR8 var_A8
  loc_6B3C8F: LitVarI2 var_C4, 4
  loc_6B3C94: FLdFPR8 var_A8
  loc_6B3C97: CI4R8
  loc_6B3C98: ILdRf sValor
  loc_6B3C9B: CVarRef
  loc_6B3CA0: FLdRfVar var_108
  loc_6B3CA3: ImpAdCallFPR4  = Mid(, , )
  loc_6B3CA8: FLdRfVar var_108
  loc_6B3CAB: LitVarStr var_118, "TR02"
  loc_6B3CB0: HardType
  loc_6B3CB1: EqVarBool
  loc_6B3CB3: FFreeVar var_C4 = ""
  loc_6B3CBA: BranchF loc_6B3D0C
  loc_6B3CBD: LitVarI2 var_C4, 28
  loc_6B3CC2: FLdFPR8 var_A8
  loc_6B3CC5: CI4R8
  loc_6B3CC6: ILdRf sValor
  loc_6B3CC9: CVarRef
  loc_6B3CCE: FLdRfVar var_108
  loc_6B3CD1: ImpAdCallFPR4  = Mid(, , )
  loc_6B3CD6: FLdRfVar var_108
  loc_6B3CD9: CStrVarTmp
  loc_6B3CDA: FStStr var_9C
  loc_6B3CDD: FFreeVar var_C4 = ""
  loc_6B3CE4: FLdRfVar var_B2
  loc_6B3CE7: FLdRfVar var_9C
  loc_6B3CEA: from_stack_2v = PorcesarDatosAnexo(from_stack_1v)
  loc_6B3CEF: FLdI2 var_B2
  loc_6B3CF2: NotI4
  loc_6B3CF3: BranchF loc_6B3CFB
  loc_6B3CF6: LitI2_Byte 0
  loc_6B3CF8: FStI2 var_86
  loc_6B3CFB: FLdFPR8 var_A8
  loc_6B3CFE: LitI2_Byte &H1C
  loc_6B3D00: CR8I2
  loc_6B3D01: AddR8
  loc_6B3D02: LitI2_Byte 2
  loc_6B3D04: CR8I2
  loc_6B3D05: AddR8
  loc_6B3D06: FStFPR8 var_A8
  loc_6B3D09: Branch loc_6B3C8F
  loc_6B3D0C: Branch loc_6B3D1D
  loc_6B3D0F: FLdRfVar var_B2
  loc_6B3D12: from_stack_1v = CerrarBD()
  loc_6B3D17: ExitProcCbHresult
  loc_6B3D1D: FLdRfVar var_B2
  loc_6B3D20: LitStr "rc_total_fms"
  loc_6B3D23: FStStrCopy var_B0
  loc_6B3D26: FLdRfVar var_B0
  loc_6B3D29: from_stack_2v = BorrarBD(from_stack_1v)
  loc_6B3D2E: FLdI2 var_B2
  loc_6B3D31: FFree1Str var_B0
  loc_6B3D34: BranchF loc_6B3D45
  loc_6B3D37: FLdRfVar var_B2
  loc_6B3D3A: from_stack_1v = Proc_100_55_6B92B0()
  loc_6B3D3F: FLdI2 var_B2
  loc_6B3D42: FStI2 var_86
  loc_6B3D45: FLdRfVar var_B2
  loc_6B3D48: from_stack_1v = CerrarBD()
  loc_6B3D4D: ExitProcCbHresult
  loc_6B3D53: FLdRfVar var_B2
  loc_6B3D56: from_stack_1v = CerrarBD()
  loc_6B3D5B: FLdRfVar var_1B8
  loc_6B3D5E: ImpAdCallI2 Err 'rtcErrObj
  loc_6B3D63: FStAdFunc var_1B4
  loc_6B3D66: FLdPr var_1B4
  loc_6B3D69:  = Err.Number
  loc_6B3D6E: ILdRf var_1B8
  loc_6B3D71: LitI4 &HBCE
  loc_6B3D76: EqI4
  loc_6B3D77: FFree1Ad var_1B4
  loc_6B3D7A: BranchF loc_6B3E00
  loc_6B3D7D: FLdRfVar var_1A0
  loc_6B3D80: LitVar_Missing var_228
  loc_6B3D83: LitVar_Missing var_208
  loc_6B3D86: LitVar_Missing var_1E8
  loc_6B3D89: LitVar_Missing var_198
  loc_6B3D8C: LitVar_Missing var_188
  loc_6B3D8F: LitVar_Missing var_168
  loc_6B3D92: LitVar_Missing var_158
  loc_6B3D95: LitVar_Missing var_128
  loc_6B3D98: LitVar_Missing var_108
  loc_6B3D9B: LitVar_Missing var_C4
  loc_6B3D9E: LitStr "Esta intentando cargar datos duplicados no permitidos."
  loc_6B3DA1: FStStrCopy var_B0
  loc_6B3DA4: FLdRfVar var_B0
  loc_6B3DA7: LitI4 &H2B
  loc_6B3DAC: PopTmpLdAdStr var_1B8
  loc_6B3DAF: LitI2_Byte &H1D
  loc_6B3DB1: PopTmpLdAd2 var_B2
  loc_6B3DB4: ImpAdLdRf MemVar_74C7D0
  loc_6B3DB7: NewIfNullPr clsMsg
  loc_6B3DBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B3DBF: LitVar_Missing var_288
  loc_6B3DC2: LitVar_Missing var_268
  loc_6B3DC5: ImpAdLdRf MemVar_74BF24
  loc_6B3DC8: CVarRef
  loc_6B3DCD: LitI4 &H40
  loc_6B3DD2: FLdZeroAd var_1A0
  loc_6B3DD5: CVarStr var_238
  loc_6B3DD8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B3DDD: FFree1Str var_B0
  loc_6B3DE0: FFreeVar var_C4 = "": var_108 = "": var_128 = "": var_158 = "": var_168 = "": var_188 = "": var_198 = "": var_1E8 = "": var_208 = "": var_228 = "": var_238 = "": var_268 = ""
  loc_6B3DFD: Branch loc_6B3E6A
  loc_6B3E00: FLdRfVar var_1B8
  loc_6B3E03: ImpAdCallI2 Err 'rtcErrObj
  loc_6B3E08: FStAdFunc var_1B4
  loc_6B3E0B: FLdPr var_1B4
  loc_6B3E0E:  = Err.Number
  loc_6B3E13: FLdRfVar var_1A0
  loc_6B3E16: ImpAdCallI2 Err 'rtcErrObj
  loc_6B3E1B: FStAdFunc var_28C
  loc_6B3E1E: FLdPr var_28C
  loc_6B3E21:  = Err.Description
  loc_6B3E26: LitVar_Missing var_158
  loc_6B3E29: LitVar_Missing var_128
  loc_6B3E2C: LitVar_Missing var_108
  loc_6B3E2F: LitI4 &H40
  loc_6B3E34: ILdRf var_1B8
  loc_6B3E37: CStrI4
  loc_6B3E39: FStStrNoPop var_B0
  loc_6B3E3C: LitStr "  "
  loc_6B3E3F: ConcatStr
  loc_6B3E40: FStStrNoPop var_1A4
  loc_6B3E43: ILdRf var_1A0
  loc_6B3E46: ConcatStr
  loc_6B3E47: CVarStr var_C4
  loc_6B3E4A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B3E4F: FFreeStr var_B0 = "": var_1A4 = ""
  loc_6B3E58: FFreeAd var_1B4 = ""
  loc_6B3E5F: FFreeVar var_C4 = "": var_108 = "": var_128 = ""
  loc_6B3E6A: LitI2_Byte 0
  loc_6B3E6C: FStI2 var_86
  loc_6B3E6F: ExitProcCbHresult
End Function

Public Function MostrarReporte(ReportPath, vTitulo) '6D7970
  'Data Table: 440CF4
  loc_6D6F38: ZeroRetVal
  loc_6D6F3A: OnErrorGoto loc_6D76B6
  loc_6D6F3D: ImpAdLdRf MemVar_74C760
  loc_6D6F40: NewIfNullPr Formx
  loc_6D6F43: VCallAd Control_ID_CrystalReport1
  loc_6D6F46: FStAdFunc MostrarReporte
  loc_6D6F49: LitI2_Byte 0
  loc_6D6F4B: FLdRfVar var_9A
  loc_6D6F4E: LitI2_Byte &H32
  loc_6D6F50: ForI2 var_9E
  loc_6D6F56: FLdRfVar var_9A
  loc_6D6F59: CDargRef
  loc_6D6F5D: LitVarStr var_C0, vbNullString
  loc_6D6F62: PopAdLdVar
  loc_6D6F63: FLdPr MostrarReporte
  loc_6D6F66: LateIdCallSt
  loc_6D6F6E: FLdRfVar var_9A
  loc_6D6F71: NextI2 var_9E, loc_6D6F56
  loc_6D6F76: FLdRfVar var_C8
  loc_6D6F79: FLdRfVar var_C4
  loc_6D6F7C: ImpAdLdRf MemVar_7520D4
  loc_6D6F7F: NewIfNullPr Global
  loc_6D6F82:  = Global.App
  loc_6D6F87: FLdPr var_C4
  loc_6D6F8A:  = App.Path
  loc_6D6F8F: ILdRf var_C8
  loc_6D6F92: ILdI4 ReportPath
  loc_6D6F95: ConcatStr
  loc_6D6F96: CVarStr var_D8
  loc_6D6F99: PopAdLdVar
  loc_6D6F9A: FLdPr MostrarReporte
  loc_6D6F9D: LateIdSt
  loc_6D6FA2: FFree1Str var_C8
  loc_6D6FA5: FFree1Ad var_C4
  loc_6D6FA8: FFree1Var var_D8 = ""
  loc_6D6FAB: ILdI4 ReportPath
  loc_6D6FAE: LitStr "\grupos.rpt"
  loc_6D6FB1: EqStr
  loc_6D6FB3: BranchF loc_6D6FF8
  loc_6D6FB6: LitVarI4
  loc_6D6FBE: PopAdLdVar
  loc_6D6FBF: FLdPr MostrarReporte
  loc_6D6FC2: LateIdSt
  loc_6D6FC7: LitVar_TRUE var_B0
  loc_6D6FCA: PopAdLdVar
  loc_6D6FCB: FLdPr MostrarReporte
  loc_6D6FCE: LateIdSt
  loc_6D6FD3: LitVarI4
  loc_6D6FDB: PopAdLdVar
  loc_6D6FDC: FLdPr MostrarReporte
  loc_6D6FDF: LateIdSt
  loc_6D6FE4: LitVarI2 var_B0, 1
  loc_6D6FE9: PopAdLdVar
  loc_6D6FEA: FLdPr MostrarReporte
  loc_6D6FED: LateIdSt
  loc_6D6FF2: ExitProcCbHresult
  loc_6D6FF8: FLdPr Me
  loc_6D6FFB: MemLdI2 Imprimir
  loc_6D6FFE: BranchF loc_6D7015
  loc_6D7001: LitVarI4
  loc_6D7009: PopAdLdVar
  loc_6D700A: FLdPr MostrarReporte
  loc_6D700D: LateIdSt
  loc_6D7012: Branch loc_6D7043
  loc_6D7015: LitVarI4
  loc_6D701D: PopAdLdVar
  loc_6D701E: FLdPr MostrarReporte
  loc_6D7021: LateIdSt
  loc_6D7026: LitVar_TRUE var_B0
  loc_6D7029: PopAdLdVar
  loc_6D702A: FLdPr MostrarReporte
  loc_6D702D: LateIdSt
  loc_6D7032: LitVarI4
  loc_6D703A: PopAdLdVar
  loc_6D703B: FLdPr MostrarReporte
  loc_6D703E: LateIdSt
  loc_6D7043: LitStr "  "
  loc_6D7046: FStStrCopy var_8C
  loc_6D7049: FLdPr Me
  loc_6D704C: MemLdI2 global_164
  loc_6D704F: NotI4
  loc_6D7050: ILdI4 ReportPath
  loc_6D7053: LitStr "\cierre.rpt"
  loc_6D7056: EqStr
  loc_6D7058: OrI4
  loc_6D7059: ILdI4 ReportPath
  loc_6D705C: LitStr "\cierreAgrup.rpt"
  loc_6D705F: EqStr
  loc_6D7061: OrI4
  loc_6D7062: BranchF loc_6D71B2
  loc_6D7065: FLdRfVar var_DA
  loc_6D7068: FLdRfVar var_8C
  loc_6D706B: FLdRfVar var_C4
  loc_6D706E: ImpAdLdRf MemVar_74C760
  loc_6D7071: NewIfNullPr Formx
  loc_6D7074: from_stack_1v = Formx.global_4589716Get()
  loc_6D7079: FLdPr var_C4
  loc_6D707C:  = Formx.Picture
  loc_6D7081: FLdI2 var_DA
  loc_6D7084: ILdI4 ReportPath
  loc_6D7087: LitStr "\clpprint.rpt"
  loc_6D708A: NeStr
  loc_6D708C: AndI4
  loc_6D708D: FFree1Ad var_C4
  loc_6D7090: BranchF loc_6D7178
  loc_6D7093: LitVarI2 var_D8, 6
  loc_6D7098: LitI4 1
  loc_6D709D: FLdRfVar var_8C
  loc_6D70A0: CVarRef
  loc_6D70A5: FLdRfVar var_EC
  loc_6D70A8: ImpAdCallFPR4  = Mid(, , )
  loc_6D70AD: FLdRfVar var_EC
  loc_6D70B0: FLdRfVar var_FC
  loc_6D70B3: ImpAdCallFPR4  = Trim()
  loc_6D70B8: FLdRfVar var_FC
  loc_6D70BB: LitVarStr var_10C, "    Razón Social: "
  loc_6D70C0: AddVar var_11C
  loc_6D70C4: LitVarI2 var_14C, 30
  loc_6D70C9: LitI4 7
  loc_6D70CE: FLdRfVar var_8C
  loc_6D70D1: CVarRef
  loc_6D70D6: FLdRfVar var_15C
  loc_6D70D9: ImpAdCallFPR4  = Mid(, , )
  loc_6D70DE: FLdRfVar var_15C
  loc_6D70E1: FLdRfVar var_16C
  loc_6D70E4: ImpAdCallFPR4  = Trim()
  loc_6D70E9: FLdRfVar var_16C
  loc_6D70EC: AddVar var_17C
  loc_6D70F0: LitVarStr var_18C, "     Dirección: "
  loc_6D70F5: AddVar var_19C
  loc_6D70F9: ILdRf var_8C
  loc_6D70FC: FnLenStr
  loc_6D70FD: LitI4 &H25
  loc_6D7102: SubI4
  loc_6D7103: CVarI4
  loc_6D7107: LitI4 &H25
  loc_6D710C: FLdRfVar var_8C
  loc_6D710F: CVarRef
  loc_6D7114: FLdRfVar var_1DC
  loc_6D7117: ImpAdCallFPR4  = Mid(, , )
  loc_6D711C: FLdRfVar var_1DC
  loc_6D711F: FLdRfVar var_1EC
  loc_6D7122: ImpAdCallFPR4  = Trim()
  loc_6D7127: FLdRfVar var_1EC
  loc_6D712A: AddVar var_1FC
  loc_6D712E: CStrVarTmp
  loc_6D712F: FStStr var_8C
  loc_6D7132: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_14C = "": var_15C = "": var_11C = "": var_16C = "": var_17C = "": var_1CC = "": var_1DC = "": var_19C = "": var_1EC = ""
  loc_6D714F: LitVarI2 var_B0, 0
  loc_6D7154: PopAdLdVar
  loc_6D7155: LitStr "DATOSEESS;"
  loc_6D7158: ILdRf var_8C
  loc_6D715B: ConcatStr
  loc_6D715C: FStStrNoPop var_C8
  loc_6D715F: LitStr ";true"
  loc_6D7162: ConcatStr
  loc_6D7163: CVarStr var_D8
  loc_6D7166: PopAdLdVar
  loc_6D7167: FLdPr MostrarReporte
  loc_6D716A: LateIdCallSt
  loc_6D7172: FFree1Str var_C8
  loc_6D7175: FFree1Var var_D8 = ""
  loc_6D7178: ILdI4 ReportPath
  loc_6D717B: LitStr "\clpprint.rpt"
  loc_6D717E: EqStr
  loc_6D7180: BranchF loc_6D71AF
  loc_6D7183: LitVarI2 var_B0, 0
  loc_6D7188: PopAdLdVar
  loc_6D7189: LitStr "TipoPrint;"
  loc_6D718C: FLdPr Me
  loc_6D718F: MemLdStr ClpParam
  loc_6D7192: ConcatStr
  loc_6D7193: FStStrNoPop var_C8
  loc_6D7196: LitStr ";true"
  loc_6D7199: ConcatStr
  loc_6D719A: CVarStr var_D8
  loc_6D719D: PopAdLdVar
  loc_6D719E: FLdPr MostrarReporte
  loc_6D71A1: LateIdCallSt
  loc_6D71A9: FFree1Str var_C8
  loc_6D71AC: FFree1Var var_D8 = ""
  loc_6D71AF: Branch loc_6D72C5
  loc_6D71B2: FLdRfVar var_DA
  loc_6D71B5: FLdRfVar var_8C
  loc_6D71B8: FLdRfVar var_C4
  loc_6D71BB: ImpAdLdRf MemVar_74C760
  loc_6D71BE: NewIfNullPr Formx
  loc_6D71C1: from_stack_1v = Formx.global_4589716Get()
  loc_6D71C6: FLdPr var_C4
  loc_6D71C9:  = Formx.Picture
  loc_6D71CE: FLdI2 var_DA
  loc_6D71D1: ILdI4 ReportPath
  loc_6D71D4: LitStr "\lch.rpt"
  loc_6D71D7: NeStr
  loc_6D71D9: AndI4
  loc_6D71DA: FFree1Ad var_C4
  loc_6D71DD: BranchF loc_6D72C5
  loc_6D71E0: LitVarI2 var_D8, 6
  loc_6D71E5: LitI4 1
  loc_6D71EA: FLdRfVar var_8C
  loc_6D71ED: CVarRef
  loc_6D71F2: FLdRfVar var_EC
  loc_6D71F5: ImpAdCallFPR4  = Mid(, , )
  loc_6D71FA: FLdRfVar var_EC
  loc_6D71FD: FLdRfVar var_FC
  loc_6D7200: ImpAdCallFPR4  = Trim()
  loc_6D7205: FLdRfVar var_FC
  loc_6D7208: LitVarStr var_10C, "    Razón Social: "
  loc_6D720D: AddVar var_11C
  loc_6D7211: LitVarI2 var_14C, 30
  loc_6D7216: LitI4 7
  loc_6D721B: FLdRfVar var_8C
  loc_6D721E: CVarRef
  loc_6D7223: FLdRfVar var_15C
  loc_6D7226: ImpAdCallFPR4  = Mid(, , )
  loc_6D722B: FLdRfVar var_15C
  loc_6D722E: FLdRfVar var_16C
  loc_6D7231: ImpAdCallFPR4  = Trim()
  loc_6D7236: FLdRfVar var_16C
  loc_6D7239: AddVar var_17C
  loc_6D723D: LitVarStr var_18C, "     Dirección: "
  loc_6D7242: AddVar var_19C
  loc_6D7246: ILdRf var_8C
  loc_6D7249: FnLenStr
  loc_6D724A: LitI4 &H25
  loc_6D724F: SubI4
  loc_6D7250: CVarI4
  loc_6D7254: LitI4 &H25
  loc_6D7259: FLdRfVar var_8C
  loc_6D725C: CVarRef
  loc_6D7261: FLdRfVar var_1DC
  loc_6D7264: ImpAdCallFPR4  = Mid(, , )
  loc_6D7269: FLdRfVar var_1DC
  loc_6D726C: FLdRfVar var_1EC
  loc_6D726F: ImpAdCallFPR4  = Trim()
  loc_6D7274: FLdRfVar var_1EC
  loc_6D7277: AddVar var_1FC
  loc_6D727B: CStrVarTmp
  loc_6D727C: FStStr var_8C
  loc_6D727F: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_14C = "": var_15C = "": var_11C = "": var_16C = "": var_17C = "": var_1CC = "": var_1DC = "": var_19C = "": var_1EC = ""
  loc_6D729C: LitVarI2 var_B0, 0
  loc_6D72A1: PopAdLdVar
  loc_6D72A2: LitStr "DATOSEESS;"
  loc_6D72A5: ILdRf var_8C
  loc_6D72A8: ConcatStr
  loc_6D72A9: FStStrNoPop var_C8
  loc_6D72AC: LitStr ";true"
  loc_6D72AF: ConcatStr
  loc_6D72B0: CVarStr var_D8
  loc_6D72B3: PopAdLdVar
  loc_6D72B4: FLdPr MostrarReporte
  loc_6D72B7: LateIdCallSt
  loc_6D72BF: FFree1Str var_C8
  loc_6D72C2: FFree1Var var_D8 = ""
  loc_6D72C5: ILdI4 ReportPath
  loc_6D72C8: LitStr "\CierreXTipo.rpt"
  loc_6D72CB: EqStr
  loc_6D72CD: BranchF loc_6D7310
  loc_6D72D0: LitVarI2 var_B0, 1
  loc_6D72D5: PopAdLdVar
  loc_6D72D6: LitStr "titulo;"
  loc_6D72D9: ILdI4 vTitulo
  loc_6D72DC: ConcatStr
  loc_6D72DD: FStStrNoPop var_C8
  loc_6D72E0: LitStr ";true"
  loc_6D72E3: ConcatStr
  loc_6D72E4: CVarStr var_D8
  loc_6D72E7: PopAdLdVar
  loc_6D72E8: FLdPr MostrarReporte
  loc_6D72EB: LateIdCallSt
  loc_6D72F3: FFree1Str var_C8
  loc_6D72F6: FFree1Var var_D8 = ""
  loc_6D72F9: LitVarI2 var_B0, 21
  loc_6D72FE: PopAdLdVar
  loc_6D72FF: LitVarStr var_C0, vbNullString
  loc_6D7304: PopAdLdVar
  loc_6D7305: FLdPr MostrarReporte
  loc_6D7308: LateIdCallSt
  loc_6D7310: ILdI4 ReportPath
  loc_6D7313: LitStr "\cierre.rpt"
  loc_6D7316: EqStr
  loc_6D7318: ILdI4 ReportPath
  loc_6D731B: LitStr "\cierreAgrup.rpt"
  loc_6D731E: EqStr
  loc_6D7320: OrI4
  loc_6D7321: BranchF loc_6D755E
  loc_6D7324: LitStr "CEM44.INI"
  loc_6D7327: FLdRfVar var_204
  loc_6D732A: CStr2Ansi
  loc_6D732B: ILdRf var_204
  loc_6D732E: LitI4 0
  loc_6D7333: LitStr "MOSTRAR_EVENTOS"
  loc_6D7336: FLdRfVar var_200
  loc_6D7339: CStr2Ansi
  loc_6D733A: ILdRf var_200
  loc_6D733D: LitStr "CONECTIVIDAD"
  loc_6D7340: FLdRfVar var_C8
  loc_6D7343: CStr2Ansi
  loc_6D7344: ILdRf var_C8
  loc_6D7347: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6D734C: FStR4 var_208
  loc_6D734F: SetLastSystemError
  loc_6D7350: ILdRf var_208
  loc_6D7353: CStrI4
  loc_6D7355: FStStr var_90
  loc_6D7358: FFreeStr var_C8 = "": var_200 = ""
  loc_6D7361: LitVarI2 var_B0, 1
  loc_6D7366: PopAdLdVar
  loc_6D7367: LitStr "EVENTOS;"
  loc_6D736A: ILdRf var_90
  loc_6D736D: ConcatStr
  loc_6D736E: FStStrNoPop var_C8
  loc_6D7371: LitStr ";true"
  loc_6D7374: ConcatStr
  loc_6D7375: CVarStr var_D8
  loc_6D7378: PopAdLdVar
  loc_6D7379: FLdPr MostrarReporte
  loc_6D737C: LateIdCallSt
  loc_6D7384: FFree1Str var_C8
  loc_6D7387: FFree1Var var_D8 = ""
  loc_6D738A: LitVarI2 var_12C, 2
  loc_6D738F: PopAdLdVar
  loc_6D7390: LitVarStr var_B0, "OPDIF;"
  loc_6D7395: FLdPr Me
  loc_6D7398: MemLdI2 global_140
  loc_6D739B: CVarBoolI2 var_C0
  loc_6D739F: ConcatVar var_D8
  loc_6D73A3: LitVarStr var_10C, ";true"
  loc_6D73A8: ConcatVar var_EC
  loc_6D73AC: CStrVarTmp
  loc_6D73AD: CVarStr var_FC
  loc_6D73B0: PopAdLdVar
  loc_6D73B1: FLdPr MostrarReporte
  loc_6D73B4: LateIdCallSt
  loc_6D73BC: FFreeVar var_C0 = "": var_D8 = "": var_EC = ""
  loc_6D73C7: FLdPr Me
  loc_6D73CA: MemLdI2 global_164
  loc_6D73CD: ILdI4 ReportPath
  loc_6D73D0: LitStr "\cierre.rpt"
  loc_6D73D3: EqStr
  loc_6D73D5: OrI4
  loc_6D73D6: ILdI4 ReportPath
  loc_6D73D9: LitStr "\cierreAgrup.rpt"
  loc_6D73DC: EqStr
  loc_6D73DE: OrI4
  loc_6D73DF: BranchF loc_6D755E
  loc_6D73E2: FLdRfVar var_DA
  loc_6D73E5: FLdRfVar var_8C
  loc_6D73E8: FLdRfVar var_C4
  loc_6D73EB: ImpAdLdRf MemVar_74C760
  loc_6D73EE: NewIfNullPr Formx
  loc_6D73F1: from_stack_1v = Formx.global_4589716Get()
  loc_6D73F6: FLdPr var_C4
  loc_6D73F9:  = Formx.Picture
  loc_6D73FE: FFree1Ad var_C4
  loc_6D7401: LitVarI2 var_D8, 6
  loc_6D7406: LitI4 1
  loc_6D740B: FLdRfVar var_8C
  loc_6D740E: CVarRef
  loc_6D7413: FLdRfVar var_EC
  loc_6D7416: ImpAdCallFPR4  = Mid(, , )
  loc_6D741B: FLdRfVar var_EC
  loc_6D741E: FLdRfVar var_FC
  loc_6D7421: ImpAdCallFPR4  = Trim()
  loc_6D7426: FLdRfVar var_FC
  loc_6D7429: LitVarStr var_10C, "    Razón Social: "
  loc_6D742E: AddVar var_11C
  loc_6D7432: LitVarI2 var_14C, 30
  loc_6D7437: LitI4 7
  loc_6D743C: FLdRfVar var_8C
  loc_6D743F: CVarRef
  loc_6D7444: FLdRfVar var_15C
  loc_6D7447: ImpAdCallFPR4  = Mid(, , )
  loc_6D744C: FLdRfVar var_15C
  loc_6D744F: FLdRfVar var_16C
  loc_6D7452: ImpAdCallFPR4  = Trim()
  loc_6D7457: FLdRfVar var_16C
  loc_6D745A: AddVar var_17C
  loc_6D745E: LitVarStr var_18C, "     Dirección: "
  loc_6D7463: AddVar var_19C
  loc_6D7467: ILdRf var_8C
  loc_6D746A: FnLenStr
  loc_6D746B: LitI4 &H25
  loc_6D7470: SubI4
  loc_6D7471: CVarI4
  loc_6D7475: LitI4 &H25
  loc_6D747A: FLdRfVar var_8C
  loc_6D747D: CVarRef
  loc_6D7482: FLdRfVar var_1DC
  loc_6D7485: ImpAdCallFPR4  = Mid(, , )
  loc_6D748A: FLdRfVar var_1DC
  loc_6D748D: FLdRfVar var_1EC
  loc_6D7490: ImpAdCallFPR4  = Trim()
  loc_6D7495: FLdRfVar var_1EC
  loc_6D7498: AddVar var_1FC
  loc_6D749C: CStrVarTmp
  loc_6D749D: FStStr var_8C
  loc_6D74A0: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_14C = "": var_15C = "": var_11C = "": var_16C = "": var_17C = "": var_1CC = "": var_1DC = "": var_19C = "": var_1EC = ""
  loc_6D74BD: LitVarI2 var_B0, 0
  loc_6D74C2: PopAdLdVar
  loc_6D74C3: LitStr "DATOSEESS;"
  loc_6D74C6: ILdRf var_8C
  loc_6D74C9: ConcatStr
  loc_6D74CA: FStStrNoPop var_C8
  loc_6D74CD: LitStr ";true"
  loc_6D74D0: ConcatStr
  loc_6D74D1: CVarStr var_D8
  loc_6D74D4: PopAdLdVar
  loc_6D74D5: FLdPr MostrarReporte
  loc_6D74D8: LateIdCallSt
  loc_6D74E0: FFree1Str var_C8
  loc_6D74E3: FFree1Var var_D8 = ""
  loc_6D74E6: LitI2_Byte 2
  loc_6D74E8: FLdRfVar var_9A
  loc_6D74EB: LitI2_Byte &HA
  loc_6D74ED: ForI2 var_20C
  loc_6D74F3: FLdI2 var_9A
  loc_6D74F6: LitI2_Byte 1
  loc_6D74F8: AddI2
  loc_6D74F9: CVarI2 var_10C
  loc_6D74FC: PopAdLdVar
  loc_6D74FD: LitStr "OpDif"
  loc_6D7500: FLdI2 var_9A
  loc_6D7503: LitI2_Byte 1
  loc_6D7505: SubI2
  loc_6D7506: CStrUI1
  loc_6D7508: FStStrNoPop var_C8
  loc_6D750B: ConcatStr
  loc_6D750C: FStStrNoPop var_200
  loc_6D750F: LitStr ";"
  loc_6D7512: ConcatStr
  loc_6D7513: CVarStr var_D8
  loc_6D7516: FLdI2 var_9A
  loc_6D7519: CI4UI1
  loc_6D751A: FLdPr Me
  loc_6D751D: MemLdRfVar from_stack_1.global_100
  loc_6D7520: Ary1LdI2
  loc_6D7521: CVarBoolI2 var_B0
  loc_6D7525: ConcatVar var_EC
  loc_6D7529: LitVarStr var_C0, ";true"
  loc_6D752E: ConcatVar var_FC
  loc_6D7532: CStrVarTmp
  loc_6D7533: CVarStr var_11C
  loc_6D7536: PopAdLdVar
  loc_6D7537: FLdPr MostrarReporte
  loc_6D753A: LateIdCallSt
  loc_6D7542: FFreeStr var_C8 = ""
  loc_6D7549: FFreeVar var_D8 = "": var_B0 = "": var_EC = "": var_FC = ""
  loc_6D7556: FLdRfVar var_9A
  loc_6D7559: NextI2 var_20C, loc_6D74F3
  loc_6D755E: ILdI4 ReportPath
  loc_6D7561: LitStr "\debitos.rpt"
  loc_6D7564: EqStr
  loc_6D7566: BranchF loc_6D75DF
  loc_6D7569: FLdPr Me
  loc_6D756C: MemLdI2 global_132
  loc_6D756F: BranchF loc_6D75A6
  loc_6D7572: LitVarI2 var_B0, 1
  loc_6D7577: PopAdLdVar
  loc_6D7578: LitStr "ESSOCARD;"
  loc_6D757B: LitI2_Byte 1
  loc_6D757D: CStrUI1
  loc_6D757F: FStStrNoPop var_C8
  loc_6D7582: ConcatStr
  loc_6D7583: FStStrNoPop var_200
  loc_6D7586: LitStr ";true"
  loc_6D7589: ConcatStr
  loc_6D758A: CVarStr var_D8
  loc_6D758D: PopAdLdVar
  loc_6D758E: FLdPr MostrarReporte
  loc_6D7591: LateIdCallSt
  loc_6D7599: FFreeStr var_C8 = ""
  loc_6D75A0: FFree1Var var_D8 = ""
  loc_6D75A3: Branch loc_6D75D7
  loc_6D75A6: LitVarI2 var_B0, 1
  loc_6D75AB: PopAdLdVar
  loc_6D75AC: LitStr "ESSOCARD;"
  loc_6D75AF: LitI2_Byte 0
  loc_6D75B1: CStrUI1
  loc_6D75B3: FStStrNoPop var_C8
  loc_6D75B6: ConcatStr
  loc_6D75B7: FStStrNoPop var_200
  loc_6D75BA: LitStr ";true"
  loc_6D75BD: ConcatStr
  loc_6D75BE: CVarStr var_D8
  loc_6D75C1: PopAdLdVar
  loc_6D75C2: FLdPr MostrarReporte
  loc_6D75C5: LateIdCallSt
  loc_6D75CD: FFreeStr var_C8 = ""
  loc_6D75D4: FFree1Var var_D8 = ""
  loc_6D75D7: LitI2_Byte 0
  loc_6D75D9: FLdPr Me
  loc_6D75DC: MemStI2 global_132
  loc_6D75DF: FLdPr Me
  loc_6D75E2: MemLdStr TipoReporte
  loc_6D75E5: LitStr "D"
  loc_6D75E8: EqStr
  loc_6D75EA: BranchF loc_6D75F6
  loc_6D75ED: ImpAdLdI4 MemVar_74BEB4
  loc_6D75F0: FStStrCopy var_98
  loc_6D75F3: Branch loc_6D7613
  loc_6D75F6: FLdPr Me
  loc_6D75F9: MemLdStr TipoReporte
  loc_6D75FC: LitStr "M"
  loc_6D75FF: EqStr
  loc_6D7601: BranchF loc_6D760D
  loc_6D7604: ImpAdLdI4 MemVar_74BEB8
  loc_6D7607: FStStrCopy var_98
  loc_6D760A: Branch loc_6D7613
  loc_6D760D: ImpAdLdI4 MemVar_74BEB0
  loc_6D7610: FStStrCopy var_98
  loc_6D7613: FLdRfVar var_98
  loc_6D7616: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6D761B: LitVar_FALSE
  loc_6D761F: PopAdLdVar
  loc_6D7620: FLdPr MostrarReporte
  loc_6D7623: LateIdSt
  loc_6D7628: LitI2_Byte 0
  loc_6D762A: FLdRfVar var_9A
  loc_6D762D: LitI2_Byte &H14
  loc_6D762F: ForI2 var_210
  loc_6D7635: FLdRfVar var_9A
  loc_6D7638: CDargRef
  loc_6D763C: FLdPr MostrarReporte
  loc_6D763F: LateIdCallLdVar
  loc_6D7649: PopAd
  loc_6D764B: FFree1Str var_C8
  loc_6D764E: FFree1Var var_D8 = ""
  loc_6D7651: FLdRfVar var_9A
  loc_6D7654: NextI2 var_210, loc_6D7635
  loc_6D7659: LitVarI2 var_B0, 1
  loc_6D765E: PopAdLdVar
  loc_6D765F: FLdPr MostrarReporte
  loc_6D7662: LateIdSt
  loc_6D7667: FLdPr Me
  loc_6D766A: MemLdI2 Imprimir
  loc_6D766D: NotI4
  loc_6D766E: BranchF loc_6D767B
  loc_6D7671: LitI2_Byte &HFF
  loc_6D7673: PopTmpLdAd2 var_DA
  loc_6D7676: ImpAdCallFPR4 Proc_87_1_630780()
  loc_6D767B: LitI2_Byte 0
  loc_6D767D: FLdPr Me
  loc_6D7680: MemStI2 Imprimir
  loc_6D7683: LitI2_Byte 0
  loc_6D7685: FLdRfVar var_9A
  loc_6D7688: LitI2_Byte &H14
  loc_6D768A: ForI2 var_214
  loc_6D7690: FLdRfVar var_9A
  loc_6D7693: CDargRef
  loc_6D7697: LitVarStr var_C0, vbNullString
  loc_6D769C: PopAdLdVar
  loc_6D769D: FLdPr MostrarReporte
  loc_6D76A0: LateIdCallSt
  loc_6D76A8: FLdRfVar var_9A
  loc_6D76AB: NextI2 var_214, loc_6D7690
  loc_6D76B0: ExitProcCbHresult
  loc_6D76B6: FLdRfVar var_208
  loc_6D76B9: ImpAdCallI2 Err 'rtcErrObj
  loc_6D76BE: FStAdFunc var_C4
  loc_6D76C1: FLdPr var_C4
  loc_6D76C4:  = Err.Number
  loc_6D76C9: ILdRf var_208
  loc_6D76CC: LitI4 &H5028
  loc_6D76D1: EqI4
  loc_6D76D2: FFree1Ad var_C4
  loc_6D76D5: BranchF loc_6D78F6
  loc_6D76D8: FLdRfVar var_200
  loc_6D76DB: LitVar_Missing var_1CC
  loc_6D76DE: LitVar_Missing var_19C
  loc_6D76E1: LitVar_Missing var_17C
  loc_6D76E4: LitVar_Missing var_16C
  loc_6D76E7: LitVar_Missing var_15C
  loc_6D76EA: LitVar_Missing var_14C
  loc_6D76ED: LitVar_Missing var_11C
  loc_6D76F0: LitVar_Missing var_FC
  loc_6D76F3: LitVar_Missing var_EC
  loc_6D76F6: LitVar_Missing var_D8
  loc_6D76F9: LitStr "El reporte que se desea visualizar está"
  loc_6D76FC: FStStrCopy var_C8
  loc_6D76FF: FLdRfVar var_C8
  loc_6D7702: LitI4 &H2D
  loc_6D7707: PopTmpLdAdStr var_208
  loc_6D770A: LitI2_Byte &H1D
  loc_6D770C: PopTmpLdAd2 var_DA
  loc_6D770F: ImpAdLdRf MemVar_74C7D0
  loc_6D7712: NewIfNullPr clsMsg
  loc_6D7715: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D771A: FLdRfVar var_350
  loc_6D771D: LitVar_Missing var_34C
  loc_6D7720: LitVar_Missing var_32C
  loc_6D7723: LitVar_Missing var_30C
  loc_6D7726: LitVar_Missing var_2EC
  loc_6D7729: LitVar_Missing var_2CC
  loc_6D772C: LitVar_Missing var_2AC
  loc_6D772F: LitVar_Missing var_28C
  loc_6D7732: LitVar_Missing var_1FC
  loc_6D7735: LitVar_Missing var_1EC
  loc_6D7738: LitVar_Missing var_1DC
  loc_6D773B: LitStr "utilizado por la impresora."
  loc_6D773E: FStStrCopy var_204
  loc_6D7741: FLdRfVar var_204
  loc_6D7744: LitI4 &H2E
  loc_6D7749: PopTmpLdAdStr var_23C
  loc_6D774C: LitI2_Byte &H1D
  loc_6D774E: PopTmpLdAd2 var_236
  loc_6D7751: ImpAdLdRf MemVar_74C7D0
  loc_6D7754: NewIfNullPr clsMsg
  loc_6D7757: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D775C: FLdRfVar var_4A8
  loc_6D775F: LitVar_Missing var_4A4
  loc_6D7762: LitVar_Missing var_484
  loc_6D7765: LitVar_Missing var_464
  loc_6D7768: LitVar_Missing var_444
  loc_6D776B: LitVar_Missing var_424
  loc_6D776E: LitVar_Missing var_404
  loc_6D7771: LitVar_Missing var_3E4
  loc_6D7774: LitVar_Missing var_3C4
  loc_6D7777: LitVar_Missing var_3A4
  loc_6D777A: LitVar_Missing var_384
  loc_6D777D: LitStr "Aguarde unos momentos, y reintente la"
  loc_6D7780: FStStrCopy var_364
  loc_6D7783: FLdRfVar var_364
  loc_6D7786: LitI4 &H2F
  loc_6D778B: PopTmpLdAdStr var_360
  loc_6D778E: LitI2_Byte &H1D
  loc_6D7790: PopTmpLdAd2 var_35A
  loc_6D7793: ImpAdLdRf MemVar_74C7D0
  loc_6D7796: NewIfNullPr clsMsg
  loc_6D7799: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D779E: FLdRfVar var_600
  loc_6D77A1: LitVar_Missing var_5FC
  loc_6D77A4: LitVar_Missing var_5DC
  loc_6D77A7: LitVar_Missing var_5BC
  loc_6D77AA: LitVar_Missing var_59C
  loc_6D77AD: LitVar_Missing var_57C
  loc_6D77B0: LitVar_Missing var_55C
  loc_6D77B3: LitVar_Missing var_53C
  loc_6D77B6: LitVar_Missing var_51C
  loc_6D77B9: LitVar_Missing var_4FC
  loc_6D77BC: LitVar_Missing var_4DC
  loc_6D77BF: LitStr "operación."
  loc_6D77C2: FStStrCopy var_4BC
  loc_6D77C5: FLdRfVar var_4BC
  loc_6D77C8: LitI4 &H30
  loc_6D77CD: PopTmpLdAdStr var_4B8
  loc_6D77D0: LitI2_Byte &H1D
  loc_6D77D2: PopTmpLdAd2 var_4B2
  loc_6D77D5: ImpAdLdRf MemVar_74C7D0
  loc_6D77D8: NewIfNullPr clsMsg
  loc_6D77DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D77E0: FLdRfVar var_754
  loc_6D77E3: LitVar_Missing var_750
  loc_6D77E6: LitVar_Missing var_730
  loc_6D77E9: LitVar_Missing var_710
  loc_6D77EC: LitVar_Missing var_6F0
  loc_6D77EF: LitVar_Missing var_6D0
  loc_6D77F2: LitVar_Missing var_6B0
  loc_6D77F5: LitVar_Missing var_690
  loc_6D77F8: LitVar_Missing var_670
  loc_6D77FB: LitVar_Missing var_650
  loc_6D77FE: LitVar_Missing var_630
  loc_6D7801: LitStr "Estado de impresion"
  loc_6D7804: FStStrCopy var_610
  loc_6D7807: FLdRfVar var_610
  loc_6D780A: LitI4 &H31
  loc_6D780F: PopTmpLdAdStr var_60C
  loc_6D7812: LitI2_Byte &H1D
  loc_6D7814: PopTmpLdAd2 var_606
  loc_6D7817: ImpAdLdRf MemVar_74C7D0
  loc_6D781A: NewIfNullPr clsMsg
  loc_6D781D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D7822: LitVar_Missing var_7B4
  loc_6D7825: LitVar_Missing var_794
  loc_6D7828: FLdZeroAd var_754
  loc_6D782B: CVarStr var_774
  loc_6D782E: LitI4 &H40
  loc_6D7833: ILdRf var_200
  loc_6D7836: LitStr vbCrLf
  loc_6D7839: ConcatStr
  loc_6D783A: FStStrNoPop var_354
  loc_6D783D: ILdRf var_350
  loc_6D7840: ConcatStr
  loc_6D7841: FStStrNoPop var_358
  loc_6D7844: LitStr vbCrLf
  loc_6D7847: ConcatStr
  loc_6D7848: FStStrNoPop var_4AC
  loc_6D784B: ILdRf var_4A8
  loc_6D784E: ConcatStr
  loc_6D784F: FStStrNoPop var_4B0
  loc_6D7852: LitStr vbCrLf
  loc_6D7855: ConcatStr
  loc_6D7856: FStStrNoPop var_604
  loc_6D7859: ILdRf var_600
  loc_6D785C: ConcatStr
  loc_6D785D: CVarStr var_764
  loc_6D7860: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D7865: FFreeStr var_C8 = "": var_200 = "": var_204 = "": var_354 = "": var_350 = "": var_358 = "": var_364 = "": var_4AC = "": var_4A8 = "": var_4B0 = "": var_4BC = "": var_604 = "": var_600 = ""
  loc_6D7884: FFreeVar var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_57C = "": var_59C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_630 = "": var_650 = "": var_670 = "": var_690 = "": var_6B0 = "": var_6D0 = "": var_6F0 = "": var_710 = "": var_730 = "": var_750 = "": var_764 = "": var_774 = "": var_794 = "": var_7B4 = "": var_D8 = "": var_EC = "": var_FC = "": var_11C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1CC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6D78F3: Branch loc_6D7960
  loc_6D78F6: LitVar_Missing var_11C
  loc_6D78F9: LitVar_Missing var_FC
  loc_6D78FC: LitVar_Missing var_EC
  loc_6D78FF: LitI4 0
  loc_6D7904: FLdRfVar var_208
  loc_6D7907: ImpAdCallI2 Err 'rtcErrObj
  loc_6D790C: FStAdFunc var_C4
  loc_6D790F: FLdPr var_C4
  loc_6D7912:  = Err.Number
  loc_6D7917: ILdRf var_208
  loc_6D791A: CStrI4
  loc_6D791C: FStStrNoPop var_C8
  loc_6D791F: LitStr "        "
  loc_6D7922: ConcatStr
  loc_6D7923: FStStrNoPop var_204
  loc_6D7926: FLdRfVar var_200
  loc_6D7929: ImpAdCallI2 Err 'rtcErrObj
  loc_6D792E: FStAdFunc var_7B8
  loc_6D7931: FLdPr var_7B8
  loc_6D7934:  = Err.Description
  loc_6D7939: ILdRf var_200
  loc_6D793C: ConcatStr
  loc_6D793D: CVarStr var_D8
  loc_6D7940: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D7945: FFreeStr var_C8 = "": var_204 = ""
  loc_6D794E: FFreeAd var_C4 = ""
  loc_6D7955: FFreeVar var_D8 = "": var_EC = "": var_FC = ""
  loc_6D7960: LitI2_Byte &HFF
  loc_6D7962: FLdPr Me
  loc_6D7965: MemStI2 Imprimir
  loc_6D7968: ExitProcCbHresult
End Function

Public Function PorcesarDatosAnexo(sValor) '651C3C
  'Data Table: 440CF4
  loc_651A04: LitI4 4
  loc_651A09: FLdRfVar var_B8
  loc_651A0C: ImpAdCallFPR4  = Chr()
  loc_651A11: FLdRfVar var_B8
  loc_651A14: LitI4 6
  loc_651A19: FLdRfVar var_C8
  loc_651A1C: ImpAdCallFPR4  = Chr()
  loc_651A21: FLdRfVar var_C8
  loc_651A24: ConcatVar var_D8
  loc_651A28: LitI4 8
  loc_651A2D: FLdRfVar var_E8
  loc_651A30: ImpAdCallFPR4  = Chr()
  loc_651A35: FLdRfVar var_E8
  loc_651A38: ConcatVar var_F8
  loc_651A3C: LitI4 2
  loc_651A41: FLdRfVar var_108
  loc_651A44: ImpAdCallFPR4  = Chr()
  loc_651A49: FLdRfVar var_108
  loc_651A4C: ConcatVar var_118
  loc_651A50: LitI4 &HB
  loc_651A55: FLdRfVar var_128
  loc_651A58: ImpAdCallFPR4  = Chr()
  loc_651A5D: FLdRfVar var_128
  loc_651A60: ConcatVar var_138
  loc_651A64: LitI4 &HB
  loc_651A69: FLdRfVar var_148
  loc_651A6C: ImpAdCallFPR4  = Chr()
  loc_651A71: FLdRfVar var_148
  loc_651A74: ConcatVar var_158
  loc_651A78: LitI4 &HB
  loc_651A7D: FLdRfVar var_168
  loc_651A80: ImpAdCallFPR4  = Chr()
  loc_651A85: FLdRfVar var_168
  loc_651A88: ConcatVar var_178
  loc_651A8C: CStrVarTmp
  loc_651A8D: FStStr var_8C
  loc_651A90: FFreeVar var_B8 = "": var_C8 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = ""
  loc_651AAD: LitI2_Byte &HFF
  loc_651AAF: FStI2 var_86
  loc_651AB2: LitI2_Byte 7
  loc_651AB4: PopTmpLdAd2 var_17E
  loc_651AB7: FLdRfVar var_8C
  loc_651ABA: FLdRfVar var_A8
  loc_651ABD: PopTmpLdAdStr var_17C
  loc_651AC0: ILdRf sValor
  loc_651AC3: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_651AC8: LitI4 4
  loc_651ACD: FLdRfVar var_A8
  loc_651AD0: Ary1LdI4
  loc_651AD1: LitStr " - "
  loc_651AD4: ConcatStr
  loc_651AD5: FStStrNoPop var_198
  loc_651AD8: FLdRfVar var_194
  loc_651ADB: LitI4 4
  loc_651AE0: FLdRfVar var_A8
  loc_651AE3: Ary1LdRf
  loc_651AE4: CVarRef
  loc_651AE9: FLdRfVar var_B8
  loc_651AEC: ImpAdCallFPR4  = Trim()
  loc_651AF1: FLdRfVar var_B8
  loc_651AF4: CI2Var
  loc_651AF5: ImpAdLdRf MemVar_74A220
  loc_651AF8: NewIfNullPr clsProducts
  loc_651B00: ILdRf var_194
  loc_651B03: ConcatStr
  loc_651B04: FStStrNoPop var_19C
  loc_651B07: LitI4 4
  loc_651B0C: FLdRfVar var_A8
  loc_651B0F: Ary1StStrCopy
  loc_651B10: FFreeStr var_198 = "": var_194 = ""
  loc_651B19: FFree1Var var_B8 = ""
  loc_651B1C: LitStr "INSERT INTO AnexoConectividad (registro, fechaperiodo, fechaalta, codprod, volumen, sobrante, faltante"
  loc_651B1F: FStStrCopy var_90
  loc_651B22: ILdRf var_90
  loc_651B25: LitStr ") VALUES ('"
  loc_651B28: ConcatStr
  loc_651B29: FStStrNoPop var_194
  loc_651B2C: LitI4 1
  loc_651B31: FLdRfVar var_A8
  loc_651B34: Ary1LdI4
  loc_651B35: ConcatStr
  loc_651B36: FStStrNoPop var_198
  loc_651B39: LitStr "', '"
  loc_651B3C: ConcatStr
  loc_651B3D: FStStrNoPop var_19C
  loc_651B40: LitI4 2
  loc_651B45: FLdRfVar var_A8
  loc_651B48: Ary1LdI4
  loc_651B49: ConcatStr
  loc_651B4A: FStStrNoPop var_1A0
  loc_651B4D: LitStr "', '"
  loc_651B50: ConcatStr
  loc_651B51: FStStrNoPop var_1A4
  loc_651B54: LitI4 3
  loc_651B59: FLdRfVar var_A8
  loc_651B5C: Ary1LdI4
  loc_651B5D: ConcatStr
  loc_651B5E: FStStrNoPop var_1A8
  loc_651B61: LitStr "', ' "
  loc_651B64: ConcatStr
  loc_651B65: FStStrNoPop var_1AC
  loc_651B68: LitI4 4
  loc_651B6D: FLdRfVar var_A8
  loc_651B70: Ary1LdI4
  loc_651B71: ConcatStr
  loc_651B72: FStStrNoPop var_1B0
  loc_651B75: LitStr "', "
  loc_651B78: ConcatStr
  loc_651B79: FStStrNoPop var_1BC
  loc_651B7C: FLdRfVar var_1B8
  loc_651B7F: LitI2_Byte 8
  loc_651B81: PopTmpLdAd2 var_17E
  loc_651B84: LitI4 5
  loc_651B89: FLdRfVar var_A8
  loc_651B8C: Ary1LdRf
  loc_651B8D: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_651B92: FLdFPR8 var_1B8
  loc_651B95: CStrR8
  loc_651B97: FStStrNoPop var_1C0
  loc_651B9A: ConcatStr
  loc_651B9B: FStStrNoPop var_1C4
  loc_651B9E: LitStr ", "
  loc_651BA1: ConcatStr
  loc_651BA2: FStStrNoPop var_1D4
  loc_651BA5: FLdRfVar var_1D0
  loc_651BA8: LitI2_Byte 8
  loc_651BAA: PopTmpLdAd2 var_1C6
  loc_651BAD: LitI4 6
  loc_651BB2: FLdRfVar var_A8
  loc_651BB5: Ary1LdRf
  loc_651BB6: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_651BBB: FLdFPR8 var_1D0
  loc_651BBE: CStrR8
  loc_651BC0: FStStrNoPop var_1D8
  loc_651BC3: ConcatStr
  loc_651BC4: FStStrNoPop var_1DC
  loc_651BC7: LitStr ", "
  loc_651BCA: ConcatStr
  loc_651BCB: FStStrNoPop var_1EC
  loc_651BCE: FLdRfVar var_1E8
  loc_651BD1: LitI2_Byte 8
  loc_651BD3: PopTmpLdAd2 var_1DE
  loc_651BD6: LitI4 7
  loc_651BDB: FLdRfVar var_A8
  loc_651BDE: Ary1LdRf
  loc_651BDF: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_651BE4: FLdFPR8 var_1E8
  loc_651BE7: CStrR8
  loc_651BE9: FStStrNoPop var_1F0
  loc_651BEC: ConcatStr
  loc_651BED: FStStrNoPop var_1F4
  loc_651BF0: LitStr ")"
  loc_651BF3: ConcatStr
  loc_651BF4: FStStr var_90
  loc_651BF7: FFreeStr var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1EC = "": var_1F0 = ""
  loc_651C1C: FLdRfVar var_17E
  loc_651C1F: FLdRfVar var_90
  loc_651C22: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_651C27: FLdI2 var_17E
  loc_651C2A: NotI4
  loc_651C2B: BranchF loc_651C33
  loc_651C2E: LitI2_Byte 0
  loc_651C30: FStI2 var_86
  loc_651C33: ExitProcCbHresult
End Function

Public Function PorcesarDatosCabecera(sDatosCabecera) '66B6D4
  'Data Table: 440CF4
  loc_66B3E8: LitI2_Byte &HFF
  loc_66B3EA: FStI2 var_86
  loc_66B3ED: LitI4 4
  loc_66B3F2: FLdRfVar var_B8
  loc_66B3F5: ImpAdCallFPR4  = Chr()
  loc_66B3FA: FLdRfVar var_B8
  loc_66B3FD: LitI4 7
  loc_66B402: FLdRfVar var_C8
  loc_66B405: ImpAdCallFPR4  = Chr()
  loc_66B40A: FLdRfVar var_C8
  loc_66B40D: ConcatVar var_D8
  loc_66B411: LitI4 &HA
  loc_66B416: FLdRfVar var_E8
  loc_66B419: ImpAdCallFPR4  = Chr()
  loc_66B41E: FLdRfVar var_E8
  loc_66B421: ConcatVar var_F8
  loc_66B425: LitI4 4
  loc_66B42A: FLdRfVar var_108
  loc_66B42D: ImpAdCallFPR4  = Chr()
  loc_66B432: FLdRfVar var_108
  loc_66B435: ConcatVar var_118
  loc_66B439: LitI4 4
  loc_66B43E: FLdRfVar var_128
  loc_66B441: ImpAdCallFPR4  = Chr()
  loc_66B446: FLdRfVar var_128
  loc_66B449: ConcatVar var_138
  loc_66B44D: LitI4 4
  loc_66B452: FLdRfVar var_148
  loc_66B455: ImpAdCallFPR4  = Chr()
  loc_66B45A: FLdRfVar var_148
  loc_66B45D: ConcatVar var_158
  loc_66B461: LitI4 &HB
  loc_66B466: FLdRfVar var_168
  loc_66B469: ImpAdCallFPR4  = Chr()
  loc_66B46E: FLdRfVar var_168
  loc_66B471: ConcatVar var_178
  loc_66B475: LitI4 9
  loc_66B47A: FLdRfVar var_188
  loc_66B47D: ImpAdCallFPR4  = Chr()
  loc_66B482: FLdRfVar var_188
  loc_66B485: ConcatVar var_198
  loc_66B489: LitI4 &HB
  loc_66B48E: FLdRfVar var_1A8
  loc_66B491: ImpAdCallFPR4  = Chr()
  loc_66B496: FLdRfVar var_1A8
  loc_66B499: ConcatVar var_1B8
  loc_66B49D: LitI4 8
  loc_66B4A2: FLdRfVar var_1C8
  loc_66B4A5: ImpAdCallFPR4  = Chr()
  loc_66B4AA: FLdRfVar var_1C8
  loc_66B4AD: ConcatVar var_1D8
  loc_66B4B1: LitI4 6
  loc_66B4B6: FLdRfVar var_1E8
  loc_66B4B9: ImpAdCallFPR4  = Chr()
  loc_66B4BE: FLdRfVar var_1E8
  loc_66B4C1: ConcatVar var_1F8
  loc_66B4C5: LitI4 8
  loc_66B4CA: FLdRfVar var_208
  loc_66B4CD: ImpAdCallFPR4  = Chr()
  loc_66B4D2: FLdRfVar var_208
  loc_66B4D5: ConcatVar var_218
  loc_66B4D9: LitI4 6
  loc_66B4DE: FLdRfVar var_228
  loc_66B4E1: ImpAdCallFPR4  = Chr()
  loc_66B4E6: FLdRfVar var_228
  loc_66B4E9: ConcatVar var_238
  loc_66B4ED: CStrVarTmp
  loc_66B4EE: FStStr var_8C
  loc_66B4F1: FFreeVar var_B8 = "": var_C8 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = ""
  loc_66B526: LitI2_Byte &HD
  loc_66B528: PopTmpLdAd2 var_23E
  loc_66B52B: FLdRfVar var_8C
  loc_66B52E: FLdRfVar var_A8
  loc_66B531: PopTmpLdAdStr var_23C
  loc_66B534: ILdRf sDatosCabecera
  loc_66B537: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_66B53C: LitStr "INSERT INTO RC_CABECERA (cod_reg, version, codeess, totTR02, totTR04, totTR03 ,volumen, eventos, op_dif, fechaini, horaini, fechafin, horafin"
  loc_66B53F: FStStrCopy var_90
  loc_66B542: ILdRf var_90
  loc_66B545: LitStr ") VALUES ('"
  loc_66B548: ConcatStr
  loc_66B549: FStStrNoPop var_244
  loc_66B54C: LitI4 1
  loc_66B551: FLdRfVar var_A8
  loc_66B554: Ary1LdI4
  loc_66B555: ConcatStr
  loc_66B556: FStStrNoPop var_248
  loc_66B559: LitStr "', '"
  loc_66B55C: ConcatStr
  loc_66B55D: FStStrNoPop var_24C
  loc_66B560: LitI4 2
  loc_66B565: FLdRfVar var_A8
  loc_66B568: Ary1LdI4
  loc_66B569: ConcatStr
  loc_66B56A: FStStrNoPop var_250
  loc_66B56D: LitStr "', '"
  loc_66B570: ConcatStr
  loc_66B571: FStStrNoPop var_254
  loc_66B574: LitI4 3
  loc_66B579: FLdRfVar var_A8
  loc_66B57C: Ary1LdI4
  loc_66B57D: ConcatStr
  loc_66B57E: FStStrNoPop var_258
  loc_66B581: LitStr "', "
  loc_66B584: ConcatStr
  loc_66B585: FStStrNoPop var_25C
  loc_66B588: LitI4 4
  loc_66B58D: FLdRfVar var_A8
  loc_66B590: Ary1LdI4
  loc_66B591: ConcatStr
  loc_66B592: FStStrNoPop var_260
  loc_66B595: LitStr ", "
  loc_66B598: ConcatStr
  loc_66B599: FStStrNoPop var_264
  loc_66B59C: LitI4 5
  loc_66B5A1: FLdRfVar var_A8
  loc_66B5A4: Ary1LdI4
  loc_66B5A5: ConcatStr
  loc_66B5A6: FStStrNoPop var_268
  loc_66B5A9: LitStr ", "
  loc_66B5AC: ConcatStr
  loc_66B5AD: FStStrNoPop var_26C
  loc_66B5B0: LitI4 6
  loc_66B5B5: FLdRfVar var_A8
  loc_66B5B8: Ary1LdI4
  loc_66B5B9: ConcatStr
  loc_66B5BA: FStStrNoPop var_270
  loc_66B5BD: LitStr ", "
  loc_66B5C0: ConcatStr
  loc_66B5C1: FStStrNoPop var_27C
  loc_66B5C4: FLdRfVar var_278
  loc_66B5C7: LitI2_Byte 8
  loc_66B5C9: PopTmpLdAd2 var_23E
  loc_66B5CC: LitI4 7
  loc_66B5D1: FLdRfVar var_A8
  loc_66B5D4: Ary1LdRf
  loc_66B5D5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_66B5DA: FLdFPR8 var_278
  loc_66B5DD: CStrR8
  loc_66B5DF: FStStrNoPop var_280
  loc_66B5E2: ConcatStr
  loc_66B5E3: FStStrNoPop var_284
  loc_66B5E6: LitStr ", "
  loc_66B5E9: ConcatStr
  loc_66B5EA: FStStrNoPop var_288
  loc_66B5ED: LitI4 8
  loc_66B5F2: FLdRfVar var_A8
  loc_66B5F5: Ary1LdI4
  loc_66B5F6: ConcatStr
  loc_66B5F7: FStStrNoPop var_28C
  loc_66B5FA: LitStr ", "
  loc_66B5FD: ConcatStr
  loc_66B5FE: FStStrNoPop var_29C
  loc_66B601: FLdRfVar var_298
  loc_66B604: LitI2_Byte 8
  loc_66B606: PopTmpLdAd2 var_28E
  loc_66B609: LitI4 9
  loc_66B60E: FLdRfVar var_A8
  loc_66B611: Ary1LdRf
  loc_66B612: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_66B617: FLdFPR8 var_298
  loc_66B61A: CStrR8
  loc_66B61C: FStStrNoPop var_2A0
  loc_66B61F: ConcatStr
  loc_66B620: FStStrNoPop var_2A4
  loc_66B623: LitStr ", '"
  loc_66B626: ConcatStr
  loc_66B627: FStStrNoPop var_2A8
  loc_66B62A: LitI4 &HA
  loc_66B62F: FLdRfVar var_A8
  loc_66B632: Ary1LdI4
  loc_66B633: ConcatStr
  loc_66B634: FStStrNoPop var_2AC
  loc_66B637: LitStr "', '"
  loc_66B63A: ConcatStr
  loc_66B63B: FStStrNoPop var_2B0
  loc_66B63E: LitI4 &HB
  loc_66B643: FLdRfVar var_A8
  loc_66B646: Ary1LdI4
  loc_66B647: ConcatStr
  loc_66B648: FStStrNoPop var_2B4
  loc_66B64B: LitStr "',' "
  loc_66B64E: ConcatStr
  loc_66B64F: FStStrNoPop var_2B8
  loc_66B652: LitI4 &HC
  loc_66B657: FLdRfVar var_A8
  loc_66B65A: Ary1LdI4
  loc_66B65B: ConcatStr
  loc_66B65C: FStStrNoPop var_2BC
  loc_66B65F: LitStr "', '"
  loc_66B662: ConcatStr
  loc_66B663: FStStrNoPop var_2C0
  loc_66B666: LitI4 &HD
  loc_66B66B: FLdRfVar var_A8
  loc_66B66E: Ary1LdI4
  loc_66B66F: ConcatStr
  loc_66B670: FStStrNoPop var_2C4
  loc_66B673: LitStr "')"
  loc_66B676: ConcatStr
  loc_66B677: FStStr var_90
  loc_66B67A: FFreeStr var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = ""
  loc_66B6B5: FLdRfVar var_23E
  loc_66B6B8: FLdRfVar var_90
  loc_66B6BB: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_66B6C0: FLdI2 var_23E
  loc_66B6C3: NotI4
  loc_66B6C4: BranchF loc_66B6CC
  loc_66B6C7: LitI2_Byte 0
  loc_66B6C9: FStI2 var_86
  loc_66B6CC: ExitProcCbHresult
End Function

Public Function PorcesarDatosDetalles(sDatosDetalles) '6FF28C
  'Data Table: 440CF4
  loc_6FE308: LitI2_Byte &HFF
  loc_6FE30A: FStI2 var_86
  loc_6FE30F: LitI4 4
  loc_6FE314: FLdRfVar var_CC
  loc_6FE317: ImpAdCallFPR4  = Chr()
  loc_6FE31C: FLdRfVar var_CC
  loc_6FE31F: LitI4 3
  loc_6FE324: FLdRfVar var_DC
  loc_6FE327: ImpAdCallFPR4  = Chr()
  loc_6FE32C: FLdRfVar var_DC
  loc_6FE32F: ConcatVar var_EC
  loc_6FE333: LitI4 8
  loc_6FE338: FLdRfVar var_FC
  loc_6FE33B: ImpAdCallFPR4  = Chr()
  loc_6FE340: FLdRfVar var_FC
  loc_6FE343: ConcatVar var_10C
  loc_6FE347: LitI4 6
  loc_6FE34C: FLdRfVar var_11C
  loc_6FE34F: ImpAdCallFPR4  = Chr()
  loc_6FE354: FLdRfVar var_11C
  loc_6FE357: ConcatVar var_12C
  loc_6FE35B: LitI4 8
  loc_6FE360: FLdRfVar var_13C
  loc_6FE363: ImpAdCallFPR4  = Chr()
  loc_6FE368: FLdRfVar var_13C
  loc_6FE36B: ConcatVar var_14C
  loc_6FE36F: LitI4 6
  loc_6FE374: FLdRfVar var_15C
  loc_6FE377: ImpAdCallFPR4  = Chr()
  loc_6FE37C: FLdRfVar var_15C
  loc_6FE37F: ConcatVar var_16C
  loc_6FE383: LitI4 2
  loc_6FE388: FLdRfVar var_17C
  loc_6FE38B: ImpAdCallFPR4  = Chr()
  loc_6FE390: FLdRfVar var_17C
  loc_6FE393: ConcatVar var_18C
  loc_6FE397: LitI4 2
  loc_6FE39C: FLdRfVar var_19C
  loc_6FE39F: ImpAdCallFPR4  = Chr()
  loc_6FE3A4: FLdRfVar var_19C
  loc_6FE3A7: ConcatVar var_1AC
  loc_6FE3AB: LitI4 1
  loc_6FE3B0: FLdRfVar var_1BC
  loc_6FE3B3: ImpAdCallFPR4  = Chr()
  loc_6FE3B8: FLdRfVar var_1BC
  loc_6FE3BB: ConcatVar var_1CC
  loc_6FE3BF: LitI4 &HB
  loc_6FE3C4: FLdRfVar var_1DC
  loc_6FE3C7: ImpAdCallFPR4  = Chr()
  loc_6FE3CC: FLdRfVar var_1DC
  loc_6FE3CF: ConcatVar var_1EC
  loc_6FE3D3: LitI4 &HB
  loc_6FE3D8: FLdRfVar var_1FC
  loc_6FE3DB: ImpAdCallFPR4  = Chr()
  loc_6FE3E0: FLdRfVar var_1FC
  loc_6FE3E3: ConcatVar var_20C
  loc_6FE3E7: LitI4 &HB
  loc_6FE3EC: FLdRfVar var_21C
  loc_6FE3EF: ImpAdCallFPR4  = Chr()
  loc_6FE3F4: FLdRfVar var_21C
  loc_6FE3F7: ConcatVar var_22C
  loc_6FE3FB: LitI4 &HB
  loc_6FE400: FLdRfVar var_23C
  loc_6FE403: ImpAdCallFPR4  = Chr()
  loc_6FE408: FLdRfVar var_23C
  loc_6FE40B: ConcatVar var_24C
  loc_6FE40F: LitI4 &HB
  loc_6FE414: FLdRfVar var_25C
  loc_6FE417: ImpAdCallFPR4  = Chr()
  loc_6FE41C: FLdRfVar var_25C
  loc_6FE41F: ConcatVar var_26C
  loc_6FE423: LitI4 &HB
  loc_6FE428: FLdRfVar var_27C
  loc_6FE42B: ImpAdCallFPR4  = Chr()
  loc_6FE430: FLdRfVar var_27C
  loc_6FE433: ConcatVar var_28C
  loc_6FE437: LitI4 1
  loc_6FE43C: FLdRfVar var_29C
  loc_6FE43F: ImpAdCallFPR4  = Chr()
  loc_6FE444: FLdRfVar var_29C
  loc_6FE447: ConcatVar var_2AC
  loc_6FE44B: LitI4 1
  loc_6FE450: FLdRfVar var_2BC
  loc_6FE453: ImpAdCallFPR4  = Chr()
  loc_6FE458: FLdRfVar var_2BC
  loc_6FE45B: ConcatVar var_2CC
  loc_6FE45F: CStrVarTmp
  loc_6FE460: FStStr var_8C
  loc_6FE463: FFreeVar var_2AC = "": var_2BC = "": var_2CC = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_27C = "": var_28C = ""
  loc_6FE4AA: LitI2_Byte &H11
  loc_6FE4AC: PopTmpLdAd2 var_2D2
  loc_6FE4AF: FLdRfVar var_8C
  loc_6FE4B2: FLdRfVar var_A8
  loc_6FE4B5: PopTmpLdAdStr var_2D0
  loc_6FE4B8: ILdRf sDatosDetalles
  loc_6FE4BB: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_6FE4C2: LitI4 &H11
  loc_6FE4C7: FLdRfVar var_A8
  loc_6FE4CA: Ary1LdI4
  loc_6FE4CB: LitStr vbNullString
  loc_6FE4CE: EqStr
  loc_6FE4D0: BranchF loc_6FE4E8
  loc_6FE4D5: LitI2_Byte 0
  loc_6FE4D7: CStrUI1
  loc_6FE4D9: FStStrNoPop var_2D8
  loc_6FE4DC: LitI4 &H11
  loc_6FE4E1: FLdRfVar var_A8
  loc_6FE4E4: Ary1StStrCopy
  loc_6FE4E5: FFree1Str var_2D8
  loc_6FE4EC: LitI4 &H11
  loc_6FE4F1: FLdRfVar var_A8
  loc_6FE4F4: Ary1LdI4
  loc_6FE4F5: CR8Str
  loc_6FE4F7: LitI2_Byte 1
  loc_6FE4F9: CR8I2
  loc_6FE4FA: AddR8
  loc_6FE4FB: CStrR8
  loc_6FE4FD: FStStrNoPop var_2D8
  loc_6FE500: LitI4 &H11
  loc_6FE505: FLdRfVar var_A8
  loc_6FE508: Ary1StStrCopy
  loc_6FE509: FFree1Str var_2D8
  loc_6FE50E: LitI2_Byte 0
  loc_6FE510: FStI2 var_2DA
  loc_6FE515: FLdPr Me
  loc_6FE518: MemLdI2 global_180
  loc_6FE51B: LitI2_Byte 0
  loc_6FE51D: EqI2
  loc_6FE51E: BranchF loc_6FE888
  loc_6FE523: OnErrorGoto loc_6FF255
  loc_6FE528: FLdPr Me
  loc_6FE52B: MemLdI2 global_172
  loc_6FE52E: LitI2_Byte 1
  loc_6FE530: SubI2
  loc_6FE531: CI4UI1
  loc_6FE532: FLdPr Me
  loc_6FE535: MemLdStr global_176
  loc_6FE538: Ary1LdPr
  loc_6FE539: MemLdFPR8 global_0
  loc_6FE53C: CVarDate var_36C
  loc_6FE540: HardType
  loc_6FE541: LitVarI2 var_CC, 2
  loc_6FE546: LitI4 7
  loc_6FE54B: LitI4 3
  loc_6FE550: FLdRfVar var_A8
  loc_6FE553: Ary1LdRf
  loc_6FE554: CVarRef
  loc_6FE559: FLdRfVar var_DC
  loc_6FE55C: ImpAdCallFPR4  = Mid(, , )
  loc_6FE561: FLdRfVar var_DC
  loc_6FE564: LitVarStr var_30C, "/"
  loc_6FE569: ConcatVar var_EC
  loc_6FE56D: LitVarI2 var_FC, 2
  loc_6FE572: LitI4 5
  loc_6FE577: LitI4 3
  loc_6FE57C: FLdRfVar var_A8
  loc_6FE57F: Ary1LdRf
  loc_6FE580: CVarRef
  loc_6FE585: FLdRfVar var_10C
  loc_6FE588: ImpAdCallFPR4  = Mid(, , )
  loc_6FE58D: FLdRfVar var_10C
  loc_6FE590: ConcatVar var_11C
  loc_6FE594: LitVarStr var_33C, "/"
  loc_6FE599: ConcatVar var_12C
  loc_6FE59D: LitVarI2 var_13C, 4
  loc_6FE5A2: LitI4 1
  loc_6FE5A7: LitI4 3
  loc_6FE5AC: FLdRfVar var_A8
  loc_6FE5AF: Ary1LdRf
  loc_6FE5B0: CVarRef
  loc_6FE5B5: FLdRfVar var_14C
  loc_6FE5B8: ImpAdCallFPR4  = Mid(, , )
  loc_6FE5BD: FLdRfVar var_14C
  loc_6FE5C0: ConcatVar var_15C
  loc_6FE5C4: EqVarBool
  loc_6FE5C6: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FE5DD: BranchF loc_6FE886
  loc_6FE5E2: FLdPr Me
  loc_6FE5E5: MemLdI2 global_172
  loc_6FE5E8: LitI2_Byte 1
  loc_6FE5EA: SubI2
  loc_6FE5EB: CI4UI1
  loc_6FE5EC: FLdPr Me
  loc_6FE5EF: MemLdStr global_176
  loc_6FE5F2: Ary1LdPr
  loc_6FE5F3: MemLdFPR8 global_8
  loc_6FE5F6: CVarDate var_36C
  loc_6FE5FA: HardType
  loc_6FE5FB: LitVarI2 var_CC, 2
  loc_6FE600: LitI4 1
  loc_6FE605: LitI4 4
  loc_6FE60A: FLdRfVar var_A8
  loc_6FE60D: Ary1LdRf
  loc_6FE60E: CVarRef
  loc_6FE613: FLdRfVar var_DC
  loc_6FE616: ImpAdCallFPR4  = Mid(, , )
  loc_6FE61B: FLdRfVar var_DC
  loc_6FE61E: LitVarStr var_30C, ":"
  loc_6FE623: ConcatVar var_EC
  loc_6FE627: LitVarI2 var_FC, 2
  loc_6FE62C: LitI4 3
  loc_6FE631: LitI4 4
  loc_6FE636: FLdRfVar var_A8
  loc_6FE639: Ary1LdRf
  loc_6FE63A: CVarRef
  loc_6FE63F: FLdRfVar var_10C
  loc_6FE642: ImpAdCallFPR4  = Mid(, , )
  loc_6FE647: FLdRfVar var_10C
  loc_6FE64A: ConcatVar var_11C
  loc_6FE64E: LitVarStr var_33C, ":"
  loc_6FE653: ConcatVar var_12C
  loc_6FE657: LitVarI2 var_13C, 2
  loc_6FE65C: LitI4 5
  loc_6FE661: LitI4 4
  loc_6FE666: FLdRfVar var_A8
  loc_6FE669: Ary1LdRf
  loc_6FE66A: CVarRef
  loc_6FE66F: FLdRfVar var_14C
  loc_6FE672: ImpAdCallFPR4  = Mid(, , )
  loc_6FE677: FLdRfVar var_14C
  loc_6FE67A: ConcatVar var_15C
  loc_6FE67E: EqVarBool
  loc_6FE680: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FE697: BranchF loc_6FE884
  loc_6FE69C: FLdPr Me
  loc_6FE69F: MemLdI2 global_172
  loc_6FE6A2: LitI2_Byte 1
  loc_6FE6A4: SubI2
  loc_6FE6A5: CI4UI1
  loc_6FE6A6: FLdPr Me
  loc_6FE6A9: MemLdStr global_176
  loc_6FE6AC: Ary1LdPr
  loc_6FE6AD: MemLdFPR8 global_16
  loc_6FE6B0: CVarDate var_36C
  loc_6FE6B4: HardType
  loc_6FE6B5: LitVarI2 var_CC, 2
  loc_6FE6BA: LitI4 7
  loc_6FE6BF: LitI4 5
  loc_6FE6C4: FLdRfVar var_A8
  loc_6FE6C7: Ary1LdRf
  loc_6FE6C8: CVarRef
  loc_6FE6CD: FLdRfVar var_DC
  loc_6FE6D0: ImpAdCallFPR4  = Mid(, , )
  loc_6FE6D5: FLdRfVar var_DC
  loc_6FE6D8: LitVarStr var_30C, "/"
  loc_6FE6DD: ConcatVar var_EC
  loc_6FE6E1: LitVarI2 var_FC, 2
  loc_6FE6E6: LitI4 5
  loc_6FE6EB: LitI4 5
  loc_6FE6F0: FLdRfVar var_A8
  loc_6FE6F3: Ary1LdRf
  loc_6FE6F4: CVarRef
  loc_6FE6F9: FLdRfVar var_10C
  loc_6FE6FC: ImpAdCallFPR4  = Mid(, , )
  loc_6FE701: FLdRfVar var_10C
  loc_6FE704: ConcatVar var_11C
  loc_6FE708: LitVarStr var_33C, "/"
  loc_6FE70D: ConcatVar var_12C
  loc_6FE711: LitVarI2 var_13C, 4
  loc_6FE716: LitI4 1
  loc_6FE71B: LitI4 5
  loc_6FE720: FLdRfVar var_A8
  loc_6FE723: Ary1LdRf
  loc_6FE724: CVarRef
  loc_6FE729: FLdRfVar var_14C
  loc_6FE72C: ImpAdCallFPR4  = Mid(, , )
  loc_6FE731: FLdRfVar var_14C
  loc_6FE734: ConcatVar var_15C
  loc_6FE738: EqVarBool
  loc_6FE73A: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FE751: BranchF loc_6FE882
  loc_6FE756: FLdPr Me
  loc_6FE759: MemLdI2 global_172
  loc_6FE75C: LitI2_Byte 1
  loc_6FE75E: SubI2
  loc_6FE75F: CI4UI1
  loc_6FE760: FLdPr Me
  loc_6FE763: MemLdStr global_176
  loc_6FE766: Ary1LdPr
  loc_6FE767: MemLdFPR8 global_24
  loc_6FE76A: CVarDate var_36C
  loc_6FE76E: HardType
  loc_6FE76F: LitVarI2 var_CC, 2
  loc_6FE774: LitI4 1
  loc_6FE779: LitI4 6
  loc_6FE77E: FLdRfVar var_A8
  loc_6FE781: Ary1LdRf
  loc_6FE782: CVarRef
  loc_6FE787: FLdRfVar var_DC
  loc_6FE78A: ImpAdCallFPR4  = Mid(, , )
  loc_6FE78F: FLdRfVar var_DC
  loc_6FE792: LitVarStr var_30C, ":"
  loc_6FE797: ConcatVar var_EC
  loc_6FE79B: LitVarI2 var_FC, 2
  loc_6FE7A0: LitI4 3
  loc_6FE7A5: LitI4 6
  loc_6FE7AA: FLdRfVar var_A8
  loc_6FE7AD: Ary1LdRf
  loc_6FE7AE: CVarRef
  loc_6FE7B3: FLdRfVar var_10C
  loc_6FE7B6: ImpAdCallFPR4  = Mid(, , )
  loc_6FE7BB: FLdRfVar var_10C
  loc_6FE7BE: ConcatVar var_11C
  loc_6FE7C2: LitVarStr var_33C, ":"
  loc_6FE7C7: ConcatVar var_12C
  loc_6FE7CB: LitVarI2 var_13C, 2
  loc_6FE7D0: LitI4 5
  loc_6FE7D5: LitI4 6
  loc_6FE7DA: FLdRfVar var_A8
  loc_6FE7DD: Ary1LdRf
  loc_6FE7DE: CVarRef
  loc_6FE7E3: FLdRfVar var_14C
  loc_6FE7E6: ImpAdCallFPR4  = Mid(, , )
  loc_6FE7EB: FLdRfVar var_14C
  loc_6FE7EE: ConcatVar var_15C
  loc_6FE7F2: EqVarBool
  loc_6FE7F4: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FE80B: BranchF loc_6FE880
  loc_6FE810: LitVarStr var_30C, "false"
  loc_6FE815: FStVarCopyObj var_DC
  loc_6FE818: FLdRfVar var_DC
  loc_6FE81B: LitVarStr var_2FC, "true"
  loc_6FE820: FStVarCopyObj var_CC
  loc_6FE823: FLdRfVar var_CC
  loc_6FE826: LitI4 &H10
  loc_6FE82B: FLdRfVar var_A8
  loc_6FE82E: Ary1LdI4
  loc_6FE82F: LitStr "S"
  loc_6FE832: EqStr
  loc_6FE834: CVarBoolI2 var_2EC
  loc_6FE838: FLdRfVar var_EC
  loc_6FE83B: ImpAdCallFPR4  = IIf(, , )
  loc_6FE840: FLdRfVar var_EC
  loc_6FE843: CBoolVar
  loc_6FE845: LitI4 7
  loc_6FE84A: FLdRfVar var_A8
  loc_6FE84D: Ary1LdI4
  loc_6FE84E: CI2Str
  loc_6FE850: CI4UI1
  loc_6FE851: FLdPr Me
  loc_6FE854: MemLdI2 global_172
  loc_6FE857: LitI2_Byte 1
  loc_6FE859: SubI2
  loc_6FE85A: CI4UI1
  loc_6FE85B: FLdPr Me
  loc_6FE85E: MemLdStr global_176
  loc_6FE861: Ary1LdPr
  loc_6FE862: MemLdRfVar from_stack_1.global_32
  loc_6FE865: AryInRecLdPr
  loc_6FE86B: MemStI2 global_0
  loc_6FE86E: FFreeVar var_2EC = "": var_CC = "": var_DC = ""
  loc_6FE87B: LitI2_Byte &HFF
  loc_6FE87D: FStI2 var_2DA
  loc_6FE88C: LitI2_Byte 0
  loc_6FE88E: FLdPr Me
  loc_6FE891: MemStI2 global_180
  loc_6FE896: FLdI2 var_2DA
  loc_6FE899: LitI2_Byte 0
  loc_6FE89B: EqI2
  loc_6FE89C: BranchF loc_6FEBF2
  loc_6FE8A1: LitI4 0
  loc_6FE8A6: FLdPr Me
  loc_6FE8A9: MemLdI2 global_172
  loc_6FE8AC: CI4UI1
  loc_6FE8AD: FLdPr Me
  loc_6FE8B0: MemLdRfVar from_stack_1.global_176
  loc_6FE8B3: RedimPreserve
  loc_6FE8BF: LitVarI2 var_CC, 2
  loc_6FE8C4: LitI4 7
  loc_6FE8C9: LitI4 3
  loc_6FE8CE: FLdRfVar var_A8
  loc_6FE8D1: Ary1LdRf
  loc_6FE8D2: CVarRef
  loc_6FE8D7: FLdRfVar var_DC
  loc_6FE8DA: ImpAdCallFPR4  = Mid(, , )
  loc_6FE8DF: FLdRfVar var_DC
  loc_6FE8E2: LitVarStr var_30C, "/"
  loc_6FE8E7: ConcatVar var_EC
  loc_6FE8EB: LitVarI2 var_FC, 2
  loc_6FE8F0: LitI4 5
  loc_6FE8F5: LitI4 3
  loc_6FE8FA: FLdRfVar var_A8
  loc_6FE8FD: Ary1LdRf
  loc_6FE8FE: CVarRef
  loc_6FE903: FLdRfVar var_10C
  loc_6FE906: ImpAdCallFPR4  = Mid(, , )
  loc_6FE90B: FLdRfVar var_10C
  loc_6FE90E: ConcatVar var_11C
  loc_6FE912: LitVarStr var_33C, "/"
  loc_6FE917: ConcatVar var_12C
  loc_6FE91B: LitVarI2 var_13C, 4
  loc_6FE920: LitI4 1
  loc_6FE925: LitI4 3
  loc_6FE92A: FLdRfVar var_A8
  loc_6FE92D: Ary1LdRf
  loc_6FE92E: CVarRef
  loc_6FE933: FLdRfVar var_14C
  loc_6FE936: ImpAdCallFPR4  = Mid(, , )
  loc_6FE93B: FLdRfVar var_14C
  loc_6FE93E: ConcatVar var_15C
  loc_6FE942: FnCDateVar
  loc_6FE944: FLdPr Me
  loc_6FE947: MemLdI2 global_172
  loc_6FE94A: CI4UI1
  loc_6FE94B: FLdPr Me
  loc_6FE94E: MemLdStr global_176
  loc_6FE951: Ary1LdPr
  loc_6FE952: MemStFPR8 global_0
  loc_6FE955: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FE96E: LitVarI2 var_CC, 2
  loc_6FE973: LitI4 1
  loc_6FE978: LitI4 4
  loc_6FE97D: FLdRfVar var_A8
  loc_6FE980: Ary1LdRf
  loc_6FE981: CVarRef
  loc_6FE986: FLdRfVar var_DC
  loc_6FE989: ImpAdCallFPR4  = Mid(, , )
  loc_6FE98E: FLdRfVar var_DC
  loc_6FE991: LitVarStr var_30C, ":"
  loc_6FE996: ConcatVar var_EC
  loc_6FE99A: LitVarI2 var_FC, 2
  loc_6FE99F: LitI4 3
  loc_6FE9A4: LitI4 4
  loc_6FE9A9: FLdRfVar var_A8
  loc_6FE9AC: Ary1LdRf
  loc_6FE9AD: CVarRef
  loc_6FE9B2: FLdRfVar var_10C
  loc_6FE9B5: ImpAdCallFPR4  = Mid(, , )
  loc_6FE9BA: FLdRfVar var_10C
  loc_6FE9BD: ConcatVar var_11C
  loc_6FE9C1: LitVarStr var_33C, ":"
  loc_6FE9C6: ConcatVar var_12C
  loc_6FE9CA: LitVarI2 var_13C, 2
  loc_6FE9CF: LitI4 5
  loc_6FE9D4: LitI4 4
  loc_6FE9D9: FLdRfVar var_A8
  loc_6FE9DC: Ary1LdRf
  loc_6FE9DD: CVarRef
  loc_6FE9E2: FLdRfVar var_14C
  loc_6FE9E5: ImpAdCallFPR4  = Mid(, , )
  loc_6FE9EA: FLdRfVar var_14C
  loc_6FE9ED: ConcatVar var_15C
  loc_6FE9F1: FnCDateVar
  loc_6FE9F3: FLdPr Me
  loc_6FE9F6: MemLdI2 global_172
  loc_6FE9F9: CI4UI1
  loc_6FE9FA: FLdPr Me
  loc_6FE9FD: MemLdStr global_176
  loc_6FEA00: Ary1LdPr
  loc_6FEA01: MemStFPR8 global_8
  loc_6FEA04: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FEA1D: LitVarI2 var_CC, 2
  loc_6FEA22: LitI4 7
  loc_6FEA27: LitI4 5
  loc_6FEA2C: FLdRfVar var_A8
  loc_6FEA2F: Ary1LdRf
  loc_6FEA30: CVarRef
  loc_6FEA35: FLdRfVar var_DC
  loc_6FEA38: ImpAdCallFPR4  = Mid(, , )
  loc_6FEA3D: FLdRfVar var_DC
  loc_6FEA40: LitVarStr var_30C, "/"
  loc_6FEA45: ConcatVar var_EC
  loc_6FEA49: LitVarI2 var_FC, 2
  loc_6FEA4E: LitI4 5
  loc_6FEA53: LitI4 5
  loc_6FEA58: FLdRfVar var_A8
  loc_6FEA5B: Ary1LdRf
  loc_6FEA5C: CVarRef
  loc_6FEA61: FLdRfVar var_10C
  loc_6FEA64: ImpAdCallFPR4  = Mid(, , )
  loc_6FEA69: FLdRfVar var_10C
  loc_6FEA6C: ConcatVar var_11C
  loc_6FEA70: LitVarStr var_33C, "/"
  loc_6FEA75: ConcatVar var_12C
  loc_6FEA79: LitVarI2 var_13C, 4
  loc_6FEA7E: LitI4 1
  loc_6FEA83: LitI4 5
  loc_6FEA88: FLdRfVar var_A8
  loc_6FEA8B: Ary1LdRf
  loc_6FEA8C: CVarRef
  loc_6FEA91: FLdRfVar var_14C
  loc_6FEA94: ImpAdCallFPR4  = Mid(, , )
  loc_6FEA99: FLdRfVar var_14C
  loc_6FEA9C: ConcatVar var_15C
  loc_6FEAA0: FnCDateVar
  loc_6FEAA2: FLdPr Me
  loc_6FEAA5: MemLdI2 global_172
  loc_6FEAA8: CI4UI1
  loc_6FEAA9: FLdPr Me
  loc_6FEAAC: MemLdStr global_176
  loc_6FEAAF: Ary1LdPr
  loc_6FEAB0: MemStFPR8 global_16
  loc_6FEAB3: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FEACC: LitVarI2 var_CC, 2
  loc_6FEAD1: LitI4 1
  loc_6FEAD6: LitI4 6
  loc_6FEADB: FLdRfVar var_A8
  loc_6FEADE: Ary1LdRf
  loc_6FEADF: CVarRef
  loc_6FEAE4: FLdRfVar var_DC
  loc_6FEAE7: ImpAdCallFPR4  = Mid(, , )
  loc_6FEAEC: FLdRfVar var_DC
  loc_6FEAEF: LitVarStr var_30C, ":"
  loc_6FEAF4: ConcatVar var_EC
  loc_6FEAF8: LitVarI2 var_FC, 2
  loc_6FEAFD: LitI4 3
  loc_6FEB02: LitI4 6
  loc_6FEB07: FLdRfVar var_A8
  loc_6FEB0A: Ary1LdRf
  loc_6FEB0B: CVarRef
  loc_6FEB10: FLdRfVar var_10C
  loc_6FEB13: ImpAdCallFPR4  = Mid(, , )
  loc_6FEB18: FLdRfVar var_10C
  loc_6FEB1B: ConcatVar var_11C
  loc_6FEB1F: LitVarStr var_33C, ":"
  loc_6FEB24: ConcatVar var_12C
  loc_6FEB28: LitVarI2 var_13C, 2
  loc_6FEB2D: LitI4 5
  loc_6FEB32: LitI4 6
  loc_6FEB37: FLdRfVar var_A8
  loc_6FEB3A: Ary1LdRf
  loc_6FEB3B: CVarRef
  loc_6FEB40: FLdRfVar var_14C
  loc_6FEB43: ImpAdCallFPR4  = Mid(, , )
  loc_6FEB48: FLdRfVar var_14C
  loc_6FEB4B: ConcatVar var_15C
  loc_6FEB4F: FnCDateVar
  loc_6FEB51: FLdPr Me
  loc_6FEB54: MemLdI2 global_172
  loc_6FEB57: CI4UI1
  loc_6FEB58: FLdPr Me
  loc_6FEB5B: MemLdStr global_176
  loc_6FEB5E: Ary1LdPr
  loc_6FEB5F: MemStFPR8 global_24
  loc_6FEB62: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_6FEB7B: LitVarStr var_30C, "false"
  loc_6FEB80: FStVarCopyObj var_DC
  loc_6FEB83: FLdRfVar var_DC
  loc_6FEB86: LitVarStr var_2FC, "true"
  loc_6FEB8B: FStVarCopyObj var_CC
  loc_6FEB8E: FLdRfVar var_CC
  loc_6FEB91: LitI4 &H10
  loc_6FEB96: FLdRfVar var_A8
  loc_6FEB99: Ary1LdI4
  loc_6FEB9A: LitStr "S"
  loc_6FEB9D: EqStr
  loc_6FEB9F: CVarBoolI2 var_2EC
  loc_6FEBA3: FLdRfVar var_EC
  loc_6FEBA6: ImpAdCallFPR4  = IIf(, , )
  loc_6FEBAB: FLdRfVar var_EC
  loc_6FEBAE: CBoolVar
  loc_6FEBB0: LitI4 7
  loc_6FEBB5: FLdRfVar var_A8
  loc_6FEBB8: Ary1LdI4
  loc_6FEBB9: CI2Str
  loc_6FEBBB: CI4UI1
  loc_6FEBBC: FLdPr Me
  loc_6FEBBF: MemLdI2 global_172
  loc_6FEBC2: CI4UI1
  loc_6FEBC3: FLdPr Me
  loc_6FEBC6: MemLdStr global_176
  loc_6FEBC9: Ary1LdPr
  loc_6FEBCA: MemLdRfVar from_stack_1.global_32
  loc_6FEBCD: AryInRecLdPr
  loc_6FEBD3: MemStI2 global_0
  loc_6FEBD6: FFreeVar var_2EC = "": var_CC = "": var_DC = ""
  loc_6FEBE3: FLdPr Me
  loc_6FEBE6: MemLdI2 global_172
  loc_6FEBE9: LitI2_Byte 1
  loc_6FEBEB: AddI2
  loc_6FEBEC: FLdPr Me
  loc_6FEBEF: MemStI2 global_172
  loc_6FEBF6: LitI4 &H10
  loc_6FEBFB: FLdRfVar var_A8
  loc_6FEBFE: Ary1LdI4
  loc_6FEBFF: LitStr "S"
  loc_6FEC02: EqStr
  loc_6FEC04: BranchF loc_6FEF20
  loc_6FEC09: FLdRfVar var_2D8
  loc_6FEC0C: LitI4 7
  loc_6FEC11: FLdRfVar var_A8
  loc_6FEC14: Ary1LdI4
  loc_6FEC15: CI2Str
  loc_6FEC17: ImpAdLdRf MemVar_74A220
  loc_6FEC1A: NewIfNullPr clsProducts
  loc_6FEC22: FLdRfVar var_2D2
  loc_6FEC25: LitStr "Varios"
  loc_6FEC28: FStStrCopy var_380
  loc_6FEC2B: FLdRfVar var_380
  loc_6FEC2E: LitI4 7
  loc_6FEC33: FLdRfVar var_A8
  loc_6FEC36: Ary1LdI4
  loc_6FEC37: LitStr "  "
  loc_6FEC3A: ConcatStr
  loc_6FEC3B: FStStrNoPop var_378
  loc_6FEC3E: ILdRf var_2D8
  loc_6FEC41: ConcatStr
  loc_6FEC42: PopTmpLdAdStr
  loc_6FEC46: from_stack_3v = Proc_100_53_5F6C78(from_stack_1v, from_stack_2v)
  loc_6FEC4B: FLdI2 var_2D2
  loc_6FEC4E: FFreeStr var_378 = "": var_2D8 = "": var_37C = ""
  loc_6FEC59: BranchF loc_6FEC5C
  loc_6FEC60: FLdRfVar var_2D8
  loc_6FEC63: LitI4 7
  loc_6FEC68: FLdRfVar var_A8
  loc_6FEC6B: Ary1LdI4
  loc_6FEC6C: CI2Str
  loc_6FEC6E: ImpAdLdRf MemVar_74A220
  loc_6FEC71: NewIfNullPr clsProducts
  loc_6FEC79: FLdRfVar var_384
  loc_6FEC7C: LitI2_Byte 0
  loc_6FEC7E: PopTmpLdAd2 var_2D2
  loc_6FEC81: LitStr "Varios"
  loc_6FEC84: FStStrCopy var_380
  loc_6FEC87: FLdRfVar var_380
  loc_6FEC8A: LitI4 7
  loc_6FEC8F: FLdRfVar var_A8
  loc_6FEC92: Ary1LdI4
  loc_6FEC93: LitStr "  "
  loc_6FEC96: ConcatStr
  loc_6FEC97: FStStrNoPop var_378
  loc_6FEC9A: ILdRf var_2D8
  loc_6FEC9D: ConcatStr
  loc_6FEC9E: PopTmpLdAdStr
  loc_6FECA2: from_stack_4v = Proc_100_51_66C854(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6FECA7: FLdZeroAd var_384
  loc_6FECAA: FStAdFunc var_AC
  loc_6FECAD: FFreeStr var_378 = "": var_2D8 = "": var_37C = ""
  loc_6FECBA: FLdRfVar var_38C
  loc_6FECBD: LitI2_Byte 8
  loc_6FECBF: PopTmpLdAd2 var_2D2
  loc_6FECC2: LitI4 &HB
  loc_6FECC7: FLdRfVar var_A8
  loc_6FECCA: Ary1LdRf
  loc_6FECCB: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FECD0: FLdRfVar var_398
  loc_6FECD3: LitI2_Byte 8
  loc_6FECD5: PopTmpLdAd2 var_38E
  loc_6FECD8: LitI4 &HD
  loc_6FECDD: FLdRfVar var_A8
  loc_6FECE0: Ary1LdRf
  loc_6FECE1: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FECE6: FLdFPR8 var_38C
  loc_6FECE9: FLdFPR8 var_398
  loc_6FECEC: MulR8
  loc_6FECED: PopTmpLdAdFPR8
  loc_6FECF1: FLdPr var_AC
  loc_6FECF4:  = Me.Caption
  loc_6FECFB: FLdRfVar var_38C
  loc_6FECFE: LitI2_Byte 8
  loc_6FED00: PopTmpLdAd2 var_2D2
  loc_6FED03: LitI4 &HD
  loc_6FED08: FLdRfVar var_A8
  loc_6FED0B: Ary1LdRf
  loc_6FED0C: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FED11: FLdFPR8 var_38C
  loc_6FED14: LitI2_Byte 0
  loc_6FED16: CR8I2
  loc_6FED17: GtR4
  loc_6FED18: BranchF loc_6FED42
  loc_6FED1D: FLdRfVar var_38C
  loc_6FED20: LitI2_Byte 8
  loc_6FED22: PopTmpLdAd2 var_2D2
  loc_6FED25: LitI4 &HB
  loc_6FED2A: FLdRfVar var_A8
  loc_6FED2D: Ary1LdRf
  loc_6FED2E: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FED33: FLdFPR8 var_38C
  loc_6FED36: PopTmpLdAdFPR8
  loc_6FED3A: FLdPr var_AC
  loc_6FED3D:  = Me.BackColor
  loc_6FED46: FLdRfVar var_38C
  loc_6FED49: LitI2_Byte 8
  loc_6FED4B: PopTmpLdAd2 var_2D2
  loc_6FED4E: LitI4 &HD
  loc_6FED53: FLdRfVar var_A8
  loc_6FED56: Ary1LdRf
  loc_6FED57: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FED5C: FLdFPR8 var_38C
  loc_6FED5F: PopTmpLdAdFPR8
  loc_6FED63: FLdPr var_AC
  loc_6FED6D: LitVar_FALSE
  loc_6FED71: LitVar_TRUE var_CC
  loc_6FED74: LitI4 &H10
  loc_6FED79: FLdRfVar var_A8
  loc_6FED7C: Ary1LdI4
  loc_6FED7D: LitStr "S"
  loc_6FED80: EqStr
  loc_6FED82: CVarBoolI2 var_2EC
  loc_6FED86: FLdRfVar var_EC
  loc_6FED89: ImpAdCallFPR4  = IIf(, , )
  loc_6FED8E: FLdRfVar var_EC
  loc_6FED91: CBoolVar
  loc_6FED93: PopTmpLdAd2 var_2D2
  loc_6FED96: FLdPr var_AC
  loc_6FED9E: FFreeVar var_2EC = "": var_CC = "": var_DC = ""
  loc_6FEDAB: FLdRfVar var_38C
  loc_6FEDAE: LitI2_Byte 8
  loc_6FEDB0: PopTmpLdAd2 var_2D2
  loc_6FEDB3: LitI4 &HD
  loc_6FEDB8: FLdRfVar var_A8
  loc_6FEDBB: Ary1LdRf
  loc_6FEDBC: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEDC1: FLdFPR8 var_38C
  loc_6FEDC4: PopTmpLdAdFPR8
  loc_6FEDC8: ImpAdCallI2 Proc_101_21_5E9870()
  loc_6FEDCD: FStR4 var_2D0
  loc_6FEDD0: ILdRf var_2D0
  loc_6FEDD3: CR8I4
  loc_6FEDD4: PopTmpLdAdFPR8
  loc_6FEDD8: FLdPr var_AC
  loc_6FEDDB: Set from_stack_2 = Me(from_stack_1)
  loc_6FEDE2: FLdRfVar var_38C
  loc_6FEDE5: LitI2_Byte 8
  loc_6FEDE7: PopTmpLdAd2 var_2D2
  loc_6FEDEA: LitI4 &HD
  loc_6FEDEF: FLdRfVar var_A8
  loc_6FEDF2: Ary1LdRf
  loc_6FEDF3: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEDF8: FLdFPR8 var_38C
  loc_6FEDFB: PopTmpLdAdFPR8
  loc_6FEDFF: ImpAdCallI2 Proc_101_21_5E9870()
  loc_6FEE04: FStR4 var_2D0
  loc_6FEE07: FLdRfVar var_3A0
  loc_6FEE0A: LitI2_Byte 8
  loc_6FEE0C: PopTmpLdAd2 var_38E
  loc_6FEE0F: LitI4 &HB
  loc_6FEE14: FLdRfVar var_A8
  loc_6FEE17: Ary1LdRf
  loc_6FEE18: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEE1D: ILdRf var_2D0
  loc_6FEE20: CR8I4
  loc_6FEE21: FLdFPR8 var_3A0
  loc_6FEE24: MulR8
  loc_6FEE25: PopTmpLdAdFPR8
  loc_6FEE29: FLdPr var_AC
  loc_6FEE2C:  = Me.hWnd
  loc_6FEE33: LitStr "Varios"
  loc_6FEE36: FStStrCopy var_2D8
  loc_6FEE39: FLdRfVar var_2D8
  loc_6FEE3C: FLdPr var_AC
  loc_6FEE44: FFree1Str var_2D8
  loc_6FEE49: LitI4 &H11
  loc_6FEE4E: FLdRfVar var_A8
  loc_6FEE51: Ary1LdI4
  loc_6FEE52: CUI1Str
  loc_6FEE54: PopTmpLdAd1
  loc_6FEE58: FLdPr var_AC
  loc_6FEE5B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6FEE62: FLdRfVar var_38C
  loc_6FEE65: LitI2_Byte 8
  loc_6FEE67: PopTmpLdAd2 var_2D2
  loc_6FEE6A: LitI4 &HD
  loc_6FEE6F: FLdRfVar var_A8
  loc_6FEE72: Ary1LdRf
  loc_6FEE73: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEE78: FLdFPR8 var_38C
  loc_6FEE7B: LitI2_Byte 0
  loc_6FEE7D: CR8I2
  loc_6FEE7E: GtR4
  loc_6FEE7F: BranchF loc_6FEF1E
  loc_6FEE84: FLdRfVar var_38C
  loc_6FEE87: LitI2_Byte 8
  loc_6FEE89: PopTmpLdAd2 var_2D2
  loc_6FEE8C: LitI4 &HD
  loc_6FEE91: FLdRfVar var_A8
  loc_6FEE94: Ary1LdRf
  loc_6FEE95: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEE9A: FLdFPR8 var_38C
  loc_6FEE9D: FnIntR8
  loc_6FEE9F: CR8R8
  loc_6FEEA0: LitI2_Byte 0
  loc_6FEEA2: CR8I2
  loc_6FEEA3: EqR4
  loc_6FEEA4: BranchF loc_6FEEBB
  loc_6FEEA9: LitI2_Byte 0
  loc_6FEEAB: CR8I2
  loc_6FEEAC: PopTmpLdAdFPR8
  loc_6FEEB0: FLdPr var_AC
  loc_6FEEB3:  = Me.ForeColor
  loc_6FEEB8: Branch loc_6FEF1C
  loc_6FEEBF: FLdRfVar var_38C
  loc_6FEEC2: LitI2_Byte 8
  loc_6FEEC4: PopTmpLdAd2 var_2D2
  loc_6FEEC7: LitI4 &HD
  loc_6FEECC: FLdRfVar var_A8
  loc_6FEECF: Ary1LdRf
  loc_6FEED0: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEED5: FLdRfVar var_398
  loc_6FEED8: LitI2_Byte 8
  loc_6FEEDA: PopTmpLdAd2 var_38E
  loc_6FEEDD: LitI4 &HB
  loc_6FEEE2: FLdRfVar var_A8
  loc_6FEEE5: Ary1LdRf
  loc_6FEEE6: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEEEB: FLdRfVar var_3A0
  loc_6FEEEE: LitI2_Byte 8
  loc_6FEEF0: PopTmpLdAd2 var_3AA
  loc_6FEEF3: LitI4 &HD
  loc_6FEEF8: FLdRfVar var_A8
  loc_6FEEFB: Ary1LdRf
  loc_6FEEFC: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FEF01: FLdFPR8 var_38C
  loc_6FEF04: FnIntR8
  loc_6FEF06: FLdFPR8 var_398
  loc_6FEF09: MulR8
  loc_6FEF0A: FLdFPR8 var_3A0
  loc_6FEF0D: FnIntR8
  loc_6FEF0F: DivR8
  loc_6FEF10: PopTmpLdAdFPR8
  loc_6FEF14: FLdPr var_AC
  loc_6FEF17:  = Me.ForeColor
  loc_6FEF24: FLdRfVar var_2D8
  loc_6FEF27: LitI4 7
  loc_6FEF2C: FLdRfVar var_A8
  loc_6FEF2F: Ary1LdI4
  loc_6FEF30: CI2Str
  loc_6FEF32: ImpAdLdRf MemVar_74A220
  loc_6FEF35: NewIfNullPr clsProducts
  loc_6FEF3D: LitI4 7
  loc_6FEF42: FLdRfVar var_A8
  loc_6FEF45: Ary1LdI4
  loc_6FEF46: LitStr "  "
  loc_6FEF49: ConcatStr
  loc_6FEF4A: CVarStr var_FC
  loc_6FEF4D: FLdRfVar var_378
  loc_6FEF50: LitI4 7
  loc_6FEF55: FLdRfVar var_A8
  loc_6FEF58: Ary1LdI4
  loc_6FEF59: CI2Str
  loc_6FEF5B: ImpAdLdRf MemVar_74A220
  loc_6FEF5E: NewIfNullPr clsProducts
  loc_6FEF66: FLdZeroAd var_378
  loc_6FEF69: CVarStr var_DC
  loc_6FEF6C: LitVarStr var_2FC, "No disponible"
  loc_6FEF71: FStVarCopyObj var_CC
  loc_6FEF74: FLdRfVar var_CC
  loc_6FEF77: ILdRf var_2D8
  loc_6FEF7A: LitStr vbNullString
  loc_6FEF7D: EqStr
  loc_6FEF7F: CVarBoolI2 var_2EC
  loc_6FEF83: FLdRfVar var_EC
  loc_6FEF86: ImpAdCallFPR4  = IIf(, , )
  loc_6FEF8B: FLdRfVar var_EC
  loc_6FEF8E: ConcatVar var_10C
  loc_6FEF92: CStrVarTmp
  loc_6FEF93: FStStrNoPop var_37C
  loc_6FEF96: LitI4 7
  loc_6FEF9B: FLdRfVar var_A8
  loc_6FEF9E: Ary1StStrCopy
  loc_6FEF9F: FFreeStr var_2D8 = ""
  loc_6FEFA6: FFreeVar var_2EC = "": var_CC = "": var_DC = "": var_FC = "": var_EC = ""
  loc_6FEFB7: LitI4 2
  loc_6FEFBC: FLdRfVar var_A8
  loc_6FEFBF: Ary1LdI4
  loc_6FEFC0: LitStr "  "
  loc_6FEFC3: ConcatStr
  loc_6FEFC4: FStStrNoPop var_37C
  loc_6FEFC7: FLdRfVar var_378
  loc_6FEFCA: LitI4 2
  loc_6FEFCF: FLdRfVar var_A8
  loc_6FEFD2: Ary1LdI4
  loc_6FEFD3: FStStrCopy var_2D8
  loc_6FEFD6: FLdRfVar var_2D8
  loc_6FEFD9: ImpAdLdRf MemVar_74DCA8
  loc_6FEFDC: NewIfNullPr TiposCierres
  loc_6FEFDF: from_stack_2v = TiposCierres.CargarTipoCierre(from_stack_1v)
  loc_6FEFE4: ILdRf var_378
  loc_6FEFE7: ConcatStr
  loc_6FEFE8: FStStrNoPop var_380
  loc_6FEFEB: LitI4 2
  loc_6FEFF0: FLdRfVar var_A8
  loc_6FEFF3: Ary1StStrCopy
  loc_6FEFF4: FFreeStr var_2D8 = "": var_37C = "": var_378 = ""
  loc_6FF001: LitStr "INSERT INTO RC_DETALLE (cod_reg, tipo, fechaini, horaini, fechafin, horafin, codprod, nrosurt, pico, totsurtvolini, ppusurt, totsurtvolfin, fmsvol, fmsvolctl, ppuctl, consignado,NPrecio)"
  loc_6FF004: FStStrCopy var_90
  loc_6FF009: ILdRf var_90
  loc_6FF00C: LitStr " VALUES ('"
  loc_6FF00F: ConcatStr
  loc_6FF010: FStStrNoPop var_2D8
  loc_6FF013: LitI4 1
  loc_6FF018: FLdRfVar var_A8
  loc_6FF01B: Ary1LdI4
  loc_6FF01C: ConcatStr
  loc_6FF01D: FStStrNoPop var_378
  loc_6FF020: LitStr "', '"
  loc_6FF023: ConcatStr
  loc_6FF024: FStStrNoPop var_37C
  loc_6FF027: LitI4 2
  loc_6FF02C: FLdRfVar var_A8
  loc_6FF02F: Ary1LdI4
  loc_6FF030: ConcatStr
  loc_6FF031: FStStrNoPop var_380
  loc_6FF034: LitStr "', '"
  loc_6FF037: ConcatStr
  loc_6FF038: FStStrNoPop var_3B0
  loc_6FF03B: LitI4 3
  loc_6FF040: FLdRfVar var_A8
  loc_6FF043: Ary1LdI4
  loc_6FF044: ConcatStr
  loc_6FF045: FStStrNoPop var_3B4
  loc_6FF048: LitStr "', '"
  loc_6FF04B: ConcatStr
  loc_6FF04C: FStStrNoPop var_3B8
  loc_6FF04F: LitI4 4
  loc_6FF054: FLdRfVar var_A8
  loc_6FF057: Ary1LdI4
  loc_6FF058: ConcatStr
  loc_6FF059: FStStrNoPop var_3BC
  loc_6FF05C: LitStr "', '"
  loc_6FF05F: ConcatStr
  loc_6FF060: FStStrNoPop var_3C0
  loc_6FF063: LitI4 5
  loc_6FF068: FLdRfVar var_A8
  loc_6FF06B: Ary1LdI4
  loc_6FF06C: ConcatStr
  loc_6FF06D: FStStrNoPop var_3C4
  loc_6FF070: LitStr "','"
  loc_6FF073: ConcatStr
  loc_6FF074: FStStrNoPop var_3C8
  loc_6FF077: LitI4 6
  loc_6FF07C: FLdRfVar var_A8
  loc_6FF07F: Ary1LdI4
  loc_6FF080: ConcatStr
  loc_6FF081: FStStrNoPop var_3CC
  loc_6FF084: LitStr "', '"
  loc_6FF087: ConcatStr
  loc_6FF088: FStStrNoPop var_3D0
  loc_6FF08B: LitI4 7
  loc_6FF090: FLdRfVar var_A8
  loc_6FF093: Ary1LdI4
  loc_6FF094: ConcatStr
  loc_6FF095: FStStrNoPop var_3D4
  loc_6FF098: LitStr "', "
  loc_6FF09B: ConcatStr
  loc_6FF09C: FStStrNoPop var_3D8
  loc_6FF09F: LitI4 8
  loc_6FF0A4: FLdRfVar var_A8
  loc_6FF0A7: Ary1LdI4
  loc_6FF0A8: ConcatStr
  loc_6FF0A9: FStStrNoPop var_3DC
  loc_6FF0AC: LitStr ", '"
  loc_6FF0AF: ConcatStr
  loc_6FF0B0: FStStrNoPop var_3E0
  loc_6FF0B3: LitI4 9
  loc_6FF0B8: FLdRfVar var_A8
  loc_6FF0BB: Ary1LdI4
  loc_6FF0BC: ConcatStr
  loc_6FF0BD: FStStrNoPop var_3E4
  loc_6FF0C0: LitStr "', "
  loc_6FF0C3: ConcatStr
  loc_6FF0C4: FStStrNoPop var_3E8
  loc_6FF0C7: FLdRfVar var_38C
  loc_6FF0CA: LitI2_Byte 8
  loc_6FF0CC: PopTmpLdAd2 var_2D2
  loc_6FF0CF: LitI4 &HA
  loc_6FF0D4: FLdRfVar var_A8
  loc_6FF0D7: Ary1LdRf
  loc_6FF0D8: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF0DD: FLdFPR8 var_38C
  loc_6FF0E0: CStrR8
  loc_6FF0E2: FStStrNoPop var_3EC
  loc_6FF0E5: ConcatStr
  loc_6FF0E6: FStStrNoPop var_3F0
  loc_6FF0E9: LitStr ", "
  loc_6FF0EC: ConcatStr
  loc_6FF0ED: FStStrNoPop var_3F4
  loc_6FF0F0: FLdRfVar var_398
  loc_6FF0F3: LitI2_Byte 8
  loc_6FF0F5: PopTmpLdAd2 var_38E
  loc_6FF0F8: LitI4 &HB
  loc_6FF0FD: FLdRfVar var_A8
  loc_6FF100: Ary1LdRf
  loc_6FF101: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF106: FLdFPR8 var_398
  loc_6FF109: CStrR8
  loc_6FF10B: FStStrNoPop var_3F8
  loc_6FF10E: ConcatStr
  loc_6FF10F: FStStrNoPop var_3FC
  loc_6FF112: LitStr ", "
  loc_6FF115: ConcatStr
  loc_6FF116: FStStrNoPop var_400
  loc_6FF119: FLdRfVar var_3A0
  loc_6FF11C: LitI2_Byte 8
  loc_6FF11E: PopTmpLdAd2 var_3AA
  loc_6FF121: LitI4 &HC
  loc_6FF126: FLdRfVar var_A8
  loc_6FF129: Ary1LdRf
  loc_6FF12A: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF12F: FLdFPR8 var_3A0
  loc_6FF132: CStrR8
  loc_6FF134: FStStrNoPop var_404
  loc_6FF137: ConcatStr
  loc_6FF138: FStStrNoPop var_408
  loc_6FF13B: LitStr ", "
  loc_6FF13E: ConcatStr
  loc_6FF13F: FStStrNoPop var_410
  loc_6FF142: FLdRfVar var_3A8
  loc_6FF145: LitI2_Byte 8
  loc_6FF147: PopTmpLdAd2 var_40A
  loc_6FF14A: LitI4 &HD
  loc_6FF14F: FLdRfVar var_A8
  loc_6FF152: Ary1LdRf
  loc_6FF153: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF158: FLdFPR8 var_3A8
  loc_6FF15B: CStrR8
  loc_6FF15D: FStStrNoPop var_414
  loc_6FF160: ConcatStr
  loc_6FF161: FStStrNoPop var_418
  loc_6FF164: LitStr ", "
  loc_6FF167: ConcatStr
  loc_6FF168: FStStrNoPop var_428
  loc_6FF16B: FLdRfVar var_424
  loc_6FF16E: LitI2_Byte 8
  loc_6FF170: PopTmpLdAd2 var_41A
  loc_6FF173: LitI4 &HE
  loc_6FF178: FLdRfVar var_A8
  loc_6FF17B: Ary1LdRf
  loc_6FF17C: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF181: FLdFPR8 var_424
  loc_6FF184: CStrR8
  loc_6FF186: FStStrNoPop var_42C
  loc_6FF189: ConcatStr
  loc_6FF18A: FStStrNoPop var_430
  loc_6FF18D: LitStr ", "
  loc_6FF190: ConcatStr
  loc_6FF191: FStStrNoPop var_440
  loc_6FF194: FLdRfVar var_43C
  loc_6FF197: LitI2_Byte 8
  loc_6FF199: PopTmpLdAd2 var_432
  loc_6FF19C: LitI4 &HF
  loc_6FF1A1: FLdRfVar var_A8
  loc_6FF1A4: Ary1LdRf
  loc_6FF1A5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_6FF1AA: FLdFPR8 var_43C
  loc_6FF1AD: CStrR8
  loc_6FF1AF: FStStrNoPop var_444
  loc_6FF1B2: ConcatStr
  loc_6FF1B3: FStStrNoPop var_448
  loc_6FF1B6: LitStr ", '"
  loc_6FF1B9: ConcatStr
  loc_6FF1BA: FStStrNoPop var_44C
  loc_6FF1BD: LitI4 &H10
  loc_6FF1C2: FLdRfVar var_A8
  loc_6FF1C5: Ary1LdI4
  loc_6FF1C6: ConcatStr
  loc_6FF1C7: FStStrNoPop var_450
  loc_6FF1CA: LitStr "' ,' "
  loc_6FF1CD: ConcatStr
  loc_6FF1CE: FStStrNoPop var_454
  loc_6FF1D1: LitI4 &H11
  loc_6FF1D6: FLdRfVar var_A8
  loc_6FF1D9: Ary1LdI4
  loc_6FF1DA: ConcatStr
  loc_6FF1DB: FStStrNoPop var_458
  loc_6FF1DE: LitStr "' )"
  loc_6FF1E1: ConcatStr
  loc_6FF1E2: FStStr var_90
  loc_6FF1E5: FFreeStr var_428 = "": var_42C = "": var_430 = "": var_440 = "": var_444 = "": var_448 = "": var_44C = "": var_450 = "": var_454 = "": var_458 = "": var_2D8 = "": var_378 = "": var_37C = "": var_380 = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3E4 = "": var_3E8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = "": var_410 = "": var_414 = ""
  loc_6FF23A: FLdRfVar var_2D2
  loc_6FF23D: FLdRfVar var_90
  loc_6FF240: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_6FF245: FLdI2 var_2D2
  loc_6FF248: NotI4
  loc_6FF249: BranchF loc_6FF253
  loc_6FF24E: LitI2_Byte 0
  loc_6FF250: FStI2 var_86
  loc_6FF257: FLdRfVar var_2D0
  loc_6FF25A: ImpAdCallI2 Err 'rtcErrObj
  loc_6FF25F: FStAdFunc var_384
  loc_6FF262: FLdPr var_384
  loc_6FF265:  = TiposCierres.Number
  loc_6FF26A: ILdRf var_2D0
  loc_6FF26D: LitI4 9
  loc_6FF272: EqI4
  loc_6FF273: FFree1Ad var_384
  loc_6FF276: BranchF loc_6FF27F
  loc_6FF27B: Resume
  loc_6FF283: ExitProcCbHresult
End Function

Public Function PorcesarDatosOpDif(sDatosOpDif) '70DCF4
  'Data Table: 440CF4
  loc_70C778: LitI2_Byte &HFF
  loc_70C77A: FStI2 var_86
  loc_70C77D: LitI2_Byte &HFF
  loc_70C77F: FStI2 var_B0
  loc_70C782: FLdPr Me
  loc_70C785: MemLdI2 OldfilePConsign
  loc_70C788: LitI2_Byte &HFF
  loc_70C78A: EqI2
  loc_70C78B: BranchF loc_70C958
  loc_70C78E: LitI4 4
  loc_70C793: FLdRfVar var_C0
  loc_70C796: ImpAdCallFPR4  = Chr()
  loc_70C79B: FLdRfVar var_C0
  loc_70C79E: LitI4 3
  loc_70C7A3: FLdRfVar var_D0
  loc_70C7A6: ImpAdCallFPR4  = Chr()
  loc_70C7AB: FLdRfVar var_D0
  loc_70C7AE: ConcatVar var_E0
  loc_70C7B2: LitI4 8
  loc_70C7B7: FLdRfVar var_F0
  loc_70C7BA: ImpAdCallFPR4  = Chr()
  loc_70C7BF: FLdRfVar var_F0
  loc_70C7C2: ConcatVar var_100
  loc_70C7C6: LitI4 6
  loc_70C7CB: FLdRfVar var_110
  loc_70C7CE: ImpAdCallFPR4  = Chr()
  loc_70C7D3: FLdRfVar var_110
  loc_70C7D6: ConcatVar var_120
  loc_70C7DA: LitI4 8
  loc_70C7DF: FLdRfVar var_130
  loc_70C7E2: ImpAdCallFPR4  = Chr()
  loc_70C7E7: FLdRfVar var_130
  loc_70C7EA: ConcatVar var_140
  loc_70C7EE: LitI4 6
  loc_70C7F3: FLdRfVar var_150
  loc_70C7F6: ImpAdCallFPR4  = Chr()
  loc_70C7FB: FLdRfVar var_150
  loc_70C7FE: ConcatVar var_160
  loc_70C802: LitI4 2
  loc_70C807: FLdRfVar var_170
  loc_70C80A: ImpAdCallFPR4  = Chr()
  loc_70C80F: FLdRfVar var_170
  loc_70C812: ConcatVar var_180
  loc_70C816: LitI4 &HB
  loc_70C81B: FLdRfVar var_190
  loc_70C81E: ImpAdCallFPR4  = Chr()
  loc_70C823: FLdRfVar var_190
  loc_70C826: ConcatVar var_1A0
  loc_70C82A: LitI4 &H13
  loc_70C82F: FLdRfVar var_1B0
  loc_70C832: ImpAdCallFPR4  = Chr()
  loc_70C837: FLdRfVar var_1B0
  loc_70C83A: ConcatVar var_1C0
  loc_70C83E: LitI4 8
  loc_70C843: FLdRfVar var_1D0
  loc_70C846: ImpAdCallFPR4  = Chr()
  loc_70C84B: FLdRfVar var_1D0
  loc_70C84E: ConcatVar var_1E0
  loc_70C852: LitI4 &H1E
  loc_70C857: FLdRfVar var_1F0
  loc_70C85A: ImpAdCallFPR4  = Chr()
  loc_70C85F: FLdRfVar var_1F0
  loc_70C862: ConcatVar var_200
  loc_70C866: LitI4 1
  loc_70C86B: FLdRfVar var_210
  loc_70C86E: ImpAdCallFPR4  = Chr()
  loc_70C873: FLdRfVar var_210
  loc_70C876: ConcatVar var_220
  loc_70C87A: LitI4 1
  loc_70C87F: FLdRfVar var_230
  loc_70C882: ImpAdCallFPR4  = Chr()
  loc_70C887: FLdRfVar var_230
  loc_70C88A: ConcatVar var_240
  loc_70C88E: LitI4 1
  loc_70C893: FLdRfVar var_250
  loc_70C896: ImpAdCallFPR4  = Chr()
  loc_70C89B: FLdRfVar var_250
  loc_70C89E: ConcatVar var_260
  loc_70C8A2: LitI4 1
  loc_70C8A7: FLdRfVar var_270
  loc_70C8AA: ImpAdCallFPR4  = Chr()
  loc_70C8AF: FLdRfVar var_270
  loc_70C8B2: ConcatVar var_280
  loc_70C8B6: LitI4 &HB
  loc_70C8BB: FLdRfVar var_290
  loc_70C8BE: ImpAdCallFPR4  = Chr()
  loc_70C8C3: FLdRfVar var_290
  loc_70C8C6: ConcatVar var_2A0
  loc_70C8CA: LitI4 &HB
  loc_70C8CF: FLdRfVar var_2B0
  loc_70C8D2: ImpAdCallFPR4  = Chr()
  loc_70C8D7: FLdRfVar var_2B0
  loc_70C8DA: ConcatVar var_2C0
  loc_70C8DE: LitI4 2
  loc_70C8E3: FLdRfVar var_2D0
  loc_70C8E6: ImpAdCallFPR4  = Chr()
  loc_70C8EB: FLdRfVar var_2D0
  loc_70C8EE: ConcatVar var_2E0
  loc_70C8F2: CStrVarTmp
  loc_70C8F3: FStStr var_8C
  loc_70C8F6: FFreeVar var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = ""
  loc_70C93F: LitI2_Byte &H12
  loc_70C941: PopTmpLdAd2 var_2E6
  loc_70C944: FLdRfVar var_8C
  loc_70C947: FLdRfVar var_A8
  loc_70C94A: PopTmpLdAdStr var_2E4
  loc_70C94D: ILdRf sDatosOpDif
  loc_70C950: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_70C955: Branch loc_70CBAF
  loc_70C958: LitI4 4
  loc_70C95D: FLdRfVar var_C0
  loc_70C960: ImpAdCallFPR4  = Chr()
  loc_70C965: FLdRfVar var_C0
  loc_70C968: LitI4 3
  loc_70C96D: FLdRfVar var_D0
  loc_70C970: ImpAdCallFPR4  = Chr()
  loc_70C975: FLdRfVar var_D0
  loc_70C978: ConcatVar var_E0
  loc_70C97C: LitI4 8
  loc_70C981: FLdRfVar var_F0
  loc_70C984: ImpAdCallFPR4  = Chr()
  loc_70C989: FLdRfVar var_F0
  loc_70C98C: ConcatVar var_100
  loc_70C990: LitI4 6
  loc_70C995: FLdRfVar var_110
  loc_70C998: ImpAdCallFPR4  = Chr()
  loc_70C99D: FLdRfVar var_110
  loc_70C9A0: ConcatVar var_120
  loc_70C9A4: LitI4 8
  loc_70C9A9: FLdRfVar var_130
  loc_70C9AC: ImpAdCallFPR4  = Chr()
  loc_70C9B1: FLdRfVar var_130
  loc_70C9B4: ConcatVar var_140
  loc_70C9B8: LitI4 6
  loc_70C9BD: FLdRfVar var_150
  loc_70C9C0: ImpAdCallFPR4  = Chr()
  loc_70C9C5: FLdRfVar var_150
  loc_70C9C8: ConcatVar var_160
  loc_70C9CC: LitI4 2
  loc_70C9D1: FLdRfVar var_170
  loc_70C9D4: ImpAdCallFPR4  = Chr()
  loc_70C9D9: FLdRfVar var_170
  loc_70C9DC: ConcatVar var_180
  loc_70C9E0: LitI4 &HB
  loc_70C9E5: FLdRfVar var_190
  loc_70C9E8: ImpAdCallFPR4  = Chr()
  loc_70C9ED: FLdRfVar var_190
  loc_70C9F0: ConcatVar var_1A0
  loc_70C9F4: LitI4 &H13
  loc_70C9F9: FLdRfVar var_1B0
  loc_70C9FC: ImpAdCallFPR4  = Chr()
  loc_70CA01: FLdRfVar var_1B0
  loc_70CA04: ConcatVar var_1C0
  loc_70CA08: LitI4 8
  loc_70CA0D: FLdRfVar var_1D0
  loc_70CA10: ImpAdCallFPR4  = Chr()
  loc_70CA15: FLdRfVar var_1D0
  loc_70CA18: ConcatVar var_1E0
  loc_70CA1C: LitI4 &H1E
  loc_70CA21: FLdRfVar var_1F0
  loc_70CA24: ImpAdCallFPR4  = Chr()
  loc_70CA29: FLdRfVar var_1F0
  loc_70CA2C: ConcatVar var_200
  loc_70CA30: LitI4 1
  loc_70CA35: FLdRfVar var_210
  loc_70CA38: ImpAdCallFPR4  = Chr()
  loc_70CA3D: FLdRfVar var_210
  loc_70CA40: ConcatVar var_220
  loc_70CA44: LitI4 1
  loc_70CA49: FLdRfVar var_230
  loc_70CA4C: ImpAdCallFPR4  = Chr()
  loc_70CA51: FLdRfVar var_230
  loc_70CA54: ConcatVar var_240
  loc_70CA58: LitI4 1
  loc_70CA5D: FLdRfVar var_250
  loc_70CA60: ImpAdCallFPR4  = Chr()
  loc_70CA65: FLdRfVar var_250
  loc_70CA68: ConcatVar var_260
  loc_70CA6C: LitI4 1
  loc_70CA71: FLdRfVar var_270
  loc_70CA74: ImpAdCallFPR4  = Chr()
  loc_70CA79: FLdRfVar var_270
  loc_70CA7C: ConcatVar var_280
  loc_70CA80: LitI4 &HB
  loc_70CA85: FLdRfVar var_290
  loc_70CA88: ImpAdCallFPR4  = Chr()
  loc_70CA8D: FLdRfVar var_290
  loc_70CA90: ConcatVar var_2A0
  loc_70CA94: LitI4 &HB
  loc_70CA99: FLdRfVar var_2B0
  loc_70CA9C: ImpAdCallFPR4  = Chr()
  loc_70CAA1: FLdRfVar var_2B0
  loc_70CAA4: ConcatVar var_2C0
  loc_70CAA8: LitI4 2
  loc_70CAAD: FLdRfVar var_2D0
  loc_70CAB0: ImpAdCallFPR4  = Chr()
  loc_70CAB5: FLdRfVar var_2D0
  loc_70CAB8: ConcatVar var_2E0
  loc_70CABC: LitI4 2
  loc_70CAC1: FLdRfVar var_2F8
  loc_70CAC4: ImpAdCallFPR4  = Chr()
  loc_70CAC9: FLdRfVar var_2F8
  loc_70CACC: ConcatVar var_308
  loc_70CAD0: LitI4 1
  loc_70CAD5: FLdRfVar var_318
  loc_70CAD8: ImpAdCallFPR4  = Chr()
  loc_70CADD: FLdRfVar var_318
  loc_70CAE0: ConcatVar var_328
  loc_70CAE4: LitI4 5
  loc_70CAE9: FLdRfVar var_338
  loc_70CAEC: ImpAdCallFPR4  = Chr()
  loc_70CAF1: FLdRfVar var_338
  loc_70CAF4: ConcatVar var_348
  loc_70CAF8: LitI4 &HB
  loc_70CAFD: FLdRfVar var_358
  loc_70CB00: ImpAdCallFPR4  = Chr()
  loc_70CB05: FLdRfVar var_358
  loc_70CB08: ConcatVar var_368
  loc_70CB0C: LitI4 &HB
  loc_70CB11: FLdRfVar var_378
  loc_70CB14: ImpAdCallFPR4  = Chr()
  loc_70CB19: FLdRfVar var_378
  loc_70CB1C: ConcatVar var_388
  loc_70CB20: LitI4 &H14
  loc_70CB25: FLdRfVar var_398
  loc_70CB28: ImpAdCallFPR4  = Chr()
  loc_70CB2D: FLdRfVar var_398
  loc_70CB30: ConcatVar var_3A8
  loc_70CB34: CStrVarTmp
  loc_70CB35: FStStr var_8C
  loc_70CB38: FFreeVar var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F8 = "": var_308 = "": var_318 = "": var_328 = "": var_338 = "": var_348 = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = ""
  loc_70CB99: LitI2_Byte &H18
  loc_70CB9B: PopTmpLdAd2 var_2E6
  loc_70CB9E: FLdRfVar var_8C
  loc_70CBA1: FLdRfVar var_A8
  loc_70CBA4: PopTmpLdAdStr var_2E4
  loc_70CBA7: ILdRf sDatosOpDif
  loc_70CBAA: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_70CBAF: LitI4 &H13
  loc_70CBB4: FLdRfVar var_A8
  loc_70CBB7: Ary1LdI4
  loc_70CBB8: LitStr vbNullString
  loc_70CBBB: EqStr
  loc_70CBBD: BranchF loc_70CBCC
  loc_70CBC0: LitStr "00"
  loc_70CBC3: LitI4 &H13
  loc_70CBC8: FLdRfVar var_A8
  loc_70CBCB: Ary1StStrCopy
  loc_70CBCC: LitI4 &H14
  loc_70CBD1: FLdRfVar var_A8
  loc_70CBD4: Ary1LdI4
  loc_70CBD5: LitStr vbNullString
  loc_70CBD8: EqStr
  loc_70CBDA: BranchF loc_70CBE9
  loc_70CBDD: LitStr " "
  loc_70CBE0: LitI4 &H14
  loc_70CBE5: FLdRfVar var_A8
  loc_70CBE8: Ary1StStrCopy
  loc_70CBE9: LitI4 &H15
  loc_70CBEE: FLdRfVar var_A8
  loc_70CBF1: Ary1LdI4
  loc_70CBF2: LitStr vbNullString
  loc_70CBF5: EqStr
  loc_70CBF7: BranchF loc_70CC06
  loc_70CBFA: LitStr "00000"
  loc_70CBFD: LitI4 &H15
  loc_70CC02: FLdRfVar var_A8
  loc_70CC05: Ary1StStrCopy
  loc_70CC06: LitI4 &H16
  loc_70CC0B: FLdRfVar var_A8
  loc_70CC0E: Ary1LdI4
  loc_70CC0F: LitStr vbNullString
  loc_70CC12: EqStr
  loc_70CC14: BranchF loc_70CC23
  loc_70CC17: LitStr "00000000000"
  loc_70CC1A: LitI4 &H16
  loc_70CC1F: FLdRfVar var_A8
  loc_70CC22: Ary1StStrCopy
  loc_70CC23: LitI4 &H17
  loc_70CC28: FLdRfVar var_A8
  loc_70CC2B: Ary1LdI4
  loc_70CC2C: LitStr vbNullString
  loc_70CC2F: EqStr
  loc_70CC31: BranchF loc_70CC40
  loc_70CC34: LitStr "00000000000"
  loc_70CC37: LitI4 &H17
  loc_70CC3C: FLdRfVar var_A8
  loc_70CC3F: Ary1StStrCopy
  loc_70CC40: LitI4 &H18
  loc_70CC45: FLdRfVar var_A8
  loc_70CC48: Ary1LdI4
  loc_70CC49: LitStr vbNullString
  loc_70CC4C: EqStr
  loc_70CC4E: BranchF loc_70CC5D
  loc_70CC51: LitStr "00000000000000000000"
  loc_70CC54: LitI4 &H18
  loc_70CC59: FLdRfVar var_A8
  loc_70CC5C: Ary1StStrCopy
  loc_70CC5D: FLdRfVar var_2E6
  loc_70CC60: FLdRfVar var_AC
  loc_70CC63: FLdRfVar var_3AC
  loc_70CC66: ImpAdLdRf MemVar_74C760
  loc_70CC69: NewIfNullPr Formx
  loc_70CC6C: from_stack_1v = Formx.global_4589716Get()
  loc_70CC71: FLdPr var_3AC
  loc_70CC74: Call 0.Method_arg_340 ()
  loc_70CC79: FFree1Ad var_3AC
  loc_70CC7C: LitI2_Byte 1
  loc_70CC7E: FLdRfVar var_AE
  loc_70CC81: ILdRf var_AC
  loc_70CC84: FnLenStr
  loc_70CC85: CI2I4
  loc_70CC86: ForI2 var_3B0
  loc_70CC8C: LitVarI2 var_C0, 1
  loc_70CC91: FLdI2 var_AE
  loc_70CC94: CI4UI1
  loc_70CC95: FLdRfVar var_AC
  loc_70CC98: CVarRef
  loc_70CC9D: FLdRfVar var_D0
  loc_70CCA0: ImpAdCallFPR4  = Mid(, , )
  loc_70CCA5: FLdRfVar var_D0
  loc_70CCA8: CStrVarVal var_3D4
  loc_70CCAC: ImpAdCallI2 Asc()
  loc_70CCB1: LitVarI2 var_E0, 3
  loc_70CCB6: LitI4 1
  loc_70CCBB: LitI4 2
  loc_70CCC0: FLdRfVar var_A8
  loc_70CCC3: Ary1LdRf
  loc_70CCC4: CVarRef
  loc_70CCC9: FLdRfVar var_F0
  loc_70CCCC: ImpAdCallFPR4  = Mid(, , )
  loc_70CCD1: FLdRfVar var_F0
  loc_70CCD4: FnCIntVar
  loc_70CCD6: EqI2
  loc_70CCD7: FFree1Str var_3D4
  loc_70CCDA: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = ""
  loc_70CCE7: BranchF loc_70CD5B
  loc_70CCEA: LitVarI2 var_C0, 3
  loc_70CCEF: LitI4 1
  loc_70CCF4: LitI4 2
  loc_70CCF9: FLdRfVar var_A8
  loc_70CCFC: Ary1LdRf
  loc_70CCFD: CVarRef
  loc_70CD02: FLdRfVar var_D0
  loc_70CD05: ImpAdCallFPR4  = Mid(, , )
  loc_70CD0A: FLdRfVar var_D0
  loc_70CD0D: LitVarStr var_3E4, " - "
  loc_70CD12: AddVar var_E0
  loc_70CD16: LitVarI2 var_F0, 50
  loc_70CD1B: FLdI2 var_AE
  loc_70CD1E: LitI2_Byte 1
  loc_70CD20: AddI2
  loc_70CD21: CI4UI1
  loc_70CD22: FLdRfVar var_AC
  loc_70CD25: CVarRef
  loc_70CD2A: FLdRfVar var_100
  loc_70CD2D: ImpAdCallFPR4  = Mid(, , )
  loc_70CD32: FLdRfVar var_100
  loc_70CD35: AddVar var_110
  loc_70CD39: CStrVarTmp
  loc_70CD3A: FStStrNoPop var_3D4
  loc_70CD3D: LitI4 2
  loc_70CD42: FLdRfVar var_A8
  loc_70CD45: Ary1StStrCopy
  loc_70CD46: FFree1Str var_3D4
  loc_70CD49: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_100 = ""
  loc_70CD58: Branch loc_70CD6C
  loc_70CD5B: FLdI2 var_AE
  loc_70CD5E: LitI2_Byte &H32
  loc_70CD60: AddI2
  loc_70CD61: FStI2 var_AE
  loc_70CD64: FLdRfVar var_AE
  loc_70CD67: NextI2 var_3B0, loc_70CC8C
  loc_70CD6C: LitI4 7
  loc_70CD71: FLdRfVar var_A8
  loc_70CD74: Ary1LdI4
  loc_70CD75: LitStr "  "
  loc_70CD78: ConcatStr
  loc_70CD79: FStStrNoPop var_408
  loc_70CD7C: FLdRfVar var_3D4
  loc_70CD7F: LitI4 7
  loc_70CD84: FLdRfVar var_A8
  loc_70CD87: Ary1LdI4
  loc_70CD88: CI2Str
  loc_70CD8A: ImpAdLdRf MemVar_74A220
  loc_70CD8D: NewIfNullPr clsProducts
  loc_70CD95: ILdRf var_3D4
  loc_70CD98: ConcatStr
  loc_70CD99: FStStrNoPop var_40C
  loc_70CD9C: LitI4 7
  loc_70CDA1: FLdRfVar var_A8
  loc_70CDA4: Ary1StStrCopy
  loc_70CDA5: FFreeStr var_408 = "": var_3D4 = ""
  loc_70CDAE: LitVarI2 var_C0, 3
  loc_70CDB3: LitI4 1
  loc_70CDB8: LitI4 2
  loc_70CDBD: FLdRfVar var_A8
  loc_70CDC0: Ary1LdRf
  loc_70CDC1: CVarRef
  loc_70CDC6: FLdRfVar var_D0
  loc_70CDC9: ImpAdCallFPR4  = Mid(, , )
  loc_70CDCE: FLdRfVar var_D0
  loc_70CDD1: CStrVarVal var_3D4
  loc_70CDD5: from_stack_2v = Proc_100_61_60E21C(from_stack_1v)
  loc_70CDDA: FFree1Str var_3D4
  loc_70CDDD: FFreeVar var_C0 = ""
  loc_70CDE4: LitVarI2 var_C0, 2
  loc_70CDE9: LitI4 7
  loc_70CDEE: LitI4 3
  loc_70CDF3: FLdRfVar var_A8
  loc_70CDF6: Ary1LdRf
  loc_70CDF7: CVarRef
  loc_70CDFC: FLdRfVar var_D0
  loc_70CDFF: ImpAdCallFPR4  = Mid(, , )
  loc_70CE04: LitVarI2 var_F0, 2
  loc_70CE09: LitI4 5
  loc_70CE0E: LitI4 3
  loc_70CE13: FLdRfVar var_A8
  loc_70CE16: Ary1LdRf
  loc_70CE17: CVarRef
  loc_70CE1C: FLdRfVar var_100
  loc_70CE1F: ImpAdCallFPR4  = Mid(, , )
  loc_70CE24: LitVarI2 var_130, 4
  loc_70CE29: LitI4 1
  loc_70CE2E: LitI4 3
  loc_70CE33: FLdRfVar var_A8
  loc_70CE36: Ary1LdRf
  loc_70CE37: CVarRef
  loc_70CE3C: FLdRfVar var_140
  loc_70CE3F: ImpAdCallFPR4  = Mid(, , )
  loc_70CE44: LitVarI2 var_160, 2
  loc_70CE49: LitI4 1
  loc_70CE4E: LitI4 4
  loc_70CE53: FLdRfVar var_A8
  loc_70CE56: Ary1LdRf
  loc_70CE57: CVarRef
  loc_70CE5C: FLdRfVar var_170
  loc_70CE5F: ImpAdCallFPR4  = Mid(, , )
  loc_70CE64: LitVarI2 var_190, 2
  loc_70CE69: LitI4 3
  loc_70CE6E: LitI4 4
  loc_70CE73: FLdRfVar var_A8
  loc_70CE76: Ary1LdRf
  loc_70CE77: CVarRef
  loc_70CE7C: FLdRfVar var_1A0
  loc_70CE7F: ImpAdCallFPR4  = Mid(, , )
  loc_70CE84: LitVarI2 var_1D0, 2
  loc_70CE89: LitI4 5
  loc_70CE8E: LitI4 4
  loc_70CE93: FLdRfVar var_A8
  loc_70CE96: Ary1LdRf
  loc_70CE97: CVarRef
  loc_70CE9C: FLdRfVar var_1E0
  loc_70CE9F: ImpAdCallFPR4  = Mid(, , )
  loc_70CEA4: LitVarI2 var_200, 2
  loc_70CEA9: LitI4 1
  loc_70CEAE: LitI4 7
  loc_70CEB3: FLdRfVar var_A8
  loc_70CEB6: Ary1LdRf
  loc_70CEB7: CVarRef
  loc_70CEBC: FLdRfVar var_210
  loc_70CEBF: ImpAdCallFPR4  = Mid(, , )
  loc_70CEC4: FLdRfVar var_2E6
  loc_70CEC7: FLdRfVar var_210
  loc_70CECA: FnCIntVar
  loc_70CECC: CVarI2 var_220
  loc_70CECF: FLdRfVar var_170
  loc_70CED2: LitVarStr var_46C, ":"
  loc_70CED7: ConcatVar var_180
  loc_70CEDB: FLdRfVar var_1A0
  loc_70CEDE: ConcatVar var_1B0
  loc_70CEE2: LitVarStr var_49C, ":"
  loc_70CEE7: ConcatVar var_1C0
  loc_70CEEB: FLdRfVar var_1E0
  loc_70CEEE: ConcatVar var_1F0
  loc_70CEF2: FnCDateVar
  loc_70CEF4: PopTmpLdAdFPR8
  loc_70CEF8: FLdRfVar var_D0
  loc_70CEFB: LitVarStr var_3E4, "/"
  loc_70CF00: ConcatVar var_E0
  loc_70CF04: FLdRfVar var_100
  loc_70CF07: ConcatVar var_110
  loc_70CF0B: LitVarStr var_41C, "/"
  loc_70CF10: ConcatVar var_120
  loc_70CF14: FLdRfVar var_140
  loc_70CF17: ConcatVar var_150
  loc_70CF1B: FnCDateVar
  loc_70CF1D: PopTmpLdAdFPR8
  loc_70CF21: from_stack_4v = Proc_100_65_62A3B0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_70CF26: FLdI2 var_2E6
  loc_70CF29: FStI2 var_B0
  loc_70CF2C: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1D0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_210 = "": var_150 = "": var_1F0 = ""
  loc_70CF5F: FLdI2 var_B0
  loc_70CF62: LitI2_Byte &HFF
  loc_70CF64: EqI2
  loc_70CF65: BranchF loc_70D685
  loc_70CF68: LitVarI2 var_C0, 3
  loc_70CF6D: LitI4 1
  loc_70CF72: LitI4 2
  loc_70CF77: FLdRfVar var_A8
  loc_70CF7A: Ary1LdRf
  loc_70CF7B: CVarRef
  loc_70CF80: FLdRfVar var_D0
  loc_70CF83: ImpAdCallFPR4  = Mid(, , )
  loc_70CF88: FLdRfVar var_D0
  loc_70CF8B: LitVarStr var_3E4, "010"
  loc_70CF90: HardType
  loc_70CF91: EqVarBool
  loc_70CF93: FFreeVar var_C0 = ""
  loc_70CF9A: BranchF loc_70D331
  loc_70CF9D: LitI4 &HE
  loc_70CFA2: FLdRfVar var_A8
  loc_70CFA5: Ary1LdI4
  loc_70CFA6: CR8Str
  loc_70CFA8: LitI2_Byte 2
  loc_70CFAA: CR8I2
  loc_70CFAB: NeR8
  loc_70CFAC: BranchF loc_70D170
  loc_70CFAF: FLdRfVar var_4E4
  loc_70CFB2: LitI2_Byte 8
  loc_70CFB4: PopTmpLdAd2 var_2E6
  loc_70CFB7: LitI4 &H10
  loc_70CFBC: FLdRfVar var_A8
  loc_70CFBF: Ary1LdRf
  loc_70CFC0: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70CFC5: FLdRfVar var_4EC
  loc_70CFC8: LitI2_Byte 8
  loc_70CFCA: PopTmpLdAd2 var_4FE
  loc_70CFCD: LitI4 8
  loc_70CFD2: FLdRfVar var_A8
  loc_70CFD5: Ary1LdRf
  loc_70CFD6: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70CFDB: LitI4 &HE
  loc_70CFE0: FLdRfVar var_A8
  loc_70CFE3: Ary1LdRf
  loc_70CFE4: CVarRef
  loc_70CFE9: FLdRfVar var_C0
  loc_70CFEC: ImpAdCallFPR4  = Trim()
  loc_70CFF1: LitVar_FALSE
  loc_70CFF5: LitVar_TRUE var_F0
  loc_70CFF8: FLdRfVar var_C0
  loc_70CFFB: LitVarStr var_3D0, "2"
  loc_70D000: HardType
  loc_70D001: EqVar var_D0
  loc_70D005: FStVar var_E0
  loc_70D009: FLdRfVar var_E0
  loc_70D00C: FLdRfVar var_110
  loc_70D00F: ImpAdCallFPR4  = IIf(, , )
  loc_70D014: LitStr "DescT"
  loc_70D017: FStStrCopy var_3D4
  loc_70D01A: FLdRfVar var_3D4
  loc_70D01D: FLdRfVar var_110
  loc_70D020: CBoolVar
  loc_70D022: PopTmpLdAd2 var_512
  loc_70D025: LitI4 2
  loc_70D02A: FLdRfVar var_A8
  loc_70D02D: Ary1LdRf
  loc_70D02E: FLdFPR8 var_4EC
  loc_70D031: PopTmpLdAdFPR8
  loc_70D035: FLdFPR8 var_4E4
  loc_70D038: PopTmpLdAdFPR8
  loc_70D03C: LitI4 7
  loc_70D041: FLdRfVar var_A8
  loc_70D044: Ary1LdRf
  loc_70D045: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D04A: FFree1Str var_3D4
  loc_70D04D: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D05A: LitI4 5
  loc_70D05F: LitI4 7
  loc_70D064: FLdRfVar var_A8
  loc_70D067: Ary1LdRf
  loc_70D068: CVarRef
  loc_70D06D: FLdRfVar var_C0
  loc_70D070: ImpAdCallFPR4  = Right(, )
  loc_70D075: FLdRfVar var_C0
  loc_70D078: LitVarStr var_3D0, "DescT"
  loc_70D07D: HardType
  loc_70D07E: EqVarBool
  loc_70D080: FFree1Var var_C0 = ""
  loc_70D083: BranchF loc_70D0C2
  loc_70D086: LitI4 7
  loc_70D08B: FLdRfVar var_A8
  loc_70D08E: Ary1LdI4
  loc_70D08F: FnLenStr
  loc_70D090: LitI4 5
  loc_70D095: SubI4
  loc_70D096: LitI4 7
  loc_70D09B: FLdRfVar var_A8
  loc_70D09E: Ary1LdRf
  loc_70D09F: CVarRef
  loc_70D0A4: FLdRfVar var_C0
  loc_70D0A7: ImpAdCallFPR4  = Left(, )
  loc_70D0AC: FLdRfVar var_C0
  loc_70D0AF: CStrVarTmp
  loc_70D0B0: FStStrNoPop var_3D4
  loc_70D0B3: LitI4 7
  loc_70D0B8: FLdRfVar var_A8
  loc_70D0BB: Ary1StStrCopy
  loc_70D0BC: FFree1Str var_3D4
  loc_70D0BF: FFree1Var var_C0 = ""
  loc_70D0C2: FLdRfVar var_4E4
  loc_70D0C5: LitI2_Byte 8
  loc_70D0C7: PopTmpLdAd2 var_2E6
  loc_70D0CA: LitI4 &H10
  loc_70D0CF: FLdRfVar var_A8
  loc_70D0D2: Ary1LdRf
  loc_70D0D3: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D0D8: FLdRfVar var_4EC
  loc_70D0DB: LitI2_Byte 8
  loc_70D0DD: PopTmpLdAd2 var_4FE
  loc_70D0E0: LitI4 &H16
  loc_70D0E5: FLdRfVar var_A8
  loc_70D0E8: Ary1LdRf
  loc_70D0E9: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D0EE: LitI4 &HE
  loc_70D0F3: FLdRfVar var_A8
  loc_70D0F6: Ary1LdRf
  loc_70D0F7: CVarRef
  loc_70D0FC: FLdRfVar var_C0
  loc_70D0FF: ImpAdCallFPR4  = Trim()
  loc_70D104: LitVar_FALSE
  loc_70D108: LitVar_TRUE var_F0
  loc_70D10B: FLdRfVar var_C0
  loc_70D10E: LitVarStr var_3D0, "2"
  loc_70D113: HardType
  loc_70D114: EqVar var_D0
  loc_70D118: FStVar var_E0
  loc_70D11C: FLdRfVar var_E0
  loc_70D11F: FLdRfVar var_110
  loc_70D122: ImpAdCallFPR4  = IIf(, , )
  loc_70D127: LitStr "TDesc"
  loc_70D12A: FStStrCopy var_3D4
  loc_70D12D: FLdRfVar var_3D4
  loc_70D130: FLdRfVar var_110
  loc_70D133: CBoolVar
  loc_70D135: PopTmpLdAd2 var_512
  loc_70D138: LitI4 2
  loc_70D13D: FLdRfVar var_A8
  loc_70D140: Ary1LdRf
  loc_70D141: FLdFPR8 var_4EC
  loc_70D144: PopTmpLdAdFPR8
  loc_70D148: FLdFPR8 var_4E4
  loc_70D14B: PopTmpLdAdFPR8
  loc_70D14F: LitI4 7
  loc_70D154: FLdRfVar var_A8
  loc_70D157: Ary1LdRf
  loc_70D158: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D15D: FFree1Str var_3D4
  loc_70D160: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D16D: Branch loc_70D32E
  loc_70D170: FLdRfVar var_4E4
  loc_70D173: LitI2_Byte 8
  loc_70D175: PopTmpLdAd2 var_2E6
  loc_70D178: LitI4 &H10
  loc_70D17D: FLdRfVar var_A8
  loc_70D180: Ary1LdRf
  loc_70D181: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D186: FLdRfVar var_4EC
  loc_70D189: LitI2_Byte 8
  loc_70D18B: PopTmpLdAd2 var_4FE
  loc_70D18E: LitI4 &H16
  loc_70D193: FLdRfVar var_A8
  loc_70D196: Ary1LdRf
  loc_70D197: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D19C: LitI4 &HE
  loc_70D1A1: FLdRfVar var_A8
  loc_70D1A4: Ary1LdRf
  loc_70D1A5: CVarRef
  loc_70D1AA: FLdRfVar var_C0
  loc_70D1AD: ImpAdCallFPR4  = Trim()
  loc_70D1B2: LitVar_FALSE
  loc_70D1B6: LitVar_TRUE var_F0
  loc_70D1B9: FLdRfVar var_C0
  loc_70D1BC: LitVarStr var_3D0, "2"
  loc_70D1C1: HardType
  loc_70D1C2: EqVar var_D0
  loc_70D1C6: FStVar var_E0
  loc_70D1CA: FLdRfVar var_E0
  loc_70D1CD: FLdRfVar var_110
  loc_70D1D0: ImpAdCallFPR4  = IIf(, , )
  loc_70D1D5: LitStr "BTDtAnu"
  loc_70D1D8: FStStrCopy var_3D4
  loc_70D1DB: FLdRfVar var_3D4
  loc_70D1DE: FLdRfVar var_110
  loc_70D1E1: CBoolVar
  loc_70D1E3: PopTmpLdAd2 var_512
  loc_70D1E6: LitI4 2
  loc_70D1EB: FLdRfVar var_A8
  loc_70D1EE: Ary1LdRf
  loc_70D1EF: FLdFPR8 var_4EC
  loc_70D1F2: PopTmpLdAdFPR8
  loc_70D1F6: FLdFPR8 var_4E4
  loc_70D1F9: PopTmpLdAdFPR8
  loc_70D1FD: LitI4 7
  loc_70D202: FLdRfVar var_A8
  loc_70D205: Ary1LdRf
  loc_70D206: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D20B: FFree1Str var_3D4
  loc_70D20E: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D21B: LitI4 7
  loc_70D220: LitI4 7
  loc_70D225: FLdRfVar var_A8
  loc_70D228: Ary1LdRf
  loc_70D229: CVarRef
  loc_70D22E: FLdRfVar var_C0
  loc_70D231: ImpAdCallFPR4  = Right(, )
  loc_70D236: FLdRfVar var_C0
  loc_70D239: LitVarStr var_3D0, "BTDtAnu"
  loc_70D23E: HardType
  loc_70D23F: EqVarBool
  loc_70D241: FFree1Var var_C0 = ""
  loc_70D244: BranchF loc_70D283
  loc_70D247: LitI4 7
  loc_70D24C: FLdRfVar var_A8
  loc_70D24F: Ary1LdI4
  loc_70D250: FnLenStr
  loc_70D251: LitI4 7
  loc_70D256: SubI4
  loc_70D257: LitI4 7
  loc_70D25C: FLdRfVar var_A8
  loc_70D25F: Ary1LdRf
  loc_70D260: CVarRef
  loc_70D265: FLdRfVar var_C0
  loc_70D268: ImpAdCallFPR4  = Left(, )
  loc_70D26D: FLdRfVar var_C0
  loc_70D270: CStrVarTmp
  loc_70D271: FStStrNoPop var_3D4
  loc_70D274: LitI4 7
  loc_70D279: FLdRfVar var_A8
  loc_70D27C: Ary1StStrCopy
  loc_70D27D: FFree1Str var_3D4
  loc_70D280: FFree1Var var_C0 = ""
  loc_70D283: FLdRfVar var_4E4
  loc_70D286: LitI2_Byte 8
  loc_70D288: PopTmpLdAd2 var_2E6
  loc_70D28B: LitI4 &H10
  loc_70D290: FLdRfVar var_A8
  loc_70D293: Ary1LdRf
  loc_70D294: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D299: FLdRfVar var_4EC
  loc_70D29C: LitI2_Byte 8
  loc_70D29E: PopTmpLdAd2 var_4FE
  loc_70D2A1: LitI4 8
  loc_70D2A6: FLdRfVar var_A8
  loc_70D2A9: Ary1LdRf
  loc_70D2AA: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D2AF: LitI4 &HE
  loc_70D2B4: FLdRfVar var_A8
  loc_70D2B7: Ary1LdRf
  loc_70D2B8: CVarRef
  loc_70D2BD: FLdRfVar var_C0
  loc_70D2C0: ImpAdCallFPR4  = Trim()
  loc_70D2C5: LitVar_FALSE
  loc_70D2C9: LitVar_TRUE var_F0
  loc_70D2CC: FLdRfVar var_C0
  loc_70D2CF: LitVarStr var_3D0, "2"
  loc_70D2D4: HardType
  loc_70D2D5: EqVar var_D0
  loc_70D2D9: FStVar var_E0
  loc_70D2DD: FLdRfVar var_E0
  loc_70D2E0: FLdRfVar var_110
  loc_70D2E3: ImpAdCallFPR4  = IIf(, , )
  loc_70D2E8: LitStr "AnuTD"
  loc_70D2EB: FStStrCopy var_3D4
  loc_70D2EE: FLdRfVar var_3D4
  loc_70D2F1: FLdRfVar var_110
  loc_70D2F4: CBoolVar
  loc_70D2F6: PopTmpLdAd2 var_512
  loc_70D2F9: LitI4 2
  loc_70D2FE: FLdRfVar var_A8
  loc_70D301: Ary1LdRf
  loc_70D302: FLdFPR8 var_4EC
  loc_70D305: PopTmpLdAdFPR8
  loc_70D309: FLdFPR8 var_4E4
  loc_70D30C: PopTmpLdAdFPR8
  loc_70D310: LitI4 7
  loc_70D315: FLdRfVar var_A8
  loc_70D318: Ary1LdRf
  loc_70D319: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D31E: FFree1Str var_3D4
  loc_70D321: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D32E: Branch loc_70D685
  loc_70D331: LitVarI2 var_C0, 3
  loc_70D336: LitI4 1
  loc_70D33B: LitI4 2
  loc_70D340: FLdRfVar var_A8
  loc_70D343: Ary1LdRf
  loc_70D344: CVarRef
  loc_70D349: FLdRfVar var_D0
  loc_70D34C: ImpAdCallFPR4  = Mid(, , )
  loc_70D351: FLdRfVar var_D0
  loc_70D354: LitVarStr var_3E4, "009"
  loc_70D359: HardType
  loc_70D35A: EqVarBool
  loc_70D35C: FFreeVar var_C0 = ""
  loc_70D363: BranchF loc_70D414
  loc_70D366: FLdRfVar var_4E4
  loc_70D369: LitI2_Byte 8
  loc_70D36B: PopTmpLdAd2 var_2E6
  loc_70D36E: LitI4 &H10
  loc_70D373: FLdRfVar var_A8
  loc_70D376: Ary1LdRf
  loc_70D377: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D37C: FLdRfVar var_4EC
  loc_70D37F: LitI2_Byte 8
  loc_70D381: PopTmpLdAd2 var_4FE
  loc_70D384: LitI4 8
  loc_70D389: FLdRfVar var_A8
  loc_70D38C: Ary1LdRf
  loc_70D38D: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D392: LitI4 &HE
  loc_70D397: FLdRfVar var_A8
  loc_70D39A: Ary1LdRf
  loc_70D39B: CVarRef
  loc_70D3A0: FLdRfVar var_C0
  loc_70D3A3: ImpAdCallFPR4  = Trim()
  loc_70D3A8: LitVar_FALSE
  loc_70D3AC: LitVar_TRUE var_F0
  loc_70D3AF: FLdRfVar var_C0
  loc_70D3B2: LitVarStr var_3D0, "2"
  loc_70D3B7: HardType
  loc_70D3B8: EqVar var_D0
  loc_70D3BC: FStVar var_E0
  loc_70D3C0: FLdRfVar var_E0
  loc_70D3C3: FLdRfVar var_110
  loc_70D3C6: ImpAdCallFPR4  = IIf(, , )
  loc_70D3CB: LitStr "Hand"
  loc_70D3CE: FStStrCopy var_3D4
  loc_70D3D1: FLdRfVar var_3D4
  loc_70D3D4: FLdRfVar var_110
  loc_70D3D7: CBoolVar
  loc_70D3D9: PopTmpLdAd2 var_512
  loc_70D3DC: LitI4 2
  loc_70D3E1: FLdRfVar var_A8
  loc_70D3E4: Ary1LdRf
  loc_70D3E5: FLdFPR8 var_4EC
  loc_70D3E8: PopTmpLdAdFPR8
  loc_70D3EC: FLdFPR8 var_4E4
  loc_70D3EF: PopTmpLdAdFPR8
  loc_70D3F3: LitI4 7
  loc_70D3F8: FLdRfVar var_A8
  loc_70D3FB: Ary1LdRf
  loc_70D3FC: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D401: FFree1Str var_3D4
  loc_70D404: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D411: Branch loc_70D685
  loc_70D414: LitVarI2 var_C0, 3
  loc_70D419: LitI4 1
  loc_70D41E: LitI4 2
  loc_70D423: FLdRfVar var_A8
  loc_70D426: Ary1LdRf
  loc_70D427: CVarRef
  loc_70D42C: FLdRfVar var_D0
  loc_70D42F: ImpAdCallFPR4  = Mid(, , )
  loc_70D434: FLdRfVar var_D0
  loc_70D437: LitVarStr var_3E4, "008"
  loc_70D43C: HardType
  loc_70D43D: EqVarBool
  loc_70D43F: FFreeVar var_C0 = ""
  loc_70D446: BranchF loc_70D4F7
  loc_70D449: FLdRfVar var_4E4
  loc_70D44C: LitI2_Byte 8
  loc_70D44E: PopTmpLdAd2 var_2E6
  loc_70D451: LitI4 &H10
  loc_70D456: FLdRfVar var_A8
  loc_70D459: Ary1LdRf
  loc_70D45A: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D45F: FLdRfVar var_4EC
  loc_70D462: LitI2_Byte 8
  loc_70D464: PopTmpLdAd2 var_4FE
  loc_70D467: LitI4 8
  loc_70D46C: FLdRfVar var_A8
  loc_70D46F: Ary1LdRf
  loc_70D470: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D475: LitI4 &HE
  loc_70D47A: FLdRfVar var_A8
  loc_70D47D: Ary1LdRf
  loc_70D47E: CVarRef
  loc_70D483: FLdRfVar var_C0
  loc_70D486: ImpAdCallFPR4  = Trim()
  loc_70D48B: LitVar_FALSE
  loc_70D48F: LitVar_TRUE var_F0
  loc_70D492: FLdRfVar var_C0
  loc_70D495: LitVarStr var_3D0, "2"
  loc_70D49A: HardType
  loc_70D49B: EqVar var_D0
  loc_70D49F: FStVar var_E0
  loc_70D4A3: FLdRfVar var_E0
  loc_70D4A6: FLdRfVar var_110
  loc_70D4A9: ImpAdCallFPR4  = IIf(, , )
  loc_70D4AE: LitStr "Esso"
  loc_70D4B1: FStStrCopy var_3D4
  loc_70D4B4: FLdRfVar var_3D4
  loc_70D4B7: FLdRfVar var_110
  loc_70D4BA: CBoolVar
  loc_70D4BC: PopTmpLdAd2 var_512
  loc_70D4BF: LitI4 2
  loc_70D4C4: FLdRfVar var_A8
  loc_70D4C7: Ary1LdRf
  loc_70D4C8: FLdFPR8 var_4EC
  loc_70D4CB: PopTmpLdAdFPR8
  loc_70D4CF: FLdFPR8 var_4E4
  loc_70D4D2: PopTmpLdAdFPR8
  loc_70D4D6: LitI4 7
  loc_70D4DB: FLdRfVar var_A8
  loc_70D4DE: Ary1LdRf
  loc_70D4DF: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D4E4: FFree1Str var_3D4
  loc_70D4E7: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D4F4: Branch loc_70D685
  loc_70D4F7: LitVarI2 var_C0, 3
  loc_70D4FC: LitI4 1
  loc_70D501: LitI4 2
  loc_70D506: FLdRfVar var_A8
  loc_70D509: Ary1LdRf
  loc_70D50A: CVarRef
  loc_70D50F: FLdRfVar var_D0
  loc_70D512: ImpAdCallFPR4  = Mid(, , )
  loc_70D517: FLdRfVar var_D0
  loc_70D51A: LitVarStr var_3E4, "002"
  loc_70D51F: HardType
  loc_70D520: EqVarBool
  loc_70D522: FFreeVar var_C0 = ""
  loc_70D529: BranchF loc_70D5DA
  loc_70D52C: FLdRfVar var_4E4
  loc_70D52F: LitI2_Byte 8
  loc_70D531: PopTmpLdAd2 var_2E6
  loc_70D534: LitI4 &H10
  loc_70D539: FLdRfVar var_A8
  loc_70D53C: Ary1LdRf
  loc_70D53D: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D542: FLdRfVar var_4EC
  loc_70D545: LitI2_Byte 8
  loc_70D547: PopTmpLdAd2 var_4FE
  loc_70D54A: LitI4 8
  loc_70D54F: FLdRfVar var_A8
  loc_70D552: Ary1LdRf
  loc_70D553: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D558: LitI4 &HE
  loc_70D55D: FLdRfVar var_A8
  loc_70D560: Ary1LdRf
  loc_70D561: CVarRef
  loc_70D566: FLdRfVar var_C0
  loc_70D569: ImpAdCallFPR4  = Trim()
  loc_70D56E: LitVar_FALSE
  loc_70D572: LitVar_TRUE var_F0
  loc_70D575: FLdRfVar var_C0
  loc_70D578: LitVarStr var_3D0, "2"
  loc_70D57D: HardType
  loc_70D57E: EqVar var_D0
  loc_70D582: FStVar var_E0
  loc_70D586: FLdRfVar var_E0
  loc_70D589: FLdRfVar var_110
  loc_70D58C: ImpAdCallFPR4  = IIf(, , )
  loc_70D591: LitStr "C/R"
  loc_70D594: FStStrCopy var_3D4
  loc_70D597: FLdRfVar var_3D4
  loc_70D59A: FLdRfVar var_110
  loc_70D59D: CBoolVar
  loc_70D59F: PopTmpLdAd2 var_512
  loc_70D5A2: LitI4 2
  loc_70D5A7: FLdRfVar var_A8
  loc_70D5AA: Ary1LdRf
  loc_70D5AB: FLdFPR8 var_4EC
  loc_70D5AE: PopTmpLdAdFPR8
  loc_70D5B2: FLdFPR8 var_4E4
  loc_70D5B5: PopTmpLdAdFPR8
  loc_70D5B9: LitI4 7
  loc_70D5BE: FLdRfVar var_A8
  loc_70D5C1: Ary1LdRf
  loc_70D5C2: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D5C7: FFree1Str var_3D4
  loc_70D5CA: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D5D7: Branch loc_70D685
  loc_70D5DA: FLdRfVar var_4E4
  loc_70D5DD: LitI2_Byte 8
  loc_70D5DF: PopTmpLdAd2 var_2E6
  loc_70D5E2: LitI4 &H10
  loc_70D5E7: FLdRfVar var_A8
  loc_70D5EA: Ary1LdRf
  loc_70D5EB: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D5F0: FLdRfVar var_4EC
  loc_70D5F3: LitI2_Byte 8
  loc_70D5F5: PopTmpLdAd2 var_4FE
  loc_70D5F8: LitI4 8
  loc_70D5FD: FLdRfVar var_A8
  loc_70D600: Ary1LdRf
  loc_70D601: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70D606: LitI4 &HE
  loc_70D60B: FLdRfVar var_A8
  loc_70D60E: Ary1LdRf
  loc_70D60F: CVarRef
  loc_70D614: FLdRfVar var_C0
  loc_70D617: ImpAdCallFPR4  = Trim()
  loc_70D61C: LitVar_FALSE
  loc_70D620: LitVar_TRUE var_F0
  loc_70D623: FLdRfVar var_C0
  loc_70D626: LitVarStr var_3D0, "2"
  loc_70D62B: HardType
  loc_70D62C: EqVar var_D0
  loc_70D630: FStVar var_E0
  loc_70D634: FLdRfVar var_E0
  loc_70D637: FLdRfVar var_110
  loc_70D63A: ImpAdCallFPR4  = IIf(, , )
  loc_70D63F: LitStr "Varios"
  loc_70D642: FStStrCopy var_3D4
  loc_70D645: FLdRfVar var_3D4
  loc_70D648: FLdRfVar var_110
  loc_70D64B: CBoolVar
  loc_70D64D: PopTmpLdAd2 var_512
  loc_70D650: LitI4 2
  loc_70D655: FLdRfVar var_A8
  loc_70D658: Ary1LdRf
  loc_70D659: FLdFPR8 var_4EC
  loc_70D65C: PopTmpLdAdFPR8
  loc_70D660: FLdFPR8 var_4E4
  loc_70D663: PopTmpLdAdFPR8
  loc_70D667: LitI4 7
  loc_70D66C: FLdRfVar var_A8
  loc_70D66F: Ary1LdRf
  loc_70D670: from_stack_7v = Proc_100_56_62EB8C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_70D675: FFree1Str var_3D4
  loc_70D678: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_70D685: LitI4 7
  loc_70D68A: FLdRfVar var_A8
  loc_70D68D: Ary1LdI4
  loc_70D68E: FStStrCopy var_518
  loc_70D691: LitI4 7
  loc_70D696: FLdRfVar var_A8
  loc_70D699: Ary1LdI4
  loc_70D69A: FnLenStr
  loc_70D69B: LitI4 5
  loc_70D6A0: GtI4
  loc_70D6A1: BranchF loc_70DA01
  loc_70D6A4: LitI4 5
  loc_70D6A9: LitI4 7
  loc_70D6AE: FLdRfVar var_A8
  loc_70D6B1: Ary1LdRf
  loc_70D6B2: CVarRef
  loc_70D6B7: FLdRfVar var_C0
  loc_70D6BA: ImpAdCallFPR4  = Right(, )
  loc_70D6BF: FLdRfVar var_C0
  loc_70D6C2: LitVarStr var_3D0, "TDesc"
  loc_70D6C7: HardType
  loc_70D6C8: EqVarBool
  loc_70D6CA: FFree1Var var_C0 = ""
  loc_70D6CD: BranchF loc_70D710
  loc_70D6D0: LitI4 7
  loc_70D6D5: FLdRfVar var_A8
  loc_70D6D8: Ary1LdI4
  loc_70D6D9: FnLenStr
  loc_70D6DA: LitI4 5
  loc_70D6DF: SubI4
  loc_70D6E0: CVarI4
  loc_70D6E4: LitI4 1
  loc_70D6E9: LitI4 7
  loc_70D6EE: FLdRfVar var_A8
  loc_70D6F1: Ary1LdRf
  loc_70D6F2: CVarRef
  loc_70D6F7: FLdRfVar var_D0
  loc_70D6FA: ImpAdCallFPR4  = Mid(, , )
  loc_70D6FF: FLdRfVar var_D0
  loc_70D702: CStrVarTmp
  loc_70D703: FStStr var_518
  loc_70D706: FFreeVar var_C0 = ""
  loc_70D70D: Branch loc_70DA01
  loc_70D710: LitI4 5
  loc_70D715: LitI4 7
  loc_70D71A: FLdRfVar var_A8
  loc_70D71D: Ary1LdRf
  loc_70D71E: CVarRef
  loc_70D723: FLdRfVar var_C0
  loc_70D726: ImpAdCallFPR4  = Right(, )
  loc_70D72B: FLdRfVar var_C0
  loc_70D72E: LitVarStr var_3D0, "AEsso"
  loc_70D733: HardType
  loc_70D734: EqVarBool
  loc_70D736: FFree1Var var_C0 = ""
  loc_70D739: BranchF loc_70D77C
  loc_70D73C: LitI4 7
  loc_70D741: FLdRfVar var_A8
  loc_70D744: Ary1LdI4
  loc_70D745: FnLenStr
  loc_70D746: LitI4 5
  loc_70D74B: SubI4
  loc_70D74C: CVarI4
  loc_70D750: LitI4 1
  loc_70D755: LitI4 7
  loc_70D75A: FLdRfVar var_A8
  loc_70D75D: Ary1LdRf
  loc_70D75E: CVarRef
  loc_70D763: FLdRfVar var_D0
  loc_70D766: ImpAdCallFPR4  = Mid(, , )
  loc_70D76B: FLdRfVar var_D0
  loc_70D76E: CStrVarTmp
  loc_70D76F: FStStr var_518
  loc_70D772: FFreeVar var_C0 = ""
  loc_70D779: Branch loc_70DA01
  loc_70D77C: LitI4 5
  loc_70D781: LitI4 7
  loc_70D786: FLdRfVar var_A8
  loc_70D789: Ary1LdRf
  loc_70D78A: CVarRef
  loc_70D78F: FLdRfVar var_C0
  loc_70D792: ImpAdCallFPR4  = Right(, )
  loc_70D797: FLdRfVar var_C0
  loc_70D79A: LitVarStr var_3D0, "AHand"
  loc_70D79F: HardType
  loc_70D7A0: EqVarBool
  loc_70D7A2: FFree1Var var_C0 = ""
  loc_70D7A5: BranchF loc_70D7E8
  loc_70D7A8: LitI4 7
  loc_70D7AD: FLdRfVar var_A8
  loc_70D7B0: Ary1LdI4
  loc_70D7B1: FnLenStr
  loc_70D7B2: LitI4 5
  loc_70D7B7: SubI4
  loc_70D7B8: CVarI4
  loc_70D7BC: LitI4 1
  loc_70D7C1: LitI4 7
  loc_70D7C6: FLdRfVar var_A8
  loc_70D7C9: Ary1LdRf
  loc_70D7CA: CVarRef
  loc_70D7CF: FLdRfVar var_D0
  loc_70D7D2: ImpAdCallFPR4  = Mid(, , )
  loc_70D7D7: FLdRfVar var_D0
  loc_70D7DA: CStrVarTmp
  loc_70D7DB: FStStr var_518
  loc_70D7DE: FFreeVar var_C0 = ""
  loc_70D7E5: Branch loc_70DA01
  loc_70D7E8: LitI4 4
  loc_70D7ED: LitI4 7
  loc_70D7F2: FLdRfVar var_A8
  loc_70D7F5: Ary1LdRf
  loc_70D7F6: CVarRef
  loc_70D7FB: FLdRfVar var_C0
  loc_70D7FE: ImpAdCallFPR4  = Right(, )
  loc_70D803: FLdRfVar var_C0
  loc_70D806: LitVarStr var_3D0, "Hand"
  loc_70D80B: HardType
  loc_70D80C: EqVarBool
  loc_70D80E: FFree1Var var_C0 = ""
  loc_70D811: BranchF loc_70D854
  loc_70D814: LitI4 7
  loc_70D819: FLdRfVar var_A8
  loc_70D81C: Ary1LdI4
  loc_70D81D: FnLenStr
  loc_70D81E: LitI4 4
  loc_70D823: SubI4
  loc_70D824: CVarI4
  loc_70D828: LitI4 1
  loc_70D82D: LitI4 7
  loc_70D832: FLdRfVar var_A8
  loc_70D835: Ary1LdRf
  loc_70D836: CVarRef
  loc_70D83B: FLdRfVar var_D0
  loc_70D83E: ImpAdCallFPR4  = Mid(, , )
  loc_70D843: FLdRfVar var_D0
  loc_70D846: CStrVarTmp
  loc_70D847: FStStr var_518
  loc_70D84A: FFreeVar var_C0 = ""
  loc_70D851: Branch loc_70DA01
  loc_70D854: LitI4 4
  loc_70D859: LitI4 7
  loc_70D85E: FLdRfVar var_A8
  loc_70D861: Ary1LdRf
  loc_70D862: CVarRef
  loc_70D867: FLdRfVar var_C0
  loc_70D86A: ImpAdCallFPR4  = Right(, )
  loc_70D86F: FLdRfVar var_C0
  loc_70D872: LitVarStr var_3D0, "Esso"
  loc_70D877: HardType
  loc_70D878: EqVarBool
  loc_70D87A: FFree1Var var_C0 = ""
  loc_70D87D: BranchF loc_70D8C0
  loc_70D880: LitI4 7
  loc_70D885: FLdRfVar var_A8
  loc_70D888: Ary1LdI4
  loc_70D889: FnLenStr
  loc_70D88A: LitI4 4
  loc_70D88F: SubI4
  loc_70D890: CVarI4
  loc_70D894: LitI4 1
  loc_70D899: LitI4 7
  loc_70D89E: FLdRfVar var_A8
  loc_70D8A1: Ary1LdRf
  loc_70D8A2: CVarRef
  loc_70D8A7: FLdRfVar var_D0
  loc_70D8AA: ImpAdCallFPR4  = Mid(, , )
  loc_70D8AF: FLdRfVar var_D0
  loc_70D8B2: CStrVarTmp
  loc_70D8B3: FStStr var_518
  loc_70D8B6: FFreeVar var_C0 = ""
  loc_70D8BD: Branch loc_70DA01
  loc_70D8C0: LitI4 3
  loc_70D8C5: LitI4 7
  loc_70D8CA: FLdRfVar var_A8
  loc_70D8CD: Ary1LdRf
  loc_70D8CE: CVarRef
  loc_70D8D3: FLdRfVar var_C0
  loc_70D8D6: ImpAdCallFPR4  = Right(, )
  loc_70D8DB: FLdRfVar var_C0
  loc_70D8DE: LitVarStr var_3D0, "C/R"
  loc_70D8E3: HardType
  loc_70D8E4: EqVarBool
  loc_70D8E6: FFree1Var var_C0 = ""
  loc_70D8E9: BranchF loc_70D92C
  loc_70D8EC: LitI4 7
  loc_70D8F1: FLdRfVar var_A8
  loc_70D8F4: Ary1LdI4
  loc_70D8F5: FnLenStr
  loc_70D8F6: LitI4 3
  loc_70D8FB: SubI4
  loc_70D8FC: CVarI4
  loc_70D900: LitI4 1
  loc_70D905: LitI4 7
  loc_70D90A: FLdRfVar var_A8
  loc_70D90D: Ary1LdRf
  loc_70D90E: CVarRef
  loc_70D913: FLdRfVar var_D0
  loc_70D916: ImpAdCallFPR4  = Mid(, , )
  loc_70D91B: FLdRfVar var_D0
  loc_70D91E: CStrVarTmp
  loc_70D91F: FStStr var_518
  loc_70D922: FFreeVar var_C0 = ""
  loc_70D929: Branch loc_70DA01
  loc_70D92C: LitI4 5
  loc_70D931: LitI4 7
  loc_70D936: FLdRfVar var_A8
  loc_70D939: Ary1LdRf
  loc_70D93A: CVarRef
  loc_70D93F: FLdRfVar var_C0
  loc_70D942: ImpAdCallFPR4  = Right(, )
  loc_70D947: FLdRfVar var_C0
  loc_70D94A: LitVarStr var_3D0, "AnuTD"
  loc_70D94F: HardType
  loc_70D950: EqVarBool
  loc_70D952: FFree1Var var_C0 = ""
  loc_70D955: BranchF loc_70D998
  loc_70D958: LitI4 7
  loc_70D95D: FLdRfVar var_A8
  loc_70D960: Ary1LdI4
  loc_70D961: FnLenStr
  loc_70D962: LitI4 5
  loc_70D967: SubI4
  loc_70D968: CVarI4
  loc_70D96C: LitI4 1
  loc_70D971: LitI4 7
  loc_70D976: FLdRfVar var_A8
  loc_70D979: Ary1LdRf
  loc_70D97A: CVarRef
  loc_70D97F: FLdRfVar var_D0
  loc_70D982: ImpAdCallFPR4  = Mid(, , )
  loc_70D987: FLdRfVar var_D0
  loc_70D98A: CStrVarTmp
  loc_70D98B: FStStr var_518
  loc_70D98E: FFreeVar var_C0 = ""
  loc_70D995: Branch loc_70DA01
  loc_70D998: LitI4 7
  loc_70D99D: LitI4 7
  loc_70D9A2: FLdRfVar var_A8
  loc_70D9A5: Ary1LdRf
  loc_70D9A6: CVarRef
  loc_70D9AB: FLdRfVar var_C0
  loc_70D9AE: ImpAdCallFPR4  = Right(, )
  loc_70D9B3: FLdRfVar var_C0
  loc_70D9B6: LitVarStr var_3D0, "BTDtAnu"
  loc_70D9BB: HardType
  loc_70D9BC: EqVarBool
  loc_70D9BE: FFree1Var var_C0 = ""
  loc_70D9C1: BranchF loc_70DA01
  loc_70D9C4: LitI4 7
  loc_70D9C9: FLdRfVar var_A8
  loc_70D9CC: Ary1LdI4
  loc_70D9CD: FnLenStr
  loc_70D9CE: LitI4 7
  loc_70D9D3: SubI4
  loc_70D9D4: CVarI4
  loc_70D9D8: LitI4 1
  loc_70D9DD: LitI4 7
  loc_70D9E2: FLdRfVar var_A8
  loc_70D9E5: Ary1LdRf
  loc_70D9E6: CVarRef
  loc_70D9EB: FLdRfVar var_D0
  loc_70D9EE: ImpAdCallFPR4  = Mid(, , )
  loc_70D9F3: FLdRfVar var_D0
  loc_70D9F6: CStrVarTmp
  loc_70D9F7: FStStr var_518
  loc_70D9FA: FFreeVar var_C0 = ""
  loc_70DA01: LitStr "INSERT INTO RC_OPDIF(cod_reg, cod_op, fecha, hora, fecha_tx, hora_tx, cod_prod_fms, ppu_dif, nro_essocard, cod_autoriz, nro_rut_cliente, on_off_cliente, tipo_tx, tipo_op_mpc, val_tx, fms_vol, total_tx_essocard, cod_tanque, Surtidor, Manguera, Id_Lista, PPU_Desc,PPU_Pos,Id_Trans_Pos) "
  loc_70DA04: FStStrCopy var_90
  loc_70DA07: ILdRf var_90
  loc_70DA0A: LitStr "VALUES ('"
  loc_70DA0D: ConcatStr
  loc_70DA0E: FStStrNoPop var_3D4
  loc_70DA11: LitI4 1
  loc_70DA16: FLdRfVar var_A8
  loc_70DA19: Ary1LdI4
  loc_70DA1A: ConcatStr
  loc_70DA1B: FStStrNoPop var_408
  loc_70DA1E: LitStr "', '"
  loc_70DA21: ConcatStr
  loc_70DA22: FStStrNoPop var_40C
  loc_70DA25: LitI4 2
  loc_70DA2A: FLdRfVar var_A8
  loc_70DA2D: Ary1LdI4
  loc_70DA2E: ConcatStr
  loc_70DA2F: FStStrNoPop var_51C
  loc_70DA32: LitStr "', '"
  loc_70DA35: ConcatStr
  loc_70DA36: FStStrNoPop var_520
  loc_70DA39: LitI4 3
  loc_70DA3E: FLdRfVar var_A8
  loc_70DA41: Ary1LdI4
  loc_70DA42: ConcatStr
  loc_70DA43: FStStrNoPop var_524
  loc_70DA46: LitStr "', '"
  loc_70DA49: ConcatStr
  loc_70DA4A: FStStr var_90
  loc_70DA4D: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = "": var_520 = ""
  loc_70DA5C: ILdRf var_90
  loc_70DA5F: LitI4 4
  loc_70DA64: FLdRfVar var_A8
  loc_70DA67: Ary1LdI4
  loc_70DA68: ConcatStr
  loc_70DA69: FStStrNoPop var_3D4
  loc_70DA6C: LitStr "', '"
  loc_70DA6F: ConcatStr
  loc_70DA70: FStStrNoPop var_408
  loc_70DA73: LitI4 5
  loc_70DA78: FLdRfVar var_A8
  loc_70DA7B: Ary1LdI4
  loc_70DA7C: ConcatStr
  loc_70DA7D: FStStrNoPop var_40C
  loc_70DA80: LitStr "', '"
  loc_70DA83: ConcatStr
  loc_70DA84: FStStrNoPop var_51C
  loc_70DA87: LitI4 6
  loc_70DA8C: FLdRfVar var_A8
  loc_70DA8F: Ary1LdI4
  loc_70DA90: ConcatStr
  loc_70DA91: FStStrNoPop var_520
  loc_70DA94: LitStr "', '"
  loc_70DA97: ConcatStr
  loc_70DA98: FStStr var_90
  loc_70DA9B: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = ""
  loc_70DAA8: ILdRf var_90
  loc_70DAAB: ILdRf var_518
  loc_70DAAE: ConcatStr
  loc_70DAAF: FStStrNoPop var_3D4
  loc_70DAB2: LitStr "', "
  loc_70DAB5: ConcatStr
  loc_70DAB6: FStStrNoPop var_408
  loc_70DAB9: FLdRfVar var_4E4
  loc_70DABC: LitI2_Byte 8
  loc_70DABE: PopTmpLdAd2 var_2E6
  loc_70DAC1: LitI4 8
  loc_70DAC6: FLdRfVar var_A8
  loc_70DAC9: Ary1LdRf
  loc_70DACA: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70DACF: FLdFPR8 var_4E4
  loc_70DAD2: CStrR8
  loc_70DAD4: FStStrNoPop var_40C
  loc_70DAD7: ConcatStr
  loc_70DAD8: FStStrNoPop var_51C
  loc_70DADB: LitStr ", '"
  loc_70DADE: ConcatStr
  loc_70DADF: FStStrNoPop var_520
  loc_70DAE2: LitI4 9
  loc_70DAE7: FLdRfVar var_A8
  loc_70DAEA: Ary1LdI4
  loc_70DAEB: ConcatStr
  loc_70DAEC: FStStrNoPop var_524
  loc_70DAEF: LitStr "', '"
  loc_70DAF2: ConcatStr
  loc_70DAF3: FStStr var_90
  loc_70DAF6: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = "": var_520 = ""
  loc_70DB05: ILdRf var_90
  loc_70DB08: LitI4 &HA
  loc_70DB0D: FLdRfVar var_A8
  loc_70DB10: Ary1LdI4
  loc_70DB11: ConcatStr
  loc_70DB12: FStStrNoPop var_3D4
  loc_70DB15: LitStr "', '"
  loc_70DB18: ConcatStr
  loc_70DB19: FStStrNoPop var_408
  loc_70DB1C: LitI4 &HB
  loc_70DB21: FLdRfVar var_A8
  loc_70DB24: Ary1LdI4
  loc_70DB25: ConcatStr
  loc_70DB26: FStStrNoPop var_40C
  loc_70DB29: LitStr "', "
  loc_70DB2C: ConcatStr
  loc_70DB2D: FStStrNoPop var_51C
  loc_70DB30: LitI4 &HC
  loc_70DB35: FLdRfVar var_A8
  loc_70DB38: Ary1LdI4
  loc_70DB39: ConcatStr
  loc_70DB3A: FStStrNoPop var_520
  loc_70DB3D: LitStr ", "
  loc_70DB40: ConcatStr
  loc_70DB41: FStStrNoPop var_524
  loc_70DB44: LitI4 &HD
  loc_70DB49: FLdRfVar var_A8
  loc_70DB4C: Ary1LdI4
  loc_70DB4D: ConcatStr
  loc_70DB4E: FStStrNoPop var_528
  loc_70DB51: LitStr ", "
  loc_70DB54: ConcatStr
  loc_70DB55: FStStr var_90
  loc_70DB58: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = "": var_520 = "": var_524 = ""
  loc_70DB69: ILdRf var_90
  loc_70DB6C: LitI4 &HE
  loc_70DB71: FLdRfVar var_A8
  loc_70DB74: Ary1LdI4
  loc_70DB75: ConcatStr
  loc_70DB76: FStStrNoPop var_3D4
  loc_70DB79: LitStr ", "
  loc_70DB7C: ConcatStr
  loc_70DB7D: FStStrNoPop var_408
  loc_70DB80: LitI4 &HF
  loc_70DB85: FLdRfVar var_A8
  loc_70DB88: Ary1LdI4
  loc_70DB89: ConcatStr
  loc_70DB8A: FStStrNoPop var_40C
  loc_70DB8D: LitStr ", "
  loc_70DB90: ConcatStr
  loc_70DB91: FStStrNoPop var_51C
  loc_70DB94: FLdRfVar var_4E4
  loc_70DB97: LitI2_Byte 8
  loc_70DB99: PopTmpLdAd2 var_2E6
  loc_70DB9C: LitI4 &H10
  loc_70DBA1: FLdRfVar var_A8
  loc_70DBA4: Ary1LdRf
  loc_70DBA5: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70DBAA: FLdFPR8 var_4E4
  loc_70DBAD: CStrR8
  loc_70DBAF: FStStrNoPop var_520
  loc_70DBB2: ConcatStr
  loc_70DBB3: FStStrNoPop var_524
  loc_70DBB6: LitStr ", "
  loc_70DBB9: ConcatStr
  loc_70DBBA: FStStr var_90
  loc_70DBBD: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = "": var_520 = ""
  loc_70DBCC: ILdRf var_90
  loc_70DBCF: FLdRfVar var_4E4
  loc_70DBD2: LitI2_Byte 8
  loc_70DBD4: PopTmpLdAd2 var_2E6
  loc_70DBD7: LitI4 &H11
  loc_70DBDC: FLdRfVar var_A8
  loc_70DBDF: Ary1LdRf
  loc_70DBE0: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70DBE5: FLdFPR8 var_4E4
  loc_70DBE8: CStrR8
  loc_70DBEA: FStStrNoPop var_3D4
  loc_70DBED: ConcatStr
  loc_70DBEE: FStStrNoPop var_408
  loc_70DBF1: LitStr ", "
  loc_70DBF4: ConcatStr
  loc_70DBF5: FStStrNoPop var_40C
  loc_70DBF8: LitI4 &H12
  loc_70DBFD: FLdRfVar var_A8
  loc_70DC00: Ary1LdI4
  loc_70DC01: ConcatStr
  loc_70DC02: FStStrNoPop var_51C
  loc_70DC05: LitStr ", "
  loc_70DC08: ConcatStr
  loc_70DC09: FStStrNoPop var_520
  loc_70DC0C: LitI4 &H13
  loc_70DC11: FLdRfVar var_A8
  loc_70DC14: Ary1LdI4
  loc_70DC15: ConcatStr
  loc_70DC16: FStStrNoPop var_524
  loc_70DC19: LitStr ",'"
  loc_70DC1C: ConcatStr
  loc_70DC1D: FStStrNoPop var_528
  loc_70DC20: LitI4 &H14
  loc_70DC25: FLdRfVar var_A8
  loc_70DC28: Ary1LdI4
  loc_70DC29: ConcatStr
  loc_70DC2A: FStStrNoPop var_52C
  loc_70DC2D: LitStr "', "
  loc_70DC30: ConcatStr
  loc_70DC31: FStStrNoPop var_530
  loc_70DC34: LitI4 &H15
  loc_70DC39: FLdRfVar var_A8
  loc_70DC3C: Ary1LdI4
  loc_70DC3D: ConcatStr
  loc_70DC3E: FStStrNoPop var_534
  loc_70DC41: LitStr ", "
  loc_70DC44: ConcatStr
  loc_70DC45: FStStrNoPop var_538
  loc_70DC48: FLdRfVar var_4EC
  loc_70DC4B: LitI2_Byte 8
  loc_70DC4D: PopTmpLdAd2 var_4FE
  loc_70DC50: LitI4 &H16
  loc_70DC55: FLdRfVar var_A8
  loc_70DC58: Ary1LdRf
  loc_70DC59: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70DC5E: FLdFPR8 var_4EC
  loc_70DC61: CStrR8
  loc_70DC63: FStStrNoPop var_53C
  loc_70DC66: ConcatStr
  loc_70DC67: FStStrNoPop var_540
  loc_70DC6A: LitStr ", "
  loc_70DC6D: ConcatStr
  loc_70DC6E: FStStrNoPop var_544
  loc_70DC71: FLdRfVar var_508
  loc_70DC74: LitI2_Byte 8
  loc_70DC76: PopTmpLdAd2 var_512
  loc_70DC79: LitI4 &H17
  loc_70DC7E: FLdRfVar var_A8
  loc_70DC81: Ary1LdRf
  loc_70DC82: from_stack_3v = Proc_100_49_5EA134(from_stack_1v, from_stack_2v)
  loc_70DC87: FLdFPR8 var_508
  loc_70DC8A: CStrR8
  loc_70DC8C: FStStrNoPop var_548
  loc_70DC8F: ConcatStr
  loc_70DC90: FStStrNoPop var_54C
  loc_70DC93: LitStr ", '"
  loc_70DC96: ConcatStr
  loc_70DC97: FStStrNoPop var_550
  loc_70DC9A: LitI4 &H18
  loc_70DC9F: FLdRfVar var_A8
  loc_70DCA2: Ary1LdI4
  loc_70DCA3: ConcatStr
  loc_70DCA4: FStStrNoPop var_554
  loc_70DCA7: LitStr "' )"
  loc_70DCAA: ConcatStr
  loc_70DCAB: FStStr var_90
  loc_70DCAE: FFreeStr var_3D4 = "": var_408 = "": var_40C = "": var_51C = "": var_520 = "": var_524 = "": var_528 = "": var_52C = "": var_530 = "": var_534 = "": var_538 = "": var_53C = "": var_540 = "": var_544 = "": var_548 = "": var_54C = "": var_550 = ""
  loc_70DCD5: FLdRfVar var_2E6
  loc_70DCD8: FLdRfVar var_90
  loc_70DCDB: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_70DCE0: FLdI2 var_2E6
  loc_70DCE3: NotI4
  loc_70DCE4: BranchF loc_70DCEC
  loc_70DCE7: LitI2_Byte 0
  loc_70DCE9: FStI2 var_86
  loc_70DCEC: ExitProcCbHresult
End Function

Public Function PorcesarDatosEventos(sEventos) '631988
  'Data Table: 440CF4
  loc_631820: LitI2_Byte &HFF
  loc_631822: FStI2 var_86
  loc_631825: LitI4 4
  loc_63182A: FLdRfVar var_B8
  loc_63182D: ImpAdCallFPR4  = Chr()
  loc_631832: FLdRfVar var_B8
  loc_631835: LitI4 6
  loc_63183A: FLdRfVar var_C8
  loc_63183D: ImpAdCallFPR4  = Chr()
  loc_631842: FLdRfVar var_C8
  loc_631845: ConcatVar var_D8
  loc_631849: LitI4 8
  loc_63184E: FLdRfVar var_E8
  loc_631851: ImpAdCallFPR4  = Chr()
  loc_631856: FLdRfVar var_E8
  loc_631859: ConcatVar var_F8
  loc_63185D: LitI4 6
  loc_631862: FLdRfVar var_108
  loc_631865: ImpAdCallFPR4  = Chr()
  loc_63186A: FLdRfVar var_108
  loc_63186D: ConcatVar var_118
  loc_631871: LitI4 &H96
  loc_631876: FLdRfVar var_128
  loc_631879: ImpAdCallFPR4  = Chr()
  loc_63187E: FLdRfVar var_128
  loc_631881: ConcatVar var_138
  loc_631885: CStrVarTmp
  loc_631886: FStStr var_8C
  loc_631889: FFreeVar var_B8 = "": var_C8 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = ""
  loc_63189E: LitI2_Byte 5
  loc_6318A0: PopTmpLdAd2 var_13E
  loc_6318A3: FLdRfVar var_8C
  loc_6318A6: FLdRfVar var_A8
  loc_6318A9: PopTmpLdAdStr var_13C
  loc_6318AC: ILdRf sEventos
  loc_6318AF: ImpAdCallFPR4 Proc_87_24_61B1C0(, , , )
  loc_6318B4: LitI4 5
  loc_6318B9: FLdRfVar var_A8
  loc_6318BC: Ary1LdRf
  loc_6318BD: CVarRef
  loc_6318C2: FLdRfVar var_B8
  loc_6318C5: ImpAdCallFPR4  = Trim()
  loc_6318CA: FLdRfVar var_B8
  loc_6318CD: CStrVarTmp
  loc_6318CE: FStStrNoPop var_154
  loc_6318D1: LitI4 5
  loc_6318D6: FLdRfVar var_A8
  loc_6318D9: Ary1StStrCopy
  loc_6318DA: FFree1Str var_154
  loc_6318DD: FFree1Var var_B8 = ""
  loc_6318E0: LitStr "INSERT INTO RC_EVENTOS (cod_reg, codevent, fecha, hora, descr)"
  loc_6318E3: FStStrCopy var_90
  loc_6318E6: ILdRf var_90
  loc_6318E9: LitStr " VALUES ('"
  loc_6318EC: ConcatStr
  loc_6318ED: FStStrNoPop var_154
  loc_6318F0: LitI4 1
  loc_6318F5: FLdRfVar var_A8
  loc_6318F8: Ary1LdI4
  loc_6318F9: ConcatStr
  loc_6318FA: FStStrNoPop var_158
  loc_6318FD: LitStr "', "
  loc_631900: ConcatStr
  loc_631901: FStStrNoPop var_15C
  loc_631904: LitI4 2
  loc_631909: FLdRfVar var_A8
  loc_63190C: Ary1LdI4
  loc_63190D: ConcatStr
  loc_63190E: FStStrNoPop var_160
  loc_631911: LitStr ", '"
  loc_631914: ConcatStr
  loc_631915: FStStrNoPop var_164
  loc_631918: LitI4 3
  loc_63191D: FLdRfVar var_A8
  loc_631920: Ary1LdI4
  loc_631921: ConcatStr
  loc_631922: FStStrNoPop var_168
  loc_631925: LitStr "', '"
  loc_631928: ConcatStr
  loc_631929: FStStrNoPop var_16C
  loc_63192C: LitI4 4
  loc_631931: FLdRfVar var_A8
  loc_631934: Ary1LdI4
  loc_631935: ConcatStr
  loc_631936: FStStrNoPop var_170
  loc_631939: LitStr "', '"
  loc_63193C: ConcatStr
  loc_63193D: FStStrNoPop var_174
  loc_631940: LitI4 5
  loc_631945: FLdRfVar var_A8
  loc_631948: Ary1LdI4
  loc_631949: ConcatStr
  loc_63194A: FStStrNoPop var_178
  loc_63194D: LitStr "')"
  loc_631950: ConcatStr
  loc_631951: FStStr var_90
  loc_631954: FFreeStr var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_63196B: FLdRfVar var_13E
  loc_63196E: FLdRfVar var_90
  loc_631971: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_631976: FLdI2 var_13E
  loc_631979: NotI4
  loc_63197A: BranchF loc_631982
  loc_63197D: LitI2_Byte 0
  loc_63197F: FStI2 var_86
  loc_631982: ExitProcCbHresult
End Function

Public Function AbrirBD(sValor) '60E700
  'Data Table: 440CF4
  loc_60E614: OnErrorGoto loc_60E680
  loc_60E617: LitI2_Byte &HFF
  loc_60E619: FStI2 var_86
  loc_60E61C: FLdRfVar var_A4
  loc_60E61F: FLdRfVar var_A0
  loc_60E622: ImpAdLdRf MemVar_7520D4
  loc_60E625: NewIfNullPr Global
  loc_60E628:  = Global.App
  loc_60E62D: FLdPr var_A0
  loc_60E630:  = App.Path
  loc_60E635: ILdRf var_A4
  loc_60E638: ILdI4 sValor
  loc_60E63B: ConcatStr
  loc_60E63C: CVarStr var_B4
  loc_60E63F: FStVar var_98
  loc_60E643: FFree1Str var_A4
  loc_60E646: FFree1Ad var_A0
  loc_60E649: FLdRfVar var_A0
  loc_60E64C: LitVar_Missing var_E4
  loc_60E64F: PopAdLdVar
  loc_60E650: LitVar_Missing var_D4
  loc_60E653: PopAdLdVar
  loc_60E654: LitVar_Missing var_C4
  loc_60E657: PopAdLdVar
  loc_60E658: FLdRfVar var_98
  loc_60E65B: CStrVarVal var_A4
  loc_60E65F: ImpAdLdRf MemVar_752164
  loc_60E662: NewIfNullPr Me
  loc_60E665: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_60E66A: ILdRf var_A0
  loc_60E66D: FLdPr Me
  loc_60E670: MemStAd
  loc_60E674: FFree1Str var_A4
  loc_60E677: FFree1Ad var_A0
  loc_60E67A: ExitProcCbHresult
  loc_60E680: LitI2_Byte 0
  loc_60E682: FStI2 var_86
  loc_60E685: LitVarStr var_C4, "Error al abrir base de datos: "
  loc_60E68A: FLdRfVar var_98
  loc_60E68D: AddVar var_B4
  loc_60E691: LitI4 &HD
  loc_60E696: FLdRfVar var_F4
  loc_60E699: ImpAdCallFPR4  = Chr()
  loc_60E69E: FLdRfVar var_F4
  loc_60E6A1: AddVar var_104
  loc_60E6A5: FLdRfVar var_A4
  loc_60E6A8: ImpAdCallI2 Err 'rtcErrObj
  loc_60E6AD: FStAdFunc var_A0
  loc_60E6B0: FLdPr var_A0
  loc_60E6B3:  = Err.Description
  loc_60E6B8: FLdZeroAd var_A4
  loc_60E6BB: CVarStr var_114
  loc_60E6BE: AddVar var_124
  loc_60E6C2: CStrVarTmp
  loc_60E6C3: FStStr var_9C
  loc_60E6C6: FFree1Ad var_A0
  loc_60E6C9: FFreeVar var_B4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_60E6D6: LitVar_Missing var_104
  loc_60E6D9: LitVar_Missing var_F4
  loc_60E6DC: LitVar_Missing var_B4
  loc_60E6DF: LitI4 &H10
  loc_60E6E4: FLdRfVar var_9C
  loc_60E6E7: CVarRef
  loc_60E6EC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60E6F1: FFreeVar var_B4 = "": var_F4 = ""
  loc_60E6FA: ExitProcCbHresult
End Function

Public Function BorrarBD(sValor) '637A60
  'Data Table: 440CF4
  loc_63789C: OnErrorGoto loc_6378D6
  loc_63789F: LitI2_Byte &HFF
  loc_6378A1: FStI2 var_86
  loc_6378A4: LitStr "delete * from "
  loc_6378A7: ILdI4 sValor
  loc_6378AA: ConcatStr
  loc_6378AB: CVarStr var_AC
  loc_6378AE: FStVar var_98
  loc_6378B2: LitVarI4
  loc_6378BA: PopAdLdVar
  loc_6378BB: FLdRfVar var_98
  loc_6378BE: CStrVarVal var_B0
  loc_6378C2: FLdPr Me
  loc_6378C5: MemLdPr DBase
  loc_6378C8: Me.Execute from_stack_1, from_stack_2
  loc_6378CD: FFree1Str var_B0
  loc_6378D0: ExitProcCbHresult
  loc_6378D6: LitI2_Byte 0
  loc_6378D8: FStI2 var_86
  loc_6378DB: FLdRfVar var_C8
  loc_6378DE: ImpAdCallI2 Err 'rtcErrObj
  loc_6378E3: FStAdFunc var_C4
  loc_6378E6: FLdPr var_C4
  loc_6378E9:  = Err.Number
  loc_6378EE: ILdRf var_C8
  loc_6378F1: LitI4 &HC0E
  loc_6378F6: EqI4
  loc_6378F7: FFree1Ad var_C4
  loc_6378FA: BranchF loc_637980
  loc_6378FD: FLdRfVar var_1F0
  loc_637900: LitVar_Missing var_1EC
  loc_637903: LitVar_Missing var_1CC
  loc_637906: LitVar_Missing var_1AC
  loc_637909: LitVar_Missing var_18C
  loc_63790C: LitVar_Missing var_16C
  loc_63790F: LitVar_Missing var_14C
  loc_637912: LitVar_Missing var_12C
  loc_637915: LitVar_Missing var_10C
  loc_637918: LitVar_Missing var_EC
  loc_63791B: LitVar_Missing var_AC
  loc_63791E: LitStr "Los archivos de impresión estan siendo utilizados. Reintente por favor"
  loc_637921: FStStrCopy var_B0
  loc_637924: FLdRfVar var_B0
  loc_637927: LitI4 &H32
  loc_63792C: PopTmpLdAdStr var_C8
  loc_63792F: LitI2_Byte &H1D
  loc_637931: PopTmpLdAd2 var_CA
  loc_637934: ImpAdLdRf MemVar_74C7D0
  loc_637937: NewIfNullPr clsMsg
  loc_63793A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_63793F: LitVar_Missing var_250
  loc_637942: LitVar_Missing var_230
  loc_637945: ImpAdLdRf MemVar_74BF24
  loc_637948: CVarRef
  loc_63794D: LitI4 &H40
  loc_637952: FLdZeroAd var_1F0
  loc_637955: CVarStr var_200
  loc_637958: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63795D: FFree1Str var_B0
  loc_637960: FFreeVar var_AC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_200 = "": var_230 = ""
  loc_63797D: Branch loc_637A5A
  loc_637980: FLdRfVar var_1F0
  loc_637983: LitVar_Missing var_1EC
  loc_637986: LitVar_Missing var_1CC
  loc_637989: LitVar_Missing var_1AC
  loc_63798C: LitVar_Missing var_18C
  loc_63798F: LitVar_Missing var_16C
  loc_637992: LitVar_Missing var_14C
  loc_637995: LitVar_Missing var_12C
  loc_637998: LitVar_Missing var_10C
  loc_63799B: LitVar_Missing var_EC
  loc_63799E: LitVar_Missing var_AC
  loc_6379A1: LitStr "Error al borrar la tabla:"
  loc_6379A4: FStStrCopy var_B0
  loc_6379A7: FLdRfVar var_B0
  loc_6379AA: LitI4 &H33
  loc_6379AF: PopTmpLdAdStr var_C8
  loc_6379B2: LitI2_Byte &H1D
  loc_6379B4: PopTmpLdAd2 var_CA
  loc_6379B7: ImpAdLdRf MemVar_74C7D0
  loc_6379BA: NewIfNullPr clsMsg
  loc_6379BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6379C2: FLdZeroAd var_1F0
  loc_6379C5: CVarStr var_284
  loc_6379C8: LitStr " "
  loc_6379CB: ILdI4 sValor
  loc_6379CE: ConcatStr
  loc_6379CF: CVarStr var_230
  loc_6379D2: LitI4 &HD
  loc_6379D7: FLdRfVar var_200
  loc_6379DA: ImpAdCallFPR4  = Chr()
  loc_6379DF: FLdRfVar var_200
  loc_6379E2: AddVar var_250
  loc_6379E6: FLdRfVar var_254
  loc_6379E9: ImpAdCallI2 Err 'rtcErrObj
  loc_6379EE: FStAdFunc var_C4
  loc_6379F1: FLdPr var_C4
  loc_6379F4:  = Err.Description
  loc_6379F9: FLdZeroAd var_254
  loc_6379FC: CVarStr var_264
  loc_6379FF: AddVar var_274
  loc_637A03: ConcatVar var_294
  loc_637A07: CStrVarTmp
  loc_637A08: FStStr var_9C
  loc_637A0B: FFree1Str var_B0
  loc_637A0E: FFree1Ad var_C4
  loc_637A11: FFreeVar var_AC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_230 = "": var_200 = "": var_250 = "": var_264 = "": var_284 = "": var_274 = ""
  loc_637A36: LitVar_Missing var_10C
  loc_637A39: LitVar_Missing var_EC
  loc_637A3C: LitVar_Missing var_AC
  loc_637A3F: LitI4 &H10
  loc_637A44: FLdRfVar var_9C
  loc_637A47: CVarRef
  loc_637A4C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_637A51: FFreeVar var_AC = "": var_EC = ""
  loc_637A5A: ExitProcCbHresult
End Function

Public Function CerrarBD() '617DC4
  'Data Table: 440CF4
  loc_617CD8: OnErrorGoto loc_617CF1
  loc_617CDB: LitI2_Byte &HFF
  loc_617CDD: FStI2 var_86
  loc_617CE0: FLdPr Me
  loc_617CE3: MemLdPr DBase
  loc_617CE6: Me.Close
  loc_617CEB: ExitProcCbHresult
  loc_617CF1: LitI2_Byte 0
  loc_617CF3: FStI2 var_86
  loc_617CF6: FLdRfVar var_1DC
  loc_617CF9: LitVar_Missing var_1D8
  loc_617CFC: LitVar_Missing var_1B8
  loc_617CFF: LitVar_Missing var_198
  loc_617D02: LitVar_Missing var_178
  loc_617D05: LitVar_Missing var_158
  loc_617D08: LitVar_Missing var_138
  loc_617D0B: LitVar_Missing var_118
  loc_617D0E: LitVar_Missing var_F8
  loc_617D11: LitVar_Missing var_D8
  loc_617D14: LitVar_Missing var_B8
  loc_617D17: LitStr "Error al cerrar la base de datos"
  loc_617D1A: FStStrCopy var_98
  loc_617D1D: FLdRfVar var_98
  loc_617D20: LitI4 &H34
  loc_617D25: PopTmpLdAdStr CerrarBD
  loc_617D28: LitI2_Byte &H1D
  loc_617D2A: PopTmpLdAd2 var_8E
  loc_617D2D: ImpAdLdRf MemVar_74C7D0
  loc_617D30: NewIfNullPr clsMsg
  loc_617D33: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_617D38: FLdZeroAd var_1DC
  loc_617D3B: CVarStr var_1FC
  loc_617D3E: LitI4 &HD
  loc_617D43: FLdRfVar var_1EC
  loc_617D46: ImpAdCallFPR4  = Chr()
  loc_617D4B: FLdRfVar var_1EC
  loc_617D4E: AddVar var_20C
  loc_617D52: FLdRfVar var_214
  loc_617D55: ImpAdCallI2 Err 'rtcErrObj
  loc_617D5A: FStAdFunc var_210
  loc_617D5D: FLdPr var_210
  loc_617D60:  = Err.Description
  loc_617D65: FLdZeroAd var_214
  loc_617D68: CVarStr var_224
  loc_617D6B: AddVar var_234
  loc_617D6F: CStrVarTmp
  loc_617D70: FStStr var_8C
  loc_617D73: FFree1Str var_98
  loc_617D76: FFree1Ad var_210
  loc_617D79: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1FC = "": var_1EC = "": var_20C = "": var_224 = ""
  loc_617D9A: LitVar_Missing var_F8
  loc_617D9D: LitVar_Missing var_D8
  loc_617DA0: LitVar_Missing var_B8
  loc_617DA3: LitI4 &H10
  loc_617DA8: FLdRfVar var_8C
  loc_617DAB: CVarRef
  loc_617DB0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_617DB5: FFreeVar var_B8 = "": var_D8 = ""
  loc_617DBE: ExitProcCbHresult
End Function

Public Function CargarMotivosCierre() '60AED4
  'Data Table: 440CF4
  loc_60ADF0: ZeroRetValVar
  loc_60ADF2: FLdRfVar var_A2
  loc_60ADF5: FLdRfVar var_9C
  loc_60ADF8: LitStr "X"
  loc_60ADFB: FLdRfVar var_A0
  loc_60ADFE: ImpAdLdRf MemVar_74C760
  loc_60AE01: NewIfNullPr Formx
  loc_60AE04: from_stack_1v = Formx.global_4589716Get()
  loc_60AE09: FLdPr var_A0
  loc_60AE0C: Call 0.Method_arg_310 ()
  loc_60AE11: FLdI2 var_A2
  loc_60AE14: NotI4
  loc_60AE15: FFree1Ad var_A0
  loc_60AE18: BranchF loc_60AE4C
  loc_60AE1B: FLdRfVar var_B4
  loc_60AE1E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_60AE23: FLdRfVar var_B4
  loc_60AE26: CBoolVarNull
  loc_60AE28: FFree1Var var_B4 = ""
  loc_60AE2B: BranchF loc_60AE49
  loc_60AE2E: ILdRf Me
  loc_60AE31: FStAdNoPop
  loc_60AE35: ImpAdLdRf MemVar_7520D4
  loc_60AE38: NewIfNullPr Global
  loc_60AE3B: Global.Unload from_stack_1
  loc_60AE40: FFree1Ad var_A0
  loc_60AE43: ExitProcCbHresult
  loc_60AE49: Branch loc_60ADF2
  loc_60AE4C: LitI2_Byte 1
  loc_60AE4E: FStI2 var_96
  loc_60AE51: LitI2_Byte 1
  loc_60AE53: FStI2 var_98
  loc_60AE56: LitVarI2 var_B4, 1
  loc_60AE5B: FLdI2 var_96
  loc_60AE5E: CI4UI1
  loc_60AE5F: FLdRfVar var_9C
  loc_60AE62: CVarRef
  loc_60AE67: FLdRfVar var_E4
  loc_60AE6A: ImpAdCallFPR4  = Mid(, , )
  loc_60AE6F: FLdRfVar var_E4
  loc_60AE72: LitVarStr var_F4, "|"
  loc_60AE77: HardType
  loc_60AE78: NeVarBool
  loc_60AE7A: FFreeVar var_B4 = ""
  loc_60AE81: BranchF loc_60AECE
  loc_60AE84: LitVarI2 var_B4, 55
  loc_60AE89: FLdI2 var_96
  loc_60AE8C: CI4UI1
  loc_60AE8D: FLdRfVar var_9C
  loc_60AE90: CVarRef
  loc_60AE95: FLdRfVar var_E4
  loc_60AE98: ImpAdCallFPR4  = Mid(, , )
  loc_60AE9D: FLdRfVar var_E4
  loc_60AEA0: CStrVarTmp
  loc_60AEA1: FStStrNoPop var_108
  loc_60AEA4: FLdI2 var_98
  loc_60AEA7: CI4UI1
  loc_60AEA8: ImpAdLdRf MemVar_74A224
  loc_60AEAB: Ary1StStrCopy
  loc_60AEAC: FFree1Str var_108
  loc_60AEAF: FFreeVar var_B4 = ""
  loc_60AEB6: FLdI2 var_96
  loc_60AEB9: LitI2_Byte 5
  loc_60AEBB: AddI2
  loc_60AEBC: LitI2_Byte &H32
  loc_60AEBE: AddI2
  loc_60AEBF: FStI2 var_96
  loc_60AEC2: FLdI2 var_98
  loc_60AEC5: LitI2_Byte 1
  loc_60AEC7: AddI2
  loc_60AEC8: FStI2 var_98
  loc_60AECB: Branch loc_60AE56
  loc_60AECE: ExitProcCbHresult
End Function

Public Sub InicializarVariables() '5D68C4
  'Data Table: 440CF4
  loc_5D6898: LitI2_Byte &HFF
  loc_5D689A: FLdPr Me
  loc_5D689D: MemStI2 global_180
  loc_5D68A0: LitI4 0
  loc_5D68A5: LitI4 0
  loc_5D68AA: FLdPr Me
  loc_5D68AD: MemLdRfVar from_stack_1.global_176
  loc_5D68B0: Redim
  loc_5D68BA: LitI2_Byte 1
  loc_5D68BC: FLdPr Me
  loc_5D68BF: MemStI2 global_172
  loc_5D68C2: ExitProcHresult
End Sub

Private Function Proc_100_46_5D2180() '5D2180
  'Data Table: 440CF4
  loc_5D2168: ILdRf Me
  loc_5D216B: FStAdNoPop
  loc_5D216F: ImpAdLdRf MemVar_7520D4
  loc_5D2172: NewIfNullPr Global
  loc_5D2175: Global.Unload from_stack_1
  loc_5D217A: FFree1Ad var_88
  loc_5D217D: ExitProcHresult
End Function

Private Function Proc_100_47_694DD0() '694DD0
  'Data Table: 440CF4
  loc_6947B0: ZeroRetValVar
  loc_6947B2: LitVar_TRUE var_C4
  loc_6947B5: FStVar var_94
  loc_6947B9: FLdPr Me
  loc_6947BC: MemLdStr global_88
  loc_6947BF: FLdPr Me
  loc_6947C2: MemLdStr global_84
  loc_6947C5: ConcatStr
  loc_6947C6: FStStr var_9C
  loc_6947C9: FLdPr Me
  loc_6947CC: MemLdStr TipoReporte
  loc_6947CF: LitStr "G"
  loc_6947D2: EqStr
  loc_6947D4: BranchF loc_694840
  loc_6947D7: FLdRfVar var_CE
  loc_6947DA: FLdRfVar var_98
  loc_6947DD: FLdRfVar var_9C
  loc_6947E0: LitStr "T"
  loc_6947E3: FStStrCopy var_CC
  loc_6947E6: FLdRfVar var_CC
  loc_6947E9: FLdRfVar var_C8
  loc_6947EC: ImpAdLdRf MemVar_74C760
  loc_6947EF: NewIfNullPr Formx
  loc_6947F2: from_stack_1v = Formx.global_4589716Get()
  loc_6947F7: FLdPr var_C8
  loc_6947FA: Formx.FontSize = from_stack_1s
  loc_6947FF: FLdI2 var_CE
  loc_694802: NotI4
  loc_694803: FFree1Str var_CC
  loc_694806: FFree1Ad var_C8
  loc_694809: BranchF loc_69483D
  loc_69480C: FLdRfVar var_E0
  loc_69480F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694814: FLdRfVar var_E0
  loc_694817: CBoolVarNull
  loc_694819: FFree1Var var_E0 = ""
  loc_69481C: BranchF loc_69483A
  loc_69481F: ILdRf Me
  loc_694822: FStAdNoPop
  loc_694826: ImpAdLdRf MemVar_7520D4
  loc_694829: NewIfNullPr Global
  loc_69482C: Global.Unload from_stack_1
  loc_694831: FFree1Ad var_C8
  loc_694834: ExitProcCbHresult
  loc_69483A: Branch loc_6947D7
  loc_69483D: Branch loc_6948A0
  loc_694840: FLdRfVar var_CE
  loc_694843: FLdRfVar var_98
  loc_694846: FLdRfVar var_9C
  loc_694849: FLdPr Me
  loc_69484C: MemLdRfVar from_stack_1.TipoReporte
  loc_69484F: FLdRfVar var_C8
  loc_694852: ImpAdLdRf MemVar_74C760
  loc_694855: NewIfNullPr Formx
  loc_694858: from_stack_1v = Formx.global_4589716Get()
  loc_69485D: FLdPr var_C8
  loc_694860: Formx.FontSize = from_stack_1s
  loc_694865: FLdI2 var_CE
  loc_694868: NotI4
  loc_694869: FFree1Ad var_C8
  loc_69486C: BranchF loc_6948A0
  loc_69486F: FLdRfVar var_E0
  loc_694872: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694877: FLdRfVar var_E0
  loc_69487A: CBoolVarNull
  loc_69487C: FFree1Var var_E0 = ""
  loc_69487F: BranchF loc_69489D
  loc_694882: ILdRf Me
  loc_694885: FStAdNoPop
  loc_694889: ImpAdLdRf MemVar_7520D4
  loc_69488C: NewIfNullPr Global
  loc_69488F: Global.Unload from_stack_1
  loc_694894: FFree1Ad var_C8
  loc_694897: ExitProcCbHresult
  loc_69489D: Branch loc_694840
  loc_6948A0: LitI4 1
  loc_6948A5: FStR4 var_B4
  loc_6948A8: LitVarI2 var_C4, 1
  loc_6948AD: FStVar var_AC
  loc_6948B1: LitI4 0
  loc_6948B6: FLdRfVar var_AC
  loc_6948B9: CI4Var
  loc_6948BB: FLdPr Me
  loc_6948BE: MemLdRfVar from_stack_1.global_80
  loc_6948C1: RedimPreserve
  loc_6948CB: ILdRf var_98
  loc_6948CE: ImpAdCallFPR4 push Val()
  loc_6948D3: CR8R8
  loc_6948D4: LitI2_Byte 0
  loc_6948D6: CR8I2
  loc_6948D7: EqR4
  loc_6948D8: BranchF loc_6948FC
  loc_6948DB: LitStr vbNullString
  loc_6948DE: LitI4 1
  loc_6948E3: FLdPr Me
  loc_6948E6: MemLdStr global_80
  loc_6948E9: Ary1LdPr
  loc_6948EA: MemStStrCopy
  loc_6948EE: LitVar_FALSE
  loc_6948F2: FStVar var_94
  loc_6948F6: ExitProcCbHresult
  loc_6948FC: FLdPr Me
  loc_6948FF: MemLdStr TipoReporte
  loc_694902: LitStr "C"
  loc_694905: EqStr
  loc_694907: BranchF loc_694AF4
  loc_69490A: LitVarI2 var_E0, 16
  loc_69490F: ILdRf var_B4
  loc_694912: FLdRfVar var_98
  loc_694915: CVarRef
  loc_69491A: FLdRfVar var_100
  loc_69491D: ImpAdCallFPR4  = Mid(, , )
  loc_694922: FLdRfVar var_100
  loc_694925: CStrVarTmp
  loc_694926: FStStrNoPop var_CC
  loc_694929: FLdRfVar var_AC
  loc_69492C: CI4Var
  loc_69492E: FLdPr Me
  loc_694931: MemLdStr global_80
  loc_694934: Ary1LdPr
  loc_694935: MemStStrCopy
  loc_694939: FFree1Str var_CC
  loc_69493C: FFreeVar var_E0 = ""
  loc_694943: LitVarI2 var_E0, 4
  loc_694948: LitI4 &HD
  loc_69494D: FLdRfVar var_AC
  loc_694950: CI4Var
  loc_694952: FLdPr Me
  loc_694955: MemLdStr global_80
  loc_694958: AryLock
  loc_69495B: Ary1LdPr
  loc_69495C: MemLdRfVar from_stack_1.global_16
  loc_69495F: CVarRef
  loc_694964: FLdRfVar var_100
  loc_694967: ImpAdCallFPR4  = Mid(, , )
  loc_69496C: AryUnlock
  loc_69496F: FLdRfVar var_100
  loc_694972: LitVarStr var_114, ".CLP"
  loc_694977: HardType
  loc_694978: EqVarBool
  loc_69497A: FFreeVar var_E0 = ""
  loc_694981: BranchF loc_6949D1
  loc_694984: LitVarI2 var_E0, 12
  loc_694989: LitI4 1
  loc_69498E: FLdRfVar var_AC
  loc_694991: CI4Var
  loc_694993: FLdPr Me
  loc_694996: MemLdStr global_80
  loc_694999: AryLock
  loc_69499C: Ary1LdPr
  loc_69499D: MemLdRfVar from_stack_1.global_16
  loc_6949A0: CVarRef
  loc_6949A5: FLdRfVar var_100
  loc_6949A8: ImpAdCallFPR4  = Mid(, , )
  loc_6949AD: AryUnlock
  loc_6949B0: FLdRfVar var_100
  loc_6949B3: CStrVarTmp
  loc_6949B4: FStStrNoPop var_CC
  loc_6949B7: FLdRfVar var_AC
  loc_6949BA: CI4Var
  loc_6949BC: FLdPr Me
  loc_6949BF: MemLdStr global_80
  loc_6949C2: Ary1LdPr
  loc_6949C3: MemStStrCopy
  loc_6949C7: FFree1Str var_CC
  loc_6949CA: FFreeVar var_E0 = ""
  loc_6949D1: ILdRf var_B4
  loc_6949D4: LitI4 &H10
  loc_6949D9: AddI4
  loc_6949DA: FStR4 var_B4
  loc_6949DD: LitVarI2 var_E0, 10
  loc_6949E2: ILdRf var_B4
  loc_6949E5: FLdRfVar var_98
  loc_6949E8: CVarRef
  loc_6949ED: FLdRfVar var_100
  loc_6949F0: ImpAdCallFPR4  = Mid(, , )
  loc_6949F5: FLdRfVar var_100
  loc_6949F8: CStrVarTmp
  loc_6949F9: FStStrNoPop var_CC
  loc_6949FC: FLdRfVar var_AC
  loc_6949FF: CI4Var
  loc_694A01: FLdPr Me
  loc_694A04: MemLdStr global_80
  loc_694A07: Ary1LdPr
  loc_694A08: MemStStrCopy
  loc_694A0C: FFree1Str var_CC
  loc_694A0F: FFreeVar var_E0 = ""
  loc_694A16: ILdRf var_B4
  loc_694A19: LitI4 &HA
  loc_694A1E: AddI4
  loc_694A1F: FStR4 var_B4
  loc_694A22: LitVarI2 var_E0, 8
  loc_694A27: ILdRf var_B4
  loc_694A2A: FLdRfVar var_98
  loc_694A2D: CVarRef
  loc_694A32: FLdRfVar var_100
  loc_694A35: ImpAdCallFPR4  = Mid(, , )
  loc_694A3A: FLdRfVar var_100
  loc_694A3D: CStrVarTmp
  loc_694A3E: FStStrNoPop var_CC
  loc_694A41: FLdRfVar var_AC
  loc_694A44: CI4Var
  loc_694A46: FLdPr Me
  loc_694A49: MemLdStr global_80
  loc_694A4C: Ary1LdPr
  loc_694A4D: MemStStrCopy
  loc_694A51: FFree1Str var_CC
  loc_694A54: FFreeVar var_E0 = ""
  loc_694A5B: ILdRf var_B4
  loc_694A5E: LitI4 8
  loc_694A63: AddI4
  loc_694A64: FStR4 var_B4
  loc_694A67: LitVarI2 var_E0, 10
  loc_694A6C: ILdRf var_B4
  loc_694A6F: FLdRfVar var_98
  loc_694A72: CVarRef
  loc_694A77: FLdRfVar var_100
  loc_694A7A: ImpAdCallFPR4  = Mid(, , )
  loc_694A7F: FLdRfVar var_100
  loc_694A82: CStrVarTmp
  loc_694A83: FStStrNoPop var_CC
  loc_694A86: FLdRfVar var_AC
  loc_694A89: CI4Var
  loc_694A8B: FLdPr Me
  loc_694A8E: MemLdStr global_80
  loc_694A91: Ary1LdPr
  loc_694A92: MemStStrCopy
  loc_694A96: FFree1Str var_CC
  loc_694A99: FFreeVar var_E0 = ""
  loc_694AA0: ILdRf var_B4
  loc_694AA3: LitI4 &HA
  loc_694AA8: AddI4
  loc_694AA9: FStR4 var_B4
  loc_694AAC: LitVarI2 var_E0, 8
  loc_694AB1: ILdRf var_B4
  loc_694AB4: FLdRfVar var_98
  loc_694AB7: CVarRef
  loc_694ABC: FLdRfVar var_100
  loc_694ABF: ImpAdCallFPR4  = Mid(, , )
  loc_694AC4: FLdRfVar var_100
  loc_694AC7: CStrVarTmp
  loc_694AC8: FStStrNoPop var_CC
  loc_694ACB: FLdRfVar var_AC
  loc_694ACE: CI4Var
  loc_694AD0: FLdPr Me
  loc_694AD3: MemLdStr global_80
  loc_694AD6: Ary1LdPr
  loc_694AD7: MemStStrCopy
  loc_694ADB: FFree1Str var_CC
  loc_694ADE: FFreeVar var_E0 = ""
  loc_694AE5: ILdRf var_B4
  loc_694AE8: LitI4 9
  loc_694AED: AddI4
  loc_694AEE: FStR4 var_B4
  loc_694AF1: Branch loc_694D72
  loc_694AF4: FLdPr Me
  loc_694AF7: MemLdStr TipoReporte
  loc_694AFA: LitStr "B"
  loc_694AFD: EqStr
  loc_694AFF: BranchF loc_694C5E
  loc_694B02: LitVarI2 var_E0, 12
  loc_694B07: ILdRf var_B4
  loc_694B0A: FLdRfVar var_98
  loc_694B0D: CVarRef
  loc_694B12: FLdRfVar var_100
  loc_694B15: ImpAdCallFPR4  = Mid(, , )
  loc_694B1A: FLdRfVar var_100
  loc_694B1D: CStrVarTmp
  loc_694B1E: FStStrNoPop var_CC
  loc_694B21: FLdRfVar var_AC
  loc_694B24: CI4Var
  loc_694B26: FLdPr Me
  loc_694B29: MemLdStr global_80
  loc_694B2C: Ary1LdPr
  loc_694B2D: MemStStrCopy
  loc_694B31: FFree1Str var_CC
  loc_694B34: FFreeVar var_E0 = ""
  loc_694B3B: ILdRf var_B4
  loc_694B3E: LitI4 &HC
  loc_694B43: AddI4
  loc_694B44: FStR4 var_B4
  loc_694B47: LitVarI2 var_E0, 10
  loc_694B4C: ILdRf var_B4
  loc_694B4F: FLdRfVar var_98
  loc_694B52: CVarRef
  loc_694B57: FLdRfVar var_100
  loc_694B5A: ImpAdCallFPR4  = Mid(, , )
  loc_694B5F: FLdRfVar var_100
  loc_694B62: CStrVarTmp
  loc_694B63: FStStrNoPop var_CC
  loc_694B66: FLdRfVar var_AC
  loc_694B69: CI4Var
  loc_694B6B: FLdPr Me
  loc_694B6E: MemLdStr global_80
  loc_694B71: Ary1LdPr
  loc_694B72: MemStStrCopy
  loc_694B76: FFree1Str var_CC
  loc_694B79: FFreeVar var_E0 = ""
  loc_694B80: ILdRf var_B4
  loc_694B83: LitI4 &HA
  loc_694B88: AddI4
  loc_694B89: FStR4 var_B4
  loc_694B8C: LitVarI2 var_E0, 8
  loc_694B91: ILdRf var_B4
  loc_694B94: FLdRfVar var_98
  loc_694B97: CVarRef
  loc_694B9C: FLdRfVar var_100
  loc_694B9F: ImpAdCallFPR4  = Mid(, , )
  loc_694BA4: FLdRfVar var_100
  loc_694BA7: CStrVarTmp
  loc_694BA8: FStStrNoPop var_CC
  loc_694BAB: FLdRfVar var_AC
  loc_694BAE: CI4Var
  loc_694BB0: FLdPr Me
  loc_694BB3: MemLdStr global_80
  loc_694BB6: Ary1LdPr
  loc_694BB7: MemStStrCopy
  loc_694BBB: FFree1Str var_CC
  loc_694BBE: FFreeVar var_E0 = ""
  loc_694BC5: ILdRf var_B4
  loc_694BC8: LitI4 8
  loc_694BCD: AddI4
  loc_694BCE: FStR4 var_B4
  loc_694BD1: LitVarI2 var_E0, 10
  loc_694BD6: ILdRf var_B4
  loc_694BD9: FLdRfVar var_98
  loc_694BDC: CVarRef
  loc_694BE1: FLdRfVar var_100
  loc_694BE4: ImpAdCallFPR4  = Mid(, , )
  loc_694BE9: FLdRfVar var_100
  loc_694BEC: CStrVarTmp
  loc_694BED: FStStrNoPop var_CC
  loc_694BF0: FLdRfVar var_AC
  loc_694BF3: CI4Var
  loc_694BF5: FLdPr Me
  loc_694BF8: MemLdStr global_80
  loc_694BFB: Ary1LdPr
  loc_694BFC: MemStStrCopy
  loc_694C00: FFree1Str var_CC
  loc_694C03: FFreeVar var_E0 = ""
  loc_694C0A: ILdRf var_B4
  loc_694C0D: LitI4 &HA
  loc_694C12: AddI4
  loc_694C13: FStR4 var_B4
  loc_694C16: LitVarI2 var_E0, 8
  loc_694C1B: ILdRf var_B4
  loc_694C1E: FLdRfVar var_98
  loc_694C21: CVarRef
  loc_694C26: FLdRfVar var_100
  loc_694C29: ImpAdCallFPR4  = Mid(, , )
  loc_694C2E: FLdRfVar var_100
  loc_694C31: CStrVarTmp
  loc_694C32: FStStrNoPop var_CC
  loc_694C35: FLdRfVar var_AC
  loc_694C38: CI4Var
  loc_694C3A: FLdPr Me
  loc_694C3D: MemLdStr global_80
  loc_694C40: Ary1LdPr
  loc_694C41: MemStStrCopy
  loc_694C45: FFree1Str var_CC
  loc_694C48: FFreeVar var_E0 = ""
  loc_694C4F: ILdRf var_B4
  loc_694C52: LitI4 9
  loc_694C57: AddI4
  loc_694C58: FStR4 var_B4
  loc_694C5B: Branch loc_694D72
  loc_694C5E: LitVarI2 var_E0, 10
  loc_694C63: ILdRf var_B4
  loc_694C66: FLdRfVar var_98
  loc_694C69: CVarRef
  loc_694C6E: FLdRfVar var_100
  loc_694C71: ImpAdCallFPR4  = Mid(, , )
  loc_694C76: FLdRfVar var_100
  loc_694C79: CStrVarTmp
  loc_694C7A: FStStrNoPop var_CC
  loc_694C7D: FLdRfVar var_AC
  loc_694C80: CI4Var
  loc_694C82: FLdPr Me
  loc_694C85: MemLdStr global_80
  loc_694C88: Ary1LdPr
  loc_694C89: MemStStrCopy
  loc_694C8D: FFree1Str var_CC
  loc_694C90: FFreeVar var_E0 = ""
  loc_694C97: ILdRf var_B4
  loc_694C9A: LitI4 &HA
  loc_694C9F: AddI4
  loc_694CA0: FStR4 var_B4
  loc_694CA3: LitVarI2 var_E0, 8
  loc_694CA8: ILdRf var_B4
  loc_694CAB: FLdRfVar var_98
  loc_694CAE: CVarRef
  loc_694CB3: FLdRfVar var_100
  loc_694CB6: ImpAdCallFPR4  = Mid(, , )
  loc_694CBB: FLdRfVar var_100
  loc_694CBE: CStrVarTmp
  loc_694CBF: FStStrNoPop var_CC
  loc_694CC2: FLdRfVar var_AC
  loc_694CC5: CI4Var
  loc_694CC7: FLdPr Me
  loc_694CCA: MemLdStr global_80
  loc_694CCD: Ary1LdPr
  loc_694CCE: MemStStrCopy
  loc_694CD2: FFree1Str var_CC
  loc_694CD5: FFreeVar var_E0 = ""
  loc_694CDC: ILdRf var_B4
  loc_694CDF: LitI4 8
  loc_694CE4: AddI4
  loc_694CE5: FStR4 var_B4
  loc_694CE8: LitVarI2 var_E0, 10
  loc_694CED: ILdRf var_B4
  loc_694CF0: FLdRfVar var_98
  loc_694CF3: CVarRef
  loc_694CF8: FLdRfVar var_100
  loc_694CFB: ImpAdCallFPR4  = Mid(, , )
  loc_694D00: FLdRfVar var_100
  loc_694D03: CStrVarTmp
  loc_694D04: FStStrNoPop var_CC
  loc_694D07: FLdRfVar var_AC
  loc_694D0A: CI4Var
  loc_694D0C: FLdPr Me
  loc_694D0F: MemLdStr global_80
  loc_694D12: Ary1LdPr
  loc_694D13: MemStStrCopy
  loc_694D17: FFree1Str var_CC
  loc_694D1A: FFreeVar var_E0 = ""
  loc_694D21: ILdRf var_B4
  loc_694D24: LitI4 &HA
  loc_694D29: AddI4
  loc_694D2A: FStR4 var_B4
  loc_694D2D: LitVarI2 var_E0, 8
  loc_694D32: ILdRf var_B4
  loc_694D35: FLdRfVar var_98
  loc_694D38: CVarRef
  loc_694D3D: FLdRfVar var_100
  loc_694D40: ImpAdCallFPR4  = Mid(, , )
  loc_694D45: FLdRfVar var_100
  loc_694D48: CStrVarTmp
  loc_694D49: FStStrNoPop var_CC
  loc_694D4C: FLdRfVar var_AC
  loc_694D4F: CI4Var
  loc_694D51: FLdPr Me
  loc_694D54: MemLdStr global_80
  loc_694D57: Ary1LdPr
  loc_694D58: MemStStrCopy
  loc_694D5C: FFree1Str var_CC
  loc_694D5F: FFreeVar var_E0 = ""
  loc_694D66: ILdRf var_B4
  loc_694D69: LitI4 9
  loc_694D6E: AddI4
  loc_694D6F: FStR4 var_B4
  loc_694D72: ILdRf var_B4
  loc_694D75: CVarI4
  loc_694D79: HardType
  loc_694D7A: FLdRfVar var_98
  loc_694D7D: CVarRef
  loc_694D82: FLdRfVar var_E0
  loc_694D85: ImpAdCallFPR4  = Trim()
  loc_694D8A: FLdRfVar var_E0
  loc_694D8D: FnLenVar var_100
  loc_694D91: GtVarBool
  loc_694D93: FFree1Var var_E0 = ""
  loc_694D96: BranchF loc_694D9C
  loc_694D99: Branch loc_694DC9
  loc_694D9C: FLdRfVar var_AC
  loc_694D9F: LitVarI2 var_C4, 1
  loc_694DA4: AddVar var_E0
  loc_694DA8: FStVar var_AC
  loc_694DAC: LitI4 0
  loc_694DB1: FLdRfVar var_AC
  loc_694DB4: CI4Var
  loc_694DB6: FLdPr Me
  loc_694DB9: MemLdRfVar from_stack_1.global_80
  loc_694DBC: RedimPreserve
  loc_694DC6: Branch loc_6948FC
  loc_694DC9: ExitProcCbHresult
End Function

Private Function Proc_100_48_61895C(arg_C) '61895C
  'Data Table: 440CF4
  loc_618838: ZeroRetVal
  loc_61883A: LitI2_Byte &HFF
  loc_61883C: FStI2 var_92
  loc_61883F: LitI2_Byte 1
  loc_618841: FLdRfVar var_8A
  loc_618844: ILdI4 arg_C
  loc_618847: FnLenStr
  loc_618848: CI2I4
  loc_618849: ForI2 var_96
  loc_61884F: LitVarI2 var_C8, 1
  loc_618854: FLdI2 var_8A
  loc_618857: CI4UI1
  loc_618858: ILdRf arg_C
  loc_61885B: CVarRef
  loc_618860: FLdRfVar var_D8
  loc_618863: ImpAdCallFPR4  = Mid(, , )
  loc_618868: FLdRfVar var_D8
  loc_61886B: LitVarStr var_E8, " "
  loc_618870: HardType
  loc_618871: NeVarBool
  loc_618873: FFreeVar var_C8 = ""
  loc_61887A: BranchF loc_61890E
  loc_61887D: FLdI2 var_92
  loc_618880: BranchF loc_6188CB
  loc_618883: ILdRf var_90
  loc_618886: CVarStr var_E8
  loc_618889: LitVarI2 var_C8, 1
  loc_61888E: FLdI2 var_8A
  loc_618891: CI4UI1
  loc_618892: ILdRf arg_C
  loc_618895: CVarRef
  loc_61889A: FLdRfVar var_D8
  loc_61889D: ImpAdCallFPR4  = Mid(, , )
  loc_6188A2: FLdRfVar var_D8
  loc_6188A5: FLdRfVar var_F8
  loc_6188A8: ImpAdCallFPR4  = Ucase()
  loc_6188AD: FLdRfVar var_F8
  loc_6188B0: ConcatVar var_108
  loc_6188B4: CStrVarTmp
  loc_6188B5: FStStr var_90
  loc_6188B8: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_6188C3: LitI2_Byte 0
  loc_6188C5: FStI2 var_92
  loc_6188C8: Branch loc_61890B
  loc_6188CB: ILdRf var_90
  loc_6188CE: CVarStr var_E8
  loc_6188D1: LitVarI2 var_C8, 1
  loc_6188D6: FLdI2 var_8A
  loc_6188D9: CI4UI1
  loc_6188DA: ILdRf arg_C
  loc_6188DD: CVarRef
  loc_6188E2: FLdRfVar var_D8
  loc_6188E5: ImpAdCallFPR4  = Mid(, , )
  loc_6188EA: FLdRfVar var_D8
  loc_6188ED: FLdRfVar var_F8
  loc_6188F0: ImpAdCallFPR4  = LCase()
  loc_6188F5: FLdRfVar var_F8
  loc_6188F8: ConcatVar var_108
  loc_6188FC: CStrVarTmp
  loc_6188FD: FStStr var_90
  loc_618900: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_61890B: Branch loc_618946
  loc_61890E: ILdRf var_90
  loc_618911: CVarStr var_E8
  loc_618914: LitVarI2 var_C8, 1
  loc_618919: FLdI2 var_8A
  loc_61891C: CI4UI1
  loc_61891D: ILdRf arg_C
  loc_618920: CVarRef
  loc_618925: FLdRfVar var_D8
  loc_618928: ImpAdCallFPR4  = Mid(, , )
  loc_61892D: FLdRfVar var_D8
  loc_618930: ConcatVar var_F8
  loc_618934: CStrVarTmp
  loc_618935: FStStr var_90
  loc_618938: FFreeVar var_C8 = "": var_D8 = ""
  loc_618941: LitI2_Byte &HFF
  loc_618943: FStI2 var_92
  loc_618946: FLdRfVar var_8A
  loc_618949: NextI2 var_96, loc_61884F
  loc_61894E: ILdRf var_90
  loc_618951: FStStrCopy var_88
  loc_618954: ExitProcCbHresult
End Function

Private Function Proc_100_49_5EA134(arg_C, arg_10) '5EA134
  'Data Table: 440CF4
  loc_5EA0BC: ILdRf arg_10
  loc_5EA0BF: CVarRef
  loc_5EA0C4: LitI4 1
  loc_5EA0C9: ILdRf arg_C
  loc_5EA0CC: CVarRef
  loc_5EA0D1: FLdRfVar var_C4
  loc_5EA0D4: ImpAdCallFPR4  = Mid(, , )
  loc_5EA0D9: FLdRfVar var_C4
  loc_5EA0DC: CStrVarTmp
  loc_5EA0DD: FStStr var_90
  loc_5EA0E0: FFree1Var var_C4 = ""
  loc_5EA0E3: ILdI4 arg_C
  loc_5EA0E6: FnLenStr
  loc_5EA0E7: CVarI4
  loc_5EA0EB: ILdI2 arg_10
  loc_5EA0EE: LitI2_Byte 1
  loc_5EA0F0: AddI2
  loc_5EA0F1: CI4UI1
  loc_5EA0F2: ILdRf arg_C
  loc_5EA0F5: CVarRef
  loc_5EA0FA: FLdRfVar var_D4
  loc_5EA0FD: ImpAdCallFPR4  = Mid(, , )
  loc_5EA102: FLdRfVar var_D4
  loc_5EA105: CStrVarTmp
  loc_5EA106: FStStr var_94
  loc_5EA109: FFreeVar var_C4 = ""
  loc_5EA110: ILdRf var_90
  loc_5EA113: LitStr "."
  loc_5EA116: ConcatStr
  loc_5EA117: FStStrNoPop var_D8
  loc_5EA11A: ILdRf var_94
  loc_5EA11D: ConcatStr
  loc_5EA11E: FStStrNoPop var_DC
  loc_5EA121: CR8Str
  loc_5EA123: FStFPR8 var_8C
  loc_5EA126: FFreeStr var_D8 = ""
  loc_5EA12D: ExitProcCbHresult
End Function

Private Function Proc_100_50_5EDFC4(arg_C, arg_10) '5EDFC4
  'Data Table: 440CF4
  loc_5EDF40: ZeroRetVal
  loc_5EDF42: ILdRf arg_10
  loc_5EDF45: CVarRef
  loc_5EDF4A: LitI4 1
  loc_5EDF4F: ILdRf arg_C
  loc_5EDF52: CVarRef
  loc_5EDF57: FLdRfVar var_C0
  loc_5EDF5A: ImpAdCallFPR4  = Mid(, , )
  loc_5EDF5F: FLdRfVar var_C0
  loc_5EDF62: CStrVarTmp
  loc_5EDF63: FStStr var_8C
  loc_5EDF66: FFree1Var var_C0 = ""
  loc_5EDF69: ILdI4 arg_C
  loc_5EDF6C: FnLenStr
  loc_5EDF6D: CVarI4
  loc_5EDF71: ILdI2 arg_10
  loc_5EDF74: LitI2_Byte 1
  loc_5EDF76: AddI2
  loc_5EDF77: CI4UI1
  loc_5EDF78: ILdRf arg_C
  loc_5EDF7B: CVarRef
  loc_5EDF80: FLdRfVar var_D0
  loc_5EDF83: ImpAdCallFPR4  = Mid(, , )
  loc_5EDF88: FLdRfVar var_D0
  loc_5EDF8B: CStrVarTmp
  loc_5EDF8C: FStStr var_90
  loc_5EDF8F: FFreeVar var_C0 = ""
  loc_5EDF96: ILdRf var_90
  loc_5EDF99: LitStr vbNullString
  loc_5EDF9C: EqStr
  loc_5EDF9E: BranchF loc_5EDFA7
  loc_5EDFA1: LitStr "000"
  loc_5EDFA4: FStStrCopy var_90
  loc_5EDFA7: ILdRf var_8C
  loc_5EDFAA: LitStr "."
  loc_5EDFAD: ConcatStr
  loc_5EDFAE: FStStrNoPop var_D4
  loc_5EDFB1: ILdRf var_90
  loc_5EDFB4: ConcatStr
  loc_5EDFB5: FStStr var_88
  loc_5EDFB8: FFree1Str var_D4
  loc_5EDFBB: ExitProcCbHresult
End Function

Private Function Proc_100_51_66C854(arg_C, arg_10, arg_14) '66C854
  'Data Table: 440CF4
  loc_66C47C: ZeroRetVal
  loc_66C47E: ILdI4 arg_10
  loc_66C481: LitStr "TDesc"
  loc_66C484: EqStr
  loc_66C486: CVarBoolI2 var_DC
  loc_66C48A: LitI4 5
  loc_66C48F: ILdRf arg_C
  loc_66C492: CVarRef
  loc_66C497: FLdRfVar var_AC
  loc_66C49A: ImpAdCallFPR4  = Right(, )
  loc_66C49F: FLdRfVar var_AC
  loc_66C4A2: LitVarStr var_BC, "TDesc"
  loc_66C4A7: HardType
  loc_66C4A8: NeVar var_CC
  loc_66C4AC: AndVar var_EC
  loc_66C4B0: ILdI2 arg_14
  loc_66C4B3: LitI2_Byte 0
  loc_66C4B5: EqI2
  loc_66C4B6: CVarBoolI2 var_FC
  loc_66C4BA: AndVar var_10C
  loc_66C4BE: CBoolVarNull
  loc_66C4C0: FFreeVar var_AC = "": var_DC = ""
  loc_66C4C9: BranchF loc_66C4D7
  loc_66C4CC: ILdI4 arg_C
  loc_66C4CF: LitStr "TDesc"
  loc_66C4D2: ConcatStr
  loc_66C4D3: IStStr
  loc_66C4D7: ILdI4 arg_10
  loc_66C4DA: LitStr "Hand"
  loc_66C4DD: EqStr
  loc_66C4DF: CVarBoolI2 var_DC
  loc_66C4E3: LitI4 4
  loc_66C4E8: ILdRf arg_C
  loc_66C4EB: CVarRef
  loc_66C4F0: FLdRfVar var_AC
  loc_66C4F3: ImpAdCallFPR4  = Right(, )
  loc_66C4F8: FLdRfVar var_AC
  loc_66C4FB: LitVarStr var_BC, "Hand"
  loc_66C500: HardType
  loc_66C501: NeVar var_CC
  loc_66C505: AndVar var_EC
  loc_66C509: ILdI2 arg_14
  loc_66C50C: LitI2_Byte 0
  loc_66C50E: EqI2
  loc_66C50F: CVarBoolI2 var_FC
  loc_66C513: AndVar var_10C
  loc_66C517: CBoolVarNull
  loc_66C519: FFreeVar var_AC = "": var_DC = ""
  loc_66C522: BranchF loc_66C530
  loc_66C525: ILdI4 arg_C
  loc_66C528: LitStr "Hand"
  loc_66C52B: ConcatStr
  loc_66C52C: IStStr
  loc_66C530: ILdI4 arg_10
  loc_66C533: LitStr "Esso"
  loc_66C536: EqStr
  loc_66C538: CVarBoolI2 var_DC
  loc_66C53C: LitI4 4
  loc_66C541: ILdRf arg_C
  loc_66C544: CVarRef
  loc_66C549: FLdRfVar var_AC
  loc_66C54C: ImpAdCallFPR4  = Right(, )
  loc_66C551: FLdRfVar var_AC
  loc_66C554: LitVarStr var_BC, "Esso"
  loc_66C559: HardType
  loc_66C55A: NeVar var_CC
  loc_66C55E: AndVar var_EC
  loc_66C562: ILdI2 arg_14
  loc_66C565: LitI2_Byte 0
  loc_66C567: EqI2
  loc_66C568: CVarBoolI2 var_FC
  loc_66C56C: AndVar var_10C
  loc_66C570: CBoolVarNull
  loc_66C572: FFreeVar var_AC = "": var_DC = ""
  loc_66C57B: BranchF loc_66C589
  loc_66C57E: ILdI4 arg_C
  loc_66C581: LitStr "Esso"
  loc_66C584: ConcatStr
  loc_66C585: IStStr
  loc_66C589: ILdI4 arg_10
  loc_66C58C: LitStr "C/R"
  loc_66C58F: EqStr
  loc_66C591: CVarBoolI2 var_DC
  loc_66C595: LitI4 3
  loc_66C59A: ILdRf arg_C
  loc_66C59D: CVarRef
  loc_66C5A2: FLdRfVar var_AC
  loc_66C5A5: ImpAdCallFPR4  = Right(, )
  loc_66C5AA: FLdRfVar var_AC
  loc_66C5AD: LitVarStr var_BC, "C/R"
  loc_66C5B2: HardType
  loc_66C5B3: NeVar var_CC
  loc_66C5B7: AndVar var_EC
  loc_66C5BB: ILdI2 arg_14
  loc_66C5BE: LitI2_Byte 0
  loc_66C5C0: EqI2
  loc_66C5C1: CVarBoolI2 var_FC
  loc_66C5C5: AndVar var_10C
  loc_66C5C9: CBoolVarNull
  loc_66C5CB: FFreeVar var_AC = "": var_DC = ""
  loc_66C5D4: BranchF loc_66C5E2
  loc_66C5D7: ILdI4 arg_C
  loc_66C5DA: LitStr "C/R"
  loc_66C5DD: ConcatStr
  loc_66C5DE: IStStr
  loc_66C5E2: ILdI4 arg_10
  loc_66C5E5: LitStr "BTDtAnu"
  loc_66C5E8: EqStr
  loc_66C5EA: CVarBoolI2 var_DC
  loc_66C5EE: LitI4 7
  loc_66C5F3: ILdRf arg_C
  loc_66C5F6: CVarRef
  loc_66C5FB: FLdRfVar var_AC
  loc_66C5FE: ImpAdCallFPR4  = Right(, )
  loc_66C603: FLdRfVar var_AC
  loc_66C606: LitVarStr var_BC, "BTDtAnu"
  loc_66C60B: HardType
  loc_66C60C: NeVar var_CC
  loc_66C610: AndVar var_EC
  loc_66C614: ILdI2 arg_14
  loc_66C617: LitI2_Byte &HFF
  loc_66C619: EqI2
  loc_66C61A: CVarBoolI2 var_FC
  loc_66C61E: AndVar var_10C
  loc_66C622: CBoolVarNull
  loc_66C624: FFreeVar var_AC = "": var_DC = ""
  loc_66C62D: BranchF loc_66C63B
  loc_66C630: ILdI4 arg_C
  loc_66C633: LitStr "BTDtAnu"
  loc_66C636: ConcatStr
  loc_66C637: IStStr
  loc_66C63B: ILdI4 arg_10
  loc_66C63E: LitStr "DescT"
  loc_66C641: EqStr
  loc_66C643: CVarBoolI2 var_DC
  loc_66C647: LitI4 5
  loc_66C64C: ILdRf arg_C
  loc_66C64F: CVarRef
  loc_66C654: FLdRfVar var_AC
  loc_66C657: ImpAdCallFPR4  = Right(, )
  loc_66C65C: FLdRfVar var_AC
  loc_66C65F: LitVarStr var_BC, "DescT"
  loc_66C664: HardType
  loc_66C665: NeVar var_CC
  loc_66C669: AndVar var_EC
  loc_66C66D: ILdI2 arg_14
  loc_66C670: LitI2_Byte 0
  loc_66C672: EqI2
  loc_66C673: CVarBoolI2 var_FC
  loc_66C677: AndVar var_10C
  loc_66C67B: CBoolVarNull
  loc_66C67D: FFreeVar var_AC = "": var_DC = ""
  loc_66C686: BranchF loc_66C694
  loc_66C689: ILdI4 arg_C
  loc_66C68C: LitStr "DescT"
  loc_66C68F: ConcatStr
  loc_66C690: IStStr
  loc_66C694: ILdI4 arg_10
  loc_66C697: LitStr "Hand"
  loc_66C69A: EqStr
  loc_66C69C: CVarBoolI2 var_DC
  loc_66C6A0: LitI4 5
  loc_66C6A5: ILdRf arg_C
  loc_66C6A8: CVarRef
  loc_66C6AD: FLdRfVar var_AC
  loc_66C6B0: ImpAdCallFPR4  = Right(, )
  loc_66C6B5: FLdRfVar var_AC
  loc_66C6B8: LitVarStr var_BC, "AHand"
  loc_66C6BD: HardType
  loc_66C6BE: NeVar var_CC
  loc_66C6C2: AndVar var_EC
  loc_66C6C6: ILdI2 arg_14
  loc_66C6C9: LitI2_Byte &HFF
  loc_66C6CB: EqI2
  loc_66C6CC: CVarBoolI2 var_FC
  loc_66C6D0: AndVar var_10C
  loc_66C6D4: CBoolVarNull
  loc_66C6D6: FFreeVar var_AC = "": var_DC = ""
  loc_66C6DF: BranchF loc_66C6ED
  loc_66C6E2: ILdI4 arg_C
  loc_66C6E5: LitStr "AHand"
  loc_66C6E8: ConcatStr
  loc_66C6E9: IStStr
  loc_66C6ED: ILdI4 arg_10
  loc_66C6F0: LitStr "Esso"
  loc_66C6F3: EqStr
  loc_66C6F5: CVarBoolI2 var_DC
  loc_66C6F9: LitI4 5
  loc_66C6FE: ILdRf arg_C
  loc_66C701: CVarRef
  loc_66C706: FLdRfVar var_AC
  loc_66C709: ImpAdCallFPR4  = Right(, )
  loc_66C70E: FLdRfVar var_AC
  loc_66C711: LitVarStr var_BC, "AEsso"
  loc_66C716: HardType
  loc_66C717: NeVar var_CC
  loc_66C71B: AndVar var_EC
  loc_66C71F: ILdI2 arg_14
  loc_66C722: LitI2_Byte &HFF
  loc_66C724: EqI2
  loc_66C725: CVarBoolI2 var_FC
  loc_66C729: AndVar var_10C
  loc_66C72D: CBoolVarNull
  loc_66C72F: FFreeVar var_AC = "": var_DC = ""
  loc_66C738: BranchF loc_66C746
  loc_66C73B: ILdI4 arg_C
  loc_66C73E: LitStr "AEsso"
  loc_66C741: ConcatStr
  loc_66C742: IStStr
  loc_66C746: ILdI4 arg_10
  loc_66C749: LitStr "AnuTD"
  loc_66C74C: EqStr
  loc_66C74E: CVarBoolI2 var_DC
  loc_66C752: LitI4 5
  loc_66C757: ILdRf arg_C
  loc_66C75A: CVarRef
  loc_66C75F: FLdRfVar var_AC
  loc_66C762: ImpAdCallFPR4  = Right(, )
  loc_66C767: FLdRfVar var_AC
  loc_66C76A: LitVarStr var_BC, "AnuTD"
  loc_66C76F: HardType
  loc_66C770: NeVar var_CC
  loc_66C774: AndVar var_EC
  loc_66C778: ILdI2 arg_14
  loc_66C77B: LitI2_Byte &HFF
  loc_66C77D: EqI2
  loc_66C77E: CVarBoolI2 var_FC
  loc_66C782: AndVar var_10C
  loc_66C786: CBoolVarNull
  loc_66C788: FFreeVar var_AC = "": var_DC = ""
  loc_66C791: BranchF loc_66C79F
  loc_66C794: ILdI4 arg_C
  loc_66C797: LitStr "AnuTD"
  loc_66C79A: ConcatStr
  loc_66C79B: IStStr
  loc_66C79F: FLdPr Me
  loc_66C7A2: MemLdRfVar from_stack_1.global_160
  loc_66C7A5: NewIfNullAd
  loc_66C7A8: FLdRfVar var_8C
  loc_66C7AB: ForEachCollObj
  loc_66C7B3: FLdRfVar var_114
  loc_66C7B6: FLdPr var_8C
  loc_66C7B9: Me = from_stack_1
  loc_66C7BE: ILdRf var_114
  loc_66C7C1: ILdI4 arg_C
  loc_66C7C4: EqStr
  loc_66C7C6: FLdRfVar var_118
  loc_66C7C9: FLdPr var_8C
  loc_66C7CC:  = Forms
  loc_66C7D1: ILdRf var_118
  loc_66C7D4: ILdI4 arg_10
  loc_66C7D7: EqStr
  loc_66C7D9: AndI4
  loc_66C7DA: FFreeStr var_114 = ""
  loc_66C7E1: BranchF loc_66C7F1
  loc_66C7E4: ILdRf var_8C
  loc_66C7E7: FStAd var_88 
  loc_66C7EB: ExitProcCbHresult
  loc_66C7F1: FLdRfVar var_8C
  loc_66C7F4: NextEachCollObj
  loc_66C7FC: FLdRfVar var_11A
  loc_66C7FF: ILdRf arg_10
  loc_66C802: ILdRf arg_C
  loc_66C805: from_stack_3v = Proc_100_53_5F6C78(from_stack_1v, from_stack_2v)
  loc_66C80A: FLdI2 var_11A
  loc_66C80D: BranchF loc_66C843
  loc_66C810: FLdRfVar var_120
  loc_66C813: LitI2_Byte 0
  loc_66C815: PopTmpLdAd2 var_11A
  loc_66C818: ILdRf arg_10
  loc_66C81B: ILdRf arg_C
  loc_66C81E: from_stack_4v = Proc_100_51_66C854(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_66C823: FLdZeroAd var_120
  loc_66C826: FStAdFunc var_8C
  loc_66C829: LitI2_Byte &HFF
  loc_66C82B: PopTmpLdAd2 var_11A
  loc_66C82E: FLdPr var_8C
  loc_66C836: ILdRf var_8C
  loc_66C839: FStAd var_88 
  loc_66C83D: ExitProcCbHresult
  loc_66C843: LitNothing
  loc_66C845: CastAd
  loc_66C848: FStAdFunc var_88
  loc_66C84B: ExitProcCbHresult
End Function

Private Function Proc_100_52_5E5554(arg_C, arg_10) '5E5554
  'Data Table: 440CF4
  loc_5E54EC: FLdPr Me
  loc_5E54EF: MemLdRfVar from_stack_1.global_160
  loc_5E54F2: NewIfNullAd
  loc_5E54F5: FLdRfVar var_8C
  loc_5E54F8: ForEachCollObj
  loc_5E5500: FLdRfVar var_94
  loc_5E5503: FLdPr var_8C
  loc_5E5506: Me = from_stack_1
  loc_5E550B: ILdRf var_94
  loc_5E550E: ILdI4 arg_C
  loc_5E5511: EqStr
  loc_5E5513: FLdRfVar var_98
  loc_5E5516: FLdPr var_8C
  loc_5E5519:  = Forms
  loc_5E551E: ILdRf var_98
  loc_5E5521: ILdI4 arg_10
  loc_5E5524: EqStr
  loc_5E5526: AndI4
  loc_5E5527: FFreeStr var_94 = ""
  loc_5E552E: BranchF loc_5E553C
  loc_5E5531: LitI2_Byte &HFF
  loc_5E5533: FStI2 var_86
  loc_5E5536: ExitProcCbHresult
  loc_5E553C: FLdRfVar var_8C
  loc_5E553F: NextEachCollObj
  loc_5E5547: LitI2_Byte 0
  loc_5E5549: FStI2 var_86
  loc_5E554C: ExitProcCbHresult
End Function

Private Function Proc_100_53_5F6C78(arg_C, arg_10) '5F6C78
  'Data Table: 440CF4
  loc_5F6BC8: OnErrorGoto loc_5F6C6D
  loc_5F6BCB: FLdRfVar var_8E
  loc_5F6BCE: ILdRf arg_10
  loc_5F6BD1: ILdRf arg_C
  loc_5F6BD4: from_stack_3v = Proc_100_52_5E5554(from_stack_1v, from_stack_2v)
  loc_5F6BD9: FLdI2 var_8E
  loc_5F6BDC: BranchF loc_5F6BEA
  loc_5F6BDF: LitI2_Byte 0
  loc_5F6BE1: FStI2 var_86
  loc_5F6BE4: ExitProcCbHresult
  loc_5F6BEA: New Me
  loc_5F6BEE: FStAdFunc var_8C
  loc_5F6BF1: ILdI4 arg_C
  loc_5F6BF4: FStStrCopy var_94
  loc_5F6BF7: FLdRfVar var_94
  loc_5F6BFA: FLdPr var_8C
  loc_5F6BFD:  = Me.Name
  loc_5F6C02: FFree1Str var_94
  loc_5F6C05: ILdI4 arg_10
  loc_5F6C08: FStStrCopy var_94
  loc_5F6C0B: FLdRfVar var_94
  loc_5F6C0E: FLdPr var_8C
  loc_5F6C16: FFree1Str var_94
  loc_5F6C19: FLdRfVar var_94
  loc_5F6C1C: FLdPr var_8C
  loc_5F6C1F: Me = from_stack_1
  loc_5F6C24: LitVar_Missing var_F8
  loc_5F6C27: LitVar_Missing var_D8
  loc_5F6C2A: FLdZeroAd var_94
  loc_5F6C2D: CVarStr var_B8
  loc_5F6C30: ILdRf var_8C
  loc_5F6C33: FStAd var_98 
  loc_5F6C37: FLdRfVar var_98
  loc_5F6C3A: CVarRef
  loc_5F6C3F: FLdPr Me
  loc_5F6C42: MemLdRfVar from_stack_1.global_160
  loc_5F6C45: NewIfNullPr Collection
  loc_5F6C48: Collection.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_5F6C4D: ILdRf var_98
  loc_5F6C50: CastAd
  loc_5F6C53: FStAdFunc var_8C
  loc_5F6C56: FFree1Ad var_98
  loc_5F6C59: FFreeVar var_B8 = "": var_D8 = ""
  loc_5F6C62: LitI2_Byte &HFF
  loc_5F6C64: FStI2 var_86
  loc_5F6C67: ExitProcCbHresult
  loc_5F6C6D: LitI2_Byte 0
  loc_5F6C6F: FStI2 var_86
  loc_5F6C72: ExitProcCbHresult
End Function

Private Function Proc_100_54_5DE28C() '5DE28C
  'Data Table: 440CF4
  loc_5DE248: FLdPr Me
  loc_5DE24B: MemLdRfVar from_stack_1.global_160
  loc_5DE24E: NewIfNullAd
  loc_5DE251: FLdRfVar var_88
  loc_5DE254: ForEachCollObj
  loc_5DE25C: FLdRfVar var_90
  loc_5DE25F: FLdPr var_88
  loc_5DE262: Me = from_stack_1
  loc_5DE267: FLdZeroAd var_90
  loc_5DE26A: CVarStr var_A0
  loc_5DE26D: FLdPr Me
  loc_5DE270: MemLdRfVar from_stack_1.global_160
  loc_5DE273: NewIfNullPr Collection
  loc_5DE276: Collection.Remove(from_stack_1)
  loc_5DE27B: FFree1Var var_A0 = ""
  loc_5DE27E: FLdRfVar var_88
  loc_5DE281: NextEachCollObj
  loc_5DE289: ExitProcHresult
End Function

Private Function Proc_100_55_6B92B0() '6B92B0
  'Data Table: 440CF4
  loc_6B8A94: LitI2_Byte 0
  loc_6B8A96: FStI2 var_86
  loc_6B8A99: from_stack_1v = Proc_100_66_69DA98()
  loc_6B8A9E: FLdPr Me
  loc_6B8AA1: MemLdRfVar from_stack_1.global_160
  loc_6B8AA4: NewIfNullAd
  loc_6B8AA7: FLdRfVar var_90
  loc_6B8AAA: ForEachCollObj
  loc_6B8AB2: LitStr "INSERT INTO rc_total_fms(cod_prod_fms, fms_vol, fms_vol_round, ppu_diff, ppu_diff_round, amount, amount_round, consign, Tipo) "
  loc_6B8AB5: FStStrCopy var_8C
  loc_6B8AB8: FLdRfVar var_BC
  loc_6B8ABB: FLdPr var_90
  loc_6B8ABE: Me = from_stack_1
  loc_6B8AC3: FLdZeroAd var_BC
  loc_6B8AC6: FStStr var_94
  loc_6B8AC9: FLdRfVar var_BC
  loc_6B8ACC: FLdPr var_90
  loc_6B8ACF: Me = from_stack_1
  loc_6B8AD4: ILdRf var_BC
  loc_6B8AD7: FnLenStr
  loc_6B8AD8: LitI4 5
  loc_6B8ADD: GtI4
  loc_6B8ADE: FFree1Str var_BC
  loc_6B8AE1: BranchF loc_6B9119
  loc_6B8AE4: FLdRfVar var_BC
  loc_6B8AE7: FLdPr var_90
  loc_6B8AEA: Me = from_stack_1
  loc_6B8AEF: LitI4 5
  loc_6B8AF4: FLdZeroAd var_BC
  loc_6B8AF7: CVarStr var_CC
  loc_6B8AFA: FLdRfVar var_DC
  loc_6B8AFD: ImpAdCallFPR4  = Right(, )
  loc_6B8B02: FLdRfVar var_DC
  loc_6B8B05: LitVarStr var_EC, "AHand"
  loc_6B8B0A: HardType
  loc_6B8B0B: EqVarBool
  loc_6B8B0D: FFreeVar var_CC = ""
  loc_6B8B14: BranchF loc_6B8B64
  loc_6B8B17: FLdRfVar var_BC
  loc_6B8B1A: FLdPr var_90
  loc_6B8B1D: Me = from_stack_1
  loc_6B8B22: FLdRfVar var_100
  loc_6B8B25: FLdPr var_90
  loc_6B8B28: Me = from_stack_1
  loc_6B8B2D: ILdRf var_100
  loc_6B8B30: FnLenStr
  loc_6B8B31: LitI4 5
  loc_6B8B36: SubI4
  loc_6B8B37: CVarI4
  loc_6B8B3B: LitI4 1
  loc_6B8B40: FLdZeroAd var_BC
  loc_6B8B43: CVarStr var_CC
  loc_6B8B46: FLdRfVar var_FC
  loc_6B8B49: ImpAdCallFPR4  = Mid(, , )
  loc_6B8B4E: FLdRfVar var_FC
  loc_6B8B51: CStrVarTmp
  loc_6B8B52: FStStr var_94
  loc_6B8B55: FFree1Str var_100
  loc_6B8B58: FFreeVar var_CC = "": var_DC = ""
  loc_6B8B61: Branch loc_6B9119
  loc_6B8B64: FLdRfVar var_BC
  loc_6B8B67: FLdPr var_90
  loc_6B8B6A: Me = from_stack_1
  loc_6B8B6F: LitI4 5
  loc_6B8B74: FLdZeroAd var_BC
  loc_6B8B77: CVarStr var_CC
  loc_6B8B7A: FLdRfVar var_DC
  loc_6B8B7D: ImpAdCallFPR4  = Right(, )
  loc_6B8B82: FLdRfVar var_DC
  loc_6B8B85: LitVarStr var_EC, "AEsso"
  loc_6B8B8A: HardType
  loc_6B8B8B: EqVarBool
  loc_6B8B8D: FFreeVar var_CC = ""
  loc_6B8B94: BranchF loc_6B8BE4
  loc_6B8B97: FLdRfVar var_BC
  loc_6B8B9A: FLdPr var_90
  loc_6B8B9D: Me = from_stack_1
  loc_6B8BA2: FLdRfVar var_100
  loc_6B8BA5: FLdPr var_90
  loc_6B8BA8: Me = from_stack_1
  loc_6B8BAD: ILdRf var_100
  loc_6B8BB0: FnLenStr
  loc_6B8BB1: LitI4 5
  loc_6B8BB6: SubI4
  loc_6B8BB7: CVarI4
  loc_6B8BBB: LitI4 1
  loc_6B8BC0: FLdZeroAd var_BC
  loc_6B8BC3: CVarStr var_CC
  loc_6B8BC6: FLdRfVar var_FC
  loc_6B8BC9: ImpAdCallFPR4  = Mid(, , )
  loc_6B8BCE: FLdRfVar var_FC
  loc_6B8BD1: CStrVarTmp
  loc_6B8BD2: FStStr var_94
  loc_6B8BD5: FFree1Str var_100
  loc_6B8BD8: FFreeVar var_CC = "": var_DC = ""
  loc_6B8BE1: Branch loc_6B9119
  loc_6B8BE4: FLdRfVar var_BC
  loc_6B8BE7: FLdPr var_90
  loc_6B8BEA: Me = from_stack_1
  loc_6B8BEF: LitI4 5
  loc_6B8BF4: FLdZeroAd var_BC
  loc_6B8BF7: CVarStr var_CC
  loc_6B8BFA: FLdRfVar var_DC
  loc_6B8BFD: ImpAdCallFPR4  = Right(, )
  loc_6B8C02: FLdRfVar var_DC
  loc_6B8C05: LitVarStr var_EC, "TDesc"
  loc_6B8C0A: HardType
  loc_6B8C0B: EqVarBool
  loc_6B8C0D: FFreeVar var_CC = ""
  loc_6B8C14: BranchF loc_6B8C64
  loc_6B8C17: FLdRfVar var_BC
  loc_6B8C1A: FLdPr var_90
  loc_6B8C1D: Me = from_stack_1
  loc_6B8C22: FLdRfVar var_100
  loc_6B8C25: FLdPr var_90
  loc_6B8C28: Me = from_stack_1
  loc_6B8C2D: ILdRf var_100
  loc_6B8C30: FnLenStr
  loc_6B8C31: LitI4 5
  loc_6B8C36: SubI4
  loc_6B8C37: CVarI4
  loc_6B8C3B: LitI4 1
  loc_6B8C40: FLdZeroAd var_BC
  loc_6B8C43: CVarStr var_CC
  loc_6B8C46: FLdRfVar var_FC
  loc_6B8C49: ImpAdCallFPR4  = Mid(, , )
  loc_6B8C4E: FLdRfVar var_FC
  loc_6B8C51: CStrVarTmp
  loc_6B8C52: FStStr var_94
  loc_6B8C55: FFree1Str var_100
  loc_6B8C58: FFreeVar var_CC = "": var_DC = ""
  loc_6B8C61: Branch loc_6B9119
  loc_6B8C64: FLdRfVar var_BC
  loc_6B8C67: FLdPr var_90
  loc_6B8C6A: Me = from_stack_1
  loc_6B8C6F: LitI4 4
  loc_6B8C74: FLdZeroAd var_BC
  loc_6B8C77: CVarStr var_CC
  loc_6B8C7A: FLdRfVar var_DC
  loc_6B8C7D: ImpAdCallFPR4  = Right(, )
  loc_6B8C82: FLdRfVar var_DC
  loc_6B8C85: LitVarStr var_EC, "Hand"
  loc_6B8C8A: HardType
  loc_6B8C8B: EqVarBool
  loc_6B8C8D: FFreeVar var_CC = ""
  loc_6B8C94: BranchF loc_6B8CE4
  loc_6B8C97: FLdRfVar var_BC
  loc_6B8C9A: FLdPr var_90
  loc_6B8C9D: Me = from_stack_1
  loc_6B8CA2: FLdRfVar var_100
  loc_6B8CA5: FLdPr var_90
  loc_6B8CA8: Me = from_stack_1
  loc_6B8CAD: ILdRf var_100
  loc_6B8CB0: FnLenStr
  loc_6B8CB1: LitI4 4
  loc_6B8CB6: SubI4
  loc_6B8CB7: CVarI4
  loc_6B8CBB: LitI4 1
  loc_6B8CC0: FLdZeroAd var_BC
  loc_6B8CC3: CVarStr var_CC
  loc_6B8CC6: FLdRfVar var_FC
  loc_6B8CC9: ImpAdCallFPR4  = Mid(, , )
  loc_6B8CCE: FLdRfVar var_FC
  loc_6B8CD1: CStrVarTmp
  loc_6B8CD2: FStStr var_94
  loc_6B8CD5: FFree1Str var_100
  loc_6B8CD8: FFreeVar var_CC = "": var_DC = ""
  loc_6B8CE1: Branch loc_6B9119
  loc_6B8CE4: FLdRfVar var_BC
  loc_6B8CE7: FLdPr var_90
  loc_6B8CEA: Me = from_stack_1
  loc_6B8CEF: LitI4 4
  loc_6B8CF4: FLdZeroAd var_BC
  loc_6B8CF7: CVarStr var_CC
  loc_6B8CFA: FLdRfVar var_DC
  loc_6B8CFD: ImpAdCallFPR4  = Right(, )
  loc_6B8D02: FLdRfVar var_DC
  loc_6B8D05: LitVarStr var_EC, "Esso"
  loc_6B8D0A: HardType
  loc_6B8D0B: EqVarBool
  loc_6B8D0D: FFreeVar var_CC = ""
  loc_6B8D14: BranchF loc_6B8D64
  loc_6B8D17: FLdRfVar var_BC
  loc_6B8D1A: FLdPr var_90
  loc_6B8D1D: Me = from_stack_1
  loc_6B8D22: FLdRfVar var_100
  loc_6B8D25: FLdPr var_90
  loc_6B8D28: Me = from_stack_1
  loc_6B8D2D: ILdRf var_100
  loc_6B8D30: FnLenStr
  loc_6B8D31: LitI4 4
  loc_6B8D36: SubI4
  loc_6B8D37: CVarI4
  loc_6B8D3B: LitI4 1
  loc_6B8D40: FLdZeroAd var_BC
  loc_6B8D43: CVarStr var_CC
  loc_6B8D46: FLdRfVar var_FC
  loc_6B8D49: ImpAdCallFPR4  = Mid(, , )
  loc_6B8D4E: FLdRfVar var_FC
  loc_6B8D51: CStrVarTmp
  loc_6B8D52: FStStr var_94
  loc_6B8D55: FFree1Str var_100
  loc_6B8D58: FFreeVar var_CC = "": var_DC = ""
  loc_6B8D61: Branch loc_6B9119
  loc_6B8D64: FLdRfVar var_BC
  loc_6B8D67: FLdPr var_90
  loc_6B8D6A: Me = from_stack_1
  loc_6B8D6F: LitI4 3
  loc_6B8D74: FLdZeroAd var_BC
  loc_6B8D77: CVarStr var_CC
  loc_6B8D7A: FLdRfVar var_DC
  loc_6B8D7D: ImpAdCallFPR4  = Right(, )
  loc_6B8D82: FLdRfVar var_DC
  loc_6B8D85: LitVarStr var_EC, "C/R"
  loc_6B8D8A: HardType
  loc_6B8D8B: EqVarBool
  loc_6B8D8D: FFreeVar var_CC = ""
  loc_6B8D94: BranchF loc_6B8DE4
  loc_6B8D97: FLdRfVar var_BC
  loc_6B8D9A: FLdPr var_90
  loc_6B8D9D: Me = from_stack_1
  loc_6B8DA2: FLdRfVar var_100
  loc_6B8DA5: FLdPr var_90
  loc_6B8DA8: Me = from_stack_1
  loc_6B8DAD: ILdRf var_100
  loc_6B8DB0: FnLenStr
  loc_6B8DB1: LitI4 3
  loc_6B8DB6: SubI4
  loc_6B8DB7: CVarI4
  loc_6B8DBB: LitI4 1
  loc_6B8DC0: FLdZeroAd var_BC
  loc_6B8DC3: CVarStr var_CC
  loc_6B8DC6: FLdRfVar var_FC
  loc_6B8DC9: ImpAdCallFPR4  = Mid(, , )
  loc_6B8DCE: FLdRfVar var_FC
  loc_6B8DD1: CStrVarTmp
  loc_6B8DD2: FStStr var_94
  loc_6B8DD5: FFree1Str var_100
  loc_6B8DD8: FFreeVar var_CC = "": var_DC = ""
  loc_6B8DE1: Branch loc_6B9119
  loc_6B8DE4: FLdRfVar var_BC
  loc_6B8DE7: FLdPr var_90
  loc_6B8DEA: Me = from_stack_1
  loc_6B8DEF: LitI4 5
  loc_6B8DF4: FLdZeroAd var_BC
  loc_6B8DF7: CVarStr var_CC
  loc_6B8DFA: FLdRfVar var_DC
  loc_6B8DFD: ImpAdCallFPR4  = Right(, )
  loc_6B8E02: FLdRfVar var_DC
  loc_6B8E05: LitVarStr var_EC, "DescT"
  loc_6B8E0A: HardType
  loc_6B8E0B: EqVarBool
  loc_6B8E0D: FFreeVar var_CC = ""
  loc_6B8E14: BranchF loc_6B8F40
  loc_6B8E17: FLdRfVar var_BC
  loc_6B8E1A: FLdPr var_90
  loc_6B8E1D: Me = from_stack_1
  loc_6B8E22: FLdRfVar var_100
  loc_6B8E25: FLdPr var_90
  loc_6B8E28: Me = from_stack_1
  loc_6B8E2D: ILdRf var_100
  loc_6B8E30: FnLenStr
  loc_6B8E31: LitI4 5
  loc_6B8E36: SubI4
  loc_6B8E37: CVarI4
  loc_6B8E3B: LitI4 1
  loc_6B8E40: FLdZeroAd var_BC
  loc_6B8E43: CVarStr var_CC
  loc_6B8E46: FLdRfVar var_FC
  loc_6B8E49: ImpAdCallFPR4  = Mid(, , )
  loc_6B8E4E: FLdRfVar var_FC
  loc_6B8E51: CStrVarTmp
  loc_6B8E52: FStStr var_94
  loc_6B8E55: FFree1Str var_100
  loc_6B8E58: FFreeVar var_CC = "": var_DC = ""
  loc_6B8E61: FLdRfVar var_108
  loc_6B8E64: FLdPr var_90
  loc_6B8E6C: FLdFPR8 var_108
  loc_6B8E6F: LitI2_Byte &HFF
  loc_6B8E71: CR8I2
  loc_6B8E72: MulR8
  loc_6B8E73: FStFPR8 var_9C
  loc_6B8E76: FLdRfVar var_108
  loc_6B8E79: FLdPr var_90
  loc_6B8E7C: Reset
  loc_6B8E81: FLdFPR8 var_108
  loc_6B8E84: LitI2_Byte &HFF
  loc_6B8E86: CR8I2
  loc_6B8E87: MulR8
  loc_6B8E88: FStFPR8 var_A4
  loc_6B8E8B: FLdRfVar var_108
  loc_6B8E8E: FLdPr var_90
  loc_6B8E91: Call 0.Method_Proc_100_55_6B92B0C ()
  loc_6B8E96: FLdFPR8 var_108
  loc_6B8E99: LitI2_Byte &HFF
  loc_6B8E9B: CR8I2
  loc_6B8E9C: MulR8
  loc_6B8E9D: FStFPR8 var_AC
  loc_6B8EA0: FLdRfVar var_108
  loc_6B8EA3: FLdPr var_90
  loc_6B8EA6: Me.Caption = from_stack_1
  loc_6B8EAB: FLdFPR8 var_108
  loc_6B8EAE: LitI2_Byte &HFF
  loc_6B8EB0: CR8I2
  loc_6B8EB1: MulR8
  loc_6B8EB2: FStFPR8 var_B4
  loc_6B8EB5: FLdRfVar var_108
  loc_6B8EB8: FLdPr var_90
  loc_6B8EC0: FLdFPR8 var_108
  loc_6B8EC3: LitI2_Byte &HFF
  loc_6B8EC5: CR8I2
  loc_6B8EC6: MulR8
  loc_6B8EC7: FLdFPR8 var_9C
  loc_6B8ECA: AddR8
  loc_6B8ECB: PopTmpLdAdFPR8
  loc_6B8ECF: FLdPr var_90
  loc_6B8ED7: FLdRfVar var_108
  loc_6B8EDA: FLdPr var_90
  loc_6B8EDD: Reset
  loc_6B8EE2: FLdFPR8 var_108
  loc_6B8EE5: LitI2_Byte &HFF
  loc_6B8EE7: CR8I2
  loc_6B8EE8: MulR8
  loc_6B8EE9: FLdFPR8 var_A4
  loc_6B8EEC: AddR8
  loc_6B8EED: PopTmpLdAdFPR8
  loc_6B8EF1: FLdPr var_90
  loc_6B8EF4: Set from_stack_2 = Me(from_stack_1)
  loc_6B8EF9: FLdRfVar var_108
  loc_6B8EFC: FLdPr var_90
  loc_6B8EFF: Call 0.Method_Proc_100_55_6B92B0C ()
  loc_6B8F04: FLdFPR8 var_108
  loc_6B8F07: LitI2_Byte &HFF
  loc_6B8F09: CR8I2
  loc_6B8F0A: MulR8
  loc_6B8F0B: FLdFPR8 var_AC
  loc_6B8F0E: AddR8
  loc_6B8F0F: PopTmpLdAdFPR8
  loc_6B8F13: FLdPr var_90
  loc_6B8F16:  = Me.Caption
  loc_6B8F1B: FLdRfVar var_108
  loc_6B8F1E: FLdPr var_90
  loc_6B8F21: Me.Caption = from_stack_1
  loc_6B8F26: FLdFPR8 var_108
  loc_6B8F29: LitI2_Byte &HFF
  loc_6B8F2B: CR8I2
  loc_6B8F2C: MulR8
  loc_6B8F2D: FLdFPR8 var_B4
  loc_6B8F30: AddR8
  loc_6B8F31: PopTmpLdAdFPR8
  loc_6B8F35: FLdPr var_90
  loc_6B8F38:  = Me.hWnd
  loc_6B8F3D: Branch loc_6B9119
  loc_6B8F40: FLdRfVar var_BC
  loc_6B8F43: FLdPr var_90
  loc_6B8F46: Me = from_stack_1
  loc_6B8F4B: LitI4 7
  loc_6B8F50: FLdZeroAd var_BC
  loc_6B8F53: CVarStr var_CC
  loc_6B8F56: FLdRfVar var_DC
  loc_6B8F59: ImpAdCallFPR4  = Right(, )
  loc_6B8F5E: FLdRfVar var_DC
  loc_6B8F61: LitVarStr var_EC, "BTDtAnu"
  loc_6B8F66: HardType
  loc_6B8F67: EqVarBool
  loc_6B8F69: FFreeVar var_CC = ""
  loc_6B8F70: BranchF loc_6B909C
  loc_6B8F73: FLdRfVar var_BC
  loc_6B8F76: FLdPr var_90
  loc_6B8F79: Me = from_stack_1
  loc_6B8F7E: FLdRfVar var_100
  loc_6B8F81: FLdPr var_90
  loc_6B8F84: Me = from_stack_1
  loc_6B8F89: ILdRf var_100
  loc_6B8F8C: FnLenStr
  loc_6B8F8D: LitI4 7
  loc_6B8F92: SubI4
  loc_6B8F93: CVarI4
  loc_6B8F97: LitI4 1
  loc_6B8F9C: FLdZeroAd var_BC
  loc_6B8F9F: CVarStr var_CC
  loc_6B8FA2: FLdRfVar var_FC
  loc_6B8FA5: ImpAdCallFPR4  = Mid(, , )
  loc_6B8FAA: FLdRfVar var_FC
  loc_6B8FAD: CStrVarTmp
  loc_6B8FAE: FStStr var_94
  loc_6B8FB1: FFree1Str var_100
  loc_6B8FB4: FFreeVar var_CC = "": var_DC = ""
  loc_6B8FBD: FLdRfVar var_108
  loc_6B8FC0: FLdPr var_90
  loc_6B8FC8: FLdFPR8 var_108
  loc_6B8FCB: LitI2_Byte &HFF
  loc_6B8FCD: CR8I2
  loc_6B8FCE: MulR8
  loc_6B8FCF: FStFPR8 var_9C
  loc_6B8FD2: FLdRfVar var_108
  loc_6B8FD5: FLdPr var_90
  loc_6B8FD8: Reset
  loc_6B8FDD: FLdFPR8 var_108
  loc_6B8FE0: LitI2_Byte &HFF
  loc_6B8FE2: CR8I2
  loc_6B8FE3: MulR8
  loc_6B8FE4: FStFPR8 var_A4
  loc_6B8FE7: FLdRfVar var_108
  loc_6B8FEA: FLdPr var_90
  loc_6B8FED: Call 0.Method_Proc_100_55_6B92B0C ()
  loc_6B8FF2: FLdFPR8 var_108
  loc_6B8FF5: LitI2_Byte &HFF
  loc_6B8FF7: CR8I2
  loc_6B8FF8: MulR8
  loc_6B8FF9: FStFPR8 var_AC
  loc_6B8FFC: FLdRfVar var_108
  loc_6B8FFF: FLdPr var_90
  loc_6B9002: Me.Caption = from_stack_1
  loc_6B9007: FLdFPR8 var_108
  loc_6B900A: LitI2_Byte &HFF
  loc_6B900C: CR8I2
  loc_6B900D: MulR8
  loc_6B900E: FStFPR8 var_B4
  loc_6B9011: FLdRfVar var_108
  loc_6B9014: FLdPr var_90
  loc_6B901C: FLdFPR8 var_108
  loc_6B901F: LitI2_Byte &HFF
  loc_6B9021: CR8I2
  loc_6B9022: MulR8
  loc_6B9023: FLdFPR8 var_9C
  loc_6B9026: AddR8
  loc_6B9027: PopTmpLdAdFPR8
  loc_6B902B: FLdPr var_90
  loc_6B9033: FLdRfVar var_108
  loc_6B9036: FLdPr var_90
  loc_6B9039: Reset
  loc_6B903E: FLdFPR8 var_108
  loc_6B9041: LitI2_Byte &HFF
  loc_6B9043: CR8I2
  loc_6B9044: MulR8
  loc_6B9045: FLdFPR8 var_A4
  loc_6B9048: AddR8
  loc_6B9049: PopTmpLdAdFPR8
  loc_6B904D: FLdPr var_90
  loc_6B9050: Set from_stack_2 = Me(from_stack_1)
  loc_6B9055: FLdRfVar var_108
  loc_6B9058: FLdPr var_90
  loc_6B905B: Call 0.Method_Proc_100_55_6B92B0C ()
  loc_6B9060: FLdFPR8 var_108
  loc_6B9063: LitI2_Byte &HFF
  loc_6B9065: CR8I2
  loc_6B9066: MulR8
  loc_6B9067: FLdFPR8 var_AC
  loc_6B906A: AddR8
  loc_6B906B: PopTmpLdAdFPR8
  loc_6B906F: FLdPr var_90
  loc_6B9072:  = Me.Caption
  loc_6B9077: FLdRfVar var_108
  loc_6B907A: FLdPr var_90
  loc_6B907D: Me.Caption = from_stack_1
  loc_6B9082: FLdFPR8 var_108
  loc_6B9085: LitI2_Byte &HFF
  loc_6B9087: CR8I2
  loc_6B9088: MulR8
  loc_6B9089: FLdFPR8 var_B4
  loc_6B908C: AddR8
  loc_6B908D: PopTmpLdAdFPR8
  loc_6B9091: FLdPr var_90
  loc_6B9094:  = Me.hWnd
  loc_6B9099: Branch loc_6B9119
  loc_6B909C: FLdRfVar var_BC
  loc_6B909F: FLdPr var_90
  loc_6B90A2: Me = from_stack_1
  loc_6B90A7: LitI4 5
  loc_6B90AC: FLdZeroAd var_BC
  loc_6B90AF: CVarStr var_CC
  loc_6B90B2: FLdRfVar var_DC
  loc_6B90B5: ImpAdCallFPR4  = Right(, )
  loc_6B90BA: FLdRfVar var_DC
  loc_6B90BD: LitVarStr var_EC, "AnuTD"
  loc_6B90C2: HardType
  loc_6B90C3: EqVarBool
  loc_6B90C5: FFreeVar var_CC = ""
  loc_6B90CC: BranchF loc_6B9119
  loc_6B90CF: FLdRfVar var_BC
  loc_6B90D2: FLdPr var_90
  loc_6B90D5: Me = from_stack_1
  loc_6B90DA: FLdRfVar var_100
  loc_6B90DD: FLdPr var_90
  loc_6B90E0: Me = from_stack_1
  loc_6B90E5: ILdRf var_100
  loc_6B90E8: FnLenStr
  loc_6B90E9: LitI4 5
  loc_6B90EE: SubI4
  loc_6B90EF: CVarI4
  loc_6B90F3: LitI4 1
  loc_6B90F8: FLdZeroAd var_BC
  loc_6B90FB: CVarStr var_CC
  loc_6B90FE: FLdRfVar var_FC
  loc_6B9101: ImpAdCallFPR4  = Mid(, , )
  loc_6B9106: FLdRfVar var_FC
  loc_6B9109: CStrVarTmp
  loc_6B910A: FStStr var_94
  loc_6B910D: FFree1Str var_100
  loc_6B9110: FFreeVar var_CC = "": var_DC = ""
  loc_6B9119: FLdRfVar var_108
  loc_6B911C: FLdPr var_90
  loc_6B9124: FLdFPR8 var_108
  loc_6B9127: LitI2_Byte 0
  loc_6B9129: CR8I2
  loc_6B912A: NeR8
  loc_6B912B: BranchF loc_6B9297
  loc_6B912E: ILdRf var_8C
  loc_6B9131: LitStr "VALUES('"
  loc_6B9134: ConcatStr
  loc_6B9135: FStStrNoPop var_BC
  loc_6B9138: ILdRf var_94
  loc_6B913B: ConcatStr
  loc_6B913C: FStStrNoPop var_100
  loc_6B913F: LitStr "', "
  loc_6B9142: ConcatStr
  loc_6B9143: FStStrNoPop var_114
  loc_6B9146: FLdRfVar var_108
  loc_6B9149: FLdPr var_90
  loc_6B9151: FLdFPR8 var_108
  loc_6B9154: CStrR8
  loc_6B9156: FStStrNoPop var_118
  loc_6B9159: ConcatStr
  loc_6B915A: FStStrNoPop var_11C
  loc_6B915D: LitStr ", "
  loc_6B9160: ConcatStr
  loc_6B9161: FStStrNoPop var_120
  loc_6B9164: FLdRfVar var_110
  loc_6B9167: FLdPr var_90
  loc_6B916A: Reset
  loc_6B916F: FLdFPR8 var_110
  loc_6B9172: CStrR8
  loc_6B9174: FStStrNoPop var_124
  loc_6B9177: ConcatStr
  loc_6B9178: FStStrNoPop var_128
  loc_6B917B: LitStr ", "
  loc_6B917E: ConcatStr
  loc_6B917F: FStStr var_8C
  loc_6B9182: FFreeStr var_BC = "": var_100 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_6B9195: ILdRf var_8C
  loc_6B9198: FLdRfVar var_108
  loc_6B919B: FLdPr var_90
  loc_6B919E: Call 0.Method_arg_5C ()
  loc_6B91A3: FLdFPR8 var_108
  loc_6B91A6: CStrR8
  loc_6B91A8: FStStrNoPop var_BC
  loc_6B91AB: ConcatStr
  loc_6B91AC: FStStrNoPop var_100
  loc_6B91AF: LitStr ", "
  loc_6B91B2: ConcatStr
  loc_6B91B3: FStStrNoPop var_114
  loc_6B91B6: FLdRfVar var_110
  loc_6B91B9: FLdPr var_90
  loc_6B91BC: Me.BackColor = from_stack_1
  loc_6B91C1: FLdFPR8 var_110
  loc_6B91C4: CStrR8
  loc_6B91C6: FStStrNoPop var_118
  loc_6B91C9: ConcatStr
  loc_6B91CA: FStStrNoPop var_11C
  loc_6B91CD: LitStr ", "
  loc_6B91D0: ConcatStr
  loc_6B91D1: FStStrNoPop var_120
  loc_6B91D4: FLdRfVar var_130
  loc_6B91D7: FLdPr var_90
  loc_6B91DA: Call 0.Method_Proc_100_55_6B92B0C ()
  loc_6B91DF: FLdFPR8 var_130
  loc_6B91E2: CStrR8
  loc_6B91E4: FStStrNoPop var_124
  loc_6B91E7: ConcatStr
  loc_6B91E8: FStStrNoPop var_128
  loc_6B91EB: LitStr ", "
  loc_6B91EE: ConcatStr
  loc_6B91EF: FStStr var_8C
  loc_6B91F2: FFreeStr var_BC = "": var_100 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_6B9205: ILdRf var_8C
  loc_6B9208: FLdRfVar var_108
  loc_6B920B: FLdPr var_90
  loc_6B920E: Me.Caption = from_stack_1
  loc_6B9213: FLdFPR8 var_108
  loc_6B9216: CStrR8
  loc_6B9218: FStStrNoPop var_BC
  loc_6B921B: ConcatStr
  loc_6B921C: FStStrNoPop var_100
  loc_6B921F: LitStr ", '"
  loc_6B9222: ConcatStr
  loc_6B9223: CVarStr var_CC
  loc_6B9226: FLdRfVar var_132
  loc_6B9229: FLdPr var_90
  loc_6B9231: FLdI2 var_132
  loc_6B9234: CVarBoolI2 var_EC
  loc_6B9238: ConcatVar var_DC
  loc_6B923C: LitVarStr var_144, "', '"
  loc_6B9241: ConcatVar var_FC
  loc_6B9245: FLdRfVar var_114
  loc_6B9248: FLdPr var_90
  loc_6B924B:  = Forms
  loc_6B9250: FLdZeroAd var_114
  loc_6B9253: CVarStr var_154
  loc_6B9256: ConcatVar var_164
  loc_6B925A: LitVarStr var_174, "' )"
  loc_6B925F: ConcatVar var_184
  loc_6B9263: CStrVarTmp
  loc_6B9264: FStStr var_8C
  loc_6B9267: FFreeStr var_BC = ""
  loc_6B926E: FFreeVar var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_154 = "": var_164 = ""
  loc_6B927F: FLdRfVar var_132
  loc_6B9282: FLdRfVar var_8C
  loc_6B9285: from_stack_2v = Proc_100_58_5F2E9C(from_stack_1v)
  loc_6B928A: FLdI2 var_132
  loc_6B928D: NotI4
  loc_6B928E: BranchF loc_6B9297
  loc_6B9291: ExitProcCbHresult
  loc_6B9297: FLdRfVar var_90
  loc_6B929A: NextEachCollObj
  loc_6B92A2: LitI2_Byte &HFF
  loc_6B92A4: FStI2 var_86
  loc_6B92A7: ExitProcCbHresult
End Function

Private Function Proc_100_56_62EB8C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '62EB8C
  'Data Table: 440CF4
  loc_62E9DC: OnErrorGoto loc_62EB54
  loc_62E9E1: ILdRf arg_20
  loc_62E9E4: CVarRef
  loc_62E9E9: FLdRfVar var_C0
  loc_62E9EC: ImpAdCallFPR4  = Trim()
  loc_62E9F1: FLdRfVar var_C8
  loc_62E9F4: ILdRf arg_1C
  loc_62E9F7: FLdRfVar var_C0
  loc_62E9FA: CStrVarTmp
  loc_62E9FB: PopTmpLdAdStr
  loc_62E9FF: ILdRf arg_C
  loc_62EA02: from_stack_4v = Proc_100_51_66C854(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_62EA07: FLdZeroAd var_C8
  loc_62EA0A: FStAdFunc var_98
  loc_62EA0D: FFree1Str var_C4
  loc_62EA10: FFree1Var var_C0 = ""
  loc_62EA15: FLdRfVar var_D0
  loc_62EA18: ILdRf arg_1C
  loc_62EA1B: ILdRf arg_18
  loc_62EA1E: from_stack_3v = Proc_100_57_5F4C50(from_stack_1v, from_stack_2v)
  loc_62EA23: FLdFPR8 var_D0
  loc_62EA26: FStFPR8 var_A0
  loc_62EA2B: ILdRf var_98
  loc_62EA2E: LitNothing
  loc_62EA30: Is
  loc_62EA32: NotI4
  loc_62EA33: FLdRfVar var_D2
  loc_62EA36: FLdPr var_98
  loc_62EA3E: FLdI2 var_D2
  loc_62EA41: AndI4
  loc_62EA42: FLdFPR8 var_A0
  loc_62EA45: LitI2_Byte 2
  loc_62EA47: CR8I2
  loc_62EA48: EqR4
  loc_62EA49: NotI4
  loc_62EA4A: AndI4
  loc_62EA4B: BranchF loc_62EB52
  loc_62EA50: ILdFPR8 arg_10
  loc_62EA53: ILdFPR8 arg_14
  loc_62EA56: MulR8
  loc_62EA57: FLdFPR8 var_A0
  loc_62EA5A: MulR8
  loc_62EA5B: PopTmpLdAdFPR8
  loc_62EA5F: FLdPr var_98
  loc_62EA62:  = Me.Caption
  loc_62EA69: ILdFPR8 arg_10
  loc_62EA6C: FLdFPR8 var_A0
  loc_62EA6F: MulR8
  loc_62EA70: PopTmpLdAdFPR8
  loc_62EA74: FLdPr var_98
  loc_62EA7E: ILdI4 arg_20
  loc_62EA81: FStStrCopy var_C4
  loc_62EA84: FLdRfVar var_C4
  loc_62EA87: FLdPr var_98
  loc_62EA8F: FFree1Str var_C4
  loc_62EA94: FLdFPR8 var_A0
  loc_62EA97: LitI2_Byte &HFF
  loc_62EA99: CR8I2
  loc_62EA9A: EqR4
  loc_62EA9B: NotI4
  loc_62EA9C: BranchF loc_62EAB4
  loc_62EAA1: ILdFPR8 arg_14
  loc_62EAA4: FLdFPR8 var_A0
  loc_62EAA7: MulR8
  loc_62EAA8: PopTmpLdAdFPR8
  loc_62EAAC: FLdPr var_98
  loc_62EAAF:  = Me.BackColor
  loc_62EAB6: ILdRf arg_10
  loc_62EAB9: ImpAdCallI2 Proc_101_21_5E9870()
  loc_62EABE: FStR4 var_D8
  loc_62EAC1: ILdRf var_D8
  loc_62EAC4: CR8I4
  loc_62EAC5: ILdFPR8 arg_14
  loc_62EAC8: MulR8
  loc_62EAC9: FLdFPR8 var_A0
  loc_62EACC: MulR8
  loc_62EACD: PopTmpLdAdFPR8
  loc_62EAD1: FLdPr var_98
  loc_62EAD4:  = Me.hWnd
  loc_62EADB: ILdRf arg_10
  loc_62EADE: ImpAdCallI2 Proc_101_21_5E9870()
  loc_62EAE3: FStR4 var_D8
  loc_62EAE6: ILdRf var_D8
  loc_62EAE9: CR8I4
  loc_62EAEA: FLdFPR8 var_A0
  loc_62EAED: MulR8
  loc_62EAEE: PopTmpLdAdFPR8
  loc_62EAF2: FLdPr var_98
  loc_62EAF5: Set from_stack_2 = Me(from_stack_1)
  loc_62EAFC: ILdI4 arg_20
  loc_62EAFF: FStStrCopy var_C4
  loc_62EB02: FLdRfVar var_C4
  loc_62EB05: FLdPr var_98
  loc_62EB0D: FFree1Str var_C4
  loc_62EB12: FLdFPR8 var_A0
  loc_62EB15: LitI2_Byte &HFF
  loc_62EB17: CR8I2
  loc_62EB18: EqR4
  loc_62EB19: NotI4
  loc_62EB1A: BranchF loc_62EB52
  loc_62EB1F: ILdRf arg_10
  loc_62EB22: ImpAdCallI2 Proc_101_21_5E9870()
  loc_62EB27: FStR4 var_D8
  loc_62EB2A: ILdRf arg_10
  loc_62EB2D: ImpAdCallI2 Proc_101_21_5E9870()
  loc_62EB32: FStR4 var_DC
  loc_62EB35: ILdRf var_D8
  loc_62EB38: CR8I4
  loc_62EB39: ILdFPR8 arg_14
  loc_62EB3C: MulR8
  loc_62EB3D: ILdRf var_DC
  loc_62EB40: CR8I4
  loc_62EB41: DivR8
  loc_62EB42: FLdFPR8 var_A0
  loc_62EB45: MulR8
  loc_62EB46: PopTmpLdAdFPR8
  loc_62EB4A: FLdPr var_98
  loc_62EB4D:  = Me.ForeColor
  loc_62EB56: FLdRfVar var_D8
  loc_62EB59: ImpAdCallI2 Err 'rtcErrObj
  loc_62EB5E: FStAdFunc var_C8
  loc_62EB61: FLdPr var_C8
  loc_62EB64:  = Err.Number
  loc_62EB69: ILdRf var_D8
  loc_62EB6C: LitI4 6
  loc_62EB71: EqI4
  loc_62EB72: FFree1Ad var_C8
  loc_62EB75: BranchF loc_62EB86
  loc_62EB7A: LitI2_Byte 1
  loc_62EB7C: CR8I2
  loc_62EB7D: IStFPR8 arg_10
  loc_62EB82: Resume
  loc_62EB8A: ExitProcHresult
End Function

Private Function Proc_100_57_5F4C50(arg_C, arg_10) '5F4C50
  'Data Table: 440CF4
  loc_5F4BA0: LitVarI2 var_C4, 3
  loc_5F4BA5: LitI4 1
  loc_5F4BAA: ILdRf arg_C
  loc_5F4BAD: CVarRef
  loc_5F4BB2: FLdRfVar var_D4
  loc_5F4BB5: ImpAdCallFPR4  = Mid(, , )
  loc_5F4BBA: FLdRfVar var_D4
  loc_5F4BBD: FStVar var_E4
  loc_5F4BC1: FFree1Var var_C4 = ""
  loc_5F4BC4: FLdRfVar var_E4
  loc_5F4BC7: LitVarStr var_A4, "002"
  loc_5F4BCC: HardType
  loc_5F4BCD: EqVarBool
  loc_5F4BCF: BranchF loc_5F4BDB
  loc_5F4BD2: LitI2_Byte &HFF
  loc_5F4BD4: CR8I2
  loc_5F4BD5: FStFPR8 var_94
  loc_5F4BD8: Branch loc_5F4C44
  loc_5F4BDB: FLdRfVar var_E4
  loc_5F4BDE: LitVarStr var_A4, "009"
  loc_5F4BE3: HardType
  loc_5F4BE4: EqVarBool
  loc_5F4BE6: BranchF loc_5F4C01
  loc_5F4BE9: ILdI2 arg_10
  loc_5F4BEC: BranchF loc_5F4BF8
  loc_5F4BEF: LitI2_Byte 1
  loc_5F4BF1: CR8I2
  loc_5F4BF2: FStFPR8 var_94
  loc_5F4BF5: Branch loc_5F4BFE
  loc_5F4BF8: LitI2_Byte &HFF
  loc_5F4BFA: CR8I2
  loc_5F4BFB: FStFPR8 var_94
  loc_5F4BFE: Branch loc_5F4C44
  loc_5F4C01: FLdRfVar var_E4
  loc_5F4C04: LitVarStr var_A4, "008"
  loc_5F4C09: HardType
  loc_5F4C0A: EqVarBool
  loc_5F4C0C: BranchF loc_5F4C27
  loc_5F4C0F: ILdI2 arg_10
  loc_5F4C12: BranchF loc_5F4C1E
  loc_5F4C15: LitI2_Byte 1
  loc_5F4C17: CR8I2
  loc_5F4C18: FStFPR8 var_94
  loc_5F4C1B: Branch loc_5F4C24
  loc_5F4C1E: LitI2_Byte &HFF
  loc_5F4C20: CR8I2
  loc_5F4C21: FStFPR8 var_94
  loc_5F4C24: Branch loc_5F4C44
  loc_5F4C27: FLdRfVar var_E4
  loc_5F4C2A: LitVarStr var_A4, "010"
  loc_5F4C2F: HardType
  loc_5F4C30: EqVarBool
  loc_5F4C32: BranchF loc_5F4C3E
  loc_5F4C35: LitI2_Byte 1
  loc_5F4C37: CR8I2
  loc_5F4C38: FStFPR8 var_94
  loc_5F4C3B: Branch loc_5F4C44
  loc_5F4C3E: LitI2_Byte 2
  loc_5F4C40: CR8I2
  loc_5F4C41: FStFPR8 var_94
  loc_5F4C44: FLdFPR8 var_94
  loc_5F4C47: FStFPR8 var_8C
  loc_5F4C4A: ExitProcCbHresult
End Function

Private Function Proc_100_58_5F2E9C(arg_C) '5F2E9C
  'Data Table: 440CF4
  loc_5F2E10: OnErrorGoto loc_5F2E30
  loc_5F2E13: LitI2_Byte &HFF
  loc_5F2E15: FStI2 var_86
  loc_5F2E18: LitVar_Missing var_98
  loc_5F2E1B: PopAdLdVar
  loc_5F2E1C: ILdI4 arg_C
  loc_5F2E1F: FLdPr Me
  loc_5F2E22: MemLdPr DBase
  loc_5F2E25: Me.Execute from_stack_1, from_stack_2
  loc_5F2E2A: ExitProcCbHresult
  loc_5F2E30: LitVar_Missing var_140
  loc_5F2E33: LitVar_Missing var_120
  loc_5F2E36: LitVar_Missing var_100
  loc_5F2E39: LitI4 0
  loc_5F2E3E: ILdI4 arg_C
  loc_5F2E41: CVarStr var_98
  loc_5F2E44: LitI4 &HD
  loc_5F2E49: FLdRfVar var_A8
  loc_5F2E4C: ImpAdCallFPR4  = Chr()
  loc_5F2E51: FLdRfVar var_A8
  loc_5F2E54: ConcatVar var_B8
  loc_5F2E58: FLdRfVar var_C0
  loc_5F2E5B: ImpAdCallI2 Err 'rtcErrObj
  loc_5F2E60: FStAdFunc var_BC
  loc_5F2E63: FLdPr var_BC
  loc_5F2E66:  = Err.Description
  loc_5F2E6B: FLdZeroAd var_C0
  loc_5F2E6E: CVarStr var_D0
  loc_5F2E71: ConcatVar var_E0
  loc_5F2E75: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F2E7A: FFree1Ad var_BC
  loc_5F2E7D: FFreeVar var_A8 = "": var_B8 = "": var_D0 = "": var_E0 = "": var_100 = "": var_120 = ""
  loc_5F2E8E: LitI2_Byte 0
  loc_5F2E90: FStI2 var_86
  loc_5F2E93: ExitProcCbHresult
End Function

Private Function Proc_100_59_619C0C(arg_C) '619C0C
  'Data Table: 440CF4
  loc_619AD8: ILdRf arg_C
  loc_619ADB: FStStrCopy var_88
  loc_619ADE: LitVarI2 var_BC, 3
  loc_619AE3: LitI4 1
  loc_619AE8: FLdRfVar var_88
  loc_619AEB: CVarRef
  loc_619AF0: FLdRfVar var_CC
  loc_619AF3: ImpAdCallFPR4  = Mid(, , )
  loc_619AF8: FLdRfVar var_CC
  loc_619AFB: CStrVarVal var_D0
  loc_619AFF: ImpAdCallFPR4 push Val()
  loc_619B04: CI2R8
  loc_619B05: FStI2 var_8A
  loc_619B08: FFree1Str var_D0
  loc_619B0B: FFreeVar var_BC = ""
  loc_619B12: LitVar_Missing var_BC
  loc_619B15: LitI4 4
  loc_619B1A: FLdRfVar var_88
  loc_619B1D: CVarRef
  loc_619B22: FLdRfVar var_CC
  loc_619B25: ImpAdCallFPR4  = Mid(, , )
  loc_619B2A: FLdRfVar var_CC
  loc_619B2D: CStrVarTmp
  loc_619B2E: FStStr var_88
  loc_619B31: FFreeVar var_BC = ""
  loc_619B38: LitI4 0
  loc_619B3D: FLdI2 var_8A
  loc_619B40: LitI2_Byte 1
  loc_619B42: SubI2
  loc_619B43: CI4UI1
  loc_619B44: FLdPr Me
  loc_619B47: MemLdRfVar from_stack_1.global_144
  loc_619B4A: Redim
  loc_619B54: FLdI2 var_8A
  loc_619B57: LitI2_Byte 1
  loc_619B59: SubI2
  loc_619B5A: FLdRfVar var_8C
  loc_619B5D: LitI2_Byte 0
  loc_619B5F: LitI2_Byte &HFF
  loc_619B61: ForStepI2 var_D4
  loc_619B67: LitVarI2 var_BC, 14
  loc_619B6C: LitI4 1
  loc_619B71: FLdRfVar var_88
  loc_619B74: CVarRef
  loc_619B79: FLdRfVar var_CC
  loc_619B7C: ImpAdCallFPR4  = Mid(, , )
  loc_619B81: FLdRfVar var_CC
  loc_619B84: CStrVarTmp
  loc_619B85: FStStrNoPop var_D0
  loc_619B88: FLdI2 var_8C
  loc_619B8B: CI4UI1
  loc_619B8C: FLdPr Me
  loc_619B8F: MemLdStr global_144
  loc_619B92: Ary1LdPr
  loc_619B93: MemStStrCopy
  loc_619B97: FFree1Str var_D0
  loc_619B9A: FFreeVar var_BC = ""
  loc_619BA1: LitVarI2 var_BC, 14
  loc_619BA6: LitI4 &HF
  loc_619BAB: FLdRfVar var_88
  loc_619BAE: CVarRef
  loc_619BB3: FLdRfVar var_CC
  loc_619BB6: ImpAdCallFPR4  = Mid(, , )
  loc_619BBB: FLdRfVar var_CC
  loc_619BBE: CStrVarTmp
  loc_619BBF: FStStrNoPop var_D0
  loc_619BC2: FLdI2 var_8C
  loc_619BC5: CI4UI1
  loc_619BC6: FLdPr Me
  loc_619BC9: MemLdStr global_144
  loc_619BCC: Ary1LdPr
  loc_619BCD: MemStStrCopy
  loc_619BD1: FFree1Str var_D0
  loc_619BD4: FFreeVar var_BC = ""
  loc_619BDB: LitVar_Missing var_BC
  loc_619BDE: LitI4 &H1D
  loc_619BE3: FLdRfVar var_88
  loc_619BE6: CVarRef
  loc_619BEB: FLdRfVar var_CC
  loc_619BEE: ImpAdCallFPR4  = Mid(, , )
  loc_619BF3: FLdRfVar var_CC
  loc_619BF6: CStrVarTmp
  loc_619BF7: FStStr var_88
  loc_619BFA: FFreeVar var_BC = ""
  loc_619C01: FLdRfVar var_8C
  loc_619C04: NextStepI2 var_D4, loc_619B67
  loc_619C09: ExitProcHresult
End Function

Private Function Proc_100_60_5F92A4(arg_C) '5F92A4
  'Data Table: 440CF4
  loc_5F9208: ILdRf arg_C
  loc_5F920B: FStStrCopy var_8C
  loc_5F920E: ZeroRetVal
  loc_5F9210: LitVarI2 var_BC, 4
  loc_5F9215: LitI4 1
  loc_5F921A: FLdRfVar var_8C
  loc_5F921D: CVarRef
  loc_5F9222: FLdRfVar var_CC
  loc_5F9225: ImpAdCallFPR4  = Mid(, , )
  loc_5F922A: FLdRfVar var_CC
  loc_5F922D: LitVarStr var_DC, "/"
  loc_5F9232: ConcatVar var_EC
  loc_5F9236: LitVarI2 var_11C, 2
  loc_5F923B: LitI4 5
  loc_5F9240: FLdRfVar var_8C
  loc_5F9243: CVarRef
  loc_5F9248: FLdRfVar var_12C
  loc_5F924B: ImpAdCallFPR4  = Mid(, , )
  loc_5F9250: FLdRfVar var_12C
  loc_5F9253: ConcatVar var_13C
  loc_5F9257: LitVarStr var_14C, "/"
  loc_5F925C: ConcatVar var_15C
  loc_5F9260: LitVarI2 var_18C, 2
  loc_5F9265: LitI4 7
  loc_5F926A: FLdRfVar var_8C
  loc_5F926D: CVarRef
  loc_5F9272: FLdRfVar var_19C
  loc_5F9275: ImpAdCallFPR4  = Mid(, , )
  loc_5F927A: FLdRfVar var_19C
  loc_5F927D: ConcatVar var_1AC
  loc_5F9281: CStrVarTmp
  loc_5F9282: FStStr var_88
  loc_5F9285: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = "": var_13C = "": var_18C = "": var_15C = "": var_19C = ""
  loc_5F929C: ExitProcCbHresult
End Function

Private Function Proc_100_61_60E21C(arg_C) '60E21C
  'Data Table: 440CF4
  loc_60E114: ILdRf arg_C
  loc_60E117: FStStrCopy var_88
  loc_60E11A: ILdRf var_88
  loc_60E11D: FStStrCopy var_8C
  loc_60E120: ILdRf var_8C
  loc_60E123: LitStr "002"
  loc_60E126: EqStr
  loc_60E128: BranchF loc_60E13C
  loc_60E12B: LitI2_Byte &HFF
  loc_60E12D: LitI4 2
  loc_60E132: FLdPr Me
  loc_60E135: MemLdRfVar from_stack_1.global_100
  loc_60E138: Ary1StI2
  loc_60E139: Branch loc_60E219
  loc_60E13C: ILdRf var_8C
  loc_60E13F: LitStr "003"
  loc_60E142: EqStr
  loc_60E144: BranchF loc_60E158
  loc_60E147: LitI2_Byte &HFF
  loc_60E149: LitI4 3
  loc_60E14E: FLdPr Me
  loc_60E151: MemLdRfVar from_stack_1.global_100
  loc_60E154: Ary1StI2
  loc_60E155: Branch loc_60E219
  loc_60E158: ILdRf var_8C
  loc_60E15B: LitStr "009"
  loc_60E15E: EqStr
  loc_60E160: BranchF loc_60E174
  loc_60E163: LitI2_Byte &HFF
  loc_60E165: LitI4 4
  loc_60E16A: FLdPr Me
  loc_60E16D: MemLdRfVar from_stack_1.global_100
  loc_60E170: Ary1StI2
  loc_60E171: Branch loc_60E219
  loc_60E174: ILdRf var_8C
  loc_60E177: LitStr "008"
  loc_60E17A: EqStr
  loc_60E17C: BranchF loc_60E190
  loc_60E17F: LitI2_Byte &HFF
  loc_60E181: LitI4 5
  loc_60E186: FLdPr Me
  loc_60E189: MemLdRfVar from_stack_1.global_100
  loc_60E18C: Ary1StI2
  loc_60E18D: Branch loc_60E219
  loc_60E190: ILdRf var_8C
  loc_60E193: LitStr "004"
  loc_60E196: EqStr
  loc_60E198: BranchF loc_60E1AC
  loc_60E19B: LitI2_Byte &HFF
  loc_60E19D: LitI4 6
  loc_60E1A2: FLdPr Me
  loc_60E1A5: MemLdRfVar from_stack_1.global_100
  loc_60E1A8: Ary1StI2
  loc_60E1A9: Branch loc_60E219
  loc_60E1AC: ILdRf var_8C
  loc_60E1AF: LitStr "005"
  loc_60E1B2: EqStr
  loc_60E1B4: BranchF loc_60E1C8
  loc_60E1B7: LitI2_Byte &HFF
  loc_60E1B9: LitI4 7
  loc_60E1BE: FLdPr Me
  loc_60E1C1: MemLdRfVar from_stack_1.global_100
  loc_60E1C4: Ary1StI2
  loc_60E1C5: Branch loc_60E219
  loc_60E1C8: ILdRf var_8C
  loc_60E1CB: LitStr "006"
  loc_60E1CE: EqStr
  loc_60E1D0: BranchF loc_60E1E4
  loc_60E1D3: LitI2_Byte &HFF
  loc_60E1D5: LitI4 8
  loc_60E1DA: FLdPr Me
  loc_60E1DD: MemLdRfVar from_stack_1.global_100
  loc_60E1E0: Ary1StI2
  loc_60E1E1: Branch loc_60E219
  loc_60E1E4: ILdRf var_8C
  loc_60E1E7: LitStr "007"
  loc_60E1EA: EqStr
  loc_60E1EC: BranchF loc_60E200
  loc_60E1EF: LitI2_Byte &HFF
  loc_60E1F1: LitI4 9
  loc_60E1F6: FLdPr Me
  loc_60E1F9: MemLdRfVar from_stack_1.global_100
  loc_60E1FC: Ary1StI2
  loc_60E1FD: Branch loc_60E219
  loc_60E200: ILdRf var_8C
  loc_60E203: LitStr "010"
  loc_60E206: EqStr
  loc_60E208: BranchF loc_60E219
  loc_60E20B: LitI2_Byte &HFF
  loc_60E20D: LitI4 &HA
  loc_60E212: FLdPr Me
  loc_60E215: MemLdRfVar from_stack_1.global_100
  loc_60E218: Ary1StI2
  loc_60E219: ExitProcHresult
End Function

Private Function Proc_100_62_5F8AC4(arg_C) '5F8AC4
  'Data Table: 440CF4
  loc_5F8A28: ILdRf arg_C
  loc_5F8A2B: FStStrCopy var_8C
  loc_5F8A2E: ZeroRetVal
  loc_5F8A30: LitVarI2 var_BC, 2
  loc_5F8A35: LitI4 7
  loc_5F8A3A: FLdRfVar var_8C
  loc_5F8A3D: CVarRef
  loc_5F8A42: FLdRfVar var_CC
  loc_5F8A45: ImpAdCallFPR4  = Mid(, , )
  loc_5F8A4A: FLdRfVar var_CC
  loc_5F8A4D: LitVarStr var_DC, "/"
  loc_5F8A52: ConcatVar var_EC
  loc_5F8A56: LitVarI2 var_11C, 2
  loc_5F8A5B: LitI4 5
  loc_5F8A60: FLdRfVar var_8C
  loc_5F8A63: CVarRef
  loc_5F8A68: FLdRfVar var_12C
  loc_5F8A6B: ImpAdCallFPR4  = Mid(, , )
  loc_5F8A70: FLdRfVar var_12C
  loc_5F8A73: ConcatVar var_13C
  loc_5F8A77: LitVarStr var_14C, "/"
  loc_5F8A7C: ConcatVar var_15C
  loc_5F8A80: LitVarI2 var_18C, 2
  loc_5F8A85: LitI4 3
  loc_5F8A8A: FLdRfVar var_8C
  loc_5F8A8D: CVarRef
  loc_5F8A92: FLdRfVar var_19C
  loc_5F8A95: ImpAdCallFPR4  = Mid(, , )
  loc_5F8A9A: FLdRfVar var_19C
  loc_5F8A9D: ConcatVar var_1AC
  loc_5F8AA1: CStrVarTmp
  loc_5F8AA2: FStStr var_88
  loc_5F8AA5: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = "": var_13C = "": var_18C = "": var_15C = "": var_19C = ""
  loc_5F8ABC: ExitProcCbHresult
  loc_5F8AC2: MemStR8 global_31997
End Function

Private Function Proc_100_63_5E8D78(arg_C) '5E8D78
  'Data Table: 440CF4
  loc_5E8D10: ILdRf arg_C
  loc_5E8D13: FStStrCopy var_8C
  loc_5E8D16: ZeroRetVal
  loc_5E8D18: LitVarI2 var_BC, 2
  loc_5E8D1D: LitI4 1
  loc_5E8D22: FLdRfVar var_8C
  loc_5E8D25: CVarRef
  loc_5E8D2A: FLdRfVar var_CC
  loc_5E8D2D: ImpAdCallFPR4  = Mid(, , )
  loc_5E8D32: FLdRfVar var_CC
  loc_5E8D35: LitVarStr var_DC, ":"
  loc_5E8D3A: ConcatVar var_EC
  loc_5E8D3E: LitVarI2 var_11C, 2
  loc_5E8D43: LitI4 3
  loc_5E8D48: FLdRfVar var_8C
  loc_5E8D4B: CVarRef
  loc_5E8D50: FLdRfVar var_12C
  loc_5E8D53: ImpAdCallFPR4  = Mid(, , )
  loc_5E8D58: FLdRfVar var_12C
  loc_5E8D5B: ConcatVar var_13C
  loc_5E8D5F: CStrVarTmp
  loc_5E8D60: FStStr var_88
  loc_5E8D63: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = ""
  loc_5E8D72: ExitProcCbHresult
End Function

Private Function Proc_100_64_671CE0() '671CE0
  'Data Table: 440CF4
  loc_671A3C: FLdPr Me
  loc_671A3F: MemLdRfVar from_stack_1.global_160
  loc_671A42: NewIfNullAd
  loc_671A45: FLdRfVar var_88
  loc_671A48: ForEachCollObj
  loc_671A50: FLdRfVar var_16C
  loc_671A53: FLdPr var_88
  loc_671A56: Me = from_stack_1
  loc_671A5B: LitI4 5
  loc_671A60: FLdZeroAd var_16C
  loc_671A63: CVarStr var_17C
  loc_671A66: FLdRfVar var_18C
  loc_671A69: ImpAdCallFPR4  = Right(, )
  loc_671A6E: FLdRfVar var_18C
  loc_671A71: LitVarStr var_19C, "TDesc"
  loc_671A76: HardType
  loc_671A77: EqVarBool
  loc_671A79: FFreeVar var_17C = ""
  loc_671A80: BranchF loc_671B95
  loc_671A83: FLdI2 var_162
  loc_671A86: LitI2_Byte 1
  loc_671A88: AddI2
  loc_671A89: FStI2 var_162
  loc_671A8C: FLdRfVar var_16C
  loc_671A8F: FLdPr var_88
  loc_671A92: Me = from_stack_1
  loc_671A97: FLdRfVar var_1B0
  loc_671A9A: FLdPr var_88
  loc_671A9D: Me = from_stack_1
  loc_671AA2: ILdRf var_1B0
  loc_671AA5: FnLenStr
  loc_671AA6: LitI4 5
  loc_671AAB: SubI4
  loc_671AAC: CVarI4
  loc_671AB0: LitI4 1
  loc_671AB5: FLdZeroAd var_16C
  loc_671AB8: CVarStr var_17C
  loc_671ABB: FLdRfVar var_1AC
  loc_671ABE: ImpAdCallFPR4  = Mid(, , )
  loc_671AC3: FLdRfVar var_1AC
  loc_671AC6: CStrVarTmp
  loc_671AC7: FStStrNoPop var_1B4
  loc_671ACA: FLdI2 var_162
  loc_671ACD: CI4UI1
  loc_671ACE: FLdRfVar var_A0
  loc_671AD1: Ary1StStrCopy
  loc_671AD2: FFreeStr var_1B0 = ""
  loc_671AD9: FFreeVar var_17C = "": var_18C = ""
  loc_671AE2: FLdRfVar var_1BC
  loc_671AE5: FLdPr var_88
  loc_671AED: FLdFPR8 var_1BC
  loc_671AF0: FLdI2 var_162
  loc_671AF3: CI4UI1
  loc_671AF4: FLdRfVar var_B8
  loc_671AF7: Ary1StFPR8
  loc_671AF8: FLdRfVar var_1BC
  loc_671AFB: FLdPr var_88
  loc_671AFE: Reset
  loc_671B03: FLdFPR8 var_1BC
  loc_671B06: FLdI2 var_162
  loc_671B09: CI4UI1
  loc_671B0A: FLdRfVar var_D0
  loc_671B0D: Ary1StFPR8
  loc_671B0E: FLdRfVar var_1BC
  loc_671B11: FLdPr var_88
  loc_671B14: Call 0.Method_arg_5C ()
  loc_671B19: FLdFPR8 var_1BC
  loc_671B1C: FLdI2 var_162
  loc_671B1F: CI4UI1
  loc_671B20: FLdRfVar var_E8
  loc_671B23: Ary1StFPR4
  loc_671B24: FLdRfVar var_1BC
  loc_671B27: FLdPr var_88
  loc_671B2A: Me.BackColor = from_stack_1
  loc_671B2F: FLdFPR8 var_1BC
  loc_671B32: FLdI2 var_162
  loc_671B35: CI4UI1
  loc_671B36: FLdRfVar var_100
  loc_671B39: Ary1StFPR4
  loc_671B3A: FLdRfVar var_1BC
  loc_671B3D: FLdPr var_88
  loc_671B40: Call 0.Method_Proc_100_64_671CE0C ()
  loc_671B45: FLdFPR8 var_1BC
  loc_671B48: FLdI2 var_162
  loc_671B4B: CI4UI1
  loc_671B4C: FLdRfVar var_118
  loc_671B4F: Ary1StFPR8
  loc_671B50: FLdRfVar var_1BC
  loc_671B53: FLdPr var_88
  loc_671B56: Me.Caption = from_stack_1
  loc_671B5B: FLdFPR8 var_1BC
  loc_671B5E: FLdI2 var_162
  loc_671B61: CI4UI1
  loc_671B62: FLdRfVar var_130
  loc_671B65: Ary1StFPR8
  loc_671B66: FLdRfVar var_1BE
  loc_671B69: FLdPr var_88
  loc_671B71: FLdI2 var_1BE
  loc_671B74: FLdI2 var_162
  loc_671B77: CI4UI1
  loc_671B78: FLdRfVar var_148
  loc_671B7B: Ary1StI2
  loc_671B7C: FLdRfVar var_16C
  loc_671B7F: FLdPr var_88
  loc_671B82:  = Forms
  loc_671B87: ILdRf var_16C
  loc_671B8A: FLdI2 var_162
  loc_671B8D: CI4UI1
  loc_671B8E: FLdRfVar var_160
  loc_671B91: Ary1StStrCopy
  loc_671B92: FFree1Str var_16C
  loc_671B95: FLdRfVar var_88
  loc_671B98: NextEachCollObj
  loc_671BA0: FLdPr Me
  loc_671BA3: MemLdRfVar from_stack_1.global_160
  loc_671BA6: NewIfNullAd
  loc_671BA9: FLdRfVar var_88
  loc_671BAC: ForEachCollObj
  loc_671BB4: FLdRfVar var_16C
  loc_671BB7: FLdPr var_88
  loc_671BBA: Me = from_stack_1
  loc_671BBF: LitI4 5
  loc_671BC4: FLdZeroAd var_16C
  loc_671BC7: CVarStr var_17C
  loc_671BCA: FLdRfVar var_18C
  loc_671BCD: ImpAdCallFPR4  = Right(, )
  loc_671BD2: FLdRfVar var_18C
  loc_671BD5: LitVarStr var_19C, "TDesc"
  loc_671BDA: HardType
  loc_671BDB: EqVar var_1AC
  loc_671BDF: NotVar var_1D4
  loc_671BE3: FLdRfVar var_1BE
  loc_671BE6: FLdPr var_88
  loc_671BEE: FLdI2 var_1BE
  loc_671BF1: LitI2_Byte &HFF
  loc_671BF3: EqI2
  loc_671BF4: CVarBoolI2 var_1E4
  loc_671BF8: AndVar var_1F4
  loc_671BFC: CBoolVarNull
  loc_671BFE: FFreeVar var_17C = "": var_18C = ""
  loc_671C07: BranchF loc_671CD4
  loc_671C0A: LitI2_Byte 1
  loc_671C0C: FLdRfVar var_162
  loc_671C0F: LitI2_Byte &H64
  loc_671C11: ForI2 var_1F8
  loc_671C17: FLdI2 var_162
  loc_671C1A: CI4UI1
  loc_671C1B: FLdRfVar var_A0
  loc_671C1E: Ary1LdI4
  loc_671C1F: LitStr vbNullString
  loc_671C22: EqStr
  loc_671C24: BranchF loc_671C2A
  loc_671C27: Branch loc_671CD4
  loc_671C2A: FLdRfVar var_16C
  loc_671C2D: FLdPr var_88
  loc_671C30: Me = from_stack_1
  loc_671C35: FLdZeroAd var_16C
  loc_671C38: CVarStr var_17C
  loc_671C3B: FLdRfVar var_18C
  loc_671C3E: ImpAdCallFPR4  = Trim()
  loc_671C43: FLdRfVar var_18C
  loc_671C46: FLdI2 var_162
  loc_671C49: CI4UI1
  loc_671C4A: FLdRfVar var_A0
  loc_671C4D: Ary1LdRf
  loc_671C4E: CVarRef
  loc_671C53: FLdRfVar var_1AC
  loc_671C56: ImpAdCallFPR4  = Trim()
  loc_671C5B: FLdRfVar var_1AC
  loc_671C5E: EqVarBool
  loc_671C60: FFreeVar var_17C = "": var_18C = ""
  loc_671C69: BranchF loc_671CCC
  loc_671C6C: FLdI2 var_162
  loc_671C6F: CI4UI1
  loc_671C70: FLdRfVar var_B8
  loc_671C73: Ary1LdFPR8
  loc_671C74: LitI2_Byte &HFF
  loc_671C76: CR8I2
  loc_671C77: MulR8
  loc_671C78: PopTmpLdAdFPR8
  loc_671C7C: FLdPr var_88
  loc_671C84: FLdI2 var_162
  loc_671C87: CI4UI1
  loc_671C88: FLdRfVar var_D0
  loc_671C8B: Ary1LdFPR8
  loc_671C8C: LitI2_Byte &HFF
  loc_671C8E: CR8I2
  loc_671C8F: MulR8
  loc_671C90: PopTmpLdAdFPR8
  loc_671C94: FLdPr var_88
  loc_671C97: Set from_stack_2 = Me(from_stack_1)
  loc_671C9C: FLdI2 var_162
  loc_671C9F: CI4UI1
  loc_671CA0: FLdRfVar var_118
  loc_671CA3: Ary1LdFPR8
  loc_671CA4: LitI2_Byte &HFF
  loc_671CA6: CR8I2
  loc_671CA7: MulR8
  loc_671CA8: PopTmpLdAdFPR8
  loc_671CAC: FLdPr var_88
  loc_671CAF:  = Me.Caption
  loc_671CB4: FLdI2 var_162
  loc_671CB7: CI4UI1
  loc_671CB8: FLdRfVar var_130
  loc_671CBB: Ary1LdFPR8
  loc_671CBC: LitI2_Byte &HFF
  loc_671CBE: CR8I2
  loc_671CBF: MulR8
  loc_671CC0: PopTmpLdAdFPR8
  loc_671CC4: FLdPr var_88
  loc_671CC7:  = Me.hWnd
  loc_671CCC: FLdRfVar var_162
  loc_671CCF: NextI2 var_1F8, loc_671C17
  loc_671CD4: FLdRfVar var_88
  loc_671CD7: NextEachCollObj
  loc_671CDF: ExitProcHresult
End Function

Private Function Proc_100_65_62A3B0(arg_C, arg_10, arg_14) '62A3B0
  'Data Table: 440CF4
  loc_62A20C: LitI2_Byte 1
  loc_62A20E: FLdRfVar var_88
  loc_62A211: FLdPr Me
  loc_62A214: MemLdStr global_176
  loc_62A217: LitI2_Byte 1
  loc_62A219: FnUBound
  loc_62A21B: CI2I4
  loc_62A21C: ForI2 var_8C
  loc_62A222: FLdI2 var_88
  loc_62A225: CI4UI1
  loc_62A226: FLdPr Me
  loc_62A229: MemLdStr global_176
  loc_62A22C: Ary1LdPr
  loc_62A22D: MemLdFPR8 global_0
  loc_62A230: ILdFPR8 arg_C
  loc_62A233: LtR8
  loc_62A234: FLdI2 var_88
  loc_62A237: CI4UI1
  loc_62A238: FLdPr Me
  loc_62A23B: MemLdStr global_176
  loc_62A23E: Ary1LdPr
  loc_62A23F: MemLdFPR8 global_16
  loc_62A242: ILdFPR8 arg_C
  loc_62A245: GtR4
  loc_62A246: AndI4
  loc_62A247: BranchF loc_62A275
  loc_62A24A: ILdRfDarg arg_14
  loc_62A250: CI4Var
  loc_62A252: FLdI2 var_88
  loc_62A255: CI4UI1
  loc_62A256: FLdPr Me
  loc_62A259: MemLdStr global_176
  loc_62A25C: Ary1LdPr
  loc_62A25D: MemLdRfVar from_stack_1.global_32
  loc_62A260: AryInRecLdPr
  loc_62A266: MemLdI2 global_0
  loc_62A269: FStI2 var_86
  loc_62A26C: ExitProcCbHresult
  loc_62A272: Branch loc_62A3A2
  loc_62A275: FLdI2 var_88
  loc_62A278: CI4UI1
  loc_62A279: FLdPr Me
  loc_62A27C: MemLdStr global_176
  loc_62A27F: Ary1LdPr
  loc_62A280: MemLdFPR8 global_0
  loc_62A283: ILdFPR8 arg_C
  loc_62A286: EqR4
  loc_62A287: BranchF loc_62A33D
  loc_62A28A: FLdI2 var_88
  loc_62A28D: CI4UI1
  loc_62A28E: FLdPr Me
  loc_62A291: MemLdStr global_176
  loc_62A294: Ary1LdPr
  loc_62A295: MemLdFPR8 global_0
  loc_62A298: FLdI2 var_88
  loc_62A29B: CI4UI1
  loc_62A29C: FLdPr Me
  loc_62A29F: MemLdStr global_176
  loc_62A2A2: Ary1LdPr
  loc_62A2A3: MemLdFPR8 global_16
  loc_62A2A6: NeR8
  loc_62A2A7: BranchF loc_62A2EA
  loc_62A2AA: FLdI2 var_88
  loc_62A2AD: CI4UI1
  loc_62A2AE: FLdPr Me
  loc_62A2B1: MemLdStr global_176
  loc_62A2B4: Ary1LdPr
  loc_62A2B5: MemLdFPR8 global_8
  loc_62A2B8: ILdFPR8 arg_10
  loc_62A2BB: LtR8
  loc_62A2BC: BranchF loc_62A2E7
  loc_62A2BF: ILdRfDarg arg_14
  loc_62A2C5: CI4Var
  loc_62A2C7: FLdI2 var_88
  loc_62A2CA: CI4UI1
  loc_62A2CB: FLdPr Me
  loc_62A2CE: MemLdStr global_176
  loc_62A2D1: Ary1LdPr
  loc_62A2D2: MemLdRfVar from_stack_1.global_32
  loc_62A2D5: AryInRecLdPr
  loc_62A2DB: MemLdI2 global_0
  loc_62A2DE: FStI2 var_86
  loc_62A2E1: ExitProcCbHresult
  loc_62A2E7: Branch loc_62A33A
  loc_62A2EA: FLdI2 var_88
  loc_62A2ED: CI4UI1
  loc_62A2EE: FLdPr Me
  loc_62A2F1: MemLdStr global_176
  loc_62A2F4: Ary1LdPr
  loc_62A2F5: MemLdFPR8 global_8
  loc_62A2F8: ILdFPR8 arg_10
  loc_62A2FB: LtR8
  loc_62A2FC: FLdI2 var_88
  loc_62A2FF: CI4UI1
  loc_62A300: FLdPr Me
  loc_62A303: MemLdStr global_176
  loc_62A306: Ary1LdPr
  loc_62A307: MemLdFPR8 global_24
  loc_62A30A: ILdFPR8 arg_10
  loc_62A30D: GtR4
  loc_62A30E: AndI4
  loc_62A30F: BranchF loc_62A33A
  loc_62A312: ILdRfDarg arg_14
  loc_62A318: CI4Var
  loc_62A31A: FLdI2 var_88
  loc_62A31D: CI4UI1
  loc_62A31E: FLdPr Me
  loc_62A321: MemLdStr global_176
  loc_62A324: Ary1LdPr
  loc_62A325: MemLdRfVar from_stack_1.global_32
  loc_62A328: AryInRecLdPr
  loc_62A32E: MemLdI2 global_0
  loc_62A331: FStI2 var_86
  loc_62A334: ExitProcCbHresult
  loc_62A33A: Branch loc_62A3A2
  loc_62A33D: FLdI2 var_88
  loc_62A340: CI4UI1
  loc_62A341: FLdPr Me
  loc_62A344: MemLdStr global_176
  loc_62A347: Ary1LdPr
  loc_62A348: MemLdFPR8 global_16
  loc_62A34B: ILdFPR8 arg_C
  loc_62A34E: EqR4
  loc_62A34F: FLdI2 var_88
  loc_62A352: CI4UI1
  loc_62A353: FLdPr Me
  loc_62A356: MemLdStr global_176
  loc_62A359: Ary1LdPr
  loc_62A35A: MemLdFPR8 global_24
  loc_62A35D: ILdFPR8 arg_10
  loc_62A360: GtR4
  loc_62A361: AndI4
  loc_62A362: BranchF loc_62A3A2
  loc_62A365: FLdI2 var_88
  loc_62A368: CI4UI1
  loc_62A369: FLdPr Me
  loc_62A36C: MemLdStr global_176
  loc_62A36F: Ary1LdPr
  loc_62A370: MemLdFPR8 global_24
  loc_62A373: ILdFPR8 arg_10
  loc_62A376: GtR4
  loc_62A377: BranchF loc_62A3A2
  loc_62A37A: ILdRfDarg arg_14
  loc_62A380: CI4Var
  loc_62A382: FLdI2 var_88
  loc_62A385: CI4UI1
  loc_62A386: FLdPr Me
  loc_62A389: MemLdStr global_176
  loc_62A38C: Ary1LdPr
  loc_62A38D: MemLdRfVar from_stack_1.global_32
  loc_62A390: AryInRecLdPr
  loc_62A396: MemLdI2 global_0
  loc_62A399: FStI2 var_86
  loc_62A39C: ExitProcCbHresult
  loc_62A3A2: FLdRfVar var_88
  loc_62A3A5: NextI2 var_8C, loc_62A222
  loc_62A3AA: ExitProcCbHresult
End Function

Private Function Proc_100_66_69DA98() '69DA98
  'Data Table: 440CF4
  loc_69D448: New Collection
  loc_69D44C: FStAdFunc var_88
  loc_69D44F: FLdPr Me
  loc_69D452: MemLdRfVar from_stack_1.global_160
  loc_69D455: NewIfNullAd
  loc_69D458: FLdRfVar var_8C
  loc_69D45B: ForEachCollObj
  loc_69D463: FLdRfVar var_98
  loc_69D466: FLdPr var_8C
  loc_69D469:  = Forms
  loc_69D46E: ILdRf var_98
  loc_69D471: LitStr "Varios"
  loc_69D474: EqStr
  loc_69D476: FFree1Str var_98
  loc_69D479: BranchF loc_69D4BF
  loc_69D47C: FLdRfVar var_98
  loc_69D47F: FLdPr var_8C
  loc_69D482: Me = from_stack_1
  loc_69D487: LitVar_Missing var_FC
  loc_69D48A: LitVar_Missing var_DC
  loc_69D48D: FLdZeroAd var_98
  loc_69D490: CVarStr var_BC
  loc_69D493: ILdRf var_8C
  loc_69D496: FStAd var_9C 
  loc_69D49A: FLdRfVar var_9C
  loc_69D49D: CVarRef
  loc_69D4A2: FLdPr var_88
  loc_69D4A5: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D4AA: ILdRf var_9C
  loc_69D4AD: CastAd
  loc_69D4B0: FStAdFunc var_8C
  loc_69D4B3: FFree1Ad var_9C
  loc_69D4B6: FFreeVar var_BC = "": var_DC = ""
  loc_69D4BF: FLdRfVar var_8C
  loc_69D4C2: NextEachCollObj
  loc_69D4CA: FLdPr Me
  loc_69D4CD: MemLdRfVar from_stack_1.global_160
  loc_69D4D0: NewIfNullAd
  loc_69D4D3: FLdRfVar var_8C
  loc_69D4D6: ForEachCollObj
  loc_69D4DE: FLdRfVar var_98
  loc_69D4E1: FLdPr var_8C
  loc_69D4E4:  = Forms
  loc_69D4E9: ILdRf var_98
  loc_69D4EC: LitStr "C/R"
  loc_69D4EF: EqStr
  loc_69D4F1: FFree1Str var_98
  loc_69D4F4: BranchF loc_69D53A
  loc_69D4F7: FLdRfVar var_98
  loc_69D4FA: FLdPr var_8C
  loc_69D4FD: Me = from_stack_1
  loc_69D502: LitVar_Missing var_FC
  loc_69D505: LitVar_Missing var_DC
  loc_69D508: FLdZeroAd var_98
  loc_69D50B: CVarStr var_BC
  loc_69D50E: ILdRf var_8C
  loc_69D511: FStAd var_9C 
  loc_69D515: FLdRfVar var_9C
  loc_69D518: CVarRef
  loc_69D51D: FLdPr var_88
  loc_69D520: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D525: ILdRf var_9C
  loc_69D528: CastAd
  loc_69D52B: FStAdFunc var_8C
  loc_69D52E: FFree1Ad var_9C
  loc_69D531: FFreeVar var_BC = "": var_DC = ""
  loc_69D53A: FLdRfVar var_8C
  loc_69D53D: NextEachCollObj
  loc_69D545: FLdPr Me
  loc_69D548: MemLdRfVar from_stack_1.global_160
  loc_69D54B: NewIfNullAd
  loc_69D54E: FLdRfVar var_8C
  loc_69D551: ForEachCollObj
  loc_69D559: FLdRfVar var_108
  loc_69D55C: FLdPr var_8C
  loc_69D55F: Me = from_stack_1
  loc_69D564: FLdRfVar var_11C
  loc_69D567: FLdPr var_8C
  loc_69D56A: Me = from_stack_1
  loc_69D56F: FLdRfVar var_98
  loc_69D572: FLdPr var_8C
  loc_69D575:  = Forms
  loc_69D57A: ILdRf var_98
  loc_69D57D: LitStr "Esso"
  loc_69D580: EqStr
  loc_69D582: CVarBoolI2 var_CC
  loc_69D586: LitI4 4
  loc_69D58B: FLdZeroAd var_108
  loc_69D58E: CVarStr var_BC
  loc_69D591: FLdRfVar var_DC
  loc_69D594: ImpAdCallFPR4  = Right(, )
  loc_69D599: FLdRfVar var_DC
  loc_69D59C: LitVarStr var_AC, "Esso"
  loc_69D5A1: HardType
  loc_69D5A2: EqVar var_FC
  loc_69D5A6: AndVar var_118
  loc_69D5AA: LitI4 5
  loc_69D5AF: FLdZeroAd var_11C
  loc_69D5B2: CVarStr var_12C
  loc_69D5B5: FLdRfVar var_13C
  loc_69D5B8: ImpAdCallFPR4  = Right(, )
  loc_69D5BD: FLdRfVar var_13C
  loc_69D5C0: LitVarStr var_EC, "AEsso"
  loc_69D5C5: HardType
  loc_69D5C6: NeVar var_14C
  loc_69D5CA: AndVar var_15C
  loc_69D5CE: CBoolVarNull
  loc_69D5D0: FFree1Str var_98
  loc_69D5D3: FFreeVar var_BC = "": var_DC = "": var_CC = "": var_12C = ""
  loc_69D5E0: BranchF loc_69D626
  loc_69D5E3: FLdRfVar var_98
  loc_69D5E6: FLdPr var_8C
  loc_69D5E9: Me = from_stack_1
  loc_69D5EE: LitVar_Missing var_FC
  loc_69D5F1: LitVar_Missing var_DC
  loc_69D5F4: FLdZeroAd var_98
  loc_69D5F7: CVarStr var_BC
  loc_69D5FA: ILdRf var_8C
  loc_69D5FD: FStAd var_9C 
  loc_69D601: FLdRfVar var_9C
  loc_69D604: CVarRef
  loc_69D609: FLdPr var_88
  loc_69D60C: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D611: ILdRf var_9C
  loc_69D614: CastAd
  loc_69D617: FStAdFunc var_8C
  loc_69D61A: FFree1Ad var_9C
  loc_69D61D: FFreeVar var_BC = "": var_DC = ""
  loc_69D626: FLdRfVar var_8C
  loc_69D629: NextEachCollObj
  loc_69D631: FLdPr Me
  loc_69D634: MemLdRfVar from_stack_1.global_160
  loc_69D637: NewIfNullAd
  loc_69D63A: FLdRfVar var_8C
  loc_69D63D: ForEachCollObj
  loc_69D645: FLdRfVar var_108
  loc_69D648: FLdPr var_8C
  loc_69D64B: Me = from_stack_1
  loc_69D650: FLdRfVar var_98
  loc_69D653: FLdPr var_8C
  loc_69D656:  = Forms
  loc_69D65B: ILdRf var_98
  loc_69D65E: LitStr "Esso"
  loc_69D661: EqStr
  loc_69D663: CVarBoolI2 var_CC
  loc_69D667: LitI4 5
  loc_69D66C: FLdZeroAd var_108
  loc_69D66F: CVarStr var_BC
  loc_69D672: FLdRfVar var_DC
  loc_69D675: ImpAdCallFPR4  = Right(, )
  loc_69D67A: FLdRfVar var_DC
  loc_69D67D: LitVarStr var_AC, "AEsso"
  loc_69D682: HardType
  loc_69D683: EqVar var_FC
  loc_69D687: AndVar var_118
  loc_69D68B: CBoolVarNull
  loc_69D68D: FFree1Str var_98
  loc_69D690: FFreeVar var_BC = "": var_DC = ""
  loc_69D699: BranchF loc_69D6DF
  loc_69D69C: FLdRfVar var_98
  loc_69D69F: FLdPr var_8C
  loc_69D6A2: Me = from_stack_1
  loc_69D6A7: LitVar_Missing var_FC
  loc_69D6AA: LitVar_Missing var_DC
  loc_69D6AD: FLdZeroAd var_98
  loc_69D6B0: CVarStr var_BC
  loc_69D6B3: ILdRf var_8C
  loc_69D6B6: FStAd var_9C 
  loc_69D6BA: FLdRfVar var_9C
  loc_69D6BD: CVarRef
  loc_69D6C2: FLdPr var_88
  loc_69D6C5: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D6CA: ILdRf var_9C
  loc_69D6CD: CastAd
  loc_69D6D0: FStAdFunc var_8C
  loc_69D6D3: FFree1Ad var_9C
  loc_69D6D6: FFreeVar var_BC = "": var_DC = ""
  loc_69D6DF: FLdRfVar var_8C
  loc_69D6E2: NextEachCollObj
  loc_69D6EA: FLdPr Me
  loc_69D6ED: MemLdRfVar from_stack_1.global_160
  loc_69D6F0: NewIfNullAd
  loc_69D6F3: FLdRfVar var_8C
  loc_69D6F6: ForEachCollObj
  loc_69D6FE: FLdRfVar var_108
  loc_69D701: FLdPr var_8C
  loc_69D704: Me = from_stack_1
  loc_69D709: FLdRfVar var_11C
  loc_69D70C: FLdPr var_8C
  loc_69D70F: Me = from_stack_1
  loc_69D714: FLdRfVar var_98
  loc_69D717: FLdPr var_8C
  loc_69D71A:  = Forms
  loc_69D71F: ILdRf var_98
  loc_69D722: LitStr "Hand"
  loc_69D725: EqStr
  loc_69D727: CVarBoolI2 var_CC
  loc_69D72B: LitI4 5
  loc_69D730: FLdZeroAd var_108
  loc_69D733: CVarStr var_BC
  loc_69D736: FLdRfVar var_DC
  loc_69D739: ImpAdCallFPR4  = Right(, )
  loc_69D73E: FLdRfVar var_DC
  loc_69D741: LitVarStr var_AC, "AHand"
  loc_69D746: HardType
  loc_69D747: NeVar var_FC
  loc_69D74B: AndVar var_118
  loc_69D74F: LitI4 4
  loc_69D754: FLdZeroAd var_11C
  loc_69D757: CVarStr var_12C
  loc_69D75A: FLdRfVar var_13C
  loc_69D75D: ImpAdCallFPR4  = Right(, )
  loc_69D762: FLdRfVar var_13C
  loc_69D765: LitVarStr var_EC, "Hand"
  loc_69D76A: HardType
  loc_69D76B: EqVar var_14C
  loc_69D76F: AndVar var_15C
  loc_69D773: CBoolVarNull
  loc_69D775: FFree1Str var_98
  loc_69D778: FFreeVar var_BC = "": var_DC = "": var_CC = "": var_12C = ""
  loc_69D785: BranchF loc_69D7CB
  loc_69D788: FLdRfVar var_98
  loc_69D78B: FLdPr var_8C
  loc_69D78E: Me = from_stack_1
  loc_69D793: LitVar_Missing var_FC
  loc_69D796: LitVar_Missing var_DC
  loc_69D799: FLdZeroAd var_98
  loc_69D79C: CVarStr var_BC
  loc_69D79F: ILdRf var_8C
  loc_69D7A2: FStAd var_9C 
  loc_69D7A6: FLdRfVar var_9C
  loc_69D7A9: CVarRef
  loc_69D7AE: FLdPr var_88
  loc_69D7B1: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D7B6: ILdRf var_9C
  loc_69D7B9: CastAd
  loc_69D7BC: FStAdFunc var_8C
  loc_69D7BF: FFree1Ad var_9C
  loc_69D7C2: FFreeVar var_BC = "": var_DC = ""
  loc_69D7CB: FLdRfVar var_8C
  loc_69D7CE: NextEachCollObj
  loc_69D7D6: FLdPr Me
  loc_69D7D9: MemLdRfVar from_stack_1.global_160
  loc_69D7DC: NewIfNullAd
  loc_69D7DF: FLdRfVar var_8C
  loc_69D7E2: ForEachCollObj
  loc_69D7EA: FLdRfVar var_108
  loc_69D7ED: FLdPr var_8C
  loc_69D7F0: Me = from_stack_1
  loc_69D7F5: FLdRfVar var_98
  loc_69D7F8: FLdPr var_8C
  loc_69D7FB:  = Forms
  loc_69D800: ILdRf var_98
  loc_69D803: LitStr "Hand"
  loc_69D806: EqStr
  loc_69D808: CVarBoolI2 var_CC
  loc_69D80C: LitI4 5
  loc_69D811: FLdZeroAd var_108
  loc_69D814: CVarStr var_BC
  loc_69D817: FLdRfVar var_DC
  loc_69D81A: ImpAdCallFPR4  = Right(, )
  loc_69D81F: FLdRfVar var_DC
  loc_69D822: LitVarStr var_AC, "AHand"
  loc_69D827: HardType
  loc_69D828: EqVar var_FC
  loc_69D82C: AndVar var_118
  loc_69D830: CBoolVarNull
  loc_69D832: FFree1Str var_98
  loc_69D835: FFreeVar var_BC = "": var_DC = ""
  loc_69D83E: BranchF loc_69D884
  loc_69D841: FLdRfVar var_98
  loc_69D844: FLdPr var_8C
  loc_69D847: Me = from_stack_1
  loc_69D84C: LitVar_Missing var_FC
  loc_69D84F: LitVar_Missing var_DC
  loc_69D852: FLdZeroAd var_98
  loc_69D855: CVarStr var_BC
  loc_69D858: ILdRf var_8C
  loc_69D85B: FStAd var_9C 
  loc_69D85F: FLdRfVar var_9C
  loc_69D862: CVarRef
  loc_69D867: FLdPr var_88
  loc_69D86A: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D86F: ILdRf var_9C
  loc_69D872: CastAd
  loc_69D875: FStAdFunc var_8C
  loc_69D878: FFree1Ad var_9C
  loc_69D87B: FFreeVar var_BC = "": var_DC = ""
  loc_69D884: FLdRfVar var_8C
  loc_69D887: NextEachCollObj
  loc_69D88F: FLdPr Me
  loc_69D892: MemLdRfVar from_stack_1.global_160
  loc_69D895: NewIfNullAd
  loc_69D898: FLdRfVar var_8C
  loc_69D89B: ForEachCollObj
  loc_69D8A3: FLdRfVar var_98
  loc_69D8A6: FLdPr var_8C
  loc_69D8A9:  = Forms
  loc_69D8AE: ILdRf var_98
  loc_69D8B1: LitStr "DescT"
  loc_69D8B4: EqStr
  loc_69D8B6: FFree1Str var_98
  loc_69D8B9: BranchF loc_69D8FF
  loc_69D8BC: FLdRfVar var_98
  loc_69D8BF: FLdPr var_8C
  loc_69D8C2: Me = from_stack_1
  loc_69D8C7: LitVar_Missing var_FC
  loc_69D8CA: LitVar_Missing var_DC
  loc_69D8CD: FLdZeroAd var_98
  loc_69D8D0: CVarStr var_BC
  loc_69D8D3: ILdRf var_8C
  loc_69D8D6: FStAd var_9C 
  loc_69D8DA: FLdRfVar var_9C
  loc_69D8DD: CVarRef
  loc_69D8E2: FLdPr var_88
  loc_69D8E5: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D8EA: ILdRf var_9C
  loc_69D8ED: CastAd
  loc_69D8F0: FStAdFunc var_8C
  loc_69D8F3: FFree1Ad var_9C
  loc_69D8F6: FFreeVar var_BC = "": var_DC = ""
  loc_69D8FF: FLdRfVar var_8C
  loc_69D902: NextEachCollObj
  loc_69D90A: FLdPr Me
  loc_69D90D: MemLdRfVar from_stack_1.global_160
  loc_69D910: NewIfNullAd
  loc_69D913: FLdRfVar var_8C
  loc_69D916: ForEachCollObj
  loc_69D91E: FLdRfVar var_98
  loc_69D921: FLdPr var_8C
  loc_69D924:  = Forms
  loc_69D929: ILdRf var_98
  loc_69D92C: LitStr "TDesc"
  loc_69D92F: EqStr
  loc_69D931: FFree1Str var_98
  loc_69D934: BranchF loc_69D97A
  loc_69D937: FLdRfVar var_98
  loc_69D93A: FLdPr var_8C
  loc_69D93D: Me = from_stack_1
  loc_69D942: LitVar_Missing var_FC
  loc_69D945: LitVar_Missing var_DC
  loc_69D948: FLdZeroAd var_98
  loc_69D94B: CVarStr var_BC
  loc_69D94E: ILdRf var_8C
  loc_69D951: FStAd var_9C 
  loc_69D955: FLdRfVar var_9C
  loc_69D958: CVarRef
  loc_69D95D: FLdPr var_88
  loc_69D960: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D965: ILdRf var_9C
  loc_69D968: CastAd
  loc_69D96B: FStAdFunc var_8C
  loc_69D96E: FFree1Ad var_9C
  loc_69D971: FFreeVar var_BC = "": var_DC = ""
  loc_69D97A: FLdRfVar var_8C
  loc_69D97D: NextEachCollObj
  loc_69D985: FLdPr Me
  loc_69D988: MemLdRfVar from_stack_1.global_160
  loc_69D98B: NewIfNullAd
  loc_69D98E: FLdRfVar var_8C
  loc_69D991: ForEachCollObj
  loc_69D999: FLdRfVar var_98
  loc_69D99C: FLdPr var_8C
  loc_69D99F:  = Forms
  loc_69D9A4: ILdRf var_98
  loc_69D9A7: LitStr "BTDtAnu"
  loc_69D9AA: EqStr
  loc_69D9AC: FFree1Str var_98
  loc_69D9AF: BranchF loc_69D9F5
  loc_69D9B2: FLdRfVar var_98
  loc_69D9B5: FLdPr var_8C
  loc_69D9B8: Me = from_stack_1
  loc_69D9BD: LitVar_Missing var_FC
  loc_69D9C0: LitVar_Missing var_DC
  loc_69D9C3: FLdZeroAd var_98
  loc_69D9C6: CVarStr var_BC
  loc_69D9C9: ILdRf var_8C
  loc_69D9CC: FStAd var_9C 
  loc_69D9D0: FLdRfVar var_9C
  loc_69D9D3: CVarRef
  loc_69D9D8: FLdPr var_88
  loc_69D9DB: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69D9E0: ILdRf var_9C
  loc_69D9E3: CastAd
  loc_69D9E6: FStAdFunc var_8C
  loc_69D9E9: FFree1Ad var_9C
  loc_69D9EC: FFreeVar var_BC = "": var_DC = ""
  loc_69D9F5: FLdRfVar var_8C
  loc_69D9F8: NextEachCollObj
  loc_69DA00: FLdPr Me
  loc_69DA03: MemLdRfVar from_stack_1.global_160
  loc_69DA06: NewIfNullAd
  loc_69DA09: FLdRfVar var_8C
  loc_69DA0C: ForEachCollObj
  loc_69DA14: FLdRfVar var_98
  loc_69DA17: FLdPr var_8C
  loc_69DA1A:  = Forms
  loc_69DA1F: ILdRf var_98
  loc_69DA22: LitStr "AnuTD"
  loc_69DA25: EqStr
  loc_69DA27: FFree1Str var_98
  loc_69DA2A: BranchF loc_69DA70
  loc_69DA2D: FLdRfVar var_98
  loc_69DA30: FLdPr var_8C
  loc_69DA33: Me = from_stack_1
  loc_69DA38: LitVar_Missing var_FC
  loc_69DA3B: LitVar_Missing var_DC
  loc_69DA3E: FLdZeroAd var_98
  loc_69DA41: CVarStr var_BC
  loc_69DA44: ILdRf var_8C
  loc_69DA47: FStAd var_9C 
  loc_69DA4B: FLdRfVar var_9C
  loc_69DA4E: CVarRef
  loc_69DA53: FLdPr var_88
  loc_69DA56: Me.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69DA5B: ILdRf var_9C
  loc_69DA5E: CastAd
  loc_69DA61: FStAdFunc var_8C
  loc_69DA64: FFree1Ad var_9C
  loc_69DA67: FFreeVar var_BC = "": var_DC = ""
  loc_69DA70: FLdRfVar var_8C
  loc_69DA73: NextEachCollObj
  loc_69DA7B: LitNothing
  loc_69DA7D: CastAd
  loc_69DA80: FStAdFuncNoPop
  loc_69DA83: FLdPr Me
  loc_69DA86: MemStAd
  loc_69DA8A: FFree1Ad var_9C
  loc_69DA8D: ILdRf var_88
  loc_69DA90: FLdPr Me
  loc_69DA93: MemStAd
  loc_69DA97: ExitProcHresult
End Function
