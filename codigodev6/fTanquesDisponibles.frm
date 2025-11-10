VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fTanquesDisponibles
  Caption = "Interconexión de tanques"
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 60
  ClientTop = 465
  ClientWidth = 11910
  ClientHeight = 8595
  Begin VB.Frame Frame1
    Caption = "Tanques Disponibles"
    Left = 120
    Top = 0
    Width = 11700
    Height = 8520
    Visible = 0   'False
    TabIndex = 87
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 24
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox Check1
      Caption = "   Tanque  16"
      Index = 16
      ForeColor = &H40&
      Left = 5235
      Top = 6720
      Width = 2535
      Height = 375
      Visible = 0   'False
      TabIndex = 105
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  15"
      Index = 15
      ForeColor = &H40&
      Left = 5235
      Top = 6000
      Width = 2535
      Height = 375
      Visible = 0   'False
      TabIndex = 104
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  14"
      Index = 14
      ForeColor = &H40&
      Left = 5235
      Top = 5280
      Width = 2535
      Height = 375
      Visible = 0   'False
      TabIndex = 103
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  13"
      Index = 13
      ForeColor = &H40&
      Left = 5235
      Top = 4560
      Width = 2655
      Height = 375
      Visible = 0   'False
      TabIndex = 102
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  12"
      Index = 12
      ForeColor = &H40&
      Left = 5235
      Top = 3840
      Width = 2415
      Height = 375
      Visible = 0   'False
      TabIndex = 101
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  11"
      Index = 11
      ForeColor = &H40&
      Left = 5235
      Top = 3120
      Width = 2775
      Height = 375
      Visible = 0   'False
      TabIndex = 100
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  10"
      Index = 10
      ForeColor = &H40&
      Left = 5235
      Top = 2400
      Width = 2655
      Height = 375
      Visible = 0   'False
      TabIndex = 99
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  9"
      Index = 9
      ForeColor = &H40&
      Left = 5235
      Top = 1680
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 98
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  8"
      Index = 8
      ForeColor = &H40&
      Left = 1200
      Top = 6720
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 97
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  7"
      Index = 7
      ForeColor = &H40&
      Left = 1200
      Top = 6000
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 96
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  6"
      Index = 6
      ForeColor = &H40&
      Left = 1200
      Top = 5280
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 95
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  5"
      Index = 5
      ForeColor = &H40&
      Left = 1200
      Top = 4560
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 94
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  4"
      Index = 4
      ForeColor = &H40&
      Left = 1200
      Top = 3840
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 93
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  3"
      Index = 3
      ForeColor = &H40&
      Left = 1200
      Top = 3120
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 92
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  2"
      Index = 2
      ForeColor = &H40&
      Left = 1200
      Top = 2400
      Width = 2175
      Height = 375
      Visible = 0   'False
      TabIndex = 91
    End
    Begin VB.CheckBox Check1
      Caption = "   Tanque  1"
      Index = 1
      ForeColor = &H40&
      Left = 1200
      Top = 1620
      Width = 2175
      Height = 435
      Visible = 0   'False
      TabIndex = 90
    End
    Begin Threed.SSCommand SSCommand8
      Left = 8880
      Top = 5520
      Width = 2055
      Height = 735
      Visible = 0   'False
      TabIndex = 85
      OleObjectBlob = "fTanquesDisponibles.frx":0000
    End
    Begin Threed.SSCommand SSCommand7
      Left = 8880
      Top = 6840
      Width = 2055
      Height = 735
      Visible = 0   'False
      TabIndex = 84
      OleObjectBlob = "fTanquesDisponibles.frx":0065
    End
    Begin VB.Label Label4
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 120
      Top = 720
      Width = 11535
      Height = 495
      Visible = 0   'False
      TabIndex = 86
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 18
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Threed.SSCommand SSCommand3
    Left = 3120
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 89
    OleObjectBlob = "fTanquesDisponibles.frx":00C9
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9120
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 0
    OleObjectBlob = "fTanquesDisponibles.frx":012B
  End
  Begin Threed.SSCommand SSCommand1
    Left = 240
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 1
    OleObjectBlob = "fTanquesDisponibles.frx":0196
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 7020
    Width = 2265
    Height = 360
    TabIndex = 62
    List = "fTanquesDisponibles.frx":0202
    ItemData = "fTanquesDisponibles.frx":021A
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 6600
    Width = 2265
    Height = 360
    TabIndex = 58
    List = "fTanquesDisponibles.frx":0224
    ItemData = "fTanquesDisponibles.frx":023C
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 6180
    Width = 2265
    Height = 360
    TabIndex = 54
    List = "fTanquesDisponibles.frx":0246
    ItemData = "fTanquesDisponibles.frx":025E
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 5760
    Width = 2265
    Height = 360
    TabIndex = 50
    List = "fTanquesDisponibles.frx":0268
    ItemData = "fTanquesDisponibles.frx":0280
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 5340
    Width = 2265
    Height = 360
    TabIndex = 46
    List = "fTanquesDisponibles.frx":028A
    ItemData = "fTanquesDisponibles.frx":02A2
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 4920
    Width = 2265
    Height = 360
    TabIndex = 42
    List = "fTanquesDisponibles.frx":02AC
    ItemData = "fTanquesDisponibles.frx":02C4
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 720
    Width = 2265
    Height = 360
    TabIndex = 2
    List = "fTanquesDisponibles.frx":02CE
    ItemData = "fTanquesDisponibles.frx":02E6
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 1140
    Width = 2265
    Height = 360
    TabIndex = 6
    List = "fTanquesDisponibles.frx":02F0
    ItemData = "fTanquesDisponibles.frx":0308
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 1560
    Width = 2265
    Height = 360
    TabIndex = 10
    List = "fTanquesDisponibles.frx":0312
    ItemData = "fTanquesDisponibles.frx":032A
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 1980
    Width = 2265
    Height = 360
    TabIndex = 14
    List = "fTanquesDisponibles.frx":0334
    ItemData = "fTanquesDisponibles.frx":034C
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 2400
    Width = 2265
    Height = 360
    TabIndex = 18
    List = "fTanquesDisponibles.frx":0356
    ItemData = "fTanquesDisponibles.frx":036E
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 2820
    Width = 2265
    Height = 360
    TabIndex = 22
    List = "fTanquesDisponibles.frx":0378
    ItemData = "fTanquesDisponibles.frx":0390
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 3240
    Width = 2265
    Height = 360
    TabIndex = 26
    List = "fTanquesDisponibles.frx":039A
    ItemData = "fTanquesDisponibles.frx":03B2
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 3660
    Width = 2265
    Height = 360
    TabIndex = 30
    List = "fTanquesDisponibles.frx":03BC
    ItemData = "fTanquesDisponibles.frx":03D4
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 4080
    Width = 2265
    Height = 360
    TabIndex = 34
    List = "fTanquesDisponibles.frx":03DE
    ItemData = "fTanquesDisponibles.frx":03F6
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4980
    Top = 4500
    Width = 2265
    Height = 360
    TabIndex = 38
    List = "fTanquesDisponibles.frx":0400
    ItemData = "fTanquesDisponibles.frx":0418
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
  Begin Threed.SSCommand SSCommand4
    Index = 1
    Left = 7440
    Top = 720
    Width = 1215
    Height = 375
    TabIndex = 3
    OleObjectBlob = "fTanquesDisponibles.frx":0422
  End
  Begin Threed.SSCommand SSCommand5
    Index = 1
    Left = 8880
    Top = 720
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 4
    OleObjectBlob = "fTanquesDisponibles.frx":0488
  End
  Begin Threed.SSCommand SSCommand6
    Index = 1
    Left = 10320
    Top = 720
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "fTanquesDisponibles.frx":04EE
  End
  Begin Threed.SSCommand SSCommand4
    Index = 2
    Left = 7440
    Top = 1140
    Width = 1215
    Height = 375
    TabIndex = 7
    OleObjectBlob = "fTanquesDisponibles.frx":0554
  End
  Begin Threed.SSCommand SSCommand5
    Index = 2
    Left = 8880
    Top = 1140
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "fTanquesDisponibles.frx":05BA
  End
  Begin Threed.SSCommand SSCommand6
    Index = 2
    Left = 10320
    Top = 1140
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "fTanquesDisponibles.frx":0620
  End
  Begin Threed.SSCommand SSCommand4
    Index = 3
    Left = 7440
    Top = 1560
    Width = 1215
    Height = 375
    TabIndex = 11
    OleObjectBlob = "fTanquesDisponibles.frx":0686
  End
  Begin Threed.SSCommand SSCommand5
    Index = 3
    Left = 8880
    Top = 1560
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "fTanquesDisponibles.frx":06EC
  End
  Begin Threed.SSCommand SSCommand6
    Index = 3
    Left = 10320
    Top = 1560
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "fTanquesDisponibles.frx":0752
  End
  Begin Threed.SSCommand SSCommand4
    Index = 4
    Left = 7440
    Top = 1980
    Width = 1215
    Height = 375
    TabIndex = 15
    OleObjectBlob = "fTanquesDisponibles.frx":07B8
  End
  Begin Threed.SSCommand SSCommand5
    Index = 4
    Left = 8880
    Top = 1980
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "fTanquesDisponibles.frx":081E
  End
  Begin Threed.SSCommand SSCommand6
    Index = 4
    Left = 10320
    Top = 1980
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "fTanquesDisponibles.frx":0884
  End
  Begin Threed.SSCommand SSCommand4
    Index = 5
    Left = 7440
    Top = 2400
    Width = 1215
    Height = 375
    TabIndex = 19
    OleObjectBlob = "fTanquesDisponibles.frx":08EA
  End
  Begin Threed.SSCommand SSCommand5
    Index = 5
    Left = 8880
    Top = 2400
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "fTanquesDisponibles.frx":0950
  End
  Begin Threed.SSCommand SSCommand6
    Index = 5
    Left = 10320
    Top = 2400
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "fTanquesDisponibles.frx":09B6
  End
  Begin Threed.SSCommand SSCommand4
    Index = 6
    Left = 7440
    Top = 2820
    Width = 1215
    Height = 375
    TabIndex = 23
    OleObjectBlob = "fTanquesDisponibles.frx":0A1C
  End
  Begin Threed.SSCommand SSCommand5
    Index = 6
    Left = 8880
    Top = 2820
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "fTanquesDisponibles.frx":0A82
  End
  Begin Threed.SSCommand SSCommand6
    Index = 6
    Left = 10320
    Top = 2820
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "fTanquesDisponibles.frx":0AE8
  End
  Begin Threed.SSCommand SSCommand4
    Index = 7
    Left = 7440
    Top = 3240
    Width = 1215
    Height = 375
    TabIndex = 27
    OleObjectBlob = "fTanquesDisponibles.frx":0B4E
  End
  Begin Threed.SSCommand SSCommand5
    Index = 7
    Left = 8880
    Top = 3240
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "fTanquesDisponibles.frx":0BB4
  End
  Begin Threed.SSCommand SSCommand6
    Index = 7
    Left = 10320
    Top = 3240
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 29
    OleObjectBlob = "fTanquesDisponibles.frx":0C1A
  End
  Begin Threed.SSCommand SSCommand4
    Index = 8
    Left = 7440
    Top = 3660
    Width = 1215
    Height = 375
    TabIndex = 31
    OleObjectBlob = "fTanquesDisponibles.frx":0C80
  End
  Begin Threed.SSCommand SSCommand5
    Index = 8
    Left = 8880
    Top = 3660
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 32
    OleObjectBlob = "fTanquesDisponibles.frx":0CE6
  End
  Begin Threed.SSCommand SSCommand6
    Index = 8
    Left = 10320
    Top = 3660
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 33
    OleObjectBlob = "fTanquesDisponibles.frx":0D4C
  End
  Begin Threed.SSCommand SSCommand4
    Index = 9
    Left = 7440
    Top = 4080
    Width = 1215
    Height = 375
    TabIndex = 35
    OleObjectBlob = "fTanquesDisponibles.frx":0DB2
  End
  Begin Threed.SSCommand SSCommand5
    Index = 9
    Left = 8880
    Top = 4080
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 36
    OleObjectBlob = "fTanquesDisponibles.frx":0E18
  End
  Begin Threed.SSCommand SSCommand6
    Index = 9
    Left = 10320
    Top = 4080
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 37
    OleObjectBlob = "fTanquesDisponibles.frx":0E7E
  End
  Begin Threed.SSCommand SSCommand4
    Index = 10
    Left = 7440
    Top = 4500
    Width = 1215
    Height = 375
    TabIndex = 39
    OleObjectBlob = "fTanquesDisponibles.frx":0EE4
  End
  Begin Threed.SSCommand SSCommand5
    Index = 10
    Left = 8880
    Top = 4500
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 40
    OleObjectBlob = "fTanquesDisponibles.frx":0F4A
  End
  Begin Threed.SSCommand SSCommand6
    Index = 10
    Left = 10320
    Top = 4500
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 41
    OleObjectBlob = "fTanquesDisponibles.frx":0FB0
  End
  Begin Threed.SSCommand SSCommand4
    Index = 11
    Left = 7440
    Top = 4920
    Width = 1215
    Height = 375
    TabIndex = 43
    OleObjectBlob = "fTanquesDisponibles.frx":1016
  End
  Begin Threed.SSCommand SSCommand5
    Index = 11
    Left = 8880
    Top = 4920
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 44
    OleObjectBlob = "fTanquesDisponibles.frx":107C
  End
  Begin Threed.SSCommand SSCommand6
    Index = 11
    Left = 10320
    Top = 4920
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 45
    OleObjectBlob = "fTanquesDisponibles.frx":10E2
  End
  Begin Threed.SSCommand SSCommand4
    Index = 12
    Left = 7440
    Top = 5340
    Width = 1215
    Height = 375
    TabIndex = 47
    OleObjectBlob = "fTanquesDisponibles.frx":1148
  End
  Begin Threed.SSCommand SSCommand5
    Index = 12
    Left = 8880
    Top = 5340
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 48
    OleObjectBlob = "fTanquesDisponibles.frx":11AE
  End
  Begin Threed.SSCommand SSCommand6
    Index = 12
    Left = 10320
    Top = 5340
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 49
    OleObjectBlob = "fTanquesDisponibles.frx":1214
  End
  Begin Threed.SSCommand SSCommand4
    Index = 13
    Left = 7440
    Top = 5760
    Width = 1215
    Height = 375
    TabIndex = 51
    OleObjectBlob = "fTanquesDisponibles.frx":127A
  End
  Begin Threed.SSCommand SSCommand5
    Index = 13
    Left = 8880
    Top = 5760
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 52
    OleObjectBlob = "fTanquesDisponibles.frx":12E0
  End
  Begin Threed.SSCommand SSCommand6
    Index = 13
    Left = 10320
    Top = 5760
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 53
    OleObjectBlob = "fTanquesDisponibles.frx":1346
  End
  Begin Threed.SSCommand SSCommand4
    Index = 14
    Left = 7440
    Top = 6180
    Width = 1215
    Height = 375
    TabIndex = 55
    OleObjectBlob = "fTanquesDisponibles.frx":13AC
  End
  Begin Threed.SSCommand SSCommand5
    Index = 14
    Left = 8880
    Top = 6180
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 56
    OleObjectBlob = "fTanquesDisponibles.frx":1412
  End
  Begin Threed.SSCommand SSCommand6
    Index = 14
    Left = 10320
    Top = 6180
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 57
    OleObjectBlob = "fTanquesDisponibles.frx":1478
  End
  Begin Threed.SSCommand SSCommand4
    Index = 15
    Left = 7440
    Top = 6600
    Width = 1215
    Height = 375
    TabIndex = 59
    OleObjectBlob = "fTanquesDisponibles.frx":14DE
  End
  Begin Threed.SSCommand SSCommand5
    Index = 15
    Left = 8880
    Top = 6600
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 60
    OleObjectBlob = "fTanquesDisponibles.frx":1544
  End
  Begin Threed.SSCommand SSCommand6
    Index = 15
    Left = 10320
    Top = 6600
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 61
    OleObjectBlob = "fTanquesDisponibles.frx":15AA
  End
  Begin Threed.SSCommand SSCommand4
    Index = 16
    Left = 7440
    Top = 7020
    Width = 1215
    Height = 375
    TabIndex = 63
    OleObjectBlob = "fTanquesDisponibles.frx":1610
  End
  Begin Threed.SSCommand SSCommand5
    Index = 16
    Left = 8880
    Top = 7080
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 64
    OleObjectBlob = "fTanquesDisponibles.frx":1676
  End
  Begin Threed.SSCommand SSCommand6
    Index = 16
    Left = 10320
    Top = 7020
    Width = 1215
    Height = 375
    TabStop = 0   'False
    TabIndex = 65
    OleObjectBlob = "fTanquesDisponibles.frx":16DC
  End
  Begin Threed.SSCommand sscCancel
    Left = 6120
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 106
    OleObjectBlob = "fTanquesDisponibles.frx":1742
  End
  Begin VB.Label Label1
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 720
    Width = 4560
    Height = 375
    TabIndex = 66
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Nombre  del  Producto"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 240
    Top = 240
    Width = 4560
    Height = 405
    TabIndex = 88
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
    Index = 16
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 7020
    Width = 4560
    Height = 375
    TabIndex = 81
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 15
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 6600
    Width = 4560
    Height = 375
    TabIndex = 80
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 14
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 6180
    Width = 4560
    Height = 375
    TabIndex = 79
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 13
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 5760
    Width = 4560
    Height = 375
    TabIndex = 78
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 12
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 5340
    Width = 4560
    Height = 375
    TabIndex = 77
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 11
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 4920
    Width = 4560
    Height = 375
    TabIndex = 76
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 10
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 4500
    Width = 4560
    Height = 375
    TabIndex = 75
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 9
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 4080
    Width = 4560
    Height = 375
    TabIndex = 74
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 3660
    Width = 4560
    Height = 375
    TabIndex = 73
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 3240
    Width = 4560
    Height = 375
    TabIndex = 72
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 2820
    Width = 4560
    Height = 375
    TabIndex = 71
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 2400
    Width = 4560
    Height = 375
    TabIndex = 70
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 1980
    Width = 4560
    Height = 375
    TabIndex = 69
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 1560
    Width = 4560
    Height = 375
    TabIndex = 68
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 240
    Top = 1140
    Width = 4560
    Height = 375
    TabIndex = 67
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Sistema"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 4980
    Top = 240
    Width = 2265
    Height = 405
    TabIndex = 82
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
  Begin VB.Label Label3
    Caption = "Conexión  entre  Tanques"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 7440
    Top = 240
    Width = 4080
    Height = 405
    TabIndex = 83
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
End

Attribute VB_Name = "fTanquesDisponibles"


Private Sub SSCommand3_UnknownEvent_8 '65DBD0
  'Data Table: 436838
  loc_65D958: FLdRfVar var_A2
  loc_65D95B: FLdRfVar var_A0
  loc_65D95E: LitI2_Byte 1
  loc_65D960: FLdPrThis
  loc_65D961: VCallAd Control_ID_Combo1
  loc_65D964: FStAdFunc var_9C
  loc_65D967: FLdPr var_9C
  loc_65D96A: Set from_stack_2 = Me(from_stack_1)
  loc_65D96F: FLdPr var_A0
  loc_65D972:  = Me.ListIndex
  loc_65D977: FLdI2 var_A2
  loc_65D97A: LitI2_Byte &HFF
  loc_65D97C: NeI2
  loc_65D97D: FFreeAd var_9C = ""
  loc_65D984: BranchF loc_65DBB7
  loc_65D987: ImpAdCallFPR4 Beep()
  loc_65D98C: FLdRfVar var_1F0
  loc_65D98F: LitVar_Missing var_1EC
  loc_65D992: LitVar_Missing var_1CC
  loc_65D995: LitVar_Missing var_1AC
  loc_65D998: LitVar_Missing var_18C
  loc_65D99B: LitVar_Missing var_16C
  loc_65D99E: LitVar_Missing var_14C
  loc_65D9A1: LitVar_Missing var_12C
  loc_65D9A4: LitVar_Missing var_10C
  loc_65D9A7: LitVar_Missing var_EC
  loc_65D9AA: LitVar_Missing var_CC
  loc_65D9AD: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_65D9B0: FStStrCopy var_AC
  loc_65D9B3: FLdRfVar var_AC
  loc_65D9B6: LitI4 &H14
  loc_65D9BB: PopTmpLdAdStr var_A8
  loc_65D9BE: LitI2_Byte &H42
  loc_65D9C0: PopTmpLdAd2 var_A2
  loc_65D9C3: ImpAdLdRf MemVar_74C7D0
  loc_65D9C6: NewIfNullPr clsMsg
  loc_65D9C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65D9CE: LitI4 &HD
  loc_65D9D3: FLdRfVar var_200
  loc_65D9D6: ImpAdCallFPR4  = Chr()
  loc_65D9DB: LitI4 &HA
  loc_65D9E0: FLdRfVar var_230
  loc_65D9E3: ImpAdCallFPR4  = Chr()
  loc_65D9E8: FLdRfVar var_390
  loc_65D9EB: LitVar_Missing var_38C
  loc_65D9EE: LitVar_Missing var_36C
  loc_65D9F1: LitVar_Missing var_34C
  loc_65D9F4: LitVar_Missing var_32C
  loc_65D9F7: LitVar_Missing var_30C
  loc_65D9FA: LitVar_Missing var_2EC
  loc_65D9FD: LitVar_Missing var_2CC
  loc_65DA00: LitVar_Missing var_2AC
  loc_65DA03: LitVar_Missing var_28C
  loc_65DA06: LitVar_Missing var_26C
  loc_65DA09: LitStr "Presionando ""CANCEL"" se aborta el proceso."
  loc_65DA0C: FStStrCopy var_24C
  loc_65DA0F: FLdRfVar var_24C
  loc_65DA12: LitI4 &H15
  loc_65DA17: PopTmpLdAdStr var_248
  loc_65DA1A: LitI2_Byte &H42
  loc_65DA1C: PopTmpLdAd2 var_242
  loc_65DA1F: ImpAdLdRf MemVar_74C7D0
  loc_65DA22: NewIfNullPr clsMsg
  loc_65DA25: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65DA2A: LitI4 &HD
  loc_65DA2F: FLdRfVar var_3C0
  loc_65DA32: ImpAdCallFPR4  = Chr()
  loc_65DA37: LitI4 &HA
  loc_65DA3C: FLdRfVar var_3E0
  loc_65DA3F: ImpAdCallFPR4  = Chr()
  loc_65DA44: FLdRfVar var_540
  loc_65DA47: LitVar_Missing var_53C
  loc_65DA4A: LitVar_Missing var_51C
  loc_65DA4D: LitVar_Missing var_4FC
  loc_65DA50: LitVar_Missing var_4DC
  loc_65DA53: LitVar_Missing var_4BC
  loc_65DA56: LitVar_Missing var_49C
  loc_65DA59: LitVar_Missing var_47C
  loc_65DA5C: LitVar_Missing var_45C
  loc_65DA5F: LitVar_Missing var_43C
  loc_65DA62: LitVar_Missing var_41C
  loc_65DA65: LitStr "ADVERTENCIA"
  loc_65DA68: FStStrCopy var_3FC
  loc_65DA6B: FLdRfVar var_3FC
  loc_65DA6E: LitI4 &H16
  loc_65DA73: PopTmpLdAdStr var_3F8
  loc_65DA76: LitI2_Byte &H42
  loc_65DA78: PopTmpLdAd2 var_3F2
  loc_65DA7B: ImpAdLdRf MemVar_74C7D0
  loc_65DA7E: NewIfNullPr clsMsg
  loc_65DA81: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65DA86: LitVar_Missing var_590
  loc_65DA89: LitVar_Missing var_570
  loc_65DA8C: FLdZeroAd var_540
  loc_65DA8F: CVarStr var_550
  loc_65DA92: LitI4 &H131
  loc_65DA97: FLdZeroAd var_1F0
  loc_65DA9A: CVarStr var_210
  loc_65DA9D: FLdRfVar var_200
  loc_65DAA0: ConcatVar var_220
  loc_65DAA4: FLdRfVar var_230
  loc_65DAA7: ConcatVar var_240
  loc_65DAAB: FLdZeroAd var_390
  loc_65DAAE: CVarStr var_3A0
  loc_65DAB1: ConcatVar var_3B0
  loc_65DAB5: FLdRfVar var_3C0
  loc_65DAB8: ConcatVar var_3D0
  loc_65DABC: FLdRfVar var_3E0
  loc_65DABF: ConcatVar var_3F0
  loc_65DAC3: ImpAdCallI2 MsgBox(, , , , )
  loc_65DAC8: CVarI4
  loc_65DACC: FStVar var_94
  loc_65DAD0: FFreeStr var_AC = "": var_24C = ""
  loc_65DAD9: FFreeVar var_41C = "": var_43C = "": var_45C = "": var_47C = "": var_49C = "": var_4BC = "": var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_3F0 = "": var_550 = "": var_570 = "": var_590 = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_210 = "": var_200 = "": var_220 = "": var_230 = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_240 = "": var_3A0 = "": var_3B0 = "": var_3C0 = "": var_3D0 = ""
  loc_65DB34: FLdRfVar var_94
  loc_65DB37: LitVarI4
  loc_65DB3F: HardType
  loc_65DB40: EqVarBool
  loc_65DB42: BranchF loc_65DBB7
  loc_65DB45: ImpAdLdRf MemVar_74C14C
  loc_65DB48: PopTmpLdAdStr var_A8
  loc_65DB4B: Erase
  loc_65DB4C: ImpAdLdRf MemVar_74C114
  loc_65DB4F: PopTmpLdAdStr var_248
  loc_65DB52: Erase
  loc_65DB53: ImpAdLdRf MemVar_74C1B8
  loc_65DB56: PopTmpLdAdStr var_3F8
  loc_65DB59: Erase
  loc_65DB5A: LitVarI2 var_FC, 1
  loc_65DB5F: FLdRfVar var_94
  loc_65DB62: ImpAdLdUI1
  loc_65DB66: CVarUI1
  loc_65DB6A: ForVar var_5C0
  loc_65DB70: LitI2_Byte 0
  loc_65DB72: CUI1I2
  loc_65DB74: FLdRfVar var_96
  loc_65DB77: FLdRfVar var_94
  loc_65DB7A: CI4Var
  loc_65DB7C: ImpAdLdRf MemVar_74C0FC
  loc_65DB7F: Ary1LdUI1
  loc_65DB81: ForUI1 var_5C4
  loc_65DB87: LitI2_Byte 1
  loc_65DB89: CUI1I2
  loc_65DB8B: FLdRfVar var_94
  loc_65DB8E: CI4Var
  loc_65DB90: FLdUI1
  loc_65DB94: CI4UI1
  loc_65DB95: ImpAdLdRf MemVar_74C12C
  loc_65DB98: AryLdPr
  loc_65DB9B: MemStUI1
  loc_65DB9F: FLdRfVar var_96
  loc_65DBA2: NextUI1
  loc_65DBA8: FLdRfVar var_94
  loc_65DBAB: NextStepVar var_5C0
  loc_65DBB1: Call Form_Activate()
  loc_65DBB6: ExitProcHresult
  loc_65DBB7: FLdPrThis
  loc_65DBB8: VCallAd Control_ID_SSCommand2
  loc_65DBBB: FStAdFunc var_9C
  loc_65DBBE: FLdPr var_9C
  loc_65DBC1: LateIdCall
  loc_65DBC9: FFree1Ad var_9C
  loc_65DBCC: ExitProcHresult
  loc_65DBCD: CVarStr arg_1D
End Sub

Private Sub Form_Activate() '6F9EB8
  'Data Table: 436838
  loc_6F8FD0: OnErrorGoto loc_6F9EAD
  loc_6F8FD5: LitI2_Byte 0
  loc_6F8FD7: CUI1I2
  loc_6F8FD9: FLdPr Me
  loc_6F8FDC: MemStUI1
  loc_6F8FE2: LitVarI2 var_F8, 1
  loc_6F8FE7: FStVar var_94
  loc_6F8FED: FLdRfVar var_238
  loc_6F8FF0: LitVar_Missing var_234
  loc_6F8FF3: LitVar_Missing var_214
  loc_6F8FF6: LitVar_Missing var_1F4
  loc_6F8FF9: LitVar_Missing var_1D4
  loc_6F8FFC: LitVar_Missing var_1B4
  loc_6F8FFF: LitVar_Missing var_194
  loc_6F9002: LitVar_Missing var_174
  loc_6F9005: LitVar_Missing var_154
  loc_6F9008: LitVar_Missing var_134
  loc_6F900B: LitVar_Missing var_114
  loc_6F900E: LitStr "Interconexión de tanques"
  loc_6F9011: FStStrCopy var_104
  loc_6F9014: FLdRfVar var_104
  loc_6F9017: LitI4 1
  loc_6F901C: PopTmpLdAdStr var_100
  loc_6F901F: LitI2_Byte &H42
  loc_6F9021: PopTmpLdAd2 var_FA
  loc_6F9024: ImpAdLdRf MemVar_74C7D0
  loc_6F9027: NewIfNullPr clsMsg
  loc_6F902A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F902F: ILdRf var_238
  loc_6F9032: ImpAdLdRf MemVar_74C8EC
  loc_6F9035: NewIfNullPr fTanquesDisponibles
  loc_6F9038: fTanquesDisponibles.Caption = from_stack_1
  loc_6F903D: FFreeStr var_104 = ""
  loc_6F9044: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F905D: FLdRfVar var_238
  loc_6F9060: LitVar_Missing var_234
  loc_6F9063: LitVar_Missing var_214
  loc_6F9066: LitVar_Missing var_1F4
  loc_6F9069: LitVar_Missing var_1D4
  loc_6F906C: LitVar_Missing var_1B4
  loc_6F906F: LitVar_Missing var_194
  loc_6F9072: LitVar_Missing var_174
  loc_6F9075: LitVar_Missing var_154
  loc_6F9078: LitVar_Missing var_134
  loc_6F907B: LitVar_Missing var_114
  loc_6F907E: LitStr "Tanques Disponibles"
  loc_6F9081: FStStrCopy var_104
  loc_6F9084: FLdRfVar var_104
  loc_6F9087: LitI4 2
  loc_6F908C: PopTmpLdAdStr var_100
  loc_6F908F: LitI2_Byte &H42
  loc_6F9091: PopTmpLdAd2 var_FA
  loc_6F9094: ImpAdLdRf MemVar_74C7D0
  loc_6F9097: NewIfNullPr clsMsg
  loc_6F909A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F909F: ILdRf var_238
  loc_6F90A2: FLdPrThis
  loc_6F90A3: VCallAd Control_ID_Frame1
  loc_6F90A6: FStAdFunc var_23C
  loc_6F90A9: FLdPr var_23C
  loc_6F90AC: Me.Caption = from_stack_1
  loc_6F90B1: FFreeStr var_104 = ""
  loc_6F90B8: FFree1Ad var_23C
  loc_6F90BB: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F90D4: LitVarI2 var_144, 1
  loc_6F90D9: FLdRfVar var_A4
  loc_6F90DC: LitVarI2 var_124, 16
  loc_6F90E1: ForVar var_25C
  loc_6F90E9: FLdRfVar var_238
  loc_6F90EC: LitVar_Missing var_234
  loc_6F90EF: LitVar_Missing var_214
  loc_6F90F2: LitVar_Missing var_1F4
  loc_6F90F5: LitVar_Missing var_1D4
  loc_6F90F8: LitVar_Missing var_1B4
  loc_6F90FB: LitVar_Missing var_194
  loc_6F90FE: LitVar_Missing var_174
  loc_6F9101: LitVar_Missing var_154
  loc_6F9104: LitVar_Missing var_134
  loc_6F9107: LitVar_Missing var_114
  loc_6F910A: LitStr "Tanque"
  loc_6F910D: FStStrCopy var_104
  loc_6F9110: FLdRfVar var_104
  loc_6F9113: LitI4 3
  loc_6F9118: PopTmpLdAdStr var_100
  loc_6F911B: LitI2_Byte &H42
  loc_6F911D: PopTmpLdAd2 var_FA
  loc_6F9120: ImpAdLdRf MemVar_74C7D0
  loc_6F9123: NewIfNullPr clsMsg
  loc_6F9126: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F912B: ILdRf var_238
  loc_6F912E: LitStr " "
  loc_6F9131: ConcatStr
  loc_6F9132: CVarStr var_26C
  loc_6F9135: FLdRfVar var_A4
  loc_6F9138: ConcatVar var_27C
  loc_6F913C: CStrVarVal var_284
  loc_6F9140: FLdRfVar var_280
  loc_6F9143: FLdRfVar var_A4
  loc_6F9146: CI2Var
  loc_6F9147: FLdPrThis
  loc_6F9148: VCallAd Control_ID_Check1
  loc_6F914B: FStAdFunc var_23C
  loc_6F914E: FLdPr var_23C
  loc_6F9151: Set from_stack_2 = Me(from_stack_1)
  loc_6F9156: FLdPr var_280
  loc_6F9159: Me.Caption = from_stack_1
  loc_6F915E: FFreeStr var_104 = "": var_238 = ""
  loc_6F9167: FFreeAd var_23C = ""
  loc_6F916E: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_26C = ""
  loc_6F918B: FLdRfVar var_280
  loc_6F918E: FLdRfVar var_A4
  loc_6F9191: CI2Var
  loc_6F9192: FLdPrThis
  loc_6F9193: VCallAd Control_ID_Combo1
  loc_6F9196: FStAdFunc var_23C
  loc_6F9199: FLdPr var_23C
  loc_6F919C: Set from_stack_2 = Me(from_stack_1)
  loc_6F91A1: FLdPr var_280
  loc_6F91A4: Me.Clear
  loc_6F91A9: FFreeAd var_23C = ""
  loc_6F91B2: FLdRfVar var_238
  loc_6F91B5: LitVar_Missing var_234
  loc_6F91B8: LitVar_Missing var_214
  loc_6F91BB: LitVar_Missing var_1F4
  loc_6F91BE: LitVar_Missing var_1D4
  loc_6F91C1: LitVar_Missing var_1B4
  loc_6F91C4: LitVar_Missing var_194
  loc_6F91C7: LitVar_Missing var_174
  loc_6F91CA: LitVar_Missing var_154
  loc_6F91CD: LitVar_Missing var_134
  loc_6F91D0: LitVar_Missing var_114
  loc_6F91D3: LitStr "Manifold"
  loc_6F91D6: FStStrCopy var_104
  loc_6F91D9: FLdRfVar var_104
  loc_6F91DC: LitI4 &H17
  loc_6F91E1: PopTmpLdAdStr var_100
  loc_6F91E4: LitI2_Byte &H42
  loc_6F91E6: PopTmpLdAd2 var_FA
  loc_6F91E9: ImpAdLdRf MemVar_74C7D0
  loc_6F91EC: NewIfNullPr clsMsg
  loc_6F91EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F91F4: LitVarI2 var_294, 0
  loc_6F91F9: PopAdLdVar
  loc_6F91FA: ILdRf var_238
  loc_6F91FD: FLdRfVar var_280
  loc_6F9200: FLdRfVar var_A4
  loc_6F9203: CI2Var
  loc_6F9204: FLdPrThis
  loc_6F9205: VCallAd Control_ID_Combo1
  loc_6F9208: FStAdFunc var_23C
  loc_6F920B: FLdPr var_23C
  loc_6F920E: Set from_stack_2 = Me(from_stack_1)
  loc_6F9213: FLdPr var_280
  loc_6F9216: Me.AddItem from_stack_1, from_stack_2
  loc_6F921B: FFreeStr var_104 = ""
  loc_6F9222: FFreeAd var_23C = ""
  loc_6F9229: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F9242: FLdRfVar var_238
  loc_6F9245: LitVar_Missing var_234
  loc_6F9248: LitVar_Missing var_214
  loc_6F924B: LitVar_Missing var_1F4
  loc_6F924E: LitVar_Missing var_1D4
  loc_6F9251: LitVar_Missing var_1B4
  loc_6F9254: LitVar_Missing var_194
  loc_6F9257: LitVar_Missing var_174
  loc_6F925A: LitVar_Missing var_154
  loc_6F925D: LitVar_Missing var_134
  loc_6F9260: LitVar_Missing var_114
  loc_6F9263: LitStr "Paralelo"
  loc_6F9266: FStStrCopy var_104
  loc_6F9269: FLdRfVar var_104
  loc_6F926C: LitI4 &H18
  loc_6F9271: PopTmpLdAdStr var_100
  loc_6F9274: LitI2_Byte &H42
  loc_6F9276: PopTmpLdAd2 var_FA
  loc_6F9279: ImpAdLdRf MemVar_74C7D0
  loc_6F927C: NewIfNullPr clsMsg
  loc_6F927F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9284: LitVarI2 var_294, 1
  loc_6F9289: PopAdLdVar
  loc_6F928A: ILdRf var_238
  loc_6F928D: FLdRfVar var_280
  loc_6F9290: FLdRfVar var_A4
  loc_6F9293: CI2Var
  loc_6F9294: FLdPrThis
  loc_6F9295: VCallAd Control_ID_Combo1
  loc_6F9298: FStAdFunc var_23C
  loc_6F929B: FLdPr var_23C
  loc_6F929E: Set from_stack_2 = Me(from_stack_1)
  loc_6F92A3: FLdPr var_280
  loc_6F92A6: Me.AddItem from_stack_1, from_stack_2
  loc_6F92AB: FFreeStr var_104 = ""
  loc_6F92B2: FFreeAd var_23C = ""
  loc_6F92B9: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F92D2: FLdRfVar var_A4
  loc_6F92D5: NextStepVar var_25C
  loc_6F92DD: FLdRfVar var_238
  loc_6F92E0: LitVar_Missing var_234
  loc_6F92E3: LitVar_Missing var_214
  loc_6F92E6: LitVar_Missing var_1F4
  loc_6F92E9: LitVar_Missing var_1D4
  loc_6F92EC: LitVar_Missing var_1B4
  loc_6F92EF: LitVar_Missing var_194
  loc_6F92F2: LitVar_Missing var_174
  loc_6F92F5: LitVar_Missing var_154
  loc_6F92F8: LitVar_Missing var_134
  loc_6F92FB: LitVar_Missing var_114
  loc_6F92FE: LitStr "&Cancelar"
  loc_6F9301: FStStrCopy var_104
  loc_6F9304: FLdRfVar var_104
  loc_6F9307: LitI4 4
  loc_6F930C: PopTmpLdAdStr var_100
  loc_6F930F: LitI2_Byte &H42
  loc_6F9311: PopTmpLdAd2 var_FA
  loc_6F9314: ImpAdLdRf MemVar_74C7D0
  loc_6F9317: NewIfNullPr clsMsg
  loc_6F931A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F931F: FLdZeroAd var_238
  loc_6F9322: CVarStr var_26C
  loc_6F9325: PopAdLdVar
  loc_6F9326: FLdPrThis
  loc_6F9327: VCallAd Control_ID_SSCommand8
  loc_6F932A: FStAdFunc var_23C
  loc_6F932D: FLdPr var_23C
  loc_6F9330: LateIdSt
  loc_6F9335: FFree1Str var_104
  loc_6F9338: FFree1Ad var_23C
  loc_6F933B: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F9356: FLdRfVar var_238
  loc_6F9359: LitVar_Missing var_234
  loc_6F935C: LitVar_Missing var_214
  loc_6F935F: LitVar_Missing var_1F4
  loc_6F9362: LitVar_Missing var_1D4
  loc_6F9365: LitVar_Missing var_1B4
  loc_6F9368: LitVar_Missing var_194
  loc_6F936B: LitVar_Missing var_174
  loc_6F936E: LitVar_Missing var_154
  loc_6F9371: LitVar_Missing var_134
  loc_6F9374: LitVar_Missing var_114
  loc_6F9377: LitStr "&Aceptar"
  loc_6F937A: FStStrCopy var_104
  loc_6F937D: FLdRfVar var_104
  loc_6F9380: LitI4 5
  loc_6F9385: PopTmpLdAdStr var_100
  loc_6F9388: LitI2_Byte &H42
  loc_6F938A: PopTmpLdAd2 var_FA
  loc_6F938D: ImpAdLdRf MemVar_74C7D0
  loc_6F9390: NewIfNullPr clsMsg
  loc_6F9393: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9398: FLdZeroAd var_238
  loc_6F939B: CVarStr var_26C
  loc_6F939E: PopAdLdVar
  loc_6F939F: FLdPrThis
  loc_6F93A0: VCallAd Control_ID_SSCommand7
  loc_6F93A3: FStAdFunc var_23C
  loc_6F93A6: FLdPr var_23C
  loc_6F93A9: LateIdSt
  loc_6F93AE: FFree1Str var_104
  loc_6F93B1: FFree1Ad var_23C
  loc_6F93B4: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F93CF: FLdRfVar var_238
  loc_6F93D2: LitVar_Missing var_234
  loc_6F93D5: LitVar_Missing var_214
  loc_6F93D8: LitVar_Missing var_1F4
  loc_6F93DB: LitVar_Missing var_1D4
  loc_6F93DE: LitVar_Missing var_1B4
  loc_6F93E1: LitVar_Missing var_194
  loc_6F93E4: LitVar_Missing var_174
  loc_6F93E7: LitVar_Missing var_154
  loc_6F93EA: LitVar_Missing var_134
  loc_6F93ED: LitVar_Missing var_114
  loc_6F93F0: LitStr "Nombre del Producto"
  loc_6F93F3: FStStrCopy var_104
  loc_6F93F6: FLdRfVar var_104
  loc_6F93F9: LitI4 6
  loc_6F93FE: PopTmpLdAdStr var_100
  loc_6F9401: LitI2_Byte &H42
  loc_6F9403: PopTmpLdAd2 var_FA
  loc_6F9406: ImpAdLdRf MemVar_74C7D0
  loc_6F9409: NewIfNullPr clsMsg
  loc_6F940C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9411: ILdRf var_238
  loc_6F9414: FLdPrThis
  loc_6F9415: VCallAd Control_ID_Label5
  loc_6F9418: FStAdFunc var_23C
  loc_6F941B: FLdPr var_23C
  loc_6F941E: Me.Caption = from_stack_1
  loc_6F9423: FFreeStr var_104 = ""
  loc_6F942A: FFree1Ad var_23C
  loc_6F942D: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F9446: FLdRfVar var_238
  loc_6F9449: LitVar_Missing var_234
  loc_6F944C: LitVar_Missing var_214
  loc_6F944F: LitVar_Missing var_1F4
  loc_6F9452: LitVar_Missing var_1D4
  loc_6F9455: LitVar_Missing var_1B4
  loc_6F9458: LitVar_Missing var_194
  loc_6F945B: LitVar_Missing var_174
  loc_6F945E: LitVar_Missing var_154
  loc_6F9461: LitVar_Missing var_134
  loc_6F9464: LitVar_Missing var_114
  loc_6F9467: LitStr "Sistema"
  loc_6F946A: FStStrCopy var_104
  loc_6F946D: FLdRfVar var_104
  loc_6F9470: LitI4 7
  loc_6F9475: PopTmpLdAdStr var_100
  loc_6F9478: LitI2_Byte &H42
  loc_6F947A: PopTmpLdAd2 var_FA
  loc_6F947D: ImpAdLdRf MemVar_74C7D0
  loc_6F9480: NewIfNullPr clsMsg
  loc_6F9483: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9488: ILdRf var_238
  loc_6F948B: FLdPrThis
  loc_6F948C: VCallAd Control_ID_Label2
  loc_6F948F: FStAdFunc var_23C
  loc_6F9492: FLdPr var_23C
  loc_6F9495: Me.Caption = from_stack_1
  loc_6F949A: FFreeStr var_104 = ""
  loc_6F94A1: FFree1Ad var_23C
  loc_6F94A4: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F94BD: FLdRfVar var_238
  loc_6F94C0: LitVar_Missing var_234
  loc_6F94C3: LitVar_Missing var_214
  loc_6F94C6: LitVar_Missing var_1F4
  loc_6F94C9: LitVar_Missing var_1D4
  loc_6F94CC: LitVar_Missing var_1B4
  loc_6F94CF: LitVar_Missing var_194
  loc_6F94D2: LitVar_Missing var_174
  loc_6F94D5: LitVar_Missing var_154
  loc_6F94D8: LitVar_Missing var_134
  loc_6F94DB: LitVar_Missing var_114
  loc_6F94DE: LitStr "Conexión entre Tanques"
  loc_6F94E1: FStStrCopy var_104
  loc_6F94E4: FLdRfVar var_104
  loc_6F94E7: LitI4 8
  loc_6F94EC: PopTmpLdAdStr var_100
  loc_6F94EF: LitI2_Byte &H42
  loc_6F94F1: PopTmpLdAd2 var_FA
  loc_6F94F4: ImpAdLdRf MemVar_74C7D0
  loc_6F94F7: NewIfNullPr clsMsg
  loc_6F94FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F94FF: ILdRf var_238
  loc_6F9502: FLdPrThis
  loc_6F9503: VCallAd Control_ID_Label3
  loc_6F9506: FStAdFunc var_23C
  loc_6F9509: FLdPr var_23C
  loc_6F950C: Me.Caption = from_stack_1
  loc_6F9511: FFreeStr var_104 = ""
  loc_6F9518: FFree1Ad var_23C
  loc_6F951B: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = ""
  loc_6F9534: FLdRfVar var_238
  loc_6F9537: LitVar_Missing var_234
  loc_6F953A: LitVar_Missing var_214
  loc_6F953D: LitVar_Missing var_1F4
  loc_6F9540: LitVar_Missing var_1D4
  loc_6F9543: LitVar_Missing var_1B4
  loc_6F9546: LitVar_Missing var_194
  loc_6F9549: LitVar_Missing var_174
  loc_6F954C: LitVar_Missing var_154
  loc_6F954F: LitVar_Missing var_134
  loc_6F9552: LitVar_Missing var_114
  loc_6F9555: LitStr "Página &Anterior"
  loc_6F9558: FStStrCopy var_104
  loc_6F955B: FLdRfVar var_104
  loc_6F955E: LitI4 9
  loc_6F9563: PopTmpLdAdStr var_100
  loc_6F9566: LitI2_Byte &H42
  loc_6F9568: PopTmpLdAd2 var_FA
  loc_6F956B: ImpAdLdRf MemVar_74C7D0
  loc_6F956E: NewIfNullPr clsMsg
  loc_6F9571: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9576: FLdZeroAd var_238
  loc_6F9579: CVarStr var_26C
  loc_6F957C: PopAdLdVar
  loc_6F957D: FLdPrThis
  loc_6F957E: VCallAd Control_ID_SSCommand1
  loc_6F9581: FStAdFunc var_23C
  loc_6F9584: FLdPr var_23C
  loc_6F9587: LateIdSt
  loc_6F958C: FFree1Str var_104
  loc_6F958F: FFree1Ad var_23C
  loc_6F9592: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F95AD: FLdRfVar var_238
  loc_6F95B0: LitVar_Missing var_234
  loc_6F95B3: LitVar_Missing var_214
  loc_6F95B6: LitVar_Missing var_1F4
  loc_6F95B9: LitVar_Missing var_1D4
  loc_6F95BC: LitVar_Missing var_1B4
  loc_6F95BF: LitVar_Missing var_194
  loc_6F95C2: LitVar_Missing var_174
  loc_6F95C5: LitVar_Missing var_154
  loc_6F95C8: LitVar_Missing var_134
  loc_6F95CB: LitVar_Missing var_114
  loc_6F95CE: LitStr "&Cancelar"
  loc_6F95D1: FStStrCopy var_104
  loc_6F95D4: FLdRfVar var_104
  loc_6F95D7: LitI4 4
  loc_6F95DC: PopTmpLdAdStr var_100
  loc_6F95DF: LitI2_Byte &H42
  loc_6F95E1: PopTmpLdAd2 var_FA
  loc_6F95E4: ImpAdLdRf MemVar_74C7D0
  loc_6F95E7: NewIfNullPr clsMsg
  loc_6F95EA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F95EF: FLdZeroAd var_238
  loc_6F95F2: CVarStr var_26C
  loc_6F95F5: PopAdLdVar
  loc_6F95F6: FLdPrThis
  loc_6F95F7: VCallAd Control_ID_sscCancel
  loc_6F95FA: FStAdFunc var_23C
  loc_6F95FD: FLdPr var_23C
  loc_6F9600: LateIdSt
  loc_6F9605: FFree1Str var_104
  loc_6F9608: FFree1Ad var_23C
  loc_6F960B: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F9626: FLdRfVar var_238
  loc_6F9629: LitVar_Missing var_234
  loc_6F962C: LitVar_Missing var_214
  loc_6F962F: LitVar_Missing var_1F4
  loc_6F9632: LitVar_Missing var_1D4
  loc_6F9635: LitVar_Missing var_1B4
  loc_6F9638: LitVar_Missing var_194
  loc_6F963B: LitVar_Missing var_174
  loc_6F963E: LitVar_Missing var_154
  loc_6F9641: LitVar_Missing var_134
  loc_6F9644: LitVar_Missing var_114
  loc_6F9647: LitStr "&Reset"
  loc_6F964A: FStStrCopy var_104
  loc_6F964D: FLdRfVar var_104
  loc_6F9650: LitI4 &HA
  loc_6F9655: PopTmpLdAdStr var_100
  loc_6F9658: LitI2_Byte &H42
  loc_6F965A: PopTmpLdAd2 var_FA
  loc_6F965D: ImpAdLdRf MemVar_74C7D0
  loc_6F9660: NewIfNullPr clsMsg
  loc_6F9663: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F9668: FLdZeroAd var_238
  loc_6F966B: CVarStr var_26C
  loc_6F966E: PopAdLdVar
  loc_6F966F: FLdPrThis
  loc_6F9670: VCallAd Control_ID_SSCommand3
  loc_6F9673: FStAdFunc var_23C
  loc_6F9676: FLdPr var_23C
  loc_6F9679: LateIdSt
  loc_6F967E: FFree1Str var_104
  loc_6F9681: FFree1Ad var_23C
  loc_6F9684: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F969F: FLdRfVar var_238
  loc_6F96A2: LitVar_Missing var_234
  loc_6F96A5: LitVar_Missing var_214
  loc_6F96A8: LitVar_Missing var_1F4
  loc_6F96AB: LitVar_Missing var_1D4
  loc_6F96AE: LitVar_Missing var_1B4
  loc_6F96B1: LitVar_Missing var_194
  loc_6F96B4: LitVar_Missing var_174
  loc_6F96B7: LitVar_Missing var_154
  loc_6F96BA: LitVar_Missing var_134
  loc_6F96BD: LitVar_Missing var_114
  loc_6F96C0: LitStr "&Próxima Página"
  loc_6F96C3: FStStrCopy var_104
  loc_6F96C6: FLdRfVar var_104
  loc_6F96C9: LitI4 &HB
  loc_6F96CE: PopTmpLdAdStr var_100
  loc_6F96D1: LitI2_Byte &H42
  loc_6F96D3: PopTmpLdAd2 var_FA
  loc_6F96D6: ImpAdLdRf MemVar_74C7D0
  loc_6F96D9: NewIfNullPr clsMsg
  loc_6F96DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F96E1: FLdZeroAd var_238
  loc_6F96E4: CVarStr var_26C
  loc_6F96E7: PopAdLdVar
  loc_6F96E8: FLdPrThis
  loc_6F96E9: VCallAd Control_ID_SSCommand2
  loc_6F96EC: FStAdFunc var_23C
  loc_6F96EF: FLdPr var_23C
  loc_6F96F2: LateIdSt
  loc_6F96F7: FFree1Str var_104
  loc_6F96FA: FFree1Ad var_23C
  loc_6F96FD: FFreeVar var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6F9718: LitVarI2 var_144, 1
  loc_6F971D: FLdRfVar var_B4
  loc_6F9720: LitVarI2 var_124, 16
  loc_6F9725: ForVar var_2B4
  loc_6F972D: LitVarI2 var_144, 0
  loc_6F9732: FLdRfVar var_C4
  loc_6F9735: LitVarI2 var_124, 2
  loc_6F973A: ForVar var_2D4
  loc_6F9742: FLdRfVar var_B4
  loc_6F9745: CI4Var
  loc_6F9747: FLdRfVar var_C4
  loc_6F974A: CI4Var
  loc_6F974C: ImpAdLdRf MemVar_74C1B8
  loc_6F974F: AryLdPr
  loc_6F9752: MemLdUI1 global_0
  loc_6F9756: FLdRfVar var_B4
  loc_6F9759: CI4Var
  loc_6F975B: FLdRfVar var_C4
  loc_6F975E: CI4Var
  loc_6F9760: FLdRfVar var_E8
  loc_6F9763: AryLdPr
  loc_6F9766: MemStUI1
  loc_6F976C: FLdRfVar var_C4
  loc_6F976F: NextStepVar var_2D4
  loc_6F9777: FLdRfVar var_B4
  loc_6F977A: NextStepVar var_2B4
  loc_6F9782: ImpAdLdRf MemVar_74C1B8
  loc_6F9785: PopTmpLdAdStr var_100
  loc_6F9788: Erase
  loc_6F978B: LitVarI2 var_144, 1
  loc_6F9790: FLdRfVar var_A4
  loc_6F9793: ImpAdLdUI1
  loc_6F9797: CVarUI1
  loc_6F979B: ForVar var_2F4
  loc_6F97A3: LitVarI2 var_144, 1
  loc_6F97A8: FLdRfVar var_B4
  loc_6F97AB: LitVarI2 var_124, 16
  loc_6F97B0: ForVar var_314
  loc_6F97B8: FLdRfVar var_A4
  loc_6F97BB: FLdRfVar var_B4
  loc_6F97BE: CI4Var
  loc_6F97C0: LitI4 0
  loc_6F97C5: FLdRfVar var_E8
  loc_6F97C8: AryLdPr
  loc_6F97CB: MemLdUI1 global_0
  loc_6F97CF: CVarUI1
  loc_6F97D3: HardType
  loc_6F97D4: EqVarBool
  loc_6F97D6: BranchF loc_6F984F
  loc_6F97DB: FLdRfVar var_A4
  loc_6F97DE: CI4Var
  loc_6F97E0: ImpAdLdRf MemVar_74C114
  loc_6F97E3: Ary1LdUI1
  loc_6F97E5: CI2UI1
  loc_6F97E7: LitI2_Byte 0
  loc_6F97E9: EqI2
  loc_6F97EA: BranchF loc_6F9848
  loc_6F97EF: FLdUI1
  loc_6F97F3: CI2UI1
  loc_6F97F5: LitI2_Byte 1
  loc_6F97F7: AddI2
  loc_6F97F8: CUI1I2
  loc_6F97FA: FStUI1 var_C6
  loc_6F9800: LitVarI2 var_144, 0
  loc_6F9805: FLdRfVar var_C4
  loc_6F9808: LitVarI2 var_124, 2
  loc_6F980D: ForVar var_334
  loc_6F9815: FLdRfVar var_B4
  loc_6F9818: CI4Var
  loc_6F981A: FLdRfVar var_C4
  loc_6F981D: CI4Var
  loc_6F981F: FLdRfVar var_E8
  loc_6F9822: AryLdPr
  loc_6F9825: MemLdUI1 global_0
  loc_6F9829: FLdUI1
  loc_6F982D: CI4UI1
  loc_6F982E: FLdRfVar var_C4
  loc_6F9831: CI4Var
  loc_6F9833: ImpAdLdRf MemVar_74C1B8
  loc_6F9836: AryLdPr
  loc_6F9839: MemStUI1
  loc_6F983F: FLdRfVar var_C4
  loc_6F9842: NextStepVar var_334
  loc_6F984C: Branch loc_6F985C
  loc_6F9853: FLdRfVar var_B4
  loc_6F9856: NextStepVar var_314
  loc_6F985E: FLdRfVar var_A4
  loc_6F9861: NextStepVar var_2F4
  loc_6F9869: LitVarI2 var_144, 1
  loc_6F986E: FLdRfVar var_A4
  loc_6F9871: ImpAdLdUI1
  loc_6F9875: CVarUI1
  loc_6F9879: ForVar var_354
  loc_6F9881: LitVarI2 var_144, 1
  loc_6F9886: FLdRfVar var_B4
  loc_6F9889: LitVarI2 var_124, 16
  loc_6F988E: ForVar var_374
  loc_6F9896: FLdRfVar var_A4
  loc_6F9899: FLdRfVar var_B4
  loc_6F989C: CI4Var
  loc_6F989E: LitI4 0
  loc_6F98A3: FLdRfVar var_E8
  loc_6F98A6: AryLdPr
  loc_6F98A9: MemLdUI1 global_0
  loc_6F98AD: CVarUI1
  loc_6F98B1: HardType
  loc_6F98B2: EqVarBool
  loc_6F98B4: BranchF loc_6F992A
  loc_6F98B9: FLdRfVar var_A4
  loc_6F98BC: CI4Var
  loc_6F98BE: ImpAdLdRf MemVar_74C114
  loc_6F98C1: Ary1LdUI1
  loc_6F98C3: CBoolUI1
  loc_6F98C5: BranchF loc_6F9923
  loc_6F98CA: FLdUI1
  loc_6F98CE: CI2UI1
  loc_6F98D0: LitI2_Byte 1
  loc_6F98D2: AddI2
  loc_6F98D3: CUI1I2
  loc_6F98D5: FStUI1 var_C6
  loc_6F98DB: LitVarI2 var_144, 0
  loc_6F98E0: FLdRfVar var_C4
  loc_6F98E3: LitVarI2 var_124, 2
  loc_6F98E8: ForVar var_394
  loc_6F98F0: FLdRfVar var_B4
  loc_6F98F3: CI4Var
  loc_6F98F5: FLdRfVar var_C4
  loc_6F98F8: CI4Var
  loc_6F98FA: FLdRfVar var_E8
  loc_6F98FD: AryLdPr
  loc_6F9900: MemLdUI1 global_0
  loc_6F9904: FLdUI1
  loc_6F9908: CI4UI1
  loc_6F9909: FLdRfVar var_C4
  loc_6F990C: CI4Var
  loc_6F990E: ImpAdLdRf MemVar_74C1B8
  loc_6F9911: AryLdPr
  loc_6F9914: MemStUI1
  loc_6F991A: FLdRfVar var_C4
  loc_6F991D: NextStepVar var_394
  loc_6F9927: Branch loc_6F9937
  loc_6F992E: FLdRfVar var_B4
  loc_6F9931: NextStepVar var_374
  loc_6F9939: FLdRfVar var_A4
  loc_6F993C: NextStepVar var_354
  loc_6F9944: LitVarI2 var_144, 1
  loc_6F9949: FLdRfVar var_A4
  loc_6F994C: LitVarI2 var_124, 16
  loc_6F9951: ForVar var_3B4
  loc_6F9959: FLdRfVar var_A4
  loc_6F995C: CI4Var
  loc_6F995E: LitI4 0
  loc_6F9963: ImpAdLdRf MemVar_74C1B8
  loc_6F9966: AryLdPr
  loc_6F9969: MemLdUI1 global_0
  loc_6F996D: CBoolUI1
  loc_6F996F: BranchF loc_6F9C13
  loc_6F9974: FLdRfVar var_A4
  loc_6F9977: FStVarCopy
  loc_6F997D: LitStr " "
  loc_6F9980: FLdRfVar var_104
  loc_6F9983: FLdRfVar var_A4
  loc_6F9986: CI4Var
  loc_6F9988: LitI4 0
  loc_6F998D: ImpAdLdRf MemVar_74C1B8
  loc_6F9990: AryLdPr
  loc_6F9993: MemLdUI1 global_0
  loc_6F9997: CI4UI1
  loc_6F9998: ImpAdLdRf MemVar_74C1D8
  loc_6F999B: Ary1LdUI1
  loc_6F999D: CI2UI1
  loc_6F999F: ImpAdLdRf MemVar_74A220
  loc_6F99A2: NewIfNullPr clsProducts
  loc_6F99AA: ILdRf var_104
  loc_6F99AD: ConcatStr
  loc_6F99AE: FStStrNoPop var_238
  loc_6F99B1: FLdRfVar var_280
  loc_6F99B4: FLdRfVar var_A4
  loc_6F99B7: CI2Var
  loc_6F99B8: FLdPrThis
  loc_6F99B9: VCallAd Control_ID_Label1
  loc_6F99BC: FStAdFunc var_23C
  loc_6F99BF: FLdPr var_23C
  loc_6F99C2: Set from_stack_2 = Me(from_stack_1)
  loc_6F99C7: FLdPr var_280
  loc_6F99CA: Me.Caption = from_stack_1
  loc_6F99CF: FFreeStr var_104 = ""
  loc_6F99D6: FFreeAd var_23C = ""
  loc_6F99DF: FLdRfVar var_A4
  loc_6F99E2: CI4Var
  loc_6F99E4: LitI4 0
  loc_6F99E9: ImpAdLdRf MemVar_74C1B8
  loc_6F99EC: AryLdPr
  loc_6F99EF: MemLdUI1 global_0
  loc_6F99F3: CI4UI1
  loc_6F99F4: ImpAdLdRf MemVar_74C114
  loc_6F99F7: Ary1LdUI1
  loc_6F99F9: CBoolUI1
  loc_6F99FB: BranchF loc_6F9A2A
  loc_6F9A00: LitI2_Byte 1
  loc_6F9A02: FLdRfVar var_280
  loc_6F9A05: FLdRfVar var_A4
  loc_6F9A08: CI2Var
  loc_6F9A09: FLdPrThis
  loc_6F9A0A: VCallAd Control_ID_Combo1
  loc_6F9A0D: FStAdFunc var_23C
  loc_6F9A10: FLdPr var_23C
  loc_6F9A13: Set from_stack_2 = Me(from_stack_1)
  loc_6F9A18: FLdPr var_280
  loc_6F9A1B: Me.ListIndex = from_stack_1
  loc_6F9A20: FFreeAd var_23C = ""
  loc_6F9A27: Branch loc_6F9A55
  loc_6F9A2E: LitI2_Byte 0
  loc_6F9A30: FLdRfVar var_280
  loc_6F9A33: FLdRfVar var_A4
  loc_6F9A36: CI2Var
  loc_6F9A37: FLdPrThis
  loc_6F9A38: VCallAd Control_ID_Combo1
  loc_6F9A3B: FStAdFunc var_23C
  loc_6F9A3E: FLdPr var_23C
  loc_6F9A41: Set from_stack_2 = Me(from_stack_1)
  loc_6F9A46: FLdPr var_280
  loc_6F9A49: Me.ListIndex = from_stack_1
  loc_6F9A4E: FFreeAd var_23C = ""
  loc_6F9A59: FLdRfVar var_A4
  loc_6F9A5C: CI4Var
  loc_6F9A5E: LitI4 0
  loc_6F9A63: ImpAdLdRf MemVar_74C1B8
  loc_6F9A66: AryLdPr
  loc_6F9A69: MemLdUI1 global_0
  loc_6F9A6D: CVarUI1
  loc_6F9A71: PopAdLdVar
  loc_6F9A72: FLdRfVar var_280
  loc_6F9A75: FLdRfVar var_A4
  loc_6F9A78: CI2Var
  loc_6F9A79: FLdPrThis
  loc_6F9A7A: VCallAd Control_ID_SSCommand4
  loc_6F9A7D: FStAdFunc var_23C
  loc_6F9A80: FLdPr var_23C
  loc_6F9A83: Set from_stack_2 = Me(from_stack_1)
  loc_6F9A88: FLdPr var_280
  loc_6F9A8B: LateIdSt
  loc_6F9A90: FFreeAd var_23C = ""
  loc_6F9A99: FLdRfVar var_A4
  loc_6F9A9C: CI4Var
  loc_6F9A9E: LitI4 1
  loc_6F9AA3: ImpAdLdRf MemVar_74C1B8
  loc_6F9AA6: AryLdPr
  loc_6F9AA9: MemLdUI1 global_0
  loc_6F9AAD: CVarUI1
  loc_6F9AB1: PopAdLdVar
  loc_6F9AB2: FLdRfVar var_280
  loc_6F9AB5: FLdRfVar var_A4
  loc_6F9AB8: CI2Var
  loc_6F9AB9: FLdPrThis
  loc_6F9ABA: VCallAd Control_ID_SSCommand5
  loc_6F9ABD: FStAdFunc var_23C
  loc_6F9AC0: FLdPr var_23C
  loc_6F9AC3: Set from_stack_2 = Me(from_stack_1)
  loc_6F9AC8: FLdPr var_280
  loc_6F9ACB: LateIdSt
  loc_6F9AD0: FFreeAd var_23C = ""
  loc_6F9AD9: FLdRfVar var_A4
  loc_6F9ADC: CI4Var
  loc_6F9ADE: LitI4 2
  loc_6F9AE3: ImpAdLdRf MemVar_74C1B8
  loc_6F9AE6: AryLdPr
  loc_6F9AE9: MemLdUI1 global_0
  loc_6F9AED: CBoolUI1
  loc_6F9AEF: BranchF loc_6F9B35
  loc_6F9AF4: FLdRfVar var_A4
  loc_6F9AF7: CI4Var
  loc_6F9AF9: LitI4 2
  loc_6F9AFE: ImpAdLdRf MemVar_74C1B8
  loc_6F9B01: AryLdPr
  loc_6F9B04: MemLdUI1 global_0
  loc_6F9B08: CVarUI1
  loc_6F9B0C: PopAdLdVar
  loc_6F9B0D: FLdRfVar var_280
  loc_6F9B10: FLdRfVar var_A4
  loc_6F9B13: CI2Var
  loc_6F9B14: FLdPrThis
  loc_6F9B15: VCallAd Control_ID_SSCommand6
  loc_6F9B18: FStAdFunc var_23C
  loc_6F9B1B: FLdPr var_23C
  loc_6F9B1E: Set from_stack_2 = Me(from_stack_1)
  loc_6F9B23: FLdPr var_280
  loc_6F9B26: LateIdSt
  loc_6F9B2B: FFreeAd var_23C = ""
  loc_6F9B32: Branch loc_6F9B64
  loc_6F9B39: LitVarStr var_F8, "--"
  loc_6F9B3E: PopAdLdVar
  loc_6F9B3F: FLdRfVar var_280
  loc_6F9B42: FLdRfVar var_A4
  loc_6F9B45: CI2Var
  loc_6F9B46: FLdPrThis
  loc_6F9B47: VCallAd Control_ID_SSCommand6
  loc_6F9B4A: FStAdFunc var_23C
  loc_6F9B4D: FLdPr var_23C
  loc_6F9B50: Set from_stack_2 = Me(from_stack_1)
  loc_6F9B55: FLdPr var_280
  loc_6F9B58: LateIdSt
  loc_6F9B5D: FFreeAd var_23C = ""
  loc_6F9B68: LitI2_Byte &HFF
  loc_6F9B6A: FLdRfVar var_280
  loc_6F9B6D: FLdRfVar var_A4
  loc_6F9B70: CI2Var
  loc_6F9B71: FLdPrThis
  loc_6F9B72: VCallAd Control_ID_Combo1
  loc_6F9B75: FStAdFunc var_23C
  loc_6F9B78: FLdPr var_23C
  loc_6F9B7B: Set from_stack_2 = Me(from_stack_1)
  loc_6F9B80: FLdPr var_280
  loc_6F9B83: Me.Enabled = from_stack_1b
  loc_6F9B88: FFreeAd var_23C = ""
  loc_6F9B91: LitVar_TRUE var_F8
  loc_6F9B94: PopAdLdVar
  loc_6F9B95: FLdRfVar var_280
  loc_6F9B98: FLdRfVar var_A4
  loc_6F9B9B: CI2Var
  loc_6F9B9C: FLdPrThis
  loc_6F9B9D: VCallAd Control_ID_SSCommand4
  loc_6F9BA0: FStAdFunc var_23C
  loc_6F9BA3: FLdPr var_23C
  loc_6F9BA6: Set from_stack_2 = Me(from_stack_1)
  loc_6F9BAB: FLdPr var_280
  loc_6F9BAE: LateIdSt
  loc_6F9BB3: FFreeAd var_23C = ""
  loc_6F9BBC: LitVar_TRUE var_F8
  loc_6F9BBF: PopAdLdVar
  loc_6F9BC0: FLdRfVar var_280
  loc_6F9BC3: FLdRfVar var_A4
  loc_6F9BC6: CI2Var
  loc_6F9BC7: FLdPrThis
  loc_6F9BC8: VCallAd Control_ID_SSCommand5
  loc_6F9BCB: FStAdFunc var_23C
  loc_6F9BCE: FLdPr var_23C
  loc_6F9BD1: Set from_stack_2 = Me(from_stack_1)
  loc_6F9BD6: FLdPr var_280
  loc_6F9BD9: LateIdSt
  loc_6F9BDE: FFreeAd var_23C = ""
  loc_6F9BE7: LitVar_TRUE var_F8
  loc_6F9BEA: PopAdLdVar
  loc_6F9BEB: FLdRfVar var_280
  loc_6F9BEE: FLdRfVar var_A4
  loc_6F9BF1: CI2Var
  loc_6F9BF2: FLdPrThis
  loc_6F9BF3: VCallAd Control_ID_SSCommand6
  loc_6F9BF6: FStAdFunc var_23C
  loc_6F9BF9: FLdPr var_23C
  loc_6F9BFC: Set from_stack_2 = Me(from_stack_1)
  loc_6F9C01: FLdPr var_280
  loc_6F9C04: LateIdSt
  loc_6F9C09: FFreeAd var_23C = ""
  loc_6F9C10: Branch loc_6F9E62
  loc_6F9C17: LitStr vbNullString
  loc_6F9C1A: FLdRfVar var_280
  loc_6F9C1D: FLdRfVar var_A4
  loc_6F9C20: CI2Var
  loc_6F9C21: FLdPrThis
  loc_6F9C22: VCallAd Control_ID_Label1
  loc_6F9C25: FStAdFunc var_23C
  loc_6F9C28: FLdPr var_23C
  loc_6F9C2B: Set from_stack_2 = Me(from_stack_1)
  loc_6F9C30: FLdPr var_280
  loc_6F9C33: Me.Caption = from_stack_1
  loc_6F9C38: FFreeAd var_23C = ""
  loc_6F9C41: FLdRfVar var_94
  loc_6F9C44: CBoolVarNull
  loc_6F9C46: BranchF loc_6F9D01
  loc_6F9C4B: LitVarI2 var_F8, 0
  loc_6F9C50: FStVar var_94
  loc_6F9C56: LitI2_Byte &HFF
  loc_6F9C58: FLdRfVar var_280
  loc_6F9C5B: FLdRfVar var_A4
  loc_6F9C5E: CI2Var
  loc_6F9C5F: FLdPrThis
  loc_6F9C60: VCallAd Control_ID_Combo1
  loc_6F9C63: FStAdFunc var_23C
  loc_6F9C66: FLdPr var_23C
  loc_6F9C69: Set from_stack_2 = Me(from_stack_1)
  loc_6F9C6E: FLdPr var_280
  loc_6F9C71: Me.Enabled = from_stack_1b
  loc_6F9C76: FFreeAd var_23C = ""
  loc_6F9C7F: LitVar_TRUE var_F8
  loc_6F9C82: PopAdLdVar
  loc_6F9C83: FLdRfVar var_280
  loc_6F9C86: FLdRfVar var_A4
  loc_6F9C89: CI2Var
  loc_6F9C8A: FLdPrThis
  loc_6F9C8B: VCallAd Control_ID_SSCommand4
  loc_6F9C8E: FStAdFunc var_23C
  loc_6F9C91: FLdPr var_23C
  loc_6F9C94: Set from_stack_2 = Me(from_stack_1)
  loc_6F9C99: FLdPr var_280
  loc_6F9C9C: LateIdSt
  loc_6F9CA1: FFreeAd var_23C = ""
  loc_6F9CAA: LitVar_TRUE var_F8
  loc_6F9CAD: PopAdLdVar
  loc_6F9CAE: FLdRfVar var_280
  loc_6F9CB1: FLdRfVar var_A4
  loc_6F9CB4: CI2Var
  loc_6F9CB5: FLdPrThis
  loc_6F9CB6: VCallAd Control_ID_SSCommand5
  loc_6F9CB9: FStAdFunc var_23C
  loc_6F9CBC: FLdPr var_23C
  loc_6F9CBF: Set from_stack_2 = Me(from_stack_1)
  loc_6F9CC4: FLdPr var_280
  loc_6F9CC7: LateIdSt
  loc_6F9CCC: FFreeAd var_23C = ""
  loc_6F9CD5: LitVar_TRUE var_F8
  loc_6F9CD8: PopAdLdVar
  loc_6F9CD9: FLdRfVar var_280
  loc_6F9CDC: FLdRfVar var_A4
  loc_6F9CDF: CI2Var
  loc_6F9CE0: FLdPrThis
  loc_6F9CE1: VCallAd Control_ID_SSCommand6
  loc_6F9CE4: FStAdFunc var_23C
  loc_6F9CE7: FLdPr var_23C
  loc_6F9CEA: Set from_stack_2 = Me(from_stack_1)
  loc_6F9CEF: FLdPr var_280
  loc_6F9CF2: LateIdSt
  loc_6F9CF7: FFreeAd var_23C = ""
  loc_6F9CFE: Branch loc_6F9DB0
  loc_6F9D05: LitI2_Byte 0
  loc_6F9D07: FLdRfVar var_280
  loc_6F9D0A: FLdRfVar var_A4
  loc_6F9D0D: CI2Var
  loc_6F9D0E: FLdPrThis
  loc_6F9D0F: VCallAd Control_ID_Combo1
  loc_6F9D12: FStAdFunc var_23C
  loc_6F9D15: FLdPr var_23C
  loc_6F9D18: Set from_stack_2 = Me(from_stack_1)
  loc_6F9D1D: FLdPr var_280
  loc_6F9D20: Me.Enabled = from_stack_1b
  loc_6F9D25: FFreeAd var_23C = ""
  loc_6F9D2E: LitVar_FALSE
  loc_6F9D32: PopAdLdVar
  loc_6F9D33: FLdRfVar var_280
  loc_6F9D36: FLdRfVar var_A4
  loc_6F9D39: CI2Var
  loc_6F9D3A: FLdPrThis
  loc_6F9D3B: VCallAd Control_ID_SSCommand4
  loc_6F9D3E: FStAdFunc var_23C
  loc_6F9D41: FLdPr var_23C
  loc_6F9D44: Set from_stack_2 = Me(from_stack_1)
  loc_6F9D49: FLdPr var_280
  loc_6F9D4C: LateIdSt
  loc_6F9D51: FFreeAd var_23C = ""
  loc_6F9D5A: LitVar_FALSE
  loc_6F9D5E: PopAdLdVar
  loc_6F9D5F: FLdRfVar var_280
  loc_6F9D62: FLdRfVar var_A4
  loc_6F9D65: CI2Var
  loc_6F9D66: FLdPrThis
  loc_6F9D67: VCallAd Control_ID_SSCommand5
  loc_6F9D6A: FStAdFunc var_23C
  loc_6F9D6D: FLdPr var_23C
  loc_6F9D70: Set from_stack_2 = Me(from_stack_1)
  loc_6F9D75: FLdPr var_280
  loc_6F9D78: LateIdSt
  loc_6F9D7D: FFreeAd var_23C = ""
  loc_6F9D86: LitVar_FALSE
  loc_6F9D8A: PopAdLdVar
  loc_6F9D8B: FLdRfVar var_280
  loc_6F9D8E: FLdRfVar var_A4
  loc_6F9D91: CI2Var
  loc_6F9D92: FLdPrThis
  loc_6F9D93: VCallAd Control_ID_SSCommand6
  loc_6F9D96: FStAdFunc var_23C
  loc_6F9D99: FLdPr var_23C
  loc_6F9D9C: Set from_stack_2 = Me(from_stack_1)
  loc_6F9DA1: FLdPr var_280
  loc_6F9DA4: LateIdSt
  loc_6F9DA9: FFreeAd var_23C = ""
  loc_6F9DB4: LitI2_Byte &HFF
  loc_6F9DB6: FLdRfVar var_280
  loc_6F9DB9: FLdRfVar var_A4
  loc_6F9DBC: CI2Var
  loc_6F9DBD: FLdPrThis
  loc_6F9DBE: VCallAd Control_ID_Combo1
  loc_6F9DC1: FStAdFunc var_23C
  loc_6F9DC4: FLdPr var_23C
  loc_6F9DC7: Set from_stack_2 = Me(from_stack_1)
  loc_6F9DCC: FLdPr var_280
  loc_6F9DCF: Me.ListIndex = from_stack_1
  loc_6F9DD4: FFreeAd var_23C = ""
  loc_6F9DDD: LitVarStr var_F8, "--"
  loc_6F9DE2: PopAdLdVar
  loc_6F9DE3: FLdRfVar var_280
  loc_6F9DE6: FLdRfVar var_A4
  loc_6F9DE9: CI2Var
  loc_6F9DEA: FLdPrThis
  loc_6F9DEB: VCallAd Control_ID_SSCommand4
  loc_6F9DEE: FStAdFunc var_23C
  loc_6F9DF1: FLdPr var_23C
  loc_6F9DF4: Set from_stack_2 = Me(from_stack_1)
  loc_6F9DF9: FLdPr var_280
  loc_6F9DFC: LateIdSt
  loc_6F9E01: FFreeAd var_23C = ""
  loc_6F9E0A: LitVarStr var_F8, "--"
  loc_6F9E0F: PopAdLdVar
  loc_6F9E10: FLdRfVar var_280
  loc_6F9E13: FLdRfVar var_A4
  loc_6F9E16: CI2Var
  loc_6F9E17: FLdPrThis
  loc_6F9E18: VCallAd Control_ID_SSCommand5
  loc_6F9E1B: FStAdFunc var_23C
  loc_6F9E1E: FLdPr var_23C
  loc_6F9E21: Set from_stack_2 = Me(from_stack_1)
  loc_6F9E26: FLdPr var_280
  loc_6F9E29: LateIdSt
  loc_6F9E2E: FFreeAd var_23C = ""
  loc_6F9E37: LitVarStr var_F8, "--"
  loc_6F9E3C: PopAdLdVar
  loc_6F9E3D: FLdRfVar var_280
  loc_6F9E40: FLdRfVar var_A4
  loc_6F9E43: CI2Var
  loc_6F9E44: FLdPrThis
  loc_6F9E45: VCallAd Control_ID_SSCommand6
  loc_6F9E48: FStAdFunc var_23C
  loc_6F9E4B: FLdPr var_23C
  loc_6F9E4E: Set from_stack_2 = Me(from_stack_1)
  loc_6F9E53: FLdPr var_280
  loc_6F9E56: LateIdSt
  loc_6F9E5B: FFreeAd var_23C = ""
  loc_6F9E66: FLdRfVar var_A4
  loc_6F9E69: NextStepVar var_3B4
  loc_6F9E71: LitI2_Byte 1
  loc_6F9E73: CUI1I2
  loc_6F9E75: FLdPr Me
  loc_6F9E78: MemStUI1
  loc_6F9E7E: FLdPrThis
  loc_6F9E7F: VCallAd Control_ID_SSCommand2
  loc_6F9E82: FStAdFunc var_23C
  loc_6F9E85: FLdPr var_23C
  loc_6F9E88: LateIdCall
  loc_6F9E90: FFree1Ad var_23C
  loc_6F9E95: ImpAdLdUI1
  loc_6F9E99: CI2UI1
  loc_6F9E9B: LitI2_Byte 1
  loc_6F9E9D: EqI2
  loc_6F9E9E: BranchF loc_6F9EA8
  loc_6F9EA3: Call SSCommand2_UnknownEvent_8()
  loc_6F9EAC: ExitProcHresult
  loc_6F9EAF: Resume
  loc_6F9EB5: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5DA448
  'Data Table: 436838
  loc_5DA410: ImpAdLdRf MemVar_74A220
  loc_5DA413: NewIfNullPr clsProducts
  loc_5DA416: clsProducts.Height = from_stack_1s
  loc_5DA41B: LitI2_Byte &HFF
  loc_5DA41D: PopTmpLdAd2 var_86
  loc_5DA420: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5DA425: LitI2_Byte &HFF
  loc_5DA427: ImpAdLdRf MemVar_74C760
  loc_5DA42A: NewIfNullPr Formx
  loc_5DA42D: Call Formx.CanceladoPut(from_stack_1v)
  loc_5DA432: ILdRf Me
  loc_5DA435: FStAdNoPop
  loc_5DA439: ImpAdLdRf MemVar_7520D4
  loc_5DA43C: NewIfNullPr Global
  loc_5DA43F: Global.Unload from_stack_1
  loc_5DA444: FFree1Ad var_8C
  loc_5DA447: ExitProcHresult
End Sub

Private Function SSCommand4_UnknownEvent_0(arg_C) '6A1A2C
  'Data Table: 436838
  loc_6A1408: FLdPr Me
  loc_6A140B: MemLdUI1 global_52
  loc_6A140F: CBoolUI1
  loc_6A1411: BranchF loc_6A1A29
  loc_6A1414: ILdI2 arg_C
  loc_6A1417: CUI1I2
  loc_6A1419: FLdPr Me
  loc_6A141C: MemStUI1
  loc_6A1420: FLdRfVar var_DA
  loc_6A1423: FLdRfVar var_D8
  loc_6A1426: ILdI2 arg_C
  loc_6A1429: FLdPrThis
  loc_6A142A: VCallAd Control_ID_Combo1
  loc_6A142D: FStAdFunc var_D4
  loc_6A1430: FLdPr var_D4
  loc_6A1433: Set from_stack_2 = Me(from_stack_1)
  loc_6A1438: FLdPr var_D8
  loc_6A143B:  = Me.ListIndex
  loc_6A1440: FLdI2 var_DA
  loc_6A1443: LitI2_Byte &HFF
  loc_6A1445: EqI2
  loc_6A1446: FFreeAd var_D4 = ""
  loc_6A144D: BranchF loc_6A1586
  loc_6A1450: ImpAdCallFPR4 Beep()
  loc_6A1455: FLdRfVar var_228
  loc_6A1458: LitVar_Missing var_224
  loc_6A145B: LitVar_Missing var_204
  loc_6A145E: LitVar_Missing var_1E4
  loc_6A1461: LitVar_Missing var_1C4
  loc_6A1464: LitVar_Missing var_1A4
  loc_6A1467: LitVar_Missing var_184
  loc_6A146A: LitVar_Missing var_164
  loc_6A146D: LitVar_Missing var_144
  loc_6A1470: LitVar_Missing var_124
  loc_6A1473: LitVar_Missing var_104
  loc_6A1476: LitStr "Primero debe configurarse el Tipo de Interconexión."
  loc_6A1479: FStStrCopy var_E4
  loc_6A147C: FLdRfVar var_E4
  loc_6A147F: LitI4 &H10
  loc_6A1484: PopTmpLdAdStr var_E0
  loc_6A1487: LitI2_Byte &H42
  loc_6A1489: PopTmpLdAd2 var_DA
  loc_6A148C: ImpAdLdRf MemVar_74C7D0
  loc_6A148F: NewIfNullPr clsMsg
  loc_6A1492: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A1497: LitI4 &HD
  loc_6A149C: FLdRfVar var_238
  loc_6A149F: ImpAdCallFPR4  = Chr()
  loc_6A14A4: LitI4 &HA
  loc_6A14A9: FLdRfVar var_268
  loc_6A14AC: ImpAdCallFPR4  = Chr()
  loc_6A14B1: FLdRfVar var_3C8
  loc_6A14B4: LitVar_Missing var_3C4
  loc_6A14B7: LitVar_Missing var_3A4
  loc_6A14BA: LitVar_Missing var_384
  loc_6A14BD: LitVar_Missing var_364
  loc_6A14C0: LitVar_Missing var_344
  loc_6A14C3: LitVar_Missing var_324
  loc_6A14C6: LitVar_Missing var_304
  loc_6A14C9: LitVar_Missing var_2E4
  loc_6A14CC: LitVar_Missing var_2C4
  loc_6A14CF: LitVar_Missing var_2A4
  loc_6A14D2: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_6A14D5: FStStrCopy var_284
  loc_6A14D8: FLdRfVar var_284
  loc_6A14DB: LitI4 &H11
  loc_6A14E0: PopTmpLdAdStr var_280
  loc_6A14E3: LitI2_Byte &H42
  loc_6A14E5: PopTmpLdAd2 var_27A
  loc_6A14E8: ImpAdLdRf MemVar_74C7D0
  loc_6A14EB: NewIfNullPr clsMsg
  loc_6A14EE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A14F3: LitVar_Missing var_418
  loc_6A14F6: LitVar_Missing var_3F8
  loc_6A14F9: FLdZeroAd var_3C8
  loc_6A14FC: CVarStr var_3D8
  loc_6A14FF: LitI4 &H10
  loc_6A1504: FLdZeroAd var_228
  loc_6A1507: CVarStr var_248
  loc_6A150A: FLdRfVar var_238
  loc_6A150D: ConcatVar var_258
  loc_6A1511: FLdRfVar var_268
  loc_6A1514: ConcatVar var_278
  loc_6A1518: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A151D: FFreeStr var_E4 = ""
  loc_6A1524: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_268 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_278 = "": var_3D8 = "": var_3F8 = ""
  loc_6A155F: FLdRfVar var_D8
  loc_6A1562: ILdI2 arg_C
  loc_6A1565: FLdPrThis
  loc_6A1566: VCallAd Control_ID_Combo1
  loc_6A1569: FStAdFunc var_D4
  loc_6A156C: FLdPr var_D4
  loc_6A156F: Set from_stack_2 = Me(from_stack_1)
  loc_6A1574: FLdPr var_D8
  loc_6A1577: Me.SetFocus
  loc_6A157C: FFreeAd var_D4 = ""
  loc_6A1583: Branch loc_6A1A29
  loc_6A1586: FLdRfVar var_D8
  loc_6A1589: ILdI2 arg_C
  loc_6A158C: FLdPrThis
  loc_6A158D: VCallAd Control_ID_SSCommand4
  loc_6A1590: FStAdFunc var_D4
  loc_6A1593: FLdPr var_D4
  loc_6A1596: Set from_stack_2 = Me(from_stack_1)
  loc_6A159B: FLdPr var_D8
  loc_6A159E: LateIdLdVar var_104 DispID_-518 -1
  loc_6A15A5: CStrVarTmp
  loc_6A15A6: FStStrNoPop var_E4
  loc_6A15A9: LitStr "--"
  loc_6A15AC: NeStr
  loc_6A15AE: FFree1Str var_E4
  loc_6A15B1: FFreeAd var_D4 = ""
  loc_6A15B8: FFree1Var var_104 = ""
  loc_6A15BB: BranchF loc_6A15C9
  loc_6A15BE: ILdRf arg_C
  loc_6A15C1: Call Combo1_DropDown(from_stack_1v)
  loc_6A15C6: Branch loc_6A1A29
  loc_6A15C9: LitVarI2 var_134, 1
  loc_6A15CE: FLdRfVar var_94
  loc_6A15D1: ILdI2 arg_C
  loc_6A15D4: LitI2_Byte 1
  loc_6A15D6: AddI2
  loc_6A15D7: CVarI2 var_114
  loc_6A15DA: ForVar var_438
  loc_6A15E0: LitI2_Byte 0
  loc_6A15E2: FLdRfVar var_D8
  loc_6A15E5: FLdRfVar var_94
  loc_6A15E8: CI2Var
  loc_6A15E9: FLdPrThis
  loc_6A15EA: VCallAd Control_ID_Combo1
  loc_6A15ED: FStAdFunc var_D4
  loc_6A15F0: FLdPr var_D4
  loc_6A15F3: Set from_stack_2 = Me(from_stack_1)
  loc_6A15F8: FLdPr var_D8
  loc_6A15FB: Me.Enabled = from_stack_1b
  loc_6A1600: FFreeAd var_D4 = ""
  loc_6A1607: LitVar_FALSE
  loc_6A160B: PopAdLdVar
  loc_6A160C: FLdRfVar var_D8
  loc_6A160F: FLdRfVar var_94
  loc_6A1612: CI2Var
  loc_6A1613: FLdPrThis
  loc_6A1614: VCallAd Control_ID_SSCommand4
  loc_6A1617: FStAdFunc var_D4
  loc_6A161A: FLdPr var_D4
  loc_6A161D: Set from_stack_2 = Me(from_stack_1)
  loc_6A1622: FLdPr var_D8
  loc_6A1625: LateIdSt
  loc_6A162A: FFreeAd var_D4 = ""
  loc_6A1631: LitVar_FALSE
  loc_6A1635: PopAdLdVar
  loc_6A1636: FLdRfVar var_D8
  loc_6A1639: FLdRfVar var_94
  loc_6A163C: CI2Var
  loc_6A163D: FLdPrThis
  loc_6A163E: VCallAd Control_ID_SSCommand5
  loc_6A1641: FStAdFunc var_D4
  loc_6A1644: FLdPr var_D4
  loc_6A1647: Set from_stack_2 = Me(from_stack_1)
  loc_6A164C: FLdPr var_D8
  loc_6A164F: LateIdSt
  loc_6A1654: FFreeAd var_D4 = ""
  loc_6A165B: LitVar_FALSE
  loc_6A165F: PopAdLdVar
  loc_6A1660: FLdRfVar var_D8
  loc_6A1663: FLdRfVar var_94
  loc_6A1666: CI2Var
  loc_6A1667: FLdPrThis
  loc_6A1668: VCallAd Control_ID_SSCommand6
  loc_6A166B: FStAdFunc var_D4
  loc_6A166E: FLdPr var_D4
  loc_6A1671: Set from_stack_2 = Me(from_stack_1)
  loc_6A1676: FLdPr var_D8
  loc_6A1679: LateIdSt
  loc_6A167E: FFreeAd var_D4 = ""
  loc_6A1685: FLdRfVar var_94
  loc_6A1688: NextStepVar var_438
  loc_6A168E: LitVar_FALSE
  loc_6A1692: PopAdLdVar
  loc_6A1693: FLdPrThis
  loc_6A1694: VCallAd Control_ID_SSCommand1
  loc_6A1697: FStAdFunc var_D4
  loc_6A169A: FLdPr var_D4
  loc_6A169D: LateIdSt
  loc_6A16A2: FFree1Ad var_D4
  loc_6A16A5: LitVar_FALSE
  loc_6A16A9: PopAdLdVar
  loc_6A16AA: FLdPrThis
  loc_6A16AB: VCallAd Control_ID_SSCommand2
  loc_6A16AE: FStAdFunc var_D4
  loc_6A16B1: FLdPr var_D4
  loc_6A16B4: LateIdSt
  loc_6A16B9: FFree1Ad var_D4
  loc_6A16BC: LitVar_FALSE
  loc_6A16C0: PopAdLdVar
  loc_6A16C1: FLdPrThis
  loc_6A16C2: VCallAd Control_ID_SSCommand3
  loc_6A16C5: FStAdFunc var_D4
  loc_6A16C8: FLdPr var_D4
  loc_6A16CB: LateIdSt
  loc_6A16D0: FFree1Ad var_D4
  loc_6A16D3: LitVarI2 var_134, 1
  loc_6A16D8: FLdRfVar var_94
  loc_6A16DB: LitVarI2 var_114, 16
  loc_6A16E0: ForVar var_458
  loc_6A16E6: FLdRfVar var_94
  loc_6A16E9: ImpAdLdUI1
  loc_6A16ED: CVarUI1
  loc_6A16F1: HardType
  loc_6A16F2: LeVarBool
  loc_6A16F4: BranchF loc_6A17FC
  loc_6A16F7: LitI2_Byte 1
  loc_6A16F9: CUI1I2
  loc_6A16FB: FLdRfVar var_94
  loc_6A16FE: CI4Var
  loc_6A1700: FLdRfVar var_D0
  loc_6A1703: Ary1StUI1
  loc_6A1705: LitVarI2 var_134, 1
  loc_6A170A: FLdRfVar var_A4
  loc_6A170D: LitVarI2 var_114, 16
  loc_6A1712: ForVar var_478
  loc_6A1718: LitVarI2 var_134, 0
  loc_6A171D: FLdRfVar var_B4
  loc_6A1720: LitVarI2 var_114, 2
  loc_6A1725: ForVar var_498
  loc_6A172B: FLdRfVar var_DA
  loc_6A172E: FLdRfVar var_D8
  loc_6A1731: ILdI2 arg_C
  loc_6A1734: FLdPrThis
  loc_6A1735: VCallAd Control_ID_Combo1
  loc_6A1738: FStAdFunc var_D4
  loc_6A173B: FLdPr var_D4
  loc_6A173E: Set from_stack_2 = Me(from_stack_1)
  loc_6A1743: FLdPr var_D8
  loc_6A1746:  = Me.ListIndex
  loc_6A174B: FLdI2 var_DA
  loc_6A174E: FFreeAd var_D4 = ""
  loc_6A1755: BranchF loc_6A1796
  loc_6A1758: FLdRfVar var_94
  loc_6A175B: FLdRfVar var_A4
  loc_6A175E: CI4Var
  loc_6A1760: FLdRfVar var_B4
  loc_6A1763: CI4Var
  loc_6A1765: ImpAdLdRf MemVar_74C1B8
  loc_6A1768: AryLdPr
  loc_6A176B: MemLdUI1 global_0
  loc_6A176F: CVarUI1
  loc_6A1773: HardType
  loc_6A1774: EqVarBool
  loc_6A1776: BranchF loc_6A1793
  loc_6A1779: LitI2_Byte 0
  loc_6A177B: CUI1I2
  loc_6A177D: FLdRfVar var_94
  loc_6A1780: CI4Var
  loc_6A1782: FLdRfVar var_D0
  loc_6A1785: Ary1StUI1
  loc_6A1787: LitVarI2 var_F4, 16
  loc_6A178C: FStVar var_A4
  loc_6A1790: Branch loc_6A17F0
  loc_6A1793: Branch loc_6A17E7
  loc_6A1796: FLdRfVar var_94
  loc_6A1799: FLdRfVar var_A4
  loc_6A179C: CI4Var
  loc_6A179E: FLdRfVar var_B4
  loc_6A17A1: CI4Var
  loc_6A17A3: ImpAdLdRf MemVar_74C1B8
  loc_6A17A6: AryLdPr
  loc_6A17A9: MemLdUI1 global_0
  loc_6A17AD: CVarUI1
  loc_6A17B1: HardType
  loc_6A17B2: EqVar var_104
  loc_6A17B6: FLdRfVar var_94
  loc_6A17B9: CI4Var
  loc_6A17BB: ImpAdLdRf MemVar_74C114
  loc_6A17BE: Ary1LdUI1
  loc_6A17C0: CVarUI1
  loc_6A17C4: AndVar var_124
  loc_6A17C8: CBoolVarNull
  loc_6A17CA: BranchF loc_6A17E7
  loc_6A17CD: LitI2_Byte 0
  loc_6A17CF: CUI1I2
  loc_6A17D1: FLdRfVar var_94
  loc_6A17D4: CI4Var
  loc_6A17D6: FLdRfVar var_D0
  loc_6A17D9: Ary1StUI1
  loc_6A17DB: LitVarI2 var_F4, 16
  loc_6A17E0: FStVar var_A4
  loc_6A17E4: Branch loc_6A17F0
  loc_6A17E7: FLdRfVar var_B4
  loc_6A17EA: NextStepVar var_498
  loc_6A17F0: FLdRfVar var_A4
  loc_6A17F3: NextStepVar var_478
  loc_6A17F9: Branch loc_6A180A
  loc_6A17FC: LitI2_Byte 0
  loc_6A17FE: CUI1I2
  loc_6A1800: FLdRfVar var_94
  loc_6A1803: CI4Var
  loc_6A1805: FLdRfVar var_D0
  loc_6A1808: Ary1StUI1
  loc_6A180A: FLdRfVar var_94
  loc_6A180D: NextStepVar var_458
  loc_6A1813: LitVarI2 var_134, 1
  loc_6A1818: FLdRfVar var_94
  loc_6A181B: ImpAdLdUI1
  loc_6A181F: CVarUI1
  loc_6A1823: ForVar var_4B8
  loc_6A1829: FLdRfVar var_94
  loc_6A182C: CI4Var
  loc_6A182E: FLdRfVar var_D0
  loc_6A1831: Ary1LdUI1
  loc_6A1833: CBoolUI1
  loc_6A1835: BranchF loc_6A18C6
  loc_6A1838: FLdRfVar var_94
  loc_6A183B: CI4Var
  loc_6A183D: ImpAdLdRf MemVar_74C1D8
  loc_6A1840: Ary1LdUI1
  loc_6A1842: CVarUI1
  loc_6A1846: FStVar var_A4
  loc_6A184A: LitVarI2 var_134, 1
  loc_6A184F: FLdRfVar var_B4
  loc_6A1852: ImpAdLdUI1
  loc_6A1856: CVarUI1
  loc_6A185A: ForVar var_4D8
  loc_6A1860: FLdRfVar var_B4
  loc_6A1863: CI4Var
  loc_6A1865: FLdRfVar var_D0
  loc_6A1868: Ary1LdUI1
  loc_6A186A: CVarUI1
  loc_6A186E: FLdRfVar var_B4
  loc_6A1871: FLdRfVar var_94
  loc_6A1874: NeVar var_104
  loc_6A1878: AndVar var_124
  loc_6A187C: FLdRfVar var_B4
  loc_6A187F: CI4Var
  loc_6A1881: ImpAdLdRf MemVar_74C1D8
  loc_6A1884: Ary1LdUI1
  loc_6A1886: CVarUI1
  loc_6A188A: HardType
  loc_6A188B: FLdRfVar var_A4
  loc_6A188E: EqVar var_144
  loc_6A1892: AndVar var_164
  loc_6A1896: CBoolVarNull
  loc_6A1898: BranchF loc_6A189E
  loc_6A189B: Branch loc_6A18A7
  loc_6A189E: FLdRfVar var_B4
  loc_6A18A1: NextStepVar var_4D8
  loc_6A18A7: FLdRfVar var_B4
  loc_6A18AA: ImpAdLdUI1
  loc_6A18AE: CVarUI1
  loc_6A18B2: HardType
  loc_6A18B3: GtVarBool
  loc_6A18B5: BranchF loc_6A18C6
  loc_6A18B8: LitI2_Byte 0
  loc_6A18BA: CUI1I2
  loc_6A18BC: FLdRfVar var_94
  loc_6A18BF: CI4Var
  loc_6A18C1: FLdRfVar var_D0
  loc_6A18C4: Ary1StUI1
  loc_6A18C6: FLdRfVar var_94
  loc_6A18C9: NextStepVar var_4B8
  loc_6A18CF: LitVarI2 var_134, 1
  loc_6A18D4: FLdRfVar var_94
  loc_6A18D7: LitVarI2 var_114, 16
  loc_6A18DC: ForVar var_4F8
  loc_6A18E2: LitI2_Byte &HFF
  loc_6A18E4: FLdRfVar var_D8
  loc_6A18E7: FLdRfVar var_94
  loc_6A18EA: CI2Var
  loc_6A18EB: FLdPrThis
  loc_6A18EC: VCallAd Control_ID_Check1
  loc_6A18EF: FStAdFunc var_D4
  loc_6A18F2: FLdPr var_D4
  loc_6A18F5: Set from_stack_2 = Me(from_stack_1)
  loc_6A18FA: FLdPr var_D8
  loc_6A18FD: Me.Visible = from_stack_1b
  loc_6A1902: FFreeAd var_D4 = ""
  loc_6A1909: FLdRfVar var_94
  loc_6A190C: CI4Var
  loc_6A190E: FLdRfVar var_D0
  loc_6A1911: Ary1LdUI1
  loc_6A1913: CBoolUI1
  loc_6A1915: BranchF loc_6A1969
  loc_6A1918: LitI2_Byte 0
  loc_6A191A: FLdRfVar var_D8
  loc_6A191D: FLdRfVar var_94
  loc_6A1920: CI2Var
  loc_6A1921: FLdPrThis
  loc_6A1922: VCallAd Control_ID_Check1
  loc_6A1925: FStAdFunc var_D4
  loc_6A1928: FLdPr var_D4
  loc_6A192B: Set from_stack_2 = Me(from_stack_1)
  loc_6A1930: FLdPr var_D8
  loc_6A1933: Me.Value = from_stack_1
  loc_6A1938: FFreeAd var_D4 = ""
  loc_6A193F: LitI2_Byte &HFF
  loc_6A1941: FLdRfVar var_D8
  loc_6A1944: FLdRfVar var_94
  loc_6A1947: CI2Var
  loc_6A1948: FLdPrThis
  loc_6A1949: VCallAd Control_ID_Check1
  loc_6A194C: FStAdFunc var_D4
  loc_6A194F: FLdPr var_D4
  loc_6A1952: Set from_stack_2 = Me(from_stack_1)
  loc_6A1957: FLdPr var_D8
  loc_6A195A: Me.Enabled = from_stack_1b
  loc_6A195F: FFreeAd var_D4 = ""
  loc_6A1966: Branch loc_6A19B7
  loc_6A1969: LitI2_Byte 2
  loc_6A196B: FLdRfVar var_D8
  loc_6A196E: FLdRfVar var_94
  loc_6A1971: CI2Var
  loc_6A1972: FLdPrThis
  loc_6A1973: VCallAd Control_ID_Check1
  loc_6A1976: FStAdFunc var_D4
  loc_6A1979: FLdPr var_D4
  loc_6A197C: Set from_stack_2 = Me(from_stack_1)
  loc_6A1981: FLdPr var_D8
  loc_6A1984: Me.Value = from_stack_1
  loc_6A1989: FFreeAd var_D4 = ""
  loc_6A1990: LitI2_Byte 0
  loc_6A1992: FLdRfVar var_D8
  loc_6A1995: FLdRfVar var_94
  loc_6A1998: CI2Var
  loc_6A1999: FLdPrThis
  loc_6A199A: VCallAd Control_ID_Check1
  loc_6A199D: FStAdFunc var_D4
  loc_6A19A0: FLdPr var_D4
  loc_6A19A3: Set from_stack_2 = Me(from_stack_1)
  loc_6A19A8: FLdPr var_D8
  loc_6A19AB: Me.Enabled = from_stack_1b
  loc_6A19B0: FFreeAd var_D4 = ""
  loc_6A19B7: FLdRfVar var_94
  loc_6A19BA: NextStepVar var_4F8
  loc_6A19C0: LitI2_Byte &HFF
  loc_6A19C2: FLdPrThis
  loc_6A19C3: VCallAd Control_ID_Frame1
  loc_6A19C6: FStAdFunc var_D4
  loc_6A19C9: FLdPr var_D4
  loc_6A19CC: Me.Visible = from_stack_1b
  loc_6A19D1: FFree1Ad var_D4
  loc_6A19D4: LitVar_TRUE var_F4
  loc_6A19D7: PopAdLdVar
  loc_6A19D8: FLdPrThis
  loc_6A19D9: VCallAd Control_ID_SSCommand7
  loc_6A19DC: FStAdFunc var_D4
  loc_6A19DF: FLdPr var_D4
  loc_6A19E2: LateIdSt
  loc_6A19E7: FFree1Ad var_D4
  loc_6A19EA: LitVar_TRUE var_F4
  loc_6A19ED: PopAdLdVar
  loc_6A19EE: FLdPrThis
  loc_6A19EF: VCallAd Control_ID_SSCommand8
  loc_6A19F2: FStAdFunc var_D4
  loc_6A19F5: FLdPr var_D4
  loc_6A19F8: LateIdSt
  loc_6A19FD: FFree1Ad var_D4
  loc_6A1A00: LitI2_Byte &HFF
  loc_6A1A02: FLdPrThis
  loc_6A1A03: VCallAd Control_ID_Label4
  loc_6A1A06: FStAdFunc var_D4
  loc_6A1A09: FLdPr var_D4
  loc_6A1A0C: Me.Visible = from_stack_1b
  loc_6A1A11: FFree1Ad var_D4
  loc_6A1A14: FLdPrThis
  loc_6A1A15: VCallAd Control_ID_SSCommand7
  loc_6A1A18: FStAdFunc var_D4
  loc_6A1A1B: FLdPr var_D4
  loc_6A1A1E: LateIdCall
  loc_6A1A26: FFree1Ad var_D4
  loc_6A1A29: ExitProcHresult
End Function

Private Function SSCommand5_UnknownEvent_0(arg_C) '5D003C
  'Data Table: 436838
  loc_5D0024: FLdPr Me
  loc_5D0027: MemLdUI1 global_52
  loc_5D002B: CBoolUI1
  loc_5D002D: BranchF loc_5D0038
  loc_5D0030: ILdRf arg_C
  loc_5D0033: from_stack_2v = SSCommand4_UnknownEvent_0(from_stack_1v)
  loc_5D0038: ExitProcHresult
End Function

Private Function SSCommand6_UnknownEvent_0(arg_C) '5D0084
  'Data Table: 436838
  loc_5D006C: FLdPr Me
  loc_5D006F: MemLdUI1 global_52
  loc_5D0073: CBoolUI1
  loc_5D0075: BranchF loc_5D0080
  loc_5D0078: ILdRf arg_C
  loc_5D007B: from_stack_2v = SSCommand4_UnknownEvent_0(from_stack_1v)
  loc_5D0080: ExitProcHresult
End Function

Private Sub SSCommand1_UnknownEvent_8 '5DA07C
  'Data Table: 436838
  loc_5DA044: FLdPrThis
  loc_5DA045: VCallAd Control_ID_SSCommand2
  loc_5DA048: FStAdFunc var_88
  loc_5DA04B: FLdPr var_88
  loc_5DA04E: LateIdCall
  loc_5DA056: FFree1Ad var_88
  loc_5DA059: ImpAdLdRf MemVar_74C8EC
  loc_5DA05C: NewIfNullPr fTanquesDisponibles
  loc_5DA05F: fTanquesDisponibles.Hide
  loc_5DA064: LitVar_Missing var_A8
  loc_5DA067: PopAdLdVar
  loc_5DA068: LitVarI2 var_98, 1
  loc_5DA06D: PopAdLdVar
  loc_5DA06E: ImpAdLdRf MemVar_74C900
  loc_5DA071: NewIfNullPr fCapacidadTanque
  loc_5DA074: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5DA079: ExitProcHresult
  loc_5DA07A: MemLdFPR4 global_-16384
End Sub

Private Sub SSCommand2_UnknownEvent_8 '6AEE5C
  'Data Table: 436838
  loc_6AE70C: FLdPrThis
  loc_6AE70D: VCallAd Control_ID_SSCommand2
  loc_6AE710: FStAdFunc var_B4
  loc_6AE713: FLdPr var_B4
  loc_6AE716: LateIdCall
  loc_6AE71E: FFree1Ad var_B4
  loc_6AE721: ImpAdLdRf MemVar_74C8EC
  loc_6AE724: NewIfNullPr fTanquesDisponibles
  loc_6AE727: fTanquesDisponibles.Hide
  loc_6AE72C: LitVarI2 var_E4, 1
  loc_6AE731: FLdRfVar var_94
  loc_6AE734: LitVarI2 var_D4, 16
  loc_6AE739: ForVar var_104
  loc_6AE73F: FLdRfVar var_108
  loc_6AE742: FLdRfVar var_94
  loc_6AE745: CI2Var
  loc_6AE746: ImpAdLdRf MemVar_74C914
  loc_6AE749: NewIfNullPr fConexion1
  loc_6AE74C: VCallAd Control_ID_Combo1
  loc_6AE74F: FStAdFunc var_B4
  loc_6AE752: FLdPr var_B4
  loc_6AE755: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6AE75A: FLdPr var_108
  loc_6AE75D: Me.Clear
  loc_6AE762: FFreeAd var_B4 = ""
  loc_6AE769: FLdRfVar var_108
  loc_6AE76C: FLdRfVar var_94
  loc_6AE76F: CI2Var
  loc_6AE770: ImpAdLdRf MemVar_74C928
  loc_6AE773: NewIfNullPr fConexion2
  loc_6AE776: VCallAd Control_ID_Combo1
  loc_6AE779: FStAdFunc var_B4
  loc_6AE77C: FLdPr var_B4
  loc_6AE77F: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6AE784: FLdPr var_108
  loc_6AE787: Me.Clear
  loc_6AE78C: FFreeAd var_B4 = ""
  loc_6AE793: FLdRfVar var_108
  loc_6AE796: FLdRfVar var_94
  loc_6AE799: CI2Var
  loc_6AE79A: ImpAdLdRf MemVar_74C93C
  loc_6AE79D: NewIfNullPr fConexion3
  loc_6AE7A0: VCallAd Control_ID_Combo1
  loc_6AE7A3: FStAdFunc var_B4
  loc_6AE7A6: FLdPr var_B4
  loc_6AE7A9: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6AE7AE: FLdPr var_108
  loc_6AE7B1: Me.Clear
  loc_6AE7B6: FFreeAd var_B4 = ""
  loc_6AE7BD: FLdRfVar var_108
  loc_6AE7C0: FLdRfVar var_94
  loc_6AE7C3: CI2Var
  loc_6AE7C4: ImpAdLdRf MemVar_74C950
  loc_6AE7C7: NewIfNullPr fConexion4
  loc_6AE7CA: VCallAd Control_ID_Combo1
  loc_6AE7CD: FStAdFunc var_B4
  loc_6AE7D0: FLdPr var_B4
  loc_6AE7D3: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6AE7D8: FLdPr var_108
  loc_6AE7DB: Me.Clear
  loc_6AE7E0: FFreeAd var_B4 = ""
  loc_6AE7E7: FLdRfVar var_94
  loc_6AE7EA: NextStepVar var_104
  loc_6AE7F0: ImpAdLdRf MemVar_74C23C
  loc_6AE7F3: PopTmpLdAdStr var_10C
  loc_6AE7F6: Erase
  loc_6AE7F7: LitI4 1
  loc_6AE7FC: LitI4 0
  loc_6AE801: ImpAdLdRf MemVar_74C1B8
  loc_6AE804: AryLdPr
  loc_6AE807: MemLdUI1 global_0
  loc_6AE80B: CBoolUI1
  loc_6AE80D: BranchF loc_6AEC63
  loc_6AE810: LitVarI2 var_E4, 1
  loc_6AE815: FLdRfVar var_94
  loc_6AE818: LitVarI2 var_D4, 16
  loc_6AE81D: ForVar var_12C
  loc_6AE823: LitVarI2 var_E4, 1
  loc_6AE828: FLdRfVar var_A4
  loc_6AE82B: ImpAdLdUI1
  loc_6AE82F: CVarUI1
  loc_6AE833: ForVar var_14C
  loc_6AE839: FLdRfVar var_A4
  loc_6AE83C: CI4Var
  loc_6AE83E: ImpAdLdRf MemVar_74C114
  loc_6AE841: Ary1LdUI1
  loc_6AE843: CI2UI1
  loc_6AE845: LitI2_Byte 0
  loc_6AE847: EqI2
  loc_6AE848: BranchF loc_6AE9C5
  loc_6AE84B: LitVar_Missing var_C4
  loc_6AE84E: PopAdLdVar
  loc_6AE84F: LitStr "  "
  loc_6AE852: FLdRfVar var_A4
  loc_6AE855: ImpAdCallI2 Str$()
  loc_6AE85A: FStStrNoPop var_150
  loc_6AE85D: ImpAdCallI2 Trim$()
  loc_6AE862: FStStrNoPop var_154
  loc_6AE865: ConcatStr
  loc_6AE866: FStStrNoPop var_158
  loc_6AE869: FLdRfVar var_108
  loc_6AE86C: FLdRfVar var_94
  loc_6AE86F: CI2Var
  loc_6AE870: ImpAdLdRf MemVar_74C914
  loc_6AE873: NewIfNullPr fConexion1
  loc_6AE876: VCallAd Control_ID_Combo1
  loc_6AE879: FStAdFunc var_B4
  loc_6AE87C: FLdPr var_B4
  loc_6AE87F: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6AE884: FLdPr var_108
  loc_6AE887: Me.AddItem from_stack_1, from_stack_2
  loc_6AE88C: FFreeStr var_150 = "": var_154 = ""
  loc_6AE895: FFreeAd var_B4 = ""
  loc_6AE89C: LitVar_Missing var_C4
  loc_6AE89F: PopAdLdVar
  loc_6AE8A0: LitStr "  "
  loc_6AE8A3: FLdRfVar var_A4
  loc_6AE8A6: ImpAdCallI2 Str$()
  loc_6AE8AB: FStStrNoPop var_150
  loc_6AE8AE: ImpAdCallI2 Trim$()
  loc_6AE8B3: FStStrNoPop var_154
  loc_6AE8B6: ConcatStr
  loc_6AE8B7: FStStrNoPop var_158
  loc_6AE8BA: FLdRfVar var_108
  loc_6AE8BD: FLdRfVar var_94
  loc_6AE8C0: CI2Var
  loc_6AE8C1: ImpAdLdRf MemVar_74C928
  loc_6AE8C4: NewIfNullPr fConexion2
  loc_6AE8C7: VCallAd Control_ID_Combo1
  loc_6AE8CA: FStAdFunc var_B4
  loc_6AE8CD: FLdPr var_B4
  loc_6AE8D0: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6AE8D5: FLdPr var_108
  loc_6AE8D8: Me.AddItem from_stack_1, from_stack_2
  loc_6AE8DD: FFreeStr var_150 = "": var_154 = ""
  loc_6AE8E6: FFreeAd var_B4 = ""
  loc_6AE8ED: LitVar_Missing var_C4
  loc_6AE8F0: PopAdLdVar
  loc_6AE8F1: LitStr "  "
  loc_6AE8F4: FLdRfVar var_A4
  loc_6AE8F7: ImpAdCallI2 Str$()
  loc_6AE8FC: FStStrNoPop var_150
  loc_6AE8FF: ImpAdCallI2 Trim$()
  loc_6AE904: FStStrNoPop var_154
  loc_6AE907: ConcatStr
  loc_6AE908: FStStrNoPop var_158
  loc_6AE90B: FLdRfVar var_108
  loc_6AE90E: FLdRfVar var_94
  loc_6AE911: CI2Var
  loc_6AE912: ImpAdLdRf MemVar_74C93C
  loc_6AE915: NewIfNullPr fConexion3
  loc_6AE918: VCallAd Control_ID_Combo1
  loc_6AE91B: FStAdFunc var_B4
  loc_6AE91E: FLdPr var_B4
  loc_6AE921: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6AE926: FLdPr var_108
  loc_6AE929: Me.AddItem from_stack_1, from_stack_2
  loc_6AE92E: FFreeStr var_150 = "": var_154 = ""
  loc_6AE937: FFreeAd var_B4 = ""
  loc_6AE93E: LitVar_Missing var_C4
  loc_6AE941: PopAdLdVar
  loc_6AE942: LitStr "  "
  loc_6AE945: FLdRfVar var_A4
  loc_6AE948: ImpAdCallI2 Str$()
  loc_6AE94D: FStStrNoPop var_150
  loc_6AE950: ImpAdCallI2 Trim$()
  loc_6AE955: FStStrNoPop var_154
  loc_6AE958: ConcatStr
  loc_6AE959: FStStrNoPop var_158
  loc_6AE95C: FLdRfVar var_108
  loc_6AE95F: FLdRfVar var_94
  loc_6AE962: CI2Var
  loc_6AE963: ImpAdLdRf MemVar_74C950
  loc_6AE966: NewIfNullPr fConexion4
  loc_6AE969: VCallAd Control_ID_Combo1
  loc_6AE96C: FStAdFunc var_B4
  loc_6AE96F: FLdPr var_B4
  loc_6AE972: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6AE977: FLdPr var_108
  loc_6AE97A: Me.AddItem from_stack_1, from_stack_2
  loc_6AE97F: FFreeStr var_150 = "": var_154 = ""
  loc_6AE988: FFreeAd var_B4 = ""
  loc_6AE98F: FLdRfVar var_94
  loc_6AE992: LitVarI2 var_C4, 1
  loc_6AE997: HardType
  loc_6AE998: EqVarBool
  loc_6AE99A: BranchF loc_6AE9C5
  loc_6AE99D: FLdRfVar var_A4
  loc_6AE9A0: CUI1Var
  loc_6AE9A2: FLdUI1
  loc_6AE9A6: CI4UI1
  loc_6AE9A7: LitI4 0
  loc_6AE9AC: ImpAdLdRf MemVar_74C23C
  loc_6AE9AF: AryLdPr
  loc_6AE9B2: MemStUI1
  loc_6AE9B6: FLdUI1
  loc_6AE9BA: CI2UI1
  loc_6AE9BC: LitI2_Byte 1
  loc_6AE9BE: AddI2
  loc_6AE9BF: CUI1I2
  loc_6AE9C1: FStUI1 var_A6
  loc_6AE9C5: FLdRfVar var_A4
  loc_6AE9C8: NextStepVar var_14C
  loc_6AE9CE: LitVarI2 var_E4, 1
  loc_6AE9D3: FLdRfVar var_A4
  loc_6AE9D6: LitVarI2 var_D4, 16
  loc_6AE9DB: ForVar var_188
  loc_6AE9E1: FLdRfVar var_A4
  loc_6AE9E4: CI4Var
  loc_6AE9E6: LitI4 0
  loc_6AE9EB: ImpAdLdRf MemVar_74C1B8
  loc_6AE9EE: AryLdPr
  loc_6AE9F1: MemLdUI1 global_0
  loc_6AE9F5: CBoolUI1
  loc_6AE9F7: BranchF loc_6AEC4E
  loc_6AE9FA: FLdRfVar var_A4
  loc_6AE9FD: CI4Var
  loc_6AE9FF: LitI4 0
  loc_6AEA04: ImpAdLdRf MemVar_74C1B8
  loc_6AEA07: AryLdPr
  loc_6AEA0A: MemLdUI1 global_0
  loc_6AEA0E: CI4UI1
  loc_6AEA0F: ImpAdLdRf MemVar_74C114
  loc_6AEA12: Ary1LdUI1
  loc_6AEA14: CBoolUI1
  loc_6AEA16: BranchF loc_6AEA22
  loc_6AEA19: LitStr "  Paralelo"
  loc_6AEA1C: FStStrCopy var_AC
  loc_6AEA1F: Branch loc_6AEA28
  loc_6AEA22: LitStr "  Manifold"
  loc_6AEA25: FStStrCopy var_AC
  loc_6AEA28: ILdRf var_AC
  loc_6AEA2B: LitStr "    "
  loc_6AEA2E: ConcatStr
  loc_6AEA2F: FStStrNoPop var_154
  loc_6AEA32: FLdRfVar var_A4
  loc_6AEA35: CI4Var
  loc_6AEA37: LitI4 0
  loc_6AEA3C: ImpAdLdRf MemVar_74C1B8
  loc_6AEA3F: AryLdRf
  loc_6AEA42: CVarRef
  loc_6AEA47: ImpAdCallI2 Str$()
  loc_6AEA4C: FStStrNoPop var_150
  loc_6AEA4F: ImpAdCallI2 Trim$()
  loc_6AEA54: FStStrNoPop var_158
  loc_6AEA57: ConcatStr
  loc_6AEA58: FStStr var_AC
  loc_6AEA5B: FFreeStr var_150 = "": var_154 = ""
  loc_6AEA64: ILdRf var_AC
  loc_6AEA67: LitStr "-"
  loc_6AEA6A: ConcatStr
  loc_6AEA6B: FStStrNoPop var_154
  loc_6AEA6E: FLdRfVar var_A4
  loc_6AEA71: CI4Var
  loc_6AEA73: LitI4 1
  loc_6AEA78: ImpAdLdRf MemVar_74C1B8
  loc_6AEA7B: AryLdRf
  loc_6AEA7E: CVarRef
  loc_6AEA83: ImpAdCallI2 Str$()
  loc_6AEA88: FStStrNoPop var_150
  loc_6AEA8B: ImpAdCallI2 Trim$()
  loc_6AEA90: FStStrNoPop var_158
  loc_6AEA93: ConcatStr
  loc_6AEA94: FStStr var_AC
  loc_6AEA97: FFreeStr var_150 = "": var_154 = ""
  loc_6AEAA0: FLdRfVar var_A4
  loc_6AEAA3: CI4Var
  loc_6AEAA5: LitI4 2
  loc_6AEAAA: ImpAdLdRf MemVar_74C1B8
  loc_6AEAAD: AryLdPr
  loc_6AEAB0: MemLdUI1 global_0
  loc_6AEAB4: CBoolUI1
  loc_6AEAB6: BranchF loc_6AEAF5
  loc_6AEAB9: ILdRf var_AC
  loc_6AEABC: LitStr "-"
  loc_6AEABF: ConcatStr
  loc_6AEAC0: FStStrNoPop var_154
  loc_6AEAC3: FLdRfVar var_A4
  loc_6AEAC6: CI4Var
  loc_6AEAC8: LitI4 2
  loc_6AEACD: ImpAdLdRf MemVar_74C1B8
  loc_6AEAD0: AryLdRf
  loc_6AEAD3: CVarRef
  loc_6AEAD8: ImpAdCallI2 Str$()
  loc_6AEADD: FStStrNoPop var_150
  loc_6AEAE0: ImpAdCallI2 Trim$()
  loc_6AEAE5: FStStrNoPop var_158
  loc_6AEAE8: ConcatStr
  loc_6AEAE9: FStStr var_AC
  loc_6AEAEC: FFreeStr var_150 = "": var_154 = ""
  loc_6AEAF5: LitVar_Missing var_C4
  loc_6AEAF8: PopAdLdVar
  loc_6AEAF9: ILdRf var_AC
  loc_6AEAFC: FLdRfVar var_108
  loc_6AEAFF: FLdRfVar var_94
  loc_6AEB02: CI2Var
  loc_6AEB03: ImpAdLdRf MemVar_74C914
  loc_6AEB06: NewIfNullPr fConexion1
  loc_6AEB09: VCallAd Control_ID_Combo1
  loc_6AEB0C: FStAdFunc var_B4
  loc_6AEB0F: FLdPr var_B4
  loc_6AEB12: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6AEB17: FLdPr var_108
  loc_6AEB1A: Me.AddItem from_stack_1, from_stack_2
  loc_6AEB1F: FFreeAd var_B4 = ""
  loc_6AEB26: LitVar_Missing var_C4
  loc_6AEB29: PopAdLdVar
  loc_6AEB2A: ILdRf var_AC
  loc_6AEB2D: FLdRfVar var_108
  loc_6AEB30: FLdRfVar var_94
  loc_6AEB33: CI2Var
  loc_6AEB34: ImpAdLdRf MemVar_74C928
  loc_6AEB37: NewIfNullPr fConexion2
  loc_6AEB3A: VCallAd Control_ID_Combo1
  loc_6AEB3D: FStAdFunc var_B4
  loc_6AEB40: FLdPr var_B4
  loc_6AEB43: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6AEB48: FLdPr var_108
  loc_6AEB4B: Me.AddItem from_stack_1, from_stack_2
  loc_6AEB50: FFreeAd var_B4 = ""
  loc_6AEB57: LitVar_Missing var_C4
  loc_6AEB5A: PopAdLdVar
  loc_6AEB5B: ILdRf var_AC
  loc_6AEB5E: FLdRfVar var_108
  loc_6AEB61: FLdRfVar var_94
  loc_6AEB64: CI2Var
  loc_6AEB65: ImpAdLdRf MemVar_74C93C
  loc_6AEB68: NewIfNullPr fConexion3
  loc_6AEB6B: VCallAd Control_ID_Combo1
  loc_6AEB6E: FStAdFunc var_B4
  loc_6AEB71: FLdPr var_B4
  loc_6AEB74: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6AEB79: FLdPr var_108
  loc_6AEB7C: Me.AddItem from_stack_1, from_stack_2
  loc_6AEB81: FFreeAd var_B4 = ""
  loc_6AEB88: LitVar_Missing var_C4
  loc_6AEB8B: PopAdLdVar
  loc_6AEB8C: ILdRf var_AC
  loc_6AEB8F: FLdRfVar var_108
  loc_6AEB92: FLdRfVar var_94
  loc_6AEB95: CI2Var
  loc_6AEB96: ImpAdLdRf MemVar_74C950
  loc_6AEB99: NewIfNullPr fConexion4
  loc_6AEB9C: VCallAd Control_ID_Combo1
  loc_6AEB9F: FStAdFunc var_B4
  loc_6AEBA2: FLdPr var_B4
  loc_6AEBA5: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6AEBAA: FLdPr var_108
  loc_6AEBAD: Me.AddItem from_stack_1, from_stack_2
  loc_6AEBB2: FFreeAd var_B4 = ""
  loc_6AEBB9: FLdRfVar var_94
  loc_6AEBBC: LitVarI2 var_C4, 1
  loc_6AEBC1: HardType
  loc_6AEBC2: EqVarBool
  loc_6AEBC4: BranchF loc_6AEC4E
  loc_6AEBC7: FLdRfVar var_A4
  loc_6AEBCA: CI4Var
  loc_6AEBCC: LitI4 0
  loc_6AEBD1: ImpAdLdRf MemVar_74C1B8
  loc_6AEBD4: AryLdPr
  loc_6AEBD7: MemLdUI1 global_0
  loc_6AEBDB: FLdUI1
  loc_6AEBDF: CI4UI1
  loc_6AEBE0: LitI4 0
  loc_6AEBE5: ImpAdLdRf MemVar_74C23C
  loc_6AEBE8: AryLdPr
  loc_6AEBEB: MemStUI1
  loc_6AEBEF: FLdRfVar var_A4
  loc_6AEBF2: CI4Var
  loc_6AEBF4: LitI4 1
  loc_6AEBF9: ImpAdLdRf MemVar_74C1B8
  loc_6AEBFC: AryLdPr
  loc_6AEBFF: MemLdUI1 global_0
  loc_6AEC03: FLdUI1
  loc_6AEC07: CI4UI1
  loc_6AEC08: LitI4 1
  loc_6AEC0D: ImpAdLdRf MemVar_74C23C
  loc_6AEC10: AryLdPr
  loc_6AEC13: MemStUI1
  loc_6AEC17: FLdRfVar var_A4
  loc_6AEC1A: CI4Var
  loc_6AEC1C: LitI4 2
  loc_6AEC21: ImpAdLdRf MemVar_74C1B8
  loc_6AEC24: AryLdPr
  loc_6AEC27: MemLdUI1 global_0
  loc_6AEC2B: FLdUI1
  loc_6AEC2F: CI4UI1
  loc_6AEC30: LitI4 2
  loc_6AEC35: ImpAdLdRf MemVar_74C23C
  loc_6AEC38: AryLdPr
  loc_6AEC3B: MemStUI1
  loc_6AEC3F: FLdUI1
  loc_6AEC43: CI2UI1
  loc_6AEC45: LitI2_Byte 1
  loc_6AEC47: AddI2
  loc_6AEC48: CUI1I2
  loc_6AEC4A: FStUI1 var_A6
  loc_6AEC4E: FLdRfVar var_A4
  loc_6AEC51: NextStepVar var_188
  loc_6AEC57: FLdRfVar var_94
  loc_6AEC5A: NextStepVar var_12C
  loc_6AEC60: Branch loc_6AEE18
  loc_6AEC63: LitVarI2 var_E4, 1
  loc_6AEC68: FLdRfVar var_94
  loc_6AEC6B: LitVarI2 var_D4, 16
  loc_6AEC70: ForVar var_1A8
  loc_6AEC76: LitVarI2 var_E4, 1
  loc_6AEC7B: FLdRfVar var_A4
  loc_6AEC7E: ImpAdLdUI1
  loc_6AEC82: CVarUI1
  loc_6AEC86: ForVar var_1C8
  loc_6AEC8C: LitVar_Missing var_C4
  loc_6AEC8F: PopAdLdVar
  loc_6AEC90: LitStr "    "
  loc_6AEC93: FLdRfVar var_A4
  loc_6AEC96: ImpAdCallI2 Str$()
  loc_6AEC9B: FStStrNoPop var_150
  loc_6AEC9E: ImpAdCallI2 Trim$()
  loc_6AECA3: FStStrNoPop var_154
  loc_6AECA6: ConcatStr
  loc_6AECA7: FStStrNoPop var_158
  loc_6AECAA: FLdRfVar var_108
  loc_6AECAD: FLdRfVar var_94
  loc_6AECB0: CI2Var
  loc_6AECB1: ImpAdLdRf MemVar_74C914
  loc_6AECB4: NewIfNullPr fConexion1
  loc_6AECB7: VCallAd Control_ID_Combo1
  loc_6AECBA: FStAdFunc var_B4
  loc_6AECBD: FLdPr var_B4
  loc_6AECC0: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6AECC5: FLdPr var_108
  loc_6AECC8: Me.AddItem from_stack_1, from_stack_2
  loc_6AECCD: FFreeStr var_150 = "": var_154 = ""
  loc_6AECD6: FFreeAd var_B4 = ""
  loc_6AECDD: LitVar_Missing var_C4
  loc_6AECE0: PopAdLdVar
  loc_6AECE1: LitStr "    "
  loc_6AECE4: FLdRfVar var_A4
  loc_6AECE7: ImpAdCallI2 Str$()
  loc_6AECEC: FStStrNoPop var_150
  loc_6AECEF: ImpAdCallI2 Trim$()
  loc_6AECF4: FStStrNoPop var_154
  loc_6AECF7: ConcatStr
  loc_6AECF8: FStStrNoPop var_158
  loc_6AECFB: FLdRfVar var_108
  loc_6AECFE: FLdRfVar var_94
  loc_6AED01: CI2Var
  loc_6AED02: ImpAdLdRf MemVar_74C928
  loc_6AED05: NewIfNullPr fConexion2
  loc_6AED08: VCallAd Control_ID_Combo1
  loc_6AED0B: FStAdFunc var_B4
  loc_6AED0E: FLdPr var_B4
  loc_6AED11: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6AED16: FLdPr var_108
  loc_6AED19: Me.AddItem from_stack_1, from_stack_2
  loc_6AED1E: FFreeStr var_150 = "": var_154 = ""
  loc_6AED27: FFreeAd var_B4 = ""
  loc_6AED2E: LitVar_Missing var_C4
  loc_6AED31: PopAdLdVar
  loc_6AED32: LitStr "    "
  loc_6AED35: FLdRfVar var_A4
  loc_6AED38: ImpAdCallI2 Str$()
  loc_6AED3D: FStStrNoPop var_150
  loc_6AED40: ImpAdCallI2 Trim$()
  loc_6AED45: FStStrNoPop var_154
  loc_6AED48: ConcatStr
  loc_6AED49: FStStrNoPop var_158
  loc_6AED4C: FLdRfVar var_108
  loc_6AED4F: FLdRfVar var_94
  loc_6AED52: CI2Var
  loc_6AED53: ImpAdLdRf MemVar_74C93C
  loc_6AED56: NewIfNullPr fConexion3
  loc_6AED59: VCallAd Control_ID_Combo1
  loc_6AED5C: FStAdFunc var_B4
  loc_6AED5F: FLdPr var_B4
  loc_6AED62: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6AED67: FLdPr var_108
  loc_6AED6A: Me.AddItem from_stack_1, from_stack_2
  loc_6AED6F: FFreeStr var_150 = "": var_154 = ""
  loc_6AED78: FFreeAd var_B4 = ""
  loc_6AED7F: LitVar_Missing var_C4
  loc_6AED82: PopAdLdVar
  loc_6AED83: LitStr "    "
  loc_6AED86: FLdRfVar var_A4
  loc_6AED89: ImpAdCallI2 Str$()
  loc_6AED8E: FStStrNoPop var_150
  loc_6AED91: ImpAdCallI2 Trim$()
  loc_6AED96: FStStrNoPop var_154
  loc_6AED99: ConcatStr
  loc_6AED9A: FStStrNoPop var_158
  loc_6AED9D: FLdRfVar var_108
  loc_6AEDA0: FLdRfVar var_94
  loc_6AEDA3: CI2Var
  loc_6AEDA4: ImpAdLdRf MemVar_74C950
  loc_6AEDA7: NewIfNullPr fConexion4
  loc_6AEDAA: VCallAd Control_ID_Combo1
  loc_6AEDAD: FStAdFunc var_B4
  loc_6AEDB0: FLdPr var_B4
  loc_6AEDB3: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6AEDB8: FLdPr var_108
  loc_6AEDBB: Me.AddItem from_stack_1, from_stack_2
  loc_6AEDC0: FFreeStr var_150 = "": var_154 = ""
  loc_6AEDC9: FFreeAd var_B4 = ""
  loc_6AEDD0: FLdRfVar var_94
  loc_6AEDD3: LitVarI2 var_C4, 1
  loc_6AEDD8: HardType
  loc_6AEDD9: EqVarBool
  loc_6AEDDB: BranchF loc_6AEE06
  loc_6AEDDE: FLdRfVar var_A4
  loc_6AEDE1: CUI1Var
  loc_6AEDE3: FLdUI1
  loc_6AEDE7: CI4UI1
  loc_6AEDE8: LitI4 0
  loc_6AEDED: ImpAdLdRf MemVar_74C23C
  loc_6AEDF0: AryLdPr
  loc_6AEDF3: MemStUI1
  loc_6AEDF7: FLdUI1
  loc_6AEDFB: CI2UI1
  loc_6AEDFD: LitI2_Byte 1
  loc_6AEDFF: AddI2
  loc_6AEE00: CUI1I2
  loc_6AEE02: FStUI1 var_A6
  loc_6AEE06: FLdRfVar var_A4
  loc_6AEE09: NextStepVar var_1C8
  loc_6AEE0F: FLdRfVar var_94
  loc_6AEE12: NextStepVar var_1A8
  loc_6AEE18: FLdRfVar var_168
  loc_6AEE1B: from_stack_1v = CargarSucciones()
  loc_6AEE20: FFree1Var var_168 = ""
  loc_6AEE23: ImpAdCallI2 Proc_53_5_5DE184()
  loc_6AEE28: NotI4
  loc_6AEE29: BranchF loc_6AEE44
  loc_6AEE2C: LitVar_Missing var_D4
  loc_6AEE2F: PopAdLdVar
  loc_6AEE30: LitVarI2 var_C4, 1
  loc_6AEE35: PopAdLdVar
  loc_6AEE36: ImpAdLdRf MemVar_74C914
  loc_6AEE39: NewIfNullPr fConexion1
  loc_6AEE3C: fConexion1.Show from_stack_1, from_stack_2
  loc_6AEE41: Branch loc_6AEE59
  loc_6AEE44: LitVar_Missing var_D4
  loc_6AEE47: PopAdLdVar
  loc_6AEE48: LitVarI2 var_C4, 1
  loc_6AEE4D: PopAdLdVar
  loc_6AEE4E: FLdRfVar var_B0
  loc_6AEE51: NewIfNullPr frmConection
  loc_6AEE54: frmConection.Show from_stack_1, from_stack_2
  loc_6AEE59: ExitProcHresult
  loc_6AEE5A: CRec2Ansi var_4000
End Sub

Private Sub Check1_Click() '661CC4
  'Data Table: 436838
  loc_66199C: FLdPr Me
  loc_66199F: MemLdUI1 global_52
  loc_6619A3: CBoolUI1
  loc_6619A5: BranchF loc_661CC3
  loc_6619A8: LitVarI2 var_D8, 1
  loc_6619AD: FLdRfVar var_94
  loc_6619B0: ImpAdLdUI1
  loc_6619B4: CVarUI1
  loc_6619B8: ForVar var_F8
  loc_6619BE: FLdRfVar var_102
  loc_6619C1: FLdRfVar var_100
  loc_6619C4: FLdRfVar var_94
  loc_6619C7: CI2Var
  loc_6619C8: FLdPrThis
  loc_6619C9: VCallAd Control_ID_Check1
  loc_6619CC: FStAdFunc var_FC
  loc_6619CF: FLdPr var_FC
  loc_6619D2: Set from_stack_2 = Me(from_stack_1)
  loc_6619D7: FLdPr var_100
  loc_6619DA:  = Me.Value
  loc_6619DF: FLdI2 var_102
  loc_6619E2: LitI2_Byte 1
  loc_6619E4: EqI2
  loc_6619E5: FFreeAd var_FC = ""
  loc_6619EC: BranchF loc_6619F2
  loc_6619EF: Branch loc_6619FB
  loc_6619F2: FLdRfVar var_94
  loc_6619F5: NextStepVar var_F8
  loc_6619FB: FLdRfVar var_94
  loc_6619FE: ImpAdLdUI1
  loc_661A02: CVarUI1
  loc_661A06: HardType
  loc_661A07: GtVarBool
  loc_661A09: BranchF loc_661A9B
  loc_661A0C: LitStr vbNullString
  loc_661A0F: FLdPrThis
  loc_661A10: VCallAd Control_ID_Label4
  loc_661A13: FStAdFunc var_FC
  loc_661A16: FLdPr var_FC
  loc_661A19: Me.Caption = from_stack_1
  loc_661A1E: FFree1Ad var_FC
  loc_661A21: LitVarI2 var_D8, 1
  loc_661A26: FLdRfVar var_94
  loc_661A29: ImpAdLdUI1
  loc_661A2D: CVarUI1
  loc_661A31: ForVar var_134
  loc_661A37: FLdRfVar var_102
  loc_661A3A: FLdRfVar var_100
  loc_661A3D: FLdRfVar var_94
  loc_661A40: CI2Var
  loc_661A41: FLdPrThis
  loc_661A42: VCallAd Control_ID_Check1
  loc_661A45: FStAdFunc var_FC
  loc_661A48: FLdPr var_FC
  loc_661A4B: Set from_stack_2 = Me(from_stack_1)
  loc_661A50: FLdPr var_100
  loc_661A53:  = Me.Value
  loc_661A58: FLdI2 var_102
  loc_661A5B: LitI2_Byte 2
  loc_661A5D: LtI2
  loc_661A5E: FFreeAd var_FC = ""
  loc_661A65: BranchF loc_661A8F
  loc_661A68: LitI2_Byte &HFF
  loc_661A6A: FLdRfVar var_100
  loc_661A6D: FLdRfVar var_94
  loc_661A70: CI2Var
  loc_661A71: FLdPrThis
  loc_661A72: VCallAd Control_ID_Check1
  loc_661A75: FStAdFunc var_FC
  loc_661A78: FLdPr var_FC
  loc_661A7B: Set from_stack_2 = Me(from_stack_1)
  loc_661A80: FLdPr var_100
  loc_661A83: Me.Enabled = from_stack_1b
  loc_661A88: FFreeAd var_FC = ""
  loc_661A8F: FLdRfVar var_94
  loc_661A92: NextStepVar var_134
  loc_661A98: Branch loc_661CC3
  loc_661A9B: FLdRfVar var_94
  loc_661A9E: CI4Var
  loc_661AA0: ImpAdLdRf MemVar_74C1D8
  loc_661AA3: Ary1LdUI1
  loc_661AA5: CVarUI1
  loc_661AA9: FStVar var_A4
  loc_661AAD: FLdRfVar var_138
  loc_661AB0: FLdRfVar var_A4
  loc_661AB3: CI2Var
  loc_661AB4: ImpAdLdRf MemVar_74A220
  loc_661AB7: NewIfNullPr clsProducts
  loc_661ABF: ILdRf var_138
  loc_661AC2: FLdPrThis
  loc_661AC3: VCallAd Control_ID_Label4
  loc_661AC6: FStAdFunc var_FC
  loc_661AC9: FLdPr var_FC
  loc_661ACC: Me.Caption = from_stack_1
  loc_661AD1: FFree1Str var_138
  loc_661AD4: FFree1Ad var_FC
  loc_661AD7: LitVarI2 var_D8, 1
  loc_661ADC: FLdRfVar var_94
  loc_661ADF: ImpAdLdUI1
  loc_661AE3: CVarUI1
  loc_661AE7: ForVar var_158
  loc_661AED: FLdRfVar var_94
  loc_661AF0: CI4Var
  loc_661AF2: ImpAdLdRf MemVar_74C1D8
  loc_661AF5: Ary1LdUI1
  loc_661AF7: CVarUI1
  loc_661AFB: HardType
  loc_661AFC: FLdRfVar var_A4
  loc_661AFF: EqVar var_114
  loc_661B03: FLdRfVar var_102
  loc_661B06: FLdRfVar var_100
  loc_661B09: FLdRfVar var_94
  loc_661B0C: CI2Var
  loc_661B0D: FLdPrThis
  loc_661B0E: VCallAd Control_ID_Check1
  loc_661B11: FStAdFunc var_FC
  loc_661B14: FLdPr var_FC
  loc_661B17: Set from_stack_2 = Me(from_stack_1)
  loc_661B1C: FLdPr var_100
  loc_661B1F:  = Me.Value
  loc_661B24: FLdI2 var_102
  loc_661B27: LitI2_Byte 1
  loc_661B29: EqI2
  loc_661B2A: CVarBoolI2 var_C8
  loc_661B2E: AndVar var_168
  loc_661B32: CBoolVarNull
  loc_661B34: FFreeAd var_FC = ""
  loc_661B3B: FFree1Var var_C8 = ""
  loc_661B3E: BranchF loc_661B50
  loc_661B41: FLdUI1
  loc_661B45: CI2UI1
  loc_661B47: LitI2_Byte 1
  loc_661B49: AddI2
  loc_661B4A: CUI1I2
  loc_661B4C: FStUI1 var_A6
  loc_661B50: FLdRfVar var_94
  loc_661B53: NextStepVar var_158
  loc_661B59: FLdUI1
  loc_661B5D: CI2UI1
  loc_661B5F: LitI2_Byte 3
  loc_661B61: EqI2
  loc_661B62: BranchF loc_661C0B
  loc_661B65: LitVarI2 var_D8, 1
  loc_661B6A: FLdRfVar var_94
  loc_661B6D: ImpAdLdUI1
  loc_661B71: CVarUI1
  loc_661B75: ForVar var_188
  loc_661B7B: FLdRfVar var_102
  loc_661B7E: FLdRfVar var_100
  loc_661B81: FLdRfVar var_94
  loc_661B84: CI2Var
  loc_661B85: FLdPrThis
  loc_661B86: VCallAd Control_ID_Check1
  loc_661B89: FStAdFunc var_FC
  loc_661B8C: FLdPr var_FC
  loc_661B8F: Set from_stack_2 = Me(from_stack_1)
  loc_661B94: FLdPr var_100
  loc_661B97:  = Me.Enabled
  loc_661B9C: FLdI2 var_102
  loc_661B9F: LitI2_Byte &HFF
  loc_661BA1: EqI2
  loc_661BA2: FLdRfVar var_192
  loc_661BA5: FLdRfVar var_190
  loc_661BA8: FLdRfVar var_94
  loc_661BAB: CI2Var
  loc_661BAC: FLdPrThis
  loc_661BAD: VCallAd Control_ID_Check1
  loc_661BB0: FStAdFunc var_18C
  loc_661BB3: FLdPr var_18C
  loc_661BB6: Set from_stack_2 = Me(from_stack_1)
  loc_661BBB: FLdPr var_190
  loc_661BBE:  = Me.Value
  loc_661BC3: FLdI2 var_192
  loc_661BC6: LitI2_Byte 0
  loc_661BC8: EqI2
  loc_661BC9: AndI4
  loc_661BCA: FFreeAd var_FC = "": var_100 = "": var_18C = ""
  loc_661BD5: BranchF loc_661BFF
  loc_661BD8: LitI2_Byte 0
  loc_661BDA: FLdRfVar var_100
  loc_661BDD: FLdRfVar var_94
  loc_661BE0: CI2Var
  loc_661BE1: FLdPrThis
  loc_661BE2: VCallAd Control_ID_Check1
  loc_661BE5: FStAdFunc var_FC
  loc_661BE8: FLdPr var_FC
  loc_661BEB: Set from_stack_2 = Me(from_stack_1)
  loc_661BF0: FLdPr var_100
  loc_661BF3: Me.Enabled = from_stack_1b
  loc_661BF8: FFreeAd var_FC = ""
  loc_661BFF: FLdRfVar var_94
  loc_661C02: NextStepVar var_188
  loc_661C08: Branch loc_661CC3
  loc_661C0B: LitVarI2 var_D8, 1
  loc_661C10: FLdRfVar var_94
  loc_661C13: ImpAdLdUI1
  loc_661C17: CVarUI1
  loc_661C1B: ForVar var_1B4
  loc_661C21: FLdRfVar var_102
  loc_661C24: FLdRfVar var_100
  loc_661C27: FLdRfVar var_94
  loc_661C2A: CI2Var
  loc_661C2B: FLdPrThis
  loc_661C2C: VCallAd Control_ID_Check1
  loc_661C2F: FStAdFunc var_FC
  loc_661C32: FLdPr var_FC
  loc_661C35: Set from_stack_2 = Me(from_stack_1)
  loc_661C3A: FLdPr var_100
  loc_661C3D:  = Me.Value
  loc_661C42: FLdI2 var_102
  loc_661C45: LitI2_Byte 2
  loc_661C47: LtI2
  loc_661C48: FFreeAd var_FC = ""
  loc_661C4F: BranchF loc_661CBA
  loc_661C52: FLdRfVar var_94
  loc_661C55: CI4Var
  loc_661C57: ImpAdLdRf MemVar_74C1D8
  loc_661C5A: Ary1LdUI1
  loc_661C5C: CVarUI1
  loc_661C60: HardType
  loc_661C61: FLdRfVar var_A4
  loc_661C64: EqVarBool
  loc_661C66: BranchF loc_661C93
  loc_661C69: LitI2_Byte &HFF
  loc_661C6B: FLdRfVar var_100
  loc_661C6E: FLdRfVar var_94
  loc_661C71: CI2Var
  loc_661C72: FLdPrThis
  loc_661C73: VCallAd Control_ID_Check1
  loc_661C76: FStAdFunc var_FC
  loc_661C79: FLdPr var_FC
  loc_661C7C: Set from_stack_2 = Me(from_stack_1)
  loc_661C81: FLdPr var_100
  loc_661C84: Me.Enabled = from_stack_1b
  loc_661C89: FFreeAd var_FC = ""
  loc_661C90: Branch loc_661CBA
  loc_661C93: LitI2_Byte 0
  loc_661C95: FLdRfVar var_100
  loc_661C98: FLdRfVar var_94
  loc_661C9B: CI2Var
  loc_661C9C: FLdPrThis
  loc_661C9D: VCallAd Control_ID_Check1
  loc_661CA0: FStAdFunc var_FC
  loc_661CA3: FLdPr var_FC
  loc_661CA6: Set from_stack_2 = Me(from_stack_1)
  loc_661CAB: FLdPr var_100
  loc_661CAE: Me.Enabled = from_stack_1b
  loc_661CB3: FFreeAd var_FC = ""
  loc_661CBA: FLdRfVar var_94
  loc_661CBD: NextStepVar var_1B4
  loc_661CC3: ExitProcHresult
End Sub

Private Sub SSCommand8_UnknownEvent_8 '5D6640
  'Data Table: 436838
  loc_5D6614: FLdPr Me
  loc_5D6617: MemLdUI1 global_52
  loc_5D661B: CBoolUI1
  loc_5D661D: BranchF loc_5D663F
  loc_5D6620: FLdPr Me
  loc_5D6623: MemLdUI1 global_53
  loc_5D6627: CI2UI1
  loc_5D6629: LitI2_Byte 1
  loc_5D662B: SubI2
  loc_5D662C: CUI1I2
  loc_5D662E: FLdPr Me
  loc_5D6631: MemStUI1
  loc_5D6635: from_stack_1v = Proc_9_15_62ED90()
  loc_5D663A: Call Form_Activate()
  loc_5D663F: ExitProcHresult
End Sub

Private Sub SSCommand7_UnknownEvent_8 '68A7CC
  'Data Table: 436838
  loc_68A2DC: FLdPr Me
  loc_68A2DF: MemLdUI1 global_52
  loc_68A2E3: CBoolUI1
  loc_68A2E5: BranchF loc_68A7C8
  loc_68A2E8: LitVarI2 var_D8, 1
  loc_68A2ED: FLdRfVar var_94
  loc_68A2F0: ImpAdLdUI1
  loc_68A2F4: CVarUI1
  loc_68A2F8: ForVar var_F8
  loc_68A2FE: FLdRfVar var_102
  loc_68A301: FLdRfVar var_100
  loc_68A304: FLdRfVar var_94
  loc_68A307: CI2Var
  loc_68A308: FLdPrThis
  loc_68A309: VCallAd Control_ID_Check1
  loc_68A30C: FStAdFunc var_FC
  loc_68A30F: FLdPr var_FC
  loc_68A312: Set from_stack_2 = Me(from_stack_1)
  loc_68A317: FLdPr var_100
  loc_68A31A:  = Me.Value
  loc_68A31F: FLdI2 var_102
  loc_68A322: LitI2_Byte 1
  loc_68A324: EqI2
  loc_68A325: FFreeAd var_FC = ""
  loc_68A32C: BranchF loc_68A33F
  loc_68A32F: FLdRfVar var_A4
  loc_68A332: LitVarI2 var_B8, 1
  loc_68A337: AddVar var_114
  loc_68A33B: FStVar var_A4
  loc_68A33F: FLdRfVar var_94
  loc_68A342: NextStepVar var_F8
  loc_68A348: FLdRfVar var_A4
  loc_68A34B: LitVarI2 var_B8, 1
  loc_68A350: HardType
  loc_68A351: LeVarBool
  loc_68A353: BranchF loc_68A468
  loc_68A356: ImpAdCallFPR4 Beep()
  loc_68A35B: FLdRfVar var_220
  loc_68A35E: LitVar_Missing var_21C
  loc_68A361: LitVar_Missing var_1FC
  loc_68A364: LitVar_Missing var_1DC
  loc_68A367: LitVar_Missing var_1BC
  loc_68A36A: LitVar_Missing var_19C
  loc_68A36D: LitVar_Missing var_17C
  loc_68A370: LitVar_Missing var_15C
  loc_68A373: LitVar_Missing var_13C
  loc_68A376: LitVar_Missing var_12C
  loc_68A379: LitVar_Missing var_114
  loc_68A37C: LitStr "Deben configurarse 2 Tanques como mínimo."
  loc_68A37F: FStStrCopy var_11C
  loc_68A382: FLdRfVar var_11C
  loc_68A385: LitI4 &H12
  loc_68A38A: PopTmpLdAdStr var_118
  loc_68A38D: LitI2_Byte &H42
  loc_68A38F: PopTmpLdAd2 var_102
  loc_68A392: ImpAdLdRf MemVar_74C7D0
  loc_68A395: NewIfNullPr clsMsg
  loc_68A398: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68A39D: LitI4 &HD
  loc_68A3A2: FLdRfVar var_230
  loc_68A3A5: ImpAdCallFPR4  = Chr()
  loc_68A3AA: LitI4 &HA
  loc_68A3AF: FLdRfVar var_260
  loc_68A3B2: ImpAdCallFPR4  = Chr()
  loc_68A3B7: FLdRfVar var_3C0
  loc_68A3BA: LitVar_Missing var_3BC
  loc_68A3BD: LitVar_Missing var_39C
  loc_68A3C0: LitVar_Missing var_37C
  loc_68A3C3: LitVar_Missing var_35C
  loc_68A3C6: LitVar_Missing var_33C
  loc_68A3C9: LitVar_Missing var_31C
  loc_68A3CC: LitVar_Missing var_2FC
  loc_68A3CF: LitVar_Missing var_2DC
  loc_68A3D2: LitVar_Missing var_2BC
  loc_68A3D5: LitVar_Missing var_29C
  loc_68A3D8: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_68A3DB: FStStrCopy var_27C
  loc_68A3DE: FLdRfVar var_27C
  loc_68A3E1: LitI4 &H11
  loc_68A3E6: PopTmpLdAdStr var_278
  loc_68A3E9: LitI2_Byte &H42
  loc_68A3EB: PopTmpLdAd2 var_272
  loc_68A3EE: ImpAdLdRf MemVar_74C7D0
  loc_68A3F1: NewIfNullPr clsMsg
  loc_68A3F4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68A3F9: LitVar_Missing var_410
  loc_68A3FC: LitVar_Missing var_3F0
  loc_68A3FF: FLdZeroAd var_3C0
  loc_68A402: CVarStr var_3D0
  loc_68A405: LitI4 &H10
  loc_68A40A: FLdZeroAd var_220
  loc_68A40D: CVarStr var_240
  loc_68A410: FLdRfVar var_230
  loc_68A413: ConcatVar var_250
  loc_68A417: FLdRfVar var_260
  loc_68A41A: ConcatVar var_270
  loc_68A41E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68A423: FFreeStr var_11C = ""
  loc_68A42A: FFreeVar var_114 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_240 = "": var_230 = "": var_250 = "": var_260 = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_270 = "": var_3D0 = "": var_3F0 = ""
  loc_68A465: Branch loc_68A7C8
  loc_68A468: FLdRfVar var_A4
  loc_68A46B: CUI1Var
  loc_68A46D: FStUI1 var_A6
  loc_68A471: LitVarI2 var_B8, 0
  loc_68A476: FStVar var_A4
  loc_68A47A: LitVarI2 var_D8, 1
  loc_68A47F: FLdRfVar var_94
  loc_68A482: ImpAdLdUI1
  loc_68A486: CVarUI1
  loc_68A48A: ForVar var_430
  loc_68A490: FLdRfVar var_102
  loc_68A493: FLdRfVar var_100
  loc_68A496: FLdRfVar var_94
  loc_68A499: CI2Var
  loc_68A49A: FLdPrThis
  loc_68A49B: VCallAd Control_ID_Check1
  loc_68A49E: FStAdFunc var_FC
  loc_68A4A1: FLdPr var_FC
  loc_68A4A4: Set from_stack_2 = Me(from_stack_1)
  loc_68A4A9: FLdPr var_100
  loc_68A4AC:  = Me.Value
  loc_68A4B1: FLdI2 var_102
  loc_68A4B4: LitI2_Byte 1
  loc_68A4B6: EqI2
  loc_68A4B7: FFreeAd var_FC = ""
  loc_68A4BE: BranchF loc_68A53F
  loc_68A4C1: FLdRfVar var_94
  loc_68A4C4: CUI1Var
  loc_68A4C6: FLdPr Me
  loc_68A4C9: MemLdUI1 global_53
  loc_68A4CD: CI4UI1
  loc_68A4CE: FLdRfVar var_A4
  loc_68A4D1: CI4Var
  loc_68A4D3: ImpAdLdRf MemVar_74C1B8
  loc_68A4D6: AryLdPr
  loc_68A4D9: MemStUI1
  loc_68A4DD: FLdRfVar var_A4
  loc_68A4E0: LitVarI2 var_B8, 1
  loc_68A4E5: AddVar var_114
  loc_68A4E9: FStVar var_A4
  loc_68A4ED: FLdRfVar var_102
  loc_68A4F0: FLdRfVar var_100
  loc_68A4F3: FLdPr Me
  loc_68A4F6: MemLdUI1 global_53
  loc_68A4FA: CI2UI1
  loc_68A4FC: FLdPrThis
  loc_68A4FD: VCallAd Control_ID_Combo1
  loc_68A500: FStAdFunc var_FC
  loc_68A503: FLdPr var_FC
  loc_68A506: Set from_stack_2 = Me(from_stack_1)
  loc_68A50B: FLdPr var_100
  loc_68A50E:  = Me.ListIndex
  loc_68A513: FLdI2 var_102
  loc_68A516: FFreeAd var_FC = ""
  loc_68A51D: BranchF loc_68A531
  loc_68A520: LitI2_Byte 1
  loc_68A522: CUI1I2
  loc_68A524: FLdRfVar var_94
  loc_68A527: CI4Var
  loc_68A529: ImpAdLdRf MemVar_74C114
  loc_68A52C: Ary1StUI1
  loc_68A52E: Branch loc_68A53F
  loc_68A531: LitI2_Byte 0
  loc_68A533: CUI1I2
  loc_68A535: FLdRfVar var_94
  loc_68A538: CI4Var
  loc_68A53A: ImpAdLdRf MemVar_74C114
  loc_68A53D: Ary1StUI1
  loc_68A53F: FLdRfVar var_94
  loc_68A542: NextStepVar var_430
  loc_68A548: LitVarI2 var_D8, 1
  loc_68A54D: FLdRfVar var_94
  loc_68A550: LitVarI2 var_C8, 16
  loc_68A555: ForVar var_450
  loc_68A55B: FLdRfVar var_94
  loc_68A55E: FLdPr Me
  loc_68A561: MemLdUI1 global_53
  loc_68A565: CVarUI1
  loc_68A569: HardType
  loc_68A56A: NeVar var_114
  loc_68A56E: FLdPr Me
  loc_68A571: MemLdUI1 global_53
  loc_68A575: CI4UI1
  loc_68A576: LitI4 0
  loc_68A57B: ImpAdLdRf MemVar_74C1B8
  loc_68A57E: AryLdPr
  loc_68A581: MemLdUI1 global_0
  loc_68A585: FLdRfVar var_94
  loc_68A588: CI4Var
  loc_68A58A: LitI4 0
  loc_68A58F: ImpAdLdRf MemVar_74C1B8
  loc_68A592: AryLdPr
  loc_68A595: MemLdUI1 global_0
  loc_68A599: EqI2
  loc_68A59A: CVarBoolI2 var_C8
  loc_68A59E: AndVar var_12C
  loc_68A5A2: FLdPr Me
  loc_68A5A5: MemLdUI1 global_53
  loc_68A5A9: CI4UI1
  loc_68A5AA: LitI4 1
  loc_68A5AF: ImpAdLdRf MemVar_74C1B8
  loc_68A5B2: AryLdPr
  loc_68A5B5: MemLdUI1 global_0
  loc_68A5B9: FLdRfVar var_94
  loc_68A5BC: CI4Var
  loc_68A5BE: LitI4 1
  loc_68A5C3: ImpAdLdRf MemVar_74C1B8
  loc_68A5C6: AryLdPr
  loc_68A5C9: MemLdUI1 global_0
  loc_68A5CD: EqI2
  loc_68A5CE: CVarBoolI2 var_D8
  loc_68A5D2: AndVar var_13C
  loc_68A5D6: FLdPr Me
  loc_68A5D9: MemLdUI1 global_53
  loc_68A5DD: CI4UI1
  loc_68A5DE: LitI4 2
  loc_68A5E3: ImpAdLdRf MemVar_74C1B8
  loc_68A5E6: AryLdPr
  loc_68A5E9: MemLdUI1 global_0
  loc_68A5ED: FLdRfVar var_94
  loc_68A5F0: CI4Var
  loc_68A5F2: LitI4 2
  loc_68A5F7: ImpAdLdRf MemVar_74C1B8
  loc_68A5FA: AryLdPr
  loc_68A5FD: MemLdUI1 global_0
  loc_68A601: EqI2
  loc_68A602: CVarBoolI2 var_14C
  loc_68A606: AndVar var_15C
  loc_68A60A: CBoolVarNull
  loc_68A60C: FFreeVar var_C8 = "": var_D8 = ""
  loc_68A615: BranchF loc_68A624
  loc_68A618: LitVarI2 var_B8, 0
  loc_68A61D: FStVar var_94
  loc_68A621: Branch loc_68A62D
  loc_68A624: FLdRfVar var_94
  loc_68A627: NextStepVar var_450
  loc_68A62D: FLdRfVar var_94
  loc_68A630: CBoolVarNull
  loc_68A632: BranchF loc_68A642
  loc_68A635: from_stack_1v = Proc_9_15_62ED90()
  loc_68A63A: Call Form_Activate()
  loc_68A63F: Branch loc_68A7C8
  loc_68A642: ImpAdCallFPR4 Beep()
  loc_68A647: FLdRfVar var_220
  loc_68A64A: LitVar_Missing var_21C
  loc_68A64D: LitVar_Missing var_1FC
  loc_68A650: LitVar_Missing var_1DC
  loc_68A653: LitVar_Missing var_1BC
  loc_68A656: LitVar_Missing var_19C
  loc_68A659: LitVar_Missing var_17C
  loc_68A65C: LitVar_Missing var_15C
  loc_68A65F: LitVar_Missing var_13C
  loc_68A662: LitVar_Missing var_12C
  loc_68A665: LitVar_Missing var_114
  loc_68A668: LitStr "Esta Interconexión ya está configurada."
  loc_68A66B: FStStrCopy var_11C
  loc_68A66E: FLdRfVar var_11C
  loc_68A671: LitI4 &H13
  loc_68A676: PopTmpLdAdStr var_118
  loc_68A679: LitI2_Byte &H42
  loc_68A67B: PopTmpLdAd2 var_102
  loc_68A67E: ImpAdLdRf MemVar_74C7D0
  loc_68A681: NewIfNullPr clsMsg
  loc_68A684: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68A689: LitI4 &HD
  loc_68A68E: FLdRfVar var_230
  loc_68A691: ImpAdCallFPR4  = Chr()
  loc_68A696: LitI4 &HA
  loc_68A69B: FLdRfVar var_260
  loc_68A69E: ImpAdCallFPR4  = Chr()
  loc_68A6A3: FLdRfVar var_3C0
  loc_68A6A6: LitVar_Missing var_3BC
  loc_68A6A9: LitVar_Missing var_39C
  loc_68A6AC: LitVar_Missing var_37C
  loc_68A6AF: LitVar_Missing var_35C
  loc_68A6B2: LitVar_Missing var_33C
  loc_68A6B5: LitVar_Missing var_31C
  loc_68A6B8: LitVar_Missing var_2FC
  loc_68A6BB: LitVar_Missing var_2DC
  loc_68A6BE: LitVar_Missing var_2BC
  loc_68A6C1: LitVar_Missing var_29C
  loc_68A6C4: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_68A6C7: FStStrCopy var_27C
  loc_68A6CA: FLdRfVar var_27C
  loc_68A6CD: LitI4 &H11
  loc_68A6D2: PopTmpLdAdStr var_278
  loc_68A6D5: LitI2_Byte &H42
  loc_68A6D7: PopTmpLdAd2 var_272
  loc_68A6DA: ImpAdLdRf MemVar_74C7D0
  loc_68A6DD: NewIfNullPr clsMsg
  loc_68A6E0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68A6E5: LitVar_Missing var_410
  loc_68A6E8: LitVar_Missing var_3F0
  loc_68A6EB: FLdZeroAd var_3C0
  loc_68A6EE: CVarStr var_3D0
  loc_68A6F1: LitI4 &H10
  loc_68A6F6: FLdZeroAd var_220
  loc_68A6F9: CVarStr var_240
  loc_68A6FC: FLdRfVar var_230
  loc_68A6FF: ConcatVar var_250
  loc_68A703: FLdRfVar var_260
  loc_68A706: ConcatVar var_270
  loc_68A70A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68A70F: FFreeStr var_11C = ""
  loc_68A716: FFreeVar var_114 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_240 = "": var_230 = "": var_250 = "": var_260 = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_270 = "": var_3D0 = "": var_3F0 = ""
  loc_68A751: LitVarI2 var_D8, 1
  loc_68A756: FLdRfVar var_94
  loc_68A759: ImpAdLdUI1
  loc_68A75D: CVarUI1
  loc_68A761: ForVar var_470
  loc_68A767: FLdRfVar var_102
  loc_68A76A: FLdRfVar var_100
  loc_68A76D: FLdRfVar var_94
  loc_68A770: CI2Var
  loc_68A771: FLdPrThis
  loc_68A772: VCallAd Control_ID_Check1
  loc_68A775: FStAdFunc var_FC
  loc_68A778: FLdPr var_FC
  loc_68A77B: Set from_stack_2 = Me(from_stack_1)
  loc_68A780: FLdPr var_100
  loc_68A783:  = Me.Value
  loc_68A788: FLdI2 var_102
  loc_68A78B: LitI2_Byte 1
  loc_68A78D: EqI2
  loc_68A78E: FFreeAd var_FC = ""
  loc_68A795: BranchF loc_68A7BF
  loc_68A798: LitI2_Byte 0
  loc_68A79A: FLdRfVar var_100
  loc_68A79D: FLdRfVar var_94
  loc_68A7A0: CI2Var
  loc_68A7A1: FLdPrThis
  loc_68A7A2: VCallAd Control_ID_Check1
  loc_68A7A5: FStAdFunc var_FC
  loc_68A7A8: FLdPr var_FC
  loc_68A7AB: Set from_stack_2 = Me(from_stack_1)
  loc_68A7B0: FLdPr var_100
  loc_68A7B3: Me.Value = from_stack_1
  loc_68A7B8: FFreeAd var_FC = ""
  loc_68A7BF: FLdRfVar var_94
  loc_68A7C2: NextStepVar var_470
  loc_68A7C8: ExitProcHresult
End Sub

Private Sub Combo1_DropDown(arg_C) '665B68
  'Data Table: 436838
  loc_6658B0: OnErrorGoto loc_665B39
  loc_6658B3: FLdPr Me
  loc_6658B6: MemLdUI1 global_52
  loc_6658BA: CBoolUI1
  loc_6658BC: BranchF loc_665B38
  loc_6658BF: ILdI2 arg_C
  loc_6658C2: CI4UI1
  loc_6658C3: LitI4 0
  loc_6658C8: ImpAdLdRf MemVar_74C1B8
  loc_6658CB: AryLdPr
  loc_6658CE: MemLdUI1 global_0
  loc_6658D2: CBoolUI1
  loc_6658D4: BranchF loc_665B03
  loc_6658D7: ImpAdCallFPR4 Beep()
  loc_6658DC: FLdRfVar var_1F4
  loc_6658DF: LitVar_Missing var_1F0
  loc_6658E2: LitVar_Missing var_1D0
  loc_6658E5: LitVar_Missing var_1B0
  loc_6658E8: LitVar_Missing var_190
  loc_6658EB: LitVar_Missing var_170
  loc_6658EE: LitVar_Missing var_150
  loc_6658F1: LitVar_Missing var_130
  loc_6658F4: LitVar_Missing var_110
  loc_6658F7: LitVar_Missing var_F0
  loc_6658FA: LitVar_Missing var_D0
  loc_6658FD: LitStr "Presionando ""OK"" se borra esta Interconexión, permitiendo entrar una nueva."
  loc_665900: FStStrCopy var_B0
  loc_665903: FLdRfVar var_B0
  loc_665906: LitI4 &HC
  loc_66590B: PopTmpLdAdStr var_AC
  loc_66590E: LitI2_Byte &H42
  loc_665910: PopTmpLdAd2 var_A8
  loc_665913: ImpAdLdRf MemVar_74C7D0
  loc_665916: NewIfNullPr clsMsg
  loc_665919: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66591E: LitI4 &HD
  loc_665923: FLdRfVar var_204
  loc_665926: ImpAdCallFPR4  = Chr()
  loc_66592B: LitI4 &HA
  loc_665930: FLdRfVar var_234
  loc_665933: ImpAdCallFPR4  = Chr()
  loc_665938: FLdRfVar var_394
  loc_66593B: LitVar_Missing var_390
  loc_66593E: LitVar_Missing var_370
  loc_665941: LitVar_Missing var_350
  loc_665944: LitVar_Missing var_330
  loc_665947: LitVar_Missing var_310
  loc_66594A: LitVar_Missing var_2F0
  loc_66594D: LitVar_Missing var_2D0
  loc_665950: LitVar_Missing var_2B0
  loc_665953: LitVar_Missing var_290
  loc_665956: LitVar_Missing var_270
  loc_665959: LitStr "Presionando ""CANCEL"" no se produce ningún cambio."
  loc_66595C: FStStrCopy var_250
  loc_66595F: FLdRfVar var_250
  loc_665962: LitI4 &HD
  loc_665967: PopTmpLdAdStr var_24C
  loc_66596A: LitI2_Byte &H42
  loc_66596C: PopTmpLdAd2 var_246
  loc_66596F: ImpAdLdRf MemVar_74C7D0
  loc_665972: NewIfNullPr clsMsg
  loc_665975: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66597A: LitI4 &HD
  loc_66597F: FLdRfVar var_3C4
  loc_665982: ImpAdCallFPR4  = Chr()
  loc_665987: LitI4 &HA
  loc_66598C: FLdRfVar var_3E4
  loc_66598F: ImpAdCallFPR4  = Chr()
  loc_665994: FLdRfVar var_544
  loc_665997: LitVar_Missing var_540
  loc_66599A: LitVar_Missing var_520
  loc_66599D: LitVar_Missing var_500
  loc_6659A0: LitVar_Missing var_4E0
  loc_6659A3: LitVar_Missing var_4C0
  loc_6659A6: LitVar_Missing var_4A0
  loc_6659A9: LitVar_Missing var_480
  loc_6659AC: LitVar_Missing var_460
  loc_6659AF: LitVar_Missing var_440
  loc_6659B2: LitVar_Missing var_420
  loc_6659B5: LitStr "ESTA  INTERCONEXION  YA  ESTA  CONFIGURADA"
  loc_6659B8: FStStrCopy var_400
  loc_6659BB: FLdRfVar var_400
  loc_6659BE: LitI4 &HE
  loc_6659C3: PopTmpLdAdStr var_3FC
  loc_6659C6: LitI2_Byte &H42
  loc_6659C8: PopTmpLdAd2 var_3F6
  loc_6659CB: ImpAdLdRf MemVar_74C7D0
  loc_6659CE: NewIfNullPr clsMsg
  loc_6659D1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6659D6: LitVar_Missing var_594
  loc_6659D9: LitVar_Missing var_574
  loc_6659DC: FLdZeroAd var_544
  loc_6659DF: CVarStr var_554
  loc_6659E2: LitI4 &H131
  loc_6659E7: FLdZeroAd var_1F4
  loc_6659EA: CVarStr var_214
  loc_6659ED: FLdRfVar var_204
  loc_6659F0: ConcatVar var_224
  loc_6659F4: FLdRfVar var_234
  loc_6659F7: ConcatVar var_244
  loc_6659FB: FLdZeroAd var_394
  loc_6659FE: CVarStr var_3A4
  loc_665A01: ConcatVar var_3B4
  loc_665A05: FLdRfVar var_3C4
  loc_665A08: ConcatVar var_3D4
  loc_665A0C: FLdRfVar var_3E4
  loc_665A0F: ConcatVar var_3F4
  loc_665A13: ImpAdCallI2 MsgBox(, , , , )
  loc_665A18: CUI1I4
  loc_665A1A: FStUI1 var_A6
  loc_665A1E: FFreeStr var_B0 = "": var_250 = ""
  loc_665A27: FFreeVar var_420 = "": var_440 = "": var_460 = "": var_480 = "": var_4A0 = "": var_4C0 = "": var_4E0 = "": var_500 = "": var_520 = "": var_540 = "": var_3F4 = "": var_554 = "": var_574 = "": var_594 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_214 = "": var_204 = "": var_224 = "": var_234 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_244 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = ""
  loc_665A82: FLdUI1
  loc_665A86: CI4UI1
  loc_665A87: LitI4 1
  loc_665A8C: EqI4
  loc_665A8D: BranchF loc_665B00
  loc_665A90: LitVarI2 var_100, 0
  loc_665A95: FLdRfVar var_94
  loc_665A98: LitVarI2 var_E0, 2
  loc_665A9D: ForVar var_5B4
  loc_665AA3: ILdI2 arg_C
  loc_665AA6: CI4UI1
  loc_665AA7: FLdRfVar var_94
  loc_665AAA: CI4Var
  loc_665AAC: ImpAdLdRf MemVar_74C1B8
  loc_665AAF: AryLdPr
  loc_665AB2: MemLdUI1 global_0
  loc_665AB6: CBoolUI1
  loc_665AB8: BranchF loc_665AD8
  loc_665ABB: LitI2_Byte 0
  loc_665ABD: CUI1I2
  loc_665ABF: ILdI2 arg_C
  loc_665AC2: CI4UI1
  loc_665AC3: FLdRfVar var_94
  loc_665AC6: CI4Var
  loc_665AC8: ImpAdLdRf MemVar_74C1B8
  loc_665ACB: AryLdPr
  loc_665ACE: MemLdUI1 global_0
  loc_665AD2: CI4UI1
  loc_665AD3: ImpAdLdRf MemVar_74C114
  loc_665AD6: Ary1StUI1
  loc_665AD8: LitI2_Byte 0
  loc_665ADA: CUI1I2
  loc_665ADC: ILdI2 arg_C
  loc_665ADF: CI4UI1
  loc_665AE0: FLdRfVar var_94
  loc_665AE3: CI4Var
  loc_665AE5: ImpAdLdRf MemVar_74C1B8
  loc_665AE8: AryLdPr
  loc_665AEB: MemStUI1
  loc_665AEF: FLdRfVar var_94
  loc_665AF2: NextStepVar var_5B4
  loc_665AF8: Call Form_Activate()
  loc_665AFD: Branch loc_665B00
  loc_665B00: Branch loc_665B38
  loc_665B03: ILdI2 arg_C
  loc_665B06: CUI1I2
  loc_665B08: FLdPr Me
  loc_665B0B: MemStUI1
  loc_665B0F: LitI4 &HFFC0C0
  loc_665B14: FLdRfVar var_5BC
  loc_665B17: ILdI2 arg_C
  loc_665B1A: FLdPrThis
  loc_665B1B: VCallAd Control_ID_Combo1
  loc_665B1E: FStAdFunc var_5B8
  loc_665B21: FLdPr var_5B8
  loc_665B24: Set from_stack_2 = Me(from_stack_1)
  loc_665B29: FLdPr var_5BC
  loc_665B2C: Me.BackColor = from_stack_1
  loc_665B31: FFreeAd var_5B8 = ""
  loc_665B38: ExitProcHresult
  loc_665B39: LitVar_Missing var_130
  loc_665B3C: LitVar_Missing var_110
  loc_665B3F: LitVar_Missing var_F0
  loc_665B42: LitI4 0
  loc_665B47: LitVarStr var_C0, "el error esta en combo 1"
  loc_665B4C: FStVarCopyObj var_D0
  loc_665B4F: FLdRfVar var_D0
  loc_665B52: ImpAdCallFPR4 MsgBox(, , , , )
  loc_665B57: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_665B62: End
  loc_665B64: ExitProcHresult
End Sub

Private Sub Combo1_GotFocus(arg_C) '5CFFF4
  'Data Table: 436838
  loc_5CFFDC: FLdPr Me
  loc_5CFFDF: MemLdUI1 global_52
  loc_5CFFE3: CBoolUI1
  loc_5CFFE5: BranchF loc_5CFFF0
  loc_5CFFE8: ILdRf arg_C
  loc_5CFFEB: Call Combo1_DropDown(from_stack_1v)
  loc_5CFFF0: ExitProcHresult
End Sub

Private Sub Combo1_LostFocus(arg_C) '5E7664
  'Data Table: 436838
  loc_5E75EC: FLdPr Me
  loc_5E75EF: MemLdUI1 global_52
  loc_5E75F3: CBoolUI1
  loc_5E75F5: BranchF loc_5E7662
  loc_5E75F8: FLdPr Me
  loc_5E75FB: MemLdUI1 global_53
  loc_5E75FF: CBoolUI1
  loc_5E7601: BranchF loc_5E7633
  loc_5E7604: LitI4 &HFFFFFF
  loc_5E7609: FLdRfVar var_8C
  loc_5E760C: FLdPr Me
  loc_5E760F: MemLdUI1 global_53
  loc_5E7613: CI2UI1
  loc_5E7615: FLdPrThis
  loc_5E7616: VCallAd Control_ID_Combo1
  loc_5E7619: FStAdFunc var_88
  loc_5E761C: FLdPr var_88
  loc_5E761F: Set from_stack_2 = Me(from_stack_1)
  loc_5E7624: FLdPr var_8C
  loc_5E7627: Me.BackColor = from_stack_1
  loc_5E762C: FFreeAd var_88 = ""
  loc_5E7633: ILdI2 arg_C
  loc_5E7636: BranchF loc_5E7662
  loc_5E7639: LitI4 &HFFFFFF
  loc_5E763E: FLdRfVar var_8C
  loc_5E7641: ILdI2 arg_C
  loc_5E7644: FLdPrThis
  loc_5E7645: VCallAd Control_ID_Combo1
  loc_5E7648: FStAdFunc var_88
  loc_5E764B: FLdPr var_88
  loc_5E764E: Set from_stack_2 = Me(from_stack_1)
  loc_5E7653: FLdPr var_8C
  loc_5E7656: Me.BackColor = from_stack_1
  loc_5E765B: FFreeAd var_88 = ""
  loc_5E7662: ExitProcHresult
End Sub

Public Function CargarSucciones() '64E390
  'Data Table: 436838
  loc_64E0F0: ZeroRetValVar
  loc_64E0F2: LitI2_Byte 1
  loc_64E0F4: FStI2 var_96
  loc_64E0F7: LitVarI2 var_A8, 0
  loc_64E0FC: ImpAdStVar MemVar_74A1D4
  loc_64E100: LitI2_Byte 1
  loc_64E102: FLdRfVar var_96
  loc_64E105: LitI2_Byte &H10
  loc_64E107: ForI2 var_AC
  loc_64E10D: LitI2_Byte 0
  loc_64E10F: FLdI2 var_96
  loc_64E112: CI4UI1
  loc_64E113: ImpAdLdRf MemVar_74A1BC
  loc_64E116: Ary1LdPr
  loc_64E117: MemStI2 global_0
  loc_64E11A: LitStr vbNullString
  loc_64E11D: FLdI2 var_96
  loc_64E120: CI4UI1
  loc_64E121: ImpAdLdRf MemVar_74A1BC
  loc_64E124: Ary1LdPr
  loc_64E125: MemStStrCopy
  loc_64E129: LitI2_Byte 0
  loc_64E12B: FLdI2 var_96
  loc_64E12E: CI4UI1
  loc_64E12F: ImpAdLdRf MemVar_74A1BC
  loc_64E132: Ary1LdPr
  loc_64E133: MemStI2 global_14
  loc_64E136: LitI2_Byte 0
  loc_64E138: FLdI2 var_96
  loc_64E13B: CI4UI1
  loc_64E13C: ImpAdLdRf MemVar_74A1BC
  loc_64E13F: Ary1LdPr
  loc_64E140: MemStI2 global_8
  loc_64E143: LitI2_Byte 0
  loc_64E145: FLdI2 var_96
  loc_64E148: CI4UI1
  loc_64E149: ImpAdLdRf MemVar_74A1BC
  loc_64E14C: Ary1LdPr
  loc_64E14D: MemStI2 global_10
  loc_64E150: LitI2_Byte 0
  loc_64E152: FLdI2 var_96
  loc_64E155: CI4UI1
  loc_64E156: ImpAdLdRf MemVar_74A1BC
  loc_64E159: Ary1LdPr
  loc_64E15A: MemStI2 global_12
  loc_64E15D: FLdRfVar var_96
  loc_64E160: NextI2 var_AC, loc_64E10D
  loc_64E165: LitI2_Byte 1
  loc_64E167: FStI2 var_96
  loc_64E16A: FLdRfVar var_B8
  loc_64E16D: FLdRfVar var_B4
  loc_64E170: FLdI2 var_96
  loc_64E173: FLdPrThis
  loc_64E174: VCallAd Control_ID_Label1
  loc_64E177: FStAdFunc var_B0
  loc_64E17A: FLdPr var_B0
  loc_64E17D: Set from_stack_2 = Me(from_stack_1)
  loc_64E182: FLdPr var_B4
  loc_64E185:  = Me.Caption
  loc_64E18A: FLdZeroAd var_B8
  loc_64E18D: CVarStr var_C8
  loc_64E190: FLdRfVar var_D8
  loc_64E193: ImpAdCallFPR4  = Trim()
  loc_64E198: FLdRfVar var_D8
  loc_64E19B: LitVarStr var_A8, vbNullString
  loc_64E1A0: HardType
  loc_64E1A1: NeVarBool
  loc_64E1A3: FFreeAd var_B0 = ""
  loc_64E1AA: FFreeVar var_C8 = ""
  loc_64E1B1: BranchF loc_64E389
  loc_64E1B4: FLdRfVar var_EA
  loc_64E1B7: FLdRfVar var_B8
  loc_64E1BA: FLdRfVar var_B4
  loc_64E1BD: FLdI2 var_96
  loc_64E1C0: FLdPrThis
  loc_64E1C1: VCallAd Control_ID_Label1
  loc_64E1C4: FStAdFunc var_B0
  loc_64E1C7: FLdPr var_B0
  loc_64E1CA: Set from_stack_2 = Me(from_stack_1)
  loc_64E1CF: FLdPr var_B4
  loc_64E1D2:  = Me.Caption
  loc_64E1D7: ILdRf var_B8
  loc_64E1DA: ImpAdLdRf MemVar_74A220
  loc_64E1DD: NewIfNullPr clsProducts
  loc_64E1E5: FLdI2 var_EA
  loc_64E1E8: FLdI2 var_96
  loc_64E1EB: CI4UI1
  loc_64E1EC: ImpAdLdRf MemVar_74A1BC
  loc_64E1EF: Ary1LdPr
  loc_64E1F0: MemStI2 global_0
  loc_64E1F3: FFree1Str var_B8
  loc_64E1F6: FFreeAd var_B0 = ""
  loc_64E1FD: FLdRfVar var_EA
  loc_64E200: FLdRfVar var_B4
  loc_64E203: FLdI2 var_96
  loc_64E206: FLdPrThis
  loc_64E207: VCallAd Control_ID_Combo1
  loc_64E20A: FStAdFunc var_B0
  loc_64E20D: FLdPr var_B0
  loc_64E210: Set from_stack_2 = Me(from_stack_1)
  loc_64E215: FLdPr var_B4
  loc_64E218:  = Me.ListIndex
  loc_64E21D: FLdI2 var_EA
  loc_64E220: FLdI2 var_96
  loc_64E223: CI4UI1
  loc_64E224: ImpAdLdRf MemVar_74A1BC
  loc_64E227: Ary1LdPr
  loc_64E228: MemStI2 global_14
  loc_64E22B: FFreeAd var_B0 = ""
  loc_64E232: FLdRfVar var_B8
  loc_64E235: FLdRfVar var_B4
  loc_64E238: FLdI2 var_96
  loc_64E23B: FLdPrThis
  loc_64E23C: VCallAd Control_ID_Label1
  loc_64E23F: FStAdFunc var_B0
  loc_64E242: FLdPr var_B0
  loc_64E245: Set from_stack_2 = Me(from_stack_1)
  loc_64E24A: FLdPr var_B4
  loc_64E24D:  = Me.Caption
  loc_64E252: FLdZeroAd var_B8
  loc_64E255: CVarStr var_C8
  loc_64E258: FLdRfVar var_D8
  loc_64E25B: ImpAdCallFPR4  = Trim()
  loc_64E260: FLdRfVar var_D8
  loc_64E263: CStrVarTmp
  loc_64E264: FStStrNoPop var_F0
  loc_64E267: FLdI2 var_96
  loc_64E26A: CI4UI1
  loc_64E26B: ImpAdLdRf MemVar_74A1BC
  loc_64E26E: Ary1LdPr
  loc_64E26F: MemStStrCopy
  loc_64E273: FFree1Str var_F0
  loc_64E276: FFreeAd var_B0 = ""
  loc_64E27D: FFreeVar var_C8 = ""
  loc_64E284: FLdRfVar var_B4
  loc_64E287: FLdI2 var_96
  loc_64E28A: FLdPrThis
  loc_64E28B: VCallAd Control_ID_SSCommand4
  loc_64E28E: FStAdFunc var_B0
  loc_64E291: FLdPr var_B0
  loc_64E294: Set from_stack_2 = Me(from_stack_1)
  loc_64E299: FLdPr var_B4
  loc_64E29C: LateIdLdVar var_C8 DispID_-518 -1
  loc_64E2A3: CStrVarTmp
  loc_64E2A4: FStStrNoPop var_B8
  loc_64E2A7: CI2Str
  loc_64E2A9: FLdI2 var_96
  loc_64E2AC: CI4UI1
  loc_64E2AD: ImpAdLdRf MemVar_74A1BC
  loc_64E2B0: Ary1LdPr
  loc_64E2B1: MemStI2 global_8
  loc_64E2B4: FFree1Str var_B8
  loc_64E2B7: FFreeAd var_B0 = ""
  loc_64E2BE: FFree1Var var_C8 = ""
  loc_64E2C1: FLdRfVar var_B4
  loc_64E2C4: FLdI2 var_96
  loc_64E2C7: FLdPrThis
  loc_64E2C8: VCallAd Control_ID_SSCommand5
  loc_64E2CB: FStAdFunc var_B0
  loc_64E2CE: FLdPr var_B0
  loc_64E2D1: Set from_stack_2 = Me(from_stack_1)
  loc_64E2D6: FLdPr var_B4
  loc_64E2D9: LateIdLdVar var_C8 DispID_-518 -1
  loc_64E2E0: CStrVarTmp
  loc_64E2E1: FStStrNoPop var_B8
  loc_64E2E4: CI2Str
  loc_64E2E6: FLdI2 var_96
  loc_64E2E9: CI4UI1
  loc_64E2EA: ImpAdLdRf MemVar_74A1BC
  loc_64E2ED: Ary1LdPr
  loc_64E2EE: MemStI2 global_10
  loc_64E2F1: FFree1Str var_B8
  loc_64E2F4: FFreeAd var_B0 = ""
  loc_64E2FB: FFree1Var var_C8 = ""
  loc_64E2FE: FLdRfVar var_B4
  loc_64E301: FLdI2 var_96
  loc_64E304: FLdPrThis
  loc_64E305: VCallAd Control_ID_SSCommand6
  loc_64E308: FStAdFunc var_B0
  loc_64E30B: FLdPr var_B0
  loc_64E30E: Set from_stack_2 = Me(from_stack_1)
  loc_64E313: FLdPr var_B4
  loc_64E316: LateIdLdVar var_C8 DispID_-518 -1
  loc_64E31D: CStrVarTmp
  loc_64E31E: FStStrNoPop var_B8
  loc_64E321: LitStr "--"
  loc_64E324: NeStr
  loc_64E326: FFree1Str var_B8
  loc_64E329: FFreeAd var_B0 = ""
  loc_64E330: FFree1Var var_C8 = ""
  loc_64E333: BranchF loc_64E373
  loc_64E336: FLdRfVar var_B4
  loc_64E339: FLdI2 var_96
  loc_64E33C: FLdPrThis
  loc_64E33D: VCallAd Control_ID_SSCommand6
  loc_64E340: FStAdFunc var_B0
  loc_64E343: FLdPr var_B0
  loc_64E346: Set from_stack_2 = Me(from_stack_1)
  loc_64E34B: FLdPr var_B4
  loc_64E34E: LateIdLdVar var_C8 DispID_-518 -1
  loc_64E355: CStrVarTmp
  loc_64E356: FStStrNoPop var_B8
  loc_64E359: CI2Str
  loc_64E35B: FLdI2 var_96
  loc_64E35E: CI4UI1
  loc_64E35F: ImpAdLdRf MemVar_74A1BC
  loc_64E362: Ary1LdPr
  loc_64E363: MemStI2 global_12
  loc_64E366: FFree1Str var_B8
  loc_64E369: FFreeAd var_B0 = ""
  loc_64E370: FFree1Var var_C8 = ""
  loc_64E373: FLdI2 var_96
  loc_64E376: CVarI2 var_A8
  loc_64E379: ImpAdStVar MemVar_74A1D4
  loc_64E37D: FLdI2 var_96
  loc_64E380: LitI2_Byte 1
  loc_64E382: AddI2
  loc_64E383: FStI2 var_96
  loc_64E386: Branch loc_64E16A
  loc_64E389: ExitProcCbHresult
End Function

Private Function Proc_9_15_62ED90() '62ED90
  'Data Table: 436838
  loc_62EBD0: LitI2_Byte 1
  loc_62EBD2: CUI1I2
  loc_62EBD4: FLdRfVar var_86
  loc_62EBD7: FLdPr Me
  loc_62EBDA: MemLdUI1 global_53
  loc_62EBDE: CI2UI1
  loc_62EBE0: LitI2_Byte 1
  loc_62EBE2: AddI2
  loc_62EBE3: CUI1I2
  loc_62EBE5: ForUI1 var_8A
  loc_62EBEB: LitI2_Byte &HFF
  loc_62EBED: FLdRfVar var_94
  loc_62EBF0: FLdUI1
  loc_62EBF4: CI2UI1
  loc_62EBF6: FLdPrThis
  loc_62EBF7: VCallAd Control_ID_Combo1
  loc_62EBFA: FStAdFunc var_90
  loc_62EBFD: FLdPr var_90
  loc_62EC00: Set from_stack_2 = Me(from_stack_1)
  loc_62EC05: FLdPr var_94
  loc_62EC08: Me.Enabled = from_stack_1b
  loc_62EC0D: FFreeAd var_90 = ""
  loc_62EC14: LitVar_TRUE var_A4
  loc_62EC17: PopAdLdVar
  loc_62EC18: FLdRfVar var_94
  loc_62EC1B: FLdUI1
  loc_62EC1F: CI2UI1
  loc_62EC21: FLdPrThis
  loc_62EC22: VCallAd Control_ID_SSCommand4
  loc_62EC25: FStAdFunc var_90
  loc_62EC28: FLdPr var_90
  loc_62EC2B: Set from_stack_2 = Me(from_stack_1)
  loc_62EC30: FLdPr var_94
  loc_62EC33: LateIdSt
  loc_62EC38: FFreeAd var_90 = ""
  loc_62EC3F: LitVar_TRUE var_A4
  loc_62EC42: PopAdLdVar
  loc_62EC43: FLdRfVar var_94
  loc_62EC46: FLdUI1
  loc_62EC4A: CI2UI1
  loc_62EC4C: FLdPrThis
  loc_62EC4D: VCallAd Control_ID_SSCommand5
  loc_62EC50: FStAdFunc var_90
  loc_62EC53: FLdPr var_90
  loc_62EC56: Set from_stack_2 = Me(from_stack_1)
  loc_62EC5B: FLdPr var_94
  loc_62EC5E: LateIdSt
  loc_62EC63: FFreeAd var_90 = ""
  loc_62EC6A: LitVar_TRUE var_A4
  loc_62EC6D: PopAdLdVar
  loc_62EC6E: FLdRfVar var_94
  loc_62EC71: FLdUI1
  loc_62EC75: CI2UI1
  loc_62EC77: FLdPrThis
  loc_62EC78: VCallAd Control_ID_SSCommand6
  loc_62EC7B: FStAdFunc var_90
  loc_62EC7E: FLdPr var_90
  loc_62EC81: Set from_stack_2 = Me(from_stack_1)
  loc_62EC86: FLdPr var_94
  loc_62EC89: LateIdSt
  loc_62EC8E: FFreeAd var_90 = ""
  loc_62EC95: FLdRfVar var_86
  loc_62EC98: NextUI1
  loc_62EC9E: LitVar_TRUE var_A4
  loc_62ECA1: PopAdLdVar
  loc_62ECA2: FLdPrThis
  loc_62ECA3: VCallAd Control_ID_SSCommand1
  loc_62ECA6: FStAdFunc var_90
  loc_62ECA9: FLdPr var_90
  loc_62ECAC: LateIdSt
  loc_62ECB1: FFree1Ad var_90
  loc_62ECB4: LitVar_TRUE var_A4
  loc_62ECB7: PopAdLdVar
  loc_62ECB8: FLdPrThis
  loc_62ECB9: VCallAd Control_ID_SSCommand2
  loc_62ECBC: FStAdFunc var_90
  loc_62ECBF: FLdPr var_90
  loc_62ECC2: LateIdSt
  loc_62ECC7: FFree1Ad var_90
  loc_62ECCA: LitVar_TRUE var_A4
  loc_62ECCD: PopAdLdVar
  loc_62ECCE: FLdPrThis
  loc_62ECCF: VCallAd Control_ID_SSCommand3
  loc_62ECD2: FStAdFunc var_90
  loc_62ECD5: FLdPr var_90
  loc_62ECD8: LateIdSt
  loc_62ECDD: FFree1Ad var_90
  loc_62ECE0: FLdPrThis
  loc_62ECE1: VCallAd Control_ID_SSCommand2
  loc_62ECE4: FStAdFunc var_90
  loc_62ECE7: FLdPr var_90
  loc_62ECEA: LateIdCall
  loc_62ECF2: FFree1Ad var_90
  loc_62ECF5: LitI2_Byte 1
  loc_62ECF7: CUI1I2
  loc_62ECF9: FLdRfVar var_86
  loc_62ECFC: LitI2_Byte &H10
  loc_62ECFE: CUI1I2
  loc_62ED00: ForUI1 var_A8
  loc_62ED06: LitI2_Byte 0
  loc_62ED08: FLdRfVar var_94
  loc_62ED0B: FLdUI1
  loc_62ED0F: CI2UI1
  loc_62ED11: FLdPrThis
  loc_62ED12: VCallAd Control_ID_Check1
  loc_62ED15: FStAdFunc var_90
  loc_62ED18: FLdPr var_90
  loc_62ED1B: Set from_stack_2 = Me(from_stack_1)
  loc_62ED20: FLdPr var_94
  loc_62ED23: Me.Visible = from_stack_1b
  loc_62ED28: FFreeAd var_90 = ""
  loc_62ED2F: FLdRfVar var_86
  loc_62ED32: NextUI1
  loc_62ED38: LitI2_Byte 0
  loc_62ED3A: FLdPrThis
  loc_62ED3B: VCallAd Control_ID_Frame1
  loc_62ED3E: FStAdFunc var_90
  loc_62ED41: FLdPr var_90
  loc_62ED44: Me.Visible = from_stack_1b
  loc_62ED49: FFree1Ad var_90
  loc_62ED4C: LitI2_Byte 0
  loc_62ED4E: FLdPrThis
  loc_62ED4F: VCallAd Control_ID_Label4
  loc_62ED52: FStAdFunc var_90
  loc_62ED55: FLdPr var_90
  loc_62ED58: Me.Visible = from_stack_1b
  loc_62ED5D: FFree1Ad var_90
  loc_62ED60: LitVar_FALSE
  loc_62ED64: PopAdLdVar
  loc_62ED65: FLdPrThis
  loc_62ED66: VCallAd Control_ID_SSCommand7
  loc_62ED69: FStAdFunc var_90
  loc_62ED6C: FLdPr var_90
  loc_62ED6F: LateIdSt
  loc_62ED74: FFree1Ad var_90
  loc_62ED77: LitVar_FALSE
  loc_62ED7B: PopAdLdVar
  loc_62ED7C: FLdPrThis
  loc_62ED7D: VCallAd Control_ID_SSCommand8
  loc_62ED80: FStAdFunc var_90
  loc_62ED83: FLdPr var_90
  loc_62ED86: LateIdSt
  loc_62ED8B: FFree1Ad var_90
  loc_62ED8E: ExitProcHresult
End Function
