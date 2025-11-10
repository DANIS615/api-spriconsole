VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form ConfiguracionPuertos
  Caption = "Configuración de Puertos Series"
  BackColor = &H80000004&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 1860
  ClientTop = 450
  ClientWidth = 9600
  ClientHeight = 7695
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 9375
    Height = 7395
    TabIndex = 24
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 0
      Left = 6240
      Top = 840
      Width = 2895
      Height = 420
      TabIndex = 1
      List = "ConfiguracionPuertos.frx":0000
      ItemData = "ConfiguracionPuertos.frx":00B4
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 1
      Left = 6240
      Top = 1320
      Width = 2895
      Height = 420
      TabIndex = 3
      List = "ConfiguracionPuertos.frx":00DC
      ItemData = "ConfiguracionPuertos.frx":0190
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 2
      Left = 6240
      Top = 1800
      Width = 2895
      Height = 420
      TabIndex = 5
      List = "ConfiguracionPuertos.frx":01B8
      ItemData = "ConfiguracionPuertos.frx":026C
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 3
      Left = 6240
      Top = 2280
      Width = 2895
      Height = 420
      TabIndex = 7
      List = "ConfiguracionPuertos.frx":0294
      ItemData = "ConfiguracionPuertos.frx":0348
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 4
      Left = 6240
      Top = 2760
      Width = 2895
      Height = 420
      TabIndex = 9
      List = "ConfiguracionPuertos.frx":0370
      ItemData = "ConfiguracionPuertos.frx":0424
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 5
      Left = 6240
      Top = 3240
      Width = 2895
      Height = 420
      TabIndex = 11
      List = "ConfiguracionPuertos.frx":044C
      ItemData = "ConfiguracionPuertos.frx":0500
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 6
      Left = 6240
      Top = 3720
      Width = 2895
      Height = 420
      TabIndex = 13
      List = "ConfiguracionPuertos.frx":0528
      ItemData = "ConfiguracionPuertos.frx":05DC
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 7
      Left = 6240
      Top = 4200
      Width = 2895
      Height = 420
      TabIndex = 15
      List = "ConfiguracionPuertos.frx":0604
      ItemData = "ConfiguracionPuertos.frx":06B8
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 8
      Left = 6240
      Top = 4680
      Width = 2895
      Height = 420
      TabIndex = 17
      List = "ConfiguracionPuertos.frx":06E0
      ItemData = "ConfiguracionPuertos.frx":0794
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 9
      Left = 6240
      Top = 5160
      Width = 2895
      Height = 420
      TabIndex = 19
      List = "ConfiguracionPuertos.frx":07BC
      ItemData = "ConfiguracionPuertos.frx":0870
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
    Begin VB.ComboBox CSpeed
      Style = 2
      Index = 10
      Left = 6240
      Top = 5640
      Width = 2895
      Height = 420
      TabIndex = 21
      List = "ConfiguracionPuertos.frx":0898
      ItemData = "ConfiguracionPuertos.frx":094C
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 840
      Width = 2175
      Height = 420
      TabIndex = 0
      List = "ConfiguracionPuertos.frx":0974
      ItemData = "ConfiguracionPuertos.frx":09BF
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 1320
      Width = 2175
      Height = 420
      TabIndex = 2
      List = "ConfiguracionPuertos.frx":09E1
      ItemData = "ConfiguracionPuertos.frx":0A2C
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 1800
      Width = 2175
      Height = 420
      TabIndex = 4
      List = "ConfiguracionPuertos.frx":0A4E
      ItemData = "ConfiguracionPuertos.frx":0A99
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 2280
      Width = 2175
      Height = 420
      TabIndex = 6
      List = "ConfiguracionPuertos.frx":0ABB
      ItemData = "ConfiguracionPuertos.frx":0B06
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 2760
      Width = 2175
      Height = 420
      TabIndex = 8
      List = "ConfiguracionPuertos.frx":0B28
      ItemData = "ConfiguracionPuertos.frx":0B73
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 3240
      Width = 2175
      Height = 420
      TabIndex = 10
      List = "ConfiguracionPuertos.frx":0B95
      ItemData = "ConfiguracionPuertos.frx":0BE0
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 3720
      Width = 2175
      Height = 420
      TabIndex = 12
      List = "ConfiguracionPuertos.frx":0C02
      ItemData = "ConfiguracionPuertos.frx":0C4D
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 4200
      Width = 2175
      Height = 420
      TabIndex = 14
      List = "ConfiguracionPuertos.frx":0C6F
      ItemData = "ConfiguracionPuertos.frx":0CBA
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 4680
      Width = 2175
      Height = 420
      TabIndex = 16
      List = "ConfiguracionPuertos.frx":0CDC
      ItemData = "ConfiguracionPuertos.frx":0D27
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 5160
      Width = 2175
      Height = 420
      TabIndex = 18
      List = "ConfiguracionPuertos.frx":0D49
      ItemData = "ConfiguracionPuertos.frx":0D94
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
    Begin VB.ComboBox CPuerto
      Style = 2
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4020
      Top = 5640
      Width = 2175
      Height = 420
      TabIndex = 20
      List = "ConfiguracionPuertos.frx":0DB6
      ItemData = "ConfiguracionPuertos.frx":0E01
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
    Begin Threed.SSCommand SSCommand2
      Left = 6480
      Top = 6360
      Width = 2655
      Height = 735
      TabIndex = 23
      OleObjectBlob = "ConfiguracionPuertos.frx":0E23
    End
    Begin Threed.SSCommand sscCancel
      Left = 3600
      Top = 6360
      Width = 2655
      Height = 735
      TabIndex = 22
      OleObjectBlob = "ConfiguracionPuertos.frx":0E87
    End
    Begin VB.Label Label3
      Caption = "Velocidad"
      BackColor = &HC0C0FF&
      ForeColor = &H0&
      Left = 6240
      Top = 360
      Width = 2880
      Height = 405
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Puerto"
      BackColor = &HC0C0FF&
      ForeColor = &H0&
      Left = 4020
      Top = 360
      Width = 2160
      Height = 405
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 0
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 840
      Width = 3735
      Height = 420
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 1
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 1320
      Width = 3720
      Height = 420
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 2
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 1800
      Width = 3720
      Height = 420
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 3
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 2280
      Width = 3720
      Height = 420
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 4
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 2760
      Width = 3720
      Height = 420
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 5
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 3240
      Width = 3720
      Height = 420
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 6
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 3720
      Width = 3720
      Height = 420
      TabIndex = 29
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 7
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 4200
      Width = 3720
      Height = 420
      TabIndex = 28
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 8
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 4680
      Width = 3720
      Height = 420
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 9
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 5160
      Width = 3720
      Height = 420
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label1
      Caption = "   Tanque  1 :"
      Index = 10
      BackColor = &HC0FFFF&
      ForeColor = &H0&
      Left = 240
      Top = 5640
      Width = 3720
      Height = 420
      TabIndex = 25
      BorderStyle = 1 'Fixed Single
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
  End
End

Attribute VB_Name = "ConfiguracionPuertos"


Private Sub SSCommand2_UnknownEvent_8 '5E8AA4
  'Data Table: 417198
  loc_5E8A30: FLdRfVar var_88
  loc_5E8A33: from_stack_2v = Proc_26_9_6234F4(from_stack_1v)
  loc_5E8A38: FLdRfVar var_9C
  loc_5E8A3B: FLdRfVar var_88
  loc_5E8A3E: FLdRfVar var_8C
  loc_5E8A41: ImpAdLdRf MemVar_74C760
  loc_5E8A44: NewIfNullPr Formx
  loc_5E8A47: from_stack_1v = Formx.global_4589716Get()
  loc_5E8A4C: FLdPr var_8C
  loc_5E8A4F: Call 0.Method_arg_1A4 ()
  loc_5E8A54: FLdRfVar var_9C
  loc_5E8A57: NotVar var_AC
  loc_5E8A5B: CBoolVarNull
  loc_5E8A5D: FFree1Ad var_8C
  loc_5E8A60: FFree1Var var_9C = ""
  loc_5E8A63: BranchF loc_5E8A8B
  loc_5E8A66: FLdRfVar var_9C
  loc_5E8A69: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E8A6E: FLdRfVar var_9C
  loc_5E8A71: CBoolVarNull
  loc_5E8A73: FFree1Var var_9C = ""
  loc_5E8A76: BranchF loc_5E8A88
  loc_5E8A79: LitVar_FALSE
  loc_5E8A7D: PopAdLdVar
  loc_5E8A7E: FLdRfVar var_BC
  loc_5E8A81: LdPrVar
  loc_5E8A83: LateMemSt
  loc_5E8A87: ExitProcHresult
  loc_5E8A88: Branch loc_5E8A38
  loc_5E8A8B: ILdRf Me
  loc_5E8A8E: FStAdNoPop
  loc_5E8A92: ImpAdLdRf MemVar_7520D4
  loc_5E8A95: NewIfNullPr Global
  loc_5E8A98: Global.Unload from_stack_1
  loc_5E8A9D: FFree1Ad var_8C
  loc_5E8AA0: ExitProcHresult
  loc_5E8AA1: ILdI4 arg_5DA
End Sub

Private Sub Form_Load() '5D0788
  'Data Table: 417198
  loc_5D0774: LitI2_Byte 0
  loc_5D0776: FLdPr Me
  loc_5D0779: MemStI2 global_150
  loc_5D077C: LitVarI2 var_A4, -1
  loc_5D0781: FStVar var_94
  loc_5D0785: ExitProcHresult
End Sub

Private Sub Form_Activate() '6CA034
  'Data Table: 417198
  loc_6C9724: FLdRfVar var_1D4
  loc_6C9727: LitVar_Missing var_1D0
  loc_6C972A: LitVar_Missing var_1B0
  loc_6C972D: LitVar_Missing var_190
  loc_6C9730: LitVar_Missing var_170
  loc_6C9733: LitVar_Missing var_150
  loc_6C9736: LitVar_Missing var_130
  loc_6C9739: LitVar_Missing var_110
  loc_6C973C: LitVar_Missing var_F0
  loc_6C973F: LitVar_Missing var_D0
  loc_6C9742: LitVar_Missing var_B0
  loc_6C9745: LitStr "Configuración de Puertos Series"
  loc_6C9748: FStStrCopy var_90
  loc_6C974B: FLdRfVar var_90
  loc_6C974E: LitI4 1
  loc_6C9753: PopTmpLdAdStr var_8C
  loc_6C9756: LitI2_Byte &H27
  loc_6C9758: PopTmpLdAd2 var_86
  loc_6C975B: ImpAdLdRf MemVar_74C7D0
  loc_6C975E: NewIfNullPr clsMsg
  loc_6C9761: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9766: ILdRf var_1D4
  loc_6C9769: FLdPr Me
  loc_6C976C: Me.Caption = from_stack_1
  loc_6C9771: FFreeStr var_90 = ""
  loc_6C9778: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C978F: FLdRfVar var_1D4
  loc_6C9792: LitVar_Missing var_1D0
  loc_6C9795: LitVar_Missing var_1B0
  loc_6C9798: LitVar_Missing var_190
  loc_6C979B: LitVar_Missing var_170
  loc_6C979E: LitVar_Missing var_150
  loc_6C97A1: LitVar_Missing var_130
  loc_6C97A4: LitVar_Missing var_110
  loc_6C97A7: LitVar_Missing var_F0
  loc_6C97AA: LitVar_Missing var_D0
  loc_6C97AD: LitVar_Missing var_B0
  loc_6C97B0: LitStr "Puerto"
  loc_6C97B3: FStStrCopy var_90
  loc_6C97B6: FLdRfVar var_90
  loc_6C97B9: LitI4 2
  loc_6C97BE: PopTmpLdAdStr var_8C
  loc_6C97C1: LitI2_Byte &H27
  loc_6C97C3: PopTmpLdAd2 var_86
  loc_6C97C6: ImpAdLdRf MemVar_74C7D0
  loc_6C97C9: NewIfNullPr clsMsg
  loc_6C97CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C97D1: ILdRf var_1D4
  loc_6C97D4: FLdPrThis
  loc_6C97D5: VCallAd Control_ID_Label2
  loc_6C97D8: FStAdFunc var_1D8
  loc_6C97DB: FLdPr var_1D8
  loc_6C97DE: Me.Caption = from_stack_1
  loc_6C97E3: FFreeStr var_90 = ""
  loc_6C97EA: FFree1Ad var_1D8
  loc_6C97ED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9804: FLdRfVar var_1D4
  loc_6C9807: LitVar_Missing var_1D0
  loc_6C980A: LitVar_Missing var_1B0
  loc_6C980D: LitVar_Missing var_190
  loc_6C9810: LitVar_Missing var_170
  loc_6C9813: LitVar_Missing var_150
  loc_6C9816: LitVar_Missing var_130
  loc_6C9819: LitVar_Missing var_110
  loc_6C981C: LitVar_Missing var_F0
  loc_6C981F: LitVar_Missing var_D0
  loc_6C9822: LitVar_Missing var_B0
  loc_6C9825: LitStr "Velocidad"
  loc_6C9828: FStStrCopy var_90
  loc_6C982B: FLdRfVar var_90
  loc_6C982E: LitI4 3
  loc_6C9833: PopTmpLdAdStr var_8C
  loc_6C9836: LitI2_Byte &H27
  loc_6C9838: PopTmpLdAd2 var_86
  loc_6C983B: ImpAdLdRf MemVar_74C7D0
  loc_6C983E: NewIfNullPr clsMsg
  loc_6C9841: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9846: ILdRf var_1D4
  loc_6C9849: FLdPrThis
  loc_6C984A: VCallAd Control_ID_Label3
  loc_6C984D: FStAdFunc var_1D8
  loc_6C9850: FLdPr var_1D8
  loc_6C9853: Me.Caption = from_stack_1
  loc_6C9858: FFreeStr var_90 = ""
  loc_6C985F: FFree1Ad var_1D8
  loc_6C9862: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9879: FLdRfVar var_1D4
  loc_6C987C: LitVar_Missing var_1D0
  loc_6C987F: LitVar_Missing var_1B0
  loc_6C9882: LitVar_Missing var_190
  loc_6C9885: LitVar_Missing var_170
  loc_6C9888: LitVar_Missing var_150
  loc_6C988B: LitVar_Missing var_130
  loc_6C988E: LitVar_Missing var_110
  loc_6C9891: LitVar_Missing var_F0
  loc_6C9894: LitVar_Missing var_D0
  loc_6C9897: LitVar_Missing var_B0
  loc_6C989A: LitStr "&Cancelar"
  loc_6C989D: FStStrCopy var_90
  loc_6C98A0: FLdRfVar var_90
  loc_6C98A3: LitI4 4
  loc_6C98A8: PopTmpLdAdStr var_8C
  loc_6C98AB: LitI2_Byte &H27
  loc_6C98AD: PopTmpLdAd2 var_86
  loc_6C98B0: ImpAdLdRf MemVar_74C7D0
  loc_6C98B3: NewIfNullPr clsMsg
  loc_6C98B6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C98BB: FLdZeroAd var_1D4
  loc_6C98BE: CVarStr var_1E8
  loc_6C98C1: PopAdLdVar
  loc_6C98C2: FLdPrThis
  loc_6C98C3: VCallAd Control_ID_sscCancel
  loc_6C98C6: FStAdFunc var_1D8
  loc_6C98C9: FLdPr var_1D8
  loc_6C98CC: LateIdSt
  loc_6C98D1: FFree1Str var_90
  loc_6C98D4: FFree1Ad var_1D8
  loc_6C98D7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C98F0: FLdRfVar var_1D4
  loc_6C98F3: LitVar_Missing var_1D0
  loc_6C98F6: LitVar_Missing var_1B0
  loc_6C98F9: LitVar_Missing var_190
  loc_6C98FC: LitVar_Missing var_170
  loc_6C98FF: LitVar_Missing var_150
  loc_6C9902: LitVar_Missing var_130
  loc_6C9905: LitVar_Missing var_110
  loc_6C9908: LitVar_Missing var_F0
  loc_6C990B: LitVar_Missing var_D0
  loc_6C990E: LitVar_Missing var_B0
  loc_6C9911: LitStr "&Aceptar"
  loc_6C9914: FStStrCopy var_90
  loc_6C9917: FLdRfVar var_90
  loc_6C991A: LitI4 5
  loc_6C991F: PopTmpLdAdStr var_8C
  loc_6C9922: LitI2_Byte &H27
  loc_6C9924: PopTmpLdAd2 var_86
  loc_6C9927: ImpAdLdRf MemVar_74C7D0
  loc_6C992A: NewIfNullPr clsMsg
  loc_6C992D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9932: FLdZeroAd var_1D4
  loc_6C9935: CVarStr var_1E8
  loc_6C9938: PopAdLdVar
  loc_6C9939: FLdPrThis
  loc_6C993A: VCallAd Control_ID_SSCommand2
  loc_6C993D: FStAdFunc var_1D8
  loc_6C9940: FLdPr var_1D8
  loc_6C9943: LateIdSt
  loc_6C9948: FFree1Str var_90
  loc_6C994B: FFree1Ad var_1D8
  loc_6C994E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C9967: LitVarI2 var_E0, 0
  loc_6C996C: FLdRfVar var_1F8
  loc_6C996F: LitVarI2 var_C0, 10
  loc_6C9974: ForVar var_218
  loc_6C997A: FLdRfVar var_1D4
  loc_6C997D: LitVar_Missing var_1D0
  loc_6C9980: LitVar_Missing var_1B0
  loc_6C9983: LitVar_Missing var_190
  loc_6C9986: LitVar_Missing var_170
  loc_6C9989: LitVar_Missing var_150
  loc_6C998C: LitVar_Missing var_130
  loc_6C998F: LitVar_Missing var_110
  loc_6C9992: LitVar_Missing var_F0
  loc_6C9995: LitVar_Missing var_D0
  loc_6C9998: LitVar_Missing var_B0
  loc_6C999B: LitStr "Deshabilitado"
  loc_6C999E: FStStrCopy var_90
  loc_6C99A1: FLdRfVar var_90
  loc_6C99A4: LitI4 6
  loc_6C99A9: PopTmpLdAdStr var_8C
  loc_6C99AC: LitI2_Byte &H27
  loc_6C99AE: PopTmpLdAd2 var_86
  loc_6C99B1: ImpAdLdRf MemVar_74C7D0
  loc_6C99B4: NewIfNullPr clsMsg
  loc_6C99B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C99BC: ILdRf var_1D4
  loc_6C99BF: LitI2_Byte 0
  loc_6C99C1: FLdRfVar var_21C
  loc_6C99C4: FLdRfVar var_1F8
  loc_6C99C7: CI2Var
  loc_6C99C8: FLdPrThis
  loc_6C99C9: VCallAd Control_ID_CSpeed
  loc_6C99CC: FStAdFunc var_1D8
  loc_6C99CF: FLdPr var_1D8
  loc_6C99D2: Set from_stack_2 = Me(from_stack_1)
  loc_6C99D7: FLdPr var_21C
  loc_6C99DA: Me.List(from_stack_1) = from_stack_2
  loc_6C99DF: FFreeStr var_90 = ""
  loc_6C99E6: FFreeAd var_1D8 = ""
  loc_6C99ED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9A04: FLdRfVar var_1D4
  loc_6C9A07: LitVar_Missing var_1D0
  loc_6C9A0A: LitVar_Missing var_1B0
  loc_6C9A0D: LitVar_Missing var_190
  loc_6C9A10: LitVar_Missing var_170
  loc_6C9A13: LitVar_Missing var_150
  loc_6C9A16: LitVar_Missing var_130
  loc_6C9A19: LitVar_Missing var_110
  loc_6C9A1C: LitVar_Missing var_F0
  loc_6C9A1F: LitVar_Missing var_D0
  loc_6C9A22: LitVar_Missing var_B0
  loc_6C9A25: LitStr "900  Baudios"
  loc_6C9A28: FStStrCopy var_90
  loc_6C9A2B: FLdRfVar var_90
  loc_6C9A2E: LitI4 7
  loc_6C9A33: PopTmpLdAdStr var_8C
  loc_6C9A36: LitI2_Byte &H27
  loc_6C9A38: PopTmpLdAd2 var_86
  loc_6C9A3B: ImpAdLdRf MemVar_74C7D0
  loc_6C9A3E: NewIfNullPr clsMsg
  loc_6C9A41: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9A46: ILdRf var_1D4
  loc_6C9A49: LitI2_Byte 1
  loc_6C9A4B: FLdRfVar var_21C
  loc_6C9A4E: FLdRfVar var_1F8
  loc_6C9A51: CI2Var
  loc_6C9A52: FLdPrThis
  loc_6C9A53: VCallAd Control_ID_CSpeed
  loc_6C9A56: FStAdFunc var_1D8
  loc_6C9A59: FLdPr var_1D8
  loc_6C9A5C: Set from_stack_2 = Me(from_stack_1)
  loc_6C9A61: FLdPr var_21C
  loc_6C9A64: Me.List(from_stack_1) = from_stack_2
  loc_6C9A69: FFreeStr var_90 = ""
  loc_6C9A70: FFreeAd var_1D8 = ""
  loc_6C9A77: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9A8E: FLdRfVar var_1D4
  loc_6C9A91: LitVar_Missing var_1D0
  loc_6C9A94: LitVar_Missing var_1B0
  loc_6C9A97: LitVar_Missing var_190
  loc_6C9A9A: LitVar_Missing var_170
  loc_6C9A9D: LitVar_Missing var_150
  loc_6C9AA0: LitVar_Missing var_130
  loc_6C9AA3: LitVar_Missing var_110
  loc_6C9AA6: LitVar_Missing var_F0
  loc_6C9AA9: LitVar_Missing var_D0
  loc_6C9AAC: LitVar_Missing var_B0
  loc_6C9AAF: LitStr "1200 Baudios"
  loc_6C9AB2: FStStrCopy var_90
  loc_6C9AB5: FLdRfVar var_90
  loc_6C9AB8: LitI4 8
  loc_6C9ABD: PopTmpLdAdStr var_8C
  loc_6C9AC0: LitI2_Byte &H27
  loc_6C9AC2: PopTmpLdAd2 var_86
  loc_6C9AC5: ImpAdLdRf MemVar_74C7D0
  loc_6C9AC8: NewIfNullPr clsMsg
  loc_6C9ACB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9AD0: ILdRf var_1D4
  loc_6C9AD3: LitI2_Byte 2
  loc_6C9AD5: FLdRfVar var_21C
  loc_6C9AD8: FLdRfVar var_1F8
  loc_6C9ADB: CI2Var
  loc_6C9ADC: FLdPrThis
  loc_6C9ADD: VCallAd Control_ID_CSpeed
  loc_6C9AE0: FStAdFunc var_1D8
  loc_6C9AE3: FLdPr var_1D8
  loc_6C9AE6: Set from_stack_2 = Me(from_stack_1)
  loc_6C9AEB: FLdPr var_21C
  loc_6C9AEE: Me.List(from_stack_1) = from_stack_2
  loc_6C9AF3: FFreeStr var_90 = ""
  loc_6C9AFA: FFreeAd var_1D8 = ""
  loc_6C9B01: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9B18: FLdRfVar var_1D4
  loc_6C9B1B: LitVar_Missing var_1D0
  loc_6C9B1E: LitVar_Missing var_1B0
  loc_6C9B21: LitVar_Missing var_190
  loc_6C9B24: LitVar_Missing var_170
  loc_6C9B27: LitVar_Missing var_150
  loc_6C9B2A: LitVar_Missing var_130
  loc_6C9B2D: LitVar_Missing var_110
  loc_6C9B30: LitVar_Missing var_F0
  loc_6C9B33: LitVar_Missing var_D0
  loc_6C9B36: LitVar_Missing var_B0
  loc_6C9B39: LitStr "2400 Baudios"
  loc_6C9B3C: FStStrCopy var_90
  loc_6C9B3F: FLdRfVar var_90
  loc_6C9B42: LitI4 9
  loc_6C9B47: PopTmpLdAdStr var_8C
  loc_6C9B4A: LitI2_Byte &H27
  loc_6C9B4C: PopTmpLdAd2 var_86
  loc_6C9B4F: ImpAdLdRf MemVar_74C7D0
  loc_6C9B52: NewIfNullPr clsMsg
  loc_6C9B55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9B5A: ILdRf var_1D4
  loc_6C9B5D: LitI2_Byte 3
  loc_6C9B5F: FLdRfVar var_21C
  loc_6C9B62: FLdRfVar var_1F8
  loc_6C9B65: CI2Var
  loc_6C9B66: FLdPrThis
  loc_6C9B67: VCallAd Control_ID_CSpeed
  loc_6C9B6A: FStAdFunc var_1D8
  loc_6C9B6D: FLdPr var_1D8
  loc_6C9B70: Set from_stack_2 = Me(from_stack_1)
  loc_6C9B75: FLdPr var_21C
  loc_6C9B78: Me.List(from_stack_1) = from_stack_2
  loc_6C9B7D: FFreeStr var_90 = ""
  loc_6C9B84: FFreeAd var_1D8 = ""
  loc_6C9B8B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9BA2: FLdRfVar var_1D4
  loc_6C9BA5: LitVar_Missing var_1D0
  loc_6C9BA8: LitVar_Missing var_1B0
  loc_6C9BAB: LitVar_Missing var_190
  loc_6C9BAE: LitVar_Missing var_170
  loc_6C9BB1: LitVar_Missing var_150
  loc_6C9BB4: LitVar_Missing var_130
  loc_6C9BB7: LitVar_Missing var_110
  loc_6C9BBA: LitVar_Missing var_F0
  loc_6C9BBD: LitVar_Missing var_D0
  loc_6C9BC0: LitVar_Missing var_B0
  loc_6C9BC3: LitStr "4800 Baudios"
  loc_6C9BC6: FStStrCopy var_90
  loc_6C9BC9: FLdRfVar var_90
  loc_6C9BCC: LitI4 &HA
  loc_6C9BD1: PopTmpLdAdStr var_8C
  loc_6C9BD4: LitI2_Byte &H27
  loc_6C9BD6: PopTmpLdAd2 var_86
  loc_6C9BD9: ImpAdLdRf MemVar_74C7D0
  loc_6C9BDC: NewIfNullPr clsMsg
  loc_6C9BDF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9BE4: ILdRf var_1D4
  loc_6C9BE7: LitI2_Byte 4
  loc_6C9BE9: FLdRfVar var_21C
  loc_6C9BEC: FLdRfVar var_1F8
  loc_6C9BEF: CI2Var
  loc_6C9BF0: FLdPrThis
  loc_6C9BF1: VCallAd Control_ID_CSpeed
  loc_6C9BF4: FStAdFunc var_1D8
  loc_6C9BF7: FLdPr var_1D8
  loc_6C9BFA: Set from_stack_2 = Me(from_stack_1)
  loc_6C9BFF: FLdPr var_21C
  loc_6C9C02: Me.List(from_stack_1) = from_stack_2
  loc_6C9C07: FFreeStr var_90 = ""
  loc_6C9C0E: FFreeAd var_1D8 = ""
  loc_6C9C15: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9C2C: FLdRfVar var_1D4
  loc_6C9C2F: LitVar_Missing var_1D0
  loc_6C9C32: LitVar_Missing var_1B0
  loc_6C9C35: LitVar_Missing var_190
  loc_6C9C38: LitVar_Missing var_170
  loc_6C9C3B: LitVar_Missing var_150
  loc_6C9C3E: LitVar_Missing var_130
  loc_6C9C41: LitVar_Missing var_110
  loc_6C9C44: LitVar_Missing var_F0
  loc_6C9C47: LitVar_Missing var_D0
  loc_6C9C4A: LitVar_Missing var_B0
  loc_6C9C4D: LitStr "9600 Baudios"
  loc_6C9C50: FStStrCopy var_90
  loc_6C9C53: FLdRfVar var_90
  loc_6C9C56: LitI4 &HB
  loc_6C9C5B: PopTmpLdAdStr var_8C
  loc_6C9C5E: LitI2_Byte &H27
  loc_6C9C60: PopTmpLdAd2 var_86
  loc_6C9C63: ImpAdLdRf MemVar_74C7D0
  loc_6C9C66: NewIfNullPr clsMsg
  loc_6C9C69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9C6E: ILdRf var_1D4
  loc_6C9C71: LitI2_Byte 5
  loc_6C9C73: FLdRfVar var_21C
  loc_6C9C76: FLdRfVar var_1F8
  loc_6C9C79: CI2Var
  loc_6C9C7A: FLdPrThis
  loc_6C9C7B: VCallAd Control_ID_CSpeed
  loc_6C9C7E: FStAdFunc var_1D8
  loc_6C9C81: FLdPr var_1D8
  loc_6C9C84: Set from_stack_2 = Me(from_stack_1)
  loc_6C9C89: FLdPr var_21C
  loc_6C9C8C: Me.List(from_stack_1) = from_stack_2
  loc_6C9C91: FFreeStr var_90 = ""
  loc_6C9C98: FFreeAd var_1D8 = ""
  loc_6C9C9F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9CB6: FLdRfVar var_1D4
  loc_6C9CB9: LitVar_Missing var_1D0
  loc_6C9CBC: LitVar_Missing var_1B0
  loc_6C9CBF: LitVar_Missing var_190
  loc_6C9CC2: LitVar_Missing var_170
  loc_6C9CC5: LitVar_Missing var_150
  loc_6C9CC8: LitVar_Missing var_130
  loc_6C9CCB: LitVar_Missing var_110
  loc_6C9CCE: LitVar_Missing var_F0
  loc_6C9CD1: LitVar_Missing var_D0
  loc_6C9CD4: LitVar_Missing var_B0
  loc_6C9CD7: LitStr "14400 Baudios"
  loc_6C9CDA: FStStrCopy var_90
  loc_6C9CDD: FLdRfVar var_90
  loc_6C9CE0: LitI4 &HC
  loc_6C9CE5: PopTmpLdAdStr var_8C
  loc_6C9CE8: LitI2_Byte &H27
  loc_6C9CEA: PopTmpLdAd2 var_86
  loc_6C9CED: ImpAdLdRf MemVar_74C7D0
  loc_6C9CF0: NewIfNullPr clsMsg
  loc_6C9CF3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9CF8: ILdRf var_1D4
  loc_6C9CFB: LitI2_Byte 6
  loc_6C9CFD: FLdRfVar var_21C
  loc_6C9D00: FLdRfVar var_1F8
  loc_6C9D03: CI2Var
  loc_6C9D04: FLdPrThis
  loc_6C9D05: VCallAd Control_ID_CSpeed
  loc_6C9D08: FStAdFunc var_1D8
  loc_6C9D0B: FLdPr var_1D8
  loc_6C9D0E: Set from_stack_2 = Me(from_stack_1)
  loc_6C9D13: FLdPr var_21C
  loc_6C9D16: Me.List(from_stack_1) = from_stack_2
  loc_6C9D1B: FFreeStr var_90 = ""
  loc_6C9D22: FFreeAd var_1D8 = ""
  loc_6C9D29: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9D40: FLdRfVar var_1D4
  loc_6C9D43: LitVar_Missing var_1D0
  loc_6C9D46: LitVar_Missing var_1B0
  loc_6C9D49: LitVar_Missing var_190
  loc_6C9D4C: LitVar_Missing var_170
  loc_6C9D4F: LitVar_Missing var_150
  loc_6C9D52: LitVar_Missing var_130
  loc_6C9D55: LitVar_Missing var_110
  loc_6C9D58: LitVar_Missing var_F0
  loc_6C9D5B: LitVar_Missing var_D0
  loc_6C9D5E: LitVar_Missing var_B0
  loc_6C9D61: LitStr "19200 Baudios"
  loc_6C9D64: FStStrCopy var_90
  loc_6C9D67: FLdRfVar var_90
  loc_6C9D6A: LitI4 &HD
  loc_6C9D6F: PopTmpLdAdStr var_8C
  loc_6C9D72: LitI2_Byte &H27
  loc_6C9D74: PopTmpLdAd2 var_86
  loc_6C9D77: ImpAdLdRf MemVar_74C7D0
  loc_6C9D7A: NewIfNullPr clsMsg
  loc_6C9D7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9D82: ILdRf var_1D4
  loc_6C9D85: LitI2_Byte 7
  loc_6C9D87: FLdRfVar var_21C
  loc_6C9D8A: FLdRfVar var_1F8
  loc_6C9D8D: CI2Var
  loc_6C9D8E: FLdPrThis
  loc_6C9D8F: VCallAd Control_ID_CSpeed
  loc_6C9D92: FStAdFunc var_1D8
  loc_6C9D95: FLdPr var_1D8
  loc_6C9D98: Set from_stack_2 = Me(from_stack_1)
  loc_6C9D9D: FLdPr var_21C
  loc_6C9DA0: Me.List(from_stack_1) = from_stack_2
  loc_6C9DA5: FFreeStr var_90 = ""
  loc_6C9DAC: FFreeAd var_1D8 = ""
  loc_6C9DB3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9DCA: FLdRfVar var_1D4
  loc_6C9DCD: LitVar_Missing var_1D0
  loc_6C9DD0: LitVar_Missing var_1B0
  loc_6C9DD3: LitVar_Missing var_190
  loc_6C9DD6: LitVar_Missing var_170
  loc_6C9DD9: LitVar_Missing var_150
  loc_6C9DDC: LitVar_Missing var_130
  loc_6C9DDF: LitVar_Missing var_110
  loc_6C9DE2: LitVar_Missing var_F0
  loc_6C9DE5: LitVar_Missing var_D0
  loc_6C9DE8: LitVar_Missing var_B0
  loc_6C9DEB: LitStr "28800 Baudios"
  loc_6C9DEE: FStStrCopy var_90
  loc_6C9DF1: FLdRfVar var_90
  loc_6C9DF4: LitI4 &HE
  loc_6C9DF9: PopTmpLdAdStr var_8C
  loc_6C9DFC: LitI2_Byte &H27
  loc_6C9DFE: PopTmpLdAd2 var_86
  loc_6C9E01: ImpAdLdRf MemVar_74C7D0
  loc_6C9E04: NewIfNullPr clsMsg
  loc_6C9E07: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9E0C: ILdRf var_1D4
  loc_6C9E0F: LitI2_Byte 8
  loc_6C9E11: FLdRfVar var_21C
  loc_6C9E14: FLdRfVar var_1F8
  loc_6C9E17: CI2Var
  loc_6C9E18: FLdPrThis
  loc_6C9E19: VCallAd Control_ID_CSpeed
  loc_6C9E1C: FStAdFunc var_1D8
  loc_6C9E1F: FLdPr var_1D8
  loc_6C9E22: Set from_stack_2 = Me(from_stack_1)
  loc_6C9E27: FLdPr var_21C
  loc_6C9E2A: Me.List(from_stack_1) = from_stack_2
  loc_6C9E2F: FFreeStr var_90 = ""
  loc_6C9E36: FFreeAd var_1D8 = ""
  loc_6C9E3D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9E54: FLdRfVar var_1D4
  loc_6C9E57: LitVar_Missing var_1D0
  loc_6C9E5A: LitVar_Missing var_1B0
  loc_6C9E5D: LitVar_Missing var_190
  loc_6C9E60: LitVar_Missing var_170
  loc_6C9E63: LitVar_Missing var_150
  loc_6C9E66: LitVar_Missing var_130
  loc_6C9E69: LitVar_Missing var_110
  loc_6C9E6C: LitVar_Missing var_F0
  loc_6C9E6F: LitVar_Missing var_D0
  loc_6C9E72: LitVar_Missing var_B0
  loc_6C9E75: LitStr "38400 Baudios"
  loc_6C9E78: FStStrCopy var_90
  loc_6C9E7B: FLdRfVar var_90
  loc_6C9E7E: LitI4 &HF
  loc_6C9E83: PopTmpLdAdStr var_8C
  loc_6C9E86: LitI2_Byte &H27
  loc_6C9E88: PopTmpLdAd2 var_86
  loc_6C9E8B: ImpAdLdRf MemVar_74C7D0
  loc_6C9E8E: NewIfNullPr clsMsg
  loc_6C9E91: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9E96: ILdRf var_1D4
  loc_6C9E99: LitI2_Byte 9
  loc_6C9E9B: FLdRfVar var_21C
  loc_6C9E9E: FLdRfVar var_1F8
  loc_6C9EA1: CI2Var
  loc_6C9EA2: FLdPrThis
  loc_6C9EA3: VCallAd Control_ID_CSpeed
  loc_6C9EA6: FStAdFunc var_1D8
  loc_6C9EA9: FLdPr var_1D8
  loc_6C9EAC: Set from_stack_2 = Me(from_stack_1)
  loc_6C9EB1: FLdPr var_21C
  loc_6C9EB4: Me.List(from_stack_1) = from_stack_2
  loc_6C9EB9: FFreeStr var_90 = ""
  loc_6C9EC0: FFreeAd var_1D8 = ""
  loc_6C9EC7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9EDE: FLdRfVar var_1D4
  loc_6C9EE1: LitVar_Missing var_1D0
  loc_6C9EE4: LitVar_Missing var_1B0
  loc_6C9EE7: LitVar_Missing var_190
  loc_6C9EEA: LitVar_Missing var_170
  loc_6C9EED: LitVar_Missing var_150
  loc_6C9EF0: LitVar_Missing var_130
  loc_6C9EF3: LitVar_Missing var_110
  loc_6C9EF6: LitVar_Missing var_F0
  loc_6C9EF9: LitVar_Missing var_D0
  loc_6C9EFC: LitVar_Missing var_B0
  loc_6C9EFF: LitStr "57600 Baudios"
  loc_6C9F02: FStStrCopy var_90
  loc_6C9F05: FLdRfVar var_90
  loc_6C9F08: LitI4 &H10
  loc_6C9F0D: PopTmpLdAdStr var_8C
  loc_6C9F10: LitI2_Byte &H27
  loc_6C9F12: PopTmpLdAd2 var_86
  loc_6C9F15: ImpAdLdRf MemVar_74C7D0
  loc_6C9F18: NewIfNullPr clsMsg
  loc_6C9F1B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9F20: ILdRf var_1D4
  loc_6C9F23: LitI2_Byte &HA
  loc_6C9F25: FLdRfVar var_21C
  loc_6C9F28: FLdRfVar var_1F8
  loc_6C9F2B: CI2Var
  loc_6C9F2C: FLdPrThis
  loc_6C9F2D: VCallAd Control_ID_CSpeed
  loc_6C9F30: FStAdFunc var_1D8
  loc_6C9F33: FLdPr var_1D8
  loc_6C9F36: Set from_stack_2 = Me(from_stack_1)
  loc_6C9F3B: FLdPr var_21C
  loc_6C9F3E: Me.List(from_stack_1) = from_stack_2
  loc_6C9F43: FFreeStr var_90 = ""
  loc_6C9F4A: FFreeAd var_1D8 = ""
  loc_6C9F51: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9F68: FLdRfVar var_1D4
  loc_6C9F6B: LitVar_Missing var_1D0
  loc_6C9F6E: LitVar_Missing var_1B0
  loc_6C9F71: LitVar_Missing var_190
  loc_6C9F74: LitVar_Missing var_170
  loc_6C9F77: LitVar_Missing var_150
  loc_6C9F7A: LitVar_Missing var_130
  loc_6C9F7D: LitVar_Missing var_110
  loc_6C9F80: LitVar_Missing var_F0
  loc_6C9F83: LitVar_Missing var_D0
  loc_6C9F86: LitVar_Missing var_B0
  loc_6C9F89: LitStr "115200 Baudios"
  loc_6C9F8C: FStStrCopy var_90
  loc_6C9F8F: FLdRfVar var_90
  loc_6C9F92: LitI4 &H11
  loc_6C9F97: PopTmpLdAdStr var_8C
  loc_6C9F9A: LitI2_Byte &H27
  loc_6C9F9C: PopTmpLdAd2 var_86
  loc_6C9F9F: ImpAdLdRf MemVar_74C7D0
  loc_6C9FA2: NewIfNullPr clsMsg
  loc_6C9FA5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9FAA: ILdRf var_1D4
  loc_6C9FAD: LitI2_Byte &HB
  loc_6C9FAF: FLdRfVar var_21C
  loc_6C9FB2: FLdRfVar var_1F8
  loc_6C9FB5: CI2Var
  loc_6C9FB6: FLdPrThis
  loc_6C9FB7: VCallAd Control_ID_CSpeed
  loc_6C9FBA: FStAdFunc var_1D8
  loc_6C9FBD: FLdPr var_1D8
  loc_6C9FC0: Set from_stack_2 = Me(from_stack_1)
  loc_6C9FC5: FLdPr var_21C
  loc_6C9FC8: Me.List(from_stack_1) = from_stack_2
  loc_6C9FCD: FFreeStr var_90 = ""
  loc_6C9FD4: FFreeAd var_1D8 = ""
  loc_6C9FDB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C9FF2: FLdRfVar var_1F8
  loc_6C9FF5: NextStepVar var_218
  loc_6C9FFB: FLdPr Me
  loc_6C9FFE: MemLdI2 global_150
  loc_6CA001: BranchF loc_6CA005
  loc_6CA004: ExitProcHresult
  loc_6CA005: LitI2_Byte &HFF
  loc_6CA007: FLdPr Me
  loc_6CA00A: MemStI2 global_150
  loc_6CA00D: ILdRf Me
  loc_6CA010: CastAd
  loc_6CA013: FStAdFunc var_1D8
  loc_6CA016: FLdRfVar var_1D8
  loc_6CA019: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6CA01E: FFree1Ad var_1D8
  loc_6CA021: from_stack_1v = Proc_26_4_63786C()
  loc_6CA026: from_stack_1v = Proc_26_5_6A6530()
  loc_6CA02B: from_stack_1v = Proc_26_6_5E43E4()
  loc_6CA030: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5D2A68
  'Data Table: 417198
  loc_5D2A50: ILdRf Me
  loc_5D2A53: FStAdNoPop
  loc_5D2A57: ImpAdLdRf MemVar_7520D4
  loc_5D2A5A: NewIfNullPr Global
  loc_5D2A5D: Global.Unload from_stack_1
  loc_5D2A62: FFree1Ad var_88
  loc_5D2A65: ExitProcHresult
End Sub

Private Function Proc_26_4_63786C() '63786C
  'Data Table: 417198
  loc_63764C: LitI2_Byte 1
  loc_63764E: FLdPr Me
  loc_637651: MemStI2 global_148
  loc_637654: LitI4 3
  loc_637659: ImpAdLdRf MemVar_74C050
  loc_63765C: Ary1LdUI1
  loc_63765E: CI2UI1
  loc_637660: LitI2_Byte 0
  loc_637662: NeI2
  loc_637663: BranchF loc_6376B9
  loc_637666: LitI4 &H82
  loc_63766B: FLdPr Me
  loc_63766E: MemLdI2 global_148
  loc_637671: CI4UI1
  loc_637672: FLdPr Me
  loc_637675: MemLdRfVar from_stack_1.global_52
  loc_637678: Ary1StI4
  loc_637679: FLdPr Me
  loc_63767C: MemLdI2 global_148
  loc_63767F: LitI2_Byte 1
  loc_637681: AddI2
  loc_637682: FLdPr Me
  loc_637685: MemStI2 global_148
  loc_637688: LitI4 3
  loc_63768D: ImpAdLdRf MemVar_74C050
  loc_637690: Ary1LdUI1
  loc_637692: CI2UI1
  loc_637694: LitI2_Byte &H10
  loc_637696: GtI2
  loc_637697: BranchF loc_6376B9
  loc_63769A: LitI4 &H83
  loc_63769F: FLdPr Me
  loc_6376A2: MemLdI2 global_148
  loc_6376A5: CI4UI1
  loc_6376A6: FLdPr Me
  loc_6376A9: MemLdRfVar from_stack_1.global_52
  loc_6376AC: Ary1StI4
  loc_6376AD: FLdPr Me
  loc_6376B0: MemLdI2 global_148
  loc_6376B3: FLdPr Me
  loc_6376B6: MemStI2 global_148
  loc_6376B9: LitI4 4
  loc_6376BE: ImpAdLdRf MemVar_74C050
  loc_6376C1: Ary1LdUI1
  loc_6376C3: CI2UI1
  loc_6376C5: LitI2_Byte 0
  loc_6376C7: NeI2
  loc_6376C8: BranchF loc_6376ED
  loc_6376CB: LitI4 &H8C
  loc_6376D0: FLdPr Me
  loc_6376D3: MemLdI2 global_148
  loc_6376D6: CI4UI1
  loc_6376D7: FLdPr Me
  loc_6376DA: MemLdRfVar from_stack_1.global_52
  loc_6376DD: Ary1StI4
  loc_6376DE: FLdPr Me
  loc_6376E1: MemLdI2 global_148
  loc_6376E4: LitI2_Byte 1
  loc_6376E6: AddI2
  loc_6376E7: FLdPr Me
  loc_6376EA: MemStI2 global_148
  loc_6376ED: ImpAdLdUI1
  loc_6376F1: FStUI1 var_86
  loc_6376F5: FLdUI1
  loc_6376F9: LitI2_Byte 1
  loc_6376FB: CUI1I2
  loc_6376FD: EqI2
  loc_6376FE: BranchF loc_637754
  loc_637701: LitI4 &HC9
  loc_637706: FLdPr Me
  loc_637709: MemLdI2 global_148
  loc_63770C: CI4UI1
  loc_63770D: FLdPr Me
  loc_637710: MemLdRfVar from_stack_1.global_52
  loc_637713: Ary1StI4
  loc_637714: FLdPr Me
  loc_637717: MemLdI2 global_148
  loc_63771A: LitI2_Byte 1
  loc_63771C: AddI2
  loc_63771D: FLdPr Me
  loc_637720: MemStI2 global_148
  loc_637723: ImpAdLdUI1
  loc_637727: CI2UI1
  loc_637729: LitI2_Byte 8
  loc_63772B: GtI2
  loc_63772C: BranchF loc_637751
  loc_63772F: LitI4 &HCA
  loc_637734: FLdPr Me
  loc_637737: MemLdI2 global_148
  loc_63773A: CI4UI1
  loc_63773B: FLdPr Me
  loc_63773E: MemLdRfVar from_stack_1.global_52
  loc_637741: Ary1StI4
  loc_637742: FLdPr Me
  loc_637745: MemLdI2 global_148
  loc_637748: LitI2_Byte 1
  loc_63774A: AddI2
  loc_63774B: FLdPr Me
  loc_63774E: MemStI2 global_148
  loc_637751: Branch loc_637812
  loc_637754: FLdUI1
  loc_637758: LitI2_Byte 2
  loc_63775A: CUI1I2
  loc_63775C: EqI2
  loc_63775D: BranchF loc_637785
  loc_637760: LitI4 &HD3
  loc_637765: FLdPr Me
  loc_637768: MemLdI2 global_148
  loc_63776B: CI4UI1
  loc_63776C: FLdPr Me
  loc_63776F: MemLdRfVar from_stack_1.global_52
  loc_637772: Ary1StI4
  loc_637773: FLdPr Me
  loc_637776: MemLdI2 global_148
  loc_637779: LitI2_Byte 1
  loc_63777B: AddI2
  loc_63777C: FLdPr Me
  loc_63777F: MemStI2 global_148
  loc_637782: Branch loc_637812
  loc_637785: FLdUI1
  loc_637789: LitI2_Byte 3
  loc_63778B: CUI1I2
  loc_63778D: EqI2
  loc_63778E: BranchF loc_6377B6
  loc_637791: LitI4 &HDD
  loc_637796: FLdPr Me
  loc_637799: MemLdI2 global_148
  loc_63779C: CI4UI1
  loc_63779D: FLdPr Me
  loc_6377A0: MemLdRfVar from_stack_1.global_52
  loc_6377A3: Ary1StI4
  loc_6377A4: FLdPr Me
  loc_6377A7: MemLdI2 global_148
  loc_6377AA: LitI2_Byte 1
  loc_6377AC: AddI2
  loc_6377AD: FLdPr Me
  loc_6377B0: MemStI2 global_148
  loc_6377B3: Branch loc_637812
  loc_6377B6: FLdUI1
  loc_6377BA: LitI2_Byte 4
  loc_6377BC: CUI1I2
  loc_6377BE: EqI2
  loc_6377BF: BranchF loc_637812
  loc_6377C2: LitI4 &HE7
  loc_6377C7: FLdPr Me
  loc_6377CA: MemLdI2 global_148
  loc_6377CD: CI4UI1
  loc_6377CE: FLdPr Me
  loc_6377D1: MemLdRfVar from_stack_1.global_52
  loc_6377D4: Ary1StI4
  loc_6377D5: FLdPr Me
  loc_6377D8: MemLdI2 global_148
  loc_6377DB: LitI2_Byte 1
  loc_6377DD: AddI2
  loc_6377DE: FLdPr Me
  loc_6377E1: MemStI2 global_148
  loc_6377E4: ImpAdLdUI1
  loc_6377E8: CI2UI1
  loc_6377EA: LitI2_Byte &HF
  loc_6377EC: GtI2
  loc_6377ED: BranchF loc_637812
  loc_6377F0: LitI4 &HE8
  loc_6377F5: FLdPr Me
  loc_6377F8: MemLdI2 global_148
  loc_6377FB: CI4UI1
  loc_6377FC: FLdPr Me
  loc_6377FF: MemLdRfVar from_stack_1.global_52
  loc_637802: Ary1StI4
  loc_637803: FLdPr Me
  loc_637806: MemLdI2 global_148
  loc_637809: LitI2_Byte 1
  loc_63780B: AddI2
  loc_63780C: FLdPr Me
  loc_63780F: MemStI2 global_148
  loc_637812: LitI4 &H12D
  loc_637817: FLdPr Me
  loc_63781A: MemLdI2 global_148
  loc_63781D: CI4UI1
  loc_63781E: FLdPr Me
  loc_637821: MemLdRfVar from_stack_1.global_52
  loc_637824: Ary1StI4
  loc_637825: FLdPr Me
  loc_637828: MemLdI2 global_148
  loc_63782B: LitI2_Byte 1
  loc_63782D: AddI2
  loc_63782E: FLdPr Me
  loc_637831: MemStI2 global_148
  loc_637834: LitI4 &H12E
  loc_637839: FLdPr Me
  loc_63783C: MemLdI2 global_148
  loc_63783F: CI4UI1
  loc_637840: FLdPr Me
  loc_637843: MemLdRfVar from_stack_1.global_52
  loc_637846: Ary1StI4
  loc_637847: FLdPr Me
  loc_63784A: MemLdI2 global_148
  loc_63784D: LitI2_Byte 1
  loc_63784F: AddI2
  loc_637850: FLdPr Me
  loc_637853: MemStI2 global_148
  loc_637856: LitI4 &H12F
  loc_63785B: FLdPr Me
  loc_63785E: MemLdI2 global_148
  loc_637861: CI4UI1
  loc_637862: FLdPr Me
  loc_637865: MemLdRfVar from_stack_1.global_52
  loc_637868: Ary1StI4
  loc_637869: ExitProcHresult
End Function

Private Function Proc_26_5_6A6530() '6A6530
  'Data Table: 417198
  loc_6A5DEC: LitI2_Byte 1
  loc_6A5DEE: CUI1I2
  loc_6A5DF0: FLdRfVar var_86
  loc_6A5DF3: FLdPr Me
  loc_6A5DF6: MemLdI2 global_148
  loc_6A5DF9: CUI1I2
  loc_6A5DFB: ForUI1 var_8A
  loc_6A5E01: FLdUI1
  loc_6A5E05: CI4UI1
  loc_6A5E06: FLdPr Me
  loc_6A5E09: MemLdRfVar from_stack_1.global_124
  loc_6A5E0C: Ary1LdUI1
  loc_6A5E0E: CI2UI1
  loc_6A5E10: FLdRfVar var_94
  loc_6A5E13: FLdUI1
  loc_6A5E17: CI2UI1
  loc_6A5E19: LitI2_Byte 1
  loc_6A5E1B: SubI2
  loc_6A5E1C: FLdPrThis
  loc_6A5E1D: VCallAd Control_ID_CPuerto
  loc_6A5E20: FStAdFunc var_90
  loc_6A5E23: FLdPr var_90
  loc_6A5E26: Set from_stack_2 = Me(from_stack_1)
  loc_6A5E2B: FLdPr var_94
  loc_6A5E2E: Me.ListIndex = from_stack_1
  loc_6A5E33: FFreeAd var_90 = ""
  loc_6A5E3A: FLdUI1
  loc_6A5E3E: CI4UI1
  loc_6A5E3F: FLdPr Me
  loc_6A5E42: MemLdRfVar from_stack_1.global_52
  loc_6A5E45: Ary1LdI4
  loc_6A5E46: FStR4 var_98
  loc_6A5E49: ILdRf var_98
  loc_6A5E4C: LitI4 &H8C
  loc_6A5E51: EqI4
  loc_6A5E52: BranchF loc_6A5EB1
  loc_6A5E55: LitStr "Schlumberger 1-32"
  loc_6A5E58: FLdRfVar var_94
  loc_6A5E5B: FLdUI1
  loc_6A5E5F: CI2UI1
  loc_6A5E61: LitI2_Byte 1
  loc_6A5E63: SubI2
  loc_6A5E64: FLdPrThis
  loc_6A5E65: VCallAd Control_ID_Label1
  loc_6A5E68: FStAdFunc var_90
  loc_6A5E6B: FLdPr var_90
  loc_6A5E6E: Set from_stack_2 = Me(from_stack_1)
  loc_6A5E73: FLdPr var_94
  loc_6A5E76: Me.Caption = from_stack_1
  loc_6A5E7B: FFreeAd var_90 = ""
  loc_6A5E82: LitI2_Byte 0
  loc_6A5E84: FLdRfVar var_94
  loc_6A5E87: FLdUI1
  loc_6A5E8B: CI2UI1
  loc_6A5E8D: LitI2_Byte 1
  loc_6A5E8F: SubI2
  loc_6A5E90: FLdPrThis
  loc_6A5E91: VCallAd Control_ID_CSpeed
  loc_6A5E94: FStAdFunc var_90
  loc_6A5E97: FLdPr var_90
  loc_6A5E9A: Set from_stack_2 = Me(from_stack_1)
  loc_6A5E9F: FLdPr var_94
  loc_6A5EA2: Me.Visible = from_stack_1b
  loc_6A5EA7: FFreeAd var_90 = ""
  loc_6A5EAE: Branch loc_6A647E
  loc_6A5EB1: ILdRf var_98
  loc_6A5EB4: LitI4 &H82
  loc_6A5EB9: EqI4
  loc_6A5EBA: BranchF loc_6A5F19
  loc_6A5EBD: LitStr "Tockheim 1 - 16"
  loc_6A5EC0: FLdRfVar var_94
  loc_6A5EC3: FLdUI1
  loc_6A5EC7: CI2UI1
  loc_6A5EC9: LitI2_Byte 1
  loc_6A5ECB: SubI2
  loc_6A5ECC: FLdPrThis
  loc_6A5ECD: VCallAd Control_ID_Label1
  loc_6A5ED0: FStAdFunc var_90
  loc_6A5ED3: FLdPr var_90
  loc_6A5ED6: Set from_stack_2 = Me(from_stack_1)
  loc_6A5EDB: FLdPr var_94
  loc_6A5EDE: Me.Caption = from_stack_1
  loc_6A5EE3: FFreeAd var_90 = ""
  loc_6A5EEA: LitI2_Byte 0
  loc_6A5EEC: FLdRfVar var_94
  loc_6A5EEF: FLdUI1
  loc_6A5EF3: CI2UI1
  loc_6A5EF5: LitI2_Byte 1
  loc_6A5EF7: SubI2
  loc_6A5EF8: FLdPrThis
  loc_6A5EF9: VCallAd Control_ID_CSpeed
  loc_6A5EFC: FStAdFunc var_90
  loc_6A5EFF: FLdPr var_90
  loc_6A5F02: Set from_stack_2 = Me(from_stack_1)
  loc_6A5F07: FLdPr var_94
  loc_6A5F0A: Me.Visible = from_stack_1b
  loc_6A5F0F: FFreeAd var_90 = ""
  loc_6A5F16: Branch loc_6A647E
  loc_6A5F19: ILdRf var_98
  loc_6A5F1C: LitI4 &H83
  loc_6A5F21: EqI4
  loc_6A5F22: BranchF loc_6A5F81
  loc_6A5F25: LitStr "Tockheim 17 - 32"
  loc_6A5F28: FLdRfVar var_94
  loc_6A5F2B: FLdUI1
  loc_6A5F2F: CI2UI1
  loc_6A5F31: LitI2_Byte 1
  loc_6A5F33: SubI2
  loc_6A5F34: FLdPrThis
  loc_6A5F35: VCallAd Control_ID_Label1
  loc_6A5F38: FStAdFunc var_90
  loc_6A5F3B: FLdPr var_90
  loc_6A5F3E: Set from_stack_2 = Me(from_stack_1)
  loc_6A5F43: FLdPr var_94
  loc_6A5F46: Me.Caption = from_stack_1
  loc_6A5F4B: FFreeAd var_90 = ""
  loc_6A5F52: LitI2_Byte 0
  loc_6A5F54: FLdRfVar var_94
  loc_6A5F57: FLdUI1
  loc_6A5F5B: CI2UI1
  loc_6A5F5D: LitI2_Byte 1
  loc_6A5F5F: SubI2
  loc_6A5F60: FLdPrThis
  loc_6A5F61: VCallAd Control_ID_CSpeed
  loc_6A5F64: FStAdFunc var_90
  loc_6A5F67: FLdPr var_90
  loc_6A5F6A: Set from_stack_2 = Me(from_stack_1)
  loc_6A5F6F: FLdPr var_94
  loc_6A5F72: Me.Visible = from_stack_1b
  loc_6A5F77: FFreeAd var_90 = ""
  loc_6A5F7E: Branch loc_6A647E
  loc_6A5F81: ILdRf var_98
  loc_6A5F84: LitI4 &HC9
  loc_6A5F89: EqI4
  loc_6A5F8A: BranchF loc_6A6022
  loc_6A5F8D: LitStr "Emco Electronics 1 - 8"
  loc_6A5F90: FLdRfVar var_94
  loc_6A5F93: FLdUI1
  loc_6A5F97: CI2UI1
  loc_6A5F99: LitI2_Byte 1
  loc_6A5F9B: SubI2
  loc_6A5F9C: FLdPrThis
  loc_6A5F9D: VCallAd Control_ID_Label1
  loc_6A5FA0: FStAdFunc var_90
  loc_6A5FA3: FLdPr var_90
  loc_6A5FA6: Set from_stack_2 = Me(from_stack_1)
  loc_6A5FAB: FLdPr var_94
  loc_6A5FAE: Me.Caption = from_stack_1
  loc_6A5FB3: FFreeAd var_90 = ""
  loc_6A5FBA: LitI2_Byte &HFF
  loc_6A5FBC: FLdRfVar var_94
  loc_6A5FBF: FLdUI1
  loc_6A5FC3: CI2UI1
  loc_6A5FC5: LitI2_Byte 1
  loc_6A5FC7: SubI2
  loc_6A5FC8: FLdPrThis
  loc_6A5FC9: VCallAd Control_ID_CSpeed
  loc_6A5FCC: FStAdFunc var_90
  loc_6A5FCF: FLdPr var_90
  loc_6A5FD2: Set from_stack_2 = Me(from_stack_1)
  loc_6A5FD7: FLdPr var_94
  loc_6A5FDA: Me.Visible = from_stack_1b
  loc_6A5FDF: FFreeAd var_90 = ""
  loc_6A5FE6: FLdUI1
  loc_6A5FEA: CI4UI1
  loc_6A5FEB: FLdPr Me
  loc_6A5FEE: MemLdRfVar from_stack_1.global_76
  loc_6A5FF1: Ary1LdUI1
  loc_6A5FF3: CI2UI1
  loc_6A5FF5: FLdRfVar var_94
  loc_6A5FF8: FLdUI1
  loc_6A5FFC: CI2UI1
  loc_6A5FFE: LitI2_Byte 1
  loc_6A6000: SubI2
  loc_6A6001: FLdPrThis
  loc_6A6002: VCallAd Control_ID_CSpeed
  loc_6A6005: FStAdFunc var_90
  loc_6A6008: FLdPr var_90
  loc_6A600B: Set from_stack_2 = Me(from_stack_1)
  loc_6A6010: FLdPr var_94
  loc_6A6013: Me.ListIndex = from_stack_1
  loc_6A6018: FFreeAd var_90 = ""
  loc_6A601F: Branch loc_6A647E
  loc_6A6022: ILdRf var_98
  loc_6A6025: LitI4 &HCA
  loc_6A602A: EqI4
  loc_6A602B: BranchF loc_6A60C3
  loc_6A602E: LitStr "Emco Electronics 9 - 16"
  loc_6A6031: FLdRfVar var_94
  loc_6A6034: FLdUI1
  loc_6A6038: CI2UI1
  loc_6A603A: LitI2_Byte 1
  loc_6A603C: SubI2
  loc_6A603D: FLdPrThis
  loc_6A603E: VCallAd Control_ID_Label1
  loc_6A6041: FStAdFunc var_90
  loc_6A6044: FLdPr var_90
  loc_6A6047: Set from_stack_2 = Me(from_stack_1)
  loc_6A604C: FLdPr var_94
  loc_6A604F: Me.Caption = from_stack_1
  loc_6A6054: FFreeAd var_90 = ""
  loc_6A605B: LitI2_Byte &HFF
  loc_6A605D: FLdRfVar var_94
  loc_6A6060: FLdUI1
  loc_6A6064: CI2UI1
  loc_6A6066: LitI2_Byte 1
  loc_6A6068: SubI2
  loc_6A6069: FLdPrThis
  loc_6A606A: VCallAd Control_ID_CSpeed
  loc_6A606D: FStAdFunc var_90
  loc_6A6070: FLdPr var_90
  loc_6A6073: Set from_stack_2 = Me(from_stack_1)
  loc_6A6078: FLdPr var_94
  loc_6A607B: Me.Visible = from_stack_1b
  loc_6A6080: FFreeAd var_90 = ""
  loc_6A6087: FLdUI1
  loc_6A608B: CI4UI1
  loc_6A608C: FLdPr Me
  loc_6A608F: MemLdRfVar from_stack_1.global_76
  loc_6A6092: Ary1LdUI1
  loc_6A6094: CI2UI1
  loc_6A6096: FLdRfVar var_94
  loc_6A6099: FLdUI1
  loc_6A609D: CI2UI1
  loc_6A609F: LitI2_Byte 1
  loc_6A60A1: SubI2
  loc_6A60A2: FLdPrThis
  loc_6A60A3: VCallAd Control_ID_CSpeed
  loc_6A60A6: FStAdFunc var_90
  loc_6A60A9: FLdPr var_90
  loc_6A60AC: Set from_stack_2 = Me(from_stack_1)
  loc_6A60B1: FLdPr var_94
  loc_6A60B4: Me.ListIndex = from_stack_1
  loc_6A60B9: FFreeAd var_90 = ""
  loc_6A60C0: Branch loc_6A647E
  loc_6A60C3: ILdRf var_98
  loc_6A60C6: LitI4 &HD3
  loc_6A60CB: EqI4
  loc_6A60CC: BranchF loc_6A6195
  loc_6A60CF: LitStr "Veeder Root 1 - 16"
  loc_6A60D2: FLdRfVar var_94
  loc_6A60D5: FLdUI1
  loc_6A60D9: CI2UI1
  loc_6A60DB: LitI2_Byte 1
  loc_6A60DD: SubI2
  loc_6A60DE: FLdPrThis
  loc_6A60DF: VCallAd Control_ID_Label1
  loc_6A60E2: FStAdFunc var_90
  loc_6A60E5: FLdPr var_90
  loc_6A60E8: Set from_stack_2 = Me(from_stack_1)
  loc_6A60ED: FLdPr var_94
  loc_6A60F0: Me.Caption = from_stack_1
  loc_6A60F5: FFreeAd var_90 = ""
  loc_6A60FC: LitI2_Byte &HFF
  loc_6A60FE: FLdRfVar var_94
  loc_6A6101: FLdUI1
  loc_6A6105: CI2UI1
  loc_6A6107: LitI2_Byte 1
  loc_6A6109: SubI2
  loc_6A610A: FLdPrThis
  loc_6A610B: VCallAd Control_ID_CSpeed
  loc_6A610E: FStAdFunc var_90
  loc_6A6111: FLdPr var_90
  loc_6A6114: Set from_stack_2 = Me(from_stack_1)
  loc_6A6119: FLdPr var_94
  loc_6A611C: Me.Visible = from_stack_1b
  loc_6A6121: FFreeAd var_90 = ""
  loc_6A6128: FLdUI1
  loc_6A612C: CI4UI1
  loc_6A612D: FLdPr Me
  loc_6A6130: MemLdRfVar from_stack_1.global_76
  loc_6A6133: Ary1LdUI1
  loc_6A6135: CI2UI1
  loc_6A6137: FLdRfVar var_94
  loc_6A613A: FLdUI1
  loc_6A613E: CI2UI1
  loc_6A6140: LitI2_Byte 1
  loc_6A6142: SubI2
  loc_6A6143: FLdPrThis
  loc_6A6144: VCallAd Control_ID_CSpeed
  loc_6A6147: FStAdFunc var_90
  loc_6A614A: FLdPr var_90
  loc_6A614D: Set from_stack_2 = Me(from_stack_1)
  loc_6A6152: FLdPr var_94
  loc_6A6155: Me.ListIndex = from_stack_1
  loc_6A615A: FFreeAd var_90 = ""
  loc_6A6161: LitVar_Missing var_A8
  loc_6A6164: PopAdLdVar
  loc_6A6165: LitStr "TLS-NT"
  loc_6A6168: FLdRfVar var_94
  loc_6A616B: FLdUI1
  loc_6A616F: CI2UI1
  loc_6A6171: LitI2_Byte 1
  loc_6A6173: SubI2
  loc_6A6174: FLdPrThis
  loc_6A6175: VCallAd Control_ID_CPuerto
  loc_6A6178: FStAdFunc var_90
  loc_6A617B: FLdPr var_90
  loc_6A617E: Set from_stack_2 = Me(from_stack_1)
  loc_6A6183: FLdPr var_94
  loc_6A6186: Me.AddItem from_stack_1, from_stack_2
  loc_6A618B: FFreeAd var_90 = ""
  loc_6A6192: Branch loc_6A647E
  loc_6A6195: ILdRf var_98
  loc_6A6198: LitI4 &HDD
  loc_6A619D: EqI4
  loc_6A619E: BranchF loc_6A6236
  loc_6A61A1: LitStr "Red Jacket 1 - 16"
  loc_6A61A4: FLdRfVar var_94
  loc_6A61A7: FLdUI1
  loc_6A61AB: CI2UI1
  loc_6A61AD: LitI2_Byte 1
  loc_6A61AF: SubI2
  loc_6A61B0: FLdPrThis
  loc_6A61B1: VCallAd Control_ID_Label1
  loc_6A61B4: FStAdFunc var_90
  loc_6A61B7: FLdPr var_90
  loc_6A61BA: Set from_stack_2 = Me(from_stack_1)
  loc_6A61BF: FLdPr var_94
  loc_6A61C2: Me.Caption = from_stack_1
  loc_6A61C7: FFreeAd var_90 = ""
  loc_6A61CE: LitI2_Byte &HFF
  loc_6A61D0: FLdRfVar var_94
  loc_6A61D3: FLdUI1
  loc_6A61D7: CI2UI1
  loc_6A61D9: LitI2_Byte 1
  loc_6A61DB: SubI2
  loc_6A61DC: FLdPrThis
  loc_6A61DD: VCallAd Control_ID_CSpeed
  loc_6A61E0: FStAdFunc var_90
  loc_6A61E3: FLdPr var_90
  loc_6A61E6: Set from_stack_2 = Me(from_stack_1)
  loc_6A61EB: FLdPr var_94
  loc_6A61EE: Me.Visible = from_stack_1b
  loc_6A61F3: FFreeAd var_90 = ""
  loc_6A61FA: FLdUI1
  loc_6A61FE: CI4UI1
  loc_6A61FF: FLdPr Me
  loc_6A6202: MemLdRfVar from_stack_1.global_76
  loc_6A6205: Ary1LdUI1
  loc_6A6207: CI2UI1
  loc_6A6209: FLdRfVar var_94
  loc_6A620C: FLdUI1
  loc_6A6210: CI2UI1
  loc_6A6212: LitI2_Byte 1
  loc_6A6214: SubI2
  loc_6A6215: FLdPrThis
  loc_6A6216: VCallAd Control_ID_CSpeed
  loc_6A6219: FStAdFunc var_90
  loc_6A621C: FLdPr var_90
  loc_6A621F: Set from_stack_2 = Me(from_stack_1)
  loc_6A6224: FLdPr var_94
  loc_6A6227: Me.ListIndex = from_stack_1
  loc_6A622C: FFreeAd var_90 = ""
  loc_6A6233: Branch loc_6A647E
  loc_6A6236: ILdRf var_98
  loc_6A6239: LitI4 &HE7
  loc_6A623E: EqI4
  loc_6A623F: BranchF loc_6A629E
  loc_6A6242: LitStr "JG ND-400S 1 - 15"
  loc_6A6245: FLdRfVar var_94
  loc_6A6248: FLdUI1
  loc_6A624C: CI2UI1
  loc_6A624E: LitI2_Byte 1
  loc_6A6250: SubI2
  loc_6A6251: FLdPrThis
  loc_6A6252: VCallAd Control_ID_Label1
  loc_6A6255: FStAdFunc var_90
  loc_6A6258: FLdPr var_90
  loc_6A625B: Set from_stack_2 = Me(from_stack_1)
  loc_6A6260: FLdPr var_94
  loc_6A6263: Me.Caption = from_stack_1
  loc_6A6268: FFreeAd var_90 = ""
  loc_6A626F: LitI2_Byte 0
  loc_6A6271: FLdRfVar var_94
  loc_6A6274: FLdUI1
  loc_6A6278: CI2UI1
  loc_6A627A: LitI2_Byte 1
  loc_6A627C: SubI2
  loc_6A627D: FLdPrThis
  loc_6A627E: VCallAd Control_ID_CSpeed
  loc_6A6281: FStAdFunc var_90
  loc_6A6284: FLdPr var_90
  loc_6A6287: Set from_stack_2 = Me(from_stack_1)
  loc_6A628C: FLdPr var_94
  loc_6A628F: Me.Visible = from_stack_1b
  loc_6A6294: FFreeAd var_90 = ""
  loc_6A629B: Branch loc_6A647E
  loc_6A629E: ILdRf var_98
  loc_6A62A1: LitI4 &H12D
  loc_6A62A6: EqI4
  loc_6A62A7: BranchF loc_6A633F
  loc_6A62AA: LitStr "POS 1"
  loc_6A62AD: FLdRfVar var_94
  loc_6A62B0: FLdUI1
  loc_6A62B4: CI2UI1
  loc_6A62B6: LitI2_Byte 1
  loc_6A62B8: SubI2
  loc_6A62B9: FLdPrThis
  loc_6A62BA: VCallAd Control_ID_Label1
  loc_6A62BD: FStAdFunc var_90
  loc_6A62C0: FLdPr var_90
  loc_6A62C3: Set from_stack_2 = Me(from_stack_1)
  loc_6A62C8: FLdPr var_94
  loc_6A62CB: Me.Caption = from_stack_1
  loc_6A62D0: FFreeAd var_90 = ""
  loc_6A62D7: LitI2_Byte &HFF
  loc_6A62D9: FLdRfVar var_94
  loc_6A62DC: FLdUI1
  loc_6A62E0: CI2UI1
  loc_6A62E2: LitI2_Byte 1
  loc_6A62E4: SubI2
  loc_6A62E5: FLdPrThis
  loc_6A62E6: VCallAd Control_ID_CSpeed
  loc_6A62E9: FStAdFunc var_90
  loc_6A62EC: FLdPr var_90
  loc_6A62EF: Set from_stack_2 = Me(from_stack_1)
  loc_6A62F4: FLdPr var_94
  loc_6A62F7: Me.Visible = from_stack_1b
  loc_6A62FC: FFreeAd var_90 = ""
  loc_6A6303: FLdUI1
  loc_6A6307: CI4UI1
  loc_6A6308: FLdPr Me
  loc_6A630B: MemLdRfVar from_stack_1.global_76
  loc_6A630E: Ary1LdUI1
  loc_6A6310: CI2UI1
  loc_6A6312: FLdRfVar var_94
  loc_6A6315: FLdUI1
  loc_6A6319: CI2UI1
  loc_6A631B: LitI2_Byte 1
  loc_6A631D: SubI2
  loc_6A631E: FLdPrThis
  loc_6A631F: VCallAd Control_ID_CSpeed
  loc_6A6322: FStAdFunc var_90
  loc_6A6325: FLdPr var_90
  loc_6A6328: Set from_stack_2 = Me(from_stack_1)
  loc_6A632D: FLdPr var_94
  loc_6A6330: Me.ListIndex = from_stack_1
  loc_6A6335: FFreeAd var_90 = ""
  loc_6A633C: Branch loc_6A647E
  loc_6A633F: ILdRf var_98
  loc_6A6342: LitI4 &H12E
  loc_6A6347: EqI4
  loc_6A6348: BranchF loc_6A63E0
  loc_6A634B: LitStr "POS 2"
  loc_6A634E: FLdRfVar var_94
  loc_6A6351: FLdUI1
  loc_6A6355: CI2UI1
  loc_6A6357: LitI2_Byte 1
  loc_6A6359: SubI2
  loc_6A635A: FLdPrThis
  loc_6A635B: VCallAd Control_ID_Label1
  loc_6A635E: FStAdFunc var_90
  loc_6A6361: FLdPr var_90
  loc_6A6364: Set from_stack_2 = Me(from_stack_1)
  loc_6A6369: FLdPr var_94
  loc_6A636C: Me.Caption = from_stack_1
  loc_6A6371: FFreeAd var_90 = ""
  loc_6A6378: LitI2_Byte &HFF
  loc_6A637A: FLdRfVar var_94
  loc_6A637D: FLdUI1
  loc_6A6381: CI2UI1
  loc_6A6383: LitI2_Byte 1
  loc_6A6385: SubI2
  loc_6A6386: FLdPrThis
  loc_6A6387: VCallAd Control_ID_CSpeed
  loc_6A638A: FStAdFunc var_90
  loc_6A638D: FLdPr var_90
  loc_6A6390: Set from_stack_2 = Me(from_stack_1)
  loc_6A6395: FLdPr var_94
  loc_6A6398: Me.Visible = from_stack_1b
  loc_6A639D: FFreeAd var_90 = ""
  loc_6A63A4: FLdUI1
  loc_6A63A8: CI4UI1
  loc_6A63A9: FLdPr Me
  loc_6A63AC: MemLdRfVar from_stack_1.global_76
  loc_6A63AF: Ary1LdUI1
  loc_6A63B1: CI2UI1
  loc_6A63B3: FLdRfVar var_94
  loc_6A63B6: FLdUI1
  loc_6A63BA: CI2UI1
  loc_6A63BC: LitI2_Byte 1
  loc_6A63BE: SubI2
  loc_6A63BF: FLdPrThis
  loc_6A63C0: VCallAd Control_ID_CSpeed
  loc_6A63C3: FStAdFunc var_90
  loc_6A63C6: FLdPr var_90
  loc_6A63C9: Set from_stack_2 = Me(from_stack_1)
  loc_6A63CE: FLdPr var_94
  loc_6A63D1: Me.ListIndex = from_stack_1
  loc_6A63D6: FFreeAd var_90 = ""
  loc_6A63DD: Branch loc_6A647E
  loc_6A63E0: ILdRf var_98
  loc_6A63E3: LitI4 &H12F
  loc_6A63E8: EqI4
  loc_6A63E9: BranchF loc_6A647E
  loc_6A63EC: LitStr "POS 3"
  loc_6A63EF: FLdRfVar var_94
  loc_6A63F2: FLdUI1
  loc_6A63F6: CI2UI1
  loc_6A63F8: LitI2_Byte 1
  loc_6A63FA: SubI2
  loc_6A63FB: FLdPrThis
  loc_6A63FC: VCallAd Control_ID_Label1
  loc_6A63FF: FStAdFunc var_90
  loc_6A6402: FLdPr var_90
  loc_6A6405: Set from_stack_2 = Me(from_stack_1)
  loc_6A640A: FLdPr var_94
  loc_6A640D: Me.Caption = from_stack_1
  loc_6A6412: FFreeAd var_90 = ""
  loc_6A6419: LitI2_Byte &HFF
  loc_6A641B: FLdRfVar var_94
  loc_6A641E: FLdUI1
  loc_6A6422: CI2UI1
  loc_6A6424: LitI2_Byte 1
  loc_6A6426: SubI2
  loc_6A6427: FLdPrThis
  loc_6A6428: VCallAd Control_ID_CSpeed
  loc_6A642B: FStAdFunc var_90
  loc_6A642E: FLdPr var_90
  loc_6A6431: Set from_stack_2 = Me(from_stack_1)
  loc_6A6436: FLdPr var_94
  loc_6A6439: Me.Visible = from_stack_1b
  loc_6A643E: FFreeAd var_90 = ""
  loc_6A6445: FLdUI1
  loc_6A6449: CI4UI1
  loc_6A644A: FLdPr Me
  loc_6A644D: MemLdRfVar from_stack_1.global_76
  loc_6A6450: Ary1LdUI1
  loc_6A6452: CI2UI1
  loc_6A6454: FLdRfVar var_94
  loc_6A6457: FLdUI1
  loc_6A645B: CI2UI1
  loc_6A645D: LitI2_Byte 1
  loc_6A645F: SubI2
  loc_6A6460: FLdPrThis
  loc_6A6461: VCallAd Control_ID_CSpeed
  loc_6A6464: FStAdFunc var_90
  loc_6A6467: FLdPr var_90
  loc_6A646A: Set from_stack_2 = Me(from_stack_1)
  loc_6A646F: FLdPr var_94
  loc_6A6472: Me.ListIndex = from_stack_1
  loc_6A6477: FFreeAd var_90 = ""
  loc_6A647E: FLdRfVar var_86
  loc_6A6481: NextUI1
  loc_6A6487: FLdPr Me
  loc_6A648A: MemLdI2 global_148
  loc_6A648D: LitI2_Byte 1
  loc_6A648F: AddI2
  loc_6A6490: CUI1I2
  loc_6A6492: FLdRfVar var_86
  loc_6A6495: LitI2_Byte &HB
  loc_6A6497: CUI1I2
  loc_6A6499: ForUI1 var_AC
  loc_6A649F: LitI2_Byte 0
  loc_6A64A1: FLdRfVar var_94
  loc_6A64A4: FLdUI1
  loc_6A64A8: CI2UI1
  loc_6A64AA: LitI2_Byte 1
  loc_6A64AC: SubI2
  loc_6A64AD: FLdPrThis
  loc_6A64AE: VCallAd Control_ID_Label1
  loc_6A64B1: FStAdFunc var_90
  loc_6A64B4: FLdPr var_90
  loc_6A64B7: Set from_stack_2 = Me(from_stack_1)
  loc_6A64BC: FLdPr var_94
  loc_6A64BF: Me.Visible = from_stack_1b
  loc_6A64C4: FFreeAd var_90 = ""
  loc_6A64CB: LitI2_Byte 0
  loc_6A64CD: FLdRfVar var_94
  loc_6A64D0: FLdUI1
  loc_6A64D4: CI2UI1
  loc_6A64D6: LitI2_Byte 1
  loc_6A64D8: SubI2
  loc_6A64D9: FLdPrThis
  loc_6A64DA: VCallAd Control_ID_CPuerto
  loc_6A64DD: FStAdFunc var_90
  loc_6A64E0: FLdPr var_90
  loc_6A64E3: Set from_stack_2 = Me(from_stack_1)
  loc_6A64E8: FLdPr var_94
  loc_6A64EB: Me.Visible = from_stack_1b
  loc_6A64F0: FFreeAd var_90 = ""
  loc_6A64F7: LitI2_Byte 0
  loc_6A64F9: FLdRfVar var_94
  loc_6A64FC: FLdUI1
  loc_6A6500: CI2UI1
  loc_6A6502: LitI2_Byte 1
  loc_6A6504: SubI2
  loc_6A6505: FLdPrThis
  loc_6A6506: VCallAd Control_ID_CSpeed
  loc_6A6509: FStAdFunc var_90
  loc_6A650C: FLdPr var_90
  loc_6A650F: Set from_stack_2 = Me(from_stack_1)
  loc_6A6514: FLdPr var_94
  loc_6A6517: Me.Visible = from_stack_1b
  loc_6A651C: FFreeAd var_90 = ""
  loc_6A6523: FLdRfVar var_86
  loc_6A6526: NextUI1
  loc_6A652C: ExitProcHresult
  loc_6A652D: AryDescTemp 395
End Function

Private Function Proc_26_6_5E43E4() '5E43E4
  'Data Table: 417198
  loc_5E4388: FLdRfVar var_9C
  loc_5E438B: FLdRfVar var_88
  loc_5E438E: FLdRfVar var_8C
  loc_5E4391: ImpAdLdRf MemVar_74C760
  loc_5E4394: NewIfNullPr Formx
  loc_5E4397: from_stack_1v = Formx.global_4589716Get()
  loc_5E439C: FLdPr var_8C
  loc_5E439F: Call 0.Method_arg_1A8 ()
  loc_5E43A4: FLdRfVar var_9C
  loc_5E43A7: NotVar var_AC
  loc_5E43AB: CBoolVarNull
  loc_5E43AD: FFree1Ad var_8C
  loc_5E43B0: FFree1Var var_9C = ""
  loc_5E43B3: BranchF loc_5E43DB
  loc_5E43B6: FLdRfVar var_9C
  loc_5E43B9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E43BE: FLdRfVar var_9C
  loc_5E43C1: CBoolVarNull
  loc_5E43C3: FFree1Var var_9C = ""
  loc_5E43C6: BranchF loc_5E43D8
  loc_5E43C9: LitVar_FALSE
  loc_5E43CD: PopAdLdVar
  loc_5E43CE: FLdRfVar var_BC
  loc_5E43D1: LdPrVar
  loc_5E43D3: LateMemSt
  loc_5E43D7: ExitProcHresult
  loc_5E43D8: Branch loc_5E4388
  loc_5E43DB: ILdRf var_88
  loc_5E43DE: from_stack_2v = Proc_26_7_63F060(from_stack_1v)
  loc_5E43E3: ExitProcHresult
End Function

Private Function Proc_26_7_63F060(arg_C) '63F060
  'Data Table: 417198
  loc_63EE30: ILdRf arg_C
  loc_63EE33: FStStrCopy var_88
  loc_63EE36: LitI2_Byte 1
  loc_63EE38: CUI1I2
  loc_63EE3A: FStUI1 var_9C
  loc_63EE3E: LitVarI2 var_D8, 1
  loc_63EE43: FLdRfVar var_98
  loc_63EE46: LitVarI2 var_C8, 10
  loc_63EE4B: ForVar var_F8
  loc_63EE51: LitVarI2 var_108, 3
  loc_63EE56: FLdUI1
  loc_63EE5A: CI4UI1
  loc_63EE5B: FLdRfVar var_88
  loc_63EE5E: CVarRef
  loc_63EE63: FLdRfVar var_118
  loc_63EE66: ImpAdCallFPR4  = Mid(, , )
  loc_63EE6B: FLdRfVar var_118
  loc_63EE6E: CStrVarVal var_11C
  loc_63EE72: ImpAdCallFPR4 push Val()
  loc_63EE77: CI4R8
  loc_63EE78: FStR4 var_A0
  loc_63EE7B: FFree1Str var_11C
  loc_63EE7E: FFreeVar var_108 = ""
  loc_63EE85: LitVarI2 var_108, 2
  loc_63EE8A: FLdUI1
  loc_63EE8E: CI2UI1
  loc_63EE90: LitI2_Byte 3
  loc_63EE92: AddI2
  loc_63EE93: CI4UI1
  loc_63EE94: FLdRfVar var_88
  loc_63EE97: CVarRef
  loc_63EE9C: FLdRfVar var_118
  loc_63EE9F: ImpAdCallFPR4  = Mid(, , )
  loc_63EEA4: FLdRfVar var_118
  loc_63EEA7: CStrVarVal var_11C
  loc_63EEAB: ImpAdCallFPR4 push Val()
  loc_63EEB0: CUI1R4
  loc_63EEB2: FStUI1 var_A2
  loc_63EEB6: FFree1Str var_11C
  loc_63EEB9: FFreeVar var_108 = ""
  loc_63EEC0: LitVarI2 var_108, 6
  loc_63EEC5: FLdUI1
  loc_63EEC9: CI2UI1
  loc_63EECB: LitI2_Byte 5
  loc_63EECD: AddI2
  loc_63EECE: CI4UI1
  loc_63EECF: FLdRfVar var_88
  loc_63EED2: CVarRef
  loc_63EED7: FLdRfVar var_118
  loc_63EEDA: ImpAdCallFPR4  = Mid(, , )
  loc_63EEDF: FLdRfVar var_118
  loc_63EEE2: CStrVarVal var_11C
  loc_63EEE6: ImpAdCallFPR4 push Val()
  loc_63EEEB: CI4R8
  loc_63EEEC: FStR4 var_A8
  loc_63EEEF: FFree1Str var_11C
  loc_63EEF2: FFreeVar var_108 = ""
  loc_63EEF9: LitI2_Byte 1
  loc_63EEFB: CUI1I2
  loc_63EEFD: FLdRfVar var_9A
  loc_63EF00: FLdPr Me
  loc_63EF03: MemLdI2 global_148
  loc_63EF06: CUI1I2
  loc_63EF08: ForUI1 var_120
  loc_63EF0E: FLdUI1
  loc_63EF12: CI4UI1
  loc_63EF13: FLdPr Me
  loc_63EF16: MemLdRfVar from_stack_1.global_52
  loc_63EF19: Ary1LdI4
  loc_63EF1A: ILdRf var_A0
  loc_63EF1D: EqI4
  loc_63EF1E: BranchF loc_63F03D
  loc_63EF21: ILdRf var_A8
  loc_63EF24: LitI4 0
  loc_63EF29: NeI4
  loc_63EF2A: BranchF loc_63EF68
  loc_63EF2D: FLdRfVar var_122
  loc_63EF30: FLdRfVar var_A8
  loc_63EF33: from_stack_2v = Proc_26_8_60C34C(from_stack_1v)
  loc_63EF38: FLdI2 var_122
  loc_63EF3B: FLdRfVar var_12C
  loc_63EF3E: FLdUI1
  loc_63EF42: CI2UI1
  loc_63EF44: LitI2_Byte 1
  loc_63EF46: SubI2
  loc_63EF47: FLdPrThis
  loc_63EF48: VCallAd Control_ID_CSpeed
  loc_63EF4B: FStAdFunc var_128
  loc_63EF4E: FLdPr var_128
  loc_63EF51: Set from_stack_2 = Me(from_stack_1)
  loc_63EF56: FLdPr var_12C
  loc_63EF59: Me.ListIndex = from_stack_1
  loc_63EF5E: FFreeAd var_128 = ""
  loc_63EF65: Branch loc_63EF94
  loc_63EF68: LitI2_Byte 0
  loc_63EF6A: FLdRfVar var_12C
  loc_63EF6D: FLdUI1
  loc_63EF71: CI2UI1
  loc_63EF73: LitI2_Byte 1
  loc_63EF75: SubI2
  loc_63EF76: FLdPrThis
  loc_63EF77: VCallAd Control_ID_CSpeed
  loc_63EF7A: FStAdFunc var_128
  loc_63EF7D: FLdPr var_128
  loc_63EF80: Set from_stack_2 = Me(from_stack_1)
  loc_63EF85: FLdPr var_12C
  loc_63EF88: Me.ListIndex = from_stack_1
  loc_63EF8D: FFreeAd var_128 = ""
  loc_63EF94: FLdUI1
  loc_63EF98: CI2UI1
  loc_63EF9A: LitI2_Byte 1
  loc_63EF9C: SubI2
  loc_63EF9D: FLdRfVar var_122
  loc_63EFA0: FLdRfVar var_12C
  loc_63EFA3: FLdUI1
  loc_63EFA7: CI2UI1
  loc_63EFA9: LitI2_Byte 1
  loc_63EFAB: SubI2
  loc_63EFAC: FLdPrThis
  loc_63EFAD: VCallAd Control_ID_CPuerto
  loc_63EFB0: FStAdFunc var_128
  loc_63EFB3: FLdPr var_128
  loc_63EFB6: Set from_stack_2 = Me(from_stack_1)
  loc_63EFBB: FLdPr var_12C
  loc_63EFBE:  = Me.ListCount
  loc_63EFC3: FLdI2 var_122
  loc_63EFC6: GtI2
  loc_63EFC7: FFreeAd var_128 = ""
  loc_63EFCE: BranchF loc_63F007
  loc_63EFD1: FLdUI1
  loc_63EFD5: CI2UI1
  loc_63EFD7: LitI2_Byte 2
  loc_63EFD9: SubI2
  loc_63EFDA: FLdRfVar var_12C
  loc_63EFDD: FLdUI1
  loc_63EFE1: CI2UI1
  loc_63EFE3: LitI2_Byte 1
  loc_63EFE5: SubI2
  loc_63EFE6: FLdPrThis
  loc_63EFE7: VCallAd Control_ID_CPuerto
  loc_63EFEA: FStAdFunc var_128
  loc_63EFED: FLdPr var_128
  loc_63EFF0: Set from_stack_2 = Me(from_stack_1)
  loc_63EFF5: FLdPr var_12C
  loc_63EFF8: Me.ListIndex = from_stack_1
  loc_63EFFD: FFreeAd var_128 = ""
  loc_63F004: Branch loc_63F03A
  loc_63F007: FLdUI1
  loc_63F00B: CI2UI1
  loc_63F00D: LitI2_Byte 1
  loc_63F00F: SubI2
  loc_63F010: FLdRfVar var_12C
  loc_63F013: FLdUI1
  loc_63F017: CI2UI1
  loc_63F019: LitI2_Byte 1
  loc_63F01B: SubI2
  loc_63F01C: FLdPrThis
  loc_63F01D: VCallAd Control_ID_CPuerto
  loc_63F020: FStAdFunc var_128
  loc_63F023: FLdPr var_128
  loc_63F026: Set from_stack_2 = Me(from_stack_1)
  loc_63F02B: FLdPr var_12C
  loc_63F02E: Me.ListIndex = from_stack_1
  loc_63F033: FFreeAd var_128 = ""
  loc_63F03A: Branch loc_63F046
  loc_63F03D: FLdRfVar var_9A
  loc_63F040: NextUI1
  loc_63F046: FLdUI1
  loc_63F04A: CI2UI1
  loc_63F04C: LitI2_Byte &HB
  loc_63F04E: AddI2
  loc_63F04F: CUI1I2
  loc_63F051: FStUI1 var_9C
  loc_63F055: FLdRfVar var_98
  loc_63F058: NextStepVar var_F8
  loc_63F05E: ExitProcHresult
End Function

Private Function Proc_26_8_60C34C(arg_C) '60C34C
  'Data Table: 417198
  loc_60C248: ILdI4 arg_C
  loc_60C24B: FStR4 var_8C
  loc_60C24E: ILdRf var_8C
  loc_60C251: LitI4 0
  loc_60C256: EqI4
  loc_60C257: BranchF loc_60C262
  loc_60C25A: LitI2_Byte 0
  loc_60C25C: FStI2 var_86
  loc_60C25F: Branch loc_60C343
  loc_60C262: ILdRf var_8C
  loc_60C265: LitI4 &H384
  loc_60C26A: EqI4
  loc_60C26B: BranchF loc_60C276
  loc_60C26E: LitI2_Byte 1
  loc_60C270: FStI2 var_86
  loc_60C273: Branch loc_60C343
  loc_60C276: ILdRf var_8C
  loc_60C279: LitI4 &H4B0
  loc_60C27E: EqI4
  loc_60C27F: BranchF loc_60C28A
  loc_60C282: LitI2_Byte 2
  loc_60C284: FStI2 var_86
  loc_60C287: Branch loc_60C343
  loc_60C28A: ILdRf var_8C
  loc_60C28D: LitI4 &H960
  loc_60C292: EqI4
  loc_60C293: BranchF loc_60C29E
  loc_60C296: LitI2_Byte 3
  loc_60C298: FStI2 var_86
  loc_60C29B: Branch loc_60C343
  loc_60C29E: ILdRf var_8C
  loc_60C2A1: LitI4 &H12C0
  loc_60C2A6: EqI4
  loc_60C2A7: BranchF loc_60C2B2
  loc_60C2AA: LitI2_Byte 4
  loc_60C2AC: FStI2 var_86
  loc_60C2AF: Branch loc_60C343
  loc_60C2B2: ILdRf var_8C
  loc_60C2B5: LitI4 &H2580
  loc_60C2BA: EqI4
  loc_60C2BB: BranchF loc_60C2C6
  loc_60C2BE: LitI2_Byte 5
  loc_60C2C0: FStI2 var_86
  loc_60C2C3: Branch loc_60C343
  loc_60C2C6: ILdRf var_8C
  loc_60C2C9: LitI4 &H3840
  loc_60C2CE: EqI4
  loc_60C2CF: BranchF loc_60C2DA
  loc_60C2D2: LitI2_Byte 6
  loc_60C2D4: FStI2 var_86
  loc_60C2D7: Branch loc_60C343
  loc_60C2DA: ILdRf var_8C
  loc_60C2DD: LitI4 &H4B00
  loc_60C2E2: EqI4
  loc_60C2E3: BranchF loc_60C2EE
  loc_60C2E6: LitI2_Byte 7
  loc_60C2E8: FStI2 var_86
  loc_60C2EB: Branch loc_60C343
  loc_60C2EE: ILdRf var_8C
  loc_60C2F1: LitI4 &H7080
  loc_60C2F6: EqI4
  loc_60C2F7: BranchF loc_60C302
  loc_60C2FA: LitI2_Byte 8
  loc_60C2FC: FStI2 var_86
  loc_60C2FF: Branch loc_60C343
  loc_60C302: ILdRf var_8C
  loc_60C305: LitI4 &H9600
  loc_60C30A: EqI4
  loc_60C30B: BranchF loc_60C316
  loc_60C30E: LitI2_Byte 9
  loc_60C310: FStI2 var_86
  loc_60C313: Branch loc_60C343
  loc_60C316: ILdRf var_8C
  loc_60C319: LitI4 &HE100
  loc_60C31E: EqI4
  loc_60C31F: BranchF loc_60C32A
  loc_60C322: LitI2_Byte &HA
  loc_60C324: FStI2 var_86
  loc_60C327: Branch loc_60C343
  loc_60C32A: ILdRf var_8C
  loc_60C32D: LitI4 &H1C200
  loc_60C332: EqI4
  loc_60C333: BranchF loc_60C33E
  loc_60C336: LitI2_Byte &HB
  loc_60C338: FStI2 var_86
  loc_60C33B: Branch loc_60C343
  loc_60C33E: LitI2_Byte 0
  loc_60C340: FStI2 var_86
  loc_60C343: ExitProcCbHresult
End Function

Private Function Proc_26_9_6234F4(arg_C) '6234F4
  'Data Table: 417198
  loc_6233B8: LitStr vbNullString
  loc_6233BB: IStStrCopy arg_C
  loc_6233BF: LitI2_Byte 1
  loc_6233C1: CUI1I2
  loc_6233C3: FLdRfVar var_86
  loc_6233C6: FLdPr Me
  loc_6233C9: MemLdI2 global_148
  loc_6233CC: CUI1I2
  loc_6233CE: ForUI1 var_8A
  loc_6233D4: FLdRfVar var_F6
  loc_6233D7: FLdRfVar var_F4
  loc_6233DA: FLdUI1
  loc_6233DE: CI2UI1
  loc_6233E0: LitI2_Byte 1
  loc_6233E2: SubI2
  loc_6233E3: FLdPrThis
  loc_6233E4: VCallAd Control_ID_CPuerto
  loc_6233E7: FStAdFunc var_F0
  loc_6233EA: FLdPr var_F0
  loc_6233ED: Set from_stack_2 = Me(from_stack_1)
  loc_6233F2: FLdPr var_F4
  loc_6233F5:  = Me.ListIndex
  loc_6233FA: FLdRfVar var_164
  loc_6233FD: FLdRfVar var_160
  loc_623400: FLdUI1
  loc_623404: CI2UI1
  loc_623406: LitI2_Byte 1
  loc_623408: SubI2
  loc_623409: FLdPrThis
  loc_62340A: VCallAd Control_ID_CSpeed
  loc_62340D: FStAdFunc var_15C
  loc_623410: FLdPr var_15C
  loc_623413: Set from_stack_2 = Me(from_stack_1)
  loc_623418: FLdPr var_160
  loc_62341B:  = Me.Text
  loc_623420: ILdRf var_164
  loc_623423: ImpAdCallFPR4 push Val()
  loc_623428: FStFPR8 var_1CC
  loc_62342B: ILdI4 arg_C
  loc_62342E: CVarStr var_DC
  loc_623431: LitI4 1
  loc_623436: LitI4 1
  loc_62343B: LitVarStr var_AC, "000"
  loc_623440: FStVarCopyObj var_BC
  loc_623443: FLdRfVar var_BC
  loc_623446: FLdUI1
  loc_62344A: CI4UI1
  loc_62344B: FLdPr Me
  loc_62344E: MemLdRfVar from_stack_1.global_52
  loc_623451: Ary1LdRf
  loc_623452: CVarRef
  loc_623457: FLdRfVar var_CC
  loc_62345A: ImpAdCallFPR4  = Format(, )
  loc_62345F: FLdRfVar var_CC
  loc_623462: ConcatVar var_EC
  loc_623466: LitI4 1
  loc_62346B: LitI4 1
  loc_623470: LitVarStr var_128, "00"
  loc_623475: FStVarCopyObj var_138
  loc_623478: FLdRfVar var_138
  loc_62347B: FLdI2 var_F6
  loc_62347E: LitI2_Byte 1
  loc_623480: AddI2
  loc_623481: CVarI2 var_118
  loc_623484: FLdRfVar var_148
  loc_623487: ImpAdCallFPR4  = Format(, )
  loc_62348C: FLdRfVar var_148
  loc_62348F: ConcatVar var_158
  loc_623493: LitI4 1
  loc_623498: LitI4 1
  loc_62349D: LitVarStr var_194, "000000"
  loc_6234A2: FStVarCopyObj var_1A4
  loc_6234A5: FLdRfVar var_1A4
  loc_6234A8: FLdFPR8 var_1CC
  loc_6234AB: CVarR8
  loc_6234AF: FLdRfVar var_1B4
  loc_6234B2: ImpAdCallFPR4  = Format(, )
  loc_6234B7: FLdRfVar var_1B4
  loc_6234BA: ConcatVar var_1C4
  loc_6234BE: CStrVarTmp
  loc_6234BF: IStStr
  loc_6234C3: FFree1Str var_164
  loc_6234C6: FFreeAd var_F0 = "": var_F4 = "": var_15C = ""
  loc_6234D1: FFreeVar var_BC = "": var_CC = "": var_118 = "": var_138 = "": var_EC = "": var_148 = "": var_184 = "": var_1A4 = "": var_158 = "": var_1B4 = ""
  loc_6234EA: FLdRfVar var_86
  loc_6234ED: NextUI1
  loc_6234F3: ExitProcHresult
End Function
