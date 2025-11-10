VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form frmGenericMsg
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 7080
  ClientHeight = 7200
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer tmrCerrar
    Interval = 60000
    Left = 5880
    Top = 120
  End
  Begin VB.Timer tmrGeneric
    Left = 240
    Top = 3600
  End
  Begin VB.Frame frameMain
    Left = 120
    Top = 0
    Width = 6855
    Height = 7095
    TabIndex = 0
    Begin MSFlexGridLib.MSFlexGrid grid
      Left = 120
      Top = 2400
      Width = 6615
      Height = 3735
      TabIndex = 5
      OleObjectBlob = "frmGenericMsg.frx":0000
    End
    Begin VB.CommandButton cmd1
      Caption = "&1"
      Left = 3240
      Top = 6360
      Width = 1695
      Height = 555
      TabIndex = 1
      BeginProperty Font
        Name = "Arial"
        Size = 15
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmd2
      Caption = "&2"
      Left = 5040
      Top = 6360
      Width = 1695
      Height = 555
      TabIndex = 2
      BeginProperty Font
        Name = "Arial"
        Size = 15
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblMessage
      Left = 120
      Top = 1080
      Width = 6615
      Height = 1095
      TabIndex = 4
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 15
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblTitle
      Caption = "Input Text"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 120
      Top = 480
      Width = 6615
      Height = 495
      TabIndex = 3
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
End

Attribute VB_Name = "frmGenericMsg"


Private Sub cmd1_Click() '5C9D88
  'Data Table: 41D424
  loc_5C9D7C: FLdPr Me
  loc_5C9D7F: RaiseEvent
  loc_5C9D87: ExitProcHresult
End Sub

Private Sub cmd2_Click() '5C9E00
  'Data Table: 41D424
  loc_5C9DF4: FLdPr Me
  loc_5C9DF7: RaiseEvent
  loc_5C9DFF: ExitProcHresult
End Sub

Private Sub Form_Load() '5D7180
  'Data Table: 41D424
  loc_5D7154: FLdRfVar var_86
  loc_5D7157: from_stack_1 = GridVisible
  loc_5D715C: FLdI2 var_86
  loc_5D715F: NotI4
  loc_5D7160: BranchF loc_5D7168
  loc_5D7163: from_stack_1v = Proc_143_29_5EB4C8()
  loc_5D7168: FLdRfVar var_98
  loc_5D716B: ImpAdCallFPR4  = Time
  loc_5D7170: FLdRfVar var_98
  loc_5D7173: FLdPr Me
  loc_5D7176: MemStVar
  loc_5D717A: FFree1Var var_98 = ""
  loc_5D717D: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D125C
  'Data Table: 41D424
  loc_5D1244: LitI2_Byte &HFF
  loc_5D1246: FLdPrThis
  loc_5D1247: VCallAd Control_ID_tmrCerrar
  loc_5D124A: FStAdFunc var_88
  loc_5D124D: FLdPr var_88
  loc_5D1250: Me.Enabled = from_stack_1b
  loc_5D1255: FFree1Ad var_88
  loc_5D1258: ExitProcHresult
End Sub

Private Sub Form_Deactivate() '5D12F4
  'Data Table: 41D424
  loc_5D12DC: LitI2_Byte 0
  loc_5D12DE: FLdPrThis
  loc_5D12DF: VCallAd Control_ID_tmrCerrar
  loc_5D12E2: FStAdFunc var_88
  loc_5D12E5: FLdPr var_88
  loc_5D12E8: Me.Enabled = from_stack_1b
  loc_5D12ED: FFree1Ad var_88
  loc_5D12F0: ExitProcHresult
End Sub

Private Sub tmrCerrar_Timer() '606B8C
  'Data Table: 41D424
  loc_606AB8: LitStr "00"
  loc_606ABB: FStStrCopy var_9C
  loc_606ABE: FLdRfVar var_9C
  loc_606AC1: LitStr "TIEMPO_CIERRE_VENTANA"
  loc_606AC4: FStStrCopy var_98
  loc_606AC7: FLdRfVar var_98
  loc_606ACA: ImpAdCallI2 Proc_53_9_613F58(, )
  loc_606ACF: CVarStr var_AC
  loc_606AD2: FStVar var_94
  loc_606AD6: FFreeStr var_98 = ""
  loc_606ADD: FLdRfVar var_AC
  loc_606AE0: ImpAdCallFPR4  = Time
  loc_606AE5: FLdRfVar var_AC
  loc_606AE8: FLdPr Me
  loc_606AEB: MemLdRfVar from_stack_1.global_64
  loc_606AEE: SubVar var_BC
  loc_606AF2: FLdPr Me
  loc_606AF5: MemStVar
  loc_606AF9: FFree1Var var_AC = ""
  loc_606AFC: LitI4 1
  loc_606B01: LitI4 1
  loc_606B06: LitVarStr var_CC, "hh:mm"
  loc_606B0B: FStVarCopyObj var_AC
  loc_606B0E: FLdRfVar var_AC
  loc_606B11: FLdPr Me
  loc_606B14: MemLdRfVar from_stack_1.global_80
  loc_606B17: ImpAdCallI2 Format$(, )
  loc_606B1C: FStStrNoPop var_98
  loc_606B1F: FLdPr Me
  loc_606B22: MemStStrCopy
  loc_606B26: FFree1Str var_98
  loc_606B29: FFree1Var var_AC = ""
  loc_606B2C: FLdRfVar var_94
  loc_606B2F: LitVarStr var_CC, "00"
  loc_606B34: HardType
  loc_606B35: NeVarBool
  loc_606B37: BranchF loc_606B74
  loc_606B3A: LitVarI2 var_AC, 2
  loc_606B3F: LitI4 4
  loc_606B44: FLdPr Me
  loc_606B47: MemLdRfVar from_stack_1.global_96
  loc_606B4A: CVarRef
  loc_606B4F: FLdRfVar var_BC
  loc_606B52: ImpAdCallFPR4  = Mid(, , )
  loc_606B57: FLdRfVar var_BC
  loc_606B5A: FLdRfVar var_94
  loc_606B5D: GeVarBool
  loc_606B5F: FFreeVar var_AC = ""
  loc_606B66: BranchF loc_606B71
  loc_606B69: FLdPr Me
  loc_606B6C: Call frmGenericMsg.frmUnload()
  loc_606B71: Branch loc_606B88
  loc_606B74: LitI2_Byte 0
  loc_606B76: FLdPrThis
  loc_606B77: VCallAd Control_ID_tmrCerrar
  loc_606B7A: FStAdFunc var_F0
  loc_606B7D: FLdPr var_F0
  loc_606B80: Me.Enabled = from_stack_1b
  loc_606B85: FFree1Ad var_F0
  loc_606B88: ExitProcHresult
End Sub

Public Property Get Button1() '5D5820
  'Data Table: 41D424
  loc_5D57FC: FLdRfVar var_8E
  loc_5D57FF: FLdPr Me
  loc_5D5802: VCallAd Control_ID_cmd1
  loc_5D5805: FStAdFunc var_8C
  loc_5D5808: FLdPr var_8C
  loc_5D580B:  = Me.Enabled
  loc_5D5810: FLdI2 var_8E
  loc_5D5813: FStI2 var_86
  loc_5D5816: FFree1Ad var_8C
  loc_5D5819: ExitProcCbHresult
End Sub

Public Property Let Button1(value) '5D17B4
  'Data Table: 41D424
  loc_5D179C: ILdI2 value
  loc_5D179F: FLdPr Me
  loc_5D17A2: VCallAd Control_ID_cmd1
  loc_5D17A5: FStAdFunc var_88
  loc_5D17A8: FLdPr var_88
  loc_5D17AB: Me.Enabled = from_stack_1b
  loc_5D17B0: FFree1Ad var_88
  loc_5D17B3: ExitProcHresult
End Sub

Public Property Get Button1Text() '5D7B50
  'Data Table: 41D424
  loc_5D7B28: ZeroRetVal
  loc_5D7B2A: FLdRfVar var_90
  loc_5D7B2D: FLdPr Me
  loc_5D7B30: VCallAd Control_ID_cmd1
  loc_5D7B33: FStAdFunc var_8C
  loc_5D7B36: FLdPr var_8C
  loc_5D7B39:  = Me.Caption
  loc_5D7B3E: FLdZeroAd var_90
  loc_5D7B41: FStStr var_88
  loc_5D7B44: FFree1Ad var_8C
  loc_5D7B47: ExitProcCbHresult
End Sub

Public Property Let Button1Text(value) '5D1048
  'Data Table: 41D424
  loc_5D1030: ILdI4 value
  loc_5D1033: FLdPr Me
  loc_5D1036: VCallAd Control_ID_cmd1
  loc_5D1039: FStAdFunc var_88
  loc_5D103C: FLdPr var_88
  loc_5D103F: Me.Caption = from_stack_1
  loc_5D1044: FFree1Ad var_88
  loc_5D1047: ExitProcHresult
End Sub

Public Property Get Button1Visible() '5D5B38
  'Data Table: 41D424
  loc_5D5B14: FLdRfVar var_8E
  loc_5D5B17: FLdPr Me
  loc_5D5B1A: VCallAd Control_ID_cmd1
  loc_5D5B1D: FStAdFunc var_8C
  loc_5D5B20: FLdPr var_8C
  loc_5D5B23:  = Me.Visible
  loc_5D5B28: FLdI2 var_8E
  loc_5D5B2B: FStI2 var_86
  loc_5D5B2E: FFree1Ad var_8C
  loc_5D5B31: ExitProcCbHresult
End Sub

Public Property Let Button1Visible(value) '5D1094
  'Data Table: 41D424
  loc_5D107C: ILdI2 value
  loc_5D107F: FLdPr Me
  loc_5D1082: VCallAd Control_ID_cmd1
  loc_5D1085: FStAdFunc var_88
  loc_5D1088: FLdPr var_88
  loc_5D108B: Me.Visible = from_stack_1b
  loc_5D1090: FFree1Ad var_88
  loc_5D1093: ExitProcHresult
End Sub

Public Property Get Button2() '5D5B90
  'Data Table: 41D424
  loc_5D5B6C: FLdRfVar var_8E
  loc_5D5B6F: FLdPr Me
  loc_5D5B72: VCallAd Control_ID_cmd2
  loc_5D5B75: FStAdFunc var_8C
  loc_5D5B78: FLdPr var_8C
  loc_5D5B7B:  = Me.Enabled
  loc_5D5B80: FLdI2 var_8E
  loc_5D5B83: FStI2 var_86
  loc_5D5B86: FFree1Ad var_8C
  loc_5D5B89: ExitProcCbHresult
End Sub

Public Property Let Button2(value) '5D10E0
  'Data Table: 41D424
  loc_5D10C8: ILdI2 value
  loc_5D10CB: FLdPr Me
  loc_5D10CE: VCallAd Control_ID_cmd2
  loc_5D10D1: FStAdFunc var_88
  loc_5D10D4: FLdPr var_88
  loc_5D10D7: Me.Enabled = from_stack_1b
  loc_5D10DC: FFree1Ad var_88
  loc_5D10DF: ExitProcHresult
End Sub

Public Property Get Button2Text() '5D7AEC
  'Data Table: 41D424
  loc_5D7AC4: ZeroRetVal
  loc_5D7AC6: FLdRfVar var_90
  loc_5D7AC9: FLdPr Me
  loc_5D7ACC: VCallAd Control_ID_cmd1
  loc_5D7ACF: FStAdFunc var_8C
  loc_5D7AD2: FLdPr var_8C
  loc_5D7AD5:  = Me.Caption
  loc_5D7ADA: FLdZeroAd var_90
  loc_5D7ADD: FStStr var_88
  loc_5D7AE0: FFree1Ad var_8C
  loc_5D7AE3: ExitProcCbHresult
End Sub

Public Property Let Button2Text(value) '5D1178
  'Data Table: 41D424
  loc_5D1160: ILdI4 value
  loc_5D1163: FLdPr Me
  loc_5D1166: VCallAd Control_ID_cmd2
  loc_5D1169: FStAdFunc var_88
  loc_5D116C: FLdPr var_88
  loc_5D116F: Me.Caption = from_stack_1
  loc_5D1174: FFree1Ad var_88
  loc_5D1177: ExitProcHresult
End Sub

Public Property Get Button2Visible() '5D5BE8
  'Data Table: 41D424
  loc_5D5BC4: FLdRfVar var_8E
  loc_5D5BC7: FLdPr Me
  loc_5D5BCA: VCallAd Control_ID_cmd2
  loc_5D5BCD: FStAdFunc var_8C
  loc_5D5BD0: FLdPr var_8C
  loc_5D5BD3:  = Me.Visible
  loc_5D5BD8: FLdI2 var_8E
  loc_5D5BDB: FStI2 var_86
  loc_5D5BDE: FFree1Ad var_8C
  loc_5D5BE1: ExitProcCbHresult
End Sub

Public Property Let Button2Visible(value) '5D1210
  'Data Table: 41D424
  loc_5D11F8: ILdI2 value
  loc_5D11FB: FLdPr Me
  loc_5D11FE: VCallAd Control_ID_cmd2
  loc_5D1201: FStAdFunc var_88
  loc_5D1204: FLdPr var_88
  loc_5D1207: Me.Visible = from_stack_1b
  loc_5D120C: FFree1Ad var_88
  loc_5D120F: ExitProcHresult
End Sub

Public Property Get TimerInterval() '5D5DF8
  'Data Table: 41D424
  loc_5D5DD4: FLdRfVar var_90
  loc_5D5DD7: FLdPr Me
  loc_5D5DDA: VCallAd Control_ID_tmrGeneric
  loc_5D5DDD: FStAdFunc var_8C
  loc_5D5DE0: FLdPr var_8C
  loc_5D5DE3:  = Me.Interval
  loc_5D5DE8: ILdRf var_90
  loc_5D5DEB: CI2I4
  loc_5D5DEC: FStI2 var_86
  loc_5D5DEF: FFree1Ad var_8C
  loc_5D5DF2: ExitProcCbHresult
End Sub

Public Property Let TimerInterval(value) '5D3600
  'Data Table: 41D424
  loc_5D35E4: ILdI2 value
  loc_5D35E7: CI4UI1
  loc_5D35E8: FLdPr Me
  loc_5D35EB: VCallAd Control_ID_tmrGeneric
  loc_5D35EE: FStAdFunc var_88
  loc_5D35F1: FLdPr var_88
  loc_5D35F4: Me.Interval = from_stack_1
  loc_5D35F9: FFree1Ad var_88
  loc_5D35FC: ExitProcHresult
  loc_5D35FD: IStI2 Me0E
End Sub

Public Property Get TimerEnable() '5D6008
  'Data Table: 41D424
  loc_5D5FE4: FLdRfVar var_8E
  loc_5D5FE7: FLdPr Me
  loc_5D5FEA: VCallAd Control_ID_tmrGeneric
  loc_5D5FED: FStAdFunc var_8C
  loc_5D5FF0: FLdPr var_8C
  loc_5D5FF3:  = Me.Enabled
  loc_5D5FF8: FLdI2 var_8E
  loc_5D5FFB: FStI2 var_86
  loc_5D5FFE: FFree1Ad var_8C
  loc_5D6001: ExitProcCbHresult
End Sub

Public Property Let TimerEnable(value) '5D1340
  'Data Table: 41D424
  loc_5D1328: ILdI2 value
  loc_5D132B: FLdPr Me
  loc_5D132E: VCallAd Control_ID_tmrGeneric
  loc_5D1331: FStAdFunc var_88
  loc_5D1334: FLdPr var_88
  loc_5D1337: Me.Enabled = from_stack_1b
  loc_5D133C: FFree1Ad var_88
  loc_5D133F: ExitProcHresult
End Sub

Public Property Get MsgTitle() '5D7C18
  'Data Table: 41D424
  loc_5D7BF0: ZeroRetVal
  loc_5D7BF2: FLdRfVar var_90
  loc_5D7BF5: FLdPr Me
  loc_5D7BF8: VCallAd Control_ID_lblTitle
  loc_5D7BFB: FStAdFunc var_8C
  loc_5D7BFE: FLdPr var_8C
  loc_5D7C01:  = Me.Caption
  loc_5D7C06: FLdZeroAd var_90
  loc_5D7C09: FStStr var_88
  loc_5D7C0C: FFree1Ad var_8C
  loc_5D7C0F: ExitProcCbHresult
End Sub

Public Property Let MsgTitle(value) '5D138C
  'Data Table: 41D424
  loc_5D1374: ILdI4 value
  loc_5D1377: FLdPr Me
  loc_5D137A: VCallAd Control_ID_lblTitle
  loc_5D137D: FStAdFunc var_88
  loc_5D1380: FLdPr var_88
  loc_5D1383: Me.Caption = from_stack_1
  loc_5D1388: FFree1Ad var_88
  loc_5D138B: ExitProcHresult
End Sub

Public Property Get Msg() '5D82BC
  'Data Table: 41D424
  loc_5D8294: ZeroRetVal
  loc_5D8296: FLdRfVar var_90
  loc_5D8299: FLdPr Me
  loc_5D829C: VCallAd Control_ID_lblMessage
  loc_5D829F: FStAdFunc var_8C
  loc_5D82A2: FLdPr var_8C
  loc_5D82A5:  = Me.Caption
  loc_5D82AA: FLdZeroAd var_90
  loc_5D82AD: FStStr var_88
  loc_5D82B0: FFree1Ad var_8C
  loc_5D82B3: ExitProcCbHresult
End Sub

Public Property Let Msg(value) '5D1800
  'Data Table: 41D424
  loc_5D17E8: ILdI4 value
  loc_5D17EB: FLdPr Me
  loc_5D17EE: VCallAd Control_ID_lblMessage
  loc_5D17F1: FStAdFunc var_88
  loc_5D17F4: FLdPr var_88
  loc_5D17F7: Me.Caption = from_stack_1
  loc_5D17FC: FFree1Ad var_88
  loc_5D17FF: ExitProcHresult
End Sub

Public Property Get GridVisible() '5CE634
  'Data Table: 41D424
  loc_5CE624: FLdPr Me
  loc_5CE627: MemLdI2 global_60
  loc_5CE62A: FStI2 var_86
  loc_5CE62D: ExitProcCbHresult
End Sub

Public Property Let GridVisible(value) '5CA01C
  'Data Table: 41D424
  loc_5CA010: ILdI2 value
  loc_5CA013: FLdPr Me
  loc_5CA016: MemStI2 global_60
  loc_5CA019: ExitProcHresult
End Sub

Public Sub frmUnload() '5D14BC
  'Data Table: 41D424
  loc_5D14A4: ILdRf Me
  loc_5D14A7: FStAdNoPop
  loc_5D14AB: ImpAdLdRf MemVar_7520D4
  loc_5D14AE: NewIfNullPr Global
  loc_5D14B1: Global.Unload from_stack_1
  loc_5D14B6: FFree1Ad var_88
  loc_5D14B9: ExitProcHresult
End Sub

Private Function Proc_143_29_5EB4C8() '5EB4C8
  'Data Table: 41D424
  loc_5EB43C: LitI2 4380
  loc_5EB43F: CR8I2
  loc_5EB440: PopFPR4
  loc_5EB441: FLdPr Me
  loc_5EB444: Me.Height = from_stack_1s
  loc_5EB449: LitI2 2055
  loc_5EB44C: CR8I2
  loc_5EB44D: PopFPR4
  loc_5EB44E: FLdPr Me
  loc_5EB451: VCallAd Control_ID_lblMessage
  loc_5EB454: FStAdFunc var_88
  loc_5EB457: FLdPr var_88
  loc_5EB45A: Me.Height = from_stack_1s
  loc_5EB45F: FFree1Ad var_88
  loc_5EB462: LitI2 4095
  loc_5EB465: CR8I2
  loc_5EB466: PopFPR4
  loc_5EB467: FLdPr Me
  loc_5EB46A: VCallAd Control_ID_frameMain
  loc_5EB46D: FStAdFunc var_88
  loc_5EB470: FLdPr var_88
  loc_5EB473: Me.Height = from_stack_1s
  loc_5EB478: FFree1Ad var_88
  loc_5EB47B: LitI2 3360
  loc_5EB47E: CR8I2
  loc_5EB47F: PopFPR4
  loc_5EB480: FLdPr Me
  loc_5EB483: VCallAd Control_ID_cmd1
  loc_5EB486: FStAdFunc var_88
  loc_5EB489: FLdPr var_88
  loc_5EB48C: Me.Top = from_stack_1s
  loc_5EB491: FFree1Ad var_88
  loc_5EB494: LitI2 3360
  loc_5EB497: CR8I2
  loc_5EB498: PopFPR4
  loc_5EB499: FLdPr Me
  loc_5EB49C: VCallAd Control_ID_cmd2
  loc_5EB49F: FStAdFunc var_88
  loc_5EB4A2: FLdPr var_88
  loc_5EB4A5: Me.Top = from_stack_1s
  loc_5EB4AA: FFree1Ad var_88
  loc_5EB4AD: LitVar_FALSE
  loc_5EB4B1: PopAdLdVar
  loc_5EB4B2: FLdPr Me
  loc_5EB4B5: VCallAd Control_ID_grid
  loc_5EB4B8: FStAdFunc var_88
  loc_5EB4BB: FLdPr var_88
  loc_5EB4BE: LateIdSt
  loc_5EB4C3: FFree1Ad var_88
  loc_5EB4C6: ExitProcHresult
End Function
