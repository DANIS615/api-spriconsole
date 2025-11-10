VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmMezclas
  Caption = "Configuración de Mezclas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12120
  ClientHeight = 6420
  StartUpPosition = 1 'CenterOwner
  Begin Threed.SSCommand SSCommand2
    Left = 9120
    Top = 5520
    Width = 2655
    Height = 735
    TabIndex = 58
    OleObjectBlob = "frmMezclas.frx":0000
  End
  Begin Threed.SSCommand Anterior
    Left = 120
    Top = 5520
    Width = 2775
    Height = 735
    TabIndex = 57
    OleObjectBlob = "frmMezclas.frx":006D
  End
  Begin VB.TextBox Text5
    Index = 8
    Left = 120
    Top = 4920
    Width = 615
    Height = 420
    TabIndex = 56
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
  Begin VB.TextBox Text6
    Index = 8
    Left = 840
    Top = 4920
    Width = 3135
    Height = 405
    TabIndex = 55
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 4920
    Width = 3400
    Height = 420
    TabIndex = 54
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
  Begin VB.TextBox Text7
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 4920
    Width = 615
    Height = 420
    TabIndex = 53
    MaxLength = 3
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 8
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 4920
    Width = 3400
    Height = 420
    TabIndex = 52
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
  Begin VB.TextBox Text8
    Index = 8
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 4920
    Width = 615
    Height = 420
    TabIndex = 51
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
  Begin VB.CommandButton Command3
    Caption = "&Cancelar"
    Left = 6120
    Top = 5520
    Width = 2775
    Height = 735
    TabIndex = 50
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command2
    Caption = "&Reset"
    Left = 3120
    Top = 5520
    Width = 2775
    Height = 735
    TabIndex = 49
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text8
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 4320
    Width = 615
    Height = 420
    TabIndex = 48
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
  Begin VB.TextBox Text8
    Index = 6
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 3720
    Width = 615
    Height = 420
    TabIndex = 47
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
  Begin VB.TextBox Text8
    Index = 5
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 3120
    Width = 615
    Height = 420
    TabIndex = 46
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
  Begin VB.TextBox Text8
    Index = 4
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 2520
    Width = 615
    Height = 420
    TabIndex = 45
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
  Begin VB.TextBox Text8
    Index = 3
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 1920
    Width = 615
    Height = 420
    TabIndex = 44
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
  Begin VB.TextBox Text8
    Index = 2
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 1320
    Width = 615
    Height = 420
    TabIndex = 43
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
  Begin VB.TextBox Text8
    Index = 1
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 11280
    Top = 720
    Width = 615
    Height = 420
    TabIndex = 42
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 4320
    Width = 3400
    Height = 420
    TabIndex = 41
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 6
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 3720
    Width = 3400
    Height = 420
    TabIndex = 40
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 5
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 3120
    Width = 3400
    Height = 420
    TabIndex = 39
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 4
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 2520
    Width = 3400
    Height = 420
    TabIndex = 38
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 3
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 1920
    Width = 3400
    Height = 420
    TabIndex = 37
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 2
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 1320
    Width = 3400
    Height = 420
    TabIndex = 36
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
  Begin VB.ComboBox Combo2
    Style = 2
    Index = 1
    BackColor = &HC0FFC0&
    ForeColor = &H404040&
    Left = 7920
    Top = 720
    Width = 3400
    Height = 420
    TabIndex = 35
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
  Begin VB.TextBox Text7
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 4320
    Width = 615
    Height = 420
    TabIndex = 34
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 3720
    Width = 615
    Height = 420
    TabIndex = 33
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 3120
    Width = 615
    Height = 420
    TabIndex = 32
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 2520
    Width = 615
    Height = 420
    TabIndex = 31
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 1920
    Width = 615
    Height = 420
    TabIndex = 30
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 1320
    Width = 615
    Height = 420
    TabIndex = 29
    MaxLength = 3
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
  Begin VB.TextBox Text7
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 7320
    Top = 720
    Width = 615
    Height = 420
    TabIndex = 28
    MaxLength = 3
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 4320
    Width = 3400
    Height = 420
    TabIndex = 20
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 3720
    Width = 3400
    Height = 420
    TabIndex = 19
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 3120
    Width = 3400
    Height = 420
    TabIndex = 18
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 2520
    Width = 3400
    Height = 420
    TabIndex = 17
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 1920
    Width = 3400
    Height = 420
    TabIndex = 16
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 1320
    Width = 3400
    Height = 420
    TabIndex = 15
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H404040&
    Left = 3960
    Top = 720
    Width = 3400
    Height = 420
    TabIndex = 14
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
  Begin VB.TextBox Text5
    Index = 7
    Left = 120
    Top = 4320
    Width = 615
    Height = 420
    TabIndex = 13
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
  Begin VB.TextBox Text5
    Index = 6
    Left = 120
    Top = 3720
    Width = 615
    Height = 420
    TabIndex = 12
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
  Begin VB.TextBox Text5
    Index = 5
    Left = 120
    Top = 3120
    Width = 615
    Height = 420
    TabIndex = 11
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
  Begin VB.TextBox Text5
    Index = 4
    Left = 120
    Top = 2520
    Width = 615
    Height = 420
    TabIndex = 10
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
  Begin VB.TextBox Text5
    Index = 3
    Left = 120
    Top = 1920
    Width = 615
    Height = 420
    TabIndex = 9
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
  Begin VB.TextBox Text5
    Index = 2
    Left = 120
    Top = 1320
    Width = 615
    Height = 420
    TabIndex = 8
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
  Begin VB.TextBox Text5
    Index = 1
    Left = 120
    Top = 720
    Width = 615
    Height = 420
    TabIndex = 7
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
  Begin VB.TextBox Text4
    Index = 2
    BackColor = &HC0FFC0&
    Left = 11280
    Top = 120
    Width = 615
    Height = 420
    Enabled = 0   'False
    Text = " %"
    TabIndex = 6
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
  Begin VB.TextBox Text4
    Index = 1
    Left = 120
    Top = 120
    Width = 615
    Height = 420
    Enabled = 0   'False
    Text = "Cod."
    TabIndex = 5
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
  Begin VB.TextBox Text4
    Index = 0
    BackColor = &HC0FFFF&
    Left = 7320
    Top = 120
    Width = 615
    Height = 420
    Enabled = 0   'False
    Text = " %"
    TabIndex = 3
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
  Begin VB.TextBox Text3
    BackColor = &HC0FFC0&
    Left = 7920
    Top = 120
    Width = 3400
    Height = 420
    Enabled = 0   'False
    Text = "         Producto Alto"
    TabIndex = 2
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
    BackColor = &HC0FFFF&
    Left = 3960
    Top = 120
    Width = 3400
    Height = 420
    Enabled = 0   'False
    Text = "        Producto Bajo"
    TabIndex = 1
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
    BackColor = &HC0C0FF&
    ForeColor = &H400040&
    Left = 840
    Top = 120
    Width = 3135
    Height = 420
    Enabled = 0   'False
    Text = "               Mezcla"
    TabIndex = 0
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
  Begin VB.Frame Frame1
    Left = 0
    Top = -120
    Width = 12015
    Height = 5535
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox Text6
      Index = 7
      Left = 840
      Top = 4440
      Width = 3135
      Height = 405
      TabIndex = 27
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
    Begin VB.TextBox Text6
      Index = 6
      Left = 840
      Top = 3840
      Width = 3135
      Height = 405
      TabIndex = 26
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
    Begin VB.TextBox Text6
      Index = 5
      Left = 840
      Top = 3240
      Width = 3135
      Height = 405
      TabIndex = 25
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
    Begin VB.TextBox Text6
      Index = 4
      Left = 840
      Top = 2640
      Width = 3135
      Height = 405
      TabIndex = 24
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
    Begin VB.TextBox Text6
      Index = 3
      Left = 840
      Top = 2040
      Width = 3135
      Height = 405
      TabIndex = 23
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
    Begin VB.TextBox Text6
      Index = 2
      Left = 840
      Top = 1440
      Width = 3135
      Height = 405
      TabIndex = 22
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
    Begin VB.TextBox Text6
      Index = 1
      Left = 840
      Top = 840
      Width = 3135
      Height = 405
      TabIndex = 21
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
    Begin VB.Line Line4
      BorderColor = &H80000009&
      X1 = 780
      Y1 = 165
      X2 = 780
      Y2 = 5735
    End
    Begin VB.Line Line3
      BorderColor = &H80000010&
      X1 = 785
      Y1 = 165
      X2 = 785
      Y2 = 5645
    End
    Begin VB.Line Line2
      BorderColor = &H80000010&
      X1 = 30
      Y1 = 735
      X2 = 12000
      Y2 = 735
    End
    Begin VB.Line Line1
      BorderColor = &H80000009&
      X1 = 30
      Y1 = 750
      X2 = 12000
      Y2 = 750
    End
  End
End

Attribute VB_Name = "frmMezclas"


Private Sub Combo2_DropDown(arg_C) '611B84
  'Data Table: 434324
  loc_611A78: FLdRfVar var_8C
  loc_611A7B: ILdI2 arg_C
  loc_611A7E: FLdPrThis
  loc_611A7F: VCallAd Control_ID_Combo2
  loc_611A82: FStAdFunc var_88
  loc_611A85: FLdPr var_88
  loc_611A88: Set from_stack_2 = Me(from_stack_1)
  loc_611A8D: FLdPr var_8C
  loc_611A90: Me.Clear
  loc_611A95: FFreeAd var_88 = ""
  loc_611A9C: FLdRfVar var_90
  loc_611A9F: FLdRfVar var_8C
  loc_611AA2: ILdI2 arg_C
  loc_611AA5: FLdPrThis
  loc_611AA6: VCallAd Control_ID_Text5
  loc_611AA9: FStAdFunc var_88
  loc_611AAC: FLdPr var_88
  loc_611AAF: Set from_stack_2 = Me(from_stack_1)
  loc_611AB4: FLdPr var_8C
  loc_611AB7:  = Me.Text
  loc_611ABC: ILdRf var_90
  loc_611ABF: LitStr vbNullString
  loc_611AC2: NeStr
  loc_611AC4: FFree1Str var_90
  loc_611AC7: FFreeAd var_88 = ""
  loc_611ACE: BranchF loc_611B82
  loc_611AD1: FLdRfVar var_92
  loc_611AD4: FLdRfVar var_90
  loc_611AD7: FLdRfVar var_8C
  loc_611ADA: ILdI2 arg_C
  loc_611ADD: FLdPrThis
  loc_611ADE: VCallAd Control_ID_Text5
  loc_611AE1: FStAdFunc var_88
  loc_611AE4: FLdPr var_88
  loc_611AE7: Set from_stack_2 = Me(from_stack_1)
  loc_611AEC: FLdPr var_8C
  loc_611AEF:  = Me.Text
  loc_611AF4: ILdRf var_90
  loc_611AF7: CI2Str
  loc_611AF9: ImpAdLdRf MemVar_74A220
  loc_611AFC: NewIfNullPr clsProducts
  loc_611AFF:  = clsProducts.Name
  loc_611B04: FLdI2 var_92
  loc_611B07: LitI2_Byte 7
  loc_611B09: EqI2
  loc_611B0A: FFree1Str var_90
  loc_611B0D: FFreeAd var_88 = ""
  loc_611B14: BranchF loc_611B2B
  loc_611B17: FLdRfVar var_A4
  loc_611B1A: ILdI2 arg_C
  loc_611B1D: PopTmpLdAd2 var_92
  loc_611B20: from_stack_2v = CargarConPlomo(from_stack_1v)
  loc_611B25: FFree1Var var_A4 = ""
  loc_611B28: Branch loc_611B82
  loc_611B2B: FLdRfVar var_92
  loc_611B2E: FLdRfVar var_90
  loc_611B31: FLdRfVar var_8C
  loc_611B34: ILdI2 arg_C
  loc_611B37: FLdPrThis
  loc_611B38: VCallAd Control_ID_Text5
  loc_611B3B: FStAdFunc var_88
  loc_611B3E: FLdPr var_88
  loc_611B41: Set from_stack_2 = Me(from_stack_1)
  loc_611B46: FLdPr var_8C
  loc_611B49:  = Me.Text
  loc_611B4E: ILdRf var_90
  loc_611B51: CI2Str
  loc_611B53: ImpAdLdRf MemVar_74A220
  loc_611B56: NewIfNullPr clsProducts
  loc_611B59:  = clsProducts.Name
  loc_611B5E: FLdI2 var_92
  loc_611B61: LitI2_Byte 8
  loc_611B63: EqI2
  loc_611B64: FFree1Str var_90
  loc_611B67: FFreeAd var_88 = ""
  loc_611B6E: BranchF loc_611B82
  loc_611B71: FLdRfVar var_A4
  loc_611B74: ILdI2 arg_C
  loc_611B77: PopTmpLdAd2 var_92
  loc_611B7A: from_stack_2v = CargarSinPlomo(from_stack_1v)
  loc_611B7F: FFree1Var var_A4 = ""
  loc_611B82: ExitProcHresult
End Sub

Private Sub Text6_KeyPress(KeyAscii As Integer) '5C9378
  'Data Table: 434324
  loc_5C9370: LitI2_Byte 0
  loc_5C9372: IStI2 arg_10
  loc_5C9375: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D6BA4
  'Data Table: 434324
  loc_5D6B78: FLdRfVar var_86
  loc_5D6B7B: from_stack_1v = CargarMezclas()
  loc_5D6B80: FLdI2 var_86
  loc_5D6B83: BranchF loc_5D6BA3
  loc_5D6B86: FLdPr Me
  loc_5D6B89: Me.Hide
  loc_5D6B8E: LitVar_Missing var_A8
  loc_5D6B91: PopAdLdVar
  loc_5D6B92: LitVarI2 var_98, 1
  loc_5D6B97: PopAdLdVar
  loc_5D6B98: ImpAdLdRf MemVar_74C900
  loc_5D6B9B: NewIfNullPr fCapacidadTanque
  loc_5D6B9E: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5D6BA3: ExitProcHresult
End Sub

Private Sub Command2_Click() '60106C
  'Data Table: 434324
  loc_600F94: LitI2_Byte 1
  loc_600F96: CUI1I2
  loc_600F98: FLdRfVar var_86
  loc_600F9B: FLdRfVar var_8E
  loc_600F9E: FLdPrThis
  loc_600F9F: VCallAd Control_ID_Combo1
  loc_600FA2: FStAdFunc var_8C
  loc_600FA5: FLdPr var_8C
  loc_600FA8:  = Me.Name
  loc_600FAD: FLdI2 var_8E
  loc_600FB0: CUI1I2
  loc_600FB2: FFree1Ad var_8C
  loc_600FB5: ForUI1 var_92
  loc_600FBB: LitI2_Byte &HFF
  loc_600FBD: FLdRfVar var_98
  loc_600FC0: FLdUI1
  loc_600FC4: CI2UI1
  loc_600FC6: FLdPrThis
  loc_600FC7: VCallAd Control_ID_Combo1
  loc_600FCA: FStAdFunc var_8C
  loc_600FCD: FLdPr var_8C
  loc_600FD0: Set from_stack_2 = Me(from_stack_1)
  loc_600FD5: FLdPr var_98
  loc_600FD8: Me.ListIndex = from_stack_1
  loc_600FDD: FFreeAd var_8C = ""
  loc_600FE4: LitI2_Byte &HFF
  loc_600FE6: FLdRfVar var_98
  loc_600FE9: FLdUI1
  loc_600FED: CI2UI1
  loc_600FEF: FLdPrThis
  loc_600FF0: VCallAd Control_ID_Combo2
  loc_600FF3: FStAdFunc var_8C
  loc_600FF6: FLdPr var_8C
  loc_600FF9: Set from_stack_2 = Me(from_stack_1)
  loc_600FFE: FLdPr var_98
  loc_601001: Me.ListIndex = from_stack_1
  loc_601006: FFreeAd var_8C = ""
  loc_60100D: LitStr vbNullString
  loc_601010: FLdRfVar var_98
  loc_601013: FLdUI1
  loc_601017: CI2UI1
  loc_601019: FLdPrThis
  loc_60101A: VCallAd Control_ID_Text7
  loc_60101D: FStAdFunc var_8C
  loc_601020: FLdPr var_8C
  loc_601023: Set from_stack_2 = Me(from_stack_1)
  loc_601028: FLdPr var_98
  loc_60102B: Me.Text = from_stack_1
  loc_601030: FFreeAd var_8C = ""
  loc_601037: LitStr vbNullString
  loc_60103A: FLdRfVar var_98
  loc_60103D: FLdUI1
  loc_601041: CI2UI1
  loc_601043: FLdPrThis
  loc_601044: VCallAd Control_ID_Text8
  loc_601047: FStAdFunc var_8C
  loc_60104A: FLdPr var_8C
  loc_60104D: Set from_stack_2 = Me(from_stack_1)
  loc_601052: FLdPr var_98
  loc_601055: Me.Text = from_stack_1
  loc_60105A: FFreeAd var_8C = ""
  loc_601061: FLdRfVar var_86
  loc_601064: NextUI1
  loc_60106A: ExitProcHresult
End Sub

Private Sub Command3_Click() '5D7DB0
  'Data Table: 434324
  loc_5D7D80: LitI2_Byte &HFF
  loc_5D7D82: PopTmpLdAd2 var_86
  loc_5D7D85: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5D7D8A: LitI2_Byte &HFF
  loc_5D7D8C: ImpAdLdRf MemVar_74C760
  loc_5D7D8F: NewIfNullPr Formx
  loc_5D7D92: Call Formx.CanceladoPut(from_stack_1v)
  loc_5D7D97: ILdRf Me
  loc_5D7D9A: FStAdNoPop
  loc_5D7D9E: ImpAdLdRf MemVar_7520D4
  loc_5D7DA1: NewIfNullPr Global
  loc_5D7DA4: Global.Unload from_stack_1
  loc_5D7DA9: FFree1Ad var_8C
  loc_5D7DAC: ExitProcHresult
End Sub

Private Sub Combo1_DropDown(arg_C) '611A38
  'Data Table: 434324
  loc_61192C: FLdRfVar var_8C
  loc_61192F: ILdI2 arg_C
  loc_611932: FLdPrThis
  loc_611933: VCallAd Control_ID_Combo1
  loc_611936: FStAdFunc var_88
  loc_611939: FLdPr var_88
  loc_61193C: Set from_stack_2 = Me(from_stack_1)
  loc_611941: FLdPr var_8C
  loc_611944: Me.Clear
  loc_611949: FFreeAd var_88 = ""
  loc_611950: FLdRfVar var_90
  loc_611953: FLdRfVar var_8C
  loc_611956: ILdI2 arg_C
  loc_611959: FLdPrThis
  loc_61195A: VCallAd Control_ID_Text5
  loc_61195D: FStAdFunc var_88
  loc_611960: FLdPr var_88
  loc_611963: Set from_stack_2 = Me(from_stack_1)
  loc_611968: FLdPr var_8C
  loc_61196B:  = Me.Text
  loc_611970: ILdRf var_90
  loc_611973: LitStr vbNullString
  loc_611976: NeStr
  loc_611978: FFree1Str var_90
  loc_61197B: FFreeAd var_88 = ""
  loc_611982: BranchF loc_611A36
  loc_611985: FLdRfVar var_92
  loc_611988: FLdRfVar var_90
  loc_61198B: FLdRfVar var_8C
  loc_61198E: ILdI2 arg_C
  loc_611991: FLdPrThis
  loc_611992: VCallAd Control_ID_Text5
  loc_611995: FStAdFunc var_88
  loc_611998: FLdPr var_88
  loc_61199B: Set from_stack_2 = Me(from_stack_1)
  loc_6119A0: FLdPr var_8C
  loc_6119A3:  = Me.Text
  loc_6119A8: ILdRf var_90
  loc_6119AB: CI2Str
  loc_6119AD: ImpAdLdRf MemVar_74A220
  loc_6119B0: NewIfNullPr clsProducts
  loc_6119B3:  = clsProducts.Name
  loc_6119B8: FLdI2 var_92
  loc_6119BB: LitI2_Byte 7
  loc_6119BD: EqI2
  loc_6119BE: FFree1Str var_90
  loc_6119C1: FFreeAd var_88 = ""
  loc_6119C8: BranchF loc_6119DF
  loc_6119CB: FLdRfVar var_A4
  loc_6119CE: ILdI2 arg_C
  loc_6119D1: PopTmpLdAd2 var_92
  loc_6119D4: from_stack_2v = CargarConPlomo(from_stack_1v)
  loc_6119D9: FFree1Var var_A4 = ""
  loc_6119DC: Branch loc_611A36
  loc_6119DF: FLdRfVar var_92
  loc_6119E2: FLdRfVar var_90
  loc_6119E5: FLdRfVar var_8C
  loc_6119E8: ILdI2 arg_C
  loc_6119EB: FLdPrThis
  loc_6119EC: VCallAd Control_ID_Text5
  loc_6119EF: FStAdFunc var_88
  loc_6119F2: FLdPr var_88
  loc_6119F5: Set from_stack_2 = Me(from_stack_1)
  loc_6119FA: FLdPr var_8C
  loc_6119FD:  = Me.Text
  loc_611A02: ILdRf var_90
  loc_611A05: CI2Str
  loc_611A07: ImpAdLdRf MemVar_74A220
  loc_611A0A: NewIfNullPr clsProducts
  loc_611A0D:  = clsProducts.Name
  loc_611A12: FLdI2 var_92
  loc_611A15: LitI2_Byte 8
  loc_611A17: EqI2
  loc_611A18: FFree1Str var_90
  loc_611A1B: FFreeAd var_88 = ""
  loc_611A22: BranchF loc_611A36
  loc_611A25: FLdRfVar var_A4
  loc_611A28: ILdI2 arg_C
  loc_611A2B: PopTmpLdAd2 var_92
  loc_611A2E: from_stack_2v = CargarSinPlomo(from_stack_1v)
  loc_611A33: FFree1Var var_A4 = ""
  loc_611A36: ExitProcHresult
End Sub

Private Sub Form_Load() '5C9EB0
  'Data Table: 434324
  loc_5C9EA8: LitVar_TRUE var_A4
  loc_5C9EAB: FStVar var_94
  loc_5C9EAF: ExitProcHresult
End Sub

Private Sub Form_Activate() '67AFE0
  'Data Table: 434324
  loc_67AB3C: FLdPrThis
  loc_67AB3D: VCallAd Control_ID_SSCommand2
  loc_67AB40: FStAdFunc var_AC
  loc_67AB43: FLdPr var_AC
  loc_67AB46: LateIdCall
  loc_67AB4E: FFree1Ad var_AC
  loc_67AB51: LitVarI2 var_BC, 1
  loc_67AB56: FStVar var_A4
  loc_67AB5A: LitI2_Byte 1
  loc_67AB5C: FStI2 var_A6
  loc_67AB5F: LitVarI2 var_DC, 1
  loc_67AB64: FLdRfVar var_94
  loc_67AB67: LitVarI2 var_CC, 8
  loc_67AB6C: ForVar var_FC
  loc_67AB72: FLdRfVar var_100
  loc_67AB75: FLdRfVar var_94
  loc_67AB78: CI2Var
  loc_67AB79: FLdPrThis
  loc_67AB7A: VCallAd Control_ID_Combo1
  loc_67AB7D: FStAdFunc var_AC
  loc_67AB80: FLdPr var_AC
  loc_67AB83: Set from_stack_2 = Me(from_stack_1)
  loc_67AB88: FLdPr var_100
  loc_67AB8B: Me.Clear
  loc_67AB90: FFreeAd var_AC = ""
  loc_67AB97: FLdRfVar var_100
  loc_67AB9A: FLdRfVar var_94
  loc_67AB9D: CI2Var
  loc_67AB9E: FLdPrThis
  loc_67AB9F: VCallAd Control_ID_Combo2
  loc_67ABA2: FStAdFunc var_AC
  loc_67ABA5: FLdPr var_AC
  loc_67ABA8: Set from_stack_2 = Me(from_stack_1)
  loc_67ABAD: FLdPr var_100
  loc_67ABB0: Me.Clear
  loc_67ABB5: FFreeAd var_AC = ""
  loc_67ABBC: LitStr vbNullString
  loc_67ABBF: FLdRfVar var_100
  loc_67ABC2: FLdRfVar var_94
  loc_67ABC5: CI2Var
  loc_67ABC6: FLdPrThis
  loc_67ABC7: VCallAd Control_ID_Text5
  loc_67ABCA: FStAdFunc var_AC
  loc_67ABCD: FLdPr var_AC
  loc_67ABD0: Set from_stack_2 = Me(from_stack_1)
  loc_67ABD5: FLdPr var_100
  loc_67ABD8: Me.Text = from_stack_1
  loc_67ABDD: FFreeAd var_AC = ""
  loc_67ABE4: LitStr vbNullString
  loc_67ABE7: FLdRfVar var_100
  loc_67ABEA: FLdRfVar var_94
  loc_67ABED: CI2Var
  loc_67ABEE: FLdPrThis
  loc_67ABEF: VCallAd Control_ID_Text6
  loc_67ABF2: FStAdFunc var_AC
  loc_67ABF5: FLdPr var_AC
  loc_67ABF8: Set from_stack_2 = Me(from_stack_1)
  loc_67ABFD: FLdPr var_100
  loc_67AC00: Me.Text = from_stack_1
  loc_67AC05: FFreeAd var_AC = ""
  loc_67AC0C: LitStr vbNullString
  loc_67AC0F: FLdRfVar var_100
  loc_67AC12: FLdRfVar var_94
  loc_67AC15: CI2Var
  loc_67AC16: FLdPrThis
  loc_67AC17: VCallAd Control_ID_Text7
  loc_67AC1A: FStAdFunc var_AC
  loc_67AC1D: FLdPr var_AC
  loc_67AC20: Set from_stack_2 = Me(from_stack_1)
  loc_67AC25: FLdPr var_100
  loc_67AC28: Me.Text = from_stack_1
  loc_67AC2D: FFreeAd var_AC = ""
  loc_67AC34: LitStr vbNullString
  loc_67AC37: FLdRfVar var_100
  loc_67AC3A: FLdRfVar var_94
  loc_67AC3D: CI2Var
  loc_67AC3E: FLdPrThis
  loc_67AC3F: VCallAd Control_ID_Text8
  loc_67AC42: FStAdFunc var_AC
  loc_67AC45: FLdPr var_AC
  loc_67AC48: Set from_stack_2 = Me(from_stack_1)
  loc_67AC4D: FLdPr var_100
  loc_67AC50: Me.Text = from_stack_1
  loc_67AC55: FFreeAd var_AC = ""
  loc_67AC5C: FLdRfVar var_94
  loc_67AC5F: NextStepVar var_FC
  loc_67AC65: LitVarI2 var_BC, 1
  loc_67AC6A: FStVar var_A4
  loc_67AC6E: LitVarI2 var_DC, 1
  loc_67AC73: FLdRfVar var_94
  loc_67AC76: FLdRfVar var_102
  loc_67AC79: ImpAdLdRf MemVar_74A220
  loc_67AC7C: NewIfNullPr clsProducts
  loc_67AC7F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67AC84: FLdI2 var_102
  loc_67AC87: CVarI2 var_CC
  loc_67AC8A: ForVar var_124
  loc_67AC90: FLdRfVar var_102
  loc_67AC93: FLdRfVar var_94
  loc_67AC96: CI2Var
  loc_67AC97: ImpAdLdRf MemVar_74A220
  loc_67AC9A: NewIfNullPr clsProducts
  loc_67AC9D: clsProducts.Caption = from_stack_1
  loc_67ACA2: FLdI2 var_102
  loc_67ACA5: BranchF loc_67AFCD
  loc_67ACA8: FLdRfVar var_94
  loc_67ACAB: CStrVarVal var_128
  loc_67ACAF: FLdRfVar var_100
  loc_67ACB2: FLdRfVar var_A4
  loc_67ACB5: CI2Var
  loc_67ACB6: FLdPrThis
  loc_67ACB7: VCallAd Control_ID_Text5
  loc_67ACBA: FStAdFunc var_AC
  loc_67ACBD: FLdPr var_AC
  loc_67ACC0: Set from_stack_2 = Me(from_stack_1)
  loc_67ACC5: FLdPr var_100
  loc_67ACC8: Me.Text = from_stack_1
  loc_67ACCD: FFree1Str var_128
  loc_67ACD0: FFreeAd var_AC = ""
  loc_67ACD7: FLdRfVar var_128
  loc_67ACDA: FLdRfVar var_94
  loc_67ACDD: CI2Var
  loc_67ACDE: ImpAdLdRf MemVar_74A220
  loc_67ACE1: NewIfNullPr clsProducts
  loc_67ACE9: ILdRf var_128
  loc_67ACEC: FLdRfVar var_100
  loc_67ACEF: FLdRfVar var_A4
  loc_67ACF2: CI2Var
  loc_67ACF3: FLdPrThis
  loc_67ACF4: VCallAd Control_ID_Text6
  loc_67ACF7: FStAdFunc var_AC
  loc_67ACFA: FLdPr var_AC
  loc_67ACFD: Set from_stack_2 = Me(from_stack_1)
  loc_67AD02: FLdPr var_100
  loc_67AD05: Me.Text = from_stack_1
  loc_67AD0A: FFree1Str var_128
  loc_67AD0D: FFreeAd var_AC = ""
  loc_67AD14: FLdRfVar var_102
  loc_67AD17: FLdRfVar var_94
  loc_67AD1A: CI2Var
  loc_67AD1B: ImpAdLdRf MemVar_74A220
  loc_67AD1E: NewIfNullPr clsProducts
  loc_67AD21:  = clsProducts.Name
  loc_67AD26: FLdI2 var_102
  loc_67AD29: LitI2_Byte 7
  loc_67AD2B: EqI2
  loc_67AD2C: BranchF loc_67ADCA
  loc_67AD2F: FLdRfVar var_138
  loc_67AD32: FLdRfVar var_A4
  loc_67AD35: CI2Var
  loc_67AD36: PopTmpLdAd2 var_102
  loc_67AD39: from_stack_2v = CargarConPlomo(from_stack_1v)
  loc_67AD3E: FFree1Var var_138 = ""
  loc_67AD41: FLdRfVar var_100
  loc_67AD44: FLdRfVar var_A4
  loc_67AD47: CI2Var
  loc_67AD48: FLdPrThis
  loc_67AD49: VCallAd Control_ID_Combo1
  loc_67AD4C: FStAdFunc var_AC
  loc_67AD4F: FLdPr var_AC
  loc_67AD52: Set from_stack_2 = Me(from_stack_1)
  loc_67AD57: FLdRfVar var_102
  loc_67AD5A: FLdRfVar var_94
  loc_67AD5D: CI2Var
  loc_67AD5E: ImpAdLdRf MemVar_74A220
  loc_67AD61: NewIfNullPr clsProducts
  loc_67AD64:  = clsProducts.BackColor
  loc_67AD69: FLdI2 var_102
  loc_67AD6C: PopTmpLdAd2 var_13E
  loc_67AD6F: FLdZeroAd var_100
  loc_67AD72: FStAdFunc var_13C
  loc_67AD75: FLdRfVar var_13C
  loc_67AD78: Call PonerEn(from_stack_1v, from_stack_2v)
  loc_67AD7D: FFreeAd var_AC = ""
  loc_67AD84: FLdRfVar var_100
  loc_67AD87: FLdRfVar var_A4
  loc_67AD8A: CI2Var
  loc_67AD8B: FLdPrThis
  loc_67AD8C: VCallAd Control_ID_Combo2
  loc_67AD8F: FStAdFunc var_AC
  loc_67AD92: FLdPr var_AC
  loc_67AD95: Set from_stack_2 = Me(from_stack_1)
  loc_67AD9A: FLdRfVar var_102
  loc_67AD9D: FLdRfVar var_94
  loc_67ADA0: CI2Var
  loc_67ADA1: ImpAdLdRf MemVar_74A220
  loc_67ADA4: NewIfNullPr clsProducts
  loc_67ADA7:  = clsProducts.Left
  loc_67ADAC: FLdI2 var_102
  loc_67ADAF: PopTmpLdAd2 var_13E
  loc_67ADB2: FLdZeroAd var_100
  loc_67ADB5: FStAdFunc var_13C
  loc_67ADB8: FLdRfVar var_13C
  loc_67ADBB: Call PonerEn(from_stack_1v, from_stack_2v)
  loc_67ADC0: FFreeAd var_AC = ""
  loc_67ADC7: Branch loc_67AE7D
  loc_67ADCA: FLdRfVar var_102
  loc_67ADCD: FLdRfVar var_94
  loc_67ADD0: CI2Var
  loc_67ADD1: ImpAdLdRf MemVar_74A220
  loc_67ADD4: NewIfNullPr clsProducts
  loc_67ADD7:  = clsProducts.Name
  loc_67ADDC: FLdI2 var_102
  loc_67ADDF: LitI2_Byte 8
  loc_67ADE1: EqI2
  loc_67ADE2: BranchF loc_67AE7D
  loc_67ADE5: FLdRfVar var_138
  loc_67ADE8: FLdRfVar var_A4
  loc_67ADEB: CI2Var
  loc_67ADEC: PopTmpLdAd2 var_102
  loc_67ADEF: from_stack_2v = CargarSinPlomo(from_stack_1v)
  loc_67ADF4: FFree1Var var_138 = ""
  loc_67ADF7: FLdRfVar var_100
  loc_67ADFA: FLdRfVar var_A4
  loc_67ADFD: CI2Var
  loc_67ADFE: FLdPrThis
  loc_67ADFF: VCallAd Control_ID_Combo1
  loc_67AE02: FStAdFunc var_AC
  loc_67AE05: FLdPr var_AC
  loc_67AE08: Set from_stack_2 = Me(from_stack_1)
  loc_67AE0D: FLdRfVar var_102
  loc_67AE10: FLdRfVar var_94
  loc_67AE13: CI2Var
  loc_67AE14: ImpAdLdRf MemVar_74A220
  loc_67AE17: NewIfNullPr clsProducts
  loc_67AE1A:  = clsProducts.BackColor
  loc_67AE1F: FLdI2 var_102
  loc_67AE22: PopTmpLdAd2 var_13E
  loc_67AE25: FLdZeroAd var_100
  loc_67AE28: FStAdFunc var_13C
  loc_67AE2B: FLdRfVar var_13C
  loc_67AE2E: Call PonerEn(from_stack_1v, from_stack_2v)
  loc_67AE33: FFreeAd var_AC = ""
  loc_67AE3A: FLdRfVar var_100
  loc_67AE3D: FLdRfVar var_A4
  loc_67AE40: CI2Var
  loc_67AE41: FLdPrThis
  loc_67AE42: VCallAd Control_ID_Combo2
  loc_67AE45: FStAdFunc var_AC
  loc_67AE48: FLdPr var_AC
  loc_67AE4B: Set from_stack_2 = Me(from_stack_1)
  loc_67AE50: FLdRfVar var_102
  loc_67AE53: FLdRfVar var_94
  loc_67AE56: CI2Var
  loc_67AE57: ImpAdLdRf MemVar_74A220
  loc_67AE5A: NewIfNullPr clsProducts
  loc_67AE5D:  = clsProducts.Left
  loc_67AE62: FLdI2 var_102
  loc_67AE65: PopTmpLdAd2 var_13E
  loc_67AE68: FLdZeroAd var_100
  loc_67AE6B: FStAdFunc var_13C
  loc_67AE6E: FLdRfVar var_13C
  loc_67AE71: Call PonerEn(from_stack_1v, from_stack_2v)
  loc_67AE76: FFreeAd var_AC = ""
  loc_67AE7D: FLdRfVar var_102
  loc_67AE80: FLdRfVar var_94
  loc_67AE83: CI2Var
  loc_67AE84: ImpAdLdRf MemVar_74A220
  loc_67AE87: NewIfNullPr clsProducts
  loc_67AE8A:  = clsProducts.Top
  loc_67AE8F: FLdI2 var_102
  loc_67AE92: CStrUI1
  loc_67AE94: FStStrNoPop var_128
  loc_67AE97: FLdRfVar var_100
  loc_67AE9A: FLdRfVar var_A4
  loc_67AE9D: CI2Var
  loc_67AE9E: FLdPrThis
  loc_67AE9F: VCallAd Control_ID_Text8
  loc_67AEA2: FStAdFunc var_AC
  loc_67AEA5: FLdPr var_AC
  loc_67AEA8: Set from_stack_2 = Me(from_stack_1)
  loc_67AEAD: FLdPr var_100
  loc_67AEB0: Me.Text = from_stack_1
  loc_67AEB5: FFree1Str var_128
  loc_67AEB8: FFreeAd var_AC = ""
  loc_67AEBF: FLdRfVar var_128
  loc_67AEC2: FLdRfVar var_100
  loc_67AEC5: FLdRfVar var_A4
  loc_67AEC8: CI2Var
  loc_67AEC9: FLdPrThis
  loc_67AECA: VCallAd Control_ID_Text8
  loc_67AECD: FStAdFunc var_AC
  loc_67AED0: FLdPr var_AC
  loc_67AED3: Set from_stack_2 = Me(from_stack_1)
  loc_67AED8: FLdPr var_100
  loc_67AEDB:  = Me.Text
  loc_67AEE0: ILdRf var_128
  loc_67AEE3: LitStr vbNullString
  loc_67AEE6: EqStr
  loc_67AEE8: FFree1Str var_128
  loc_67AEEB: FFreeAd var_AC = ""
  loc_67AEF2: BranchF loc_67AF1D
  loc_67AEF5: LitStr "50"
  loc_67AEF8: FLdRfVar var_100
  loc_67AEFB: FLdRfVar var_A4
  loc_67AEFE: CI2Var
  loc_67AEFF: FLdPrThis
  loc_67AF00: VCallAd Control_ID_Text8
  loc_67AF03: FStAdFunc var_AC
  loc_67AF06: FLdPr var_AC
  loc_67AF09: Set from_stack_2 = Me(from_stack_1)
  loc_67AF0E: FLdPr var_100
  loc_67AF11: Me.Text = from_stack_1
  loc_67AF16: FFreeAd var_AC = ""
  loc_67AF1D: FLdRfVar var_102
  loc_67AF20: FLdRfVar var_94
  loc_67AF23: CI2Var
  loc_67AF24: ImpAdLdRf MemVar_74A220
  loc_67AF27: NewIfNullPr clsProducts
  loc_67AF2A:  = clsProducts.ForeColor
  loc_67AF2F: FLdI2 var_102
  loc_67AF32: CStrUI1
  loc_67AF34: FStStrNoPop var_128
  loc_67AF37: FLdRfVar var_100
  loc_67AF3A: FLdRfVar var_A4
  loc_67AF3D: CI2Var
  loc_67AF3E: FLdPrThis
  loc_67AF3F: VCallAd Control_ID_Text7
  loc_67AF42: FStAdFunc var_AC
  loc_67AF45: FLdPr var_AC
  loc_67AF48: Set from_stack_2 = Me(from_stack_1)
  loc_67AF4D: FLdPr var_100
  loc_67AF50: Me.Text = from_stack_1
  loc_67AF55: FFree1Str var_128
  loc_67AF58: FFreeAd var_AC = ""
  loc_67AF5F: FLdRfVar var_128
  loc_67AF62: FLdRfVar var_100
  loc_67AF65: FLdRfVar var_A4
  loc_67AF68: CI2Var
  loc_67AF69: FLdPrThis
  loc_67AF6A: VCallAd Control_ID_Text7
  loc_67AF6D: FStAdFunc var_AC
  loc_67AF70: FLdPr var_AC
  loc_67AF73: Set from_stack_2 = Me(from_stack_1)
  loc_67AF78: FLdPr var_100
  loc_67AF7B:  = Me.Text
  loc_67AF80: ILdRf var_128
  loc_67AF83: LitStr vbNullString
  loc_67AF86: EqStr
  loc_67AF88: FFree1Str var_128
  loc_67AF8B: FFreeAd var_AC = ""
  loc_67AF92: BranchF loc_67AFBD
  loc_67AF95: LitStr "50"
  loc_67AF98: FLdRfVar var_100
  loc_67AF9B: FLdRfVar var_A4
  loc_67AF9E: CI2Var
  loc_67AF9F: FLdPrThis
  loc_67AFA0: VCallAd Control_ID_Text7
  loc_67AFA3: FStAdFunc var_AC
  loc_67AFA6: FLdPr var_AC
  loc_67AFA9: Set from_stack_2 = Me(from_stack_1)
  loc_67AFAE: FLdPr var_100
  loc_67AFB1: Me.Text = from_stack_1
  loc_67AFB6: FFreeAd var_AC = ""
  loc_67AFBD: FLdRfVar var_A4
  loc_67AFC0: LitVarI2 var_BC, 1
  loc_67AFC5: AddVar var_138
  loc_67AFC9: FStVar var_A4
  loc_67AFCD: FLdRfVar var_94
  loc_67AFD0: NextStepVar var_124
  loc_67AFD6: LitVar_TRUE var_BC
  loc_67AFD9: FStVar var_150
  loc_67AFDD: ExitProcHresult
End Sub

Private Sub Text5_KeyPress(KeyAscii As Integer) '5C9340
  'Data Table: 434324
  loc_5C9338: LitI2_Byte 0
  loc_5C933A: IStI2 arg_10
  loc_5C933D: ExitProcHresult
End Sub

Private Sub Anterior_UnknownEvent_8 '5D3C44
  'Data Table: 434324
  loc_5D3C24: FLdPr Me
  loc_5D3C27: Me.Hide
  loc_5D3C2C: LitVar_Missing var_A4
  loc_5D3C2F: PopAdLdVar
  loc_5D3C30: LitVarI2 var_94, 1
  loc_5D3C35: PopAdLdVar
  loc_5D3C36: ImpAdLdRf MemVar_74E150
  loc_5D3C39: NewIfNullPr fTipoProducto
  loc_5D3C3C: fTipoProducto.Show from_stack_1, from_stack_2
  loc_5D3C41: ExitProcHresult
End Sub

Private Sub Text7_KeyPress(KeyAscii As Integer) '5F33F0
  'Data Table: 434324
  loc_5F3350: FLdRfVar var_94
  loc_5F3353: FLdRfVar var_90
  loc_5F3356: ILdI2 KeyAscii
  loc_5F3359: FLdPrThis
  loc_5F335A: VCallAd Control_ID_Text6
  loc_5F335D: FStAdFunc var_8C
  loc_5F3360: FLdPr var_8C
  loc_5F3363: Set from_stack_2 = Me(from_stack_1)
  loc_5F3368: FLdPr var_90
  loc_5F336B:  = Me.Text
  loc_5F3370: ILdRf var_94
  loc_5F3373: LitStr vbNullString
  loc_5F3376: NeStr
  loc_5F3378: FFree1Str var_94
  loc_5F337B: FFreeAd var_8C = ""
  loc_5F3382: BranchF loc_5F33E8
  loc_5F3385: ILdI2 arg_10
  loc_5F3388: LitI2_Byte &H30
  loc_5F338A: GeI2
  loc_5F338B: ILdI2 arg_10
  loc_5F338E: LitI2_Byte &H39
  loc_5F3390: LeI2
  loc_5F3391: AndI4
  loc_5F3392: ILdI2 arg_10
  loc_5F3395: LitI2_Byte 8
  loc_5F3397: EqI2
  loc_5F3398: OrI4
  loc_5F3399: BranchF loc_5F33E0
  loc_5F339C: FLdRfVar var_94
  loc_5F339F: FLdRfVar var_90
  loc_5F33A2: ILdI2 KeyAscii
  loc_5F33A5: FLdPrThis
  loc_5F33A6: VCallAd Control_ID_Text7
  loc_5F33A9: FStAdFunc var_8C
  loc_5F33AC: FLdPr var_8C
  loc_5F33AF: Set from_stack_2 = Me(from_stack_1)
  loc_5F33B4: FLdPr var_90
  loc_5F33B7:  = Me.Text
  loc_5F33BC: ILdRf var_94
  loc_5F33BF: LitStr "0"
  loc_5F33C2: EqStr
  loc_5F33C4: ILdI2 arg_10
  loc_5F33C7: LitI2_Byte &H30
  loc_5F33C9: EqI2
  loc_5F33CA: AndI4
  loc_5F33CB: FFree1Str var_94
  loc_5F33CE: FFreeAd var_8C = ""
  loc_5F33D5: BranchF loc_5F33DD
  loc_5F33D8: LitI2_Byte &H31
  loc_5F33DA: IStI2 arg_10
  loc_5F33DD: Branch loc_5F33E5
  loc_5F33E0: LitI2_Byte 0
  loc_5F33E2: IStI2 arg_10
  loc_5F33E5: Branch loc_5F33ED
  loc_5F33E8: LitI2_Byte 0
  loc_5F33EA: IStI2 arg_10
  loc_5F33ED: ExitProcHresult
End Sub

Private Sub Text7_LostFocus(arg_C) '62E3AC
  'Data Table: 434324
  loc_62E208: FLdRfVar var_94
  loc_62E20B: FLdRfVar var_90
  loc_62E20E: ILdI2 arg_C
  loc_62E211: FLdPrThis
  loc_62E212: VCallAd Control_ID_Text7
  loc_62E215: FStAdFunc var_8C
  loc_62E218: FLdPr var_8C
  loc_62E21B: Set from_stack_2 = Me(from_stack_1)
  loc_62E220: FLdPr var_90
  loc_62E223:  = Me.Text
  loc_62E228: ILdRf var_94
  loc_62E22B: LitStr vbNullString
  loc_62E22E: EqStr
  loc_62E230: NotI4
  loc_62E231: FFree1Str var_94
  loc_62E234: FFreeAd var_8C = ""
  loc_62E23B: BranchF loc_62E2A1
  loc_62E23E: FLdRfVar var_94
  loc_62E241: FLdRfVar var_90
  loc_62E244: ILdI2 arg_C
  loc_62E247: FLdPrThis
  loc_62E248: VCallAd Control_ID_Text7
  loc_62E24B: FStAdFunc var_8C
  loc_62E24E: FLdPr var_8C
  loc_62E251: Set from_stack_2 = Me(from_stack_1)
  loc_62E256: FLdPr var_90
  loc_62E259:  = Me.Text
  loc_62E25E: ILdRf var_94
  loc_62E261: CI2Str
  loc_62E263: LitI2_Byte &H64
  loc_62E265: GtI2
  loc_62E266: FFree1Str var_94
  loc_62E269: FFreeAd var_8C = ""
  loc_62E270: BranchF loc_62E2A1
  loc_62E273: LitI2_Byte &H64
  loc_62E275: CStrUI1
  loc_62E277: FStStrNoPop var_94
  loc_62E27A: FLdRfVar var_90
  loc_62E27D: ILdI2 arg_C
  loc_62E280: FLdPrThis
  loc_62E281: VCallAd Control_ID_Text7
  loc_62E284: FStAdFunc var_8C
  loc_62E287: FLdPr var_8C
  loc_62E28A: Set from_stack_2 = Me(from_stack_1)
  loc_62E28F: FLdPr var_90
  loc_62E292: Me.Text = from_stack_1
  loc_62E297: FFree1Str var_94
  loc_62E29A: FFreeAd var_8C = ""
  loc_62E2A1: FLdRfVar var_94
  loc_62E2A4: FLdRfVar var_90
  loc_62E2A7: ILdI2 arg_C
  loc_62E2AA: FLdPrThis
  loc_62E2AB: VCallAd Control_ID_Text7
  loc_62E2AE: FStAdFunc var_8C
  loc_62E2B1: FLdPr var_8C
  loc_62E2B4: Set from_stack_2 = Me(from_stack_1)
  loc_62E2B9: FLdPr var_90
  loc_62E2BC:  = Me.Text
  loc_62E2C1: ILdRf var_94
  loc_62E2C4: LitStr "1"
  loc_62E2C7: LtStr
  loc_62E2C9: FLdRfVar var_A0
  loc_62E2CC: FLdRfVar var_9C
  loc_62E2CF: ILdI2 arg_C
  loc_62E2D2: FLdPrThis
  loc_62E2D3: VCallAd Control_ID_Text7
  loc_62E2D6: FStAdFunc var_98
  loc_62E2D9: FLdPr var_98
  loc_62E2DC: Set from_stack_2 = Me(from_stack_1)
  loc_62E2E1: FLdPr var_9C
  loc_62E2E4:  = Me.Text
  loc_62E2E9: ILdRf var_A0
  loc_62E2EC: LitStr vbNullString
  loc_62E2EF: NeStr
  loc_62E2F1: AndI4
  loc_62E2F2: FFreeStr var_94 = ""
  loc_62E2F9: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_62E304: BranchF loc_62E335
  loc_62E307: LitI2_Byte 0
  loc_62E309: CStrUI1
  loc_62E30B: FStStrNoPop var_94
  loc_62E30E: FLdRfVar var_90
  loc_62E311: ILdI2 arg_C
  loc_62E314: FLdPrThis
  loc_62E315: VCallAd Control_ID_Text7
  loc_62E318: FStAdFunc var_8C
  loc_62E31B: FLdPr var_8C
  loc_62E31E: Set from_stack_2 = Me(from_stack_1)
  loc_62E323: FLdPr var_90
  loc_62E326: Me.Text = from_stack_1
  loc_62E32B: FFree1Str var_94
  loc_62E32E: FFreeAd var_8C = ""
  loc_62E335: FLdRfVar var_94
  loc_62E338: FLdRfVar var_90
  loc_62E33B: ILdI2 arg_C
  loc_62E33E: FLdPrThis
  loc_62E33F: VCallAd Control_ID_Text7
  loc_62E342: FStAdFunc var_8C
  loc_62E345: FLdPr var_8C
  loc_62E348: Set from_stack_2 = Me(from_stack_1)
  loc_62E34D: FLdPr var_90
  loc_62E350:  = Me.Text
  loc_62E355: ILdRf var_94
  loc_62E358: LitStr vbNullString
  loc_62E35B: NeStr
  loc_62E35D: FFree1Str var_94
  loc_62E360: FFreeAd var_8C = ""
  loc_62E367: BranchF loc_62E3A8
  loc_62E36A: FLdRfVar var_94
  loc_62E36D: FLdRfVar var_90
  loc_62E370: ILdI2 arg_C
  loc_62E373: FLdPrThis
  loc_62E374: VCallAd Control_ID_Text7
  loc_62E377: FStAdFunc var_8C
  loc_62E37A: FLdPr var_8C
  loc_62E37D: Set from_stack_2 = Me(from_stack_1)
  loc_62E382: FLdPr var_90
  loc_62E385:  = Me.Text
  loc_62E38A: FLdZeroAd var_94
  loc_62E38D: FStStr var_88
  loc_62E390: FFreeAd var_8C = ""
  loc_62E397: FLdRfVar var_B0
  loc_62E39A: ILdRf arg_C
  loc_62E39D: FLdRfVar var_88
  loc_62E3A0: from_stack_3v = CalcularProdAlto(from_stack_1v, from_stack_2v)
  loc_62E3A5: FFree1Var var_B0 = ""
  loc_62E3A8: ExitProcHresult
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer) '5C93E8
  'Data Table: 434324
  loc_5C93E0: LitI2_Byte 0
  loc_5C93E2: IStI2 Shift
  loc_5C93E5: ExitProcHresult
  loc_5C93E6: ExitProcR8
End Sub

Private Sub Text8_KeyPress(KeyAscii As Integer) '5C9458
  'Data Table: 434324
  loc_5C9450: LitI2_Byte 0
  loc_5C9452: IStI2 arg_10
  loc_5C9455: ExitProcHresult
End Sub

Public Sub PonerEn(cmb_aux, i_aux) '5E3094
  'Data Table: 434324
  loc_5E302C: FLdRfVar var_88
  loc_5E302F: ILdPr
  loc_5E3032:  = Me.ListCount
  loc_5E3037: FLdI2 var_88
  loc_5E303A: LitI2_Byte 1
  loc_5E303C: SubI2
  loc_5E303D: FLdRfVar var_86
  loc_5E3040: LitI2_Byte &HFF
  loc_5E3042: LitI2_Byte &HFF
  loc_5E3044: ForStepI2 var_8C
  loc_5E304A: FLdI2 var_86
  loc_5E304D: ILdPr
  loc_5E3050: Me.ListIndex = from_stack_1
  loc_5E3055: FLdRfVar var_88
  loc_5E3058: ILdPr
  loc_5E305B:  = Me.ListIndex
  loc_5E3060: FLdI2 var_88
  loc_5E3063: LitI2_Byte &HFF
  loc_5E3065: EqI2
  loc_5E3066: BranchF loc_5E306C
  loc_5E3069: Branch loc_5E3090
  loc_5E306C: FLdRfVar var_90
  loc_5E306F: FLdI2 var_86
  loc_5E3072: ILdPr
  loc_5E3075:  = Me.ItemData
  loc_5E307A: ILdRf var_90
  loc_5E307D: ILdI2 i_aux
  loc_5E3080: CI4UI1
  loc_5E3081: EqI4
  loc_5E3082: BranchF loc_5E3088
  loc_5E3085: Branch loc_5E3090
  loc_5E3088: FLdRfVar var_86
  loc_5E308B: NextStepI2 var_8C, loc_5E304A
  loc_5E3090: ExitProcHresult
End Sub

Public Function CargarConPlomo(i) '627F64
  'Data Table: 434324
  loc_627DF0: ZeroRetValVar
  loc_627DF2: LitVarI2 var_D4, 1
  loc_627DF7: FLdRfVar var_A4
  loc_627DFA: LitVarI2 var_C4, 10
  loc_627DFF: ForVar var_F4
  loc_627E05: FLdRfVar var_F6
  loc_627E08: FLdRfVar var_A4
  loc_627E0B: CI2Var
  loc_627E0C: ImpAdLdRf MemVar_74A220
  loc_627E0F: NewIfNullPr clsProducts
  loc_627E12: Call 0.Method_CargarConPlomoC ()
  loc_627E17: FLdI2 var_F6
  loc_627E1A: FLdRfVar var_F8
  loc_627E1D: FLdRfVar var_A4
  loc_627E20: CI2Var
  loc_627E21: ImpAdLdRf MemVar_74A220
  loc_627E24: NewIfNullPr clsProducts
  loc_627E27: clsProducts.Caption = from_stack_1
  loc_627E2C: FLdI2 var_F8
  loc_627E2F: NotI4
  loc_627E30: AndI4
  loc_627E31: BranchF loc_627F54
  loc_627E34: LitVar_Missing var_B4
  loc_627E37: PopAdLdVar
  loc_627E38: FLdRfVar var_FC
  loc_627E3B: FLdRfVar var_A4
  loc_627E3E: CI2Var
  loc_627E3F: ImpAdLdRf MemVar_74A220
  loc_627E42: NewIfNullPr clsProducts
  loc_627E4A: ILdRf var_FC
  loc_627E4D: FLdRfVar var_104
  loc_627E50: ILdI2 i
  loc_627E53: FLdPrThis
  loc_627E54: VCallAd Control_ID_Combo1
  loc_627E57: FStAdFunc var_100
  loc_627E5A: FLdPr var_100
  loc_627E5D: Set from_stack_2 = Me(from_stack_1)
  loc_627E62: FLdPr var_104
  loc_627E65: Me.AddItem from_stack_1, from_stack_2
  loc_627E6A: FFree1Str var_FC
  loc_627E6D: FFreeAd var_100 = ""
  loc_627E74: FLdRfVar var_A4
  loc_627E77: CI4Var
  loc_627E79: FLdRfVar var_F6
  loc_627E7C: FLdRfVar var_104
  loc_627E7F: ILdI2 i
  loc_627E82: FLdPrThis
  loc_627E83: VCallAd Control_ID_Combo1
  loc_627E86: FStAdFunc var_100
  loc_627E89: FLdPr var_100
  loc_627E8C: Set from_stack_2 = Me(from_stack_1)
  loc_627E91: FLdPr var_104
  loc_627E94:  = Me.NewIndex
  loc_627E99: FLdI2 var_F6
  loc_627E9C: FLdRfVar var_10C
  loc_627E9F: ILdI2 i
  loc_627EA2: FLdPrThis
  loc_627EA3: VCallAd Control_ID_Combo1
  loc_627EA6: FStAdFunc var_108
  loc_627EA9: FLdPr var_108
  loc_627EAC: Set from_stack_2 = Me(from_stack_1)
  loc_627EB1: FLdPr var_10C
  loc_627EB4: Me.ItemData = from_stack_1
  loc_627EB9: FFreeAd var_100 = "": var_104 = "": var_108 = ""
  loc_627EC4: LitVar_Missing var_B4
  loc_627EC7: PopAdLdVar
  loc_627EC8: FLdRfVar var_FC
  loc_627ECB: FLdRfVar var_A4
  loc_627ECE: CI2Var
  loc_627ECF: ImpAdLdRf MemVar_74A220
  loc_627ED2: NewIfNullPr clsProducts
  loc_627EDA: ILdRf var_FC
  loc_627EDD: FLdRfVar var_104
  loc_627EE0: ILdI2 i
  loc_627EE3: FLdPrThis
  loc_627EE4: VCallAd Control_ID_Combo2
  loc_627EE7: FStAdFunc var_100
  loc_627EEA: FLdPr var_100
  loc_627EED: Set from_stack_2 = Me(from_stack_1)
  loc_627EF2: FLdPr var_104
  loc_627EF5: Me.AddItem from_stack_1, from_stack_2
  loc_627EFA: FFree1Str var_FC
  loc_627EFD: FFreeAd var_100 = ""
  loc_627F04: FLdRfVar var_A4
  loc_627F07: CI4Var
  loc_627F09: FLdRfVar var_F6
  loc_627F0C: FLdRfVar var_104
  loc_627F0F: ILdI2 i
  loc_627F12: FLdPrThis
  loc_627F13: VCallAd Control_ID_Combo2
  loc_627F16: FStAdFunc var_100
  loc_627F19: FLdPr var_100
  loc_627F1C: Set from_stack_2 = Me(from_stack_1)
  loc_627F21: FLdPr var_104
  loc_627F24:  = Me.NewIndex
  loc_627F29: FLdI2 var_F6
  loc_627F2C: FLdRfVar var_10C
  loc_627F2F: ILdI2 i
  loc_627F32: FLdPrThis
  loc_627F33: VCallAd Control_ID_Combo2
  loc_627F36: FStAdFunc var_108
  loc_627F39: FLdPr var_108
  loc_627F3C: Set from_stack_2 = Me(from_stack_1)
  loc_627F41: FLdPr var_10C
  loc_627F44: Me.ItemData = from_stack_1
  loc_627F49: FFreeAd var_100 = "": var_104 = "": var_108 = ""
  loc_627F54: FLdRfVar var_A4
  loc_627F57: NextStepVar var_F4
  loc_627F5D: ExitProcCbHresult
End Function

Public Function CargarSinPlomo(i) '627BD4
  'Data Table: 434324
  loc_627A60: ZeroRetValVar
  loc_627A62: LitVarI2 var_D4, 1
  loc_627A67: FLdRfVar var_A4
  loc_627A6A: LitVarI2 var_C4, 10
  loc_627A6F: ForVar var_F4
  loc_627A75: FLdRfVar var_F6
  loc_627A78: FLdRfVar var_A4
  loc_627A7B: CI2Var
  loc_627A7C: ImpAdLdRf MemVar_74A220
  loc_627A7F: NewIfNullPr clsProducts
  loc_627A82:  = clsProducts.Caption
  loc_627A87: FLdI2 var_F6
  loc_627A8A: FLdRfVar var_F8
  loc_627A8D: FLdRfVar var_A4
  loc_627A90: CI2Var
  loc_627A91: ImpAdLdRf MemVar_74A220
  loc_627A94: NewIfNullPr clsProducts
  loc_627A97: clsProducts.Caption = from_stack_1
  loc_627A9C: FLdI2 var_F8
  loc_627A9F: NotI4
  loc_627AA0: AndI4
  loc_627AA1: BranchF loc_627BC4
  loc_627AA4: LitVar_Missing var_B4
  loc_627AA7: PopAdLdVar
  loc_627AA8: FLdRfVar var_FC
  loc_627AAB: FLdRfVar var_A4
  loc_627AAE: CI2Var
  loc_627AAF: ImpAdLdRf MemVar_74A220
  loc_627AB2: NewIfNullPr clsProducts
  loc_627ABA: ILdRf var_FC
  loc_627ABD: FLdRfVar var_104
  loc_627AC0: ILdI2 i
  loc_627AC3: FLdPrThis
  loc_627AC4: VCallAd Control_ID_Combo1
  loc_627AC7: FStAdFunc var_100
  loc_627ACA: FLdPr var_100
  loc_627ACD: Set from_stack_2 = Me(from_stack_1)
  loc_627AD2: FLdPr var_104
  loc_627AD5: Me.AddItem from_stack_1, from_stack_2
  loc_627ADA: FFree1Str var_FC
  loc_627ADD: FFreeAd var_100 = ""
  loc_627AE4: FLdRfVar var_A4
  loc_627AE7: CI4Var
  loc_627AE9: FLdRfVar var_F6
  loc_627AEC: FLdRfVar var_104
  loc_627AEF: ILdI2 i
  loc_627AF2: FLdPrThis
  loc_627AF3: VCallAd Control_ID_Combo1
  loc_627AF6: FStAdFunc var_100
  loc_627AF9: FLdPr var_100
  loc_627AFC: Set from_stack_2 = Me(from_stack_1)
  loc_627B01: FLdPr var_104
  loc_627B04:  = Me.NewIndex
  loc_627B09: FLdI2 var_F6
  loc_627B0C: FLdRfVar var_10C
  loc_627B0F: ILdI2 i
  loc_627B12: FLdPrThis
  loc_627B13: VCallAd Control_ID_Combo1
  loc_627B16: FStAdFunc var_108
  loc_627B19: FLdPr var_108
  loc_627B1C: Set from_stack_2 = Me(from_stack_1)
  loc_627B21: FLdPr var_10C
  loc_627B24: Me.ItemData = from_stack_1
  loc_627B29: FFreeAd var_100 = "": var_104 = "": var_108 = ""
  loc_627B34: LitVar_Missing var_B4
  loc_627B37: PopAdLdVar
  loc_627B38: FLdRfVar var_FC
  loc_627B3B: FLdRfVar var_A4
  loc_627B3E: CI2Var
  loc_627B3F: ImpAdLdRf MemVar_74A220
  loc_627B42: NewIfNullPr clsProducts
  loc_627B4A: ILdRf var_FC
  loc_627B4D: FLdRfVar var_104
  loc_627B50: ILdI2 i
  loc_627B53: FLdPrThis
  loc_627B54: VCallAd Control_ID_Combo2
  loc_627B57: FStAdFunc var_100
  loc_627B5A: FLdPr var_100
  loc_627B5D: Set from_stack_2 = Me(from_stack_1)
  loc_627B62: FLdPr var_104
  loc_627B65: Me.AddItem from_stack_1, from_stack_2
  loc_627B6A: FFree1Str var_FC
  loc_627B6D: FFreeAd var_100 = ""
  loc_627B74: FLdRfVar var_A4
  loc_627B77: CI4Var
  loc_627B79: FLdRfVar var_F6
  loc_627B7C: FLdRfVar var_104
  loc_627B7F: ILdI2 i
  loc_627B82: FLdPrThis
  loc_627B83: VCallAd Control_ID_Combo2
  loc_627B86: FStAdFunc var_100
  loc_627B89: FLdPr var_100
  loc_627B8C: Set from_stack_2 = Me(from_stack_1)
  loc_627B91: FLdPr var_104
  loc_627B94:  = Me.NewIndex
  loc_627B99: FLdI2 var_F6
  loc_627B9C: FLdRfVar var_10C
  loc_627B9F: ILdI2 i
  loc_627BA2: FLdPrThis
  loc_627BA3: VCallAd Control_ID_Combo2
  loc_627BA6: FStAdFunc var_108
  loc_627BA9: FLdPr var_108
  loc_627BAC: Set from_stack_2 = Me(from_stack_1)
  loc_627BB1: FLdPr var_10C
  loc_627BB4: Me.ItemData = from_stack_1
  loc_627BB9: FFreeAd var_100 = "": var_104 = "": var_108 = ""
  loc_627BC4: FLdRfVar var_A4
  loc_627BC7: NextStepVar var_F4
  loc_627BCD: ExitProcCbHresult
End Function

Public Function CargarMezclas() '6CE3A8
  'Data Table: 434324
  loc_6CDA6C: LitI2_Byte 1
  loc_6CDA6E: FStI2 var_88
  loc_6CDA71: LitI2_Byte &HFF
  loc_6CDA73: FStI2 var_86
  loc_6CDA76: FLdRfVar var_9C
  loc_6CDA79: FLdRfVar var_98
  loc_6CDA7C: FLdI2 var_88
  loc_6CDA7F: FLdPrThis
  loc_6CDA80: VCallAd Control_ID_Text5
  loc_6CDA83: FStAdFunc CargarMezclas
  loc_6CDA86: FLdPr CargarMezclas
  loc_6CDA89: Set from_stack_2 = Me(from_stack_1)
  loc_6CDA8E: FLdPr var_98
  loc_6CDA91:  = Me.Text
  loc_6CDA96: FLdZeroAd var_9C
  loc_6CDA99: CVarStr var_AC
  loc_6CDA9C: FLdRfVar var_BC
  loc_6CDA9F: ImpAdCallFPR4  = Trim()
  loc_6CDAA4: FLdRfVar var_BC
  loc_6CDAA7: CStrVarTmp
  loc_6CDAA8: FStStr var_90
  loc_6CDAAB: FFreeAd CargarMezclas = ""
  loc_6CDAB2: FFreeVar var_AC = ""
  loc_6CDAB9: FLdI2 var_88
  loc_6CDABC: LitI2_Byte 8
  loc_6CDABE: LeI2
  loc_6CDABF: ILdRf var_90
  loc_6CDAC2: LitStr vbNullString
  loc_6CDAC5: NeStr
  loc_6CDAC7: AndI4
  loc_6CDAC8: BranchF loc_6CE3A0
  loc_6CDACB: ILdRf var_90
  loc_6CDACE: LitStr vbNullString
  loc_6CDAD1: NeStr
  loc_6CDAD3: FLdRfVar var_9C
  loc_6CDAD6: FLdRfVar var_98
  loc_6CDAD9: FLdI2 var_88
  loc_6CDADC: FLdPrThis
  loc_6CDADD: VCallAd Control_ID_Combo1
  loc_6CDAE0: FStAdFunc CargarMezclas
  loc_6CDAE3: FLdPr CargarMezclas
  loc_6CDAE6: Set from_stack_2 = Me(from_stack_1)
  loc_6CDAEB: FLdPr var_98
  loc_6CDAEE:  = Me.Text
  loc_6CDAF3: ILdRf var_9C
  loc_6CDAF6: LitStr vbNullString
  loc_6CDAF9: NeStr
  loc_6CDAFB: AndI4
  loc_6CDAFC: FLdRfVar var_C8
  loc_6CDAFF: FLdRfVar var_C4
  loc_6CDB02: FLdI2 var_88
  loc_6CDB05: FLdPrThis
  loc_6CDB06: VCallAd Control_ID_Combo2
  loc_6CDB09: FStAdFunc var_C0
  loc_6CDB0C: FLdPr var_C0
  loc_6CDB0F: Set from_stack_2 = Me(from_stack_1)
  loc_6CDB14: FLdPr var_C4
  loc_6CDB17:  = Me.Text
  loc_6CDB1C: ILdRf var_C8
  loc_6CDB1F: LitStr vbNullString
  loc_6CDB22: NeStr
  loc_6CDB24: AndI4
  loc_6CDB25: FLdRfVar var_D4
  loc_6CDB28: FLdRfVar var_D0
  loc_6CDB2B: FLdI2 var_88
  loc_6CDB2E: FLdPrThis
  loc_6CDB2F: VCallAd Control_ID_Text7
  loc_6CDB32: FStAdFunc var_CC
  loc_6CDB35: FLdPr var_CC
  loc_6CDB38: Set from_stack_2 = Me(from_stack_1)
  loc_6CDB3D: FLdPr var_D0
  loc_6CDB40:  = Me.Text
  loc_6CDB45: ILdRf var_D4
  loc_6CDB48: LitStr vbNullString
  loc_6CDB4B: NeStr
  loc_6CDB4D: AndI4
  loc_6CDB4E: FLdRfVar var_E0
  loc_6CDB51: FLdRfVar var_DC
  loc_6CDB54: FLdI2 var_88
  loc_6CDB57: FLdPrThis
  loc_6CDB58: VCallAd Control_ID_Text8
  loc_6CDB5B: FStAdFunc var_D8
  loc_6CDB5E: FLdPr var_D8
  loc_6CDB61: Set from_stack_2 = Me(from_stack_1)
  loc_6CDB66: FLdPr var_DC
  loc_6CDB69:  = Me.Text
  loc_6CDB6E: ILdRf var_E0
  loc_6CDB71: LitStr vbNullString
  loc_6CDB74: NeStr
  loc_6CDB76: AndI4
  loc_6CDB77: FFreeStr var_9C = "": var_C8 = "": var_D4 = ""
  loc_6CDB82: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6CDB95: BranchF loc_6CE315
  loc_6CDB98: FLdRfVar var_9C
  loc_6CDB9B: FLdRfVar var_98
  loc_6CDB9E: FLdI2 var_88
  loc_6CDBA1: FLdPrThis
  loc_6CDBA2: VCallAd Control_ID_Text5
  loc_6CDBA5: FStAdFunc CargarMezclas
  loc_6CDBA8: FLdPr CargarMezclas
  loc_6CDBAB: Set from_stack_2 = Me(from_stack_1)
  loc_6CDBB0: FLdPr var_98
  loc_6CDBB3:  = Me.Text
  loc_6CDBB8: ILdRf var_9C
  loc_6CDBBB: CI2Str
  loc_6CDBBD: FStI2 var_8A
  loc_6CDBC0: FFree1Str var_9C
  loc_6CDBC3: FFreeAd CargarMezclas = ""
  loc_6CDBCA: FLdRfVar var_E2
  loc_6CDBCD: FLdI2 var_8A
  loc_6CDBD0: ImpAdLdRf MemVar_74A220
  loc_6CDBD3: NewIfNullPr clsProducts
  loc_6CDBD6:  = clsProducts.Name
  loc_6CDBDB: FLdI2 var_E2
  loc_6CDBDE: LitI2_Byte 7
  loc_6CDBE0: EqI2
  loc_6CDBE1: BranchF loc_6CDE6F
  loc_6CDBE4: FLdRfVar var_E8
  loc_6CDBE7: FLdRfVar var_E2
  loc_6CDBEA: FLdRfVar var_98
  loc_6CDBED: FLdI2 var_88
  loc_6CDBF0: FLdPrThis
  loc_6CDBF1: VCallAd Control_ID_Combo1
  loc_6CDBF4: FStAdFunc CargarMezclas
  loc_6CDBF7: FLdPr CargarMezclas
  loc_6CDBFA: Set from_stack_2 = Me(from_stack_1)
  loc_6CDBFF: FLdPr var_98
  loc_6CDC02:  = Me.ListIndex
  loc_6CDC07: FLdI2 var_E2
  loc_6CDC0A: FLdRfVar var_C4
  loc_6CDC0D: FLdI2 var_88
  loc_6CDC10: FLdPrThis
  loc_6CDC11: VCallAd Control_ID_Combo1
  loc_6CDC14: FStAdFunc var_C0
  loc_6CDC17: FLdPr var_C0
  loc_6CDC1A: Set from_stack_2 = Me(from_stack_1)
  loc_6CDC1F: FLdPr var_C4
  loc_6CDC22:  = Me.ItemData
  loc_6CDC27: ILdRf var_E8
  loc_6CDC2A: LitI4 0
  loc_6CDC2F: EqI4
  loc_6CDC30: FLdRfVar var_F0
  loc_6CDC33: FLdRfVar var_EA
  loc_6CDC36: FLdRfVar var_D0
  loc_6CDC39: FLdI2 var_88
  loc_6CDC3C: FLdPrThis
  loc_6CDC3D: VCallAd Control_ID_Combo2
  loc_6CDC40: FStAdFunc var_CC
  loc_6CDC43: FLdPr var_CC
  loc_6CDC46: Set from_stack_2 = Me(from_stack_1)
  loc_6CDC4B: FLdPr var_D0
  loc_6CDC4E:  = Me.ListIndex
  loc_6CDC53: FLdI2 var_EA
  loc_6CDC56: FLdRfVar var_DC
  loc_6CDC59: FLdI2 var_88
  loc_6CDC5C: FLdPrThis
  loc_6CDC5D: VCallAd Control_ID_Combo2
  loc_6CDC60: FStAdFunc var_D8
  loc_6CDC63: FLdPr var_D8
  loc_6CDC66: Set from_stack_2 = Me(from_stack_1)
  loc_6CDC6B: FLdPr var_DC
  loc_6CDC6E:  = Me.ItemData
  loc_6CDC73: ILdRf var_F0
  loc_6CDC76: LitI4 0
  loc_6CDC7B: EqI4
  loc_6CDC7C: OrI4
  loc_6CDC7D: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6CDC90: BranchF loc_6CDD1B
  loc_6CDC93: FLdRfVar var_9C
  loc_6CDC96: FLdRfVar var_98
  loc_6CDC99: FLdI2 var_88
  loc_6CDC9C: FLdPrThis
  loc_6CDC9D: VCallAd Control_ID_Text5
  loc_6CDCA0: FStAdFunc CargarMezclas
  loc_6CDCA3: FLdPr CargarMezclas
  loc_6CDCA6: Set from_stack_2 = Me(from_stack_1)
  loc_6CDCAB: FLdPr var_98
  loc_6CDCAE:  = Me.Text
  loc_6CDCB3: LitI4 &HD
  loc_6CDCB8: FLdRfVar var_AC
  loc_6CDCBB: ImpAdCallFPR4  = Chr()
  loc_6CDCC0: LitVar_Missing var_180
  loc_6CDCC3: LitVar_Missing var_160
  loc_6CDCC6: LitVarStr var_130, "Atención"
  loc_6CDCCB: FStVarCopyObj var_140
  loc_6CDCCE: FLdRfVar var_140
  loc_6CDCD1: LitI4 &H40
  loc_6CDCD6: LitStr "Error en el código de producto: "
  loc_6CDCD9: ILdRf var_9C
  loc_6CDCDC: ConcatStr
  loc_6CDCDD: CVarStr var_BC
  loc_6CDCE0: FLdRfVar var_AC
  loc_6CDCE3: ConcatVar var_100
  loc_6CDCE7: LitVarStr var_110, "No existen productos con plomo"
  loc_6CDCEC: ConcatVar var_120
  loc_6CDCF0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CDCF5: FFree1Str var_9C
  loc_6CDCF8: FFreeAd CargarMezclas = ""
  loc_6CDCFF: FFreeVar var_BC = "": var_AC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_6CDD10: LitI2_Byte 0
  loc_6CDD12: FStI2 var_86
  loc_6CDD15: ExitProcCbHresult
  loc_6CDD1B: FLdRfVar var_EA
  loc_6CDD1E: FLdRfVar var_E8
  loc_6CDD21: FLdRfVar var_E2
  loc_6CDD24: FLdRfVar var_98
  loc_6CDD27: FLdI2 var_88
  loc_6CDD2A: FLdPrThis
  loc_6CDD2B: VCallAd Control_ID_Combo1
  loc_6CDD2E: FStAdFunc CargarMezclas
  loc_6CDD31: FLdPr CargarMezclas
  loc_6CDD34: Set from_stack_2 = Me(from_stack_1)
  loc_6CDD39: FLdPr var_98
  loc_6CDD3C:  = Me.ListIndex
  loc_6CDD41: FLdI2 var_E2
  loc_6CDD44: FLdRfVar var_C4
  loc_6CDD47: FLdI2 var_88
  loc_6CDD4A: FLdPrThis
  loc_6CDD4B: VCallAd Control_ID_Combo1
  loc_6CDD4E: FStAdFunc var_C0
  loc_6CDD51: FLdPr var_C0
  loc_6CDD54: Set from_stack_2 = Me(from_stack_1)
  loc_6CDD59: FLdPr var_C4
  loc_6CDD5C:  = Me.ItemData
  loc_6CDD61: ILdRf var_E8
  loc_6CDD64: CI2I4
  loc_6CDD65: ImpAdLdRf MemVar_74A220
  loc_6CDD68: NewIfNullPr clsProducts
  loc_6CDD6B: Call 0.Method_CargarMezclasC ()
  loc_6CDD70: FLdI2 var_EA
  loc_6CDD73: NotI4
  loc_6CDD74: FLdRfVar var_184
  loc_6CDD77: FLdRfVar var_F0
  loc_6CDD7A: FLdRfVar var_182
  loc_6CDD7D: FLdRfVar var_D0
  loc_6CDD80: FLdI2 var_88
  loc_6CDD83: FLdPrThis
  loc_6CDD84: VCallAd Control_ID_
  loc_6CDD87: FStAdFunc var_CC
  loc_6CDD8A: FLdPr var_CC
  loc_6CDD8D: Set from_stack_2 = clsProducts(from_stack_1)
  loc_6CDD92: FLdPr var_D0
  loc_6CDD95:  = Me.ListIndex
  loc_6CDD9A: FLdI2 var_182
  loc_6CDD9D: FLdRfVar var_DC
  loc_6CDDA0: FLdI2 var_88
  loc_6CDDA3: FLdPrThis
  loc_6CDDA4: VCallAd Control_ID_Combo2
  loc_6CDDA7: FStAdFunc var_D8
  loc_6CDDAA: FLdPr var_D8
  loc_6CDDAD: Set from_stack_2 = Me(from_stack_1)
  loc_6CDDB2: FLdPr var_DC
  loc_6CDDB5:  = Me.ItemData
  loc_6CDDBA: ILdRf var_F0
  loc_6CDDBD: CI2I4
  loc_6CDDBE: ImpAdLdRf MemVar_74A220
  loc_6CDDC1: NewIfNullPr clsProducts
  loc_6CDDC4: Call 0.Method_CargarMezclasC ()
  loc_6CDDC9: FLdI2 var_184
  loc_6CDDCC: NotI4
  loc_6CDDCD: OrI4
  loc_6CDDCE: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6CDDE1: BranchF loc_6CDE6C
  loc_6CDDE4: FLdRfVar var_9C
  loc_6CDDE7: FLdRfVar var_98
  loc_6CDDEA: FLdI2 var_88
  loc_6CDDED: FLdPrThis
  loc_6CDDEE: VCallAd Control_ID_
  loc_6CDDF1: FStAdFunc CargarMezclas
  loc_6CDDF4: FLdPr CargarMezclas
  loc_6CDDF7: Set from_stack_2 = clsProducts(from_stack_1)
  loc_6CDDFC: FLdPr var_98
  loc_6CDDFF:  = Me.Text
  loc_6CDE04: LitI4 &HD
  loc_6CDE09: FLdRfVar var_AC
  loc_6CDE0C: ImpAdCallFPR4  = Chr()
  loc_6CDE11: LitVar_Missing var_180
  loc_6CDE14: LitVar_Missing var_160
  loc_6CDE17: LitVarStr var_130, "Atención"
  loc_6CDE1C: FStVarCopyObj var_140
  loc_6CDE1F: FLdRfVar var_140
  loc_6CDE22: LitI4 &H40
  loc_6CDE27: LitStr "Error en el código de producto:"
  loc_6CDE2A: ILdRf var_9C
  loc_6CDE2D: ConcatStr
  loc_6CDE2E: CVarStr var_BC
  loc_6CDE31: FLdRfVar var_AC
  loc_6CDE34: ConcatVar var_100
  loc_6CDE38: LitVarStr var_110, "Los productos deben ser con plomo"
  loc_6CDE3D: ConcatVar var_120
  loc_6CDE41: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CDE46: FFree1Str var_9C
  loc_6CDE49: FFreeAd CargarMezclas = ""
  loc_6CDE50: FFreeVar var_BC = "": var_AC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_6CDE61: LitI2_Byte 0
  loc_6CDE63: FStI2 var_86
  loc_6CDE66: ExitProcCbHresult
  loc_6CDE6C: Branch loc_6CE10F
  loc_6CDE6F: FLdRfVar var_E2
  loc_6CDE72: FLdI2 var_8A
  loc_6CDE75: ImpAdLdRf MemVar_74A220
  loc_6CDE78: NewIfNullPr clsProducts
  loc_6CDE7B:  = clsProducts.Name
  loc_6CDE80: FLdI2 var_E2
  loc_6CDE83: LitI2_Byte 8
  loc_6CDE85: EqI2
  loc_6CDE86: BranchF loc_6CE10F
  loc_6CDE89: FLdRfVar var_E8
  loc_6CDE8C: FLdRfVar var_E2
  loc_6CDE8F: FLdRfVar var_98
  loc_6CDE92: FLdI2 var_88
  loc_6CDE95: FLdPrThis
  loc_6CDE96: VCallAd Control_ID_Combo1
  loc_6CDE99: FStAdFunc CargarMezclas
  loc_6CDE9C: FLdPr CargarMezclas
  loc_6CDE9F: Set from_stack_2 = Me(from_stack_1)
  loc_6CDEA4: FLdPr var_98
  loc_6CDEA7:  = Me.ListIndex
  loc_6CDEAC: FLdI2 var_E2
  loc_6CDEAF: FLdRfVar var_C4
  loc_6CDEB2: FLdI2 var_88
  loc_6CDEB5: FLdPrThis
  loc_6CDEB6: VCallAd Control_ID_Combo1
  loc_6CDEB9: FStAdFunc var_C0
  loc_6CDEBC: FLdPr var_C0
  loc_6CDEBF: Set from_stack_2 = Me(from_stack_1)
  loc_6CDEC4: FLdPr var_C4
  loc_6CDEC7:  = Me.ItemData
  loc_6CDECC: ILdRf var_E8
  loc_6CDECF: LitI4 0
  loc_6CDED4: EqI4
  loc_6CDED5: FLdRfVar var_F0
  loc_6CDED8: FLdRfVar var_EA
  loc_6CDEDB: FLdRfVar var_D0
  loc_6CDEDE: FLdI2 var_88
  loc_6CDEE1: FLdPrThis
  loc_6CDEE2: VCallAd Control_ID_Combo2
  loc_6CDEE5: FStAdFunc var_CC
  loc_6CDEE8: FLdPr var_CC
  loc_6CDEEB: Set from_stack_2 = Me(from_stack_1)
  loc_6CDEF0: FLdPr var_D0
  loc_6CDEF3:  = Me.ListIndex
  loc_6CDEF8: FLdI2 var_EA
  loc_6CDEFB: FLdRfVar var_DC
  loc_6CDEFE: FLdI2 var_88
  loc_6CDF01: FLdPrThis
  loc_6CDF02: VCallAd Control_ID_Combo2
  loc_6CDF05: FStAdFunc var_D8
  loc_6CDF08: FLdPr var_D8
  loc_6CDF0B: Set from_stack_2 = Me(from_stack_1)
  loc_6CDF10: FLdPr var_DC
  loc_6CDF13:  = Me.ItemData
  loc_6CDF18: ILdRf var_F0
  loc_6CDF1B: LitI4 0
  loc_6CDF20: EqI4
  loc_6CDF21: OrI4
  loc_6CDF22: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6CDF35: BranchF loc_6CDFC0
  loc_6CDF38: FLdRfVar var_9C
  loc_6CDF3B: FLdRfVar var_98
  loc_6CDF3E: FLdI2 var_88
  loc_6CDF41: FLdPrThis
  loc_6CDF42: VCallAd Control_ID_Text5
  loc_6CDF45: FStAdFunc CargarMezclas
  loc_6CDF48: FLdPr CargarMezclas
  loc_6CDF4B: Set from_stack_2 = Me(from_stack_1)
  loc_6CDF50: FLdPr var_98
  loc_6CDF53:  = Me.Text
  loc_6CDF58: LitI4 &HD
  loc_6CDF5D: FLdRfVar var_AC
  loc_6CDF60: ImpAdCallFPR4  = Chr()
  loc_6CDF65: LitVar_Missing var_180
  loc_6CDF68: LitVar_Missing var_160
  loc_6CDF6B: LitVarStr var_130, "Atención"
  loc_6CDF70: FStVarCopyObj var_140
  loc_6CDF73: FLdRfVar var_140
  loc_6CDF76: LitI4 &H40
  loc_6CDF7B: LitStr "Error en el código de producto:"
  loc_6CDF7E: ILdRf var_9C
  loc_6CDF81: ConcatStr
  loc_6CDF82: CVarStr var_BC
  loc_6CDF85: FLdRfVar var_AC
  loc_6CDF88: ConcatVar var_100
  loc_6CDF8C: LitVarStr var_110, "No existen productos sin plomo"
  loc_6CDF91: ConcatVar var_120
  loc_6CDF95: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CDF9A: FFree1Str var_9C
  loc_6CDF9D: FFreeAd CargarMezclas = ""
  loc_6CDFA4: FFreeVar var_BC = "": var_AC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_6CDFB5: LitI2_Byte 0
  loc_6CDFB7: FStI2 var_86
  loc_6CDFBA: ExitProcCbHresult
  loc_6CDFC0: FLdRfVar var_EA
  loc_6CDFC3: FLdRfVar var_E8
  loc_6CDFC6: FLdRfVar var_E2
  loc_6CDFC9: FLdRfVar var_98
  loc_6CDFCC: FLdI2 var_88
  loc_6CDFCF: FLdPrThis
  loc_6CDFD0: VCallAd Control_ID_Combo1
  loc_6CDFD3: FStAdFunc CargarMezclas
  loc_6CDFD6: FLdPr CargarMezclas
  loc_6CDFD9: Set from_stack_2 = Me(from_stack_1)
  loc_6CDFDE: FLdPr var_98
  loc_6CDFE1:  = Me.ListIndex
  loc_6CDFE6: FLdI2 var_E2
  loc_6CDFE9: FLdRfVar var_C4
  loc_6CDFEC: FLdI2 var_88
  loc_6CDFEF: FLdPrThis
  loc_6CDFF0: VCallAd Control_ID_Combo1
  loc_6CDFF3: FStAdFunc var_C0
  loc_6CDFF6: FLdPr var_C0
  loc_6CDFF9: Set from_stack_2 = Me(from_stack_1)
  loc_6CDFFE: FLdPr var_C4
  loc_6CE001:  = Me.ItemData
  loc_6CE006: ILdRf var_E8
  loc_6CE009: CI2I4
  loc_6CE00A: ImpAdLdRf MemVar_74A220
  loc_6CE00D: NewIfNullPr clsProducts
  loc_6CE010: Call 0.Method_CargarMezclasC ()
  loc_6CE015: FLdI2 var_EA
  loc_6CE018: FLdRfVar var_184
  loc_6CE01B: FLdRfVar var_F0
  loc_6CE01E: FLdRfVar var_182
  loc_6CE021: FLdRfVar var_D0
  loc_6CE024: FLdI2 var_88
  loc_6CE027: FLdPrThis
  loc_6CE028: VCallAd Control_ID_
  loc_6CE02B: FStAdFunc var_CC
  loc_6CE02E: FLdPr var_CC
  loc_6CE031: Set from_stack_2 = clsProducts(from_stack_1)
  loc_6CE036: FLdPr var_D0
  loc_6CE039:  = Me.ListIndex
  loc_6CE03E: FLdI2 var_182
  loc_6CE041: FLdRfVar var_DC
  loc_6CE044: FLdI2 var_88
  loc_6CE047: FLdPrThis
  loc_6CE048: VCallAd Control_ID_Combo2
  loc_6CE04B: FStAdFunc var_D8
  loc_6CE04E: FLdPr var_D8
  loc_6CE051: Set from_stack_2 = Me(from_stack_1)
  loc_6CE056: FLdPr var_DC
  loc_6CE059:  = Me.ItemData
  loc_6CE05E: ILdRf var_F0
  loc_6CE061: CI2I4
  loc_6CE062: ImpAdLdRf MemVar_74A220
  loc_6CE065: NewIfNullPr clsProducts
  loc_6CE068: Call 0.Method_CargarMezclasC ()
  loc_6CE06D: FLdI2 var_184
  loc_6CE070: OrI4
  loc_6CE071: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6CE084: BranchF loc_6CE10F
  loc_6CE087: FLdRfVar var_9C
  loc_6CE08A: FLdRfVar var_98
  loc_6CE08D: FLdI2 var_88
  loc_6CE090: FLdPrThis
  loc_6CE091: VCallAd Control_ID_
  loc_6CE094: FStAdFunc CargarMezclas
  loc_6CE097: FLdPr CargarMezclas
  loc_6CE09A: Set from_stack_2 = clsProducts(from_stack_1)
  loc_6CE09F: FLdPr var_98
  loc_6CE0A2:  = Me.Text
  loc_6CE0A7: LitI4 &HD
  loc_6CE0AC: FLdRfVar var_AC
  loc_6CE0AF: ImpAdCallFPR4  = Chr()
  loc_6CE0B4: LitVar_Missing var_180
  loc_6CE0B7: LitVar_Missing var_160
  loc_6CE0BA: LitVarStr var_130, "Atención"
  loc_6CE0BF: FStVarCopyObj var_140
  loc_6CE0C2: FLdRfVar var_140
  loc_6CE0C5: LitI4 &H40
  loc_6CE0CA: LitStr "Error en el código de producto:"
  loc_6CE0CD: ILdRf var_9C
  loc_6CE0D0: ConcatStr
  loc_6CE0D1: CVarStr var_BC
  loc_6CE0D4: FLdRfVar var_AC
  loc_6CE0D7: ConcatVar var_100
  loc_6CE0DB: LitVarStr var_110, "Los productos deben ser sin plomo"
  loc_6CE0E0: ConcatVar var_120
  loc_6CE0E4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CE0E9: FFree1Str var_9C
  loc_6CE0EC: FFreeAd CargarMezclas = ""
  loc_6CE0F3: FFreeVar var_BC = "": var_AC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_6CE104: LitI2_Byte 0
  loc_6CE106: FStI2 var_86
  loc_6CE109: ExitProcCbHresult
  loc_6CE10F: FLdRfVar var_E2
  loc_6CE112: FLdRfVar var_9C
  loc_6CE115: FLdRfVar var_98
  loc_6CE118: FLdI2 var_88
  loc_6CE11B: FLdPrThis
  loc_6CE11C: VCallAd Control_ID_Combo1
  loc_6CE11F: FStAdFunc CargarMezclas
  loc_6CE122: FLdPr CargarMezclas
  loc_6CE125: Set from_stack_2 = Me(from_stack_1)
  loc_6CE12A: FLdPr var_98
  loc_6CE12D:  = Me.Text
  loc_6CE132: ILdRf var_9C
  loc_6CE135: ImpAdLdRf MemVar_74A220
  loc_6CE138: NewIfNullPr clsProducts
  loc_6CE140: FLdI2 var_E2
  loc_6CE143: PopTmpLdAd2 var_EA
  loc_6CE146: FLdI2 var_8A
  loc_6CE149: ImpAdLdRf MemVar_74A220
  loc_6CE14C: NewIfNullPr clsProducts
  loc_6CE14F: Call 0.Method_arg_5C ()
  loc_6CE154: FFree1Str var_9C
  loc_6CE157: FFreeAd CargarMezclas = ""
  loc_6CE15E: FLdRfVar var_9C
  loc_6CE161: FLdRfVar var_98
  loc_6CE164: FLdI2 var_88
  loc_6CE167: FLdPrThis
  loc_6CE168: VCallAd Control_ID_
  loc_6CE16B: FStAdFunc CargarMezclas
  loc_6CE16E: FLdPr CargarMezclas
  loc_6CE171: Set from_stack_2 = clsProducts(from_stack_1)
  loc_6CE176: FLdPr var_98
  loc_6CE179:  = Me.Text
  loc_6CE17E: ILdRf var_9C
  loc_6CE181: CI2Str
  loc_6CE183: PopTmpLdAd2 var_E2
  loc_6CE186: FLdI2 var_8A
  loc_6CE189: ImpAdLdRf MemVar_74A220
  loc_6CE18C: NewIfNullPr clsProducts
  loc_6CE18F: clsProducts.BackColor = from_stack_1
  loc_6CE194: FFree1Str var_9C
  loc_6CE197: FFreeAd CargarMezclas = ""
  loc_6CE19E: FLdRfVar var_E2
  loc_6CE1A1: FLdRfVar var_9C
  loc_6CE1A4: FLdRfVar var_98
  loc_6CE1A7: FLdI2 var_88
  loc_6CE1AA: FLdPrThis
  loc_6CE1AB: VCallAd Control_ID_Combo2
  loc_6CE1AE: FStAdFunc CargarMezclas
  loc_6CE1B1: FLdPr CargarMezclas
  loc_6CE1B4: Set from_stack_2 = Me(from_stack_1)
  loc_6CE1B9: FLdPr var_98
  loc_6CE1BC:  = Me.Text
  loc_6CE1C1: ILdRf var_9C
  loc_6CE1C4: ImpAdLdRf MemVar_74A220
  loc_6CE1C7: NewIfNullPr clsProducts
  loc_6CE1CF: FLdI2 var_E2
  loc_6CE1D2: PopTmpLdAd2 var_EA
  loc_6CE1D5: FLdI2 var_8A
  loc_6CE1D8: ImpAdLdRf MemVar_74A220
  loc_6CE1DB: NewIfNullPr clsProducts
  loc_6CE1DE: clsProducts.ForeColor = from_stack_1
  loc_6CE1E3: FFree1Str var_9C
  loc_6CE1E6: FFreeAd CargarMezclas = ""
  loc_6CE1ED: FLdRfVar var_9C
  loc_6CE1F0: FLdRfVar var_98
  loc_6CE1F3: FLdI2 var_88
  loc_6CE1F6: FLdPrThis
  loc_6CE1F7: VCallAd Control_ID_Text8
  loc_6CE1FA: FStAdFunc CargarMezclas
  loc_6CE1FD: FLdPr CargarMezclas
  loc_6CE200: Set from_stack_2 = Me(from_stack_1)
  loc_6CE205: FLdPr var_98
  loc_6CE208:  = Me.Text
  loc_6CE20D: ILdRf var_9C
  loc_6CE210: CI2Str
  loc_6CE212: PopTmpLdAd2 var_E2
  loc_6CE215: FLdI2 var_8A
  loc_6CE218: ImpAdLdRf MemVar_74A220
  loc_6CE21B: NewIfNullPr clsProducts
  loc_6CE21E: clsProducts.Left = from_stack_1s
  loc_6CE223: FFree1Str var_9C
  loc_6CE226: FFreeAd CargarMezclas = ""
  loc_6CE22D: FLdRfVar var_9C
  loc_6CE230: FLdRfVar var_98
  loc_6CE233: FLdI2 var_88
  loc_6CE236: FLdPrThis
  loc_6CE237: VCallAd Control_ID_Combo1
  loc_6CE23A: FStAdFunc CargarMezclas
  loc_6CE23D: FLdPr CargarMezclas
  loc_6CE240: Set from_stack_2 = Me(from_stack_1)
  loc_6CE245: FLdPr var_98
  loc_6CE248:  = Me.Text
  loc_6CE24D: ILdRf var_9C
  loc_6CE250: FLdRfVar var_C8
  loc_6CE253: FLdRfVar var_C4
  loc_6CE256: FLdI2 var_88
  loc_6CE259: FLdPrThis
  loc_6CE25A: VCallAd Control_ID_Combo2
  loc_6CE25D: FStAdFunc var_C0
  loc_6CE260: FLdPr var_C0
  loc_6CE263: Set from_stack_2 = Me(from_stack_1)
  loc_6CE268: FLdPr var_C4
  loc_6CE26B:  = Me.Text
  loc_6CE270: ILdRf var_C8
  loc_6CE273: EqStr
  loc_6CE275: FFreeStr var_9C = ""
  loc_6CE27C: FFreeAd CargarMezclas = "": var_98 = "": var_C0 = ""
  loc_6CE287: BranchF loc_6CE312
  loc_6CE28A: FLdRfVar var_9C
  loc_6CE28D: FLdRfVar var_98
  loc_6CE290: FLdI2 var_88
  loc_6CE293: FLdPrThis
  loc_6CE294: VCallAd Control_ID_Text5
  loc_6CE297: FStAdFunc CargarMezclas
  loc_6CE29A: FLdPr CargarMezclas
  loc_6CE29D: Set from_stack_2 = Me(from_stack_1)
  loc_6CE2A2: FLdPr var_98
  loc_6CE2A5:  = Me.Text
  loc_6CE2AA: LitI4 &HD
  loc_6CE2AF: FLdRfVar var_AC
  loc_6CE2B2: ImpAdCallFPR4  = Chr()
  loc_6CE2B7: LitVar_Missing var_180
  loc_6CE2BA: LitVar_Missing var_160
  loc_6CE2BD: LitVarStr var_130, "Atención"
  loc_6CE2C2: FStVarCopyObj var_140
  loc_6CE2C5: FLdRfVar var_140
  loc_6CE2C8: LitI4 &H40
  loc_6CE2CD: LitStr "Error en el código de producto:"
  loc_6CE2D0: ILdRf var_9C
  loc_6CE2D3: ConcatStr
  loc_6CE2D4: CVarStr var_BC
  loc_6CE2D7: FLdRfVar var_AC
  loc_6CE2DA: ConcatVar var_100
  loc_6CE2DE: LitVarStr var_110, "El producto Bajo debe ser distinto al producto Alto"
  loc_6CE2E3: ConcatVar var_120
  loc_6CE2E7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CE2EC: FFree1Str var_9C
  loc_6CE2EF: FFreeAd CargarMezclas = ""
  loc_6CE2F6: FFreeVar var_BC = "": var_AC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_6CE307: LitI2_Byte 0
  loc_6CE309: FStI2 var_86
  loc_6CE30C: ExitProcCbHresult
  loc_6CE312: Branch loc_6CE351
  loc_6CE315: LitVar_Missing var_120
  loc_6CE318: LitVar_Missing var_100
  loc_6CE31B: LitVarStr var_130, "Atención"
  loc_6CE320: FStVarCopyObj var_BC
  loc_6CE323: FLdRfVar var_BC
  loc_6CE326: LitI4 &H40
  loc_6CE32B: LitVarStr var_110, "Faltan completar campos"
  loc_6CE330: FStVarCopyObj var_AC
  loc_6CE333: FLdRfVar var_AC
  loc_6CE336: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CE33B: FFreeVar var_AC = "": var_BC = "": var_100 = ""
  loc_6CE346: LitI2_Byte 0
  loc_6CE348: FStI2 var_86
  loc_6CE34B: ExitProcCbHresult
  loc_6CE351: FLdI2 var_88
  loc_6CE354: LitI2_Byte 1
  loc_6CE356: AddI2
  loc_6CE357: FStI2 var_88
  loc_6CE35A: FLdRfVar var_9C
  loc_6CE35D: FLdRfVar var_98
  loc_6CE360: FLdI2 var_88
  loc_6CE363: FLdPrThis
  loc_6CE364: VCallAd Control_ID_Text5
  loc_6CE367: FStAdFunc CargarMezclas
  loc_6CE36A: FLdPr CargarMezclas
  loc_6CE36D: Set from_stack_2 = Me(from_stack_1)
  loc_6CE372: FLdPr var_98
  loc_6CE375:  = Me.Text
  loc_6CE37A: FLdZeroAd var_9C
  loc_6CE37D: CVarStr var_AC
  loc_6CE380: FLdRfVar var_BC
  loc_6CE383: ImpAdCallFPR4  = Trim()
  loc_6CE388: FLdRfVar var_BC
  loc_6CE38B: CStrVarTmp
  loc_6CE38C: FStStr var_90
  loc_6CE38F: FFreeAd CargarMezclas = ""
  loc_6CE396: FFreeVar var_AC = ""
  loc_6CE39D: Branch loc_6CDAB9
  loc_6CE3A0: ExitProcCbHresult
End Function

Public Function CalcularProdAlto(sValor, Index) '5DE5A4
  'Data Table: 434324
  loc_5DE560: ZeroRetValVar
  loc_5DE562: ILdI4 sValor
  loc_5DE565: CI2Str
  loc_5DE567: FStI2 var_96
  loc_5DE56A: LitI2_Byte &H64
  loc_5DE56C: FLdI2 var_96
  loc_5DE56F: SubI2
  loc_5DE570: CStrUI1
  loc_5DE572: FStStrNoPop var_A4
  loc_5DE575: FLdRfVar var_A0
  loc_5DE578: ILdI2 Index
  loc_5DE57B: FLdPrThis
  loc_5DE57C: VCallAd Control_ID_Text8
  loc_5DE57F: FStAdFunc var_9C
  loc_5DE582: FLdPr var_9C
  loc_5DE585: Set from_stack_2 = Me(from_stack_1)
  loc_5DE58A: FLdPr var_A0
  loc_5DE58D: Me.Text = from_stack_1
  loc_5DE592: FFree1Str var_A4
  loc_5DE595: FFreeAd var_9C = ""
  loc_5DE59C: ExitProcCbHresult
End Function

Private Function Proc_114_19_5CFA9C() '5CFA9C
  'Data Table: 434324
  loc_5CFA84: LitVar_Missing var_A4
  loc_5CFA87: PopAdLdVar
  loc_5CFA88: LitVarI2 var_94, 1
  loc_5CFA8D: PopAdLdVar
  loc_5CFA8E: ImpAdLdRf MemVar_74E150
  loc_5CFA91: NewIfNullPr fTipoProducto
  loc_5CFA94: fTipoProducto.Show from_stack_1, from_stack_2
  loc_5CFA99: ExitProcHresult
End Function

Private Function Proc_114_20_5D45E4() '5D45E4
  'Data Table: 434324
  loc_5D45C4: FLdPr Me
  loc_5D45C7: Me.Hide
  loc_5D45CC: LitVar_Missing var_B8
  loc_5D45CF: PopAdLdVar
  loc_5D45D0: LitVarI2 var_A8, 1
  loc_5D45D5: PopAdLdVar
  loc_5D45D6: ImpAdLdRf MemVar_74C900
  loc_5D45D9: NewIfNullPr fCapacidadTanque
  loc_5D45DC: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5D45E1: ExitProcHresult
End Function

Private Function Proc_114_21_5D3D84() '5D3D84
  'Data Table: 434324
  loc_5D3D64: FLdPr Me
  loc_5D3D67: Me.Hide
  loc_5D3D6C: LitVar_Missing var_A4
  loc_5D3D6F: PopAdLdVar
  loc_5D3D70: LitVarI2 var_94, 1
  loc_5D3D75: PopAdLdVar
  loc_5D3D76: ImpAdLdRf MemVar_74E150
  loc_5D3D79: NewIfNullPr fTipoProducto
  loc_5D3D7C: fTipoProducto.Show from_stack_1, from_stack_2
  loc_5D3D81: ExitProcHresult
End Function
