VERSION 5.00
Begin VB.Form frmRemoteAdministration
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 8685
  ClientHeight = 6960
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.CommandButton cmdConsola
    Caption = "Consola &Remota Standard"
    Left = 240
    Top = 6360
    Width = 2175
    Height = 375
    TabIndex = 4
    ToolTipText = "Setea todos los permisos al modo standard"
  End
  Begin VB.Frame fraModules
    Caption = "Modulos"
    Left = 240
    Top = 960
    Width = 4575
    Height = 5175
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ListBox lstModulos
      Left = 120
      Top = 360
      Width = 4335
      Height = 4650
      TabIndex = 0
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin VB.Frame fraSurtidores
    Caption = "surtidores"
    Left = 5040
    Top = 960
    Width = 3375
    Height = 5175
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ListBox lstSurtidores
      Left = 120
      Top = 360
      Width = 3135
      Height = 4650
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
      Style = 1
    End
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 5640
    Top = 6360
    Width = 1335
    Height = 495
    TabIndex = 2
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 7200
    Top = 6360
    Width = 1335
    Height = 495
    TabIndex = 3
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
  Begin VB.Label Label1
    Caption = "Administración de Modulos Remotos"
    Left = 120
    Top = 120
    Width = 8415
    Height = 615
    TabIndex = 7
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 20.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmRemoteAdministration"


Private Sub cmdCancelar_Click() '5D3DD0
  'Data Table: 412DE4
  loc_5D3DB4: ImpAdCallFPR4 Proc_65_0_5E5404()
  loc_5D3DB9: ILdRf Me
  loc_5D3DBC: FStAdNoPop
  loc_5D3DC0: ImpAdLdRf MemVar_7520D4
  loc_5D3DC3: NewIfNullPr Global
  loc_5D3DC6: Global.Unload from_stack_1
  loc_5D3DCB: FFree1Ad var_88
  loc_5D3DCE: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5D3BA0
  'Data Table: 412DE4
  loc_5D3B84: from_stack_1v = Proc_35_6_64CF18()
  loc_5D3B89: ILdRf Me
  loc_5D3B8C: FStAdNoPop
  loc_5D3B90: ImpAdLdRf MemVar_7520D4
  loc_5D3B93: NewIfNullPr Global
  loc_5D3B96: Global.Unload from_stack_1
  loc_5D3B9B: FFree1Ad var_88
  loc_5D3B9E: ExitProcHresult
End Sub

Private Sub cmdConsola_Click() '5F45D8
  'Data Table: 412DE4
  loc_5F4534: LitVar_Missing var_108
  loc_5F4537: LitVar_Missing var_E8
  loc_5F453A: LitVar_Missing var_C8
  loc_5F453D: LitI4 &H24
  loc_5F4542: LitVarStr var_98, "¿Está seguro de setear los permisos al modo de consola remota standard?"
  loc_5F4547: FStVarCopyObj var_A8
  loc_5F454A: FLdRfVar var_A8
  loc_5F454D: ImpAdCallI2 MsgBox(, , , , )
  loc_5F4552: LitI4 7
  loc_5F4557: EqI4
  loc_5F4558: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5F4563: BranchF loc_5F4567
  loc_5F4566: ExitProcHresult
  loc_5F4567: LitI2_Byte 1
  loc_5F4569: FLdRfVar var_86
  loc_5F456C: LitI2_Byte &H20
  loc_5F456E: ForI2 var_10C
  loc_5F4574: LitI2_Byte 0
  loc_5F4576: FLdI2 var_86
  loc_5F4579: CI4UI1
  loc_5F457A: ImpAdLdRf MemVar_74A188
  loc_5F457D: Ary1StI2
  loc_5F457E: FLdRfVar var_86
  loc_5F4581: NextI2 var_10C, loc_5F4574
  loc_5F4586: LitI2_Byte 1
  loc_5F4588: FLdRfVar var_86
  loc_5F458B: LitI2_Byte &H30
  loc_5F458D: ForI2 var_110
  loc_5F4593: LitI2_Byte 0
  loc_5F4595: FLdI2 var_86
  loc_5F4598: CI4UI1
  loc_5F4599: ImpAdLdRf MemVar_74A170
  loc_5F459C: Ary1StI2
  loc_5F459D: FLdRfVar var_86
  loc_5F45A0: NextI2 var_110, loc_5F4593
  loc_5F45A5: from_stack_1v = Proc_35_4_5F5D18()
  loc_5F45AA: from_stack_1v = Proc_35_5_612DF0()
  loc_5F45AF: LitI2_Byte 0
  loc_5F45B1: FLdPrThis
  loc_5F45B2: VCallAd Control_ID_lstSurtidores
  loc_5F45B5: FStAdFunc var_114
  loc_5F45B8: FLdPr var_114
  loc_5F45BB: Me.ListIndex = from_stack_1
  loc_5F45C0: FFree1Ad var_114
  loc_5F45C3: LitI2_Byte 0
  loc_5F45C5: FLdPrThis
  loc_5F45C6: VCallAd Control_ID_lstModulos
  loc_5F45C9: FStAdFunc var_114
  loc_5F45CC: FLdPr var_114
  loc_5F45CF: Me.ListIndex = from_stack_1
  loc_5F45D4: FFree1Ad var_114
  loc_5F45D7: ExitProcHresult
End Sub

Private Sub Form_Load() '5DD008
  'Data Table: 412DE4
  loc_5DCFC0: ImpAdLdI4 MemVar_74BED4
  loc_5DCFC3: FLdPrThis
  loc_5DCFC4: VCallAd Control_ID_fraSurtidores
  loc_5DCFC7: FStAdFunc var_88
  loc_5DCFCA: FLdPr var_88
  loc_5DCFCD: Me.Caption = from_stack_1
  loc_5DCFD2: FFree1Ad var_88
  loc_5DCFD5: from_stack_1v = Proc_35_4_5F5D18()
  loc_5DCFDA: from_stack_1v = Proc_35_5_612DF0()
  loc_5DCFDF: LitI2_Byte 0
  loc_5DCFE1: FLdPrThis
  loc_5DCFE2: VCallAd Control_ID_lstSurtidores
  loc_5DCFE5: FStAdFunc var_88
  loc_5DCFE8: FLdPr var_88
  loc_5DCFEB: Me.ListIndex = from_stack_1
  loc_5DCFF0: FFree1Ad var_88
  loc_5DCFF3: LitI2_Byte 0
  loc_5DCFF5: FLdPrThis
  loc_5DCFF6: VCallAd Control_ID_lstModulos
  loc_5DCFF9: FStAdFunc var_88
  loc_5DCFFC: FLdPr var_88
  loc_5DCFFF: Me.ListIndex = from_stack_1
  loc_5DD004: FFree1Ad var_88
  loc_5DD007: ExitProcHresult
End Sub

Private Function Proc_35_4_5F5D18() '5F5D18
  'Data Table: 412DE4
  loc_5F5C6C: FLdPrThis
  loc_5F5C6D: VCallAd Control_ID_lstSurtidores
  loc_5F5C70: FStAdFunc var_8C
  loc_5F5C73: FLdPr var_8C
  loc_5F5C76: Me.Clear
  loc_5F5C7B: FFree1Ad var_8C
  loc_5F5C7E: LitI2_Byte 1
  loc_5F5C80: FLdRfVar var_86
  loc_5F5C83: ImpAdLdUI1
  loc_5F5C87: CI2UI1
  loc_5F5C89: ForI2 var_90
  loc_5F5C8F: LitI4 1
  loc_5F5C94: LitI4 1
  loc_5F5C99: LitVarStr var_B0, "@@"
  loc_5F5C9E: FStVarCopyObj var_C0
  loc_5F5CA1: FLdRfVar var_C0
  loc_5F5CA4: FLdRfVar var_86
  loc_5F5CA7: CVarRef
  loc_5F5CAC: ImpAdCallI2 Format$(, )
  loc_5F5CB1: FStStr var_E0
  loc_5F5CB4: LitVar_Missing var_DC
  loc_5F5CB7: PopAdLdVar
  loc_5F5CB8: ImpAdLdI4 MemVar_74BED4
  loc_5F5CBB: LitStr " "
  loc_5F5CBE: ConcatStr
  loc_5F5CBF: FStStrNoPop var_C4
  loc_5F5CC2: FLdZeroAd var_E0
  loc_5F5CC5: FStStrNoPop var_C8
  loc_5F5CC8: ConcatStr
  loc_5F5CC9: FStStrNoPop var_CC
  loc_5F5CCC: FLdPrThis
  loc_5F5CCD: VCallAd Control_ID_lstSurtidores
  loc_5F5CD0: FStAdFunc var_8C
  loc_5F5CD3: FLdPr var_8C
  loc_5F5CD6: Me.AddItem from_stack_1, from_stack_2
  loc_5F5CDB: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_5F5CE6: FFree1Ad var_8C
  loc_5F5CE9: FFree1Var var_C0 = ""
  loc_5F5CEC: FLdI2 var_86
  loc_5F5CEF: CI4UI1
  loc_5F5CF0: ImpAdLdRf MemVar_74A188
  loc_5F5CF3: Ary1LdI2
  loc_5F5CF4: FLdI2 var_86
  loc_5F5CF7: LitI2_Byte 1
  loc_5F5CF9: SubI2
  loc_5F5CFA: FLdPrThis
  loc_5F5CFB: VCallAd Control_ID_lstSurtidores
  loc_5F5CFE: FStAdFunc var_8C
  loc_5F5D01: FLdPr var_8C
  loc_5F5D04: Me.Selected = from_stack_1
  loc_5F5D09: FFree1Ad var_8C
  loc_5F5D0C: FLdRfVar var_86
  loc_5F5D0F: NextI2 var_90, loc_5F5C8F
  loc_5F5D14: ExitProcHresult
End Function

Private Function Proc_35_5_612DF0() '612DF0
  'Data Table: 412DE4
  loc_612CE4: FLdPrThis
  loc_612CE5: VCallAd Control_ID_lstModulos
  loc_612CE8: FStAdFunc var_8C
  loc_612CEB: FLdPr var_8C
  loc_612CEE: Me.Clear
  loc_612CF3: FFree1Ad var_8C
  loc_612CF6: LitI2_Byte 1
  loc_612CF8: FLdRfVar var_86
  loc_612CFB: LitI2_Byte &H30
  loc_612CFD: ForI2 var_90
  loc_612D03: FLdI2 var_86
  loc_612D06: LitI2_Byte &H25
  loc_612D08: EqI2
  loc_612D09: FLdI2 var_86
  loc_612D0C: LitI2_Byte &H15
  loc_612D0E: EqI2
  loc_612D0F: OrI4
  loc_612D10: LitVarI2 var_B0, 1
  loc_612D15: LitI4 1
  loc_612D1A: ImpAdLdI4 MemVar_74BEAC
  loc_612D1D: ImpAdCallI2 Mid$(, , )
  loc_612D22: FStStrNoPop var_B4
  loc_612D25: LitStr "0"
  loc_612D28: EqStr
  loc_612D2A: AndI4
  loc_612D2B: FLdI2 var_86
  loc_612D2E: LitI2_Byte &HF
  loc_612D30: EqI2
  loc_612D31: LitVarI2 var_D4, 1
  loc_612D36: LitI4 4
  loc_612D3B: ImpAdLdI4 MemVar_74BEAC
  loc_612D3E: ImpAdCallI2 Mid$(, , )
  loc_612D43: FStStrNoPop var_D8
  loc_612D46: LitStr "1"
  loc_612D49: EqStr
  loc_612D4B: AndI4
  loc_612D4C: OrI4
  loc_612D4D: FFreeStr var_B4 = ""
  loc_612D54: FFreeVar var_B0 = ""
  loc_612D5B: BranchF loc_612D61
  loc_612D5E: Branch loc_612DE7
  loc_612D61: LitVar_Missing var_A0
  loc_612D64: PopAdLdVar
  loc_612D65: FLdI2 var_86
  loc_612D68: CI4UI1
  loc_612D69: ImpAdLdRf MemVar_74A158
  loc_612D6C: Ary1LdI4
  loc_612D6D: FLdPrThis
  loc_612D6E: VCallAd Control_ID_lstModulos
  loc_612D71: FStAdFunc var_8C
  loc_612D74: FLdPr var_8C
  loc_612D77: Me.AddItem from_stack_1, from_stack_2
  loc_612D7C: FFree1Ad var_8C
  loc_612D7F: FLdI2 var_86
  loc_612D82: CI4UI1
  loc_612D83: FLdRfVar var_DA
  loc_612D86: FLdPrThis
  loc_612D87: VCallAd Control_ID_lstModulos
  loc_612D8A: FStAdFunc var_8C
  loc_612D8D: FLdPr var_8C
  loc_612D90:  = Me.ListCount
  loc_612D95: FLdI2 var_DA
  loc_612D98: LitI2_Byte 1
  loc_612D9A: SubI2
  loc_612D9B: FLdPrThis
  loc_612D9C: VCallAd Control_ID_lstModulos
  loc_612D9F: FStAdFunc var_E0
  loc_612DA2: FLdPr var_E0
  loc_612DA5: Me.ItemData = from_stack_1
  loc_612DAA: FFreeAd var_8C = ""
  loc_612DB1: FLdI2 var_86
  loc_612DB4: CI4UI1
  loc_612DB5: ImpAdLdRf MemVar_74A170
  loc_612DB8: Ary1LdI2
  loc_612DB9: FLdRfVar var_DA
  loc_612DBC: FLdPrThis
  loc_612DBD: VCallAd Control_ID_lstModulos
  loc_612DC0: FStAdFunc var_8C
  loc_612DC3: FLdPr var_8C
  loc_612DC6:  = Me.ListCount
  loc_612DCB: FLdI2 var_DA
  loc_612DCE: LitI2_Byte 1
  loc_612DD0: SubI2
  loc_612DD1: FLdPrThis
  loc_612DD2: VCallAd Control_ID_lstModulos
  loc_612DD5: FStAdFunc var_E0
  loc_612DD8: FLdPr var_E0
  loc_612DDB: Me.Selected = from_stack_1
  loc_612DE0: FFreeAd var_8C = ""
  loc_612DE7: FLdRfVar var_86
  loc_612DEA: NextI2 var_90, loc_612D03
  loc_612DEF: ExitProcHresult
End Function

Private Function Proc_35_6_64CF18() '64CF18
  'Data Table: 412DE4
  loc_64CC88: LitI2_Byte 1
  loc_64CC8A: FLdRfVar var_86
  loc_64CC8D: ImpAdLdUI1
  loc_64CC91: CI2UI1
  loc_64CC93: ForI2 var_8A
  loc_64CC99: FLdRfVar var_96
  loc_64CC9C: FLdI2 var_86
  loc_64CC9F: LitI2_Byte 1
  loc_64CCA1: SubI2
  loc_64CCA2: FLdPrThis
  loc_64CCA3: VCallAd Control_ID_lstSurtidores
  loc_64CCA6: FStAdFunc var_94
  loc_64CCA9: FLdPr var_94
  loc_64CCAC:  = Me.Selected
  loc_64CCB1: LitVarStr var_D8, "0"
  loc_64CCB6: FStVarCopyObj var_E8
  loc_64CCB9: FLdRfVar var_E8
  loc_64CCBC: LitVarStr var_B8, "1"
  loc_64CCC1: FStVarCopyObj var_C8
  loc_64CCC4: FLdRfVar var_C8
  loc_64CCC7: FLdI2 var_96
  loc_64CCCA: CVarBoolI2 var_A8
  loc_64CCCE: FLdRfVar var_F8
  loc_64CCD1: ImpAdCallFPR4  = IIf(, , )
  loc_64CCD6: FLdRfVar var_F8
  loc_64CCD9: CStrVarVal var_100
  loc_64CCDD: LitStr "RemotePump"
  loc_64CCE0: FLdI2 var_86
  loc_64CCE3: CStrUI1
  loc_64CCE5: FStStrNoPop var_90
  loc_64CCE8: ConcatStr
  loc_64CCE9: FStStrNoPop var_FC
  loc_64CCEC: LitStr "Startup\Pumps"
  loc_64CCEF: LitStr "CEM44"
  loc_64CCF2: ImpAdCallFPR4 SaveSetting(, , , )
  loc_64CCF7: FFreeStr var_90 = "": var_FC = ""
  loc_64CD00: FFree1Ad var_94
  loc_64CD03: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_64CD0E: FLdRfVar var_96
  loc_64CD11: FLdI2 var_86
  loc_64CD14: LitI2_Byte 1
  loc_64CD16: SubI2
  loc_64CD17: FLdPrThis
  loc_64CD18: VCallAd Control_ID_lstSurtidores
  loc_64CD1B: FStAdFunc var_94
  loc_64CD1E: FLdPr var_94
  loc_64CD21:  = Me.Selected
  loc_64CD26: FLdI2 var_96
  loc_64CD29: FLdI2 var_86
  loc_64CD2C: CI4UI1
  loc_64CD2D: ImpAdLdRf MemVar_74A188
  loc_64CD30: Ary1StI2
  loc_64CD31: FFree1Ad var_94
  loc_64CD34: FLdRfVar var_86
  loc_64CD37: NextI2 var_8A, loc_64CC99
  loc_64CD3C: LitI2_Byte 1
  loc_64CD3E: FLdRfVar var_86
  loc_64CD41: FLdRfVar var_96
  loc_64CD44: FLdPrThis
  loc_64CD45: VCallAd Control_ID_lstModulos
  loc_64CD48: FStAdFunc var_94
  loc_64CD4B: FLdPr var_94
  loc_64CD4E:  = Me.ListCount
  loc_64CD53: FLdI2 var_96
  loc_64CD56: FFree1Ad var_94
  loc_64CD59: ForI2 var_104
  loc_64CD5F: FLdRfVar var_108
  loc_64CD62: FLdI2 var_86
  loc_64CD65: LitI2_Byte 1
  loc_64CD67: SubI2
  loc_64CD68: FLdPrThis
  loc_64CD69: VCallAd Control_ID_lstModulos
  loc_64CD6C: FStAdFunc var_94
  loc_64CD6F: FLdPr var_94
  loc_64CD72:  = Me.ItemData
  loc_64CD77: ILdRf var_108
  loc_64CD7A: LitI4 &H25
  loc_64CD7F: EqI4
  loc_64CD80: FLdRfVar var_110
  loc_64CD83: FLdI2 var_86
  loc_64CD86: LitI2_Byte 1
  loc_64CD88: SubI2
  loc_64CD89: FLdPrThis
  loc_64CD8A: VCallAd Control_ID_lstModulos
  loc_64CD8D: FStAdFunc var_10C
  loc_64CD90: FLdPr var_10C
  loc_64CD93:  = Me.ItemData
  loc_64CD98: ILdRf var_110
  loc_64CD9B: LitI4 &H15
  loc_64CDA0: EqI4
  loc_64CDA1: OrI4
  loc_64CDA2: LitVarI2 var_C8, 1
  loc_64CDA7: LitI4 1
  loc_64CDAC: ImpAdLdI4 MemVar_74BEAC
  loc_64CDAF: ImpAdCallI2 Mid$(, , )
  loc_64CDB4: FStStrNoPop var_90
  loc_64CDB7: LitStr "0"
  loc_64CDBA: EqStr
  loc_64CDBC: AndI4
  loc_64CDBD: FLdRfVar var_118
  loc_64CDC0: FLdI2 var_86
  loc_64CDC3: LitI2_Byte 1
  loc_64CDC5: SubI2
  loc_64CDC6: FLdPrThis
  loc_64CDC7: VCallAd Control_ID_lstModulos
  loc_64CDCA: FStAdFunc var_114
  loc_64CDCD: FLdPr var_114
  loc_64CDD0:  = Me.ItemData
  loc_64CDD5: ILdRf var_118
  loc_64CDD8: LitI4 &HF
  loc_64CDDD: EqI4
  loc_64CDDE: LitVarI2 var_E8, 1
  loc_64CDE3: LitI4 4
  loc_64CDE8: ImpAdLdI4 MemVar_74BEAC
  loc_64CDEB: ImpAdCallI2 Mid$(, , )
  loc_64CDF0: FStStrNoPop var_FC
  loc_64CDF3: LitStr "1"
  loc_64CDF6: EqStr
  loc_64CDF8: AndI4
  loc_64CDF9: OrI4
  loc_64CDFA: FFreeStr var_90 = ""
  loc_64CE01: FFreeAd var_94 = "": var_10C = ""
  loc_64CE0A: FFreeVar var_C8 = ""
  loc_64CE11: BranchF loc_64CE3B
  loc_64CE14: LitI2_Byte &HFF
  loc_64CE16: FLdRfVar var_108
  loc_64CE19: FLdI2 var_86
  loc_64CE1C: LitI2_Byte 1
  loc_64CE1E: SubI2
  loc_64CE1F: FLdPrThis
  loc_64CE20: VCallAd Control_ID_lstModulos
  loc_64CE23: FStAdFunc var_94
  loc_64CE26: FLdPr var_94
  loc_64CE29:  = Me.ItemData
  loc_64CE2E: ILdRf var_108
  loc_64CE31: ImpAdLdRf MemVar_74A170
  loc_64CE34: Ary1StI2
  loc_64CE35: FFree1Ad var_94
  loc_64CE38: Branch loc_64CF0D
  loc_64CE3B: FLdRfVar var_108
  loc_64CE3E: FLdI2 var_86
  loc_64CE41: LitI2_Byte 1
  loc_64CE43: SubI2
  loc_64CE44: FLdPrThis
  loc_64CE45: VCallAd Control_ID_lstModulos
  loc_64CE48: FStAdFunc var_94
  loc_64CE4B: FLdPr var_94
  loc_64CE4E:  = Me.ItemData
  loc_64CE53: FLdRfVar var_96
  loc_64CE56: FLdI2 var_86
  loc_64CE59: LitI2_Byte 1
  loc_64CE5B: SubI2
  loc_64CE5C: FLdPrThis
  loc_64CE5D: VCallAd Control_ID_lstModulos
  loc_64CE60: FStAdFunc var_10C
  loc_64CE63: FLdPr var_10C
  loc_64CE66:  = Me.Selected
  loc_64CE6B: LitVarStr var_D8, "0"
  loc_64CE70: FStVarCopyObj var_E8
  loc_64CE73: FLdRfVar var_E8
  loc_64CE76: LitVarStr var_B8, "1"
  loc_64CE7B: FStVarCopyObj var_C8
  loc_64CE7E: FLdRfVar var_C8
  loc_64CE81: FLdI2 var_96
  loc_64CE84: CVarBoolI2 var_A8
  loc_64CE88: FLdRfVar var_F8
  loc_64CE8B: ImpAdCallFPR4  = IIf(, , )
  loc_64CE90: FLdRfVar var_F8
  loc_64CE93: CStrVarVal var_100
  loc_64CE97: LitStr "RemoteModule"
  loc_64CE9A: ILdRf var_108
  loc_64CE9D: CStrI4
  loc_64CE9F: FStStrNoPop var_90
  loc_64CEA2: ConcatStr
  loc_64CEA3: FStStrNoPop var_FC
  loc_64CEA6: LitStr "Startup\Modules"
  loc_64CEA9: LitStr "CEM44"
  loc_64CEAC: ImpAdCallFPR4 SaveSetting(, , , )
  loc_64CEB1: FFreeStr var_90 = "": var_FC = ""
  loc_64CEBA: FFreeAd var_94 = ""
  loc_64CEC1: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_64CECC: FLdRfVar var_96
  loc_64CECF: FLdI2 var_86
  loc_64CED2: LitI2_Byte 1
  loc_64CED4: SubI2
  loc_64CED5: FLdPrThis
  loc_64CED6: VCallAd Control_ID_lstModulos
  loc_64CED9: FStAdFunc var_94
  loc_64CEDC: FLdPr var_94
  loc_64CEDF:  = Me.Selected
  loc_64CEE4: FLdI2 var_96
  loc_64CEE7: FLdRfVar var_108
  loc_64CEEA: FLdI2 var_86
  loc_64CEED: LitI2_Byte 1
  loc_64CEEF: SubI2
  loc_64CEF0: FLdPrThis
  loc_64CEF1: VCallAd Control_ID_lstModulos
  loc_64CEF4: FStAdFunc var_10C
  loc_64CEF7: FLdPr var_10C
  loc_64CEFA:  = Me.ItemData
  loc_64CEFF: ILdRf var_108
  loc_64CF02: ImpAdLdRf MemVar_74A170
  loc_64CF05: Ary1StI2
  loc_64CF06: FFreeAd var_94 = ""
  loc_64CF0D: FLdRfVar var_86
  loc_64CF10: NextI2 var_104, loc_64CD5F
  loc_64CF15: ExitProcHresult
  loc_64CF16: ExitProcR8
End Function
