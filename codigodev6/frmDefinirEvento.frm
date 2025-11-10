VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmDefinirEvento
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 11910
  ClientHeight = 8910
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CheckBox chkDia
    Caption = "Ultimo día de Mes"
    Left = 9000
    Top = 5640
    Width = 2415
    Height = 375
    TabIndex = 89
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame fraAlarma
    Caption = "Alarmas"
    Left = 240
    Top = 6600
    Width = 4215
    Height = 1695
    TabIndex = 21
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox chkAlarma
      Caption = "Fin"
      Index = 2
      Left = 240
      Top = 1200
      Width = 1695
      Height = 375
      TabIndex = 18
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkAlarma
      Caption = "Inicio"
      Index = 1
      Left = 240
      Top = 840
      Width = 1695
      Height = 375
      TabIndex = 17
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkAlarma
      Caption = "Preaviso"
      Index = 0
      Left = 240
      Top = 480
      Width = 1815
      Height = 375
      TabIndex = 16
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox metxtMinutosAlarma
      Left = 3360
      Top = 480
      Width = 495
      Height = 375
      TabIndex = 19
      OleObjectBlob = "frmDefinirEvento.frx":0000
    End
    Begin VB.Label lblMinutosAlarma
      Caption = "Minutos:"
      Left = 2160
      Top = 480
      Width = 1095
      Height = 375
      TabIndex = 22
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSMask.MaskEdBox metxtHora
    Left = 7920
    Top = 6840
    Width = 855
    Height = 375
    TabIndex = 91
    OleObjectBlob = "frmDefinirEvento.frx":0084
  End
  Begin VB.ComboBox cboDiaSemana
    Style = 2
    Left = 7920
    Top = 6240
    Width = 1815
    Height = 405
    TabIndex = 90
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox cboDia
    Style = 2
    Left = 7920
    Top = 5640
    Width = 735
    Height = 405
    TabIndex = 88
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox cboMes
    Style = 2
    Left = 7920
    Top = 5040
    Width = 1815
    Height = 405
    TabIndex = 87
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame fraTemporizacion
    Caption = "Temporización"
    Left = 240
    Top = 3720
    Width = 4215
    Height = 2415
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optTemporizacion
      Caption = "Unica vez"
      Index = 4
      Left = 240
      Top = 1920
      Width = 1455
      Height = 375
      TabIndex = 12
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTemporizacion
      Caption = "Anual"
      Index = 3
      Left = 240
      Top = 1560
      Width = 1455
      Height = 375
      TabIndex = 11
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTemporizacion
      Caption = "Mensual"
      Index = 2
      Left = 240
      Top = 1200
      Width = 1455
      Height = 375
      TabIndex = 10
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTemporizacion
      Caption = "Semanal"
      Index = 1
      Left = 240
      Top = 840
      Width = 1455
      Height = 375
      TabIndex = 9
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTemporizacion
      Caption = "Diaria"
      Index = 0
      Left = 240
      Top = 480
      Width = 1455
      Height = 375
      TabIndex = 8
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame fraNivelPrecio
    Caption = "Nivel de Precios"
    Left = 5040
    Top = 1200
    Width = 6615
    Height = 3495
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 31
      Left = 5640
      Top = 3000
      Width = 735
      Height = 330
      TabIndex = 83
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 30
      Left = 4080
      Top = 3000
      Width = 615
      Height = 330
      TabIndex = 82
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 29
      Left = 2520
      Top = 3000
      Width = 615
      Height = 330
      TabIndex = 81
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 28
      Left = 960
      Top = 3000
      Width = 615
      Height = 330
      TabIndex = 80
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 27
      Left = 5640
      Top = 2640
      Width = 735
      Height = 330
      TabIndex = 75
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 26
      Left = 4080
      Top = 2640
      Width = 615
      Height = 330
      TabIndex = 74
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 25
      Left = 2520
      Top = 2640
      Width = 615
      Height = 330
      TabIndex = 73
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 24
      Left = 960
      Top = 2640
      Width = 615
      Height = 330
      TabIndex = 72
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 23
      Left = 5640
      Top = 2280
      Width = 735
      Height = 330
      TabIndex = 67
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 22
      Left = 4080
      Top = 2280
      Width = 615
      Height = 330
      TabIndex = 66
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 21
      Left = 2520
      Top = 2280
      Width = 615
      Height = 330
      TabIndex = 65
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 20
      Left = 960
      Top = 2280
      Width = 615
      Height = 330
      TabIndex = 64
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 19
      Left = 5640
      Top = 1920
      Width = 735
      Height = 330
      TabIndex = 59
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 18
      Left = 4080
      Top = 1920
      Width = 615
      Height = 330
      TabIndex = 58
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 17
      Left = 2520
      Top = 1920
      Width = 615
      Height = 330
      TabIndex = 57
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 16
      Left = 960
      Top = 1920
      Width = 615
      Height = 330
      TabIndex = 56
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 15
      Left = 5640
      Top = 1560
      Width = 735
      Height = 330
      TabIndex = 51
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 14
      Left = 4080
      Top = 1560
      Width = 615
      Height = 330
      TabIndex = 50
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 13
      Left = 2520
      Top = 1560
      Width = 615
      Height = 330
      TabIndex = 49
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 12
      Left = 960
      Top = 1560
      Width = 615
      Height = 330
      TabIndex = 48
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 11
      Left = 5640
      Top = 1200
      Width = 735
      Height = 330
      TabIndex = 43
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 10
      Left = 4080
      Top = 1200
      Width = 615
      Height = 330
      TabIndex = 42
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 9
      Left = 2520
      Top = 1200
      Width = 615
      Height = 330
      TabIndex = 41
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 8
      Left = 960
      Top = 1200
      Width = 615
      Height = 330
      TabIndex = 40
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 7
      Left = 5640
      Top = 840
      Width = 735
      Height = 330
      TabIndex = 35
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 6
      Left = 4080
      Top = 840
      Width = 615
      Height = 330
      TabIndex = 34
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 5
      Left = 2520
      Top = 840
      Width = 615
      Height = 330
      TabIndex = 33
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 4
      Left = 960
      Top = 840
      Width = 615
      Height = 330
      TabIndex = 32
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 3
      Left = 5640
      Top = 480
      Width = 735
      Height = 330
      TabIndex = 27
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 2
      Left = 4080
      Top = 480
      Width = 615
      Height = 330
      TabIndex = 26
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 1
      Left = 2520
      Top = 480
      Width = 615
      Height = 330
      TabIndex = 25
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboSurtidor
      Style = 2
      Index = 0
      Left = 960
      Top = 480
      Width = 615
      Height = 330
      TabIndex = 24
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 31
      Left = 4800
      Top = 3000
      Width = 735
      Height = 375
      TabIndex = 86
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 30
      Left = 3240
      Top = 3000
      Width = 735
      Height = 375
      TabIndex = 85
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 29
      Left = 1680
      Top = 3000
      Width = 735
      Height = 375
      TabIndex = 84
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 28
      Left = 120
      Top = 3000
      Width = 735
      Height = 375
      TabIndex = 79
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 27
      Left = 4800
      Top = 2640
      Width = 735
      Height = 375
      TabIndex = 78
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 26
      Left = 3240
      Top = 2640
      Width = 735
      Height = 375
      TabIndex = 77
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 25
      Left = 1680
      Top = 2640
      Width = 735
      Height = 375
      TabIndex = 76
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 24
      Left = 120
      Top = 2640
      Width = 735
      Height = 375
      TabIndex = 71
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 23
      Left = 4800
      Top = 2280
      Width = 735
      Height = 375
      TabIndex = 70
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 22
      Left = 3240
      Top = 2280
      Width = 735
      Height = 375
      TabIndex = 69
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 21
      Left = 1680
      Top = 2280
      Width = 735
      Height = 375
      TabIndex = 68
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 20
      Left = 120
      Top = 2280
      Width = 735
      Height = 375
      TabIndex = 63
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 19
      Left = 4800
      Top = 1920
      Width = 735
      Height = 375
      TabIndex = 62
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 18
      Left = 3240
      Top = 1920
      Width = 735
      Height = 375
      TabIndex = 61
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 17
      Left = 1680
      Top = 1920
      Width = 735
      Height = 375
      TabIndex = 60
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 16
      Left = 120
      Top = 1920
      Width = 735
      Height = 375
      TabIndex = 55
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 15
      Left = 4800
      Top = 1560
      Width = 735
      Height = 375
      TabIndex = 54
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 14
      Left = 3240
      Top = 1560
      Width = 735
      Height = 375
      TabIndex = 53
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 13
      Left = 1680
      Top = 1560
      Width = 735
      Height = 375
      TabIndex = 52
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 12
      Left = 120
      Top = 1560
      Width = 735
      Height = 375
      TabIndex = 47
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 11
      Left = 4800
      Top = 1200
      Width = 735
      Height = 375
      TabIndex = 46
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 10
      Left = 3240
      Top = 1200
      Width = 735
      Height = 375
      TabIndex = 45
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 9
      Left = 1680
      Top = 1200
      Width = 735
      Height = 375
      TabIndex = 44
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 8
      Left = 120
      Top = 1200
      Width = 735
      Height = 375
      TabIndex = 39
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 7
      Left = 4800
      Top = 840
      Width = 735
      Height = 375
      TabIndex = 38
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 6
      Left = 3240
      Top = 840
      Width = 735
      Height = 375
      TabIndex = 37
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 5
      Left = 1680
      Top = 840
      Width = 735
      Height = 375
      TabIndex = 36
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 4
      Left = 120
      Top = 840
      Width = 735
      Height = 375
      TabIndex = 31
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 3
      Left = 4800
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 30
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 2
      Left = 3240
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 29
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 1
      Left = 1680
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 28
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtidor
      Caption = "Surt. 32:"
      Index = 0
      Left = 120
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 23
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7560
    Top = 7800
    Width = 1815
    Height = 855
    TabIndex = 92
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 9840
    Top = 7800
    Width = 1815
    Height = 855
    TabIndex = 93
    Default = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame fraTipoEvento
    Caption = "Tipo de Evento"
    Left = 240
    Top = 1200
    Width = 4215
    Height = 2055
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optTipoEvento
      Caption = "Cambio de Nivel de Precio"
      Index = 3
      Left = 240
      Top = 1560
      Width = 3735
      Height = 375
      TabIndex = 5
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTipoEvento
      Caption = "Cierre de Mes"
      Index = 2
      Left = 240
      Top = 1200
      Width = 3735
      Height = 375
      TabIndex = 4
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTipoEvento
      Caption = "Cierre de Día"
      Index = 1
      Left = 240
      Top = 840
      Width = 3735
      Height = 375
      TabIndex = 3
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton optTipoEvento
      Caption = "Cierre de Turno"
      Index = 0
      Left = 240
      Top = 480
      Width = 3735
      Height = 375
      TabIndex = 2
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Label lblHora
    Caption = "Hora de Activación:"
    Left = 4680
    Top = 6840
    Width = 3015
    Height = 375
    TabIndex = 20
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblDiaSemana
    Caption = "Día Semana:"
    Left = 4680
    Top = 6240
    Width = 3015
    Height = 375
    TabIndex = 15
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblDia
    Caption = "Día:"
    Left = 4680
    Top = 5640
    Width = 3015
    Height = 375
    TabIndex = 14
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblMes
    Caption = "Mes:"
    Left = 4680
    Top = 5040
    Width = 2895
    Height = 375
    TabIndex = 13
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Definición de Eventos"
    Left = 3240
    Top = 360
    Width = 5415
    Height = 615
    TabIndex = 0
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 21.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmDefinirEvento"

Public msEvento As String
Public strRightTime As String
Public strRightMinute As String
Public strRightMinute2 As String


Private Sub Form_Load() '7155E0
  'Data Table: 447224
  loc_713D00: FLdRfVar var_1DC
  loc_713D03: LitVar_Missing var_1D8
  loc_713D06: LitVar_Missing var_1B8
  loc_713D09: LitVar_Missing var_198
  loc_713D0C: LitVar_Missing var_178
  loc_713D0F: LitVar_Missing var_158
  loc_713D12: LitVar_Missing var_138
  loc_713D15: LitVar_Missing var_118
  loc_713D18: LitVar_Missing var_F8
  loc_713D1B: LitVar_Missing var_D8
  loc_713D1E: LitVar_Missing var_B8
  loc_713D21: LitStr "Definición de Eventos"
  loc_713D24: FStStrCopy var_98
  loc_713D27: FLdRfVar var_98
  loc_713D2A: LitI4 1
  loc_713D2F: PopTmpLdAdStr var_94
  loc_713D32: LitI2_Byte &H18
  loc_713D34: PopTmpLdAd2 var_8E
  loc_713D37: ImpAdLdRf MemVar_74C7D0
  loc_713D3A: NewIfNullPr clsMsg
  loc_713D3D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713D42: ILdRf var_1DC
  loc_713D45: FLdPrThis
  loc_713D46: VCallAd Control_ID_Label1
  loc_713D49: FStAdFunc var_1E0
  loc_713D4C: FLdPr var_1E0
  loc_713D4F: Me.Caption = from_stack_1
  loc_713D54: FFreeStr var_98 = ""
  loc_713D5B: FFree1Ad var_1E0
  loc_713D5E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713D75: FLdRfVar var_1DC
  loc_713D78: LitVar_Missing var_1D8
  loc_713D7B: LitVar_Missing var_1B8
  loc_713D7E: LitVar_Missing var_198
  loc_713D81: LitVar_Missing var_178
  loc_713D84: LitVar_Missing var_158
  loc_713D87: LitVar_Missing var_138
  loc_713D8A: LitVar_Missing var_118
  loc_713D8D: LitVar_Missing var_F8
  loc_713D90: LitVar_Missing var_D8
  loc_713D93: LitVar_Missing var_B8
  loc_713D96: LitStr "Tipo de Evento"
  loc_713D99: FStStrCopy var_98
  loc_713D9C: FLdRfVar var_98
  loc_713D9F: LitI4 2
  loc_713DA4: PopTmpLdAdStr var_94
  loc_713DA7: LitI2_Byte &H18
  loc_713DA9: PopTmpLdAd2 var_8E
  loc_713DAC: ImpAdLdRf MemVar_74C7D0
  loc_713DAF: NewIfNullPr clsMsg
  loc_713DB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713DB7: ILdRf var_1DC
  loc_713DBA: FLdPrThis
  loc_713DBB: VCallAd Control_ID_fraTipoEvento
  loc_713DBE: FStAdFunc var_1E0
  loc_713DC1: FLdPr var_1E0
  loc_713DC4: Me.Caption = from_stack_1
  loc_713DC9: FFreeStr var_98 = ""
  loc_713DD0: FFree1Ad var_1E0
  loc_713DD3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713DEA: FLdRfVar var_1DC
  loc_713DED: LitVar_Missing var_1D8
  loc_713DF0: LitVar_Missing var_1B8
  loc_713DF3: LitVar_Missing var_198
  loc_713DF6: LitVar_Missing var_178
  loc_713DF9: LitVar_Missing var_158
  loc_713DFC: LitVar_Missing var_138
  loc_713DFF: LitVar_Missing var_118
  loc_713E02: LitVar_Missing var_F8
  loc_713E05: LitVar_Missing var_D8
  loc_713E08: LitVar_Missing var_B8
  loc_713E0B: LitStr "Cierre de Turno"
  loc_713E0E: FStStrCopy var_98
  loc_713E11: FLdRfVar var_98
  loc_713E14: LitI4 3
  loc_713E19: PopTmpLdAdStr var_94
  loc_713E1C: LitI2_Byte &H18
  loc_713E1E: PopTmpLdAd2 var_8E
  loc_713E21: ImpAdLdRf MemVar_74C7D0
  loc_713E24: NewIfNullPr clsMsg
  loc_713E27: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713E2C: ILdRf var_1DC
  loc_713E2F: FLdRfVar var_1E4
  loc_713E32: LitI2_Byte 0
  loc_713E34: FLdPrThis
  loc_713E35: VCallAd Control_ID_optTipoEvento
  loc_713E38: FStAdFunc var_1E0
  loc_713E3B: FLdPr var_1E0
  loc_713E3E: Set from_stack_2 = Me(from_stack_1)
  loc_713E43: FLdPr var_1E4
  loc_713E46: Me.Caption = from_stack_1
  loc_713E4B: FFreeStr var_98 = ""
  loc_713E52: FFreeAd var_1E0 = ""
  loc_713E59: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713E70: FLdRfVar var_1DC
  loc_713E73: LitVar_Missing var_1D8
  loc_713E76: LitVar_Missing var_1B8
  loc_713E79: LitVar_Missing var_198
  loc_713E7C: LitVar_Missing var_178
  loc_713E7F: LitVar_Missing var_158
  loc_713E82: LitVar_Missing var_138
  loc_713E85: LitVar_Missing var_118
  loc_713E88: LitVar_Missing var_F8
  loc_713E8B: LitVar_Missing var_D8
  loc_713E8E: LitVar_Missing var_B8
  loc_713E91: LitStr "Cierre de Dia"
  loc_713E94: FStStrCopy var_98
  loc_713E97: FLdRfVar var_98
  loc_713E9A: LitI4 4
  loc_713E9F: PopTmpLdAdStr var_94
  loc_713EA2: LitI2_Byte &H18
  loc_713EA4: PopTmpLdAd2 var_8E
  loc_713EA7: ImpAdLdRf MemVar_74C7D0
  loc_713EAA: NewIfNullPr clsMsg
  loc_713EAD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713EB2: ILdRf var_1DC
  loc_713EB5: FLdRfVar var_1E4
  loc_713EB8: LitI2_Byte 1
  loc_713EBA: FLdPrThis
  loc_713EBB: VCallAd Control_ID_optTipoEvento
  loc_713EBE: FStAdFunc var_1E0
  loc_713EC1: FLdPr var_1E0
  loc_713EC4: Set from_stack_2 = Me(from_stack_1)
  loc_713EC9: FLdPr var_1E4
  loc_713ECC: Me.Caption = from_stack_1
  loc_713ED1: FFreeStr var_98 = ""
  loc_713ED8: FFreeAd var_1E0 = ""
  loc_713EDF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713EF6: FLdRfVar var_1DC
  loc_713EF9: LitVar_Missing var_1D8
  loc_713EFC: LitVar_Missing var_1B8
  loc_713EFF: LitVar_Missing var_198
  loc_713F02: LitVar_Missing var_178
  loc_713F05: LitVar_Missing var_158
  loc_713F08: LitVar_Missing var_138
  loc_713F0B: LitVar_Missing var_118
  loc_713F0E: LitVar_Missing var_F8
  loc_713F11: LitVar_Missing var_D8
  loc_713F14: LitVar_Missing var_B8
  loc_713F17: LitStr "Cierre de Mes"
  loc_713F1A: FStStrCopy var_98
  loc_713F1D: FLdRfVar var_98
  loc_713F20: LitI4 5
  loc_713F25: PopTmpLdAdStr var_94
  loc_713F28: LitI2_Byte &H18
  loc_713F2A: PopTmpLdAd2 var_8E
  loc_713F2D: ImpAdLdRf MemVar_74C7D0
  loc_713F30: NewIfNullPr clsMsg
  loc_713F33: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713F38: ILdRf var_1DC
  loc_713F3B: FLdRfVar var_1E4
  loc_713F3E: LitI2_Byte 2
  loc_713F40: FLdPrThis
  loc_713F41: VCallAd Control_ID_optTipoEvento
  loc_713F44: FStAdFunc var_1E0
  loc_713F47: FLdPr var_1E0
  loc_713F4A: Set from_stack_2 = Me(from_stack_1)
  loc_713F4F: FLdPr var_1E4
  loc_713F52: Me.Caption = from_stack_1
  loc_713F57: FFreeStr var_98 = ""
  loc_713F5E: FFreeAd var_1E0 = ""
  loc_713F65: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713F7C: FLdRfVar var_1DC
  loc_713F7F: LitVar_Missing var_1D8
  loc_713F82: LitVar_Missing var_1B8
  loc_713F85: LitVar_Missing var_198
  loc_713F88: LitVar_Missing var_178
  loc_713F8B: LitVar_Missing var_158
  loc_713F8E: LitVar_Missing var_138
  loc_713F91: LitVar_Missing var_118
  loc_713F94: LitVar_Missing var_F8
  loc_713F97: LitVar_Missing var_D8
  loc_713F9A: LitVar_Missing var_B8
  loc_713F9D: LitStr "Cambio de Nivel de Precio"
  loc_713FA0: FStStrCopy var_98
  loc_713FA3: FLdRfVar var_98
  loc_713FA6: LitI4 6
  loc_713FAB: PopTmpLdAdStr var_94
  loc_713FAE: LitI2_Byte &H18
  loc_713FB0: PopTmpLdAd2 var_8E
  loc_713FB3: ImpAdLdRf MemVar_74C7D0
  loc_713FB6: NewIfNullPr clsMsg
  loc_713FB9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713FBE: ILdRf var_1DC
  loc_713FC1: FLdRfVar var_1E4
  loc_713FC4: LitI2_Byte 3
  loc_713FC6: FLdPrThis
  loc_713FC7: VCallAd Control_ID_optTipoEvento
  loc_713FCA: FStAdFunc var_1E0
  loc_713FCD: FLdPr var_1E0
  loc_713FD0: Set from_stack_2 = Me(from_stack_1)
  loc_713FD5: FLdPr var_1E4
  loc_713FD8: Me.Caption = from_stack_1
  loc_713FDD: FFreeStr var_98 = ""
  loc_713FE4: FFreeAd var_1E0 = ""
  loc_713FEB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714002: FLdRfVar var_1DC
  loc_714005: LitVar_Missing var_1D8
  loc_714008: LitVar_Missing var_1B8
  loc_71400B: LitVar_Missing var_198
  loc_71400E: LitVar_Missing var_178
  loc_714011: LitVar_Missing var_158
  loc_714014: LitVar_Missing var_138
  loc_714017: LitVar_Missing var_118
  loc_71401A: LitVar_Missing var_F8
  loc_71401D: LitVar_Missing var_D8
  loc_714020: LitVar_Missing var_B8
  loc_714023: LitStr "Temporización"
  loc_714026: FStStrCopy var_98
  loc_714029: FLdRfVar var_98
  loc_71402C: LitI4 7
  loc_714031: PopTmpLdAdStr var_94
  loc_714034: LitI2_Byte &H18
  loc_714036: PopTmpLdAd2 var_8E
  loc_714039: ImpAdLdRf MemVar_74C7D0
  loc_71403C: NewIfNullPr clsMsg
  loc_71403F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714044: ILdRf var_1DC
  loc_714047: FLdPrThis
  loc_714048: VCallAd Control_ID_fraTemporizacion
  loc_71404B: FStAdFunc var_1E0
  loc_71404E: FLdPr var_1E0
  loc_714051: Me.Caption = from_stack_1
  loc_714056: FFreeStr var_98 = ""
  loc_71405D: FFree1Ad var_1E0
  loc_714060: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714077: FLdRfVar var_1DC
  loc_71407A: LitVar_Missing var_1D8
  loc_71407D: LitVar_Missing var_1B8
  loc_714080: LitVar_Missing var_198
  loc_714083: LitVar_Missing var_178
  loc_714086: LitVar_Missing var_158
  loc_714089: LitVar_Missing var_138
  loc_71408C: LitVar_Missing var_118
  loc_71408F: LitVar_Missing var_F8
  loc_714092: LitVar_Missing var_D8
  loc_714095: LitVar_Missing var_B8
  loc_714098: LitStr "Diaria"
  loc_71409B: FStStrCopy var_98
  loc_71409E: FLdRfVar var_98
  loc_7140A1: LitI4 8
  loc_7140A6: PopTmpLdAdStr var_94
  loc_7140A9: LitI2_Byte &H18
  loc_7140AB: PopTmpLdAd2 var_8E
  loc_7140AE: ImpAdLdRf MemVar_74C7D0
  loc_7140B1: NewIfNullPr clsMsg
  loc_7140B4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7140B9: ILdRf var_1DC
  loc_7140BC: FLdRfVar var_1E4
  loc_7140BF: LitI2_Byte 0
  loc_7140C1: FLdPrThis
  loc_7140C2: VCallAd Control_ID_optTemporizacion
  loc_7140C5: FStAdFunc var_1E0
  loc_7140C8: FLdPr var_1E0
  loc_7140CB: Set from_stack_2 = Me(from_stack_1)
  loc_7140D0: FLdPr var_1E4
  loc_7140D3: Me.Caption = from_stack_1
  loc_7140D8: FFreeStr var_98 = ""
  loc_7140DF: FFreeAd var_1E0 = ""
  loc_7140E6: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7140FD: FLdRfVar var_1DC
  loc_714100: LitVar_Missing var_1D8
  loc_714103: LitVar_Missing var_1B8
  loc_714106: LitVar_Missing var_198
  loc_714109: LitVar_Missing var_178
  loc_71410C: LitVar_Missing var_158
  loc_71410F: LitVar_Missing var_138
  loc_714112: LitVar_Missing var_118
  loc_714115: LitVar_Missing var_F8
  loc_714118: LitVar_Missing var_D8
  loc_71411B: LitVar_Missing var_B8
  loc_71411E: LitStr "Semanal"
  loc_714121: FStStrCopy var_98
  loc_714124: FLdRfVar var_98
  loc_714127: LitI4 9
  loc_71412C: PopTmpLdAdStr var_94
  loc_71412F: LitI2_Byte &H18
  loc_714131: PopTmpLdAd2 var_8E
  loc_714134: ImpAdLdRf MemVar_74C7D0
  loc_714137: NewIfNullPr clsMsg
  loc_71413A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71413F: ILdRf var_1DC
  loc_714142: FLdRfVar var_1E4
  loc_714145: LitI2_Byte 1
  loc_714147: FLdPrThis
  loc_714148: VCallAd Control_ID_optTemporizacion
  loc_71414B: FStAdFunc var_1E0
  loc_71414E: FLdPr var_1E0
  loc_714151: Set from_stack_2 = Me(from_stack_1)
  loc_714156: FLdPr var_1E4
  loc_714159: Me.Caption = from_stack_1
  loc_71415E: FFreeStr var_98 = ""
  loc_714165: FFreeAd var_1E0 = ""
  loc_71416C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714183: FLdRfVar var_1DC
  loc_714186: LitVar_Missing var_1D8
  loc_714189: LitVar_Missing var_1B8
  loc_71418C: LitVar_Missing var_198
  loc_71418F: LitVar_Missing var_178
  loc_714192: LitVar_Missing var_158
  loc_714195: LitVar_Missing var_138
  loc_714198: LitVar_Missing var_118
  loc_71419B: LitVar_Missing var_F8
  loc_71419E: LitVar_Missing var_D8
  loc_7141A1: LitVar_Missing var_B8
  loc_7141A4: LitStr "Mensual"
  loc_7141A7: FStStrCopy var_98
  loc_7141AA: FLdRfVar var_98
  loc_7141AD: LitI4 &HA
  loc_7141B2: PopTmpLdAdStr var_94
  loc_7141B5: LitI2_Byte &H18
  loc_7141B7: PopTmpLdAd2 var_8E
  loc_7141BA: ImpAdLdRf MemVar_74C7D0
  loc_7141BD: NewIfNullPr clsMsg
  loc_7141C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7141C5: ILdRf var_1DC
  loc_7141C8: FLdRfVar var_1E4
  loc_7141CB: LitI2_Byte 2
  loc_7141CD: FLdPrThis
  loc_7141CE: VCallAd Control_ID_optTemporizacion
  loc_7141D1: FStAdFunc var_1E0
  loc_7141D4: FLdPr var_1E0
  loc_7141D7: Set from_stack_2 = Me(from_stack_1)
  loc_7141DC: FLdPr var_1E4
  loc_7141DF: Me.Caption = from_stack_1
  loc_7141E4: FFreeStr var_98 = ""
  loc_7141EB: FFreeAd var_1E0 = ""
  loc_7141F2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714209: FLdRfVar var_1DC
  loc_71420C: LitVar_Missing var_1D8
  loc_71420F: LitVar_Missing var_1B8
  loc_714212: LitVar_Missing var_198
  loc_714215: LitVar_Missing var_178
  loc_714218: LitVar_Missing var_158
  loc_71421B: LitVar_Missing var_138
  loc_71421E: LitVar_Missing var_118
  loc_714221: LitVar_Missing var_F8
  loc_714224: LitVar_Missing var_D8
  loc_714227: LitVar_Missing var_B8
  loc_71422A: LitStr "Anual"
  loc_71422D: FStStrCopy var_98
  loc_714230: FLdRfVar var_98
  loc_714233: LitI4 &HB
  loc_714238: PopTmpLdAdStr var_94
  loc_71423B: LitI2_Byte &H18
  loc_71423D: PopTmpLdAd2 var_8E
  loc_714240: ImpAdLdRf MemVar_74C7D0
  loc_714243: NewIfNullPr clsMsg
  loc_714246: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71424B: ILdRf var_1DC
  loc_71424E: FLdRfVar var_1E4
  loc_714251: LitI2_Byte 3
  loc_714253: FLdPrThis
  loc_714254: VCallAd Control_ID_optTemporizacion
  loc_714257: FStAdFunc var_1E0
  loc_71425A: FLdPr var_1E0
  loc_71425D: Set from_stack_2 = Me(from_stack_1)
  loc_714262: FLdPr var_1E4
  loc_714265: Me.Caption = from_stack_1
  loc_71426A: FFreeStr var_98 = ""
  loc_714271: FFreeAd var_1E0 = ""
  loc_714278: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71428F: FLdRfVar var_1DC
  loc_714292: LitVar_Missing var_1D8
  loc_714295: LitVar_Missing var_1B8
  loc_714298: LitVar_Missing var_198
  loc_71429B: LitVar_Missing var_178
  loc_71429E: LitVar_Missing var_158
  loc_7142A1: LitVar_Missing var_138
  loc_7142A4: LitVar_Missing var_118
  loc_7142A7: LitVar_Missing var_F8
  loc_7142AA: LitVar_Missing var_D8
  loc_7142AD: LitVar_Missing var_B8
  loc_7142B0: LitStr "Unica vez"
  loc_7142B3: FStStrCopy var_98
  loc_7142B6: FLdRfVar var_98
  loc_7142B9: LitI4 &HC
  loc_7142BE: PopTmpLdAdStr var_94
  loc_7142C1: LitI2_Byte &H18
  loc_7142C3: PopTmpLdAd2 var_8E
  loc_7142C6: ImpAdLdRf MemVar_74C7D0
  loc_7142C9: NewIfNullPr clsMsg
  loc_7142CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7142D1: ILdRf var_1DC
  loc_7142D4: FLdRfVar var_1E4
  loc_7142D7: LitI2_Byte 4
  loc_7142D9: FLdPrThis
  loc_7142DA: VCallAd Control_ID_optTemporizacion
  loc_7142DD: FStAdFunc var_1E0
  loc_7142E0: FLdPr var_1E0
  loc_7142E3: Set from_stack_2 = Me(from_stack_1)
  loc_7142E8: FLdPr var_1E4
  loc_7142EB: Me.Caption = from_stack_1
  loc_7142F0: FFreeStr var_98 = ""
  loc_7142F7: FFreeAd var_1E0 = ""
  loc_7142FE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714315: FLdRfVar var_1DC
  loc_714318: LitVar_Missing var_1D8
  loc_71431B: LitVar_Missing var_1B8
  loc_71431E: LitVar_Missing var_198
  loc_714321: LitVar_Missing var_178
  loc_714324: LitVar_Missing var_158
  loc_714327: LitVar_Missing var_138
  loc_71432A: LitVar_Missing var_118
  loc_71432D: LitVar_Missing var_F8
  loc_714330: LitVar_Missing var_D8
  loc_714333: LitVar_Missing var_B8
  loc_714336: LitStr "Alarmas"
  loc_714339: FStStrCopy var_98
  loc_71433C: FLdRfVar var_98
  loc_71433F: LitI4 &HD
  loc_714344: PopTmpLdAdStr var_94
  loc_714347: LitI2_Byte &H18
  loc_714349: PopTmpLdAd2 var_8E
  loc_71434C: ImpAdLdRf MemVar_74C7D0
  loc_71434F: NewIfNullPr clsMsg
  loc_714352: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714357: ILdRf var_1DC
  loc_71435A: FLdPrThis
  loc_71435B: VCallAd Control_ID_fraAlarma
  loc_71435E: FStAdFunc var_1E0
  loc_714361: FLdPr var_1E0
  loc_714364: Me.Caption = from_stack_1
  loc_714369: FFreeStr var_98 = ""
  loc_714370: FFree1Ad var_1E0
  loc_714373: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71438A: FLdRfVar var_1DC
  loc_71438D: LitVar_Missing var_1D8
  loc_714390: LitVar_Missing var_1B8
  loc_714393: LitVar_Missing var_198
  loc_714396: LitVar_Missing var_178
  loc_714399: LitVar_Missing var_158
  loc_71439C: LitVar_Missing var_138
  loc_71439F: LitVar_Missing var_118
  loc_7143A2: LitVar_Missing var_F8
  loc_7143A5: LitVar_Missing var_D8
  loc_7143A8: LitVar_Missing var_B8
  loc_7143AB: LitStr "Preaviso"
  loc_7143AE: FStStrCopy var_98
  loc_7143B1: FLdRfVar var_98
  loc_7143B4: LitI4 &HE
  loc_7143B9: PopTmpLdAdStr var_94
  loc_7143BC: LitI2_Byte &H18
  loc_7143BE: PopTmpLdAd2 var_8E
  loc_7143C1: ImpAdLdRf MemVar_74C7D0
  loc_7143C4: NewIfNullPr clsMsg
  loc_7143C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7143CC: ILdRf var_1DC
  loc_7143CF: FLdRfVar var_1E4
  loc_7143D2: LitI2_Byte 0
  loc_7143D4: FLdPrThis
  loc_7143D5: VCallAd Control_ID_chkAlarma
  loc_7143D8: FStAdFunc var_1E0
  loc_7143DB: FLdPr var_1E0
  loc_7143DE: Set from_stack_2 = Me(from_stack_1)
  loc_7143E3: FLdPr var_1E4
  loc_7143E6: Me.Caption = from_stack_1
  loc_7143EB: FFreeStr var_98 = ""
  loc_7143F2: FFreeAd var_1E0 = ""
  loc_7143F9: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714410: FLdRfVar var_1DC
  loc_714413: LitVar_Missing var_1D8
  loc_714416: LitVar_Missing var_1B8
  loc_714419: LitVar_Missing var_198
  loc_71441C: LitVar_Missing var_178
  loc_71441F: LitVar_Missing var_158
  loc_714422: LitVar_Missing var_138
  loc_714425: LitVar_Missing var_118
  loc_714428: LitVar_Missing var_F8
  loc_71442B: LitVar_Missing var_D8
  loc_71442E: LitVar_Missing var_B8
  loc_714431: LitStr "Inicio"
  loc_714434: FStStrCopy var_98
  loc_714437: FLdRfVar var_98
  loc_71443A: LitI4 &HF
  loc_71443F: PopTmpLdAdStr var_94
  loc_714442: LitI2_Byte &H18
  loc_714444: PopTmpLdAd2 var_8E
  loc_714447: ImpAdLdRf MemVar_74C7D0
  loc_71444A: NewIfNullPr clsMsg
  loc_71444D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714452: ILdRf var_1DC
  loc_714455: FLdRfVar var_1E4
  loc_714458: LitI2_Byte 1
  loc_71445A: FLdPrThis
  loc_71445B: VCallAd Control_ID_chkAlarma
  loc_71445E: FStAdFunc var_1E0
  loc_714461: FLdPr var_1E0
  loc_714464: Set from_stack_2 = Me(from_stack_1)
  loc_714469: FLdPr var_1E4
  loc_71446C: Me.Caption = from_stack_1
  loc_714471: FFreeStr var_98 = ""
  loc_714478: FFreeAd var_1E0 = ""
  loc_71447F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714496: FLdRfVar var_1DC
  loc_714499: LitVar_Missing var_1D8
  loc_71449C: LitVar_Missing var_1B8
  loc_71449F: LitVar_Missing var_198
  loc_7144A2: LitVar_Missing var_178
  loc_7144A5: LitVar_Missing var_158
  loc_7144A8: LitVar_Missing var_138
  loc_7144AB: LitVar_Missing var_118
  loc_7144AE: LitVar_Missing var_F8
  loc_7144B1: LitVar_Missing var_D8
  loc_7144B4: LitVar_Missing var_B8
  loc_7144B7: LitStr "Fin"
  loc_7144BA: FStStrCopy var_98
  loc_7144BD: FLdRfVar var_98
  loc_7144C0: LitI4 &H10
  loc_7144C5: PopTmpLdAdStr var_94
  loc_7144C8: LitI2_Byte &H18
  loc_7144CA: PopTmpLdAd2 var_8E
  loc_7144CD: ImpAdLdRf MemVar_74C7D0
  loc_7144D0: NewIfNullPr clsMsg
  loc_7144D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7144D8: ILdRf var_1DC
  loc_7144DB: FLdRfVar var_1E4
  loc_7144DE: LitI2_Byte 2
  loc_7144E0: FLdPrThis
  loc_7144E1: VCallAd Control_ID_chkAlarma
  loc_7144E4: FStAdFunc var_1E0
  loc_7144E7: FLdPr var_1E0
  loc_7144EA: Set from_stack_2 = Me(from_stack_1)
  loc_7144EF: FLdPr var_1E4
  loc_7144F2: Me.Caption = from_stack_1
  loc_7144F7: FFreeStr var_98 = ""
  loc_7144FE: FFreeAd var_1E0 = ""
  loc_714505: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71451C: FLdRfVar var_1DC
  loc_71451F: LitVar_Missing var_1D8
  loc_714522: LitVar_Missing var_1B8
  loc_714525: LitVar_Missing var_198
  loc_714528: LitVar_Missing var_178
  loc_71452B: LitVar_Missing var_158
  loc_71452E: LitVar_Missing var_138
  loc_714531: LitVar_Missing var_118
  loc_714534: LitVar_Missing var_F8
  loc_714537: LitVar_Missing var_D8
  loc_71453A: LitVar_Missing var_B8
  loc_71453D: LitStr "Minutos:"
  loc_714540: FStStrCopy var_98
  loc_714543: FLdRfVar var_98
  loc_714546: LitI4 &H11
  loc_71454B: PopTmpLdAdStr var_94
  loc_71454E: LitI2_Byte &H18
  loc_714550: PopTmpLdAd2 var_8E
  loc_714553: ImpAdLdRf MemVar_74C7D0
  loc_714556: NewIfNullPr clsMsg
  loc_714559: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71455E: ILdRf var_1DC
  loc_714561: FLdPrThis
  loc_714562: VCallAd Control_ID_lblMinutosAlarma
  loc_714565: FStAdFunc var_1E0
  loc_714568: FLdPr var_1E0
  loc_71456B: Me.Caption = from_stack_1
  loc_714570: FFreeStr var_98 = ""
  loc_714577: FFree1Ad var_1E0
  loc_71457A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714591: FLdRfVar var_1DC
  loc_714594: LitVar_Missing var_1D8
  loc_714597: LitVar_Missing var_1B8
  loc_71459A: LitVar_Missing var_198
  loc_71459D: LitVar_Missing var_178
  loc_7145A0: LitVar_Missing var_158
  loc_7145A3: LitVar_Missing var_138
  loc_7145A6: LitVar_Missing var_118
  loc_7145A9: LitVar_Missing var_F8
  loc_7145AC: LitVar_Missing var_D8
  loc_7145AF: LitVar_Missing var_B8
  loc_7145B2: LitStr "Nivel de Precios"
  loc_7145B5: FStStrCopy var_98
  loc_7145B8: FLdRfVar var_98
  loc_7145BB: LitI4 &H12
  loc_7145C0: PopTmpLdAdStr var_94
  loc_7145C3: LitI2_Byte &H18
  loc_7145C5: PopTmpLdAd2 var_8E
  loc_7145C8: ImpAdLdRf MemVar_74C7D0
  loc_7145CB: NewIfNullPr clsMsg
  loc_7145CE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7145D3: ILdRf var_1DC
  loc_7145D6: FLdPrThis
  loc_7145D7: VCallAd Control_ID_fraNivelPrecio
  loc_7145DA: FStAdFunc var_1E0
  loc_7145DD: FLdPr var_1E0
  loc_7145E0: Me.Caption = from_stack_1
  loc_7145E5: FFreeStr var_98 = ""
  loc_7145EC: FFree1Ad var_1E0
  loc_7145EF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714606: FLdRfVar var_1DC
  loc_714609: LitVar_Missing var_1D8
  loc_71460C: LitVar_Missing var_1B8
  loc_71460F: LitVar_Missing var_198
  loc_714612: LitVar_Missing var_178
  loc_714615: LitVar_Missing var_158
  loc_714618: LitVar_Missing var_138
  loc_71461B: LitVar_Missing var_118
  loc_71461E: LitVar_Missing var_F8
  loc_714621: LitVar_Missing var_D8
  loc_714624: LitVar_Missing var_B8
  loc_714627: LitStr "Mes:"
  loc_71462A: FStStrCopy var_98
  loc_71462D: FLdRfVar var_98
  loc_714630: LitI4 &H13
  loc_714635: PopTmpLdAdStr var_94
  loc_714638: LitI2_Byte &H18
  loc_71463A: PopTmpLdAd2 var_8E
  loc_71463D: ImpAdLdRf MemVar_74C7D0
  loc_714640: NewIfNullPr clsMsg
  loc_714643: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714648: ILdRf var_1DC
  loc_71464B: FLdPrThis
  loc_71464C: VCallAd Control_ID_lblMes
  loc_71464F: FStAdFunc var_1E0
  loc_714652: FLdPr var_1E0
  loc_714655: Me.Caption = from_stack_1
  loc_71465A: FFreeStr var_98 = ""
  loc_714661: FFree1Ad var_1E0
  loc_714664: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71467B: FLdRfVar var_1DC
  loc_71467E: LitVar_Missing var_1D8
  loc_714681: LitVar_Missing var_1B8
  loc_714684: LitVar_Missing var_198
  loc_714687: LitVar_Missing var_178
  loc_71468A: LitVar_Missing var_158
  loc_71468D: LitVar_Missing var_138
  loc_714690: LitVar_Missing var_118
  loc_714693: LitVar_Missing var_F8
  loc_714696: LitVar_Missing var_D8
  loc_714699: LitVar_Missing var_B8
  loc_71469C: LitStr "Dia:"
  loc_71469F: FStStrCopy var_98
  loc_7146A2: FLdRfVar var_98
  loc_7146A5: LitI4 &H14
  loc_7146AA: PopTmpLdAdStr var_94
  loc_7146AD: LitI2_Byte &H18
  loc_7146AF: PopTmpLdAd2 var_8E
  loc_7146B2: ImpAdLdRf MemVar_74C7D0
  loc_7146B5: NewIfNullPr clsMsg
  loc_7146B8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7146BD: ILdRf var_1DC
  loc_7146C0: FLdPrThis
  loc_7146C1: VCallAd Control_ID_lblDia
  loc_7146C4: FStAdFunc var_1E0
  loc_7146C7: FLdPr var_1E0
  loc_7146CA: Me.Caption = from_stack_1
  loc_7146CF: FFreeStr var_98 = ""
  loc_7146D6: FFree1Ad var_1E0
  loc_7146D9: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7146F0: FLdRfVar var_1DC
  loc_7146F3: LitVar_Missing var_1D8
  loc_7146F6: LitVar_Missing var_1B8
  loc_7146F9: LitVar_Missing var_198
  loc_7146FC: LitVar_Missing var_178
  loc_7146FF: LitVar_Missing var_158
  loc_714702: LitVar_Missing var_138
  loc_714705: LitVar_Missing var_118
  loc_714708: LitVar_Missing var_F8
  loc_71470B: LitVar_Missing var_D8
  loc_71470E: LitVar_Missing var_B8
  loc_714711: LitStr "Dia Semana:"
  loc_714714: FStStrCopy var_98
  loc_714717: FLdRfVar var_98
  loc_71471A: LitI4 &H15
  loc_71471F: PopTmpLdAdStr var_94
  loc_714722: LitI2_Byte &H18
  loc_714724: PopTmpLdAd2 var_8E
  loc_714727: ImpAdLdRf MemVar_74C7D0
  loc_71472A: NewIfNullPr clsMsg
  loc_71472D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714732: ILdRf var_1DC
  loc_714735: FLdPrThis
  loc_714736: VCallAd Control_ID_lblDiaSemana
  loc_714739: FStAdFunc var_1E0
  loc_71473C: FLdPr var_1E0
  loc_71473F: Me.Caption = from_stack_1
  loc_714744: FFreeStr var_98 = ""
  loc_71474B: FFree1Ad var_1E0
  loc_71474E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714765: FLdRfVar var_1DC
  loc_714768: LitVar_Missing var_1D8
  loc_71476B: LitVar_Missing var_1B8
  loc_71476E: LitVar_Missing var_198
  loc_714771: LitVar_Missing var_178
  loc_714774: LitVar_Missing var_158
  loc_714777: LitVar_Missing var_138
  loc_71477A: LitVar_Missing var_118
  loc_71477D: LitVar_Missing var_F8
  loc_714780: LitVar_Missing var_D8
  loc_714783: LitVar_Missing var_B8
  loc_714786: LitStr "Hora de Activación:"
  loc_714789: FStStrCopy var_98
  loc_71478C: FLdRfVar var_98
  loc_71478F: LitI4 &H16
  loc_714794: PopTmpLdAdStr var_94
  loc_714797: LitI2_Byte &H18
  loc_714799: PopTmpLdAd2 var_8E
  loc_71479C: ImpAdLdRf MemVar_74C7D0
  loc_71479F: NewIfNullPr clsMsg
  loc_7147A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7147A7: ILdRf var_1DC
  loc_7147AA: FLdPrThis
  loc_7147AB: VCallAd Control_ID_lblHora
  loc_7147AE: FStAdFunc var_1E0
  loc_7147B1: FLdPr var_1E0
  loc_7147B4: Me.Caption = from_stack_1
  loc_7147B9: FFreeStr var_98 = ""
  loc_7147C0: FFree1Ad var_1E0
  loc_7147C3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7147DA: FLdRfVar var_1DC
  loc_7147DD: LitVar_Missing var_1D8
  loc_7147E0: LitVar_Missing var_1B8
  loc_7147E3: LitVar_Missing var_198
  loc_7147E6: LitVar_Missing var_178
  loc_7147E9: LitVar_Missing var_158
  loc_7147EC: LitVar_Missing var_138
  loc_7147EF: LitVar_Missing var_118
  loc_7147F2: LitVar_Missing var_F8
  loc_7147F5: LitVar_Missing var_D8
  loc_7147F8: LitVar_Missing var_B8
  loc_7147FB: LitStr "Ultimo dia de Mes"
  loc_7147FE: FStStrCopy var_98
  loc_714801: FLdRfVar var_98
  loc_714804: LitI4 &H17
  loc_714809: PopTmpLdAdStr var_94
  loc_71480C: LitI2_Byte &H18
  loc_71480E: PopTmpLdAd2 var_8E
  loc_714811: ImpAdLdRf MemVar_74C7D0
  loc_714814: NewIfNullPr clsMsg
  loc_714817: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71481C: ILdRf var_1DC
  loc_71481F: FLdPrThis
  loc_714820: VCallAd Control_ID_chkDia
  loc_714823: FStAdFunc var_1E0
  loc_714826: FLdPr var_1E0
  loc_714829: Me.Caption = from_stack_1
  loc_71482E: FFreeStr var_98 = ""
  loc_714835: FFree1Ad var_1E0
  loc_714838: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71484F: FLdRfVar var_1DC
  loc_714852: LitVar_Missing var_1D8
  loc_714855: LitVar_Missing var_1B8
  loc_714858: LitVar_Missing var_198
  loc_71485B: LitVar_Missing var_178
  loc_71485E: LitVar_Missing var_158
  loc_714861: LitVar_Missing var_138
  loc_714864: LitVar_Missing var_118
  loc_714867: LitVar_Missing var_F8
  loc_71486A: LitVar_Missing var_D8
  loc_71486D: LitVar_Missing var_B8
  loc_714870: LitStr "&Cancelar"
  loc_714873: FStStrCopy var_98
  loc_714876: FLdRfVar var_98
  loc_714879: LitI4 &H18
  loc_71487E: PopTmpLdAdStr var_94
  loc_714881: LitI2_Byte &H18
  loc_714883: PopTmpLdAd2 var_8E
  loc_714886: ImpAdLdRf MemVar_74C7D0
  loc_714889: NewIfNullPr clsMsg
  loc_71488C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714891: ILdRf var_1DC
  loc_714894: FLdPrThis
  loc_714895: VCallAd Control_ID_cmdCancelar
  loc_714898: FStAdFunc var_1E0
  loc_71489B: FLdPr var_1E0
  loc_71489E: Me.Caption = from_stack_1
  loc_7148A3: FFreeStr var_98 = ""
  loc_7148AA: FFree1Ad var_1E0
  loc_7148AD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7148C4: FLdRfVar var_1DC
  loc_7148C7: LitVar_Missing var_1D8
  loc_7148CA: LitVar_Missing var_1B8
  loc_7148CD: LitVar_Missing var_198
  loc_7148D0: LitVar_Missing var_178
  loc_7148D3: LitVar_Missing var_158
  loc_7148D6: LitVar_Missing var_138
  loc_7148D9: LitVar_Missing var_118
  loc_7148DC: LitVar_Missing var_F8
  loc_7148DF: LitVar_Missing var_D8
  loc_7148E2: LitVar_Missing var_B8
  loc_7148E5: LitStr "&Aceptar"
  loc_7148E8: FStStrCopy var_98
  loc_7148EB: FLdRfVar var_98
  loc_7148EE: LitI4 &H19
  loc_7148F3: PopTmpLdAdStr var_94
  loc_7148F6: LitI2_Byte &H18
  loc_7148F8: PopTmpLdAd2 var_8E
  loc_7148FB: ImpAdLdRf MemVar_74C7D0
  loc_7148FE: NewIfNullPr clsMsg
  loc_714901: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714906: ILdRf var_1DC
  loc_714909: FLdPrThis
  loc_71490A: VCallAd Control_ID_cmdAceptar
  loc_71490D: FStAdFunc var_1E0
  loc_714910: FLdPr var_1E0
  loc_714913: Me.Caption = from_stack_1
  loc_714918: FFreeStr var_98 = ""
  loc_71491F: FFree1Ad var_1E0
  loc_714922: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714939: FLdRfVar var_1DC
  loc_71493C: LitVar_Missing var_1D8
  loc_71493F: LitVar_Missing var_1B8
  loc_714942: LitVar_Missing var_198
  loc_714945: LitVar_Missing var_178
  loc_714948: LitVar_Missing var_158
  loc_71494B: LitVar_Missing var_138
  loc_71494E: LitVar_Missing var_118
  loc_714951: LitVar_Missing var_F8
  loc_714954: LitVar_Missing var_D8
  loc_714957: LitVar_Missing var_B8
  loc_71495A: LitStr "Enero"
  loc_71495D: FStStrCopy var_98
  loc_714960: FLdRfVar var_98
  loc_714963: LitI4 &H1A
  loc_714968: PopTmpLdAdStr var_94
  loc_71496B: LitI2_Byte &H18
  loc_71496D: PopTmpLdAd2 var_8E
  loc_714970: ImpAdLdRf MemVar_74C7D0
  loc_714973: NewIfNullPr clsMsg
  loc_714976: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71497B: LitVar_Missing var_1F4
  loc_71497E: PopAdLdVar
  loc_71497F: ILdRf var_1DC
  loc_714982: FLdPrThis
  loc_714983: VCallAd Control_ID_cboMes
  loc_714986: FStAdFunc var_1E0
  loc_714989: FLdPr var_1E0
  loc_71498C: Me.AddItem from_stack_1, from_stack_2
  loc_714991: FFreeStr var_98 = ""
  loc_714998: FFree1Ad var_1E0
  loc_71499B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7149B2: FLdRfVar var_1DC
  loc_7149B5: LitVar_Missing var_1D8
  loc_7149B8: LitVar_Missing var_1B8
  loc_7149BB: LitVar_Missing var_198
  loc_7149BE: LitVar_Missing var_178
  loc_7149C1: LitVar_Missing var_158
  loc_7149C4: LitVar_Missing var_138
  loc_7149C7: LitVar_Missing var_118
  loc_7149CA: LitVar_Missing var_F8
  loc_7149CD: LitVar_Missing var_D8
  loc_7149D0: LitVar_Missing var_B8
  loc_7149D3: LitStr "Febrero"
  loc_7149D6: FStStrCopy var_98
  loc_7149D9: FLdRfVar var_98
  loc_7149DC: LitI4 &H1B
  loc_7149E1: PopTmpLdAdStr var_94
  loc_7149E4: LitI2_Byte &H18
  loc_7149E6: PopTmpLdAd2 var_8E
  loc_7149E9: ImpAdLdRf MemVar_74C7D0
  loc_7149EC: NewIfNullPr clsMsg
  loc_7149EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7149F4: LitVar_Missing var_1F4
  loc_7149F7: PopAdLdVar
  loc_7149F8: ILdRf var_1DC
  loc_7149FB: FLdPrThis
  loc_7149FC: VCallAd Control_ID_cboMes
  loc_7149FF: FStAdFunc var_1E0
  loc_714A02: FLdPr var_1E0
  loc_714A05: Me.AddItem from_stack_1, from_stack_2
  loc_714A0A: FFreeStr var_98 = ""
  loc_714A11: FFree1Ad var_1E0
  loc_714A14: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714A2B: FLdRfVar var_1DC
  loc_714A2E: LitVar_Missing var_1D8
  loc_714A31: LitVar_Missing var_1B8
  loc_714A34: LitVar_Missing var_198
  loc_714A37: LitVar_Missing var_178
  loc_714A3A: LitVar_Missing var_158
  loc_714A3D: LitVar_Missing var_138
  loc_714A40: LitVar_Missing var_118
  loc_714A43: LitVar_Missing var_F8
  loc_714A46: LitVar_Missing var_D8
  loc_714A49: LitVar_Missing var_B8
  loc_714A4C: LitStr "Marzo"
  loc_714A4F: FStStrCopy var_98
  loc_714A52: FLdRfVar var_98
  loc_714A55: LitI4 &H1C
  loc_714A5A: PopTmpLdAdStr var_94
  loc_714A5D: LitI2_Byte &H18
  loc_714A5F: PopTmpLdAd2 var_8E
  loc_714A62: ImpAdLdRf MemVar_74C7D0
  loc_714A65: NewIfNullPr clsMsg
  loc_714A68: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714A6D: LitVar_Missing var_1F4
  loc_714A70: PopAdLdVar
  loc_714A71: ILdRf var_1DC
  loc_714A74: FLdPrThis
  loc_714A75: VCallAd Control_ID_cboMes
  loc_714A78: FStAdFunc var_1E0
  loc_714A7B: FLdPr var_1E0
  loc_714A7E: Me.AddItem from_stack_1, from_stack_2
  loc_714A83: FFreeStr var_98 = ""
  loc_714A8A: FFree1Ad var_1E0
  loc_714A8D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714AA4: FLdRfVar var_1DC
  loc_714AA7: LitVar_Missing var_1D8
  loc_714AAA: LitVar_Missing var_1B8
  loc_714AAD: LitVar_Missing var_198
  loc_714AB0: LitVar_Missing var_178
  loc_714AB3: LitVar_Missing var_158
  loc_714AB6: LitVar_Missing var_138
  loc_714AB9: LitVar_Missing var_118
  loc_714ABC: LitVar_Missing var_F8
  loc_714ABF: LitVar_Missing var_D8
  loc_714AC2: LitVar_Missing var_B8
  loc_714AC5: LitStr "Abril"
  loc_714AC8: FStStrCopy var_98
  loc_714ACB: FLdRfVar var_98
  loc_714ACE: LitI4 &H1D
  loc_714AD3: PopTmpLdAdStr var_94
  loc_714AD6: LitI2_Byte &H18
  loc_714AD8: PopTmpLdAd2 var_8E
  loc_714ADB: ImpAdLdRf MemVar_74C7D0
  loc_714ADE: NewIfNullPr clsMsg
  loc_714AE1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714AE6: LitVar_Missing var_1F4
  loc_714AE9: PopAdLdVar
  loc_714AEA: ILdRf var_1DC
  loc_714AED: FLdPrThis
  loc_714AEE: VCallAd Control_ID_cboMes
  loc_714AF1: FStAdFunc var_1E0
  loc_714AF4: FLdPr var_1E0
  loc_714AF7: Me.AddItem from_stack_1, from_stack_2
  loc_714AFC: FFreeStr var_98 = ""
  loc_714B03: FFree1Ad var_1E0
  loc_714B06: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714B1D: FLdRfVar var_1DC
  loc_714B20: LitVar_Missing var_1D8
  loc_714B23: LitVar_Missing var_1B8
  loc_714B26: LitVar_Missing var_198
  loc_714B29: LitVar_Missing var_178
  loc_714B2C: LitVar_Missing var_158
  loc_714B2F: LitVar_Missing var_138
  loc_714B32: LitVar_Missing var_118
  loc_714B35: LitVar_Missing var_F8
  loc_714B38: LitVar_Missing var_D8
  loc_714B3B: LitVar_Missing var_B8
  loc_714B3E: LitStr "Mayo"
  loc_714B41: FStStrCopy var_98
  loc_714B44: FLdRfVar var_98
  loc_714B47: LitI4 &H1E
  loc_714B4C: PopTmpLdAdStr var_94
  loc_714B4F: LitI2_Byte &H18
  loc_714B51: PopTmpLdAd2 var_8E
  loc_714B54: ImpAdLdRf MemVar_74C7D0
  loc_714B57: NewIfNullPr clsMsg
  loc_714B5A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714B5F: LitVar_Missing var_1F4
  loc_714B62: PopAdLdVar
  loc_714B63: ILdRf var_1DC
  loc_714B66: FLdPrThis
  loc_714B67: VCallAd Control_ID_cboMes
  loc_714B6A: FStAdFunc var_1E0
  loc_714B6D: FLdPr var_1E0
  loc_714B70: Me.AddItem from_stack_1, from_stack_2
  loc_714B75: FFreeStr var_98 = ""
  loc_714B7C: FFree1Ad var_1E0
  loc_714B7F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714B96: FLdRfVar var_1DC
  loc_714B99: LitVar_Missing var_1D8
  loc_714B9C: LitVar_Missing var_1B8
  loc_714B9F: LitVar_Missing var_198
  loc_714BA2: LitVar_Missing var_178
  loc_714BA5: LitVar_Missing var_158
  loc_714BA8: LitVar_Missing var_138
  loc_714BAB: LitVar_Missing var_118
  loc_714BAE: LitVar_Missing var_F8
  loc_714BB1: LitVar_Missing var_D8
  loc_714BB4: LitVar_Missing var_B8
  loc_714BB7: LitStr "Junio"
  loc_714BBA: FStStrCopy var_98
  loc_714BBD: FLdRfVar var_98
  loc_714BC0: LitI4 &H1F
  loc_714BC5: PopTmpLdAdStr var_94
  loc_714BC8: LitI2_Byte &H18
  loc_714BCA: PopTmpLdAd2 var_8E
  loc_714BCD: ImpAdLdRf MemVar_74C7D0
  loc_714BD0: NewIfNullPr clsMsg
  loc_714BD3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714BD8: LitVar_Missing var_1F4
  loc_714BDB: PopAdLdVar
  loc_714BDC: ILdRf var_1DC
  loc_714BDF: FLdPrThis
  loc_714BE0: VCallAd Control_ID_cboMes
  loc_714BE3: FStAdFunc var_1E0
  loc_714BE6: FLdPr var_1E0
  loc_714BE9: Me.AddItem from_stack_1, from_stack_2
  loc_714BEE: FFreeStr var_98 = ""
  loc_714BF5: FFree1Ad var_1E0
  loc_714BF8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714C0F: FLdRfVar var_1DC
  loc_714C12: LitVar_Missing var_1D8
  loc_714C15: LitVar_Missing var_1B8
  loc_714C18: LitVar_Missing var_198
  loc_714C1B: LitVar_Missing var_178
  loc_714C1E: LitVar_Missing var_158
  loc_714C21: LitVar_Missing var_138
  loc_714C24: LitVar_Missing var_118
  loc_714C27: LitVar_Missing var_F8
  loc_714C2A: LitVar_Missing var_D8
  loc_714C2D: LitVar_Missing var_B8
  loc_714C30: LitStr "Julio"
  loc_714C33: FStStrCopy var_98
  loc_714C36: FLdRfVar var_98
  loc_714C39: LitI4 &H20
  loc_714C3E: PopTmpLdAdStr var_94
  loc_714C41: LitI2_Byte &H18
  loc_714C43: PopTmpLdAd2 var_8E
  loc_714C46: ImpAdLdRf MemVar_74C7D0
  loc_714C49: NewIfNullPr clsMsg
  loc_714C4C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714C51: LitVar_Missing var_1F4
  loc_714C54: PopAdLdVar
  loc_714C55: ILdRf var_1DC
  loc_714C58: FLdPrThis
  loc_714C59: VCallAd Control_ID_cboMes
  loc_714C5C: FStAdFunc var_1E0
  loc_714C5F: FLdPr var_1E0
  loc_714C62: Me.AddItem from_stack_1, from_stack_2
  loc_714C67: FFreeStr var_98 = ""
  loc_714C6E: FFree1Ad var_1E0
  loc_714C71: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714C88: FLdRfVar var_1DC
  loc_714C8B: LitVar_Missing var_1D8
  loc_714C8E: LitVar_Missing var_1B8
  loc_714C91: LitVar_Missing var_198
  loc_714C94: LitVar_Missing var_178
  loc_714C97: LitVar_Missing var_158
  loc_714C9A: LitVar_Missing var_138
  loc_714C9D: LitVar_Missing var_118
  loc_714CA0: LitVar_Missing var_F8
  loc_714CA3: LitVar_Missing var_D8
  loc_714CA6: LitVar_Missing var_B8
  loc_714CA9: LitStr "Agosto"
  loc_714CAC: FStStrCopy var_98
  loc_714CAF: FLdRfVar var_98
  loc_714CB2: LitI4 &H21
  loc_714CB7: PopTmpLdAdStr var_94
  loc_714CBA: LitI2_Byte &H18
  loc_714CBC: PopTmpLdAd2 var_8E
  loc_714CBF: ImpAdLdRf MemVar_74C7D0
  loc_714CC2: NewIfNullPr clsMsg
  loc_714CC5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714CCA: LitVar_Missing var_1F4
  loc_714CCD: PopAdLdVar
  loc_714CCE: ILdRf var_1DC
  loc_714CD1: FLdPrThis
  loc_714CD2: VCallAd Control_ID_cboMes
  loc_714CD5: FStAdFunc var_1E0
  loc_714CD8: FLdPr var_1E0
  loc_714CDB: Me.AddItem from_stack_1, from_stack_2
  loc_714CE0: FFreeStr var_98 = ""
  loc_714CE7: FFree1Ad var_1E0
  loc_714CEA: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714D01: FLdRfVar var_1DC
  loc_714D04: LitVar_Missing var_1D8
  loc_714D07: LitVar_Missing var_1B8
  loc_714D0A: LitVar_Missing var_198
  loc_714D0D: LitVar_Missing var_178
  loc_714D10: LitVar_Missing var_158
  loc_714D13: LitVar_Missing var_138
  loc_714D16: LitVar_Missing var_118
  loc_714D19: LitVar_Missing var_F8
  loc_714D1C: LitVar_Missing var_D8
  loc_714D1F: LitVar_Missing var_B8
  loc_714D22: LitStr "Septiembre"
  loc_714D25: FStStrCopy var_98
  loc_714D28: FLdRfVar var_98
  loc_714D2B: LitI4 &H22
  loc_714D30: PopTmpLdAdStr var_94
  loc_714D33: LitI2_Byte &H18
  loc_714D35: PopTmpLdAd2 var_8E
  loc_714D38: ImpAdLdRf MemVar_74C7D0
  loc_714D3B: NewIfNullPr clsMsg
  loc_714D3E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714D43: LitVar_Missing var_1F4
  loc_714D46: PopAdLdVar
  loc_714D47: ILdRf var_1DC
  loc_714D4A: FLdPrThis
  loc_714D4B: VCallAd Control_ID_cboMes
  loc_714D4E: FStAdFunc var_1E0
  loc_714D51: FLdPr var_1E0
  loc_714D54: Me.AddItem from_stack_1, from_stack_2
  loc_714D59: FFreeStr var_98 = ""
  loc_714D60: FFree1Ad var_1E0
  loc_714D63: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714D7A: FLdRfVar var_1DC
  loc_714D7D: LitVar_Missing var_1D8
  loc_714D80: LitVar_Missing var_1B8
  loc_714D83: LitVar_Missing var_198
  loc_714D86: LitVar_Missing var_178
  loc_714D89: LitVar_Missing var_158
  loc_714D8C: LitVar_Missing var_138
  loc_714D8F: LitVar_Missing var_118
  loc_714D92: LitVar_Missing var_F8
  loc_714D95: LitVar_Missing var_D8
  loc_714D98: LitVar_Missing var_B8
  loc_714D9B: LitStr "Octubre"
  loc_714D9E: FStStrCopy var_98
  loc_714DA1: FLdRfVar var_98
  loc_714DA4: LitI4 &H23
  loc_714DA9: PopTmpLdAdStr var_94
  loc_714DAC: LitI2_Byte &H18
  loc_714DAE: PopTmpLdAd2 var_8E
  loc_714DB1: ImpAdLdRf MemVar_74C7D0
  loc_714DB4: NewIfNullPr clsMsg
  loc_714DB7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714DBC: LitVar_Missing var_1F4
  loc_714DBF: PopAdLdVar
  loc_714DC0: ILdRf var_1DC
  loc_714DC3: FLdPrThis
  loc_714DC4: VCallAd Control_ID_cboMes
  loc_714DC7: FStAdFunc var_1E0
  loc_714DCA: FLdPr var_1E0
  loc_714DCD: Me.AddItem from_stack_1, from_stack_2
  loc_714DD2: FFreeStr var_98 = ""
  loc_714DD9: FFree1Ad var_1E0
  loc_714DDC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714DF3: FLdRfVar var_1DC
  loc_714DF6: LitVar_Missing var_1D8
  loc_714DF9: LitVar_Missing var_1B8
  loc_714DFC: LitVar_Missing var_198
  loc_714DFF: LitVar_Missing var_178
  loc_714E02: LitVar_Missing var_158
  loc_714E05: LitVar_Missing var_138
  loc_714E08: LitVar_Missing var_118
  loc_714E0B: LitVar_Missing var_F8
  loc_714E0E: LitVar_Missing var_D8
  loc_714E11: LitVar_Missing var_B8
  loc_714E14: LitStr "Noviembre"
  loc_714E17: FStStrCopy var_98
  loc_714E1A: FLdRfVar var_98
  loc_714E1D: LitI4 &H24
  loc_714E22: PopTmpLdAdStr var_94
  loc_714E25: LitI2_Byte &H18
  loc_714E27: PopTmpLdAd2 var_8E
  loc_714E2A: ImpAdLdRf MemVar_74C7D0
  loc_714E2D: NewIfNullPr clsMsg
  loc_714E30: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714E35: LitVar_Missing var_1F4
  loc_714E38: PopAdLdVar
  loc_714E39: ILdRf var_1DC
  loc_714E3C: FLdPrThis
  loc_714E3D: VCallAd Control_ID_cboMes
  loc_714E40: FStAdFunc var_1E0
  loc_714E43: FLdPr var_1E0
  loc_714E46: Me.AddItem from_stack_1, from_stack_2
  loc_714E4B: FFreeStr var_98 = ""
  loc_714E52: FFree1Ad var_1E0
  loc_714E55: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714E6C: FLdRfVar var_1DC
  loc_714E6F: LitVar_Missing var_1D8
  loc_714E72: LitVar_Missing var_1B8
  loc_714E75: LitVar_Missing var_198
  loc_714E78: LitVar_Missing var_178
  loc_714E7B: LitVar_Missing var_158
  loc_714E7E: LitVar_Missing var_138
  loc_714E81: LitVar_Missing var_118
  loc_714E84: LitVar_Missing var_F8
  loc_714E87: LitVar_Missing var_D8
  loc_714E8A: LitVar_Missing var_B8
  loc_714E8D: LitStr "Diciembre"
  loc_714E90: FStStrCopy var_98
  loc_714E93: FLdRfVar var_98
  loc_714E96: LitI4 &H25
  loc_714E9B: PopTmpLdAdStr var_94
  loc_714E9E: LitI2_Byte &H18
  loc_714EA0: PopTmpLdAd2 var_8E
  loc_714EA3: ImpAdLdRf MemVar_74C7D0
  loc_714EA6: NewIfNullPr clsMsg
  loc_714EA9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714EAE: LitVar_Missing var_1F4
  loc_714EB1: PopAdLdVar
  loc_714EB2: ILdRf var_1DC
  loc_714EB5: FLdPrThis
  loc_714EB6: VCallAd Control_ID_cboMes
  loc_714EB9: FStAdFunc var_1E0
  loc_714EBC: FLdPr var_1E0
  loc_714EBF: Me.AddItem from_stack_1, from_stack_2
  loc_714EC4: FFreeStr var_98 = ""
  loc_714ECB: FFree1Ad var_1E0
  loc_714ECE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714EE5: FLdRfVar var_1DC
  loc_714EE8: LitVar_Missing var_1D8
  loc_714EEB: LitVar_Missing var_1B8
  loc_714EEE: LitVar_Missing var_198
  loc_714EF1: LitVar_Missing var_178
  loc_714EF4: LitVar_Missing var_158
  loc_714EF7: LitVar_Missing var_138
  loc_714EFA: LitVar_Missing var_118
  loc_714EFD: LitVar_Missing var_F8
  loc_714F00: LitVar_Missing var_D8
  loc_714F03: LitVar_Missing var_B8
  loc_714F06: LitStr "Domingo"
  loc_714F09: FStStrCopy var_98
  loc_714F0C: FLdRfVar var_98
  loc_714F0F: LitI4 &H26
  loc_714F14: PopTmpLdAdStr var_94
  loc_714F17: LitI2_Byte &H18
  loc_714F19: PopTmpLdAd2 var_8E
  loc_714F1C: ImpAdLdRf MemVar_74C7D0
  loc_714F1F: NewIfNullPr clsMsg
  loc_714F22: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714F27: LitVar_Missing var_1F4
  loc_714F2A: PopAdLdVar
  loc_714F2B: ILdRf var_1DC
  loc_714F2E: FLdPrThis
  loc_714F2F: VCallAd Control_ID_cboDiaSemana
  loc_714F32: FStAdFunc var_1E0
  loc_714F35: FLdPr var_1E0
  loc_714F38: Me.AddItem from_stack_1, from_stack_2
  loc_714F3D: FFreeStr var_98 = ""
  loc_714F44: FFree1Ad var_1E0
  loc_714F47: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714F5E: FLdRfVar var_1DC
  loc_714F61: LitVar_Missing var_1D8
  loc_714F64: LitVar_Missing var_1B8
  loc_714F67: LitVar_Missing var_198
  loc_714F6A: LitVar_Missing var_178
  loc_714F6D: LitVar_Missing var_158
  loc_714F70: LitVar_Missing var_138
  loc_714F73: LitVar_Missing var_118
  loc_714F76: LitVar_Missing var_F8
  loc_714F79: LitVar_Missing var_D8
  loc_714F7C: LitVar_Missing var_B8
  loc_714F7F: LitStr "Lunes"
  loc_714F82: FStStrCopy var_98
  loc_714F85: FLdRfVar var_98
  loc_714F88: LitI4 &H27
  loc_714F8D: PopTmpLdAdStr var_94
  loc_714F90: LitI2_Byte &H18
  loc_714F92: PopTmpLdAd2 var_8E
  loc_714F95: ImpAdLdRf MemVar_74C7D0
  loc_714F98: NewIfNullPr clsMsg
  loc_714F9B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_714FA0: LitVar_Missing var_1F4
  loc_714FA3: PopAdLdVar
  loc_714FA4: ILdRf var_1DC
  loc_714FA7: FLdPrThis
  loc_714FA8: VCallAd Control_ID_cboDiaSemana
  loc_714FAB: FStAdFunc var_1E0
  loc_714FAE: FLdPr var_1E0
  loc_714FB1: Me.AddItem from_stack_1, from_stack_2
  loc_714FB6: FFreeStr var_98 = ""
  loc_714FBD: FFree1Ad var_1E0
  loc_714FC0: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_714FD7: FLdRfVar var_1DC
  loc_714FDA: LitVar_Missing var_1D8
  loc_714FDD: LitVar_Missing var_1B8
  loc_714FE0: LitVar_Missing var_198
  loc_714FE3: LitVar_Missing var_178
  loc_714FE6: LitVar_Missing var_158
  loc_714FE9: LitVar_Missing var_138
  loc_714FEC: LitVar_Missing var_118
  loc_714FEF: LitVar_Missing var_F8
  loc_714FF2: LitVar_Missing var_D8
  loc_714FF5: LitVar_Missing var_B8
  loc_714FF8: LitStr "Martes"
  loc_714FFB: FStStrCopy var_98
  loc_714FFE: FLdRfVar var_98
  loc_715001: LitI4 &H28
  loc_715006: PopTmpLdAdStr var_94
  loc_715009: LitI2_Byte &H18
  loc_71500B: PopTmpLdAd2 var_8E
  loc_71500E: ImpAdLdRf MemVar_74C7D0
  loc_715011: NewIfNullPr clsMsg
  loc_715014: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_715019: LitVar_Missing var_1F4
  loc_71501C: PopAdLdVar
  loc_71501D: ILdRf var_1DC
  loc_715020: FLdPrThis
  loc_715021: VCallAd Control_ID_cboDiaSemana
  loc_715024: FStAdFunc var_1E0
  loc_715027: FLdPr var_1E0
  loc_71502A: Me.AddItem from_stack_1, from_stack_2
  loc_71502F: FFreeStr var_98 = ""
  loc_715036: FFree1Ad var_1E0
  loc_715039: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_715050: FLdRfVar var_1DC
  loc_715053: LitVar_Missing var_1D8
  loc_715056: LitVar_Missing var_1B8
  loc_715059: LitVar_Missing var_198
  loc_71505C: LitVar_Missing var_178
  loc_71505F: LitVar_Missing var_158
  loc_715062: LitVar_Missing var_138
  loc_715065: LitVar_Missing var_118
  loc_715068: LitVar_Missing var_F8
  loc_71506B: LitVar_Missing var_D8
  loc_71506E: LitVar_Missing var_B8
  loc_715071: LitStr "Miercoles"
  loc_715074: FStStrCopy var_98
  loc_715077: FLdRfVar var_98
  loc_71507A: LitI4 &H29
  loc_71507F: PopTmpLdAdStr var_94
  loc_715082: LitI2_Byte &H18
  loc_715084: PopTmpLdAd2 var_8E
  loc_715087: ImpAdLdRf MemVar_74C7D0
  loc_71508A: NewIfNullPr clsMsg
  loc_71508D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_715092: LitVar_Missing var_1F4
  loc_715095: PopAdLdVar
  loc_715096: ILdRf var_1DC
  loc_715099: FLdPrThis
  loc_71509A: VCallAd Control_ID_cboDiaSemana
  loc_71509D: FStAdFunc var_1E0
  loc_7150A0: FLdPr var_1E0
  loc_7150A3: Me.AddItem from_stack_1, from_stack_2
  loc_7150A8: FFreeStr var_98 = ""
  loc_7150AF: FFree1Ad var_1E0
  loc_7150B2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7150C9: FLdRfVar var_1DC
  loc_7150CC: LitVar_Missing var_1D8
  loc_7150CF: LitVar_Missing var_1B8
  loc_7150D2: LitVar_Missing var_198
  loc_7150D5: LitVar_Missing var_178
  loc_7150D8: LitVar_Missing var_158
  loc_7150DB: LitVar_Missing var_138
  loc_7150DE: LitVar_Missing var_118
  loc_7150E1: LitVar_Missing var_F8
  loc_7150E4: LitVar_Missing var_D8
  loc_7150E7: LitVar_Missing var_B8
  loc_7150EA: LitStr "Jueves"
  loc_7150ED: FStStrCopy var_98
  loc_7150F0: FLdRfVar var_98
  loc_7150F3: LitI4 &H2A
  loc_7150F8: PopTmpLdAdStr var_94
  loc_7150FB: LitI2_Byte &H18
  loc_7150FD: PopTmpLdAd2 var_8E
  loc_715100: ImpAdLdRf MemVar_74C7D0
  loc_715103: NewIfNullPr clsMsg
  loc_715106: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71510B: LitVar_Missing var_1F4
  loc_71510E: PopAdLdVar
  loc_71510F: ILdRf var_1DC
  loc_715112: FLdPrThis
  loc_715113: VCallAd Control_ID_cboDiaSemana
  loc_715116: FStAdFunc var_1E0
  loc_715119: FLdPr var_1E0
  loc_71511C: Me.AddItem from_stack_1, from_stack_2
  loc_715121: FFreeStr var_98 = ""
  loc_715128: FFree1Ad var_1E0
  loc_71512B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_715142: FLdRfVar var_1DC
  loc_715145: LitVar_Missing var_1D8
  loc_715148: LitVar_Missing var_1B8
  loc_71514B: LitVar_Missing var_198
  loc_71514E: LitVar_Missing var_178
  loc_715151: LitVar_Missing var_158
  loc_715154: LitVar_Missing var_138
  loc_715157: LitVar_Missing var_118
  loc_71515A: LitVar_Missing var_F8
  loc_71515D: LitVar_Missing var_D8
  loc_715160: LitVar_Missing var_B8
  loc_715163: LitStr "Viernes"
  loc_715166: FStStrCopy var_98
  loc_715169: FLdRfVar var_98
  loc_71516C: LitI4 &H2B
  loc_715171: PopTmpLdAdStr var_94
  loc_715174: LitI2_Byte &H18
  loc_715176: PopTmpLdAd2 var_8E
  loc_715179: ImpAdLdRf MemVar_74C7D0
  loc_71517C: NewIfNullPr clsMsg
  loc_71517F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_715184: LitVar_Missing var_1F4
  loc_715187: PopAdLdVar
  loc_715188: ILdRf var_1DC
  loc_71518B: FLdPrThis
  loc_71518C: VCallAd Control_ID_cboDiaSemana
  loc_71518F: FStAdFunc var_1E0
  loc_715192: FLdPr var_1E0
  loc_715195: Me.AddItem from_stack_1, from_stack_2
  loc_71519A: FFreeStr var_98 = ""
  loc_7151A1: FFree1Ad var_1E0
  loc_7151A4: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7151BB: FLdRfVar var_1DC
  loc_7151BE: LitVar_Missing var_1D8
  loc_7151C1: LitVar_Missing var_1B8
  loc_7151C4: LitVar_Missing var_198
  loc_7151C7: LitVar_Missing var_178
  loc_7151CA: LitVar_Missing var_158
  loc_7151CD: LitVar_Missing var_138
  loc_7151D0: LitVar_Missing var_118
  loc_7151D3: LitVar_Missing var_F8
  loc_7151D6: LitVar_Missing var_D8
  loc_7151D9: LitVar_Missing var_B8
  loc_7151DC: LitStr "Sabado"
  loc_7151DF: FStStrCopy var_98
  loc_7151E2: FLdRfVar var_98
  loc_7151E5: LitI4 &H2C
  loc_7151EA: PopTmpLdAdStr var_94
  loc_7151ED: LitI2_Byte &H18
  loc_7151EF: PopTmpLdAd2 var_8E
  loc_7151F2: ImpAdLdRf MemVar_74C7D0
  loc_7151F5: NewIfNullPr clsMsg
  loc_7151F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7151FD: LitVar_Missing var_1F4
  loc_715200: PopAdLdVar
  loc_715201: ILdRf var_1DC
  loc_715204: FLdPrThis
  loc_715205: VCallAd Control_ID_cboDiaSemana
  loc_715208: FStAdFunc var_1E0
  loc_71520B: FLdPr var_1E0
  loc_71520E: Me.AddItem from_stack_1, from_stack_2
  loc_715213: FFreeStr var_98 = ""
  loc_71521A: FFree1Ad var_1E0
  loc_71521D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_715234: FLdRfVar var_1DC
  loc_715237: LitVar_Missing var_1D8
  loc_71523A: LitVar_Missing var_1B8
  loc_71523D: LitVar_Missing var_198
  loc_715240: LitVar_Missing var_178
  loc_715243: LitVar_Missing var_158
  loc_715246: LitVar_Missing var_138
  loc_715249: LitVar_Missing var_118
  loc_71524C: LitVar_Missing var_F8
  loc_71524F: LitVar_Missing var_D8
  loc_715252: LitVar_Missing var_B8
  loc_715255: LitStr "Debe ingresar una hora de activación correcta. Verifique por favor."
  loc_715258: FStStrCopy var_98
  loc_71525B: FLdRfVar var_98
  loc_71525E: LitI4 &H2D
  loc_715263: PopTmpLdAdStr var_94
  loc_715266: LitI2_Byte &H18
  loc_715268: PopTmpLdAd2 var_8E
  loc_71526B: ImpAdLdRf MemVar_74C7D0
  loc_71526E: NewIfNullPr clsMsg
  loc_715271: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_715276: ILdRf var_1DC
  loc_715279: FLdPr Me
  loc_71527C: MemStStrCopy
  loc_715280: FFreeStr var_98 = ""
  loc_715287: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71529E: FLdRfVar var_1DC
  loc_7152A1: LitVar_Missing var_1D8
  loc_7152A4: LitVar_Missing var_1B8
  loc_7152A7: LitVar_Missing var_198
  loc_7152AA: LitVar_Missing var_178
  loc_7152AD: LitVar_Missing var_158
  loc_7152B0: LitVar_Missing var_138
  loc_7152B3: LitVar_Missing var_118
  loc_7152B6: LitVar_Missing var_F8
  loc_7152B9: LitVar_Missing var_D8
  loc_7152BC: LitVar_Missing var_B8
  loc_7152BF: LitStr "Debe ingresar los minutos de preaviso correctamente. Verifique por favor."
  loc_7152C2: FStStrCopy var_98
  loc_7152C5: FLdRfVar var_98
  loc_7152C8: LitI4 &H2E
  loc_7152CD: PopTmpLdAdStr var_94
  loc_7152D0: LitI2_Byte &H18
  loc_7152D2: PopTmpLdAd2 var_8E
  loc_7152D5: ImpAdLdRf MemVar_74C7D0
  loc_7152D8: NewIfNullPr clsMsg
  loc_7152DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7152E0: ILdRf var_1DC
  loc_7152E3: FLdPr Me
  loc_7152E6: MemStStrCopy
  loc_7152EA: FFreeStr var_98 = ""
  loc_7152F1: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_715308: FLdRfVar var_1DC
  loc_71530B: LitVar_Missing var_1D8
  loc_71530E: LitVar_Missing var_1B8
  loc_715311: LitVar_Missing var_198
  loc_715314: LitVar_Missing var_178
  loc_715317: LitVar_Missing var_158
  loc_71531A: LitVar_Missing var_138
  loc_71531D: LitVar_Missing var_118
  loc_715320: LitVar_Missing var_F8
  loc_715323: LitVar_Missing var_D8
  loc_715326: LitVar_Missing var_B8
  loc_715329: LitStr "Debe ingresar los minutos de preaviso entre 1 y 99. Verifique por favor."
  loc_71532C: FStStrCopy var_98
  loc_71532F: FLdRfVar var_98
  loc_715332: LitI4 &H2F
  loc_715337: PopTmpLdAdStr var_94
  loc_71533A: LitI2_Byte &H18
  loc_71533C: PopTmpLdAd2 var_8E
  loc_71533F: ImpAdLdRf MemVar_74C7D0
  loc_715342: NewIfNullPr clsMsg
  loc_715345: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71534A: ILdRf var_1DC
  loc_71534D: FLdPr Me
  loc_715350: MemStStrCopy
  loc_715354: FFreeStr var_98 = ""
  loc_71535B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_715372: FLdPr Me
  loc_715375: MemLdStr msEvento
  loc_715378: FnLenStr
  loc_715379: LitI4 0
  loc_71537E: GtI4
  loc_71537F: BranchF loc_715504
  loc_715382: LitI2_Byte 1
  loc_715384: FStI2 var_86
  loc_715387: LitVarI2 var_B8, 2
  loc_71538C: FLdI2 var_86
  loc_71538F: CI4UI1
  loc_715390: FLdPr Me
  loc_715393: MemLdStr msEvento
  loc_715396: ImpAdCallI2 Mid$(, , )
  loc_71539B: FStStr var_8C
  loc_71539E: FFree1Var var_B8 = ""
  loc_7153A1: FLdI2 var_86
  loc_7153A4: LitI2_Byte 2
  loc_7153A6: AddI2
  loc_7153A7: FStI2 var_86
  loc_7153AA: FLdRfVar var_98
  loc_7153AD: ILdRf var_8C
  loc_7153B0: from_stack_2v = Proc_18_22_60DE54(from_stack_1v)
  loc_7153B5: FFree1Str var_98
  loc_7153B8: LitVarI2 var_B8, 1
  loc_7153BD: FLdI2 var_86
  loc_7153C0: CI4UI1
  loc_7153C1: FLdPr Me
  loc_7153C4: MemLdStr msEvento
  loc_7153C7: ImpAdCallI2 Mid$(, , )
  loc_7153CC: FStStr var_8C
  loc_7153CF: FFree1Var var_B8 = ""
  loc_7153D2: FLdI2 var_86
  loc_7153D5: LitI2_Byte 1
  loc_7153D7: AddI2
  loc_7153D8: FStI2 var_86
  loc_7153DB: FLdRfVar var_98
  loc_7153DE: ILdRf var_8C
  loc_7153E1: from_stack_2v = Proc_18_23_6191F8(from_stack_1v)
  loc_7153E6: FFree1Str var_98
  loc_7153E9: LitVarI2 var_B8, 2
  loc_7153EE: FLdI2 var_86
  loc_7153F1: CI4UI1
  loc_7153F2: FLdPr Me
  loc_7153F5: MemLdStr msEvento
  loc_7153F8: ImpAdCallI2 Mid$(, , )
  loc_7153FD: FStStr var_8C
  loc_715400: FFree1Var var_B8 = ""
  loc_715403: FLdI2 var_86
  loc_715406: LitI2_Byte 2
  loc_715408: AddI2
  loc_715409: FStI2 var_86
  loc_71540C: FLdRfVar var_98
  loc_71540F: ILdRf var_8C
  loc_715412: from_stack_2v = Proc_18_24_5E0D58(from_stack_1v)
  loc_715417: FFree1Str var_98
  loc_71541A: LitVarI2 var_B8, 2
  loc_71541F: FLdI2 var_86
  loc_715422: CI4UI1
  loc_715423: FLdPr Me
  loc_715426: MemLdStr msEvento
  loc_715429: ImpAdCallI2 Mid$(, , )
  loc_71542E: FStStr var_8C
  loc_715431: FFree1Var var_B8 = ""
  loc_715434: FLdI2 var_86
  loc_715437: LitI2_Byte 2
  loc_715439: AddI2
  loc_71543A: FStI2 var_86
  loc_71543D: FLdRfVar var_98
  loc_715440: ILdRf var_8C
  loc_715443: from_stack_2v = Proc_18_25_626360(from_stack_1v)
  loc_715448: FFree1Str var_98
  loc_71544B: LitVarI2 var_B8, 1
  loc_715450: FLdI2 var_86
  loc_715453: CI4UI1
  loc_715454: FLdPr Me
  loc_715457: MemLdStr msEvento
  loc_71545A: ImpAdCallI2 Mid$(, , )
  loc_71545F: FStStr var_8C
  loc_715462: FFree1Var var_B8 = ""
  loc_715465: FLdI2 var_86
  loc_715468: LitI2_Byte 1
  loc_71546A: AddI2
  loc_71546B: FStI2 var_86
  loc_71546E: FLdRfVar var_98
  loc_715471: ILdRf var_8C
  loc_715474: from_stack_2v = Proc_18_26_5DF5CC(from_stack_1v)
  loc_715479: FFree1Str var_98
  loc_71547C: LitVarI2 var_B8, 6
  loc_715481: FLdI2 var_86
  loc_715484: CI4UI1
  loc_715485: FLdPr Me
  loc_715488: MemLdStr msEvento
  loc_71548B: ImpAdCallI2 Mid$(, , )
  loc_715490: FStStr var_8C
  loc_715493: FFree1Var var_B8 = ""
  loc_715496: FLdI2 var_86
  loc_715499: LitI2_Byte 6
  loc_71549B: AddI2
  loc_71549C: FStI2 var_86
  loc_71549F: FLdRfVar var_98
  loc_7154A2: ILdRf var_8C
  loc_7154A5: from_stack_2v = Proc_18_27_61D724(from_stack_1v)
  loc_7154AA: FFree1Str var_98
  loc_7154AD: LitVarI2 var_B8, 4
  loc_7154B2: FLdI2 var_86
  loc_7154B5: CI4UI1
  loc_7154B6: FLdPr Me
  loc_7154B9: MemLdStr msEvento
  loc_7154BC: ImpAdCallI2 Mid$(, , )
  loc_7154C1: FStStr var_8C
  loc_7154C4: FFree1Var var_B8 = ""
  loc_7154C7: FLdI2 var_86
  loc_7154CA: LitI2_Byte 4
  loc_7154CC: AddI2
  loc_7154CD: FStI2 var_86
  loc_7154D0: FLdRfVar var_98
  loc_7154D3: ILdRf var_8C
  loc_7154D6: from_stack_2v = Proc_18_28_69B1C8(from_stack_1v)
  loc_7154DB: FFree1Str var_98
  loc_7154DE: LitVarI2 var_B8, 40
  loc_7154E3: FLdI2 var_86
  loc_7154E6: CI4UI1
  loc_7154E7: FLdPr Me
  loc_7154EA: MemLdStr msEvento
  loc_7154ED: ImpAdCallI2 Mid$(, , )
  loc_7154F2: FStStr var_8C
  loc_7154F5: FFree1Var var_B8 = ""
  loc_7154F8: FLdI2 var_86
  loc_7154FB: LitI2_Byte &H28
  loc_7154FD: AddI2
  loc_7154FE: FStI2 var_86
  loc_715501: Branch loc_715574
  loc_715504: FLdRfVar var_98
  loc_715507: LitStr "10"
  loc_71550A: from_stack_2v = Proc_18_22_60DE54(from_stack_1v)
  loc_71550F: FFree1Str var_98
  loc_715512: FLdRfVar var_98
  loc_715515: LitStr "0"
  loc_715518: from_stack_2v = Proc_18_23_6191F8(from_stack_1v)
  loc_71551D: FFree1Str var_98
  loc_715520: FLdRfVar var_98
  loc_715523: LitStr "00"
  loc_715526: from_stack_2v = Proc_18_24_5E0D58(from_stack_1v)
  loc_71552B: FFree1Str var_98
  loc_71552E: FLdRfVar var_98
  loc_715531: LitStr "00"
  loc_715534: from_stack_2v = Proc_18_25_626360(from_stack_1v)
  loc_715539: FFree1Str var_98
  loc_71553C: FLdRfVar var_98
  loc_71553F: LitStr "0"
  loc_715542: from_stack_2v = Proc_18_26_5DF5CC(from_stack_1v)
  loc_715547: FFree1Str var_98
  loc_71554A: FLdRfVar var_98
  loc_71554D: LitStr "0000"
  loc_715550: from_stack_2v = Proc_18_27_61D724(from_stack_1v)
  loc_715555: FFree1Str var_98
  loc_715558: FLdRfVar var_98
  loc_71555B: LitStr "00"
  loc_71555E: from_stack_2v = Proc_18_28_69B1C8(from_stack_1v)
  loc_715563: FFree1Str var_98
  loc_715566: FLdRfVar var_98
  loc_715569: LitStr "00"
  loc_71556C: from_stack_2v = Proc_18_29_5E0728(from_stack_1v)
  loc_715571: FFree1Str var_98
  loc_715574: LitVarI2 var_B8, 1
  loc_715579: LitI4 &HC
  loc_71557E: ImpAdLdI4 MemVar_74BEAC
  loc_715581: ImpAdCallI2 Mid$(, , )
  loc_715586: FStStrNoPop var_98
  loc_715589: LitStr "1"
  loc_71558C: EqStr
  loc_71558E: CI4UI1
  loc_71558F: LitVarI2 var_D8, 1
  loc_715594: LitI4 4
  loc_715599: ImpAdLdI4 MemVar_74BEAC
  loc_71559C: ImpAdCallI2 Mid$(, , )
  loc_7155A1: FStStrNoPop var_1DC
  loc_7155A4: CI4Str
  loc_7155A5: OrI4
  loc_7155A6: CBoolI4
  loc_7155A8: FFreeStr var_98 = ""
  loc_7155AF: FFreeVar var_B8 = ""
  loc_7155B6: BranchF loc_7155DE
  loc_7155B9: LitI2_Byte &HFF
  loc_7155BB: FLdRfVar var_1E4
  loc_7155BE: LitI2_Byte 3
  loc_7155C0: FLdPrThis
  loc_7155C1: VCallAd Control_ID_optTipoEvento
  loc_7155C4: FStAdFunc var_1E0
  loc_7155C7: FLdPr var_1E0
  loc_7155CA: Set from_stack_2 = Me(from_stack_1)
  loc_7155CF: FLdPr var_1E4
  loc_7155D2: Me.Enabled = from_stack_1b
  loc_7155D7: FFreeAd var_1E0 = ""
  loc_7155DE: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E65FC
  'Data Table: 447224
  loc_5E658C: FLdRfVar var_98
  loc_5E658F: FLdPr Me
  loc_5E6592: MemLdRfVar from_stack_1.global_80
  loc_5E6595: FLdRfVar var_88
  loc_5E6598: ImpAdLdRf MemVar_74C760
  loc_5E659B: NewIfNullPr Formx
  loc_5E659E: from_stack_1v = Formx.global_4589716Get()
  loc_5E65A3: FLdPr var_88
  loc_5E65A6: Formx.Icon = from_stack_1
  loc_5E65AB: FLdRfVar var_98
  loc_5E65AE: NotVar var_A8
  loc_5E65B2: CBoolVarNull
  loc_5E65B4: FFree1Ad var_88
  loc_5E65B7: FFree1Var var_98 = ""
  loc_5E65BA: BranchF loc_5E65E8
  loc_5E65BD: FLdRfVar var_98
  loc_5E65C0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E65C5: FLdRfVar var_98
  loc_5E65C8: CBoolVarNull
  loc_5E65CA: FFree1Var var_98 = ""
  loc_5E65CD: BranchF loc_5E65E5
  loc_5E65D0: ILdRf Me
  loc_5E65D3: FStAdNoPop
  loc_5E65D7: ImpAdLdRf MemVar_7520D4
  loc_5E65DA: NewIfNullPr Global
  loc_5E65DD: Global.Unload from_stack_1
  loc_5E65E2: FFree1Ad var_88
  loc_5E65E5: Branch loc_5E658C
  loc_5E65E8: FLdPr Me
  loc_5E65EB: MemLdRfVar from_stack_1.global_80
  loc_5E65EE: from_stack_2v = Proc_18_35_68E320(from_stack_1v)
  loc_5E65F3: LitI2_Byte &HFF
  loc_5E65F5: FLdPr Me
  loc_5E65F8: MemStI2 global_76
  loc_5E65FB: ExitProcHresult
End Sub

Private Sub optTipoEvento_Click(Index As Integer) '5D9F38
  'Data Table: 447224
  loc_5D9F00: ILdI2 Index
  loc_5D9F03: LitI2_Byte 3
  loc_5D9F05: EqI2
  loc_5D9F06: BranchF loc_5D9F20
  loc_5D9F09: LitI2_Byte &HFF
  loc_5D9F0B: FLdPrThis
  loc_5D9F0C: VCallAd Control_ID_fraNivelPrecio
  loc_5D9F0F: FStAdFunc var_88
  loc_5D9F12: FLdPr var_88
  loc_5D9F15: Me.Enabled = from_stack_1b
  loc_5D9F1A: FFree1Ad var_88
  loc_5D9F1D: Branch loc_5D9F34
  loc_5D9F20: LitI2_Byte 0
  loc_5D9F22: FLdPrThis
  loc_5D9F23: VCallAd Control_ID_fraNivelPrecio
  loc_5D9F26: FStAdFunc var_88
  loc_5D9F29: FLdPr var_88
  loc_5D9F2C: Me.Enabled = from_stack_1b
  loc_5D9F31: FFree1Ad var_88
  loc_5D9F34: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D6110
  'Data Table: 447224
  loc_5D60EC: LitI2_Byte &HFF
  loc_5D60EE: ImpAdLdRf MemVar_74CA44
  loc_5D60F1: NewIfNullPr frmProgramacionEventos
  loc_5D60F4: Call frmProgramacionEventos.mbCancelaEventoPut(from_stack_1v)
  loc_5D60F9: ILdRf Me
  loc_5D60FC: FStAdNoPop
  loc_5D6100: ImpAdLdRf MemVar_7520D4
  loc_5D6103: NewIfNullPr Global
  loc_5D6106: Global.Unload from_stack_1
  loc_5D610B: FFree1Ad var_88
  loc_5D610E: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5EC648
  'Data Table: 447224
  loc_5EC5BC: FLdRfVar var_86
  loc_5EC5BF: from_stack_1v = Proc_18_33_621118()
  loc_5EC5C4: FLdI2 var_86
  loc_5EC5C7: NotI4
  loc_5EC5C8: BranchF loc_5EC5CC
  loc_5EC5CB: ExitProcHresult
  loc_5EC5CC: FLdRfVar var_86
  loc_5EC5CF: FLdRfVar var_90
  loc_5EC5D2: LitI2_Byte 0
  loc_5EC5D4: FLdPrThis
  loc_5EC5D5: VCallAd Control_ID_chkAlarma
  loc_5EC5D8: FStAdFunc var_8C
  loc_5EC5DB: FLdPr var_8C
  loc_5EC5DE: Set from_stack_2 = Me(from_stack_1)
  loc_5EC5E3: FLdPr var_90
  loc_5EC5E6:  = Me.Value
  loc_5EC5EB: FLdI2 var_86
  loc_5EC5EE: CI4UI1
  loc_5EC5EF: LitI4 1
  loc_5EC5F4: EqI4
  loc_5EC5F5: FFreeAd var_8C = ""
  loc_5EC5FC: BranchF loc_5EC607
  loc_5EC5FF: FLdRfVar var_86
  loc_5EC602: from_stack_1v = Proc_18_34_61AD70()
  loc_5EC607: FLdPr Me
  loc_5EC60A: MemLdRfVar from_stack_1.msEvento
  loc_5EC60D: from_stack_2v = Proc_18_32_6B81A4(from_stack_1v)
  loc_5EC612: LitI2_Byte 0
  loc_5EC614: ImpAdLdRf MemVar_74CA44
  loc_5EC617: NewIfNullPr frmProgramacionEventos
  loc_5EC61A: Call frmProgramacionEventos.mbCancelaEventoPut(from_stack_1v)
  loc_5EC61F: FLdPr Me
  loc_5EC622: MemLdStr msEvento
  loc_5EC625: ImpAdLdRf MemVar_74CA44
  loc_5EC628: NewIfNullPr frmProgramacionEventos
  loc_5EC62B: Call frmProgramacionEventos.msNuevoEventoPut(from_stack_1v)
  loc_5EC630: ILdRf Me
  loc_5EC633: FStAdNoPop
  loc_5EC637: ImpAdLdRf MemVar_7520D4
  loc_5EC63A: NewIfNullPr Global
  loc_5EC63D: Global.Unload from_stack_1
  loc_5EC642: FFree1Ad var_8C
  loc_5EC645: ExitProcHresult
End Sub

Private Sub optTemporizacion_Click(Index As Integer) '66D0D4
  'Data Table: 447224
  loc_66CCDC: ILdI2 Index
  loc_66CCDF: FStI2 var_88
  loc_66CCE2: FLdI2 var_88
  loc_66CCE5: LitI2_Byte 0
  loc_66CCE7: EqI2
  loc_66CCE8: BranchF loc_66CD92
  loc_66CCEB: LitI4 0
  loc_66CCF0: CI2I4
  loc_66CCF1: FLdPrThis
  loc_66CCF2: VCallAd Control_ID_chkDia
  loc_66CCF5: FStAdFunc var_8C
  loc_66CCF8: FLdPr var_8C
  loc_66CCFB: Me.Value = from_stack_1
  loc_66CD00: FFree1Ad var_8C
  loc_66CD03: LitI2_Byte 0
  loc_66CD05: FLdPrThis
  loc_66CD06: VCallAd Control_ID_cboMes
  loc_66CD09: FStAdFunc var_8C
  loc_66CD0C: FLdPr var_8C
  loc_66CD0F: Me.Enabled = from_stack_1b
  loc_66CD14: FFree1Ad var_8C
  loc_66CD17: LitI2_Byte 0
  loc_66CD19: FLdPrThis
  loc_66CD1A: VCallAd Control_ID_lblMes
  loc_66CD1D: FStAdFunc var_8C
  loc_66CD20: FLdPr var_8C
  loc_66CD23: Me.Enabled = from_stack_1b
  loc_66CD28: FFree1Ad var_8C
  loc_66CD2B: LitI2_Byte 0
  loc_66CD2D: FLdPrThis
  loc_66CD2E: VCallAd Control_ID_cboDia
  loc_66CD31: FStAdFunc var_8C
  loc_66CD34: FLdPr var_8C
  loc_66CD37: Me.Enabled = from_stack_1b
  loc_66CD3C: FFree1Ad var_8C
  loc_66CD3F: LitI2_Byte 0
  loc_66CD41: FLdPrThis
  loc_66CD42: VCallAd Control_ID_lblDia
  loc_66CD45: FStAdFunc var_8C
  loc_66CD48: FLdPr var_8C
  loc_66CD4B: Me.Enabled = from_stack_1b
  loc_66CD50: FFree1Ad var_8C
  loc_66CD53: LitI2_Byte 0
  loc_66CD55: FLdPrThis
  loc_66CD56: VCallAd Control_ID_chkDia
  loc_66CD59: FStAdFunc var_8C
  loc_66CD5C: FLdPr var_8C
  loc_66CD5F: Me.Enabled = from_stack_1b
  loc_66CD64: FFree1Ad var_8C
  loc_66CD67: LitI2_Byte 0
  loc_66CD69: FLdPrThis
  loc_66CD6A: VCallAd Control_ID_cboDiaSemana
  loc_66CD6D: FStAdFunc var_8C
  loc_66CD70: FLdPr var_8C
  loc_66CD73: Me.Enabled = from_stack_1b
  loc_66CD78: FFree1Ad var_8C
  loc_66CD7B: LitI2_Byte 0
  loc_66CD7D: FLdPrThis
  loc_66CD7E: VCallAd Control_ID_lblDiaSemana
  loc_66CD81: FStAdFunc var_8C
  loc_66CD84: FLdPr var_8C
  loc_66CD87: Me.Enabled = from_stack_1b
  loc_66CD8C: FFree1Ad var_8C
  loc_66CD8F: Branch loc_66D0D2
  loc_66CD92: FLdI2 var_88
  loc_66CD95: LitI2_Byte 1
  loc_66CD97: EqI2
  loc_66CD98: BranchF loc_66CE74
  loc_66CD9B: LitI4 0
  loc_66CDA0: CI2I4
  loc_66CDA1: FLdPrThis
  loc_66CDA2: VCallAd Control_ID_chkDia
  loc_66CDA5: FStAdFunc var_8C
  loc_66CDA8: FLdPr var_8C
  loc_66CDAB: Me.Value = from_stack_1
  loc_66CDB0: FFree1Ad var_8C
  loc_66CDB3: LitI2_Byte 0
  loc_66CDB5: FLdPrThis
  loc_66CDB6: VCallAd Control_ID_cboMes
  loc_66CDB9: FStAdFunc var_8C
  loc_66CDBC: FLdPr var_8C
  loc_66CDBF: Me.Enabled = from_stack_1b
  loc_66CDC4: FFree1Ad var_8C
  loc_66CDC7: LitI2_Byte 0
  loc_66CDC9: FLdPrThis
  loc_66CDCA: VCallAd Control_ID_lblMes
  loc_66CDCD: FStAdFunc var_8C
  loc_66CDD0: FLdPr var_8C
  loc_66CDD3: Me.Enabled = from_stack_1b
  loc_66CDD8: FFree1Ad var_8C
  loc_66CDDB: LitI2_Byte 0
  loc_66CDDD: FLdPrThis
  loc_66CDDE: VCallAd Control_ID_cboDia
  loc_66CDE1: FStAdFunc var_8C
  loc_66CDE4: FLdPr var_8C
  loc_66CDE7: Me.Enabled = from_stack_1b
  loc_66CDEC: FFree1Ad var_8C
  loc_66CDEF: LitI2_Byte 0
  loc_66CDF1: FLdPrThis
  loc_66CDF2: VCallAd Control_ID_lblDia
  loc_66CDF5: FStAdFunc var_8C
  loc_66CDF8: FLdPr var_8C
  loc_66CDFB: Me.Enabled = from_stack_1b
  loc_66CE00: FFree1Ad var_8C
  loc_66CE03: LitI2_Byte 0
  loc_66CE05: FLdPrThis
  loc_66CE06: VCallAd Control_ID_chkDia
  loc_66CE09: FStAdFunc var_8C
  loc_66CE0C: FLdPr var_8C
  loc_66CE0F: Me.Enabled = from_stack_1b
  loc_66CE14: FFree1Ad var_8C
  loc_66CE17: LitI2_Byte &HFF
  loc_66CE19: FLdPrThis
  loc_66CE1A: VCallAd Control_ID_cboDiaSemana
  loc_66CE1D: FStAdFunc var_8C
  loc_66CE20: FLdPr var_8C
  loc_66CE23: Me.Enabled = from_stack_1b
  loc_66CE28: FFree1Ad var_8C
  loc_66CE2B: LitI2_Byte &HFF
  loc_66CE2D: FLdPrThis
  loc_66CE2E: VCallAd Control_ID_lblDiaSemana
  loc_66CE31: FStAdFunc var_8C
  loc_66CE34: FLdPr var_8C
  loc_66CE37: Me.Enabled = from_stack_1b
  loc_66CE3C: FFree1Ad var_8C
  loc_66CE3F: FLdRfVar var_8E
  loc_66CE42: FLdPrThis
  loc_66CE43: VCallAd Control_ID_cboDiaSemana
  loc_66CE46: FStAdFunc var_8C
  loc_66CE49: FLdPr var_8C
  loc_66CE4C:  = Me.ListIndex
  loc_66CE51: FLdI2 var_8E
  loc_66CE54: LitI2_Byte &HFF
  loc_66CE56: EqI2
  loc_66CE57: FFree1Ad var_8C
  loc_66CE5A: BranchF loc_66CE71
  loc_66CE5D: LitI2_Byte 0
  loc_66CE5F: FLdPrThis
  loc_66CE60: VCallAd Control_ID_cboDiaSemana
  loc_66CE63: FStAdFunc var_8C
  loc_66CE66: FLdPr var_8C
  loc_66CE69: Me.ListIndex = from_stack_1
  loc_66CE6E: FFree1Ad var_8C
  loc_66CE71: Branch loc_66D0D2
  loc_66CE74: FLdI2 var_88
  loc_66CE77: LitI2_Byte 2
  loc_66CE79: EqI2
  loc_66CE7A: BranchF loc_66CFB8
  loc_66CE7D: LitI2_Byte 0
  loc_66CE7F: FLdPrThis
  loc_66CE80: VCallAd Control_ID_cboMes
  loc_66CE83: FStAdFunc var_8C
  loc_66CE86: FLdPr var_8C
  loc_66CE89: Me.Enabled = from_stack_1b
  loc_66CE8E: FFree1Ad var_8C
  loc_66CE91: LitI2_Byte 0
  loc_66CE93: FLdPrThis
  loc_66CE94: VCallAd Control_ID_lblMes
  loc_66CE97: FStAdFunc var_8C
  loc_66CE9A: FLdPr var_8C
  loc_66CE9D: Me.Enabled = from_stack_1b
  loc_66CEA2: FFree1Ad var_8C
  loc_66CEA5: LitI2_Byte &HFF
  loc_66CEA7: FLdPrThis
  loc_66CEA8: VCallAd Control_ID_cboDia
  loc_66CEAB: FStAdFunc var_8C
  loc_66CEAE: FLdPr var_8C
  loc_66CEB1: Me.Enabled = from_stack_1b
  loc_66CEB6: FFree1Ad var_8C
  loc_66CEB9: LitI2_Byte &HFF
  loc_66CEBB: FLdPrThis
  loc_66CEBC: VCallAd Control_ID_lblDia
  loc_66CEBF: FStAdFunc var_8C
  loc_66CEC2: FLdPr var_8C
  loc_66CEC5: Me.Enabled = from_stack_1b
  loc_66CECA: FFree1Ad var_8C
  loc_66CECD: LitI2_Byte &HFF
  loc_66CECF: FLdPrThis
  loc_66CED0: VCallAd Control_ID_chkDia
  loc_66CED3: FStAdFunc var_8C
  loc_66CED6: FLdPr var_8C
  loc_66CED9: Me.Enabled = from_stack_1b
  loc_66CEDE: FFree1Ad var_8C
  loc_66CEE1: LitI2_Byte 0
  loc_66CEE3: FLdPrThis
  loc_66CEE4: VCallAd Control_ID_cboDiaSemana
  loc_66CEE7: FStAdFunc var_8C
  loc_66CEEA: FLdPr var_8C
  loc_66CEED: Me.Enabled = from_stack_1b
  loc_66CEF2: FFree1Ad var_8C
  loc_66CEF5: LitI2_Byte 0
  loc_66CEF7: FLdPrThis
  loc_66CEF8: VCallAd Control_ID_lblDiaSemana
  loc_66CEFB: FStAdFunc var_8C
  loc_66CEFE: FLdPr var_8C
  loc_66CF01: Me.Enabled = from_stack_1b
  loc_66CF06: FFree1Ad var_8C
  loc_66CF09: FLdPrThis
  loc_66CF0A: VCallAd Control_ID_cboDia
  loc_66CF0D: FStAdFunc var_8C
  loc_66CF10: FLdPr var_8C
  loc_66CF13: Me.Clear
  loc_66CF18: FFree1Ad var_8C
  loc_66CF1B: LitI2_Byte 1
  loc_66CF1D: FLdRfVar var_86
  loc_66CF20: LitI2_Byte &H1F
  loc_66CF22: ForI2 var_92
  loc_66CF28: LitVar_Missing var_A8
  loc_66CF2B: PopAdLdVar
  loc_66CF2C: FLdI2 var_86
  loc_66CF2F: CStrUI1
  loc_66CF31: FStStrNoPop var_98
  loc_66CF34: FLdPrThis
  loc_66CF35: VCallAd Control_ID_cboDia
  loc_66CF38: FStAdFunc var_8C
  loc_66CF3B: FLdPr var_8C
  loc_66CF3E: Me.AddItem from_stack_1, from_stack_2
  loc_66CF43: FFree1Str var_98
  loc_66CF46: FFree1Ad var_8C
  loc_66CF49: FLdRfVar var_86
  loc_66CF4C: NextI2 var_92, loc_66CF28
  loc_66CF51: FLdRfVar var_8E
  loc_66CF54: FLdPrThis
  loc_66CF55: VCallAd Control_ID_cboMes
  loc_66CF58: FStAdFunc var_8C
  loc_66CF5B: FLdPr var_8C
  loc_66CF5E:  = Me.ListIndex
  loc_66CF63: FLdI2 var_8E
  loc_66CF66: LitI2_Byte &HFF
  loc_66CF68: EqI2
  loc_66CF69: FFree1Ad var_8C
  loc_66CF6C: BranchF loc_66CF83
  loc_66CF6F: LitI2_Byte 0
  loc_66CF71: FLdPrThis
  loc_66CF72: VCallAd Control_ID_cboMes
  loc_66CF75: FStAdFunc var_8C
  loc_66CF78: FLdPr var_8C
  loc_66CF7B: Me.ListIndex = from_stack_1
  loc_66CF80: FFree1Ad var_8C
  loc_66CF83: FLdRfVar var_8E
  loc_66CF86: FLdPrThis
  loc_66CF87: VCallAd Control_ID_cboDia
  loc_66CF8A: FStAdFunc var_8C
  loc_66CF8D: FLdPr var_8C
  loc_66CF90:  = Me.ListIndex
  loc_66CF95: FLdI2 var_8E
  loc_66CF98: LitI2_Byte &HFF
  loc_66CF9A: EqI2
  loc_66CF9B: FFree1Ad var_8C
  loc_66CF9E: BranchF loc_66CFB5
  loc_66CFA1: LitI2_Byte 0
  loc_66CFA3: FLdPrThis
  loc_66CFA4: VCallAd Control_ID_cboDia
  loc_66CFA7: FStAdFunc var_8C
  loc_66CFAA: FLdPr var_8C
  loc_66CFAD: Me.ListIndex = from_stack_1
  loc_66CFB2: FFree1Ad var_8C
  loc_66CFB5: Branch loc_66D0D2
  loc_66CFB8: FLdI2 var_88
  loc_66CFBB: LitI2_Byte 3
  loc_66CFBD: EqI2
  loc_66CFBE: BranchT loc_66CFCA
  loc_66CFC1: FLdI2 var_88
  loc_66CFC4: LitI2_Byte 4
  loc_66CFC6: EqI2
  loc_66CFC7: BranchF loc_66D0D2
  loc_66CFCA: LitI4 0
  loc_66CFCF: CI2I4
  loc_66CFD0: FLdPrThis
  loc_66CFD1: VCallAd Control_ID_chkDia
  loc_66CFD4: FStAdFunc var_8C
  loc_66CFD7: FLdPr var_8C
  loc_66CFDA: Me.Value = from_stack_1
  loc_66CFDF: FFree1Ad var_8C
  loc_66CFE2: LitI2_Byte &HFF
  loc_66CFE4: FLdPrThis
  loc_66CFE5: VCallAd Control_ID_cboMes
  loc_66CFE8: FStAdFunc var_8C
  loc_66CFEB: FLdPr var_8C
  loc_66CFEE: Me.Enabled = from_stack_1b
  loc_66CFF3: FFree1Ad var_8C
  loc_66CFF6: LitI2_Byte &HFF
  loc_66CFF8: FLdPrThis
  loc_66CFF9: VCallAd Control_ID_lblMes
  loc_66CFFC: FStAdFunc var_8C
  loc_66CFFF: FLdPr var_8C
  loc_66D002: Me.Enabled = from_stack_1b
  loc_66D007: FFree1Ad var_8C
  loc_66D00A: LitI2_Byte &HFF
  loc_66D00C: FLdPrThis
  loc_66D00D: VCallAd Control_ID_lblDia
  loc_66D010: FStAdFunc var_8C
  loc_66D013: FLdPr var_8C
  loc_66D016: Me.Enabled = from_stack_1b
  loc_66D01B: FFree1Ad var_8C
  loc_66D01E: LitI2_Byte &HFF
  loc_66D020: FLdPrThis
  loc_66D021: VCallAd Control_ID_cboDia
  loc_66D024: FStAdFunc var_8C
  loc_66D027: FLdPr var_8C
  loc_66D02A: Me.Enabled = from_stack_1b
  loc_66D02F: FFree1Ad var_8C
  loc_66D032: LitI2_Byte 0
  loc_66D034: FLdPrThis
  loc_66D035: VCallAd Control_ID_chkDia
  loc_66D038: FStAdFunc var_8C
  loc_66D03B: FLdPr var_8C
  loc_66D03E: Me.Enabled = from_stack_1b
  loc_66D043: FFree1Ad var_8C
  loc_66D046: LitI2_Byte 0
  loc_66D048: FLdPrThis
  loc_66D049: VCallAd Control_ID_cboDiaSemana
  loc_66D04C: FStAdFunc var_8C
  loc_66D04F: FLdPr var_8C
  loc_66D052: Me.Enabled = from_stack_1b
  loc_66D057: FFree1Ad var_8C
  loc_66D05A: LitI2_Byte 0
  loc_66D05C: FLdPrThis
  loc_66D05D: VCallAd Control_ID_lblDiaSemana
  loc_66D060: FStAdFunc var_8C
  loc_66D063: FLdPr var_8C
  loc_66D066: Me.Enabled = from_stack_1b
  loc_66D06B: FFree1Ad var_8C
  loc_66D06E: FLdRfVar var_8E
  loc_66D071: FLdPrThis
  loc_66D072: VCallAd Control_ID_cboMes
  loc_66D075: FStAdFunc var_8C
  loc_66D078: FLdPr var_8C
  loc_66D07B:  = Me.ListIndex
  loc_66D080: FLdI2 var_8E
  loc_66D083: LitI2_Byte &HFF
  loc_66D085: EqI2
  loc_66D086: FFree1Ad var_8C
  loc_66D089: BranchF loc_66D0A0
  loc_66D08C: LitI2_Byte 0
  loc_66D08E: FLdPrThis
  loc_66D08F: VCallAd Control_ID_cboMes
  loc_66D092: FStAdFunc var_8C
  loc_66D095: FLdPr var_8C
  loc_66D098: Me.ListIndex = from_stack_1
  loc_66D09D: FFree1Ad var_8C
  loc_66D0A0: FLdRfVar var_8E
  loc_66D0A3: FLdPrThis
  loc_66D0A4: VCallAd Control_ID_cboDia
  loc_66D0A7: FStAdFunc var_8C
  loc_66D0AA: FLdPr var_8C
  loc_66D0AD:  = Me.ListIndex
  loc_66D0B2: FLdI2 var_8E
  loc_66D0B5: LitI2_Byte &HFF
  loc_66D0B7: EqI2
  loc_66D0B8: FFree1Ad var_8C
  loc_66D0BB: BranchF loc_66D0D2
  loc_66D0BE: LitI2_Byte 0
  loc_66D0C0: FLdPrThis
  loc_66D0C1: VCallAd Control_ID_cboDia
  loc_66D0C4: FStAdFunc var_8C
  loc_66D0C7: FLdPr var_8C
  loc_66D0CA: Me.ListIndex = from_stack_1
  loc_66D0CF: FFree1Ad var_8C
  loc_66D0D2: ExitProcHresult
End Sub

Private Sub cboMes_Click() '612CAC
  'Data Table: 447224
  loc_612B90: FLdPrThis
  loc_612B91: VCallAd Control_ID_cboDia
  loc_612B94: FStAdFunc var_8C
  loc_612B97: FLdPr var_8C
  loc_612B9A: Me.Clear
  loc_612B9F: FFree1Ad var_8C
  loc_612BA2: FLdRfVar var_8E
  loc_612BA5: FLdPrThis
  loc_612BA6: VCallAd Control_ID_cboMes
  loc_612BA9: FStAdFunc var_8C
  loc_612BAC: FLdPr var_8C
  loc_612BAF:  = Me.ListIndex
  loc_612BB4: FLdI2 var_8E
  loc_612BB7: LitI2_Byte 1
  loc_612BB9: AddI2
  loc_612BBA: FStI2 var_90
  loc_612BBD: FFree1Ad var_8C
  loc_612BC0: FLdI2 var_90
  loc_612BC3: LitI2_Byte 2
  loc_612BC5: EqI2
  loc_612BC6: BranchF loc_612C02
  loc_612BC9: LitI2_Byte 1
  loc_612BCB: FLdRfVar var_86
  loc_612BCE: LitI2_Byte &H1C
  loc_612BD0: ForI2 var_94
  loc_612BD6: LitVar_Missing var_A8
  loc_612BD9: PopAdLdVar
  loc_612BDA: FLdI2 var_86
  loc_612BDD: CStrUI1
  loc_612BDF: FStStrNoPop var_98
  loc_612BE2: FLdPrThis
  loc_612BE3: VCallAd Control_ID_cboDia
  loc_612BE6: FStAdFunc var_8C
  loc_612BE9: FLdPr var_8C
  loc_612BEC: Me.AddItem from_stack_1, from_stack_2
  loc_612BF1: FFree1Str var_98
  loc_612BF4: FFree1Ad var_8C
  loc_612BF7: FLdRfVar var_86
  loc_612BFA: NextI2 var_94, loc_612BD6
  loc_612BFF: Branch loc_612C95
  loc_612C02: FLdI2 var_90
  loc_612C05: LitI2_Byte 4
  loc_612C07: EqI2
  loc_612C08: BranchT loc_612C26
  loc_612C0B: FLdI2 var_90
  loc_612C0E: LitI2_Byte 6
  loc_612C10: EqI2
  loc_612C11: BranchT loc_612C26
  loc_612C14: FLdI2 var_90
  loc_612C17: LitI2_Byte 9
  loc_612C19: EqI2
  loc_612C1A: BranchT loc_612C26
  loc_612C1D: FLdI2 var_90
  loc_612C20: LitI2_Byte &HB
  loc_612C22: EqI2
  loc_612C23: BranchF loc_612C5F
  loc_612C26: LitI2_Byte 1
  loc_612C28: FLdRfVar var_86
  loc_612C2B: LitI2_Byte &H1E
  loc_612C2D: ForI2 var_AC
  loc_612C33: LitVar_Missing var_A8
  loc_612C36: PopAdLdVar
  loc_612C37: FLdI2 var_86
  loc_612C3A: CStrUI1
  loc_612C3C: FStStrNoPop var_98
  loc_612C3F: FLdPrThis
  loc_612C40: VCallAd Control_ID_cboDia
  loc_612C43: FStAdFunc var_8C
  loc_612C46: FLdPr var_8C
  loc_612C49: Me.AddItem from_stack_1, from_stack_2
  loc_612C4E: FFree1Str var_98
  loc_612C51: FFree1Ad var_8C
  loc_612C54: FLdRfVar var_86
  loc_612C57: NextI2 var_AC, loc_612C33
  loc_612C5C: Branch loc_612C95
  loc_612C5F: LitI2_Byte 1
  loc_612C61: FLdRfVar var_86
  loc_612C64: LitI2_Byte &H1F
  loc_612C66: ForI2 var_B0
  loc_612C6C: LitVar_Missing var_A8
  loc_612C6F: PopAdLdVar
  loc_612C70: FLdI2 var_86
  loc_612C73: CStrUI1
  loc_612C75: FStStrNoPop var_98
  loc_612C78: FLdPrThis
  loc_612C79: VCallAd Control_ID_cboDia
  loc_612C7C: FStAdFunc var_8C
  loc_612C7F: FLdPr var_8C
  loc_612C82: Me.AddItem from_stack_1, from_stack_2
  loc_612C87: FFree1Str var_98
  loc_612C8A: FFree1Ad var_8C
  loc_612C8D: FLdRfVar var_86
  loc_612C90: NextI2 var_B0, loc_612C6C
  loc_612C95: LitI2_Byte 0
  loc_612C97: FLdPrThis
  loc_612C98: VCallAd Control_ID_cboDia
  loc_612C9B: FStAdFunc var_8C
  loc_612C9E: FLdPr var_8C
  loc_612CA1: Me.ListIndex = from_stack_1
  loc_612CA6: FFree1Ad var_8C
  loc_612CA9: ExitProcHresult
End Sub

Private Sub cboSurtidor_Click(arg_C) '608848
  'Data Table: 447224
  loc_608764: FLdPr Me
  loc_608767: MemLdI2 global_76
  loc_60876A: BranchF loc_608817
  loc_60876F: FLdRfVar var_8E
  loc_608772: FLdRfVar var_8C
  loc_608775: ILdI2 arg_C
  loc_608778: FLdPrThis
  loc_608779: VCallAd Control_ID_cboSurtidor
  loc_60877C: FStAdFunc var_88
  loc_60877F: FLdPr var_88
  loc_608782: Set from_stack_2 = Me(from_stack_1)
  loc_608787: FLdPr var_8C
  loc_60878A:  = Me.Enabled
  loc_60878F: FLdI2 var_8E
  loc_608792: ILdI2 arg_C
  loc_608795: LitI2_Byte 1
  loc_608797: AddI2
  loc_608798: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_60879D: AndI4
  loc_60879E: FFreeAd var_88 = ""
  loc_6087A5: BranchF loc_608815
  loc_6087AA: ILdI2 arg_C
  loc_6087AD: LitI2_Byte 1
  loc_6087AF: AddI2
  loc_6087B0: CI4UI1
  loc_6087B1: ImpAdLdRf MemVar_74C1F4
  loc_6087B4: Ary1LdUI1
  loc_6087B6: CI2UI1
  loc_6087B8: LitI2_Byte 1
  loc_6087BA: GtI2
  loc_6087BB: BranchF loc_608813
  loc_6087C0: OnErrorGoto loc_608819
  loc_6087C5: FLdRfVar var_8E
  loc_6087C8: FLdRfVar var_8C
  loc_6087CB: ILdI2 arg_C
  loc_6087CE: FLdPrThis
  loc_6087CF: VCallAd Control_ID_cboSurtidor
  loc_6087D2: FStAdFunc var_88
  loc_6087D5: FLdPr var_88
  loc_6087D8: Set from_stack_2 = Me(from_stack_1)
  loc_6087DD: FLdPr var_8C
  loc_6087E0:  = Me.ListIndex
  loc_6087E5: FLdI2 var_8E
  loc_6087E8: FLdRfVar var_98
  loc_6087EB: ILdI2 arg_C
  loc_6087EE: LitI2_Byte 1
  loc_6087F0: AddI2
  loc_6087F1: FLdPrThis
  loc_6087F2: VCallAd Control_ID_cboSurtidor
  loc_6087F5: FStAdFunc var_94
  loc_6087F8: FLdPr var_94
  loc_6087FB: Set from_stack_2 = Me(from_stack_1)
  loc_608800: FLdPr var_98
  loc_608803: Me.ListIndex = from_stack_1
  loc_608808: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_60881B: FLdRfVar var_9C
  loc_60881E: ImpAdCallI2 Err 'rtcErrObj
  loc_608823: FStAdFunc var_88
  loc_608826: FLdPr var_88
  loc_608829:  = Err.Number
  loc_60882E: ILdRf var_9C
  loc_608831: LitI4 &H17C
  loc_608836: EqI4
  loc_608837: FFree1Ad var_88
  loc_60883A: BranchF loc_608843
  loc_60883F: Resume
  loc_608847: ExitProcHresult
End Sub

Private Sub metxtHora_UnknownEvent_0 '5D8ED8
  'Data Table: 447224
  loc_5D8EB0: FLdPrThis
  loc_5D8EB1: VCallAd Control_ID_metxtHora
  loc_5D8EB4: FStAdFunc var_88
  loc_5D8EB7: FLdPr var_88
  loc_5D8EBA: LateIdLdVar var_98 DispID_22 0
  loc_5D8EC1: CStrVarTmp
  loc_5D8EC2: FStStrNoPop var_9C
  loc_5D8EC5: FLdPr Me
  loc_5D8EC8: MemStStrCopy
  loc_5D8ECC: FFree1Str var_9C
  loc_5D8ECF: FFree1Ad var_88
  loc_5D8ED2: FFree1Var var_98 = ""
  loc_5D8ED5: ExitProcHresult
End Sub

Private Sub metxtHora_UnknownEvent_1 '5CA580
  'Data Table: 447224
  loc_5CA574: FLdRfVar var_86
  loc_5CA577: from_stack_1v = Proc_18_33_621118()
  loc_5CA57C: ExitProcHresult
  loc_5CA57D: ImpAdLdRf MemVar_403E54
End Sub

Private Sub chkAlarma_Click(Index As Integer) '611268
  'Data Table: 447224
  loc_611164: ILdI2 Index
  loc_611167: LitI2_Byte 0
  loc_611169: EqI2
  loc_61116A: BranchF loc_611265
  loc_61116D: FLdRfVar var_8E
  loc_611170: FLdRfVar var_8C
  loc_611173: LitI2_Byte 0
  loc_611175: FLdPrThis
  loc_611176: VCallAd Control_ID_chkAlarma
  loc_611179: FStAdFunc var_88
  loc_61117C: FLdPr var_88
  loc_61117F: Set from_stack_2 = Me(from_stack_1)
  loc_611184: FLdPr var_8C
  loc_611187:  = Me.Value
  loc_61118C: FLdI2 var_8E
  loc_61118F: CI4UI1
  loc_611190: LitI4 1
  loc_611195: EqI4
  loc_611196: FFreeAd var_88 = ""
  loc_61119D: BranchF loc_61123A
  loc_6111A0: LitVar_TRUE var_A0
  loc_6111A3: PopAdLdVar
  loc_6111A4: FLdPrThis
  loc_6111A5: VCallAd Control_ID_metxtMinutosAlarma
  loc_6111A8: FStAdFunc var_88
  loc_6111AB: FLdPr var_88
  loc_6111AE: LateIdSt
  loc_6111B3: FFree1Ad var_88
  loc_6111B6: LitI2_Byte &HFF
  loc_6111B8: FLdPrThis
  loc_6111B9: VCallAd Control_ID_lblMinutosAlarma
  loc_6111BC: FStAdFunc var_88
  loc_6111BF: FLdPr var_88
  loc_6111C2: Me.Enabled = from_stack_1b
  loc_6111C7: FFree1Ad var_88
  loc_6111CA: FLdPrThis
  loc_6111CB: VCallAd Control_ID_metxtMinutosAlarma
  loc_6111CE: FStAdFunc var_88
  loc_6111D1: FLdPr var_88
  loc_6111D4: LateIdLdVar var_B0 DispID_22 0
  loc_6111DB: PopAd
  loc_6111DD: LitI2_Byte 1
  loc_6111DF: CR8I2
  loc_6111E0: FLdRfVar var_B0
  loc_6111E3: CStrVarTmp
  loc_6111E4: FStStrNoPop var_B4
  loc_6111E7: CR8Str
  loc_6111E9: LeR8
  loc_6111EA: FLdPrThis
  loc_6111EB: VCallAd Control_ID_metxtMinutosAlarma
  loc_6111EE: FStAdFunc var_8C
  loc_6111F1: FLdPr var_8C
  loc_6111F4: LateIdLdVar var_C4 DispID_22 0
  loc_6111FB: CStrVarTmp
  loc_6111FC: FStStrNoPop var_C8
  loc_6111FF: CR8Str
  loc_611201: LitI2_Byte &H63
  loc_611203: CR8I2
  loc_611204: LeR8
  loc_611205: AndI4
  loc_611206: NotI4
  loc_611207: FFreeStr var_B4 = ""
  loc_61120E: FFreeAd var_88 = ""
  loc_611215: FFreeVar var_B0 = ""
  loc_61121C: BranchF loc_611237
  loc_61121F: LitVarStr var_A0, "01"
  loc_611224: PopAdLdVar
  loc_611225: FLdPrThis
  loc_611226: VCallAd Control_ID_metxtMinutosAlarma
  loc_611229: FStAdFunc var_88
  loc_61122C: FLdPr var_88
  loc_61122F: LateIdSt
  loc_611234: FFree1Ad var_88
  loc_611237: Branch loc_611265
  loc_61123A: LitVar_FALSE
  loc_61123E: PopAdLdVar
  loc_61123F: FLdPrThis
  loc_611240: VCallAd Control_ID_metxtMinutosAlarma
  loc_611243: FStAdFunc var_88
  loc_611246: FLdPr var_88
  loc_611249: LateIdSt
  loc_61124E: FFree1Ad var_88
  loc_611251: LitI2_Byte 0
  loc_611253: FLdPrThis
  loc_611254: VCallAd Control_ID_lblMinutosAlarma
  loc_611257: FStAdFunc var_88
  loc_61125A: FLdPr var_88
  loc_61125D: Me.Enabled = from_stack_1b
  loc_611262: FFree1Ad var_88
  loc_611265: ExitProcHresult
  loc_611266: MemStI2 global_-21496
End Sub

Private Sub metxtMinutosAlarma_UnknownEvent_0 '5D89C4
  'Data Table: 447224
  loc_5D899C: FLdPrThis
  loc_5D899D: VCallAd Control_ID_metxtMinutosAlarma
  loc_5D89A0: FStAdFunc var_88
  loc_5D89A3: FLdPr var_88
  loc_5D89A6: LateIdLdVar var_98 DispID_22 0
  loc_5D89AD: CStrVarTmp
  loc_5D89AE: FStStrNoPop var_9C
  loc_5D89B1: FLdPr Me
  loc_5D89B4: MemStStrCopy
  loc_5D89B8: FFree1Str var_9C
  loc_5D89BB: FFree1Ad var_88
  loc_5D89BE: FFree1Var var_98 = ""
  loc_5D89C1: ExitProcHresult
  loc_5D89C2: ExitProcCy
End Sub

Private Sub metxtMinutosAlarma_UnknownEvent_1 '5DBB30
  'Data Table: 447224
  loc_5DBAF4: FLdRfVar var_8E
  loc_5DBAF7: FLdRfVar var_8C
  loc_5DBAFA: LitI2_Byte 0
  loc_5DBAFC: FLdPrThis
  loc_5DBAFD: VCallAd Control_ID_chkAlarma
  loc_5DBB00: FStAdFunc var_88
  loc_5DBB03: FLdPr var_88
  loc_5DBB06: Set from_stack_2 = Me(from_stack_1)
  loc_5DBB0B: FLdPr var_8C
  loc_5DBB0E:  = Me.Value
  loc_5DBB13: FLdI2 var_8E
  loc_5DBB16: CI4UI1
  loc_5DBB17: LitI4 1
  loc_5DBB1C: EqI4
  loc_5DBB1D: FFreeAd var_88 = ""
  loc_5DBB24: BranchF loc_5DBB2F
  loc_5DBB27: FLdRfVar var_8E
  loc_5DBB2A: from_stack_1v = Proc_18_34_61AD70()
  loc_5DBB2F: ExitProcHresult
End Sub

Private Sub chkDia_Click() '5E61FC
  'Data Table: 447224
  loc_5E6184: FLdRfVar var_8A
  loc_5E6187: FLdPrThis
  loc_5E6188: VCallAd Control_ID_chkDia
  loc_5E618B: FStAdFunc var_88
  loc_5E618E: FLdPr var_88
  loc_5E6191:  = Me.Value
  loc_5E6196: FLdI2 var_8A
  loc_5E6199: CI4UI1
  loc_5E619A: LitI4 1
  loc_5E619F: EqI4
  loc_5E61A0: FFree1Ad var_88
  loc_5E61A3: BranchF loc_5E61D1
  loc_5E61A6: LitI2_Byte 0
  loc_5E61A8: FLdPrThis
  loc_5E61A9: VCallAd Control_ID_lblDia
  loc_5E61AC: FStAdFunc var_88
  loc_5E61AF: FLdPr var_88
  loc_5E61B2: Me.Enabled = from_stack_1b
  loc_5E61B7: FFree1Ad var_88
  loc_5E61BA: LitI2_Byte 0
  loc_5E61BC: FLdPrThis
  loc_5E61BD: VCallAd Control_ID_cboDia
  loc_5E61C0: FStAdFunc var_88
  loc_5E61C3: FLdPr var_88
  loc_5E61C6: Me.Enabled = from_stack_1b
  loc_5E61CB: FFree1Ad var_88
  loc_5E61CE: Branch loc_5E61F9
  loc_5E61D1: LitI2_Byte &HFF
  loc_5E61D3: FLdPrThis
  loc_5E61D4: VCallAd Control_ID_lblDia
  loc_5E61D7: FStAdFunc var_88
  loc_5E61DA: FLdPr var_88
  loc_5E61DD: Me.Enabled = from_stack_1b
  loc_5E61E2: FFree1Ad var_88
  loc_5E61E5: LitI2_Byte &HFF
  loc_5E61E7: FLdPrThis
  loc_5E61E8: VCallAd Control_ID_cboDia
  loc_5E61EB: FStAdFunc var_88
  loc_5E61EE: FLdPr var_88
  loc_5E61F1: Me.Enabled = from_stack_1b
  loc_5E61F6: FFree1Ad var_88
  loc_5E61F9: ExitProcHresult
End Sub

Public Function msEventoGet() '44810C
  msEventoGet = msEvento
End Function

Public Sub msEventoPut(Value) '44811B
  msEvento = Value
End Sub

Public Function strRightTimeGet() '44812A
  strRightTimeGet = strRightTime
End Function

Public Sub strRightTimePut(Value) '448139
  strRightTime = Value
End Sub

Public Function strRightMinuteGet() '448148
  strRightMinuteGet = strRightMinute
End Function

Public Sub strRightMinutePut(Value) '448157
  strRightMinute = Value
End Sub

Public Function strRightMinute2Get() '448166
  strRightMinute2Get = strRightMinute2
End Function

Public Sub strRightMinute2Put(Value) '448175
  strRightMinute2 = Value
End Sub

Private Function Proc_18_22_60DE54(arg_C) '60DE54
  'Data Table: 447224
  loc_60DD54: ILdRf arg_C
  loc_60DD57: FStStrCopy var_8C
  loc_60DD5A: ZeroRetVal
  loc_60DD5C: ILdRf var_8C
  loc_60DD5F: CI2Str
  loc_60DD61: FStI2 var_8E
  loc_60DD64: FLdI2 var_8E
  loc_60DD67: LitI2_Byte &HA
  loc_60DD69: EqI2
  loc_60DD6A: BranchF loc_60DD95
  loc_60DD6D: LitI2_Byte &HFF
  loc_60DD6F: FLdRfVar var_98
  loc_60DD72: LitI2_Byte 0
  loc_60DD74: FLdPrThis
  loc_60DD75: VCallAd Control_ID_optTipoEvento
  loc_60DD78: FStAdFunc var_94
  loc_60DD7B: FLdPr var_94
  loc_60DD7E: Set from_stack_2 = Me(from_stack_1)
  loc_60DD83: FLdPr var_98
  loc_60DD86: Me.Value = from_stack_1b
  loc_60DD8B: FFreeAd var_94 = ""
  loc_60DD92: Branch loc_60DE4D
  loc_60DD95: FLdI2 var_8E
  loc_60DD98: LitI2_Byte &HB
  loc_60DD9A: EqI2
  loc_60DD9B: BranchF loc_60DDC6
  loc_60DD9E: LitI2_Byte &HFF
  loc_60DDA0: FLdRfVar var_98
  loc_60DDA3: LitI2_Byte 1
  loc_60DDA5: FLdPrThis
  loc_60DDA6: VCallAd Control_ID_optTipoEvento
  loc_60DDA9: FStAdFunc var_94
  loc_60DDAC: FLdPr var_94
  loc_60DDAF: Set from_stack_2 = Me(from_stack_1)
  loc_60DDB4: FLdPr var_98
  loc_60DDB7: Me.Value = from_stack_1b
  loc_60DDBC: FFreeAd var_94 = ""
  loc_60DDC3: Branch loc_60DE4D
  loc_60DDC6: FLdI2 var_8E
  loc_60DDC9: LitI2_Byte &HC
  loc_60DDCB: EqI2
  loc_60DDCC: BranchF loc_60DDF7
  loc_60DDCF: LitI2_Byte &HFF
  loc_60DDD1: FLdRfVar var_98
  loc_60DDD4: LitI2_Byte 2
  loc_60DDD6: FLdPrThis
  loc_60DDD7: VCallAd Control_ID_optTipoEvento
  loc_60DDDA: FStAdFunc var_94
  loc_60DDDD: FLdPr var_94
  loc_60DDE0: Set from_stack_2 = Me(from_stack_1)
  loc_60DDE5: FLdPr var_98
  loc_60DDE8: Me.Value = from_stack_1b
  loc_60DDED: FFreeAd var_94 = ""
  loc_60DDF4: Branch loc_60DE4D
  loc_60DDF7: FLdI2 var_8E
  loc_60DDFA: LitI2_Byte &H14
  loc_60DDFC: EqI2
  loc_60DDFD: BranchF loc_60DE28
  loc_60DE00: LitI2_Byte &HFF
  loc_60DE02: FLdRfVar var_98
  loc_60DE05: LitI2_Byte 3
  loc_60DE07: FLdPrThis
  loc_60DE08: VCallAd Control_ID_optTipoEvento
  loc_60DE0B: FStAdFunc var_94
  loc_60DE0E: FLdPr var_94
  loc_60DE11: Set from_stack_2 = Me(from_stack_1)
  loc_60DE16: FLdPr var_98
  loc_60DE19: Me.Value = from_stack_1b
  loc_60DE1E: FFreeAd var_94 = ""
  loc_60DE25: Branch loc_60DE4D
  loc_60DE28: LitI2_Byte &HFF
  loc_60DE2A: FLdRfVar var_98
  loc_60DE2D: LitI2_Byte 0
  loc_60DE2F: FLdPrThis
  loc_60DE30: VCallAd Control_ID_optTipoEvento
  loc_60DE33: FStAdFunc var_94
  loc_60DE36: FLdPr var_94
  loc_60DE39: Set from_stack_2 = Me(from_stack_1)
  loc_60DE3E: FLdPr var_98
  loc_60DE41: Me.Value = from_stack_1b
  loc_60DE46: FFreeAd var_94 = ""
  loc_60DE4D: ExitProcCbHresult
End Function

Private Function Proc_18_23_6191F8(arg_C) '6191F8
  'Data Table: 447224
  loc_6190C8: ILdRf arg_C
  loc_6190CB: FStStrCopy var_8C
  loc_6190CE: ZeroRetVal
  loc_6190D0: ILdRf var_8C
  loc_6190D3: CI2Str
  loc_6190D5: FStI2 var_8E
  loc_6190D8: FLdI2 var_8E
  loc_6190DB: LitI2_Byte 0
  loc_6190DD: EqI2
  loc_6190DE: BranchF loc_619109
  loc_6190E1: LitI2_Byte &HFF
  loc_6190E3: FLdRfVar var_98
  loc_6190E6: LitI2_Byte 0
  loc_6190E8: FLdPrThis
  loc_6190E9: VCallAd Control_ID_optTemporizacion
  loc_6190EC: FStAdFunc var_94
  loc_6190EF: FLdPr var_94
  loc_6190F2: Set from_stack_2 = Me(from_stack_1)
  loc_6190F7: FLdPr var_98
  loc_6190FA: Me.Value = from_stack_1b
  loc_6190FF: FFreeAd var_94 = ""
  loc_619106: Branch loc_6191F2
  loc_619109: FLdI2 var_8E
  loc_61910C: LitI2_Byte 1
  loc_61910E: EqI2
  loc_61910F: BranchF loc_61913A
  loc_619112: LitI2_Byte &HFF
  loc_619114: FLdRfVar var_98
  loc_619117: LitI2_Byte 1
  loc_619119: FLdPrThis
  loc_61911A: VCallAd Control_ID_optTemporizacion
  loc_61911D: FStAdFunc var_94
  loc_619120: FLdPr var_94
  loc_619123: Set from_stack_2 = Me(from_stack_1)
  loc_619128: FLdPr var_98
  loc_61912B: Me.Value = from_stack_1b
  loc_619130: FFreeAd var_94 = ""
  loc_619137: Branch loc_6191F2
  loc_61913A: FLdI2 var_8E
  loc_61913D: LitI2_Byte 2
  loc_61913F: EqI2
  loc_619140: BranchF loc_61916B
  loc_619143: LitI2_Byte &HFF
  loc_619145: FLdRfVar var_98
  loc_619148: LitI2_Byte 2
  loc_61914A: FLdPrThis
  loc_61914B: VCallAd Control_ID_optTemporizacion
  loc_61914E: FStAdFunc var_94
  loc_619151: FLdPr var_94
  loc_619154: Set from_stack_2 = Me(from_stack_1)
  loc_619159: FLdPr var_98
  loc_61915C: Me.Value = from_stack_1b
  loc_619161: FFreeAd var_94 = ""
  loc_619168: Branch loc_6191F2
  loc_61916B: FLdI2 var_8E
  loc_61916E: LitI2_Byte 3
  loc_619170: EqI2
  loc_619171: BranchF loc_61919C
  loc_619174: LitI2_Byte &HFF
  loc_619176: FLdRfVar var_98
  loc_619179: LitI2_Byte 3
  loc_61917B: FLdPrThis
  loc_61917C: VCallAd Control_ID_optTemporizacion
  loc_61917F: FStAdFunc var_94
  loc_619182: FLdPr var_94
  loc_619185: Set from_stack_2 = Me(from_stack_1)
  loc_61918A: FLdPr var_98
  loc_61918D: Me.Value = from_stack_1b
  loc_619192: FFreeAd var_94 = ""
  loc_619199: Branch loc_6191F2
  loc_61919C: FLdI2 var_8E
  loc_61919F: LitI2_Byte 4
  loc_6191A1: EqI2
  loc_6191A2: BranchF loc_6191CD
  loc_6191A5: LitI2_Byte &HFF
  loc_6191A7: FLdRfVar var_98
  loc_6191AA: LitI2_Byte 4
  loc_6191AC: FLdPrThis
  loc_6191AD: VCallAd Control_ID_optTemporizacion
  loc_6191B0: FStAdFunc var_94
  loc_6191B3: FLdPr var_94
  loc_6191B6: Set from_stack_2 = Me(from_stack_1)
  loc_6191BB: FLdPr var_98
  loc_6191BE: Me.Value = from_stack_1b
  loc_6191C3: FFreeAd var_94 = ""
  loc_6191CA: Branch loc_6191F2
  loc_6191CD: LitI2_Byte &HFF
  loc_6191CF: FLdRfVar var_98
  loc_6191D2: LitI2_Byte 0
  loc_6191D4: FLdPrThis
  loc_6191D5: VCallAd Control_ID_optTemporizacion
  loc_6191D8: FStAdFunc var_94
  loc_6191DB: FLdPr var_94
  loc_6191DE: Set from_stack_2 = Me(from_stack_1)
  loc_6191E3: FLdPr var_98
  loc_6191E6: Me.Value = from_stack_1b
  loc_6191EB: FFreeAd var_94 = ""
  loc_6191F2: ExitProcCbHresult
End Function

Private Function Proc_18_24_5E0D58(arg_C) '5E0D58
  'Data Table: 447224
  loc_5E0D04: ILdRf arg_C
  loc_5E0D07: FStStrCopy var_8C
  loc_5E0D0A: ZeroRetVal
  loc_5E0D0C: LitI2_Byte 1
  loc_5E0D0E: ILdRf var_8C
  loc_5E0D11: CI2Str
  loc_5E0D13: LeI2
  loc_5E0D14: ILdRf var_8C
  loc_5E0D17: CI2Str
  loc_5E0D19: LitI2_Byte &HC
  loc_5E0D1B: LeI2
  loc_5E0D1C: AndI4
  loc_5E0D1D: BranchF loc_5E0D3D
  loc_5E0D20: ILdRf var_8C
  loc_5E0D23: CI2Str
  loc_5E0D25: LitI2_Byte 1
  loc_5E0D27: SubI2
  loc_5E0D28: FLdPrThis
  loc_5E0D29: VCallAd Control_ID_cboMes
  loc_5E0D2C: FStAdFunc var_90
  loc_5E0D2F: FLdPr var_90
  loc_5E0D32: Me.ListIndex = from_stack_1
  loc_5E0D37: FFree1Ad var_90
  loc_5E0D3A: Branch loc_5E0D51
  loc_5E0D3D: LitI2_Byte 0
  loc_5E0D3F: FLdPrThis
  loc_5E0D40: VCallAd Control_ID_cboMes
  loc_5E0D43: FStAdFunc var_90
  loc_5E0D46: FLdPr var_90
  loc_5E0D49: Me.ListIndex = from_stack_1
  loc_5E0D4E: FFree1Ad var_90
  loc_5E0D51: ExitProcCbHresult
End Function

Private Function Proc_18_25_626360(arg_C) '626360
  'Data Table: 447224
  loc_6261E0: ILdRf arg_C
  loc_6261E3: FStStrCopy var_8C
  loc_6261E6: ZeroRetVal
  loc_6261E8: ILdRf var_8C
  loc_6261EB: CI2Str
  loc_6261ED: LitI2_Byte &H20
  loc_6261EF: EqI2
  loc_6261F0: BranchF loc_626222
  loc_6261F3: LitI2_Byte 0
  loc_6261F5: FLdPrThis
  loc_6261F6: VCallAd Control_ID_cboDia
  loc_6261F9: FStAdFunc var_90
  loc_6261FC: FLdPr var_90
  loc_6261FF: Me.ListIndex = from_stack_1
  loc_626204: FFree1Ad var_90
  loc_626207: LitI4 1
  loc_62620C: CI2I4
  loc_62620D: FLdPrThis
  loc_62620E: VCallAd Control_ID_chkDia
  loc_626211: FStAdFunc var_90
  loc_626214: FLdPr var_90
  loc_626217: Me.Value = from_stack_1
  loc_62621C: FFree1Ad var_90
  loc_62621F: Branch loc_626357
  loc_626222: LitI4 0
  loc_626227: CI2I4
  loc_626228: FLdPrThis
  loc_626229: VCallAd Control_ID_chkDia
  loc_62622C: FStAdFunc var_90
  loc_62622F: FLdPr var_90
  loc_626232: Me.Value = from_stack_1
  loc_626237: FFree1Ad var_90
  loc_62623A: FLdRfVar var_92
  loc_62623D: FLdPrThis
  loc_62623E: VCallAd Control_ID_cboMes
  loc_626241: FStAdFunc var_90
  loc_626244: FLdPr var_90
  loc_626247:  = Me.ListIndex
  loc_62624C: FLdI2 var_92
  loc_62624F: FStI2 var_94
  loc_626252: FFree1Ad var_90
  loc_626255: FLdI2 var_94
  loc_626258: LitI2_Byte 2
  loc_62625A: EqI2
  loc_62625B: BranchF loc_6262A6
  loc_62625E: LitI2_Byte 1
  loc_626260: ILdRf var_8C
  loc_626263: CI2Str
  loc_626265: LeI2
  loc_626266: ILdRf var_8C
  loc_626269: CI2Str
  loc_62626B: LitI2_Byte &H1C
  loc_62626D: LeI2
  loc_62626E: AndI4
  loc_62626F: BranchF loc_62628F
  loc_626272: ILdRf var_8C
  loc_626275: CI2Str
  loc_626277: LitI2_Byte 1
  loc_626279: SubI2
  loc_62627A: FLdPrThis
  loc_62627B: VCallAd Control_ID_cboDia
  loc_62627E: FStAdFunc var_90
  loc_626281: FLdPr var_90
  loc_626284: Me.ListIndex = from_stack_1
  loc_626289: FFree1Ad var_90
  loc_62628C: Branch loc_6262A3
  loc_62628F: LitI2_Byte 0
  loc_626291: FLdPrThis
  loc_626292: VCallAd Control_ID_cboDia
  loc_626295: FStAdFunc var_90
  loc_626298: FLdPr var_90
  loc_62629B: Me.ListIndex = from_stack_1
  loc_6262A0: FFree1Ad var_90
  loc_6262A3: Branch loc_626357
  loc_6262A6: FLdI2 var_94
  loc_6262A9: LitI2_Byte 4
  loc_6262AB: EqI2
  loc_6262AC: BranchT loc_6262CA
  loc_6262AF: FLdI2 var_94
  loc_6262B2: LitI2_Byte 6
  loc_6262B4: EqI2
  loc_6262B5: BranchT loc_6262CA
  loc_6262B8: FLdI2 var_94
  loc_6262BB: LitI2_Byte 9
  loc_6262BD: EqI2
  loc_6262BE: BranchT loc_6262CA
  loc_6262C1: FLdI2 var_94
  loc_6262C4: LitI2_Byte &HB
  loc_6262C6: EqI2
  loc_6262C7: BranchF loc_626312
  loc_6262CA: LitI2_Byte 1
  loc_6262CC: ILdRf var_8C
  loc_6262CF: CI2Str
  loc_6262D1: LeI2
  loc_6262D2: ILdRf var_8C
  loc_6262D5: CI2Str
  loc_6262D7: LitI2_Byte &H1E
  loc_6262D9: LeI2
  loc_6262DA: AndI4
  loc_6262DB: BranchF loc_6262FB
  loc_6262DE: ILdRf var_8C
  loc_6262E1: CI2Str
  loc_6262E3: LitI2_Byte 1
  loc_6262E5: SubI2
  loc_6262E6: FLdPrThis
  loc_6262E7: VCallAd Control_ID_cboDia
  loc_6262EA: FStAdFunc var_90
  loc_6262ED: FLdPr var_90
  loc_6262F0: Me.ListIndex = from_stack_1
  loc_6262F5: FFree1Ad var_90
  loc_6262F8: Branch loc_62630F
  loc_6262FB: LitI2_Byte 0
  loc_6262FD: FLdPrThis
  loc_6262FE: VCallAd Control_ID_cboDia
  loc_626301: FStAdFunc var_90
  loc_626304: FLdPr var_90
  loc_626307: Me.ListIndex = from_stack_1
  loc_62630C: FFree1Ad var_90
  loc_62630F: Branch loc_626357
  loc_626312: LitI2_Byte 1
  loc_626314: ILdRf var_8C
  loc_626317: CI2Str
  loc_626319: LeI2
  loc_62631A: ILdRf var_8C
  loc_62631D: CI2Str
  loc_62631F: LitI2_Byte &H1F
  loc_626321: LeI2
  loc_626322: AndI4
  loc_626323: BranchF loc_626343
  loc_626326: ILdRf var_8C
  loc_626329: CI2Str
  loc_62632B: LitI2_Byte 1
  loc_62632D: SubI2
  loc_62632E: FLdPrThis
  loc_62632F: VCallAd Control_ID_cboDia
  loc_626332: FStAdFunc var_90
  loc_626335: FLdPr var_90
  loc_626338: Me.ListIndex = from_stack_1
  loc_62633D: FFree1Ad var_90
  loc_626340: Branch loc_626357
  loc_626343: LitI2_Byte 0
  loc_626345: FLdPrThis
  loc_626346: VCallAd Control_ID_cboDia
  loc_626349: FStAdFunc var_90
  loc_62634C: FLdPr var_90
  loc_62634F: Me.ListIndex = from_stack_1
  loc_626354: FFree1Ad var_90
  loc_626357: ExitProcCbHresult
End Function

Private Function Proc_18_26_5DF5CC(arg_C) '5DF5CC
  'Data Table: 447224
  loc_5DF580: ILdRf arg_C
  loc_5DF583: FStStrCopy var_8C
  loc_5DF586: ZeroRetVal
  loc_5DF588: ILdRf var_8C
  loc_5DF58B: CI2Str
  loc_5DF58D: LitI2_Byte 7
  loc_5DF58F: LeI2
  loc_5DF590: BranchF loc_5DF5B0
  loc_5DF593: ILdRf var_8C
  loc_5DF596: CI2Str
  loc_5DF598: LitI2_Byte 1
  loc_5DF59A: SubI2
  loc_5DF59B: FLdPrThis
  loc_5DF59C: VCallAd Control_ID_cboDiaSemana
  loc_5DF59F: FStAdFunc var_90
  loc_5DF5A2: FLdPr var_90
  loc_5DF5A5: Me.ListIndex = from_stack_1
  loc_5DF5AA: FFree1Ad var_90
  loc_5DF5AD: Branch loc_5DF5C4
  loc_5DF5B0: LitI2_Byte 0
  loc_5DF5B2: FLdPrThis
  loc_5DF5B3: VCallAd Control_ID_cboDiaSemana
  loc_5DF5B6: FStAdFunc var_90
  loc_5DF5B9: FLdPr var_90
  loc_5DF5BC: Me.ListIndex = from_stack_1
  loc_5DF5C1: FFree1Ad var_90
  loc_5DF5C4: ExitProcCbHresult
End Function

Private Function Proc_18_27_61D724(arg_C) '61D724
  'Data Table: 447224
  loc_61D61C: ILdRf arg_C
  loc_61D61F: FStStrCopy var_8C
  loc_61D622: ZeroRetVal
  loc_61D624: LitVarI2 var_AC, 2
  loc_61D629: LitI4 1
  loc_61D62E: ILdRf var_8C
  loc_61D631: ImpAdCallI2 Mid$(, , )
  loc_61D636: CVarStr var_BC
  loc_61D639: ImpAdCallI2 IsNumeric()
  loc_61D63E: FStI2 var_212
  loc_61D641: LitVarI2 var_DC, 2
  loc_61D646: LitI4 1
  loc_61D64B: ILdRf var_8C
  loc_61D64E: ImpAdCallI2 Mid$(, , )
  loc_61D653: FStStr var_218
  loc_61D656: LitVarI2 var_16C, 2
  loc_61D65B: LitI4 1
  loc_61D660: ILdRf var_8C
  loc_61D663: ImpAdCallI2 Mid$(, , )
  loc_61D668: CVarStr var_17C
  loc_61D66B: ImpAdCallI2 IsNumeric()
  loc_61D670: FStI2 var_21A
  loc_61D673: LitVarI2 var_19C, 2
  loc_61D678: LitI4 3
  loc_61D67D: ILdRf var_8C
  loc_61D680: ImpAdCallI2 Mid$(, , )
  loc_61D685: FStStr var_220
  loc_61D688: LitVarStr var_10C, "00"
  loc_61D68D: FStVarCopyObj var_11C
  loc_61D690: FLdRfVar var_11C
  loc_61D693: FLdZeroAd var_218
  loc_61D696: CVarStr var_FC
  loc_61D699: FLdI2 var_212
  loc_61D69C: CVarBoolI2 var_EC
  loc_61D6A0: FLdRfVar var_12C
  loc_61D6A3: ImpAdCallFPR4  = IIf(, , )
  loc_61D6A8: FLdRfVar var_12C
  loc_61D6AB: LitVarStr var_13C, ":"
  loc_61D6B0: ConcatVar var_14C
  loc_61D6B4: LitVarStr var_1CC, "00"
  loc_61D6B9: FStVarCopyObj var_1DC
  loc_61D6BC: FLdRfVar var_1DC
  loc_61D6BF: FLdZeroAd var_220
  loc_61D6C2: CVarStr var_1BC
  loc_61D6C5: FLdI2 var_21A
  loc_61D6C8: CVarBoolI2 var_1AC
  loc_61D6CC: FLdRfVar var_1EC
  loc_61D6CF: ImpAdCallFPR4  = IIf(, , )
  loc_61D6D4: FLdRfVar var_1EC
  loc_61D6D7: ConcatVar var_1FC
  loc_61D6DB: CStrVarTmp
  loc_61D6DC: CVarStr var_20C
  loc_61D6DF: PopAdLdVar
  loc_61D6E0: FLdPrThis
  loc_61D6E1: VCallAd Control_ID_metxtHora
  loc_61D6E4: FStAdFunc var_210
  loc_61D6E7: FLdPr var_210
  loc_61D6EA: LateIdSt
  loc_61D6EF: FFreeStr var_218 = ""
  loc_61D6F6: FFree1Ad var_210
  loc_61D6F9: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_14C = "": var_1EC = "": var_1FC = ""
  loc_61D71E: ExitProcCbHresult
End Function

Private Function Proc_18_28_69B1C8(arg_C) '69B1C8
  'Data Table: 447224
  loc_69AB48: ILdRf arg_C
  loc_69AB4B: FStStrCopy var_8C
  loc_69AB4E: ZeroRetVal
  loc_69AB50: LitI4 2
  loc_69AB55: ILdRf var_8C
  loc_69AB58: ImpAdCallI2 Right$(, )
  loc_69AB5D: FStStr var_98
  loc_69AB60: FLdRfVar var_94
  loc_69AB63: FLdZeroAd var_98
  loc_69AB66: FStStrNoPop var_90
  loc_69AB69: from_stack_2v = Proc_18_29_5E0728(from_stack_1v)
  loc_69AB6E: FFreeStr var_90 = "": var_94 = ""
  loc_69AB77: LitI4 2
  loc_69AB7C: ILdRf var_8C
  loc_69AB7F: ImpAdCallI2 Left$(, )
  loc_69AB84: FStStrNoPop var_90
  loc_69AB87: CI2Str
  loc_69AB89: FStI2 var_9A
  loc_69AB8C: FFree1Str var_90
  loc_69AB8F: FLdI2 var_9A
  loc_69AB92: LitI2_Byte 0
  loc_69AB94: EqI2
  loc_69AB95: BranchF loc_69AC41
  loc_69AB98: LitI2_Byte 0
  loc_69AB9A: FLdPrThis
  loc_69AB9B: VCallAd Control_ID_lblMinutosAlarma
  loc_69AB9E: FStAdFunc var_A0
  loc_69ABA1: FLdPr var_A0
  loc_69ABA4: Me.Enabled = from_stack_1b
  loc_69ABA9: FFree1Ad var_A0
  loc_69ABAC: LitVar_FALSE
  loc_69ABB0: PopAdLdVar
  loc_69ABB1: FLdPrThis
  loc_69ABB2: VCallAd Control_ID_metxtMinutosAlarma
  loc_69ABB5: FStAdFunc var_A0
  loc_69ABB8: FLdPr var_A0
  loc_69ABBB: LateIdSt
  loc_69ABC0: FFree1Ad var_A0
  loc_69ABC3: LitI4 0
  loc_69ABC8: CI2I4
  loc_69ABC9: FLdRfVar var_B4
  loc_69ABCC: LitI2_Byte 0
  loc_69ABCE: FLdPrThis
  loc_69ABCF: VCallAd Control_ID_chkAlarma
  loc_69ABD2: FStAdFunc var_A0
  loc_69ABD5: FLdPr var_A0
  loc_69ABD8: Set from_stack_2 = Me(from_stack_1)
  loc_69ABDD: FLdPr var_B4
  loc_69ABE0: Me.Value = from_stack_1
  loc_69ABE5: FFreeAd var_A0 = ""
  loc_69ABEC: LitI4 0
  loc_69ABF1: CI2I4
  loc_69ABF2: FLdRfVar var_B4
  loc_69ABF5: LitI2_Byte 1
  loc_69ABF7: FLdPrThis
  loc_69ABF8: VCallAd Control_ID_chkAlarma
  loc_69ABFB: FStAdFunc var_A0
  loc_69ABFE: FLdPr var_A0
  loc_69AC01: Set from_stack_2 = Me(from_stack_1)
  loc_69AC06: FLdPr var_B4
  loc_69AC09: Me.Value = from_stack_1
  loc_69AC0E: FFreeAd var_A0 = ""
  loc_69AC15: LitI4 0
  loc_69AC1A: CI2I4
  loc_69AC1B: FLdRfVar var_B4
  loc_69AC1E: LitI2_Byte 2
  loc_69AC20: FLdPrThis
  loc_69AC21: VCallAd Control_ID_chkAlarma
  loc_69AC24: FStAdFunc var_A0
  loc_69AC27: FLdPr var_A0
  loc_69AC2A: Set from_stack_2 = Me(from_stack_1)
  loc_69AC2F: FLdPr var_B4
  loc_69AC32: Me.Value = from_stack_1
  loc_69AC37: FFreeAd var_A0 = ""
  loc_69AC3E: Branch loc_69B1C1
  loc_69AC41: FLdI2 var_9A
  loc_69AC44: LitI2_Byte 1
  loc_69AC46: EqI2
  loc_69AC47: BranchF loc_69ACF2
  loc_69AC4A: LitI2_Byte &HFF
  loc_69AC4C: FLdPrThis
  loc_69AC4D: VCallAd Control_ID_lblMinutosAlarma
  loc_69AC50: FStAdFunc var_A0
  loc_69AC53: FLdPr var_A0
  loc_69AC56: Me.Enabled = from_stack_1b
  loc_69AC5B: FFree1Ad var_A0
  loc_69AC5E: LitVar_TRUE var_B0
  loc_69AC61: PopAdLdVar
  loc_69AC62: FLdPrThis
  loc_69AC63: VCallAd Control_ID_metxtMinutosAlarma
  loc_69AC66: FStAdFunc var_A0
  loc_69AC69: FLdPr var_A0
  loc_69AC6C: LateIdSt
  loc_69AC71: FFree1Ad var_A0
  loc_69AC74: LitI4 1
  loc_69AC79: CI2I4
  loc_69AC7A: FLdRfVar var_B4
  loc_69AC7D: LitI2_Byte 0
  loc_69AC7F: FLdPrThis
  loc_69AC80: VCallAd Control_ID_chkAlarma
  loc_69AC83: FStAdFunc var_A0
  loc_69AC86: FLdPr var_A0
  loc_69AC89: Set from_stack_2 = Me(from_stack_1)
  loc_69AC8E: FLdPr var_B4
  loc_69AC91: Me.Value = from_stack_1
  loc_69AC96: FFreeAd var_A0 = ""
  loc_69AC9D: LitI4 0
  loc_69ACA2: CI2I4
  loc_69ACA3: FLdRfVar var_B4
  loc_69ACA6: LitI2_Byte 1
  loc_69ACA8: FLdPrThis
  loc_69ACA9: VCallAd Control_ID_chkAlarma
  loc_69ACAC: FStAdFunc var_A0
  loc_69ACAF: FLdPr var_A0
  loc_69ACB2: Set from_stack_2 = Me(from_stack_1)
  loc_69ACB7: FLdPr var_B4
  loc_69ACBA: Me.Value = from_stack_1
  loc_69ACBF: FFreeAd var_A0 = ""
  loc_69ACC6: LitI4 0
  loc_69ACCB: CI2I4
  loc_69ACCC: FLdRfVar var_B4
  loc_69ACCF: LitI2_Byte 2
  loc_69ACD1: FLdPrThis
  loc_69ACD2: VCallAd Control_ID_chkAlarma
  loc_69ACD5: FStAdFunc var_A0
  loc_69ACD8: FLdPr var_A0
  loc_69ACDB: Set from_stack_2 = Me(from_stack_1)
  loc_69ACE0: FLdPr var_B4
  loc_69ACE3: Me.Value = from_stack_1
  loc_69ACE8: FFreeAd var_A0 = ""
  loc_69ACEF: Branch loc_69B1C1
  loc_69ACF2: FLdI2 var_9A
  loc_69ACF5: LitI2_Byte 2
  loc_69ACF7: EqI2
  loc_69ACF8: BranchF loc_69ADA4
  loc_69ACFB: LitI2_Byte 0
  loc_69ACFD: FLdPrThis
  loc_69ACFE: VCallAd Control_ID_lblMinutosAlarma
  loc_69AD01: FStAdFunc var_A0
  loc_69AD04: FLdPr var_A0
  loc_69AD07: Me.Enabled = from_stack_1b
  loc_69AD0C: FFree1Ad var_A0
  loc_69AD0F: LitVar_FALSE
  loc_69AD13: PopAdLdVar
  loc_69AD14: FLdPrThis
  loc_69AD15: VCallAd Control_ID_metxtMinutosAlarma
  loc_69AD18: FStAdFunc var_A0
  loc_69AD1B: FLdPr var_A0
  loc_69AD1E: LateIdSt
  loc_69AD23: FFree1Ad var_A0
  loc_69AD26: LitI4 0
  loc_69AD2B: CI2I4
  loc_69AD2C: FLdRfVar var_B4
  loc_69AD2F: LitI2_Byte 0
  loc_69AD31: FLdPrThis
  loc_69AD32: VCallAd Control_ID_chkAlarma
  loc_69AD35: FStAdFunc var_A0
  loc_69AD38: FLdPr var_A0
  loc_69AD3B: Set from_stack_2 = Me(from_stack_1)
  loc_69AD40: FLdPr var_B4
  loc_69AD43: Me.Value = from_stack_1
  loc_69AD48: FFreeAd var_A0 = ""
  loc_69AD4F: LitI4 1
  loc_69AD54: CI2I4
  loc_69AD55: FLdRfVar var_B4
  loc_69AD58: LitI2_Byte 1
  loc_69AD5A: FLdPrThis
  loc_69AD5B: VCallAd Control_ID_chkAlarma
  loc_69AD5E: FStAdFunc var_A0
  loc_69AD61: FLdPr var_A0
  loc_69AD64: Set from_stack_2 = Me(from_stack_1)
  loc_69AD69: FLdPr var_B4
  loc_69AD6C: Me.Value = from_stack_1
  loc_69AD71: FFreeAd var_A0 = ""
  loc_69AD78: LitI4 0
  loc_69AD7D: CI2I4
  loc_69AD7E: FLdRfVar var_B4
  loc_69AD81: LitI2_Byte 2
  loc_69AD83: FLdPrThis
  loc_69AD84: VCallAd Control_ID_chkAlarma
  loc_69AD87: FStAdFunc var_A0
  loc_69AD8A: FLdPr var_A0
  loc_69AD8D: Set from_stack_2 = Me(from_stack_1)
  loc_69AD92: FLdPr var_B4
  loc_69AD95: Me.Value = from_stack_1
  loc_69AD9A: FFreeAd var_A0 = ""
  loc_69ADA1: Branch loc_69B1C1
  loc_69ADA4: FLdI2 var_9A
  loc_69ADA7: LitI2_Byte 3
  loc_69ADA9: EqI2
  loc_69ADAA: BranchF loc_69AE55
  loc_69ADAD: LitI2_Byte &HFF
  loc_69ADAF: FLdPrThis
  loc_69ADB0: VCallAd Control_ID_lblMinutosAlarma
  loc_69ADB3: FStAdFunc var_A0
  loc_69ADB6: FLdPr var_A0
  loc_69ADB9: Me.Enabled = from_stack_1b
  loc_69ADBE: FFree1Ad var_A0
  loc_69ADC1: LitVar_TRUE var_B0
  loc_69ADC4: PopAdLdVar
  loc_69ADC5: FLdPrThis
  loc_69ADC6: VCallAd Control_ID_metxtMinutosAlarma
  loc_69ADC9: FStAdFunc var_A0
  loc_69ADCC: FLdPr var_A0
  loc_69ADCF: LateIdSt
  loc_69ADD4: FFree1Ad var_A0
  loc_69ADD7: LitI4 1
  loc_69ADDC: CI2I4
  loc_69ADDD: FLdRfVar var_B4
  loc_69ADE0: LitI2_Byte 0
  loc_69ADE2: FLdPrThis
  loc_69ADE3: VCallAd Control_ID_chkAlarma
  loc_69ADE6: FStAdFunc var_A0
  loc_69ADE9: FLdPr var_A0
  loc_69ADEC: Set from_stack_2 = Me(from_stack_1)
  loc_69ADF1: FLdPr var_B4
  loc_69ADF4: Me.Value = from_stack_1
  loc_69ADF9: FFreeAd var_A0 = ""
  loc_69AE00: LitI4 1
  loc_69AE05: CI2I4
  loc_69AE06: FLdRfVar var_B4
  loc_69AE09: LitI2_Byte 1
  loc_69AE0B: FLdPrThis
  loc_69AE0C: VCallAd Control_ID_chkAlarma
  loc_69AE0F: FStAdFunc var_A0
  loc_69AE12: FLdPr var_A0
  loc_69AE15: Set from_stack_2 = Me(from_stack_1)
  loc_69AE1A: FLdPr var_B4
  loc_69AE1D: Me.Value = from_stack_1
  loc_69AE22: FFreeAd var_A0 = ""
  loc_69AE29: LitI4 0
  loc_69AE2E: CI2I4
  loc_69AE2F: FLdRfVar var_B4
  loc_69AE32: LitI2_Byte 2
  loc_69AE34: FLdPrThis
  loc_69AE35: VCallAd Control_ID_chkAlarma
  loc_69AE38: FStAdFunc var_A0
  loc_69AE3B: FLdPr var_A0
  loc_69AE3E: Set from_stack_2 = Me(from_stack_1)
  loc_69AE43: FLdPr var_B4
  loc_69AE46: Me.Value = from_stack_1
  loc_69AE4B: FFreeAd var_A0 = ""
  loc_69AE52: Branch loc_69B1C1
  loc_69AE55: FLdI2 var_9A
  loc_69AE58: LitI2_Byte 4
  loc_69AE5A: EqI2
  loc_69AE5B: BranchF loc_69AF07
  loc_69AE5E: LitI2_Byte 0
  loc_69AE60: FLdPrThis
  loc_69AE61: VCallAd Control_ID_lblMinutosAlarma
  loc_69AE64: FStAdFunc var_A0
  loc_69AE67: FLdPr var_A0
  loc_69AE6A: Me.Enabled = from_stack_1b
  loc_69AE6F: FFree1Ad var_A0
  loc_69AE72: LitVar_FALSE
  loc_69AE76: PopAdLdVar
  loc_69AE77: FLdPrThis
  loc_69AE78: VCallAd Control_ID_metxtMinutosAlarma
  loc_69AE7B: FStAdFunc var_A0
  loc_69AE7E: FLdPr var_A0
  loc_69AE81: LateIdSt
  loc_69AE86: FFree1Ad var_A0
  loc_69AE89: LitI4 0
  loc_69AE8E: CI2I4
  loc_69AE8F: FLdRfVar var_B4
  loc_69AE92: LitI2_Byte 0
  loc_69AE94: FLdPrThis
  loc_69AE95: VCallAd Control_ID_chkAlarma
  loc_69AE98: FStAdFunc var_A0
  loc_69AE9B: FLdPr var_A0
  loc_69AE9E: Set from_stack_2 = Me(from_stack_1)
  loc_69AEA3: FLdPr var_B4
  loc_69AEA6: Me.Value = from_stack_1
  loc_69AEAB: FFreeAd var_A0 = ""
  loc_69AEB2: LitI4 0
  loc_69AEB7: CI2I4
  loc_69AEB8: FLdRfVar var_B4
  loc_69AEBB: LitI2_Byte 1
  loc_69AEBD: FLdPrThis
  loc_69AEBE: VCallAd Control_ID_chkAlarma
  loc_69AEC1: FStAdFunc var_A0
  loc_69AEC4: FLdPr var_A0
  loc_69AEC7: Set from_stack_2 = Me(from_stack_1)
  loc_69AECC: FLdPr var_B4
  loc_69AECF: Me.Value = from_stack_1
  loc_69AED4: FFreeAd var_A0 = ""
  loc_69AEDB: LitI4 1
  loc_69AEE0: CI2I4
  loc_69AEE1: FLdRfVar var_B4
  loc_69AEE4: LitI2_Byte 2
  loc_69AEE6: FLdPrThis
  loc_69AEE7: VCallAd Control_ID_chkAlarma
  loc_69AEEA: FStAdFunc var_A0
  loc_69AEED: FLdPr var_A0
  loc_69AEF0: Set from_stack_2 = Me(from_stack_1)
  loc_69AEF5: FLdPr var_B4
  loc_69AEF8: Me.Value = from_stack_1
  loc_69AEFD: FFreeAd var_A0 = ""
  loc_69AF04: Branch loc_69B1C1
  loc_69AF07: FLdI2 var_9A
  loc_69AF0A: LitI2_Byte 5
  loc_69AF0C: EqI2
  loc_69AF0D: BranchF loc_69AFB8
  loc_69AF10: LitI2_Byte &HFF
  loc_69AF12: FLdPrThis
  loc_69AF13: VCallAd Control_ID_lblMinutosAlarma
  loc_69AF16: FStAdFunc var_A0
  loc_69AF19: FLdPr var_A0
  loc_69AF1C: Me.Enabled = from_stack_1b
  loc_69AF21: FFree1Ad var_A0
  loc_69AF24: LitVar_TRUE var_B0
  loc_69AF27: PopAdLdVar
  loc_69AF28: FLdPrThis
  loc_69AF29: VCallAd Control_ID_metxtMinutosAlarma
  loc_69AF2C: FStAdFunc var_A0
  loc_69AF2F: FLdPr var_A0
  loc_69AF32: LateIdSt
  loc_69AF37: FFree1Ad var_A0
  loc_69AF3A: LitI4 1
  loc_69AF3F: CI2I4
  loc_69AF40: FLdRfVar var_B4
  loc_69AF43: LitI2_Byte 0
  loc_69AF45: FLdPrThis
  loc_69AF46: VCallAd Control_ID_chkAlarma
  loc_69AF49: FStAdFunc var_A0
  loc_69AF4C: FLdPr var_A0
  loc_69AF4F: Set from_stack_2 = Me(from_stack_1)
  loc_69AF54: FLdPr var_B4
  loc_69AF57: Me.Value = from_stack_1
  loc_69AF5C: FFreeAd var_A0 = ""
  loc_69AF63: LitI4 0
  loc_69AF68: CI2I4
  loc_69AF69: FLdRfVar var_B4
  loc_69AF6C: LitI2_Byte 1
  loc_69AF6E: FLdPrThis
  loc_69AF6F: VCallAd Control_ID_chkAlarma
  loc_69AF72: FStAdFunc var_A0
  loc_69AF75: FLdPr var_A0
  loc_69AF78: Set from_stack_2 = Me(from_stack_1)
  loc_69AF7D: FLdPr var_B4
  loc_69AF80: Me.Value = from_stack_1
  loc_69AF85: FFreeAd var_A0 = ""
  loc_69AF8C: LitI4 1
  loc_69AF91: CI2I4
  loc_69AF92: FLdRfVar var_B4
  loc_69AF95: LitI2_Byte 2
  loc_69AF97: FLdPrThis
  loc_69AF98: VCallAd Control_ID_chkAlarma
  loc_69AF9B: FStAdFunc var_A0
  loc_69AF9E: FLdPr var_A0
  loc_69AFA1: Set from_stack_2 = Me(from_stack_1)
  loc_69AFA6: FLdPr var_B4
  loc_69AFA9: Me.Value = from_stack_1
  loc_69AFAE: FFreeAd var_A0 = ""
  loc_69AFB5: Branch loc_69B1C1
  loc_69AFB8: FLdI2 var_9A
  loc_69AFBB: LitI2_Byte 6
  loc_69AFBD: EqI2
  loc_69AFBE: BranchF loc_69B06A
  loc_69AFC1: LitI2_Byte 0
  loc_69AFC3: FLdPrThis
  loc_69AFC4: VCallAd Control_ID_lblMinutosAlarma
  loc_69AFC7: FStAdFunc var_A0
  loc_69AFCA: FLdPr var_A0
  loc_69AFCD: Me.Enabled = from_stack_1b
  loc_69AFD2: FFree1Ad var_A0
  loc_69AFD5: LitVar_FALSE
  loc_69AFD9: PopAdLdVar
  loc_69AFDA: FLdPrThis
  loc_69AFDB: VCallAd Control_ID_metxtMinutosAlarma
  loc_69AFDE: FStAdFunc var_A0
  loc_69AFE1: FLdPr var_A0
  loc_69AFE4: LateIdSt
  loc_69AFE9: FFree1Ad var_A0
  loc_69AFEC: LitI4 0
  loc_69AFF1: CI2I4
  loc_69AFF2: FLdRfVar var_B4
  loc_69AFF5: LitI2_Byte 0
  loc_69AFF7: FLdPrThis
  loc_69AFF8: VCallAd Control_ID_chkAlarma
  loc_69AFFB: FStAdFunc var_A0
  loc_69AFFE: FLdPr var_A0
  loc_69B001: Set from_stack_2 = Me(from_stack_1)
  loc_69B006: FLdPr var_B4
  loc_69B009: Me.Value = from_stack_1
  loc_69B00E: FFreeAd var_A0 = ""
  loc_69B015: LitI4 1
  loc_69B01A: CI2I4
  loc_69B01B: FLdRfVar var_B4
  loc_69B01E: LitI2_Byte 1
  loc_69B020: FLdPrThis
  loc_69B021: VCallAd Control_ID_chkAlarma
  loc_69B024: FStAdFunc var_A0
  loc_69B027: FLdPr var_A0
  loc_69B02A: Set from_stack_2 = Me(from_stack_1)
  loc_69B02F: FLdPr var_B4
  loc_69B032: Me.Value = from_stack_1
  loc_69B037: FFreeAd var_A0 = ""
  loc_69B03E: LitI4 1
  loc_69B043: CI2I4
  loc_69B044: FLdRfVar var_B4
  loc_69B047: LitI2_Byte 2
  loc_69B049: FLdPrThis
  loc_69B04A: VCallAd Control_ID_chkAlarma
  loc_69B04D: FStAdFunc var_A0
  loc_69B050: FLdPr var_A0
  loc_69B053: Set from_stack_2 = Me(from_stack_1)
  loc_69B058: FLdPr var_B4
  loc_69B05B: Me.Value = from_stack_1
  loc_69B060: FFreeAd var_A0 = ""
  loc_69B067: Branch loc_69B1C1
  loc_69B06A: FLdI2 var_9A
  loc_69B06D: LitI2_Byte 7
  loc_69B06F: EqI2
  loc_69B070: BranchF loc_69B11B
  loc_69B073: LitI2_Byte &HFF
  loc_69B075: FLdPrThis
  loc_69B076: VCallAd Control_ID_lblMinutosAlarma
  loc_69B079: FStAdFunc var_A0
  loc_69B07C: FLdPr var_A0
  loc_69B07F: Me.Enabled = from_stack_1b
  loc_69B084: FFree1Ad var_A0
  loc_69B087: LitVar_TRUE var_B0
  loc_69B08A: PopAdLdVar
  loc_69B08B: FLdPrThis
  loc_69B08C: VCallAd Control_ID_metxtMinutosAlarma
  loc_69B08F: FStAdFunc var_A0
  loc_69B092: FLdPr var_A0
  loc_69B095: LateIdSt
  loc_69B09A: FFree1Ad var_A0
  loc_69B09D: LitI4 1
  loc_69B0A2: CI2I4
  loc_69B0A3: FLdRfVar var_B4
  loc_69B0A6: LitI2_Byte 0
  loc_69B0A8: FLdPrThis
  loc_69B0A9: VCallAd Control_ID_chkAlarma
  loc_69B0AC: FStAdFunc var_A0
  loc_69B0AF: FLdPr var_A0
  loc_69B0B2: Set from_stack_2 = Me(from_stack_1)
  loc_69B0B7: FLdPr var_B4
  loc_69B0BA: Me.Value = from_stack_1
  loc_69B0BF: FFreeAd var_A0 = ""
  loc_69B0C6: LitI4 1
  loc_69B0CB: CI2I4
  loc_69B0CC: FLdRfVar var_B4
  loc_69B0CF: LitI2_Byte 1
  loc_69B0D1: FLdPrThis
  loc_69B0D2: VCallAd Control_ID_chkAlarma
  loc_69B0D5: FStAdFunc var_A0
  loc_69B0D8: FLdPr var_A0
  loc_69B0DB: Set from_stack_2 = Me(from_stack_1)
  loc_69B0E0: FLdPr var_B4
  loc_69B0E3: Me.Value = from_stack_1
  loc_69B0E8: FFreeAd var_A0 = ""
  loc_69B0EF: LitI4 1
  loc_69B0F4: CI2I4
  loc_69B0F5: FLdRfVar var_B4
  loc_69B0F8: LitI2_Byte 2
  loc_69B0FA: FLdPrThis
  loc_69B0FB: VCallAd Control_ID_chkAlarma
  loc_69B0FE: FStAdFunc var_A0
  loc_69B101: FLdPr var_A0
  loc_69B104: Set from_stack_2 = Me(from_stack_1)
  loc_69B109: FLdPr var_B4
  loc_69B10C: Me.Value = from_stack_1
  loc_69B111: FFreeAd var_A0 = ""
  loc_69B118: Branch loc_69B1C1
  loc_69B11B: LitI2_Byte 0
  loc_69B11D: FLdPrThis
  loc_69B11E: VCallAd Control_ID_lblMinutosAlarma
  loc_69B121: FStAdFunc var_A0
  loc_69B124: FLdPr var_A0
  loc_69B127: Me.Enabled = from_stack_1b
  loc_69B12C: FFree1Ad var_A0
  loc_69B12F: LitVar_FALSE
  loc_69B133: PopAdLdVar
  loc_69B134: FLdPrThis
  loc_69B135: VCallAd Control_ID_metxtMinutosAlarma
  loc_69B138: FStAdFunc var_A0
  loc_69B13B: FLdPr var_A0
  loc_69B13E: LateIdSt
  loc_69B143: FFree1Ad var_A0
  loc_69B146: LitI4 0
  loc_69B14B: CI2I4
  loc_69B14C: FLdRfVar var_B4
  loc_69B14F: LitI2_Byte 0
  loc_69B151: FLdPrThis
  loc_69B152: VCallAd Control_ID_chkAlarma
  loc_69B155: FStAdFunc var_A0
  loc_69B158: FLdPr var_A0
  loc_69B15B: Set from_stack_2 = Me(from_stack_1)
  loc_69B160: FLdPr var_B4
  loc_69B163: Me.Value = from_stack_1
  loc_69B168: FFreeAd var_A0 = ""
  loc_69B16F: LitI4 0
  loc_69B174: CI2I4
  loc_69B175: FLdRfVar var_B4
  loc_69B178: LitI2_Byte 1
  loc_69B17A: FLdPrThis
  loc_69B17B: VCallAd Control_ID_chkAlarma
  loc_69B17E: FStAdFunc var_A0
  loc_69B181: FLdPr var_A0
  loc_69B184: Set from_stack_2 = Me(from_stack_1)
  loc_69B189: FLdPr var_B4
  loc_69B18C: Me.Value = from_stack_1
  loc_69B191: FFreeAd var_A0 = ""
  loc_69B198: LitI4 0
  loc_69B19D: CI2I4
  loc_69B19E: FLdRfVar var_B4
  loc_69B1A1: LitI2_Byte 2
  loc_69B1A3: FLdPrThis
  loc_69B1A4: VCallAd Control_ID_chkAlarma
  loc_69B1A7: FStAdFunc var_A0
  loc_69B1AA: FLdPr var_A0
  loc_69B1AD: Set from_stack_2 = Me(from_stack_1)
  loc_69B1B2: FLdPr var_B4
  loc_69B1B5: Me.Value = from_stack_1
  loc_69B1BA: FFreeAd var_A0 = ""
  loc_69B1C1: ExitProcCbHresult
End Function

Private Function Proc_18_29_5E0728(arg_C) '5E0728
  'Data Table: 447224
  loc_5E06D4: ILdRf arg_C
  loc_5E06D7: FStStrCopy var_8C
  loc_5E06DA: ZeroRetVal
  loc_5E06DC: FLdRfVar var_8C
  loc_5E06DF: CVarRef
  loc_5E06E4: ImpAdCallI2 IsNumeric()
  loc_5E06E9: BranchF loc_5E0708
  loc_5E06EC: FLdRfVar var_8C
  loc_5E06EF: CDargRef
  loc_5E06F3: FLdPrThis
  loc_5E06F4: VCallAd Control_ID_metxtMinutosAlarma
  loc_5E06F7: FStAdFunc var_A0
  loc_5E06FA: FLdPr var_A0
  loc_5E06FD: LateIdSt
  loc_5E0702: FFree1Ad var_A0
  loc_5E0705: Branch loc_5E0720
  loc_5E0708: LitVarStr var_9C, "00"
  loc_5E070D: PopAdLdVar
  loc_5E070E: FLdPrThis
  loc_5E070F: VCallAd Control_ID_metxtMinutosAlarma
  loc_5E0712: FStAdFunc var_A0
  loc_5E0715: FLdPr var_A0
  loc_5E0718: LateIdSt
  loc_5E071D: FFree1Ad var_A0
  loc_5E0720: ExitProcCbHresult
  loc_5E0726: IStI2 var_53F8
End Function

Private Function Proc_18_30_5E9064(arg_C) '5E9064
  'Data Table: 447224
  loc_5E8FF0: LitI2_Byte 0
  loc_5E8FF2: FLdRfVar var_86
  loc_5E8FF5: ImpAdLdUI1
  loc_5E8FF9: CI2UI1
  loc_5E8FFB: LitI2_Byte 1
  loc_5E8FFD: SubI2
  loc_5E8FFE: ForI2 var_8C
  loc_5E9004: LitVarI2 var_BC, 1
  loc_5E9009: FLdI2 var_86
  loc_5E900C: LitI2_Byte 1
  loc_5E900E: AddI2
  loc_5E900F: CI4UI1
  loc_5E9010: ILdRf arg_C
  loc_5E9013: CVarRef
  loc_5E9018: FLdRfVar var_CC
  loc_5E901B: ImpAdCallFPR4  = Mid(, , )
  loc_5E9020: FLdRfVar var_CC
  loc_5E9023: LitVarI2 var_DC, 1
  loc_5E9028: SubVar var_EC
  loc_5E902C: CI2Var
  loc_5E902D: FLdRfVar var_F4
  loc_5E9030: FLdI2 var_86
  loc_5E9033: FLdPrThis
  loc_5E9034: VCallAd Control_ID_cboSurtidor
  loc_5E9037: FStAdFunc var_F0
  loc_5E903A: FLdPr var_F0
  loc_5E903D: Set from_stack_2 = Me(from_stack_1)
  loc_5E9042: FLdPr var_F4
  loc_5E9045: Me.ListIndex = from_stack_1
  loc_5E904A: FFreeAd var_F0 = ""
  loc_5E9051: FFreeVar var_BC = ""
  loc_5E9058: FLdRfVar var_86
  loc_5E905B: NextI2 var_8C, loc_5E9004
  loc_5E9060: ExitProcHresult
End Function

Private Function Proc_18_31_631C00() '631C00
  'Data Table: 447224
  loc_631A34: LitI2_Byte 0
  loc_631A36: FLdRfVar var_86
  loc_631A39: ImpAdLdUI1
  loc_631A3D: CI2UI1
  loc_631A3F: LitI2_Byte 1
  loc_631A41: SubI2
  loc_631A42: ForI2 var_90
  loc_631A48: LitI2_Byte &HFF
  loc_631A4A: FLdRfVar var_98
  loc_631A4D: FLdI2 var_86
  loc_631A50: FLdPrThis
  loc_631A51: VCallAd Control_ID_lblSurtidor
  loc_631A54: FStAdFunc var_94
  loc_631A57: FLdPr var_94
  loc_631A5A: Set from_stack_2 = Me(from_stack_1)
  loc_631A5F: FLdPr var_98
  loc_631A62: Me.Visible = from_stack_1b
  loc_631A67: FFreeAd var_94 = ""
  loc_631A6E: ImpAdLdI4 MemVar_74BED8
  loc_631A71: LitStr " "
  loc_631A74: ConcatStr
  loc_631A75: FStStrNoPop var_9C
  loc_631A78: FLdI2 var_86
  loc_631A7B: LitI2_Byte 1
  loc_631A7D: AddI2
  loc_631A7E: CStrUI1
  loc_631A80: FStStrNoPop var_A0
  loc_631A83: ConcatStr
  loc_631A84: FStStrNoPop var_A4
  loc_631A87: LitStr ":"
  loc_631A8A: ConcatStr
  loc_631A8B: FStStrNoPop var_A8
  loc_631A8E: FLdRfVar var_98
  loc_631A91: FLdI2 var_86
  loc_631A94: FLdPrThis
  loc_631A95: VCallAd Control_ID_lblSurtidor
  loc_631A98: FStAdFunc var_94
  loc_631A9B: FLdPr var_94
  loc_631A9E: Set from_stack_2 = Me(from_stack_1)
  loc_631AA3: FLdPr var_98
  loc_631AA6: Me.Caption = from_stack_1
  loc_631AAB: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_631AB6: FFreeAd var_94 = ""
  loc_631ABD: LitI2_Byte &HFF
  loc_631ABF: FLdRfVar var_98
  loc_631AC2: FLdI2 var_86
  loc_631AC5: FLdPrThis
  loc_631AC6: VCallAd Control_ID_cboSurtidor
  loc_631AC9: FStAdFunc var_94
  loc_631ACC: FLdPr var_94
  loc_631ACF: Set from_stack_2 = Me(from_stack_1)
  loc_631AD4: FLdPr var_98
  loc_631AD7: Me.Visible = from_stack_1b
  loc_631ADC: FFreeAd var_94 = ""
  loc_631AE3: FLdRfVar var_86
  loc_631AE6: NextI2 var_90, loc_631A48
  loc_631AEB: ImpAdLdUI1
  loc_631AEF: CI2UI1
  loc_631AF1: FLdRfVar var_86
  loc_631AF4: LitI2_Byte &H1F
  loc_631AF6: ForI2 var_AC
  loc_631AFC: LitI2_Byte 0
  loc_631AFE: FLdRfVar var_98
  loc_631B01: FLdI2 var_86
  loc_631B04: FLdPrThis
  loc_631B05: VCallAd Control_ID_lblSurtidor
  loc_631B08: FStAdFunc var_94
  loc_631B0B: FLdPr var_94
  loc_631B0E: Set from_stack_2 = Me(from_stack_1)
  loc_631B13: FLdPr var_98
  loc_631B16: Me.Visible = from_stack_1b
  loc_631B1B: FFreeAd var_94 = ""
  loc_631B22: LitI2_Byte 0
  loc_631B24: FLdRfVar var_98
  loc_631B27: FLdI2 var_86
  loc_631B2A: FLdPrThis
  loc_631B2B: VCallAd Control_ID_cboSurtidor
  loc_631B2E: FStAdFunc var_94
  loc_631B31: FLdPr var_94
  loc_631B34: Set from_stack_2 = Me(from_stack_1)
  loc_631B39: FLdPr var_98
  loc_631B3C: Me.Visible = from_stack_1b
  loc_631B41: FFreeAd var_94 = ""
  loc_631B48: FLdRfVar var_86
  loc_631B4B: NextI2 var_AC, loc_631AFC
  loc_631B50: LitI2_Byte 1
  loc_631B52: FLdRfVar var_86
  loc_631B55: LitI2_Byte 5
  loc_631B57: ForI2 var_B0
  loc_631B5D: LitI2_Byte &HFF
  loc_631B5F: FStI2 var_8C
  loc_631B62: LitI2_Byte 1
  loc_631B64: FLdRfVar var_88
  loc_631B67: FLdRfVar var_B2
  loc_631B6A: ImpAdLdRf MemVar_74A220
  loc_631B6D: NewIfNullPr clsProducts
  loc_631B70: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_631B75: FLdI2 var_B2
  loc_631B78: ForI2 var_B6
  loc_631B7E: FLdI2 var_8C
  loc_631B81: FLdI2 var_86
  loc_631B84: CI4UI1
  loc_631B85: FLdI2 var_88
  loc_631B88: CI4UI1
  loc_631B89: ImpAdLdRf MemVar_74C074
  loc_631B8C: AryLdPr
  loc_631B8F: MemLdR8 global_0
  loc_631B92: LitI2_Byte 0
  loc_631B94: CR8I2
  loc_631B95: GtCyR8
  loc_631B96: OrI4
  loc_631B97: FStI2 var_8C
  loc_631B9A: FLdRfVar var_88
  loc_631B9D: NextI2 var_B6, loc_631B7E
  loc_631BA2: FLdI2 var_8C
  loc_631BA5: BranchF loc_631BF7
  loc_631BA8: LitI2_Byte 0
  loc_631BAA: FLdRfVar var_8A
  loc_631BAD: ImpAdLdUI1
  loc_631BB1: CI2UI1
  loc_631BB3: LitI2_Byte 1
  loc_631BB5: SubI2
  loc_631BB6: ForI2 var_BA
  loc_631BBC: LitVar_Missing var_CC
  loc_631BBF: PopAdLdVar
  loc_631BC0: FLdI2 var_86
  loc_631BC3: CStrUI1
  loc_631BC5: FStStrNoPop var_9C
  loc_631BC8: FLdRfVar var_98
  loc_631BCB: FLdI2 var_8A
  loc_631BCE: FLdPrThis
  loc_631BCF: VCallAd Control_ID_cboSurtidor
  loc_631BD2: FStAdFunc var_94
  loc_631BD5: FLdPr var_94
  loc_631BD8: Set from_stack_2 = Me(from_stack_1)
  loc_631BDD: FLdPr var_98
  loc_631BE0: Me.AddItem from_stack_1, from_stack_2
  loc_631BE5: FFree1Str var_9C
  loc_631BE8: FFreeAd var_94 = ""
  loc_631BEF: FLdRfVar var_8A
  loc_631BF2: NextI2 var_BA, loc_631BBC
  loc_631BF7: FLdRfVar var_86
  loc_631BFA: NextI2 var_B0, loc_631B5D
  loc_631BFF: ExitProcHresult
End Function

Private Function Proc_18_32_6B81A4(arg_C) '6B81A4
  'Data Table: 447224
  loc_6B7998: LitI2_Byte 0
  loc_6B799A: FStI2 var_86
  loc_6B799D: FLdI2 var_86
  loc_6B79A0: LitI2_Byte 3
  loc_6B79A2: LeI2
  loc_6B79A3: BranchF loc_6B79E2
  loc_6B79A6: FLdRfVar var_96
  loc_6B79A9: FLdRfVar var_94
  loc_6B79AC: FLdI2 var_86
  loc_6B79AF: FLdPrThis
  loc_6B79B0: VCallAd Control_ID_optTipoEvento
  loc_6B79B3: FStAdFunc var_90
  loc_6B79B6: FLdPr var_90
  loc_6B79B9: Set from_stack_2 = Me(from_stack_1)
  loc_6B79BE: FLdPr var_94
  loc_6B79C1:  = Me.Value
  loc_6B79C6: FLdI2 var_96
  loc_6B79C9: FFreeAd var_90 = ""
  loc_6B79D0: BranchF loc_6B79D6
  loc_6B79D3: Branch loc_6B79E2
  loc_6B79D6: FLdI2 var_86
  loc_6B79D9: LitI2_Byte 1
  loc_6B79DB: AddI2
  loc_6B79DC: FStI2 var_86
  loc_6B79DF: Branch loc_6B799D
  loc_6B79E2: FLdI2 var_86
  loc_6B79E5: FStI2 var_98
  loc_6B79E8: FLdI2 var_98
  loc_6B79EB: LitI2_Byte 0
  loc_6B79ED: EqI2
  loc_6B79EE: BranchF loc_6B79FB
  loc_6B79F1: LitStr "10"
  loc_6B79F4: IStStrCopy arg_C
  loc_6B79F8: Branch loc_6B7A31
  loc_6B79FB: FLdI2 var_98
  loc_6B79FE: LitI2_Byte 1
  loc_6B7A00: EqI2
  loc_6B7A01: BranchF loc_6B7A0E
  loc_6B7A04: LitStr "11"
  loc_6B7A07: IStStrCopy arg_C
  loc_6B7A0B: Branch loc_6B7A31
  loc_6B7A0E: FLdI2 var_98
  loc_6B7A11: LitI2_Byte 2
  loc_6B7A13: EqI2
  loc_6B7A14: BranchF loc_6B7A21
  loc_6B7A17: LitStr "12"
  loc_6B7A1A: IStStrCopy arg_C
  loc_6B7A1E: Branch loc_6B7A31
  loc_6B7A21: FLdI2 var_98
  loc_6B7A24: LitI2_Byte 3
  loc_6B7A26: EqI2
  loc_6B7A27: BranchF loc_6B7A31
  loc_6B7A2A: LitStr "20"
  loc_6B7A2D: IStStrCopy arg_C
  loc_6B7A31: LitI2_Byte 0
  loc_6B7A33: FStI2 var_88
  loc_6B7A36: FLdI2 var_88
  loc_6B7A39: LitI2_Byte 4
  loc_6B7A3B: LeI2
  loc_6B7A3C: BranchF loc_6B7A7B
  loc_6B7A3F: FLdRfVar var_96
  loc_6B7A42: FLdRfVar var_94
  loc_6B7A45: FLdI2 var_88
  loc_6B7A48: FLdPrThis
  loc_6B7A49: VCallAd Control_ID_optTemporizacion
  loc_6B7A4C: FStAdFunc var_90
  loc_6B7A4F: FLdPr var_90
  loc_6B7A52: Set from_stack_2 = Me(from_stack_1)
  loc_6B7A57: FLdPr var_94
  loc_6B7A5A:  = Me.Value
  loc_6B7A5F: FLdI2 var_96
  loc_6B7A62: FFreeAd var_90 = ""
  loc_6B7A69: BranchF loc_6B7A6F
  loc_6B7A6C: Branch loc_6B7A7B
  loc_6B7A6F: FLdI2 var_88
  loc_6B7A72: LitI2_Byte 1
  loc_6B7A74: AddI2
  loc_6B7A75: FStI2 var_88
  loc_6B7A78: Branch loc_6B7A36
  loc_6B7A7B: ILdI4 arg_C
  loc_6B7A7E: FLdI2 var_88
  loc_6B7A81: CStrUI1
  loc_6B7A83: FStStrNoPop var_9C
  loc_6B7A86: ConcatStr
  loc_6B7A87: IStStr
  loc_6B7A8B: FFree1Str var_9C
  loc_6B7A8E: FLdI2 var_88
  loc_6B7A91: FStI2 var_9E
  loc_6B7A94: FLdI2 var_9E
  loc_6B7A97: LitI2_Byte 0
  loc_6B7A99: EqI2
  loc_6B7A9A: BranchF loc_6B7AC1
  loc_6B7A9D: ILdI4 arg_C
  loc_6B7AA0: LitStr "00"
  loc_6B7AA3: ConcatStr
  loc_6B7AA4: IStStr
  loc_6B7AA8: ILdI4 arg_C
  loc_6B7AAB: LitStr "00"
  loc_6B7AAE: ConcatStr
  loc_6B7AAF: IStStr
  loc_6B7AB3: ILdI4 arg_C
  loc_6B7AB6: LitStr "0"
  loc_6B7AB9: ConcatStr
  loc_6B7ABA: IStStr
  loc_6B7ABE: Branch loc_6B7C7C
  loc_6B7AC1: FLdI2 var_9E
  loc_6B7AC4: LitI2_Byte 1
  loc_6B7AC6: EqI2
  loc_6B7AC7: BranchF loc_6B7B0E
  loc_6B7ACA: ILdI4 arg_C
  loc_6B7ACD: LitStr "00"
  loc_6B7AD0: ConcatStr
  loc_6B7AD1: IStStr
  loc_6B7AD5: ILdI4 arg_C
  loc_6B7AD8: LitStr "00"
  loc_6B7ADB: ConcatStr
  loc_6B7ADC: IStStr
  loc_6B7AE0: ILdI4 arg_C
  loc_6B7AE3: FLdRfVar var_96
  loc_6B7AE6: FLdPrThis
  loc_6B7AE7: VCallAd Control_ID_cboDiaSemana
  loc_6B7AEA: FStAdFunc var_90
  loc_6B7AED: FLdPr var_90
  loc_6B7AF0:  = Me.ListIndex
  loc_6B7AF5: FLdI2 var_96
  loc_6B7AF8: LitI2_Byte 1
  loc_6B7AFA: AddI2
  loc_6B7AFB: CStrUI1
  loc_6B7AFD: FStStrNoPop var_9C
  loc_6B7B00: ConcatStr
  loc_6B7B01: IStStr
  loc_6B7B05: FFree1Str var_9C
  loc_6B7B08: FFree1Ad var_90
  loc_6B7B0B: Branch loc_6B7C7C
  loc_6B7B0E: FLdI2 var_9E
  loc_6B7B11: LitI2_Byte 2
  loc_6B7B13: EqI2
  loc_6B7B14: BranchF loc_6B7BC5
  loc_6B7B17: ILdI4 arg_C
  loc_6B7B1A: LitStr "00"
  loc_6B7B1D: ConcatStr
  loc_6B7B1E: IStStr
  loc_6B7B22: FLdRfVar var_96
  loc_6B7B25: FLdPrThis
  loc_6B7B26: VCallAd Control_ID_chkDia
  loc_6B7B29: FStAdFunc var_90
  loc_6B7B2C: FLdPr var_90
  loc_6B7B2F:  = Me.Value
  loc_6B7B34: FLdRfVar var_A0
  loc_6B7B37: FLdPrThis
  loc_6B7B38: VCallAd Control_ID_cboDia
  loc_6B7B3B: FStAdFunc var_94
  loc_6B7B3E: FLdPr var_94
  loc_6B7B41:  = Me.ListIndex
  loc_6B7B46: ILdI4 arg_C
  loc_6B7B49: CVarStr var_140
  loc_6B7B4C: LitI4 1
  loc_6B7B51: LitI4 1
  loc_6B7B56: LitVarStr var_D0, "00"
  loc_6B7B5B: FStVarCopyObj var_E0
  loc_6B7B5E: FLdRfVar var_E0
  loc_6B7B61: FLdI2 var_A0
  loc_6B7B64: LitI2_Byte 1
  loc_6B7B66: AddI2
  loc_6B7B67: CVarI2 var_C0
  loc_6B7B6A: ImpAdCallI2 Format$(, )
  loc_6B7B6F: CVarStr var_120
  loc_6B7B72: LitVarStr var_100, "32"
  loc_6B7B77: FStVarCopyObj var_110
  loc_6B7B7A: FLdRfVar var_110
  loc_6B7B7D: FLdI2 var_96
  loc_6B7B80: CI4UI1
  loc_6B7B81: LitI4 1
  loc_6B7B86: EqI4
  loc_6B7B87: CVarBoolI2 var_F0
  loc_6B7B8B: FLdRfVar var_130
  loc_6B7B8E: ImpAdCallFPR4  = IIf(, , )
  loc_6B7B93: FLdRfVar var_130
  loc_6B7B96: ConcatVar var_150
  loc_6B7B9A: CStrVarTmp
  loc_6B7B9B: IStStr
  loc_6B7B9F: FFreeAd var_90 = ""
  loc_6B7BA6: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_6B7BB7: ILdI4 arg_C
  loc_6B7BBA: LitStr "0"
  loc_6B7BBD: ConcatStr
  loc_6B7BBE: IStStr
  loc_6B7BC2: Branch loc_6B7C7C
  loc_6B7BC5: FLdI2 var_9E
  loc_6B7BC8: LitI2_Byte 3
  loc_6B7BCA: EqI2
  loc_6B7BCB: BranchT loc_6B7BD7
  loc_6B7BCE: FLdI2 var_9E
  loc_6B7BD1: LitI2_Byte 4
  loc_6B7BD3: EqI2
  loc_6B7BD4: BranchF loc_6B7C7C
  loc_6B7BD7: FLdRfVar var_96
  loc_6B7BDA: FLdPrThis
  loc_6B7BDB: VCallAd Control_ID_cboMes
  loc_6B7BDE: FStAdFunc var_90
  loc_6B7BE1: FLdPr var_90
  loc_6B7BE4:  = Me.ListIndex
  loc_6B7BE9: ILdI4 arg_C
  loc_6B7BEC: LitI4 1
  loc_6B7BF1: LitI4 1
  loc_6B7BF6: LitVarStr var_D0, "00"
  loc_6B7BFB: FStVarCopyObj var_E0
  loc_6B7BFE: FLdRfVar var_E0
  loc_6B7C01: FLdI2 var_96
  loc_6B7C04: LitI2_Byte 1
  loc_6B7C06: AddI2
  loc_6B7C07: CVarI2 var_C0
  loc_6B7C0A: ImpAdCallI2 Format$(, )
  loc_6B7C0F: FStStrNoPop var_9C
  loc_6B7C12: ConcatStr
  loc_6B7C13: IStStr
  loc_6B7C17: FFree1Str var_9C
  loc_6B7C1A: FFree1Ad var_90
  loc_6B7C1D: FFreeVar var_C0 = ""
  loc_6B7C24: FLdRfVar var_96
  loc_6B7C27: FLdPrThis
  loc_6B7C28: VCallAd Control_ID_cboDia
  loc_6B7C2B: FStAdFunc var_90
  loc_6B7C2E: FLdPr var_90
  loc_6B7C31:  = Me.ListIndex
  loc_6B7C36: ILdI4 arg_C
  loc_6B7C39: LitI4 1
  loc_6B7C3E: LitI4 1
  loc_6B7C43: LitVarStr var_D0, "00"
  loc_6B7C48: FStVarCopyObj var_E0
  loc_6B7C4B: FLdRfVar var_E0
  loc_6B7C4E: FLdI2 var_96
  loc_6B7C51: LitI2_Byte 1
  loc_6B7C53: AddI2
  loc_6B7C54: CVarI2 var_C0
  loc_6B7C57: ImpAdCallI2 Format$(, )
  loc_6B7C5C: FStStrNoPop var_9C
  loc_6B7C5F: ConcatStr
  loc_6B7C60: IStStr
  loc_6B7C64: FFree1Str var_9C
  loc_6B7C67: FFree1Ad var_90
  loc_6B7C6A: FFreeVar var_C0 = ""
  loc_6B7C71: ILdI4 arg_C
  loc_6B7C74: LitStr "0"
  loc_6B7C77: ConcatStr
  loc_6B7C78: IStStr
  loc_6B7C7C: FLdI2 var_86
  loc_6B7C7F: FStI2 var_152
  loc_6B7C82: FLdI2 var_152
  loc_6B7C85: LitI2_Byte 0
  loc_6B7C87: EqI2
  loc_6B7C88: BranchF loc_6B7D1A
  loc_6B7C8B: FLdPrThis
  loc_6B7C8C: VCallAd Control_ID_metxtHora
  loc_6B7C8F: FStAdFunc var_90
  loc_6B7C92: FLdPr var_90
  loc_6B7C95: LateIdLdVar var_C0 DispID_22 0
  loc_6B7C9C: PopAd
  loc_6B7C9E: FLdPrThis
  loc_6B7C9F: VCallAd Control_ID_metxtHora
  loc_6B7CA2: FStAdFunc var_94
  loc_6B7CA5: FLdPr var_94
  loc_6B7CA8: LateIdLdVar var_110 DispID_22 0
  loc_6B7CAF: PopAd
  loc_6B7CB1: ILdI4 arg_C
  loc_6B7CB4: LitVarI2 var_E0, 2
  loc_6B7CB9: LitI4 1
  loc_6B7CBE: FLdRfVar var_C0
  loc_6B7CC1: CStrVarTmp
  loc_6B7CC2: FStStrNoPop var_9C
  loc_6B7CC5: ImpAdCallI2 Mid$(, , )
  loc_6B7CCA: FStStrNoPop var_158
  loc_6B7CCD: ConcatStr
  loc_6B7CCE: FStStrNoPop var_160
  loc_6B7CD1: LitVarI2 var_120, 2
  loc_6B7CD6: LitI4 4
  loc_6B7CDB: FLdRfVar var_110
  loc_6B7CDE: CStrVarTmp
  loc_6B7CDF: FStStrNoPop var_15C
  loc_6B7CE2: ImpAdCallI2 Mid$(, , )
  loc_6B7CE7: FStStrNoPop var_164
  loc_6B7CEA: ConcatStr
  loc_6B7CEB: FStStrNoPop var_168
  loc_6B7CEE: LitStr "00"
  loc_6B7CF1: ConcatStr
  loc_6B7CF2: IStStr
  loc_6B7CF6: FFreeStr var_9C = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_6B7D05: FFreeAd var_90 = ""
  loc_6B7D0C: FFreeVar var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B7D17: Branch loc_6B7EDF
  loc_6B7D1A: FLdI2 var_152
  loc_6B7D1D: LitI2_Byte 1
  loc_6B7D1F: EqI2
  loc_6B7D20: BranchF loc_6B7DB2
  loc_6B7D23: FLdPrThis
  loc_6B7D24: VCallAd Control_ID_metxtHora
  loc_6B7D27: FStAdFunc var_90
  loc_6B7D2A: FLdPr var_90
  loc_6B7D2D: LateIdLdVar var_C0 DispID_22 0
  loc_6B7D34: PopAd
  loc_6B7D36: FLdPrThis
  loc_6B7D37: VCallAd Control_ID_metxtHora
  loc_6B7D3A: FStAdFunc var_94
  loc_6B7D3D: FLdPr var_94
  loc_6B7D40: LateIdLdVar var_110 DispID_22 0
  loc_6B7D47: PopAd
  loc_6B7D49: ILdI4 arg_C
  loc_6B7D4C: LitVarI2 var_E0, 2
  loc_6B7D51: LitI4 1
  loc_6B7D56: FLdRfVar var_C0
  loc_6B7D59: CStrVarTmp
  loc_6B7D5A: FStStrNoPop var_9C
  loc_6B7D5D: ImpAdCallI2 Mid$(, , )
  loc_6B7D62: FStStrNoPop var_158
  loc_6B7D65: ConcatStr
  loc_6B7D66: FStStrNoPop var_160
  loc_6B7D69: LitVarI2 var_120, 2
  loc_6B7D6E: LitI4 4
  loc_6B7D73: FLdRfVar var_110
  loc_6B7D76: CStrVarTmp
  loc_6B7D77: FStStrNoPop var_15C
  loc_6B7D7A: ImpAdCallI2 Mid$(, , )
  loc_6B7D7F: FStStrNoPop var_164
  loc_6B7D82: ConcatStr
  loc_6B7D83: FStStrNoPop var_168
  loc_6B7D86: LitStr "35"
  loc_6B7D89: ConcatStr
  loc_6B7D8A: IStStr
  loc_6B7D8E: FFreeStr var_9C = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_6B7D9D: FFreeAd var_90 = ""
  loc_6B7DA4: FFreeVar var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B7DAF: Branch loc_6B7EDF
  loc_6B7DB2: FLdI2 var_152
  loc_6B7DB5: LitI2_Byte 2
  loc_6B7DB7: EqI2
  loc_6B7DB8: BranchF loc_6B7E4A
  loc_6B7DBB: FLdPrThis
  loc_6B7DBC: VCallAd Control_ID_metxtHora
  loc_6B7DBF: FStAdFunc var_90
  loc_6B7DC2: FLdPr var_90
  loc_6B7DC5: LateIdLdVar var_C0 DispID_22 0
  loc_6B7DCC: PopAd
  loc_6B7DCE: FLdPrThis
  loc_6B7DCF: VCallAd Control_ID_metxtHora
  loc_6B7DD2: FStAdFunc var_94
  loc_6B7DD5: FLdPr var_94
  loc_6B7DD8: LateIdLdVar var_110 DispID_22 0
  loc_6B7DDF: PopAd
  loc_6B7DE1: ILdI4 arg_C
  loc_6B7DE4: LitVarI2 var_E0, 2
  loc_6B7DE9: LitI4 1
  loc_6B7DEE: FLdRfVar var_C0
  loc_6B7DF1: CStrVarTmp
  loc_6B7DF2: FStStrNoPop var_9C
  loc_6B7DF5: ImpAdCallI2 Mid$(, , )
  loc_6B7DFA: FStStrNoPop var_158
  loc_6B7DFD: ConcatStr
  loc_6B7DFE: FStStrNoPop var_160
  loc_6B7E01: LitVarI2 var_120, 2
  loc_6B7E06: LitI4 4
  loc_6B7E0B: FLdRfVar var_110
  loc_6B7E0E: CStrVarTmp
  loc_6B7E0F: FStStrNoPop var_15C
  loc_6B7E12: ImpAdCallI2 Mid$(, , )
  loc_6B7E17: FStStrNoPop var_164
  loc_6B7E1A: ConcatStr
  loc_6B7E1B: FStStrNoPop var_168
  loc_6B7E1E: LitStr "55"
  loc_6B7E21: ConcatStr
  loc_6B7E22: IStStr
  loc_6B7E26: FFreeStr var_9C = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_6B7E35: FFreeAd var_90 = ""
  loc_6B7E3C: FFreeVar var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B7E47: Branch loc_6B7EDF
  loc_6B7E4A: FLdI2 var_152
  loc_6B7E4D: LitI2_Byte 3
  loc_6B7E4F: EqI2
  loc_6B7E50: BranchF loc_6B7EDF
  loc_6B7E53: FLdPrThis
  loc_6B7E54: VCallAd Control_ID_metxtHora
  loc_6B7E57: FStAdFunc var_90
  loc_6B7E5A: FLdPr var_90
  loc_6B7E5D: LateIdLdVar var_C0 DispID_22 0
  loc_6B7E64: PopAd
  loc_6B7E66: FLdPrThis
  loc_6B7E67: VCallAd Control_ID_metxtHora
  loc_6B7E6A: FStAdFunc var_94
  loc_6B7E6D: FLdPr var_94
  loc_6B7E70: LateIdLdVar var_110 DispID_22 0
  loc_6B7E77: PopAd
  loc_6B7E79: ILdI4 arg_C
  loc_6B7E7C: LitVarI2 var_E0, 2
  loc_6B7E81: LitI4 1
  loc_6B7E86: FLdRfVar var_C0
  loc_6B7E89: CStrVarTmp
  loc_6B7E8A: FStStrNoPop var_9C
  loc_6B7E8D: ImpAdCallI2 Mid$(, , )
  loc_6B7E92: FStStrNoPop var_158
  loc_6B7E95: ConcatStr
  loc_6B7E96: FStStrNoPop var_160
  loc_6B7E99: LitVarI2 var_120, 2
  loc_6B7E9E: LitI4 4
  loc_6B7EA3: FLdRfVar var_110
  loc_6B7EA6: CStrVarTmp
  loc_6B7EA7: FStStrNoPop var_15C
  loc_6B7EAA: ImpAdCallI2 Mid$(, , )
  loc_6B7EAF: FStStrNoPop var_164
  loc_6B7EB2: ConcatStr
  loc_6B7EB3: FStStrNoPop var_168
  loc_6B7EB6: LitStr "05"
  loc_6B7EB9: ConcatStr
  loc_6B7EBA: IStStr
  loc_6B7EBE: FFreeStr var_9C = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_6B7ECD: FFreeAd var_90 = ""
  loc_6B7ED4: FFreeVar var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B7EDF: FLdRfVar var_96
  loc_6B7EE2: FLdRfVar var_94
  loc_6B7EE5: LitI2_Byte 0
  loc_6B7EE7: FLdPrThis
  loc_6B7EE8: VCallAd Control_ID_chkAlarma
  loc_6B7EEB: FStAdFunc var_90
  loc_6B7EEE: FLdPr var_90
  loc_6B7EF1: Set from_stack_2 = Me(from_stack_1)
  loc_6B7EF6: FLdPr var_94
  loc_6B7EF9:  = Me.Value
  loc_6B7EFE: LitVarI2 var_E0, 0
  loc_6B7F03: LitVarI2 var_C0, 1
  loc_6B7F08: FLdI2 var_96
  loc_6B7F0B: CI4UI1
  loc_6B7F0C: LitI4 1
  loc_6B7F11: EqI4
  loc_6B7F12: CVarBoolI2 var_B0
  loc_6B7F16: FLdRfVar var_110
  loc_6B7F19: ImpAdCallFPR4  = IIf(, , )
  loc_6B7F1E: FLdRfVar var_110
  loc_6B7F21: CI2Var
  loc_6B7F22: FStI2 var_8A
  loc_6B7F25: FFreeAd var_90 = ""
  loc_6B7F2C: FFreeVar var_B0 = "": var_C0 = "": var_E0 = ""
  loc_6B7F37: FLdRfVar var_96
  loc_6B7F3A: FLdRfVar var_94
  loc_6B7F3D: LitI2_Byte 1
  loc_6B7F3F: FLdPrThis
  loc_6B7F40: VCallAd Control_ID_chkAlarma
  loc_6B7F43: FStAdFunc var_90
  loc_6B7F46: FLdPr var_90
  loc_6B7F49: Set from_stack_2 = Me(from_stack_1)
  loc_6B7F4E: FLdPr var_94
  loc_6B7F51:  = Me.Value
  loc_6B7F56: FLdI2 var_8A
  loc_6B7F59: CVarI2 var_140
  loc_6B7F5C: LitVarI2 var_100, 2
  loc_6B7F61: LitVarI2 var_E0, 0
  loc_6B7F66: LitVarI2 var_C0, 1
  loc_6B7F6B: FLdI2 var_96
  loc_6B7F6E: CI4UI1
  loc_6B7F6F: LitI4 1
  loc_6B7F74: EqI4
  loc_6B7F75: CVarBoolI2 var_B0
  loc_6B7F79: FLdRfVar var_110
  loc_6B7F7C: ImpAdCallFPR4  = IIf(, , )
  loc_6B7F81: FLdRfVar var_110
  loc_6B7F84: MulVar var_120
  loc_6B7F88: AddVar var_130
  loc_6B7F8C: CI2Var
  loc_6B7F8D: FStI2 var_8A
  loc_6B7F90: FFreeAd var_90 = ""
  loc_6B7F97: FFreeVar var_B0 = "": var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B7FA4: FLdRfVar var_96
  loc_6B7FA7: FLdRfVar var_94
  loc_6B7FAA: LitI2_Byte 2
  loc_6B7FAC: FLdPrThis
  loc_6B7FAD: VCallAd Control_ID_chkAlarma
  loc_6B7FB0: FStAdFunc var_90
  loc_6B7FB3: FLdPr var_90
  loc_6B7FB6: Set from_stack_2 = Me(from_stack_1)
  loc_6B7FBB: FLdPr var_94
  loc_6B7FBE:  = Me.Value
  loc_6B7FC3: FLdI2 var_8A
  loc_6B7FC6: CVarI2 var_140
  loc_6B7FC9: LitVarI2 var_100, 4
  loc_6B7FCE: LitVarI2 var_E0, 0
  loc_6B7FD3: LitVarI2 var_C0, 1
  loc_6B7FD8: FLdI2 var_96
  loc_6B7FDB: CI4UI1
  loc_6B7FDC: LitI4 1
  loc_6B7FE1: EqI4
  loc_6B7FE2: CVarBoolI2 var_B0
  loc_6B7FE6: FLdRfVar var_110
  loc_6B7FE9: ImpAdCallFPR4  = IIf(, , )
  loc_6B7FEE: FLdRfVar var_110
  loc_6B7FF1: MulVar var_120
  loc_6B7FF5: AddVar var_130
  loc_6B7FF9: CI2Var
  loc_6B7FFA: FStI2 var_8A
  loc_6B7FFD: FFreeAd var_90 = ""
  loc_6B8004: FFreeVar var_B0 = "": var_C0 = "": var_E0 = "": var_110 = ""
  loc_6B8011: ILdI4 arg_C
  loc_6B8014: LitI4 1
  loc_6B8019: LitI4 1
  loc_6B801E: LitVarStr var_D0, "00"
  loc_6B8023: FStVarCopyObj var_C0
  loc_6B8026: FLdRfVar var_C0
  loc_6B8029: FLdRfVar var_8A
  loc_6B802C: CVarRef
  loc_6B8031: ImpAdCallI2 Format$(, )
  loc_6B8036: FStStrNoPop var_9C
  loc_6B8039: ConcatStr
  loc_6B803A: IStStr
  loc_6B803E: FFree1Str var_9C
  loc_6B8041: FFree1Var var_C0 = ""
  loc_6B8044: FLdRfVar var_96
  loc_6B8047: FLdRfVar var_94
  loc_6B804A: LitI2_Byte 0
  loc_6B804C: FLdPrThis
  loc_6B804D: VCallAd Control_ID_chkAlarma
  loc_6B8050: FStAdFunc var_90
  loc_6B8053: FLdPr var_90
  loc_6B8056: Set from_stack_2 = Me(from_stack_1)
  loc_6B805B: FLdPr var_94
  loc_6B805E:  = Me.Value
  loc_6B8063: FLdI2 var_96
  loc_6B8066: CI4UI1
  loc_6B8067: LitI4 1
  loc_6B806C: EqI4
  loc_6B806D: FFreeAd var_90 = ""
  loc_6B8074: BranchF loc_6B80C8
  loc_6B8077: FLdPrThis
  loc_6B8078: VCallAd Control_ID_metxtMinutosAlarma
  loc_6B807B: FStAdFunc var_90
  loc_6B807E: FLdPr var_90
  loc_6B8081: LateIdLdVar var_C0 DispID_22 0
  loc_6B8088: PopAd
  loc_6B808A: ILdI4 arg_C
  loc_6B808D: LitI4 1
  loc_6B8092: LitI4 1
  loc_6B8097: LitVarStr var_B0, "00"
  loc_6B809C: FStVarCopyObj var_110
  loc_6B809F: FLdRfVar var_110
  loc_6B80A2: FLdRfVar var_C0
  loc_6B80A5: CStrVarTmp
  loc_6B80A6: CVarStr var_E0
  loc_6B80A9: ImpAdCallI2 Format$(, )
  loc_6B80AE: FStStrNoPop var_9C
  loc_6B80B1: ConcatStr
  loc_6B80B2: IStStr
  loc_6B80B6: FFree1Str var_9C
  loc_6B80B9: FFree1Ad var_90
  loc_6B80BC: FFreeVar var_C0 = "": var_E0 = ""
  loc_6B80C5: Branch loc_6B80D3
  loc_6B80C8: ILdI4 arg_C
  loc_6B80CB: LitStr "00"
  loc_6B80CE: ConcatStr
  loc_6B80CF: IStStr
  loc_6B80D3: FLdI2 var_86
  loc_6B80D6: LitI2_Byte 3
  loc_6B80D8: EqI2
  loc_6B80D9: BranchF loc_6B8170
  loc_6B80DC: LitI2_Byte 0
  loc_6B80DE: FLdRfVar var_8C
  loc_6B80E1: ImpAdLdUI1
  loc_6B80E5: CI2UI1
  loc_6B80E7: LitI2_Byte 1
  loc_6B80E9: SubI2
  loc_6B80EA: ForI2 var_16C
  loc_6B80F0: ILdI4 arg_C
  loc_6B80F3: FLdRfVar var_96
  loc_6B80F6: FLdRfVar var_94
  loc_6B80F9: FLdI2 var_8C
  loc_6B80FC: FLdPrThis
  loc_6B80FD: VCallAd Control_ID_cboSurtidor
  loc_6B8100: FStAdFunc var_90
  loc_6B8103: FLdPr var_90
  loc_6B8106: Set from_stack_2 = Me(from_stack_1)
  loc_6B810B: FLdPr var_94
  loc_6B810E:  = Me.ListIndex
  loc_6B8113: FLdI2 var_96
  loc_6B8116: LitI2_Byte 1
  loc_6B8118: AddI2
  loc_6B8119: CStrUI1
  loc_6B811B: FStStrNoPop var_9C
  loc_6B811E: ConcatStr
  loc_6B811F: IStStr
  loc_6B8123: FFree1Str var_9C
  loc_6B8126: FFreeAd var_90 = ""
  loc_6B812D: FLdRfVar var_8C
  loc_6B8130: NextI2 var_16C, loc_6B80F0
  loc_6B8135: ILdI4 arg_C
  loc_6B8138: CVarStr var_D0
  loc_6B813B: LitVarStr var_B0, "1"
  loc_6B8140: FStVarCopyObj var_C0
  loc_6B8143: FLdRfVar var_C0
  loc_6B8146: LitI2_Byte &H28
  loc_6B8148: ImpAdLdUI1
  loc_6B814C: CI2UI1
  loc_6B814E: SubI2
  loc_6B814F: CI4UI1
  loc_6B8150: FLdRfVar var_E0
  loc_6B8153: ImpAdCallFPR4  = String(, )
  loc_6B8158: FLdRfVar var_E0
  loc_6B815B: ConcatVar var_110
  loc_6B815F: CStrVarTmp
  loc_6B8160: IStStr
  loc_6B8164: FFreeVar var_C0 = "": var_E0 = ""
  loc_6B816D: Branch loc_6B81A3
  loc_6B8170: ILdI4 arg_C
  loc_6B8173: CVarStr var_D0
  loc_6B8176: LitVarStr var_B0, "0"
  loc_6B817B: FStVarCopyObj var_C0
  loc_6B817E: FLdRfVar var_C0
  loc_6B8181: LitI4 &H28
  loc_6B8186: FLdRfVar var_E0
  loc_6B8189: ImpAdCallFPR4  = String(, )
  loc_6B818E: FLdRfVar var_E0
  loc_6B8191: ConcatVar var_110
  loc_6B8195: CStrVarTmp
  loc_6B8196: IStStr
  loc_6B819A: FFreeVar var_C0 = "": var_E0 = ""
  loc_6B81A3: ExitProcHresult
End Function

Private Function Proc_18_33_621118() '621118
  'Data Table: 447224
  loc_620FCC: FLdPrThis
  loc_620FCD: VCallAd Control_ID_metxtHora
  loc_620FD0: FStAdFunc var_8C
  loc_620FD3: FLdPr var_8C
  loc_620FD6: LateIdLdVar var_9C DispID_22 0
  loc_620FDD: PopAd
  loc_620FDF: FLdPrThis
  loc_620FE0: VCallAd Control_ID_metxtHora
  loc_620FE3: FStAdFunc var_B4
  loc_620FE6: FLdPr var_B4
  loc_620FE9: LateIdLdVar var_C4 DispID_22 0
  loc_620FF0: PopAd
  loc_620FF2: LitI4 2
  loc_620FF7: FLdRfVar var_9C
  loc_620FFA: CStrVarTmp
  loc_620FFB: FStStrNoPop var_A0
  loc_620FFE: ImpAdCallI2 Left$(, )
  loc_621003: CVarStr var_B0
  loc_621006: ImpAdCallI2 IsNumeric()
  loc_62100B: NotI4
  loc_62100C: LitI4 2
  loc_621011: FLdRfVar var_C4
  loc_621014: CStrVarTmp
  loc_621015: FStStrNoPop var_C8
  loc_621018: ImpAdCallI2 Right$(, )
  loc_62101D: CVarStr var_D8
  loc_621020: ImpAdCallI2 IsNumeric()
  loc_621025: NotI4
  loc_621026: OrI4
  loc_621027: FFreeStr var_A0 = ""
  loc_62102E: FFreeAd var_8C = ""
  loc_621035: FFreeVar var_9C = "": var_B0 = "": var_C4 = ""
  loc_621040: BranchF loc_62108E
  loc_621043: LitVar_Missing var_C4
  loc_621046: LitVar_Missing var_B0
  loc_621049: LitVar_Missing var_9C
  loc_62104C: LitI4 &H40
  loc_621051: FLdPr Me
  loc_621054: MemLdRfVar from_stack_1.strRightTime
  loc_621057: CVarRef
  loc_62105C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_621061: FFreeVar var_9C = "": var_B0 = ""
  loc_62106A: FLdPr Me
  loc_62106D: MemLdRfVar from_stack_1.global_68
  loc_621070: CDargRef
  loc_621074: FLdPrThis
  loc_621075: VCallAd Control_ID_metxtHora
  loc_621078: FStAdFunc var_8C
  loc_62107B: FLdPr var_8C
  loc_62107E: LateIdSt
  loc_621083: FFree1Ad var_8C
  loc_621086: LitI2_Byte 0
  loc_621088: FStI2 var_86
  loc_62108B: Branch loc_621110
  loc_62108E: FLdPrThis
  loc_62108F: VCallAd Control_ID_metxtHora
  loc_621092: FStAdFunc var_8C
  loc_621095: FLdPr var_8C
  loc_621098: LateIdLdVar var_9C DispID_0 0
  loc_62109F: CStrVarTmp
  loc_6210A0: FStStrNoPop var_A0
  loc_6210A3: LitStr ":00"
  loc_6210A6: ConcatStr
  loc_6210A7: CVarStr var_B0
  loc_6210AA: ImpAdCallI2 Proc_53_13_638184()
  loc_6210AF: NotI4
  loc_6210B0: FFree1Str var_A0
  loc_6210B3: FFree1Ad var_8C
  loc_6210B6: FFreeVar var_9C = ""
  loc_6210BD: BranchF loc_62110B
  loc_6210C0: LitVar_Missing var_C4
  loc_6210C3: LitVar_Missing var_B0
  loc_6210C6: LitVar_Missing var_9C
  loc_6210C9: LitI4 &H40
  loc_6210CE: FLdPr Me
  loc_6210D1: MemLdRfVar from_stack_1.strRightTime
  loc_6210D4: CVarRef
  loc_6210D9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6210DE: FFreeVar var_9C = "": var_B0 = ""
  loc_6210E7: FLdPr Me
  loc_6210EA: MemLdRfVar from_stack_1.global_68
  loc_6210ED: CDargRef
  loc_6210F1: FLdPrThis
  loc_6210F2: VCallAd Control_ID_metxtHora
  loc_6210F5: FStAdFunc var_8C
  loc_6210F8: FLdPr var_8C
  loc_6210FB: LateIdSt
  loc_621100: FFree1Ad var_8C
  loc_621103: LitI2_Byte 0
  loc_621105: FStI2 var_86
  loc_621108: Branch loc_621110
  loc_62110B: LitI2_Byte &HFF
  loc_62110D: FStI2 var_86
  loc_621110: ExitProcCbHresult
End Function

Private Function Proc_18_34_61AD70() '61AD70
  'Data Table: 447224
  loc_61AC48: FLdPrThis
  loc_61AC49: VCallAd Control_ID_metxtMinutosAlarma
  loc_61AC4C: FStAdFunc var_8C
  loc_61AC4F: FLdPr var_8C
  loc_61AC52: LateIdLdVar var_9C DispID_22 0
  loc_61AC59: CStrVarTmp
  loc_61AC5A: CVarStr var_AC
  loc_61AC5D: ImpAdCallI2 IsNumeric()
  loc_61AC62: NotI4
  loc_61AC63: FFree1Ad var_8C
  loc_61AC66: FFreeVar var_9C = ""
  loc_61AC6D: BranchF loc_61ACBB
  loc_61AC70: LitVar_Missing var_FC
  loc_61AC73: LitVar_Missing var_AC
  loc_61AC76: LitVar_Missing var_9C
  loc_61AC79: LitI4 &H40
  loc_61AC7E: FLdPr Me
  loc_61AC81: MemLdRfVar from_stack_1.strRightMinute
  loc_61AC84: CVarRef
  loc_61AC89: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61AC8E: FFreeVar var_9C = "": var_AC = ""
  loc_61AC97: FLdPr Me
  loc_61AC9A: MemLdRfVar from_stack_1.global_72
  loc_61AC9D: CDargRef
  loc_61ACA1: FLdPrThis
  loc_61ACA2: VCallAd Control_ID_metxtMinutosAlarma
  loc_61ACA5: FStAdFunc var_8C
  loc_61ACA8: FLdPr var_8C
  loc_61ACAB: LateIdSt
  loc_61ACB0: FFree1Ad var_8C
  loc_61ACB3: LitI2_Byte 0
  loc_61ACB5: FStI2 var_86
  loc_61ACB8: Branch loc_61AD69
  loc_61ACBB: FLdPrThis
  loc_61ACBC: VCallAd Control_ID_metxtMinutosAlarma
  loc_61ACBF: FStAdFunc var_8C
  loc_61ACC2: FLdPr var_8C
  loc_61ACC5: LateIdLdVar var_9C DispID_22 0
  loc_61ACCC: CStrVarTmp
  loc_61ACCD: FStStrNoPop var_100
  loc_61ACD0: ImpAdCallFPR4 push Val()
  loc_61ACD5: FStFPR8 var_110
  loc_61ACD8: LitI2_Byte 1
  loc_61ACDA: CR8I2
  loc_61ACDB: FLdFPR8 var_110
  loc_61ACDE: CR8R8
  loc_61ACDF: LeR8
  loc_61ACE0: FLdPrThis
  loc_61ACE1: VCallAd Control_ID_metxtMinutosAlarma
  loc_61ACE4: FStAdFunc var_104
  loc_61ACE7: FLdPr var_104
  loc_61ACEA: LateIdLdVar var_AC DispID_22 0
  loc_61ACF1: CStrVarTmp
  loc_61ACF2: FStStrNoPop var_108
  loc_61ACF5: ImpAdCallFPR4 push Val()
  loc_61ACFA: CR8R8
  loc_61ACFB: LitI2_Byte &H63
  loc_61ACFD: CR8I2
  loc_61ACFE: LeR8
  loc_61ACFF: AndI4
  loc_61AD00: NotI4
  loc_61AD01: FFreeStr var_100 = ""
  loc_61AD08: FFreeAd var_8C = ""
  loc_61AD0F: FFreeVar var_9C = ""
  loc_61AD16: BranchF loc_61AD64
  loc_61AD19: LitVar_Missing var_FC
  loc_61AD1C: LitVar_Missing var_AC
  loc_61AD1F: LitVar_Missing var_9C
  loc_61AD22: LitI4 &H40
  loc_61AD27: FLdPr Me
  loc_61AD2A: MemLdRfVar from_stack_1.strRightMinute2
  loc_61AD2D: CVarRef
  loc_61AD32: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61AD37: FFreeVar var_9C = "": var_AC = ""
  loc_61AD40: FLdPr Me
  loc_61AD43: MemLdRfVar from_stack_1.global_72
  loc_61AD46: CDargRef
  loc_61AD4A: FLdPrThis
  loc_61AD4B: VCallAd Control_ID_metxtMinutosAlarma
  loc_61AD4E: FStAdFunc var_8C
  loc_61AD51: FLdPr var_8C
  loc_61AD54: LateIdSt
  loc_61AD59: FFree1Ad var_8C
  loc_61AD5C: LitI2_Byte 0
  loc_61AD5E: FStI2 var_86
  loc_61AD61: Branch loc_61AD69
  loc_61AD64: LitI2_Byte &HFF
  loc_61AD66: FStI2 var_86
  loc_61AD69: ExitProcCbHresult
End Function

Private Function Proc_18_35_68E320(arg_C) '68E320
  'Data Table: 447224
  loc_68DDBC: FLdRfVar var_BE
  loc_68DDBF: FLdRfVar var_88
  loc_68DDC2: FLdRfVar var_BC
  loc_68DDC5: ImpAdLdRf MemVar_74C760
  loc_68DDC8: NewIfNullPr Formx
  loc_68DDCB: from_stack_1v = Formx.global_4589716Get()
  loc_68DDD0: FLdPr var_BC
  loc_68DDD3:  = Formx.FontUnderline
  loc_68DDD8: FLdI2 var_BE
  loc_68DDDB: NotI4
  loc_68DDDC: FFree1Ad var_BC
  loc_68DDDF: BranchF loc_68DDF9
  loc_68DDE2: FLdRfVar var_D0
  loc_68DDE5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68DDEA: FLdRfVar var_D0
  loc_68DDED: CBoolVarNull
  loc_68DDEF: FFree1Var var_D0 = ""
  loc_68DDF2: BranchF loc_68DDF6
  loc_68DDF5: ExitProcHresult
  loc_68DDF6: Branch loc_68DDBC
  loc_68DDF9: LitI2_Byte 0
  loc_68DDFB: CUI1I2
  loc_68DDFD: FLdRfVar var_AE
  loc_68DE00: LitI2_Byte &H1F
  loc_68DE02: CUI1I2
  loc_68DE04: ForUI1 var_D4
  loc_68DE0A: FLdRfVar var_D8
  loc_68DE0D: FLdUI1
  loc_68DE11: CI2UI1
  loc_68DE13: FLdPrThis
  loc_68DE14: VCallAd Control_ID_cboSurtidor
  loc_68DE17: FStAdFunc var_BC
  loc_68DE1A: FLdPr var_BC
  loc_68DE1D: Set from_stack_2 = Me(from_stack_1)
  loc_68DE22: FLdPr var_D8
  loc_68DE25: Me.Clear
  loc_68DE2A: FFreeAd var_BC = ""
  loc_68DE31: FLdRfVar var_AE
  loc_68DE34: NextUI1
  loc_68DE3A: LitI2_Byte 0
  loc_68DE3C: CUI1I2
  loc_68DE3E: FStUI1 var_B2
  loc_68DE42: LitI2_Byte 1
  loc_68DE44: FStI2 var_8A
  loc_68DE47: LitVarI2 var_108, 1
  loc_68DE4C: FLdRfVar var_AC
  loc_68DE4F: LitVarI2 var_F8, 5
  loc_68DE54: ForVar var_128
  loc_68DE5A: LitI2_Byte &HFF
  loc_68DE5C: FStI2 var_B0
  loc_68DE5F: LitVarI2 var_108, 1
  loc_68DE64: FLdRfVar var_9C
  loc_68DE67: FLdRfVar var_BE
  loc_68DE6A: ImpAdLdRf MemVar_74A220
  loc_68DE6D: NewIfNullPr clsProducts
  loc_68DE70: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_68DE75: FLdI2 var_BE
  loc_68DE78: CVarI2 var_F8
  loc_68DE7B: ForVar var_148
  loc_68DE81: LitVarI2 var_D0, 6
  loc_68DE86: FLdI2 var_8A
  loc_68DE89: CI4UI1
  loc_68DE8A: FLdRfVar var_88
  loc_68DE8D: CVarRef
  loc_68DE92: FLdRfVar var_158
  loc_68DE95: ImpAdCallFPR4  = Mid(, , )
  loc_68DE9A: FLdRfVar var_158
  loc_68DE9D: FnCCurVar
  loc_68DE9F: CR8Cy
  loc_68DEA0: ImpAdLdFPR4 MemVar_74C2DC
  loc_68DEA3: DivR8
  loc_68DEA4: CCyR4
  loc_68DEA5: FLdRfVar var_AC
  loc_68DEA8: CI4Var
  loc_68DEAA: FLdRfVar var_9C
  loc_68DEAD: CI4Var
  loc_68DEAF: ImpAdLdRf MemVar_74C074
  loc_68DEB2: AryLdPr
  loc_68DEB5: MemStR8 global_0
  loc_68DEB8: FFreeVar var_D0 = "": var_158 = ""
  loc_68DEC1: FLdI2 var_8A
  loc_68DEC4: LitI2_Byte 6
  loc_68DEC6: AddI2
  loc_68DEC7: FStI2 var_8A
  loc_68DECA: FLdI2 var_B0
  loc_68DECD: FLdRfVar var_AC
  loc_68DED0: CI4Var
  loc_68DED2: FLdRfVar var_9C
  loc_68DED5: CI4Var
  loc_68DED7: ImpAdLdRf MemVar_74C074
  loc_68DEDA: AryLdPr
  loc_68DEDD: MemLdR8 global_0
  loc_68DEE0: LitI2_Byte 0
  loc_68DEE2: CR8I2
  loc_68DEE3: GtCyR8
  loc_68DEE4: AndI4
  loc_68DEE5: FStI2 var_B0
  loc_68DEE8: FLdRfVar var_9C
  loc_68DEEB: NextStepVar var_148
  loc_68DEF1: FLdI2 var_8A
  loc_68DEF4: LitI2_Byte &HA
  loc_68DEF6: FLdRfVar var_BE
  loc_68DEF9: ImpAdLdRf MemVar_74A220
  loc_68DEFC: NewIfNullPr clsProducts
  loc_68DEFF: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_68DF04: FLdI2 var_BE
  loc_68DF07: SubI2
  loc_68DF08: LitI2_Byte 6
  loc_68DF0A: MulI2
  loc_68DF0B: AddI2
  loc_68DF0C: FStI2 var_8A
  loc_68DF0F: FLdI2 var_B0
  loc_68DF12: BranchF loc_68E05A
  loc_68DF15: LitI2_Byte 0
  loc_68DF17: CUI1I2
  loc_68DF19: FLdRfVar var_AE
  loc_68DF1C: ImpAdLdUI1
  loc_68DF20: CI2UI1
  loc_68DF22: LitI2_Byte 1
  loc_68DF24: SubI2
  loc_68DF25: CUI1I2
  loc_68DF27: ForUI1 var_15C
  loc_68DF2D: FLdRfVar var_258
  loc_68DF30: LitVar_Missing var_254
  loc_68DF33: LitVar_Missing var_234
  loc_68DF36: LitVar_Missing var_214
  loc_68DF39: LitVar_Missing var_1F4
  loc_68DF3C: LitVar_Missing var_1D4
  loc_68DF3F: LitVar_Missing var_1B4
  loc_68DF42: LitVar_Missing var_194
  loc_68DF45: LitVar_Missing var_174
  loc_68DF48: LitVar_Missing var_158
  loc_68DF4B: LitVar_Missing var_D0
  loc_68DF4E: LitStr vbNullString
  loc_68DF51: FStStrCopy var_164
  loc_68DF54: FLdRfVar var_164
  loc_68DF57: LitI4 5
  loc_68DF5C: PopTmpLdAdStr var_160
  loc_68DF5F: LitI2_Byte &H18
  loc_68DF61: PopTmpLdAd2 var_BE
  loc_68DF64: ImpAdLdRf MemVar_74C7D0
  loc_68DF67: NewIfNullPr clsMsg
  loc_68DF6A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68DF6F: LitVar_Missing var_28C
  loc_68DF72: PopAdLdVar
  loc_68DF73: ILdRf var_258
  loc_68DF76: LitStr " "
  loc_68DF79: ConcatStr
  loc_68DF7A: CVarStr var_268
  loc_68DF7D: FLdRfVar var_AC
  loc_68DF80: ConcatVar var_278
  loc_68DF84: CStrVarVal var_27C
  loc_68DF88: FLdRfVar var_D8
  loc_68DF8B: FLdUI1
  loc_68DF8F: CI2UI1
  loc_68DF91: FLdPrThis
  loc_68DF92: VCallAd Control_ID_cboSurtidor
  loc_68DF95: FStAdFunc var_BC
  loc_68DF98: FLdPr var_BC
  loc_68DF9B: Set from_stack_2 = Me(from_stack_1)
  loc_68DFA0: FLdPr var_D8
  loc_68DFA3: Me.AddItem from_stack_1, from_stack_2
  loc_68DFA8: FFreeStr var_164 = "": var_258 = ""
  loc_68DFB1: FFreeAd var_BC = ""
  loc_68DFB8: FFreeVar var_D0 = "": var_158 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_268 = ""
  loc_68DFD3: FLdRfVar var_AC
  loc_68DFD6: LitVarI2 var_D0, 1
  loc_68DFDB: FLdUI1
  loc_68DFDF: CI2UI1
  loc_68DFE1: LitI2_Byte 1
  loc_68DFE3: AddI2
  loc_68DFE4: CI4UI1
  loc_68DFE5: ILdRf arg_C
  loc_68DFE8: CVarRef
  loc_68DFED: FLdRfVar var_158
  loc_68DFF0: ImpAdCallFPR4  = Mid(, , )
  loc_68DFF5: FLdRfVar var_158
  loc_68DFF8: CStrVarVal var_164
  loc_68DFFC: ImpAdCallFPR4 push Val()
  loc_68E001: CVarR8
  loc_68E005: HardType
  loc_68E006: EqVarBool
  loc_68E008: FFree1Str var_164
  loc_68E00B: FFreeVar var_D0 = ""
  loc_68E012: BranchF loc_68E042
  loc_68E015: FLdUI1
  loc_68E019: CI2UI1
  loc_68E01B: FLdRfVar var_D8
  loc_68E01E: FLdUI1
  loc_68E022: CI2UI1
  loc_68E024: FLdPrThis
  loc_68E025: VCallAd Control_ID_cboSurtidor
  loc_68E028: FStAdFunc var_BC
  loc_68E02B: FLdPr var_BC
  loc_68E02E: Set from_stack_2 = Me(from_stack_1)
  loc_68E033: FLdPr var_D8
  loc_68E036: Me.ListIndex = from_stack_1
  loc_68E03B: FFreeAd var_BC = ""
  loc_68E042: FLdRfVar var_AE
  loc_68E045: NextUI1
  loc_68E04B: FLdUI1
  loc_68E04F: CI2UI1
  loc_68E051: LitI2_Byte 1
  loc_68E053: AddI2
  loc_68E054: CUI1I2
  loc_68E056: FStUI1 var_B2
  loc_68E05A: FLdRfVar var_AC
  loc_68E05D: NextStepVar var_128
  loc_68E063: FLdPr Me
  loc_68E066: MemLdStr msEvento
  loc_68E069: FnLenStr
  loc_68E06A: LitI4 0
  loc_68E06F: GtI4
  loc_68E070: BranchF loc_68E0B2
  loc_68E073: LitVarI2 var_D0, 32
  loc_68E078: LitI4 &H13
  loc_68E07D: FLdPr Me
  loc_68E080: MemLdRfVar from_stack_1.msEvento
  loc_68E083: CVarRef
  loc_68E088: FLdRfVar var_158
  loc_68E08B: ImpAdCallFPR4  = Mid(, , )
  loc_68E090: FLdRfVar var_158
  loc_68E093: CStrVarTmp
  loc_68E094: FStStr var_B8
  loc_68E097: FFreeVar var_D0 = ""
  loc_68E09E: ILdRf var_B8
  loc_68E0A1: FStStrCopy var_164
  loc_68E0A4: FLdRfVar var_164
  loc_68E0A7: from_stack_2v = Proc_18_30_5E9064(from_stack_1v)
  loc_68E0AC: FFree1Str var_164
  loc_68E0AF: Branch loc_68E10B
  loc_68E0B2: LitVarStr var_E8, "1"
  loc_68E0B7: FStVarCopyObj var_D0
  loc_68E0BA: FLdRfVar var_D0
  loc_68E0BD: ImpAdLdUI1
  loc_68E0C1: CI4UI1
  loc_68E0C2: FLdRfVar var_158
  loc_68E0C5: ImpAdCallFPR4  = String(, )
  loc_68E0CA: FLdRfVar var_158
  loc_68E0CD: LitVarStr var_F8, "0"
  loc_68E0D2: FStVarCopyObj var_174
  loc_68E0D5: FLdRfVar var_174
  loc_68E0D8: LitI2_Byte &H28
  loc_68E0DA: ImpAdLdUI1
  loc_68E0DE: CI2UI1
  loc_68E0E0: SubI2
  loc_68E0E1: CI4UI1
  loc_68E0E2: FLdRfVar var_194
  loc_68E0E5: ImpAdCallFPR4  = String(, )
  loc_68E0EA: FLdRfVar var_194
  loc_68E0ED: ConcatVar var_1B4
  loc_68E0F1: CStrVarTmp
  loc_68E0F2: PopTmpLdAdStr
  loc_68E0F6: from_stack_2v = Proc_18_30_5E9064(from_stack_1v)
  loc_68E0FB: FFree1Str var_164
  loc_68E0FE: FFreeVar var_D0 = "": var_174 = "": var_158 = "": var_194 = ""
  loc_68E10B: LitI2_Byte 0
  loc_68E10D: CUI1I2
  loc_68E10F: FLdRfVar var_AE
  loc_68E112: ImpAdLdUI1
  loc_68E116: CI2UI1
  loc_68E118: LitI2_Byte 1
  loc_68E11A: SubI2
  loc_68E11B: CUI1I2
  loc_68E11D: ForUI1 var_290
  loc_68E123: LitI2_Byte &HFF
  loc_68E125: FLdRfVar var_D8
  loc_68E128: FLdUI1
  loc_68E12C: CI2UI1
  loc_68E12E: FLdPrThis
  loc_68E12F: VCallAd Control_ID_lblSurtidor
  loc_68E132: FStAdFunc var_BC
  loc_68E135: FLdPr var_BC
  loc_68E138: Set from_stack_2 = Me(from_stack_1)
  loc_68E13D: FLdPr var_D8
  loc_68E140: Me.Visible = from_stack_1b
  loc_68E145: FFreeAd var_BC = ""
  loc_68E14C: ImpAdLdI4 MemVar_74BED8
  loc_68E14F: LitStr " "
  loc_68E152: ConcatStr
  loc_68E153: FStStrNoPop var_164
  loc_68E156: FLdUI1
  loc_68E15A: CI2UI1
  loc_68E15C: LitI2_Byte 1
  loc_68E15E: AddI2
  loc_68E15F: CStrUI1
  loc_68E161: FStStrNoPop var_258
  loc_68E164: ConcatStr
  loc_68E165: FStStrNoPop var_27C
  loc_68E168: LitStr ":"
  loc_68E16B: ConcatStr
  loc_68E16C: FStStrNoPop var_294
  loc_68E16F: FLdRfVar var_D8
  loc_68E172: FLdUI1
  loc_68E176: CI2UI1
  loc_68E178: FLdPrThis
  loc_68E179: VCallAd Control_ID_lblSurtidor
  loc_68E17C: FStAdFunc var_BC
  loc_68E17F: FLdPr var_BC
  loc_68E182: Set from_stack_2 = Me(from_stack_1)
  loc_68E187: FLdPr var_D8
  loc_68E18A: Me.Caption = from_stack_1
  loc_68E18F: FFreeStr var_164 = "": var_258 = "": var_27C = ""
  loc_68E19A: FFreeAd var_BC = ""
  loc_68E1A1: LitI2_Byte &HFF
  loc_68E1A3: FLdRfVar var_D8
  loc_68E1A6: FLdUI1
  loc_68E1AA: CI2UI1
  loc_68E1AC: FLdPrThis
  loc_68E1AD: VCallAd Control_ID_cboSurtidor
  loc_68E1B0: FStAdFunc var_BC
  loc_68E1B3: FLdPr var_BC
  loc_68E1B6: Set from_stack_2 = Me(from_stack_1)
  loc_68E1BB: FLdPr var_D8
  loc_68E1BE: Me.Visible = from_stack_1b
  loc_68E1C3: FFreeAd var_BC = ""
  loc_68E1CA: FLdRfVar var_AE
  loc_68E1CD: NextUI1
  loc_68E1D3: ImpAdLdUI1
  loc_68E1D7: FLdRfVar var_AE
  loc_68E1DA: LitI2_Byte &H1F
  loc_68E1DC: CUI1I2
  loc_68E1DE: ForUI1 var_298
  loc_68E1E4: LitI2_Byte 0
  loc_68E1E6: FLdRfVar var_D8
  loc_68E1E9: FLdUI1
  loc_68E1ED: CI2UI1
  loc_68E1EF: FLdPrThis
  loc_68E1F0: VCallAd Control_ID_lblSurtidor
  loc_68E1F3: FStAdFunc var_BC
  loc_68E1F6: FLdPr var_BC
  loc_68E1F9: Set from_stack_2 = Me(from_stack_1)
  loc_68E1FE: FLdPr var_D8
  loc_68E201: Me.Visible = from_stack_1b
  loc_68E206: FFreeAd var_BC = ""
  loc_68E20D: LitI2_Byte 0
  loc_68E20F: FLdRfVar var_D8
  loc_68E212: FLdUI1
  loc_68E216: CI2UI1
  loc_68E218: FLdPrThis
  loc_68E219: VCallAd Control_ID_cboSurtidor
  loc_68E21C: FStAdFunc var_BC
  loc_68E21F: FLdPr var_BC
  loc_68E222: Set from_stack_2 = Me(from_stack_1)
  loc_68E227: FLdPr var_D8
  loc_68E22A: Me.Visible = from_stack_1b
  loc_68E22F: FFreeAd var_BC = ""
  loc_68E236: FLdRfVar var_AE
  loc_68E239: NextUI1
  loc_68E23F: LitI2_Byte 0
  loc_68E241: FStI2 var_B4
  loc_68E244: LitI2_Byte 0
  loc_68E246: CUI1I2
  loc_68E248: FLdRfVar var_AE
  loc_68E24B: ImpAdLdUI1
  loc_68E24F: CI2UI1
  loc_68E251: LitI2_Byte 1
  loc_68E253: SubI2
  loc_68E254: CUI1I2
  loc_68E256: ForUI1 var_29C
  loc_68E25C: FLdUI1
  loc_68E260: CI2UI1
  loc_68E262: LitI2_Byte 1
  loc_68E264: AddI2
  loc_68E265: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_68E26A: FLdUI1
  loc_68E26E: CI2UI1
  loc_68E270: LitI2_Byte 1
  loc_68E272: AddI2
  loc_68E273: CI4UI1
  loc_68E274: ImpAdLdRf MemVar_74C1F4
  loc_68E277: Ary1LdUI1
  loc_68E279: CI2UI1
  loc_68E27B: LitI2_Byte 1
  loc_68E27D: GtI2
  loc_68E27E: AndI4
  loc_68E27F: BranchF loc_68E316
  loc_68E282: FLdI2 var_B4
  loc_68E285: NotI4
  loc_68E286: BranchF loc_68E311
  loc_68E289: LitI2_Byte 0
  loc_68E28B: FLdRfVar var_D8
  loc_68E28E: FLdUI1
  loc_68E292: CI2UI1
  loc_68E294: LitI2_Byte 1
  loc_68E296: AddI2
  loc_68E297: FLdPrThis
  loc_68E298: VCallAd Control_ID_cboSurtidor
  loc_68E29B: FStAdFunc var_BC
  loc_68E29E: FLdPr var_BC
  loc_68E2A1: Set from_stack_2 = Me(from_stack_1)
  loc_68E2A6: FLdPr var_D8
  loc_68E2A9: Me.Enabled = from_stack_1b
  loc_68E2AE: FFreeAd var_BC = ""
  loc_68E2B5: FLdRfVar var_BE
  loc_68E2B8: FLdRfVar var_D8
  loc_68E2BB: FLdUI1
  loc_68E2BF: CI2UI1
  loc_68E2C1: FLdPrThis
  loc_68E2C2: VCallAd Control_ID_cboSurtidor
  loc_68E2C5: FStAdFunc var_BC
  loc_68E2C8: FLdPr var_BC
  loc_68E2CB: Set from_stack_2 = Me(from_stack_1)
  loc_68E2D0: FLdPr var_D8
  loc_68E2D3:  = Me.ListIndex
  loc_68E2D8: FLdI2 var_BE
  loc_68E2DB: FLdRfVar var_2A4
  loc_68E2DE: FLdUI1
  loc_68E2E2: CI2UI1
  loc_68E2E4: LitI2_Byte 1
  loc_68E2E6: AddI2
  loc_68E2E7: FLdPrThis
  loc_68E2E8: VCallAd Control_ID_cboSurtidor
  loc_68E2EB: FStAdFunc var_2A0
  loc_68E2EE: FLdPr var_2A0
  loc_68E2F1: Set from_stack_2 = Me(from_stack_1)
  loc_68E2F6: FLdPr var_2A4
  loc_68E2F9: Me.ListIndex = from_stack_1
  loc_68E2FE: FFreeAd var_BC = "": var_D8 = "": var_2A0 = ""
  loc_68E309: LitI2_Byte &HFF
  loc_68E30B: FStI2 var_B4
  loc_68E30E: Branch loc_68E316
  loc_68E311: LitI2_Byte 0
  loc_68E313: FStI2 var_B4
  loc_68E316: FLdRfVar var_AE
  loc_68E319: NextUI1
  loc_68E31F: ExitProcHresult
End Function
