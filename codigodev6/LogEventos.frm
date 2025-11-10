VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form LogEventos
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 60
  ClientTop = 75
  ClientWidth = 11910
  ClientHeight = 8610
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.VScrollBar VScroll1
    Left = 10560
    Top = 1440
    Width = 495
    Height = 5895
    TabIndex = 4
    Min = 1
    Max = 2
    LargeChange = 10
    Value = 1
  End
  Begin Threed.SSPanel SSPanel1
    Index = 1
    Left = 840
    Top = 2040
    Width = 9615
    Height = 495
    TabIndex = 5
    OleObjectBlob = "LogEventos.frx":0000
    Begin VB.CheckBox LTurno
      Index = 1
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 9
    End
    Begin VB.CheckBox LDia
      Index = 1
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 8
    End
    Begin VB.CheckBox LMes
      Index = 1
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 7
    End
    Begin VB.CheckBox LCia
      Index = 1
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 6
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 1
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 10
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 2
    Left = 840
    Top = 2640
    Width = 9615
    Height = 495
    TabIndex = 11
    OleObjectBlob = "LogEventos.frx":0079
    Begin VB.CheckBox LTurno
      Index = 2
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 15
    End
    Begin VB.CheckBox LDia
      Index = 2
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 14
    End
    Begin VB.CheckBox LMes
      Index = 2
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 13
    End
    Begin VB.CheckBox LCia
      Index = 2
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 12
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 2
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 16
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 3
    Left = 840
    Top = 3240
    Width = 9615
    Height = 495
    TabIndex = 17
    OleObjectBlob = "LogEventos.frx":00F2
    Begin VB.CheckBox LTurno
      Index = 3
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 21
    End
    Begin VB.CheckBox LDia
      Index = 3
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 20
    End
    Begin VB.CheckBox LMes
      Index = 3
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 19
    End
    Begin VB.CheckBox LCia
      Index = 3
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 18
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 3
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 22
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 4
    Left = 840
    Top = 3840
    Width = 9615
    Height = 495
    TabIndex = 23
    OleObjectBlob = "LogEventos.frx":016B
    Begin VB.CheckBox LTurno
      Index = 4
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 27
    End
    Begin VB.CheckBox LDia
      Index = 4
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 26
    End
    Begin VB.CheckBox LMes
      Index = 4
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 25
    End
    Begin VB.CheckBox LCia
      Index = 4
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 24
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 4
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 28
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 6
    Left = 840
    Top = 5040
    Width = 9615
    Height = 495
    TabIndex = 29
    OleObjectBlob = "LogEventos.frx":01E4
    Begin VB.CheckBox LTurno
      Index = 6
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 33
    End
    Begin VB.CheckBox LDia
      Index = 6
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 32
    End
    Begin VB.CheckBox LMes
      Index = 6
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 31
    End
    Begin VB.CheckBox LCia
      Index = 6
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 30
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 6
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 34
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 7
    Left = 840
    Top = 5640
    Width = 9615
    Height = 495
    TabIndex = 35
    OleObjectBlob = "LogEventos.frx":025D
    Begin VB.CheckBox LTurno
      Index = 7
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 39
    End
    Begin VB.CheckBox LDia
      Index = 7
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 38
    End
    Begin VB.CheckBox LMes
      Index = 7
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 37
    End
    Begin VB.CheckBox LCia
      Index = 7
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 36
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 7
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 40
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 8
    Left = 840
    Top = 6240
    Width = 9615
    Height = 495
    TabIndex = 41
    OleObjectBlob = "LogEventos.frx":02D6
    Begin VB.CheckBox LTurno
      Index = 8
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 45
    End
    Begin VB.CheckBox LDia
      Index = 8
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 44
    End
    Begin VB.CheckBox LMes
      Index = 8
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 43
    End
    Begin VB.CheckBox LCia
      Index = 8
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 42
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 8
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 46
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 9
    Left = 840
    Top = 6840
    Width = 9615
    Height = 495
    TabIndex = 47
    OleObjectBlob = "LogEventos.frx":034F
    Begin VB.CheckBox LCia
      Index = 9
      Left = 8880
      Top = 120
      Width = 255
      Height = 195
      TabIndex = 51
    End
    Begin VB.CheckBox LMes
      Index = 9
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 50
    End
    Begin VB.CheckBox LDia
      Index = 9
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 49
    End
    Begin VB.CheckBox LTurno
      Index = 9
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 48
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 9
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 52
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 0
    Left = 840
    Top = 1440
    Width = 9615
    Height = 495
    TabIndex = 53
    OleObjectBlob = "LogEventos.frx":03C8
    Begin VB.CheckBox LTurno
      Index = 0
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 57
    End
    Begin VB.CheckBox LDia
      Index = 0
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 56
    End
    Begin VB.CheckBox LMes
      Index = 0
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 55
    End
    Begin VB.CheckBox LCia
      Index = 0
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 54
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 0
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 58
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 5
    Left = 840
    Top = 4440
    Width = 9615
    Height = 495
    TabIndex = 59
    OleObjectBlob = "LogEventos.frx":0441
    Begin VB.CheckBox LCia
      Index = 5
      Left = 8880
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 63
    End
    Begin VB.CheckBox LMes
      Index = 5
      Left = 8040
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 62
    End
    Begin VB.CheckBox LDia
      Index = 5
      Left = 7260
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 61
    End
    Begin VB.CheckBox LTurno
      Index = 5
      Left = 6480
      Top = 180
      Width = 255
      Height = 195
      TabIndex = 60
    End
    Begin VB.Label Item
      Caption = "Entrada de un surtidor en la linea de comunicaciones"
      Index = 5
      Left = 120
      Top = 120
      Width = 5895
      Height = 315
      TabIndex = 64
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSCommand SSCommand1
    Left = 2280
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 65
    OleObjectBlob = "LogEventos.frx":04BA
  End
  Begin Threed.SSCommand SSCommand2
    Left = 6600
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 66
    OleObjectBlob = "LogEventos.frx":051F
  End
  Begin VB.Label Label1
    Caption = "Configuración de Eventos"
    BackColor = &H80000002&
    ForeColor = &HFFFFFF&
    Left = 0
    Top = 120
    Width = 11895
    Height = 615
    TabIndex = 67
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 26.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Cía"
    ForeColor = &H0&
    Left = 9600
    Top = 1080
    Width = 615
    Height = 375
    TabIndex = 3
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Turno"
    ForeColor = &H0&
    Left = 7200
    Top = 1080
    Width = 615
    Height = 375
    TabIndex = 2
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Día"
    ForeColor = &H0&
    Left = 7920
    Top = 1080
    Width = 615
    Height = 375
    TabIndex = 1
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Mes"
    ForeColor = &H0&
    Left = 8760
    Top = 1080
    Width = 615
    Height = 375
    TabIndex = 0
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "LogEventos"


Private Sub SSCommand1_UnknownEvent_8 '5D22B0
  'Data Table: 429AB0
  loc_5D2298: ILdRf Me
  loc_5D229B: FStAdNoPop
  loc_5D229F: ImpAdLdRf MemVar_7520D4
  loc_5D22A2: NewIfNullPr Global
  loc_5D22A5: Global.Unload from_stack_1
  loc_5D22AA: FFree1Ad var_88
  loc_5D22AD: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5EFB30
  'Data Table: 429AB0
  loc_5EFAA0: from_stack_1v = Proc_69_10_63B0E8()
  loc_5EFAA5: FLdRfVar var_9C
  loc_5EFAA8: FLdPr Me
  loc_5EFAAB: MemLdRfVar from_stack_1.global_6105
  loc_5EFAAE: LdFixedStr
  loc_5EFAB1: FStStrNoPop var_8C
  loc_5EFAB4: FLdRfVar var_88
  loc_5EFAB7: ImpAdLdRf MemVar_74C760
  loc_5EFABA: NewIfNullPr Formx
  loc_5EFABD: from_stack_1v = Formx.global_4589716Get()
  loc_5EFAC2: FLdPr var_88
  loc_5EFAC5:  = Formx.BorderStyle
  loc_5EFACA: ILdRf var_8C
  loc_5EFACD: FLdPr Me
  loc_5EFAD0: MemLdRfVar from_stack_1.global_6105
  loc_5EFAD3: StFixedStr
  loc_5EFAD6: FLdRfVar var_9C
  loc_5EFAD9: NotVar var_AC
  loc_5EFADD: CBoolVarNull
  loc_5EFADF: FFree1Str var_8C
  loc_5EFAE2: FFree1Ad var_88
  loc_5EFAE5: FFree1Var var_9C = ""
  loc_5EFAE8: BranchF loc_5EFB17
  loc_5EFAEB: FLdRfVar var_9C
  loc_5EFAEE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5EFAF3: FLdRfVar var_9C
  loc_5EFAF6: CBoolVarNull
  loc_5EFAF8: FFree1Var var_9C = ""
  loc_5EFAFB: BranchF loc_5EFB14
  loc_5EFAFE: ILdRf Me
  loc_5EFB01: FStAdNoPop
  loc_5EFB05: ImpAdLdRf MemVar_7520D4
  loc_5EFB08: NewIfNullPr Global
  loc_5EFB0B: Global.Unload from_stack_1
  loc_5EFB10: FFree1Ad var_88
  loc_5EFB13: ExitProcHresult
  loc_5EFB14: Branch loc_5EFAA5
  loc_5EFB17: ILdRf Me
  loc_5EFB1A: FStAdNoPop
  loc_5EFB1E: ImpAdLdRf MemVar_7520D4
  loc_5EFB21: NewIfNullPr Global
  loc_5EFB24: Global.Unload from_stack_1
  loc_5EFB29: FFree1Ad var_88
  loc_5EFB2C: ExitProcHresult
End Sub

Private Sub LDia_Click(Index As Integer) '5DF7F0
  'Data Table: 429AB0
  loc_5DF7A0: FLdRfVar var_8E
  loc_5DF7A3: FLdRfVar var_8C
  loc_5DF7A6: ILdI2 Index
  loc_5DF7A9: FLdPrThis
  loc_5DF7AA: VCallAd Control_ID_LDia
  loc_5DF7AD: FStAdFunc var_88
  loc_5DF7B0: FLdPr var_88
  loc_5DF7B3: Set from_stack_2 = Me(from_stack_1)
  loc_5DF7B8: FLdPr var_8C
  loc_5DF7BB:  = Me.Value
  loc_5DF7C0: FLdI2 var_8E
  loc_5DF7C3: CUI1I2
  loc_5DF7C5: ILdI2 Index
  loc_5DF7C8: FLdPr Me
  loc_5DF7CB: MemLdI2 global_52
  loc_5DF7CE: AddI2
  loc_5DF7CF: CI4UI1
  loc_5DF7D0: FLdPr Me
  loc_5DF7D3: MemLdRfVar from_stack_1.global_80
  loc_5DF7D6: Ary1LdI2
  loc_5DF7D7: CI4UI1
  loc_5DF7D8: FLdPr Me
  loc_5DF7DB: MemLdRfVar from_stack_1.global_3104
  loc_5DF7DE: AryInRecLdPr
  loc_5DF7E4: MemStUI1
  loc_5DF7E8: FFreeAd var_88 = ""
  loc_5DF7EF: ExitProcHresult
End Sub

Private Sub LTurno_Click(Index As Integer) '5DFB20
  'Data Table: 429AB0
  loc_5DFAD0: FLdRfVar var_8E
  loc_5DFAD3: FLdRfVar var_8C
  loc_5DFAD6: ILdI2 Index
  loc_5DFAD9: FLdPrThis
  loc_5DFADA: VCallAd Control_ID_LTurno
  loc_5DFADD: FStAdFunc var_88
  loc_5DFAE0: FLdPr var_88
  loc_5DFAE3: Set from_stack_2 = Me(from_stack_1)
  loc_5DFAE8: FLdPr var_8C
  loc_5DFAEB:  = Me.Value
  loc_5DFAF0: FLdI2 var_8E
  loc_5DFAF3: CUI1I2
  loc_5DFAF5: ILdI2 Index
  loc_5DFAF8: FLdPr Me
  loc_5DFAFB: MemLdI2 global_52
  loc_5DFAFE: AddI2
  loc_5DFAFF: CI4UI1
  loc_5DFB00: FLdPr Me
  loc_5DFB03: MemLdRfVar from_stack_1.global_80
  loc_5DFB06: Ary1LdI2
  loc_5DFB07: CI4UI1
  loc_5DFB08: FLdPr Me
  loc_5DFB0B: MemLdRfVar from_stack_1.global_2504
  loc_5DFB0E: AryInRecLdPr
  loc_5DFB14: MemStUI1
  loc_5DFB18: FFreeAd var_88 = ""
  loc_5DFB1F: ExitProcHresult
End Sub

Private Sub LMes_Click(Index As Integer) '5DF900
  'Data Table: 429AB0
  loc_5DF8B0: FLdRfVar var_8E
  loc_5DF8B3: FLdRfVar var_8C
  loc_5DF8B6: ILdI2 Index
  loc_5DF8B9: FLdPrThis
  loc_5DF8BA: VCallAd Control_ID_LMes
  loc_5DF8BD: FStAdFunc var_88
  loc_5DF8C0: FLdPr var_88
  loc_5DF8C3: Set from_stack_2 = Me(from_stack_1)
  loc_5DF8C8: FLdPr var_8C
  loc_5DF8CB:  = Me.Value
  loc_5DF8D0: FLdI2 var_8E
  loc_5DF8D3: CUI1I2
  loc_5DF8D5: ILdI2 Index
  loc_5DF8D8: FLdPr Me
  loc_5DF8DB: MemLdI2 global_52
  loc_5DF8DE: AddI2
  loc_5DF8DF: CI4UI1
  loc_5DF8E0: FLdPr Me
  loc_5DF8E3: MemLdRfVar from_stack_1.global_80
  loc_5DF8E6: Ary1LdI2
  loc_5DF8E7: CI4UI1
  loc_5DF8E8: FLdPr Me
  loc_5DF8EB: MemLdRfVar from_stack_1.global_3704
  loc_5DF8EE: AryInRecLdPr
  loc_5DF8F4: MemStUI1
  loc_5DF8F8: FFreeAd var_88 = ""
  loc_5DF8FF: ExitProcHresult
End Sub

Private Sub VScroll1_Change() '5D60B8
  'Data Table: 429AB0
  loc_5D6094: FLdRfVar var_8A
  loc_5D6097: FLdPrThis
  loc_5D6098: VCallAd Control_ID_VScroll1
  loc_5D609B: FStAdFunc var_88
  loc_5D609E: FLdPr var_88
  loc_5D60A1:  = Me.Value
  loc_5D60A6: FLdI2 var_8A
  loc_5D60A9: PopTmpLdAd2 var_8C
  loc_5D60AC: from_stack_2v = Proc_69_9_66A754(from_stack_1v)
  loc_5D60B1: FFree1Ad var_88
  loc_5D60B4: ExitProcHresult
End Sub

Private Sub LCia_Click(Index As Integer) '5DF878
  'Data Table: 429AB0
  loc_5DF828: FLdRfVar var_8E
  loc_5DF82B: FLdRfVar var_8C
  loc_5DF82E: ILdI2 Index
  loc_5DF831: FLdPrThis
  loc_5DF832: VCallAd Control_ID_LCia
  loc_5DF835: FStAdFunc var_88
  loc_5DF838: FLdPr var_88
  loc_5DF83B: Set from_stack_2 = Me(from_stack_1)
  loc_5DF840: FLdPr var_8C
  loc_5DF843:  = Me.Value
  loc_5DF848: FLdI2 var_8E
  loc_5DF84B: CUI1I2
  loc_5DF84D: ILdI2 Index
  loc_5DF850: FLdPr Me
  loc_5DF853: MemLdI2 global_52
  loc_5DF856: AddI2
  loc_5DF857: CI4UI1
  loc_5DF858: FLdPr Me
  loc_5DF85B: MemLdRfVar from_stack_1.global_80
  loc_5DF85E: Ary1LdI2
  loc_5DF85F: CI4UI1
  loc_5DF860: FLdPr Me
  loc_5DF863: MemLdRfVar from_stack_1.global_4304
  loc_5DF866: AryInRecLdPr
  loc_5DF86C: MemStUI1
  loc_5DF870: FFreeAd var_88 = ""
  loc_5DF877: ExitProcHresult
End Sub

Private Sub Form_Load() '5E5B48
  'Data Table: 429AB0
  loc_5E5AD4: LitI2_Byte 0
  loc_5E5AD6: CR8I2
  loc_5E5AD7: PopFPR4
  loc_5E5AD8: FLdPr Me
  loc_5E5ADB: Me.Left = from_stack_1s
  loc_5E5AE0: LitI2_Byte 0
  loc_5E5AE2: CR8I2
  loc_5E5AE3: PopFPR4
  loc_5E5AE4: FLdPr Me
  loc_5E5AE7: Me.Top = from_stack_1s
  loc_5E5AEC: FLdRfVar var_8C
  loc_5E5AEF: FLdRfVar var_88
  loc_5E5AF2: ImpAdLdRf MemVar_7520D4
  loc_5E5AF5: NewIfNullPr Global
  loc_5E5AF8:  = Global.Screen
  loc_5E5AFD: FLdPr var_88
  loc_5E5B00:  = Screen.TwipsPerPixelY
  loc_5E5B05: LitI2 800
  loc_5E5B08: CR8I2
  loc_5E5B09: FLdFPR4 var_8C
  loc_5E5B0C: MulR8
  loc_5E5B0D: PopFPR4
  loc_5E5B0E: FLdPr Me
  loc_5E5B11: Me.Width = from_stack_1s
  loc_5E5B16: FFree1Ad var_88
  loc_5E5B19: FLdRfVar var_8C
  loc_5E5B1C: FLdRfVar var_88
  loc_5E5B1F: ImpAdLdRf MemVar_7520D4
  loc_5E5B22: NewIfNullPr Global
  loc_5E5B25:  = Global.Screen
  loc_5E5B2A: FLdPr var_88
  loc_5E5B2D:  = Screen.TwipsPerPixelX
  loc_5E5B32: LitI2 600
  loc_5E5B35: CR8I2
  loc_5E5B36: FLdFPR4 var_8C
  loc_5E5B39: MulR8
  loc_5E5B3A: PopFPR4
  loc_5E5B3B: FLdPr Me
  loc_5E5B3E: Me.Height = from_stack_1s
  loc_5E5B43: FFree1Ad var_88
  loc_5E5B46: ExitProcHresult
End Sub

Private Sub Form_Activate() '6901B8
  'Data Table: 429AB0
  loc_68FC00: from_stack_1v = Proc_69_15_5EFDBC()
  loc_68FC05: FLdRfVar var_1D8
  loc_68FC08: LitVar_Missing var_1D4
  loc_68FC0B: LitVar_Missing var_1B4
  loc_68FC0E: LitVar_Missing var_194
  loc_68FC11: LitVar_Missing var_174
  loc_68FC14: LitVar_Missing var_154
  loc_68FC17: LitVar_Missing var_134
  loc_68FC1A: LitVar_Missing var_114
  loc_68FC1D: LitVar_Missing var_F4
  loc_68FC20: LitVar_Missing var_D4
  loc_68FC23: LitVar_Missing var_B4
  loc_68FC26: LitStr "Configuración de Eventos"
  loc_68FC29: FStStrCopy var_94
  loc_68FC2C: FLdRfVar var_94
  loc_68FC2F: LitI4 1
  loc_68FC34: PopTmpLdAdStr var_90
  loc_68FC37: LitI2_Byte &H48
  loc_68FC39: PopTmpLdAd2 var_8C
  loc_68FC3C: ImpAdLdRf MemVar_74C7D0
  loc_68FC3F: NewIfNullPr clsMsg
  loc_68FC42: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FC47: ILdRf var_1D8
  loc_68FC4A: FLdPrThis
  loc_68FC4B: VCallAd Control_ID_Label1
  loc_68FC4E: FStAdFunc var_1DC
  loc_68FC51: FLdPr var_1DC
  loc_68FC54: Me.Caption = from_stack_1
  loc_68FC59: FFreeStr var_94 = ""
  loc_68FC60: FFree1Ad var_1DC
  loc_68FC63: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68FC7A: FLdRfVar var_1D8
  loc_68FC7D: LitVar_Missing var_1D4
  loc_68FC80: LitVar_Missing var_1B4
  loc_68FC83: LitVar_Missing var_194
  loc_68FC86: LitVar_Missing var_174
  loc_68FC89: LitVar_Missing var_154
  loc_68FC8C: LitVar_Missing var_134
  loc_68FC8F: LitVar_Missing var_114
  loc_68FC92: LitVar_Missing var_F4
  loc_68FC95: LitVar_Missing var_D4
  loc_68FC98: LitVar_Missing var_B4
  loc_68FC9B: LitStr "Turno"
  loc_68FC9E: FStStrCopy var_94
  loc_68FCA1: FLdRfVar var_94
  loc_68FCA4: LitI4 2
  loc_68FCA9: PopTmpLdAdStr var_90
  loc_68FCAC: LitI2_Byte &H48
  loc_68FCAE: PopTmpLdAd2 var_8C
  loc_68FCB1: ImpAdLdRf MemVar_74C7D0
  loc_68FCB4: NewIfNullPr clsMsg
  loc_68FCB7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FCBC: ILdRf var_1D8
  loc_68FCBF: FLdPrThis
  loc_68FCC0: VCallAd Control_ID_Label4
  loc_68FCC3: FStAdFunc var_1DC
  loc_68FCC6: FLdPr var_1DC
  loc_68FCC9: Me.Caption = from_stack_1
  loc_68FCCE: FFreeStr var_94 = ""
  loc_68FCD5: FFree1Ad var_1DC
  loc_68FCD8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68FCEF: FLdRfVar var_1D8
  loc_68FCF2: LitVar_Missing var_1D4
  loc_68FCF5: LitVar_Missing var_1B4
  loc_68FCF8: LitVar_Missing var_194
  loc_68FCFB: LitVar_Missing var_174
  loc_68FCFE: LitVar_Missing var_154
  loc_68FD01: LitVar_Missing var_134
  loc_68FD04: LitVar_Missing var_114
  loc_68FD07: LitVar_Missing var_F4
  loc_68FD0A: LitVar_Missing var_D4
  loc_68FD0D: LitVar_Missing var_B4
  loc_68FD10: LitStr "Día"
  loc_68FD13: FStStrCopy var_94
  loc_68FD16: FLdRfVar var_94
  loc_68FD19: LitI4 3
  loc_68FD1E: PopTmpLdAdStr var_90
  loc_68FD21: LitI2_Byte &H48
  loc_68FD23: PopTmpLdAd2 var_8C
  loc_68FD26: ImpAdLdRf MemVar_74C7D0
  loc_68FD29: NewIfNullPr clsMsg
  loc_68FD2C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FD31: ILdRf var_1D8
  loc_68FD34: FLdPrThis
  loc_68FD35: VCallAd Control_ID_Label3
  loc_68FD38: FStAdFunc var_1DC
  loc_68FD3B: FLdPr var_1DC
  loc_68FD3E: Me.Caption = from_stack_1
  loc_68FD43: FFreeStr var_94 = ""
  loc_68FD4A: FFree1Ad var_1DC
  loc_68FD4D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68FD64: FLdRfVar var_1D8
  loc_68FD67: LitVar_Missing var_1D4
  loc_68FD6A: LitVar_Missing var_1B4
  loc_68FD6D: LitVar_Missing var_194
  loc_68FD70: LitVar_Missing var_174
  loc_68FD73: LitVar_Missing var_154
  loc_68FD76: LitVar_Missing var_134
  loc_68FD79: LitVar_Missing var_114
  loc_68FD7C: LitVar_Missing var_F4
  loc_68FD7F: LitVar_Missing var_D4
  loc_68FD82: LitVar_Missing var_B4
  loc_68FD85: LitStr "Mes"
  loc_68FD88: FStStrCopy var_94
  loc_68FD8B: FLdRfVar var_94
  loc_68FD8E: LitI4 4
  loc_68FD93: PopTmpLdAdStr var_90
  loc_68FD96: LitI2_Byte &H48
  loc_68FD98: PopTmpLdAd2 var_8C
  loc_68FD9B: ImpAdLdRf MemVar_74C7D0
  loc_68FD9E: NewIfNullPr clsMsg
  loc_68FDA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FDA6: ILdRf var_1D8
  loc_68FDA9: FLdPrThis
  loc_68FDAA: VCallAd Control_ID_Label2
  loc_68FDAD: FStAdFunc var_1DC
  loc_68FDB0: FLdPr var_1DC
  loc_68FDB3: Me.Caption = from_stack_1
  loc_68FDB8: FFreeStr var_94 = ""
  loc_68FDBF: FFree1Ad var_1DC
  loc_68FDC2: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68FDD9: FLdRfVar var_1D8
  loc_68FDDC: LitVar_Missing var_1D4
  loc_68FDDF: LitVar_Missing var_1B4
  loc_68FDE2: LitVar_Missing var_194
  loc_68FDE5: LitVar_Missing var_174
  loc_68FDE8: LitVar_Missing var_154
  loc_68FDEB: LitVar_Missing var_134
  loc_68FDEE: LitVar_Missing var_114
  loc_68FDF1: LitVar_Missing var_F4
  loc_68FDF4: LitVar_Missing var_D4
  loc_68FDF7: LitVar_Missing var_B4
  loc_68FDFA: LitStr "Cía"
  loc_68FDFD: FStStrCopy var_94
  loc_68FE00: FLdRfVar var_94
  loc_68FE03: LitI4 5
  loc_68FE08: PopTmpLdAdStr var_90
  loc_68FE0B: LitI2_Byte &H48
  loc_68FE0D: PopTmpLdAd2 var_8C
  loc_68FE10: ImpAdLdRf MemVar_74C7D0
  loc_68FE13: NewIfNullPr clsMsg
  loc_68FE16: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FE1B: ILdRf var_1D8
  loc_68FE1E: FLdPrThis
  loc_68FE1F: VCallAd Control_ID_Label5
  loc_68FE22: FStAdFunc var_1DC
  loc_68FE25: FLdPr var_1DC
  loc_68FE28: Me.Caption = from_stack_1
  loc_68FE2D: FFreeStr var_94 = ""
  loc_68FE34: FFree1Ad var_1DC
  loc_68FE37: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68FE4E: FLdRfVar var_1D8
  loc_68FE51: LitVar_Missing var_1D4
  loc_68FE54: LitVar_Missing var_1B4
  loc_68FE57: LitVar_Missing var_194
  loc_68FE5A: LitVar_Missing var_174
  loc_68FE5D: LitVar_Missing var_154
  loc_68FE60: LitVar_Missing var_134
  loc_68FE63: LitVar_Missing var_114
  loc_68FE66: LitVar_Missing var_F4
  loc_68FE69: LitVar_Missing var_D4
  loc_68FE6C: LitVar_Missing var_B4
  loc_68FE6F: LitStr "&Cancelar"
  loc_68FE72: FStStrCopy var_94
  loc_68FE75: FLdRfVar var_94
  loc_68FE78: LitI4 6
  loc_68FE7D: PopTmpLdAdStr var_90
  loc_68FE80: LitI2_Byte &H48
  loc_68FE82: PopTmpLdAd2 var_8C
  loc_68FE85: ImpAdLdRf MemVar_74C7D0
  loc_68FE88: NewIfNullPr clsMsg
  loc_68FE8B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FE90: FLdZeroAd var_1D8
  loc_68FE93: CVarStr var_1EC
  loc_68FE96: PopAdLdVar
  loc_68FE97: FLdPrThis
  loc_68FE98: VCallAd Control_ID_SSCommand1
  loc_68FE9B: FStAdFunc var_1DC
  loc_68FE9E: FLdPr var_1DC
  loc_68FEA1: LateIdSt
  loc_68FEA6: FFree1Str var_94
  loc_68FEA9: FFree1Ad var_1DC
  loc_68FEAC: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_68FEC5: FLdRfVar var_1D8
  loc_68FEC8: LitVar_Missing var_1D4
  loc_68FECB: LitVar_Missing var_1B4
  loc_68FECE: LitVar_Missing var_194
  loc_68FED1: LitVar_Missing var_174
  loc_68FED4: LitVar_Missing var_154
  loc_68FED7: LitVar_Missing var_134
  loc_68FEDA: LitVar_Missing var_114
  loc_68FEDD: LitVar_Missing var_F4
  loc_68FEE0: LitVar_Missing var_D4
  loc_68FEE3: LitVar_Missing var_B4
  loc_68FEE6: LitStr "&Aceptar"
  loc_68FEE9: FStStrCopy var_94
  loc_68FEEC: FLdRfVar var_94
  loc_68FEEF: LitI4 7
  loc_68FEF4: PopTmpLdAdStr var_90
  loc_68FEF7: LitI2_Byte &H48
  loc_68FEF9: PopTmpLdAd2 var_8C
  loc_68FEFC: ImpAdLdRf MemVar_74C7D0
  loc_68FEFF: NewIfNullPr clsMsg
  loc_68FF02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68FF07: FLdZeroAd var_1D8
  loc_68FF0A: CVarStr var_1EC
  loc_68FF0D: PopAdLdVar
  loc_68FF0E: FLdPrThis
  loc_68FF0F: VCallAd Control_ID_SSCommand2
  loc_68FF12: FStAdFunc var_1DC
  loc_68FF15: FLdPr var_1DC
  loc_68FF18: LateIdSt
  loc_68FF1D: FFree1Str var_94
  loc_68FF20: FFree1Ad var_1DC
  loc_68FF23: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_68FF3C: FLdRfVar var_8C
  loc_68FF3F: ImpAdLdRf MemVar_74A218
  loc_68FF42: NewIfNullPr clsUsers
  loc_68FF4A: LitVarI2 var_D4, 9
  loc_68FF4F: LitVarI2 var_B4, 6
  loc_68FF54: FLdI2 var_8C
  loc_68FF57: LitI2_Byte 6
  loc_68FF59: EqI2
  loc_68FF5A: CVarBoolI2 var_A4
  loc_68FF5E: FLdRfVar var_F4
  loc_68FF61: ImpAdCallFPR4  = IIf(, , )
  loc_68FF66: FLdRfVar var_F4
  loc_68FF69: CI2Var
  loc_68FF6A: FLdPr Me
  loc_68FF6D: MemStI2 global_7306
  loc_68FF70: FFreeVar var_A4 = "": var_B4 = "": var_D4 = ""
  loc_68FF7B: ImpAdLdUI1
  loc_68FF7F: CI2UI1
  loc_68FF81: FLdPr Me
  loc_68FF84: MemLdI2 global_7306
  loc_68FF87: GeI2
  loc_68FF88: BranchF loc_690021
  loc_68FF8B: LitI2 10680
  loc_68FF8E: CR8I2
  loc_68FF8F: PopFPR4
  loc_68FF90: FLdPrThis
  loc_68FF91: VCallAd Control_ID_VScroll1
  loc_68FF94: FStAdFunc var_1DC
  loc_68FF97: FLdPr var_1DC
  loc_68FF9A: Me.Left = from_stack_1s
  loc_68FF9F: FFree1Ad var_1DC
  loc_68FFA2: LitI2_Byte &HFF
  loc_68FFA4: FLdPrThis
  loc_68FFA5: VCallAd Control_ID_Label5
  loc_68FFA8: FStAdFunc var_1DC
  loc_68FFAB: FLdPr var_1DC
  loc_68FFAE: Me.Visible = from_stack_1b
  loc_68FFB3: FFree1Ad var_1DC
  loc_68FFB6: LitI2_Byte 0
  loc_68FFB8: FLdRfVar var_8A
  loc_68FFBB: LitI2_Byte 9
  loc_68FFBD: ForI2 var_1F0
  loc_68FFC3: LitI2 9615
  loc_68FFC6: CR8I2
  loc_68FFC7: CVarR4
  loc_68FFCB: PopAdLdVar
  loc_68FFCC: FLdRfVar var_1F4
  loc_68FFCF: FLdI2 var_8A
  loc_68FFD2: FLdPrThis
  loc_68FFD3: VCallAd Control_ID_SSPanel1
  loc_68FFD6: FStAdFunc var_1DC
  loc_68FFD9: FLdPr var_1DC
  loc_68FFDC: Set from_stack_2 = Me(from_stack_1)
  loc_68FFE1: FLdPr var_1F4
  loc_68FFE4: LateIdSt
  loc_68FFE9: FFreeAd var_1DC = ""
  loc_68FFF0: LitI2_Byte &HFF
  loc_68FFF2: FLdRfVar var_1F4
  loc_68FFF5: FLdI2 var_8A
  loc_68FFF8: FLdPrThis
  loc_68FFF9: VCallAd Control_ID_LCia
  loc_68FFFC: FStAdFunc var_1DC
  loc_68FFFF: FLdPr var_1DC
  loc_690002: Set from_stack_2 = Me(from_stack_1)
  loc_690007: FLdPr var_1F4
  loc_69000A: Me.Visible = from_stack_1b
  loc_69000F: FFreeAd var_1DC = ""
  loc_690016: FLdRfVar var_8A
  loc_690019: NextI2 var_1F0, loc_68FFC3
  loc_69001E: Branch loc_6900B4
  loc_690021: LitI2 9700
  loc_690024: CR8I2
  loc_690025: PopFPR4
  loc_690026: FLdPrThis
  loc_690027: VCallAd Control_ID_VScroll1
  loc_69002A: FStAdFunc var_1DC
  loc_69002D: FLdPr var_1DC
  loc_690030: Me.Left = from_stack_1s
  loc_690035: FFree1Ad var_1DC
  loc_690038: LitI2_Byte 0
  loc_69003A: FLdPrThis
  loc_69003B: VCallAd Control_ID_Label5
  loc_69003E: FStAdFunc var_1DC
  loc_690041: FLdPr var_1DC
  loc_690044: Me.Visible = from_stack_1b
  loc_690049: FFree1Ad var_1DC
  loc_69004C: LitI2_Byte 0
  loc_69004E: FLdRfVar var_8A
  loc_690051: LitI2_Byte 9
  loc_690053: ForI2 var_1F8
  loc_690059: LitI2 8655
  loc_69005C: CR8I2
  loc_69005D: CVarR4
  loc_690061: PopAdLdVar
  loc_690062: FLdRfVar var_1F4
  loc_690065: FLdI2 var_8A
  loc_690068: FLdPrThis
  loc_690069: VCallAd Control_ID_SSPanel1
  loc_69006C: FStAdFunc var_1DC
  loc_69006F: FLdPr var_1DC
  loc_690072: Set from_stack_2 = Me(from_stack_1)
  loc_690077: FLdPr var_1F4
  loc_69007A: LateIdSt
  loc_69007F: FFreeAd var_1DC = ""
  loc_690086: LitI2_Byte 0
  loc_690088: FLdRfVar var_1F4
  loc_69008B: FLdI2 var_8A
  loc_69008E: FLdPrThis
  loc_69008F: VCallAd Control_ID_LCia
  loc_690092: FStAdFunc var_1DC
  loc_690095: FLdPr var_1DC
  loc_690098: Set from_stack_2 = Me(from_stack_1)
  loc_69009D: FLdPr var_1F4
  loc_6900A0: Me.Visible = from_stack_1b
  loc_6900A5: FFreeAd var_1DC = ""
  loc_6900AC: FLdRfVar var_8A
  loc_6900AF: NextI2 var_1F8, loc_690059
  loc_6900B4: FLdRfVar var_8C
  loc_6900B7: FLdRfVar var_88
  loc_6900BA: FLdRfVar var_1DC
  loc_6900BD: ImpAdLdRf MemVar_74C760
  loc_6900C0: NewIfNullPr Formx
  loc_6900C3: from_stack_1v = Formx.global_4589716Get()
  loc_6900C8: FLdPr var_1DC
  loc_6900CB: Formx.Picture = from_stack_1
  loc_6900D0: FLdI2 var_8C
  loc_6900D3: NotI4
  loc_6900D4: FFree1Ad var_1DC
  loc_6900D7: BranchF loc_690106
  loc_6900DA: FLdRfVar var_B4
  loc_6900DD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6900E2: FLdRfVar var_B4
  loc_6900E5: CBoolVarNull
  loc_6900E7: FFree1Var var_B4 = ""
  loc_6900EA: BranchF loc_690103
  loc_6900ED: ILdRf Me
  loc_6900F0: FStAdNoPop
  loc_6900F4: ImpAdLdRf MemVar_7520D4
  loc_6900F7: NewIfNullPr Global
  loc_6900FA: Global.Unload from_stack_1
  loc_6900FF: FFree1Ad var_1DC
  loc_690102: ExitProcHresult
  loc_690103: Branch loc_6900B4
  loc_690106: FLdRfVar var_88
  loc_690109: from_stack_2v = Proc_69_11_64AFB8(from_stack_1v)
  loc_69010E: from_stack_1v = Proc_69_13_60BC08()
  loc_690113: FLdRfVar var_8C
  loc_690116: from_stack_1v = Proc_69_14_5E4540()
  loc_69011B: LitI2_Byte 1
  loc_69011D: PopTmpLdAd2 var_8C
  loc_690120: from_stack_2v = Proc_69_9_66A754(from_stack_1v)
  loc_690125: LitI2_Byte 1
  loc_690127: FLdPrThis
  loc_690128: VCallAd Control_ID_VScroll1
  loc_69012B: FStAdFunc var_1DC
  loc_69012E: FLdPr var_1DC
  loc_690131: Me.Min = from_stack_1
  loc_690136: FFree1Ad var_1DC
  loc_690139: FLdRfVar var_8C
  loc_69013C: from_stack_1v = Proc_69_14_5E4540()
  loc_690141: FLdI2 var_8C
  loc_690144: LitI2_Byte 9
  loc_690146: SubI2
  loc_690147: FLdPrThis
  loc_690148: VCallAd Control_ID_VScroll1
  loc_69014B: FStAdFunc var_1DC
  loc_69014E: FLdPr var_1DC
  loc_690151: Me.Max = from_stack_1
  loc_690156: FFree1Ad var_1DC
  loc_690159: LitI2_Byte 1
  loc_69015B: FLdPrThis
  loc_69015C: VCallAd Control_ID_VScroll1
  loc_69015F: FStAdFunc var_1DC
  loc_690162: FLdPr var_1DC
  loc_690165: Me.SmallChange = from_stack_1
  loc_69016A: FFree1Ad var_1DC
  loc_69016D: LitI2_Byte &HA
  loc_69016F: FLdPrThis
  loc_690170: VCallAd Control_ID_VScroll1
  loc_690173: FStAdFunc var_1DC
  loc_690176: FLdPr var_1DC
  loc_690179: Me.LargeChange = from_stack_1
  loc_69017E: FFree1Ad var_1DC
  loc_690181: FLdRfVar var_1F4
  loc_690184: LitI2_Byte 0
  loc_690186: FLdPrThis
  loc_690187: VCallAd Control_ID_LDia
  loc_69018A: FStAdFunc var_1DC
  loc_69018D: FLdPr var_1DC
  loc_690190: Set from_stack_2 = Me(from_stack_1)
  loc_690195: FLdPr var_1F4
  loc_690198: Me.SetFocus
  loc_69019D: FFreeAd var_1DC = ""
  loc_6901A4: FLdPrThis
  loc_6901A5: VCallAd Control_ID_VScroll1
  loc_6901A8: FStAdFunc var_1DC
  loc_6901AB: FLdPr var_1DC
  loc_6901AE: Me.SetFocus
  loc_6901B3: FFree1Ad var_1DC
  loc_6901B6: ExitProcHresult
End Sub

Private Function Proc_69_9_66A754(arg_C) '66A754
  'Data Table: 429AB0
  loc_66A378: ILdI2 arg_C
  loc_66A37B: FLdPr Me
  loc_66A37E: MemStI2 global_52
  loc_66A381: LitI2_Byte 0
  loc_66A383: CUI1I2
  loc_66A385: FLdRfVar var_86
  loc_66A388: LitI2_Byte 9
  loc_66A38A: CUI1I2
  loc_66A38C: ForUI1 var_8A
  loc_66A392: ILdI2 arg_C
  loc_66A395: FLdUI1
  loc_66A399: CI2UI1
  loc_66A39B: AddI2
  loc_66A39C: CI4UI1
  loc_66A39D: FLdPr Me
  loc_66A3A0: MemLdRfVar from_stack_1.global_80
  loc_66A3A3: Ary1LdI2
  loc_66A3A4: CI4UI1
  loc_66A3A5: FLdPr Me
  loc_66A3A8: MemLdRfVar from_stack_1.global_104
  loc_66A3AB: AryInRecLdPr
  loc_66A3B1: MemLdStr global_0
  loc_66A3B4: FLdRfVar var_94
  loc_66A3B7: FLdUI1
  loc_66A3BB: CI2UI1
  loc_66A3BD: FLdPrThis
  loc_66A3BE: VCallAd Control_ID_Item
  loc_66A3C1: FStAdFunc var_90
  loc_66A3C4: FLdPr var_90
  loc_66A3C7: Set from_stack_2 = Me(from_stack_1)
  loc_66A3CC: FLdPr var_94
  loc_66A3CF: Me.Caption = from_stack_1
  loc_66A3D4: FFreeAd var_90 = ""
  loc_66A3DB: ILdI2 arg_C
  loc_66A3DE: FLdUI1
  loc_66A3E2: CI2UI1
  loc_66A3E4: AddI2
  loc_66A3E5: CI4UI1
  loc_66A3E6: FLdPr Me
  loc_66A3E9: MemLdRfVar from_stack_1.global_80
  loc_66A3EC: Ary1LdI2
  loc_66A3ED: CI4UI1
  loc_66A3EE: FLdPr Me
  loc_66A3F1: MemLdRfVar from_stack_1.global_4904
  loc_66A3F4: AryInRecLdPr
  loc_66A3FA: MemLdI2 global_0
  loc_66A3FD: LitI2_Byte 0
  loc_66A3FF: EqI2
  loc_66A400: BranchF loc_66A571
  loc_66A403: LitI2_Byte 0
  loc_66A405: FLdRfVar var_94
  loc_66A408: FLdUI1
  loc_66A40C: CI2UI1
  loc_66A40E: FLdPrThis
  loc_66A40F: VCallAd Control_ID_LTurno
  loc_66A412: FStAdFunc var_90
  loc_66A415: FLdPr var_90
  loc_66A418: Set from_stack_2 = Me(from_stack_1)
  loc_66A41D: FLdPr var_94
  loc_66A420: Me.Value = from_stack_1
  loc_66A425: FFreeAd var_90 = ""
  loc_66A42C: LitI2_Byte 0
  loc_66A42E: FLdRfVar var_94
  loc_66A431: FLdUI1
  loc_66A435: CI2UI1
  loc_66A437: FLdPrThis
  loc_66A438: VCallAd Control_ID_LDia
  loc_66A43B: FStAdFunc var_90
  loc_66A43E: FLdPr var_90
  loc_66A441: Set from_stack_2 = Me(from_stack_1)
  loc_66A446: FLdPr var_94
  loc_66A449: Me.Value = from_stack_1
  loc_66A44E: FFreeAd var_90 = ""
  loc_66A455: LitI2_Byte 0
  loc_66A457: FLdRfVar var_94
  loc_66A45A: FLdUI1
  loc_66A45E: CI2UI1
  loc_66A460: FLdPrThis
  loc_66A461: VCallAd Control_ID_LMes
  loc_66A464: FStAdFunc var_90
  loc_66A467: FLdPr var_90
  loc_66A46A: Set from_stack_2 = Me(from_stack_1)
  loc_66A46F: FLdPr var_94
  loc_66A472: Me.Value = from_stack_1
  loc_66A477: FFreeAd var_90 = ""
  loc_66A47E: LitI2_Byte 0
  loc_66A480: CUI1I2
  loc_66A482: ILdI2 arg_C
  loc_66A485: FLdUI1
  loc_66A489: CI2UI1
  loc_66A48B: AddI2
  loc_66A48C: CI4UI1
  loc_66A48D: FLdPr Me
  loc_66A490: MemLdRfVar from_stack_1.global_80
  loc_66A493: Ary1LdI2
  loc_66A494: CI4UI1
  loc_66A495: FLdPr Me
  loc_66A498: MemLdRfVar from_stack_1.global_2504
  loc_66A49B: AryInRecLdPr
  loc_66A4A1: MemStUI1
  loc_66A4A5: LitI2_Byte 0
  loc_66A4A7: CUI1I2
  loc_66A4A9: ILdI2 arg_C
  loc_66A4AC: FLdUI1
  loc_66A4B0: CI2UI1
  loc_66A4B2: AddI2
  loc_66A4B3: CI4UI1
  loc_66A4B4: FLdPr Me
  loc_66A4B7: MemLdRfVar from_stack_1.global_80
  loc_66A4BA: Ary1LdI2
  loc_66A4BB: CI4UI1
  loc_66A4BC: FLdPr Me
  loc_66A4BF: MemLdRfVar from_stack_1.global_3104
  loc_66A4C2: AryInRecLdPr
  loc_66A4C8: MemStUI1
  loc_66A4CC: LitI2_Byte 0
  loc_66A4CE: CUI1I2
  loc_66A4D0: ILdI2 arg_C
  loc_66A4D3: FLdUI1
  loc_66A4D7: CI2UI1
  loc_66A4D9: AddI2
  loc_66A4DA: CI4UI1
  loc_66A4DB: FLdPr Me
  loc_66A4DE: MemLdRfVar from_stack_1.global_80
  loc_66A4E1: Ary1LdI2
  loc_66A4E2: CI4UI1
  loc_66A4E3: FLdPr Me
  loc_66A4E6: MemLdRfVar from_stack_1.global_3704
  loc_66A4E9: AryInRecLdPr
  loc_66A4EF: MemStUI1
  loc_66A4F3: LitI2_Byte 0
  loc_66A4F5: FLdRfVar var_94
  loc_66A4F8: FLdUI1
  loc_66A4FC: CI2UI1
  loc_66A4FE: FLdPrThis
  loc_66A4FF: VCallAd Control_ID_LTurno
  loc_66A502: FStAdFunc var_90
  loc_66A505: FLdPr var_90
  loc_66A508: Set from_stack_2 = Me(from_stack_1)
  loc_66A50D: FLdPr var_94
  loc_66A510: Me.Visible = from_stack_1b
  loc_66A515: FFreeAd var_90 = ""
  loc_66A51C: LitI2_Byte 0
  loc_66A51E: FLdRfVar var_94
  loc_66A521: FLdUI1
  loc_66A525: CI2UI1
  loc_66A527: FLdPrThis
  loc_66A528: VCallAd Control_ID_LDia
  loc_66A52B: FStAdFunc var_90
  loc_66A52E: FLdPr var_90
  loc_66A531: Set from_stack_2 = Me(from_stack_1)
  loc_66A536: FLdPr var_94
  loc_66A539: Me.Visible = from_stack_1b
  loc_66A53E: FFreeAd var_90 = ""
  loc_66A545: LitI2_Byte 0
  loc_66A547: FLdRfVar var_94
  loc_66A54A: FLdUI1
  loc_66A54E: CI2UI1
  loc_66A550: FLdPrThis
  loc_66A551: VCallAd Control_ID_LMes
  loc_66A554: FStAdFunc var_90
  loc_66A557: FLdPr var_90
  loc_66A55A: Set from_stack_2 = Me(from_stack_1)
  loc_66A55F: FLdPr var_94
  loc_66A562: Me.Visible = from_stack_1b
  loc_66A567: FFreeAd var_90 = ""
  loc_66A56E: Branch loc_66A6D0
  loc_66A571: LitI2_Byte &HFF
  loc_66A573: FLdRfVar var_94
  loc_66A576: FLdUI1
  loc_66A57A: CI2UI1
  loc_66A57C: FLdPrThis
  loc_66A57D: VCallAd Control_ID_LTurno
  loc_66A580: FStAdFunc var_90
  loc_66A583: FLdPr var_90
  loc_66A586: Set from_stack_2 = Me(from_stack_1)
  loc_66A58B: FLdPr var_94
  loc_66A58E: Me.Visible = from_stack_1b
  loc_66A593: FFreeAd var_90 = ""
  loc_66A59A: LitI2_Byte &HFF
  loc_66A59C: FLdRfVar var_94
  loc_66A59F: FLdUI1
  loc_66A5A3: CI2UI1
  loc_66A5A5: FLdPrThis
  loc_66A5A6: VCallAd Control_ID_LDia
  loc_66A5A9: FStAdFunc var_90
  loc_66A5AC: FLdPr var_90
  loc_66A5AF: Set from_stack_2 = Me(from_stack_1)
  loc_66A5B4: FLdPr var_94
  loc_66A5B7: Me.Visible = from_stack_1b
  loc_66A5BC: FFreeAd var_90 = ""
  loc_66A5C3: LitI2_Byte &HFF
  loc_66A5C5: FLdRfVar var_94
  loc_66A5C8: FLdUI1
  loc_66A5CC: CI2UI1
  loc_66A5CE: FLdPrThis
  loc_66A5CF: VCallAd Control_ID_LMes
  loc_66A5D2: FStAdFunc var_90
  loc_66A5D5: FLdPr var_90
  loc_66A5D8: Set from_stack_2 = Me(from_stack_1)
  loc_66A5DD: FLdPr var_94
  loc_66A5E0: Me.Visible = from_stack_1b
  loc_66A5E5: FFreeAd var_90 = ""
  loc_66A5EC: ILdI2 arg_C
  loc_66A5EF: FLdUI1
  loc_66A5F3: CI2UI1
  loc_66A5F5: AddI2
  loc_66A5F6: CI4UI1
  loc_66A5F7: FLdPr Me
  loc_66A5FA: MemLdRfVar from_stack_1.global_80
  loc_66A5FD: Ary1LdI2
  loc_66A5FE: CI4UI1
  loc_66A5FF: FLdPr Me
  loc_66A602: MemLdRfVar from_stack_1.global_2504
  loc_66A605: AryInRecLdPr
  loc_66A60B: MemLdUI1 global_0
  loc_66A60F: CI2UI1
  loc_66A611: FLdRfVar var_94
  loc_66A614: FLdUI1
  loc_66A618: CI2UI1
  loc_66A61A: FLdPrThis
  loc_66A61B: VCallAd Control_ID_LTurno
  loc_66A61E: FStAdFunc var_90
  loc_66A621: FLdPr var_90
  loc_66A624: Set from_stack_2 = Me(from_stack_1)
  loc_66A629: FLdPr var_94
  loc_66A62C: Me.Value = from_stack_1
  loc_66A631: FFreeAd var_90 = ""
  loc_66A638: ILdI2 arg_C
  loc_66A63B: FLdUI1
  loc_66A63F: CI2UI1
  loc_66A641: AddI2
  loc_66A642: CI4UI1
  loc_66A643: FLdPr Me
  loc_66A646: MemLdRfVar from_stack_1.global_80
  loc_66A649: Ary1LdI2
  loc_66A64A: CI4UI1
  loc_66A64B: FLdPr Me
  loc_66A64E: MemLdRfVar from_stack_1.global_3104
  loc_66A651: AryInRecLdPr
  loc_66A657: MemLdUI1 global_0
  loc_66A65B: CI2UI1
  loc_66A65D: FLdRfVar var_94
  loc_66A660: FLdUI1
  loc_66A664: CI2UI1
  loc_66A666: FLdPrThis
  loc_66A667: VCallAd Control_ID_LDia
  loc_66A66A: FStAdFunc var_90
  loc_66A66D: FLdPr var_90
  loc_66A670: Set from_stack_2 = Me(from_stack_1)
  loc_66A675: FLdPr var_94
  loc_66A678: Me.Value = from_stack_1
  loc_66A67D: FFreeAd var_90 = ""
  loc_66A684: ILdI2 arg_C
  loc_66A687: FLdUI1
  loc_66A68B: CI2UI1
  loc_66A68D: AddI2
  loc_66A68E: CI4UI1
  loc_66A68F: FLdPr Me
  loc_66A692: MemLdRfVar from_stack_1.global_80
  loc_66A695: Ary1LdI2
  loc_66A696: CI4UI1
  loc_66A697: FLdPr Me
  loc_66A69A: MemLdRfVar from_stack_1.global_3704
  loc_66A69D: AryInRecLdPr
  loc_66A6A3: MemLdUI1 global_0
  loc_66A6A7: CI2UI1
  loc_66A6A9: FLdRfVar var_94
  loc_66A6AC: FLdUI1
  loc_66A6B0: CI2UI1
  loc_66A6B2: FLdPrThis
  loc_66A6B3: VCallAd Control_ID_LMes
  loc_66A6B6: FStAdFunc var_90
  loc_66A6B9: FLdPr var_90
  loc_66A6BC: Set from_stack_2 = Me(from_stack_1)
  loc_66A6C1: FLdPr var_94
  loc_66A6C4: Me.Value = from_stack_1
  loc_66A6C9: FFreeAd var_90 = ""
  loc_66A6D0: ILdI2 arg_C
  loc_66A6D3: FLdUI1
  loc_66A6D7: CI2UI1
  loc_66A6D9: AddI2
  loc_66A6DA: CI4UI1
  loc_66A6DB: FLdPr Me
  loc_66A6DE: MemLdRfVar from_stack_1.global_80
  loc_66A6E1: Ary1LdI2
  loc_66A6E2: CI4UI1
  loc_66A6E3: FLdPr Me
  loc_66A6E6: MemLdRfVar from_stack_1.global_4304
  loc_66A6E9: AryInRecLdPr
  loc_66A6EF: MemLdUI1 global_0
  loc_66A6F3: CI2UI1
  loc_66A6F5: FLdRfVar var_94
  loc_66A6F8: FLdUI1
  loc_66A6FC: CI2UI1
  loc_66A6FE: FLdPrThis
  loc_66A6FF: VCallAd Control_ID_LCia
  loc_66A702: FStAdFunc var_90
  loc_66A705: FLdPr var_90
  loc_66A708: Set from_stack_2 = Me(from_stack_1)
  loc_66A70D: FLdPr var_94
  loc_66A710: Me.Value = from_stack_1
  loc_66A715: FFreeAd var_90 = ""
  loc_66A71C: LitVar_TRUE var_A4
  loc_66A71F: PopAdLdVar
  loc_66A720: FLdRfVar var_94
  loc_66A723: FLdUI1
  loc_66A727: CI2UI1
  loc_66A729: FLdPrThis
  loc_66A72A: VCallAd Control_ID_SSPanel1
  loc_66A72D: FStAdFunc var_90
  loc_66A730: FLdPr var_90
  loc_66A733: Set from_stack_2 = Me(from_stack_1)
  loc_66A738: FLdPr var_94
  loc_66A73B: LateIdSt
  loc_66A740: FFreeAd var_90 = ""
  loc_66A747: FLdRfVar var_86
  loc_66A74A: NextUI1
  loc_66A750: ExitProcHresult
  loc_66A751: FStStr arg_21
End Function

Private Function Proc_69_10_63B0E8() '63B0E8
  'Data Table: 429AB0
  loc_63AEC0: LitStr vbNullString
  loc_63AEC3: FLdPr Me
  loc_63AEC6: MemLdRfVar from_stack_1.global_6105
  loc_63AEC9: StFixedStr
  loc_63AECC: LitI2_Byte 1
  loc_63AECE: FLdRfVar var_8E
  loc_63AED1: LitI2 600
  loc_63AED4: ForI2 var_92
  loc_63AEDA: LitI2_Byte 0
  loc_63AEDC: CUI1I2
  loc_63AEDE: FStUI1 var_86
  loc_63AEE2: FLdI2 var_8E
  loc_63AEE5: CI4UI1
  loc_63AEE6: FLdPr Me
  loc_63AEE9: MemLdRfVar from_stack_1.global_56
  loc_63AEEC: Ary1LdI2
  loc_63AEED: LitI2_Byte 0
  loc_63AEEF: GtI2
  loc_63AEF0: BranchF loc_63AF86
  loc_63AEF3: LitI2_Byte 1
  loc_63AEF5: FLdI2 var_8E
  loc_63AEF8: CI4UI1
  loc_63AEF9: FLdPr Me
  loc_63AEFC: MemLdRfVar from_stack_1.global_56
  loc_63AEFF: Ary1LdI2
  loc_63AF00: CI4UI1
  loc_63AF01: FLdPr Me
  loc_63AF04: MemLdRfVar from_stack_1.global_2504
  loc_63AF07: AryInRecLdPr
  loc_63AF0D: MemLdUI1 global_0
  loc_63AF11: CI2UI1
  loc_63AF13: MulI2
  loc_63AF14: LitI2_Byte 2
  loc_63AF16: FLdI2 var_8E
  loc_63AF19: CI4UI1
  loc_63AF1A: FLdPr Me
  loc_63AF1D: MemLdRfVar from_stack_1.global_56
  loc_63AF20: Ary1LdI2
  loc_63AF21: CI4UI1
  loc_63AF22: FLdPr Me
  loc_63AF25: MemLdRfVar from_stack_1.global_3104
  loc_63AF28: AryInRecLdPr
  loc_63AF2E: MemLdUI1 global_0
  loc_63AF32: CI2UI1
  loc_63AF34: MulI2
  loc_63AF35: AddI2
  loc_63AF36: LitI2_Byte 4
  loc_63AF38: FLdI2 var_8E
  loc_63AF3B: CI4UI1
  loc_63AF3C: FLdPr Me
  loc_63AF3F: MemLdRfVar from_stack_1.global_56
  loc_63AF42: Ary1LdI2
  loc_63AF43: CI4UI1
  loc_63AF44: FLdPr Me
  loc_63AF47: MemLdRfVar from_stack_1.global_3704
  loc_63AF4A: AryInRecLdPr
  loc_63AF50: MemLdUI1 global_0
  loc_63AF54: CI2UI1
  loc_63AF56: MulI2
  loc_63AF57: AddI2
  loc_63AF58: LitI2_Byte 8
  loc_63AF5A: FLdI2 var_8E
  loc_63AF5D: CI4UI1
  loc_63AF5E: FLdPr Me
  loc_63AF61: MemLdRfVar from_stack_1.global_56
  loc_63AF64: Ary1LdI2
  loc_63AF65: CI4UI1
  loc_63AF66: FLdPr Me
  loc_63AF69: MemLdRfVar from_stack_1.global_4304
  loc_63AF6C: AryInRecLdPr
  loc_63AF72: MemLdUI1 global_0
  loc_63AF76: CI2UI1
  loc_63AF78: MulI2
  loc_63AF79: AddI2
  loc_63AF7A: LitI2_Byte 1
  loc_63AF7C: AddI2
  loc_63AF7D: CUI1I2
  loc_63AF7F: FStUI1 var_86
  loc_63AF83: Branch loc_63AF9F
  loc_63AF86: FLdI2 var_8E
  loc_63AF89: CI4UI1
  loc_63AF8A: FLdPr Me
  loc_63AF8D: MemLdRfVar from_stack_1.global_56
  loc_63AF90: Ary1LdI2
  loc_63AF91: LitI2_Byte &HFF
  loc_63AF93: EqI2
  loc_63AF94: BranchF loc_63AF9F
  loc_63AF97: LitI2_Byte 1
  loc_63AF99: CUI1I2
  loc_63AF9B: FStUI1 var_86
  loc_63AF9F: FLdUI1
  loc_63AFA3: CI2UI1
  loc_63AFA5: LitI2_Byte 0
  loc_63AFA7: EqI2
  loc_63AFA8: FLdI2 var_8E
  loc_63AFAB: CI4UI1
  loc_63AFAC: FLdPr Me
  loc_63AFAF: MemLdRfVar from_stack_1.global_4304
  loc_63AFB2: AryInRecLdPr
  loc_63AFB8: MemLdUI1 global_0
  loc_63AFBC: CI2UI1
  loc_63AFBE: LitI2_Byte 0
  loc_63AFC0: EqI2
  loc_63AFC1: AndI4
  loc_63AFC2: BranchF loc_63AFED
  loc_63AFC5: ILdRf var_8C
  loc_63AFC8: CVarStr var_B4
  loc_63AFCB: LitI4 1
  loc_63AFD0: FLdRfVar var_A4
  loc_63AFD3: ImpAdCallFPR4  = Chr()
  loc_63AFD8: FLdRfVar var_A4
  loc_63AFDB: ConcatVar var_C4
  loc_63AFDF: CStrVarTmp
  loc_63AFE0: FStStr var_8C
  loc_63AFE3: FFreeVar var_A4 = ""
  loc_63AFEA: Branch loc_63B0D0
  loc_63AFED: FLdUI1
  loc_63AFF1: CI2UI1
  loc_63AFF3: LitI2_Byte 0
  loc_63AFF5: EqI2
  loc_63AFF6: FLdI2 var_8E
  loc_63AFF9: CI4UI1
  loc_63AFFA: FLdPr Me
  loc_63AFFD: MemLdRfVar from_stack_1.global_4304
  loc_63B000: AryInRecLdPr
  loc_63B006: MemLdUI1 global_0
  loc_63B00A: CI2UI1
  loc_63B00C: LitI2_Byte 0
  loc_63B00E: GtI2
  loc_63B00F: AndI4
  loc_63B010: BranchF loc_63B0AB
  loc_63B013: LitI2_Byte 1
  loc_63B015: FLdI2 var_8E
  loc_63B018: CI4UI1
  loc_63B019: FLdPr Me
  loc_63B01C: MemLdRfVar from_stack_1.global_2504
  loc_63B01F: AryInRecLdPr
  loc_63B025: MemLdUI1 global_0
  loc_63B029: CI2UI1
  loc_63B02B: MulI2
  loc_63B02C: LitI2_Byte 2
  loc_63B02E: FLdI2 var_8E
  loc_63B031: CI4UI1
  loc_63B032: FLdPr Me
  loc_63B035: MemLdRfVar from_stack_1.global_3104
  loc_63B038: AryInRecLdPr
  loc_63B03E: MemLdUI1 global_0
  loc_63B042: CI2UI1
  loc_63B044: MulI2
  loc_63B045: AddI2
  loc_63B046: LitI2_Byte 4
  loc_63B048: FLdI2 var_8E
  loc_63B04B: CI4UI1
  loc_63B04C: FLdPr Me
  loc_63B04F: MemLdRfVar from_stack_1.global_3704
  loc_63B052: AryInRecLdPr
  loc_63B058: MemLdUI1 global_0
  loc_63B05C: CI2UI1
  loc_63B05E: MulI2
  loc_63B05F: AddI2
  loc_63B060: LitI2_Byte 8
  loc_63B062: FLdI2 var_8E
  loc_63B065: CI4UI1
  loc_63B066: FLdPr Me
  loc_63B069: MemLdRfVar from_stack_1.global_4304
  loc_63B06C: AryInRecLdPr
  loc_63B072: MemLdUI1 global_0
  loc_63B076: CI2UI1
  loc_63B078: MulI2
  loc_63B079: AddI2
  loc_63B07A: LitI2_Byte 1
  loc_63B07C: AddI2
  loc_63B07D: CUI1I2
  loc_63B07F: FStUI1 var_86
  loc_63B083: ILdRf var_8C
  loc_63B086: CVarStr var_B4
  loc_63B089: FLdUI1
  loc_63B08D: CI4UI1
  loc_63B08E: FLdRfVar var_A4
  loc_63B091: ImpAdCallFPR4  = Chr()
  loc_63B096: FLdRfVar var_A4
  loc_63B099: ConcatVar var_C4
  loc_63B09D: CStrVarTmp
  loc_63B09E: FStStr var_8C
  loc_63B0A1: FFreeVar var_A4 = ""
  loc_63B0A8: Branch loc_63B0D0
  loc_63B0AB: ILdRf var_8C
  loc_63B0AE: CVarStr var_B4
  loc_63B0B1: FLdUI1
  loc_63B0B5: CI4UI1
  loc_63B0B6: FLdRfVar var_A4
  loc_63B0B9: ImpAdCallFPR4  = Chr()
  loc_63B0BE: FLdRfVar var_A4
  loc_63B0C1: ConcatVar var_C4
  loc_63B0C5: CStrVarTmp
  loc_63B0C6: FStStr var_8C
  loc_63B0C9: FFreeVar var_A4 = ""
  loc_63B0D0: FLdRfVar var_8E
  loc_63B0D3: NextI2 var_92, loc_63AEDA
  loc_63B0D8: ILdRf var_8C
  loc_63B0DB: FLdPr Me
  loc_63B0DE: MemLdRfVar from_stack_1.global_6105
  loc_63B0E1: StFixedStr
  loc_63B0E4: ExitProcHresult
End Function

Private Function Proc_69_11_64AFB8(arg_C) '64AFB8
  'Data Table: 429AB0
  loc_64AD2C: LitI2_Byte 0
  loc_64AD2E: FLdPr Me
  loc_64AD31: MemStI2 global_54
  loc_64AD34: FLdRfVar var_94
  loc_64AD37: ImpAdLdRf MemVar_74A218
  loc_64AD3A: NewIfNullPr clsUsers
  loc_64AD42: LitVarI2 var_E4, 9
  loc_64AD47: LitVarI2 var_C4, 6
  loc_64AD4C: FLdI2 var_94
  loc_64AD4F: LitI2_Byte 6
  loc_64AD51: EqI2
  loc_64AD52: CVarBoolI2 var_A4
  loc_64AD56: FLdRfVar var_F4
  loc_64AD59: ImpAdCallFPR4  = IIf(, , )
  loc_64AD5E: FLdRfVar var_F4
  loc_64AD61: CI2Var
  loc_64AD62: FStI2 var_92
  loc_64AD65: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_64AD70: LitI2_Byte 1
  loc_64AD72: FLdRfVar var_86
  loc_64AD75: LitI2 600
  loc_64AD78: ForI2 var_F8
  loc_64AD7E: FLdI2 var_86
  loc_64AD81: CI4UI1
  loc_64AD82: FLdPr Me
  loc_64AD85: MemLdRfVar from_stack_1.global_4904
  loc_64AD88: AryInRecLdPr
  loc_64AD8E: MemLdI2 global_0
  loc_64AD91: LitI2_Byte &HFF
  loc_64AD93: EqI2
  loc_64AD94: FLdI2 var_86
  loc_64AD97: LitI2 600
  loc_64AD9A: EqI2
  loc_64AD9B: OrI4
  loc_64AD9C: NotI4
  loc_64AD9D: BranchF loc_64AE14
  loc_64ADA0: FLdI2 var_86
  loc_64ADA3: CI4UI1
  loc_64ADA4: ImpAdLdPr unk_429AD4
  loc_64ADA7: MemLdRfVar from_stack_1.global_0
  loc_64ADAA: AryInRecLdPr
  loc_64ADB0: MemLdStr global_0
  loc_64ADB3: LitStr vbNullString
  loc_64ADB6: NeStr
  loc_64ADB8: BranchF loc_64AE08
  loc_64ADBB: LitVarI2 var_C4, 1
  loc_64ADC0: FLdI2 var_86
  loc_64ADC3: CI4UI1
  loc_64ADC4: ILdRf arg_C
  loc_64ADC7: CVarRef
  loc_64ADCC: FLdRfVar var_E4
  loc_64ADCF: ImpAdCallFPR4  = Mid(, , )
  loc_64ADD4: FLdRfVar var_E4
  loc_64ADD7: CStrVarTmp
  loc_64ADD8: FStStr var_90
  loc_64ADDB: FFreeVar var_C4 = ""
  loc_64ADE2: ImpAdLdUI1
  loc_64ADE6: CI2UI1
  loc_64ADE8: FLdI2 var_92
  loc_64ADEB: GeI2
  loc_64ADEC: BranchF loc_64ADFD
  loc_64ADEF: ILdRf var_90
  loc_64ADF2: FLdI2 var_86
  loc_64ADF5: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64ADFA: Branch loc_64AE08
  loc_64ADFD: ILdRf var_90
  loc_64AE00: FLdI2 var_86
  loc_64AE03: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64AE08: FLdI2 var_86
  loc_64AE0B: LitI2_Byte 1
  loc_64AE0D: AddI2
  loc_64AE0E: FStI2 var_86
  loc_64AE11: Branch loc_64AD7E
  loc_64AE14: FLdI2 var_86
  loc_64AE17: LitI2 600
  loc_64AE1A: EqI2
  loc_64AE1B: BranchF loc_64AE21
  loc_64AE1E: Branch loc_64AFB6
  loc_64AE21: LitVarI2 var_C4, 1
  loc_64AE26: FLdI2 var_86
  loc_64AE29: CI4UI1
  loc_64AE2A: ILdRf arg_C
  loc_64AE2D: CVarRef
  loc_64AE32: FLdRfVar var_E4
  loc_64AE35: ImpAdCallFPR4  = Mid(, , )
  loc_64AE3A: FLdRfVar var_E4
  loc_64AE3D: CStrVarTmp
  loc_64AE3E: FStStr var_90
  loc_64AE41: FFreeVar var_C4 = ""
  loc_64AE48: FLdI2 var_86
  loc_64AE4B: FStI2 var_FA
  loc_64AE4E: FLdI2 var_FA
  loc_64AE51: LitI2_Byte &H14
  loc_64AE53: EqI2
  loc_64AE54: BranchT loc_64AE96
  loc_64AE57: FLdI2 var_FA
  loc_64AE5A: LitI2_Byte &H21
  loc_64AE5C: EqI2
  loc_64AE5D: BranchT loc_64AE96
  loc_64AE60: FLdI2 var_FA
  loc_64AE63: LitI2_Byte &H22
  loc_64AE65: EqI2
  loc_64AE66: BranchT loc_64AE96
  loc_64AE69: FLdI2 var_FA
  loc_64AE6C: LitI2_Byte &H23
  loc_64AE6E: EqI2
  loc_64AE6F: BranchT loc_64AE96
  loc_64AE72: FLdI2 var_FA
  loc_64AE75: LitI2_Byte &H24
  loc_64AE77: EqI2
  loc_64AE78: BranchT loc_64AE96
  loc_64AE7B: FLdI2 var_FA
  loc_64AE7E: LitI2_Byte &H25
  loc_64AE80: EqI2
  loc_64AE81: BranchT loc_64AE96
  loc_64AE84: FLdI2 var_FA
  loc_64AE87: LitI2_Byte &H2B
  loc_64AE89: EqI2
  loc_64AE8A: BranchT loc_64AE96
  loc_64AE8D: FLdI2 var_FA
  loc_64AE90: LitI2_Byte &H2C
  loc_64AE92: EqI2
  loc_64AE93: BranchF loc_64AEE5
  loc_64AE96: LitVarI2 var_C4, 1
  loc_64AE9B: LitI4 1
  loc_64AEA0: ImpAdLdI4 MemVar_74BEAC
  loc_64AEA3: ImpAdCallI2 Mid$(, , )
  loc_64AEA8: FStStrNoPop var_100
  loc_64AEAB: LitStr "1"
  loc_64AEAE: EqStr
  loc_64AEB0: FFree1Str var_100
  loc_64AEB3: FFree1Var var_C4 = ""
  loc_64AEB6: BranchF loc_64AED5
  loc_64AEB9: ILdRf var_90
  loc_64AEBC: FLdI2 var_86
  loc_64AEBF: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64AEC4: FLdI2 var_86
  loc_64AEC7: FLdI2 var_86
  loc_64AECA: CI4UI1
  loc_64AECB: FLdPr Me
  loc_64AECE: MemLdRfVar from_stack_1.global_56
  loc_64AED1: Ary1StI2
  loc_64AED2: Branch loc_64AEE2
  loc_64AED5: LitI2_Byte &HFF
  loc_64AED7: FLdI2 var_86
  loc_64AEDA: CI4UI1
  loc_64AEDB: FLdPr Me
  loc_64AEDE: MemLdRfVar from_stack_1.global_56
  loc_64AEE1: Ary1StI2
  loc_64AEE2: Branch loc_64AFAE
  loc_64AEE5: FLdI2 var_FA
  loc_64AEE8: LitI2_Byte &H17
  loc_64AEEA: EqI2
  loc_64AEEB: BranchF loc_64AF3D
  loc_64AEEE: LitVarI2 var_C4, 1
  loc_64AEF3: LitI4 2
  loc_64AEF8: ImpAdLdI4 MemVar_74BEAC
  loc_64AEFB: ImpAdCallI2 Mid$(, , )
  loc_64AF00: FStStrNoPop var_100
  loc_64AF03: LitStr "1"
  loc_64AF06: EqStr
  loc_64AF08: FFree1Str var_100
  loc_64AF0B: FFree1Var var_C4 = ""
  loc_64AF0E: BranchF loc_64AF2D
  loc_64AF11: ILdRf var_90
  loc_64AF14: FLdI2 var_86
  loc_64AF17: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64AF1C: FLdI2 var_86
  loc_64AF1F: FLdI2 var_86
  loc_64AF22: CI4UI1
  loc_64AF23: FLdPr Me
  loc_64AF26: MemLdRfVar from_stack_1.global_56
  loc_64AF29: Ary1StI2
  loc_64AF2A: Branch loc_64AF3A
  loc_64AF2D: LitI2_Byte &HFF
  loc_64AF2F: FLdI2 var_86
  loc_64AF32: CI4UI1
  loc_64AF33: FLdPr Me
  loc_64AF36: MemLdRfVar from_stack_1.global_56
  loc_64AF39: Ary1StI2
  loc_64AF3A: Branch loc_64AFAE
  loc_64AF3D: FLdI2 var_FA
  loc_64AF40: LitI2_Byte &H16
  loc_64AF42: EqI2
  loc_64AF43: BranchF loc_64AF95
  loc_64AF46: LitVarI2 var_C4, 1
  loc_64AF4B: LitI4 3
  loc_64AF50: ImpAdLdI4 MemVar_74BEAC
  loc_64AF53: ImpAdCallI2 Mid$(, , )
  loc_64AF58: FStStrNoPop var_100
  loc_64AF5B: LitStr "1"
  loc_64AF5E: EqStr
  loc_64AF60: FFree1Str var_100
  loc_64AF63: FFree1Var var_C4 = ""
  loc_64AF66: BranchF loc_64AF85
  loc_64AF69: ILdRf var_90
  loc_64AF6C: FLdI2 var_86
  loc_64AF6F: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64AF74: FLdI2 var_86
  loc_64AF77: FLdI2 var_86
  loc_64AF7A: CI4UI1
  loc_64AF7B: FLdPr Me
  loc_64AF7E: MemLdRfVar from_stack_1.global_56
  loc_64AF81: Ary1StI2
  loc_64AF82: Branch loc_64AF92
  loc_64AF85: LitI2_Byte &HFF
  loc_64AF87: FLdI2 var_86
  loc_64AF8A: CI4UI1
  loc_64AF8B: FLdPr Me
  loc_64AF8E: MemLdRfVar from_stack_1.global_56
  loc_64AF91: Ary1StI2
  loc_64AF92: Branch loc_64AFAE
  loc_64AF95: ILdRf var_90
  loc_64AF98: FLdI2 var_86
  loc_64AF9B: from_stack_3v = Proc_69_12_613B70(from_stack_1v, from_stack_2v)
  loc_64AFA0: FLdI2 var_86
  loc_64AFA3: FLdI2 var_86
  loc_64AFA6: CI4UI1
  loc_64AFA7: FLdPr Me
  loc_64AFAA: MemLdRfVar from_stack_1.global_56
  loc_64AFAD: Ary1StI2
  loc_64AFAE: FLdRfVar var_86
  loc_64AFB1: NextI2 var_F8, loc_64AD7E
  loc_64AFB6: ExitProcHresult
End Function

Private Function Proc_69_12_613B70(arg_C, arg_10) '613B70
  'Data Table: 429AB0
  loc_613A48: ILdRf arg_10
  loc_613A4B: FStStrCopy var_88
  loc_613A4E: LitI2_Byte 0
  loc_613A50: CUI1I2
  loc_613A52: FLdI2 arg_C
  loc_613A55: CI4UI1
  loc_613A56: FLdPr Me
  loc_613A59: MemLdRfVar from_stack_1.global_4304
  loc_613A5C: AryInRecLdPr
  loc_613A62: MemStUI1
  loc_613A66: LitI2_Byte 0
  loc_613A68: CUI1I2
  loc_613A6A: FLdI2 arg_C
  loc_613A6D: CI4UI1
  loc_613A6E: FLdPr Me
  loc_613A71: MemLdRfVar from_stack_1.global_2504
  loc_613A74: AryInRecLdPr
  loc_613A7A: MemStUI1
  loc_613A7E: LitI2_Byte 0
  loc_613A80: CUI1I2
  loc_613A82: FLdI2 arg_C
  loc_613A85: CI4UI1
  loc_613A86: FLdPr Me
  loc_613A89: MemLdRfVar from_stack_1.global_3104
  loc_613A8C: AryInRecLdPr
  loc_613A92: MemStUI1
  loc_613A96: LitI2_Byte 0
  loc_613A98: CUI1I2
  loc_613A9A: FLdI2 arg_C
  loc_613A9D: CI4UI1
  loc_613A9E: FLdPr Me
  loc_613AA1: MemLdRfVar from_stack_1.global_3704
  loc_613AA4: AryInRecLdPr
  loc_613AAA: MemStUI1
  loc_613AAE: ILdRf var_88
  loc_613AB1: ImpAdCallI2 Asc()
  loc_613AB6: LitI2_Byte 1
  loc_613AB8: SubI2
  loc_613AB9: LitI2_Byte 0
  loc_613ABB: NeI2
  loc_613ABC: BranchF loc_613B6C
  loc_613ABF: ILdRf var_88
  loc_613AC2: ImpAdCallI2 Asc()
  loc_613AC7: LitI2_Byte 1
  loc_613AC9: SubI2
  loc_613ACA: CUI1I2
  loc_613ACC: FStUI1 var_8A
  loc_613AD0: FLdUI1
  loc_613AD4: CI2UI1
  loc_613AD6: LitI2_Byte 8
  loc_613AD8: AndI4
  loc_613AD9: LitI2_Byte 8
  loc_613ADB: EqI2
  loc_613ADC: BranchF loc_613AF7
  loc_613ADF: LitI2_Byte 1
  loc_613AE1: CUI1I2
  loc_613AE3: FLdI2 arg_C
  loc_613AE6: CI4UI1
  loc_613AE7: FLdPr Me
  loc_613AEA: MemLdRfVar from_stack_1.global_4304
  loc_613AED: AryInRecLdPr
  loc_613AF3: MemStUI1
  loc_613AF7: FLdUI1
  loc_613AFB: CI2UI1
  loc_613AFD: LitI2_Byte 4
  loc_613AFF: AndI4
  loc_613B00: LitI2_Byte 4
  loc_613B02: EqI2
  loc_613B03: BranchF loc_613B1E
  loc_613B06: LitI2_Byte 1
  loc_613B08: CUI1I2
  loc_613B0A: FLdI2 arg_C
  loc_613B0D: CI4UI1
  loc_613B0E: FLdPr Me
  loc_613B11: MemLdRfVar from_stack_1.global_3704
  loc_613B14: AryInRecLdPr
  loc_613B1A: MemStUI1
  loc_613B1E: FLdUI1
  loc_613B22: CI2UI1
  loc_613B24: LitI2_Byte 2
  loc_613B26: AndI4
  loc_613B27: LitI2_Byte 2
  loc_613B29: EqI2
  loc_613B2A: BranchF loc_613B45
  loc_613B2D: LitI2_Byte 1
  loc_613B2F: CUI1I2
  loc_613B31: FLdI2 arg_C
  loc_613B34: CI4UI1
  loc_613B35: FLdPr Me
  loc_613B38: MemLdRfVar from_stack_1.global_3104
  loc_613B3B: AryInRecLdPr
  loc_613B41: MemStUI1
  loc_613B45: FLdUI1
  loc_613B49: CI2UI1
  loc_613B4B: LitI2_Byte 1
  loc_613B4D: AndI4
  loc_613B4E: LitI2_Byte 1
  loc_613B50: EqI2
  loc_613B51: BranchF loc_613B6C
  loc_613B54: LitI2_Byte 1
  loc_613B56: CUI1I2
  loc_613B58: FLdI2 arg_C
  loc_613B5B: CI4UI1
  loc_613B5C: FLdPr Me
  loc_613B5F: MemLdRfVar from_stack_1.global_2504
  loc_613B62: AryInRecLdPr
  loc_613B68: MemStUI1
  loc_613B6C: ExitProcHresult
End Function

Private Function Proc_69_13_60BC08() '60BC08
  'Data Table: 429AB0
  loc_60BB10: LitI2_Byte 1
  loc_60BB12: FLdRfVar var_86
  loc_60BB15: LitI2 600
  loc_60BB18: ForI2 var_8A
  loc_60BB1E: FLdI2 var_86
  loc_60BB21: CI4UI1
  loc_60BB22: FLdPr Me
  loc_60BB25: MemLdRfVar from_stack_1.global_56
  loc_60BB28: Ary1LdI2
  loc_60BB29: LitI2_Byte 0
  loc_60BB2B: GtI2
  loc_60BB2C: BranchF loc_60BBFC
  loc_60BB2F: FLdI2 var_86
  loc_60BB32: CI4UI1
  loc_60BB33: FLdPr Me
  loc_60BB36: MemLdRfVar from_stack_1.global_4904
  loc_60BB39: AryInRecLdPr
  loc_60BB3F: MemLdI2 global_0
  loc_60BB42: LitI2_Byte &HFF
  loc_60BB44: EqI2
  loc_60BB45: BranchF loc_60BB8E
  loc_60BB48: FLdI2 var_86
  loc_60BB4B: CStrUI1
  loc_60BB4D: FStStrNoPop var_90
  loc_60BB50: LitStr " - "
  loc_60BB53: ConcatStr
  loc_60BB54: FStStrNoPop var_94
  loc_60BB57: FLdI2 var_86
  loc_60BB5A: CI4UI1
  loc_60BB5B: ImpAdLdPr unk_429AD4
  loc_60BB5E: MemLdRfVar from_stack_1.global_0
  loc_60BB61: AryInRecLdPr
  loc_60BB67: MemLdStr global_0
  loc_60BB6A: ConcatStr
  loc_60BB6B: FStStrNoPop var_98
  loc_60BB6E: FLdI2 var_86
  loc_60BB71: CI4UI1
  loc_60BB72: FLdPr Me
  loc_60BB75: MemLdRfVar from_stack_1.global_104
  loc_60BB78: AryInRecLdPr
  loc_60BB7E: MemStStrCopy
  loc_60BB82: FFreeStr var_90 = "": var_94 = ""
  loc_60BB8B: Branch loc_60BBFC
  loc_60BB8E: FLdI2 var_86
  loc_60BB91: CI4UI1
  loc_60BB92: ImpAdLdPr unk_429AD4
  loc_60BB95: MemLdRfVar from_stack_1.global_0
  loc_60BB98: AryInRecLdPr
  loc_60BB9E: MemLdStr global_0
  loc_60BBA1: LitStr vbNullString
  loc_60BBA4: NeStr
  loc_60BBA6: BranchF loc_60BBFC
  loc_60BBA9: ImpAdLdUI1
  loc_60BBAD: CI2UI1
  loc_60BBAF: FLdPr Me
  loc_60BBB2: MemLdI2 global_7306
  loc_60BBB5: GeI2
  loc_60BBB6: BranchF loc_60BBFC
  loc_60BBB9: FLdI2 var_86
  loc_60BBBC: CStrUI1
  loc_60BBBE: FStStrNoPop var_90
  loc_60BBC1: LitStr " - "
  loc_60BBC4: ConcatStr
  loc_60BBC5: FStStrNoPop var_94
  loc_60BBC8: FLdI2 var_86
  loc_60BBCB: CI4UI1
  loc_60BBCC: ImpAdLdPr unk_429AD4
  loc_60BBCF: MemLdRfVar from_stack_1.global_0
  loc_60BBD2: AryInRecLdPr
  loc_60BBD8: MemLdStr global_0
  loc_60BBDB: ConcatStr
  loc_60BBDC: FStStrNoPop var_98
  loc_60BBDF: FLdI2 var_86
  loc_60BBE2: CI4UI1
  loc_60BBE3: FLdPr Me
  loc_60BBE6: MemLdRfVar from_stack_1.global_104
  loc_60BBE9: AryInRecLdPr
  loc_60BBEF: MemStStrCopy
  loc_60BBF3: FFreeStr var_90 = "": var_94 = ""
  loc_60BBFC: FLdRfVar var_86
  loc_60BBFF: NextI2 var_8A, loc_60BB1E
  loc_60BC04: ExitProcHresult
End Function

Private Function Proc_69_14_5E4540() '5E4540
  'Data Table: 429AB0
  loc_5E44CC: LitI2_Byte 1
  loc_5E44CE: FStI2 var_8A
  loc_5E44D1: LitI2_Byte 1
  loc_5E44D3: FLdRfVar var_88
  loc_5E44D6: LitI2 600
  loc_5E44D9: ForI2 var_8E
  loc_5E44DF: FLdI2 var_88
  loc_5E44E2: CI4UI1
  loc_5E44E3: FLdPr Me
  loc_5E44E6: MemLdRfVar from_stack_1.global_56
  loc_5E44E9: Ary1LdI2
  loc_5E44EA: LitI2_Byte 0
  loc_5E44EC: GeI2
  loc_5E44ED: FLdI2 var_88
  loc_5E44F0: CI4UI1
  loc_5E44F1: FLdPr Me
  loc_5E44F4: MemLdRfVar from_stack_1.global_104
  loc_5E44F7: AryInRecLdPr
  loc_5E44FD: MemLdStr global_0
  loc_5E4500: LitStr vbNullString
  loc_5E4503: NeStr
  loc_5E4505: AndI4
  loc_5E4506: BranchF loc_5E4528
  loc_5E4509: FLdI2 var_88
  loc_5E450C: CI4UI1
  loc_5E450D: FLdPr Me
  loc_5E4510: MemLdRfVar from_stack_1.global_56
  loc_5E4513: Ary1LdI2
  loc_5E4514: FLdI2 var_8A
  loc_5E4517: CI4UI1
  loc_5E4518: FLdPr Me
  loc_5E451B: MemLdRfVar from_stack_1.global_80
  loc_5E451E: Ary1StI2
  loc_5E451F: FLdI2 var_8A
  loc_5E4522: LitI2_Byte 1
  loc_5E4524: AddI2
  loc_5E4525: FStI2 var_8A
  loc_5E4528: FLdRfVar var_88
  loc_5E452B: NextI2 var_8E, loc_5E44DF
  loc_5E4530: FLdI2 var_8A
  loc_5E4533: LitI2_Byte 1
  loc_5E4535: SubI2
  loc_5E4536: FStI2 var_86
  loc_5E4539: ExitProcCbHresult
End Function

Private Function Proc_69_15_5EFDBC() '5EFDBC
  'Data Table: 429AB0
  loc_5EFD18: LitI2_Byte 1
  loc_5EFD1A: FLdRfVar var_86
  loc_5EFD1D: LitI2 600
  loc_5EFD20: ForI2 var_8A
  loc_5EFD26: LitI2_Byte 0
  loc_5EFD28: FLdI2 var_86
  loc_5EFD2B: CI4UI1
  loc_5EFD2C: FLdPr Me
  loc_5EFD2F: MemLdRfVar from_stack_1.global_56
  loc_5EFD32: Ary1StI2
  loc_5EFD33: LitI2_Byte 0
  loc_5EFD35: FLdI2 var_86
  loc_5EFD38: CI4UI1
  loc_5EFD39: FLdPr Me
  loc_5EFD3C: MemLdRfVar from_stack_1.global_80
  loc_5EFD3F: Ary1StI2
  loc_5EFD40: LitStr vbNullString
  loc_5EFD43: FLdI2 var_86
  loc_5EFD46: CI4UI1
  loc_5EFD47: FLdPr Me
  loc_5EFD4A: MemLdRfVar from_stack_1.global_104
  loc_5EFD4D: AryInRecLdPr
  loc_5EFD53: MemStStrCopy
  loc_5EFD57: FLdI2 var_86
  loc_5EFD5A: FStI2 var_8C
  loc_5EFD5D: FLdI2 var_8C
  loc_5EFD60: LitI2_Byte 1
  loc_5EFD62: LitI2_Byte &H39
  loc_5EFD64: BetweenI2
  loc_5EFD66: BranchT loc_5EFD85
  loc_5EFD69: FLdI2 var_8C
  loc_5EFD6C: LitI2 300
  loc_5EFD6F: LitI2 305
  loc_5EFD72: BetweenI2
  loc_5EFD74: BranchT loc_5EFD85
  loc_5EFD77: FLdI2 var_8C
  loc_5EFD7A: LitI2 350
  loc_5EFD7D: LitI2 368
  loc_5EFD80: BetweenI2
  loc_5EFD82: BranchF loc_5EFD9D
  loc_5EFD85: LitI2_Byte &HFF
  loc_5EFD87: FLdI2 var_86
  loc_5EFD8A: CI4UI1
  loc_5EFD8B: FLdPr Me
  loc_5EFD8E: MemLdRfVar from_stack_1.global_4904
  loc_5EFD91: AryInRecLdPr
  loc_5EFD97: MemStI2 global_0
  loc_5EFD9A: Branch loc_5EFDB2
  loc_5EFD9D: LitI2_Byte 0
  loc_5EFD9F: FLdI2 var_86
  loc_5EFDA2: CI4UI1
  loc_5EFDA3: FLdPr Me
  loc_5EFDA6: MemLdRfVar from_stack_1.global_4904
  loc_5EFDA9: AryInRecLdPr
  loc_5EFDAF: MemStI2 global_0
  loc_5EFDB2: FLdRfVar var_86
  loc_5EFDB5: NextI2 var_8A, loc_5EFD26
  loc_5EFDBA: ExitProcHresult
End Function
