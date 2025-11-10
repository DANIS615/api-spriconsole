VERSION 5.00
Begin VB.Form frmTranslator
  Caption = "Logitron Americas Dynamic Dictionary"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  KeyPreview = -1  'True
  ClientLeft = -930
  ClientTop = -1095
  ClientWidth = 8400
  ClientHeight = 8595
  StartUpPosition = 1 'CenterOwner
  Begin VB.CommandButton cmdCancel
    Caption = "F7 - &Cancel"
    Left = 6600
    Top = 7440
    Width = 1695
    Height = 975
    TabIndex = 21
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdAccept
    Caption = "F6 - &Accept"
    Left = 4440
    Top = 7440
    Width = 1695
    Height = 975
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtLocalSample
    Left = 2160
    Top = 6240
    Width = 6735
    Height = 975
    Enabled = 0   'False
    TabIndex = 18
    MultiLine = -1  'True
    ScrollBars = 3
  End
  Begin VB.TextBox txtLocalMask
    Left = 2160
    Top = 4920
    Width = 6735
    Height = 1215
    TabIndex = 16
    MultiLine = -1  'True
    ScrollBars = 3
  End
  Begin VB.CommandButton cmdRefresh
    Caption = "F5 - &Refresh"
    Left = 2280
    Top = 7440
    Width = 1695
    Height = 975
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtParams
    Index = 10
    Left = 4680
    Top = 1920
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 9
    Left = 120
    Top = 1920
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 8
    Left = 4680
    Top = 1560
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 7
    Left = 120
    Top = 1560
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 6
    Left = 4680
    Top = 1200
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 5
    Left = 120
    Top = 1200
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 4
    Left = 4680
    Top = 840
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 3
    Left = 120
    Top = 840
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 2
    Left = 4680
    Top = 480
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
    ScrollBars = 3
  End
  Begin VB.TextBox txtParams
    Index = 1
    Left = 120
    Top = 480
    Width = 4215
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    ScrollBars = 3
  End
  Begin VB.TextBox txtDefaultSample
    Left = 2160
    Top = 3600
    Width = 6735
    Height = 1215
    TabIndex = 3
    MultiLine = -1  'True
    ScrollBars = 3
  End
  Begin VB.TextBox txtDefaultMask
    Left = 2160
    Top = 2280
    Width = 6735
    Height = 1215
    TabIndex = 2
    MultiLine = -1  'True
    ScrollBars = 3
  End
  Begin VB.Label Label4
    Caption = "Local Sample"
    Left = 0
    Top = 8640
    Width = 1815
    Height = 495
    TabIndex = 19
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Local Mask"
    Left = 120
    Top = 5160
    Width = 1815
    Height = 375
    TabIndex = 17
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Parameter List"
    Index = 1
    Left = 5880
    Top = 0
    Width = 2295
    Height = 375
    TabIndex = 4
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Sample:"
    Index = 0
    Left = 240
    Top = 3960
    Width = 1815
    Height = 375
    TabIndex = 1
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Default Mask:"
    Left = 120
    Top = 2880
    Width = 1935
    Height = 375
    TabIndex = 0
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmTranslator"

Public objMsg As Object
Public ModuleID As Long
Public MsgID As Long
Public DefaultMask As String


Private Sub cmdAccept_Click() '5E0120
  'Data Table: 426904
  loc_5E00D0: Call cmdRefresh_Click()
  loc_5E00D5: FLdRfVar var_8C
  loc_5E00D8: FLdPrThis
  loc_5E00D9: VCallAd Control_ID_txtLocalMask
  loc_5E00DC: FStAdFunc var_88
  loc_5E00DF: FLdPr var_88
  loc_5E00E2:  = Me.Text
  loc_5E00E7: FLdZeroAd var_8C
  loc_5E00EA: CVarStr var_9C
  loc_5E00ED: PopAdLdVar
  loc_5E00EE: FLdPr Me
  loc_5E00F1: MemLdRfVar from_stack_1.global_68
  loc_5E00F4: CDargRef
  loc_5E00F8: FLdPr Me
  loc_5E00FB: MemLdPr objMsg
  loc_5E00FE: LateMemCall
  loc_5E0104: FFree1Ad var_88
  loc_5E0107: FFree1Var var_9C = ""
  loc_5E010A: ILdRf Me
  loc_5E010D: FStAdNoPop
  loc_5E0111: ImpAdLdRf MemVar_7520D4
  loc_5E0114: NewIfNullPr Global
  loc_5E0117: Global.Unload from_stack_1
  loc_5E011C: FFree1Ad var_88
  loc_5E011F: ExitProcHresult
End Sub

Private Sub Form_Load() '622E6C
  'Data Table: 426904
  loc_622D14: FLdPr Me
  loc_622D17: MemLdPr objMsg
  loc_622D1A: LateMemLdVar
  loc_622D1F: CI4Var
  loc_622D21: FLdPr Me
  loc_622D24: MemStI4 MsgID
  loc_622D27: FFree1Var var_98 = ""
  loc_622D2A: FLdPr Me
  loc_622D2D: MemLdPr objMsg
  loc_622D30: LateMemLdVar
  loc_622D35: CI4Var
  loc_622D37: FLdPr Me
  loc_622D3A: MemStI4 ModuleID
  loc_622D3D: FFree1Var var_98 = ""
  loc_622D40: FLdPr Me
  loc_622D43: MemLdPr objMsg
  loc_622D46: LateMemLdVar
  loc_622D4B: CI2Var
  loc_622D4C: FLdPr Me
  loc_622D4F: MemStI2 global_72
  loc_622D52: FFree1Var var_98 = ""
  loc_622D55: LitI4 0
  loc_622D5A: LitI4 &HA
  loc_622D5F: FLdPr Me
  loc_622D62: MemLdRfVar from_stack_1.global_68
  loc_622D65: Redim
  loc_622D6F: FLdPr Me
  loc_622D72: MemLdRfVar from_stack_1.global_68
  loc_622D75: CDargRef
  loc_622D79: FLdPr Me
  loc_622D7C: MemLdPr objMsg
  loc_622D7F: LateMemCall
  loc_622D85: FLdPr Me
  loc_622D88: MemLdPr objMsg
  loc_622D8B: LateMemLdVar
  loc_622D90: CStrVarTmp
  loc_622D91: FStStrNoPop var_AC
  loc_622D94: FLdPr Me
  loc_622D97: MemStStrCopy
  loc_622D9B: FFree1Str var_AC
  loc_622D9E: FFree1Var var_98 = ""
  loc_622DA1: LitStr "Logitron Americas Message Dictionary - Module "
  loc_622DA4: FLdPr Me
  loc_622DA7: MemLdStr ModuleID
  loc_622DAA: CStrI4
  loc_622DAC: FStStrNoPop var_AC
  loc_622DAF: ConcatStr
  loc_622DB0: FStStrNoPop var_B0
  loc_622DB3: LitStr " - Message #"
  loc_622DB6: ConcatStr
  loc_622DB7: FStStrNoPop var_B4
  loc_622DBA: FLdPr Me
  loc_622DBD: MemLdStr MsgID
  loc_622DC0: CStrI4
  loc_622DC2: FStStrNoPop var_B8
  loc_622DC5: ConcatStr
  loc_622DC6: FStStrNoPop var_BC
  loc_622DC9: FLdPr Me
  loc_622DCC: Me.Caption = from_stack_1
  loc_622DD1: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_622DDE: FLdPr Me
  loc_622DE1: MemLdI2 global_72
  loc_622DE4: LitI2_Byte &HA
  loc_622DE6: GtI2
  loc_622DE7: FLdPr Me
  loc_622DEA: MemLdI2 global_72
  loc_622DED: LitI2_Byte 0
  loc_622DEF: LtI2
  loc_622DF0: OrI4
  loc_622DF1: BranchF loc_622DFC
  loc_622DF4: LitI2_Byte 0
  loc_622DF6: FLdPr Me
  loc_622DF9: MemStI2 global_72
  loc_622DFC: LitI2_Byte 1
  loc_622DFE: FLdRfVar var_86
  loc_622E01: FLdPr Me
  loc_622E04: MemLdI2 global_72
  loc_622E07: ForI2 var_C0
  loc_622E0D: LitI2_Byte &HFF
  loc_622E0F: FLdRfVar var_C8
  loc_622E12: FLdI2 var_86
  loc_622E15: FLdPrThis
  loc_622E16: VCallAd Control_ID_txtParams
  loc_622E19: FStAdFunc var_C4
  loc_622E1C: FLdPr var_C4
  loc_622E1F: Set from_stack_2 = Me(from_stack_1)
  loc_622E24: FLdPr var_C8
  loc_622E27: Me.Enabled = from_stack_1b
  loc_622E2C: FFreeAd var_C4 = ""
  loc_622E33: FLdI2 var_86
  loc_622E36: CI4UI1
  loc_622E37: FLdPr Me
  loc_622E3A: MemLdStr global_68
  loc_622E3D: Ary1LdI4
  loc_622E3E: FLdRfVar var_C8
  loc_622E41: FLdI2 var_86
  loc_622E44: FLdPrThis
  loc_622E45: VCallAd Control_ID_txtParams
  loc_622E48: FStAdFunc var_C4
  loc_622E4B: FLdPr var_C4
  loc_622E4E: Set from_stack_2 = Me(from_stack_1)
  loc_622E53: FLdPr var_C8
  loc_622E56: Me.Text = from_stack_1
  loc_622E5B: FFreeAd var_C4 = ""
  loc_622E62: FLdRfVar var_86
  loc_622E65: NextI2 var_C0, loc_622E0D
  loc_622E6A: ExitProcHresult
End Sub

Private Sub Form_Activate() '5C91F0
  'Data Table: 426904
  loc_5C91E8: Call cmdRefresh_Click()
  loc_5C91ED: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5DEE78
  'Data Table: 426904
  loc_5DEE24: ILdI2 KeyCode
  loc_5DEE27: CI4UI1
  loc_5DEE28: LitI4 &H74
  loc_5DEE2D: EqI4
  loc_5DEE2E: ILdI2 Shift
  loc_5DEE31: LitI2_Byte 0
  loc_5DEE33: EqI2
  loc_5DEE34: AndI4
  loc_5DEE35: BranchF loc_5DEE40
  loc_5DEE38: Call cmdRefresh_Click()
  loc_5DEE3D: Branch loc_5DEE75
  loc_5DEE40: ILdI2 KeyCode
  loc_5DEE43: CI4UI1
  loc_5DEE44: LitI4 &H75
  loc_5DEE49: EqI4
  loc_5DEE4A: ILdI2 Shift
  loc_5DEE4D: LitI2_Byte 0
  loc_5DEE4F: EqI2
  loc_5DEE50: AndI4
  loc_5DEE51: BranchF loc_5DEE5C
  loc_5DEE54: Call cmdAccept_Click()
  loc_5DEE59: Branch loc_5DEE75
  loc_5DEE5C: ILdI2 KeyCode
  loc_5DEE5F: CI4UI1
  loc_5DEE60: LitI4 &H76
  loc_5DEE65: EqI4
  loc_5DEE66: ILdI2 Shift
  loc_5DEE69: LitI2_Byte 0
  loc_5DEE6B: EqI2
  loc_5DEE6C: AndI4
  loc_5DEE6D: BranchF loc_5DEE75
  loc_5DEE70: Call cmdCancel_Click()
  loc_5DEE75: ExitProcHresult
End Sub

Private Sub cmdRefresh_Click() '612360
  'Data Table: 426904
  loc_612254: FLdPr Me
  loc_612257: MemLdStr DefaultMask
  loc_61225A: FLdPrThis
  loc_61225B: VCallAd Control_ID_txtDefaultMask
  loc_61225E: FStAdFunc var_94
  loc_612261: FLdPr var_94
  loc_612264: Me.Text = from_stack_1
  loc_612269: FFree1Ad var_94
  loc_61226C: LitI2_Byte 1
  loc_61226E: FLdRfVar var_8E
  loc_612271: FLdPr Me
  loc_612274: MemLdI2 global_72
  loc_612277: ForI2 var_98
  loc_61227D: FLdRfVar var_A0
  loc_612280: FLdRfVar var_9C
  loc_612283: FLdI2 var_8E
  loc_612286: FLdPrThis
  loc_612287: VCallAd Control_ID_txtParams
  loc_61228A: FStAdFunc var_94
  loc_61228D: FLdPr var_94
  loc_612290: Set from_stack_2 = Me(from_stack_1)
  loc_612295: FLdPr var_9C
  loc_612298:  = Me.Text
  loc_61229D: ILdRf var_A0
  loc_6122A0: FLdI2 var_8E
  loc_6122A3: CI4UI1
  loc_6122A4: FLdPr Me
  loc_6122A7: MemLdStr global_68
  loc_6122AA: Ary1StStrCopy
  loc_6122AB: FFree1Str var_A0
  loc_6122AE: FFreeAd var_94 = ""
  loc_6122B5: FLdRfVar var_8E
  loc_6122B8: NextI2 var_98, loc_61227D
  loc_6122BD: FLdRfVar var_A0
  loc_6122C0: FLdPrThis
  loc_6122C1: VCallAd Control_ID_txtDefaultMask
  loc_6122C4: FStAdFunc var_94
  loc_6122C7: FLdPr var_94
  loc_6122CA:  = Me.Text
  loc_6122CF: FLdPr Me
  loc_6122D2: MemLdRfVar from_stack_1.global_68
  loc_6122D5: FLdZeroAd var_A0
  loc_6122D8: PopTmpLdAdStr
  loc_6122DC: FLdPr Me
  loc_6122DF: MemLdRfVar from_stack_1.global_72
  loc_6122E2: FLdRfVar var_88
  loc_6122E5: ImpAdCallI2 Proc_87_19_635F40(, , , )
  loc_6122EA: NotI4
  loc_6122EB: FFree1Str var_A4
  loc_6122EE: FFree1Ad var_94
  loc_6122F1: BranchF loc_6122F8
  loc_6122F4: ExitProcHresult
  loc_6122F5: Branch loc_61230D
  loc_6122F8: ILdRf var_88
  loc_6122FB: FLdPrThis
  loc_6122FC: VCallAd Control_ID_txtDefaultSample
  loc_6122FF: FStAdFunc var_94
  loc_612302: FLdPr var_94
  loc_612305: Me.Text = from_stack_1
  loc_61230A: FFree1Ad var_94
  loc_61230D: FLdRfVar var_A0
  loc_612310: FLdPrThis
  loc_612311: VCallAd Control_ID_txtLocalMask
  loc_612314: FStAdFunc var_94
  loc_612317: FLdPr var_94
  loc_61231A:  = Me.Text
  loc_61231F: FLdPr Me
  loc_612322: MemLdRfVar from_stack_1.global_68
  loc_612325: FLdZeroAd var_A0
  loc_612328: PopTmpLdAdStr
  loc_61232C: FLdPr Me
  loc_61232F: MemLdRfVar from_stack_1.global_72
  loc_612332: FLdRfVar var_88
  loc_612335: ImpAdCallI2 Proc_87_19_635F40(, , , )
  loc_61233A: NotI4
  loc_61233B: FFree1Str var_A4
  loc_61233E: FFree1Ad var_94
  loc_612341: BranchF loc_612348
  loc_612344: ExitProcHresult
  loc_612345: Branch loc_61235D
  loc_612348: ILdRf var_88
  loc_61234B: FLdPrThis
  loc_61234C: VCallAd Control_ID_txtLocalSample
  loc_61234F: FStAdFunc var_94
  loc_612352: FLdPr var_94
  loc_612355: Me.Text = from_stack_1
  loc_61235A: FFree1Ad var_94
  loc_61235D: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '5D1CC0
  'Data Table: 426904
  loc_5D1CA8: ILdRf Me
  loc_5D1CAB: FStAdNoPop
  loc_5D1CAF: ImpAdLdRf MemVar_7520D4
  loc_5D1CB2: NewIfNullPr Global
  loc_5D1CB5: Global.Unload from_stack_1
  loc_5D1CBA: FFree1Ad var_88
  loc_5D1CBD: ExitProcHresult
End Sub

Public Function objMsgGet() '4270FC
  objMsgGet = objMsg
End Function

Public Sub objMsgPut(Value) '42710B
  objMsg = Value
End Sub

Public Sub objMsgSet(Value) '42711A
  objMsg = Value
End Sub

Public Function ModuleIDGet() '427129
  ModuleIDGet = ModuleID
End Function

Public Sub ModuleIDPut(Value) '427138
  ModuleID = Value
End Sub

Public Function MsgIDGet() '427147
  MsgIDGet = MsgID
End Function

Public Sub MsgIDPut(Value) '427156
  MsgID = Value
End Sub

Public Function DefaultMaskGet() '427165
  DefaultMaskGet = DefaultMask
End Function

Public Sub DefaultMaskPut(Value) '427174
  DefaultMask = Value
End Sub
