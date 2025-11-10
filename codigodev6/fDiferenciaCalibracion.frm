VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fDiferenciaCalibracion
  Caption = "Configuración de diferencia de niveles y boca de calibración"
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form7"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 360
  ClientWidth = 11925
  ClientHeight = 8655
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 8700
    Top = 4500
    Width = 2205
    Height = 360
    TabIndex = 29
    List = "fDiferenciaCalibracion.frx":0000
    ItemData = "fDiferenciaCalibracion.frx":0025
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
    Left = 8700
    Top = 4080
    Width = 2205
    Height = 360
    TabIndex = 26
    List = "fDiferenciaCalibracion.frx":002F
    ItemData = "fDiferenciaCalibracion.frx":0054
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
    Left = 8700
    Top = 3660
    Width = 2205
    Height = 360
    TabIndex = 23
    List = "fDiferenciaCalibracion.frx":005E
    ItemData = "fDiferenciaCalibracion.frx":0083
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
    Left = 8700
    Top = 3240
    Width = 2205
    Height = 360
    TabIndex = 20
    List = "fDiferenciaCalibracion.frx":008D
    ItemData = "fDiferenciaCalibracion.frx":00B2
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
    Left = 8700
    Top = 2820
    Width = 2205
    Height = 360
    TabIndex = 17
    List = "fDiferenciaCalibracion.frx":00BC
    ItemData = "fDiferenciaCalibracion.frx":00E1
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
    Left = 8700
    Top = 2400
    Width = 2205
    Height = 360
    TabIndex = 14
    List = "fDiferenciaCalibracion.frx":00EB
    ItemData = "fDiferenciaCalibracion.frx":0110
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
    Left = 8700
    Top = 1980
    Width = 2205
    Height = 360
    TabIndex = 11
    List = "fDiferenciaCalibracion.frx":011A
    ItemData = "fDiferenciaCalibracion.frx":013F
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
    Left = 8700
    Top = 1560
    Width = 2205
    Height = 360
    TabIndex = 8
    List = "fDiferenciaCalibracion.frx":0149
    ItemData = "fDiferenciaCalibracion.frx":016E
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
    Left = 8700
    Top = 1140
    Width = 2205
    Height = 360
    TabIndex = 5
    List = "fDiferenciaCalibracion.frx":0178
    ItemData = "fDiferenciaCalibracion.frx":019D
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
    Left = 8700
    Top = 720
    Width = 2205
    Height = 360
    TabIndex = 2
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
    Left = 8700
    Top = 4920
    Width = 2205
    Height = 360
    TabIndex = 32
    List = "fDiferenciaCalibracion.frx":01A7
    ItemData = "fDiferenciaCalibracion.frx":01CC
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
    Left = 8700
    Top = 5340
    Width = 2205
    Height = 360
    TabIndex = 35
    List = "fDiferenciaCalibracion.frx":01D6
    ItemData = "fDiferenciaCalibracion.frx":01FB
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
    Left = 8700
    Top = 5760
    Width = 2205
    Height = 360
    TabIndex = 38
    List = "fDiferenciaCalibracion.frx":0205
    ItemData = "fDiferenciaCalibracion.frx":022A
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
    Left = 8700
    Top = 6180
    Width = 2205
    Height = 360
    TabIndex = 41
    List = "fDiferenciaCalibracion.frx":0234
    ItemData = "fDiferenciaCalibracion.frx":0259
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
    Left = 8700
    Top = 6600
    Width = 2205
    Height = 360
    TabIndex = 44
    List = "fDiferenciaCalibracion.frx":0263
    ItemData = "fDiferenciaCalibracion.frx":0288
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
    Left = 8700
    Top = 7020
    Width = 2205
    Height = 360
    TabIndex = 47
    List = "fDiferenciaCalibracion.frx":0292
    ItemData = "fDiferenciaCalibracion.frx":02B7
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
    Index = 16
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 7020
    Width = 3120
    Height = 360
    TabIndex = 45
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 15
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 6600
    Width = 3120
    Height = 360
    TabIndex = 42
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 14
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 6180
    Width = 3120
    Height = 360
    TabIndex = 39
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 13
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 5760
    Width = 3120
    Height = 360
    TabIndex = 36
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 12
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 5340
    Width = 3120
    Height = 360
    TabIndex = 33
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 11
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 4920
    Width = 3120
    Height = 360
    TabIndex = 30
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 1
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 720
    Width = 3120
    Height = 360
    TabIndex = 0
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 2
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 1140
    Width = 3120
    Height = 360
    TabIndex = 3
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 3
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 1560
    Width = 3120
    Height = 360
    TabIndex = 6
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 4
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 1980
    Width = 3120
    Height = 360
    TabIndex = 9
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 5
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 2400
    Width = 3120
    Height = 360
    TabIndex = 12
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 6
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 2820
    Width = 3120
    Height = 360
    TabIndex = 15
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 7
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 3240
    Width = 3120
    Height = 360
    TabIndex = 18
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 8
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 3660
    Width = 3120
    Height = 360
    TabIndex = 21
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 9
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 4080
    Width = 3120
    Height = 360
    TabIndex = 24
    MaxLength = 16
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
  Begin VB.TextBox Text1
    Index = 10
    BackColor = &HC0FFFF&
    Left = 2580
    Top = 4500
    Width = 3120
    Height = 360
    TabIndex = 27
    MaxLength = 16
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
  Begin VB.TextBox Text2
    Index = 16
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 7020
    Width = 2880
    Height = 360
    TabIndex = 46
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 15
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 6600
    Width = 2880
    Height = 360
    TabIndex = 43
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 14
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 6180
    Width = 2880
    Height = 360
    TabIndex = 40
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 13
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 5760
    Width = 2880
    Height = 360
    TabIndex = 37
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 12
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 5340
    Width = 2880
    Height = 360
    TabIndex = 34
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 11
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 4920
    Width = 2880
    Height = 360
    TabIndex = 31
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 1
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 720
    Width = 2880
    Height = 360
    TabIndex = 1
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 2
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 1140
    Width = 2880
    Height = 360
    TabIndex = 4
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 3
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 1560
    Width = 2880
    Height = 360
    TabIndex = 7
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 4
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 1980
    Width = 2880
    Height = 360
    TabIndex = 10
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 5
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 2400
    Width = 2880
    Height = 360
    TabIndex = 13
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 6
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 2820
    Width = 2880
    Height = 360
    TabIndex = 16
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 7
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 3240
    Width = 2880
    Height = 360
    TabIndex = 19
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 8
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 3660
    Width = 2880
    Height = 360
    TabIndex = 22
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 9
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 4080
    Width = 2880
    Height = 360
    TabIndex = 25
    MaxLength = 15
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
  Begin VB.TextBox Text2
    Index = 10
    BackColor = &HC0FFFF&
    Left = 5760
    Top = 4500
    Width = 2880
    Height = 360
    TabIndex = 28
    MaxLength = 15
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
  Begin Threed.SSCommand SSCommand3
    Left = 3120
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 50
    OleObjectBlob = "fDiferenciaCalibracion.frx":02C1
  End
  Begin Threed.SSCommand SSCommand1
    Left = 240
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 49
    OleObjectBlob = "fDiferenciaCalibracion.frx":0323
  End
  Begin Threed.SSCommand sscCancel
    Left = 6120
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 51
    OleObjectBlob = "fDiferenciaCalibracion.frx":038F
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9000
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 52
    OleObjectBlob = "fDiferenciaCalibracion.frx":03F4
  End
  Begin VB.Label Label4
    Caption = "Calibración por"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 8700
    Top = 240
    Width = 2205
    Height = 405
    TabIndex = 70
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
    Caption = "Altura Entrada Sensor"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 2580
    Top = 240
    Width = 3120
    Height = 405
    TabIndex = 68
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
    Caption = "Altura Entrada Varilla"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 5760
    Top = 240
    Width = 2880
    Height = 405
    TabIndex = 69
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
    Caption = "   Tanque  16 :"
    Index = 16
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 480
    Top = 7020
    Width = 2040
    Height = 375
    TabIndex = 67
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
    Left = 480
    Top = 6600
    Width = 2040
    Height = 375
    TabIndex = 66
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
    Left = 480
    Top = 6180
    Width = 2040
    Height = 375
    TabIndex = 65
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
    Left = 480
    Top = 5760
    Width = 2040
    Height = 375
    TabIndex = 64
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
    Left = 480
    Top = 5340
    Width = 2040
    Height = 375
    TabIndex = 63
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
    Left = 480
    Top = 4920
    Width = 2040
    Height = 375
    TabIndex = 62
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
    Left = 480
    Top = 4500
    Width = 2040
    Height = 375
    TabIndex = 61
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
    Left = 480
    Top = 4080
    Width = 2040
    Height = 375
    TabIndex = 60
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
    Left = 480
    Top = 3660
    Width = 2040
    Height = 375
    TabIndex = 59
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
    Left = 480
    Top = 3240
    Width = 2040
    Height = 375
    TabIndex = 58
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
    Left = 480
    Top = 2820
    Width = 2040
    Height = 375
    TabIndex = 57
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
    Left = 480
    Top = 2400
    Width = 2040
    Height = 375
    TabIndex = 56
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
    Left = 480
    Top = 1980
    Width = 2040
    Height = 375
    TabIndex = 55
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
    Left = 480
    Top = 1560
    Width = 2040
    Height = 375
    TabIndex = 54
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
    Left = 480
    Top = 1140
    Width = 2040
    Height = 375
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
    Caption = "   Tanque  1 :"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 480
    Top = 720
    Width = 2040
    Height = 375
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
End

Attribute VB_Name = "fDiferenciaCalibracion"


Private Sub sscCancel_UnknownEvent_8 '5DA298
  'Data Table: 423198
  loc_5DA260: ImpAdLdRf MemVar_74A220
  loc_5DA263: NewIfNullPr clsProducts
  loc_5DA266: clsProducts.Height = from_stack_1s
  loc_5DA26B: LitI2_Byte &HFF
  loc_5DA26D: PopTmpLdAd2 var_86
  loc_5DA270: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5DA275: LitI2_Byte &HFF
  loc_5DA277: ImpAdLdRf MemVar_74C760
  loc_5DA27A: NewIfNullPr Formx
  loc_5DA27D: Call Formx.CanceladoPut(from_stack_1v)
  loc_5DA282: ILdRf Me
  loc_5DA285: FStAdNoPop
  loc_5DA289: ImpAdLdRf MemVar_7520D4
  loc_5DA28C: NewIfNullPr Global
  loc_5DA28F: Global.Unload from_stack_1
  loc_5DA294: FFree1Ad var_8C
  loc_5DA297: ExitProcHresult
End Sub

Private Sub SSCommand3_UnknownEvent_8 '6531DC
  'Data Table: 423198
  loc_652FB8: ImpAdCallFPR4 Beep()
  loc_652FBD: FLdRfVar var_1D4
  loc_652FC0: LitVar_Missing var_1D0
  loc_652FC3: LitVar_Missing var_1B0
  loc_652FC6: LitVar_Missing var_190
  loc_652FC9: LitVar_Missing var_170
  loc_652FCC: LitVar_Missing var_150
  loc_652FCF: LitVar_Missing var_130
  loc_652FD2: LitVar_Missing var_110
  loc_652FD5: LitVar_Missing var_F0
  loc_652FD8: LitVar_Missing var_D0
  loc_652FDB: LitVar_Missing var_B0
  loc_652FDE: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_652FE1: FStStrCopy var_90
  loc_652FE4: FLdRfVar var_90
  loc_652FE7: LitI4 &HB
  loc_652FEC: PopTmpLdAdStr var_8C
  loc_652FEF: LitI2_Byte &H2C
  loc_652FF1: PopTmpLdAd2 var_88
  loc_652FF4: ImpAdLdRf MemVar_74C7D0
  loc_652FF7: NewIfNullPr clsMsg
  loc_652FFA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_652FFF: LitI4 &HD
  loc_653004: FLdRfVar var_1E4
  loc_653007: ImpAdCallFPR4  = Chr()
  loc_65300C: LitI4 &HA
  loc_653011: FLdRfVar var_214
  loc_653014: ImpAdCallFPR4  = Chr()
  loc_653019: FLdRfVar var_374
  loc_65301C: LitVar_Missing var_370
  loc_65301F: LitVar_Missing var_350
  loc_653022: LitVar_Missing var_330
  loc_653025: LitVar_Missing var_310
  loc_653028: LitVar_Missing var_2F0
  loc_65302B: LitVar_Missing var_2D0
  loc_65302E: LitVar_Missing var_2B0
  loc_653031: LitVar_Missing var_290
  loc_653034: LitVar_Missing var_270
  loc_653037: LitVar_Missing var_250
  loc_65303A: LitStr "Presionando ""CANCEL"" se aborta el proceso."
  loc_65303D: FStStrCopy var_230
  loc_653040: FLdRfVar var_230
  loc_653043: LitI4 &HC
  loc_653048: PopTmpLdAdStr var_22C
  loc_65304B: LitI2_Byte &H2C
  loc_65304D: PopTmpLdAd2 var_226
  loc_653050: ImpAdLdRf MemVar_74C7D0
  loc_653053: NewIfNullPr clsMsg
  loc_653056: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65305B: LitI4 &HD
  loc_653060: FLdRfVar var_3A4
  loc_653063: ImpAdCallFPR4  = Chr()
  loc_653068: LitI4 &HA
  loc_65306D: FLdRfVar var_3C4
  loc_653070: ImpAdCallFPR4  = Chr()
  loc_653075: FLdRfVar var_524
  loc_653078: LitVar_Missing var_520
  loc_65307B: LitVar_Missing var_500
  loc_65307E: LitVar_Missing var_4E0
  loc_653081: LitVar_Missing var_4C0
  loc_653084: LitVar_Missing var_4A0
  loc_653087: LitVar_Missing var_480
  loc_65308A: LitVar_Missing var_460
  loc_65308D: LitVar_Missing var_440
  loc_653090: LitVar_Missing var_420
  loc_653093: LitVar_Missing var_400
  loc_653096: LitStr "ADVERTENCIA"
  loc_653099: FStStrCopy var_3E0
  loc_65309C: FLdRfVar var_3E0
  loc_65309F: LitI4 &HD
  loc_6530A4: PopTmpLdAdStr var_3DC
  loc_6530A7: LitI2_Byte &H2C
  loc_6530A9: PopTmpLdAd2 var_3D6
  loc_6530AC: ImpAdLdRf MemVar_74C7D0
  loc_6530AF: NewIfNullPr clsMsg
  loc_6530B2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6530B7: LitVar_Missing var_574
  loc_6530BA: LitVar_Missing var_554
  loc_6530BD: FLdZeroAd var_524
  loc_6530C0: CVarStr var_534
  loc_6530C3: LitI4 &H131
  loc_6530C8: FLdZeroAd var_1D4
  loc_6530CB: CVarStr var_1F4
  loc_6530CE: FLdRfVar var_1E4
  loc_6530D1: ConcatVar var_204
  loc_6530D5: FLdRfVar var_214
  loc_6530D8: ConcatVar var_224
  loc_6530DC: FLdZeroAd var_374
  loc_6530DF: CVarStr var_384
  loc_6530E2: ConcatVar var_394
  loc_6530E6: FLdRfVar var_3A4
  loc_6530E9: ConcatVar var_3B4
  loc_6530ED: FLdRfVar var_3C4
  loc_6530F0: ConcatVar var_3D4
  loc_6530F4: ImpAdCallI2 MsgBox(, , , , )
  loc_6530F9: CUI1I4
  loc_6530FB: FStUI1 var_86
  loc_6530FF: FFreeStr var_90 = "": var_230 = ""
  loc_653108: FFreeVar var_400 = "": var_420 = "": var_440 = "": var_460 = "": var_480 = "": var_4A0 = "": var_4C0 = "": var_4E0 = "": var_500 = "": var_520 = "": var_3D4 = "": var_534 = "": var_554 = "": var_574 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_224 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = ""
  loc_653163: FLdUI1
  loc_653167: CI4UI1
  loc_653168: LitI4 1
  loc_65316D: EqI4
  loc_65316E: BranchF loc_6531C3
  loc_653171: ImpAdLdRf MemVar_74C0C4
  loc_653174: PopTmpLdAdStr var_8C
  loc_653177: Erase
  loc_653178: FLdPr Me
  loc_65317B: MemLdRfVar from_stack_1.global_80
  loc_65317E: PopTmpLdAdStr var_22C
  loc_653181: Erase
  loc_653182: FLdPr Me
  loc_653185: MemLdRfVar from_stack_1.global_56
  loc_653188: PopTmpLdAdStr var_3DC
  loc_65318B: Erase
  loc_65318C: ImpAdLdRf MemVar_74C278
  loc_65318F: PopTmpLdAdStr var_578
  loc_653192: Erase
  loc_653193: ImpAdLdRf MemVar_74C260
  loc_653196: PopTmpLdAdStr var_57C
  loc_653199: Erase
  loc_65319A: Call Form_Activate()
  loc_65319F: FLdRfVar var_584
  loc_6531A2: LitI2_Byte 1
  loc_6531A4: FLdPrThis
  loc_6531A5: VCallAd Control_ID_Text1
  loc_6531A8: FStAdFunc var_580
  loc_6531AB: FLdPr var_580
  loc_6531AE: Set from_stack_2 = Me(from_stack_1)
  loc_6531B3: FLdPr var_584
  loc_6531B6: Me.SetFocus
  loc_6531BB: FFreeAd var_580 = ""
  loc_6531C2: ExitProcHresult
  loc_6531C3: FLdPrThis
  loc_6531C4: VCallAd Control_ID_SSCommand2
  loc_6531C7: FStAdFunc var_580
  loc_6531CA: FLdPr var_580
  loc_6531CD: LateIdCall
  loc_6531D5: FFree1Ad var_580
  loc_6531D8: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '5E77C8
  'Data Table: 423198
  loc_5E774C: LitI2_Byte 1
  loc_5E774E: CUI1I2
  loc_5E7750: FLdRfVar var_86
  loc_5E7753: ImpAdLdUI1
  loc_5E7757: ForUI1 var_8A
  loc_5E775D: FLdUI1
  loc_5E7761: CI4UI1
  loc_5E7762: FLdPr Me
  loc_5E7765: MemLdRfVar from_stack_1.global_56
  loc_5E7768: Ary1LdCy
  loc_5E7769: CI2Cy
  loc_5E776A: FLdUI1
  loc_5E776E: CI4UI1
  loc_5E776F: ImpAdLdRf MemVar_74C260
  loc_5E7772: Ary1StI2
  loc_5E7773: FLdUI1
  loc_5E7777: CI4UI1
  loc_5E7778: FLdPr Me
  loc_5E777B: MemLdRfVar from_stack_1.global_80
  loc_5E777E: Ary1LdCy
  loc_5E777F: CI2Cy
  loc_5E7780: FLdUI1
  loc_5E7784: CI4UI1
  loc_5E7785: ImpAdLdRf MemVar_74C278
  loc_5E7788: Ary1StI2
  loc_5E7789: FLdRfVar var_86
  loc_5E778C: NextUI1
  loc_5E7792: FLdPrThis
  loc_5E7793: VCallAd Control_ID_SSCommand2
  loc_5E7796: FStAdFunc var_90
  loc_5E7799: FLdPr var_90
  loc_5E779C: LateIdCall
  loc_5E77A4: FFree1Ad var_90
  loc_5E77A7: ImpAdLdRf MemVar_74DB7C
  loc_5E77AA: NewIfNullPr fDiferenciaCalibracion
  loc_5E77AD: fDiferenciaCalibracion.Hide
  loc_5E77B2: LitVar_Missing var_B0
  loc_5E77B5: PopAdLdVar
  loc_5E77B6: LitVarI2 var_A0, 1
  loc_5E77BB: PopAdLdVar
  loc_5E77BC: ImpAdLdRf MemVar_74DB90
  loc_5E77BF: NewIfNullPr fOffsetSensores
  loc_5E77C2: fOffsetSensores.Show from_stack_1, from_stack_2
  loc_5E77C7: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5E89FC
  'Data Table: 423198
  loc_5E897C: LitI2_Byte 1
  loc_5E897E: CUI1I2
  loc_5E8980: FLdRfVar var_86
  loc_5E8983: ImpAdLdUI1
  loc_5E8987: ForUI1 var_8A
  loc_5E898D: FLdUI1
  loc_5E8991: CI4UI1
  loc_5E8992: FLdPr Me
  loc_5E8995: MemLdRfVar from_stack_1.global_56
  loc_5E8998: Ary1LdCy
  loc_5E8999: CI2Cy
  loc_5E899A: FLdUI1
  loc_5E899E: CI4UI1
  loc_5E899F: ImpAdLdRf MemVar_74C260
  loc_5E89A2: Ary1StI2
  loc_5E89A3: FLdUI1
  loc_5E89A7: CI4UI1
  loc_5E89A8: FLdPr Me
  loc_5E89AB: MemLdRfVar from_stack_1.global_80
  loc_5E89AE: Ary1LdCy
  loc_5E89AF: CI2Cy
  loc_5E89B0: FLdUI1
  loc_5E89B4: CI4UI1
  loc_5E89B5: ImpAdLdRf MemVar_74C278
  loc_5E89B8: Ary1StI2
  loc_5E89B9: FLdRfVar var_86
  loc_5E89BC: NextUI1
  loc_5E89C2: FLdPrThis
  loc_5E89C3: VCallAd Control_ID_SSCommand2
  loc_5E89C6: FStAdFunc var_90
  loc_5E89C9: FLdPr var_90
  loc_5E89CC: LateIdCall
  loc_5E89D4: FFree1Ad var_90
  loc_5E89D7: ImpAdLdRf MemVar_74DB7C
  loc_5E89DA: NewIfNullPr fDiferenciaCalibracion
  loc_5E89DD: fDiferenciaCalibracion.Hide
  loc_5E89E2: LitI2_Byte 0
  loc_5E89E4: ImpAdLdRf MemVar_74C760
  loc_5E89E7: NewIfNullPr Formx
  loc_5E89EA: VCallAd Control_ID_Text4
  loc_5E89ED: FStAdFunc var_90
  loc_5E89F0: FLdPr var_90
  loc_5E89F3: Formx.TextBox.Visible = from_stack_1b
  loc_5E89F8: FFree1Ad var_90
  loc_5E89FB: ExitProcHresult
End Sub

Private Sub Text1_GotFocus(arg_C) '5F87F0
  'Data Table: 423198
  loc_5F8734: FLdPr Me
  loc_5F8737: MemLdUI1 global_52
  loc_5F873B: CBoolUI1
  loc_5F873D: BranchF loc_5F87EE
  loc_5F8740: LitI4 5
  loc_5F8745: FLdRfVar var_8C
  loc_5F8748: ILdI2 arg_C
  loc_5F874B: FLdPrThis
  loc_5F874C: VCallAd Control_ID_Text1
  loc_5F874F: FStAdFunc var_88
  loc_5F8752: FLdPr var_88
  loc_5F8755: Set from_stack_2 = Me(from_stack_1)
  loc_5F875A: FLdPr var_8C
  loc_5F875D: Me.MaxLength = from_stack_1
  loc_5F8762: FFreeAd var_88 = ""
  loc_5F8769: ILdI2 arg_C
  loc_5F876C: CI4UI1
  loc_5F876D: FLdPr Me
  loc_5F8770: MemLdRfVar from_stack_1.global_56
  loc_5F8773: Ary1LdCy
  loc_5F8774: LitCy 0
  loc_5F877D: EqCy
  loc_5F877E: BranchF loc_5F87AB
  loc_5F8781: LitStr vbNullString
  loc_5F8784: FLdRfVar var_8C
  loc_5F8787: ILdI2 arg_C
  loc_5F878A: FLdPrThis
  loc_5F878B: VCallAd Control_ID_Text1
  loc_5F878E: FStAdFunc var_88
  loc_5F8791: FLdPr var_88
  loc_5F8794: Set from_stack_2 = Me(from_stack_1)
  loc_5F8799: FLdPr var_8C
  loc_5F879C: Me.Text = from_stack_1
  loc_5F87A1: FFreeAd var_88 = ""
  loc_5F87A8: Branch loc_5F87EE
  loc_5F87AB: ILdI2 arg_C
  loc_5F87AE: CI4UI1
  loc_5F87AF: FLdPr Me
  loc_5F87B2: MemLdRfVar from_stack_1.global_56
  loc_5F87B5: Ary1LdCy
  loc_5F87B6: CStrCy
  loc_5F87B8: FStStrNoPop var_90
  loc_5F87BB: ImpAdCallI2 Trim$()
  loc_5F87C0: FStStrNoPop var_94
  loc_5F87C3: FLdRfVar var_8C
  loc_5F87C6: ILdI2 arg_C
  loc_5F87C9: FLdPrThis
  loc_5F87CA: VCallAd Control_ID_Text1
  loc_5F87CD: FStAdFunc var_88
  loc_5F87D0: FLdPr var_88
  loc_5F87D3: Set from_stack_2 = Me(from_stack_1)
  loc_5F87D8: FLdPr var_8C
  loc_5F87DB: Me.Text = from_stack_1
  loc_5F87E0: FFreeStr var_90 = ""
  loc_5F87E7: FFreeAd var_88 = ""
  loc_5F87EE: ExitProcHresult
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '5E8880
  'Data Table: 423198
  loc_5E8814: FLdRfVar var_90
  loc_5E8817: FLdRfVar var_8C
  loc_5E881A: ILdI2 KeyAscii
  loc_5E881D: FLdPrThis
  loc_5E881E: VCallAd Control_ID_Text1
  loc_5E8821: FStAdFunc var_88
  loc_5E8824: FLdPr var_88
  loc_5E8827: Set from_stack_2 = Me(from_stack_1)
  loc_5E882C: FLdPr var_8C
  loc_5E882F:  = Me.Text
  loc_5E8834: FLdRfVar var_9C
  loc_5E8837: FLdRfVar var_98
  loc_5E883A: ILdI2 KeyAscii
  loc_5E883D: FLdPrThis
  loc_5E883E: VCallAd Control_ID_Text1
  loc_5E8841: FStAdFunc var_94
  loc_5E8844: FLdPr var_94
  loc_5E8847: Set from_stack_2 = Me(from_stack_1)
  loc_5E884C: FLdPr var_98
  loc_5E884F:  = Me.SelStart
  loc_5E8854: LitI2_Byte 2
  loc_5E8856: CUI1I2
  loc_5E8858: LitI2 9999
  loc_5E885B: CCyI2
  loc_5E885C: ILdRf var_9C
  loc_5E885F: CUI1I4
  loc_5E8861: FLdZeroAd var_90
  loc_5E8864: PopTmpLdAdStr
  loc_5E8868: ILdRf arg_10
  loc_5E886B: ImpAdCallFPR4  = Proc_87_12_636CDC(, , , )
  loc_5E8870: FFree1Str var_A0
  loc_5E8873: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5E887E: ExitProcHresult
End Sub

Private Sub Text1_LostFocus(arg_C) '64C050
  'Data Table: 423198
  loc_64BE2C: FLdPr Me
  loc_64BE2F: MemLdUI1 global_52
  loc_64BE33: CBoolUI1
  loc_64BE35: BranchF loc_64C04D
  loc_64BE38: FLdRfVar var_90
  loc_64BE3B: FLdRfVar var_8C
  loc_64BE3E: ILdI2 arg_C
  loc_64BE41: FLdPrThis
  loc_64BE42: VCallAd Control_ID_Text1
  loc_64BE45: FStAdFunc var_88
  loc_64BE48: FLdPr var_88
  loc_64BE4B: Set from_stack_2 = Me(from_stack_1)
  loc_64BE50: FLdPr var_8C
  loc_64BE53:  = Me.Text
  loc_64BE58: FLdZeroAd var_90
  loc_64BE5B: PopTmpLdAdStr
  loc_64BE5F: ImpAdCallCy Proc_87_11_5EEA34()
  loc_64BE64: ILdI2 arg_C
  loc_64BE67: CI4UI1
  loc_64BE68: FLdPr Me
  loc_64BE6B: MemLdRfVar from_stack_1.global_56
  loc_64BE6E: Ary1StCy
  loc_64BE6F: FFree1Str var_94
  loc_64BE72: FFreeAd var_88 = ""
  loc_64BE79: ILdI2 arg_C
  loc_64BE7C: CI4UI1
  loc_64BE7D: FLdPr Me
  loc_64BE80: MemLdRfVar from_stack_1.global_56
  loc_64BE83: Ary1LdCy
  loc_64BE84: LitI2 9999
  loc_64BE87: CR8I2
  loc_64BE88: GtCyR8
  loc_64BE89: BranchF loc_64BFC2
  loc_64BE8C: ImpAdCallFPR4 Beep()
  loc_64BE91: FLdRfVar var_94
  loc_64BE94: LitVar_Missing var_1DC
  loc_64BE97: LitVar_Missing var_1BC
  loc_64BE9A: LitVar_Missing var_19C
  loc_64BE9D: LitVar_Missing var_17C
  loc_64BEA0: LitVar_Missing var_15C
  loc_64BEA3: LitVar_Missing var_13C
  loc_64BEA6: LitVar_Missing var_11C
  loc_64BEA9: LitVar_Missing var_FC
  loc_64BEAC: LitVar_Missing var_DC
  loc_64BEAF: LitVar_Missing var_BC
  loc_64BEB2: LitStr "La Altura máxima del nivel en el Sensor no puede exceder de 9999 milímetros."
  loc_64BEB5: FStStrCopy var_90
  loc_64BEB8: FLdRfVar var_90
  loc_64BEBB: LitI4 8
  loc_64BEC0: PopTmpLdAdStr var_9C
  loc_64BEC3: LitI2_Byte &H2C
  loc_64BEC5: PopTmpLdAd2 var_96
  loc_64BEC8: ImpAdLdRf MemVar_74C7D0
  loc_64BECB: NewIfNullPr clsMsg
  loc_64BECE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64BED3: LitI4 &HD
  loc_64BED8: FLdRfVar var_1EC
  loc_64BEDB: ImpAdCallFPR4  = Chr()
  loc_64BEE0: LitI4 &HA
  loc_64BEE5: FLdRfVar var_21C
  loc_64BEE8: ImpAdCallFPR4  = Chr()
  loc_64BEED: FLdRfVar var_37C
  loc_64BEF0: LitVar_Missing var_378
  loc_64BEF3: LitVar_Missing var_358
  loc_64BEF6: LitVar_Missing var_338
  loc_64BEF9: LitVar_Missing var_318
  loc_64BEFC: LitVar_Missing var_2F8
  loc_64BEFF: LitVar_Missing var_2D8
  loc_64BF02: LitVar_Missing var_2B8
  loc_64BF05: LitVar_Missing var_298
  loc_64BF08: LitVar_Missing var_278
  loc_64BF0B: LitVar_Missing var_258
  loc_64BF0E: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_64BF11: FStStrCopy var_238
  loc_64BF14: FLdRfVar var_238
  loc_64BF17: LitI4 9
  loc_64BF1C: PopTmpLdAdStr var_234
  loc_64BF1F: LitI2_Byte &H2C
  loc_64BF21: PopTmpLdAd2 var_22E
  loc_64BF24: ImpAdLdRf MemVar_74C7D0
  loc_64BF27: NewIfNullPr clsMsg
  loc_64BF2A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64BF2F: LitVar_Missing var_3CC
  loc_64BF32: LitVar_Missing var_3AC
  loc_64BF35: FLdZeroAd var_37C
  loc_64BF38: CVarStr var_38C
  loc_64BF3B: LitI4 &H10
  loc_64BF40: FLdZeroAd var_94
  loc_64BF43: CVarStr var_1FC
  loc_64BF46: FLdRfVar var_1EC
  loc_64BF49: ConcatVar var_20C
  loc_64BF4D: FLdRfVar var_21C
  loc_64BF50: ConcatVar var_22C
  loc_64BF54: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64BF59: FFreeStr var_90 = ""
  loc_64BF60: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_1EC = "": var_20C = "": var_21C = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_22C = "": var_38C = "": var_3AC = ""
  loc_64BF9B: FLdRfVar var_8C
  loc_64BF9E: ILdI2 arg_C
  loc_64BFA1: FLdPrThis
  loc_64BFA2: VCallAd Control_ID_Text1
  loc_64BFA5: FStAdFunc var_88
  loc_64BFA8: FLdPr var_88
  loc_64BFAB: Set from_stack_2 = Me(from_stack_1)
  loc_64BFB0: FLdPr var_8C
  loc_64BFB3: Me.SetFocus
  loc_64BFB8: FFreeAd var_88 = ""
  loc_64BFBF: Branch loc_64C04D
  loc_64BFC2: LitI4 &H10
  loc_64BFC7: FLdRfVar var_8C
  loc_64BFCA: ILdI2 arg_C
  loc_64BFCD: FLdPrThis
  loc_64BFCE: VCallAd Control_ID_Text1
  loc_64BFD1: FStAdFunc var_88
  loc_64BFD4: FLdPr var_88
  loc_64BFD7: Set from_stack_2 = Me(from_stack_1)
  loc_64BFDC: FLdPr var_8C
  loc_64BFDF: Me.MaxLength = from_stack_1
  loc_64BFE4: FFreeAd var_88 = ""
  loc_64BFEB: LitI4 1
  loc_64BFF0: LitI4 1
  loc_64BFF5: LitVarStr var_CC, "0 \m\m"
  loc_64BFFA: FStVarCopyObj var_BC
  loc_64BFFD: FLdRfVar var_BC
  loc_64C000: ILdI2 arg_C
  loc_64C003: CI4UI1
  loc_64C004: FLdPr Me
  loc_64C007: MemLdRfVar from_stack_1.global_56
  loc_64C00A: Ary1LdRf
  loc_64C00B: CVarRef
  loc_64C010: FLdRfVar var_DC
  loc_64C013: ImpAdCallFPR4  = Format(, )
  loc_64C018: FLdRfVar var_DC
  loc_64C01B: CStrVarVal var_90
  loc_64C01F: FLdRfVar var_8C
  loc_64C022: ILdI2 arg_C
  loc_64C025: FLdPrThis
  loc_64C026: VCallAd Control_ID_Text1
  loc_64C029: FStAdFunc var_88
  loc_64C02C: FLdPr var_88
  loc_64C02F: Set from_stack_2 = Me(from_stack_1)
  loc_64C034: FLdPr var_8C
  loc_64C037: Me.Text = from_stack_1
  loc_64C03C: FFree1Str var_90
  loc_64C03F: FFreeAd var_88 = ""
  loc_64C046: FFreeVar var_BC = ""
  loc_64C04D: ExitProcHresult
End Sub

Private Sub Combo1_Click(arg_C) '5DCE90
  'Data Table: 423198
  loc_5DCE4C: ILdI2 arg_C
  loc_5DCE4F: ImpAdLdUI1
  loc_5DCE53: CI2UI1
  loc_5DCE55: GtI2
  loc_5DCE56: BranchF loc_5DCE5A
  loc_5DCE59: ExitProcHresult
  loc_5DCE5A: FLdRfVar var_8E
  loc_5DCE5D: FLdRfVar var_8C
  loc_5DCE60: ILdI2 arg_C
  loc_5DCE63: FLdPrThis
  loc_5DCE64: VCallAd Control_ID_Combo1
  loc_5DCE67: FStAdFunc var_88
  loc_5DCE6A: FLdPr var_88
  loc_5DCE6D: Set from_stack_2 = Me(from_stack_1)
  loc_5DCE72: FLdPr var_8C
  loc_5DCE75:  = Me.ListIndex
  loc_5DCE7A: FLdI2 var_8E
  loc_5DCE7D: CUI1I2
  loc_5DCE7F: ILdI2 arg_C
  loc_5DCE82: CI4UI1
  loc_5DCE83: ImpAdLdRf MemVar_74C0C4
  loc_5DCE86: Ary1StUI1
  loc_5DCE88: FFreeAd var_88 = ""
  loc_5DCE8F: ExitProcHresult
End Sub

Private Sub Text2_GotFocus(arg_C) '5F68A0
  'Data Table: 423198
  loc_5F67E8: FLdPr Me
  loc_5F67EB: MemLdUI1 global_52
  loc_5F67EF: CBoolUI1
  loc_5F67F1: BranchF loc_5F689C
  loc_5F67F4: LitI4 6
  loc_5F67F9: FLdRfVar var_8C
  loc_5F67FC: ILdI2 arg_C
  loc_5F67FF: FLdPrThis
  loc_5F6800: VCallAd Control_ID_Text2
  loc_5F6803: FStAdFunc var_88
  loc_5F6806: FLdPr var_88
  loc_5F6809: Set from_stack_2 = Me(from_stack_1)
  loc_5F680E: FLdPr var_8C
  loc_5F6811: Me.MaxLength = from_stack_1
  loc_5F6816: FFreeAd var_88 = ""
  loc_5F681D: ILdI2 arg_C
  loc_5F6820: CI4UI1
  loc_5F6821: FLdPr Me
  loc_5F6824: MemLdRfVar from_stack_1.global_80
  loc_5F6827: Ary1LdCy
  loc_5F6828: LitI2_Byte 0
  loc_5F682A: CR8I2
  loc_5F682B: EqCyR8
  loc_5F682C: BranchF loc_5F6859
  loc_5F682F: LitStr vbNullString
  loc_5F6832: FLdRfVar var_8C
  loc_5F6835: ILdI2 arg_C
  loc_5F6838: FLdPrThis
  loc_5F6839: VCallAd Control_ID_Text2
  loc_5F683C: FStAdFunc var_88
  loc_5F683F: FLdPr var_88
  loc_5F6842: Set from_stack_2 = Me(from_stack_1)
  loc_5F6847: FLdPr var_8C
  loc_5F684A: Me.Text = from_stack_1
  loc_5F684F: FFreeAd var_88 = ""
  loc_5F6856: Branch loc_5F689C
  loc_5F6859: ILdI2 arg_C
  loc_5F685C: CI4UI1
  loc_5F685D: FLdPr Me
  loc_5F6860: MemLdRfVar from_stack_1.global_80
  loc_5F6863: Ary1LdCy
  loc_5F6864: CStrCy
  loc_5F6866: FStStrNoPop var_90
  loc_5F6869: ImpAdCallI2 Trim$()
  loc_5F686E: FStStrNoPop var_94
  loc_5F6871: FLdRfVar var_8C
  loc_5F6874: ILdI2 arg_C
  loc_5F6877: FLdPrThis
  loc_5F6878: VCallAd Control_ID_Text2
  loc_5F687B: FStAdFunc var_88
  loc_5F687E: FLdPr var_88
  loc_5F6881: Set from_stack_2 = Me(from_stack_1)
  loc_5F6886: FLdPr var_8C
  loc_5F6889: Me.Text = from_stack_1
  loc_5F688E: FFreeStr var_90 = ""
  loc_5F6895: FFreeAd var_88 = ""
  loc_5F689C: ExitProcHresult
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer) '5E84FC
  'Data Table: 423198
  loc_5E8490: FLdRfVar var_90
  loc_5E8493: FLdRfVar var_8C
  loc_5E8496: ILdI2 KeyAscii
  loc_5E8499: FLdPrThis
  loc_5E849A: VCallAd Control_ID_Text2
  loc_5E849D: FStAdFunc var_88
  loc_5E84A0: FLdPr var_88
  loc_5E84A3: Set from_stack_2 = Me(from_stack_1)
  loc_5E84A8: FLdPr var_8C
  loc_5E84AB:  = Me.Text
  loc_5E84B0: FLdRfVar var_9C
  loc_5E84B3: FLdRfVar var_98
  loc_5E84B6: ILdI2 KeyAscii
  loc_5E84B9: FLdPrThis
  loc_5E84BA: VCallAd Control_ID_Text2
  loc_5E84BD: FStAdFunc var_94
  loc_5E84C0: FLdPr var_94
  loc_5E84C3: Set from_stack_2 = Me(from_stack_1)
  loc_5E84C8: FLdPr var_98
  loc_5E84CB:  = Me.SelStart
  loc_5E84D0: LitI2_Byte 4
  loc_5E84D2: CUI1I2
  loc_5E84D4: LitI2 9999
  loc_5E84D7: CCyI2
  loc_5E84D8: ILdRf var_9C
  loc_5E84DB: CUI1I4
  loc_5E84DD: FLdZeroAd var_90
  loc_5E84E0: PopTmpLdAdStr
  loc_5E84E4: ILdRf arg_10
  loc_5E84E7: ImpAdCallFPR4  = Proc_87_12_636CDC(, , , )
  loc_5E84EC: FFree1Str var_A0
  loc_5E84EF: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5E84FA: ExitProcHresult
End Sub

Private Sub Text2_LostFocus(arg_C) '64C8EC
  'Data Table: 423198
  loc_64C6C4: FLdPr Me
  loc_64C6C7: MemLdUI1 global_52
  loc_64C6CB: CBoolUI1
  loc_64C6CD: BranchF loc_64C8EA
  loc_64C6D0: FLdRfVar var_90
  loc_64C6D3: FLdRfVar var_8C
  loc_64C6D6: ILdI2 arg_C
  loc_64C6D9: FLdPrThis
  loc_64C6DA: VCallAd Control_ID_Text2
  loc_64C6DD: FStAdFunc var_88
  loc_64C6E0: FLdPr var_88
  loc_64C6E3: Set from_stack_2 = Me(from_stack_1)
  loc_64C6E8: FLdPr var_8C
  loc_64C6EB:  = Me.Text
  loc_64C6F0: FLdZeroAd var_90
  loc_64C6F3: PopTmpLdAdStr
  loc_64C6F7: ImpAdCallCy Proc_87_11_5EEA34()
  loc_64C6FC: ILdI2 arg_C
  loc_64C6FF: CI4UI1
  loc_64C700: FLdPr Me
  loc_64C703: MemLdRfVar from_stack_1.global_80
  loc_64C706: Ary1StCy
  loc_64C707: FFree1Str var_94
  loc_64C70A: FFreeAd var_88 = ""
  loc_64C711: ILdI2 arg_C
  loc_64C714: CI4UI1
  loc_64C715: FLdPr Me
  loc_64C718: MemLdRfVar from_stack_1.global_80
  loc_64C71B: Ary1LdCy
  loc_64C71C: LitCy 4.94016239276662E-316
  loc_64C725: GtCy
  loc_64C726: BranchF loc_64C85F
  loc_64C729: ImpAdCallFPR4 Beep()
  loc_64C72E: FLdRfVar var_94
  loc_64C731: LitVar_Missing var_1DC
  loc_64C734: LitVar_Missing var_1BC
  loc_64C737: LitVar_Missing var_19C
  loc_64C73A: LitVar_Missing var_17C
  loc_64C73D: LitVar_Missing var_15C
  loc_64C740: LitVar_Missing var_13C
  loc_64C743: LitVar_Missing var_11C
  loc_64C746: LitVar_Missing var_FC
  loc_64C749: LitVar_Missing var_DC
  loc_64C74C: LitVar_Missing var_BC
  loc_64C74F: LitStr "La Altura máxima del nivel en la Varilla no puede exceder de 9999 milímetros."
  loc_64C752: FStStrCopy var_90
  loc_64C755: FLdRfVar var_90
  loc_64C758: LitI4 &HA
  loc_64C75D: PopTmpLdAdStr var_9C
  loc_64C760: LitI2_Byte &H2C
  loc_64C762: PopTmpLdAd2 var_96
  loc_64C765: ImpAdLdRf MemVar_74C7D0
  loc_64C768: NewIfNullPr clsMsg
  loc_64C76B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64C770: LitI4 &HD
  loc_64C775: FLdRfVar var_1EC
  loc_64C778: ImpAdCallFPR4  = Chr()
  loc_64C77D: LitI4 &HA
  loc_64C782: FLdRfVar var_21C
  loc_64C785: ImpAdCallFPR4  = Chr()
  loc_64C78A: FLdRfVar var_37C
  loc_64C78D: LitVar_Missing var_378
  loc_64C790: LitVar_Missing var_358
  loc_64C793: LitVar_Missing var_338
  loc_64C796: LitVar_Missing var_318
  loc_64C799: LitVar_Missing var_2F8
  loc_64C79C: LitVar_Missing var_2D8
  loc_64C79F: LitVar_Missing var_2B8
  loc_64C7A2: LitVar_Missing var_298
  loc_64C7A5: LitVar_Missing var_278
  loc_64C7A8: LitVar_Missing var_258
  loc_64C7AB: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_64C7AE: FStStrCopy var_238
  loc_64C7B1: FLdRfVar var_238
  loc_64C7B4: LitI4 9
  loc_64C7B9: PopTmpLdAdStr var_234
  loc_64C7BC: LitI2_Byte &H2C
  loc_64C7BE: PopTmpLdAd2 var_22E
  loc_64C7C1: ImpAdLdRf MemVar_74C7D0
  loc_64C7C4: NewIfNullPr clsMsg
  loc_64C7C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64C7CC: LitVar_Missing var_3CC
  loc_64C7CF: LitVar_Missing var_3AC
  loc_64C7D2: FLdZeroAd var_37C
  loc_64C7D5: CVarStr var_38C
  loc_64C7D8: LitI4 &H10
  loc_64C7DD: FLdZeroAd var_94
  loc_64C7E0: CVarStr var_1FC
  loc_64C7E3: FLdRfVar var_1EC
  loc_64C7E6: ConcatVar var_20C
  loc_64C7EA: FLdRfVar var_21C
  loc_64C7ED: ConcatVar var_22C
  loc_64C7F1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64C7F6: FFreeStr var_90 = ""
  loc_64C7FD: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_1EC = "": var_20C = "": var_21C = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_22C = "": var_38C = "": var_3AC = ""
  loc_64C838: FLdRfVar var_8C
  loc_64C83B: ILdI2 arg_C
  loc_64C83E: FLdPrThis
  loc_64C83F: VCallAd Control_ID_Text2
  loc_64C842: FStAdFunc var_88
  loc_64C845: FLdPr var_88
  loc_64C848: Set from_stack_2 = Me(from_stack_1)
  loc_64C84D: FLdPr var_8C
  loc_64C850: Me.SetFocus
  loc_64C855: FFreeAd var_88 = ""
  loc_64C85C: Branch loc_64C8EA
  loc_64C85F: LitI4 &HF
  loc_64C864: FLdRfVar var_8C
  loc_64C867: ILdI2 arg_C
  loc_64C86A: FLdPrThis
  loc_64C86B: VCallAd Control_ID_Text2
  loc_64C86E: FStAdFunc var_88
  loc_64C871: FLdPr var_88
  loc_64C874: Set from_stack_2 = Me(from_stack_1)
  loc_64C879: FLdPr var_8C
  loc_64C87C: Me.MaxLength = from_stack_1
  loc_64C881: FFreeAd var_88 = ""
  loc_64C888: LitI4 1
  loc_64C88D: LitI4 1
  loc_64C892: LitVarStr var_CC, " 0 \m\m"
  loc_64C897: FStVarCopyObj var_BC
  loc_64C89A: FLdRfVar var_BC
  loc_64C89D: ILdI2 arg_C
  loc_64C8A0: CI4UI1
  loc_64C8A1: FLdPr Me
  loc_64C8A4: MemLdRfVar from_stack_1.global_80
  loc_64C8A7: Ary1LdRf
  loc_64C8A8: CVarRef
  loc_64C8AD: FLdRfVar var_DC
  loc_64C8B0: ImpAdCallFPR4  = Format(, )
  loc_64C8B5: FLdRfVar var_DC
  loc_64C8B8: CStrVarVal var_90
  loc_64C8BC: FLdRfVar var_8C
  loc_64C8BF: ILdI2 arg_C
  loc_64C8C2: FLdPrThis
  loc_64C8C3: VCallAd Control_ID_Text2
  loc_64C8C6: FStAdFunc var_88
  loc_64C8C9: FLdPr var_88
  loc_64C8CC: Set from_stack_2 = Me(from_stack_1)
  loc_64C8D1: FLdPr var_8C
  loc_64C8D4: Me.Text = from_stack_1
  loc_64C8D9: FFree1Str var_90
  loc_64C8DC: FFreeAd var_88 = ""
  loc_64C8E3: FFreeVar var_BC = ""
  loc_64C8EA: ExitProcHresult
End Sub

Private Sub Form_Activate() '6C83C8
  'Data Table: 423198
  loc_6C7AF4: LitI2_Byte 0
  loc_6C7AF6: CUI1I2
  loc_6C7AF8: FLdPr Me
  loc_6C7AFB: MemStUI1
  loc_6C7AFF: FLdRfVar var_1D4
  loc_6C7B02: LitVar_Missing var_1D0
  loc_6C7B05: LitVar_Missing var_1B0
  loc_6C7B08: LitVar_Missing var_190
  loc_6C7B0B: LitVar_Missing var_170
  loc_6C7B0E: LitVar_Missing var_150
  loc_6C7B11: LitVar_Missing var_130
  loc_6C7B14: LitVar_Missing var_110
  loc_6C7B17: LitVar_Missing var_F0
  loc_6C7B1A: LitVar_Missing var_D0
  loc_6C7B1D: LitVar_Missing var_B0
  loc_6C7B20: LitStr "Configuración de diferencia de niveles y boca de calibración"
  loc_6C7B23: FStStrCopy var_90
  loc_6C7B26: FLdRfVar var_90
  loc_6C7B29: LitI4 1
  loc_6C7B2E: PopTmpLdAdStr var_8C
  loc_6C7B31: LitI2_Byte &H2C
  loc_6C7B33: PopTmpLdAd2 var_88
  loc_6C7B36: ImpAdLdRf MemVar_74C7D0
  loc_6C7B39: NewIfNullPr clsMsg
  loc_6C7B3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7B41: ILdRf var_1D4
  loc_6C7B44: FLdPr Me
  loc_6C7B47: Me.Caption = from_stack_1
  loc_6C7B4C: FFreeStr var_90 = ""
  loc_6C7B53: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C7B6A: FLdRfVar var_1D4
  loc_6C7B6D: LitVar_Missing var_1D0
  loc_6C7B70: LitVar_Missing var_1B0
  loc_6C7B73: LitVar_Missing var_190
  loc_6C7B76: LitVar_Missing var_170
  loc_6C7B79: LitVar_Missing var_150
  loc_6C7B7C: LitVar_Missing var_130
  loc_6C7B7F: LitVar_Missing var_110
  loc_6C7B82: LitVar_Missing var_F0
  loc_6C7B85: LitVar_Missing var_D0
  loc_6C7B88: LitVar_Missing var_B0
  loc_6C7B8B: LitStr "Altura Entrada Sensor"
  loc_6C7B8E: FStStrCopy var_90
  loc_6C7B91: FLdRfVar var_90
  loc_6C7B94: LitI4 2
  loc_6C7B99: PopTmpLdAdStr var_8C
  loc_6C7B9C: LitI2_Byte &H2C
  loc_6C7B9E: PopTmpLdAd2 var_88
  loc_6C7BA1: ImpAdLdRf MemVar_74C7D0
  loc_6C7BA4: NewIfNullPr clsMsg
  loc_6C7BA7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7BAC: ILdRf var_1D4
  loc_6C7BAF: FLdPrThis
  loc_6C7BB0: VCallAd Control_ID_Label2
  loc_6C7BB3: FStAdFunc var_1D8
  loc_6C7BB6: FLdPr var_1D8
  loc_6C7BB9: Me.Caption = from_stack_1
  loc_6C7BBE: FFreeStr var_90 = ""
  loc_6C7BC5: FFree1Ad var_1D8
  loc_6C7BC8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C7BDF: FLdRfVar var_1D4
  loc_6C7BE2: LitVar_Missing var_1D0
  loc_6C7BE5: LitVar_Missing var_1B0
  loc_6C7BE8: LitVar_Missing var_190
  loc_6C7BEB: LitVar_Missing var_170
  loc_6C7BEE: LitVar_Missing var_150
  loc_6C7BF1: LitVar_Missing var_130
  loc_6C7BF4: LitVar_Missing var_110
  loc_6C7BF7: LitVar_Missing var_F0
  loc_6C7BFA: LitVar_Missing var_D0
  loc_6C7BFD: LitVar_Missing var_B0
  loc_6C7C00: LitStr "Altura Entrada Varilla"
  loc_6C7C03: FStStrCopy var_90
  loc_6C7C06: FLdRfVar var_90
  loc_6C7C09: LitI4 3
  loc_6C7C0E: PopTmpLdAdStr var_8C
  loc_6C7C11: LitI2_Byte &H2C
  loc_6C7C13: PopTmpLdAd2 var_88
  loc_6C7C16: ImpAdLdRf MemVar_74C7D0
  loc_6C7C19: NewIfNullPr clsMsg
  loc_6C7C1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7C21: ILdRf var_1D4
  loc_6C7C24: FLdPrThis
  loc_6C7C25: VCallAd Control_ID_Label3
  loc_6C7C28: FStAdFunc var_1D8
  loc_6C7C2B: FLdPr var_1D8
  loc_6C7C2E: Me.Caption = from_stack_1
  loc_6C7C33: FFreeStr var_90 = ""
  loc_6C7C3A: FFree1Ad var_1D8
  loc_6C7C3D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C7C54: FLdRfVar var_1D4
  loc_6C7C57: LitVar_Missing var_1D0
  loc_6C7C5A: LitVar_Missing var_1B0
  loc_6C7C5D: LitVar_Missing var_190
  loc_6C7C60: LitVar_Missing var_170
  loc_6C7C63: LitVar_Missing var_150
  loc_6C7C66: LitVar_Missing var_130
  loc_6C7C69: LitVar_Missing var_110
  loc_6C7C6C: LitVar_Missing var_F0
  loc_6C7C6F: LitVar_Missing var_D0
  loc_6C7C72: LitVar_Missing var_B0
  loc_6C7C75: LitStr "Calibración por"
  loc_6C7C78: FStStrCopy var_90
  loc_6C7C7B: FLdRfVar var_90
  loc_6C7C7E: LitI4 4
  loc_6C7C83: PopTmpLdAdStr var_8C
  loc_6C7C86: LitI2_Byte &H2C
  loc_6C7C88: PopTmpLdAd2 var_88
  loc_6C7C8B: ImpAdLdRf MemVar_74C7D0
  loc_6C7C8E: NewIfNullPr clsMsg
  loc_6C7C91: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7C96: ILdRf var_1D4
  loc_6C7C99: FLdPrThis
  loc_6C7C9A: VCallAd Control_ID_Label4
  loc_6C7C9D: FStAdFunc var_1D8
  loc_6C7CA0: FLdPr var_1D8
  loc_6C7CA3: Me.Caption = from_stack_1
  loc_6C7CA8: FFreeStr var_90 = ""
  loc_6C7CAF: FFree1Ad var_1D8
  loc_6C7CB2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C7CC9: FLdRfVar var_1D4
  loc_6C7CCC: LitVar_Missing var_1D0
  loc_6C7CCF: LitVar_Missing var_1B0
  loc_6C7CD2: LitVar_Missing var_190
  loc_6C7CD5: LitVar_Missing var_170
  loc_6C7CD8: LitVar_Missing var_150
  loc_6C7CDB: LitVar_Missing var_130
  loc_6C7CDE: LitVar_Missing var_110
  loc_6C7CE1: LitVar_Missing var_F0
  loc_6C7CE4: LitVar_Missing var_D0
  loc_6C7CE7: LitVar_Missing var_B0
  loc_6C7CEA: LitStr "Página &Anterior"
  loc_6C7CED: FStStrCopy var_90
  loc_6C7CF0: FLdRfVar var_90
  loc_6C7CF3: LitI4 5
  loc_6C7CF8: PopTmpLdAdStr var_8C
  loc_6C7CFB: LitI2_Byte &H2C
  loc_6C7CFD: PopTmpLdAd2 var_88
  loc_6C7D00: ImpAdLdRf MemVar_74C7D0
  loc_6C7D03: NewIfNullPr clsMsg
  loc_6C7D06: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7D0B: FLdZeroAd var_1D4
  loc_6C7D0E: CVarStr var_1E8
  loc_6C7D11: PopAdLdVar
  loc_6C7D12: FLdPrThis
  loc_6C7D13: VCallAd Control_ID_SSCommand1
  loc_6C7D16: FStAdFunc var_1D8
  loc_6C7D19: FLdPr var_1D8
  loc_6C7D1C: LateIdSt
  loc_6C7D21: FFree1Str var_90
  loc_6C7D24: FFree1Ad var_1D8
  loc_6C7D27: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C7D40: FLdRfVar var_1D4
  loc_6C7D43: LitVar_Missing var_1D0
  loc_6C7D46: LitVar_Missing var_1B0
  loc_6C7D49: LitVar_Missing var_190
  loc_6C7D4C: LitVar_Missing var_170
  loc_6C7D4F: LitVar_Missing var_150
  loc_6C7D52: LitVar_Missing var_130
  loc_6C7D55: LitVar_Missing var_110
  loc_6C7D58: LitVar_Missing var_F0
  loc_6C7D5B: LitVar_Missing var_D0
  loc_6C7D5E: LitVar_Missing var_B0
  loc_6C7D61: LitStr "&Reset"
  loc_6C7D64: FStStrCopy var_90
  loc_6C7D67: FLdRfVar var_90
  loc_6C7D6A: LitI4 6
  loc_6C7D6F: PopTmpLdAdStr var_8C
  loc_6C7D72: LitI2_Byte &H2C
  loc_6C7D74: PopTmpLdAd2 var_88
  loc_6C7D77: ImpAdLdRf MemVar_74C7D0
  loc_6C7D7A: NewIfNullPr clsMsg
  loc_6C7D7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7D82: FLdZeroAd var_1D4
  loc_6C7D85: CVarStr var_1E8
  loc_6C7D88: PopAdLdVar
  loc_6C7D89: FLdPrThis
  loc_6C7D8A: VCallAd Control_ID_SSCommand3
  loc_6C7D8D: FStAdFunc var_1D8
  loc_6C7D90: FLdPr var_1D8
  loc_6C7D93: LateIdSt
  loc_6C7D98: FFree1Str var_90
  loc_6C7D9B: FFree1Ad var_1D8
  loc_6C7D9E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C7DB7: FLdRfVar var_1D4
  loc_6C7DBA: LitVar_Missing var_1D0
  loc_6C7DBD: LitVar_Missing var_1B0
  loc_6C7DC0: LitVar_Missing var_190
  loc_6C7DC3: LitVar_Missing var_170
  loc_6C7DC6: LitVar_Missing var_150
  loc_6C7DC9: LitVar_Missing var_130
  loc_6C7DCC: LitVar_Missing var_110
  loc_6C7DCF: LitVar_Missing var_F0
  loc_6C7DD2: LitVar_Missing var_D0
  loc_6C7DD5: LitVar_Missing var_B0
  loc_6C7DD8: LitStr "&Cancelar"
  loc_6C7DDB: FStStrCopy var_90
  loc_6C7DDE: FLdRfVar var_90
  loc_6C7DE1: LitI4 7
  loc_6C7DE6: PopTmpLdAdStr var_8C
  loc_6C7DE9: LitI2_Byte &H2C
  loc_6C7DEB: PopTmpLdAd2 var_88
  loc_6C7DEE: ImpAdLdRf MemVar_74C7D0
  loc_6C7DF1: NewIfNullPr clsMsg
  loc_6C7DF4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7DF9: FLdZeroAd var_1D4
  loc_6C7DFC: CVarStr var_1E8
  loc_6C7DFF: PopAdLdVar
  loc_6C7E00: FLdPrThis
  loc_6C7E01: VCallAd Control_ID_sscCancel
  loc_6C7E04: FStAdFunc var_1D8
  loc_6C7E07: FLdPr var_1D8
  loc_6C7E0A: LateIdSt
  loc_6C7E0F: FFree1Str var_90
  loc_6C7E12: FFree1Ad var_1D8
  loc_6C7E15: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C7E2E: FLdRfVar var_1D4
  loc_6C7E31: LitVar_Missing var_1D0
  loc_6C7E34: LitVar_Missing var_1B0
  loc_6C7E37: LitVar_Missing var_190
  loc_6C7E3A: LitVar_Missing var_170
  loc_6C7E3D: LitVar_Missing var_150
  loc_6C7E40: LitVar_Missing var_130
  loc_6C7E43: LitVar_Missing var_110
  loc_6C7E46: LitVar_Missing var_F0
  loc_6C7E49: LitVar_Missing var_D0
  loc_6C7E4C: LitVar_Missing var_B0
  loc_6C7E4F: LitStr "&Finalizar"
  loc_6C7E52: FStStrCopy var_90
  loc_6C7E55: FLdRfVar var_90
  loc_6C7E58: LitI4 8
  loc_6C7E5D: PopTmpLdAdStr var_8C
  loc_6C7E60: LitI2_Byte &H2C
  loc_6C7E62: PopTmpLdAd2 var_88
  loc_6C7E65: ImpAdLdRf MemVar_74C7D0
  loc_6C7E68: NewIfNullPr clsMsg
  loc_6C7E6B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7E70: FLdZeroAd var_1D4
  loc_6C7E73: CVarStr var_1E8
  loc_6C7E76: PopAdLdVar
  loc_6C7E77: FLdPrThis
  loc_6C7E78: VCallAd Control_ID_SSCommand2
  loc_6C7E7B: FStAdFunc var_1D8
  loc_6C7E7E: FLdPr var_1D8
  loc_6C7E81: LateIdSt
  loc_6C7E86: FFree1Str var_90
  loc_6C7E89: FFree1Ad var_1D8
  loc_6C7E8C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6C7EA5: LitI2_Byte 1
  loc_6C7EA7: CUI1I2
  loc_6C7EA9: FLdRfVar var_86
  loc_6C7EAC: LitI2_Byte &H10
  loc_6C7EAE: CUI1I2
  loc_6C7EB0: ForUI1 var_1EC
  loc_6C7EB6: FLdRfVar var_1D4
  loc_6C7EB9: LitVar_Missing var_1D0
  loc_6C7EBC: LitVar_Missing var_1B0
  loc_6C7EBF: LitVar_Missing var_190
  loc_6C7EC2: LitVar_Missing var_170
  loc_6C7EC5: LitVar_Missing var_150
  loc_6C7EC8: LitVar_Missing var_130
  loc_6C7ECB: LitVar_Missing var_110
  loc_6C7ECE: LitVar_Missing var_F0
  loc_6C7ED1: LitVar_Missing var_D0
  loc_6C7ED4: LitVar_Missing var_B0
  loc_6C7ED7: LitStr "   Tanque"
  loc_6C7EDA: FStStrCopy var_90
  loc_6C7EDD: FLdRfVar var_90
  loc_6C7EE0: LitI4 &HF
  loc_6C7EE5: PopTmpLdAdStr var_8C
  loc_6C7EE8: LitI2_Byte &H13
  loc_6C7EEA: PopTmpLdAd2 var_88
  loc_6C7EED: ImpAdLdRf MemVar_74C7D0
  loc_6C7EF0: NewIfNullPr clsMsg
  loc_6C7EF3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7EF8: ILdRf var_1D4
  loc_6C7EFB: LitStr " "
  loc_6C7EFE: ConcatStr
  loc_6C7EFF: FStStrNoPop var_1F0
  loc_6C7F02: FLdUI1
  loc_6C7F06: CStrI2
  loc_6C7F08: FStStrNoPop var_1F4
  loc_6C7F0B: ConcatStr
  loc_6C7F0C: FStStrNoPop var_1F8
  loc_6C7F0F: LitStr " :"
  loc_6C7F12: ConcatStr
  loc_6C7F13: FStStrNoPop var_200
  loc_6C7F16: FLdRfVar var_1FC
  loc_6C7F19: FLdUI1
  loc_6C7F1D: CI2UI1
  loc_6C7F1F: FLdPrThis
  loc_6C7F20: VCallAd Control_ID_Label1
  loc_6C7F23: FStAdFunc var_1D8
  loc_6C7F26: FLdPr var_1D8
  loc_6C7F29: Set from_stack_2 = Me(from_stack_1)
  loc_6C7F2E: FLdPr var_1FC
  loc_6C7F31: Me.Caption = from_stack_1
  loc_6C7F36: FFreeStr var_90 = "": var_1D4 = "": var_1F0 = "": var_1F4 = "": var_1F8 = ""
  loc_6C7F45: FFreeAd var_1D8 = ""
  loc_6C7F4C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C7F63: FLdRfVar var_1FC
  loc_6C7F66: FLdUI1
  loc_6C7F6A: CI2UI1
  loc_6C7F6C: FLdPrThis
  loc_6C7F6D: VCallAd Control_ID_Combo1
  loc_6C7F70: FStAdFunc var_1D8
  loc_6C7F73: FLdPr var_1D8
  loc_6C7F76: Set from_stack_2 = Me(from_stack_1)
  loc_6C7F7B: FLdPr var_1FC
  loc_6C7F7E: Me.Clear
  loc_6C7F83: FFreeAd var_1D8 = ""
  loc_6C7F8A: FLdRfVar var_1D4
  loc_6C7F8D: LitVar_Missing var_1D0
  loc_6C7F90: LitVar_Missing var_1B0
  loc_6C7F93: LitVar_Missing var_190
  loc_6C7F96: LitVar_Missing var_170
  loc_6C7F99: LitVar_Missing var_150
  loc_6C7F9C: LitVar_Missing var_130
  loc_6C7F9F: LitVar_Missing var_110
  loc_6C7FA2: LitVar_Missing var_F0
  loc_6C7FA5: LitVar_Missing var_D0
  loc_6C7FA8: LitVar_Missing var_B0
  loc_6C7FAB: LitStr "Entrada Sendor"
  loc_6C7FAE: FStStrCopy var_90
  loc_6C7FB1: FLdRfVar var_90
  loc_6C7FB4: LitI4 &HE
  loc_6C7FB9: PopTmpLdAdStr var_8C
  loc_6C7FBC: LitI2_Byte &H2C
  loc_6C7FBE: PopTmpLdAd2 var_88
  loc_6C7FC1: ImpAdLdRf MemVar_74C7D0
  loc_6C7FC4: NewIfNullPr clsMsg
  loc_6C7FC7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C7FCC: LitVarI2 var_210, 0
  loc_6C7FD1: PopAdLdVar
  loc_6C7FD2: ILdRf var_1D4
  loc_6C7FD5: FLdRfVar var_1FC
  loc_6C7FD8: FLdUI1
  loc_6C7FDC: CI2UI1
  loc_6C7FDE: FLdPrThis
  loc_6C7FDF: VCallAd Control_ID_Combo1
  loc_6C7FE2: FStAdFunc var_1D8
  loc_6C7FE5: FLdPr var_1D8
  loc_6C7FE8: Set from_stack_2 = Me(from_stack_1)
  loc_6C7FED: FLdPr var_1FC
  loc_6C7FF0: Me.AddItem from_stack_1, from_stack_2
  loc_6C7FF5: FFreeStr var_90 = ""
  loc_6C7FFC: FFreeAd var_1D8 = ""
  loc_6C8003: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C801A: FLdRfVar var_1D4
  loc_6C801D: LitVar_Missing var_1D0
  loc_6C8020: LitVar_Missing var_1B0
  loc_6C8023: LitVar_Missing var_190
  loc_6C8026: LitVar_Missing var_170
  loc_6C8029: LitVar_Missing var_150
  loc_6C802C: LitVar_Missing var_130
  loc_6C802F: LitVar_Missing var_110
  loc_6C8032: LitVar_Missing var_F0
  loc_6C8035: LitVar_Missing var_D0
  loc_6C8038: LitVar_Missing var_B0
  loc_6C803B: LitStr "Entrada Varilla"
  loc_6C803E: FStStrCopy var_90
  loc_6C8041: FLdRfVar var_90
  loc_6C8044: LitI4 &HF
  loc_6C8049: PopTmpLdAdStr var_8C
  loc_6C804C: LitI2_Byte &H2C
  loc_6C804E: PopTmpLdAd2 var_88
  loc_6C8051: ImpAdLdRf MemVar_74C7D0
  loc_6C8054: NewIfNullPr clsMsg
  loc_6C8057: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C805C: LitVarI2 var_210, 1
  loc_6C8061: PopAdLdVar
  loc_6C8062: ILdRf var_1D4
  loc_6C8065: FLdRfVar var_1FC
  loc_6C8068: FLdUI1
  loc_6C806C: CI2UI1
  loc_6C806E: FLdPrThis
  loc_6C806F: VCallAd Control_ID_Combo1
  loc_6C8072: FStAdFunc var_1D8
  loc_6C8075: FLdPr var_1D8
  loc_6C8078: Set from_stack_2 = Me(from_stack_1)
  loc_6C807D: FLdPr var_1FC
  loc_6C8080: Me.AddItem from_stack_1, from_stack_2
  loc_6C8085: FFreeStr var_90 = ""
  loc_6C808C: FFreeAd var_1D8 = ""
  loc_6C8093: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C80AA: FLdUI1
  loc_6C80AE: ImpAdLdUI1
  loc_6C80B2: LeUI1
  loc_6C80B4: BranchF loc_6C828C
  loc_6C80B7: LitI4 &HFF00
  loc_6C80BC: FLdRfVar var_1FC
  loc_6C80BF: FLdUI1
  loc_6C80C3: CI2UI1
  loc_6C80C5: FLdPrThis
  loc_6C80C6: VCallAd Control_ID_Label1
  loc_6C80C9: FStAdFunc var_1D8
  loc_6C80CC: FLdPr var_1D8
  loc_6C80CF: Set from_stack_2 = Me(from_stack_1)
  loc_6C80D4: FLdPr var_1FC
  loc_6C80D7: Me.ForeColor = from_stack_1
  loc_6C80DC: FFreeAd var_1D8 = ""
  loc_6C80E3: LitI2_Byte &HFF
  loc_6C80E5: FLdRfVar var_1FC
  loc_6C80E8: FLdUI1
  loc_6C80EC: CI2UI1
  loc_6C80EE: FLdPrThis
  loc_6C80EF: VCallAd Control_ID_Text1
  loc_6C80F2: FStAdFunc var_1D8
  loc_6C80F5: FLdPr var_1D8
  loc_6C80F8: Set from_stack_2 = Me(from_stack_1)
  loc_6C80FD: FLdPr var_1FC
  loc_6C8100: Me.Enabled = from_stack_1b
  loc_6C8105: FFreeAd var_1D8 = ""
  loc_6C810C: LitI2_Byte &HFF
  loc_6C810E: FLdRfVar var_1FC
  loc_6C8111: FLdUI1
  loc_6C8115: CI2UI1
  loc_6C8117: FLdPrThis
  loc_6C8118: VCallAd Control_ID_Text2
  loc_6C811B: FStAdFunc var_1D8
  loc_6C811E: FLdPr var_1D8
  loc_6C8121: Set from_stack_2 = Me(from_stack_1)
  loc_6C8126: FLdPr var_1FC
  loc_6C8129: Me.Enabled = from_stack_1b
  loc_6C812E: FFreeAd var_1D8 = ""
  loc_6C8135: LitI2_Byte &HFF
  loc_6C8137: FLdRfVar var_1FC
  loc_6C813A: FLdUI1
  loc_6C813E: CI2UI1
  loc_6C8140: FLdPrThis
  loc_6C8141: VCallAd Control_ID_Combo1
  loc_6C8144: FStAdFunc var_1D8
  loc_6C8147: FLdPr var_1D8
  loc_6C814A: Set from_stack_2 = Me(from_stack_1)
  loc_6C814F: FLdPr var_1FC
  loc_6C8152: Me.Enabled = from_stack_1b
  loc_6C8157: FFreeAd var_1D8 = ""
  loc_6C815E: FLdUI1
  loc_6C8162: CI4UI1
  loc_6C8163: ImpAdLdRf MemVar_74C260
  loc_6C8166: Ary1LdI2
  loc_6C8167: CCyI2
  loc_6C8168: FLdUI1
  loc_6C816C: CI4UI1
  loc_6C816D: FLdPr Me
  loc_6C8170: MemLdRfVar from_stack_1.global_56
  loc_6C8173: Ary1StCy
  loc_6C8174: FLdUI1
  loc_6C8178: CI4UI1
  loc_6C8179: ImpAdLdRf MemVar_74C278
  loc_6C817C: Ary1LdI2
  loc_6C817D: CCyI2
  loc_6C817E: FLdUI1
  loc_6C8182: CI4UI1
  loc_6C8183: FLdPr Me
  loc_6C8186: MemLdRfVar from_stack_1.global_80
  loc_6C8189: Ary1StCy
  loc_6C818A: LitI4 1
  loc_6C818F: LitI4 1
  loc_6C8194: LitVarStr var_C0, " 0 \m\m"
  loc_6C8199: FStVarCopyObj var_B0
  loc_6C819C: FLdRfVar var_B0
  loc_6C819F: FLdUI1
  loc_6C81A3: CI4UI1
  loc_6C81A4: FLdPr Me
  loc_6C81A7: MemLdRfVar from_stack_1.global_56
  loc_6C81AA: Ary1LdRf
  loc_6C81AB: CVarRef
  loc_6C81B0: FLdRfVar var_D0
  loc_6C81B3: ImpAdCallFPR4  = Format(, )
  loc_6C81B8: FLdRfVar var_D0
  loc_6C81BB: CStrVarVal var_90
  loc_6C81BF: FLdRfVar var_1FC
  loc_6C81C2: FLdUI1
  loc_6C81C6: CI2UI1
  loc_6C81C8: FLdPrThis
  loc_6C81C9: VCallAd Control_ID_Text1
  loc_6C81CC: FStAdFunc var_1D8
  loc_6C81CF: FLdPr var_1D8
  loc_6C81D2: Set from_stack_2 = Me(from_stack_1)
  loc_6C81D7: FLdPr var_1FC
  loc_6C81DA: Me.Text = from_stack_1
  loc_6C81DF: FFree1Str var_90
  loc_6C81E2: FFreeAd var_1D8 = ""
  loc_6C81E9: FFreeVar var_B0 = ""
  loc_6C81F0: LitI4 1
  loc_6C81F5: LitI4 1
  loc_6C81FA: LitVarStr var_C0, " 0 \m\m"
  loc_6C81FF: FStVarCopyObj var_B0
  loc_6C8202: FLdRfVar var_B0
  loc_6C8205: FLdUI1
  loc_6C8209: CI4UI1
  loc_6C820A: FLdPr Me
  loc_6C820D: MemLdRfVar from_stack_1.global_80
  loc_6C8210: Ary1LdRf
  loc_6C8211: CVarRef
  loc_6C8216: FLdRfVar var_D0
  loc_6C8219: ImpAdCallFPR4  = Format(, )
  loc_6C821E: FLdRfVar var_D0
  loc_6C8221: CStrVarVal var_90
  loc_6C8225: FLdRfVar var_1FC
  loc_6C8228: FLdUI1
  loc_6C822C: CI2UI1
  loc_6C822E: FLdPrThis
  loc_6C822F: VCallAd Control_ID_Text2
  loc_6C8232: FStAdFunc var_1D8
  loc_6C8235: FLdPr var_1D8
  loc_6C8238: Set from_stack_2 = Me(from_stack_1)
  loc_6C823D: FLdPr var_1FC
  loc_6C8240: Me.Text = from_stack_1
  loc_6C8245: FFree1Str var_90
  loc_6C8248: FFreeAd var_1D8 = ""
  loc_6C824F: FFreeVar var_B0 = ""
  loc_6C8256: FLdUI1
  loc_6C825A: CI4UI1
  loc_6C825B: ImpAdLdRf MemVar_74C0C4
  loc_6C825E: Ary1LdUI1
  loc_6C8260: CI2UI1
  loc_6C8262: FLdRfVar var_1FC
  loc_6C8265: FLdUI1
  loc_6C8269: CI2UI1
  loc_6C826B: FLdPrThis
  loc_6C826C: VCallAd Control_ID_Combo1
  loc_6C826F: FStAdFunc var_1D8
  loc_6C8272: FLdPr var_1D8
  loc_6C8275: Set from_stack_2 = Me(from_stack_1)
  loc_6C827A: FLdPr var_1FC
  loc_6C827D: Me.ListIndex = from_stack_1
  loc_6C8282: FFreeAd var_1D8 = ""
  loc_6C8289: Branch loc_6C83B0
  loc_6C828C: LitI4 &HC0C0C0
  loc_6C8291: FLdRfVar var_1FC
  loc_6C8294: FLdUI1
  loc_6C8298: CI2UI1
  loc_6C829A: FLdPrThis
  loc_6C829B: VCallAd Control_ID_Label1
  loc_6C829E: FStAdFunc var_1D8
  loc_6C82A1: FLdPr var_1D8
  loc_6C82A4: Set from_stack_2 = Me(from_stack_1)
  loc_6C82A9: FLdPr var_1FC
  loc_6C82AC: Me.ForeColor = from_stack_1
  loc_6C82B1: FFreeAd var_1D8 = ""
  loc_6C82B8: LitStr vbNullString
  loc_6C82BB: FLdRfVar var_1FC
  loc_6C82BE: FLdUI1
  loc_6C82C2: CI2UI1
  loc_6C82C4: FLdPrThis
  loc_6C82C5: VCallAd Control_ID_Text1
  loc_6C82C8: FStAdFunc var_1D8
  loc_6C82CB: FLdPr var_1D8
  loc_6C82CE: Set from_stack_2 = Me(from_stack_1)
  loc_6C82D3: FLdPr var_1FC
  loc_6C82D6: Me.Text = from_stack_1
  loc_6C82DB: FFreeAd var_1D8 = ""
  loc_6C82E2: LitStr vbNullString
  loc_6C82E5: FLdRfVar var_1FC
  loc_6C82E8: FLdUI1
  loc_6C82EC: CI2UI1
  loc_6C82EE: FLdPrThis
  loc_6C82EF: VCallAd Control_ID_Text2
  loc_6C82F2: FStAdFunc var_1D8
  loc_6C82F5: FLdPr var_1D8
  loc_6C82F8: Set from_stack_2 = Me(from_stack_1)
  loc_6C82FD: FLdPr var_1FC
  loc_6C8300: Me.Text = from_stack_1
  loc_6C8305: FFreeAd var_1D8 = ""
  loc_6C830C: LitI2_Byte &HFF
  loc_6C830E: FLdRfVar var_1FC
  loc_6C8311: FLdUI1
  loc_6C8315: CI2UI1
  loc_6C8317: FLdPrThis
  loc_6C8318: VCallAd Control_ID_Combo1
  loc_6C831B: FStAdFunc var_1D8
  loc_6C831E: FLdPr var_1D8
  loc_6C8321: Set from_stack_2 = Me(from_stack_1)
  loc_6C8326: FLdPr var_1FC
  loc_6C8329: Me.ListIndex = from_stack_1
  loc_6C832E: FFreeAd var_1D8 = ""
  loc_6C8335: LitI2_Byte 0
  loc_6C8337: FLdRfVar var_1FC
  loc_6C833A: FLdUI1
  loc_6C833E: CI2UI1
  loc_6C8340: FLdPrThis
  loc_6C8341: VCallAd Control_ID_Text1
  loc_6C8344: FStAdFunc var_1D8
  loc_6C8347: FLdPr var_1D8
  loc_6C834A: Set from_stack_2 = Me(from_stack_1)
  loc_6C834F: FLdPr var_1FC
  loc_6C8352: Me.Enabled = from_stack_1b
  loc_6C8357: FFreeAd var_1D8 = ""
  loc_6C835E: LitI2_Byte 0
  loc_6C8360: FLdRfVar var_1FC
  loc_6C8363: FLdUI1
  loc_6C8367: CI2UI1
  loc_6C8369: FLdPrThis
  loc_6C836A: VCallAd Control_ID_Text2
  loc_6C836D: FStAdFunc var_1D8
  loc_6C8370: FLdPr var_1D8
  loc_6C8373: Set from_stack_2 = Me(from_stack_1)
  loc_6C8378: FLdPr var_1FC
  loc_6C837B: Me.Enabled = from_stack_1b
  loc_6C8380: FFreeAd var_1D8 = ""
  loc_6C8387: LitI2_Byte 0
  loc_6C8389: FLdRfVar var_1FC
  loc_6C838C: FLdUI1
  loc_6C8390: CI2UI1
  loc_6C8392: FLdPrThis
  loc_6C8393: VCallAd Control_ID_Combo1
  loc_6C8396: FStAdFunc var_1D8
  loc_6C8399: FLdPr var_1D8
  loc_6C839C: Set from_stack_2 = Me(from_stack_1)
  loc_6C83A1: FLdPr var_1FC
  loc_6C83A4: Me.Enabled = from_stack_1b
  loc_6C83A9: FFreeAd var_1D8 = ""
  loc_6C83B0: FLdRfVar var_86
  loc_6C83B3: NextUI1
  loc_6C83B9: LitI2_Byte 1
  loc_6C83BB: CUI1I2
  loc_6C83BD: FLdPr Me
  loc_6C83C0: MemStUI1
  loc_6C83C4: ExitProcHresult
End Sub
