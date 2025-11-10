VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fConexion1
  Caption = "Configuración de conexiones entre surtidores y tanques  (1ra. Parte)"
  BackColor = &HC0C0C0&
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form5_0"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 90
  ClientTop = 360
  ClientWidth = 12270
  ClientHeight = 7695
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 720
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 20
    List = "fConexion1.frx":0000
    ItemData = "fConexion1.frx":0018
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 1080
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 21
    List = "fConexion1.frx":0022
    ItemData = "fConexion1.frx":003A
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 1440
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 22
    List = "fConexion1.frx":0044
    ItemData = "fConexion1.frx":005C
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 1800
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 23
    List = "fConexion1.frx":0066
    ItemData = "fConexion1.frx":007E
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 2160
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 24
    List = "fConexion1.frx":0088
    ItemData = "fConexion1.frx":00A0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 2520
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 25
    List = "fConexion1.frx":00AA
    ItemData = "fConexion1.frx":00C2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 2880
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 26
    List = "fConexion1.frx":00CC
    ItemData = "fConexion1.frx":00E4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 3240
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 27
    List = "fConexion1.frx":00EE
    ItemData = "fConexion1.frx":0106
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 9
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 3600
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 28
    List = "fConexion1.frx":0110
    ItemData = "fConexion1.frx":0128
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 10
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 3960
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 29
    List = "fConexion1.frx":0132
    ItemData = "fConexion1.frx":014A
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 11
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 4320
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 30
    List = "fConexion1.frx":0154
    ItemData = "fConexion1.frx":016C
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 12
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 4680
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 31
    List = "fConexion1.frx":0176
    ItemData = "fConexion1.frx":018E
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 13
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 5040
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 32
    List = "fConexion1.frx":0198
    ItemData = "fConexion1.frx":01B0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 14
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 5400
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 33
    List = "fConexion1.frx":01BA
    ItemData = "fConexion1.frx":01D2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 15
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 5760
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 34
    List = "fConexion1.frx":01DC
    ItemData = "fConexion1.frx":01F4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 16
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 6120
    Width = 2100
    Height = 360
    Enabled = 0   'False
    TabIndex = 35
    List = "fConexion1.frx":01FE
    ItemData = "fConexion1.frx":0216
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo3
    Index = 1
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 720
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 36
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
  Begin VB.ComboBox Combo3
    Index = 2
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 1080
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 37
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
  Begin VB.ComboBox Combo3
    Index = 3
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 1440
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 38
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
  Begin VB.ComboBox Combo3
    Index = 4
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 1800
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 39
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
  Begin VB.ComboBox Combo3
    Index = 5
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 2160
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 40
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
  Begin VB.ComboBox Combo3
    Index = 6
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 2520
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 41
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
  Begin VB.ComboBox Combo3
    Index = 7
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 2880
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 42
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
  Begin VB.ComboBox Combo3
    Index = 8
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 3240
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 43
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
  Begin VB.ComboBox Combo3
    Index = 9
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 3600
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 44
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
  Begin VB.ComboBox Combo3
    Index = 10
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 3960
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 45
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
  Begin VB.ComboBox Combo3
    Index = 11
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 4320
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 46
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
  Begin VB.ComboBox Combo3
    Index = 12
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 4680
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 47
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
  Begin VB.ComboBox Combo3
    Index = 13
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 5040
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 48
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
  Begin VB.ComboBox Combo3
    Index = 14
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 5400
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 49
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
  Begin VB.ComboBox Combo3
    Index = 15
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 5760
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 50
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
  Begin VB.ComboBox Combo3
    Index = 16
    BackColor = &HC0FFC0&
    Left = 8400
    Top = 6120
    Width = 2100
    Height = 360
    Text = "Combo3"
    TabIndex = 51
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 16
    Left = 2640
    Top = 6120
    Width = 3500
    Height = 360
    TabIndex = 19
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 15
    Left = 2640
    Top = 5760
    Width = 3500
    Height = 360
    TabIndex = 18
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 14
    Left = 2640
    Top = 5400
    Width = 3500
    Height = 360
    TabIndex = 17
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 13
    Left = 2640
    Top = 5040
    Width = 3500
    Height = 360
    TabIndex = 16
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 12
    Left = 2640
    Top = 4680
    Width = 3500
    Height = 360
    TabIndex = 15
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 11
    Left = 2640
    Top = 4320
    Width = 3500
    Height = 360
    TabIndex = 14
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 10
    Left = 2640
    Top = 3960
    Width = 3500
    Height = 360
    TabIndex = 13
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 9
    Left = 2640
    Top = 3600
    Width = 3500
    Height = 360
    TabIndex = 12
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 8
    Left = 2640
    Top = 3240
    Width = 3500
    Height = 360
    TabIndex = 11
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 7
    Left = 2640
    Top = 2880
    Width = 3500
    Height = 360
    TabIndex = 10
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 6
    Left = 2640
    Top = 2520
    Width = 3500
    Height = 360
    TabIndex = 9
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 5
    Left = 2640
    Top = 2160
    Width = 3500
    Height = 360
    TabIndex = 8
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 4
    Left = 2640
    Top = 1800
    Width = 3500
    Height = 360
    TabIndex = 7
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 3
    Left = 2640
    Top = 1440
    Width = 3500
    Height = 360
    TabIndex = 6
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 2
    Left = 2640
    Top = 1080
    Width = 3500
    Height = 360
    TabIndex = 5
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
  Begin VB.ComboBox Combo4
    Style = 2
    Index = 1
    Left = 2640
    Top = 720
    Width = 3500
    Height = 360
    TabIndex = 4
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 720
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 52
    List = "fConexion1.frx":0220
    ItemData = "fConexion1.frx":0238
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 1080
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 53
    List = "fConexion1.frx":0242
    ItemData = "fConexion1.frx":025A
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 1440
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 54
    List = "fConexion1.frx":0264
    ItemData = "fConexion1.frx":027C
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 1800
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 55
    List = "fConexion1.frx":0286
    ItemData = "fConexion1.frx":029E
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 2160
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 56
    List = "fConexion1.frx":02A8
    ItemData = "fConexion1.frx":02C0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 2520
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 57
    List = "fConexion1.frx":02CA
    ItemData = "fConexion1.frx":02E2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 2880
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 58
    List = "fConexion1.frx":02EC
    ItemData = "fConexion1.frx":0304
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 3240
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 59
    List = "fConexion1.frx":030E
    ItemData = "fConexion1.frx":0326
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 3600
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 60
    List = "fConexion1.frx":0330
    ItemData = "fConexion1.frx":0348
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 3960
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 61
    List = "fConexion1.frx":0352
    ItemData = "fConexion1.frx":036A
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 4320
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 62
    List = "fConexion1.frx":0374
    ItemData = "fConexion1.frx":038C
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 4680
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 63
    List = "fConexion1.frx":0396
    ItemData = "fConexion1.frx":03AE
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 5040
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 64
    List = "fConexion1.frx":03B8
    ItemData = "fConexion1.frx":03D0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 5400
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 65
    List = "fConexion1.frx":03DA
    ItemData = "fConexion1.frx":03F2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 5760
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 66
    List = "fConexion1.frx":03FC
    ItemData = "fConexion1.frx":0414
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 10635
    Top = 6120
    Width = 1560
    Height = 360
    Enabled = 0   'False
    TabIndex = 67
    List = "fConexion1.frx":041E
    ItemData = "fConexion1.frx":0436
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin Threed.SSCommand SSCommand1
    Left = 120
    Top = 6720
    Width = 2500
    Height = 735
    TabIndex = 3
    OleObjectBlob = "fConexion1.frx":0440
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9360
    Top = 6720
    Width = 2745
    Height = 735
    TabIndex = 0
    OleObjectBlob = "fConexion1.frx":04AC
  End
  Begin Threed.SSCommand SSCommand3
    Left = 3120
    Top = 6720
    Width = 2505
    Height = 735
    TabStop = 0   'False
    TabIndex = 2
    OleObjectBlob = "fConexion1.frx":0518
  End
  Begin Threed.SSCommand sscCancel
    Left = 6360
    Top = 6720
    Width = 2505
    Height = 735
    TabIndex = 1
    OleObjectBlob = "fConexion1.frx":057A
  End
  Begin VB.Label Label3
    Caption = "Tanque Prod. Bajo"
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 6240
    Top = 240
    Width = 2100
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
  Begin VB.Label Label3
    Caption = "Tanque Prod. Alto"
    Index = 1
    BackColor = &HC0FFC0&
    ForeColor = &H0&
    Left = 8400
    Top = 240
    Width = 2100
    Height = 405
    TabIndex = 87
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
  Begin VB.Label Label5
    Caption = "Manguera"
    Index = 1
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 560
    Top = 240
    Width = 1500
    Height = 405
    TabIndex = 86
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
  Begin VB.Label Label5
    Caption = "Nombre  del  Producto"
    Index = 0
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 2640
    Top = 240
    Width = 3500
    Height = 405
    TabIndex = 85
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
  Begin VB.Label Label4
    Caption = "Lado  A"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 10635
    Top = 240
    Width = 1560
    Height = 405
    TabIndex = 84
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
    Left = 60
    Top = 6120
    Width = 2500
    Height = 360
    TabIndex = 83
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
    Index = 15
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 5760
    Width = 2500
    Height = 360
    TabIndex = 82
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
    Index = 14
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 5400
    Width = 2500
    Height = 360
    TabIndex = 81
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
    Index = 13
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 5040
    Width = 2500
    Height = 360
    TabIndex = 80
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
    Index = 12
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 4680
    Width = 2500
    Height = 360
    TabIndex = 79
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
    Index = 11
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 4320
    Width = 2500
    Height = 360
    TabIndex = 78
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
    Index = 10
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 3960
    Width = 2500
    Height = 360
    TabIndex = 77
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
    Index = 9
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 3600
    Width = 2500
    Height = 360
    TabIndex = 76
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
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 3240
    Width = 2500
    Height = 360
    TabIndex = 75
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
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 2880
    Width = 2500
    Height = 360
    TabIndex = 74
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
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 2520
    Width = 2500
    Height = 360
    TabIndex = 73
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
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 2160
    Width = 2500
    Height = 360
    TabIndex = 72
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
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 1800
    Width = 2500
    Height = 360
    TabIndex = 71
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
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 1440
    Width = 2500
    Height = 360
    TabIndex = 70
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
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 1080
    Width = 2500
    Height = 360
    TabIndex = 69
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
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 60
    Top = 720
    Width = 2500
    Height = 360
    TabIndex = 68
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

Attribute VB_Name = "fConexion1"


Private Sub SSCommand3_UnknownEvent_8 '6653D4
  'Data Table: 42DBA0
  loc_665124: LitVarI2 var_C8, 1
  loc_665129: FLdRfVar var_94
  loc_66512C: LitVarI2 var_B8, 16
  loc_665131: ForVar var_E8
  loc_665137: FLdRfVar var_F2
  loc_66513A: FLdRfVar var_F0
  loc_66513D: FLdRfVar var_94
  loc_665140: CI2Var
  loc_665141: FLdPrThis
  loc_665142: VCallAd Control_ID_Combo1
  loc_665145: FStAdFunc var_EC
  loc_665148: FLdPr var_EC
  loc_66514B: Set from_stack_2 = Me(from_stack_1)
  loc_665150: FLdPr var_F0
  loc_665153:  = Me.ListIndex
  loc_665158: FLdI2 var_F2
  loc_66515B: LitI2_Byte &HFF
  loc_66515D: NeI2
  loc_66515E: FFreeAd var_EC = ""
  loc_665165: BranchF loc_665174
  loc_665168: LitVarI2 var_A8, 0
  loc_66516D: FStVar var_94
  loc_665171: Branch loc_66517D
  loc_665174: FLdRfVar var_94
  loc_665177: NextStepVar var_E8
  loc_66517D: FLdRfVar var_94
  loc_665180: LitVarI2 var_A8, 0
  loc_665185: HardType
  loc_665186: EqVarBool
  loc_665188: BranchF loc_6653BB
  loc_66518B: ImpAdCallFPR4 Beep()
  loc_665190: FLdRfVar var_210
  loc_665193: LitVar_Missing var_20C
  loc_665196: LitVar_Missing var_1EC
  loc_665199: LitVar_Missing var_1CC
  loc_66519C: LitVar_Missing var_1AC
  loc_66519F: LitVar_Missing var_18C
  loc_6651A2: LitVar_Missing var_16C
  loc_6651A5: LitVar_Missing var_14C
  loc_6651A8: LitVar_Missing var_12C
  loc_6651AB: LitVar_Missing var_11C
  loc_6651AE: LitVar_Missing var_104
  loc_6651B1: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_6651B4: FStStrCopy var_10C
  loc_6651B7: FLdRfVar var_10C
  loc_6651BA: LitI4 &HC
  loc_6651BF: PopTmpLdAdStr var_108
  loc_6651C2: LitI2_Byte &H28
  loc_6651C4: PopTmpLdAd2 var_F2
  loc_6651C7: ImpAdLdRf MemVar_74C7D0
  loc_6651CA: NewIfNullPr clsMsg
  loc_6651CD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6651D2: LitI4 &HD
  loc_6651D7: FLdRfVar var_220
  loc_6651DA: ImpAdCallFPR4  = Chr()
  loc_6651DF: LitI4 &HA
  loc_6651E4: FLdRfVar var_250
  loc_6651E7: ImpAdCallFPR4  = Chr()
  loc_6651EC: FLdRfVar var_3B0
  loc_6651EF: LitVar_Missing var_3AC
  loc_6651F2: LitVar_Missing var_38C
  loc_6651F5: LitVar_Missing var_36C
  loc_6651F8: LitVar_Missing var_34C
  loc_6651FB: LitVar_Missing var_32C
  loc_6651FE: LitVar_Missing var_30C
  loc_665201: LitVar_Missing var_2EC
  loc_665204: LitVar_Missing var_2CC
  loc_665207: LitVar_Missing var_2AC
  loc_66520A: LitVar_Missing var_28C
  loc_66520D: LitStr "Presionando ""CANCEL"" se aborta el proceso."
  loc_665210: FStStrCopy var_26C
  loc_665213: FLdRfVar var_26C
  loc_665216: LitI4 &HE
  loc_66521B: PopTmpLdAdStr var_268
  loc_66521E: LitI2_Byte &H28
  loc_665220: PopTmpLdAd2 var_262
  loc_665223: ImpAdLdRf MemVar_74C7D0
  loc_665226: NewIfNullPr clsMsg
  loc_665229: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66522E: LitI4 &HD
  loc_665233: FLdRfVar var_3E0
  loc_665236: ImpAdCallFPR4  = Chr()
  loc_66523B: LitI4 &HA
  loc_665240: FLdRfVar var_400
  loc_665243: ImpAdCallFPR4  = Chr()
  loc_665248: FLdRfVar var_560
  loc_66524B: LitVar_Missing var_55C
  loc_66524E: LitVar_Missing var_53C
  loc_665251: LitVar_Missing var_51C
  loc_665254: LitVar_Missing var_4FC
  loc_665257: LitVar_Missing var_4DC
  loc_66525A: LitVar_Missing var_4BC
  loc_66525D: LitVar_Missing var_49C
  loc_665260: LitVar_Missing var_47C
  loc_665263: LitVar_Missing var_45C
  loc_665266: LitVar_Missing var_43C
  loc_665269: LitStr "ADVERTENCIA"
  loc_66526C: FStStrCopy var_41C
  loc_66526F: FLdRfVar var_41C
  loc_665272: LitI4 &HD
  loc_665277: PopTmpLdAdStr var_418
  loc_66527A: LitI2_Byte &H28
  loc_66527C: PopTmpLdAd2 var_412
  loc_66527F: ImpAdLdRf MemVar_74C7D0
  loc_665282: NewIfNullPr clsMsg
  loc_665285: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66528A: LitVar_Missing var_5B0
  loc_66528D: LitVar_Missing var_590
  loc_665290: FLdZeroAd var_560
  loc_665293: CVarStr var_570
  loc_665296: LitI4 &H131
  loc_66529B: FLdZeroAd var_210
  loc_66529E: CVarStr var_230
  loc_6652A1: FLdRfVar var_220
  loc_6652A4: ConcatVar var_240
  loc_6652A8: FLdRfVar var_250
  loc_6652AB: ConcatVar var_260
  loc_6652AF: FLdZeroAd var_3B0
  loc_6652B2: CVarStr var_3C0
  loc_6652B5: ConcatVar var_3D0
  loc_6652B9: FLdRfVar var_3E0
  loc_6652BC: ConcatVar var_3F0
  loc_6652C0: FLdRfVar var_400
  loc_6652C3: ConcatVar var_410
  loc_6652C7: ImpAdCallI2 MsgBox(, , , , )
  loc_6652CC: CVarI4
  loc_6652D0: FStVar var_94
  loc_6652D4: FFreeStr var_10C = "": var_26C = ""
  loc_6652DD: FFreeVar var_43C = "": var_45C = "": var_47C = "": var_49C = "": var_4BC = "": var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_410 = "": var_570 = "": var_590 = "": var_5B0 = "": var_104 = "": var_11C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_230 = "": var_220 = "": var_240 = "": var_250 = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_260 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = ""
  loc_665338: FLdRfVar var_94
  loc_66533B: LitVarI4
  loc_665343: HardType
  loc_665344: EqVarBool
  loc_665346: BranchF loc_6653BB
  loc_665349: ImpAdLdRf MemVar_74C174
  loc_66534C: PopTmpLdAdStr var_108
  loc_66534F: Erase
  loc_665350: ImpAdLdRf MemVar_74C14C
  loc_665353: PopTmpLdAdStr var_268
  loc_665356: Erase
  loc_665357: ImpAdLdRf MemVar_74C19C
  loc_66535A: PopTmpLdAdStr var_418
  loc_66535D: Erase
  loc_66535E: LitVarI2 var_C8, 1
  loc_665363: FLdRfVar var_94
  loc_665366: ImpAdLdUI1
  loc_66536A: CVarUI1
  loc_66536E: ForVar var_5E0
  loc_665374: LitI2_Byte 0
  loc_665376: CUI1I2
  loc_665378: FLdRfVar var_96
  loc_66537B: FLdRfVar var_94
  loc_66537E: CI4Var
  loc_665380: ImpAdLdRf MemVar_74C0FC
  loc_665383: Ary1LdUI1
  loc_665385: ForUI1 var_5E4
  loc_66538B: LitI2_Byte 1
  loc_66538D: CUI1I2
  loc_66538F: FLdRfVar var_94
  loc_665392: CI4Var
  loc_665394: FLdUI1
  loc_665398: CI4UI1
  loc_665399: ImpAdLdRf MemVar_74C12C
  loc_66539C: AryLdPr
  loc_66539F: MemStUI1
  loc_6653A3: FLdRfVar var_96
  loc_6653A6: NextUI1
  loc_6653AC: FLdRfVar var_94
  loc_6653AF: NextStepVar var_5E0
  loc_6653B5: Call Form_Activate()
  loc_6653BA: ExitProcHresult
  loc_6653BB: FLdPrThis
  loc_6653BC: VCallAd Control_ID_SSCommand2
  loc_6653BF: FStAdFunc var_EC
  loc_6653C2: FLdPr var_EC
  loc_6653C5: LateIdCall
  loc_6653CD: FFree1Ad var_EC
  loc_6653D0: ExitProcHresult
End Sub

Private Sub Combo3_LostFocus(arg_C) '62A738
  'Data Table: 42DBA0
  loc_62A5B8: LitI2_Byte 0
  loc_62A5BA: CStrBool
  loc_62A5BC: FStStr var_A4
  loc_62A5BF: LitStr vbNullString
  loc_62A5C2: FStStrCopy var_9C
  loc_62A5C5: FLdPr Me
  loc_62A5C8: MemLdRfVar from_stack_1.global_52
  loc_62A5CB: CBoolVarNull
  loc_62A5CD: BranchF loc_62A735
  loc_62A5D0: FLdRfVar var_AE
  loc_62A5D3: FLdRfVar var_AC
  loc_62A5D6: ILdI2 arg_C
  loc_62A5D9: FLdPrThis
  loc_62A5DA: VCallAd Control_ID_Combo3
  loc_62A5DD: FStAdFunc var_A8
  loc_62A5E0: FLdPr var_A8
  loc_62A5E3: Set from_stack_2 = Me(from_stack_1)
  loc_62A5E8: FLdPr var_AC
  loc_62A5EB:  = Me.ListIndex
  loc_62A5F0: FLdI2 var_AE
  loc_62A5F3: LitI2_Byte &HFF
  loc_62A5F5: NeI2
  loc_62A5F6: FFreeAd var_A8 = ""
  loc_62A5FD: BranchF loc_62A735
  loc_62A600: ILdI2 arg_C
  loc_62A603: CI4UI1
  loc_62A604: LitI4 0
  loc_62A609: FLdPr Me
  loc_62A60C: MemLdRfVar from_stack_1.global_104
  loc_62A60F: AryLdPr
  loc_62A612: MemLdUI1 global_0
  loc_62A616: CVarUI1
  loc_62A61A: FLdRfVar var_94
  loc_62A61D: ILdI2 arg_C
  loc_62A620: CI4UI1
  loc_62A621: LitI4 1
  loc_62A626: FLdPr Me
  loc_62A629: MemLdRfVar from_stack_1.global_104
  loc_62A62C: AryLdPr
  loc_62A62F: MemLdUI1 global_0
  loc_62A633: CVarUI1
  loc_62A637: ForVar var_100
  loc_62A63D: LitStr vbNullString
  loc_62A640: FLdRfVar var_94
  loc_62A643: CI4Var
  loc_62A645: ImpAdLdRf MemVar_74C0AC
  loc_62A648: Ary1StStrCopy
  loc_62A649: FLdRfVar var_104
  loc_62A64C: FLdRfVar var_AC
  loc_62A64F: ILdI2 arg_C
  loc_62A652: FLdPrThis
  loc_62A653: VCallAd Control_ID_Combo3
  loc_62A656: FStAdFunc var_A8
  loc_62A659: FLdPr var_A8
  loc_62A65C: Set from_stack_2 = Me(from_stack_1)
  loc_62A661: FLdPr var_AC
  loc_62A664:  = Me.Text
  loc_62A669: FLdZeroAd var_104
  loc_62A66C: PopTmpLdAdStr
  loc_62A670: ImpAdCallI2 Proc_158_5_604120()
  loc_62A675: FStI2 var_98
  loc_62A678: FFree1Str var_108
  loc_62A67B: FFreeAd var_A8 = ""
  loc_62A682: LitI2_Byte 0
  loc_62A684: CUI1I2
  loc_62A686: FLdRfVar var_96
  loc_62A689: LitI2_Byte 2
  loc_62A68B: CUI1I2
  loc_62A68D: ForUI1 var_10C
  loc_62A693: FLdI2 var_98
  loc_62A696: CI4UI1
  loc_62A697: FLdUI1
  loc_62A69B: CI4UI1
  loc_62A69C: ImpAdLdRf MemVar_74C23C
  loc_62A69F: AryLdPr
  loc_62A6A2: MemLdUI1 global_0
  loc_62A6A6: FLdRfVar var_94
  loc_62A6A9: CI4Var
  loc_62A6AB: ILdI2 arg_C
  loc_62A6AE: CI4UI1
  loc_62A6AF: FLdPr Me
  loc_62A6B2: MemLdRfVar from_stack_1.global_136
  loc_62A6B5: Ary1LdUI1
  loc_62A6B7: CI4UI1
  loc_62A6B8: FLdUI1
  loc_62A6BC: CI4UI1
  loc_62A6BD: ImpAdLdRf MemVar_74C174
  loc_62A6C0: AryLdPr
  loc_62A6C3: MemStUI1
  loc_62A6C7: FLdRfVar var_96
  loc_62A6CA: NextUI1
  loc_62A6D0: FLdRfVar var_AE
  loc_62A6D3: FLdRfVar var_104
  loc_62A6D6: FLdRfVar var_AC
  loc_62A6D9: ILdI2 arg_C
  loc_62A6DC: FLdPrThis
  loc_62A6DD: VCallAd Control_ID_Combo4
  loc_62A6E0: FStAdFunc var_A8
  loc_62A6E3: FLdPr var_A8
  loc_62A6E6: Set from_stack_2 = Me(from_stack_1)
  loc_62A6EB: FLdPr var_AC
  loc_62A6EE:  = Me.Text
  loc_62A6F3: ILdRf var_104
  loc_62A6F6: ImpAdLdRf MemVar_74A220
  loc_62A6F9: NewIfNullPr clsProducts
  loc_62A701: FLdI2 var_AE
  loc_62A704: CUI1I2
  loc_62A706: FLdRfVar var_94
  loc_62A709: CI4Var
  loc_62A70B: ILdI2 arg_C
  loc_62A70E: CI4UI1
  loc_62A70F: FLdPr Me
  loc_62A712: MemLdRfVar from_stack_1.global_136
  loc_62A715: Ary1LdUI1
  loc_62A717: CI4UI1
  loc_62A718: ImpAdLdRf MemVar_74C12C
  loc_62A71B: AryLdPr
  loc_62A71E: MemStUI1
  loc_62A722: FFree1Str var_104
  loc_62A725: FFreeAd var_A8 = ""
  loc_62A72C: FLdRfVar var_94
  loc_62A72F: NextStepVar var_100
  loc_62A735: ExitProcHresult
End Sub

Private Sub Combo4_Click(arg_C) '65A138
  'Data Table: 42DBA0
  loc_659E80: FLdRfVar var_8E
  loc_659E83: FLdRfVar var_8C
  loc_659E86: ILdI2 arg_C
  loc_659E89: FLdPrThis
  loc_659E8A: VCallAd Control_ID_Combo4
  loc_659E8D: FStAdFunc var_88
  loc_659E90: FLdPr var_88
  loc_659E93: Set from_stack_2 = Me(from_stack_1)
  loc_659E98: FLdPr var_8C
  loc_659E9B:  = Me.ListIndex
  loc_659EA0: FLdI2 var_8E
  loc_659EA3: LitI2_Byte 0
  loc_659EA5: GeI2
  loc_659EA6: FFreeAd var_88 = ""
  loc_659EAD: BranchF loc_65A135
  loc_659EB0: FLdRfVar var_8E
  loc_659EB3: ILdRf arg_C
  loc_659EB6: from_stack_2v = Proc_116_20_5E8178(from_stack_1v)
  loc_659EBB: FLdI2 var_8E
  loc_659EBE: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_659EC3: BranchF loc_659F4E
  loc_659EC6: FLdRfVar var_96
  loc_659EC9: FLdRfVar var_8E
  loc_659ECC: FLdRfVar var_94
  loc_659ECF: FLdRfVar var_8C
  loc_659ED2: ILdI2 arg_C
  loc_659ED5: FLdPrThis
  loc_659ED6: VCallAd Control_ID_Combo4
  loc_659ED9: FStAdFunc var_88
  loc_659EDC: FLdPr var_88
  loc_659EDF: Set from_stack_2 = Me(from_stack_1)
  loc_659EE4: FLdPr var_8C
  loc_659EE7:  = Me.Text
  loc_659EEC: ILdRf var_94
  loc_659EEF: ImpAdLdRf MemVar_74A220
  loc_659EF2: NewIfNullPr clsProducts
  loc_659EFA: FLdI2 var_8E
  loc_659EFD: ImpAdLdRf MemVar_74A220
  loc_659F00: NewIfNullPr clsProducts
  loc_659F03:  = clsProducts.hWnd
  loc_659F08: FLdI2 var_96
  loc_659F0B: NotI4
  loc_659F0C: FFree1Str var_94
  loc_659F0F: FFreeAd var_88 = ""
  loc_659F16: BranchF loc_659F4B
  loc_659F19: LitVar_Missing var_118
  loc_659F1C: LitVar_Missing var_F8
  loc_659F1F: LitVar_Missing var_D8
  loc_659F22: LitI4 &H40
  loc_659F27: LitVarStr var_A8, "Producto incorrecto para tipo de surtidor. Surtidor GNC"
  loc_659F2C: FStVarCopyObj var_B8
  loc_659F2F: FLdRfVar var_B8
  loc_659F32: ImpAdCallFPR4 MsgBox(, , , , )
  loc_659F37: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_659F42: ILdRf arg_C
  loc_659F45: from_stack_2v = Proc_116_19_5F0AF4(from_stack_1v)
  loc_659F4A: ExitProcHresult
  loc_659F4B: Branch loc_659FD2
  loc_659F4E: FLdRfVar var_96
  loc_659F51: FLdRfVar var_8E
  loc_659F54: FLdRfVar var_94
  loc_659F57: FLdRfVar var_8C
  loc_659F5A: ILdI2 arg_C
  loc_659F5D: FLdPrThis
  loc_659F5E: VCallAd Control_ID_Combo4
  loc_659F61: FStAdFunc var_88
  loc_659F64: FLdPr var_88
  loc_659F67: Set from_stack_2 = Me(from_stack_1)
  loc_659F6C: FLdPr var_8C
  loc_659F6F:  = Me.Text
  loc_659F74: ILdRf var_94
  loc_659F77: ImpAdLdRf MemVar_74A220
  loc_659F7A: NewIfNullPr clsProducts
  loc_659F82: FLdI2 var_8E
  loc_659F85: ImpAdLdRf MemVar_74A220
  loc_659F88: NewIfNullPr clsProducts
  loc_659F8B:  = clsProducts.hWnd
  loc_659F90: FLdI2 var_96
  loc_659F93: FFree1Str var_94
  loc_659F96: FFreeAd var_88 = ""
  loc_659F9D: BranchF loc_659FD2
  loc_659FA0: LitVar_Missing var_118
  loc_659FA3: LitVar_Missing var_F8
  loc_659FA6: LitVar_Missing var_D8
  loc_659FA9: LitI4 &H40
  loc_659FAE: LitVarStr var_A8, "Producto incorrecto para tipo de surtidor. Surtidor No GNC"
  loc_659FB3: FStVarCopyObj var_B8
  loc_659FB6: FLdRfVar var_B8
  loc_659FB9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_659FBE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_659FC9: ILdRf arg_C
  loc_659FCC: from_stack_2v = Proc_116_19_5F0AF4(from_stack_1v)
  loc_659FD1: ExitProcHresult
  loc_659FD2: FLdRfVar var_B8
  loc_659FD5: FLdRfVar var_94
  loc_659FD8: FLdRfVar var_8C
  loc_659FDB: ILdI2 arg_C
  loc_659FDE: FLdPrThis
  loc_659FDF: VCallAd Control_ID_Combo4
  loc_659FE2: FStAdFunc var_88
  loc_659FE5: FLdPr var_88
  loc_659FE8: Set from_stack_2 = Me(from_stack_1)
  loc_659FED: FLdPr var_8C
  loc_659FF0:  = Me.Text
  loc_659FF5: FLdZeroAd var_94
  loc_659FF8: PopTmpLdAdStr
  loc_659FFC: from_stack_2v = TieneTanque(from_stack_1v)
  loc_65A001: FLdRfVar var_B8
  loc_65A004: NotVar var_D8
  loc_65A008: CBoolVarNull
  loc_65A00A: FFree1Str var_11C
  loc_65A00D: FFreeAd var_88 = ""
  loc_65A014: FFree1Var var_B8 = ""
  loc_65A017: BranchF loc_65A12A
  loc_65A01A: FLdRfVar var_11C
  loc_65A01D: LitVar_Missing var_1E0
  loc_65A020: LitVar_Missing var_1C0
  loc_65A023: LitVar_Missing var_1A0
  loc_65A026: LitVar_Missing var_180
  loc_65A029: LitVar_Missing var_160
  loc_65A02C: LitVar_Missing var_140
  loc_65A02F: LitVar_Missing var_118
  loc_65A032: LitVar_Missing var_F8
  loc_65A035: LitVar_Missing var_D8
  loc_65A038: LitVar_Missing var_B8
  loc_65A03B: LitStr "Este producto no tiene tanque, no se puede asignar a ningun"
  loc_65A03E: FStStrCopy var_94
  loc_65A041: FLdRfVar var_94
  loc_65A044: LitI4 &H14
  loc_65A049: PopTmpLdAdStr var_120
  loc_65A04C: LitI2_Byte &H28
  loc_65A04E: PopTmpLdAd2 var_8E
  loc_65A051: ImpAdLdRf MemVar_74C7D0
  loc_65A054: NewIfNullPr clsMsg
  loc_65A057: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65A05C: FLdRfVar var_330
  loc_65A05F: LitVar_Missing var_32C
  loc_65A062: LitVar_Missing var_30C
  loc_65A065: LitVar_Missing var_2EC
  loc_65A068: LitVar_Missing var_2CC
  loc_65A06B: LitVar_Missing var_2AC
  loc_65A06E: LitVar_Missing var_28C
  loc_65A071: LitVar_Missing var_26C
  loc_65A074: LitVar_Missing var_24C
  loc_65A077: LitVar_Missing var_22C
  loc_65A07A: LitVar_Missing var_20C
  loc_65A07D: LitStr "Configuración"
  loc_65A080: FStStrCopy var_1EC
  loc_65A083: FLdRfVar var_1EC
  loc_65A086: LitI4 &H15
  loc_65A08B: PopTmpLdAdStr var_1E8
  loc_65A08E: LitI2_Byte &H28
  loc_65A090: PopTmpLdAd2 var_96
  loc_65A093: ImpAdLdRf MemVar_74C7D0
  loc_65A096: NewIfNullPr clsMsg
  loc_65A099: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65A09E: LitVar_Missing var_390
  loc_65A0A1: LitVar_Missing var_370
  loc_65A0A4: FLdZeroAd var_330
  loc_65A0A7: CVarStr var_350
  loc_65A0AA: LitI4 &H40
  loc_65A0AF: ILdRf var_11C
  loc_65A0B2: LitStr " "
  loc_65A0B5: ConcatStr
  loc_65A0B6: FStStrNoPop var_1E4
  loc_65A0B9: ImpAdLdI4 MemVar_74BEDC
  loc_65A0BC: ConcatStr
  loc_65A0BD: CVarStr var_340
  loc_65A0C0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65A0C5: FFreeStr var_94 = "": var_11C = "": var_1E4 = ""
  loc_65A0D0: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_340 = "": var_350 = "": var_370 = ""
  loc_65A103: LitI2_Byte &HFF
  loc_65A105: FLdRfVar var_8C
  loc_65A108: ILdI2 arg_C
  loc_65A10B: FLdPrThis
  loc_65A10C: VCallAd Control_ID_Combo4
  loc_65A10F: FStAdFunc var_88
  loc_65A112: FLdPr var_88
  loc_65A115: Set from_stack_2 = Me(from_stack_1)
  loc_65A11A: FLdPr var_8C
  loc_65A11D: Me.ListIndex = from_stack_1
  loc_65A122: FFreeAd var_88 = ""
  loc_65A129: ExitProcHresult
  loc_65A12A: ILdI2 arg_C
  loc_65A12D: PopTmpLdAd2 var_8E
  loc_65A130: Call Combo1_DropDown(from_stack_1v)
  loc_65A135: ExitProcHresult
  loc_65A136: FLdI2 arg_2800
End Sub

Private Sub Form_Load() '6A5D80
  'Data Table: 42DBA0
  loc_6A5670: FLdRfVar var_1D4
  loc_6A5673: LitVar_Missing var_1D0
  loc_6A5676: LitVar_Missing var_1B0
  loc_6A5679: LitVar_Missing var_190
  loc_6A567C: LitVar_Missing var_170
  loc_6A567F: LitVar_Missing var_150
  loc_6A5682: LitVar_Missing var_130
  loc_6A5685: LitVar_Missing var_110
  loc_6A5688: LitVar_Missing var_F0
  loc_6A568B: LitVar_Missing var_D0
  loc_6A568E: LitVar_Missing var_B0
  loc_6A5691: LitStr "Configuración de conexiones entre surtidores y tanques  (1ra. Parte)"
  loc_6A5694: FStStrCopy var_90
  loc_6A5697: FLdRfVar var_90
  loc_6A569A: LitI4 1
  loc_6A569F: PopTmpLdAdStr var_8C
  loc_6A56A2: LitI2_Byte &H28
  loc_6A56A4: PopTmpLdAd2 var_88
  loc_6A56A7: ImpAdLdRf MemVar_74C7D0
  loc_6A56AA: NewIfNullPr clsMsg
  loc_6A56AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A56B2: ILdRf var_1D4
  loc_6A56B5: FLdPr Me
  loc_6A56B8: Me.Caption = from_stack_1
  loc_6A56BD: FFreeStr var_90 = ""
  loc_6A56C4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A56DB: FLdRfVar var_1D4
  loc_6A56DE: LitVar_Missing var_1D0
  loc_6A56E1: LitVar_Missing var_1B0
  loc_6A56E4: LitVar_Missing var_190
  loc_6A56E7: LitVar_Missing var_170
  loc_6A56EA: LitVar_Missing var_150
  loc_6A56ED: LitVar_Missing var_130
  loc_6A56F0: LitVar_Missing var_110
  loc_6A56F3: LitVar_Missing var_F0
  loc_6A56F6: LitVar_Missing var_D0
  loc_6A56F9: LitVar_Missing var_B0
  loc_6A56FC: LitStr "Manguera"
  loc_6A56FF: FStStrCopy var_90
  loc_6A5702: FLdRfVar var_90
  loc_6A5705: LitI4 &H16
  loc_6A570A: PopTmpLdAdStr var_8C
  loc_6A570D: LitI2_Byte &H28
  loc_6A570F: PopTmpLdAd2 var_88
  loc_6A5712: ImpAdLdRf MemVar_74C7D0
  loc_6A5715: NewIfNullPr clsMsg
  loc_6A5718: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A571D: ILdRf var_1D4
  loc_6A5720: FLdRfVar var_1DC
  loc_6A5723: LitI2_Byte 1
  loc_6A5725: FLdPrThis
  loc_6A5726: VCallAd Control_ID_Label5
  loc_6A5729: FStAdFunc var_1D8
  loc_6A572C: FLdPr var_1D8
  loc_6A572F: Set from_stack_2 = Me(from_stack_1)
  loc_6A5734: FLdPr var_1DC
  loc_6A5737: Me.Caption = from_stack_1
  loc_6A573C: FFreeStr var_90 = ""
  loc_6A5743: FFreeAd var_1D8 = ""
  loc_6A574A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5761: FLdRfVar var_1D4
  loc_6A5764: LitVar_Missing var_1D0
  loc_6A5767: LitVar_Missing var_1B0
  loc_6A576A: LitVar_Missing var_190
  loc_6A576D: LitVar_Missing var_170
  loc_6A5770: LitVar_Missing var_150
  loc_6A5773: LitVar_Missing var_130
  loc_6A5776: LitVar_Missing var_110
  loc_6A5779: LitVar_Missing var_F0
  loc_6A577C: LitVar_Missing var_D0
  loc_6A577F: LitVar_Missing var_B0
  loc_6A5782: LitStr "Nombre del Produto"
  loc_6A5785: FStStrCopy var_90
  loc_6A5788: FLdRfVar var_90
  loc_6A578B: LitI4 2
  loc_6A5790: PopTmpLdAdStr var_8C
  loc_6A5793: LitI2_Byte &H28
  loc_6A5795: PopTmpLdAd2 var_88
  loc_6A5798: ImpAdLdRf MemVar_74C7D0
  loc_6A579B: NewIfNullPr clsMsg
  loc_6A579E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A57A3: ILdRf var_1D4
  loc_6A57A6: FLdRfVar var_1DC
  loc_6A57A9: LitI2_Byte 0
  loc_6A57AB: FLdPrThis
  loc_6A57AC: VCallAd Control_ID_Label5
  loc_6A57AF: FStAdFunc var_1D8
  loc_6A57B2: FLdPr var_1D8
  loc_6A57B5: Set from_stack_2 = Me(from_stack_1)
  loc_6A57BA: FLdPr var_1DC
  loc_6A57BD: Me.Caption = from_stack_1
  loc_6A57C2: FFreeStr var_90 = ""
  loc_6A57C9: FFreeAd var_1D8 = ""
  loc_6A57D0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A57E7: FLdRfVar var_1D4
  loc_6A57EA: LitVar_Missing var_1D0
  loc_6A57ED: LitVar_Missing var_1B0
  loc_6A57F0: LitVar_Missing var_190
  loc_6A57F3: LitVar_Missing var_170
  loc_6A57F6: LitVar_Missing var_150
  loc_6A57F9: LitVar_Missing var_130
  loc_6A57FC: LitVar_Missing var_110
  loc_6A57FF: LitVar_Missing var_F0
  loc_6A5802: LitVar_Missing var_D0
  loc_6A5805: LitVar_Missing var_B0
  loc_6A5808: LitStr "Tanque Prod. Bajo"
  loc_6A580B: FStStrCopy var_90
  loc_6A580E: FLdRfVar var_90
  loc_6A5811: LitI4 3
  loc_6A5816: PopTmpLdAdStr var_8C
  loc_6A5819: LitI2_Byte &H28
  loc_6A581B: PopTmpLdAd2 var_88
  loc_6A581E: ImpAdLdRf MemVar_74C7D0
  loc_6A5821: NewIfNullPr clsMsg
  loc_6A5824: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5829: ILdRf var_1D4
  loc_6A582C: FLdRfVar var_1DC
  loc_6A582F: LitI2_Byte 0
  loc_6A5831: FLdPrThis
  loc_6A5832: VCallAd Control_ID_Label3
  loc_6A5835: FStAdFunc var_1D8
  loc_6A5838: FLdPr var_1D8
  loc_6A583B: Set from_stack_2 = Me(from_stack_1)
  loc_6A5840: FLdPr var_1DC
  loc_6A5843: Me.Caption = from_stack_1
  loc_6A5848: FFreeStr var_90 = ""
  loc_6A584F: FFreeAd var_1D8 = ""
  loc_6A5856: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A586D: FLdRfVar var_1D4
  loc_6A5870: LitVar_Missing var_1D0
  loc_6A5873: LitVar_Missing var_1B0
  loc_6A5876: LitVar_Missing var_190
  loc_6A5879: LitVar_Missing var_170
  loc_6A587C: LitVar_Missing var_150
  loc_6A587F: LitVar_Missing var_130
  loc_6A5882: LitVar_Missing var_110
  loc_6A5885: LitVar_Missing var_F0
  loc_6A5888: LitVar_Missing var_D0
  loc_6A588B: LitVar_Missing var_B0
  loc_6A588E: LitStr "Tanque Prod. Alto"
  loc_6A5891: FStStrCopy var_90
  loc_6A5894: FLdRfVar var_90
  loc_6A5897: LitI4 &H17
  loc_6A589C: PopTmpLdAdStr var_8C
  loc_6A589F: LitI2_Byte &H28
  loc_6A58A1: PopTmpLdAd2 var_88
  loc_6A58A4: ImpAdLdRf MemVar_74C7D0
  loc_6A58A7: NewIfNullPr clsMsg
  loc_6A58AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A58AF: ILdRf var_1D4
  loc_6A58B2: FLdRfVar var_1DC
  loc_6A58B5: LitI2_Byte 1
  loc_6A58B7: FLdPrThis
  loc_6A58B8: VCallAd Control_ID_Label3
  loc_6A58BB: FStAdFunc var_1D8
  loc_6A58BE: FLdPr var_1D8
  loc_6A58C1: Set from_stack_2 = Me(from_stack_1)
  loc_6A58C6: FLdPr var_1DC
  loc_6A58C9: Me.Caption = from_stack_1
  loc_6A58CE: FFreeStr var_90 = ""
  loc_6A58D5: FFreeAd var_1D8 = ""
  loc_6A58DC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A58F3: FLdRfVar var_1D4
  loc_6A58F6: LitVar_Missing var_1D0
  loc_6A58F9: LitVar_Missing var_1B0
  loc_6A58FC: LitVar_Missing var_190
  loc_6A58FF: LitVar_Missing var_170
  loc_6A5902: LitVar_Missing var_150
  loc_6A5905: LitVar_Missing var_130
  loc_6A5908: LitVar_Missing var_110
  loc_6A590B: LitVar_Missing var_F0
  loc_6A590E: LitVar_Missing var_D0
  loc_6A5911: LitVar_Missing var_B0
  loc_6A5914: LitStr "Lado A"
  loc_6A5917: FStStrCopy var_90
  loc_6A591A: FLdRfVar var_90
  loc_6A591D: LitI4 4
  loc_6A5922: PopTmpLdAdStr var_8C
  loc_6A5925: LitI2_Byte &H28
  loc_6A5927: PopTmpLdAd2 var_88
  loc_6A592A: ImpAdLdRf MemVar_74C7D0
  loc_6A592D: NewIfNullPr clsMsg
  loc_6A5930: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5935: ILdRf var_1D4
  loc_6A5938: FLdPrThis
  loc_6A5939: VCallAd Control_ID_Label4
  loc_6A593C: FStAdFunc var_1D8
  loc_6A593F: FLdPr var_1D8
  loc_6A5942: Me.Caption = from_stack_1
  loc_6A5947: FFreeStr var_90 = ""
  loc_6A594E: FFree1Ad var_1D8
  loc_6A5951: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5968: FLdRfVar var_1D4
  loc_6A596B: LitVar_Missing var_1D0
  loc_6A596E: LitVar_Missing var_1B0
  loc_6A5971: LitVar_Missing var_190
  loc_6A5974: LitVar_Missing var_170
  loc_6A5977: LitVar_Missing var_150
  loc_6A597A: LitVar_Missing var_130
  loc_6A597D: LitVar_Missing var_110
  loc_6A5980: LitVar_Missing var_F0
  loc_6A5983: LitVar_Missing var_D0
  loc_6A5986: LitVar_Missing var_B0
  loc_6A5989: LitStr "Página &Anterior"
  loc_6A598C: FStStrCopy var_90
  loc_6A598F: FLdRfVar var_90
  loc_6A5992: LitI4 5
  loc_6A5997: PopTmpLdAdStr var_8C
  loc_6A599A: LitI2_Byte &H28
  loc_6A599C: PopTmpLdAd2 var_88
  loc_6A599F: ImpAdLdRf MemVar_74C7D0
  loc_6A59A2: NewIfNullPr clsMsg
  loc_6A59A5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A59AA: FLdZeroAd var_1D4
  loc_6A59AD: CVarStr var_1EC
  loc_6A59B0: PopAdLdVar
  loc_6A59B1: FLdPrThis
  loc_6A59B2: VCallAd Control_ID_SSCommand1
  loc_6A59B5: FStAdFunc var_1D8
  loc_6A59B8: FLdPr var_1D8
  loc_6A59BB: LateIdSt
  loc_6A59C0: FFree1Str var_90
  loc_6A59C3: FFree1Ad var_1D8
  loc_6A59C6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A59DF: FLdRfVar var_1D4
  loc_6A59E2: LitVar_Missing var_1D0
  loc_6A59E5: LitVar_Missing var_1B0
  loc_6A59E8: LitVar_Missing var_190
  loc_6A59EB: LitVar_Missing var_170
  loc_6A59EE: LitVar_Missing var_150
  loc_6A59F1: LitVar_Missing var_130
  loc_6A59F4: LitVar_Missing var_110
  loc_6A59F7: LitVar_Missing var_F0
  loc_6A59FA: LitVar_Missing var_D0
  loc_6A59FD: LitVar_Missing var_B0
  loc_6A5A00: LitStr "&Reset"
  loc_6A5A03: FStStrCopy var_90
  loc_6A5A06: FLdRfVar var_90
  loc_6A5A09: LitI4 6
  loc_6A5A0E: PopTmpLdAdStr var_8C
  loc_6A5A11: LitI2_Byte &H28
  loc_6A5A13: PopTmpLdAd2 var_88
  loc_6A5A16: ImpAdLdRf MemVar_74C7D0
  loc_6A5A19: NewIfNullPr clsMsg
  loc_6A5A1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5A21: FLdZeroAd var_1D4
  loc_6A5A24: CVarStr var_1EC
  loc_6A5A27: PopAdLdVar
  loc_6A5A28: FLdPrThis
  loc_6A5A29: VCallAd Control_ID_SSCommand3
  loc_6A5A2C: FStAdFunc var_1D8
  loc_6A5A2F: FLdPr var_1D8
  loc_6A5A32: LateIdSt
  loc_6A5A37: FFree1Str var_90
  loc_6A5A3A: FFree1Ad var_1D8
  loc_6A5A3D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A5A56: FLdRfVar var_1D4
  loc_6A5A59: LitVar_Missing var_1D0
  loc_6A5A5C: LitVar_Missing var_1B0
  loc_6A5A5F: LitVar_Missing var_190
  loc_6A5A62: LitVar_Missing var_170
  loc_6A5A65: LitVar_Missing var_150
  loc_6A5A68: LitVar_Missing var_130
  loc_6A5A6B: LitVar_Missing var_110
  loc_6A5A6E: LitVar_Missing var_F0
  loc_6A5A71: LitVar_Missing var_D0
  loc_6A5A74: LitVar_Missing var_B0
  loc_6A5A77: LitStr "&Cancelar"
  loc_6A5A7A: FStStrCopy var_90
  loc_6A5A7D: FLdRfVar var_90
  loc_6A5A80: LitI4 7
  loc_6A5A85: PopTmpLdAdStr var_8C
  loc_6A5A88: LitI2_Byte &H28
  loc_6A5A8A: PopTmpLdAd2 var_88
  loc_6A5A8D: ImpAdLdRf MemVar_74C7D0
  loc_6A5A90: NewIfNullPr clsMsg
  loc_6A5A93: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5A98: FLdZeroAd var_1D4
  loc_6A5A9B: CVarStr var_1EC
  loc_6A5A9E: PopAdLdVar
  loc_6A5A9F: FLdPrThis
  loc_6A5AA0: VCallAd Control_ID_sscCancel
  loc_6A5AA3: FStAdFunc var_1D8
  loc_6A5AA6: FLdPr var_1D8
  loc_6A5AA9: LateIdSt
  loc_6A5AAE: FFree1Str var_90
  loc_6A5AB1: FFree1Ad var_1D8
  loc_6A5AB4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A5ACD: FLdRfVar var_1D4
  loc_6A5AD0: LitVar_Missing var_1D0
  loc_6A5AD3: LitVar_Missing var_1B0
  loc_6A5AD6: LitVar_Missing var_190
  loc_6A5AD9: LitVar_Missing var_170
  loc_6A5ADC: LitVar_Missing var_150
  loc_6A5ADF: LitVar_Missing var_130
  loc_6A5AE2: LitVar_Missing var_110
  loc_6A5AE5: LitVar_Missing var_F0
  loc_6A5AE8: LitVar_Missing var_D0
  loc_6A5AEB: LitVar_Missing var_B0
  loc_6A5AEE: LitStr "&Próxima Página"
  loc_6A5AF1: FStStrCopy var_90
  loc_6A5AF4: FLdRfVar var_90
  loc_6A5AF7: LitI4 8
  loc_6A5AFC: PopTmpLdAdStr var_8C
  loc_6A5AFF: LitI2_Byte &H28
  loc_6A5B01: PopTmpLdAd2 var_88
  loc_6A5B04: ImpAdLdRf MemVar_74C7D0
  loc_6A5B07: NewIfNullPr clsMsg
  loc_6A5B0A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5B0F: FLdZeroAd var_1D4
  loc_6A5B12: CVarStr var_1EC
  loc_6A5B15: PopAdLdVar
  loc_6A5B16: FLdPrThis
  loc_6A5B17: VCallAd Control_ID_SSCommand2
  loc_6A5B1A: FStAdFunc var_1D8
  loc_6A5B1D: FLdPr var_1D8
  loc_6A5B20: LateIdSt
  loc_6A5B25: FFree1Str var_90
  loc_6A5B28: FFree1Ad var_1D8
  loc_6A5B2B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A5B44: LitI2_Byte 1
  loc_6A5B46: FLdRfVar var_86
  loc_6A5B49: LitI2_Byte &H10
  loc_6A5B4B: ForI2 var_1F0
  loc_6A5B51: FLdRfVar var_1D4
  loc_6A5B54: LitVar_Missing var_1D0
  loc_6A5B57: LitVar_Missing var_1B0
  loc_6A5B5A: LitVar_Missing var_190
  loc_6A5B5D: LitVar_Missing var_170
  loc_6A5B60: LitVar_Missing var_150
  loc_6A5B63: LitVar_Missing var_130
  loc_6A5B66: LitVar_Missing var_110
  loc_6A5B69: LitVar_Missing var_F0
  loc_6A5B6C: LitVar_Missing var_D0
  loc_6A5B6F: LitVar_Missing var_B0
  loc_6A5B72: LitStr "Izquierda"
  loc_6A5B75: FStStrCopy var_90
  loc_6A5B78: FLdRfVar var_90
  loc_6A5B7B: LitI4 &HF
  loc_6A5B80: PopTmpLdAdStr var_8C
  loc_6A5B83: LitI2_Byte &H28
  loc_6A5B85: PopTmpLdAd2 var_88
  loc_6A5B88: ImpAdLdRf MemVar_74C7D0
  loc_6A5B8B: NewIfNullPr clsMsg
  loc_6A5B8E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5B93: ILdRf var_1D4
  loc_6A5B96: LitI2_Byte 0
  loc_6A5B98: FLdRfVar var_1DC
  loc_6A5B9B: FLdI2 var_86
  loc_6A5B9E: FLdPrThis
  loc_6A5B9F: VCallAd Control_ID_Combo2
  loc_6A5BA2: FStAdFunc var_1D8
  loc_6A5BA5: FLdPr var_1D8
  loc_6A5BA8: Set from_stack_2 = Me(from_stack_1)
  loc_6A5BAD: FLdPr var_1DC
  loc_6A5BB0: Me.List(from_stack_1) = from_stack_2
  loc_6A5BB5: FFreeStr var_90 = ""
  loc_6A5BBC: FFreeAd var_1D8 = ""
  loc_6A5BC3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5BDA: FLdRfVar var_1D4
  loc_6A5BDD: LitVar_Missing var_1D0
  loc_6A5BE0: LitVar_Missing var_1B0
  loc_6A5BE3: LitVar_Missing var_190
  loc_6A5BE6: LitVar_Missing var_170
  loc_6A5BE9: LitVar_Missing var_150
  loc_6A5BEC: LitVar_Missing var_130
  loc_6A5BEF: LitVar_Missing var_110
  loc_6A5BF2: LitVar_Missing var_F0
  loc_6A5BF5: LitVar_Missing var_D0
  loc_6A5BF8: LitVar_Missing var_B0
  loc_6A5BFB: LitStr "Derecha"
  loc_6A5BFE: FStStrCopy var_90
  loc_6A5C01: FLdRfVar var_90
  loc_6A5C04: LitI4 &H10
  loc_6A5C09: PopTmpLdAdStr var_8C
  loc_6A5C0C: LitI2_Byte &H28
  loc_6A5C0E: PopTmpLdAd2 var_88
  loc_6A5C11: ImpAdLdRf MemVar_74C7D0
  loc_6A5C14: NewIfNullPr clsMsg
  loc_6A5C17: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5C1C: ILdRf var_1D4
  loc_6A5C1F: LitI2_Byte 1
  loc_6A5C21: FLdRfVar var_1DC
  loc_6A5C24: FLdI2 var_86
  loc_6A5C27: FLdPrThis
  loc_6A5C28: VCallAd Control_ID_Combo2
  loc_6A5C2B: FStAdFunc var_1D8
  loc_6A5C2E: FLdPr var_1D8
  loc_6A5C31: Set from_stack_2 = Me(from_stack_1)
  loc_6A5C36: FLdPr var_1DC
  loc_6A5C39: Me.List(from_stack_1) = from_stack_2
  loc_6A5C3E: FFreeStr var_90 = ""
  loc_6A5C45: FFreeAd var_1D8 = ""
  loc_6A5C4C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5C63: FLdRfVar var_1D4
  loc_6A5C66: LitVar_Missing var_1D0
  loc_6A5C69: LitVar_Missing var_1B0
  loc_6A5C6C: LitVar_Missing var_190
  loc_6A5C6F: LitVar_Missing var_170
  loc_6A5C72: LitVar_Missing var_150
  loc_6A5C75: LitVar_Missing var_130
  loc_6A5C78: LitVar_Missing var_110
  loc_6A5C7B: LitVar_Missing var_F0
  loc_6A5C7E: LitVar_Missing var_D0
  loc_6A5C81: LitVar_Missing var_B0
  loc_6A5C84: LitStr "Manifold"
  loc_6A5C87: FStStrCopy var_90
  loc_6A5C8A: FLdRfVar var_90
  loc_6A5C8D: LitI4 &H11
  loc_6A5C92: PopTmpLdAdStr var_8C
  loc_6A5C95: LitI2_Byte &H28
  loc_6A5C97: PopTmpLdAd2 var_88
  loc_6A5C9A: ImpAdLdRf MemVar_74C7D0
  loc_6A5C9D: NewIfNullPr clsMsg
  loc_6A5CA0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5CA5: ILdRf var_1D4
  loc_6A5CA8: LitI2_Byte 0
  loc_6A5CAA: FLdRfVar var_1DC
  loc_6A5CAD: FLdI2 var_86
  loc_6A5CB0: FLdPrThis
  loc_6A5CB1: VCallAd Control_ID_Combo1
  loc_6A5CB4: FStAdFunc var_1D8
  loc_6A5CB7: FLdPr var_1D8
  loc_6A5CBA: Set from_stack_2 = Me(from_stack_1)
  loc_6A5CBF: FLdPr var_1DC
  loc_6A5CC2: Me.List(from_stack_1) = from_stack_2
  loc_6A5CC7: FFreeStr var_90 = ""
  loc_6A5CCE: FFreeAd var_1D8 = ""
  loc_6A5CD5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5CEC: FLdRfVar var_1D4
  loc_6A5CEF: LitVar_Missing var_1D0
  loc_6A5CF2: LitVar_Missing var_1B0
  loc_6A5CF5: LitVar_Missing var_190
  loc_6A5CF8: LitVar_Missing var_170
  loc_6A5CFB: LitVar_Missing var_150
  loc_6A5CFE: LitVar_Missing var_130
  loc_6A5D01: LitVar_Missing var_110
  loc_6A5D04: LitVar_Missing var_F0
  loc_6A5D07: LitVar_Missing var_D0
  loc_6A5D0A: LitVar_Missing var_B0
  loc_6A5D0D: LitStr "Paralelo"
  loc_6A5D10: FStStrCopy var_90
  loc_6A5D13: FLdRfVar var_90
  loc_6A5D16: LitI4 &H12
  loc_6A5D1B: PopTmpLdAdStr var_8C
  loc_6A5D1E: LitI2_Byte &H28
  loc_6A5D20: PopTmpLdAd2 var_88
  loc_6A5D23: ImpAdLdRf MemVar_74C7D0
  loc_6A5D26: NewIfNullPr clsMsg
  loc_6A5D29: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5D2E: ILdRf var_1D4
  loc_6A5D31: LitI2_Byte 1
  loc_6A5D33: FLdRfVar var_1DC
  loc_6A5D36: FLdI2 var_86
  loc_6A5D39: FLdPrThis
  loc_6A5D3A: VCallAd Control_ID_Combo1
  loc_6A5D3D: FStAdFunc var_1D8
  loc_6A5D40: FLdPr var_1D8
  loc_6A5D43: Set from_stack_2 = Me(from_stack_1)
  loc_6A5D48: FLdPr var_1DC
  loc_6A5D4B: Me.List(from_stack_1) = from_stack_2
  loc_6A5D50: FFreeStr var_90 = ""
  loc_6A5D57: FFreeAd var_1D8 = ""
  loc_6A5D5E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5D75: FLdRfVar var_86
  loc_6A5D78: NextI2 var_1F0, loc_6A5B51
  loc_6A5D7D: ExitProcHresult
End Sub

Private Sub Form_Activate() '703AD4
  'Data Table: 42DBA0
  loc_702918: LitVarI2 var_C8, 0
  loc_70291D: FLdPr Me
  loc_702920: MemStVar
  loc_702924: LitVarI2 var_C8, 0
  loc_702929: FLdPr Me
  loc_70292C: MemStVar
  loc_702930: LitI2_Byte 1
  loc_702932: CUI1I2
  loc_702934: FLdRfVar var_9E
  loc_702937: LitI2_Byte &H20
  loc_702939: CUI1I2
  loc_70293B: ForUI1 var_CC
  loc_702941: FLdUI1
  loc_702945: CI4UI1
  loc_702946: ImpAdLdRf MemVar_74C1F4
  loc_702949: Ary1LdUI1
  loc_70294B: CBoolUI1
  loc_70294D: BranchF loc_7031B7
  loc_702950: FLdUI1
  loc_702954: CI4UI1
  loc_702955: ImpAdLdRf MemVar_74C0FC
  loc_702958: Ary1LdUI1
  loc_70295A: CBoolUI1
  loc_70295C: BranchF loc_702F16
  loc_70295F: LitI2_Byte 0
  loc_702961: CUI1I2
  loc_702963: FLdRfVar var_A0
  loc_702966: FLdUI1
  loc_70296A: CI4UI1
  loc_70296B: ImpAdLdRf MemVar_74C0FC
  loc_70296E: Ary1LdUI1
  loc_702970: ForUI1 var_D0
  loc_702976: FLdPr Me
  loc_702979: MemLdRfVar from_stack_1.global_68
  loc_70297C: LitVarI2 var_C8, 1
  loc_702981: AddVar var_E0
  loc_702985: FLdPr Me
  loc_702988: MemStVar
  loc_70298C: FFree1Var var_E0 = ""
  loc_70298F: FLdPr Me
  loc_702992: MemLdRfVar from_stack_1.global_68
  loc_702995: LitVarI2 var_C8, 1
  loc_70299A: HardType
  loc_70299B: GeVar var_E0
  loc_70299F: FLdPr Me
  loc_7029A2: MemLdRfVar from_stack_1.global_68
  loc_7029A5: LitVarI2 var_F0, 16
  loc_7029AA: HardType
  loc_7029AB: LeVar var_100
  loc_7029AF: AndVar var_110
  loc_7029B3: CBoolVarNull
  loc_7029B5: BranchF loc_702EFB
  loc_7029B8: FLdPr Me
  loc_7029BB: MemLdRfVar from_stack_1.global_68
  loc_7029BE: FLdPr Me
  loc_7029C1: MemStVarCopy
  loc_7029C5: FLdUI1
  loc_7029C9: FLdPr Me
  loc_7029CC: MemLdRfVar from_stack_1.global_84
  loc_7029CF: CI4Var
  loc_7029D1: LitI4 0
  loc_7029D6: FLdPr Me
  loc_7029D9: MemLdRfVar from_stack_1.global_104
  loc_7029DC: AryLdPr
  loc_7029DF: MemStUI1
  loc_7029E3: FLdUI1
  loc_7029E7: CI2UI1
  loc_7029E9: LitI2_Byte 1
  loc_7029EB: AddI2
  loc_7029EC: CUI1I2
  loc_7029EE: FLdPr Me
  loc_7029F1: MemLdRfVar from_stack_1.global_84
  loc_7029F4: CI4Var
  loc_7029F6: LitI4 1
  loc_7029FB: FLdPr Me
  loc_7029FE: MemLdRfVar from_stack_1.global_104
  loc_702A01: AryLdPr
  loc_702A04: MemStUI1
  loc_702A08: FLdUI1
  loc_702A0C: FLdPr Me
  loc_702A0F: MemLdRfVar from_stack_1.global_84
  loc_702A12: CI4Var
  loc_702A14: FLdPr Me
  loc_702A17: MemLdRfVar from_stack_1.global_136
  loc_702A1A: Ary1StUI1
  loc_702A1C: LitI2_Byte &HFF
  loc_702A1E: FLdRfVar var_118
  loc_702A21: FLdPr Me
  loc_702A24: MemLdRfVar from_stack_1.global_84
  loc_702A27: CI2Var
  loc_702A28: FLdPrThis
  loc_702A29: VCallAd Control_ID_Label1
  loc_702A2C: FStAdFunc var_114
  loc_702A2F: FLdPr var_114
  loc_702A32: Set from_stack_2 = Me(from_stack_1)
  loc_702A37: FLdPr var_118
  loc_702A3A: Me.Enabled = from_stack_1b
  loc_702A3F: FFreeAd var_114 = ""
  loc_702A46: LitI2_Byte &HFF
  loc_702A48: FLdRfVar var_118
  loc_702A4B: FLdPr Me
  loc_702A4E: MemLdRfVar from_stack_1.global_84
  loc_702A51: CI2Var
  loc_702A52: FLdPrThis
  loc_702A53: VCallAd Control_ID_Combo4
  loc_702A56: FStAdFunc var_114
  loc_702A59: FLdPr var_114
  loc_702A5C: Set from_stack_2 = Me(from_stack_1)
  loc_702A61: FLdPr var_118
  loc_702A64: Me.Enabled = from_stack_1b
  loc_702A69: FFreeAd var_114 = ""
  loc_702A70: LitI2_Byte &HFF
  loc_702A72: FLdRfVar var_118
  loc_702A75: FLdPr Me
  loc_702A78: MemLdRfVar from_stack_1.global_84
  loc_702A7B: CI2Var
  loc_702A7C: FLdPrThis
  loc_702A7D: VCallAd Control_ID_Combo1
  loc_702A80: FStAdFunc var_114
  loc_702A83: FLdPr var_114
  loc_702A86: Set from_stack_2 = Me(from_stack_1)
  loc_702A8B: FLdPr var_118
  loc_702A8E: Me.Enabled = from_stack_1b
  loc_702A93: FFreeAd var_114 = ""
  loc_702A9A: LitStr "  "
  loc_702A9D: ImpAdLdI4 MemVar_74BED4
  loc_702AA0: ConcatStr
  loc_702AA1: FStStrNoPop var_13C
  loc_702AA4: LitStr "   "
  loc_702AA7: FLdRfVar var_11C
  loc_702AAA: FLdPr Me
  loc_702AAD: MemLdRfVar from_stack_1.global_84
  loc_702AB0: CI4Var
  loc_702AB2: LitI4 0
  loc_702AB7: FLdPr Me
  loc_702ABA: MemLdRfVar from_stack_1.global_104
  loc_702ABD: AryLdPr
  loc_702AC0: MemLdUI1 global_0
  loc_702AC4: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_702AC9: ILdRf var_11C
  loc_702ACC: ConcatStr
  loc_702ACD: FStStrNoPop var_120
  loc_702AD0: LitStr "-"
  loc_702AD3: ConcatStr
  loc_702AD4: FStStrNoPop var_128
  loc_702AD7: FLdRfVar var_124
  loc_702ADA: FLdPr Me
  loc_702ADD: MemLdRfVar from_stack_1.global_84
  loc_702AE0: CI4Var
  loc_702AE2: LitI4 1
  loc_702AE7: FLdPr Me
  loc_702AEA: MemLdRfVar from_stack_1.global_104
  loc_702AED: AryLdPr
  loc_702AF0: MemLdUI1 global_0
  loc_702AF4: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_702AF9: ILdRf var_124
  loc_702AFC: ConcatStr
  loc_702AFD: FStStrNoPop var_12C
  loc_702B00: LitStr "  "
  loc_702B03: ConcatStr
  loc_702B04: FStStrNoPop var_130
  loc_702B07: LitI2_Byte &H41
  loc_702B09: FLdUI1
  loc_702B0D: CI2UI1
  loc_702B0F: AddI2
  loc_702B10: CI4UI1
  loc_702B11: ImpAdCallI2 Chr$()
  loc_702B16: FStStrNoPop var_134
  loc_702B19: ConcatStr
  loc_702B1A: FStStrNoPop var_138
  loc_702B1D: LitStr " :"
  loc_702B20: ConcatStr
  loc_702B21: FStStrNoPop var_140
  loc_702B24: ConcatStr
  loc_702B25: FStStrNoPop var_144
  loc_702B28: FLdRfVar var_118
  loc_702B2B: FLdPr Me
  loc_702B2E: MemLdRfVar from_stack_1.global_84
  loc_702B31: CI2Var
  loc_702B32: FLdPrThis
  loc_702B33: VCallAd Control_ID_Label1
  loc_702B36: FStAdFunc var_114
  loc_702B39: FLdPr var_114
  loc_702B3C: Set from_stack_2 = Me(from_stack_1)
  loc_702B41: FLdPr var_118
  loc_702B44: Me.Caption = from_stack_1
  loc_702B49: FFreeStr var_11C = "": var_120 = "": var_128 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_702B62: FFreeAd var_114 = ""
  loc_702B69: LitVarStr var_164, "  "
  loc_702B6E: ImpAdLdRf MemVar_74BED4
  loc_702B71: CVarRef
  loc_702B76: ImpAdLdRf MemVar_74BED8
  loc_702B79: CVarRef
  loc_702B7E: ImpAdLdI4 MemVar_74BED4
  loc_702B81: FnLenStr
  loc_702B82: LitI4 &HC
  loc_702B87: GtI4
  loc_702B88: CVarBoolI2 var_C8
  loc_702B8C: FLdRfVar var_E0
  loc_702B8F: ImpAdCallFPR4  = IIf(, , )
  loc_702B94: FLdRfVar var_E0
  loc_702B97: ConcatVar var_100
  loc_702B9B: LitStr "  "
  loc_702B9E: FLdRfVar var_11C
  loc_702BA1: FLdPr Me
  loc_702BA4: MemLdRfVar from_stack_1.global_84
  loc_702BA7: CI4Var
  loc_702BA9: LitI4 0
  loc_702BAE: FLdPr Me
  loc_702BB1: MemLdRfVar from_stack_1.global_104
  loc_702BB4: AryLdPr
  loc_702BB7: MemLdUI1 global_0
  loc_702BBB: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_702BC0: ILdRf var_11C
  loc_702BC3: ConcatStr
  loc_702BC4: FStStrNoPop var_120
  loc_702BC7: LitStr "-"
  loc_702BCA: ConcatStr
  loc_702BCB: FStStrNoPop var_128
  loc_702BCE: FLdRfVar var_124
  loc_702BD1: FLdPr Me
  loc_702BD4: MemLdRfVar from_stack_1.global_84
  loc_702BD7: CI4Var
  loc_702BD9: LitI4 1
  loc_702BDE: FLdPr Me
  loc_702BE1: MemLdRfVar from_stack_1.global_104
  loc_702BE4: AryLdPr
  loc_702BE7: MemLdUI1 global_0
  loc_702BEB: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_702BF0: ILdRf var_124
  loc_702BF3: ConcatStr
  loc_702BF4: FStStrNoPop var_12C
  loc_702BF7: LitStr "  "
  loc_702BFA: ConcatStr
  loc_702BFB: FStStrNoPop var_130
  loc_702BFE: LitI2_Byte &H41
  loc_702C00: FLdUI1
  loc_702C04: CI2UI1
  loc_702C06: AddI2
  loc_702C07: CI4UI1
  loc_702C08: ImpAdCallI2 Chr$()
  loc_702C0D: FStStrNoPop var_134
  loc_702C10: ConcatStr
  loc_702C11: FStStrNoPop var_138
  loc_702C14: LitStr " :"
  loc_702C17: ConcatStr
  loc_702C18: CVarStr var_110
  loc_702C1B: ConcatVar var_174
  loc_702C1F: CStrVarVal var_13C
  loc_702C23: FLdRfVar var_118
  loc_702C26: FLdPr Me
  loc_702C29: MemLdRfVar from_stack_1.global_84
  loc_702C2C: CI2Var
  loc_702C2D: FLdPrThis
  loc_702C2E: VCallAd Control_ID_Label1
  loc_702C31: FStAdFunc var_114
  loc_702C34: FLdPr var_114
  loc_702C37: Set from_stack_2 = Me(from_stack_1)
  loc_702C3C: FLdPr var_118
  loc_702C3F: Me.Caption = from_stack_1
  loc_702C44: FFreeStr var_11C = "": var_120 = "": var_128 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_702C59: FFreeAd var_114 = ""
  loc_702C60: FFreeVar var_C8 = "": var_E0 = "": var_100 = "": var_110 = ""
  loc_702C6D: FLdUI1
  loc_702C71: CI2UI1
  loc_702C73: LitI2_Byte 0
  loc_702C75: EqI2
  loc_702C76: BranchF loc_702D38
  loc_702C79: LitI2_Byte &HFF
  loc_702C7B: FLdRfVar var_118
  loc_702C7E: FLdPr Me
  loc_702C81: MemLdRfVar from_stack_1.global_84
  loc_702C84: CI2Var
  loc_702C85: FLdPrThis
  loc_702C86: VCallAd Control_ID_Combo2
  loc_702C89: FStAdFunc var_114
  loc_702C8C: FLdPr var_114
  loc_702C8F: Set from_stack_2 = Me(from_stack_1)
  loc_702C94: FLdPr var_118
  loc_702C97: Me.Enabled = from_stack_1b
  loc_702C9C: FFreeAd var_114 = ""
  loc_702CA3: FLdRfVar var_176
  loc_702CA6: FLdRfVar var_118
  loc_702CA9: FLdPr Me
  loc_702CAC: MemLdRfVar from_stack_1.global_84
  loc_702CAF: CI2Var
  loc_702CB0: FLdPrThis
  loc_702CB1: VCallAd Control_ID_Combo2
  loc_702CB4: FStAdFunc var_114
  loc_702CB7: FLdPr var_114
  loc_702CBA: Set from_stack_2 = Me(from_stack_1)
  loc_702CBF: FLdPr var_118
  loc_702CC2:  = Me.ListCount
  loc_702CC7: FLdI2 var_176
  loc_702CCA: LitI2_Byte 0
  loc_702CCC: EqI2
  loc_702CCD: FFreeAd var_114 = ""
  loc_702CD4: BranchF loc_702D35
  loc_702CD7: LitVar_Missing var_C8
  loc_702CDA: PopAdLdVar
  loc_702CDB: LitStr "Izquierda"
  loc_702CDE: FLdRfVar var_118
  loc_702CE1: FLdPr Me
  loc_702CE4: MemLdRfVar from_stack_1.global_84
  loc_702CE7: CI2Var
  loc_702CE8: FLdPrThis
  loc_702CE9: VCallAd Control_ID_Combo2
  loc_702CEC: FStAdFunc var_114
  loc_702CEF: FLdPr var_114
  loc_702CF2: Set from_stack_2 = Me(from_stack_1)
  loc_702CF7: FLdPr var_118
  loc_702CFA: Me.AddItem from_stack_1, from_stack_2
  loc_702CFF: FFreeAd var_114 = ""
  loc_702D06: LitVar_Missing var_C8
  loc_702D09: PopAdLdVar
  loc_702D0A: LitStr "Derecha"
  loc_702D0D: FLdRfVar var_118
  loc_702D10: FLdPr Me
  loc_702D13: MemLdRfVar from_stack_1.global_84
  loc_702D16: CI2Var
  loc_702D17: FLdPrThis
  loc_702D18: VCallAd Control_ID_Combo2
  loc_702D1B: FStAdFunc var_114
  loc_702D1E: FLdPr var_114
  loc_702D21: Set from_stack_2 = Me(from_stack_1)
  loc_702D26: FLdPr var_118
  loc_702D29: Me.AddItem from_stack_1, from_stack_2
  loc_702D2E: FFreeAd var_114 = ""
  loc_702D35: Branch loc_702D62
  loc_702D38: LitI2_Byte 0
  loc_702D3A: FLdRfVar var_118
  loc_702D3D: FLdPr Me
  loc_702D40: MemLdRfVar from_stack_1.global_84
  loc_702D43: CI2Var
  loc_702D44: FLdPrThis
  loc_702D45: VCallAd Control_ID_Combo2
  loc_702D48: FStAdFunc var_114
  loc_702D4B: FLdPr var_114
  loc_702D4E: Set from_stack_2 = Me(from_stack_1)
  loc_702D53: FLdPr var_118
  loc_702D56: Me.Enabled = from_stack_1b
  loc_702D5B: FFreeAd var_114 = ""
  loc_702D62: FLdRfVar var_176
  loc_702D65: FLdRfVar var_118
  loc_702D68: FLdPr Me
  loc_702D6B: MemLdRfVar from_stack_1.global_84
  loc_702D6E: CI2Var
  loc_702D6F: FLdPrThis
  loc_702D70: VCallAd Control_ID_Combo1
  loc_702D73: FStAdFunc var_114
  loc_702D76: FLdPr var_114
  loc_702D79: Set from_stack_2 = Me(from_stack_1)
  loc_702D7E: FLdPr var_118
  loc_702D81:  = Me.ListIndex
  loc_702D86: FLdI2 var_176
  loc_702D89: LitI2_Byte &HFF
  loc_702D8B: NeI2
  loc_702D8C: FFreeAd var_114 = ""
  loc_702D93: BranchF loc_702E93
  loc_702D96: FLdRfVar var_176
  loc_702D99: FLdRfVar var_9E
  loc_702D9C: ImpAdLdRf MemVar_74C6B0
  loc_702D9F: NewIfNullPr CPumpsConfig
  loc_702DA7: FLdI2 var_176
  loc_702DAA: BranchF loc_702DF9
  loc_702DAD: FLdRfVar var_17A
  loc_702DB0: FLdRfVar var_176
  loc_702DB3: FLdRfVar var_9E
  loc_702DB6: ImpAdLdRf MemVar_74C6B0
  loc_702DB9: NewIfNullPr CPumpsConfig
  loc_702DBC:  = Forms
  loc_702DC1: FLdUI1
  loc_702DC5: PopTmpLdAd1
  loc_702DC9: ImpAdLdRf MemVar_74C6B0
  loc_702DCC: NewIfNullPr CPumpsConfig
  loc_702DD4: FLdI2 var_17A
  loc_702DD7: BranchF loc_702DEB
  loc_702DDA: LitI2_Byte 1
  loc_702DDC: CUI1I2
  loc_702DDE: FLdUI1
  loc_702DE2: CI4UI1
  loc_702DE3: ImpAdLdRf MemVar_74C19C
  loc_702DE6: Ary1StUI1
  loc_702DE8: Branch loc_702DF9
  loc_702DEB: LitI2_Byte 0
  loc_702DED: CUI1I2
  loc_702DEF: FLdUI1
  loc_702DF3: CI4UI1
  loc_702DF4: ImpAdLdRf MemVar_74C19C
  loc_702DF7: Ary1StUI1
  loc_702DF9: FLdRfVar var_176
  loc_702DFC: FLdRfVar var_118
  loc_702DFF: FLdPr Me
  loc_702E02: MemLdRfVar from_stack_1.global_84
  loc_702E05: CI2Var
  loc_702E06: FLdPrThis
  loc_702E07: VCallAd Control_ID_Combo2
  loc_702E0A: FStAdFunc var_114
  loc_702E0D: FLdPr var_114
  loc_702E10: Set from_stack_2 = Me(from_stack_1)
  loc_702E15: FLdPr var_118
  loc_702E18:  = Me.ListIndex
  loc_702E1D: FLdI2 var_176
  loc_702E20: LitI2_Byte &HFF
  loc_702E22: NeI2
  loc_702E23: FLdRfVar var_178
  loc_702E26: FLdRfVar var_184
  loc_702E29: FLdPr Me
  loc_702E2C: MemLdRfVar from_stack_1.global_84
  loc_702E2F: CI2Var
  loc_702E30: FLdPrThis
  loc_702E31: VCallAd Control_ID_Combo2
  loc_702E34: FStAdFunc var_180
  loc_702E37: FLdPr var_180
  loc_702E3A: Set from_stack_2 = Me(from_stack_1)
  loc_702E3F: FLdPr var_184
  loc_702E42:  = Me.ListCount
  loc_702E47: FLdI2 var_178
  loc_702E4A: LitI2_Byte 0
  loc_702E4C: GtI2
  loc_702E4D: OrI4
  loc_702E4E: FFreeAd var_114 = "": var_118 = "": var_180 = ""
  loc_702E59: BranchF loc_702E90
  loc_702E5C: FLdUI1
  loc_702E60: CI4UI1
  loc_702E61: ImpAdLdRf MemVar_74C19C
  loc_702E64: Ary1LdUI1
  loc_702E66: CI2UI1
  loc_702E68: FLdRfVar var_118
  loc_702E6B: FLdPr Me
  loc_702E6E: MemLdRfVar from_stack_1.global_84
  loc_702E71: CI2Var
  loc_702E72: FLdPrThis
  loc_702E73: VCallAd Control_ID_Combo2
  loc_702E76: FStAdFunc var_114
  loc_702E79: FLdPr var_114
  loc_702E7C: Set from_stack_2 = Me(from_stack_1)
  loc_702E81: FLdPr var_118
  loc_702E84: Me.ListIndex = from_stack_1
  loc_702E89: FFreeAd var_114 = ""
  loc_702E90: Branch loc_702EFB
  loc_702E93: FLdRfVar var_176
  loc_702E96: FLdRfVar var_118
  loc_702E99: FLdPr Me
  loc_702E9C: MemLdRfVar from_stack_1.global_84
  loc_702E9F: CI2Var
  loc_702EA0: FLdPrThis
  loc_702EA1: VCallAd Control_ID_Combo2
  loc_702EA4: FStAdFunc var_114
  loc_702EA7: FLdPr var_114
  loc_702EAA: Set from_stack_2 = Me(from_stack_1)
  loc_702EAF: FLdPr var_118
  loc_702EB2:  = Me.ListCount
  loc_702EB7: FLdI2 var_176
  loc_702EBA: LitI2_Byte 0
  loc_702EBC: GtI2
  loc_702EBD: FFreeAd var_114 = ""
  loc_702EC4: BranchF loc_702EFB
  loc_702EC7: FLdUI1
  loc_702ECB: CI4UI1
  loc_702ECC: ImpAdLdRf MemVar_74C19C
  loc_702ECF: Ary1LdUI1
  loc_702ED1: CI2UI1
  loc_702ED3: FLdRfVar var_118
  loc_702ED6: FLdPr Me
  loc_702ED9: MemLdRfVar from_stack_1.global_84
  loc_702EDC: CI2Var
  loc_702EDD: FLdPrThis
  loc_702EDE: VCallAd Control_ID_Combo2
  loc_702EE1: FStAdFunc var_114
  loc_702EE4: FLdPr var_114
  loc_702EE7: Set from_stack_2 = Me(from_stack_1)
  loc_702EEC: FLdPr var_118
  loc_702EEF: Me.ListIndex = from_stack_1
  loc_702EF4: FFreeAd var_114 = ""
  loc_702EFB: FLdRfVar var_A0
  loc_702EFE: NextUI1
  loc_702F04: FLdUI1
  loc_702F08: CI2UI1
  loc_702F0A: LitI2_Byte 1
  loc_702F0C: AddI2
  loc_702F0D: CUI1I2
  loc_702F0F: FStUI1 var_9E
  loc_702F13: Branch loc_7031A8
  loc_702F16: FLdPr Me
  loc_702F19: MemLdRfVar from_stack_1.global_68
  loc_702F1C: LitVarI2 var_C8, 1
  loc_702F21: AddVar var_E0
  loc_702F25: FLdPr Me
  loc_702F28: MemStVar
  loc_702F2C: FFree1Var var_E0 = ""
  loc_702F2F: FLdPr Me
  loc_702F32: MemLdRfVar from_stack_1.global_68
  loc_702F35: LitVarI2 var_C8, 1
  loc_702F3A: HardType
  loc_702F3B: GeVar var_E0
  loc_702F3F: FLdPr Me
  loc_702F42: MemLdRfVar from_stack_1.global_68
  loc_702F45: LitVarI2 var_F0, 16
  loc_702F4A: HardType
  loc_702F4B: LeVar var_100
  loc_702F4F: AndVar var_110
  loc_702F53: CBoolVarNull
  loc_702F55: BranchF loc_7031A8
  loc_702F58: FLdPr Me
  loc_702F5B: MemLdRfVar from_stack_1.global_68
  loc_702F5E: FLdPr Me
  loc_702F61: MemStVarCopy
  loc_702F65: FLdUI1
  loc_702F69: FLdPr Me
  loc_702F6C: MemLdRfVar from_stack_1.global_84
  loc_702F6F: CI4Var
  loc_702F71: LitI4 0
  loc_702F76: FLdPr Me
  loc_702F79: MemLdRfVar from_stack_1.global_104
  loc_702F7C: AryLdPr
  loc_702F7F: MemStUI1
  loc_702F83: FLdUI1
  loc_702F87: FLdPr Me
  loc_702F8A: MemLdRfVar from_stack_1.global_84
  loc_702F8D: CI4Var
  loc_702F8F: LitI4 1
  loc_702F94: FLdPr Me
  loc_702F97: MemLdRfVar from_stack_1.global_104
  loc_702F9A: AryLdPr
  loc_702F9D: MemStUI1
  loc_702FA1: LitI2_Byte 0
  loc_702FA3: CUI1I2
  loc_702FA5: FLdPr Me
  loc_702FA8: MemLdRfVar from_stack_1.global_84
  loc_702FAB: CI4Var
  loc_702FAD: FLdPr Me
  loc_702FB0: MemLdRfVar from_stack_1.global_136
  loc_702FB3: Ary1StUI1
  loc_702FB5: LitI2_Byte &HFF
  loc_702FB7: FLdRfVar var_118
  loc_702FBA: FLdPr Me
  loc_702FBD: MemLdRfVar from_stack_1.global_84
  loc_702FC0: CI2Var
  loc_702FC1: FLdPrThis
  loc_702FC2: VCallAd Control_ID_Label1
  loc_702FC5: FStAdFunc var_114
  loc_702FC8: FLdPr var_114
  loc_702FCB: Set from_stack_2 = Me(from_stack_1)
  loc_702FD0: FLdPr var_118
  loc_702FD3: Me.Enabled = from_stack_1b
  loc_702FD8: FFreeAd var_114 = ""
  loc_702FDF: LitI2_Byte &HFF
  loc_702FE1: FLdRfVar var_118
  loc_702FE4: FLdPr Me
  loc_702FE7: MemLdRfVar from_stack_1.global_84
  loc_702FEA: CI2Var
  loc_702FEB: FLdPrThis
  loc_702FEC: VCallAd Control_ID_Combo4
  loc_702FEF: FStAdFunc var_114
  loc_702FF2: FLdPr var_114
  loc_702FF5: Set from_stack_2 = Me(from_stack_1)
  loc_702FFA: FLdPr var_118
  loc_702FFD: Me.Enabled = from_stack_1b
  loc_703002: FFreeAd var_114 = ""
  loc_703009: LitI2_Byte &HFF
  loc_70300B: FLdRfVar var_118
  loc_70300E: FLdPr Me
  loc_703011: MemLdRfVar from_stack_1.global_84
  loc_703014: CI2Var
  loc_703015: FLdPrThis
  loc_703016: VCallAd Control_ID_Combo1
  loc_703019: FStAdFunc var_114
  loc_70301C: FLdPr var_114
  loc_70301F: Set from_stack_2 = Me(from_stack_1)
  loc_703024: FLdPr var_118
  loc_703027: Me.Enabled = from_stack_1b
  loc_70302C: FFreeAd var_114 = ""
  loc_703033: LitI2_Byte 0
  loc_703035: FLdRfVar var_118
  loc_703038: FLdPr Me
  loc_70303B: MemLdRfVar from_stack_1.global_84
  loc_70303E: CI2Var
  loc_70303F: FLdPrThis
  loc_703040: VCallAd Control_ID_Combo2
  loc_703043: FStAdFunc var_114
  loc_703046: FLdPr var_114
  loc_703049: Set from_stack_2 = Me(from_stack_1)
  loc_70304E: FLdPr var_118
  loc_703051: Me.Enabled = from_stack_1b
  loc_703056: FFreeAd var_114 = ""
  loc_70305D: LitStr "   "
  loc_703060: ImpAdLdI4 MemVar_74BED4
  loc_703063: ConcatStr
  loc_703064: FStStrNoPop var_124
  loc_703067: LitStr "   "
  loc_70306A: FLdRfVar var_11C
  loc_70306D: FLdPr Me
  loc_703070: MemLdRfVar from_stack_1.global_84
  loc_703073: CI4Var
  loc_703075: LitI4 0
  loc_70307A: FLdPr Me
  loc_70307D: MemLdRfVar from_stack_1.global_104
  loc_703080: AryLdPr
  loc_703083: MemLdUI1 global_0
  loc_703087: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_70308C: ILdRf var_11C
  loc_70308F: ConcatStr
  loc_703090: FStStrNoPop var_120
  loc_703093: LitStr " :"
  loc_703096: ConcatStr
  loc_703097: FStStrNoPop var_128
  loc_70309A: ConcatStr
  loc_70309B: FStStrNoPop var_12C
  loc_70309E: FLdRfVar var_118
  loc_7030A1: FLdPr Me
  loc_7030A4: MemLdRfVar from_stack_1.global_84
  loc_7030A7: CI2Var
  loc_7030A8: FLdPrThis
  loc_7030A9: VCallAd Control_ID_Label1
  loc_7030AC: FStAdFunc var_114
  loc_7030AF: FLdPr var_114
  loc_7030B2: Set from_stack_2 = Me(from_stack_1)
  loc_7030B7: FLdPr var_118
  loc_7030BA: Me.Caption = from_stack_1
  loc_7030BF: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_7030CC: FFreeAd var_114 = ""
  loc_7030D3: LitVarStr var_164, "  "
  loc_7030D8: ImpAdLdRf MemVar_74BED4
  loc_7030DB: CVarRef
  loc_7030E0: ImpAdLdRf MemVar_74BED8
  loc_7030E3: CVarRef
  loc_7030E8: ImpAdLdI4 MemVar_74BED4
  loc_7030EB: FnLenStr
  loc_7030EC: LitI4 &HC
  loc_7030F1: GtI4
  loc_7030F2: CVarBoolI2 var_C8
  loc_7030F6: FLdRfVar var_E0
  loc_7030F9: ImpAdCallFPR4  = IIf(, , )
  loc_7030FE: FLdRfVar var_E0
  loc_703101: ConcatVar var_100
  loc_703105: LitStr "  "
  loc_703108: FLdRfVar var_11C
  loc_70310B: FLdPr Me
  loc_70310E: MemLdRfVar from_stack_1.global_84
  loc_703111: CI4Var
  loc_703113: LitI4 0
  loc_703118: FLdPr Me
  loc_70311B: MemLdRfVar from_stack_1.global_104
  loc_70311E: AryLdPr
  loc_703121: MemLdUI1 global_0
  loc_703125: from_stack_2v = Proc_116_21_5E2848(from_stack_1v)
  loc_70312A: ILdRf var_11C
  loc_70312D: ConcatStr
  loc_70312E: FStStrNoPop var_120
  loc_703131: LitStr " :"
  loc_703134: ConcatStr
  loc_703135: CVarStr var_110
  loc_703138: ConcatVar var_174
  loc_70313C: CStrVarVal var_124
  loc_703140: FLdRfVar var_118
  loc_703143: FLdPr Me
  loc_703146: MemLdRfVar from_stack_1.global_84
  loc_703149: CI2Var
  loc_70314A: FLdPrThis
  loc_70314B: VCallAd Control_ID_Label1
  loc_70314E: FStAdFunc var_114
  loc_703151: FLdPr var_114
  loc_703154: Set from_stack_2 = Me(from_stack_1)
  loc_703159: FLdPr var_118
  loc_70315C: Me.Caption = from_stack_1
  loc_703161: FFreeStr var_11C = "": var_120 = ""
  loc_70316A: FFreeAd var_114 = ""
  loc_703171: FFreeVar var_C8 = "": var_E0 = "": var_100 = "": var_110 = ""
  loc_70317E: LitI2_Byte &HFF
  loc_703180: FLdRfVar var_118
  loc_703183: FLdPr Me
  loc_703186: MemLdRfVar from_stack_1.global_84
  loc_703189: CI2Var
  loc_70318A: FLdPrThis
  loc_70318B: VCallAd Control_ID_Combo2
  loc_70318E: FStAdFunc var_114
  loc_703191: FLdPr var_114
  loc_703194: Set from_stack_2 = Me(from_stack_1)
  loc_703199: FLdPr var_118
  loc_70319C: Me.ListIndex = from_stack_1
  loc_7031A1: FFreeAd var_114 = ""
  loc_7031A8: FLdPr Me
  loc_7031AB: MemLdRfVar from_stack_1.global_68
  loc_7031AE: CUI1Var
  loc_7031B0: FStUI1 var_A2
  loc_7031B4: Branch loc_70332D
  loc_7031B7: FLdPr Me
  loc_7031BA: MemLdRfVar from_stack_1.global_68
  loc_7031BD: LitVarI2 var_C8, 1
  loc_7031C2: AddVar var_E0
  loc_7031C6: FLdPr Me
  loc_7031C9: MemStVar
  loc_7031CD: FFree1Var var_E0 = ""
  loc_7031D0: FLdPr Me
  loc_7031D3: MemLdRfVar from_stack_1.global_68
  loc_7031D6: LitVarI2 var_C8, 1
  loc_7031DB: HardType
  loc_7031DC: GeVar var_E0
  loc_7031E0: FLdPr Me
  loc_7031E3: MemLdRfVar from_stack_1.global_68
  loc_7031E6: LitVarI2 var_F0, 16
  loc_7031EB: HardType
  loc_7031EC: LeVar var_100
  loc_7031F0: AndVar var_110
  loc_7031F4: CBoolVarNull
  loc_7031F6: BranchF loc_70332D
  loc_7031F9: FLdPr Me
  loc_7031FC: MemLdRfVar from_stack_1.global_68
  loc_7031FF: FLdPr Me
  loc_703202: MemStVarCopy
  loc_703206: LitStr vbNullString
  loc_703209: FLdRfVar var_118
  loc_70320C: FLdPr Me
  loc_70320F: MemLdRfVar from_stack_1.global_84
  loc_703212: CI2Var
  loc_703213: FLdPrThis
  loc_703214: VCallAd Control_ID_Label1
  loc_703217: FStAdFunc var_114
  loc_70321A: FLdPr var_114
  loc_70321D: Set from_stack_2 = Me(from_stack_1)
  loc_703222: FLdPr var_118
  loc_703225: Me.Caption = from_stack_1
  loc_70322A: FFreeAd var_114 = ""
  loc_703231: LitI2_Byte &HFF
  loc_703233: FLdRfVar var_118
  loc_703236: FLdPr Me
  loc_703239: MemLdRfVar from_stack_1.global_84
  loc_70323C: CI2Var
  loc_70323D: FLdPrThis
  loc_70323E: VCallAd Control_ID_Combo1
  loc_703241: FStAdFunc var_114
  loc_703244: FLdPr var_114
  loc_703247: Set from_stack_2 = Me(from_stack_1)
  loc_70324C: FLdPr var_118
  loc_70324F: Me.ListIndex = from_stack_1
  loc_703254: FFreeAd var_114 = ""
  loc_70325B: LitI2_Byte &HFF
  loc_70325D: FLdRfVar var_118
  loc_703260: FLdPr Me
  loc_703263: MemLdRfVar from_stack_1.global_84
  loc_703266: CI2Var
  loc_703267: FLdPrThis
  loc_703268: VCallAd Control_ID_Combo2
  loc_70326B: FStAdFunc var_114
  loc_70326E: FLdPr var_114
  loc_703271: Set from_stack_2 = Me(from_stack_1)
  loc_703276: FLdPr var_118
  loc_703279: Me.ListIndex = from_stack_1
  loc_70327E: FFreeAd var_114 = ""
  loc_703285: LitI2_Byte 0
  loc_703287: FLdRfVar var_118
  loc_70328A: FLdPr Me
  loc_70328D: MemLdRfVar from_stack_1.global_84
  loc_703290: CI2Var
  loc_703291: FLdPrThis
  loc_703292: VCallAd Control_ID_Label1
  loc_703295: FStAdFunc var_114
  loc_703298: FLdPr var_114
  loc_70329B: Set from_stack_2 = Me(from_stack_1)
  loc_7032A0: FLdPr var_118
  loc_7032A3: Me.Enabled = from_stack_1b
  loc_7032A8: FFreeAd var_114 = ""
  loc_7032AF: LitI2_Byte 0
  loc_7032B1: FLdRfVar var_118
  loc_7032B4: FLdPr Me
  loc_7032B7: MemLdRfVar from_stack_1.global_84
  loc_7032BA: CI2Var
  loc_7032BB: FLdPrThis
  loc_7032BC: VCallAd Control_ID_Combo4
  loc_7032BF: FStAdFunc var_114
  loc_7032C2: FLdPr var_114
  loc_7032C5: Set from_stack_2 = Me(from_stack_1)
  loc_7032CA: FLdPr var_118
  loc_7032CD: Me.Enabled = from_stack_1b
  loc_7032D2: FFreeAd var_114 = ""
  loc_7032D9: LitI2_Byte 0
  loc_7032DB: FLdRfVar var_118
  loc_7032DE: FLdPr Me
  loc_7032E1: MemLdRfVar from_stack_1.global_84
  loc_7032E4: CI2Var
  loc_7032E5: FLdPrThis
  loc_7032E6: VCallAd Control_ID_Combo1
  loc_7032E9: FStAdFunc var_114
  loc_7032EC: FLdPr var_114
  loc_7032EF: Set from_stack_2 = Me(from_stack_1)
  loc_7032F4: FLdPr var_118
  loc_7032F7: Me.Enabled = from_stack_1b
  loc_7032FC: FFreeAd var_114 = ""
  loc_703303: LitI2_Byte 0
  loc_703305: FLdRfVar var_118
  loc_703308: FLdPr Me
  loc_70330B: MemLdRfVar from_stack_1.global_84
  loc_70330E: CI2Var
  loc_70330F: FLdPrThis
  loc_703310: VCallAd Control_ID_Combo2
  loc_703313: FStAdFunc var_114
  loc_703316: FLdPr var_114
  loc_703319: Set from_stack_2 = Me(from_stack_1)
  loc_70331E: FLdPr var_118
  loc_703321: Me.Enabled = from_stack_1b
  loc_703326: FFreeAd var_114 = ""
  loc_70332D: FLdRfVar var_9E
  loc_703330: NextUI1
  loc_703336: LitI2_Byte 1
  loc_703338: CUI1I2
  loc_70333A: FLdRfVar var_186
  loc_70333D: LitI2_Byte &H10
  loc_70333F: CUI1I2
  loc_703341: ForUI1 var_18A
  loc_703347: FLdUI1
  loc_70334B: CI4UI1
  loc_70334C: LitI4 0
  loc_703351: FLdPr Me
  loc_703354: MemLdRfVar from_stack_1.global_104
  loc_703357: AryLdPr
  loc_70335A: MemLdUI1 global_0
  loc_70335E: CI2UI1
  loc_703360: LitI2_Byte 0
  loc_703362: EqI2
  loc_703363: FLdUI1
  loc_703367: CI4UI1
  loc_703368: LitI4 1
  loc_70336D: FLdPr Me
  loc_703370: MemLdRfVar from_stack_1.global_104
  loc_703373: AryLdPr
  loc_703376: MemLdUI1 global_0
  loc_70337A: CI2UI1
  loc_70337C: LitI2_Byte 0
  loc_70337E: EqI2
  loc_70337F: AndI4
  loc_703380: BranchF loc_703386
  loc_703383: Branch loc_703462
  loc_703386: FLdUI1
  loc_70338A: CI4UI1
  loc_70338B: LitI4 0
  loc_703390: FLdPr Me
  loc_703393: MemLdRfVar from_stack_1.global_104
  loc_703396: AryLdPr
  loc_703399: MemLdUI1 global_0
  loc_70339D: FLdUI1
  loc_7033A1: CI4UI1
  loc_7033A2: LitI4 1
  loc_7033A7: FLdPr Me
  loc_7033AA: MemLdRfVar from_stack_1.global_104
  loc_7033AD: AryLdPr
  loc_7033B0: MemLdUI1 global_0
  loc_7033B4: EqI2
  loc_7033B5: BranchF loc_7033F8
  loc_7033B8: FLdUI1
  loc_7033BC: CI4UI1
  loc_7033BD: LitI4 0
  loc_7033C2: FLdPr Me
  loc_7033C5: MemLdRfVar from_stack_1.global_104
  loc_7033C8: AryLdPr
  loc_7033CB: MemLdUI1 global_0
  loc_7033CF: CI2UI1
  loc_7033D1: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_7033D6: LitI2_Byte &HFF
  loc_7033D8: EqI2
  loc_7033D9: BranchF loc_7033EA
  loc_7033DC: LitI2_Byte &HFF
  loc_7033DE: FLdUI1
  loc_7033E2: CI4UI1
  loc_7033E3: FLdRfVar var_9C
  loc_7033E6: Ary1StI2
  loc_7033E7: Branch loc_7033F5
  loc_7033EA: LitI2_Byte 0
  loc_7033EC: FLdUI1
  loc_7033F0: CI4UI1
  loc_7033F1: FLdRfVar var_9C
  loc_7033F4: Ary1StI2
  loc_7033F5: Branch loc_703459
  loc_7033F8: FLdUI1
  loc_7033FC: CI4UI1
  loc_7033FD: LitI4 0
  loc_703402: FLdPr Me
  loc_703405: MemLdRfVar from_stack_1.global_104
  loc_703408: AryLdPr
  loc_70340B: MemLdUI1 global_0
  loc_70340F: FLdUI1
  loc_703413: CI4UI1
  loc_703414: LitI4 1
  loc_703419: FLdPr Me
  loc_70341C: MemLdRfVar from_stack_1.global_104
  loc_70341F: AryLdPr
  loc_703422: MemLdUI1 global_0
  loc_703426: NeI2
  loc_703427: BranchF loc_703459
  loc_70342A: FLdUI1
  loc_70342E: CI4UI1
  loc_70342F: LitI4 0
  loc_703434: FLdPr Me
  loc_703437: MemLdRfVar from_stack_1.global_104
  loc_70343A: AryLdPr
  loc_70343D: MemLdUI1 global_0
  loc_703441: CI2UI1
  loc_703443: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_703448: LitI2_Byte &HFF
  loc_70344A: EqI2
  loc_70344B: BranchF loc_703459
  loc_70344E: LitI2_Byte &HFF
  loc_703450: FLdUI1
  loc_703454: CI4UI1
  loc_703455: FLdRfVar var_9C
  loc_703458: Ary1StI2
  loc_703459: FLdRfVar var_186
  loc_70345C: NextUI1
  loc_703462: FLdUI1
  loc_703466: CR8I2
  loc_703467: LitI2_Byte &H10
  loc_703469: CR8I2
  loc_70346A: DivR8
  loc_70346B: CI2R8
  loc_70346C: CUI1I2
  loc_70346E: FLdPr Me
  loc_703471: MemStUI1
  loc_703475: FLdPr Me
  loc_703478: MemLdUI1 global_100
  loc_70347C: CI2UI1
  loc_70347E: LitI2_Byte &H10
  loc_703480: MulI2
  loc_703481: FLdUI1
  loc_703485: CI2UI1
  loc_703487: LtI2
  loc_703488: BranchF loc_7034A0
  loc_70348B: FLdPr Me
  loc_70348E: MemLdUI1 global_100
  loc_703492: CI2UI1
  loc_703494: LitI2_Byte 1
  loc_703496: AddI2
  loc_703497: CUI1I2
  loc_703499: FLdPr Me
  loc_70349C: MemStUI1
  loc_7034A0: LitVarI2 var_C8, 1
  loc_7034A5: FLdPr Me
  loc_7034A8: MemStVar
  loc_7034AC: LitVarI2 var_C8, 1
  loc_7034B1: FStVar var_B4
  loc_7034B5: LitVarI2 var_154, 1
  loc_7034BA: FLdRfVar var_B4
  loc_7034BD: LitVarI2 var_F0, 16
  loc_7034C2: ForVar var_1AC
  loc_7034C8: FLdRfVar var_118
  loc_7034CB: FLdRfVar var_B4
  loc_7034CE: CI2Var
  loc_7034CF: FLdPrThis
  loc_7034D0: VCallAd Control_ID_Combo4
  loc_7034D3: FStAdFunc var_114
  loc_7034D6: FLdPr var_114
  loc_7034D9: Set from_stack_2 = Me(from_stack_1)
  loc_7034DE: FLdPr var_118
  loc_7034E1: Me.Clear
  loc_7034E6: FFreeAd var_114 = ""
  loc_7034ED: FLdRfVar var_B4
  loc_7034F0: NextStepVar var_1AC
  loc_7034F6: LitVarI2 var_154, 1
  loc_7034FB: FLdRfVar var_B4
  loc_7034FE: LitVarI2 var_F0, 16
  loc_703503: ForVar var_1CC
  loc_703509: FLdRfVar var_11C
  loc_70350C: FLdRfVar var_118
  loc_70350F: FLdRfVar var_B4
  loc_703512: CI2Var
  loc_703513: FLdPrThis
  loc_703514: VCallAd Control_ID_Label1
  loc_703517: FStAdFunc var_114
  loc_70351A: FLdPr var_114
  loc_70351D: Set from_stack_2 = Me(from_stack_1)
  loc_703522: FLdPr var_118
  loc_703525:  = Me.Caption
  loc_70352A: FLdZeroAd var_11C
  loc_70352D: CVarStr var_E0
  loc_703530: FLdRfVar var_100
  loc_703533: ImpAdCallFPR4  = Trim()
  loc_703538: FLdRfVar var_100
  loc_70353B: LitVarStr var_C8, vbNullString
  loc_703540: HardType
  loc_703541: NeVarBool
  loc_703543: FFreeAd var_114 = ""
  loc_70354A: FFreeVar var_E0 = ""
  loc_703551: BranchF loc_703A01
  loc_703554: FLdRfVar var_176
  loc_703557: FLdRfVar var_11C
  loc_70355A: FLdRfVar var_118
  loc_70355D: FLdRfVar var_B4
  loc_703560: CI2Var
  loc_703561: FLdPrThis
  loc_703562: VCallAd Control_ID_Label1
  loc_703565: FStAdFunc var_114
  loc_703568: FLdPr var_114
  loc_70356B: Set from_stack_2 = Me(from_stack_1)
  loc_703570: FLdPr var_118
  loc_703573:  = Me.Caption
  loc_703578: FLdZeroAd var_11C
  loc_70357B: PopTmpLdAdStr
  loc_70357F: from_stack_2v = BuscarTipo(from_stack_1v)
  loc_703584: FLdI2 var_176
  loc_703587: CI4UI1
  loc_703588: ImpAdLdRf MemVar_74C1F4
  loc_70358B: Ary1LdUI1
  loc_70358D: CI2UI1
  loc_70358F: FStI2 var_18C
  loc_703592: FFree1Str var_120
  loc_703595: FFreeAd var_114 = ""
  loc_70359C: FLdI2 var_18C
  loc_70359F: LitI2_Byte 7
  loc_7035A1: LtI2
  loc_7035A2: BranchF loc_7037EC
  loc_7035A5: LitI2_Byte 1
  loc_7035A7: FLdRfVar var_B6
  loc_7035AA: FLdRfVar var_176
  loc_7035AD: ImpAdLdRf MemVar_74A220
  loc_7035B0: NewIfNullPr clsProducts
  loc_7035B3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_7035B8: FLdI2 var_176
  loc_7035BB: ForI2 var_1D0
  loc_7035C1: FLdRfVar var_176
  loc_7035C4: FLdI2 var_B6
  loc_7035C7: ImpAdLdRf MemVar_74A220
  loc_7035CA: NewIfNullPr clsProducts
  loc_7035CD:  = clsProducts.Name
  loc_7035D2: FLdI2 var_176
  loc_7035D5: LitI2_Byte 7
  loc_7035D7: LtI2
  loc_7035D8: FLdRfVar var_178
  loc_7035DB: FLdI2 var_B6
  loc_7035DE: ImpAdLdRf MemVar_74A220
  loc_7035E1: NewIfNullPr clsProducts
  loc_7035E4:  = clsProducts.hWnd
  loc_7035E9: FLdI2 var_178
  loc_7035EC: OrI4
  loc_7035ED: BranchF loc_7037E1
  loc_7035F0: FLdRfVar var_B4
  loc_7035F3: CI4Var
  loc_7035F5: FLdRfVar var_9C
  loc_7035F8: Ary1LdI2
  loc_7035F9: LitI2_Byte 0
  loc_7035FB: EqI2
  loc_7035FC: CVarBoolI2 var_2F4
  loc_703600: FLdRfVar var_11C
  loc_703603: FLdI2 var_B6
  loc_703606: ImpAdLdRf MemVar_74A220
  loc_703609: NewIfNullPr clsProducts
  loc_703611: FLdZeroAd var_11C
  loc_703614: CVarStr var_E0
  loc_703617: FLdRfVar var_100
  loc_70361A: ImpAdCallFPR4  = Trim()
  loc_70361F: FLdRfVar var_100
  loc_703622: FLdRfVar var_110
  loc_703625: ImpAdCallFPR4  = Ucase()
  loc_70362A: FLdRfVar var_110
  loc_70362D: FLdRfVar var_124
  loc_703630: LitVar_Missing var_2C4
  loc_703633: LitVar_Missing var_2A4
  loc_703636: LitVar_Missing var_284
  loc_703639: LitVar_Missing var_264
  loc_70363C: LitVar_Missing var_244
  loc_70363F: LitVar_Missing var_224
  loc_703642: LitVar_Missing var_204
  loc_703645: LitVar_Missing var_1F4
  loc_703648: LitVar_Missing var_1E4
  loc_70364B: LitVar_Missing var_174
  loc_70364E: LitStr "GNC"
  loc_703651: FStStrCopy var_120
  loc_703654: FLdRfVar var_120
  loc_703657: LitI4 &H1C
  loc_70365C: PopTmpLdAdStr var_1D4
  loc_70365F: LitI2_Byte &H3F
  loc_703661: PopTmpLdAd2 var_176
  loc_703664: ImpAdLdRf MemVar_74C7D0
  loc_703667: NewIfNullPr clsMsg
  loc_70366A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70366F: FLdZeroAd var_124
  loc_703672: CVarStr var_2D4
  loc_703675: HardType
  loc_703676: NeVar var_2E4
  loc_70367A: AndVar var_304
  loc_70367E: CBoolVarNull
  loc_703680: FFree1Str var_120
  loc_703683: FFreeVar var_E0 = "": var_100 = "": var_174 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_110 = "": var_2D4 = ""
  loc_7036A4: BranchF loc_7036EA
  loc_7036A7: LitVar_Missing var_C8
  loc_7036AA: PopAdLdVar
  loc_7036AB: FLdRfVar var_11C
  loc_7036AE: FLdI2 var_B6
  loc_7036B1: ImpAdLdRf MemVar_74A220
  loc_7036B4: NewIfNullPr clsProducts
  loc_7036BC: ILdRf var_11C
  loc_7036BF: FLdRfVar var_118
  loc_7036C2: FLdRfVar var_B4
  loc_7036C5: CI2Var
  loc_7036C6: FLdPrThis
  loc_7036C7: VCallAd Control_ID_Combo4
  loc_7036CA: FStAdFunc var_114
  loc_7036CD: FLdPr var_114
  loc_7036D0: Set from_stack_2 = Me(from_stack_1)
  loc_7036D5: FLdPr var_118
  loc_7036D8: Me.AddItem from_stack_1, from_stack_2
  loc_7036DD: FFree1Str var_11C
  loc_7036E0: FFreeAd var_114 = ""
  loc_7036E7: Branch loc_7037E1
  loc_7036EA: FLdRfVar var_B4
  loc_7036ED: CI4Var
  loc_7036EF: FLdRfVar var_9C
  loc_7036F2: Ary1LdI2
  loc_7036F3: LitI2_Byte &HFF
  loc_7036F5: EqI2
  loc_7036F6: CVarBoolI2 var_2F4
  loc_7036FA: FLdRfVar var_11C
  loc_7036FD: FLdI2 var_B6
  loc_703700: ImpAdLdRf MemVar_74A220
  loc_703703: NewIfNullPr clsProducts
  loc_70370B: FLdZeroAd var_11C
  loc_70370E: CVarStr var_E0
  loc_703711: FLdRfVar var_100
  loc_703714: ImpAdCallFPR4  = Trim()
  loc_703719: FLdRfVar var_100
  loc_70371C: FLdRfVar var_110
  loc_70371F: ImpAdCallFPR4  = Ucase()
  loc_703724: FLdRfVar var_110
  loc_703727: FLdRfVar var_124
  loc_70372A: LitVar_Missing var_2C4
  loc_70372D: LitVar_Missing var_2A4
  loc_703730: LitVar_Missing var_284
  loc_703733: LitVar_Missing var_264
  loc_703736: LitVar_Missing var_244
  loc_703739: LitVar_Missing var_224
  loc_70373C: LitVar_Missing var_204
  loc_70373F: LitVar_Missing var_1F4
  loc_703742: LitVar_Missing var_1E4
  loc_703745: LitVar_Missing var_174
  loc_703748: LitStr "GNC"
  loc_70374B: FStStrCopy var_120
  loc_70374E: FLdRfVar var_120
  loc_703751: LitI4 &H1C
  loc_703756: PopTmpLdAdStr var_1D4
  loc_703759: LitI2_Byte &H3F
  loc_70375B: PopTmpLdAd2 var_176
  loc_70375E: ImpAdLdRf MemVar_74C7D0
  loc_703761: NewIfNullPr clsMsg
  loc_703764: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_703769: FLdZeroAd var_124
  loc_70376C: CVarStr var_2D4
  loc_70376F: HardType
  loc_703770: EqVar var_2E4
  loc_703774: AndVar var_304
  loc_703778: CBoolVarNull
  loc_70377A: FFree1Str var_120
  loc_70377D: FFreeVar var_E0 = "": var_100 = "": var_174 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_110 = "": var_2D4 = ""
  loc_70379E: BranchF loc_7037E1
  loc_7037A1: LitVar_Missing var_C8
  loc_7037A4: PopAdLdVar
  loc_7037A5: FLdRfVar var_11C
  loc_7037A8: FLdI2 var_B6
  loc_7037AB: ImpAdLdRf MemVar_74A220
  loc_7037AE: NewIfNullPr clsProducts
  loc_7037B6: ILdRf var_11C
  loc_7037B9: FLdRfVar var_118
  loc_7037BC: FLdRfVar var_B4
  loc_7037BF: CI2Var
  loc_7037C0: FLdPrThis
  loc_7037C1: VCallAd Control_ID_Combo4
  loc_7037C4: FStAdFunc var_114
  loc_7037C7: FLdPr var_114
  loc_7037CA: Set from_stack_2 = Me(from_stack_1)
  loc_7037CF: FLdPr var_118
  loc_7037D2: Me.AddItem from_stack_1, from_stack_2
  loc_7037D7: FFree1Str var_11C
  loc_7037DA: FFreeAd var_114 = ""
  loc_7037E1: FLdRfVar var_B6
  loc_7037E4: NextI2 var_1D0, loc_7035C1
  loc_7037E9: Branch loc_703A01
  loc_7037EC: LitI2_Byte 1
  loc_7037EE: FLdRfVar var_B6
  loc_7037F1: FLdRfVar var_176
  loc_7037F4: ImpAdLdRf MemVar_74A220
  loc_7037F7: NewIfNullPr clsProducts
  loc_7037FA: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_7037FF: FLdI2 var_176
  loc_703802: ForI2 var_308
  loc_703808: FLdRfVar var_B4
  loc_70380B: CI4Var
  loc_70380D: FLdRfVar var_9C
  loc_703810: Ary1LdI2
  loc_703811: LitI2_Byte 0
  loc_703813: EqI2
  loc_703814: CVarBoolI2 var_2F4
  loc_703818: FLdRfVar var_11C
  loc_70381B: FLdI2 var_B6
  loc_70381E: ImpAdLdRf MemVar_74A220
  loc_703821: NewIfNullPr clsProducts
  loc_703829: FLdZeroAd var_11C
  loc_70382C: CVarStr var_E0
  loc_70382F: FLdRfVar var_100
  loc_703832: ImpAdCallFPR4  = Trim()
  loc_703837: FLdRfVar var_100
  loc_70383A: FLdRfVar var_110
  loc_70383D: ImpAdCallFPR4  = Ucase()
  loc_703842: FLdRfVar var_110
  loc_703845: FLdRfVar var_124
  loc_703848: LitVar_Missing var_2C4
  loc_70384B: LitVar_Missing var_2A4
  loc_70384E: LitVar_Missing var_284
  loc_703851: LitVar_Missing var_264
  loc_703854: LitVar_Missing var_244
  loc_703857: LitVar_Missing var_224
  loc_70385A: LitVar_Missing var_204
  loc_70385D: LitVar_Missing var_1F4
  loc_703860: LitVar_Missing var_1E4
  loc_703863: LitVar_Missing var_174
  loc_703866: LitStr "GNC"
  loc_703869: FStStrCopy var_120
  loc_70386C: FLdRfVar var_120
  loc_70386F: LitI4 &H1C
  loc_703874: PopTmpLdAdStr var_1D4
  loc_703877: LitI2_Byte &H3F
  loc_703879: PopTmpLdAd2 var_176
  loc_70387C: ImpAdLdRf MemVar_74C7D0
  loc_70387F: NewIfNullPr clsMsg
  loc_703882: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_703887: FLdZeroAd var_124
  loc_70388A: CVarStr var_2D4
  loc_70388D: HardType
  loc_70388E: NeVar var_2E4
  loc_703892: AndVar var_304
  loc_703896: CBoolVarNull
  loc_703898: FFree1Str var_120
  loc_70389B: FFreeVar var_E0 = "": var_100 = "": var_174 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_110 = "": var_2D4 = ""
  loc_7038BC: BranchF loc_703902
  loc_7038BF: LitVar_Missing var_C8
  loc_7038C2: PopAdLdVar
  loc_7038C3: FLdRfVar var_11C
  loc_7038C6: FLdI2 var_B6
  loc_7038C9: ImpAdLdRf MemVar_74A220
  loc_7038CC: NewIfNullPr clsProducts
  loc_7038D4: ILdRf var_11C
  loc_7038D7: FLdRfVar var_118
  loc_7038DA: FLdRfVar var_B4
  loc_7038DD: CI2Var
  loc_7038DE: FLdPrThis
  loc_7038DF: VCallAd Control_ID_Combo4
  loc_7038E2: FStAdFunc var_114
  loc_7038E5: FLdPr var_114
  loc_7038E8: Set from_stack_2 = Me(from_stack_1)
  loc_7038ED: FLdPr var_118
  loc_7038F0: Me.AddItem from_stack_1, from_stack_2
  loc_7038F5: FFree1Str var_11C
  loc_7038F8: FFreeAd var_114 = ""
  loc_7038FF: Branch loc_7039F9
  loc_703902: FLdRfVar var_B4
  loc_703905: CI4Var
  loc_703907: FLdRfVar var_9C
  loc_70390A: Ary1LdI2
  loc_70390B: LitI2_Byte &HFF
  loc_70390D: EqI2
  loc_70390E: CVarBoolI2 var_2F4
  loc_703912: FLdRfVar var_11C
  loc_703915: FLdI2 var_B6
  loc_703918: ImpAdLdRf MemVar_74A220
  loc_70391B: NewIfNullPr clsProducts
  loc_703923: FLdZeroAd var_11C
  loc_703926: CVarStr var_E0
  loc_703929: FLdRfVar var_100
  loc_70392C: ImpAdCallFPR4  = Trim()
  loc_703931: FLdRfVar var_100
  loc_703934: FLdRfVar var_110
  loc_703937: ImpAdCallFPR4  = Ucase()
  loc_70393C: FLdRfVar var_110
  loc_70393F: FLdRfVar var_124
  loc_703942: LitVar_Missing var_2C4
  loc_703945: LitVar_Missing var_2A4
  loc_703948: LitVar_Missing var_284
  loc_70394B: LitVar_Missing var_264
  loc_70394E: LitVar_Missing var_244
  loc_703951: LitVar_Missing var_224
  loc_703954: LitVar_Missing var_204
  loc_703957: LitVar_Missing var_1F4
  loc_70395A: LitVar_Missing var_1E4
  loc_70395D: LitVar_Missing var_174
  loc_703960: LitStr "GNC"
  loc_703963: FStStrCopy var_120
  loc_703966: FLdRfVar var_120
  loc_703969: LitI4 &H1C
  loc_70396E: PopTmpLdAdStr var_1D4
  loc_703971: LitI2_Byte &H3F
  loc_703973: PopTmpLdAd2 var_176
  loc_703976: ImpAdLdRf MemVar_74C7D0
  loc_703979: NewIfNullPr clsMsg
  loc_70397C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_703981: FLdZeroAd var_124
  loc_703984: CVarStr var_2D4
  loc_703987: HardType
  loc_703988: EqVar var_2E4
  loc_70398C: AndVar var_304
  loc_703990: CBoolVarNull
  loc_703992: FFree1Str var_120
  loc_703995: FFreeVar var_E0 = "": var_100 = "": var_174 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_110 = "": var_2D4 = ""
  loc_7039B6: BranchF loc_7039F9
  loc_7039B9: LitVar_Missing var_C8
  loc_7039BC: PopAdLdVar
  loc_7039BD: FLdRfVar var_11C
  loc_7039C0: FLdI2 var_B6
  loc_7039C3: ImpAdLdRf MemVar_74A220
  loc_7039C6: NewIfNullPr clsProducts
  loc_7039CE: ILdRf var_11C
  loc_7039D1: FLdRfVar var_118
  loc_7039D4: FLdRfVar var_B4
  loc_7039D7: CI2Var
  loc_7039D8: FLdPrThis
  loc_7039D9: VCallAd Control_ID_Combo4
  loc_7039DC: FStAdFunc var_114
  loc_7039DF: FLdPr var_114
  loc_7039E2: Set from_stack_2 = Me(from_stack_1)
  loc_7039E7: FLdPr var_118
  loc_7039EA: Me.AddItem from_stack_1, from_stack_2
  loc_7039EF: FFree1Str var_11C
  loc_7039F2: FFreeAd var_114 = ""
  loc_7039F9: FLdRfVar var_B6
  loc_7039FC: NextI2 var_308, loc_703808
  loc_703A01: FLdRfVar var_B4
  loc_703A04: NextStepVar var_1CC
  loc_703A0A: FLdRfVar var_E0
  loc_703A0D: from_stack_1v = clickear()
  loc_703A12: FFree1Var var_E0 = ""
  loc_703A15: Call ArmarCombo3()
  loc_703A1A: FLdPrThis
  loc_703A1B: VCallAd Control_ID_SSCommand2
  loc_703A1E: FStAdFunc var_114
  loc_703A21: FLdPr var_114
  loc_703A24: LateIdCall
  loc_703A2C: FFree1Ad var_114
  loc_703A2F: LitI2_Byte 1
  loc_703A31: CUI1I2
  loc_703A33: FLdRfVar var_30A
  loc_703A36: LitI2_Byte &H10
  loc_703A38: CUI1I2
  loc_703A3A: ForUI1 var_30E
  loc_703A40: FLdRfVar var_176
  loc_703A43: FLdRfVar var_118
  loc_703A46: FLdUI1
  loc_703A4A: CI2UI1
  loc_703A4C: FLdPrThis
  loc_703A4D: VCallAd Control_ID_Combo4
  loc_703A50: FStAdFunc var_114
  loc_703A53: FLdPr var_114
  loc_703A56: Set from_stack_2 = Me(from_stack_1)
  loc_703A5B: FLdPr var_118
  loc_703A5E:  = Me.ListCount
  loc_703A63: FLdI2 var_176
  loc_703A66: LitI2_Byte 1
  loc_703A68: EqI2
  loc_703A69: FLdRfVar var_178
  loc_703A6C: FLdRfVar var_184
  loc_703A6F: FLdUI1
  loc_703A73: CI2UI1
  loc_703A75: FLdPrThis
  loc_703A76: VCallAd Control_ID_Combo4
  loc_703A79: FStAdFunc var_180
  loc_703A7C: FLdPr var_180
  loc_703A7F: Set from_stack_2 = Me(from_stack_1)
  loc_703A84: FLdPr var_184
  loc_703A87:  = Me.Enabled
  loc_703A8C: FLdI2 var_178
  loc_703A8F: AndI4
  loc_703A90: FFreeAd var_114 = "": var_118 = "": var_180 = ""
  loc_703A9B: BranchF loc_703AC7
  loc_703A9E: LitI2_Byte 0
  loc_703AA0: FLdRfVar var_118
  loc_703AA3: FLdUI1
  loc_703AA7: CI2UI1
  loc_703AA9: FLdPrThis
  loc_703AAA: VCallAd Control_ID_Combo4
  loc_703AAD: FStAdFunc var_114
  loc_703AB0: FLdPr var_114
  loc_703AB3: Set from_stack_2 = Me(from_stack_1)
  loc_703AB8: FLdPr var_118
  loc_703ABB: Me.ListIndex = from_stack_1
  loc_703AC0: FFreeAd var_114 = ""
  loc_703AC7: FLdRfVar var_30A
  loc_703ACA: NextUI1
  loc_703AD0: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '5E6E28
  'Data Table: 42DBA0
  loc_5E6DAC: FLdPrThis
  loc_5E6DAD: VCallAd Control_ID_SSCommand2
  loc_5E6DB0: FStAdFunc var_88
  loc_5E6DB3: FLdPr var_88
  loc_5E6DB6: LateIdCall
  loc_5E6DBE: FFree1Ad var_88
  loc_5E6DC1: ImpAdLdRf MemVar_74C914
  loc_5E6DC4: NewIfNullPr fConexion1
  loc_5E6DC7: fConexion1.Hide
  loc_5E6DCC: ImpAdLdUI1
  loc_5E6DD0: CI2UI1
  loc_5E6DD2: LitI2_Byte 1
  loc_5E6DD4: EqI2
  loc_5E6DD5: BranchF loc_5E6DEE
  loc_5E6DD8: LitVar_Missing var_A8
  loc_5E6DDB: PopAdLdVar
  loc_5E6DDC: LitVarI2 var_98, 1
  loc_5E6DE1: PopAdLdVar
  loc_5E6DE2: ImpAdLdRf MemVar_74C900
  loc_5E6DE5: NewIfNullPr fCapacidadTanque
  loc_5E6DE8: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5E6DED: ExitProcHresult
  loc_5E6DEE: ImpAdLdUI1
  loc_5E6DF2: CI2UI1
  loc_5E6DF4: LitI2_Byte 4
  loc_5E6DF6: EqI2
  loc_5E6DF7: BranchF loc_5E6E12
  loc_5E6DFA: LitVar_Missing var_A8
  loc_5E6DFD: PopAdLdVar
  loc_5E6DFE: LitVarI2 var_98, 1
  loc_5E6E03: PopAdLdVar
  loc_5E6E04: ImpAdLdRf MemVar_74C8EC
  loc_5E6E07: NewIfNullPr fTanquesDisponibles
  loc_5E6E0A: fTanquesDisponibles.Show from_stack_1, from_stack_2
  loc_5E6E0F: Branch loc_5E6E27
  loc_5E6E12: LitVar_Missing var_A8
  loc_5E6E15: PopAdLdVar
  loc_5E6E16: LitVarI2 var_98, 1
  loc_5E6E1B: PopAdLdVar
  loc_5E6E1C: ImpAdLdRf MemVar_74C900
  loc_5E6E1F: NewIfNullPr fCapacidadTanque
  loc_5E6E22: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5E6E27: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '699CFC
  'Data Table: 42DBA0
  loc_6996FC: LitI2_Byte 1
  loc_6996FE: CUI1I2
  loc_699700: FLdRfVar var_86
  loc_699703: LitI2_Byte &H10
  loc_699705: CUI1I2
  loc_699707: ForUI1 var_8A
  loc_69970D: FLdRfVar var_96
  loc_699710: FLdRfVar var_94
  loc_699713: FLdUI1
  loc_699717: CI2UI1
  loc_699719: FLdPrThis
  loc_69971A: VCallAd Control_ID_Combo1
  loc_69971D: FStAdFunc var_90
  loc_699720: FLdPr var_90
  loc_699723: Set from_stack_2 = Me(from_stack_1)
  loc_699728: FLdPr var_94
  loc_69972B:  = Me.Enabled
  loc_699730: FLdI2 var_96
  loc_699733: LitI2_Byte &HFF
  loc_699735: EqI2
  loc_699736: FLdRfVar var_A2
  loc_699739: FLdRfVar var_A0
  loc_69973C: FLdUI1
  loc_699740: CI2UI1
  loc_699742: FLdPrThis
  loc_699743: VCallAd Control_ID_Combo1
  loc_699746: FStAdFunc var_9C
  loc_699749: FLdPr var_9C
  loc_69974C: Set from_stack_2 = Me(from_stack_1)
  loc_699751: FLdPr var_A0
  loc_699754:  = Me.ListIndex
  loc_699759: FLdI2 var_A2
  loc_69975C: LitI2_Byte &HFF
  loc_69975E: EqI2
  loc_69975F: AndI4
  loc_699760: FFreeAd var_90 = "": var_94 = "": var_9C = ""
  loc_69976B: BranchF loc_6998A5
  loc_69976E: ImpAdCallFPR4 Beep()
  loc_699773: FLdRfVar var_1F0
  loc_699776: LitVar_Missing var_1EC
  loc_699779: LitVar_Missing var_1CC
  loc_69977C: LitVar_Missing var_1AC
  loc_69977F: LitVar_Missing var_18C
  loc_699782: LitVar_Missing var_16C
  loc_699785: LitVar_Missing var_14C
  loc_699788: LitVar_Missing var_12C
  loc_69978B: LitVar_Missing var_10C
  loc_69978E: LitVar_Missing var_EC
  loc_699791: LitVar_Missing var_CC
  loc_699794: LitStr "Debe configurarse la Succión del Surtidor."
  loc_699797: FStStrCopy var_AC
  loc_69979A: FLdRfVar var_AC
  loc_69979D: LitI4 9
  loc_6997A2: PopTmpLdAdStr var_A8
  loc_6997A5: LitI2_Byte &H28
  loc_6997A7: PopTmpLdAd2 var_96
  loc_6997AA: ImpAdLdRf MemVar_74C7D0
  loc_6997AD: NewIfNullPr clsMsg
  loc_6997B0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6997B5: LitI4 &HD
  loc_6997BA: FLdRfVar var_200
  loc_6997BD: ImpAdCallFPR4  = Chr()
  loc_6997C2: LitI4 &HA
  loc_6997C7: FLdRfVar var_230
  loc_6997CA: ImpAdCallFPR4  = Chr()
  loc_6997CF: FLdRfVar var_38C
  loc_6997D2: LitVar_Missing var_388
  loc_6997D5: LitVar_Missing var_368
  loc_6997D8: LitVar_Missing var_348
  loc_6997DB: LitVar_Missing var_328
  loc_6997DE: LitVar_Missing var_308
  loc_6997E1: LitVar_Missing var_2E8
  loc_6997E4: LitVar_Missing var_2C8
  loc_6997E7: LitVar_Missing var_2A8
  loc_6997EA: LitVar_Missing var_288
  loc_6997ED: LitVar_Missing var_268
  loc_6997F0: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_6997F3: FStStrCopy var_248
  loc_6997F6: FLdRfVar var_248
  loc_6997F9: LitI4 &HA
  loc_6997FE: PopTmpLdAdStr var_244
  loc_699801: LitI2_Byte &H28
  loc_699803: PopTmpLdAd2 var_A2
  loc_699806: ImpAdLdRf MemVar_74C7D0
  loc_699809: NewIfNullPr clsMsg
  loc_69980C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_699811: LitVar_Missing var_3DC
  loc_699814: LitVar_Missing var_3BC
  loc_699817: FLdZeroAd var_38C
  loc_69981A: CVarStr var_39C
  loc_69981D: LitI4 &H10
  loc_699822: FLdZeroAd var_1F0
  loc_699825: CVarStr var_210
  loc_699828: FLdRfVar var_200
  loc_69982B: ConcatVar var_220
  loc_69982F: FLdRfVar var_230
  loc_699832: ConcatVar var_240
  loc_699836: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69983B: FFreeStr var_AC = ""
  loc_699842: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_210 = "": var_200 = "": var_220 = "": var_230 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_240 = "": var_39C = "": var_3BC = ""
  loc_69987D: FLdRfVar var_94
  loc_699880: FLdUI1
  loc_699884: CI2UI1
  loc_699886: FLdPrThis
  loc_699887: VCallAd Control_ID_Combo1
  loc_69988A: FStAdFunc var_90
  loc_69988D: FLdPr var_90
  loc_699890: Set from_stack_2 = Me(from_stack_1)
  loc_699895: FLdPr var_94
  loc_699898: Me.SetFocus
  loc_69989D: FFreeAd var_90 = ""
  loc_6998A4: ExitProcHresult
  loc_6998A5: FLdRfVar var_96
  loc_6998A8: FLdRfVar var_94
  loc_6998AB: FLdUI1
  loc_6998AF: CI2UI1
  loc_6998B1: FLdPrThis
  loc_6998B2: VCallAd Control_ID_Combo2
  loc_6998B5: FStAdFunc var_90
  loc_6998B8: FLdPr var_90
  loc_6998BB: Set from_stack_2 = Me(from_stack_1)
  loc_6998C0: FLdPr var_94
  loc_6998C3:  = Me.Enabled
  loc_6998C8: FLdI2 var_96
  loc_6998CB: LitI2_Byte &HFF
  loc_6998CD: EqI2
  loc_6998CE: FLdRfVar var_A2
  loc_6998D1: FLdRfVar var_A0
  loc_6998D4: FLdUI1
  loc_6998D8: CI2UI1
  loc_6998DA: FLdPrThis
  loc_6998DB: VCallAd Control_ID_Combo2
  loc_6998DE: FStAdFunc var_9C
  loc_6998E1: FLdPr var_9C
  loc_6998E4: Set from_stack_2 = Me(from_stack_1)
  loc_6998E9: FLdPr var_A0
  loc_6998EC:  = Me.ListIndex
  loc_6998F1: FLdI2 var_A2
  loc_6998F4: LitI2_Byte &HFF
  loc_6998F6: EqI2
  loc_6998F7: AndI4
  loc_6998F8: FFreeAd var_90 = "": var_94 = "": var_9C = ""
  loc_699903: BranchF loc_699A3D
  loc_699906: ImpAdCallFPR4 Beep()
  loc_69990B: FLdRfVar var_1F0
  loc_69990E: LitVar_Missing var_1EC
  loc_699911: LitVar_Missing var_1CC
  loc_699914: LitVar_Missing var_1AC
  loc_699917: LitVar_Missing var_18C
  loc_69991A: LitVar_Missing var_16C
  loc_69991D: LitVar_Missing var_14C
  loc_699920: LitVar_Missing var_12C
  loc_699923: LitVar_Missing var_10C
  loc_699926: LitVar_Missing var_EC
  loc_699929: LitVar_Missing var_CC
  loc_69992C: LitStr "Debe configurarse el Lado ""A"" del Surtidor."
  loc_69992F: FStStrCopy var_AC
  loc_699932: FLdRfVar var_AC
  loc_699935: LitI4 &HB
  loc_69993A: PopTmpLdAdStr var_A8
  loc_69993D: LitI2_Byte &H28
  loc_69993F: PopTmpLdAd2 var_96
  loc_699942: ImpAdLdRf MemVar_74C7D0
  loc_699945: NewIfNullPr clsMsg
  loc_699948: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69994D: LitI4 &HD
  loc_699952: FLdRfVar var_200
  loc_699955: ImpAdCallFPR4  = Chr()
  loc_69995A: LitI4 &HA
  loc_69995F: FLdRfVar var_230
  loc_699962: ImpAdCallFPR4  = Chr()
  loc_699967: FLdRfVar var_38C
  loc_69996A: LitVar_Missing var_388
  loc_69996D: LitVar_Missing var_368
  loc_699970: LitVar_Missing var_348
  loc_699973: LitVar_Missing var_328
  loc_699976: LitVar_Missing var_308
  loc_699979: LitVar_Missing var_2E8
  loc_69997C: LitVar_Missing var_2C8
  loc_69997F: LitVar_Missing var_2A8
  loc_699982: LitVar_Missing var_288
  loc_699985: LitVar_Missing var_268
  loc_699988: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_69998B: FStStrCopy var_248
  loc_69998E: FLdRfVar var_248
  loc_699991: LitI4 &HA
  loc_699996: PopTmpLdAdStr var_244
  loc_699999: LitI2_Byte &H28
  loc_69999B: PopTmpLdAd2 var_A2
  loc_69999E: ImpAdLdRf MemVar_74C7D0
  loc_6999A1: NewIfNullPr clsMsg
  loc_6999A4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6999A9: LitVar_Missing var_3DC
  loc_6999AC: LitVar_Missing var_3BC
  loc_6999AF: FLdZeroAd var_38C
  loc_6999B2: CVarStr var_39C
  loc_6999B5: LitI4 &H10
  loc_6999BA: FLdZeroAd var_1F0
  loc_6999BD: CVarStr var_210
  loc_6999C0: FLdRfVar var_200
  loc_6999C3: ConcatVar var_220
  loc_6999C7: FLdRfVar var_230
  loc_6999CA: ConcatVar var_240
  loc_6999CE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6999D3: FFreeStr var_AC = ""
  loc_6999DA: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_210 = "": var_200 = "": var_220 = "": var_230 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_240 = "": var_39C = "": var_3BC = ""
  loc_699A15: FLdRfVar var_94
  loc_699A18: FLdUI1
  loc_699A1C: CI2UI1
  loc_699A1E: FLdPrThis
  loc_699A1F: VCallAd Control_ID_Combo2
  loc_699A22: FStAdFunc var_90
  loc_699A25: FLdPr var_90
  loc_699A28: Set from_stack_2 = Me(from_stack_1)
  loc_699A2D: FLdPr var_94
  loc_699A30: Me.SetFocus
  loc_699A35: FFreeAd var_90 = ""
  loc_699A3C: ExitProcHresult
  loc_699A3D: FLdRfVar var_96
  loc_699A40: FLdRfVar var_94
  loc_699A43: FLdUI1
  loc_699A47: CI2UI1
  loc_699A49: FLdPrThis
  loc_699A4A: VCallAd Control_ID_Combo3
  loc_699A4D: FStAdFunc var_90
  loc_699A50: FLdPr var_90
  loc_699A53: Set from_stack_2 = Me(from_stack_1)
  loc_699A58: FLdPr var_94
  loc_699A5B:  = Me.Enabled
  loc_699A60: FLdI2 var_96
  loc_699A63: LitI2_Byte &HFF
  loc_699A65: EqI2
  loc_699A66: FLdRfVar var_A2
  loc_699A69: FLdRfVar var_A0
  loc_699A6C: FLdUI1
  loc_699A70: CI2UI1
  loc_699A72: FLdPrThis
  loc_699A73: VCallAd Control_ID_Combo3
  loc_699A76: FStAdFunc var_9C
  loc_699A79: FLdPr var_9C
  loc_699A7C: Set from_stack_2 = Me(from_stack_1)
  loc_699A81: FLdPr var_A0
  loc_699A84:  = Me.ListIndex
  loc_699A89: FLdI2 var_A2
  loc_699A8C: LitI2_Byte &HFF
  loc_699A8E: EqI2
  loc_699A8F: AndI4
  loc_699A90: FFreeAd var_90 = "": var_94 = "": var_9C = ""
  loc_699A9B: BranchF loc_699BD5
  loc_699A9E: ImpAdCallFPR4 Beep()
  loc_699AA3: FLdRfVar var_1F0
  loc_699AA6: LitVar_Missing var_1EC
  loc_699AA9: LitVar_Missing var_1CC
  loc_699AAC: LitVar_Missing var_1AC
  loc_699AAF: LitVar_Missing var_18C
  loc_699AB2: LitVar_Missing var_16C
  loc_699AB5: LitVar_Missing var_14C
  loc_699AB8: LitVar_Missing var_12C
  loc_699ABB: LitVar_Missing var_10C
  loc_699ABE: LitVar_Missing var_EC
  loc_699AC1: LitVar_Missing var_CC
  loc_699AC4: LitStr "Debe configurarse el ""Tanque Producto Alto"" del Surtidor."
  loc_699AC7: FStStrCopy var_AC
  loc_699ACA: FLdRfVar var_AC
  loc_699ACD: LitI4 &HB
  loc_699AD2: PopTmpLdAdStr var_A8
  loc_699AD5: LitI2_Byte &H28
  loc_699AD7: PopTmpLdAd2 var_96
  loc_699ADA: ImpAdLdRf MemVar_74C7D0
  loc_699ADD: NewIfNullPr clsMsg
  loc_699AE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_699AE5: LitI4 &HD
  loc_699AEA: FLdRfVar var_200
  loc_699AED: ImpAdCallFPR4  = Chr()
  loc_699AF2: LitI4 &HA
  loc_699AF7: FLdRfVar var_230
  loc_699AFA: ImpAdCallFPR4  = Chr()
  loc_699AFF: FLdRfVar var_38C
  loc_699B02: LitVar_Missing var_388
  loc_699B05: LitVar_Missing var_368
  loc_699B08: LitVar_Missing var_348
  loc_699B0B: LitVar_Missing var_328
  loc_699B0E: LitVar_Missing var_308
  loc_699B11: LitVar_Missing var_2E8
  loc_699B14: LitVar_Missing var_2C8
  loc_699B17: LitVar_Missing var_2A8
  loc_699B1A: LitVar_Missing var_288
  loc_699B1D: LitVar_Missing var_268
  loc_699B20: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_699B23: FStStrCopy var_248
  loc_699B26: FLdRfVar var_248
  loc_699B29: LitI4 &HA
  loc_699B2E: PopTmpLdAdStr var_244
  loc_699B31: LitI2_Byte &H28
  loc_699B33: PopTmpLdAd2 var_A2
  loc_699B36: ImpAdLdRf MemVar_74C7D0
  loc_699B39: NewIfNullPr clsMsg
  loc_699B3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_699B41: LitVar_Missing var_3DC
  loc_699B44: LitVar_Missing var_3BC
  loc_699B47: FLdZeroAd var_38C
  loc_699B4A: CVarStr var_39C
  loc_699B4D: LitI4 &H10
  loc_699B52: FLdZeroAd var_1F0
  loc_699B55: CVarStr var_210
  loc_699B58: FLdRfVar var_200
  loc_699B5B: ConcatVar var_220
  loc_699B5F: FLdRfVar var_230
  loc_699B62: ConcatVar var_240
  loc_699B66: ImpAdCallFPR4 MsgBox(, , , , )
  loc_699B6B: FFreeStr var_AC = ""
  loc_699B72: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_210 = "": var_200 = "": var_220 = "": var_230 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_240 = "": var_39C = "": var_3BC = ""
  loc_699BAD: FLdRfVar var_94
  loc_699BB0: FLdUI1
  loc_699BB4: CI2UI1
  loc_699BB6: FLdPrThis
  loc_699BB7: VCallAd Control_ID_Combo3
  loc_699BBA: FStAdFunc var_90
  loc_699BBD: FLdPr var_90
  loc_699BC0: Set from_stack_2 = Me(from_stack_1)
  loc_699BC5: FLdPr var_94
  loc_699BC8: Me.SetFocus
  loc_699BCD: FFreeAd var_90 = ""
  loc_699BD4: ExitProcHresult
  loc_699BD5: FLdRfVar var_86
  loc_699BD8: NextUI1
  loc_699BDE: LitI2_Byte 1
  loc_699BE0: CUI1I2
  loc_699BE2: FLdRfVar var_86
  loc_699BE5: LitI2_Byte &H10
  loc_699BE7: CUI1I2
  loc_699BE9: ForUI1 var_3E0
  loc_699BEF: FLdRfVar var_96
  loc_699BF2: FLdRfVar var_94
  loc_699BF5: FLdUI1
  loc_699BF9: CI2UI1
  loc_699BFB: FLdPrThis
  loc_699BFC: VCallAd Control_ID_Combo1
  loc_699BFF: FStAdFunc var_90
  loc_699C02: FLdPr var_90
  loc_699C05: Set from_stack_2 = Me(from_stack_1)
  loc_699C0A: FLdPr var_94
  loc_699C0D:  = Me.Enabled
  loc_699C12: FLdI2 var_96
  loc_699C15: FFreeAd var_90 = ""
  loc_699C1C: BranchF loc_699C2D
  loc_699C1F: FLdUI1
  loc_699C23: CI2UI1
  loc_699C25: PopTmpLdAd2 var_96
  loc_699C28: Call Combo1_LostFocus(from_stack_1v)
  loc_699C2D: FLdRfVar var_96
  loc_699C30: FLdRfVar var_94
  loc_699C33: FLdUI1
  loc_699C37: CI2UI1
  loc_699C39: FLdPrThis
  loc_699C3A: VCallAd Control_ID_Combo3
  loc_699C3D: FStAdFunc var_90
  loc_699C40: FLdPr var_90
  loc_699C43: Set from_stack_2 = Me(from_stack_1)
  loc_699C48: FLdPr var_94
  loc_699C4B:  = Me.Enabled
  loc_699C50: FLdI2 var_96
  loc_699C53: FFreeAd var_90 = ""
  loc_699C5A: BranchF loc_699C6B
  loc_699C5D: FLdUI1
  loc_699C61: CI2UI1
  loc_699C63: PopTmpLdAd2 var_96
  loc_699C66: Call Combo3_LostFocus(from_stack_1v)
  loc_699C6B: FLdRfVar var_86
  loc_699C6E: NextUI1
  loc_699C74: FLdPrThis
  loc_699C75: VCallAd Control_ID_SSCommand2
  loc_699C78: FStAdFunc var_90
  loc_699C7B: FLdPr var_90
  loc_699C7E: LateIdCall
  loc_699C86: FFree1Ad var_90
  loc_699C89: ImpAdLdRf MemVar_74C914
  loc_699C8C: NewIfNullPr fConexion1
  loc_699C8F: fConexion1.Hide
  loc_699C94: FLdPr Me
  loc_699C97: MemLdUI1 global_100
  loc_699C9B: CI2UI1
  loc_699C9D: LitI2_Byte 1
  loc_699C9F: EqI2
  loc_699CA0: BranchF loc_699CE3
  loc_699CA3: ImpAdLdUI1
  loc_699CA7: CBoolUI1
  loc_699CA9: BranchF loc_699CC4
  loc_699CAC: LitVar_Missing var_DC
  loc_699CAF: PopAdLdVar
  loc_699CB0: LitVarI2 var_BC, 1
  loc_699CB5: PopAdLdVar
  loc_699CB6: ImpAdLdRf MemVar_74DB90
  loc_699CB9: NewIfNullPr fOffsetSensores
  loc_699CBC: fOffsetSensores.Show from_stack_1, from_stack_2
  loc_699CC1: Branch loc_699CE0
  loc_699CC4: LitVar_FALSE
  loc_699CC8: PopAdLdVar
  loc_699CC9: ImpAdLdRf MemVar_74C760
  loc_699CCC: NewIfNullPr Formx
  loc_699CCF: VCallAd Control_ID_PanelCierres
  loc_699CD2: FStAdFunc var_90
  loc_699CD5: FLdPr var_90
  loc_699CD8: LateIdSt
  loc_699CDD: FFree1Ad var_90
  loc_699CE0: Branch loc_699CF8
  loc_699CE3: LitVar_Missing var_DC
  loc_699CE6: PopAdLdVar
  loc_699CE7: LitVarI2 var_BC, 1
  loc_699CEC: PopAdLdVar
  loc_699CED: ImpAdLdRf MemVar_74C928
  loc_699CF0: NewIfNullPr fConexion2
  loc_699CF3: fConexion2.Show from_stack_1, from_stack_2
  loc_699CF8: ExitProcHresult
End Sub

Private Sub Combo1_DropDown(arg_C) '67C3D4
  'Data Table: 42DBA0
  loc_67BF58: FLdRfVar var_A0
  loc_67BF5B: FLdRfVar var_9C
  loc_67BF5E: ILdI2 arg_C
  loc_67BF61: FLdPrThis
  loc_67BF62: VCallAd Control_ID_Combo4
  loc_67BF65: FStAdFunc var_98
  loc_67BF68: FLdPr var_98
  loc_67BF6B: Set from_stack_2 = Me(from_stack_1)
  loc_67BF70: FLdPr var_9C
  loc_67BF73:  = Me.Text
  loc_67BF78: ILdRf var_A0
  loc_67BF7B: LitStr vbNullString
  loc_67BF7E: NeStr
  loc_67BF80: FFree1Str var_A0
  loc_67BF83: FFreeAd var_98 = ""
  loc_67BF8A: BranchF loc_67C353
  loc_67BF8D: LitI2_Byte 0
  loc_67BF8F: FLdRfVar var_9C
  loc_67BF92: ILdI2 arg_C
  loc_67BF95: FLdPrThis
  loc_67BF96: VCallAd Control_ID_Combo3
  loc_67BF99: FStAdFunc var_98
  loc_67BF9C: FLdPr var_98
  loc_67BF9F: Set from_stack_2 = Me(from_stack_1)
  loc_67BFA4: FLdPr var_9C
  loc_67BFA7: Me.Enabled = from_stack_1b
  loc_67BFAC: FFreeAd var_98 = ""
  loc_67BFB3: LitI2_Byte 1
  loc_67BFB5: FLdRfVar var_86
  loc_67BFB8: FLdRfVar var_A2
  loc_67BFBB: ImpAdLdRf MemVar_74A220
  loc_67BFBE: NewIfNullPr clsProducts
  loc_67BFC1: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67BFC6: FLdI2 var_A2
  loc_67BFC9: ForI2 var_A6
  loc_67BFCF: FLdRfVar var_A0
  loc_67BFD2: FLdRfVar var_9C
  loc_67BFD5: ILdI2 arg_C
  loc_67BFD8: FLdPrThis
  loc_67BFD9: VCallAd Control_ID_Combo4
  loc_67BFDC: FStAdFunc var_98
  loc_67BFDF: FLdPr var_98
  loc_67BFE2: Set from_stack_2 = Me(from_stack_1)
  loc_67BFE7: FLdPr var_9C
  loc_67BFEA:  = Me.Text
  loc_67BFEF: ILdRf var_A0
  loc_67BFF2: FLdRfVar var_AC
  loc_67BFF5: FLdI2 var_86
  loc_67BFF8: ImpAdLdRf MemVar_74A220
  loc_67BFFB: NewIfNullPr clsProducts
  loc_67C003: ILdRf var_AC
  loc_67C006: EqStr
  loc_67C008: FFreeStr var_A0 = ""
  loc_67C00F: FFreeAd var_98 = ""
  loc_67C016: BranchF loc_67C071
  loc_67C019: FLdRfVar var_A2
  loc_67C01C: FLdI2 var_86
  loc_67C01F: ImpAdLdRf MemVar_74A220
  loc_67C022: NewIfNullPr clsProducts
  loc_67C025:  = clsProducts.Name
  loc_67C02A: FLdI2 var_A2
  loc_67C02D: LitI2_Byte 6
  loc_67C02F: GtI2
  loc_67C030: BranchF loc_67C071
  loc_67C033: FLdRfVar var_A2
  loc_67C036: FLdI2 var_86
  loc_67C039: ImpAdLdRf MemVar_74A220
  loc_67C03C: NewIfNullPr clsProducts
  loc_67C03F:  = clsProducts.hWnd
  loc_67C044: FLdI2 var_A2
  loc_67C047: NotI4
  loc_67C048: BranchF loc_67C071
  loc_67C04B: LitI2_Byte &HFF
  loc_67C04D: FLdRfVar var_9C
  loc_67C050: ILdI2 arg_C
  loc_67C053: FLdPrThis
  loc_67C054: VCallAd Control_ID_Combo3
  loc_67C057: FStAdFunc var_98
  loc_67C05A: FLdPr var_98
  loc_67C05D: Set from_stack_2 = Me(from_stack_1)
  loc_67C062: FLdPr var_9C
  loc_67C065: Me.Enabled = from_stack_1b
  loc_67C06A: FFreeAd var_98 = ""
  loc_67C071: FLdRfVar var_86
  loc_67C074: NextI2 var_A6, loc_67BFCF
  loc_67C079: FLdRfVar var_A0
  loc_67C07C: FLdRfVar var_9C
  loc_67C07F: ILdI2 arg_C
  loc_67C082: FLdPrThis
  loc_67C083: VCallAd Control_ID_Combo1
  loc_67C086: FStAdFunc var_98
  loc_67C089: FLdPr var_98
  loc_67C08C: Set from_stack_2 = Me(from_stack_1)
  loc_67C091: FLdPr var_9C
  loc_67C094:  = Me.Text
  loc_67C099: FLdZeroAd var_A0
  loc_67C09C: FStStr var_94
  loc_67C09F: FFreeAd var_98 = ""
  loc_67C0A6: FLdRfVar var_9C
  loc_67C0A9: ILdI2 arg_C
  loc_67C0AC: FLdPrThis
  loc_67C0AD: VCallAd Control_ID_Combo1
  loc_67C0B0: FStAdFunc var_98
  loc_67C0B3: FLdPr var_98
  loc_67C0B6: Set from_stack_2 = Me(from_stack_1)
  loc_67C0BB: FLdPr var_9C
  loc_67C0BE: Me.Clear
  loc_67C0C3: FFreeAd var_98 = ""
  loc_67C0CA: FLdRfVar var_9C
  loc_67C0CD: ILdI2 arg_C
  loc_67C0D0: FLdPrThis
  loc_67C0D1: VCallAd Control_ID_Combo3
  loc_67C0D4: FStAdFunc var_98
  loc_67C0D7: FLdPr var_98
  loc_67C0DA: Set from_stack_2 = Me(from_stack_1)
  loc_67C0DF: FLdPr var_9C
  loc_67C0E2: Me.Clear
  loc_67C0E7: FFreeAd var_98 = ""
  loc_67C0EE: FLdRfVar var_A0
  loc_67C0F1: FLdRfVar var_9C
  loc_67C0F4: ILdI2 arg_C
  loc_67C0F7: FLdPrThis
  loc_67C0F8: VCallAd Control_ID_Combo4
  loc_67C0FB: FStAdFunc var_98
  loc_67C0FE: FLdPr var_98
  loc_67C101: Set from_stack_2 = Me(from_stack_1)
  loc_67C106: FLdPr var_9C
  loc_67C109:  = Me.Text
  loc_67C10E: FLdZeroAd var_A0
  loc_67C111: FStStr var_8C
  loc_67C114: FFreeAd var_98 = ""
  loc_67C11B: LitI2_Byte 0
  loc_67C11D: ImpAdStI2 MemVar_74C3AA
  loc_67C120: FLdRfVar var_A2
  loc_67C123: FLdRfVar var_8C
  loc_67C126: ILdRf arg_C
  loc_67C129: from_stack_3v = CargarCombo(from_stack_1v, from_stack_2v)
  loc_67C12E: FLdI2 var_A2
  loc_67C131: NotI4
  loc_67C132: BranchF loc_67C240
  loc_67C135: FLdRfVar var_A2
  loc_67C138: ILdRf var_8C
  loc_67C13B: ImpAdLdRf MemVar_74A220
  loc_67C13E: NewIfNullPr clsProducts
  loc_67C146: FLdI2 var_A2
  loc_67C149: CI4UI1
  loc_67C14A: ImpAdLdRf MemVar_74A1E8
  loc_67C14D: Ary1LdI2
  loc_67C14E: PopTmpLdAd2 var_B0
  loc_67C151: FLdRfVar var_AE
  loc_67C154: ILdRf var_8C
  loc_67C157: ImpAdLdRf MemVar_74A220
  loc_67C15A: NewIfNullPr clsProducts
  loc_67C162: FLdI2 var_AE
  loc_67C165: ImpAdLdRf MemVar_74A220
  loc_67C168: NewIfNullPr clsProducts
  loc_67C16B: Call 0.Method_arg_5C ()
  loc_67C170: FLdRfVar var_A2
  loc_67C173: ILdRf var_8C
  loc_67C176: ImpAdLdRf MemVar_74A220
  loc_67C179: NewIfNullPr clsProducts
  loc_67C181: FLdRfVar var_AE
  loc_67C184: FLdI2 var_A2
  loc_67C187: ImpAdLdRf MemVar_74A220
  loc_67C18A: NewIfNullPr clsProducts
  loc_67C18D:  = clsProducts.BackColor
  loc_67C192: FLdRfVar var_A0
  loc_67C195: FLdI2 var_AE
  loc_67C198: ImpAdLdRf MemVar_74A220
  loc_67C19B: NewIfNullPr clsProducts
  loc_67C1A3: FLdRfVar var_B0
  loc_67C1A6: FLdZeroAd var_A0
  loc_67C1A9: PopTmpLdAdStr
  loc_67C1AD: ILdRf arg_C
  loc_67C1B0: from_stack_3v = CargarCombo(from_stack_1v, from_stack_2v)
  loc_67C1B5: FFree1Str var_AC
  loc_67C1B8: LitI2_Byte &HFF
  loc_67C1BA: ImpAdStI2 MemVar_74C3AA
  loc_67C1BD: FLdRfVar var_A2
  loc_67C1C0: ILdRf var_8C
  loc_67C1C3: ImpAdLdRf MemVar_74A220
  loc_67C1C6: NewIfNullPr clsProducts
  loc_67C1CE: FLdI2 var_A2
  loc_67C1D1: CI4UI1
  loc_67C1D2: ImpAdLdRf MemVar_74A200
  loc_67C1D5: Ary1LdI2
  loc_67C1D6: PopTmpLdAd2 var_B0
  loc_67C1D9: FLdRfVar var_AE
  loc_67C1DC: ILdRf var_8C
  loc_67C1DF: ImpAdLdRf MemVar_74A220
  loc_67C1E2: NewIfNullPr clsProducts
  loc_67C1EA: FLdI2 var_AE
  loc_67C1ED: ImpAdLdRf MemVar_74A220
  loc_67C1F0: NewIfNullPr clsProducts
  loc_67C1F3: clsProducts.ForeColor = from_stack_1
  loc_67C1F8: FLdRfVar var_A2
  loc_67C1FB: ILdRf var_8C
  loc_67C1FE: ImpAdLdRf MemVar_74A220
  loc_67C201: NewIfNullPr clsProducts
  loc_67C209: FLdRfVar var_AE
  loc_67C20C: FLdI2 var_A2
  loc_67C20F: ImpAdLdRf MemVar_74A220
  loc_67C212: NewIfNullPr clsProducts
  loc_67C215:  = clsProducts.Left
  loc_67C21A: FLdRfVar var_A0
  loc_67C21D: FLdI2 var_AE
  loc_67C220: ImpAdLdRf MemVar_74A220
  loc_67C223: NewIfNullPr clsProducts
  loc_67C22B: FLdRfVar var_B0
  loc_67C22E: FLdZeroAd var_A0
  loc_67C231: PopTmpLdAdStr
  loc_67C235: ILdRf arg_C
  loc_67C238: from_stack_3v = CargarCombo(from_stack_1v, from_stack_2v)
  loc_67C23D: FFree1Str var_AC
  loc_67C240: FLdRfVar var_A2
  loc_67C243: FLdRfVar var_9C
  loc_67C246: ILdI2 arg_C
  loc_67C249: FLdPrThis
  loc_67C24A: VCallAd Control_ID_Combo3
  loc_67C24D: FStAdFunc var_98
  loc_67C250: FLdPr var_98
  loc_67C253: Set from_stack_2 = Me(from_stack_1)
  loc_67C258: FLdPr var_9C
  loc_67C25B:  = Me.Enabled
  loc_67C260: FLdI2 var_A2
  loc_67C263: FFreeAd var_98 = ""
  loc_67C26A: BranchF loc_67C278
  loc_67C26D: ILdI2 arg_C
  loc_67C270: PopTmpLdAd2 var_A2
  loc_67C273: Call Combo3_LostFocus(from_stack_1v)
  loc_67C278: FLdRfVar var_A2
  loc_67C27B: FLdRfVar var_9C
  loc_67C27E: ILdI2 arg_C
  loc_67C281: FLdPrThis
  loc_67C282: VCallAd Control_ID_Combo1
  loc_67C285: FStAdFunc var_98
  loc_67C288: FLdPr var_98
  loc_67C28B: Set from_stack_2 = Me(from_stack_1)
  loc_67C290: FLdPr var_9C
  loc_67C293:  = Me.ListCount
  loc_67C298: FLdI2 var_A2
  loc_67C29B: LitI2_Byte 0
  loc_67C29D: GtI2
  loc_67C29E: FFreeAd var_98 = ""
  loc_67C2A5: BranchF loc_67C2F9
  loc_67C2A8: FLdRfVar var_9C
  loc_67C2AB: ILdI2 arg_C
  loc_67C2AE: FLdPrThis
  loc_67C2AF: VCallAd Control_ID_Combo1
  loc_67C2B2: FStAdFunc var_98
  loc_67C2B5: FLdPr var_98
  loc_67C2B8: Set from_stack_2 = Me(from_stack_1)
  loc_67C2BD: FLdZeroAd var_9C
  loc_67C2C0: FStAdFunc var_B4
  loc_67C2C3: FLdRfVar var_B4
  loc_67C2C6: FLdRfVar var_94
  loc_67C2C9: ImpAdCallI2  = Proc_158_4_5E0CD0()
  loc_67C2CE: FLdRfVar var_BC
  loc_67C2D1: ILdI2 arg_C
  loc_67C2D4: FLdPrThis
  loc_67C2D5: VCallAd Control_ID_Combo1
  loc_67C2D8: FStAdFunc var_B8
  loc_67C2DB: FLdPr var_B8
  loc_67C2DE: Set from_stack_2 = Me(from_stack_1)
  loc_67C2E3: FLdPr var_BC
  loc_67C2E6: Me.ListIndex = from_stack_1
  loc_67C2EB: FFreeAd var_98 = "": var_B4 = "": var_B8 = ""
  loc_67C2F6: Branch loc_67C350
  loc_67C2F9: FLdRfVar var_A2
  loc_67C2FC: FLdRfVar var_9C
  loc_67C2FF: ILdI2 arg_C
  loc_67C302: FLdPrThis
  loc_67C303: VCallAd Control_ID_Combo1
  loc_67C306: FStAdFunc var_98
  loc_67C309: FLdPr var_98
  loc_67C30C: Set from_stack_2 = Me(from_stack_1)
  loc_67C311: FLdPr var_9C
  loc_67C314:  = Me.ListIndex
  loc_67C319: FLdI2 var_A2
  loc_67C31C: LitI2_Byte &HFF
  loc_67C31E: EqI2
  loc_67C31F: NotI4
  loc_67C320: FFreeAd var_98 = ""
  loc_67C327: BranchF loc_67C350
  loc_67C32A: LitI2_Byte 0
  loc_67C32C: FLdRfVar var_9C
  loc_67C32F: ILdI2 arg_C
  loc_67C332: FLdPrThis
  loc_67C333: VCallAd Control_ID_Combo1
  loc_67C336: FStAdFunc var_98
  loc_67C339: FLdPr var_98
  loc_67C33C: Set from_stack_2 = Me(from_stack_1)
  loc_67C341: FLdPr var_9C
  loc_67C344: Me.ListIndex = from_stack_1
  loc_67C349: FFreeAd var_98 = ""
  loc_67C350: Branch loc_67C3D0
  loc_67C353: FLdRfVar var_AC
  loc_67C356: LitVar_Missing var_200
  loc_67C359: LitVar_Missing var_1E0
  loc_67C35C: LitVar_Missing var_1C0
  loc_67C35F: LitVar_Missing var_1A0
  loc_67C362: LitVar_Missing var_180
  loc_67C365: LitVar_Missing var_160
  loc_67C368: LitVar_Missing var_140
  loc_67C36B: LitVar_Missing var_120
  loc_67C36E: LitVar_Missing var_100
  loc_67C371: LitVar_Missing var_E0
  loc_67C374: LitStr "Primero debe seleciconar un producto."
  loc_67C377: FStStrCopy var_A0
  loc_67C37A: FLdRfVar var_A0
  loc_67C37D: LitI4 &H13
  loc_67C382: PopTmpLdAdStr var_C0
  loc_67C385: LitI2_Byte &H28
  loc_67C387: PopTmpLdAd2 var_A2
  loc_67C38A: ImpAdLdRf MemVar_74C7D0
  loc_67C38D: NewIfNullPr clsMsg
  loc_67C390: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67C395: LitVar_Missing var_270
  loc_67C398: LitVar_Missing var_250
  loc_67C39B: LitVar_Missing var_230
  loc_67C39E: LitI4 &H40
  loc_67C3A3: FLdZeroAd var_AC
  loc_67C3A6: CVarStr var_210
  loc_67C3A9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67C3AE: FFree1Str var_A0
  loc_67C3B1: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_230 = "": var_250 = ""
  loc_67C3D0: ExitProcHresult
End Sub

Private Sub Combo1_LostFocus(arg_C) '628A24
  'Data Table: 42DBA0
  loc_6288B0: LitI2_Byte 0
  loc_6288B2: CStrBool
  loc_6288B4: FStStr var_A4
  loc_6288B7: LitStr vbNullString
  loc_6288BA: FStStrCopy var_9C
  loc_6288BD: FLdPr Me
  loc_6288C0: MemLdRfVar from_stack_1.global_52
  loc_6288C3: CBoolVarNull
  loc_6288C5: BranchF loc_628A21
  loc_6288C8: FLdRfVar var_AE
  loc_6288CB: FLdRfVar var_AC
  loc_6288CE: ILdI2 arg_C
  loc_6288D1: FLdPrThis
  loc_6288D2: VCallAd Control_ID_Combo1
  loc_6288D5: FStAdFunc var_A8
  loc_6288D8: FLdPr var_A8
  loc_6288DB: Set from_stack_2 = Me(from_stack_1)
  loc_6288E0: FLdPr var_AC
  loc_6288E3:  = Me.ListIndex
  loc_6288E8: FLdI2 var_AE
  loc_6288EB: LitI2_Byte &HFF
  loc_6288ED: NeI2
  loc_6288EE: FFreeAd var_A8 = ""
  loc_6288F5: BranchF loc_628A21
  loc_6288F8: ILdI2 arg_C
  loc_6288FB: CI4UI1
  loc_6288FC: LitI4 0
  loc_628901: FLdPr Me
  loc_628904: MemLdRfVar from_stack_1.global_104
  loc_628907: AryLdPr
  loc_62890A: MemLdUI1 global_0
  loc_62890E: CVarUI1
  loc_628912: FLdRfVar var_94
  loc_628915: ILdI2 arg_C
  loc_628918: CI4UI1
  loc_628919: LitI4 1
  loc_62891E: FLdPr Me
  loc_628921: MemLdRfVar from_stack_1.global_104
  loc_628924: AryLdPr
  loc_628927: MemLdUI1 global_0
  loc_62892B: CVarUI1
  loc_62892F: ForVar var_100
  loc_628935: FLdRfVar var_104
  loc_628938: FLdRfVar var_AC
  loc_62893B: ILdI2 arg_C
  loc_62893E: FLdPrThis
  loc_62893F: VCallAd Control_ID_Combo1
  loc_628942: FStAdFunc var_A8
  loc_628945: FLdPr var_A8
  loc_628948: Set from_stack_2 = Me(from_stack_1)
  loc_62894D: FLdPr var_AC
  loc_628950:  = Me.Text
  loc_628955: FLdZeroAd var_104
  loc_628958: PopTmpLdAdStr
  loc_62895C: ImpAdCallI2 Proc_158_5_604120()
  loc_628961: FStI2 var_98
  loc_628964: FFree1Str var_108
  loc_628967: FFreeAd var_A8 = ""
  loc_62896E: LitI2_Byte 0
  loc_628970: CUI1I2
  loc_628972: FLdRfVar var_96
  loc_628975: LitI2_Byte 2
  loc_628977: CUI1I2
  loc_628979: ForUI1 var_10C
  loc_62897F: FLdI2 var_98
  loc_628982: CI4UI1
  loc_628983: FLdUI1
  loc_628987: CI4UI1
  loc_628988: ImpAdLdRf MemVar_74C23C
  loc_62898B: AryLdPr
  loc_62898E: MemLdUI1 global_0
  loc_628992: FLdRfVar var_94
  loc_628995: CI4Var
  loc_628997: ILdI2 arg_C
  loc_62899A: CI4UI1
  loc_62899B: FLdPr Me
  loc_62899E: MemLdRfVar from_stack_1.global_136
  loc_6289A1: Ary1LdUI1
  loc_6289A3: CI4UI1
  loc_6289A4: FLdUI1
  loc_6289A8: CI4UI1
  loc_6289A9: ImpAdLdRf MemVar_74C14C
  loc_6289AC: AryLdPr
  loc_6289AF: MemStUI1
  loc_6289B3: FLdRfVar var_96
  loc_6289B6: NextUI1
  loc_6289BC: FLdRfVar var_AE
  loc_6289BF: FLdRfVar var_104
  loc_6289C2: FLdRfVar var_AC
  loc_6289C5: ILdI2 arg_C
  loc_6289C8: FLdPrThis
  loc_6289C9: VCallAd Control_ID_Combo4
  loc_6289CC: FStAdFunc var_A8
  loc_6289CF: FLdPr var_A8
  loc_6289D2: Set from_stack_2 = Me(from_stack_1)
  loc_6289D7: FLdPr var_AC
  loc_6289DA:  = Me.Text
  loc_6289DF: ILdRf var_104
  loc_6289E2: ImpAdLdRf MemVar_74A220
  loc_6289E5: NewIfNullPr clsProducts
  loc_6289ED: FLdI2 var_AE
  loc_6289F0: CUI1I2
  loc_6289F2: FLdRfVar var_94
  loc_6289F5: CI4Var
  loc_6289F7: ILdI2 arg_C
  loc_6289FA: CI4UI1
  loc_6289FB: FLdPr Me
  loc_6289FE: MemLdRfVar from_stack_1.global_136
  loc_628A01: Ary1LdUI1
  loc_628A03: CI4UI1
  loc_628A04: ImpAdLdRf MemVar_74C12C
  loc_628A07: AryLdPr
  loc_628A0A: MemStUI1
  loc_628A0E: FFree1Str var_104
  loc_628A11: FFreeAd var_A8 = ""
  loc_628A18: FLdRfVar var_94
  loc_628A1B: NextStepVar var_100
  loc_628A21: ExitProcHresult
End Sub

Private Sub Combo2_Click(arg_C) '5CEE44
  'Data Table: 42DBA0
  loc_5CEE30: FLdPr Me
  loc_5CEE33: MemLdRfVar from_stack_1.global_52
  loc_5CEE36: CBoolVarNull
  loc_5CEE38: BranchF loc_5CEE43
  loc_5CEE3B: ILdRf arg_C
  loc_5CEE3E: Call Combo2_LostFocus(from_stack_1v)
  loc_5CEE43: ExitProcHresult
End Sub

Private Sub Combo2_LostFocus(arg_C) '63CDC4
  'Data Table: 42DBA0
  loc_63CB9C: FLdPr Me
  loc_63CB9F: MemLdRfVar from_stack_1.global_52
  loc_63CBA2: CBoolVarNull
  loc_63CBA4: BranchF loc_63CD29
  loc_63CBA9: FLdRfVar var_B2
  loc_63CBAC: FLdRfVar var_B0
  loc_63CBAF: ILdI2 arg_C
  loc_63CBB2: FLdPrThis
  loc_63CBB3: VCallAd Control_ID_Combo2
  loc_63CBB6: FStAdFunc var_AC
  loc_63CBB9: FLdPr var_AC
  loc_63CBBC: Set from_stack_2 = Me(from_stack_1)
  loc_63CBC1: FLdPr var_B0
  loc_63CBC4:  = Me.ListIndex
  loc_63CBC9: FLdI2 var_B2
  loc_63CBCC: LitI2_Byte &HFF
  loc_63CBCE: NeI2
  loc_63CBCF: FFreeAd var_AC = ""
  loc_63CBD6: BranchF loc_63CD27
  loc_63CBDB: ILdI2 arg_C
  loc_63CBDE: CI4UI1
  loc_63CBDF: LitI4 0
  loc_63CBE4: FLdPr Me
  loc_63CBE7: MemLdRfVar from_stack_1.global_104
  loc_63CBEA: AryLdPr
  loc_63CBED: MemLdUI1 global_0
  loc_63CBF1: CVarUI1
  loc_63CBF5: FLdRfVar var_94
  loc_63CBF8: ILdI2 arg_C
  loc_63CBFB: CI4UI1
  loc_63CBFC: LitI4 1
  loc_63CC01: FLdPr Me
  loc_63CC04: MemLdRfVar from_stack_1.global_104
  loc_63CC07: AryLdPr
  loc_63CC0A: MemLdUI1 global_0
  loc_63CC0E: CVarUI1
  loc_63CC12: ForVar var_104
  loc_63CC1A: FLdRfVar var_B2
  loc_63CC1D: FLdRfVar var_B0
  loc_63CC20: ILdI2 arg_C
  loc_63CC23: FLdPrThis
  loc_63CC24: VCallAd Control_ID_Combo2
  loc_63CC27: FStAdFunc var_AC
  loc_63CC2A: FLdPr var_AC
  loc_63CC2D: Set from_stack_2 = Me(from_stack_1)
  loc_63CC32: FLdPr var_B0
  loc_63CC35:  = Me.ListIndex
  loc_63CC3A: FLdI2 var_B2
  loc_63CC3D: CUI1I2
  loc_63CC3F: FLdRfVar var_94
  loc_63CC42: CI4Var
  loc_63CC44: ImpAdLdRf MemVar_74C19C
  loc_63CC47: Ary1StUI1
  loc_63CC49: FFreeAd var_AC = ""
  loc_63CC52: FLdRfVar var_94
  loc_63CC55: NextStepVar var_104
  loc_63CC5D: FLdRfVar var_B2
  loc_63CC60: FLdRfVar var_B0
  loc_63CC63: ILdI2 arg_C
  loc_63CC66: FLdPrThis
  loc_63CC67: VCallAd Control_ID_Combo2
  loc_63CC6A: FStAdFunc var_AC
  loc_63CC6D: FLdPr var_AC
  loc_63CC70: Set from_stack_2 = Me(from_stack_1)
  loc_63CC75: FLdPr var_B0
  loc_63CC78:  = Me.Enabled
  loc_63CC7D: FLdI2 var_B2
  loc_63CC80: LitI2_Byte &HFF
  loc_63CC82: EqI2
  loc_63CC83: FFreeAd var_AC = ""
  loc_63CC8A: BranchF loc_63CD25
  loc_63CC8F: LitI2_Byte 0
  loc_63CC91: CUI1I2
  loc_63CC93: FLdRfVar var_96
  loc_63CC96: ILdI2 arg_C
  loc_63CC99: CI4UI1
  loc_63CC9A: LitI4 0
  loc_63CC9F: FLdPr Me
  loc_63CCA2: MemLdRfVar from_stack_1.global_104
  loc_63CCA5: AryLdPr
  loc_63CCA8: MemLdUI1 global_0
  loc_63CCAC: CI4UI1
  loc_63CCAD: ImpAdLdRf MemVar_74C0FC
  loc_63CCB0: Ary1LdUI1
  loc_63CCB2: ForUI1 var_108
  loc_63CCBA: OnErrorGoto loc_63CD2B
  loc_63CCBF: ILdI2 arg_C
  loc_63CCC2: FLdUI1
  loc_63CCC6: CI2UI1
  loc_63CCC8: AddI2
  loc_63CCC9: LitI2_Byte &H10
  loc_63CCCB: LeI2
  loc_63CCCC: BranchF loc_63CD1A
  loc_63CCD1: ILdI2 arg_C
  loc_63CCD4: CI4UI1
  loc_63CCD5: LitI4 0
  loc_63CCDA: FLdPr Me
  loc_63CCDD: MemLdRfVar from_stack_1.global_104
  loc_63CCE0: AryLdPr
  loc_63CCE3: MemLdUI1 global_0
  loc_63CCE7: CI4UI1
  loc_63CCE8: ImpAdLdRf MemVar_74C19C
  loc_63CCEB: Ary1LdUI1
  loc_63CCED: CI2UI1
  loc_63CCEF: FLdRfVar var_B0
  loc_63CCF2: ILdI2 arg_C
  loc_63CCF5: FLdUI1
  loc_63CCF9: CI2UI1
  loc_63CCFB: AddI2
  loc_63CCFC: FLdPrThis
  loc_63CCFD: VCallAd Control_ID_Combo2
  loc_63CD00: FStAdFunc var_AC
  loc_63CD03: FLdPr var_AC
  loc_63CD06: Set from_stack_2 = Me(from_stack_1)
  loc_63CD0B: FLdPr var_B0
  loc_63CD0E: Me.ListIndex = from_stack_1
  loc_63CD13: FFreeAd var_AC = ""
  loc_63CD1C: FLdRfVar var_96
  loc_63CD1F: NextUI1
  loc_63CD2D: FLdRfVar var_10C
  loc_63CD30: ImpAdCallI2 Err 'rtcErrObj
  loc_63CD35: FStAdFunc var_AC
  loc_63CD38: FLdPr var_AC
  loc_63CD3B:  = Err.Number
  loc_63CD40: ILdRf var_10C
  loc_63CD43: LitI4 &H17C
  loc_63CD48: EqI4
  loc_63CD49: FFree1Ad var_AC
  loc_63CD4C: BranchF loc_63CDBD
  loc_63CD51: LitVar_Missing var_C4
  loc_63CD54: PopAdLdVar
  loc_63CD55: LitStr "Izquierda"
  loc_63CD58: FLdRfVar var_B0
  loc_63CD5B: ILdI2 arg_C
  loc_63CD5E: FLdUI1
  loc_63CD62: CI2UI1
  loc_63CD64: AddI2
  loc_63CD65: FLdPrThis
  loc_63CD66: VCallAd Control_ID_Combo2
  loc_63CD69: FStAdFunc var_AC
  loc_63CD6C: FLdPr var_AC
  loc_63CD6F: Set from_stack_2 = Me(from_stack_1)
  loc_63CD74: FLdPr var_B0
  loc_63CD77: Me.AddItem from_stack_1, from_stack_2
  loc_63CD7C: FFreeAd var_AC = ""
  loc_63CD85: LitVar_Missing var_C4
  loc_63CD88: PopAdLdVar
  loc_63CD89: LitStr "Derecha"
  loc_63CD8C: FLdRfVar var_B0
  loc_63CD8F: ILdI2 arg_C
  loc_63CD92: FLdUI1
  loc_63CD96: CI2UI1
  loc_63CD98: AddI2
  loc_63CD99: FLdPrThis
  loc_63CD9A: VCallAd Control_ID_Combo2
  loc_63CD9D: FStAdFunc var_AC
  loc_63CDA0: FLdPr var_AC
  loc_63CDA3: Set from_stack_2 = Me(from_stack_1)
  loc_63CDA8: FLdPr var_B0
  loc_63CDAB: Me.AddItem from_stack_1, from_stack_2
  loc_63CDB0: FFreeAd var_AC = ""
  loc_63CDB9: Resume
  loc_63CDC1: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5D9FA4
  'Data Table: 42DBA0
  loc_5D9F6C: ImpAdLdRf MemVar_74A220
  loc_5D9F6F: NewIfNullPr clsProducts
  loc_5D9F72: clsProducts.Height = from_stack_1s
  loc_5D9F77: LitI2_Byte &HFF
  loc_5D9F79: PopTmpLdAd2 var_86
  loc_5D9F7C: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5D9F81: LitI2_Byte &HFF
  loc_5D9F83: ImpAdLdRf MemVar_74C760
  loc_5D9F86: NewIfNullPr Formx
  loc_5D9F89: Call Formx.CanceladoPut(from_stack_1v)
  loc_5D9F8E: ILdRf Me
  loc_5D9F91: FStAdNoPop
  loc_5D9F95: ImpAdLdRf MemVar_7520D4
  loc_5D9F98: NewIfNullPr Global
  loc_5D9F9B: Global.Unload from_stack_1
  loc_5D9FA0: FFree1Ad var_8C
  loc_5D9FA3: ExitProcHresult
End Sub

Public Function TieneTanque(sValor) '60B990
  'Data Table: 42DBA0
  loc_60B8A8: ZeroRetValVar
  loc_60B8AA: LitVar_FALSE
  loc_60B8AE: FStVar TieneTanque
  loc_60B8B2: LitI2_Byte 1
  loc_60B8B4: FLdRfVar var_96
  loc_60B8B7: LitI2_Byte &H10
  loc_60B8B9: ForI2 var_AC
  loc_60B8BF: FLdI2 var_96
  loc_60B8C2: CI4UI1
  loc_60B8C3: ImpAdLdRf MemVar_74C1D8
  loc_60B8C6: Ary1LdUI1
  loc_60B8C8: CR8I2
  loc_60B8C9: LitStr "0"
  loc_60B8CC: CR8Str
  loc_60B8CE: NeR8
  loc_60B8CF: BranchF loc_60B980
  loc_60B8D2: ILdRf sValor
  loc_60B8D5: CVarRef
  loc_60B8DA: FLdRfVar var_BC
  loc_60B8DD: ImpAdCallFPR4  = Trim()
  loc_60B8E2: FLdRfVar var_BC
  loc_60B8E5: FLdRfVar var_C0
  loc_60B8E8: FLdI2 var_96
  loc_60B8EB: CI4UI1
  loc_60B8EC: ImpAdLdRf MemVar_74C1D8
  loc_60B8EF: Ary1LdUI1
  loc_60B8F1: CI2UI1
  loc_60B8F3: ImpAdLdRf MemVar_74A220
  loc_60B8F6: NewIfNullPr clsProducts
  loc_60B8FE: FLdZeroAd var_C0
  loc_60B901: CVarStr var_D0
  loc_60B904: HardType
  loc_60B905: EqVar var_E0
  loc_60B909: FLdRfVar var_E4
  loc_60B90C: FLdRfVar var_E2
  loc_60B90F: ILdI4 sValor
  loc_60B912: ImpAdLdRf MemVar_74A220
  loc_60B915: NewIfNullPr clsProducts
  loc_60B91D: FLdI2 var_E2
  loc_60B920: ImpAdLdRf MemVar_74A220
  loc_60B923: NewIfNullPr clsProducts
  loc_60B926: clsProducts.Caption = from_stack_1
  loc_60B92B: FLdI2 var_E4
  loc_60B92E: CVarBoolI2 var_F4
  loc_60B932: OrVar var_104
  loc_60B936: FLdRfVar var_108
  loc_60B939: FLdRfVar var_106
  loc_60B93C: ILdI4 sValor
  loc_60B93F: ImpAdLdRf MemVar_74A220
  loc_60B942: NewIfNullPr clsProducts
  loc_60B94A: FLdI2 var_106
  loc_60B94D: ImpAdLdRf MemVar_74A220
  loc_60B950: NewIfNullPr clsProducts
  loc_60B953:  = clsProducts.hWnd
  loc_60B958: FLdI2 var_108
  loc_60B95B: CVarBoolI2 var_118
  loc_60B95F: OrVar var_128
  loc_60B963: CBoolVarNull
  loc_60B965: FFreeVar var_BC = "": var_D0 = "": var_F4 = ""
  loc_60B970: BranchF loc_60B980
  loc_60B973: LitVar_TRUE var_A8
  loc_60B976: FStVar TieneTanque
  loc_60B97A: ExitProcCbHresult
  loc_60B980: FLdRfVar var_96
  loc_60B983: NextI2 var_AC, loc_60B8BF
  loc_60B988: ExitProcCbHresult
End Function

Public Function CargarCombo(Index, desc) '639B4C
  'Data Table: 42DBA0
  loc_639950: ILdI2 Index
  loc_639953: FStI2 var_B0
  loc_639956: FLdRfVar var_B2
  loc_639959: ILdI4 desc
  loc_63995C: ImpAdLdRf MemVar_74A220
  loc_63995F: NewIfNullPr clsProducts
  loc_639967: FLdI2 var_B2
  loc_63996A: FStI2 var_88
  loc_63996D: LitI2_Byte 0
  loc_63996F: FStI2 var_86
  loc_639972: LitVarI2 var_E4, 1
  loc_639977: FLdRfVar var_9C
  loc_63997A: ImpAdLdUI1
  loc_63997E: CVarUI1
  loc_639982: ForVar var_104
  loc_639988: FLdI2 var_88
  loc_63998B: FLdRfVar var_9C
  loc_63998E: CI4Var
  loc_639990: ImpAdLdRf MemVar_74C1D8
  loc_639993: Ary1LdUI1
  loc_639995: CI2UI1
  loc_639997: EqI2
  loc_639998: BranchF loc_639B36
  loc_63999B: FLdRfVar var_9C
  loc_63999E: CI2Var
  loc_63999F: FStI2 var_AE
  loc_6399A2: LitI2_Byte 0
  loc_6399A4: FStI2 var_86
  loc_6399A7: LitVarI2 var_E4, 0
  loc_6399AC: FLdRfVar var_AC
  loc_6399AF: LitVarI2 var_D4, 31
  loc_6399B4: ForVar var_124
  loc_6399BA: FLdI2 var_AE
  loc_6399BD: FLdRfVar var_AC
  loc_6399C0: CI4Var
  loc_6399C2: LitI4 0
  loc_6399C7: ImpAdLdRf MemVar_74C23C
  loc_6399CA: AryLdPr
  loc_6399CD: MemLdUI1 global_0
  loc_6399D1: CI2UI1
  loc_6399D3: EqI2
  loc_6399D4: FLdI2 var_AE
  loc_6399D7: FLdRfVar var_AC
  loc_6399DA: CI4Var
  loc_6399DC: LitI4 1
  loc_6399E1: ImpAdLdRf MemVar_74C23C
  loc_6399E4: AryLdPr
  loc_6399E7: MemLdUI1 global_0
  loc_6399EB: CI2UI1
  loc_6399ED: EqI2
  loc_6399EE: OrI4
  loc_6399EF: FLdI2 var_AE
  loc_6399F2: FLdRfVar var_AC
  loc_6399F5: CI4Var
  loc_6399F7: LitI4 2
  loc_6399FC: ImpAdLdRf MemVar_74C23C
  loc_6399FF: AryLdPr
  loc_639A02: MemLdUI1 global_0
  loc_639A06: CI2UI1
  loc_639A08: EqI2
  loc_639A09: OrI4
  loc_639A0A: BranchF loc_639B2D
  loc_639A0D: FLdRfVar var_AC
  loc_639A10: CI4Var
  loc_639A12: LitI4 1
  loc_639A17: ImpAdLdRf MemVar_74C23C
  loc_639A1A: AryLdPr
  loc_639A1D: MemLdUI1 global_0
  loc_639A21: CI2UI1
  loc_639A23: LitI2_Byte 0
  loc_639A25: EqI2
  loc_639A26: BranchF loc_639A45
  loc_639A29: FLdRfVar var_AC
  loc_639A2C: CI4Var
  loc_639A2E: LitI4 0
  loc_639A33: ImpAdLdRf MemVar_74C23C
  loc_639A36: AryLdPr
  loc_639A39: MemLdUI1 global_0
  loc_639A3D: CStrI2
  loc_639A3F: FStStr var_8C
  loc_639A42: Branch loc_639B1A
  loc_639A45: FLdRfVar var_AC
  loc_639A48: CI4Var
  loc_639A4A: LitI4 2
  loc_639A4F: ImpAdLdRf MemVar_74C23C
  loc_639A52: AryLdPr
  loc_639A55: MemLdUI1 global_0
  loc_639A59: CI2UI1
  loc_639A5B: LitI2_Byte 0
  loc_639A5D: EqI2
  loc_639A5E: BranchF loc_639AAA
  loc_639A61: FLdRfVar var_AC
  loc_639A64: CI4Var
  loc_639A66: LitI4 0
  loc_639A6B: ImpAdLdRf MemVar_74C23C
  loc_639A6E: AryLdPr
  loc_639A71: MemLdUI1 global_0
  loc_639A75: CStrI2
  loc_639A77: FStStrNoPop var_128
  loc_639A7A: LitStr "-"
  loc_639A7D: ConcatStr
  loc_639A7E: FStStrNoPop var_12C
  loc_639A81: FLdRfVar var_AC
  loc_639A84: CI4Var
  loc_639A86: LitI4 1
  loc_639A8B: ImpAdLdRf MemVar_74C23C
  loc_639A8E: AryLdPr
  loc_639A91: MemLdUI1 global_0
  loc_639A95: CStrI2
  loc_639A97: FStStrNoPop var_130
  loc_639A9A: ConcatStr
  loc_639A9B: FStStr var_8C
  loc_639A9E: FFreeStr var_128 = "": var_12C = ""
  loc_639AA7: Branch loc_639B1A
  loc_639AAA: FLdRfVar var_AC
  loc_639AAD: CI4Var
  loc_639AAF: LitI4 0
  loc_639AB4: ImpAdLdRf MemVar_74C23C
  loc_639AB7: AryLdPr
  loc_639ABA: MemLdUI1 global_0
  loc_639ABE: CStrI2
  loc_639AC0: FStStrNoPop var_128
  loc_639AC3: LitStr "-"
  loc_639AC6: ConcatStr
  loc_639AC7: FStStrNoPop var_12C
  loc_639ACA: FLdRfVar var_AC
  loc_639ACD: CI4Var
  loc_639ACF: LitI4 1
  loc_639AD4: ImpAdLdRf MemVar_74C23C
  loc_639AD7: AryLdPr
  loc_639ADA: MemLdUI1 global_0
  loc_639ADE: CStrI2
  loc_639AE0: FStStrNoPop var_130
  loc_639AE3: ConcatStr
  loc_639AE4: FStStrNoPop var_134
  loc_639AE7: LitStr "-"
  loc_639AEA: ConcatStr
  loc_639AEB: FStStrNoPop var_138
  loc_639AEE: FLdRfVar var_AC
  loc_639AF1: CI4Var
  loc_639AF3: LitI4 2
  loc_639AF8: ImpAdLdRf MemVar_74C23C
  loc_639AFB: AryLdPr
  loc_639AFE: MemLdUI1 global_0
  loc_639B02: CStrI2
  loc_639B04: FStStrNoPop var_13C
  loc_639B07: ConcatStr
  loc_639B08: FStStr var_8C
  loc_639B0B: FFreeStr var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_639B1A: FLdRfVar var_B2
  loc_639B1D: FLdRfVar var_B0
  loc_639B20: FLdRfVar var_8C
  loc_639B23: from_stack_3v = ValidarCombo(from_stack_1v, from_stack_2v)
  loc_639B28: LitI2_Byte &HFF
  loc_639B2A: FStI2 var_86
  loc_639B2D: FLdRfVar var_AC
  loc_639B30: NextStepVar var_124
  loc_639B36: FLdRfVar var_9C
  loc_639B39: NextStepVar var_104
  loc_639B3F: LitI2_Byte 0
  loc_639B41: ImpAdStI2 MemVar_74C3AA
  loc_639B44: ExitProcCbHresult
End Function

Public Function ValidarCombo(sValor, Index) '647350
  'Data Table: 42DBA0
  loc_6470DC: LitI2_Byte &HFF
  loc_6470DE: FStI2 var_86
  loc_6470E1: ImpAdLdI2 MemVar_74C3AA
  loc_6470E4: BranchF loc_6471BB
  loc_6470E7: LitI2_Byte 0
  loc_6470E9: FLdRfVar var_88
  loc_6470EC: FLdRfVar var_92
  loc_6470EF: FLdRfVar var_90
  loc_6470F2: ILdI2 Index
  loc_6470F5: FLdPrThis
  loc_6470F6: VCallAd Control_ID_Combo3
  loc_6470F9: FStAdFunc var_8C
  loc_6470FC: FLdPr var_8C
  loc_6470FF: Set from_stack_2 = Me(from_stack_1)
  loc_647104: FLdPr var_90
  loc_647107:  = Me.ListCount
  loc_64710C: FLdI2 var_92
  loc_64710F: LitI2_Byte 1
  loc_647111: SubI2
  loc_647112: FFreeAd var_8C = ""
  loc_647119: ForI2 var_96
  loc_64711F: FLdI2 var_88
  loc_647122: FLdRfVar var_90
  loc_647125: ILdI2 Index
  loc_647128: FLdPrThis
  loc_647129: VCallAd Control_ID_Combo3
  loc_64712C: FStAdFunc var_8C
  loc_64712F: FLdPr var_8C
  loc_647132: Set from_stack_2 = Me(from_stack_1)
  loc_647137: FLdPr var_90
  loc_64713A: Me.ListIndex = from_stack_1
  loc_64713F: FFreeAd var_8C = ""
  loc_647146: FLdRfVar var_92
  loc_647149: FLdRfVar var_90
  loc_64714C: ILdI2 Index
  loc_64714F: FLdPrThis
  loc_647150: VCallAd Control_ID_Combo3
  loc_647153: FStAdFunc var_8C
  loc_647156: FLdPr var_8C
  loc_647159: Set from_stack_2 = Me(from_stack_1)
  loc_64715E: FLdPr var_90
  loc_647161:  = Me.ListIndex
  loc_647166: FLdI2 var_92
  loc_647169: LitI2_Byte &HFF
  loc_64716B: GtI2
  loc_64716C: FFreeAd var_8C = ""
  loc_647173: BranchF loc_6471B0
  loc_647176: FLdRfVar var_9C
  loc_647179: FLdRfVar var_90
  loc_64717C: ILdI2 Index
  loc_64717F: FLdPrThis
  loc_647180: VCallAd Control_ID_Combo3
  loc_647183: FStAdFunc var_8C
  loc_647186: FLdPr var_8C
  loc_647189: Set from_stack_2 = Me(from_stack_1)
  loc_64718E: FLdPr var_90
  loc_647191:  = Me.Text
  loc_647196: ILdRf var_9C
  loc_647199: ILdI4 sValor
  loc_64719C: EqStr
  loc_64719E: FFree1Str var_9C
  loc_6471A1: FFreeAd var_8C = ""
  loc_6471A8: BranchF loc_6471B0
  loc_6471AB: LitI2_Byte 0
  loc_6471AD: FStI2 var_86
  loc_6471B0: FLdRfVar var_88
  loc_6471B3: NextI2 var_96, loc_64711F
  loc_6471B8: Branch loc_64728C
  loc_6471BB: LitI2_Byte 0
  loc_6471BD: FLdRfVar var_88
  loc_6471C0: FLdRfVar var_92
  loc_6471C3: FLdRfVar var_90
  loc_6471C6: ILdI2 Index
  loc_6471C9: FLdPrThis
  loc_6471CA: VCallAd Control_ID_Combo1
  loc_6471CD: FStAdFunc var_8C
  loc_6471D0: FLdPr var_8C
  loc_6471D3: Set from_stack_2 = Me(from_stack_1)
  loc_6471D8: FLdPr var_90
  loc_6471DB:  = Me.ListCount
  loc_6471E0: FLdI2 var_92
  loc_6471E3: LitI2_Byte 1
  loc_6471E5: SubI2
  loc_6471E6: FFreeAd var_8C = ""
  loc_6471ED: ForI2 var_A0
  loc_6471F3: FLdI2 var_88
  loc_6471F6: FLdRfVar var_90
  loc_6471F9: ILdI2 Index
  loc_6471FC: FLdPrThis
  loc_6471FD: VCallAd Control_ID_Combo1
  loc_647200: FStAdFunc var_8C
  loc_647203: FLdPr var_8C
  loc_647206: Set from_stack_2 = Me(from_stack_1)
  loc_64720B: FLdPr var_90
  loc_64720E: Me.ListIndex = from_stack_1
  loc_647213: FFreeAd var_8C = ""
  loc_64721A: FLdRfVar var_92
  loc_64721D: FLdRfVar var_90
  loc_647220: ILdI2 Index
  loc_647223: FLdPrThis
  loc_647224: VCallAd Control_ID_Combo1
  loc_647227: FStAdFunc var_8C
  loc_64722A: FLdPr var_8C
  loc_64722D: Set from_stack_2 = Me(from_stack_1)
  loc_647232: FLdPr var_90
  loc_647235:  = Me.ListIndex
  loc_64723A: FLdI2 var_92
  loc_64723D: LitI2_Byte &HFF
  loc_64723F: GtI2
  loc_647240: FFreeAd var_8C = ""
  loc_647247: BranchF loc_647284
  loc_64724A: FLdRfVar var_9C
  loc_64724D: FLdRfVar var_90
  loc_647250: ILdI2 Index
  loc_647253: FLdPrThis
  loc_647254: VCallAd Control_ID_Combo1
  loc_647257: FStAdFunc var_8C
  loc_64725A: FLdPr var_8C
  loc_64725D: Set from_stack_2 = Me(from_stack_1)
  loc_647262: FLdPr var_90
  loc_647265:  = Me.Text
  loc_64726A: ILdRf var_9C
  loc_64726D: ILdI4 sValor
  loc_647270: EqStr
  loc_647272: FFree1Str var_9C
  loc_647275: FFreeAd var_8C = ""
  loc_64727C: BranchF loc_647284
  loc_64727F: LitI2_Byte 0
  loc_647281: FStI2 var_86
  loc_647284: FLdRfVar var_88
  loc_647287: NextI2 var_A0, loc_6471F3
  loc_64728C: FLdI2 var_86
  loc_64728F: BranchF loc_6472F1
  loc_647292: ImpAdLdI2 MemVar_74C3AA
  loc_647295: BranchF loc_6472C6
  loc_647298: LitVar_Missing var_B0
  loc_64729B: PopAdLdVar
  loc_64729C: ILdI4 sValor
  loc_64729F: FLdRfVar var_90
  loc_6472A2: ILdI2 Index
  loc_6472A5: FLdPrThis
  loc_6472A6: VCallAd Control_ID_Combo3
  loc_6472A9: FStAdFunc var_8C
  loc_6472AC: FLdPr var_8C
  loc_6472AF: Set from_stack_2 = Me(from_stack_1)
  loc_6472B4: FLdPr var_90
  loc_6472B7: Me.AddItem from_stack_1, from_stack_2
  loc_6472BC: FFreeAd var_8C = ""
  loc_6472C3: Branch loc_6472F1
  loc_6472C6: LitVar_Missing var_B0
  loc_6472C9: PopAdLdVar
  loc_6472CA: ILdI4 sValor
  loc_6472CD: FLdRfVar var_90
  loc_6472D0: ILdI2 Index
  loc_6472D3: FLdPrThis
  loc_6472D4: VCallAd Control_ID_Combo1
  loc_6472D7: FStAdFunc var_8C
  loc_6472DA: FLdPr var_8C
  loc_6472DD: Set from_stack_2 = Me(from_stack_1)
  loc_6472E2: FLdPr var_90
  loc_6472E5: Me.AddItem from_stack_1, from_stack_2
  loc_6472EA: FFreeAd var_8C = ""
  loc_6472F1: FLdRfVar var_92
  loc_6472F4: FLdRfVar var_90
  loc_6472F7: ILdI2 Index
  loc_6472FA: FLdPrThis
  loc_6472FB: VCallAd Control_ID_Combo1
  loc_6472FE: FStAdFunc var_8C
  loc_647301: FLdPr var_8C
  loc_647304: Set from_stack_2 = Me(from_stack_1)
  loc_647309: FLdPr var_90
  loc_64730C:  = Me.ListCount
  loc_647311: FLdI2 var_92
  loc_647314: LitI2_Byte 1
  loc_647316: EqI2
  loc_647317: FFreeAd var_8C = ""
  loc_64731E: BranchF loc_647347
  loc_647321: LitI2_Byte 0
  loc_647323: FLdRfVar var_90
  loc_647326: ILdI2 Index
  loc_647329: FLdPrThis
  loc_64732A: VCallAd Control_ID_Combo1
  loc_64732D: FStAdFunc var_8C
  loc_647330: FLdPr var_8C
  loc_647333: Set from_stack_2 = Me(from_stack_1)
  loc_647338: FLdPr var_90
  loc_64733B: Me.ListIndex = from_stack_1
  loc_647340: FFreeAd var_8C = ""
  loc_647347: ExitProcCbHresult
End Function

Public Function BuscarTipo(sValor) '606EE8
  'Data Table: 42DBA0
  loc_606E18: LitI2_Byte 1
  loc_606E1A: FStI2 var_8E
  loc_606E1D: FLdI2 var_8E
  loc_606E20: CI4UI1
  loc_606E21: ILdI4 sValor
  loc_606E24: FnLenStr
  loc_606E25: LeI4
  loc_606E26: BranchF loc_606EC4
  loc_606E29: LitVarI2 var_C0, 1
  loc_606E2E: FLdI2 var_8E
  loc_606E31: CI4UI1
  loc_606E32: ILdRf sValor
  loc_606E35: CVarRef
  loc_606E3A: FLdRfVar var_D0
  loc_606E3D: ImpAdCallFPR4  = Mid(, , )
  loc_606E42: FLdRfVar var_D0
  loc_606E45: LitVarStr var_E0, ":"
  loc_606E4A: HardType
  loc_606E4B: EqVar var_F0
  loc_606E4F: LitVarI2 var_120, 1
  loc_606E54: FLdI2 var_8E
  loc_606E57: CI4UI1
  loc_606E58: ILdRf sValor
  loc_606E5B: CVarRef
  loc_606E60: FLdRfVar var_130
  loc_606E63: ImpAdCallFPR4  = Mid(, , )
  loc_606E68: FLdRfVar var_130
  loc_606E6B: LitVarStr var_140, "-"
  loc_606E70: HardType
  loc_606E71: EqVar var_150
  loc_606E75: OrVar var_160
  loc_606E79: CBoolVarNull
  loc_606E7B: FFreeVar var_C0 = "": var_D0 = "": var_120 = ""
  loc_606E86: BranchF loc_606EB8
  loc_606E89: LitVarI2 var_C0, 4
  loc_606E8E: FLdI2 var_8E
  loc_606E91: LitI2_Byte 4
  loc_606E93: SubI2
  loc_606E94: CI4UI1
  loc_606E95: ILdRf sValor
  loc_606E98: CVarRef
  loc_606E9D: FLdRfVar var_D0
  loc_606EA0: ImpAdCallFPR4  = Mid(, , )
  loc_606EA5: FLdRfVar var_D0
  loc_606EA8: CStrVarTmp
  loc_606EA9: FStStr var_8C
  loc_606EAC: FFreeVar var_C0 = ""
  loc_606EB3: LitI2_Byte &H64
  loc_606EB5: FStI2 var_8E
  loc_606EB8: FLdI2 var_8E
  loc_606EBB: LitI2_Byte 1
  loc_606EBD: AddI2
  loc_606EBE: FStI2 var_8E
  loc_606EC1: Branch loc_606E1D
  loc_606EC4: ILdRf var_8C
  loc_606EC7: LitStr vbNullString
  loc_606ECA: EqStr
  loc_606ECC: BranchF loc_606ED7
  loc_606ECF: LitI2_Byte 1
  loc_606ED1: FStI2 var_86
  loc_606ED4: Branch loc_606EDF
  loc_606ED7: ILdRf var_8C
  loc_606EDA: CI2Str
  loc_606EDC: FStI2 var_86
  loc_606EDF: ExitProcCbHresult
End Function

Public Function clickear() '6BE0D0
  'Data Table: 42DBA0
  loc_6BD894: ZeroRetValVar
  loc_6BD896: LitVarI2 var_E0, 1
  loc_6BD89B: FLdRfVar var_AC
  loc_6BD89E: LitVarI2 var_D0, 16
  loc_6BD8A3: ForVar var_100
  loc_6BD8A9: FLdRfVar var_108
  loc_6BD8AC: FLdRfVar var_AC
  loc_6BD8AF: CI2Var
  loc_6BD8B0: FLdPrThis
  loc_6BD8B1: VCallAd Control_ID_Combo1
  loc_6BD8B4: FStAdFunc var_104
  loc_6BD8B7: FLdPr var_104
  loc_6BD8BA: Set from_stack_2 = Me(from_stack_1)
  loc_6BD8BF: FLdPr var_108
  loc_6BD8C2: Me.Clear
  loc_6BD8C7: FFreeAd var_104 = ""
  loc_6BD8CE: FLdRfVar var_108
  loc_6BD8D1: FLdRfVar var_AC
  loc_6BD8D4: CI2Var
  loc_6BD8D5: FLdPrThis
  loc_6BD8D6: VCallAd Control_ID_Combo3
  loc_6BD8D9: FStAdFunc var_104
  loc_6BD8DC: FLdPr var_104
  loc_6BD8DF: Set from_stack_2 = Me(from_stack_1)
  loc_6BD8E4: FLdPr var_108
  loc_6BD8E7: Me.Clear
  loc_6BD8EC: FFreeAd var_104 = ""
  loc_6BD8F3: LitI2_Byte 0
  loc_6BD8F5: FLdRfVar var_108
  loc_6BD8F8: FLdRfVar var_AC
  loc_6BD8FB: CI2Var
  loc_6BD8FC: FLdPrThis
  loc_6BD8FD: VCallAd Control_ID_Combo3
  loc_6BD900: FStAdFunc var_104
  loc_6BD903: FLdPr var_104
  loc_6BD906: Set from_stack_2 = Me(from_stack_1)
  loc_6BD90B: FLdPr var_108
  loc_6BD90E: Me.Enabled = from_stack_1b
  loc_6BD913: FFreeAd var_104 = ""
  loc_6BD91A: FLdRfVar var_AC
  loc_6BD91D: NextStepVar var_100
  loc_6BD923: LitI2_Byte 1
  loc_6BD925: FStI2 var_96
  loc_6BD928: LitVarI2 var_E0, 1
  loc_6BD92D: FLdRfVar var_AC
  loc_6BD930: ImpAdLdUI1
  loc_6BD934: CVarUI1
  loc_6BD938: ForVar var_128
  loc_6BD93E: LitI2_Byte 0
  loc_6BD940: FLdRfVar var_AE
  loc_6BD943: LitI2_Byte 3
  loc_6BD945: ForI2 var_12C
  loc_6BD94B: FLdRfVar var_AC
  loc_6BD94E: CI4Var
  loc_6BD950: FLdI2 var_AE
  loc_6BD953: CI4UI1
  loc_6BD954: LitI4 0
  loc_6BD959: ImpAdLdRf MemVar_74C14C
  loc_6BD95C: AryLdPr
  loc_6BD95F: MemLdUI1 global_0
  loc_6BD963: CI2UI1
  loc_6BD965: LitI2_Byte 0
  loc_6BD967: NeI2
  loc_6BD968: BranchF loc_6BDFA2
  loc_6BD96B: FLdRfVar var_AC
  loc_6BD96E: CI4Var
  loc_6BD970: FLdI2 var_AE
  loc_6BD973: CI4UI1
  loc_6BD974: LitI4 1
  loc_6BD979: ImpAdLdRf MemVar_74C14C
  loc_6BD97C: AryLdPr
  loc_6BD97F: MemLdUI1 global_0
  loc_6BD983: CI2UI1
  loc_6BD985: LitI2_Byte 0
  loc_6BD987: EqI2
  loc_6BD988: BranchF loc_6BD9FC
  loc_6BD98B: FLdRfVar var_AC
  loc_6BD98E: CI4Var
  loc_6BD990: FLdI2 var_AE
  loc_6BD993: CI4UI1
  loc_6BD994: LitI4 0
  loc_6BD999: ImpAdLdRf MemVar_74C14C
  loc_6BD99C: AryLdPr
  loc_6BD99F: MemLdUI1 global_0
  loc_6BD9A3: CStrI2
  loc_6BD9A5: FStStr var_9C
  loc_6BD9A8: LitVar_Missing var_C0
  loc_6BD9AB: PopAdLdVar
  loc_6BD9AC: ILdRf var_9C
  loc_6BD9AF: FLdRfVar var_108
  loc_6BD9B2: FLdI2 var_96
  loc_6BD9B5: FLdPrThis
  loc_6BD9B6: VCallAd Control_ID_Combo1
  loc_6BD9B9: FStAdFunc var_104
  loc_6BD9BC: FLdPr var_104
  loc_6BD9BF: Set from_stack_2 = Me(from_stack_1)
  loc_6BD9C4: FLdPr var_108
  loc_6BD9C7: Me.AddItem from_stack_1, from_stack_2
  loc_6BD9CC: FFreeAd var_104 = ""
  loc_6BD9D3: LitI2_Byte 0
  loc_6BD9D5: FLdRfVar var_108
  loc_6BD9D8: FLdI2 var_96
  loc_6BD9DB: FLdPrThis
  loc_6BD9DC: VCallAd Control_ID_Combo1
  loc_6BD9DF: FStAdFunc var_104
  loc_6BD9E2: FLdPr var_104
  loc_6BD9E5: Set from_stack_2 = Me(from_stack_1)
  loc_6BD9EA: FLdPr var_108
  loc_6BD9ED: Me.ListIndex = from_stack_1
  loc_6BD9F2: FFreeAd var_104 = ""
  loc_6BD9F9: Branch loc_6BDB8B
  loc_6BD9FC: FLdRfVar var_AC
  loc_6BD9FF: CI4Var
  loc_6BDA01: FLdI2 var_AE
  loc_6BDA04: CI4UI1
  loc_6BDA05: LitI4 2
  loc_6BDA0A: ImpAdLdRf MemVar_74C14C
  loc_6BDA0D: AryLdPr
  loc_6BDA10: MemLdUI1 global_0
  loc_6BDA14: CI2UI1
  loc_6BDA16: LitI2_Byte 0
  loc_6BDA18: EqI2
  loc_6BDA19: BranchF loc_6BDABE
  loc_6BDA1C: FLdRfVar var_AC
  loc_6BDA1F: CI4Var
  loc_6BDA21: FLdI2 var_AE
  loc_6BDA24: CI4UI1
  loc_6BDA25: LitI4 0
  loc_6BDA2A: ImpAdLdRf MemVar_74C14C
  loc_6BDA2D: AryLdPr
  loc_6BDA30: MemLdUI1 global_0
  loc_6BDA34: CStrI2
  loc_6BDA36: FStStrNoPop var_130
  loc_6BDA39: LitStr "-"
  loc_6BDA3C: ConcatStr
  loc_6BDA3D: FStStrNoPop var_134
  loc_6BDA40: FLdRfVar var_AC
  loc_6BDA43: CI4Var
  loc_6BDA45: FLdI2 var_AE
  loc_6BDA48: CI4UI1
  loc_6BDA49: LitI4 1
  loc_6BDA4E: ImpAdLdRf MemVar_74C14C
  loc_6BDA51: AryLdPr
  loc_6BDA54: MemLdUI1 global_0
  loc_6BDA58: CStrI2
  loc_6BDA5A: FStStrNoPop var_138
  loc_6BDA5D: ConcatStr
  loc_6BDA5E: FStStr var_9C
  loc_6BDA61: FFreeStr var_130 = "": var_134 = ""
  loc_6BDA6A: LitVar_Missing var_C0
  loc_6BDA6D: PopAdLdVar
  loc_6BDA6E: ILdRf var_9C
  loc_6BDA71: FLdRfVar var_108
  loc_6BDA74: FLdI2 var_96
  loc_6BDA77: FLdPrThis
  loc_6BDA78: VCallAd Control_ID_Combo1
  loc_6BDA7B: FStAdFunc var_104
  loc_6BDA7E: FLdPr var_104
  loc_6BDA81: Set from_stack_2 = Me(from_stack_1)
  loc_6BDA86: FLdPr var_108
  loc_6BDA89: Me.AddItem from_stack_1, from_stack_2
  loc_6BDA8E: FFreeAd var_104 = ""
  loc_6BDA95: LitI2_Byte 0
  loc_6BDA97: FLdRfVar var_108
  loc_6BDA9A: FLdI2 var_96
  loc_6BDA9D: FLdPrThis
  loc_6BDA9E: VCallAd Control_ID_Combo1
  loc_6BDAA1: FStAdFunc var_104
  loc_6BDAA4: FLdPr var_104
  loc_6BDAA7: Set from_stack_2 = Me(from_stack_1)
  loc_6BDAAC: FLdPr var_108
  loc_6BDAAF: Me.ListIndex = from_stack_1
  loc_6BDAB4: FFreeAd var_104 = ""
  loc_6BDABB: Branch loc_6BDB8B
  loc_6BDABE: FLdRfVar var_AC
  loc_6BDAC1: CI4Var
  loc_6BDAC3: FLdI2 var_AE
  loc_6BDAC6: CI4UI1
  loc_6BDAC7: LitI4 0
  loc_6BDACC: ImpAdLdRf MemVar_74C14C
  loc_6BDACF: AryLdPr
  loc_6BDAD2: MemLdUI1 global_0
  loc_6BDAD6: CStrI2
  loc_6BDAD8: FStStrNoPop var_130
  loc_6BDADB: LitStr "-"
  loc_6BDADE: ConcatStr
  loc_6BDADF: FStStrNoPop var_134
  loc_6BDAE2: FLdRfVar var_AC
  loc_6BDAE5: CI4Var
  loc_6BDAE7: FLdI2 var_AE
  loc_6BDAEA: CI4UI1
  loc_6BDAEB: LitI4 1
  loc_6BDAF0: ImpAdLdRf MemVar_74C14C
  loc_6BDAF3: AryLdPr
  loc_6BDAF6: MemLdUI1 global_0
  loc_6BDAFA: CStrI2
  loc_6BDAFC: FStStrNoPop var_138
  loc_6BDAFF: ConcatStr
  loc_6BDB00: FStStrNoPop var_13C
  loc_6BDB03: LitStr "-"
  loc_6BDB06: ConcatStr
  loc_6BDB07: FStStrNoPop var_140
  loc_6BDB0A: FLdRfVar var_AC
  loc_6BDB0D: CI4Var
  loc_6BDB0F: FLdI2 var_AE
  loc_6BDB12: CI4UI1
  loc_6BDB13: LitI4 2
  loc_6BDB18: ImpAdLdRf MemVar_74C14C
  loc_6BDB1B: AryLdPr
  loc_6BDB1E: MemLdUI1 global_0
  loc_6BDB22: CStrI2
  loc_6BDB24: FStStrNoPop var_144
  loc_6BDB27: ConcatStr
  loc_6BDB28: FStStr var_9C
  loc_6BDB2B: FFreeStr var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_6BDB3A: LitVar_Missing var_C0
  loc_6BDB3D: PopAdLdVar
  loc_6BDB3E: ILdRf var_9C
  loc_6BDB41: FLdRfVar var_108
  loc_6BDB44: FLdI2 var_96
  loc_6BDB47: FLdPrThis
  loc_6BDB48: VCallAd Control_ID_Combo1
  loc_6BDB4B: FStAdFunc var_104
  loc_6BDB4E: FLdPr var_104
  loc_6BDB51: Set from_stack_2 = Me(from_stack_1)
  loc_6BDB56: FLdPr var_108
  loc_6BDB59: Me.AddItem from_stack_1, from_stack_2
  loc_6BDB5E: FFreeAd var_104 = ""
  loc_6BDB65: LitI2_Byte 0
  loc_6BDB67: FLdRfVar var_108
  loc_6BDB6A: FLdI2 var_96
  loc_6BDB6D: FLdPrThis
  loc_6BDB6E: VCallAd Control_ID_Combo1
  loc_6BDB71: FStAdFunc var_104
  loc_6BDB74: FLdPr var_104
  loc_6BDB77: Set from_stack_2 = Me(from_stack_1)
  loc_6BDB7C: FLdPr var_108
  loc_6BDB7F: Me.ListIndex = from_stack_1
  loc_6BDB84: FFreeAd var_104 = ""
  loc_6BDB8B: FLdRfVar var_AC
  loc_6BDB8E: CI4Var
  loc_6BDB90: FLdI2 var_AE
  loc_6BDB93: CI4UI1
  loc_6BDB94: LitI4 1
  loc_6BDB99: ImpAdLdRf MemVar_74C174
  loc_6BDB9C: AryLdPr
  loc_6BDB9F: MemLdUI1 global_0
  loc_6BDBA3: CI2UI1
  loc_6BDBA5: LitI2_Byte 0
  loc_6BDBA7: EqI2
  loc_6BDBA8: BranchF loc_6BDC25
  loc_6BDBAB: FLdRfVar var_AC
  loc_6BDBAE: CI4Var
  loc_6BDBB0: FLdI2 var_AE
  loc_6BDBB3: CI4UI1
  loc_6BDBB4: LitI4 0
  loc_6BDBB9: ImpAdLdRf MemVar_74C174
  loc_6BDBBC: AryLdPr
  loc_6BDBBF: MemLdUI1 global_0
  loc_6BDBC3: CStrI2
  loc_6BDBC5: FStStr var_9C
  loc_6BDBC8: LitVar_Missing var_C0
  loc_6BDBCB: PopAdLdVar
  loc_6BDBCC: ILdRf var_9C
  loc_6BDBCF: FLdRfVar var_108
  loc_6BDBD2: FLdI2 var_96
  loc_6BDBD5: FLdPrThis
  loc_6BDBD6: VCallAd Control_ID_Combo3
  loc_6BDBD9: FStAdFunc var_104
  loc_6BDBDC: FLdPr var_104
  loc_6BDBDF: Set from_stack_2 = Me(from_stack_1)
  loc_6BDBE4: FLdPr var_108
  loc_6BDBE7: Me.AddItem from_stack_1, from_stack_2
  loc_6BDBEC: FFreeAd var_104 = ""
  loc_6BDBF3: LitI2_Byte 0
  loc_6BDBF5: FLdRfVar var_108
  loc_6BDBF8: FLdI2 var_96
  loc_6BDBFB: FLdPrThis
  loc_6BDBFC: VCallAd Control_ID_Combo3
  loc_6BDBFF: FStAdFunc var_104
  loc_6BDC02: FLdPr var_104
  loc_6BDC05: Set from_stack_2 = Me(from_stack_1)
  loc_6BDC0A: FLdPr var_108
  loc_6BDC0D: Me.ListIndex = from_stack_1
  loc_6BDC12: FFreeAd var_104 = ""
  loc_6BDC19: FLdI2 var_96
  loc_6BDC1C: LitI2_Byte 1
  loc_6BDC1E: AddI2
  loc_6BDC1F: FStI2 var_96
  loc_6BDC22: Branch loc_6BDDC6
  loc_6BDC25: FLdRfVar var_AC
  loc_6BDC28: CI4Var
  loc_6BDC2A: FLdI2 var_AE
  loc_6BDC2D: CI4UI1
  loc_6BDC2E: LitI4 2
  loc_6BDC33: ImpAdLdRf MemVar_74C174
  loc_6BDC36: AryLdPr
  loc_6BDC39: MemLdUI1 global_0
  loc_6BDC3D: CI2UI1
  loc_6BDC3F: LitI2_Byte 0
  loc_6BDC41: EqI2
  loc_6BDC42: BranchF loc_6BDCF0
  loc_6BDC45: FLdRfVar var_AC
  loc_6BDC48: CI4Var
  loc_6BDC4A: FLdI2 var_AE
  loc_6BDC4D: CI4UI1
  loc_6BDC4E: LitI4 0
  loc_6BDC53: ImpAdLdRf MemVar_74C174
  loc_6BDC56: AryLdPr
  loc_6BDC59: MemLdUI1 global_0
  loc_6BDC5D: CStrI2
  loc_6BDC5F: FStStrNoPop var_130
  loc_6BDC62: LitStr "-"
  loc_6BDC65: ConcatStr
  loc_6BDC66: FStStrNoPop var_134
  loc_6BDC69: FLdRfVar var_AC
  loc_6BDC6C: CI4Var
  loc_6BDC6E: FLdI2 var_AE
  loc_6BDC71: CI4UI1
  loc_6BDC72: LitI4 1
  loc_6BDC77: ImpAdLdRf MemVar_74C174
  loc_6BDC7A: AryLdPr
  loc_6BDC7D: MemLdUI1 global_0
  loc_6BDC81: CStrI2
  loc_6BDC83: FStStrNoPop var_138
  loc_6BDC86: ConcatStr
  loc_6BDC87: FStStr var_9C
  loc_6BDC8A: FFreeStr var_130 = "": var_134 = ""
  loc_6BDC93: LitVar_Missing var_C0
  loc_6BDC96: PopAdLdVar
  loc_6BDC97: ILdRf var_9C
  loc_6BDC9A: FLdRfVar var_108
  loc_6BDC9D: FLdI2 var_96
  loc_6BDCA0: FLdPrThis
  loc_6BDCA1: VCallAd Control_ID_Combo3
  loc_6BDCA4: FStAdFunc var_104
  loc_6BDCA7: FLdPr var_104
  loc_6BDCAA: Set from_stack_2 = Me(from_stack_1)
  loc_6BDCAF: FLdPr var_108
  loc_6BDCB2: Me.AddItem from_stack_1, from_stack_2
  loc_6BDCB7: FFreeAd var_104 = ""
  loc_6BDCBE: LitI2_Byte 0
  loc_6BDCC0: FLdRfVar var_108
  loc_6BDCC3: FLdI2 var_96
  loc_6BDCC6: FLdPrThis
  loc_6BDCC7: VCallAd Control_ID_Combo3
  loc_6BDCCA: FStAdFunc var_104
  loc_6BDCCD: FLdPr var_104
  loc_6BDCD0: Set from_stack_2 = Me(from_stack_1)
  loc_6BDCD5: FLdPr var_108
  loc_6BDCD8: Me.ListIndex = from_stack_1
  loc_6BDCDD: FFreeAd var_104 = ""
  loc_6BDCE4: FLdI2 var_96
  loc_6BDCE7: LitI2_Byte 1
  loc_6BDCE9: AddI2
  loc_6BDCEA: FStI2 var_96
  loc_6BDCED: Branch loc_6BDDC6
  loc_6BDCF0: FLdRfVar var_AC
  loc_6BDCF3: CI4Var
  loc_6BDCF5: FLdI2 var_AE
  loc_6BDCF8: CI4UI1
  loc_6BDCF9: LitI4 0
  loc_6BDCFE: ImpAdLdRf MemVar_74C174
  loc_6BDD01: AryLdPr
  loc_6BDD04: MemLdUI1 global_0
  loc_6BDD08: CStrI2
  loc_6BDD0A: FStStrNoPop var_130
  loc_6BDD0D: LitStr "-"
  loc_6BDD10: ConcatStr
  loc_6BDD11: FStStrNoPop var_134
  loc_6BDD14: FLdRfVar var_AC
  loc_6BDD17: CI4Var
  loc_6BDD19: FLdI2 var_AE
  loc_6BDD1C: CI4UI1
  loc_6BDD1D: LitI4 1
  loc_6BDD22: ImpAdLdRf MemVar_74C174
  loc_6BDD25: AryLdPr
  loc_6BDD28: MemLdUI1 global_0
  loc_6BDD2C: CStrI2
  loc_6BDD2E: FStStrNoPop var_138
  loc_6BDD31: ConcatStr
  loc_6BDD32: FStStrNoPop var_13C
  loc_6BDD35: LitStr "-"
  loc_6BDD38: ConcatStr
  loc_6BDD39: FStStrNoPop var_140
  loc_6BDD3C: FLdRfVar var_AC
  loc_6BDD3F: CI4Var
  loc_6BDD41: FLdI2 var_AE
  loc_6BDD44: CI4UI1
  loc_6BDD45: LitI4 2
  loc_6BDD4A: ImpAdLdRf MemVar_74C174
  loc_6BDD4D: AryLdPr
  loc_6BDD50: MemLdUI1 global_0
  loc_6BDD54: CStrI2
  loc_6BDD56: FStStrNoPop var_144
  loc_6BDD59: ConcatStr
  loc_6BDD5A: FStStr var_9C
  loc_6BDD5D: FFreeStr var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_6BDD6C: LitVar_Missing var_C0
  loc_6BDD6F: PopAdLdVar
  loc_6BDD70: ILdRf var_9C
  loc_6BDD73: FLdRfVar var_108
  loc_6BDD76: FLdI2 var_96
  loc_6BDD79: FLdPrThis
  loc_6BDD7A: VCallAd Control_ID_Combo3
  loc_6BDD7D: FStAdFunc var_104
  loc_6BDD80: FLdPr var_104
  loc_6BDD83: Set from_stack_2 = Me(from_stack_1)
  loc_6BDD88: FLdPr var_108
  loc_6BDD8B: Me.AddItem from_stack_1, from_stack_2
  loc_6BDD90: FFreeAd var_104 = ""
  loc_6BDD97: LitI2_Byte 0
  loc_6BDD99: FLdRfVar var_108
  loc_6BDD9C: FLdI2 var_96
  loc_6BDD9F: FLdPrThis
  loc_6BDDA0: VCallAd Control_ID_Combo3
  loc_6BDDA3: FStAdFunc var_104
  loc_6BDDA6: FLdPr var_104
  loc_6BDDA9: Set from_stack_2 = Me(from_stack_1)
  loc_6BDDAE: FLdPr var_108
  loc_6BDDB1: Me.ListIndex = from_stack_1
  loc_6BDDB6: FFreeAd var_104 = ""
  loc_6BDDBD: FLdI2 var_96
  loc_6BDDC0: LitI2_Byte 1
  loc_6BDDC2: AddI2
  loc_6BDDC3: FStI2 var_96
  loc_6BDDC6: FLdRfVar var_108
  loc_6BDDC9: FLdI2 var_96
  loc_6BDDCC: LitI2_Byte 1
  loc_6BDDCE: SubI2
  loc_6BDDCF: FLdPrThis
  loc_6BDDD0: VCallAd Control_ID_Combo3
  loc_6BDDD3: FStAdFunc var_104
  loc_6BDDD6: FLdPr var_104
  loc_6BDDD9: Set from_stack_2 = Me(from_stack_1)
  loc_6BDDDE: FLdZeroAd var_108
  loc_6BDDE1: FStAdFunc var_158
  loc_6BDDE4: FLdRfVar var_158
  loc_6BDDE7: FLdI2 var_96
  loc_6BDDEA: LitI2_Byte 1
  loc_6BDDEC: SubI2
  loc_6BDDED: CVarI2 var_154
  loc_6BDDF0: FLdRfVar var_9C
  loc_6BDDF3: CVarRef
  loc_6BDDF8: Call ValidarCombo3(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6BDDFD: FFreeAd var_104 = ""
  loc_6BDE04: FFree1Var var_154 = ""
  loc_6BDE07: FLdRfVar var_15A
  loc_6BDE0A: FLdRfVar var_108
  loc_6BDE0D: FLdI2 var_96
  loc_6BDE10: LitI2_Byte 1
  loc_6BDE12: SubI2
  loc_6BDE13: FLdPrThis
  loc_6BDE14: VCallAd Control_ID_Combo4
  loc_6BDE17: FStAdFunc var_104
  loc_6BDE1A: FLdPr var_104
  loc_6BDE1D: Set from_stack_2 = Me(from_stack_1)
  loc_6BDE22: FLdPr var_108
  loc_6BDE25:  = Me.ListCount
  loc_6BDE2A: FLdI2 var_15A
  loc_6BDE2D: FLdRfVar var_AC
  loc_6BDE30: CI4Var
  loc_6BDE32: FLdI2 var_AE
  loc_6BDE35: CI4UI1
  loc_6BDE36: ImpAdLdRf MemVar_74C12C
  loc_6BDE39: AryLdPr
  loc_6BDE3C: MemLdUI1 global_0
  loc_6BDE40: CI2UI1
  loc_6BDE42: LitI2_Byte 1
  loc_6BDE44: SubI2
  loc_6BDE45: GtI2
  loc_6BDE46: FFreeAd var_104 = ""
  loc_6BDE4D: BranchF loc_6BDF4E
  loc_6BDE50: FLdRfVar var_130
  loc_6BDE53: FLdRfVar var_108
  loc_6BDE56: FLdI2 var_96
  loc_6BDE59: LitI2_Byte 1
  loc_6BDE5B: SubI2
  loc_6BDE5C: FLdPrThis
  loc_6BDE5D: VCallAd Control_ID_Combo3
  loc_6BDE60: FStAdFunc var_104
  loc_6BDE63: FLdPr var_104
  loc_6BDE66: Set from_stack_2 = Me(from_stack_1)
  loc_6BDE6B: FLdPr var_108
  loc_6BDE6E:  = Me.Text
  loc_6BDE73: ILdRf var_130
  loc_6BDE76: LitStr vbNullString
  loc_6BDE79: NeStr
  loc_6BDE7B: FFree1Str var_130
  loc_6BDE7E: FFreeAd var_104 = ""
  loc_6BDE85: BranchF loc_6BDECA
  loc_6BDE88: FLdRfVar var_AC
  loc_6BDE8B: CI4Var
  loc_6BDE8D: FLdI2 var_AE
  loc_6BDE90: CI4UI1
  loc_6BDE91: ImpAdLdRf MemVar_74C12C
  loc_6BDE94: AryLdPr
  loc_6BDE97: MemLdUI1 global_0
  loc_6BDE9B: CI2UI1
  loc_6BDE9D: LitI2_Byte 1
  loc_6BDE9F: SubI2
  loc_6BDEA0: FLdRfVar var_108
  loc_6BDEA3: FLdI2 var_96
  loc_6BDEA6: LitI2_Byte 1
  loc_6BDEA8: SubI2
  loc_6BDEA9: FLdPrThis
  loc_6BDEAA: VCallAd Control_ID_Combo4
  loc_6BDEAD: FStAdFunc var_104
  loc_6BDEB0: FLdPr var_104
  loc_6BDEB3: Set from_stack_2 = Me(from_stack_1)
  loc_6BDEB8: FLdPr var_108
  loc_6BDEBB: Me.ListIndex = from_stack_1
  loc_6BDEC0: FFreeAd var_104 = ""
  loc_6BDEC7: Branch loc_6BDF4B
  loc_6BDECA: FLdRfVar var_108
  loc_6BDECD: FLdI2 var_96
  loc_6BDED0: LitI2_Byte 1
  loc_6BDED2: SubI2
  loc_6BDED3: FLdPrThis
  loc_6BDED4: VCallAd Control_ID_Combo4
  loc_6BDED7: FStAdFunc var_104
  loc_6BDEDA: FLdPr var_104
  loc_6BDEDD: Set from_stack_2 = Me(from_stack_1)
  loc_6BDEE2: FLdRfVar var_160
  loc_6BDEE5: FLdI2 var_96
  loc_6BDEE8: LitI2_Byte 1
  loc_6BDEEA: SubI2
  loc_6BDEEB: FLdPrThis
  loc_6BDEEC: VCallAd Control_ID_Combo1
  loc_6BDEEF: FStAdFunc var_158
  loc_6BDEF2: FLdPr var_158
  loc_6BDEF5: Set from_stack_2 = Me(from_stack_1)
  loc_6BDEFA: FLdZeroAd var_160
  loc_6BDEFD: FStAdFunc var_168
  loc_6BDF00: FLdRfVar var_168
  loc_6BDF03: FLdZeroAd var_108
  loc_6BDF06: FStAdFunc var_164
  loc_6BDF09: FLdRfVar var_164
  loc_6BDF0C: FLdI2 var_96
  loc_6BDF0F: LitI2_Byte 1
  loc_6BDF11: SubI2
  loc_6BDF12: CUI1I2
  loc_6BDF14: ImpAdCallUI1  = Proc_158_6_5F9CB0()
  loc_6BDF1A: CI2UI1
  loc_6BDF1C: FLdRfVar var_170
  loc_6BDF1F: FLdI2 var_96
  loc_6BDF22: LitI2_Byte 1
  loc_6BDF24: SubI2
  loc_6BDF25: FLdPrThis
  loc_6BDF26: VCallAd Control_ID_Combo4
  loc_6BDF29: FStAdFunc var_16C
  loc_6BDF2C: FLdPr var_16C
  loc_6BDF2F: Set from_stack_2 = Me(from_stack_1)
  loc_6BDF34: FLdPr var_170
  loc_6BDF37: Me.ListIndex = from_stack_1
  loc_6BDF3C: FFreeAd var_104 = "": var_158 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_6BDF4B: Branch loc_6BDFA2
  loc_6BDF4E: FLdRfVar var_15A
  loc_6BDF51: FLdRfVar var_108
  loc_6BDF54: FLdI2 var_96
  loc_6BDF57: LitI2_Byte 1
  loc_6BDF59: SubI2
  loc_6BDF5A: FLdPrThis
  loc_6BDF5B: VCallAd Control_ID_Combo4
  loc_6BDF5E: FStAdFunc var_104
  loc_6BDF61: FLdPr var_104
  loc_6BDF64: Set from_stack_2 = Me(from_stack_1)
  loc_6BDF69: FLdPr var_108
  loc_6BDF6C:  = Me.ListCount
  loc_6BDF71: FLdI2 var_15A
  loc_6BDF74: LitI2_Byte 1
  loc_6BDF76: SubI2
  loc_6BDF77: FLdRfVar var_160
  loc_6BDF7A: FLdI2 var_96
  loc_6BDF7D: LitI2_Byte 1
  loc_6BDF7F: SubI2
  loc_6BDF80: FLdPrThis
  loc_6BDF81: VCallAd Control_ID_Combo4
  loc_6BDF84: FStAdFunc var_158
  loc_6BDF87: FLdPr var_158
  loc_6BDF8A: Set from_stack_2 = Me(from_stack_1)
  loc_6BDF8F: FLdPr var_160
  loc_6BDF92: Me.ListIndex = from_stack_1
  loc_6BDF97: FFreeAd var_104 = "": var_108 = "": var_158 = ""
  loc_6BDFA2: FLdI2 var_96
  loc_6BDFA5: LitI2_Byte &H10
  loc_6BDFA7: GtI2
  loc_6BDFA8: BranchF loc_6BE021
  loc_6BDFAB: FLdI2 var_AE
  loc_6BDFAE: LitI2_Byte 3
  loc_6BDFB0: EqI2
  loc_6BDFB1: BranchF loc_6BDFF5
  loc_6BDFB4: FLdRfVar var_AC
  loc_6BDFB7: LitVarI2 var_C0, 1
  loc_6BDFBC: AddVar var_154
  loc_6BDFC0: FStVar var_AC
  loc_6BDFC4: LitI2_Byte 0
  loc_6BDFC6: FStI2 var_AE
  loc_6BDFC9: FLdRfVar var_AC
  loc_6BDFCC: LitVarI2 var_C0, 1
  loc_6BDFD1: AddVar var_154
  loc_6BDFD5: CI2Var
  loc_6BDFD6: ImpAdLdRf MemVar_74C928
  loc_6BDFD9: NewIfNullPr fConexion2
  loc_6BDFDC: Call fConexion2.StartI2Put(from_stack_1v)
  loc_6BDFE1: FFree1Var var_154 = ""
  loc_6BDFE4: FLdI2 var_AE
  loc_6BDFE7: ImpAdLdRf MemVar_74C928
  loc_6BDFEA: NewIfNullPr fConexion2
  loc_6BDFED: Call fConexion2.StartJ2Put(from_stack_1v)
  loc_6BDFF2: Branch loc_6BE01B
  loc_6BDFF5: FLdI2 var_AE
  loc_6BDFF8: LitI2_Byte 1
  loc_6BDFFA: AddI2
  loc_6BDFFB: FStI2 var_AE
  loc_6BDFFE: FLdRfVar var_AC
  loc_6BE001: CI2Var
  loc_6BE002: ImpAdLdRf MemVar_74C928
  loc_6BE005: NewIfNullPr fConexion2
  loc_6BE008: Call fConexion2.StartI2Put(from_stack_1v)
  loc_6BE00D: FLdI2 var_AE
  loc_6BE010: ImpAdLdRf MemVar_74C928
  loc_6BE013: NewIfNullPr fConexion2
  loc_6BE016: Call fConexion2.StartJ2Put(from_stack_1v)
  loc_6BE01B: ExitProcCbHresult
  loc_6BE021: FLdRfVar var_AE
  loc_6BE024: NextI2 var_12C, loc_6BD94B
  loc_6BE029: FLdRfVar var_AC
  loc_6BE02C: CI4Var
  loc_6BE02E: ImpAdLdRf MemVar_74C1F4
  loc_6BE031: Ary1LdUI1
  loc_6BE033: CI2UI1
  loc_6BE035: LitI2_Byte 3
  loc_6BE037: GtI2
  loc_6BE038: BranchF loc_6BE050
  loc_6BE03B: FLdRfVar var_AC
  loc_6BE03E: LitVarI2 var_C0, 1
  loc_6BE043: AddVar var_154
  loc_6BE047: FStVar var_AC
  loc_6BE04B: LitI2_Byte 0
  loc_6BE04D: FStI2 var_AE
  loc_6BE050: FLdRfVar var_AC
  loc_6BE053: NextStepVar var_128
  loc_6BE059: FLdI2 var_AE
  loc_6BE05C: LitI2_Byte 3
  loc_6BE05E: EqI2
  loc_6BE05F: BranchF loc_6BE0A3
  loc_6BE062: FLdRfVar var_AC
  loc_6BE065: LitVarI2 var_C0, 1
  loc_6BE06A: AddVar var_154
  loc_6BE06E: FStVar var_AC
  loc_6BE072: LitI2_Byte 0
  loc_6BE074: FStI2 var_AE
  loc_6BE077: FLdRfVar var_AC
  loc_6BE07A: LitVarI2 var_C0, 1
  loc_6BE07F: AddVar var_154
  loc_6BE083: CI2Var
  loc_6BE084: ImpAdLdRf MemVar_74C928
  loc_6BE087: NewIfNullPr fConexion2
  loc_6BE08A: Call fConexion2.StartI2Put(from_stack_1v)
  loc_6BE08F: FFree1Var var_154 = ""
  loc_6BE092: FLdI2 var_AE
  loc_6BE095: ImpAdLdRf MemVar_74C928
  loc_6BE098: NewIfNullPr fConexion2
  loc_6BE09B: Call fConexion2.StartJ2Put(from_stack_1v)
  loc_6BE0A0: Branch loc_6BE0C9
  loc_6BE0A3: FLdI2 var_AE
  loc_6BE0A6: LitI2_Byte 1
  loc_6BE0A8: AddI2
  loc_6BE0A9: FStI2 var_AE
  loc_6BE0AC: FLdRfVar var_AC
  loc_6BE0AF: CI2Var
  loc_6BE0B0: ImpAdLdRf MemVar_74C928
  loc_6BE0B3: NewIfNullPr fConexion2
  loc_6BE0B6: Call fConexion2.StartI2Put(from_stack_1v)
  loc_6BE0BB: FLdI2 var_AE
  loc_6BE0BE: ImpAdLdRf MemVar_74C928
  loc_6BE0C1: NewIfNullPr fConexion2
  loc_6BE0C4: Call fConexion2.StartJ2Put(from_stack_1v)
  loc_6BE0C9: ExitProcCbHresult
End Function

Public Sub ValidarCombo3(sValor, Index, combo) '5FFA18
  'Data Table: 42DBA0
  loc_5FF958: ILdRfDarg sValor
  loc_5FF95E: LitVarStr var_94, "0-0-0"
  loc_5FF963: HardType
  loc_5FF964: EqVar var_B4
  loc_5FF968: ILdRfDarg sValor
  loc_5FF96E: LitVarStr var_C4, "0-0"
  loc_5FF973: HardType
  loc_5FF974: EqVar var_E4
  loc_5FF978: OrVar var_F4
  loc_5FF97C: ILdRfDarg sValor
  loc_5FF982: LitVarStr var_104, "0"
  loc_5FF987: HardType
  loc_5FF988: EqVar var_124
  loc_5FF98C: OrVar var_134
  loc_5FF990: CBoolVarNull
  loc_5FF992: BranchF loc_5FF9EA
  loc_5FF995: FLdRfVar var_13C
  loc_5FF998: ILdRfDarg Index
  loc_5FF99E: CI2Var
  loc_5FF99F: FLdPrThis
  loc_5FF9A0: VCallAd Control_ID_Combo3
  loc_5FF9A3: FStAdFunc var_138
  loc_5FF9A6: FLdPr var_138
  loc_5FF9A9: Set from_stack_2 = Me(from_stack_1)
  loc_5FF9AE: FLdPr var_13C
  loc_5FF9B1: Me.Clear
  loc_5FF9B6: FFreeAd var_138 = ""
  loc_5FF9BD: LitI2_Byte 0
  loc_5FF9BF: FLdRfVar var_13C
  loc_5FF9C2: ILdRfDarg Index
  loc_5FF9C8: CI2Var
  loc_5FF9C9: FLdPrThis
  loc_5FF9CA: VCallAd Control_ID_Combo3
  loc_5FF9CD: FStAdFunc var_138
  loc_5FF9D0: FLdPr var_138
  loc_5FF9D3: Set from_stack_2 = Me(from_stack_1)
  loc_5FF9D8: FLdPr var_13C
  loc_5FF9DB: Me.Enabled = from_stack_1b
  loc_5FF9E0: FFreeAd var_138 = ""
  loc_5FF9E7: Branch loc_5FFA14
  loc_5FF9EA: LitI2_Byte &HFF
  loc_5FF9EC: FLdRfVar var_13C
  loc_5FF9EF: ILdRfDarg Index
  loc_5FF9F5: CI2Var
  loc_5FF9F6: FLdPrThis
  loc_5FF9F7: VCallAd Control_ID_Combo3
  loc_5FF9FA: FStAdFunc var_138
  loc_5FF9FD: FLdPr var_138
  loc_5FFA00: Set from_stack_2 = Me(from_stack_1)
  loc_5FFA05: FLdPr var_13C
  loc_5FFA08: Me.Enabled = from_stack_1b
  loc_5FFA0D: FFreeAd var_138 = ""
  loc_5FFA14: ExitProcHresult
  loc_5FFA15: Ary1StVar
End Sub

Public Sub ArmarCombo3() '62932C
  'Data Table: 42DBA0
  loc_6291AC: LitI2_Byte 1
  loc_6291AE: FLdRfVar var_86
  loc_6291B1: LitI2_Byte &H10
  loc_6291B3: ForI2 var_90
  loc_6291B9: FLdRfVar var_9A
  loc_6291BC: FLdRfVar var_98
  loc_6291BF: FLdI2 var_86
  loc_6291C2: FLdPrThis
  loc_6291C3: VCallAd Control_ID_Combo3
  loc_6291C6: FStAdFunc var_94
  loc_6291C9: FLdPr var_94
  loc_6291CC: Set from_stack_2 = Me(from_stack_1)
  loc_6291D1: FLdPr var_98
  loc_6291D4:  = Me.Enabled
  loc_6291D9: FLdI2 var_9A
  loc_6291DC: FFreeAd var_94 = ""
  loc_6291E3: BranchF loc_62921E
  loc_6291E6: FLdRfVar var_A0
  loc_6291E9: FLdRfVar var_98
  loc_6291EC: FLdI2 var_86
  loc_6291EF: FLdPrThis
  loc_6291F0: VCallAd Control_ID_Combo3
  loc_6291F3: FStAdFunc var_94
  loc_6291F6: FLdPr var_94
  loc_6291F9: Set from_stack_2 = Me(from_stack_1)
  loc_6291FE: FLdPr var_98
  loc_629201:  = Me.Text
  loc_629206: FLdZeroAd var_A0
  loc_629209: FStStr var_8C
  loc_62920C: FFreeAd var_94 = ""
  loc_629213: FLdI2 var_86
  loc_629216: PopTmpLdAd2 var_9A
  loc_629219: Call Combo1_DropDown(from_stack_1v)
  loc_62921E: FLdRfVar var_9A
  loc_629221: FLdRfVar var_98
  loc_629224: FLdI2 var_86
  loc_629227: FLdPrThis
  loc_629228: VCallAd Control_ID_Combo3
  loc_62922B: FStAdFunc var_94
  loc_62922E: FLdPr var_94
  loc_629231: Set from_stack_2 = Me(from_stack_1)
  loc_629236: FLdPr var_98
  loc_629239:  = Me.Enabled
  loc_62923E: FLdI2 var_9A
  loc_629241: FFreeAd var_94 = ""
  loc_629248: BranchF loc_629322
  loc_62924B: FLdRfVar var_9A
  loc_62924E: FLdRfVar var_98
  loc_629251: FLdI2 var_86
  loc_629254: FLdPrThis
  loc_629255: VCallAd Control_ID_Combo3
  loc_629258: FStAdFunc var_94
  loc_62925B: FLdPr var_94
  loc_62925E: Set from_stack_2 = Me(from_stack_1)
  loc_629263: FLdPr var_98
  loc_629266:  = Me.ListCount
  loc_62926B: FLdI2 var_9A
  loc_62926E: LitI2_Byte 0
  loc_629270: GtI2
  loc_629271: FFreeAd var_94 = ""
  loc_629278: BranchF loc_629322
  loc_62927B: FLdRfVar var_9A
  loc_62927E: FLdRfVar var_98
  loc_629281: FLdI2 var_86
  loc_629284: FLdPrThis
  loc_629285: VCallAd Control_ID_Combo3
  loc_629288: FStAdFunc var_94
  loc_62928B: FLdPr var_94
  loc_62928E: Set from_stack_2 = Me(from_stack_1)
  loc_629293: FLdPr var_98
  loc_629296:  = Me.ListCount
  loc_62929B: FLdI2 var_9A
  loc_62929E: LitI2_Byte 1
  loc_6292A0: EqI2
  loc_6292A1: FFreeAd var_94 = ""
  loc_6292A8: BranchF loc_6292D4
  loc_6292AB: LitI2_Byte 0
  loc_6292AD: FLdRfVar var_98
  loc_6292B0: FLdI2 var_86
  loc_6292B3: FLdPrThis
  loc_6292B4: VCallAd Control_ID_Combo3
  loc_6292B7: FStAdFunc var_94
  loc_6292BA: FLdPr var_94
  loc_6292BD: Set from_stack_2 = Me(from_stack_1)
  loc_6292C2: FLdPr var_98
  loc_6292C5: Me.ListIndex = from_stack_1
  loc_6292CA: FFreeAd var_94 = ""
  loc_6292D1: Branch loc_629322
  loc_6292D4: FLdRfVar var_98
  loc_6292D7: FLdI2 var_86
  loc_6292DA: FLdPrThis
  loc_6292DB: VCallAd Control_ID_Combo3
  loc_6292DE: FStAdFunc var_94
  loc_6292E1: FLdPr var_94
  loc_6292E4: Set from_stack_2 = Me(from_stack_1)
  loc_6292E9: FLdZeroAd var_98
  loc_6292EC: FStAdFunc var_A4
  loc_6292EF: FLdRfVar var_A4
  loc_6292F2: FLdRfVar var_8C
  loc_6292F5: ImpAdCallI2  = Proc_158_4_5E0CD0()
  loc_6292FA: FLdRfVar var_AC
  loc_6292FD: FLdI2 var_86
  loc_629300: FLdPrThis
  loc_629301: VCallAd Control_ID_Combo3
  loc_629304: FStAdFunc var_A8
  loc_629307: FLdPr var_A8
  loc_62930A: Set from_stack_2 = Me(from_stack_1)
  loc_62930F: FLdPr var_AC
  loc_629312: Me.ListIndex = from_stack_1
  loc_629317: FFreeAd var_94 = "": var_A4 = "": var_A8 = ""
  loc_629322: FLdRfVar var_86
  loc_629325: NextI2 var_90, loc_6291B9
  loc_62932A: ExitProcHresult
End Sub

Private Function Proc_116_19_5F0AF4(arg_C) '5F0AF4
  'Data Table: 42DBA0
  loc_5F0A58: LitI2_Byte &HFF
  loc_5F0A5A: FLdRfVar var_8C
  loc_5F0A5D: ILdI2 arg_C
  loc_5F0A60: FLdPrThis
  loc_5F0A61: VCallAd Control_ID_Combo4
  loc_5F0A64: FStAdFunc var_88
  loc_5F0A67: FLdPr var_88
  loc_5F0A6A: Set from_stack_2 = Me(from_stack_1)
  loc_5F0A6F: FLdPr var_8C
  loc_5F0A72: Me.ListIndex = from_stack_1
  loc_5F0A77: FFreeAd var_88 = ""
  loc_5F0A7E: LitI2_Byte &HFF
  loc_5F0A80: FLdRfVar var_8C
  loc_5F0A83: ILdI2 arg_C
  loc_5F0A86: FLdPrThis
  loc_5F0A87: VCallAd Control_ID_Combo3
  loc_5F0A8A: FStAdFunc var_88
  loc_5F0A8D: FLdPr var_88
  loc_5F0A90: Set from_stack_2 = Me(from_stack_1)
  loc_5F0A95: FLdPr var_8C
  loc_5F0A98: Me.ListIndex = from_stack_1
  loc_5F0A9D: FFreeAd var_88 = ""
  loc_5F0AA4: LitI2_Byte &HFF
  loc_5F0AA6: FLdRfVar var_8C
  loc_5F0AA9: ILdI2 arg_C
  loc_5F0AAC: FLdPrThis
  loc_5F0AAD: VCallAd Control_ID_Combo1
  loc_5F0AB0: FStAdFunc var_88
  loc_5F0AB3: FLdPr var_88
  loc_5F0AB6: Set from_stack_2 = Me(from_stack_1)
  loc_5F0ABB: FLdPr var_8C
  loc_5F0ABE: Me.ListIndex = from_stack_1
  loc_5F0AC3: FFreeAd var_88 = ""
  loc_5F0ACA: LitI2_Byte 0
  loc_5F0ACC: FLdRfVar var_8C
  loc_5F0ACF: ILdI2 arg_C
  loc_5F0AD2: FLdPrThis
  loc_5F0AD3: VCallAd Control_ID_Combo3
  loc_5F0AD6: FStAdFunc var_88
  loc_5F0AD9: FLdPr var_88
  loc_5F0ADC: Set from_stack_2 = Me(from_stack_1)
  loc_5F0AE1: FLdPr var_8C
  loc_5F0AE4: Me.Enabled = from_stack_1b
  loc_5F0AE9: FFreeAd var_88 = ""
  loc_5F0AF0: ExitProcHresult
End Function

Private Function Proc_116_20_5E8178(arg_C) '5E8178
  'Data Table: 42DBA0
  loc_5E810C: LitI2_Byte 0
  loc_5E810E: CStrBool
  loc_5E8110: FStStr var_A8
  loc_5E8113: LitStr vbNullString
  loc_5E8116: FStStrCopy var_A0
  loc_5E8119: FLdPr Me
  loc_5E811C: MemLdRfVar from_stack_1.global_52
  loc_5E811F: CBoolVarNull
  loc_5E8121: BranchF loc_5E816F
  loc_5E8124: FLdRfVar var_B2
  loc_5E8127: FLdRfVar var_B0
  loc_5E812A: ILdI2 arg_C
  loc_5E812D: FLdPrThis
  loc_5E812E: VCallAd Control_ID_Combo4
  loc_5E8131: FStAdFunc var_AC
  loc_5E8134: FLdPr var_AC
  loc_5E8137: Set from_stack_2 = Me(from_stack_1)
  loc_5E813C: FLdPr var_B0
  loc_5E813F:  = Me.ListIndex
  loc_5E8144: FLdI2 var_B2
  loc_5E8147: LitI2_Byte &HFF
  loc_5E8149: NeI2
  loc_5E814A: FFreeAd var_AC = ""
  loc_5E8151: BranchF loc_5E816F
  loc_5E8154: ILdI2 arg_C
  loc_5E8157: CI4UI1
  loc_5E8158: LitI4 0
  loc_5E815D: FLdPr Me
  loc_5E8160: MemLdRfVar from_stack_1.global_104
  loc_5E8163: AryLdPr
  loc_5E8166: MemLdUI1 global_0
  loc_5E816A: CI2UI1
  loc_5E816C: FStI2 var_86
  loc_5E816F: ExitProcCbHresult
End Function

Private Function Proc_116_21_5E2848(arg_C) '5E2848
  'Data Table: 42DBA0
  loc_5E27F0: ZeroRetVal
  loc_5E27F2: FLdUI1
  loc_5E27F6: CI2UI1
  loc_5E27F8: LitI2_Byte 9
  loc_5E27FA: LeI2
  loc_5E27FB: BranchF loc_5E2827
  loc_5E27FE: LitStr "  "
  loc_5E2801: FLdRfVar arg_C
  loc_5E2804: CVarRef
  loc_5E2809: ImpAdCallI2 Str$()
  loc_5E280E: FStStrNoPop var_9C
  loc_5E2811: ImpAdCallI2 Trim$()
  loc_5E2816: FStStrNoPop var_A0
  loc_5E2819: ConcatStr
  loc_5E281A: FStStr var_88
  loc_5E281D: FFreeStr var_9C = ""
  loc_5E2824: Branch loc_5E2842
  loc_5E2827: FLdRfVar arg_C
  loc_5E282A: CVarRef
  loc_5E282F: ImpAdCallI2 Str$()
  loc_5E2834: FStStrNoPop var_9C
  loc_5E2837: ImpAdCallI2 Trim$()
  loc_5E283C: FStStr var_88
  loc_5E283F: FFree1Str var_9C
  loc_5E2842: ExitProcCbHresult
End Function

Private Function Proc_116_22_5C8A10() '5C8A10
  'Data Table: 42DBA0
  loc_5C8A08: ExitProcCbHresult
End Function
