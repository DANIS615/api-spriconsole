VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fCapacidadTanque
  Caption = "Capacidad Máxima y Tipo de Producto en Tanques"
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form3"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 270
  ClientWidth = 11910
  ClientHeight = 8565
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 4440
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 4050
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 3660
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 3270
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 2880
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 2490
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 2100
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 1710
    Width = 4725
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 1320
    Width = 4725
    Height = 360
    TabIndex = 3
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
  Begin VB.TextBox Text1
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 4440
    Width = 4050
    Height = 360
    TabIndex = 18
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 4050
    Width = 4050
    Height = 360
    TabIndex = 16
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 3660
    Width = 4050
    Height = 360
    TabIndex = 14
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 7
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 3270
    Width = 4050
    Height = 360
    TabIndex = 12
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 2880
    Width = 4050
    Height = 360
    TabIndex = 10
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 2490
    Width = 4050
    Height = 360
    TabIndex = 8
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 2100
    Width = 4050
    Height = 360
    TabIndex = 6
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 1710
    Width = 4050
    Height = 360
    TabIndex = 4
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 1320
    Width = 4050
    Height = 360
    TabIndex = 2
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 930
    Width = 4050
    Height = 360
    TabIndex = 0
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
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
    Left = 6660
    Top = 960
    Width = 4725
    Height = 360
    TabIndex = 1
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
  Begin VB.TextBox Text1
    Index = 11
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 4830
    Width = 4050
    Height = 360
    TabIndex = 20
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 12
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 5220
    Width = 4050
    Height = 360
    TabIndex = 22
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 13
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 5610
    Width = 4050
    Height = 360
    TabIndex = 24
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 14
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 6000
    Width = 4050
    Height = 360
    TabIndex = 26
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 15
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 6390
    Width = 4050
    Height = 360
    TabIndex = 28
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text1
    Index = 16
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 6780
    Width = 4050
    Height = 360
    TabIndex = 30
    MaxLength = 18
    BeginProperty Font
      Name = "Terminal"
      Size = 12
      Charset = 255
      Weight = 400
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
    Left = 6660
    Top = 4830
    Width = 4725
    Height = 360
    TabIndex = 21
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
    Left = 6660
    Top = 5220
    Width = 4725
    Height = 360
    TabIndex = 23
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
    Left = 6660
    Top = 5610
    Width = 4725
    Height = 360
    TabIndex = 25
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
    Left = 6660
    Top = 6000
    Width = 4725
    Height = 360
    TabIndex = 27
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
    Left = 6660
    Top = 6390
    Width = 4725
    Height = 360
    TabIndex = 29
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 6660
    Top = 6780
    Width = 4725
    Height = 360
    TabIndex = 31
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
  Begin Threed.SSCommand SSCommand3
    Left = 3120
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 33
    OleObjectBlob = "fCapacidadTanque.frx":0000
  End
  Begin Threed.SSCommand SSCommand1
    Left = 240
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 32
    OleObjectBlob = "fCapacidadTanque.frx":0042
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9000
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 35
    OleObjectBlob = "fCapacidadTanque.frx":00AE
  End
  Begin Threed.SSCommand sscCancel
    Left = 6120
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 34
    OleObjectBlob = "fCapacidadTanque.frx":00F9
  End
  Begin VB.Shape shpTank
    Left = 960
    Top = 120
    Width = 4050
    Height = 360
    Visible = 0   'False
    FillColor = &HE0E0E0&
    FillStyle = 0
  End
  Begin VB.Label Label1
    Caption = "   Tanque  1 :"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 930
    Width = 2130
    Height = 360
    TabIndex = 53
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
    Caption = "   Tanque  2 :"
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 1320
    Width = 2130
    Height = 360
    TabIndex = 52
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
    Caption = "   Tanque  3 :"
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 1710
    Width = 2130
    Height = 360
    TabIndex = 51
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
    Caption = "   Tanque  4 :"
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 2100
    Width = 2130
    Height = 360
    TabIndex = 50
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
    Caption = "   Tanque  5 :"
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 2490
    Width = 2130
    Height = 360
    TabIndex = 49
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
    Caption = "   Tanque  6 :"
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 2880
    Width = 2130
    Height = 360
    TabIndex = 48
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
    Caption = "   Tanque  7 :"
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 3270
    Width = 2130
    Height = 360
    TabIndex = 47
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
    Caption = "   Tanque  8 :"
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 3660
    Width = 2130
    Height = 360
    TabIndex = 46
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
    Caption = "   Tanque  9 :"
    Index = 9
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 4050
    Width = 2130
    Height = 360
    TabIndex = 45
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
    Caption = "   Tanque  10 :"
    Index = 10
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 4440
    Width = 2130
    Height = 360
    TabIndex = 44
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
    Caption = "   Tanque  11 :"
    Index = 11
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 4830
    Width = 2130
    Height = 360
    TabIndex = 43
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
    Caption = "   Tanque  12 :"
    Index = 12
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 5220
    Width = 2130
    Height = 360
    TabIndex = 42
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
    Caption = "   Tanque  13 :"
    Index = 13
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 5610
    Width = 2130
    Height = 360
    TabIndex = 41
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
    Caption = "   Tanque  14 :"
    Index = 14
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 6000
    Width = 2130
    Height = 360
    TabIndex = 40
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
    Caption = "   Tanque  15 :"
    Index = 15
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 6390
    Width = 2130
    Height = 360
    TabIndex = 39
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
    Caption = "   Tanque  16 :"
    Index = 16
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 420
    Top = 6780
    Width = 2130
    Height = 360
    TabIndex = 38
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
  Begin VB.Label Label2
    Caption = "Capacidad  Máxima"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 2580
    Top = 480
    Width = 4050
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
  Begin VB.Label Label3
    Caption = "Tipo  de  Producto"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 6660
    Top = 480
    Width = 4695
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
End

Attribute VB_Name = "fCapacidadTanque"

Public strConfigError As String


Private Sub Form_Activate() '6A0530
  'Data Table: 424CF8
  loc_69FE88: LitI2_Byte 0
  loc_69FE8A: CUI1I2
  loc_69FE8C: FLdPr Me
  loc_69FE8F: MemStUI1
  loc_69FE93: FLdRfVar var_1D4
  loc_69FE96: LitVar_Missing var_1D0
  loc_69FE99: LitVar_Missing var_1B0
  loc_69FE9C: LitVar_Missing var_190
  loc_69FE9F: LitVar_Missing var_170
  loc_69FEA2: LitVar_Missing var_150
  loc_69FEA5: LitVar_Missing var_130
  loc_69FEA8: LitVar_Missing var_110
  loc_69FEAB: LitVar_Missing var_F0
  loc_69FEAE: LitVar_Missing var_D0
  loc_69FEB1: LitVar_Missing var_B0
  loc_69FEB4: LitStr "Capacidad Máxima y Tipo de Producto en Tanques"
  loc_69FEB7: FStStrCopy var_90
  loc_69FEBA: FLdRfVar var_90
  loc_69FEBD: LitI4 1
  loc_69FEC2: PopTmpLdAdStr var_8C
  loc_69FEC5: LitI2_Byte &H13
  loc_69FEC7: PopTmpLdAd2 var_88
  loc_69FECA: ImpAdLdRf MemVar_74C7D0
  loc_69FECD: NewIfNullPr clsMsg
  loc_69FED0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69FED5: ILdRf var_1D4
  loc_69FED8: FLdPr Me
  loc_69FEDB: Me.Caption = from_stack_1
  loc_69FEE0: FFreeStr var_90 = ""
  loc_69FEE7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_69FEFE: FLdRfVar var_1D4
  loc_69FF01: LitVar_Missing var_1D0
  loc_69FF04: LitVar_Missing var_1B0
  loc_69FF07: LitVar_Missing var_190
  loc_69FF0A: LitVar_Missing var_170
  loc_69FF0D: LitVar_Missing var_150
  loc_69FF10: LitVar_Missing var_130
  loc_69FF13: LitVar_Missing var_110
  loc_69FF16: LitVar_Missing var_F0
  loc_69FF19: LitVar_Missing var_D0
  loc_69FF1C: LitVar_Missing var_B0
  loc_69FF1F: LitStr "Capacidad Máxima"
  loc_69FF22: FStStrCopy var_90
  loc_69FF25: FLdRfVar var_90
  loc_69FF28: LitI4 2
  loc_69FF2D: PopTmpLdAdStr var_8C
  loc_69FF30: LitI2_Byte &H13
  loc_69FF32: PopTmpLdAd2 var_88
  loc_69FF35: ImpAdLdRf MemVar_74C7D0
  loc_69FF38: NewIfNullPr clsMsg
  loc_69FF3B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69FF40: ILdRf var_1D4
  loc_69FF43: FLdPrThis
  loc_69FF44: VCallAd Control_ID_Label2
  loc_69FF47: FStAdFunc var_1D8
  loc_69FF4A: FLdPr var_1D8
  loc_69FF4D: Me.Caption = from_stack_1
  loc_69FF52: FFreeStr var_90 = ""
  loc_69FF59: FFree1Ad var_1D8
  loc_69FF5C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_69FF73: FLdRfVar var_1D4
  loc_69FF76: LitVar_Missing var_1D0
  loc_69FF79: LitVar_Missing var_1B0
  loc_69FF7C: LitVar_Missing var_190
  loc_69FF7F: LitVar_Missing var_170
  loc_69FF82: LitVar_Missing var_150
  loc_69FF85: LitVar_Missing var_130
  loc_69FF88: LitVar_Missing var_110
  loc_69FF8B: LitVar_Missing var_F0
  loc_69FF8E: LitVar_Missing var_D0
  loc_69FF91: LitVar_Missing var_B0
  loc_69FF94: LitStr "Tipo de Producto"
  loc_69FF97: FStStrCopy var_90
  loc_69FF9A: FLdRfVar var_90
  loc_69FF9D: LitI4 3
  loc_69FFA2: PopTmpLdAdStr var_8C
  loc_69FFA5: LitI2_Byte &H13
  loc_69FFA7: PopTmpLdAd2 var_88
  loc_69FFAA: ImpAdLdRf MemVar_74C7D0
  loc_69FFAD: NewIfNullPr clsMsg
  loc_69FFB0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69FFB5: ILdRf var_1D4
  loc_69FFB8: FLdPrThis
  loc_69FFB9: VCallAd Control_ID_Label3
  loc_69FFBC: FStAdFunc var_1D8
  loc_69FFBF: FLdPr var_1D8
  loc_69FFC2: Me.Caption = from_stack_1
  loc_69FFC7: FFreeStr var_90 = ""
  loc_69FFCE: FFree1Ad var_1D8
  loc_69FFD1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_69FFE8: FLdRfVar var_1D4
  loc_69FFEB: LitVar_Missing var_1D0
  loc_69FFEE: LitVar_Missing var_1B0
  loc_69FFF1: LitVar_Missing var_190
  loc_69FFF4: LitVar_Missing var_170
  loc_69FFF7: LitVar_Missing var_150
  loc_69FFFA: LitVar_Missing var_130
  loc_69FFFD: LitVar_Missing var_110
  loc_6A0000: LitVar_Missing var_F0
  loc_6A0003: LitVar_Missing var_D0
  loc_6A0006: LitVar_Missing var_B0
  loc_6A0009: LitStr "Página &Anterior"
  loc_6A000C: FStStrCopy var_90
  loc_6A000F: FLdRfVar var_90
  loc_6A0012: LitI4 4
  loc_6A0017: PopTmpLdAdStr var_8C
  loc_6A001A: LitI2_Byte &H13
  loc_6A001C: PopTmpLdAd2 var_88
  loc_6A001F: ImpAdLdRf MemVar_74C7D0
  loc_6A0022: NewIfNullPr clsMsg
  loc_6A0025: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A002A: FLdZeroAd var_1D4
  loc_6A002D: CVarStr var_1E8
  loc_6A0030: PopAdLdVar
  loc_6A0031: FLdPrThis
  loc_6A0032: VCallAd Control_ID_SSCommand1
  loc_6A0035: FStAdFunc var_1D8
  loc_6A0038: FLdPr var_1D8
  loc_6A003B: LateIdSt
  loc_6A0040: FFree1Str var_90
  loc_6A0043: FFree1Ad var_1D8
  loc_6A0046: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A005F: FLdRfVar var_1D4
  loc_6A0062: LitVar_Missing var_1D0
  loc_6A0065: LitVar_Missing var_1B0
  loc_6A0068: LitVar_Missing var_190
  loc_6A006B: LitVar_Missing var_170
  loc_6A006E: LitVar_Missing var_150
  loc_6A0071: LitVar_Missing var_130
  loc_6A0074: LitVar_Missing var_110
  loc_6A0077: LitVar_Missing var_F0
  loc_6A007A: LitVar_Missing var_D0
  loc_6A007D: LitVar_Missing var_B0
  loc_6A0080: LitStr "&Reset"
  loc_6A0083: FStStrCopy var_90
  loc_6A0086: FLdRfVar var_90
  loc_6A0089: LitI4 5
  loc_6A008E: PopTmpLdAdStr var_8C
  loc_6A0091: LitI2_Byte &H13
  loc_6A0093: PopTmpLdAd2 var_88
  loc_6A0096: ImpAdLdRf MemVar_74C7D0
  loc_6A0099: NewIfNullPr clsMsg
  loc_6A009C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A00A1: FLdZeroAd var_1D4
  loc_6A00A4: CVarStr var_1E8
  loc_6A00A7: PopAdLdVar
  loc_6A00A8: FLdPrThis
  loc_6A00A9: VCallAd Control_ID_SSCommand3
  loc_6A00AC: FStAdFunc var_1D8
  loc_6A00AF: FLdPr var_1D8
  loc_6A00B2: LateIdSt
  loc_6A00B7: FFree1Str var_90
  loc_6A00BA: FFree1Ad var_1D8
  loc_6A00BD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A00D6: FLdRfVar var_1D4
  loc_6A00D9: LitVar_Missing var_1D0
  loc_6A00DC: LitVar_Missing var_1B0
  loc_6A00DF: LitVar_Missing var_190
  loc_6A00E2: LitVar_Missing var_170
  loc_6A00E5: LitVar_Missing var_150
  loc_6A00E8: LitVar_Missing var_130
  loc_6A00EB: LitVar_Missing var_110
  loc_6A00EE: LitVar_Missing var_F0
  loc_6A00F1: LitVar_Missing var_D0
  loc_6A00F4: LitVar_Missing var_B0
  loc_6A00F7: LitStr "&Cancelar"
  loc_6A00FA: FStStrCopy var_90
  loc_6A00FD: FLdRfVar var_90
  loc_6A0100: LitI4 6
  loc_6A0105: PopTmpLdAdStr var_8C
  loc_6A0108: LitI2_Byte &H13
  loc_6A010A: PopTmpLdAd2 var_88
  loc_6A010D: ImpAdLdRf MemVar_74C7D0
  loc_6A0110: NewIfNullPr clsMsg
  loc_6A0113: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0118: FLdZeroAd var_1D4
  loc_6A011B: CVarStr var_1E8
  loc_6A011E: PopAdLdVar
  loc_6A011F: FLdPrThis
  loc_6A0120: VCallAd Control_ID_sscCancel
  loc_6A0123: FStAdFunc var_1D8
  loc_6A0126: FLdPr var_1D8
  loc_6A0129: LateIdSt
  loc_6A012E: FFree1Str var_90
  loc_6A0131: FFree1Ad var_1D8
  loc_6A0134: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A014D: FLdRfVar var_1D4
  loc_6A0150: LitVar_Missing var_1D0
  loc_6A0153: LitVar_Missing var_1B0
  loc_6A0156: LitVar_Missing var_190
  loc_6A0159: LitVar_Missing var_170
  loc_6A015C: LitVar_Missing var_150
  loc_6A015F: LitVar_Missing var_130
  loc_6A0162: LitVar_Missing var_110
  loc_6A0165: LitVar_Missing var_F0
  loc_6A0168: LitVar_Missing var_D0
  loc_6A016B: LitVar_Missing var_B0
  loc_6A016E: LitStr "&Próxima Página"
  loc_6A0171: FStStrCopy var_90
  loc_6A0174: FLdRfVar var_90
  loc_6A0177: LitI4 7
  loc_6A017C: PopTmpLdAdStr var_8C
  loc_6A017F: LitI2_Byte &H13
  loc_6A0181: PopTmpLdAd2 var_88
  loc_6A0184: ImpAdLdRf MemVar_74C7D0
  loc_6A0187: NewIfNullPr clsMsg
  loc_6A018A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A018F: FLdZeroAd var_1D4
  loc_6A0192: CVarStr var_1E8
  loc_6A0195: PopAdLdVar
  loc_6A0196: FLdPrThis
  loc_6A0197: VCallAd Control_ID_SSCommand2
  loc_6A019A: FStAdFunc var_1D8
  loc_6A019D: FLdPr var_1D8
  loc_6A01A0: LateIdSt
  loc_6A01A5: FFree1Str var_90
  loc_6A01A8: FFree1Ad var_1D8
  loc_6A01AB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6A01C4: FLdRfVar var_1D4
  loc_6A01C7: LitVar_Missing var_1D0
  loc_6A01CA: LitVar_Missing var_1B0
  loc_6A01CD: LitVar_Missing var_190
  loc_6A01D0: LitVar_Missing var_170
  loc_6A01D3: LitVar_Missing var_150
  loc_6A01D6: LitVar_Missing var_130
  loc_6A01D9: LitVar_Missing var_110
  loc_6A01DC: LitVar_Missing var_F0
  loc_6A01DF: LitVar_Missing var_D0
  loc_6A01E2: LitVar_Missing var_B0
  loc_6A01E5: LitStr "ERROR EN LA CONFIGURACION"
  loc_6A01E8: FStStrCopy var_90
  loc_6A01EB: FLdRfVar var_90
  loc_6A01EE: LitI4 9
  loc_6A01F3: PopTmpLdAdStr var_8C
  loc_6A01F6: LitI2_Byte &H13
  loc_6A01F8: PopTmpLdAd2 var_88
  loc_6A01FB: ImpAdLdRf MemVar_74C7D0
  loc_6A01FE: NewIfNullPr clsMsg
  loc_6A0201: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0206: ILdRf var_1D4
  loc_6A0209: FLdPr Me
  loc_6A020C: MemStStrCopy
  loc_6A0210: FFreeStr var_90 = ""
  loc_6A0217: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A022E: LitI2_Byte 1
  loc_6A0230: CUI1I2
  loc_6A0232: FLdRfVar var_86
  loc_6A0235: LitI2_Byte &H10
  loc_6A0237: CUI1I2
  loc_6A0239: ForUI1 var_1EC
  loc_6A023F: FLdRfVar var_1D4
  loc_6A0242: LitVar_Missing var_1D0
  loc_6A0245: LitVar_Missing var_1B0
  loc_6A0248: LitVar_Missing var_190
  loc_6A024B: LitVar_Missing var_170
  loc_6A024E: LitVar_Missing var_150
  loc_6A0251: LitVar_Missing var_130
  loc_6A0254: LitVar_Missing var_110
  loc_6A0257: LitVar_Missing var_F0
  loc_6A025A: LitVar_Missing var_D0
  loc_6A025D: LitVar_Missing var_B0
  loc_6A0260: LitStr "   Tanque"
  loc_6A0263: FStStrCopy var_90
  loc_6A0266: FLdRfVar var_90
  loc_6A0269: LitI4 &HF
  loc_6A026E: PopTmpLdAdStr var_8C
  loc_6A0271: LitI2_Byte &H13
  loc_6A0273: PopTmpLdAd2 var_88
  loc_6A0276: ImpAdLdRf MemVar_74C7D0
  loc_6A0279: NewIfNullPr clsMsg
  loc_6A027C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0281: ILdRf var_1D4
  loc_6A0284: LitStr " "
  loc_6A0287: ConcatStr
  loc_6A0288: FStStrNoPop var_1F0
  loc_6A028B: FLdUI1
  loc_6A028F: CStrI2
  loc_6A0291: FStStrNoPop var_1F4
  loc_6A0294: ConcatStr
  loc_6A0295: FStStrNoPop var_1F8
  loc_6A0298: LitStr " :"
  loc_6A029B: ConcatStr
  loc_6A029C: FStStrNoPop var_200
  loc_6A029F: FLdRfVar var_1FC
  loc_6A02A2: FLdUI1
  loc_6A02A6: CI2UI1
  loc_6A02A8: FLdPrThis
  loc_6A02A9: VCallAd Control_ID_Label1
  loc_6A02AC: FStAdFunc var_1D8
  loc_6A02AF: FLdPr var_1D8
  loc_6A02B2: Set from_stack_2 = Me(from_stack_1)
  loc_6A02B7: FLdPr var_1FC
  loc_6A02BA: Me.Caption = from_stack_1
  loc_6A02BF: FFreeStr var_90 = "": var_1D4 = "": var_1F0 = "": var_1F4 = "": var_1F8 = ""
  loc_6A02CE: FFreeAd var_1D8 = ""
  loc_6A02D5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A02EC: FLdUI1
  loc_6A02F0: CI2UI1
  loc_6A02F2: ImpAdLdUI1
  loc_6A02F6: CI2UI1
  loc_6A02F8: LitI2_Byte 1
  loc_6A02FA: AddI2
  loc_6A02FB: LeI2
  loc_6A02FC: BranchF loc_6A03FB
  loc_6A02FF: FLdUI1
  loc_6A0303: CI2UI1
  loc_6A0305: LitI2_Byte 1
  loc_6A0307: EqI2
  loc_6A0308: FLdUI1
  loc_6A030C: CI4UI1
  loc_6A030D: ImpAdLdRf MemVar_74C2EC
  loc_6A0310: Ary1LdCy
  loc_6A0311: LitCy 0
  loc_6A031A: EqCy
  loc_6A031B: AndI4
  loc_6A031C: FLdUI1
  loc_6A0320: CI4UI1
  loc_6A0321: ImpAdLdRf MemVar_74C2EC
  loc_6A0324: Ary1LdCy
  loc_6A0325: LitCy 0
  loc_6A032E: GtCy
  loc_6A032F: OrI4
  loc_6A0330: BranchF loc_6A03A5
  loc_6A0333: LitI4 1
  loc_6A0338: LitI4 1
  loc_6A033D: LitVarStr var_C0, " 00,000.00 "
  loc_6A0342: FStVarCopyObj var_B0
  loc_6A0345: FLdRfVar var_B0
  loc_6A0348: FLdUI1
  loc_6A034C: CI4UI1
  loc_6A034D: ImpAdLdRf MemVar_74C2EC
  loc_6A0350: Ary1LdRf
  loc_6A0351: CVarRef
  loc_6A0356: FLdRfVar var_D0
  loc_6A0359: ImpAdCallFPR4  = Format(, )
  loc_6A035E: FLdRfVar var_D0
  loc_6A0361: ImpAdLdI4 MemVar_74BEBC
  loc_6A0364: CVarStr var_E0
  loc_6A0367: ConcatVar var_F0
  loc_6A036B: CStrVarVal var_90
  loc_6A036F: FLdRfVar var_1FC
  loc_6A0372: FLdUI1
  loc_6A0376: CI2UI1
  loc_6A0378: FLdPrThis
  loc_6A0379: VCallAd Control_ID_Text1
  loc_6A037C: FStAdFunc var_1D8
  loc_6A037F: FLdPr var_1D8
  loc_6A0382: Set from_stack_2 = Me(from_stack_1)
  loc_6A0387: FLdPr var_1FC
  loc_6A038A: Me.Text = from_stack_1
  loc_6A038F: FFree1Str var_90
  loc_6A0392: FFreeAd var_1D8 = ""
  loc_6A0399: FFreeVar var_B0 = "": var_D0 = ""
  loc_6A03A2: Branch loc_6A03CF
  loc_6A03A5: LitStr vbNullString
  loc_6A03A8: FLdRfVar var_1FC
  loc_6A03AB: FLdUI1
  loc_6A03AF: CI2UI1
  loc_6A03B1: FLdPrThis
  loc_6A03B2: VCallAd Control_ID_Text1
  loc_6A03B5: FStAdFunc var_1D8
  loc_6A03B8: FLdPr var_1D8
  loc_6A03BB: Set from_stack_2 = Me(from_stack_1)
  loc_6A03C0: FLdPr var_1FC
  loc_6A03C3: Me.Text = from_stack_1
  loc_6A03C8: FFreeAd var_1D8 = ""
  loc_6A03CF: LitI2_Byte &HFF
  loc_6A03D1: FLdRfVar var_1FC
  loc_6A03D4: FLdUI1
  loc_6A03D8: CI2UI1
  loc_6A03DA: FLdPrThis
  loc_6A03DB: VCallAd Control_ID_Text1
  loc_6A03DE: FStAdFunc var_1D8
  loc_6A03E1: FLdPr var_1D8
  loc_6A03E4: Set from_stack_2 = Me(from_stack_1)
  loc_6A03E9: FLdPr var_1FC
  loc_6A03EC: Me.Enabled = from_stack_1b
  loc_6A03F1: FFreeAd var_1D8 = ""
  loc_6A03F8: Branch loc_6A044E
  loc_6A03FB: LitStr vbNullString
  loc_6A03FE: FLdRfVar var_1FC
  loc_6A0401: FLdUI1
  loc_6A0405: CI2UI1
  loc_6A0407: FLdPrThis
  loc_6A0408: VCallAd Control_ID_Text1
  loc_6A040B: FStAdFunc var_1D8
  loc_6A040E: FLdPr var_1D8
  loc_6A0411: Set from_stack_2 = Me(from_stack_1)
  loc_6A0416: FLdPr var_1FC
  loc_6A0419: Me.Text = from_stack_1
  loc_6A041E: FFreeAd var_1D8 = ""
  loc_6A0425: LitI2_Byte 0
  loc_6A0427: FLdRfVar var_1FC
  loc_6A042A: FLdUI1
  loc_6A042E: CI2UI1
  loc_6A0430: FLdPrThis
  loc_6A0431: VCallAd Control_ID_Text1
  loc_6A0434: FStAdFunc var_1D8
  loc_6A0437: FLdPr var_1D8
  loc_6A043A: Set from_stack_2 = Me(from_stack_1)
  loc_6A043F: FLdPr var_1FC
  loc_6A0442: Me.Enabled = from_stack_1b
  loc_6A0447: FFreeAd var_1D8 = ""
  loc_6A044E: FLdUI1
  loc_6A0452: CI4UI1
  loc_6A0453: ImpAdLdRf MemVar_74C2EC
  loc_6A0456: Ary1LdCy
  loc_6A0457: CBoolCy
  loc_6A0458: BranchF loc_6A04C8
  loc_6A045B: FLdRfVar var_202
  loc_6A045E: FLdUI1
  loc_6A0462: CI4UI1
  loc_6A0463: ImpAdLdRf MemVar_74C1D8
  loc_6A0466: Ary1LdUI1
  loc_6A0468: CI2UI1
  loc_6A046A: PopTmpLdAd2 var_88
  loc_6A046D: from_stack_2v = Proc_150_15_5F1F38(from_stack_1v)
  loc_6A0472: FLdI2 var_202
  loc_6A0475: FLdRfVar var_1FC
  loc_6A0478: FLdUI1
  loc_6A047C: CI2UI1
  loc_6A047E: FLdPrThis
  loc_6A047F: VCallAd Control_ID_Combo1
  loc_6A0482: FStAdFunc var_1D8
  loc_6A0485: FLdPr var_1D8
  loc_6A0488: Set from_stack_2 = Me(from_stack_1)
  loc_6A048D: FLdPr var_1FC
  loc_6A0490: Me.ListIndex = from_stack_1
  loc_6A0495: FFreeAd var_1D8 = ""
  loc_6A049C: LitI2_Byte &HFF
  loc_6A049E: FLdRfVar var_1FC
  loc_6A04A1: FLdUI1
  loc_6A04A5: CI2UI1
  loc_6A04A7: FLdPrThis
  loc_6A04A8: VCallAd Control_ID_Combo1
  loc_6A04AB: FStAdFunc var_1D8
  loc_6A04AE: FLdPr var_1D8
  loc_6A04B1: Set from_stack_2 = Me(from_stack_1)
  loc_6A04B6: FLdPr var_1FC
  loc_6A04B9: Me.Enabled = from_stack_1b
  loc_6A04BE: FFreeAd var_1D8 = ""
  loc_6A04C5: Branch loc_6A051A
  loc_6A04C8: LitI2_Byte &HFF
  loc_6A04CA: FLdRfVar var_1FC
  loc_6A04CD: FLdUI1
  loc_6A04D1: CI2UI1
  loc_6A04D3: FLdPrThis
  loc_6A04D4: VCallAd Control_ID_Combo1
  loc_6A04D7: FStAdFunc var_1D8
  loc_6A04DA: FLdPr var_1D8
  loc_6A04DD: Set from_stack_2 = Me(from_stack_1)
  loc_6A04E2: FLdPr var_1FC
  loc_6A04E5: Me.ListIndex = from_stack_1
  loc_6A04EA: FFreeAd var_1D8 = ""
  loc_6A04F1: LitI2_Byte 0
  loc_6A04F3: FLdRfVar var_1FC
  loc_6A04F6: FLdUI1
  loc_6A04FA: CI2UI1
  loc_6A04FC: FLdPrThis
  loc_6A04FD: VCallAd Control_ID_Combo1
  loc_6A0500: FStAdFunc var_1D8
  loc_6A0503: FLdPr var_1D8
  loc_6A0506: Set from_stack_2 = Me(from_stack_1)
  loc_6A050B: FLdPr var_1FC
  loc_6A050E: Me.Enabled = from_stack_1b
  loc_6A0513: FFreeAd var_1D8 = ""
  loc_6A051A: FLdRfVar var_86
  loc_6A051D: NextUI1
  loc_6A0523: LitI2_Byte 1
  loc_6A0525: CUI1I2
  loc_6A0527: FLdPr Me
  loc_6A052A: MemStUI1
  loc_6A052E: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '602F80
  'Data Table: 424CF8
  loc_602EB4: FLdPrThis
  loc_602EB5: VCallAd Control_ID_SSCommand2
  loc_602EB8: FStAdFunc var_8C
  loc_602EBB: FLdPr var_8C
  loc_602EBE: LateIdCall
  loc_602EC6: FFree1Ad var_8C
  loc_602EC9: ImpAdLdRf MemVar_74C900
  loc_602ECC: NewIfNullPr fCapacidadTanque
  loc_602ECF: fCapacidadTanque.Hide
  loc_602ED4: LitI2_Byte 1
  loc_602ED6: FLdRfVar var_86
  loc_602ED9: LitI2_Byte &HA
  loc_602EDB: ForI2 var_90
  loc_602EE1: FLdRfVar var_98
  loc_602EE4: FLdRfVar var_94
  loc_602EE7: FLdI2 var_86
  loc_602EEA: ImpAdLdRf MemVar_74E150
  loc_602EED: NewIfNullPr fTipoProducto
  loc_602EF0: VCallAd Control_ID_Combo1
  loc_602EF3: FStAdFunc var_8C
  loc_602EF6: FLdPr var_8C
  loc_602EF9: Set from_stack_2 = fTipoProducto(from_stack_1)
  loc_602EFE: FLdPr var_94
  loc_602F01:  = Me.Text
  loc_602F06: LitVarI2 var_C8, 6
  loc_602F0B: LitI4 1
  loc_602F10: FLdZeroAd var_98
  loc_602F13: CVarStr var_A8
  loc_602F16: FLdRfVar var_D8
  loc_602F19: ImpAdCallFPR4  = Mid(, , )
  loc_602F1E: FLdRfVar var_D8
  loc_602F21: LitVarStr var_E8, "Mezcla"
  loc_602F26: HardType
  loc_602F27: EqVarBool
  loc_602F29: FFreeAd var_8C = ""
  loc_602F30: FFreeVar var_A8 = "": var_C8 = ""
  loc_602F39: BranchF loc_602F41
  loc_602F3C: LitI2_Byte &HFF
  loc_602F3E: FStI2 var_88
  loc_602F41: FLdRfVar var_86
  loc_602F44: NextI2 var_90, loc_602EE1
  loc_602F49: FLdI2 var_88
  loc_602F4C: BranchF loc_602F67
  loc_602F4F: LitVar_Missing var_E8
  loc_602F52: PopAdLdVar
  loc_602F53: LitVarI2 var_B8, 1
  loc_602F58: PopAdLdVar
  loc_602F59: ImpAdLdRf MemVar_74E13C
  loc_602F5C: NewIfNullPr frmMezclas
  loc_602F5F: frmMezclas.Show from_stack_1, from_stack_2
  loc_602F64: Branch loc_602F7C
  loc_602F67: LitVar_Missing var_E8
  loc_602F6A: PopAdLdVar
  loc_602F6B: LitVarI2 var_B8, 1
  loc_602F70: PopAdLdVar
  loc_602F71: ImpAdLdRf MemVar_74E150
  loc_602F74: NewIfNullPr fTipoProducto
  loc_602F77: fTipoProducto.Show from_stack_1, from_stack_2
  loc_602F7C: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '6DC080
  'Data Table: 424CF8
  loc_6DB574: OnErrorGoto loc_6DC030
  loc_6DB579: ImpAdLdUI1
  loc_6DB57D: CBoolUI1
  loc_6DB57F: BranchF loc_6DBF4B
  loc_6DB584: LitVarI2 var_12C, 1
  loc_6DB589: FLdRfVar var_94
  loc_6DB58C: ImpAdLdUI1
  loc_6DB590: CVarUI1
  loc_6DB594: ForVar var_14C
  loc_6DB59C: FLdRfVar var_14E
  loc_6DB59F: FLdRfVar var_94
  loc_6DB5A2: CI4Var
  loc_6DB5A4: ImpAdLdRf MemVar_74C1D8
  loc_6DB5A7: Ary1LdUI1
  loc_6DB5A9: CI2UI1
  loc_6DB5AB: ImpAdLdRf MemVar_74A220
  loc_6DB5AE: NewIfNullPr clsProducts
  loc_6DB5B1:  = clsProducts.hWnd
  loc_6DB5B6: FLdI2 var_14E
  loc_6DB5B9: CVarBoolI2 var_11C
  loc_6DB5BD: FLdRfVar var_94
  loc_6DB5C0: ImpAdLdUI1
  loc_6DB5C4: CVarUI1
  loc_6DB5C8: HardType
  loc_6DB5C9: NeVar var_160
  loc_6DB5CD: AndVar var_170
  loc_6DB5D1: CBoolVarNull
  loc_6DB5D3: FFree1Var var_11C = ""
  loc_6DB5D6: BranchF loc_6DB607
  loc_6DB5DB: LitVar_Missing var_1A0
  loc_6DB5DE: LitVar_Missing var_180
  loc_6DB5E1: LitVar_Missing var_170
  loc_6DB5E4: LitI4 &H40
  loc_6DB5E9: LitVarStr var_10C, "El tanque de GNC deberia ser el último de la lista"
  loc_6DB5EE: FStVarCopyObj var_160
  loc_6DB5F1: FLdRfVar var_160
  loc_6DB5F4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DB5F9: FFreeVar var_160 = "": var_170 = "": var_180 = ""
  loc_6DB606: ExitProcHresult
  loc_6DB60B: FLdRfVar var_94
  loc_6DB60E: CI4Var
  loc_6DB610: ImpAdLdRf MemVar_74C2EC
  loc_6DB613: Ary1LdCy
  loc_6DB614: LitCy 0
  loc_6DB61D: NeCy
  loc_6DB61E: FLdRfVar var_94
  loc_6DB621: CI4Var
  loc_6DB623: ImpAdLdRf MemVar_74C1D8
  loc_6DB626: Ary1LdUI1
  loc_6DB628: CI2UI1
  loc_6DB62A: LitI2_Byte 0
  loc_6DB62C: EqI2
  loc_6DB62D: AndI4
  loc_6DB62E: BranchF loc_6DB717
  loc_6DB633: ImpAdCallFPR4 Beep()
  loc_6DB63A: FLdRfVar var_26C
  loc_6DB63D: LitVar_Missing var_268
  loc_6DB640: LitVar_Missing var_248
  loc_6DB643: LitVar_Missing var_228
  loc_6DB646: LitVar_Missing var_208
  loc_6DB649: LitVar_Missing var_1E8
  loc_6DB64C: LitVar_Missing var_1C8
  loc_6DB64F: LitVar_Missing var_1A0
  loc_6DB652: LitVar_Missing var_180
  loc_6DB655: LitVar_Missing var_170
  loc_6DB658: LitVar_Missing var_160
  loc_6DB65B: LitStr "Debe configurarse el Tipo de Producto."
  loc_6DB65E: FStStrCopy var_1A8
  loc_6DB661: FLdRfVar var_1A8
  loc_6DB664: LitI4 &HA
  loc_6DB669: PopTmpLdAdStr var_1A4
  loc_6DB66C: LitI2_Byte &H13
  loc_6DB66E: PopTmpLdAd2 var_14E
  loc_6DB671: ImpAdLdRf MemVar_74C7D0
  loc_6DB674: NewIfNullPr clsMsg
  loc_6DB677: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DB67C: LitI4 &HD
  loc_6DB681: FLdRfVar var_27C
  loc_6DB684: ImpAdCallFPR4  = Chr()
  loc_6DB689: LitI4 &HA
  loc_6DB68E: FLdRfVar var_2AC
  loc_6DB691: ImpAdCallFPR4  = Chr()
  loc_6DB696: LitVar_Missing var_30C
  loc_6DB699: LitVar_Missing var_2EC
  loc_6DB69C: FLdPr Me
  loc_6DB69F: MemLdRfVar from_stack_1.strConfigError
  loc_6DB6A2: CVarRef
  loc_6DB6A7: LitI4 &H10
  loc_6DB6AC: FLdZeroAd var_26C
  loc_6DB6AF: CVarStr var_28C
  loc_6DB6B2: FLdRfVar var_27C
  loc_6DB6B5: ConcatVar var_29C
  loc_6DB6B9: FLdRfVar var_2AC
  loc_6DB6BC: ConcatVar var_2BC
  loc_6DB6C0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DB6C5: FFree1Str var_1A8
  loc_6DB6C8: FFreeVar var_160 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_28C = "": var_27C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2EC = ""
  loc_6DB6EF: FLdRfVar var_314
  loc_6DB6F2: FLdRfVar var_94
  loc_6DB6F5: CI2Var
  loc_6DB6F6: FLdPrThis
  loc_6DB6F7: VCallAd Control_ID_Combo1
  loc_6DB6FA: FStAdFunc var_310
  loc_6DB6FD: FLdPr var_310
  loc_6DB700: Set from_stack_2 = Me(from_stack_1)
  loc_6DB705: FLdPr var_314
  loc_6DB708: Me.SetFocus
  loc_6DB70D: FFreeAd var_310 = ""
  loc_6DB716: ExitProcHresult
  loc_6DB71B: FLdRfVar var_94
  loc_6DB71E: NextStepVar var_14C
  loc_6DB726: FLdRfVar var_14E
  loc_6DB729: from_stack_1v = Proc_150_17_5DAC74()
  loc_6DB72E: FLdI2 var_14E
  loc_6DB731: NotI4
  loc_6DB732: BranchF loc_6DB763
  loc_6DB737: LitVar_Missing var_1A0
  loc_6DB73A: LitVar_Missing var_180
  loc_6DB73D: LitVar_Missing var_170
  loc_6DB740: LitI4 &H40
  loc_6DB745: LitVarStr var_10C, "Existen surtidores GNC, debe configurarse un tanque con este producto"
  loc_6DB74A: FStVarCopyObj var_160
  loc_6DB74D: FLdRfVar var_160
  loc_6DB750: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DB755: FFreeVar var_160 = "": var_170 = "": var_180 = ""
  loc_6DB762: ExitProcHresult
  loc_6DB767: FLdPrThis
  loc_6DB768: VCallAd Control_ID_SSCommand2
  loc_6DB76B: FStAdFunc var_310
  loc_6DB76E: FLdPr var_310
  loc_6DB771: LateIdCall
  loc_6DB779: FFree1Ad var_310
  loc_6DB77E: ImpAdLdRf MemVar_74C900
  loc_6DB781: NewIfNullPr fCapacidadTanque
  loc_6DB784: fCapacidadTanque.Hide
  loc_6DB78B: LitI2_Byte 5
  loc_6DB78D: CUI1I2
  loc_6DB78F: ImpAdStUI1 MemVar_74C0DD
  loc_6DB795: ImpAdLdUI1
  loc_6DB799: CI2UI1
  loc_6DB79B: LitI2_Byte 1
  loc_6DB79D: GtI2
  loc_6DB79E: BranchF loc_6DB82F
  loc_6DB7A3: LitVarI2 var_12C, 1
  loc_6DB7A8: FLdRfVar var_94
  loc_6DB7AB: ImpAdLdUI1
  loc_6DB7AF: CVarUI1
  loc_6DB7B3: ForVar var_334
  loc_6DB7BB: LitVarI2 var_12C, 1
  loc_6DB7C0: FLdRfVar var_A4
  loc_6DB7C3: ImpAdLdUI1
  loc_6DB7C7: CVarUI1
  loc_6DB7CB: ForVar var_354
  loc_6DB7D3: FLdRfVar var_A4
  loc_6DB7D6: FLdRfVar var_94
  loc_6DB7D9: NeVarBool
  loc_6DB7DB: BranchF loc_6DB817
  loc_6DB7E0: FLdRfVar var_94
  loc_6DB7E3: CI4Var
  loc_6DB7E5: ImpAdLdRf MemVar_74C1D8
  loc_6DB7E8: Ary1LdUI1
  loc_6DB7EA: FLdRfVar var_A4
  loc_6DB7ED: CI4Var
  loc_6DB7EF: ImpAdLdRf MemVar_74C1D8
  loc_6DB7F2: Ary1LdUI1
  loc_6DB7F4: EqI2
  loc_6DB7F5: BranchF loc_6DB815
  loc_6DB7FA: LitI2_Byte 4
  loc_6DB7FC: CUI1I2
  loc_6DB7FE: ImpAdStUI1 MemVar_74C0DD
  loc_6DB804: ImpAdLdUI1
  loc_6DB808: CVarUI1
  loc_6DB80C: FStVar var_94
  loc_6DB812: Branch loc_6DB824
  loc_6DB81B: FLdRfVar var_A4
  loc_6DB81E: NextStepVar var_354
  loc_6DB826: FLdRfVar var_94
  loc_6DB829: NextStepVar var_334
  loc_6DB833: ImpAdLdUI1
  loc_6DB837: CI2UI1
  loc_6DB839: LitI2_Byte 1
  loc_6DB83B: AddI2
  loc_6DB83C: CVarI2 var_12C
  loc_6DB83F: FLdRfVar var_94
  loc_6DB842: LitVarI2 var_11C, 16
  loc_6DB847: ForVar var_374
  loc_6DB84F: LitCy 0
  loc_6DB858: FLdRfVar var_94
  loc_6DB85B: CI4Var
  loc_6DB85D: ImpAdLdRf MemVar_74C2EC
  loc_6DB860: Ary1StCy
  loc_6DB863: LitI2_Byte 0
  loc_6DB865: CUI1I2
  loc_6DB867: FLdRfVar var_94
  loc_6DB86A: CI4Var
  loc_6DB86C: ImpAdLdRf MemVar_74C1D8
  loc_6DB86F: Ary1StUI1
  loc_6DB873: LitI2_Byte 0
  loc_6DB875: CUI1I2
  loc_6DB877: FLdRfVar var_94
  loc_6DB87A: CI4Var
  loc_6DB87C: ImpAdLdRf MemVar_74C114
  loc_6DB87F: Ary1StUI1
  loc_6DB883: LitI2_Byte 0
  loc_6DB885: CUI1I2
  loc_6DB887: FLdRfVar var_94
  loc_6DB88A: CI4Var
  loc_6DB88C: ImpAdLdRf MemVar_74C0C4
  loc_6DB88F: Ary1StUI1
  loc_6DB893: LitI2_Byte 0
  loc_6DB895: FLdRfVar var_94
  loc_6DB898: CI4Var
  loc_6DB89A: ImpAdLdRf MemVar_74C260
  loc_6DB89D: Ary1StI2
  loc_6DB8A0: LitI2_Byte 0
  loc_6DB8A2: FLdRfVar var_94
  loc_6DB8A5: CI4Var
  loc_6DB8A7: ImpAdLdRf MemVar_74C278
  loc_6DB8AA: Ary1StI2
  loc_6DB8AD: LitI2_Byte 0
  loc_6DB8AF: FLdRfVar var_94
  loc_6DB8B2: CI4Var
  loc_6DB8B4: ImpAdLdRf MemVar_74C294
  loc_6DB8B7: Ary1StI2
  loc_6DB8BA: LitI2_Byte 0
  loc_6DB8BC: FLdRfVar var_94
  loc_6DB8BF: CI4Var
  loc_6DB8C1: ImpAdLdRf MemVar_74C2AC
  loc_6DB8C4: Ary1StI2
  loc_6DB8C7: FLdRfVar var_94
  loc_6DB8CA: NextStepVar var_374
  loc_6DB8D2: LitVarI2 var_12C, 1
  loc_6DB8D7: FLdRfVar var_94
  loc_6DB8DA: ImpAdLdUI1
  loc_6DB8DE: CVarUI1
  loc_6DB8E2: ForVar var_394
  loc_6DB8EA: LitVarI2 var_12C, 0
  loc_6DB8EF: FLdRfVar var_A4
  loc_6DB8F2: FLdRfVar var_94
  loc_6DB8F5: CI4Var
  loc_6DB8F7: ImpAdLdRf MemVar_74C0FC
  loc_6DB8FA: Ary1LdUI1
  loc_6DB8FC: CVarUI1
  loc_6DB900: ForVar var_3B4
  loc_6DB908: LitVarI2 var_12C, 0
  loc_6DB90D: FLdRfVar var_B4
  loc_6DB910: LitVarI2 var_11C, 2
  loc_6DB915: ForVar var_3D4
  loc_6DB91D: FLdRfVar var_94
  loc_6DB920: CI4Var
  loc_6DB922: FLdRfVar var_A4
  loc_6DB925: CI4Var
  loc_6DB927: FLdRfVar var_B4
  loc_6DB92A: CI4Var
  loc_6DB92C: ImpAdLdRf MemVar_74C14C
  loc_6DB92F: AryLdPr
  loc_6DB932: MemLdUI1 global_0
  loc_6DB936: ImpAdLdUI1
  loc_6DB93A: GtUI1
  loc_6DB93C: BranchF loc_6DB965
  loc_6DB941: LitVarI2 var_10C, 1
  loc_6DB946: FStVar var_C4
  loc_6DB94C: LitVarI2 var_10C, 3
  loc_6DB951: FStVar var_A4
  loc_6DB957: LitVarI2 var_10C, 32
  loc_6DB95C: FStVar var_94
  loc_6DB962: Branch loc_6DB972
  loc_6DB969: FLdRfVar var_B4
  loc_6DB96C: NextStepVar var_3D4
  loc_6DB974: FLdRfVar var_A4
  loc_6DB977: NextStepVar var_3B4
  loc_6DB97F: FLdRfVar var_94
  loc_6DB982: NextStepVar var_394
  loc_6DB98A: FLdRfVar var_C4
  loc_6DB98D: CBoolVarNull
  loc_6DB98F: BranchF loc_6DB99C
  loc_6DB994: from_stack_1v = Proc_150_19_5E62A0()
  loc_6DB999: Branch loc_6DBB1D
  loc_6DB9A0: LitVarI2 var_12C, 1
  loc_6DB9A5: FLdRfVar var_94
  loc_6DB9A8: LitVarI2 var_11C, 16
  loc_6DB9AD: ForVar var_3F4
  loc_6DB9B5: FLdRfVar var_94
  loc_6DB9B8: CI4Var
  loc_6DB9BA: LitI4 0
  loc_6DB9BF: ImpAdLdRf MemVar_74C1B8
  loc_6DB9C2: AryLdPr
  loc_6DB9C5: MemLdUI1 global_0
  loc_6DB9C9: CVarUI1
  loc_6DB9CD: FStVar var_C4
  loc_6DB9D3: FLdRfVar var_C4
  loc_6DB9D6: CBoolVarNull
  loc_6DB9D8: BranchF loc_6DBB10
  loc_6DB9DD: FLdRfVar var_94
  loc_6DB9E0: CI4Var
  loc_6DB9E2: LitI4 1
  loc_6DB9E7: ImpAdLdRf MemVar_74C1B8
  loc_6DB9EA: AryLdPr
  loc_6DB9ED: MemLdUI1 global_0
  loc_6DB9F1: CVarUI1
  loc_6DB9F5: FStVar var_D4
  loc_6DB9FB: FLdRfVar var_94
  loc_6DB9FE: CI4Var
  loc_6DBA00: LitI4 2
  loc_6DBA05: ImpAdLdRf MemVar_74C1B8
  loc_6DBA08: AryLdPr
  loc_6DBA0B: MemLdUI1 global_0
  loc_6DBA0F: CVarUI1
  loc_6DBA13: FStVar var_E4
  loc_6DBA19: FLdRfVar var_E4
  loc_6DBA1C: CBoolVarNull
  loc_6DBA1E: BranchF loc_6DBA56
  loc_6DBA23: FLdRfVar var_C4
  loc_6DBA26: CI4Var
  loc_6DBA28: ImpAdLdRf MemVar_74C1D8
  loc_6DBA2B: Ary1LdUI1
  loc_6DBA2D: FLdRfVar var_E4
  loc_6DBA30: CI4Var
  loc_6DBA32: ImpAdLdRf MemVar_74C1D8
  loc_6DBA35: Ary1LdUI1
  loc_6DBA37: NeI2
  loc_6DBA38: FLdRfVar var_D4
  loc_6DBA3B: CI4Var
  loc_6DBA3D: ImpAdLdRf MemVar_74C1D8
  loc_6DBA40: Ary1LdUI1
  loc_6DBA42: FLdRfVar var_E4
  loc_6DBA45: CI4Var
  loc_6DBA47: ImpAdLdRf MemVar_74C1D8
  loc_6DBA4A: Ary1LdUI1
  loc_6DBA4C: NeI2
  loc_6DBA4D: OrI4
  loc_6DBA4E: CVarBoolI2 var_10C
  loc_6DBA52: FStVar var_E4
  loc_6DBA58: FLdRfVar var_E4
  loc_6DBA5B: LitVarI2 var_10C, 0
  loc_6DBA60: HardType
  loc_6DBA61: NeVar var_160
  loc_6DBA65: FLdRfVar var_C4
  loc_6DBA68: ImpAdLdUI1
  loc_6DBA6C: CVarUI1
  loc_6DBA70: HardType
  loc_6DBA71: GtVar var_170
  loc_6DBA75: OrVar var_180
  loc_6DBA79: FLdRfVar var_D4
  loc_6DBA7C: ImpAdLdUI1
  loc_6DBA80: CVarUI1
  loc_6DBA84: HardType
  loc_6DBA85: GtVar var_1A0
  loc_6DBA89: OrVar var_1C8
  loc_6DBA8D: FLdRfVar var_94
  loc_6DBA90: CI4Var
  loc_6DBA92: LitI4 2
  loc_6DBA97: ImpAdLdRf MemVar_74C1B8
  loc_6DBA9A: AryLdPr
  loc_6DBA9D: MemLdUI1 global_0
  loc_6DBAA1: ImpAdLdUI1
  loc_6DBAA5: GtUI1
  loc_6DBAA7: CVarBoolI2 var_190
  loc_6DBAAB: OrVar var_1E8
  loc_6DBAAF: FStVar var_E4
  loc_6DBAB3: FFree1Var var_190 = ""
  loc_6DBAB8: FLdRfVar var_C4
  loc_6DBABB: CI4Var
  loc_6DBABD: ImpAdLdRf MemVar_74C1D8
  loc_6DBAC0: Ary1LdUI1
  loc_6DBAC2: FLdRfVar var_D4
  loc_6DBAC5: CI4Var
  loc_6DBAC7: ImpAdLdRf MemVar_74C1D8
  loc_6DBACA: Ary1LdUI1
  loc_6DBACC: NeI2
  loc_6DBACD: CVarBoolI2 var_11C
  loc_6DBAD1: FLdRfVar var_E4
  loc_6DBAD4: LitVarI2 var_10C, 0
  loc_6DBAD9: HardType
  loc_6DBADA: NeVar var_160
  loc_6DBADE: OrVar var_170
  loc_6DBAE2: CBoolVarNull
  loc_6DBAE4: FFree1Var var_11C = ""
  loc_6DBAE7: BranchF loc_6DBB0E
  loc_6DBAEC: ImpAdLdRf MemVar_74C1D8
  loc_6DBAEF: LitI2_Byte 1
  loc_6DBAF1: FnUBound
  loc_6DBAF3: CVarI4
  loc_6DBAF7: HardType
  loc_6DBAF8: FLdRfVar var_C4
  loc_6DBAFB: GeVarBool
  loc_6DBAFD: BranchF loc_6DBB0C
  loc_6DBB02: from_stack_1v = Proc_150_19_5E62A0()
  loc_6DBB09: Branch loc_6DBB1D
  loc_6DBB14: FLdRfVar var_94
  loc_6DBB17: NextStepVar var_3F4
  loc_6DBB21: LitVarI2 var_12C, 1
  loc_6DBB26: FLdRfVar var_94
  loc_6DBB29: ImpAdLdUI1
  loc_6DBB2D: CVarUI1
  loc_6DBB31: ForVar var_414
  loc_6DBB39: FLdRfVar var_14E
  loc_6DBB3C: FLdRfVar var_1A8
  loc_6DBB3F: FLdRfVar var_314
  loc_6DBB42: FLdRfVar var_94
  loc_6DBB45: CI2Var
  loc_6DBB46: FLdPrThis
  loc_6DBB47: VCallAd Control_ID_Combo1
  loc_6DBB4A: FStAdFunc var_310
  loc_6DBB4D: FLdPr var_310
  loc_6DBB50: Set from_stack_2 = Me(from_stack_1)
  loc_6DBB55: FLdPr var_314
  loc_6DBB58:  = Me.Text
  loc_6DBB5D: ILdRf var_1A8
  loc_6DBB60: ImpAdLdRf MemVar_74A220
  loc_6DBB63: NewIfNullPr clsProducts
  loc_6DBB6B: FLdI2 var_14E
  loc_6DBB6E: CUI1I2
  loc_6DBB70: FLdRfVar var_94
  loc_6DBB73: CI4Var
  loc_6DBB75: ImpAdLdRf MemVar_74C1D8
  loc_6DBB78: Ary1StUI1
  loc_6DBB7A: FFree1Str var_1A8
  loc_6DBB7D: FFreeAd var_310 = ""
  loc_6DBB86: FLdRfVar var_94
  loc_6DBB89: NextStepVar var_414
  loc_6DBB91: ImpAdLdUI1
  loc_6DBB95: CI2UI1
  loc_6DBB97: LitI2_Byte 4
  loc_6DBB99: EqI2
  loc_6DBB9A: BranchF loc_6DBC23
  loc_6DBB9F: FLdRfVar var_14E
  loc_6DBBA2: from_stack_1v = Proc_150_18_60CF50()
  loc_6DBBA7: FLdI2 var_14E
  loc_6DBBAA: NotI4
  loc_6DBBAB: BranchF loc_6DBBC8
  loc_6DBBB0: LitVar_Missing var_11C
  loc_6DBBB3: PopAdLdVar
  loc_6DBBB4: LitVarI2 var_10C, 1
  loc_6DBBB9: PopAdLdVar
  loc_6DBBBA: ImpAdLdRf MemVar_74C900
  loc_6DBBBD: NewIfNullPr fCapacidadTanque
  loc_6DBBC0: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_6DBBC5: Branch loc_6DBC1E
  loc_6DBBCC: ImpAdLdUI1
  loc_6DBBD0: CI2UI1
  loc_6DBBD2: LitI2_Byte 1
  loc_6DBBD4: EqI2
  loc_6DBBD5: BranchF loc_6DBC03
  loc_6DBBDA: LitVar_Missing var_11C
  loc_6DBBDD: PopAdLdVar
  loc_6DBBDE: LitVar_Missing var_10C
  loc_6DBBE1: PopAdLdVar
  loc_6DBBE2: ImpAdLdRf MemVar_74C8EC
  loc_6DBBE5: NewIfNullPr fTanquesDisponibles
  loc_6DBBE8: fTanquesDisponibles.Show from_stack_1, from_stack_2
  loc_6DBBEF: LitVarI2 var_10C, 1
  loc_6DBBF4: PopAdLdVar
  loc_6DBBF5: ImpAdLdRf MemVar_74C8EC
  loc_6DBBF8: NewIfNullPr fTanquesDisponibles
  loc_6DBBFB: fTanquesDisponibles.ZOrder from_stack_1
  loc_6DBC00: Branch loc_6DBC1C
  loc_6DBC07: LitVar_Missing var_11C
  loc_6DBC0A: PopAdLdVar
  loc_6DBC0B: LitVarI2 var_10C, 1
  loc_6DBC10: PopAdLdVar
  loc_6DBC11: ImpAdLdRf MemVar_74C8EC
  loc_6DBC14: NewIfNullPr fTanquesDisponibles
  loc_6DBC17: fTanquesDisponibles.Show from_stack_1, from_stack_2
  loc_6DBC20: Branch loc_6DBF46
  loc_6DBC27: ImpAdLdRf MemVar_74C114
  loc_6DBC2A: PopTmpLdAdStr var_1A4
  loc_6DBC2D: Erase
  loc_6DBC2E: ImpAdLdRf MemVar_74C1B8
  loc_6DBC31: PopTmpLdAdStr var_418
  loc_6DBC34: Erase
  loc_6DBC37: LitVarI2 var_12C, 1
  loc_6DBC3C: FLdRfVar var_94
  loc_6DBC3F: LitVarI2 var_11C, 16
  loc_6DBC44: ForVar var_438
  loc_6DBC4C: FLdRfVar var_314
  loc_6DBC4F: FLdRfVar var_94
  loc_6DBC52: CI2Var
  loc_6DBC53: ImpAdLdRf MemVar_74C914
  loc_6DBC56: NewIfNullPr fConexion1
  loc_6DBC59: VCallAd Control_ID_Combo1
  loc_6DBC5C: FStAdFunc var_310
  loc_6DBC5F: FLdPr var_310
  loc_6DBC62: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6DBC67: FLdPr var_314
  loc_6DBC6A: Me.Clear
  loc_6DBC6F: FFreeAd var_310 = ""
  loc_6DBC78: FLdRfVar var_314
  loc_6DBC7B: FLdRfVar var_94
  loc_6DBC7E: CI2Var
  loc_6DBC7F: ImpAdLdRf MemVar_74C928
  loc_6DBC82: NewIfNullPr fConexion2
  loc_6DBC85: VCallAd Control_ID_Combo1
  loc_6DBC88: FStAdFunc var_310
  loc_6DBC8B: FLdPr var_310
  loc_6DBC8E: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6DBC93: FLdPr var_314
  loc_6DBC96: Me.Clear
  loc_6DBC9B: FFreeAd var_310 = ""
  loc_6DBCA4: FLdRfVar var_314
  loc_6DBCA7: FLdRfVar var_94
  loc_6DBCAA: CI2Var
  loc_6DBCAB: ImpAdLdRf MemVar_74C93C
  loc_6DBCAE: NewIfNullPr fConexion3
  loc_6DBCB1: VCallAd Control_ID_Combo1
  loc_6DBCB4: FStAdFunc var_310
  loc_6DBCB7: FLdPr var_310
  loc_6DBCBA: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6DBCBF: FLdPr var_314
  loc_6DBCC2: Me.Clear
  loc_6DBCC7: FFreeAd var_310 = ""
  loc_6DBCD0: FLdRfVar var_314
  loc_6DBCD3: FLdRfVar var_94
  loc_6DBCD6: CI2Var
  loc_6DBCD7: ImpAdLdRf MemVar_74C950
  loc_6DBCDA: NewIfNullPr fConexion4
  loc_6DBCDD: VCallAd Control_ID_Combo1
  loc_6DBCE0: FStAdFunc var_310
  loc_6DBCE3: FLdPr var_310
  loc_6DBCE6: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6DBCEB: FLdPr var_314
  loc_6DBCEE: Me.Clear
  loc_6DBCF3: FFreeAd var_310 = ""
  loc_6DBCFC: FLdRfVar var_94
  loc_6DBCFF: NextStepVar var_438
  loc_6DBD07: ImpAdLdRf MemVar_74C23C
  loc_6DBD0A: PopTmpLdAdStr var_1A4
  loc_6DBD0D: Erase
  loc_6DBD10: LitVarI2 var_12C, 1
  loc_6DBD15: FLdRfVar var_94
  loc_6DBD18: LitVarI2 var_11C, 16
  loc_6DBD1D: ForVar var_458
  loc_6DBD25: LitVarI2 var_12C, 1
  loc_6DBD2A: FLdRfVar var_A4
  loc_6DBD2D: ImpAdLdUI1
  loc_6DBD31: CVarUI1
  loc_6DBD35: ForVar var_478
  loc_6DBD3D: LitVar_Missing var_10C
  loc_6DBD40: PopAdLdVar
  loc_6DBD41: LitStr "    "
  loc_6DBD44: FLdRfVar var_A4
  loc_6DBD47: ImpAdCallI2 Str$()
  loc_6DBD4C: FStStrNoPop var_1A8
  loc_6DBD4F: ImpAdCallI2 Trim$()
  loc_6DBD54: FStStrNoPop var_26C
  loc_6DBD57: ConcatStr
  loc_6DBD58: FStStrNoPop var_47C
  loc_6DBD5B: FLdRfVar var_314
  loc_6DBD5E: FLdRfVar var_94
  loc_6DBD61: CI2Var
  loc_6DBD62: ImpAdLdRf MemVar_74C914
  loc_6DBD65: NewIfNullPr fConexion1
  loc_6DBD68: VCallAd Control_ID_Combo1
  loc_6DBD6B: FStAdFunc var_310
  loc_6DBD6E: FLdPr var_310
  loc_6DBD71: Set from_stack_2 = fConexion1(from_stack_1)
  loc_6DBD76: FLdPr var_314
  loc_6DBD79: Me.AddItem from_stack_1, from_stack_2
  loc_6DBD7E: FFreeStr var_1A8 = "": var_26C = ""
  loc_6DBD87: FFreeAd var_310 = ""
  loc_6DBD90: LitVar_Missing var_10C
  loc_6DBD93: PopAdLdVar
  loc_6DBD94: LitStr "    "
  loc_6DBD97: FLdRfVar var_A4
  loc_6DBD9A: ImpAdCallI2 Str$()
  loc_6DBD9F: FStStrNoPop var_1A8
  loc_6DBDA2: ImpAdCallI2 Trim$()
  loc_6DBDA7: FStStrNoPop var_26C
  loc_6DBDAA: ConcatStr
  loc_6DBDAB: FStStrNoPop var_47C
  loc_6DBDAE: FLdRfVar var_314
  loc_6DBDB1: FLdRfVar var_94
  loc_6DBDB4: CI2Var
  loc_6DBDB5: ImpAdLdRf MemVar_74C928
  loc_6DBDB8: NewIfNullPr fConexion2
  loc_6DBDBB: VCallAd Control_ID_Combo1
  loc_6DBDBE: FStAdFunc var_310
  loc_6DBDC1: FLdPr var_310
  loc_6DBDC4: Set from_stack_2 = fConexion2(from_stack_1)
  loc_6DBDC9: FLdPr var_314
  loc_6DBDCC: Me.AddItem from_stack_1, from_stack_2
  loc_6DBDD1: FFreeStr var_1A8 = "": var_26C = ""
  loc_6DBDDA: FFreeAd var_310 = ""
  loc_6DBDE3: LitVar_Missing var_10C
  loc_6DBDE6: PopAdLdVar
  loc_6DBDE7: LitStr "    "
  loc_6DBDEA: FLdRfVar var_A4
  loc_6DBDED: ImpAdCallI2 Str$()
  loc_6DBDF2: FStStrNoPop var_1A8
  loc_6DBDF5: ImpAdCallI2 Trim$()
  loc_6DBDFA: FStStrNoPop var_26C
  loc_6DBDFD: ConcatStr
  loc_6DBDFE: FStStrNoPop var_47C
  loc_6DBE01: FLdRfVar var_314
  loc_6DBE04: FLdRfVar var_94
  loc_6DBE07: CI2Var
  loc_6DBE08: ImpAdLdRf MemVar_74C93C
  loc_6DBE0B: NewIfNullPr fConexion3
  loc_6DBE0E: VCallAd Control_ID_Combo1
  loc_6DBE11: FStAdFunc var_310
  loc_6DBE14: FLdPr var_310
  loc_6DBE17: Set from_stack_2 = fConexion3(from_stack_1)
  loc_6DBE1C: FLdPr var_314
  loc_6DBE1F: Me.AddItem from_stack_1, from_stack_2
  loc_6DBE24: FFreeStr var_1A8 = "": var_26C = ""
  loc_6DBE2D: FFreeAd var_310 = ""
  loc_6DBE36: LitVar_Missing var_10C
  loc_6DBE39: PopAdLdVar
  loc_6DBE3A: LitStr "    "
  loc_6DBE3D: FLdRfVar var_A4
  loc_6DBE40: ImpAdCallI2 Str$()
  loc_6DBE45: FStStrNoPop var_1A8
  loc_6DBE48: ImpAdCallI2 Trim$()
  loc_6DBE4D: FStStrNoPop var_26C
  loc_6DBE50: ConcatStr
  loc_6DBE51: FStStrNoPop var_47C
  loc_6DBE54: FLdRfVar var_314
  loc_6DBE57: FLdRfVar var_94
  loc_6DBE5A: CI2Var
  loc_6DBE5B: ImpAdLdRf MemVar_74C950
  loc_6DBE5E: NewIfNullPr fConexion4
  loc_6DBE61: VCallAd Control_ID_Combo1
  loc_6DBE64: FStAdFunc var_310
  loc_6DBE67: FLdPr var_310
  loc_6DBE6A: Set from_stack_2 = fConexion4(from_stack_1)
  loc_6DBE6F: FLdPr var_314
  loc_6DBE72: Me.AddItem from_stack_1, from_stack_2
  loc_6DBE77: FFreeStr var_1A8 = "": var_26C = ""
  loc_6DBE80: FFreeAd var_310 = ""
  loc_6DBE89: FLdRfVar var_94
  loc_6DBE8C: LitVarI2 var_10C, 1
  loc_6DBE91: HardType
  loc_6DBE92: EqVarBool
  loc_6DBE94: BranchF loc_6DBEC3
  loc_6DBE99: FLdRfVar var_A4
  loc_6DBE9C: CUI1Var
  loc_6DBE9E: FLdUI1
  loc_6DBEA2: CI4UI1
  loc_6DBEA3: LitI4 0
  loc_6DBEA8: ImpAdLdRf MemVar_74C23C
  loc_6DBEAB: AryLdPr
  loc_6DBEAE: MemStUI1
  loc_6DBEB4: FLdUI1
  loc_6DBEB8: CI2UI1
  loc_6DBEBA: LitI2_Byte 1
  loc_6DBEBC: AddI2
  loc_6DBEBD: CUI1I2
  loc_6DBEBF: FStUI1 var_E6
  loc_6DBEC7: FLdRfVar var_A4
  loc_6DBECA: NextStepVar var_478
  loc_6DBED2: FLdRfVar var_94
  loc_6DBED5: NextStepVar var_458
  loc_6DBEDD: FLdRfVar var_14E
  loc_6DBEE0: from_stack_1v = Proc_150_18_60CF50()
  loc_6DBEE5: FLdI2 var_14E
  loc_6DBEE8: NotI4
  loc_6DBEE9: BranchF loc_6DBF06
  loc_6DBEEE: LitVar_Missing var_11C
  loc_6DBEF1: PopAdLdVar
  loc_6DBEF2: LitVarI2 var_10C, 1
  loc_6DBEF7: PopAdLdVar
  loc_6DBEF8: ImpAdLdRf MemVar_74C900
  loc_6DBEFB: NewIfNullPr fCapacidadTanque
  loc_6DBEFE: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_6DBF03: Branch loc_6DBF44
  loc_6DBF0A: ImpAdCallI2 Proc_53_5_5DE184()
  loc_6DBF0F: NotI4
  loc_6DBF10: BranchF loc_6DBF2D
  loc_6DBF15: LitVar_Missing var_11C
  loc_6DBF18: PopAdLdVar
  loc_6DBF19: LitVarI2 var_10C, 1
  loc_6DBF1E: PopAdLdVar
  loc_6DBF1F: ImpAdLdRf MemVar_74C914
  loc_6DBF22: NewIfNullPr fConexion1
  loc_6DBF25: fConexion1.Show from_stack_1, from_stack_2
  loc_6DBF2A: Branch loc_6DBF44
  loc_6DBF2F: LitVar_Missing var_11C
  loc_6DBF32: PopAdLdVar
  loc_6DBF33: LitVarI2 var_10C, 1
  loc_6DBF38: PopAdLdVar
  loc_6DBF39: FLdRfVar var_EC
  loc_6DBF3C: NewIfNullPr frmConection
  loc_6DBF3F: frmConection.Show from_stack_1, from_stack_2
  loc_6DBF48: Branch loc_6DC02E
  loc_6DBF4F: ImpAdCallFPR4 Beep()
  loc_6DBF56: FLdRfVar var_26C
  loc_6DBF59: LitVar_Missing var_268
  loc_6DBF5C: LitVar_Missing var_248
  loc_6DBF5F: LitVar_Missing var_228
  loc_6DBF62: LitVar_Missing var_208
  loc_6DBF65: LitVar_Missing var_1E8
  loc_6DBF68: LitVar_Missing var_1C8
  loc_6DBF6B: LitVar_Missing var_1A0
  loc_6DBF6E: LitVar_Missing var_180
  loc_6DBF71: LitVar_Missing var_170
  loc_6DBF74: LitVar_Missing var_160
  loc_6DBF77: LitStr "Debe configurarse 1 Tanque como mínimo."
  loc_6DBF7A: FStStrCopy var_1A8
  loc_6DBF7D: FLdRfVar var_1A8
  loc_6DBF80: LitI4 &HB
  loc_6DBF85: PopTmpLdAdStr var_1A4
  loc_6DBF88: LitI2_Byte &H13
  loc_6DBF8A: PopTmpLdAd2 var_14E
  loc_6DBF8D: ImpAdLdRf MemVar_74C7D0
  loc_6DBF90: NewIfNullPr clsMsg
  loc_6DBF93: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DBF98: LitI4 &HD
  loc_6DBF9D: FLdRfVar var_27C
  loc_6DBFA0: ImpAdCallFPR4  = Chr()
  loc_6DBFA5: LitI4 &HA
  loc_6DBFAA: FLdRfVar var_2AC
  loc_6DBFAD: ImpAdCallFPR4  = Chr()
  loc_6DBFB2: LitVar_Missing var_30C
  loc_6DBFB5: LitVar_Missing var_2EC
  loc_6DBFB8: FLdPr Me
  loc_6DBFBB: MemLdRfVar from_stack_1.strConfigError
  loc_6DBFBE: CVarRef
  loc_6DBFC3: LitI4 &H10
  loc_6DBFC8: FLdZeroAd var_26C
  loc_6DBFCB: CVarStr var_28C
  loc_6DBFCE: FLdRfVar var_27C
  loc_6DBFD1: ConcatVar var_29C
  loc_6DBFD5: FLdRfVar var_2AC
  loc_6DBFD8: ConcatVar var_2BC
  loc_6DBFDC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DBFE1: FFree1Str var_1A8
  loc_6DBFE4: FFreeVar var_160 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_28C = "": var_27C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2EC = ""
  loc_6DC00B: FLdRfVar var_314
  loc_6DC00E: LitI2_Byte 1
  loc_6DC010: FLdPrThis
  loc_6DC011: VCallAd Control_ID_Text1
  loc_6DC014: FStAdFunc var_310
  loc_6DC017: FLdPr var_310
  loc_6DC01A: Set from_stack_2 = Me(from_stack_1)
  loc_6DC01F: FLdPr var_314
  loc_6DC022: Me.SetFocus
  loc_6DC027: FFreeAd var_310 = ""
  loc_6DC032: FLdRfVar var_1A4
  loc_6DC035: ImpAdCallI2 Err 'rtcErrObj
  loc_6DC03A: FStAdFunc var_310
  loc_6DC03D: FLdPr var_310
  loc_6DC040:  = Err.Number
  loc_6DC045: ILdRf var_1A4
  loc_6DC048: LitI4 5
  loc_6DC04D: EqI4
  loc_6DC04E: FLdRfVar var_418
  loc_6DC051: ImpAdCallI2 Err 'rtcErrObj
  loc_6DC056: FStAdFunc var_314
  loc_6DC059: FLdPr var_314
  loc_6DC05C:  = Err.Number
  loc_6DC061: ILdRf var_418
  loc_6DC064: LitI4 9
  loc_6DC069: EqI4
  loc_6DC06A: OrI4
  loc_6DC06B: FFreeAd var_310 = ""
  loc_6DC072: BranchF loc_6DC07B
  loc_6DC077: Resume
  loc_6DC07D: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5D9E60
  'Data Table: 424CF8
  loc_5D9E28: ImpAdLdRf MemVar_74A220
  loc_5D9E2B: NewIfNullPr clsProducts
  loc_5D9E2E: clsProducts.Height = from_stack_1s
  loc_5D9E33: LitI2_Byte &HFF
  loc_5D9E35: PopTmpLdAd2 var_86
  loc_5D9E38: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5D9E3D: LitI2_Byte &HFF
  loc_5D9E3F: ImpAdLdRf MemVar_74C760
  loc_5D9E42: NewIfNullPr Formx
  loc_5D9E45: Call Formx.CanceladoPut(from_stack_1v)
  loc_5D9E4A: ILdRf Me
  loc_5D9E4D: FStAdNoPop
  loc_5D9E51: ImpAdLdRf MemVar_7520D4
  loc_5D9E54: NewIfNullPr Global
  loc_5D9E57: Global.Unload from_stack_1
  loc_5D9E5C: FFree1Ad var_8C
  loc_5D9E5F: ExitProcHresult
End Sub

Private Sub SSCommand3_UnknownEvent_8 '63F4F8
  'Data Table: 424CF8
  loc_63F33C: ImpAdLdUI1
  loc_63F340: CBoolUI1
  loc_63F342: BranchF loc_63F4E2
  loc_63F345: ImpAdCallFPR4 Beep()
  loc_63F34A: FLdRfVar var_1D4
  loc_63F34D: LitVar_Missing var_1D0
  loc_63F350: LitVar_Missing var_1B0
  loc_63F353: LitVar_Missing var_190
  loc_63F356: LitVar_Missing var_170
  loc_63F359: LitVar_Missing var_150
  loc_63F35C: LitVar_Missing var_130
  loc_63F35F: LitVar_Missing var_110
  loc_63F362: LitVar_Missing var_F0
  loc_63F365: LitVar_Missing var_D0
  loc_63F368: LitVar_Missing var_B0
  loc_63F36B: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_63F36E: FStStrCopy var_90
  loc_63F371: FLdRfVar var_90
  loc_63F374: LitI4 &HC
  loc_63F379: PopTmpLdAdStr var_8C
  loc_63F37C: LitI2_Byte &H13
  loc_63F37E: PopTmpLdAd2 var_88
  loc_63F381: ImpAdLdRf MemVar_74C7D0
  loc_63F384: NewIfNullPr clsMsg
  loc_63F387: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_63F38C: LitI4 &HD
  loc_63F391: FLdRfVar var_1E4
  loc_63F394: ImpAdCallFPR4  = Chr()
  loc_63F399: LitI4 &HA
  loc_63F39E: FLdRfVar var_214
  loc_63F3A1: ImpAdCallFPR4  = Chr()
  loc_63F3A6: LitI4 &HD
  loc_63F3AB: FLdRfVar var_254
  loc_63F3AE: ImpAdCallFPR4  = Chr()
  loc_63F3B3: LitI4 &HA
  loc_63F3B8: FLdRfVar var_274
  loc_63F3BB: ImpAdCallFPR4  = Chr()
  loc_63F3C0: FLdRfVar var_3D4
  loc_63F3C3: LitVar_Missing var_3D0
  loc_63F3C6: LitVar_Missing var_3B0
  loc_63F3C9: LitVar_Missing var_390
  loc_63F3CC: LitVar_Missing var_370
  loc_63F3CF: LitVar_Missing var_350
  loc_63F3D2: LitVar_Missing var_330
  loc_63F3D5: LitVar_Missing var_310
  loc_63F3D8: LitVar_Missing var_2F0
  loc_63F3DB: LitVar_Missing var_2D0
  loc_63F3DE: LitVar_Missing var_2B0
  loc_63F3E1: LitStr "ADVERTENCIA"
  loc_63F3E4: FStStrCopy var_290
  loc_63F3E7: FLdRfVar var_290
  loc_63F3EA: LitI4 &HE
  loc_63F3EF: PopTmpLdAdStr var_28C
  loc_63F3F2: LitI2_Byte &H13
  loc_63F3F4: PopTmpLdAd2 var_286
  loc_63F3F7: ImpAdLdRf MemVar_74C7D0
  loc_63F3FA: NewIfNullPr clsMsg
  loc_63F3FD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_63F402: LitVar_Missing var_424
  loc_63F405: LitVar_Missing var_404
  loc_63F408: FLdZeroAd var_3D4
  loc_63F40B: CVarStr var_3E4
  loc_63F40E: LitI4 &H131
  loc_63F413: FLdZeroAd var_1D4
  loc_63F416: CVarStr var_1F4
  loc_63F419: FLdRfVar var_1E4
  loc_63F41C: ConcatVar var_204
  loc_63F420: FLdRfVar var_214
  loc_63F423: ConcatVar var_224
  loc_63F427: LitVarStr var_234, "Presionando ""CANCEL"" se aborta el proceso."
  loc_63F42C: ConcatVar var_244
  loc_63F430: FLdRfVar var_254
  loc_63F433: ConcatVar var_264
  loc_63F437: FLdRfVar var_274
  loc_63F43A: ConcatVar var_284
  loc_63F43E: ImpAdCallI2 MsgBox(, , , , )
  loc_63F443: CUI1I4
  loc_63F445: FStUI1 var_86
  loc_63F449: FFreeStr var_90 = ""
  loc_63F450: FFreeVar var_3E4 = "": var_404 = "": var_424 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = ""
  loc_63F495: FLdUI1
  loc_63F499: CI4UI1
  loc_63F49A: LitI4 1
  loc_63F49F: EqI4
  loc_63F4A0: BranchF loc_63F4E2
  loc_63F4A3: LitI2_Byte 0
  loc_63F4A5: CUI1I2
  loc_63F4A7: ImpAdStUI1 MemVar_74C0FB
  loc_63F4AB: ImpAdLdRf MemVar_74C1D8
  loc_63F4AE: PopTmpLdAdStr var_8C
  loc_63F4B1: Erase
  loc_63F4B2: ImpAdLdRf MemVar_74C2EC
  loc_63F4B5: PopTmpLdAdStr var_28C
  loc_63F4B8: Erase
  loc_63F4B9: Call Form_Activate()
  loc_63F4BE: FLdRfVar var_42C
  loc_63F4C1: LitI2_Byte 1
  loc_63F4C3: FLdPrThis
  loc_63F4C4: VCallAd Control_ID_Text1
  loc_63F4C7: FStAdFunc var_428
  loc_63F4CA: FLdPr var_428
  loc_63F4CD: Set from_stack_2 = Me(from_stack_1)
  loc_63F4D2: FLdPr var_42C
  loc_63F4D5: Me.SetFocus
  loc_63F4DA: FFreeAd var_428 = ""
  loc_63F4E1: ExitProcHresult
  loc_63F4E2: FLdPrThis
  loc_63F4E3: VCallAd Control_ID_SSCommand2
  loc_63F4E6: FStAdFunc var_428
  loc_63F4E9: FLdPr var_428
  loc_63F4EC: LateIdCall
  loc_63F4F4: FFree1Ad var_428
  loc_63F4F7: ExitProcHresult
End Sub

Private Sub Combo1_Click(arg_C) '61E08C
  'Data Table: 424CF8
  loc_61DF4C: ImpAdLdUI1
  loc_61DF50: CI2UI1
  loc_61DF52: LitI2_Byte 4
  loc_61DF54: EqI2
  loc_61DF55: ImpAdLdUI1
  loc_61DF59: CI2UI1
  loc_61DF5B: LitI2_Byte 5
  loc_61DF5D: EqI2
  loc_61DF5E: OrI4
  loc_61DF5F: BranchF loc_61E088
  loc_61DF62: FLdRfVar var_B8
  loc_61DF65: FLdRfVar var_B6
  loc_61DF68: FLdRfVar var_90
  loc_61DF6B: FLdRfVar var_8C
  loc_61DF6E: ILdI2 arg_C
  loc_61DF71: FLdPrThis
  loc_61DF72: VCallAd Control_ID_Combo1
  loc_61DF75: FStAdFunc var_88
  loc_61DF78: FLdPr var_88
  loc_61DF7B: Set from_stack_2 = Me(from_stack_1)
  loc_61DF80: FLdPr var_8C
  loc_61DF83:  = Me.Text
  loc_61DF88: FLdZeroAd var_90
  loc_61DF8B: CVarStr var_A0
  loc_61DF8E: FLdRfVar var_B0
  loc_61DF91: ImpAdCallFPR4  = Trim()
  loc_61DF96: FLdRfVar var_B0
  loc_61DF99: CStrVarVal var_B4
  loc_61DF9D: ImpAdLdRf MemVar_74A220
  loc_61DFA0: NewIfNullPr clsProducts
  loc_61DFA8: FLdI2 var_B6
  loc_61DFAB: ImpAdLdRf MemVar_74A220
  loc_61DFAE: NewIfNullPr clsProducts
  loc_61DFB1:  = clsProducts.hWnd
  loc_61DFB6: FLdI2 var_B8
  loc_61DFB9: FFree1Str var_B4
  loc_61DFBC: FFreeAd var_88 = ""
  loc_61DFC3: FFreeVar var_A0 = ""
  loc_61DFCA: BranchF loc_61DFF6
  loc_61DFCD: LitI2_Byte 0
  loc_61DFCF: FLdRfVar var_8C
  loc_61DFD2: ILdI2 arg_C
  loc_61DFD5: FLdPrThis
  loc_61DFD6: VCallAd Control_ID_Text1
  loc_61DFD9: FStAdFunc var_88
  loc_61DFDC: FLdPr var_88
  loc_61DFDF: Set from_stack_2 = Me(from_stack_1)
  loc_61DFE4: FLdPr var_8C
  loc_61DFE7: Me.Visible = from_stack_1b
  loc_61DFEC: FFreeAd var_88 = ""
  loc_61DFF3: Branch loc_61E088
  loc_61DFF6: FLdRfVar var_B8
  loc_61DFF9: FLdRfVar var_B6
  loc_61DFFC: FLdRfVar var_90
  loc_61DFFF: FLdRfVar var_8C
  loc_61E002: ILdI2 arg_C
  loc_61E005: FLdPrThis
  loc_61E006: VCallAd Control_ID_Combo1
  loc_61E009: FStAdFunc var_88
  loc_61E00C: FLdPr var_88
  loc_61E00F: Set from_stack_2 = Me(from_stack_1)
  loc_61E014: FLdPr var_8C
  loc_61E017:  = Me.Text
  loc_61E01C: FLdZeroAd var_90
  loc_61E01F: CVarStr var_A0
  loc_61E022: FLdRfVar var_B0
  loc_61E025: ImpAdCallFPR4  = Trim()
  loc_61E02A: FLdRfVar var_B0
  loc_61E02D: CStrVarVal var_B4
  loc_61E031: ImpAdLdRf MemVar_74A220
  loc_61E034: NewIfNullPr clsProducts
  loc_61E03C: FLdI2 var_B6
  loc_61E03F: ImpAdLdRf MemVar_74A220
  loc_61E042: NewIfNullPr clsProducts
  loc_61E045:  = clsProducts.hWnd
  loc_61E04A: FLdI2 var_B8
  loc_61E04D: NotI4
  loc_61E04E: FFree1Str var_B4
  loc_61E051: FFreeAd var_88 = ""
  loc_61E058: FFreeVar var_A0 = ""
  loc_61E05F: BranchF loc_61E088
  loc_61E062: LitI2_Byte &HFF
  loc_61E064: FLdRfVar var_8C
  loc_61E067: ILdI2 arg_C
  loc_61E06A: FLdPrThis
  loc_61E06B: VCallAd Control_ID_Text1
  loc_61E06E: FStAdFunc var_88
  loc_61E071: FLdPr var_88
  loc_61E074: Set from_stack_2 = Me(from_stack_1)
  loc_61E079: FLdPr var_8C
  loc_61E07C: Me.Visible = from_stack_1b
  loc_61E081: FFreeAd var_88 = ""
  loc_61E088: ExitProcHresult
  loc_61E089: ImpAdLdI2 MemVar_74C0FB
End Sub

Private Sub Combo1_DropDown(arg_C) '5D8964
  'Data Table: 424CF8
  loc_5D8938: LitI4 &HFFC0C0
  loc_5D893D: FLdRfVar var_8C
  loc_5D8940: ILdI2 arg_C
  loc_5D8943: FLdPrThis
  loc_5D8944: VCallAd Control_ID_Combo1
  loc_5D8947: FStAdFunc var_88
  loc_5D894A: FLdPr var_88
  loc_5D894D: Set from_stack_2 = Me(from_stack_1)
  loc_5D8952: FLdPr var_8C
  loc_5D8955: Me.BackColor = from_stack_1
  loc_5D895A: FFreeAd var_88 = ""
  loc_5D8961: ExitProcHresult
End Sub

Private Sub Combo1_GotFocus(arg_C) '5EE898
  'Data Table: 424CF8
  loc_5EE804: FLdRfVar var_88
  loc_5EE807: ILdI2 arg_C
  loc_5EE80A: CI4UI1
  loc_5EE80B: ImpAdLdRf MemVar_74C1D8
  loc_5EE80E: Ary1LdUI1
  loc_5EE810: CI2UI1
  loc_5EE812: PopTmpLdAd2 var_86
  loc_5EE815: from_stack_2v = Proc_150_15_5F1F38(from_stack_1v)
  loc_5EE81A: FLdI2 var_88
  loc_5EE81D: FLdRfVar var_90
  loc_5EE820: ILdI2 arg_C
  loc_5EE823: FLdPrThis
  loc_5EE824: VCallAd Control_ID_Combo1
  loc_5EE827: FStAdFunc var_8C
  loc_5EE82A: FLdPr var_8C
  loc_5EE82D: Set from_stack_2 = Me(from_stack_1)
  loc_5EE832: FLdPr var_90
  loc_5EE835: Me.ListIndex = from_stack_1
  loc_5EE83A: FFreeAd var_8C = ""
  loc_5EE841: FLdRfVar var_86
  loc_5EE844: FLdRfVar var_90
  loc_5EE847: ILdI2 arg_C
  loc_5EE84A: FLdPrThis
  loc_5EE84B: VCallAd Control_ID_Combo1
  loc_5EE84E: FStAdFunc var_8C
  loc_5EE851: FLdPr var_8C
  loc_5EE854: Set from_stack_2 = Me(from_stack_1)
  loc_5EE859: FLdPr var_90
  loc_5EE85C:  = Me.ListIndex
  loc_5EE861: FLdI2 var_86
  loc_5EE864: LitI2_Byte &HFF
  loc_5EE866: EqI2
  loc_5EE867: FFreeAd var_8C = ""
  loc_5EE86E: BranchF loc_5EE897
  loc_5EE871: LitI2_Byte 0
  loc_5EE873: FLdRfVar var_90
  loc_5EE876: ILdI2 arg_C
  loc_5EE879: FLdPrThis
  loc_5EE87A: VCallAd Control_ID_Combo1
  loc_5EE87D: FStAdFunc var_8C
  loc_5EE880: FLdPr var_8C
  loc_5EE883: Set from_stack_2 = Me(from_stack_1)
  loc_5EE888: FLdPr var_90
  loc_5EE88B: Me.ListIndex = from_stack_1
  loc_5EE890: FFreeAd var_8C = ""
  loc_5EE897: ExitProcHresult
End Sub

Private Sub Combo1_LostFocus(arg_C) '6076E8
  'Data Table: 424CF8
  loc_607610: FLdRfVar var_86
  loc_607613: from_stack_1v = Proc_150_16_5EF174()
  loc_607618: FLdI2 var_86
  loc_60761B: LitI2_Byte 1
  loc_60761D: GtI2
  loc_60761E: BranchF loc_607673
  loc_607621: LitVar_Missing var_108
  loc_607624: LitVar_Missing var_E8
  loc_607627: LitVar_Missing var_C8
  loc_60762A: LitI4 &H40
  loc_60762F: LitVarStr var_98, "No se permite dos tanques con GNC"
  loc_607634: FStVarCopyObj var_A8
  loc_607637: FLdRfVar var_A8
  loc_60763A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60763F: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_60764A: LitI2_Byte &HFF
  loc_60764C: FLdRfVar var_110
  loc_60764F: ILdI2 arg_C
  loc_607652: FLdPrThis
  loc_607653: VCallAd Control_ID_Combo1
  loc_607656: FStAdFunc var_10C
  loc_607659: FLdPr var_10C
  loc_60765C: Set from_stack_2 = Me(from_stack_1)
  loc_607661: FLdPr var_110
  loc_607664: Me.ListIndex = from_stack_1
  loc_607669: FFreeAd var_10C = ""
  loc_607670: Branch loc_6076E5
  loc_607673: FLdRfVar var_86
  loc_607676: FLdRfVar var_114
  loc_607679: FLdRfVar var_110
  loc_60767C: ILdI2 arg_C
  loc_60767F: FLdPrThis
  loc_607680: VCallAd Control_ID_Combo1
  loc_607683: FStAdFunc var_10C
  loc_607686: FLdPr var_10C
  loc_607689: Set from_stack_2 = Me(from_stack_1)
  loc_60768E: FLdPr var_110
  loc_607691:  = Me.Text
  loc_607696: ILdRf var_114
  loc_607699: ImpAdLdRf MemVar_74A220
  loc_60769C: NewIfNullPr clsProducts
  loc_6076A4: FLdI2 var_86
  loc_6076A7: CUI1I2
  loc_6076A9: ILdI2 arg_C
  loc_6076AC: CI4UI1
  loc_6076AD: ImpAdLdRf MemVar_74C1D8
  loc_6076B0: Ary1StUI1
  loc_6076B2: FFree1Str var_114
  loc_6076B5: FFreeAd var_10C = ""
  loc_6076BC: LitI4 &HFFFFFF
  loc_6076C1: FLdRfVar var_110
  loc_6076C4: ILdI2 arg_C
  loc_6076C7: FLdPrThis
  loc_6076C8: VCallAd Control_ID_Combo1
  loc_6076CB: FStAdFunc var_10C
  loc_6076CE: FLdPr var_10C
  loc_6076D1: Set from_stack_2 = Me(from_stack_1)
  loc_6076D6: FLdPr var_110
  loc_6076D9: Me.BackColor = from_stack_1
  loc_6076DE: FFreeAd var_10C = ""
  loc_6076E5: ExitProcHresult
End Sub

Private Sub Text1_Change(Index As Integer) '60B270
  'Data Table: 424CF8
  loc_60B180: FLdPr Me
  loc_60B183: MemLdUI1 global_56
  loc_60B187: CBoolUI1
  loc_60B189: BranchF loc_60B26D
  loc_60B18C: FLdRfVar var_90
  loc_60B18F: FLdRfVar var_8C
  loc_60B192: ILdI2 Index
  loc_60B195: FLdPrThis
  loc_60B196: VCallAd Control_ID_Text1
  loc_60B199: FStAdFunc var_88
  loc_60B19C: FLdPr var_88
  loc_60B19F: Set from_stack_2 = Me(from_stack_1)
  loc_60B1A4: FLdPr var_8C
  loc_60B1A7:  = Me.Text
  loc_60B1AC: FLdZeroAd var_90
  loc_60B1AF: PopTmpLdAdStr
  loc_60B1B3: ImpAdCallCy Proc_87_11_5EEA34()
  loc_60B1B8: CBoolCy
  loc_60B1B9: FFree1Str var_94
  loc_60B1BC: FFreeAd var_88 = ""
  loc_60B1C3: BranchF loc_60B221
  loc_60B1C6: ILdI2 Index
  loc_60B1C9: LitI2_Byte &HF
  loc_60B1CB: LeI2
  loc_60B1CC: BranchF loc_60B1F8
  loc_60B1CF: LitI2_Byte &HFF
  loc_60B1D1: FLdRfVar var_8C
  loc_60B1D4: ILdI2 Index
  loc_60B1D7: LitI2_Byte 1
  loc_60B1D9: AddI2
  loc_60B1DA: FLdPrThis
  loc_60B1DB: VCallAd Control_ID_Text1
  loc_60B1DE: FStAdFunc var_88
  loc_60B1E1: FLdPr var_88
  loc_60B1E4: Set from_stack_2 = Me(from_stack_1)
  loc_60B1E9: FLdPr var_8C
  loc_60B1EC: Me.Enabled = from_stack_1b
  loc_60B1F1: FFreeAd var_88 = ""
  loc_60B1F8: LitI2_Byte &HFF
  loc_60B1FA: FLdRfVar var_8C
  loc_60B1FD: ILdI2 Index
  loc_60B200: FLdPrThis
  loc_60B201: VCallAd Control_ID_Combo1
  loc_60B204: FStAdFunc var_88
  loc_60B207: FLdPr var_88
  loc_60B20A: Set from_stack_2 = Me(from_stack_1)
  loc_60B20F: FLdPr var_8C
  loc_60B212: Me.Enabled = from_stack_1b
  loc_60B217: FFreeAd var_88 = ""
  loc_60B21E: Branch loc_60B26D
  loc_60B221: LitI2_Byte 0
  loc_60B223: FLdRfVar var_8C
  loc_60B226: ILdI2 Index
  loc_60B229: FLdPrThis
  loc_60B22A: VCallAd Control_ID_Combo1
  loc_60B22D: FStAdFunc var_88
  loc_60B230: FLdPr var_88
  loc_60B233: Set from_stack_2 = Me(from_stack_1)
  loc_60B238: FLdPr var_8C
  loc_60B23B: Me.Enabled = from_stack_1b
  loc_60B240: FFreeAd var_88 = ""
  loc_60B247: LitI2_Byte &HFF
  loc_60B249: FLdRfVar var_8C
  loc_60B24C: ILdI2 Index
  loc_60B24F: FLdPrThis
  loc_60B250: VCallAd Control_ID_Combo1
  loc_60B253: FStAdFunc var_88
  loc_60B256: FLdPr var_88
  loc_60B259: Set from_stack_2 = Me(from_stack_1)
  loc_60B25E: FLdPr var_8C
  loc_60B261: Me.ListIndex = from_stack_1
  loc_60B266: FFreeAd var_88 = ""
  loc_60B26D: ExitProcHresult
End Sub

Private Sub Text1_GotFocus(arg_C) '5F7060
  'Data Table: 424CF8
  loc_5F6FA8: FLdPr Me
  loc_5F6FAB: MemLdUI1 global_56
  loc_5F6FAF: CBoolUI1
  loc_5F6FB1: BranchF loc_5F705C
  loc_5F6FB4: LitI4 9
  loc_5F6FB9: FLdRfVar var_8C
  loc_5F6FBC: ILdI2 arg_C
  loc_5F6FBF: FLdPrThis
  loc_5F6FC0: VCallAd Control_ID_Text1
  loc_5F6FC3: FStAdFunc var_88
  loc_5F6FC6: FLdPr var_88
  loc_5F6FC9: Set from_stack_2 = Me(from_stack_1)
  loc_5F6FCE: FLdPr var_8C
  loc_5F6FD1: Me.MaxLength = from_stack_1
  loc_5F6FD6: FFreeAd var_88 = ""
  loc_5F6FDD: ILdI2 arg_C
  loc_5F6FE0: CI4UI1
  loc_5F6FE1: ImpAdLdRf MemVar_74C2EC
  loc_5F6FE4: Ary1LdCy
  loc_5F6FE5: LitCy 0
  loc_5F6FEE: EqCy
  loc_5F6FEF: BranchF loc_5F701C
  loc_5F6FF2: LitStr vbNullString
  loc_5F6FF5: FLdRfVar var_8C
  loc_5F6FF8: ILdI2 arg_C
  loc_5F6FFB: FLdPrThis
  loc_5F6FFC: VCallAd Control_ID_Text1
  loc_5F6FFF: FStAdFunc var_88
  loc_5F7002: FLdPr var_88
  loc_5F7005: Set from_stack_2 = Me(from_stack_1)
  loc_5F700A: FLdPr var_8C
  loc_5F700D: Me.Text = from_stack_1
  loc_5F7012: FFreeAd var_88 = ""
  loc_5F7019: Branch loc_5F705C
  loc_5F701C: ILdI2 arg_C
  loc_5F701F: CI4UI1
  loc_5F7020: ImpAdLdRf MemVar_74C2EC
  loc_5F7023: Ary1LdCy
  loc_5F7024: CStrCy
  loc_5F7026: FStStrNoPop var_90
  loc_5F7029: ImpAdCallI2 Trim$()
  loc_5F702E: FStStrNoPop var_94
  loc_5F7031: FLdRfVar var_8C
  loc_5F7034: ILdI2 arg_C
  loc_5F7037: FLdPrThis
  loc_5F7038: VCallAd Control_ID_Text1
  loc_5F703B: FStAdFunc var_88
  loc_5F703E: FLdPr var_88
  loc_5F7041: Set from_stack_2 = Me(from_stack_1)
  loc_5F7046: FLdPr var_8C
  loc_5F7049: Me.Text = from_stack_1
  loc_5F704E: FFreeStr var_90 = ""
  loc_5F7055: FFreeAd var_88 = ""
  loc_5F705C: ExitProcHresult
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '5E9288
  'Data Table: 424CF8
  loc_5E9218: FLdRfVar var_90
  loc_5E921B: FLdRfVar var_8C
  loc_5E921E: ILdI2 KeyAscii
  loc_5E9221: FLdPrThis
  loc_5E9222: VCallAd Control_ID_Text1
  loc_5E9225: FStAdFunc var_88
  loc_5E9228: FLdPr var_88
  loc_5E922B: Set from_stack_2 = Me(from_stack_1)
  loc_5E9230: FLdPr var_8C
  loc_5E9233:  = Me.Text
  loc_5E9238: FLdRfVar var_9C
  loc_5E923B: FLdRfVar var_98
  loc_5E923E: ILdI2 KeyAscii
  loc_5E9241: FLdPrThis
  loc_5E9242: VCallAd Control_ID_Text1
  loc_5E9245: FStAdFunc var_94
  loc_5E9248: FLdPr var_94
  loc_5E924B: Set from_stack_2 = Me(from_stack_1)
  loc_5E9250: FLdPr var_98
  loc_5E9253:  = Me.SelStart
  loc_5E9258: LitI2_Byte 2
  loc_5E925A: CUI1I2
  loc_5E925C: LitCy 4.9406564090059E-314
  loc_5E9265: ILdRf var_9C
  loc_5E9268: CUI1I4
  loc_5E926A: FLdZeroAd var_90
  loc_5E926D: PopTmpLdAdStr
  loc_5E9271: ILdRf arg_10
  loc_5E9274: ImpAdCallFPR4  = Proc_87_12_636CDC(, , , )
  loc_5E9279: FFree1Str var_A0
  loc_5E927C: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5E9287: ExitProcHresult
End Sub

Private Sub Text1_LostFocus(arg_C) '648084
  'Data Table: 424CF8
  loc_647E54: FLdPr Me
  loc_647E57: MemLdUI1 global_56
  loc_647E5B: CBoolUI1
  loc_647E5D: BranchF loc_648082
  loc_647E60: FLdRfVar var_94
  loc_647E63: FLdRfVar var_90
  loc_647E66: ILdI2 arg_C
  loc_647E69: FLdPrThis
  loc_647E6A: VCallAd Control_ID_Text1
  loc_647E6D: FStAdFunc var_8C
  loc_647E70: FLdPr var_8C
  loc_647E73: Set from_stack_2 = Me(from_stack_1)
  loc_647E78: FLdPr var_90
  loc_647E7B:  = Me.Text
  loc_647E80: FLdZeroAd var_94
  loc_647E83: PopTmpLdAdStr
  loc_647E87: ImpAdCallCy Proc_87_11_5EEA34()
  loc_647E8C: ILdI2 arg_C
  loc_647E8F: CI4UI1
  loc_647E90: ImpAdLdRf MemVar_74C2EC
  loc_647E93: Ary1StCy
  loc_647E94: FFree1Str var_98
  loc_647E97: FFreeAd var_8C = ""
  loc_647E9E: ILdI2 arg_C
  loc_647EA1: CI4UI1
  loc_647EA2: ImpAdLdRf MemVar_74C2EC
  loc_647EA5: Ary1LdCy
  loc_647EA6: LitCy 4.9406564090059E-314
  loc_647EAF: GtCy
  loc_647EB0: BranchF loc_647F92
  loc_647EB3: ImpAdCallFPR4 Beep()
  loc_647EB8: FLdRfVar var_98
  loc_647EBB: LitVar_Missing var_1E0
  loc_647EBE: LitVar_Missing var_1C0
  loc_647EC1: LitVar_Missing var_1A0
  loc_647EC4: LitVar_Missing var_180
  loc_647EC7: LitVar_Missing var_160
  loc_647ECA: LitVar_Missing var_140
  loc_647ECD: LitVar_Missing var_120
  loc_647ED0: LitVar_Missing var_100
  loc_647ED3: LitVar_Missing var_E0
  loc_647ED6: LitVar_Missing var_C0
  loc_647ED9: LitStr "La Capacidad máxima de un Tanque no puede exceder de 999.999,99 Volumen."
  loc_647EDC: FStStrCopy var_94
  loc_647EDF: FLdRfVar var_94
  loc_647EE2: LitI4 8
  loc_647EE7: PopTmpLdAdStr var_A0
  loc_647EEA: LitI2_Byte &H13
  loc_647EEC: PopTmpLdAd2 var_9A
  loc_647EEF: ImpAdLdRf MemVar_74C7D0
  loc_647EF2: NewIfNullPr clsMsg
  loc_647EF5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_647EFA: LitI4 &HD
  loc_647EFF: FLdRfVar var_1F0
  loc_647F02: ImpAdCallFPR4  = Chr()
  loc_647F07: LitI4 &HA
  loc_647F0C: FLdRfVar var_220
  loc_647F0F: ImpAdCallFPR4  = Chr()
  loc_647F14: LitVar_Missing var_280
  loc_647F17: LitVar_Missing var_260
  loc_647F1A: FLdPr Me
  loc_647F1D: MemLdRfVar from_stack_1.strConfigError
  loc_647F20: CVarRef
  loc_647F25: LitI4 &H10
  loc_647F2A: FLdZeroAd var_98
  loc_647F2D: CVarStr var_200
  loc_647F30: FLdRfVar var_1F0
  loc_647F33: ConcatVar var_210
  loc_647F37: FLdRfVar var_220
  loc_647F3A: ConcatVar var_230
  loc_647F3E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_647F43: FFree1Str var_94
  loc_647F46: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_1F0 = "": var_210 = "": var_220 = "": var_230 = "": var_260 = ""
  loc_647F6B: FLdRfVar var_90
  loc_647F6E: ILdI2 arg_C
  loc_647F71: FLdPrThis
  loc_647F72: VCallAd Control_ID_Text1
  loc_647F75: FStAdFunc var_8C
  loc_647F78: FLdPr var_8C
  loc_647F7B: Set from_stack_2 = Me(from_stack_1)
  loc_647F80: FLdPr var_90
  loc_647F83: Me.SetFocus
  loc_647F88: FFreeAd var_8C = ""
  loc_647F8F: Branch loc_648082
  loc_647F92: LitI4 &H12
  loc_647F97: FLdRfVar var_90
  loc_647F9A: ILdI2 arg_C
  loc_647F9D: FLdPrThis
  loc_647F9E: VCallAd Control_ID_Text1
  loc_647FA1: FStAdFunc var_8C
  loc_647FA4: FLdPr var_8C
  loc_647FA7: Set from_stack_2 = Me(from_stack_1)
  loc_647FAC: FLdPr var_90
  loc_647FAF: Me.MaxLength = from_stack_1
  loc_647FB4: FFreeAd var_8C = ""
  loc_647FBB: ILdI2 arg_C
  loc_647FBE: CI4UI1
  loc_647FBF: ImpAdLdRf MemVar_74C2EC
  loc_647FC2: Ary1LdCy
  loc_647FC3: LitCy 0
  loc_647FCC: EqCy
  loc_647FCD: BranchF loc_64803B
  loc_647FD0: ILdI2 arg_C
  loc_647FD3: CUI1I2
  loc_647FD5: FLdRfVar var_86
  loc_647FD8: LitI2_Byte &HF
  loc_647FDA: CUI1I2
  loc_647FDC: ForUI1 var_284
  loc_647FE2: FLdUI1
  loc_647FE6: CI2UI1
  loc_647FE8: LitI2_Byte 1
  loc_647FEA: AddI2
  loc_647FEB: CI4UI1
  loc_647FEC: ImpAdLdRf MemVar_74C2EC
  loc_647FEF: Ary1LdCy
  loc_647FF0: FLdUI1
  loc_647FF4: CI4UI1
  loc_647FF5: ImpAdLdRf MemVar_74C2EC
  loc_647FF8: Ary1StCy
  loc_647FF9: FLdUI1
  loc_647FFD: CI2UI1
  loc_647FFF: LitI2_Byte 1
  loc_648001: AddI2
  loc_648002: CI4UI1
  loc_648003: ImpAdLdRf MemVar_74C1D8
  loc_648006: Ary1LdUI1
  loc_648008: FLdUI1
  loc_64800C: CI4UI1
  loc_64800D: ImpAdLdRf MemVar_74C1D8
  loc_648010: Ary1StUI1
  loc_648012: FLdRfVar var_86
  loc_648015: NextUI1
  loc_64801B: LitCy 0
  loc_648024: LitI4 &H10
  loc_648029: ImpAdLdRf MemVar_74C2EC
  loc_64802C: Ary1StCy
  loc_64802D: LitI2_Byte 0
  loc_64802F: CUI1I2
  loc_648031: LitI4 &H10
  loc_648036: ImpAdLdRf MemVar_74C1D8
  loc_648039: Ary1StUI1
  loc_64803B: LitI2_Byte 1
  loc_64803D: CUI1I2
  loc_64803F: FLdRfVar var_86
  loc_648042: LitI2_Byte &H10
  loc_648044: CUI1I2
  loc_648046: ForUI1 var_288
  loc_64804C: FLdUI1
  loc_648050: CI4UI1
  loc_648051: ImpAdLdRf MemVar_74C2EC
  loc_648054: Ary1LdCy
  loc_648055: LitCy 0
  loc_64805E: EqCy
  loc_64805F: BranchF loc_648065
  loc_648062: Branch loc_64806E
  loc_648065: FLdRfVar var_86
  loc_648068: NextUI1
  loc_64806E: FLdUI1
  loc_648072: CI2UI1
  loc_648074: LitI2_Byte 1
  loc_648076: SubI2
  loc_648077: CUI1I2
  loc_648079: ImpAdStUI1 MemVar_74C0FB
  loc_64807D: Call Form_Activate()
  loc_648082: ExitProcHresult
End Sub

Public Function strConfigErrorGet() '425444
  strConfigErrorGet = strConfigError
End Function

Public Sub strConfigErrorPut(Value) '425453
  strConfigError = Value
End Sub

Private Function Proc_150_15_5F1F38(arg_C) '5F1F38
  'Data Table: 424CF8
  loc_5F1E98: OnErrorGoto loc_5F1F2B
  loc_5F1E9B: LitI2_Byte 1
  loc_5F1E9D: FStI2 var_8A
  loc_5F1EA0: LitI2_Byte 1
  loc_5F1EA2: FLdRfVar var_88
  loc_5F1EA5: FLdRfVar var_8C
  loc_5F1EA8: ImpAdLdRf MemVar_74A220
  loc_5F1EAB: NewIfNullPr clsProducts
  loc_5F1EAE: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5F1EB3: FLdI2 var_8C
  loc_5F1EB6: ForI2 var_90
  loc_5F1EBC: FLdRfVar var_8C
  loc_5F1EBF: FLdI2 var_88
  loc_5F1EC2: ImpAdLdRf MemVar_74A220
  loc_5F1EC5: NewIfNullPr clsProducts
  loc_5F1EC8: clsProducts.Caption = from_stack_1
  loc_5F1ECD: FLdI2 var_8C
  loc_5F1ED0: BranchF loc_5F1EDC
  loc_5F1ED3: FLdI2 var_8A
  loc_5F1ED6: LitI2_Byte 1
  loc_5F1ED8: AddI2
  loc_5F1ED9: FStI2 var_8A
  loc_5F1EDC: FLdI2 var_88
  loc_5F1EDF: ILdI2 arg_C
  loc_5F1EE2: EqI2
  loc_5F1EE3: BranchF loc_5F1EE9
  loc_5F1EE6: Branch loc_5F1EF1
  loc_5F1EE9: FLdRfVar var_88
  loc_5F1EEC: NextI2 var_90, loc_5F1EBC
  loc_5F1EF1: ILdI2 arg_C
  loc_5F1EF4: FLdI2 var_8A
  loc_5F1EF7: SubI2
  loc_5F1EF8: CVarI2 var_E0
  loc_5F1EFB: LitVarI2 var_C0, 0
  loc_5F1F00: ILdI2 arg_C
  loc_5F1F03: FLdI2 var_8A
  loc_5F1F06: LtI2
  loc_5F1F07: CVarBoolI2 var_A0
  loc_5F1F0B: FLdRfVar var_F0
  loc_5F1F0E: ImpAdCallFPR4  = IIf(, , )
  loc_5F1F13: FLdRfVar var_F0
  loc_5F1F16: CI2Var
  loc_5F1F17: FStI2 var_86
  loc_5F1F1A: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_5F1F25: ExitProcCbHresult
  loc_5F1F2B: LitI2_Byte 0
  loc_5F1F2D: FStI2 var_86
  loc_5F1F30: ExitProcCbHresult
End Function

Private Function Proc_150_16_5EF174() '5EF174
  'Data Table: 424CF8
  loc_5EF0E0: LitI2_Byte 1
  loc_5EF0E2: FLdRfVar var_88
  loc_5EF0E5: FLdRfVar var_92
  loc_5EF0E8: FLdPrThis
  loc_5EF0E9: VCallAd Control_ID_Combo1
  loc_5EF0EC: FStAdFunc var_90
  loc_5EF0EF: FLdPr var_90
  loc_5EF0F2: Call 0.Method_Proc_150_16_5EF174C ()
  loc_5EF0F7: FLdI2 var_92
  loc_5EF0FA: FFree1Ad var_90
  loc_5EF0FD: ForI2 var_96
  loc_5EF103: FLdRfVar var_A2
  loc_5EF106: FLdRfVar var_92
  loc_5EF109: FLdRfVar var_A0
  loc_5EF10C: FLdRfVar var_9C
  loc_5EF10F: FLdI2 var_88
  loc_5EF112: FLdPrThis
  loc_5EF113: VCallAd Control_ID_Combo1
  loc_5EF116: FStAdFunc var_90
  loc_5EF119: FLdPr var_90
  loc_5EF11C: Set from_stack_2 = Me(from_stack_1)
  loc_5EF121: FLdPr var_9C
  loc_5EF124:  = Me.Text
  loc_5EF129: ILdRf var_A0
  loc_5EF12C: ImpAdLdRf MemVar_74A220
  loc_5EF12F: NewIfNullPr clsProducts
  loc_5EF137: FLdI2 var_92
  loc_5EF13A: ImpAdLdRf MemVar_74A220
  loc_5EF13D: NewIfNullPr clsProducts
  loc_5EF140:  = clsProducts.hWnd
  loc_5EF145: FLdI2 var_A2
  loc_5EF148: FFree1Str var_A0
  loc_5EF14B: FFreeAd var_90 = ""
  loc_5EF152: BranchF loc_5EF15E
  loc_5EF155: FLdI2 var_8A
  loc_5EF158: LitI2_Byte 1
  loc_5EF15A: AddI2
  loc_5EF15B: FStI2 var_8A
  loc_5EF15E: FLdRfVar var_88
  loc_5EF161: NextI2 var_96, loc_5EF103
  loc_5EF166: FLdI2 var_8A
  loc_5EF169: FStI2 var_86
  loc_5EF16C: ExitProcCbHresult
End Function

Private Function Proc_150_17_5DAC74() '5DAC74
  'Data Table: 424CF8
  loc_5DAC34: LitI2_Byte 0
  loc_5DAC36: FStI2 var_86
  loc_5DAC39: ImpAdLdUI1
  loc_5DAC3D: CI2UI1
  loc_5DAC3F: LitI2_Byte 4
  loc_5DAC41: EqI2
  loc_5DAC42: ImpAdLdUI1
  loc_5DAC46: CI2UI1
  loc_5DAC48: LitI2_Byte 5
  loc_5DAC4A: EqI2
  loc_5DAC4B: OrI4
  loc_5DAC4C: BranchF loc_5DAC68
  loc_5DAC4F: FLdRfVar var_8A
  loc_5DAC52: from_stack_1v = Proc_150_16_5EF174()
  loc_5DAC57: FLdI2 var_8A
  loc_5DAC5A: LitI2_Byte 0
  loc_5DAC5C: GtI2
  loc_5DAC5D: BranchF loc_5DAC65
  loc_5DAC60: LitI2_Byte &HFF
  loc_5DAC62: FStI2 var_86
  loc_5DAC65: Branch loc_5DAC6D
  loc_5DAC68: LitI2_Byte &HFF
  loc_5DAC6A: FStI2 var_86
  loc_5DAC6D: ExitProcCbHresult
End Function

Private Function Proc_150_18_60CF50() '60CF50
  'Data Table: 424CF8
  loc_60CE68: OnErrorGoto loc_60CF3A
  loc_60CE6B: LitI2_Byte 1
  loc_60CE6D: FStI2 var_8A
  loc_60CE70: LitI2_Byte &HFF
  loc_60CE72: FStI2 var_86
  loc_60CE75: LitI2_Byte 1
  loc_60CE77: FLdRfVar var_88
  loc_60CE7A: FLdRfVar var_8C
  loc_60CE7D: ImpAdLdRf MemVar_74A220
  loc_60CE80: NewIfNullPr clsProducts
  loc_60CE83: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60CE88: FLdI2 var_8C
  loc_60CE8B: ForI2 var_90
  loc_60CE91: FLdRfVar var_8C
  loc_60CE94: FLdI2 var_88
  loc_60CE97: ImpAdLdRf MemVar_74A220
  loc_60CE9A: NewIfNullPr clsProducts
  loc_60CE9D: clsProducts.Caption = from_stack_1
  loc_60CEA2: FLdI2 var_8C
  loc_60CEA5: NotI4
  loc_60CEA6: BranchF loc_60CF2C
  loc_60CEA9: FLdI2 var_8A
  loc_60CEAC: LitI2_Byte &H11
  loc_60CEAE: LtI2
  loc_60CEAF: CVarBoolI2 var_F0
  loc_60CEB3: FLdRfVar var_9C
  loc_60CEB6: FLdRfVar var_98
  loc_60CEB9: FLdI2 var_8A
  loc_60CEBC: FLdPrThis
  loc_60CEBD: VCallAd Control_ID_Combo1
  loc_60CEC0: FStAdFunc var_94
  loc_60CEC3: FLdPr var_94
  loc_60CEC6: Set from_stack_2 = Me(from_stack_1)
  loc_60CECB: FLdPr var_98
  loc_60CECE:  = Me.Text
  loc_60CED3: FLdZeroAd var_9C
  loc_60CED6: CVarStr var_AC
  loc_60CED9: FLdRfVar var_BC
  loc_60CEDC: ImpAdCallFPR4  = Trim()
  loc_60CEE1: FLdRfVar var_BC
  loc_60CEE4: FLdRfVar var_C0
  loc_60CEE7: FLdI2 var_88
  loc_60CEEA: ImpAdLdRf MemVar_74A220
  loc_60CEED: NewIfNullPr clsProducts
  loc_60CEF5: FLdZeroAd var_C0
  loc_60CEF8: CVarStr var_D0
  loc_60CEFB: HardType
  loc_60CEFC: NeVar var_E0
  loc_60CF00: AndVar var_100
  loc_60CF04: CBoolVarNull
  loc_60CF06: FFreeAd var_94 = ""
  loc_60CF0D: FFreeVar var_AC = "": var_BC = "": var_D0 = ""
  loc_60CF18: BranchF loc_60CF27
  loc_60CF1B: FLdI2 var_8A
  loc_60CF1E: LitI2_Byte 1
  loc_60CF20: AddI2
  loc_60CF21: FStI2 var_8A
  loc_60CF24: Branch loc_60CEA9
  loc_60CF27: LitI2_Byte 1
  loc_60CF29: FStI2 var_8A
  loc_60CF2C: FLdRfVar var_88
  loc_60CF2F: NextI2 var_90, loc_60CE91
  loc_60CF34: ExitProcCbHresult
  loc_60CF3A: FLdI2 var_8A
  loc_60CF3D: LitI2_Byte &H11
  loc_60CF3F: EqI2
  loc_60CF40: BranchF loc_60CF48
  loc_60CF43: LitI2_Byte &HFF
  loc_60CF45: FStI2 var_86
  loc_60CF48: ExitProcCbHresult
End Function

Private Function Proc_150_19_5E62A0() '5E62A0
  'Data Table: 424CF8
  loc_5E6230: ImpAdLdRf MemVar_74C14C
  loc_5E6233: PopTmpLdAdStr var_9C
  loc_5E6236: Erase
  loc_5E6237: ImpAdLdRf MemVar_74C114
  loc_5E623A: PopTmpLdAdStr var_A0
  loc_5E623D: Erase
  loc_5E623E: ImpAdLdRf MemVar_74C1B8
  loc_5E6241: PopTmpLdAdStr var_A4
  loc_5E6244: Erase
  loc_5E6245: LitVarI2 var_D4, 1
  loc_5E624A: FLdRfVar var_94
  loc_5E624D: ImpAdLdUI1
  loc_5E6251: CVarUI1
  loc_5E6255: ForVar var_F4
  loc_5E625B: LitI2_Byte 0
  loc_5E625D: CUI1I2
  loc_5E625F: FLdRfVar var_96
  loc_5E6262: FLdRfVar var_94
  loc_5E6265: CI4Var
  loc_5E6267: ImpAdLdRf MemVar_74C0FC
  loc_5E626A: Ary1LdUI1
  loc_5E626C: ForUI1 var_F8
  loc_5E6272: LitI2_Byte 1
  loc_5E6274: CUI1I2
  loc_5E6276: FLdRfVar var_94
  loc_5E6279: CI4Var
  loc_5E627B: FLdUI1
  loc_5E627F: CI4UI1
  loc_5E6280: ImpAdLdRf MemVar_74C12C
  loc_5E6283: AryLdPr
  loc_5E6286: MemStUI1
  loc_5E628A: FLdRfVar var_96
  loc_5E628D: NextUI1
  loc_5E6293: FLdRfVar var_94
  loc_5E6296: NextStepVar var_F4
  loc_5E629C: ExitProcHresult
End Function
