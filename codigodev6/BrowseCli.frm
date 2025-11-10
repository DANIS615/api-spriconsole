VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form BrowseCli
  Caption = "Listado de Clientes"
  ForeColor = &H8000000E&
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 1800
  ClientTop = 840
  ClientWidth = 8055
  ClientHeight = 7545
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 8055
  ScaleHeight = 7545
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton Cancelar
    Caption = "&Cancelar"
    Left = 3720
    Top = 6480
    Width = 1890
    Height = 675
    TabIndex = 2
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.CommandButton OK
    Caption = "&Aceptar"
    Left = 5760
    Top = 6480
    Width = 1890
    Height = 675
    TabIndex = 3
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Threed.SSPanel SSPanel1
    Left = 120
    Top = 120
    Width = 7815
    Height = 7215
    TabIndex = 4
    OleObjectBlob = "BrowseCli.frx":0000
    Begin VB.ListBox lstClientes
      Left = 300
      Top = 1140
      Width = 7155
      Height = 4050
      TabIndex = 0
      Sorted = -1  'True
      BeginProperty Font
        Name = "Lucida Console"
        Size = 14.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox txtCriterio
      Left = 2340
      Top = 5700
      Width = 5115
      Height = 405
      TabIndex = 1
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
    Begin VB.Label Label2
      Caption = "Clientes"
      BackColor = &H80000002&
      ForeColor = &H80000014&
      Left = 60
      Top = 300
      Width = 7695
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
End

Attribute VB_Name = "BrowseCli"

Public LastKey As Integer


Private Sub txtCriterio_Change() '658020
  'Data Table: 41097C
  loc_657D20: FLdRfVar var_98
  loc_657D23: FLdPrThis
  loc_657D24: VCallAd Control_ID_txtCriterio
  loc_657D27: FStAdFunc var_94
  loc_657D2A: FLdPr var_94
  loc_657D2D:  = Me.Text
  loc_657D32: ILdRf var_98
  loc_657D35: FLdPr Me
  loc_657D38: MemStStrCopy
  loc_657D3C: FFree1Str var_98
  loc_657D3F: FFree1Ad var_94
  loc_657D42: FLdPr Me
  loc_657D45: MemLdStr global_56
  loc_657D48: FLdRfVar var_98
  loc_657D4B: FLdRfVar var_9A
  loc_657D4E: FLdPrThis
  loc_657D4F: VCallAd Control_ID_lstClientes
  loc_657D52: FStAdFunc var_94
  loc_657D55: FLdPr var_94
  loc_657D58:  = Me.ListIndex
  loc_657D5D: FLdI2 var_9A
  loc_657D60: FLdPrThis
  loc_657D61: VCallAd Control_ID_lstClientes
  loc_657D64: FStAdFunc var_A0
  loc_657D67: FLdPr var_A0
  loc_657D6A: from_stack_2 = Me.List(from_stack_1)
  loc_657D6F: ILdRf var_98
  loc_657D72: EqStr
  loc_657D74: FFree1Str var_98
  loc_657D77: FFreeAd var_94 = ""
  loc_657D7E: BranchF loc_657D84
  loc_657D81: Branch loc_65800F
  loc_657D84: FLdPr Me
  loc_657D87: MemLdStr global_56
  loc_657D8A: FnLenStr
  loc_657D8B: CI2I4
  loc_657D8C: FStI2 var_88
  loc_657D8F: FLdPr Me
  loc_657D92: MemLdStr global_72
  loc_657D95: FnLenStr
  loc_657D96: CI2I4
  loc_657D97: FStI2 var_8A
  loc_657D9A: FLdI2 var_88
  loc_657D9D: LitI2_Byte 0
  loc_657D9F: EqI2
  loc_657DA0: BranchF loc_657DB8
  loc_657DA3: FLdPrThis
  loc_657DA4: VCallAd Control_ID_lstClientes
  loc_657DA7: FStAdFunc var_94
  loc_657DAA: FLdPr var_94
  loc_657DAD: Me.Clear
  loc_657DB2: FFree1Ad var_94
  loc_657DB5: Branch loc_65800F
  loc_657DB8: FLdPr Me
  loc_657DBB: MemLdRfVar from_stack_1.global_56
  loc_657DBE: CVarRef
  loc_657DC3: FLdRfVar var_C0
  loc_657DC6: ImpAdCallFPR4  = Ucase()
  loc_657DCB: FLdRfVar var_C0
  loc_657DCE: FLdPr Me
  loc_657DD1: MemLdStr global_56
  loc_657DD4: CVarStr var_D0
  loc_657DD7: HardType
  loc_657DD8: NeVarBool
  loc_657DDA: FFree1Var var_C0 = ""
  loc_657DDD: BranchF loc_657E2C
  loc_657DE0: FLdPr Me
  loc_657DE3: MemLdRfVar from_stack_1.global_56
  loc_657DE6: CVarRef
  loc_657DEB: FLdRfVar var_C0
  loc_657DEE: ImpAdCallFPR4  = Ucase()
  loc_657DF3: FLdRfVar var_C0
  loc_657DF6: CStrVarVal var_98
  loc_657DFA: FLdPrThis
  loc_657DFB: VCallAd Control_ID_txtCriterio
  loc_657DFE: FStAdFunc var_94
  loc_657E01: FLdPr var_94
  loc_657E04: Me.Text = from_stack_1
  loc_657E09: FFree1Str var_98
  loc_657E0C: FFree1Ad var_94
  loc_657E0F: FFree1Var var_C0 = ""
  loc_657E12: FLdPr Me
  loc_657E15: MemLdStr global_56
  loc_657E18: FnLenStr
  loc_657E19: FLdPrThis
  loc_657E1A: VCallAd Control_ID_txtCriterio
  loc_657E1D: FStAdFunc var_94
  loc_657E20: FLdPr var_94
  loc_657E23: Me.SelStart = from_stack_1
  loc_657E28: FFree1Ad var_94
  loc_657E2B: ExitProcHresult
  loc_657E2C: FLdI2 var_88
  loc_657E2F: LitI2_Byte 1
  loc_657E31: EqI2
  loc_657E32: FLdI2 var_8A
  loc_657E35: LitI2_Byte 0
  loc_657E37: EqI2
  loc_657E38: AndI4
  loc_657E39: BranchF loc_657E76
  loc_657E3C: from_stack_1v = Proc_27_12_61CB2C()
  loc_657E41: FLdRfVar var_9A
  loc_657E44: FLdPrThis
  loc_657E45: VCallAd Control_ID_lstClientes
  loc_657E48: FStAdFunc var_94
  loc_657E4B: FLdPr var_94
  loc_657E4E:  = Me.ListCount
  loc_657E53: FLdI2 var_9A
  loc_657E56: FFree1Ad var_94
  loc_657E59: BranchF loc_657E73
  loc_657E5C: LitI2_Byte 0
  loc_657E5E: FLdPrThis
  loc_657E5F: VCallAd Control_ID_lstClientes
  loc_657E62: FStAdFunc var_94
  loc_657E65: FLdPr var_94
  loc_657E68: Me.ListIndex = from_stack_1
  loc_657E6D: FFree1Ad var_94
  loc_657E70: Branch loc_65800F
  loc_657E73: Branch loc_65800F
  loc_657E76: FLdI2 var_88
  loc_657E79: FLdI2 var_8A
  loc_657E7C: GtI2
  loc_657E7D: BranchF loc_657F3B
  loc_657E80: FLdRfVar var_9A
  loc_657E83: FLdPrThis
  loc_657E84: VCallAd Control_ID_lstClientes
  loc_657E87: FStAdFunc var_94
  loc_657E8A: FLdPr var_94
  loc_657E8D:  = Me.ListIndex
  loc_657E92: FLdI2 var_9A
  loc_657E95: FStI2 var_8E
  loc_657E98: FFree1Ad var_94
  loc_657E9B: FLdRfVar var_9A
  loc_657E9E: FLdPrThis
  loc_657E9F: VCallAd Control_ID_lstClientes
  loc_657EA2: FStAdFunc var_94
  loc_657EA5: FLdPr var_94
  loc_657EA8:  = Me.ListCount
  loc_657EAD: FLdI2 var_9A
  loc_657EB0: LitI2_Byte 1
  loc_657EB2: SubI2
  loc_657EB3: FStI2 var_90
  loc_657EB6: FFree1Ad var_94
  loc_657EB9: FLdI2 var_8E
  loc_657EBC: FLdRfVar var_86
  loc_657EBF: FLdI2 var_90
  loc_657EC2: ForI2 var_E4
  loc_657EC8: FLdRfVar var_98
  loc_657ECB: FLdI2 var_86
  loc_657ECE: FLdPrThis
  loc_657ECF: VCallAd Control_ID_lstClientes
  loc_657ED2: FStAdFunc var_94
  loc_657ED5: FLdPr var_94
  loc_657ED8: from_stack_2 = Me.List(from_stack_1)
  loc_657EDD: FLdI2 var_88
  loc_657EE0: CI4UI1
  loc_657EE1: FLdZeroAd var_98
  loc_657EE4: CVarStr var_C0
  loc_657EE7: FLdRfVar var_E0
  loc_657EEA: ImpAdCallFPR4  = Left(, )
  loc_657EEF: FLdRfVar var_E0
  loc_657EF2: FLdRfVar var_F4
  loc_657EF5: ImpAdCallFPR4  = Ucase()
  loc_657EFA: FLdRfVar var_F4
  loc_657EFD: FLdPr Me
  loc_657F00: MemLdStr global_56
  loc_657F03: CVarStr var_B0
  loc_657F06: HardType
  loc_657F07: EqVarBool
  loc_657F09: FFree1Ad var_94
  loc_657F0C: FFreeVar var_C0 = "": var_E0 = ""
  loc_657F15: BranchF loc_657F30
  loc_657F18: FLdI2 var_86
  loc_657F1B: FLdPrThis
  loc_657F1C: VCallAd Control_ID_lstClientes
  loc_657F1F: FStAdFunc var_94
  loc_657F22: FLdPr var_94
  loc_657F25: Me.ListIndex = from_stack_1
  loc_657F2A: FFree1Ad var_94
  loc_657F2D: Branch loc_65800F
  loc_657F30: FLdRfVar var_86
  loc_657F33: NextI2 var_E4, loc_657EC8
  loc_657F38: Branch loc_65800F
  loc_657F3B: FLdRfVar var_9A
  loc_657F3E: FLdPrThis
  loc_657F3F: VCallAd Control_ID_lstClientes
  loc_657F42: FStAdFunc var_94
  loc_657F45: FLdPr var_94
  loc_657F48:  = Me.ListIndex
  loc_657F4D: FLdI2 var_9A
  loc_657F50: FStI2 var_8E
  loc_657F53: FFree1Ad var_94
  loc_657F56: FLdI2 var_8E
  loc_657F59: FLdRfVar var_86
  loc_657F5C: LitI2_Byte 0
  loc_657F5E: LitI2_Byte &HFF
  loc_657F60: ForStepI2 var_108
  loc_657F66: FLdRfVar var_98
  loc_657F69: FLdI2 var_86
  loc_657F6C: FLdPrThis
  loc_657F6D: VCallAd Control_ID_lstClientes
  loc_657F70: FStAdFunc var_94
  loc_657F73: FLdPr var_94
  loc_657F76: from_stack_2 = Me.List(from_stack_1)
  loc_657F7B: FLdI2 var_88
  loc_657F7E: CI4UI1
  loc_657F7F: FLdZeroAd var_98
  loc_657F82: CVarStr var_C0
  loc_657F85: FLdRfVar var_E0
  loc_657F88: ImpAdCallFPR4  = Left(, )
  loc_657F8D: FLdRfVar var_E0
  loc_657F90: FLdRfVar var_F4
  loc_657F93: ImpAdCallFPR4  = Ucase()
  loc_657F98: FLdRfVar var_F4
  loc_657F9B: FLdPr Me
  loc_657F9E: MemLdStr global_56
  loc_657FA1: CVarStr var_B0
  loc_657FA4: HardType
  loc_657FA5: NeVarBool
  loc_657FA7: FFree1Ad var_94
  loc_657FAA: FFreeVar var_C0 = "": var_E0 = ""
  loc_657FB3: BranchF loc_657FF3
  loc_657FB6: FLdRfVar var_9A
  loc_657FB9: FLdPrThis
  loc_657FBA: VCallAd Control_ID_lstClientes
  loc_657FBD: FStAdFunc var_94
  loc_657FC0: FLdPr var_94
  loc_657FC3:  = Me.ListCount
  loc_657FC8: FLdI2 var_9A
  loc_657FCB: FLdI2 var_86
  loc_657FCE: LitI2_Byte 1
  loc_657FD0: AddI2
  loc_657FD1: GtI2
  loc_657FD2: FFree1Ad var_94
  loc_657FD5: BranchF loc_657FF0
  loc_657FD8: FLdI2 var_86
  loc_657FDB: LitI2_Byte 1
  loc_657FDD: AddI2
  loc_657FDE: FLdPrThis
  loc_657FDF: VCallAd Control_ID_lstClientes
  loc_657FE2: FStAdFunc var_94
  loc_657FE5: FLdPr var_94
  loc_657FE8: Me.ListIndex = from_stack_1
  loc_657FED: FFree1Ad var_94
  loc_657FF0: Branch loc_65800F
  loc_657FF3: LitI2_Byte 0
  loc_657FF5: FLdPrThis
  loc_657FF6: VCallAd Control_ID_lstClientes
  loc_657FF9: FStAdFunc var_94
  loc_657FFC: FLdPr var_94
  loc_657FFF: Me.ListIndex = from_stack_1
  loc_658004: FFree1Ad var_94
  loc_658007: FLdRfVar var_86
  loc_65800A: NextStepI2 var_108, loc_657F66
  loc_65800F: FLdPr Me
  loc_658012: MemLdStr global_56
  loc_658015: FLdPr Me
  loc_658018: MemStStrCopy
  loc_65801C: ExitProcHresult
End Sub

Private Sub txtCriterio_KeyDown(KeyCode As Integer, Shift As Integer) '614390
  'Data Table: 41097C
  loc_614270: ILdI2 KeyCode
  loc_614273: FStI2 var_86
  loc_614276: FLdI2 var_86
  loc_614279: LitI4 &H25
  loc_61427E: CI2I4
  loc_61427F: EqI2
  loc_614280: BranchT loc_614290
  loc_614283: FLdI2 var_86
  loc_614286: LitI4 &H27
  loc_61428B: CI2I4
  loc_61428C: EqI2
  loc_61428D: BranchF loc_614298
  loc_614290: LitI2_Byte 0
  loc_614292: IStI2 KeyCode
  loc_614295: Branch loc_61438C
  loc_614298: FLdI2 var_86
  loc_61429B: LitI4 &H26
  loc_6142A0: CI2I4
  loc_6142A1: EqI2
  loc_6142A2: BranchF loc_6142F9
  loc_6142A5: FLdRfVar var_8E
  loc_6142A8: FLdPrThis
  loc_6142A9: VCallAd Control_ID_lstClientes
  loc_6142AC: FStAdFunc var_8C
  loc_6142AF: FLdPr var_8C
  loc_6142B2:  = Me.ListIndex
  loc_6142B7: FLdI2 var_8E
  loc_6142BA: LitI2_Byte 0
  loc_6142BC: GtI2
  loc_6142BD: FFree1Ad var_8C
  loc_6142C0: BranchF loc_6142F1
  loc_6142C3: FLdRfVar var_8E
  loc_6142C6: FLdPrThis
  loc_6142C7: VCallAd Control_ID_lstClientes
  loc_6142CA: FStAdFunc var_8C
  loc_6142CD: FLdPr var_8C
  loc_6142D0:  = Me.ListIndex
  loc_6142D5: FLdI2 var_8E
  loc_6142D8: LitI2_Byte 1
  loc_6142DA: SubI2
  loc_6142DB: FLdPrThis
  loc_6142DC: VCallAd Control_ID_lstClientes
  loc_6142DF: FStAdFunc var_94
  loc_6142E2: FLdPr var_94
  loc_6142E5: Me.ListIndex = from_stack_1
  loc_6142EA: FFreeAd var_8C = ""
  loc_6142F1: LitI2_Byte 0
  loc_6142F3: IStI2 KeyCode
  loc_6142F6: Branch loc_61438C
  loc_6142F9: FLdI2 var_86
  loc_6142FC: LitI4 &H28
  loc_614301: CI2I4
  loc_614302: EqI2
  loc_614303: BranchF loc_61438C
  loc_614306: FLdRfVar var_8E
  loc_614309: FLdPrThis
  loc_61430A: VCallAd Control_ID_lstClientes
  loc_61430D: FStAdFunc var_8C
  loc_614310: FLdPr var_8C
  loc_614313:  = Me.ListCount
  loc_614318: FLdI2 var_8E
  loc_61431B: LitI2_Byte 0
  loc_61431D: GtI2
  loc_61431E: FLdRfVar var_96
  loc_614321: FLdPrThis
  loc_614322: VCallAd Control_ID_lstClientes
  loc_614325: FStAdFunc var_94
  loc_614328: FLdPr var_94
  loc_61432B:  = Me.ListIndex
  loc_614330: FLdI2 var_96
  loc_614333: FLdRfVar var_9E
  loc_614336: FLdPrThis
  loc_614337: VCallAd Control_ID_lstClientes
  loc_61433A: FStAdFunc var_9C
  loc_61433D: FLdPr var_9C
  loc_614340:  = Me.ListCount
  loc_614345: FLdI2 var_9E
  loc_614348: LitI2_Byte 1
  loc_61434A: SubI2
  loc_61434B: LtI2
  loc_61434C: AndI4
  loc_61434D: FFreeAd var_8C = "": var_94 = ""
  loc_614356: BranchF loc_614387
  loc_614359: FLdRfVar var_8E
  loc_61435C: FLdPrThis
  loc_61435D: VCallAd Control_ID_lstClientes
  loc_614360: FStAdFunc var_8C
  loc_614363: FLdPr var_8C
  loc_614366:  = Me.ListIndex
  loc_61436B: FLdI2 var_8E
  loc_61436E: LitI2_Byte 1
  loc_614370: AddI2
  loc_614371: FLdPrThis
  loc_614372: VCallAd Control_ID_lstClientes
  loc_614375: FStAdFunc var_94
  loc_614378: FLdPr var_94
  loc_61437B: Me.ListIndex = from_stack_1
  loc_614380: FFreeAd var_8C = ""
  loc_614387: LitI2_Byte 0
  loc_614389: IStI2 KeyCode
  loc_61438C: ExitProcHresult
End Sub

Private Sub Form_Load() '5D6920
  'Data Table: 41097C
  loc_5D68F4: LitStr vbNullString
  loc_5D68F7: FLdPr Me
  loc_5D68FA: MemStStrCopy
  loc_5D68FE: LitI2_Byte &HFF
  loc_5D6900: ImpAdStI2 MemVar_74C37E
  loc_5D6903: LitI4 0
  loc_5D6908: LitI4 0
  loc_5D690D: FLdPr Me
  loc_5D6910: MemLdRfVar from_stack_1.global_76
  loc_5D6913: Redim
  loc_5D691D: ExitProcHresult
End Sub

Private Sub Form_Activate() '5DEC5C
  'Data Table: 41097C
  loc_5DEC14: FLdPrThis
  loc_5DEC15: VCallAd Control_ID_txtCriterio
  loc_5DEC18: FStAdFunc var_88
  loc_5DEC1B: FLdPr var_88
  loc_5DEC1E: Me.SetFocus
  loc_5DEC23: FFree1Ad var_88
  loc_5DEC26: FLdPr Me
  loc_5DEC29: MemLdI2 LastKey
  loc_5DEC2C: LitI2_Byte 0
  loc_5DEC2E: NeI2
  loc_5DEC2F: BranchF loc_5DEC58
  loc_5DEC32: LitI2_Byte 0
  loc_5DEC34: PopTmpLdAd2 var_9E
  loc_5DEC37: FLdPr Me
  loc_5DEC3A: MemLdI2 LastKey
  loc_5DEC3D: CI4UI1
  loc_5DEC3E: FLdRfVar var_98
  loc_5DEC41: ImpAdCallFPR4  = Chr()
  loc_5DEC46: FLdRfVar var_98
  loc_5DEC49: CStrVarVal var_9C
  loc_5DEC4D: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DEC52: FFree1Str var_9C
  loc_5DEC55: FFree1Var var_98 = ""
  loc_5DEC58: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5D77E4
  'Data Table: 41097C
  loc_5D77B4: ILdI2 KeyAscii
  loc_5D77B7: FStI2 var_86
  loc_5D77BA: FLdI2 var_86
  loc_5D77BD: LitI4 &HD
  loc_5D77C2: CI2I4
  loc_5D77C3: EqI2
  loc_5D77C4: BranchF loc_5D77CF
  loc_5D77C7: Call OK_Click()
  loc_5D77CC: Branch loc_5D77E1
  loc_5D77CF: FLdI2 var_86
  loc_5D77D2: LitI4 &H1B
  loc_5D77D7: CI2I4
  loc_5D77D8: EqI2
  loc_5D77D9: BranchF loc_5D77E1
  loc_5D77DC: Call Cancelar_Click()
  loc_5D77E1: ExitProcHresult
End Sub

Private Sub OK_Click() '5E75B4
  'Data Table: 41097C
  loc_5E753C: FLdRfVar var_8A
  loc_5E753F: FLdPrThis
  loc_5E7540: VCallAd Control_ID_lstClientes
  loc_5E7543: FStAdFunc var_88
  loc_5E7546: FLdPr var_88
  loc_5E7549:  = Me.ListCount
  loc_5E754E: FLdI2 var_8A
  loc_5E7551: LitI2_Byte 0
  loc_5E7553: EqI2
  loc_5E7554: FFree1Ad var_88
  loc_5E7557: BranchF loc_5E7562
  loc_5E755A: LitI2_Byte &HFF
  loc_5E755C: ImpAdStI2 MemVar_74C37E
  loc_5E755F: Branch loc_5E759C
  loc_5E7562: LitI2_Byte 0
  loc_5E7564: ImpAdStI2 MemVar_74C37E
  loc_5E7567: FLdRfVar var_94
  loc_5E756A: FLdRfVar var_8A
  loc_5E756D: FLdPrThis
  loc_5E756E: VCallAd Control_ID_lstClientes
  loc_5E7571: FStAdFunc var_88
  loc_5E7574: FLdPr var_88
  loc_5E7577:  = Me.ListIndex
  loc_5E757C: FLdI2 var_8A
  loc_5E757F: FLdPrThis
  loc_5E7580: VCallAd Control_ID_lstClientes
  loc_5E7583: FStAdFunc var_90
  loc_5E7586: FLdPr var_90
  loc_5E7589:  = Me.ItemData
  loc_5E758E: ILdRf var_94
  loc_5E7591: CI2I4
  loc_5E7592: ImpAdStI2 MemVar_74C384
  loc_5E7595: FFreeAd var_88 = ""
  loc_5E759C: ILdRf Me
  loc_5E759F: FStAdNoPop
  loc_5E75A3: ImpAdLdRf MemVar_7520D4
  loc_5E75A6: NewIfNullPr Global
  loc_5E75A9: Global.Unload from_stack_1
  loc_5E75AE: FFree1Ad var_88
  loc_5E75B1: ExitProcHresult
End Sub

Private Sub lstClientes_DblClick() '5DF3B0
  'Data Table: 41097C
  loc_5DF360: LitI2_Byte 0
  loc_5DF362: ImpAdStI2 MemVar_74C37E
  loc_5DF365: FLdRfVar var_94
  loc_5DF368: FLdRfVar var_8A
  loc_5DF36B: FLdPrThis
  loc_5DF36C: VCallAd Control_ID_lstClientes
  loc_5DF36F: FStAdFunc var_88
  loc_5DF372: FLdPr var_88
  loc_5DF375:  = Me.ListIndex
  loc_5DF37A: FLdI2 var_8A
  loc_5DF37D: FLdPrThis
  loc_5DF37E: VCallAd Control_ID_lstClientes
  loc_5DF381: FStAdFunc var_90
  loc_5DF384: FLdPr var_90
  loc_5DF387:  = Me.ItemData
  loc_5DF38C: ILdRf var_94
  loc_5DF38F: CI2I4
  loc_5DF390: ImpAdStI2 MemVar_74C384
  loc_5DF393: FFreeAd var_88 = ""
  loc_5DF39A: ILdRf Me
  loc_5DF39D: FStAdNoPop
  loc_5DF3A1: ImpAdLdRf MemVar_7520D4
  loc_5DF3A4: NewIfNullPr Global
  loc_5DF3A7: Global.Unload from_stack_1
  loc_5DF3AC: FFree1Ad var_88
  loc_5DF3AF: ExitProcHresult
End Sub

Private Sub lstClientes_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '5FBE08
  'Data Table: 41097C
  loc_5FBD54: FLdRfVar var_8A
  loc_5FBD57: FLdPrThis
  loc_5FBD58: VCallAd Control_ID_lstClientes
  loc_5FBD5B: FStAdFunc var_88
  loc_5FBD5E: FLdPr var_88
  loc_5FBD61:  = Me.ListCount
  loc_5FBD66: FLdI2 var_8A
  loc_5FBD69: LitI2_Byte 0
  loc_5FBD6B: GtI2
  loc_5FBD6C: FFree1Ad var_88
  loc_5FBD6F: BranchF loc_5FBDDD
  loc_5FBD72: FLdRfVar var_94
  loc_5FBD75: FLdRfVar var_8A
  loc_5FBD78: FLdPrThis
  loc_5FBD79: VCallAd Control_ID_lstClientes
  loc_5FBD7C: FStAdFunc var_88
  loc_5FBD7F: FLdPr var_88
  loc_5FBD82:  = Me.ListIndex
  loc_5FBD87: FLdI2 var_8A
  loc_5FBD8A: FLdPrThis
  loc_5FBD8B: VCallAd Control_ID_lstClientes
  loc_5FBD8E: FStAdFunc var_90
  loc_5FBD91: FLdPr var_90
  loc_5FBD94: from_stack_2 = Me.List(from_stack_1)
  loc_5FBD99: FLdZeroAd var_94
  loc_5FBD9C: CVarStr var_A4
  loc_5FBD9F: FLdRfVar var_B4
  loc_5FBDA2: ImpAdCallFPR4  = Ucase()
  loc_5FBDA7: FLdRfVar var_B4
  loc_5FBDAA: FLdRfVar var_C4
  loc_5FBDAD: ImpAdCallFPR4  = RTrim()
  loc_5FBDB2: FLdRfVar var_C4
  loc_5FBDB5: CStrVarVal var_C8
  loc_5FBDB9: FLdPrThis
  loc_5FBDBA: VCallAd Control_ID_txtCriterio
  loc_5FBDBD: FStAdFunc var_CC
  loc_5FBDC0: FLdPr var_CC
  loc_5FBDC3: Me.Text = from_stack_1
  loc_5FBDC8: FFree1Str var_C8
  loc_5FBDCB: FFreeAd var_88 = "": var_90 = ""
  loc_5FBDD4: FFreeVar var_A4 = "": var_B4 = ""
  loc_5FBDDD: FLdPrThis
  loc_5FBDDE: VCallAd Control_ID_txtCriterio
  loc_5FBDE1: FStAdFunc var_88
  loc_5FBDE4: FLdPr var_88
  loc_5FBDE7: Me.SetFocus
  loc_5FBDEC: FFree1Ad var_88
  loc_5FBDEF: LitI4 &H3E7
  loc_5FBDF4: FLdPrThis
  loc_5FBDF5: VCallAd Control_ID_txtCriterio
  loc_5FBDF8: FStAdFunc var_88
  loc_5FBDFB: FLdPr var_88
  loc_5FBDFE: Me.SelStart = from_stack_1
  loc_5FBE03: FFree1Ad var_88
  loc_5FBE06: ExitProcHresult
End Sub

Private Sub Cancelar_Click() '5D3510
  'Data Table: 41097C
  loc_5D34F4: LitI2_Byte &HFF
  loc_5D34F6: ImpAdStI2 MemVar_74C37E
  loc_5D34F9: ILdRf Me
  loc_5D34FC: FStAdNoPop
  loc_5D3500: ImpAdLdRf MemVar_7520D4
  loc_5D3503: NewIfNullPr Global
  loc_5D3506: Global.Unload from_stack_1
  loc_5D350B: FFree1Ad var_88
  loc_5D350E: ExitProcHresult
End Sub

Public Function LastKeyGet() '410DF0
  LastKeyGet = LastKey
End Function

Public Sub LastKeyPut(Value) '410DFF
  LastKey = Value
End Sub

Public Sub cmdClose_Click() '5D3330
  'Data Table: 41097C
  loc_5D3314: LitI2_Byte &HFF
  loc_5D3316: ImpAdStI2 MemVar_74C37E
  loc_5D3319: ILdRf Me
  loc_5D331C: FStAdNoPop
  loc_5D3320: ImpAdLdRf MemVar_7520D4
  loc_5D3323: NewIfNullPr Global
  loc_5D3326: Global.Unload from_stack_1
  loc_5D332B: FFree1Ad var_88
  loc_5D332E: ExitProcHresult
End Sub

Private Function Proc_27_12_61CB2C() '61CB2C
  'Data Table: 41097C
  loc_61C9F0: FLdRfVar var_9E
  loc_61C9F3: FLdRfVar var_8E
  loc_61C9F6: FLdRfVar var_8C
  loc_61C9F9: FLdPr Me
  loc_61C9FC: MemLdStr global_56
  loc_61C9FF: FLdRfVar var_9C
  loc_61CA02: ImpAdLdRf MemVar_74C760
  loc_61CA05: NewIfNullPr Formx
  loc_61CA08: from_stack_1v = Formx.global_4589716Get()
  loc_61CA0D: FLdPr var_9C
  loc_61CA10: Formx.CurrentX = from_stack_1s
  loc_61CA15: FLdI2 var_9E
  loc_61CA18: NotI4
  loc_61CA19: FFree1Ad var_9C
  loc_61CA1C: BranchF loc_61CA22
  loc_61CA1F: Branch loc_61C9F0
  loc_61CA22: FLdI2 var_8E
  loc_61CA25: BranchF loc_61CA29
  loc_61CA28: ExitProcHresult
  loc_61CA29: FLdPr Me
  loc_61CA2C: MemLdStr global_56
  loc_61CA2F: FnLenStr
  loc_61CA30: CI2I4
  loc_61CA31: FStI2 var_86
  loc_61CA34: LitI2_Byte 0
  loc_61CA36: FStI2 var_88
  loc_61CA39: LitI4 1
  loc_61CA3E: FStR4 var_94
  loc_61CA41: ILdRf var_8C
  loc_61CA44: FnLenStr
  loc_61CA45: FStR4 var_98
  loc_61CA48: ILdRf var_94
  loc_61CA4B: ILdRf var_98
  loc_61CA4E: LtI4
  loc_61CA4F: BranchF loc_61CB2B
  loc_61CA52: LitVarI2 var_D0, 25
  loc_61CA57: ILdRf var_94
  loc_61CA5A: LitI4 4
  loc_61CA5F: AddI4
  loc_61CA60: FLdRfVar var_8C
  loc_61CA63: CVarRef
  loc_61CA68: FLdRfVar var_E0
  loc_61CA6B: ImpAdCallFPR4  = Mid(, , )
  loc_61CA70: LitVar_Missing var_F4
  loc_61CA73: PopAdLdVar
  loc_61CA74: FLdRfVar var_E0
  loc_61CA77: CStrVarVal var_E4
  loc_61CA7B: FLdPrThis
  loc_61CA7C: VCallAd Control_ID_lstClientes
  loc_61CA7F: FStAdFunc var_9C
  loc_61CA82: FLdPr var_9C
  loc_61CA85: Me.AddItem from_stack_1, from_stack_2
  loc_61CA8A: FFree1Str var_E4
  loc_61CA8D: FFree1Ad var_9C
  loc_61CA90: FFreeVar var_D0 = ""
  loc_61CA97: FLdRfVar var_9E
  loc_61CA9A: FLdPrThis
  loc_61CA9B: VCallAd Control_ID_lstClientes
  loc_61CA9E: FStAdFunc var_9C
  loc_61CAA1: FLdPr var_9C
  loc_61CAA4:  = Me.NewIndex
  loc_61CAA9: LitVarI2 var_D0, 4
  loc_61CAAE: ILdRf var_94
  loc_61CAB1: FLdRfVar var_8C
  loc_61CAB4: CVarRef
  loc_61CAB9: FLdRfVar var_E0
  loc_61CABC: ImpAdCallFPR4  = Mid(, , )
  loc_61CAC1: FLdRfVar var_E0
  loc_61CAC4: FnCLngVar
  loc_61CAC6: FLdI2 var_9E
  loc_61CAC9: FLdPrThis
  loc_61CACA: VCallAd Control_ID_lstClientes
  loc_61CACD: FStAdFunc var_F8
  loc_61CAD0: FLdPr var_F8
  loc_61CAD3: Me.ItemData = from_stack_1
  loc_61CAD8: FFreeAd var_9C = ""
  loc_61CADF: FFreeVar var_D0 = "": var_E0 = ""
  loc_61CAE8: FLdI2 var_88
  loc_61CAEB: LitI2_Byte 1
  loc_61CAED: AddI2
  loc_61CAEE: FStI2 var_88
  loc_61CAF1: FLdPr Me
  loc_61CAF4: MemLdStr global_76
  loc_61CAF7: LitI2_Byte 1
  loc_61CAF9: FnUBound
  loc_61CAFB: FLdI2 var_88
  loc_61CAFE: CI4UI1
  loc_61CAFF: LtI4
  loc_61CB00: BranchF loc_61CB1C
  loc_61CB03: LitI4 0
  loc_61CB08: FLdI2 var_88
  loc_61CB0B: CI4UI1
  loc_61CB0C: FLdPr Me
  loc_61CB0F: MemLdRfVar from_stack_1.global_76
  loc_61CB12: RedimPreserve
  loc_61CB1C: ILdRf var_94
  loc_61CB1F: LitI4 &H1D
  loc_61CB24: AddI4
  loc_61CB25: FStR4 var_94
  loc_61CB28: Branch loc_61CA48
  loc_61CB2B: ExitProcHresult
End Function
