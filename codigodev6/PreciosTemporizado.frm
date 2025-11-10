VERSION 5.00
Object = "{B16553C3-06DB-101B-85B20000C009BE81}#1.0#0"; "C:\WINDOWS\SysWow64\SPIN32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{8E27C92E-1264-101C-8A2F040224009C02}#7.0#0"; "C:\WINDOWS\SysWow64\MSCAL.OCX"
Begin VB.Form PreciosTemporizado
  Caption = "Programación Temporizada"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 120
  ClientTop = 555
  ClientWidth = 11910
  ClientHeight = 8565
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Moveable = 0   'False
  Begin VB.Timer RelojHoraFecha
    Interval = 60000
    Left = 8400
    Top = 360
  End
  Begin VB.TextBox Hora
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 8520
    Top = 2145
    Width = 2175
    Height = 870
    TabIndex = 4
    MultiLine = -1  'True
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 36
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Spin.SpinButton SpinButton1
    Index = 0
    Left = 8640
    Top = 3240
    Width = 735
    Height = 855
    TabIndex = 2
    OleObjectBlob = "PreciosTemporizado.frx":0000
  End
  Begin Threed.SSCommand SSCommand1
    Left = 2280
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 1
    OleObjectBlob = "PreciosTemporizado.frx":0052
  End
  Begin Threed.SSCommand sscContinuar
    Left = 7080
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 0
    OleObjectBlob = "PreciosTemporizado.frx":00BE
  End
  Begin Spin.SpinButton SpinButton1
    Index = 1
    Left = 9840
    Top = 3240
    Width = 735
    Height = 855
    TabIndex = 3
    OleObjectBlob = "PreciosTemporizado.frx":012A
  End
  Begin Threed.SSPanel SSPanel1
    Left = 240
    Top = 120
    Width = 11295
    Height = 7215
    TabIndex = 5
    OleObjectBlob = "PreciosTemporizado.frx":017C
    Begin MSMask.MaskEdBox ManualFecha
      Left = 3120
      Top = 5640
      Width = 2895
      Height = 735
      TabIndex = 8
      OleObjectBlob = "PreciosTemporizado.frx":01FD
    End
    Begin VB.TextBox Titulo2
      BackColor = &H8000000F&
      ForeColor = &H0&
      Left = 300
      Top = 6360
      Width = 1455
      Height = 735
      Text = "Hora:"
      TabIndex = 7
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 27.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Titulo1
      BackColor = &H8000000F&
      ForeColor = &H0&
      Left = 240
      Top = 5640
      Width = 2895
      Height = 870
      Text = "Fecha:"
      TabIndex = 6
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 27.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox ManualHora
      Left = 3120
      Top = 6360
      Width = 1695
      Height = 735
      TabIndex = 9
      OleObjectBlob = "PreciosTemporizado.frx":0299
    End
    Begin Threed.SSPanel SSPanel2
      Left = 240
      Top = 240
      Width = 7695
      Height = 5175
      TabIndex = 10
      OleObjectBlob = "PreciosTemporizado.frx":0335
      Begin MSACAL.Calendar Calendar1
        Left = 120
        Top = 120
        Width = 7515
        Height = 4875
        TabStop = 0   'False
        TabIndex = 11
        OleObjectBlob = "PreciosTemporizado.frx":03B6
      End
    End
  End
  Begin Threed.SSCommand SSCommand2
    Left = 6960
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 12
    OleObjectBlob = "PreciosTemporizado.frx":0548
  End
End

Attribute VB_Name = "PreciosTemporizado"

Public strFecha As String
Public strPrecios As String
Public IsRemito As Boolean
Public strValidDate As String
Public strValidTime As String
Public strOtherDate As String
Public strOtherTime As String


Private Sub Hora_Change() '5DBA40
  'Data Table: 42E6E8
  loc_5DBA0C: FLdRfVar var_8C
  loc_5DBA0F: FLdPrThis
  loc_5DBA10: VCallAd Control_ID_Hora
  loc_5DBA13: FStAdFunc var_88
  loc_5DBA16: FLdPr var_88
  loc_5DBA19:  = Me.Text
  loc_5DBA1E: FLdZeroAd var_8C
  loc_5DBA21: CVarStr var_9C
  loc_5DBA24: PopAdLdVar
  loc_5DBA25: FLdPrThis
  loc_5DBA26: VCallAd Control_ID_ManualHora
  loc_5DBA29: FStAdFunc var_A0
  loc_5DBA2C: FLdPr var_A0
  loc_5DBA2F: LateIdSt
  loc_5DBA34: FFreeAd var_88 = ""
  loc_5DBA3B: FFree1Var var_9C = ""
  loc_5DBA3E: ExitProcHresult
End Sub

Private Sub ManualFecha_UnknownEvent_0 '5D8898
  'Data Table: 42E6E8
  loc_5D8870: FLdPrThis
  loc_5D8871: VCallAd Control_ID_ManualFecha
  loc_5D8874: FStAdFunc var_88
  loc_5D8877: FLdPr var_88
  loc_5D887A: LateIdLdVar var_98 DispID_22 0
  loc_5D8881: CStrVarTmp
  loc_5D8882: CVarStr var_A8
  loc_5D8885: FLdPr Me
  loc_5D8888: MemStVar
  loc_5D888C: FFree1Ad var_88
  loc_5D888F: FFreeVar var_98 = ""
  loc_5D8896: ExitProcHresult
End Sub

Private Sub ManualFecha_UnknownEvent_1 '69824C
  'Data Table: 42E6E8
  loc_697C24: FLdPrThis
  loc_697C25: VCallAd Control_ID_ManualFecha
  loc_697C28: FStAdFunc var_88
  loc_697C2B: FLdPr var_88
  loc_697C2E: LateIdLdVar var_98 DispID_22 0
  loc_697C35: PopAd
  loc_697C37: LitI2_Byte &HFF
  loc_697C39: FLdRfVar var_98
  loc_697C3C: CStrVarTmp
  loc_697C3D: FStStrNoPop var_9C
  loc_697C40: ImpAdCallI2 Proc_87_9_690704(, )
  loc_697C45: NotI4
  loc_697C46: FFree1Str var_9C
  loc_697C49: FFree1Ad var_88
  loc_697C4C: FFree1Var var_98 = ""
  loc_697C4F: BranchF loc_697D8B
  loc_697C52: FLdPr Me
  loc_697C55: MemLdRfVar from_stack_1.global_100
  loc_697C58: CStrVar
  loc_697C5A: CVarStr var_98
  loc_697C5D: PopAdLdVar
  loc_697C5E: FLdPrThis
  loc_697C5F: VCallAd Control_ID_ManualFecha
  loc_697C62: FStAdFunc var_88
  loc_697C65: FLdPr var_88
  loc_697C68: LateIdSt
  loc_697C6D: FFree1Ad var_88
  loc_697C70: FFree1Var var_98 = ""
  loc_697C73: FLdPrThis
  loc_697C74: VCallAd Control_ID_ManualFecha
  loc_697C77: FStAdFunc var_88
  loc_697C7A: FLdPr var_88
  loc_697C7D: LateIdLdVar var_98 DispID_22 0
  loc_697C84: PopAd
  loc_697C86: LitVarI2 var_BC, 2
  loc_697C8B: LitI4 1
  loc_697C90: FLdRfVar var_98
  loc_697C93: CStrVarTmp
  loc_697C94: FStStrNoPop var_9C
  loc_697C97: ImpAdCallI2 Mid$(, , )
  loc_697C9C: FStStrNoPop var_C0
  loc_697C9F: CI2Str
  loc_697CA1: CVarI2 var_D0
  loc_697CA4: PopAdLdVar
  loc_697CA5: FLdPrThis
  loc_697CA6: VCallAd Control_ID_Calendar1
  loc_697CA9: FStAdFunc var_D4
  loc_697CAC: FLdPr var_D4
  loc_697CAF: LateIdSt
  loc_697CB4: FFreeStr var_9C = ""
  loc_697CBB: FFreeAd var_88 = ""
  loc_697CC2: FFreeVar var_98 = ""
  loc_697CC9: FLdPrThis
  loc_697CCA: VCallAd Control_ID_ManualFecha
  loc_697CCD: FStAdFunc var_88
  loc_697CD0: FLdPr var_88
  loc_697CD3: LateIdLdVar var_98 DispID_22 0
  loc_697CDA: PopAd
  loc_697CDC: LitVarI2 var_BC, 2
  loc_697CE1: LitI4 4
  loc_697CE6: FLdRfVar var_98
  loc_697CE9: CStrVarTmp
  loc_697CEA: FStStrNoPop var_9C
  loc_697CED: ImpAdCallI2 Mid$(, , )
  loc_697CF2: FStStrNoPop var_C0
  loc_697CF5: CI2Str
  loc_697CF7: CVarI2 var_D0
  loc_697CFA: PopAdLdVar
  loc_697CFB: FLdPrThis
  loc_697CFC: VCallAd Control_ID_Calendar1
  loc_697CFF: FStAdFunc var_D4
  loc_697D02: FLdPr var_D4
  loc_697D05: LateIdSt
  loc_697D0A: FFreeStr var_9C = ""
  loc_697D11: FFreeAd var_88 = ""
  loc_697D18: FFreeVar var_98 = ""
  loc_697D1F: FLdPrThis
  loc_697D20: VCallAd Control_ID_ManualFecha
  loc_697D23: FStAdFunc var_88
  loc_697D26: FLdPr var_88
  loc_697D29: LateIdLdVar var_98 DispID_22 0
  loc_697D30: PopAd
  loc_697D32: LitVarI2 var_BC, 4
  loc_697D37: LitI4 7
  loc_697D3C: FLdRfVar var_98
  loc_697D3F: CStrVarTmp
  loc_697D40: FStStrNoPop var_9C
  loc_697D43: ImpAdCallI2 Mid$(, , )
  loc_697D48: FStStrNoPop var_C0
  loc_697D4B: CI2Str
  loc_697D4D: CVarI2 var_D0
  loc_697D50: PopAdLdVar
  loc_697D51: FLdPrThis
  loc_697D52: VCallAd Control_ID_Calendar1
  loc_697D55: FStAdFunc var_D4
  loc_697D58: FLdPr var_D4
  loc_697D5B: LateIdSt
  loc_697D60: FFreeStr var_9C = ""
  loc_697D67: FFreeAd var_88 = ""
  loc_697D6E: FFreeVar var_98 = ""
  loc_697D75: FLdPrThis
  loc_697D76: VCallAd Control_ID_ManualFecha
  loc_697D79: FStAdFunc var_88
  loc_697D7C: FLdPr var_88
  loc_697D7F: LateIdCall
  loc_697D87: FFree1Ad var_88
  loc_697D8A: ExitProcHresult
  loc_697D8B: FLdPr Me
  loc_697D8E: MemLdRfVar from_stack_1.global_84
  loc_697D91: FLdPrThis
  loc_697D92: VCallAd Control_ID_ManualFecha
  loc_697D95: FStAdFunc var_88
  loc_697D98: FLdPr var_88
  loc_697D9B: LateIdLdVar var_98 DispID_22 0
  loc_697DA2: CStrVarTmp
  loc_697DA3: CVarStr var_BC
  loc_697DA6: HardType
  loc_697DA7: NeVarBool
  loc_697DA9: FFree1Ad var_88
  loc_697DAC: FFreeVar var_98 = ""
  loc_697DB3: BranchF loc_698249
  loc_697DB6: FLdPrThis
  loc_697DB7: VCallAd Control_ID_ManualFecha
  loc_697DBA: FStAdFunc var_88
  loc_697DBD: FLdPr var_88
  loc_697DC0: LateIdLdVar var_98 DispID_22 0
  loc_697DC7: CStrVarTmp
  loc_697DC8: FStStrNoPop var_9C
  loc_697DCB: ImpAdCallI2 Trim$()
  loc_697DD0: FStStrNoPop var_C0
  loc_697DD3: FnLenStr
  loc_697DD4: LitI4 &HA
  loc_697DD9: NeI4
  loc_697DDA: FFreeStr var_9C = ""
  loc_697DE1: FFree1Ad var_88
  loc_697DE4: FFree1Var var_98 = ""
  loc_697DE7: BranchF loc_697F26
  loc_697DEA: LitVar_Missing var_E4
  loc_697DED: LitVar_Missing var_BC
  loc_697DF0: LitVar_Missing var_98
  loc_697DF3: LitI4 &H40
  loc_697DF8: FLdPr Me
  loc_697DFB: MemLdRfVar from_stack_1.strValidDate
  loc_697DFE: CVarRef
  loc_697E03: ImpAdCallFPR4 MsgBox(, , , , )
  loc_697E08: FFreeVar var_98 = "": var_BC = ""
  loc_697E11: FLdPr Me
  loc_697E14: MemLdRfVar from_stack_1.global_100
  loc_697E17: CStrVar
  loc_697E19: CVarStr var_98
  loc_697E1C: PopAdLdVar
  loc_697E1D: FLdPrThis
  loc_697E1E: VCallAd Control_ID_ManualFecha
  loc_697E21: FStAdFunc var_88
  loc_697E24: FLdPr var_88
  loc_697E27: LateIdSt
  loc_697E2C: FFree1Ad var_88
  loc_697E2F: FFree1Var var_98 = ""
  loc_697E32: FLdPrThis
  loc_697E33: VCallAd Control_ID_ManualFecha
  loc_697E36: FStAdFunc var_88
  loc_697E39: FLdPr var_88
  loc_697E3C: LateIdLdVar var_98 DispID_22 0
  loc_697E43: PopAd
  loc_697E45: LitI4 2
  loc_697E4A: FLdRfVar var_98
  loc_697E4D: CStrVarTmp
  loc_697E4E: CVarStr var_BC
  loc_697E51: FLdRfVar var_E4
  loc_697E54: ImpAdCallFPR4  = Left(, )
  loc_697E59: FLdRfVar var_E4
  loc_697E5C: CI2Var
  loc_697E5D: CVarI2 var_AC
  loc_697E60: PopAdLdVar
  loc_697E61: FLdPrThis
  loc_697E62: VCallAd Control_ID_Calendar1
  loc_697E65: FStAdFunc var_D4
  loc_697E68: FLdPr var_D4
  loc_697E6B: LateIdSt
  loc_697E70: FFreeAd var_88 = ""
  loc_697E77: FFreeVar var_98 = "": var_BC = ""
  loc_697E80: FLdPrThis
  loc_697E81: VCallAd Control_ID_ManualFecha
  loc_697E84: FStAdFunc var_88
  loc_697E87: FLdPr var_88
  loc_697E8A: LateIdLdVar var_98 DispID_22 0
  loc_697E91: PopAd
  loc_697E93: LitVarI2 var_E4, 2
  loc_697E98: LitI4 4
  loc_697E9D: FLdRfVar var_98
  loc_697EA0: CStrVarTmp
  loc_697EA1: CVarStr var_BC
  loc_697EA4: FLdRfVar var_114
  loc_697EA7: ImpAdCallFPR4  = Mid(, , )
  loc_697EAC: FLdRfVar var_114
  loc_697EAF: CI2Var
  loc_697EB0: CVarI2 var_D0
  loc_697EB3: PopAdLdVar
  loc_697EB4: FLdPrThis
  loc_697EB5: VCallAd Control_ID_Calendar1
  loc_697EB8: FStAdFunc var_D4
  loc_697EBB: FLdPr var_D4
  loc_697EBE: LateIdSt
  loc_697EC3: FFreeAd var_88 = ""
  loc_697ECA: FFreeVar var_98 = "": var_BC = "": var_E4 = ""
  loc_697ED5: FLdPrThis
  loc_697ED6: VCallAd Control_ID_ManualFecha
  loc_697ED9: FStAdFunc var_88
  loc_697EDC: FLdPr var_88
  loc_697EDF: LateIdLdVar var_98 DispID_22 0
  loc_697EE6: PopAd
  loc_697EE8: LitI4 4
  loc_697EED: FLdRfVar var_98
  loc_697EF0: CStrVarTmp
  loc_697EF1: CVarStr var_BC
  loc_697EF4: FLdRfVar var_E4
  loc_697EF7: ImpAdCallFPR4  = Right(, )
  loc_697EFC: FLdRfVar var_E4
  loc_697EFF: CI2Var
  loc_697F00: CVarI2 var_AC
  loc_697F03: PopAdLdVar
  loc_697F04: FLdPrThis
  loc_697F05: VCallAd Control_ID_Calendar1
  loc_697F08: FStAdFunc var_D4
  loc_697F0B: FLdPr var_D4
  loc_697F0E: LateIdSt
  loc_697F13: FFreeAd var_88 = ""
  loc_697F1A: FFreeVar var_98 = "": var_BC = ""
  loc_697F23: Branch loc_698249
  loc_697F26: FLdPrThis
  loc_697F27: VCallAd Control_ID_ManualFecha
  loc_697F2A: FStAdFunc var_88
  loc_697F2D: FLdPr var_88
  loc_697F30: LateIdLdVar var_98 DispID_22 0
  loc_697F37: PopAd
  loc_697F39: LitI4 2
  loc_697F3E: FLdRfVar var_98
  loc_697F41: CStrVarTmp
  loc_697F42: CVarStr var_BC
  loc_697F45: FLdRfVar var_E4
  loc_697F48: ImpAdCallFPR4  = Left(, )
  loc_697F4D: FLdPrThis
  loc_697F4E: VCallAd Control_ID_ManualFecha
  loc_697F51: FStAdFunc var_D4
  loc_697F54: FLdPr var_D4
  loc_697F57: LateIdLdVar var_114 DispID_22 0
  loc_697F5E: PopAd
  loc_697F60: LitVarI2 var_134, 2
  loc_697F65: LitI4 4
  loc_697F6A: FLdRfVar var_114
  loc_697F6D: CStrVarTmp
  loc_697F6E: CVarStr var_124
  loc_697F71: FLdRfVar var_144
  loc_697F74: ImpAdCallFPR4  = Mid(, , )
  loc_697F79: FLdPrThis
  loc_697F7A: VCallAd Control_ID_ManualFecha
  loc_697F7D: FStAdFunc var_148
  loc_697F80: FLdPr var_148
  loc_697F83: LateIdLdVar var_158 DispID_22 0
  loc_697F8A: PopAd
  loc_697F8C: FLdPrThis
  loc_697F8D: VCallAd Control_ID_ManualFecha
  loc_697F90: FStAdFunc var_17C
  loc_697F93: FLdPr var_17C
  loc_697F96: LateIdLdVar var_18C DispID_22 0
  loc_697F9D: PopAd
  loc_697F9F: LitI4 4
  loc_697FA4: FLdRfVar var_158
  loc_697FA7: CStrVarTmp
  loc_697FA8: CVarStr var_168
  loc_697FAB: FLdRfVar var_178
  loc_697FAE: ImpAdCallFPR4  = Right(, )
  loc_697FB3: FLdRfVar var_178
  loc_697FB6: CI2Var
  loc_697FB7: FLdRfVar var_144
  loc_697FBA: CI2Var
  loc_697FBB: FLdRfVar var_E4
  loc_697FBE: CI2Var
  loc_697FBF: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_697FC4: CVarBoolI2 var_F4
  loc_697FC8: LitI4 4
  loc_697FCD: FLdRfVar var_18C
  loc_697FD0: CStrVarTmp
  loc_697FD1: CVarStr var_19C
  loc_697FD4: FLdRfVar var_1AC
  loc_697FD7: ImpAdCallFPR4  = Right(, )
  loc_697FDC: FLdRfVar var_1AC
  loc_697FDF: LitVarI2 var_D0, 1970
  loc_697FE4: HardType
  loc_697FE5: GtVar var_1BC
  loc_697FE9: AndVar var_1CC
  loc_697FED: CBoolVarNull
  loc_697FEF: FFreeAd var_88 = "": var_D4 = "": var_148 = ""
  loc_697FFA: FFreeVar var_98 = "": var_BC = "": var_114 = "": var_124 = "": var_134 = "": var_158 = "": var_168 = "": var_E4 = "": var_144 = "": var_178 = "": var_18C = "": var_19C = "": var_1AC = ""
  loc_698019: BranchF loc_698110
  loc_69801C: FLdPrThis
  loc_69801D: VCallAd Control_ID_ManualFecha
  loc_698020: FStAdFunc var_88
  loc_698023: FLdPr var_88
  loc_698026: LateIdLdVar var_98 DispID_22 0
  loc_69802D: PopAd
  loc_69802F: LitI4 2
  loc_698034: FLdRfVar var_98
  loc_698037: CStrVarTmp
  loc_698038: CVarStr var_BC
  loc_69803B: FLdRfVar var_E4
  loc_69803E: ImpAdCallFPR4  = Left(, )
  loc_698043: FLdRfVar var_E4
  loc_698046: CI2Var
  loc_698047: CVarI2 var_AC
  loc_69804A: PopAdLdVar
  loc_69804B: FLdPrThis
  loc_69804C: VCallAd Control_ID_Calendar1
  loc_69804F: FStAdFunc var_D4
  loc_698052: FLdPr var_D4
  loc_698055: LateIdSt
  loc_69805A: FFreeAd var_88 = ""
  loc_698061: FFreeVar var_98 = "": var_BC = ""
  loc_69806A: FLdPrThis
  loc_69806B: VCallAd Control_ID_ManualFecha
  loc_69806E: FStAdFunc var_88
  loc_698071: FLdPr var_88
  loc_698074: LateIdLdVar var_98 DispID_22 0
  loc_69807B: PopAd
  loc_69807D: LitVarI2 var_E4, 2
  loc_698082: LitI4 4
  loc_698087: FLdRfVar var_98
  loc_69808A: CStrVarTmp
  loc_69808B: CVarStr var_BC
  loc_69808E: FLdRfVar var_114
  loc_698091: ImpAdCallFPR4  = Mid(, , )
  loc_698096: FLdRfVar var_114
  loc_698099: CI2Var
  loc_69809A: CVarI2 var_D0
  loc_69809D: PopAdLdVar
  loc_69809E: FLdPrThis
  loc_69809F: VCallAd Control_ID_Calendar1
  loc_6980A2: FStAdFunc var_D4
  loc_6980A5: FLdPr var_D4
  loc_6980A8: LateIdSt
  loc_6980AD: FFreeAd var_88 = ""
  loc_6980B4: FFreeVar var_98 = "": var_BC = "": var_E4 = ""
  loc_6980BF: FLdPrThis
  loc_6980C0: VCallAd Control_ID_ManualFecha
  loc_6980C3: FStAdFunc var_88
  loc_6980C6: FLdPr var_88
  loc_6980C9: LateIdLdVar var_98 DispID_22 0
  loc_6980D0: PopAd
  loc_6980D2: LitI4 4
  loc_6980D7: FLdRfVar var_98
  loc_6980DA: CStrVarTmp
  loc_6980DB: CVarStr var_BC
  loc_6980DE: FLdRfVar var_E4
  loc_6980E1: ImpAdCallFPR4  = Right(, )
  loc_6980E6: FLdRfVar var_E4
  loc_6980E9: CI2Var
  loc_6980EA: CVarI2 var_AC
  loc_6980ED: PopAdLdVar
  loc_6980EE: FLdPrThis
  loc_6980EF: VCallAd Control_ID_Calendar1
  loc_6980F2: FStAdFunc var_D4
  loc_6980F5: FLdPr var_D4
  loc_6980F8: LateIdSt
  loc_6980FD: FFreeAd var_88 = ""
  loc_698104: FFreeVar var_98 = "": var_BC = ""
  loc_69810D: Branch loc_698249
  loc_698110: LitVar_Missing var_E4
  loc_698113: LitVar_Missing var_BC
  loc_698116: LitVar_Missing var_98
  loc_698119: LitI4 &H40
  loc_69811E: FLdPr Me
  loc_698121: MemLdRfVar from_stack_1.strValidDate
  loc_698124: CVarRef
  loc_698129: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69812E: FFreeVar var_98 = "": var_BC = ""
  loc_698137: FLdPr Me
  loc_69813A: MemLdRfVar from_stack_1.global_100
  loc_69813D: CStrVar
  loc_69813F: CVarStr var_98
  loc_698142: PopAdLdVar
  loc_698143: FLdPrThis
  loc_698144: VCallAd Control_ID_ManualFecha
  loc_698147: FStAdFunc var_88
  loc_69814A: FLdPr var_88
  loc_69814D: LateIdSt
  loc_698152: FFree1Ad var_88
  loc_698155: FFree1Var var_98 = ""
  loc_698158: FLdPrThis
  loc_698159: VCallAd Control_ID_ManualFecha
  loc_69815C: FStAdFunc var_88
  loc_69815F: FLdPr var_88
  loc_698162: LateIdLdVar var_98 DispID_22 0
  loc_698169: PopAd
  loc_69816B: LitI4 2
  loc_698170: FLdRfVar var_98
  loc_698173: CStrVarTmp
  loc_698174: CVarStr var_BC
  loc_698177: FLdRfVar var_E4
  loc_69817A: ImpAdCallFPR4  = Left(, )
  loc_69817F: FLdRfVar var_E4
  loc_698182: CI2Var
  loc_698183: CVarI2 var_AC
  loc_698186: PopAdLdVar
  loc_698187: FLdPrThis
  loc_698188: VCallAd Control_ID_Calendar1
  loc_69818B: FStAdFunc var_D4
  loc_69818E: FLdPr var_D4
  loc_698191: LateIdSt
  loc_698196: FFreeAd var_88 = ""
  loc_69819D: FFreeVar var_98 = "": var_BC = ""
  loc_6981A6: FLdPrThis
  loc_6981A7: VCallAd Control_ID_ManualFecha
  loc_6981AA: FStAdFunc var_88
  loc_6981AD: FLdPr var_88
  loc_6981B0: LateIdLdVar var_98 DispID_22 0
  loc_6981B7: PopAd
  loc_6981B9: LitVarI2 var_E4, 2
  loc_6981BE: LitI4 4
  loc_6981C3: FLdRfVar var_98
  loc_6981C6: CStrVarTmp
  loc_6981C7: CVarStr var_BC
  loc_6981CA: FLdRfVar var_114
  loc_6981CD: ImpAdCallFPR4  = Mid(, , )
  loc_6981D2: FLdRfVar var_114
  loc_6981D5: CI2Var
  loc_6981D6: CVarI2 var_D0
  loc_6981D9: PopAdLdVar
  loc_6981DA: FLdPrThis
  loc_6981DB: VCallAd Control_ID_Calendar1
  loc_6981DE: FStAdFunc var_D4
  loc_6981E1: FLdPr var_D4
  loc_6981E4: LateIdSt
  loc_6981E9: FFreeAd var_88 = ""
  loc_6981F0: FFreeVar var_98 = "": var_BC = "": var_E4 = ""
  loc_6981FB: FLdPrThis
  loc_6981FC: VCallAd Control_ID_ManualFecha
  loc_6981FF: FStAdFunc var_88
  loc_698202: FLdPr var_88
  loc_698205: LateIdLdVar var_98 DispID_22 0
  loc_69820C: PopAd
  loc_69820E: LitI4 4
  loc_698213: FLdRfVar var_98
  loc_698216: CStrVarTmp
  loc_698217: CVarStr var_BC
  loc_69821A: FLdRfVar var_E4
  loc_69821D: ImpAdCallFPR4  = Right(, )
  loc_698222: FLdRfVar var_E4
  loc_698225: CI2Var
  loc_698226: CVarI2 var_AC
  loc_698229: PopAdLdVar
  loc_69822A: FLdPrThis
  loc_69822B: VCallAd Control_ID_Calendar1
  loc_69822E: FStAdFunc var_D4
  loc_698231: FLdPr var_D4
  loc_698234: LateIdSt
  loc_698239: FFreeAd var_88 = ""
  loc_698240: FFreeVar var_98 = "": var_BC = ""
  loc_698249: ExitProcHresult
  loc_69824A: CDateR8
End Sub

Private Sub sscContinuar_UnknownEvent_8 '6F034C
  'Data Table: 42E6E8
  loc_6EF548: FLdPr Me
  loc_6EF54B: MemLdI2 IsRemito
  loc_6EF54E: CVarBoolI2 var_124
  loc_6EF552: LitVarStr var_D4, "1"
  loc_6EF557: FStVarCopyObj var_E4
  loc_6EF55A: FLdRfVar var_E4
  loc_6EF55D: LitI4 4
  loc_6EF562: ImpAdLdRf MemVar_74BEAC
  loc_6EF565: CVarRef
  loc_6EF56A: FLdRfVar var_F4
  loc_6EF56D: ImpAdCallFPR4  = Mid(, , )
  loc_6EF572: FLdRfVar var_F4
  loc_6EF575: LitVarStr var_104, "1"
  loc_6EF57A: HardType
  loc_6EF57B: EqVar var_114
  loc_6EF57F: AndVar var_134
  loc_6EF583: CBoolVarNull
  loc_6EF585: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF58E: BranchF loc_6EF5F8
  loc_6EF591: FLdPrThis
  loc_6EF592: VCallAd Control_ID_ManualFecha
  loc_6EF595: FStAdFunc var_138
  loc_6EF598: FLdPr var_138
  loc_6EF59B: LateIdLdVar var_E4 DispID_22 0
  loc_6EF5A2: CStrVarTmp
  loc_6EF5A3: FStStrNoPop var_13C
  loc_6EF5A6: LitStr " "
  loc_6EF5A9: ConcatStr
  loc_6EF5AA: FStStrNoPop var_144
  loc_6EF5AD: FLdPrThis
  loc_6EF5AE: VCallAd Control_ID_ManualHora
  loc_6EF5B1: FStAdFunc var_140
  loc_6EF5B4: FLdPr var_140
  loc_6EF5B7: LateIdLdVar var_F4 DispID_22 0
  loc_6EF5BE: CStrVarTmp
  loc_6EF5BF: FStStrNoPop var_148
  loc_6EF5C2: ConcatStr
  loc_6EF5C3: FStStrNoPop var_14C
  loc_6EF5C6: ImpAdLdRf MemVar_74DE58
  loc_6EF5C9: NewIfNullPr Remito
  loc_6EF5CC: VCallAd Control_ID_fecha
  loc_6EF5CF: FStAdFunc var_150
  loc_6EF5D2: FLdPr var_150
  loc_6EF5D5: Remito.Label.Caption = from_stack_1
  loc_6EF5DA: FFreeStr var_13C = "": var_144 = "": var_148 = ""
  loc_6EF5E5: FFreeAd var_138 = "": var_140 = ""
  loc_6EF5EE: FFreeVar var_E4 = ""
  loc_6EF5F5: Branch loc_6F031D
  loc_6EF5F8: FLdPrThis
  loc_6EF5F9: VCallAd Control_ID_ManualFecha
  loc_6EF5FC: FStAdFunc var_138
  loc_6EF5FF: FLdPr var_138
  loc_6EF602: LateIdLdVar var_E4 DispID_22 0
  loc_6EF609: PopAd
  loc_6EF60B: LitI4 2
  loc_6EF610: FLdRfVar var_E4
  loc_6EF613: CStrVarTmp
  loc_6EF614: CVarStr var_F4
  loc_6EF617: FLdRfVar var_114
  loc_6EF61A: ImpAdCallFPR4  = Left(, )
  loc_6EF61F: FLdPrThis
  loc_6EF620: VCallAd Control_ID_ManualFecha
  loc_6EF623: FStAdFunc var_140
  loc_6EF626: FLdPr var_140
  loc_6EF629: LateIdLdVar var_134 DispID_22 0
  loc_6EF630: PopAd
  loc_6EF632: LitVarI2 var_170, 2
  loc_6EF637: LitI4 4
  loc_6EF63C: FLdRfVar var_134
  loc_6EF63F: CStrVarTmp
  loc_6EF640: CVarStr var_160
  loc_6EF643: FLdRfVar var_180
  loc_6EF646: ImpAdCallFPR4  = Mid(, , )
  loc_6EF64B: FLdPrThis
  loc_6EF64C: VCallAd Control_ID_ManualFecha
  loc_6EF64F: FStAdFunc var_150
  loc_6EF652: FLdPr var_150
  loc_6EF655: LateIdLdVar var_190 DispID_22 0
  loc_6EF65C: PopAd
  loc_6EF65E: LitI4 4
  loc_6EF663: FLdRfVar var_190
  loc_6EF666: CStrVarTmp
  loc_6EF667: CVarStr var_1A0
  loc_6EF66A: FLdRfVar var_1B0
  loc_6EF66D: ImpAdCallFPR4  = Right(, )
  loc_6EF672: FLdRfVar var_1B0
  loc_6EF675: CI2Var
  loc_6EF676: FLdRfVar var_180
  loc_6EF679: CI2Var
  loc_6EF67A: FLdRfVar var_114
  loc_6EF67D: CI2Var
  loc_6EF67E: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6EF683: FFreeAd var_138 = "": var_140 = ""
  loc_6EF68C: FFreeVar var_E4 = "": var_F4 = "": var_134 = "": var_160 = "": var_170 = "": var_190 = "": var_1A0 = "": var_114 = "": var_180 = ""
  loc_6EF6A3: BranchF loc_6EF79A
  loc_6EF6A6: FLdPrThis
  loc_6EF6A7: VCallAd Control_ID_ManualFecha
  loc_6EF6AA: FStAdFunc var_138
  loc_6EF6AD: FLdPr var_138
  loc_6EF6B0: LateIdLdVar var_E4 DispID_22 0
  loc_6EF6B7: PopAd
  loc_6EF6B9: LitI4 2
  loc_6EF6BE: FLdRfVar var_E4
  loc_6EF6C1: CStrVarTmp
  loc_6EF6C2: CVarStr var_F4
  loc_6EF6C5: FLdRfVar var_114
  loc_6EF6C8: ImpAdCallFPR4  = Left(, )
  loc_6EF6CD: FLdRfVar var_114
  loc_6EF6D0: CI2Var
  loc_6EF6D1: CVarI2 var_C4
  loc_6EF6D4: PopAdLdVar
  loc_6EF6D5: FLdPrThis
  loc_6EF6D6: VCallAd Control_ID_Calendar1
  loc_6EF6D9: FStAdFunc var_140
  loc_6EF6DC: FLdPr var_140
  loc_6EF6DF: LateIdSt
  loc_6EF6E4: FFreeAd var_138 = ""
  loc_6EF6EB: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF6F4: FLdPrThis
  loc_6EF6F5: VCallAd Control_ID_ManualFecha
  loc_6EF6F8: FStAdFunc var_138
  loc_6EF6FB: FLdPr var_138
  loc_6EF6FE: LateIdLdVar var_E4 DispID_22 0
  loc_6EF705: PopAd
  loc_6EF707: LitVarI2 var_114, 2
  loc_6EF70C: LitI4 4
  loc_6EF711: FLdRfVar var_E4
  loc_6EF714: CStrVarTmp
  loc_6EF715: CVarStr var_F4
  loc_6EF718: FLdRfVar var_134
  loc_6EF71B: ImpAdCallFPR4  = Mid(, , )
  loc_6EF720: FLdRfVar var_134
  loc_6EF723: CI2Var
  loc_6EF724: CVarI2 var_D4
  loc_6EF727: PopAdLdVar
  loc_6EF728: FLdPrThis
  loc_6EF729: VCallAd Control_ID_Calendar1
  loc_6EF72C: FStAdFunc var_140
  loc_6EF72F: FLdPr var_140
  loc_6EF732: LateIdSt
  loc_6EF737: FFreeAd var_138 = ""
  loc_6EF73E: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6EF749: FLdPrThis
  loc_6EF74A: VCallAd Control_ID_ManualFecha
  loc_6EF74D: FStAdFunc var_138
  loc_6EF750: FLdPr var_138
  loc_6EF753: LateIdLdVar var_E4 DispID_22 0
  loc_6EF75A: PopAd
  loc_6EF75C: LitI4 4
  loc_6EF761: FLdRfVar var_E4
  loc_6EF764: CStrVarTmp
  loc_6EF765: CVarStr var_F4
  loc_6EF768: FLdRfVar var_114
  loc_6EF76B: ImpAdCallFPR4  = Right(, )
  loc_6EF770: FLdRfVar var_114
  loc_6EF773: CI2Var
  loc_6EF774: CVarI2 var_C4
  loc_6EF777: PopAdLdVar
  loc_6EF778: FLdPrThis
  loc_6EF779: VCallAd Control_ID_Calendar1
  loc_6EF77C: FStAdFunc var_140
  loc_6EF77F: FLdPr var_140
  loc_6EF782: LateIdSt
  loc_6EF787: FFreeAd var_138 = ""
  loc_6EF78E: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF797: Branch loc_6EF8D6
  loc_6EF79A: LitVar_Missing var_134
  loc_6EF79D: LitVar_Missing var_114
  loc_6EF7A0: LitVar_Missing var_F4
  loc_6EF7A3: LitI4 &H40
  loc_6EF7A8: LitVarStr var_C4, "Debe ingresar una fecha válida (dd/mm/aaaa). Verifique por favor."
  loc_6EF7AD: FStVarCopyObj var_E4
  loc_6EF7B0: FLdRfVar var_E4
  loc_6EF7B3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EF7B8: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6EF7C3: FLdPr Me
  loc_6EF7C6: MemLdRfVar from_stack_1.global_100
  loc_6EF7C9: CStrVar
  loc_6EF7CB: CVarStr var_E4
  loc_6EF7CE: PopAdLdVar
  loc_6EF7CF: FLdPrThis
  loc_6EF7D0: VCallAd Control_ID_ManualFecha
  loc_6EF7D3: FStAdFunc var_138
  loc_6EF7D6: FLdPr var_138
  loc_6EF7D9: LateIdSt
  loc_6EF7DE: FFree1Ad var_138
  loc_6EF7E1: FFree1Var var_E4 = ""
  loc_6EF7E4: FLdPrThis
  loc_6EF7E5: VCallAd Control_ID_ManualFecha
  loc_6EF7E8: FStAdFunc var_138
  loc_6EF7EB: FLdPr var_138
  loc_6EF7EE: LateIdLdVar var_E4 DispID_22 0
  loc_6EF7F5: PopAd
  loc_6EF7F7: LitI4 2
  loc_6EF7FC: FLdRfVar var_E4
  loc_6EF7FF: CStrVarTmp
  loc_6EF800: CVarStr var_F4
  loc_6EF803: FLdRfVar var_114
  loc_6EF806: ImpAdCallFPR4  = Left(, )
  loc_6EF80B: FLdRfVar var_114
  loc_6EF80E: CI2Var
  loc_6EF80F: CVarI2 var_C4
  loc_6EF812: PopAdLdVar
  loc_6EF813: FLdPrThis
  loc_6EF814: VCallAd Control_ID_Calendar1
  loc_6EF817: FStAdFunc var_140
  loc_6EF81A: FLdPr var_140
  loc_6EF81D: LateIdSt
  loc_6EF822: FFreeAd var_138 = ""
  loc_6EF829: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF832: FLdPrThis
  loc_6EF833: VCallAd Control_ID_ManualFecha
  loc_6EF836: FStAdFunc var_138
  loc_6EF839: FLdPr var_138
  loc_6EF83C: LateIdLdVar var_E4 DispID_22 0
  loc_6EF843: PopAd
  loc_6EF845: LitVarI2 var_114, 2
  loc_6EF84A: LitI4 4
  loc_6EF84F: FLdRfVar var_E4
  loc_6EF852: CStrVarTmp
  loc_6EF853: CVarStr var_F4
  loc_6EF856: FLdRfVar var_134
  loc_6EF859: ImpAdCallFPR4  = Mid(, , )
  loc_6EF85E: FLdRfVar var_134
  loc_6EF861: CI2Var
  loc_6EF862: CVarI2 var_D4
  loc_6EF865: PopAdLdVar
  loc_6EF866: FLdPrThis
  loc_6EF867: VCallAd Control_ID_Calendar1
  loc_6EF86A: FStAdFunc var_140
  loc_6EF86D: FLdPr var_140
  loc_6EF870: LateIdSt
  loc_6EF875: FFreeAd var_138 = ""
  loc_6EF87C: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6EF887: FLdPrThis
  loc_6EF888: VCallAd Control_ID_ManualFecha
  loc_6EF88B: FStAdFunc var_138
  loc_6EF88E: FLdPr var_138
  loc_6EF891: LateIdLdVar var_E4 DispID_22 0
  loc_6EF898: PopAd
  loc_6EF89A: LitI4 4
  loc_6EF89F: FLdRfVar var_E4
  loc_6EF8A2: CStrVarTmp
  loc_6EF8A3: CVarStr var_F4
  loc_6EF8A6: FLdRfVar var_114
  loc_6EF8A9: ImpAdCallFPR4  = Right(, )
  loc_6EF8AE: FLdRfVar var_114
  loc_6EF8B1: CI2Var
  loc_6EF8B2: CVarI2 var_C4
  loc_6EF8B5: PopAdLdVar
  loc_6EF8B6: FLdPrThis
  loc_6EF8B7: VCallAd Control_ID_Calendar1
  loc_6EF8BA: FStAdFunc var_140
  loc_6EF8BD: FLdPr var_140
  loc_6EF8C0: LateIdSt
  loc_6EF8C5: FFreeAd var_138 = ""
  loc_6EF8CC: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF8D5: ExitProcHresult
  loc_6EF8D6: FLdPrThis
  loc_6EF8D7: VCallAd Control_ID_ManualHora
  loc_6EF8DA: FStAdFunc var_138
  loc_6EF8DD: FLdPr var_138
  loc_6EF8E0: LateIdLdVar var_E4 DispID_22 0
  loc_6EF8E7: CStrVarTmp
  loc_6EF8E8: FStStrNoPop var_13C
  loc_6EF8EB: LitStr ":00"
  loc_6EF8EE: ConcatStr
  loc_6EF8EF: CVarStr var_F4
  loc_6EF8F2: ImpAdCallI2 Proc_53_13_638184()
  loc_6EF8F7: FFree1Str var_13C
  loc_6EF8FA: FFree1Ad var_138
  loc_6EF8FD: FFreeVar var_E4 = ""
  loc_6EF904: BranchF loc_6EF93B
  loc_6EF907: FLdPrThis
  loc_6EF908: VCallAd Control_ID_ManualHora
  loc_6EF90B: FStAdFunc var_138
  loc_6EF90E: FLdPr var_138
  loc_6EF911: LateIdLdVar var_E4 DispID_22 0
  loc_6EF918: CStrVarTmp
  loc_6EF919: FStStrNoPop var_13C
  loc_6EF91C: FLdPrThis
  loc_6EF91D: VCallAd Control_ID_Hora
  loc_6EF920: FStAdFunc var_140
  loc_6EF923: FLdPr var_140
  loc_6EF926: Me.Text = from_stack_1
  loc_6EF92B: FFree1Str var_13C
  loc_6EF92E: FFreeAd var_138 = ""
  loc_6EF935: FFree1Var var_E4 = ""
  loc_6EF938: Branch loc_6EFA77
  loc_6EF93B: LitVar_Missing var_134
  loc_6EF93E: LitVar_Missing var_114
  loc_6EF941: LitVar_Missing var_F4
  loc_6EF944: LitI4 &H40
  loc_6EF949: LitVarStr var_C4, "Debe ingresar una hora válida. Verifique por favor."
  loc_6EF94E: FStVarCopyObj var_E4
  loc_6EF951: FLdRfVar var_E4
  loc_6EF954: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EF959: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6EF964: FLdPr Me
  loc_6EF967: MemLdRfVar from_stack_1.global_84
  loc_6EF96A: CStrVar
  loc_6EF96C: CVarStr var_E4
  loc_6EF96F: PopAdLdVar
  loc_6EF970: FLdPrThis
  loc_6EF971: VCallAd Control_ID_ManualHora
  loc_6EF974: FStAdFunc var_138
  loc_6EF977: FLdPr var_138
  loc_6EF97A: LateIdSt
  loc_6EF97F: FFree1Ad var_138
  loc_6EF982: FFree1Var var_E4 = ""
  loc_6EF985: FLdPrThis
  loc_6EF986: VCallAd Control_ID_ManualFecha
  loc_6EF989: FStAdFunc var_138
  loc_6EF98C: FLdPr var_138
  loc_6EF98F: LateIdLdVar var_E4 DispID_22 0
  loc_6EF996: PopAd
  loc_6EF998: LitI4 2
  loc_6EF99D: FLdRfVar var_E4
  loc_6EF9A0: CStrVarTmp
  loc_6EF9A1: CVarStr var_F4
  loc_6EF9A4: FLdRfVar var_114
  loc_6EF9A7: ImpAdCallFPR4  = Left(, )
  loc_6EF9AC: FLdRfVar var_114
  loc_6EF9AF: CI2Var
  loc_6EF9B0: CVarI2 var_C4
  loc_6EF9B3: PopAdLdVar
  loc_6EF9B4: FLdPrThis
  loc_6EF9B5: VCallAd Control_ID_Calendar1
  loc_6EF9B8: FStAdFunc var_140
  loc_6EF9BB: FLdPr var_140
  loc_6EF9BE: LateIdSt
  loc_6EF9C3: FFreeAd var_138 = ""
  loc_6EF9CA: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EF9D3: FLdPrThis
  loc_6EF9D4: VCallAd Control_ID_ManualFecha
  loc_6EF9D7: FStAdFunc var_138
  loc_6EF9DA: FLdPr var_138
  loc_6EF9DD: LateIdLdVar var_E4 DispID_22 0
  loc_6EF9E4: PopAd
  loc_6EF9E6: LitVarI2 var_114, 2
  loc_6EF9EB: LitI4 4
  loc_6EF9F0: FLdRfVar var_E4
  loc_6EF9F3: CStrVarTmp
  loc_6EF9F4: CVarStr var_F4
  loc_6EF9F7: FLdRfVar var_134
  loc_6EF9FA: ImpAdCallFPR4  = Mid(, , )
  loc_6EF9FF: FLdRfVar var_134
  loc_6EFA02: CI2Var
  loc_6EFA03: CVarI2 var_D4
  loc_6EFA06: PopAdLdVar
  loc_6EFA07: FLdPrThis
  loc_6EFA08: VCallAd Control_ID_Calendar1
  loc_6EFA0B: FStAdFunc var_140
  loc_6EFA0E: FLdPr var_140
  loc_6EFA11: LateIdSt
  loc_6EFA16: FFreeAd var_138 = ""
  loc_6EFA1D: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6EFA28: FLdPrThis
  loc_6EFA29: VCallAd Control_ID_ManualFecha
  loc_6EFA2C: FStAdFunc var_138
  loc_6EFA2F: FLdPr var_138
  loc_6EFA32: LateIdLdVar var_E4 DispID_22 0
  loc_6EFA39: PopAd
  loc_6EFA3B: LitI4 4
  loc_6EFA40: FLdRfVar var_E4
  loc_6EFA43: CStrVarTmp
  loc_6EFA44: CVarStr var_F4
  loc_6EFA47: FLdRfVar var_114
  loc_6EFA4A: ImpAdCallFPR4  = Right(, )
  loc_6EFA4F: FLdRfVar var_114
  loc_6EFA52: CI2Var
  loc_6EFA53: CVarI2 var_C4
  loc_6EFA56: PopAdLdVar
  loc_6EFA57: FLdPrThis
  loc_6EFA58: VCallAd Control_ID_Calendar1
  loc_6EFA5B: FStAdFunc var_140
  loc_6EFA5E: FLdPr var_140
  loc_6EFA61: LateIdSt
  loc_6EFA66: FFreeAd var_138 = ""
  loc_6EFA6D: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EFA76: ExitProcHresult
  loc_6EFA77: FLdRfVar var_144
  loc_6EFA7A: LitVar_Missing var_1B0
  loc_6EFA7D: LitVar_Missing var_1A0
  loc_6EFA80: LitVar_Missing var_190
  loc_6EFA83: LitVar_Missing var_180
  loc_6EFA86: LitVar_Missing var_170
  loc_6EFA89: LitVar_Missing var_160
  loc_6EFA8C: LitVar_Missing var_134
  loc_6EFA8F: LitVar_Missing var_114
  loc_6EFA92: LitVar_Missing var_F4
  loc_6EFA95: LitVar_Missing var_E4
  loc_6EFA98: LitStr "Debe ingresar una fecha mayor a la actual. Verifique por favor."
  loc_6EFA9B: FStStrCopy var_13C
  loc_6EFA9E: FLdRfVar var_13C
  loc_6EFAA1: LitI4 8
  loc_6EFAA6: PopTmpLdAdStr var_1B8
  loc_6EFAA9: LitI2_Byte &HC
  loc_6EFAAB: PopTmpLdAd2 var_1B2
  loc_6EFAAE: ImpAdLdRf MemVar_74C7D0
  loc_6EFAB1: NewIfNullPr clsMsg
  loc_6EFAB4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EFAB9: ILdRf var_144
  loc_6EFABC: FLdPr Me
  loc_6EFABF: MemStStrCopy
  loc_6EFAC3: FFreeStr var_13C = ""
  loc_6EFACA: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6EFAE1: FLdRfVar var_144
  loc_6EFAE4: LitVar_Missing var_1B0
  loc_6EFAE7: LitVar_Missing var_1A0
  loc_6EFAEA: LitVar_Missing var_190
  loc_6EFAED: LitVar_Missing var_180
  loc_6EFAF0: LitVar_Missing var_170
  loc_6EFAF3: LitVar_Missing var_160
  loc_6EFAF6: LitVar_Missing var_134
  loc_6EFAF9: LitVar_Missing var_114
  loc_6EFAFC: LitVar_Missing var_F4
  loc_6EFAFF: LitVar_Missing var_E4
  loc_6EFB02: LitStr "Debe ingresar una hora mayor a la actual. Verifique por favor."
  loc_6EFB05: FStStrCopy var_13C
  loc_6EFB08: FLdRfVar var_13C
  loc_6EFB0B: LitI4 9
  loc_6EFB10: PopTmpLdAdStr var_1B8
  loc_6EFB13: LitI2_Byte &HC
  loc_6EFB15: PopTmpLdAd2 var_1B2
  loc_6EFB18: ImpAdLdRf MemVar_74C7D0
  loc_6EFB1B: NewIfNullPr clsMsg
  loc_6EFB1E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EFB23: ILdRf var_144
  loc_6EFB26: FLdPr Me
  loc_6EFB29: MemStStrCopy
  loc_6EFB2D: FFreeStr var_13C = ""
  loc_6EFB34: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6EFB4B: FLdPrThis
  loc_6EFB4C: VCallAd Control_ID_Calendar1
  loc_6EFB4F: FStAdFunc var_138
  loc_6EFB52: FLdPr var_138
  loc_6EFB55: LateIdLdVar var_E4 DispID_17 0
  loc_6EFB5C: PopAd
  loc_6EFB5E: FLdPrThis
  loc_6EFB5F: VCallAd Control_ID_Calendar1
  loc_6EFB62: FStAdFunc var_140
  loc_6EFB65: FLdPr var_140
  loc_6EFB68: LateIdLdVar var_F4 DispID_16 0
  loc_6EFB6F: PopAd
  loc_6EFB71: FLdPrThis
  loc_6EFB72: VCallAd Control_ID_Calendar1
  loc_6EFB75: FStAdFunc var_150
  loc_6EFB78: FLdPr var_150
  loc_6EFB7B: LateIdLdVar var_114 DispID_15 0
  loc_6EFB82: PopAd
  loc_6EFB84: FLdRfVar var_134
  loc_6EFB87: ImpAdCallFPR4  = Now
  loc_6EFB8C: FLdRfVar var_134
  loc_6EFB8F: FLdRfVar var_160
  loc_6EFB92: ImpAdCallFPR4  = Day()
  loc_6EFB97: FLdRfVar var_170
  loc_6EFB9A: ImpAdCallFPR4  = Now
  loc_6EFB9F: FLdRfVar var_170
  loc_6EFBA2: FLdRfVar var_180
  loc_6EFBA5: ImpAdCallFPR4  = Month()
  loc_6EFBAA: FLdRfVar var_190
  loc_6EFBAD: ImpAdCallFPR4  = Now
  loc_6EFBB2: FLdRfVar var_190
  loc_6EFBB5: FLdRfVar var_1A0
  loc_6EFBB8: ImpAdCallFPR4  = Year()
  loc_6EFBBD: FLdRfVar var_1A0
  loc_6EFBC0: CI2Var
  loc_6EFBC1: FLdRfVar var_180
  loc_6EFBC4: CI2Var
  loc_6EFBC5: FLdRfVar var_160
  loc_6EFBC8: CI2Var
  loc_6EFBC9: FLdRfVar var_114
  loc_6EFBCC: CI2Var
  loc_6EFBCD: FLdRfVar var_F4
  loc_6EFBD0: CI2Var
  loc_6EFBD1: FLdRfVar var_E4
  loc_6EFBD4: CI2Var
  loc_6EFBD5: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6EFBDA: FStI2 var_21A
  loc_6EFBDD: FFreeAd var_138 = "": var_140 = ""
  loc_6EFBE6: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_170 = "": var_190 = "": var_160 = "": var_180 = ""
  loc_6EFBFB: FLdI2 var_21A
  loc_6EFBFE: LitI2_Byte &HFF
  loc_6EFC00: EqI2
  loc_6EFC01: BranchF loc_6EFC2F
  loc_6EFC04: LitVar_Missing var_114
  loc_6EFC07: LitVar_Missing var_F4
  loc_6EFC0A: LitVar_Missing var_E4
  loc_6EFC0D: LitI4 &H40
  loc_6EFC12: FLdPr Me
  loc_6EFC15: MemLdRfVar from_stack_1.strOtherDate
  loc_6EFC18: CVarRef
  loc_6EFC1D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EFC22: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EFC2B: ExitProcHresult
  loc_6EFC2C: Branch loc_6EFCC9
  loc_6EFC2F: FLdI2 var_21A
  loc_6EFC32: LitI2_Byte 0
  loc_6EFC34: EqI2
  loc_6EFC35: BranchF loc_6EFCC9
  loc_6EFC38: FLdPrThis
  loc_6EFC39: VCallAd Control_ID_ManualHora
  loc_6EFC3C: FStAdFunc var_138
  loc_6EFC3F: FLdPr var_138
  loc_6EFC42: LateIdLdVar var_E4 DispID_0 0
  loc_6EFC49: PopAd
  loc_6EFC4B: FLdRfVar var_F4
  loc_6EFC4E: ImpAdCallFPR4  = Time
  loc_6EFC53: LitI4 1
  loc_6EFC58: LitI4 1
  loc_6EFC5D: LitVarStr var_C4, "hh:mmm:ss"
  loc_6EFC62: FStVarCopyObj var_114
  loc_6EFC65: FLdRfVar var_114
  loc_6EFC68: FLdRfVar var_F4
  loc_6EFC6B: ImpAdCallI2 Format$(, )
  loc_6EFC70: FStStrNoPop var_148
  loc_6EFC73: FLdRfVar var_E4
  loc_6EFC76: CStrVarTmp
  loc_6EFC77: FStStrNoPop var_13C
  loc_6EFC7A: LitStr ":00"
  loc_6EFC7D: ConcatStr
  loc_6EFC7E: FStStrNoPop var_144
  loc_6EFC81: ImpAdCallI2 Proc_65_3_641944(, )
  loc_6EFC86: LitI2_Byte &HFF
  loc_6EFC88: EqI2
  loc_6EFC89: FFreeStr var_13C = "": var_144 = ""
  loc_6EFC92: FFree1Ad var_138
  loc_6EFC95: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EFC9E: BranchF loc_6EFCC9
  loc_6EFCA1: LitVar_Missing var_114
  loc_6EFCA4: LitVar_Missing var_F4
  loc_6EFCA7: LitVar_Missing var_E4
  loc_6EFCAA: LitI4 &H40
  loc_6EFCAF: FLdPr Me
  loc_6EFCB2: MemLdRfVar from_stack_1.strOtherTime
  loc_6EFCB5: CVarRef
  loc_6EFCBA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EFCBF: FFreeVar var_E4 = "": var_F4 = ""
  loc_6EFCC8: ExitProcHresult
  loc_6EFCC9: FLdPrThis
  loc_6EFCCA: VCallAd Control_ID_Calendar1
  loc_6EFCCD: FStAdFunc var_138
  loc_6EFCD0: FLdPr var_138
  loc_6EFCD3: LateIdLdVar var_E4 DispID_15 0
  loc_6EFCDA: PopAd
  loc_6EFCDC: FLdPrThis
  loc_6EFCDD: VCallAd Control_ID_Calendar1
  loc_6EFCE0: FStAdFunc var_140
  loc_6EFCE3: FLdPr var_140
  loc_6EFCE6: LateIdLdVar var_160 DispID_16 0
  loc_6EFCED: PopAd
  loc_6EFCEF: FLdPrThis
  loc_6EFCF0: VCallAd Control_ID_Calendar1
  loc_6EFCF3: FStAdFunc var_150
  loc_6EFCF6: FLdPr var_150
  loc_6EFCF9: LateIdLdVar var_1B0 DispID_17 0
  loc_6EFD00: PopAd
  loc_6EFD02: LitI4 1
  loc_6EFD07: LitI4 1
  loc_6EFD0C: LitVarStr var_D4, "0000"
  loc_6EFD11: FStVarCopyObj var_114
  loc_6EFD14: FLdRfVar var_114
  loc_6EFD17: FLdRfVar var_E4
  loc_6EFD1A: CI2Var
  loc_6EFD1B: CVarI2 var_F4
  loc_6EFD1E: FLdRfVar var_134
  loc_6EFD21: ImpAdCallFPR4  = Format(, )
  loc_6EFD26: FLdRfVar var_134
  loc_6EFD29: LitI4 1
  loc_6EFD2E: LitI4 1
  loc_6EFD33: LitVarStr var_124, "00"
  loc_6EFD38: FStVarCopyObj var_180
  loc_6EFD3B: FLdRfVar var_180
  loc_6EFD3E: FLdRfVar var_160
  loc_6EFD41: CI2Var
  loc_6EFD42: CVarI2 var_170
  loc_6EFD45: FLdRfVar var_190
  loc_6EFD48: ImpAdCallFPR4  = Format(, )
  loc_6EFD4D: FLdRfVar var_190
  loc_6EFD50: ConcatVar var_1A0
  loc_6EFD54: LitI4 1
  loc_6EFD59: LitI4 1
  loc_6EFD5E: LitVarStr var_1D8, "00"
  loc_6EFD63: FStVarCopyObj var_23C
  loc_6EFD66: FLdRfVar var_23C
  loc_6EFD69: FLdRfVar var_1B0
  loc_6EFD6C: CI2Var
  loc_6EFD6D: CVarI2 var_22C
  loc_6EFD70: FLdRfVar var_24C
  loc_6EFD73: ImpAdCallFPR4  = Format(, )
  loc_6EFD78: FLdRfVar var_24C
  loc_6EFD7B: ConcatVar var_25C
  loc_6EFD7F: CStrVarVal var_13C
  loc_6EFD83: FLdRfVar var_88
  loc_6EFD86: NewIfNullPr CPrice
  loc_6EFD89: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6EFD8E: FFree1Str var_13C
  loc_6EFD91: FFreeAd var_138 = "": var_140 = ""
  loc_6EFD9A: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_160 = "": var_170 = "": var_180 = "": var_134 = "": var_190 = "": var_1B0 = "": var_22C = "": var_23C = "": var_1A0 = "": var_24C = ""
  loc_6EFDB9: FLdRfVar var_13C
  loc_6EFDBC: FLdPrThis
  loc_6EFDBD: VCallAd Control_ID_Hora
  loc_6EFDC0: FStAdFunc var_138
  loc_6EFDC3: FLdPr var_138
  loc_6EFDC6:  = Me.Text
  loc_6EFDCB: LitI4 2
  loc_6EFDD0: FLdZeroAd var_13C
  loc_6EFDD3: CVarStr var_E4
  loc_6EFDD6: FLdRfVar var_F4
  loc_6EFDD9: ImpAdCallFPR4  = Left(, )
  loc_6EFDDE: FLdRfVar var_144
  loc_6EFDE1: FLdPrThis
  loc_6EFDE2: VCallAd Control_ID_Hora
  loc_6EFDE5: FStAdFunc var_140
  loc_6EFDE8: FLdPr var_140
  loc_6EFDEB:  = Me.Text
  loc_6EFDF0: LitI4 2
  loc_6EFDF5: FLdZeroAd var_144
  loc_6EFDF8: CVarStr var_160
  loc_6EFDFB: FLdRfVar var_170
  loc_6EFDFE: ImpAdCallFPR4  = Right(, )
  loc_6EFE03: LitI4 1
  loc_6EFE08: LitI4 1
  loc_6EFE0D: LitVarStr var_C4, "00"
  loc_6EFE12: FStVarCopyObj var_114
  loc_6EFE15: FLdRfVar var_114
  loc_6EFE18: FLdRfVar var_F4
  loc_6EFE1B: FLdRfVar var_134
  loc_6EFE1E: ImpAdCallFPR4  = Format(, )
  loc_6EFE23: FLdRfVar var_134
  loc_6EFE26: LitI4 1
  loc_6EFE2B: LitI4 1
  loc_6EFE30: LitVarStr var_D4, "00"
  loc_6EFE35: FStVarCopyObj var_180
  loc_6EFE38: FLdRfVar var_180
  loc_6EFE3B: FLdRfVar var_170
  loc_6EFE3E: FLdRfVar var_190
  loc_6EFE41: ImpAdCallFPR4  = Format(, )
  loc_6EFE46: FLdRfVar var_190
  loc_6EFE49: ConcatVar var_1A0
  loc_6EFE4D: CStrVarVal var_148
  loc_6EFE51: FLdRfVar var_88
  loc_6EFE54: NewIfNullPr CPrice
  loc_6EFE57:  = Forms
  loc_6EFE5C: FFree1Str var_148
  loc_6EFE5F: FFreeAd var_138 = ""
  loc_6EFE66: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_160 = "": var_170 = "": var_180 = "": var_134 = "": var_190 = ""
  loc_6EFE7B: LitI2_Byte 0
  loc_6EFE7D: FLdRfVar var_88
  loc_6EFE80: NewIfNullPr CPrice
  loc_6EFE88: FLdRfVar var_13C
  loc_6EFE8B: FLdRfVar var_88
  loc_6EFE8E: NewIfNullPr CPrice
  loc_6EFE91: Call 0.Method_arg_5C ()
  loc_6EFE96: FLdZeroAd var_13C
  loc_6EFE99: FStStr var_9C
  loc_6EFE9C: FLdRfVar var_1B2
  loc_6EFE9F: FLdRfVar var_90
  loc_6EFEA2: NewIfNullRf
  loc_6EFEA6: FLdRfVar var_8C
  loc_6EFEA9: NewIfNullPr CMsgPrice
  loc_6EFEB1: FLdRfVar var_1B2
  loc_6EFEB4: FLdRfVar var_90
  loc_6EFEB7: NewIfNullPr CResumePriceList
  loc_6EFEBF: FLdI2 var_1B2
  loc_6EFEC2: NotI4
  loc_6EFEC3: BranchF loc_6F0170
  loc_6EFEC6: LitI2_Byte 0
  loc_6EFEC8: FLdRfVar var_A8
  loc_6EFECB: FLdRfVar var_1B2
  loc_6EFECE: FLdRfVar var_90
  loc_6EFED1: NewIfNullPr CResumePriceList
  loc_6EFED4: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6EFED9: FLdI2 var_1B2
  loc_6EFEDC: LitI2_Byte 1
  loc_6EFEDE: SubI2
  loc_6EFEDF: ForI2 var_260
  loc_6EFEE5: FLdRfVar var_13C
  loc_6EFEE8: FLdI2 var_A8
  loc_6EFEEB: FLdRfVar var_90
  loc_6EFEEE: NewIfNullPr CResumePriceList
  loc_6EFEF6: FLdZeroAd var_13C
  loc_6EFEF9: FStStr var_B0
  loc_6EFEFC: FLdRfVar var_13C
  loc_6EFEFF: FLdI2 var_A8
  loc_6EFF02: FLdRfVar var_90
  loc_6EFF05: NewIfNullPr CResumePriceList
  loc_6EFF0D: ILdRf var_13C
  loc_6EFF10: FLdRfVar var_144
  loc_6EFF13: FLdI2 var_A8
  loc_6EFF16: FLdRfVar var_90
  loc_6EFF19: NewIfNullPr CResumePriceList
  loc_6EFF21: ILdRf var_144
  loc_6EFF24: ConcatStr
  loc_6EFF25: FStStr var_94
  loc_6EFF28: FFreeStr var_13C = ""
  loc_6EFF2F: ILdRf var_B0
  loc_6EFF32: ImpAdCallI2 Proc_98_0_5D7360()
  loc_6EFF37: BranchF loc_6F0041
  loc_6EFF3A: ILdRf var_9C
  loc_6EFF3D: ILdRf var_94
  loc_6EFF40: EqStr
  loc_6EFF42: BranchF loc_6F003E
  loc_6EFF45: LitI4 &HD
  loc_6EFF4A: ImpAdCallI2 Chr$()
  loc_6EFF4F: FStStr var_3E4
  loc_6EFF52: FLdRfVar var_148
  loc_6EFF55: LitVar_Missing var_1B0
  loc_6EFF58: LitVar_Missing var_1A0
  loc_6EFF5B: LitVar_Missing var_190
  loc_6EFF5E: LitVar_Missing var_180
  loc_6EFF61: LitVar_Missing var_170
  loc_6EFF64: LitVar_Missing var_160
  loc_6EFF67: LitVar_Missing var_134
  loc_6EFF6A: LitVar_Missing var_114
  loc_6EFF6D: LitVar_Missing var_F4
  loc_6EFF70: LitVar_Missing var_E4
  loc_6EFF73: LitStr "Elija otra fecha u hora por favor."
  loc_6EFF76: FStStrCopy var_144
  loc_6EFF79: FLdRfVar var_144
  loc_6EFF7C: LitI4 &HC
  loc_6EFF81: PopTmpLdAdStr var_1B8
  loc_6EFF84: LitI2_Byte &HC
  loc_6EFF86: PopTmpLdAd2 var_1B2
  loc_6EFF89: ImpAdLdRf MemVar_74C7D0
  loc_6EFF8C: NewIfNullPr clsMsg
  loc_6EFF8F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EFF94: FLdRfVar var_370
  loc_6EFF97: LitVar_Missing var_36C
  loc_6EFF9A: LitVar_Missing var_34C
  loc_6EFF9D: LitVar_Missing var_32C
  loc_6EFFA0: LitVar_Missing var_30C
  loc_6EFFA3: LitVar_Missing var_2EC
  loc_6EFFA6: LitVar_Missing var_2CC
  loc_6EFFA9: LitVar_Missing var_25C
  loc_6EFFAC: LitVar_Missing var_24C
  loc_6EFFAF: LitVar_Missing var_23C
  loc_6EFFB2: LitVar_Missing var_22C
  loc_6EFFB5: LitStr "Existe un cambio de precios programado por archivo para la misma hora."
  loc_6EFFB8: FLdZeroAd var_3E4
  loc_6EFFBB: FStStrNoPop var_13C
  loc_6EFFBE: ConcatStr
  loc_6EFFBF: FStStrNoPop var_14C
  loc_6EFFC2: ILdRf var_148
  loc_6EFFC5: ConcatStr
  loc_6EFFC6: PopTmpLdAdStr
  loc_6EFFCA: LitI4 &HB
  loc_6EFFCF: PopTmpLdAdStr var_268
  loc_6EFFD2: LitI2_Byte &HC
  loc_6EFFD4: PopTmpLdAd2 var_262
  loc_6EFFD7: ImpAdLdRf MemVar_74C7D0
  loc_6EFFDA: NewIfNullPr clsMsg
  loc_6EFFDD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EFFE2: LitVar_Missing var_3E0
  loc_6EFFE5: LitVar_Missing var_3C0
  loc_6EFFE8: LitVar_Missing var_3A0
  loc_6EFFEB: LitI4 &H30
  loc_6EFFF0: FLdZeroAd var_370
  loc_6EFFF3: CVarStr var_380
  loc_6EFFF6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EFFFB: FFreeStr var_13C = "": var_144 = "": var_14C = "": var_148 = "": var_26C = ""
  loc_6F000A: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_380 = "": var_3A0 = "": var_3C0 = ""
  loc_6F003D: ExitProcHresult
  loc_6F003E: Branch loc_6F0168
  loc_6F0041: ILdRf var_B0
  loc_6F0044: ImpAdCallI2 Proc_98_1_5D7300()
  loc_6F0049: BranchF loc_6F0168
  loc_6F004C: ILdRf var_9C
  loc_6F004F: ILdRf var_94
  loc_6F0052: EqStr
  loc_6F0054: BranchF loc_6F0168
  loc_6F0057: ImpAdLdI2 MemVar_74C7C0
  loc_6F005A: NotI4
  loc_6F005B: BranchF loc_6F0168
  loc_6F005E: LitVarI2 var_E4, 1
  loc_6F0063: LitI4 4
  loc_6F0068: ImpAdLdI4 MemVar_74BEAC
  loc_6F006B: ImpAdCallI2 Mid$(, , )
  loc_6F0070: FStStrNoPop var_13C
  loc_6F0073: LitStr "1"
  loc_6F0076: EqStr
  loc_6F0078: FFree1Str var_13C
  loc_6F007B: FFree1Var var_E4 = ""
  loc_6F007E: BranchF loc_6F00C6
  loc_6F0081: LitI4 &HD
  loc_6F0086: FLdRfVar var_E4
  loc_6F0089: ImpAdCallFPR4  = Chr()
  loc_6F008E: LitVar_Missing var_170
  loc_6F0091: LitVar_Missing var_160
  loc_6F0094: LitVar_Missing var_134
  loc_6F0097: LitI4 &H40
  loc_6F009C: LitVarStr var_C4, "Existe un cambio de precios programado por pantalla para la misma hora."
  loc_6F00A1: FLdRfVar var_E4
  loc_6F00A4: ConcatVar var_F4
  loc_6F00A8: LitVarStr var_D4, "Elija otra fecha u hora por favor."
  loc_6F00AD: ConcatVar var_114
  loc_6F00B1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F00B6: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_160 = ""
  loc_6F00C5: ExitProcHresult
  loc_6F00C6: LitI4 &HD
  loc_6F00CB: ImpAdCallI2 Chr$()
  loc_6F00D0: FStStr var_148
  loc_6F00D3: LitVar_Missing var_134
  loc_6F00D6: LitVar_Missing var_114
  loc_6F00D9: LitVar_Missing var_F4
  loc_6F00DC: LitI4 &H34
  loc_6F00E1: LitStr "Existe un cambio de precios programado por pantalla para la misma hora."
  loc_6F00E4: FLdZeroAd var_148
  loc_6F00E7: FStStrNoPop var_13C
  loc_6F00EA: ConcatStr
  loc_6F00EB: FStStrNoPop var_144
  loc_6F00EE: LitStr "¿Desea editar el cambio de precios programado?"
  loc_6F00F1: ConcatStr
  loc_6F00F2: CVarStr var_E4
  loc_6F00F5: ImpAdCallI2 MsgBox(, , , , )
  loc_6F00FA: LitI4 6
  loc_6F00FF: EqI4
  loc_6F0100: FFreeStr var_13C = "": var_144 = ""
  loc_6F0109: FFreeVar var_E4 = "": var_F4 = "": var_114 = ""
  loc_6F0114: BranchF loc_6F0167
  loc_6F0117: FLdRfVar var_1B2
  loc_6F011A: FLdI2 var_A8
  loc_6F011D: FLdRfVar var_90
  loc_6F0120: NewIfNullPr CResumePriceList
  loc_6F0123:  = Forms
  loc_6F0128: FLdI2 var_1B2
  loc_6F012B: ImpAdLdRf MemVar_74DD0C
  loc_6F012E: NewIfNullPr frmProgramacionPrecios
  loc_6F0131: Call frmProgramacionPrecios.changePriceIdPut(from_stack_1v)
  loc_6F0136: LitNothing
  loc_6F0138: CastAd
  loc_6F013B: FStAdFunc var_88
  loc_6F013E: LitNothing
  loc_6F0140: CastAd
  loc_6F0143: FStAdFunc var_8C
  loc_6F0146: LitNothing
  loc_6F0148: CastAd
  loc_6F014B: FStAdFunc var_90
  loc_6F014E: ILdRf Me
  loc_6F0151: FStAdNoPop
  loc_6F0155: ImpAdLdRf MemVar_7520D4
  loc_6F0158: NewIfNullPr Global
  loc_6F015B: Global.Unload from_stack_1
  loc_6F0160: FFree1Ad var_138
  loc_6F0163: ExitProcHresult
  loc_6F0164: Branch loc_6F0168
  loc_6F0167: ExitProcHresult
  loc_6F0168: FLdRfVar var_A8
  loc_6F016B: NextI2 var_260, loc_6EFEE5
  loc_6F0170: LitI2_Byte 1
  loc_6F0172: FLdRfVar var_A8
  loc_6F0175: LitStr "5"
  loc_6F0178: CI2Str
  loc_6F017A: ForI2 var_3E8
  loc_6F0180: LitI2_Byte 1
  loc_6F0182: FLdRfVar var_AA
  loc_6F0185: LitStr "10"
  loc_6F0188: CI2Str
  loc_6F018A: ForI2 var_3EC
  loc_6F0190: FLdRfVar var_E4
  loc_6F0193: FLdI2 var_A8
  loc_6F0196: CI4UI1
  loc_6F0197: FLdI2 var_AA
  loc_6F019A: CI4UI1
  loc_6F019B: ImpAdLdRf MemVar_74C074
  loc_6F019E: AryLdPr
  loc_6F01A1: MemLdR8 global_0
  loc_6F01A4: CR8Cy
  loc_6F01A5: PopFPR8
  loc_6F01A6: FLdI2 var_AA
  loc_6F01A9: FLdI2 var_A8
  loc_6F01AC: FLdRfVar var_88
  loc_6F01AF: NewIfNullPr CPrice
  loc_6F01B7: FFree1Var var_E4 = ""
  loc_6F01BA: FLdRfVar var_AA
  loc_6F01BD: NextI2 var_3EC, loc_6F0190
  loc_6F01C2: FLdRfVar var_A8
  loc_6F01C5: NextI2 var_3E8, loc_6F0180
  loc_6F01CA: LitI2_Byte 1
  loc_6F01CC: FLdRfVar var_A8
  loc_6F01CF: LitStr "10"
  loc_6F01D2: CI2Str
  loc_6F01D4: ForI2 var_3F0
  loc_6F01DA: FLdRfVar var_E4
  loc_6F01DD: FLdI2 var_A8
  loc_6F01E0: CI4UI1
  loc_6F01E1: ImpAdLdRf MemVar_74C094
  loc_6F01E4: Ary1LdCy
  loc_6F01E5: CI4Cy
  loc_6F01E6: FLdI2 var_A8
  loc_6F01E9: FLdRfVar var_88
  loc_6F01EC: NewIfNullPr CPrice
  loc_6F01EF: Set from_stack_2 = CPrice(from_stack_1)
  loc_6F01F4: FFree1Var var_E4 = ""
  loc_6F01F7: FLdRfVar var_A8
  loc_6F01FA: NextI2 var_3F0, loc_6F01DA
  loc_6F01FF: ImpAdCallI2 Proc_98_3_5D53A4()
  loc_6F0204: FStStrNoPop var_13C
  loc_6F0207: FLdRfVar var_88
  loc_6F020A: NewIfNullPr CPrice
  loc_6F020D:  = CPrice.Name
  loc_6F0212: FFree1Str var_13C
  loc_6F0215: FLdRfVar var_E4
  loc_6F0218: FLdRfVar var_88
  loc_6F021B: NewIfNullPr CPrice
  loc_6F021E:  = CPrice.BackColor
  loc_6F0223: FFree1Var var_E4 = ""
  loc_6F0226: ImpAdLdI2 MemVar_74BEA8
  loc_6F0229: BranchF loc_6F0308
  loc_6F022C: LitI2_Byte &HFF
  loc_6F022E: FStI2 var_B2
  loc_6F0231: LitI2_Byte 0
  loc_6F0233: FLdRfVar var_A8
  loc_6F0236: FLdRfVar var_1B2
  loc_6F0239: FLdRfVar var_90
  loc_6F023C: NewIfNullPr CResumePriceList
  loc_6F023F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6F0244: FLdI2 var_1B2
  loc_6F0247: LitI2_Byte 1
  loc_6F0249: SubI2
  loc_6F024A: ForI2 var_3F4
  loc_6F0250: FLdPr Me
  loc_6F0253: MemLdStr strFecha
  loc_6F0256: FLdRfVar var_13C
  loc_6F0259: FLdI2 var_A8
  loc_6F025C: FLdRfVar var_90
  loc_6F025F: NewIfNullPr CResumePriceList
  loc_6F0267: ILdRf var_13C
  loc_6F026A: FLdRfVar var_144
  loc_6F026D: FLdI2 var_A8
  loc_6F0270: FLdRfVar var_90
  loc_6F0273: NewIfNullPr CResumePriceList
  loc_6F027B: ILdRf var_144
  loc_6F027E: ConcatStr
  loc_6F027F: FStStrNoPop var_148
  loc_6F0282: EqStr
  loc_6F0284: FFreeStr var_13C = "": var_144 = ""
  loc_6F028D: BranchF loc_6F02AA
  loc_6F0290: FLdRfVar var_1B2
  loc_6F0293: FLdI2 var_A8
  loc_6F0296: FLdRfVar var_90
  loc_6F0299: NewIfNullPr CResumePriceList
  loc_6F029C:  = Forms
  loc_6F02A1: FLdI2 var_1B2
  loc_6F02A4: FStI2 var_B2
  loc_6F02A7: Branch loc_6F02B2
  loc_6F02AA: FLdRfVar var_A8
  loc_6F02AD: NextI2 var_3F4, loc_6F0250
  loc_6F02B2: FLdI2 var_B2
  loc_6F02B5: LitI2_Byte 0
  loc_6F02B7: GeI2
  loc_6F02B8: BranchF loc_6F0303
  loc_6F02BB: FLdRfVar var_1B2
  loc_6F02BE: FLdI2 var_A8
  loc_6F02C1: FLdRfVar var_90
  loc_6F02C4: NewIfNullPr CResumePriceList
  loc_6F02C7:  = Forms
  loc_6F02CC: FLdRfVar var_13C
  loc_6F02CF: FLdI2 var_A8
  loc_6F02D2: FLdRfVar var_90
  loc_6F02D5: NewIfNullPr CResumePriceList
  loc_6F02DD: FLdRfVar var_E4
  loc_6F02E0: ILdRf var_13C
  loc_6F02E3: FLdI2 var_1B2
  loc_6F02E6: CStrUI1
  loc_6F02E8: FStStrNoPop var_144
  loc_6F02EB: FLdI2 var_B2
  loc_6F02EE: FLdRfVar var_8C
  loc_6F02F1: NewIfNullPr CMsgPrice
  loc_6F02F4:  = Forms
  loc_6F02F9: FFreeStr var_144 = ""
  loc_6F0300: FFree1Var var_E4 = ""
  loc_6F0303: LitI2_Byte 0
  loc_6F0305: ImpAdStI2 MemVar_74BEA8
  loc_6F0308: FLdRfVar var_1B2
  loc_6F030B: FLdRfVar var_88
  loc_6F030E: NewIfNullRf
  loc_6F0312: FLdRfVar var_8C
  loc_6F0315: NewIfNullPr CMsgPrice
  loc_6F0318: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6F031D: LitNothing
  loc_6F031F: CastAd
  loc_6F0322: FStAdFunc var_88
  loc_6F0325: LitNothing
  loc_6F0327: CastAd
  loc_6F032A: FStAdFunc var_8C
  loc_6F032D: LitNothing
  loc_6F032F: CastAd
  loc_6F0332: FStAdFunc var_90
  loc_6F0335: ILdRf Me
  loc_6F0338: FStAdNoPop
  loc_6F033C: ImpAdLdRf MemVar_7520D4
  loc_6F033F: NewIfNullPr Global
  loc_6F0342: Global.Unload from_stack_1
  loc_6F0347: FFree1Ad var_138
  loc_6F034A: ExitProcHresult
End Sub

Private Sub Calendar1_UnknownEvent_8 '620424
  'Data Table: 42E6E8
  loc_620314: FLdPrThis
  loc_620315: VCallAd Control_ID_Calendar1
  loc_620318: FStAdFunc var_88
  loc_62031B: FLdPr var_88
  loc_62031E: LateIdLdVar var_98 DispID_17 0
  loc_620325: PopAd
  loc_620327: FLdPrThis
  loc_620328: VCallAd Control_ID_Calendar1
  loc_62032B: FStAdFunc var_10C
  loc_62032E: FLdPr var_10C
  loc_620331: LateIdLdVar var_11C DispID_16 0
  loc_620338: PopAd
  loc_62033A: FLdPrThis
  loc_62033B: VCallAd Control_ID_Calendar1
  loc_62033E: FStAdFunc var_1A0
  loc_620341: FLdPr var_1A0
  loc_620344: LateIdLdVar var_1B0 DispID_15 0
  loc_62034B: PopAd
  loc_62034D: LitI4 1
  loc_620352: LitI4 1
  loc_620357: LitVarStr var_C8, "00"
  loc_62035C: FStVarCopyObj var_D8
  loc_62035F: FLdRfVar var_D8
  loc_620362: FLdRfVar var_98
  loc_620365: CI2Var
  loc_620366: CVarI2 var_B8
  loc_620369: FLdRfVar var_E8
  loc_62036C: ImpAdCallFPR4  = Format(, )
  loc_620371: FLdRfVar var_E8
  loc_620374: LitVarStr var_F8, "/"
  loc_620379: ConcatVar var_108
  loc_62037D: LitI4 1
  loc_620382: LitI4 1
  loc_620387: LitVarStr var_14C, "00"
  loc_62038C: FStVarCopyObj var_15C
  loc_62038F: FLdRfVar var_15C
  loc_620392: FLdRfVar var_11C
  loc_620395: CI2Var
  loc_620396: CVarI2 var_13C
  loc_620399: FLdRfVar var_16C
  loc_62039C: ImpAdCallFPR4  = Format(, )
  loc_6203A1: FLdRfVar var_16C
  loc_6203A4: ConcatVar var_17C
  loc_6203A8: LitVarStr var_18C, "/"
  loc_6203AD: ConcatVar var_19C
  loc_6203B1: LitI4 1
  loc_6203B6: LitI4 1
  loc_6203BB: LitVarStr var_1E0, "00"
  loc_6203C0: FStVarCopyObj var_1F0
  loc_6203C3: FLdRfVar var_1F0
  loc_6203C6: FLdRfVar var_1B0
  loc_6203C9: CI2Var
  loc_6203CA: CVarI2 var_1D0
  loc_6203CD: FLdRfVar var_200
  loc_6203D0: ImpAdCallFPR4  = Format(, )
  loc_6203D5: FLdRfVar var_200
  loc_6203D8: ConcatVar var_210
  loc_6203DC: CStrVarTmp
  loc_6203DD: CVarStr var_220
  loc_6203E0: PopAdLdVar
  loc_6203E1: FLdPrThis
  loc_6203E2: VCallAd Control_ID_ManualFecha
  loc_6203E5: FStAdFunc var_224
  loc_6203E8: FLdPr var_224
  loc_6203EB: LateIdSt
  loc_6203F0: FFreeAd var_88 = "": var_10C = "": var_1A0 = ""
  loc_6203FB: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_11C = "": var_13C = "": var_15C = "": var_108 = "": var_16C = "": var_17C = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_19C = "": var_200 = "": var_210 = ""
  loc_620420: ExitProcHresult
End Sub

Private Sub ManualHora_UnknownEvent_0 '5D8708
  'Data Table: 42E6E8
  loc_5D86E0: FLdPrThis
  loc_5D86E1: VCallAd Control_ID_ManualHora
  loc_5D86E4: FStAdFunc var_88
  loc_5D86E7: FLdPr var_88
  loc_5D86EA: LateIdLdVar var_98 DispID_22 0
  loc_5D86F1: CStrVarTmp
  loc_5D86F2: CVarStr var_A8
  loc_5D86F5: FLdPr Me
  loc_5D86F8: MemStVar
  loc_5D86FC: FFree1Ad var_88
  loc_5D86FF: FFreeVar var_98 = ""
  loc_5D8706: ExitProcHresult
End Sub

Private Sub ManualHora_UnknownEvent_1 '643DB4
  'Data Table: 42E6E8
  loc_643B78: ImpAdCallFPR4 DoEvents()
  loc_643B7D: FLdRfVar var_1D4
  loc_643B80: LitVar_Missing var_1D0
  loc_643B83: LitVar_Missing var_1B0
  loc_643B86: LitVar_Missing var_190
  loc_643B89: LitVar_Missing var_170
  loc_643B8C: LitVar_Missing var_150
  loc_643B8F: LitVar_Missing var_130
  loc_643B92: LitVar_Missing var_110
  loc_643B95: LitVar_Missing var_F0
  loc_643B98: LitVar_Missing var_D0
  loc_643B9B: LitVar_Missing var_B0
  loc_643B9E: LitStr "Debe ingresar una hora válida. Verifique por favor."
  loc_643BA1: FStStrCopy var_90
  loc_643BA4: FLdRfVar var_90
  loc_643BA7: LitI4 7
  loc_643BAC: PopTmpLdAdStr var_8C
  loc_643BAF: LitI2_Byte &HC
  loc_643BB1: PopTmpLdAd2 var_86
  loc_643BB4: ImpAdLdRf MemVar_74C7D0
  loc_643BB7: NewIfNullPr clsMsg
  loc_643BBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_643BBF: ILdRf var_1D4
  loc_643BC2: FLdPr Me
  loc_643BC5: MemStStrCopy
  loc_643BC9: FFreeStr var_90 = ""
  loc_643BD0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_643BE7: FLdPr Me
  loc_643BEA: MemLdRfVar from_stack_1.global_84
  loc_643BED: FLdPrThis
  loc_643BEE: VCallAd Control_ID_ManualHora
  loc_643BF1: FStAdFunc var_1D8
  loc_643BF4: FLdPr var_1D8
  loc_643BF7: LateIdLdVar var_B0 DispID_22 0
  loc_643BFE: CStrVarTmp
  loc_643BFF: CVarStr var_D0
  loc_643C02: HardType
  loc_643C03: NeVarBool
  loc_643C05: FFree1Ad var_1D8
  loc_643C08: FFreeVar var_B0 = ""
  loc_643C0F: BranchF loc_643DB0
  loc_643C12: FLdPrThis
  loc_643C13: VCallAd Control_ID_ManualHora
  loc_643C16: FStAdFunc var_1D8
  loc_643C19: FLdPr var_1D8
  loc_643C1C: LateIdLdVar var_B0 DispID_22 0
  loc_643C23: CStrVarTmp
  loc_643C24: FStStrNoPop var_90
  loc_643C27: LitStr ":00"
  loc_643C2A: ConcatStr
  loc_643C2B: CVarStr var_D0
  loc_643C2E: ImpAdCallI2 Proc_53_13_638184()
  loc_643C33: FFree1Str var_90
  loc_643C36: FFree1Ad var_1D8
  loc_643C39: FFreeVar var_B0 = ""
  loc_643C40: BranchF loc_643C77
  loc_643C43: FLdPrThis
  loc_643C44: VCallAd Control_ID_ManualHora
  loc_643C47: FStAdFunc var_1D8
  loc_643C4A: FLdPr var_1D8
  loc_643C4D: LateIdLdVar var_B0 DispID_22 0
  loc_643C54: CStrVarTmp
  loc_643C55: FStStrNoPop var_90
  loc_643C58: FLdPrThis
  loc_643C59: VCallAd Control_ID_Hora
  loc_643C5C: FStAdFunc var_1DC
  loc_643C5F: FLdPr var_1DC
  loc_643C62: Me.Text = from_stack_1
  loc_643C67: FFree1Str var_90
  loc_643C6A: FFreeAd var_1D8 = ""
  loc_643C71: FFree1Var var_B0 = ""
  loc_643C74: Branch loc_643DB0
  loc_643C77: LitVar_Missing var_F0
  loc_643C7A: LitVar_Missing var_D0
  loc_643C7D: LitVar_Missing var_B0
  loc_643C80: LitI4 &H40
  loc_643C85: FLdPr Me
  loc_643C88: MemLdRfVar from_stack_1.strValidTime
  loc_643C8B: CVarRef
  loc_643C90: ImpAdCallFPR4 MsgBox(, , , , )
  loc_643C95: FFreeVar var_B0 = "": var_D0 = ""
  loc_643C9E: FLdPr Me
  loc_643CA1: MemLdRfVar from_stack_1.global_84
  loc_643CA4: CStrVar
  loc_643CA6: CVarStr var_B0
  loc_643CA9: PopAdLdVar
  loc_643CAA: FLdPrThis
  loc_643CAB: VCallAd Control_ID_ManualHora
  loc_643CAE: FStAdFunc var_1D8
  loc_643CB1: FLdPr var_1D8
  loc_643CB4: LateIdSt
  loc_643CB9: FFree1Ad var_1D8
  loc_643CBC: FFree1Var var_B0 = ""
  loc_643CBF: FLdPrThis
  loc_643CC0: VCallAd Control_ID_ManualFecha
  loc_643CC3: FStAdFunc var_1D8
  loc_643CC6: FLdPr var_1D8
  loc_643CC9: LateIdLdVar var_B0 DispID_22 0
  loc_643CD0: PopAd
  loc_643CD2: LitI4 2
  loc_643CD7: FLdRfVar var_B0
  loc_643CDA: CStrVarTmp
  loc_643CDB: CVarStr var_D0
  loc_643CDE: FLdRfVar var_F0
  loc_643CE1: ImpAdCallFPR4  = Left(, )
  loc_643CE6: FLdRfVar var_F0
  loc_643CE9: CI2Var
  loc_643CEA: CVarI2 var_A0
  loc_643CED: PopAdLdVar
  loc_643CEE: FLdPrThis
  loc_643CEF: VCallAd Control_ID_Calendar1
  loc_643CF2: FStAdFunc var_1DC
  loc_643CF5: FLdPr var_1DC
  loc_643CF8: LateIdSt
  loc_643CFD: FFreeAd var_1D8 = ""
  loc_643D04: FFreeVar var_B0 = "": var_D0 = ""
  loc_643D0D: FLdPrThis
  loc_643D0E: VCallAd Control_ID_ManualFecha
  loc_643D11: FStAdFunc var_1D8
  loc_643D14: FLdPr var_1D8
  loc_643D17: LateIdLdVar var_B0 DispID_22 0
  loc_643D1E: PopAd
  loc_643D20: LitVarI2 var_F0, 2
  loc_643D25: LitI4 4
  loc_643D2A: FLdRfVar var_B0
  loc_643D2D: CStrVarTmp
  loc_643D2E: CVarStr var_D0
  loc_643D31: FLdRfVar var_110
  loc_643D34: ImpAdCallFPR4  = Mid(, , )
  loc_643D39: FLdRfVar var_110
  loc_643D3C: CI2Var
  loc_643D3D: CVarI2 var_C0
  loc_643D40: PopAdLdVar
  loc_643D41: FLdPrThis
  loc_643D42: VCallAd Control_ID_Calendar1
  loc_643D45: FStAdFunc var_1DC
  loc_643D48: FLdPr var_1DC
  loc_643D4B: LateIdSt
  loc_643D50: FFreeAd var_1D8 = ""
  loc_643D57: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_643D62: FLdPrThis
  loc_643D63: VCallAd Control_ID_ManualFecha
  loc_643D66: FStAdFunc var_1D8
  loc_643D69: FLdPr var_1D8
  loc_643D6C: LateIdLdVar var_B0 DispID_22 0
  loc_643D73: PopAd
  loc_643D75: LitI4 4
  loc_643D7A: FLdRfVar var_B0
  loc_643D7D: CStrVarTmp
  loc_643D7E: CVarStr var_D0
  loc_643D81: FLdRfVar var_F0
  loc_643D84: ImpAdCallFPR4  = Right(, )
  loc_643D89: FLdRfVar var_F0
  loc_643D8C: CI2Var
  loc_643D8D: CVarI2 var_A0
  loc_643D90: PopAdLdVar
  loc_643D91: FLdPrThis
  loc_643D92: VCallAd Control_ID_Calendar1
  loc_643D95: FStAdFunc var_1DC
  loc_643D98: FLdPr var_1DC
  loc_643D9B: LateIdSt
  loc_643DA0: FFreeAd var_1D8 = ""
  loc_643DA7: FFreeVar var_B0 = "": var_D0 = ""
  loc_643DB0: ExitProcHresult
End Sub

Private Function SpinButton1_UnknownEvent_8(arg_C) '63A998
  'Data Table: 42E6E8
  loc_63A794: FLdRfVar var_A0
  loc_63A797: FLdPrThis
  loc_63A798: VCallAd Control_ID_Hora
  loc_63A79B: FStAdFunc var_9C
  loc_63A79E: FLdPr var_9C
  loc_63A7A1:  = Me.Text
  loc_63A7A6: LitVarI2 var_D0, 2
  loc_63A7AB: LitI4 1
  loc_63A7B0: FLdZeroAd var_A0
  loc_63A7B3: CVarStr var_B0
  loc_63A7B6: FLdRfVar var_E0
  loc_63A7B9: ImpAdCallFPR4  = Mid(, , )
  loc_63A7BE: FLdRfVar var_E0
  loc_63A7C1: FnCByteVar
  loc_63A7C3: CVarUI1
  loc_63A7C7: FStVar var_94
  loc_63A7CB: FFree1Ad var_9C
  loc_63A7CE: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_63A7D9: FLdRfVar var_A0
  loc_63A7DC: FLdPrThis
  loc_63A7DD: VCallAd Control_ID_Hora
  loc_63A7E0: FStAdFunc var_9C
  loc_63A7E3: FLdPr var_9C
  loc_63A7E6:  = Me.Text
  loc_63A7EB: LitVarI2 var_D0, 2
  loc_63A7F0: LitI4 4
  loc_63A7F5: FLdZeroAd var_A0
  loc_63A7F8: CVarStr var_B0
  loc_63A7FB: FLdRfVar var_E0
  loc_63A7FE: ImpAdCallFPR4  = Mid(, , )
  loc_63A803: FLdRfVar var_E0
  loc_63A806: FnCByteVar
  loc_63A808: FStUI1 var_96
  loc_63A80C: FFree1Ad var_9C
  loc_63A80F: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_63A81A: ILdI2 arg_C
  loc_63A81D: LitI2_Byte 0
  loc_63A81F: EqI2
  loc_63A820: BranchF loc_63A8DD
  loc_63A823: FLdRfVar var_94
  loc_63A826: LitVarI2 var_C0, 0
  loc_63A82B: HardType
  loc_63A82C: GtVarBool
  loc_63A82E: BranchF loc_63A844
  loc_63A831: FLdRfVar var_94
  loc_63A834: LitVarI2 var_C0, 1
  loc_63A839: SubVar var_B0
  loc_63A83D: FStVar var_94
  loc_63A841: Branch loc_63A84D
  loc_63A844: LitVarI2 var_C0, 23
  loc_63A849: FStVar var_94
  loc_63A84D: FLdRfVar var_94
  loc_63A850: FLdRfVar var_B0
  loc_63A853: ImpAdCallFPR4  = Str()
  loc_63A858: FLdRfVar var_A0
  loc_63A85B: FLdPrThis
  loc_63A85C: VCallAd Control_ID_Hora
  loc_63A85F: FStAdFunc var_9C
  loc_63A862: FLdPr var_9C
  loc_63A865:  = Me.Text
  loc_63A86A: LitI4 1
  loc_63A86F: LitI4 1
  loc_63A874: LitVarStr var_C0, "00"
  loc_63A879: FStVarCopyObj var_D0
  loc_63A87C: FLdRfVar var_D0
  loc_63A87F: FLdRfVar var_B0
  loc_63A882: FLdRfVar var_E0
  loc_63A885: ImpAdCallFPR4  = Format(, )
  loc_63A88A: FLdRfVar var_E0
  loc_63A88D: LitVarI2 var_110, 3
  loc_63A892: LitI4 3
  loc_63A897: FLdZeroAd var_A0
  loc_63A89A: CVarStr var_100
  loc_63A89D: FLdRfVar var_120
  loc_63A8A0: ImpAdCallFPR4  = Mid(, , )
  loc_63A8A5: FLdRfVar var_120
  loc_63A8A8: ConcatVar var_130
  loc_63A8AC: CStrVarVal var_134
  loc_63A8B0: FLdPrThis
  loc_63A8B1: VCallAd Control_ID_Hora
  loc_63A8B4: FStAdFunc var_138
  loc_63A8B7: FLdPr var_138
  loc_63A8BA: Me.Text = from_stack_1
  loc_63A8BF: FFree1Str var_134
  loc_63A8C2: FFreeAd var_9C = ""
  loc_63A8C9: FFreeVar var_B0 = "": var_D0 = "": var_100 = "": var_110 = "": var_E0 = "": var_120 = ""
  loc_63A8DA: Branch loc_63A995
  loc_63A8DD: FLdUI1
  loc_63A8E1: CI2UI1
  loc_63A8E3: LitI2_Byte 0
  loc_63A8E5: GtI2
  loc_63A8E6: BranchF loc_63A8FB
  loc_63A8E9: FLdUI1
  loc_63A8ED: CI2UI1
  loc_63A8EF: LitI2_Byte 1
  loc_63A8F1: SubI2
  loc_63A8F2: CUI1I2
  loc_63A8F4: FStUI1 var_96
  loc_63A8F8: Branch loc_63A903
  loc_63A8FB: LitI2_Byte &H3B
  loc_63A8FD: CUI1I2
  loc_63A8FF: FStUI1 var_96
  loc_63A903: FLdRfVar var_A0
  loc_63A906: FLdPrThis
  loc_63A907: VCallAd Control_ID_Hora
  loc_63A90A: FStAdFunc var_9C
  loc_63A90D: FLdPr var_9C
  loc_63A910:  = Me.Text
  loc_63A915: FLdRfVar var_96
  loc_63A918: CVarRef
  loc_63A91D: FLdRfVar var_100
  loc_63A920: ImpAdCallFPR4  = Str()
  loc_63A925: LitVarI2 var_D0, 3
  loc_63A92A: LitI4 1
  loc_63A92F: FLdZeroAd var_A0
  loc_63A932: CVarStr var_B0
  loc_63A935: FLdRfVar var_E0
  loc_63A938: ImpAdCallFPR4  = Mid(, , )
  loc_63A93D: FLdRfVar var_E0
  loc_63A940: LitI4 1
  loc_63A945: LitI4 1
  loc_63A94A: LitVarStr var_148, "00"
  loc_63A94F: FStVarCopyObj var_110
  loc_63A952: FLdRfVar var_110
  loc_63A955: FLdRfVar var_100
  loc_63A958: FLdRfVar var_120
  loc_63A95B: ImpAdCallFPR4  = Format(, )
  loc_63A960: FLdRfVar var_120
  loc_63A963: ConcatVar var_130
  loc_63A967: CStrVarVal var_134
  loc_63A96B: FLdPrThis
  loc_63A96C: VCallAd Control_ID_Hora
  loc_63A96F: FStAdFunc var_138
  loc_63A972: FLdPr var_138
  loc_63A975: Me.Text = from_stack_1
  loc_63A97A: FFree1Str var_134
  loc_63A97D: FFreeAd var_9C = ""
  loc_63A984: FFreeVar var_B0 = "": var_D0 = "": var_100 = "": var_110 = "": var_E0 = "": var_120 = ""
  loc_63A995: ExitProcHresult
End Function

Private Sub SpinButton1_SpinDown(arg_C) '63BA54
  'Data Table: 42E6E8
  loc_63B850: FLdRfVar var_A0
  loc_63B853: FLdPrThis
  loc_63B854: VCallAd Control_ID_Hora
  loc_63B857: FStAdFunc var_9C
  loc_63B85A: FLdPr var_9C
  loc_63B85D:  = Me.Text
  loc_63B862: LitVarI2 var_D0, 2
  loc_63B867: LitI4 1
  loc_63B86C: FLdZeroAd var_A0
  loc_63B86F: CVarStr var_B0
  loc_63B872: FLdRfVar var_E0
  loc_63B875: ImpAdCallFPR4  = Mid(, , )
  loc_63B87A: FLdRfVar var_E0
  loc_63B87D: FnCByteVar
  loc_63B87F: CVarUI1
  loc_63B883: FStVar var_94
  loc_63B887: FFree1Ad var_9C
  loc_63B88A: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_63B895: FLdRfVar var_A0
  loc_63B898: FLdPrThis
  loc_63B899: VCallAd Control_ID_Hora
  loc_63B89C: FStAdFunc var_9C
  loc_63B89F: FLdPr var_9C
  loc_63B8A2:  = Me.Text
  loc_63B8A7: LitVarI2 var_D0, 2
  loc_63B8AC: LitI4 4
  loc_63B8B1: FLdZeroAd var_A0
  loc_63B8B4: CVarStr var_B0
  loc_63B8B7: FLdRfVar var_E0
  loc_63B8BA: ImpAdCallFPR4  = Mid(, , )
  loc_63B8BF: FLdRfVar var_E0
  loc_63B8C2: FnCByteVar
  loc_63B8C4: FStUI1 var_96
  loc_63B8C8: FFree1Ad var_9C
  loc_63B8CB: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_63B8D6: ILdI2 arg_C
  loc_63B8D9: LitI2_Byte 0
  loc_63B8DB: EqI2
  loc_63B8DC: BranchF loc_63B999
  loc_63B8DF: FLdRfVar var_94
  loc_63B8E2: LitVarI2 var_C0, 23
  loc_63B8E7: HardType
  loc_63B8E8: LtVarBool
  loc_63B8EA: BranchF loc_63B900
  loc_63B8ED: FLdRfVar var_94
  loc_63B8F0: LitVarI2 var_C0, 1
  loc_63B8F5: AddVar var_B0
  loc_63B8F9: FStVar var_94
  loc_63B8FD: Branch loc_63B909
  loc_63B900: LitVarI2 var_C0, 0
  loc_63B905: FStVar var_94
  loc_63B909: FLdRfVar var_94
  loc_63B90C: FLdRfVar var_B0
  loc_63B90F: ImpAdCallFPR4  = Str()
  loc_63B914: FLdRfVar var_A0
  loc_63B917: FLdPrThis
  loc_63B918: VCallAd Control_ID_Hora
  loc_63B91B: FStAdFunc var_9C
  loc_63B91E: FLdPr var_9C
  loc_63B921:  = Me.Text
  loc_63B926: LitI4 1
  loc_63B92B: LitI4 1
  loc_63B930: LitVarStr var_C0, "00"
  loc_63B935: FStVarCopyObj var_D0
  loc_63B938: FLdRfVar var_D0
  loc_63B93B: FLdRfVar var_B0
  loc_63B93E: FLdRfVar var_E0
  loc_63B941: ImpAdCallFPR4  = Format(, )
  loc_63B946: FLdRfVar var_E0
  loc_63B949: LitVarI2 var_110, 3
  loc_63B94E: LitI4 3
  loc_63B953: FLdZeroAd var_A0
  loc_63B956: CVarStr var_100
  loc_63B959: FLdRfVar var_120
  loc_63B95C: ImpAdCallFPR4  = Mid(, , )
  loc_63B961: FLdRfVar var_120
  loc_63B964: ConcatVar var_130
  loc_63B968: CStrVarVal var_134
  loc_63B96C: FLdPrThis
  loc_63B96D: VCallAd Control_ID_Hora
  loc_63B970: FStAdFunc var_138
  loc_63B973: FLdPr var_138
  loc_63B976: Me.Text = from_stack_1
  loc_63B97B: FFree1Str var_134
  loc_63B97E: FFreeAd var_9C = ""
  loc_63B985: FFreeVar var_B0 = "": var_D0 = "": var_100 = "": var_110 = "": var_E0 = "": var_120 = ""
  loc_63B996: Branch loc_63BA51
  loc_63B999: FLdUI1
  loc_63B99D: CI2UI1
  loc_63B99F: LitI2_Byte &H3B
  loc_63B9A1: LtI2
  loc_63B9A2: BranchF loc_63B9B7
  loc_63B9A5: FLdUI1
  loc_63B9A9: CI2UI1
  loc_63B9AB: LitI2_Byte 1
  loc_63B9AD: AddI2
  loc_63B9AE: CUI1I2
  loc_63B9B0: FStUI1 var_96
  loc_63B9B4: Branch loc_63B9BF
  loc_63B9B7: LitI2_Byte 0
  loc_63B9B9: CUI1I2
  loc_63B9BB: FStUI1 var_96
  loc_63B9BF: FLdRfVar var_A0
  loc_63B9C2: FLdPrThis
  loc_63B9C3: VCallAd Control_ID_Hora
  loc_63B9C6: FStAdFunc var_9C
  loc_63B9C9: FLdPr var_9C
  loc_63B9CC:  = Me.Text
  loc_63B9D1: FLdRfVar var_96
  loc_63B9D4: CVarRef
  loc_63B9D9: FLdRfVar var_100
  loc_63B9DC: ImpAdCallFPR4  = Str()
  loc_63B9E1: LitVarI2 var_D0, 3
  loc_63B9E6: LitI4 1
  loc_63B9EB: FLdZeroAd var_A0
  loc_63B9EE: CVarStr var_B0
  loc_63B9F1: FLdRfVar var_E0
  loc_63B9F4: ImpAdCallFPR4  = Mid(, , )
  loc_63B9F9: FLdRfVar var_E0
  loc_63B9FC: LitI4 1
  loc_63BA01: LitI4 1
  loc_63BA06: LitVarStr var_148, "00"
  loc_63BA0B: FStVarCopyObj var_110
  loc_63BA0E: FLdRfVar var_110
  loc_63BA11: FLdRfVar var_100
  loc_63BA14: FLdRfVar var_120
  loc_63BA17: ImpAdCallFPR4  = Format(, )
  loc_63BA1C: FLdRfVar var_120
  loc_63BA1F: ConcatVar var_130
  loc_63BA23: CStrVarVal var_134
  loc_63BA27: FLdPrThis
  loc_63BA28: VCallAd Control_ID_Hora
  loc_63BA2B: FStAdFunc var_138
  loc_63BA2E: FLdPr var_138
  loc_63BA31: Me.Text = from_stack_1
  loc_63BA36: FFree1Str var_134
  loc_63BA39: FFreeAd var_9C = ""
  loc_63BA40: FFreeVar var_B0 = "": var_D0 = "": var_100 = "": var_110 = "": var_E0 = "": var_120 = ""
  loc_63BA51: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5DCE10
  'Data Table: 42E6E8
  loc_5DCDD0: FLdPrThis
  loc_5DCDD1: VCallAd Control_ID_ManualFecha
  loc_5DCDD4: FStAdFunc var_88
  loc_5DCDD7: FLdPr var_88
  loc_5DCDDA: LateIdLdVar var_98 DispID_22 0
  loc_5DCDE1: CStrVarTmp
  loc_5DCDE2: FStStrNoPop var_9C
  loc_5DCDE5: ImpAdLdRf MemVar_74DE44
  loc_5DCDE8: NewIfNullPr frmConsignados
  loc_5DCDEB: Call frmConsignados.FechaConsigPut(from_stack_1v)
  loc_5DCDF0: FFree1Str var_9C
  loc_5DCDF3: FFree1Ad var_88
  loc_5DCDF6: FFree1Var var_98 = ""
  loc_5DCDF9: ILdRf Me
  loc_5DCDFC: FStAdNoPop
  loc_5DCE00: ImpAdLdRf MemVar_7520D4
  loc_5DCE03: NewIfNullPr Global
  loc_5DCE06: Global.Unload from_stack_1
  loc_5DCE0B: FFree1Ad var_88
  loc_5DCE0E: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '5D3880
  'Data Table: 42E6E8
  loc_5D3864: LitI2_Byte 0
  loc_5D3866: ImpAdStI2 MemVar_74BEA8
  loc_5D3869: ILdRf Me
  loc_5D386C: FStAdNoPop
  loc_5D3870: ImpAdLdRf MemVar_7520D4
  loc_5D3873: NewIfNullPr Global
  loc_5D3876: Global.Unload from_stack_1
  loc_5D387B: FFree1Ad var_88
  loc_5D387E: ExitProcHresult
End Sub

Private Sub RelojHoraFecha_Timer() '61E800
  'Data Table: 42E6E8
  loc_61E704: FLdRfVar var_1E4
  loc_61E707: ImpAdCallFPR4  = Time
  loc_61E70C: FLdRfVar var_24C
  loc_61E70F: ImpAdCallFPR4  = Date
  loc_61E714: FLdRfVar var_1D4
  loc_61E717: LitVar_Missing var_1D0
  loc_61E71A: LitVar_Missing var_1B0
  loc_61E71D: LitVar_Missing var_190
  loc_61E720: LitVar_Missing var_170
  loc_61E723: LitVar_Missing var_150
  loc_61E726: LitVar_Missing var_130
  loc_61E729: LitVar_Missing var_110
  loc_61E72C: LitVar_Missing var_F0
  loc_61E72F: LitVar_Missing var_D0
  loc_61E732: LitVar_Missing var_B0
  loc_61E735: LitStr "Programación Temporizada"
  loc_61E738: FStStrCopy var_90
  loc_61E73B: FLdRfVar var_90
  loc_61E73E: LitI4 3
  loc_61E743: PopTmpLdAdStr var_8C
  loc_61E746: LitI2_Byte &HC
  loc_61E748: PopTmpLdAd2 var_86
  loc_61E74B: ImpAdLdRf MemVar_74C7D0
  loc_61E74E: NewIfNullPr clsMsg
  loc_61E751: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61E756: ILdRf var_1D4
  loc_61E759: LitStr "  -  "
  loc_61E75C: ConcatStr
  loc_61E75D: FStStrNoPop var_208
  loc_61E760: LitI4 1
  loc_61E765: LitI4 1
  loc_61E76A: LitVarStr var_1F4, "hh:mm"
  loc_61E76F: FStVarCopyObj var_204
  loc_61E772: FLdRfVar var_204
  loc_61E775: FLdRfVar var_1E4
  loc_61E778: ImpAdCallI2 Format$(, )
  loc_61E77D: FStStrNoPop var_20C
  loc_61E780: ConcatStr
  loc_61E781: CVarStr var_22C
  loc_61E784: LitI4 3
  loc_61E789: FLdRfVar var_21C
  loc_61E78C: ImpAdCallFPR4  = Space()
  loc_61E791: FLdRfVar var_21C
  loc_61E794: ConcatVar var_23C
  loc_61E798: LitI4 1
  loc_61E79D: LitI4 1
  loc_61E7A2: LitVarStr var_25C, "dd/mm/yyyy"
  loc_61E7A7: FStVarCopyObj var_26C
  loc_61E7AA: FLdRfVar var_26C
  loc_61E7AD: FLdRfVar var_24C
  loc_61E7B0: ImpAdCallI2 Format$(, )
  loc_61E7B5: CVarStr var_27C
  loc_61E7B8: ConcatVar var_28C
  loc_61E7BC: CStrVarVal var_290
  loc_61E7C0: FLdPr Me
  loc_61E7C3: Me.Caption = from_stack_1
  loc_61E7C8: FFreeStr var_90 = "": var_1D4 = "": var_208 = "": var_20C = ""
  loc_61E7D5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_204 = "": var_22C = "": var_21C = "": var_24C = "": var_26C = "": var_23C = "": var_27C = ""
  loc_61E7FE: ExitProcHresult
End Sub

Private Sub Form_Load() '6CBCC4
  'Data Table: 42E6E8
  loc_6CB3D0: FLdRfVar var_1D4
  loc_6CB3D3: LitVar_Missing var_1D0
  loc_6CB3D6: LitVar_Missing var_1B0
  loc_6CB3D9: LitVar_Missing var_190
  loc_6CB3DC: LitVar_Missing var_170
  loc_6CB3DF: LitVar_Missing var_150
  loc_6CB3E2: LitVar_Missing var_130
  loc_6CB3E5: LitVar_Missing var_110
  loc_6CB3E8: LitVar_Missing var_F0
  loc_6CB3EB: LitVar_Missing var_D0
  loc_6CB3EE: LitVar_Missing var_B0
  loc_6CB3F1: LitStr "Fecha:"
  loc_6CB3F4: FStStrCopy var_90
  loc_6CB3F7: FLdRfVar var_90
  loc_6CB3FA: LitI4 1
  loc_6CB3FF: PopTmpLdAdStr var_8C
  loc_6CB402: LitI2_Byte &HC
  loc_6CB404: PopTmpLdAd2 var_88
  loc_6CB407: ImpAdLdRf MemVar_74C7D0
  loc_6CB40A: NewIfNullPr clsMsg
  loc_6CB40D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CB412: ILdRf var_1D4
  loc_6CB415: FLdPrThis
  loc_6CB416: VCallAd Control_ID_Titulo1
  loc_6CB419: FStAdFunc var_1D8
  loc_6CB41C: FLdPr var_1D8
  loc_6CB41F: Me.Text = from_stack_1
  loc_6CB424: FFreeStr var_90 = ""
  loc_6CB42B: FFree1Ad var_1D8
  loc_6CB42E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6CB445: FLdRfVar var_1D4
  loc_6CB448: LitVar_Missing var_1D0
  loc_6CB44B: LitVar_Missing var_1B0
  loc_6CB44E: LitVar_Missing var_190
  loc_6CB451: LitVar_Missing var_170
  loc_6CB454: LitVar_Missing var_150
  loc_6CB457: LitVar_Missing var_130
  loc_6CB45A: LitVar_Missing var_110
  loc_6CB45D: LitVar_Missing var_F0
  loc_6CB460: LitVar_Missing var_D0
  loc_6CB463: LitVar_Missing var_B0
  loc_6CB466: LitStr "Hora:"
  loc_6CB469: FStStrCopy var_90
  loc_6CB46C: FLdRfVar var_90
  loc_6CB46F: LitI4 2
  loc_6CB474: PopTmpLdAdStr var_8C
  loc_6CB477: LitI2_Byte &HC
  loc_6CB479: PopTmpLdAd2 var_88
  loc_6CB47C: ImpAdLdRf MemVar_74C7D0
  loc_6CB47F: NewIfNullPr clsMsg
  loc_6CB482: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CB487: ILdRf var_1D4
  loc_6CB48A: FLdPrThis
  loc_6CB48B: VCallAd Control_ID_Titulo2
  loc_6CB48E: FStAdFunc var_1D8
  loc_6CB491: FLdPr var_1D8
  loc_6CB494: Me.Text = from_stack_1
  loc_6CB499: FFreeStr var_90 = ""
  loc_6CB4A0: FFree1Ad var_1D8
  loc_6CB4A3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6CB4BA: FLdRfVar var_1E8
  loc_6CB4BD: ImpAdCallFPR4  = Time
  loc_6CB4C2: FLdRfVar var_250
  loc_6CB4C5: ImpAdCallFPR4  = Date
  loc_6CB4CA: FLdRfVar var_1D4
  loc_6CB4CD: LitVar_Missing var_1D0
  loc_6CB4D0: LitVar_Missing var_1B0
  loc_6CB4D3: LitVar_Missing var_190
  loc_6CB4D6: LitVar_Missing var_170
  loc_6CB4D9: LitVar_Missing var_150
  loc_6CB4DC: LitVar_Missing var_130
  loc_6CB4DF: LitVar_Missing var_110
  loc_6CB4E2: LitVar_Missing var_F0
  loc_6CB4E5: LitVar_Missing var_D0
  loc_6CB4E8: LitVar_Missing var_B0
  loc_6CB4EB: LitStr "Programación Temporizada"
  loc_6CB4EE: FStStrCopy var_90
  loc_6CB4F1: FLdRfVar var_90
  loc_6CB4F4: LitI4 3
  loc_6CB4F9: PopTmpLdAdStr var_8C
  loc_6CB4FC: LitI2_Byte &HC
  loc_6CB4FE: PopTmpLdAd2 var_88
  loc_6CB501: ImpAdLdRf MemVar_74C7D0
  loc_6CB504: NewIfNullPr clsMsg
  loc_6CB507: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CB50C: ILdRf var_1D4
  loc_6CB50F: LitStr "  -  "
  loc_6CB512: ConcatStr
  loc_6CB513: FStStrNoPop var_20C
  loc_6CB516: LitI4 1
  loc_6CB51B: LitI4 1
  loc_6CB520: LitVarStr var_1F8, "hh:mm"
  loc_6CB525: FStVarCopyObj var_208
  loc_6CB528: FLdRfVar var_208
  loc_6CB52B: FLdRfVar var_1E8
  loc_6CB52E: ImpAdCallI2 Format$(, )
  loc_6CB533: FStStrNoPop var_210
  loc_6CB536: ConcatStr
  loc_6CB537: CVarStr var_230
  loc_6CB53A: LitI4 3
  loc_6CB53F: FLdRfVar var_220
  loc_6CB542: ImpAdCallFPR4  = Space()
  loc_6CB547: FLdRfVar var_220
  loc_6CB54A: ConcatVar var_240
  loc_6CB54E: LitI4 1
  loc_6CB553: LitI4 1
  loc_6CB558: LitVarStr var_260, "dd/mm/yyyy"
  loc_6CB55D: FStVarCopyObj var_270
  loc_6CB560: FLdRfVar var_270
  loc_6CB563: FLdRfVar var_250
  loc_6CB566: ImpAdCallI2 Format$(, )
  loc_6CB56B: CVarStr var_280
  loc_6CB56E: ConcatVar var_290
  loc_6CB572: CStrVarVal var_294
  loc_6CB576: FLdPr Me
  loc_6CB579: Me.Caption = from_stack_1
  loc_6CB57E: FFreeStr var_90 = "": var_1D4 = "": var_20C = "": var_210 = ""
  loc_6CB58B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E8 = "": var_208 = "": var_230 = "": var_220 = "": var_250 = "": var_270 = "": var_240 = "": var_280 = ""
  loc_6CB5B4: FLdRfVar var_1D4
  loc_6CB5B7: LitVar_Missing var_1D0
  loc_6CB5BA: LitVar_Missing var_1B0
  loc_6CB5BD: LitVar_Missing var_190
  loc_6CB5C0: LitVar_Missing var_170
  loc_6CB5C3: LitVar_Missing var_150
  loc_6CB5C6: LitVar_Missing var_130
  loc_6CB5C9: LitVar_Missing var_110
  loc_6CB5CC: LitVar_Missing var_F0
  loc_6CB5CF: LitVar_Missing var_D0
  loc_6CB5D2: LitVar_Missing var_B0
  loc_6CB5D5: LitStr "CONTINUAR"
  loc_6CB5D8: FStStrCopy var_90
  loc_6CB5DB: FLdRfVar var_90
  loc_6CB5DE: LitI4 4
  loc_6CB5E3: PopTmpLdAdStr var_8C
  loc_6CB5E6: LitI2_Byte &HC
  loc_6CB5E8: PopTmpLdAd2 var_88
  loc_6CB5EB: ImpAdLdRf MemVar_74C7D0
  loc_6CB5EE: NewIfNullPr clsMsg
  loc_6CB5F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CB5F6: FLdZeroAd var_1D4
  loc_6CB5F9: CVarStr var_1E8
  loc_6CB5FC: PopAdLdVar
  loc_6CB5FD: FLdPrThis
  loc_6CB5FE: VCallAd Control_ID_sscContinuar
  loc_6CB601: FStAdFunc var_1D8
  loc_6CB604: FLdPr var_1D8
  loc_6CB607: LateIdSt
  loc_6CB60C: FFree1Str var_90
  loc_6CB60F: FFree1Ad var_1D8
  loc_6CB612: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6CB62B: FLdRfVar var_1D4
  loc_6CB62E: LitVar_Missing var_1D0
  loc_6CB631: LitVar_Missing var_1B0
  loc_6CB634: LitVar_Missing var_190
  loc_6CB637: LitVar_Missing var_170
  loc_6CB63A: LitVar_Missing var_150
  loc_6CB63D: LitVar_Missing var_130
  loc_6CB640: LitVar_Missing var_110
  loc_6CB643: LitVar_Missing var_F0
  loc_6CB646: LitVar_Missing var_D0
  loc_6CB649: LitVar_Missing var_B0
  loc_6CB64C: LitStr "CANCELAR"
  loc_6CB64F: FStStrCopy var_90
  loc_6CB652: FLdRfVar var_90
  loc_6CB655: LitI4 5
  loc_6CB65A: PopTmpLdAdStr var_8C
  loc_6CB65D: LitI2_Byte &HC
  loc_6CB65F: PopTmpLdAd2 var_88
  loc_6CB662: ImpAdLdRf MemVar_74C7D0
  loc_6CB665: NewIfNullPr clsMsg
  loc_6CB668: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CB66D: FLdZeroAd var_1D4
  loc_6CB670: CVarStr var_1E8
  loc_6CB673: PopAdLdVar
  loc_6CB674: FLdPrThis
  loc_6CB675: VCallAd Control_ID_SSCommand1
  loc_6CB678: FStAdFunc var_1D8
  loc_6CB67B: FLdPr var_1D8
  loc_6CB67E: LateIdSt
  loc_6CB683: FFree1Str var_90
  loc_6CB686: FFree1Ad var_1D8
  loc_6CB689: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6CB6A2: FLdRfVar var_88
  loc_6CB6A5: ImpAdLdRf MemVar_74DE44
  loc_6CB6A8: NewIfNullPr frmConsignados
  loc_6CB6AB: from_stack_1v = frmConsignados.FlagConsigGet()
  loc_6CB6B0: FLdI2 var_88
  loc_6CB6B3: BranchF loc_6CB779
  loc_6CB6B6: LitVar_TRUE var_A0
  loc_6CB6B9: PopAdLdVar
  loc_6CB6BA: FLdPrThis
  loc_6CB6BB: VCallAd Control_ID_
  loc_6CB6BE: FStAdFunc var_1D8
  loc_6CB6C1: FLdPr var_1D8
  loc_6CB6C4: LateIdSt
  loc_6CB6C9: FFree1Ad var_1D8
  loc_6CB6CC: LitVar_FALSE
  loc_6CB6D0: PopAdLdVar
  loc_6CB6D1: FLdPrThis
  loc_6CB6D2: VCallAd Control_ID_Label3
  loc_6CB6D5: FStAdFunc var_1D8
  loc_6CB6D8: FLdPr var_1D8
  loc_6CB6DB: LateIdSt
  loc_6CB6E0: FFree1Ad var_1D8
  loc_6CB6E3: LitI2_Byte 0
  loc_6CB6E5: FLdPrThis
  loc_6CB6E6: VCallAd Control_ID_Text1
  loc_6CB6E9: FStAdFunc var_1D8
  loc_6CB6EC: FLdPr var_1D8
  loc_6CB6EF: frmConsignados.TextBox.Visible = from_stack_1b
  loc_6CB6F4: FFree1Ad var_1D8
  loc_6CB6F7: LitVar_FALSE
  loc_6CB6FB: PopAdLdVar
  loc_6CB6FC: FLdPrThis
  loc_6CB6FD: VCallAd Control_ID_ManualHora
  loc_6CB700: FStAdFunc var_1D8
  loc_6CB703: FLdPr var_1D8
  loc_6CB706: LateIdSt
  loc_6CB70B: FFree1Ad var_1D8
  loc_6CB70E: LitI2_Byte 0
  loc_6CB710: FLdPrThis
  loc_6CB711: VCallAd Control_ID_Hora
  loc_6CB714: FStAdFunc var_1D8
  loc_6CB717: FLdPr var_1D8
  loc_6CB71A: Me.Visible = from_stack_1b
  loc_6CB71F: FFree1Ad var_1D8
  loc_6CB722: LitVar_FALSE
  loc_6CB726: PopAdLdVar
  loc_6CB727: FLdRfVar var_298
  loc_6CB72A: LitI2_Byte 0
  loc_6CB72C: FLdPr Me
  loc_6CB72F: VCallAd Control_ID_SpinButton1
  loc_6CB732: FStAdFunc var_1D8
  loc_6CB735: FLdPr var_1D8
  loc_6CB738: Set from_stack_2 = Me(from_stack_1)
  loc_6CB73D: FLdPr var_298
  loc_6CB740: LateIdSt
  loc_6CB745: FFreeAd var_1D8 = ""
  loc_6CB74C: LitVar_FALSE
  loc_6CB750: PopAdLdVar
  loc_6CB751: FLdRfVar var_298
  loc_6CB754: LitI2_Byte 1
  loc_6CB756: FLdPr Me
  loc_6CB759: VCallAd Control_ID_SpinButton1
  loc_6CB75C: FStAdFunc var_1D8
  loc_6CB75F: FLdPr var_1D8
  loc_6CB762: Set from_stack_2 = Me(from_stack_1)
  loc_6CB767: FLdPr var_298
  loc_6CB76A: LateIdSt
  loc_6CB76F: FFreeAd var_1D8 = ""
  loc_6CB776: Branch loc_6CB836
  loc_6CB779: LitVar_FALSE
  loc_6CB77D: PopAdLdVar
  loc_6CB77E: FLdPrThis
  loc_6CB77F: VCallAd Control_ID_SSCommand2
  loc_6CB782: FStAdFunc var_1D8
  loc_6CB785: FLdPr var_1D8
  loc_6CB788: LateIdSt
  loc_6CB78D: FFree1Ad var_1D8
  loc_6CB790: LitVar_TRUE var_A0
  loc_6CB793: PopAdLdVar
  loc_6CB794: FLdPrThis
  loc_6CB795: VCallAd Control_ID_sscContinuar
  loc_6CB798: FStAdFunc var_1D8
  loc_6CB79B: FLdPr var_1D8
  loc_6CB79E: LateIdSt
  loc_6CB7A3: FFree1Ad var_1D8
  loc_6CB7A6: LitI2_Byte &HFF
  loc_6CB7A8: FLdPrThis
  loc_6CB7A9: VCallAd Control_ID_Titulo2
  loc_6CB7AC: FStAdFunc var_1D8
  loc_6CB7AF: FLdPr var_1D8
  loc_6CB7B2: Me.Visible = from_stack_1b
  loc_6CB7B7: FFree1Ad var_1D8
  loc_6CB7BA: LitVar_TRUE var_A0
  loc_6CB7BD: PopAdLdVar
  loc_6CB7BE: FLdPrThis
  loc_6CB7BF: VCallAd Control_ID_ManualHora
  loc_6CB7C2: FStAdFunc var_1D8
  loc_6CB7C5: FLdPr var_1D8
  loc_6CB7C8: LateIdSt
  loc_6CB7CD: FFree1Ad var_1D8
  loc_6CB7D0: LitI2_Byte &HFF
  loc_6CB7D2: FLdPrThis
  loc_6CB7D3: VCallAd Control_ID_Hora
  loc_6CB7D6: FStAdFunc var_1D8
  loc_6CB7D9: FLdPr var_1D8
  loc_6CB7DC: Me.Visible = from_stack_1b
  loc_6CB7E1: FFree1Ad var_1D8
  loc_6CB7E4: LitVar_TRUE var_A0
  loc_6CB7E7: PopAdLdVar
  loc_6CB7E8: FLdRfVar var_298
  loc_6CB7EB: LitI2_Byte 0
  loc_6CB7ED: FLdPr Me
  loc_6CB7F0: VCallAd Control_ID_SpinButton1
  loc_6CB7F3: FStAdFunc var_1D8
  loc_6CB7F6: FLdPr var_1D8
  loc_6CB7F9: Set from_stack_2 = Me(from_stack_1)
  loc_6CB7FE: FLdPr var_298
  loc_6CB801: LateIdSt
  loc_6CB806: FFreeAd var_1D8 = ""
  loc_6CB80D: LitVar_TRUE var_A0
  loc_6CB810: PopAdLdVar
  loc_6CB811: FLdRfVar var_298
  loc_6CB814: LitI2_Byte 1
  loc_6CB816: FLdPr Me
  loc_6CB819: VCallAd Control_ID_SpinButton1
  loc_6CB81C: FStAdFunc var_1D8
  loc_6CB81F: FLdPr var_1D8
  loc_6CB822: Set from_stack_2 = Me(from_stack_1)
  loc_6CB827: FLdPr var_298
  loc_6CB82A: LateIdSt
  loc_6CB82F: FFreeAd var_1D8 = ""
  loc_6CB836: LitI2_Byte 0
  loc_6CB838: ImpAdLdRf MemVar_74DE44
  loc_6CB83B: NewIfNullPr frmConsignados
  loc_6CB83E: Call frmConsignados.FlagConsigPut(from_stack_1v)
  loc_6CB843: LitI2_Byte 0
  loc_6CB845: CR8I2
  loc_6CB846: PopFPR4
  loc_6CB847: FLdPrThis
  loc_6CB848: frmConsignados.Top = from_stack_1s
  loc_6CB84D: LitI2_Byte 0
  loc_6CB84F: CR8I2
  loc_6CB850: PopFPR4
  loc_6CB851: FLdPrThis
  loc_6CB852: Me.Left = from_stack_1s
  loc_6CB857: FLdRfVar var_8C
  loc_6CB85A: FLdRfVar var_1D8
  loc_6CB85D: ImpAdLdRf MemVar_7520D4
  loc_6CB860: NewIfNullPr Global
  loc_6CB863:  = Global.Screen
  loc_6CB868: FLdPr var_1D8
  loc_6CB86B:  = Screen.TwipsPerPixelX
  loc_6CB870: LitI2 800
  loc_6CB873: CR8I2
  loc_6CB874: FLdFPR4 var_8C
  loc_6CB877: MulR8
  loc_6CB878: PopFPR4
  loc_6CB879: FLdPrThis
  loc_6CB87A: Me.Width = from_stack_1s
  loc_6CB87F: FFree1Ad var_1D8
  loc_6CB882: FLdRfVar var_8C
  loc_6CB885: FLdRfVar var_1D8
  loc_6CB888: ImpAdLdRf MemVar_7520D4
  loc_6CB88B: NewIfNullPr Global
  loc_6CB88E:  = Global.Screen
  loc_6CB893: FLdPr var_1D8
  loc_6CB896:  = Screen.TwipsPerPixelX
  loc_6CB89B: LitI2 600
  loc_6CB89E: CR8I2
  loc_6CB89F: FLdFPR4 var_8C
  loc_6CB8A2: MulR8
  loc_6CB8A3: PopFPR4
  loc_6CB8A4: FLdPrThis
  loc_6CB8A5: Me.Height = from_stack_1s
  loc_6CB8AA: FFree1Ad var_1D8
  loc_6CB8AD: ImpAdLdI2 MemVar_74BEA8
  loc_6CB8B0: BranchF loc_6CBAF5
  loc_6CB8B3: LitVarI2 var_B0, 4
  loc_6CB8B8: LitI4 1
  loc_6CB8BD: FLdPr Me
  loc_6CB8C0: MemLdStr strFecha
  loc_6CB8C3: ImpAdCallI2 Mid$(, , )
  loc_6CB8C8: FStStrNoPop var_90
  loc_6CB8CB: CI2Str
  loc_6CB8CD: CVarI2 var_C0
  loc_6CB8D0: PopAdLdVar
  loc_6CB8D1: FLdPrThis
  loc_6CB8D2: VCallAd Control_ID_Calendar1
  loc_6CB8D5: FStAdFunc var_1D8
  loc_6CB8D8: FLdPr var_1D8
  loc_6CB8DB: LateIdSt
  loc_6CB8E0: FFree1Str var_90
  loc_6CB8E3: FFree1Ad var_1D8
  loc_6CB8E6: FFree1Var var_B0 = ""
  loc_6CB8E9: LitVarI2 var_B0, 2
  loc_6CB8EE: LitI4 5
  loc_6CB8F3: FLdPr Me
  loc_6CB8F6: MemLdStr strFecha
  loc_6CB8F9: ImpAdCallI2 Mid$(, , )
  loc_6CB8FE: FStStrNoPop var_90
  loc_6CB901: CI2Str
  loc_6CB903: CVarI2 var_C0
  loc_6CB906: PopAdLdVar
  loc_6CB907: FLdPrThis
  loc_6CB908: VCallAd Control_ID_Calendar1
  loc_6CB90B: FStAdFunc var_1D8
  loc_6CB90E: FLdPr var_1D8
  loc_6CB911: LateIdSt
  loc_6CB916: FFree1Str var_90
  loc_6CB919: FFree1Ad var_1D8
  loc_6CB91C: FFree1Var var_B0 = ""
  loc_6CB91F: LitVarI2 var_B0, 2
  loc_6CB924: LitI4 7
  loc_6CB929: FLdPr Me
  loc_6CB92C: MemLdStr strFecha
  loc_6CB92F: ImpAdCallI2 Mid$(, , )
  loc_6CB934: FStStrNoPop var_90
  loc_6CB937: CI2Str
  loc_6CB939: CVarI2 var_C0
  loc_6CB93C: PopAdLdVar
  loc_6CB93D: FLdPrThis
  loc_6CB93E: VCallAd Control_ID_Calendar1
  loc_6CB941: FStAdFunc var_1D8
  loc_6CB944: FLdPr var_1D8
  loc_6CB947: LateIdSt
  loc_6CB94C: FFree1Str var_90
  loc_6CB94F: FFree1Ad var_1D8
  loc_6CB952: FFree1Var var_B0 = ""
  loc_6CB955: FLdPrThis
  loc_6CB956: VCallAd Control_ID_Calendar1
  loc_6CB959: FStAdFunc var_1D8
  loc_6CB95C: FLdPr var_1D8
  loc_6CB95F: LateIdLdVar var_B0 DispID_17 0
  loc_6CB966: PopAd
  loc_6CB968: FLdPrThis
  loc_6CB969: VCallAd Control_ID_Calendar1
  loc_6CB96C: FStAdFunc var_298
  loc_6CB96F: FLdPr var_298
  loc_6CB972: LateIdLdVar var_150 DispID_16 0
  loc_6CB979: PopAd
  loc_6CB97B: FLdPrThis
  loc_6CB97C: VCallAd Control_ID_Calendar1
  loc_6CB97F: FStAdFunc var_29C
  loc_6CB982: FLdPr var_29C
  loc_6CB985: LateIdLdVar var_208 DispID_15 0
  loc_6CB98C: PopAd
  loc_6CB98E: LitI4 1
  loc_6CB993: LitI4 1
  loc_6CB998: LitVarStr var_C0, "00"
  loc_6CB99D: FStVarCopyObj var_F0
  loc_6CB9A0: FLdRfVar var_F0
  loc_6CB9A3: FLdRfVar var_B0
  loc_6CB9A6: CI2Var
  loc_6CB9A7: CVarI2 var_D0
  loc_6CB9AA: FLdRfVar var_110
  loc_6CB9AD: ImpAdCallFPR4  = Format(, )
  loc_6CB9B2: FLdRfVar var_110
  loc_6CB9B5: LitVarStr var_E0, "/"
  loc_6CB9BA: ConcatVar var_130
  loc_6CB9BE: LitI4 1
  loc_6CB9C3: LitI4 1
  loc_6CB9C8: LitVarStr var_120, "00"
  loc_6CB9CD: FStVarCopyObj var_190
  loc_6CB9D0: FLdRfVar var_190
  loc_6CB9D3: FLdRfVar var_150
  loc_6CB9D6: CI2Var
  loc_6CB9D7: CVarI2 var_170
  loc_6CB9DA: FLdRfVar var_1B0
  loc_6CB9DD: ImpAdCallFPR4  = Format(, )
  loc_6CB9E2: FLdRfVar var_1B0
  loc_6CB9E5: ConcatVar var_1D0
  loc_6CB9E9: LitVarStr var_140, "/"
  loc_6CB9EE: ConcatVar var_1E8
  loc_6CB9F2: LitI4 1
  loc_6CB9F7: LitI4 1
  loc_6CB9FC: LitVarStr var_180, "00"
  loc_6CBA01: FStVarCopyObj var_230
  loc_6CBA04: FLdRfVar var_230
  loc_6CBA07: FLdRfVar var_208
  loc_6CBA0A: CI2Var
  loc_6CBA0B: CVarI2 var_220
  loc_6CBA0E: FLdRfVar var_240
  loc_6CBA11: ImpAdCallFPR4  = Format(, )
  loc_6CBA16: FLdRfVar var_240
  loc_6CBA19: ConcatVar var_250
  loc_6CBA1D: CStrVarTmp
  loc_6CBA1E: CVarStr var_270
  loc_6CBA21: PopAdLdVar
  loc_6CBA22: FLdPrThis
  loc_6CBA23: VCallAd Control_ID_ManualFecha
  loc_6CBA26: FStAdFunc var_2A0
  loc_6CBA29: FLdPr var_2A0
  loc_6CBA2C: LateIdSt
  loc_6CBA31: FFreeAd var_1D8 = "": var_298 = "": var_29C = ""
  loc_6CBA3C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_150 = "": var_170 = "": var_190 = "": var_130 = "": var_1B0 = "": var_1D0 = "": var_208 = "": var_220 = "": var_230 = "": var_1E8 = "": var_240 = "": var_250 = ""
  loc_6CBA61: LitVarI2 var_B0, 2
  loc_6CBA66: LitI4 9
  loc_6CBA6B: FLdPr Me
  loc_6CBA6E: MemLdStr strFecha
  loc_6CBA71: ImpAdCallI2 Mid$(, , )
  loc_6CBA76: FStStrNoPop var_90
  loc_6CBA79: LitStr ":"
  loc_6CBA7C: ConcatStr
  loc_6CBA7D: FStStrNoPop var_1D4
  loc_6CBA80: LitVarI2 var_D0, 2
  loc_6CBA85: LitI4 &HB
  loc_6CBA8A: FLdPr Me
  loc_6CBA8D: MemLdStr strFecha
  loc_6CBA90: ImpAdCallI2 Mid$(, , )
  loc_6CBA95: FStStrNoPop var_20C
  loc_6CBA98: ConcatStr
  loc_6CBA99: CVarStr var_F0
  loc_6CBA9C: PopAdLdVar
  loc_6CBA9D: FLdPrThis
  loc_6CBA9E: VCallAd Control_ID_ManualHora
  loc_6CBAA1: FStAdFunc var_1D8
  loc_6CBAA4: FLdPr var_1D8
  loc_6CBAA7: LateIdSt
  loc_6CBAAC: FFreeStr var_90 = "": var_1D4 = ""
  loc_6CBAB5: FFree1Ad var_1D8
  loc_6CBAB8: FFreeVar var_B0 = "": var_D0 = ""
  loc_6CBAC1: FLdPrThis
  loc_6CBAC2: VCallAd Control_ID_ManualHora
  loc_6CBAC5: FStAdFunc var_1D8
  loc_6CBAC8: FLdPr var_1D8
  loc_6CBACB: LateIdLdVar var_B0 DispID_22 0
  loc_6CBAD2: CStrVarTmp
  loc_6CBAD3: FStStrNoPop var_90
  loc_6CBAD6: FLdPrThis
  loc_6CBAD7: VCallAd Control_ID_Hora
  loc_6CBADA: FStAdFunc var_298
  loc_6CBADD: FLdPr var_298
  loc_6CBAE0: Me.Text = from_stack_1
  loc_6CBAE5: FFree1Str var_90
  loc_6CBAE8: FFreeAd var_1D8 = ""
  loc_6CBAEF: FFree1Var var_B0 = ""
  loc_6CBAF2: Branch loc_6CBCC2
  loc_6CBAF5: FLdRfVar var_B0
  loc_6CBAF8: ImpAdCallFPR4  = Date
  loc_6CBAFD: FLdRfVar var_B0
  loc_6CBB00: FLdRfVar var_D0
  loc_6CBB03: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6CBB08: FLdRfVar var_D0
  loc_6CBB0B: CI2Var
  loc_6CBB0C: CVarI2 var_A0
  loc_6CBB0F: PopAdLdVar
  loc_6CBB10: FLdPrThis
  loc_6CBB11: VCallAd Control_ID_Calendar1
  loc_6CBB14: FStAdFunc var_1D8
  loc_6CBB17: FLdPr var_1D8
  loc_6CBB1A: LateIdSt
  loc_6CBB1F: FFree1Ad var_1D8
  loc_6CBB22: FFreeVar var_B0 = ""
  loc_6CBB29: FLdRfVar var_B0
  loc_6CBB2C: ImpAdCallFPR4  = Date
  loc_6CBB31: FLdRfVar var_B0
  loc_6CBB34: FLdRfVar var_D0
  loc_6CBB37: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6CBB3C: FLdRfVar var_D0
  loc_6CBB3F: CI2Var
  loc_6CBB40: CVarI2 var_A0
  loc_6CBB43: PopAdLdVar
  loc_6CBB44: FLdPrThis
  loc_6CBB45: VCallAd Control_ID_Calendar1
  loc_6CBB48: FStAdFunc var_1D8
  loc_6CBB4B: FLdPr var_1D8
  loc_6CBB4E: LateIdSt
  loc_6CBB53: FFree1Ad var_1D8
  loc_6CBB56: FFreeVar var_B0 = ""
  loc_6CBB5D: FLdRfVar var_B0
  loc_6CBB60: ImpAdCallFPR4  = Date
  loc_6CBB65: FLdRfVar var_B0
  loc_6CBB68: FLdRfVar var_D0
  loc_6CBB6B: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6CBB70: FLdRfVar var_D0
  loc_6CBB73: CI2Var
  loc_6CBB74: CVarI2 var_A0
  loc_6CBB77: PopAdLdVar
  loc_6CBB78: FLdPrThis
  loc_6CBB79: VCallAd Control_ID_Calendar1
  loc_6CBB7C: FStAdFunc var_1D8
  loc_6CBB7F: FLdPr var_1D8
  loc_6CBB82: LateIdSt
  loc_6CBB87: FFree1Ad var_1D8
  loc_6CBB8A: FFreeVar var_B0 = ""
  loc_6CBB91: FLdRfVar var_B0
  loc_6CBB94: ImpAdCallFPR4  = Date
  loc_6CBB99: FLdRfVar var_B0
  loc_6CBB9C: FLdRfVar var_D0
  loc_6CBB9F: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6CBBA4: FLdRfVar var_110
  loc_6CBBA7: ImpAdCallFPR4  = Date
  loc_6CBBAC: FLdRfVar var_110
  loc_6CBBAF: FLdRfVar var_130
  loc_6CBBB2: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6CBBB7: FLdRfVar var_170
  loc_6CBBBA: ImpAdCallFPR4  = Date
  loc_6CBBBF: FLdRfVar var_170
  loc_6CBBC2: FLdRfVar var_190
  loc_6CBBC5: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6CBBCA: LitI4 1
  loc_6CBBCF: LitI4 1
  loc_6CBBD4: LitVarStr var_A0, "00"
  loc_6CBBD9: FStVarCopyObj var_F0
  loc_6CBBDC: FLdRfVar var_F0
  loc_6CBBDF: FLdRfVar var_D0
  loc_6CBBE2: ImpAdCallI2 Format$(, )
  loc_6CBBE7: FStStrNoPop var_90
  loc_6CBBEA: LitStr "/"
  loc_6CBBED: ConcatStr
  loc_6CBBEE: FStStrNoPop var_1D4
  loc_6CBBF1: LitI4 1
  loc_6CBBF6: LitI4 1
  loc_6CBBFB: LitVarStr var_C0, "00"
  loc_6CBC00: FStVarCopyObj var_150
  loc_6CBC03: FLdRfVar var_150
  loc_6CBC06: FLdRfVar var_130
  loc_6CBC09: ImpAdCallI2 Format$(, )
  loc_6CBC0E: FStStrNoPop var_20C
  loc_6CBC11: ConcatStr
  loc_6CBC12: FStStrNoPop var_210
  loc_6CBC15: LitStr "/"
  loc_6CBC18: ConcatStr
  loc_6CBC19: FStStrNoPop var_294
  loc_6CBC1C: LitI4 1
  loc_6CBC21: LitI4 1
  loc_6CBC26: LitVarStr var_E0, "0000"
  loc_6CBC2B: FStVarCopyObj var_1B0
  loc_6CBC2E: FLdRfVar var_1B0
  loc_6CBC31: FLdRfVar var_190
  loc_6CBC34: ImpAdCallI2 Format$(, )
  loc_6CBC39: FStStrNoPop var_2A4
  loc_6CBC3C: ConcatStr
  loc_6CBC3D: CVarStr var_1D0
  loc_6CBC40: PopAdLdVar
  loc_6CBC41: FLdPrThis
  loc_6CBC42: VCallAd Control_ID_ManualFecha
  loc_6CBC45: FStAdFunc var_1D8
  loc_6CBC48: FLdPr var_1D8
  loc_6CBC4B: LateIdSt
  loc_6CBC50: FFreeStr var_90 = "": var_1D4 = "": var_20C = "": var_210 = "": var_294 = ""
  loc_6CBC5F: FFree1Ad var_1D8
  loc_6CBC62: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6CBC79: LitVarStr var_A0, "12:00"
  loc_6CBC7E: PopAdLdVar
  loc_6CBC7F: FLdPrThis
  loc_6CBC80: VCallAd Control_ID_ManualHora
  loc_6CBC83: FStAdFunc var_1D8
  loc_6CBC86: FLdPr var_1D8
  loc_6CBC89: LateIdSt
  loc_6CBC8E: FFree1Ad var_1D8
  loc_6CBC91: FLdPrThis
  loc_6CBC92: VCallAd Control_ID_ManualHora
  loc_6CBC95: FStAdFunc var_1D8
  loc_6CBC98: FLdPr var_1D8
  loc_6CBC9B: LateIdLdVar var_B0 DispID_22 0
  loc_6CBCA2: CStrVarTmp
  loc_6CBCA3: FStStrNoPop var_90
  loc_6CBCA6: FLdPrThis
  loc_6CBCA7: VCallAd Control_ID_Hora
  loc_6CBCAA: FStAdFunc var_298
  loc_6CBCAD: FLdPr var_298
  loc_6CBCB0: Me.Text = from_stack_1
  loc_6CBCB5: FFree1Str var_90
  loc_6CBCB8: FFreeAd var_1D8 = ""
  loc_6CBCBF: FFree1Var var_B0 = ""
  loc_6CBCC2: ExitProcHresult
End Sub

Public Function strFechaGet() '42EFEC
  strFechaGet = strFecha
End Function

Public Sub strFechaPut(Value) '42EFFB
  strFecha = Value
End Sub

Public Function strPreciosGet() '42F00A
  strPreciosGet = strPrecios
End Function

Public Sub strPreciosPut(Value) '42F019
  strPrecios = Value
End Sub

Public Function IsRemitoGet() '42F028
  IsRemitoGet = IsRemito
End Function

Public Sub IsRemitoPut(Value) '42F037
  IsRemito = Value
End Sub

Public Function strValidDateGet() '42F046
  strValidDateGet = strValidDate
End Function

Public Sub strValidDatePut(Value) '42F055
  strValidDate = Value
End Sub

Public Function strValidTimeGet() '42F064
  strValidTimeGet = strValidTime
End Function

Public Sub strValidTimePut(Value) '42F073
  strValidTime = Value
End Sub

Public Function strOtherDateGet() '42F082
  strOtherDateGet = strOtherDate
End Function

Public Sub strOtherDatePut(Value) '42F091
  strOtherDate = Value
End Sub

Public Function strOtherTimeGet() '42F0A0
  strOtherTimeGet = strOtherTime
End Function

Public Sub strOtherTimePut(Value) '42F0AF
  strOtherTime = Value
End Sub
