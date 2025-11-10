VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form LogUsuarios
  Caption = "Log de usuarios"
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
  ClientWidth = 6765
  ClientHeight = 7500
  StartUpPosition = 3 'Windows Default
  Moveable = 0   'False
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 960
    Top = 6720
    Width = 2415
    Height = 615
    TabIndex = 3
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
  Begin MSFlexGridLib.MSFlexGrid TablaLog
    Left = 375
    Top = 360
    Width = 6015
    Height = 5895
    TabIndex = 2
    OleObjectBlob = "LogUsuarios.frx":0000
  End
  Begin VB.CommandButton Command2
    Caption = "Command2"
    Left = 135
    Top = 120
    Width = 6495
    Height = 6375
    TabIndex = 1
  End
  Begin VB.CommandButton Command1
    Caption = "&Aceptar"
    Left = 3480
    Top = 6720
    Width = 2415
    Height = 615
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

Attribute VB_Name = "LogUsuarios"


Private Sub Command1_Click() '5D6A2C
  'Data Table: 409A38
  loc_5D6A08: FLdRfVar var_94
  loc_5D6A0B: from_stack_1v = Proc_74_4_627840()
  loc_5D6A10: FFree1Var var_94 = ""
  loc_5D6A13: ILdRf Me
  loc_5D6A16: FStAdNoPop
  loc_5D6A1A: ImpAdLdRf MemVar_7520D4
  loc_5D6A1D: NewIfNullPr Global
  loc_5D6A20: Global.Unload from_stack_1
  loc_5D6A25: FFree1Ad var_98
  loc_5D6A28: ExitProcHresult
  loc_5D6A29: ExitProcR8
  loc_5D6A2A: ExitProcR8
End Sub

Private Sub TablaLog_UnknownEvent_8 '6161E0
  'Data Table: 409A38
  loc_6160C0: FLdPrThis
  loc_6160C1: VCallAd Control_ID_TablaLog
  loc_6160C4: FStAdFunc var_88
  loc_6160C7: FLdPr var_88
  loc_6160CA: LateIdLdVar var_98 DispID_11 0
  loc_6160D1: CI4Var
  loc_6160D3: LitI4 3
  loc_6160D8: EqI4
  loc_6160D9: FLdPrThis
  loc_6160DA: VCallAd Control_ID_TablaLog
  loc_6160DD: FStAdFunc var_9C
  loc_6160E0: FLdPr var_9C
  loc_6160E3: LateIdLdVar var_AC DispID_10 0
  loc_6160EA: CI4Var
  loc_6160EC: LitI4 0
  loc_6160F1: GtI4
  loc_6160F2: AndI4
  loc_6160F3: FFreeAd var_88 = ""
  loc_6160FA: FFreeVar var_98 = ""
  loc_616101: BranchF loc_6161DF
  loc_616104: FLdPrThis
  loc_616105: VCallAd Control_ID_TablaLog
  loc_616108: FStAdFunc var_88
  loc_61610B: FLdPr var_88
  loc_61610E: LateIdLdVar var_98 DispID_10 0
  loc_616115: CI4Var
  loc_616117: CVarI4
  loc_61611B: PopAdLdVar
  loc_61611C: LitVarI4
  loc_616124: PopAdLdVar
  loc_616125: FLdPrThis
  loc_616126: VCallAd Control_ID_TablaLog
  loc_616129: FStAdFunc var_9C
  loc_61612C: FLdPr var_9C
  loc_61612F: LateIdCallLdVar
  loc_616139: CStrVarTmp
  loc_61613A: FStStrNoPop var_D0
  loc_61613D: LitStr "SI"
  loc_616140: EqStr
  loc_616142: FFree1Str var_D0
  loc_616145: FFreeAd var_88 = ""
  loc_61614C: FFreeVar var_98 = ""
  loc_616153: BranchF loc_61619C
  loc_616156: FLdPrThis
  loc_616157: VCallAd Control_ID_TablaLog
  loc_61615A: FStAdFunc var_88
  loc_61615D: FLdPr var_88
  loc_616160: LateIdLdVar var_98 DispID_10 0
  loc_616167: CI4Var
  loc_616169: CVarI4
  loc_61616D: PopAdLdVar
  loc_61616E: LitVarI4
  loc_616176: PopAdLdVar
  loc_616177: LitVarStr var_E0, "NO"
  loc_61617C: PopAdLdVar
  loc_61617D: FLdPrThis
  loc_61617E: VCallAd Control_ID_TablaLog
  loc_616181: FStAdFunc var_9C
  loc_616184: FLdPr var_9C
  loc_616187: LateIdCallSt
  loc_61618F: FFreeAd var_88 = ""
  loc_616196: FFree1Var var_98 = ""
  loc_616199: Branch loc_6161DF
  loc_61619C: FLdPrThis
  loc_61619D: VCallAd Control_ID_TablaLog
  loc_6161A0: FStAdFunc var_88
  loc_6161A3: FLdPr var_88
  loc_6161A6: LateIdLdVar var_98 DispID_10 0
  loc_6161AD: CI4Var
  loc_6161AF: CVarI4
  loc_6161B3: PopAdLdVar
  loc_6161B4: LitVarI4
  loc_6161BC: PopAdLdVar
  loc_6161BD: LitVarStr var_E0, "SI"
  loc_6161C2: PopAdLdVar
  loc_6161C3: FLdPrThis
  loc_6161C4: VCallAd Control_ID_TablaLog
  loc_6161C7: FStAdFunc var_9C
  loc_6161CA: FLdPr var_9C
  loc_6161CD: LateIdCallSt
  loc_6161D5: FFreeAd var_88 = ""
  loc_6161DC: FFree1Var var_98 = ""
  loc_6161DF: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D1DF0
  'Data Table: 409A38
  loc_5D1DD8: ILdRf Me
  loc_5D1DDB: FStAdNoPop
  loc_5D1DDF: ImpAdLdRf MemVar_7520D4
  loc_5D1DE2: NewIfNullPr Global
  loc_5D1DE5: Global.Unload from_stack_1
  loc_5D1DEA: FFree1Ad var_88
  loc_5D1DED: ExitProcHresult
End Sub

Private Sub Form_Activate() '6ACF10
  'Data Table: 409A38
  loc_6AC7FC: OnErrorGoto loc_6ACEA6
  loc_6AC7FF: FLdRfVar var_AA
  loc_6AC802: LitStr "\reporte.mdb"
  loc_6AC805: FStStrCopy var_A8
  loc_6AC808: FLdRfVar var_A8
  loc_6AC80B: ImpAdLdRf MemVar_74DC6C
  loc_6AC80E: NewIfNullPr Reportes_Anteriores
  loc_6AC811: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_6AC816: FFree1Str var_A8
  loc_6AC819: FLdRfVar var_E4
  loc_6AC81C: LitVar_Missing var_E0
  loc_6AC81F: PopAdLdVar
  loc_6AC820: LitVar_Missing var_D0
  loc_6AC823: PopAdLdVar
  loc_6AC824: LitVar_Missing var_C0
  loc_6AC827: PopAdLdVar
  loc_6AC828: LitStr "SELECT * FROM  Modulos"
  loc_6AC82B: FLdRfVar var_B0
  loc_6AC82E: ImpAdLdRf MemVar_74DC6C
  loc_6AC831: NewIfNullPr Reportes_Anteriores
  loc_6AC834: from_stack_1v = Reportes_Anteriores.DBaseGet()
  loc_6AC839: FLdPr var_B0
  loc_6AC83C: Reportes_Anteriores.Database.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6AC841: ILdRf var_E4
  loc_6AC844: FLdPr Me
  loc_6AC847: MemStAd
  loc_6AC84B: FFreeAd var_B0 = ""
  loc_6AC852: LitStr vbNullString
  loc_6AC855: FStStrCopy var_9C
  loc_6AC858: LitVarI4
  loc_6AC860: PopAdLdVar
  loc_6AC861: FLdPrThis
  loc_6AC862: VCallAd Control_ID_TablaLog
  loc_6AC865: FStAdFunc var_B0
  loc_6AC868: FLdPr var_B0
  loc_6AC86B: LateIdSt
  loc_6AC870: FFree1Ad var_B0
  loc_6AC873: LitVarI2 var_C0, 12
  loc_6AC878: PopAdLdVar
  loc_6AC879: FLdPrThis
  loc_6AC87A: VCallAd Control_ID_TablaLog
  loc_6AC87D: FStAdFunc var_B0
  loc_6AC880: FLdPr var_B0
  loc_6AC883: LateIdLdVar var_F4 DispID_-512 -1
  loc_6AC88A: CastAdVar Me
  loc_6AC88E: FStAdFunc var_E4
  loc_6AC891: FLdPr var_E4
  loc_6AC894: LateIdSt
  loc_6AC899: FFreeAd var_B0 = ""
  loc_6AC8A0: FFree1Var var_F4 = ""
  loc_6AC8A3: LitVarI4
  loc_6AC8AB: PopAdLdVar
  loc_6AC8AC: FLdPrThis
  loc_6AC8AD: VCallAd Control_ID_TablaLog
  loc_6AC8B0: FStAdFunc var_B0
  loc_6AC8B3: FLdPr var_B0
  loc_6AC8B6: LateIdSt
  loc_6AC8BB: FFree1Ad var_B0
  loc_6AC8BE: LitVarI4
  loc_6AC8C6: PopAdLdVar
  loc_6AC8C7: LitI4 4
  loc_6AC8CC: CI2I4
  loc_6AC8CD: CVarI2 var_D0
  loc_6AC8D0: PopAdLdVar
  loc_6AC8D1: FLdPrThis
  loc_6AC8D2: VCallAd Control_ID_TablaLog
  loc_6AC8D5: FStAdFunc var_B0
  loc_6AC8D8: FLdPr var_B0
  loc_6AC8DB: LateIdCallSt
  loc_6AC8E3: FFree1Ad var_B0
  loc_6AC8E6: LitVarI4
  loc_6AC8EE: PopAdLdVar
  loc_6AC8EF: LitI4 4
  loc_6AC8F4: CI2I4
  loc_6AC8F5: CVarI2 var_D0
  loc_6AC8F8: PopAdLdVar
  loc_6AC8F9: FLdPrThis
  loc_6AC8FA: VCallAd Control_ID_TablaLog
  loc_6AC8FD: FStAdFunc var_B0
  loc_6AC900: FLdPr var_B0
  loc_6AC903: LateIdCallSt
  loc_6AC90B: FFree1Ad var_B0
  loc_6AC90E: LitVarI4
  loc_6AC916: PopAdLdVar
  loc_6AC917: LitI4 4
  loc_6AC91C: CI2I4
  loc_6AC91D: CVarI2 var_D0
  loc_6AC920: PopAdLdVar
  loc_6AC921: FLdPrThis
  loc_6AC922: VCallAd Control_ID_TablaLog
  loc_6AC925: FStAdFunc var_B0
  loc_6AC928: FLdPr var_B0
  loc_6AC92B: LateIdCallSt
  loc_6AC933: FFree1Ad var_B0
  loc_6AC936: LitVarI4
  loc_6AC93E: PopAdLdVar
  loc_6AC93F: LitVarI2 var_D0, 4
  loc_6AC944: PopAdLdVar
  loc_6AC945: FLdPrThis
  loc_6AC946: VCallAd Control_ID_TablaLog
  loc_6AC949: FStAdFunc var_B0
  loc_6AC94C: FLdPr var_B0
  loc_6AC94F: LateIdCallSt
  loc_6AC957: FFree1Ad var_B0
  loc_6AC95A: LitVarI4
  loc_6AC962: PopAdLdVar
  loc_6AC963: FLdRfVar var_104
  loc_6AC966: CI2Var
  loc_6AC967: CVarI2 var_D0
  loc_6AC96A: PopAdLdVar
  loc_6AC96B: FLdPrThis
  loc_6AC96C: VCallAd Control_ID_TablaLog
  loc_6AC96F: FStAdFunc var_B0
  loc_6AC972: FLdPr var_B0
  loc_6AC975: LateIdCallSt
  loc_6AC97D: FFree1Ad var_B0
  loc_6AC980: LitVarI4
  loc_6AC988: PopAdLdVar
  loc_6AC989: LitVarI2 var_D0, 4
  loc_6AC98E: PopAdLdVar
  loc_6AC98F: FLdPrThis
  loc_6AC990: VCallAd Control_ID_TablaLog
  loc_6AC993: FStAdFunc var_B0
  loc_6AC996: FLdPr var_B0
  loc_6AC999: LateIdCallSt
  loc_6AC9A1: FFree1Ad var_B0
  loc_6AC9A4: LitVarI4
  loc_6AC9AC: PopAdLdVar
  loc_6AC9AD: LitVarI4
  loc_6AC9B5: PopAdLdVar
  loc_6AC9B6: FLdPrThis
  loc_6AC9B7: VCallAd Control_ID_TablaLog
  loc_6AC9BA: FStAdFunc var_B0
  loc_6AC9BD: FLdPr var_B0
  loc_6AC9C0: LateIdCallSt
  loc_6AC9C8: FFree1Ad var_B0
  loc_6AC9CB: LitVarI4
  loc_6AC9D3: PopAdLdVar
  loc_6AC9D4: LitVarI4
  loc_6AC9DC: PopAdLdVar
  loc_6AC9DD: FLdPrThis
  loc_6AC9DE: VCallAd Control_ID_TablaLog
  loc_6AC9E1: FStAdFunc var_B0
  loc_6AC9E4: FLdPr var_B0
  loc_6AC9E7: LateIdCallSt
  loc_6AC9EF: FFree1Ad var_B0
  loc_6AC9F2: LitVarI4
  loc_6AC9FA: PopAdLdVar
  loc_6AC9FB: LitVarI4
  loc_6ACA03: PopAdLdVar
  loc_6ACA04: FLdPrThis
  loc_6ACA05: VCallAd Control_ID_TablaLog
  loc_6ACA08: FStAdFunc var_B0
  loc_6ACA0B: FLdPr var_B0
  loc_6ACA0E: LateIdCallSt
  loc_6ACA16: FFree1Ad var_B0
  loc_6ACA19: LitVarI4
  loc_6ACA21: PopAdLdVar
  loc_6ACA22: LitVarI4
  loc_6ACA2A: PopAdLdVar
  loc_6ACA2B: FLdPrThis
  loc_6ACA2C: VCallAd Control_ID_TablaLog
  loc_6ACA2F: FStAdFunc var_B0
  loc_6ACA32: FLdPr var_B0
  loc_6ACA35: LateIdCallSt
  loc_6ACA3D: FFree1Ad var_B0
  loc_6ACA40: LitVarI4
  loc_6ACA48: PopAdLdVar
  loc_6ACA49: LitVarI4
  loc_6ACA51: PopAdLdVar
  loc_6ACA52: LitVarStr var_E0, "Nº"
  loc_6ACA57: PopAdLdVar
  loc_6ACA58: FLdPrThis
  loc_6ACA59: VCallAd Control_ID_TablaLog
  loc_6ACA5C: FStAdFunc var_B0
  loc_6ACA5F: FLdPr var_B0
  loc_6ACA62: LateIdCallSt
  loc_6ACA6A: FFree1Ad var_B0
  loc_6ACA6D: LitVarI4
  loc_6ACA75: PopAdLdVar
  loc_6ACA76: LitVarI4
  loc_6ACA7E: PopAdLdVar
  loc_6ACA7F: LitVarStr var_E0, "Descripción"
  loc_6ACA84: PopAdLdVar
  loc_6ACA85: FLdPrThis
  loc_6ACA86: VCallAd Control_ID_TablaLog
  loc_6ACA89: FStAdFunc var_B0
  loc_6ACA8C: FLdPr var_B0
  loc_6ACA8F: LateIdCallSt
  loc_6ACA97: FFree1Ad var_B0
  loc_6ACA9A: LitVarI4
  loc_6ACAA2: PopAdLdVar
  loc_6ACAA3: LitVarI4
  loc_6ACAAB: PopAdLdVar
  loc_6ACAAC: LitVarStr var_E0, "Log"
  loc_6ACAB1: PopAdLdVar
  loc_6ACAB2: FLdPrThis
  loc_6ACAB3: VCallAd Control_ID_TablaLog
  loc_6ACAB6: FStAdFunc var_B0
  loc_6ACAB9: FLdPr var_B0
  loc_6ACABC: LateIdCallSt
  loc_6ACAC4: FFree1Ad var_B0
  loc_6ACAC7: ILdRf Me
  loc_6ACACA: CastAd
  loc_6ACACD: FStAdFunc var_B0
  loc_6ACAD0: FLdRfVar var_B0
  loc_6ACAD3: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6ACAD8: FFree1Ad var_B0
  loc_6ACADB: LitI4 0
  loc_6ACAE0: FLdPr Me
  loc_6ACAE3: MemLdPr global_52
  loc_6ACAE6: Me.Recordset.MoveLast from_stack_1
  loc_6ACAEB: FLdRfVar var_108
  loc_6ACAEE: FLdPr Me
  loc_6ACAF1: MemLdPr global_52
  loc_6ACAF4:  = Me.RecordCount
  loc_6ACAF9: ILdRf var_108
  loc_6ACAFC: CI2I4
  loc_6ACAFD: FLdPr Me
  loc_6ACB00: MemStI2 global_56
  loc_6ACB03: FLdPr Me
  loc_6ACB06: MemLdPr global_52
  loc_6ACB09: Me.MoveFirst
  loc_6ACB0E: LitI2_Byte 1
  loc_6ACB10: FStI2 var_98
  loc_6ACB13: LitI2_Byte 1
  loc_6ACB15: FLdRfVar var_96
  loc_6ACB18: FLdPr Me
  loc_6ACB1B: MemLdI2 global_56
  loc_6ACB1E: ForI2 var_10C
  loc_6ACB24: FLdRfVar var_AA
  loc_6ACB27: FLdPr Me
  loc_6ACB2A: MemLdPr global_52
  loc_6ACB2D:  = Me.EOF
  loc_6ACB32: FLdI2 var_AA
  loc_6ACB35: NotI4
  loc_6ACB36: BranchF loc_6ACE58
  loc_6ACB39: FLdRfVar var_F4
  loc_6ACB3C: FLdRfVar var_E4
  loc_6ACB3F: LitVarI2 var_C0, 4
  loc_6ACB44: PopAdLdVar
  loc_6ACB45: FLdRfVar var_B0
  loc_6ACB48: FLdPr Me
  loc_6ACB4B: MemLdPr global_52
  loc_6ACB4E:  = Me.Fields
  loc_6ACB53: FLdPr var_B0
  loc_6ACB56: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACB5B: FLdPr var_E4
  loc_6ACB5E:  = Me.Value
  loc_6ACB63: FLdRfVar var_F4
  loc_6ACB66: LitVarStr var_D0, "0"
  loc_6ACB6B: HardType
  loc_6ACB6C: NeVarBool
  loc_6ACB6E: FFreeAd var_B0 = ""
  loc_6ACB75: FFree1Var var_F4 = ""
  loc_6ACB78: BranchF loc_6ACE4A
  loc_6ACB7B: FLdRfVar var_E4
  loc_6ACB7E: LitVarI2 var_C0, 3
  loc_6ACB83: PopAdLdVar
  loc_6ACB84: FLdRfVar var_B0
  loc_6ACB87: FLdPr Me
  loc_6ACB8A: MemLdPr global_52
  loc_6ACB8D:  = Me.Fields
  loc_6ACB92: FLdPr var_B0
  loc_6ACB95: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACB9A: FLdZeroAd var_E4
  loc_6ACB9D: CVarAd
  loc_6ACBA1: CBoolVarNull
  loc_6ACBA3: FFree1Ad var_B0
  loc_6ACBA6: FFree1Var var_F4 = ""
  loc_6ACBA9: BranchF loc_6ACBB5
  loc_6ACBAC: LitStr "SI"
  loc_6ACBAF: FStStrCopy var_A4
  loc_6ACBB2: Branch loc_6ACBBB
  loc_6ACBB5: LitStr "NO"
  loc_6ACBB8: FStStrCopy var_A4
  loc_6ACBBB: FLdRfVar var_11C
  loc_6ACBBE: FLdRfVar var_E4
  loc_6ACBC1: LitVarI2 var_C0, 0
  loc_6ACBC6: PopAdLdVar
  loc_6ACBC7: FLdRfVar var_B0
  loc_6ACBCA: FLdPr Me
  loc_6ACBCD: MemLdPr global_52
  loc_6ACBD0:  = Me.Fields
  loc_6ACBD5: FLdPr var_B0
  loc_6ACBD8: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACBDD: FLdPr var_E4
  loc_6ACBE0:  = Me.Value
  loc_6ACBE5: FLdRfVar var_11C
  loc_6ACBE8: LitI4 9
  loc_6ACBED: FLdRfVar var_F4
  loc_6ACBF0: ImpAdCallFPR4  = Chr()
  loc_6ACBF5: FLdRfVar var_F4
  loc_6ACBF8: ConcatVar var_12C
  loc_6ACBFC: FLdRfVar var_144
  loc_6ACBFF: FLdRfVar var_134
  loc_6ACC02: LitVarI2 var_D0, 1
  loc_6ACC07: PopAdLdVar
  loc_6ACC08: FLdRfVar var_130
  loc_6ACC0B: FLdPr Me
  loc_6ACC0E: MemLdPr global_52
  loc_6ACC11:  = Me.Fields
  loc_6ACC16: FLdPr var_130
  loc_6ACC19: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACC1E: FLdPr var_134
  loc_6ACC21:  = Me.Value
  loc_6ACC26: FLdRfVar var_144
  loc_6ACC29: ConcatVar var_154
  loc_6ACC2D: LitI4 9
  loc_6ACC32: FLdRfVar var_164
  loc_6ACC35: ImpAdCallFPR4  = Chr()
  loc_6ACC3A: FLdRfVar var_164
  loc_6ACC3D: ConcatVar var_174
  loc_6ACC41: FLdRfVar var_18C
  loc_6ACC44: FLdRfVar var_17C
  loc_6ACC47: LitVarI2 var_E0, 2
  loc_6ACC4C: PopAdLdVar
  loc_6ACC4D: FLdRfVar var_178
  loc_6ACC50: FLdPr Me
  loc_6ACC53: MemLdPr global_52
  loc_6ACC56:  = Me.Fields
  loc_6ACC5B: FLdPr var_178
  loc_6ACC5E: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACC63: FLdPr var_17C
  loc_6ACC66:  = Me.Value
  loc_6ACC6B: FLdRfVar var_18C
  loc_6ACC6E: ConcatVar var_19C
  loc_6ACC72: LitI4 9
  loc_6ACC77: FLdRfVar var_1AC
  loc_6ACC7A: ImpAdCallFPR4  = Chr()
  loc_6ACC7F: FLdRfVar var_1AC
  loc_6ACC82: ConcatVar var_1BC
  loc_6ACC86: ILdRf var_A4
  loc_6ACC89: CVarStr var_1CC
  loc_6ACC8C: ConcatVar var_1DC
  loc_6ACC90: CStrVarTmp
  loc_6ACC91: FStStr var_9C
  loc_6ACC94: FFreeAd var_B0 = "": var_E4 = "": var_130 = "": var_134 = "": var_178 = ""
  loc_6ACCA3: FFreeVar var_11C = "": var_F4 = "": var_12C = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_18C = "": var_19C = "": var_1AC = "": var_1BC = ""
  loc_6ACCBE: FLdRfVar var_F4
  loc_6ACCC1: FLdRfVar var_E4
  loc_6ACCC4: LitVarI2 var_C0, 0
  loc_6ACCC9: PopAdLdVar
  loc_6ACCCA: FLdRfVar var_B0
  loc_6ACCCD: FLdPr Me
  loc_6ACCD0: MemLdPr global_52
  loc_6ACCD3:  = Me.Fields
  loc_6ACCD8: FLdPr var_B0
  loc_6ACCDB: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACCE0: FLdPr var_E4
  loc_6ACCE3:  = Me.Value
  loc_6ACCE8: FLdRfVar var_F4
  loc_6ACCEB: LitVarI2 var_D0, 36
  loc_6ACCF0: HardType
  loc_6ACCF1: NeVar var_11C
  loc_6ACCF5: FLdRfVar var_12C
  loc_6ACCF8: FLdRfVar var_134
  loc_6ACCFB: LitVarI2 var_E0, 0
  loc_6ACD00: PopAdLdVar
  loc_6ACD01: FLdRfVar var_130
  loc_6ACD04: FLdPr Me
  loc_6ACD07: MemLdPr global_52
  loc_6ACD0A:  = Me.Fields
  loc_6ACD0F: FLdPr var_130
  loc_6ACD12: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACD17: FLdPr var_134
  loc_6ACD1A:  = Me.Value
  loc_6ACD1F: FLdRfVar var_12C
  loc_6ACD22: LitVarI2 var_1CC, 39
  loc_6ACD27: HardType
  loc_6ACD28: NeVar var_144
  loc_6ACD2C: AndVar var_154
  loc_6ACD30: FLdRfVar var_164
  loc_6ACD33: FLdRfVar var_17C
  loc_6ACD36: LitVarI2 var_1EC, 0
  loc_6ACD3B: PopAdLdVar
  loc_6ACD3C: FLdRfVar var_178
  loc_6ACD3F: FLdPr Me
  loc_6ACD42: MemLdPr global_52
  loc_6ACD45:  = Me.Fields
  loc_6ACD4A: FLdPr var_178
  loc_6ACD4D: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACD52: FLdPr var_17C
  loc_6ACD55:  = Me.Value
  loc_6ACD5A: FLdRfVar var_164
  loc_6ACD5D: LitVarI2 var_1FC, 77
  loc_6ACD62: HardType
  loc_6ACD63: NeVar var_174
  loc_6ACD67: AndVar var_18C
  loc_6ACD6B: FLdRfVar var_19C
  loc_6ACD6E: FLdRfVar var_214
  loc_6ACD71: LitVarI2 var_210, 0
  loc_6ACD76: PopAdLdVar
  loc_6ACD77: FLdRfVar var_200
  loc_6ACD7A: FLdPr Me
  loc_6ACD7D: MemLdPr global_52
  loc_6ACD80:  = Me.Fields
  loc_6ACD85: FLdPr var_200
  loc_6ACD88: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACD8D: FLdPr var_214
  loc_6ACD90:  = Me.Value
  loc_6ACD95: FLdRfVar var_19C
  loc_6ACD98: LitVarI2 var_224, 78
  loc_6ACD9D: HardType
  loc_6ACD9E: NeVar var_1AC
  loc_6ACDA2: AndVar var_1BC
  loc_6ACDA6: FLdRfVar var_1DC
  loc_6ACDA9: FLdRfVar var_23C
  loc_6ACDAC: LitVarI2 var_238, 0
  loc_6ACDB1: PopAdLdVar
  loc_6ACDB2: FLdRfVar var_228
  loc_6ACDB5: FLdPr Me
  loc_6ACDB8: MemLdPr global_52
  loc_6ACDBB:  = Me.Fields
  loc_6ACDC0: FLdPr var_228
  loc_6ACDC3: from_stack_2 = Me.Item(from_stack_1)
  loc_6ACDC8: FLdPr var_23C
  loc_6ACDCB:  = Me.Value
  loc_6ACDD0: FLdRfVar var_1DC
  loc_6ACDD3: LitVarI2 var_24C, 82
  loc_6ACDD8: HardType
  loc_6ACDD9: NeVar var_25C
  loc_6ACDDD: AndVar var_26C
  loc_6ACDE1: CBoolVarNull
  loc_6ACDE3: FFreeAd var_B0 = "": var_E4 = "": var_130 = "": var_134 = "": var_178 = "": var_17C = "": var_200 = "": var_214 = "": var_228 = ""
  loc_6ACDFA: FFreeVar var_F4 = "": var_12C = "": var_164 = "": var_19C = ""
  loc_6ACE07: BranchF loc_6ACE36
  loc_6ACE0A: FLdRfVar var_9C
  loc_6ACE0D: CDargRef
  loc_6ACE11: FLdI2 var_98
  loc_6ACE14: CVarI2 var_D0
  loc_6ACE17: PopAdLdVar
  loc_6ACE18: FLdPrThis
  loc_6ACE19: VCallAd Control_ID_TablaLog
  loc_6ACE1C: FStAdFunc var_B0
  loc_6ACE1F: FLdPr var_B0
  loc_6ACE22: LateIdCall
  loc_6ACE2A: FFree1Ad var_B0
  loc_6ACE2D: FLdI2 var_98
  loc_6ACE30: LitI2_Byte 1
  loc_6ACE32: AddI2
  loc_6ACE33: FStI2 var_98
  loc_6ACE36: LitStr vbNullString
  loc_6ACE39: FStStrCopy var_9C
  loc_6ACE3C: FLdPr Me
  loc_6ACE3F: MemLdPr global_52
  loc_6ACE42: Me.MoveNext
  loc_6ACE47: Branch loc_6ACE55
  loc_6ACE4A: FLdPr Me
  loc_6ACE4D: MemLdPr global_52
  loc_6ACE50: Me.MoveNext
  loc_6ACE55: Branch loc_6ACB24
  loc_6ACE58: FLdRfVar var_96
  loc_6ACE5B: NextI2 var_10C, loc_6ACB24
  loc_6ACE60: FLdRfVar var_AA
  loc_6ACE63: ImpAdLdRf MemVar_74DC6C
  loc_6ACE66: NewIfNullPr Reportes_Anteriores
  loc_6ACE69: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_6ACE6E: FLdPrThis
  loc_6ACE6F: VCallAd Control_ID_Grid1
  loc_6ACE72: FStAdFunc var_B0
  loc_6ACE75: FLdPr var_B0
  loc_6ACE78: LateIdLdVar var_F4 DispID_4 0
  loc_6ACE7F: CI4Var
  loc_6ACE81: LitI4 1
  loc_6ACE86: SubI4
  loc_6ACE87: CVarI4
  loc_6ACE8B: PopAdLdVar
  loc_6ACE8C: FLdPrThis
  loc_6ACE8D: VCallAd Control_ID_Grid1
  loc_6ACE90: FStAdFunc var_E4
  loc_6ACE93: FLdPr var_E4
  loc_6ACE96: LateIdSt
  loc_6ACE9B: FFreeAd var_B0 = ""
  loc_6ACEA2: FFree1Var var_F4 = ""
  loc_6ACEA5: ExitProcHresult
  loc_6ACEA6: ImpAdCallI2 Proc_87_15_5C8864()
  loc_6ACEAB: NotI4
  loc_6ACEAC: BranchF loc_6ACEE9
  loc_6ACEAF: LitVar_Missing var_144
  loc_6ACEB2: LitVar_Missing var_12C
  loc_6ACEB5: LitVar_Missing var_11C
  loc_6ACEB8: LitI4 0
  loc_6ACEBD: FLdRfVar var_A8
  loc_6ACEC0: ImpAdCallI2 Err 'rtcErrObj
  loc_6ACEC5: FStAdFunc var_B0
  loc_6ACEC8: FLdPr var_B0
  loc_6ACECB:  = Reportes_Anteriores.Description
  loc_6ACED0: FLdZeroAd var_A8
  loc_6ACED3: CVarStr var_F4
  loc_6ACED6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6ACEDB: FFree1Ad var_B0
  loc_6ACEDE: FFreeVar var_F4 = "": var_11C = "": var_12C = ""
  loc_6ACEE9: FLdRfVar var_AA
  loc_6ACEEC: ImpAdLdRf MemVar_74DC6C
  loc_6ACEEF: NewIfNullPr Reportes_Anteriores
  loc_6ACEF2: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_6ACEF7: ILdRf Me
  loc_6ACEFA: FStAdNoPop
  loc_6ACEFE: ImpAdLdRf MemVar_7520D4
  loc_6ACF01: NewIfNullPr Global
  loc_6ACF04: Global.Unload from_stack_1
  loc_6ACF09: FFree1Ad var_B0
  loc_6ACF0C: ExitProcHresult
End Sub

Private Function Proc_74_4_627840() '627840
  'Data Table: 409A38
  loc_6276D4: ZeroRetValVar
  loc_6276D6: OnErrorGoto loc_6277F2
  loc_6276D9: FLdRfVar var_A6
  loc_6276DC: LitStr "\Reporte.mdb"
  loc_6276DF: FStStrCopy var_A4
  loc_6276E2: FLdRfVar var_A4
  loc_6276E5: ImpAdLdRf MemVar_74DC6C
  loc_6276E8: NewIfNullPr Reportes_Anteriores
  loc_6276EB: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_6276F0: FFree1Str var_A4
  loc_6276F3: LitI2_Byte 1
  loc_6276F5: FLdRfVar var_96
  loc_6276F8: FLdPrThis
  loc_6276F9: VCallAd Control_ID_Grid1
  loc_6276FC: FStAdFunc var_AC
  loc_6276FF: FLdPr var_AC
  loc_627702: LateIdLdVar var_BC DispID_4 0
  loc_627709: CI4Var
  loc_62770B: LitI4 1
  loc_627710: SubI4
  loc_627711: CI2I4
  loc_627712: FFree1Ad var_AC
  loc_627715: FFree1Var var_BC = ""
  loc_627718: ForI2 var_C0
  loc_62771E: FLdI2 var_96
  loc_627721: CI4UI1
  loc_627722: CVarI4
  loc_627726: PopAdLdVar
  loc_627727: LitVarI4
  loc_62772F: PopAdLdVar
  loc_627730: FLdPrThis
  loc_627731: VCallAd Control_ID_Grid1
  loc_627734: FStAdFunc var_AC
  loc_627737: FLdPr var_AC
  loc_62773A: LateIdCallLdVar
  loc_627744: CStrVarTmp
  loc_627745: FStStrNoPop var_A4
  loc_627748: LitStr "SI"
  loc_62774B: EqStr
  loc_62774D: FStI2 var_9E
  loc_627750: FFree1Str var_A4
  loc_627753: FFree1Ad var_AC
  loc_627756: FFree1Var var_BC = ""
  loc_627759: LitVarStr var_D0, "UPDATE MODULOS SET log = "
  loc_62775E: FLdI2 var_9E
  loc_627761: CVarBoolI2 var_E0
  loc_627765: ConcatVar var_BC
  loc_627769: LitVarStr var_F0, " WHERE id = "
  loc_62776E: ConcatVar var_100
  loc_627772: FLdI2 var_96
  loc_627775: CI4UI1
  loc_627776: CVarI4
  loc_62777A: PopAdLdVar
  loc_62777B: LitVarI4
  loc_627783: PopAdLdVar
  loc_627784: FLdPrThis
  loc_627785: VCallAd Control_ID_Grid1
  loc_627788: FStAdFunc var_AC
  loc_62778B: FLdPr var_AC
  loc_62778E: LateIdCallLdVar
  loc_627798: CStrVarTmp
  loc_627799: CVarStr var_140
  loc_62779C: ConcatVar var_150
  loc_6277A0: CStrVarTmp
  loc_6277A1: FStStr var_9C
  loc_6277A4: FFree1Ad var_AC
  loc_6277A7: FFreeVar var_E0 = "": var_BC = "": var_130 = "": var_100 = "": var_140 = ""
  loc_6277B6: FLdVar var_160
  loc_6277BA: ILdRf var_9C
  loc_6277BD: FLdRfVar var_AC
  loc_6277C0: ImpAdLdRf MemVar_74DC6C
  loc_6277C3: NewIfNullPr Reportes_Anteriores
  loc_6277C6: from_stack_1v = Reportes_Anteriores.DBaseGet()
  loc_6277CB: FLdPr var_AC
  loc_6277CE: Reportes_Anteriores.Database.Execute from_stack_1, from_stack_2
  loc_6277D3: FFree1Ad var_AC
  loc_6277D6: FLdRfVar var_96
  loc_6277D9: NextI2 var_C0, loc_62771E
  loc_6277DE: FLdRfVar var_A6
  loc_6277E1: ImpAdLdRf MemVar_74DC6C
  loc_6277E4: NewIfNullPr Reportes_Anteriores
  loc_6277E7: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_6277EC: ExitProcCbHresult
  loc_6277F2: FLdRfVar var_A4
  loc_6277F5: ImpAdCallI2 Err 'rtcErrObj
  loc_6277FA: FStAdFunc var_AC
  loc_6277FD: FLdPr var_AC
  loc_627800:  = Reportes_Anteriores.Description
  loc_627805: LitVar_Missing var_140
  loc_627808: LitVar_Missing var_130
  loc_62780B: LitVar_Missing var_100
  loc_62780E: LitI4 &H40
  loc_627813: FLdZeroAd var_A4
  loc_627816: CVarStr var_BC
  loc_627819: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62781E: FFree1Ad var_AC
  loc_627821: FFreeVar var_BC = "": var_100 = "": var_130 = ""
  loc_62782C: FLdRfVar var_A6
  loc_62782F: ImpAdLdRf MemVar_74DC6C
  loc_627832: NewIfNullPr Reportes_Anteriores
  loc_627835: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_62783A: ExitProcCbHresult
End Function
