VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{FE0065C0-1B7B-11CF-9D5300AA003C9CB6}#1.1#0"; "C:\WINDOWS\SysWow64\Comct232.ocx"
Object = "{C1A8AF28-1257-101B-8FB00020AF039CA3}#1.1#0"; "C:\WINDOWS\SysWow64\MCI32.OCX"
Object = "{02B5E320-7292-11CF-93D50020AF99504A}#1.0#0"; "C:\WINDOWS\SysWow64\MSCHART.OCX"
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWow64\COMCTL32.OCX"
Begin VB.Form Consola
  Caption = "  Consola"
  ForeColor = &H0&
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "Consola.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 540
  ClientWidth = 11970
  ClientHeight = 8565
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin Threed.SSCommand cmdRefresh
    Left = 8400
    Top = 7560
    Width = 975
    Height = 855
    Visible = 0   'False
    TabIndex = 31
    OleObjectBlob = "Consola.frx":030A
  End
  Begin Threed.SSCommand mezcla
    Left = 7320
    Top = 7680
    Width = 975
    Height = 855
    TabIndex = 237
    OleObjectBlob = "Consola.frx":0515
  End
  Begin Threed.SSPanel SSPanel3
    Left = 8340
    Top = 3240
    Width = 3555
    Height = 4215
    TabIndex = 44
    OleObjectBlob = "Consola.frx":1EC7
    Begin Threed.SSPanel SSPanel4
      Left = 120
      Top = 120
      Width = 3315
      Height = 3975
      TabIndex = 48
      OleObjectBlob = "Consola.frx":1F40
      Begin VB.PictureBox picAviso
        BackColor = &H0&
        Picture = "Consola.frx":1FB9
        ForeColor = &H80000008&
        Left = 2700
        Top = 90
        Width = 480
        Height = 480
        TabIndex = 195
        ScaleMode = 1
        AutoRedraw = False
        FontTransparent = True
        AutoSize = -1  'True
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin VB.Label PPU
        Caption = "0.000"
        BackColor = &H80FF&
        Left = 960
        Top = 3360
        Width = 1455
        Height = 375
        TabIndex = 51
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Digital"
          Size = 21.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label PPUP
        BackColor = &H80FF&
        ForeColor = &H2992FF&
        Left = 960
        Top = 3360
        Width = 1455
        Height = 375
        TabIndex = 261
        Alignment = 1 'Right Justify
        BeginProperty Font
          Name = "Digital"
          Size = 21.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Litros
        Caption = "0.000"
        BackColor = &H80FF&
        Left = 240
        Top = 2040
        Width = 2955
        Height = 615
        TabIndex = 50
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Digital"
          Size = 36
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label LitrosP
        Caption = "0000.00"
        BackColor = &H80FF&
        ForeColor = &H2992FF&
        Left = 240
        Top = 2040
        Width = 2955
        Height = 615
        TabIndex = 260
        Alignment = 1 'Right Justify
        BeginProperty Font
          Name = "Digital"
          Size = 36
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label EstaVenta
        Caption = "0.00"
        BackColor = &H80FF&
        Left = 240
        Top = 720
        Width = 2955
        Height = 615
        TabIndex = 49
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Digital"
          Size = 36
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label EstaVentaP
        Caption = "0000"
        BackColor = &H80FF&
        ForeColor = &H2992FF&
        Left = 240
        Top = 720
        Width = 2955
        Height = 615
        TabIndex = 259
        Alignment = 1 'Right Justify
        BeginProperty Font
          Name = "Digital"
          Size = 36
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label lblPrecioPorUnidad
        Caption = "Precio Por Unidad"
        ForeColor = &HFFFFFF&
        Left = 720
        Top = 3000
        Width = 1995
        Height = 240
        TabIndex = 54
        Alignment = 2 'Center
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
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
      Begin VB.Label lblLitrosRTM
        Caption = "Litros"
        ForeColor = &HFFFFFF&
        Left = 420
        Top = 1560
        Width = 2535
        Height = 240
        TabIndex = 53
        Alignment = 2 'Center
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
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
      Begin VB.Label lblTituloDisplayRTM
        Caption = "Esta Venta"
        ForeColor = &HFFFFFF&
        Left = 480
        Top = 180
        Width = 2535
        Height = 240
        TabIndex = 52
        Alignment = 2 'Center
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
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
      Begin VB.Shape Shape4
        Index = 0
        BackColor = &H80FF&
        BorderColor = &H80FF&
        Left = 240
        Top = 660
        Width = 2955
        Height = 105
        FillColor = &H80FF&
        BackStyle = 1 'Opaque
      End
      Begin VB.Shape Shape2
        BackColor = &H80FF&
        BorderColor = &H80FF&
        Left = 360
        Top = 2040
        Width = 2535
        Height = 45
        FillColor = &H80FF&
        BackStyle = 1 'Opaque
      End
      Begin VB.Shape Shape3
        BackColor = &H80FF&
        BorderColor = &H80FF&
        Left = 960
        Top = 3360
        Width = 1335
        Height = 165
        FillColor = &H80FF&
        BackStyle = 1 'Opaque
      End
      Begin VB.Shape Shape4
        Index = 1
        BackColor = &H80FF&
        BorderColor = &H80FF&
        Left = 240
        Top = 1920
        Width = 2955
        Height = 165
        FillColor = &H80FF&
        BackStyle = 1 'Opaque
      End
      Begin VB.Shape Shape4
        Index = 2
        BackColor = &H80FF&
        BorderColor = &H80FF&
        Left = 960
        Top = 3315
        Width = 1455
        Height = 165
        FillColor = &H80FF&
        BackStyle = 1 'Opaque
      End
    End
    Begin Threed.SSPanel PaneldeMensajes
      Left = 120
      Top = 120
      Width = 3255
      Height = 3975
      TabIndex = 135
      OleObjectBlob = "Consola.frx":23FB
    End
  End
  Begin Threed.SSCommand SSCommand5
    Left = 7320
    Top = 3240
    Width = 975
    Height = 855
    TabStop = 0   'False
    TabIndex = 22
    OleObjectBlob = "Consola.frx":246C
    ToolTipText = "Tanques"
  End
  Begin Threed.SSCommand SSCommand6
    Left = 7320
    Top = 4320
    Width = 975
    Height = 855
    TabStop = 0   'False
    TabIndex = 23
    OleObjectBlob = "Consola.frx":27BE
    ToolTipText = "Preset"
  End
  Begin Threed.SSCommand SSCommand7
    Left = 7320
    Top = 5400
    Width = 975
    Height = 855
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "Consola.frx":2B10
    ToolTipText = "Estadisticas"
  End
  Begin Threed.SSCommand SSCommand8
    Left = 7320
    Top = 6480
    Width = 975
    Height = 855
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "Consola.frx":00012F9A
    ToolTipText = "Ventas"
  End
  Begin Threed.SSCommand SSCommand9
    Left = 7320
    Top = 7560
    Width = 975
    Height = 855
    TabStop = 0   'False
    TabIndex = 26
    OleObjectBlob = "Consola.frx":00023424
    ToolTipText = "Configuracion"
  End
  Begin Threed.SSCommand Salir
    Left = 9360
    Top = 7560
    Width = 2535
    Height = 855
    TabStop = 0   'False
    TabIndex = 87
    OleObjectBlob = "Consola.frx":00023776
  End
  Begin VB.Timer TestTimer
    Enabled = 0   'False
    Interval = 10000
    Left = 2400
    Top = 2520
  End
  Begin VB.Timer Timer1
    Interval = 500
    Left = 840
    Top = 8190
  End
  Begin Threed.SSPanel SSPanel1
    Left = 60
    Top = 60
    Width = 11850
    Height = 3135
    TabIndex = 2
    OleObjectBlob = "Consola.frx":00023C46
    Begin ComCtl2.Animation ErrorAni
      Index = 0
      Left = 120
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 255
      OleObjectBlob = "Consola.frx":00023CBF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 3
      Left = 3960
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 242
      OleObjectBlob = "Consola.frx":00023CFF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 4
      Left = 5280
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 243
      OleObjectBlob = "Consola.frx":00023D3F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 5
      Left = 6600
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 244
      OleObjectBlob = "Consola.frx":00023D7F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 6
      Left = 7920
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 245
      OleObjectBlob = "Consola.frx":00023DBF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 7
      Left = 9240
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 246
      OleObjectBlob = "Consola.frx":00023DFF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 8
      Left = 120
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 247
      OleObjectBlob = "Consola.frx":00023E3F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 9
      Left = 1320
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 248
      OleObjectBlob = "Consola.frx":00023E7F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 10
      Left = 2640
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 249
      OleObjectBlob = "Consola.frx":00023EBF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 11
      Left = 3960
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 250
      OleObjectBlob = "Consola.frx":00023EFF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 12
      Left = 5280
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 251
      OleObjectBlob = "Consola.frx":00023F3F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 13
      Left = 6600
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 252
      OleObjectBlob = "Consola.frx":00023F7F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 14
      Left = 7920
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 253
      OleObjectBlob = "Consola.frx":00023FBF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 15
      Left = 9240
      Top = 1600
      Width = 420
      Height = 420
      TabIndex = 254
      OleObjectBlob = "Consola.frx":00023FFF
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 2
      Left = 2640
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 241
      OleObjectBlob = "Consola.frx":0002403F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin ComCtl2.Animation ErrorAni
      Index = 1
      Left = 1320
      Top = 50
      Width = 420
      Height = 420
      TabIndex = 240
      OleObjectBlob = "Consola.frx":0002407F
      ToolTipText = "Hacer doble click aqui para ver el mensaje"
    End
    Begin Threed.SSCommand Preautorizacion
      Left = 10680
      Top = 1560
      Width = 975
      Height = 735
      TabStop = 0   'False
      TabIndex = 18
      OleObjectBlob = "Consola.frx":000240BF
      ToolTipText = "Preautorizacion General"
    End
    Begin ComCtl2.Animation Animation1
      Index = 16
      Left = 9360
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 3
      OleObjectBlob = "Consola.frx":0002485F
    End
    Begin ComCtl2.Animation Animation1
      Index = 1
      Left = 120
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 4
      OleObjectBlob = "Consola.frx":0002489F
    End
    Begin ComCtl2.Animation Animation1
      Index = 2
      Left = 1440
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 5
      OleObjectBlob = "Consola.frx":000248DF
    End
    Begin ComCtl2.Animation Animation1
      Index = 4
      Left = 4080
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 6
      OleObjectBlob = "Consola.frx":0002491F
    End
    Begin ComCtl2.Animation Animation1
      Index = 5
      Left = 5400
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 7
      OleObjectBlob = "Consola.frx":0002495F
    End
    Begin ComCtl2.Animation Animation1
      Index = 6
      Left = 6720
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 8
      OleObjectBlob = "Consola.frx":0002499F
    End
    Begin ComCtl2.Animation Animation1
      Index = 7
      Left = 8040
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 9
      OleObjectBlob = "Consola.frx":000249DF
    End
    Begin ComCtl2.Animation Animation1
      Index = 8
      Left = 9360
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 10
      OleObjectBlob = "Consola.frx":00024A1F
    End
    Begin ComCtl2.Animation Animation1
      Index = 9
      Left = 120
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 11
      OleObjectBlob = "Consola.frx":00024A5F
    End
    Begin ComCtl2.Animation Animation1
      Index = 10
      Left = 1440
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 12
      OleObjectBlob = "Consola.frx":00024A9F
    End
    Begin ComCtl2.Animation Animation1
      Index = 11
      Left = 2760
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 13
      OleObjectBlob = "Consola.frx":00024ADF
    End
    Begin ComCtl2.Animation Animation1
      Index = 12
      Left = 4080
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 14
      OleObjectBlob = "Consola.frx":00024B1F
    End
    Begin ComCtl2.Animation Animation1
      Index = 13
      Left = 5400
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 15
      OleObjectBlob = "Consola.frx":00024B5F
      HelpContextID = 13
    End
    Begin ComCtl2.Animation Animation1
      Index = 14
      Left = 6720
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 16
      OleObjectBlob = "Consola.frx":00024B9F
    End
    Begin ComCtl2.Animation Animation1
      Index = 15
      Left = 8040
      Top = 1635
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 17
      OleObjectBlob = "Consola.frx":00024BDF
    End
    Begin Threed.SSCommand Emergencia
      Left = 10680
      Top = 840
      Width = 975
      Height = 735
      TabStop = 0   'False
      TabIndex = 19
      OleObjectBlob = "Consola.frx":00024C1F
      ToolTipText = "Emergencia General"
    End
    Begin Threed.SSCommand SSCommand3
      Left = 10680
      Top = 120
      Width = 975
      Height = 735
      TabStop = 0   'False
      TabIndex = 20
      OleObjectBlob = "Consola.frx":00024F71
    End
    Begin Threed.SSCommand BAutorizacion
      Left = 10680
      Top = 2280
      Width = 975
      Height = 735
      TabStop = 0   'False
      TabIndex = 88
      OleObjectBlob = "Consola.frx":000253FB
      ToolTipText = "Autorizacion General"
    End
    Begin ComCtl2.Animation Animation1
      Index = 3
      Left = 2775
      Top = 195
      Width = 975
      Height = 855
      TabStop = 0   'False
      TabIndex = 137
      OleObjectBlob = "Consola.frx":00025B9B
    End
    Begin MCI.MMControl Sonido
      Left = -540
      Top = 2640
      Width = 390
      Height = 300
      Visible = 0   'False
      TabIndex = 136
      OleObjectBlob = "Consola.frx":00025BDB
    End
    Begin VB.Shape fraSalesPending
      Index = 1
      BackColor = &HFF&
      Left = 0
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 16
      BackColor = &HFF&
      Left = 9285
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 15
      BackColor = &HFF&
      Left = 7965
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 8
      BackColor = &HFF&
      Left = 9270
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 7
      BackColor = &HFF&
      Left = 7965
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 14
      BackColor = &HFF&
      Left = 6660
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 13
      BackColor = &HFF&
      Left = 5325
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 12
      BackColor = &HFF&
      Left = 4005
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 11
      BackColor = &HFF&
      Left = 2685
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 10
      BackColor = &HFF&
      Left = 1365
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 9
      BackColor = &HFF&
      Left = 60
      Top = 1560
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 6
      BackColor = &HFF&
      Left = 6630
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 5
      BackColor = &HFF&
      Left = 5370
      Top = 180
      Width = 1035
      Height = 885
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 2
      BackColor = &HFF&
      Left = 1365
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 3
      BackColor = &HFF&
      Left = 2700
      Top = 120
      Width = 1155
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Shape fraSalesPending
      Index = 4
      BackColor = &HFF&
      Left = 4020
      Top = 120
      Width = 1125
      Height = 1005
      BorderStyle = 0 'Transparent
    End
    Begin VB.Label Label_Total
      Index = 6
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 6600
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 76
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Nro_Surtidor
      Caption = "6"
      Index = 6
      Left = 6720
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 132
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Label_Total
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 9240
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 86
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 7920
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 85
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 6600
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 84
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 5280
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 83
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 3960
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 82
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 2640
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 81
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 1320
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 80
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 0
      Top = 2400
      Width = 1290
      Height = 255
      TabIndex = 79
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 9240
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 78
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 7920
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 77
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label_Total
      Index = 5
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 5280
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 75
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Label_Total
      Index = 4
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 3960
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 74
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Label_Total
      Index = 3
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 2640
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 73
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Label_Total
      Index = 2
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 1320
      Top = 960
      Width = 1290
      Height = 255
      TabIndex = 72
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Label_Total
      Index = 1
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 0
      Top = 960
      Width = 1200
      Height = 255
      TabIndex = 71
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label Nro_Surtidor
      Caption = "16"
      Index = 16
      ForeColor = &H0&
      Left = 9360
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 70
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "15"
      Index = 15
      ForeColor = &H0&
      Left = 8040
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 69
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "14"
      Index = 14
      Left = 6720
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 68
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "13"
      Index = 13
      ForeColor = &H0&
      Left = 5400
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 67
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "12"
      Index = 12
      Left = 4080
      Top = 2700
      Width = 975
      Height = 315
      TabIndex = 66
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "11"
      Index = 11
      Left = 2760
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 65
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "10"
      Index = 10
      Left = 1440
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 64
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "9"
      Index = 9
      Left = 120
      Top = 2715
      Width = 975
      Height = 315
      TabIndex = 63
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "8"
      Index = 8
      ForeColor = &H0&
      Left = 9360
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 62
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "7"
      Index = 7
      ForeColor = &H0&
      Left = 8040
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 61
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "6"
      Index = 35
      Left = 3120
      Top = 3840
      Width = 975
      Height = 255
      TabIndex = 60
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "5"
      Index = 5
      Left = 5400
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 59
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "4"
      Index = 4
      Left = 4080
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 58
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "3"
      Index = 3
      ForeColor = &H0&
      Left = 2760
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 57
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "2"
      Index = 2
      Left = 1440
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Nro_Surtidor
      Caption = "1"
      Index = 1
      ForeColor = &H0&
      Left = 120
      Top = 1275
      Width = 975
      Height = 315
      TabIndex = 55
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
  Begin VB.Frame EmergenciaStatus
    Caption = "EmergenciaGeneral"
    BackColor = &HFF&
    Left = 60
    Top = 60
    Width = 10335
    Height = 3135
    Visible = 0   'False
    TabIndex = 89
    BorderStyle = 0 'None
    Begin VB.Label EmergenciaLabel
      Caption = "EMERGENCIA GENERAL EN CURSO ..."
      ForeColor = &HFF00&
      Left = 0
      Top = 1320
      Width = 10335
      Height = 615
      TabIndex = 90
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 24
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel Configuracion
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    Visible = 0   'False
    TabIndex = 33
    OleObjectBlob = "Consola.frx":00025C88
    Begin VB.Label Label6
      Caption = "Lts."
      Left = 4080
      Top = 2520
      Width = 495
      Height = 255
      TabIndex = 270
    End
    Begin VB.Label lblNiveldePrecio2
      Caption = "Nivel de Precio"
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3720
      Top = 1680
      Width = 3255
      Height = 315
      TabIndex = 197
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label lblNiveldePrecio
      Caption = "Nivel de Precio"
      BackColor = &H989080&
      Left = 1800
      Top = 1680
      Width = 1815
      Height = 255
      TabIndex = 196
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LManguera
      Caption = "D"
      Index = 3
      BackColor = &H989080&
      Left = 120
      Top = 4440
      Width = 855
      Height = 255
      TabIndex = 124
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LManguera
      Caption = "C"
      Index = 2
      BackColor = &H989080&
      Left = 120
      Top = 3960
      Width = 855
      Height = 255
      TabIndex = 123
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LManguera
      Caption = "B"
      Index = 1
      BackColor = &H989080&
      Left = 120
      Top = 3480
      Width = 855
      Height = 255
      TabIndex = 122
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LManguera
      Caption = "A"
      Index = 0
      BackColor = &H989080&
      Left = 120
      Top = 3000
      Width = 855
      Height = 255
      TabIndex = 121
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LabelAbreviaMang
      Caption = "Mang."
      BackColor = &H989080&
      Left = 120
      Top = 2520
      Width = 855
      Height = 255
      TabIndex = 120
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label12
      Caption = "PPU"
      Index = 1
      BackColor = &H989080&
      Left = 1080
      Top = 2520
      Width = 1815
      Height = 255
      TabIndex = 119
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label TPPU
      Caption = "120005"
      Index = 3
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 1080
      Top = 4440
      Width = 1815
      Height = 315
      TabIndex = 118
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TPPU
      Caption = "120005"
      Index = 2
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 1080
      Top = 3960
      Width = 1815
      Height = 315
      TabIndex = 117
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TPPU
      Caption = "120005"
      Index = 1
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 1080
      Top = 3480
      Width = 1815
      Height = 315
      TabIndex = 116
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TPPU
      Caption = "120005"
      Index = 0
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 1080
      Top = 3000
      Width = 1815
      Height = 315
      TabIndex = 115
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TMonto
      Caption = "11225"
      Index = 3
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 5160
      Top = 4440
      Width = 1815
      Height = 315
      TabIndex = 114
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TMonto
      Caption = "11225"
      Index = 2
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 5160
      Top = 3960
      Width = 1815
      Height = 315
      TabIndex = 113
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TMonto
      Caption = "11225"
      Index = 1
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 5160
      Top = 3480
      Width = 1815
      Height = 315
      TabIndex = 112
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TVolumen
      Caption = "120005"
      Index = 3
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3120
      Top = 4440
      Width = 1815
      Height = 315
      TabIndex = 111
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TVolumen
      Caption = "120005"
      Index = 2
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3120
      Top = 3960
      Width = 1815
      Height = 315
      TabIndex = 110
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TVolumen
      Caption = "120005"
      Index = 1
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3120
      Top = 3480
      Width = 1815
      Height = 315
      TabIndex = 109
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TVolumen
      Caption = "120005"
      Index = 0
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3120
      Top = 3000
      Width = 1815
      Height = 315
      TabIndex = 43
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label12
      Caption = "Total"
      Index = 0
      BackColor = &H989080&
      Left = 3600
      Top = 2520
      Width = 375
      Height = 210
      TabIndex = 42
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label TMonto
      Caption = "11225"
      Index = 0
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 5160
      Top = 3000
      Width = 1815
      Height = 315
      TabIndex = 41
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label10
      Caption = "Total $"
      BackColor = &H989080&
      Left = 5160
      Top = 2520
      Width = 1815
      Height = 255
      TabIndex = 40
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label TipoDespacho
      Caption = "Automático"
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3720
      Top = 1200
      Width = 3255
      Height = 315
      TabIndex = 39
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label lblPumpSaleMode
      Caption = "Despacho"
      BackColor = &H989080&
      Left = 1800
      Top = 1200
      Width = 1815
      Height = 255
      TabIndex = 38
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Modelo
      Caption = "MPD-8"
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3720
      Top = 720
      Width = 3255
      Height = 315
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label lblPumpModel
      Caption = "Modelo"
      BackColor = &H989080&
      Left = 1800
      Top = 720
      Width = 1815
      Height = 255
      TabIndex = 36
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Marca
      Caption = "Gilbarco"
      BackColor = &H0&
      ForeColor = &HFF00&
      Left = 3720
      Top = 240
      Width = 3255
      Height = 315
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label lblPumpBrand
      Caption = "Marca"
      BackColor = &H989080&
      Left = 1800
      Top = 240
      Width = 1815
      Height = 255
      TabIndex = 34
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image2
      Left = 240
      Top = 180
      Width = 1305
      Height = 1860
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin VB.PictureBox PMezcla
    BackColor = &HC0C0C0&
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    TabIndex = 224
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Begin VB.CommandButton Command1
      Index = 1
      BackColor = &HC0FFC0&
      Left = 120
      Top = 120
      Width = 1815
      Height = 615
      TabIndex = 232
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 2
      Left = 5160
      Top = 120
      Width = 1800
      Height = 615
      TabIndex = 231
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 3
      Left = 120
      Top = 840
      Width = 1815
      Height = 615
      TabIndex = 230
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 4
      Left = 5160
      Top = 840
      Width = 1815
      Height = 615
      TabIndex = 229
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 5
      Left = 120
      Top = 1560
      Width = 1815
      Height = 615
      TabIndex = 228
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 6
      Left = 5160
      Top = 1560
      Width = 1815
      Height = 615
      TabIndex = 227
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 7
      Left = 120
      Top = 2280
      Width = 1815
      Height = 615
      TabIndex = 226
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton Command1
      Index = 8
      Left = 5160
      Top = 2280
      Width = 1815
      Height = 615
      TabIndex = 225
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.Label Label7
      Caption = "50%"
      ForeColor = &H80FFFF&
      Left = 3840
      Top = 555
      Width = 1095
      Height = 495
      TabIndex = 236
      Alignment = 2 'Center
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
    Begin VB.Label Label3
      Caption = "50%"
      ForeColor = &H8000&
      Left = 2160
      Top = 555
      Width = 1095
      Height = 495
      TabIndex = 235
      Alignment = 2 'Center
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
    Begin VB.Label Label9
      Caption = "NORMAL"
      ForeColor = &H8000&
      Left = 1170
      Top = 4110
      Width = 2415
      Height = 855
      TabIndex = 234
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
    Begin VB.Label Label11
      Caption = "SUPER"
      ForeColor = &H80FFFF&
      Left = 3675
      Top = 4110
      Width = 2295
      Height = 855
      TabIndex = 233
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
    Begin VB.Image Image3
      Picture = "Consola.frx":00025D01
      Left = 960
      Top = 120
      Width = 5025
      Height = 4590
    End
  End
  Begin Threed.SSPanel Preset
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    Visible = 0   'False
    TabIndex = 27
    OleObjectBlob = "Consola.frx":00071223
    Begin Threed.SSCommand cmdBorrarTodo
      Left = 2640
      Top = 4560
      Width = 1095
      Height = 375
      TabIndex = 258
      OleObjectBlob = "Consola.frx":0007129D
    End
    Begin Threed.SSCommand cmdBorrarPreset
      Left = 1440
      Top = 4560
      Width = 1095
      Height = 375
      TabIndex = 257
      OleObjectBlob = "Consola.frx":000712E4
    End
    Begin Threed.SSCommand cmdReenviar
      Left = 240
      Top = 4560
      Width = 1095
      Height = 375
      TabIndex = 256
      OleObjectBlob = "Consola.frx":0007132D
    End
    Begin VB.ListBox lstPreset
      Left = 180
      Top = 3600
      Width = 3795
      Height = 900
      TabIndex = 199
      TabStop = 0   'False
      BeginProperty Font
        Name = "Courier New"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Volumen
      Left = 1200
      Top = 2400
      Width = 2775
      Height = 450
      TabIndex = 1
      MultiLine = -1  'True
      Alignment = 1 'Right Justify
      Locked = -1  'True
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
    Begin VB.TextBox Monto
      Left = 1200
      Top = 3000
      Width = 2775
      Height = 480
      TabIndex = 0
      MultiLine = -1  'True
      Alignment = 1 'Right Justify
      Locked = -1  'True
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
    Begin Threed.SSCommand Teclas
      Index = 0
      Left = 5160
      Top = 3120
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 91
      OleObjectBlob = "Consola.frx":00071371
    End
    Begin Threed.SSCommand Teclas
      Index = 1
      Left = 4200
      Top = 240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 92
      OleObjectBlob = "Consola.frx":000713CF
    End
    Begin Threed.SSCommand Teclas
      Index = 2
      Left = 5160
      Top = 240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 93
      OleObjectBlob = "Consola.frx":0007142D
    End
    Begin Threed.SSCommand Teclas
      Index = 3
      Left = 6120
      Top = 240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 94
      OleObjectBlob = "Consola.frx":0007148B
    End
    Begin Threed.SSCommand Teclas
      Index = 4
      Left = 4200
      Top = 1200
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 95
      OleObjectBlob = "Consola.frx":000714E9
    End
    Begin Threed.SSCommand Teclas
      Index = 5
      Left = 5160
      Top = 1200
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 96
      OleObjectBlob = "Consola.frx":00071547
    End
    Begin Threed.SSCommand Teclas
      Index = 6
      Left = 6120
      Top = 1200
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 97
      OleObjectBlob = "Consola.frx":000715A5
    End
    Begin Threed.SSCommand Teclas
      Index = 7
      Left = 4200
      Top = 2160
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 98
      OleObjectBlob = "Consola.frx":00071603
    End
    Begin Threed.SSCommand Teclas
      Index = 8
      Left = 5160
      Top = 2160
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 99
      OleObjectBlob = "Consola.frx":00071661
    End
    Begin Threed.SSCommand Borrar
      Left = 4200
      Top = 3120
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 100
      OleObjectBlob = "Consola.frx":000716BF
    End
    Begin Threed.SSCommand Teclas
      Index = 9
      Left = 6120
      Top = 2160
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 101
      OleObjectBlob = "Consola.frx":00071B6F
    End
    Begin Threed.SSCommand Punto
      Left = 6120
      Top = 3120
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 102
      OleObjectBlob = "Consola.frx":00071BCD
    End
    Begin Threed.SSCommand SSCommand4
      Index = 12
      Left = 4200
      Top = 4170
      Width = 2895
      Height = 855
      TabStop = 0   'False
      TabIndex = 103
      OleObjectBlob = "Consola.frx":00071C2B
    End
    Begin Threed.SSPanel BotonPreset
      Index = 3
      Left = 2160
      Top = 840
      Width = 1815
      Height = 495
      TabIndex = 108
      OleObjectBlob = "Consola.frx":00072531
    End
    Begin Threed.SSPanel BotonPreset
      Index = 1
      Left = 2160
      Top = 240
      Width = 1815
      Height = 495
      TabIndex = 106
      OleObjectBlob = "Consola.frx":000725AA
    End
    Begin Threed.SSPanel BotonPreset
      Index = 0
      Left = 120
      Top = 240
      Width = 1815
      Height = 495
      TabIndex = 105
      OleObjectBlob = "Consola.frx":00072623
    End
    Begin Threed.SSPanel BotonPreset
      Index = 2
      Left = 120
      Top = 840
      Width = 1815
      Height = 495
      TabIndex = 107
      OleObjectBlob = "Consola.frx":0007269C
    End
    Begin Threed.SSCommand SSTanqueLleno
      Left = 240
      Top = 1440
      Width = 3615
      Height = 855
      TabStop = 0   'False
      TabIndex = 262
      OleObjectBlob = "Consola.frx":00072715
    End
    Begin VB.Label lblPresetSchlumberger
      Caption = "Preset válido para cualquier producto."
      Left = 120
      Top = 360
      Width = 3855
      Height = 855
      TabIndex = 198
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 18
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "$"
      ForeColor = &H0&
      Left = 360
      Top = 3000
      Width = 735
      Height = 495
      TabIndex = 29
      BeginProperty Font
        Name = "Arial"
        Size = 18
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Lt."
      BackColor = &HC0C0C0&
      Left = 300
      Top = 2400
      Width = 735
      Height = 495
      TabIndex = 28
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 18
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel Tanques
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    Visible = 0   'False
    TabIndex = 21
    OleObjectBlob = "Consola.frx":00072BEB
    Begin VB.CommandButton prod2_mezcla
      Left = 3840
      Top = 120
      Width = 1335
      Height = 615
      TabIndex = 239
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
    Begin VB.CommandButton prod1_mezcla
      Left = 2040
      Top = 120
      Width = 1215
      Height = 615
      TabIndex = 238
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
    Begin Threed.SSPanel BotonTanque
      Index = 3
      Left = 5280
      Top = 840
      Width = 1815
      Height = 615
      TabIndex = 128
      OleObjectBlob = "Consola.frx":00072C64
    End
    Begin Threed.SSPanel BotonTanque
      Index = 2
      Left = 120
      Top = 840
      Width = 1815
      Height = 615
      TabIndex = 127
      OleObjectBlob = "Consola.frx":00072CDD
    End
    Begin Threed.SSPanel SSPanel5
      Left = 120
      Top = 4140
      Width = 6975
      Height = 945
      TabIndex = 133
      OleObjectBlob = "Consola.frx":00072D56
      Begin VB.PictureBox Picture1
        BackColor = &HC0C0C0&
        ForeColor = &H808080&
        Left = 120
        Top = 100
        Width = 6735
        Height = 735
        TabIndex = 202
        ScaleMode = 1
        AutoRedraw = False
        FontTransparent = True
        FillColor = &H404040&
        BorderStyle = 0 'None
        Begin VB.Label Vacio
          Caption = "120005"
          Index = 0
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 750
          Top = 30
          Width = 1080
          Height = 270
          TabIndex = 223
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Combustible
          Caption = "120005"
          Index = 0
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 720
          Top = 270
          Width = 1080
          Height = 270
          TabIndex = 222
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Agua
          Caption = "120005"
          Index = 0
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 750
          Top = 510
          Width = 1080
          Height = 270
          TabIndex = 221
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Vacio
          Caption = "120005"
          Index = 1
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 2970
          Top = 30
          Width = 1080
          Height = 270
          TabIndex = 220
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Vacio
          Caption = "120005"
          Index = 2
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 5130
          Top = 30
          Width = 1080
          Height = 375
          TabIndex = 219
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Combustible
          Caption = "120005"
          Index = 1
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 2970
          Top = 270
          Width = 1080
          Height = 270
          TabIndex = 218
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Combustible
          Caption = "120005"
          Index = 2
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 5130
          Top = 270
          Width = 1080
          Height = 270
          TabIndex = 217
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Agua
          Caption = "120005"
          Index = 1
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 2970
          Top = 510
          Width = 1080
          Height = 270
          TabIndex = 216
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label Agua
          Caption = "120005"
          Index = 2
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 5130
          Top = 510
          Width = 1080
          Height = 270
          TabIndex = 215
          Alignment = 1 'Right Justify
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 1
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 1950
          Top = 30
          Width = 600
          Height = 270
          TabIndex = 214
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 4
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 4230
          Top = 30
          Width = 600
          Height = 270
          TabIndex = 213
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 7
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 6330
          Top = 30
          Width = 600
          Height = 270
          TabIndex = 212
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 2
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 1950
          Top = 270
          Width = 600
          Height = 270
          TabIndex = 211
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 3
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 1950
          Top = 510
          Width = 600
          Height = 270
          TabIndex = 210
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 5
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 4230
          Top = 270
          Width = 600
          Height = 270
          TabIndex = 209
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 6
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 4230
          Top = 510
          Width = 600
          Height = 270
          TabIndex = 208
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 8
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 6330
          Top = 270
          Width = 600
          Height = 270
          TabIndex = 207
          BackStyle = 0 'Transparent
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
        Begin VB.Label lt
          Caption = "Lt."
          Index = 9
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 6330
          Top = 510
          Width = 600
          Height = 270
          TabIndex = 206
          BackStyle = 0 'Transparent
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
        Begin VB.Label Agua
          Caption = "Agua"
          Index = 3
          BackColor = &HC0C0FF&
          ForeColor = &HFF0000&
          Left = 30
          Top = 510
          Width = 1080
          Height = 270
          TabIndex = 205
          BackStyle = 0 'Transparent
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
        Begin VB.Label Combustible
          Caption = "Prod."
          Index = 3
          BackColor = &HC0C0FF&
          ForeColor = &HFF&
          Left = 30
          Top = 270
          Width = 1080
          Height = 270
          TabIndex = 204
          BackStyle = 0 'Transparent
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
        Begin VB.Label Vacio
          Caption = "Vacío"
          Index = 12
          BackColor = &HC0C0FF&
          ForeColor = &HFFFFFF&
          Left = 30
          Top = 30
          Width = 960
          Height = 270
          TabIndex = 203
          BackStyle = 0 'Transparent
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
    End
    Begin Threed.SSPanel BotonTanque
      Index = 0
      Left = 120
      Top = 120
      Width = 1815
      Height = 615
      TabIndex = 125
      OleObjectBlob = "Consola.frx":00072DCF
    End
    Begin Threed.SSPanel BotonTanque
      Index = 1
      Left = 5280
      Top = 120
      Width = 1815
      Height = 615
      TabIndex = 126
      OleObjectBlob = "Consola.frx":00072E48
    End
    Begin Threed.SSPanel SSPanel2
      Index = 0
      Left = 180
      Top = 1440
      Width = 6495
      Height = 1095
      TabIndex = 32
      OleObjectBlob = "Consola.frx":00072EC1
      Begin Threed.SSCommand CambioManifold
        Left = 240
        Top = 240
        Width = 615
        Height = 615
        TabStop = 0   'False
        TabIndex = 134
        OleObjectBlob = "Consola.frx":00072F3A
        ToolTipText = "Cambio Manifold"
      End
      Begin VB.Line Manifold01
        BorderColor = &HFF&
        X1 = 3360
        Y1 = 600
        X2 = 3000
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Line ConexionDerecha
        BorderColor = &HFF&
        X1 = 3600
        Y1 = 600
        X2 = 5520
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Line ConexionIzquierda
        BorderColor = &HFF&
        X1 = 1080
        Y1 = 600
        X2 = 3120
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Line Manifold02
        BorderColor = &HFF&
        X1 = 3360
        Y1 = 840
        X2 = 3360
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Line Manifold03
        BorderColor = &HFF&
        X1 = 3720
        Y1 = 600
        X2 = 3360
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Line Manifold00
        BorderColor = &HFF&
        X1 = 3360
        Y1 = 120
        X2 = 3360
        Y2 = 600
        BorderWidth = 4
      End
      Begin VB.Label LTanque
        Caption = "1"
        Index = 2
        ForeColor = &H0&
        Left = 5640
        Top = 840
        Width = 375
        Height = 375
        TabIndex = 131
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
      Begin VB.Label LTanque
        Caption = "1"
        Index = 1
        ForeColor = &H0&
        Left = 3480
        Top = 840
        Width = 375
        Height = 375
        TabIndex = 130
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
      Begin VB.Label LTanque
        Caption = "1"
        Index = 0
        ForeColor = &H0&
        Left = 1200
        Top = 840
        Width = 375
        Height = 375
        TabIndex = 129
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
      Begin VB.Line Conexion3
        BorderColor = &HFF&
        X1 = 5520
        Y1 = 600
        X2 = 5520
        Y2 = 1200
        BorderWidth = 4
      End
      Begin VB.Line Conexion2
        BorderColor = &HFF&
        X1 = 3360
        Y1 = 840
        X2 = 3360
        Y2 = 1440
        BorderWidth = 4
      End
      Begin VB.Line Conexion1
        BorderColor = &HFF&
        X1 = 1080
        Y1 = 600
        X2 = 1080
        Y2 = 1200
        BorderWidth = 4
      End
      Begin VB.Line Line1
        BorderColor = &HFF&
        X1 = 3360
        Y1 = 0
        X2 = 3360
        Y2 = 480
        BorderWidth = 4
      End
      Begin VB.Shape Gparalelo
        BorderColor = &HFF&
        Left = 3120
        Top = 360
        Width = 495
        Height = 495
        Shape = 3
        FillColor = &HFF&
        FillStyle = 0
      End
    End
    Begin MSChartLib.MSChart Tanque
      Index = 0
      Left = 180
      Top = 2040
      Width = 2175
      Height = 2655
      TabIndex = 266
      OleObjectBlob = "Consola.frx":0007498C
    End
    Begin MSChartLib.MSChart Tanque
      Index = 1
      Left = 2460
      Top = 2040
      Width = 2175
      Height = 2655
      TabIndex = 267
      OleObjectBlob = "Consola.frx":00076955
    End
    Begin MSChartLib.MSChart Tanque
      Index = 2
      Left = 4590
      Top = 2040
      Width = 2175
      Height = 2655
      TabIndex = 268
      OleObjectBlob = "Consola.frx":0007891E
    End
    Begin VB.Image Image4
      Picture = "Consola.frx":0007A8E7
      Left = 3180
      Top = 720
      Width = 690
      Height = 690
    End
    Begin VB.Image Image1
      Picture = "Consola.frx":0007C251
      Left = 3000
      Top = 360
      Width = 1065
      Height = 1080
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Line Line2
      BorderColor = &HFF&
      X1 = 2280
      Y1 = 720
      X2 = 3190
      Y2 = 1080
      BorderWidth = 3
    End
    Begin VB.Line Line3
      BorderColor = &HFF&
      X1 = 3840
      Y1 = 1080
      X2 = 4800
      Y2 = 720
      BorderWidth = 3
    End
  End
  Begin Threed.SSPanel Estadisticas
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    Visible = 0   'False
    TabIndex = 46
    OleObjectBlob = "Consola.frx":00089757
    Begin Threed.SSPanel SSPanel6
      Left = 300
      Top = 2160
      Width = 6615
      Height = 375
      TabIndex = 200
      OleObjectBlob = "Consola.frx":000897D0
      Begin VB.Label lblVentasPorProducto
        Caption = "Ventas por Producto para combustibles"
        Left = 240
        Top = 60
        Width = 6015
        Height = 255
        TabIndex = 201
        Alignment = 2 'Center
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
    Begin Threed.SSPanel SSPanel7
      Left = 1560
      Top = -3600
      Width = 6615
      Height = 375
      TabIndex = 139
      OleObjectBlob = "Consola.frx":00089851
      Begin VB.Label lblLitrosHorarios
        Caption = "Litros Horarios"
        Left = 0
        Top = 0
        Width = 6015
        Height = 255
        TabIndex = 140
        Alignment = 2 'Center
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
    Begin Threed.SSPanel SSPanel8
      Left = 300
      Top = 120
      Width = 6615
      Height = 375
      TabIndex = 47
      OleObjectBlob = "Consola.frx":000898D2
      Begin VB.Label Label2
        Caption = "Litros"
        Left = 1320
        Top = 60
        Width = 675
        Height = 285
        TabIndex = 269
        Alignment = 2 'Center
        AutoSize = -1  'True
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
      Begin VB.Label lblHorarios
        Caption = "Horarios para combustibles"
        Left = 2520
        Top = 60
        Width = 3195
        Height = 285
        TabIndex = 30
        Alignment = 2 'Center
        AutoSize = -1  'True
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
    Begin MSChartLib.MSChart PorProducto
      Left = 120
      Top = 2400
      Width = 6975
      Height = 2595
      TabStop = 0   'False
      TabIndex = 264
      OleObjectBlob = "Consola.frx":0008994B
    End
    Begin MSChartLib.MSChart LitrosHorarios
      Left = 120
      Top = 360
      Width = 6975
      Height = 1935
      TabStop = 0   'False
      TabIndex = 265
      OleObjectBlob = "Consola.frx":0008B3A5
    End
  End
  Begin Threed.SSPanel Ventas
    Left = 60
    Top = 3240
    Width = 7215
    Height = 5175
    Visible = 0   'False
    TabIndex = 45
    OleObjectBlob = "Consola.frx":0008D0F3
    Begin KeyStatLib.MhState EstadoNumLock
      Left = 240
      Top = 180
      Width = 435
      Height = 255
      Visible = 0   'False
      TabIndex = 138
      OleObjectBlob = "Consola.frx":0008D16C
    End
    Begin VB.Label lbNotPayedSales
      Caption = "Se llego al limite de ventas impagas."
      ForeColor = &HFF&
      Left = 480
      Top = 360
      Width = 6375
      Height = 375
      Visible = 0   'False
      TabIndex = 263
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
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
    Begin VB.Label Titulo
      Caption = "Importe"
      Index = 4
      BackColor = &HFF8080&
      Left = 5640
      Top = 780
      Width = 1455
      Height = 315
      TabIndex = 194
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Titulo
      Caption = "Volumen"
      Index = 3
      BackColor = &HFF8080&
      Left = 4380
      Top = 780
      Width = 1215
      Height = 315
      TabIndex = 193
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Titulo
      Caption = "PPU"
      Index = 2
      BackColor = &HFF8080&
      Left = 3360
      Top = 780
      Width = 975
      Height = 315
      TabIndex = 192
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label Titulo
      Caption = "Producto"
      Index = 1
      BackColor = &HFF8080&
      Left = 660
      Top = 780
      Width = 2655
      Height = 315
      TabIndex = 191
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "9"
      Index = 9
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 4500
      Width = 195
      Height = 315
      TabIndex = 190
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "8"
      Index = 8
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 4140
      Width = 195
      Height = 315
      TabIndex = 189
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "7"
      Index = 7
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 3780
      Width = 195
      Height = 315
      TabIndex = 188
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "6"
      Index = 6
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 3420
      Width = 195
      Height = 315
      TabIndex = 187
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "5"
      Index = 5
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 3060
      Width = 195
      Height = 315
      TabIndex = 186
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "4"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 2700
      Width = 195
      Height = 315
      TabIndex = 185
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "3"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 2340
      Width = 195
      Height = 315
      TabIndex = 184
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "2"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 1980
      Width = 195
      Height = 315
      TabIndex = 183
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "1"
      Index = 1
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 60
      Top = 1620
      Width = 195
      Height = 315
      TabIndex = 182
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label NumeroGrid
      Caption = "0"
      Index = 0
      BackColor = &HFF8080&
      ForeColor = &HFF00&
      Left = 60
      Top = 1260
      Width = 195
      Height = 315
      TabIndex = 181
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 9
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 4500
      Width = 1455
      Height = 315
      TabIndex = 180
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 9
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 4500
      Width = 1215
      Height = 315
      TabIndex = 179
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 9
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 4500
      Width = 975
      Height = 315
      TabIndex = 178
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 9
      Left = 300
      Top = 4500
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 9
      ForeColor = &HFF00&
      Left = 660
      Top = 4500
      Width = 2655
      Height = 315
      TabIndex = 177
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 8
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 4140
      Width = 1455
      Height = 315
      TabIndex = 176
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 8
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 4140
      Width = 1215
      Height = 315
      TabIndex = 175
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 8
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 4140
      Width = 975
      Height = 315
      TabIndex = 174
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 8
      Left = 300
      Top = 4140
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 8
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 660
      Top = 4140
      Width = 2655
      Height = 315
      TabIndex = 173
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 7
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 3780
      Width = 1455
      Height = 315
      TabIndex = 172
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 7
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 3780
      Width = 1215
      Height = 315
      TabIndex = 171
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 7
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 3780
      Width = 975
      Height = 315
      TabIndex = 170
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 7
      Left = 300
      Top = 3780
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 7
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 660
      Top = 3780
      Width = 2655
      Height = 315
      TabIndex = 169
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 6
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 3420
      Width = 1455
      Height = 315
      TabIndex = 168
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 6
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 3420
      Width = 1215
      Height = 315
      TabIndex = 167
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 6
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 3420
      Width = 975
      Height = 315
      TabIndex = 166
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 6
      Left = 300
      Top = 3420
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 6
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 660
      Top = 3420
      Width = 2655
      Height = 315
      TabIndex = 165
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 5
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 3060
      Width = 1455
      Height = 315
      TabIndex = 164
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 5
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 3060
      Width = 1215
      Height = 315
      TabIndex = 163
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 5
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 3060
      Width = 975
      Height = 315
      TabIndex = 162
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 5
      Left = 300
      Top = 3060
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 5
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 660
      Top = 3060
      Width = 2655
      Height = 315
      TabIndex = 161
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 2700
      Width = 1455
      Height = 315
      TabIndex = 160
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 2700
      Width = 1215
      Height = 315
      TabIndex = 159
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 2700
      Width = 975
      Height = 315
      TabIndex = 158
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 4
      Left = 300
      Top = 2700
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 660
      Top = 2700
      Width = 2655
      Height = 315
      TabIndex = 157
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 2340
      Width = 1455
      Height = 315
      TabIndex = 156
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 2340
      Width = 1215
      Height = 315
      TabIndex = 155
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 2340
      Width = 975
      Height = 315
      TabIndex = 154
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 3
      Left = 300
      Top = 2340
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 3
      BackColor = &H8000&
      ForeColor = &HFF00&
      Left = 660
      Top = 2340
      Width = 2655
      Height = 315
      TabIndex = 153
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 1980
      Width = 1455
      Height = 315
      TabIndex = 152
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 1980
      Width = 1215
      Height = 315
      TabIndex = 151
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 1980
      Width = 975
      Height = 315
      TabIndex = 150
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 2
      Left = 300
      Top = 1980
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 2
      BackColor = &H808000&
      ForeColor = &HFF00&
      Left = 660
      Top = 1980
      Width = 2655
      Height = 315
      TabIndex = 149
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 1
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 5640
      Top = 1620
      Width = 1455
      Height = 315
      TabIndex = 148
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 1
      BackColor = &HFF0000&
      ForeColor = &HFF00&
      Left = 4380
      Top = 1620
      Width = 1215
      Height = 315
      TabIndex = 147
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 1
      BackColor = &HC00000&
      ForeColor = &HFF00&
      Left = 3360
      Top = 1620
      Width = 975
      Height = 315
      TabIndex = 146
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 1
      Left = 300
      Top = 1620
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 1
      BackColor = &HFF8080&
      ForeColor = &HFF00&
      Left = 660
      Top = 1620
      Width = 2655
      Height = 315
      TabIndex = 145
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label ImporteGrid
      Caption = "Importe"
      Index = 0
      BackColor = &HFF&
      ForeColor = &HFF00&
      Left = 5640
      Top = 1260
      Width = 1455
      Height = 315
      TabIndex = 144
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label VolumenGrid
      Caption = "Volumen"
      Index = 0
      BackColor = &HFF&
      ForeColor = &HFF00&
      Left = 4380
      Top = 1260
      Width = 1215
      Height = 315
      TabIndex = 143
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label PPUGrid
      Caption = "PPU"
      Index = 0
      BackColor = &HFF&
      ForeColor = &HFF00&
      Left = 3360
      Top = 1260
      Width = 975
      Height = 315
      TabIndex = 142
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Image ImagenGrid
      Index = 0
      Left = 300
      Top = 1260
      Width = 315
      Height = 315
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label ProductoGrid
      Caption = "Producto"
      Index = 0
      BackColor = &HFF&
      ForeColor = &HFF00&
      Left = 660
      Top = 1260
      Width = 2655
      Height = 315
      TabIndex = 141
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label TituloVentas
      Caption = "Ultimas Ventas Surtidor 99"
      ForeColor = &H0&
      Left = 2280
      Top = 120
      Width = 2775
      Height = 240
      TabIndex = 104
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
  Begin ComctlLib.ImageList ImageList1
    OleObjectBlob = "Consola.frx":0008D1BC
    Left = 240
    Top = 8040
  End
  Begin VB.Menu M_PopUp
    Visible = 0   'False
    Caption = "M_PopUP"
    Begin VB.Menu Menu_Autorizacion
      Caption = "Autorizacion"
    End
    Begin VB.Menu Manu_Stop
      Caption = "Stop"
    End
    Begin VB.Menu Menu_StopGeneral
      Caption = "Stop General"
    End
    Begin VB.Menu Menu_PreAutorizacion
      Caption = "Pre-autorizacion"
    End
  End
  Begin VB.Menu Estado_Grilla
    Visible = 0   'False
    Caption = "Estado_Grilla"
    Begin VB.Menu Menu_Contado
      Caption = "C   =  Contado"
    End
    Begin VB.Menu Menu_FacturadoContado
      Caption = "FC = Facturado Contado"
    End
    Begin VB.Menu Menu_PruebaDeSurtidor
      Caption = "PC = Prueba de Surtidor"
    End
    Begin VB.Menu Menu_PruebaDeSurtidorSinRetorno
      Caption = "PS = Prueba de Surtidor sin Retorno"
    End
    Begin VB.Menu Menu_Tarjeta
      Caption = "T   = Tarjeta"
    End
    Begin VB.Menu Menu_FacturadoTarjeta
      Caption = "FT = Facturado Tarjeta"
    End
  End
  Begin VB.Menu mnuPreset
    Visible = 0   'False
    Caption = "M_Preset"
    Begin VB.Menu mnu_reenP
      Caption = "Reenviar Preset"
    End
    Begin VB.Menu mnu_borrarP
      Caption = "Borrar Preset"
    End
    Begin VB.Menu mnu_borrarL
      Caption = "Borrar Lista"
    End
  End
End

Attribute VB_Name = "Consola"

Public Surtidor_Actual As Byte
Public offset As Byte
Public sAutorizadosCTF As String
Public presetgrade As Byte
Public Prod2 As Boolean
Public PumpNumBK As Boolean
Public PlayName As String
Public Load_Console_Spain As Byte
Public esPagarVenta As Boolean
Public sID_Venta_CEM As String
Public sID_Turno_CEM As String


Private Function Animation1_UnknownEvent_8(arg_C) '5D9834
  'Data Table: 45B254
  loc_5D97FC: LitI2_Byte 0
  loc_5D97FE: FLdPr Me
  loc_5D9801: MemStI2 global_534
  loc_5D9804: FLdPr Me
  loc_5D9807: MemLdI2 global_200
  loc_5D980A: BranchF loc_5D981B
  loc_5D980D: ILdI2 arg_C
  loc_5D9810: PopTmpLdAd2 var_86
  loc_5D9813: Call Nro_Surtidor_Click(from_stack_1v)
  loc_5D9818: Branch loc_5D9831
  loc_5D981B: ILdI2 arg_C
  loc_5D981E: PopTmpLdAd2 var_86
  loc_5D9821: Call Nro_Surtidor_Click(from_stack_1v)
  loc_5D9826: ILdI2 arg_C
  loc_5D9829: PopTmpLdAd2 var_86
  loc_5D982C: Call Animation1_Click(from_stack_1v)
  loc_5D9831: ExitProcHresult
End Function

Private Sub Animation1_Click(arg_C) '65CB08
  'Data Table: 45B254
  loc_65C7E0: ImpAdCallFPR4 Beep()
  loc_65C7E5: ILdI2 arg_C
  loc_65C7E8: FLdPr Me
  loc_65C7EB: MemLdUI1 offset
  loc_65C7EF: CI2UI1
  loc_65C7F1: AddI2
  loc_65C7F2: CI4UI1
  loc_65C7F3: ImpAdLdRf MemVar_74A188
  loc_65C7F6: Ary1LdI2
  loc_65C7F7: NotI4
  loc_65C7F8: CVarBoolI2 var_108
  loc_65C7FC: LitVarI2 var_B8, 3
  loc_65C801: LitI4 1
  loc_65C806: ImpAdLdRf MemVar_74BF90
  loc_65C809: CVarRef
  loc_65C80E: FLdRfVar var_C8
  loc_65C811: ImpAdCallFPR4  = Mid(, , )
  loc_65C816: FLdRfVar var_C8
  loc_65C819: LitVarStr var_D8, "\\."
  loc_65C81E: HardType
  loc_65C81F: EqVar var_E8
  loc_65C823: NotVar var_F8
  loc_65C827: AndVar var_118
  loc_65C82B: CBoolVarNull
  loc_65C82D: FFreeVar var_B8 = "": var_C8 = ""
  loc_65C836: BranchF loc_65C83F
  loc_65C839: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_65C83E: ExitProcHresult
  loc_65C83F: FLdRfVar var_11A
  loc_65C842: ImpAdLdRf MemVar_74C6D8
  loc_65C845: NewIfNullPr CCEMLicence
  loc_65C848:  = CCEMLicence.Caption
  loc_65C84D: FLdI2 var_11A
  loc_65C850: BranchF loc_65C854
  loc_65C853: ExitProcHresult
  loc_65C854: ILdI2 arg_C
  loc_65C857: FLdPr Me
  loc_65C85A: MemLdUI1 offset
  loc_65C85E: CI2UI1
  loc_65C860: AddI2
  loc_65C861: CI4UI1
  loc_65C862: ImpAdLdRf MemVar_74C004
  loc_65C865: Ary1LdPr
  loc_65C866: MemLdUI1 global_43
  loc_65C86A: FStUI1 var_11C
  loc_65C86E: FLdUI1
  loc_65C872: LitI2_Byte &H70
  loc_65C874: EqI2
  loc_65C875: BranchT loc_65C897
  loc_65C878: FLdUI1
  loc_65C87C: LitI2_Byte &H10
  loc_65C87E: EqI2
  loc_65C87F: BranchT loc_65C897
  loc_65C882: FLdUI1
  loc_65C886: LitI2_Byte &H60
  loc_65C888: EqI2
  loc_65C889: BranchT loc_65C897
  loc_65C88C: FLdUI1
  loc_65C890: LitI2 192
  loc_65C893: EqI2
  loc_65C894: BranchF loc_65CA9C
  loc_65C897: LitVarI2 var_B8, 1
  loc_65C89C: LitI4 &HB
  loc_65C8A1: ImpAdLdI4 MemVar_74BEAC
  loc_65C8A4: ImpAdCallI2 Mid$(, , )
  loc_65C8A9: FStStrNoPop var_120
  loc_65C8AC: LitStr "1"
  loc_65C8AF: EqStr
  loc_65C8B1: LitVarI2 var_C8, 1
  loc_65C8B6: ILdI2 arg_C
  loc_65C8B9: FLdPr Me
  loc_65C8BC: MemLdUI1 offset
  loc_65C8C0: CI2UI1
  loc_65C8C2: AddI2
  loc_65C8C3: CI4UI1
  loc_65C8C4: FLdPr Me
  loc_65C8C7: MemLdRfVar from_stack_1.global_117
  loc_65C8CA: LdFixedStr
  loc_65C8CD: FStStrNoPop var_124
  loc_65C8D0: ImpAdCallI2 Mid$(, , )
  loc_65C8D5: FStStr var_128
  loc_65C8D8: ILdRf var_124
  loc_65C8DB: FLdPr Me
  loc_65C8DE: MemLdRfVar from_stack_1.global_117
  loc_65C8E1: StFixedStr
  loc_65C8E4: ILdRf var_128
  loc_65C8E7: LitStr "1"
  loc_65C8EA: EqStr
  loc_65C8EC: AndI4
  loc_65C8ED: ILdI2 arg_C
  loc_65C8F0: FLdPr Me
  loc_65C8F3: MemLdUI1 offset
  loc_65C8F7: CI2UI1
  loc_65C8F9: AddI2
  loc_65C8FA: CI4UI1
  loc_65C8FB: ImpAdLdRf MemVar_74C334
  loc_65C8FE: Ary1LdUI1
  loc_65C900: CI2UI1
  loc_65C902: LitI2_Byte 4
  loc_65C904: EqI2
  loc_65C905: AndI4
  loc_65C906: FFreeStr var_120 = "": var_124 = ""
  loc_65C90F: FFreeVar var_B8 = ""
  loc_65C916: BranchF loc_65C9FD
  loc_65C919: LitI2 192
  loc_65C91C: ILdI2 arg_C
  loc_65C91F: FLdPr Me
  loc_65C922: MemLdUI1 offset
  loc_65C926: CI2UI1
  loc_65C928: AddI2
  loc_65C929: CI4UI1
  loc_65C92A: ImpAdLdRf MemVar_74C004
  loc_65C92D: Ary1LdPr
  loc_65C92E: MemLdUI1 global_43
  loc_65C932: EqI2
  loc_65C933: BranchF loc_65C9CA
  loc_65C936: FLdRfVar var_11A
  loc_65C939: ILdI2 arg_C
  loc_65C93C: FLdPr Me
  loc_65C93F: MemLdUI1 offset
  loc_65C943: CI2UI1
  loc_65C945: AddI2
  loc_65C946: FLdRfVar var_88
  loc_65C949: FLdRfVar var_12C
  loc_65C94C: ImpAdLdRf MemVar_74C760
  loc_65C94F: NewIfNullPr Formx
  loc_65C952: from_stack_1v = Formx.global_4589716Get()
  loc_65C957: FLdPr var_12C
  loc_65C95A: Call 0.Method_arg_27C ()
  loc_65C95F: FFree1Ad var_12C
  loc_65C962: FLdI2 var_88
  loc_65C965: LitVarI2 var_B8, 1
  loc_65C96A: ILdI2 arg_C
  loc_65C96D: FLdPr Me
  loc_65C970: MemLdUI1 offset
  loc_65C974: CI2UI1
  loc_65C976: AddI2
  loc_65C977: CI4UI1
  loc_65C978: FLdPr Me
  loc_65C97B: MemLdStr sAutorizadosCTF
  loc_65C97E: ImpAdCallI2 Mid$(, , )
  loc_65C983: FStStrNoPop var_120
  loc_65C986: LitStr "1"
  loc_65C989: EqStr
  loc_65C98B: OrI4
  loc_65C98C: FFree1Str var_120
  loc_65C98F: FFree1Var var_B8 = ""
  loc_65C992: BranchF loc_65C9C7
  loc_65C995: FLdRfVar var_12E
  loc_65C998: LitStr "AURELIO"
  loc_65C99B: ILdI2 arg_C
  loc_65C99E: FLdPr Me
  loc_65C9A1: MemLdUI1 offset
  loc_65C9A5: CI2UI1
  loc_65C9A7: AddI2
  loc_65C9A8: CUI1I2
  loc_65C9AA: PopTmpLdAd1
  loc_65C9AE: FLdRfVar var_12C
  loc_65C9B1: ImpAdLdRf MemVar_74C760
  loc_65C9B4: NewIfNullPr Formx
  loc_65C9B7: from_stack_1v = Formx.global_4589716Get()
  loc_65C9BC: FLdPr var_12C
  loc_65C9C4: FFree1Ad var_12C
  loc_65C9C7: Branch loc_65C9FA
  loc_65C9CA: ILdI2 arg_C
  loc_65C9CD: FLdPr Me
  loc_65C9D0: MemLdUI1 offset
  loc_65C9D4: CI2UI1
  loc_65C9D6: AddI2
  loc_65C9D7: ImpAdLdRf MemVar_74D89C
  loc_65C9DA: NewIfNullPr frmContingencia
  loc_65C9DD: Call frmContingencia.nSurtidorPut(from_stack_1v)
  loc_65C9E2: LitVar_Missing var_A8
  loc_65C9E5: PopAdLdVar
  loc_65C9E6: LitVarI4
  loc_65C9EE: PopAdLdVar
  loc_65C9EF: ImpAdLdRf MemVar_74D89C
  loc_65C9F2: NewIfNullPr frmContingencia
  loc_65C9F5: frmContingencia.Show from_stack_1, from_stack_2
  loc_65C9FA: Branch loc_65CA99
  loc_65C9FD: ImpAdLdUI1
  loc_65CA01: CI2UI1
  loc_65CA03: LitI2_Byte 1
  loc_65CA05: EqI2
  loc_65CA06: BranchF loc_65CA20
  loc_65CA09: LitI2_Byte &H6B
  loc_65CA0B: PopTmpLdAd2 var_11A
  loc_65CA0E: ImpAdCallI2 Proc_94_7_603DD0()
  loc_65CA13: NotI4
  loc_65CA14: BranchF loc_65CA20
  loc_65CA17: LitI2_Byte &HFF
  loc_65CA19: FLdPr Me
  loc_65CA1C: MemStI2 global_534
  loc_65CA1F: ExitProcHresult
  loc_65CA20: ILdI2 arg_C
  loc_65CA23: FLdPr Me
  loc_65CA26: MemLdUI1 offset
  loc_65CA2A: CI2UI1
  loc_65CA2C: AddI2
  loc_65CA2D: CI4UI1
  loc_65CA2E: ImpAdLdRf MemVar_74C004
  loc_65CA31: Ary1LdPr
  loc_65CA32: MemLdUI1 global_43
  loc_65CA36: LitI2_Byte &H60
  loc_65CA38: EqI2
  loc_65CA39: FLdRfVar var_11A
  loc_65CA3C: ImpAdLdRf MemVar_74C6D8
  loc_65CA3F: NewIfNullPr CCEMLicence
  loc_65CA47: FLdI2 var_11A
  loc_65CA4A: LitI2_Byte &HFF
  loc_65CA4C: EqI2
  loc_65CA4D: AndI4
  loc_65CA4E: FLdRfVar var_12E
  loc_65CA51: ImpAdLdRf MemVar_74C6D8
  loc_65CA54: NewIfNullPr CCEMLicence
  loc_65CA5C: FLdI2 var_12E
  loc_65CA5F: LitI2_Byte &HFF
  loc_65CA61: EqI2
  loc_65CA62: AndI4
  loc_65CA63: BranchF loc_65CA67
  loc_65CA66: ExitProcHresult
  loc_65CA67: FLdRfVar var_12E
  loc_65CA6A: LitStr vbNullString
  loc_65CA6D: ILdI2 arg_C
  loc_65CA70: FLdPr Me
  loc_65CA73: MemLdUI1 offset
  loc_65CA77: CI2UI1
  loc_65CA79: AddI2
  loc_65CA7A: CUI1I2
  loc_65CA7C: PopTmpLdAd1
  loc_65CA80: FLdRfVar var_12C
  loc_65CA83: ImpAdLdRf MemVar_74C760
  loc_65CA86: NewIfNullPr Formx
  loc_65CA89: from_stack_1v = Formx.global_4589716Get()
  loc_65CA8E: FLdPr var_12C
  loc_65CA96: FFree1Ad var_12C
  loc_65CA99: Branch loc_65CB04
  loc_65CA9C: FLdUI1
  loc_65CAA0: LitI2 144
  loc_65CAA3: EqI2
  loc_65CAA4: BranchT loc_65CAB2
  loc_65CAA7: FLdUI1
  loc_65CAAB: LitI2 128
  loc_65CAAE: EqI2
  loc_65CAAF: BranchF loc_65CB04
  loc_65CAB2: ImpAdLdUI1
  loc_65CAB6: CI2UI1
  loc_65CAB8: LitI2_Byte 1
  loc_65CABA: EqI2
  loc_65CABB: BranchF loc_65CAD5
  loc_65CABE: LitI2_Byte &H6B
  loc_65CAC0: PopTmpLdAd2 var_11A
  loc_65CAC3: ImpAdCallI2 Proc_94_7_603DD0()
  loc_65CAC8: NotI4
  loc_65CAC9: BranchF loc_65CAD5
  loc_65CACC: LitI2_Byte &HFF
  loc_65CACE: FLdPr Me
  loc_65CAD1: MemStI2 global_534
  loc_65CAD4: ExitProcHresult
  loc_65CAD5: FLdRfVar var_12E
  loc_65CAD8: ILdI2 arg_C
  loc_65CADB: FLdPr Me
  loc_65CADE: MemLdUI1 offset
  loc_65CAE2: CI2UI1
  loc_65CAE4: AddI2
  loc_65CAE5: CUI1I2
  loc_65CAE7: PopTmpLdAd1
  loc_65CAEB: FLdRfVar var_12C
  loc_65CAEE: ImpAdLdRf MemVar_74C760
  loc_65CAF1: NewIfNullPr Formx
  loc_65CAF4: from_stack_1v = Formx.global_4589716Get()
  loc_65CAF9: FLdPr var_12C
  loc_65CAFC: Formx.ForeColor = from_stack_1
  loc_65CB01: FFree1Ad var_12C
  loc_65CB04: ExitProcHresult
End Sub

Private Sub Monto_GotFocus() '673010
  'Data Table: 45B254
  loc_672BF4: LitI2_Byte &HFF
  loc_672BF6: FLdPr Me
  loc_672BF9: MemStI2 global_188
  loc_672BFC: LitI2_Byte 0
  loc_672BFE: FLdPr Me
  loc_672C01: MemStI2 global_186
  loc_672C04: LitI4 &HFF00
  loc_672C09: FLdPrThis
  loc_672C0A: VCallAd Control_ID_Monto
  loc_672C0D: FStAdFunc var_90
  loc_672C10: FLdPr var_90
  loc_672C13: Me.ForeColor = from_stack_1
  loc_672C18: FFree1Ad var_90
  loc_672C1B: LitI4 &HFF0000
  loc_672C20: FLdPrThis
  loc_672C21: VCallAd Control_ID_Monto
  loc_672C24: FStAdFunc var_90
  loc_672C27: FLdPr var_90
  loc_672C2A: Me.BackColor = from_stack_1
  loc_672C2F: FFree1Ad var_90
  loc_672C32: LitI4 -2147483640
  loc_672C37: FLdPrThis
  loc_672C38: VCallAd Control_ID_Volumen
  loc_672C3B: FStAdFunc var_90
  loc_672C3E: FLdPr var_90
  loc_672C41: Me.ForeColor = from_stack_1
  loc_672C46: FFree1Ad var_90
  loc_672C49: LitI4 -2147483633
  loc_672C4E: FLdPrThis
  loc_672C4F: VCallAd Control_ID_Volumen
  loc_672C52: FStAdFunc var_90
  loc_672C55: FLdPr var_90
  loc_672C58: Me.BackColor = from_stack_1
  loc_672C5D: FFree1Ad var_90
  loc_672C60: FLdRfVar var_94
  loc_672C63: FLdPrThis
  loc_672C64: VCallAd Control_ID_Monto
  loc_672C67: FStAdFunc var_90
  loc_672C6A: FLdPr var_90
  loc_672C6D:  = Me.Text
  loc_672C72: ILdRf var_94
  loc_672C75: CI2Str
  loc_672C77: LitI2_Byte 0
  loc_672C79: EqI2
  loc_672C7A: FFree1Str var_94
  loc_672C7D: FFree1Ad var_90
  loc_672C80: BranchF loc_672C8B
  loc_672C83: Call Borrar_UnknownEvent_8()
  loc_672C88: Branch loc_672CA3
  loc_672C8B: FLdPr Me
  loc_672C8E: MemLdStr global_192
  loc_672C91: FLdPrThis
  loc_672C92: VCallAd Control_ID_Monto
  loc_672C95: FStAdFunc var_90
  loc_672C98: FLdPr var_90
  loc_672C9B: Me.Text = from_stack_1
  loc_672CA0: FFree1Ad var_90
  loc_672CA3: FLdRfVar var_94
  loc_672CA6: FLdPrThis
  loc_672CA7: VCallAd Control_ID_Volumen
  loc_672CAA: FStAdFunc var_90
  loc_672CAD: FLdPr var_90
  loc_672CB0:  = Me.Text
  loc_672CB5: ILdRf var_94
  loc_672CB8: FLdPr Me
  loc_672CBB: MemStStrCopy
  loc_672CBF: FFree1Str var_94
  loc_672CC2: FFree1Ad var_90
  loc_672CC5: FLdRfVar var_94
  loc_672CC8: FLdPrThis
  loc_672CC9: VCallAd Control_ID_Monto
  loc_672CCC: FStAdFunc var_90
  loc_672CCF: FLdPr var_90
  loc_672CD2:  = Me.Text
  loc_672CD7: LitStr vbNullString
  loc_672CDA: FStStrCopy var_A0
  loc_672CDD: FLdRfVar var_A0
  loc_672CE0: LitStr ","
  loc_672CE3: FStStrCopy var_9C
  loc_672CE6: FLdRfVar var_9C
  loc_672CE9: FLdZeroAd var_94
  loc_672CEC: PopTmpLdAdStr
  loc_672CF0: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_672CF5: FStStrNoPop var_A4
  loc_672CF8: ImpAdCallFPR4 push Val()
  loc_672CFD: FStFPR8 var_F4
  loc_672D00: LitI4 1
  loc_672D05: LitI4 1
  loc_672D0A: ImpAdLdRf MemVar_74C364
  loc_672D0D: CVarRef
  loc_672D12: FLdFPR8 var_F4
  loc_672D15: CVarR8
  loc_672D19: FLdRfVar var_E4
  loc_672D1C: ImpAdCallFPR4  = Format(, )
  loc_672D21: FLdRfVar var_E4
  loc_672D24: CStrVarVal var_E8
  loc_672D28: FLdPrThis
  loc_672D29: VCallAd Control_ID_Monto
  loc_672D2C: FStAdFunc var_EC
  loc_672D2F: FLdPr var_EC
  loc_672D32: Me.Text = from_stack_1
  loc_672D37: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_672D44: FFreeAd var_90 = ""
  loc_672D4B: FFreeVar var_C4 = ""
  loc_672D52: LitStr "0"
  loc_672D55: ImpAdCallFPR4 push Val()
  loc_672D5A: FStFPR8 var_F4
  loc_672D5D: LitI4 1
  loc_672D62: LitI4 1
  loc_672D67: LitVarStr var_D4, "#0.00"
  loc_672D6C: FStVarCopyObj var_E4
  loc_672D6F: FLdRfVar var_E4
  loc_672D72: FLdFPR8 var_F4
  loc_672D75: CVarR8
  loc_672D79: FLdRfVar var_104
  loc_672D7C: ImpAdCallFPR4  = Format(, )
  loc_672D81: FLdRfVar var_104
  loc_672D84: CStrVarVal var_94
  loc_672D88: FLdPrThis
  loc_672D89: VCallAd Control_ID_Volumen
  loc_672D8C: FStAdFunc var_90
  loc_672D8F: FLdPr var_90
  loc_672D92: Me.Text = from_stack_1
  loc_672D97: FFree1Str var_94
  loc_672D9A: FFree1Ad var_90
  loc_672D9D: FFreeVar var_C4 = "": var_E4 = ""
  loc_672DA6: FLdPr Me
  loc_672DA9: MemLdUI1 Surtidor_Actual
  loc_672DAD: ImpAdCallUI1  = Proc_167_8_60CBC8()
  loc_672DB3: CI2UI1
  loc_672DB5: FStI2 var_88
  loc_672DB8: FLdPr Me
  loc_672DBB: MemLdUI1 Surtidor_Actual
  loc_672DBF: ImpAdLdUI1
  loc_672DC3: LeUI1
  loc_672DC5: BranchF loc_672E85
  loc_672DC8: ImpAdLdUI1
  loc_672DCC: CI2UI1
  loc_672DCE: LitI2_Byte 3
  loc_672DD0: EqI2
  loc_672DD1: BranchF loc_672E2D
  loc_672DD4: LitI2_Byte &HFF
  loc_672DD6: FLdPrThis
  loc_672DD7: VCallAd Control_ID_lblPresetSchlumberger
  loc_672DDA: FStAdFunc var_90
  loc_672DDD: FLdPr var_90
  loc_672DE0: Me.Visible = from_stack_1b
  loc_672DE5: FFree1Ad var_90
  loc_672DE8: LitI2_Byte 1
  loc_672DEA: FLdRfVar var_86
  loc_672DED: FLdI2 var_88
  loc_672DF0: ForI2 var_108
  loc_672DF6: LitVar_FALSE
  loc_672DFA: PopAdLdVar
  loc_672DFB: FLdRfVar var_EC
  loc_672DFE: FLdI2 var_86
  loc_672E01: LitI2_Byte 1
  loc_672E03: SubI2
  loc_672E04: FLdPrThis
  loc_672E05: VCallAd Control_ID_BotonPreset
  loc_672E08: FStAdFunc var_90
  loc_672E0B: FLdPr var_90
  loc_672E0E: Set from_stack_2 = Me(from_stack_1)
  loc_672E13: FLdPr var_EC
  loc_672E16: LateIdSt
  loc_672E1B: FFreeAd var_90 = ""
  loc_672E22: FLdRfVar var_86
  loc_672E25: NextI2 var_108, loc_672DF6
  loc_672E2A: Branch loc_672E82
  loc_672E2D: LitI2_Byte 0
  loc_672E2F: FLdPrThis
  loc_672E30: VCallAd Control_ID_lblPresetSchlumberger
  loc_672E33: FStAdFunc var_90
  loc_672E36: FLdPr var_90
  loc_672E39: Me.Visible = from_stack_1b
  loc_672E3E: FFree1Ad var_90
  loc_672E41: LitI2_Byte 1
  loc_672E43: FLdRfVar var_86
  loc_672E46: FLdI2 var_88
  loc_672E49: ForI2 var_10C
  loc_672E4F: LitVar_TRUE var_B4
  loc_672E52: PopAdLdVar
  loc_672E53: FLdRfVar var_EC
  loc_672E56: FLdI2 var_86
  loc_672E59: LitI2_Byte 1
  loc_672E5B: SubI2
  loc_672E5C: FLdPrThis
  loc_672E5D: VCallAd Control_ID_BotonPreset
  loc_672E60: FStAdFunc var_90
  loc_672E63: FLdPr var_90
  loc_672E66: Set from_stack_2 = Me(from_stack_1)
  loc_672E6B: FLdPr var_EC
  loc_672E6E: LateIdSt
  loc_672E73: FFreeAd var_90 = ""
  loc_672E7A: FLdRfVar var_86
  loc_672E7D: NextI2 var_10C, loc_672E4F
  loc_672E82: Branch loc_672F3F
  loc_672E85: ImpAdLdUI1
  loc_672E89: CI2UI1
  loc_672E8B: LitI2_Byte 4
  loc_672E8D: EqI2
  loc_672E8E: BranchF loc_672EEA
  loc_672E91: LitI2_Byte &HFF
  loc_672E93: FLdPrThis
  loc_672E94: VCallAd Control_ID_lblPresetSchlumberger
  loc_672E97: FStAdFunc var_90
  loc_672E9A: FLdPr var_90
  loc_672E9D: Me.Visible = from_stack_1b
  loc_672EA2: FFree1Ad var_90
  loc_672EA5: LitI2_Byte 1
  loc_672EA7: FLdRfVar var_86
  loc_672EAA: FLdI2 var_88
  loc_672EAD: ForI2 var_110
  loc_672EB3: LitVar_FALSE
  loc_672EB7: PopAdLdVar
  loc_672EB8: FLdRfVar var_EC
  loc_672EBB: FLdI2 var_86
  loc_672EBE: LitI2_Byte 1
  loc_672EC0: SubI2
  loc_672EC1: FLdPrThis
  loc_672EC2: VCallAd Control_ID_BotonPreset
  loc_672EC5: FStAdFunc var_90
  loc_672EC8: FLdPr var_90
  loc_672ECB: Set from_stack_2 = Me(from_stack_1)
  loc_672ED0: FLdPr var_EC
  loc_672ED3: LateIdSt
  loc_672ED8: FFreeAd var_90 = ""
  loc_672EDF: FLdRfVar var_86
  loc_672EE2: NextI2 var_110, loc_672EB3
  loc_672EE7: Branch loc_672F3F
  loc_672EEA: LitI2_Byte 0
  loc_672EEC: FLdPrThis
  loc_672EED: VCallAd Control_ID_lblPresetSchlumberger
  loc_672EF0: FStAdFunc var_90
  loc_672EF3: FLdPr var_90
  loc_672EF6: Me.Visible = from_stack_1b
  loc_672EFB: FFree1Ad var_90
  loc_672EFE: LitI2_Byte 1
  loc_672F00: FLdRfVar var_86
  loc_672F03: FLdI2 var_88
  loc_672F06: ForI2 var_114
  loc_672F0C: LitVar_TRUE var_B4
  loc_672F0F: PopAdLdVar
  loc_672F10: FLdRfVar var_EC
  loc_672F13: FLdI2 var_86
  loc_672F16: LitI2_Byte 1
  loc_672F18: SubI2
  loc_672F19: FLdPrThis
  loc_672F1A: VCallAd Control_ID_BotonPreset
  loc_672F1D: FStAdFunc var_90
  loc_672F20: FLdPr var_90
  loc_672F23: Set from_stack_2 = Me(from_stack_1)
  loc_672F28: FLdPr var_EC
  loc_672F2B: LateIdSt
  loc_672F30: FFreeAd var_90 = ""
  loc_672F37: FLdRfVar var_86
  loc_672F3A: NextI2 var_114, loc_672F0C
  loc_672F3F: FLdI2 var_88
  loc_672F42: LitI2_Byte 1
  loc_672F44: AddI2
  loc_672F45: FLdRfVar var_86
  loc_672F48: LitI2_Byte 4
  loc_672F4A: ForI2 var_118
  loc_672F50: LitVar_FALSE
  loc_672F54: PopAdLdVar
  loc_672F55: FLdRfVar var_EC
  loc_672F58: FLdI2 var_86
  loc_672F5B: LitI2_Byte 1
  loc_672F5D: SubI2
  loc_672F5E: FLdPrThis
  loc_672F5F: VCallAd Control_ID_BotonPreset
  loc_672F62: FStAdFunc var_90
  loc_672F65: FLdPr var_90
  loc_672F68: Set from_stack_2 = Me(from_stack_1)
  loc_672F6D: FLdPr var_EC
  loc_672F70: LateIdSt
  loc_672F75: FFreeAd var_90 = ""
  loc_672F7C: FLdRfVar var_86
  loc_672F7F: NextI2 var_118, loc_672F50
  loc_672F84: LitI2_Byte 1
  loc_672F86: FLdRfVar var_86
  loc_672F89: FLdI2 var_88
  loc_672F8C: ForI2 var_11C
  loc_672F92: FLdRfVar var_94
  loc_672F95: FLdPr Me
  loc_672F98: MemLdUI1 Surtidor_Actual
  loc_672F9C: CI4UI1
  loc_672F9D: FLdI2 var_86
  loc_672FA0: LitI2_Byte 1
  loc_672FA2: SubI2
  loc_672FA3: CI4UI1
  loc_672FA4: ImpAdLdRf MemVar_74C12C
  loc_672FA7: AryLdPr
  loc_672FAA: MemLdUI1 global_0
  loc_672FAE: CI2UI1
  loc_672FB0: ImpAdLdRf MemVar_74A220
  loc_672FB3: NewIfNullPr clsProducts
  loc_672FBB: FLdZeroAd var_94
  loc_672FBE: CVarStr var_C4
  loc_672FC1: PopAdLdVar
  loc_672FC2: FLdRfVar var_EC
  loc_672FC5: FLdI2 var_86
  loc_672FC8: LitI2_Byte 1
  loc_672FCA: SubI2
  loc_672FCB: FLdPrThis
  loc_672FCC: VCallAd Control_ID_BotonPreset
  loc_672FCF: FStAdFunc var_90
  loc_672FD2: FLdPr var_90
  loc_672FD5: Set from_stack_2 = Me(from_stack_1)
  loc_672FDA: FLdPr var_EC
  loc_672FDD: LateIdSt
  loc_672FE2: FFreeAd var_90 = ""
  loc_672FE9: FFree1Var var_C4 = ""
  loc_672FEC: FLdRfVar var_86
  loc_672FEF: NextI2 var_11C, loc_672F92
  loc_672FF4: FLdPr Me
  loc_672FF7: MemLdUI1 presetgrade
  loc_672FFB: CI2UI1
  loc_672FFD: FLdI2 var_88
  loc_673000: GtI2
  loc_673001: BranchF loc_67300E
  loc_673004: LitI2_Byte 0
  loc_673006: PopTmpLdAd2 var_11E
  loc_673009: Call BotonPreset_UnknownEvent_8()
  loc_67300E: ExitProcHresult
End Sub

Private Sub Monto_LostFocus() '686848
  'Data Table: 45B254
  loc_68644C: FLdPrThis
  loc_68644D: VCallAd Control_ID_Preset
  loc_686450: FStAdFunc var_88
  loc_686453: FLdPr var_88
  loc_686456: LateIdLdVar var_98 DispID_7 -32767
  loc_68645D: CBoolVar
  loc_68645F: CVarBoolI2 var_E0
  loc_686463: FLdRfVar var_A0
  loc_686466: FLdRfVar var_9C
  loc_686469: ImpAdLdRf MemVar_7520D4
  loc_68646C: NewIfNullPr Global
  loc_68646F:  = Global.Screen
  loc_686474: FLdPr var_9C
  loc_686477:  = Screen.ActiveControl
  loc_68647C: FLdPr var_A0
  loc_68647F: LateMemLdVar
  loc_686484: LitVarStr var_B0, "Teclas"
  loc_686489: HardType
  loc_68648A: NeVar var_D0
  loc_68648E: AndVar var_F0
  loc_686492: FLdRfVar var_F8
  loc_686495: FLdRfVar var_F4
  loc_686498: ImpAdLdRf MemVar_7520D4
  loc_68649B: NewIfNullPr Global
  loc_68649E:  = Global.Screen
  loc_6864A3: FLdPr var_F4
  loc_6864A6:  = Screen.ActiveControl
  loc_6864AB: FLdPr var_F8
  loc_6864AE: LateMemLdVar
  loc_6864B3: LitVarStr var_108, "Punto"
  loc_6864B8: HardType
  loc_6864B9: NeVar var_128
  loc_6864BD: AndVar var_138
  loc_6864C1: FLdRfVar var_140
  loc_6864C4: FLdRfVar var_13C
  loc_6864C7: ImpAdLdRf MemVar_7520D4
  loc_6864CA: NewIfNullPr Global
  loc_6864CD:  = Global.Screen
  loc_6864D2: FLdPr var_13C
  loc_6864D5:  = Screen.ActiveControl
  loc_6864DA: FLdPr var_140
  loc_6864DD: LateMemLdVar
  loc_6864E2: LitVarStr var_150, "Borrar"
  loc_6864E7: HardType
  loc_6864E8: NeVar var_170
  loc_6864EC: AndVar var_180
  loc_6864F0: FLdRfVar var_188
  loc_6864F3: FLdRfVar var_184
  loc_6864F6: ImpAdLdRf MemVar_7520D4
  loc_6864F9: NewIfNullPr Global
  loc_6864FC:  = Global.Screen
  loc_686501: FLdPr var_184
  loc_686504:  = Screen.ActiveControl
  loc_686509: FLdPr var_188
  loc_68650C: LateMemLdVar
  loc_686511: LitVarStr var_198, "SSCommand4"
  loc_686516: HardType
  loc_686517: NeVar var_1B8
  loc_68651B: AndVar var_1C8
  loc_68651F: FLdRfVar var_1D0
  loc_686522: FLdRfVar var_1CC
  loc_686525: ImpAdLdRf MemVar_7520D4
  loc_686528: NewIfNullPr Global
  loc_68652B:  = Global.Screen
  loc_686530: FLdPr var_1CC
  loc_686533:  = Screen.ActiveControl
  loc_686538: FLdPr var_1D0
  loc_68653B: LateMemLdVar
  loc_686540: LitVarStr var_1E0, "Nro_Surtidor"
  loc_686545: HardType
  loc_686546: NeVar var_200
  loc_68654A: AndVar var_210
  loc_68654E: FLdRfVar var_218
  loc_686551: FLdRfVar var_214
  loc_686554: ImpAdLdRf MemVar_7520D4
  loc_686557: NewIfNullPr Global
  loc_68655A:  = Global.Screen
  loc_68655F: FLdPr var_214
  loc_686562:  = Screen.ActiveControl
  loc_686567: FLdPr var_218
  loc_68656A: LateMemLdVar
  loc_68656F: LitVarStr var_228, "Animation1"
  loc_686574: HardType
  loc_686575: NeVar var_248
  loc_686579: AndVar var_258
  loc_68657D: FLdRfVar var_260
  loc_686580: FLdRfVar var_25C
  loc_686583: ImpAdLdRf MemVar_7520D4
  loc_686586: NewIfNullPr Global
  loc_686589:  = Global.Screen
  loc_68658E: FLdPr var_25C
  loc_686591:  = Screen.ActiveControl
  loc_686596: FLdPr var_260
  loc_686599: LateMemLdVar
  loc_68659E: LitVarStr var_270, "BAutorizacion"
  loc_6865A3: HardType
  loc_6865A4: NeVar var_290
  loc_6865A8: AndVar var_2A0
  loc_6865AC: FLdRfVar var_2A8
  loc_6865AF: FLdRfVar var_2A4
  loc_6865B2: ImpAdLdRf MemVar_7520D4
  loc_6865B5: NewIfNullPr Global
  loc_6865B8:  = Global.Screen
  loc_6865BD: FLdPr var_2A4
  loc_6865C0:  = Screen.ActiveControl
  loc_6865C5: FLdPr var_2A8
  loc_6865C8: LateMemLdVar
  loc_6865CD: LitVarStr var_2B8, "Preautorizacion"
  loc_6865D2: HardType
  loc_6865D3: NeVar var_2D8
  loc_6865D7: AndVar var_2E8
  loc_6865DB: FLdRfVar var_2F0
  loc_6865DE: FLdRfVar var_2EC
  loc_6865E1: ImpAdLdRf MemVar_7520D4
  loc_6865E4: NewIfNullPr Global
  loc_6865E7:  = Global.Screen
  loc_6865EC: FLdPr var_2EC
  loc_6865EF:  = Screen.ActiveControl
  loc_6865F4: FLdPr var_2F0
  loc_6865F7: LateMemLdVar
  loc_6865FC: LitVarStr var_300, "Emergencia"
  loc_686601: HardType
  loc_686602: NeVar var_320
  loc_686606: AndVar var_330
  loc_68660A: FLdRfVar var_338
  loc_68660D: FLdRfVar var_334
  loc_686610: ImpAdLdRf MemVar_7520D4
  loc_686613: NewIfNullPr Global
  loc_686616:  = Global.Screen
  loc_68661B: FLdPr var_334
  loc_68661E:  = Screen.ActiveControl
  loc_686623: FLdPr var_338
  loc_686626: LateMemLdVar
  loc_68662B: LitVarStr var_348, "SSCommand3"
  loc_686630: HardType
  loc_686631: NeVar var_368
  loc_686635: AndVar var_378
  loc_686639: FLdRfVar var_380
  loc_68663C: FLdRfVar var_37C
  loc_68663F: ImpAdLdRf MemVar_7520D4
  loc_686642: NewIfNullPr Global
  loc_686645:  = Global.Screen
  loc_68664A: FLdPr var_37C
  loc_68664D:  = Screen.ActiveControl
  loc_686652: FLdPr var_380
  loc_686655: LateMemLdVar
  loc_68665A: LitVarStr var_390, "Preset"
  loc_68665F: HardType
  loc_686660: NeVar var_3B0
  loc_686664: AndVar var_3C0
  loc_686668: FLdRfVar var_3C8
  loc_68666B: FLdRfVar var_3C4
  loc_68666E: ImpAdLdRf MemVar_7520D4
  loc_686671: NewIfNullPr Global
  loc_686674:  = Global.Screen
  loc_686679: FLdPr var_3C4
  loc_68667C:  = Screen.ActiveControl
  loc_686681: FLdPr var_3C8
  loc_686684: LateMemLdVar
  loc_686689: LitVarStr var_3D8, "SSPanel1"
  loc_68668E: HardType
  loc_68668F: NeVar var_3F8
  loc_686693: AndVar var_408
  loc_686697: FLdRfVar var_410
  loc_68669A: FLdRfVar var_40C
  loc_68669D: ImpAdLdRf MemVar_7520D4
  loc_6866A0: NewIfNullPr Global
  loc_6866A3:  = Global.Screen
  loc_6866A8: FLdPr var_40C
  loc_6866AB:  = Screen.ActiveControl
  loc_6866B0: FLdPr var_410
  loc_6866B3: LateMemLdVar
  loc_6866B8: LitVarStr var_420, "SSTanqueLleno"
  loc_6866BD: HardType
  loc_6866BE: NeVar var_440
  loc_6866C2: AndVar var_450
  loc_6866C6: FLdRfVar var_458
  loc_6866C9: FLdRfVar var_454
  loc_6866CC: ImpAdLdRf MemVar_7520D4
  loc_6866CF: NewIfNullPr Global
  loc_6866D2:  = Global.Screen
  loc_6866D7: FLdPr var_454
  loc_6866DA:  = Screen.ActiveControl
  loc_6866DF: FLdPr var_458
  loc_6866E2: LateMemLdVar
  loc_6866E7: LitVarStr var_468, "cmdReenviar"
  loc_6866EC: HardType
  loc_6866ED: NeVar var_488
  loc_6866F1: AndVar var_498
  loc_6866F5: FLdRfVar var_4A0
  loc_6866F8: FLdRfVar var_49C
  loc_6866FB: ImpAdLdRf MemVar_7520D4
  loc_6866FE: NewIfNullPr Global
  loc_686701:  = Global.Screen
  loc_686706: FLdPr var_49C
  loc_686709:  = Screen.ActiveControl
  loc_68670E: FLdPr var_4A0
  loc_686711: LateMemLdVar
  loc_686716: LitVarStr var_4B0, "cmdBorrarPreset"
  loc_68671B: HardType
  loc_68671C: NeVar var_4D0
  loc_686720: AndVar var_4E0
  loc_686724: FLdRfVar var_4E8
  loc_686727: FLdRfVar var_4E4
  loc_68672A: ImpAdLdRf MemVar_7520D4
  loc_68672D: NewIfNullPr Global
  loc_686730:  = Global.Screen
  loc_686735: FLdPr var_4E4
  loc_686738:  = Screen.ActiveControl
  loc_68673D: FLdPr var_4E8
  loc_686740: LateMemLdVar
  loc_686745: LitVarStr var_4F8, "cmdBorrarTodo"
  loc_68674A: HardType
  loc_68674B: NeVar var_518
  loc_68674F: AndVar var_528
  loc_686753: FLdRfVar var_530
  loc_686756: FLdRfVar var_52C
  loc_686759: ImpAdLdRf MemVar_7520D4
  loc_68675C: NewIfNullPr Global
  loc_68675F:  = Global.Screen
  loc_686764: FLdPr var_52C
  loc_686767:  = Screen.ActiveControl
  loc_68676C: FLdPr var_530
  loc_68676F: LateMemLdVar
  loc_686774: LitVarStr var_540, "BotonPreset"
  loc_686779: HardType
  loc_68677A: NeVar var_560
  loc_68677E: AndVar var_570
  loc_686782: CBoolVarNull
  loc_686784: FFreeAd var_4A0 = "": var_4E4 = "": var_4E8 = "": var_52C = "": var_530 = "": var_88 = "": var_9C = "": var_A0 = "": var_F4 = "": var_F8 = "": var_13C = "": var_140 = "": var_184 = "": var_188 = "": var_1CC = "": var_1D0 = "": var_214 = "": var_218 = "": var_25C = "": var_260 = "": var_2A4 = "": var_2A8 = "": var_2EC = "": var_2F0 = "": var_334 = "": var_338 = "": var_37C = "": var_380 = "": var_3C4 = "": var_3C8 = "": var_40C = "": var_410 = "": var_454 = "": var_458 = ""
  loc_6867CD: FFreeVar var_98 = "": var_C0 = "": var_E0 = "": var_118 = "": var_160 = "": var_1A8 = "": var_1F0 = "": var_238 = "": var_280 = "": var_2C8 = "": var_310 = "": var_358 = "": var_3A0 = "": var_3E8 = "": var_430 = "": var_478 = "": var_4C0 = "": var_508 = ""
  loc_6867F6: BranchF loc_686844
  loc_6867F9: FLdRfVar var_574
  loc_6867FC: FLdRfVar var_9C
  loc_6867FF: FLdRfVar var_88
  loc_686802: ImpAdLdRf MemVar_7520D4
  loc_686805: NewIfNullPr Global
  loc_686808:  = Global.Screen
  loc_68680D: FLdPr var_88
  loc_686810:  = Screen.ActiveForm
  loc_686815: FLdPr var_9C
  loc_686818:  = Form.Name
  loc_68681D: ILdRf var_574
  loc_686820: LitStr "Consola"
  loc_686823: EqStr
  loc_686825: FFree1Str var_574
  loc_686828: FFreeAd var_88 = ""
  loc_68682F: BranchF loc_686844
  loc_686832: FLdPrThis
  loc_686833: VCallAd Control_ID_Volumen
  loc_686836: FStAdFunc var_88
  loc_686839: FLdPr var_88
  loc_68683C: Me.SetFocus
  loc_686841: FFree1Ad var_88
  loc_686844: ExitProcHresult
  loc_686845: ILdFPR8 var_2
End Sub

Private Function ErrorAni_UnknownEvent_8(arg_C) '63C168
  'Data Table: 45B254
  loc_63BF7C: ILdI2 arg_C
  loc_63BF7F: LitI2_Byte 1
  loc_63BF81: AddI2
  loc_63BF82: FLdPr Me
  loc_63BF85: MemLdUI1 offset
  loc_63BF89: CI2UI1
  loc_63BF8B: AddI2
  loc_63BF8C: FStI2 var_BE
  loc_63BF8F: FLdI2 var_BE
  loc_63BF92: CI4UI1
  loc_63BF93: ImpAdLdRf MemVar_74BFB0
  loc_63BF96: Ary1LdPr
  loc_63BF97: MemLdStr global_8
  loc_63BF9A: CVarStr var_D0
  loc_63BF9D: FStVarCopy
  loc_63BFA1: FLdI2 var_BE
  loc_63BFA4: CI4UI1
  loc_63BFA5: ImpAdLdRf MemVar_74BFB0
  loc_63BFA8: Ary1LdPr
  loc_63BFA9: MemLdStr global_12
  loc_63BFAC: CVarStr var_D0
  loc_63BFAF: FStVarCopy
  loc_63BFB3: FLdI2 var_BE
  loc_63BFB6: CI4UI1
  loc_63BFB7: ImpAdLdRf MemVar_74BFB0
  loc_63BFBA: Ary1LdPr
  loc_63BFBB: MemLdStr global_16
  loc_63BFBE: CVarStr var_D0
  loc_63BFC1: FStVarCopy
  loc_63BFC5: FLdI2 var_BE
  loc_63BFC8: CI4UI1
  loc_63BFC9: ImpAdLdRf MemVar_74BFB0
  loc_63BFCC: Ary1LdPr
  loc_63BFCD: MemLdStr global_4
  loc_63BFD0: FStStrCopy var_BC
  loc_63BFD3: LitVarStr var_D0, "Codigo de error: "
  loc_63BFD8: FLdRfVar var_A4
  loc_63BFDB: ConcatVar var_E0
  loc_63BFDF: LitI4 &HD
  loc_63BFE4: FLdRfVar var_F0
  loc_63BFE7: ImpAdCallFPR4  = Chr()
  loc_63BFEC: FLdRfVar var_F0
  loc_63BFEF: ConcatVar var_100
  loc_63BFF3: LitVarStr var_110, "Generado en: "
  loc_63BFF8: ConcatVar var_120
  loc_63BFFC: FLdRfVar var_94
  loc_63BFFF: ConcatVar var_130
  loc_63C003: LitI4 &HD
  loc_63C008: FLdRfVar var_140
  loc_63C00B: ImpAdCallFPR4  = Chr()
  loc_63C010: FLdRfVar var_140
  loc_63C013: ConcatVar var_150
  loc_63C017: FLdRfVar var_B4
  loc_63C01A: ConcatVar var_160
  loc_63C01E: CStrVarTmp
  loc_63C01F: FStStr var_B8
  loc_63C022: FFreeVar var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = ""
  loc_63C035: FLdI2 var_BE
  loc_63C038: CI4UI1
  loc_63C039: ImpAdLdRf MemVar_74BFB0
  loc_63C03C: Ary1LdPr
  loc_63C03D: MemLdStr global_8
  loc_63C040: ImpAdLdRf MemVar_74DD20
  loc_63C043: NewIfNullPr frmMensage
  loc_63C046: frmMensage.Caption = from_stack_1
  loc_63C04B: ILdRf var_B8
  loc_63C04E: ImpAdLdRf MemVar_74DD20
  loc_63C051: NewIfNullPr frmMensage
  loc_63C054: VCallAd Control_ID_lCode
  loc_63C057: FStAdFunc var_164
  loc_63C05A: FLdPr var_164
  loc_63C05D: frmMensage.Label.Caption = from_stack_1
  loc_63C062: FFree1Ad var_164
  loc_63C065: FLdRfVar var_168
  loc_63C068: FLdRfVar var_164
  loc_63C06B: ImpAdLdRf MemVar_7520D4
  loc_63C06E: NewIfNullPr Global
  loc_63C071:  = Global.App
  loc_63C076: FLdPr var_164
  loc_63C079:  = App.Path
  loc_63C07E: ILdRf var_168
  loc_63C081: LitStr "\"
  loc_63C084: ConcatStr
  loc_63C085: FStStrNoPop var_170
  loc_63C088: FLdRfVar var_16C
  loc_63C08B: FLdI2 var_BE
  loc_63C08E: CI4UI1
  loc_63C08F: ImpAdLdRf MemVar_74BFB0
  loc_63C092: Ary1LdPr
  loc_63C093: MemLdRfVar from_stack_1.global_4
  loc_63C096: from_stack_2v = PegarIcono(from_stack_1v)
  loc_63C09B: ILdRf var_16C
  loc_63C09E: ConcatStr
  loc_63C09F: FStStrNoPop var_174
  loc_63C0A2: FLdPr Me
  loc_63C0A5: MemStStrCopy
  loc_63C0A9: FFreeStr var_168 = "": var_170 = "": var_16C = ""
  loc_63C0B4: FFree1Ad var_164
  loc_63C0B7: FLdPr Me
  loc_63C0BA: MemLdStr PlayName
  loc_63C0BD: CVarStr var_D0
  loc_63C0C0: PopAdLdVar
  loc_63C0C1: FLdRfVar var_178
  loc_63C0C4: LitI2_Byte 1
  loc_63C0C6: ImpAdLdRf MemVar_74DD20
  loc_63C0C9: NewIfNullPr frmMensage
  loc_63C0CC: VCallAd Control_ID_ErrorAni
  loc_63C0CF: FStAdFunc var_164
  loc_63C0D2: FLdPr var_164
  loc_63C0D5: Set from_stack_2 = frmMensage(from_stack_1)
  loc_63C0DA: FLdPr var_178
  loc_63C0DD: LateIdCall
  loc_63C0E5: FFreeAd var_164 = ""
  loc_63C0EC: LitVar_Missing var_110
  loc_63C0EF: PopAdLdVar
  loc_63C0F0: LitVarI2 var_D0, 1
  loc_63C0F5: PopAdLdVar
  loc_63C0F6: ImpAdLdRf MemVar_74DD20
  loc_63C0F9: NewIfNullPr frmMensage
  loc_63C0FC: frmMensage.Show from_stack_1, from_stack_2
  loc_63C101: FLdRfVar var_17A
  loc_63C104: FLdRfVar var_BE
  loc_63C107: FLdRfVar var_164
  loc_63C10A: ImpAdLdRf MemVar_74C760
  loc_63C10D: NewIfNullPr Formx
  loc_63C110: from_stack_1v = Formx.global_4589716Get()
  loc_63C115: FLdPr var_164
  loc_63C118:  = Formx.FontName
  loc_63C11D: FLdI2 var_17A
  loc_63C120: NotI4
  loc_63C121: FFree1Ad var_164
  loc_63C124: BranchF loc_63C167
  loc_63C127: FLdRfVar var_E0
  loc_63C12A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63C12F: FLdRfVar var_E0
  loc_63C132: CBoolVarNull
  loc_63C134: FFree1Var var_E0 = ""
  loc_63C137: BranchF loc_63C164
  loc_63C13A: LitI2_Byte 0
  loc_63C13C: FLdPrThis
  loc_63C13D: VCallAd Control_ID_Timer1
  loc_63C140: FStAdFunc var_164
  loc_63C143: FLdPr var_164
  loc_63C146: Me.Enabled = from_stack_1b
  loc_63C14B: FFree1Ad var_164
  loc_63C14E: ILdRf Me
  loc_63C151: FStAdNoPop
  loc_63C155: ImpAdLdRf MemVar_7520D4
  loc_63C158: NewIfNullPr Global
  loc_63C15B: Global.Unload from_stack_1
  loc_63C160: FFree1Ad var_164
  loc_63C163: ExitProcHresult
  loc_63C164: Branch loc_63C101
  loc_63C167: ExitProcHresult
End Function

Private Sub EstadoNumLock_UnknownEvent_8 '5E0F9C
  'Data Table: 45B254
  loc_5E0F44: ImpAdLdI4 MemVar_74A154
  loc_5E0F47: LitStr "6.0"
  loc_5E0F4A: NeStr
  loc_5E0F4C: ImpAdLdI4 MemVar_74A154
  loc_5E0F4F: LitStr "6.1"
  loc_5E0F52: NeStr
  loc_5E0F54: AndI4
  loc_5E0F55: BranchF loc_5E0F9B
  loc_5E0F58: FLdPrThis
  loc_5E0F59: VCallAd Control_ID_EstadoNumLock
  loc_5E0F5C: FStAdFunc var_88
  loc_5E0F5F: FLdPr var_88
  loc_5E0F62: LateIdLdVar var_98 DispID_6 0
  loc_5E0F69: CBoolVar
  loc_5E0F6B: LitI2_Byte &HFF
  loc_5E0F6D: EqI2
  loc_5E0F6E: FFree1Ad var_88
  loc_5E0F71: FFree1Var var_98 = ""
  loc_5E0F74: BranchF loc_5E0F9B
  loc_5E0F77: LitI2_Byte &HFF
  loc_5E0F79: PopTmpLdAd2 var_9A
  loc_5E0F7C: LitStr "{NUMLOCK}"
  loc_5E0F7F: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E0F84: LitVar_FALSE
  loc_5E0F88: PopAdLdVar
  loc_5E0F89: FLdPrThis
  loc_5E0F8A: VCallAd Control_ID_EstadoNumLock
  loc_5E0F8D: FStAdFunc var_88
  loc_5E0F90: FLdPr var_88
  loc_5E0F93: LateIdSt
  loc_5E0F98: FFree1Ad var_88
  loc_5E0F9B: ExitProcHresult
End Sub

Private Sub SSCommand9_UnknownEvent_8 '5E5368
  'Data Table: 45B254
  loc_5E52F4: LitVar_TRUE var_94
  loc_5E52F7: PopAdLdVar
  loc_5E52F8: FLdPrThis
  loc_5E52F9: VCallAd Control_ID_Configuracion
  loc_5E52FC: FStAdFunc var_98
  loc_5E52FF: FLdPr var_98
  loc_5E5302: LateIdSt
  loc_5E5307: FFree1Ad var_98
  loc_5E530A: LitVar_FALSE
  loc_5E530E: PopAdLdVar
  loc_5E530F: FLdPrThis
  loc_5E5310: VCallAd Control_ID_Preset
  loc_5E5313: FStAdFunc var_98
  loc_5E5316: FLdPr var_98
  loc_5E5319: LateIdSt
  loc_5E531E: FFree1Ad var_98
  loc_5E5321: LitVar_FALSE
  loc_5E5325: PopAdLdVar
  loc_5E5326: FLdPrThis
  loc_5E5327: VCallAd Control_ID_Tanques
  loc_5E532A: FStAdFunc var_98
  loc_5E532D: FLdPr var_98
  loc_5E5330: LateIdSt
  loc_5E5335: FFree1Ad var_98
  loc_5E5338: LitVar_FALSE
  loc_5E533C: PopAdLdVar
  loc_5E533D: FLdPrThis
  loc_5E533E: VCallAd Control_ID_Ventas
  loc_5E5341: FStAdFunc var_98
  loc_5E5344: FLdPr var_98
  loc_5E5347: LateIdSt
  loc_5E534C: FFree1Ad var_98
  loc_5E534F: LitVar_FALSE
  loc_5E5353: PopAdLdVar
  loc_5E5354: FLdPrThis
  loc_5E5355: VCallAd Control_ID_Estadisticas
  loc_5E5358: FStAdFunc var_98
  loc_5E535B: FLdPr var_98
  loc_5E535E: LateIdSt
  loc_5E5363: FFree1Ad var_98
  loc_5E5366: ExitProcHresult
End Sub

Private Sub SSCommand9_Click(Value As Integer) '5CE934
  'Data Table: 45B254
  loc_5CE924: LitI2_Byte &HFF
  loc_5CE926: ILdI2 arg_10
  loc_5CE929: ILdRf Value
  loc_5CE92C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CE931: ExitProcHresult
End Sub

Private Sub SSCommand9_KeyPress(KeyAscii As Integer) '5CE2B4
  'Data Table: 45B254
  loc_5CE2A4: LitI2_Byte 0
  loc_5CE2A6: ILdI2 arg_10
  loc_5CE2A9: ILdRf KeyAscii
  loc_5CE2AC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CE2B1: ExitProcHresult
End Sub

Private Sub Punto_UnknownEvent_8 '5D6D70
  'Data Table: 45B254
  loc_5D6D44: FLdPr Me
  loc_5D6D47: MemLdI2 global_110
  loc_5D6D4A: BranchF loc_5D6D65
  loc_5D6D4D: Call Borrar_UnknownEvent_8()
  loc_5D6D52: LitI2_Byte &HFF
  loc_5D6D54: FLdPr Me
  loc_5D6D57: MemStI2 global_102
  loc_5D6D5A: LitI2_Byte 0
  loc_5D6D5C: FLdPr Me
  loc_5D6D5F: MemStI2 global_110
  loc_5D6D62: Branch loc_5D6D6D
  loc_5D6D65: LitI2_Byte &HFF
  loc_5D6D67: FLdPr Me
  loc_5D6D6A: MemStI2 global_102
  loc_5D6D6D: ExitProcHresult
End Sub

Private Sub Form_Load() '5C9068
  'Data Table: 45B254
  loc_5C9060: Call loadConsole()
  loc_5C9065: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5DEA50
  'Data Table: 45B254
  loc_5DEA04: LitI2_Byte 4
  loc_5DEA06: CUI1I2
  loc_5DEA08: PopTmpLdAd1
  loc_5DEA0C: LitStr "Closing Console OK"
  loc_5DEA0F: FStStrCopy var_88
  loc_5DEA12: FLdRfVar var_88
  loc_5DEA15: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_5DEA1A: FFree1Str var_88
  loc_5DEA1D: LitI2_Byte 0
  loc_5DEA1F: FLdPrThis
  loc_5DEA20: VCallAd Control_ID_Timer1
  loc_5DEA23: FStAdFunc var_90
  loc_5DEA26: FLdPr var_90
  loc_5DEA29: Me.Enabled = from_stack_1b
  loc_5DEA2E: FFree1Ad var_90
  loc_5DEA31: LitVarStr var_A0, "Close"
  loc_5DEA36: PopAdLdVar
  loc_5DEA37: FLdPrThis
  loc_5DEA38: VCallAd Control_ID_Sonido
  loc_5DEA3B: FStAdFunc var_90
  loc_5DEA3E: FLdPr var_90
  loc_5DEA41: LateIdSt
  loc_5DEA46: FFree1Ad var_90
  loc_5DEA49: LitI2_Byte &HFF
  loc_5DEA4B: ImpAdStI2 MemVar_74C7B0
  loc_5DEA4E: ExitProcHresult
End Sub

Private Sub Form_Activate() '66E5E8
  'Data Table: 45B254
  loc_66E1F4: LitI4 1
  loc_66E1F9: LitStr "CEM44.INI"
  loc_66E1FC: FLdRfVar var_98
  loc_66E1FF: CStr2Ansi
  loc_66E200: ILdRf var_98
  loc_66E203: LitI4 0
  loc_66E208: LitStr "TOUCHSCREEN"
  loc_66E20B: FLdRfVar var_94
  loc_66E20E: CStr2Ansi
  loc_66E20F: ILdRf var_94
  loc_66E212: LitStr "GENERAL"
  loc_66E215: FLdRfVar var_90
  loc_66E218: CStr2Ansi
  loc_66E219: ILdRf var_90
  loc_66E21C: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_66E221: FStR4 var_9C
  loc_66E224: SetLastSystemError
  loc_66E225: ILdRf var_9C
  loc_66E228: EqI4
  loc_66E229: FLdPr Me
  loc_66E22C: MemStI2 global_200
  loc_66E22F: FFreeStr var_90 = "": var_94 = ""
  loc_66E238: LitI2_Byte 0
  loc_66E23A: ImpAdStI2 MemVar_74C7B0
  loc_66E23D: FLdPr Me
  loc_66E240: MemLdI2 global_182
  loc_66E243: NotI4
  loc_66E244: BranchF loc_66E2D5
  loc_66E247: LitVarI2 var_BC, 1
  loc_66E24C: LitI4 &HB
  loc_66E251: ImpAdLdI4 MemVar_74BEAC
  loc_66E254: ImpAdCallI2 Mid$(, , )
  loc_66E259: FStStrNoPop var_90
  loc_66E25C: LitStr "1"
  loc_66E25F: EqStr
  loc_66E261: FFree1Str var_90
  loc_66E264: FFree1Var var_BC = ""
  loc_66E267: BranchF loc_66E2D5
  loc_66E26A: FLdRfVar var_C2
  loc_66E26D: FLdPr Me
  loc_66E270: MemLdRfVar from_stack_1.global_117
  loc_66E273: LdFixedStr
  loc_66E276: PopTmpLdAdStr
  loc_66E27A: FLdRfVar var_C0
  loc_66E27D: ImpAdLdRf MemVar_74C760
  loc_66E280: NewIfNullPr Formx
  loc_66E283: from_stack_1v = Formx.global_4589716Get()
  loc_66E288: FLdPr var_C0
  loc_66E28B: Call 0.Method_arg_264 ()
  loc_66E290: ILdRf var_90
  loc_66E293: FLdPr Me
  loc_66E296: MemLdRfVar from_stack_1.global_117
  loc_66E299: StFixedStr
  loc_66E29C: FLdI2 var_C2
  loc_66E29F: NotI4
  loc_66E2A0: FFree1Str var_90
  loc_66E2A3: FFree1Ad var_C0
  loc_66E2A6: BranchF loc_66E2D5
  loc_66E2A9: FLdRfVar var_BC
  loc_66E2AC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66E2B1: FLdRfVar var_BC
  loc_66E2B4: CBoolVarNull
  loc_66E2B6: FFree1Var var_BC = ""
  loc_66E2B9: BranchF loc_66E2D2
  loc_66E2BC: ILdRf Me
  loc_66E2BF: FStAdNoPop
  loc_66E2C3: ImpAdLdRf MemVar_7520D4
  loc_66E2C6: NewIfNullPr Global
  loc_66E2C9: Global.Unload from_stack_1
  loc_66E2CE: FFree1Ad var_C0
  loc_66E2D1: ExitProcHresult
  loc_66E2D2: Branch loc_66E26A
  loc_66E2D5: LitI2_Byte &HFF
  loc_66E2D7: FLdPr Me
  loc_66E2DA: MemStI2 global_182
  loc_66E2DD: FLdRfVar var_C2
  loc_66E2E0: ImpAdLdRf MemVar_74A220
  loc_66E2E3: NewIfNullPr clsProducts
  loc_66E2E6: clsProducts.Top = from_stack_1s
  loc_66E2EB: FLdI2 var_C2
  loc_66E2EE: BranchF loc_66E380
  loc_66E2F1: LitVar_TRUE var_AC
  loc_66E2F4: PopAdLdVar
  loc_66E2F5: FLdPr Me
  loc_66E2F8: VCallAd Control_ID_mezcla
  loc_66E2FB: FStAdFunc var_C0
  loc_66E2FE: FLdPr var_C0
  loc_66E301: LateIdSt
  loc_66E306: FFree1Ad var_C0
  loc_66E309: LitI2 275
  loc_66E30C: CR8I2
  loc_66E30D: CVarR4
  loc_66E311: PopAdLdVar
  loc_66E312: FLdPr Me
  loc_66E315: VCallAd Control_ID_SSCommand6
  loc_66E318: FStAdFunc var_C0
  loc_66E31B: FLdPr var_C0
  loc_66E31E: LateIdSt
  loc_66E323: FFree1Ad var_C0
  loc_66E326: LitI2 334
  loc_66E329: CR8I2
  loc_66E32A: CVarR4
  loc_66E32E: PopAdLdVar
  loc_66E32F: FLdPr Me
  loc_66E332: VCallAd Control_ID_SSCommand7
  loc_66E335: FStAdFunc var_C0
  loc_66E338: FLdPr var_C0
  loc_66E33B: LateIdSt
  loc_66E340: FFree1Ad var_C0
  loc_66E343: LitI2 393
  loc_66E346: CR8I2
  loc_66E347: CVarR4
  loc_66E34B: PopAdLdVar
  loc_66E34C: FLdPr Me
  loc_66E34F: VCallAd Control_ID_SSCommand8
  loc_66E352: FStAdFunc var_C0
  loc_66E355: FLdPr var_C0
  loc_66E358: LateIdSt
  loc_66E35D: FFree1Ad var_C0
  loc_66E360: LitI2 452
  loc_66E363: CR8I2
  loc_66E364: CVarR4
  loc_66E368: PopAdLdVar
  loc_66E369: FLdPr Me
  loc_66E36C: VCallAd Control_ID_SSCommand9
  loc_66E36F: FStAdFunc var_C0
  loc_66E372: FLdPr var_C0
  loc_66E375: LateIdSt
  loc_66E37A: FFree1Ad var_C0
  loc_66E37D: Branch loc_66E40D
  loc_66E380: LitVar_FALSE
  loc_66E384: PopAdLdVar
  loc_66E385: FLdPr Me
  loc_66E388: VCallAd Control_ID_mezcla
  loc_66E38B: FStAdFunc var_C0
  loc_66E38E: FLdPr var_C0
  loc_66E391: LateIdSt
  loc_66E396: FFree1Ad var_C0
  loc_66E399: LitI2 288
  loc_66E39C: CR8I2
  loc_66E39D: CVarR4
  loc_66E3A1: PopAdLdVar
  loc_66E3A2: FLdPr Me
  loc_66E3A5: VCallAd Control_ID_SSCommand6
  loc_66E3A8: FStAdFunc var_C0
  loc_66E3AB: FLdPr var_C0
  loc_66E3AE: LateIdSt
  loc_66E3B3: FFree1Ad var_C0
  loc_66E3B6: LitI2 360
  loc_66E3B9: CR8I2
  loc_66E3BA: CVarR4
  loc_66E3BE: PopAdLdVar
  loc_66E3BF: FLdPr Me
  loc_66E3C2: VCallAd Control_ID_SSCommand7
  loc_66E3C5: FStAdFunc var_C0
  loc_66E3C8: FLdPr var_C0
  loc_66E3CB: LateIdSt
  loc_66E3D0: FFree1Ad var_C0
  loc_66E3D3: LitI2 432
  loc_66E3D6: CR8I2
  loc_66E3D7: CVarR4
  loc_66E3DB: PopAdLdVar
  loc_66E3DC: FLdPr Me
  loc_66E3DF: VCallAd Control_ID_SSCommand8
  loc_66E3E2: FStAdFunc var_C0
  loc_66E3E5: FLdPr var_C0
  loc_66E3E8: LateIdSt
  loc_66E3ED: FFree1Ad var_C0
  loc_66E3F0: LitI2 504
  loc_66E3F3: CR8I2
  loc_66E3F4: CVarR4
  loc_66E3F8: PopAdLdVar
  loc_66E3F9: FLdPr Me
  loc_66E3FC: VCallAd Control_ID_SSCommand9
  loc_66E3FF: FStAdFunc var_C0
  loc_66E402: FLdPr var_C0
  loc_66E405: LateIdSt
  loc_66E40A: FFree1Ad var_C0
  loc_66E40D: LitI2_Byte 0
  loc_66E40F: FLdRfVar var_86
  loc_66E412: LitI2_Byte &HF
  loc_66E414: ForI2 var_C6
  loc_66E41A: LitVar_FALSE
  loc_66E41E: PopAdLdVar
  loc_66E41F: FLdRfVar var_CC
  loc_66E422: FLdI2 var_86
  loc_66E425: FLdPrThis
  loc_66E426: VCallAd Control_ID_ErrorAni
  loc_66E429: FStAdFunc var_C0
  loc_66E42C: FLdPr var_C0
  loc_66E42F: Set from_stack_2 = Me(from_stack_1)
  loc_66E434: FLdPr var_CC
  loc_66E437: LateIdSt
  loc_66E43C: FFreeAd var_C0 = ""
  loc_66E443: FLdRfVar var_86
  loc_66E446: NextI2 var_C6, loc_66E41A
  loc_66E44B: LitI2_Byte &H19
  loc_66E44D: ImpAdStI2 MemVar_74BFAE
  loc_66E450: LitVarI2 var_AC, 36
  loc_66E455: PopAdLdVar
  loc_66E456: FLdRfVar var_CC
  loc_66E459: FLdPrThis
  loc_66E45A: VCallAd Control_ID_EstaVenta
  loc_66E45D: FStAdFunc var_C0
  loc_66E460: FLdPr var_C0
  loc_66E463:  = Me.Font
  loc_66E468: FLdPr var_CC
  loc_66E46B: LateIdSt
  loc_66E470: FFreeAd var_C0 = ""
  loc_66E477: LitVarI2 var_AC, 22
  loc_66E47C: PopAdLdVar
  loc_66E47D: FLdRfVar var_CC
  loc_66E480: FLdPrThis
  loc_66E481: VCallAd Control_ID_PPU
  loc_66E484: FStAdFunc var_C0
  loc_66E487: FLdPr var_C0
  loc_66E48A:  = Me.Font
  loc_66E48F: FLdPr var_CC
  loc_66E492: LateIdSt
  loc_66E497: FFreeAd var_C0 = ""
  loc_66E49E: ImpAdLdUI1
  loc_66E4A2: CI2UI1
  loc_66E4A4: LitI2_Byte 4
  loc_66E4A6: EqI2
  loc_66E4A7: ImpAdLdUI1
  loc_66E4AB: CI2UI1
  loc_66E4AD: LitI2_Byte 5
  loc_66E4AF: EqI2
  loc_66E4B0: OrI4
  loc_66E4B1: ImpAdLdUI1
  loc_66E4B5: CI2UI1
  loc_66E4B7: LitI2_Byte 6
  loc_66E4B9: EqI2
  loc_66E4BA: OrI4
  loc_66E4BB: BranchF loc_66E50C
  loc_66E4BE: LitVarI2 var_AC, 16
  loc_66E4C3: PopAdLdVar
  loc_66E4C4: FLdRfVar var_CC
  loc_66E4C7: FLdPrThis
  loc_66E4C8: VCallAd Control_ID_PPU
  loc_66E4CB: FStAdFunc var_C0
  loc_66E4CE: FLdPr var_C0
  loc_66E4D1:  = Me.Font
  loc_66E4D6: FLdPr var_CC
  loc_66E4D9: LateIdSt
  loc_66E4DE: FFreeAd var_C0 = ""
  loc_66E4E5: LitVarI2 var_AC, 16
  loc_66E4EA: PopAdLdVar
  loc_66E4EB: FLdRfVar var_CC
  loc_66E4EE: FLdPrThis
  loc_66E4EF: VCallAd Control_ID_PPUP
  loc_66E4F2: FStAdFunc var_C0
  loc_66E4F5: FLdPr var_C0
  loc_66E4F8:  = Me.Font
  loc_66E4FD: FLdPr var_CC
  loc_66E500: LateIdSt
  loc_66E505: FFreeAd var_C0 = ""
  loc_66E50C: ImpAdLdUI1
  loc_66E510: CI2UI1
  loc_66E512: LitI2_Byte 4
  loc_66E514: EqI2
  loc_66E515: ImpAdLdUI1
  loc_66E519: CI2UI1
  loc_66E51B: LitI2_Byte 5
  loc_66E51D: EqI2
  loc_66E51E: OrI4
  loc_66E51F: ImpAdLdUI1
  loc_66E523: CI2UI1
  loc_66E525: LitI2_Byte 6
  loc_66E527: EqI2
  loc_66E528: OrI4
  loc_66E529: BranchF loc_66E57A
  loc_66E52C: LitVarI2 var_AC, 22
  loc_66E531: PopAdLdVar
  loc_66E532: FLdRfVar var_CC
  loc_66E535: FLdPrThis
  loc_66E536: VCallAd Control_ID_EstaVenta
  loc_66E539: FStAdFunc var_C0
  loc_66E53C: FLdPr var_C0
  loc_66E53F:  = Me.Font
  loc_66E544: FLdPr var_CC
  loc_66E547: LateIdSt
  loc_66E54C: FFreeAd var_C0 = ""
  loc_66E553: LitVarI2 var_AC, 22
  loc_66E558: PopAdLdVar
  loc_66E559: FLdRfVar var_CC
  loc_66E55C: FLdPrThis
  loc_66E55D: VCallAd Control_ID_EstaVentaP
  loc_66E560: FStAdFunc var_C0
  loc_66E563: FLdPr var_C0
  loc_66E566:  = Me.Font
  loc_66E56B: FLdPr var_CC
  loc_66E56E: LateIdSt
  loc_66E573: FFreeAd var_C0 = ""
  loc_66E57A: LitVarI2 var_BC, 1
  loc_66E57F: LitI4 4
  loc_66E584: ImpAdLdI4 MemVar_74BEAC
  loc_66E587: ImpAdCallI2 Mid$(, , )
  loc_66E58C: FStStrNoPop var_90
  loc_66E58F: LitStr "1"
  loc_66E592: EqStr
  loc_66E594: FFree1Str var_90
  loc_66E597: FFree1Var var_BC = ""
  loc_66E59A: BranchF loc_66E5B4
  loc_66E59D: LitVar_FALSE
  loc_66E5A1: PopAdLdVar
  loc_66E5A2: FLdPrThis
  loc_66E5A3: VCallAd Control_ID_SSTanqueLleno
  loc_66E5A6: FStAdFunc var_C0
  loc_66E5A9: FLdPr var_C0
  loc_66E5AC: LateIdSt
  loc_66E5B1: FFree1Ad var_C0
  loc_66E5B4: ImpAdLdI2 MemVar_74C7C2
  loc_66E5B7: ImpAdLdI4 MemVar_74C7C4
  loc_66E5BA: LitI4 0
  loc_66E5BF: NeI4
  loc_66E5C0: AndI4
  loc_66E5C1: BranchF loc_66E5D8
  loc_66E5C4: LitI2_Byte &HFF
  loc_66E5C6: FLdPrThis
  loc_66E5C7: VCallAd Control_ID_Timer1
  loc_66E5CA: FStAdFunc var_C0
  loc_66E5CD: FLdPr var_C0
  loc_66E5D0: Me.Enabled = from_stack_1b
  loc_66E5D5: FFree1Ad var_C0
  loc_66E5D8: ImpAdLdI2 MemVar_74C7C2
  loc_66E5DB: ImpAdLdI2 MemVar_74C7C8
  loc_66E5DE: AndI4
  loc_66E5DF: BranchF loc_66E5E7
  loc_66E5E2: Call loadConsole()
  loc_66E5E7: ExitProcHresult
End Sub

Private Sub Form_Deactivate() '5C90D8
  'Data Table: 45B254
  loc_5C90D0: LitI2_Byte &HFF
  loc_5C90D2: ImpAdStI2 MemVar_74C7B0
  loc_5C90D5: ExitProcHresult
  loc_5C90D6: FStR8 var_2301
End Sub

Private Sub Form_GotFocus() '5D0594
  'Data Table: 45B254
  loc_5D057C: LitI2_Byte 0
  loc_5D057E: ImpAdStI2 MemVar_74C7B0
  loc_5D0581: FLdPr Me
  loc_5D0584: MemLdI2 global_98
  loc_5D0587: NotI4
  loc_5D0588: BranchF loc_5D0590
  loc_5D058B: Call RefreshAllSales()
  loc_5D0590: ExitProcHresult
  loc_5D0591: NewIfNullPr Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5CBEB4
  'Data Table: 45B254
  loc_5CBEA4: LitI2_Byte &HFF
  loc_5CBEA6: ILdI2 Shift
  loc_5CBEA9: ILdRf KeyCode
  loc_5CBEAC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CBEB1: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '5CBF34
  'Data Table: 45B254
  loc_5CBF24: LitI2_Byte 0
  loc_5CBF26: ILdI2 Shift
  loc_5CBF29: ILdRf KeyCode
  loc_5CBF2C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CBF31: ExitProcHresult
End Sub

Private Sub Form_LostFocus() '5C8F50
  'Data Table: 45B254
  loc_5C8F48: LitI2_Byte &HFF
  loc_5C8F4A: ImpAdStI2 MemVar_74C7B0
  loc_5C8F4D: ExitProcHresult
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '5C8EE0
  'Data Table: 45B254
  loc_5C8ED8: LitI2_Byte 0
  loc_5C8EDA: ImpAdStI2 MemVar_74C7B0
  loc_5C8EDD: ExitProcHresult
End Sub

Private Sub cmdBorrarPreset_UnknownEvent_8 '5F3F84
  'Data Table: 45B254
  loc_5F3EE0: FLdRfVar var_8A
  loc_5F3EE3: FLdPrThis
  loc_5F3EE4: VCallAd Control_ID_lstPreset
  loc_5F3EE7: FStAdFunc var_88
  loc_5F3EEA: FLdPr var_88
  loc_5F3EED:  = Me.ListIndex
  loc_5F3EF2: FLdI2 var_8A
  loc_5F3EF5: LitI2_Byte &HFF
  loc_5F3EF7: EqI2
  loc_5F3EF8: FLdRfVar var_9C
  loc_5F3EFB: FLdRfVar var_92
  loc_5F3EFE: FLdPrThis
  loc_5F3EFF: VCallAd Control_ID_lstPreset
  loc_5F3F02: FStAdFunc var_90
  loc_5F3F05: FLdPr var_90
  loc_5F3F08:  = Me.ListIndex
  loc_5F3F0D: FLdI2 var_92
  loc_5F3F10: FLdPrThis
  loc_5F3F11: VCallAd Control_ID_lstPreset
  loc_5F3F14: FStAdFunc var_98
  loc_5F3F17: FLdPr var_98
  loc_5F3F1A: from_stack_2 = Me.List(from_stack_1)
  loc_5F3F1F: ILdRf var_9C
  loc_5F3F22: LitStr vbNullString
  loc_5F3F25: EqStr
  loc_5F3F27: OrI4
  loc_5F3F28: FFree1Str var_9C
  loc_5F3F2B: FFreeAd var_88 = "": var_90 = ""
  loc_5F3F34: BranchF loc_5F3F3D
  loc_5F3F37: from_stack_1v = Proc_161_127_61BA5C()
  loc_5F3F3C: ExitProcHresult
  loc_5F3F3D: FLdRfVar var_8A
  loc_5F3F40: FLdPrThis
  loc_5F3F41: VCallAd Control_ID_lstPreset
  loc_5F3F44: FStAdFunc var_88
  loc_5F3F47: FLdPr var_88
  loc_5F3F4A:  = Me.ListIndex
  loc_5F3F4F: FLdI2 var_8A
  loc_5F3F52: LitI2_Byte 1
  loc_5F3F54: AddI2
  loc_5F3F55: CUI1I2
  loc_5F3F57: FLdPr Me
  loc_5F3F5A: MemLdUI1 Surtidor_Actual
  loc_5F3F5E: CStrI2
  loc_5F3F60: FStStrNoPop var_9C
  loc_5F3F63: from_stack_2v = Proc_161_146_609160(from_stack_1v)
  loc_5F3F68: FFree1Str var_9C
  loc_5F3F6B: FFree1Ad var_88
  loc_5F3F6E: Call Borrar_UnknownEvent_8()
  loc_5F3F73: FLdPr Me
  loc_5F3F76: MemLdUI1 Surtidor_Actual
  loc_5F3F7A: CI2UI1
  loc_5F3F7C: from_stack_2v = Proc_161_148_5E0588(from_stack_1v)
  loc_5F3F81: ExitProcHresult
End Sub

Private Sub cmdBorrarTodo_UnknownEvent_8 '5DBAC4
  'Data Table: 45B254
  loc_5DBA80: LitI2_Byte 1
  loc_5DBA82: CUI1I2
  loc_5DBA84: FLdRfVar var_86
  loc_5DBA87: LitI2_Byte &H32
  loc_5DBA89: CUI1I2
  loc_5DBA8B: ForUI1 var_8A
  loc_5DBA91: LitStr vbNullString
  loc_5DBA94: FLdPr Me
  loc_5DBA97: MemLdUI1 Surtidor_Actual
  loc_5DBA9B: CI4UI1
  loc_5DBA9C: FLdUI1
  loc_5DBAA0: CI4UI1
  loc_5DBAA1: ImpAdLdRf MemVar_74C388
  loc_5DBAA4: AryLdPr
  loc_5DBAA7: MemStStrCopy
  loc_5DBAAB: FLdRfVar var_86
  loc_5DBAAE: NextUI1
  loc_5DBAB4: FLdPr Me
  loc_5DBAB7: MemLdUI1 Surtidor_Actual
  loc_5DBABB: CI2UI1
  loc_5DBABD: from_stack_2v = Proc_161_148_5E0588(from_stack_1v)
  loc_5DBAC2: ExitProcHresult
End Sub

Private Sub prod1_mezcla_Click() '5DC5E0
  'Data Table: 45B254
  loc_5DC59C: LitI2_Byte &HFF
  loc_5DC59E: FLdPrThis
  loc_5DC59F: VCallAd Control_ID_Line2
  loc_5DC5A2: FStAdFunc var_88
  loc_5DC5A5: FLdPr var_88
  loc_5DC5A8: Me.Visible = from_stack_1b
  loc_5DC5AD: FFree1Ad var_88
  loc_5DC5B0: LitI2_Byte 0
  loc_5DC5B2: FLdPrThis
  loc_5DC5B3: VCallAd Control_ID_Line3
  loc_5DC5B6: FStAdFunc var_88
  loc_5DC5B9: FLdPr var_88
  loc_5DC5BC: Me.Visible = from_stack_1b
  loc_5DC5C1: FFree1Ad var_88
  loc_5DC5C4: LitI2_Byte 0
  loc_5DC5C6: FLdPr Me
  loc_5DC5C9: MemStI2 Prod2
  loc_5DC5CC: FLdPr Me
  loc_5DC5CF: MemLdRfVar from_stack_1.global_184
  loc_5DC5D2: FLdPr Me
  loc_5DC5D5: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_5DC5D8: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_5DC5DD: ExitProcHresult
End Sub

Private Sub TestTimer_Timer() '5DB9D8
  'Data Table: 45B254
  loc_5DB998: LitI2_Byte 0
  loc_5DB99A: FLdPrThis
  loc_5DB99B: VCallAd Control_ID_Timer1
  loc_5DB99E: FStAdFunc var_88
  loc_5DB9A1: FLdPr var_88
  loc_5DB9A4: Me.Enabled = from_stack_1b
  loc_5DB9A9: FFree1Ad var_88
  loc_5DB9AC: LitI2_Byte 0
  loc_5DB9AE: FLdPrThis
  loc_5DB9AF: VCallAd Control_ID_TestTimer
  loc_5DB9B2: FStAdFunc var_88
  loc_5DB9B5: FLdPr var_88
  loc_5DB9B8: Me.Enabled = from_stack_1b
  loc_5DB9BD: FFree1Ad var_88
  loc_5DB9C0: ILdRf Me
  loc_5DB9C3: FStAdNoPop
  loc_5DB9C7: ImpAdLdRf MemVar_7520D4
  loc_5DB9CA: NewIfNullPr Global
  loc_5DB9CD: Global.Unload from_stack_1
  loc_5DB9D2: FFree1Ad var_88
  loc_5DB9D5: ExitProcHresult
End Sub

Private Sub Volumen_GotFocus() '65691C
  'Data Table: 45B254
  loc_656628: LitI2_Byte 0
  loc_65662A: FLdPr Me
  loc_65662D: MemStI2 global_188
  loc_656630: LitI2_Byte &HFF
  loc_656632: FLdPr Me
  loc_656635: MemStI2 global_186
  loc_656638: LitI4 -2147483640
  loc_65663D: FLdPrThis
  loc_65663E: VCallAd Control_ID_Monto
  loc_656641: FStAdFunc var_90
  loc_656644: FLdPr var_90
  loc_656647: Me.ForeColor = from_stack_1
  loc_65664C: FFree1Ad var_90
  loc_65664F: LitI4 -2147483633
  loc_656654: FLdPrThis
  loc_656655: VCallAd Control_ID_Monto
  loc_656658: FStAdFunc var_90
  loc_65665B: FLdPr var_90
  loc_65665E: Me.BackColor = from_stack_1
  loc_656663: FFree1Ad var_90
  loc_656666: LitI4 &HFF00
  loc_65666B: FLdPrThis
  loc_65666C: VCallAd Control_ID_Volumen
  loc_65666F: FStAdFunc var_90
  loc_656672: FLdPr var_90
  loc_656675: Me.ForeColor = from_stack_1
  loc_65667A: FFree1Ad var_90
  loc_65667D: LitI4 &HFF0000
  loc_656682: FLdPrThis
  loc_656683: VCallAd Control_ID_Volumen
  loc_656686: FStAdFunc var_90
  loc_656689: FLdPr var_90
  loc_65668C: Me.BackColor = from_stack_1
  loc_656691: FFree1Ad var_90
  loc_656694: FLdRfVar var_94
  loc_656697: FLdPrThis
  loc_656698: VCallAd Control_ID_Monto
  loc_65669B: FStAdFunc var_90
  loc_65669E: FLdPr var_90
  loc_6566A1:  = Me.Text
  loc_6566A6: ILdRf var_94
  loc_6566A9: FLdPr Me
  loc_6566AC: MemStStrCopy
  loc_6566B0: FFree1Str var_94
  loc_6566B3: FFree1Ad var_90
  loc_6566B6: FLdRfVar var_94
  loc_6566B9: FLdPrThis
  loc_6566BA: VCallAd Control_ID_Volumen
  loc_6566BD: FStAdFunc var_90
  loc_6566C0: FLdPr var_90
  loc_6566C3:  = Me.Text
  loc_6566C8: ILdRf var_94
  loc_6566CB: CI2Str
  loc_6566CD: LitI2_Byte 0
  loc_6566CF: EqI2
  loc_6566D0: FFree1Str var_94
  loc_6566D3: FFree1Ad var_90
  loc_6566D6: BranchF loc_6566E1
  loc_6566D9: Call Borrar_UnknownEvent_8()
  loc_6566DE: Branch loc_6566F9
  loc_6566E1: FLdPr Me
  loc_6566E4: MemLdStr global_192
  loc_6566E7: FLdPrThis
  loc_6566E8: VCallAd Control_ID_Volumen
  loc_6566EB: FStAdFunc var_90
  loc_6566EE: FLdPr var_90
  loc_6566F1: Me.Text = from_stack_1
  loc_6566F6: FFree1Ad var_90
  loc_6566F9: LitStr "0"
  loc_6566FC: ImpAdCallFPR4 push Val()
  loc_656701: FStFPR8 var_DC
  loc_656704: LitI4 1
  loc_656709: LitI4 1
  loc_65670E: ImpAdLdRf MemVar_74C364
  loc_656711: CVarRef
  loc_656716: FLdFPR8 var_DC
  loc_656719: CVarR8
  loc_65671D: FLdRfVar var_D4
  loc_656720: ImpAdCallFPR4  = Format(, )
  loc_656725: FLdRfVar var_D4
  loc_656728: CStrVarVal var_94
  loc_65672C: FLdPrThis
  loc_65672D: VCallAd Control_ID_Monto
  loc_656730: FStAdFunc var_90
  loc_656733: FLdPr var_90
  loc_656736: Me.Text = from_stack_1
  loc_65673B: FFree1Str var_94
  loc_65673E: FFree1Ad var_90
  loc_656741: FFreeVar var_B4 = ""
  loc_656748: FLdRfVar var_94
  loc_65674B: FLdPrThis
  loc_65674C: VCallAd Control_ID_Volumen
  loc_65674F: FStAdFunc var_90
  loc_656752: FLdPr var_90
  loc_656755:  = Me.Text
  loc_65675A: ILdRf var_94
  loc_65675D: ImpAdCallFPR4 push Val()
  loc_656762: FStFPR8 var_DC
  loc_656765: LitI4 1
  loc_65676A: LitI4 1
  loc_65676F: LitVarStr var_C4, "#0.00"
  loc_656774: FStVarCopyObj var_D4
  loc_656777: FLdRfVar var_D4
  loc_65677A: FLdFPR8 var_DC
  loc_65677D: CVarR8
  loc_656781: FLdRfVar var_EC
  loc_656784: ImpAdCallFPR4  = Format(, )
  loc_656789: FLdRfVar var_EC
  loc_65678C: CStrVarVal var_F0
  loc_656790: FLdPrThis
  loc_656791: VCallAd Control_ID_Volumen
  loc_656794: FStAdFunc var_F4
  loc_656797: FLdPr var_F4
  loc_65679A: Me.Text = from_stack_1
  loc_65679F: FFreeStr var_94 = ""
  loc_6567A6: FFreeAd var_90 = ""
  loc_6567AD: FFreeVar var_B4 = "": var_D4 = ""
  loc_6567B6: FLdPr Me
  loc_6567B9: MemLdUI1 Surtidor_Actual
  loc_6567BD: ImpAdCallUI1  = Proc_167_8_60CBC8()
  loc_6567C3: CI2UI1
  loc_6567C5: FStI2 var_88
  loc_6567C8: LitI2_Byte 0
  loc_6567CA: FLdPrThis
  loc_6567CB: VCallAd Control_ID_lblPresetSchlumberger
  loc_6567CE: FStAdFunc var_90
  loc_6567D1: FLdPr var_90
  loc_6567D4: Me.Visible = from_stack_1b
  loc_6567D9: FFree1Ad var_90
  loc_6567DC: LitI2_Byte 1
  loc_6567DE: FLdRfVar var_86
  loc_6567E1: FLdI2 var_88
  loc_6567E4: ForI2 var_F8
  loc_6567EA: LitVar_TRUE var_A4
  loc_6567ED: PopAdLdVar
  loc_6567EE: FLdRfVar var_F4
  loc_6567F1: FLdI2 var_86
  loc_6567F4: LitI2_Byte 1
  loc_6567F6: SubI2
  loc_6567F7: FLdPrThis
  loc_6567F8: VCallAd Control_ID_BotonPreset
  loc_6567FB: FStAdFunc var_90
  loc_6567FE: FLdPr var_90
  loc_656801: Set from_stack_2 = Me(from_stack_1)
  loc_656806: FLdPr var_F4
  loc_656809: LateIdSt
  loc_65680E: FFreeAd var_90 = ""
  loc_656815: FLdRfVar var_86
  loc_656818: NextI2 var_F8, loc_6567EA
  loc_65681D: FLdI2 var_88
  loc_656820: LitI2_Byte 1
  loc_656822: AddI2
  loc_656823: FLdRfVar var_86
  loc_656826: LitI2_Byte 4
  loc_656828: ForI2 var_FC
  loc_65682E: LitVar_FALSE
  loc_656832: PopAdLdVar
  loc_656833: FLdRfVar var_F4
  loc_656836: FLdI2 var_86
  loc_656839: LitI2_Byte 1
  loc_65683B: SubI2
  loc_65683C: FLdPrThis
  loc_65683D: VCallAd Control_ID_BotonPreset
  loc_656840: FStAdFunc var_90
  loc_656843: FLdPr var_90
  loc_656846: Set from_stack_2 = Me(from_stack_1)
  loc_65684B: FLdPr var_F4
  loc_65684E: LateIdSt
  loc_656853: FFreeAd var_90 = ""
  loc_65685A: FLdRfVar var_86
  loc_65685D: NextI2 var_FC, loc_65682E
  loc_656862: LitI2_Byte 1
  loc_656864: FLdRfVar var_86
  loc_656867: FLdI2 var_88
  loc_65686A: ForI2 var_100
  loc_656870: FLdRfVar var_94
  loc_656873: FLdPr Me
  loc_656876: MemLdUI1 Surtidor_Actual
  loc_65687A: CI4UI1
  loc_65687B: FLdI2 var_86
  loc_65687E: LitI2_Byte 1
  loc_656880: SubI2
  loc_656881: CI4UI1
  loc_656882: ImpAdLdRf MemVar_74C12C
  loc_656885: AryLdPr
  loc_656888: MemLdUI1 global_0
  loc_65688C: CI2UI1
  loc_65688E: ImpAdLdRf MemVar_74A220
  loc_656891: NewIfNullPr clsProducts
  loc_656899: FLdZeroAd var_94
  loc_65689C: CVarStr var_B4
  loc_65689F: PopAdLdVar
  loc_6568A0: FLdRfVar var_F4
  loc_6568A3: FLdI2 var_86
  loc_6568A6: LitI2_Byte 1
  loc_6568A8: SubI2
  loc_6568A9: FLdPrThis
  loc_6568AA: VCallAd Control_ID_BotonPreset
  loc_6568AD: FStAdFunc var_90
  loc_6568B0: FLdPr var_90
  loc_6568B3: Set from_stack_2 = Me(from_stack_1)
  loc_6568B8: FLdPr var_F4
  loc_6568BB: LateIdSt
  loc_6568C0: FFreeAd var_90 = ""
  loc_6568C7: FFree1Var var_B4 = ""
  loc_6568CA: FLdRfVar var_86
  loc_6568CD: NextI2 var_100, loc_656870
  loc_6568D2: FLdPr Me
  loc_6568D5: MemLdUI1 presetgrade
  loc_6568D9: CI2UI1
  loc_6568DB: FLdI2 var_88
  loc_6568DE: GtI2
  loc_6568DF: BranchF loc_656919
  loc_6568E2: FLdRfVar var_F4
  loc_6568E5: LitI2_Byte 0
  loc_6568E7: FLdPrThis
  loc_6568E8: VCallAd Control_ID_BotonPreset
  loc_6568EB: FStAdFunc var_90
  loc_6568EE: FLdPr var_90
  loc_6568F1: Set from_stack_2 = Me(from_stack_1)
  loc_6568F6: FLdPr var_F4
  loc_6568F9: LateIdLdVar var_B4 DispID_7 -32767
  loc_656900: CBoolVar
  loc_656902: FFreeAd var_90 = ""
  loc_656909: FFree1Var var_B4 = ""
  loc_65690C: BranchF loc_656919
  loc_65690F: LitI2_Byte 0
  loc_656911: PopTmpLdAd2 var_102
  loc_656914: Call BotonPreset_UnknownEvent_8()
  loc_656919: ExitProcHresult
End Sub

Private Sub Volumen_LostFocus() '685D30
  'Data Table: 45B254
  loc_685934: FLdPrThis
  loc_685935: VCallAd Control_ID_Preset
  loc_685938: FStAdFunc var_88
  loc_68593B: FLdPr var_88
  loc_68593E: LateIdLdVar var_98 DispID_7 -32767
  loc_685945: CBoolVar
  loc_685947: CVarBoolI2 var_E0
  loc_68594B: FLdRfVar var_A0
  loc_68594E: FLdRfVar var_9C
  loc_685951: ImpAdLdRf MemVar_7520D4
  loc_685954: NewIfNullPr Global
  loc_685957:  = Global.Screen
  loc_68595C: FLdPr var_9C
  loc_68595F:  = Screen.ActiveControl
  loc_685964: FLdPr var_A0
  loc_685967: LateMemLdVar
  loc_68596C: LitVarStr var_B0, "Teclas"
  loc_685971: HardType
  loc_685972: NeVar var_D0
  loc_685976: AndVar var_F0
  loc_68597A: FLdRfVar var_F8
  loc_68597D: FLdRfVar var_F4
  loc_685980: ImpAdLdRf MemVar_7520D4
  loc_685983: NewIfNullPr Global
  loc_685986:  = Global.Screen
  loc_68598B: FLdPr var_F4
  loc_68598E:  = Screen.ActiveControl
  loc_685993: FLdPr var_F8
  loc_685996: LateMemLdVar
  loc_68599B: LitVarStr var_108, "Punto"
  loc_6859A0: HardType
  loc_6859A1: NeVar var_128
  loc_6859A5: AndVar var_138
  loc_6859A9: FLdRfVar var_140
  loc_6859AC: FLdRfVar var_13C
  loc_6859AF: ImpAdLdRf MemVar_7520D4
  loc_6859B2: NewIfNullPr Global
  loc_6859B5:  = Global.Screen
  loc_6859BA: FLdPr var_13C
  loc_6859BD:  = Screen.ActiveControl
  loc_6859C2: FLdPr var_140
  loc_6859C5: LateMemLdVar
  loc_6859CA: LitVarStr var_150, "Borrar"
  loc_6859CF: HardType
  loc_6859D0: NeVar var_170
  loc_6859D4: AndVar var_180
  loc_6859D8: FLdRfVar var_188
  loc_6859DB: FLdRfVar var_184
  loc_6859DE: ImpAdLdRf MemVar_7520D4
  loc_6859E1: NewIfNullPr Global
  loc_6859E4:  = Global.Screen
  loc_6859E9: FLdPr var_184
  loc_6859EC:  = Screen.ActiveControl
  loc_6859F1: FLdPr var_188
  loc_6859F4: LateMemLdVar
  loc_6859F9: LitVarStr var_198, "SSCommand4"
  loc_6859FE: HardType
  loc_6859FF: NeVar var_1B8
  loc_685A03: AndVar var_1C8
  loc_685A07: FLdRfVar var_1D0
  loc_685A0A: FLdRfVar var_1CC
  loc_685A0D: ImpAdLdRf MemVar_7520D4
  loc_685A10: NewIfNullPr Global
  loc_685A13:  = Global.Screen
  loc_685A18: FLdPr var_1CC
  loc_685A1B:  = Screen.ActiveControl
  loc_685A20: FLdPr var_1D0
  loc_685A23: LateMemLdVar
  loc_685A28: LitVarStr var_1E0, "Nro_Surtidor"
  loc_685A2D: HardType
  loc_685A2E: NeVar var_200
  loc_685A32: AndVar var_210
  loc_685A36: FLdRfVar var_218
  loc_685A39: FLdRfVar var_214
  loc_685A3C: ImpAdLdRf MemVar_7520D4
  loc_685A3F: NewIfNullPr Global
  loc_685A42:  = Global.Screen
  loc_685A47: FLdPr var_214
  loc_685A4A:  = Screen.ActiveControl
  loc_685A4F: FLdPr var_218
  loc_685A52: LateMemLdVar
  loc_685A57: LitVarStr var_228, "Animation1"
  loc_685A5C: HardType
  loc_685A5D: NeVar var_248
  loc_685A61: AndVar var_258
  loc_685A65: FLdRfVar var_260
  loc_685A68: FLdRfVar var_25C
  loc_685A6B: ImpAdLdRf MemVar_7520D4
  loc_685A6E: NewIfNullPr Global
  loc_685A71:  = Global.Screen
  loc_685A76: FLdPr var_25C
  loc_685A79:  = Screen.ActiveControl
  loc_685A7E: FLdPr var_260
  loc_685A81: LateMemLdVar
  loc_685A86: LitVarStr var_270, "BAutorizacion"
  loc_685A8B: HardType
  loc_685A8C: NeVar var_290
  loc_685A90: AndVar var_2A0
  loc_685A94: FLdRfVar var_2A8
  loc_685A97: FLdRfVar var_2A4
  loc_685A9A: ImpAdLdRf MemVar_7520D4
  loc_685A9D: NewIfNullPr Global
  loc_685AA0:  = Global.Screen
  loc_685AA5: FLdPr var_2A4
  loc_685AA8:  = Screen.ActiveControl
  loc_685AAD: FLdPr var_2A8
  loc_685AB0: LateMemLdVar
  loc_685AB5: LitVarStr var_2B8, "Preautorizacion"
  loc_685ABA: HardType
  loc_685ABB: NeVar var_2D8
  loc_685ABF: AndVar var_2E8
  loc_685AC3: FLdRfVar var_2F0
  loc_685AC6: FLdRfVar var_2EC
  loc_685AC9: ImpAdLdRf MemVar_7520D4
  loc_685ACC: NewIfNullPr Global
  loc_685ACF:  = Global.Screen
  loc_685AD4: FLdPr var_2EC
  loc_685AD7:  = Screen.ActiveControl
  loc_685ADC: FLdPr var_2F0
  loc_685ADF: LateMemLdVar
  loc_685AE4: LitVarStr var_300, "Emergencia"
  loc_685AE9: HardType
  loc_685AEA: NeVar var_320
  loc_685AEE: AndVar var_330
  loc_685AF2: FLdRfVar var_338
  loc_685AF5: FLdRfVar var_334
  loc_685AF8: ImpAdLdRf MemVar_7520D4
  loc_685AFB: NewIfNullPr Global
  loc_685AFE:  = Global.Screen
  loc_685B03: FLdPr var_334
  loc_685B06:  = Screen.ActiveControl
  loc_685B0B: FLdPr var_338
  loc_685B0E: LateMemLdVar
  loc_685B13: LitVarStr var_348, "SSCommand3"
  loc_685B18: HardType
  loc_685B19: NeVar var_368
  loc_685B1D: AndVar var_378
  loc_685B21: FLdRfVar var_380
  loc_685B24: FLdRfVar var_37C
  loc_685B27: ImpAdLdRf MemVar_7520D4
  loc_685B2A: NewIfNullPr Global
  loc_685B2D:  = Global.Screen
  loc_685B32: FLdPr var_37C
  loc_685B35:  = Screen.ActiveControl
  loc_685B3A: FLdPr var_380
  loc_685B3D: LateMemLdVar
  loc_685B42: LitVarStr var_390, "SSPanel1"
  loc_685B47: HardType
  loc_685B48: NeVar var_3B0
  loc_685B4C: AndVar var_3C0
  loc_685B50: FLdRfVar var_3C8
  loc_685B53: FLdRfVar var_3C4
  loc_685B56: ImpAdLdRf MemVar_7520D4
  loc_685B59: NewIfNullPr Global
  loc_685B5C:  = Global.Screen
  loc_685B61: FLdPr var_3C4
  loc_685B64:  = Screen.ActiveControl
  loc_685B69: FLdPr var_3C8
  loc_685B6C: LateMemLdVar
  loc_685B71: LitVarStr var_3D8, "Preset"
  loc_685B76: HardType
  loc_685B77: NeVar var_3F8
  loc_685B7B: AndVar var_408
  loc_685B7F: FLdRfVar var_410
  loc_685B82: FLdRfVar var_40C
  loc_685B85: ImpAdLdRf MemVar_7520D4
  loc_685B88: NewIfNullPr Global
  loc_685B8B:  = Global.Screen
  loc_685B90: FLdPr var_40C
  loc_685B93:  = Screen.ActiveControl
  loc_685B98: FLdPr var_410
  loc_685B9B: LateMemLdVar
  loc_685BA0: LitVarStr var_420, "SSTanqueLleno"
  loc_685BA5: HardType
  loc_685BA6: NeVar var_440
  loc_685BAA: AndVar var_450
  loc_685BAE: FLdRfVar var_458
  loc_685BB1: FLdRfVar var_454
  loc_685BB4: ImpAdLdRf MemVar_7520D4
  loc_685BB7: NewIfNullPr Global
  loc_685BBA:  = Global.Screen
  loc_685BBF: FLdPr var_454
  loc_685BC2:  = Screen.ActiveControl
  loc_685BC7: FLdPr var_458
  loc_685BCA: LateMemLdVar
  loc_685BCF: LitVarStr var_468, "cmdReenviar"
  loc_685BD4: HardType
  loc_685BD5: NeVar var_488
  loc_685BD9: AndVar var_498
  loc_685BDD: FLdRfVar var_4A0
  loc_685BE0: FLdRfVar var_49C
  loc_685BE3: ImpAdLdRf MemVar_7520D4
  loc_685BE6: NewIfNullPr Global
  loc_685BE9:  = Global.Screen
  loc_685BEE: FLdPr var_49C
  loc_685BF1:  = Screen.ActiveControl
  loc_685BF6: FLdPr var_4A0
  loc_685BF9: LateMemLdVar
  loc_685BFE: LitVarStr var_4B0, "cmdBorrarPreset"
  loc_685C03: HardType
  loc_685C04: NeVar var_4D0
  loc_685C08: AndVar var_4E0
  loc_685C0C: FLdRfVar var_4E8
  loc_685C0F: FLdRfVar var_4E4
  loc_685C12: ImpAdLdRf MemVar_7520D4
  loc_685C15: NewIfNullPr Global
  loc_685C18:  = Global.Screen
  loc_685C1D: FLdPr var_4E4
  loc_685C20:  = Screen.ActiveControl
  loc_685C25: FLdPr var_4E8
  loc_685C28: LateMemLdVar
  loc_685C2D: LitVarStr var_4F8, "cmdBorrarTodo"
  loc_685C32: HardType
  loc_685C33: NeVar var_518
  loc_685C37: AndVar var_528
  loc_685C3B: FLdRfVar var_530
  loc_685C3E: FLdRfVar var_52C
  loc_685C41: ImpAdLdRf MemVar_7520D4
  loc_685C44: NewIfNullPr Global
  loc_685C47:  = Global.Screen
  loc_685C4C: FLdPr var_52C
  loc_685C4F:  = Screen.ActiveControl
  loc_685C54: FLdPr var_530
  loc_685C57: LateMemLdVar
  loc_685C5C: LitVarStr var_540, "BotonPreset"
  loc_685C61: HardType
  loc_685C62: NeVar var_560
  loc_685C66: AndVar var_570
  loc_685C6A: CBoolVarNull
  loc_685C6C: FFreeAd var_4A0 = "": var_4E4 = "": var_4E8 = "": var_52C = "": var_530 = "": var_88 = "": var_9C = "": var_A0 = "": var_F4 = "": var_F8 = "": var_13C = "": var_140 = "": var_184 = "": var_188 = "": var_1CC = "": var_1D0 = "": var_214 = "": var_218 = "": var_25C = "": var_260 = "": var_2A4 = "": var_2A8 = "": var_2EC = "": var_2F0 = "": var_334 = "": var_338 = "": var_37C = "": var_380 = "": var_3C4 = "": var_3C8 = "": var_40C = "": var_410 = "": var_454 = "": var_458 = ""
  loc_685CB5: FFreeVar var_98 = "": var_C0 = "": var_E0 = "": var_118 = "": var_160 = "": var_1A8 = "": var_1F0 = "": var_238 = "": var_280 = "": var_2C8 = "": var_310 = "": var_358 = "": var_3A0 = "": var_3E8 = "": var_430 = "": var_478 = "": var_4C0 = "": var_508 = ""
  loc_685CDE: BranchF loc_685D2C
  loc_685CE1: FLdRfVar var_574
  loc_685CE4: FLdRfVar var_9C
  loc_685CE7: FLdRfVar var_88
  loc_685CEA: ImpAdLdRf MemVar_7520D4
  loc_685CED: NewIfNullPr Global
  loc_685CF0:  = Global.Screen
  loc_685CF5: FLdPr var_88
  loc_685CF8:  = Screen.ActiveForm
  loc_685CFD: FLdPr var_9C
  loc_685D00:  = Form.Name
  loc_685D05: ILdRf var_574
  loc_685D08: LitStr "Consola"
  loc_685D0B: EqStr
  loc_685D0D: FFree1Str var_574
  loc_685D10: FFreeAd var_88 = ""
  loc_685D17: BranchF loc_685D2C
  loc_685D1A: FLdPrThis
  loc_685D1B: VCallAd Control_ID_Monto
  loc_685D1E: FStAdFunc var_88
  loc_685D21: FLdPr var_88
  loc_685D24: Me.SetFocus
  loc_685D29: FFree1Ad var_88
  loc_685D2C: ExitProcHresult
End Sub

Private Sub Emergencia_UnknownEvent_8 '60435C
  'Data Table: 45B254
  loc_604288: ImpAdCallI2 Proc_167_4_6114E0()
  loc_60428D: BranchF loc_604359
  loc_604290: LitI4 &H14
  loc_604295: ImpAdLdRf MemVar_74A170
  loc_604298: Ary1LdI2
  loc_604299: NotI4
  loc_60429A: CVarBoolI2 var_104
  loc_60429E: LitVarI2 var_B4, 3
  loc_6042A3: LitI4 1
  loc_6042A8: ImpAdLdRf MemVar_74BF90
  loc_6042AB: CVarRef
  loc_6042B0: FLdRfVar var_C4
  loc_6042B3: ImpAdCallFPR4  = Mid(, , )
  loc_6042B8: FLdRfVar var_C4
  loc_6042BB: LitVarStr var_D4, "\\."
  loc_6042C0: HardType
  loc_6042C1: EqVar var_E4
  loc_6042C5: NotVar var_F4
  loc_6042C9: AndVar var_114
  loc_6042CD: CBoolVarNull
  loc_6042CF: FFreeVar var_B4 = "": var_C4 = ""
  loc_6042D8: BranchF loc_6042E4
  loc_6042DB: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6042E0: ExitProcHresult
  loc_6042E1: Branch loc_60433D
  loc_6042E4: ImpAdLdUI1
  loc_6042E8: CI2UI1
  loc_6042EA: LitI2_Byte 1
  loc_6042EC: EqI2
  loc_6042ED: BranchF loc_6042FF
  loc_6042F0: LitI2_Byte &H6B
  loc_6042F2: PopTmpLdAd2 var_116
  loc_6042F5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6042FA: NotI4
  loc_6042FB: BranchF loc_6042FF
  loc_6042FE: ExitProcHresult
  loc_6042FF: FLdRfVar var_116
  loc_604302: ImpAdLdRf MemVar_74C6D8
  loc_604305: NewIfNullPr CCEMLicence
  loc_604308:  = CCEMLicence.Caption
  loc_60430D: FLdI2 var_116
  loc_604310: BranchF loc_60433D
  loc_604313: LitVar_Missing var_F4
  loc_604316: LitVar_Missing var_E4
  loc_604319: LitVar_Missing var_C4
  loc_60431C: LitI4 &H40
  loc_604321: LitVarStr var_94, "Esta funcion no se encuentra disponible. "
  loc_604326: FStVarCopyObj var_B4
  loc_604329: FLdRfVar var_B4
  loc_60432C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_604331: FFreeVar var_B4 = "": var_C4 = "": var_E4 = ""
  loc_60433C: ExitProcHresult
  loc_60433D: FLdRfVar var_116
  loc_604340: FLdRfVar var_11C
  loc_604343: ImpAdLdRf MemVar_74C760
  loc_604346: NewIfNullPr Formx
  loc_604349: from_stack_1v = Formx.global_4589716Get()
  loc_60434E: FLdPr var_11C
  loc_604351: Formx.BackColor = from_stack_1
  loc_604356: FFree1Ad var_11C
  loc_604359: ExitProcHresult
End Sub

Private Sub Emergencia_Click(Value As Integer) '5CB8B4
  'Data Table: 45B254
  loc_5CB8A4: LitI2_Byte &HFF
  loc_5CB8A6: ILdI2 arg_10
  loc_5CB8A9: ILdRf Value
  loc_5CB8AC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CB8B1: ExitProcHresult
End Sub

Private Sub Emergencia_KeyPress(KeyAscii As Integer) '5CBA34
  'Data Table: 45B254
  loc_5CBA24: LitI2_Byte 0
  loc_5CBA26: ILdI2 arg_10
  loc_5CBA29: ILdRf KeyAscii
  loc_5CBA2C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CBA31: ExitProcHresult
End Sub

Private Sub Preautorizacion_UnknownEvent_8 '62F570
  'Data Table: 45B254
  loc_62F3B8: ImpAdCallI2 Proc_167_4_6114E0()
  loc_62F3BD: BranchF loc_62F56E
  loc_62F3C0: LitVarI2 var_B8, 3
  loc_62F3C5: LitI4 1
  loc_62F3CA: ImpAdLdRf MemVar_74BF90
  loc_62F3CD: CVarRef
  loc_62F3D2: FLdRfVar var_C8
  loc_62F3D5: ImpAdCallFPR4  = Mid(, , )
  loc_62F3DA: FLdRfVar var_C8
  loc_62F3DD: LitVarStr var_D8, "\\."
  loc_62F3E2: HardType
  loc_62F3E3: EqVar var_E8
  loc_62F3E7: NotVar var_F8
  loc_62F3EB: CBoolVarNull
  loc_62F3ED: FFreeVar var_B8 = ""
  loc_62F3F4: BranchF loc_62F48B
  loc_62F3F7: LitI4 &H27
  loc_62F3FC: ImpAdLdRf MemVar_74A170
  loc_62F3FF: Ary1LdI2
  loc_62F400: NotI4
  loc_62F401: BranchF loc_62F40A
  loc_62F404: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_62F409: ExitProcHresult
  loc_62F40A: LitI2_Byte 1
  loc_62F40C: CUI1I2
  loc_62F40E: FLdRfVar var_86
  loc_62F411: ImpAdLdUI1
  loc_62F415: ForUI1 var_FC
  loc_62F41B: FLdUI1
  loc_62F41F: CI4UI1
  loc_62F420: ImpAdLdRf MemVar_74C004
  loc_62F423: Ary1LdPr
  loc_62F424: MemLdUI1 global_43
  loc_62F428: LitI2 192
  loc_62F42B: NeI2
  loc_62F42C: FLdUI1
  loc_62F430: CI4UI1
  loc_62F431: ImpAdLdRf MemVar_74C004
  loc_62F434: Ary1LdPr
  loc_62F435: MemLdUI1 global_43
  loc_62F439: LitI2_Byte 1
  loc_62F43B: NeI2
  loc_62F43C: AndI4
  loc_62F43D: FLdUI1
  loc_62F441: CI4UI1
  loc_62F442: ImpAdLdRf MemVar_74C004
  loc_62F445: Ary1LdPr
  loc_62F446: MemLdUI1 global_43
  loc_62F44A: LitI2_Byte &H10
  loc_62F44C: NeI2
  loc_62F44D: AndI4
  loc_62F44E: BranchF loc_62F47F
  loc_62F451: FLdUI1
  loc_62F455: CI4UI1
  loc_62F456: ImpAdLdRf MemVar_74A188
  loc_62F459: Ary1LdI2
  loc_62F45A: BranchF loc_62F47F
  loc_62F45D: FLdRfVar var_102
  loc_62F460: LitStr vbNullString
  loc_62F463: FLdRfVar var_86
  loc_62F466: FLdRfVar var_100
  loc_62F469: ImpAdLdRf MemVar_74C760
  loc_62F46C: NewIfNullPr Formx
  loc_62F46F: from_stack_1v = Formx.global_4589716Get()
  loc_62F474: FLdPr var_100
  loc_62F47C: FFree1Ad var_100
  loc_62F47F: FLdRfVar var_86
  loc_62F482: NextUI1
  loc_62F488: Branch loc_62F56E
  loc_62F48B: ImpAdLdUI1
  loc_62F48F: CI2UI1
  loc_62F491: LitI2_Byte 1
  loc_62F493: EqI2
  loc_62F494: BranchF loc_62F4A6
  loc_62F497: LitI2_Byte &H6B
  loc_62F499: PopTmpLdAd2 var_102
  loc_62F49C: ImpAdCallI2 Proc_94_7_603DD0()
  loc_62F4A1: NotI4
  loc_62F4A2: BranchF loc_62F4A6
  loc_62F4A5: ExitProcHresult
  loc_62F4A6: FLdRfVar var_102
  loc_62F4A9: ImpAdLdRf MemVar_74C6D8
  loc_62F4AC: NewIfNullPr CCEMLicence
  loc_62F4B4: FLdI2 var_102
  loc_62F4B7: LitI2_Byte &HFF
  loc_62F4B9: EqI2
  loc_62F4BA: FLdRfVar var_104
  loc_62F4BD: ImpAdLdRf MemVar_74C6D8
  loc_62F4C0: NewIfNullPr CCEMLicence
  loc_62F4C8: FLdI2 var_104
  loc_62F4CB: LitI2_Byte &HFF
  loc_62F4CD: EqI2
  loc_62F4CE: AndI4
  loc_62F4CF: BranchF loc_62F4FC
  loc_62F4D2: LitVar_Missing var_F8
  loc_62F4D5: LitVar_Missing var_E8
  loc_62F4D8: LitVar_Missing var_C8
  loc_62F4DB: LitI4 &H40
  loc_62F4E0: LitVarStr var_98, "Esta funcion no se encuentra disponible. "
  loc_62F4E5: FStVarCopyObj var_B8
  loc_62F4E8: FLdRfVar var_B8
  loc_62F4EB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62F4F0: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_62F4FB: ExitProcHresult
  loc_62F4FC: LitI2_Byte 1
  loc_62F4FE: CUI1I2
  loc_62F500: FLdRfVar var_86
  loc_62F503: ImpAdLdUI1
  loc_62F507: ForUI1 var_118
  loc_62F50D: FLdUI1
  loc_62F511: CI4UI1
  loc_62F512: ImpAdLdRf MemVar_74C004
  loc_62F515: Ary1LdPr
  loc_62F516: MemLdUI1 global_43
  loc_62F51A: LitI2 192
  loc_62F51D: NeI2
  loc_62F51E: FLdUI1
  loc_62F522: CI4UI1
  loc_62F523: ImpAdLdRf MemVar_74C004
  loc_62F526: Ary1LdPr
  loc_62F527: MemLdUI1 global_43
  loc_62F52B: LitI2_Byte 1
  loc_62F52D: NeI2
  loc_62F52E: AndI4
  loc_62F52F: FLdUI1
  loc_62F533: CI4UI1
  loc_62F534: ImpAdLdRf MemVar_74C004
  loc_62F537: Ary1LdPr
  loc_62F538: MemLdUI1 global_43
  loc_62F53C: LitI2_Byte &H10
  loc_62F53E: NeI2
  loc_62F53F: AndI4
  loc_62F540: BranchF loc_62F565
  loc_62F543: FLdRfVar var_102
  loc_62F546: LitStr vbNullString
  loc_62F549: FLdRfVar var_86
  loc_62F54C: FLdRfVar var_100
  loc_62F54F: ImpAdLdRf MemVar_74C760
  loc_62F552: NewIfNullPr Formx
  loc_62F555: from_stack_1v = Formx.global_4589716Get()
  loc_62F55A: FLdPr var_100
  loc_62F562: FFree1Ad var_100
  loc_62F565: FLdRfVar var_86
  loc_62F568: NextUI1
  loc_62F56E: ExitProcHresult
End Sub

Private Sub Preautorizacion_Click(Value As Integer) '5CCFF4
  'Data Table: 45B254
  loc_5CCFE4: LitI2_Byte &HFF
  loc_5CCFE6: ILdI2 arg_10
  loc_5CCFE9: ILdRf Value
  loc_5CCFEC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CCFF1: ExitProcHresult
End Sub

Private Sub Preautorizacion_KeyPress(KeyAscii As Integer) '5CD134
  'Data Table: 45B254
  loc_5CD124: LitI2_Byte 0
  loc_5CD126: ILdI2 arg_10
  loc_5CD129: ILdRf KeyAscii
  loc_5CD12C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD131: ExitProcHresult
End Sub

Private Sub BAutorizacion_UnknownEvent_8 '624CE0
  'Data Table: 45B254
  loc_624B6C: ImpAdCallI2 Proc_167_4_6114E0()
  loc_624B71: BranchF loc_624CDC
  loc_624B74: LitVarI2 var_B8, 3
  loc_624B79: LitI4 1
  loc_624B7E: ImpAdLdRf MemVar_74BF90
  loc_624B81: CVarRef
  loc_624B86: FLdRfVar var_C8
  loc_624B89: ImpAdCallFPR4  = Mid(, , )
  loc_624B8E: FLdRfVar var_C8
  loc_624B91: LitVarStr var_D8, "\\."
  loc_624B96: HardType
  loc_624B97: EqVar var_E8
  loc_624B9B: NotVar var_F8
  loc_624B9F: CBoolVarNull
  loc_624BA1: FFreeVar var_B8 = ""
  loc_624BA8: BranchF loc_624C1C
  loc_624BAB: LitI4 5
  loc_624BB0: ImpAdLdRf MemVar_74A170
  loc_624BB3: Ary1LdI2
  loc_624BB4: NotI4
  loc_624BB5: BranchF loc_624BBE
  loc_624BB8: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_624BBD: ExitProcHresult
  loc_624BBE: LitI2_Byte 1
  loc_624BC0: CUI1I2
  loc_624BC2: FLdRfVar var_86
  loc_624BC5: ImpAdLdUI1
  loc_624BC9: ForUI1 var_FC
  loc_624BCF: FLdUI1
  loc_624BD3: CI4UI1
  loc_624BD4: ImpAdLdRf MemVar_74C004
  loc_624BD7: Ary1LdPr
  loc_624BD8: MemLdUI1 global_43
  loc_624BDC: LitI2_Byte &H70
  loc_624BDE: EqI2
  loc_624BDF: BranchF loc_624C10
  loc_624BE2: FLdUI1
  loc_624BE6: CI4UI1
  loc_624BE7: ImpAdLdRf MemVar_74A188
  loc_624BEA: Ary1LdI2
  loc_624BEB: BranchF loc_624C10
  loc_624BEE: FLdRfVar var_102
  loc_624BF1: LitStr vbNullString
  loc_624BF4: FLdRfVar var_86
  loc_624BF7: FLdRfVar var_100
  loc_624BFA: ImpAdLdRf MemVar_74C760
  loc_624BFD: NewIfNullPr Formx
  loc_624C00: from_stack_1v = Formx.global_4589716Get()
  loc_624C05: FLdPr var_100
  loc_624C0D: FFree1Ad var_100
  loc_624C10: FLdRfVar var_86
  loc_624C13: NextUI1
  loc_624C19: Branch loc_624CDC
  loc_624C1C: ImpAdLdUI1
  loc_624C20: CI2UI1
  loc_624C22: LitI2_Byte 1
  loc_624C24: EqI2
  loc_624C25: BranchF loc_624C37
  loc_624C28: LitI2_Byte &H6B
  loc_624C2A: PopTmpLdAd2 var_102
  loc_624C2D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_624C32: NotI4
  loc_624C33: BranchF loc_624C37
  loc_624C36: ExitProcHresult
  loc_624C37: FLdRfVar var_102
  loc_624C3A: ImpAdLdRf MemVar_74C6D8
  loc_624C3D: NewIfNullPr CCEMLicence
  loc_624C45: FLdI2 var_102
  loc_624C48: LitI2_Byte &HFF
  loc_624C4A: EqI2
  loc_624C4B: FLdRfVar var_104
  loc_624C4E: ImpAdLdRf MemVar_74C6D8
  loc_624C51: NewIfNullPr CCEMLicence
  loc_624C59: FLdI2 var_104
  loc_624C5C: LitI2_Byte &HFF
  loc_624C5E: EqI2
  loc_624C5F: AndI4
  loc_624C60: BranchF loc_624C8D
  loc_624C63: LitVar_Missing var_F8
  loc_624C66: LitVar_Missing var_E8
  loc_624C69: LitVar_Missing var_C8
  loc_624C6C: LitI4 &H40
  loc_624C71: LitVarStr var_98, "Esta funcion no se encuentra disponible. "
  loc_624C76: FStVarCopyObj var_B8
  loc_624C79: FLdRfVar var_B8
  loc_624C7C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_624C81: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_624C8C: ExitProcHresult
  loc_624C8D: LitI2_Byte 1
  loc_624C8F: CUI1I2
  loc_624C91: FLdRfVar var_86
  loc_624C94: ImpAdLdUI1
  loc_624C98: ForUI1 var_118
  loc_624C9E: FLdUI1
  loc_624CA2: CI4UI1
  loc_624CA3: ImpAdLdRf MemVar_74C004
  loc_624CA6: Ary1LdPr
  loc_624CA7: MemLdUI1 global_43
  loc_624CAB: LitI2_Byte &H70
  loc_624CAD: EqI2
  loc_624CAE: BranchF loc_624CD3
  loc_624CB1: FLdRfVar var_102
  loc_624CB4: LitStr vbNullString
  loc_624CB7: FLdRfVar var_86
  loc_624CBA: FLdRfVar var_100
  loc_624CBD: ImpAdLdRf MemVar_74C760
  loc_624CC0: NewIfNullPr Formx
  loc_624CC3: from_stack_1v = Formx.global_4589716Get()
  loc_624CC8: FLdPr var_100
  loc_624CD0: FFree1Ad var_100
  loc_624CD3: FLdRfVar var_86
  loc_624CD6: NextUI1
  loc_624CDC: ExitProcHresult
End Sub

Private Sub BAutorizacion_Click(Value As Integer) '5CAE34
  'Data Table: 45B254
  loc_5CAE24: LitI2_Byte &HFF
  loc_5CAE26: ILdI2 arg_10
  loc_5CAE29: ILdRf Value
  loc_5CAE2C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CAE31: ExitProcHresult
End Sub

Private Sub BAutorizacion_KeyPress(KeyAscii As Integer) '5CADF4
  'Data Table: 45B254
  loc_5CADE4: LitI2_Byte 0
  loc_5CADE6: ILdI2 arg_10
  loc_5CADE9: ILdRf KeyAscii
  loc_5CADEC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CADF1: ExitProcHresult
End Sub

Private Sub CambioManifold_UnknownEvent_8 '66F2B8
  'Data Table: 45B254
  loc_66EEC0: LitI4 9
  loc_66EEC5: ImpAdLdRf MemVar_74A170
  loc_66EEC8: Ary1LdI2
  loc_66EEC9: NotI4
  loc_66EECA: CVarBoolI2 var_110
  loc_66EECE: LitVarI2 var_C0, 3
  loc_66EED3: LitI4 1
  loc_66EED8: ImpAdLdRf MemVar_74BF90
  loc_66EEDB: CVarRef
  loc_66EEE0: FLdRfVar var_D0
  loc_66EEE3: ImpAdCallFPR4  = Mid(, , )
  loc_66EEE8: FLdRfVar var_D0
  loc_66EEEB: LitVarStr var_E0, "\\."
  loc_66EEF0: HardType
  loc_66EEF1: EqVar var_F0
  loc_66EEF5: NotVar var_100
  loc_66EEF9: AndVar var_120
  loc_66EEFD: CBoolVarNull
  loc_66EEFF: FFreeVar var_C0 = "": var_D0 = ""
  loc_66EF08: BranchF loc_66EF11
  loc_66EF0B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_66EF10: ExitProcHresult
  loc_66EF11: LitI2_Byte 0
  loc_66EF13: CUI1I2
  loc_66EF15: FLdRfVar var_8A
  loc_66EF18: LitI2_Byte 3
  loc_66EF1A: CUI1I2
  loc_66EF1C: ForUI1 var_124
  loc_66EF22: FLdRfVar var_12C
  loc_66EF25: FLdUI1
  loc_66EF29: CI2UI1
  loc_66EF2B: FLdPrThis
  loc_66EF2C: VCallAd Control_ID_BotonTanque
  loc_66EF2F: FStAdFunc var_128
  loc_66EF32: FLdPr var_128
  loc_66EF35: Set from_stack_2 = Me(from_stack_1)
  loc_66EF3A: FLdPr var_12C
  loc_66EF3D: LateIdLdVar var_C0 DispID_-501 -1
  loc_66EF44: CI4Var
  loc_66EF46: LitI4 &HFF0000
  loc_66EF4B: EqI4
  loc_66EF4C: FFreeAd var_128 = ""
  loc_66EF53: FFree1Var var_C0 = ""
  loc_66EF56: BranchF loc_66EF64
  loc_66EF59: FLdUI1
  loc_66EF5D: FStUI1 var_86
  loc_66EF61: Branch loc_66EF6D
  loc_66EF64: FLdRfVar var_8A
  loc_66EF67: NextUI1
  loc_66EF6D: FLdRfVar var_12E
  loc_66EF70: FLdUI1
  loc_66EF74: CI2UI1
  loc_66EF76: FLdPr Me
  loc_66EF79: MemLdUI1 Surtidor_Actual
  loc_66EF7D: CI2UI1
  loc_66EF7F: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_66EF84: FLdRfVar var_132
  loc_66EF87: FLdRfVar var_90
  loc_66EF8A: FLdUI1
  loc_66EF8E: PopTmpLdAd1
  loc_66EF92: FLdRfVar var_86
  loc_66EF95: FLdPr Me
  loc_66EF98: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_66EF9B: FLdRfVar var_128
  loc_66EF9E: ImpAdLdRf MemVar_74C760
  loc_66EFA1: NewIfNullPr Formx
  loc_66EFA4: from_stack_1v = Formx.global_4589716Get()
  loc_66EFA9: FLdPr var_128
  loc_66EFAC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66EFB1: FLdI2 var_132
  loc_66EFB4: NotI4
  loc_66EFB5: FFree1Ad var_128
  loc_66EFB8: BranchF loc_66EFE7
  loc_66EFBB: FLdRfVar var_C0
  loc_66EFBE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66EFC3: FLdRfVar var_C0
  loc_66EFC6: CBoolVarNull
  loc_66EFC8: FFree1Var var_C0 = ""
  loc_66EFCB: BranchF loc_66EFE4
  loc_66EFCE: ILdRf Me
  loc_66EFD1: FStAdNoPop
  loc_66EFD5: ImpAdLdRf MemVar_7520D4
  loc_66EFD8: NewIfNullPr Global
  loc_66EFDB: Global.Unload from_stack_1
  loc_66EFE0: FFree1Ad var_128
  loc_66EFE3: ExitProcHresult
  loc_66EFE4: Branch loc_66EF6D
  loc_66EFE7: LitI2 255
  loc_66EFEA: CUI1I2
  loc_66EFEC: FStUI1 var_88
  loc_66EFF0: FLdPr Me
  loc_66EFF3: MemLdI2 Prod2
  loc_66EFF6: BranchF loc_66F0E9
  loc_66EFF9: LitI2_Byte 0
  loc_66EFFB: CUI1I2
  loc_66EFFD: FLdRfVar var_8A
  loc_66F000: LitI2_Byte 2
  loc_66F002: CUI1I2
  loc_66F004: ForUI1 var_136
  loc_66F00A: ILdRf var_90
  loc_66F00D: ImpAdCallFPR4 push Val()
  loc_66F012: FStFPR8 var_140
  loc_66F015: FLdPr Me
  loc_66F018: MemLdUI1 Surtidor_Actual
  loc_66F01C: CI4UI1
  loc_66F01D: FLdUI1
  loc_66F021: CI4UI1
  loc_66F022: FLdUI1
  loc_66F026: CI4UI1
  loc_66F027: ImpAdLdRf MemVar_74C174
  loc_66F02A: AryLdPr
  loc_66F02D: MemLdUI1 global_0
  loc_66F031: CR8I2
  loc_66F032: FLdFPR8 var_140
  loc_66F035: CR8R8
  loc_66F036: EqR4
  loc_66F037: BranchF loc_66F0DD
  loc_66F03A: FLdUI1
  loc_66F03E: CI2UI1
  loc_66F040: LitI2_Byte 2
  loc_66F042: EqI2
  loc_66F043: BranchF loc_66F069
  loc_66F046: FLdPr Me
  loc_66F049: MemLdUI1 Surtidor_Actual
  loc_66F04D: CI4UI1
  loc_66F04E: FLdUI1
  loc_66F052: CI4UI1
  loc_66F053: LitI4 0
  loc_66F058: ImpAdLdRf MemVar_74C174
  loc_66F05B: AryLdPr
  loc_66F05E: MemLdUI1 global_0
  loc_66F062: FStUI1 var_88
  loc_66F066: Branch loc_66F0DD
  loc_66F069: FLdPr Me
  loc_66F06C: MemLdUI1 Surtidor_Actual
  loc_66F070: CI4UI1
  loc_66F071: FLdUI1
  loc_66F075: CI4UI1
  loc_66F076: FLdUI1
  loc_66F07A: CI2UI1
  loc_66F07C: LitI2_Byte 1
  loc_66F07E: AddI2
  loc_66F07F: CI4UI1
  loc_66F080: ImpAdLdRf MemVar_74C174
  loc_66F083: AryLdPr
  loc_66F086: MemLdUI1 global_0
  loc_66F08A: CI2UI1
  loc_66F08C: LitI2_Byte 0
  loc_66F08E: NeI2
  loc_66F08F: BranchF loc_66F0BA
  loc_66F092: FLdPr Me
  loc_66F095: MemLdUI1 Surtidor_Actual
  loc_66F099: CI4UI1
  loc_66F09A: FLdUI1
  loc_66F09E: CI4UI1
  loc_66F09F: FLdUI1
  loc_66F0A3: CI2UI1
  loc_66F0A5: LitI2_Byte 1
  loc_66F0A7: AddI2
  loc_66F0A8: CI4UI1
  loc_66F0A9: ImpAdLdRf MemVar_74C174
  loc_66F0AC: AryLdPr
  loc_66F0AF: MemLdUI1 global_0
  loc_66F0B3: FStUI1 var_88
  loc_66F0B7: Branch loc_66F0DA
  loc_66F0BA: FLdPr Me
  loc_66F0BD: MemLdUI1 Surtidor_Actual
  loc_66F0C1: CI4UI1
  loc_66F0C2: FLdUI1
  loc_66F0C6: CI4UI1
  loc_66F0C7: LitI4 0
  loc_66F0CC: ImpAdLdRf MemVar_74C174
  loc_66F0CF: AryLdPr
  loc_66F0D2: MemLdUI1 global_0
  loc_66F0D6: FStUI1 var_88
  loc_66F0DA: Branch loc_66F0E6
  loc_66F0DD: FLdRfVar var_8A
  loc_66F0E0: NextUI1
  loc_66F0E6: Branch loc_66F1D6
  loc_66F0E9: LitI2_Byte 0
  loc_66F0EB: CUI1I2
  loc_66F0ED: FLdRfVar var_8A
  loc_66F0F0: LitI2_Byte 2
  loc_66F0F2: CUI1I2
  loc_66F0F4: ForUI1 var_144
  loc_66F0FA: ILdRf var_90
  loc_66F0FD: ImpAdCallFPR4 push Val()
  loc_66F102: FStFPR8 var_140
  loc_66F105: FLdPr Me
  loc_66F108: MemLdUI1 Surtidor_Actual
  loc_66F10C: CI4UI1
  loc_66F10D: FLdUI1
  loc_66F111: CI4UI1
  loc_66F112: FLdUI1
  loc_66F116: CI4UI1
  loc_66F117: ImpAdLdRf MemVar_74C14C
  loc_66F11A: AryLdPr
  loc_66F11D: MemLdUI1 global_0
  loc_66F121: CR8I2
  loc_66F122: FLdFPR8 var_140
  loc_66F125: CR8R8
  loc_66F126: EqR4
  loc_66F127: BranchF loc_66F1CD
  loc_66F12A: FLdUI1
  loc_66F12E: CI2UI1
  loc_66F130: LitI2_Byte 2
  loc_66F132: EqI2
  loc_66F133: BranchF loc_66F159
  loc_66F136: FLdPr Me
  loc_66F139: MemLdUI1 Surtidor_Actual
  loc_66F13D: CI4UI1
  loc_66F13E: FLdUI1
  loc_66F142: CI4UI1
  loc_66F143: LitI4 0
  loc_66F148: ImpAdLdRf MemVar_74C14C
  loc_66F14B: AryLdPr
  loc_66F14E: MemLdUI1 global_0
  loc_66F152: FStUI1 var_88
  loc_66F156: Branch loc_66F1CD
  loc_66F159: FLdPr Me
  loc_66F15C: MemLdUI1 Surtidor_Actual
  loc_66F160: CI4UI1
  loc_66F161: FLdUI1
  loc_66F165: CI4UI1
  loc_66F166: FLdUI1
  loc_66F16A: CI2UI1
  loc_66F16C: LitI2_Byte 1
  loc_66F16E: AddI2
  loc_66F16F: CI4UI1
  loc_66F170: ImpAdLdRf MemVar_74C14C
  loc_66F173: AryLdPr
  loc_66F176: MemLdUI1 global_0
  loc_66F17A: CI2UI1
  loc_66F17C: LitI2_Byte 0
  loc_66F17E: NeI2
  loc_66F17F: BranchF loc_66F1AA
  loc_66F182: FLdPr Me
  loc_66F185: MemLdUI1 Surtidor_Actual
  loc_66F189: CI4UI1
  loc_66F18A: FLdUI1
  loc_66F18E: CI4UI1
  loc_66F18F: FLdUI1
  loc_66F193: CI2UI1
  loc_66F195: LitI2_Byte 1
  loc_66F197: AddI2
  loc_66F198: CI4UI1
  loc_66F199: ImpAdLdRf MemVar_74C14C
  loc_66F19C: AryLdPr
  loc_66F19F: MemLdUI1 global_0
  loc_66F1A3: FStUI1 var_88
  loc_66F1A7: Branch loc_66F1CA
  loc_66F1AA: FLdPr Me
  loc_66F1AD: MemLdUI1 Surtidor_Actual
  loc_66F1B1: CI4UI1
  loc_66F1B2: FLdUI1
  loc_66F1B6: CI4UI1
  loc_66F1B7: LitI4 0
  loc_66F1BC: ImpAdLdRf MemVar_74C14C
  loc_66F1BF: AryLdPr
  loc_66F1C2: MemLdUI1 global_0
  loc_66F1C6: FStUI1 var_88
  loc_66F1CA: Branch loc_66F1D6
  loc_66F1CD: FLdRfVar var_8A
  loc_66F1D0: NextUI1
  loc_66F1D6: FLdUI1
  loc_66F1DA: CI2UI1
  loc_66F1DC: LitI2 255
  loc_66F1DF: EqI2
  loc_66F1E0: BranchF loc_66F22F
  loc_66F1E3: FLdPr Me
  loc_66F1E6: MemLdI2 Prod2
  loc_66F1E9: BranchF loc_66F20F
  loc_66F1EC: FLdPr Me
  loc_66F1EF: MemLdUI1 Surtidor_Actual
  loc_66F1F3: CI4UI1
  loc_66F1F4: FLdUI1
  loc_66F1F8: CI4UI1
  loc_66F1F9: LitI4 0
  loc_66F1FE: ImpAdLdRf MemVar_74C174
  loc_66F201: AryLdPr
  loc_66F204: MemLdUI1 global_0
  loc_66F208: FStUI1 var_88
  loc_66F20C: Branch loc_66F22F
  loc_66F20F: FLdPr Me
  loc_66F212: MemLdUI1 Surtidor_Actual
  loc_66F216: CI4UI1
  loc_66F217: FLdUI1
  loc_66F21B: CI4UI1
  loc_66F21C: LitI4 0
  loc_66F221: ImpAdLdRf MemVar_74C14C
  loc_66F224: AryLdPr
  loc_66F227: MemLdUI1 global_0
  loc_66F22B: FStUI1 var_88
  loc_66F22F: FLdRfVar var_12E
  loc_66F232: FLdUI1
  loc_66F236: CI2UI1
  loc_66F238: FLdPr Me
  loc_66F23B: MemLdUI1 Surtidor_Actual
  loc_66F23F: CI2UI1
  loc_66F241: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_66F246: FLdRfVar var_C0
  loc_66F249: FLdUI1
  loc_66F24D: PopTmpLdAd1
  loc_66F251: FLdRfVar var_88
  loc_66F254: FLdRfVar var_128
  loc_66F257: ImpAdLdRf MemVar_74C760
  loc_66F25A: NewIfNullPr Formx
  loc_66F25D: from_stack_1v = Formx.global_4589716Get()
  loc_66F262: FLdPr var_128
  loc_66F265: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_66F26A: FLdRfVar var_C0
  loc_66F26D: NotVar var_D0
  loc_66F271: CBoolVarNull
  loc_66F273: FFree1Ad var_128
  loc_66F276: FFree1Var var_C0 = ""
  loc_66F279: BranchF loc_66F2A8
  loc_66F27C: FLdRfVar var_C0
  loc_66F27F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66F284: FLdRfVar var_C0
  loc_66F287: CBoolVarNull
  loc_66F289: FFree1Var var_C0 = ""
  loc_66F28C: BranchF loc_66F2A5
  loc_66F28F: ILdRf Me
  loc_66F292: FStAdNoPop
  loc_66F296: ImpAdLdRf MemVar_7520D4
  loc_66F299: NewIfNullPr Global
  loc_66F29C: Global.Unload from_stack_1
  loc_66F2A1: FFree1Ad var_128
  loc_66F2A4: ExitProcHresult
  loc_66F2A5: Branch loc_66F22F
  loc_66F2A8: FLdRfVar var_86
  loc_66F2AB: FLdPr Me
  loc_66F2AE: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_66F2B1: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_66F2B6: ExitProcHresult
End Sub

Private Sub PorProducto_DonePainting() '5C8C08
  'Data Table: 45B254
  loc_5C8C00: Call ActualizarEstadisticas()
  loc_5C8C05: ExitProcHresult
End Sub

Private Sub NumeroGrid_Click(arg_C) '61A7AC
  'Data Table: 45B254
  loc_61A678: LitI2_Byte 0
  loc_61A67A: FLdPr Me
  loc_61A67D: MemStI2 esPagarVenta
  loc_61A680: LitStr "ConVolTicket"
  loc_61A683: FStStrCopy var_88
  loc_61A686: FLdRfVar var_88
  loc_61A689: ImpAdCallI2 Proc_158_2_607130()
  loc_61A68E: FLdRfVar var_94
  loc_61A691: FLdRfVar var_90
  loc_61A694: ILdI2 arg_C
  loc_61A697: FLdPrThis
  loc_61A698: VCallAd Control_ID_PPUGrid
  loc_61A69B: FStAdFunc var_8C
  loc_61A69E: FLdPr var_8C
  loc_61A6A1: Set from_stack_2 = Me(from_stack_1)
  loc_61A6A6: FLdPr var_90
  loc_61A6A9:  = Me.Caption
  loc_61A6AE: ILdRf var_94
  loc_61A6B1: LitStr vbNullString
  loc_61A6B4: NeStr
  loc_61A6B6: AndI4
  loc_61A6B7: FFreeStr var_88 = ""
  loc_61A6BE: FFreeAd var_8C = ""
  loc_61A6C5: BranchF loc_61A71E
  loc_61A6C8: FLdRfVar var_88
  loc_61A6CB: FLdRfVar var_90
  loc_61A6CE: ILdI2 arg_C
  loc_61A6D1: FLdPrThis
  loc_61A6D2: VCallAd Control_ID_ProductoGrid
  loc_61A6D5: FStAdFunc var_8C
  loc_61A6D8: FLdPr var_8C
  loc_61A6DB: Set from_stack_2 = Me(from_stack_1)
  loc_61A6E0: FLdPr var_90
  loc_61A6E3:  = Me.Tag
  loc_61A6E8: ILdRf var_88
  loc_61A6EB: FLdPr Me
  loc_61A6EE: MemStStrCopy
  loc_61A6F2: FFree1Str var_88
  loc_61A6F5: FFreeAd var_8C = ""
  loc_61A6FC: LitStr vbNullString
  loc_61A6FF: FLdPr Me
  loc_61A702: MemStStrCopy
  loc_61A706: LitVar_Missing var_B4
  loc_61A709: PopAdLdVar
  loc_61A70A: LitVarI2 var_A4, 1
  loc_61A70F: PopAdLdVar
  loc_61A710: ImpAdLdRf MemVar_74E3B8
  loc_61A713: NewIfNullPr FrmVenTicketPago
  loc_61A716: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_61A71B: Branch loc_61A726
  loc_61A71E: LitI2_Byte &HFF
  loc_61A720: FLdPr Me
  loc_61A723: MemStI2 esPagarVenta
  loc_61A726: FLdPr Me
  loc_61A729: MemLdI2 esPagarVenta
  loc_61A72C: BranchF loc_61A7A8
  loc_61A72F: ImpAdLdUI1
  loc_61A733: CI2UI1
  loc_61A735: LitI2_Byte 1
  loc_61A737: EqI2
  loc_61A738: FLdRfVar var_88
  loc_61A73B: FLdRfVar var_90
  loc_61A73E: ILdI2 arg_C
  loc_61A741: FLdPrThis
  loc_61A742: VCallAd Control_ID_ProductoGrid
  loc_61A745: FStAdFunc var_8C
  loc_61A748: FLdPr var_8C
  loc_61A74B: Set from_stack_2 = Me(from_stack_1)
  loc_61A750: FLdPr var_90
  loc_61A753:  = Me.Caption
  loc_61A758: ILdRf var_88
  loc_61A75B: LitStr vbNullString
  loc_61A75E: NeStr
  loc_61A760: AndI4
  loc_61A761: FFree1Str var_88
  loc_61A764: FFreeAd var_8C = ""
  loc_61A76B: BranchF loc_61A77D
  loc_61A76E: LitI2_Byte &H6B
  loc_61A770: PopTmpLdAd2 var_B6
  loc_61A773: ImpAdCallI2 Proc_94_7_603DD0()
  loc_61A778: NotI4
  loc_61A779: BranchF loc_61A77D
  loc_61A77C: ExitProcHresult
  loc_61A77D: FLdRfVar var_B6
  loc_61A780: ImpAdLdRf MemVar_74C6D8
  loc_61A783: NewIfNullPr CCEMLicence
  loc_61A786:  = CCEMLicence.Caption
  loc_61A78B: FLdI2 var_B6
  loc_61A78E: BranchF loc_61A792
  loc_61A791: ExitProcHresult
  loc_61A792: LitI2_Byte 0
  loc_61A794: PopTmpLdAd2 var_B8
  loc_61A797: ILdI2 arg_C
  loc_61A79A: LitI2_Byte 1
  loc_61A79C: AddI2
  loc_61A79D: CUI1I2
  loc_61A79F: PopTmpLdAd1
  loc_61A7A3: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_61A7A8: ExitProcHresult
End Sub

Private Sub SSCommand8_UnknownEvent_8 '5F07A4
  'Data Table: 45B254
  loc_5F0708: LitVar_TRUE var_98
  loc_5F070B: PopAdLdVar
  loc_5F070C: FLdPrThis
  loc_5F070D: VCallAd Control_ID_Ventas
  loc_5F0710: FStAdFunc var_9C
  loc_5F0713: FLdPr var_9C
  loc_5F0716: LateIdSt
  loc_5F071B: FFree1Ad var_9C
  loc_5F071E: LitVar_FALSE
  loc_5F0722: PopAdLdVar
  loc_5F0723: FLdPrThis
  loc_5F0724: VCallAd Control_ID_Preset
  loc_5F0727: FStAdFunc var_9C
  loc_5F072A: FLdPr var_9C
  loc_5F072D: LateIdSt
  loc_5F0732: FFree1Ad var_9C
  loc_5F0735: LitVar_FALSE
  loc_5F0739: PopAdLdVar
  loc_5F073A: FLdPrThis
  loc_5F073B: VCallAd Control_ID_Tanques
  loc_5F073E: FStAdFunc var_9C
  loc_5F0741: FLdPr var_9C
  loc_5F0744: LateIdSt
  loc_5F0749: FFree1Ad var_9C
  loc_5F074C: LitVar_FALSE
  loc_5F0750: PopAdLdVar
  loc_5F0751: FLdPrThis
  loc_5F0752: VCallAd Control_ID_Configuracion
  loc_5F0755: FStAdFunc var_9C
  loc_5F0758: FLdPr var_9C
  loc_5F075B: LateIdSt
  loc_5F0760: FFree1Ad var_9C
  loc_5F0763: LitVar_FALSE
  loc_5F0767: PopAdLdVar
  loc_5F0768: FLdPrThis
  loc_5F0769: VCallAd Control_ID_Estadisticas
  loc_5F076C: FStAdFunc var_9C
  loc_5F076F: FLdPr var_9C
  loc_5F0772: LateIdSt
  loc_5F0777: FFree1Ad var_9C
  loc_5F077A: FLdPr Me
  loc_5F077D: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_5F0780: Call RefreshDisplayData(from_stack_1v)
  loc_5F0785: FLdRfVar var_88
  loc_5F0788: FLdPr Me
  loc_5F078B: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_5F078E: Call RefreshSales(from_stack_1v, from_stack_2v)
  loc_5F0793: LitI2_Byte &HFF
  loc_5F0795: PopTmpLdAd2 var_9E
  loc_5F0798: FLdPr Me
  loc_5F079B: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_5F079E: from_stack_3v = Proc_161_141_72317C(from_stack_1v, from_stack_2v)
  loc_5F07A3: ExitProcHresult
End Sub

Private Sub SSCommand8_Click(Value As Integer) '5CD774
  'Data Table: 45B254
  loc_5CD764: LitI2_Byte &HFF
  loc_5CD766: ILdI2 arg_10
  loc_5CD769: ILdRf Value
  loc_5CD76C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD771: ExitProcHresult
End Sub

Private Sub SSCommand8_KeyPress(KeyAscii As Integer) '5CD9F4
  'Data Table: 45B254
  loc_5CD9E4: LitI2_Byte 0
  loc_5CD9E6: ILdI2 arg_10
  loc_5CD9E9: ILdRf KeyAscii
  loc_5CD9EC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD9F1: ExitProcHresult
End Sub

Private Sub SSCommand7_UnknownEvent_8 '5E675C
  'Data Table: 45B254
  loc_5E66E4: Call ActualizarEstadisticas()
  loc_5E66E9: LitVar_TRUE var_94
  loc_5E66EC: PopAdLdVar
  loc_5E66ED: FLdPrThis
  loc_5E66EE: VCallAd Control_ID_Estadisticas
  loc_5E66F1: FStAdFunc var_98
  loc_5E66F4: FLdPr var_98
  loc_5E66F7: LateIdSt
  loc_5E66FC: FFree1Ad var_98
  loc_5E66FF: LitVar_FALSE
  loc_5E6703: PopAdLdVar
  loc_5E6704: FLdPrThis
  loc_5E6705: VCallAd Control_ID_Preset
  loc_5E6708: FStAdFunc var_98
  loc_5E670B: FLdPr var_98
  loc_5E670E: LateIdSt
  loc_5E6713: FFree1Ad var_98
  loc_5E6716: LitVar_FALSE
  loc_5E671A: PopAdLdVar
  loc_5E671B: FLdPrThis
  loc_5E671C: VCallAd Control_ID_Tanques
  loc_5E671F: FStAdFunc var_98
  loc_5E6722: FLdPr var_98
  loc_5E6725: LateIdSt
  loc_5E672A: FFree1Ad var_98
  loc_5E672D: LitVar_FALSE
  loc_5E6731: PopAdLdVar
  loc_5E6732: FLdPrThis
  loc_5E6733: VCallAd Control_ID_Configuracion
  loc_5E6736: FStAdFunc var_98
  loc_5E6739: FLdPr var_98
  loc_5E673C: LateIdSt
  loc_5E6741: FFree1Ad var_98
  loc_5E6744: LitVar_FALSE
  loc_5E6748: PopAdLdVar
  loc_5E6749: FLdPrThis
  loc_5E674A: VCallAd Control_ID_Ventas
  loc_5E674D: FStAdFunc var_98
  loc_5E6750: FLdPr var_98
  loc_5E6753: LateIdSt
  loc_5E6758: FFree1Ad var_98
  loc_5E675B: ExitProcHresult
End Sub

Private Sub SSCommand7_Click(Value As Integer) '5CE474
  'Data Table: 45B254
  loc_5CE464: LitI2_Byte &HFF
  loc_5CE466: ILdI2 arg_10
  loc_5CE469: ILdRf Value
  loc_5CE46C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CE471: ExitProcHresult
End Sub

Private Sub SSCommand7_KeyPress(KeyAscii As Integer) '5CD474
  'Data Table: 45B254
  loc_5CD464: LitI2_Byte 0
  loc_5CD466: ILdI2 arg_10
  loc_5CD469: ILdRf KeyAscii
  loc_5CD46C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD471: ExitProcHresult
End Sub

Private Sub SSCommand3_UnknownEvent_8 '5E9FCC
  'Data Table: 45B254
  loc_5E9F44: LitI2_Byte 0
  loc_5E9F46: FLdPrThis
  loc_5E9F47: VCallAd Control_ID_Timer1
  loc_5E9F4A: FStAdFunc var_88
  loc_5E9F4D: FLdPr var_88
  loc_5E9F50: Me.Enabled = from_stack_1b
  loc_5E9F55: FFree1Ad var_88
  loc_5E9F58: FLdPr Me
  loc_5E9F5B: MemLdI2 global_100
  loc_5E9F5E: BranchF loc_5E9F89
  loc_5E9F61: FLdPr Me
  loc_5E9F64: MemLdUI1 offset
  loc_5E9F68: CI2UI1
  loc_5E9F6A: LitI2_Byte 0
  loc_5E9F6C: EqI2
  loc_5E9F6D: BranchF loc_5E9F7E
  loc_5E9F70: LitI2_Byte &H10
  loc_5E9F72: CUI1I2
  loc_5E9F74: FLdPr Me
  loc_5E9F77: MemStUI1
  loc_5E9F7B: Branch loc_5E9F89
  loc_5E9F7E: LitI2_Byte 0
  loc_5E9F80: CUI1I2
  loc_5E9F82: FLdPr Me
  loc_5E9F85: MemStUI1
  loc_5E9F89: LitI2_Byte &HFF
  loc_5E9F8B: FLdPr Me
  loc_5E9F8E: MemStI2 global_98
  loc_5E9F91: LitI2_Byte 1
  loc_5E9F93: PopTmpLdAd2 var_8A
  loc_5E9F96: Call Nro_Surtidor_Click(from_stack_1v)
  loc_5E9F9B: from_stack_1v = Proc_161_125_692DB4()
  loc_5E9FA0: LitI2_Byte &HFF
  loc_5E9FA2: PopTmpLdAd2 var_8A
  loc_5E9FA5: from_stack_2v = Proc_161_139_62BBB4(from_stack_1v)
  loc_5E9FAA: LitI2_Byte 0
  loc_5E9FAC: FLdPr Me
  loc_5E9FAF: MemStI2 global_98
  loc_5E9FB2: LitI2_Byte &HFF
  loc_5E9FB4: FLdPrThis
  loc_5E9FB5: VCallAd Control_ID_Timer1
  loc_5E9FB8: FStAdFunc var_88
  loc_5E9FBB: FLdPr var_88
  loc_5E9FBE: Me.Enabled = from_stack_1b
  loc_5E9FC3: FFree1Ad var_88
  loc_5E9FC6: LitI2_Byte &H19
  loc_5E9FC8: ImpAdStI2 MemVar_74BFAE
  loc_5E9FCB: ExitProcHresult
End Sub

Private Sub SSCommand3_Click(Value As Integer) '5CD9B4
  'Data Table: 45B254
  loc_5CD9A4: LitI2_Byte &HFF
  loc_5CD9A6: ILdI2 arg_10
  loc_5CD9A9: ILdRf Value
  loc_5CD9AC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD9B1: ExitProcHresult
End Sub

Private Sub SSCommand3_KeyPress(KeyAscii As Integer) '5CDA74
  'Data Table: 45B254
  loc_5CDA64: LitI2_Byte 0
  loc_5CDA66: ILdI2 arg_10
  loc_5CDA69: ILdRf KeyAscii
  loc_5CDA6C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CDA71: ExitProcHresult
End Sub

Private Sub SSCommand4_UnknownEvent_8 '672710
  'Data Table: 45B254
  loc_67230C: ImpAdCallI2 Proc_167_4_6114E0()
  loc_672311: NotI4
  loc_672312: BranchF loc_672316
  loc_672315: ExitProcHresult
  loc_672316: FLdPr Me
  loc_672319: MemLdI2 global_512
  loc_67231C: NotI4
  loc_67231D: BranchF loc_67236F
  loc_672320: FLdRfVar var_9C
  loc_672323: LitI2_Byte &HC
  loc_672325: FLdPrThis
  loc_672326: VCallAd Control_ID_SSCommand4
  loc_672329: FStAdFunc var_98
  loc_67232C: FLdPr var_98
  loc_67232F: Set from_stack_2 = Me(from_stack_1)
  loc_672334: FLdPr var_9C
  loc_672337: LateIdLdVar var_AC DispID_74 -32767
  loc_67233E: PopAd
  loc_672340: LitVar_Missing var_11C
  loc_672343: LitVar_Missing var_FC
  loc_672346: LitVar_Missing var_DC
  loc_672349: LitI4 &H40
  loc_67234E: FLdRfVar var_AC
  loc_672351: CStrVarTmp
  loc_672352: CVarStr var_BC
  loc_672355: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67235A: FFreeAd var_98 = ""
  loc_672361: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = ""
  loc_67236E: ExitProcHresult
  loc_67236F: FLdPr Me
  loc_672372: MemLdUI1 Surtidor_Actual
  loc_672376: CI4UI1
  loc_672377: ImpAdLdRf MemVar_74A188
  loc_67237A: Ary1LdI2
  loc_67237B: NotI4
  loc_67237C: CVarBoolI2 var_12C
  loc_672380: LitVarI2 var_AC, 3
  loc_672385: LitI4 1
  loc_67238A: ImpAdLdRf MemVar_74BF90
  loc_67238D: CVarRef
  loc_672392: FLdRfVar var_BC
  loc_672395: ImpAdCallFPR4  = Mid(, , )
  loc_67239A: FLdRfVar var_BC
  loc_67239D: LitVarStr var_10C, "\\."
  loc_6723A2: HardType
  loc_6723A3: EqVar var_DC
  loc_6723A7: NotVar var_FC
  loc_6723AB: AndVar var_11C
  loc_6723AF: CBoolVarNull
  loc_6723B1: FFreeVar var_AC = "": var_BC = ""
  loc_6723BA: BranchF loc_6723C8
  loc_6723BD: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6723C2: Call Borrar_UnknownEvent_8()
  loc_6723C7: ExitProcHresult
  loc_6723C8: FLdPr Me
  loc_6723CB: MemLdI2 global_188
  loc_6723CE: BranchF loc_672443
  loc_6723D1: FLdRfVar var_130
  loc_6723D4: FLdPrThis
  loc_6723D5: VCallAd Control_ID_Monto
  loc_6723D8: FStAdFunc var_98
  loc_6723DB: FLdPr var_98
  loc_6723DE:  = Me.Text
  loc_6723E3: LitI4 1
  loc_6723E8: LitI4 1
  loc_6723ED: LitVarStr var_CC, "00000000.00"
  loc_6723F2: FStVarCopyObj var_BC
  loc_6723F5: FLdRfVar var_BC
  loc_6723F8: FLdZeroAd var_130
  loc_6723FB: CVarStr var_AC
  loc_6723FE: ImpAdCallI2 Format$(, )
  loc_672403: FStStrNoPop var_134
  loc_672406: CR8Str
  loc_672408: ImpAdLdFPR4 MemVar_74C2E0
  loc_67240B: MulR8
  loc_67240C: CI4R8
  loc_67240D: FStR4 var_8C
  loc_672410: FFree1Str var_134
  loc_672413: FFree1Ad var_98
  loc_672416: FFreeVar var_AC = ""
  loc_67241D: FLdRfVar var_130
  loc_672420: FLdPrThis
  loc_672421: VCallAd Control_ID_Monto
  loc_672424: FStAdFunc var_98
  loc_672427: FLdPr var_98
  loc_67242A:  = Me.Text
  loc_67242F: FLdZeroAd var_130
  loc_672432: FStStr var_94
  loc_672435: FFree1Ad var_98
  loc_672438: LitI2_Byte 0
  loc_67243A: CUI1I2
  loc_67243C: FStUI1 var_86
  loc_672440: Branch loc_6724B2
  loc_672443: FLdRfVar var_130
  loc_672446: FLdPrThis
  loc_672447: VCallAd Control_ID_Volumen
  loc_67244A: FStAdFunc var_98
  loc_67244D: FLdPr var_98
  loc_672450:  = Me.Text
  loc_672455: LitI4 1
  loc_67245A: LitI4 1
  loc_67245F: LitVarStr var_CC, "0000000.00"
  loc_672464: FStVarCopyObj var_BC
  loc_672467: FLdRfVar var_BC
  loc_67246A: FLdZeroAd var_130
  loc_67246D: CVarStr var_AC
  loc_672470: ImpAdCallI2 Format$(, )
  loc_672475: FStStrNoPop var_134
  loc_672478: CR8Str
  loc_67247A: LitI2_Byte &H64
  loc_67247C: CR8I2
  loc_67247D: MulR8
  loc_67247E: CI4R8
  loc_67247F: FStR4 var_8C
  loc_672482: FFree1Str var_134
  loc_672485: FFree1Ad var_98
  loc_672488: FFreeVar var_AC = ""
  loc_67248F: FLdRfVar var_130
  loc_672492: FLdPrThis
  loc_672493: VCallAd Control_ID_Volumen
  loc_672496: FStAdFunc var_98
  loc_672499: FLdPr var_98
  loc_67249C:  = Me.Text
  loc_6724A1: FLdZeroAd var_130
  loc_6724A4: FStStr var_94
  loc_6724A7: FFree1Ad var_98
  loc_6724AA: LitI2_Byte 1
  loc_6724AC: CUI1I2
  loc_6724AE: FStUI1 var_86
  loc_6724B2: LitI2_Byte 0
  loc_6724B4: CUI1I2
  loc_6724B6: FLdRfVar var_88
  loc_6724B9: LitI2_Byte 3
  loc_6724BB: CUI1I2
  loc_6724BD: ForUI1 var_138
  loc_6724C3: FLdRfVar var_9C
  loc_6724C6: FLdUI1
  loc_6724CA: CI2UI1
  loc_6724CC: FLdPrThis
  loc_6724CD: VCallAd Control_ID_BotonPreset
  loc_6724D0: FStAdFunc var_98
  loc_6724D3: FLdPr var_98
  loc_6724D6: Set from_stack_2 = Me(from_stack_1)
  loc_6724DB: FLdPr var_9C
  loc_6724DE: LateIdLdVar var_AC DispID_-501 -1
  loc_6724E5: CI4Var
  loc_6724E7: LitI4 &HFF0000
  loc_6724EC: EqI4
  loc_6724ED: FLdRfVar var_140
  loc_6724F0: FLdUI1
  loc_6724F4: CI2UI1
  loc_6724F6: FLdPrThis
  loc_6724F7: VCallAd Control_ID_BotonPreset
  loc_6724FA: FStAdFunc var_13C
  loc_6724FD: FLdPr var_13C
  loc_672500: Set from_stack_2 = Me(from_stack_1)
  loc_672505: FLdPr var_140
  loc_672508: LateIdLdVar var_BC DispID_7 -32767
  loc_67250F: CBoolVar
  loc_672511: AndI4
  loc_672512: FFreeAd var_98 = "": var_9C = "": var_13C = ""
  loc_67251D: FFreeVar var_AC = ""
  loc_672524: BranchF loc_67253C
  loc_672527: FLdUI1
  loc_67252B: CI2UI1
  loc_67252D: LitI2_Byte 1
  loc_67252F: AddI2
  loc_672530: CUI1I2
  loc_672532: FLdPr Me
  loc_672535: MemStUI1
  loc_672539: Branch loc_672545
  loc_67253C: FLdRfVar var_88
  loc_67253F: NextUI1
  loc_672545: ILdRf var_8C
  loc_672548: LitI4 0
  loc_67254D: NeI4
  loc_67254E: BranchF loc_67270D
  loc_672551: FLdRfVar var_142
  loc_672554: FLdPr Me
  loc_672557: MemLdRfVar from_stack_1.presetgrade
  loc_67255A: FLdRfVar var_86
  loc_67255D: FLdRfVar var_8C
  loc_672560: from_stack_4v = SendPreset(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_672565: FLdI2 var_142
  loc_672568: NotI4
  loc_672569: BranchF loc_67256D
  loc_67256C: ExitProcHresult
  loc_67256D: LitI2_Byte &HFF
  loc_67256F: FLdPr Me
  loc_672572: MemStI2 global_110
  loc_672575: FLdRfVar var_AC
  loc_672578: ImpAdCallFPR4  = Time
  loc_67257D: LitI4 1
  loc_672582: LitI4 1
  loc_672587: LitVarStr var_CC, "hh:mm"
  loc_67258C: FStVarCopyObj var_BC
  loc_67258F: FLdRfVar var_BC
  loc_672592: FLdRfVar var_AC
  loc_672595: ImpAdCallI2 Format$(, )
  loc_67259A: FStStrNoPop var_130
  loc_67259D: LitStr " "
  loc_6725A0: ConcatStr
  loc_6725A1: FStStr var_90
  loc_6725A4: FFree1Str var_130
  loc_6725A7: FFreeVar var_AC = ""
  loc_6725AE: FLdRfVar var_142
  loc_6725B1: FLdPrThis
  loc_6725B2: VCallAd Control_ID_lblPresetSchlumberger
  loc_6725B5: FStAdFunc var_98
  loc_6725B8: FLdPr var_98
  loc_6725BB:  = Me.Visible
  loc_6725C0: FLdRfVar var_130
  loc_6725C3: FLdPr Me
  loc_6725C6: MemLdUI1 Surtidor_Actual
  loc_6725CA: CI4UI1
  loc_6725CB: FLdPr Me
  loc_6725CE: MemLdUI1 presetgrade
  loc_6725D2: CI2UI1
  loc_6725D4: LitI2_Byte 1
  loc_6725D6: SubI2
  loc_6725D7: CI4UI1
  loc_6725D8: ImpAdLdRf MemVar_74C12C
  loc_6725DB: AryLdPr
  loc_6725DE: MemLdUI1 global_0
  loc_6725E2: CI2UI1
  loc_6725E4: ImpAdLdRf MemVar_74A220
  loc_6725E7: NewIfNullPr clsProducts
  loc_6725EF: LitVarI2 var_AC, 10
  loc_6725F4: LitI4 1
  loc_6725F9: ILdRf var_130
  loc_6725FC: ImpAdCallI2 Mid$(, , )
  loc_672601: FStStr var_134
  loc_672604: LitI4 1
  loc_672609: LitI4 1
  loc_67260E: LitVarStr var_EC, "!@@@@@@@@@@  "
  loc_672613: FStVarCopyObj var_DC
  loc_672616: FLdRfVar var_DC
  loc_672619: FLdZeroAd var_134
  loc_67261C: CVarStr var_BC
  loc_67261F: ImpAdCallI2 Format$(, )
  loc_672624: FStStr var_178
  loc_672627: ILdRf var_90
  loc_67262A: CVarStr var_164
  loc_67262D: LitVarStr var_12C, "----------  "
  loc_672632: FStVarCopyObj var_11C
  loc_672635: FLdRfVar var_11C
  loc_672638: FLdZeroAd var_178
  loc_67263B: CVarStr var_FC
  loc_67263E: FLdI2 var_142
  loc_672641: NotI4
  loc_672642: CVarBoolI2 var_10C
  loc_672646: FLdRfVar var_154
  loc_672649: ImpAdCallFPR4  = IIf(, , )
  loc_67264E: FLdRfVar var_154
  loc_672651: ConcatVar var_174
  loc_672655: CStrVarTmp
  loc_672656: FStStr var_90
  loc_672659: FFreeStr var_130 = "": var_134 = ""
  loc_672662: FFree1Ad var_98
  loc_672665: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_10C = "": var_FC = "": var_11C = "": var_154 = ""
  loc_672678: FLdUI1
  loc_67267C: CI2UI1
  loc_67267E: LitI2_Byte 0
  loc_672680: EqI2
  loc_672681: BranchF loc_6726B8
  loc_672684: ILdRf var_90
  loc_672687: LitI4 1
  loc_67268C: LitI4 1
  loc_672691: LitStr "@@@@@@@@@@ "
  loc_672694: ImpAdLdI4 MemVar_74BED0
  loc_672697: ConcatStr
  loc_672698: CVarStr var_AC
  loc_67269B: FLdRfVar var_94
  loc_67269E: CVarRef
  loc_6726A3: ImpAdCallI2 Format$(, )
  loc_6726A8: FStStrNoPop var_130
  loc_6726AB: ConcatStr
  loc_6726AC: FStStr var_90
  loc_6726AF: FFree1Str var_130
  loc_6726B2: FFree1Var var_AC = ""
  loc_6726B5: Branch loc_6726E9
  loc_6726B8: ILdRf var_90
  loc_6726BB: LitI4 1
  loc_6726C0: LitI4 1
  loc_6726C5: LitStr "@@@@@@@@@@ "
  loc_6726C8: ImpAdLdI4 MemVar_74BEC0
  loc_6726CB: ConcatStr
  loc_6726CC: CVarStr var_AC
  loc_6726CF: FLdRfVar var_94
  loc_6726D2: CVarRef
  loc_6726D7: ImpAdCallI2 Format$(, )
  loc_6726DC: FStStrNoPop var_130
  loc_6726DF: ConcatStr
  loc_6726E0: FStStr var_90
  loc_6726E3: FFree1Str var_130
  loc_6726E6: FFree1Var var_AC = ""
  loc_6726E9: Call Borrar_UnknownEvent_8()
  loc_6726EE: ILdRf var_90
  loc_6726F1: FLdPr Me
  loc_6726F4: MemLdUI1 Surtidor_Actual
  loc_6726F8: CI2UI1
  loc_6726FA: from_stack_3v = Proc_161_147_5E1D50(from_stack_1v, from_stack_2v)
  loc_6726FF: FLdPr Me
  loc_672702: MemLdUI1 Surtidor_Actual
  loc_672706: CI2UI1
  loc_672708: from_stack_2v = Proc_161_148_5E0588(from_stack_1v)
  loc_67270D: ExitProcHresult
End Sub

Private Sub SSCommand5_UnknownEvent_8 '61C1F4
  'Data Table: 45B254
  loc_61C0EC: FLdPr Me
  loc_61C0EF: MemLdUI1 Surtidor_Actual
  loc_61C0F3: CI2UI1
  loc_61C0F5: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_61C0FA: BranchF loc_61C17B
  loc_61C0FD: FLdRfVar var_1D4
  loc_61C100: LitVar_Missing var_1D0
  loc_61C103: LitVar_Missing var_1B0
  loc_61C106: LitVar_Missing var_190
  loc_61C109: LitVar_Missing var_170
  loc_61C10C: LitVar_Missing var_150
  loc_61C10F: LitVar_Missing var_130
  loc_61C112: LitVar_Missing var_110
  loc_61C115: LitVar_Missing var_F0
  loc_61C118: LitVar_Missing var_D0
  loc_61C11B: LitVar_Missing var_B0
  loc_61C11E: LitStr "La funcionalidad estado de tanques no esta habillitada para surtidores GNC"
  loc_61C121: FStStrCopy var_90
  loc_61C124: FLdRfVar var_90
  loc_61C127: LitI4 &H1F4
  loc_61C12C: PopTmpLdAdStr var_8C
  loc_61C12F: LitI2_Byte 1
  loc_61C131: PopTmpLdAd2 var_86
  loc_61C134: ImpAdLdRf MemVar_74C7D0
  loc_61C137: NewIfNullPr clsMsg
  loc_61C13A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61C13F: LitVar_Missing var_244
  loc_61C142: LitVar_Missing var_224
  loc_61C145: LitVar_Missing var_204
  loc_61C148: LitI4 &H40
  loc_61C14D: FLdZeroAd var_1D4
  loc_61C150: CVarStr var_1E4
  loc_61C153: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61C158: FFree1Str var_90
  loc_61C15B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_61C17A: ExitProcHresult
  loc_61C17B: LitVar_TRUE var_A0
  loc_61C17E: PopAdLdVar
  loc_61C17F: FLdPrThis
  loc_61C180: VCallAd Control_ID_Tanques
  loc_61C183: FStAdFunc var_248
  loc_61C186: FLdPr var_248
  loc_61C189: LateIdSt
  loc_61C18E: FFree1Ad var_248
  loc_61C191: LitVar_FALSE
  loc_61C195: PopAdLdVar
  loc_61C196: FLdPrThis
  loc_61C197: VCallAd Control_ID_Preset
  loc_61C19A: FStAdFunc var_248
  loc_61C19D: FLdPr var_248
  loc_61C1A0: LateIdSt
  loc_61C1A5: FFree1Ad var_248
  loc_61C1A8: LitVar_FALSE
  loc_61C1AC: PopAdLdVar
  loc_61C1AD: FLdPrThis
  loc_61C1AE: VCallAd Control_ID_Configuracion
  loc_61C1B1: FStAdFunc var_248
  loc_61C1B4: FLdPr var_248
  loc_61C1B7: LateIdSt
  loc_61C1BC: FFree1Ad var_248
  loc_61C1BF: LitVar_FALSE
  loc_61C1C3: PopAdLdVar
  loc_61C1C4: FLdPrThis
  loc_61C1C5: VCallAd Control_ID_Ventas
  loc_61C1C8: FStAdFunc var_248
  loc_61C1CB: FLdPr var_248
  loc_61C1CE: LateIdSt
  loc_61C1D3: FFree1Ad var_248
  loc_61C1D6: LitI2_Byte 0
  loc_61C1D8: PopTmpLdAd2 var_86
  loc_61C1DB: Call BotonTanque_UnknownEvent_8()
  loc_61C1E0: LitI2_Byte 0
  loc_61C1E2: CUI1I2
  loc_61C1E4: PopTmpLdAd1
  loc_61C1E8: FLdPr Me
  loc_61C1EB: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_61C1EE: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_61C1F3: ExitProcHresult
End Sub

Private Sub SSCommand5_Click(Value As Integer) '5CDC74
  'Data Table: 45B254
  loc_5CDC64: LitI2_Byte &HFF
  loc_5CDC66: ILdI2 arg_10
  loc_5CDC69: ILdRf Value
  loc_5CDC6C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CDC71: ExitProcHresult
End Sub

Private Sub SSCommand5_KeyPress(KeyAscii As Integer) '5CDEF4
  'Data Table: 45B254
  loc_5CDEE4: LitI2_Byte 0
  loc_5CDEE6: ILdI2 arg_10
  loc_5CDEE9: ILdRf KeyAscii
  loc_5CDEEC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CDEF1: ExitProcHresult
End Sub

Private Sub SSCommand6_UnknownEvent_8 '653BD4
  'Data Table: 45B254
  loc_65392C: ImpAdLdI2 MemVar_74C7C2
  loc_65392F: BranchF loc_65395C
  loc_653932: LitVar_Missing var_108
  loc_653935: LitVar_Missing var_E8
  loc_653938: LitVar_Missing var_C8
  loc_65393B: LitI4 &H40
  loc_653940: LitVarStr var_98, "No se pueden realizar presets remotamente"
  loc_653945: FStVarCopyObj var_A8
  loc_653948: FLdRfVar var_A8
  loc_65394B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_653950: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_65395B: ExitProcHresult
  loc_65395C: FLdPr Me
  loc_65395F: MemLdUI1 Surtidor_Actual
  loc_653963: CI2UI1
  loc_653965: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_65396A: BranchF loc_6539EB
  loc_65396D: FLdRfVar var_1D8
  loc_653970: LitVar_Missing var_1D4
  loc_653973: LitVar_Missing var_1B4
  loc_653976: LitVar_Missing var_194
  loc_653979: LitVar_Missing var_174
  loc_65397C: LitVar_Missing var_154
  loc_65397F: LitVar_Missing var_134
  loc_653982: LitVar_Missing var_108
  loc_653985: LitVar_Missing var_E8
  loc_653988: LitVar_Missing var_C8
  loc_65398B: LitVar_Missing var_A8
  loc_65398E: LitStr "La funcionalidad preset no esta habillitada para surtidores GNC"
  loc_653991: FStStrCopy var_114
  loc_653994: FLdRfVar var_114
  loc_653997: LitI4 &H1F4
  loc_65399C: PopTmpLdAdStr var_110
  loc_65399F: LitI2_Byte 1
  loc_6539A1: PopTmpLdAd2 var_10A
  loc_6539A4: ImpAdLdRf MemVar_74C7D0
  loc_6539A7: NewIfNullPr clsMsg
  loc_6539AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6539AF: LitVar_Missing var_248
  loc_6539B2: LitVar_Missing var_228
  loc_6539B5: LitVar_Missing var_208
  loc_6539B8: LitI4 &H40
  loc_6539BD: FLdZeroAd var_1D8
  loc_6539C0: CVarStr var_1E8
  loc_6539C3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6539C8: FFree1Str var_114
  loc_6539CB: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_6539EA: ExitProcHresult
  loc_6539EB: ImpAdLdUI1
  loc_6539EF: CI2UI1
  loc_6539F1: LitI2_Byte 1
  loc_6539F3: EqI2
  loc_6539F4: BranchF loc_653A06
  loc_6539F7: LitI2_Byte &H6B
  loc_6539F9: PopTmpLdAd2 var_10A
  loc_6539FC: ImpAdCallI2 Proc_94_7_603DD0()
  loc_653A01: NotI4
  loc_653A02: BranchF loc_653A06
  loc_653A05: ExitProcHresult
  loc_653A06: FLdRfVar var_10A
  loc_653A09: ImpAdLdRf MemVar_74C6D8
  loc_653A0C: NewIfNullPr CCEMLicence
  loc_653A14: FLdI2 var_10A
  loc_653A17: LitI2_Byte &HFF
  loc_653A19: EqI2
  loc_653A1A: FLdRfVar var_24A
  loc_653A1D: ImpAdLdRf MemVar_74C6D8
  loc_653A20: NewIfNullPr CCEMLicence
  loc_653A28: FLdI2 var_24A
  loc_653A2B: LitI2_Byte &HFF
  loc_653A2D: EqI2
  loc_653A2E: AndI4
  loc_653A2F: BranchF loc_653A5C
  loc_653A32: LitVar_Missing var_108
  loc_653A35: LitVar_Missing var_E8
  loc_653A38: LitVar_Missing var_C8
  loc_653A3B: LitI4 &H40
  loc_653A40: LitVarStr var_98, "La funcionalidad preset no esta habillitada."
  loc_653A45: FStVarCopyObj var_A8
  loc_653A48: FLdRfVar var_A8
  loc_653A4B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_653A50: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_653A5B: ExitProcHresult
  loc_653A5C: LitI4 &H32
  loc_653A61: FLdRfVar var_A8
  loc_653A64: ImpAdCallFPR4  = Space()
  loc_653A69: FLdRfVar var_A8
  loc_653A6C: CStrVarTmp
  loc_653A6D: FStStr var_88
  loc_653A70: FFree1Var var_A8 = ""
  loc_653A73: LitStr "CEM44.INI"
  loc_653A76: FLdRfVar var_258
  loc_653A79: CStr2Ansi
  loc_653A7A: ILdRf var_258
  loc_653A7D: LitI4 &H32
  loc_653A82: ILdRf var_88
  loc_653A85: FLdRfVar var_254
  loc_653A88: CStr2Ansi
  loc_653A89: ILdRf var_254
  loc_653A8C: LitStr "TANQUE LLENO"
  loc_653A8F: FLdRfVar var_250
  loc_653A92: CStr2Ansi
  loc_653A93: ILdRf var_250
  loc_653A96: LitStr "FULLTANK_CAPTION"
  loc_653A99: FLdRfVar var_1D8
  loc_653A9C: CStr2Ansi
  loc_653A9D: ILdRf var_1D8
  loc_653AA0: LitStr "PRESET"
  loc_653AA3: FLdRfVar var_114
  loc_653AA6: CStr2Ansi
  loc_653AA7: ILdRf var_114
  loc_653AAA: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_653AAF: SetLastSystemError
  loc_653AB0: ILdRf var_254
  loc_653AB3: FLdRfVar var_88
  loc_653AB6: CStr2Uni
  loc_653AB8: FFreeStr var_114 = "": var_1D8 = "": var_250 = "": var_254 = ""
  loc_653AC5: LitI4 1
  loc_653ACA: LitI4 1
  loc_653ACF: ImpAdLdRf MemVar_74C364
  loc_653AD2: CVarRef
  loc_653AD7: LitVarI2 var_A8, 0
  loc_653ADC: FLdRfVar var_C8
  loc_653ADF: ImpAdCallFPR4  = Format(, )
  loc_653AE4: FLdRfVar var_C8
  loc_653AE7: CStrVarVal var_114
  loc_653AEB: FLdPrThis
  loc_653AEC: VCallAd Control_ID_Monto
  loc_653AEF: FStAdFunc var_25C
  loc_653AF2: FLdPr var_25C
  loc_653AF5: Me.Text = from_stack_1
  loc_653AFA: FFree1Str var_114
  loc_653AFD: FFree1Ad var_25C
  loc_653B00: FFreeVar var_A8 = ""
  loc_653B07: LitI4 1
  loc_653B0C: LitI4 1
  loc_653B11: LitVarStr var_B8, "#0.00"
  loc_653B16: FStVarCopyObj var_C8
  loc_653B19: FLdRfVar var_C8
  loc_653B1C: LitVarI2 var_A8, 0
  loc_653B21: FLdRfVar var_E8
  loc_653B24: ImpAdCallFPR4  = Format(, )
  loc_653B29: FLdRfVar var_E8
  loc_653B2C: CStrVarVal var_114
  loc_653B30: FLdPrThis
  loc_653B31: VCallAd Control_ID_Volumen
  loc_653B34: FStAdFunc var_25C
  loc_653B37: FLdPr var_25C
  loc_653B3A: Me.Text = from_stack_1
  loc_653B3F: FFree1Str var_114
  loc_653B42: FFree1Ad var_25C
  loc_653B45: FFreeVar var_A8 = "": var_C8 = ""
  loc_653B4E: LitVar_TRUE var_98
  loc_653B51: PopAdLdVar
  loc_653B52: FLdPrThis
  loc_653B53: VCallAd Control_ID_Preset
  loc_653B56: FStAdFunc var_25C
  loc_653B59: FLdPr var_25C
  loc_653B5C: LateIdSt
  loc_653B61: FFree1Ad var_25C
  loc_653B64: LitVar_FALSE
  loc_653B68: PopAdLdVar
  loc_653B69: FLdPrThis
  loc_653B6A: VCallAd Control_ID_Tanques
  loc_653B6D: FStAdFunc var_25C
  loc_653B70: FLdPr var_25C
  loc_653B73: LateIdSt
  loc_653B78: FFree1Ad var_25C
  loc_653B7B: LitVar_FALSE
  loc_653B7F: PopAdLdVar
  loc_653B80: FLdPrThis
  loc_653B81: VCallAd Control_ID_Configuracion
  loc_653B84: FStAdFunc var_25C
  loc_653B87: FLdPr var_25C
  loc_653B8A: LateIdSt
  loc_653B8F: FFree1Ad var_25C
  loc_653B92: LitVar_FALSE
  loc_653B96: PopAdLdVar
  loc_653B97: FLdPrThis
  loc_653B98: VCallAd Control_ID_Ventas
  loc_653B9B: FStAdFunc var_25C
  loc_653B9E: FLdPr var_25C
  loc_653BA1: LateIdSt
  loc_653BA6: FFree1Ad var_25C
  loc_653BA9: LitVar_FALSE
  loc_653BAD: PopAdLdVar
  loc_653BAE: FLdPrThis
  loc_653BAF: VCallAd Control_ID_Estadisticas
  loc_653BB2: FStAdFunc var_25C
  loc_653BB5: FLdPr var_25C
  loc_653BB8: LateIdSt
  loc_653BBD: FFree1Ad var_25C
  loc_653BC0: FLdPrThis
  loc_653BC1: VCallAd Control_ID_Monto
  loc_653BC4: FStAdFunc var_25C
  loc_653BC7: FLdPr var_25C
  loc_653BCA: Me.SetFocus
  loc_653BCF: FFree1Ad var_25C
  loc_653BD2: ExitProcHresult
End Sub

Private Sub SSCommand6_Click(Value As Integer) '5CE0F4
  'Data Table: 45B254
  loc_5CE0E4: LitI2_Byte &HFF
  loc_5CE0E6: ILdI2 arg_10
  loc_5CE0E9: ILdRf Value
  loc_5CE0EC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CE0F1: ExitProcHresult
End Sub

Private Sub SSCommand6_KeyPress(KeyAscii As Integer) '5CE1F4
  'Data Table: 45B254
  loc_5CE1E4: LitI2_Byte 0
  loc_5CE1E6: ILdI2 arg_10
  loc_5CE1E9: ILdRf KeyAscii
  loc_5CE1EC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CE1F1: ExitProcHresult
End Sub

Private Sub cmdRefresh_UnknownEvent_8 '5C8CB0
  'Data Table: 45B254
  loc_5C8CA8: from_stack_2v = Proc_161_134_70607C(from_stack_1v)
  loc_5C8CAD: ExitProcHresult
End Sub

Private Sub Command1_Click(Index As Integer) '6298A8
  'Data Table: 45B254
  loc_629718: LitI2_Byte 1
  loc_62971A: FLdRfVar var_86
  loc_62971D: LitI2_Byte 8
  loc_62971F: ForI2 var_8A
  loc_629725: LitI4 -2147483633
  loc_62972A: FLdRfVar var_94
  loc_62972D: FLdI2 var_86
  loc_629730: FLdPrThis
  loc_629731: VCallAd Control_ID_Command1
  loc_629734: FStAdFunc var_90
  loc_629737: FLdPr var_90
  loc_62973A: Set from_stack_2 = Me(from_stack_1)
  loc_62973F: FLdPr var_94
  loc_629742: Me.BackColor = from_stack_1
  loc_629747: FFreeAd var_90 = ""
  loc_62974E: FLdRfVar var_86
  loc_629751: NextI2 var_8A, loc_629725
  loc_629756: LitI4 &HC0FFC0
  loc_62975B: FLdRfVar var_94
  loc_62975E: ILdI2 Index
  loc_629761: FLdPrThis
  loc_629762: VCallAd Control_ID_Command1
  loc_629765: FStAdFunc var_90
  loc_629768: FLdPr var_90
  loc_62976B: Set from_stack_2 = Me(from_stack_1)
  loc_629770: FLdPr var_94
  loc_629773: Me.BackColor = from_stack_1
  loc_629778: FFreeAd var_90 = ""
  loc_62977F: FLdRfVar var_9A
  loc_629782: FLdRfVar var_98
  loc_629785: FLdRfVar var_94
  loc_629788: ILdI2 Index
  loc_62978B: FLdPrThis
  loc_62978C: VCallAd Control_ID_Command1
  loc_62978F: FStAdFunc var_90
  loc_629792: FLdPr var_90
  loc_629795: Set from_stack_2 = Me(from_stack_1)
  loc_62979A: FLdPr var_94
  loc_62979D:  = Me.Caption
  loc_6297A2: ILdRf var_98
  loc_6297A5: ImpAdLdRf MemVar_74A220
  loc_6297A8: NewIfNullPr clsProducts
  loc_6297B0: FLdI2 var_9A
  loc_6297B3: FStI2 var_86
  loc_6297B6: FFree1Str var_98
  loc_6297B9: FFreeAd var_90 = ""
  loc_6297C0: FLdRfVar var_98
  loc_6297C3: FLdRfVar var_9A
  loc_6297C6: FLdI2 var_86
  loc_6297C9: ImpAdLdRf MemVar_74A220
  loc_6297CC: NewIfNullPr clsProducts
  loc_6297CF:  = clsProducts.BackColor
  loc_6297D4: FLdI2 var_9A
  loc_6297D7: ImpAdLdRf MemVar_74A220
  loc_6297DA: NewIfNullPr clsProducts
  loc_6297E2: ILdRf var_98
  loc_6297E5: FLdPrThis
  loc_6297E6: VCallAd Control_ID_Label9
  loc_6297E9: FStAdFunc var_90
  loc_6297EC: FLdPr var_90
  loc_6297EF: Me.Caption = from_stack_1
  loc_6297F4: FFree1Str var_98
  loc_6297F7: FFree1Ad var_90
  loc_6297FA: FLdRfVar var_98
  loc_6297FD: FLdRfVar var_9A
  loc_629800: FLdI2 var_86
  loc_629803: ImpAdLdRf MemVar_74A220
  loc_629806: NewIfNullPr clsProducts
  loc_629809:  = clsProducts.Left
  loc_62980E: FLdI2 var_9A
  loc_629811: ImpAdLdRf MemVar_74A220
  loc_629814: NewIfNullPr clsProducts
  loc_62981C: ILdRf var_98
  loc_62981F: FLdPrThis
  loc_629820: VCallAd Control_ID_Label11
  loc_629823: FStAdFunc var_90
  loc_629826: FLdPr var_90
  loc_629829: Me.Caption = from_stack_1
  loc_62982E: FFree1Str var_98
  loc_629831: FFree1Ad var_90
  loc_629834: FLdRfVar var_9A
  loc_629837: FLdI2 var_86
  loc_62983A: ImpAdLdRf MemVar_74A220
  loc_62983D: NewIfNullPr clsProducts
  loc_629840:  = clsProducts.ForeColor
  loc_629845: FLdI2 var_9A
  loc_629848: CStrUI1
  loc_62984A: FStStrNoPop var_98
  loc_62984D: LitStr " " & Chr(37)
  loc_629850: ConcatStr
  loc_629851: FStStrNoPop var_A0
  loc_629854: FLdPrThis
  loc_629855: VCallAd Control_ID_Label3
  loc_629858: FStAdFunc var_90
  loc_62985B: FLdPr var_90
  loc_62985E: Me.Caption = from_stack_1
  loc_629863: FFreeStr var_98 = ""
  loc_62986A: FFree1Ad var_90
  loc_62986D: FLdRfVar var_9A
  loc_629870: FLdI2 var_86
  loc_629873: ImpAdLdRf MemVar_74A220
  loc_629876: NewIfNullPr clsProducts
  loc_629879:  = clsProducts.Top
  loc_62987E: FLdI2 var_9A
  loc_629881: CStrUI1
  loc_629883: FStStrNoPop var_98
  loc_629886: LitStr " " & Chr(37)
  loc_629889: ConcatStr
  loc_62988A: FStStrNoPop var_A0
  loc_62988D: FLdPrThis
  loc_62988E: VCallAd Control_ID_Label7
  loc_629891: FStAdFunc var_90
  loc_629894: FLdPr var_90
  loc_629897: Me.Caption = from_stack_1
  loc_62989C: FFreeStr var_98 = ""
  loc_6298A3: FFree1Ad var_90
  loc_6298A6: ExitProcHresult
End Sub

Private Sub prod2_mezcla_Click() '5DC388
  'Data Table: 45B254
  loc_5DC344: LitI2_Byte 0
  loc_5DC346: FLdPrThis
  loc_5DC347: VCallAd Control_ID_Line2
  loc_5DC34A: FStAdFunc var_88
  loc_5DC34D: FLdPr var_88
  loc_5DC350: Me.Visible = from_stack_1b
  loc_5DC355: FFree1Ad var_88
  loc_5DC358: LitI2_Byte &HFF
  loc_5DC35A: FLdPrThis
  loc_5DC35B: VCallAd Control_ID_Line3
  loc_5DC35E: FStAdFunc var_88
  loc_5DC361: FLdPr var_88
  loc_5DC364: Me.Visible = from_stack_1b
  loc_5DC369: FFree1Ad var_88
  loc_5DC36C: LitI2_Byte &HFF
  loc_5DC36E: FLdPr Me
  loc_5DC371: MemStI2 Prod2
  loc_5DC374: FLdPr Me
  loc_5DC377: MemLdRfVar from_stack_1.global_184
  loc_5DC37A: FLdPr Me
  loc_5DC37D: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_5DC380: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_5DC385: ExitProcHresult
End Sub

Private Sub LitrosHorarios_DonePainting() '5C8EA8
  'Data Table: 45B254
  loc_5C8EA0: Call ActualizarEstadisticas()
  loc_5C8EA5: ExitProcHresult
End Sub

Private Sub ImporteGrid_Click(arg_C) '61A350
  'Data Table: 45B254
  loc_61A21C: LitI2_Byte 0
  loc_61A21E: FLdPr Me
  loc_61A221: MemStI2 esPagarVenta
  loc_61A224: LitStr "ConVolTicket"
  loc_61A227: FStStrCopy var_88
  loc_61A22A: FLdRfVar var_88
  loc_61A22D: ImpAdCallI2 Proc_158_2_607130()
  loc_61A232: FLdRfVar var_94
  loc_61A235: FLdRfVar var_90
  loc_61A238: ILdI2 arg_C
  loc_61A23B: FLdPrThis
  loc_61A23C: VCallAd Control_ID_ImporteGrid
  loc_61A23F: FStAdFunc var_8C
  loc_61A242: FLdPr var_8C
  loc_61A245: Set from_stack_2 = Me(from_stack_1)
  loc_61A24A: FLdPr var_90
  loc_61A24D:  = Me.Caption
  loc_61A252: ILdRf var_94
  loc_61A255: LitStr vbNullString
  loc_61A258: NeStr
  loc_61A25A: AndI4
  loc_61A25B: FFreeStr var_88 = ""
  loc_61A262: FFreeAd var_8C = ""
  loc_61A269: BranchF loc_61A2C2
  loc_61A26C: FLdRfVar var_88
  loc_61A26F: FLdRfVar var_90
  loc_61A272: ILdI2 arg_C
  loc_61A275: FLdPrThis
  loc_61A276: VCallAd Control_ID_ProductoGrid
  loc_61A279: FStAdFunc var_8C
  loc_61A27C: FLdPr var_8C
  loc_61A27F: Set from_stack_2 = Me(from_stack_1)
  loc_61A284: FLdPr var_90
  loc_61A287:  = Me.Tag
  loc_61A28C: ILdRf var_88
  loc_61A28F: FLdPr Me
  loc_61A292: MemStStrCopy
  loc_61A296: FFree1Str var_88
  loc_61A299: FFreeAd var_8C = ""
  loc_61A2A0: LitStr vbNullString
  loc_61A2A3: FLdPr Me
  loc_61A2A6: MemStStrCopy
  loc_61A2AA: LitVar_Missing var_B4
  loc_61A2AD: PopAdLdVar
  loc_61A2AE: LitVarI2 var_A4, 1
  loc_61A2B3: PopAdLdVar
  loc_61A2B4: ImpAdLdRf MemVar_74E3B8
  loc_61A2B7: NewIfNullPr FrmVenTicketPago
  loc_61A2BA: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_61A2BF: Branch loc_61A2CA
  loc_61A2C2: LitI2_Byte &HFF
  loc_61A2C4: FLdPr Me
  loc_61A2C7: MemStI2 esPagarVenta
  loc_61A2CA: FLdPr Me
  loc_61A2CD: MemLdI2 esPagarVenta
  loc_61A2D0: BranchF loc_61A34C
  loc_61A2D3: ImpAdLdUI1
  loc_61A2D7: CI2UI1
  loc_61A2D9: LitI2_Byte 1
  loc_61A2DB: EqI2
  loc_61A2DC: FLdRfVar var_88
  loc_61A2DF: FLdRfVar var_90
  loc_61A2E2: ILdI2 arg_C
  loc_61A2E5: FLdPrThis
  loc_61A2E6: VCallAd Control_ID_ProductoGrid
  loc_61A2E9: FStAdFunc var_8C
  loc_61A2EC: FLdPr var_8C
  loc_61A2EF: Set from_stack_2 = Me(from_stack_1)
  loc_61A2F4: FLdPr var_90
  loc_61A2F7:  = Me.Caption
  loc_61A2FC: ILdRf var_88
  loc_61A2FF: LitStr vbNullString
  loc_61A302: NeStr
  loc_61A304: AndI4
  loc_61A305: FFree1Str var_88
  loc_61A308: FFreeAd var_8C = ""
  loc_61A30F: BranchF loc_61A321
  loc_61A312: LitI2_Byte &H6B
  loc_61A314: PopTmpLdAd2 var_B6
  loc_61A317: ImpAdCallI2 Proc_94_7_603DD0()
  loc_61A31C: NotI4
  loc_61A31D: BranchF loc_61A321
  loc_61A320: ExitProcHresult
  loc_61A321: FLdRfVar var_B6
  loc_61A324: ImpAdLdRf MemVar_74C6D8
  loc_61A327: NewIfNullPr CCEMLicence
  loc_61A32A:  = CCEMLicence.Caption
  loc_61A32F: FLdI2 var_B6
  loc_61A332: BranchF loc_61A336
  loc_61A335: ExitProcHresult
  loc_61A336: LitI2_Byte 0
  loc_61A338: PopTmpLdAd2 var_B8
  loc_61A33B: ILdI2 arg_C
  loc_61A33E: LitI2_Byte 1
  loc_61A340: AddI2
  loc_61A341: CUI1I2
  loc_61A343: PopTmpLdAd1
  loc_61A347: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_61A34C: ExitProcHresult
End Sub

Private Sub ProductoGrid_Click(arg_C) '61AA94
  'Data Table: 45B254
  loc_61A960: LitI2_Byte 0
  loc_61A962: FLdPr Me
  loc_61A965: MemStI2 esPagarVenta
  loc_61A968: LitStr "ConVolTicket"
  loc_61A96B: FStStrCopy var_88
  loc_61A96E: FLdRfVar var_88
  loc_61A971: ImpAdCallI2 Proc_158_2_607130()
  loc_61A976: FLdRfVar var_94
  loc_61A979: FLdRfVar var_90
  loc_61A97C: ILdI2 arg_C
  loc_61A97F: FLdPrThis
  loc_61A980: VCallAd Control_ID_ProductoGrid
  loc_61A983: FStAdFunc var_8C
  loc_61A986: FLdPr var_8C
  loc_61A989: Set from_stack_2 = Me(from_stack_1)
  loc_61A98E: FLdPr var_90
  loc_61A991:  = Me.Caption
  loc_61A996: ILdRf var_94
  loc_61A999: LitStr vbNullString
  loc_61A99C: NeStr
  loc_61A99E: AndI4
  loc_61A99F: FFreeStr var_88 = ""
  loc_61A9A6: FFreeAd var_8C = ""
  loc_61A9AD: BranchF loc_61AA06
  loc_61A9B0: FLdRfVar var_88
  loc_61A9B3: FLdRfVar var_90
  loc_61A9B6: ILdI2 arg_C
  loc_61A9B9: FLdPrThis
  loc_61A9BA: VCallAd Control_ID_ProductoGrid
  loc_61A9BD: FStAdFunc var_8C
  loc_61A9C0: FLdPr var_8C
  loc_61A9C3: Set from_stack_2 = Me(from_stack_1)
  loc_61A9C8: FLdPr var_90
  loc_61A9CB:  = Me.Tag
  loc_61A9D0: ILdRf var_88
  loc_61A9D3: FLdPr Me
  loc_61A9D6: MemStStrCopy
  loc_61A9DA: FFree1Str var_88
  loc_61A9DD: FFreeAd var_8C = ""
  loc_61A9E4: LitStr vbNullString
  loc_61A9E7: FLdPr Me
  loc_61A9EA: MemStStrCopy
  loc_61A9EE: LitVar_Missing var_B4
  loc_61A9F1: PopAdLdVar
  loc_61A9F2: LitVarI2 var_A4, 1
  loc_61A9F7: PopAdLdVar
  loc_61A9F8: ImpAdLdRf MemVar_74E3B8
  loc_61A9FB: NewIfNullPr FrmVenTicketPago
  loc_61A9FE: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_61AA03: Branch loc_61AA0E
  loc_61AA06: LitI2_Byte &HFF
  loc_61AA08: FLdPr Me
  loc_61AA0B: MemStI2 esPagarVenta
  loc_61AA0E: FLdPr Me
  loc_61AA11: MemLdI2 esPagarVenta
  loc_61AA14: BranchF loc_61AA90
  loc_61AA17: ImpAdLdUI1
  loc_61AA1B: CI2UI1
  loc_61AA1D: LitI2_Byte 1
  loc_61AA1F: EqI2
  loc_61AA20: FLdRfVar var_88
  loc_61AA23: FLdRfVar var_90
  loc_61AA26: ILdI2 arg_C
  loc_61AA29: FLdPrThis
  loc_61AA2A: VCallAd Control_ID_ProductoGrid
  loc_61AA2D: FStAdFunc var_8C
  loc_61AA30: FLdPr var_8C
  loc_61AA33: Set from_stack_2 = Me(from_stack_1)
  loc_61AA38: FLdPr var_90
  loc_61AA3B:  = Me.Caption
  loc_61AA40: ILdRf var_88
  loc_61AA43: LitStr vbNullString
  loc_61AA46: NeStr
  loc_61AA48: AndI4
  loc_61AA49: FFree1Str var_88
  loc_61AA4C: FFreeAd var_8C = ""
  loc_61AA53: BranchF loc_61AA65
  loc_61AA56: LitI2_Byte &H6B
  loc_61AA58: PopTmpLdAd2 var_B6
  loc_61AA5B: ImpAdCallI2 Proc_94_7_603DD0()
  loc_61AA60: NotI4
  loc_61AA61: BranchF loc_61AA65
  loc_61AA64: ExitProcHresult
  loc_61AA65: FLdRfVar var_B6
  loc_61AA68: ImpAdLdRf MemVar_74C6D8
  loc_61AA6B: NewIfNullPr CCEMLicence
  loc_61AA6E:  = CCEMLicence.Caption
  loc_61AA73: FLdI2 var_B6
  loc_61AA76: BranchF loc_61AA7A
  loc_61AA79: ExitProcHresult
  loc_61AA7A: LitI2_Byte 0
  loc_61AA7C: PopTmpLdAd2 var_B8
  loc_61AA7F: ILdI2 arg_C
  loc_61AA82: LitI2_Byte 1
  loc_61AA84: AddI2
  loc_61AA85: CUI1I2
  loc_61AA87: PopTmpLdAd1
  loc_61AA8B: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_61AA90: ExitProcHresult
End Sub

Private Sub ProductoGrid_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '5C8558
  'Data Table: 45B254
  loc_5C8554: ExitProcHresult
End Sub

Private Sub Teclas_UnknownEvent_8 '6AD6FC
  'Data Table: 45B254
  loc_6ACFB4: FLdPr Me
  loc_6ACFB7: MemLdI2 global_110
  loc_6ACFBA: BranchF loc_6ACFCA
  loc_6ACFBD: LitI2_Byte 0
  loc_6ACFBF: FLdPr Me
  loc_6ACFC2: MemStI2 global_110
  loc_6ACFC5: Call Borrar_UnknownEvent_8()
  loc_6ACFCA: FLdPr Me
  loc_6ACFCD: MemLdI2 global_188
  loc_6ACFD0: BranchF loc_6AD0FD
  loc_6ACFD3: ImpAdLdUI1
  loc_6ACFD7: CI2UI1
  loc_6ACFD9: LitI2_Byte 1
  loc_6ACFDB: NeI2
  loc_6ACFDC: ImpAdLdUI1
  loc_6ACFE0: CI2UI1
  loc_6ACFE2: LitI2_Byte 2
  loc_6ACFE4: NeI2
  loc_6ACFE5: AndI4
  loc_6ACFE6: BranchF loc_6AD06D
  loc_6ACFE9: FLdRfVar var_A0
  loc_6ACFEC: FLdPrThis
  loc_6ACFED: VCallAd Control_ID_Monto
  loc_6ACFF0: FStAdFunc var_9C
  loc_6ACFF3: FLdPr var_9C
  loc_6ACFF6:  = Me.Text
  loc_6ACFFB: FLdRfVar var_A8
  loc_6ACFFE: FLdPrThis
  loc_6ACFFF: VCallAd Control_ID_Monto
  loc_6AD002: FStAdFunc var_A4
  loc_6AD005: FLdPr var_A4
  loc_6AD008:  = Me.Text
  loc_6AD00D: ILdRf var_A8
  loc_6AD010: FnLenStr
  loc_6AD011: LitI4 2
  loc_6AD016: SubI4
  loc_6AD017: FLdZeroAd var_A0
  loc_6AD01A: CVarStr var_B8
  loc_6AD01D: FLdRfVar var_C8
  loc_6AD020: ImpAdCallFPR4  = Left(, )
  loc_6AD025: ImpAdLdI4 MemVar_74C364
  loc_6AD028: FnLenStr
  loc_6AD029: LitI4 2
  loc_6AD02E: SubI4
  loc_6AD02F: ImpAdLdRf MemVar_74C364
  loc_6AD032: CVarRef
  loc_6AD037: FLdRfVar var_E8
  loc_6AD03A: ImpAdCallFPR4  = Left(, )
  loc_6AD03F: LitI4 1
  loc_6AD044: LitI4 1
  loc_6AD049: FLdRfVar var_E8
  loc_6AD04C: FLdRfVar var_C8
  loc_6AD04F: ImpAdCallI2 Format$(, )
  loc_6AD054: FStStr var_88
  loc_6AD057: FFree1Str var_A8
  loc_6AD05A: FFreeAd var_9C = ""
  loc_6AD061: FFreeVar var_B8 = "": var_C8 = ""
  loc_6AD06A: Branch loc_6AD0FA
  loc_6AD06D: ImpAdLdUI1
  loc_6AD071: CI2UI1
  loc_6AD073: LitI2_Byte 1
  loc_6AD075: EqI2
  loc_6AD076: BranchF loc_6AD0BB
  loc_6AD079: FLdRfVar var_A0
  loc_6AD07C: FLdPrThis
  loc_6AD07D: VCallAd Control_ID_Monto
  loc_6AD080: FStAdFunc var_9C
  loc_6AD083: FLdPr var_9C
  loc_6AD086:  = Me.Text
  loc_6AD08B: LitI4 1
  loc_6AD090: LitI4 1
  loc_6AD095: LitVarStr var_D8, "000000.00"
  loc_6AD09A: FStVarCopyObj var_C8
  loc_6AD09D: FLdRfVar var_C8
  loc_6AD0A0: FLdZeroAd var_A0
  loc_6AD0A3: CVarStr var_B8
  loc_6AD0A6: ImpAdCallI2 Format$(, )
  loc_6AD0AB: FStStr var_88
  loc_6AD0AE: FFree1Ad var_9C
  loc_6AD0B1: FFreeVar var_B8 = ""
  loc_6AD0B8: Branch loc_6AD0FA
  loc_6AD0BB: FLdRfVar var_A0
  loc_6AD0BE: FLdPrThis
  loc_6AD0BF: VCallAd Control_ID_Monto
  loc_6AD0C2: FStAdFunc var_9C
  loc_6AD0C5: FLdPr var_9C
  loc_6AD0C8:  = Me.Text
  loc_6AD0CD: LitI4 1
  loc_6AD0D2: LitI4 1
  loc_6AD0D7: LitVarStr var_D8, "000000.0"
  loc_6AD0DC: FStVarCopyObj var_C8
  loc_6AD0DF: FLdRfVar var_C8
  loc_6AD0E2: FLdZeroAd var_A0
  loc_6AD0E5: CVarStr var_B8
  loc_6AD0E8: ImpAdCallI2 Format$(, )
  loc_6AD0ED: FStStr var_88
  loc_6AD0F0: FFree1Ad var_9C
  loc_6AD0F3: FFreeVar var_B8 = ""
  loc_6AD0FA: Branch loc_6AD13C
  loc_6AD0FD: FLdRfVar var_A0
  loc_6AD100: FLdPrThis
  loc_6AD101: VCallAd Control_ID_Volumen
  loc_6AD104: FStAdFunc var_9C
  loc_6AD107: FLdPr var_9C
  loc_6AD10A:  = Me.Text
  loc_6AD10F: LitI4 1
  loc_6AD114: LitI4 1
  loc_6AD119: LitVarStr var_D8, "000000.00"
  loc_6AD11E: FStVarCopyObj var_C8
  loc_6AD121: FLdRfVar var_C8
  loc_6AD124: FLdZeroAd var_A0
  loc_6AD127: CVarStr var_B8
  loc_6AD12A: ImpAdCallI2 Format$(, )
  loc_6AD12F: FStStr var_88
  loc_6AD132: FFree1Ad var_9C
  loc_6AD135: FFreeVar var_B8 = ""
  loc_6AD13C: ILdRf var_88
  loc_6AD13F: CR8Str
  loc_6AD141: FnIntR8
  loc_6AD143: CI4R8
  loc_6AD144: FStR4 var_8C
  loc_6AD147: ILdRf var_88
  loc_6AD14A: CR8Str
  loc_6AD14C: ILdRf var_8C
  loc_6AD14F: CR8I4
  loc_6AD150: SubR4
  loc_6AD151: FLdPr Me
  loc_6AD154: MemLdStr global_92
  loc_6AD157: CR8I4
  loc_6AD158: MulR8
  loc_6AD159: CCyR4
  loc_6AD15A: FStR8 var_94
  loc_6AD15D: FLdPr Me
  loc_6AD160: MemLdI2 global_102
  loc_6AD163: NotI4
  loc_6AD164: BranchF loc_6AD1BD
  loc_6AD167: ILdRf var_8C
  loc_6AD16A: CStrI4
  loc_6AD16C: FStStrNoPop var_A0
  loc_6AD16F: FnLenStr
  loc_6AD170: LitI4 4
  loc_6AD175: LtI4
  loc_6AD176: FLdPr Me
  loc_6AD179: MemLdI2 global_186
  loc_6AD17C: AndI4
  loc_6AD17D: ILdRf var_8C
  loc_6AD180: CStrI4
  loc_6AD182: FStStrNoPop var_A8
  loc_6AD185: FnLenStr
  loc_6AD186: LitI4 6
  loc_6AD18B: LtI4
  loc_6AD18C: FLdPr Me
  loc_6AD18F: MemLdI2 global_188
  loc_6AD192: AndI4
  loc_6AD193: OrI4
  loc_6AD194: FFreeStr var_A0 = ""
  loc_6AD19B: BranchF loc_6AD1BA
  loc_6AD19E: ILdRf var_8C
  loc_6AD1A1: LitI4 &HA
  loc_6AD1A6: MulI4
  loc_6AD1A7: ILdI2 Button
  loc_6AD1AA: CI4UI1
  loc_6AD1AB: AddI4
  loc_6AD1AC: FStR4 var_8C
  loc_6AD1AF: LitI4 1
  loc_6AD1B4: FLdPr Me
  loc_6AD1B7: MemStI4 global_92
  loc_6AD1BA: Branch loc_6AD1F1
  loc_6AD1BD: FLdPr Me
  loc_6AD1C0: MemLdStr global_92
  loc_6AD1C3: LitI4 &H64
  loc_6AD1C8: LtI4
  loc_6AD1C9: BranchF loc_6AD1F1
  loc_6AD1CC: FLdR8 var_94
  loc_6AD1CF: FLdPr Me
  loc_6AD1D2: MemLdStr global_92
  loc_6AD1D5: CCyI4
  loc_6AD1D6: MulCy
  loc_6AD1D7: ILdI2 Button
  loc_6AD1DA: CCyI2
  loc_6AD1DB: AddCy
  loc_6AD1DC: FStR8 var_94
  loc_6AD1DF: FLdPr Me
  loc_6AD1E2: MemLdStr global_92
  loc_6AD1E5: LitI4 &HA
  loc_6AD1EA: MulI4
  loc_6AD1EB: FLdPr Me
  loc_6AD1EE: MemStI4 global_92
  loc_6AD1F1: FLdR8 var_94
  loc_6AD1F4: LitI2_Byte &HA
  loc_6AD1F6: CR8I2
  loc_6AD1F7: LtCyR8
  loc_6AD1F8: FLdPr Me
  loc_6AD1FB: MemLdStr global_92
  loc_6AD1FE: LitI4 &H64
  loc_6AD203: EqI4
  loc_6AD204: AndI4
  loc_6AD205: BranchF loc_6AD36A
  loc_6AD208: LitI2_Byte 1
  loc_6AD20A: CUI1I2
  loc_6AD20C: FLdRfVar var_EC
  loc_6AD20F: FLdRfVar var_A0
  loc_6AD212: FLdPrThis
  loc_6AD213: VCallAd Control_ID_Monto
  loc_6AD216: FStAdFunc var_9C
  loc_6AD219: FLdPr var_9C
  loc_6AD21C:  = Me.Text
  loc_6AD221: ILdRf var_A0
  loc_6AD224: FnLenStr
  loc_6AD225: CUI1I4
  loc_6AD227: FFree1Str var_A0
  loc_6AD22A: FFree1Ad var_9C
  loc_6AD22D: ForUI1 var_F2
  loc_6AD233: FLdUI1
  loc_6AD237: CI2UI1
  loc_6AD239: LitI2_Byte 1
  loc_6AD23B: AddI2
  loc_6AD23C: CUI1I2
  loc_6AD23E: FStUI1 var_EE
  loc_6AD242: FLdRfVar var_A0
  loc_6AD245: FLdPrThis
  loc_6AD246: VCallAd Control_ID_Monto
  loc_6AD249: FStAdFunc var_9C
  loc_6AD24C: FLdPr var_9C
  loc_6AD24F:  = Me.Text
  loc_6AD254: LitVarI2 var_C8, 1
  loc_6AD259: FLdUI1
  loc_6AD25D: CI4UI1
  loc_6AD25E: FLdZeroAd var_A0
  loc_6AD261: CVarStr var_B8
  loc_6AD264: FLdRfVar var_E8
  loc_6AD267: ImpAdCallFPR4  = Mid(, , )
  loc_6AD26C: FLdRfVar var_E8
  loc_6AD26F: LitVarStr var_104, "."
  loc_6AD274: HardType
  loc_6AD275: EqVarBool
  loc_6AD277: FFree1Ad var_9C
  loc_6AD27A: FFreeVar var_B8 = "": var_C8 = ""
  loc_6AD283: BranchF loc_6AD296
  loc_6AD286: FLdUI1
  loc_6AD28A: FStUI1 var_EA
  loc_6AD28E: LitI2_Byte 0
  loc_6AD290: CUI1I2
  loc_6AD292: FStUI1 var_EE
  loc_6AD296: FLdRfVar var_EC
  loc_6AD299: NextUI1
  loc_6AD29F: FLdUI1
  loc_6AD2A3: CI2UI1
  loc_6AD2A5: LitI2_Byte 2
  loc_6AD2A7: EqI2
  loc_6AD2A8: FLdPr Me
  loc_6AD2AB: MemLdI2 global_532
  loc_6AD2AE: LitI2_Byte 0
  loc_6AD2B0: EqI2
  loc_6AD2B1: AndI4
  loc_6AD2B2: BranchF loc_6AD336
  loc_6AD2B5: FLdRfVar var_A8
  loc_6AD2B8: FLdPrThis
  loc_6AD2B9: VCallAd Control_ID_Monto
  loc_6AD2BC: FStAdFunc var_9C
  loc_6AD2BF: FLdPr var_9C
  loc_6AD2C2:  = Me.Text
  loc_6AD2C7: ILdRf var_8C
  loc_6AD2CA: CStrI4
  loc_6AD2CC: FStStrNoPop var_A0
  loc_6AD2CF: LitStr "."
  loc_6AD2D2: ConcatStr
  loc_6AD2D3: CVarStr var_114
  loc_6AD2D6: LitVarI2 var_C8, 1
  loc_6AD2DB: FLdUI1
  loc_6AD2DF: CI2UI1
  loc_6AD2E1: LitI2_Byte 1
  loc_6AD2E3: AddI2
  loc_6AD2E4: CI4UI1
  loc_6AD2E5: FLdZeroAd var_A8
  loc_6AD2E8: CVarStr var_B8
  loc_6AD2EB: FLdRfVar var_E8
  loc_6AD2EE: ImpAdCallFPR4  = Mid(, , )
  loc_6AD2F3: FLdRfVar var_E8
  loc_6AD2F6: ConcatVar var_124
  loc_6AD2FA: FLdR8 var_94
  loc_6AD2FD: CVarCy var_104
  loc_6AD300: ConcatVar var_134
  loc_6AD304: CStrVarVal var_138
  loc_6AD308: ImpAdCallFPR4 push Val()
  loc_6AD30D: CStrR8
  loc_6AD30F: FStStr var_88
  loc_6AD312: FFreeStr var_A0 = ""
  loc_6AD319: FFree1Ad var_9C
  loc_6AD31C: FFreeVar var_B8 = "": var_C8 = "": var_114 = "": var_E8 = "": var_124 = ""
  loc_6AD32B: LitI2_Byte &HFF
  loc_6AD32D: FLdPr Me
  loc_6AD330: MemStI2 global_532
  loc_6AD333: Branch loc_6AD367
  loc_6AD336: FLdRfVar var_A0
  loc_6AD339: FLdPrThis
  loc_6AD33A: VCallAd Control_ID_Monto
  loc_6AD33D: FStAdFunc var_9C
  loc_6AD340: FLdPr var_9C
  loc_6AD343:  = Me.Text
  loc_6AD348: FLdZeroAd var_A0
  loc_6AD34B: CVarStr var_B8
  loc_6AD34E: FLdRfVar var_C8
  loc_6AD351: ImpAdCallFPR4  = Trim()
  loc_6AD356: FLdRfVar var_C8
  loc_6AD359: CStrVarTmp
  loc_6AD35A: FStStr var_88
  loc_6AD35D: FFree1Ad var_9C
  loc_6AD360: FFreeVar var_B8 = ""
  loc_6AD367: Branch loc_6AD39A
  loc_6AD36A: ILdRf var_8C
  loc_6AD36D: CStrI4
  loc_6AD36F: FStStrNoPop var_A0
  loc_6AD372: LitStr "."
  loc_6AD375: ConcatStr
  loc_6AD376: FStStrNoPop var_A8
  loc_6AD379: FLdR8 var_94
  loc_6AD37C: CStrCy
  loc_6AD37E: FStStrNoPop var_138
  loc_6AD381: ConcatStr
  loc_6AD382: FStStrNoPop var_13C
  loc_6AD385: ImpAdCallFPR4 push Val()
  loc_6AD38A: CStrR8
  loc_6AD38C: FStStr var_88
  loc_6AD38F: FFreeStr var_A0 = "": var_A8 = "": var_138 = ""
  loc_6AD39A: FLdPr Me
  loc_6AD39D: MemLdI2 global_188
  loc_6AD3A0: BranchF loc_6AD3E7
  loc_6AD3A3: LitI4 1
  loc_6AD3A8: LitI4 1
  loc_6AD3AD: ImpAdLdRf MemVar_74C364
  loc_6AD3B0: CVarRef
  loc_6AD3B5: FLdRfVar var_88
  loc_6AD3B8: CVarRef
  loc_6AD3BD: FLdRfVar var_B8
  loc_6AD3C0: ImpAdCallFPR4  = Format(, )
  loc_6AD3C5: FLdRfVar var_B8
  loc_6AD3C8: CStrVarVal var_A0
  loc_6AD3CC: FLdPrThis
  loc_6AD3CD: VCallAd Control_ID_Monto
  loc_6AD3D0: FStAdFunc var_9C
  loc_6AD3D3: FLdPr var_9C
  loc_6AD3D6: Me.Text = from_stack_1
  loc_6AD3DB: FFree1Str var_A0
  loc_6AD3DE: FFree1Ad var_9C
  loc_6AD3E1: FFree1Var var_B8 = ""
  loc_6AD3E4: Branch loc_6AD42F
  loc_6AD3E7: LitI4 1
  loc_6AD3EC: LitI4 1
  loc_6AD3F1: LitVarStr var_104, "#0.00"
  loc_6AD3F6: FStVarCopyObj var_B8
  loc_6AD3F9: FLdRfVar var_B8
  loc_6AD3FC: FLdRfVar var_88
  loc_6AD3FF: CVarRef
  loc_6AD404: FLdRfVar var_C8
  loc_6AD407: ImpAdCallFPR4  = Format(, )
  loc_6AD40C: FLdRfVar var_C8
  loc_6AD40F: CStrVarVal var_A0
  loc_6AD413: FLdPrThis
  loc_6AD414: VCallAd Control_ID_Volumen
  loc_6AD417: FStAdFunc var_9C
  loc_6AD41A: FLdPr var_9C
  loc_6AD41D: Me.Text = from_stack_1
  loc_6AD422: FFree1Str var_A0
  loc_6AD425: FFree1Ad var_9C
  loc_6AD428: FFreeVar var_B8 = ""
  loc_6AD42F: ImpAdLdUI1
  loc_6AD433: CI2UI1
  loc_6AD435: LitI2_Byte 3
  loc_6AD437: EqI2
  loc_6AD438: ImpAdLdUI1
  loc_6AD43C: CI2UI1
  loc_6AD43E: LitI2_Byte 3
  loc_6AD440: EqI2
  loc_6AD441: AndI4
  loc_6AD442: BranchF loc_6AD666
  loc_6AD445: FLdPr Me
  loc_6AD448: MemLdI2 global_188
  loc_6AD44B: BranchF loc_6AD560
  loc_6AD44E: LitVarI2 var_160, 1
  loc_6AD453: FLdRfVar var_14C
  loc_6AD456: ILdRf var_88
  loc_6AD459: FnLenStr
  loc_6AD45A: CVarI4
  loc_6AD45E: ForVar var_180
  loc_6AD464: FLdUI1
  loc_6AD468: CI2UI1
  loc_6AD46A: LitI2_Byte 1
  loc_6AD46C: AddI2
  loc_6AD46D: CUI1I2
  loc_6AD46F: FStUI1 var_14E
  loc_6AD473: LitVarI2 var_B8, 1
  loc_6AD478: FLdRfVar var_14C
  loc_6AD47B: CI4Var
  loc_6AD47D: FLdRfVar var_88
  loc_6AD480: CVarRef
  loc_6AD485: FLdRfVar var_C8
  loc_6AD488: ImpAdCallFPR4  = Mid(, , )
  loc_6AD48D: FLdRfVar var_C8
  loc_6AD490: LitVarStr var_160, "."
  loc_6AD495: HardType
  loc_6AD496: EqVarBool
  loc_6AD498: FFreeVar var_B8 = ""
  loc_6AD49F: BranchF loc_6AD4CC
  loc_6AD4A2: FLdRfVar var_14C
  loc_6AD4A5: LitI4 1
  loc_6AD4AA: FLdRfVar var_88
  loc_6AD4AD: CVarRef
  loc_6AD4B2: FLdRfVar var_B8
  loc_6AD4B5: ImpAdCallFPR4  = Mid(, , )
  loc_6AD4BA: FLdRfVar var_B8
  loc_6AD4BD: CStrVarTmp
  loc_6AD4BE: FStStr var_88
  loc_6AD4C1: FFree1Var var_B8 = ""
  loc_6AD4C4: LitI2_Byte 0
  loc_6AD4C6: CUI1I2
  loc_6AD4C8: FStUI1 var_14E
  loc_6AD4CC: FLdRfVar var_14C
  loc_6AD4CF: NextStepVar var_180
  loc_6AD4D5: LitVarI2 var_160, 1
  loc_6AD4DA: FLdRfVar var_14C
  loc_6AD4DD: ILdRf var_88
  loc_6AD4E0: FnLenStr
  loc_6AD4E1: CVarI4
  loc_6AD4E5: ForVar var_1A4
  loc_6AD4EB: LitVarI2 var_B8, 1
  loc_6AD4F0: FLdRfVar var_14C
  loc_6AD4F3: CI4Var
  loc_6AD4F5: FLdRfVar var_88
  loc_6AD4F8: CVarRef
  loc_6AD4FD: FLdRfVar var_C8
  loc_6AD500: ImpAdCallFPR4  = Mid(, , )
  loc_6AD505: FLdRfVar var_C8
  loc_6AD508: LitVarStr var_160, "."
  loc_6AD50D: HardType
  loc_6AD50E: EqVarBool
  loc_6AD510: FFreeVar var_B8 = ""
  loc_6AD517: BranchF loc_6AD52C
  loc_6AD51A: ILdRf var_88
  loc_6AD51D: LitStr "00"
  loc_6AD520: ConcatStr
  loc_6AD521: FStStr var_88
  loc_6AD524: LitI2_Byte &HFF
  loc_6AD526: FStI2 var_182
  loc_6AD529: Branch loc_6AD535
  loc_6AD52C: FLdRfVar var_14C
  loc_6AD52F: NextStepVar var_1A4
  loc_6AD535: FLdI2 var_182
  loc_6AD538: LitI2_Byte 0
  loc_6AD53A: EqI2
  loc_6AD53B: BranchF loc_6AD548
  loc_6AD53E: ILdRf var_88
  loc_6AD541: LitStr ".00"
  loc_6AD544: ConcatStr
  loc_6AD545: FStStr var_88
  loc_6AD548: ILdRf var_88
  loc_6AD54B: FLdPrThis
  loc_6AD54C: VCallAd Control_ID_Monto
  loc_6AD54F: FStAdFunc var_9C
  loc_6AD552: FLdPr var_9C
  loc_6AD555: Me.Text = from_stack_1
  loc_6AD55A: FFree1Ad var_9C
  loc_6AD55D: Branch loc_6AD666
  loc_6AD560: FLdRfVar var_A0
  loc_6AD563: FLdPrThis
  loc_6AD564: VCallAd Control_ID_Volumen
  loc_6AD567: FStAdFunc var_9C
  loc_6AD56A: FLdPr var_9C
  loc_6AD56D:  = Me.Text
  loc_6AD572: FLdZeroAd var_A0
  loc_6AD575: FStStr var_88
  loc_6AD578: FFree1Ad var_9C
  loc_6AD57B: LitVarI2 var_B8, 1
  loc_6AD580: ILdRf var_88
  loc_6AD583: FnLenStr
  loc_6AD584: LitI4 1
  loc_6AD589: SubI4
  loc_6AD58A: FLdRfVar var_88
  loc_6AD58D: CVarRef
  loc_6AD592: FLdRfVar var_C8
  loc_6AD595: ImpAdCallFPR4  = Mid(, , )
  loc_6AD59A: FLdRfVar var_C8
  loc_6AD59D: LitVarStr var_160, "0"
  loc_6AD5A2: HardType
  loc_6AD5A3: EqVar var_E8
  loc_6AD5A7: FLdR8 var_94
  loc_6AD5AA: LitStr "0"
  loc_6AD5AD: CCyStr
  loc_6AD5AF: EqCy
  loc_6AD5B0: CVarBoolI2 var_1B4
  loc_6AD5B4: OrVar var_114
  loc_6AD5B8: CBoolVarNull
  loc_6AD5BA: FFreeVar var_B8 = "": var_C8 = ""
  loc_6AD5C3: BranchF loc_6AD60F
  loc_6AD5C6: ILdRf var_88
  loc_6AD5C9: FnLenStr
  loc_6AD5CA: LitI4 1
  loc_6AD5CF: SubI4
  loc_6AD5D0: FLdRfVar var_88
  loc_6AD5D3: CVarRef
  loc_6AD5D8: FLdRfVar var_B8
  loc_6AD5DB: ImpAdCallFPR4  = Left(, )
  loc_6AD5E0: FLdRfVar var_B8
  loc_6AD5E3: LitVarStr var_104, "0"
  loc_6AD5E8: ConcatVar var_C8
  loc_6AD5EC: CStrVarTmp
  loc_6AD5ED: FStStr var_88
  loc_6AD5F0: FFreeVar var_B8 = ""
  loc_6AD5F7: ILdRf var_88
  loc_6AD5FA: FLdPrThis
  loc_6AD5FB: VCallAd Control_ID_Volumen
  loc_6AD5FE: FStAdFunc var_9C
  loc_6AD601: FLdPr var_9C
  loc_6AD604: Me.Text = from_stack_1
  loc_6AD609: FFree1Ad var_9C
  loc_6AD60C: Branch loc_6AD666
  loc_6AD60F: ILdRf var_88
  loc_6AD612: FnLenStr
  loc_6AD613: LitI4 1
  loc_6AD618: SubI4
  loc_6AD619: CVarI4
  loc_6AD61D: LitI4 1
  loc_6AD622: FLdRfVar var_88
  loc_6AD625: CVarRef
  loc_6AD62A: FLdRfVar var_C8
  loc_6AD62D: ImpAdCallFPR4  = Mid(, , )
  loc_6AD632: FLdRfVar var_C8
  loc_6AD635: LitVarStr var_160, "0"
  loc_6AD63A: ConcatVar var_E8
  loc_6AD63E: CStrVarTmp
  loc_6AD63F: FStStr var_1B8
  loc_6AD642: FFreeVar var_B8 = "": var_C8 = ""
  loc_6AD64B: ILdRf var_1B8
  loc_6AD64E: FStStrCopy var_88
  loc_6AD651: ILdRf var_88
  loc_6AD654: FLdPrThis
  loc_6AD655: VCallAd Control_ID_Volumen
  loc_6AD658: FStAdFunc var_9C
  loc_6AD65B: FLdPr var_9C
  loc_6AD65E: Me.Text = from_stack_1
  loc_6AD663: FFree1Ad var_9C
  loc_6AD666: FLdPr Me
  loc_6AD669: MemLdI2 global_188
  loc_6AD66C: BranchF loc_6AD6B3
  loc_6AD66F: LitI4 1
  loc_6AD674: LitI4 1
  loc_6AD679: ImpAdLdRf MemVar_74C364
  loc_6AD67C: CVarRef
  loc_6AD681: FLdRfVar var_88
  loc_6AD684: CVarRef
  loc_6AD689: FLdRfVar var_B8
  loc_6AD68C: ImpAdCallFPR4  = Format(, )
  loc_6AD691: FLdRfVar var_B8
  loc_6AD694: CStrVarVal var_A0
  loc_6AD698: FLdPrThis
  loc_6AD699: VCallAd Control_ID_Monto
  loc_6AD69C: FStAdFunc var_9C
  loc_6AD69F: FLdPr var_9C
  loc_6AD6A2: Me.Text = from_stack_1
  loc_6AD6A7: FFree1Str var_A0
  loc_6AD6AA: FFree1Ad var_9C
  loc_6AD6AD: FFree1Var var_B8 = ""
  loc_6AD6B0: Branch loc_6AD6FB
  loc_6AD6B3: LitI4 1
  loc_6AD6B8: LitI4 1
  loc_6AD6BD: LitVarStr var_104, "##,##0.00"
  loc_6AD6C2: FStVarCopyObj var_B8
  loc_6AD6C5: FLdRfVar var_B8
  loc_6AD6C8: FLdRfVar var_88
  loc_6AD6CB: CVarRef
  loc_6AD6D0: FLdRfVar var_C8
  loc_6AD6D3: ImpAdCallFPR4  = Format(, )
  loc_6AD6D8: FLdRfVar var_C8
  loc_6AD6DB: CStrVarVal var_A0
  loc_6AD6DF: FLdPrThis
  loc_6AD6E0: VCallAd Control_ID_Volumen
  loc_6AD6E3: FStAdFunc var_9C
  loc_6AD6E6: FLdPr var_9C
  loc_6AD6E9: Me.Text = from_stack_1
  loc_6AD6EE: FFree1Str var_A0
  loc_6AD6F1: FFree1Ad var_9C
  loc_6AD6F4: FFreeVar var_B8 = ""
  loc_6AD6FB: ExitProcHresult
End Sub

Private Sub mezcla_UnknownEvent_8 '5F1944
  'Data Table: 45B254
  loc_5F18A4: LitVar_FALSE
  loc_5F18A8: PopAdLdVar
  loc_5F18A9: FLdPrThis
  loc_5F18AA: VCallAd Control_ID_Ventas
  loc_5F18AD: FStAdFunc var_98
  loc_5F18B0: FLdPr var_98
  loc_5F18B3: LateIdSt
  loc_5F18B8: FFree1Ad var_98
  loc_5F18BB: LitVar_FALSE
  loc_5F18BF: PopAdLdVar
  loc_5F18C0: FLdPrThis
  loc_5F18C1: VCallAd Control_ID_Preset
  loc_5F18C4: FStAdFunc var_98
  loc_5F18C7: FLdPr var_98
  loc_5F18CA: LateIdSt
  loc_5F18CF: FFree1Ad var_98
  loc_5F18D2: LitVar_FALSE
  loc_5F18D6: PopAdLdVar
  loc_5F18D7: FLdPrThis
  loc_5F18D8: VCallAd Control_ID_Tanques
  loc_5F18DB: FStAdFunc var_98
  loc_5F18DE: FLdPr var_98
  loc_5F18E1: LateIdSt
  loc_5F18E6: FFree1Ad var_98
  loc_5F18E9: LitVar_FALSE
  loc_5F18ED: PopAdLdVar
  loc_5F18EE: FLdPrThis
  loc_5F18EF: VCallAd Control_ID_Configuracion
  loc_5F18F2: FStAdFunc var_98
  loc_5F18F5: FLdPr var_98
  loc_5F18F8: LateIdSt
  loc_5F18FD: FFree1Ad var_98
  loc_5F1900: LitVar_FALSE
  loc_5F1904: PopAdLdVar
  loc_5F1905: FLdPrThis
  loc_5F1906: VCallAd Control_ID_Estadisticas
  loc_5F1909: FStAdFunc var_98
  loc_5F190C: FLdPr var_98
  loc_5F190F: LateIdSt
  loc_5F1914: FFree1Ad var_98
  loc_5F1917: LitI2_Byte &HFF
  loc_5F1919: FLdPrThis
  loc_5F191A: VCallAd Control_ID_PMezcla
  loc_5F191D: FStAdFunc var_98
  loc_5F1920: FLdPr var_98
  loc_5F1923: Me.Visible = from_stack_1b
  loc_5F1928: FFree1Ad var_98
  loc_5F192B: FLdRfVar var_A8
  loc_5F192E: from_stack_1v = MostrarBotonesMezclas()
  loc_5F1933: FFree1Var var_A8 = ""
  loc_5F1936: LitI2_Byte 1
  loc_5F1938: PopTmpLdAd2 var_AA
  loc_5F193B: Call Command1_Click(from_stack_1v)
  loc_5F1940: ExitProcHresult
End Sub

Private Sub PPUGrid_Click(arg_C) '61A068
  'Data Table: 45B254
  loc_619F34: LitI2_Byte 0
  loc_619F36: FLdPr Me
  loc_619F39: MemStI2 esPagarVenta
  loc_619F3C: LitStr "ConVolTicket"
  loc_619F3F: FStStrCopy var_88
  loc_619F42: FLdRfVar var_88
  loc_619F45: ImpAdCallI2 Proc_158_2_607130()
  loc_619F4A: FLdRfVar var_94
  loc_619F4D: FLdRfVar var_90
  loc_619F50: ILdI2 arg_C
  loc_619F53: FLdPrThis
  loc_619F54: VCallAd Control_ID_PPUGrid
  loc_619F57: FStAdFunc var_8C
  loc_619F5A: FLdPr var_8C
  loc_619F5D: Set from_stack_2 = Me(from_stack_1)
  loc_619F62: FLdPr var_90
  loc_619F65:  = Me.Caption
  loc_619F6A: ILdRf var_94
  loc_619F6D: LitStr vbNullString
  loc_619F70: NeStr
  loc_619F72: AndI4
  loc_619F73: FFreeStr var_88 = ""
  loc_619F7A: FFreeAd var_8C = ""
  loc_619F81: BranchF loc_619FDA
  loc_619F84: FLdRfVar var_88
  loc_619F87: FLdRfVar var_90
  loc_619F8A: ILdI2 arg_C
  loc_619F8D: FLdPrThis
  loc_619F8E: VCallAd Control_ID_ProductoGrid
  loc_619F91: FStAdFunc var_8C
  loc_619F94: FLdPr var_8C
  loc_619F97: Set from_stack_2 = Me(from_stack_1)
  loc_619F9C: FLdPr var_90
  loc_619F9F:  = Me.Tag
  loc_619FA4: ILdRf var_88
  loc_619FA7: FLdPr Me
  loc_619FAA: MemStStrCopy
  loc_619FAE: FFree1Str var_88
  loc_619FB1: FFreeAd var_8C = ""
  loc_619FB8: LitStr vbNullString
  loc_619FBB: FLdPr Me
  loc_619FBE: MemStStrCopy
  loc_619FC2: LitVar_Missing var_B4
  loc_619FC5: PopAdLdVar
  loc_619FC6: LitVarI2 var_A4, 1
  loc_619FCB: PopAdLdVar
  loc_619FCC: ImpAdLdRf MemVar_74E3B8
  loc_619FCF: NewIfNullPr FrmVenTicketPago
  loc_619FD2: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_619FD7: Branch loc_619FE2
  loc_619FDA: LitI2_Byte &HFF
  loc_619FDC: FLdPr Me
  loc_619FDF: MemStI2 esPagarVenta
  loc_619FE2: FLdPr Me
  loc_619FE5: MemLdI2 esPagarVenta
  loc_619FE8: BranchF loc_61A064
  loc_619FEB: ImpAdLdUI1
  loc_619FEF: CI2UI1
  loc_619FF1: LitI2_Byte 1
  loc_619FF3: EqI2
  loc_619FF4: FLdRfVar var_88
  loc_619FF7: FLdRfVar var_90
  loc_619FFA: ILdI2 arg_C
  loc_619FFD: FLdPrThis
  loc_619FFE: VCallAd Control_ID_ProductoGrid
  loc_61A001: FStAdFunc var_8C
  loc_61A004: FLdPr var_8C
  loc_61A007: Set from_stack_2 = Me(from_stack_1)
  loc_61A00C: FLdPr var_90
  loc_61A00F:  = Me.Caption
  loc_61A014: ILdRf var_88
  loc_61A017: LitStr vbNullString
  loc_61A01A: NeStr
  loc_61A01C: AndI4
  loc_61A01D: FFree1Str var_88
  loc_61A020: FFreeAd var_8C = ""
  loc_61A027: BranchF loc_61A039
  loc_61A02A: LitI2_Byte &H6B
  loc_61A02C: PopTmpLdAd2 var_B6
  loc_61A02F: ImpAdCallI2 Proc_94_7_603DD0()
  loc_61A034: NotI4
  loc_61A035: BranchF loc_61A039
  loc_61A038: ExitProcHresult
  loc_61A039: FLdRfVar var_B6
  loc_61A03C: ImpAdLdRf MemVar_74C6D8
  loc_61A03F: NewIfNullPr CCEMLicence
  loc_61A042:  = CCEMLicence.Caption
  loc_61A047: FLdI2 var_B6
  loc_61A04A: BranchF loc_61A04E
  loc_61A04D: ExitProcHresult
  loc_61A04E: LitI2_Byte 0
  loc_61A050: PopTmpLdAd2 var_B8
  loc_61A053: ILdI2 arg_C
  loc_61A056: LitI2_Byte 1
  loc_61A058: AddI2
  loc_61A059: CUI1I2
  loc_61A05B: PopTmpLdAd1
  loc_61A05F: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_61A064: ExitProcHresult
  loc_61A065: ExitProcCy
  loc_61A066: GtCy
End Sub

Private Sub Borrar_UnknownEvent_8 '5F67A4
  'Data Table: 45B254
  loc_5F66F0: LitI4 1
  loc_5F66F5: FLdPr Me
  loc_5F66F8: MemStI4 global_92
  loc_5F66FB: FLdPr Me
  loc_5F66FE: MemLdI2 global_188
  loc_5F6701: BranchF loc_5F6751
  loc_5F6704: LitI4 1
  loc_5F6709: LitI4 1
  loc_5F670E: ImpAdLdRf MemVar_74C364
  loc_5F6711: CVarRef
  loc_5F6716: LitVarI2 var_A4, 0
  loc_5F671B: FLdRfVar var_C4
  loc_5F671E: ImpAdCallFPR4  = Format(, )
  loc_5F6723: FLdRfVar var_C4
  loc_5F6726: CStrVarVal var_C8
  loc_5F672A: FLdPrThis
  loc_5F672B: VCallAd Control_ID_Monto
  loc_5F672E: FStAdFunc var_CC
  loc_5F6731: FLdPr var_CC
  loc_5F6734: Me.Text = from_stack_1
  loc_5F6739: FFree1Str var_C8
  loc_5F673C: FFree1Ad var_CC
  loc_5F673F: FFreeVar var_A4 = ""
  loc_5F6746: LitI2_Byte 0
  loc_5F6748: FLdPr Me
  loc_5F674B: MemStI2 global_532
  loc_5F674E: Branch loc_5F6798
  loc_5F6751: LitI4 1
  loc_5F6756: LitI4 1
  loc_5F675B: LitVarStr var_B4, "#0.00"
  loc_5F6760: FStVarCopyObj var_C4
  loc_5F6763: FLdRfVar var_C4
  loc_5F6766: LitVarI2 var_A4, 0
  loc_5F676B: FLdRfVar var_DC
  loc_5F676E: ImpAdCallFPR4  = Format(, )
  loc_5F6773: FLdRfVar var_DC
  loc_5F6776: CStrVarVal var_C8
  loc_5F677A: FLdPrThis
  loc_5F677B: VCallAd Control_ID_Volumen
  loc_5F677E: FStAdFunc var_CC
  loc_5F6781: FLdPr var_CC
  loc_5F6784: Me.Text = from_stack_1
  loc_5F6789: FFree1Str var_C8
  loc_5F678C: FFree1Ad var_CC
  loc_5F678F: FFreeVar var_A4 = "": var_C4 = ""
  loc_5F6798: LitI2_Byte 0
  loc_5F679A: FLdPr Me
  loc_5F679D: MemStI2 global_102
  loc_5F67A0: ExitProcHresult
End Sub

Private Sub SSTanqueLleno_UnknownEvent_8 '5D4C20
  'Data Table: 45B254
  loc_5D4C00: ImpAdCallI2 Proc_167_4_6114E0()
  loc_5D4C05: BranchF loc_5D4C1F
  loc_5D4C08: FLdPrThis
  loc_5D4C09: VCallAd Control_ID_Monto
  loc_5D4C0C: FStAdFunc var_88
  loc_5D4C0F: FLdPr var_88
  loc_5D4C12: Me.SetFocus
  loc_5D4C17: FFree1Ad var_88
  loc_5D4C1A: from_stack_1v = Proc_161_132_67F7DC()
  loc_5D4C1F: ExitProcHresult
End Sub

Private Sub cmdReenviar_UnknownEvent_8 '66BFF0
  'Data Table: 45B254
  loc_66BC28: FLdPr Me
  loc_66BC2B: MemLdI2 global_512
  loc_66BC2E: NotI4
  loc_66BC2F: BranchF loc_66BC70
  loc_66BC32: FLdPrThis
  loc_66BC33: VCallAd Control_ID_cmdReenviar
  loc_66BC36: FStAdFunc var_90
  loc_66BC39: FLdPr var_90
  loc_66BC3C: LateIdLdVar var_A0 DispID_74 -32767
  loc_66BC43: PopAd
  loc_66BC45: LitVar_Missing var_110
  loc_66BC48: LitVar_Missing var_F0
  loc_66BC4B: LitVar_Missing var_D0
  loc_66BC4E: LitI4 &H40
  loc_66BC53: FLdRfVar var_A0
  loc_66BC56: CStrVarTmp
  loc_66BC57: CVarStr var_B0
  loc_66BC5A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66BC5F: FFree1Ad var_90
  loc_66BC62: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_F0 = ""
  loc_66BC6F: ExitProcHresult
  loc_66BC70: FLdRfVar var_112
  loc_66BC73: FLdPrThis
  loc_66BC74: VCallAd Control_ID_lstPreset
  loc_66BC77: FStAdFunc var_90
  loc_66BC7A: FLdPr var_90
  loc_66BC7D:  = Me.ListIndex
  loc_66BC82: FLdI2 var_112
  loc_66BC85: LitI2_Byte &HFF
  loc_66BC87: EqI2
  loc_66BC88: FLdRfVar var_124
  loc_66BC8B: FLdRfVar var_11A
  loc_66BC8E: FLdPrThis
  loc_66BC8F: VCallAd Control_ID_lstPreset
  loc_66BC92: FStAdFunc var_118
  loc_66BC95: FLdPr var_118
  loc_66BC98:  = Me.ListIndex
  loc_66BC9D: FLdI2 var_11A
  loc_66BCA0: FLdPrThis
  loc_66BCA1: VCallAd Control_ID_lstPreset
  loc_66BCA4: FStAdFunc var_120
  loc_66BCA7: FLdPr var_120
  loc_66BCAA: from_stack_2 = Me.List(from_stack_1)
  loc_66BCAF: ILdRf var_124
  loc_66BCB2: LitStr vbNullString
  loc_66BCB5: EqStr
  loc_66BCB7: OrI4
  loc_66BCB8: FFree1Str var_124
  loc_66BCBB: FFreeAd var_90 = "": var_118 = ""
  loc_66BCC4: BranchF loc_66BCCD
  loc_66BCC7: from_stack_1v = Proc_161_127_61BA5C()
  loc_66BCCC: ExitProcHresult
  loc_66BCCD: FLdRfVar var_124
  loc_66BCD0: FLdRfVar var_112
  loc_66BCD3: FLdPrThis
  loc_66BCD4: VCallAd Control_ID_lstPreset
  loc_66BCD7: FStAdFunc var_90
  loc_66BCDA: FLdPr var_90
  loc_66BCDD:  = Me.ListIndex
  loc_66BCE2: FLdI2 var_112
  loc_66BCE5: FLdPrThis
  loc_66BCE6: VCallAd Control_ID_lstPreset
  loc_66BCE9: FStAdFunc var_118
  loc_66BCEC: FLdPr var_118
  loc_66BCEF: from_stack_2 = Me.List(from_stack_1)
  loc_66BCF4: ILdRf var_124
  loc_66BCF7: FnLenStr
  loc_66BCF8: CI2I4
  loc_66BCF9: FLdRfVar var_86
  loc_66BCFC: LitI2_Byte 1
  loc_66BCFE: LitI2_Byte &HFF
  loc_66BD00: FFree1Str var_124
  loc_66BD03: FFreeAd var_90 = ""
  loc_66BD0A: ForStepI2 var_128
  loc_66BD10: FLdRfVar var_112
  loc_66BD13: FLdPrThis
  loc_66BD14: VCallAd Control_ID_lstPreset
  loc_66BD17: FStAdFunc var_90
  loc_66BD1A: FLdPr var_90
  loc_66BD1D:  = Me.ListIndex
  loc_66BD22: FLdRfVar var_124
  loc_66BD25: FLdI2 var_112
  loc_66BD28: FLdPrThis
  loc_66BD29: VCallAd Control_ID_lstPreset
  loc_66BD2C: FStAdFunc var_118
  loc_66BD2F: FLdPr var_118
  loc_66BD32: from_stack_2 = Me.List(from_stack_1)
  loc_66BD37: LitVarI2 var_B0, 1
  loc_66BD3C: FLdI2 var_86
  loc_66BD3F: CI4UI1
  loc_66BD40: FLdZeroAd var_124
  loc_66BD43: CVarStr var_A0
  loc_66BD46: FLdRfVar var_D0
  loc_66BD49: ImpAdCallFPR4  = Mid(, , )
  loc_66BD4E: FLdRfVar var_D0
  loc_66BD51: LitVarStr var_E0, "$"
  loc_66BD56: HardType
  loc_66BD57: EqVarBool
  loc_66BD59: FFreeAd var_90 = ""
  loc_66BD60: FFreeVar var_A0 = "": var_B0 = ""
  loc_66BD69: BranchF loc_66BE2C
  loc_66BD6C: FLdRfVar var_112
  loc_66BD6F: FLdPrThis
  loc_66BD70: VCallAd Control_ID_lstPreset
  loc_66BD73: FStAdFunc var_90
  loc_66BD76: FLdPr var_90
  loc_66BD79:  = Me.ListIndex
  loc_66BD7E: FLdRfVar var_124
  loc_66BD81: FLdI2 var_112
  loc_66BD84: FLdPrThis
  loc_66BD85: VCallAd Control_ID_lstPreset
  loc_66BD88: FStAdFunc var_118
  loc_66BD8B: FLdPr var_118
  loc_66BD8E: from_stack_2 = Me.List(from_stack_1)
  loc_66BD93: FLdRfVar var_11A
  loc_66BD96: FLdPrThis
  loc_66BD97: VCallAd Control_ID_lstPreset
  loc_66BD9A: FStAdFunc var_120
  loc_66BD9D: FLdPr var_120
  loc_66BDA0:  = Me.ListIndex
  loc_66BDA5: FLdRfVar var_130
  loc_66BDA8: FLdI2 var_11A
  loc_66BDAB: FLdPrThis
  loc_66BDAC: VCallAd Control_ID_lstPreset
  loc_66BDAF: FStAdFunc var_12C
  loc_66BDB2: FLdPr var_12C
  loc_66BDB5: from_stack_2 = Me.List(from_stack_1)
  loc_66BDBA: LitVarI2 var_B0, 10
  loc_66BDBF: ILdRf var_130
  loc_66BDC2: FnLenStr
  loc_66BDC3: LitI4 &HB
  loc_66BDC8: SubI4
  loc_66BDC9: FLdZeroAd var_124
  loc_66BDCC: CVarStr var_A0
  loc_66BDCF: FLdRfVar var_D0
  loc_66BDD2: ImpAdCallFPR4  = Mid(, , )
  loc_66BDD7: LitI4 1
  loc_66BDDC: LitI4 1
  loc_66BDE1: LitVarStr var_E0, "00000000.00"
  loc_66BDE6: FStVarCopyObj var_F0
  loc_66BDE9: FLdRfVar var_F0
  loc_66BDEC: FLdRfVar var_D0
  loc_66BDEF: ImpAdCallI2 Format$(, )
  loc_66BDF4: FStStrNoPop var_134
  loc_66BDF7: CR8Str
  loc_66BDF9: ImpAdLdFPR4 MemVar_74C2E0
  loc_66BDFC: MulR8
  loc_66BDFD: CI4R8
  loc_66BDFE: FStR4 var_8C
  loc_66BE01: FFreeStr var_130 = ""
  loc_66BE08: FFreeAd var_90 = "": var_118 = "": var_120 = ""
  loc_66BE13: FFreeVar var_A0 = "": var_B0 = "": var_D0 = ""
  loc_66BE1E: LitI2_Byte 0
  loc_66BE20: CUI1I2
  loc_66BE22: FStUI1 var_88
  loc_66BE26: Branch loc_66BF4D
  loc_66BE29: Branch loc_66BF45
  loc_66BE2C: FLdRfVar var_112
  loc_66BE2F: FLdPrThis
  loc_66BE30: VCallAd Control_ID_lstPreset
  loc_66BE33: FStAdFunc var_90
  loc_66BE36: FLdPr var_90
  loc_66BE39:  = Me.ListIndex
  loc_66BE3E: FLdRfVar var_124
  loc_66BE41: FLdI2 var_112
  loc_66BE44: FLdPrThis
  loc_66BE45: VCallAd Control_ID_lstPreset
  loc_66BE48: FStAdFunc var_118
  loc_66BE4B: FLdPr var_118
  loc_66BE4E: from_stack_2 = Me.List(from_stack_1)
  loc_66BE53: LitVarI2 var_B0, 1
  loc_66BE58: FLdI2 var_86
  loc_66BE5B: CI4UI1
  loc_66BE5C: FLdZeroAd var_124
  loc_66BE5F: CVarStr var_A0
  loc_66BE62: FLdRfVar var_D0
  loc_66BE65: ImpAdCallFPR4  = Mid(, , )
  loc_66BE6A: FLdRfVar var_D0
  loc_66BE6D: LitVarStr var_E0, "."
  loc_66BE72: HardType
  loc_66BE73: EqVarBool
  loc_66BE75: FFreeAd var_90 = ""
  loc_66BE7C: FFreeVar var_A0 = "": var_B0 = ""
  loc_66BE85: BranchF loc_66BF45
  loc_66BE88: FLdRfVar var_112
  loc_66BE8B: FLdPrThis
  loc_66BE8C: VCallAd Control_ID_lstPreset
  loc_66BE8F: FStAdFunc var_90
  loc_66BE92: FLdPr var_90
  loc_66BE95:  = Me.ListIndex
  loc_66BE9A: FLdRfVar var_124
  loc_66BE9D: FLdI2 var_112
  loc_66BEA0: FLdPrThis
  loc_66BEA1: VCallAd Control_ID_lstPreset
  loc_66BEA4: FStAdFunc var_118
  loc_66BEA7: FLdPr var_118
  loc_66BEAA: from_stack_2 = Me.List(from_stack_1)
  loc_66BEAF: FLdRfVar var_11A
  loc_66BEB2: FLdPrThis
  loc_66BEB3: VCallAd Control_ID_lstPreset
  loc_66BEB6: FStAdFunc var_120
  loc_66BEB9: FLdPr var_120
  loc_66BEBC:  = Me.ListIndex
  loc_66BEC1: FLdRfVar var_130
  loc_66BEC4: FLdI2 var_11A
  loc_66BEC7: FLdPrThis
  loc_66BEC8: VCallAd Control_ID_lstPreset
  loc_66BECB: FStAdFunc var_12C
  loc_66BECE: FLdPr var_12C
  loc_66BED1: from_stack_2 = Me.List(from_stack_1)
  loc_66BED6: LitVarI2 var_B0, 10
  loc_66BEDB: ILdRf var_130
  loc_66BEDE: FnLenStr
  loc_66BEDF: LitI4 &HE
  loc_66BEE4: SubI4
  loc_66BEE5: FLdZeroAd var_124
  loc_66BEE8: CVarStr var_A0
  loc_66BEEB: FLdRfVar var_D0
  loc_66BEEE: ImpAdCallFPR4  = Mid(, , )
  loc_66BEF3: LitI4 1
  loc_66BEF8: LitI4 1
  loc_66BEFD: LitVarStr var_E0, "0000000.00"
  loc_66BF02: FStVarCopyObj var_F0
  loc_66BF05: FLdRfVar var_F0
  loc_66BF08: FLdRfVar var_D0
  loc_66BF0B: ImpAdCallI2 Format$(, )
  loc_66BF10: FStStrNoPop var_134
  loc_66BF13: CR8Str
  loc_66BF15: LitI2_Byte &H64
  loc_66BF17: CR8I2
  loc_66BF18: MulR8
  loc_66BF19: CI4R8
  loc_66BF1A: FStR4 var_8C
  loc_66BF1D: FFreeStr var_130 = ""
  loc_66BF24: FFreeAd var_90 = "": var_118 = "": var_120 = ""
  loc_66BF2F: FFreeVar var_A0 = "": var_B0 = "": var_D0 = ""
  loc_66BF3A: LitI2_Byte 1
  loc_66BF3C: CUI1I2
  loc_66BF3E: FStUI1 var_88
  loc_66BF42: Branch loc_66BF4D
  loc_66BF45: FLdRfVar var_86
  loc_66BF48: NextStepI2 var_128, loc_66BD10
  loc_66BF4D: LitI2_Byte 0
  loc_66BF4F: FLdRfVar var_86
  loc_66BF52: LitI2_Byte 3
  loc_66BF54: ForI2 var_138
  loc_66BF5A: FLdRfVar var_118
  loc_66BF5D: FLdI2 var_86
  loc_66BF60: FLdPrThis
  loc_66BF61: VCallAd Control_ID_BotonPreset
  loc_66BF64: FStAdFunc var_90
  loc_66BF67: FLdPr var_90
  loc_66BF6A: Set from_stack_2 = Me(from_stack_1)
  loc_66BF6F: FLdPr var_118
  loc_66BF72: LateIdLdVar var_A0 DispID_-501 -1
  loc_66BF79: CI4Var
  loc_66BF7B: LitI4 &HFF0000
  loc_66BF80: EqI4
  loc_66BF81: FLdRfVar var_12C
  loc_66BF84: FLdI2 var_86
  loc_66BF87: FLdPrThis
  loc_66BF88: VCallAd Control_ID_BotonPreset
  loc_66BF8B: FStAdFunc var_120
  loc_66BF8E: FLdPr var_120
  loc_66BF91: Set from_stack_2 = Me(from_stack_1)
  loc_66BF96: FLdPr var_12C
  loc_66BF99: LateIdLdVar var_B0 DispID_7 -32767
  loc_66BFA0: CBoolVar
  loc_66BFA2: AndI4
  loc_66BFA3: FFreeAd var_90 = "": var_118 = "": var_120 = ""
  loc_66BFAE: FFreeVar var_A0 = ""
  loc_66BFB5: BranchF loc_66BFCA
  loc_66BFB8: FLdI2 var_86
  loc_66BFBB: LitI2_Byte 1
  loc_66BFBD: AddI2
  loc_66BFBE: CUI1I2
  loc_66BFC0: FLdPr Me
  loc_66BFC3: MemStUI1
  loc_66BFC7: Branch loc_66BFD2
  loc_66BFCA: FLdRfVar var_86
  loc_66BFCD: NextI2 var_138, loc_66BF5A
  loc_66BFD2: FLdRfVar var_112
  loc_66BFD5: FLdPr Me
  loc_66BFD8: MemLdRfVar from_stack_1.presetgrade
  loc_66BFDB: FLdRfVar var_88
  loc_66BFDE: FLdRfVar var_8C
  loc_66BFE1: from_stack_4v = SendPreset(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_66BFE6: FLdI2 var_112
  loc_66BFE9: NotI4
  loc_66BFEA: BranchF loc_66BFEE
  loc_66BFED: ExitProcHresult
  loc_66BFEE: ExitProcHresult
End Sub

Private Sub Nro_Surtidor_Click(arg_C) '62302C
  'Data Table: 45B254
  loc_622EBC: LitI2_Byte 0
  loc_622EBE: FLdPr Me
  loc_622EC1: MemStI2 Prod2
  loc_622EC4: ILdI2 arg_C
  loc_622EC7: LitI2_Byte &H10
  loc_622EC9: GtI2
  loc_622ECA: BranchF loc_622ED2
  loc_622ECD: LitI2_Byte 1
  loc_622ECF: IStI2 arg_C
  loc_622ED2: FLdPr Me
  loc_622ED5: MemLdUI1 Surtidor_Actual
  loc_622ED9: CI2UI1
  loc_622EDB: LitI2_Byte &H10
  loc_622EDD: GtI2
  loc_622EDE: BranchF loc_622F16
  loc_622EE1: LitI4 -2147483633
  loc_622EE6: FLdRfVar var_8C
  loc_622EE9: FLdPr Me
  loc_622EEC: MemLdUI1 Surtidor_Actual
  loc_622EF0: CI2UI1
  loc_622EF2: LitI2_Byte &H10
  loc_622EF4: SubI2
  loc_622EF5: FLdPrThis
  loc_622EF6: VCallAd Control_ID_Nro_Surtidor
  loc_622EF9: FStAdFunc var_88
  loc_622EFC: FLdPr var_88
  loc_622EFF: Set from_stack_2 = Me(from_stack_1)
  loc_622F04: FLdPr var_8C
  loc_622F07: Me.BackColor = from_stack_1
  loc_622F0C: FFreeAd var_88 = ""
  loc_622F13: Branch loc_622F45
  loc_622F16: LitI4 -2147483633
  loc_622F1B: FLdRfVar var_8C
  loc_622F1E: FLdPr Me
  loc_622F21: MemLdUI1 Surtidor_Actual
  loc_622F25: CI2UI1
  loc_622F27: FLdPrThis
  loc_622F28: VCallAd Control_ID_Nro_Surtidor
  loc_622F2B: FStAdFunc var_88
  loc_622F2E: FLdPr var_88
  loc_622F31: Set from_stack_2 = Me(from_stack_1)
  loc_622F36: FLdPr var_8C
  loc_622F39: Me.BackColor = from_stack_1
  loc_622F3E: FFreeAd var_88 = ""
  loc_622F45: ILdI2 arg_C
  loc_622F48: FLdPr Me
  loc_622F4B: MemLdUI1 offset
  loc_622F4F: CI2UI1
  loc_622F51: AddI2
  loc_622F52: CUI1I2
  loc_622F54: FLdPr Me
  loc_622F57: MemStUI1
  loc_622F5B: LitI4 &HFF
  loc_622F60: FLdRfVar var_8C
  loc_622F63: ILdI2 arg_C
  loc_622F66: FLdPrThis
  loc_622F67: VCallAd Control_ID_Nro_Surtidor
  loc_622F6A: FStAdFunc var_88
  loc_622F6D: FLdPr var_88
  loc_622F70: Set from_stack_2 = Me(from_stack_1)
  loc_622F75: FLdPr var_8C
  loc_622F78: Me.BackColor = from_stack_1
  loc_622F7D: FFreeAd var_88 = ""
  loc_622F84: FLdPr Me
  loc_622F87: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_622F8A: Call RefreshDisplayData(from_stack_1v)
  loc_622F8F: FLdPr Me
  loc_622F92: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_622F95: Call RefreshPresetButtons(from_stack_1v)
  loc_622F9A: FLdPr Me
  loc_622F9D: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_622FA0: Call RefreshGeneralData(from_stack_1v)
  loc_622FA5: FLdPr Me
  loc_622FA8: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_622FAB: Call RefreshTankButtons(from_stack_1v)
  loc_622FB0: FLdPr Me
  loc_622FB3: MemLdUI1 Surtidor_Actual
  loc_622FB7: CI2UI1
  loc_622FB9: from_stack_2v = Proc_161_148_5E0588(from_stack_1v)
  loc_622FBE: from_stack_1v = Proc_161_124_5F0A28()
  loc_622FC3: ILdRf arg_C
  loc_622FC6: from_stack_2v = Proc_161_131_5E138C(from_stack_1v)
  loc_622FCB: ILdI2 arg_C
  loc_622FCE: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_622FD3: LitI2_Byte &HFF
  loc_622FD5: EqI2
  loc_622FD6: BranchF loc_623002
  loc_622FD9: LitStr "M3"
  loc_622FDC: FLdRfVar var_8C
  loc_622FDF: LitI2_Byte 0
  loc_622FE1: FLdPrThis
  loc_622FE2: VCallAd Control_ID_Label12
  loc_622FE5: FStAdFunc var_88
  loc_622FE8: FLdPr var_88
  loc_622FEB: Set from_stack_2 = Me(from_stack_1)
  loc_622FF0: FLdPr var_8C
  loc_622FF3: Me.Caption = from_stack_1
  loc_622FF8: FFreeAd var_88 = ""
  loc_622FFF: Branch loc_623028
  loc_623002: LitStr "Total"
  loc_623005: FLdRfVar var_8C
  loc_623008: LitI2_Byte 0
  loc_62300A: FLdPrThis
  loc_62300B: VCallAd Control_ID_Label12
  loc_62300E: FStAdFunc var_88
  loc_623011: FLdPr var_88
  loc_623014: Set from_stack_2 = Me(from_stack_1)
  loc_623019: FLdPr var_8C
  loc_62301C: Me.Caption = from_stack_1
  loc_623021: FFreeAd var_88 = ""
  loc_623028: ExitProcHresult
End Sub

Private Sub Label_Total_Click(arg_C) '5CAC10
  'Data Table: 45B254
  loc_5CAC04: ILdRf arg_C
  loc_5CAC07: Call Nro_Surtidor_Click(from_stack_1v)
  loc_5CAC0C: ExitProcHresult
End Sub

Private Sub Salir_UnknownEvent_8 '5E3680
  'Data Table: 45B254
  loc_5E361C: LitI2_Byte &HFF
  loc_5E361E: FLdPr Me
  loc_5E3621: MemStI2 global_112
  loc_5E3624: LitI2_Byte 0
  loc_5E3626: FLdPrThis
  loc_5E3627: VCallAd Control_ID_Timer1
  loc_5E362A: FStAdFunc var_88
  loc_5E362D: FLdPr var_88
  loc_5E3630: Me.Enabled = from_stack_1b
  loc_5E3635: FFree1Ad var_88
  loc_5E3638: LitStr vbNullString
  loc_5E363B: FLdPr Me
  loc_5E363E: MemStStrCopy
  loc_5E3642: LitStr vbNullString
  loc_5E3645: FLdPr Me
  loc_5E3648: MemStStrCopy
  loc_5E364C: LitI2_Byte 0
  loc_5E364E: FLdPr Me
  loc_5E3651: MemStI2 global_514
  loc_5E3654: ImpAdLdI2 MemVar_74C7C2
  loc_5E3657: NotI4
  loc_5E3658: BranchF loc_5E3673
  loc_5E365B: ILdRf Me
  loc_5E365E: FStAdNoPop
  loc_5E3662: ImpAdLdRf MemVar_7520D4
  loc_5E3665: NewIfNullPr Global
  loc_5E3668: Global.Unload from_stack_1
  loc_5E366D: FFree1Ad var_88
  loc_5E3670: Branch loc_5E367D
  loc_5E3673: LitI2_Byte 0
  loc_5E3675: FLdPr Me
  loc_5E3678: Me.Visible = from_stack_1b
  loc_5E367D: ExitProcHresult
  loc_5E367E: FLdRfVar var_23FE
End Sub

Private Sub Salir_Click(Value As Integer) '5CD6B4
  'Data Table: 45B254
  loc_5CD6A4: LitI2_Byte &HFF
  loc_5CD6A6: ILdI2 arg_10
  loc_5CD6A9: ILdRf Value
  loc_5CD6AC: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD6B1: ExitProcHresult
End Sub

Private Sub Salir_KeyPress(KeyAscii As Integer) '5CD834
  'Data Table: 45B254
  loc_5CD824: LitI2_Byte 0
  loc_5CD826: ILdI2 arg_10
  loc_5CD829: ILdRf KeyAscii
  loc_5CD82C: from_stack_4v = Proc_161_126_5E1790(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5CD831: ExitProcHresult
End Sub

Private Sub BotonPreset_UnknownEvent_8 '604B30
  'Data Table: 45B254
  loc_604A4C: LitI2_Byte 0
  loc_604A4E: CUI1I2
  loc_604A50: FLdRfVar var_86
  loc_604A53: LitI2_Byte 3
  loc_604A55: CUI1I2
  loc_604A57: ForUI1 var_8A
  loc_604A5D: LitVarI4
  loc_604A65: PopAdLdVar
  loc_604A66: FLdRfVar var_94
  loc_604A69: FLdUI1
  loc_604A6D: CI2UI1
  loc_604A6F: FLdPrThis
  loc_604A70: VCallAd Control_ID_BotonPreset
  loc_604A73: FStAdFunc var_90
  loc_604A76: FLdPr var_90
  loc_604A79: Set from_stack_2 = Me(from_stack_1)
  loc_604A7E: FLdPr var_94
  loc_604A81: LateIdSt
  loc_604A86: FFreeAd var_90 = ""
  loc_604A8D: LitVarI4
  loc_604A95: PopAdLdVar
  loc_604A96: FLdRfVar var_94
  loc_604A99: FLdUI1
  loc_604A9D: CI2UI1
  loc_604A9F: FLdPrThis
  loc_604AA0: VCallAd Control_ID_BotonPreset
  loc_604AA3: FStAdFunc var_90
  loc_604AA6: FLdPr var_90
  loc_604AA9: Set from_stack_2 = Me(from_stack_1)
  loc_604AAE: FLdPr var_94
  loc_604AB1: LateIdSt
  loc_604AB6: FFreeAd var_90 = ""
  loc_604ABD: FLdRfVar var_86
  loc_604AC0: NextUI1
  loc_604AC6: ILdI2 KeyAscii
  loc_604AC9: LitI2_Byte 1
  loc_604ACB: AddI2
  loc_604ACC: CUI1I2
  loc_604ACE: FLdPr Me
  loc_604AD1: MemStUI1
  loc_604AD5: LitVarI4
  loc_604ADD: PopAdLdVar
  loc_604ADE: FLdRfVar var_94
  loc_604AE1: ILdI2 KeyAscii
  loc_604AE4: FLdPrThis
  loc_604AE5: VCallAd Control_ID_BotonPreset
  loc_604AE8: FStAdFunc var_90
  loc_604AEB: FLdPr var_90
  loc_604AEE: Set from_stack_2 = Me(from_stack_1)
  loc_604AF3: FLdPr var_94
  loc_604AF6: LateIdSt
  loc_604AFB: FFreeAd var_90 = ""
  loc_604B02: LitVarI4
  loc_604B0A: PopAdLdVar
  loc_604B0B: FLdRfVar var_94
  loc_604B0E: ILdI2 KeyAscii
  loc_604B11: FLdPrThis
  loc_604B12: VCallAd Control_ID_BotonPreset
  loc_604B15: FStAdFunc var_90
  loc_604B18: FLdPr var_90
  loc_604B1B: Set from_stack_2 = Me(from_stack_1)
  loc_604B20: FLdPr var_94
  loc_604B23: LateIdSt
  loc_604B28: FFreeAd var_90 = ""
  loc_604B2F: ExitProcHresult
End Sub

Private Sub BotonTanque_UnknownEvent_8 '63F304
  'Data Table: 45B254
  loc_63F0B4: LitI2_Byte 0
  loc_63F0B6: CUI1I2
  loc_63F0B8: FLdRfVar var_86
  loc_63F0BB: LitI2_Byte 3
  loc_63F0BD: CUI1I2
  loc_63F0BF: ForUI1 var_8A
  loc_63F0C5: LitVarI4
  loc_63F0CD: PopAdLdVar
  loc_63F0CE: FLdRfVar var_94
  loc_63F0D1: FLdUI1
  loc_63F0D5: CI2UI1
  loc_63F0D7: FLdPrThis
  loc_63F0D8: VCallAd Control_ID_BotonTanque
  loc_63F0DB: FStAdFunc var_90
  loc_63F0DE: FLdPr var_90
  loc_63F0E1: Set from_stack_2 = Me(from_stack_1)
  loc_63F0E6: FLdPr var_94
  loc_63F0E9: LateIdSt
  loc_63F0EE: FFreeAd var_90 = ""
  loc_63F0F5: LitVarI4
  loc_63F0FD: PopAdLdVar
  loc_63F0FE: FLdRfVar var_94
  loc_63F101: FLdUI1
  loc_63F105: CI2UI1
  loc_63F107: FLdPrThis
  loc_63F108: VCallAd Control_ID_BotonTanque
  loc_63F10B: FStAdFunc var_90
  loc_63F10E: FLdPr var_90
  loc_63F111: Set from_stack_2 = Me(from_stack_1)
  loc_63F116: FLdPr var_94
  loc_63F119: LateIdSt
  loc_63F11E: FFreeAd var_90 = ""
  loc_63F125: FLdRfVar var_86
  loc_63F128: NextUI1
  loc_63F12E: ILdI2 KeyAscii
  loc_63F131: LitI2_Byte 1
  loc_63F133: AddI2
  loc_63F134: CUI1I2
  loc_63F136: FLdPr Me
  loc_63F139: MemStUI1
  loc_63F13D: LitVarI4
  loc_63F145: PopAdLdVar
  loc_63F146: FLdRfVar var_94
  loc_63F149: ILdI2 KeyAscii
  loc_63F14C: FLdPrThis
  loc_63F14D: VCallAd Control_ID_BotonTanque
  loc_63F150: FStAdFunc var_90
  loc_63F153: FLdPr var_90
  loc_63F156: Set from_stack_2 = Me(from_stack_1)
  loc_63F15B: FLdPr var_94
  loc_63F15E: LateIdSt
  loc_63F163: FFreeAd var_90 = ""
  loc_63F16A: LitVarI4
  loc_63F172: PopAdLdVar
  loc_63F173: FLdRfVar var_94
  loc_63F176: ILdI2 KeyAscii
  loc_63F179: FLdPrThis
  loc_63F17A: VCallAd Control_ID_BotonTanque
  loc_63F17D: FStAdFunc var_90
  loc_63F180: FLdPr var_90
  loc_63F183: Set from_stack_2 = Me(from_stack_1)
  loc_63F188: FLdPr var_94
  loc_63F18B: LateIdSt
  loc_63F190: FFreeAd var_90 = ""
  loc_63F197: ILdI2 KeyAscii
  loc_63F19A: CUI1I2
  loc_63F19C: FLdPr Me
  loc_63F19F: MemStUI1
  loc_63F1A3: FLdRfVar var_A6
  loc_63F1A6: FLdPr Me
  loc_63F1A9: MemLdUI1 Surtidor_Actual
  loc_63F1AD: CI4UI1
  loc_63F1AE: FLdPr Me
  loc_63F1B1: MemLdUI1 global_184
  loc_63F1B5: CI4UI1
  loc_63F1B6: ImpAdLdRf MemVar_74C12C
  loc_63F1B9: AryLdPr
  loc_63F1BC: MemLdUI1 global_0
  loc_63F1C0: CI2UI1
  loc_63F1C2: ImpAdLdRf MemVar_74A220
  loc_63F1C5: NewIfNullPr clsProducts
  loc_63F1C8:  = clsProducts.Name
  loc_63F1CD: FLdI2 var_A6
  loc_63F1D0: LitI2_Byte 6
  loc_63F1D2: GtI2
  loc_63F1D3: BranchF loc_63F259
  loc_63F1D6: LitI2_Byte 0
  loc_63F1D8: FLdPrThis
  loc_63F1D9: VCallAd Control_ID_Image1
  loc_63F1DC: FStAdFunc var_90
  loc_63F1DF: FLdPr var_90
  loc_63F1E2: Me.Visible = from_stack_1b
  loc_63F1E7: FFree1Ad var_90
  loc_63F1EA: LitI2_Byte &HFF
  loc_63F1EC: FLdPrThis
  loc_63F1ED: VCallAd Control_ID_Image4
  loc_63F1F0: FStAdFunc var_90
  loc_63F1F3: FLdPr var_90
  loc_63F1F6: Me.Visible = from_stack_1b
  loc_63F1FB: FFree1Ad var_90
  loc_63F1FE: LitI2_Byte &HFF
  loc_63F200: FLdPrThis
  loc_63F201: VCallAd Control_ID_prod1_mezcla
  loc_63F204: FStAdFunc var_90
  loc_63F207: FLdPr var_90
  loc_63F20A: Me.Visible = from_stack_1b
  loc_63F20F: FFree1Ad var_90
  loc_63F212: LitI2_Byte &HFF
  loc_63F214: FLdPrThis
  loc_63F215: VCallAd Control_ID_prod2_mezcla
  loc_63F218: FStAdFunc var_90
  loc_63F21B: FLdPr var_90
  loc_63F21E: Me.Visible = from_stack_1b
  loc_63F223: FFree1Ad var_90
  loc_63F226: LitI2_Byte &HFF
  loc_63F228: FLdPrThis
  loc_63F229: VCallAd Control_ID_Line3
  loc_63F22C: FStAdFunc var_90
  loc_63F22F: FLdPr var_90
  loc_63F232: Me.Visible = from_stack_1b
  loc_63F237: FFree1Ad var_90
  loc_63F23A: LitI2_Byte 0
  loc_63F23C: FLdPrThis
  loc_63F23D: VCallAd Control_ID_Line2
  loc_63F240: FStAdFunc var_90
  loc_63F243: FLdPr var_90
  loc_63F246: Me.Visible = from_stack_1b
  loc_63F24B: FFree1Ad var_90
  loc_63F24E: LitI2_Byte &HFF
  loc_63F250: FLdPr Me
  loc_63F253: MemStI2 Prod2
  loc_63F256: Branch loc_63F2ED
  loc_63F259: LitI2_Byte &HFF
  loc_63F25B: FLdPrThis
  loc_63F25C: VCallAd Control_ID_Image1
  loc_63F25F: FStAdFunc var_90
  loc_63F262: FLdPr var_90
  loc_63F265: Me.Visible = from_stack_1b
  loc_63F26A: FFree1Ad var_90
  loc_63F26D: LitI2_Byte 0
  loc_63F26F: FLdPrThis
  loc_63F270: VCallAd Control_ID_Image4
  loc_63F273: FStAdFunc var_90
  loc_63F276: FLdPr var_90
  loc_63F279: Me.Visible = from_stack_1b
  loc_63F27E: FFree1Ad var_90
  loc_63F281: LitI2_Byte 0
  loc_63F283: FLdPrThis
  loc_63F284: VCallAd Control_ID_prod1_mezcla
  loc_63F287: FStAdFunc var_90
  loc_63F28A: FLdPr var_90
  loc_63F28D: Me.Visible = from_stack_1b
  loc_63F292: FFree1Ad var_90
  loc_63F295: LitI2_Byte 0
  loc_63F297: FLdPrThis
  loc_63F298: VCallAd Control_ID_prod1_mezcla
  loc_63F29B: FStAdFunc var_90
  loc_63F29E: FLdPr var_90
  loc_63F2A1: Me.Visible = from_stack_1b
  loc_63F2A6: FFree1Ad var_90
  loc_63F2A9: LitI2_Byte 0
  loc_63F2AB: FLdPrThis
  loc_63F2AC: VCallAd Control_ID_prod2_mezcla
  loc_63F2AF: FStAdFunc var_90
  loc_63F2B2: FLdPr var_90
  loc_63F2B5: Me.Visible = from_stack_1b
  loc_63F2BA: FFree1Ad var_90
  loc_63F2BD: LitI2_Byte 0
  loc_63F2BF: FLdPrThis
  loc_63F2C0: VCallAd Control_ID_Line3
  loc_63F2C3: FStAdFunc var_90
  loc_63F2C6: FLdPr var_90
  loc_63F2C9: Me.Visible = from_stack_1b
  loc_63F2CE: FFree1Ad var_90
  loc_63F2D1: LitI2_Byte 0
  loc_63F2D3: FLdPrThis
  loc_63F2D4: VCallAd Control_ID_Line2
  loc_63F2D7: FStAdFunc var_90
  loc_63F2DA: FLdPr var_90
  loc_63F2DD: Me.Visible = from_stack_1b
  loc_63F2E2: FFree1Ad var_90
  loc_63F2E5: LitI2_Byte 0
  loc_63F2E7: FLdPr Me
  loc_63F2EA: MemStI2 Prod2
  loc_63F2ED: FLdPr Me
  loc_63F2F0: MemLdRfVar from_stack_1.global_184
  loc_63F2F3: FLdPr Me
  loc_63F2F6: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_63F2F9: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_63F2FE: ImpAdCallFPR4 Proc_167_11_632680()
  loc_63F303: ExitProcHresult
End Sub

Private Sub VolumenGrid_Click(arg_C) '619EF4
  'Data Table: 45B254
  loc_619DC0: LitI2_Byte 0
  loc_619DC2: FLdPr Me
  loc_619DC5: MemStI2 esPagarVenta
  loc_619DC8: LitStr "ConVolTicket"
  loc_619DCB: FStStrCopy var_88
  loc_619DCE: FLdRfVar var_88
  loc_619DD1: ImpAdCallI2 Proc_158_2_607130()
  loc_619DD6: FLdRfVar var_94
  loc_619DD9: FLdRfVar var_90
  loc_619DDC: ILdI2 arg_C
  loc_619DDF: FLdPrThis
  loc_619DE0: VCallAd Control_ID_VolumenGrid
  loc_619DE3: FStAdFunc var_8C
  loc_619DE6: FLdPr var_8C
  loc_619DE9: Set from_stack_2 = Me(from_stack_1)
  loc_619DEE: FLdPr var_90
  loc_619DF1:  = Me.Caption
  loc_619DF6: ILdRf var_94
  loc_619DF9: LitStr vbNullString
  loc_619DFC: NeStr
  loc_619DFE: AndI4
  loc_619DFF: FFreeStr var_88 = ""
  loc_619E06: FFreeAd var_8C = ""
  loc_619E0D: BranchF loc_619E66
  loc_619E10: FLdRfVar var_88
  loc_619E13: FLdRfVar var_90
  loc_619E16: ILdI2 arg_C
  loc_619E19: FLdPrThis
  loc_619E1A: VCallAd Control_ID_ProductoGrid
  loc_619E1D: FStAdFunc var_8C
  loc_619E20: FLdPr var_8C
  loc_619E23: Set from_stack_2 = Me(from_stack_1)
  loc_619E28: FLdPr var_90
  loc_619E2B:  = Me.Tag
  loc_619E30: ILdRf var_88
  loc_619E33: FLdPr Me
  loc_619E36: MemStStrCopy
  loc_619E3A: FFree1Str var_88
  loc_619E3D: FFreeAd var_8C = ""
  loc_619E44: LitStr vbNullString
  loc_619E47: FLdPr Me
  loc_619E4A: MemStStrCopy
  loc_619E4E: LitVar_Missing var_B4
  loc_619E51: PopAdLdVar
  loc_619E52: LitVarI2 var_A4, 1
  loc_619E57: PopAdLdVar
  loc_619E58: ImpAdLdRf MemVar_74E3B8
  loc_619E5B: NewIfNullPr FrmVenTicketPago
  loc_619E5E: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_619E63: Branch loc_619E6E
  loc_619E66: LitI2_Byte &HFF
  loc_619E68: FLdPr Me
  loc_619E6B: MemStI2 esPagarVenta
  loc_619E6E: FLdPr Me
  loc_619E71: MemLdI2 esPagarVenta
  loc_619E74: BranchF loc_619EF0
  loc_619E77: ImpAdLdUI1
  loc_619E7B: CI2UI1
  loc_619E7D: LitI2_Byte 1
  loc_619E7F: EqI2
  loc_619E80: FLdRfVar var_88
  loc_619E83: FLdRfVar var_90
  loc_619E86: ILdI2 arg_C
  loc_619E89: FLdPrThis
  loc_619E8A: VCallAd Control_ID_ProductoGrid
  loc_619E8D: FStAdFunc var_8C
  loc_619E90: FLdPr var_8C
  loc_619E93: Set from_stack_2 = Me(from_stack_1)
  loc_619E98: FLdPr var_90
  loc_619E9B:  = Me.Caption
  loc_619EA0: ILdRf var_88
  loc_619EA3: LitStr vbNullString
  loc_619EA6: NeStr
  loc_619EA8: AndI4
  loc_619EA9: FFree1Str var_88
  loc_619EAC: FFreeAd var_8C = ""
  loc_619EB3: BranchF loc_619EC5
  loc_619EB6: LitI2_Byte &H6B
  loc_619EB8: PopTmpLdAd2 var_B6
  loc_619EBB: ImpAdCallI2 Proc_94_7_603DD0()
  loc_619EC0: NotI4
  loc_619EC1: BranchF loc_619EC5
  loc_619EC4: ExitProcHresult
  loc_619EC5: FLdRfVar var_B6
  loc_619EC8: ImpAdLdRf MemVar_74C6D8
  loc_619ECB: NewIfNullPr CCEMLicence
  loc_619ECE:  = CCEMLicence.Caption
  loc_619ED3: FLdI2 var_B6
  loc_619ED6: BranchF loc_619EDA
  loc_619ED9: ExitProcHresult
  loc_619EDA: LitI2_Byte 0
  loc_619EDC: PopTmpLdAd2 var_B8
  loc_619EDF: ILdI2 arg_C
  loc_619EE2: LitI2_Byte 1
  loc_619EE4: AddI2
  loc_619EE5: CUI1I2
  loc_619EE7: PopTmpLdAd1
  loc_619EEB: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_619EF0: ExitProcHresult
End Sub

Private Sub ImagenGrid_Click(Index As Integer) '61A1DC
  'Data Table: 45B254
  loc_61A0A8: LitI2_Byte 0
  loc_61A0AA: FLdPr Me
  loc_61A0AD: MemStI2 esPagarVenta
  loc_61A0B0: LitStr "ConVolTicket"
  loc_61A0B3: FStStrCopy var_88
  loc_61A0B6: FLdRfVar var_88
  loc_61A0B9: ImpAdCallI2 Proc_158_2_607130()
  loc_61A0BE: FLdRfVar var_94
  loc_61A0C1: FLdRfVar var_90
  loc_61A0C4: ILdI2 Index
  loc_61A0C7: FLdPrThis
  loc_61A0C8: VCallAd Control_ID_ProductoGrid
  loc_61A0CB: FStAdFunc var_8C
  loc_61A0CE: FLdPr var_8C
  loc_61A0D1: Set from_stack_2 = Me(from_stack_1)
  loc_61A0D6: FLdPr var_90
  loc_61A0D9:  = Me.Caption
  loc_61A0DE: ILdRf var_94
  loc_61A0E1: LitStr vbNullString
  loc_61A0E4: NeStr
  loc_61A0E6: AndI4
  loc_61A0E7: FFreeStr var_88 = ""
  loc_61A0EE: FFreeAd var_8C = ""
  loc_61A0F5: BranchF loc_61A14E
  loc_61A0F8: FLdRfVar var_88
  loc_61A0FB: FLdRfVar var_90
  loc_61A0FE: ILdI2 Index
  loc_61A101: FLdPrThis
  loc_61A102: VCallAd Control_ID_ProductoGrid
  loc_61A105: FStAdFunc var_8C
  loc_61A108: FLdPr var_8C
  loc_61A10B: Set from_stack_2 = Me(from_stack_1)
  loc_61A110: FLdPr var_90
  loc_61A113:  = Me.Tag
  loc_61A118: ILdRf var_88
  loc_61A11B: FLdPr Me
  loc_61A11E: MemStStrCopy
  loc_61A122: FFree1Str var_88
  loc_61A125: FFreeAd var_8C = ""
  loc_61A12C: LitStr vbNullString
  loc_61A12F: FLdPr Me
  loc_61A132: MemStStrCopy
  loc_61A136: LitVar_Missing var_B4
  loc_61A139: PopAdLdVar
  loc_61A13A: LitVarI2 var_A4, 1
  loc_61A13F: PopAdLdVar
  loc_61A140: ImpAdLdRf MemVar_74E3B8
  loc_61A143: NewIfNullPr FrmVenTicketPago
  loc_61A146: FrmVenTicketPago.Show from_stack_1, from_stack_2
  loc_61A14B: Branch loc_61A156
  loc_61A14E: LitI2_Byte &HFF
  loc_61A150: FLdPr Me
  loc_61A153: MemStI2 esPagarVenta
  loc_61A156: FLdPr Me
  loc_61A159: MemLdI2 esPagarVenta
  loc_61A15C: BranchF loc_61A1D8
  loc_61A15F: ImpAdLdUI1
  loc_61A163: CI2UI1
  loc_61A165: LitI2_Byte 1
  loc_61A167: EqI2
  loc_61A168: FLdRfVar var_88
  loc_61A16B: FLdRfVar var_90
  loc_61A16E: ILdI2 Index
  loc_61A171: FLdPrThis
  loc_61A172: VCallAd Control_ID_ProductoGrid
  loc_61A175: FStAdFunc var_8C
  loc_61A178: FLdPr var_8C
  loc_61A17B: Set from_stack_2 = Me(from_stack_1)
  loc_61A180: FLdPr var_90
  loc_61A183:  = Me.Caption
  loc_61A188: ILdRf var_88
  loc_61A18B: LitStr vbNullString
  loc_61A18E: NeStr
  loc_61A190: AndI4
  loc_61A191: FFree1Str var_88
  loc_61A194: FFreeAd var_8C = ""
  loc_61A19B: BranchF loc_61A1AD
  loc_61A19E: LitI2_Byte &H6B
  loc_61A1A0: PopTmpLdAd2 var_B6
  loc_61A1A3: ImpAdCallI2 Proc_94_7_603DD0()
  loc_61A1A8: NotI4
  loc_61A1A9: BranchF loc_61A1AD
  loc_61A1AC: ExitProcHresult
  loc_61A1AD: FLdRfVar var_B6
  loc_61A1B0: ImpAdLdRf MemVar_74C6D8
  loc_61A1B3: NewIfNullPr CCEMLicence
  loc_61A1B6:  = CCEMLicence.Caption
  loc_61A1BB: FLdI2 var_B6
  loc_61A1BE: BranchF loc_61A1C2
  loc_61A1C1: ExitProcHresult
  loc_61A1C2: LitI2_Byte 0
  loc_61A1C4: PopTmpLdAd2 var_B8
  loc_61A1C7: ILdI2 Index
  loc_61A1CA: LitI2_Byte 1
  loc_61A1CC: AddI2
  loc_61A1CD: CUI1I2
  loc_61A1CF: PopTmpLdAd1
  loc_61A1D3: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_61A1D8: ExitProcHresult
  loc_61A1D9: IStI2 arg_220
End Sub

Private Sub Timer1_Timer() '5DD48C
  'Data Table: 45B254
  loc_5DD43C: ImpAdLdI2 MemVar_74C7C2
  loc_5DD43F: ImpAdLdI4 MemVar_74C7C4
  loc_5DD442: LitI4 0
  loc_5DD447: EqI4
  loc_5DD448: AndI4
  loc_5DD449: BranchF loc_5DD44D
  loc_5DD44C: ExitProcHresult
  loc_5DD44D: ImpAdLdI2 MemVar_74C7C2
  loc_5DD450: BranchF loc_5DD483
  loc_5DD453: FLdPr Me
  loc_5DD456: MemLdI2 global_202
  loc_5DD459: CI4UI1
  loc_5DD45A: ImpAdLdI4 MemVar_74C7C4
  loc_5DD45D: EqI4
  loc_5DD45E: BranchF loc_5DD471
  loc_5DD461: LitI2_Byte 1
  loc_5DD463: FLdPr Me
  loc_5DD466: MemStI2 global_202
  loc_5DD469: from_stack_2v = Proc_161_134_70607C(from_stack_1v)
  loc_5DD46E: Branch loc_5DD480
  loc_5DD471: FLdPr Me
  loc_5DD474: MemLdI2 global_202
  loc_5DD477: LitI2_Byte 1
  loc_5DD479: AddI2
  loc_5DD47A: FLdPr Me
  loc_5DD47D: MemStI2 global_202
  loc_5DD480: Branch loc_5DD488
  loc_5DD483: from_stack_2v = Proc_161_134_70607C(from_stack_1v)
  loc_5DD488: ExitProcHresult
  loc_5DD489: FLdRfVar var_C8
End Sub

Public Function Surtidor_ActualGet() '45FC6C
  Surtidor_ActualGet = Surtidor_Actual
End Function

Public Sub Surtidor_ActualPut(Value) '45FC7B
  Surtidor_Actual = Value
End Sub

Public Function offsetGet() '45FC8A
  offsetGet = offset
End Function

Public Sub offsetPut(Value) '45FC99
  offset = Value
End Sub

Public Function sAutorizadosCTFGet() '45FCA8
  sAutorizadosCTFGet = sAutorizadosCTF
End Function

Public Sub sAutorizadosCTFPut(Value) '45FCB7
  sAutorizadosCTF = Value
End Sub

Public Function presetgradeGet() '45FCC6
  presetgradeGet = presetgrade
End Function

Public Sub presetgradePut(Value) '45FCD5
  presetgrade = Value
End Sub

Public Function Prod2Get() '45FCE4
  Prod2Get = Prod2
End Function

Public Sub Prod2Put(Value) '45FCF3
  Prod2 = Value
End Sub

Public Function PumpNumBKGet() '45FD02
  PumpNumBKGet = PumpNumBK
End Function

Public Sub PumpNumBKPut(Value) '45FD11
  PumpNumBK = Value
End Sub

Public Function PlayNameGet() '45FD20
  PlayNameGet = PlayName
End Function

Public Sub PlayNamePut(Value) '45FD2F
  PlayName = Value
End Sub

Public Function Load_Console_SpainGet() '45FD3E
  Load_Console_SpainGet = Load_Console_Spain
End Function

Public Sub Load_Console_SpainPut(Value) '45FD4D
  Load_Console_Spain = Value
End Sub

Public Function esPagarVentaGet() '45FD70
  esPagarVentaGet = esPagarVenta
End Function

Public Sub esPagarVentaPut(Value) '45FD7F
  esPagarVenta = Value
End Sub

Public Function sID_Venta_CEMGet() '45FD8E
  sID_Venta_CEMGet = sID_Venta_CEM
End Function

Public Sub sID_Venta_CEMPut(Value) '45FD9D
  sID_Venta_CEM = Value
End Sub

Public Function sID_Turno_CEMGet() '45FDAC
  sID_Turno_CEMGet = sID_Turno_CEM
End Function

Public Sub sID_Turno_CEMPut(Value) '45FDBB
  sID_Turno_CEM = Value
End Sub

Public Function KeyHandler(KeyCode, Shift) '6B6870
  'Data Table: 45B254
  loc_6B605C: LitI2_Byte 0
  loc_6B605E: FLdPrThis
  loc_6B605F: VCallAd Control_ID_Timer1
  loc_6B6062: FStAdFunc var_90
  loc_6B6065: FLdPr var_90
  loc_6B6068: Me.Enabled = from_stack_1b
  loc_6B606D: FFree1Ad var_90
  loc_6B6070: LitI2_Byte &HFF
  loc_6B6072: FStI2 var_86
  loc_6B6075: ILdI2 KeyCode
  loc_6B6078: FStI2 var_92
  loc_6B607B: FLdI2 var_92
  loc_6B607E: LitI4 &H44
  loc_6B6083: CI2I4
  loc_6B6084: EqI2
  loc_6B6085: BranchF loc_6B60B0
  loc_6B6088: LitVar_Missing var_B4
  loc_6B608B: PopAdLdVar
  loc_6B608C: LitVarI2 var_A4, 1
  loc_6B6091: PopAdLdVar
  loc_6B6092: ImpAdLdRf MemVar_74DB04
  loc_6B6095: NewIfNullPr TDesautorizacion
  loc_6B6098: TDesautorizacion.Show from_stack_1, from_stack_2
  loc_6B609D: LitI2_Byte &HFF
  loc_6B609F: PopTmpLdAd2 var_B6
  loc_6B60A2: FLdPr Me
  loc_6B60A5: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6B60A8: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_6B60AD: Branch loc_6B684C
  loc_6B60B0: FLdI2 var_92
  loc_6B60B3: LitI4 &H60
  loc_6B60B8: CI2I4
  loc_6B60B9: LitI4 &H69
  loc_6B60BE: CI2I4
  loc_6B60BF: BetweenI2
  loc_6B60C1: BranchF loc_6B6139
  loc_6B60C4: FLdPrThis
  loc_6B60C5: VCallAd Control_ID_Preset
  loc_6B60C8: FStAdFunc var_90
  loc_6B60CB: FLdPr var_90
  loc_6B60CE: LateIdLdVar var_CC DispID_7 -32767
  loc_6B60D5: CBoolVar
  loc_6B60D7: FFree1Ad var_90
  loc_6B60DA: FFree1Var var_CC = ""
  loc_6B60DD: BranchF loc_6B60F3
  loc_6B60E0: ILdI2 KeyCode
  loc_6B60E3: CI4UI1
  loc_6B60E4: LitI4 &H60
  loc_6B60E9: SubI4
  loc_6B60EA: CI2I4
  loc_6B60EB: PopTmpLdAd2 var_B6
  loc_6B60EE: Call Teclas_UnknownEvent_8()
  loc_6B60F3: FLdPrThis
  loc_6B60F4: VCallAd Control_ID_Ventas
  loc_6B60F7: FStAdFunc var_90
  loc_6B60FA: FLdPr var_90
  loc_6B60FD: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6104: CBoolVar
  loc_6B6106: LitI2_Byte &HFF
  loc_6B6108: EqI2
  loc_6B6109: FFree1Ad var_90
  loc_6B610C: FFree1Var var_CC = ""
  loc_6B610F: BranchF loc_6B6136
  loc_6B6112: ILdI2 Shift
  loc_6B6115: LitI2_Byte 2
  loc_6B6117: EqI2
  loc_6B6118: PopTmpLdAd2 var_CE
  loc_6B611B: ILdI2 KeyCode
  loc_6B611E: CI4UI1
  loc_6B611F: LitI4 &H60
  loc_6B6124: SubI4
  loc_6B6125: LitI4 1
  loc_6B612A: AddI4
  loc_6B612B: CUI1I4
  loc_6B612D: PopTmpLdAd1
  loc_6B6131: from_stack_3v = Proc_161_144_6CC668(from_stack_1v, from_stack_2v)
  loc_6B6136: Branch loc_6B684C
  loc_6B6139: FLdI2 var_92
  loc_6B613C: LitI4 &H6E
  loc_6B6141: CI2I4
  loc_6B6142: EqI2
  loc_6B6143: BranchF loc_6B616A
  loc_6B6146: FLdPrThis
  loc_6B6147: VCallAd Control_ID_Preset
  loc_6B614A: FStAdFunc var_90
  loc_6B614D: FLdPr var_90
  loc_6B6150: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6157: CBoolVar
  loc_6B6159: FFree1Ad var_90
  loc_6B615C: FFree1Var var_CC = ""
  loc_6B615F: BranchF loc_6B6167
  loc_6B6162: Call Punto_UnknownEvent_8()
  loc_6B6167: Branch loc_6B684C
  loc_6B616A: FLdI2 var_92
  loc_6B616D: LitI4 &H54
  loc_6B6172: ILdI2 Shift
  loc_6B6175: CI4UI1
  loc_6B6176: LitI4 4
  loc_6B617B: EqI4
  loc_6B617C: CI4UI1
  loc_6B617D: AndI4
  loc_6B617E: CI2I4
  loc_6B617F: EqI2
  loc_6B6180: BranchF loc_6B61A7
  loc_6B6183: FLdPrThis
  loc_6B6184: VCallAd Control_ID_Preset
  loc_6B6187: FStAdFunc var_90
  loc_6B618A: FLdPr var_90
  loc_6B618D: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6194: CBoolVar
  loc_6B6196: FFree1Ad var_90
  loc_6B6199: FFree1Var var_CC = ""
  loc_6B619C: BranchF loc_6B61A4
  loc_6B619F: from_stack_1v = Proc_161_132_67F7DC()
  loc_6B61A4: Branch loc_6B684C
  loc_6B61A7: FLdI2 var_92
  loc_6B61AA: LitI4 &H70
  loc_6B61AF: CI2I4
  loc_6B61B0: LitI4 &H7B
  loc_6B61B5: CI2I4
  loc_6B61B6: BetweenI2
  loc_6B61B8: BranchF loc_6B627E
  loc_6B61BB: ILdI2 KeyCode
  loc_6B61BE: CI4UI1
  loc_6B61BF: LitI4 &H70
  loc_6B61C4: SubI4
  loc_6B61C5: LitI4 1
  loc_6B61CA: AddI4
  loc_6B61CB: CI2I4
  loc_6B61CC: FStI2 var_88
  loc_6B61CF: ILdI2 Shift
  loc_6B61D2: LitI2_Byte 1
  loc_6B61D4: EqI2
  loc_6B61D5: BranchF loc_6B61E4
  loc_6B61D8: FLdI2 var_88
  loc_6B61DB: LitI2_Byte &HA
  loc_6B61DD: AddI2
  loc_6B61DE: FStI2 var_88
  loc_6B61E1: Branch loc_6B621C
  loc_6B61E4: ILdI2 Shift
  loc_6B61E7: LitI2_Byte 2
  loc_6B61E9: EqI2
  loc_6B61EA: BranchF loc_6B61F9
  loc_6B61ED: FLdI2 var_88
  loc_6B61F0: LitI2_Byte &H14
  loc_6B61F2: AddI2
  loc_6B61F3: FStI2 var_88
  loc_6B61F6: Branch loc_6B621C
  loc_6B61F9: ILdI2 Shift
  loc_6B61FC: LitI2_Byte 0
  loc_6B61FE: NeI2
  loc_6B61FF: BranchF loc_6B621C
  loc_6B6202: LitI2_Byte &HFF
  loc_6B6204: FLdPrThis
  loc_6B6205: VCallAd Control_ID_Timer1
  loc_6B6208: FStAdFunc var_90
  loc_6B620B: FLdPr var_90
  loc_6B620E: Me.Enabled = from_stack_1b
  loc_6B6213: FFree1Ad var_90
  loc_6B6216: ExitProcCbHresult
  loc_6B621C: FLdI2 var_88
  loc_6B621F: ImpAdLdUI1
  loc_6B6223: CI2UI1
  loc_6B6225: LeI2
  loc_6B6226: FLdI2 var_88
  loc_6B6229: FLdPr Me
  loc_6B622C: MemLdUI1 Surtidor_Actual
  loc_6B6230: CI2UI1
  loc_6B6232: NeI2
  loc_6B6233: AndI4
  loc_6B6234: BranchF loc_6B627B
  loc_6B6237: FLdPr Me
  loc_6B623A: MemLdUI1 Surtidor_Actual
  loc_6B623E: CI2UI1
  loc_6B6240: LitI2_Byte &H10
  loc_6B6242: GtI2
  loc_6B6243: FLdI2 var_88
  loc_6B6246: LitI2_Byte &H10
  loc_6B6248: LeI2
  loc_6B6249: AndI4
  loc_6B624A: FLdPr Me
  loc_6B624D: MemLdUI1 Surtidor_Actual
  loc_6B6251: CI2UI1
  loc_6B6253: LitI2_Byte &H10
  loc_6B6255: LeI2
  loc_6B6256: FLdI2 var_88
  loc_6B6259: LitI2_Byte &H11
  loc_6B625B: GeI2
  loc_6B625C: AndI4
  loc_6B625D: OrI4
  loc_6B625E: BranchF loc_6B6266
  loc_6B6261: Call SSCommand3_UnknownEvent_8()
  loc_6B6266: FLdI2 var_88
  loc_6B6269: FLdPr Me
  loc_6B626C: MemLdUI1 offset
  loc_6B6270: CI2UI1
  loc_6B6272: SubI2
  loc_6B6273: PopTmpLdAd2 var_B6
  loc_6B6276: Call Nro_Surtidor_Click(from_stack_1v)
  loc_6B627B: Branch loc_6B684C
  loc_6B627E: FLdI2 var_92
  loc_6B6281: LitI4 &H6D
  loc_6B6286: CI2I4
  loc_6B6287: EqI2
  loc_6B6288: BranchF loc_6B62E5
  loc_6B628B: FLdPr Me
  loc_6B628E: MemLdUI1 Surtidor_Actual
  loc_6B6292: CI2UI1
  loc_6B6294: LitI2_Byte 1
  loc_6B6296: EqI2
  loc_6B6297: BranchF loc_6B62AB
  loc_6B629A: ImpAdLdUI1
  loc_6B629E: CI2UI1
  loc_6B62A0: FStI2 var_88
  loc_6B62A3: Call SSCommand3_UnknownEvent_8()
  loc_6B62A8: Branch loc_6B62BA
  loc_6B62AB: FLdPr Me
  loc_6B62AE: MemLdUI1 Surtidor_Actual
  loc_6B62B2: CI2UI1
  loc_6B62B4: LitI2_Byte 1
  loc_6B62B6: SubI2
  loc_6B62B7: FStI2 var_88
  loc_6B62BA: FLdI2 var_88
  loc_6B62BD: LitI2_Byte &H10
  loc_6B62BF: EqI2
  loc_6B62C0: BranchF loc_6B62C8
  loc_6B62C3: Call SSCommand3_UnknownEvent_8()
  loc_6B62C8: FLdI2 var_88
  loc_6B62CB: FLdPr Me
  loc_6B62CE: MemLdUI1 offset
  loc_6B62D2: CI2UI1
  loc_6B62D4: SubI2
  loc_6B62D5: PopTmpLdAd2 var_B6
  loc_6B62D8: Call Nro_Surtidor_Click(from_stack_1v)
  loc_6B62DD: LitI2_Byte 0
  loc_6B62DF: IStI2 KeyCode
  loc_6B62E2: Branch loc_6B684C
  loc_6B62E5: FLdI2 var_92
  loc_6B62E8: LitI4 &H6B
  loc_6B62ED: CI2I4
  loc_6B62EE: EqI2
  loc_6B62EF: BranchF loc_6B6348
  loc_6B62F2: FLdPr Me
  loc_6B62F5: MemLdUI1 Surtidor_Actual
  loc_6B62F9: ImpAdLdUI1
  loc_6B62FD: EqI2
  loc_6B62FE: BranchF loc_6B630E
  loc_6B6301: LitI2_Byte 1
  loc_6B6303: FStI2 var_88
  loc_6B6306: Call SSCommand3_UnknownEvent_8()
  loc_6B630B: Branch loc_6B631D
  loc_6B630E: FLdPr Me
  loc_6B6311: MemLdUI1 Surtidor_Actual
  loc_6B6315: CI2UI1
  loc_6B6317: LitI2_Byte 1
  loc_6B6319: AddI2
  loc_6B631A: FStI2 var_88
  loc_6B631D: FLdI2 var_88
  loc_6B6320: LitI2_Byte &H11
  loc_6B6322: EqI2
  loc_6B6323: BranchF loc_6B632B
  loc_6B6326: Call SSCommand3_UnknownEvent_8()
  loc_6B632B: FLdI2 var_88
  loc_6B632E: FLdPr Me
  loc_6B6331: MemLdUI1 offset
  loc_6B6335: CI2UI1
  loc_6B6337: SubI2
  loc_6B6338: PopTmpLdAd2 var_B6
  loc_6B633B: Call Nro_Surtidor_Click(from_stack_1v)
  loc_6B6340: LitI2_Byte 0
  loc_6B6342: IStI2 KeyCode
  loc_6B6345: Branch loc_6B684C
  loc_6B6348: FLdI2 var_92
  loc_6B634B: LitI4 &H23
  loc_6B6350: CI2I4
  loc_6B6351: EqI2
  loc_6B6352: BranchF loc_6B63B4
  loc_6B6355: FLdRfVar var_CC
  loc_6B6358: FLdRfVar var_90
  loc_6B635B: ImpAdLdRf MemVar_74C760
  loc_6B635E: NewIfNullPr Formx
  loc_6B6361: from_stack_1v = Formx.global_4589716Get()
  loc_6B6366: FLdPr var_90
  loc_6B6369: Formx.BorderStyle = from_stack_1
  loc_6B636E: FLdRfVar var_CC
  loc_6B6371: NotVar var_E0
  loc_6B6375: CBoolVarNull
  loc_6B6377: FFree1Ad var_90
  loc_6B637A: FFree1Var var_CC = ""
  loc_6B637D: BranchF loc_6B63B1
  loc_6B6380: FLdRfVar var_CC
  loc_6B6383: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B6388: FLdRfVar var_CC
  loc_6B638B: CBoolVarNull
  loc_6B638D: FFree1Var var_CC = ""
  loc_6B6390: BranchF loc_6B63AE
  loc_6B6393: ILdRf Me
  loc_6B6396: FStAdNoPop
  loc_6B639A: ImpAdLdRf MemVar_7520D4
  loc_6B639D: NewIfNullPr Global
  loc_6B63A0: Global.Unload from_stack_1
  loc_6B63A5: FFree1Ad var_90
  loc_6B63A8: ExitProcCbHresult
  loc_6B63AE: Branch loc_6B6355
  loc_6B63B1: Branch loc_6B684C
  loc_6B63B4: FLdI2 var_92
  loc_6B63B7: LitI4 &HD
  loc_6B63BC: CI2I4
  loc_6B63BD: EqI2
  loc_6B63BE: BranchF loc_6B63FB
  loc_6B63C1: FLdPr Me
  loc_6B63C4: MemLdUI1 Surtidor_Actual
  loc_6B63C8: CI2UI1
  loc_6B63CA: LitI2_Byte &H10
  loc_6B63CC: GtI2
  loc_6B63CD: BranchF loc_6B63E7
  loc_6B63D0: FLdPr Me
  loc_6B63D3: MemLdUI1 Surtidor_Actual
  loc_6B63D7: CI2UI1
  loc_6B63D9: LitI2_Byte &H10
  loc_6B63DB: SubI2
  loc_6B63DC: PopTmpLdAd2 var_B6
  loc_6B63DF: from_stack_2v = Animation1_UnknownEvent_8(from_stack_1v)
  loc_6B63E4: Branch loc_6B63F8
  loc_6B63E7: FLdPr Me
  loc_6B63EA: MemLdUI1 Surtidor_Actual
  loc_6B63EE: CI2UI1
  loc_6B63F0: PopTmpLdAd2 var_B6
  loc_6B63F3: from_stack_2v = Animation1_UnknownEvent_8(from_stack_1v)
  loc_6B63F8: Branch loc_6B684C
  loc_6B63FB: FLdI2 var_92
  loc_6B63FE: LitI4 &H2E
  loc_6B6403: CI2I4
  loc_6B6404: EqI2
  loc_6B6405: BranchF loc_6B6459
  loc_6B6408: FLdPr Me
  loc_6B640B: MemLdUI1 Surtidor_Actual
  loc_6B640F: CI4UI1
  loc_6B6410: ImpAdLdRf MemVar_74C004
  loc_6B6413: Ary1LdPr
  loc_6B6414: MemLdUI1 global_43
  loc_6B6418: LitI2 144
  loc_6B641B: EqI2
  loc_6B641C: FLdPr Me
  loc_6B641F: MemLdUI1 Surtidor_Actual
  loc_6B6423: CI4UI1
  loc_6B6424: ImpAdLdRf MemVar_74C004
  loc_6B6427: Ary1LdPr
  loc_6B6428: MemLdUI1 global_43
  loc_6B642C: LitI2 128
  loc_6B642F: EqI2
  loc_6B6430: OrI4
  loc_6B6431: BranchF loc_6B6456
  loc_6B6434: FLdRfVar var_B6
  loc_6B6437: FLdPr Me
  loc_6B643A: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6B643D: FLdRfVar var_90
  loc_6B6440: ImpAdLdRf MemVar_74C760
  loc_6B6443: NewIfNullPr Formx
  loc_6B6446: from_stack_1v = Formx.global_4589716Get()
  loc_6B644B: FLdPr var_90
  loc_6B644E: Formx.ForeColor = from_stack_1
  loc_6B6453: FFree1Ad var_90
  loc_6B6456: Branch loc_6B684C
  loc_6B6459: FLdI2 var_92
  loc_6B645C: LitI4 &H6A
  loc_6B6461: CI2I4
  loc_6B6462: EqI2
  loc_6B6463: BranchF loc_6B6477
  loc_6B6466: ILdI2 Shift
  loc_6B6469: LitI2_Byte 4
  loc_6B646B: EqI2
  loc_6B646C: BranchF loc_6B6474
  loc_6B646F: Call Emergencia_UnknownEvent_8()
  loc_6B6474: Branch loc_6B684C
  loc_6B6477: FLdI2 var_92
  loc_6B647A: LitI4 8
  loc_6B647F: CI2I4
  loc_6B6480: EqI2
  loc_6B6481: BranchF loc_6B64A6
  loc_6B6484: ILdI2 Shift
  loc_6B6487: LitI2_Byte 0
  loc_6B6489: EqI2
  loc_6B648A: BranchF loc_6B6495
  loc_6B648D: Call BAutorizacion_UnknownEvent_8()
  loc_6B6492: Branch loc_6B64A3
  loc_6B6495: ILdI2 Shift
  loc_6B6498: LitI2_Byte 1
  loc_6B649A: EqI2
  loc_6B649B: BranchF loc_6B64A3
  loc_6B649E: Call Preautorizacion_UnknownEvent_8()
  loc_6B64A3: Branch loc_6B684C
  loc_6B64A6: FLdI2 var_92
  loc_6B64A9: LitI4 &H42
  loc_6B64AE: CI2I4
  loc_6B64AF: EqI2
  loc_6B64B0: BranchF loc_6B64F1
  loc_6B64B3: LitVarI2 var_CC, 1
  loc_6B64B8: LitI4 7
  loc_6B64BD: ImpAdLdI4 MemVar_74BEAC
  loc_6B64C0: ImpAdCallI2 Mid$(, , )
  loc_6B64C5: FStStrNoPop var_E4
  loc_6B64C8: LitStr "2"
  loc_6B64CB: NeStr
  loc_6B64CD: FFree1Str var_E4
  loc_6B64D0: FFree1Var var_CC = ""
  loc_6B64D3: BranchF loc_6B64EE
  loc_6B64D6: LitVar_Missing var_B4
  loc_6B64D9: PopAdLdVar
  loc_6B64DA: LitVarI4
  loc_6B64E2: PopAdLdVar
  loc_6B64E3: ImpAdLdRf MemVar_74D900
  loc_6B64E6: NewIfNullPr frmDineroenPlaya
  loc_6B64E9: frmDineroenPlaya.Show from_stack_1, from_stack_2
  loc_6B64EE: Branch loc_6B684C
  loc_6B64F1: FLdI2 var_92
  loc_6B64F4: LitI4 &H51
  loc_6B64F9: CI2I4
  loc_6B64FA: EqI2
  loc_6B64FB: BranchF loc_6B6506
  loc_6B64FE: Call SSCommand5_UnknownEvent_8()
  loc_6B6503: Branch loc_6B684C
  loc_6B6506: FLdI2 var_92
  loc_6B6509: LitI4 &H57
  loc_6B650E: CI2I4
  loc_6B650F: EqI2
  loc_6B6510: BranchF loc_6B651B
  loc_6B6513: Call SSCommand6_UnknownEvent_8()
  loc_6B6518: Branch loc_6B684C
  loc_6B651B: FLdI2 var_92
  loc_6B651E: LitI4 &H45
  loc_6B6523: CI2I4
  loc_6B6524: EqI2
  loc_6B6525: BranchF loc_6B6530
  loc_6B6528: Call SSCommand7_UnknownEvent_8()
  loc_6B652D: Branch loc_6B684C
  loc_6B6530: FLdI2 var_92
  loc_6B6533: LitI4 &H52
  loc_6B6538: CI2I4
  loc_6B6539: EqI2
  loc_6B653A: BranchF loc_6B6545
  loc_6B653D: Call SSCommand8_UnknownEvent_8()
  loc_6B6542: Branch loc_6B684C
  loc_6B6545: FLdI2 var_92
  loc_6B6548: LitI4 &H50
  loc_6B654D: CI2I4
  loc_6B654E: EqI2
  loc_6B654F: BranchF loc_6B657B
  loc_6B6552: FLdPrThis
  loc_6B6553: VCallAd Control_ID_Preset
  loc_6B6556: FStAdFunc var_90
  loc_6B6559: FLdPr var_90
  loc_6B655C: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6563: CBoolVar
  loc_6B6565: FFree1Ad var_90
  loc_6B6568: FFree1Var var_CC = ""
  loc_6B656B: BranchF loc_6B6578
  loc_6B656E: LitI2_Byte &HC
  loc_6B6570: PopTmpLdAd2 var_B6
  loc_6B6573: Call SSCommand4_UnknownEvent_8()
  loc_6B6578: Branch loc_6B684C
  loc_6B657B: FLdI2 var_92
  loc_6B657E: LitI4 &H54
  loc_6B6583: CI2I4
  loc_6B6584: EqI2
  loc_6B6585: BranchF loc_6B661F
  loc_6B6588: ILdI2 Shift
  loc_6B658B: CI4UI1
  loc_6B658C: LitI4 2
  loc_6B6591: AndI4
  loc_6B6592: LitI4 0
  loc_6B6597: GtI4
  loc_6B6598: FStI2 var_8A
  loc_6B659B: FLdI2 var_8A
  loc_6B659E: BranchF loc_6B6617
  loc_6B65A1: LitVar_Missing var_114
  loc_6B65A4: LitVar_Missing var_E0
  loc_6B65A7: LitVar_Missing var_CC
  loc_6B65AA: LitI4 &H24
  loc_6B65AF: FLdPr Me
  loc_6B65B2: MemLdRfVar from_stack_1.global_284
  loc_6B65B5: CVarRef
  loc_6B65BA: ImpAdCallI2 MsgBox(, , , , )
  loc_6B65BF: LitI4 6
  loc_6B65C4: EqI4
  loc_6B65C5: FFreeVar var_CC = "": var_E0 = ""
  loc_6B65CE: BranchF loc_6B6614
  loc_6B65D1: ImpAdCallI2  = Proc_167_5_5F8FC8()
  loc_6B65D6: NotI4
  loc_6B65D7: BranchF loc_6B660F
  loc_6B65DA: LitVar_Missing var_114
  loc_6B65DD: LitVar_Missing var_E0
  loc_6B65E0: LitVarStr var_B4, "Consola Remota"
  loc_6B65E5: FStVarCopyObj var_CC
  loc_6B65E8: FLdRfVar var_CC
  loc_6B65EB: LitI4 &H40
  loc_6B65F0: FLdPr Me
  loc_6B65F3: MemLdRfVar from_stack_1.global_444
  loc_6B65F6: CVarRef
  loc_6B65FB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B6600: FFreeVar var_CC = "": var_E0 = ""
  loc_6B6609: ExitProcCbHresult
  loc_6B660F: Call Timer1_Timer()
  loc_6B6614: Branch loc_6B661C
  loc_6B6617: Call SSCommand9_UnknownEvent_8()
  loc_6B661C: Branch loc_6B684C
  loc_6B661F: FLdI2 var_92
  loc_6B6622: LitI4 &H53
  loc_6B6627: CI2I4
  loc_6B6628: EqI2
  loc_6B6629: BranchF loc_6B66B7
  loc_6B662C: ILdI2 Shift
  loc_6B662F: CI4UI1
  loc_6B6630: LitI4 2
  loc_6B6635: AndI4
  loc_6B6636: LitI4 0
  loc_6B663B: GtI4
  loc_6B663C: FStI2 var_8A
  loc_6B663F: FLdI2 var_8A
  loc_6B6642: BranchF loc_6B669C
  loc_6B6645: FLdPr Me
  loc_6B6648: MemLdI2 global_104
  loc_6B664B: NotI4
  loc_6B664C: FLdPr Me
  loc_6B664F: MemStI2 global_104
  loc_6B6652: LitVarStr var_F4, "1"
  loc_6B6657: FStVarCopyObj var_E0
  loc_6B665A: FLdRfVar var_E0
  loc_6B665D: LitVarStr var_B4, "0"
  loc_6B6662: FStVarCopyObj var_CC
  loc_6B6665: FLdRfVar var_CC
  loc_6B6668: FLdPr Me
  loc_6B666B: MemLdRfVar from_stack_1.global_104
  loc_6B666E: CVarRef
  loc_6B6673: FLdRfVar var_114
  loc_6B6676: ImpAdCallFPR4  = IIf(, , )
  loc_6B667B: FLdRfVar var_114
  loc_6B667E: CStrVarVal var_E4
  loc_6B6682: LitStr "PlaySound"
  loc_6B6685: LitStr "Startup"
  loc_6B6688: LitStr "CEM44"
  loc_6B668B: ImpAdCallFPR4 SaveSetting(, , , )
  loc_6B6690: FFree1Str var_E4
  loc_6B6693: FFreeVar var_CC = "": var_E0 = ""
  loc_6B669C: ILdI2 Shift
  loc_6B669F: CI4UI1
  loc_6B66A0: LitI4 4
  loc_6B66A5: AndI4
  loc_6B66A6: LitI4 0
  loc_6B66AB: GtI4
  loc_6B66AC: BranchF loc_6B66B4
  loc_6B66AF: Call Salir_UnknownEvent_8()
  loc_6B66B4: Branch loc_6B684C
  loc_6B66B7: FLdI2 var_92
  loc_6B66BA: LitI4 &H5A
  loc_6B66BF: CI2I4
  loc_6B66C0: EqI2
  loc_6B66C1: BranchF loc_6B677E
  loc_6B66C4: LitVarI2 var_CC, 1
  loc_6B66C9: LitI4 &HB
  loc_6B66CE: ImpAdLdI4 MemVar_74BEAC
  loc_6B66D1: ImpAdCallI2 Mid$(, , )
  loc_6B66D6: FStStrNoPop var_E4
  loc_6B66D9: LitStr "1"
  loc_6B66DC: EqStr
  loc_6B66DE: LitVarI2 var_E0, 1
  loc_6B66E3: FLdPr Me
  loc_6B66E6: MemLdUI1 Surtidor_Actual
  loc_6B66EA: CI4UI1
  loc_6B66EB: FLdPr Me
  loc_6B66EE: MemLdRfVar from_stack_1.global_117
  loc_6B66F1: LdFixedStr
  loc_6B66F4: FStStrNoPop var_118
  loc_6B66F7: ImpAdCallI2 Mid$(, , )
  loc_6B66FC: FStStr var_11C
  loc_6B66FF: ILdRf var_118
  loc_6B6702: FLdPr Me
  loc_6B6705: MemLdRfVar from_stack_1.global_117
  loc_6B6708: StFixedStr
  loc_6B670B: ILdRf var_11C
  loc_6B670E: LitStr "1"
  loc_6B6711: EqStr
  loc_6B6713: AndI4
  loc_6B6714: FLdPr Me
  loc_6B6717: MemLdUI1 Surtidor_Actual
  loc_6B671B: CI4UI1
  loc_6B671C: ImpAdLdRf MemVar_74C004
  loc_6B671F: Ary1LdPr
  loc_6B6720: MemLdUI1 global_43
  loc_6B6724: LitI2_Byte 1
  loc_6B6726: NeI2
  loc_6B6727: AndI4
  loc_6B6728: FLdPr Me
  loc_6B672B: MemLdUI1 Surtidor_Actual
  loc_6B672F: CI4UI1
  loc_6B6730: ImpAdLdRf MemVar_74C004
  loc_6B6733: Ary1LdPr
  loc_6B6734: MemLdUI1 global_43
  loc_6B6738: LitI2_Byte &H10
  loc_6B673A: NeI2
  loc_6B673B: AndI4
  loc_6B673C: FFreeStr var_E4 = "": var_118 = ""
  loc_6B6745: FFreeVar var_CC = ""
  loc_6B674C: BranchF loc_6B677B
  loc_6B674F: FLdPr Me
  loc_6B6752: MemLdUI1 Surtidor_Actual
  loc_6B6756: CI2UI1
  loc_6B6758: ImpAdLdRf MemVar_74DA18
  loc_6B675B: NewIfNullPr frmEstadoAutorizacion
  loc_6B675E: Call frmEstadoAutorizacion.nSurtidorPut(from_stack_1v)
  loc_6B6763: LitVar_Missing var_B4
  loc_6B6766: PopAdLdVar
  loc_6B6767: LitVarI4
  loc_6B676F: PopAdLdVar
  loc_6B6770: ImpAdLdRf MemVar_74DA18
  loc_6B6773: NewIfNullPr frmEstadoAutorizacion
  loc_6B6776: frmEstadoAutorizacion.Show from_stack_1, from_stack_2
  loc_6B677B: Branch loc_6B684C
  loc_6B677E: FLdI2 var_92
  loc_6B6781: LitI4 &H1B
  loc_6B6786: CI2I4
  loc_6B6787: EqI2
  loc_6B6788: BranchF loc_6B67AF
  loc_6B678B: FLdPrThis
  loc_6B678C: VCallAd Control_ID_Preset
  loc_6B678F: FStAdFunc var_90
  loc_6B6792: FLdPr var_90
  loc_6B6795: LateIdLdVar var_CC DispID_7 -32767
  loc_6B679C: CBoolVar
  loc_6B679E: FFree1Ad var_90
  loc_6B67A1: FFree1Var var_CC = ""
  loc_6B67A4: BranchF loc_6B67AC
  loc_6B67A7: Call Borrar_UnknownEvent_8()
  loc_6B67AC: Branch loc_6B684C
  loc_6B67AF: FLdI2 var_92
  loc_6B67B2: LitI4 &H20
  loc_6B67B7: CI2I4
  loc_6B67B8: EqI2
  loc_6B67B9: BranchF loc_6B67E5
  loc_6B67BC: FLdPrThis
  loc_6B67BD: VCallAd Control_ID_Preset
  loc_6B67C0: FStAdFunc var_90
  loc_6B67C3: FLdPr var_90
  loc_6B67C6: LateIdLdVar var_CC DispID_7 -32767
  loc_6B67CD: CBoolVar
  loc_6B67CF: FFree1Ad var_90
  loc_6B67D2: FFree1Var var_CC = ""
  loc_6B67D5: BranchF loc_6B67E2
  loc_6B67D8: LitI2_Byte &HC
  loc_6B67DA: PopTmpLdAd2 var_B6
  loc_6B67DD: Call SSCommand4_UnknownEvent_8()
  loc_6B67E2: Branch loc_6B684C
  loc_6B67E5: FLdI2 var_92
  loc_6B67E8: LitI4 &H58
  loc_6B67ED: CI2I4
  loc_6B67EE: EqI2
  loc_6B67EF: BranchF loc_6B6816
  loc_6B67F2: FLdPrThis
  loc_6B67F3: VCallAd Control_ID_Preset
  loc_6B67F6: FStAdFunc var_90
  loc_6B67F9: FLdPr var_90
  loc_6B67FC: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6803: CBoolVar
  loc_6B6805: FFree1Ad var_90
  loc_6B6808: FFree1Var var_CC = ""
  loc_6B680B: BranchF loc_6B6813
  loc_6B680E: from_stack_1v = Proc_161_149_5DF214()
  loc_6B6813: Branch loc_6B684C
  loc_6B6816: FLdI2 var_92
  loc_6B6819: LitI4 &H4D
  loc_6B681E: CI2I4
  loc_6B681F: EqI2
  loc_6B6820: BranchF loc_6B6847
  loc_6B6823: FLdPrThis
  loc_6B6824: VCallAd Control_ID_Tanques
  loc_6B6827: FStAdFunc var_90
  loc_6B682A: FLdPr var_90
  loc_6B682D: LateIdLdVar var_CC DispID_7 -32767
  loc_6B6834: CBoolVar
  loc_6B6836: FFree1Ad var_90
  loc_6B6839: FFree1Var var_CC = ""
  loc_6B683C: BranchF loc_6B6844
  loc_6B683F: Call CambioManifold_UnknownEvent_8()
  loc_6B6844: Branch loc_6B684C
  loc_6B6847: LitI2_Byte 0
  loc_6B6849: FStI2 var_86
  loc_6B684C: LitI2_Byte 0
  loc_6B684E: IStI2 KeyCode
  loc_6B6851: LitI2_Byte 0
  loc_6B6853: IStI2 Shift
  loc_6B6856: LitI2_Byte &HFF
  loc_6B6858: FLdPrThis
  loc_6B6859: VCallAd Control_ID_Timer1
  loc_6B685C: FStAdFunc var_90
  loc_6B685F: FLdPr var_90
  loc_6B6862: Me.Enabled = from_stack_1b
  loc_6B6867: FFree1Ad var_90
  loc_6B686A: ExitProcCbHresult
End Function

Public Sub loadConsole() '733E7C
  'Data Table: 45B254
  loc_731180: New Me
  loc_731184: FStAdFuncNoPop
  loc_731187: FLdPr Me
  loc_73118A: MemStAd
  loc_73118E: FFree1Ad var_8C
  loc_731191: ILdRf Me
  loc_731194: FStAd var_8C 
  loc_731198: FLdRfVar var_8C
  loc_73119B: FLdPr Me
  loc_73119E: MemLdPr global_516
  loc_7311A1: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_7311A6: FFree1Ad var_8C
  loc_7311A9: LitI2_Byte 0
  loc_7311AB: FLdPr Me
  loc_7311AE: MemStI2 global_190
  loc_7311B1: LitI2_Byte &HFF
  loc_7311B3: FLdPr Me
  loc_7311B6: MemStI2 PumpNumBK
  loc_7311B9: LitI2_Byte 0
  loc_7311BB: FLdPr Me
  loc_7311BE: MemStI2 global_182
  loc_7311C1: LitVarStr var_9C, "0"
  loc_7311C6: FStVarCopyObj var_AC
  loc_7311C9: FLdRfVar var_AC
  loc_7311CC: LitI4 &H20
  loc_7311D1: FLdRfVar var_BC
  loc_7311D4: ImpAdCallFPR4  = String(, )
  loc_7311D9: FLdRfVar var_BC
  loc_7311DC: CStrVarTmp
  loc_7311DD: FStStrNoPop var_C0
  loc_7311E0: FLdPr Me
  loc_7311E3: MemStStrCopy
  loc_7311E7: FFree1Str var_C0
  loc_7311EA: FFreeVar var_AC = ""
  loc_7311F1: LitI2_Byte 0
  loc_7311F3: FLdPrThis
  loc_7311F4: VCallAd Control_ID_Timer1
  loc_7311F7: FStAdFunc var_8C
  loc_7311FA: FLdPr var_8C
  loc_7311FD: Me.Enabled = from_stack_1b
  loc_731202: FFree1Ad var_8C
  loc_731205: LitI2_Byte 0
  loc_731207: CR8I2
  loc_731208: PopFPR4
  loc_731209: FLdPr Me
  loc_73120C: Me.Top = from_stack_1s
  loc_731211: LitI2_Byte 0
  loc_731213: CR8I2
  loc_731214: PopFPR4
  loc_731215: FLdPr Me
  loc_731218: Me.Left = from_stack_1s
  loc_73121D: FLdRfVar var_C4
  loc_731220: FLdRfVar var_8C
  loc_731223: ImpAdLdRf MemVar_7520D4
  loc_731226: NewIfNullPr Global
  loc_731229:  = Global.Screen
  loc_73122E: FLdPr var_8C
  loc_731231:  = Screen.TwipsPerPixelX
  loc_731236: LitI2 800
  loc_731239: CR8I2
  loc_73123A: FLdFPR4 var_C4
  loc_73123D: MulR8
  loc_73123E: PopFPR4
  loc_73123F: FLdPr Me
  loc_731242: Me.Width = from_stack_1s
  loc_731247: FFree1Ad var_8C
  loc_73124A: FLdRfVar var_C4
  loc_73124D: FLdRfVar var_8C
  loc_731250: ImpAdLdRf MemVar_7520D4
  loc_731253: NewIfNullPr Global
  loc_731256:  = Global.Screen
  loc_73125B: FLdPr var_8C
  loc_73125E:  = Screen.TwipsPerPixelY
  loc_731263: LitI2 600
  loc_731266: CR8I2
  loc_731267: FLdFPR4 var_C4
  loc_73126A: MulR8
  loc_73126B: PopFPR4
  loc_73126C: FLdPr Me
  loc_73126F: Me.Height = from_stack_1s
  loc_731274: FFree1Ad var_8C
  loc_731277: LitVarStr var_9C, "0"
  loc_73127C: PopAdLdVar
  loc_73127D: LitStr "PlaySound"
  loc_731280: LitStr "Startup"
  loc_731283: LitStr "CEM44"
  loc_731286: ImpAdCallI2 GetSetting(, , , )
  loc_73128B: FStStrNoPop var_C0
  loc_73128E: LitStr "0"
  loc_731291: EqStr
  loc_731293: FLdPr Me
  loc_731296: MemStI2 global_104
  loc_731299: FFree1Str var_C0
  loc_73129C: LitI4 1
  loc_7312A1: LitI4 1
  loc_7312A6: ImpAdLdRf MemVar_74C364
  loc_7312A9: CVarRef
  loc_7312AE: LitVarI2 var_AC, 0
  loc_7312B3: FLdRfVar var_BC
  loc_7312B6: ImpAdCallFPR4  = Format(, )
  loc_7312BB: FLdRfVar var_BC
  loc_7312BE: CStrVarVal var_C0
  loc_7312C2: FLdPrThis
  loc_7312C3: VCallAd Control_ID_Monto
  loc_7312C6: FStAdFunc var_8C
  loc_7312C9: FLdPr var_8C
  loc_7312CC: Me.Text = from_stack_1
  loc_7312D1: FFree1Str var_C0
  loc_7312D4: FFree1Ad var_8C
  loc_7312D7: FFreeVar var_AC = ""
  loc_7312DE: LitI4 1
  loc_7312E3: LitI4 1
  loc_7312E8: LitVarStr var_D4, "#0.00"
  loc_7312ED: FStVarCopyObj var_BC
  loc_7312F0: FLdRfVar var_BC
  loc_7312F3: LitVarI2 var_AC, 0
  loc_7312F8: FLdRfVar var_E4
  loc_7312FB: ImpAdCallFPR4  = Format(, )
  loc_731300: FLdRfVar var_E4
  loc_731303: CStrVarVal var_C0
  loc_731307: FLdPrThis
  loc_731308: VCallAd Control_ID_Volumen
  loc_73130B: FStAdFunc var_8C
  loc_73130E: FLdPr var_8C
  loc_731311: Me.Text = from_stack_1
  loc_731316: FFree1Str var_C0
  loc_731319: FFree1Ad var_8C
  loc_73131C: FFreeVar var_AC = "": var_BC = ""
  loc_731325: LitI2_Byte &HFF
  loc_731327: FLdPrThis
  loc_731328: VCallAd Control_ID_lblNiveldePrecio
  loc_73132B: FStAdFunc var_8C
  loc_73132E: FLdPr var_8C
  loc_731331: Me.Visible = from_stack_1b
  loc_731336: FFree1Ad var_8C
  loc_731339: LitI2_Byte &HFF
  loc_73133B: FLdPrThis
  loc_73133C: VCallAd Control_ID_lblNiveldePrecio2
  loc_73133F: FStAdFunc var_8C
  loc_731342: FLdPr var_8C
  loc_731345: Me.Visible = from_stack_1b
  loc_73134A: FFree1Ad var_8C
  loc_73134D: FLdRfVar var_1DC
  loc_731350: LitVar_Missing var_1D8
  loc_731353: LitVar_Missing var_1B8
  loc_731356: LitVar_Missing var_198
  loc_731359: LitVar_Missing var_178
  loc_73135C: LitVar_Missing var_158
  loc_73135F: LitVar_Missing var_138
  loc_731362: LitVar_Missing var_118
  loc_731365: LitVar_Missing var_E4
  loc_731368: LitVar_Missing var_BC
  loc_73136B: LitVar_Missing var_AC
  loc_73136E: LitStr "Defectuoso"
  loc_731371: FStStrCopy var_C0
  loc_731374: FLdRfVar var_C0
  loc_731377: LitI4 1
  loc_73137C: PopTmpLdAdStr var_C4
  loc_73137F: LitI2_Byte 1
  loc_731381: PopTmpLdAd2 var_E6
  loc_731384: ImpAdLdRf MemVar_74C7D0
  loc_731387: NewIfNullPr clsMsg
  loc_73138A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73138F: ILdRf var_1DC
  loc_731392: FLdPr Me
  loc_731395: MemStStrCopy
  loc_731399: FFreeStr var_C0 = ""
  loc_7313A0: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7313B7: FLdRfVar var_1DC
  loc_7313BA: LitVar_Missing var_1D8
  loc_7313BD: LitVar_Missing var_1B8
  loc_7313C0: LitVar_Missing var_198
  loc_7313C3: LitVar_Missing var_178
  loc_7313C6: LitVar_Missing var_158
  loc_7313C9: LitVar_Missing var_138
  loc_7313CC: LitVar_Missing var_118
  loc_7313CF: LitVar_Missing var_E4
  loc_7313D2: LitVar_Missing var_BC
  loc_7313D5: LitVar_Missing var_AC
  loc_7313D8: LitStr "Anulado"
  loc_7313DB: FStStrCopy var_C0
  loc_7313DE: FLdRfVar var_C0
  loc_7313E1: LitI4 2
  loc_7313E6: PopTmpLdAdStr var_C4
  loc_7313E9: LitI2_Byte 1
  loc_7313EB: PopTmpLdAd2 var_E6
  loc_7313EE: ImpAdLdRf MemVar_74C7D0
  loc_7313F1: NewIfNullPr clsMsg
  loc_7313F4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7313F9: ILdRf var_1DC
  loc_7313FC: FLdPr Me
  loc_7313FF: MemStStrCopy
  loc_731403: FFreeStr var_C0 = ""
  loc_73140A: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731421: FLdRfVar var_1DC
  loc_731424: LitVar_Missing var_1D8
  loc_731427: LitVar_Missing var_1B8
  loc_73142A: LitVar_Missing var_198
  loc_73142D: LitVar_Missing var_178
  loc_731430: LitVar_Missing var_158
  loc_731433: LitVar_Missing var_138
  loc_731436: LitVar_Missing var_118
  loc_731439: LitVar_Missing var_E4
  loc_73143C: LitVar_Missing var_BC
  loc_73143F: LitVar_Missing var_AC
  loc_731442: LitStr "Disponible"
  loc_731445: FStStrCopy var_C0
  loc_731448: FLdRfVar var_C0
  loc_73144B: LitI4 3
  loc_731450: PopTmpLdAdStr var_C4
  loc_731453: LitI2_Byte 1
  loc_731455: PopTmpLdAd2 var_E6
  loc_731458: ImpAdLdRf MemVar_74C7D0
  loc_73145B: NewIfNullPr clsMsg
  loc_73145E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731463: ILdRf var_1DC
  loc_731466: FLdPr Me
  loc_731469: MemStStrCopy
  loc_73146D: FFreeStr var_C0 = ""
  loc_731474: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73148B: FLdRfVar var_1DC
  loc_73148E: LitVar_Missing var_1D8
  loc_731491: LitVar_Missing var_1B8
  loc_731494: LitVar_Missing var_198
  loc_731497: LitVar_Missing var_178
  loc_73149A: LitVar_Missing var_158
  loc_73149D: LitVar_Missing var_138
  loc_7314A0: LitVar_Missing var_118
  loc_7314A3: LitVar_Missing var_E4
  loc_7314A6: LitVar_Missing var_BC
  loc_7314A9: LitVar_Missing var_AC
  loc_7314AC: LitStr "Solicitud"
  loc_7314AF: FStStrCopy var_C0
  loc_7314B2: FLdRfVar var_C0
  loc_7314B5: LitI4 4
  loc_7314BA: PopTmpLdAdStr var_C4
  loc_7314BD: LitI2_Byte 1
  loc_7314BF: PopTmpLdAd2 var_E6
  loc_7314C2: ImpAdLdRf MemVar_74C7D0
  loc_7314C5: NewIfNullPr clsMsg
  loc_7314C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7314CD: ILdRf var_1DC
  loc_7314D0: FLdPr Me
  loc_7314D3: MemStStrCopy
  loc_7314D7: FFreeStr var_C0 = ""
  loc_7314DE: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7314F5: FLdRfVar var_1DC
  loc_7314F8: LitVar_Missing var_1D8
  loc_7314FB: LitVar_Missing var_1B8
  loc_7314FE: LitVar_Missing var_198
  loc_731501: LitVar_Missing var_178
  loc_731504: LitVar_Missing var_158
  loc_731507: LitVar_Missing var_138
  loc_73150A: LitVar_Missing var_118
  loc_73150D: LitVar_Missing var_E4
  loc_731510: LitVar_Missing var_BC
  loc_731513: LitVar_Missing var_AC
  loc_731516: LitStr "Autorizado"
  loc_731519: FStStrCopy var_C0
  loc_73151C: FLdRfVar var_C0
  loc_73151F: LitI4 5
  loc_731524: PopTmpLdAdStr var_C4
  loc_731527: LitI2_Byte 1
  loc_731529: PopTmpLdAd2 var_E6
  loc_73152C: ImpAdLdRf MemVar_74C7D0
  loc_73152F: NewIfNullPr clsMsg
  loc_731532: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731537: ILdRf var_1DC
  loc_73153A: FLdPr Me
  loc_73153D: MemStStrCopy
  loc_731541: FFreeStr var_C0 = ""
  loc_731548: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73155F: FLdRfVar var_1DC
  loc_731562: LitVar_Missing var_1D8
  loc_731565: LitVar_Missing var_1B8
  loc_731568: LitVar_Missing var_198
  loc_73156B: LitVar_Missing var_178
  loc_73156E: LitVar_Missing var_158
  loc_731571: LitVar_Missing var_138
  loc_731574: LitVar_Missing var_118
  loc_731577: LitVar_Missing var_E4
  loc_73157A: LitVar_Missing var_BC
  loc_73157D: LitVar_Missing var_AC
  loc_731580: LitStr "Despachando"
  loc_731583: FStStrCopy var_C0
  loc_731586: FLdRfVar var_C0
  loc_731589: LitI4 6
  loc_73158E: PopTmpLdAdStr var_C4
  loc_731591: LitI2_Byte 1
  loc_731593: PopTmpLdAd2 var_E6
  loc_731596: ImpAdLdRf MemVar_74C7D0
  loc_731599: NewIfNullPr clsMsg
  loc_73159C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7315A1: ILdRf var_1DC
  loc_7315A4: FLdPr Me
  loc_7315A7: MemStStrCopy
  loc_7315AB: FFreeStr var_C0 = ""
  loc_7315B2: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7315C9: FLdRfVar var_1DC
  loc_7315CC: LitVar_Missing var_1D8
  loc_7315CF: LitVar_Missing var_1B8
  loc_7315D2: LitVar_Missing var_198
  loc_7315D5: LitVar_Missing var_178
  loc_7315D8: LitVar_Missing var_158
  loc_7315DB: LitVar_Missing var_138
  loc_7315DE: LitVar_Missing var_118
  loc_7315E1: LitVar_Missing var_E4
  loc_7315E4: LitVar_Missing var_BC
  loc_7315E7: LitVar_Missing var_AC
  loc_7315EA: LitStr "Finalizado"
  loc_7315ED: FStStrCopy var_C0
  loc_7315F0: FLdRfVar var_C0
  loc_7315F3: LitI4 7
  loc_7315F8: PopTmpLdAdStr var_C4
  loc_7315FB: LitI2_Byte 1
  loc_7315FD: PopTmpLdAd2 var_E6
  loc_731600: ImpAdLdRf MemVar_74C7D0
  loc_731603: NewIfNullPr clsMsg
  loc_731606: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73160B: ILdRf var_1DC
  loc_73160E: FLdPr Me
  loc_731611: MemStStrCopy
  loc_731615: FFreeStr var_C0 = ""
  loc_73161C: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731633: FLdRfVar var_1DC
  loc_731636: LitVar_Missing var_1D8
  loc_731639: LitVar_Missing var_1B8
  loc_73163C: LitVar_Missing var_198
  loc_73163F: LitVar_Missing var_178
  loc_731642: LitVar_Missing var_158
  loc_731645: LitVar_Missing var_138
  loc_731648: LitVar_Missing var_118
  loc_73164B: LitVar_Missing var_E4
  loc_73164E: LitVar_Missing var_BC
  loc_731651: LitVar_Missing var_AC
  loc_731654: LitStr "Stop"
  loc_731657: FStStrCopy var_C0
  loc_73165A: FLdRfVar var_C0
  loc_73165D: LitI4 8
  loc_731662: PopTmpLdAdStr var_C4
  loc_731665: LitI2_Byte 1
  loc_731667: PopTmpLdAd2 var_E6
  loc_73166A: ImpAdLdRf MemVar_74C7D0
  loc_73166D: NewIfNullPr clsMsg
  loc_731670: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731675: ILdRf var_1DC
  loc_731678: FLdPr Me
  loc_73167B: MemStStrCopy
  loc_73167F: FFreeStr var_C0 = ""
  loc_731686: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73169D: FLdRfVar var_1DC
  loc_7316A0: LitVar_Missing var_1D8
  loc_7316A3: LitVar_Missing var_1B8
  loc_7316A6: LitVar_Missing var_198
  loc_7316A9: LitVar_Missing var_178
  loc_7316AC: LitVar_Missing var_158
  loc_7316AF: LitVar_Missing var_138
  loc_7316B2: LitVar_Missing var_118
  loc_7316B5: LitVar_Missing var_E4
  loc_7316B8: LitVar_Missing var_BC
  loc_7316BB: LitVar_Missing var_AC
  loc_7316BE: LitStr "Precio por Unidad"
  loc_7316C1: FStStrCopy var_C0
  loc_7316C4: FLdRfVar var_C0
  loc_7316C7: LitI4 9
  loc_7316CC: PopTmpLdAdStr var_C4
  loc_7316CF: LitI2_Byte 1
  loc_7316D1: PopTmpLdAd2 var_E6
  loc_7316D4: ImpAdLdRf MemVar_74C7D0
  loc_7316D7: NewIfNullPr clsMsg
  loc_7316DA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7316DF: ILdRf var_1DC
  loc_7316E2: FLdPrThis
  loc_7316E3: VCallAd Control_ID_lblPrecioPorUnidad
  loc_7316E6: FStAdFunc var_8C
  loc_7316E9: FLdPr var_8C
  loc_7316EC: Me.Caption = from_stack_1
  loc_7316F1: FFreeStr var_C0 = ""
  loc_7316F8: FFree1Ad var_8C
  loc_7316FB: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731712: FLdRfVar var_1DC
  loc_731715: LitVar_Missing var_1D8
  loc_731718: LitVar_Missing var_1B8
  loc_73171B: LitVar_Missing var_198
  loc_73171E: LitVar_Missing var_178
  loc_731721: LitVar_Missing var_158
  loc_731724: LitVar_Missing var_138
  loc_731727: LitVar_Missing var_118
  loc_73172A: LitVar_Missing var_E4
  loc_73172D: LitVar_Missing var_BC
  loc_731730: LitVar_Missing var_AC
  loc_731733: LitStr "Esta venta"
  loc_731736: FStStrCopy var_C0
  loc_731739: FLdRfVar var_C0
  loc_73173C: LitI4 &HA
  loc_731741: PopTmpLdAdStr var_C4
  loc_731744: LitI2_Byte 1
  loc_731746: PopTmpLdAd2 var_E6
  loc_731749: ImpAdLdRf MemVar_74C7D0
  loc_73174C: NewIfNullPr clsMsg
  loc_73174F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731754: ILdRf var_1DC
  loc_731757: FLdPrThis
  loc_731758: VCallAd Control_ID_lblTituloDisplayRTM
  loc_73175B: FStAdFunc var_8C
  loc_73175E: FLdPr var_8C
  loc_731761: Me.Caption = from_stack_1
  loc_731766: FFreeStr var_C0 = ""
  loc_73176D: FFree1Ad var_8C
  loc_731770: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731787: FLdRfVar var_1DC
  loc_73178A: LitVar_Missing var_1D8
  loc_73178D: LitVar_Missing var_1B8
  loc_731790: LitVar_Missing var_198
  loc_731793: LitVar_Missing var_178
  loc_731796: LitVar_Missing var_158
  loc_731799: LitVar_Missing var_138
  loc_73179C: LitVar_Missing var_118
  loc_73179F: LitVar_Missing var_E4
  loc_7317A2: LitVar_Missing var_BC
  loc_7317A5: LitVar_Missing var_AC
  loc_7317A8: LitStr "Salir"
  loc_7317AB: FStStrCopy var_C0
  loc_7317AE: FLdRfVar var_C0
  loc_7317B1: LitI4 &HB
  loc_7317B6: PopTmpLdAdStr var_C4
  loc_7317B9: LitI2_Byte 1
  loc_7317BB: PopTmpLdAd2 var_E6
  loc_7317BE: ImpAdLdRf MemVar_74C7D0
  loc_7317C1: NewIfNullPr clsMsg
  loc_7317C4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7317C9: FLdZeroAd var_1DC
  loc_7317CC: CVarStr var_1EC
  loc_7317CF: PopAdLdVar
  loc_7317D0: FLdPrThis
  loc_7317D1: VCallAd Control_ID_Salir
  loc_7317D4: FStAdFunc var_8C
  loc_7317D7: FLdPr var_8C
  loc_7317DA: LateIdSt
  loc_7317DF: FFree1Str var_C0
  loc_7317E2: FFree1Ad var_8C
  loc_7317E5: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7317FE: FLdRfVar var_1DC
  loc_731801: LitVar_Missing var_1D8
  loc_731804: LitVar_Missing var_1B8
  loc_731807: LitVar_Missing var_198
  loc_73180A: LitVar_Missing var_178
  loc_73180D: LitVar_Missing var_158
  loc_731810: LitVar_Missing var_138
  loc_731813: LitVar_Missing var_118
  loc_731816: LitVar_Missing var_E4
  loc_731819: LitVar_Missing var_BC
  loc_73181C: LitVar_Missing var_AC
  loc_73181F: LitStr "Vacío"
  loc_731822: FStStrCopy var_C0
  loc_731825: FLdRfVar var_C0
  loc_731828: LitI4 &HC
  loc_73182D: PopTmpLdAdStr var_C4
  loc_731830: LitI2_Byte 1
  loc_731832: PopTmpLdAd2 var_E6
  loc_731835: ImpAdLdRf MemVar_74C7D0
  loc_731838: NewIfNullPr clsMsg
  loc_73183B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731840: ILdRf var_1DC
  loc_731843: FLdRfVar var_1F0
  loc_731846: LitI2_Byte &HC
  loc_731848: FLdPrThis
  loc_731849: VCallAd Control_ID_Vacio
  loc_73184C: FStAdFunc var_8C
  loc_73184F: FLdPr var_8C
  loc_731852: Set from_stack_2 = Me(from_stack_1)
  loc_731857: FLdPr var_1F0
  loc_73185A: Me.Caption = from_stack_1
  loc_73185F: FFreeStr var_C0 = ""
  loc_731866: FFreeAd var_8C = ""
  loc_73186D: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731884: FLdRfVar var_1DC
  loc_731887: LitVar_Missing var_1D8
  loc_73188A: LitVar_Missing var_1B8
  loc_73188D: LitVar_Missing var_198
  loc_731890: LitVar_Missing var_178
  loc_731893: LitVar_Missing var_158
  loc_731896: LitVar_Missing var_138
  loc_731899: LitVar_Missing var_118
  loc_73189C: LitVar_Missing var_E4
  loc_73189F: LitVar_Missing var_BC
  loc_7318A2: LitVar_Missing var_AC
  loc_7318A5: LitStr "Comb."
  loc_7318A8: FStStrCopy var_C0
  loc_7318AB: FLdRfVar var_C0
  loc_7318AE: LitI4 &HD
  loc_7318B3: PopTmpLdAdStr var_C4
  loc_7318B6: LitI2_Byte 1
  loc_7318B8: PopTmpLdAd2 var_E6
  loc_7318BB: ImpAdLdRf MemVar_74C7D0
  loc_7318BE: NewIfNullPr clsMsg
  loc_7318C1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7318C6: ILdRf var_1DC
  loc_7318C9: FLdRfVar var_1F0
  loc_7318CC: LitI2_Byte 3
  loc_7318CE: FLdPrThis
  loc_7318CF: VCallAd Control_ID_Combustible
  loc_7318D2: FStAdFunc var_8C
  loc_7318D5: FLdPr var_8C
  loc_7318D8: Set from_stack_2 = Me(from_stack_1)
  loc_7318DD: FLdPr var_1F0
  loc_7318E0: Me.Caption = from_stack_1
  loc_7318E5: FFreeStr var_C0 = ""
  loc_7318EC: FFreeAd var_8C = ""
  loc_7318F3: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73190A: FLdRfVar var_1DC
  loc_73190D: LitVar_Missing var_1D8
  loc_731910: LitVar_Missing var_1B8
  loc_731913: LitVar_Missing var_198
  loc_731916: LitVar_Missing var_178
  loc_731919: LitVar_Missing var_158
  loc_73191C: LitVar_Missing var_138
  loc_73191F: LitVar_Missing var_118
  loc_731922: LitVar_Missing var_E4
  loc_731925: LitVar_Missing var_BC
  loc_731928: LitVar_Missing var_AC
  loc_73192B: LitStr "Agua"
  loc_73192E: FStStrCopy var_C0
  loc_731931: FLdRfVar var_C0
  loc_731934: LitI4 &HE
  loc_731939: PopTmpLdAdStr var_C4
  loc_73193C: LitI2_Byte 1
  loc_73193E: PopTmpLdAd2 var_E6
  loc_731941: ImpAdLdRf MemVar_74C7D0
  loc_731944: NewIfNullPr clsMsg
  loc_731947: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73194C: ILdRf var_1DC
  loc_73194F: FLdRfVar var_1F0
  loc_731952: LitI2_Byte 3
  loc_731954: FLdPrThis
  loc_731955: VCallAd Control_ID_Agua
  loc_731958: FStAdFunc var_8C
  loc_73195B: FLdPr var_8C
  loc_73195E: Set from_stack_2 = Me(from_stack_1)
  loc_731963: FLdPr var_1F0
  loc_731966: Me.Caption = from_stack_1
  loc_73196B: FFreeStr var_C0 = ""
  loc_731972: FFreeAd var_8C = ""
  loc_731979: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731990: FLdRfVar var_1DC
  loc_731993: LitVar_Missing var_1D8
  loc_731996: LitVar_Missing var_1B8
  loc_731999: LitVar_Missing var_198
  loc_73199C: LitVar_Missing var_178
  loc_73199F: LitVar_Missing var_158
  loc_7319A2: LitVar_Missing var_138
  loc_7319A5: LitVar_Missing var_118
  loc_7319A8: LitVar_Missing var_E4
  loc_7319AB: LitVar_Missing var_BC
  loc_7319AE: LitVar_Missing var_AC
  loc_7319B1: ImpAdLdI4 MemVar_74BEBC
  loc_7319B4: LitStr " Horarios"
  loc_7319B7: ConcatStr
  loc_7319B8: PopTmpLdAdStr
  loc_7319BC: LitI4 &H11
  loc_7319C1: PopTmpLdAdStr var_C4
  loc_7319C4: LitI2_Byte 1
  loc_7319C6: PopTmpLdAd2 var_E6
  loc_7319C9: ImpAdLdRf MemVar_74C7D0
  loc_7319CC: NewIfNullPr clsMsg
  loc_7319CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7319D4: ILdRf var_1DC
  loc_7319D7: FLdPrThis
  loc_7319D8: VCallAd Control_ID_lblLitrosHorarios
  loc_7319DB: FStAdFunc var_8C
  loc_7319DE: FLdPr var_8C
  loc_7319E1: Me.Caption = from_stack_1
  loc_7319E6: FFreeStr var_C0 = ""
  loc_7319ED: FFree1Ad var_8C
  loc_7319F0: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731A07: FLdRfVar var_1DC
  loc_731A0A: LitVar_Missing var_1D8
  loc_731A0D: LitVar_Missing var_1B8
  loc_731A10: LitVar_Missing var_198
  loc_731A13: LitVar_Missing var_178
  loc_731A16: LitVar_Missing var_158
  loc_731A19: LitVar_Missing var_138
  loc_731A1C: LitVar_Missing var_118
  loc_731A1F: LitVar_Missing var_E4
  loc_731A22: LitVar_Missing var_BC
  loc_731A25: LitVar_Missing var_AC
  loc_731A28: LitStr "Horarios para combustibles"
  loc_731A2B: FStStrCopy var_C0
  loc_731A2E: FLdRfVar var_C0
  loc_731A31: LitI4 &H191
  loc_731A36: PopTmpLdAdStr var_C4
  loc_731A39: LitI2_Byte 1
  loc_731A3B: PopTmpLdAd2 var_E6
  loc_731A3E: ImpAdLdRf MemVar_74C7D0
  loc_731A41: NewIfNullPr clsMsg
  loc_731A44: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731A49: ILdRf var_1DC
  loc_731A4C: FLdPrThis
  loc_731A4D: VCallAd Control_ID_lblHorarios
  loc_731A50: FStAdFunc var_8C
  loc_731A53: FLdPr var_8C
  loc_731A56: Me.Caption = from_stack_1
  loc_731A5B: FFreeStr var_C0 = ""
  loc_731A62: FFree1Ad var_8C
  loc_731A65: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731A7C: FLdRfVar var_1DC
  loc_731A7F: LitVar_Missing var_1D8
  loc_731A82: LitVar_Missing var_1B8
  loc_731A85: LitVar_Missing var_198
  loc_731A88: LitVar_Missing var_178
  loc_731A8B: LitVar_Missing var_158
  loc_731A8E: LitVar_Missing var_138
  loc_731A91: LitVar_Missing var_118
  loc_731A94: LitVar_Missing var_E4
  loc_731A97: LitVar_Missing var_BC
  loc_731A9A: LitVar_Missing var_AC
  loc_731A9D: LitStr "Ventas por Producto para combustibles"
  loc_731AA0: FStStrCopy var_C0
  loc_731AA3: FLdRfVar var_C0
  loc_731AA6: LitI4 &H12
  loc_731AAB: PopTmpLdAdStr var_C4
  loc_731AAE: LitI2_Byte 1
  loc_731AB0: PopTmpLdAd2 var_E6
  loc_731AB3: ImpAdLdRf MemVar_74C7D0
  loc_731AB6: NewIfNullPr clsMsg
  loc_731AB9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731ABE: ILdRf var_1DC
  loc_731AC1: FLdPrThis
  loc_731AC2: VCallAd Control_ID_lblVentasPorProducto
  loc_731AC5: FStAdFunc var_8C
  loc_731AC8: FLdPr var_8C
  loc_731ACB: Me.Caption = from_stack_1
  loc_731AD0: FFreeStr var_C0 = ""
  loc_731AD7: FFree1Ad var_8C
  loc_731ADA: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731AF1: FLdRfVar var_C0
  loc_731AF4: LitVar_Missing var_1D8
  loc_731AF7: LitVar_Missing var_1B8
  loc_731AFA: LitVar_Missing var_198
  loc_731AFD: LitVar_Missing var_178
  loc_731B00: LitVar_Missing var_158
  loc_731B03: LitVar_Missing var_138
  loc_731B06: LitVar_Missing var_118
  loc_731B09: LitVar_Missing var_E4
  loc_731B0C: LitVar_Missing var_BC
  loc_731B0F: LitVar_Missing var_AC
  loc_731B12: ImpAdLdRf MemVar_74BEBC
  loc_731B15: LitI4 &H13
  loc_731B1A: PopTmpLdAdStr var_C4
  loc_731B1D: LitI2_Byte 1
  loc_731B1F: PopTmpLdAd2 var_E6
  loc_731B22: ImpAdLdRf MemVar_74C7D0
  loc_731B25: NewIfNullPr clsMsg
  loc_731B28: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731B2D: ILdRf var_C0
  loc_731B30: FLdPrThis
  loc_731B31: VCallAd Control_ID_lblLitrosRTM
  loc_731B34: FStAdFunc var_8C
  loc_731B37: FLdPr var_8C
  loc_731B3A: Me.Caption = from_stack_1
  loc_731B3F: FFree1Str var_C0
  loc_731B42: FFree1Ad var_8C
  loc_731B45: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731B5C: FLdRfVar var_1DC
  loc_731B5F: LitVar_Missing var_1D8
  loc_731B62: LitVar_Missing var_1B8
  loc_731B65: LitVar_Missing var_198
  loc_731B68: LitVar_Missing var_178
  loc_731B6B: LitVar_Missing var_158
  loc_731B6E: LitVar_Missing var_138
  loc_731B71: LitVar_Missing var_118
  loc_731B74: LitVar_Missing var_E4
  loc_731B77: LitVar_Missing var_BC
  loc_731B7A: LitVar_Missing var_AC
  loc_731B7D: LitStr "Marca"
  loc_731B80: FStStrCopy var_C0
  loc_731B83: FLdRfVar var_C0
  loc_731B86: LitI4 &H14
  loc_731B8B: PopTmpLdAdStr var_C4
  loc_731B8E: LitI2_Byte 1
  loc_731B90: PopTmpLdAd2 var_E6
  loc_731B93: ImpAdLdRf MemVar_74C7D0
  loc_731B96: NewIfNullPr clsMsg
  loc_731B99: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731B9E: ILdRf var_1DC
  loc_731BA1: FLdPrThis
  loc_731BA2: VCallAd Control_ID_lblPumpBrand
  loc_731BA5: FStAdFunc var_8C
  loc_731BA8: FLdPr var_8C
  loc_731BAB: Me.Caption = from_stack_1
  loc_731BB0: FFreeStr var_C0 = ""
  loc_731BB7: FFree1Ad var_8C
  loc_731BBA: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731BD1: FLdRfVar var_1DC
  loc_731BD4: LitVar_Missing var_1D8
  loc_731BD7: LitVar_Missing var_1B8
  loc_731BDA: LitVar_Missing var_198
  loc_731BDD: LitVar_Missing var_178
  loc_731BE0: LitVar_Missing var_158
  loc_731BE3: LitVar_Missing var_138
  loc_731BE6: LitVar_Missing var_118
  loc_731BE9: LitVar_Missing var_E4
  loc_731BEC: LitVar_Missing var_BC
  loc_731BEF: LitVar_Missing var_AC
  loc_731BF2: LitStr "Modelo"
  loc_731BF5: FStStrCopy var_C0
  loc_731BF8: FLdRfVar var_C0
  loc_731BFB: LitI4 &H15
  loc_731C00: PopTmpLdAdStr var_C4
  loc_731C03: LitI2_Byte 1
  loc_731C05: PopTmpLdAd2 var_E6
  loc_731C08: ImpAdLdRf MemVar_74C7D0
  loc_731C0B: NewIfNullPr clsMsg
  loc_731C0E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731C13: ILdRf var_1DC
  loc_731C16: FLdPrThis
  loc_731C17: VCallAd Control_ID_lblPumpModel
  loc_731C1A: FStAdFunc var_8C
  loc_731C1D: FLdPr var_8C
  loc_731C20: Me.Caption = from_stack_1
  loc_731C25: FFreeStr var_C0 = ""
  loc_731C2C: FFree1Ad var_8C
  loc_731C2F: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731C46: FLdRfVar var_1DC
  loc_731C49: LitVar_Missing var_1D8
  loc_731C4C: LitVar_Missing var_1B8
  loc_731C4F: LitVar_Missing var_198
  loc_731C52: LitVar_Missing var_178
  loc_731C55: LitVar_Missing var_158
  loc_731C58: LitVar_Missing var_138
  loc_731C5B: LitVar_Missing var_118
  loc_731C5E: LitVar_Missing var_E4
  loc_731C61: LitVar_Missing var_BC
  loc_731C64: LitVar_Missing var_AC
  loc_731C67: LitStr "Despacho"
  loc_731C6A: FStStrCopy var_C0
  loc_731C6D: FLdRfVar var_C0
  loc_731C70: LitI4 &H16
  loc_731C75: PopTmpLdAdStr var_C4
  loc_731C78: LitI2_Byte 1
  loc_731C7A: PopTmpLdAd2 var_E6
  loc_731C7D: ImpAdLdRf MemVar_74C7D0
  loc_731C80: NewIfNullPr clsMsg
  loc_731C83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731C88: ILdRf var_1DC
  loc_731C8B: FLdPrThis
  loc_731C8C: VCallAd Control_ID_lblPumpSaleMode
  loc_731C8F: FStAdFunc var_8C
  loc_731C92: FLdPr var_8C
  loc_731C95: Me.Caption = from_stack_1
  loc_731C9A: FFreeStr var_C0 = ""
  loc_731CA1: FFree1Ad var_8C
  loc_731CA4: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731CBB: FLdRfVar var_1DC
  loc_731CBE: LitVar_Missing var_1D8
  loc_731CC1: LitVar_Missing var_1B8
  loc_731CC4: LitVar_Missing var_198
  loc_731CC7: LitVar_Missing var_178
  loc_731CCA: LitVar_Missing var_158
  loc_731CCD: LitVar_Missing var_138
  loc_731CD0: LitVar_Missing var_118
  loc_731CD3: LitVar_Missing var_E4
  loc_731CD6: LitVar_Missing var_BC
  loc_731CD9: LitVar_Missing var_AC
  loc_731CDC: LitStr "Nivel de Precio"
  loc_731CDF: FStStrCopy var_C0
  loc_731CE2: FLdRfVar var_C0
  loc_731CE5: LitI4 &H17
  loc_731CEA: PopTmpLdAdStr var_C4
  loc_731CED: LitI2_Byte 1
  loc_731CEF: PopTmpLdAd2 var_E6
  loc_731CF2: ImpAdLdRf MemVar_74C7D0
  loc_731CF5: NewIfNullPr clsMsg
  loc_731CF8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731CFD: ILdRf var_1DC
  loc_731D00: FLdPrThis
  loc_731D01: VCallAd Control_ID_lblNiveldePrecio
  loc_731D04: FStAdFunc var_8C
  loc_731D07: FLdPr var_8C
  loc_731D0A: Me.Caption = from_stack_1
  loc_731D0F: FFreeStr var_C0 = ""
  loc_731D16: FFree1Ad var_8C
  loc_731D19: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731D30: FLdRfVar var_1DC
  loc_731D33: LitVar_Missing var_1D8
  loc_731D36: LitVar_Missing var_1B8
  loc_731D39: LitVar_Missing var_198
  loc_731D3C: LitVar_Missing var_178
  loc_731D3F: LitVar_Missing var_158
  loc_731D42: LitVar_Missing var_138
  loc_731D45: LitVar_Missing var_118
  loc_731D48: LitVar_Missing var_E4
  loc_731D4B: LitVar_Missing var_BC
  loc_731D4E: LitVar_Missing var_AC
  loc_731D51: LitStr "Ultimas Ventas"
  loc_731D54: FStStrCopy var_C0
  loc_731D57: FLdRfVar var_C0
  loc_731D5A: LitI4 &H18
  loc_731D5F: PopTmpLdAdStr var_C4
  loc_731D62: LitI2_Byte 1
  loc_731D64: PopTmpLdAd2 var_E6
  loc_731D67: ImpAdLdRf MemVar_74C7D0
  loc_731D6A: NewIfNullPr clsMsg
  loc_731D6D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731D72: ILdRf var_1DC
  loc_731D75: FLdPr Me
  loc_731D78: MemStStrCopy
  loc_731D7C: FFreeStr var_C0 = ""
  loc_731D83: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731D9A: FLdRfVar var_1DC
  loc_731D9D: LitVar_Missing var_1D8
  loc_731DA0: LitVar_Missing var_1B8
  loc_731DA3: LitVar_Missing var_198
  loc_731DA6: LitVar_Missing var_178
  loc_731DA9: LitVar_Missing var_158
  loc_731DAC: LitVar_Missing var_138
  loc_731DAF: LitVar_Missing var_118
  loc_731DB2: LitVar_Missing var_E4
  loc_731DB5: LitVar_Missing var_BC
  loc_731DB8: LitVar_Missing var_AC
  loc_731DBB: LitStr "PRODUCTO"
  loc_731DBE: FStStrCopy var_C0
  loc_731DC1: FLdRfVar var_C0
  loc_731DC4: LitI4 &H19
  loc_731DC9: PopTmpLdAdStr var_C4
  loc_731DCC: LitI2_Byte 1
  loc_731DCE: PopTmpLdAd2 var_E6
  loc_731DD1: ImpAdLdRf MemVar_74C7D0
  loc_731DD4: NewIfNullPr clsMsg
  loc_731DD7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731DDC: ILdRf var_1DC
  loc_731DDF: FLdRfVar var_1F0
  loc_731DE2: LitI2_Byte 1
  loc_731DE4: FLdPrThis
  loc_731DE5: VCallAd Control_ID_Titulo
  loc_731DE8: FStAdFunc var_8C
  loc_731DEB: FLdPr var_8C
  loc_731DEE: Set from_stack_2 = Me(from_stack_1)
  loc_731DF3: FLdPr var_1F0
  loc_731DF6: Me.Caption = from_stack_1
  loc_731DFB: FFreeStr var_C0 = ""
  loc_731E02: FFreeAd var_8C = ""
  loc_731E09: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731E20: FLdRfVar var_1DC
  loc_731E23: LitVar_Missing var_1D8
  loc_731E26: LitVar_Missing var_1B8
  loc_731E29: LitVar_Missing var_198
  loc_731E2C: LitVar_Missing var_178
  loc_731E2F: LitVar_Missing var_158
  loc_731E32: LitVar_Missing var_138
  loc_731E35: LitVar_Missing var_118
  loc_731E38: LitVar_Missing var_E4
  loc_731E3B: LitVar_Missing var_BC
  loc_731E3E: LitVar_Missing var_AC
  loc_731E41: LitStr "PPU"
  loc_731E44: FStStrCopy var_C0
  loc_731E47: FLdRfVar var_C0
  loc_731E4A: LitI4 &H1A
  loc_731E4F: PopTmpLdAdStr var_C4
  loc_731E52: LitI2_Byte 1
  loc_731E54: PopTmpLdAd2 var_E6
  loc_731E57: ImpAdLdRf MemVar_74C7D0
  loc_731E5A: NewIfNullPr clsMsg
  loc_731E5D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731E62: ILdRf var_1DC
  loc_731E65: FLdRfVar var_1F0
  loc_731E68: LitI2_Byte 2
  loc_731E6A: FLdPrThis
  loc_731E6B: VCallAd Control_ID_Titulo
  loc_731E6E: FStAdFunc var_8C
  loc_731E71: FLdPr var_8C
  loc_731E74: Set from_stack_2 = Me(from_stack_1)
  loc_731E79: FLdPr var_1F0
  loc_731E7C: Me.Caption = from_stack_1
  loc_731E81: FFreeStr var_C0 = ""
  loc_731E88: FFreeAd var_8C = ""
  loc_731E8F: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731EA6: FLdRfVar var_1DC
  loc_731EA9: LitVar_Missing var_1D8
  loc_731EAC: LitVar_Missing var_1B8
  loc_731EAF: LitVar_Missing var_198
  loc_731EB2: LitVar_Missing var_178
  loc_731EB5: LitVar_Missing var_158
  loc_731EB8: LitVar_Missing var_138
  loc_731EBB: LitVar_Missing var_118
  loc_731EBE: LitVar_Missing var_E4
  loc_731EC1: LitVar_Missing var_BC
  loc_731EC4: LitVar_Missing var_AC
  loc_731EC7: LitStr "VOLUMEN"
  loc_731ECA: FStStrCopy var_C0
  loc_731ECD: FLdRfVar var_C0
  loc_731ED0: LitI4 &H1B
  loc_731ED5: PopTmpLdAdStr var_C4
  loc_731ED8: LitI2_Byte 1
  loc_731EDA: PopTmpLdAd2 var_E6
  loc_731EDD: ImpAdLdRf MemVar_74C7D0
  loc_731EE0: NewIfNullPr clsMsg
  loc_731EE3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731EE8: ILdRf var_1DC
  loc_731EEB: FLdRfVar var_1F0
  loc_731EEE: LitI2_Byte 3
  loc_731EF0: FLdPrThis
  loc_731EF1: VCallAd Control_ID_Titulo
  loc_731EF4: FStAdFunc var_8C
  loc_731EF7: FLdPr var_8C
  loc_731EFA: Set from_stack_2 = Me(from_stack_1)
  loc_731EFF: FLdPr var_1F0
  loc_731F02: Me.Caption = from_stack_1
  loc_731F07: FFreeStr var_C0 = ""
  loc_731F0E: FFreeAd var_8C = ""
  loc_731F15: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731F2C: FLdRfVar var_1DC
  loc_731F2F: LitVar_Missing var_1D8
  loc_731F32: LitVar_Missing var_1B8
  loc_731F35: LitVar_Missing var_198
  loc_731F38: LitVar_Missing var_178
  loc_731F3B: LitVar_Missing var_158
  loc_731F3E: LitVar_Missing var_138
  loc_731F41: LitVar_Missing var_118
  loc_731F44: LitVar_Missing var_E4
  loc_731F47: LitVar_Missing var_BC
  loc_731F4A: LitVar_Missing var_AC
  loc_731F4D: LitStr "IMPORTE"
  loc_731F50: FStStrCopy var_C0
  loc_731F53: FLdRfVar var_C0
  loc_731F56: LitI4 &H1C
  loc_731F5B: PopTmpLdAdStr var_C4
  loc_731F5E: LitI2_Byte 1
  loc_731F60: PopTmpLdAd2 var_E6
  loc_731F63: ImpAdLdRf MemVar_74C7D0
  loc_731F66: NewIfNullPr clsMsg
  loc_731F69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731F6E: ILdRf var_1DC
  loc_731F71: FLdRfVar var_1F0
  loc_731F74: LitI2_Byte 4
  loc_731F76: FLdPrThis
  loc_731F77: VCallAd Control_ID_Titulo
  loc_731F7A: FStAdFunc var_8C
  loc_731F7D: FLdPr var_8C
  loc_731F80: Set from_stack_2 = Me(from_stack_1)
  loc_731F85: FLdPr var_1F0
  loc_731F88: Me.Caption = from_stack_1
  loc_731F8D: FFreeStr var_C0 = ""
  loc_731F94: FFreeAd var_8C = ""
  loc_731F9B: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_731FB2: FLdRfVar var_1DC
  loc_731FB5: LitVar_Missing var_1D8
  loc_731FB8: LitVar_Missing var_1B8
  loc_731FBB: LitVar_Missing var_198
  loc_731FBE: LitVar_Missing var_178
  loc_731FC1: LitVar_Missing var_158
  loc_731FC4: LitVar_Missing var_138
  loc_731FC7: LitVar_Missing var_118
  loc_731FCA: LitVar_Missing var_E4
  loc_731FCD: LitVar_Missing var_BC
  loc_731FD0: LitVar_Missing var_AC
  loc_731FD3: LitStr "Borrar Preset"
  loc_731FD6: FStStrCopy var_C0
  loc_731FD9: FLdRfVar var_C0
  loc_731FDC: LitI4 &H4B
  loc_731FE1: PopTmpLdAdStr var_C4
  loc_731FE4: LitI2_Byte 1
  loc_731FE6: PopTmpLdAd2 var_E6
  loc_731FE9: ImpAdLdRf MemVar_74C7D0
  loc_731FEC: NewIfNullPr clsMsg
  loc_731FEF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_731FF4: FLdZeroAd var_1DC
  loc_731FF7: CVarStr var_1EC
  loc_731FFA: PopAdLdVar
  loc_731FFB: FLdPrThis
  loc_731FFC: VCallAd Control_ID_cmdBorrarPreset
  loc_731FFF: FStAdFunc var_8C
  loc_732002: FLdPr var_8C
  loc_732005: LateIdSt
  loc_73200A: FFree1Str var_C0
  loc_73200D: FFree1Ad var_8C
  loc_732010: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_732029: FLdRfVar var_1DC
  loc_73202C: LitVar_Missing var_1D8
  loc_73202F: LitVar_Missing var_1B8
  loc_732032: LitVar_Missing var_198
  loc_732035: LitVar_Missing var_178
  loc_732038: LitVar_Missing var_158
  loc_73203B: LitVar_Missing var_138
  loc_73203E: LitVar_Missing var_118
  loc_732041: LitVar_Missing var_E4
  loc_732044: LitVar_Missing var_BC
  loc_732047: LitVar_Missing var_AC
  loc_73204A: LitStr "Reenviar"
  loc_73204D: FStStrCopy var_C0
  loc_732050: FLdRfVar var_C0
  loc_732053: LitI4 &H4C
  loc_732058: PopTmpLdAdStr var_C4
  loc_73205B: LitI2_Byte 1
  loc_73205D: PopTmpLdAd2 var_E6
  loc_732060: ImpAdLdRf MemVar_74C7D0
  loc_732063: NewIfNullPr clsMsg
  loc_732066: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73206B: FLdZeroAd var_1DC
  loc_73206E: CVarStr var_1EC
  loc_732071: PopAdLdVar
  loc_732072: FLdPrThis
  loc_732073: VCallAd Control_ID_cmdReenviar
  loc_732076: FStAdFunc var_8C
  loc_732079: FLdPr var_8C
  loc_73207C: LateIdSt
  loc_732081: FFree1Str var_C0
  loc_732084: FFree1Ad var_8C
  loc_732087: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7320A0: FLdRfVar var_1DC
  loc_7320A3: LitVar_Missing var_1D8
  loc_7320A6: LitVar_Missing var_1B8
  loc_7320A9: LitVar_Missing var_198
  loc_7320AC: LitVar_Missing var_178
  loc_7320AF: LitVar_Missing var_158
  loc_7320B2: LitVar_Missing var_138
  loc_7320B5: LitVar_Missing var_118
  loc_7320B8: LitVar_Missing var_E4
  loc_7320BB: LitVar_Missing var_BC
  loc_7320BE: LitVar_Missing var_AC
  loc_7320C1: LitStr "Borrar Todo"
  loc_7320C4: FStStrCopy var_C0
  loc_7320C7: FLdRfVar var_C0
  loc_7320CA: LitI4 &H4D
  loc_7320CF: PopTmpLdAdStr var_C4
  loc_7320D2: LitI2_Byte 1
  loc_7320D4: PopTmpLdAd2 var_E6
  loc_7320D7: ImpAdLdRf MemVar_74C7D0
  loc_7320DA: NewIfNullPr clsMsg
  loc_7320DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7320E2: FLdZeroAd var_1DC
  loc_7320E5: CVarStr var_1EC
  loc_7320E8: PopAdLdVar
  loc_7320E9: FLdPrThis
  loc_7320EA: VCallAd Control_ID_cmdBorrarTodo
  loc_7320ED: FStAdFunc var_8C
  loc_7320F0: FLdPr var_8C
  loc_7320F3: LateIdSt
  loc_7320F8: FFree1Str var_C0
  loc_7320FB: FFree1Ad var_8C
  loc_7320FE: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_732117: FLdRfVar var_1DC
  loc_73211A: LitVar_Missing var_1D8
  loc_73211D: LitVar_Missing var_1B8
  loc_732120: LitVar_Missing var_198
  loc_732123: LitVar_Missing var_178
  loc_732126: LitVar_Missing var_158
  loc_732129: LitVar_Missing var_138
  loc_73212C: LitVar_Missing var_118
  loc_73212F: LitVar_Missing var_E4
  loc_732132: LitVar_Missing var_BC
  loc_732135: LitVar_Missing var_AC
  loc_732138: LitStr "Tanque Lleno"
  loc_73213B: FStStrCopy var_C0
  loc_73213E: FLdRfVar var_C0
  loc_732141: LitI4 &H4E
  loc_732146: PopTmpLdAdStr var_C4
  loc_732149: LitI2_Byte 1
  loc_73214B: PopTmpLdAd2 var_E6
  loc_73214E: ImpAdLdRf MemVar_74C7D0
  loc_732151: NewIfNullPr clsMsg
  loc_732154: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732159: FLdZeroAd var_1DC
  loc_73215C: CVarStr var_1EC
  loc_73215F: PopAdLdVar
  loc_732160: FLdPrThis
  loc_732161: VCallAd Control_ID_SSTanqueLleno
  loc_732164: FStAdFunc var_8C
  loc_732167: FLdPr var_8C
  loc_73216A: LateIdSt
  loc_73216F: FFree1Str var_C0
  loc_732172: FFree1Ad var_8C
  loc_732175: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_73218E: FLdRfVar var_1DC
  loc_732191: LitVar_Missing var_1D8
  loc_732194: LitVar_Missing var_1B8
  loc_732197: LitVar_Missing var_198
  loc_73219A: LitVar_Missing var_178
  loc_73219D: LitVar_Missing var_158
  loc_7321A0: LitVar_Missing var_138
  loc_7321A3: LitVar_Missing var_118
  loc_7321A6: LitVar_Missing var_E4
  loc_7321A9: LitVar_Missing var_BC
  loc_7321AC: LitVar_Missing var_AC
  loc_7321AF: LitStr "PRESET"
  loc_7321B2: FStStrCopy var_C0
  loc_7321B5: FLdRfVar var_C0
  loc_7321B8: LitI4 &H44
  loc_7321BD: PopTmpLdAdStr var_C4
  loc_7321C0: LitI2_Byte 1
  loc_7321C2: PopTmpLdAd2 var_E6
  loc_7321C5: ImpAdLdRf MemVar_74C7D0
  loc_7321C8: NewIfNullPr clsMsg
  loc_7321CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7321D0: FLdZeroAd var_1DC
  loc_7321D3: CVarStr var_1EC
  loc_7321D6: PopAdLdVar
  loc_7321D7: FLdRfVar var_1F0
  loc_7321DA: LitI2_Byte &HC
  loc_7321DC: FLdPrThis
  loc_7321DD: VCallAd Control_ID_SSCommand4
  loc_7321E0: FStAdFunc var_8C
  loc_7321E3: FLdPr var_8C
  loc_7321E6: Set from_stack_2 = Me(from_stack_1)
  loc_7321EB: FLdPr var_1F0
  loc_7321EE: LateIdSt
  loc_7321F3: FFree1Str var_C0
  loc_7321F6: FFreeAd var_8C = ""
  loc_7321FD: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_732216: FLdRfVar var_1DC
  loc_732219: LitVar_Missing var_1D8
  loc_73221C: LitVar_Missing var_1B8
  loc_73221F: LitVar_Missing var_198
  loc_732222: LitVar_Missing var_178
  loc_732225: LitVar_Missing var_158
  loc_732228: LitVar_Missing var_138
  loc_73222B: LitVar_Missing var_118
  loc_73222E: LitVar_Missing var_E4
  loc_732231: LitVar_Missing var_BC
  loc_732234: LitVar_Missing var_AC
  loc_732237: LitStr "No se puede repagar una venta pagada por Flotas. Verifique por favor."
  loc_73223A: FStStrCopy var_C0
  loc_73223D: FLdRfVar var_C0
  loc_732240: LitI4 &H57
  loc_732245: PopTmpLdAdStr var_C4
  loc_732248: LitI2_Byte 1
  loc_73224A: PopTmpLdAd2 var_E6
  loc_73224D: ImpAdLdRf MemVar_74C7D0
  loc_732250: NewIfNullPr clsMsg
  loc_732253: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732258: ILdRf var_1DC
  loc_73225B: FLdPr Me
  loc_73225E: MemStStrCopy
  loc_732262: FFreeStr var_C0 = ""
  loc_732269: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732280: FLdRfVar var_1DC
  loc_732283: LitVar_Missing var_1D8
  loc_732286: LitVar_Missing var_1B8
  loc_732289: LitVar_Missing var_198
  loc_73228C: LitVar_Missing var_178
  loc_73228F: LitVar_Missing var_158
  loc_732292: LitVar_Missing var_138
  loc_732295: LitVar_Missing var_118
  loc_732298: LitVar_Missing var_E4
  loc_73229B: LitVar_Missing var_BC
  loc_73229E: LitVar_Missing var_AC
  loc_7322A1: LitStr "Incobrable"
  loc_7322A4: FStStrCopy var_C0
  loc_7322A7: FLdRfVar var_C0
  loc_7322AA: LitI4 &H56
  loc_7322AF: PopTmpLdAdStr var_C4
  loc_7322B2: LitI2_Byte 1
  loc_7322B4: PopTmpLdAd2 var_E6
  loc_7322B7: ImpAdLdRf MemVar_74C7D0
  loc_7322BA: NewIfNullPr clsMsg
  loc_7322BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7322C2: ILdRf var_1DC
  loc_7322C5: FLdPr Me
  loc_7322C8: MemStStrCopy
  loc_7322CC: FFreeStr var_C0 = ""
  loc_7322D3: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7322EA: FLdRfVar var_1DC
  loc_7322ED: LitVar_Missing var_1D8
  loc_7322F0: LitVar_Missing var_1B8
  loc_7322F3: LitVar_Missing var_198
  loc_7322F6: LitVar_Missing var_178
  loc_7322F9: LitVar_Missing var_158
  loc_7322FC: LitVar_Missing var_138
  loc_7322FF: LitVar_Missing var_118
  loc_732302: LitVar_Missing var_E4
  loc_732305: LitVar_Missing var_BC
  loc_732308: LitVar_Missing var_AC
  loc_73230B: LitStr "¿Desea imprimir el ticket?"
  loc_73230E: FStStrCopy var_C0
  loc_732311: FLdRfVar var_C0
  loc_732314: LitI4 &H55
  loc_732319: PopTmpLdAdStr var_C4
  loc_73231C: LitI2_Byte 1
  loc_73231E: PopTmpLdAd2 var_E6
  loc_732321: ImpAdLdRf MemVar_74C7D0
  loc_732324: NewIfNullPr clsMsg
  loc_732327: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73232C: ILdRf var_1DC
  loc_73232F: FLdPr Me
  loc_732332: MemStStrCopy
  loc_732336: FFreeStr var_C0 = ""
  loc_73233D: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732354: LitI4 &HA
  loc_732359: FLdRfVar var_AC
  loc_73235C: ImpAdCallFPR4  = Chr()
  loc_732361: LitI4 &HD
  loc_732366: FLdRfVar var_E4
  loc_732369: ImpAdCallFPR4  = Chr()
  loc_73236E: FLdRfVar var_1DC
  loc_732371: LitVar_Missing var_290
  loc_732374: LitVar_Missing var_270
  loc_732377: LitVar_Missing var_250
  loc_73237A: LitVar_Missing var_230
  loc_73237D: LitVar_Missing var_210
  loc_732380: LitVar_Missing var_200
  loc_732383: LitVar_Missing var_1EC
  loc_732386: LitVar_Missing var_1D8
  loc_732389: LitVar_Missing var_1B8
  loc_73238C: LitVar_Missing var_198
  loc_73238F: LitVarStr var_9C, "No se pueden totalizar las ventas debido "
  loc_732394: FLdRfVar var_AC
  loc_732397: AddVar var_BC
  loc_73239B: FLdRfVar var_E4
  loc_73239E: AddVar var_118
  loc_7323A2: LitVarStr var_D4, "a que no estan todos los "
  loc_7323A7: AddVar var_138
  loc_7323AB: ImpAdLdI4 MemVar_74BEE4
  loc_7323AE: CVarStr var_F8
  loc_7323B1: ConcatVar var_158
  loc_7323B5: LitVarStr var_108, " habilitados."
  loc_7323BA: ConcatVar var_178
  loc_7323BE: CStrVarTmp
  loc_7323BF: PopTmpLdAdStr
  loc_7323C3: LitI4 &H54
  loc_7323C8: PopTmpLdAdStr var_C4
  loc_7323CB: LitI2_Byte 1
  loc_7323CD: PopTmpLdAd2 var_E6
  loc_7323D0: ImpAdLdRf MemVar_74C7D0
  loc_7323D3: NewIfNullPr clsMsg
  loc_7323D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7323DB: ILdRf var_1DC
  loc_7323DE: FLdPr Me
  loc_7323E1: MemStStrCopy
  loc_7323E5: FFreeStr var_C0 = ""
  loc_7323EC: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_200 = "": var_210 = "": var_230 = "": var_250 = "": var_270 = ""
  loc_732411: FLdRfVar var_1DC
  loc_732414: LitVar_Missing var_1D8
  loc_732417: LitVar_Missing var_1B8
  loc_73241A: LitVar_Missing var_198
  loc_73241D: LitVar_Missing var_178
  loc_732420: LitVar_Missing var_158
  loc_732423: LitVar_Missing var_138
  loc_732426: LitVar_Missing var_118
  loc_732429: LitVar_Missing var_E4
  loc_73242C: LitVar_Missing var_BC
  loc_73242F: LitVar_Missing var_AC
  loc_732432: LitStr "Desea pagar todas la ventas impagas de todos los surtidores?"
  loc_732435: FStStrCopy var_C0
  loc_732438: FLdRfVar var_C0
  loc_73243B: LitI4 &H1D
  loc_732440: PopTmpLdAdStr var_C4
  loc_732443: LitI2_Byte 1
  loc_732445: PopTmpLdAd2 var_E6
  loc_732448: ImpAdLdRf MemVar_74C7D0
  loc_73244B: NewIfNullPr clsMsg
  loc_73244E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732453: ILdRf var_1DC
  loc_732456: FLdPr Me
  loc_732459: MemStStrCopy
  loc_73245D: FFreeStr var_C0 = ""
  loc_732464: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73247B: FLdRfVar var_1DC
  loc_73247E: LitVar_Missing var_1D8
  loc_732481: LitVar_Missing var_1B8
  loc_732484: LitVar_Missing var_198
  loc_732487: LitVar_Missing var_178
  loc_73248A: LitVar_Missing var_158
  loc_73248D: LitVar_Missing var_138
  loc_732490: LitVar_Missing var_118
  loc_732493: LitVar_Missing var_E4
  loc_732496: LitVar_Missing var_BC
  loc_732499: LitVar_Missing var_AC
  loc_73249C: LitStr "Facturado, pago con tarjeta"
  loc_73249F: FStStrCopy var_C0
  loc_7324A2: FLdRfVar var_C0
  loc_7324A5: LitI4 &H1E
  loc_7324AA: PopTmpLdAdStr var_C4
  loc_7324AD: LitI2_Byte 1
  loc_7324AF: PopTmpLdAd2 var_E6
  loc_7324B2: ImpAdLdRf MemVar_74C7D0
  loc_7324B5: NewIfNullPr clsMsg
  loc_7324B8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7324BD: ILdRf var_1DC
  loc_7324C0: FLdPr Me
  loc_7324C3: MemStStrCopy
  loc_7324C7: FFreeStr var_C0 = ""
  loc_7324CE: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7324E5: FLdRfVar var_1DC
  loc_7324E8: LitVar_Missing var_1D8
  loc_7324EB: LitVar_Missing var_1B8
  loc_7324EE: LitVar_Missing var_198
  loc_7324F1: LitVar_Missing var_178
  loc_7324F4: LitVar_Missing var_158
  loc_7324F7: LitVar_Missing var_138
  loc_7324FA: LitVar_Missing var_118
  loc_7324FD: LitVar_Missing var_E4
  loc_732500: LitVar_Missing var_BC
  loc_732503: LitVar_Missing var_AC
  loc_732506: LitStr "Facturado en POS NEXUS"
  loc_732509: FStStrCopy var_C0
  loc_73250C: FLdRfVar var_C0
  loc_73250F: LitI4 &H1F
  loc_732514: PopTmpLdAdStr var_C4
  loc_732517: LitI2_Byte 1
  loc_732519: PopTmpLdAd2 var_E6
  loc_73251C: ImpAdLdRf MemVar_74C7D0
  loc_73251F: NewIfNullPr clsMsg
  loc_732522: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732527: ILdRf var_1DC
  loc_73252A: FLdPr Me
  loc_73252D: MemStStrCopy
  loc_732531: FFreeStr var_C0 = ""
  loc_732538: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73254F: FLdRfVar var_1DC
  loc_732552: LitVar_Missing var_1D8
  loc_732555: LitVar_Missing var_1B8
  loc_732558: LitVar_Missing var_198
  loc_73255B: LitVar_Missing var_178
  loc_73255E: LitVar_Missing var_158
  loc_732561: LitVar_Missing var_138
  loc_732564: LitVar_Missing var_118
  loc_732567: LitVar_Missing var_E4
  loc_73256A: LitVar_Missing var_BC
  loc_73256D: LitVar_Missing var_AC
  loc_732570: LitStr "Facturado en POS"
  loc_732573: FStStrCopy var_C0
  loc_732576: FLdRfVar var_C0
  loc_732579: LitI4 &H20
  loc_73257E: PopTmpLdAdStr var_C4
  loc_732581: LitI2_Byte 1
  loc_732583: PopTmpLdAd2 var_E6
  loc_732586: ImpAdLdRf MemVar_74C7D0
  loc_732589: NewIfNullPr clsMsg
  loc_73258C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732591: ILdRf var_1DC
  loc_732594: FLdPr Me
  loc_732597: MemStStrCopy
  loc_73259B: FFreeStr var_C0 = ""
  loc_7325A2: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7325B9: FLdRfVar var_1DC
  loc_7325BC: LitVar_Missing var_1D8
  loc_7325BF: LitVar_Missing var_1B8
  loc_7325C2: LitVar_Missing var_198
  loc_7325C5: LitVar_Missing var_178
  loc_7325C8: LitVar_Missing var_158
  loc_7325CB: LitVar_Missing var_138
  loc_7325CE: LitVar_Missing var_118
  loc_7325D1: LitVar_Missing var_E4
  loc_7325D4: LitVar_Missing var_BC
  loc_7325D7: LitVar_Missing var_AC
  loc_7325DA: LitStr "Pago con tarjeta"
  loc_7325DD: FStStrCopy var_C0
  loc_7325E0: FLdRfVar var_C0
  loc_7325E3: LitI4 &H21
  loc_7325E8: PopTmpLdAdStr var_C4
  loc_7325EB: LitI2_Byte 1
  loc_7325ED: PopTmpLdAd2 var_E6
  loc_7325F0: ImpAdLdRf MemVar_74C7D0
  loc_7325F3: NewIfNullPr clsMsg
  loc_7325F6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7325FB: ILdRf var_1DC
  loc_7325FE: FLdPr Me
  loc_732601: MemStStrCopy
  loc_732605: FFreeStr var_C0 = ""
  loc_73260C: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732623: FLdRfVar var_1DC
  loc_732626: LitVar_Missing var_1D8
  loc_732629: LitVar_Missing var_1B8
  loc_73262C: LitVar_Missing var_198
  loc_73262F: LitVar_Missing var_178
  loc_732632: LitVar_Missing var_158
  loc_732635: LitVar_Missing var_138
  loc_732638: LitVar_Missing var_118
  loc_73263B: LitVar_Missing var_E4
  loc_73263E: LitVar_Missing var_BC
  loc_732641: LitVar_Missing var_AC
  loc_732644: LitStr "Prueba de surtidor con retorno a tanque"
  loc_732647: FStStrCopy var_C0
  loc_73264A: FLdRfVar var_C0
  loc_73264D: LitI4 &H22
  loc_732652: PopTmpLdAdStr var_C4
  loc_732655: LitI2_Byte 1
  loc_732657: PopTmpLdAd2 var_E6
  loc_73265A: ImpAdLdRf MemVar_74C7D0
  loc_73265D: NewIfNullPr clsMsg
  loc_732660: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732665: ILdRf var_1DC
  loc_732668: FLdPr Me
  loc_73266B: MemStStrCopy
  loc_73266F: FFreeStr var_C0 = ""
  loc_732676: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73268D: FLdRfVar var_1DC
  loc_732690: LitVar_Missing var_1D8
  loc_732693: LitVar_Missing var_1B8
  loc_732696: LitVar_Missing var_198
  loc_732699: LitVar_Missing var_178
  loc_73269C: LitVar_Missing var_158
  loc_73269F: LitVar_Missing var_138
  loc_7326A2: LitVar_Missing var_118
  loc_7326A5: LitVar_Missing var_E4
  loc_7326A8: LitVar_Missing var_BC
  loc_7326AB: LitVar_Missing var_AC
  loc_7326AE: LitStr "Prueba de surtidor sin retorno a tanque"
  loc_7326B1: FStStrCopy var_C0
  loc_7326B4: FLdRfVar var_C0
  loc_7326B7: LitI4 &H23
  loc_7326BC: PopTmpLdAdStr var_C4
  loc_7326BF: LitI2_Byte 1
  loc_7326C1: PopTmpLdAd2 var_E6
  loc_7326C4: ImpAdLdRf MemVar_74C7D0
  loc_7326C7: NewIfNullPr clsMsg
  loc_7326CA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7326CF: ILdRf var_1DC
  loc_7326D2: FLdPr Me
  loc_7326D5: MemStStrCopy
  loc_7326D9: FFreeStr var_C0 = ""
  loc_7326E0: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7326F7: FLdRfVar var_1DC
  loc_7326FA: LitVar_Missing var_1D8
  loc_7326FD: LitVar_Missing var_1B8
  loc_732700: LitVar_Missing var_198
  loc_732703: LitVar_Missing var_178
  loc_732706: LitVar_Missing var_158
  loc_732709: LitVar_Missing var_138
  loc_73270C: LitVar_Missing var_118
  loc_73270F: LitVar_Missing var_E4
  loc_732712: LitVar_Missing var_BC
  loc_732715: LitVar_Missing var_AC
  loc_732718: LitStr "Incobrable"
  loc_73271B: FStStrCopy var_C0
  loc_73271E: FLdRfVar var_C0
  loc_732721: LitI4 &H24
  loc_732726: PopTmpLdAdStr var_C4
  loc_732729: LitI2_Byte 1
  loc_73272B: PopTmpLdAd2 var_E6
  loc_73272E: ImpAdLdRf MemVar_74C7D0
  loc_732731: NewIfNullPr clsMsg
  loc_732734: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732739: ILdRf var_1DC
  loc_73273C: FLdPr Me
  loc_73273F: MemStStrCopy
  loc_732743: FFreeStr var_C0 = ""
  loc_73274A: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732761: FLdRfVar var_1DC
  loc_732764: LitVar_Missing var_1D8
  loc_732767: LitVar_Missing var_1B8
  loc_73276A: LitVar_Missing var_198
  loc_73276D: LitVar_Missing var_178
  loc_732770: LitVar_Missing var_158
  loc_732773: LitVar_Missing var_138
  loc_732776: LitVar_Missing var_118
  loc_732779: LitVar_Missing var_E4
  loc_73277C: LitVar_Missing var_BC
  loc_73277F: LitVar_Missing var_AC
  loc_732782: LitStr "Pago Contado"
  loc_732785: FStStrCopy var_C0
  loc_732788: FLdRfVar var_C0
  loc_73278B: LitI4 &H25
  loc_732790: PopTmpLdAdStr var_C4
  loc_732793: LitI2_Byte 1
  loc_732795: PopTmpLdAd2 var_E6
  loc_732798: ImpAdLdRf MemVar_74C7D0
  loc_73279B: NewIfNullPr clsMsg
  loc_73279E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7327A3: ILdRf var_1DC
  loc_7327A6: FLdPr Me
  loc_7327A9: MemStStrCopy
  loc_7327AD: FFreeStr var_C0 = ""
  loc_7327B4: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7327CB: FLdRfVar var_1DC
  loc_7327CE: LitVar_Missing var_1D8
  loc_7327D1: LitVar_Missing var_1B8
  loc_7327D4: LitVar_Missing var_198
  loc_7327D7: LitVar_Missing var_178
  loc_7327DA: LitVar_Missing var_158
  loc_7327DD: LitVar_Missing var_138
  loc_7327E0: LitVar_Missing var_118
  loc_7327E3: LitVar_Missing var_E4
  loc_7327E6: LitVar_Missing var_BC
  loc_7327E9: LitVar_Missing var_AC
  loc_7327EC: LitStr "Contado, pago automático"
  loc_7327EF: FStStrCopy var_C0
  loc_7327F2: FLdRfVar var_C0
  loc_7327F5: LitI4 &H26
  loc_7327FA: PopTmpLdAdStr var_C4
  loc_7327FD: LitI2_Byte 1
  loc_7327FF: PopTmpLdAd2 var_E6
  loc_732802: ImpAdLdRf MemVar_74C7D0
  loc_732805: NewIfNullPr clsMsg
  loc_732808: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73280D: ILdRf var_1DC
  loc_732810: FLdPr Me
  loc_732813: MemStStrCopy
  loc_732817: FFreeStr var_C0 = ""
  loc_73281E: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732835: FLdRfVar var_1DC
  loc_732838: LitVar_Missing var_1D8
  loc_73283B: LitVar_Missing var_1B8
  loc_73283E: LitVar_Missing var_198
  loc_732841: LitVar_Missing var_178
  loc_732844: LitVar_Missing var_158
  loc_732847: LitVar_Missing var_138
  loc_73284A: LitVar_Missing var_118
  loc_73284D: LitVar_Missing var_E4
  loc_732850: LitVar_Missing var_BC
  loc_732853: LitVar_Missing var_AC
  loc_732856: LitStr "Facturado, pago contado"
  loc_732859: FStStrCopy var_C0
  loc_73285C: FLdRfVar var_C0
  loc_73285F: LitI4 &H27
  loc_732864: PopTmpLdAdStr var_C4
  loc_732867: LitI2_Byte 1
  loc_732869: PopTmpLdAd2 var_E6
  loc_73286C: ImpAdLdRf MemVar_74C7D0
  loc_73286F: NewIfNullPr clsMsg
  loc_732872: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732877: ILdRf var_1DC
  loc_73287A: FLdPr Me
  loc_73287D: MemStStrCopy
  loc_732881: FFreeStr var_C0 = ""
  loc_732888: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73289F: FLdRfVar var_1DC
  loc_7328A2: LitVar_Missing var_1D8
  loc_7328A5: LitVar_Missing var_1B8
  loc_7328A8: LitVar_Missing var_198
  loc_7328AB: LitVar_Missing var_178
  loc_7328AE: LitVar_Missing var_158
  loc_7328B1: LitVar_Missing var_138
  loc_7328B4: LitVar_Missing var_118
  loc_7328B7: LitVar_Missing var_E4
  loc_7328BA: LitVar_Missing var_BC
  loc_7328BD: LitVar_Missing var_AC
  loc_7328C0: LitStr "Facturado, Cuenta Corriente"
  loc_7328C3: FStStrCopy var_C0
  loc_7328C6: FLdRfVar var_C0
  loc_7328C9: LitI4 &H28
  loc_7328CE: PopTmpLdAdStr var_C4
  loc_7328D1: LitI2_Byte 1
  loc_7328D3: PopTmpLdAd2 var_E6
  loc_7328D6: ImpAdLdRf MemVar_74C7D0
  loc_7328D9: NewIfNullPr clsMsg
  loc_7328DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7328E1: ILdRf var_1DC
  loc_7328E4: FLdPr Me
  loc_7328E7: MemStStrCopy
  loc_7328EB: FFreeStr var_C0 = ""
  loc_7328F2: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732909: FLdRfVar var_1DC
  loc_73290C: LitVar_Missing var_1D8
  loc_73290F: LitVar_Missing var_1B8
  loc_732912: LitVar_Missing var_198
  loc_732915: LitVar_Missing var_178
  loc_732918: LitVar_Missing var_158
  loc_73291B: LitVar_Missing var_138
  loc_73291E: LitVar_Missing var_118
  loc_732921: LitVar_Missing var_E4
  loc_732924: LitVar_Missing var_BC
  loc_732927: LitVar_Missing var_AC
  loc_73292A: LitStr "Efectivo en CRIND"
  loc_73292D: FStStrCopy var_C0
  loc_732930: FLdRfVar var_C0
  loc_732933: LitI4 &H29
  loc_732938: PopTmpLdAdStr var_C4
  loc_73293B: LitI2_Byte 1
  loc_73293D: PopTmpLdAd2 var_E6
  loc_732940: ImpAdLdRf MemVar_74C7D0
  loc_732943: NewIfNullPr clsMsg
  loc_732946: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73294B: ILdRf var_1DC
  loc_73294E: FLdPr Me
  loc_732951: MemStStrCopy
  loc_732955: FFreeStr var_C0 = ""
  loc_73295C: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732973: FLdRfVar var_1DC
  loc_732976: LitVar_Missing var_1D8
  loc_732979: LitVar_Missing var_1B8
  loc_73297C: LitVar_Missing var_198
  loc_73297F: LitVar_Missing var_178
  loc_732982: LitVar_Missing var_158
  loc_732985: LitVar_Missing var_138
  loc_732988: LitVar_Missing var_118
  loc_73298B: LitVar_Missing var_E4
  loc_73298E: LitVar_Missing var_BC
  loc_732991: LitVar_Missing var_AC
  loc_732994: LitStr "Tarjeta en CRIND"
  loc_732997: FStStrCopy var_C0
  loc_73299A: FLdRfVar var_C0
  loc_73299D: LitI4 &H2A
  loc_7329A2: PopTmpLdAdStr var_C4
  loc_7329A5: LitI2_Byte 1
  loc_7329A7: PopTmpLdAd2 var_E6
  loc_7329AA: ImpAdLdRf MemVar_74C7D0
  loc_7329AD: NewIfNullPr clsMsg
  loc_7329B0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7329B5: ILdRf var_1DC
  loc_7329B8: FLdPr Me
  loc_7329BB: MemStStrCopy
  loc_7329BF: FFreeStr var_C0 = ""
  loc_7329C6: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7329DD: FLdRfVar var_1DC
  loc_7329E0: LitVar_Missing var_1D8
  loc_7329E3: LitVar_Missing var_1B8
  loc_7329E6: LitVar_Missing var_198
  loc_7329E9: LitVar_Missing var_178
  loc_7329EC: LitVar_Missing var_158
  loc_7329EF: LitVar_Missing var_138
  loc_7329F2: LitVar_Missing var_118
  loc_7329F5: LitVar_Missing var_E4
  loc_7329F8: LitVar_Missing var_BC
  loc_7329FB: LitVar_Missing var_AC
  loc_7329FE: LitStr "Efectivo en CRIND (FACT)"
  loc_732A01: FStStrCopy var_C0
  loc_732A04: FLdRfVar var_C0
  loc_732A07: LitI4 &H2B
  loc_732A0C: PopTmpLdAdStr var_C4
  loc_732A0F: LitI2_Byte 1
  loc_732A11: PopTmpLdAd2 var_E6
  loc_732A14: ImpAdLdRf MemVar_74C7D0
  loc_732A17: NewIfNullPr clsMsg
  loc_732A1A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732A1F: ILdRf var_1DC
  loc_732A22: FLdPr Me
  loc_732A25: MemStStrCopy
  loc_732A29: FFreeStr var_C0 = ""
  loc_732A30: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732A47: FLdRfVar var_1DC
  loc_732A4A: LitVar_Missing var_1D8
  loc_732A4D: LitVar_Missing var_1B8
  loc_732A50: LitVar_Missing var_198
  loc_732A53: LitVar_Missing var_178
  loc_732A56: LitVar_Missing var_158
  loc_732A59: LitVar_Missing var_138
  loc_732A5C: LitVar_Missing var_118
  loc_732A5F: LitVar_Missing var_E4
  loc_732A62: LitVar_Missing var_BC
  loc_732A65: LitVar_Missing var_AC
  loc_732A68: LitStr "Tarjeta en CRIND (FACT)"
  loc_732A6B: FStStrCopy var_C0
  loc_732A6E: FLdRfVar var_C0
  loc_732A71: LitI4 &H2C
  loc_732A76: PopTmpLdAdStr var_C4
  loc_732A79: LitI2_Byte 1
  loc_732A7B: PopTmpLdAd2 var_E6
  loc_732A7E: ImpAdLdRf MemVar_74C7D0
  loc_732A81: NewIfNullPr clsMsg
  loc_732A84: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732A89: ILdRf var_1DC
  loc_732A8C: FLdPr Me
  loc_732A8F: MemStStrCopy
  loc_732A93: FFreeStr var_C0 = ""
  loc_732A9A: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732AB1: FLdRfVar var_1DC
  loc_732AB4: LitVar_Missing var_1D8
  loc_732AB7: LitVar_Missing var_1B8
  loc_732ABA: LitVar_Missing var_198
  loc_732ABD: LitVar_Missing var_178
  loc_732AC0: LitVar_Missing var_158
  loc_732AC3: LitVar_Missing var_138
  loc_732AC6: LitVar_Missing var_118
  loc_732AC9: LitVar_Missing var_E4
  loc_732ACC: LitVar_Missing var_BC
  loc_732ACF: LitVar_Missing var_AC
  loc_732AD2: LitStr "Pago CDFP - Red"
  loc_732AD5: FStStrCopy var_C0
  loc_732AD8: FLdRfVar var_C0
  loc_732ADB: LitI4 &H2D
  loc_732AE0: PopTmpLdAdStr var_C4
  loc_732AE3: LitI2_Byte 1
  loc_732AE5: PopTmpLdAd2 var_E6
  loc_732AE8: ImpAdLdRf MemVar_74C7D0
  loc_732AEB: NewIfNullPr clsMsg
  loc_732AEE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732AF3: ILdRf var_1DC
  loc_732AF6: FLdPr Me
  loc_732AF9: MemStStrCopy
  loc_732AFD: FFreeStr var_C0 = ""
  loc_732B04: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732B1B: FLdRfVar var_1DC
  loc_732B1E: LitVar_Missing var_1D8
  loc_732B21: LitVar_Missing var_1B8
  loc_732B24: LitVar_Missing var_198
  loc_732B27: LitVar_Missing var_178
  loc_732B2A: LitVar_Missing var_158
  loc_732B2D: LitVar_Missing var_138
  loc_732B30: LitVar_Missing var_118
  loc_732B33: LitVar_Missing var_E4
  loc_732B36: LitVar_Missing var_BC
  loc_732B39: LitVar_Missing var_AC
  loc_732B3C: LitStr "Pago CDFP - Local"
  loc_732B3F: FStStrCopy var_C0
  loc_732B42: FLdRfVar var_C0
  loc_732B45: LitI4 &H2E
  loc_732B4A: PopTmpLdAdStr var_C4
  loc_732B4D: LitI2_Byte 1
  loc_732B4F: PopTmpLdAd2 var_E6
  loc_732B52: ImpAdLdRf MemVar_74C7D0
  loc_732B55: NewIfNullPr clsMsg
  loc_732B58: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732B5D: ILdRf var_1DC
  loc_732B60: FLdPr Me
  loc_732B63: MemStStrCopy
  loc_732B67: FFreeStr var_C0 = ""
  loc_732B6E: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732B85: FLdRfVar var_1DC
  loc_732B88: LitVar_Missing var_1D8
  loc_732B8B: LitVar_Missing var_1B8
  loc_732B8E: LitVar_Missing var_198
  loc_732B91: LitVar_Missing var_178
  loc_732B94: LitVar_Missing var_158
  loc_732B97: LitVar_Missing var_138
  loc_732B9A: LitVar_Missing var_118
  loc_732B9D: LitVar_Missing var_E4
  loc_732BA0: LitVar_Missing var_BC
  loc_732BA3: LitVar_Missing var_AC
  loc_732BA6: LitStr "Impago"
  loc_732BA9: FStStrCopy var_C0
  loc_732BAC: FLdRfVar var_C0
  loc_732BAF: LitI4 &H2F
  loc_732BB4: PopTmpLdAdStr var_C4
  loc_732BB7: LitI2_Byte 1
  loc_732BB9: PopTmpLdAd2 var_E6
  loc_732BBC: ImpAdLdRf MemVar_74C7D0
  loc_732BBF: NewIfNullPr clsMsg
  loc_732BC2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732BC7: ILdRf var_1DC
  loc_732BCA: FLdPr Me
  loc_732BCD: MemStStrCopy
  loc_732BD1: FFreeStr var_C0 = ""
  loc_732BD8: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732BEF: FLdRfVar var_1DC
  loc_732BF2: LitVar_Missing var_1D8
  loc_732BF5: LitVar_Missing var_1B8
  loc_732BF8: LitVar_Missing var_198
  loc_732BFB: LitVar_Missing var_178
  loc_732BFE: LitVar_Missing var_158
  loc_732C01: LitVar_Missing var_138
  loc_732C04: LitVar_Missing var_118
  loc_732C07: LitVar_Missing var_E4
  loc_732C0A: LitVar_Missing var_BC
  loc_732C0D: LitVar_Missing var_AC
  loc_732C10: LitStr "EMERGENCIA GENERAL EN CURSO ..."
  loc_732C13: FStStrCopy var_C0
  loc_732C16: FLdRfVar var_C0
  loc_732C19: LitI4 &H30
  loc_732C1E: PopTmpLdAdStr var_C4
  loc_732C21: LitI2_Byte 1
  loc_732C23: PopTmpLdAd2 var_E6
  loc_732C26: ImpAdLdRf MemVar_74C7D0
  loc_732C29: NewIfNullPr clsMsg
  loc_732C2C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732C31: ILdRf var_1DC
  loc_732C34: FLdPr Me
  loc_732C37: MemStStrCopy
  loc_732C3B: FFreeStr var_C0 = ""
  loc_732C42: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732C59: FLdRfVar var_1DC
  loc_732C5C: LitVar_Missing var_1D8
  loc_732C5F: LitVar_Missing var_1B8
  loc_732C62: LitVar_Missing var_198
  loc_732C65: LitVar_Missing var_178
  loc_732C68: LitVar_Missing var_158
  loc_732C6B: LitVar_Missing var_138
  loc_732C6E: LitVar_Missing var_118
  loc_732C71: LitVar_Missing var_E4
  loc_732C74: LitVar_Missing var_BC
  loc_732C77: LitVar_Missing var_AC
  loc_732C7A: LitStr "CAMBIO DE PRECIOS EN CURSO ..."
  loc_732C7D: FStStrCopy var_C0
  loc_732C80: FLdRfVar var_C0
  loc_732C83: LitI4 &H31
  loc_732C88: PopTmpLdAdStr var_C4
  loc_732C8B: LitI2_Byte 1
  loc_732C8D: PopTmpLdAd2 var_E6
  loc_732C90: ImpAdLdRf MemVar_74C7D0
  loc_732C93: NewIfNullPr clsMsg
  loc_732C96: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732C9B: ILdRf var_1DC
  loc_732C9E: FLdPr Me
  loc_732CA1: MemStStrCopy
  loc_732CA5: FFreeStr var_C0 = ""
  loc_732CAC: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732CC3: FLdRfVar var_1DC
  loc_732CC6: LitVar_Missing var_1D8
  loc_732CC9: LitVar_Missing var_1B8
  loc_732CCC: LitVar_Missing var_198
  loc_732CCF: LitVar_Missing var_178
  loc_732CD2: LitVar_Missing var_158
  loc_732CD5: LitVar_Missing var_138
  loc_732CD8: LitVar_Missing var_118
  loc_732CDB: LitVar_Missing var_E4
  loc_732CDE: LitVar_Missing var_BC
  loc_732CE1: LitVar_Missing var_AC
  loc_732CE4: LitStr "CIERRE DE TURNO EN CURSO"
  loc_732CE7: FStStrCopy var_C0
  loc_732CEA: FLdRfVar var_C0
  loc_732CED: LitI4 &H32
  loc_732CF2: PopTmpLdAdStr var_C4
  loc_732CF5: LitI2_Byte 1
  loc_732CF7: PopTmpLdAd2 var_E6
  loc_732CFA: ImpAdLdRf MemVar_74C7D0
  loc_732CFD: NewIfNullPr clsMsg
  loc_732D00: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732D05: ILdRf var_1DC
  loc_732D08: FLdPr Me
  loc_732D0B: MemStStrCopy
  loc_732D0F: FFreeStr var_C0 = ""
  loc_732D16: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732D2D: FLdRfVar var_1DC
  loc_732D30: LitVar_Missing var_1D8
  loc_732D33: LitVar_Missing var_1B8
  loc_732D36: LitVar_Missing var_198
  loc_732D39: LitVar_Missing var_178
  loc_732D3C: LitVar_Missing var_158
  loc_732D3F: LitVar_Missing var_138
  loc_732D42: LitVar_Missing var_118
  loc_732D45: LitVar_Missing var_E4
  loc_732D48: LitVar_Missing var_BC
  loc_732D4B: LitVar_Missing var_AC
  loc_732D4E: LitStr "CAMBIO DE CONFIGURACION EN CURSO ..."
  loc_732D51: FStStrCopy var_C0
  loc_732D54: FLdRfVar var_C0
  loc_732D57: LitI4 &H33
  loc_732D5C: PopTmpLdAdStr var_C4
  loc_732D5F: LitI2_Byte 1
  loc_732D61: PopTmpLdAd2 var_E6
  loc_732D64: ImpAdLdRf MemVar_74C7D0
  loc_732D67: NewIfNullPr clsMsg
  loc_732D6A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732D6F: ILdRf var_1DC
  loc_732D72: FLdPr Me
  loc_732D75: MemStStrCopy
  loc_732D79: FFreeStr var_C0 = ""
  loc_732D80: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732D97: FLdRfVar var_1DC
  loc_732D9A: LitVar_Missing var_1D8
  loc_732D9D: LitVar_Missing var_1B8
  loc_732DA0: LitVar_Missing var_198
  loc_732DA3: LitVar_Missing var_178
  loc_732DA6: LitVar_Missing var_158
  loc_732DA9: LitVar_Missing var_138
  loc_732DAC: LitVar_Missing var_118
  loc_732DAF: LitVar_Missing var_E4
  loc_732DB2: LitVar_Missing var_BC
  loc_732DB5: LitVar_Missing var_AC
  loc_732DB8: LitStr "CIERRE SOLICITADO, VENTAS IMPAGAS ..."
  loc_732DBB: FStStrCopy var_C0
  loc_732DBE: FLdRfVar var_C0
  loc_732DC1: LitI4 &H34
  loc_732DC6: PopTmpLdAdStr var_C4
  loc_732DC9: LitI2_Byte 1
  loc_732DCB: PopTmpLdAd2 var_E6
  loc_732DCE: ImpAdLdRf MemVar_74C7D0
  loc_732DD1: NewIfNullPr clsMsg
  loc_732DD4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732DD9: ILdRf var_1DC
  loc_732DDC: FLdPr Me
  loc_732DDF: MemStStrCopy
  loc_732DE3: FFreeStr var_C0 = ""
  loc_732DEA: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732E01: FLdRfVar var_1DC
  loc_732E04: LitVar_Missing var_1D8
  loc_732E07: LitVar_Missing var_1B8
  loc_732E0A: LitVar_Missing var_198
  loc_732E0D: LitVar_Missing var_178
  loc_732E10: LitVar_Missing var_158
  loc_732E13: LitVar_Missing var_138
  loc_732E16: LitVar_Missing var_118
  loc_732E19: LitVar_Missing var_E4
  loc_732E1C: LitVar_Missing var_BC
  loc_732E1F: LitVar_Missing var_AC
  loc_732E22: LitStr "ESPERANDO FINALIZACION DE DESPACHOS ..."
  loc_732E25: FStStrCopy var_C0
  loc_732E28: FLdRfVar var_C0
  loc_732E2B: LitI4 &H35
  loc_732E30: PopTmpLdAdStr var_C4
  loc_732E33: LitI2_Byte 1
  loc_732E35: PopTmpLdAd2 var_E6
  loc_732E38: ImpAdLdRf MemVar_74C7D0
  loc_732E3B: NewIfNullPr clsMsg
  loc_732E3E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732E43: ILdRf var_1DC
  loc_732E46: FLdPr Me
  loc_732E49: MemStStrCopy
  loc_732E4D: FFreeStr var_C0 = ""
  loc_732E54: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732E6B: FLdRfVar var_1DC
  loc_732E6E: LitVar_Missing var_1D8
  loc_732E71: LitVar_Missing var_1B8
  loc_732E74: LitVar_Missing var_198
  loc_732E77: LitVar_Missing var_178
  loc_732E7A: LitVar_Missing var_158
  loc_732E7D: LitVar_Missing var_138
  loc_732E80: LitVar_Missing var_118
  loc_732E83: LitVar_Missing var_E4
  loc_732E86: LitVar_Missing var_BC
  loc_732E89: LitVar_Missing var_AC
  loc_732E8C: LitStr "El turno no contiene ventas"
  loc_732E8F: FStStrCopy var_C0
  loc_732E92: FLdRfVar var_C0
  loc_732E95: LitI4 &H36
  loc_732E9A: PopTmpLdAdStr var_C4
  loc_732E9D: LitI2_Byte 1
  loc_732E9F: PopTmpLdAd2 var_E6
  loc_732EA2: ImpAdLdRf MemVar_74C7D0
  loc_732EA5: NewIfNullPr clsMsg
  loc_732EA8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732EAD: ILdRf var_1DC
  loc_732EB0: FLdPr Me
  loc_732EB3: MemStStrCopy
  loc_732EB7: FFreeStr var_C0 = ""
  loc_732EBE: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732ED5: FLdRfVar var_1DC
  loc_732ED8: LitVar_Missing var_1D8
  loc_732EDB: LitVar_Missing var_1B8
  loc_732EDE: LitVar_Missing var_198
  loc_732EE1: LitVar_Missing var_178
  loc_732EE4: LitVar_Missing var_158
  loc_732EE7: LitVar_Missing var_138
  loc_732EEA: LitVar_Missing var_118
  loc_732EED: LitVar_Missing var_E4
  loc_732EF0: LitVar_Missing var_BC
  loc_732EF3: LitVar_Missing var_AC
  loc_732EF6: LitStr "Error en la conversión de archivos."
  loc_732EF9: FStStrCopy var_C0
  loc_732EFC: FLdRfVar var_C0
  loc_732EFF: LitI4 &H37
  loc_732F04: PopTmpLdAdStr var_C4
  loc_732F07: LitI2_Byte 1
  loc_732F09: PopTmpLdAd2 var_E6
  loc_732F0C: ImpAdLdRf MemVar_74C7D0
  loc_732F0F: NewIfNullPr clsMsg
  loc_732F12: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732F17: ILdRf var_1DC
  loc_732F1A: FLdPr Me
  loc_732F1D: MemStStrCopy
  loc_732F21: FFreeStr var_C0 = ""
  loc_732F28: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732F3F: FLdRfVar var_1DC
  loc_732F42: LitVar_Missing var_1D8
  loc_732F45: LitVar_Missing var_1B8
  loc_732F48: LitVar_Missing var_198
  loc_732F4B: LitVar_Missing var_178
  loc_732F4E: LitVar_Missing var_158
  loc_732F51: LitVar_Missing var_138
  loc_732F54: LitVar_Missing var_118
  loc_732F57: LitVar_Missing var_E4
  loc_732F5A: LitVar_Missing var_BC
  loc_732F5D: LitVar_Missing var_AC
  loc_732F60: LitStr "Se ha intentado abrir un archivo inexistente."
  loc_732F63: FStStrCopy var_C0
  loc_732F66: FLdRfVar var_C0
  loc_732F69: LitI4 &H38
  loc_732F6E: PopTmpLdAdStr var_C4
  loc_732F71: LitI2_Byte 1
  loc_732F73: PopTmpLdAd2 var_E6
  loc_732F76: ImpAdLdRf MemVar_74C7D0
  loc_732F79: NewIfNullPr clsMsg
  loc_732F7C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732F81: ILdRf var_1DC
  loc_732F84: FLdPr Me
  loc_732F87: MemStStrCopy
  loc_732F8B: FFreeStr var_C0 = ""
  loc_732F92: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_732FA9: FLdRfVar var_1DC
  loc_732FAC: LitVar_Missing var_1D8
  loc_732FAF: LitVar_Missing var_1B8
  loc_732FB2: LitVar_Missing var_198
  loc_732FB5: LitVar_Missing var_178
  loc_732FB8: LitVar_Missing var_158
  loc_732FBB: LitVar_Missing var_138
  loc_732FBE: LitVar_Missing var_118
  loc_732FC1: LitVar_Missing var_E4
  loc_732FC4: LitVar_Missing var_BC
  loc_732FC7: LitVar_Missing var_AC
  loc_732FCA: LitStr "Ya se ha mandado imprimir el reporte. Aguarde a que finalice la impresión."
  loc_732FCD: FStStrCopy var_C0
  loc_732FD0: FLdRfVar var_C0
  loc_732FD3: LitI4 &H39
  loc_732FD8: PopTmpLdAdStr var_C4
  loc_732FDB: LitI2_Byte 1
  loc_732FDD: PopTmpLdAd2 var_E6
  loc_732FE0: ImpAdLdRf MemVar_74C7D0
  loc_732FE3: NewIfNullPr clsMsg
  loc_732FE6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_732FEB: ILdRf var_1DC
  loc_732FEE: FLdPr Me
  loc_732FF1: MemStStrCopy
  loc_732FF5: FFreeStr var_C0 = ""
  loc_732FFC: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_733013: FLdRfVar var_1DC
  loc_733016: LitVar_Missing var_1D8
  loc_733019: LitVar_Missing var_1B8
  loc_73301C: LitVar_Missing var_198
  loc_73301F: LitVar_Missing var_178
  loc_733022: LitVar_Missing var_158
  loc_733025: LitVar_Missing var_138
  loc_733028: LitVar_Missing var_118
  loc_73302B: LitVar_Missing var_E4
  loc_73302E: LitVar_Missing var_BC
  loc_733031: LitVar_Missing var_AC
  loc_733034: LitStr "No se puede reimprimir un ticket. Verifique por favor."
  loc_733037: FStStrCopy var_C0
  loc_73303A: FLdRfVar var_C0
  loc_73303D: LitI4 &H3A
  loc_733042: PopTmpLdAdStr var_C4
  loc_733045: LitI2_Byte 1
  loc_733047: PopTmpLdAd2 var_E6
  loc_73304A: ImpAdLdRf MemVar_74C7D0
  loc_73304D: NewIfNullPr clsMsg
  loc_733050: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733055: ILdRf var_1DC
  loc_733058: FLdPr Me
  loc_73305B: MemStStrCopy
  loc_73305F: FFreeStr var_C0 = ""
  loc_733066: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73307D: FLdRfVar var_1DC
  loc_733080: LitVar_Missing var_1D8
  loc_733083: LitVar_Missing var_1B8
  loc_733086: LitVar_Missing var_198
  loc_733089: LitVar_Missing var_178
  loc_73308C: LitVar_Missing var_158
  loc_73308F: LitVar_Missing var_138
  loc_733092: LitVar_Missing var_118
  loc_733095: LitVar_Missing var_E4
  loc_733098: LitVar_Missing var_BC
  loc_73309B: LitVar_Missing var_AC
  loc_73309E: LitStr "Surtidor"
  loc_7330A1: FStStrCopy var_C0
  loc_7330A4: FLdRfVar var_C0
  loc_7330A7: LitI4 &H3B
  loc_7330AC: PopTmpLdAdStr var_C4
  loc_7330AF: LitI2_Byte 1
  loc_7330B1: PopTmpLdAd2 var_E6
  loc_7330B4: ImpAdLdRf MemVar_74C7D0
  loc_7330B7: NewIfNullPr clsMsg
  loc_7330BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7330BF: ILdRf var_1DC
  loc_7330C2: FLdPr Me
  loc_7330C5: MemStStrCopy
  loc_7330C9: FFreeStr var_C0 = ""
  loc_7330D0: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7330E7: FLdRfVar var_1DC
  loc_7330EA: LitVar_Missing var_1D8
  loc_7330ED: LitVar_Missing var_1B8
  loc_7330F0: LitVar_Missing var_198
  loc_7330F3: LitVar_Missing var_178
  loc_7330F6: LitVar_Missing var_158
  loc_7330F9: LitVar_Missing var_138
  loc_7330FC: LitVar_Missing var_118
  loc_7330FF: LitVar_Missing var_E4
  loc_733102: LitVar_Missing var_BC
  loc_733105: LitVar_Missing var_AC
  loc_733108: LitStr "Error pagando el despacho"
  loc_73310B: FStStrCopy var_C0
  loc_73310E: FLdRfVar var_C0
  loc_733111: LitI4 &H3C
  loc_733116: PopTmpLdAdStr var_C4
  loc_733119: LitI2_Byte 1
  loc_73311B: PopTmpLdAd2 var_E6
  loc_73311E: ImpAdLdRf MemVar_74C7D0
  loc_733121: NewIfNullPr clsMsg
  loc_733124: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733129: ILdRf var_1DC
  loc_73312C: FLdPr Me
  loc_73312F: MemStStrCopy
  loc_733133: FFreeStr var_C0 = ""
  loc_73313A: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_733151: FLdRfVar var_1DC
  loc_733154: LitVar_Missing var_1D8
  loc_733157: LitVar_Missing var_1B8
  loc_73315A: LitVar_Missing var_198
  loc_73315D: LitVar_Missing var_178
  loc_733160: LitVar_Missing var_158
  loc_733163: LitVar_Missing var_138
  loc_733166: LitVar_Missing var_118
  loc_733169: LitVar_Missing var_E4
  loc_73316C: LitVar_Missing var_BC
  loc_73316F: LitVar_Missing var_AC
  loc_733172: LitStr "Esta venta es una prueba de surtidor con retorno. Es imposible modificarla."
  loc_733175: FStStrCopy var_C0
  loc_733178: FLdRfVar var_C0
  loc_73317B: LitI4 &H3D
  loc_733180: PopTmpLdAdStr var_C4
  loc_733183: LitI2_Byte 1
  loc_733185: PopTmpLdAd2 var_E6
  loc_733188: ImpAdLdRf MemVar_74C7D0
  loc_73318B: NewIfNullPr clsMsg
  loc_73318E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733193: ILdRf var_1DC
  loc_733196: FLdPr Me
  loc_733199: MemStStrCopy
  loc_73319D: FFreeStr var_C0 = ""
  loc_7331A4: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7331BB: FLdRfVar var_1DC
  loc_7331BE: LitVar_Missing var_1D8
  loc_7331C1: LitVar_Missing var_1B8
  loc_7331C4: LitVar_Missing var_198
  loc_7331C7: LitVar_Missing var_178
  loc_7331CA: LitVar_Missing var_158
  loc_7331CD: LitVar_Missing var_138
  loc_7331D0: LitVar_Missing var_118
  loc_7331D3: LitVar_Missing var_E4
  loc_7331D6: LitVar_Missing var_BC
  loc_7331D9: LitVar_Missing var_AC
  loc_7331DC: LitStr "Esta venta es una prueba de surtidor sin retorno. Es imposible modificarla."
  loc_7331DF: FStStrCopy var_C0
  loc_7331E2: FLdRfVar var_C0
  loc_7331E5: LitI4 &H3E
  loc_7331EA: PopTmpLdAdStr var_C4
  loc_7331ED: LitI2_Byte 1
  loc_7331EF: PopTmpLdAd2 var_E6
  loc_7331F2: ImpAdLdRf MemVar_74C7D0
  loc_7331F5: NewIfNullPr clsMsg
  loc_7331F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7331FD: ILdRf var_1DC
  loc_733200: FLdPr Me
  loc_733203: MemStStrCopy
  loc_733207: FFreeStr var_C0 = ""
  loc_73320E: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_733225: FLdRfVar var_1DC
  loc_733228: LitVar_Missing var_1D8
  loc_73322B: LitVar_Missing var_1B8
  loc_73322E: LitVar_Missing var_198
  loc_733231: LitVar_Missing var_178
  loc_733234: LitVar_Missing var_158
  loc_733237: LitVar_Missing var_138
  loc_73323A: LitVar_Missing var_118
  loc_73323D: LitVar_Missing var_E4
  loc_733240: LitVar_Missing var_BC
  loc_733243: LitVar_Missing var_AC
  loc_733246: LitStr "Este despacho ha sido pagado, desea modificarlo"
  loc_733249: FStStrCopy var_C0
  loc_73324C: FLdRfVar var_C0
  loc_73324F: LitI4 &H3F
  loc_733254: PopTmpLdAdStr var_C4
  loc_733257: LitI2_Byte 1
  loc_733259: PopTmpLdAd2 var_E6
  loc_73325C: ImpAdLdRf MemVar_74C7D0
  loc_73325F: NewIfNullPr clsMsg
  loc_733262: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733267: ILdRf var_1DC
  loc_73326A: FLdPr Me
  loc_73326D: MemStStrCopy
  loc_733271: FFreeStr var_C0 = ""
  loc_733278: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_73328F: FLdRfVar var_1DC
  loc_733292: LitVar_Missing var_1D8
  loc_733295: LitVar_Missing var_1B8
  loc_733298: LitVar_Missing var_198
  loc_73329B: LitVar_Missing var_178
  loc_73329E: LitVar_Missing var_158
  loc_7332A1: LitVar_Missing var_138
  loc_7332A4: LitVar_Missing var_118
  loc_7332A7: LitVar_Missing var_E4
  loc_7332AA: LitVar_Missing var_BC
  loc_7332AD: LitVar_Missing var_AC
  loc_7332B0: LitStr "Emergencia General"
  loc_7332B3: FStStrCopy var_C0
  loc_7332B6: FLdRfVar var_C0
  loc_7332B9: LitI4 &H40
  loc_7332BE: PopTmpLdAdStr var_C4
  loc_7332C1: LitI2_Byte 1
  loc_7332C3: PopTmpLdAd2 var_E6
  loc_7332C6: ImpAdLdRf MemVar_74C7D0
  loc_7332C9: NewIfNullPr clsMsg
  loc_7332CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7332D1: FLdZeroAd var_1DC
  loc_7332D4: CVarStr var_1EC
  loc_7332D7: PopAdLdVar
  loc_7332D8: FLdPrThis
  loc_7332D9: VCallAd Control_ID_Emergencia
  loc_7332DC: FStAdFunc var_8C
  loc_7332DF: FLdPr var_8C
  loc_7332E2: LateIdSt
  loc_7332E7: FFree1Str var_C0
  loc_7332EA: FFree1Ad var_8C
  loc_7332ED: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_733306: FLdRfVar var_1DC
  loc_733309: LitVar_Missing var_1D8
  loc_73330C: LitVar_Missing var_1B8
  loc_73330F: LitVar_Missing var_198
  loc_733312: LitVar_Missing var_178
  loc_733315: LitVar_Missing var_158
  loc_733318: LitVar_Missing var_138
  loc_73331B: LitVar_Missing var_118
  loc_73331E: LitVar_Missing var_E4
  loc_733321: LitVar_Missing var_BC
  loc_733324: LitVar_Missing var_AC
  loc_733327: LitStr "Preautorizacion General"
  loc_73332A: FStStrCopy var_C0
  loc_73332D: FLdRfVar var_C0
  loc_733330: LitI4 &H41
  loc_733335: PopTmpLdAdStr var_C4
  loc_733338: LitI2_Byte 1
  loc_73333A: PopTmpLdAd2 var_E6
  loc_73333D: ImpAdLdRf MemVar_74C7D0
  loc_733340: NewIfNullPr clsMsg
  loc_733343: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733348: FLdZeroAd var_1DC
  loc_73334B: CVarStr var_1EC
  loc_73334E: PopAdLdVar
  loc_73334F: FLdPrThis
  loc_733350: VCallAd Control_ID_Preautorizacion
  loc_733353: FStAdFunc var_8C
  loc_733356: FLdPr var_8C
  loc_733359: LateIdSt
  loc_73335E: FFree1Str var_C0
  loc_733361: FFree1Ad var_8C
  loc_733364: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_73337D: FLdRfVar var_1DC
  loc_733380: LitVar_Missing var_1D8
  loc_733383: LitVar_Missing var_1B8
  loc_733386: LitVar_Missing var_198
  loc_733389: LitVar_Missing var_178
  loc_73338C: LitVar_Missing var_158
  loc_73338F: LitVar_Missing var_138
  loc_733392: LitVar_Missing var_118
  loc_733395: LitVar_Missing var_E4
  loc_733398: LitVar_Missing var_BC
  loc_73339B: LitVar_Missing var_AC
  loc_73339E: LitStr "Autorizacion General"
  loc_7333A1: FStStrCopy var_C0
  loc_7333A4: FLdRfVar var_C0
  loc_7333A7: LitI4 &H42
  loc_7333AC: PopTmpLdAdStr var_C4
  loc_7333AF: LitI2_Byte 1
  loc_7333B1: PopTmpLdAd2 var_E6
  loc_7333B4: ImpAdLdRf MemVar_74C7D0
  loc_7333B7: NewIfNullPr clsMsg
  loc_7333BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7333BF: FLdZeroAd var_1DC
  loc_7333C2: CVarStr var_1EC
  loc_7333C5: PopAdLdVar
  loc_7333C6: FLdPrThis
  loc_7333C7: VCallAd Control_ID_BAutorizacion
  loc_7333CA: FStAdFunc var_8C
  loc_7333CD: FLdPr var_8C
  loc_7333D0: LateIdSt
  loc_7333D5: FFree1Str var_C0
  loc_7333D8: FFree1Ad var_8C
  loc_7333DB: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7333F4: FLdRfVar var_1DC
  loc_7333F7: LitVar_Missing var_1D8
  loc_7333FA: LitVar_Missing var_1B8
  loc_7333FD: LitVar_Missing var_198
  loc_733400: LitVar_Missing var_178
  loc_733403: LitVar_Missing var_158
  loc_733406: LitVar_Missing var_138
  loc_733409: LitVar_Missing var_118
  loc_73340C: LitVar_Missing var_E4
  loc_73340F: LitVar_Missing var_BC
  loc_733412: LitVar_Missing var_AC
  loc_733415: LitStr "Tanques"
  loc_733418: FStStrCopy var_C0
  loc_73341B: FLdRfVar var_C0
  loc_73341E: LitI4 &H43
  loc_733423: PopTmpLdAdStr var_C4
  loc_733426: LitI2_Byte 1
  loc_733428: PopTmpLdAd2 var_E6
  loc_73342B: ImpAdLdRf MemVar_74C7D0
  loc_73342E: NewIfNullPr clsMsg
  loc_733431: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733436: FLdZeroAd var_1DC
  loc_733439: CVarStr var_1EC
  loc_73343C: PopAdLdVar
  loc_73343D: FLdPrThis
  loc_73343E: VCallAd Control_ID_SSCommand5
  loc_733441: FStAdFunc var_8C
  loc_733444: FLdPr var_8C
  loc_733447: LateIdSt
  loc_73344C: FFree1Str var_C0
  loc_73344F: FFree1Ad var_8C
  loc_733452: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_73346B: FLdRfVar var_1DC
  loc_73346E: LitVar_Missing var_1D8
  loc_733471: LitVar_Missing var_1B8
  loc_733474: LitVar_Missing var_198
  loc_733477: LitVar_Missing var_178
  loc_73347A: LitVar_Missing var_158
  loc_73347D: LitVar_Missing var_138
  loc_733480: LitVar_Missing var_118
  loc_733483: LitVar_Missing var_E4
  loc_733486: LitVar_Missing var_BC
  loc_733489: LitVar_Missing var_AC
  loc_73348C: LitStr "Preset"
  loc_73348F: FStStrCopy var_C0
  loc_733492: FLdRfVar var_C0
  loc_733495: LitI4 &H44
  loc_73349A: PopTmpLdAdStr var_C4
  loc_73349D: LitI2_Byte 1
  loc_73349F: PopTmpLdAd2 var_E6
  loc_7334A2: ImpAdLdRf MemVar_74C7D0
  loc_7334A5: NewIfNullPr clsMsg
  loc_7334A8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7334AD: FLdZeroAd var_1DC
  loc_7334B0: CVarStr var_1EC
  loc_7334B3: PopAdLdVar
  loc_7334B4: FLdPrThis
  loc_7334B5: VCallAd Control_ID_SSCommand6
  loc_7334B8: FStAdFunc var_8C
  loc_7334BB: FLdPr var_8C
  loc_7334BE: LateIdSt
  loc_7334C3: FFree1Str var_C0
  loc_7334C6: FFree1Ad var_8C
  loc_7334C9: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7334E2: FLdRfVar var_1DC
  loc_7334E5: LitVar_Missing var_1D8
  loc_7334E8: LitVar_Missing var_1B8
  loc_7334EB: LitVar_Missing var_198
  loc_7334EE: LitVar_Missing var_178
  loc_7334F1: LitVar_Missing var_158
  loc_7334F4: LitVar_Missing var_138
  loc_7334F7: LitVar_Missing var_118
  loc_7334FA: LitVar_Missing var_E4
  loc_7334FD: LitVar_Missing var_BC
  loc_733500: LitVar_Missing var_AC
  loc_733503: LitStr "Estadisticas"
  loc_733506: FStStrCopy var_C0
  loc_733509: FLdRfVar var_C0
  loc_73350C: LitI4 &H45
  loc_733511: PopTmpLdAdStr var_C4
  loc_733514: LitI2_Byte 1
  loc_733516: PopTmpLdAd2 var_E6
  loc_733519: ImpAdLdRf MemVar_74C7D0
  loc_73351C: NewIfNullPr clsMsg
  loc_73351F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733524: FLdZeroAd var_1DC
  loc_733527: CVarStr var_1EC
  loc_73352A: PopAdLdVar
  loc_73352B: FLdPrThis
  loc_73352C: VCallAd Control_ID_SSCommand7
  loc_73352F: FStAdFunc var_8C
  loc_733532: FLdPr var_8C
  loc_733535: LateIdSt
  loc_73353A: FFree1Str var_C0
  loc_73353D: FFree1Ad var_8C
  loc_733540: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_733559: FLdRfVar var_1DC
  loc_73355C: LitVar_Missing var_1D8
  loc_73355F: LitVar_Missing var_1B8
  loc_733562: LitVar_Missing var_198
  loc_733565: LitVar_Missing var_178
  loc_733568: LitVar_Missing var_158
  loc_73356B: LitVar_Missing var_138
  loc_73356E: LitVar_Missing var_118
  loc_733571: LitVar_Missing var_E4
  loc_733574: LitVar_Missing var_BC
  loc_733577: LitVar_Missing var_AC
  loc_73357A: LitStr "Ventas"
  loc_73357D: FStStrCopy var_C0
  loc_733580: FLdRfVar var_C0
  loc_733583: LitI4 &H46
  loc_733588: PopTmpLdAdStr var_C4
  loc_73358B: LitI2_Byte 1
  loc_73358D: PopTmpLdAd2 var_E6
  loc_733590: ImpAdLdRf MemVar_74C7D0
  loc_733593: NewIfNullPr clsMsg
  loc_733596: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73359B: FLdZeroAd var_1DC
  loc_73359E: CVarStr var_1EC
  loc_7335A1: PopAdLdVar
  loc_7335A2: FLdPrThis
  loc_7335A3: VCallAd Control_ID_SSCommand8
  loc_7335A6: FStAdFunc var_8C
  loc_7335A9: FLdPr var_8C
  loc_7335AC: LateIdSt
  loc_7335B1: FFree1Str var_C0
  loc_7335B4: FFree1Ad var_8C
  loc_7335B7: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7335D0: FLdRfVar var_1DC
  loc_7335D3: LitVar_Missing var_1D8
  loc_7335D6: LitVar_Missing var_1B8
  loc_7335D9: LitVar_Missing var_198
  loc_7335DC: LitVar_Missing var_178
  loc_7335DF: LitVar_Missing var_158
  loc_7335E2: LitVar_Missing var_138
  loc_7335E5: LitVar_Missing var_118
  loc_7335E8: LitVar_Missing var_E4
  loc_7335EB: LitVar_Missing var_BC
  loc_7335EE: LitVar_Missing var_AC
  loc_7335F1: LitStr "Configuracion"
  loc_7335F4: FStStrCopy var_C0
  loc_7335F7: FLdRfVar var_C0
  loc_7335FA: LitI4 &H47
  loc_7335FF: PopTmpLdAdStr var_C4
  loc_733602: LitI2_Byte 1
  loc_733604: PopTmpLdAd2 var_E6
  loc_733607: ImpAdLdRf MemVar_74C7D0
  loc_73360A: NewIfNullPr clsMsg
  loc_73360D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733612: FLdZeroAd var_1DC
  loc_733615: CVarStr var_1EC
  loc_733618: PopAdLdVar
  loc_733619: FLdPrThis
  loc_73361A: VCallAd Control_ID_SSCommand9
  loc_73361D: FStAdFunc var_8C
  loc_733620: FLdPr var_8C
  loc_733623: LateIdSt
  loc_733628: FFree1Str var_C0
  loc_73362B: FFree1Ad var_8C
  loc_73362E: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_733647: FLdRfVar var_1DC
  loc_73364A: LitVar_Missing var_1D8
  loc_73364D: LitVar_Missing var_1B8
  loc_733650: LitVar_Missing var_198
  loc_733653: LitVar_Missing var_178
  loc_733656: LitVar_Missing var_158
  loc_733659: LitVar_Missing var_138
  loc_73365C: LitVar_Missing var_118
  loc_73365F: LitVar_Missing var_E4
  loc_733662: LitVar_Missing var_BC
  loc_733665: LitVar_Missing var_AC
  loc_733668: LitStr "Consola"
  loc_73366B: FStStrCopy var_C0
  loc_73366E: FLdRfVar var_C0
  loc_733671: LitI4 &H48
  loc_733676: PopTmpLdAdStr var_C4
  loc_733679: LitI2_Byte 1
  loc_73367B: PopTmpLdAd2 var_E6
  loc_73367E: ImpAdLdRf MemVar_74C7D0
  loc_733681: NewIfNullPr clsMsg
  loc_733684: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_733689: ILdRf var_1DC
  loc_73368C: FLdPr Me
  loc_73368F: Me.Caption = from_stack_1
  loc_733694: FFreeStr var_C0 = ""
  loc_73369B: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7336B2: FLdRfVar var_1DC
  loc_7336B5: LitVar_Missing var_1D8
  loc_7336B8: LitVar_Missing var_1B8
  loc_7336BB: LitVar_Missing var_198
  loc_7336BE: LitVar_Missing var_178
  loc_7336C1: LitVar_Missing var_158
  loc_7336C4: LitVar_Missing var_138
  loc_7336C7: LitVar_Missing var_118
  loc_7336CA: LitVar_Missing var_E4
  loc_7336CD: LitVar_Missing var_BC
  loc_7336D0: LitVar_Missing var_AC
  loc_7336D3: LitStr "Cambio Manifold"
  loc_7336D6: FStStrCopy var_C0
  loc_7336D9: FLdRfVar var_C0
  loc_7336DC: LitI4 &H49
  loc_7336E1: PopTmpLdAdStr var_C4
  loc_7336E4: LitI2_Byte 1
  loc_7336E6: PopTmpLdAd2 var_E6
  loc_7336E9: ImpAdLdRf MemVar_74C7D0
  loc_7336EC: NewIfNullPr clsMsg
  loc_7336EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7336F4: FLdZeroAd var_1DC
  loc_7336F7: CVarStr var_1EC
  loc_7336FA: PopAdLdVar
  loc_7336FB: FLdPrThis
  loc_7336FC: VCallAd Control_ID_CambioManifold
  loc_7336FF: FStAdFunc var_8C
  loc_733702: FLdPr var_8C
  loc_733705: LateIdSt
  loc_73370A: FFree1Str var_C0
  loc_73370D: FFree1Ad var_8C
  loc_733710: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_733729: FLdRfVar var_1DC
  loc_73372C: LitVar_Missing var_1D8
  loc_73372F: LitVar_Missing var_1B8
  loc_733732: LitVar_Missing var_198
  loc_733735: LitVar_Missing var_178
  loc_733738: LitVar_Missing var_158
  loc_73373B: LitVar_Missing var_138
  loc_73373E: LitVar_Missing var_118
  loc_733741: LitVar_Missing var_E4
  loc_733744: LitVar_Missing var_BC
  loc_733747: LitVar_Missing var_AC
  loc_73374A: LitStr "Platino"
  loc_73374D: FStStrCopy var_C0
  loc_733750: FLdRfVar var_C0
  loc_733753: LitI4 &H59
  loc_733758: PopTmpLdAdStr var_C4
  loc_73375B: LitI2_Byte 1
  loc_73375D: PopTmpLdAd2 var_E6
  loc_733760: ImpAdLdRf MemVar_74C7D0
  loc_733763: NewIfNullPr clsMsg
  loc_733766: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73376B: ILdRf var_1DC
  loc_73376E: FLdPr Me
  loc_733771: MemStStrCopy
  loc_733775: FFreeStr var_C0 = ""
  loc_73377C: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_733793: FLdRfVar var_1DC
  loc_733796: LitVar_Missing var_1D8
  loc_733799: LitVar_Missing var_1B8
  loc_73379C: LitVar_Missing var_198
  loc_73379F: LitVar_Missing var_178
  loc_7337A2: LitVar_Missing var_158
  loc_7337A5: LitVar_Missing var_138
  loc_7337A8: LitVar_Missing var_118
  loc_7337AB: LitVar_Missing var_E4
  loc_7337AE: LitVar_Missing var_BC
  loc_7337B1: LitVar_Missing var_AC
  loc_7337B4: LitStr "Platino prepago"
  loc_7337B7: FStStrCopy var_C0
  loc_7337BA: FLdRfVar var_C0
  loc_7337BD: LitI4 &H5A
  loc_7337C2: PopTmpLdAdStr var_C4
  loc_7337C5: LitI2_Byte 1
  loc_7337C7: PopTmpLdAd2 var_E6
  loc_7337CA: ImpAdLdRf MemVar_74C7D0
  loc_7337CD: NewIfNullPr clsMsg
  loc_7337D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7337D5: ILdRf var_1DC
  loc_7337D8: FLdPr Me
  loc_7337DB: MemStStrCopy
  loc_7337DF: FFreeStr var_C0 = ""
  loc_7337E6: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7337FD: FLdRfVar var_1DC
  loc_733800: LitVar_Missing var_1D8
  loc_733803: LitVar_Missing var_1B8
  loc_733806: LitVar_Missing var_198
  loc_733809: LitVar_Missing var_178
  loc_73380C: LitVar_Missing var_158
  loc_73380F: LitVar_Missing var_138
  loc_733812: LitVar_Missing var_118
  loc_733815: LitVar_Missing var_E4
  loc_733818: LitVar_Missing var_BC
  loc_73381B: LitVar_Missing var_AC
  loc_73381E: LitStr "Se llego al limite de ventas impagas."
  loc_733821: FStStrCopy var_C0
  loc_733824: FLdRfVar var_C0
  loc_733827: LitI4 &H5B
  loc_73382C: PopTmpLdAdStr var_C4
  loc_73382F: LitI2_Byte 1
  loc_733831: PopTmpLdAd2 var_E6
  loc_733834: ImpAdLdRf MemVar_74C7D0
  loc_733837: NewIfNullPr clsMsg
  loc_73383A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73383F: ILdRf var_1DC
  loc_733842: FLdPrThis
  loc_733843: VCallAd Control_ID_lbNotPayedSales
  loc_733846: FStAdFunc var_8C
  loc_733849: FLdPr var_8C
  loc_73384C: Me.Caption = from_stack_1
  loc_733851: FFreeStr var_C0 = ""
  loc_733858: FFree1Ad var_8C
  loc_73385B: FFreeVar var_AC = "": var_BC = "": var_E4 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_733872: FLdPrThis
  loc_733873: VCallAd Control_ID_picAviso
  loc_733876: FStAdFunc var_294
  loc_733879: FLdRfVar var_C0
  loc_73387C: FLdRfVar var_8C
  loc_73387F: ImpAdLdRf MemVar_7520D4
  loc_733882: NewIfNullPr Global
  loc_733885:  = Global.App
  loc_73388A: FLdPr var_8C
  loc_73388D:  = App.Path
  loc_733892: ILdRf var_C0
  loc_733895: LitStr "\Aviso de Exceso.ico"
  loc_733898: ConcatStr
  loc_733899: FStStrNoPop var_1DC
  loc_73389C: FLdZeroAd var_294
  loc_73389F: FStAdFunc var_1F0
  loc_7338A2: FLdRfVar var_1F0
  loc_7338A5: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_7338AA: FFreeStr var_C0 = ""
  loc_7338B1: FFreeAd var_8C = "": var_1F0 = ""
  loc_7338BA: LitI2_Byte 0
  loc_7338BC: FLdPrThis
  loc_7338BD: VCallAd Control_ID_picAviso
  loc_7338C0: FStAdFunc var_8C
  loc_7338C3: FLdPr var_8C
  loc_7338C6: Me.Visible = from_stack_1b
  loc_7338CB: FFree1Ad var_8C
  loc_7338CE: LitI2_Byte 0
  loc_7338D0: FLdPr Me
  loc_7338D3: MemStI2 global_110
  loc_7338D6: LitI2_Byte 0
  loc_7338D8: CUI1I2
  loc_7338DA: FLdPr Me
  loc_7338DD: MemStUI1
  loc_7338E1: LitStr "  CONSOLA"
  loc_7338E4: FLdPrThis
  loc_7338E5: Me.Caption = from_stack_1
  loc_7338EA: LitI2_Byte 0
  loc_7338EC: FLdPr Me
  loc_7338EF: MemStI2 global_112
  loc_7338F2: LitStr "Total "
  loc_7338F5: ImpAdLdI4 MemVar_74BEC0
  loc_7338F8: ConcatStr
  loc_7338F9: FStStrNoPop var_C0
  loc_7338FC: FLdRfVar var_1F0
  loc_7338FF: LitI2_Byte 0
  loc_733901: FLdPrThis
  loc_733902: VCallAd Control_ID_Label12
  loc_733905: FStAdFunc var_8C
  loc_733908: FLdPr var_8C
  loc_73390B: Set from_stack_2 = Me(from_stack_1)
  loc_733910: FLdPr var_1F0
  loc_733913: Me.Caption = from_stack_1
  loc_733918: FFree1Str var_C0
  loc_73391B: FFreeAd var_8C = ""
  loc_733922: LitStr "Total "
  loc_733925: ImpAdLdI4 MemVar_74BED0
  loc_733928: ConcatStr
  loc_733929: FStStrNoPop var_C0
  loc_73392C: FLdPrThis
  loc_73392D: VCallAd Control_ID_Label10
  loc_733930: FStAdFunc var_8C
  loc_733933: FLdPr var_8C
  loc_733936: Me.Caption = from_stack_1
  loc_73393B: FFree1Str var_C0
  loc_73393E: FFree1Ad var_8C
  loc_733941: ImpAdLdI4 MemVar_74BEC0
  loc_733944: FLdPrThis
  loc_733945: VCallAd Control_ID_Label4
  loc_733948: FStAdFunc var_8C
  loc_73394B: FLdPr var_8C
  loc_73394E: Me.Caption = from_stack_1
  loc_733953: FFree1Ad var_8C
  loc_733956: ImpAdLdI4 MemVar_74BED0
  loc_733959: FLdPrThis
  loc_73395A: VCallAd Control_ID_Label5
  loc_73395D: FStAdFunc var_8C
  loc_733960: FLdPr var_8C
  loc_733963: Me.Caption = from_stack_1
  loc_733968: FFree1Ad var_8C
  loc_73396B: ImpAdLdI4 MemVar_74BEC0
  loc_73396E: FLdPrThis
  loc_73396F: VCallAd Control_ID_Label6
  loc_733972: FStAdFunc var_8C
  loc_733975: FLdPr var_8C
  loc_733978: Me.Caption = from_stack_1
  loc_73397D: FFree1Ad var_8C
  loc_733980: LitI2_Byte 1
  loc_733982: CUI1I2
  loc_733984: FLdRfVar var_86
  loc_733987: LitI2_Byte 9
  loc_733989: CUI1I2
  loc_73398B: ForUI1 var_298
  loc_733991: ImpAdLdI4 MemVar_74BEC0
  loc_733994: FLdRfVar var_1F0
  loc_733997: FLdUI1
  loc_73399B: CI2UI1
  loc_73399D: FLdPrThis
  loc_73399E: VCallAd Control_ID_lt
  loc_7339A1: FStAdFunc var_8C
  loc_7339A4: FLdPr var_8C
  loc_7339A7: Set from_stack_2 = Me(from_stack_1)
  loc_7339AC: FLdPr var_1F0
  loc_7339AF: Me.Caption = from_stack_1
  loc_7339B4: FFreeAd var_8C = ""
  loc_7339BB: FLdRfVar var_86
  loc_7339BE: NextUI1
  loc_7339C4: LitI2_Byte 1
  loc_7339C6: CUI1I2
  loc_7339C8: FLdPr Me
  loc_7339CB: MemStUI1
  loc_7339CF: from_stack_1v = Proc_161_125_692DB4()
  loc_7339D4: LitI2_Byte 0
  loc_7339D6: CUI1I2
  loc_7339D8: FLdRfVar var_86
  loc_7339DB: LitI2_Byte 9
  loc_7339DD: CUI1I2
  loc_7339DF: ForUI1 var_29C
  loc_7339E5: LitI2_Byte 0
  loc_7339E7: CStrUI1
  loc_7339E9: FStStrNoPop var_C0
  loc_7339EC: FLdRfVar var_1F0
  loc_7339EF: FLdUI1
  loc_7339F3: CI2UI1
  loc_7339F5: FLdPrThis
  loc_7339F6: VCallAd Control_ID_NumeroGrid
  loc_7339F9: FStAdFunc var_8C
  loc_7339FC: FLdPr var_8C
  loc_7339FF: Set from_stack_2 = Me(from_stack_1)
  loc_733A04: FLdPr var_1F0
  loc_733A07: Me.Tag = from_stack_1
  loc_733A0C: FFree1Str var_C0
  loc_733A0F: FFreeAd var_8C = ""
  loc_733A16: FLdRfVar var_86
  loc_733A19: NextUI1
  loc_733A1F: LitI2_Byte 0
  loc_733A21: CUI1I2
  loc_733A23: FLdPr Me
  loc_733A26: MemStUI1
  loc_733A2A: FLdRfVar var_BC
  loc_733A2D: ImpAdCallFPR4  = Date
  loc_733A32: FLdRfVar var_1EC
  loc_733A35: ImpAdCallFPR4  = Time
  loc_733A3A: LitI4 9
  loc_733A3F: FLdRfVar var_AC
  loc_733A42: ImpAdCallFPR4  = Space()
  loc_733A47: FLdRfVar var_AC
  loc_733A4A: LitI4 1
  loc_733A4F: LitI4 1
  loc_733A54: LitVarStr var_9C, "dd / mm / yyyy"
  loc_733A59: FStVarCopyObj var_E4
  loc_733A5C: FLdRfVar var_E4
  loc_733A5F: FLdRfVar var_BC
  loc_733A62: FLdRfVar var_118
  loc_733A65: ImpAdCallFPR4  = Format(, )
  loc_733A6A: FLdRfVar var_118
  loc_733A6D: ConcatVar var_138
  loc_733A71: LitI4 &H28
  loc_733A76: FLdRfVar var_158
  loc_733A79: ImpAdCallFPR4  = Space()
  loc_733A7E: FLdRfVar var_158
  loc_733A81: ConcatVar var_178
  loc_733A85: LitVarStr var_D4, "CEM - 44"
  loc_733A8A: ConcatVar var_198
  loc_733A8E: LitI4 &H32
  loc_733A93: FLdRfVar var_1B8
  loc_733A96: ImpAdCallFPR4  = Space()
  loc_733A9B: FLdRfVar var_1B8
  loc_733A9E: ConcatVar var_1D8
  loc_733AA2: LitI4 1
  loc_733AA7: LitI4 1
  loc_733AAC: LitVarStr var_F8, "HH:MM"
  loc_733AB1: FStVarCopyObj var_200
  loc_733AB4: FLdRfVar var_200
  loc_733AB7: FLdRfVar var_1EC
  loc_733ABA: FLdRfVar var_210
  loc_733ABD: ImpAdCallFPR4  = Format(, )
  loc_733AC2: FLdRfVar var_210
  loc_733AC5: ConcatVar var_230
  loc_733AC9: CStrVarVal var_C0
  loc_733ACD: ImpAdLdRf MemVar_74D8B0
  loc_733AD0: NewIfNullPr Consola
  loc_733AD3: Consola.Caption = from_stack_1
  loc_733AD8: FFree1Str var_C0
  loc_733ADB: FFreeVar var_BC = "": var_E4 = "": var_AC = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1EC = "": var_200 = "": var_1D8 = "": var_210 = ""
  loc_733AFA: LitI2_Byte 1
  loc_733AFC: CUI1I2
  loc_733AFE: FLdPr Me
  loc_733B01: MemStUI1
  loc_733B05: LitI2_Byte 0
  loc_733B07: FLdPr Me
  loc_733B0A: MemStI2 global_102
  loc_733B0D: LitI4 &HFF
  loc_733B12: FLdRfVar var_1F0
  loc_733B15: FLdPr Me
  loc_733B18: MemLdUI1 Surtidor_Actual
  loc_733B1C: CI2UI1
  loc_733B1E: FLdPrThis
  loc_733B1F: VCallAd Control_ID_Nro_Surtidor
  loc_733B22: FStAdFunc var_8C
  loc_733B25: FLdPr var_8C
  loc_733B28: Set from_stack_2 = Me(from_stack_1)
  loc_733B2D: FLdPr var_1F0
  loc_733B30: Me.BackColor = from_stack_1
  loc_733B35: FFreeAd var_8C = ""
  loc_733B3C: ImpAdLdUI1
  loc_733B40: CI2UI1
  loc_733B42: LitI2_Byte &H10
  loc_733B44: GtI2
  loc_733B45: BranchF loc_733B61
  loc_733B48: LitVar_TRUE var_9C
  loc_733B4B: PopAdLdVar
  loc_733B4C: FLdPrThis
  loc_733B4D: VCallAd Control_ID_SSCommand3
  loc_733B50: FStAdFunc var_8C
  loc_733B53: FLdPr var_8C
  loc_733B56: LateIdSt
  loc_733B5B: FFree1Ad var_8C
  loc_733B5E: Branch loc_733B78
  loc_733B61: LitVar_FALSE
  loc_733B65: PopAdLdVar
  loc_733B66: FLdPrThis
  loc_733B67: VCallAd Control_ID_SSCommand3
  loc_733B6A: FStAdFunc var_8C
  loc_733B6D: FLdPr var_8C
  loc_733B70: LateIdSt
  loc_733B75: FFree1Ad var_8C
  loc_733B78: ImpAdCallFPR4 Proc_167_6_749858()
  loc_733B7D: ImpAdLdI2 MemVar_74C7C2
  loc_733B80: BranchF loc_733B9C
  loc_733B83: LitVar_TRUE var_9C
  loc_733B86: PopAdLdVar
  loc_733B87: FLdPrThis
  loc_733B88: VCallAd Control_ID_Ventas
  loc_733B8B: FStAdFunc var_8C
  loc_733B8E: FLdPr var_8C
  loc_733B91: LateIdSt
  loc_733B96: FFree1Ad var_8C
  loc_733B99: Branch loc_733BD1
  loc_733B9C: LitI2_Byte 1
  loc_733B9E: CUI1I2
  loc_733BA0: PopTmpLdAd1
  loc_733BA4: Call RefreshPresetButtons(from_stack_1v)
  loc_733BA9: LitI2_Byte 1
  loc_733BAB: CUI1I2
  loc_733BAD: PopTmpLdAd1
  loc_733BB1: Call RefreshTankButtons(from_stack_1v)
  loc_733BB6: LitI2_Byte 1
  loc_733BB8: CUI1I2
  loc_733BBA: FLdPr Me
  loc_733BBD: MemStUI1
  loc_733BC1: Call SSCommand8_UnknownEvent_8()
  loc_733BC6: LitI2_Byte 0
  loc_733BC8: CUI1I2
  loc_733BCA: FLdPr Me
  loc_733BCD: MemStUI1
  loc_733BD1: LitI2_Byte 1
  loc_733BD3: PopTmpLdAd2 var_E6
  loc_733BD6: Call Nro_Surtidor_Click(from_stack_1v)
  loc_733BDB: LitI2_Byte 0
  loc_733BDD: PopTmpLdAd2 var_E6
  loc_733BE0: Call BotonPreset_UnknownEvent_8()
  loc_733BE5: LitI2_Byte 4
  loc_733BE7: CUI1I2
  loc_733BE9: PopTmpLdAd1
  loc_733BED: LitStr "Initialization Console OK"
  loc_733BF0: FStStrCopy var_C0
  loc_733BF3: FLdRfVar var_C0
  loc_733BF6: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_733BFB: FFree1Str var_C0
  loc_733BFE: LitVar_FALSE
  loc_733C02: PopAdLdVar
  loc_733C03: FLdPrThis
  loc_733C04: VCallAd Control_ID_Sonido
  loc_733C07: FStAdFunc var_8C
  loc_733C0A: FLdPr var_8C
  loc_733C0D: LateIdSt
  loc_733C12: FFree1Ad var_8C
  loc_733C15: LitVar_FALSE
  loc_733C19: PopAdLdVar
  loc_733C1A: FLdPrThis
  loc_733C1B: VCallAd Control_ID_Sonido
  loc_733C1E: FStAdFunc var_8C
  loc_733C21: FLdPr var_8C
  loc_733C24: LateIdSt
  loc_733C29: FFree1Ad var_8C
  loc_733C2C: LitVar_FALSE
  loc_733C30: PopAdLdVar
  loc_733C31: FLdPrThis
  loc_733C32: VCallAd Control_ID_Sonido
  loc_733C35: FStAdFunc var_8C
  loc_733C38: FLdPr var_8C
  loc_733C3B: LateIdSt
  loc_733C40: FFree1Ad var_8C
  loc_733C43: LitVarStr var_9C, "WaveAudio"
  loc_733C48: PopAdLdVar
  loc_733C49: FLdPrThis
  loc_733C4A: VCallAd Control_ID_Sonido
  loc_733C4D: FStAdFunc var_8C
  loc_733C50: FLdPr var_8C
  loc_733C53: LateIdSt
  loc_733C58: FFree1Ad var_8C
  loc_733C5B: LitVarStr var_9C, "Open"
  loc_733C60: PopAdLdVar
  loc_733C61: FLdPrThis
  loc_733C62: VCallAd Control_ID_Sonido
  loc_733C65: FStAdFunc var_8C
  loc_733C68: FLdPr var_8C
  loc_733C6B: LateIdSt
  loc_733C70: FFree1Ad var_8C
  loc_733C73: LitI4 2
  loc_733C78: ImpAdLdRf MemVar_74C050
  loc_733C7B: Ary1LdUI1
  loc_733C7D: CI2UI1
  loc_733C7F: LitI2_Byte 0
  loc_733C81: NeI2
  loc_733C82: BranchF loc_733C9C
  loc_733C85: LitVar_FALSE
  loc_733C89: PopAdLdVar
  loc_733C8A: FLdPrThis
  loc_733C8B: VCallAd Control_ID_Preautorizacion
  loc_733C8E: FStAdFunc var_8C
  loc_733C91: FLdPr var_8C
  loc_733C94: LateIdSt
  loc_733C99: FFree1Ad var_8C
  loc_733C9C: LitI2_Byte &HFF
  loc_733C9E: FLdPr Me
  loc_733CA1: MemStI2 global_98
  loc_733CA4: LitI2_Byte &HFF
  loc_733CA6: FLdPrThis
  loc_733CA7: VCallAd Control_ID_Timer1
  loc_733CAA: FStAdFunc var_8C
  loc_733CAD: FLdPr var_8C
  loc_733CB0: Me.Enabled = from_stack_1b
  loc_733CB5: FFree1Ad var_8C
  loc_733CB8: LitStr "CEM44.INI"
  loc_733CBB: FStStrCopy var_2A0
  loc_733CBE: FLdRfVar var_2A0
  loc_733CC1: LitStr "BUTTONS"
  loc_733CC4: FStStrCopy var_1DC
  loc_733CC7: FLdRfVar var_1DC
  loc_733CCA: LitStr "PRESET"
  loc_733CCD: FStStrCopy var_C0
  loc_733CD0: FLdRfVar var_C0
  loc_733CD3: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_733CD8: FStStrNoPop var_2A4
  loc_733CDB: LitStr "1"
  loc_733CDE: EqStr
  loc_733CE0: FFreeStr var_C0 = "": var_1DC = "": var_2A0 = ""
  loc_733CEB: BranchF loc_733D39
  loc_733CEE: LitVar_TRUE var_9C
  loc_733CF1: PopAdLdVar
  loc_733CF2: FLdPr Me
  loc_733CF5: VCallAd Control_ID_cmdReenviar
  loc_733CF8: FStAdFunc var_8C
  loc_733CFB: FLdPr var_8C
  loc_733CFE: LateIdSt
  loc_733D03: FFree1Ad var_8C
  loc_733D06: LitVar_TRUE var_9C
  loc_733D09: PopAdLdVar
  loc_733D0A: FLdPr Me
  loc_733D0D: VCallAd Control_ID_cmdBorrarPreset
  loc_733D10: FStAdFunc var_8C
  loc_733D13: FLdPr var_8C
  loc_733D16: LateIdSt
  loc_733D1B: FFree1Ad var_8C
  loc_733D1E: LitVar_TRUE var_9C
  loc_733D21: PopAdLdVar
  loc_733D22: FLdPr Me
  loc_733D25: VCallAd Control_ID_cmdBorrarTodo
  loc_733D28: FStAdFunc var_8C
  loc_733D2B: FLdPr var_8C
  loc_733D2E: LateIdSt
  loc_733D33: FFree1Ad var_8C
  loc_733D36: Branch loc_733D84
  loc_733D39: LitVar_FALSE
  loc_733D3D: PopAdLdVar
  loc_733D3E: FLdPr Me
  loc_733D41: VCallAd Control_ID_cmdReenviar
  loc_733D44: FStAdFunc var_8C
  loc_733D47: FLdPr var_8C
  loc_733D4A: LateIdSt
  loc_733D4F: FFree1Ad var_8C
  loc_733D52: LitVar_FALSE
  loc_733D56: PopAdLdVar
  loc_733D57: FLdPr Me
  loc_733D5A: VCallAd Control_ID_cmdBorrarPreset
  loc_733D5D: FStAdFunc var_8C
  loc_733D60: FLdPr var_8C
  loc_733D63: LateIdSt
  loc_733D68: FFree1Ad var_8C
  loc_733D6B: LitVar_FALSE
  loc_733D6F: PopAdLdVar
  loc_733D70: FLdPr Me
  loc_733D73: VCallAd Control_ID_cmdBorrarTodo
  loc_733D76: FStAdFunc var_8C
  loc_733D79: FLdPr var_8C
  loc_733D7C: LateIdSt
  loc_733D81: FFree1Ad var_8C
  loc_733D84: On Error GoTo 0
  loc_733D87: ImpAdLdI2 MemVar_74C7C2
  loc_733D8A: BranchF loc_733DE0
  loc_733D8D: ImpAdLdI4 MemVar_74C7C4
  loc_733D90: LitI4 0
  loc_733D95: EqI4
  loc_733D96: BranchF loc_733DB0
  loc_733D99: LitI2_Byte 0
  loc_733D9B: FLdPrThis
  loc_733D9C: VCallAd Control_ID_Timer1
  loc_733D9F: FStAdFunc var_8C
  loc_733DA2: FLdPr var_8C
  loc_733DA5: Me.Enabled = from_stack_1b
  loc_733DAA: FFree1Ad var_8C
  loc_733DAD: Branch loc_733DC7
  loc_733DB0: LitI4 &HEA60
  loc_733DB5: FLdPrThis
  loc_733DB6: VCallAd Control_ID_Timer1
  loc_733DB9: FStAdFunc var_8C
  loc_733DBC: FLdPr var_8C
  loc_733DBF: Me.Interval = from_stack_1
  loc_733DC4: FFree1Ad var_8C
  loc_733DC7: LitVar_TRUE var_9C
  loc_733DCA: PopAdLdVar
  loc_733DCB: FLdPrThis
  loc_733DCC: VCallAd Control_ID_cmdRefresh
  loc_733DCF: FStAdFunc var_8C
  loc_733DD2: FLdPr var_8C
  loc_733DD5: LateIdSt
  loc_733DDA: FFree1Ad var_8C
  loc_733DDD: Branch loc_733E2C
  loc_733DE0: LitI2 232
  loc_733DE3: CR8I2
  loc_733DE4: CVarR4
  loc_733DE8: PopAdLdVar
  loc_733DE9: FLdPrThis
  loc_733DEA: VCallAd Control_ID_Salir
  loc_733DED: FStAdFunc var_8C
  loc_733DF0: FLdPr var_8C
  loc_733DF3: LateIdSt
  loc_733DF8: FFree1Ad var_8C
  loc_733DFB: FLdPrThis
  loc_733DFC: VCallAd Control_ID_cmdRefresh
  loc_733DFF: FStAdFunc var_8C
  loc_733E02: FLdPr var_8C
  loc_733E05: LateIdLdVar var_AC DispID_3 -32767
  loc_733E0C: CR8Var
  loc_733E0E: CVarR4
  loc_733E12: PopAdLdVar
  loc_733E13: FLdPrThis
  loc_733E14: VCallAd Control_ID_Salir
  loc_733E17: FStAdFunc var_1F0
  loc_733E1A: FLdPr var_1F0
  loc_733E1D: LateIdSt
  loc_733E22: FFreeAd var_8C = ""
  loc_733E29: FFree1Var var_AC = ""
  loc_733E2C: from_stack_1v = Proc_161_130_5CADB4()
  loc_733E31: ImpAdLdI2 MemVar_74C382
  loc_733E34: NotI4
  loc_733E35: BranchF loc_733E3D
  loc_733E38: from_stack_2v = Proc_161_134_70607C(from_stack_1v)
  loc_733E3D: LitI2_Byte 0
  loc_733E3F: ImpAdStI2 MemVar_74C7C8
  loc_733E42: ExitProcHresult
  loc_733E43: FLdRfVar var_C0
  loc_733E46: ImpAdCallI2 Err 'rtcErrObj
  loc_733E4B: FStAdFunc var_8C
  loc_733E4E: FLdPr var_8C
  loc_733E51:  = Err.Description
  loc_733E56: LitI2_Byte 1
  loc_733E58: CUI1I2
  loc_733E5A: PopTmpLdAd1
  loc_733E5E: LitStr "Error loading form "
  loc_733E61: ILdRf var_C0
  loc_733E64: ConcatStr
  loc_733E65: PopTmpLdAdStr
  loc_733E69: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_733E6E: FFreeStr var_C0 = ""
  loc_733E75: FFree1Ad var_8C
  loc_733E78: End
  loc_733E7A: ExitProcHresult
End Sub

Public Function MostrarBotonesMezclas() '60AA20
  'Data Table: 45B254
  loc_60A930: ZeroRetValVar
  loc_60A932: LitI2_Byte 1
  loc_60A934: FStI2 var_98
  loc_60A937: LitI2_Byte 1
  loc_60A939: FLdRfVar var_96
  loc_60A93C: FLdRfVar var_9A
  loc_60A93F: ImpAdLdRf MemVar_74A220
  loc_60A942: NewIfNullPr clsProducts
  loc_60A945: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60A94A: FLdI2 var_9A
  loc_60A94D: ForI2 var_9E
  loc_60A953: FLdRfVar var_9A
  loc_60A956: FLdI2 var_96
  loc_60A959: ImpAdLdRf MemVar_74A220
  loc_60A95C: NewIfNullPr clsProducts
  loc_60A95F: clsProducts.Caption = from_stack_1
  loc_60A964: FLdI2 var_9A
  loc_60A967: BranchF loc_60A9D4
  loc_60A96A: LitI2_Byte &HFF
  loc_60A96C: FLdRfVar var_A8
  loc_60A96F: FLdI2 var_98
  loc_60A972: FLdPrThis
  loc_60A973: VCallAd Control_ID_Command1
  loc_60A976: FStAdFunc var_A4
  loc_60A979: FLdPr var_A4
  loc_60A97C: Set from_stack_2 = Me(from_stack_1)
  loc_60A981: FLdPr var_A8
  loc_60A984: Me.Visible = from_stack_1b
  loc_60A989: FFreeAd var_A4 = ""
  loc_60A990: FLdRfVar var_AC
  loc_60A993: FLdI2 var_96
  loc_60A996: ImpAdLdRf MemVar_74A220
  loc_60A999: NewIfNullPr clsProducts
  loc_60A9A1: ILdRf var_AC
  loc_60A9A4: FLdRfVar var_A8
  loc_60A9A7: FLdI2 var_98
  loc_60A9AA: FLdPrThis
  loc_60A9AB: VCallAd Control_ID_Command1
  loc_60A9AE: FStAdFunc var_A4
  loc_60A9B1: FLdPr var_A4
  loc_60A9B4: Set from_stack_2 = Me(from_stack_1)
  loc_60A9B9: FLdPr var_A8
  loc_60A9BC: Me.Caption = from_stack_1
  loc_60A9C1: FFree1Str var_AC
  loc_60A9C4: FFreeAd var_A4 = ""
  loc_60A9CB: FLdI2 var_98
  loc_60A9CE: LitI2_Byte 1
  loc_60A9D0: AddI2
  loc_60A9D1: FStI2 var_98
  loc_60A9D4: FLdRfVar var_96
  loc_60A9D7: NextI2 var_9E, loc_60A953
  loc_60A9DC: FLdI2 var_98
  loc_60A9DF: FLdRfVar var_98
  loc_60A9E2: LitI2_Byte 8
  loc_60A9E4: ForI2 var_B0
  loc_60A9EA: LitI2_Byte 0
  loc_60A9EC: FLdRfVar var_A8
  loc_60A9EF: FLdI2 var_98
  loc_60A9F2: FLdPrThis
  loc_60A9F3: VCallAd Control_ID_Command1
  loc_60A9F6: FStAdFunc var_A4
  loc_60A9F9: FLdPr var_A4
  loc_60A9FC: Set from_stack_2 = Me(from_stack_1)
  loc_60AA01: FLdPr var_A8
  loc_60AA04: Me.Visible = from_stack_1b
  loc_60AA09: FFreeAd var_A4 = ""
  loc_60AA10: FLdRfVar var_98
  loc_60AA13: NextI2 var_B0, loc_60A9EA
  loc_60AA18: ExitProcCbHresult
End Function

Public Function SendPreset(amount, typepreset, presetN) '668AF4
  'Data Table: 45B254
  loc_668750: OnErrorGoto loc_668AE8
  loc_668753: LitStr "CEM44.INI"
  loc_668756: FStStrCopy var_AC
  loc_668759: FLdRfVar var_AC
  loc_66875C: LitStr "TICKET_PRESET"
  loc_66875F: FStStrCopy var_A8
  loc_668762: FLdRfVar var_A8
  loc_668765: LitStr "TICKET"
  loc_668768: FStStrCopy var_A4
  loc_66876B: FLdRfVar var_A4
  loc_66876E: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_668773: FStStrNoPop var_B0
  loc_668776: LitStr "1"
  loc_668779: EqStr
  loc_66877B: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_668786: BranchF loc_6689B9
  loc_668789: LitVar_Missing var_120
  loc_66878C: LitVar_Missing var_100
  loc_66878F: LitVarStr var_D0, "Aviso"
  loc_668794: FStVarCopyObj var_E0
  loc_668797: FLdRfVar var_E0
  loc_66879A: LitI4 &H44
  loc_66879F: FLdPr Me
  loc_6687A2: MemLdRfVar from_stack_1.global_448
  loc_6687A5: CVarRef
  loc_6687AA: ImpAdCallI2 MsgBox(, , , , )
  loc_6687AF: LitI4 6
  loc_6687B4: EqI4
  loc_6687B5: FFreeVar var_E0 = "": var_100 = ""
  loc_6687BE: BranchF loc_6689B9
  loc_6687C1: ILdUI1 typepreset
  loc_6687C5: CI2UI1
  loc_6687C7: LitI2_Byte 1
  loc_6687C9: EqI2
  loc_6687CA: BranchF loc_6688D8
  loc_6687CD: ILdI4 amount
  loc_6687D0: CR8I4
  loc_6687D1: LitI2_Byte &H64
  loc_6687D3: CR8I2
  loc_6687D4: DivR8
  loc_6687D5: FStFPR8 SendPreset
  loc_6687D8: FLdRfVar var_126
  loc_6687DB: ImpAdLdRf MemVar_74D8B0
  loc_6687DE: NewIfNullPr Consola
  loc_6687E1: from_stack_1v = Consola.presetgradeGet()
  loc_6687E6: FLdRfVar var_124
  loc_6687E9: ImpAdLdRf MemVar_74D8B0
  loc_6687EC: NewIfNullPr Consola
  loc_6687EF: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_6687F4: FLdRfVar var_122
  loc_6687F7: ImpAdLdRf MemVar_74D8B0
  loc_6687FA: NewIfNullPr Consola
  loc_6687FD: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_668802: LitI4 1
  loc_668807: LitI4 1
  loc_66880C: LitVarStr var_D0, "#####0.00"
  loc_668811: FStVarCopyObj var_100
  loc_668814: FLdRfVar var_100
  loc_668817: ILdI4 amount
  loc_66881A: CR8I4
  loc_66881B: LitI2_Byte &H64
  loc_66881D: CR8I2
  loc_66881E: DivR8
  loc_66881F: FLdUI1
  loc_668823: CI4UI1
  loc_668824: ImpAdLdRf MemVar_74C31C
  loc_668827: Ary1LdUI1
  loc_668829: CI2UI1
  loc_66882B: LitI2_Byte 1
  loc_66882D: AddI2
  loc_66882E: CI4UI1
  loc_66882F: FLdUI1
  loc_668833: CI4UI1
  loc_668834: FLdUI1
  loc_668838: CI2UI1
  loc_66883A: LitI2_Byte 1
  loc_66883C: SubI2
  loc_66883D: CI4UI1
  loc_66883E: ImpAdLdRf MemVar_74C12C
  loc_668841: AryLdPr
  loc_668844: MemLdUI1 global_0
  loc_668848: CI4UI1
  loc_668849: ImpAdLdRf MemVar_74C074
  loc_66884C: AryLdPr
  loc_66884F: MemLdR8 global_0
  loc_668852: FnCDblCy
  loc_668854: MulR8
  loc_668855: CVarR8
  loc_668859: FLdRfVar var_120
  loc_66885C: ImpAdCallFPR4  = Format(, )
  loc_668861: FLdRfVar var_120
  loc_668864: CR4Var
  loc_668865: FStFPR8 var_9C
  loc_668868: FFreeVar var_E0 = "": var_100 = ""
  loc_668871: LitI4 1
  loc_668876: LitI4 1
  loc_66887B: ImpAdLdRf MemVar_74C364
  loc_66887E: CVarRef
  loc_668883: FLdFPR8 var_9C
  loc_668886: CStrR8
  loc_668888: CVarStr var_E0
  loc_66888B: FLdRfVar var_100
  loc_66888E: ImpAdCallFPR4  = Format(, )
  loc_668893: LitI2_Byte 0
  loc_668895: PopTmpLdAd1
  loc_668899: LitI2_Byte 1
  loc_66889B: CUI1I2
  loc_66889D: PopTmpLdAd1
  loc_6688A1: FLdRfVar var_100
  loc_6688A4: CStrVarTmp
  loc_6688A5: PopTmpLdAdStr
  loc_6688A9: FLdFPR8 SendPreset
  loc_6688AC: CStrR8
  loc_6688AE: PopTmpLdAdStr
  loc_6688B2: LitStr vbNullString
  loc_6688B5: FStStrCopy var_A4
  loc_6688B8: FLdRfVar var_A4
  loc_6688BB: LitI2_Byte 0
  loc_6688BD: PopTmpLdAd2 var_122
  loc_6688C0: ImpAdCallFPR4 Proc_158_3_68A238(, , , , , )
  loc_6688C5: FFreeStr var_A4 = "": var_A8 = ""
  loc_6688CE: FFreeVar var_E0 = ""
  loc_6688D5: Branch loc_6689B9
  loc_6688D8: ILdI4 amount
  loc_6688DB: CR8I4
  loc_6688DC: ImpAdLdFPR4 MemVar_74C2E0
  loc_6688DF: DivR8
  loc_6688E0: FStFPR8 SendPreset
  loc_6688E3: FLdRfVar var_126
  loc_6688E6: ImpAdLdRf MemVar_74D8B0
  loc_6688E9: NewIfNullPr Consola
  loc_6688EC: from_stack_1v = Consola.presetgradeGet()
  loc_6688F1: FLdRfVar var_124
  loc_6688F4: ImpAdLdRf MemVar_74D8B0
  loc_6688F7: NewIfNullPr Consola
  loc_6688FA: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_6688FF: FLdRfVar var_122
  loc_668902: ImpAdLdRf MemVar_74D8B0
  loc_668905: NewIfNullPr Consola
  loc_668908: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_66890D: LitI4 1
  loc_668912: LitI4 1
  loc_668917: ImpAdLdRf MemVar_74C364
  loc_66891A: CVarRef
  loc_66891F: ILdI4 amount
  loc_668922: CR8I4
  loc_668923: CStrR8
  loc_668925: FStStrNoPop var_A4
  loc_668928: CR8Str
  loc_66892A: FLdUI1
  loc_66892E: CI4UI1
  loc_66892F: ImpAdLdRf MemVar_74C31C
  loc_668932: Ary1LdUI1
  loc_668934: CI2UI1
  loc_668936: LitI2_Byte 1
  loc_668938: AddI2
  loc_668939: CI4UI1
  loc_66893A: FLdUI1
  loc_66893E: CI4UI1
  loc_66893F: FLdUI1
  loc_668943: CI2UI1
  loc_668945: LitI2_Byte 1
  loc_668947: SubI2
  loc_668948: CI4UI1
  loc_668949: ImpAdLdRf MemVar_74C12C
  loc_66894C: AryLdPr
  loc_66894F: MemLdUI1 global_0
  loc_668953: CI4UI1
  loc_668954: ImpAdLdRf MemVar_74C074
  loc_668957: AryLdPr
  loc_66895A: MemLdR8 global_0
  loc_66895D: FnCDblCy
  loc_66895F: DivR8
  loc_668960: CVarR8
  loc_668964: FLdRfVar var_100
  loc_668967: ImpAdCallFPR4  = Format(, )
  loc_66896C: FLdRfVar var_100
  loc_66896F: CR4Var
  loc_668970: FStFPR8 var_9C
  loc_668973: FFree1Str var_A4
  loc_668976: FFreeVar var_E0 = ""
  loc_66897D: LitI2_Byte 0
  loc_66897F: PopTmpLdAd1
  loc_668983: LitI2_Byte 1
  loc_668985: CUI1I2
  loc_668987: PopTmpLdAd1
  loc_66898B: FLdFPR8 SendPreset
  loc_66898E: CStrR8
  loc_668990: PopTmpLdAdStr
  loc_668994: FLdFPR8 var_9C
  loc_668997: CStrR8
  loc_668999: PopTmpLdAdStr
  loc_66899D: LitStr vbNullString
  loc_6689A0: FStStrCopy var_A4
  loc_6689A3: FLdRfVar var_A4
  loc_6689A6: LitI2_Byte 0
  loc_6689A8: PopTmpLdAd2 var_122
  loc_6689AB: ImpAdCallFPR4 Proc_158_3_68A238(, , , , , )
  loc_6689B0: FFreeStr var_A4 = "": var_A8 = ""
  loc_6689B9: LitStr "CEM44.INI"
  loc_6689BC: FStStrCopy var_AC
  loc_6689BF: FLdRfVar var_AC
  loc_6689C2: LitStr "ACTIVE_EXPRESS_PRESET"
  loc_6689C5: FStStrCopy var_A8
  loc_6689C8: FLdRfVar var_A8
  loc_6689CB: LitStr "GENERAL"
  loc_6689CE: FStStrCopy var_A4
  loc_6689D1: FLdRfVar var_A4
  loc_6689D4: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6689D9: FStStrNoPop var_B0
  loc_6689DC: LitStr "1"
  loc_6689DF: EqStr
  loc_6689E1: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_6689EC: BranchF loc_6689F8
  loc_6689EF: LitStr "ARAGORN"
  loc_6689F2: FStStrCopy var_A0
  loc_6689F5: Branch loc_6689FE
  loc_6689F8: LitStr vbNullString
  loc_6689FB: FStStrCopy var_A0
  loc_6689FE: LitI2_Byte 0
  loc_668A00: FLdPr Me
  loc_668A03: MemLdUI1 Surtidor_Actual
  loc_668A07: CI4UI1
  loc_668A08: FLdPr Me
  loc_668A0B: MemLdRfVar from_stack_1.global_228
  loc_668A0E: Ary1StI2
  loc_668A0F: LitI2_Byte &HFF
  loc_668A11: FLdPr Me
  loc_668A14: MemLdUI1 Surtidor_Actual
  loc_668A18: CI4UI1
  loc_668A19: FLdPr Me
  loc_668A1C: MemLdRfVar from_stack_1.global_204
  loc_668A1F: Ary1StI2
  loc_668A20: from_stack_1v = Proc_161_121_608CE8()
  loc_668A25: FLdRfVar var_124
  loc_668A28: FLdRfVar var_A0
  loc_668A2B: ILdUI1 presetN
  loc_668A2F: CI2UI1
  loc_668A31: LitI2_Byte 1
  loc_668A33: SubI2
  loc_668A34: CUI1I2
  loc_668A36: PopTmpLdAd1
  loc_668A3A: ILdRf amount
  loc_668A3D: ILdRf typepreset
  loc_668A40: FLdPr Me
  loc_668A43: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_668A46: FLdRfVar var_12C
  loc_668A49: ImpAdLdRf MemVar_74C760
  loc_668A4C: NewIfNullPr Formx
  loc_668A4F: from_stack_1v = Formx.global_4589716Get()
  loc_668A54: FLdPr var_12C
  loc_668A57:  = Formx.BackColor
  loc_668A5C: FLdI2 var_124
  loc_668A5F: NotI4
  loc_668A60: FFree1Ad var_12C
  loc_668A63: BranchF loc_668ADD
  loc_668A66: FLdRfVar var_E0
  loc_668A69: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_668A6E: FLdRfVar var_E0
  loc_668A71: CBoolVarNull
  loc_668A73: FFree1Var var_E0 = ""
  loc_668A76: BranchF loc_668ADA
  loc_668A79: FLdPr Me
  loc_668A7C: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_668A7F: CVarRef
  loc_668A84: FLdRfVar var_E0
  loc_668A87: ImpAdCallFPR4  = Str()
  loc_668A8C: LitI2_Byte 4
  loc_668A8E: CUI1I2
  loc_668A90: PopTmpLdAd1
  loc_668A94: LitVarStr var_D0, "Sending Preset Pump "
  loc_668A99: FLdRfVar var_E0
  loc_668A9C: ConcatVar var_100
  loc_668AA0: LitVarStr var_F0, "Error"
  loc_668AA5: ConcatVar var_120
  loc_668AA9: CStrVarTmp
  loc_668AAA: PopTmpLdAdStr
  loc_668AAE: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_668AB3: FFree1Str var_A4
  loc_668AB6: FFreeVar var_E0 = "": var_100 = ""
  loc_668ABF: ILdRf Me
  loc_668AC2: FStAdNoPop
  loc_668AC6: ImpAdLdRf MemVar_7520D4
  loc_668AC9: NewIfNullPr Global
  loc_668ACC: Global.Unload from_stack_1
  loc_668AD1: FFree1Ad var_12C
  loc_668AD4: ExitProcCbHresult
  loc_668ADA: Branch loc_668A25
  loc_668ADD: LitI2_Byte &HFF
  loc_668ADF: FStI2 var_86
  loc_668AE2: ExitProcCbHresult
  loc_668AE8: LitI2_Byte 0
  loc_668AEA: FStI2 var_86
  loc_668AED: ExitProcCbHresult
End Function

Public Function BuscarOwner(sValor) '5DF768
  'Data Table: 45B254
  loc_5DF718: ZeroRetVal
  loc_5DF71A: ILdI4 sValor
  loc_5DF71D: FStStrCopy var_8C
  loc_5DF720: ILdRf var_8C
  loc_5DF723: LitStr "0001"
  loc_5DF726: EqStr
  loc_5DF728: BranchF loc_5DF734
  loc_5DF72B: LitStr "PumpService"
  loc_5DF72E: FStStrCopy var_88
  loc_5DF731: Branch loc_5DF762
  loc_5DF734: ILdRf var_8C
  loc_5DF737: LitStr "0002"
  loc_5DF73A: EqStr
  loc_5DF73C: BranchF loc_5DF748
  loc_5DF73F: LitStr "CrindService"
  loc_5DF742: FStStrCopy var_88
  loc_5DF745: Branch loc_5DF762
  loc_5DF748: ILdRf var_8C
  loc_5DF74B: LitStr "0003"
  loc_5DF74E: EqStr
  loc_5DF750: BranchF loc_5DF75C
  loc_5DF753: LitStr "TagService"
  loc_5DF756: FStStrCopy var_88
  loc_5DF759: Branch loc_5DF762
  loc_5DF75C: LitStr "Owner Desconocido"
  loc_5DF75F: FStStrCopy var_88
  loc_5DF762: ExitProcCbHresult
End Function

Public Function PegarIcono(sValor) '5DC4E4
  'Data Table: 45B254
  loc_5DC4AC: ZeroRetVal
  loc_5DC4AE: LitStr "error"
  loc_5DC4B1: ILdI4 sValor
  loc_5DC4B4: ConcatStr
  loc_5DC4B5: FStStr var_8C
  loc_5DC4B8: LitStr "CEM44.INI"
  loc_5DC4BB: FStStrCopy PegarIcono
  loc_5DC4BE: FLdRfVar PegarIcono
  loc_5DC4C1: FLdRfVar var_8C
  loc_5DC4C4: LitStr "PumpError"
  loc_5DC4C7: FStStrCopy var_90
  loc_5DC4CA: FLdRfVar var_90
  loc_5DC4CD: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5DC4D2: FStStr var_88
  loc_5DC4D5: FFreeStr var_90 = ""
  loc_5DC4DC: ExitProcCbHresult
End Function

Public Sub RefreshSales(pump, value) '635414
  'Data Table: 45B254
  loc_635218: LitI2_Byte 1
  loc_63521A: FStI2 var_88
  loc_63521D: ILdI4 value
  loc_635220: LitStr vbNullString
  loc_635223: NeStr
  loc_635225: BranchF loc_635410
  loc_635228: LitI2_Byte 1
  loc_63522A: CUI1I2
  loc_63522C: FLdRfVar var_86
  loc_63522F: LitI2_Byte &HA
  loc_635231: CUI1I2
  loc_635233: ForUI1 var_8C
  loc_635239: LitVarI2 var_BC, 8
  loc_63523E: FLdI2 var_88
  loc_635241: CI4UI1
  loc_635242: ILdRf value
  loc_635245: CVarRef
  loc_63524A: FLdRfVar var_CC
  loc_63524D: ImpAdCallFPR4  = Mid(, , )
  loc_635252: FLdRfVar var_CC
  loc_635255: FnCLngVar
  loc_635257: ILdUI1 pump
  loc_63525B: CI4UI1
  loc_63525C: FLdUI1
  loc_635260: CI4UI1
  loc_635261: ImpAdLdRf MemVar_74BFE4
  loc_635264: AryLdPr
  loc_635267: MemStI4 global_32
  loc_63526A: FFreeVar var_BC = "": var_CC = ""
  loc_635273: LitVarI2 var_BC, 1
  loc_635278: FLdI2 var_88
  loc_63527B: LitI2_Byte &HA
  loc_63527D: AddI2
  loc_63527E: CI4UI1
  loc_63527F: ILdRf value
  loc_635282: CVarRef
  loc_635287: FLdRfVar var_CC
  loc_63528A: ImpAdCallFPR4  = Mid(, , )
  loc_63528F: FLdRfVar var_CC
  loc_635292: CStrVarTmp
  loc_635293: FStStrNoPop var_D0
  loc_635296: ILdUI1 pump
  loc_63529A: CI4UI1
  loc_63529B: FLdUI1
  loc_63529F: CI4UI1
  loc_6352A0: ImpAdLdRf MemVar_74BFE4
  loc_6352A3: AryLdPr
  loc_6352A6: MemLdRfVar from_stack_1.global_29
  loc_6352A9: StFixedStr
  loc_6352AC: FFree1Str var_D0
  loc_6352AF: FFreeVar var_BC = ""
  loc_6352B6: LitVarI2 var_BC, 8
  loc_6352BB: FLdI2 var_88
  loc_6352BE: LitI2_Byte &HB
  loc_6352C0: AddI2
  loc_6352C1: CI4UI1
  loc_6352C2: ILdRf value
  loc_6352C5: CVarRef
  loc_6352CA: FLdRfVar var_CC
  loc_6352CD: ImpAdCallFPR4  = Mid(, , )
  loc_6352D2: FLdRfVar var_CC
  loc_6352D5: FnCCurVar
  loc_6352D7: ILdUI1 pump
  loc_6352DB: CI4UI1
  loc_6352DC: FLdUI1
  loc_6352E0: CI4UI1
  loc_6352E1: ImpAdLdRf MemVar_74BFE4
  loc_6352E4: AryLdPr
  loc_6352E7: MemStR8 global_4
  loc_6352EA: FFreeVar var_BC = "": var_CC = ""
  loc_6352F3: LitVarI2 var_BC, 8
  loc_6352F8: FLdI2 var_88
  loc_6352FB: LitI2_Byte &H13
  loc_6352FD: AddI2
  loc_6352FE: CI4UI1
  loc_6352FF: ILdRf value
  loc_635302: CVarRef
  loc_635307: FLdRfVar var_CC
  loc_63530A: ImpAdCallFPR4  = Mid(, , )
  loc_63530F: FLdRfVar var_CC
  loc_635312: FnCCurVar
  loc_635314: ILdUI1 pump
  loc_635318: CI4UI1
  loc_635319: FLdUI1
  loc_63531D: CI4UI1
  loc_63531E: ImpAdLdRf MemVar_74BFE4
  loc_635321: AryLdPr
  loc_635324: MemStR8 global_12
  loc_635327: FFreeVar var_BC = "": var_CC = ""
  loc_635330: LitVarI2 var_BC, 6
  loc_635335: FLdI2 var_88
  loc_635338: LitI2_Byte &H1B
  loc_63533A: AddI2
  loc_63533B: CI4UI1
  loc_63533C: ILdRf value
  loc_63533F: CVarRef
  loc_635344: FLdRfVar var_CC
  loc_635347: ImpAdCallFPR4  = Mid(, , )
  loc_63534C: FLdRfVar var_CC
  loc_63534F: FnCCurVar
  loc_635351: CStrCy
  loc_635353: FStStrNoPop var_D0
  loc_635356: LitStr " "
  loc_635359: ConcatStr
  loc_63535A: FStStrNoPop var_D4
  loc_63535D: CCyStr
  loc_63535F: ILdUI1 pump
  loc_635363: CI4UI1
  loc_635364: FLdUI1
  loc_635368: CI4UI1
  loc_635369: ImpAdLdRf MemVar_74BFE4
  loc_63536C: AryLdPr
  loc_63536F: MemStR8 global_20
  loc_635372: FFreeStr var_D0 = ""
  loc_635379: FFreeVar var_BC = "": var_CC = ""
  loc_635382: LitVarI2 var_BC, 2
  loc_635387: FLdI2 var_88
  loc_63538A: LitI2_Byte &H21
  loc_63538C: AddI2
  loc_63538D: CI4UI1
  loc_63538E: ILdRf value
  loc_635391: CVarRef
  loc_635396: FLdRfVar var_CC
  loc_635399: ImpAdCallFPR4  = Mid(, , )
  loc_63539E: FLdRfVar var_CC
  loc_6353A1: FnCByteVar
  loc_6353A3: ILdUI1 pump
  loc_6353A7: CI4UI1
  loc_6353A8: FLdUI1
  loc_6353AC: CI4UI1
  loc_6353AD: ImpAdLdRf MemVar_74BFE4
  loc_6353B0: AryLdPr
  loc_6353B3: MemStUI1
  loc_6353B7: FFreeVar var_BC = "": var_CC = ""
  loc_6353C0: LitVarI2 var_BC, 2
  loc_6353C5: FLdI2 var_88
  loc_6353C8: LitI2_Byte &H23
  loc_6353CA: AddI2
  loc_6353CB: CI4UI1
  loc_6353CC: ILdRf value
  loc_6353CF: CVarRef
  loc_6353D4: FLdRfVar var_CC
  loc_6353D7: ImpAdCallFPR4  = Mid(, , )
  loc_6353DC: FLdRfVar var_CC
  loc_6353DF: FnCByteVar
  loc_6353E1: ILdUI1 pump
  loc_6353E5: CI4UI1
  loc_6353E6: FLdUI1
  loc_6353EA: CI4UI1
  loc_6353EB: ImpAdLdRf MemVar_74BFE4
  loc_6353EE: AryLdPr
  loc_6353F1: MemStUI1
  loc_6353F5: FFreeVar var_BC = "": var_CC = ""
  loc_6353FE: FLdI2 var_88
  loc_635401: LitI2_Byte &H25
  loc_635403: AddI2
  loc_635404: FStI2 var_88
  loc_635407: FLdRfVar var_86
  loc_63540A: NextUI1
  loc_635410: ExitProcHresult
  loc_635411: FLdRfVar var_F0
End Sub

Public Sub RefreshAllSales() '5FCB48
  'Data Table: 45B254
  loc_5FCA8C: OnErrorGoto loc_5FCB0B
  loc_5FCA8F: LitI2_Byte 1
  loc_5FCA91: CUI1I2
  loc_5FCA93: FLdRfVar var_86
  loc_5FCA96: ImpAdLdUI1
  loc_5FCA9A: ForUI1 var_90
  loc_5FCAA0: FLdRfVar var_96
  loc_5FCAA3: FLdRfVar var_8C
  loc_5FCAA6: FLdUI1
  loc_5FCAAA: FLdRfVar var_94
  loc_5FCAAD: ImpAdLdRf MemVar_74C760
  loc_5FCAB0: NewIfNullPr Formx
  loc_5FCAB3: from_stack_1v = Formx.global_4589716Get()
  loc_5FCAB8: FLdPr var_94
  loc_5FCABB: Formx.Left = from_stack_1s
  loc_5FCAC0: FLdI2 var_96
  loc_5FCAC3: NotI4
  loc_5FCAC4: FFree1Ad var_94
  loc_5FCAC7: BranchF loc_5FCAF6
  loc_5FCACA: FLdRfVar var_A8
  loc_5FCACD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5FCAD2: FLdRfVar var_A8
  loc_5FCAD5: CBoolVarNull
  loc_5FCAD7: FFree1Var var_A8 = ""
  loc_5FCADA: BranchF loc_5FCAF3
  loc_5FCADD: ILdRf Me
  loc_5FCAE0: FStAdNoPop
  loc_5FCAE4: ImpAdLdRf MemVar_7520D4
  loc_5FCAE7: NewIfNullPr Global
  loc_5FCAEA: Global.Unload from_stack_1
  loc_5FCAEF: FFree1Ad var_94
  loc_5FCAF2: ExitProcHresult
  loc_5FCAF3: Branch loc_5FCAA0
  loc_5FCAF6: FLdRfVar var_8C
  loc_5FCAF9: FLdRfVar var_86
  loc_5FCAFC: Call RefreshSales(from_stack_1v, from_stack_2v)
  loc_5FCB01: FLdRfVar var_86
  loc_5FCB04: NextUI1
  loc_5FCB0A: ExitProcHresult
  loc_5FCB0B: FLdRfVar var_AC
  loc_5FCB0E: ImpAdCallI2 Err 'rtcErrObj
  loc_5FCB13: FStAdFunc var_94
  loc_5FCB16: FLdPr var_94
  loc_5FCB19:  = Err.Description
  loc_5FCB1E: LitVar_Missing var_10C
  loc_5FCB21: LitVar_Missing var_EC
  loc_5FCB24: LitVar_Missing var_CC
  loc_5FCB27: LitI4 &H10
  loc_5FCB2C: FLdZeroAd var_AC
  loc_5FCB2F: CVarStr var_A8
  loc_5FCB32: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FCB37: FFree1Ad var_94
  loc_5FCB3A: FFreeVar var_A8 = "": var_CC = "": var_EC = ""
  loc_5FCB45: ExitProcHresult
End Sub

Public Sub RefreshPumpData(pump, display) '638638
  'Data Table: 45B254
  loc_638434: OnErrorGoto loc_6385FC
  loc_638437: FLdRfVar var_92
  loc_63843A: FLdRfVar var_88
  loc_63843D: ILdUI1 pump
  loc_638441: FLdRfVar var_90
  loc_638444: ImpAdLdRf MemVar_74C760
  loc_638447: NewIfNullPr Formx
  loc_63844A: from_stack_1v = Formx.global_4589716Get()
  loc_63844F: FLdPr var_90
  loc_638452: Formx.Left = from_stack_1s
  loc_638457: FLdI2 var_92
  loc_63845A: NotI4
  loc_63845B: FFree1Ad var_90
  loc_63845E: BranchF loc_63848D
  loc_638461: FLdRfVar var_A4
  loc_638464: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_638469: FLdRfVar var_A4
  loc_63846C: CBoolVarNull
  loc_63846E: FFree1Var var_A4 = ""
  loc_638471: BranchF loc_63848A
  loc_638474: ILdRf Me
  loc_638477: FStAdNoPop
  loc_63847B: ImpAdLdRf MemVar_7520D4
  loc_63847E: NewIfNullPr Global
  loc_638481: Global.Unload from_stack_1
  loc_638486: FFree1Ad var_90
  loc_638489: ExitProcHresult
  loc_63848A: Branch loc_638437
  loc_63848D: FLdRfVar var_88
  loc_638490: ILdRf pump
  loc_638493: Call RefreshSales(from_stack_1v, from_stack_2v)
  loc_638498: ILdI2 display
  loc_63849B: BranchF loc_6385FB
  loc_63849E: LitI2_Byte &HFF
  loc_6384A0: PopTmpLdAd2 var_92
  loc_6384A3: ILdRf pump
  loc_6384A6: from_stack_3v = Proc_161_141_72317C(from_stack_1v, from_stack_2v)
  loc_6384AB: LitI4 1
  loc_6384B0: LitI4 1
  loc_6384B5: ImpAdLdRf MemVar_74C368
  loc_6384B8: CVarRef
  loc_6384BD: ILdUI1 pump
  loc_6384C1: CI4UI1
  loc_6384C2: LitI4 1
  loc_6384C7: ImpAdLdRf MemVar_74BFE4
  loc_6384CA: AryLdPr
  loc_6384CD: MemLdR8 global_4
  loc_6384D0: CR8Cy
  loc_6384D1: ImpAdLdFPR4 MemVar_74C2E0
  loc_6384D4: DivR8
  loc_6384D5: CVarR8
  loc_6384D9: FLdRfVar var_D4
  loc_6384DC: ImpAdCallFPR4  = Format(, )
  loc_6384E1: FLdRfVar var_D4
  loc_6384E4: CStrVarTmp
  loc_6384E5: FStStr var_8C
  loc_6384E8: FFreeVar var_A4 = ""
  loc_6384EF: FLdRfVar var_D8
  loc_6384F2: FLdRfVar var_8C
  loc_6384F5: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_6384FA: FLdZeroAd var_D8
  loc_6384FD: FStStr var_8C
  loc_638500: ILdRf var_8C
  loc_638503: FLdPrThis
  loc_638504: VCallAd Control_ID_EstaVenta
  loc_638507: FStAdFunc var_90
  loc_63850A: FLdPr var_90
  loc_63850D: Me.Caption = from_stack_1
  loc_638512: FFree1Ad var_90
  loc_638515: LitI4 1
  loc_63851A: LitI4 1
  loc_63851F: LitVarStr var_C4, "##0.00"
  loc_638524: FStVarCopyObj var_D4
  loc_638527: FLdRfVar var_D4
  loc_63852A: ILdUI1 pump
  loc_63852E: CI4UI1
  loc_63852F: LitI4 1
  loc_638534: ImpAdLdRf MemVar_74BFE4
  loc_638537: AryLdPr
  loc_63853A: MemLdR8 global_12
  loc_63853D: CR8Cy
  loc_63853E: LitI2_Byte &H64
  loc_638540: CR8I2
  loc_638541: DivR8
  loc_638542: CVarR8
  loc_638546: FLdRfVar var_E8
  loc_638549: ImpAdCallFPR4  = Format(, )
  loc_63854E: FLdRfVar var_E8
  loc_638551: CStrVarTmp
  loc_638552: FStStr var_8C
  loc_638555: FFreeVar var_A4 = "": var_D4 = ""
  loc_63855E: FLdRfVar var_D8
  loc_638561: FLdRfVar var_8C
  loc_638564: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_638569: FLdZeroAd var_D8
  loc_63856C: FStStr var_8C
  loc_63856F: ILdRf var_8C
  loc_638572: FLdPrThis
  loc_638573: VCallAd Control_ID_Litros
  loc_638576: FStAdFunc var_90
  loc_638579: FLdPr var_90
  loc_63857C: Me.Caption = from_stack_1
  loc_638581: FFree1Ad var_90
  loc_638584: LitI4 1
  loc_638589: LitI4 1
  loc_63858E: ImpAdLdRf MemVar_74C350
  loc_638591: CVarRef
  loc_638596: ILdUI1 pump
  loc_63859A: CI4UI1
  loc_63859B: LitI4 1
  loc_6385A0: ImpAdLdRf MemVar_74BFE4
  loc_6385A3: AryLdPr
  loc_6385A6: MemLdR8 global_20
  loc_6385A9: CR8Cy
  loc_6385AA: ImpAdLdFPR4 MemVar_74C2DC
  loc_6385AD: DivR8
  loc_6385AE: CVarR8
  loc_6385B2: FLdRfVar var_D4
  loc_6385B5: ImpAdCallFPR4  = Format(, )
  loc_6385BA: FLdRfVar var_D4
  loc_6385BD: CStrVarTmp
  loc_6385BE: FStStr var_8C
  loc_6385C1: FFreeVar var_A4 = ""
  loc_6385C8: FLdRfVar var_D8
  loc_6385CB: FLdRfVar var_8C
  loc_6385CE: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_6385D3: FLdZeroAd var_D8
  loc_6385D6: FStStr var_8C
  loc_6385D9: ILdRf var_8C
  loc_6385DC: FLdPrThis
  loc_6385DD: VCallAd Control_ID_PPU
  loc_6385E0: FStAdFunc var_90
  loc_6385E3: FLdPr var_90
  loc_6385E6: Me.Caption = from_stack_1
  loc_6385EB: FFree1Ad var_90
  loc_6385EE: ILdUI1 pump
  loc_6385F2: PopTmpLdAd1
  loc_6385F6: Call RefreshDisplayBackColor(from_stack_1v)
  loc_6385FB: ExitProcHresult
  loc_6385FC: FLdRfVar var_D8
  loc_6385FF: ImpAdCallI2 Err 'rtcErrObj
  loc_638604: FStAdFunc var_90
  loc_638607: FLdPr var_90
  loc_63860A:  = Err.Description
  loc_63860F: LitVar_Missing var_108
  loc_638612: LitVar_Missing var_E8
  loc_638615: LitVar_Missing var_D4
  loc_638618: LitI4 &H10
  loc_63861D: FLdZeroAd var_D8
  loc_638620: CVarStr var_A4
  loc_638623: ImpAdCallFPR4 MsgBox(, , , , )
  loc_638628: FFree1Ad var_90
  loc_63862B: FFreeVar var_A4 = "": var_D4 = "": var_E8 = ""
  loc_638636: ExitProcHresult
End Sub

Public Sub RefreshDisplayData(pump) '647B48
  'Data Table: 45B254
  loc_6478EC: LitI2_Byte &HFF
  loc_6478EE: PopTmpLdAd2 var_8A
  loc_6478F1: ILdRf pump
  loc_6478F4: from_stack_3v = Proc_161_141_72317C(from_stack_1v, from_stack_2v)
  loc_6478F9: ILdUI1 pump
  loc_6478FD: CI4UI1
  loc_6478FE: ImpAdLdRf MemVar_74C004
  loc_647901: Ary1LdPr
  loc_647902: MemLdUI1 global_43
  loc_647906: LitI2 144
  loc_647909: EqI2
  loc_64790A: NotI4
  loc_64790B: BranchF loc_647A51
  loc_64790E: LitI4 1
  loc_647913: LitI4 1
  loc_647918: ImpAdLdRf MemVar_74C368
  loc_64791B: CVarRef
  loc_647920: ILdUI1 pump
  loc_647924: CI4UI1
  loc_647925: LitI4 1
  loc_64792A: ImpAdLdRf MemVar_74BFE4
  loc_64792D: AryLdPr
  loc_647930: MemLdR8 global_4
  loc_647933: CR8Cy
  loc_647934: ImpAdLdFPR4 MemVar_74C2E0
  loc_647937: DivR8
  loc_647938: CVarR8
  loc_64793C: FLdRfVar var_CC
  loc_64793F: ImpAdCallFPR4  = Format(, )
  loc_647944: FLdRfVar var_CC
  loc_647947: CStrVarTmp
  loc_647948: FStStr var_88
  loc_64794B: FFreeVar var_AC = ""
  loc_647952: FLdRfVar var_D0
  loc_647955: FLdRfVar var_88
  loc_647958: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_64795D: FLdZeroAd var_D0
  loc_647960: FStStr var_88
  loc_647963: ILdRf var_88
  loc_647966: FLdPrThis
  loc_647967: VCallAd Control_ID_EstaVenta
  loc_64796A: FStAdFunc var_D4
  loc_64796D: FLdPr var_D4
  loc_647970: Me.Caption = from_stack_1
  loc_647975: FFree1Ad var_D4
  loc_647978: LitI4 1
  loc_64797D: LitI4 1
  loc_647982: LitVarStr var_BC, "##0.00"
  loc_647987: FStVarCopyObj var_CC
  loc_64798A: FLdRfVar var_CC
  loc_64798D: ILdUI1 pump
  loc_647991: CI4UI1
  loc_647992: LitI4 1
  loc_647997: ImpAdLdRf MemVar_74BFE4
  loc_64799A: AryLdPr
  loc_64799D: MemLdR8 global_12
  loc_6479A0: CR8Cy
  loc_6479A1: LitI2_Byte &H64
  loc_6479A3: CR8I2
  loc_6479A4: DivR8
  loc_6479A5: CVarR8
  loc_6479A9: FLdRfVar var_E4
  loc_6479AC: ImpAdCallFPR4  = Format(, )
  loc_6479B1: FLdRfVar var_E4
  loc_6479B4: CStrVarTmp
  loc_6479B5: FStStr var_88
  loc_6479B8: FFreeVar var_AC = "": var_CC = ""
  loc_6479C1: FLdRfVar var_D0
  loc_6479C4: FLdRfVar var_88
  loc_6479C7: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_6479CC: FLdZeroAd var_D0
  loc_6479CF: FStStr var_88
  loc_6479D2: ILdRf var_88
  loc_6479D5: FLdPrThis
  loc_6479D6: VCallAd Control_ID_Litros
  loc_6479D9: FStAdFunc var_D4
  loc_6479DC: FLdPr var_D4
  loc_6479DF: Me.Caption = from_stack_1
  loc_6479E4: FFree1Ad var_D4
  loc_6479E7: LitI4 1
  loc_6479EC: LitI4 1
  loc_6479F1: ImpAdLdRf MemVar_74C350
  loc_6479F4: CVarRef
  loc_6479F9: ILdUI1 pump
  loc_6479FD: CI4UI1
  loc_6479FE: LitI4 1
  loc_647A03: ImpAdLdRf MemVar_74BFE4
  loc_647A06: AryLdPr
  loc_647A09: MemLdR8 global_20
  loc_647A0C: CR8Cy
  loc_647A0D: ImpAdLdFPR4 MemVar_74C2DC
  loc_647A10: DivR8
  loc_647A11: CVarR8
  loc_647A15: FLdRfVar var_CC
  loc_647A18: ImpAdCallFPR4  = Format(, )
  loc_647A1D: FLdRfVar var_CC
  loc_647A20: CStrVarTmp
  loc_647A21: FStStr var_88
  loc_647A24: FFreeVar var_AC = ""
  loc_647A2B: FLdRfVar var_D0
  loc_647A2E: FLdRfVar var_88
  loc_647A31: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_647A36: FLdZeroAd var_D0
  loc_647A39: FStStr var_88
  loc_647A3C: ILdRf var_88
  loc_647A3F: FLdPrThis
  loc_647A40: VCallAd Control_ID_PPU
  loc_647A43: FStAdFunc var_D4
  loc_647A46: FLdPr var_D4
  loc_647A49: Me.Caption = from_stack_1
  loc_647A4E: FFree1Ad var_D4
  loc_647A51: ILdUI1 pump
  loc_647A55: CI2UI1
  loc_647A57: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_647A5C: FStI2 var_8A
  loc_647A5F: ImpAdLdRf MemVar_74BEBC
  loc_647A62: CVarRef
  loc_647A67: ImpAdLdRf MemVar_74BEEC
  loc_647A6A: CVarRef
  loc_647A6F: FLdI2 var_8A
  loc_647A72: CVarBoolI2 var_9C
  loc_647A76: FLdRfVar var_AC
  loc_647A79: ImpAdCallFPR4  = IIf(, , )
  loc_647A7E: FLdRfVar var_AC
  loc_647A81: CStrVarVal var_D0
  loc_647A85: FLdPrThis
  loc_647A86: VCallAd Control_ID_lblLitrosRTM
  loc_647A89: FStAdFunc var_D4
  loc_647A8C: FLdPr var_D4
  loc_647A8F: Me.Caption = from_stack_1
  loc_647A94: FFree1Str var_D0
  loc_647A97: FFree1Ad var_D4
  loc_647A9A: FFreeVar var_9C = ""
  loc_647AA1: ILdUI1 pump
  loc_647AA5: CI2UI1
  loc_647AA7: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_647AAC: FStI2 var_8A
  loc_647AAF: ImpAdLdRf MemVar_74BEC0
  loc_647AB2: CVarRef
  loc_647AB7: ImpAdLdRf MemVar_74BEF0
  loc_647ABA: CVarRef
  loc_647ABF: FLdI2 var_8A
  loc_647AC2: CVarBoolI2 var_9C
  loc_647AC6: FLdRfVar var_AC
  loc_647AC9: ImpAdCallFPR4  = IIf(, , )
  loc_647ACE: FLdRfVar var_AC
  loc_647AD1: CStrVarVal var_D0
  loc_647AD5: FLdPrThis
  loc_647AD6: VCallAd Control_ID_Label4
  loc_647AD9: FStAdFunc var_D4
  loc_647ADC: FLdPr var_D4
  loc_647ADF: Me.Caption = from_stack_1
  loc_647AE4: FFree1Str var_D0
  loc_647AE7: FFree1Ad var_D4
  loc_647AEA: FFreeVar var_9C = ""
  loc_647AF1: FLdPr Me
  loc_647AF4: MemLdStr global_432
  loc_647AF7: LitStr " "
  loc_647AFA: ConcatStr
  loc_647AFB: FStStrNoPop var_D0
  loc_647AFE: ImpAdLdI4 MemVar_74BED4
  loc_647B01: ConcatStr
  loc_647B02: FStStrNoPop var_F8
  loc_647B05: LitStr " "
  loc_647B08: ConcatStr
  loc_647B09: FStStrNoPop var_FC
  loc_647B0C: ILdUI1 pump
  loc_647B10: CStrI2
  loc_647B12: FStStrNoPop var_100
  loc_647B15: ConcatStr
  loc_647B16: FStStrNoPop var_104
  loc_647B19: FLdPrThis
  loc_647B1A: VCallAd Control_ID_TituloVentas
  loc_647B1D: FStAdFunc var_D4
  loc_647B20: FLdPr var_D4
  loc_647B23: Me.Caption = from_stack_1
  loc_647B28: FFreeStr var_D0 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_647B35: FFree1Ad var_D4
  loc_647B38: ILdUI1 pump
  loc_647B3C: PopTmpLdAd1
  loc_647B40: Call RefreshDisplayBackColor(from_stack_1v)
  loc_647B45: ExitProcHresult
  loc_647B46: ExitProc
End Sub

Public Sub RefreshDisplayBackColor(pump) '63AC24
  'Data Table: 45B254
  loc_63A9F8: ILdUI1 pump
  loc_63A9FC: ImpAdLdUI1
  loc_63AA00: LeUI1
  loc_63AA02: BranchF loc_63AA56
  loc_63AA05: ImpAdLdUI1
  loc_63AA09: CI2UI1
  loc_63AA0B: LitI2_Byte 0
  loc_63AA0D: EqI2
  loc_63AA0E: BranchF loc_63AA24
  loc_63AA11: LitI4 &H80FF
  loc_63AA16: FStR4 var_88
  loc_63AA19: LitI4 &H2992FF
  loc_63AA1E: FStR4 var_8C
  loc_63AA21: Branch loc_63AA53
  loc_63AA24: ImpAdLdUI1
  loc_63AA28: CI2UI1
  loc_63AA2A: LitI2_Byte 4
  loc_63AA2C: EqI2
  loc_63AA2D: BranchF loc_63AA43
  loc_63AA30: LitI4 &HE0E0E0
  loc_63AA35: FStR4 var_88
  loc_63AA38: LitI4 &HC0C0C0
  loc_63AA3D: FStR4 var_8C
  loc_63AA40: Branch loc_63AA53
  loc_63AA43: LitI4 &HC0FFFF
  loc_63AA48: FStR4 var_88
  loc_63AA4B: LitI4 &H80FFFF
  loc_63AA50: FStR4 var_8C
  loc_63AA53: Branch loc_63AAA4
  loc_63AA56: ImpAdLdUI1
  loc_63AA5A: CI2UI1
  loc_63AA5C: LitI2_Byte 1
  loc_63AA5E: EqI2
  loc_63AA5F: BranchF loc_63AA75
  loc_63AA62: LitI4 &H80FF
  loc_63AA67: FStR4 var_88
  loc_63AA6A: LitI4 &H2992FF
  loc_63AA6F: FStR4 var_8C
  loc_63AA72: Branch loc_63AAA4
  loc_63AA75: ImpAdLdUI1
  loc_63AA79: CI2UI1
  loc_63AA7B: LitI2_Byte 5
  loc_63AA7D: EqI2
  loc_63AA7E: BranchF loc_63AA94
  loc_63AA81: LitI4 &HE0E0E0
  loc_63AA86: FStR4 var_88
  loc_63AA89: LitI4 &HC0C0C0
  loc_63AA8E: FStR4 var_8C
  loc_63AA91: Branch loc_63AAA4
  loc_63AA94: LitI4 &HC0FFFF
  loc_63AA99: FStR4 var_88
  loc_63AA9C: LitI4 &H80FFFF
  loc_63AAA1: FStR4 var_8C
  loc_63AAA4: LitI2_Byte 0
  loc_63AAA6: CUI1I2
  loc_63AAA8: PopTmpLdAd1
  loc_63AAAC: from_stack_2v = Proc_161_129_6C433C(from_stack_1v)
  loc_63AAB1: LitI2_Byte 1
  loc_63AAB3: CUI1I2
  loc_63AAB5: PopTmpLdAd1
  loc_63AAB9: from_stack_2v = Proc_161_129_6C433C(from_stack_1v)
  loc_63AABE: LitI2_Byte 2
  loc_63AAC0: CUI1I2
  loc_63AAC2: PopTmpLdAd1
  loc_63AAC6: from_stack_2v = Proc_161_129_6C433C(from_stack_1v)
  loc_63AACB: LitI2_Byte 0
  loc_63AACD: CUI1I2
  loc_63AACF: FLdRfVar var_8E
  loc_63AAD2: LitI2_Byte 2
  loc_63AAD4: CUI1I2
  loc_63AAD6: ForUI1 var_94
  loc_63AADC: ILdRf var_88
  loc_63AADF: FLdRfVar var_9C
  loc_63AAE2: FLdUI1
  loc_63AAE6: CI2UI1
  loc_63AAE8: FLdPrThis
  loc_63AAE9: VCallAd Control_ID_Shape4
  loc_63AAEC: FStAdFunc var_98
  loc_63AAEF: FLdPr var_98
  loc_63AAF2: Set from_stack_2 = Me(from_stack_1)
  loc_63AAF7: FLdPr var_9C
  loc_63AAFA: Me.BackColor = from_stack_1
  loc_63AAFF: FFreeAd var_98 = ""
  loc_63AB06: ILdRf var_88
  loc_63AB09: FLdRfVar var_9C
  loc_63AB0C: FLdUI1
  loc_63AB10: CI2UI1
  loc_63AB12: FLdPrThis
  loc_63AB13: VCallAd Control_ID_Shape4
  loc_63AB16: FStAdFunc var_98
  loc_63AB19: FLdPr var_98
  loc_63AB1C: Set from_stack_2 = Me(from_stack_1)
  loc_63AB21: FLdPr var_9C
  loc_63AB24: Me.BorderColor = from_stack_1
  loc_63AB29: FFreeAd var_98 = ""
  loc_63AB30: ILdRf var_88
  loc_63AB33: FLdRfVar var_9C
  loc_63AB36: FLdUI1
  loc_63AB3A: CI2UI1
  loc_63AB3C: FLdPrThis
  loc_63AB3D: VCallAd Control_ID_Shape4
  loc_63AB40: FStAdFunc var_98
  loc_63AB43: FLdPr var_98
  loc_63AB46: Set from_stack_2 = Me(from_stack_1)
  loc_63AB4B: FLdPr var_9C
  loc_63AB4E: Me.FillColor = from_stack_1
  loc_63AB53: FFreeAd var_98 = ""
  loc_63AB5A: FLdRfVar var_8E
  loc_63AB5D: NextUI1
  loc_63AB63: ILdRf var_88
  loc_63AB66: FLdPrThis
  loc_63AB67: VCallAd Control_ID_EstaVenta
  loc_63AB6A: FStAdFunc var_98
  loc_63AB6D: FLdPr var_98
  loc_63AB70: Me.BackColor = from_stack_1
  loc_63AB75: FFree1Ad var_98
  loc_63AB78: ILdRf var_88
  loc_63AB7B: FLdPrThis
  loc_63AB7C: VCallAd Control_ID_EstaVentaP
  loc_63AB7F: FStAdFunc var_98
  loc_63AB82: FLdPr var_98
  loc_63AB85: Me.BackColor = from_stack_1
  loc_63AB8A: FFree1Ad var_98
  loc_63AB8D: ILdRf var_8C
  loc_63AB90: FLdPrThis
  loc_63AB91: VCallAd Control_ID_EstaVentaP
  loc_63AB94: FStAdFunc var_98
  loc_63AB97: FLdPr var_98
  loc_63AB9A: Me.ForeColor = from_stack_1
  loc_63AB9F: FFree1Ad var_98
  loc_63ABA2: ILdRf var_88
  loc_63ABA5: FLdPrThis
  loc_63ABA6: VCallAd Control_ID_Litros
  loc_63ABA9: FStAdFunc var_98
  loc_63ABAC: FLdPr var_98
  loc_63ABAF: Me.BackColor = from_stack_1
  loc_63ABB4: FFree1Ad var_98
  loc_63ABB7: ILdRf var_88
  loc_63ABBA: FLdPrThis
  loc_63ABBB: VCallAd Control_ID_LitrosP
  loc_63ABBE: FStAdFunc var_98
  loc_63ABC1: FLdPr var_98
  loc_63ABC4: Me.BackColor = from_stack_1
  loc_63ABC9: FFree1Ad var_98
  loc_63ABCC: ILdRf var_8C
  loc_63ABCF: FLdPrThis
  loc_63ABD0: VCallAd Control_ID_LitrosP
  loc_63ABD3: FStAdFunc var_98
  loc_63ABD6: FLdPr var_98
  loc_63ABD9: Me.ForeColor = from_stack_1
  loc_63ABDE: FFree1Ad var_98
  loc_63ABE1: ILdRf var_88
  loc_63ABE4: FLdPrThis
  loc_63ABE5: VCallAd Control_ID_PPU
  loc_63ABE8: FStAdFunc var_98
  loc_63ABEB: FLdPr var_98
  loc_63ABEE: Me.BackColor = from_stack_1
  loc_63ABF3: FFree1Ad var_98
  loc_63ABF6: ILdRf var_88
  loc_63ABF9: FLdPrThis
  loc_63ABFA: VCallAd Control_ID_PPUP
  loc_63ABFD: FStAdFunc var_98
  loc_63AC00: FLdPr var_98
  loc_63AC03: Me.BackColor = from_stack_1
  loc_63AC08: FFree1Ad var_98
  loc_63AC0B: ILdRf var_8C
  loc_63AC0E: FLdPrThis
  loc_63AC0F: VCallAd Control_ID_PPUP
  loc_63AC12: FStAdFunc var_98
  loc_63AC15: FLdPr var_98
  loc_63AC18: Me.ForeColor = from_stack_1
  loc_63AC1D: FFree1Ad var_98
  loc_63AC20: ExitProcHresult
  loc_63AC21: LitI2_Byte 3
End Sub

Public Sub RefreshPresetButtons(pump) '64DDC0
  'Data Table: 45B254
  loc_64DB10: ILdUI1 pump
  loc_64DB14: ImpAdCallUI1  = Proc_167_8_60CBC8()
  loc_64DB1A: FStUI1 var_86
  loc_64DB1E: FLdPr Me
  loc_64DB21: MemLdUI1 Surtidor_Actual
  loc_64DB25: ImpAdLdUI1
  loc_64DB29: LeUI1
  loc_64DB2B: BranchF loc_64DC07
  loc_64DB2E: ImpAdLdUI1
  loc_64DB32: CI2UI1
  loc_64DB34: LitI2_Byte 3
  loc_64DB36: EqI2
  loc_64DB37: BranchF loc_64DBA8
  loc_64DB3A: FLdPr Me
  loc_64DB3D: MemLdI2 global_188
  loc_64DB40: FLdPrThis
  loc_64DB41: VCallAd Control_ID_lblPresetSchlumberger
  loc_64DB44: FStAdFunc var_8C
  loc_64DB47: FLdPr var_8C
  loc_64DB4A: Me.Visible = from_stack_1b
  loc_64DB4F: FFree1Ad var_8C
  loc_64DB52: LitI2_Byte 1
  loc_64DB54: CUI1I2
  loc_64DB56: FLdRfVar var_88
  loc_64DB59: FLdUI1
  loc_64DB5D: ForUI1 var_90
  loc_64DB63: FLdPr Me
  loc_64DB66: MemLdI2 global_188
  loc_64DB69: NotI4
  loc_64DB6A: CVarBoolI2 var_A4
  loc_64DB6E: PopAdLdVar
  loc_64DB6F: FLdRfVar var_94
  loc_64DB72: FLdUI1
  loc_64DB76: CI2UI1
  loc_64DB78: LitI2_Byte 1
  loc_64DB7A: SubI2
  loc_64DB7B: FLdPrThis
  loc_64DB7C: VCallAd Control_ID_BotonPreset
  loc_64DB7F: FStAdFunc var_8C
  loc_64DB82: FLdPr var_8C
  loc_64DB85: Set from_stack_2 = Me(from_stack_1)
  loc_64DB8A: FLdPr var_94
  loc_64DB8D: LateIdSt
  loc_64DB92: FFreeAd var_8C = ""
  loc_64DB99: FFree1Var var_A4 = ""
  loc_64DB9C: FLdRfVar var_88
  loc_64DB9F: NextUI1
  loc_64DBA5: Branch loc_64DC04
  loc_64DBA8: LitI2_Byte 0
  loc_64DBAA: FLdPrThis
  loc_64DBAB: VCallAd Control_ID_lblPresetSchlumberger
  loc_64DBAE: FStAdFunc var_8C
  loc_64DBB1: FLdPr var_8C
  loc_64DBB4: Me.Visible = from_stack_1b
  loc_64DBB9: FFree1Ad var_8C
  loc_64DBBC: LitI2_Byte 1
  loc_64DBBE: CUI1I2
  loc_64DBC0: FLdRfVar var_88
  loc_64DBC3: FLdUI1
  loc_64DBC7: ForUI1 var_A8
  loc_64DBCD: LitVar_TRUE var_A4
  loc_64DBD0: PopAdLdVar
  loc_64DBD1: FLdRfVar var_94
  loc_64DBD4: FLdUI1
  loc_64DBD8: CI2UI1
  loc_64DBDA: LitI2_Byte 1
  loc_64DBDC: SubI2
  loc_64DBDD: FLdPrThis
  loc_64DBDE: VCallAd Control_ID_BotonPreset
  loc_64DBE1: FStAdFunc var_8C
  loc_64DBE4: FLdPr var_8C
  loc_64DBE7: Set from_stack_2 = Me(from_stack_1)
  loc_64DBEC: FLdPr var_94
  loc_64DBEF: LateIdSt
  loc_64DBF4: FFreeAd var_8C = ""
  loc_64DBFB: FLdRfVar var_88
  loc_64DBFE: NextUI1
  loc_64DC04: Branch loc_64DCDD
  loc_64DC07: ImpAdLdUI1
  loc_64DC0B: CI2UI1
  loc_64DC0D: LitI2_Byte 4
  loc_64DC0F: EqI2
  loc_64DC10: BranchF loc_64DC81
  loc_64DC13: FLdPr Me
  loc_64DC16: MemLdI2 global_188
  loc_64DC19: FLdPrThis
  loc_64DC1A: VCallAd Control_ID_lblPresetSchlumberger
  loc_64DC1D: FStAdFunc var_8C
  loc_64DC20: FLdPr var_8C
  loc_64DC23: Me.Visible = from_stack_1b
  loc_64DC28: FFree1Ad var_8C
  loc_64DC2B: LitI2_Byte 1
  loc_64DC2D: CUI1I2
  loc_64DC2F: FLdRfVar var_88
  loc_64DC32: FLdUI1
  loc_64DC36: ForUI1 var_AC
  loc_64DC3C: FLdPr Me
  loc_64DC3F: MemLdI2 global_188
  loc_64DC42: NotI4
  loc_64DC43: CVarBoolI2 var_A4
  loc_64DC47: PopAdLdVar
  loc_64DC48: FLdRfVar var_94
  loc_64DC4B: FLdUI1
  loc_64DC4F: CI2UI1
  loc_64DC51: LitI2_Byte 1
  loc_64DC53: SubI2
  loc_64DC54: FLdPrThis
  loc_64DC55: VCallAd Control_ID_BotonPreset
  loc_64DC58: FStAdFunc var_8C
  loc_64DC5B: FLdPr var_8C
  loc_64DC5E: Set from_stack_2 = Me(from_stack_1)
  loc_64DC63: FLdPr var_94
  loc_64DC66: LateIdSt
  loc_64DC6B: FFreeAd var_8C = ""
  loc_64DC72: FFree1Var var_A4 = ""
  loc_64DC75: FLdRfVar var_88
  loc_64DC78: NextUI1
  loc_64DC7E: Branch loc_64DCDD
  loc_64DC81: LitI2_Byte 0
  loc_64DC83: FLdPrThis
  loc_64DC84: VCallAd Control_ID_lblPresetSchlumberger
  loc_64DC87: FStAdFunc var_8C
  loc_64DC8A: FLdPr var_8C
  loc_64DC8D: Me.Visible = from_stack_1b
  loc_64DC92: FFree1Ad var_8C
  loc_64DC95: LitI2_Byte 1
  loc_64DC97: CUI1I2
  loc_64DC99: FLdRfVar var_88
  loc_64DC9C: FLdUI1
  loc_64DCA0: ForUI1 var_B0
  loc_64DCA6: LitVar_TRUE var_A4
  loc_64DCA9: PopAdLdVar
  loc_64DCAA: FLdRfVar var_94
  loc_64DCAD: FLdUI1
  loc_64DCB1: CI2UI1
  loc_64DCB3: LitI2_Byte 1
  loc_64DCB5: SubI2
  loc_64DCB6: FLdPrThis
  loc_64DCB7: VCallAd Control_ID_BotonPreset
  loc_64DCBA: FStAdFunc var_8C
  loc_64DCBD: FLdPr var_8C
  loc_64DCC0: Set from_stack_2 = Me(from_stack_1)
  loc_64DCC5: FLdPr var_94
  loc_64DCC8: LateIdSt
  loc_64DCCD: FFreeAd var_8C = ""
  loc_64DCD4: FLdRfVar var_88
  loc_64DCD7: NextUI1
  loc_64DCDD: FLdUI1
  loc_64DCE1: CI2UI1
  loc_64DCE3: LitI2_Byte 1
  loc_64DCE5: AddI2
  loc_64DCE6: CUI1I2
  loc_64DCE8: FLdRfVar var_88
  loc_64DCEB: LitI2_Byte 4
  loc_64DCED: CUI1I2
  loc_64DCEF: ForUI1 var_B4
  loc_64DCF5: LitVar_FALSE
  loc_64DCF9: PopAdLdVar
  loc_64DCFA: FLdRfVar var_94
  loc_64DCFD: FLdUI1
  loc_64DD01: CI2UI1
  loc_64DD03: LitI2_Byte 1
  loc_64DD05: SubI2
  loc_64DD06: FLdPrThis
  loc_64DD07: VCallAd Control_ID_BotonPreset
  loc_64DD0A: FStAdFunc var_8C
  loc_64DD0D: FLdPr var_8C
  loc_64DD10: Set from_stack_2 = Me(from_stack_1)
  loc_64DD15: FLdPr var_94
  loc_64DD18: LateIdSt
  loc_64DD1D: FFreeAd var_8C = ""
  loc_64DD24: FLdRfVar var_88
  loc_64DD27: NextUI1
  loc_64DD2D: LitI2_Byte 1
  loc_64DD2F: CUI1I2
  loc_64DD31: FLdRfVar var_88
  loc_64DD34: FLdUI1
  loc_64DD38: ForUI1 var_B8
  loc_64DD3E: FLdRfVar var_BC
  loc_64DD41: ILdUI1 pump
  loc_64DD45: CI4UI1
  loc_64DD46: FLdUI1
  loc_64DD4A: CI2UI1
  loc_64DD4C: LitI2_Byte 1
  loc_64DD4E: SubI2
  loc_64DD4F: CI4UI1
  loc_64DD50: ImpAdLdRf MemVar_74C12C
  loc_64DD53: AryLdPr
  loc_64DD56: MemLdUI1 global_0
  loc_64DD5A: CI2UI1
  loc_64DD5C: ImpAdLdRf MemVar_74A220
  loc_64DD5F: NewIfNullPr clsProducts
  loc_64DD67: FLdZeroAd var_BC
  loc_64DD6A: CVarStr var_CC
  loc_64DD6D: PopAdLdVar
  loc_64DD6E: FLdRfVar var_94
  loc_64DD71: FLdUI1
  loc_64DD75: CI2UI1
  loc_64DD77: LitI2_Byte 1
  loc_64DD79: SubI2
  loc_64DD7A: FLdPrThis
  loc_64DD7B: VCallAd Control_ID_BotonPreset
  loc_64DD7E: FStAdFunc var_8C
  loc_64DD81: FLdPr var_8C
  loc_64DD84: Set from_stack_2 = Me(from_stack_1)
  loc_64DD89: FLdPr var_94
  loc_64DD8C: LateIdSt
  loc_64DD91: FFreeAd var_8C = ""
  loc_64DD98: FFree1Var var_CC = ""
  loc_64DD9B: FLdRfVar var_88
  loc_64DD9E: NextUI1
  loc_64DDA4: FLdPr Me
  loc_64DDA7: MemLdUI1 presetgrade
  loc_64DDAB: FLdUI1
  loc_64DDAF: GtUI1
  loc_64DDB1: BranchF loc_64DDBE
  loc_64DDB4: LitI2_Byte 0
  loc_64DDB6: PopTmpLdAd2 var_CE
  loc_64DDB9: Call BotonPreset_UnknownEvent_8()
  loc_64DDBE: ExitProcHresult
End Sub

Public Sub RefreshGeneralData(pump) '6A2248
  'Data Table: 45B254
  loc_6A1B54: ILdUI1 pump
  loc_6A1B58: ImpAdCallUI1  = Proc_167_8_60CBC8()
  loc_6A1B5E: FStUI1 var_86
  loc_6A1B64: ILdUI1 pump
  loc_6A1B68: CI2UI1
  loc_6A1B6A: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6A1B6F: NotI4
  loc_6A1B70: BranchF loc_6A1D9E
  loc_6A1B75: FLdRfVar var_94
  loc_6A1B78: FLdRfVar var_90
  loc_6A1B7B: ImpAdLdRf MemVar_7520D4
  loc_6A1B7E: NewIfNullPr Global
  loc_6A1B81:  = Global.App
  loc_6A1B86: FLdPr var_90
  loc_6A1B89:  = App.Path
  loc_6A1B8E: ILdRf var_94
  loc_6A1B91: LitStr "\Pumps\Pump"
  loc_6A1B94: ConcatStr
  loc_6A1B95: FStStr var_8C
  loc_6A1B98: FFree1Str var_94
  loc_6A1B9B: FFree1Ad var_90
  loc_6A1BA0: ILdUI1 pump
  loc_6A1BA4: ImpAdLdUI1
  loc_6A1BA8: LeUI1
  loc_6A1BAA: BranchF loc_6A1C6A
  loc_6A1BAF: ImpAdLdUI1
  loc_6A1BB3: CI2UI1
  loc_6A1BB5: LitI2_Byte 1
  loc_6A1BB7: EqI2
  loc_6A1BB8: BranchF loc_6A1BFA
  loc_6A1BBD: from_stack_1v = Proc_161_153_617294()
  loc_6A1BC4: OnErrorGoto loc_6A1D1D
  loc_6A1BC9: FLdPr Me
  loc_6A1BCC: MemLdUI1 Surtidor_Actual
  loc_6A1BD0: CI2UI1
  loc_6A1BD2: LitI2_Byte 1
  loc_6A1BD4: SubI2
  loc_6A1BD5: CI4UI1
  loc_6A1BD6: FLdPr Me
  loc_6A1BD9: MemLdRfVar from_stack_1.global_488
  loc_6A1BDC: Ary1LdI4
  loc_6A1BDD: CI4Str
  loc_6A1BDE: FLdPr Me
  loc_6A1BE1: MemLdRfVar from_stack_1.global_464
  loc_6A1BE4: Ary1LdI4
  loc_6A1BE5: FLdPrThis
  loc_6A1BE6: VCallAd Control_ID_Marca
  loc_6A1BE9: FStAdFunc var_90
  loc_6A1BEC: FLdPr var_90
  loc_6A1BEF: Me.Caption = from_stack_1
  loc_6A1BF4: FFree1Ad var_90
  loc_6A1BF7: Branch loc_6A1C65
  loc_6A1BFE: ImpAdLdUI1
  loc_6A1C02: CI2UI1
  loc_6A1C04: LitI2_Byte 1
  loc_6A1C06: AddI2
  loc_6A1C07: CI4UI1
  loc_6A1C08: ImpAdLdRf MemVar_74A23C
  loc_6A1C0B: Ary1LdI4
  loc_6A1C0C: FLdPrThis
  loc_6A1C0D: VCallAd Control_ID_Marca
  loc_6A1C10: FStAdFunc var_90
  loc_6A1C13: FLdPr var_90
  loc_6A1C16: Me.Caption = from_stack_1
  loc_6A1C1B: FFree1Ad var_90
  loc_6A1C20: ILdRf var_8C
  loc_6A1C23: CVarStr var_104
  loc_6A1C26: LitI4 1
  loc_6A1C2B: LitI4 1
  loc_6A1C30: LitVarStr var_D4, "0"
  loc_6A1C35: FStVarCopyObj var_E4
  loc_6A1C38: FLdRfVar var_E4
  loc_6A1C3B: ImpAdLdUI1
  loc_6A1C3F: CI2UI1
  loc_6A1C41: LitI2_Byte 1
  loc_6A1C43: AddI2
  loc_6A1C44: CVarI2 var_C4
  loc_6A1C47: FLdRfVar var_F4
  loc_6A1C4A: ImpAdCallFPR4  = Format(, )
  loc_6A1C4F: FLdRfVar var_F4
  loc_6A1C52: ConcatVar var_114
  loc_6A1C56: CStrVarTmp
  loc_6A1C57: FStStr var_8C
  loc_6A1C5A: FFreeVar var_C4 = "": var_E4 = "": var_F4 = ""
  loc_6A1C67: Branch loc_6A1D1B
  loc_6A1C6E: ImpAdLdUI1
  loc_6A1C72: CI2UI1
  loc_6A1C74: LitI2_Byte 1
  loc_6A1C76: EqI2
  loc_6A1C77: BranchF loc_6A1CB9
  loc_6A1C7C: from_stack_1v = Proc_161_153_617294()
  loc_6A1C83: OnErrorGoto loc_6A1D1D
  loc_6A1C88: FLdPr Me
  loc_6A1C8B: MemLdUI1 Surtidor_Actual
  loc_6A1C8F: CI2UI1
  loc_6A1C91: LitI2_Byte 1
  loc_6A1C93: SubI2
  loc_6A1C94: CI4UI1
  loc_6A1C95: FLdPr Me
  loc_6A1C98: MemLdRfVar from_stack_1.global_488
  loc_6A1C9B: Ary1LdI4
  loc_6A1C9C: CI4Str
  loc_6A1C9D: FLdPr Me
  loc_6A1CA0: MemLdRfVar from_stack_1.global_464
  loc_6A1CA3: Ary1LdI4
  loc_6A1CA4: FLdPrThis
  loc_6A1CA5: VCallAd Control_ID_Marca
  loc_6A1CA8: FStAdFunc var_90
  loc_6A1CAB: FLdPr var_90
  loc_6A1CAE: Me.Caption = from_stack_1
  loc_6A1CB3: FFree1Ad var_90
  loc_6A1CB6: Branch loc_6A1D19
  loc_6A1CBD: ImpAdLdUI1
  loc_6A1CC1: CI4UI1
  loc_6A1CC2: ImpAdLdRf MemVar_74A23C
  loc_6A1CC5: Ary1LdI4
  loc_6A1CC6: FLdPrThis
  loc_6A1CC7: VCallAd Control_ID_Marca
  loc_6A1CCA: FStAdFunc var_90
  loc_6A1CCD: FLdPr var_90
  loc_6A1CD0: Me.Caption = from_stack_1
  loc_6A1CD5: FFree1Ad var_90
  loc_6A1CDA: ILdRf var_8C
  loc_6A1CDD: CVarStr var_104
  loc_6A1CE0: LitI4 1
  loc_6A1CE5: LitI4 1
  loc_6A1CEA: LitVarStr var_D4, "0"
  loc_6A1CEF: FStVarCopyObj var_C4
  loc_6A1CF2: FLdRfVar var_C4
  loc_6A1CF5: ImpAdLdRf MemVar_74C0F9
  loc_6A1CF8: CVarRef
  loc_6A1CFD: FLdRfVar var_E4
  loc_6A1D00: ImpAdCallFPR4  = Format(, )
  loc_6A1D05: FLdRfVar var_E4
  loc_6A1D08: ConcatVar var_F4
  loc_6A1D0C: CStrVarTmp
  loc_6A1D0D: FStStr var_8C
  loc_6A1D10: FFreeVar var_C4 = "": var_E4 = ""
  loc_6A1D1F: FLdRfVar var_118
  loc_6A1D22: ImpAdCallI2 Err 'rtcErrObj
  loc_6A1D27: FStAdFunc var_90
  loc_6A1D2A: FLdPr var_90
  loc_6A1D2D:  = Err.Number
  loc_6A1D32: ILdRf var_118
  loc_6A1D35: LitI4 &HD
  loc_6A1D3A: EqI4
  loc_6A1D3B: FFree1Ad var_90
  loc_6A1D3E: BranchF loc_6A1D47
  loc_6A1D43: Resume
  loc_6A1D4B: ILdRf var_8C
  loc_6A1D4E: CVarStr var_104
  loc_6A1D51: LitI4 1
  loc_6A1D56: LitI4 1
  loc_6A1D5B: LitVarStr var_D4, "0"
  loc_6A1D60: FStVarCopyObj var_C4
  loc_6A1D63: FLdRfVar var_C4
  loc_6A1D66: ILdUI1 pump
  loc_6A1D6A: CI4UI1
  loc_6A1D6B: ImpAdLdRf MemVar_74C1F4
  loc_6A1D6E: Ary1LdRf
  loc_6A1D6F: CVarRef
  loc_6A1D74: FLdRfVar var_E4
  loc_6A1D77: ImpAdCallFPR4  = Format(, )
  loc_6A1D7C: FLdRfVar var_E4
  loc_6A1D7F: ConcatVar var_F4
  loc_6A1D83: LitVarStr var_128, ".bmp"
  loc_6A1D88: ConcatVar var_114
  loc_6A1D8C: CStrVarTmp
  loc_6A1D8D: FStStr var_8C
  loc_6A1D90: FFreeVar var_C4 = "": var_E4 = "": var_F4 = ""
  loc_6A1D9B: Branch loc_6A1E64
  loc_6A1DA2: ImpAdLdUI1
  loc_6A1DA6: CI2UI1
  loc_6A1DA8: LitI2_Byte 1
  loc_6A1DAA: EqI2
  loc_6A1DAB: BranchF loc_6A1DB1
  loc_6A1DAE: Branch loc_6A1E62
  loc_6A1DB5: ImpAdLdRf MemVar_74C0F9
  loc_6A1DB8: CVarRef
  loc_6A1DBD: LitVarI2 var_C4, 5
  loc_6A1DC2: ImpAdLdUI1
  loc_6A1DC6: CI2UI1
  loc_6A1DC8: LitI2_Byte 0
  loc_6A1DCA: EqI2
  loc_6A1DCB: CVarBoolI2 var_B4
  loc_6A1DCF: FLdRfVar var_E4
  loc_6A1DD2: ImpAdCallFPR4  = IIf(, , )
  loc_6A1DD7: FLdRfVar var_E4
  loc_6A1DDA: CI4Var
  loc_6A1DDC: ImpAdLdRf MemVar_74A23C
  loc_6A1DDF: Ary1LdRf
  loc_6A1DE0: CVarRef
  loc_6A1DE5: ImpAdLdUI1
  loc_6A1DE9: CI2UI1
  loc_6A1DEB: LitI2_Byte 1
  loc_6A1DED: AddI2
  loc_6A1DEE: CI4UI1
  loc_6A1DEF: ImpAdLdRf MemVar_74A23C
  loc_6A1DF2: Ary1LdRf
  loc_6A1DF3: CVarRef
  loc_6A1DF8: ILdUI1 pump
  loc_6A1DFC: ImpAdLdUI1
  loc_6A1E00: LeUI1
  loc_6A1E02: CVarBoolI2 var_128
  loc_6A1E06: FLdRfVar var_F4
  loc_6A1E09: ImpAdCallFPR4  = IIf(, , )
  loc_6A1E0E: FLdRfVar var_F4
  loc_6A1E11: CStrVarVal var_94
  loc_6A1E15: FLdPrThis
  loc_6A1E16: VCallAd Control_ID_Marca
  loc_6A1E19: FStAdFunc var_90
  loc_6A1E1C: FLdPr var_90
  loc_6A1E1F: Me.Caption = from_stack_1
  loc_6A1E24: FFree1Str var_94
  loc_6A1E27: FFree1Ad var_90
  loc_6A1E2A: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_128 = ""
  loc_6A1E39: FLdRfVar var_94
  loc_6A1E3C: FLdRfVar var_90
  loc_6A1E3F: ImpAdLdRf MemVar_7520D4
  loc_6A1E42: NewIfNullPr Global
  loc_6A1E45:  = Global.App
  loc_6A1E4A: FLdPr var_90
  loc_6A1E4D:  = App.Path
  loc_6A1E52: ILdRf var_94
  loc_6A1E55: LitStr "\Pumps\PumpGNC.bmp"
  loc_6A1E58: ConcatStr
  loc_6A1E59: FStStr var_8C
  loc_6A1E5C: FFree1Str var_94
  loc_6A1E5F: FFree1Ad var_90
  loc_6A1E68: ImpAdLdUI1
  loc_6A1E6C: CI2UI1
  loc_6A1E6E: LitI2_Byte 1
  loc_6A1E70: EqI2
  loc_6A1E71: BranchF loc_6A1E9F
  loc_6A1E76: FLdRfVar var_94
  loc_6A1E79: FLdRfVar var_90
  loc_6A1E7C: ImpAdLdRf MemVar_7520D4
  loc_6A1E7F: NewIfNullPr Global
  loc_6A1E82:  = Global.App
  loc_6A1E87: FLdPr var_90
  loc_6A1E8A:  = App.Path
  loc_6A1E8F: ILdRf var_94
  loc_6A1E92: LitStr "\Pumps\Pump11.bmp"
  loc_6A1E95: ConcatStr
  loc_6A1E96: FStStr var_8C
  loc_6A1E99: FFree1Str var_94
  loc_6A1E9C: FFree1Ad var_90
  loc_6A1EA1: FLdRfVar var_8C
  loc_6A1EA4: from_stack_2v = Proc_161_143_5E3AB4(from_stack_1v)
  loc_6A1EAB: ILdUI1 pump
  loc_6A1EAF: CI4UI1
  loc_6A1EB0: ImpAdLdRf MemVar_74C1F4
  loc_6A1EB3: Ary1LdUI1
  loc_6A1EB5: CI4UI1
  loc_6A1EB6: ImpAdLdRf MemVar_74A1A4
  loc_6A1EB9: Ary1LdI4
  loc_6A1EBA: FLdPrThis
  loc_6A1EBB: VCallAd Control_ID_Modelo
  loc_6A1EBE: FStAdFunc var_90
  loc_6A1EC1: FLdPr var_90
  loc_6A1EC4: Me.Caption = from_stack_1
  loc_6A1EC9: FFree1Ad var_90
  loc_6A1ECE: ILdUI1 pump
  loc_6A1ED2: CI4UI1
  loc_6A1ED3: ImpAdLdRf MemVar_74C334
  loc_6A1ED6: Ary1LdUI1
  loc_6A1ED8: CI2UI1
  loc_6A1EDA: LitI2_Byte 1
  loc_6A1EDC: AddI2
  loc_6A1EDD: CI4UI1
  loc_6A1EDE: ImpAdLdRf MemVar_74A254
  loc_6A1EE1: Ary1LdI4
  loc_6A1EE2: FLdPrThis
  loc_6A1EE3: VCallAd Control_ID_TipoDespacho
  loc_6A1EE6: FStAdFunc var_90
  loc_6A1EE9: FLdPr var_90
  loc_6A1EEC: Me.Caption = from_stack_1
  loc_6A1EF1: FFree1Ad var_90
  loc_6A1EF6: ILdUI1 pump
  loc_6A1EFA: CI4UI1
  loc_6A1EFB: ImpAdLdRf MemVar_74BFC8
  loc_6A1EFE: Ary1LdI2
  loc_6A1EFF: CStrUI1
  loc_6A1F01: FStStrNoPop var_94
  loc_6A1F04: FLdPrThis
  loc_6A1F05: VCallAd Control_ID_lblNiveldePrecio2
  loc_6A1F08: FStAdFunc var_90
  loc_6A1F0B: FLdPr var_90
  loc_6A1F0E: Me.Caption = from_stack_1
  loc_6A1F13: FFree1Str var_94
  loc_6A1F16: FFree1Ad var_90
  loc_6A1F1B: ImpAdLdI4 MemVar_74BEE0
  loc_6A1F1E: FLdPrThis
  loc_6A1F1F: VCallAd Control_ID_LabelAbreviaMang
  loc_6A1F22: FStAdFunc var_90
  loc_6A1F25: FLdPr var_90
  loc_6A1F28: Me.Caption = from_stack_1
  loc_6A1F2D: FFree1Ad var_90
  loc_6A1F32: LitI2_Byte 0
  loc_6A1F34: CUI1I2
  loc_6A1F36: FLdRfVar var_88
  loc_6A1F39: FLdUI1
  loc_6A1F3D: CI2UI1
  loc_6A1F3F: LitI2_Byte 1
  loc_6A1F41: SubI2
  loc_6A1F42: CUI1I2
  loc_6A1F44: ForUI1 var_14C
  loc_6A1F4C: LitI2_Byte &HFF
  loc_6A1F4E: FLdRfVar var_150
  loc_6A1F51: FLdUI1
  loc_6A1F55: CI2UI1
  loc_6A1F57: FLdPrThis
  loc_6A1F58: VCallAd Control_ID_LManguera
  loc_6A1F5B: FStAdFunc var_90
  loc_6A1F5E: FLdPr var_90
  loc_6A1F61: Set from_stack_2 = Me(from_stack_1)
  loc_6A1F66: FLdPr var_150
  loc_6A1F69: Me.Visible = from_stack_1b
  loc_6A1F6E: FFreeAd var_90 = ""
  loc_6A1F77: LitI2_Byte &HFF
  loc_6A1F79: FLdRfVar var_150
  loc_6A1F7C: FLdUI1
  loc_6A1F80: CI2UI1
  loc_6A1F82: FLdPrThis
  loc_6A1F83: VCallAd Control_ID_TPPU
  loc_6A1F86: FStAdFunc var_90
  loc_6A1F89: FLdPr var_90
  loc_6A1F8C: Set from_stack_2 = Me(from_stack_1)
  loc_6A1F91: FLdPr var_150
  loc_6A1F94: Me.Visible = from_stack_1b
  loc_6A1F99: FFreeAd var_90 = ""
  loc_6A1FA2: LitI2_Byte &HFF
  loc_6A1FA4: FLdRfVar var_150
  loc_6A1FA7: FLdUI1
  loc_6A1FAB: CI2UI1
  loc_6A1FAD: FLdPrThis
  loc_6A1FAE: VCallAd Control_ID_TVolumen
  loc_6A1FB1: FStAdFunc var_90
  loc_6A1FB4: FLdPr var_90
  loc_6A1FB7: Set from_stack_2 = Me(from_stack_1)
  loc_6A1FBC: FLdPr var_150
  loc_6A1FBF: Me.Visible = from_stack_1b
  loc_6A1FC4: FFreeAd var_90 = ""
  loc_6A1FCD: LitI2_Byte &HFF
  loc_6A1FCF: FLdRfVar var_150
  loc_6A1FD2: FLdUI1
  loc_6A1FD6: CI2UI1
  loc_6A1FD8: FLdPrThis
  loc_6A1FD9: VCallAd Control_ID_TMonto
  loc_6A1FDC: FStAdFunc var_90
  loc_6A1FDF: FLdPr var_90
  loc_6A1FE2: Set from_stack_2 = Me(from_stack_1)
  loc_6A1FE7: FLdPr var_150
  loc_6A1FEA: Me.Visible = from_stack_1b
  loc_6A1FEF: FFreeAd var_90 = ""
  loc_6A1FF8: LitI4 1
  loc_6A1FFD: LitI4 1
  loc_6A2002: ImpAdLdRf MemVar_74C350
  loc_6A2005: CVarRef
  loc_6A200A: FLdUI1
  loc_6A200E: CI2UI1
  loc_6A2010: LitI2_Byte 1
  loc_6A2012: AddI2
  loc_6A2013: CI4UI1
  loc_6A2014: ILdUI1 pump
  loc_6A2018: CI4UI1
  loc_6A2019: ImpAdLdRf MemVar_74BF78
  loc_6A201C: Ary1LdPr
  loc_6A201D: MemLdRfVar from_stack_1.global_0
  loc_6A2020: AryInRecLdPr
  loc_6A2026: MemLdStr global_0
  loc_6A2029: CR8I4
  loc_6A202A: ImpAdLdFPR4 MemVar_74C2DC
  loc_6A202D: DivR8
  loc_6A202E: CVarR8
  loc_6A2032: FLdRfVar var_E4
  loc_6A2035: ImpAdCallFPR4  = Format(, )
  loc_6A203A: FLdRfVar var_E4
  loc_6A203D: CStrVarVal var_94
  loc_6A2041: FLdRfVar var_150
  loc_6A2044: FLdUI1
  loc_6A2048: CI2UI1
  loc_6A204A: FLdPrThis
  loc_6A204B: VCallAd Control_ID_TPPU
  loc_6A204E: FStAdFunc var_90
  loc_6A2051: FLdPr var_90
  loc_6A2054: Set from_stack_2 = Me(from_stack_1)
  loc_6A2059: FLdPr var_150
  loc_6A205C: Me.Caption = from_stack_1
  loc_6A2061: FFree1Str var_94
  loc_6A2064: FFreeAd var_90 = ""
  loc_6A206B: FFreeVar var_C4 = ""
  loc_6A2074: LitI4 1
  loc_6A2079: LitI4 1
  loc_6A207E: LitVarStr var_D4, "#0.00"
  loc_6A2083: FStVarCopyObj var_E4
  loc_6A2086: FLdRfVar var_E4
  loc_6A2089: FLdUI1
  loc_6A208D: CI2UI1
  loc_6A208F: LitI2_Byte 1
  loc_6A2091: AddI2
  loc_6A2092: CI4UI1
  loc_6A2093: ILdUI1 pump
  loc_6A2097: CI4UI1
  loc_6A2098: ImpAdLdRf MemVar_74BF78
  loc_6A209B: Ary1LdPr
  loc_6A209C: MemLdRfVar from_stack_1.global_16
  loc_6A209F: AryInRecLdPr
  loc_6A20A5: MemLdStr global_0
  loc_6A20A8: CR8I4
  loc_6A20A9: LitI2_Byte &H64
  loc_6A20AB: CR8I2
  loc_6A20AC: DivR8
  loc_6A20AD: CVarR8
  loc_6A20B1: FLdRfVar var_F4
  loc_6A20B4: ImpAdCallFPR4  = Format(, )
  loc_6A20B9: FLdRfVar var_F4
  loc_6A20BC: CStrVarVal var_94
  loc_6A20C0: FLdRfVar var_150
  loc_6A20C3: FLdUI1
  loc_6A20C7: CI2UI1
  loc_6A20C9: FLdPrThis
  loc_6A20CA: VCallAd Control_ID_TVolumen
  loc_6A20CD: FStAdFunc var_90
  loc_6A20D0: FLdPr var_90
  loc_6A20D3: Set from_stack_2 = Me(from_stack_1)
  loc_6A20D8: FLdPr var_150
  loc_6A20DB: Me.Caption = from_stack_1
  loc_6A20E0: FFree1Str var_94
  loc_6A20E3: FFreeAd var_90 = ""
  loc_6A20EA: FFreeVar var_C4 = "": var_E4 = ""
  loc_6A20F5: LitI4 1
  loc_6A20FA: LitI4 1
  loc_6A20FF: ImpAdLdRf MemVar_74C364
  loc_6A2102: CVarRef
  loc_6A2107: FLdUI1
  loc_6A210B: CI2UI1
  loc_6A210D: LitI2_Byte 1
  loc_6A210F: AddI2
  loc_6A2110: CI4UI1
  loc_6A2111: ILdUI1 pump
  loc_6A2115: CI4UI1
  loc_6A2116: ImpAdLdRf MemVar_74BF78
  loc_6A2119: Ary1LdPr
  loc_6A211A: MemLdRfVar from_stack_1.global_32
  loc_6A211D: AryInRecLdPr
  loc_6A2123: MemLdStr global_0
  loc_6A2126: CR8I4
  loc_6A2127: ImpAdLdFPR4 MemVar_74C2E0
  loc_6A212A: DivR8
  loc_6A212B: CVarR8
  loc_6A212F: FLdRfVar var_E4
  loc_6A2132: ImpAdCallFPR4  = Format(, )
  loc_6A2137: FLdRfVar var_E4
  loc_6A213A: CStrVarVal var_94
  loc_6A213E: FLdRfVar var_150
  loc_6A2141: FLdUI1
  loc_6A2145: CI2UI1
  loc_6A2147: FLdPrThis
  loc_6A2148: VCallAd Control_ID_TMonto
  loc_6A214B: FStAdFunc var_90
  loc_6A214E: FLdPr var_90
  loc_6A2151: Set from_stack_2 = Me(from_stack_1)
  loc_6A2156: FLdPr var_150
  loc_6A2159: Me.Caption = from_stack_1
  loc_6A215E: FFree1Str var_94
  loc_6A2161: FFreeAd var_90 = ""
  loc_6A2168: FFreeVar var_C4 = ""
  loc_6A2171: FLdRfVar var_88
  loc_6A2174: NextUI1
  loc_6A217C: FLdUI1
  loc_6A2180: FLdRfVar var_88
  loc_6A2183: LitI2_Byte 3
  loc_6A2185: CUI1I2
  loc_6A2187: ForUI1 var_154
  loc_6A218F: LitI2_Byte 0
  loc_6A2191: FLdRfVar var_150
  loc_6A2194: FLdUI1
  loc_6A2198: CI2UI1
  loc_6A219A: FLdPrThis
  loc_6A219B: VCallAd Control_ID_LManguera
  loc_6A219E: FStAdFunc var_90
  loc_6A21A1: FLdPr var_90
  loc_6A21A4: Set from_stack_2 = Me(from_stack_1)
  loc_6A21A9: FLdPr var_150
  loc_6A21AC: Me.Visible = from_stack_1b
  loc_6A21B1: FFreeAd var_90 = ""
  loc_6A21BA: LitI2_Byte 0
  loc_6A21BC: FLdRfVar var_150
  loc_6A21BF: FLdUI1
  loc_6A21C3: CI2UI1
  loc_6A21C5: FLdPrThis
  loc_6A21C6: VCallAd Control_ID_TPPU
  loc_6A21C9: FStAdFunc var_90
  loc_6A21CC: FLdPr var_90
  loc_6A21CF: Set from_stack_2 = Me(from_stack_1)
  loc_6A21D4: FLdPr var_150
  loc_6A21D7: Me.Visible = from_stack_1b
  loc_6A21DC: FFreeAd var_90 = ""
  loc_6A21E5: LitI2_Byte 0
  loc_6A21E7: FLdRfVar var_150
  loc_6A21EA: FLdUI1
  loc_6A21EE: CI2UI1
  loc_6A21F0: FLdPrThis
  loc_6A21F1: VCallAd Control_ID_TVolumen
  loc_6A21F4: FStAdFunc var_90
  loc_6A21F7: FLdPr var_90
  loc_6A21FA: Set from_stack_2 = Me(from_stack_1)
  loc_6A21FF: FLdPr var_150
  loc_6A2202: Me.Visible = from_stack_1b
  loc_6A2207: FFreeAd var_90 = ""
  loc_6A2210: LitI2_Byte 0
  loc_6A2212: FLdRfVar var_150
  loc_6A2215: FLdUI1
  loc_6A2219: CI2UI1
  loc_6A221B: FLdPrThis
  loc_6A221C: VCallAd Control_ID_TMonto
  loc_6A221F: FStAdFunc var_90
  loc_6A2222: FLdPr var_90
  loc_6A2225: Set from_stack_2 = Me(from_stack_1)
  loc_6A222A: FLdPr var_150
  loc_6A222D: Me.Visible = from_stack_1b
  loc_6A2232: FFreeAd var_90 = ""
  loc_6A223B: FLdRfVar var_88
  loc_6A223E: NextUI1
  loc_6A2246: ExitProcHresult
End Sub

Public Sub ActualizarDatosPump() '5D97CC
  'Data Table: 45B254
  loc_5D9794: LitI2_Byte 1
  loc_5D9796: FLdRfVar var_86
  loc_5D9799: ImpAdLdUI1
  loc_5D979D: CI2UI1
  loc_5D979F: ForI2 var_8A
  loc_5D97A5: FLdI2 var_86
  loc_5D97A8: CUI1I2
  loc_5D97AA: PopTmpLdAd1
  loc_5D97AE: Call RefreshGeneralData(from_stack_1v)
  loc_5D97B3: FLdRfVar var_86
  loc_5D97B6: NextI2 var_8A, loc_5D97A5
  loc_5D97BB: FLdPr Me
  loc_5D97BE: MemLdUI1 Surtidor_Actual
  loc_5D97C2: PopTmpLdAd1
  loc_5D97C6: Call RefreshGeneralData(from_stack_1v)
  loc_5D97CB: ExitProcHresult
End Sub

Public Sub RefreshTotalData(pump) '62C51C
  'Data Table: 45B254
  loc_62C37C: FLdRfVar var_92
  loc_62C37F: FLdRfVar var_8C
  loc_62C382: ILdUI1 pump
  loc_62C386: FLdRfVar var_90
  loc_62C389: ImpAdLdRf MemVar_74C760
  loc_62C38C: NewIfNullPr Formx
  loc_62C38F: from_stack_1v = Formx.global_4589716Get()
  loc_62C394: FLdPr var_90
  loc_62C39C: FLdI2 var_92
  loc_62C39F: NotI4
  loc_62C3A0: FFree1Ad var_90
  loc_62C3A3: BranchF loc_62C3D2
  loc_62C3A6: FLdRfVar var_A4
  loc_62C3A9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62C3AE: FLdRfVar var_A4
  loc_62C3B1: CBoolVarNull
  loc_62C3B3: FFree1Var var_A4 = ""
  loc_62C3B6: BranchF loc_62C3CF
  loc_62C3B9: ILdRf Me
  loc_62C3BC: FStAdNoPop
  loc_62C3C0: ImpAdLdRf MemVar_7520D4
  loc_62C3C3: NewIfNullPr Global
  loc_62C3C6: Global.Unload from_stack_1
  loc_62C3CB: FFree1Ad var_90
  loc_62C3CE: ExitProcHresult
  loc_62C3CF: Branch loc_62C37C
  loc_62C3D2: LitI2_Byte 1
  loc_62C3D4: CUI1I2
  loc_62C3D6: FStUI1 var_88
  loc_62C3DA: LitI2_Byte 1
  loc_62C3DC: CUI1I2
  loc_62C3DE: FLdRfVar var_86
  loc_62C3E1: LitI2_Byte 4
  loc_62C3E3: CUI1I2
  loc_62C3E5: ForUI1 var_A8
  loc_62C3EB: LitVarI2 var_A4, 8
  loc_62C3F0: FLdUI1
  loc_62C3F4: CI4UI1
  loc_62C3F5: FLdRfVar var_8C
  loc_62C3F8: CVarRef
  loc_62C3FD: FLdRfVar var_D8
  loc_62C400: ImpAdCallFPR4  = Mid(, , )
  loc_62C405: FLdRfVar var_D8
  loc_62C408: FnCLngVar
  loc_62C40A: FLdUI1
  loc_62C40E: CI4UI1
  loc_62C40F: ILdUI1 pump
  loc_62C413: CI4UI1
  loc_62C414: ImpAdLdRf MemVar_74BF78
  loc_62C417: Ary1LdPr
  loc_62C418: MemLdRfVar from_stack_1.global_32
  loc_62C41B: AryInRecLdPr
  loc_62C421: MemStI4 global_0
  loc_62C424: FFreeVar var_A4 = "": var_D8 = ""
  loc_62C42D: FLdUI1
  loc_62C431: CI2UI1
  loc_62C433: LitI2_Byte 8
  loc_62C435: AddI2
  loc_62C436: CUI1I2
  loc_62C438: FStUI1 var_88
  loc_62C43C: FLdRfVar var_86
  loc_62C43F: NextUI1
  loc_62C445: LitI2_Byte 1
  loc_62C447: CUI1I2
  loc_62C449: FLdRfVar var_86
  loc_62C44C: LitI2_Byte 4
  loc_62C44E: CUI1I2
  loc_62C450: ForUI1 var_DC
  loc_62C456: LitVarI2 var_A4, 8
  loc_62C45B: FLdUI1
  loc_62C45F: CI4UI1
  loc_62C460: FLdRfVar var_8C
  loc_62C463: CVarRef
  loc_62C468: FLdRfVar var_D8
  loc_62C46B: ImpAdCallFPR4  = Mid(, , )
  loc_62C470: FLdRfVar var_D8
  loc_62C473: FnCLngVar
  loc_62C475: FLdUI1
  loc_62C479: CI4UI1
  loc_62C47A: ILdUI1 pump
  loc_62C47E: CI4UI1
  loc_62C47F: ImpAdLdRf MemVar_74BF78
  loc_62C482: Ary1LdPr
  loc_62C483: MemLdRfVar from_stack_1.global_16
  loc_62C486: AryInRecLdPr
  loc_62C48C: MemStI4 global_0
  loc_62C48F: FFreeVar var_A4 = "": var_D8 = ""
  loc_62C498: FLdUI1
  loc_62C49C: CI2UI1
  loc_62C49E: LitI2_Byte 8
  loc_62C4A0: AddI2
  loc_62C4A1: CUI1I2
  loc_62C4A3: FStUI1 var_88
  loc_62C4A7: FLdRfVar var_86
  loc_62C4AA: NextUI1
  loc_62C4B0: LitI2_Byte 1
  loc_62C4B2: CUI1I2
  loc_62C4B4: FLdRfVar var_86
  loc_62C4B7: LitI2_Byte 4
  loc_62C4B9: CUI1I2
  loc_62C4BB: ForUI1 var_E0
  loc_62C4C1: LitVarI2 var_A4, 6
  loc_62C4C6: FLdUI1
  loc_62C4CA: CI4UI1
  loc_62C4CB: FLdRfVar var_8C
  loc_62C4CE: CVarRef
  loc_62C4D3: FLdRfVar var_D8
  loc_62C4D6: ImpAdCallFPR4  = Mid(, , )
  loc_62C4DB: FLdRfVar var_D8
  loc_62C4DE: FnCLngVar
  loc_62C4E0: FLdUI1
  loc_62C4E4: CI4UI1
  loc_62C4E5: ILdUI1 pump
  loc_62C4E9: CI4UI1
  loc_62C4EA: ImpAdLdRf MemVar_74BF78
  loc_62C4ED: Ary1LdPr
  loc_62C4EE: MemLdRfVar from_stack_1.global_0
  loc_62C4F1: AryInRecLdPr
  loc_62C4F7: MemStI4 global_0
  loc_62C4FA: FFreeVar var_A4 = "": var_D8 = ""
  loc_62C503: FLdUI1
  loc_62C507: CI2UI1
  loc_62C509: LitI2_Byte 6
  loc_62C50B: AddI2
  loc_62C50C: CUI1I2
  loc_62C50E: FStUI1 var_88
  loc_62C512: FLdRfVar var_86
  loc_62C515: NextUI1
  loc_62C51B: ExitProcHresult
End Sub

Public Sub RefreshAllTotals() '5D4930
  'Data Table: 45B254
  loc_5D490C: LitI2_Byte 1
  loc_5D490E: CUI1I2
  loc_5D4910: FLdRfVar var_86
  loc_5D4913: ImpAdLdUI1
  loc_5D4917: ForUI1 var_8A
  loc_5D491D: FLdRfVar var_86
  loc_5D4920: Call RefreshTotalData(from_stack_1v)
  loc_5D4925: FLdRfVar var_86
  loc_5D4928: NextUI1
  loc_5D492E: ExitProcHresult
End Sub

Public Sub RefreshTankButtons(pump) '63A72C
  'Data Table: 45B254
  loc_63A530: ILdUI1 pump
  loc_63A534: ImpAdCallUI1  = Proc_167_8_60CBC8()
  loc_63A53A: FStUI1 var_86
  loc_63A53E: LitI2_Byte 1
  loc_63A540: CUI1I2
  loc_63A542: FLdRfVar var_88
  loc_63A545: FLdUI1
  loc_63A549: ForUI1 var_8C
  loc_63A54F: LitVar_TRUE var_A4
  loc_63A552: PopAdLdVar
  loc_63A553: FLdRfVar var_94
  loc_63A556: FLdUI1
  loc_63A55A: CI2UI1
  loc_63A55C: LitI2_Byte 1
  loc_63A55E: SubI2
  loc_63A55F: FLdPrThis
  loc_63A560: VCallAd Control_ID_BotonTanque
  loc_63A563: FStAdFunc var_90
  loc_63A566: FLdPr var_90
  loc_63A569: Set from_stack_2 = Me(from_stack_1)
  loc_63A56E: FLdPr var_94
  loc_63A571: LateIdSt
  loc_63A576: FFreeAd var_90 = ""
  loc_63A57D: FLdRfVar var_88
  loc_63A580: NextUI1
  loc_63A586: FLdUI1
  loc_63A58A: CI2UI1
  loc_63A58C: LitI2_Byte 1
  loc_63A58E: AddI2
  loc_63A58F: CUI1I2
  loc_63A591: FLdRfVar var_88
  loc_63A594: LitI2_Byte 4
  loc_63A596: CUI1I2
  loc_63A598: ForUI1 var_A8
  loc_63A59E: LitVar_FALSE
  loc_63A5A2: PopAdLdVar
  loc_63A5A3: FLdRfVar var_94
  loc_63A5A6: FLdUI1
  loc_63A5AA: CI2UI1
  loc_63A5AC: LitI2_Byte 1
  loc_63A5AE: SubI2
  loc_63A5AF: FLdPrThis
  loc_63A5B0: VCallAd Control_ID_BotonTanque
  loc_63A5B3: FStAdFunc var_90
  loc_63A5B6: FLdPr var_90
  loc_63A5B9: Set from_stack_2 = Me(from_stack_1)
  loc_63A5BE: FLdPr var_94
  loc_63A5C1: LateIdSt
  loc_63A5C6: FFreeAd var_90 = ""
  loc_63A5CD: FLdRfVar var_88
  loc_63A5D0: NextUI1
  loc_63A5D6: LitI2_Byte 1
  loc_63A5D8: CUI1I2
  loc_63A5DA: FLdRfVar var_88
  loc_63A5DD: FLdUI1
  loc_63A5E1: ForUI1 var_AC
  loc_63A5E7: FLdRfVar var_B0
  loc_63A5EA: ILdUI1 pump
  loc_63A5EE: CI4UI1
  loc_63A5EF: FLdUI1
  loc_63A5F3: CI2UI1
  loc_63A5F5: LitI2_Byte 1
  loc_63A5F7: SubI2
  loc_63A5F8: CI4UI1
  loc_63A5F9: ImpAdLdRf MemVar_74C12C
  loc_63A5FC: AryLdPr
  loc_63A5FF: MemLdUI1 global_0
  loc_63A603: CI2UI1
  loc_63A605: ImpAdLdRf MemVar_74A220
  loc_63A608: NewIfNullPr clsProducts
  loc_63A610: ILdRf var_B0
  loc_63A613: LitStr " ("
  loc_63A616: ConcatStr
  loc_63A617: FStStrNoPop var_B4
  loc_63A61A: ILdUI1 pump
  loc_63A61E: CStrI2
  loc_63A620: FStStrNoPop var_B8
  loc_63A623: ConcatStr
  loc_63A624: CVarStr var_14C
  loc_63A627: LitI4 0
  loc_63A62C: LitI4 3
  loc_63A631: FLdRfVar var_BC
  loc_63A634: Redim
  loc_63A63E: LitVarStr var_A4, "a"
  loc_63A643: LitI4 0
  loc_63A648: ILdRf var_BC
  loc_63A64B: Ary1StVarCopy
  loc_63A64D: LitVarStr var_CC, "b"
  loc_63A652: LitI4 1
  loc_63A657: ILdRf var_BC
  loc_63A65A: Ary1StVarCopy
  loc_63A65C: LitVarStr var_DC, "c"
  loc_63A661: LitI4 2
  loc_63A666: ILdRf var_BC
  loc_63A669: Ary1StVarCopy
  loc_63A66B: LitVarStr var_EC, "d"
  loc_63A670: LitI4 3
  loc_63A675: ILdRf var_BC
  loc_63A678: Ary1StVarCopy
  loc_63A67A: FLdRfVar var_BC
  loc_63A67D: FLdUI1
  loc_63A681: CR8I2
  loc_63A682: PopFPR4
  loc_63A683: FLdRfVar var_FC
  loc_63A686: ImpAdCallFPR4  = Choose(, )
  loc_63A68B: FLdRfVar var_BC
  loc_63A68E: Erase
  loc_63A68F: FLdRfVar var_FC
  loc_63A692: LitVarStr var_11C, "_"
  loc_63A697: FStVarCopyObj var_12C
  loc_63A69A: FLdRfVar var_12C
  loc_63A69D: FLdUI1
  loc_63A6A1: CI2UI1
  loc_63A6A3: LitI2_Byte 1
  loc_63A6A5: EqI2
  loc_63A6A6: CVarBoolI2 var_10C
  loc_63A6AA: FLdRfVar var_13C
  loc_63A6AD: ImpAdCallFPR4  = IIf(, , )
  loc_63A6B2: FLdRfVar var_13C
  loc_63A6B5: ConcatVar var_15C
  loc_63A6B9: LitVarStr var_16C, ")"
  loc_63A6BE: ConcatVar var_17C
  loc_63A6C2: PopAdLdVar
  loc_63A6C3: FLdRfVar var_94
  loc_63A6C6: FLdUI1
  loc_63A6CA: CI2UI1
  loc_63A6CC: LitI2_Byte 1
  loc_63A6CE: SubI2
  loc_63A6CF: FLdPrThis
  loc_63A6D0: VCallAd Control_ID_BotonTanque
  loc_63A6D3: FStAdFunc var_90
  loc_63A6D6: FLdPr var_90
  loc_63A6D9: Set from_stack_2 = Me(from_stack_1)
  loc_63A6DE: FLdPr var_94
  loc_63A6E1: LateIdSt
  loc_63A6E6: FFreeStr var_B0 = "": var_B4 = ""
  loc_63A6EF: FFreeAd var_90 = ""
  loc_63A6F6: FFreeVar var_10C = "": var_12C = "": var_FC = "": var_14C = "": var_13C = "": var_15C = ""
  loc_63A707: FLdRfVar var_88
  loc_63A70A: NextUI1
  loc_63A710: LitI2_Byte 0
  loc_63A712: CUI1I2
  loc_63A714: PopTmpLdAd1
  loc_63A718: ILdRf pump
  loc_63A71B: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_63A720: LitI2_Byte 0
  loc_63A722: PopTmpLdAd2 var_17E
  loc_63A725: Call BotonTanque_UnknownEvent_8()
  loc_63A72A: ExitProcHresult
End Sub

Public Sub RefreshTankConnections(pump, hose) '701698
  'Data Table: 45B254
  loc_70056C: OnErrorGoto loc_701682
  loc_70056F: LitI2_Byte 0
  loc_700571: CUI1I2
  loc_700573: FStUI1 var_88
  loc_700577: FLdPr Me
  loc_70057A: MemLdI2 Prod2
  loc_70057D: BranchF loc_70065B
  loc_700580: LitI2_Byte 0
  loc_700582: CUI1I2
  loc_700584: FLdRfVar var_86
  loc_700587: LitI2_Byte 2
  loc_700589: CUI1I2
  loc_70058B: ForUI1 var_90
  loc_700591: ILdUI1 pump
  loc_700595: CI4UI1
  loc_700596: ILdUI1 hose
  loc_70059A: CI4UI1
  loc_70059B: FLdUI1
  loc_70059F: CI4UI1
  loc_7005A0: ImpAdLdRf MemVar_74C174
  loc_7005A3: AryLdPr
  loc_7005A6: MemLdUI1 global_0
  loc_7005AA: CI2UI1
  loc_7005AC: LitI2_Byte 0
  loc_7005AE: NeI2
  loc_7005AF: BranchF loc_7005C1
  loc_7005B2: FLdUI1
  loc_7005B6: CI2UI1
  loc_7005B8: LitI2_Byte 1
  loc_7005BA: AddI2
  loc_7005BB: CUI1I2
  loc_7005BD: FStUI1 var_88
  loc_7005C1: FLdRfVar var_86
  loc_7005C4: NextUI1
  loc_7005CA: FLdRfVar var_94
  loc_7005CD: ILdUI1 pump
  loc_7005D1: CI4UI1
  loc_7005D2: ILdUI1 hose
  loc_7005D6: CI4UI1
  loc_7005D7: LitI4 0
  loc_7005DC: ImpAdLdRf MemVar_74C14C
  loc_7005DF: AryLdPr
  loc_7005E2: MemLdUI1 global_0
  loc_7005E6: CI4UI1
  loc_7005E7: ImpAdLdRf MemVar_74C1D8
  loc_7005EA: Ary1LdUI1
  loc_7005EC: CI2UI1
  loc_7005EE: ImpAdLdRf MemVar_74A220
  loc_7005F1: NewIfNullPr clsProducts
  loc_7005F9: ILdRf var_94
  loc_7005FC: FLdPrThis
  loc_7005FD: VCallAd Control_ID_prod1_mezcla
  loc_700600: FStAdFunc var_98
  loc_700603: FLdPr var_98
  loc_700606: Me.Caption = from_stack_1
  loc_70060B: FFree1Str var_94
  loc_70060E: FFree1Ad var_98
  loc_700611: FLdRfVar var_94
  loc_700614: ILdUI1 pump
  loc_700618: CI4UI1
  loc_700619: ILdUI1 hose
  loc_70061D: CI4UI1
  loc_70061E: LitI4 0
  loc_700623: ImpAdLdRf MemVar_74C174
  loc_700626: AryLdPr
  loc_700629: MemLdUI1 global_0
  loc_70062D: CI4UI1
  loc_70062E: ImpAdLdRf MemVar_74C1D8
  loc_700631: Ary1LdUI1
  loc_700633: CI2UI1
  loc_700635: ImpAdLdRf MemVar_74A220
  loc_700638: NewIfNullPr clsProducts
  loc_700640: ILdRf var_94
  loc_700643: FLdPrThis
  loc_700644: VCallAd Control_ID_prod2_mezcla
  loc_700647: FStAdFunc var_98
  loc_70064A: FLdPr var_98
  loc_70064D: Me.Caption = from_stack_1
  loc_700652: FFree1Str var_94
  loc_700655: FFree1Ad var_98
  loc_700658: Branch loc_7006A5
  loc_70065B: LitI2_Byte 0
  loc_70065D: CUI1I2
  loc_70065F: FLdRfVar var_86
  loc_700662: LitI2_Byte 2
  loc_700664: CUI1I2
  loc_700666: ForUI1 var_9C
  loc_70066C: ILdUI1 pump
  loc_700670: CI4UI1
  loc_700671: ILdUI1 hose
  loc_700675: CI4UI1
  loc_700676: FLdUI1
  loc_70067A: CI4UI1
  loc_70067B: ImpAdLdRf MemVar_74C14C
  loc_70067E: AryLdPr
  loc_700681: MemLdUI1 global_0
  loc_700685: CI2UI1
  loc_700687: LitI2_Byte 0
  loc_700689: NeI2
  loc_70068A: BranchF loc_70069C
  loc_70068D: FLdUI1
  loc_700691: CI2UI1
  loc_700693: LitI2_Byte 1
  loc_700695: AddI2
  loc_700696: CUI1I2
  loc_700698: FStUI1 var_88
  loc_70069C: FLdRfVar var_86
  loc_70069F: NextUI1
  loc_7006A5: FLdUI1
  loc_7006A9: FStUI1 var_9E
  loc_7006AD: FLdUI1
  loc_7006B1: LitI2_Byte 1
  loc_7006B3: CUI1I2
  loc_7006B5: EqI2
  loc_7006B6: BranchF loc_70098E
  loc_7006B9: FLdRfVar var_A0
  loc_7006BC: FLdPrThis
  loc_7006BD: VCallAd Control_ID_Conexion1
  loc_7006C0: FStAdFunc var_98
  loc_7006C3: FLdPr var_98
  loc_7006C6:  = Me.Visible
  loc_7006CB: FLdI2 var_A0
  loc_7006CE: LitI2_Byte 0
  loc_7006D0: NeI2
  loc_7006D1: FLdRfVar var_A6
  loc_7006D4: FLdPrThis
  loc_7006D5: VCallAd Control_ID_Conexion3
  loc_7006D8: FStAdFunc var_A4
  loc_7006DB: FLdPr var_A4
  loc_7006DE:  = Me.Visible
  loc_7006E3: FLdI2 var_A6
  loc_7006E6: LitI2_Byte 0
  loc_7006E8: NeI2
  loc_7006E9: OrI4
  loc_7006EA: FLdRfVar var_AE
  loc_7006ED: FLdPrThis
  loc_7006EE: VCallAd Control_ID_Conexion2
  loc_7006F1: FStAdFunc var_AC
  loc_7006F4: FLdPr var_AC
  loc_7006F7:  = Me.Visible
  loc_7006FC: FLdI2 var_AE
  loc_7006FF: LitI2_Byte &HFF
  loc_700701: NeI2
  loc_700702: OrI4
  loc_700703: FFreeAd var_98 = "": var_A4 = ""
  loc_70070C: BranchF loc_70088F
  loc_70070F: LitI2_Byte 0
  loc_700711: PopTmpLdAd2 var_A6
  loc_700714: LitI2_Byte 0
  loc_700716: CUI1I2
  loc_700718: PopTmpLdAd1
  loc_70071C: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700721: LitI2_Byte &HFF
  loc_700723: PopTmpLdAd2 var_A6
  loc_700726: LitI2_Byte 1
  loc_700728: CUI1I2
  loc_70072A: PopTmpLdAd1
  loc_70072E: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700733: LitI2_Byte 0
  loc_700735: PopTmpLdAd2 var_A6
  loc_700738: LitI2_Byte 2
  loc_70073A: CUI1I2
  loc_70073C: PopTmpLdAd1
  loc_700740: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700745: LitI2_Byte 0
  loc_700747: FLdPrThis
  loc_700748: VCallAd Control_ID_ConexionDerecha
  loc_70074B: FStAdFunc var_98
  loc_70074E: FLdPr var_98
  loc_700751: Me.Visible = from_stack_1b
  loc_700756: FFree1Ad var_98
  loc_700759: LitI2_Byte 0
  loc_70075B: FLdPrThis
  loc_70075C: VCallAd Control_ID_ConexionIzquierda
  loc_70075F: FStAdFunc var_98
  loc_700762: FLdPr var_98
  loc_700765: Me.Visible = from_stack_1b
  loc_70076A: FFree1Ad var_98
  loc_70076D: LitI2_Byte 0
  loc_70076F: FLdPrThis
  loc_700770: VCallAd Control_ID_Conexion1
  loc_700773: FStAdFunc var_98
  loc_700776: FLdPr var_98
  loc_700779: Me.Visible = from_stack_1b
  loc_70077E: FFree1Ad var_98
  loc_700781: LitI2_Byte 0
  loc_700783: FLdPrThis
  loc_700784: VCallAd Control_ID_Conexion3
  loc_700787: FStAdFunc var_98
  loc_70078A: FLdPr var_98
  loc_70078D: Me.Visible = from_stack_1b
  loc_700792: FFree1Ad var_98
  loc_700795: LitI2_Byte &HFF
  loc_700797: FLdPrThis
  loc_700798: VCallAd Control_ID_Conexion2
  loc_70079B: FStAdFunc var_98
  loc_70079E: FLdPr var_98
  loc_7007A1: Me.Visible = from_stack_1b
  loc_7007A6: FFree1Ad var_98
  loc_7007A9: LitVar_FALSE
  loc_7007AD: PopAdLdVar
  loc_7007AE: FLdRfVar var_A4
  loc_7007B1: LitI2_Byte 0
  loc_7007B3: FLdPrThis
  loc_7007B4: VCallAd Control_ID_Tanque
  loc_7007B7: FStAdFunc var_98
  loc_7007BA: FLdPr var_98
  loc_7007BD: Set from_stack_2 = Me(from_stack_1)
  loc_7007C2: FLdPr var_A4
  loc_7007C5: LateIdSt
  loc_7007CA: FFreeAd var_98 = ""
  loc_7007D1: LitVar_TRUE var_C0
  loc_7007D4: PopAdLdVar
  loc_7007D5: FLdRfVar var_A4
  loc_7007D8: LitI2_Byte 1
  loc_7007DA: FLdPrThis
  loc_7007DB: VCallAd Control_ID_Tanque
  loc_7007DE: FStAdFunc var_98
  loc_7007E1: FLdPr var_98
  loc_7007E4: Set from_stack_2 = Me(from_stack_1)
  loc_7007E9: FLdPr var_A4
  loc_7007EC: LateIdSt
  loc_7007F1: FFreeAd var_98 = ""
  loc_7007F8: LitVar_FALSE
  loc_7007FC: PopAdLdVar
  loc_7007FD: FLdRfVar var_A4
  loc_700800: LitI2_Byte 2
  loc_700802: FLdPrThis
  loc_700803: VCallAd Control_ID_Tanque
  loc_700806: FStAdFunc var_98
  loc_700809: FLdPr var_98
  loc_70080C: Set from_stack_2 = Me(from_stack_1)
  loc_700811: FLdPr var_A4
  loc_700814: LateIdSt
  loc_700819: FFreeAd var_98 = ""
  loc_700820: LitI2_Byte 0
  loc_700822: FLdRfVar var_A4
  loc_700825: LitI2_Byte 0
  loc_700827: FLdPrThis
  loc_700828: VCallAd Control_ID_LTanque
  loc_70082B: FStAdFunc var_98
  loc_70082E: FLdPr var_98
  loc_700831: Set from_stack_2 = Me(from_stack_1)
  loc_700836: FLdPr var_A4
  loc_700839: Me.Visible = from_stack_1b
  loc_70083E: FFreeAd var_98 = ""
  loc_700845: LitI2_Byte &HFF
  loc_700847: FLdRfVar var_A4
  loc_70084A: LitI2_Byte 1
  loc_70084C: FLdPrThis
  loc_70084D: VCallAd Control_ID_LTanque
  loc_700850: FStAdFunc var_98
  loc_700853: FLdPr var_98
  loc_700856: Set from_stack_2 = Me(from_stack_1)
  loc_70085B: FLdPr var_A4
  loc_70085E: Me.Visible = from_stack_1b
  loc_700863: FFreeAd var_98 = ""
  loc_70086A: LitI2_Byte 0
  loc_70086C: FLdRfVar var_A4
  loc_70086F: LitI2_Byte 2
  loc_700871: FLdPrThis
  loc_700872: VCallAd Control_ID_LTanque
  loc_700875: FStAdFunc var_98
  loc_700878: FLdPr var_98
  loc_70087B: Set from_stack_2 = Me(from_stack_1)
  loc_700880: FLdPr var_A4
  loc_700883: Me.Visible = from_stack_1b
  loc_700888: FFreeAd var_98 = ""
  loc_70088F: FLdPr Me
  loc_700892: MemLdI2 Prod2
  loc_700895: BranchF loc_700901
  loc_700898: ILdUI1 pump
  loc_70089C: CI4UI1
  loc_70089D: ILdUI1 hose
  loc_7008A1: CI4UI1
  loc_7008A2: LitI4 0
  loc_7008A7: ImpAdLdRf MemVar_74C174
  loc_7008AA: AryLdPr
  loc_7008AD: MemLdUI1 global_0
  loc_7008B1: CStrI2
  loc_7008B3: FStStrNoPop var_94
  loc_7008B6: FLdRfVar var_A4
  loc_7008B9: LitI2_Byte 1
  loc_7008BB: FLdPrThis
  loc_7008BC: VCallAd Control_ID_LTanque
  loc_7008BF: FStAdFunc var_98
  loc_7008C2: FLdPr var_98
  loc_7008C5: Set from_stack_2 = Me(from_stack_1)
  loc_7008CA: FLdPr var_A4
  loc_7008CD: Me.Caption = from_stack_1
  loc_7008D2: FFree1Str var_94
  loc_7008D5: FFreeAd var_98 = ""
  loc_7008DC: LitI2_Byte 1
  loc_7008DE: CUI1I2
  loc_7008E0: PopTmpLdAd1
  loc_7008E4: ILdUI1 pump
  loc_7008E8: CI4UI1
  loc_7008E9: ILdUI1 hose
  loc_7008ED: CI4UI1
  loc_7008EE: LitI4 0
  loc_7008F3: ImpAdLdRf MemVar_74C174
  loc_7008F6: AryLdRf
  loc_7008F9: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_7008FE: Branch loc_700967
  loc_700901: ILdUI1 pump
  loc_700905: CI4UI1
  loc_700906: ILdUI1 hose
  loc_70090A: CI4UI1
  loc_70090B: LitI4 0
  loc_700910: ImpAdLdRf MemVar_74C14C
  loc_700913: AryLdPr
  loc_700916: MemLdUI1 global_0
  loc_70091A: CStrI2
  loc_70091C: FStStrNoPop var_94
  loc_70091F: FLdRfVar var_A4
  loc_700922: LitI2_Byte 1
  loc_700924: FLdPrThis
  loc_700925: VCallAd Control_ID_LTanque
  loc_700928: FStAdFunc var_98
  loc_70092B: FLdPr var_98
  loc_70092E: Set from_stack_2 = Me(from_stack_1)
  loc_700933: FLdPr var_A4
  loc_700936: Me.Caption = from_stack_1
  loc_70093B: FFree1Str var_94
  loc_70093E: FFreeAd var_98 = ""
  loc_700945: LitI2_Byte 1
  loc_700947: CUI1I2
  loc_700949: PopTmpLdAd1
  loc_70094D: ILdUI1 pump
  loc_700951: CI4UI1
  loc_700952: ILdUI1 hose
  loc_700956: CI4UI1
  loc_700957: LitI4 0
  loc_70095C: ImpAdLdRf MemVar_74C14C
  loc_70095F: AryLdRf
  loc_700962: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_700967: LitI2_Byte 1
  loc_700969: CUI1I2
  loc_70096B: PopTmpLdAd1
  loc_70096F: Call RefreshManifold(from_stack_1v)
  loc_700974: LitVar_FALSE
  loc_700978: PopAdLdVar
  loc_700979: FLdPrThis
  loc_70097A: VCallAd Control_ID_CambioManifold
  loc_70097D: FStAdFunc var_98
  loc_700980: FLdPr var_98
  loc_700983: LateIdSt
  loc_700988: FFree1Ad var_98
  loc_70098B: Branch loc_701681
  loc_70098E: FLdUI1
  loc_700992: LitI2_Byte 2
  loc_700994: CUI1I2
  loc_700996: EqI2
  loc_700997: BranchF loc_700FDC
  loc_70099A: FLdRfVar var_A0
  loc_70099D: FLdPrThis
  loc_70099E: VCallAd Control_ID_Conexion1
  loc_7009A1: FStAdFunc var_98
  loc_7009A4: FLdPr var_98
  loc_7009A7:  = Me.Visible
  loc_7009AC: FLdI2 var_A0
  loc_7009AF: LitI2_Byte &HFF
  loc_7009B1: NeI2
  loc_7009B2: FLdRfVar var_A6
  loc_7009B5: FLdPrThis
  loc_7009B6: VCallAd Control_ID_Conexion3
  loc_7009B9: FStAdFunc var_A4
  loc_7009BC: FLdPr var_A4
  loc_7009BF:  = Me.Visible
  loc_7009C4: FLdI2 var_A6
  loc_7009C7: LitI2_Byte &HFF
  loc_7009C9: NeI2
  loc_7009CA: OrI4
  loc_7009CB: FLdRfVar var_AE
  loc_7009CE: FLdPrThis
  loc_7009CF: VCallAd Control_ID_Conexion2
  loc_7009D2: FStAdFunc var_AC
  loc_7009D5: FLdPr var_AC
  loc_7009D8:  = Me.Visible
  loc_7009DD: FLdI2 var_AE
  loc_7009E0: LitI2_Byte 0
  loc_7009E2: NeI2
  loc_7009E3: OrI4
  loc_7009E4: FFreeAd var_98 = "": var_A4 = ""
  loc_7009ED: BranchF loc_700B6F
  loc_7009F0: LitI2_Byte &HFF
  loc_7009F2: PopTmpLdAd2 var_A6
  loc_7009F5: LitI2_Byte 0
  loc_7009F7: CUI1I2
  loc_7009F9: PopTmpLdAd1
  loc_7009FD: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700A02: LitI2_Byte 0
  loc_700A04: PopTmpLdAd2 var_A6
  loc_700A07: LitI2_Byte 1
  loc_700A09: CUI1I2
  loc_700A0B: PopTmpLdAd1
  loc_700A0F: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700A14: LitI2_Byte &HFF
  loc_700A16: PopTmpLdAd2 var_A6
  loc_700A19: LitI2_Byte 2
  loc_700A1B: CUI1I2
  loc_700A1D: PopTmpLdAd1
  loc_700A21: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_700A26: LitI2_Byte &HFF
  loc_700A28: FLdPrThis
  loc_700A29: VCallAd Control_ID_ConexionDerecha
  loc_700A2C: FStAdFunc var_98
  loc_700A2F: FLdPr var_98
  loc_700A32: Me.Visible = from_stack_1b
  loc_700A37: FFree1Ad var_98
  loc_700A3A: LitI2_Byte &HFF
  loc_700A3C: FLdPrThis
  loc_700A3D: VCallAd Control_ID_ConexionIzquierda
  loc_700A40: FStAdFunc var_98
  loc_700A43: FLdPr var_98
  loc_700A46: Me.Visible = from_stack_1b
  loc_700A4B: FFree1Ad var_98
  loc_700A4E: LitI2_Byte &HFF
  loc_700A50: FLdPrThis
  loc_700A51: VCallAd Control_ID_Conexion1
  loc_700A54: FStAdFunc var_98
  loc_700A57: FLdPr var_98
  loc_700A5A: Me.Visible = from_stack_1b
  loc_700A5F: FFree1Ad var_98
  loc_700A62: LitI2_Byte &HFF
  loc_700A64: FLdPrThis
  loc_700A65: VCallAd Control_ID_Conexion3
  loc_700A68: FStAdFunc var_98
  loc_700A6B: FLdPr var_98
  loc_700A6E: Me.Visible = from_stack_1b
  loc_700A73: FFree1Ad var_98
  loc_700A76: LitI2_Byte 0
  loc_700A78: FLdPrThis
  loc_700A79: VCallAd Control_ID_Conexion2
  loc_700A7C: FStAdFunc var_98
  loc_700A7F: FLdPr var_98
  loc_700A82: Me.Visible = from_stack_1b
  loc_700A87: FFree1Ad var_98
  loc_700A8A: LitVar_TRUE var_C0
  loc_700A8D: PopAdLdVar
  loc_700A8E: FLdRfVar var_A4
  loc_700A91: LitI2_Byte 0
  loc_700A93: FLdPrThis
  loc_700A94: VCallAd Control_ID_Tanque
  loc_700A97: FStAdFunc var_98
  loc_700A9A: FLdPr var_98
  loc_700A9D: Set from_stack_2 = Me(from_stack_1)
  loc_700AA2: FLdPr var_A4
  loc_700AA5: LateIdSt
  loc_700AAA: FFreeAd var_98 = ""
  loc_700AB1: LitVar_FALSE
  loc_700AB5: PopAdLdVar
  loc_700AB6: FLdRfVar var_A4
  loc_700AB9: LitI2_Byte 1
  loc_700ABB: FLdPrThis
  loc_700ABC: VCallAd Control_ID_Tanque
  loc_700ABF: FStAdFunc var_98
  loc_700AC2: FLdPr var_98
  loc_700AC5: Set from_stack_2 = Me(from_stack_1)
  loc_700ACA: FLdPr var_A4
  loc_700ACD: LateIdSt
  loc_700AD2: FFreeAd var_98 = ""
  loc_700AD9: LitVar_TRUE var_C0
  loc_700ADC: PopAdLdVar
  loc_700ADD: FLdRfVar var_A4
  loc_700AE0: LitI2_Byte 2
  loc_700AE2: FLdPrThis
  loc_700AE3: VCallAd Control_ID_Tanque
  loc_700AE6: FStAdFunc var_98
  loc_700AE9: FLdPr var_98
  loc_700AEC: Set from_stack_2 = Me(from_stack_1)
  loc_700AF1: FLdPr var_A4
  loc_700AF4: LateIdSt
  loc_700AF9: FFreeAd var_98 = ""
  loc_700B00: LitI2_Byte &HFF
  loc_700B02: FLdRfVar var_A4
  loc_700B05: LitI2_Byte 0
  loc_700B07: FLdPrThis
  loc_700B08: VCallAd Control_ID_LTanque
  loc_700B0B: FStAdFunc var_98
  loc_700B0E: FLdPr var_98
  loc_700B11: Set from_stack_2 = Me(from_stack_1)
  loc_700B16: FLdPr var_A4
  loc_700B19: Me.Visible = from_stack_1b
  loc_700B1E: FFreeAd var_98 = ""
  loc_700B25: LitI2_Byte 0
  loc_700B27: FLdRfVar var_A4
  loc_700B2A: LitI2_Byte 1
  loc_700B2C: FLdPrThis
  loc_700B2D: VCallAd Control_ID_LTanque
  loc_700B30: FStAdFunc var_98
  loc_700B33: FLdPr var_98
  loc_700B36: Set from_stack_2 = Me(from_stack_1)
  loc_700B3B: FLdPr var_A4
  loc_700B3E: Me.Visible = from_stack_1b
  loc_700B43: FFreeAd var_98 = ""
  loc_700B4A: LitI2_Byte &HFF
  loc_700B4C: FLdRfVar var_A4
  loc_700B4F: LitI2_Byte 2
  loc_700B51: FLdPrThis
  loc_700B52: VCallAd Control_ID_LTanque
  loc_700B55: FStAdFunc var_98
  loc_700B58: FLdPr var_98
  loc_700B5B: Set from_stack_2 = Me(from_stack_1)
  loc_700B60: FLdPr var_A4
  loc_700B63: Me.Visible = from_stack_1b
  loc_700B68: FFreeAd var_98 = ""
  loc_700B6F: FLdPr Me
  loc_700B72: MemLdI2 Prod2
  loc_700B75: BranchF loc_700DAA
  loc_700B78: ILdUI1 pump
  loc_700B7C: CI4UI1
  loc_700B7D: ILdUI1 hose
  loc_700B81: CI4UI1
  loc_700B82: LitI4 0
  loc_700B87: ImpAdLdRf MemVar_74C174
  loc_700B8A: AryLdPr
  loc_700B8D: MemLdUI1 global_0
  loc_700B91: CStrI2
  loc_700B93: FStStrNoPop var_94
  loc_700B96: FLdRfVar var_A4
  loc_700B99: LitI2_Byte 0
  loc_700B9B: FLdPrThis
  loc_700B9C: VCallAd Control_ID_LTanque
  loc_700B9F: FStAdFunc var_98
  loc_700BA2: FLdPr var_98
  loc_700BA5: Set from_stack_2 = Me(from_stack_1)
  loc_700BAA: FLdPr var_A4
  loc_700BAD: Me.Caption = from_stack_1
  loc_700BB2: FFree1Str var_94
  loc_700BB5: FFreeAd var_98 = ""
  loc_700BBC: ILdUI1 pump
  loc_700BC0: CI4UI1
  loc_700BC1: ILdUI1 hose
  loc_700BC5: CI4UI1
  loc_700BC6: LitI4 1
  loc_700BCB: ImpAdLdRf MemVar_74C174
  loc_700BCE: AryLdPr
  loc_700BD1: MemLdUI1 global_0
  loc_700BD5: CStrI2
  loc_700BD7: FStStrNoPop var_94
  loc_700BDA: FLdRfVar var_A4
  loc_700BDD: LitI2_Byte 2
  loc_700BDF: FLdPrThis
  loc_700BE0: VCallAd Control_ID_LTanque
  loc_700BE3: FStAdFunc var_98
  loc_700BE6: FLdPr var_98
  loc_700BE9: Set from_stack_2 = Me(from_stack_1)
  loc_700BEE: FLdPr var_A4
  loc_700BF1: Me.Caption = from_stack_1
  loc_700BF6: FFree1Str var_94
  loc_700BF9: FFreeAd var_98 = ""
  loc_700C00: LitI2_Byte 0
  loc_700C02: CUI1I2
  loc_700C04: PopTmpLdAd1
  loc_700C08: ILdUI1 pump
  loc_700C0C: CI4UI1
  loc_700C0D: ILdUI1 hose
  loc_700C11: CI4UI1
  loc_700C12: LitI4 0
  loc_700C17: ImpAdLdRf MemVar_74C174
  loc_700C1A: AryLdRf
  loc_700C1D: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_700C22: LitI2_Byte 2
  loc_700C24: CUI1I2
  loc_700C26: PopTmpLdAd1
  loc_700C2A: ILdUI1 pump
  loc_700C2E: CI4UI1
  loc_700C2F: ILdUI1 hose
  loc_700C33: CI4UI1
  loc_700C34: LitI4 1
  loc_700C39: ImpAdLdRf MemVar_74C174
  loc_700C3C: AryLdRf
  loc_700C3F: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_700C44: ILdUI1 pump
  loc_700C48: CI4UI1
  loc_700C49: ILdUI1 hose
  loc_700C4D: CI4UI1
  loc_700C4E: LitI4 0
  loc_700C53: ImpAdLdRf MemVar_74C174
  loc_700C56: AryLdPr
  loc_700C59: MemLdUI1 global_0
  loc_700C5D: CI4UI1
  loc_700C5E: ImpAdLdRf MemVar_74C114
  loc_700C61: Ary1LdUI1
  loc_700C63: CI2UI1
  loc_700C65: LitI2_Byte 0
  loc_700C67: EqI2
  loc_700C68: BranchF loc_700D83
  loc_700C6B: LitVar_TRUE var_C0
  loc_700C6E: PopAdLdVar
  loc_700C6F: FLdPrThis
  loc_700C70: VCallAd Control_ID_CambioManifold
  loc_700C73: FStAdFunc var_98
  loc_700C76: FLdPr var_98
  loc_700C79: LateIdSt
  loc_700C7E: FFree1Ad var_98
  loc_700C81: FLdRfVar var_A0
  loc_700C84: ILdUI1 hose
  loc_700C88: CI2UI1
  loc_700C8A: ILdUI1 pump
  loc_700C8E: CI2UI1
  loc_700C90: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_700C95: FLdRfVar var_AE
  loc_700C98: FLdRfVar var_8C
  loc_700C9B: FLdUI1
  loc_700C9F: PopTmpLdAd1
  loc_700CA3: ILdRf hose
  loc_700CA6: ILdRf pump
  loc_700CA9: FLdRfVar var_98
  loc_700CAC: ImpAdLdRf MemVar_74C760
  loc_700CAF: NewIfNullPr Formx
  loc_700CB2: from_stack_1v = Formx.global_4589716Get()
  loc_700CB7: FLdPr var_98
  loc_700CBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_700CBF: FLdI2 var_AE
  loc_700CC2: NotI4
  loc_700CC3: FFree1Ad var_98
  loc_700CC6: BranchF loc_700CF5
  loc_700CC9: FLdRfVar var_D0
  loc_700CCC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_700CD1: FLdRfVar var_D0
  loc_700CD4: CBoolVarNull
  loc_700CD6: FFree1Var var_D0 = ""
  loc_700CD9: BranchF loc_700CF2
  loc_700CDC: ILdRf Me
  loc_700CDF: FStAdNoPop
  loc_700CE3: ImpAdLdRf MemVar_7520D4
  loc_700CE6: NewIfNullPr Global
  loc_700CE9: Global.Unload from_stack_1
  loc_700CEE: FFree1Ad var_98
  loc_700CF1: ExitProcHresult
  loc_700CF2: Branch loc_700C81
  loc_700CF5: LitI2_Byte 0
  loc_700CF7: CUI1I2
  loc_700CF9: FLdRfVar var_86
  loc_700CFC: LitI2_Byte 2
  loc_700CFE: CUI1I2
  loc_700D00: ForUI1 var_D4
  loc_700D06: ILdRf var_8C
  loc_700D09: ImpAdCallFPR4 push Val()
  loc_700D0E: FStFPR8 var_DC
  loc_700D11: ILdUI1 pump
  loc_700D15: CI4UI1
  loc_700D16: ILdUI1 hose
  loc_700D1A: CI4UI1
  loc_700D1B: FLdUI1
  loc_700D1F: CI4UI1
  loc_700D20: ImpAdLdRf MemVar_74C174
  loc_700D23: AryLdPr
  loc_700D26: MemLdUI1 global_0
  loc_700D2A: CR8I2
  loc_700D2B: FLdFPR8 var_DC
  loc_700D2E: CR8R8
  loc_700D2F: EqR4
  loc_700D30: BranchF loc_700D77
  loc_700D33: FLdUI1
  loc_700D37: CI2UI1
  loc_700D39: LitI2_Byte 1
  loc_700D3B: EqI2
  loc_700D3C: BranchF loc_700D56
  loc_700D3F: FLdUI1
  loc_700D43: CI2UI1
  loc_700D45: LitI2_Byte 1
  loc_700D47: AddI2
  loc_700D48: CUI1I2
  loc_700D4A: PopTmpLdAd1
  loc_700D4E: Call RefreshManifold(from_stack_1v)
  loc_700D53: Branch loc_700D5E
  loc_700D56: FLdRfVar var_86
  loc_700D59: Call RefreshManifold(from_stack_1v)
  loc_700D5E: LitVar_TRUE var_C0
  loc_700D61: PopAdLdVar
  loc_700D62: FLdPrThis
  loc_700D63: VCallAd Control_ID_CambioManifold
  loc_700D66: FStAdFunc var_98
  loc_700D69: FLdPr var_98
  loc_700D6C: LateIdSt
  loc_700D71: FFree1Ad var_98
  loc_700D74: Branch loc_700D80
  loc_700D77: FLdRfVar var_86
  loc_700D7A: NextUI1
  loc_700D80: Branch loc_700DA7
  loc_700D83: LitI2_Byte 3
  loc_700D85: CUI1I2
  loc_700D87: PopTmpLdAd1
  loc_700D8B: Call RefreshManifold(from_stack_1v)
  loc_700D90: LitVar_FALSE
  loc_700D94: PopAdLdVar
  loc_700D95: FLdPrThis
  loc_700D96: VCallAd Control_ID_CambioManifold
  loc_700D99: FStAdFunc var_98
  loc_700D9C: FLdPr var_98
  loc_700D9F: LateIdSt
  loc_700DA4: FFree1Ad var_98
  loc_700DA7: Branch loc_700FD9
  loc_700DAA: ILdUI1 pump
  loc_700DAE: CI4UI1
  loc_700DAF: ILdUI1 hose
  loc_700DB3: CI4UI1
  loc_700DB4: LitI4 0
  loc_700DB9: ImpAdLdRf MemVar_74C14C
  loc_700DBC: AryLdPr
  loc_700DBF: MemLdUI1 global_0
  loc_700DC3: CStrI2
  loc_700DC5: FStStrNoPop var_94
  loc_700DC8: FLdRfVar var_A4
  loc_700DCB: LitI2_Byte 0
  loc_700DCD: FLdPrThis
  loc_700DCE: VCallAd Control_ID_LTanque
  loc_700DD1: FStAdFunc var_98
  loc_700DD4: FLdPr var_98
  loc_700DD7: Set from_stack_2 = Me(from_stack_1)
  loc_700DDC: FLdPr var_A4
  loc_700DDF: Me.Caption = from_stack_1
  loc_700DE4: FFree1Str var_94
  loc_700DE7: FFreeAd var_98 = ""
  loc_700DEE: ILdUI1 pump
  loc_700DF2: CI4UI1
  loc_700DF3: ILdUI1 hose
  loc_700DF7: CI4UI1
  loc_700DF8: LitI4 1
  loc_700DFD: ImpAdLdRf MemVar_74C14C
  loc_700E00: AryLdPr
  loc_700E03: MemLdUI1 global_0
  loc_700E07: CStrI2
  loc_700E09: FStStrNoPop var_94
  loc_700E0C: FLdRfVar var_A4
  loc_700E0F: LitI2_Byte 2
  loc_700E11: FLdPrThis
  loc_700E12: VCallAd Control_ID_LTanque
  loc_700E15: FStAdFunc var_98
  loc_700E18: FLdPr var_98
  loc_700E1B: Set from_stack_2 = Me(from_stack_1)
  loc_700E20: FLdPr var_A4
  loc_700E23: Me.Caption = from_stack_1
  loc_700E28: FFree1Str var_94
  loc_700E2B: FFreeAd var_98 = ""
  loc_700E32: LitI2_Byte 0
  loc_700E34: CUI1I2
  loc_700E36: PopTmpLdAd1
  loc_700E3A: ILdUI1 pump
  loc_700E3E: CI4UI1
  loc_700E3F: ILdUI1 hose
  loc_700E43: CI4UI1
  loc_700E44: LitI4 0
  loc_700E49: ImpAdLdRf MemVar_74C14C
  loc_700E4C: AryLdRf
  loc_700E4F: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_700E54: LitI2_Byte 2
  loc_700E56: CUI1I2
  loc_700E58: PopTmpLdAd1
  loc_700E5C: ILdUI1 pump
  loc_700E60: CI4UI1
  loc_700E61: ILdUI1 hose
  loc_700E65: CI4UI1
  loc_700E66: LitI4 1
  loc_700E6B: ImpAdLdRf MemVar_74C14C
  loc_700E6E: AryLdRf
  loc_700E71: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_700E76: ILdUI1 pump
  loc_700E7A: CI4UI1
  loc_700E7B: ILdUI1 hose
  loc_700E7F: CI4UI1
  loc_700E80: LitI4 0
  loc_700E85: ImpAdLdRf MemVar_74C14C
  loc_700E88: AryLdPr
  loc_700E8B: MemLdUI1 global_0
  loc_700E8F: CI4UI1
  loc_700E90: ImpAdLdRf MemVar_74C114
  loc_700E93: Ary1LdUI1
  loc_700E95: CI2UI1
  loc_700E97: LitI2_Byte 0
  loc_700E99: EqI2
  loc_700E9A: BranchF loc_700FB5
  loc_700E9D: LitVar_TRUE var_C0
  loc_700EA0: PopAdLdVar
  loc_700EA1: FLdPrThis
  loc_700EA2: VCallAd Control_ID_CambioManifold
  loc_700EA5: FStAdFunc var_98
  loc_700EA8: FLdPr var_98
  loc_700EAB: LateIdSt
  loc_700EB0: FFree1Ad var_98
  loc_700EB3: FLdRfVar var_A0
  loc_700EB6: ILdUI1 hose
  loc_700EBA: CI2UI1
  loc_700EBC: ILdUI1 pump
  loc_700EC0: CI2UI1
  loc_700EC2: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_700EC7: FLdRfVar var_AE
  loc_700ECA: FLdRfVar var_8C
  loc_700ECD: FLdUI1
  loc_700ED1: PopTmpLdAd1
  loc_700ED5: ILdRf hose
  loc_700ED8: ILdRf pump
  loc_700EDB: FLdRfVar var_98
  loc_700EDE: ImpAdLdRf MemVar_74C760
  loc_700EE1: NewIfNullPr Formx
  loc_700EE4: from_stack_1v = Formx.global_4589716Get()
  loc_700EE9: FLdPr var_98
  loc_700EEC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_700EF1: FLdI2 var_AE
  loc_700EF4: NotI4
  loc_700EF5: FFree1Ad var_98
  loc_700EF8: BranchF loc_700F27
  loc_700EFB: FLdRfVar var_D0
  loc_700EFE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_700F03: FLdRfVar var_D0
  loc_700F06: CBoolVarNull
  loc_700F08: FFree1Var var_D0 = ""
  loc_700F0B: BranchF loc_700F24
  loc_700F0E: ILdRf Me
  loc_700F11: FStAdNoPop
  loc_700F15: ImpAdLdRf MemVar_7520D4
  loc_700F18: NewIfNullPr Global
  loc_700F1B: Global.Unload from_stack_1
  loc_700F20: FFree1Ad var_98
  loc_700F23: ExitProcHresult
  loc_700F24: Branch loc_700EB3
  loc_700F27: LitI2_Byte 0
  loc_700F29: CUI1I2
  loc_700F2B: FLdRfVar var_86
  loc_700F2E: LitI2_Byte 2
  loc_700F30: CUI1I2
  loc_700F32: ForUI1 var_E0
  loc_700F38: ILdRf var_8C
  loc_700F3B: ImpAdCallFPR4 push Val()
  loc_700F40: FStFPR8 var_DC
  loc_700F43: ILdUI1 pump
  loc_700F47: CI4UI1
  loc_700F48: ILdUI1 hose
  loc_700F4C: CI4UI1
  loc_700F4D: FLdUI1
  loc_700F51: CI4UI1
  loc_700F52: ImpAdLdRf MemVar_74C14C
  loc_700F55: AryLdPr
  loc_700F58: MemLdUI1 global_0
  loc_700F5C: CR8I2
  loc_700F5D: FLdFPR8 var_DC
  loc_700F60: CR8R8
  loc_700F61: EqR4
  loc_700F62: BranchF loc_700FA9
  loc_700F65: FLdUI1
  loc_700F69: CI2UI1
  loc_700F6B: LitI2_Byte 1
  loc_700F6D: EqI2
  loc_700F6E: BranchF loc_700F88
  loc_700F71: FLdUI1
  loc_700F75: CI2UI1
  loc_700F77: LitI2_Byte 1
  loc_700F79: AddI2
  loc_700F7A: CUI1I2
  loc_700F7C: PopTmpLdAd1
  loc_700F80: Call RefreshManifold(from_stack_1v)
  loc_700F85: Branch loc_700F90
  loc_700F88: FLdRfVar var_86
  loc_700F8B: Call RefreshManifold(from_stack_1v)
  loc_700F90: LitVar_TRUE var_C0
  loc_700F93: PopAdLdVar
  loc_700F94: FLdPrThis
  loc_700F95: VCallAd Control_ID_CambioManifold
  loc_700F98: FStAdFunc var_98
  loc_700F9B: FLdPr var_98
  loc_700F9E: LateIdSt
  loc_700FA3: FFree1Ad var_98
  loc_700FA6: Branch loc_700FB2
  loc_700FA9: FLdRfVar var_86
  loc_700FAC: NextUI1
  loc_700FB2: Branch loc_700FD9
  loc_700FB5: LitI2_Byte 3
  loc_700FB7: CUI1I2
  loc_700FB9: PopTmpLdAd1
  loc_700FBD: Call RefreshManifold(from_stack_1v)
  loc_700FC2: LitVar_FALSE
  loc_700FC6: PopAdLdVar
  loc_700FC7: FLdPrThis
  loc_700FC8: VCallAd Control_ID_CambioManifold
  loc_700FCB: FStAdFunc var_98
  loc_700FCE: FLdPr var_98
  loc_700FD1: LateIdSt
  loc_700FD6: FFree1Ad var_98
  loc_700FD9: Branch loc_701681
  loc_700FDC: FLdUI1
  loc_700FE0: LitI2_Byte 3
  loc_700FE2: CUI1I2
  loc_700FE4: EqI2
  loc_700FE5: BranchF loc_701681
  loc_700FE8: FLdRfVar var_A0
  loc_700FEB: FLdPrThis
  loc_700FEC: VCallAd Control_ID_Conexion1
  loc_700FEF: FStAdFunc var_98
  loc_700FF2: FLdPr var_98
  loc_700FF5:  = Me.Visible
  loc_700FFA: FLdI2 var_A0
  loc_700FFD: LitI2_Byte &HFF
  loc_700FFF: NeI2
  loc_701000: FLdRfVar var_A6
  loc_701003: FLdPrThis
  loc_701004: VCallAd Control_ID_Conexion3
  loc_701007: FStAdFunc var_A4
  loc_70100A: FLdPr var_A4
  loc_70100D:  = Me.Visible
  loc_701012: FLdI2 var_A6
  loc_701015: LitI2_Byte &HFF
  loc_701017: NeI2
  loc_701018: OrI4
  loc_701019: FLdRfVar var_AE
  loc_70101C: FLdPrThis
  loc_70101D: VCallAd Control_ID_Conexion2
  loc_701020: FStAdFunc var_AC
  loc_701023: FLdPr var_AC
  loc_701026:  = Me.Visible
  loc_70102B: FLdI2 var_AE
  loc_70102E: LitI2_Byte &HFF
  loc_701030: NeI2
  loc_701031: OrI4
  loc_701032: FFreeAd var_98 = "": var_A4 = ""
  loc_70103B: BranchF loc_7011BC
  loc_70103E: LitI2_Byte &HFF
  loc_701040: PopTmpLdAd2 var_A6
  loc_701043: LitI2_Byte 0
  loc_701045: CUI1I2
  loc_701047: PopTmpLdAd1
  loc_70104B: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_701050: LitI2_Byte &HFF
  loc_701052: PopTmpLdAd2 var_A6
  loc_701055: LitI2_Byte 1
  loc_701057: CUI1I2
  loc_701059: PopTmpLdAd1
  loc_70105D: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_701062: LitI2_Byte &HFF
  loc_701064: PopTmpLdAd2 var_A6
  loc_701067: LitI2_Byte 2
  loc_701069: CUI1I2
  loc_70106B: PopTmpLdAd1
  loc_70106F: Call VisTotalTanks(from_stack_1v, from_stack_2v)
  loc_701074: LitI2_Byte &HFF
  loc_701076: FLdPrThis
  loc_701077: VCallAd Control_ID_ConexionDerecha
  loc_70107A: FStAdFunc var_98
  loc_70107D: FLdPr var_98
  loc_701080: Me.Visible = from_stack_1b
  loc_701085: FFree1Ad var_98
  loc_701088: LitI2_Byte &HFF
  loc_70108A: FLdPrThis
  loc_70108B: VCallAd Control_ID_ConexionIzquierda
  loc_70108E: FStAdFunc var_98
  loc_701091: FLdPr var_98
  loc_701094: Me.Visible = from_stack_1b
  loc_701099: FFree1Ad var_98
  loc_70109C: LitI2_Byte &HFF
  loc_70109E: FLdPrThis
  loc_70109F: VCallAd Control_ID_Conexion1
  loc_7010A2: FStAdFunc var_98
  loc_7010A5: FLdPr var_98
  loc_7010A8: Me.Visible = from_stack_1b
  loc_7010AD: FFree1Ad var_98
  loc_7010B0: LitI2_Byte &HFF
  loc_7010B2: FLdPrThis
  loc_7010B3: VCallAd Control_ID_Conexion3
  loc_7010B6: FStAdFunc var_98
  loc_7010B9: FLdPr var_98
  loc_7010BC: Me.Visible = from_stack_1b
  loc_7010C1: FFree1Ad var_98
  loc_7010C4: LitI2_Byte &HFF
  loc_7010C6: FLdPrThis
  loc_7010C7: VCallAd Control_ID_Conexion2
  loc_7010CA: FStAdFunc var_98
  loc_7010CD: FLdPr var_98
  loc_7010D0: Me.Visible = from_stack_1b
  loc_7010D5: FFree1Ad var_98
  loc_7010D8: LitVar_TRUE var_C0
  loc_7010DB: PopAdLdVar
  loc_7010DC: FLdRfVar var_A4
  loc_7010DF: LitI2_Byte 0
  loc_7010E1: FLdPrThis
  loc_7010E2: VCallAd Control_ID_Tanque
  loc_7010E5: FStAdFunc var_98
  loc_7010E8: FLdPr var_98
  loc_7010EB: Set from_stack_2 = Me(from_stack_1)
  loc_7010F0: FLdPr var_A4
  loc_7010F3: LateIdSt
  loc_7010F8: FFreeAd var_98 = ""
  loc_7010FF: LitVar_TRUE var_C0
  loc_701102: PopAdLdVar
  loc_701103: FLdRfVar var_A4
  loc_701106: LitI2_Byte 1
  loc_701108: FLdPrThis
  loc_701109: VCallAd Control_ID_Tanque
  loc_70110C: FStAdFunc var_98
  loc_70110F: FLdPr var_98
  loc_701112: Set from_stack_2 = Me(from_stack_1)
  loc_701117: FLdPr var_A4
  loc_70111A: LateIdSt
  loc_70111F: FFreeAd var_98 = ""
  loc_701126: LitVar_TRUE var_C0
  loc_701129: PopAdLdVar
  loc_70112A: FLdRfVar var_A4
  loc_70112D: LitI2_Byte 2
  loc_70112F: FLdPrThis
  loc_701130: VCallAd Control_ID_Tanque
  loc_701133: FStAdFunc var_98
  loc_701136: FLdPr var_98
  loc_701139: Set from_stack_2 = Me(from_stack_1)
  loc_70113E: FLdPr var_A4
  loc_701141: LateIdSt
  loc_701146: FFreeAd var_98 = ""
  loc_70114D: LitI2_Byte &HFF
  loc_70114F: FLdRfVar var_A4
  loc_701152: LitI2_Byte 0
  loc_701154: FLdPrThis
  loc_701155: VCallAd Control_ID_LTanque
  loc_701158: FStAdFunc var_98
  loc_70115B: FLdPr var_98
  loc_70115E: Set from_stack_2 = Me(from_stack_1)
  loc_701163: FLdPr var_A4
  loc_701166: Me.Visible = from_stack_1b
  loc_70116B: FFreeAd var_98 = ""
  loc_701172: LitI2_Byte &HFF
  loc_701174: FLdRfVar var_A4
  loc_701177: LitI2_Byte 1
  loc_701179: FLdPrThis
  loc_70117A: VCallAd Control_ID_LTanque
  loc_70117D: FStAdFunc var_98
  loc_701180: FLdPr var_98
  loc_701183: Set from_stack_2 = Me(from_stack_1)
  loc_701188: FLdPr var_A4
  loc_70118B: Me.Visible = from_stack_1b
  loc_701190: FFreeAd var_98 = ""
  loc_701197: LitI2_Byte &HFF
  loc_701199: FLdRfVar var_A4
  loc_70119C: LitI2_Byte 2
  loc_70119E: FLdPrThis
  loc_70119F: VCallAd Control_ID_LTanque
  loc_7011A2: FStAdFunc var_98
  loc_7011A5: FLdPr var_98
  loc_7011A8: Set from_stack_2 = Me(from_stack_1)
  loc_7011AD: FLdPr var_A4
  loc_7011B0: Me.Visible = from_stack_1b
  loc_7011B5: FFreeAd var_98 = ""
  loc_7011BC: FLdPr Me
  loc_7011BF: MemLdI2 Prod2
  loc_7011C2: NotI4
  loc_7011C3: BranchF loc_701425
  loc_7011C6: ILdUI1 pump
  loc_7011CA: CI4UI1
  loc_7011CB: ILdUI1 hose
  loc_7011CF: CI4UI1
  loc_7011D0: LitI4 0
  loc_7011D5: ImpAdLdRf MemVar_74C14C
  loc_7011D8: AryLdPr
  loc_7011DB: MemLdUI1 global_0
  loc_7011DF: CStrI2
  loc_7011E1: FStStrNoPop var_94
  loc_7011E4: FLdRfVar var_A4
  loc_7011E7: LitI2_Byte 0
  loc_7011E9: FLdPrThis
  loc_7011EA: VCallAd Control_ID_LTanque
  loc_7011ED: FStAdFunc var_98
  loc_7011F0: FLdPr var_98
  loc_7011F3: Set from_stack_2 = Me(from_stack_1)
  loc_7011F8: FLdPr var_A4
  loc_7011FB: Me.Caption = from_stack_1
  loc_701200: FFree1Str var_94
  loc_701203: FFreeAd var_98 = ""
  loc_70120A: ILdUI1 pump
  loc_70120E: CI4UI1
  loc_70120F: ILdUI1 hose
  loc_701213: CI4UI1
  loc_701214: LitI4 1
  loc_701219: ImpAdLdRf MemVar_74C14C
  loc_70121C: AryLdPr
  loc_70121F: MemLdUI1 global_0
  loc_701223: CStrI2
  loc_701225: FStStrNoPop var_94
  loc_701228: FLdRfVar var_A4
  loc_70122B: LitI2_Byte 1
  loc_70122D: FLdPrThis
  loc_70122E: VCallAd Control_ID_LTanque
  loc_701231: FStAdFunc var_98
  loc_701234: FLdPr var_98
  loc_701237: Set from_stack_2 = Me(from_stack_1)
  loc_70123C: FLdPr var_A4
  loc_70123F: Me.Caption = from_stack_1
  loc_701244: FFree1Str var_94
  loc_701247: FFreeAd var_98 = ""
  loc_70124E: ILdUI1 pump
  loc_701252: CI4UI1
  loc_701253: ILdUI1 hose
  loc_701257: CI4UI1
  loc_701258: LitI4 2
  loc_70125D: ImpAdLdRf MemVar_74C14C
  loc_701260: AryLdPr
  loc_701263: MemLdUI1 global_0
  loc_701267: CStrI2
  loc_701269: FStStrNoPop var_94
  loc_70126C: FLdRfVar var_A4
  loc_70126F: LitI2_Byte 2
  loc_701271: FLdPrThis
  loc_701272: VCallAd Control_ID_LTanque
  loc_701275: FStAdFunc var_98
  loc_701278: FLdPr var_98
  loc_70127B: Set from_stack_2 = Me(from_stack_1)
  loc_701280: FLdPr var_A4
  loc_701283: Me.Caption = from_stack_1
  loc_701288: FFree1Str var_94
  loc_70128B: FFreeAd var_98 = ""
  loc_701292: LitI2_Byte 0
  loc_701294: CUI1I2
  loc_701296: PopTmpLdAd1
  loc_70129A: ILdUI1 pump
  loc_70129E: CI4UI1
  loc_70129F: ILdUI1 hose
  loc_7012A3: CI4UI1
  loc_7012A4: LitI4 0
  loc_7012A9: ImpAdLdRf MemVar_74C14C
  loc_7012AC: AryLdRf
  loc_7012AF: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_7012B4: LitI2_Byte 1
  loc_7012B6: CUI1I2
  loc_7012B8: PopTmpLdAd1
  loc_7012BC: ILdUI1 pump
  loc_7012C0: CI4UI1
  loc_7012C1: ILdUI1 hose
  loc_7012C5: CI4UI1
  loc_7012C6: LitI4 1
  loc_7012CB: ImpAdLdRf MemVar_74C14C
  loc_7012CE: AryLdRf
  loc_7012D1: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_7012D6: LitI2_Byte 2
  loc_7012D8: CUI1I2
  loc_7012DA: PopTmpLdAd1
  loc_7012DE: ILdUI1 pump
  loc_7012E2: CI4UI1
  loc_7012E3: ILdUI1 hose
  loc_7012E7: CI4UI1
  loc_7012E8: LitI4 2
  loc_7012ED: ImpAdLdRf MemVar_74C14C
  loc_7012F0: AryLdRf
  loc_7012F3: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_7012F8: ILdUI1 pump
  loc_7012FC: CI4UI1
  loc_7012FD: ILdUI1 hose
  loc_701301: CI4UI1
  loc_701302: LitI4 0
  loc_701307: ImpAdLdRf MemVar_74C14C
  loc_70130A: AryLdPr
  loc_70130D: MemLdUI1 global_0
  loc_701311: CI4UI1
  loc_701312: ImpAdLdRf MemVar_74C114
  loc_701315: Ary1LdUI1
  loc_701317: CI2UI1
  loc_701319: LitI2_Byte 0
  loc_70131B: EqI2
  loc_70131C: BranchF loc_7013FE
  loc_70131F: FLdRfVar var_A0
  loc_701322: ILdUI1 hose
  loc_701326: CI2UI1
  loc_701328: ILdUI1 pump
  loc_70132C: CI2UI1
  loc_70132E: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_701333: FLdRfVar var_AE
  loc_701336: FLdRfVar var_8C
  loc_701339: FLdUI1
  loc_70133D: PopTmpLdAd1
  loc_701341: ILdRf hose
  loc_701344: ILdRf pump
  loc_701347: FLdRfVar var_98
  loc_70134A: ImpAdLdRf MemVar_74C760
  loc_70134D: NewIfNullPr Formx
  loc_701350: from_stack_1v = Formx.global_4589716Get()
  loc_701355: FLdPr var_98
  loc_701358: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70135D: FLdI2 var_AE
  loc_701360: NotI4
  loc_701361: FFree1Ad var_98
  loc_701364: BranchF loc_701393
  loc_701367: FLdRfVar var_D0
  loc_70136A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70136F: FLdRfVar var_D0
  loc_701372: CBoolVarNull
  loc_701374: FFree1Var var_D0 = ""
  loc_701377: BranchF loc_701390
  loc_70137A: ILdRf Me
  loc_70137D: FStAdNoPop
  loc_701381: ImpAdLdRf MemVar_7520D4
  loc_701384: NewIfNullPr Global
  loc_701387: Global.Unload from_stack_1
  loc_70138C: FFree1Ad var_98
  loc_70138F: ExitProcHresult
  loc_701390: Branch loc_70131F
  loc_701393: LitVar_TRUE var_C0
  loc_701396: PopAdLdVar
  loc_701397: FLdPrThis
  loc_701398: VCallAd Control_ID_CambioManifold
  loc_70139B: FStAdFunc var_98
  loc_70139E: FLdPr var_98
  loc_7013A1: LateIdSt
  loc_7013A6: FFree1Ad var_98
  loc_7013A9: LitI2_Byte 0
  loc_7013AB: CUI1I2
  loc_7013AD: FLdRfVar var_86
  loc_7013B0: LitI2_Byte 2
  loc_7013B2: CUI1I2
  loc_7013B4: ForUI1 var_E4
  loc_7013BA: ILdRf var_8C
  loc_7013BD: ImpAdCallFPR4 push Val()
  loc_7013C2: FStFPR8 var_DC
  loc_7013C5: ILdUI1 pump
  loc_7013C9: CI4UI1
  loc_7013CA: ILdUI1 hose
  loc_7013CE: CI4UI1
  loc_7013CF: FLdUI1
  loc_7013D3: CI4UI1
  loc_7013D4: ImpAdLdRf MemVar_74C14C
  loc_7013D7: AryLdPr
  loc_7013DA: MemLdUI1 global_0
  loc_7013DE: CR8I2
  loc_7013DF: FLdFPR8 var_DC
  loc_7013E2: CR8R8
  loc_7013E3: EqR4
  loc_7013E4: BranchF loc_7013F2
  loc_7013E7: FLdRfVar var_86
  loc_7013EA: Call RefreshManifold(from_stack_1v)
  loc_7013EF: Branch loc_7013FB
  loc_7013F2: FLdRfVar var_86
  loc_7013F5: NextUI1
  loc_7013FB: Branch loc_701422
  loc_7013FE: LitVar_FALSE
  loc_701402: PopAdLdVar
  loc_701403: FLdPrThis
  loc_701404: VCallAd Control_ID_CambioManifold
  loc_701407: FStAdFunc var_98
  loc_70140A: FLdPr var_98
  loc_70140D: LateIdSt
  loc_701412: FFree1Ad var_98
  loc_701415: LitI2_Byte 3
  loc_701417: CUI1I2
  loc_701419: PopTmpLdAd1
  loc_70141D: Call RefreshManifold(from_stack_1v)
  loc_701422: Branch loc_701681
  loc_701425: ILdUI1 pump
  loc_701429: CI4UI1
  loc_70142A: ILdUI1 hose
  loc_70142E: CI4UI1
  loc_70142F: LitI4 0
  loc_701434: ImpAdLdRf MemVar_74C174
  loc_701437: AryLdPr
  loc_70143A: MemLdUI1 global_0
  loc_70143E: CStrI2
  loc_701440: FStStrNoPop var_94
  loc_701443: FLdRfVar var_A4
  loc_701446: LitI2_Byte 0
  loc_701448: FLdPrThis
  loc_701449: VCallAd Control_ID_LTanque
  loc_70144C: FStAdFunc var_98
  loc_70144F: FLdPr var_98
  loc_701452: Set from_stack_2 = Me(from_stack_1)
  loc_701457: FLdPr var_A4
  loc_70145A: Me.Caption = from_stack_1
  loc_70145F: FFree1Str var_94
  loc_701462: FFreeAd var_98 = ""
  loc_701469: ILdUI1 pump
  loc_70146D: CI4UI1
  loc_70146E: ILdUI1 hose
  loc_701472: CI4UI1
  loc_701473: LitI4 1
  loc_701478: ImpAdLdRf MemVar_74C174
  loc_70147B: AryLdPr
  loc_70147E: MemLdUI1 global_0
  loc_701482: CStrI2
  loc_701484: FStStrNoPop var_94
  loc_701487: FLdRfVar var_A4
  loc_70148A: LitI2_Byte 1
  loc_70148C: FLdPrThis
  loc_70148D: VCallAd Control_ID_LTanque
  loc_701490: FStAdFunc var_98
  loc_701493: FLdPr var_98
  loc_701496: Set from_stack_2 = Me(from_stack_1)
  loc_70149B: FLdPr var_A4
  loc_70149E: Me.Caption = from_stack_1
  loc_7014A3: FFree1Str var_94
  loc_7014A6: FFreeAd var_98 = ""
  loc_7014AD: ILdUI1 pump
  loc_7014B1: CI4UI1
  loc_7014B2: ILdUI1 hose
  loc_7014B6: CI4UI1
  loc_7014B7: LitI4 2
  loc_7014BC: ImpAdLdRf MemVar_74C174
  loc_7014BF: AryLdPr
  loc_7014C2: MemLdUI1 global_0
  loc_7014C6: CStrI2
  loc_7014C8: FStStrNoPop var_94
  loc_7014CB: FLdRfVar var_A4
  loc_7014CE: LitI2_Byte 2
  loc_7014D0: FLdPrThis
  loc_7014D1: VCallAd Control_ID_LTanque
  loc_7014D4: FStAdFunc var_98
  loc_7014D7: FLdPr var_98
  loc_7014DA: Set from_stack_2 = Me(from_stack_1)
  loc_7014DF: FLdPr var_A4
  loc_7014E2: Me.Caption = from_stack_1
  loc_7014E7: FFree1Str var_94
  loc_7014EA: FFreeAd var_98 = ""
  loc_7014F1: LitI2_Byte 0
  loc_7014F3: CUI1I2
  loc_7014F5: PopTmpLdAd1
  loc_7014F9: ILdUI1 pump
  loc_7014FD: CI4UI1
  loc_7014FE: ILdUI1 hose
  loc_701502: CI4UI1
  loc_701503: LitI4 0
  loc_701508: ImpAdLdRf MemVar_74C174
  loc_70150B: AryLdRf
  loc_70150E: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_701513: LitI2_Byte 1
  loc_701515: CUI1I2
  loc_701517: PopTmpLdAd1
  loc_70151B: ILdUI1 pump
  loc_70151F: CI4UI1
  loc_701520: ILdUI1 hose
  loc_701524: CI4UI1
  loc_701525: LitI4 1
  loc_70152A: ImpAdLdRf MemVar_74C174
  loc_70152D: AryLdRf
  loc_701530: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_701535: LitI2_Byte 2
  loc_701537: CUI1I2
  loc_701539: PopTmpLdAd1
  loc_70153D: ILdUI1 pump
  loc_701541: CI4UI1
  loc_701542: ILdUI1 hose
  loc_701546: CI4UI1
  loc_701547: LitI4 2
  loc_70154C: ImpAdLdRf MemVar_74C174
  loc_70154F: AryLdRf
  loc_701552: Call RefreshTankTotals(from_stack_1v, from_stack_2v)
  loc_701557: ILdUI1 pump
  loc_70155B: CI4UI1
  loc_70155C: ILdUI1 hose
  loc_701560: CI4UI1
  loc_701561: LitI4 0
  loc_701566: ImpAdLdRf MemVar_74C174
  loc_701569: AryLdPr
  loc_70156C: MemLdUI1 global_0
  loc_701570: CI4UI1
  loc_701571: ImpAdLdRf MemVar_74C114
  loc_701574: Ary1LdUI1
  loc_701576: CI2UI1
  loc_701578: LitI2_Byte 0
  loc_70157A: EqI2
  loc_70157B: BranchF loc_70165D
  loc_70157E: FLdRfVar var_A0
  loc_701581: ILdUI1 hose
  loc_701585: CI2UI1
  loc_701587: ILdUI1 pump
  loc_70158B: CI2UI1
  loc_70158D: from_stack_3v = Proc_161_150_61FF98(from_stack_1v, from_stack_2v)
  loc_701592: FLdRfVar var_AE
  loc_701595: FLdRfVar var_8C
  loc_701598: FLdUI1
  loc_70159C: PopTmpLdAd1
  loc_7015A0: ILdRf hose
  loc_7015A3: ILdRf pump
  loc_7015A6: FLdRfVar var_98
  loc_7015A9: ImpAdLdRf MemVar_74C760
  loc_7015AC: NewIfNullPr Formx
  loc_7015AF: from_stack_1v = Formx.global_4589716Get()
  loc_7015B4: FLdPr var_98
  loc_7015B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7015BC: FLdI2 var_AE
  loc_7015BF: NotI4
  loc_7015C0: FFree1Ad var_98
  loc_7015C3: BranchF loc_7015F2
  loc_7015C6: FLdRfVar var_D0
  loc_7015C9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7015CE: FLdRfVar var_D0
  loc_7015D1: CBoolVarNull
  loc_7015D3: FFree1Var var_D0 = ""
  loc_7015D6: BranchF loc_7015EF
  loc_7015D9: ILdRf Me
  loc_7015DC: FStAdNoPop
  loc_7015E0: ImpAdLdRf MemVar_7520D4
  loc_7015E3: NewIfNullPr Global
  loc_7015E6: Global.Unload from_stack_1
  loc_7015EB: FFree1Ad var_98
  loc_7015EE: ExitProcHresult
  loc_7015EF: Branch loc_70157E
  loc_7015F2: LitVar_TRUE var_C0
  loc_7015F5: PopAdLdVar
  loc_7015F6: FLdPrThis
  loc_7015F7: VCallAd Control_ID_CambioManifold
  loc_7015FA: FStAdFunc var_98
  loc_7015FD: FLdPr var_98
  loc_701600: LateIdSt
  loc_701605: FFree1Ad var_98
  loc_701608: LitI2_Byte 0
  loc_70160A: CUI1I2
  loc_70160C: FLdRfVar var_86
  loc_70160F: LitI2_Byte 2
  loc_701611: CUI1I2
  loc_701613: ForUI1 var_E8
  loc_701619: ILdRf var_8C
  loc_70161C: ImpAdCallFPR4 push Val()
  loc_701621: FStFPR8 var_DC
  loc_701624: ILdUI1 pump
  loc_701628: CI4UI1
  loc_701629: ILdUI1 hose
  loc_70162D: CI4UI1
  loc_70162E: FLdUI1
  loc_701632: CI4UI1
  loc_701633: ImpAdLdRf MemVar_74C174
  loc_701636: AryLdPr
  loc_701639: MemLdUI1 global_0
  loc_70163D: CR8I2
  loc_70163E: FLdFPR8 var_DC
  loc_701641: CR8R8
  loc_701642: EqR4
  loc_701643: BranchF loc_701651
  loc_701646: FLdRfVar var_86
  loc_701649: Call RefreshManifold(from_stack_1v)
  loc_70164E: Branch loc_70165A
  loc_701651: FLdRfVar var_86
  loc_701654: NextUI1
  loc_70165A: Branch loc_701681
  loc_70165D: LitVar_FALSE
  loc_701661: PopAdLdVar
  loc_701662: FLdPrThis
  loc_701663: VCallAd Control_ID_CambioManifold
  loc_701666: FStAdFunc var_98
  loc_701669: FLdPr var_98
  loc_70166C: LateIdSt
  loc_701671: FFree1Ad var_98
  loc_701674: LitI2_Byte 3
  loc_701676: CUI1I2
  loc_701678: PopTmpLdAd1
  loc_70167C: Call RefreshManifold(from_stack_1v)
  loc_701681: ExitProcHresult
  loc_701682: LitI2_Byte 0
  loc_701684: FLdPr Me
  loc_701687: MemStI2 Prod2
  loc_70168A: ILdRf hose
  loc_70168D: ILdRf pump
  loc_701690: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_701695: ExitProcHresult
End Sub

Public Sub RefreshManifold(tank) '66EE7C
  'Data Table: 45B254
  loc_66EA78: ILdUI1 tank
  loc_66EA7C: FStUI1 var_86
  loc_66EA80: FLdUI1
  loc_66EA84: LitI2_Byte 0
  loc_66EA86: CUI1I2
  loc_66EA88: EqI2
  loc_66EA89: BranchF loc_66EB7F
  loc_66EA8C: FLdRfVar var_8E
  loc_66EA8F: FLdPrThis
  loc_66EA90: VCallAd Control_ID_Manifold00
  loc_66EA93: FStAdFunc var_8C
  loc_66EA96: FLdPr var_8C
  loc_66EA99:  = Me.Visible
  loc_66EA9E: FLdI2 var_8E
  loc_66EAA1: LitI2_Byte &HFF
  loc_66EAA3: NeI2
  loc_66EAA4: FLdRfVar var_96
  loc_66EAA7: FLdPrThis
  loc_66EAA8: VCallAd Control_ID_Manifold01
  loc_66EAAB: FStAdFunc var_94
  loc_66EAAE: FLdPr var_94
  loc_66EAB1:  = Me.Visible
  loc_66EAB6: FLdI2 var_96
  loc_66EAB9: LitI2_Byte &HFF
  loc_66EABB: NeI2
  loc_66EABC: OrI4
  loc_66EABD: FLdRfVar var_9E
  loc_66EAC0: FLdPrThis
  loc_66EAC1: VCallAd Control_ID_Manifold02
  loc_66EAC4: FStAdFunc var_9C
  loc_66EAC7: FLdPr var_9C
  loc_66EACA:  = Me.Visible
  loc_66EACF: FLdI2 var_9E
  loc_66EAD2: LitI2_Byte 0
  loc_66EAD4: NeI2
  loc_66EAD5: OrI4
  loc_66EAD6: FLdRfVar var_A6
  loc_66EAD9: FLdPrThis
  loc_66EADA: VCallAd Control_ID_Manifold03
  loc_66EADD: FStAdFunc var_A4
  loc_66EAE0: FLdPr var_A4
  loc_66EAE3:  = Me.Visible
  loc_66EAE8: FLdI2 var_A6
  loc_66EAEB: LitI2_Byte 0
  loc_66EAED: NeI2
  loc_66EAEE: OrI4
  loc_66EAEF: FLdRfVar var_AE
  loc_66EAF2: FLdPrThis
  loc_66EAF3: VCallAd Control_ID_Gparalelo
  loc_66EAF6: FStAdFunc var_AC
  loc_66EAF9: FLdPr var_AC
  loc_66EAFC:  = Me.Visible
  loc_66EB01: FLdI2 var_AE
  loc_66EB04: LitI2_Byte 0
  loc_66EB06: NeI2
  loc_66EB07: OrI4
  loc_66EB08: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_66EB15: BranchF loc_66EB7C
  loc_66EB18: LitI2_Byte &HFF
  loc_66EB1A: FLdPrThis
  loc_66EB1B: VCallAd Control_ID_Manifold00
  loc_66EB1E: FStAdFunc var_8C
  loc_66EB21: FLdPr var_8C
  loc_66EB24: Me.Visible = from_stack_1b
  loc_66EB29: FFree1Ad var_8C
  loc_66EB2C: LitI2_Byte &HFF
  loc_66EB2E: FLdPrThis
  loc_66EB2F: VCallAd Control_ID_Manifold01
  loc_66EB32: FStAdFunc var_8C
  loc_66EB35: FLdPr var_8C
  loc_66EB38: Me.Visible = from_stack_1b
  loc_66EB3D: FFree1Ad var_8C
  loc_66EB40: LitI2_Byte 0
  loc_66EB42: FLdPrThis
  loc_66EB43: VCallAd Control_ID_Manifold02
  loc_66EB46: FStAdFunc var_8C
  loc_66EB49: FLdPr var_8C
  loc_66EB4C: Me.Visible = from_stack_1b
  loc_66EB51: FFree1Ad var_8C
  loc_66EB54: LitI2_Byte 0
  loc_66EB56: FLdPrThis
  loc_66EB57: VCallAd Control_ID_Manifold03
  loc_66EB5A: FStAdFunc var_8C
  loc_66EB5D: FLdPr var_8C
  loc_66EB60: Me.Visible = from_stack_1b
  loc_66EB65: FFree1Ad var_8C
  loc_66EB68: LitI2_Byte 0
  loc_66EB6A: FLdPrThis
  loc_66EB6B: VCallAd Control_ID_Gparalelo
  loc_66EB6E: FStAdFunc var_8C
  loc_66EB71: FLdPr var_8C
  loc_66EB74: Me.Visible = from_stack_1b
  loc_66EB79: FFree1Ad var_8C
  loc_66EB7C: Branch loc_66EE79
  loc_66EB7F: FLdUI1
  loc_66EB83: LitI2_Byte 1
  loc_66EB85: CUI1I2
  loc_66EB87: EqI2
  loc_66EB88: BranchF loc_66EC7E
  loc_66EB8B: FLdRfVar var_8E
  loc_66EB8E: FLdPrThis
  loc_66EB8F: VCallAd Control_ID_Manifold00
  loc_66EB92: FStAdFunc var_8C
  loc_66EB95: FLdPr var_8C
  loc_66EB98:  = Me.Visible
  loc_66EB9D: FLdI2 var_8E
  loc_66EBA0: LitI2_Byte &HFF
  loc_66EBA2: NeI2
  loc_66EBA3: FLdRfVar var_96
  loc_66EBA6: FLdPrThis
  loc_66EBA7: VCallAd Control_ID_Manifold01
  loc_66EBAA: FStAdFunc var_94
  loc_66EBAD: FLdPr var_94
  loc_66EBB0:  = Me.Visible
  loc_66EBB5: FLdI2 var_96
  loc_66EBB8: LitI2_Byte 0
  loc_66EBBA: NeI2
  loc_66EBBB: OrI4
  loc_66EBBC: FLdRfVar var_9E
  loc_66EBBF: FLdPrThis
  loc_66EBC0: VCallAd Control_ID_Manifold02
  loc_66EBC3: FStAdFunc var_9C
  loc_66EBC6: FLdPr var_9C
  loc_66EBC9:  = Me.Visible
  loc_66EBCE: FLdI2 var_9E
  loc_66EBD1: LitI2_Byte &HFF
  loc_66EBD3: NeI2
  loc_66EBD4: OrI4
  loc_66EBD5: FLdRfVar var_A6
  loc_66EBD8: FLdPrThis
  loc_66EBD9: VCallAd Control_ID_Manifold03
  loc_66EBDC: FStAdFunc var_A4
  loc_66EBDF: FLdPr var_A4
  loc_66EBE2:  = Me.Visible
  loc_66EBE7: FLdI2 var_A6
  loc_66EBEA: LitI2_Byte 0
  loc_66EBEC: NeI2
  loc_66EBED: OrI4
  loc_66EBEE: FLdRfVar var_AE
  loc_66EBF1: FLdPrThis
  loc_66EBF2: VCallAd Control_ID_Gparalelo
  loc_66EBF5: FStAdFunc var_AC
  loc_66EBF8: FLdPr var_AC
  loc_66EBFB:  = Me.Visible
  loc_66EC00: FLdI2 var_AE
  loc_66EC03: LitI2_Byte 0
  loc_66EC05: NeI2
  loc_66EC06: OrI4
  loc_66EC07: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_66EC14: BranchF loc_66EC7B
  loc_66EC17: LitI2_Byte &HFF
  loc_66EC19: FLdPrThis
  loc_66EC1A: VCallAd Control_ID_Manifold00
  loc_66EC1D: FStAdFunc var_8C
  loc_66EC20: FLdPr var_8C
  loc_66EC23: Me.Visible = from_stack_1b
  loc_66EC28: FFree1Ad var_8C
  loc_66EC2B: LitI2_Byte &HFF
  loc_66EC2D: FLdPrThis
  loc_66EC2E: VCallAd Control_ID_Manifold02
  loc_66EC31: FStAdFunc var_8C
  loc_66EC34: FLdPr var_8C
  loc_66EC37: Me.Visible = from_stack_1b
  loc_66EC3C: FFree1Ad var_8C
  loc_66EC3F: LitI2_Byte 0
  loc_66EC41: FLdPrThis
  loc_66EC42: VCallAd Control_ID_Manifold01
  loc_66EC45: FStAdFunc var_8C
  loc_66EC48: FLdPr var_8C
  loc_66EC4B: Me.Visible = from_stack_1b
  loc_66EC50: FFree1Ad var_8C
  loc_66EC53: LitI2_Byte 0
  loc_66EC55: FLdPrThis
  loc_66EC56: VCallAd Control_ID_Manifold03
  loc_66EC59: FStAdFunc var_8C
  loc_66EC5C: FLdPr var_8C
  loc_66EC5F: Me.Visible = from_stack_1b
  loc_66EC64: FFree1Ad var_8C
  loc_66EC67: LitI2_Byte 0
  loc_66EC69: FLdPrThis
  loc_66EC6A: VCallAd Control_ID_Gparalelo
  loc_66EC6D: FStAdFunc var_8C
  loc_66EC70: FLdPr var_8C
  loc_66EC73: Me.Visible = from_stack_1b
  loc_66EC78: FFree1Ad var_8C
  loc_66EC7B: Branch loc_66EE79
  loc_66EC7E: FLdUI1
  loc_66EC82: LitI2_Byte 2
  loc_66EC84: CUI1I2
  loc_66EC86: EqI2
  loc_66EC87: BranchF loc_66ED7D
  loc_66EC8A: FLdRfVar var_8E
  loc_66EC8D: FLdPrThis
  loc_66EC8E: VCallAd Control_ID_Manifold00
  loc_66EC91: FStAdFunc var_8C
  loc_66EC94: FLdPr var_8C
  loc_66EC97:  = Me.Visible
  loc_66EC9C: FLdI2 var_8E
  loc_66EC9F: LitI2_Byte &HFF
  loc_66ECA1: NeI2
  loc_66ECA2: FLdRfVar var_96
  loc_66ECA5: FLdPrThis
  loc_66ECA6: VCallAd Control_ID_Manifold01
  loc_66ECA9: FStAdFunc var_94
  loc_66ECAC: FLdPr var_94
  loc_66ECAF:  = Me.Visible
  loc_66ECB4: FLdI2 var_96
  loc_66ECB7: LitI2_Byte 0
  loc_66ECB9: NeI2
  loc_66ECBA: OrI4
  loc_66ECBB: FLdRfVar var_9E
  loc_66ECBE: FLdPrThis
  loc_66ECBF: VCallAd Control_ID_Manifold02
  loc_66ECC2: FStAdFunc var_9C
  loc_66ECC5: FLdPr var_9C
  loc_66ECC8:  = Me.Visible
  loc_66ECCD: FLdI2 var_9E
  loc_66ECD0: LitI2_Byte 0
  loc_66ECD2: NeI2
  loc_66ECD3: OrI4
  loc_66ECD4: FLdRfVar var_A6
  loc_66ECD7: FLdPrThis
  loc_66ECD8: VCallAd Control_ID_Manifold03
  loc_66ECDB: FStAdFunc var_A4
  loc_66ECDE: FLdPr var_A4
  loc_66ECE1:  = Me.Visible
  loc_66ECE6: FLdI2 var_A6
  loc_66ECE9: LitI2_Byte &HFF
  loc_66ECEB: NeI2
  loc_66ECEC: OrI4
  loc_66ECED: FLdRfVar var_AE
  loc_66ECF0: FLdPrThis
  loc_66ECF1: VCallAd Control_ID_Gparalelo
  loc_66ECF4: FStAdFunc var_AC
  loc_66ECF7: FLdPr var_AC
  loc_66ECFA:  = Me.Visible
  loc_66ECFF: FLdI2 var_AE
  loc_66ED02: LitI2_Byte 0
  loc_66ED04: NeI2
  loc_66ED05: OrI4
  loc_66ED06: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_66ED13: BranchF loc_66ED7A
  loc_66ED16: LitI2_Byte &HFF
  loc_66ED18: FLdPrThis
  loc_66ED19: VCallAd Control_ID_Manifold00
  loc_66ED1C: FStAdFunc var_8C
  loc_66ED1F: FLdPr var_8C
  loc_66ED22: Me.Visible = from_stack_1b
  loc_66ED27: FFree1Ad var_8C
  loc_66ED2A: LitI2_Byte 0
  loc_66ED2C: FLdPrThis
  loc_66ED2D: VCallAd Control_ID_Manifold01
  loc_66ED30: FStAdFunc var_8C
  loc_66ED33: FLdPr var_8C
  loc_66ED36: Me.Visible = from_stack_1b
  loc_66ED3B: FFree1Ad var_8C
  loc_66ED3E: LitI2_Byte 0
  loc_66ED40: FLdPrThis
  loc_66ED41: VCallAd Control_ID_Manifold02
  loc_66ED44: FStAdFunc var_8C
  loc_66ED47: FLdPr var_8C
  loc_66ED4A: Me.Visible = from_stack_1b
  loc_66ED4F: FFree1Ad var_8C
  loc_66ED52: LitI2_Byte &HFF
  loc_66ED54: FLdPrThis
  loc_66ED55: VCallAd Control_ID_Manifold03
  loc_66ED58: FStAdFunc var_8C
  loc_66ED5B: FLdPr var_8C
  loc_66ED5E: Me.Visible = from_stack_1b
  loc_66ED63: FFree1Ad var_8C
  loc_66ED66: LitI2_Byte 0
  loc_66ED68: FLdPrThis
  loc_66ED69: VCallAd Control_ID_Gparalelo
  loc_66ED6C: FStAdFunc var_8C
  loc_66ED6F: FLdPr var_8C
  loc_66ED72: Me.Visible = from_stack_1b
  loc_66ED77: FFree1Ad var_8C
  loc_66ED7A: Branch loc_66EE79
  loc_66ED7D: FLdUI1
  loc_66ED81: LitI2_Byte 3
  loc_66ED83: CUI1I2
  loc_66ED85: EqI2
  loc_66ED86: BranchF loc_66EE79
  loc_66ED89: FLdRfVar var_8E
  loc_66ED8C: FLdPrThis
  loc_66ED8D: VCallAd Control_ID_Manifold00
  loc_66ED90: FStAdFunc var_8C
  loc_66ED93: FLdPr var_8C
  loc_66ED96:  = Me.Visible
  loc_66ED9B: FLdI2 var_8E
  loc_66ED9E: LitI2_Byte 0
  loc_66EDA0: NeI2
  loc_66EDA1: FLdRfVar var_96
  loc_66EDA4: FLdPrThis
  loc_66EDA5: VCallAd Control_ID_Manifold01
  loc_66EDA8: FStAdFunc var_94
  loc_66EDAB: FLdPr var_94
  loc_66EDAE:  = Me.Visible
  loc_66EDB3: FLdI2 var_96
  loc_66EDB6: LitI2_Byte 0
  loc_66EDB8: NeI2
  loc_66EDB9: OrI4
  loc_66EDBA: FLdRfVar var_9E
  loc_66EDBD: FLdPrThis
  loc_66EDBE: VCallAd Control_ID_Manifold02
  loc_66EDC1: FStAdFunc var_9C
  loc_66EDC4: FLdPr var_9C
  loc_66EDC7:  = Me.Visible
  loc_66EDCC: FLdI2 var_9E
  loc_66EDCF: LitI2_Byte 0
  loc_66EDD1: NeI2
  loc_66EDD2: OrI4
  loc_66EDD3: FLdRfVar var_A6
  loc_66EDD6: FLdPrThis
  loc_66EDD7: VCallAd Control_ID_Manifold03
  loc_66EDDA: FStAdFunc var_A4
  loc_66EDDD: FLdPr var_A4
  loc_66EDE0:  = Me.Visible
  loc_66EDE5: FLdI2 var_A6
  loc_66EDE8: LitI2_Byte 0
  loc_66EDEA: NeI2
  loc_66EDEB: OrI4
  loc_66EDEC: FLdRfVar var_AE
  loc_66EDEF: FLdPrThis
  loc_66EDF0: VCallAd Control_ID_Gparalelo
  loc_66EDF3: FStAdFunc var_AC
  loc_66EDF6: FLdPr var_AC
  loc_66EDF9:  = Me.Visible
  loc_66EDFE: FLdI2 var_AE
  loc_66EE01: LitI2_Byte &HFF
  loc_66EE03: NeI2
  loc_66EE04: OrI4
  loc_66EE05: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_66EE12: BranchF loc_66EE79
  loc_66EE15: LitI2_Byte 0
  loc_66EE17: FLdPrThis
  loc_66EE18: VCallAd Control_ID_Manifold00
  loc_66EE1B: FStAdFunc var_8C
  loc_66EE1E: FLdPr var_8C
  loc_66EE21: Me.Visible = from_stack_1b
  loc_66EE26: FFree1Ad var_8C
  loc_66EE29: LitI2_Byte 0
  loc_66EE2B: FLdPrThis
  loc_66EE2C: VCallAd Control_ID_Manifold01
  loc_66EE2F: FStAdFunc var_8C
  loc_66EE32: FLdPr var_8C
  loc_66EE35: Me.Visible = from_stack_1b
  loc_66EE3A: FFree1Ad var_8C
  loc_66EE3D: LitI2_Byte 0
  loc_66EE3F: FLdPrThis
  loc_66EE40: VCallAd Control_ID_Manifold02
  loc_66EE43: FStAdFunc var_8C
  loc_66EE46: FLdPr var_8C
  loc_66EE49: Me.Visible = from_stack_1b
  loc_66EE4E: FFree1Ad var_8C
  loc_66EE51: LitI2_Byte 0
  loc_66EE53: FLdPrThis
  loc_66EE54: VCallAd Control_ID_Manifold03
  loc_66EE57: FStAdFunc var_8C
  loc_66EE5A: FLdPr var_8C
  loc_66EE5D: Me.Visible = from_stack_1b
  loc_66EE62: FFree1Ad var_8C
  loc_66EE65: LitI2_Byte &HFF
  loc_66EE67: FLdPrThis
  loc_66EE68: VCallAd Control_ID_Gparalelo
  loc_66EE6B: FStAdFunc var_8C
  loc_66EE6E: FLdPr var_8C
  loc_66EE71: Me.Visible = from_stack_1b
  loc_66EE76: FFree1Ad var_8C
  loc_66EE79: ExitProcHresult
End Sub

Public Sub RefreshTankTotals(tank, indice) '6DFF20
  'Data Table: 45B254
  loc_6DF328: FLdRfVar var_B8
  loc_6DF32B: FLdRfVar var_88
  loc_6DF32E: ILdRf tank
  loc_6DF331: FLdRfVar var_A8
  loc_6DF334: ImpAdLdRf MemVar_74C760
  loc_6DF337: NewIfNullPr Formx
  loc_6DF33A: from_stack_1v = Formx.global_4589716Get()
  loc_6DF33F: FLdPr var_A8
  loc_6DF347: FLdRfVar var_B8
  loc_6DF34A: NotVar var_C8
  loc_6DF34E: CBoolVarNull
  loc_6DF350: FFree1Ad var_A8
  loc_6DF353: FFree1Var var_B8 = ""
  loc_6DF356: BranchF loc_6DF385
  loc_6DF359: FLdRfVar var_B8
  loc_6DF35C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6DF361: FLdRfVar var_B8
  loc_6DF364: CBoolVarNull
  loc_6DF366: FFree1Var var_B8 = ""
  loc_6DF369: BranchF loc_6DF382
  loc_6DF36C: ILdRf Me
  loc_6DF36F: FStAdNoPop
  loc_6DF373: ImpAdLdRf MemVar_7520D4
  loc_6DF376: NewIfNullPr Global
  loc_6DF379: Global.Unload from_stack_1
  loc_6DF37E: FFree1Ad var_A8
  loc_6DF381: ExitProcHresult
  loc_6DF382: Branch loc_6DF328
  loc_6DF385: LitI2_Byte 0
  loc_6DF387: FStI2 var_A2
  loc_6DF38A: LitVarI2 var_B8, 8
  loc_6DF38F: LitI4 1
  loc_6DF394: FLdRfVar var_88
  loc_6DF397: CVarRef
  loc_6DF39C: FLdRfVar var_C8
  loc_6DF39F: ImpAdCallFPR4  = Mid(, , )
  loc_6DF3A4: FLdRfVar var_D0
  loc_6DF3A7: FLdRfVar var_CC
  loc_6DF3AA: ILdUI1 indice
  loc_6DF3AE: CI2UI1
  loc_6DF3B0: FLdPrThis
  loc_6DF3B1: VCallAd Control_ID_Combustible
  loc_6DF3B4: FStAdFunc var_A8
  loc_6DF3B7: FLdPr var_A8
  loc_6DF3BA: Set from_stack_2 = Me(from_stack_1)
  loc_6DF3BF: FLdPr var_CC
  loc_6DF3C2:  = Me.Caption
  loc_6DF3C7: FLdZeroAd var_D0
  loc_6DF3CA: CVarStr var_150
  loc_6DF3CD: HardType
  loc_6DF3CE: LitI4 1
  loc_6DF3D3: LitI4 1
  loc_6DF3D8: LitVarStr var_120, "000000.00"
  loc_6DF3DD: FStVarCopyObj var_130
  loc_6DF3E0: FLdRfVar var_130
  loc_6DF3E3: FLdRfVar var_C8
  loc_6DF3E6: FnCLngVar
  loc_6DF3E8: CR8I4
  loc_6DF3E9: LitI2_Byte &H64
  loc_6DF3EB: CR8I2
  loc_6DF3EC: DivR8
  loc_6DF3ED: CVarR8
  loc_6DF3F1: FLdRfVar var_140
  loc_6DF3F4: ImpAdCallFPR4  = Format(, )
  loc_6DF3F9: FLdRfVar var_140
  loc_6DF3FC: NeVarBool
  loc_6DF3FE: FFreeAd var_A8 = ""
  loc_6DF405: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_6DF416: BranchF loc_6DF4D4
  loc_6DF419: LitVarI2 var_B8, 8
  loc_6DF41E: LitI4 1
  loc_6DF423: FLdRfVar var_88
  loc_6DF426: CVarRef
  loc_6DF42B: FLdRfVar var_C8
  loc_6DF42E: ImpAdCallFPR4  = Mid(, , )
  loc_6DF433: LitI4 1
  loc_6DF438: LitI4 1
  loc_6DF43D: LitVarStr var_120, "000000.00"
  loc_6DF442: FStVarCopyObj var_130
  loc_6DF445: FLdRfVar var_130
  loc_6DF448: FLdRfVar var_C8
  loc_6DF44B: FnCLngVar
  loc_6DF44D: CR8I4
  loc_6DF44E: LitI2_Byte &H64
  loc_6DF450: CR8I2
  loc_6DF451: DivR8
  loc_6DF452: CVarR8
  loc_6DF456: FLdRfVar var_140
  loc_6DF459: ImpAdCallFPR4  = Format(, )
  loc_6DF45E: FLdRfVar var_140
  loc_6DF461: CStrVarVal var_D0
  loc_6DF465: FLdRfVar var_CC
  loc_6DF468: ILdUI1 indice
  loc_6DF46C: CI2UI1
  loc_6DF46E: FLdPrThis
  loc_6DF46F: VCallAd Control_ID_Combustible
  loc_6DF472: FStAdFunc var_A8
  loc_6DF475: FLdPr var_A8
  loc_6DF478: Set from_stack_2 = Me(from_stack_1)
  loc_6DF47D: FLdPr var_CC
  loc_6DF480: Me.Caption = from_stack_1
  loc_6DF485: FFree1Str var_D0
  loc_6DF488: FFreeAd var_A8 = ""
  loc_6DF48F: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = ""
  loc_6DF49E: LitVarI2 var_B8, 8
  loc_6DF4A3: LitI4 1
  loc_6DF4A8: FLdRfVar var_88
  loc_6DF4AB: CVarRef
  loc_6DF4B0: FLdRfVar var_C8
  loc_6DF4B3: ImpAdCallFPR4  = Mid(, , )
  loc_6DF4B8: FLdRfVar var_C8
  loc_6DF4BB: FnCLngVar
  loc_6DF4BD: LitI4 2
  loc_6DF4C2: FLdRfVar var_A0
  loc_6DF4C5: Ary1StI4
  loc_6DF4C6: FFreeVar var_B8 = "": var_C8 = ""
  loc_6DF4CF: LitI2_Byte &HFF
  loc_6DF4D1: FStI2 var_A2
  loc_6DF4D4: LitVarI2 var_B8, 8
  loc_6DF4D9: LitI4 9
  loc_6DF4DE: FLdRfVar var_88
  loc_6DF4E1: CVarRef
  loc_6DF4E6: FLdRfVar var_C8
  loc_6DF4E9: ImpAdCallFPR4  = Mid(, , )
  loc_6DF4EE: FLdRfVar var_D0
  loc_6DF4F1: FLdRfVar var_CC
  loc_6DF4F4: ILdUI1 indice
  loc_6DF4F8: CI2UI1
  loc_6DF4FA: FLdPrThis
  loc_6DF4FB: VCallAd Control_ID_Agua
  loc_6DF4FE: FStAdFunc var_A8
  loc_6DF501: FLdPr var_A8
  loc_6DF504: Set from_stack_2 = Me(from_stack_1)
  loc_6DF509: FLdPr var_CC
  loc_6DF50C:  = Me.Caption
  loc_6DF511: FLdZeroAd var_D0
  loc_6DF514: CVarStr var_150
  loc_6DF517: HardType
  loc_6DF518: LitI4 1
  loc_6DF51D: LitI4 1
  loc_6DF522: LitVarStr var_120, "000000.00"
  loc_6DF527: FStVarCopyObj var_130
  loc_6DF52A: FLdRfVar var_130
  loc_6DF52D: FLdRfVar var_C8
  loc_6DF530: FnCLngVar
  loc_6DF532: CR8I4
  loc_6DF533: LitI2_Byte &H64
  loc_6DF535: CR8I2
  loc_6DF536: DivR8
  loc_6DF537: CVarR8
  loc_6DF53B: FLdRfVar var_140
  loc_6DF53E: ImpAdCallFPR4  = Format(, )
  loc_6DF543: FLdRfVar var_140
  loc_6DF546: NeVarBool
  loc_6DF548: FFreeAd var_A8 = ""
  loc_6DF54F: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_6DF560: BranchF loc_6DF61E
  loc_6DF563: LitVarI2 var_B8, 8
  loc_6DF568: LitI4 9
  loc_6DF56D: FLdRfVar var_88
  loc_6DF570: CVarRef
  loc_6DF575: FLdRfVar var_C8
  loc_6DF578: ImpAdCallFPR4  = Mid(, , )
  loc_6DF57D: LitI4 1
  loc_6DF582: LitI4 1
  loc_6DF587: LitVarStr var_120, "000000.00"
  loc_6DF58C: FStVarCopyObj var_130
  loc_6DF58F: FLdRfVar var_130
  loc_6DF592: FLdRfVar var_C8
  loc_6DF595: FnCLngVar
  loc_6DF597: CR8I4
  loc_6DF598: LitI2_Byte &H64
  loc_6DF59A: CR8I2
  loc_6DF59B: DivR8
  loc_6DF59C: CVarR8
  loc_6DF5A0: FLdRfVar var_140
  loc_6DF5A3: ImpAdCallFPR4  = Format(, )
  loc_6DF5A8: FLdRfVar var_140
  loc_6DF5AB: CStrVarVal var_D0
  loc_6DF5AF: FLdRfVar var_CC
  loc_6DF5B2: ILdUI1 indice
  loc_6DF5B6: CI2UI1
  loc_6DF5B8: FLdPrThis
  loc_6DF5B9: VCallAd Control_ID_Agua
  loc_6DF5BC: FStAdFunc var_A8
  loc_6DF5BF: FLdPr var_A8
  loc_6DF5C2: Set from_stack_2 = Me(from_stack_1)
  loc_6DF5C7: FLdPr var_CC
  loc_6DF5CA: Me.Caption = from_stack_1
  loc_6DF5CF: FFree1Str var_D0
  loc_6DF5D2: FFreeAd var_A8 = ""
  loc_6DF5D9: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = ""
  loc_6DF5E8: LitVarI2 var_B8, 8
  loc_6DF5ED: LitI4 9
  loc_6DF5F2: FLdRfVar var_88
  loc_6DF5F5: CVarRef
  loc_6DF5FA: FLdRfVar var_C8
  loc_6DF5FD: ImpAdCallFPR4  = Mid(, , )
  loc_6DF602: FLdRfVar var_C8
  loc_6DF605: FnCLngVar
  loc_6DF607: LitI4 1
  loc_6DF60C: FLdRfVar var_A0
  loc_6DF60F: Ary1StI4
  loc_6DF610: FFreeVar var_B8 = "": var_C8 = ""
  loc_6DF619: LitI2_Byte &HFF
  loc_6DF61B: FStI2 var_A2
  loc_6DF61E: LitVarI2 var_B8, 8
  loc_6DF623: LitI4 &H11
  loc_6DF628: FLdRfVar var_88
  loc_6DF62B: CVarRef
  loc_6DF630: FLdRfVar var_C8
  loc_6DF633: ImpAdCallFPR4  = Mid(, , )
  loc_6DF638: FLdRfVar var_D0
  loc_6DF63B: FLdRfVar var_CC
  loc_6DF63E: ILdUI1 indice
  loc_6DF642: CI2UI1
  loc_6DF644: FLdPrThis
  loc_6DF645: VCallAd Control_ID_Vacio
  loc_6DF648: FStAdFunc var_A8
  loc_6DF64B: FLdPr var_A8
  loc_6DF64E: Set from_stack_2 = Me(from_stack_1)
  loc_6DF653: FLdPr var_CC
  loc_6DF656:  = Me.Caption
  loc_6DF65B: FLdZeroAd var_D0
  loc_6DF65E: CVarStr var_150
  loc_6DF661: HardType
  loc_6DF662: LitI4 1
  loc_6DF667: LitI4 1
  loc_6DF66C: LitVarStr var_120, "000000.00"
  loc_6DF671: FStVarCopyObj var_130
  loc_6DF674: FLdRfVar var_130
  loc_6DF677: FLdRfVar var_C8
  loc_6DF67A: FnCLngVar
  loc_6DF67C: CR8I4
  loc_6DF67D: LitI2_Byte &H64
  loc_6DF67F: CR8I2
  loc_6DF680: DivR8
  loc_6DF681: CVarR8
  loc_6DF685: FLdRfVar var_140
  loc_6DF688: ImpAdCallFPR4  = Format(, )
  loc_6DF68D: FLdRfVar var_140
  loc_6DF690: NeVarBool
  loc_6DF692: FFreeAd var_A8 = ""
  loc_6DF699: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_6DF6AA: BranchF loc_6DF768
  loc_6DF6AD: LitVarI2 var_B8, 8
  loc_6DF6B2: LitI4 &H11
  loc_6DF6B7: FLdRfVar var_88
  loc_6DF6BA: CVarRef
  loc_6DF6BF: FLdRfVar var_C8
  loc_6DF6C2: ImpAdCallFPR4  = Mid(, , )
  loc_6DF6C7: LitI4 1
  loc_6DF6CC: LitI4 1
  loc_6DF6D1: LitVarStr var_120, "000000.00"
  loc_6DF6D6: FStVarCopyObj var_130
  loc_6DF6D9: FLdRfVar var_130
  loc_6DF6DC: FLdRfVar var_C8
  loc_6DF6DF: FnCLngVar
  loc_6DF6E1: CR8I4
  loc_6DF6E2: LitI2_Byte &H64
  loc_6DF6E4: CR8I2
  loc_6DF6E5: DivR8
  loc_6DF6E6: CVarR8
  loc_6DF6EA: FLdRfVar var_140
  loc_6DF6ED: ImpAdCallFPR4  = Format(, )
  loc_6DF6F2: FLdRfVar var_140
  loc_6DF6F5: CStrVarVal var_D0
  loc_6DF6F9: FLdRfVar var_CC
  loc_6DF6FC: ILdUI1 indice
  loc_6DF700: CI2UI1
  loc_6DF702: FLdPrThis
  loc_6DF703: VCallAd Control_ID_Vacio
  loc_6DF706: FStAdFunc var_A8
  loc_6DF709: FLdPr var_A8
  loc_6DF70C: Set from_stack_2 = Me(from_stack_1)
  loc_6DF711: FLdPr var_CC
  loc_6DF714: Me.Caption = from_stack_1
  loc_6DF719: FFree1Str var_D0
  loc_6DF71C: FFreeAd var_A8 = ""
  loc_6DF723: FFreeVar var_B8 = "": var_C8 = "": var_C8 = "": var_110 = "": var_130 = ""
  loc_6DF732: LitVarI2 var_B8, 8
  loc_6DF737: LitI4 &H11
  loc_6DF73C: FLdRfVar var_88
  loc_6DF73F: CVarRef
  loc_6DF744: FLdRfVar var_C8
  loc_6DF747: ImpAdCallFPR4  = Mid(, , )
  loc_6DF74C: FLdRfVar var_C8
  loc_6DF74F: FnCLngVar
  loc_6DF751: LitI4 3
  loc_6DF756: FLdRfVar var_A0
  loc_6DF759: Ary1StI4
  loc_6DF75A: FFreeVar var_B8 = "": var_C8 = ""
  loc_6DF763: LitI2_Byte &HFF
  loc_6DF765: FStI2 var_A2
  loc_6DF768: FLdI2 var_A2
  loc_6DF76B: BranchF loc_6DFF1E
  loc_6DF76E: FLdRfVar var_A0
  loc_6DF771: CVarRef
  loc_6DF776: PopAdLdVar
  loc_6DF777: FLdRfVar var_CC
  loc_6DF77A: ILdUI1 indice
  loc_6DF77E: CI2UI1
  loc_6DF780: FLdPrThis
  loc_6DF781: VCallAd Control_ID_Tanque
  loc_6DF784: FStAdFunc var_A8
  loc_6DF787: FLdPr var_A8
  loc_6DF78A: Set from_stack_2 = Me(from_stack_1)
  loc_6DF78F: FLdPr var_CC
  loc_6DF792: LateIdSt
  loc_6DF797: FFreeAd var_A8 = ""
  loc_6DF79E: ILdUI1 tank
  loc_6DF7A2: CI4UI1
  loc_6DF7A3: ImpAdLdRf MemVar_74C1D8
  loc_6DF7A6: Ary1LdUI1
  loc_6DF7A8: FStUI1 var_162
  loc_6DF7AC: FLdUI1
  loc_6DF7B0: LitI2_Byte 1
  loc_6DF7B2: CUI1I2
  loc_6DF7B4: EqI2
  loc_6DF7B5: BranchT loc_6DF7C4
  loc_6DF7B8: FLdUI1
  loc_6DF7BC: LitI2_Byte 6
  loc_6DF7BE: CUI1I2
  loc_6DF7C0: EqI2
  loc_6DF7C1: BranchF loc_6DF929
  loc_6DF7C4: LitI2_Byte &H3D
  loc_6DF7C6: LitI2 250
  loc_6DF7C9: LitI2_Byte &H3D
  loc_6DF7CB: FLdRfVar var_180
  loc_6DF7CE: FLdRfVar var_17C
  loc_6DF7D1: FLdRfVar var_178
  loc_6DF7D4: LitI2_Byte &HFF
  loc_6DF7D6: FLdRfVar var_174
  loc_6DF7D9: FLdRfVar var_170
  loc_6DF7DC: LitI2_Byte 2
  loc_6DF7DE: FLdRfVar var_16C
  loc_6DF7E1: FLdRfVar var_CC
  loc_6DF7E4: ILdUI1 indice
  loc_6DF7E8: CI2UI1
  loc_6DF7EA: FLdPrThis
  loc_6DF7EB: VCallAd Control_ID_Tanque
  loc_6DF7EE: FStAdFunc var_A8
  loc_6DF7F1: FLdPr var_A8
  loc_6DF7F4: Set from_stack_2 = Me(from_stack_1)
  loc_6DF7F9: FLdPr var_CC
  loc_6DF7FC: LateIdLdVar var_B8 DispID_40 0
  loc_6DF803: CastAdVar Me
  loc_6DF807: FStAdFunc var_168
  loc_6DF80A: FLdPr var_168
  loc_6DF80D:  = Me.IVcPlot.SeriesCollection
  loc_6DF812: FLdPr var_16C
  loc_6DF815: from_stack_2 = Me.item(from_stack_1v)
  loc_6DF81A: FLdPr var_170
  loc_6DF81D:  = Me.DataPoints
  loc_6DF822: FLdPr var_174
  loc_6DF825: from_stack_2 = Me.item(from_stack_1v)
  loc_6DF82A: FLdPr var_178
  loc_6DF82D:  = Me.Brush
  loc_6DF832: FLdPr var_17C
  loc_6DF835:  = Me.FillColor
  loc_6DF83A: FLdPr var_180
  loc_6DF83D: from_stack_4 = Me.Set(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6DF842: FFreeAd var_A8 = "": var_CC = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_6DF857: FFree1Var var_B8 = ""
  loc_6DF85A: LitI4 &H3DFA3D
  loc_6DF85F: FLdRfVar var_CC
  loc_6DF862: ILdUI1 indice
  loc_6DF866: CI2UI1
  loc_6DF868: FLdPrThis
  loc_6DF869: VCallAd Control_ID_Combustible
  loc_6DF86C: FStAdFunc var_A8
  loc_6DF86F: FLdPr var_A8
  loc_6DF872: Set from_stack_2 = Me(from_stack_1)
  loc_6DF877: FLdPr var_CC
  loc_6DF87A: Me.ForeColor = from_stack_1
  loc_6DF87F: FFreeAd var_A8 = ""
  loc_6DF886: LitI4 &H3DFA3D
  loc_6DF88B: FLdRfVar var_CC
  loc_6DF88E: LitI2_Byte 3
  loc_6DF890: FLdPrThis
  loc_6DF891: VCallAd Control_ID_Combustible
  loc_6DF894: FStAdFunc var_A8
  loc_6DF897: FLdPr var_A8
  loc_6DF89A: Set from_stack_2 = Me(from_stack_1)
  loc_6DF89F: FLdPr var_CC
  loc_6DF8A2: Me.ForeColor = from_stack_1
  loc_6DF8A7: FFreeAd var_A8 = ""
  loc_6DF8AE: LitI4 &H3DFA3D
  loc_6DF8B3: FLdRfVar var_CC
  loc_6DF8B6: LitI2_Byte 2
  loc_6DF8B8: FLdPrThis
  loc_6DF8B9: VCallAd Control_ID_lt
  loc_6DF8BC: FStAdFunc var_A8
  loc_6DF8BF: FLdPr var_A8
  loc_6DF8C2: Set from_stack_2 = Me(from_stack_1)
  loc_6DF8C7: FLdPr var_CC
  loc_6DF8CA: Me.ForeColor = from_stack_1
  loc_6DF8CF: FFreeAd var_A8 = ""
  loc_6DF8D6: LitI4 &H3DFA3D
  loc_6DF8DB: FLdRfVar var_CC
  loc_6DF8DE: LitI2_Byte 5
  loc_6DF8E0: FLdPrThis
  loc_6DF8E1: VCallAd Control_ID_lt
  loc_6DF8E4: FStAdFunc var_A8
  loc_6DF8E7: FLdPr var_A8
  loc_6DF8EA: Set from_stack_2 = Me(from_stack_1)
  loc_6DF8EF: FLdPr var_CC
  loc_6DF8F2: Me.ForeColor = from_stack_1
  loc_6DF8F7: FFreeAd var_A8 = ""
  loc_6DF8FE: LitI4 &H3DFA3D
  loc_6DF903: FLdRfVar var_CC
  loc_6DF906: LitI2_Byte 8
  loc_6DF908: FLdPrThis
  loc_6DF909: VCallAd Control_ID_lt
  loc_6DF90C: FStAdFunc var_A8
  loc_6DF90F: FLdPr var_A8
  loc_6DF912: Set from_stack_2 = Me(from_stack_1)
  loc_6DF917: FLdPr var_CC
  loc_6DF91A: Me.ForeColor = from_stack_1
  loc_6DF91F: FFreeAd var_A8 = ""
  loc_6DF926: Branch loc_6DFF1E
  loc_6DF929: FLdUI1
  loc_6DF92D: LitI2_Byte 2
  loc_6DF92F: CUI1I2
  loc_6DF931: EqI2
  loc_6DF932: BranchT loc_6DF941
  loc_6DF935: FLdUI1
  loc_6DF939: LitI2_Byte 7
  loc_6DF93B: CUI1I2
  loc_6DF93D: EqI2
  loc_6DF93E: BranchF loc_6DFAA7
  loc_6DF941: LitI2 151
  loc_6DF944: LitI2_Byte &H1F
  loc_6DF946: LitI2 190
  loc_6DF949: FLdRfVar var_180
  loc_6DF94C: FLdRfVar var_17C
  loc_6DF94F: FLdRfVar var_178
  loc_6DF952: LitI2_Byte &HFF
  loc_6DF954: FLdRfVar var_174
  loc_6DF957: FLdRfVar var_170
  loc_6DF95A: LitI2_Byte 2
  loc_6DF95C: FLdRfVar var_16C
  loc_6DF95F: FLdRfVar var_CC
  loc_6DF962: ILdUI1 indice
  loc_6DF966: CI2UI1
  loc_6DF968: FLdPrThis
  loc_6DF969: VCallAd Control_ID_Tanque
  loc_6DF96C: FStAdFunc var_A8
  loc_6DF96F: FLdPr var_A8
  loc_6DF972: Set from_stack_2 = Me(from_stack_1)
  loc_6DF977: FLdPr var_CC
  loc_6DF97A: LateIdLdVar var_B8 DispID_40 0
  loc_6DF981: CastAdVar Me
  loc_6DF985: FStAdFunc var_168
  loc_6DF988: FLdPr var_168
  loc_6DF98B:  = Me.IVcPlot.SeriesCollection
  loc_6DF990: FLdPr var_16C
  loc_6DF993: from_stack_2 = Me.item(from_stack_1v)
  loc_6DF998: FLdPr var_170
  loc_6DF99B:  = Me.DataPoints
  loc_6DF9A0: FLdPr var_174
  loc_6DF9A3: from_stack_2 = Me.item(from_stack_1v)
  loc_6DF9A8: FLdPr var_178
  loc_6DF9AB:  = Me.Brush
  loc_6DF9B0: FLdPr var_17C
  loc_6DF9B3:  = Me.FillColor
  loc_6DF9B8: FLdPr var_180
  loc_6DF9BB: from_stack_4 = Me.Set(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6DF9C0: FFreeAd var_A8 = "": var_CC = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_6DF9D5: FFree1Var var_B8 = ""
  loc_6DF9D8: LitI4 &H971FBE
  loc_6DF9DD: FLdRfVar var_CC
  loc_6DF9E0: ILdUI1 indice
  loc_6DF9E4: CI2UI1
  loc_6DF9E6: FLdPrThis
  loc_6DF9E7: VCallAd Control_ID_Combustible
  loc_6DF9EA: FStAdFunc var_A8
  loc_6DF9ED: FLdPr var_A8
  loc_6DF9F0: Set from_stack_2 = Me(from_stack_1)
  loc_6DF9F5: FLdPr var_CC
  loc_6DF9F8: Me.ForeColor = from_stack_1
  loc_6DF9FD: FFreeAd var_A8 = ""
  loc_6DFA04: LitI4 &H971FBE
  loc_6DFA09: FLdRfVar var_CC
  loc_6DFA0C: LitI2_Byte 3
  loc_6DFA0E: FLdPrThis
  loc_6DFA0F: VCallAd Control_ID_Combustible
  loc_6DFA12: FStAdFunc var_A8
  loc_6DFA15: FLdPr var_A8
  loc_6DFA18: Set from_stack_2 = Me(from_stack_1)
  loc_6DFA1D: FLdPr var_CC
  loc_6DFA20: Me.ForeColor = from_stack_1
  loc_6DFA25: FFreeAd var_A8 = ""
  loc_6DFA2C: LitI4 &H971FBE
  loc_6DFA31: FLdRfVar var_CC
  loc_6DFA34: LitI2_Byte 2
  loc_6DFA36: FLdPrThis
  loc_6DFA37: VCallAd Control_ID_lt
  loc_6DFA3A: FStAdFunc var_A8
  loc_6DFA3D: FLdPr var_A8
  loc_6DFA40: Set from_stack_2 = Me(from_stack_1)
  loc_6DFA45: FLdPr var_CC
  loc_6DFA48: Me.ForeColor = from_stack_1
  loc_6DFA4D: FFreeAd var_A8 = ""
  loc_6DFA54: LitI4 &H971FBE
  loc_6DFA59: FLdRfVar var_CC
  loc_6DFA5C: LitI2_Byte 5
  loc_6DFA5E: FLdPrThis
  loc_6DFA5F: VCallAd Control_ID_lt
  loc_6DFA62: FStAdFunc var_A8
  loc_6DFA65: FLdPr var_A8
  loc_6DFA68: Set from_stack_2 = Me(from_stack_1)
  loc_6DFA6D: FLdPr var_CC
  loc_6DFA70: Me.ForeColor = from_stack_1
  loc_6DFA75: FFreeAd var_A8 = ""
  loc_6DFA7C: LitI4 &H971FBE
  loc_6DFA81: FLdRfVar var_CC
  loc_6DFA84: LitI2_Byte 8
  loc_6DFA86: FLdPrThis
  loc_6DFA87: VCallAd Control_ID_lt
  loc_6DFA8A: FStAdFunc var_A8
  loc_6DFA8D: FLdPr var_A8
  loc_6DFA90: Set from_stack_2 = Me(from_stack_1)
  loc_6DFA95: FLdPr var_CC
  loc_6DFA98: Me.ForeColor = from_stack_1
  loc_6DFA9D: FFreeAd var_A8 = ""
  loc_6DFAA4: Branch loc_6DFF1E
  loc_6DFAA7: FLdUI1
  loc_6DFAAB: LitI2_Byte 3
  loc_6DFAAD: CUI1I2
  loc_6DFAAF: EqI2
  loc_6DFAB0: BranchT loc_6DFABF
  loc_6DFAB3: FLdUI1
  loc_6DFAB7: LitI2_Byte 8
  loc_6DFAB9: CUI1I2
  loc_6DFABB: EqI2
  loc_6DFABC: BranchF loc_6DFC25
  loc_6DFABF: LitI2_Byte 3
  loc_6DFAC1: LitI2 231
  loc_6DFAC4: LitI2 225
  loc_6DFAC7: FLdRfVar var_180
  loc_6DFACA: FLdRfVar var_17C
  loc_6DFACD: FLdRfVar var_178
  loc_6DFAD0: LitI2_Byte &HFF
  loc_6DFAD2: FLdRfVar var_174
  loc_6DFAD5: FLdRfVar var_170
  loc_6DFAD8: LitI2_Byte 2
  loc_6DFADA: FLdRfVar var_16C
  loc_6DFADD: FLdRfVar var_CC
  loc_6DFAE0: ILdUI1 indice
  loc_6DFAE4: CI2UI1
  loc_6DFAE6: FLdPrThis
  loc_6DFAE7: VCallAd Control_ID_Tanque
  loc_6DFAEA: FStAdFunc var_A8
  loc_6DFAED: FLdPr var_A8
  loc_6DFAF0: Set from_stack_2 = Me(from_stack_1)
  loc_6DFAF5: FLdPr var_CC
  loc_6DFAF8: LateIdLdVar var_B8 DispID_40 0
  loc_6DFAFF: CastAdVar Me
  loc_6DFB03: FStAdFunc var_168
  loc_6DFB06: FLdPr var_168
  loc_6DFB09:  = Me.IVcPlot.SeriesCollection
  loc_6DFB0E: FLdPr var_16C
  loc_6DFB11: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFB16: FLdPr var_170
  loc_6DFB19:  = Me.DataPoints
  loc_6DFB1E: FLdPr var_174
  loc_6DFB21: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFB26: FLdPr var_178
  loc_6DFB29:  = Me.Brush
  loc_6DFB2E: FLdPr var_17C
  loc_6DFB31:  = Me.FillColor
  loc_6DFB36: FLdPr var_180
  loc_6DFB39: from_stack_4 = Me.Set(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6DFB3E: FFreeAd var_A8 = "": var_CC = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_6DFB53: FFree1Var var_B8 = ""
  loc_6DFB56: LitI4 &H3E7E1
  loc_6DFB5B: FLdRfVar var_CC
  loc_6DFB5E: ILdUI1 indice
  loc_6DFB62: CI2UI1
  loc_6DFB64: FLdPrThis
  loc_6DFB65: VCallAd Control_ID_Combustible
  loc_6DFB68: FStAdFunc var_A8
  loc_6DFB6B: FLdPr var_A8
  loc_6DFB6E: Set from_stack_2 = Me(from_stack_1)
  loc_6DFB73: FLdPr var_CC
  loc_6DFB76: Me.ForeColor = from_stack_1
  loc_6DFB7B: FFreeAd var_A8 = ""
  loc_6DFB82: LitI4 &H3E7E1
  loc_6DFB87: FLdRfVar var_CC
  loc_6DFB8A: LitI2_Byte 3
  loc_6DFB8C: FLdPrThis
  loc_6DFB8D: VCallAd Control_ID_Combustible
  loc_6DFB90: FStAdFunc var_A8
  loc_6DFB93: FLdPr var_A8
  loc_6DFB96: Set from_stack_2 = Me(from_stack_1)
  loc_6DFB9B: FLdPr var_CC
  loc_6DFB9E: Me.ForeColor = from_stack_1
  loc_6DFBA3: FFreeAd var_A8 = ""
  loc_6DFBAA: LitI4 &H3E7E1
  loc_6DFBAF: FLdRfVar var_CC
  loc_6DFBB2: LitI2_Byte 2
  loc_6DFBB4: FLdPrThis
  loc_6DFBB5: VCallAd Control_ID_lt
  loc_6DFBB8: FStAdFunc var_A8
  loc_6DFBBB: FLdPr var_A8
  loc_6DFBBE: Set from_stack_2 = Me(from_stack_1)
  loc_6DFBC3: FLdPr var_CC
  loc_6DFBC6: Me.ForeColor = from_stack_1
  loc_6DFBCB: FFreeAd var_A8 = ""
  loc_6DFBD2: LitI4 &H3E7E1
  loc_6DFBD7: FLdRfVar var_CC
  loc_6DFBDA: LitI2_Byte 5
  loc_6DFBDC: FLdPrThis
  loc_6DFBDD: VCallAd Control_ID_lt
  loc_6DFBE0: FStAdFunc var_A8
  loc_6DFBE3: FLdPr var_A8
  loc_6DFBE6: Set from_stack_2 = Me(from_stack_1)
  loc_6DFBEB: FLdPr var_CC
  loc_6DFBEE: Me.ForeColor = from_stack_1
  loc_6DFBF3: FFreeAd var_A8 = ""
  loc_6DFBFA: LitI4 &H3E7E1
  loc_6DFBFF: FLdRfVar var_CC
  loc_6DFC02: LitI2_Byte 8
  loc_6DFC04: FLdPrThis
  loc_6DFC05: VCallAd Control_ID_lt
  loc_6DFC08: FStAdFunc var_A8
  loc_6DFC0B: FLdPr var_A8
  loc_6DFC0E: Set from_stack_2 = Me(from_stack_1)
  loc_6DFC13: FLdPr var_CC
  loc_6DFC16: Me.ForeColor = from_stack_1
  loc_6DFC1B: FFreeAd var_A8 = ""
  loc_6DFC22: Branch loc_6DFF1E
  loc_6DFC25: FLdUI1
  loc_6DFC29: LitI2_Byte 4
  loc_6DFC2B: CUI1I2
  loc_6DFC2D: EqI2
  loc_6DFC2E: BranchT loc_6DFC3D
  loc_6DFC31: FLdUI1
  loc_6DFC35: LitI2_Byte 9
  loc_6DFC37: CUI1I2
  loc_6DFC39: EqI2
  loc_6DFC3A: BranchF loc_6DFDA4
  loc_6DFC3D: LitI2 130
  loc_6DFC40: LitI2 186
  loc_6DFC43: LitI2 227
  loc_6DFC46: FLdRfVar var_180
  loc_6DFC49: FLdRfVar var_17C
  loc_6DFC4C: FLdRfVar var_178
  loc_6DFC4F: LitI2_Byte &HFF
  loc_6DFC51: FLdRfVar var_174
  loc_6DFC54: FLdRfVar var_170
  loc_6DFC57: LitI2_Byte 2
  loc_6DFC59: FLdRfVar var_16C
  loc_6DFC5C: FLdRfVar var_CC
  loc_6DFC5F: ILdUI1 indice
  loc_6DFC63: CI2UI1
  loc_6DFC65: FLdPrThis
  loc_6DFC66: VCallAd Control_ID_Tanque
  loc_6DFC69: FStAdFunc var_A8
  loc_6DFC6C: FLdPr var_A8
  loc_6DFC6F: Set from_stack_2 = Me(from_stack_1)
  loc_6DFC74: FLdPr var_CC
  loc_6DFC77: LateIdLdVar var_B8 DispID_40 0
  loc_6DFC7E: CastAdVar Me
  loc_6DFC82: FStAdFunc var_168
  loc_6DFC85: FLdPr var_168
  loc_6DFC88:  = Me.IVcPlot.SeriesCollection
  loc_6DFC8D: FLdPr var_16C
  loc_6DFC90: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFC95: FLdPr var_170
  loc_6DFC98:  = Me.DataPoints
  loc_6DFC9D: FLdPr var_174
  loc_6DFCA0: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFCA5: FLdPr var_178
  loc_6DFCA8:  = Me.Brush
  loc_6DFCAD: FLdPr var_17C
  loc_6DFCB0:  = Me.FillColor
  loc_6DFCB5: FLdPr var_180
  loc_6DFCB8: from_stack_4 = Me.Set(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6DFCBD: FFreeAd var_A8 = "": var_CC = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_6DFCD2: FFree1Var var_B8 = ""
  loc_6DFCD5: LitI4 &H82BAE3
  loc_6DFCDA: FLdRfVar var_CC
  loc_6DFCDD: ILdUI1 indice
  loc_6DFCE1: CI2UI1
  loc_6DFCE3: FLdPrThis
  loc_6DFCE4: VCallAd Control_ID_Combustible
  loc_6DFCE7: FStAdFunc var_A8
  loc_6DFCEA: FLdPr var_A8
  loc_6DFCED: Set from_stack_2 = Me(from_stack_1)
  loc_6DFCF2: FLdPr var_CC
  loc_6DFCF5: Me.ForeColor = from_stack_1
  loc_6DFCFA: FFreeAd var_A8 = ""
  loc_6DFD01: LitI4 &H82BAE3
  loc_6DFD06: FLdRfVar var_CC
  loc_6DFD09: LitI2_Byte 3
  loc_6DFD0B: FLdPrThis
  loc_6DFD0C: VCallAd Control_ID_Combustible
  loc_6DFD0F: FStAdFunc var_A8
  loc_6DFD12: FLdPr var_A8
  loc_6DFD15: Set from_stack_2 = Me(from_stack_1)
  loc_6DFD1A: FLdPr var_CC
  loc_6DFD1D: Me.ForeColor = from_stack_1
  loc_6DFD22: FFreeAd var_A8 = ""
  loc_6DFD29: LitI4 &H82BAE3
  loc_6DFD2E: FLdRfVar var_CC
  loc_6DFD31: LitI2_Byte 2
  loc_6DFD33: FLdPrThis
  loc_6DFD34: VCallAd Control_ID_lt
  loc_6DFD37: FStAdFunc var_A8
  loc_6DFD3A: FLdPr var_A8
  loc_6DFD3D: Set from_stack_2 = Me(from_stack_1)
  loc_6DFD42: FLdPr var_CC
  loc_6DFD45: Me.ForeColor = from_stack_1
  loc_6DFD4A: FFreeAd var_A8 = ""
  loc_6DFD51: LitI4 &H82BAE3
  loc_6DFD56: FLdRfVar var_CC
  loc_6DFD59: LitI2_Byte 5
  loc_6DFD5B: FLdPrThis
  loc_6DFD5C: VCallAd Control_ID_lt
  loc_6DFD5F: FStAdFunc var_A8
  loc_6DFD62: FLdPr var_A8
  loc_6DFD65: Set from_stack_2 = Me(from_stack_1)
  loc_6DFD6A: FLdPr var_CC
  loc_6DFD6D: Me.ForeColor = from_stack_1
  loc_6DFD72: FFreeAd var_A8 = ""
  loc_6DFD79: LitI4 &H82BAE3
  loc_6DFD7E: FLdRfVar var_CC
  loc_6DFD81: LitI2_Byte 8
  loc_6DFD83: FLdPrThis
  loc_6DFD84: VCallAd Control_ID_lt
  loc_6DFD87: FStAdFunc var_A8
  loc_6DFD8A: FLdPr var_A8
  loc_6DFD8D: Set from_stack_2 = Me(from_stack_1)
  loc_6DFD92: FLdPr var_CC
  loc_6DFD95: Me.ForeColor = from_stack_1
  loc_6DFD9A: FFreeAd var_A8 = ""
  loc_6DFDA1: Branch loc_6DFF1E
  loc_6DFDA4: FLdUI1
  loc_6DFDA8: LitI2_Byte 5
  loc_6DFDAA: CUI1I2
  loc_6DFDAC: EqI2
  loc_6DFDAD: BranchT loc_6DFDBC
  loc_6DFDB0: FLdUI1
  loc_6DFDB4: LitI2_Byte &HA
  loc_6DFDB6: CUI1I2
  loc_6DFDB8: EqI2
  loc_6DFDB9: BranchF loc_6DFF1E
  loc_6DFDBC: LitI2_Byte &H3D
  loc_6DFDBE: LitI2_Byte &H3D
  loc_6DFDC0: LitI2 250
  loc_6DFDC3: FLdRfVar var_180
  loc_6DFDC6: FLdRfVar var_17C
  loc_6DFDC9: FLdRfVar var_178
  loc_6DFDCC: LitI2_Byte &HFF
  loc_6DFDCE: FLdRfVar var_174
  loc_6DFDD1: FLdRfVar var_170
  loc_6DFDD4: LitI2_Byte 2
  loc_6DFDD6: FLdRfVar var_16C
  loc_6DFDD9: FLdRfVar var_CC
  loc_6DFDDC: ILdUI1 indice
  loc_6DFDE0: CI2UI1
  loc_6DFDE2: FLdPrThis
  loc_6DFDE3: VCallAd Control_ID_Tanque
  loc_6DFDE6: FStAdFunc var_A8
  loc_6DFDE9: FLdPr var_A8
  loc_6DFDEC: Set from_stack_2 = Me(from_stack_1)
  loc_6DFDF1: FLdPr var_CC
  loc_6DFDF4: LateIdLdVar var_B8 DispID_40 0
  loc_6DFDFB: CastAdVar Me
  loc_6DFDFF: FStAdFunc var_168
  loc_6DFE02: FLdPr var_168
  loc_6DFE05:  = Me.IVcPlot.SeriesCollection
  loc_6DFE0A: FLdPr var_16C
  loc_6DFE0D: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFE12: FLdPr var_170
  loc_6DFE15:  = Me.DataPoints
  loc_6DFE1A: FLdPr var_174
  loc_6DFE1D: from_stack_2 = Me.item(from_stack_1v)
  loc_6DFE22: FLdPr var_178
  loc_6DFE25:  = Me.Brush
  loc_6DFE2A: FLdPr var_17C
  loc_6DFE2D:  = Me.FillColor
  loc_6DFE32: FLdPr var_180
  loc_6DFE35: from_stack_4 = Me.Set(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6DFE3A: FFreeAd var_A8 = "": var_CC = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_6DFE4F: FFree1Var var_B8 = ""
  loc_6DFE52: LitI4 &H3D3DFA
  loc_6DFE57: FLdRfVar var_CC
  loc_6DFE5A: ILdUI1 indice
  loc_6DFE5E: CI2UI1
  loc_6DFE60: FLdPrThis
  loc_6DFE61: VCallAd Control_ID_Combustible
  loc_6DFE64: FStAdFunc var_A8
  loc_6DFE67: FLdPr var_A8
  loc_6DFE6A: Set from_stack_2 = Me(from_stack_1)
  loc_6DFE6F: FLdPr var_CC
  loc_6DFE72: Me.ForeColor = from_stack_1
  loc_6DFE77: FFreeAd var_A8 = ""
  loc_6DFE7E: LitI4 &H3D3DFA
  loc_6DFE83: FLdRfVar var_CC
  loc_6DFE86: LitI2_Byte 3
  loc_6DFE88: FLdPrThis
  loc_6DFE89: VCallAd Control_ID_Combustible
  loc_6DFE8C: FStAdFunc var_A8
  loc_6DFE8F: FLdPr var_A8
  loc_6DFE92: Set from_stack_2 = Me(from_stack_1)
  loc_6DFE97: FLdPr var_CC
  loc_6DFE9A: Me.ForeColor = from_stack_1
  loc_6DFE9F: FFreeAd var_A8 = ""
  loc_6DFEA6: LitI4 &H3D3DFA
  loc_6DFEAB: FLdRfVar var_CC
  loc_6DFEAE: LitI2_Byte 2
  loc_6DFEB0: FLdPrThis
  loc_6DFEB1: VCallAd Control_ID_lt
  loc_6DFEB4: FStAdFunc var_A8
  loc_6DFEB7: FLdPr var_A8
  loc_6DFEBA: Set from_stack_2 = Me(from_stack_1)
  loc_6DFEBF: FLdPr var_CC
  loc_6DFEC2: Me.ForeColor = from_stack_1
  loc_6DFEC7: FFreeAd var_A8 = ""
  loc_6DFECE: LitI4 &H3D3DFA
  loc_6DFED3: FLdRfVar var_CC
  loc_6DFED6: LitI2_Byte 5
  loc_6DFED8: FLdPrThis
  loc_6DFED9: VCallAd Control_ID_lt
  loc_6DFEDC: FStAdFunc var_A8
  loc_6DFEDF: FLdPr var_A8
  loc_6DFEE2: Set from_stack_2 = Me(from_stack_1)
  loc_6DFEE7: FLdPr var_CC
  loc_6DFEEA: Me.ForeColor = from_stack_1
  loc_6DFEEF: FFreeAd var_A8 = ""
  loc_6DFEF6: LitI4 &H3D3DFA
  loc_6DFEFB: FLdRfVar var_CC
  loc_6DFEFE: LitI2_Byte 8
  loc_6DFF00: FLdPrThis
  loc_6DFF01: VCallAd Control_ID_lt
  loc_6DFF04: FStAdFunc var_A8
  loc_6DFF07: FLdPr var_A8
  loc_6DFF0A: Set from_stack_2 = Me(from_stack_1)
  loc_6DFF0F: FLdPr var_CC
  loc_6DFF12: Me.ForeColor = from_stack_1
  loc_6DFF17: FFreeAd var_A8 = ""
  loc_6DFF1E: ExitProcHresult
End Sub

Public Sub VisTotalTanks(posicion, vis) '6015BC
  'Data Table: 45B254
  loc_6014E4: ILdI2 vis
  loc_6014E7: FLdRfVar var_90
  loc_6014EA: ILdUI1 posicion
  loc_6014EE: CI2UI1
  loc_6014F0: FLdPrThis
  loc_6014F1: VCallAd Control_ID_Combustible
  loc_6014F4: FStAdFunc var_8C
  loc_6014F7: FLdPr var_8C
  loc_6014FA: Set from_stack_2 = Me(from_stack_1)
  loc_6014FF: FLdPr var_90
  loc_601502: Me.Visible = from_stack_1b
  loc_601507: FFreeAd var_8C = ""
  loc_60150E: ILdI2 vis
  loc_601511: FLdRfVar var_90
  loc_601514: ILdUI1 posicion
  loc_601518: CI2UI1
  loc_60151A: FLdPrThis
  loc_60151B: VCallAd Control_ID_Agua
  loc_60151E: FStAdFunc var_8C
  loc_601521: FLdPr var_8C
  loc_601524: Set from_stack_2 = Me(from_stack_1)
  loc_601529: FLdPr var_90
  loc_60152C: Me.Visible = from_stack_1b
  loc_601531: FFreeAd var_8C = ""
  loc_601538: ILdI2 vis
  loc_60153B: FLdRfVar var_90
  loc_60153E: ILdUI1 posicion
  loc_601542: CI2UI1
  loc_601544: FLdPrThis
  loc_601545: VCallAd Control_ID_Vacio
  loc_601548: FStAdFunc var_8C
  loc_60154B: FLdPr var_8C
  loc_60154E: Set from_stack_2 = Me(from_stack_1)
  loc_601553: FLdPr var_90
  loc_601556: Me.Visible = from_stack_1b
  loc_60155B: FFreeAd var_8C = ""
  loc_601562: ILdUI1 posicion
  loc_601566: CI2UI1
  loc_601568: LitI2_Byte 3
  loc_60156A: MulI2
  loc_60156B: LitI2_Byte 1
  loc_60156D: AddI2
  loc_60156E: CUI1I2
  loc_601570: FLdRfVar var_86
  loc_601573: ILdUI1 posicion
  loc_601577: CI2UI1
  loc_601579: LitI2_Byte 3
  loc_60157B: MulI2
  loc_60157C: LitI2_Byte 3
  loc_60157E: AddI2
  loc_60157F: CUI1I2
  loc_601581: ForUI1 var_94
  loc_601587: ILdI2 vis
  loc_60158A: FLdRfVar var_90
  loc_60158D: FLdUI1
  loc_601591: CI2UI1
  loc_601593: FLdPrThis
  loc_601594: VCallAd Control_ID_lt
  loc_601597: FStAdFunc var_8C
  loc_60159A: FLdPr var_8C
  loc_60159D: Set from_stack_2 = Me(from_stack_1)
  loc_6015A2: FLdPr var_90
  loc_6015A5: Me.Visible = from_stack_1b
  loc_6015AA: FFreeAd var_8C = ""
  loc_6015B1: FLdRfVar var_86
  loc_6015B4: NextUI1
  loc_6015BA: ExitProcHresult
End Sub

Public Sub ImpresionReporte(Tipo) '67AAB4
  'Data Table: 45B254
  loc_67A640: OnErrorGoto loc_67AA2C
  loc_67A643: FLdRfVar var_B6
  loc_67A646: FLdRfVar var_88
  loc_67A649: CVarRef
  loc_67A64E: LitI2_Byte &HFF
  loc_67A650: PopTmpLdAd2 var_A2
  loc_67A653: ILdRf Tipo
  loc_67A656: FLdRfVar var_A0
  loc_67A659: ImpAdLdRf MemVar_74C760
  loc_67A65C: NewIfNullPr Formx
  loc_67A65F: from_stack_1v = Formx.global_4589716Get()
  loc_67A664: FLdPr var_A0
  loc_67A667: Formx.WindowState = from_stack_1
  loc_67A66C: FLdI2 var_B6
  loc_67A66F: NotI4
  loc_67A670: FFree1Ad var_A0
  loc_67A673: BranchF loc_67A68D
  loc_67A676: FLdRfVar var_C8
  loc_67A679: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67A67E: FLdRfVar var_C8
  loc_67A681: CBoolVarNull
  loc_67A683: FFree1Var var_C8 = ""
  loc_67A686: BranchF loc_67A68A
  loc_67A689: ExitProcHresult
  loc_67A68A: Branch loc_67A643
  loc_67A68D: FLdRfVar var_88
  loc_67A690: CVarRef
  loc_67A695: FLdRfVar var_C8
  loc_67A698: ImpAdCallFPR4  = Trim()
  loc_67A69D: FLdRfVar var_C8
  loc_67A6A0: CStrVarTmp
  loc_67A6A1: FStStr var_88
  loc_67A6A4: FFree1Var var_C8 = ""
  loc_67A6A7: ILdRf var_88
  loc_67A6AA: FnLenStr
  loc_67A6AB: LitI4 2
  loc_67A6B0: LtI4
  loc_67A6B1: BranchF loc_67A6FD
  loc_67A6B4: LitVar_Missing var_108
  loc_67A6B7: LitVar_Missing var_C8
  loc_67A6BA: ImpAdLdRf MemVar_74BF24
  loc_67A6BD: CVarRef
  loc_67A6C2: LitI4 0
  loc_67A6C7: FLdPr Me
  loc_67A6CA: MemLdRfVar from_stack_1.global_392
  loc_67A6CD: CVarRef
  loc_67A6D2: ImpAdCallI2 MsgBox(, , , , )
  loc_67A6D7: CBoolI4
  loc_67A6D9: FFreeVar var_C8 = ""
  loc_67A6E0: BranchF loc_67A6FD
  loc_67A6E3: LitI2_Byte 4
  loc_67A6E5: CUI1I2
  loc_67A6E7: PopTmpLdAd1
  loc_67A6EB: LitStr "Closing shift without sales"
  loc_67A6EE: FStStrCopy var_10C
  loc_67A6F1: FLdRfVar var_10C
  loc_67A6F4: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_67A6F9: FFree1Str var_10C
  loc_67A6FC: ExitProcHresult
  loc_67A6FD: FLdRfVar var_98
  loc_67A700: FLdRfVar var_88
  loc_67A703: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_67A708: FLdRfVar var_B6
  loc_67A70B: FLdRfVar var_88
  loc_67A70E: CVarRef
  loc_67A713: LitI2_Byte 0
  loc_67A715: PopTmpLdAd2 var_A2
  loc_67A718: ILdRf Tipo
  loc_67A71B: FLdRfVar var_A0
  loc_67A71E: ImpAdLdRf MemVar_74C760
  loc_67A721: NewIfNullPr Formx
  loc_67A724: from_stack_1v = Formx.global_4589716Get()
  loc_67A729: FLdPr var_A0
  loc_67A72C: Formx.WindowState = from_stack_1
  loc_67A731: FLdI2 var_B6
  loc_67A734: NotI4
  loc_67A735: FFree1Ad var_A0
  loc_67A738: BranchF loc_67A752
  loc_67A73B: FLdRfVar var_C8
  loc_67A73E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67A743: FLdRfVar var_C8
  loc_67A746: CBoolVarNull
  loc_67A748: FFree1Var var_C8 = ""
  loc_67A74B: BranchF loc_67A74F
  loc_67A74E: ExitProcHresult
  loc_67A74F: Branch loc_67A708
  loc_67A752: FLdRfVar var_9C
  loc_67A755: FLdRfVar var_88
  loc_67A758: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_67A75D: FLdRfVar var_10C
  loc_67A760: FLdRfVar var_A0
  loc_67A763: ImpAdLdRf MemVar_7520D4
  loc_67A766: NewIfNullPr Global
  loc_67A769:  = Global.App
  loc_67A76E: FLdPr var_A0
  loc_67A771:  = App.Path
  loc_67A776: FLdRfVar var_94
  loc_67A779: FLdRfVar var_90
  loc_67A77C: LitI2_Byte &HFF
  loc_67A77E: PopTmpLdAd2 var_A2
  loc_67A781: ILdRf var_10C
  loc_67A784: LitStr "\reporte.mdb"
  loc_67A787: ConcatStr
  loc_67A788: PopTmpLdAdStr
  loc_67A78C: FLdRfVar var_98
  loc_67A78F: ILdRf Tipo
  loc_67A792: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_67A797: NotI4
  loc_67A798: FFreeStr var_10C = ""
  loc_67A79F: FFree1Ad var_A0
  loc_67A7A2: BranchF loc_67A873
  loc_67A7A5: LitI4 &HD
  loc_67A7AA: ImpAdCallI2 Chr$()
  loc_67A7AF: FStStr var_144
  loc_67A7B2: FLdRfVar var_114
  loc_67A7B5: ImpAdCallI2 Err 'rtcErrObj
  loc_67A7BA: FStAdFunc var_A0
  loc_67A7BD: FLdPr var_A0
  loc_67A7C0:  = Err.Number
  loc_67A7C5: FLdRfVar var_128
  loc_67A7C8: ImpAdCallI2 Err 'rtcErrObj
  loc_67A7CD: FStAdFunc var_124
  loc_67A7D0: FLdPr var_124
  loc_67A7D3:  = Err.Description
  loc_67A7D8: LitVar_Missing var_140
  loc_67A7DB: LitVar_Missing var_108
  loc_67A7DE: ImpAdLdRf MemVar_74BF24
  loc_67A7E1: CVarRef
  loc_67A7E6: LitI4 5
  loc_67A7EB: FLdPr Me
  loc_67A7EE: MemLdStr global_396
  loc_67A7F1: FLdZeroAd var_144
  loc_67A7F4: FStStrNoPop var_10C
  loc_67A7F7: ConcatStr
  loc_67A7F8: FStStrNoPop var_110
  loc_67A7FB: LitStr "Error "
  loc_67A7FE: ConcatStr
  loc_67A7FF: FStStrNoPop var_118
  loc_67A802: ILdRf var_114
  loc_67A805: CStrI4
  loc_67A807: FStStrNoPop var_11C
  loc_67A80A: ConcatStr
  loc_67A80B: FStStrNoPop var_120
  loc_67A80E: LitStr ". "
  loc_67A811: ConcatStr
  loc_67A812: FStStrNoPop var_12C
  loc_67A815: ILdRf var_128
  loc_67A818: ConcatStr
  loc_67A819: FStStrNoPop var_130
  loc_67A81C: LitStr "."
  loc_67A81F: ConcatStr
  loc_67A820: CVarStr var_C8
  loc_67A823: ImpAdCallI2 MsgBox(, , , , )
  loc_67A828: LitI4 2
  loc_67A82D: EqI4
  loc_67A82E: FFreeStr var_10C = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_12C = "": var_128 = "": var_130 = ""
  loc_67A843: FFreeAd var_A0 = ""
  loc_67A84A: FFreeVar var_C8 = "": var_108 = ""
  loc_67A853: BranchF loc_67A870
  loc_67A856: LitI2_Byte 1
  loc_67A858: CUI1I2
  loc_67A85A: PopTmpLdAd1
  loc_67A85E: LitStr "Conversion Files Error"
  loc_67A861: FStStrCopy var_10C
  loc_67A864: FLdRfVar var_10C
  loc_67A867: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_67A86C: FFree1Str var_10C
  loc_67A86F: ExitProcHresult
  loc_67A870: Branch loc_67A75D
  loc_67A873: FLdRfVar var_10C
  loc_67A876: FLdRfVar var_A0
  loc_67A879: ImpAdLdRf MemVar_7520D4
  loc_67A87C: NewIfNullPr Global
  loc_67A87F:  = Global.App
  loc_67A884: FLdPr var_A0
  loc_67A887:  = App.Path
  loc_67A88C: FLdRfVar var_94
  loc_67A88F: FLdRfVar var_90
  loc_67A892: LitI2_Byte 0
  loc_67A894: PopTmpLdAd2 var_A2
  loc_67A897: ILdRf var_10C
  loc_67A89A: LitStr "\reporte.mdb"
  loc_67A89D: ConcatStr
  loc_67A89E: PopTmpLdAdStr
  loc_67A8A2: FLdRfVar var_9C
  loc_67A8A5: ILdRf Tipo
  loc_67A8A8: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_67A8AD: NotI4
  loc_67A8AE: FFreeStr var_10C = ""
  loc_67A8B5: FFree1Ad var_A0
  loc_67A8B8: BranchF loc_67A989
  loc_67A8BB: LitI4 &HD
  loc_67A8C0: ImpAdCallI2 Chr$()
  loc_67A8C5: FStStr var_144
  loc_67A8C8: FLdRfVar var_114
  loc_67A8CB: ImpAdCallI2 Err 'rtcErrObj
  loc_67A8D0: FStAdFunc var_A0
  loc_67A8D3: FLdPr var_A0
  loc_67A8D6:  = Err.Number
  loc_67A8DB: FLdRfVar var_128
  loc_67A8DE: ImpAdCallI2 Err 'rtcErrObj
  loc_67A8E3: FStAdFunc var_124
  loc_67A8E6: FLdPr var_124
  loc_67A8E9:  = Err.Description
  loc_67A8EE: LitVar_Missing var_140
  loc_67A8F1: LitVar_Missing var_108
  loc_67A8F4: ImpAdLdRf MemVar_74BF24
  loc_67A8F7: CVarRef
  loc_67A8FC: LitI4 5
  loc_67A901: FLdPr Me
  loc_67A904: MemLdStr global_396
  loc_67A907: FLdZeroAd var_144
  loc_67A90A: FStStrNoPop var_10C
  loc_67A90D: ConcatStr
  loc_67A90E: FStStrNoPop var_110
  loc_67A911: LitStr "Error "
  loc_67A914: ConcatStr
  loc_67A915: FStStrNoPop var_118
  loc_67A918: ILdRf var_114
  loc_67A91B: CStrI4
  loc_67A91D: FStStrNoPop var_11C
  loc_67A920: ConcatStr
  loc_67A921: FStStrNoPop var_120
  loc_67A924: LitStr ". "
  loc_67A927: ConcatStr
  loc_67A928: FStStrNoPop var_12C
  loc_67A92B: ILdRf var_128
  loc_67A92E: ConcatStr
  loc_67A92F: FStStrNoPop var_130
  loc_67A932: LitStr "."
  loc_67A935: ConcatStr
  loc_67A936: CVarStr var_C8
  loc_67A939: ImpAdCallI2 MsgBox(, , , , )
  loc_67A93E: LitI4 2
  loc_67A943: EqI4
  loc_67A944: FFreeStr var_10C = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_12C = "": var_128 = "": var_130 = ""
  loc_67A959: FFreeAd var_A0 = ""
  loc_67A960: FFreeVar var_C8 = "": var_108 = ""
  loc_67A969: BranchF loc_67A986
  loc_67A96C: LitI2_Byte 1
  loc_67A96E: CUI1I2
  loc_67A970: PopTmpLdAd1
  loc_67A974: LitStr "Conversion Files Error"
  loc_67A977: FStStrCopy var_10C
  loc_67A97A: FLdRfVar var_10C
  loc_67A97D: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_67A982: FFree1Str var_10C
  loc_67A985: ExitProcHresult
  loc_67A986: Branch loc_67A873
  loc_67A989: LitVarI4
  loc_67A991: PopAdLdVar
  loc_67A992: ImpAdLdRf MemVar_74C760
  loc_67A995: NewIfNullPr Formx
  loc_67A998: VCallAd Control_ID_CrystalReport1
  loc_67A99B: FStAdFunc var_A0
  loc_67A99E: FLdPr var_A0
  loc_67A9A1: LateIdSt
  loc_67A9A6: FFree1Ad var_A0
  loc_67A9A9: LitVarI2 var_B4, 1
  loc_67A9AE: PopAdLdVar
  loc_67A9AF: ImpAdLdRf MemVar_74C760
  loc_67A9B2: NewIfNullPr Formx
  loc_67A9B5: VCallAd Control_ID_CrystalReport1
  loc_67A9B8: FStAdFunc var_A0
  loc_67A9BB: FLdPr var_A0
  loc_67A9BE: LateIdSt
  loc_67A9C3: FFree1Ad var_A0
  loc_67A9C6: FLdRfVar var_10C
  loc_67A9C9: FLdRfVar var_A0
  loc_67A9CC: ImpAdLdRf MemVar_7520D4
  loc_67A9CF: NewIfNullPr Global
  loc_67A9D2:  = Global.App
  loc_67A9D7: FLdPr var_A0
  loc_67A9DA:  = App.Path
  loc_67A9DF: ILdRf var_10C
  loc_67A9E2: LitStr "\"
  loc_67A9E5: ConcatStr
  loc_67A9E6: CVarStr var_108
  loc_67A9E9: FLdRfVar var_C8
  loc_67A9EC: ImpAdCallFPR4  = Proc_101_19_61BD94()
  loc_67A9F1: FLdRfVar var_C8
  loc_67A9F4: ConcatVar var_140
  loc_67A9F8: CStrVarTmp
  loc_67A9F9: CVarStr var_154
  loc_67A9FC: PopAdLdVar
  loc_67A9FD: ImpAdLdRf MemVar_74C760
  loc_67AA00: NewIfNullPr Formx
  loc_67AA03: VCallAd Control_ID_CrystalReport1
  loc_67AA06: FStAdFunc var_124
  loc_67AA09: FLdPr var_124
  loc_67AA0C: LateIdSt
  loc_67AA11: FFree1Str var_10C
  loc_67AA14: FFreeAd var_A0 = ""
  loc_67AA1B: FFreeVar var_108 = "": var_C8 = "": var_140 = ""
  loc_67AA26: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_67AA2B: ExitProcHresult
  loc_67AA2C: FLdRfVar var_114
  loc_67AA2F: ImpAdCallI2 Err 'rtcErrObj
  loc_67AA34: FStAdFunc var_A0
  loc_67AA37: FLdPr var_A0
  loc_67AA3A:  = Formx.Number
  loc_67AA3F: ILdRf var_114
  loc_67AA42: FStR4 var_158
  loc_67AA45: FFree1Ad var_A0
  loc_67AA48: ILdRf var_158
  loc_67AA4B: LitI4 &H501B
  loc_67AA50: EqI4
  loc_67AA51: BranchF loc_67AA7E
  loc_67AA54: LitVar_Missing var_140
  loc_67AA57: LitVar_Missing var_108
  loc_67AA5A: LitVar_Missing var_C8
  loc_67AA5D: LitI4 1
  loc_67AA62: FLdPr Me
  loc_67AA65: MemLdRfVar from_stack_1.global_400
  loc_67AA68: CVarRef
  loc_67AA6D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67AA72: FFreeVar var_C8 = "": var_108 = ""
  loc_67AA7B: Branch loc_67AAB1
  loc_67AA7E: ILdRf var_158
  loc_67AA81: LitI4 &H5028
  loc_67AA86: EqI4
  loc_67AA87: BranchF loc_67AAB1
  loc_67AA8A: LitVar_Missing var_140
  loc_67AA8D: LitVar_Missing var_108
  loc_67AA90: LitVar_Missing var_C8
  loc_67AA93: LitI4 1
  loc_67AA98: FLdPr Me
  loc_67AA9B: MemLdRfVar from_stack_1.global_404
  loc_67AA9E: CVarRef
  loc_67AAA3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67AAA8: FFreeVar var_C8 = "": var_108 = ""
  loc_67AAB1: ExitProcHresult
  loc_67AAB2: MemLdPr global_-8961
End Sub

Public Sub ActualizarEstadisticas() '680D18
  'Data Table: 45B254
  loc_680834: ImpAdLdI4 MemVar_74BEBC
  loc_680837: FLdPrThis
  loc_680838: VCallAd Control_ID_Label2
  loc_68083B: FStAdFunc var_19F8
  loc_68083E: FLdPr var_19F8
  loc_680841: Me.Caption = from_stack_1
  loc_680846: FFree1Ad var_19F8
  loc_680849: FLdRfVar var_1A08
  loc_68084C: FLdRfVar var_88
  loc_68084F: FLdRfVar var_19F8
  loc_680852: ImpAdLdRf MemVar_74C760
  loc_680855: NewIfNullPr Formx
  loc_680858: from_stack_1v = Formx.global_4589716Get()
  loc_68085D: FLdPr var_19F8
  loc_680860:  = Formx.ScaleHeight
  loc_680865: FLdRfVar var_1A08
  loc_680868: NotVar var_1A18
  loc_68086C: CBoolVarNull
  loc_68086E: FFree1Ad var_19F8
  loc_680871: FFree1Var var_1A08 = ""
  loc_680874: BranchF loc_6808A3
  loc_680877: FLdRfVar var_1A08
  loc_68087A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68087F: FLdRfVar var_1A08
  loc_680882: CBoolVarNull
  loc_680884: FFree1Var var_1A08 = ""
  loc_680887: BranchF loc_6808A0
  loc_68088A: ILdRf Me
  loc_68088D: FStAdNoPop
  loc_680891: ImpAdLdRf MemVar_7520D4
  loc_680894: NewIfNullPr Global
  loc_680897: Global.Unload from_stack_1
  loc_68089C: FFree1Ad var_19F8
  loc_68089F: ExitProcHresult
  loc_6808A0: Branch loc_680849
  loc_6808A3: LitI4 1
  loc_6808A8: FStR4 var_19F4
  loc_6808AB: LitVarI2 var_1A08, 2
  loc_6808B0: ILdRf var_19F4
  loc_6808B3: FLdRfVar var_88
  loc_6808B6: CVarRef
  loc_6808BB: FLdRfVar var_1A18
  loc_6808BE: ImpAdCallFPR4  = Mid(, , )
  loc_6808C3: FLdRfVar var_1A18
  loc_6808C6: FnCByteVar
  loc_6808C8: FStUI1 var_8C
  loc_6808CC: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_6808D5: LitI4 3
  loc_6808DA: FStR4 var_19F4
  loc_6808DD: LitI2_Byte 1
  loc_6808DF: FLdRfVar var_19EE
  loc_6808E2: LitI2_Byte &HA
  loc_6808E4: ForI2 var_1A3C
  loc_6808EA: LitVarI2 var_1A08, 8
  loc_6808EF: ILdRf var_19F4
  loc_6808F2: FLdRfVar var_88
  loc_6808F5: CVarRef
  loc_6808FA: FLdRfVar var_1A18
  loc_6808FD: ImpAdCallFPR4  = Mid(, , )
  loc_680902: FLdRfVar var_1A18
  loc_680905: FnCCurVar
  loc_680907: CR8Cy
  loc_680908: LitI2_Byte &H64
  loc_68090A: CR8I2
  loc_68090B: DivR8
  loc_68090C: CCyR4
  loc_68090D: FLdI2 var_19EE
  loc_680910: CI4UI1
  loc_680911: FLdRfVar var_199C
  loc_680914: AryInRecLdPr
  loc_68091A: MemStR8 global_0
  loc_68091D: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_680926: LitVarI2 var_1A08, 8
  loc_68092B: ILdRf var_19F4
  loc_68092E: LitI4 8
  loc_680933: AddI4
  loc_680934: FLdRfVar var_88
  loc_680937: CVarRef
  loc_68093C: FLdRfVar var_1A18
  loc_68093F: ImpAdCallFPR4  = Mid(, , )
  loc_680944: FLdRfVar var_1A18
  loc_680947: FnCCurVar
  loc_680949: CR8Cy
  loc_68094A: ImpAdLdFPR4 MemVar_74C2E0
  loc_68094D: DivR8
  loc_68094E: CCyR4
  loc_68094F: FLdI2 var_19EE
  loc_680952: CI4UI1
  loc_680953: FLdRfVar var_19EC
  loc_680956: AryInRecLdPr
  loc_68095C: MemStR8 global_0
  loc_68095F: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_680968: ILdRf var_19F4
  loc_68096B: LitI4 &H10
  loc_680970: AddI4
  loc_680971: FStR4 var_19F4
  loc_680974: FLdRfVar var_19EE
  loc_680977: NextI2 var_1A3C, loc_6808EA
  loc_68097C: LitI2_Byte 1
  loc_68097E: FLdRfVar var_19EE
  loc_680981: LitI2_Byte &H18
  loc_680983: ForI2 var_1A40
  loc_680989: LitI2_Byte 1
  loc_68098B: FLdRfVar var_19F0
  loc_68098E: LitI2_Byte &HB
  loc_680990: ForI2 var_1A44
  loc_680996: LitVarI2 var_1A08, 8
  loc_68099B: ILdRf var_19F4
  loc_68099E: FLdRfVar var_88
  loc_6809A1: CVarRef
  loc_6809A6: FLdRfVar var_1A18
  loc_6809A9: ImpAdCallFPR4  = Mid(, , )
  loc_6809AE: FLdRfVar var_1A18
  loc_6809B1: FnCCurVar
  loc_6809B3: CR8Cy
  loc_6809B4: LitI2_Byte &H64
  loc_6809B6: CR8I2
  loc_6809B7: DivR8
  loc_6809B8: CCyR4
  loc_6809B9: FLdI2 var_19F0
  loc_6809BC: CI4UI1
  loc_6809BD: FLdI2 var_19EE
  loc_6809C0: CI4UI1
  loc_6809C1: FLdRfVar var_194C
  loc_6809C4: AryInRecLdPr
  loc_6809CA: MemLdRfVar from_stack_1.global_0
  loc_6809CD: AryInRecLdPr
  loc_6809D3: MemStR8 global_0
  loc_6809D6: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_6809DF: LitVarI2 var_1A08, 8
  loc_6809E4: ILdRf var_19F4
  loc_6809E7: LitI4 8
  loc_6809EC: AddI4
  loc_6809ED: FLdRfVar var_88
  loc_6809F0: CVarRef
  loc_6809F5: FLdRfVar var_1A18
  loc_6809F8: ImpAdCallFPR4  = Mid(, , )
  loc_6809FD: FLdRfVar var_1A18
  loc_680A00: FnCCurVar
  loc_680A02: CR8Cy
  loc_680A03: ImpAdLdFPR4 MemVar_74C2E0
  loc_680A06: DivR8
  loc_680A07: CCyR4
  loc_680A08: FLdI2 var_19F0
  loc_680A0B: CI4UI1
  loc_680A0C: FLdI2 var_19EE
  loc_680A0F: CI4UI1
  loc_680A10: FLdRfVar var_194C
  loc_680A13: AryInRecLdPr
  loc_680A19: MemLdRfVar from_stack_1.sID_Turno_CEM
  loc_680A1C: AryInRecLdPr
  loc_680A22: MemStR8 global_0
  loc_680A25: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_680A2E: ILdRf var_19F4
  loc_680A31: LitI4 &H10
  loc_680A36: AddI4
  loc_680A37: FStR4 var_19F4
  loc_680A3A: FLdRfVar var_19F0
  loc_680A3D: NextI2 var_1A44, loc_680996
  loc_680A42: FLdRfVar var_19EE
  loc_680A45: NextI2 var_1A40, loc_680989
  loc_680A4A: ImpAdLdRf MemVar_74D8B0
  loc_680A4D: NewIfNullPr Consola
  loc_680A50: VCallAd Control_ID_LitrosHorarios
  loc_680A53: FStAdFunc var_1A48
  loc_680A56: LitVarI2 var_1A28, 1
  loc_680A5B: PopAdLdVar
  loc_680A5C: FLdPr var_1A48
  loc_680A5F: LateIdSt
  loc_680A64: LitVarI2 var_1A28, 24
  loc_680A69: PopAdLdVar
  loc_680A6A: FLdPr var_1A48
  loc_680A6D: LateIdSt
  loc_680A72: LitVarI2 var_1A28, 1
  loc_680A77: PopAdLdVar
  loc_680A78: FLdPr var_1A48
  loc_680A7B: LateIdSt
  loc_680A80: LitI2_Byte 1
  loc_680A82: FLdRfVar var_19EE
  loc_680A85: LitI2_Byte &H18
  loc_680A87: ForI2 var_1A4C
  loc_680A8D: FLdRfVar var_19EE
  loc_680A90: CDargRef
  loc_680A94: FLdPr var_1A48
  loc_680A97: LateIdSt
  loc_680A9C: FLdUI1
  loc_680AA0: CI2UI1
  loc_680AA2: FLdI2 var_19EE
  loc_680AA5: AddI2
  loc_680AA6: LitI2_Byte 1
  loc_680AA8: SubI2
  loc_680AA9: LitI2_Byte &H18
  loc_680AAB: ModI2
  loc_680AAC: CStrUI1
  loc_680AAE: CVarStr var_1A08
  loc_680AB1: PopAdLdVar
  loc_680AB2: FLdPr var_1A48
  loc_680AB5: LateIdSt
  loc_680ABA: FFree1Var var_1A08 = ""
  loc_680ABD: LitI4 &HB
  loc_680AC2: FLdI2 var_19EE
  loc_680AC5: CI4UI1
  loc_680AC6: FLdRfVar var_194C
  loc_680AC9: AryInRecLdPr
  loc_680ACF: MemLdRfVar from_stack_1.global_0
  loc_680AD2: AryInRecLdPr
  loc_680AD8: MemLdR8 global_0
  loc_680ADB: CStrCy
  loc_680ADD: CVarStr var_1A08
  loc_680AE0: PopAdLdVar
  loc_680AE1: FLdPr var_1A48
  loc_680AE4: LateIdSt
  loc_680AE9: FFree1Var var_1A08 = ""
  loc_680AEC: FLdRfVar var_19EE
  loc_680AEF: NextI2 var_1A4C, loc_680A8D
  loc_680AF4: LitNothing
  loc_680AF6: FStAd var_1A48 
  loc_680AFA: FLdRfVar var_1A08
  loc_680AFD: ImpAdCallFPR4  = Date
  loc_680B02: LitI4 1
  loc_680B07: LitI4 1
  loc_680B0C: LitVarStr var_1A38, "yyyymmdd"
  loc_680B11: FStVarCopyObj var_1A90
  loc_680B14: FLdRfVar var_1A90
  loc_680B17: FLdRfVar var_1A08
  loc_680B1A: LitVarI2 var_1A28, 1
  loc_680B1F: SubVar var_1A18
  loc_680B23: FStVar var_1A80
  loc_680B27: FLdRfVar var_1A80
  loc_680B2A: FLdRfVar var_1AA0
  loc_680B2D: ImpAdCallFPR4  = Format(, )
  loc_680B32: FLdRfVar var_1AA0
  loc_680B35: FStVar var_1A5C
  loc_680B39: FFreeVar var_1A08 = "": var_1A80 = ""
  loc_680B42: FLdRfVar var_1A08
  loc_680B45: ImpAdCallFPR4  = Date
  loc_680B4A: LitI4 1
  loc_680B4F: LitI4 1
  loc_680B54: LitVarStr var_1A28, "yyyymmdd"
  loc_680B59: FStVarCopyObj var_1A18
  loc_680B5C: FLdRfVar var_1A18
  loc_680B5F: FLdRfVar var_1A08
  loc_680B62: FLdRfVar var_1A80
  loc_680B65: ImpAdCallFPR4  = Format(, )
  loc_680B6A: FLdRfVar var_1A80
  loc_680B6D: FStVar var_1A6C
  loc_680B71: FFreeVar var_1A08 = ""
  loc_680B78: FLdRfVar var_1A08
  loc_680B7B: ImpAdCallFPR4  = Time
  loc_680B80: LitI4 1
  loc_680B85: LitI4 1
  loc_680B8A: LitVarStr var_1A28, "hhmmss"
  loc_680B8F: FStVarCopyObj var_1A18
  loc_680B92: FLdRfVar var_1A18
  loc_680B95: FLdRfVar var_1A08
  loc_680B98: FLdRfVar var_1A80
  loc_680B9B: ImpAdCallFPR4  = Format(, )
  loc_680BA0: FLdRfVar var_1A80
  loc_680BA3: CStrVarTmp
  loc_680BA4: FStStr var_1A70
  loc_680BA7: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_680BB0: LitStr "11111111111111111111111111111111"
  loc_680BB3: LitI2_Byte 0
  loc_680BB5: FLdRfVar var_1A6C
  loc_680BB8: ILdRf var_1A70
  loc_680BBB: CVarStr var_1A38
  loc_680BBE: ConcatVar var_1A18
  loc_680BC2: CStrVarVal var_1AA8
  loc_680BC6: FLdRfVar var_1A5C
  loc_680BC9: ILdRf var_1A70
  loc_680BCC: CVarStr var_1A28
  loc_680BCF: ConcatVar var_1A08
  loc_680BD3: CStrVarVal var_1AA4
  loc_680BD7: ImpAdCallFPR4 Proc_158_14_615544(, , , )
  loc_680BDC: FFreeStr var_1AA4 = ""
  loc_680BE3: FFreeVar var_1A08 = ""
  loc_680BEA: ImpAdLdRf MemVar_74D8B0
  loc_680BED: NewIfNullPr Consola
  loc_680BF0: VCallAd Control_ID_PorProducto
  loc_680BF3: FStAdFunc var_1AAC
  loc_680BF6: FLdRfVar var_1AB0
  loc_680BF9: ImpAdLdRf MemVar_74A220
  loc_680BFC: NewIfNullPr clsProducts
  loc_680BFF: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_680C04: FLdI2 var_1AB0
  loc_680C07: CVarI2 var_1A28
  loc_680C0A: PopAdLdVar
  loc_680C0B: FLdPr var_1AAC
  loc_680C0E: LateIdSt
  loc_680C13: LitVarI2 var_1A28, 1
  loc_680C18: PopAdLdVar
  loc_680C19: FLdPr var_1AAC
  loc_680C1C: LateIdSt
  loc_680C21: LitVarI2 var_1A28, 1
  loc_680C26: PopAdLdVar
  loc_680C27: FLdPr var_1AAC
  loc_680C2A: LateIdSt
  loc_680C2F: LitI2_Byte 1
  loc_680C31: CUI1I2
  loc_680C33: FStUI1 var_1AAE
  loc_680C37: LitI2_Byte 1
  loc_680C39: FLdRfVar var_19EE
  loc_680C3C: FLdRfVar var_1AB0
  loc_680C3F: ImpAdLdRf MemVar_74A220
  loc_680C42: NewIfNullPr clsProducts
  loc_680C45: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_680C4A: FLdI2 var_1AB0
  loc_680C4D: ForI2 var_1AB4
  loc_680C53: FLdRfVar var_1AB0
  loc_680C56: FLdI2 var_19EE
  loc_680C59: ImpAdLdRf MemVar_74A220
  loc_680C5C: NewIfNullPr clsProducts
  loc_680C5F:  = clsProducts.hWnd
  loc_680C64: FLdI2 var_1AB0
  loc_680C67: LitI2_Byte 0
  loc_680C69: EqI2
  loc_680C6A: BranchF loc_680CEA
  loc_680C6D: FLdUI1
  loc_680C71: CI2UI1
  loc_680C73: CVarI2 var_1A28
  loc_680C76: PopAdLdVar
  loc_680C77: FLdPr var_1AAC
  loc_680C7A: LateIdSt
  loc_680C7F: FLdI2 var_19EE
  loc_680C82: CI4UI1
  loc_680C83: ImpAdLdRf MemVar_74C6FC
  loc_680C86: Ary1LdPr
  loc_680C87: MemLdFPR8 global_8
  loc_680C8A: CStrR8
  loc_680C8C: CVarStr var_1A08
  loc_680C8F: PopAdLdVar
  loc_680C90: FLdPr var_1AAC
  loc_680C93: LateIdSt
  loc_680C98: FFree1Var var_1A08 = ""
  loc_680C9B: FLdRfVar var_1AA4
  loc_680C9E: FLdI2 var_19EE
  loc_680CA1: ImpAdLdRf MemVar_74A220
  loc_680CA4: NewIfNullPr clsProducts
  loc_680CAC: LitI4 &HB
  loc_680CB1: FLdZeroAd var_1AA4
  loc_680CB4: CVarStr var_1A08
  loc_680CB7: FLdRfVar var_1A18
  loc_680CBA: ImpAdCallFPR4  = Left(, )
  loc_680CBF: FLdRfVar var_1A18
  loc_680CC2: CStrVarTmp
  loc_680CC3: CVarStr var_1A80
  loc_680CC6: PopAdLdVar
  loc_680CC7: FLdPr var_1AAC
  loc_680CCA: LateIdSt
  loc_680CCF: FFreeVar var_1A08 = "": var_1A18 = ""
  loc_680CD8: FLdUI1
  loc_680CDC: CI2UI1
  loc_680CDE: LitI2_Byte 1
  loc_680CE0: AddI2
  loc_680CE1: CUI1I2
  loc_680CE3: FStUI1 var_1AAE
  loc_680CE7: Branch loc_680D07
  loc_680CEA: FLdPr var_1AAC
  loc_680CED: LateIdLdVar var_1A08 DispID_5 0
  loc_680CF4: CI2Var
  loc_680CF5: LitI2_Byte 1
  loc_680CF7: SubI2
  loc_680CF8: CVarI2 var_1A28
  loc_680CFB: PopAdLdVar
  loc_680CFC: FLdPr var_1AAC
  loc_680CFF: LateIdSt
  loc_680D04: FFree1Var var_1A08 = ""
  loc_680D07: FLdRfVar var_19EE
  loc_680D0A: NextI2 var_1AB4, loc_680C53
  loc_680D0F: LitNothing
  loc_680D11: FStAd var_1AAC 
  loc_680D15: ExitProcHresult
  loc_680D16: FLdPr var_23CC
End Sub

Private Function Proc_161_121_608CE8() '608CE8
  'Data Table: 45B254
  loc_608C00: LitI2_Byte 0
  loc_608C02: FLdPr Me
  loc_608C05: MemStI2 global_512
  loc_608C08: LitVarI4
  loc_608C10: PopAdLdVar
  loc_608C11: FLdPrThis
  loc_608C12: VCallAd Control_ID_SSTanqueLleno
  loc_608C15: FStAdFunc var_98
  loc_608C18: FLdPr var_98
  loc_608C1B: LateIdSt
  loc_608C20: FFree1Ad var_98
  loc_608C23: LitVarI4
  loc_608C2B: PopAdLdVar
  loc_608C2C: FLdRfVar var_9C
  loc_608C2F: LitI2_Byte &HC
  loc_608C31: FLdPrThis
  loc_608C32: VCallAd Control_ID_SSCommand4
  loc_608C35: FStAdFunc var_98
  loc_608C38: FLdPr var_98
  loc_608C3B: Set from_stack_2 = Me(from_stack_1)
  loc_608C40: FLdPr var_9C
  loc_608C43: LateIdSt
  loc_608C48: FFreeAd var_98 = ""
  loc_608C4F: LitVarI4
  loc_608C57: PopAdLdVar
  loc_608C58: FLdPrThis
  loc_608C59: VCallAd Control_ID_cmdReenviar
  loc_608C5C: FStAdFunc var_98
  loc_608C5F: FLdPr var_98
  loc_608C62: LateIdSt
  loc_608C67: FFree1Ad var_98
  loc_608C6A: FLdRfVar var_A0
  loc_608C6D: from_stack_1v = Proc_161_123_5EF6FC()
  loc_608C72: FLdZeroAd var_A0
  loc_608C75: CVarStr var_B0
  loc_608C78: PopAdLdVar
  loc_608C79: FLdPrThis
  loc_608C7A: VCallAd Control_ID_SSTanqueLleno
  loc_608C7D: FStAdFunc var_98
  loc_608C80: FLdPr var_98
  loc_608C83: LateIdSt
  loc_608C88: FFree1Ad var_98
  loc_608C8B: FFree1Var var_B0 = ""
  loc_608C8E: FLdRfVar var_A0
  loc_608C91: from_stack_1v = Proc_161_123_5EF6FC()
  loc_608C96: FLdZeroAd var_A0
  loc_608C99: CVarStr var_B0
  loc_608C9C: PopAdLdVar
  loc_608C9D: FLdRfVar var_9C
  loc_608CA0: LitI2_Byte &HC
  loc_608CA2: FLdPrThis
  loc_608CA3: VCallAd Control_ID_SSCommand4
  loc_608CA6: FStAdFunc var_98
  loc_608CA9: FLdPr var_98
  loc_608CAC: Set from_stack_2 = Me(from_stack_1)
  loc_608CB1: FLdPr var_9C
  loc_608CB4: LateIdSt
  loc_608CB9: FFreeAd var_98 = ""
  loc_608CC0: FFree1Var var_B0 = ""
  loc_608CC3: FLdRfVar var_A0
  loc_608CC6: from_stack_1v = Proc_161_123_5EF6FC()
  loc_608CCB: FLdZeroAd var_A0
  loc_608CCE: CVarStr var_B0
  loc_608CD1: PopAdLdVar
  loc_608CD2: FLdPrThis
  loc_608CD3: VCallAd Control_ID_cmdReenviar
  loc_608CD6: FStAdFunc var_98
  loc_608CD9: FLdPr var_98
  loc_608CDC: LateIdSt
  loc_608CE1: FFree1Ad var_98
  loc_608CE4: FFree1Var var_B0 = ""
  loc_608CE7: ExitProcHresult
End Function

Private Function Proc_161_122_5F7640() '5F7640
  'Data Table: 45B254
  loc_5F757C: LitI2_Byte &HFF
  loc_5F757E: FLdPr Me
  loc_5F7581: MemStI2 global_512
  loc_5F7584: LitVarI4
  loc_5F758C: PopAdLdVar
  loc_5F758D: FLdPrThis
  loc_5F758E: VCallAd Control_ID_SSTanqueLleno
  loc_5F7591: FStAdFunc var_98
  loc_5F7594: FLdPr var_98
  loc_5F7597: LateIdSt
  loc_5F759C: FFree1Ad var_98
  loc_5F759F: LitVarI4
  loc_5F75A7: PopAdLdVar
  loc_5F75A8: FLdRfVar var_9C
  loc_5F75AB: LitI2_Byte &HC
  loc_5F75AD: FLdPrThis
  loc_5F75AE: VCallAd Control_ID_SSCommand4
  loc_5F75B1: FStAdFunc var_98
  loc_5F75B4: FLdPr var_98
  loc_5F75B7: Set from_stack_2 = Me(from_stack_1)
  loc_5F75BC: FLdPr var_9C
  loc_5F75BF: LateIdSt
  loc_5F75C4: FFreeAd var_98 = ""
  loc_5F75CB: LitVarI4
  loc_5F75D3: PopAdLdVar
  loc_5F75D4: FLdPrThis
  loc_5F75D5: VCallAd Control_ID_cmdReenviar
  loc_5F75D8: FStAdFunc var_98
  loc_5F75DB: FLdPr var_98
  loc_5F75DE: LateIdSt
  loc_5F75E3: FFree1Ad var_98
  loc_5F75E6: LitVarStr var_94, vbNullString
  loc_5F75EB: PopAdLdVar
  loc_5F75EC: FLdPrThis
  loc_5F75ED: VCallAd Control_ID_SSTanqueLleno
  loc_5F75F0: FStAdFunc var_98
  loc_5F75F3: FLdPr var_98
  loc_5F75F6: LateIdSt
  loc_5F75FB: FFree1Ad var_98
  loc_5F75FE: LitVarStr var_94, vbNullString
  loc_5F7603: PopAdLdVar
  loc_5F7604: FLdRfVar var_9C
  loc_5F7607: LitI2_Byte &HC
  loc_5F7609: FLdPrThis
  loc_5F760A: VCallAd Control_ID_SSCommand4
  loc_5F760D: FStAdFunc var_98
  loc_5F7610: FLdPr var_98
  loc_5F7613: Set from_stack_2 = Me(from_stack_1)
  loc_5F7618: FLdPr var_9C
  loc_5F761B: LateIdSt
  loc_5F7620: FFreeAd var_98 = ""
  loc_5F7627: LitVarStr var_94, vbNullString
  loc_5F762C: PopAdLdVar
  loc_5F762D: FLdPrThis
  loc_5F762E: VCallAd Control_ID_cmdReenviar
  loc_5F7631: FStAdFunc var_98
  loc_5F7634: FLdPr var_98
  loc_5F7637: LateIdSt
  loc_5F763C: FFree1Ad var_98
  loc_5F763F: ExitProcHresult
End Function

Private Function Proc_161_123_5EF6FC() '5EF6FC
  'Data Table: 45B254
  loc_5EF690: ZeroRetVal
  loc_5EF692: FLdRfVar var_1D8
  loc_5EF695: LitVar_Missing var_1D4
  loc_5EF698: LitVar_Missing var_1B4
  loc_5EF69B: LitVar_Missing var_194
  loc_5EF69E: LitVar_Missing var_174
  loc_5EF6A1: LitVar_Missing var_154
  loc_5EF6A4: LitVar_Missing var_134
  loc_5EF6A7: LitVar_Missing var_114
  loc_5EF6AA: LitVar_Missing var_F4
  loc_5EF6AD: LitVar_Missing var_D4
  loc_5EF6B0: LitVar_Missing var_B4
  loc_5EF6B3: LitStr "El surtidor no se encuentra disponible "
  loc_5EF6B6: LitStr "en este momento para recibir un preset. Intente luego por favor."
  loc_5EF6B9: ConcatStr
  loc_5EF6BA: PopTmpLdAdStr
  loc_5EF6BE: LitI4 &H58
  loc_5EF6C3: PopTmpLdAdStr var_90
  loc_5EF6C6: LitI2_Byte 1
  loc_5EF6C8: PopTmpLdAd2 var_8A
  loc_5EF6CB: ImpAdLdRf MemVar_74C7D0
  loc_5EF6CE: NewIfNullPr clsMsg
  loc_5EF6D1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_5EF6D6: FLdZeroAd var_1D8
  loc_5EF6D9: FStStr var_88
  loc_5EF6DC: FFree1Str var_94
  loc_5EF6DF: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_5EF6F6: ExitProcCbHresult
End Function

Private Function Proc_161_124_5F0A28() '5F0A28
  'Data Table: 45B254
  loc_5F0984: FLdPr Me
  loc_5F0987: MemLdUI1 Surtidor_Actual
  loc_5F098B: CI4UI1
  loc_5F098C: ImpAdLdRf MemVar_74C004
  loc_5F098F: Ary1LdPr
  loc_5F0990: MemLdUI1 global_43
  loc_5F0994: FStUI1 var_86
  loc_5F0998: FLdUI1
  loc_5F099C: LitI2_Byte 1
  loc_5F099E: EqI2
  loc_5F099F: BranchT loc_5F09D8
  loc_5F09A2: FLdUI1
  loc_5F09A6: LitI2 192
  loc_5F09A9: EqI2
  loc_5F09AA: BranchT loc_5F09D8
  loc_5F09AD: FLdUI1
  loc_5F09B1: LitI2_Byte &H10
  loc_5F09B3: EqI2
  loc_5F09B4: BranchT loc_5F09D8
  loc_5F09B7: FLdUI1
  loc_5F09BB: LitI2 176
  loc_5F09BE: EqI2
  loc_5F09BF: BranchT loc_5F09D8
  loc_5F09C2: FLdUI1
  loc_5F09C6: LitI2 144
  loc_5F09C9: EqI2
  loc_5F09CA: BranchT loc_5F09D8
  loc_5F09CD: FLdUI1
  loc_5F09D1: LitI2 128
  loc_5F09D4: EqI2
  loc_5F09D5: BranchF loc_5F09F1
  loc_5F09D8: from_stack_1v = Proc_161_121_608CE8()
  loc_5F09DD: LitI2_Byte 0
  loc_5F09DF: FLdPr Me
  loc_5F09E2: MemLdUI1 Surtidor_Actual
  loc_5F09E6: CI4UI1
  loc_5F09E7: FLdPr Me
  loc_5F09EA: MemLdRfVar from_stack_1.global_204
  loc_5F09ED: Ary1StI2
  loc_5F09EE: Branch loc_5F0A27
  loc_5F09F1: FLdUI1
  loc_5F09F5: LitI2_Byte &H60
  loc_5F09F7: EqI2
  loc_5F09F8: BranchT loc_5F0A05
  loc_5F09FB: FLdUI1
  loc_5F09FF: LitI2_Byte &H70
  loc_5F0A01: EqI2
  loc_5F0A02: BranchF loc_5F0A27
  loc_5F0A05: FLdPr Me
  loc_5F0A08: MemLdUI1 Surtidor_Actual
  loc_5F0A0C: CI4UI1
  loc_5F0A0D: FLdPr Me
  loc_5F0A10: MemLdRfVar from_stack_1.global_204
  loc_5F0A13: Ary1LdI2
  loc_5F0A14: BranchF loc_5F0A1F
  loc_5F0A17: from_stack_1v = Proc_161_121_608CE8()
  loc_5F0A1C: Branch loc_5F0A24
  loc_5F0A1F: from_stack_1v = Proc_161_122_5F7640()
  loc_5F0A24: Branch loc_5F0A27
  loc_5F0A27: ExitProcHresult
End Function

Private Function Proc_161_125_692DB4() '692DB4
  'Data Table: 45B254
  loc_6927A8: ImpAdLdUI1
  loc_6927AC: CI2UI1
  loc_6927AE: LitI2_Byte &H10
  loc_6927B0: GtI2
  loc_6927B1: BranchF loc_6927BF
  loc_6927B4: LitI2_Byte &HFF
  loc_6927B6: FLdPr Me
  loc_6927B9: MemStI2 global_100
  loc_6927BC: Branch loc_6927C7
  loc_6927BF: LitI2_Byte 0
  loc_6927C1: FLdPr Me
  loc_6927C4: MemStI2 global_100
  loc_6927C7: ImpAdLdUI1
  loc_6927CB: CI2UI1
  loc_6927CD: LitI2_Byte &H10
  loc_6927CF: LeI2
  loc_6927D0: BranchF loc_6927EC
  loc_6927D3: LitI2_Byte 1
  loc_6927D5: CUI1I2
  loc_6927D7: FLdPr Me
  loc_6927DA: MemStUI1
  loc_6927DE: ImpAdLdUI1
  loc_6927E2: FLdPr Me
  loc_6927E5: MemStUI1
  loc_6927E9: Branch loc_692840
  loc_6927EC: FLdPr Me
  loc_6927EF: MemLdUI1 offset
  loc_6927F3: CI2UI1
  loc_6927F5: LitI2_Byte 0
  loc_6927F7: EqI2
  loc_6927F8: BranchF loc_69281F
  loc_6927FB: LitI2_Byte 1
  loc_6927FD: CUI1I2
  loc_6927FF: FLdPr Me
  loc_692802: MemStUI1
  loc_692806: LitI2_Byte &H10
  loc_692808: CUI1I2
  loc_69280A: FLdPr Me
  loc_69280D: MemStUI1
  loc_692811: LitI2_Byte 1
  loc_692813: CUI1I2
  loc_692815: FLdPr Me
  loc_692818: MemStUI1
  loc_69281C: Branch loc_692840
  loc_69281F: LitI2_Byte &H11
  loc_692821: CUI1I2
  loc_692823: FLdPr Me
  loc_692826: MemStUI1
  loc_69282A: LitI2_Byte &H11
  loc_69282C: CUI1I2
  loc_69282E: FLdPr Me
  loc_692831: MemStUI1
  loc_692835: ImpAdLdUI1
  loc_692839: FLdPr Me
  loc_69283C: MemStUI1
  loc_692840: FLdPr Me
  loc_692843: MemLdI2 global_100
  loc_692846: BranchF loc_692AE5
  loc_692849: FLdPr Me
  loc_69284C: MemLdUI1 offset
  loc_692850: CI2UI1
  loc_692852: LitI2_Byte 0
  loc_692854: EqI2
  loc_692855: BranchF loc_692936
  loc_692858: LitI2_Byte 1
  loc_69285A: CUI1I2
  loc_69285C: FLdRfVar var_86
  loc_69285F: LitI2_Byte &H10
  loc_692861: CUI1I2
  loc_692863: ForUI1 var_90
  loc_692869: LitVar_TRUE var_A8
  loc_69286C: PopAdLdVar
  loc_69286D: FLdRfVar var_98
  loc_692870: FLdUI1
  loc_692874: CI2UI1
  loc_692876: FLdPrThis
  loc_692877: VCallAd Control_ID_Animation1
  loc_69287A: FStAdFunc var_94
  loc_69287D: FLdPr var_94
  loc_692880: Set from_stack_2 = Me(from_stack_1)
  loc_692885: FLdPr var_98
  loc_692888: LateIdSt
  loc_69288D: FFreeAd var_94 = ""
  loc_692894: LitI2_Byte &HFF
  loc_692896: FLdRfVar var_98
  loc_692899: FLdUI1
  loc_69289D: CI2UI1
  loc_69289F: FLdPrThis
  loc_6928A0: VCallAd Control_ID_Nro_Surtidor
  loc_6928A3: FStAdFunc var_94
  loc_6928A6: FLdPr var_94
  loc_6928A9: Set from_stack_2 = Me(from_stack_1)
  loc_6928AE: FLdPr var_98
  loc_6928B1: Me.Visible = from_stack_1b
  loc_6928B6: FFreeAd var_94 = ""
  loc_6928BD: LitI2_Byte &HFF
  loc_6928BF: FLdRfVar var_98
  loc_6928C2: FLdUI1
  loc_6928C6: CI2UI1
  loc_6928C8: FLdPrThis
  loc_6928C9: VCallAd Control_ID_Label_Total
  loc_6928CC: FStAdFunc var_94
  loc_6928CF: FLdPr var_94
  loc_6928D2: Set from_stack_2 = Me(from_stack_1)
  loc_6928D7: FLdPr var_98
  loc_6928DA: Me.Visible = from_stack_1b
  loc_6928DF: FFreeAd var_94 = ""
  loc_6928E6: FLdRfVar var_86
  loc_6928E9: CVarRef
  loc_6928EE: FLdRfVar var_B8
  loc_6928F1: ImpAdCallFPR4  = Str()
  loc_6928F6: FLdRfVar var_B8
  loc_6928F9: CStrVarVal var_BC
  loc_6928FD: FLdRfVar var_98
  loc_692900: FLdUI1
  loc_692904: CI2UI1
  loc_692906: FLdPrThis
  loc_692907: VCallAd Control_ID_Nro_Surtidor
  loc_69290A: FStAdFunc var_94
  loc_69290D: FLdPr var_94
  loc_692910: Set from_stack_2 = Me(from_stack_1)
  loc_692915: FLdPr var_98
  loc_692918: Me.Caption = from_stack_1
  loc_69291D: FFree1Str var_BC
  loc_692920: FFreeAd var_94 = ""
  loc_692927: FFree1Var var_B8 = ""
  loc_69292A: FLdRfVar var_86
  loc_69292D: NextUI1
  loc_692933: Branch loc_692AE2
  loc_692936: FLdPr Me
  loc_692939: MemLdUI1 global_114
  loc_69293D: FLdPr Me
  loc_692940: MemLdUI1 offset
  loc_692944: SubUI1
  loc_692946: FLdRfVar var_86
  loc_692949: FLdPr Me
  loc_69294C: MemLdUI1 global_115
  loc_692950: FLdPr Me
  loc_692953: MemLdUI1 offset
  loc_692957: SubUI1
  loc_692959: ForUI1 var_C0
  loc_69295F: LitVar_TRUE var_A8
  loc_692962: PopAdLdVar
  loc_692963: FLdRfVar var_98
  loc_692966: FLdUI1
  loc_69296A: CI2UI1
  loc_69296C: FLdPrThis
  loc_69296D: VCallAd Control_ID_Animation1
  loc_692970: FStAdFunc var_94
  loc_692973: FLdPr var_94
  loc_692976: Set from_stack_2 = Me(from_stack_1)
  loc_69297B: FLdPr var_98
  loc_69297E: LateIdSt
  loc_692983: FFreeAd var_94 = ""
  loc_69298A: LitI2_Byte &HFF
  loc_69298C: FLdRfVar var_98
  loc_69298F: FLdUI1
  loc_692993: CI2UI1
  loc_692995: FLdPrThis
  loc_692996: VCallAd Control_ID_Nro_Surtidor
  loc_692999: FStAdFunc var_94
  loc_69299C: FLdPr var_94
  loc_69299F: Set from_stack_2 = Me(from_stack_1)
  loc_6929A4: FLdPr var_98
  loc_6929A7: Me.Visible = from_stack_1b
  loc_6929AC: FFreeAd var_94 = ""
  loc_6929B3: LitI2_Byte &HFF
  loc_6929B5: FLdRfVar var_98
  loc_6929B8: FLdUI1
  loc_6929BC: CI2UI1
  loc_6929BE: FLdPrThis
  loc_6929BF: VCallAd Control_ID_Label_Total
  loc_6929C2: FStAdFunc var_94
  loc_6929C5: FLdPr var_94
  loc_6929C8: Set from_stack_2 = Me(from_stack_1)
  loc_6929CD: FLdPr var_98
  loc_6929D0: Me.Visible = from_stack_1b
  loc_6929D5: FFreeAd var_94 = ""
  loc_6929DC: FLdUI1
  loc_6929E0: FLdPr Me
  loc_6929E3: MemLdUI1 offset
  loc_6929E7: AddUI1
  loc_6929E9: CVarUI1
  loc_6929ED: FLdRfVar var_D0
  loc_6929F0: ImpAdCallFPR4  = Str()
  loc_6929F5: FLdRfVar var_D0
  loc_6929F8: CStrVarVal var_BC
  loc_6929FC: FLdRfVar var_98
  loc_6929FF: FLdUI1
  loc_692A03: CI2UI1
  loc_692A05: FLdPrThis
  loc_692A06: VCallAd Control_ID_Nro_Surtidor
  loc_692A09: FStAdFunc var_94
  loc_692A0C: FLdPr var_94
  loc_692A0F: Set from_stack_2 = Me(from_stack_1)
  loc_692A14: FLdPr var_98
  loc_692A17: Me.Caption = from_stack_1
  loc_692A1C: FFree1Str var_BC
  loc_692A1F: FFreeAd var_94 = ""
  loc_692A26: FFreeVar var_B8 = ""
  loc_692A2D: FLdRfVar var_86
  loc_692A30: NextUI1
  loc_692A36: FLdPr Me
  loc_692A39: MemLdUI1 global_115
  loc_692A3D: CI2UI1
  loc_692A3F: LitI2_Byte 1
  loc_692A41: AddI2
  loc_692A42: FLdPr Me
  loc_692A45: MemLdUI1 offset
  loc_692A49: CI2UI1
  loc_692A4B: SubI2
  loc_692A4C: CUI1I2
  loc_692A4E: FLdRfVar var_86
  loc_692A51: LitI2_Byte &H10
  loc_692A53: CUI1I2
  loc_692A55: ForUI1 var_D4
  loc_692A5B: LitVar_FALSE
  loc_692A5F: PopAdLdVar
  loc_692A60: FLdRfVar var_98
  loc_692A63: FLdUI1
  loc_692A67: CI2UI1
  loc_692A69: FLdPrThis
  loc_692A6A: VCallAd Control_ID_Animation1
  loc_692A6D: FStAdFunc var_94
  loc_692A70: FLdPr var_94
  loc_692A73: Set from_stack_2 = Me(from_stack_1)
  loc_692A78: FLdPr var_98
  loc_692A7B: LateIdSt
  loc_692A80: FFreeAd var_94 = ""
  loc_692A87: LitI2_Byte 0
  loc_692A89: FLdRfVar var_98
  loc_692A8C: FLdUI1
  loc_692A90: CI2UI1
  loc_692A92: FLdPrThis
  loc_692A93: VCallAd Control_ID_Nro_Surtidor
  loc_692A96: FStAdFunc var_94
  loc_692A99: FLdPr var_94
  loc_692A9C: Set from_stack_2 = Me(from_stack_1)
  loc_692AA1: FLdPr var_98
  loc_692AA4: Me.Visible = from_stack_1b
  loc_692AA9: FFreeAd var_94 = ""
  loc_692AB0: LitI2_Byte 0
  loc_692AB2: FLdRfVar var_98
  loc_692AB5: FLdUI1
  loc_692AB9: CI2UI1
  loc_692ABB: FLdPrThis
  loc_692ABC: VCallAd Control_ID_Label_Total
  loc_692ABF: FStAdFunc var_94
  loc_692AC2: FLdPr var_94
  loc_692AC5: Set from_stack_2 = Me(from_stack_1)
  loc_692ACA: FLdPr var_98
  loc_692ACD: Me.Visible = from_stack_1b
  loc_692AD2: FFreeAd var_94 = ""
  loc_692AD9: FLdRfVar var_86
  loc_692ADC: NextUI1
  loc_692AE2: Branch loc_692C1B
  loc_692AE5: LitI2_Byte 1
  loc_692AE7: CUI1I2
  loc_692AE9: FLdRfVar var_86
  loc_692AEC: ImpAdLdUI1
  loc_692AF0: ForUI1 var_D8
  loc_692AF6: LitVar_TRUE var_A8
  loc_692AF9: PopAdLdVar
  loc_692AFA: FLdRfVar var_98
  loc_692AFD: FLdUI1
  loc_692B01: CI2UI1
  loc_692B03: FLdPrThis
  loc_692B04: VCallAd Control_ID_Animation1
  loc_692B07: FStAdFunc var_94
  loc_692B0A: FLdPr var_94
  loc_692B0D: Set from_stack_2 = Me(from_stack_1)
  loc_692B12: FLdPr var_98
  loc_692B15: LateIdSt
  loc_692B1A: FFreeAd var_94 = ""
  loc_692B21: LitI2_Byte &HFF
  loc_692B23: FLdRfVar var_98
  loc_692B26: FLdUI1
  loc_692B2A: CI2UI1
  loc_692B2C: FLdPrThis
  loc_692B2D: VCallAd Control_ID_Nro_Surtidor
  loc_692B30: FStAdFunc var_94
  loc_692B33: FLdPr var_94
  loc_692B36: Set from_stack_2 = Me(from_stack_1)
  loc_692B3B: FLdPr var_98
  loc_692B3E: Me.Visible = from_stack_1b
  loc_692B43: FFreeAd var_94 = ""
  loc_692B4A: LitI2_Byte &HFF
  loc_692B4C: FLdRfVar var_98
  loc_692B4F: FLdUI1
  loc_692B53: CI2UI1
  loc_692B55: FLdPrThis
  loc_692B56: VCallAd Control_ID_Label_Total
  loc_692B59: FStAdFunc var_94
  loc_692B5C: FLdPr var_94
  loc_692B5F: Set from_stack_2 = Me(from_stack_1)
  loc_692B64: FLdPr var_98
  loc_692B67: Me.Visible = from_stack_1b
  loc_692B6C: FFreeAd var_94 = ""
  loc_692B73: FLdRfVar var_86
  loc_692B76: NextUI1
  loc_692B7C: ImpAdLdUI1
  loc_692B80: CI2UI1
  loc_692B82: LitI2_Byte 1
  loc_692B84: AddI2
  loc_692B85: CUI1I2
  loc_692B87: FLdRfVar var_86
  loc_692B8A: LitI2_Byte &H10
  loc_692B8C: CUI1I2
  loc_692B8E: ForUI1 var_DC
  loc_692B94: LitVar_FALSE
  loc_692B98: PopAdLdVar
  loc_692B99: FLdRfVar var_98
  loc_692B9C: FLdUI1
  loc_692BA0: CI2UI1
  loc_692BA2: FLdPrThis
  loc_692BA3: VCallAd Control_ID_Animation1
  loc_692BA6: FStAdFunc var_94
  loc_692BA9: FLdPr var_94
  loc_692BAC: Set from_stack_2 = Me(from_stack_1)
  loc_692BB1: FLdPr var_98
  loc_692BB4: LateIdSt
  loc_692BB9: FFreeAd var_94 = ""
  loc_692BC0: LitI2_Byte 0
  loc_692BC2: FLdRfVar var_98
  loc_692BC5: FLdUI1
  loc_692BC9: CI2UI1
  loc_692BCB: FLdPrThis
  loc_692BCC: VCallAd Control_ID_Nro_Surtidor
  loc_692BCF: FStAdFunc var_94
  loc_692BD2: FLdPr var_94
  loc_692BD5: Set from_stack_2 = Me(from_stack_1)
  loc_692BDA: FLdPr var_98
  loc_692BDD: Me.Visible = from_stack_1b
  loc_692BE2: FFreeAd var_94 = ""
  loc_692BE9: LitI2_Byte 0
  loc_692BEB: FLdRfVar var_98
  loc_692BEE: FLdUI1
  loc_692BF2: CI2UI1
  loc_692BF4: FLdPrThis
  loc_692BF5: VCallAd Control_ID_Label_Total
  loc_692BF8: FStAdFunc var_94
  loc_692BFB: FLdPr var_94
  loc_692BFE: Set from_stack_2 = Me(from_stack_1)
  loc_692C03: FLdPr var_98
  loc_692C06: Me.Visible = from_stack_1b
  loc_692C0B: FFreeAd var_94 = ""
  loc_692C12: FLdRfVar var_86
  loc_692C15: NextUI1
  loc_692C1B: FLdPr Me
  loc_692C1E: MemLdUI1 global_114
  loc_692C22: FLdPr Me
  loc_692C25: MemLdUI1 offset
  loc_692C29: SubUI1
  loc_692C2B: FLdRfVar var_86
  loc_692C2E: FLdPr Me
  loc_692C31: MemLdUI1 global_115
  loc_692C35: FLdPr Me
  loc_692C38: MemLdUI1 offset
  loc_692C3C: SubUI1
  loc_692C3E: ForUI1 var_E0
  loc_692C44: FLdRfVar var_98
  loc_692C47: FLdUI1
  loc_692C4B: CI2UI1
  loc_692C4D: FLdPrThis
  loc_692C4E: VCallAd Control_ID_Animation1
  loc_692C51: FStAdFunc var_94
  loc_692C54: FLdPr var_94
  loc_692C57: Set from_stack_2 = Me(from_stack_1)
  loc_692C5C: FLdPr var_98
  loc_692C5F: LateIdLdVar var_B8 DispID_4 -32767
  loc_692C66: CR8Var
  loc_692C68: LitI2_Byte &H3C
  loc_692C6A: CR8I2
  loc_692C6B: SubR4
  loc_692C6C: PopFPR4
  loc_692C6D: FLdRfVar var_E8
  loc_692C70: FLdUI1
  loc_692C74: CI2UI1
  loc_692C76: FLdPrThis
  loc_692C77: VCallAd Control_ID_fraSalesPending
  loc_692C7A: FStAdFunc var_E4
  loc_692C7D: FLdPr var_E4
  loc_692C80: Set from_stack_2 = Me(from_stack_1)
  loc_692C85: FLdPr var_E8
  loc_692C88: Me.Top = from_stack_1s
  loc_692C8D: FFreeAd var_94 = "": var_98 = "": var_E4 = ""
  loc_692C98: FFree1Var var_B8 = ""
  loc_692C9B: FLdRfVar var_98
  loc_692C9E: FLdUI1
  loc_692CA2: CI2UI1
  loc_692CA4: FLdPrThis
  loc_692CA5: VCallAd Control_ID_Animation1
  loc_692CA8: FStAdFunc var_94
  loc_692CAB: FLdPr var_94
  loc_692CAE: Set from_stack_2 = Me(from_stack_1)
  loc_692CB3: FLdPr var_98
  loc_692CB6: LateIdLdVar var_B8 DispID_3 -32767
  loc_692CBD: CR8Var
  loc_692CBF: LitI2_Byte &H3C
  loc_692CC1: CR8I2
  loc_692CC2: SubR4
  loc_692CC3: PopFPR4
  loc_692CC4: FLdRfVar var_E8
  loc_692CC7: FLdUI1
  loc_692CCB: CI2UI1
  loc_692CCD: FLdPrThis
  loc_692CCE: VCallAd Control_ID_fraSalesPending
  loc_692CD1: FStAdFunc var_E4
  loc_692CD4: FLdPr var_E4
  loc_692CD7: Set from_stack_2 = Me(from_stack_1)
  loc_692CDC: FLdPr var_E8
  loc_692CDF: Me.Left = from_stack_1s
  loc_692CE4: FFreeAd var_94 = "": var_98 = "": var_E4 = ""
  loc_692CEF: FFree1Var var_B8 = ""
  loc_692CF2: LitI2 1095
  loc_692CF5: CR8I2
  loc_692CF6: PopFPR4
  loc_692CF7: FLdRfVar var_98
  loc_692CFA: FLdUI1
  loc_692CFE: CI2UI1
  loc_692D00: FLdPrThis
  loc_692D01: VCallAd Control_ID_fraSalesPending
  loc_692D04: FStAdFunc var_94
  loc_692D07: FLdPr var_94
  loc_692D0A: Set from_stack_2 = Me(from_stack_1)
  loc_692D0F: FLdPr var_98
  loc_692D12: Me.Width = from_stack_1s
  loc_692D17: FFreeAd var_94 = ""
  loc_692D1E: LitI2 855
  loc_692D21: CR8I2
  loc_692D22: PopFPR4
  loc_692D23: FLdRfVar var_98
  loc_692D26: FLdUI1
  loc_692D2A: CI2UI1
  loc_692D2C: FLdPrThis
  loc_692D2D: VCallAd Control_ID_fraSalesPending
  loc_692D30: FStAdFunc var_94
  loc_692D33: FLdPr var_94
  loc_692D36: Set from_stack_2 = Me(from_stack_1)
  loc_692D3B: FLdPr var_98
  loc_692D3E: Me.Height = from_stack_1s
  loc_692D43: FFreeAd var_94 = ""
  loc_692D4A: FLdRfVar var_86
  loc_692D4D: NextUI1
  loc_692D53: FLdRfVar var_EA
  loc_692D56: FLdRfVar var_8C
  loc_692D59: FLdRfVar var_94
  loc_692D5C: ImpAdLdRf MemVar_74C760
  loc_692D5F: NewIfNullPr Formx
  loc_692D62: from_stack_1v = Formx.global_4589716Get()
  loc_692D67: FLdPr var_94
  loc_692D6A:  = Formx.Top
  loc_692D6F: FLdI2 var_EA
  loc_692D72: NotI4
  loc_692D73: FFree1Ad var_94
  loc_692D76: BranchF loc_692DA5
  loc_692D79: FLdRfVar var_B8
  loc_692D7C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_692D81: FLdRfVar var_B8
  loc_692D84: CBoolVarNull
  loc_692D86: FFree1Var var_B8 = ""
  loc_692D89: BranchF loc_692DA2
  loc_692D8C: ILdRf Me
  loc_692D8F: FStAdNoPop
  loc_692D93: ImpAdLdRf MemVar_7520D4
  loc_692D96: NewIfNullPr Global
  loc_692D99: Global.Unload from_stack_1
  loc_692D9E: FFree1Ad var_94
  loc_692DA1: ExitProcHresult
  loc_692DA2: Branch loc_692D53
  loc_692DA5: LitI2_Byte &HFF
  loc_692DA7: PopTmpLdAd2 var_EA
  loc_692DAA: FLdRfVar var_8C
  loc_692DAD: from_stack_3v = Proc_161_140_704E0C(from_stack_1v, from_stack_2v)
  loc_692DB2: ExitProcHresult
End Function

Private Function Proc_161_126_5E1790(arg_C, arg_10, arg_14) '5E1790
  'Data Table: 45B254
  loc_5E172C: FLdI2 arg_14
  loc_5E172F: BranchF loc_5E1747
  loc_5E1732: ILdI2 arg_C
  loc_5E1735: FLdPr Me
  loc_5E1738: MemStI2 global_524
  loc_5E173B: FLdI2 arg_10
  loc_5E173E: FLdPr Me
  loc_5E1741: MemStI2 global_526
  loc_5E1744: Branch loc_5E178E
  loc_5E1747: ILdI2 arg_C
  loc_5E174A: FLdPr Me
  loc_5E174D: MemLdI2 global_524
  loc_5E1750: EqI2
  loc_5E1751: FLdPr Me
  loc_5E1754: MemLdI2 global_526
  loc_5E1757: FLdI2 arg_10
  loc_5E175A: EqI2
  loc_5E175B: AndI4
  loc_5E175C: BranchF loc_5E177E
  loc_5E175F: FLdPr Me
  loc_5E1762: MemLdRfVar from_stack_1.global_524
  loc_5E1765: CDargRef
  loc_5E1769: FLdPr Me
  loc_5E176C: MemLdI2 global_526
  loc_5E176F: CVarI2 var_A4
  loc_5E1772: PopAdLdVar
  loc_5E1773: FLdPr Me
  loc_5E1776: RaiseEvent
  loc_5E177E: LitI2_Byte 0
  loc_5E1780: FLdPr Me
  loc_5E1783: MemStI2 global_524
  loc_5E1786: LitI2_Byte 0
  loc_5E1788: FLdPr Me
  loc_5E178B: MemStI2 global_526
  loc_5E178E: ExitProcHresult
End Function

Private Function Proc_161_127_61BA5C() '61BA5C
  'Data Table: 45B254
  loc_61B980: FLdRfVar var_1D4
  loc_61B983: LitVar_Missing var_1D0
  loc_61B986: LitVar_Missing var_1B0
  loc_61B989: LitVar_Missing var_190
  loc_61B98C: LitVar_Missing var_170
  loc_61B98F: LitVar_Missing var_150
  loc_61B992: LitVar_Missing var_130
  loc_61B995: LitVar_Missing var_110
  loc_61B998: LitVar_Missing var_F0
  loc_61B99B: LitVar_Missing var_D0
  loc_61B99E: LitVar_Missing var_B0
  loc_61B9A1: LitStr "Debe seleccionar un preset de la lista."
  loc_61B9A4: FStStrCopy var_90
  loc_61B9A7: FLdRfVar var_90
  loc_61B9AA: LitI4 &H4F
  loc_61B9AF: PopTmpLdAdStr var_8C
  loc_61B9B2: LitI2_Byte 1
  loc_61B9B4: PopTmpLdAd2 var_86
  loc_61B9B7: ImpAdLdRf MemVar_74C7D0
  loc_61B9BA: NewIfNullPr clsMsg
  loc_61B9BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61B9C2: FLdRfVar var_324
  loc_61B9C5: LitVar_Missing var_320
  loc_61B9C8: LitVar_Missing var_300
  loc_61B9CB: LitVar_Missing var_2E0
  loc_61B9CE: LitVar_Missing var_2C0
  loc_61B9D1: LitVar_Missing var_2A0
  loc_61B9D4: LitVar_Missing var_280
  loc_61B9D7: LitVar_Missing var_260
  loc_61B9DA: LitVar_Missing var_240
  loc_61B9DD: LitVar_Missing var_220
  loc_61B9E0: LitVar_Missing var_200
  loc_61B9E3: LitStr "Mensaje"
  loc_61B9E6: FStStrCopy var_1E0
  loc_61B9E9: FLdRfVar var_1E0
  loc_61B9EC: LitI4 &H50
  loc_61B9F1: PopTmpLdAdStr var_1DC
  loc_61B9F4: LitI2_Byte 1
  loc_61B9F6: PopTmpLdAd2 var_1D6
  loc_61B9F9: ImpAdLdRf MemVar_74C7D0
  loc_61B9FC: NewIfNullPr clsMsg
  loc_61B9FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61BA04: LitVar_Missing var_384
  loc_61BA07: LitVar_Missing var_364
  loc_61BA0A: FLdZeroAd var_324
  loc_61BA0D: CVarStr var_344
  loc_61BA10: LitI4 &H40
  loc_61BA15: FLdZeroAd var_1D4
  loc_61BA18: CVarStr var_334
  loc_61BA1B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61BA20: FFreeStr var_90 = ""
  loc_61BA27: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_334 = "": var_344 = "": var_364 = ""
  loc_61BA5A: ExitProcHresult
End Function

Private Function Proc_161_128_5F5690() '5F5690
  'Data Table: 45B254
  loc_5F55DC: LitVarI2 var_A4, 1
  loc_5F55E1: LitI4 4
  loc_5F55E6: ImpAdLdI4 MemVar_74BEAC
  loc_5F55E9: ImpAdCallI2 Mid$(, , )
  loc_5F55EE: FStStrNoPop var_A8
  loc_5F55F1: LitStr "1"
  loc_5F55F4: EqStr
  loc_5F55F6: FFree1Str var_A8
  loc_5F55F9: FFree1Var var_A4 = ""
  loc_5F55FC: BranchF loc_5F5644
  loc_5F55FF: LitVar_TRUE var_94
  loc_5F5602: PopAdLdVar
  loc_5F5603: FLdPrThis
  loc_5F5604: VCallAd Control_ID_cmdReenviar
  loc_5F5607: FStAdFunc var_AC
  loc_5F560A: FLdPr var_AC
  loc_5F560D: LateIdSt
  loc_5F5612: FFree1Ad var_AC
  loc_5F5615: LitVar_TRUE var_94
  loc_5F5618: PopAdLdVar
  loc_5F5619: FLdPrThis
  loc_5F561A: VCallAd Control_ID_cmdBorrarPreset
  loc_5F561D: FStAdFunc var_AC
  loc_5F5620: FLdPr var_AC
  loc_5F5623: LateIdSt
  loc_5F5628: FFree1Ad var_AC
  loc_5F562B: LitVar_TRUE var_94
  loc_5F562E: PopAdLdVar
  loc_5F562F: FLdPrThis
  loc_5F5630: VCallAd Control_ID_cmdBorrarTodo
  loc_5F5633: FStAdFunc var_AC
  loc_5F5636: FLdPr var_AC
  loc_5F5639: LateIdSt
  loc_5F563E: FFree1Ad var_AC
  loc_5F5641: Branch loc_5F568F
  loc_5F5644: LitVar_FALSE
  loc_5F5648: PopAdLdVar
  loc_5F5649: FLdPr Me
  loc_5F564C: VCallAd Control_ID_cmdReenviar
  loc_5F564F: FStAdFunc var_AC
  loc_5F5652: FLdPr var_AC
  loc_5F5655: LateIdSt
  loc_5F565A: FFree1Ad var_AC
  loc_5F565D: LitVar_FALSE
  loc_5F5661: PopAdLdVar
  loc_5F5662: FLdPr Me
  loc_5F5665: VCallAd Control_ID_cmdBorrarPreset
  loc_5F5668: FStAdFunc var_AC
  loc_5F566B: FLdPr var_AC
  loc_5F566E: LateIdSt
  loc_5F5673: FFree1Ad var_AC
  loc_5F5676: LitVar_FALSE
  loc_5F567A: PopAdLdVar
  loc_5F567B: FLdPr Me
  loc_5F567E: VCallAd Control_ID_cmdBorrarTodo
  loc_5F5681: FStAdFunc var_AC
  loc_5F5684: FLdPr var_AC
  loc_5F5687: LateIdSt
  loc_5F568C: FFree1Ad var_AC
  loc_5F568F: ExitProcHresult
End Function

Private Function Proc_161_129_6C433C(arg_C) '6C433C
  'Data Table: 45B254
  loc_6C3A90: ILdUI1 arg_C
  loc_6C3A94: FStUI1 var_8E
  loc_6C3A98: FLdUI1
  loc_6C3A9C: LitI2_Byte 0
  loc_6C3A9E: CUI1I2
  loc_6C3AA0: EqI2
  loc_6C3AA1: BranchF loc_6C3E95
  loc_6C3AA4: ImpAdLdUI1
  loc_6C3AA8: FStUI1 var_90
  loc_6C3AAC: FLdUI1
  loc_6C3AB0: LitI2_Byte 4
  loc_6C3AB2: CUI1I2
  loc_6C3AB4: EqI2
  loc_6C3AB5: BranchT loc_6C3AD0
  loc_6C3AB8: FLdUI1
  loc_6C3ABC: LitI2_Byte 5
  loc_6C3ABE: CUI1I2
  loc_6C3AC0: EqI2
  loc_6C3AC1: BranchT loc_6C3AD0
  loc_6C3AC4: FLdUI1
  loc_6C3AC8: LitI2_Byte 6
  loc_6C3ACA: CUI1I2
  loc_6C3ACC: EqI2
  loc_6C3ACD: BranchF loc_6C3B27
  loc_6C3AD0: FLdPrThis
  loc_6C3AD1: VCallAd Control_ID_EstaVenta
  loc_6C3AD4: FStAdFunc var_DC
  loc_6C3AD7: LitI4 1
  loc_6C3ADC: LitI4 1
  loc_6C3AE1: LitVarStr var_B0, "0000000000"
  loc_6C3AE6: FStVarCopyObj var_C0
  loc_6C3AE9: FLdRfVar var_C0
  loc_6C3AEC: FLdZeroAd var_DC
  loc_6C3AEF: CVarAd
  loc_6C3AF3: FLdRfVar var_D0
  loc_6C3AF6: ImpAdCallFPR4  = Format(, )
  loc_6C3AFB: FLdRfVar var_D0
  loc_6C3AFE: CStrVarVal var_D4
  loc_6C3B02: FLdPrThis
  loc_6C3B03: VCallAd Control_ID_EstaVentaP
  loc_6C3B06: FStAdFunc var_D8
  loc_6C3B09: FLdPr var_D8
  loc_6C3B0C: Me.Caption = from_stack_1
  loc_6C3B11: FFree1Str var_D4
  loc_6C3B14: FFreeAd var_D8 = ""
  loc_6C3B1B: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3B24: Branch loc_6C3D08
  loc_6C3B27: FLdUI1
  loc_6C3B2B: LitI2_Byte 3
  loc_6C3B2D: CUI1I2
  loc_6C3B2F: EqI2
  loc_6C3B30: BranchF loc_6C3C31
  loc_6C3B33: LitI4 1
  loc_6C3B38: FLdRfVar var_D4
  loc_6C3B3B: FLdPrThis
  loc_6C3B3C: VCallAd Control_ID_EstaVenta
  loc_6C3B3F: FStAdFunc var_D8
  loc_6C3B42: FLdPr var_D8
  loc_6C3B45:  = Me.Caption
  loc_6C3B4A: ILdRf var_D4
  loc_6C3B4D: LitStr ".-"
  loc_6C3B50: LitI4 0
  loc_6C3B55: FnInStr4
  loc_6C3B57: LitI4 0
  loc_6C3B5C: GtI4
  loc_6C3B5D: FFree1Str var_D4
  loc_6C3B60: FFree1Ad var_D8
  loc_6C3B63: BranchF loc_6C3BDA
  loc_6C3B66: FLdRfVar var_D4
  loc_6C3B69: FLdPrThis
  loc_6C3B6A: VCallAd Control_ID_EstaVenta
  loc_6C3B6D: FStAdFunc var_D8
  loc_6C3B70: FLdPr var_D8
  loc_6C3B73:  = Me.Caption
  loc_6C3B78: FLdRfVar var_E0
  loc_6C3B7B: FLdPrThis
  loc_6C3B7C: VCallAd Control_ID_EstaVenta
  loc_6C3B7F: FStAdFunc var_DC
  loc_6C3B82: FLdPr var_DC
  loc_6C3B85:  = Me.Caption
  loc_6C3B8A: ILdRf var_E0
  loc_6C3B8D: FnLenStr
  loc_6C3B8E: LitI4 2
  loc_6C3B93: SubI4
  loc_6C3B94: CVarI4
  loc_6C3B98: LitI4 1
  loc_6C3B9D: FLdZeroAd var_D4
  loc_6C3BA0: CVarStr var_A0
  loc_6C3BA3: FLdRfVar var_D0
  loc_6C3BA6: ImpAdCallFPR4  = Mid(, , )
  loc_6C3BAB: FLdRfVar var_D0
  loc_6C3BAE: CStrVarVal var_E4
  loc_6C3BB2: FLdPrThis
  loc_6C3BB3: VCallAd Control_ID_EstaVentaP
  loc_6C3BB6: FStAdFunc var_E8
  loc_6C3BB9: FLdPr var_E8
  loc_6C3BBC: Me.Caption = from_stack_1
  loc_6C3BC1: FFreeStr var_E0 = ""
  loc_6C3BC8: FFreeAd var_D8 = "": var_DC = ""
  loc_6C3BD1: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3BDA: FLdPrThis
  loc_6C3BDB: VCallAd Control_ID_EstaVentaP
  loc_6C3BDE: FStAdFunc var_DC
  loc_6C3BE1: LitI4 1
  loc_6C3BE6: LitI4 1
  loc_6C3BEB: LitVarStr var_B0, "00000.-"
  loc_6C3BF0: FStVarCopyObj var_C0
  loc_6C3BF3: FLdRfVar var_C0
  loc_6C3BF6: FLdZeroAd var_DC
  loc_6C3BF9: CVarAd
  loc_6C3BFD: FLdRfVar var_D0
  loc_6C3C00: ImpAdCallFPR4  = Format(, )
  loc_6C3C05: FLdRfVar var_D0
  loc_6C3C08: CStrVarVal var_D4
  loc_6C3C0C: FLdPrThis
  loc_6C3C0D: VCallAd Control_ID_EstaVentaP
  loc_6C3C10: FStAdFunc var_D8
  loc_6C3C13: FLdPr var_D8
  loc_6C3C16: Me.Caption = from_stack_1
  loc_6C3C1B: FFree1Str var_D4
  loc_6C3C1E: FFreeAd var_D8 = ""
  loc_6C3C25: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3C2E: Branch loc_6C3D08
  loc_6C3C31: FLdUI1
  loc_6C3C35: LitI2_Byte 2
  loc_6C3C37: CUI1I2
  loc_6C3C39: EqI2
  loc_6C3C3A: BranchF loc_6C3C9E
  loc_6C3C3D: FLdRfVar var_D4
  loc_6C3C40: FLdPrThis
  loc_6C3C41: VCallAd Control_ID_EstaVenta
  loc_6C3C44: FStAdFunc var_D8
  loc_6C3C47: FLdPr var_D8
  loc_6C3C4A:  = Me.Caption
  loc_6C3C4F: LitI4 1
  loc_6C3C54: LitI4 1
  loc_6C3C59: LitVarStr var_B0, "00000.0"
  loc_6C3C5E: FStVarCopyObj var_C0
  loc_6C3C61: FLdRfVar var_C0
  loc_6C3C64: FLdZeroAd var_D4
  loc_6C3C67: CVarStr var_A0
  loc_6C3C6A: FLdRfVar var_D0
  loc_6C3C6D: ImpAdCallFPR4  = Format(, )
  loc_6C3C72: FLdRfVar var_D0
  loc_6C3C75: CStrVarVal var_E0
  loc_6C3C79: FLdPrThis
  loc_6C3C7A: VCallAd Control_ID_EstaVentaP
  loc_6C3C7D: FStAdFunc var_DC
  loc_6C3C80: FLdPr var_DC
  loc_6C3C83: Me.Caption = from_stack_1
  loc_6C3C88: FFree1Str var_E0
  loc_6C3C8B: FFreeAd var_D8 = ""
  loc_6C3C92: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3C9B: Branch loc_6C3D08
  loc_6C3C9E: FLdUI1
  loc_6C3CA2: LitI2_Byte 1
  loc_6C3CA4: CUI1I2
  loc_6C3CA6: EqI2
  loc_6C3CA7: BranchF loc_6C3D08
  loc_6C3CAA: FLdRfVar var_D4
  loc_6C3CAD: FLdPrThis
  loc_6C3CAE: VCallAd Control_ID_EstaVenta
  loc_6C3CB1: FStAdFunc var_D8
  loc_6C3CB4: FLdPr var_D8
  loc_6C3CB7:  = Me.Caption
  loc_6C3CBC: LitI4 1
  loc_6C3CC1: LitI4 1
  loc_6C3CC6: LitVarStr var_B0, "0000.00"
  loc_6C3CCB: FStVarCopyObj var_C0
  loc_6C3CCE: FLdRfVar var_C0
  loc_6C3CD1: FLdZeroAd var_D4
  loc_6C3CD4: CVarStr var_A0
  loc_6C3CD7: FLdRfVar var_D0
  loc_6C3CDA: ImpAdCallFPR4  = Format(, )
  loc_6C3CDF: FLdRfVar var_D0
  loc_6C3CE2: CStrVarVal var_E0
  loc_6C3CE6: FLdPrThis
  loc_6C3CE7: VCallAd Control_ID_EstaVentaP
  loc_6C3CEA: FStAdFunc var_DC
  loc_6C3CED: FLdPr var_DC
  loc_6C3CF0: Me.Caption = from_stack_1
  loc_6C3CF5: FFree1Str var_E0
  loc_6C3CF8: FFreeAd var_D8 = ""
  loc_6C3CFF: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3D08: LitI2_Byte 1
  loc_6C3D0A: FLdRfVar var_86
  loc_6C3D0D: FLdRfVar var_D4
  loc_6C3D10: FLdPrThis
  loc_6C3D11: VCallAd Control_ID_EstaVentaP
  loc_6C3D14: FStAdFunc var_D8
  loc_6C3D17: FLdPr var_D8
  loc_6C3D1A:  = Me.Caption
  loc_6C3D1F: ILdRf var_D4
  loc_6C3D22: FnLenStr
  loc_6C3D23: CI2I4
  loc_6C3D24: FFree1Str var_D4
  loc_6C3D27: FFree1Ad var_D8
  loc_6C3D2A: ForI2 var_EC
  loc_6C3D30: FLdRfVar var_D4
  loc_6C3D33: FLdPrThis
  loc_6C3D34: VCallAd Control_ID_EstaVentaP
  loc_6C3D37: FStAdFunc var_D8
  loc_6C3D3A: FLdPr var_D8
  loc_6C3D3D:  = Me.Caption
  loc_6C3D42: FLdRfVar var_E0
  loc_6C3D45: FLdPrThis
  loc_6C3D46: VCallAd Control_ID_EstaVentaP
  loc_6C3D49: FStAdFunc var_DC
  loc_6C3D4C: FLdPr var_DC
  loc_6C3D4F:  = Me.Caption
  loc_6C3D54: LitVarI2 var_C0, 1
  loc_6C3D59: FLdI2 var_86
  loc_6C3D5C: CI4UI1
  loc_6C3D5D: FLdZeroAd var_D4
  loc_6C3D60: CVarStr var_A0
  loc_6C3D63: FLdRfVar var_D0
  loc_6C3D66: ImpAdCallFPR4  = Mid(, , )
  loc_6C3D6B: FLdRfVar var_D0
  loc_6C3D6E: LitVarStr var_FC, "."
  loc_6C3D73: HardType
  loc_6C3D74: EqVar var_10C
  loc_6C3D78: LitVarI2 var_13C, 1
  loc_6C3D7D: FLdI2 var_86
  loc_6C3D80: CI4UI1
  loc_6C3D81: FLdZeroAd var_E0
  loc_6C3D84: CVarStr var_11C
  loc_6C3D87: FLdRfVar var_14C
  loc_6C3D8A: ImpAdCallFPR4  = Mid(, , )
  loc_6C3D8F: FLdRfVar var_14C
  loc_6C3D92: LitVarStr var_15C, "-"
  loc_6C3D97: HardType
  loc_6C3D98: EqVar var_16C
  loc_6C3D9C: OrVar var_17C
  loc_6C3DA0: CBoolVarNull
  loc_6C3DA2: FFreeAd var_D8 = ""
  loc_6C3DA9: FFreeVar var_A0 = "": var_C0 = "": var_D0 = "": var_11C = "": var_13C = ""
  loc_6C3DB8: BranchF loc_6C3DC8
  loc_6C3DBB: ILdRf var_8C
  loc_6C3DBE: LitStr "."
  loc_6C3DC1: ConcatStr
  loc_6C3DC2: FStStr var_8C
  loc_6C3DC5: Branch loc_6C3DD2
  loc_6C3DC8: ILdRf var_8C
  loc_6C3DCB: LitStr "8"
  loc_6C3DCE: ConcatStr
  loc_6C3DCF: FStStr var_8C
  loc_6C3DD2: FLdRfVar var_86
  loc_6C3DD5: NextI2 var_EC, loc_6C3D30
  loc_6C3DDA: ImpAdLdUI1
  loc_6C3DDE: CI2UI1
  loc_6C3DE0: LitI2_Byte 3
  loc_6C3DE2: GeI2
  loc_6C3DE3: BranchF loc_6C3E7D
  loc_6C3DE6: LitI2_Byte 1
  loc_6C3DE8: FLdRfVar var_86
  loc_6C3DEB: ILdRf var_8C
  loc_6C3DEE: FnLenStr
  loc_6C3DEF: CI2I4
  loc_6C3DF0: ForI2 var_180
  loc_6C3DF6: LitVarI2 var_A0, 1
  loc_6C3DFB: FLdI2 var_86
  loc_6C3DFE: CI4UI1
  loc_6C3DFF: FLdRfVar var_8C
  loc_6C3E02: CVarRef
  loc_6C3E07: FLdRfVar var_C0
  loc_6C3E0A: ImpAdCallFPR4  = Mid(, , )
  loc_6C3E0F: FLdRfVar var_C0
  loc_6C3E12: LitVarStr var_12C, "."
  loc_6C3E17: HardType
  loc_6C3E18: EqVarBool
  loc_6C3E1A: FFreeVar var_A0 = ""
  loc_6C3E21: BranchF loc_6C3E53
  loc_6C3E24: FLdI2 var_86
  loc_6C3E27: LitI2_Byte 1
  loc_6C3E29: SubI2
  loc_6C3E2A: CVarI2 var_A0
  loc_6C3E2D: LitI4 1
  loc_6C3E32: FLdRfVar var_8C
  loc_6C3E35: CVarRef
  loc_6C3E3A: FLdRfVar var_C0
  loc_6C3E3D: ImpAdCallFPR4  = Mid(, , )
  loc_6C3E42: FLdRfVar var_C0
  loc_6C3E45: CStrVarTmp
  loc_6C3E46: FStStr var_8C
  loc_6C3E49: FFreeVar var_A0 = ""
  loc_6C3E50: Branch loc_6C3E5B
  loc_6C3E53: FLdRfVar var_86
  loc_6C3E56: NextI2 var_180, loc_6C3DF6
  loc_6C3E5B: ILdRf var_8C
  loc_6C3E5E: LitStr ".-"
  loc_6C3E61: ConcatStr
  loc_6C3E62: FStStrNoPop var_D4
  loc_6C3E65: FLdPrThis
  loc_6C3E66: VCallAd Control_ID_EstaVentaP
  loc_6C3E69: FStAdFunc var_D8
  loc_6C3E6C: FLdPr var_D8
  loc_6C3E6F: Me.Caption = from_stack_1
  loc_6C3E74: FFree1Str var_D4
  loc_6C3E77: FFree1Ad var_D8
  loc_6C3E7A: Branch loc_6C3E92
  loc_6C3E7D: ILdRf var_8C
  loc_6C3E80: FLdPrThis
  loc_6C3E81: VCallAd Control_ID_EstaVentaP
  loc_6C3E84: FStAdFunc var_D8
  loc_6C3E87: FLdPr var_D8
  loc_6C3E8A: Me.Caption = from_stack_1
  loc_6C3E8F: FFree1Ad var_D8
  loc_6C3E92: Branch loc_6C433A
  loc_6C3E95: FLdUI1
  loc_6C3E99: LitI2_Byte 1
  loc_6C3E9B: CUI1I2
  loc_6C3E9D: EqI2
  loc_6C3E9E: BranchF loc_6C3FA1
  loc_6C3EA1: FLdRfVar var_D4
  loc_6C3EA4: FLdPrThis
  loc_6C3EA5: VCallAd Control_ID_Litros
  loc_6C3EA8: FStAdFunc var_D8
  loc_6C3EAB: FLdPr var_D8
  loc_6C3EAE:  = Me.Caption
  loc_6C3EB3: LitI4 1
  loc_6C3EB8: LitI4 1
  loc_6C3EBD: LitVarStr var_B0, "0000.00"
  loc_6C3EC2: FStVarCopyObj var_C0
  loc_6C3EC5: FLdRfVar var_C0
  loc_6C3EC8: FLdZeroAd var_D4
  loc_6C3ECB: CVarStr var_A0
  loc_6C3ECE: FLdRfVar var_D0
  loc_6C3ED1: ImpAdCallFPR4  = Format(, )
  loc_6C3ED6: FLdRfVar var_D0
  loc_6C3ED9: CStrVarVal var_E0
  loc_6C3EDD: FLdPrThis
  loc_6C3EDE: VCallAd Control_ID_LitrosP
  loc_6C3EE1: FStAdFunc var_DC
  loc_6C3EE4: FLdPr var_DC
  loc_6C3EE7: Me.Caption = from_stack_1
  loc_6C3EEC: FFree1Str var_E0
  loc_6C3EEF: FFreeAd var_D8 = ""
  loc_6C3EF6: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3EFF: LitI2_Byte 1
  loc_6C3F01: FLdRfVar var_86
  loc_6C3F04: FLdRfVar var_D4
  loc_6C3F07: FLdPrThis
  loc_6C3F08: VCallAd Control_ID_LitrosP
  loc_6C3F0B: FStAdFunc var_D8
  loc_6C3F0E: FLdPr var_D8
  loc_6C3F11:  = Me.Caption
  loc_6C3F16: ILdRf var_D4
  loc_6C3F19: FnLenStr
  loc_6C3F1A: CI2I4
  loc_6C3F1B: FFree1Str var_D4
  loc_6C3F1E: FFree1Ad var_D8
  loc_6C3F21: ForI2 var_184
  loc_6C3F27: FLdRfVar var_D4
  loc_6C3F2A: FLdPrThis
  loc_6C3F2B: VCallAd Control_ID_LitrosP
  loc_6C3F2E: FStAdFunc var_D8
  loc_6C3F31: FLdPr var_D8
  loc_6C3F34:  = Me.Caption
  loc_6C3F39: LitVarI2 var_C0, 1
  loc_6C3F3E: FLdI2 var_86
  loc_6C3F41: CI4UI1
  loc_6C3F42: FLdZeroAd var_D4
  loc_6C3F45: CVarStr var_A0
  loc_6C3F48: FLdRfVar var_D0
  loc_6C3F4B: ImpAdCallFPR4  = Mid(, , )
  loc_6C3F50: FLdRfVar var_D0
  loc_6C3F53: LitVarStr var_FC, "."
  loc_6C3F58: HardType
  loc_6C3F59: EqVarBool
  loc_6C3F5B: FFree1Ad var_D8
  loc_6C3F5E: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C3F67: BranchF loc_6C3F77
  loc_6C3F6A: ILdRf var_8C
  loc_6C3F6D: LitStr "."
  loc_6C3F70: ConcatStr
  loc_6C3F71: FStStr var_8C
  loc_6C3F74: Branch loc_6C3F81
  loc_6C3F77: ILdRf var_8C
  loc_6C3F7A: LitStr "8"
  loc_6C3F7D: ConcatStr
  loc_6C3F7E: FStStr var_8C
  loc_6C3F81: FLdRfVar var_86
  loc_6C3F84: NextI2 var_184, loc_6C3F27
  loc_6C3F89: ILdRf var_8C
  loc_6C3F8C: FLdPrThis
  loc_6C3F8D: VCallAd Control_ID_LitrosP
  loc_6C3F90: FStAdFunc var_D8
  loc_6C3F93: FLdPr var_D8
  loc_6C3F96: Me.Caption = from_stack_1
  loc_6C3F9B: FFree1Ad var_D8
  loc_6C3F9E: Branch loc_6C433A
  loc_6C3FA1: FLdUI1
  loc_6C3FA5: LitI2_Byte 2
  loc_6C3FA7: CUI1I2
  loc_6C3FA9: EqI2
  loc_6C3FAA: BranchF loc_6C433A
  loc_6C3FAD: ImpAdLdUI1
  loc_6C3FB1: FStUI1 var_186
  loc_6C3FB5: FLdUI1
  loc_6C3FB9: LitI2_Byte 4
  loc_6C3FBB: CUI1I2
  loc_6C3FBD: EqI2
  loc_6C3FBE: BranchT loc_6C3FD9
  loc_6C3FC1: FLdUI1
  loc_6C3FC5: LitI2_Byte 5
  loc_6C3FC7: CUI1I2
  loc_6C3FC9: EqI2
  loc_6C3FCA: BranchT loc_6C3FD9
  loc_6C3FCD: FLdUI1
  loc_6C3FD1: LitI2_Byte 6
  loc_6C3FD3: CUI1I2
  loc_6C3FD5: EqI2
  loc_6C3FD6: BranchF loc_6C403A
  loc_6C3FD9: FLdRfVar var_D4
  loc_6C3FDC: FLdPrThis
  loc_6C3FDD: VCallAd Control_ID_PPU
  loc_6C3FE0: FStAdFunc var_D8
  loc_6C3FE3: FLdPr var_D8
  loc_6C3FE6:  = Me.Caption
  loc_6C3FEB: LitI4 1
  loc_6C3FF0: LitI4 1
  loc_6C3FF5: LitVarStr var_B0, "000.000"
  loc_6C3FFA: FStVarCopyObj var_C0
  loc_6C3FFD: FLdRfVar var_C0
  loc_6C4000: FLdZeroAd var_D4
  loc_6C4003: CVarStr var_A0
  loc_6C4006: FLdRfVar var_D0
  loc_6C4009: ImpAdCallFPR4  = Format(, )
  loc_6C400E: FLdRfVar var_D0
  loc_6C4011: CStrVarVal var_E0
  loc_6C4015: FLdPrThis
  loc_6C4016: VCallAd Control_ID_PPUP
  loc_6C4019: FStAdFunc var_DC
  loc_6C401C: FLdPr var_DC
  loc_6C401F: Me.Caption = from_stack_1
  loc_6C4024: FFree1Str var_E0
  loc_6C4027: FFreeAd var_D8 = ""
  loc_6C402E: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C4037: Branch loc_6C417E
  loc_6C403A: FLdUI1
  loc_6C403E: LitI2_Byte 3
  loc_6C4040: CUI1I2
  loc_6C4042: EqI2
  loc_6C4043: BranchF loc_6C40A7
  loc_6C4046: FLdRfVar var_D4
  loc_6C4049: FLdPrThis
  loc_6C404A: VCallAd Control_ID_PPU
  loc_6C404D: FStAdFunc var_D8
  loc_6C4050: FLdPr var_D8
  loc_6C4053:  = Me.Caption
  loc_6C4058: LitI4 1
  loc_6C405D: LitI4 1
  loc_6C4062: LitVarStr var_B0, "000.00"
  loc_6C4067: FStVarCopyObj var_C0
  loc_6C406A: FLdRfVar var_C0
  loc_6C406D: FLdZeroAd var_D4
  loc_6C4070: CVarStr var_A0
  loc_6C4073: FLdRfVar var_D0
  loc_6C4076: ImpAdCallFPR4  = Format(, )
  loc_6C407B: FLdRfVar var_D0
  loc_6C407E: CStrVarVal var_E0
  loc_6C4082: FLdPrThis
  loc_6C4083: VCallAd Control_ID_PPUP
  loc_6C4086: FStAdFunc var_DC
  loc_6C4089: FLdPr var_DC
  loc_6C408C: Me.Caption = from_stack_1
  loc_6C4091: FFree1Str var_E0
  loc_6C4094: FFreeAd var_D8 = ""
  loc_6C409B: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C40A4: Branch loc_6C417E
  loc_6C40A7: FLdUI1
  loc_6C40AB: LitI2_Byte 2
  loc_6C40AD: CUI1I2
  loc_6C40AF: EqI2
  loc_6C40B0: BranchF loc_6C4114
  loc_6C40B3: FLdRfVar var_D4
  loc_6C40B6: FLdPrThis
  loc_6C40B7: VCallAd Control_ID_PPU
  loc_6C40BA: FStAdFunc var_D8
  loc_6C40BD: FLdPr var_D8
  loc_6C40C0:  = Me.Caption
  loc_6C40C5: LitI4 1
  loc_6C40CA: LitI4 1
  loc_6C40CF: LitVarStr var_B0, "000.00"
  loc_6C40D4: FStVarCopyObj var_C0
  loc_6C40D7: FLdRfVar var_C0
  loc_6C40DA: FLdZeroAd var_D4
  loc_6C40DD: CVarStr var_A0
  loc_6C40E0: FLdRfVar var_D0
  loc_6C40E3: ImpAdCallFPR4  = Format(, )
  loc_6C40E8: FLdRfVar var_D0
  loc_6C40EB: CStrVarVal var_E0
  loc_6C40EF: FLdPrThis
  loc_6C40F0: VCallAd Control_ID_PPUP
  loc_6C40F3: FStAdFunc var_DC
  loc_6C40F6: FLdPr var_DC
  loc_6C40F9: Me.Caption = from_stack_1
  loc_6C40FE: FFree1Str var_E0
  loc_6C4101: FFreeAd var_D8 = ""
  loc_6C4108: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C4111: Branch loc_6C417E
  loc_6C4114: FLdUI1
  loc_6C4118: LitI2_Byte 1
  loc_6C411A: CUI1I2
  loc_6C411C: EqI2
  loc_6C411D: BranchF loc_6C417E
  loc_6C4120: FLdRfVar var_D4
  loc_6C4123: FLdPrThis
  loc_6C4124: VCallAd Control_ID_PPU
  loc_6C4127: FStAdFunc var_D8
  loc_6C412A: FLdPr var_D8
  loc_6C412D:  = Me.Caption
  loc_6C4132: LitI4 1
  loc_6C4137: LitI4 1
  loc_6C413C: LitVarStr var_B0, "00.000"
  loc_6C4141: FStVarCopyObj var_C0
  loc_6C4144: FLdRfVar var_C0
  loc_6C4147: FLdZeroAd var_D4
  loc_6C414A: CVarStr var_A0
  loc_6C414D: FLdRfVar var_D0
  loc_6C4150: ImpAdCallFPR4  = Format(, )
  loc_6C4155: FLdRfVar var_D0
  loc_6C4158: CStrVarVal var_E0
  loc_6C415C: FLdPrThis
  loc_6C415D: VCallAd Control_ID_PPUP
  loc_6C4160: FStAdFunc var_DC
  loc_6C4163: FLdPr var_DC
  loc_6C4166: Me.Caption = from_stack_1
  loc_6C416B: FFree1Str var_E0
  loc_6C416E: FFreeAd var_D8 = ""
  loc_6C4175: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C417E: LitI4 1
  loc_6C4183: FLdRfVar var_D4
  loc_6C4186: FLdPrThis
  loc_6C4187: VCallAd Control_ID_PPUP
  loc_6C418A: FStAdFunc var_D8
  loc_6C418D: FLdPr var_D8
  loc_6C4190:  = Me.Caption
  loc_6C4195: ILdRf var_D4
  loc_6C4198: LitStr ".-"
  loc_6C419B: LitI4 0
  loc_6C41A0: FnInStr4
  loc_6C41A2: LitI4 0
  loc_6C41A7: GtI4
  loc_6C41A8: FFree1Str var_D4
  loc_6C41AB: FFree1Ad var_D8
  loc_6C41AE: BranchF loc_6C4225
  loc_6C41B1: FLdRfVar var_D4
  loc_6C41B4: FLdPrThis
  loc_6C41B5: VCallAd Control_ID_PPUP
  loc_6C41B8: FStAdFunc var_D8
  loc_6C41BB: FLdPr var_D8
  loc_6C41BE:  = Me.Caption
  loc_6C41C3: FLdRfVar var_E0
  loc_6C41C6: FLdPrThis
  loc_6C41C7: VCallAd Control_ID_PPUP
  loc_6C41CA: FStAdFunc var_DC
  loc_6C41CD: FLdPr var_DC
  loc_6C41D0:  = Me.Caption
  loc_6C41D5: ILdRf var_E0
  loc_6C41D8: FnLenStr
  loc_6C41D9: LitI4 2
  loc_6C41DE: SubI4
  loc_6C41DF: CVarI4
  loc_6C41E3: LitI4 1
  loc_6C41E8: FLdZeroAd var_D4
  loc_6C41EB: CVarStr var_A0
  loc_6C41EE: FLdRfVar var_D0
  loc_6C41F1: ImpAdCallFPR4  = Mid(, , )
  loc_6C41F6: FLdRfVar var_D0
  loc_6C41F9: CStrVarVal var_E4
  loc_6C41FD: FLdPrThis
  loc_6C41FE: VCallAd Control_ID_PPUP
  loc_6C4201: FStAdFunc var_E8
  loc_6C4204: FLdPr var_E8
  loc_6C4207: Me.Caption = from_stack_1
  loc_6C420C: FFreeStr var_E0 = ""
  loc_6C4213: FFreeAd var_D8 = "": var_DC = ""
  loc_6C421C: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C4225: LitI2_Byte 1
  loc_6C4227: FLdRfVar var_86
  loc_6C422A: FLdRfVar var_D4
  loc_6C422D: FLdPrThis
  loc_6C422E: VCallAd Control_ID_PPUP
  loc_6C4231: FStAdFunc var_D8
  loc_6C4234: FLdPr var_D8
  loc_6C4237:  = Me.Caption
  loc_6C423C: ILdRf var_D4
  loc_6C423F: FnLenStr
  loc_6C4240: CI2I4
  loc_6C4241: FFree1Str var_D4
  loc_6C4244: FFree1Ad var_D8
  loc_6C4247: ForI2 var_18A
  loc_6C424D: FLdRfVar var_D4
  loc_6C4250: FLdPrThis
  loc_6C4251: VCallAd Control_ID_PPUP
  loc_6C4254: FStAdFunc var_D8
  loc_6C4257: FLdPr var_D8
  loc_6C425A:  = Me.Caption
  loc_6C425F: FLdRfVar var_E0
  loc_6C4262: FLdPrThis
  loc_6C4263: VCallAd Control_ID_PPUP
  loc_6C4266: FStAdFunc var_DC
  loc_6C4269: FLdPr var_DC
  loc_6C426C:  = Me.Caption
  loc_6C4271: LitVarI2 var_C0, 1
  loc_6C4276: FLdI2 var_86
  loc_6C4279: CI4UI1
  loc_6C427A: FLdZeroAd var_D4
  loc_6C427D: CVarStr var_A0
  loc_6C4280: FLdRfVar var_D0
  loc_6C4283: ImpAdCallFPR4  = Mid(, , )
  loc_6C4288: FLdRfVar var_D0
  loc_6C428B: LitVarStr var_FC, "."
  loc_6C4290: HardType
  loc_6C4291: EqVar var_10C
  loc_6C4295: LitVarI2 var_13C, 1
  loc_6C429A: FLdI2 var_86
  loc_6C429D: CI4UI1
  loc_6C429E: FLdZeroAd var_E0
  loc_6C42A1: CVarStr var_11C
  loc_6C42A4: FLdRfVar var_14C
  loc_6C42A7: ImpAdCallFPR4  = Mid(, , )
  loc_6C42AC: FLdRfVar var_14C
  loc_6C42AF: LitVarStr var_15C, "-"
  loc_6C42B4: HardType
  loc_6C42B5: EqVar var_16C
  loc_6C42B9: OrVar var_17C
  loc_6C42BD: CBoolVarNull
  loc_6C42BF: FFreeAd var_D8 = ""
  loc_6C42C6: FFreeVar var_A0 = "": var_C0 = "": var_D0 = "": var_11C = "": var_13C = ""
  loc_6C42D5: BranchF loc_6C42E5
  loc_6C42D8: ILdRf var_8C
  loc_6C42DB: LitStr "."
  loc_6C42DE: ConcatStr
  loc_6C42DF: FStStr var_8C
  loc_6C42E2: Branch loc_6C42EF
  loc_6C42E5: ILdRf var_8C
  loc_6C42E8: LitStr "8"
  loc_6C42EB: ConcatStr
  loc_6C42EC: FStStr var_8C
  loc_6C42EF: FLdRfVar var_86
  loc_6C42F2: NextI2 var_18A, loc_6C424D
  loc_6C42F7: ImpAdLdUI1
  loc_6C42FB: CI2UI1
  loc_6C42FD: LitI2_Byte 3
  loc_6C42FF: GtI2
  loc_6C4300: BranchF loc_6C4325
  loc_6C4303: ILdRf var_8C
  loc_6C4306: LitStr ".-"
  loc_6C4309: ConcatStr
  loc_6C430A: FStStrNoPop var_D4
  loc_6C430D: FLdPrThis
  loc_6C430E: VCallAd Control_ID_PPUP
  loc_6C4311: FStAdFunc var_D8
  loc_6C4314: FLdPr var_D8
  loc_6C4317: Me.Caption = from_stack_1
  loc_6C431C: FFree1Str var_D4
  loc_6C431F: FFree1Ad var_D8
  loc_6C4322: Branch loc_6C433A
  loc_6C4325: ILdRf var_8C
  loc_6C4328: FLdPrThis
  loc_6C4329: VCallAd Control_ID_PPUP
  loc_6C432C: FStAdFunc var_D8
  loc_6C432F: FLdPr var_D8
  loc_6C4332: Me.Caption = from_stack_1
  loc_6C4337: FFree1Ad var_D8
  loc_6C433A: ExitProcHresult
  loc_6C433B: CStrVarTmp
End Function

Private Function Proc_161_130_5CADB4() '5CADB4
  'Data Table: 45B254
  loc_5CADA8: LitI2_Byte 1
  loc_5CADAA: FLdPr Me
  loc_5CADAD: MemStI2 global_202
  loc_5CADB0: ExitProcHresult
End Function

Private Function Proc_161_131_5E138C(arg_C) '5E138C
  'Data Table: 45B254
  loc_5E1334: ILdI2 arg_C
  loc_5E1337: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5E133C: FLdPrThis
  loc_5E133D: VCallAd Control_ID_Tanques
  loc_5E1340: FStAdFunc var_88
  loc_5E1343: FLdPr var_88
  loc_5E1346: LateIdLdVar var_98 DispID_7 -32767
  loc_5E134D: CBoolVar
  loc_5E134F: AndI4
  loc_5E1350: FFree1Ad var_88
  loc_5E1353: FFree1Var var_98 = ""
  loc_5E1356: BranchF loc_5E1361
  loc_5E1359: Call SSCommand8_UnknownEvent_8()
  loc_5E135E: Branch loc_5E138B
  loc_5E1361: ILdI2 arg_C
  loc_5E1364: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5E1369: FLdPrThis
  loc_5E136A: VCallAd Control_ID_Preset
  loc_5E136D: FStAdFunc var_88
  loc_5E1370: FLdPr var_88
  loc_5E1373: LateIdLdVar var_98 DispID_7 -32767
  loc_5E137A: CBoolVar
  loc_5E137C: AndI4
  loc_5E137D: FFree1Ad var_88
  loc_5E1380: FFree1Var var_98 = ""
  loc_5E1383: BranchF loc_5E138B
  loc_5E1386: Call SSCommand8_UnknownEvent_8()
  loc_5E138B: ExitProcHresult
End Function

Private Function Proc_161_132_67F7DC() '67F7DC
  'Data Table: 45B254
  loc_67F310: FLdPr Me
  loc_67F313: MemLdI2 global_512
  loc_67F316: NotI4
  loc_67F317: BranchF loc_67F358
  loc_67F31A: FLdPrThis
  loc_67F31B: VCallAd Control_ID_SSTanqueLleno
  loc_67F31E: FStAdFunc var_98
  loc_67F321: FLdPr var_98
  loc_67F324: LateIdLdVar var_A8 DispID_74 -32767
  loc_67F32B: PopAd
  loc_67F32D: LitVar_Missing var_118
  loc_67F330: LitVar_Missing var_F8
  loc_67F333: LitVar_Missing var_D8
  loc_67F336: LitI4 &H40
  loc_67F33B: FLdRfVar var_A8
  loc_67F33E: CStrVarTmp
  loc_67F33F: CVarStr var_B8
  loc_67F342: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67F347: FFree1Ad var_98
  loc_67F34A: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = ""
  loc_67F357: ExitProcHresult
  loc_67F358: FLdPr Me
  loc_67F35B: MemLdUI1 Surtidor_Actual
  loc_67F35F: CI4UI1
  loc_67F360: ImpAdLdRf MemVar_74A188
  loc_67F363: Ary1LdI2
  loc_67F364: NotI4
  loc_67F365: CVarBoolI2 var_128
  loc_67F369: LitVarI2 var_A8, 3
  loc_67F36E: LitI4 1
  loc_67F373: ImpAdLdRf MemVar_74BF90
  loc_67F376: CVarRef
  loc_67F37B: FLdRfVar var_B8
  loc_67F37E: ImpAdCallFPR4  = Mid(, , )
  loc_67F383: FLdRfVar var_B8
  loc_67F386: LitVarStr var_108, "\\."
  loc_67F38B: HardType
  loc_67F38C: EqVar var_D8
  loc_67F390: NotVar var_F8
  loc_67F394: AndVar var_118
  loc_67F398: CBoolVarNull
  loc_67F39A: FFreeVar var_A8 = "": var_B8 = ""
  loc_67F3A3: BranchF loc_67F3B1
  loc_67F3A6: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_67F3AB: Call Borrar_UnknownEvent_8()
  loc_67F3B0: ExitProcHresult
  loc_67F3B1: LitStr "CEM44.INI"
  loc_67F3B4: FLdRfVar var_134
  loc_67F3B7: CStr2Ansi
  loc_67F3B8: ILdRf var_134
  loc_67F3BB: LitI4 1
  loc_67F3C0: LitStr "FULLTANK_TYPE"
  loc_67F3C3: FLdRfVar var_130
  loc_67F3C6: CStr2Ansi
  loc_67F3C7: ILdRf var_130
  loc_67F3CA: LitStr "PRESET"
  loc_67F3CD: FLdRfVar var_12C
  loc_67F3D0: CStr2Ansi
  loc_67F3D1: ILdRf var_12C
  loc_67F3D4: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_67F3D9: FStR4 var_138
  loc_67F3DC: SetLastSystemError
  loc_67F3DD: ILdRf var_138
  loc_67F3E0: CUI1I4
  loc_67F3E2: FStUI1 var_86
  loc_67F3E6: FFreeStr var_12C = "": var_130 = ""
  loc_67F3EF: LitI4 &H32
  loc_67F3F4: FLdRfVar var_A8
  loc_67F3F7: ImpAdCallFPR4  = Space()
  loc_67F3FC: FLdRfVar var_A8
  loc_67F3FF: CStrVarTmp
  loc_67F400: FStStr var_90
  loc_67F403: FFree1Var var_A8 = ""
  loc_67F406: LitStr "CEM44.INI"
  loc_67F409: FLdRfVar var_140
  loc_67F40C: CStr2Ansi
  loc_67F40D: ILdRf var_140
  loc_67F410: LitI4 &H32
  loc_67F415: ILdRf var_90
  loc_67F418: FLdRfVar var_13C
  loc_67F41B: CStr2Ansi
  loc_67F41C: ILdRf var_13C
  loc_67F41F: LitStr "990.00"
  loc_67F422: FLdRfVar var_134
  loc_67F425: CStr2Ansi
  loc_67F426: ILdRf var_134
  loc_67F429: LitStr "FULLTANK_VALUE"
  loc_67F42C: FLdRfVar var_130
  loc_67F42F: CStr2Ansi
  loc_67F430: ILdRf var_130
  loc_67F433: LitStr "PRESET"
  loc_67F436: FLdRfVar var_12C
  loc_67F439: CStr2Ansi
  loc_67F43A: ILdRf var_12C
  loc_67F43D: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_67F442: SetLastSystemError
  loc_67F443: ILdRf var_13C
  loc_67F446: FLdRfVar var_90
  loc_67F449: CStr2Uni
  loc_67F44B: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_13C = ""
  loc_67F458: FLdUI1
  loc_67F45C: CI2UI1
  loc_67F45E: LitI2_Byte 0
  loc_67F460: EqI2
  loc_67F461: BranchF loc_67F49D
  loc_67F464: ILdRf var_90
  loc_67F467: CR8Str
  loc_67F469: ImpAdLdFPR4 MemVar_74C2E0
  loc_67F46C: MulR8
  loc_67F46D: CI4R8
  loc_67F46E: FStR4 var_8C
  loc_67F471: LitI4 1
  loc_67F476: LitI4 1
  loc_67F47B: ImpAdLdRf MemVar_74C364
  loc_67F47E: CVarRef
  loc_67F483: ILdRf var_8C
  loc_67F486: CR8I4
  loc_67F487: ImpAdLdFPR4 MemVar_74C2E0
  loc_67F48A: DivR8
  loc_67F48B: CVarR8
  loc_67F48F: ImpAdCallI2 Format$(, )
  loc_67F494: FStStr var_90
  loc_67F497: FFree1Var var_A8 = ""
  loc_67F49A: Branch loc_67F4DA
  loc_67F49D: ILdRf var_90
  loc_67F4A0: CR8Str
  loc_67F4A2: LitI2_Byte &H64
  loc_67F4A4: CR8I2
  loc_67F4A5: MulR8
  loc_67F4A6: CI4R8
  loc_67F4A7: FStR4 var_8C
  loc_67F4AA: LitI4 1
  loc_67F4AF: LitI4 1
  loc_67F4B4: LitVarStr var_E8, "###,###,###.00"
  loc_67F4B9: FStVarCopyObj var_B8
  loc_67F4BC: FLdRfVar var_B8
  loc_67F4BF: ILdRf var_8C
  loc_67F4C2: CR8I4
  loc_67F4C3: LitI2_Byte &H64
  loc_67F4C5: CR8I2
  loc_67F4C6: DivR8
  loc_67F4C7: CVarR8
  loc_67F4CB: ImpAdCallI2 Format$(, )
  loc_67F4D0: FStStr var_90
  loc_67F4D3: FFreeVar var_A8 = ""
  loc_67F4DA: ILdRf var_8C
  loc_67F4DD: LitI4 0
  loc_67F4E2: EqI4
  loc_67F4E3: BranchF loc_67F4E7
  loc_67F4E6: ExitProcHresult
  loc_67F4E7: LitI2_Byte 0
  loc_67F4E9: CUI1I2
  loc_67F4EB: FLdRfVar var_88
  loc_67F4EE: LitI2_Byte 3
  loc_67F4F0: CUI1I2
  loc_67F4F2: ForUI1 var_144
  loc_67F4F8: FLdRfVar var_148
  loc_67F4FB: FLdUI1
  loc_67F4FF: CI2UI1
  loc_67F501: FLdPrThis
  loc_67F502: VCallAd Control_ID_BotonPreset
  loc_67F505: FStAdFunc var_98
  loc_67F508: FLdPr var_98
  loc_67F50B: Set from_stack_2 = Me(from_stack_1)
  loc_67F510: FLdPr var_148
  loc_67F513: LateIdLdVar var_A8 DispID_-501 -1
  loc_67F51A: CI4Var
  loc_67F51C: LitI4 &HFF0000
  loc_67F521: EqI4
  loc_67F522: FLdRfVar var_150
  loc_67F525: FLdUI1
  loc_67F529: CI2UI1
  loc_67F52B: FLdPrThis
  loc_67F52C: VCallAd Control_ID_BotonPreset
  loc_67F52F: FStAdFunc var_14C
  loc_67F532: FLdPr var_14C
  loc_67F535: Set from_stack_2 = Me(from_stack_1)
  loc_67F53A: FLdPr var_150
  loc_67F53D: LateIdLdVar var_B8 DispID_7 -32767
  loc_67F544: CBoolVar
  loc_67F546: AndI4
  loc_67F547: FFreeAd var_98 = "": var_148 = "": var_14C = ""
  loc_67F552: FFreeVar var_A8 = ""
  loc_67F559: BranchF loc_67F571
  loc_67F55C: FLdUI1
  loc_67F560: CI2UI1
  loc_67F562: LitI2_Byte 1
  loc_67F564: AddI2
  loc_67F565: CUI1I2
  loc_67F567: FLdPr Me
  loc_67F56A: MemStUI1
  loc_67F56E: Branch loc_67F57A
  loc_67F571: FLdRfVar var_88
  loc_67F574: NextUI1
  loc_67F57A: LitI2_Byte 0
  loc_67F57C: FLdPr Me
  loc_67F57F: MemLdUI1 Surtidor_Actual
  loc_67F583: CI4UI1
  loc_67F584: FLdPr Me
  loc_67F587: MemLdRfVar from_stack_1.global_228
  loc_67F58A: Ary1StI2
  loc_67F58B: LitI2_Byte &HFF
  loc_67F58D: FLdPr Me
  loc_67F590: MemLdUI1 Surtidor_Actual
  loc_67F594: CI4UI1
  loc_67F595: FLdPr Me
  loc_67F598: MemLdRfVar from_stack_1.global_204
  loc_67F59B: Ary1StI2
  loc_67F59C: from_stack_1v = Proc_161_121_608CE8()
  loc_67F5A1: FLdRfVar var_154
  loc_67F5A4: LitStr vbNullString
  loc_67F5A7: FStStrCopy var_12C
  loc_67F5AA: FLdRfVar var_12C
  loc_67F5AD: FLdPr Me
  loc_67F5B0: MemLdUI1 presetgrade
  loc_67F5B4: CI2UI1
  loc_67F5B6: LitI2_Byte 1
  loc_67F5B8: SubI2
  loc_67F5B9: CUI1I2
  loc_67F5BB: PopTmpLdAd1
  loc_67F5BF: FLdRfVar var_8C
  loc_67F5C2: FLdRfVar var_86
  loc_67F5C5: FLdPr Me
  loc_67F5C8: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_67F5CB: FLdRfVar var_98
  loc_67F5CE: ImpAdLdRf MemVar_74C760
  loc_67F5D1: NewIfNullPr Formx
  loc_67F5D4: from_stack_1v = Formx.global_4589716Get()
  loc_67F5D9: FLdPr var_98
  loc_67F5DC:  = Formx.BackColor
  loc_67F5E1: FLdI2 var_154
  loc_67F5E4: NotI4
  loc_67F5E5: FFree1Str var_12C
  loc_67F5E8: FFree1Ad var_98
  loc_67F5EB: BranchF loc_67F660
  loc_67F5EE: FLdRfVar var_A8
  loc_67F5F1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67F5F6: FLdRfVar var_A8
  loc_67F5F9: CBoolVarNull
  loc_67F5FB: FFree1Var var_A8 = ""
  loc_67F5FE: BranchF loc_67F65D
  loc_67F601: FLdPr Me
  loc_67F604: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_67F607: CVarRef
  loc_67F60C: FLdRfVar var_A8
  loc_67F60F: ImpAdCallFPR4  = Str()
  loc_67F614: LitI2_Byte 4
  loc_67F616: CUI1I2
  loc_67F618: PopTmpLdAd1
  loc_67F61C: LitVarStr var_E8, "Sending Preset Pump "
  loc_67F621: FLdRfVar var_A8
  loc_67F624: ConcatVar var_B8
  loc_67F628: LitVarStr var_108, "Error"
  loc_67F62D: ConcatVar var_D8
  loc_67F631: CStrVarTmp
  loc_67F632: PopTmpLdAdStr
  loc_67F636: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_67F63B: FFree1Str var_12C
  loc_67F63E: FFreeVar var_A8 = "": var_B8 = ""
  loc_67F647: ILdRf Me
  loc_67F64A: FStAdNoPop
  loc_67F64E: ImpAdLdRf MemVar_7520D4
  loc_67F651: NewIfNullPr Global
  loc_67F654: Global.Unload from_stack_1
  loc_67F659: FFree1Ad var_98
  loc_67F65C: ExitProcHresult
  loc_67F65D: Branch loc_67F5A1
  loc_67F660: FLdRfVar var_A8
  loc_67F663: ImpAdCallFPR4  = Time
  loc_67F668: LitI4 1
  loc_67F66D: LitI4 1
  loc_67F672: LitVarStr var_C8, "hh:mm"
  loc_67F677: FStVarCopyObj var_B8
  loc_67F67A: FLdRfVar var_B8
  loc_67F67D: FLdRfVar var_A8
  loc_67F680: ImpAdCallI2 Format$(, )
  loc_67F685: FStStrNoPop var_12C
  loc_67F688: LitStr " "
  loc_67F68B: ConcatStr
  loc_67F68C: FStStr var_94
  loc_67F68F: FFree1Str var_12C
  loc_67F692: FFreeVar var_A8 = ""
  loc_67F699: FLdRfVar var_152
  loc_67F69C: FLdPrThis
  loc_67F69D: VCallAd Control_ID_lblPresetSchlumberger
  loc_67F6A0: FStAdFunc var_98
  loc_67F6A3: FLdPr var_98
  loc_67F6A6:  = Me.Visible
  loc_67F6AB: FLdRfVar var_12C
  loc_67F6AE: FLdPr Me
  loc_67F6B1: MemLdUI1 Surtidor_Actual
  loc_67F6B5: CI4UI1
  loc_67F6B6: FLdPr Me
  loc_67F6B9: MemLdUI1 presetgrade
  loc_67F6BD: CI2UI1
  loc_67F6BF: LitI2_Byte 1
  loc_67F6C1: SubI2
  loc_67F6C2: CI4UI1
  loc_67F6C3: ImpAdLdRf MemVar_74C12C
  loc_67F6C6: AryLdPr
  loc_67F6C9: MemLdUI1 global_0
  loc_67F6CD: CI2UI1
  loc_67F6CF: ImpAdLdRf MemVar_74A220
  loc_67F6D2: NewIfNullPr clsProducts
  loc_67F6DA: LitVarI2 var_A8, 10
  loc_67F6DF: LitI4 1
  loc_67F6E4: ILdRf var_12C
  loc_67F6E7: ImpAdCallI2 Mid$(, , )
  loc_67F6EC: FStStr var_130
  loc_67F6EF: LitI4 1
  loc_67F6F4: LitI4 1
  loc_67F6F9: LitVarStr var_E8, "!@@@@@@@@@@  "
  loc_67F6FE: FStVarCopyObj var_D8
  loc_67F701: FLdRfVar var_D8
  loc_67F704: FLdZeroAd var_130
  loc_67F707: CVarStr var_B8
  loc_67F70A: ImpAdCallI2 Format$(, )
  loc_67F70F: FStStr var_134
  loc_67F712: ILdRf var_94
  loc_67F715: CVarStr var_174
  loc_67F718: LitVarStr var_128, "----------  "
  loc_67F71D: FStVarCopyObj var_118
  loc_67F720: FLdRfVar var_118
  loc_67F723: FLdZeroAd var_134
  loc_67F726: CVarStr var_F8
  loc_67F729: FLdI2 var_152
  loc_67F72C: NotI4
  loc_67F72D: CVarBoolI2 var_108
  loc_67F731: FLdRfVar var_164
  loc_67F734: ImpAdCallFPR4  = IIf(, , )
  loc_67F739: FLdRfVar var_164
  loc_67F73C: ConcatVar var_184
  loc_67F740: CStrVarTmp
  loc_67F741: FStStr var_94
  loc_67F744: FFreeStr var_12C = "": var_130 = ""
  loc_67F74D: FFree1Ad var_98
  loc_67F750: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_108 = "": var_F8 = "": var_118 = "": var_164 = ""
  loc_67F763: FLdUI1
  loc_67F767: CI2UI1
  loc_67F769: LitI2_Byte 0
  loc_67F76B: EqI2
  loc_67F76C: BranchF loc_67F7A3
  loc_67F76F: ILdRf var_94
  loc_67F772: LitI4 1
  loc_67F777: LitI4 1
  loc_67F77C: LitStr "@@@@@@@@@@ "
  loc_67F77F: ImpAdLdI4 MemVar_74BED0
  loc_67F782: ConcatStr
  loc_67F783: CVarStr var_A8
  loc_67F786: FLdRfVar var_90
  loc_67F789: CVarRef
  loc_67F78E: ImpAdCallI2 Format$(, )
  loc_67F793: FStStrNoPop var_12C
  loc_67F796: ConcatStr
  loc_67F797: FStStr var_94
  loc_67F79A: FFree1Str var_12C
  loc_67F79D: FFree1Var var_A8 = ""
  loc_67F7A0: Branch loc_67F7D4
  loc_67F7A3: ILdRf var_94
  loc_67F7A6: LitI4 1
  loc_67F7AB: LitI4 1
  loc_67F7B0: LitStr "@@@@@@@@@@ "
  loc_67F7B3: ImpAdLdI4 MemVar_74BEC0
  loc_67F7B6: ConcatStr
  loc_67F7B7: CVarStr var_A8
  loc_67F7BA: FLdRfVar var_90
  loc_67F7BD: CVarRef
  loc_67F7C2: ImpAdCallI2 Format$(, )
  loc_67F7C7: FStStrNoPop var_12C
  loc_67F7CA: ConcatStr
  loc_67F7CB: FStStr var_94
  loc_67F7CE: FFree1Str var_12C
  loc_67F7D1: FFree1Var var_A8 = ""
  loc_67F7D4: Call Borrar_UnknownEvent_8()
  loc_67F7D9: ExitProcHresult
End Function

Private Function Proc_161_133_5CACC4(arg_C) '5CACC4
  'Data Table: 45B254
  loc_5CACB8: ILdRf arg_C
  loc_5CACBB: Call Nro_Surtidor_Click(from_stack_1v)
  loc_5CACC0: ExitProcHresult
End Function

Private Function Proc_161_134_70607C(arg_18) '70607C
  'Data Table: 45B254
  loc_704E6C: LitI2_Byte 1
  loc_704E6E: FLdRfVar var_CA
  loc_704E71: LitI2_Byte &H20
  loc_704E73: ForI2 var_D8
  loc_704E79: FLdI2 var_CA
  loc_704E7C: CI4UI1
  loc_704E7D: FLdPr Me
  loc_704E80: MemLdRfVar from_stack_1.global_204
  loc_704E83: Ary1LdI2
  loc_704E84: BranchF loc_704EC3
  loc_704E87: FLdI2 var_CA
  loc_704E8A: CI4UI1
  loc_704E8B: FLdPr Me
  loc_704E8E: MemLdRfVar from_stack_1.global_228
  loc_704E91: Ary1LdI2
  loc_704E92: LitI2_Byte 1
  loc_704E94: AddI2
  loc_704E95: FLdI2 var_CA
  loc_704E98: CI4UI1
  loc_704E99: FLdPr Me
  loc_704E9C: MemLdRfVar from_stack_1.global_228
  loc_704E9F: Ary1StI2
  loc_704EA0: FLdI2 var_CA
  loc_704EA3: CI4UI1
  loc_704EA4: FLdPr Me
  loc_704EA7: MemLdRfVar from_stack_1.global_228
  loc_704EAA: Ary1LdI2
  loc_704EAB: LitI2_Byte &HF
  loc_704EAD: GtI2
  loc_704EAE: BranchF loc_704EC3
  loc_704EB1: from_stack_1v = Proc_161_122_5F7640()
  loc_704EB6: LitI2_Byte 0
  loc_704EB8: FLdI2 var_CA
  loc_704EBB: CI4UI1
  loc_704EBC: FLdPr Me
  loc_704EBF: MemLdRfVar from_stack_1.global_204
  loc_704EC2: Ary1StI2
  loc_704EC3: FLdRfVar var_CA
  loc_704EC6: NextI2 var_D8, loc_704E79
  loc_704ECB: LitI2_Byte 0
  loc_704ECD: FLdPrThis
  loc_704ECE: VCallAd Control_ID_Timer1
  loc_704ED1: FStAdFunc var_DC
  loc_704ED4: FLdPr var_DC
  loc_704ED7: Me.Enabled = from_stack_1b
  loc_704EDC: FFree1Ad var_DC
  loc_704EDF: ImpAdLdI4 MemVar_74A154
  loc_704EE2: LitStr "6.0"
  loc_704EE5: NeStr
  loc_704EE7: ImpAdLdI4 MemVar_74A154
  loc_704EEA: LitStr "6.1"
  loc_704EED: NeStr
  loc_704EEF: AndI4
  loc_704EF0: BranchF loc_704EF8
  loc_704EF3: Call EstadoNumLock_UnknownEvent_8()
  loc_704EF8: FLdRfVar var_EC
  loc_704EFB: ImpAdCallFPR4  = Now
  loc_704F00: FLdRfVar var_EC
  loc_704F03: FLdRfVar var_FC
  loc_704F06: ImpAdCallFPR4  = Second()
  loc_704F0B: FLdRfVar var_FC
  loc_704F0E: LitVarI2 var_10C, 5
  loc_704F13: ModVar var_11C
  loc_704F17: LitVarI2 var_12C, 0
  loc_704F1C: HardType
  loc_704F1D: EqVarBool
  loc_704F1F: FFreeVar var_EC = ""
  loc_704F26: BranchF loc_705296
  loc_704F29: FLdRfVar var_FC
  loc_704F2C: ImpAdCallFPR4  = Date
  loc_704F31: FLdRfVar var_1AC
  loc_704F34: ImpAdCallFPR4  = Time
  loc_704F39: LitI4 9
  loc_704F3E: FLdRfVar var_EC
  loc_704F41: ImpAdCallFPR4  = Space()
  loc_704F46: FLdRfVar var_EC
  loc_704F49: LitI4 1
  loc_704F4E: LitI4 1
  loc_704F53: LitVarStr var_10C, "dd / mm / yyyy"
  loc_704F58: FStVarCopyObj var_11C
  loc_704F5B: FLdRfVar var_11C
  loc_704F5E: FLdRfVar var_FC
  loc_704F61: FLdRfVar var_13C
  loc_704F64: ImpAdCallFPR4  = Format(, )
  loc_704F69: FLdRfVar var_13C
  loc_704F6C: ConcatVar var_14C
  loc_704F70: LitI4 &H28
  loc_704F75: FLdRfVar var_15C
  loc_704F78: ImpAdCallFPR4  = Space()
  loc_704F7D: FLdRfVar var_15C
  loc_704F80: ConcatVar var_16C
  loc_704F84: LitVarStr var_12C, "CEM - 44"
  loc_704F89: ConcatVar var_17C
  loc_704F8D: LitI4 &H32
  loc_704F92: FLdRfVar var_18C
  loc_704F95: ImpAdCallFPR4  = Space()
  loc_704F9A: FLdRfVar var_18C
  loc_704F9D: ConcatVar var_19C
  loc_704FA1: LitI4 1
  loc_704FA6: LitI4 1
  loc_704FAB: LitVarStr var_1BC, "HH:MM"
  loc_704FB0: FStVarCopyObj var_1CC
  loc_704FB3: FLdRfVar var_1CC
  loc_704FB6: FLdRfVar var_1AC
  loc_704FB9: FLdRfVar var_1DC
  loc_704FBC: ImpAdCallFPR4  = Format(, )
  loc_704FC1: FLdRfVar var_1DC
  loc_704FC4: ConcatVar var_1EC
  loc_704FC8: CStrVarVal var_1F0
  loc_704FCC: ImpAdLdRf MemVar_74D8B0
  loc_704FCF: NewIfNullPr Consola
  loc_704FD2: Consola.Caption = from_stack_1
  loc_704FD7: FFree1Str var_1F0
  loc_704FDA: FFreeVar var_FC = "": var_11C = "": var_EC = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_19C = "": var_1DC = ""
  loc_704FF9: FLdPrThis
  loc_704FFA: VCallAd Control_ID_Timer1
  loc_704FFD: FStAdFunc var_1F8
  loc_705000: ILdRf Me
  loc_705003: CastAd
  loc_705006: FStAdFunc var_1F4
  loc_705009: FLdRfVar var_1F4
  loc_70500C: FLdZeroAd var_1F8
  loc_70500F: FStAdFunc var_DC
  loc_705012: FLdRfVar var_DC
  loc_705015: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_70501A: FFreeAd var_DC = "": var_1F4 = ""
  loc_705023: FLdRfVar var_1FA
  loc_705026: FLdRfVar var_C8
  loc_705029: LdFixedStr
  loc_70502C: PopTmpLdAdStr
  loc_705030: FLdRfVar var_DC
  loc_705033: ImpAdLdRf MemVar_74C760
  loc_705036: NewIfNullPr Formx
  loc_705039: from_stack_1v = Formx.global_4589716Get()
  loc_70503E: FLdPr var_DC
  loc_705041:  = Formx.MousePointer
  loc_705046: ILdRf var_1F0
  loc_705049: FLdRfVar var_C8
  loc_70504C: StFixedStr
  loc_70504F: FLdI2 var_1FA
  loc_705052: NotI4
  loc_705053: FFree1Str var_1F0
  loc_705056: FFree1Ad var_DC
  loc_705059: BranchF loc_7050A6
  loc_70505C: FLdRfVar var_EC
  loc_70505F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_705064: FLdRfVar var_EC
  loc_705067: CBoolVarNull
  loc_705069: FFree1Var var_EC = ""
  loc_70506C: BranchF loc_7050A3
  loc_70506F: FLdPr Me
  loc_705072: MemLdI2 global_112
  loc_705075: NotI4
  loc_705076: BranchF loc_70508D
  loc_705079: LitI2_Byte &HFF
  loc_70507B: FLdPrThis
  loc_70507C: VCallAd Control_ID_Timer1
  loc_70507F: FStAdFunc var_DC
  loc_705082: FLdPr var_DC
  loc_705085: Me.Enabled = from_stack_1b
  loc_70508A: FFree1Ad var_DC
  loc_70508D: ILdRf Me
  loc_705090: FStAdNoPop
  loc_705094: ImpAdLdRf MemVar_7520D4
  loc_705097: NewIfNullPr Global
  loc_70509A: Global.Unload from_stack_1
  loc_70509F: FFree1Ad var_DC
  loc_7050A2: ExitProcHresult
  loc_7050A3: Branch loc_705023
  loc_7050A6: LitI4 1
  loc_7050AB: FLdRfVar var_C8
  loc_7050AE: LdFixedStr
  loc_7050B1: FStStrNoPop var_1F0
  loc_7050B4: LitStr "T"
  loc_7050B7: LitI4 0
  loc_7050BC: FnInStr4
  loc_7050BE: LitI4 0
  loc_7050C3: NeI4
  loc_7050C4: ImpAdCallI2 Proc_166_7_5EE3BC()
  loc_7050C9: AndI4
  loc_7050CA: FFree1Str var_1F0
  loc_7050CD: BranchF loc_70515E
  loc_7050D0: LitI2_Byte 0
  loc_7050D2: FLdPrThis
  loc_7050D3: VCallAd Control_ID_Timer1
  loc_7050D6: FStAdFunc var_DC
  loc_7050D9: FLdPr var_DC
  loc_7050DC: Me.Enabled = from_stack_1b
  loc_7050E1: FFree1Ad var_DC
  loc_7050E4: LitVarI2 var_EC, 1
  loc_7050E9: LitI4 1
  loc_7050EE: ImpAdLdI4 MemVar_74BEAC
  loc_7050F1: ImpAdCallI2 Mid$(, , )
  loc_7050F6: FStStrNoPop var_1F0
  loc_7050F9: LitStr "1"
  loc_7050FC: EqStr
  loc_7050FE: FFree1Str var_1F0
  loc_705101: FFree1Var var_EC = ""
  loc_705104: BranchF loc_705114
  loc_705107: LitI2_Byte &HFF
  loc_705109: ImpAdLdRf MemVar_74C760
  loc_70510C: NewIfNullPr Formx
  loc_70510F: Call Formx.ImpresionFacturaDiferencia(from_stack_1v)
  loc_705114: LitStr "T"
  loc_705117: FStStrCopy var_1F0
  loc_70511A: FLdRfVar var_1F0
  loc_70511D: ImpAdLdRf MemVar_74C760
  loc_705120: NewIfNullPr Formx
  loc_705123: Call Formx.ImpresionReporte(from_stack_1v)
  loc_705128: FFree1Str var_1F0
  loc_70512B: LitI2_Byte &HFF
  loc_70512D: FLdPrThis
  loc_70512E: VCallAd Control_ID_PCLOSE_DAY
  loc_705131: FStAdFunc var_DC
  loc_705134: FLdPr var_DC
  loc_705137: Formx.Timer.Enabled = from_stack_1b
  loc_70513C: FFree1Ad var_DC
  loc_70513F: FLdPr Me
  loc_705142: MemLdI2 global_112
  loc_705145: NotI4
  loc_705146: BranchF loc_70515D
  loc_705149: LitI2_Byte &HFF
  loc_70514B: FLdPrThis
  loc_70514C: VCallAd Control_ID_Timer1
  loc_70514F: FStAdFunc var_DC
  loc_705152: FLdPr var_DC
  loc_705155: Me.Enabled = from_stack_1b
  loc_70515A: FFree1Ad var_DC
  loc_70515D: ExitProcHresult
  loc_70515E: LitI4 1
  loc_705163: FLdRfVar var_C8
  loc_705166: LdFixedStr
  loc_705169: FStStrNoPop var_1F0
  loc_70516C: LitStr "D"
  loc_70516F: LitI4 0
  loc_705174: FnInStr4
  loc_705176: LitI4 0
  loc_70517B: NeI4
  loc_70517C: ImpAdCallI2 Proc_166_8_5EE620()
  loc_705181: AndI4
  loc_705182: FFree1Str var_1F0
  loc_705185: BranchF loc_7051E6
  loc_705188: LitI2_Byte 0
  loc_70518A: FLdPrThis
  loc_70518B: VCallAd Control_ID_Timer1
  loc_70518E: FStAdFunc var_DC
  loc_705191: FLdPr var_DC
  loc_705194: Me.Enabled = from_stack_1b
  loc_705199: FFree1Ad var_DC
  loc_70519C: LitStr "D"
  loc_70519F: FStStrCopy var_1F0
  loc_7051A2: FLdRfVar var_1F0
  loc_7051A5: ImpAdLdRf MemVar_74C760
  loc_7051A8: NewIfNullPr Formx
  loc_7051AB: Call Formx.ImpresionReporte(from_stack_1v)
  loc_7051B0: FFree1Str var_1F0
  loc_7051B3: LitI2_Byte &HFF
  loc_7051B5: FLdPrThis
  loc_7051B6: VCallAd Control_ID_PCLOSE_DAY
  loc_7051B9: FStAdFunc var_DC
  loc_7051BC: FLdPr var_DC
  loc_7051BF: Formx.Timer.Enabled = from_stack_1b
  loc_7051C4: FFree1Ad var_DC
  loc_7051C7: FLdPr Me
  loc_7051CA: MemLdI2 global_112
  loc_7051CD: NotI4
  loc_7051CE: BranchF loc_7051E5
  loc_7051D1: LitI2_Byte &HFF
  loc_7051D3: FLdPrThis
  loc_7051D4: VCallAd Control_ID_Timer1
  loc_7051D7: FStAdFunc var_DC
  loc_7051DA: FLdPr var_DC
  loc_7051DD: Me.Enabled = from_stack_1b
  loc_7051E2: FFree1Ad var_DC
  loc_7051E5: ExitProcHresult
  loc_7051E6: LitI4 1
  loc_7051EB: FLdRfVar var_C8
  loc_7051EE: LdFixedStr
  loc_7051F1: FStStrNoPop var_1F0
  loc_7051F4: LitStr "M"
  loc_7051F7: LitI4 0
  loc_7051FC: FnInStr4
  loc_7051FE: LitI4 0
  loc_705203: NeI4
  loc_705204: ImpAdCallI2 Proc_166_9_5EE158()
  loc_705209: AndI4
  loc_70520A: FFree1Str var_1F0
  loc_70520D: BranchF loc_70526E
  loc_705210: LitI2_Byte 0
  loc_705212: FLdPrThis
  loc_705213: VCallAd Control_ID_Timer1
  loc_705216: FStAdFunc var_DC
  loc_705219: FLdPr var_DC
  loc_70521C: Me.Enabled = from_stack_1b
  loc_705221: FFree1Ad var_DC
  loc_705224: LitStr "M"
  loc_705227: FStStrCopy var_1F0
  loc_70522A: FLdRfVar var_1F0
  loc_70522D: ImpAdLdRf MemVar_74C760
  loc_705230: NewIfNullPr Formx
  loc_705233: Call Formx.ImpresionReporte(from_stack_1v)
  loc_705238: FFree1Str var_1F0
  loc_70523B: LitI2_Byte &HFF
  loc_70523D: FLdPrThis
  loc_70523E: VCallAd Control_ID_PCLOSE_DAY
  loc_705241: FStAdFunc var_DC
  loc_705244: FLdPr var_DC
  loc_705247: Formx.Timer.Enabled = from_stack_1b
  loc_70524C: FFree1Ad var_DC
  loc_70524F: FLdPr Me
  loc_705252: MemLdI2 global_112
  loc_705255: NotI4
  loc_705256: BranchF loc_70526D
  loc_705259: LitI2_Byte &HFF
  loc_70525B: FLdPrThis
  loc_70525C: VCallAd Control_ID_Timer1
  loc_70525F: FStAdFunc var_DC
  loc_705262: FLdPr var_DC
  loc_705265: Me.Enabled = from_stack_1b
  loc_70526A: FFree1Ad var_DC
  loc_70526D: ExitProcHresult
  loc_70526E: FLdRfVar var_EC
  loc_705271: ImpAdCallFPR4  = Now
  loc_705276: FLdRfVar var_EC
  loc_705279: FLdRfVar var_FC
  loc_70527C: ImpAdCallFPR4  = Minute()
  loc_705281: FLdRfVar var_FC
  loc_705284: LitVarI2 var_10C, 0
  loc_705289: HardType
  loc_70528A: EqVarBool
  loc_70528C: FFreeVar var_EC = ""
  loc_705293: BranchF loc_705296
  loc_705296: FLdRfVar var_1FA
  loc_705299: FLdRfVar var_C8
  loc_70529C: LdFixedStr
  loc_70529F: PopTmpLdAdStr
  loc_7052A3: FLdRfVar var_DC
  loc_7052A6: ImpAdLdRf MemVar_74C760
  loc_7052A9: NewIfNullPr Formx
  loc_7052AC: from_stack_1v = Formx.global_4589716Get()
  loc_7052B1: FLdPr var_DC
  loc_7052B4:  = Formx.Top
  loc_7052B9: ILdRf var_1F0
  loc_7052BC: FLdRfVar var_C8
  loc_7052BF: StFixedStr
  loc_7052C2: FLdI2 var_1FA
  loc_7052C5: NotI4
  loc_7052C6: FFree1Str var_1F0
  loc_7052C9: FFree1Ad var_DC
  loc_7052CC: BranchF loc_7052FB
  loc_7052CF: FLdRfVar var_EC
  loc_7052D2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7052D7: FLdRfVar var_EC
  loc_7052DA: CBoolVarNull
  loc_7052DC: FFree1Var var_EC = ""
  loc_7052DF: BranchF loc_7052F8
  loc_7052E2: ILdRf Me
  loc_7052E5: FStAdNoPop
  loc_7052E9: ImpAdLdRf MemVar_7520D4
  loc_7052EC: NewIfNullPr Global
  loc_7052EF: Global.Unload from_stack_1
  loc_7052F4: FFree1Ad var_DC
  loc_7052F7: ExitProcHresult
  loc_7052F8: Branch loc_705296
  loc_7052FB: LitI2_Byte 0
  loc_7052FD: PopTmpLdAd2 var_1FA
  loc_705300: from_stack_2v = Proc_161_139_62BBB4(from_stack_1v)
  loc_705305: LitVarI2 var_EC, 1
  loc_70530A: LitI4 &H21
  loc_70530F: FLdRfVar var_C8
  loc_705312: LdFixedStr
  loc_705315: PopTmpLdAdStr
  loc_705319: CVarRef
  loc_70531E: FLdRfVar var_FC
  loc_705321: ImpAdCallFPR4  = Mid(, , )
  loc_705326: ILdRf var_1F0
  loc_705329: FLdRfVar var_C8
  loc_70532C: StFixedStr
  loc_70532F: FLdRfVar var_FC
  loc_705332: CStrVarVal var_200
  loc_705336: ImpAdCallI2 Asc()
  loc_70533B: CStrUI1
  loc_70533D: FStStr var_D0
  loc_705340: FFreeStr var_1F0 = ""
  loc_705347: FFreeVar var_EC = ""
  loc_70534E: ILdRf var_D0
  loc_705351: FStStrCopy var_204
  loc_705354: ILdRf var_204
  loc_705357: LitI2_Byte 2
  loc_705359: CStrI2
  loc_70535B: FStStrNoPop var_1F0
  loc_70535E: EqStr
  loc_705360: FFree1Str var_1F0
  loc_705363: BranchF loc_705414
  loc_705366: LitI2_Byte &HFF
  loc_705368: FLdPrThis
  loc_705369: VCallAd Control_ID_EmergenciaStatus
  loc_70536C: FStAdFunc var_DC
  loc_70536F: FLdPr var_DC
  loc_705372: Me.Visible = from_stack_1b
  loc_705377: FFree1Ad var_DC
  loc_70537A: LitVar_Missing var_10C
  loc_70537D: PopAdLdVar
  loc_70537E: FLdPrThis
  loc_70537F: VCallAd Control_ID_EmergenciaStatus
  loc_705382: FStAdFunc var_DC
  loc_705385: FLdPr var_DC
  loc_705388: Me.ZOrder from_stack_1
  loc_70538D: FFree1Ad var_DC
  loc_705390: FLdPr Me
  loc_705393: MemLdStr global_368
  loc_705396: FLdPrThis
  loc_705397: VCallAd Control_ID_EmergenciaLabel
  loc_70539A: FStAdFunc var_DC
  loc_70539D: FLdPr var_DC
  loc_7053A0: Me.Caption = from_stack_1
  loc_7053A5: FFree1Ad var_DC
  loc_7053A8: LitI4 &HFF
  loc_7053AD: FLdPrThis
  loc_7053AE: VCallAd Control_ID_EmergenciaStatus
  loc_7053B1: FStAdFunc var_DC
  loc_7053B4: FLdPr var_DC
  loc_7053B7: Me.BackColor = from_stack_1
  loc_7053BC: FFree1Ad var_DC
  loc_7053BF: FLdRfVar var_208
  loc_7053C2: FLdPrThis
  loc_7053C3: VCallAd Control_ID_EmergenciaLabel
  loc_7053C6: FStAdFunc var_DC
  loc_7053C9: FLdPr var_DC
  loc_7053CC:  = Me.ForeColor
  loc_7053D1: ILdRf var_208
  loc_7053D4: LitI4 &HFF
  loc_7053D9: EqI4
  loc_7053DA: FFree1Ad var_DC
  loc_7053DD: BranchF loc_7053FA
  loc_7053E0: LitI4 &HFF00
  loc_7053E5: FLdPrThis
  loc_7053E6: VCallAd Control_ID_EmergenciaLabel
  loc_7053E9: FStAdFunc var_DC
  loc_7053EC: FLdPr var_DC
  loc_7053EF: Me.ForeColor = from_stack_1
  loc_7053F4: FFree1Ad var_DC
  loc_7053F7: Branch loc_705411
  loc_7053FA: LitI4 &HFF
  loc_7053FF: FLdPrThis
  loc_705400: VCallAd Control_ID_EmergenciaLabel
  loc_705403: FStAdFunc var_DC
  loc_705406: FLdPr var_DC
  loc_705409: Me.ForeColor = from_stack_1
  loc_70540E: FFree1Ad var_DC
  loc_705411: Branch loc_7059A6
  loc_705414: ILdRf var_204
  loc_705417: LitI2_Byte 1
  loc_705419: CStrI2
  loc_70541B: FStStrNoPop var_1F0
  loc_70541E: EqStr
  loc_705420: FFree1Str var_1F0
  loc_705423: BranchF loc_705490
  loc_705426: ImpAdLdI2 MemVar_74C382
  loc_705429: BranchF loc_705447
  loc_70542C: LitI2_Byte 0
  loc_70542E: ImpAdStI2 MemVar_74C382
  loc_705431: ILdRf Me
  loc_705434: FStAdNoPop
  loc_705438: ImpAdLdRf MemVar_7520D4
  loc_70543B: NewIfNullPr Global
  loc_70543E: Global.Unload from_stack_1
  loc_705443: FFree1Ad var_DC
  loc_705446: ExitProcHresult
  loc_705447: LitI2_Byte 0
  loc_705449: FLdPrThis
  loc_70544A: VCallAd Control_ID_EmergenciaStatus
  loc_70544D: FStAdFunc var_DC
  loc_705450: FLdPr var_DC
  loc_705453: Me.Visible = from_stack_1b
  loc_705458: FFree1Ad var_DC
  loc_70545B: LitVar_FALSE
  loc_70545F: PopAdLdVar
  loc_705460: FLdPrThis
  loc_705461: VCallAd Control_ID_PaneldeMensajes
  loc_705464: FStAdFunc var_DC
  loc_705467: FLdPr var_DC
  loc_70546A: LateIdSt
  loc_70546F: FFree1Ad var_DC
  loc_705472: FLdPr Me
  loc_705475: MemLdI2 global_108
  loc_705478: BranchF loc_70548D
  loc_70547B: LitI2_Byte 0
  loc_70547D: FLdPr Me
  loc_705480: MemStI2 global_108
  loc_705483: Call RefreshAllSales()
  loc_705488: Call RefreshAllTotals()
  loc_70548D: Branch loc_7059A6
  loc_705490: ILdRf var_204
  loc_705493: LitI2_Byte 5
  loc_705495: CStrI2
  loc_705497: FStStrNoPop var_1F0
  loc_70549A: EqStr
  loc_70549C: FFree1Str var_1F0
  loc_70549F: BranchF loc_7054F1
  loc_7054A2: LitVar_TRUE var_10C
  loc_7054A5: PopAdLdVar
  loc_7054A6: FLdPrThis
  loc_7054A7: VCallAd Control_ID_PaneldeMensajes
  loc_7054AA: FStAdFunc var_DC
  loc_7054AD: FLdPr var_DC
  loc_7054B0: LateIdSt
  loc_7054B5: FFree1Ad var_DC
  loc_7054B8: FLdPrThis
  loc_7054B9: VCallAd Control_ID_PaneldeMensajes
  loc_7054BC: FStAdFunc var_DC
  loc_7054BF: FLdPr var_DC
  loc_7054C2: LateIdCall
  loc_7054CA: FFree1Ad var_DC
  loc_7054CD: FLdPr Me
  loc_7054D0: MemLdStr global_372
  loc_7054D3: CVarStr var_10C
  loc_7054D6: PopAdLdVar
  loc_7054D7: FLdPrThis
  loc_7054D8: VCallAd Control_ID_PaneldeMensajes
  loc_7054DB: FStAdFunc var_DC
  loc_7054DE: FLdPr var_DC
  loc_7054E1: LateIdSt
  loc_7054E6: FFree1Ad var_DC
  loc_7054E9: from_stack_1v = Proc_161_135_5E79D4()
  loc_7054EE: Branch loc_7059A6
  loc_7054F1: ILdRf var_204
  loc_7054F4: LitI2_Byte 4
  loc_7054F6: CStrI2
  loc_7054F8: FStStrNoPop var_1F0
  loc_7054FB: EqStr
  loc_7054FD: FFree1Str var_1F0
  loc_705500: BranchF loc_705583
  loc_705503: LitI2_Byte &HFF
  loc_705505: FLdPr Me
  loc_705508: MemStI2 global_108
  loc_70550B: ImpAdLdI2 MemVar_74C382
  loc_70550E: BranchF loc_70552C
  loc_705511: LitI2_Byte 0
  loc_705513: ImpAdStI2 MemVar_74C382
  loc_705516: ILdRf Me
  loc_705519: FStAdNoPop
  loc_70551D: ImpAdLdRf MemVar_7520D4
  loc_705520: NewIfNullPr Global
  loc_705523: Global.Unload from_stack_1
  loc_705528: FFree1Ad var_DC
  loc_70552B: ExitProcHresult
  loc_70552C: LitVar_TRUE var_10C
  loc_70552F: PopAdLdVar
  loc_705530: FLdPrThis
  loc_705531: VCallAd Control_ID_PaneldeMensajes
  loc_705534: FStAdFunc var_DC
  loc_705537: FLdPr var_DC
  loc_70553A: LateIdSt
  loc_70553F: FFree1Ad var_DC
  loc_705542: FLdPrThis
  loc_705543: VCallAd Control_ID_PaneldeMensajes
  loc_705546: FStAdFunc var_DC
  loc_705549: FLdPr var_DC
  loc_70554C: LateIdCall
  loc_705554: FFree1Ad var_DC
  loc_705557: FLdPr Me
  loc_70555A: MemLdStr global_376
  loc_70555D: CVarStr var_10C
  loc_705560: PopAdLdVar
  loc_705561: FLdPrThis
  loc_705562: VCallAd Control_ID_PaneldeMensajes
  loc_705565: FStAdFunc var_DC
  loc_705568: FLdPr var_DC
  loc_70556B: LateIdSt
  loc_705570: FFree1Ad var_DC
  loc_705573: from_stack_1v = Proc_161_135_5E79D4()
  loc_705578: LitI2_Byte 0
  loc_70557A: FLdPr Me
  loc_70557D: MemStI2 global_190
  loc_705580: Branch loc_7059A6
  loc_705583: ILdRf var_204
  loc_705586: LitI2_Byte 3
  loc_705588: CStrI2
  loc_70558A: FStStrNoPop var_1F0
  loc_70558D: EqStr
  loc_70558F: FFree1Str var_1F0
  loc_705592: BranchF loc_7055E4
  loc_705595: LitVar_TRUE var_10C
  loc_705598: PopAdLdVar
  loc_705599: FLdPrThis
  loc_70559A: VCallAd Control_ID_PaneldeMensajes
  loc_70559D: FStAdFunc var_DC
  loc_7055A0: FLdPr var_DC
  loc_7055A3: LateIdSt
  loc_7055A8: FFree1Ad var_DC
  loc_7055AB: FLdPrThis
  loc_7055AC: VCallAd Control_ID_PaneldeMensajes
  loc_7055AF: FStAdFunc var_DC
  loc_7055B2: FLdPr var_DC
  loc_7055B5: LateIdCall
  loc_7055BD: FFree1Ad var_DC
  loc_7055C0: FLdPr Me
  loc_7055C3: MemLdStr global_380
  loc_7055C6: CVarStr var_10C
  loc_7055C9: PopAdLdVar
  loc_7055CA: FLdPrThis
  loc_7055CB: VCallAd Control_ID_PaneldeMensajes
  loc_7055CE: FStAdFunc var_DC
  loc_7055D1: FLdPr var_DC
  loc_7055D4: LateIdSt
  loc_7055D9: FFree1Ad var_DC
  loc_7055DC: from_stack_1v = Proc_161_135_5E79D4()
  loc_7055E1: Branch loc_7059A6
  loc_7055E4: ILdRf var_204
  loc_7055E7: LitI2_Byte 8
  loc_7055E9: CStrI2
  loc_7055EB: FStStrNoPop var_1F0
  loc_7055EE: EqStr
  loc_7055F0: FFree1Str var_1F0
  loc_7055F3: BranchF loc_7058BB
  loc_7055F6: LitVar_TRUE var_10C
  loc_7055F9: PopAdLdVar
  loc_7055FA: FLdPrThis
  loc_7055FB: VCallAd Control_ID_PaneldeMensajes
  loc_7055FE: FStAdFunc var_DC
  loc_705601: FLdPr var_DC
  loc_705604: LateIdSt
  loc_705609: FFree1Ad var_DC
  loc_70560C: FLdPrThis
  loc_70560D: VCallAd Control_ID_PaneldeMensajes
  loc_705610: FStAdFunc var_DC
  loc_705613: FLdPr var_DC
  loc_705616: LateIdCall
  loc_70561E: FFree1Ad var_DC
  loc_705621: LitVar_TRUE var_10C
  loc_705624: PopAdLdVar
  loc_705625: FLdPrThis
  loc_705626: VCallAd Control_ID_PaneldeMensajes
  loc_705629: FStAdFunc var_DC
  loc_70562C: FLdPr var_DC
  loc_70562F: LateIdSt
  loc_705634: FFree1Ad var_DC
  loc_705637: FLdPr Me
  loc_70563A: MemLdStr global_384
  loc_70563D: CVarStr var_10C
  loc_705640: PopAdLdVar
  loc_705641: FLdPrThis
  loc_705642: VCallAd Control_ID_PaneldeMensajes
  loc_705645: FStAdFunc var_DC
  loc_705648: FLdPr var_DC
  loc_70564B: LateIdSt
  loc_705650: FFree1Ad var_DC
  loc_705653: from_stack_1v = Proc_161_135_5E79D4()
  loc_705658: LitVarI2 var_EC, 1
  loc_70565D: LitI4 &HF
  loc_705662: ImpAdLdRf MemVar_74BEAC
  loc_705665: CVarRef
  loc_70566A: FLdRfVar var_FC
  loc_70566D: ImpAdCallFPR4  = Mid(, , )
  loc_705672: FLdRfVar var_FC
  loc_705675: LitVarStr var_1BC, "1"
  loc_70567A: HardType
  loc_70567B: EqVarBool
  loc_70567D: FFreeVar var_EC = ""
  loc_705684: BranchF loc_7058B8
  loc_705687: ImpAdCallI2 Proc_167_9_5F16B0()
  loc_70568C: FLdPr Me
  loc_70568F: MemLdI2 global_190
  loc_705692: NotI4
  loc_705693: AndI4
  loc_705694: BranchF loc_7058B8
  loc_705697: FLdRfVar var_200
  loc_70569A: LitVar_Missing var_19C
  loc_70569D: LitVar_Missing var_18C
  loc_7056A0: LitVar_Missing var_17C
  loc_7056A3: LitVar_Missing var_16C
  loc_7056A6: LitVar_Missing var_15C
  loc_7056A9: LitVar_Missing var_14C
  loc_7056AC: LitVar_Missing var_13C
  loc_7056AF: LitVar_Missing var_11C
  loc_7056B2: LitVar_Missing var_FC
  loc_7056B5: LitVar_Missing var_EC
  loc_7056B8: LitStr "Desea que el CEM pague las ventas no facturadas?"
  loc_7056BB: FStStrCopy var_1F0
  loc_7056BE: FLdRfVar var_1F0
  loc_7056C1: LitI4 &H1D
  loc_7056C6: PopTmpLdAdStr var_208
  loc_7056C9: LitI2_Byte 1
  loc_7056CB: PopTmpLdAd2 var_1FA
  loc_7056CE: ImpAdLdRf MemVar_74C7D0
  loc_7056D1: NewIfNullPr clsMsg
  loc_7056D4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7056D9: FLdRfVar var_388
  loc_7056DC: LitVar_Missing var_384
  loc_7056DF: LitVar_Missing var_364
  loc_7056E2: LitVar_Missing var_344
  loc_7056E5: LitVar_Missing var_324
  loc_7056E8: LitVar_Missing var_304
  loc_7056EB: LitVar_Missing var_2E4
  loc_7056EE: LitVar_Missing var_1EC
  loc_7056F1: LitVar_Missing var_1DC
  loc_7056F4: LitVar_Missing var_1CC
  loc_7056F7: LitVar_Missing var_1AC
  loc_7056FA: LitStr "Cierre de turno"
  loc_7056FD: FStStrCopy var_284
  loc_705700: FLdRfVar var_284
  loc_705703: LitI4 &H51
  loc_705708: PopTmpLdAdStr var_280
  loc_70570B: LitI2_Byte 1
  loc_70570D: PopTmpLdAd2 var_27A
  loc_705710: ImpAdLdRf MemVar_74C7D0
  loc_705713: NewIfNullPr clsMsg
  loc_705716: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70571B: LitVar_Missing var_3E8
  loc_70571E: LitVar_Missing var_3C8
  loc_705721: FLdZeroAd var_388
  loc_705724: CVarStr var_3A8
  loc_705727: LitI4 &H44
  loc_70572C: FLdZeroAd var_200
  loc_70572F: CVarStr var_398
  loc_705732: ImpAdCallI2 MsgBox(, , , , )
  loc_705737: LitI4 6
  loc_70573C: EqI4
  loc_70573D: FFreeStr var_1F0 = ""
  loc_705744: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_398 = "": var_3A8 = "": var_3C8 = ""
  loc_705777: BranchF loc_7058B0
  loc_70577A: ImpAdCallI2  = Proc_167_5_5F8FC8()
  loc_70577F: NotI4
  loc_705780: BranchF loc_7058B0
  loc_705783: LitI4 &HA
  loc_705788: FLdRfVar var_EC
  loc_70578B: ImpAdCallFPR4  = Chr()
  loc_705790: LitI4 &HD
  loc_705795: FLdRfVar var_11C
  loc_705798: ImpAdCallFPR4  = Chr()
  loc_70579D: FLdRfVar var_200
  loc_7057A0: LitVar_Missing var_324
  loc_7057A3: LitVar_Missing var_304
  loc_7057A6: LitVar_Missing var_2E4
  loc_7057A9: LitVar_Missing var_1EC
  loc_7057AC: LitVar_Missing var_1DC
  loc_7057AF: LitVar_Missing var_1CC
  loc_7057B2: LitVar_Missing var_1AC
  loc_7057B5: LitVar_Missing var_19C
  loc_7057B8: LitVar_Missing var_18C
  loc_7057BB: LitVar_Missing var_17C
  loc_7057BE: LitVarStr var_10C, "No se pueden totalizar las ventas debido "
  loc_7057C3: FLdRfVar var_EC
  loc_7057C6: AddVar var_FC
  loc_7057CA: FLdRfVar var_11C
  loc_7057CD: AddVar var_13C
  loc_7057D1: LitVarStr var_12C, "a que no estan todos los "
  loc_7057D6: AddVar var_14C
  loc_7057DA: ImpAdLdI4 MemVar_74BEE4
  loc_7057DD: CVarStr var_1BC
  loc_7057E0: ConcatVar var_15C
  loc_7057E4: LitVarStr var_218, " habilitados."
  loc_7057E9: ConcatVar var_16C
  loc_7057ED: CStrVarTmp
  loc_7057EE: PopTmpLdAdStr
  loc_7057F2: LitI4 &H52
  loc_7057F7: PopTmpLdAdStr var_208
  loc_7057FA: LitI2_Byte 1
  loc_7057FC: PopTmpLdAd2 var_1FA
  loc_7057FF: ImpAdLdRf MemVar_74C7D0
  loc_705802: NewIfNullPr clsMsg
  loc_705805: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70580A: FLdRfVar var_388
  loc_70580D: LitVar_Missing var_438
  loc_705810: LitVar_Missing var_418
  loc_705813: LitVar_Missing var_3F8
  loc_705816: LitVar_Missing var_3E8
  loc_705819: LitVar_Missing var_3C8
  loc_70581C: LitVar_Missing var_3A8
  loc_70581F: LitVar_Missing var_398
  loc_705822: LitVar_Missing var_384
  loc_705825: LitVar_Missing var_364
  loc_705828: LitVar_Missing var_344
  loc_70582B: LitStr "Consola Remota"
  loc_70582E: FStStrCopy var_284
  loc_705831: FLdRfVar var_284
  loc_705834: LitI4 &H53
  loc_705839: PopTmpLdAdStr var_280
  loc_70583C: LitI2_Byte 1
  loc_70583E: PopTmpLdAd2 var_27A
  loc_705841: ImpAdLdRf MemVar_74C7D0
  loc_705844: NewIfNullPr clsMsg
  loc_705847: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70584C: LitVar_Missing var_498
  loc_70584F: LitVar_Missing var_478
  loc_705852: FLdZeroAd var_388
  loc_705855: CVarStr var_458
  loc_705858: LitI4 &H40
  loc_70585D: FLdZeroAd var_200
  loc_705860: CVarStr var_448
  loc_705863: ImpAdCallFPR4 MsgBox(, , , , )
  loc_705868: FFreeStr var_1F0 = ""
  loc_70586F: FFreeVar var_498 = "": var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_398 = "": var_3A8 = "": var_3C8 = "": var_3E8 = "": var_3F8 = "": var_418 = "": var_438 = "": var_448 = "": var_458 = ""
  loc_7058B0: LitI2_Byte &HFF
  loc_7058B2: FLdPr Me
  loc_7058B5: MemStI2 global_190
  loc_7058B8: Branch loc_7059A6
  loc_7058BB: ILdRf var_204
  loc_7058BE: LitI2_Byte 7
  loc_7058C0: CStrI2
  loc_7058C2: FStStrNoPop var_1F0
  loc_7058C5: EqStr
  loc_7058C7: FFree1Str var_1F0
  loc_7058CA: BranchT loc_7058DF
  loc_7058CD: ILdRf var_204
  loc_7058D0: LitI2_Byte &HC
  loc_7058D2: CStrI2
  loc_7058D4: FStStrNoPop var_200
  loc_7058D7: EqStr
  loc_7058D9: FFree1Str var_200
  loc_7058DC: BranchF loc_70594C
  loc_7058DF: LitVar_TRUE var_10C
  loc_7058E2: PopAdLdVar
  loc_7058E3: FLdPrThis
  loc_7058E4: VCallAd Control_ID_PaneldeMensajes
  loc_7058E7: FStAdFunc var_DC
  loc_7058EA: FLdPr var_DC
  loc_7058ED: LateIdSt
  loc_7058F2: FFree1Ad var_DC
  loc_7058F5: FLdPrThis
  loc_7058F6: VCallAd Control_ID_PaneldeMensajes
  loc_7058F9: FStAdFunc var_DC
  loc_7058FC: FLdPr var_DC
  loc_7058FF: LateIdCall
  loc_705907: FFree1Ad var_DC
  loc_70590A: LitVar_TRUE var_10C
  loc_70590D: PopAdLdVar
  loc_70590E: FLdPrThis
  loc_70590F: VCallAd Control_ID_PaneldeMensajes
  loc_705912: FStAdFunc var_DC
  loc_705915: FLdPr var_DC
  loc_705918: LateIdSt
  loc_70591D: FFree1Ad var_DC
  loc_705920: FLdRfVar var_1F0
  loc_705923: from_stack_1v = Proc_161_136_5E9638()
  loc_705928: FLdZeroAd var_1F0
  loc_70592B: CVarStr var_EC
  loc_70592E: PopAdLdVar
  loc_70592F: FLdPrThis
  loc_705930: VCallAd Control_ID_PaneldeMensajes
  loc_705933: FStAdFunc var_DC
  loc_705936: FLdPr var_DC
  loc_705939: LateIdSt
  loc_70593E: FFree1Ad var_DC
  loc_705941: FFree1Var var_EC = ""
  loc_705944: from_stack_1v = Proc_161_135_5E79D4()
  loc_705949: Branch loc_7059A6
  loc_70594C: ILdRf var_204
  loc_70594F: LitI2_Byte &HD
  loc_705951: CStrI2
  loc_705953: FStStrNoPop var_1F0
  loc_705956: EqStr
  loc_705958: FFree1Str var_1F0
  loc_70595B: BranchF loc_7059A6
  loc_70595E: LitVar_TRUE var_10C
  loc_705961: PopAdLdVar
  loc_705962: FLdPrThis
  loc_705963: VCallAd Control_ID_PaneldeMensajes
  loc_705966: FStAdFunc var_DC
  loc_705969: FLdPr var_DC
  loc_70596C: LateIdSt
  loc_705971: FFree1Ad var_DC
  loc_705974: FLdPrThis
  loc_705975: VCallAd Control_ID_PaneldeMensajes
  loc_705978: FStAdFunc var_DC
  loc_70597B: FLdPr var_DC
  loc_70597E: LateIdCall
  loc_705986: FFree1Ad var_DC
  loc_705989: LitVarStr var_10C, "Existe un cambio de densidad pendiente"
  loc_70598E: PopAdLdVar
  loc_70598F: FLdPrThis
  loc_705990: VCallAd Control_ID_PaneldeMensajes
  loc_705993: FStAdFunc var_DC
  loc_705996: FLdPr var_DC
  loc_705999: LateIdSt
  loc_70599E: FFree1Ad var_DC
  loc_7059A1: from_stack_1v = Proc_161_135_5E79D4()
  loc_7059A6: LitI2_Byte 0
  loc_7059A8: PopTmpLdAd2 var_1FA
  loc_7059AB: FLdRfVar var_C8
  loc_7059AE: LdFixedStr
  loc_7059B1: PopTmpLdAdStr
  loc_7059B5: from_stack_3v = Proc_161_140_704E0C(from_stack_1v, from_stack_2v)
  loc_7059BA: ILdRf var_1F0
  loc_7059BD: FLdRfVar var_C8
  loc_7059C0: StFixedStr
  loc_7059C3: FFree1Str var_1F0
  loc_7059C6: FLdRfVar var_1FA
  loc_7059C9: FLdRfVar var_C8
  loc_7059CC: LdFixedStr
  loc_7059CF: PopTmpLdAdStr
  loc_7059D3: FLdRfVar var_DC
  loc_7059D6: ImpAdLdRf MemVar_74C760
  loc_7059D9: NewIfNullPr Formx
  loc_7059DC: from_stack_1v = Formx.global_4589716Get()
  loc_7059E1: FLdPr var_DC
  loc_7059E4:  = Formx.MousePointer
  loc_7059E9: ILdRf var_1F0
  loc_7059EC: FLdRfVar var_C8
  loc_7059EF: StFixedStr
  loc_7059F2: FLdI2 var_1FA
  loc_7059F5: NotI4
  loc_7059F6: FFree1Str var_1F0
  loc_7059F9: FFree1Ad var_DC
  loc_7059FC: BranchF loc_705A3F
  loc_7059FF: FLdRfVar var_EC
  loc_705A02: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_705A07: FLdRfVar var_EC
  loc_705A0A: CBoolVarNull
  loc_705A0C: FFree1Var var_EC = ""
  loc_705A0F: BranchF loc_705A3C
  loc_705A12: LitI2_Byte 0
  loc_705A14: FLdPrThis
  loc_705A15: VCallAd Control_ID_Timer1
  loc_705A18: FStAdFunc var_DC
  loc_705A1B: FLdPr var_DC
  loc_705A1E: Me.Enabled = from_stack_1b
  loc_705A23: FFree1Ad var_DC
  loc_705A26: ILdRf Me
  loc_705A29: FStAdNoPop
  loc_705A2D: ImpAdLdRf MemVar_7520D4
  loc_705A30: NewIfNullPr Global
  loc_705A33: Global.Unload from_stack_1
  loc_705A38: FFree1Ad var_DC
  loc_705A3B: ExitProcHresult
  loc_705A3C: Branch loc_7059C6
  loc_705A3F: LitI4 1
  loc_705A44: FLdRfVar var_C8
  loc_705A47: LdFixedStr
  loc_705A4A: FStStrNoPop var_1F0
  loc_705A4D: LitStr "W"
  loc_705A50: LitI4 0
  loc_705A55: FnInStr4
  loc_705A57: LitI4 0
  loc_705A5C: NeI4
  loc_705A5D: FFree1Str var_1F0
  loc_705A60: BranchF loc_705AB2
  loc_705A63: FLdRfVar var_1FA
  loc_705A66: FLdPrThis
  loc_705A67: VCallAd Control_ID_picAviso
  loc_705A6A: FStAdFunc var_DC
  loc_705A6D: FLdPr var_DC
  loc_705A70:  = Me.Visible
  loc_705A75: FLdI2 var_1FA
  loc_705A78: NotI4
  loc_705A79: FLdPrThis
  loc_705A7A: VCallAd Control_ID_picAviso
  loc_705A7D: FStAdFunc var_1F4
  loc_705A80: FLdPr var_1F4
  loc_705A83: Me.Visible = from_stack_1b
  loc_705A88: FFreeAd var_DC = ""
  loc_705A8F: FLdRfVar var_1FA
  loc_705A92: FLdPrThis
  loc_705A93: VCallAd Control_ID_picAviso
  loc_705A96: FStAdFunc var_DC
  loc_705A99: FLdPr var_DC
  loc_705A9C:  = Me.Visible
  loc_705AA1: FLdI2 var_1FA
  loc_705AA4: FMemLdPr
  loc_705AA9: MemStI2 global_2
  loc_705AAC: FFree1Ad var_DC
  loc_705AAF: Branch loc_705AE1
  loc_705AB2: FLdRfVar var_1FA
  loc_705AB5: FLdPrThis
  loc_705AB6: VCallAd Control_ID_picAviso
  loc_705AB9: FStAdFunc var_DC
  loc_705ABC: FLdPr var_DC
  loc_705ABF:  = Me.Visible
  loc_705AC4: FLdI2 var_1FA
  loc_705AC7: FFree1Ad var_DC
  loc_705ACA: BranchF loc_705AE1
  loc_705ACD: LitI2_Byte 0
  loc_705ACF: FLdPrThis
  loc_705AD0: VCallAd Control_ID_picAviso
  loc_705AD3: FStAdFunc var_DC
  loc_705AD6: FLdPr var_DC
  loc_705AD9: Me.Visible = from_stack_1b
  loc_705ADE: FFree1Ad var_DC
  loc_705AE1: LitI4 1
  loc_705AE6: FLdRfVar var_C8
  loc_705AE9: LdFixedStr
  loc_705AEC: FStStrNoPop var_1F0
  loc_705AEF: LitStr "P"
  loc_705AF2: LitI4 0
  loc_705AF7: FnInStr4
  loc_705AF9: LitI4 0
  loc_705AFE: NeI4
  loc_705AFF: LitVarI2 var_EC, 1
  loc_705B04: LitI4 4
  loc_705B09: ImpAdLdI4 MemVar_74BEAC
  loc_705B0C: ImpAdCallI2 Mid$(, , )
  loc_705B11: FStStrNoPop var_200
  loc_705B14: LitStr "1"
  loc_705B17: EqStr
  loc_705B19: AndI4
  loc_705B1A: FFreeStr var_1F0 = ""
  loc_705B21: FFree1Var var_EC = ""
  loc_705B24: BranchF loc_705C41
  loc_705B27: LitI2_Byte 0
  loc_705B29: FLdPrThis
  loc_705B2A: VCallAd Control_ID_Timer1
  loc_705B2D: FStAdFunc var_DC
  loc_705B30: FLdPr var_DC
  loc_705B33: Me.Enabled = from_stack_1b
  loc_705B38: FFree1Ad var_DC
  loc_705B3B: LitI2_Byte 0
  loc_705B3D: FLdPrThis
  loc_705B3E: VCallAd Control_ID_Timer1
  loc_705B41: FStAdFunc var_DC
  loc_705B44: FLdPr var_DC
  loc_705B47: Me.Enabled = from_stack_1b
  loc_705B4C: FFree1Ad var_DC
  loc_705B4F: FLdRfVar var_EC
  loc_705B52: FLdRfVar var_4A0
  loc_705B55: FLdRfVar var_DC
  loc_705B58: ImpAdLdRf MemVar_74C760
  loc_705B5B: NewIfNullPr Formx
  loc_705B5E: from_stack_1v = Formx.global_4589716Get()
  loc_705B63: FLdPr var_DC
  loc_705B66: Call 0.Method_arg_184 ()
  loc_705B6B: FLdRfVar var_EC
  loc_705B6E: NotVar var_FC
  loc_705B72: CBoolVarNull
  loc_705B74: FFree1Ad var_DC
  loc_705B77: FFree1Var var_EC = ""
  loc_705B7A: BranchF loc_705BB0
  loc_705B7D: FLdRfVar var_EC
  loc_705B80: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_705B85: FLdRfVar var_EC
  loc_705B88: CBoolVarNull
  loc_705B8A: FFree1Var var_EC = ""
  loc_705B8D: BranchF loc_705BAD
  loc_705B90: LitNothing
  loc_705B92: CastAd
  loc_705B95: FStAdFunc var_49C
  loc_705B98: LitI2_Byte &HFF
  loc_705B9A: FLdPrThis
  loc_705B9B: VCallAd Control_ID_PCLOSE_DAY
  loc_705B9E: FStAdFunc var_DC
  loc_705BA1: FLdPr var_DC
  loc_705BA4: Formx.Timer.Enabled = from_stack_1b
  loc_705BA9: FFree1Ad var_DC
  loc_705BAC: ExitProcHresult
  loc_705BAD: Branch loc_705B4F
  loc_705BB0: FLdRfVar var_4A0
  loc_705BB3: CVarRef
  loc_705BB8: FLdRfVar var_EC
  loc_705BBB: ImpAdCallFPR4  = Trim()
  loc_705BC0: FLdRfVar var_EC
  loc_705BC3: CStrVarTmp
  loc_705BC4: FStStr var_4A0
  loc_705BC7: FFree1Var var_EC = ""
  loc_705BCA: ILdRf var_4A0
  loc_705BCD: FnLenStr
  loc_705BCE: LitI4 &HA
  loc_705BD3: LtI4
  loc_705BD4: BranchF loc_705BF4
  loc_705BD7: LitNothing
  loc_705BD9: CastAd
  loc_705BDC: FStAdFunc var_49C
  loc_705BDF: LitI2_Byte &HFF
  loc_705BE1: FLdPrThis
  loc_705BE2: VCallAd Control_ID_Timer1
  loc_705BE5: FStAdFunc var_DC
  loc_705BE8: FLdPr var_DC
  loc_705BEB: Me.Enabled = from_stack_1b
  loc_705BF0: FFree1Ad var_DC
  loc_705BF3: ExitProcHresult
  loc_705BF4: ILdRf var_4A0
  loc_705BF7: FLdRfVar var_49C
  loc_705BFA: NewIfNullPr NotiCamPrecio
  loc_705BFD: Call NotiCamPrecio.cadenaPut(from_stack_1v)
  loc_705C02: LitVar_Missing var_12C
  loc_705C05: PopAdLdVar
  loc_705C06: LitVarI4
  loc_705C0E: PopAdLdVar
  loc_705C0F: FLdRfVar var_49C
  loc_705C12: NewIfNullPr NotiCamPrecio
  loc_705C15: NotiCamPrecio.Show from_stack_1, from_stack_2
  loc_705C1A: LitNothing
  loc_705C1C: CastAd
  loc_705C1F: FStAdFunc var_49C
  loc_705C22: FLdPr Me
  loc_705C25: MemLdI2 global_112
  loc_705C28: NotI4
  loc_705C29: BranchF loc_705C40
  loc_705C2C: LitI2_Byte &HFF
  loc_705C2E: FLdPrThis
  loc_705C2F: VCallAd Control_ID_Timer1
  loc_705C32: FStAdFunc var_DC
  loc_705C35: FLdPr var_DC
  loc_705C38: Me.Enabled = from_stack_1b
  loc_705C3D: FFree1Ad var_DC
  loc_705C40: ExitProcHresult
  loc_705C41: LitI4 1
  loc_705C46: FLdRfVar var_C8
  loc_705C49: LdFixedStr
  loc_705C4C: FStStrNoPop var_1F0
  loc_705C4F: LitStr "R"
  loc_705C52: LitI4 0
  loc_705C57: FnInStr4
  loc_705C59: LitI4 0
  loc_705C5E: NeI4
  loc_705C5F: LitVarI2 var_EC, 1
  loc_705C64: LitI4 4
  loc_705C69: ImpAdLdI4 MemVar_74BEAC
  loc_705C6C: ImpAdCallI2 Mid$(, , )
  loc_705C71: FStStrNoPop var_200
  loc_705C74: LitStr "1"
  loc_705C77: EqStr
  loc_705C79: AndI4
  loc_705C7A: FFreeStr var_1F0 = ""
  loc_705C81: FFree1Var var_EC = ""
  loc_705C84: BranchF loc_705D39
  loc_705C87: FLdRfVar var_EC
  loc_705C8A: FLdRfVar var_D4
  loc_705C8D: FLdRfVar var_DC
  loc_705C90: ImpAdLdRf MemVar_74C760
  loc_705C93: NewIfNullPr Formx
  loc_705C96: from_stack_1v = Formx.global_4589716Get()
  loc_705C9B: FLdPr var_DC
  loc_705C9E:  = Formx.HelpContextID
  loc_705CA3: FLdRfVar var_EC
  loc_705CA6: NotVar var_FC
  loc_705CAA: CBoolVarNull
  loc_705CAC: FFree1Ad var_DC
  loc_705CAF: FFree1Var var_EC = ""
  loc_705CB2: BranchF loc_705CF5
  loc_705CB5: FLdRfVar var_EC
  loc_705CB8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_705CBD: FLdRfVar var_EC
  loc_705CC0: CBoolVarNull
  loc_705CC2: FFree1Var var_EC = ""
  loc_705CC5: BranchF loc_705CF2
  loc_705CC8: LitI2_Byte 0
  loc_705CCA: FLdPrThis
  loc_705CCB: VCallAd Control_ID_Timer1
  loc_705CCE: FStAdFunc var_DC
  loc_705CD1: FLdPr var_DC
  loc_705CD4: Me.Enabled = from_stack_1b
  loc_705CD9: FFree1Ad var_DC
  loc_705CDC: ILdRf Me
  loc_705CDF: FStAdNoPop
  loc_705CE3: ImpAdLdRf MemVar_7520D4
  loc_705CE6: NewIfNullPr Global
  loc_705CE9: Global.Unload from_stack_1
  loc_705CEE: FFree1Ad var_DC
  loc_705CF1: ExitProcHresult
  loc_705CF2: Branch loc_705C87
  loc_705CF5: LitI2_Byte 0
  loc_705CF7: FLdPrThis
  loc_705CF8: VCallAd Control_ID_Timer1
  loc_705CFB: FStAdFunc var_DC
  loc_705CFE: FLdPr var_DC
  loc_705D01: Me.Enabled = from_stack_1b
  loc_705D06: FFree1Ad var_DC
  loc_705D09: LitVar_Missing var_EC
  loc_705D0C: ILdRf var_D4
  loc_705D0F: LitStr "R"
  loc_705D12: ImpAdCallFPR4 Proc_87_5_73E7D8(, , )
  loc_705D17: FFree1Var var_EC = ""
  loc_705D1A: FLdPr Me
  loc_705D1D: MemLdI2 global_112
  loc_705D20: NotI4
  loc_705D21: BranchF loc_705D38
  loc_705D24: LitI2_Byte &HFF
  loc_705D26: FLdPrThis
  loc_705D27: VCallAd Control_ID_Timer1
  loc_705D2A: FStAdFunc var_DC
  loc_705D2D: FLdPr var_DC
  loc_705D30: Me.Enabled = from_stack_1b
  loc_705D35: FFree1Ad var_DC
  loc_705D38: ExitProcHresult
  loc_705D39: LitI4 1
  loc_705D3E: FLdRfVar var_C8
  loc_705D41: LdFixedStr
  loc_705D44: FStStrNoPop var_1F0
  loc_705D47: LitStr "Z"
  loc_705D4A: LitI4 0
  loc_705D4F: FnInStr4
  loc_705D51: LitI4 0
  loc_705D56: NeI4
  loc_705D57: LitVarI2 var_EC, 1
  loc_705D5C: LitI4 4
  loc_705D61: ImpAdLdI4 MemVar_74BEAC
  loc_705D64: ImpAdCallI2 Mid$(, , )
  loc_705D69: FStStrNoPop var_200
  loc_705D6C: LitStr "1"
  loc_705D6F: EqStr
  loc_705D71: AndI4
  loc_705D72: FFreeStr var_1F0 = ""
  loc_705D79: FFree1Var var_EC = ""
  loc_705D7C: BranchF loc_705DD2
  loc_705D7F: LitI2_Byte 0
  loc_705D81: FLdPrThis
  loc_705D82: VCallAd Control_ID_Timer1
  loc_705D85: FStAdFunc var_DC
  loc_705D88: FLdPr var_DC
  loc_705D8B: Me.Enabled = from_stack_1b
  loc_705D90: FFree1Ad var_DC
  loc_705D93: LitVar_Missing var_12C
  loc_705D96: PopAdLdVar
  loc_705D97: LitVarI4
  loc_705D9F: PopAdLdVar
  loc_705DA0: FLdRfVar var_4A4
  loc_705DA3: NewIfNullPr CambioCodificacionProducto
  loc_705DA6: CambioCodificacionProducto.Show from_stack_1, from_stack_2
  loc_705DAB: LitNothing
  loc_705DAD: CastAd
  loc_705DB0: FStAdFunc var_4A4
  loc_705DB3: FLdPr Me
  loc_705DB6: MemLdI2 global_112
  loc_705DB9: NotI4
  loc_705DBA: BranchF loc_705DD1
  loc_705DBD: LitI2_Byte &HFF
  loc_705DBF: FLdPrThis
  loc_705DC0: VCallAd Control_ID_Timer1
  loc_705DC3: FStAdFunc var_DC
  loc_705DC6: FLdPr var_DC
  loc_705DC9: Me.Enabled = from_stack_1b
  loc_705DCE: FFree1Ad var_DC
  loc_705DD1: ExitProcHresult
  loc_705DD2: LitI4 1
  loc_705DD7: FLdRfVar var_C8
  loc_705DDA: LdFixedStr
  loc_705DDD: FStStrNoPop var_1F0
  loc_705DE0: LitStr "S"
  loc_705DE3: LitI4 0
  loc_705DE8: FnInStr4
  loc_705DEA: LitI4 0
  loc_705DEF: NeI4
  loc_705DF0: FFree1Str var_1F0
  loc_705DF3: BranchF loc_705E49
  loc_705DF6: LitI2_Byte 0
  loc_705DF8: FLdPrThis
  loc_705DF9: VCallAd Control_ID_Timer1
  loc_705DFC: FStAdFunc var_DC
  loc_705DFF: FLdPr var_DC
  loc_705E02: Me.Enabled = from_stack_1b
  loc_705E07: FFree1Ad var_DC
  loc_705E0A: LitVar_Missing var_12C
  loc_705E0D: PopAdLdVar
  loc_705E0E: LitVarI4
  loc_705E16: PopAdLdVar
  loc_705E17: FLdRfVar var_4A8
  loc_705E1A: NewIfNullPr frmCambioVersion
  loc_705E1D: frmCambioVersion.Show from_stack_1, from_stack_2
  loc_705E22: LitNothing
  loc_705E24: CastAd
  loc_705E27: FStAdFunc var_4A8
  loc_705E2A: FLdPr Me
  loc_705E2D: MemLdI2 global_112
  loc_705E30: NotI4
  loc_705E31: BranchF loc_705E48
  loc_705E34: LitI2_Byte &HFF
  loc_705E36: FLdPrThis
  loc_705E37: VCallAd Control_ID_Timer1
  loc_705E3A: FStAdFunc var_DC
  loc_705E3D: FLdPr var_DC
  loc_705E40: Me.Enabled = from_stack_1b
  loc_705E45: FFree1Ad var_DC
  loc_705E48: ExitProcHresult
  loc_705E49: LitI4 1
  loc_705E4E: FLdRfVar var_C8
  loc_705E51: LdFixedStr
  loc_705E54: FStStrNoPop var_1F0
  loc_705E57: LitStr "C"
  loc_705E5A: LitI4 0
  loc_705E5F: FnInStr4
  loc_705E61: LitI4 0
  loc_705E66: NeI4
  loc_705E67: LitVarI2 var_EC, 1
  loc_705E6C: LitI4 8
  loc_705E71: ImpAdLdI4 MemVar_74BEAC
  loc_705E74: ImpAdCallI2 Mid$(, , )
  loc_705E79: FStStrNoPop var_200
  loc_705E7C: CUI1Str
  loc_705E7E: CI2UI1
  loc_705E80: LitI2_Byte 1
  loc_705E82: AndI4
  loc_705E83: LitI2_Byte 1
  loc_705E85: EqI2
  loc_705E86: AndI4
  loc_705E87: FFreeStr var_1F0 = ""
  loc_705E8E: FFree1Var var_EC = ""
  loc_705E91: BranchF loc_705EBC
  loc_705E94: LitI2_Byte 0
  loc_705E96: FLdPrThis
  loc_705E97: VCallAd Control_ID_Timer1
  loc_705E9A: FStAdFunc var_DC
  loc_705E9D: FLdPr var_DC
  loc_705EA0: Me.Enabled = from_stack_1b
  loc_705EA5: FFree1Ad var_DC
  loc_705EA8: LitI2_Byte &HFF
  loc_705EAA: FLdPrThis
  loc_705EAB: VCallAd Control_ID_Timer1
  loc_705EAE: FStAdFunc var_DC
  loc_705EB1: FLdPr var_DC
  loc_705EB4: Me.Enabled = from_stack_1b
  loc_705EB9: FFree1Ad var_DC
  loc_705EBC: LitI4 1
  loc_705EC1: FLdRfVar var_C8
  loc_705EC4: LdFixedStr
  loc_705EC7: FStStrNoPop var_1F0
  loc_705ECA: LitStr "A"
  loc_705ECD: LitI4 0
  loc_705ED2: FnInStr4
  loc_705ED4: LitI4 0
  loc_705ED9: NeI4
  loc_705EDA: FFree1Str var_1F0
  loc_705EDD: BranchF loc_705F7D
  loc_705EE0: LitI2_Byte 0
  loc_705EE2: FLdPrThis
  loc_705EE3: VCallAd Control_ID_Timer1
  loc_705EE6: FStAdFunc var_DC
  loc_705EE9: FLdPr var_DC
  loc_705EEC: Me.Enabled = from_stack_1b
  loc_705EF1: FFree1Ad var_DC
  loc_705EF4: LitVarI2 var_EC, 1
  loc_705EF9: LitI4 &HD
  loc_705EFE: ImpAdLdI4 MemVar_74BEAC
  loc_705F01: ImpAdCallI2 Mid$(, , )
  loc_705F06: FStStrNoPop var_1F0
  loc_705F09: CUI1Str
  loc_705F0B: CI2UI1
  loc_705F0D: LitI2_Byte 1
  loc_705F0F: EqI2
  loc_705F10: FFree1Str var_1F0
  loc_705F13: FFree1Var var_EC = ""
  loc_705F16: BranchF loc_705F3E
  loc_705F19: LitI2_Byte 0
  loc_705F1B: ImpAdLdRf MemVar_74DE58
  loc_705F1E: NewIfNullPr Remito
  loc_705F21: Call Remito.FlagPut(from_stack_1v)
  loc_705F26: LitVar_Missing var_12C
  loc_705F29: PopAdLdVar
  loc_705F2A: LitVarI4
  loc_705F32: PopAdLdVar
  loc_705F33: ImpAdLdRf MemVar_74DE58
  loc_705F36: NewIfNullPr Remito
  loc_705F39: Remito.Show from_stack_1, from_stack_2
  loc_705F3E: LitVar_Missing var_12C
  loc_705F41: PopAdLdVar
  loc_705F42: LitVarI4
  loc_705F4A: PopAdLdVar
  loc_705F4B: FLdRfVar var_4AC
  loc_705F4E: NewIfNullPr frmReporteCisterna
  loc_705F51: frmReporteCisterna.Show from_stack_1, from_stack_2
  loc_705F56: LitNothing
  loc_705F58: CastAd
  loc_705F5B: FStAdFunc var_4AC
  loc_705F5E: FLdPr Me
  loc_705F61: MemLdI2 global_112
  loc_705F64: NotI4
  loc_705F65: BranchF loc_705F7C
  loc_705F68: LitI2_Byte &HFF
  loc_705F6A: FLdPrThis
  loc_705F6B: VCallAd Control_ID_Timer1
  loc_705F6E: FStAdFunc var_DC
  loc_705F71: FLdPr var_DC
  loc_705F74: Me.Enabled = from_stack_1b
  loc_705F79: FFree1Ad var_DC
  loc_705F7C: ExitProcHresult
  loc_705F7D: LitStr vbNullString
  loc_705F80: FStStrCopy var_4B0
  loc_705F83: ImpAdLdI2 MemVar_74BFAE
  loc_705F86: LitI2_Byte &H19
  loc_705F88: EqI2
  loc_705F89: BranchF loc_70600B
  loc_705F8C: FLdRfVar var_1FA
  loc_705F8F: FLdRfVar var_4B0
  loc_705F92: FLdRfVar var_DC
  loc_705F95: ImpAdLdRf MemVar_74C760
  loc_705F98: NewIfNullPr Formx
  loc_705F9B: from_stack_1v = Formx.global_4589716Get()
  loc_705FA0: FLdPr var_DC
  loc_705FA3: Formx.MousePointer = from_stack_1
  loc_705FA8: FLdI2 var_1FA
  loc_705FAB: NotI4
  loc_705FAC: FFree1Ad var_DC
  loc_705FAF: BranchF loc_705FF2
  loc_705FB2: FLdRfVar var_EC
  loc_705FB5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_705FBA: FLdRfVar var_EC
  loc_705FBD: CBoolVarNull
  loc_705FBF: FFree1Var var_EC = ""
  loc_705FC2: BranchF loc_705FEF
  loc_705FC5: LitI2_Byte 0
  loc_705FC7: FLdPrThis
  loc_705FC8: VCallAd Control_ID_Timer1
  loc_705FCB: FStAdFunc var_DC
  loc_705FCE: FLdPr var_DC
  loc_705FD1: Me.Enabled = from_stack_1b
  loc_705FD6: FFree1Ad var_DC
  loc_705FD9: ILdRf Me
  loc_705FDC: FStAdNoPop
  loc_705FE0: ImpAdLdRf MemVar_7520D4
  loc_705FE3: NewIfNullPr Global
  loc_705FE6: Global.Unload from_stack_1
  loc_705FEB: FFree1Ad var_DC
  loc_705FEE: ExitProcHresult
  loc_705FEF: Branch loc_705F8C
  loc_705FF2: ILdRf var_4B0
  loc_705FF5: FStStrCopy var_1F0
  loc_705FF8: FLdRfVar var_1F0
  loc_705FFB: from_stack_2v = Proc_161_137_610FCC(from_stack_1v)
  loc_706000: FFree1Str var_1F0
  loc_706003: LitI2_Byte 0
  loc_706005: ImpAdStI2 MemVar_74BFAE
  loc_706008: Branch loc_706014
  loc_70600B: ImpAdLdI2 MemVar_74BFAE
  loc_70600E: LitI2_Byte 1
  loc_706010: AddI2
  loc_706011: ImpAdStI2 MemVar_74BFAE
  loc_706014: FLdPr Me
  loc_706017: MemLdI2 global_112
  loc_70601A: NotI4
  loc_70601B: BranchF loc_706032
  loc_70601E: LitI2_Byte &HFF
  loc_706020: FLdPrThis
  loc_706021: VCallAd Control_ID_Timer1
  loc_706024: FStAdFunc var_DC
  loc_706027: FLdPr var_DC
  loc_70602A: Me.Enabled = from_stack_1b
  loc_70602F: FFree1Ad var_DC
  loc_706032: LitVarI2 var_EC, 1
  loc_706037: LitI4 &HC
  loc_70603C: ImpAdLdRf MemVar_74BEAC
  loc_70603F: CVarRef
  loc_706044: FLdRfVar var_FC
  loc_706047: ImpAdCallFPR4  = Mid(, , )
  loc_70604C: FLdRfVar var_FC
  loc_70604F: LitVarStr var_1BC, "1"
  loc_706054: HardType
  loc_706055: EqVarBool
  loc_706057: FFreeVar var_EC = ""
  loc_70605E: BranchF loc_706069
  loc_706061: ImpAdCallFPR4 Proc_167_10_6B89EC()
  loc_706066: Branch loc_70606A
  loc_706069: ExitProcHresult
  loc_70606A: FLdRfVar var_1FA
  loc_70606D: FLdPr Me
  loc_706070: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_706073: from_stack_2v = Proc_161_142_5FA3C4(from_stack_1v)
  loc_706078: ExitProcHresult
End Function

Private Function Proc_161_135_5E79D4() '5E79D4
  'Data Table: 45B254
  loc_5E795C: LitVarI4
  loc_5E7964: PopAdLdVar
  loc_5E7965: FLdPrThis
  loc_5E7966: VCallAd Control_ID_PaneldeMensajes
  loc_5E7969: FStAdFunc var_98
  loc_5E796C: FLdPr var_98
  loc_5E796F: LateIdSt
  loc_5E7974: FFree1Ad var_98
  loc_5E7977: FLdPrThis
  loc_5E7978: VCallAd Control_ID_PaneldeMensajes
  loc_5E797B: FStAdFunc var_98
  loc_5E797E: FLdPr var_98
  loc_5E7981: LateIdLdVar var_A8 DispID_-513 -1
  loc_5E7988: CI4Var
  loc_5E798A: LitI4 -2147483639
  loc_5E798F: EqI4
  loc_5E7990: FFree1Ad var_98
  loc_5E7993: FFree1Var var_A8 = ""
  loc_5E7996: BranchF loc_5E79B7
  loc_5E7999: LitVarI4
  loc_5E79A1: PopAdLdVar
  loc_5E79A2: FLdPrThis
  loc_5E79A3: VCallAd Control_ID_PaneldeMensajes
  loc_5E79A6: FStAdFunc var_98
  loc_5E79A9: FLdPr var_98
  loc_5E79AC: LateIdSt
  loc_5E79B1: FFree1Ad var_98
  loc_5E79B4: Branch loc_5E79D2
  loc_5E79B7: LitVarI4
  loc_5E79BF: PopAdLdVar
  loc_5E79C0: FLdPrThis
  loc_5E79C1: VCallAd Control_ID_PaneldeMensajes
  loc_5E79C4: FStAdFunc var_98
  loc_5E79C7: FLdPr var_98
  loc_5E79CA: LateIdSt
  loc_5E79CF: FFree1Ad var_98
  loc_5E79D2: ExitProcHresult
  loc_5E79D3: Erase
End Function

Private Function Proc_161_136_5E9638() '5E9638
  'Data Table: 45B254
  loc_5E95B8: ZeroRetVal
  loc_5E95BA: LitI2_Byte 0
  loc_5E95BC: FStI2 var_8C
  loc_5E95BF: LitI2_Byte 1
  loc_5E95C1: FLdRfVar var_8A
  loc_5E95C4: ImpAdLdUI1
  loc_5E95C8: CI2UI1
  loc_5E95CA: ForI2 var_94
  loc_5E95D0: FLdI2 var_8A
  loc_5E95D3: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5E95D8: FLdI2 var_8A
  loc_5E95DB: CI4UI1
  loc_5E95DC: ImpAdLdRf MemVar_74C004
  loc_5E95DF: Ary1LdPr
  loc_5E95E0: MemLdUI1 global_43
  loc_5E95E4: LitI2 144
  loc_5E95E7: EqI2
  loc_5E95E8: AndI4
  loc_5E95E9: BranchF loc_5E95FA
  loc_5E95EC: LitStr "ESPERANDO FINALIZACION DE DESPACHOS ..."
  loc_5E95EF: FStStrCopy var_90
  loc_5E95F2: LitI2_Byte &HFF
  loc_5E95F4: FStI2 var_8C
  loc_5E95F7: Branch loc_5E9602
  loc_5E95FA: FLdRfVar var_8A
  loc_5E95FD: NextI2 var_94, loc_5E95D0
  loc_5E9602: FLdPr Me
  loc_5E9605: MemLdRfVar from_stack_1.global_388
  loc_5E9608: CVarRef
  loc_5E960D: FLdRfVar var_90
  loc_5E9610: CVarRef
  loc_5E9615: FLdRfVar var_8C
  loc_5E9618: CVarRef
  loc_5E961D: FLdRfVar var_D4
  loc_5E9620: ImpAdCallFPR4  = IIf(, , )
  loc_5E9625: FLdRfVar var_D4
  loc_5E9628: CStrVarTmp
  loc_5E9629: FStStr var_88
  loc_5E962C: FFree1Var var_D4 = ""
  loc_5E962F: ExitProcCbHresult
End Function

Private Function Proc_161_137_610FCC(arg_C) '610FCC
  'Data Table: 45B254
  loc_610ECC: LitVarI2 var_AC, 1
  loc_610ED1: FStVar var_98
  loc_610ED5: LitI2_Byte 1
  loc_610ED7: FStI2 var_9A
  loc_610EDA: LitStr vbNullString
  loc_610EDD: FStStrCopy var_88
  loc_610EE0: FLdRfVar var_98
  loc_610EE3: ILdI4 arg_C
  loc_610EE6: FnLenStr
  loc_610EE7: CVarI4
  loc_610EEB: HardType
  loc_610EEC: LeVarBool
  loc_610EEE: BranchF loc_610FC9
  loc_610EF1: LitVarI2 var_BC, 1
  loc_610EF6: FLdI2 var_9A
  loc_610EF9: CI4UI1
  loc_610EFA: ILdRf arg_C
  loc_610EFD: CVarRef
  loc_610F02: FLdRfVar var_DC
  loc_610F05: ImpAdCallFPR4  = Mid(, , )
  loc_610F0A: FLdRfVar var_DC
  loc_610F0D: LitVarStr var_EC, "|"
  loc_610F12: HardType
  loc_610F13: NeVar var_FC
  loc_610F17: FLdI2 var_9A
  loc_610F1A: CI4UI1
  loc_610F1B: ILdI4 arg_C
  loc_610F1E: FnLenStr
  loc_610F1F: LeI4
  loc_610F20: CVarBoolI2 var_10C
  loc_610F24: AndVar var_11C
  loc_610F28: CBoolVarNull
  loc_610F2A: FFreeVar var_BC = "": var_DC = ""
  loc_610F33: BranchF loc_610F75
  loc_610F36: ILdRf var_88
  loc_610F39: CVarStr var_EC
  loc_610F3C: LitVarI2 var_BC, 1
  loc_610F41: FLdI2 var_9A
  loc_610F44: CI4UI1
  loc_610F45: ILdRf arg_C
  loc_610F48: CVarRef
  loc_610F4D: FLdRfVar var_DC
  loc_610F50: ImpAdCallFPR4  = Mid(, , )
  loc_610F55: FLdRfVar var_DC
  loc_610F58: AddVar var_FC
  loc_610F5C: CStrVarTmp
  loc_610F5D: FStStr var_88
  loc_610F60: FFreeVar var_BC = "": var_DC = ""
  loc_610F69: FLdI2 var_9A
  loc_610F6C: LitI2_Byte 1
  loc_610F6E: AddI2
  loc_610F6F: FStI2 var_9A
  loc_610F72: Branch loc_610EF1
  loc_610F75: FLdI2 var_9A
  loc_610F78: LitI2_Byte 1
  loc_610F7A: AddI2
  loc_610F7B: FStI2 var_9A
  loc_610F7E: FLdRfVar var_88
  loc_610F81: CVarRef
  loc_610F86: FLdRfVar var_BC
  loc_610F89: ImpAdCallFPR4  = Trim()
  loc_610F8E: FLdRfVar var_BC
  loc_610F91: LitVarStr var_CC, vbNullString
  loc_610F96: HardType
  loc_610F97: NeVarBool
  loc_610F99: FFree1Var var_BC = ""
  loc_610F9C: BranchF loc_610FB0
  loc_610F9F: ILdRf var_88
  loc_610FA2: FStStrCopy var_120
  loc_610FA5: FLdRfVar var_120
  loc_610FA8: from_stack_2v = Proc_161_138_668EE4(from_stack_1v)
  loc_610FAD: FFree1Str var_120
  loc_610FB0: LitStr vbNullString
  loc_610FB3: FStStrCopy var_88
  loc_610FB6: FLdRfVar var_98
  loc_610FB9: LitVarI2 var_AC, 1
  loc_610FBE: AddVar var_BC
  loc_610FC2: FStVar var_98
  loc_610FC6: Branch loc_610EE0
  loc_610FC9: ExitProcHresult
  loc_610FCA: FLdPrThis
End Function

Private Function Proc_161_138_668EE4(arg_C) '668EE4
  'Data Table: 45B254
  loc_668B4C: OnErrorGoto loc_668DF5
  loc_668B4F: LitVarI2 var_C0, 2
  loc_668B54: LitI4 1
  loc_668B59: ILdRf arg_C
  loc_668B5C: CVarRef
  loc_668B61: FLdRfVar var_D0
  loc_668B64: ImpAdCallFPR4  = Mid(, , )
  loc_668B69: FLdRfVar var_D0
  loc_668B6C: FnCIntVar
  loc_668B6E: FStI2 var_86
  loc_668B71: FFreeVar var_C0 = "": var_D0 = ""
  loc_668B7A: FLdI2 var_86
  loc_668B7D: FLdPr Me
  loc_668B80: MemLdUI1 offset
  loc_668B84: CI2UI1
  loc_668B86: AddI2
  loc_668B87: LitI2_Byte &H11
  loc_668B89: LtI2
  loc_668B8A: FLdI2 var_86
  loc_668B8D: FLdPr Me
  loc_668B90: MemLdUI1 offset
  loc_668B94: CI2UI1
  loc_668B96: AddI2
  loc_668B97: LitI2_Byte &H20
  loc_668B99: GtI2
  loc_668B9A: OrI4
  loc_668B9B: BranchF loc_668DF4
  loc_668B9E: LitVarI2 var_C0, 1
  loc_668BA3: LitI4 3
  loc_668BA8: ILdRf arg_C
  loc_668BAB: CVarRef
  loc_668BB0: FLdRfVar var_D0
  loc_668BB3: ImpAdCallFPR4  = Mid(, , )
  loc_668BB8: FLdRfVar var_D0
  loc_668BBB: LitVarStr var_E0, "0"
  loc_668BC0: HardType
  loc_668BC1: NeVarBool
  loc_668BC3: FFreeVar var_C0 = ""
  loc_668BCA: BranchF loc_668D8A
  loc_668BCD: FLdI2 var_86
  loc_668BD0: FLdI2 var_86
  loc_668BD3: CI4UI1
  loc_668BD4: ImpAdLdRf MemVar_74BFB0
  loc_668BD7: Ary1LdPr
  loc_668BD8: MemStI2 global_0
  loc_668BDB: LitVarI2 var_C0, 1
  loc_668BE0: LitI4 3
  loc_668BE5: ILdRf arg_C
  loc_668BE8: CVarRef
  loc_668BED: FLdRfVar var_D0
  loc_668BF0: ImpAdCallFPR4  = Mid(, , )
  loc_668BF5: FLdRfVar var_D0
  loc_668BF8: CStrVarTmp
  loc_668BF9: FStStrNoPop var_F4
  loc_668BFC: FLdI2 var_86
  loc_668BFF: CI4UI1
  loc_668C00: ImpAdLdRf MemVar_74BFB0
  loc_668C03: Ary1LdPr
  loc_668C04: MemStStrCopy
  loc_668C08: FFree1Str var_F4
  loc_668C0B: FFreeVar var_C0 = ""
  loc_668C12: LitVarI2 var_C0, 4
  loc_668C17: LitI4 4
  loc_668C1C: ILdRf arg_C
  loc_668C1F: CVarRef
  loc_668C24: FLdRfVar var_D0
  loc_668C27: ImpAdCallFPR4  = Mid(, , )
  loc_668C2C: FLdRfVar var_F8
  loc_668C2F: FLdRfVar var_D0
  loc_668C32: CStrVarTmp
  loc_668C33: PopTmpLdAdStr
  loc_668C37: from_stack_2v = BuscarOwner(from_stack_1v)
  loc_668C3C: ILdRf var_F8
  loc_668C3F: FLdI2 var_86
  loc_668C42: CI4UI1
  loc_668C43: ImpAdLdRf MemVar_74BFB0
  loc_668C46: Ary1LdPr
  loc_668C47: MemStStrCopy
  loc_668C4B: FFreeStr var_F4 = ""
  loc_668C52: FFreeVar var_C0 = ""
  loc_668C59: LitVarI2 var_C0, 7
  loc_668C5E: LitI4 8
  loc_668C63: ILdRf arg_C
  loc_668C66: CVarRef
  loc_668C6B: FLdRfVar var_D0
  loc_668C6E: ImpAdCallFPR4  = Mid(, , )
  loc_668C73: FLdRfVar var_D0
  loc_668C76: CStrVarTmp
  loc_668C77: FStStrNoPop var_F4
  loc_668C7A: FLdI2 var_86
  loc_668C7D: CI4UI1
  loc_668C7E: ImpAdLdRf MemVar_74BFB0
  loc_668C81: Ary1LdPr
  loc_668C82: MemStStrCopy
  loc_668C86: FFree1Str var_F4
  loc_668C89: FFreeVar var_C0 = ""
  loc_668C90: ILdI4 arg_C
  loc_668C93: FnLenStr
  loc_668C94: CVarI4
  loc_668C98: LitI4 &HF
  loc_668C9D: ILdRf arg_C
  loc_668CA0: CVarRef
  loc_668CA5: FLdRfVar var_D0
  loc_668CA8: ImpAdCallFPR4  = Mid(, , )
  loc_668CAD: FLdRfVar var_D0
  loc_668CB0: CStrVarTmp
  loc_668CB1: FStStrNoPop var_F4
  loc_668CB4: FLdI2 var_86
  loc_668CB7: CI4UI1
  loc_668CB8: ImpAdLdRf MemVar_74BFB0
  loc_668CBB: Ary1LdPr
  loc_668CBC: MemStStrCopy
  loc_668CC0: FFree1Str var_F4
  loc_668CC3: FFreeVar var_C0 = ""
  loc_668CCA: FLdRfVar var_F4
  loc_668CCD: FLdI2 var_86
  loc_668CD0: CI4UI1
  loc_668CD1: ImpAdLdRf MemVar_74BFB0
  loc_668CD4: Ary1LdPr
  loc_668CD5: MemLdRfVar from_stack_1.global_4
  loc_668CD8: from_stack_2v = PegarIcono(from_stack_1v)
  loc_668CDD: FLdZeroAd var_F4
  loc_668CE0: FStStr var_90
  loc_668CE3: FLdRfVar var_F4
  loc_668CE6: FLdRfVar var_FC
  loc_668CE9: ImpAdLdRf MemVar_7520D4
  loc_668CEC: NewIfNullPr Global
  loc_668CEF:  = Global.App
  loc_668CF4: FLdPr var_FC
  loc_668CF7:  = App.Path
  loc_668CFC: ILdRf var_F4
  loc_668CFF: LitStr "\"
  loc_668D02: ConcatStr
  loc_668D03: FStStrNoPop var_F8
  loc_668D06: ILdRf var_90
  loc_668D09: ConcatStr
  loc_668D0A: FStStr var_90
  loc_668D0D: FFreeStr var_F4 = ""
  loc_668D14: FFree1Ad var_FC
  loc_668D17: ILdRf var_90
  loc_668D1A: CVarStr var_A0
  loc_668D1D: PopAdLdVar
  loc_668D1E: FLdRfVar var_100
  loc_668D21: FLdI2 var_86
  loc_668D24: LitI2_Byte 1
  loc_668D26: SubI2
  loc_668D27: FLdPr Me
  loc_668D2A: MemLdUI1 offset
  loc_668D2E: CI2UI1
  loc_668D30: SubI2
  loc_668D31: FLdPrThis
  loc_668D32: VCallAd Control_ID_ErrorAni
  loc_668D35: FStAdFunc var_FC
  loc_668D38: FLdPr var_FC
  loc_668D3B: Set from_stack_2 = Me(from_stack_1)
  loc_668D40: FLdPr var_100
  loc_668D43: LateIdCall
  loc_668D4B: FFreeAd var_FC = ""
  loc_668D52: LitVar_TRUE var_A0
  loc_668D55: PopAdLdVar
  loc_668D56: FLdRfVar var_100
  loc_668D59: FLdI2 var_86
  loc_668D5C: LitI2_Byte 1
  loc_668D5E: SubI2
  loc_668D5F: FLdPr Me
  loc_668D62: MemLdUI1 offset
  loc_668D66: CI2UI1
  loc_668D68: SubI2
  loc_668D69: FLdPrThis
  loc_668D6A: VCallAd Control_ID_ErrorAni
  loc_668D6D: FStAdFunc var_FC
  loc_668D70: FLdPr var_FC
  loc_668D73: Set from_stack_2 = Me(from_stack_1)
  loc_668D78: FLdPr var_100
  loc_668D7B: LateIdSt
  loc_668D80: FFreeAd var_FC = ""
  loc_668D87: Branch loc_668DF4
  loc_668D8A: FLdRfVar var_100
  loc_668D8D: FLdI2 var_86
  loc_668D90: LitI2_Byte 1
  loc_668D92: SubI2
  loc_668D93: FLdPr Me
  loc_668D96: MemLdUI1 offset
  loc_668D9A: CI2UI1
  loc_668D9C: SubI2
  loc_668D9D: FLdPrThis
  loc_668D9E: VCallAd Control_ID_ErrorAni
  loc_668DA1: FStAdFunc var_FC
  loc_668DA4: FLdPr var_FC
  loc_668DA7: Set from_stack_2 = Me(from_stack_1)
  loc_668DAC: FLdPr var_100
  loc_668DAF: LateIdCall
  loc_668DB7: FFreeAd var_FC = ""
  loc_668DBE: LitVar_FALSE
  loc_668DC2: PopAdLdVar
  loc_668DC3: FLdRfVar var_100
  loc_668DC6: FLdI2 var_86
  loc_668DC9: LitI2_Byte 1
  loc_668DCB: SubI2
  loc_668DCC: FLdPr Me
  loc_668DCF: MemLdUI1 offset
  loc_668DD3: CI2UI1
  loc_668DD5: SubI2
  loc_668DD6: FLdPrThis
  loc_668DD7: VCallAd Control_ID_ErrorAni
  loc_668DDA: FStAdFunc var_FC
  loc_668DDD: FLdPr var_FC
  loc_668DE0: Set from_stack_2 = Me(from_stack_1)
  loc_668DE5: FLdPr var_100
  loc_668DE8: LateIdSt
  loc_668DED: FFreeAd var_FC = ""
  loc_668DF4: ExitProcHresult
  loc_668DF5: FLdPr Me
  loc_668DF8: MemLdI2 PumpNumBK
  loc_668DFB: BranchF loc_668E63
  loc_668DFE: FLdRfVar var_F4
  loc_668E01: FLdRfVar var_FC
  loc_668E04: ImpAdLdRf MemVar_7520D4
  loc_668E07: NewIfNullPr Global
  loc_668E0A:  = Global.App
  loc_668E0F: FLdPr var_FC
  loc_668E12:  = App.Path
  loc_668E17: ILdRf var_F4
  loc_668E1A: LitStr "\desconocido.avi"
  loc_668E1D: ConcatStr
  loc_668E1E: FStStr var_90
  loc_668E21: FFree1Str var_F4
  loc_668E24: FFree1Ad var_FC
  loc_668E27: OnErrorGoto loc_668E64
  loc_668E2A: ILdRf var_90
  loc_668E2D: CVarStr var_A0
  loc_668E30: PopAdLdVar
  loc_668E31: FLdRfVar var_100
  loc_668E34: FLdI2 var_86
  loc_668E37: LitI2_Byte 1
  loc_668E39: SubI2
  loc_668E3A: FLdPrThis
  loc_668E3B: VCallAd Control_ID_ErrorAni
  loc_668E3E: FStAdFunc var_FC
  loc_668E41: FLdPr var_FC
  loc_668E44: Set from_stack_2 = Me(from_stack_1)
  loc_668E49: FLdPr var_100
  loc_668E4C: LateIdCall
  loc_668E54: FFreeAd var_FC = ""
  loc_668E5B: LitI2_Byte 0
  loc_668E5D: FLdPr Me
  loc_668E60: MemStI2 PumpNumBK
  loc_668E63: ExitProcHresult
  loc_668E64: FLdRfVar var_104
  loc_668E67: ImpAdCallI2 Err 'rtcErrObj
  loc_668E6C: FStAdFunc var_FC
  loc_668E6F: FLdPr var_FC
  loc_668E72:  = Err.Number
  loc_668E77: LitI4 &HD
  loc_668E7C: FLdRfVar var_C0
  loc_668E7F: ImpAdCallFPR4  = Chr()
  loc_668E84: FLdRfVar var_F4
  loc_668E87: ImpAdCallI2 Err 'rtcErrObj
  loc_668E8C: FStAdFunc var_100
  loc_668E8F: FLdPr var_100
  loc_668E92:  = Err.Description
  loc_668E97: LitVar_Missing var_154
  loc_668E9A: LitVar_Missing var_134
  loc_668E9D: LitVarStr var_B0, "Error"
  loc_668EA2: FStVarCopyObj var_124
  loc_668EA5: FLdRfVar var_124
  loc_668EA8: LitI4 &H10
  loc_668EAD: ILdRf var_104
  loc_668EB0: CVarI4
  loc_668EB4: FLdRfVar var_C0
  loc_668EB7: ConcatVar var_D0
  loc_668EBB: FLdZeroAd var_F4
  loc_668EBE: CVarStr var_F0
  loc_668EC1: ConcatVar var_114
  loc_668EC5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_668ECA: FFreeAd var_FC = ""
  loc_668ED1: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_668EE2: ExitProcHresult
End Function

Private Function Proc_161_139_62BBB4(arg_C) '62BBB4
  'Data Table: 45B254
  loc_62BA1C: FLdRfVar var_E8
  loc_62BA1F: FLdRfVar var_CE
  loc_62BA22: LdFixedStr
  loc_62BA25: PopTmpLdAdStr
  loc_62BA29: FLdRfVar var_D4
  loc_62BA2C: ImpAdLdRf MemVar_74C760
  loc_62BA2F: NewIfNullPr Formx
  loc_62BA32: from_stack_1v = Formx.global_4589716Get()
  loc_62BA37: FLdPr var_D4
  loc_62BA3A:  = Forms
  loc_62BA3F: ILdRf var_D8
  loc_62BA42: FLdRfVar var_CE
  loc_62BA45: StFixedStr
  loc_62BA48: FLdRfVar var_E8
  loc_62BA4B: NotVar var_F8
  loc_62BA4F: CBoolVarNull
  loc_62BA51: FFree1Str var_D8
  loc_62BA54: FFree1Ad var_D4
  loc_62BA57: FFree1Var var_E8 = ""
  loc_62BA5A: BranchF loc_62BA89
  loc_62BA5D: FLdRfVar var_E8
  loc_62BA60: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62BA65: FLdRfVar var_E8
  loc_62BA68: CBoolVarNull
  loc_62BA6A: FFree1Var var_E8 = ""
  loc_62BA6D: BranchF loc_62BA86
  loc_62BA70: ILdRf Me
  loc_62BA73: FStAdNoPop
  loc_62BA77: ImpAdLdRf MemVar_7520D4
  loc_62BA7A: NewIfNullPr Global
  loc_62BA7D: Global.Unload from_stack_1
  loc_62BA82: FFree1Ad var_D4
  loc_62BA85: ExitProcHresult
  loc_62BA86: Branch loc_62BA1C
  loc_62BA89: FLdRfVar var_FC
  loc_62BA8C: ImpAdLdRf MemVar_74D8B0
  loc_62BA8F: NewIfNullPr Consola
  loc_62BA92:  = Consola.BackColor
  loc_62BA97: ILdRf var_FC
  loc_62BA9A: FStR4 var_88
  loc_62BA9D: FLdPr Me
  loc_62BAA0: MemLdUI1 global_114
  loc_62BAA4: FLdRfVar var_8A
  loc_62BAA7: FLdPr Me
  loc_62BAAA: MemLdUI1 global_115
  loc_62BAAE: ForUI1 var_100
  loc_62BAB4: LitVarI2 var_E8, 1
  loc_62BAB9: FLdUI1
  loc_62BABD: CI4UI1
  loc_62BABE: FLdRfVar var_CE
  loc_62BAC1: LdFixedStr
  loc_62BAC4: PopTmpLdAdStr
  loc_62BAC8: CVarRef
  loc_62BACD: FLdRfVar var_F8
  loc_62BAD0: ImpAdCallFPR4  = Mid(, , )
  loc_62BAD5: ILdRf var_D8
  loc_62BAD8: FLdRfVar var_CE
  loc_62BADB: StFixedStr
  loc_62BADE: FLdRfVar var_F8
  loc_62BAE1: CStrVarVal var_124
  loc_62BAE5: ImpAdCallI2 Asc()
  loc_62BAEA: LitI2_Byte &H30
  loc_62BAEC: SubI2
  loc_62BAED: CUI1I2
  loc_62BAEF: FStUI1 var_8C
  loc_62BAF3: FFreeStr var_D8 = ""
  loc_62BAFA: FFreeVar var_E8 = ""
  loc_62BB01: FLdUI1
  loc_62BB05: CI2UI1
  loc_62BB07: FLdUI1
  loc_62BB0B: CI4UI1
  loc_62BB0C: ImpAdLdRf MemVar_74C004
  loc_62BB0F: Ary1LdPr
  loc_62BB10: MemLdI2 global_46
  loc_62BB13: NeI2
  loc_62BB14: FLdPr Me
  loc_62BB17: MemLdI2 global_98
  loc_62BB1A: OrI4
  loc_62BB1B: ILdI2 arg_C
  loc_62BB1E: OrI4
  loc_62BB1F: BranchF loc_62BBAA
  loc_62BB22: FLdUI1
  loc_62BB26: CI2UI1
  loc_62BB28: LitI2_Byte 0
  loc_62BB2A: EqI2
  loc_62BB2B: BranchF loc_62BB63
  loc_62BB2E: LitI2_Byte 0
  loc_62BB30: FLdRfVar var_128
  loc_62BB33: FLdUI1
  loc_62BB37: FLdPr Me
  loc_62BB3A: MemLdUI1 offset
  loc_62BB3E: SubUI1
  loc_62BB40: CI2UI1
  loc_62BB42: FLdPrThis
  loc_62BB43: VCallAd Control_ID_fraSalesPending
  loc_62BB46: FStAdFunc var_D4
  loc_62BB49: FLdPr var_D4
  loc_62BB4C: Set from_stack_2 = Me(from_stack_1)
  loc_62BB51: FLdPr var_128
  loc_62BB54: Me.BackStyle = from_stack_1
  loc_62BB59: FFreeAd var_D4 = ""
  loc_62BB60: Branch loc_62BB95
  loc_62BB63: LitI2_Byte 1
  loc_62BB65: FLdRfVar var_128
  loc_62BB68: FLdUI1
  loc_62BB6C: FLdPr Me
  loc_62BB6F: MemLdUI1 offset
  loc_62BB73: SubUI1
  loc_62BB75: CI2UI1
  loc_62BB77: FLdPrThis
  loc_62BB78: VCallAd Control_ID_fraSalesPending
  loc_62BB7B: FStAdFunc var_D4
  loc_62BB7E: FLdPr var_D4
  loc_62BB81: Set from_stack_2 = Me(from_stack_1)
  loc_62BB86: FLdPr var_128
  loc_62BB89: Me.BackStyle = from_stack_1
  loc_62BB8E: FFreeAd var_D4 = ""
  loc_62BB95: FLdUI1
  loc_62BB99: CI2UI1
  loc_62BB9B: FLdUI1
  loc_62BB9F: CI4UI1
  loc_62BBA0: ImpAdLdRf MemVar_74C004
  loc_62BBA3: Ary1LdPr
  loc_62BBA4: MemStI2 global_46
  loc_62BBA7: Branch loc_62BBAA
  loc_62BBAA: FLdRfVar var_8A
  loc_62BBAD: NextUI1
  loc_62BBB3: ExitProcHresult
End Function

Private Function Proc_161_140_704E0C(arg_C, arg_10) '704E0C
  'Data Table: 45B254
  loc_703BBC: FLdPr Me
  loc_703BBF: MemLdUI1 global_116
  loc_703BC3: CI2UI1
  loc_703BC5: LitI2_Byte &HA
  loc_703BC7: LtI2
  loc_703BC8: BranchF loc_703BE3
  loc_703BCB: FLdPr Me
  loc_703BCE: MemLdUI1 global_116
  loc_703BD2: CI2UI1
  loc_703BD4: LitI2_Byte 1
  loc_703BD6: AddI2
  loc_703BD7: CUI1I2
  loc_703BD9: FLdPr Me
  loc_703BDC: MemStUI1
  loc_703BE0: Branch loc_703BEE
  loc_703BE3: LitI2_Byte 0
  loc_703BE5: CUI1I2
  loc_703BE7: FLdPr Me
  loc_703BEA: MemStUI1
  loc_703BEE: LitI2_Byte 0
  loc_703BF0: FStI2 var_90
  loc_703BF3: FLdPr Me
  loc_703BF6: MemLdUI1 global_114
  loc_703BFA: FLdRfVar var_8E
  loc_703BFD: FLdPr Me
  loc_703C00: MemLdUI1 global_115
  loc_703C04: ForUI1 var_A0
  loc_703C0A: LitVarI2 var_D0, 1
  loc_703C0F: FLdUI1
  loc_703C13: CI4UI1
  loc_703C14: ILdRf arg_C
  loc_703C17: CVarRef
  loc_703C1C: FLdRfVar var_E0
  loc_703C1F: ImpAdCallFPR4  = Mid(, , )
  loc_703C24: FLdRfVar var_E0
  loc_703C27: CStrVarVal var_E4
  loc_703C2B: ImpAdCallI2 Asc()
  loc_703C30: CUI1I2
  loc_703C32: FStUI1 var_86
  loc_703C36: FFree1Str var_E4
  loc_703C39: FFreeVar var_D0 = ""
  loc_703C40: FLdUI1
  loc_703C44: CI4UI1
  loc_703C45: ImpAdLdRf MemVar_74C004
  loc_703C48: Ary1LdPr
  loc_703C49: MemLdUI1 global_43
  loc_703C4D: LitI2_Byte &H70
  loc_703C4F: EqI2
  loc_703C50: BranchF loc_703C5C
  loc_703C53: FLdUI1
  loc_703C57: CI2UI1
  loc_703C59: FStI2 var_90
  loc_703C5C: FLdUI1
  loc_703C60: CI4UI1
  loc_703C61: ImpAdLdRf MemVar_74C004
  loc_703C64: Ary1LdPr
  loc_703C65: MemLdUI1 global_43
  loc_703C69: FLdUI1
  loc_703C6D: NeI2
  loc_703C6E: FLdPr Me
  loc_703C71: MemLdI2 global_98
  loc_703C74: OrI4
  loc_703C75: ILdI2 arg_10
  loc_703C78: OrI4
  loc_703C79: BranchF loc_7048F6
  loc_703C7C: FLdUI1
  loc_703C80: CI4UI1
  loc_703C81: ImpAdLdRf MemVar_74C004
  loc_703C84: Ary1LdPr
  loc_703C85: MemLdUI1 global_43
  loc_703C89: FLdUI1
  loc_703C8D: CI4UI1
  loc_703C8E: ImpAdLdRf MemVar_74C004
  loc_703C91: Ary1LdPr
  loc_703C92: MemStUI1
  loc_703C96: FLdUI1
  loc_703C9A: FLdUI1
  loc_703C9E: CI4UI1
  loc_703C9F: ImpAdLdRf MemVar_74C004
  loc_703CA2: Ary1LdPr
  loc_703CA3: MemStUI1
  loc_703CA7: FLdUI1
  loc_703CAB: FLdPr Me
  loc_703CAE: MemLdUI1 Surtidor_Actual
  loc_703CB2: EqI2
  loc_703CB3: BranchF loc_703CBB
  loc_703CB6: from_stack_1v = Proc_161_124_5F0A28()
  loc_703CBB: FLdUI1
  loc_703CBF: CI4UI1
  loc_703CC0: ImpAdLdRf MemVar_74C004
  loc_703CC3: Ary1LdPr
  loc_703CC4: MemLdUI1 global_43
  loc_703CC8: FStUI1 var_E6
  loc_703CCC: FLdUI1
  loc_703CD0: LitI2 144
  loc_703CD3: EqI2
  loc_703CD4: BranchF loc_703E1D
  loc_703CD7: LitVar_TRUE var_B0
  loc_703CDA: PopAdLdVar
  loc_703CDB: FLdRfVar var_F0
  loc_703CDE: FLdUI1
  loc_703CE2: FLdPr Me
  loc_703CE5: MemLdUI1 offset
  loc_703CE9: SubUI1
  loc_703CEB: CI2UI1
  loc_703CED: FLdPrThis
  loc_703CEE: VCallAd Control_ID_Animation1
  loc_703CF1: FStAdFunc var_EC
  loc_703CF4: FLdPr var_EC
  loc_703CF7: Set from_stack_2 = Me(from_stack_1)
  loc_703CFC: FLdPr var_F0
  loc_703CFF: LateIdSt
  loc_703D04: FFreeAd var_EC = ""
  loc_703D0B: FLdRfVar var_E4
  loc_703D0E: FLdRfVar var_EC
  loc_703D11: ImpAdLdRf MemVar_7520D4
  loc_703D14: NewIfNullPr Global
  loc_703D17:  = Global.App
  loc_703D1C: FLdPr var_EC
  loc_703D1F:  = App.Path
  loc_703D24: ILdRf var_E4
  loc_703D27: LitStr "\despach.avi"
  loc_703D2A: ConcatStr
  loc_703D2B: CVarStr var_D0
  loc_703D2E: PopAdLdVar
  loc_703D2F: FLdRfVar var_F4
  loc_703D32: FLdUI1
  loc_703D36: FLdPr Me
  loc_703D39: MemLdUI1 offset
  loc_703D3D: SubUI1
  loc_703D3F: CI2UI1
  loc_703D41: FLdPrThis
  loc_703D42: VCallAd Control_ID_Animation1
  loc_703D45: FStAdFunc var_F0
  loc_703D48: FLdPr var_F0
  loc_703D4B: Set from_stack_2 = Me(from_stack_1)
  loc_703D50: FLdPr var_F4
  loc_703D53: LateIdCall
  loc_703D5B: FFree1Str var_E4
  loc_703D5E: FFreeAd var_EC = "": var_F0 = ""
  loc_703D67: FFree1Var var_D0 = ""
  loc_703D6A: LitVarI2 var_B0, -1
  loc_703D6F: PopAdLdVar
  loc_703D70: LitVarI2 var_C0, 4
  loc_703D75: PopAdLdVar
  loc_703D76: LitVarI2 var_104, -1
  loc_703D7B: PopAdLdVar
  loc_703D7C: FLdRfVar var_F0
  loc_703D7F: FLdUI1
  loc_703D83: FLdPr Me
  loc_703D86: MemLdUI1 offset
  loc_703D8A: SubUI1
  loc_703D8C: CI2UI1
  loc_703D8E: FLdPrThis
  loc_703D8F: VCallAd Control_ID_Animation1
  loc_703D92: FStAdFunc var_EC
  loc_703D95: FLdPr var_EC
  loc_703D98: Set from_stack_2 = Me(from_stack_1)
  loc_703D9D: FLdPr var_F0
  loc_703DA0: LateIdCall
  loc_703DA8: FFreeAd var_EC = ""
  loc_703DAF: FLdPr Me
  loc_703DB2: MemLdStr global_264
  loc_703DB5: FLdRfVar var_F0
  loc_703DB8: FLdUI1
  loc_703DBC: FLdPr Me
  loc_703DBF: MemLdUI1 offset
  loc_703DC3: SubUI1
  loc_703DC5: CI2UI1
  loc_703DC7: FLdPrThis
  loc_703DC8: VCallAd Control_ID_Label_Total
  loc_703DCB: FStAdFunc var_EC
  loc_703DCE: FLdPr var_EC
  loc_703DD1: Set from_stack_2 = Me(from_stack_1)
  loc_703DD6: FLdPr var_F0
  loc_703DD9: Me.Caption = from_stack_1
  loc_703DDE: FFreeAd var_EC = ""
  loc_703DE5: LitI4 &HFF00FF
  loc_703DEA: FLdRfVar var_F0
  loc_703DED: FLdUI1
  loc_703DF1: FLdPr Me
  loc_703DF4: MemLdUI1 offset
  loc_703DF8: SubUI1
  loc_703DFA: CI2UI1
  loc_703DFC: FLdPrThis
  loc_703DFD: VCallAd Control_ID_Label_Total
  loc_703E00: FStAdFunc var_EC
  loc_703E03: FLdPr var_EC
  loc_703E06: Set from_stack_2 = Me(from_stack_1)
  loc_703E0B: FLdPr var_F0
  loc_703E0E: Me.ForeColor = from_stack_1
  loc_703E13: FFreeAd var_EC = ""
  loc_703E1A: Branch loc_7048F6
  loc_703E1D: FLdUI1
  loc_703E21: LitI2_Byte &H60
  loc_703E23: EqI2
  loc_703E24: BranchF loc_70411E
  loc_703E27: FLdUI1
  loc_703E2B: CI4UI1
  loc_703E2C: ImpAdLdRf MemVar_74C004
  loc_703E2F: Ary1LdPr
  loc_703E30: MemLdUI1 global_42
  loc_703E34: LitI2 176
  loc_703E37: EqI2
  loc_703E38: FLdUI1
  loc_703E3C: CI4UI1
  loc_703E3D: ImpAdLdRf MemVar_74C004
  loc_703E40: Ary1LdPr
  loc_703E41: MemLdUI1 global_42
  loc_703E45: LitI2 144
  loc_703E48: EqI2
  loc_703E49: OrI4
  loc_703E4A: FLdUI1
  loc_703E4E: CI4UI1
  loc_703E4F: ImpAdLdRf MemVar_74C004
  loc_703E52: Ary1LdPr
  loc_703E53: MemLdUI1 global_42
  loc_703E57: LitI2 192
  loc_703E5A: EqI2
  loc_703E5B: OrI4
  loc_703E5C: BranchF loc_703F19
  loc_703E5F: FLdPr Me
  loc_703E62: MemLdI2 global_104
  loc_703E65: BranchF loc_703F19
  loc_703E68: ImpAdLdI2 MemVar_74BEA6
  loc_703E6B: BranchF loc_703EC9
  loc_703E6E: FLdRfVar var_E4
  loc_703E71: FLdRfVar var_EC
  loc_703E74: ImpAdLdRf MemVar_7520D4
  loc_703E77: NewIfNullPr Global
  loc_703E7A:  = Global.App
  loc_703E7F: FLdPr var_EC
  loc_703E82:  = App.Path
  loc_703E87: ILdRf var_E4
  loc_703E8A: LitStr "\finalizado.wav"
  loc_703E8D: ConcatStr
  loc_703E8E: CVarStr var_D0
  loc_703E91: PopAdLdVar
  loc_703E92: FLdPrThis
  loc_703E93: VCallAd Control_ID_Sonido
  loc_703E96: FStAdFunc var_F0
  loc_703E99: FLdPr var_F0
  loc_703E9C: LateIdSt
  loc_703EA1: FFree1Str var_E4
  loc_703EA4: FFreeAd var_EC = ""
  loc_703EAB: FFree1Var var_D0 = ""
  loc_703EAE: LitVarStr var_B0, "Sound"
  loc_703EB3: PopAdLdVar
  loc_703EB4: FLdPrThis
  loc_703EB5: VCallAd Control_ID_Sonido
  loc_703EB8: FStAdFunc var_EC
  loc_703EBB: FLdPr var_EC
  loc_703EBE: LateIdSt
  loc_703EC3: FFree1Ad var_EC
  loc_703EC6: Branch loc_703F19
  loc_703EC9: LitI2_Byte 1
  loc_703ECB: FLdRfVar var_106
  loc_703ECE: LitI2_Byte 2
  loc_703ED0: ForI2 var_10A
  loc_703ED6: LitI4 &H4B
  loc_703EDB: LitI4 &H2BC
  loc_703EE0: ImpAdCallFPR4 ()
  loc_703EE5: SetLastSystemError
  loc_703EE6: LitI4 &H64
  loc_703EEB: LitI4 &H320
  loc_703EF0: ImpAdCallFPR4 ()
  loc_703EF5: SetLastSystemError
  loc_703EF6: LitI4 &H4B
  loc_703EFB: LitI4 &H2BC
  loc_703F00: ImpAdCallFPR4 ()
  loc_703F05: SetLastSystemError
  loc_703F06: LitI4 &H32
  loc_703F0B: ImpAdCallFPR4 Sleep()
  loc_703F10: SetLastSystemError
  loc_703F11: FLdRfVar var_106
  loc_703F14: NextI2 var_10A, loc_703ED6
  loc_703F19: LitVar_FALSE
  loc_703F1D: PopAdLdVar
  loc_703F1E: FLdRfVar var_F0
  loc_703F21: FLdUI1
  loc_703F25: FLdPr Me
  loc_703F28: MemLdUI1 offset
  loc_703F2C: SubUI1
  loc_703F2E: CI2UI1
  loc_703F30: FLdPrThis
  loc_703F31: VCallAd Control_ID_Animation1
  loc_703F34: FStAdFunc var_EC
  loc_703F37: FLdPr var_EC
  loc_703F3A: Set from_stack_2 = Me(from_stack_1)
  loc_703F3F: FLdPr var_F0
  loc_703F42: LateIdSt
  loc_703F47: FFreeAd var_EC = ""
  loc_703F4E: FLdRfVar var_E4
  loc_703F51: FLdRfVar var_EC
  loc_703F54: ImpAdLdRf MemVar_7520D4
  loc_703F57: NewIfNullPr Global
  loc_703F5A:  = Global.App
  loc_703F5F: FLdPr var_EC
  loc_703F62:  = App.Path
  loc_703F67: ILdRf var_E4
  loc_703F6A: LitStr "\dispon.avi"
  loc_703F6D: ConcatStr
  loc_703F6E: CVarStr var_D0
  loc_703F71: PopAdLdVar
  loc_703F72: FLdRfVar var_F4
  loc_703F75: FLdUI1
  loc_703F79: FLdPr Me
  loc_703F7C: MemLdUI1 offset
  loc_703F80: SubUI1
  loc_703F82: CI2UI1
  loc_703F84: FLdPrThis
  loc_703F85: VCallAd Control_ID_Animation1
  loc_703F88: FStAdFunc var_F0
  loc_703F8B: FLdPr var_F0
  loc_703F8E: Set from_stack_2 = Me(from_stack_1)
  loc_703F93: FLdPr var_F4
  loc_703F96: LateIdCall
  loc_703F9E: FFree1Str var_E4
  loc_703FA1: FFreeAd var_EC = "": var_F0 = ""
  loc_703FAA: FFree1Var var_D0 = ""
  loc_703FAD: FLdRfVar var_F0
  loc_703FB0: FLdUI1
  loc_703FB4: FLdPr Me
  loc_703FB7: MemLdUI1 offset
  loc_703FBB: SubUI1
  loc_703FBD: CI2UI1
  loc_703FBF: FLdPrThis
  loc_703FC0: VCallAd Control_ID_Animation1
  loc_703FC3: FStAdFunc var_EC
  loc_703FC6: FLdPr var_EC
  loc_703FC9: Set from_stack_2 = Me(from_stack_1)
  loc_703FCE: FLdPr var_F0
  loc_703FD1: LateIdCall
  loc_703FD9: FFreeAd var_EC = ""
  loc_703FE0: FLdPr Me
  loc_703FE3: MemLdStr global_260
  loc_703FE6: FLdRfVar var_F0
  loc_703FE9: FLdUI1
  loc_703FED: FLdPr Me
  loc_703FF0: MemLdUI1 offset
  loc_703FF4: SubUI1
  loc_703FF6: CI2UI1
  loc_703FF8: FLdPrThis
  loc_703FF9: VCallAd Control_ID_Label_Total
  loc_703FFC: FStAdFunc var_EC
  loc_703FFF: FLdPr var_EC
  loc_704002: Set from_stack_2 = Me(from_stack_1)
  loc_704007: FLdPr var_F0
  loc_70400A: Me.Caption = from_stack_1
  loc_70400F: FFreeAd var_EC = ""
  loc_704016: LitI4 &HC000
  loc_70401B: FLdRfVar var_F0
  loc_70401E: FLdUI1
  loc_704022: FLdPr Me
  loc_704025: MemLdUI1 offset
  loc_704029: SubUI1
  loc_70402B: CI2UI1
  loc_70402D: FLdPrThis
  loc_70402E: VCallAd Control_ID_Label_Total
  loc_704031: FStAdFunc var_EC
  loc_704034: FLdPr var_EC
  loc_704037: Set from_stack_2 = Me(from_stack_1)
  loc_70403C: FLdPr var_F0
  loc_70403F: Me.ForeColor = from_stack_1
  loc_704044: FFreeAd var_EC = ""
  loc_70404B: FLdRfVar var_8E
  loc_70404E: Call RefreshTotalData(from_stack_1v)
  loc_704053: FLdPr Me
  loc_704056: MemLdUI1 Surtidor_Actual
  loc_70405A: FLdUI1
  loc_70405E: EqI2
  loc_70405F: BranchF loc_70407A
  loc_704062: LitI2_Byte &HFF
  loc_704064: PopTmpLdAd2 var_10C
  loc_704067: FLdRfVar var_8E
  loc_70406A: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_70406F: FLdRfVar var_8E
  loc_704072: Call RefreshGeneralData(from_stack_1v)
  loc_704077: Branch loc_704087
  loc_70407A: LitI2_Byte 0
  loc_70407C: PopTmpLdAd2 var_10C
  loc_70407F: FLdRfVar var_8E
  loc_704082: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_704087: FLdPrThis
  loc_704088: VCallAd Control_ID_Tanques
  loc_70408B: FStAdFunc var_EC
  loc_70408E: FLdPr var_EC
  loc_704091: LateIdLdVar var_D0 DispID_7 -32767
  loc_704098: CBoolVar
  loc_70409A: LitI2_Byte &HFF
  loc_70409C: EqI2
  loc_70409D: FFree1Ad var_EC
  loc_7040A0: FFree1Var var_D0 = ""
  loc_7040A3: BranchF loc_704105
  loc_7040A6: LitI2_Byte 0
  loc_7040A8: CUI1I2
  loc_7040AA: FLdRfVar var_92
  loc_7040AD: LitI2_Byte 3
  loc_7040AF: CUI1I2
  loc_7040B1: ForUI1 var_110
  loc_7040B7: FLdRfVar var_F0
  loc_7040BA: FLdUI1
  loc_7040BE: CI2UI1
  loc_7040C0: FLdPrThis
  loc_7040C1: VCallAd Control_ID_BotonTanque
  loc_7040C4: FStAdFunc var_EC
  loc_7040C7: FLdPr var_EC
  loc_7040CA: Set from_stack_2 = Me(from_stack_1)
  loc_7040CF: FLdPr var_F0
  loc_7040D2: LateIdLdVar var_D0 DispID_-501 -1
  loc_7040D9: CI4Var
  loc_7040DB: LitI4 &HFF0000
  loc_7040E0: EqI4
  loc_7040E1: FFreeAd var_EC = ""
  loc_7040E8: FFree1Var var_D0 = ""
  loc_7040EB: BranchF loc_7040FC
  loc_7040EE: FLdRfVar var_92
  loc_7040F1: FLdRfVar var_8E
  loc_7040F4: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_7040F9: Branch loc_704105
  loc_7040FC: FLdRfVar var_92
  loc_7040FF: NextUI1
  loc_704105: FLdPr Me
  loc_704108: MemLdRfVar from_stack_1.sAutorizadosCTF
  loc_70410B: FLdUI1
  loc_70410F: CI4UI1
  loc_704110: LitI4 1
  loc_704115: LitStr "0"
  loc_704118: MidStr arg_0
  loc_70411B: Branch loc_7048F6
  loc_70411E: FLdUI1
  loc_704122: LitI2_Byte &H70
  loc_704124: EqI2
  loc_704125: BranchF loc_704284
  loc_704128: LitVar_TRUE var_B0
  loc_70412B: PopAdLdVar
  loc_70412C: FLdRfVar var_F0
  loc_70412F: FLdUI1
  loc_704133: FLdPr Me
  loc_704136: MemLdUI1 offset
  loc_70413A: SubUI1
  loc_70413C: CI2UI1
  loc_70413E: FLdPrThis
  loc_70413F: VCallAd Control_ID_Animation1
  loc_704142: FStAdFunc var_EC
  loc_704145: FLdPr var_EC
  loc_704148: Set from_stack_2 = Me(from_stack_1)
  loc_70414D: FLdPr var_F0
  loc_704150: LateIdSt
  loc_704155: FFreeAd var_EC = ""
  loc_70415C: FLdRfVar var_E4
  loc_70415F: FLdRfVar var_EC
  loc_704162: ImpAdLdRf MemVar_7520D4
  loc_704165: NewIfNullPr Global
  loc_704168:  = Global.App
  loc_70416D: FLdPr var_EC
  loc_704170:  = App.Path
  loc_704175: ILdRf var_E4
  loc_704178: LitStr "\soli.avi"
  loc_70417B: ConcatStr
  loc_70417C: CVarStr var_D0
  loc_70417F: PopAdLdVar
  loc_704180: FLdRfVar var_F4
  loc_704183: FLdUI1
  loc_704187: FLdPr Me
  loc_70418A: MemLdUI1 offset
  loc_70418E: SubUI1
  loc_704190: CI2UI1
  loc_704192: FLdPrThis
  loc_704193: VCallAd Control_ID_Animation1
  loc_704196: FStAdFunc var_F0
  loc_704199: FLdPr var_F0
  loc_70419C: Set from_stack_2 = Me(from_stack_1)
  loc_7041A1: FLdPr var_F4
  loc_7041A4: LateIdCall
  loc_7041AC: FFree1Str var_E4
  loc_7041AF: FFreeAd var_EC = "": var_F0 = ""
  loc_7041B8: FFree1Var var_D0 = ""
  loc_7041BB: LitVarI2 var_B0, -1
  loc_7041C0: PopAdLdVar
  loc_7041C1: LitVarI2 var_C0, 10
  loc_7041C6: PopAdLdVar
  loc_7041C7: LitVarI2 var_104, 12
  loc_7041CC: PopAdLdVar
  loc_7041CD: FLdRfVar var_F0
  loc_7041D0: FLdUI1
  loc_7041D4: FLdPr Me
  loc_7041D7: MemLdUI1 offset
  loc_7041DB: SubUI1
  loc_7041DD: CI2UI1
  loc_7041DF: FLdPrThis
  loc_7041E0: VCallAd Control_ID_Animation1
  loc_7041E3: FStAdFunc var_EC
  loc_7041E6: FLdPr var_EC
  loc_7041E9: Set from_stack_2 = Me(from_stack_1)
  loc_7041EE: FLdPr var_F0
  loc_7041F1: LateIdCall
  loc_7041F9: FFreeAd var_EC = ""
  loc_704200: FLdPr Me
  loc_704203: MemLdStr global_268
  loc_704206: FLdRfVar var_F0
  loc_704209: FLdUI1
  loc_70420D: FLdPr Me
  loc_704210: MemLdUI1 offset
  loc_704214: SubUI1
  loc_704216: CI2UI1
  loc_704218: FLdPrThis
  loc_704219: VCallAd Control_ID_Label_Total
  loc_70421C: FStAdFunc var_EC
  loc_70421F: FLdPr var_EC
  loc_704222: Set from_stack_2 = Me(from_stack_1)
  loc_704227: FLdPr var_F0
  loc_70422A: Me.Caption = from_stack_1
  loc_70422F: FFreeAd var_EC = ""
  loc_704236: LitI4 &HFFFF
  loc_70423B: FLdRfVar var_F0
  loc_70423E: FLdUI1
  loc_704242: FLdPr Me
  loc_704245: MemLdUI1 offset
  loc_704249: SubUI1
  loc_70424B: CI2UI1
  loc_70424D: FLdPrThis
  loc_70424E: VCallAd Control_ID_Label_Total
  loc_704251: FStAdFunc var_EC
  loc_704254: FLdPr var_EC
  loc_704257: Set from_stack_2 = Me(from_stack_1)
  loc_70425C: FLdPr var_F0
  loc_70425F: Me.ForeColor = from_stack_1
  loc_704264: FFreeAd var_EC = ""
  loc_70426B: FLdPr Me
  loc_70426E: MemLdRfVar from_stack_1.sAutorizadosCTF
  loc_704271: FLdUI1
  loc_704275: CI4UI1
  loc_704276: LitI4 1
  loc_70427B: LitStr "0"
  loc_70427E: MidStr arg_0
  loc_704281: Branch loc_7048F6
  loc_704284: FLdUI1
  loc_704288: LitI2_Byte 1
  loc_70428A: EqI2
  loc_70428B: BranchF loc_7043C9
  loc_70428E: LitVar_FALSE
  loc_704292: PopAdLdVar
  loc_704293: FLdRfVar var_F0
  loc_704296: FLdUI1
  loc_70429A: FLdPr Me
  loc_70429D: MemLdUI1 offset
  loc_7042A1: SubUI1
  loc_7042A3: CI2UI1
  loc_7042A5: FLdPrThis
  loc_7042A6: VCallAd Control_ID_Animation1
  loc_7042A9: FStAdFunc var_EC
  loc_7042AC: FLdPr var_EC
  loc_7042AF: Set from_stack_2 = Me(from_stack_1)
  loc_7042B4: FLdPr var_F0
  loc_7042B7: LateIdSt
  loc_7042BC: FFreeAd var_EC = ""
  loc_7042C3: FLdRfVar var_E4
  loc_7042C6: FLdRfVar var_EC
  loc_7042C9: ImpAdLdRf MemVar_7520D4
  loc_7042CC: NewIfNullPr Global
  loc_7042CF:  = Global.App
  loc_7042D4: FLdPr var_EC
  loc_7042D7:  = App.Path
  loc_7042DC: ILdRf var_E4
  loc_7042DF: LitStr "\anulado.avi"
  loc_7042E2: ConcatStr
  loc_7042E3: CVarStr var_D0
  loc_7042E6: PopAdLdVar
  loc_7042E7: FLdRfVar var_F4
  loc_7042EA: FLdUI1
  loc_7042EE: FLdPr Me
  loc_7042F1: MemLdUI1 offset
  loc_7042F5: SubUI1
  loc_7042F7: CI2UI1
  loc_7042F9: FLdPrThis
  loc_7042FA: VCallAd Control_ID_Animation1
  loc_7042FD: FStAdFunc var_F0
  loc_704300: FLdPr var_F0
  loc_704303: Set from_stack_2 = Me(from_stack_1)
  loc_704308: FLdPr var_F4
  loc_70430B: LateIdCall
  loc_704313: FFree1Str var_E4
  loc_704316: FFreeAd var_EC = "": var_F0 = ""
  loc_70431F: FFree1Var var_D0 = ""
  loc_704322: LitVarI2 var_B0, 1
  loc_704327: PopAdLdVar
  loc_704328: FLdRfVar var_F0
  loc_70432B: FLdUI1
  loc_70432F: FLdPr Me
  loc_704332: MemLdUI1 offset
  loc_704336: SubUI1
  loc_704338: CI2UI1
  loc_70433A: FLdPrThis
  loc_70433B: VCallAd Control_ID_Animation1
  loc_70433E: FStAdFunc var_EC
  loc_704341: FLdPr var_EC
  loc_704344: Set from_stack_2 = Me(from_stack_1)
  loc_704349: FLdPr var_F0
  loc_70434C: LateIdCall
  loc_704354: FFreeAd var_EC = ""
  loc_70435B: FLdPr Me
  loc_70435E: MemLdStr global_252
  loc_704361: FLdRfVar var_F0
  loc_704364: FLdUI1
  loc_704368: FLdPr Me
  loc_70436B: MemLdUI1 offset
  loc_70436F: SubUI1
  loc_704371: CI2UI1
  loc_704373: FLdPrThis
  loc_704374: VCallAd Control_ID_Label_Total
  loc_704377: FStAdFunc var_EC
  loc_70437A: FLdPr var_EC
  loc_70437D: Set from_stack_2 = Me(from_stack_1)
  loc_704382: FLdPr var_F0
  loc_704385: Me.Caption = from_stack_1
  loc_70438A: FFreeAd var_EC = ""
  loc_704391: LitI4 &H40C0
  loc_704396: FLdRfVar var_F0
  loc_704399: FLdUI1
  loc_70439D: FLdPr Me
  loc_7043A0: MemLdUI1 offset
  loc_7043A4: SubUI1
  loc_7043A6: CI2UI1
  loc_7043A8: FLdPrThis
  loc_7043A9: VCallAd Control_ID_Label_Total
  loc_7043AC: FStAdFunc var_EC
  loc_7043AF: FLdPr var_EC
  loc_7043B2: Set from_stack_2 = Me(from_stack_1)
  loc_7043B7: FLdPr var_F0
  loc_7043BA: Me.ForeColor = from_stack_1
  loc_7043BF: FFreeAd var_EC = ""
  loc_7043C6: Branch loc_7048F6
  loc_7043C9: FLdUI1
  loc_7043CD: LitI2_Byte &H10
  loc_7043CF: EqI2
  loc_7043D0: BranchF loc_70450E
  loc_7043D3: LitVar_FALSE
  loc_7043D7: PopAdLdVar
  loc_7043D8: FLdRfVar var_F0
  loc_7043DB: FLdUI1
  loc_7043DF: FLdPr Me
  loc_7043E2: MemLdUI1 offset
  loc_7043E6: SubUI1
  loc_7043E8: CI2UI1
  loc_7043EA: FLdPrThis
  loc_7043EB: VCallAd Control_ID_Animation1
  loc_7043EE: FStAdFunc var_EC
  loc_7043F1: FLdPr var_EC
  loc_7043F4: Set from_stack_2 = Me(from_stack_1)
  loc_7043F9: FLdPr var_F0
  loc_7043FC: LateIdSt
  loc_704401: FFreeAd var_EC = ""
  loc_704408: FLdRfVar var_E4
  loc_70440B: FLdRfVar var_EC
  loc_70440E: ImpAdLdRf MemVar_7520D4
  loc_704411: NewIfNullPr Global
  loc_704414:  = Global.App
  loc_704419: FLdPr var_EC
  loc_70441C:  = App.Path
  loc_704421: ILdRf var_E4
  loc_704424: LitStr "\anulado.avi"
  loc_704427: ConcatStr
  loc_704428: CVarStr var_D0
  loc_70442B: PopAdLdVar
  loc_70442C: FLdRfVar var_F4
  loc_70442F: FLdUI1
  loc_704433: FLdPr Me
  loc_704436: MemLdUI1 offset
  loc_70443A: SubUI1
  loc_70443C: CI2UI1
  loc_70443E: FLdPrThis
  loc_70443F: VCallAd Control_ID_Animation1
  loc_704442: FStAdFunc var_F0
  loc_704445: FLdPr var_F0
  loc_704448: Set from_stack_2 = Me(from_stack_1)
  loc_70444D: FLdPr var_F4
  loc_704450: LateIdCall
  loc_704458: FFree1Str var_E4
  loc_70445B: FFreeAd var_EC = "": var_F0 = ""
  loc_704464: FFree1Var var_D0 = ""
  loc_704467: LitVarI2 var_B0, 1
  loc_70446C: PopAdLdVar
  loc_70446D: FLdRfVar var_F0
  loc_704470: FLdUI1
  loc_704474: FLdPr Me
  loc_704477: MemLdUI1 offset
  loc_70447B: SubUI1
  loc_70447D: CI2UI1
  loc_70447F: FLdPrThis
  loc_704480: VCallAd Control_ID_Animation1
  loc_704483: FStAdFunc var_EC
  loc_704486: FLdPr var_EC
  loc_704489: Set from_stack_2 = Me(from_stack_1)
  loc_70448E: FLdPr var_F0
  loc_704491: LateIdCall
  loc_704499: FFreeAd var_EC = ""
  loc_7044A0: FLdPr Me
  loc_7044A3: MemLdStr global_256
  loc_7044A6: FLdRfVar var_F0
  loc_7044A9: FLdUI1
  loc_7044AD: FLdPr Me
  loc_7044B0: MemLdUI1 offset
  loc_7044B4: SubUI1
  loc_7044B6: CI2UI1
  loc_7044B8: FLdPrThis
  loc_7044B9: VCallAd Control_ID_Label_Total
  loc_7044BC: FStAdFunc var_EC
  loc_7044BF: FLdPr var_EC
  loc_7044C2: Set from_stack_2 = Me(from_stack_1)
  loc_7044C7: FLdPr var_F0
  loc_7044CA: Me.Caption = from_stack_1
  loc_7044CF: FFreeAd var_EC = ""
  loc_7044D6: LitI4 &H40C0
  loc_7044DB: FLdRfVar var_F0
  loc_7044DE: FLdUI1
  loc_7044E2: FLdPr Me
  loc_7044E5: MemLdUI1 offset
  loc_7044E9: SubUI1
  loc_7044EB: CI2UI1
  loc_7044ED: FLdPrThis
  loc_7044EE: VCallAd Control_ID_Label_Total
  loc_7044F1: FStAdFunc var_EC
  loc_7044F4: FLdPr var_EC
  loc_7044F7: Set from_stack_2 = Me(from_stack_1)
  loc_7044FC: FLdPr var_F0
  loc_7044FF: Me.ForeColor = from_stack_1
  loc_704504: FFreeAd var_EC = ""
  loc_70450B: Branch loc_7048F6
  loc_70450E: FLdUI1
  loc_704512: LitI2 128
  loc_704515: EqI2
  loc_704516: BranchF loc_70465F
  loc_704519: LitVar_TRUE var_B0
  loc_70451C: PopAdLdVar
  loc_70451D: FLdRfVar var_F0
  loc_704520: FLdUI1
  loc_704524: FLdPr Me
  loc_704527: MemLdUI1 offset
  loc_70452B: SubUI1
  loc_70452D: CI2UI1
  loc_70452F: FLdPrThis
  loc_704530: VCallAd Control_ID_Animation1
  loc_704533: FStAdFunc var_EC
  loc_704536: FLdPr var_EC
  loc_704539: Set from_stack_2 = Me(from_stack_1)
  loc_70453E: FLdPr var_F0
  loc_704541: LateIdSt
  loc_704546: FFreeAd var_EC = ""
  loc_70454D: FLdRfVar var_E4
  loc_704550: FLdRfVar var_EC
  loc_704553: ImpAdLdRf MemVar_7520D4
  loc_704556: NewIfNullPr Global
  loc_704559:  = Global.App
  loc_70455E: FLdPr var_EC
  loc_704561:  = App.Path
  loc_704566: ILdRf var_E4
  loc_704569: LitStr "\auto.avi"
  loc_70456C: ConcatStr
  loc_70456D: CVarStr var_D0
  loc_704570: PopAdLdVar
  loc_704571: FLdRfVar var_F4
  loc_704574: FLdUI1
  loc_704578: FLdPr Me
  loc_70457B: MemLdUI1 offset
  loc_70457F: SubUI1
  loc_704581: CI2UI1
  loc_704583: FLdPrThis
  loc_704584: VCallAd Control_ID_Animation1
  loc_704587: FStAdFunc var_F0
  loc_70458A: FLdPr var_F0
  loc_70458D: Set from_stack_2 = Me(from_stack_1)
  loc_704592: FLdPr var_F4
  loc_704595: LateIdCall
  loc_70459D: FFree1Str var_E4
  loc_7045A0: FFreeAd var_EC = "": var_F0 = ""
  loc_7045A9: FFree1Var var_D0 = ""
  loc_7045AC: LitVarI2 var_B0, -1
  loc_7045B1: PopAdLdVar
  loc_7045B2: LitVarI2 var_C0, 3
  loc_7045B7: PopAdLdVar
  loc_7045B8: LitVarI2 var_104, 5
  loc_7045BD: PopAdLdVar
  loc_7045BE: FLdRfVar var_F0
  loc_7045C1: FLdUI1
  loc_7045C5: FLdPr Me
  loc_7045C8: MemLdUI1 offset
  loc_7045CC: SubUI1
  loc_7045CE: CI2UI1
  loc_7045D0: FLdPrThis
  loc_7045D1: VCallAd Control_ID_Animation1
  loc_7045D4: FStAdFunc var_EC
  loc_7045D7: FLdPr var_EC
  loc_7045DA: Set from_stack_2 = Me(from_stack_1)
  loc_7045DF: FLdPr var_F0
  loc_7045E2: LateIdCall
  loc_7045EA: FFreeAd var_EC = ""
  loc_7045F1: FLdPr Me
  loc_7045F4: MemLdStr global_272
  loc_7045F7: FLdRfVar var_F0
  loc_7045FA: FLdUI1
  loc_7045FE: FLdPr Me
  loc_704601: MemLdUI1 offset
  loc_704605: SubUI1
  loc_704607: CI2UI1
  loc_704609: FLdPrThis
  loc_70460A: VCallAd Control_ID_Label_Total
  loc_70460D: FStAdFunc var_EC
  loc_704610: FLdPr var_EC
  loc_704613: Set from_stack_2 = Me(from_stack_1)
  loc_704618: FLdPr var_F0
  loc_70461B: Me.Caption = from_stack_1
  loc_704620: FFreeAd var_EC = ""
  loc_704627: LitI4 &H8000
  loc_70462C: FLdRfVar var_F0
  loc_70462F: FLdUI1
  loc_704633: FLdPr Me
  loc_704636: MemLdUI1 offset
  loc_70463A: SubUI1
  loc_70463C: CI2UI1
  loc_70463E: FLdPrThis
  loc_70463F: VCallAd Control_ID_Label_Total
  loc_704642: FStAdFunc var_EC
  loc_704645: FLdPr var_EC
  loc_704648: Set from_stack_2 = Me(from_stack_1)
  loc_70464D: FLdPr var_F0
  loc_704650: Me.ForeColor = from_stack_1
  loc_704655: FFreeAd var_EC = ""
  loc_70465C: Branch loc_7048F6
  loc_70465F: FLdUI1
  loc_704663: LitI2 176
  loc_704666: EqI2
  loc_704667: BranchF loc_7047B0
  loc_70466A: LitVar_TRUE var_B0
  loc_70466D: PopAdLdVar
  loc_70466E: FLdRfVar var_F0
  loc_704671: FLdUI1
  loc_704675: FLdPr Me
  loc_704678: MemLdUI1 offset
  loc_70467C: SubUI1
  loc_70467E: CI2UI1
  loc_704680: FLdPrThis
  loc_704681: VCallAd Control_ID_Animation1
  loc_704684: FStAdFunc var_EC
  loc_704687: FLdPr var_EC
  loc_70468A: Set from_stack_2 = Me(from_stack_1)
  loc_70468F: FLdPr var_F0
  loc_704692: LateIdSt
  loc_704697: FFreeAd var_EC = ""
  loc_70469E: FLdRfVar var_E4
  loc_7046A1: FLdRfVar var_EC
  loc_7046A4: ImpAdLdRf MemVar_7520D4
  loc_7046A7: NewIfNullPr Global
  loc_7046AA:  = Global.App
  loc_7046AF: FLdPr var_EC
  loc_7046B2:  = App.Path
  loc_7046B7: ILdRf var_E4
  loc_7046BA: LitStr "\devuel.avi"
  loc_7046BD: ConcatStr
  loc_7046BE: CVarStr var_D0
  loc_7046C1: PopAdLdVar
  loc_7046C2: FLdRfVar var_F4
  loc_7046C5: FLdUI1
  loc_7046C9: FLdPr Me
  loc_7046CC: MemLdUI1 offset
  loc_7046D0: SubUI1
  loc_7046D2: CI2UI1
  loc_7046D4: FLdPrThis
  loc_7046D5: VCallAd Control_ID_Animation1
  loc_7046D8: FStAdFunc var_F0
  loc_7046DB: FLdPr var_F0
  loc_7046DE: Set from_stack_2 = Me(from_stack_1)
  loc_7046E3: FLdPr var_F4
  loc_7046E6: LateIdCall
  loc_7046EE: FFree1Str var_E4
  loc_7046F1: FFreeAd var_EC = "": var_F0 = ""
  loc_7046FA: FFree1Var var_D0 = ""
  loc_7046FD: LitVarI2 var_B0, -1
  loc_704702: PopAdLdVar
  loc_704703: LitVarI2 var_C0, 3
  loc_704708: PopAdLdVar
  loc_704709: LitVarI2 var_104, 5
  loc_70470E: PopAdLdVar
  loc_70470F: FLdRfVar var_F0
  loc_704712: FLdUI1
  loc_704716: FLdPr Me
  loc_704719: MemLdUI1 offset
  loc_70471D: SubUI1
  loc_70471F: CI2UI1
  loc_704721: FLdPrThis
  loc_704722: VCallAd Control_ID_Animation1
  loc_704725: FStAdFunc var_EC
  loc_704728: FLdPr var_EC
  loc_70472B: Set from_stack_2 = Me(from_stack_1)
  loc_704730: FLdPr var_F0
  loc_704733: LateIdCall
  loc_70473B: FFreeAd var_EC = ""
  loc_704742: FLdPr Me
  loc_704745: MemLdStr global_276
  loc_704748: FLdRfVar var_F0
  loc_70474B: FLdUI1
  loc_70474F: FLdPr Me
  loc_704752: MemLdUI1 offset
  loc_704756: SubUI1
  loc_704758: CI2UI1
  loc_70475A: FLdPrThis
  loc_70475B: VCallAd Control_ID_Label_Total
  loc_70475E: FStAdFunc var_EC
  loc_704761: FLdPr var_EC
  loc_704764: Set from_stack_2 = Me(from_stack_1)
  loc_704769: FLdPr var_F0
  loc_70476C: Me.Caption = from_stack_1
  loc_704771: FFreeAd var_EC = ""
  loc_704778: LitI4 &HFFFF00
  loc_70477D: FLdRfVar var_F0
  loc_704780: FLdUI1
  loc_704784: FLdPr Me
  loc_704787: MemLdUI1 offset
  loc_70478B: SubUI1
  loc_70478D: CI2UI1
  loc_70478F: FLdPrThis
  loc_704790: VCallAd Control_ID_Label_Total
  loc_704793: FStAdFunc var_EC
  loc_704796: FLdPr var_EC
  loc_704799: Set from_stack_2 = Me(from_stack_1)
  loc_70479E: FLdPr var_F0
  loc_7047A1: Me.ForeColor = from_stack_1
  loc_7047A6: FFreeAd var_EC = ""
  loc_7047AD: Branch loc_7048F6
  loc_7047B0: FLdUI1
  loc_7047B4: LitI2 192
  loc_7047B7: EqI2
  loc_7047B8: BranchF loc_7048F6
  loc_7047BB: LitVar_FALSE
  loc_7047BF: PopAdLdVar
  loc_7047C0: FLdRfVar var_F0
  loc_7047C3: FLdUI1
  loc_7047C7: FLdPr Me
  loc_7047CA: MemLdUI1 offset
  loc_7047CE: SubUI1
  loc_7047D0: CI2UI1
  loc_7047D2: FLdPrThis
  loc_7047D3: VCallAd Control_ID_Animation1
  loc_7047D6: FStAdFunc var_EC
  loc_7047D9: FLdPr var_EC
  loc_7047DC: Set from_stack_2 = Me(from_stack_1)
  loc_7047E1: FLdPr var_F0
  loc_7047E4: LateIdSt
  loc_7047E9: FFreeAd var_EC = ""
  loc_7047F0: FLdRfVar var_E4
  loc_7047F3: FLdRfVar var_EC
  loc_7047F6: ImpAdLdRf MemVar_7520D4
  loc_7047F9: NewIfNullPr Global
  loc_7047FC:  = Global.App
  loc_704801: FLdPr var_EC
  loc_704804:  = App.Path
  loc_704809: ILdRf var_E4
  loc_70480C: LitStr "\stops.avi"
  loc_70480F: ConcatStr
  loc_704810: CVarStr var_D0
  loc_704813: PopAdLdVar
  loc_704814: FLdRfVar var_F4
  loc_704817: FLdUI1
  loc_70481B: FLdPr Me
  loc_70481E: MemLdUI1 offset
  loc_704822: SubUI1
  loc_704824: CI2UI1
  loc_704826: FLdPrThis
  loc_704827: VCallAd Control_ID_Animation1
  loc_70482A: FStAdFunc var_F0
  loc_70482D: FLdPr var_F0
  loc_704830: Set from_stack_2 = Me(from_stack_1)
  loc_704835: FLdPr var_F4
  loc_704838: LateIdCall
  loc_704840: FFree1Str var_E4
  loc_704843: FFreeAd var_EC = "": var_F0 = ""
  loc_70484C: FFree1Var var_D0 = ""
  loc_70484F: LitVarI2 var_B0, 1
  loc_704854: PopAdLdVar
  loc_704855: FLdRfVar var_F0
  loc_704858: FLdUI1
  loc_70485C: FLdPr Me
  loc_70485F: MemLdUI1 offset
  loc_704863: SubUI1
  loc_704865: CI2UI1
  loc_704867: FLdPrThis
  loc_704868: VCallAd Control_ID_Animation1
  loc_70486B: FStAdFunc var_EC
  loc_70486E: FLdPr var_EC
  loc_704871: Set from_stack_2 = Me(from_stack_1)
  loc_704876: FLdPr var_F0
  loc_704879: LateIdCall
  loc_704881: FFreeAd var_EC = ""
  loc_704888: FLdPr Me
  loc_70488B: MemLdStr global_280
  loc_70488E: FLdRfVar var_F0
  loc_704891: FLdUI1
  loc_704895: FLdPr Me
  loc_704898: MemLdUI1 offset
  loc_70489C: SubUI1
  loc_70489E: CI2UI1
  loc_7048A0: FLdPrThis
  loc_7048A1: VCallAd Control_ID_Label_Total
  loc_7048A4: FStAdFunc var_EC
  loc_7048A7: FLdPr var_EC
  loc_7048AA: Set from_stack_2 = Me(from_stack_1)
  loc_7048AF: FLdPr var_F0
  loc_7048B2: Me.Caption = from_stack_1
  loc_7048B7: FFreeAd var_EC = ""
  loc_7048BE: LitI4 &H40C0
  loc_7048C3: FLdRfVar var_F0
  loc_7048C6: FLdUI1
  loc_7048CA: FLdPr Me
  loc_7048CD: MemLdUI1 offset
  loc_7048D1: SubUI1
  loc_7048D3: CI2UI1
  loc_7048D5: FLdPrThis
  loc_7048D6: VCallAd Control_ID_Label_Total
  loc_7048D9: FStAdFunc var_EC
  loc_7048DC: FLdPr var_EC
  loc_7048DF: Set from_stack_2 = Me(from_stack_1)
  loc_7048E4: FLdPr var_F0
  loc_7048E7: Me.ForeColor = from_stack_1
  loc_7048EC: FFreeAd var_EC = ""
  loc_7048F3: Branch loc_7048F6
  loc_7048F6: FLdRfVar var_8E
  loc_7048F9: NextUI1
  loc_7048FF: LitI2_Byte 0
  loc_704901: FLdPr Me
  loc_704904: MemStI2 global_98
  loc_704907: FLdPr Me
  loc_70490A: MemLdUI1 global_116
  loc_70490E: CI2UI1
  loc_704910: LitI2_Byte 5
  loc_704912: EqI2
  loc_704913: BranchF loc_70495F
  loc_704916: ImpAdLdI2 MemVar_74C7C2
  loc_704919: BranchF loc_70493F
  loc_70491C: LitI2_Byte 0
  loc_70491E: PopTmpLdAd2 var_10C
  loc_704921: FLdPr Me
  loc_704924: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_704927: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_70492C: LitI2_Byte 0
  loc_70492E: PopTmpLdAd2 var_10C
  loc_704931: FLdPr Me
  loc_704934: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_704937: from_stack_3v = Proc_161_141_72317C(from_stack_1v, from_stack_2v)
  loc_70493C: Branch loc_70495F
  loc_70493F: LitI2_Byte &HFF
  loc_704941: PopTmpLdAd2 var_10C
  loc_704944: FLdPr Me
  loc_704947: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_70494A: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_70494F: LitI2_Byte &HFF
  loc_704951: PopTmpLdAd2 var_10C
  loc_704954: FLdPr Me
  loc_704957: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_70495A: from_stack_3v = Proc_161_141_72317C(from_stack_1v, from_stack_2v)
  loc_70495F: FLdPr Me
  loc_704962: MemLdUI1 Surtidor_Actual
  loc_704966: CI4UI1
  loc_704967: ImpAdLdRf MemVar_74C004
  loc_70496A: Ary1LdPr
  loc_70496B: MemLdUI1 global_43
  loc_70496F: LitI2 144
  loc_704972: EqI2
  loc_704973: FLdPr Me
  loc_704976: MemLdUI1 Surtidor_Actual
  loc_70497A: CI4UI1
  loc_70497B: ImpAdLdRf MemVar_74C004
  loc_70497E: Ary1LdPr
  loc_70497F: MemLdUI1 global_43
  loc_704983: LitI2 192
  loc_704986: EqI2
  loc_704987: OrI4
  loc_704988: BranchF loc_704CA4
  loc_70498B: FLdRfVar var_E4
  loc_70498E: FLdPr Me
  loc_704991: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_704994: FLdRfVar var_EC
  loc_704997: ImpAdLdRf MemVar_74C760
  loc_70499A: NewIfNullPr Formx
  loc_70499D: from_stack_1v = Formx.global_4589716Get()
  loc_7049A2: FLdPr var_EC
  loc_7049AA: FLdZeroAd var_E4
  loc_7049AD: FStStr var_8C
  loc_7049B0: FFree1Ad var_EC
  loc_7049B3: LitVarI2 var_D0, 8
  loc_7049B8: LitI4 1
  loc_7049BD: FLdRfVar var_8C
  loc_7049C0: CVarRef
  loc_7049C5: FLdRfVar var_E0
  loc_7049C8: ImpAdCallFPR4  = Mid(, , )
  loc_7049CD: FLdRfVar var_E0
  loc_7049D0: CStrVarVal var_E4
  loc_7049D4: ImpAdCallFPR4 push Val()
  loc_7049D9: CR8R8
  loc_7049DA: LitI2_Byte &HFF
  loc_7049DC: CR8I2
  loc_7049DD: NeR8
  loc_7049DE: FFree1Str var_E4
  loc_7049E1: FFreeVar var_D0 = ""
  loc_7049E8: BranchF loc_704AD1
  loc_7049EB: LitVarI2 var_D0, 8
  loc_7049F0: LitI4 1
  loc_7049F5: FLdRfVar var_8C
  loc_7049F8: CVarRef
  loc_7049FD: FLdRfVar var_E0
  loc_704A00: ImpAdCallFPR4  = Mid(, , )
  loc_704A05: LitI4 1
  loc_704A0A: LitI4 1
  loc_704A0F: ImpAdLdRf MemVar_74C368
  loc_704A12: CVarRef
  loc_704A17: FLdRfVar var_E0
  loc_704A1A: FnCCurVar
  loc_704A1C: CR8Cy
  loc_704A1D: ImpAdLdFPR4 MemVar_74C2E0
  loc_704A20: DivR8
  loc_704A21: CVarR8
  loc_704A25: FLdRfVar var_140
  loc_704A28: ImpAdCallFPR4  = Format(, )
  loc_704A2D: FLdRfVar var_140
  loc_704A30: CStrVarTmp
  loc_704A31: FStStr var_98
  loc_704A34: FFreeVar var_D0 = "": var_E0 = "": var_E0 = "": var_120 = ""
  loc_704A41: FLdRfVar var_E4
  loc_704A44: FLdRfVar var_98
  loc_704A47: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_704A4C: FLdZeroAd var_E4
  loc_704A4F: FStStr var_98
  loc_704A52: LitVarI2 var_D0, 8
  loc_704A57: LitI4 1
  loc_704A5C: FLdRfVar var_8C
  loc_704A5F: CVarRef
  loc_704A64: FLdRfVar var_E0
  loc_704A67: ImpAdCallFPR4  = Mid(, , )
  loc_704A6C: LitI4 1
  loc_704A71: LitI4 1
  loc_704A76: ImpAdLdRf MemVar_74C368
  loc_704A79: CVarRef
  loc_704A7E: FLdRfVar var_E0
  loc_704A81: FnCCurVar
  loc_704A83: CR8Cy
  loc_704A84: ImpAdLdFPR4 MemVar_74C2E0
  loc_704A87: DivR8
  loc_704A88: CVarR8
  loc_704A8C: FLdRfVar var_140
  loc_704A8F: ImpAdCallFPR4  = Format(, )
  loc_704A94: FLdRfVar var_140
  loc_704A97: CStrVarTmp
  loc_704A98: FStStr var_9C
  loc_704A9B: FFreeVar var_D0 = "": var_E0 = "": var_E0 = "": var_120 = ""
  loc_704AA8: FLdRfVar var_E4
  loc_704AAB: FLdRfVar var_9C
  loc_704AAE: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_704AB3: FLdZeroAd var_E4
  loc_704AB6: FStStr var_9C
  loc_704AB9: ILdRf var_9C
  loc_704ABC: FLdPrThis
  loc_704ABD: VCallAd Control_ID_EstaVenta
  loc_704AC0: FStAdFunc var_EC
  loc_704AC3: FLdPr var_EC
  loc_704AC6: Me.Caption = from_stack_1
  loc_704ACB: FFree1Ad var_EC
  loc_704ACE: Branch loc_704AE6
  loc_704AD1: LitStr vbNullString
  loc_704AD4: FLdPrThis
  loc_704AD5: VCallAd Control_ID_EstaVenta
  loc_704AD8: FStAdFunc var_EC
  loc_704ADB: FLdPr var_EC
  loc_704ADE: Me.Caption = from_stack_1
  loc_704AE3: FFree1Ad var_EC
  loc_704AE6: LitVarI2 var_D0, 8
  loc_704AEB: LitI4 9
  loc_704AF0: FLdRfVar var_8C
  loc_704AF3: CVarRef
  loc_704AF8: FLdRfVar var_E0
  loc_704AFB: ImpAdCallFPR4  = Mid(, , )
  loc_704B00: FLdRfVar var_E0
  loc_704B03: CStrVarVal var_E4
  loc_704B07: ImpAdCallFPR4 push Val()
  loc_704B0C: CR8R8
  loc_704B0D: LitI2_Byte &HFF
  loc_704B0F: CR8I2
  loc_704B10: NeR8
  loc_704B11: FFree1Str var_E4
  loc_704B14: FFreeVar var_D0 = ""
  loc_704B1B: BranchF loc_704BC3
  loc_704B1E: LitVarI2 var_D0, 8
  loc_704B23: LitI4 9
  loc_704B28: FLdRfVar var_8C
  loc_704B2B: CVarRef
  loc_704B30: FLdRfVar var_E0
  loc_704B33: ImpAdCallFPR4  = Mid(, , )
  loc_704B38: LitI4 1
  loc_704B3D: LitI4 1
  loc_704B42: LitVarStr var_130, "##0.00"
  loc_704B47: FStVarCopyObj var_140
  loc_704B4A: FLdRfVar var_140
  loc_704B4D: FLdRfVar var_E0
  loc_704B50: FnCCurVar
  loc_704B52: CR8Cy
  loc_704B53: LitI2_Byte &H64
  loc_704B55: CR8I2
  loc_704B56: DivR8
  loc_704B57: CVarR8
  loc_704B5B: FLdRfVar var_150
  loc_704B5E: ImpAdCallFPR4  = Format(, )
  loc_704B63: FLdRfVar var_150
  loc_704B66: CStrVarTmp
  loc_704B67: FStStr var_98
  loc_704B6A: FFreeVar var_D0 = "": var_E0 = "": var_E0 = "": var_120 = "": var_140 = ""
  loc_704B79: FLdRfVar var_E4
  loc_704B7C: FLdRfVar var_98
  loc_704B7F: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_704B84: FLdZeroAd var_E4
  loc_704B87: FStStr var_98
  loc_704B8A: ILdRf var_98
  loc_704B8D: FLdPrThis
  loc_704B8E: VCallAd Control_ID_Litros
  loc_704B91: FStAdFunc var_EC
  loc_704B94: FLdPr var_EC
  loc_704B97: Me.Caption = from_stack_1
  loc_704B9C: FFree1Ad var_EC
  loc_704B9F: ImpAdLdUI1
  loc_704BA3: CI2UI1
  loc_704BA5: LitI2_Byte 3
  loc_704BA7: GtI2
  loc_704BA8: BranchF loc_704BC0
  loc_704BAB: LitStr "00000.-"
  loc_704BAE: FLdPrThis
  loc_704BAF: VCallAd Control_ID_LitrosP
  loc_704BB2: FStAdFunc var_EC
  loc_704BB5: FLdPr var_EC
  loc_704BB8: Me.Caption = from_stack_1
  loc_704BBD: FFree1Ad var_EC
  loc_704BC0: Branch loc_704BD8
  loc_704BC3: LitStr vbNullString
  loc_704BC6: FLdPrThis
  loc_704BC7: VCallAd Control_ID_Litros
  loc_704BCA: FStAdFunc var_EC
  loc_704BCD: FLdPr var_EC
  loc_704BD0: Me.Caption = from_stack_1
  loc_704BD5: FFree1Ad var_EC
  loc_704BD8: LitVarI2 var_D0, 6
  loc_704BDD: LitI4 &H11
  loc_704BE2: FLdRfVar var_8C
  loc_704BE5: CVarRef
  loc_704BEA: FLdRfVar var_E0
  loc_704BED: ImpAdCallFPR4  = Mid(, , )
  loc_704BF2: FLdRfVar var_E0
  loc_704BF5: CStrVarVal var_E4
  loc_704BF9: ImpAdCallFPR4 push Val()
  loc_704BFE: CR8R8
  loc_704BFF: LitI2_Byte &HFF
  loc_704C01: CR8I2
  loc_704C02: NeR8
  loc_704C03: FFree1Str var_E4
  loc_704C06: FFreeVar var_D0 = ""
  loc_704C0D: BranchF loc_704C8F
  loc_704C10: LitVarI2 var_D0, 6
  loc_704C15: LitI4 &H11
  loc_704C1A: FLdRfVar var_8C
  loc_704C1D: CVarRef
  loc_704C22: FLdRfVar var_E0
  loc_704C25: ImpAdCallFPR4  = Mid(, , )
  loc_704C2A: LitI4 1
  loc_704C2F: LitI4 1
  loc_704C34: ImpAdLdRf MemVar_74C350
  loc_704C37: CVarRef
  loc_704C3C: FLdRfVar var_E0
  loc_704C3F: FnCCurVar
  loc_704C41: CR8Cy
  loc_704C42: ImpAdLdFPR4 MemVar_74C2DC
  loc_704C45: DivR8
  loc_704C46: CVarR8
  loc_704C4A: FLdRfVar var_140
  loc_704C4D: ImpAdCallFPR4  = Format(, )
  loc_704C52: FLdRfVar var_140
  loc_704C55: CStrVarTmp
  loc_704C56: FStStr var_98
  loc_704C59: FFreeVar var_D0 = "": var_E0 = "": var_E0 = "": var_120 = ""
  loc_704C66: FLdRfVar var_E4
  loc_704C69: FLdRfVar var_98
  loc_704C6C: from_stack_2v = Proc_161_152_5DD688(from_stack_1v)
  loc_704C71: FLdZeroAd var_E4
  loc_704C74: FStStr var_98
  loc_704C77: ILdRf var_98
  loc_704C7A: FLdPrThis
  loc_704C7B: VCallAd Control_ID_PPU
  loc_704C7E: FStAdFunc var_EC
  loc_704C81: FLdPr var_EC
  loc_704C84: Me.Caption = from_stack_1
  loc_704C89: FFree1Ad var_EC
  loc_704C8C: Branch loc_704CA4
  loc_704C8F: LitStr vbNullString
  loc_704C92: FLdPrThis
  loc_704C93: VCallAd Control_ID_PPU
  loc_704C96: FStAdFunc var_EC
  loc_704C99: FLdPr var_EC
  loc_704C9C: Me.Caption = from_stack_1
  loc_704CA1: FFree1Ad var_EC
  loc_704CA4: FLdI2 var_90
  loc_704CA7: LitI2_Byte 0
  loc_704CA9: NeI2
  loc_704CAA: BranchF loc_704D7D
  loc_704CAD: FLdPr Me
  loc_704CB0: MemLdI2 global_104
  loc_704CB3: BranchF loc_704D7D
  loc_704CB6: ImpAdLdI2 MemVar_74BEA6
  loc_704CB9: BranchF loc_704D17
  loc_704CBC: FLdRfVar var_E4
  loc_704CBF: FLdRfVar var_EC
  loc_704CC2: ImpAdLdRf MemVar_7520D4
  loc_704CC5: NewIfNullPr Global
  loc_704CC8:  = Global.App
  loc_704CCD: FLdPr var_EC
  loc_704CD0:  = App.Path
  loc_704CD5: ILdRf var_E4
  loc_704CD8: LitStr "\solicitud.wav"
  loc_704CDB: ConcatStr
  loc_704CDC: CVarStr var_D0
  loc_704CDF: PopAdLdVar
  loc_704CE0: FLdPrThis
  loc_704CE1: VCallAd Control_ID_Sonido
  loc_704CE4: FStAdFunc var_F0
  loc_704CE7: FLdPr var_F0
  loc_704CEA: LateIdSt
  loc_704CEF: FFree1Str var_E4
  loc_704CF2: FFreeAd var_EC = ""
  loc_704CF9: FFree1Var var_D0 = ""
  loc_704CFC: LitVarStr var_B0, "Sound"
  loc_704D01: PopAdLdVar
  loc_704D02: FLdPrThis
  loc_704D03: VCallAd Control_ID_Sonido
  loc_704D06: FStAdFunc var_EC
  loc_704D09: FLdPr var_EC
  loc_704D0C: LateIdSt
  loc_704D11: FFree1Ad var_EC
  loc_704D14: Branch loc_704D7D
  loc_704D17: LitI2_Byte 1
  loc_704D19: FLdRfVar var_106
  loc_704D1C: LitI2_Byte 2
  loc_704D1E: ForI2 var_154
  loc_704D24: LitI4 &H64
  loc_704D29: LitI4 &H1C2
  loc_704D2E: ImpAdCallFPR4 ()
  loc_704D33: SetLastSystemError
  loc_704D34: LitI4 &H32
  loc_704D39: ImpAdCallFPR4 Sleep()
  loc_704D3E: SetLastSystemError
  loc_704D3F: LitI4 &H64
  loc_704D44: LitI4 &H1C2
  loc_704D49: ImpAdCallFPR4 ()
  loc_704D4E: SetLastSystemError
  loc_704D4F: LitI4 &H32
  loc_704D54: ImpAdCallFPR4 Sleep()
  loc_704D59: SetLastSystemError
  loc_704D5A: LitI4 &H64
  loc_704D5F: LitI4 &H1F4
  loc_704D64: ImpAdCallFPR4 ()
  loc_704D69: SetLastSystemError
  loc_704D6A: LitI4 &H64
  loc_704D6F: ImpAdCallFPR4 Sleep()
  loc_704D74: SetLastSystemError
  loc_704D75: FLdRfVar var_106
  loc_704D78: NextI2 var_154, loc_704D24
  loc_704D7D: ImpAdLdUI1
  loc_704D81: CI2UI1
  loc_704D83: LitI2_Byte 0
  loc_704D85: GtI2
  loc_704D86: BranchF loc_704E0A
  loc_704D89: FLdPrThis
  loc_704D8A: VCallAd Control_ID_Tanques
  loc_704D8D: FStAdFunc var_EC
  loc_704D90: FLdPr var_EC
  loc_704D93: LateIdLdVar var_D0 DispID_7 -32767
  loc_704D9A: CBoolVar
  loc_704D9C: LitI2_Byte &HFF
  loc_704D9E: EqI2
  loc_704D9F: FFree1Ad var_EC
  loc_704DA2: FFree1Var var_D0 = ""
  loc_704DA5: BranchF loc_704E0A
  loc_704DA8: LitI2_Byte 0
  loc_704DAA: CUI1I2
  loc_704DAC: FLdRfVar var_92
  loc_704DAF: LitI2_Byte 3
  loc_704DB1: CUI1I2
  loc_704DB3: ForUI1 var_158
  loc_704DB9: FLdRfVar var_F0
  loc_704DBC: FLdUI1
  loc_704DC0: CI2UI1
  loc_704DC2: FLdPrThis
  loc_704DC3: VCallAd Control_ID_BotonTanque
  loc_704DC6: FStAdFunc var_EC
  loc_704DC9: FLdPr var_EC
  loc_704DCC: Set from_stack_2 = Me(from_stack_1)
  loc_704DD1: FLdPr var_F0
  loc_704DD4: LateIdLdVar var_D0 DispID_-501 -1
  loc_704DDB: CI4Var
  loc_704DDD: LitI4 &HFF0000
  loc_704DE2: EqI4
  loc_704DE3: FFreeAd var_EC = ""
  loc_704DEA: FFree1Var var_D0 = ""
  loc_704DED: BranchF loc_704E01
  loc_704DF0: FLdRfVar var_92
  loc_704DF3: FLdPr Me
  loc_704DF6: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_704DF9: Call RefreshTankConnections(from_stack_1v, from_stack_2v)
  loc_704DFE: Branch loc_704E0A
  loc_704E01: FLdRfVar var_92
  loc_704E04: NextUI1
  loc_704E0A: ExitProcHresult
End Function

Private Function Proc_161_141_72317C(arg_C, arg_10) '72317C
  'Data Table: 45B254
  loc_720F54: On Error Resume Next
  loc_720F59: LitI2_Byte 0
  loc_720F5B: FStI2 var_88
  loc_720F60: ILdI2 arg_10
  loc_720F63: NotI4
  loc_720F64: BranchF loc_720FF0
  loc_720F69: LitI2_Byte 1
  loc_720F6B: CUI1I2
  loc_720F6D: FLdRfVar var_86
  loc_720F70: LitI2_Byte &HA
  loc_720F72: CUI1I2
  loc_720F74: ForUI1 var_90
  loc_720F7C: FLdRfVar var_9C
  loc_720F7F: FLdRfVar var_98
  loc_720F82: FLdUI1
  loc_720F86: CI2UI1
  loc_720F88: LitI2_Byte 1
  loc_720F8A: SubI2
  loc_720F8B: FLdPrThis
  loc_720F8C: VCallAd Control_ID_NumeroGrid
  loc_720F8F: FStAdFunc var_94
  loc_720F92: FLdPr var_94
  loc_720F95: Set from_stack_2 = Me(from_stack_1)
  loc_720F9A: FLdPr var_98
  loc_720F9D:  = Me.Tag
  loc_720FA2: ILdRf var_9C
  loc_720FA5: ImpAdCallFPR4 push Val()
  loc_720FAA: CR8R8
  loc_720FAB: ILdUI1 arg_C
  loc_720FAF: CI4UI1
  loc_720FB0: FLdUI1
  loc_720FB4: CI4UI1
  loc_720FB5: ImpAdLdRf MemVar_74BFE4
  loc_720FB8: AryLdPr
  loc_720FBB: MemLdUI1 global_37
  loc_720FBF: CR8I2
  loc_720FC0: NeR8
  loc_720FC1: FFree1Str var_9C
  loc_720FC4: FFreeAd var_94 = ""
  loc_720FCB: BranchF loc_720FD5
  loc_720FD0: LitI2_Byte &HFF
  loc_720FD2: FStI2 var_88
  loc_720FD9: FLdRfVar var_86
  loc_720FDC: NextUI1
  loc_720FE4: FLdI2 var_88
  loc_720FE7: NotI4
  loc_720FE8: BranchF loc_720FEE
  loc_720FED: ExitProcHresult
  loc_720FF4: LitI2_Byte 1
  loc_720FF6: CUI1I2
  loc_720FF8: FLdRfVar var_86
  loc_720FFB: LitI2_Byte &HA
  loc_720FFD: CUI1I2
  loc_720FFF: ForUI1 var_A0
  loc_721007: ILdUI1 arg_C
  loc_72100B: CI4UI1
  loc_72100C: FLdUI1
  loc_721010: CI4UI1
  loc_721011: ImpAdLdRf MemVar_74BFE4
  loc_721014: AryLdPr
  loc_721017: MemLdR8 global_20
  loc_72101A: LitI2_Byte 0
  loc_72101C: CR8I2
  loc_72101D: NeCyR8
  loc_72101E: BranchF loc_722EBB
  loc_721023: LitI4 1
  loc_721028: LitI4 1
  loc_72102D: LitVarStr var_C0, "00000000"
  loc_721032: FStVarCopyObj var_D0
  loc_721035: FLdRfVar var_D0
  loc_721038: ILdUI1 arg_C
  loc_72103C: CI4UI1
  loc_72103D: FLdUI1
  loc_721041: CI4UI1
  loc_721042: ImpAdLdRf MemVar_74BFE4
  loc_721045: AryLdPr
  loc_721048: MemLdRfVar from_stack_1.global_32
  loc_72104B: CVarRef
  loc_721050: FLdRfVar var_E0
  loc_721053: ImpAdCallFPR4  = Format(, )
  loc_721058: FLdRfVar var_E0
  loc_72105B: CStrVarVal var_9C
  loc_72105F: FLdRfVar var_98
  loc_721062: FLdUI1
  loc_721066: CI2UI1
  loc_721068: LitI2_Byte 1
  loc_72106A: SubI2
  loc_72106B: FLdPrThis
  loc_72106C: VCallAd Control_ID_ProductoGrid
  loc_72106F: FStAdFunc var_94
  loc_721072: FLdPr var_94
  loc_721075: Set from_stack_2 = Me(from_stack_1)
  loc_72107A: FLdPr var_98
  loc_72107D: Me.Tag = from_stack_1
  loc_721082: FFree1Str var_9C
  loc_721085: FFreeAd var_94 = ""
  loc_72108C: FFreeVar var_D0 = ""
  loc_721095: FLdRfVar var_9C
  loc_721098: ILdUI1 arg_C
  loc_72109C: CI4UI1
  loc_72109D: FLdUI1
  loc_7210A1: CI4UI1
  loc_7210A2: ImpAdLdRf MemVar_74BFE4
  loc_7210A5: AryLdPr
  loc_7210A8: MemLdUI1 global_28
  loc_7210AC: CI2UI1
  loc_7210AE: ImpAdLdRf MemVar_74A220
  loc_7210B1: NewIfNullPr clsProducts
  loc_7210B9: ILdRf var_9C
  loc_7210BC: FLdRfVar var_98
  loc_7210BF: FLdUI1
  loc_7210C3: CI2UI1
  loc_7210C5: LitI2_Byte 1
  loc_7210C7: SubI2
  loc_7210C8: FLdPrThis
  loc_7210C9: VCallAd Control_ID_ProductoGrid
  loc_7210CC: FStAdFunc var_94
  loc_7210CF: FLdPr var_94
  loc_7210D2: Set from_stack_2 = Me(from_stack_1)
  loc_7210D7: FLdPr var_98
  loc_7210DA: Me.Caption = from_stack_1
  loc_7210DF: FFree1Str var_9C
  loc_7210E2: FFreeAd var_94 = ""
  loc_7210EB: LitI4 1
  loc_7210F0: LitI4 1
  loc_7210F5: ImpAdLdRf MemVar_74C350
  loc_7210F8: CVarRef
  loc_7210FD: ILdUI1 arg_C
  loc_721101: CI4UI1
  loc_721102: FLdUI1
  loc_721106: CI4UI1
  loc_721107: ImpAdLdRf MemVar_74BFE4
  loc_72110A: AryLdPr
  loc_72110D: MemLdR8 global_20
  loc_721110: CR8Cy
  loc_721111: ImpAdLdFPR4 MemVar_74C2DC
  loc_721114: DivR8
  loc_721115: CVarR8
  loc_721119: FLdRfVar var_E0
  loc_72111C: ImpAdCallFPR4  = Format(, )
  loc_721121: FLdRfVar var_E0
  loc_721124: CStrVarVal var_9C
  loc_721128: FLdRfVar var_98
  loc_72112B: FLdUI1
  loc_72112F: CI2UI1
  loc_721131: LitI2_Byte 1
  loc_721133: SubI2
  loc_721134: FLdPrThis
  loc_721135: VCallAd Control_ID_PPUGrid
  loc_721138: FStAdFunc var_94
  loc_72113B: FLdPr var_94
  loc_72113E: Set from_stack_2 = Me(from_stack_1)
  loc_721143: FLdPr var_98
  loc_721146: Me.Caption = from_stack_1
  loc_72114B: FFree1Str var_9C
  loc_72114E: FFreeAd var_94 = ""
  loc_721155: FFreeVar var_D0 = ""
  loc_72115E: LitI4 1
  loc_721163: LitI4 1
  loc_721168: LitVarStr var_C0, "#0.00"
  loc_72116D: FStVarCopyObj var_E0
  loc_721170: FLdRfVar var_E0
  loc_721173: ILdUI1 arg_C
  loc_721177: CI4UI1
  loc_721178: FLdUI1
  loc_72117C: CI4UI1
  loc_72117D: ImpAdLdRf MemVar_74BFE4
  loc_721180: AryLdPr
  loc_721183: MemLdR8 global_12
  loc_721186: CR8Cy
  loc_721187: LitI2_Byte &H64
  loc_721189: CR8I2
  loc_72118A: DivR8
  loc_72118B: CVarR8
  loc_72118F: FLdRfVar var_F0
  loc_721192: ImpAdCallFPR4  = Format(, )
  loc_721197: FLdRfVar var_F0
  loc_72119A: CStrVarVal var_9C
  loc_72119E: FLdRfVar var_98
  loc_7211A1: FLdUI1
  loc_7211A5: CI2UI1
  loc_7211A7: LitI2_Byte 1
  loc_7211A9: SubI2
  loc_7211AA: FLdPrThis
  loc_7211AB: VCallAd Control_ID_VolumenGrid
  loc_7211AE: FStAdFunc var_94
  loc_7211B1: FLdPr var_94
  loc_7211B4: Set from_stack_2 = Me(from_stack_1)
  loc_7211B9: FLdPr var_98
  loc_7211BC: Me.Caption = from_stack_1
  loc_7211C1: FFree1Str var_9C
  loc_7211C4: FFreeAd var_94 = ""
  loc_7211CB: FFreeVar var_D0 = "": var_E0 = ""
  loc_7211D6: LitI4 1
  loc_7211DB: LitI4 1
  loc_7211E0: ImpAdLdRf MemVar_74C364
  loc_7211E3: CVarRef
  loc_7211E8: ILdUI1 arg_C
  loc_7211EC: CI4UI1
  loc_7211ED: FLdUI1
  loc_7211F1: CI4UI1
  loc_7211F2: ImpAdLdRf MemVar_74BFE4
  loc_7211F5: AryLdPr
  loc_7211F8: MemLdR8 global_4
  loc_7211FB: CR8Cy
  loc_7211FC: ImpAdLdFPR4 MemVar_74C2E0
  loc_7211FF: DivR8
  loc_721200: CVarR8
  loc_721204: FLdRfVar var_E0
  loc_721207: ImpAdCallFPR4  = Format(, )
  loc_72120C: FLdRfVar var_E0
  loc_72120F: CStrVarVal var_9C
  loc_721213: FLdRfVar var_98
  loc_721216: FLdUI1
  loc_72121A: CI2UI1
  loc_72121C: LitI2_Byte 1
  loc_72121E: SubI2
  loc_72121F: FLdPrThis
  loc_721220: VCallAd Control_ID_ImporteGrid
  loc_721223: FStAdFunc var_94
  loc_721226: FLdPr var_94
  loc_721229: Set from_stack_2 = Me(from_stack_1)
  loc_72122E: FLdPr var_98
  loc_721231: Me.Caption = from_stack_1
  loc_721236: FFree1Str var_9C
  loc_721239: FFreeAd var_94 = ""
  loc_721240: FFreeVar var_D0 = ""
  loc_721249: LitI4 &HFF0000
  loc_72124E: FLdRfVar var_98
  loc_721251: FLdUI1
  loc_721255: CI2UI1
  loc_721257: LitI2_Byte 1
  loc_721259: SubI2
  loc_72125A: FLdPrThis
  loc_72125B: VCallAd Control_ID_ProductoGrid
  loc_72125E: FStAdFunc var_94
  loc_721261: FLdPr var_94
  loc_721264: Set from_stack_2 = Me(from_stack_1)
  loc_721269: FLdPr var_98
  loc_72126C: Me.BackColor = from_stack_1
  loc_721271: FFreeAd var_94 = ""
  loc_72127A: ILdUI1 arg_C
  loc_72127E: CI4UI1
  loc_72127F: FLdUI1
  loc_721283: CI4UI1
  loc_721284: ImpAdLdRf MemVar_74BFE4
  loc_721287: AryLdPr
  loc_72128A: MemLdUI1 global_37
  loc_72128E: CStrI2
  loc_721290: FStStrNoPop var_9C
  loc_721293: FLdRfVar var_98
  loc_721296: FLdUI1
  loc_72129A: CI2UI1
  loc_72129C: LitI2_Byte 1
  loc_72129E: SubI2
  loc_72129F: FLdPrThis
  loc_7212A0: VCallAd Control_ID_NumeroGrid
  loc_7212A3: FStAdFunc var_94
  loc_7212A6: FLdPr var_94
  loc_7212A9: Set from_stack_2 = Me(from_stack_1)
  loc_7212AE: FLdPr var_98
  loc_7212B1: Me.Tag = from_stack_1
  loc_7212B6: FFree1Str var_9C
  loc_7212B9: FFreeAd var_94 = ""
  loc_7212C2: LitI4 &HFF0000
  loc_7212C7: FLdRfVar var_98
  loc_7212CA: FLdUI1
  loc_7212CE: CI2UI1
  loc_7212D0: LitI2_Byte 1
  loc_7212D2: SubI2
  loc_7212D3: FLdPrThis
  loc_7212D4: VCallAd Control_ID_PPUGrid
  loc_7212D7: FStAdFunc var_94
  loc_7212DA: FLdPr var_94
  loc_7212DD: Set from_stack_2 = Me(from_stack_1)
  loc_7212E2: FLdPr var_98
  loc_7212E5: Me.BackColor = from_stack_1
  loc_7212EA: FFreeAd var_94 = ""
  loc_7212F3: LitI4 &HFF0000
  loc_7212F8: FLdRfVar var_98
  loc_7212FB: FLdUI1
  loc_7212FF: CI2UI1
  loc_721301: LitI2_Byte 1
  loc_721303: SubI2
  loc_721304: FLdPrThis
  loc_721305: VCallAd Control_ID_VolumenGrid
  loc_721308: FStAdFunc var_94
  loc_72130B: FLdPr var_94
  loc_72130E: Set from_stack_2 = Me(from_stack_1)
  loc_721313: FLdPr var_98
  loc_721316: Me.BackColor = from_stack_1
  loc_72131B: FFreeAd var_94 = ""
  loc_721324: LitI4 &HFF0000
  loc_721329: FLdRfVar var_98
  loc_72132C: FLdUI1
  loc_721330: CI2UI1
  loc_721332: LitI2_Byte 1
  loc_721334: SubI2
  loc_721335: FLdPrThis
  loc_721336: VCallAd Control_ID_ImporteGrid
  loc_721339: FStAdFunc var_94
  loc_72133C: FLdPr var_94
  loc_72133F: Set from_stack_2 = Me(from_stack_1)
  loc_721344: FLdPr var_98
  loc_721347: Me.BackColor = from_stack_1
  loc_72134C: FFreeAd var_94 = ""
  loc_721355: LitI4 &HFF0000
  loc_72135A: FLdRfVar var_98
  loc_72135D: FLdUI1
  loc_721361: CI2UI1
  loc_721363: LitI2_Byte 1
  loc_721365: SubI2
  loc_721366: FLdPrThis
  loc_721367: VCallAd Control_ID_NumeroGrid
  loc_72136A: FStAdFunc var_94
  loc_72136D: FLdPr var_94
  loc_721370: Set from_stack_2 = Me(from_stack_1)
  loc_721375: FLdPr var_98
  loc_721378: Me.BackColor = from_stack_1
  loc_72137D: FFreeAd var_94 = ""
  loc_721386: LitI4 &HFF00
  loc_72138B: FLdRfVar var_98
  loc_72138E: FLdUI1
  loc_721392: CI2UI1
  loc_721394: LitI2_Byte 1
  loc_721396: SubI2
  loc_721397: FLdPrThis
  loc_721398: VCallAd Control_ID_NumeroGrid
  loc_72139B: FStAdFunc var_94
  loc_72139E: FLdPr var_94
  loc_7213A1: Set from_stack_2 = Me(from_stack_1)
  loc_7213A6: FLdPr var_98
  loc_7213A9: Me.ForeColor = from_stack_1
  loc_7213AE: FFreeAd var_94 = ""
  loc_7213B7: ILdUI1 arg_C
  loc_7213BB: CI4UI1
  loc_7213BC: FLdUI1
  loc_7213C0: CI4UI1
  loc_7213C1: ImpAdLdRf MemVar_74BFE4
  loc_7213C4: AryLdPr
  loc_7213C7: MemLdUI1 global_37
  loc_7213CB: CStrI2
  loc_7213CD: FStStrNoPop var_9C
  loc_7213D0: FLdRfVar var_98
  loc_7213D3: FLdUI1
  loc_7213D7: CI2UI1
  loc_7213D9: LitI2_Byte 1
  loc_7213DB: SubI2
  loc_7213DC: FLdPrThis
  loc_7213DD: VCallAd Control_ID_NumeroGrid
  loc_7213E0: FStAdFunc var_94
  loc_7213E3: FLdPr var_94
  loc_7213E6: Set from_stack_2 = Me(from_stack_1)
  loc_7213EB: FLdPr var_98
  loc_7213EE: Me.Tag = from_stack_1
  loc_7213F3: FFree1Str var_9C
  loc_7213F6: FFreeAd var_94 = ""
  loc_7213FF: ILdUI1 arg_C
  loc_721403: CI4UI1
  loc_721404: FLdUI1
  loc_721408: CI4UI1
  loc_721409: ImpAdLdRf MemVar_74BFE4
  loc_72140C: AryLdPr
  loc_72140F: MemLdUI1 global_37
  loc_721413: CI2UI1
  loc_721415: LitI2_Byte 0
  loc_721417: NeI2
  loc_721418: BranchF loc_722D26
  loc_72141D: ILdUI1 arg_C
  loc_721421: CI4UI1
  loc_721422: FLdUI1
  loc_721426: CI4UI1
  loc_721427: ImpAdLdRf MemVar_74BFE4
  loc_72142A: AryLdPr
  loc_72142D: MemLdUI1 global_37
  loc_721431: FStUI1 var_F2
  loc_721437: FLdUI1
  loc_72143B: LitI2_Byte &H30
  loc_72143D: CUI1I2
  loc_72143F: LitI2_Byte &H4F
  loc_721441: CUI1I2
  loc_721443: BetweenUI1
  loc_721445: BranchF loc_7216C5
  loc_72144A: FLdRfVar var_FC
  loc_72144D: FLdRfVar var_F8
  loc_721450: LitVarI2 var_E0, 2
  loc_721455: FLdPrThis
  loc_721456: VCallAd Control_ID_ImageList1
  loc_721459: FStAdFunc var_94
  loc_72145C: FLdPr var_94
  loc_72145F: LateIdLdVar var_D0 DispID_4 0
  loc_721466: CastAdVar Me
  loc_72146A: FStAdFunc var_98
  loc_72146D: FLdPr var_98
  loc_721470:  = Me.ListImages.ControlDefault
  loc_721475: FLdPr var_F8
  loc_721478:  = Me.Picture
  loc_72147D: FLdZeroAd var_FC
  loc_721480: FStAdFuncNoPop
  loc_721483: FLdRfVar var_104
  loc_721486: FLdUI1
  loc_72148A: CI2UI1
  loc_72148C: LitI2_Byte 1
  loc_72148E: SubI2
  loc_72148F: FLdPrThis
  loc_721490: VCallAd Control_ID_ImagenGrid
  loc_721493: FStAdFunc var_100
  loc_721496: FLdPr var_100
  loc_721499: Set from_stack_2 = Me(from_stack_1)
  loc_72149E: FLdPr var_104
  loc_7214A1: Me.Picture = from_stack_1
  loc_7214A6: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_7214B5: FFreeVar var_D0 = ""
  loc_7214BE: ILdUI1 arg_C
  loc_7214C2: CI4UI1
  loc_7214C3: FLdUI1
  loc_7214C7: CI4UI1
  loc_7214C8: ImpAdLdRf MemVar_74BFE4
  loc_7214CB: AryLdPr
  loc_7214CE: MemLdUI1 global_37
  loc_7214D2: CI2UI1
  loc_7214D4: LitI2_Byte &H2F
  loc_7214D6: SubI2
  loc_7214D7: CI4UI1
  loc_7214D8: ImpAdLdRf MemVar_74A008
  loc_7214DB: Ary1LdRf
  loc_7214DC: CVarRef
  loc_7214E1: FLdRfVar var_D0
  loc_7214E4: ImpAdCallFPR4  = Trim()
  loc_7214E9: FLdRfVar var_D0
  loc_7214EC: LitVarStr var_C0, " (F)"
  loc_7214F1: ConcatVar var_E0
  loc_7214F5: CStrVarVal var_9C
  loc_7214F9: FLdRfVar var_98
  loc_7214FC: FLdUI1
  loc_721500: CI2UI1
  loc_721502: LitI2_Byte 1
  loc_721504: SubI2
  loc_721505: FLdPrThis
  loc_721506: VCallAd Control_ID_ProductoGrid
  loc_721509: FStAdFunc var_94
  loc_72150C: FLdPr var_94
  loc_72150F: Set from_stack_2 = Me(from_stack_1)
  loc_721514: FLdPr var_98
  loc_721517: Me.ToolTipText = from_stack_1
  loc_72151C: FFree1Str var_9C
  loc_72151F: FFreeAd var_94 = ""
  loc_721526: FFreeVar var_D0 = ""
  loc_72152F: FLdRfVar var_9C
  loc_721532: FLdRfVar var_98
  loc_721535: FLdUI1
  loc_721539: CI2UI1
  loc_72153B: LitI2_Byte 1
  loc_72153D: SubI2
  loc_72153E: FLdPrThis
  loc_72153F: VCallAd Control_ID_ProductoGrid
  loc_721542: FStAdFunc var_94
  loc_721545: FLdPr var_94
  loc_721548: Set from_stack_2 = Me(from_stack_1)
  loc_72154D: FLdPr var_98
  loc_721550:  = Me.ToolTipText
  loc_721555: ILdRf var_9C
  loc_721558: LitStr " (F)"
  loc_72155B: EqStr
  loc_72155D: FFree1Str var_9C
  loc_721560: FFreeAd var_94 = ""
  loc_721567: BranchF loc_72159C
  loc_72156C: FLdPr Me
  loc_72156F: MemLdStr global_288
  loc_721572: FLdRfVar var_98
  loc_721575: FLdUI1
  loc_721579: CI2UI1
  loc_72157B: LitI2_Byte 1
  loc_72157D: SubI2
  loc_72157E: FLdPrThis
  loc_72157F: VCallAd Control_ID_ProductoGrid
  loc_721582: FStAdFunc var_94
  loc_721585: FLdPr var_94
  loc_721588: Set from_stack_2 = Me(from_stack_1)
  loc_72158D: FLdPr var_98
  loc_721590: Me.ToolTipText = from_stack_1
  loc_721595: FFreeAd var_94 = ""
  loc_72159E: LitI4 &HFF8080
  loc_7215A3: FLdRfVar var_98
  loc_7215A6: FLdUI1
  loc_7215AA: CI2UI1
  loc_7215AC: LitI2_Byte 1
  loc_7215AE: SubI2
  loc_7215AF: FLdPrThis
  loc_7215B0: VCallAd Control_ID_NumeroGrid
  loc_7215B3: FStAdFunc var_94
  loc_7215B6: FLdPr var_94
  loc_7215B9: Set from_stack_2 = Me(from_stack_1)
  loc_7215BE: FLdPr var_98
  loc_7215C1: Me.BackColor = from_stack_1
  loc_7215C6: FFreeAd var_94 = ""
  loc_7215CF: LitI4 &HFF8080
  loc_7215D4: FLdRfVar var_98
  loc_7215D7: FLdUI1
  loc_7215DB: CI2UI1
  loc_7215DD: LitI2_Byte 1
  loc_7215DF: SubI2
  loc_7215E0: FLdPrThis
  loc_7215E1: VCallAd Control_ID_NumeroGrid
  loc_7215E4: FStAdFunc var_94
  loc_7215E7: FLdPr var_94
  loc_7215EA: Set from_stack_2 = Me(from_stack_1)
  loc_7215EF: FLdPr var_98
  loc_7215F2: Me.BackColor = from_stack_1
  loc_7215F7: FFreeAd var_94 = ""
  loc_721600: LitI4 &HFF8080
  loc_721605: FLdRfVar var_98
  loc_721608: FLdUI1
  loc_72160C: CI2UI1
  loc_72160E: LitI2_Byte 1
  loc_721610: SubI2
  loc_721611: FLdPrThis
  loc_721612: VCallAd Control_ID_PPUGrid
  loc_721615: FStAdFunc var_94
  loc_721618: FLdPr var_94
  loc_72161B: Set from_stack_2 = Me(from_stack_1)
  loc_721620: FLdPr var_98
  loc_721623: Me.BackColor = from_stack_1
  loc_721628: FFreeAd var_94 = ""
  loc_721631: LitI4 &HFF8080
  loc_721636: FLdRfVar var_98
  loc_721639: FLdUI1
  loc_72163D: CI2UI1
  loc_72163F: LitI2_Byte 1
  loc_721641: SubI2
  loc_721642: FLdPrThis
  loc_721643: VCallAd Control_ID_ProductoGrid
  loc_721646: FStAdFunc var_94
  loc_721649: FLdPr var_94
  loc_72164C: Set from_stack_2 = Me(from_stack_1)
  loc_721651: FLdPr var_98
  loc_721654: Me.BackColor = from_stack_1
  loc_721659: FFreeAd var_94 = ""
  loc_721662: LitI4 &HFF8080
  loc_721667: FLdRfVar var_98
  loc_72166A: FLdUI1
  loc_72166E: CI2UI1
  loc_721670: LitI2_Byte 1
  loc_721672: SubI2
  loc_721673: FLdPrThis
  loc_721674: VCallAd Control_ID_VolumenGrid
  loc_721677: FStAdFunc var_94
  loc_72167A: FLdPr var_94
  loc_72167D: Set from_stack_2 = Me(from_stack_1)
  loc_721682: FLdPr var_98
  loc_721685: Me.BackColor = from_stack_1
  loc_72168A: FFreeAd var_94 = ""
  loc_721693: LitI4 &HFF8080
  loc_721698: FLdRfVar var_98
  loc_72169B: FLdUI1
  loc_72169F: CI2UI1
  loc_7216A1: LitI2_Byte 1
  loc_7216A3: SubI2
  loc_7216A4: FLdPrThis
  loc_7216A5: VCallAd Control_ID_ImporteGrid
  loc_7216A8: FStAdFunc var_94
  loc_7216AB: FLdPr var_94
  loc_7216AE: Set from_stack_2 = Me(from_stack_1)
  loc_7216B3: FLdPr var_98
  loc_7216B6: Me.BackColor = from_stack_1
  loc_7216BB: FFreeAd var_94 = ""
  loc_7216C2: Branch loc_722D21
  loc_7216C7: FLdUI1
  loc_7216CB: LitI2_Byte &H2F
  loc_7216CD: CUI1I2
  loc_7216CF: EqI2
  loc_7216D0: BranchT loc_7216F7
  loc_7216D3: FLdUI1
  loc_7216D7: LitI2_Byte &H22
  loc_7216D9: CUI1I2
  loc_7216DB: EqI2
  loc_7216DC: BranchT loc_7216F7
  loc_7216DF: FLdUI1
  loc_7216E3: LitI2_Byte &H2B
  loc_7216E5: CUI1I2
  loc_7216E7: EqI2
  loc_7216E8: BranchT loc_7216F7
  loc_7216EB: FLdUI1
  loc_7216EF: LitI2_Byte &H2C
  loc_7216F1: CUI1I2
  loc_7216F3: EqI2
  loc_7216F4: BranchF loc_7219C3
  loc_7216F9: FLdRfVar var_FC
  loc_7216FC: FLdRfVar var_F8
  loc_7216FF: LitVarI2 var_E0, 4
  loc_721704: FLdPrThis
  loc_721705: VCallAd Control_ID_ImageList1
  loc_721708: FStAdFunc var_94
  loc_72170B: FLdPr var_94
  loc_72170E: LateIdLdVar var_D0 DispID_4 0
  loc_721715: CastAdVar Me
  loc_721719: FStAdFunc var_98
  loc_72171C: FLdPr var_98
  loc_72171F:  = Me.ListImages.ControlDefault
  loc_721724: FLdPr var_F8
  loc_721727:  = Me.Picture
  loc_72172C: FLdZeroAd var_FC
  loc_72172F: FStAdFuncNoPop
  loc_721732: FLdRfVar var_104
  loc_721735: FLdUI1
  loc_721739: CI2UI1
  loc_72173B: LitI2_Byte 1
  loc_72173D: SubI2
  loc_72173E: FLdPrThis
  loc_72173F: VCallAd Control_ID_ImagenGrid
  loc_721742: FStAdFunc var_100
  loc_721745: FLdPr var_100
  loc_721748: Set from_stack_2 = Me(from_stack_1)
  loc_72174D: FLdPr var_104
  loc_721750: Me.Picture = from_stack_1
  loc_721755: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_721764: FFreeVar var_D0 = ""
  loc_72176D: ILdUI1 arg_C
  loc_721771: CI4UI1
  loc_721772: FLdUI1
  loc_721776: CI4UI1
  loc_721777: ImpAdLdRf MemVar_74BFE4
  loc_72177A: AryLdPr
  loc_72177D: MemLdUI1 global_37
  loc_721781: CI2UI1
  loc_721783: LitI2_Byte &H22
  loc_721785: EqI2
  loc_721786: BranchF loc_7217BE
  loc_72178B: FLdPr Me
  loc_72178E: MemLdStr global_292
  loc_721791: FLdRfVar var_98
  loc_721794: FLdUI1
  loc_721798: CI2UI1
  loc_72179A: LitI2_Byte 1
  loc_72179C: SubI2
  loc_72179D: FLdPrThis
  loc_72179E: VCallAd Control_ID_ProductoGrid
  loc_7217A1: FStAdFunc var_94
  loc_7217A4: FLdPr var_94
  loc_7217A7: Set from_stack_2 = Me(from_stack_1)
  loc_7217AC: FLdPr var_98
  loc_7217AF: Me.ToolTipText = from_stack_1
  loc_7217B4: FFreeAd var_94 = ""
  loc_7217BB: Branch loc_721898
  loc_7217C0: ILdUI1 arg_C
  loc_7217C4: CI4UI1
  loc_7217C5: FLdUI1
  loc_7217C9: CI4UI1
  loc_7217CA: ImpAdLdRf MemVar_74BFE4
  loc_7217CD: AryLdPr
  loc_7217D0: MemLdUI1 global_37
  loc_7217D4: CI2UI1
  loc_7217D6: LitI2_Byte &H2B
  loc_7217D8: EqI2
  loc_7217D9: BranchF loc_721811
  loc_7217DE: FLdPr Me
  loc_7217E1: MemLdStr global_300
  loc_7217E4: FLdRfVar var_98
  loc_7217E7: FLdUI1
  loc_7217EB: CI2UI1
  loc_7217ED: LitI2_Byte 1
  loc_7217EF: SubI2
  loc_7217F0: FLdPrThis
  loc_7217F1: VCallAd Control_ID_ProductoGrid
  loc_7217F4: FStAdFunc var_94
  loc_7217F7: FLdPr var_94
  loc_7217FA: Set from_stack_2 = Me(from_stack_1)
  loc_7217FF: FLdPr var_98
  loc_721802: Me.ToolTipText = from_stack_1
  loc_721807: FFreeAd var_94 = ""
  loc_72180E: Branch loc_721898
  loc_721813: ILdUI1 arg_C
  loc_721817: CI4UI1
  loc_721818: FLdUI1
  loc_72181C: CI4UI1
  loc_72181D: ImpAdLdRf MemVar_74BFE4
  loc_721820: AryLdPr
  loc_721823: MemLdUI1 global_37
  loc_721827: CI2UI1
  loc_721829: LitI2_Byte &H2C
  loc_72182B: EqI2
  loc_72182C: BranchF loc_721864
  loc_721831: FLdPr Me
  loc_721834: MemLdStr global_296
  loc_721837: FLdRfVar var_98
  loc_72183A: FLdUI1
  loc_72183E: CI2UI1
  loc_721840: LitI2_Byte 1
  loc_721842: SubI2
  loc_721843: FLdPrThis
  loc_721844: VCallAd Control_ID_ProductoGrid
  loc_721847: FStAdFunc var_94
  loc_72184A: FLdPr var_94
  loc_72184D: Set from_stack_2 = Me(from_stack_1)
  loc_721852: FLdPr var_98
  loc_721855: Me.ToolTipText = from_stack_1
  loc_72185A: FFreeAd var_94 = ""
  loc_721861: Branch loc_721898
  loc_721868: FLdPr Me
  loc_72186B: MemLdStr global_304
  loc_72186E: FLdRfVar var_98
  loc_721871: FLdUI1
  loc_721875: CI2UI1
  loc_721877: LitI2_Byte 1
  loc_721879: SubI2
  loc_72187A: FLdPrThis
  loc_72187B: VCallAd Control_ID_ProductoGrid
  loc_72187E: FStAdFunc var_94
  loc_721881: FLdPr var_94
  loc_721884: Set from_stack_2 = Me(from_stack_1)
  loc_721889: FLdPr var_98
  loc_72188C: Me.ToolTipText = from_stack_1
  loc_721891: FFreeAd var_94 = ""
  loc_72189C: LitI4 &HFF8080
  loc_7218A1: FLdRfVar var_98
  loc_7218A4: FLdUI1
  loc_7218A8: CI2UI1
  loc_7218AA: LitI2_Byte 1
  loc_7218AC: SubI2
  loc_7218AD: FLdPrThis
  loc_7218AE: VCallAd Control_ID_NumeroGrid
  loc_7218B1: FStAdFunc var_94
  loc_7218B4: FLdPr var_94
  loc_7218B7: Set from_stack_2 = Me(from_stack_1)
  loc_7218BC: FLdPr var_98
  loc_7218BF: Me.BackColor = from_stack_1
  loc_7218C4: FFreeAd var_94 = ""
  loc_7218CD: LitI4 &HFF8080
  loc_7218D2: FLdRfVar var_98
  loc_7218D5: FLdUI1
  loc_7218D9: CI2UI1
  loc_7218DB: LitI2_Byte 1
  loc_7218DD: SubI2
  loc_7218DE: FLdPrThis
  loc_7218DF: VCallAd Control_ID_NumeroGrid
  loc_7218E2: FStAdFunc var_94
  loc_7218E5: FLdPr var_94
  loc_7218E8: Set from_stack_2 = Me(from_stack_1)
  loc_7218ED: FLdPr var_98
  loc_7218F0: Me.BackColor = from_stack_1
  loc_7218F5: FFreeAd var_94 = ""
  loc_7218FE: LitI4 &HFF8080
  loc_721903: FLdRfVar var_98
  loc_721906: FLdUI1
  loc_72190A: CI2UI1
  loc_72190C: LitI2_Byte 1
  loc_72190E: SubI2
  loc_72190F: FLdPrThis
  loc_721910: VCallAd Control_ID_PPUGrid
  loc_721913: FStAdFunc var_94
  loc_721916: FLdPr var_94
  loc_721919: Set from_stack_2 = Me(from_stack_1)
  loc_72191E: FLdPr var_98
  loc_721921: Me.BackColor = from_stack_1
  loc_721926: FFreeAd var_94 = ""
  loc_72192F: LitI4 &HFF8080
  loc_721934: FLdRfVar var_98
  loc_721937: FLdUI1
  loc_72193B: CI2UI1
  loc_72193D: LitI2_Byte 1
  loc_72193F: SubI2
  loc_721940: FLdPrThis
  loc_721941: VCallAd Control_ID_ProductoGrid
  loc_721944: FStAdFunc var_94
  loc_721947: FLdPr var_94
  loc_72194A: Set from_stack_2 = Me(from_stack_1)
  loc_72194F: FLdPr var_98
  loc_721952: Me.BackColor = from_stack_1
  loc_721957: FFreeAd var_94 = ""
  loc_721960: LitI4 &HFF8080
  loc_721965: FLdRfVar var_98
  loc_721968: FLdUI1
  loc_72196C: CI2UI1
  loc_72196E: LitI2_Byte 1
  loc_721970: SubI2
  loc_721971: FLdPrThis
  loc_721972: VCallAd Control_ID_VolumenGrid
  loc_721975: FStAdFunc var_94
  loc_721978: FLdPr var_94
  loc_72197B: Set from_stack_2 = Me(from_stack_1)
  loc_721980: FLdPr var_98
  loc_721983: Me.BackColor = from_stack_1
  loc_721988: FFreeAd var_94 = ""
  loc_721991: LitI4 &HFF8080
  loc_721996: FLdRfVar var_98
  loc_721999: FLdUI1
  loc_72199D: CI2UI1
  loc_72199F: LitI2_Byte 1
  loc_7219A1: SubI2
  loc_7219A2: FLdPrThis
  loc_7219A3: VCallAd Control_ID_ImporteGrid
  loc_7219A6: FStAdFunc var_94
  loc_7219A9: FLdPr var_94
  loc_7219AC: Set from_stack_2 = Me(from_stack_1)
  loc_7219B1: FLdPr var_98
  loc_7219B4: Me.BackColor = from_stack_1
  loc_7219B9: FFreeAd var_94 = ""
  loc_7219C0: Branch loc_722D21
  loc_7219C5: FLdUI1
  loc_7219C9: LitI2_Byte &H50
  loc_7219CB: CUI1I2
  loc_7219CD: LitI2_Byte &H6F
  loc_7219CF: CUI1I2
  loc_7219D1: BetweenUI1
  loc_7219D3: BranchF loc_721C15
  loc_7219D8: FLdRfVar var_FC
  loc_7219DB: FLdRfVar var_F8
  loc_7219DE: LitVarI2 var_E0, 2
  loc_7219E3: FLdPrThis
  loc_7219E4: VCallAd Control_ID_ImageList1
  loc_7219E7: FStAdFunc var_94
  loc_7219EA: FLdPr var_94
  loc_7219ED: LateIdLdVar var_D0 DispID_4 0
  loc_7219F4: CastAdVar Me
  loc_7219F8: FStAdFunc var_98
  loc_7219FB: FLdPr var_98
  loc_7219FE:  = Me.ListImages.ControlDefault
  loc_721A03: FLdPr var_F8
  loc_721A06:  = Me.Picture
  loc_721A0B: FLdZeroAd var_FC
  loc_721A0E: FStAdFuncNoPop
  loc_721A11: FLdRfVar var_104
  loc_721A14: FLdUI1
  loc_721A18: CI2UI1
  loc_721A1A: LitI2_Byte 1
  loc_721A1C: SubI2
  loc_721A1D: FLdPrThis
  loc_721A1E: VCallAd Control_ID_ImagenGrid
  loc_721A21: FStAdFunc var_100
  loc_721A24: FLdPr var_100
  loc_721A27: Set from_stack_2 = Me(from_stack_1)
  loc_721A2C: FLdPr var_104
  loc_721A2F: Me.Picture = from_stack_1
  loc_721A34: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_721A43: FFreeVar var_D0 = ""
  loc_721A4C: ILdUI1 arg_C
  loc_721A50: CI4UI1
  loc_721A51: FLdUI1
  loc_721A55: CI4UI1
  loc_721A56: ImpAdLdRf MemVar_74BFE4
  loc_721A59: AryLdPr
  loc_721A5C: MemLdUI1 global_37
  loc_721A60: CI2UI1
  loc_721A62: LitI2_Byte &H4F
  loc_721A64: SubI2
  loc_721A65: CI4UI1
  loc_721A66: ImpAdLdRf MemVar_74A008
  loc_721A69: Ary1LdRf
  loc_721A6A: CVarRef
  loc_721A6F: FLdRfVar var_D0
  loc_721A72: ImpAdCallFPR4  = Trim()
  loc_721A77: FLdRfVar var_D0
  loc_721A7A: CStrVarVal var_9C
  loc_721A7E: FLdRfVar var_98
  loc_721A81: FLdUI1
  loc_721A85: CI2UI1
  loc_721A87: LitI2_Byte 1
  loc_721A89: SubI2
  loc_721A8A: FLdPrThis
  loc_721A8B: VCallAd Control_ID_ProductoGrid
  loc_721A8E: FStAdFunc var_94
  loc_721A91: FLdPr var_94
  loc_721A94: Set from_stack_2 = Me(from_stack_1)
  loc_721A99: FLdPr var_98
  loc_721A9C: Me.ToolTipText = from_stack_1
  loc_721AA1: FFree1Str var_9C
  loc_721AA4: FFreeAd var_94 = ""
  loc_721AAB: FFree1Var var_D0 = ""
  loc_721AB0: FLdRfVar var_9C
  loc_721AB3: FLdRfVar var_98
  loc_721AB6: FLdUI1
  loc_721ABA: CI2UI1
  loc_721ABC: LitI2_Byte 1
  loc_721ABE: SubI2
  loc_721ABF: FLdPrThis
  loc_721AC0: VCallAd Control_ID_ProductoGrid
  loc_721AC3: FStAdFunc var_94
  loc_721AC6: FLdPr var_94
  loc_721AC9: Set from_stack_2 = Me(from_stack_1)
  loc_721ACE: FLdPr var_98
  loc_721AD1:  = Me.ToolTipText
  loc_721AD6: ILdRf var_9C
  loc_721AD9: LitStr vbNullString
  loc_721ADC: EqStr
  loc_721ADE: FFree1Str var_9C
  loc_721AE1: FFreeAd var_94 = ""
  loc_721AE8: BranchF loc_721B1D
  loc_721AED: FLdPr Me
  loc_721AF0: MemLdStr global_308
  loc_721AF3: FLdRfVar var_98
  loc_721AF6: FLdUI1
  loc_721AFA: CI2UI1
  loc_721AFC: LitI2_Byte 1
  loc_721AFE: SubI2
  loc_721AFF: FLdPrThis
  loc_721B00: VCallAd Control_ID_ProductoGrid
  loc_721B03: FStAdFunc var_94
  loc_721B06: FLdPr var_94
  loc_721B09: Set from_stack_2 = Me(from_stack_1)
  loc_721B0E: FLdPr var_98
  loc_721B11: Me.ToolTipText = from_stack_1
  loc_721B16: FFreeAd var_94 = ""
  loc_721B1F: LitI4 &HFF0000
  loc_721B24: FLdRfVar var_98
  loc_721B27: FLdUI1
  loc_721B2B: CI2UI1
  loc_721B2D: LitI2_Byte 1
  loc_721B2F: SubI2
  loc_721B30: FLdPrThis
  loc_721B31: VCallAd Control_ID_NumeroGrid
  loc_721B34: FStAdFunc var_94
  loc_721B37: FLdPr var_94
  loc_721B3A: Set from_stack_2 = Me(from_stack_1)
  loc_721B3F: FLdPr var_98
  loc_721B42: Me.BackColor = from_stack_1
  loc_721B47: FFreeAd var_94 = ""
  loc_721B50: LitI4 &HFF0000
  loc_721B55: FLdRfVar var_98
  loc_721B58: FLdUI1
  loc_721B5C: CI2UI1
  loc_721B5E: LitI2_Byte 1
  loc_721B60: SubI2
  loc_721B61: FLdPrThis
  loc_721B62: VCallAd Control_ID_PPUGrid
  loc_721B65: FStAdFunc var_94
  loc_721B68: FLdPr var_94
  loc_721B6B: Set from_stack_2 = Me(from_stack_1)
  loc_721B70: FLdPr var_98
  loc_721B73: Me.BackColor = from_stack_1
  loc_721B78: FFreeAd var_94 = ""
  loc_721B81: LitI4 &HFF0000
  loc_721B86: FLdRfVar var_98
  loc_721B89: FLdUI1
  loc_721B8D: CI2UI1
  loc_721B8F: LitI2_Byte 1
  loc_721B91: SubI2
  loc_721B92: FLdPrThis
  loc_721B93: VCallAd Control_ID_ProductoGrid
  loc_721B96: FStAdFunc var_94
  loc_721B99: FLdPr var_94
  loc_721B9C: Set from_stack_2 = Me(from_stack_1)
  loc_721BA1: FLdPr var_98
  loc_721BA4: Me.BackColor = from_stack_1
  loc_721BA9: FFreeAd var_94 = ""
  loc_721BB2: LitI4 &HFF0000
  loc_721BB7: FLdRfVar var_98
  loc_721BBA: FLdUI1
  loc_721BBE: CI2UI1
  loc_721BC0: LitI2_Byte 1
  loc_721BC2: SubI2
  loc_721BC3: FLdPrThis
  loc_721BC4: VCallAd Control_ID_VolumenGrid
  loc_721BC7: FStAdFunc var_94
  loc_721BCA: FLdPr var_94
  loc_721BCD: Set from_stack_2 = Me(from_stack_1)
  loc_721BD2: FLdPr var_98
  loc_721BD5: Me.BackColor = from_stack_1
  loc_721BDA: FFreeAd var_94 = ""
  loc_721BE3: LitI4 &HFF0000
  loc_721BE8: FLdRfVar var_98
  loc_721BEB: FLdUI1
  loc_721BEF: CI2UI1
  loc_721BF1: LitI2_Byte 1
  loc_721BF3: SubI2
  loc_721BF4: FLdPrThis
  loc_721BF5: VCallAd Control_ID_ImporteGrid
  loc_721BF8: FStAdFunc var_94
  loc_721BFB: FLdPr var_94
  loc_721BFE: Set from_stack_2 = Me(from_stack_1)
  loc_721C03: FLdPr var_98
  loc_721C06: Me.BackColor = from_stack_1
  loc_721C0B: FFreeAd var_94 = ""
  loc_721C12: Branch loc_722D21
  loc_721C17: FLdUI1
  loc_721C1B: LitI2_Byte 2
  loc_721C1D: CUI1I2
  loc_721C1F: LitI2_Byte 3
  loc_721C21: CUI1I2
  loc_721C23: BetweenUI1
  loc_721C25: BranchF loc_721E1D
  loc_721C2A: FLdRfVar var_FC
  loc_721C2D: FLdRfVar var_F8
  loc_721C30: LitVarI2 var_E0, 3
  loc_721C35: FLdPrThis
  loc_721C36: VCallAd Control_ID_ImageList1
  loc_721C39: FStAdFunc var_94
  loc_721C3C: FLdPr var_94
  loc_721C3F: LateIdLdVar var_D0 DispID_4 0
  loc_721C46: CastAdVar Me
  loc_721C4A: FStAdFunc var_98
  loc_721C4D: FLdPr var_98
  loc_721C50:  = Me.ListImages.ControlDefault
  loc_721C55: FLdPr var_F8
  loc_721C58:  = Me.Picture
  loc_721C5D: FLdZeroAd var_FC
  loc_721C60: FStAdFuncNoPop
  loc_721C63: FLdRfVar var_104
  loc_721C66: FLdUI1
  loc_721C6A: CI2UI1
  loc_721C6C: LitI2_Byte 1
  loc_721C6E: SubI2
  loc_721C6F: FLdPrThis
  loc_721C70: VCallAd Control_ID_ImagenGrid
  loc_721C73: FStAdFunc var_100
  loc_721C76: FLdPr var_100
  loc_721C79: Set from_stack_2 = Me(from_stack_1)
  loc_721C7E: FLdPr var_104
  loc_721C81: Me.Picture = from_stack_1
  loc_721C86: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_721C95: FFreeVar var_D0 = ""
  loc_721C9E: ILdUI1 arg_C
  loc_721CA2: CI4UI1
  loc_721CA3: FLdUI1
  loc_721CA7: CI4UI1
  loc_721CA8: ImpAdLdRf MemVar_74BFE4
  loc_721CAB: AryLdPr
  loc_721CAE: MemLdUI1 global_37
  loc_721CB2: CI2UI1
  loc_721CB4: LitI2_Byte 2
  loc_721CB6: EqI2
  loc_721CB7: BranchF loc_721CEF
  loc_721CBC: FLdPr Me
  loc_721CBF: MemLdStr global_312
  loc_721CC2: FLdRfVar var_98
  loc_721CC5: FLdUI1
  loc_721CC9: CI2UI1
  loc_721CCB: LitI2_Byte 1
  loc_721CCD: SubI2
  loc_721CCE: FLdPrThis
  loc_721CCF: VCallAd Control_ID_ProductoGrid
  loc_721CD2: FStAdFunc var_94
  loc_721CD5: FLdPr var_94
  loc_721CD8: Set from_stack_2 = Me(from_stack_1)
  loc_721CDD: FLdPr var_98
  loc_721CE0: Me.ToolTipText = from_stack_1
  loc_721CE5: FFreeAd var_94 = ""
  loc_721CEC: Branch loc_721D23
  loc_721CF3: FLdPr Me
  loc_721CF6: MemLdStr global_316
  loc_721CF9: FLdRfVar var_98
  loc_721CFC: FLdUI1
  loc_721D00: CI2UI1
  loc_721D02: LitI2_Byte 1
  loc_721D04: SubI2
  loc_721D05: FLdPrThis
  loc_721D06: VCallAd Control_ID_ProductoGrid
  loc_721D09: FStAdFunc var_94
  loc_721D0C: FLdPr var_94
  loc_721D0F: Set from_stack_2 = Me(from_stack_1)
  loc_721D14: FLdPr var_98
  loc_721D17: Me.ToolTipText = from_stack_1
  loc_721D1C: FFreeAd var_94 = ""
  loc_721D27: LitI4 &HFF0000
  loc_721D2C: FLdRfVar var_98
  loc_721D2F: FLdUI1
  loc_721D33: CI2UI1
  loc_721D35: LitI2_Byte 1
  loc_721D37: SubI2
  loc_721D38: FLdPrThis
  loc_721D39: VCallAd Control_ID_NumeroGrid
  loc_721D3C: FStAdFunc var_94
  loc_721D3F: FLdPr var_94
  loc_721D42: Set from_stack_2 = Me(from_stack_1)
  loc_721D47: FLdPr var_98
  loc_721D4A: Me.BackColor = from_stack_1
  loc_721D4F: FFreeAd var_94 = ""
  loc_721D58: LitI4 &HFF0000
  loc_721D5D: FLdRfVar var_98
  loc_721D60: FLdUI1
  loc_721D64: CI2UI1
  loc_721D66: LitI2_Byte 1
  loc_721D68: SubI2
  loc_721D69: FLdPrThis
  loc_721D6A: VCallAd Control_ID_PPUGrid
  loc_721D6D: FStAdFunc var_94
  loc_721D70: FLdPr var_94
  loc_721D73: Set from_stack_2 = Me(from_stack_1)
  loc_721D78: FLdPr var_98
  loc_721D7B: Me.BackColor = from_stack_1
  loc_721D80: FFreeAd var_94 = ""
  loc_721D89: LitI4 &HFF0000
  loc_721D8E: FLdRfVar var_98
  loc_721D91: FLdUI1
  loc_721D95: CI2UI1
  loc_721D97: LitI2_Byte 1
  loc_721D99: SubI2
  loc_721D9A: FLdPrThis
  loc_721D9B: VCallAd Control_ID_ProductoGrid
  loc_721D9E: FStAdFunc var_94
  loc_721DA1: FLdPr var_94
  loc_721DA4: Set from_stack_2 = Me(from_stack_1)
  loc_721DA9: FLdPr var_98
  loc_721DAC: Me.BackColor = from_stack_1
  loc_721DB1: FFreeAd var_94 = ""
  loc_721DBA: LitI4 &HFF0000
  loc_721DBF: FLdRfVar var_98
  loc_721DC2: FLdUI1
  loc_721DC6: CI2UI1
  loc_721DC8: LitI2_Byte 1
  loc_721DCA: SubI2
  loc_721DCB: FLdPrThis
  loc_721DCC: VCallAd Control_ID_VolumenGrid
  loc_721DCF: FStAdFunc var_94
  loc_721DD2: FLdPr var_94
  loc_721DD5: Set from_stack_2 = Me(from_stack_1)
  loc_721DDA: FLdPr var_98
  loc_721DDD: Me.BackColor = from_stack_1
  loc_721DE2: FFreeAd var_94 = ""
  loc_721DEB: LitI4 &HFF0000
  loc_721DF0: FLdRfVar var_98
  loc_721DF3: FLdUI1
  loc_721DF7: CI2UI1
  loc_721DF9: LitI2_Byte 1
  loc_721DFB: SubI2
  loc_721DFC: FLdPrThis
  loc_721DFD: VCallAd Control_ID_ImporteGrid
  loc_721E00: FStAdFunc var_94
  loc_721E03: FLdPr var_94
  loc_721E06: Set from_stack_2 = Me(from_stack_1)
  loc_721E0B: FLdPr var_98
  loc_721E0E: Me.BackColor = from_stack_1
  loc_721E13: FFreeAd var_94 = ""
  loc_721E1A: Branch loc_722D21
  loc_721E1F: FLdUI1
  loc_721E23: LitI2_Byte 4
  loc_721E25: CUI1I2
  loc_721E27: EqI2
  loc_721E28: BranchF loc_721FC9
  loc_721E2D: FLdRfVar var_FC
  loc_721E30: FLdRfVar var_F8
  loc_721E33: LitVarI2 var_E0, 1
  loc_721E38: FLdPrThis
  loc_721E39: VCallAd Control_ID_ImageList1
  loc_721E3C: FStAdFunc var_94
  loc_721E3F: FLdPr var_94
  loc_721E42: LateIdLdVar var_D0 DispID_4 0
  loc_721E49: CastAdVar Me
  loc_721E4D: FStAdFunc var_98
  loc_721E50: FLdPr var_98
  loc_721E53:  = Me.ListImages.ControlDefault
  loc_721E58: FLdPr var_F8
  loc_721E5B:  = Me.Picture
  loc_721E60: FLdZeroAd var_FC
  loc_721E63: FStAdFuncNoPop
  loc_721E66: FLdRfVar var_104
  loc_721E69: FLdUI1
  loc_721E6D: CI2UI1
  loc_721E6F: LitI2_Byte 1
  loc_721E71: SubI2
  loc_721E72: FLdPrThis
  loc_721E73: VCallAd Control_ID_ImagenGrid
  loc_721E76: FStAdFunc var_100
  loc_721E79: FLdPr var_100
  loc_721E7C: Set from_stack_2 = Me(from_stack_1)
  loc_721E81: FLdPr var_104
  loc_721E84: Me.Picture = from_stack_1
  loc_721E89: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_721E98: FFreeVar var_D0 = ""
  loc_721EA1: LitI4 &HFF8080
  loc_721EA6: FLdRfVar var_98
  loc_721EA9: FLdUI1
  loc_721EAD: CI2UI1
  loc_721EAF: LitI2_Byte 1
  loc_721EB1: SubI2
  loc_721EB2: FLdPrThis
  loc_721EB3: VCallAd Control_ID_NumeroGrid
  loc_721EB6: FStAdFunc var_94
  loc_721EB9: FLdPr var_94
  loc_721EBC: Set from_stack_2 = Me(from_stack_1)
  loc_721EC1: FLdPr var_98
  loc_721EC4: Me.BackColor = from_stack_1
  loc_721EC9: FFreeAd var_94 = ""
  loc_721ED2: LitI4 &HFF8080
  loc_721ED7: FLdRfVar var_98
  loc_721EDA: FLdUI1
  loc_721EDE: CI2UI1
  loc_721EE0: LitI2_Byte 1
  loc_721EE2: SubI2
  loc_721EE3: FLdPrThis
  loc_721EE4: VCallAd Control_ID_PPUGrid
  loc_721EE7: FStAdFunc var_94
  loc_721EEA: FLdPr var_94
  loc_721EED: Set from_stack_2 = Me(from_stack_1)
  loc_721EF2: FLdPr var_98
  loc_721EF5: Me.BackColor = from_stack_1
  loc_721EFA: FFreeAd var_94 = ""
  loc_721F03: LitI4 &HFF8080
  loc_721F08: FLdRfVar var_98
  loc_721F0B: FLdUI1
  loc_721F0F: CI2UI1
  loc_721F11: LitI2_Byte 1
  loc_721F13: SubI2
  loc_721F14: FLdPrThis
  loc_721F15: VCallAd Control_ID_ProductoGrid
  loc_721F18: FStAdFunc var_94
  loc_721F1B: FLdPr var_94
  loc_721F1E: Set from_stack_2 = Me(from_stack_1)
  loc_721F23: FLdPr var_98
  loc_721F26: Me.BackColor = from_stack_1
  loc_721F2B: FFreeAd var_94 = ""
  loc_721F34: LitI4 &HFF8080
  loc_721F39: FLdRfVar var_98
  loc_721F3C: FLdUI1
  loc_721F40: CI2UI1
  loc_721F42: LitI2_Byte 1
  loc_721F44: SubI2
  loc_721F45: FLdPrThis
  loc_721F46: VCallAd Control_ID_VolumenGrid
  loc_721F49: FStAdFunc var_94
  loc_721F4C: FLdPr var_94
  loc_721F4F: Set from_stack_2 = Me(from_stack_1)
  loc_721F54: FLdPr var_98
  loc_721F57: Me.BackColor = from_stack_1
  loc_721F5C: FFreeAd var_94 = ""
  loc_721F65: LitI4 &HFF8080
  loc_721F6A: FLdRfVar var_98
  loc_721F6D: FLdUI1
  loc_721F71: CI2UI1
  loc_721F73: LitI2_Byte 1
  loc_721F75: SubI2
  loc_721F76: FLdPrThis
  loc_721F77: VCallAd Control_ID_ImporteGrid
  loc_721F7A: FStAdFunc var_94
  loc_721F7D: FLdPr var_94
  loc_721F80: Set from_stack_2 = Me(from_stack_1)
  loc_721F85: FLdPr var_98
  loc_721F88: Me.BackColor = from_stack_1
  loc_721F8D: FFreeAd var_94 = ""
  loc_721F96: FLdPr Me
  loc_721F99: MemLdStr global_452
  loc_721F9C: FLdRfVar var_98
  loc_721F9F: FLdUI1
  loc_721FA3: CI2UI1
  loc_721FA5: LitI2_Byte 1
  loc_721FA7: SubI2
  loc_721FA8: FLdPrThis
  loc_721FA9: VCallAd Control_ID_ProductoGrid
  loc_721FAC: FStAdFunc var_94
  loc_721FAF: FLdPr var_94
  loc_721FB2: Set from_stack_2 = Me(from_stack_1)
  loc_721FB7: FLdPr var_98
  loc_721FBA: Me.ToolTipText = from_stack_1
  loc_721FBF: FFreeAd var_94 = ""
  loc_721FC6: Branch loc_722D21
  loc_721FCB: FLdUI1
  loc_721FCF: LitI2_Byte &H10
  loc_721FD1: CUI1I2
  loc_721FD3: EqI2
  loc_721FD4: BranchF loc_722175
  loc_721FD9: FLdRfVar var_FC
  loc_721FDC: FLdRfVar var_F8
  loc_721FDF: LitVarI2 var_E0, 1
  loc_721FE4: FLdPrThis
  loc_721FE5: VCallAd Control_ID_ImageList1
  loc_721FE8: FStAdFunc var_94
  loc_721FEB: FLdPr var_94
  loc_721FEE: LateIdLdVar var_D0 DispID_4 0
  loc_721FF5: CastAdVar Me
  loc_721FF9: FStAdFunc var_98
  loc_721FFC: FLdPr var_98
  loc_721FFF:  = Me.ListImages.ControlDefault
  loc_722004: FLdPr var_F8
  loc_722007:  = Me.Picture
  loc_72200C: FLdZeroAd var_FC
  loc_72200F: FStAdFuncNoPop
  loc_722012: FLdRfVar var_104
  loc_722015: FLdUI1
  loc_722019: CI2UI1
  loc_72201B: LitI2_Byte 1
  loc_72201D: SubI2
  loc_72201E: FLdPrThis
  loc_72201F: VCallAd Control_ID_ImagenGrid
  loc_722022: FStAdFunc var_100
  loc_722025: FLdPr var_100
  loc_722028: Set from_stack_2 = Me(from_stack_1)
  loc_72202D: FLdPr var_104
  loc_722030: Me.Picture = from_stack_1
  loc_722035: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_722044: FFreeVar var_D0 = ""
  loc_72204D: FLdPr Me
  loc_722050: MemLdStr global_324
  loc_722053: FLdRfVar var_98
  loc_722056: FLdUI1
  loc_72205A: CI2UI1
  loc_72205C: LitI2_Byte 1
  loc_72205E: SubI2
  loc_72205F: FLdPrThis
  loc_722060: VCallAd Control_ID_ProductoGrid
  loc_722063: FStAdFunc var_94
  loc_722066: FLdPr var_94
  loc_722069: Set from_stack_2 = Me(from_stack_1)
  loc_72206E: FLdPr var_98
  loc_722071: Me.ToolTipText = from_stack_1
  loc_722076: FFreeAd var_94 = ""
  loc_72207F: LitI4 &HFF0000
  loc_722084: FLdRfVar var_98
  loc_722087: FLdUI1
  loc_72208B: CI2UI1
  loc_72208D: LitI2_Byte 1
  loc_72208F: SubI2
  loc_722090: FLdPrThis
  loc_722091: VCallAd Control_ID_NumeroGrid
  loc_722094: FStAdFunc var_94
  loc_722097: FLdPr var_94
  loc_72209A: Set from_stack_2 = Me(from_stack_1)
  loc_72209F: FLdPr var_98
  loc_7220A2: Me.BackColor = from_stack_1
  loc_7220A7: FFreeAd var_94 = ""
  loc_7220B0: LitI4 &HFF0000
  loc_7220B5: FLdRfVar var_98
  loc_7220B8: FLdUI1
  loc_7220BC: CI2UI1
  loc_7220BE: LitI2_Byte 1
  loc_7220C0: SubI2
  loc_7220C1: FLdPrThis
  loc_7220C2: VCallAd Control_ID_PPUGrid
  loc_7220C5: FStAdFunc var_94
  loc_7220C8: FLdPr var_94
  loc_7220CB: Set from_stack_2 = Me(from_stack_1)
  loc_7220D0: FLdPr var_98
  loc_7220D3: Me.BackColor = from_stack_1
  loc_7220D8: FFreeAd var_94 = ""
  loc_7220E1: LitI4 &HFF0000
  loc_7220E6: FLdRfVar var_98
  loc_7220E9: FLdUI1
  loc_7220ED: CI2UI1
  loc_7220EF: LitI2_Byte 1
  loc_7220F1: SubI2
  loc_7220F2: FLdPrThis
  loc_7220F3: VCallAd Control_ID_ProductoGrid
  loc_7220F6: FStAdFunc var_94
  loc_7220F9: FLdPr var_94
  loc_7220FC: Set from_stack_2 = Me(from_stack_1)
  loc_722101: FLdPr var_98
  loc_722104: Me.BackColor = from_stack_1
  loc_722109: FFreeAd var_94 = ""
  loc_722112: LitI4 &HFF0000
  loc_722117: FLdRfVar var_98
  loc_72211A: FLdUI1
  loc_72211E: CI2UI1
  loc_722120: LitI2_Byte 1
  loc_722122: SubI2
  loc_722123: FLdPrThis
  loc_722124: VCallAd Control_ID_VolumenGrid
  loc_722127: FStAdFunc var_94
  loc_72212A: FLdPr var_94
  loc_72212D: Set from_stack_2 = Me(from_stack_1)
  loc_722132: FLdPr var_98
  loc_722135: Me.BackColor = from_stack_1
  loc_72213A: FFreeAd var_94 = ""
  loc_722143: LitI4 &HFF0000
  loc_722148: FLdRfVar var_98
  loc_72214B: FLdUI1
  loc_72214F: CI2UI1
  loc_722151: LitI2_Byte 1
  loc_722153: SubI2
  loc_722154: FLdPrThis
  loc_722155: VCallAd Control_ID_ImporteGrid
  loc_722158: FStAdFunc var_94
  loc_72215B: FLdPr var_94
  loc_72215E: Set from_stack_2 = Me(from_stack_1)
  loc_722163: FLdPr var_98
  loc_722166: Me.BackColor = from_stack_1
  loc_72216B: FFreeAd var_94 = ""
  loc_722172: Branch loc_722D21
  loc_722177: FLdUI1
  loc_72217B: LitI2_Byte 1
  loc_72217D: CUI1I2
  loc_72217F: EqI2
  loc_722180: BranchF loc_722321
  loc_722185: FLdRfVar var_FC
  loc_722188: FLdRfVar var_F8
  loc_72218B: LitVarI2 var_E0, 1
  loc_722190: FLdPrThis
  loc_722191: VCallAd Control_ID_ImageList1
  loc_722194: FStAdFunc var_94
  loc_722197: FLdPr var_94
  loc_72219A: LateIdLdVar var_D0 DispID_4 0
  loc_7221A1: CastAdVar Me
  loc_7221A5: FStAdFunc var_98
  loc_7221A8: FLdPr var_98
  loc_7221AB:  = Me.ListImages.ControlDefault
  loc_7221B0: FLdPr var_F8
  loc_7221B3:  = Me.Picture
  loc_7221B8: FLdZeroAd var_FC
  loc_7221BB: FStAdFuncNoPop
  loc_7221BE: FLdRfVar var_104
  loc_7221C1: FLdUI1
  loc_7221C5: CI2UI1
  loc_7221C7: LitI2_Byte 1
  loc_7221C9: SubI2
  loc_7221CA: FLdPrThis
  loc_7221CB: VCallAd Control_ID_ImagenGrid
  loc_7221CE: FStAdFunc var_100
  loc_7221D1: FLdPr var_100
  loc_7221D4: Set from_stack_2 = Me(from_stack_1)
  loc_7221D9: FLdPr var_104
  loc_7221DC: Me.Picture = from_stack_1
  loc_7221E1: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_7221F0: FFreeVar var_D0 = ""
  loc_7221F9: FLdPr Me
  loc_7221FC: MemLdStr global_328
  loc_7221FF: FLdRfVar var_98
  loc_722202: FLdUI1
  loc_722206: CI2UI1
  loc_722208: LitI2_Byte 1
  loc_72220A: SubI2
  loc_72220B: FLdPrThis
  loc_72220C: VCallAd Control_ID_ProductoGrid
  loc_72220F: FStAdFunc var_94
  loc_722212: FLdPr var_94
  loc_722215: Set from_stack_2 = Me(from_stack_1)
  loc_72221A: FLdPr var_98
  loc_72221D: Me.ToolTipText = from_stack_1
  loc_722222: FFreeAd var_94 = ""
  loc_72222B: LitI4 &HFF0000
  loc_722230: FLdRfVar var_98
  loc_722233: FLdUI1
  loc_722237: CI2UI1
  loc_722239: LitI2_Byte 1
  loc_72223B: SubI2
  loc_72223C: FLdPrThis
  loc_72223D: VCallAd Control_ID_NumeroGrid
  loc_722240: FStAdFunc var_94
  loc_722243: FLdPr var_94
  loc_722246: Set from_stack_2 = Me(from_stack_1)
  loc_72224B: FLdPr var_98
  loc_72224E: Me.BackColor = from_stack_1
  loc_722253: FFreeAd var_94 = ""
  loc_72225C: LitI4 &HFF0000
  loc_722261: FLdRfVar var_98
  loc_722264: FLdUI1
  loc_722268: CI2UI1
  loc_72226A: LitI2_Byte 1
  loc_72226C: SubI2
  loc_72226D: FLdPrThis
  loc_72226E: VCallAd Control_ID_PPUGrid
  loc_722271: FStAdFunc var_94
  loc_722274: FLdPr var_94
  loc_722277: Set from_stack_2 = Me(from_stack_1)
  loc_72227C: FLdPr var_98
  loc_72227F: Me.BackColor = from_stack_1
  loc_722284: FFreeAd var_94 = ""
  loc_72228D: LitI4 &HFF0000
  loc_722292: FLdRfVar var_98
  loc_722295: FLdUI1
  loc_722299: CI2UI1
  loc_72229B: LitI2_Byte 1
  loc_72229D: SubI2
  loc_72229E: FLdPrThis
  loc_72229F: VCallAd Control_ID_ProductoGrid
  loc_7222A2: FStAdFunc var_94
  loc_7222A5: FLdPr var_94
  loc_7222A8: Set from_stack_2 = Me(from_stack_1)
  loc_7222AD: FLdPr var_98
  loc_7222B0: Me.BackColor = from_stack_1
  loc_7222B5: FFreeAd var_94 = ""
  loc_7222BE: LitI4 &HFF0000
  loc_7222C3: FLdRfVar var_98
  loc_7222C6: FLdUI1
  loc_7222CA: CI2UI1
  loc_7222CC: LitI2_Byte 1
  loc_7222CE: SubI2
  loc_7222CF: FLdPrThis
  loc_7222D0: VCallAd Control_ID_VolumenGrid
  loc_7222D3: FStAdFunc var_94
  loc_7222D6: FLdPr var_94
  loc_7222D9: Set from_stack_2 = Me(from_stack_1)
  loc_7222DE: FLdPr var_98
  loc_7222E1: Me.BackColor = from_stack_1
  loc_7222E6: FFreeAd var_94 = ""
  loc_7222EF: LitI4 &HFF0000
  loc_7222F4: FLdRfVar var_98
  loc_7222F7: FLdUI1
  loc_7222FB: CI2UI1
  loc_7222FD: LitI2_Byte 1
  loc_7222FF: SubI2
  loc_722300: FLdPrThis
  loc_722301: VCallAd Control_ID_ImporteGrid
  loc_722304: FStAdFunc var_94
  loc_722307: FLdPr var_94
  loc_72230A: Set from_stack_2 = Me(from_stack_1)
  loc_72230F: FLdPr var_98
  loc_722312: Me.BackColor = from_stack_1
  loc_722317: FFreeAd var_94 = ""
  loc_72231E: Branch loc_722D21
  loc_722323: FLdUI1
  loc_722327: LitI2_Byte &H20
  loc_722329: CUI1I2
  loc_72232B: EqI2
  loc_72232C: BranchF loc_7224CD
  loc_722331: FLdRfVar var_FC
  loc_722334: FLdRfVar var_F8
  loc_722337: LitVarI2 var_E0, 1
  loc_72233C: FLdPrThis
  loc_72233D: VCallAd Control_ID_ImageList1
  loc_722340: FStAdFunc var_94
  loc_722343: FLdPr var_94
  loc_722346: LateIdLdVar var_D0 DispID_4 0
  loc_72234D: CastAdVar Me
  loc_722351: FStAdFunc var_98
  loc_722354: FLdPr var_98
  loc_722357:  = Me.ListImages.ControlDefault
  loc_72235C: FLdPr var_F8
  loc_72235F:  = Me.Picture
  loc_722364: FLdZeroAd var_FC
  loc_722367: FStAdFuncNoPop
  loc_72236A: FLdRfVar var_104
  loc_72236D: FLdUI1
  loc_722371: CI2UI1
  loc_722373: LitI2_Byte 1
  loc_722375: SubI2
  loc_722376: FLdPrThis
  loc_722377: VCallAd Control_ID_ImagenGrid
  loc_72237A: FStAdFunc var_100
  loc_72237D: FLdPr var_100
  loc_722380: Set from_stack_2 = Me(from_stack_1)
  loc_722385: FLdPr var_104
  loc_722388: Me.Picture = from_stack_1
  loc_72238D: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_72239C: FFreeVar var_D0 = ""
  loc_7223A5: FLdPr Me
  loc_7223A8: MemLdStr global_332
  loc_7223AB: FLdRfVar var_98
  loc_7223AE: FLdUI1
  loc_7223B2: CI2UI1
  loc_7223B4: LitI2_Byte 1
  loc_7223B6: SubI2
  loc_7223B7: FLdPrThis
  loc_7223B8: VCallAd Control_ID_ProductoGrid
  loc_7223BB: FStAdFunc var_94
  loc_7223BE: FLdPr var_94
  loc_7223C1: Set from_stack_2 = Me(from_stack_1)
  loc_7223C6: FLdPr var_98
  loc_7223C9: Me.ToolTipText = from_stack_1
  loc_7223CE: FFreeAd var_94 = ""
  loc_7223D7: LitI4 &HFF8080
  loc_7223DC: FLdRfVar var_98
  loc_7223DF: FLdUI1
  loc_7223E3: CI2UI1
  loc_7223E5: LitI2_Byte 1
  loc_7223E7: SubI2
  loc_7223E8: FLdPrThis
  loc_7223E9: VCallAd Control_ID_NumeroGrid
  loc_7223EC: FStAdFunc var_94
  loc_7223EF: FLdPr var_94
  loc_7223F2: Set from_stack_2 = Me(from_stack_1)
  loc_7223F7: FLdPr var_98
  loc_7223FA: Me.BackColor = from_stack_1
  loc_7223FF: FFreeAd var_94 = ""
  loc_722408: LitI4 &HFF8080
  loc_72240D: FLdRfVar var_98
  loc_722410: FLdUI1
  loc_722414: CI2UI1
  loc_722416: LitI2_Byte 1
  loc_722418: SubI2
  loc_722419: FLdPrThis
  loc_72241A: VCallAd Control_ID_PPUGrid
  loc_72241D: FStAdFunc var_94
  loc_722420: FLdPr var_94
  loc_722423: Set from_stack_2 = Me(from_stack_1)
  loc_722428: FLdPr var_98
  loc_72242B: Me.BackColor = from_stack_1
  loc_722430: FFreeAd var_94 = ""
  loc_722439: LitI4 &HFF8080
  loc_72243E: FLdRfVar var_98
  loc_722441: FLdUI1
  loc_722445: CI2UI1
  loc_722447: LitI2_Byte 1
  loc_722449: SubI2
  loc_72244A: FLdPrThis
  loc_72244B: VCallAd Control_ID_ProductoGrid
  loc_72244E: FStAdFunc var_94
  loc_722451: FLdPr var_94
  loc_722454: Set from_stack_2 = Me(from_stack_1)
  loc_722459: FLdPr var_98
  loc_72245C: Me.BackColor = from_stack_1
  loc_722461: FFreeAd var_94 = ""
  loc_72246A: LitI4 &HFF8080
  loc_72246F: FLdRfVar var_98
  loc_722472: FLdUI1
  loc_722476: CI2UI1
  loc_722478: LitI2_Byte 1
  loc_72247A: SubI2
  loc_72247B: FLdPrThis
  loc_72247C: VCallAd Control_ID_VolumenGrid
  loc_72247F: FStAdFunc var_94
  loc_722482: FLdPr var_94
  loc_722485: Set from_stack_2 = Me(from_stack_1)
  loc_72248A: FLdPr var_98
  loc_72248D: Me.BackColor = from_stack_1
  loc_722492: FFreeAd var_94 = ""
  loc_72249B: LitI4 &HFF8080
  loc_7224A0: FLdRfVar var_98
  loc_7224A3: FLdUI1
  loc_7224A7: CI2UI1
  loc_7224A9: LitI2_Byte 1
  loc_7224AB: SubI2
  loc_7224AC: FLdPrThis
  loc_7224AD: VCallAd Control_ID_ImporteGrid
  loc_7224B0: FStAdFunc var_94
  loc_7224B3: FLdPr var_94
  loc_7224B6: Set from_stack_2 = Me(from_stack_1)
  loc_7224BB: FLdPr var_98
  loc_7224BE: Me.BackColor = from_stack_1
  loc_7224C3: FFreeAd var_94 = ""
  loc_7224CA: Branch loc_722D21
  loc_7224CF: FLdUI1
  loc_7224D3: LitI2_Byte &H21
  loc_7224D5: CUI1I2
  loc_7224D7: EqI2
  loc_7224D8: BranchF loc_722679
  loc_7224DD: FLdRfVar var_FC
  loc_7224E0: FLdRfVar var_F8
  loc_7224E3: LitVarI2 var_E0, 1
  loc_7224E8: FLdPrThis
  loc_7224E9: VCallAd Control_ID_ImageList1
  loc_7224EC: FStAdFunc var_94
  loc_7224EF: FLdPr var_94
  loc_7224F2: LateIdLdVar var_D0 DispID_4 0
  loc_7224F9: CastAdVar Me
  loc_7224FD: FStAdFunc var_98
  loc_722500: FLdPr var_98
  loc_722503:  = Me.ListImages.ControlDefault
  loc_722508: FLdPr var_F8
  loc_72250B:  = Me.Picture
  loc_722510: FLdZeroAd var_FC
  loc_722513: FStAdFuncNoPop
  loc_722516: FLdRfVar var_104
  loc_722519: FLdUI1
  loc_72251D: CI2UI1
  loc_72251F: LitI2_Byte 1
  loc_722521: SubI2
  loc_722522: FLdPrThis
  loc_722523: VCallAd Control_ID_ImagenGrid
  loc_722526: FStAdFunc var_100
  loc_722529: FLdPr var_100
  loc_72252C: Set from_stack_2 = Me(from_stack_1)
  loc_722531: FLdPr var_104
  loc_722534: Me.Picture = from_stack_1
  loc_722539: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_722548: FFreeVar var_D0 = ""
  loc_722551: FLdPr Me
  loc_722554: MemLdStr global_336
  loc_722557: FLdRfVar var_98
  loc_72255A: FLdUI1
  loc_72255E: CI2UI1
  loc_722560: LitI2_Byte 1
  loc_722562: SubI2
  loc_722563: FLdPrThis
  loc_722564: VCallAd Control_ID_ProductoGrid
  loc_722567: FStAdFunc var_94
  loc_72256A: FLdPr var_94
  loc_72256D: Set from_stack_2 = Me(from_stack_1)
  loc_722572: FLdPr var_98
  loc_722575: Me.ToolTipText = from_stack_1
  loc_72257A: FFreeAd var_94 = ""
  loc_722583: LitI4 &HFF8080
  loc_722588: FLdRfVar var_98
  loc_72258B: FLdUI1
  loc_72258F: CI2UI1
  loc_722591: LitI2_Byte 1
  loc_722593: SubI2
  loc_722594: FLdPrThis
  loc_722595: VCallAd Control_ID_NumeroGrid
  loc_722598: FStAdFunc var_94
  loc_72259B: FLdPr var_94
  loc_72259E: Set from_stack_2 = Me(from_stack_1)
  loc_7225A3: FLdPr var_98
  loc_7225A6: Me.BackColor = from_stack_1
  loc_7225AB: FFreeAd var_94 = ""
  loc_7225B4: LitI4 &HFF8080
  loc_7225B9: FLdRfVar var_98
  loc_7225BC: FLdUI1
  loc_7225C0: CI2UI1
  loc_7225C2: LitI2_Byte 1
  loc_7225C4: SubI2
  loc_7225C5: FLdPrThis
  loc_7225C6: VCallAd Control_ID_PPUGrid
  loc_7225C9: FStAdFunc var_94
  loc_7225CC: FLdPr var_94
  loc_7225CF: Set from_stack_2 = Me(from_stack_1)
  loc_7225D4: FLdPr var_98
  loc_7225D7: Me.BackColor = from_stack_1
  loc_7225DC: FFreeAd var_94 = ""
  loc_7225E5: LitI4 &HFF8080
  loc_7225EA: FLdRfVar var_98
  loc_7225ED: FLdUI1
  loc_7225F1: CI2UI1
  loc_7225F3: LitI2_Byte 1
  loc_7225F5: SubI2
  loc_7225F6: FLdPrThis
  loc_7225F7: VCallAd Control_ID_ProductoGrid
  loc_7225FA: FStAdFunc var_94
  loc_7225FD: FLdPr var_94
  loc_722600: Set from_stack_2 = Me(from_stack_1)
  loc_722605: FLdPr var_98
  loc_722608: Me.BackColor = from_stack_1
  loc_72260D: FFreeAd var_94 = ""
  loc_722616: LitI4 &HFF8080
  loc_72261B: FLdRfVar var_98
  loc_72261E: FLdUI1
  loc_722622: CI2UI1
  loc_722624: LitI2_Byte 1
  loc_722626: SubI2
  loc_722627: FLdPrThis
  loc_722628: VCallAd Control_ID_VolumenGrid
  loc_72262B: FStAdFunc var_94
  loc_72262E: FLdPr var_94
  loc_722631: Set from_stack_2 = Me(from_stack_1)
  loc_722636: FLdPr var_98
  loc_722639: Me.BackColor = from_stack_1
  loc_72263E: FFreeAd var_94 = ""
  loc_722647: LitI4 &HFF8080
  loc_72264C: FLdRfVar var_98
  loc_72264F: FLdUI1
  loc_722653: CI2UI1
  loc_722655: LitI2_Byte 1
  loc_722657: SubI2
  loc_722658: FLdPrThis
  loc_722659: VCallAd Control_ID_ImporteGrid
  loc_72265C: FStAdFunc var_94
  loc_72265F: FLdPr var_94
  loc_722662: Set from_stack_2 = Me(from_stack_1)
  loc_722667: FLdPr var_98
  loc_72266A: Me.BackColor = from_stack_1
  loc_72266F: FFreeAd var_94 = ""
  loc_722676: Branch loc_722D21
  loc_72267B: FLdUI1
  loc_72267F: LitI2_Byte &H12
  loc_722681: CUI1I2
  loc_722683: EqI2
  loc_722684: BranchT loc_722693
  loc_722687: FLdUI1
  loc_72268B: LitI2_Byte &H13
  loc_72268D: CUI1I2
  loc_72268F: EqI2
  loc_722690: BranchF loc_722892
  loc_722695: FLdRfVar var_FC
  loc_722698: FLdRfVar var_F8
  loc_72269B: LitVarI2 var_E0, 5
  loc_7226A0: FLdPrThis
  loc_7226A1: VCallAd Control_ID_ImageList1
  loc_7226A4: FStAdFunc var_94
  loc_7226A7: FLdPr var_94
  loc_7226AA: LateIdLdVar var_D0 DispID_4 0
  loc_7226B1: CastAdVar Me
  loc_7226B5: FStAdFunc var_98
  loc_7226B8: FLdPr var_98
  loc_7226BB:  = Me.ListImages.ControlDefault
  loc_7226C0: FLdPr var_F8
  loc_7226C3:  = Me.Picture
  loc_7226C8: FLdZeroAd var_FC
  loc_7226CB: FStAdFuncNoPop
  loc_7226CE: FLdRfVar var_104
  loc_7226D1: FLdUI1
  loc_7226D5: CI2UI1
  loc_7226D7: LitI2_Byte 1
  loc_7226D9: SubI2
  loc_7226DA: FLdPrThis
  loc_7226DB: VCallAd Control_ID_ImagenGrid
  loc_7226DE: FStAdFunc var_100
  loc_7226E1: FLdPr var_100
  loc_7226E4: Set from_stack_2 = Me(from_stack_1)
  loc_7226E9: FLdPr var_104
  loc_7226EC: Me.Picture = from_stack_1
  loc_7226F1: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_722700: FFreeVar var_D0 = ""
  loc_722709: ILdUI1 arg_C
  loc_72270D: CI4UI1
  loc_72270E: FLdUI1
  loc_722712: CI4UI1
  loc_722713: ImpAdLdRf MemVar_74BFE4
  loc_722716: AryLdPr
  loc_722719: MemLdUI1 global_37
  loc_72271D: CI2UI1
  loc_72271F: LitI2_Byte &H12
  loc_722721: EqI2
  loc_722722: BranchF loc_722764
  loc_722727: FLdPr Me
  loc_72272A: MemLdStr global_340
  loc_72272D: FLdRfVar var_98
  loc_722730: FLdUI1
  loc_722734: CI2UI1
  loc_722736: LitI2_Byte 1
  loc_722738: SubI2
  loc_722739: FLdPrThis
  loc_72273A: VCallAd Control_ID_ProductoGrid
  loc_72273D: FStAdFunc var_94
  loc_722740: FLdPr var_94
  loc_722743: Set from_stack_2 = Me(from_stack_1)
  loc_722748: FLdPr var_98
  loc_72274B: Me.ToolTipText = from_stack_1
  loc_722750: FFreeAd var_94 = ""
  loc_722759: LitI4 &HC00000
  loc_72275E: FStR4 var_8C
  loc_722761: Branch loc_7227A2
  loc_722768: FLdPr Me
  loc_72276B: MemLdStr global_344
  loc_72276E: FLdRfVar var_98
  loc_722771: FLdUI1
  loc_722775: CI2UI1
  loc_722777: LitI2_Byte 1
  loc_722779: SubI2
  loc_72277A: FLdPrThis
  loc_72277B: VCallAd Control_ID_ProductoGrid
  loc_72277E: FStAdFunc var_94
  loc_722781: FLdPr var_94
  loc_722784: Set from_stack_2 = Me(from_stack_1)
  loc_722789: FLdPr var_98
  loc_72278C: Me.ToolTipText = from_stack_1
  loc_722791: FFreeAd var_94 = ""
  loc_72279A: LitI4 &H8000
  loc_72279F: FStR4 var_8C
  loc_7227A6: ILdRf var_8C
  loc_7227A9: FLdRfVar var_98
  loc_7227AC: FLdUI1
  loc_7227B0: CI2UI1
  loc_7227B2: LitI2_Byte 1
  loc_7227B4: SubI2
  loc_7227B5: FLdPrThis
  loc_7227B6: VCallAd Control_ID_NumeroGrid
  loc_7227B9: FStAdFunc var_94
  loc_7227BC: FLdPr var_94
  loc_7227BF: Set from_stack_2 = Me(from_stack_1)
  loc_7227C4: FLdPr var_98
  loc_7227C7: Me.BackColor = from_stack_1
  loc_7227CC: FFreeAd var_94 = ""
  loc_7227D5: ILdRf var_8C
  loc_7227D8: FLdRfVar var_98
  loc_7227DB: FLdUI1
  loc_7227DF: CI2UI1
  loc_7227E1: LitI2_Byte 1
  loc_7227E3: SubI2
  loc_7227E4: FLdPrThis
  loc_7227E5: VCallAd Control_ID_PPUGrid
  loc_7227E8: FStAdFunc var_94
  loc_7227EB: FLdPr var_94
  loc_7227EE: Set from_stack_2 = Me(from_stack_1)
  loc_7227F3: FLdPr var_98
  loc_7227F6: Me.BackColor = from_stack_1
  loc_7227FB: FFreeAd var_94 = ""
  loc_722804: ILdRf var_8C
  loc_722807: FLdRfVar var_98
  loc_72280A: FLdUI1
  loc_72280E: CI2UI1
  loc_722810: LitI2_Byte 1
  loc_722812: SubI2
  loc_722813: FLdPrThis
  loc_722814: VCallAd Control_ID_ProductoGrid
  loc_722817: FStAdFunc var_94
  loc_72281A: FLdPr var_94
  loc_72281D: Set from_stack_2 = Me(from_stack_1)
  loc_722822: FLdPr var_98
  loc_722825: Me.BackColor = from_stack_1
  loc_72282A: FFreeAd var_94 = ""
  loc_722833: ILdRf var_8C
  loc_722836: FLdRfVar var_98
  loc_722839: FLdUI1
  loc_72283D: CI2UI1
  loc_72283F: LitI2_Byte 1
  loc_722841: SubI2
  loc_722842: FLdPrThis
  loc_722843: VCallAd Control_ID_VolumenGrid
  loc_722846: FStAdFunc var_94
  loc_722849: FLdPr var_94
  loc_72284C: Set from_stack_2 = Me(from_stack_1)
  loc_722851: FLdPr var_98
  loc_722854: Me.BackColor = from_stack_1
  loc_722859: FFreeAd var_94 = ""
  loc_722862: ILdRf var_8C
  loc_722865: FLdRfVar var_98
  loc_722868: FLdUI1
  loc_72286C: CI2UI1
  loc_72286E: LitI2_Byte 1
  loc_722870: SubI2
  loc_722871: FLdPrThis
  loc_722872: VCallAd Control_ID_ImporteGrid
  loc_722875: FStAdFunc var_94
  loc_722878: FLdPr var_94
  loc_72287B: Set from_stack_2 = Me(from_stack_1)
  loc_722880: FLdPr var_98
  loc_722883: Me.BackColor = from_stack_1
  loc_722888: FFreeAd var_94 = ""
  loc_72288F: Branch loc_722D21
  loc_722894: FLdUI1
  loc_722898: LitI2_Byte &H2D
  loc_72289A: CUI1I2
  loc_72289C: EqI2
  loc_72289D: BranchT loc_7228AC
  loc_7228A0: FLdUI1
  loc_7228A4: LitI2_Byte &H2E
  loc_7228A6: CUI1I2
  loc_7228A8: EqI2
  loc_7228A9: BranchF loc_722AAB
  loc_7228AE: FLdRfVar var_FC
  loc_7228B1: FLdRfVar var_F8
  loc_7228B4: LitVarI2 var_E0, 5
  loc_7228B9: FLdPrThis
  loc_7228BA: VCallAd Control_ID_ImageList1
  loc_7228BD: FStAdFunc var_94
  loc_7228C0: FLdPr var_94
  loc_7228C3: LateIdLdVar var_D0 DispID_4 0
  loc_7228CA: CastAdVar Me
  loc_7228CE: FStAdFunc var_98
  loc_7228D1: FLdPr var_98
  loc_7228D4:  = Me.ListImages.ControlDefault
  loc_7228D9: FLdPr var_F8
  loc_7228DC:  = Me.Picture
  loc_7228E1: FLdZeroAd var_FC
  loc_7228E4: FStAdFuncNoPop
  loc_7228E7: FLdRfVar var_104
  loc_7228EA: FLdUI1
  loc_7228EE: CI2UI1
  loc_7228F0: LitI2_Byte 1
  loc_7228F2: SubI2
  loc_7228F3: FLdPrThis
  loc_7228F4: VCallAd Control_ID_ImagenGrid
  loc_7228F7: FStAdFunc var_100
  loc_7228FA: FLdPr var_100
  loc_7228FD: Set from_stack_2 = Me(from_stack_1)
  loc_722902: FLdPr var_104
  loc_722905: Me.Picture = from_stack_1
  loc_72290A: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_722919: FFreeVar var_D0 = ""
  loc_722922: ILdUI1 arg_C
  loc_722926: CI4UI1
  loc_722927: FLdUI1
  loc_72292B: CI4UI1
  loc_72292C: ImpAdLdRf MemVar_74BFE4
  loc_72292F: AryLdPr
  loc_722932: MemLdUI1 global_37
  loc_722936: CI2UI1
  loc_722938: LitI2_Byte &H2D
  loc_72293A: EqI2
  loc_72293B: BranchF loc_72297D
  loc_722940: FLdPr Me
  loc_722943: MemLdStr global_348
  loc_722946: FLdRfVar var_98
  loc_722949: FLdUI1
  loc_72294D: CI2UI1
  loc_72294F: LitI2_Byte 1
  loc_722951: SubI2
  loc_722952: FLdPrThis
  loc_722953: VCallAd Control_ID_ProductoGrid
  loc_722956: FStAdFunc var_94
  loc_722959: FLdPr var_94
  loc_72295C: Set from_stack_2 = Me(from_stack_1)
  loc_722961: FLdPr var_98
  loc_722964: Me.ToolTipText = from_stack_1
  loc_722969: FFreeAd var_94 = ""
  loc_722972: LitI4 &HC00000
  loc_722977: FStR4 var_8C
  loc_72297A: Branch loc_7229BB
  loc_722981: FLdPr Me
  loc_722984: MemLdStr global_352
  loc_722987: FLdRfVar var_98
  loc_72298A: FLdUI1
  loc_72298E: CI2UI1
  loc_722990: LitI2_Byte 1
  loc_722992: SubI2
  loc_722993: FLdPrThis
  loc_722994: VCallAd Control_ID_ProductoGrid
  loc_722997: FStAdFunc var_94
  loc_72299A: FLdPr var_94
  loc_72299D: Set from_stack_2 = Me(from_stack_1)
  loc_7229A2: FLdPr var_98
  loc_7229A5: Me.ToolTipText = from_stack_1
  loc_7229AA: FFreeAd var_94 = ""
  loc_7229B3: LitI4 &H8000
  loc_7229B8: FStR4 var_8C
  loc_7229BF: ILdRf var_8C
  loc_7229C2: FLdRfVar var_98
  loc_7229C5: FLdUI1
  loc_7229C9: CI2UI1
  loc_7229CB: LitI2_Byte 1
  loc_7229CD: SubI2
  loc_7229CE: FLdPrThis
  loc_7229CF: VCallAd Control_ID_NumeroGrid
  loc_7229D2: FStAdFunc var_94
  loc_7229D5: FLdPr var_94
  loc_7229D8: Set from_stack_2 = Me(from_stack_1)
  loc_7229DD: FLdPr var_98
  loc_7229E0: Me.BackColor = from_stack_1
  loc_7229E5: FFreeAd var_94 = ""
  loc_7229EE: ILdRf var_8C
  loc_7229F1: FLdRfVar var_98
  loc_7229F4: FLdUI1
  loc_7229F8: CI2UI1
  loc_7229FA: LitI2_Byte 1
  loc_7229FC: SubI2
  loc_7229FD: FLdPrThis
  loc_7229FE: VCallAd Control_ID_PPUGrid
  loc_722A01: FStAdFunc var_94
  loc_722A04: FLdPr var_94
  loc_722A07: Set from_stack_2 = Me(from_stack_1)
  loc_722A0C: FLdPr var_98
  loc_722A0F: Me.BackColor = from_stack_1
  loc_722A14: FFreeAd var_94 = ""
  loc_722A1D: ILdRf var_8C
  loc_722A20: FLdRfVar var_98
  loc_722A23: FLdUI1
  loc_722A27: CI2UI1
  loc_722A29: LitI2_Byte 1
  loc_722A2B: SubI2
  loc_722A2C: FLdPrThis
  loc_722A2D: VCallAd Control_ID_ProductoGrid
  loc_722A30: FStAdFunc var_94
  loc_722A33: FLdPr var_94
  loc_722A36: Set from_stack_2 = Me(from_stack_1)
  loc_722A3B: FLdPr var_98
  loc_722A3E: Me.BackColor = from_stack_1
  loc_722A43: FFreeAd var_94 = ""
  loc_722A4C: ILdRf var_8C
  loc_722A4F: FLdRfVar var_98
  loc_722A52: FLdUI1
  loc_722A56: CI2UI1
  loc_722A58: LitI2_Byte 1
  loc_722A5A: SubI2
  loc_722A5B: FLdPrThis
  loc_722A5C: VCallAd Control_ID_VolumenGrid
  loc_722A5F: FStAdFunc var_94
  loc_722A62: FLdPr var_94
  loc_722A65: Set from_stack_2 = Me(from_stack_1)
  loc_722A6A: FLdPr var_98
  loc_722A6D: Me.BackColor = from_stack_1
  loc_722A72: FFreeAd var_94 = ""
  loc_722A7B: ILdRf var_8C
  loc_722A7E: FLdRfVar var_98
  loc_722A81: FLdUI1
  loc_722A85: CI2UI1
  loc_722A87: LitI2_Byte 1
  loc_722A89: SubI2
  loc_722A8A: FLdPrThis
  loc_722A8B: VCallAd Control_ID_ImporteGrid
  loc_722A8E: FStAdFunc var_94
  loc_722A91: FLdPr var_94
  loc_722A94: Set from_stack_2 = Me(from_stack_1)
  loc_722A99: FLdPr var_98
  loc_722A9C: Me.BackColor = from_stack_1
  loc_722AA1: FFreeAd var_94 = ""
  loc_722AA8: Branch loc_722D21
  loc_722AAD: FLdUI1
  loc_722AB1: LitI2_Byte &HA
  loc_722AB3: CUI1I2
  loc_722AB5: EqI2
  loc_722AB6: BranchT loc_722AC5
  loc_722AB9: FLdUI1
  loc_722ABD: LitI2_Byte &HB
  loc_722ABF: CUI1I2
  loc_722AC1: EqI2
  loc_722AC2: BranchF loc_722CBA
  loc_722AC7: FLdRfVar var_FC
  loc_722ACA: FLdRfVar var_F8
  loc_722ACD: LitVarI2 var_E0, 5
  loc_722AD2: FLdPrThis
  loc_722AD3: VCallAd Control_ID_ImageList1
  loc_722AD6: FStAdFunc var_94
  loc_722AD9: FLdPr var_94
  loc_722ADC: LateIdLdVar var_D0 DispID_4 0
  loc_722AE3: CastAdVar Me
  loc_722AE7: FStAdFunc var_98
  loc_722AEA: FLdPr var_98
  loc_722AED:  = Me.ListImages.ControlDefault
  loc_722AF2: FLdPr var_F8
  loc_722AF5:  = Me.Picture
  loc_722AFA: FLdZeroAd var_FC
  loc_722AFD: FStAdFuncNoPop
  loc_722B00: FLdRfVar var_104
  loc_722B03: FLdUI1
  loc_722B07: CI2UI1
  loc_722B09: LitI2_Byte 1
  loc_722B0B: SubI2
  loc_722B0C: FLdPrThis
  loc_722B0D: VCallAd Control_ID_ImagenGrid
  loc_722B10: FStAdFunc var_100
  loc_722B13: FLdPr var_100
  loc_722B16: Set from_stack_2 = Me(from_stack_1)
  loc_722B1B: FLdPr var_104
  loc_722B1E: Me.Picture = from_stack_1
  loc_722B23: FFreeAd var_94 = "": var_98 = "": var_F8 = "": var_100 = "": var_108 = ""
  loc_722B32: FFreeVar var_D0 = ""
  loc_722B3B: ILdUI1 arg_C
  loc_722B3F: CI4UI1
  loc_722B40: FLdUI1
  loc_722B44: CI4UI1
  loc_722B45: ImpAdLdRf MemVar_74BFE4
  loc_722B48: AryLdPr
  loc_722B4B: MemLdUI1 global_37
  loc_722B4F: CI2UI1
  loc_722B51: LitI2_Byte &HB
  loc_722B53: EqI2
  loc_722B54: BranchF loc_722B8C
  loc_722B59: FLdPr Me
  loc_722B5C: MemLdStr global_356
  loc_722B5F: FLdRfVar var_98
  loc_722B62: FLdUI1
  loc_722B66: CI2UI1
  loc_722B68: LitI2_Byte 1
  loc_722B6A: SubI2
  loc_722B6B: FLdPrThis
  loc_722B6C: VCallAd Control_ID_ProductoGrid
  loc_722B6F: FStAdFunc var_94
  loc_722B72: FLdPr var_94
  loc_722B75: Set from_stack_2 = Me(from_stack_1)
  loc_722B7A: FLdPr var_98
  loc_722B7D: Me.ToolTipText = from_stack_1
  loc_722B82: FFreeAd var_94 = ""
  loc_722B89: Branch loc_722BC0
  loc_722B90: FLdPr Me
  loc_722B93: MemLdStr global_360
  loc_722B96: FLdRfVar var_98
  loc_722B99: FLdUI1
  loc_722B9D: CI2UI1
  loc_722B9F: LitI2_Byte 1
  loc_722BA1: SubI2
  loc_722BA2: FLdPrThis
  loc_722BA3: VCallAd Control_ID_ProductoGrid
  loc_722BA6: FStAdFunc var_94
  loc_722BA9: FLdPr var_94
  loc_722BAC: Set from_stack_2 = Me(from_stack_1)
  loc_722BB1: FLdPr var_98
  loc_722BB4: Me.ToolTipText = from_stack_1
  loc_722BB9: FFreeAd var_94 = ""
  loc_722BC4: LitI4 &H808000
  loc_722BC9: FLdRfVar var_98
  loc_722BCC: FLdUI1
  loc_722BD0: CI2UI1
  loc_722BD2: LitI2_Byte 1
  loc_722BD4: SubI2
  loc_722BD5: FLdPrThis
  loc_722BD6: VCallAd Control_ID_NumeroGrid
  loc_722BD9: FStAdFunc var_94
  loc_722BDC: FLdPr var_94
  loc_722BDF: Set from_stack_2 = Me(from_stack_1)
  loc_722BE4: FLdPr var_98
  loc_722BE7: Me.BackColor = from_stack_1
  loc_722BEC: FFreeAd var_94 = ""
  loc_722BF5: LitI4 &H808000
  loc_722BFA: FLdRfVar var_98
  loc_722BFD: FLdUI1
  loc_722C01: CI2UI1
  loc_722C03: LitI2_Byte 1
  loc_722C05: SubI2
  loc_722C06: FLdPrThis
  loc_722C07: VCallAd Control_ID_PPUGrid
  loc_722C0A: FStAdFunc var_94
  loc_722C0D: FLdPr var_94
  loc_722C10: Set from_stack_2 = Me(from_stack_1)
  loc_722C15: FLdPr var_98
  loc_722C18: Me.BackColor = from_stack_1
  loc_722C1D: FFreeAd var_94 = ""
  loc_722C26: LitI4 &H808000
  loc_722C2B: FLdRfVar var_98
  loc_722C2E: FLdUI1
  loc_722C32: CI2UI1
  loc_722C34: LitI2_Byte 1
  loc_722C36: SubI2
  loc_722C37: FLdPrThis
  loc_722C38: VCallAd Control_ID_ProductoGrid
  loc_722C3B: FStAdFunc var_94
  loc_722C3E: FLdPr var_94
  loc_722C41: Set from_stack_2 = Me(from_stack_1)
  loc_722C46: FLdPr var_98
  loc_722C49: Me.BackColor = from_stack_1
  loc_722C4E: FFreeAd var_94 = ""
  loc_722C57: LitI4 &H808000
  loc_722C5C: FLdRfVar var_98
  loc_722C5F: FLdUI1
  loc_722C63: CI2UI1
  loc_722C65: LitI2_Byte 1
  loc_722C67: SubI2
  loc_722C68: FLdPrThis
  loc_722C69: VCallAd Control_ID_VolumenGrid
  loc_722C6C: FStAdFunc var_94
  loc_722C6F: FLdPr var_94
  loc_722C72: Set from_stack_2 = Me(from_stack_1)
  loc_722C77: FLdPr var_98
  loc_722C7A: Me.BackColor = from_stack_1
  loc_722C7F: FFreeAd var_94 = ""
  loc_722C88: LitI4 &H808000
  loc_722C8D: FLdRfVar var_98
  loc_722C90: FLdUI1
  loc_722C94: CI2UI1
  loc_722C96: LitI2_Byte 1
  loc_722C98: SubI2
  loc_722C99: FLdPrThis
  loc_722C9A: VCallAd Control_ID_ImporteGrid
  loc_722C9D: FStAdFunc var_94
  loc_722CA0: FLdPr var_94
  loc_722CA3: Set from_stack_2 = Me(from_stack_1)
  loc_722CA8: FLdPr var_98
  loc_722CAB: Me.BackColor = from_stack_1
  loc_722CB0: FFreeAd var_94 = ""
  loc_722CB7: Branch loc_722D21
  loc_722CBE: LitNothing
  loc_722CC0: CastAd
  loc_722CC3: FStAdFuncNoPop
  loc_722CC6: FLdRfVar var_98
  loc_722CC9: FLdUI1
  loc_722CCD: CI2UI1
  loc_722CCF: LitI2_Byte 1
  loc_722CD1: SubI2
  loc_722CD2: FLdPrThis
  loc_722CD3: VCallAd Control_ID_ImagenGrid
  loc_722CD6: FStAdFunc var_94
  loc_722CD9: FLdPr var_94
  loc_722CDC: Set from_stack_2 = Me(from_stack_1)
  loc_722CE1: FLdPr var_98
  loc_722CE4: Me.Picture = from_stack_1
  loc_722CE9: FFreeAd var_94 = "": var_F8 = ""
  loc_722CF4: LitStr vbNullString
  loc_722CF7: FLdRfVar var_98
  loc_722CFA: FLdUI1
  loc_722CFE: CI2UI1
  loc_722D00: LitI2_Byte 1
  loc_722D02: SubI2
  loc_722D03: FLdPrThis
  loc_722D04: VCallAd Control_ID_ProductoGrid
  loc_722D07: FStAdFunc var_94
  loc_722D0A: FLdPr var_94
  loc_722D0D: Set from_stack_2 = Me(from_stack_1)
  loc_722D12: FLdPr var_98
  loc_722D15: Me.ToolTipText = from_stack_1
  loc_722D1A: FFreeAd var_94 = ""
  loc_722D23: Branch loc_722EB6
  loc_722D2A: LitNothing
  loc_722D2C: CastAd
  loc_722D2F: FStAdFuncNoPop
  loc_722D32: FLdRfVar var_98
  loc_722D35: FLdUI1
  loc_722D39: CI2UI1
  loc_722D3B: LitI2_Byte 1
  loc_722D3D: SubI2
  loc_722D3E: FLdPrThis
  loc_722D3F: VCallAd Control_ID_ImagenGrid
  loc_722D42: FStAdFunc var_94
  loc_722D45: FLdPr var_94
  loc_722D48: Set from_stack_2 = Me(from_stack_1)
  loc_722D4D: FLdPr var_98
  loc_722D50: Me.Picture = from_stack_1
  loc_722D55: FFreeAd var_94 = "": var_F8 = ""
  loc_722D60: FLdPr Me
  loc_722D63: MemLdStr global_364
  loc_722D66: FLdRfVar var_98
  loc_722D69: FLdUI1
  loc_722D6D: CI2UI1
  loc_722D6F: LitI2_Byte 1
  loc_722D71: SubI2
  loc_722D72: FLdPrThis
  loc_722D73: VCallAd Control_ID_ProductoGrid
  loc_722D76: FStAdFunc var_94
  loc_722D79: FLdPr var_94
  loc_722D7C: Set from_stack_2 = Me(from_stack_1)
  loc_722D81: FLdPr var_98
  loc_722D84: Me.ToolTipText = from_stack_1
  loc_722D89: FFreeAd var_94 = ""
  loc_722D92: LitI4 &HFF
  loc_722D97: FLdRfVar var_98
  loc_722D9A: FLdUI1
  loc_722D9E: CI2UI1
  loc_722DA0: LitI2_Byte 1
  loc_722DA2: SubI2
  loc_722DA3: FLdPrThis
  loc_722DA4: VCallAd Control_ID_ProductoGrid
  loc_722DA7: FStAdFunc var_94
  loc_722DAA: FLdPr var_94
  loc_722DAD: Set from_stack_2 = Me(from_stack_1)
  loc_722DB2: FLdPr var_98
  loc_722DB5: Me.BackColor = from_stack_1
  loc_722DBA: FFreeAd var_94 = ""
  loc_722DC3: LitI4 &HFF
  loc_722DC8: FLdRfVar var_98
  loc_722DCB: FLdUI1
  loc_722DCF: CI2UI1
  loc_722DD1: LitI2_Byte 1
  loc_722DD3: SubI2
  loc_722DD4: FLdPrThis
  loc_722DD5: VCallAd Control_ID_PPUGrid
  loc_722DD8: FStAdFunc var_94
  loc_722DDB: FLdPr var_94
  loc_722DDE: Set from_stack_2 = Me(from_stack_1)
  loc_722DE3: FLdPr var_98
  loc_722DE6: Me.BackColor = from_stack_1
  loc_722DEB: FFreeAd var_94 = ""
  loc_722DF4: LitI4 &HFF
  loc_722DF9: FLdRfVar var_98
  loc_722DFC: FLdUI1
  loc_722E00: CI2UI1
  loc_722E02: LitI2_Byte 1
  loc_722E04: SubI2
  loc_722E05: FLdPrThis
  loc_722E06: VCallAd Control_ID_VolumenGrid
  loc_722E09: FStAdFunc var_94
  loc_722E0C: FLdPr var_94
  loc_722E0F: Set from_stack_2 = Me(from_stack_1)
  loc_722E14: FLdPr var_98
  loc_722E17: Me.BackColor = from_stack_1
  loc_722E1C: FFreeAd var_94 = ""
  loc_722E25: LitI4 &HFF
  loc_722E2A: FLdRfVar var_98
  loc_722E2D: FLdUI1
  loc_722E31: CI2UI1
  loc_722E33: LitI2_Byte 1
  loc_722E35: SubI2
  loc_722E36: FLdPrThis
  loc_722E37: VCallAd Control_ID_ImporteGrid
  loc_722E3A: FStAdFunc var_94
  loc_722E3D: FLdPr var_94
  loc_722E40: Set from_stack_2 = Me(from_stack_1)
  loc_722E45: FLdPr var_98
  loc_722E48: Me.BackColor = from_stack_1
  loc_722E4D: FFreeAd var_94 = ""
  loc_722E56: LitI4 &HFF
  loc_722E5B: FLdRfVar var_98
  loc_722E5E: FLdUI1
  loc_722E62: CI2UI1
  loc_722E64: LitI2_Byte 1
  loc_722E66: SubI2
  loc_722E67: FLdPrThis
  loc_722E68: VCallAd Control_ID_NumeroGrid
  loc_722E6B: FStAdFunc var_94
  loc_722E6E: FLdPr var_94
  loc_722E71: Set from_stack_2 = Me(from_stack_1)
  loc_722E76: FLdPr var_98
  loc_722E79: Me.BackColor = from_stack_1
  loc_722E7E: FFreeAd var_94 = ""
  loc_722E87: LitI4 &HFF00
  loc_722E8C: FLdRfVar var_98
  loc_722E8F: FLdUI1
  loc_722E93: CI2UI1
  loc_722E95: LitI2_Byte 1
  loc_722E97: SubI2
  loc_722E98: FLdPrThis
  loc_722E99: VCallAd Control_ID_NumeroGrid
  loc_722E9C: FStAdFunc var_94
  loc_722E9F: FLdPr var_94
  loc_722EA2: Set from_stack_2 = Me(from_stack_1)
  loc_722EA7: FLdPr var_98
  loc_722EAA: Me.ForeColor = from_stack_1
  loc_722EAF: FFreeAd var_94 = ""
  loc_722EB8: Branch loc_723169
  loc_722EBF: LitStr vbNullString
  loc_722EC2: FLdRfVar var_98
  loc_722EC5: FLdUI1
  loc_722EC9: CI2UI1
  loc_722ECB: LitI2_Byte 1
  loc_722ECD: SubI2
  loc_722ECE: FLdPrThis
  loc_722ECF: VCallAd Control_ID_ProductoGrid
  loc_722ED2: FStAdFunc var_94
  loc_722ED5: FLdPr var_94
  loc_722ED8: Set from_stack_2 = Me(from_stack_1)
  loc_722EDD: FLdPr var_98
  loc_722EE0: Me.Tag = from_stack_1
  loc_722EE5: FFreeAd var_94 = ""
  loc_722EEE: LitStr vbNullString
  loc_722EF1: FLdRfVar var_98
  loc_722EF4: FLdUI1
  loc_722EF8: CI2UI1
  loc_722EFA: LitI2_Byte 1
  loc_722EFC: SubI2
  loc_722EFD: FLdPrThis
  loc_722EFE: VCallAd Control_ID_ProductoGrid
  loc_722F01: FStAdFunc var_94
  loc_722F04: FLdPr var_94
  loc_722F07: Set from_stack_2 = Me(from_stack_1)
  loc_722F0C: FLdPr var_98
  loc_722F0F: Me.Caption = from_stack_1
  loc_722F14: FFreeAd var_94 = ""
  loc_722F1D: LitStr vbNullString
  loc_722F20: FLdRfVar var_98
  loc_722F23: FLdUI1
  loc_722F27: CI2UI1
  loc_722F29: LitI2_Byte 1
  loc_722F2B: SubI2
  loc_722F2C: FLdPrThis
  loc_722F2D: VCallAd Control_ID_PPUGrid
  loc_722F30: FStAdFunc var_94
  loc_722F33: FLdPr var_94
  loc_722F36: Set from_stack_2 = Me(from_stack_1)
  loc_722F3B: FLdPr var_98
  loc_722F3E: Me.Caption = from_stack_1
  loc_722F43: FFreeAd var_94 = ""
  loc_722F4C: LitStr vbNullString
  loc_722F4F: FLdRfVar var_98
  loc_722F52: FLdUI1
  loc_722F56: CI2UI1
  loc_722F58: LitI2_Byte 1
  loc_722F5A: SubI2
  loc_722F5B: FLdPrThis
  loc_722F5C: VCallAd Control_ID_VolumenGrid
  loc_722F5F: FStAdFunc var_94
  loc_722F62: FLdPr var_94
  loc_722F65: Set from_stack_2 = Me(from_stack_1)
  loc_722F6A: FLdPr var_98
  loc_722F6D: Me.Caption = from_stack_1
  loc_722F72: FFreeAd var_94 = ""
  loc_722F7B: LitStr vbNullString
  loc_722F7E: FLdRfVar var_98
  loc_722F81: FLdUI1
  loc_722F85: CI2UI1
  loc_722F87: LitI2_Byte 1
  loc_722F89: SubI2
  loc_722F8A: FLdPrThis
  loc_722F8B: VCallAd Control_ID_ImporteGrid
  loc_722F8E: FStAdFunc var_94
  loc_722F91: FLdPr var_94
  loc_722F94: Set from_stack_2 = Me(from_stack_1)
  loc_722F99: FLdPr var_98
  loc_722F9C: Me.Caption = from_stack_1
  loc_722FA1: FFreeAd var_94 = ""
  loc_722FAA: LitI4 -2147483633
  loc_722FAF: FLdRfVar var_98
  loc_722FB2: FLdUI1
  loc_722FB6: CI2UI1
  loc_722FB8: LitI2_Byte 1
  loc_722FBA: SubI2
  loc_722FBB: FLdPrThis
  loc_722FBC: VCallAd Control_ID_ProductoGrid
  loc_722FBF: FStAdFunc var_94
  loc_722FC2: FLdPr var_94
  loc_722FC5: Set from_stack_2 = Me(from_stack_1)
  loc_722FCA: FLdPr var_98
  loc_722FCD: Me.BackColor = from_stack_1
  loc_722FD2: FFreeAd var_94 = ""
  loc_722FDB: LitI4 -2147483633
  loc_722FE0: FLdRfVar var_98
  loc_722FE3: FLdUI1
  loc_722FE7: CI2UI1
  loc_722FE9: LitI2_Byte 1
  loc_722FEB: SubI2
  loc_722FEC: FLdPrThis
  loc_722FED: VCallAd Control_ID_PPUGrid
  loc_722FF0: FStAdFunc var_94
  loc_722FF3: FLdPr var_94
  loc_722FF6: Set from_stack_2 = Me(from_stack_1)
  loc_722FFB: FLdPr var_98
  loc_722FFE: Me.BackColor = from_stack_1
  loc_723003: FFreeAd var_94 = ""
  loc_72300C: LitI4 -2147483633
  loc_723011: FLdRfVar var_98
  loc_723014: FLdUI1
  loc_723018: CI2UI1
  loc_72301A: LitI2_Byte 1
  loc_72301C: SubI2
  loc_72301D: FLdPrThis
  loc_72301E: VCallAd Control_ID_VolumenGrid
  loc_723021: FStAdFunc var_94
  loc_723024: FLdPr var_94
  loc_723027: Set from_stack_2 = Me(from_stack_1)
  loc_72302C: FLdPr var_98
  loc_72302F: Me.BackColor = from_stack_1
  loc_723034: FFreeAd var_94 = ""
  loc_72303D: LitI4 -2147483633
  loc_723042: FLdRfVar var_98
  loc_723045: FLdUI1
  loc_723049: CI2UI1
  loc_72304B: LitI2_Byte 1
  loc_72304D: SubI2
  loc_72304E: FLdPrThis
  loc_72304F: VCallAd Control_ID_ImporteGrid
  loc_723052: FStAdFunc var_94
  loc_723055: FLdPr var_94
  loc_723058: Set from_stack_2 = Me(from_stack_1)
  loc_72305D: FLdPr var_98
  loc_723060: Me.BackColor = from_stack_1
  loc_723065: FFreeAd var_94 = ""
  loc_72306E: LitI4 -2147483633
  loc_723073: FLdRfVar var_98
  loc_723076: FLdUI1
  loc_72307A: CI2UI1
  loc_72307C: LitI2_Byte 1
  loc_72307E: SubI2
  loc_72307F: FLdPrThis
  loc_723080: VCallAd Control_ID_NumeroGrid
  loc_723083: FStAdFunc var_94
  loc_723086: FLdPr var_94
  loc_723089: Set from_stack_2 = Me(from_stack_1)
  loc_72308E: FLdPr var_98
  loc_723091: Me.BackColor = from_stack_1
  loc_723096: FFreeAd var_94 = ""
  loc_72309F: LitI4 -2147483633
  loc_7230A4: FLdRfVar var_98
  loc_7230A7: FLdUI1
  loc_7230AB: CI2UI1
  loc_7230AD: LitI2_Byte 1
  loc_7230AF: SubI2
  loc_7230B0: FLdPrThis
  loc_7230B1: VCallAd Control_ID_NumeroGrid
  loc_7230B4: FStAdFunc var_94
  loc_7230B7: FLdPr var_94
  loc_7230BA: Set from_stack_2 = Me(from_stack_1)
  loc_7230BF: FLdPr var_98
  loc_7230C2: Me.ForeColor = from_stack_1
  loc_7230C7: FFreeAd var_94 = ""
  loc_7230D0: LitNothing
  loc_7230D2: CastAd
  loc_7230D5: FStAdFuncNoPop
  loc_7230D8: FLdRfVar var_98
  loc_7230DB: FLdUI1
  loc_7230DF: CI2UI1
  loc_7230E1: LitI2_Byte 1
  loc_7230E3: SubI2
  loc_7230E4: FLdPrThis
  loc_7230E5: VCallAd Control_ID_ImagenGrid
  loc_7230E8: FStAdFunc var_94
  loc_7230EB: FLdPr var_94
  loc_7230EE: Set from_stack_2 = Me(from_stack_1)
  loc_7230F3: FLdPr var_98
  loc_7230F6: Me.Picture = from_stack_1
  loc_7230FB: FFreeAd var_94 = "": var_F8 = ""
  loc_723106: LitI2_Byte 0
  loc_723108: CStrUI1
  loc_72310A: FStStrNoPop var_9C
  loc_72310D: FLdRfVar var_98
  loc_723110: FLdUI1
  loc_723114: CI2UI1
  loc_723116: LitI2_Byte 1
  loc_723118: SubI2
  loc_723119: FLdPrThis
  loc_72311A: VCallAd Control_ID_NumeroGrid
  loc_72311D: FStAdFunc var_94
  loc_723120: FLdPr var_94
  loc_723123: Set from_stack_2 = Me(from_stack_1)
  loc_723128: FLdPr var_98
  loc_72312B: Me.Tag = from_stack_1
  loc_723130: FFree1Str var_9C
  loc_723133: FFreeAd var_94 = ""
  loc_72313C: LitStr vbNullString
  loc_72313F: FLdRfVar var_98
  loc_723142: FLdUI1
  loc_723146: CI2UI1
  loc_723148: LitI2_Byte 1
  loc_72314A: SubI2
  loc_72314B: FLdPrThis
  loc_72314C: VCallAd Control_ID_ProductoGrid
  loc_72314F: FStAdFunc var_94
  loc_723152: FLdPr var_94
  loc_723155: Set from_stack_2 = Me(from_stack_1)
  loc_72315A: FLdPr var_98
  loc_72315D: Me.ToolTipText = from_stack_1
  loc_723162: FFreeAd var_94 = ""
  loc_72316D: FLdRfVar var_86
  loc_723170: NextUI1
  loc_723178: ExitProcHresult
End Function

Private Function Proc_161_142_5FA3C4(arg_C) '5FA3C4
  'Data Table: 45B254
  loc_5FA2FC: FLdRfVar var_92
  loc_5FA2FF: FLdRfVar var_88
  loc_5FA302: FLdRfVar var_90
  loc_5FA305: ImpAdLdRf MemVar_74C760
  loc_5FA308: NewIfNullPr Formx
  loc_5FA30B: from_stack_1v = Formx.global_4589716Get()
  loc_5FA310: FLdPr var_90
  loc_5FA313: Formx.PrintForm
  loc_5FA318: FLdI2 var_92
  loc_5FA31B: NotI4
  loc_5FA31C: FFree1Ad var_90
  loc_5FA31F: BranchF loc_5FA33E
  loc_5FA322: FLdRfVar var_A4
  loc_5FA325: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5FA32A: FLdRfVar var_A4
  loc_5FA32D: CBoolVarNull
  loc_5FA32F: FFree1Var var_A4 = ""
  loc_5FA332: BranchF loc_5FA33B
  loc_5FA335: ExitProcCbHresult
  loc_5FA33B: Branch loc_5FA2FC
  loc_5FA33E: FLdRfVar var_92
  loc_5FA341: FLdRfVar var_8A
  loc_5FA344: ILdUI1 arg_C
  loc_5FA348: CI2UI1
  loc_5FA34A: FLdRfVar var_90
  loc_5FA34D: ImpAdLdRf MemVar_74C760
  loc_5FA350: NewIfNullPr Formx
  loc_5FA353: from_stack_1v = Formx.global_4589716Get()
  loc_5FA358: FLdPr var_90
  loc_5FA35B: Call 0.Method_arg_378 ()
  loc_5FA360: FLdI2 var_92
  loc_5FA363: NotI4
  loc_5FA364: FFree1Ad var_90
  loc_5FA367: BranchF loc_5FA386
  loc_5FA36A: FLdRfVar var_A4
  loc_5FA36D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5FA372: FLdRfVar var_A4
  loc_5FA375: CBoolVarNull
  loc_5FA377: FFree1Var var_A4 = ""
  loc_5FA37A: BranchF loc_5FA383
  loc_5FA37D: ExitProcCbHresult
  loc_5FA383: Branch loc_5FA33E
  loc_5FA386: FLdI2 var_88
  loc_5FA389: FLdI2 var_8A
  loc_5FA38C: EqI2
  loc_5FA38D: BranchF loc_5FA3A7
  loc_5FA390: LitI2_Byte &HFF
  loc_5FA392: FLdPrThis
  loc_5FA393: VCallAd Control_ID_mnuTotalesCTF
  loc_5FA396: FStAdFunc var_90
  loc_5FA399: FLdPr var_90
  loc_5FA39C: Formx.Label.Visible = from_stack_1b
  loc_5FA3A1: FFree1Ad var_90
  loc_5FA3A4: Branch loc_5FA3BB
  loc_5FA3A7: LitI2_Byte 0
  loc_5FA3A9: FLdPrThis
  loc_5FA3AA: VCallAd Control_ID_lbNotPayedSales
  loc_5FA3AD: FStAdFunc var_90
  loc_5FA3B0: FLdPr var_90
  loc_5FA3B3: Me.Visible = from_stack_1b
  loc_5FA3B8: FFree1Ad var_90
  loc_5FA3BB: ExitProcCbHresult
End Function

Private Function Proc_161_143_5E3AB4(arg_C) '5E3AB4
  'Data Table: 45B254
  loc_5E3A58: On Error Resume Next
  loc_5E3A5D: LitNothing
  loc_5E3A5F: CastAd
  loc_5E3A62: FStAdFuncNoPop
  loc_5E3A65: FLdPrThis
  loc_5E3A66: VCallAd Control_ID_Image2
  loc_5E3A69: FStAdFunc var_8C
  loc_5E3A6C: FLdPr var_8C
  loc_5E3A6F: Me.Picture = from_stack_1
  loc_5E3A74: FFreeAd var_88 = ""
  loc_5E3A7D: FLdRfVar var_88
  loc_5E3A80: ILdI4 arg_C
  loc_5E3A83: CVarStr var_9C
  loc_5E3A86: PopAdLdVar
  loc_5E3A87: ImpAdLdRf MemVar_7520D4
  loc_5E3A8A: NewIfNullPr Global
  loc_5E3A8D: Global.LoadPictureOld from_stack_1
  loc_5E3A92: FLdZeroAd var_88
  loc_5E3A95: FStAdFuncNoPop
  loc_5E3A98: FLdPrThis
  loc_5E3A99: VCallAd Control_ID_Image2
  loc_5E3A9C: FStAdFunc var_A0
  loc_5E3A9F: FLdPr var_A0
  loc_5E3AA2: Me.Picture = from_stack_1
  loc_5E3AA7: FFreeAd var_8C = ""
  loc_5E3AB0: ExitProcHresult
  loc_5E3AB3: ExitProcHresult
End Function

Private Function Proc_161_144_6CC668(arg_C, arg_10) '6CC668
  'Data Table: 45B254
  loc_6CBD68: FLdPr Me
  loc_6CBD6B: MemLdUI1 Surtidor_Actual
  loc_6CBD6F: CI4UI1
  loc_6CBD70: ImpAdLdRf MemVar_74A188
  loc_6CBD73: Ary1LdI2
  loc_6CBD74: NotI4
  loc_6CBD75: CVarBoolI2 var_10C
  loc_6CBD79: LitVarI2 var_BC, 3
  loc_6CBD7E: LitI4 1
  loc_6CBD83: ImpAdLdRf MemVar_74BF90
  loc_6CBD86: CVarRef
  loc_6CBD8B: FLdRfVar var_CC
  loc_6CBD8E: ImpAdCallFPR4  = Mid(, , )
  loc_6CBD93: FLdRfVar var_CC
  loc_6CBD96: LitVarStr var_DC, "\\."
  loc_6CBD9B: HardType
  loc_6CBD9C: EqVar var_EC
  loc_6CBDA0: NotVar var_FC
  loc_6CBDA4: AndVar var_11C
  loc_6CBDA8: CBoolVarNull
  loc_6CBDAA: FFreeVar var_BC = "": var_CC = ""
  loc_6CBDB3: BranchF loc_6CBDBC
  loc_6CBDB6: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6CBDBB: ExitProcHresult
  loc_6CBDBC: FLdRfVar var_128
  loc_6CBDBF: FLdRfVar var_124
  loc_6CBDC2: ILdUI1 arg_C
  loc_6CBDC6: CI2UI1
  loc_6CBDC8: LitI2_Byte 1
  loc_6CBDCA: SubI2
  loc_6CBDCB: FLdPrThis
  loc_6CBDCC: VCallAd Control_ID_ProductoGrid
  loc_6CBDCF: FStAdFunc var_120
  loc_6CBDD2: FLdPr var_120
  loc_6CBDD5: Set from_stack_2 = Me(from_stack_1)
  loc_6CBDDA: FLdPr var_124
  loc_6CBDDD:  = Me.Tag
  loc_6CBDE2: ILdRf var_128
  loc_6CBDE5: LitStr vbNullString
  loc_6CBDE8: NeStr
  loc_6CBDEA: FFree1Str var_128
  loc_6CBDED: FFreeAd var_120 = ""
  loc_6CBDF4: BranchF loc_6CBE31
  loc_6CBDF7: FLdRfVar var_128
  loc_6CBDFA: FLdRfVar var_124
  loc_6CBDFD: ILdUI1 arg_C
  loc_6CBE01: CI2UI1
  loc_6CBE03: LitI2_Byte 1
  loc_6CBE05: SubI2
  loc_6CBE06: FLdPrThis
  loc_6CBE07: VCallAd Control_ID_ProductoGrid
  loc_6CBE0A: FStAdFunc var_120
  loc_6CBE0D: FLdPr var_120
  loc_6CBE10: Set from_stack_2 = Me(from_stack_1)
  loc_6CBE15: FLdPr var_124
  loc_6CBE18:  = Me.Tag
  loc_6CBE1D: ILdRf var_128
  loc_6CBE20: CI4Str
  loc_6CBE21: FStR4 var_88
  loc_6CBE24: FFree1Str var_128
  loc_6CBE27: FFreeAd var_120 = ""
  loc_6CBE2E: Branch loc_6CBE39
  loc_6CBE31: LitI4 0
  loc_6CBE36: FStR4 var_88
  loc_6CBE39: ILdRf var_88
  loc_6CBE3C: LitI4 0
  loc_6CBE41: EqI4
  loc_6CBE42: BranchF loc_6CBE46
  loc_6CBE45: ExitProcHresult
  loc_6CBE46: FLdPr Me
  loc_6CBE49: MemLdUI1 Surtidor_Actual
  loc_6CBE4D: CI4UI1
  loc_6CBE4E: ILdUI1 arg_C
  loc_6CBE52: CI4UI1
  loc_6CBE53: ImpAdLdRf MemVar_74BFE4
  loc_6CBE56: AryLdPr
  loc_6CBE59: MemLdUI1 global_37
  loc_6CBE5D: CI2UI1
  loc_6CBE5F: LitI2_Byte 0
  loc_6CBE61: NeI2
  loc_6CBE62: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_6CBE67: AndI4
  loc_6CBE68: ImpAdCallI2 Proc_142_4_5D8194()
  loc_6CBE6D: AndI4
  loc_6CBE6E: BranchF loc_6CBE99
  loc_6CBE71: LitVar_Missing var_EC
  loc_6CBE74: LitVar_Missing var_CC
  loc_6CBE77: LitVar_Missing var_BC
  loc_6CBE7A: LitI4 &H10
  loc_6CBE7F: FLdPr Me
  loc_6CBE82: MemLdRfVar from_stack_1.global_408
  loc_6CBE85: CVarRef
  loc_6CBE8A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CBE8F: FFreeVar var_BC = "": var_CC = ""
  loc_6CBE98: ExitProcHresult
  loc_6CBE99: FLdRfVar var_128
  loc_6CBE9C: ImpAdLdRf MemVar_74C760
  loc_6CBE9F: NewIfNullPr Formx
  loc_6CBEA2: from_stack_1v = Formx.sFlotasEXEGet()
  loc_6CBEA7: ILdRf var_128
  loc_6CBEAA: LitStr vbNullString
  loc_6CBEAD: NeStr
  loc_6CBEAF: FLdPr Me
  loc_6CBEB2: MemLdUI1 Surtidor_Actual
  loc_6CBEB6: CI4UI1
  loc_6CBEB7: ILdUI1 arg_C
  loc_6CBEBB: CI4UI1
  loc_6CBEBC: ImpAdLdRf MemVar_74BFE4
  loc_6CBEBF: AryLdPr
  loc_6CBEC2: MemLdUI1 global_37
  loc_6CBEC6: CI2UI1
  loc_6CBEC8: FLdRfVar var_12A
  loc_6CBECB: ImpAdLdRf MemVar_74C760
  loc_6CBECE: NewIfNullPr Formx
  loc_6CBED1: from_stack_1v = Formx.nMedioPagoFlotaGet()
  loc_6CBED6: FLdI2 var_12A
  loc_6CBED9: EqI2
  loc_6CBEDA: FLdPr Me
  loc_6CBEDD: MemLdUI1 Surtidor_Actual
  loc_6CBEE1: CI4UI1
  loc_6CBEE2: ILdUI1 arg_C
  loc_6CBEE6: CI4UI1
  loc_6CBEE7: ImpAdLdRf MemVar_74BFE4
  loc_6CBEEA: AryLdPr
  loc_6CBEED: MemLdUI1 global_37
  loc_6CBEF1: CI2UI1
  loc_6CBEF3: FLdRfVar var_12C
  loc_6CBEF6: ImpAdLdRf MemVar_74C760
  loc_6CBEF9: NewIfNullPr Formx
  loc_6CBEFC: from_stack_1v = Formx.nMedioPagoFlotaGet()
  loc_6CBF01: FLdI2 var_12C
  loc_6CBF04: LitI2_Byte &H20
  loc_6CBF06: AddI2
  loc_6CBF07: EqI2
  loc_6CBF08: OrI4
  loc_6CBF09: AndI4
  loc_6CBF0A: FFree1Str var_128
  loc_6CBF0D: BranchF loc_6CBF38
  loc_6CBF10: LitVar_Missing var_EC
  loc_6CBF13: LitVar_Missing var_CC
  loc_6CBF16: LitVar_Missing var_BC
  loc_6CBF19: LitI4 &H10
  loc_6CBF1E: FLdPr Me
  loc_6CBF21: MemLdRfVar from_stack_1.global_456
  loc_6CBF24: CVarRef
  loc_6CBF29: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CBF2E: FFreeVar var_BC = "": var_CC = ""
  loc_6CBF37: ExitProcHresult
  loc_6CBF38: ILdI2 arg_10
  loc_6CBF3B: ImpAdLdRf MemVar_74E128
  loc_6CBF3E: NewIfNullPr FormadePago
  loc_6CBF41: Call FormadePago.TicketDirectoPut(from_stack_1v)
  loc_6CBF46: FLdPr Me
  loc_6CBF49: MemLdUI1 Surtidor_Actual
  loc_6CBF4D: CI4UI1
  loc_6CBF4E: ILdUI1 arg_C
  loc_6CBF52: CI4UI1
  loc_6CBF53: ImpAdLdRf MemVar_74BFE4
  loc_6CBF56: AryLdPr
  loc_6CBF59: MemLdUI1 global_37
  loc_6CBF5D: FStUI1 var_12E
  loc_6CBF61: FLdUI1
  loc_6CBF65: LitI2_Byte 0
  loc_6CBF67: CUI1I2
  loc_6CBF69: EqI2
  loc_6CBF6A: BranchF loc_6CC2D4
  loc_6CBF6D: FLdPr Me
  loc_6CBF70: MemLdStr global_412
  loc_6CBF73: LitStr "  "
  loc_6CBF76: ConcatStr
  loc_6CBF77: CVarStr var_EC
  loc_6CBF7A: LitI4 1
  loc_6CBF7F: LitI4 1
  loc_6CBF84: LitVarStr var_AC, "##"
  loc_6CBF89: FStVarCopyObj var_BC
  loc_6CBF8C: FLdRfVar var_BC
  loc_6CBF8F: FLdPr Me
  loc_6CBF92: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6CBF95: CVarRef
  loc_6CBF9A: FLdRfVar var_CC
  loc_6CBF9D: ImpAdCallFPR4  = Format(, )
  loc_6CBFA2: FLdRfVar var_CC
  loc_6CBFA5: ConcatVar var_FC
  loc_6CBFA9: LitVarStr var_DC, " "
  loc_6CBFAE: ConcatVar var_11C
  loc_6CBFB2: FLdPr Me
  loc_6CBFB5: MemLdUI1 Surtidor_Actual
  loc_6CBFB9: CI4UI1
  loc_6CBFBA: ILdUI1 arg_C
  loc_6CBFBE: CI4UI1
  loc_6CBFBF: ImpAdLdRf MemVar_74BFE4
  loc_6CBFC2: AryLdPr
  loc_6CBFC5: MemLdRfVar from_stack_1.global_29
  loc_6CBFC8: LdFixedStr
  loc_6CBFCB: CVarStr var_140
  loc_6CBFCE: ConcatVar var_150
  loc_6CBFD2: CStrVarVal var_128
  loc_6CBFD6: ImpAdLdRf MemVar_74E128
  loc_6CBFD9: NewIfNullPr FormadePago
  loc_6CBFDC: VCallAd Control_ID_Surtidor
  loc_6CBFDF: FStAdFunc var_120
  loc_6CBFE2: FLdPr var_120
  loc_6CBFE5: FormadePago.Label.Caption = from_stack_1
  loc_6CBFEA: FFree1Str var_128
  loc_6CBFED: FFree1Ad var_120
  loc_6CBFF0: FFreeVar var_BC = "": var_EC = "": var_CC = "": var_FC = "": var_11C = "": var_140 = ""
  loc_6CC001: LitI4 1
  loc_6CC006: LitI4 1
  loc_6CC00B: ImpAdLdRf MemVar_74C364
  loc_6CC00E: CVarRef
  loc_6CC013: FLdPr Me
  loc_6CC016: MemLdUI1 Surtidor_Actual
  loc_6CC01A: CI4UI1
  loc_6CC01B: ILdUI1 arg_C
  loc_6CC01F: CI4UI1
  loc_6CC020: ImpAdLdRf MemVar_74BFE4
  loc_6CC023: AryLdPr
  loc_6CC026: MemLdR8 global_4
  loc_6CC029: CR8Cy
  loc_6CC02A: ImpAdLdFPR4 MemVar_74C2E0
  loc_6CC02D: DivR8
  loc_6CC02E: CVarR8
  loc_6CC032: FLdRfVar var_CC
  loc_6CC035: ImpAdCallFPR4  = Format(, )
  loc_6CC03A: FLdRfVar var_CC
  loc_6CC03D: LitVarStr var_DC, "  "
  loc_6CC042: ConcatVar var_EC
  loc_6CC046: ImpAdLdI4 MemVar_74BECC
  loc_6CC049: CVarStr var_10C
  loc_6CC04C: ConcatVar var_FC
  loc_6CC050: LitVarStr var_160, " "
  loc_6CC055: ConcatVar var_11C
  loc_6CC059: FLdRfVar var_288
  loc_6CC05C: LitVar_Missing var_284
  loc_6CC05F: LitVar_Missing var_264
  loc_6CC062: LitVar_Missing var_244
  loc_6CC065: LitVar_Missing var_224
  loc_6CC068: LitVar_Missing var_204
  loc_6CC06B: LitVar_Missing var_1E4
  loc_6CC06E: LitVar_Missing var_1C4
  loc_6CC071: LitVar_Missing var_1A4
  loc_6CC074: LitVar_Missing var_150
  loc_6CC077: LitVar_Missing var_140
  loc_6CC07A: LitStr "y"
  loc_6CC07D: FStStrCopy var_128
  loc_6CC080: FLdRfVar var_128
  loc_6CC083: LitI4 &H12E
  loc_6CC088: PopTmpLdAdStr var_164
  loc_6CC08B: LitI2_Byte 1
  loc_6CC08D: PopTmpLdAd2 var_12A
  loc_6CC090: ImpAdLdRf MemVar_74C7D0
  loc_6CC093: NewIfNullPr clsMsg
  loc_6CC096: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CC09B: FLdZeroAd var_288
  loc_6CC09E: CVarStr var_298
  loc_6CC0A1: ConcatVar var_2A8
  loc_6CC0A5: LitVarStr var_2B8, " "
  loc_6CC0AA: ConcatVar var_2C8
  loc_6CC0AE: LitI4 1
  loc_6CC0B3: LitI4 1
  loc_6CC0B8: ImpAdLdRf MemVar_74C364
  loc_6CC0BB: CVarRef
  loc_6CC0C0: FLdPr Me
  loc_6CC0C3: MemLdUI1 Surtidor_Actual
  loc_6CC0C7: CI4UI1
  loc_6CC0C8: ILdUI1 arg_C
  loc_6CC0CC: CI4UI1
  loc_6CC0CD: ImpAdLdRf MemVar_74BFE4
  loc_6CC0D0: AryLdPr
  loc_6CC0D3: MemLdR8 global_12
  loc_6CC0D6: CR8Cy
  loc_6CC0D7: LitI2_Byte &H64
  loc_6CC0D9: CR8I2
  loc_6CC0DA: DivR8
  loc_6CC0DB: CVarR8
  loc_6CC0DF: FLdRfVar var_308
  loc_6CC0E2: ImpAdCallFPR4  = Format(, )
  loc_6CC0E7: FLdRfVar var_308
  loc_6CC0EA: ConcatVar var_318
  loc_6CC0EE: LitVarStr var_328, " "
  loc_6CC0F3: ConcatVar var_338
  loc_6CC0F7: ImpAdLdI4 MemVar_74BEBC
  loc_6CC0FA: CVarStr var_348
  loc_6CC0FD: ConcatVar var_358
  loc_6CC101: CStrVarVal var_35C
  loc_6CC105: ImpAdLdRf MemVar_74E128
  loc_6CC108: NewIfNullPr FormadePago
  loc_6CC10B: VCallAd Control_ID_Label1
  loc_6CC10E: FStAdFunc var_120
  loc_6CC111: FLdPr var_120
  loc_6CC114: FormadePago.Label.Caption = from_stack_1
  loc_6CC119: FFreeStr var_128 = ""
  loc_6CC120: FFree1Ad var_120
  loc_6CC123: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_140 = "": var_150 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_11C = "": var_298 = "": var_2A8 = "": var_2E8 = "": var_2C8 = "": var_308 = "": var_318 = "": var_338 = ""
  loc_6CC154: ILdUI1 arg_C
  loc_6CC158: ImpAdLdRf MemVar_74D98C
  loc_6CC15B: NewIfNullPr EmisionFacturas
  loc_6CC15E: Call EmisionFacturas.SeleccionGrillaPut(from_stack_1v)
  loc_6CC163: ILdRf var_88
  loc_6CC166: CStrI4
  loc_6CC168: FStStrNoPop var_128
  loc_6CC16B: ImpAdLdRf MemVar_74E128
  loc_6CC16E: NewIfNullPr FormadePago
  loc_6CC171: Call FormadePago.NumeroVentaPut(from_stack_1v)
  loc_6CC176: FFree1Str var_128
  loc_6CC179: FLdPr Me
  loc_6CC17C: MemLdUI1 Surtidor_Actual
  loc_6CC180: CStrI2
  loc_6CC182: FStStrNoPop var_128
  loc_6CC185: ImpAdLdRf MemVar_74E128
  loc_6CC188: NewIfNullPr FormadePago
  loc_6CC18B: Call FormadePago.SurtPut(from_stack_1v)
  loc_6CC190: FFree1Str var_128
  loc_6CC193: LitI2_Byte 0
  loc_6CC195: ImpAdLdRf MemVar_74E128
  loc_6CC198: NewIfNullPr FormadePago
  loc_6CC19B: Call FormadePago.bVentaPagadaPut(from_stack_1v)
  loc_6CC1A0: LitVar_Missing var_AC
  loc_6CC1A3: PopAdLdVar
  loc_6CC1A4: LitVarI2 var_9C, 1
  loc_6CC1A9: PopAdLdVar
  loc_6CC1AA: ImpAdLdRf MemVar_74E128
  loc_6CC1AD: NewIfNullPr FormadePago
  loc_6CC1B0: FormadePago.Show from_stack_1, from_stack_2
  loc_6CC1B5: ImpAdLdI2 MemVar_74C37E
  loc_6CC1B8: NotI4
  loc_6CC1B9: BranchF loc_6CC2C1
  loc_6CC1BC: FLdRfVar var_88
  loc_6CC1BF: CVarRef
  loc_6CC1C4: FLdRfVar var_BC
  loc_6CC1C7: ImpAdCallFPR4  = Str()
  loc_6CC1CC: LitI2_Byte 4
  loc_6CC1CE: CUI1I2
  loc_6CC1D0: PopTmpLdAd1
  loc_6CC1D4: LitVarStr var_AC, "Paying Sale "
  loc_6CC1D9: FLdRfVar var_BC
  loc_6CC1DC: ConcatVar var_CC
  loc_6CC1E0: CStrVarTmp
  loc_6CC1E1: PopTmpLdAdStr
  loc_6CC1E5: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_6CC1EA: FFree1Str var_128
  loc_6CC1ED: FFreeVar var_BC = ""
  loc_6CC1F4: FLdRfVar var_12C
  loc_6CC1F7: FLdRfVar var_8A
  loc_6CC1FA: LitI2_Byte 0
  loc_6CC1FC: PopTmpLdAd2 var_12A
  loc_6CC1FF: ImpAdLdRf MemVar_74C381
  loc_6CC202: ImpAdLdRf MemVar_74C380
  loc_6CC205: FLdRfVar var_88
  loc_6CC208: FLdRfVar var_120
  loc_6CC20B: ImpAdLdRf MemVar_74C760
  loc_6CC20E: NewIfNullPr Formx
  loc_6CC211: from_stack_1v = Formx.global_4589716Get()
  loc_6CC216: FLdPr var_120
  loc_6CC219:  = Formx.ForeColor
  loc_6CC21E: FLdI2 var_12C
  loc_6CC221: NotI4
  loc_6CC222: FFree1Ad var_120
  loc_6CC225: BranchF loc_6CC254
  loc_6CC228: FLdRfVar var_BC
  loc_6CC22B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6CC230: FLdRfVar var_BC
  loc_6CC233: CBoolVarNull
  loc_6CC235: FFree1Var var_BC = ""
  loc_6CC238: BranchF loc_6CC251
  loc_6CC23B: ILdRf Me
  loc_6CC23E: FStAdNoPop
  loc_6CC242: ImpAdLdRf MemVar_7520D4
  loc_6CC245: NewIfNullPr Global
  loc_6CC248: Global.Unload from_stack_1
  loc_6CC24D: FFree1Ad var_120
  loc_6CC250: ExitProcHresult
  loc_6CC251: Branch loc_6CC1F4
  loc_6CC254: FLdUI1
  loc_6CC258: CI2UI1
  loc_6CC25A: LitI2_Byte 0
  loc_6CC25C: EqI2
  loc_6CC25D: BranchF loc_6CC2C1
  loc_6CC260: FLdRfVar var_88
  loc_6CC263: CVarRef
  loc_6CC268: FLdRfVar var_BC
  loc_6CC26B: ImpAdCallFPR4  = Str()
  loc_6CC270: LitI2_Byte 4
  loc_6CC272: CUI1I2
  loc_6CC274: PopTmpLdAd1
  loc_6CC278: LitVarStr var_AC, "Paying Sale Error "
  loc_6CC27D: FLdRfVar var_BC
  loc_6CC280: ConcatVar var_CC
  loc_6CC284: CStrVarTmp
  loc_6CC285: PopTmpLdAdStr
  loc_6CC289: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_6CC28E: FFree1Str var_128
  loc_6CC291: FFreeVar var_BC = ""
  loc_6CC298: LitVar_Missing var_FC
  loc_6CC29B: LitVar_Missing var_EC
  loc_6CC29E: LitVar_Missing var_CC
  loc_6CC2A1: LitI4 0
  loc_6CC2A6: LitVarStr var_9C, "Error pagando el despacho"
  loc_6CC2AB: FStVarCopyObj var_BC
  loc_6CC2AE: FLdRfVar var_BC
  loc_6CC2B1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CC2B6: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6CC2C1: LitI2_Byte &HFF
  loc_6CC2C3: PopTmpLdAd2 var_12A
  loc_6CC2C6: FLdPr Me
  loc_6CC2C9: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6CC2CC: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_6CC2D1: Branch loc_6CC667
  loc_6CC2D4: FLdUI1
  loc_6CC2D8: LitI2_Byte 2
  loc_6CC2DA: CUI1I2
  loc_6CC2DC: EqI2
  loc_6CC2DD: BranchF loc_6CC30D
  loc_6CC2E0: LitVar_Missing var_FC
  loc_6CC2E3: LitVar_Missing var_EC
  loc_6CC2E6: LitVar_Missing var_CC
  loc_6CC2E9: LitI4 &H40
  loc_6CC2EE: LitVarStr var_9C, "Esta venta es una prueba de surtidor con retorno. Es imposible modificarla."
  loc_6CC2F3: FStVarCopyObj var_BC
  loc_6CC2F6: FLdRfVar var_BC
  loc_6CC2F9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CC2FE: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6CC309: ExitProcHresult
  loc_6CC30A: Branch loc_6CC667
  loc_6CC30D: FLdUI1
  loc_6CC311: LitI2_Byte 3
  loc_6CC313: CUI1I2
  loc_6CC315: EqI2
  loc_6CC316: BranchF loc_6CC346
  loc_6CC319: LitVar_Missing var_FC
  loc_6CC31C: LitVar_Missing var_EC
  loc_6CC31F: LitVar_Missing var_CC
  loc_6CC322: LitI4 &H40
  loc_6CC327: LitVarStr var_9C, "Esta venta es una prueba de surtidor sin retorno. Es imposible modificarla."
  loc_6CC32C: FStVarCopyObj var_BC
  loc_6CC32F: FLdRfVar var_BC
  loc_6CC332: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CC337: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6CC342: ExitProcHresult
  loc_6CC343: Branch loc_6CC667
  loc_6CC346: LitVar_Missing var_EC
  loc_6CC349: LitVar_Missing var_CC
  loc_6CC34C: LitVar_Missing var_BC
  loc_6CC34F: LitI4 1
  loc_6CC354: FLdPr Me
  loc_6CC357: MemLdRfVar from_stack_1.global_428
  loc_6CC35A: CVarRef
  loc_6CC35F: ImpAdCallI2 MsgBox(, , , , )
  loc_6CC364: LitI4 1
  loc_6CC369: EqI4
  loc_6CC36A: FFreeVar var_BC = "": var_CC = ""
  loc_6CC373: BranchF loc_6CC667
  loc_6CC376: FLdPr Me
  loc_6CC379: MemLdStr global_412
  loc_6CC37C: LitStr "  "
  loc_6CC37F: ConcatStr
  loc_6CC380: CVarStr var_EC
  loc_6CC383: LitI4 1
  loc_6CC388: LitI4 1
  loc_6CC38D: LitVarStr var_AC, "##"
  loc_6CC392: FStVarCopyObj var_BC
  loc_6CC395: FLdRfVar var_BC
  loc_6CC398: FLdPr Me
  loc_6CC39B: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6CC39E: CVarRef
  loc_6CC3A3: FLdRfVar var_CC
  loc_6CC3A6: ImpAdCallFPR4  = Format(, )
  loc_6CC3AB: FLdRfVar var_CC
  loc_6CC3AE: ConcatVar var_FC
  loc_6CC3B2: LitVarStr var_DC, " "
  loc_6CC3B7: ConcatVar var_11C
  loc_6CC3BB: FLdPr Me
  loc_6CC3BE: MemLdUI1 Surtidor_Actual
  loc_6CC3C2: CI4UI1
  loc_6CC3C3: ILdUI1 arg_C
  loc_6CC3C7: CI4UI1
  loc_6CC3C8: ImpAdLdRf MemVar_74BFE4
  loc_6CC3CB: AryLdPr
  loc_6CC3CE: MemLdRfVar from_stack_1.global_29
  loc_6CC3D1: LdFixedStr
  loc_6CC3D4: CVarStr var_140
  loc_6CC3D7: ConcatVar var_150
  loc_6CC3DB: CStrVarVal var_128
  loc_6CC3DF: ImpAdLdRf MemVar_74E128
  loc_6CC3E2: NewIfNullPr FormadePago
  loc_6CC3E5: VCallAd Control_ID_Surtidor
  loc_6CC3E8: FStAdFunc var_120
  loc_6CC3EB: FLdPr var_120
  loc_6CC3EE: FormadePago.Label.Caption = from_stack_1
  loc_6CC3F3: FFree1Str var_128
  loc_6CC3F6: FFree1Ad var_120
  loc_6CC3F9: FFreeVar var_BC = "": var_EC = "": var_CC = "": var_FC = "": var_11C = "": var_140 = ""
  loc_6CC40A: LitI4 1
  loc_6CC40F: LitI4 1
  loc_6CC414: ImpAdLdRf MemVar_74C364
  loc_6CC417: CVarRef
  loc_6CC41C: FLdPr Me
  loc_6CC41F: MemLdUI1 Surtidor_Actual
  loc_6CC423: CI4UI1
  loc_6CC424: ILdUI1 arg_C
  loc_6CC428: CI4UI1
  loc_6CC429: ImpAdLdRf MemVar_74BFE4
  loc_6CC42C: AryLdPr
  loc_6CC42F: MemLdR8 global_4
  loc_6CC432: CR8Cy
  loc_6CC433: ImpAdLdFPR4 MemVar_74C2E0
  loc_6CC436: DivR8
  loc_6CC437: CVarR8
  loc_6CC43B: FLdRfVar var_CC
  loc_6CC43E: ImpAdCallFPR4  = Format(, )
  loc_6CC443: FLdRfVar var_CC
  loc_6CC446: LitVarStr var_DC, "  "
  loc_6CC44B: ConcatVar var_EC
  loc_6CC44F: ImpAdLdI4 MemVar_74BECC
  loc_6CC452: CVarStr var_10C
  loc_6CC455: ConcatVar var_FC
  loc_6CC459: LitVarStr var_160, " y "
  loc_6CC45E: ConcatVar var_11C
  loc_6CC462: LitI4 1
  loc_6CC467: LitI4 1
  loc_6CC46C: ImpAdLdRf MemVar_74C364
  loc_6CC46F: CVarRef
  loc_6CC474: FLdPr Me
  loc_6CC477: MemLdUI1 Surtidor_Actual
  loc_6CC47B: CI4UI1
  loc_6CC47C: ILdUI1 arg_C
  loc_6CC480: CI4UI1
  loc_6CC481: ImpAdLdRf MemVar_74BFE4
  loc_6CC484: AryLdPr
  loc_6CC487: MemLdR8 global_12
  loc_6CC48A: CR8Cy
  loc_6CC48B: LitI2_Byte &H64
  loc_6CC48D: CR8I2
  loc_6CC48E: DivR8
  loc_6CC48F: CVarR8
  loc_6CC493: FLdRfVar var_150
  loc_6CC496: ImpAdCallFPR4  = Format(, )
  loc_6CC49B: FLdRfVar var_150
  loc_6CC49E: ConcatVar var_1A4
  loc_6CC4A2: LitVarStr var_194, " "
  loc_6CC4A7: ConcatVar var_1C4
  loc_6CC4AB: ImpAdLdI4 MemVar_74BEBC
  loc_6CC4AE: CVarStr var_1B4
  loc_6CC4B1: ConcatVar var_1E4
  loc_6CC4B5: CStrVarVal var_128
  loc_6CC4B9: ImpAdLdRf MemVar_74E128
  loc_6CC4BC: NewIfNullPr FormadePago
  loc_6CC4BF: VCallAd Control_ID_Label1
  loc_6CC4C2: FStAdFunc var_120
  loc_6CC4C5: FLdPr var_120
  loc_6CC4C8: FormadePago.Label.Caption = from_stack_1
  loc_6CC4CD: FFree1Str var_128
  loc_6CC4D0: FFree1Ad var_120
  loc_6CC4D3: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_140 = "": var_11C = "": var_150 = "": var_1A4 = "": var_1C4 = ""
  loc_6CC4EA: ILdRf var_88
  loc_6CC4ED: CStrI4
  loc_6CC4EF: FStStrNoPop var_128
  loc_6CC4F2: ImpAdLdRf MemVar_74E128
  loc_6CC4F5: NewIfNullPr FormadePago
  loc_6CC4F8: Call FormadePago.NumeroVentaPut(from_stack_1v)
  loc_6CC4FD: FFree1Str var_128
  loc_6CC500: FLdPr Me
  loc_6CC503: MemLdUI1 Surtidor_Actual
  loc_6CC507: CStrI2
  loc_6CC509: FStStrNoPop var_128
  loc_6CC50C: ImpAdLdRf MemVar_74E128
  loc_6CC50F: NewIfNullPr FormadePago
  loc_6CC512: Call FormadePago.SurtPut(from_stack_1v)
  loc_6CC517: FFree1Str var_128
  loc_6CC51A: ILdUI1 arg_C
  loc_6CC51E: ImpAdLdRf MemVar_74D98C
  loc_6CC521: NewIfNullPr EmisionFacturas
  loc_6CC524: Call EmisionFacturas.SeleccionGrillaPut(from_stack_1v)
  loc_6CC529: LitI2_Byte &HFF
  loc_6CC52B: ImpAdLdRf MemVar_74E128
  loc_6CC52E: NewIfNullPr FormadePago
  loc_6CC531: Call FormadePago.bVentaPagadaPut(from_stack_1v)
  loc_6CC536: LitVar_Missing var_AC
  loc_6CC539: PopAdLdVar
  loc_6CC53A: LitVarI2 var_9C, 1
  loc_6CC53F: PopAdLdVar
  loc_6CC540: ImpAdLdRf MemVar_74E128
  loc_6CC543: NewIfNullPr FormadePago
  loc_6CC546: FormadePago.Show from_stack_1, from_stack_2
  loc_6CC54B: FLdRfVar var_88
  loc_6CC54E: CVarRef
  loc_6CC553: FLdRfVar var_BC
  loc_6CC556: ImpAdCallFPR4  = Str()
  loc_6CC55B: LitI2_Byte 4
  loc_6CC55D: CUI1I2
  loc_6CC55F: PopTmpLdAd1
  loc_6CC563: LitVarStr var_AC, "RePaying Sale "
  loc_6CC568: FLdRfVar var_BC
  loc_6CC56B: ConcatVar var_CC
  loc_6CC56F: CStrVarTmp
  loc_6CC570: PopTmpLdAdStr
  loc_6CC574: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_6CC579: FFree1Str var_128
  loc_6CC57C: FFreeVar var_BC = ""
  loc_6CC583: ImpAdLdI2 MemVar_74C37E
  loc_6CC586: NotI4
  loc_6CC587: BranchF loc_6CC657
  loc_6CC58A: FLdRfVar var_12C
  loc_6CC58D: FLdRfVar var_8A
  loc_6CC590: LitI2_Byte &HFF
  loc_6CC592: PopTmpLdAd2 var_12A
  loc_6CC595: ImpAdLdRf MemVar_74C381
  loc_6CC598: ImpAdLdRf MemVar_74C380
  loc_6CC59B: FLdRfVar var_88
  loc_6CC59E: FLdRfVar var_120
  loc_6CC5A1: ImpAdLdRf MemVar_74C760
  loc_6CC5A4: NewIfNullPr Formx
  loc_6CC5A7: from_stack_1v = Formx.global_4589716Get()
  loc_6CC5AC: FLdPr var_120
  loc_6CC5AF:  = Formx.ForeColor
  loc_6CC5B4: FLdI2 var_12C
  loc_6CC5B7: NotI4
  loc_6CC5B8: FFree1Ad var_120
  loc_6CC5BB: BranchF loc_6CC5EA
  loc_6CC5BE: FLdRfVar var_BC
  loc_6CC5C1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6CC5C6: FLdRfVar var_BC
  loc_6CC5C9: CBoolVarNull
  loc_6CC5CB: FFree1Var var_BC = ""
  loc_6CC5CE: BranchF loc_6CC5E7
  loc_6CC5D1: ILdRf Me
  loc_6CC5D4: FStAdNoPop
  loc_6CC5D8: ImpAdLdRf MemVar_7520D4
  loc_6CC5DB: NewIfNullPr Global
  loc_6CC5DE: Global.Unload from_stack_1
  loc_6CC5E3: FFree1Ad var_120
  loc_6CC5E6: ExitProcHresult
  loc_6CC5E7: Branch loc_6CC58A
  loc_6CC5EA: FLdUI1
  loc_6CC5EE: CI2UI1
  loc_6CC5F0: LitI2_Byte 0
  loc_6CC5F2: EqI2
  loc_6CC5F3: BranchF loc_6CC657
  loc_6CC5F6: FLdRfVar var_88
  loc_6CC5F9: CVarRef
  loc_6CC5FE: FLdRfVar var_BC
  loc_6CC601: ImpAdCallFPR4  = Str()
  loc_6CC606: LitI2_Byte 4
  loc_6CC608: CUI1I2
  loc_6CC60A: PopTmpLdAd1
  loc_6CC60E: LitVarStr var_AC, "RePaying Sale Error  "
  loc_6CC613: FLdRfVar var_BC
  loc_6CC616: ConcatVar var_CC
  loc_6CC61A: CStrVarTmp
  loc_6CC61B: PopTmpLdAdStr
  loc_6CC61F: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_6CC624: FFree1Str var_128
  loc_6CC627: FFreeVar var_BC = ""
  loc_6CC62E: LitVar_Missing var_FC
  loc_6CC631: LitVar_Missing var_EC
  loc_6CC634: LitVar_Missing var_CC
  loc_6CC637: LitI4 0
  loc_6CC63C: LitVarStr var_9C, "Error pagando el despacho"
  loc_6CC641: FStVarCopyObj var_BC
  loc_6CC644: FLdRfVar var_BC
  loc_6CC647: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CC64C: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6CC657: LitI2_Byte &HFF
  loc_6CC659: PopTmpLdAd2 var_12A
  loc_6CC65C: FLdPr Me
  loc_6CC65F: MemLdRfVar from_stack_1.Surtidor_Actual
  loc_6CC662: Call RefreshPumpData(from_stack_1v, from_stack_2v)
  loc_6CC667: ExitProcHresult
End Function

Private Function Proc_161_145_5F7F1C() '5F7F1C
  'Data Table: 45B254
  loc_5F7E58: LitI2_Byte 0
  loc_5F7E5A: CUI1I2
  loc_5F7E5C: FLdRfVar var_86
  loc_5F7E5F: LitI2_Byte 9
  loc_5F7E61: CUI1I2
  loc_5F7E63: ForUI1 var_8A
  loc_5F7E69: LitStr vbNullString
  loc_5F7E6C: FLdRfVar var_94
  loc_5F7E6F: FLdUI1
  loc_5F7E73: CI2UI1
  loc_5F7E75: FLdPrThis
  loc_5F7E76: VCallAd Control_ID_ProductoGrid
  loc_5F7E79: FStAdFunc var_90
  loc_5F7E7C: FLdPr var_90
  loc_5F7E7F: Set from_stack_2 = Me(from_stack_1)
  loc_5F7E84: FLdPr var_94
  loc_5F7E87: Me.Caption = from_stack_1
  loc_5F7E8C: FFreeAd var_90 = ""
  loc_5F7E93: LitStr vbNullString
  loc_5F7E96: FLdRfVar var_94
  loc_5F7E99: FLdUI1
  loc_5F7E9D: CI2UI1
  loc_5F7E9F: FLdPrThis
  loc_5F7EA0: VCallAd Control_ID_PPUGrid
  loc_5F7EA3: FStAdFunc var_90
  loc_5F7EA6: FLdPr var_90
  loc_5F7EA9: Set from_stack_2 = Me(from_stack_1)
  loc_5F7EAE: FLdPr var_94
  loc_5F7EB1: Me.Caption = from_stack_1
  loc_5F7EB6: FFreeAd var_90 = ""
  loc_5F7EBD: LitStr vbNullString
  loc_5F7EC0: FLdRfVar var_94
  loc_5F7EC3: FLdUI1
  loc_5F7EC7: CI2UI1
  loc_5F7EC9: FLdPrThis
  loc_5F7ECA: VCallAd Control_ID_VolumenGrid
  loc_5F7ECD: FStAdFunc var_90
  loc_5F7ED0: FLdPr var_90
  loc_5F7ED3: Set from_stack_2 = Me(from_stack_1)
  loc_5F7ED8: FLdPr var_94
  loc_5F7EDB: Me.Caption = from_stack_1
  loc_5F7EE0: FFreeAd var_90 = ""
  loc_5F7EE7: LitStr vbNullString
  loc_5F7EEA: FLdRfVar var_94
  loc_5F7EED: FLdUI1
  loc_5F7EF1: CI2UI1
  loc_5F7EF3: FLdPrThis
  loc_5F7EF4: VCallAd Control_ID_ImporteGrid
  loc_5F7EF7: FStAdFunc var_90
  loc_5F7EFA: FLdPr var_90
  loc_5F7EFD: Set from_stack_2 = Me(from_stack_1)
  loc_5F7F02: FLdPr var_94
  loc_5F7F05: Me.Caption = from_stack_1
  loc_5F7F0A: FFreeAd var_90 = ""
  loc_5F7F11: FLdRfVar var_86
  loc_5F7F14: NextUI1
  loc_5F7F1A: ExitProcHresult
End Function

Private Function Proc_161_146_609160(arg_C) '609160
  'Data Table: 45B254
  loc_6090A0: ILdRf arg_C
  loc_6090A3: FStStrCopy var_88
  loc_6090A6: LitI2_Byte 1
  loc_6090A8: CUI1I2
  loc_6090AA: FStUI1 var_8C
  loc_6090AE: LitI2_Byte 1
  loc_6090B0: CUI1I2
  loc_6090B2: FLdRfVar var_8A
  loc_6090B5: LitI2_Byte &H32
  loc_6090B7: CUI1I2
  loc_6090B9: ForUI1 var_B4
  loc_6090BF: FLdUI1
  loc_6090C3: FLdUI1
  loc_6090C7: EqI2
  loc_6090C8: NotI4
  loc_6090C9: BranchF loc_609100
  loc_6090CC: ILdRf var_88
  loc_6090CF: CI4Str
  loc_6090D0: FLdUI1
  loc_6090D4: CI4UI1
  loc_6090D5: ImpAdLdRf MemVar_74C388
  loc_6090D8: AryLdPr
  loc_6090DB: MemLdStr global_0
  loc_6090DE: ILdRf var_88
  loc_6090E1: CI4Str
  loc_6090E2: FLdUI1
  loc_6090E6: CI4UI1
  loc_6090E7: FLdRfVar var_B0
  loc_6090EA: AryLdPr
  loc_6090ED: MemStStrCopy
  loc_6090F1: FLdUI1
  loc_6090F5: CI2UI1
  loc_6090F7: LitI2_Byte 1
  loc_6090F9: AddI2
  loc_6090FA: CUI1I2
  loc_6090FC: FStUI1 var_8C
  loc_609100: LitStr vbNullString
  loc_609103: ILdRf var_88
  loc_609106: CI4Str
  loc_609107: FLdUI1
  loc_60910B: CI4UI1
  loc_60910C: ImpAdLdRf MemVar_74C388
  loc_60910F: AryLdPr
  loc_609112: MemStStrCopy
  loc_609116: FLdRfVar var_8A
  loc_609119: NextUI1
  loc_60911F: LitI2_Byte 1
  loc_609121: CUI1I2
  loc_609123: FLdRfVar var_8A
  loc_609126: LitI2_Byte &H32
  loc_609128: CUI1I2
  loc_60912A: ForUI1 var_B8
  loc_609130: ILdRf var_88
  loc_609133: CI4Str
  loc_609134: FLdUI1
  loc_609138: CI4UI1
  loc_609139: FLdRfVar var_B0
  loc_60913C: AryLdPr
  loc_60913F: MemLdStr global_0
  loc_609142: ILdRf var_88
  loc_609145: CI4Str
  loc_609146: FLdUI1
  loc_60914A: CI4UI1
  loc_60914B: ImpAdLdRf MemVar_74C388
  loc_60914E: AryLdPr
  loc_609151: MemStStrCopy
  loc_609155: FLdRfVar var_8A
  loc_609158: NextUI1
  loc_60915E: ExitProcHresult
End Function

Private Function Proc_161_147_5E1D50(arg_C, arg_10) '5E1D50
  'Data Table: 45B254
  loc_5E1CF4: ILdRf arg_10
  loc_5E1CF7: FStStrCopy var_88
  loc_5E1CFA: LitI2_Byte &H31
  loc_5E1CFC: FLdRfVar var_8A
  loc_5E1CFF: LitI2_Byte 1
  loc_5E1D01: LitI2_Byte &HFF
  loc_5E1D03: ForStepI2 var_94
  loc_5E1D09: FLdI2 arg_C
  loc_5E1D0C: CI4UI1
  loc_5E1D0D: FLdI2 var_8A
  loc_5E1D10: CI4UI1
  loc_5E1D11: ImpAdLdRf MemVar_74C388
  loc_5E1D14: AryLdPr
  loc_5E1D17: MemLdStr global_0
  loc_5E1D1A: FLdI2 arg_C
  loc_5E1D1D: CI4UI1
  loc_5E1D1E: FLdI2 var_8A
  loc_5E1D21: LitI2_Byte 1
  loc_5E1D23: AddI2
  loc_5E1D24: CI4UI1
  loc_5E1D25: ImpAdLdRf MemVar_74C388
  loc_5E1D28: AryLdPr
  loc_5E1D2B: MemStStrCopy
  loc_5E1D2F: FLdRfVar var_8A
  loc_5E1D32: NextStepI2 var_94, loc_5E1D09
  loc_5E1D37: ILdRf var_88
  loc_5E1D3A: FLdI2 arg_C
  loc_5E1D3D: CI4UI1
  loc_5E1D3E: LitI4 1
  loc_5E1D43: ImpAdLdRf MemVar_74C388
  loc_5E1D46: AryLdPr
  loc_5E1D49: MemStStrCopy
  loc_5E1D4D: ExitProcHresult
End Function

Private Function Proc_161_148_5E0588(arg_C) '5E0588
  'Data Table: 45B254
  loc_5E0530: FLdPrThis
  loc_5E0531: VCallAd Control_ID_lstPreset
  loc_5E0534: FStAdFunc var_8C
  loc_5E0537: FLdPr var_8C
  loc_5E053A: Me.Clear
  loc_5E053F: FFree1Ad var_8C
  loc_5E0542: LitI2_Byte 1
  loc_5E0544: FLdRfVar var_86
  loc_5E0547: LitI2_Byte &H32
  loc_5E0549: ForI2 var_90
  loc_5E054F: FLdI2 var_86
  loc_5E0552: LitI2_Byte 1
  loc_5E0554: SubI2
  loc_5E0555: CVarI2 var_A0
  loc_5E0558: PopAdLdVar
  loc_5E0559: FLdI2 arg_C
  loc_5E055C: CI4UI1
  loc_5E055D: FLdI2 var_86
  loc_5E0560: CI4UI1
  loc_5E0561: ImpAdLdRf MemVar_74C388
  loc_5E0564: AryLdPr
  loc_5E0567: MemLdStr global_0
  loc_5E056A: FLdPrThis
  loc_5E056B: VCallAd Control_ID_lstPreset
  loc_5E056E: FStAdFunc var_8C
  loc_5E0571: FLdPr var_8C
  loc_5E0574: Me.AddItem from_stack_1, from_stack_2
  loc_5E0579: FFree1Ad var_8C
  loc_5E057C: FLdRfVar var_86
  loc_5E057F: NextI2 var_90, loc_5E054F
  loc_5E0584: ExitProcHresult
End Function

Private Function Proc_161_149_5DF214() '5DF214
  'Data Table: 45B254
  loc_5DF1C8: FLdPr Me
  loc_5DF1CB: MemLdUI1 presetgrade
  loc_5DF1CF: CI2UI1
  loc_5DF1D1: LitI2_Byte 4
  loc_5DF1D3: ModI2
  loc_5DF1D4: FStI2 var_86
  loc_5DF1D7: FLdRfVar var_90
  loc_5DF1DA: FLdI2 var_86
  loc_5DF1DD: FLdPrThis
  loc_5DF1DE: VCallAd Control_ID_BotonPreset
  loc_5DF1E1: FStAdFunc var_8C
  loc_5DF1E4: FLdPr var_8C
  loc_5DF1E7: Set from_stack_2 = Me(from_stack_1)
  loc_5DF1EC: FLdPr var_90
  loc_5DF1EF: LateIdLdVar var_A0 DispID_7 -32767
  loc_5DF1F6: CBoolVar
  loc_5DF1F8: NotI4
  loc_5DF1F9: FFreeAd var_8C = ""
  loc_5DF200: FFree1Var var_A0 = ""
  loc_5DF203: BranchF loc_5DF20B
  loc_5DF206: LitI2_Byte 0
  loc_5DF208: FStI2 var_86
  loc_5DF20B: FLdRfVar var_86
  loc_5DF20E: Call BotonPreset_UnknownEvent_8()
  loc_5DF213: ExitProcHresult
End Function

Private Function Proc_161_150_61FF98(arg_C, arg_10) '61FF98
  'Data Table: 45B254
  loc_61FE60: LitI2_Byte 1
  loc_61FE62: FLdRfVar var_88
  loc_61FE65: LitI2_Byte 3
  loc_61FE67: ForI2 var_A8
  loc_61FE6D: LitI2_Byte 0
  loc_61FE6F: FLdI2 var_88
  loc_61FE72: CI4UI1
  loc_61FE73: FLdRfVar var_A4
  loc_61FE76: Ary1StI2
  loc_61FE77: FLdRfVar var_88
  loc_61FE7A: NextI2 var_A8, loc_61FE6D
  loc_61FE7F: LitI2_Byte 0
  loc_61FE81: FStI2 var_8A
  loc_61FE84: FLdPr Me
  loc_61FE87: MemLdI2 Prod2
  loc_61FE8A: BranchF loc_61FF05
  loc_61FE8D: LitI2_Byte 0
  loc_61FE8F: FLdRfVar var_88
  loc_61FE92: LitI2_Byte 2
  loc_61FE94: ForI2 var_AC
  loc_61FE9A: FLdI2 arg_C
  loc_61FE9D: CI4UI1
  loc_61FE9E: FLdI2 arg_10
  loc_61FEA1: CI4UI1
  loc_61FEA2: FLdI2 var_88
  loc_61FEA5: CI4UI1
  loc_61FEA6: ImpAdLdRf MemVar_74C174
  loc_61FEA9: AryLdPr
  loc_61FEAC: MemLdUI1 global_0
  loc_61FEB0: CI2UI1
  loc_61FEB2: LitI2_Byte 0
  loc_61FEB4: NeI2
  loc_61FEB5: BranchF loc_61FEC1
  loc_61FEB8: FLdI2 var_8A
  loc_61FEBB: LitI2_Byte 1
  loc_61FEBD: AddI2
  loc_61FEBE: FStI2 var_8A
  loc_61FEC1: FLdRfVar var_88
  loc_61FEC4: NextI2 var_AC, loc_61FE9A
  loc_61FEC9: LitI2_Byte 1
  loc_61FECB: FLdRfVar var_88
  loc_61FECE: FLdI2 var_8A
  loc_61FED1: ForI2 var_B0
  loc_61FED7: FLdI2 arg_C
  loc_61FEDA: CI4UI1
  loc_61FEDB: FLdI2 arg_10
  loc_61FEDE: CI4UI1
  loc_61FEDF: FLdI2 var_88
  loc_61FEE2: LitI2_Byte 1
  loc_61FEE4: SubI2
  loc_61FEE5: CI4UI1
  loc_61FEE6: ImpAdLdRf MemVar_74C174
  loc_61FEE9: AryLdPr
  loc_61FEEC: MemLdUI1 global_0
  loc_61FEF0: CI2UI1
  loc_61FEF2: FLdI2 var_88
  loc_61FEF5: CI4UI1
  loc_61FEF6: FLdRfVar var_A4
  loc_61FEF9: Ary1StI2
  loc_61FEFA: FLdRfVar var_88
  loc_61FEFD: NextI2 var_B0, loc_61FED7
  loc_61FF02: Branch loc_61FF7A
  loc_61FF05: LitI2_Byte 0
  loc_61FF07: FLdRfVar var_88
  loc_61FF0A: LitI2_Byte 2
  loc_61FF0C: ForI2 var_B4
  loc_61FF12: FLdI2 arg_C
  loc_61FF15: CI4UI1
  loc_61FF16: FLdI2 arg_10
  loc_61FF19: CI4UI1
  loc_61FF1A: FLdI2 var_88
  loc_61FF1D: CI4UI1
  loc_61FF1E: ImpAdLdRf MemVar_74C14C
  loc_61FF21: AryLdPr
  loc_61FF24: MemLdUI1 global_0
  loc_61FF28: CI2UI1
  loc_61FF2A: LitI2_Byte 0
  loc_61FF2C: NeI2
  loc_61FF2D: BranchF loc_61FF39
  loc_61FF30: FLdI2 var_8A
  loc_61FF33: LitI2_Byte 1
  loc_61FF35: AddI2
  loc_61FF36: FStI2 var_8A
  loc_61FF39: FLdRfVar var_88
  loc_61FF3C: NextI2 var_B4, loc_61FF12
  loc_61FF41: LitI2_Byte 1
  loc_61FF43: FLdRfVar var_88
  loc_61FF46: FLdI2 var_8A
  loc_61FF49: ForI2 var_B8
  loc_61FF4F: FLdI2 arg_C
  loc_61FF52: CI4UI1
  loc_61FF53: FLdI2 arg_10
  loc_61FF56: CI4UI1
  loc_61FF57: FLdI2 var_88
  loc_61FF5A: LitI2_Byte 1
  loc_61FF5C: SubI2
  loc_61FF5D: CI4UI1
  loc_61FF5E: ImpAdLdRf MemVar_74C14C
  loc_61FF61: AryLdPr
  loc_61FF64: MemLdUI1 global_0
  loc_61FF68: CI2UI1
  loc_61FF6A: FLdI2 var_88
  loc_61FF6D: CI4UI1
  loc_61FF6E: FLdRfVar var_A4
  loc_61FF71: Ary1StI2
  loc_61FF72: FLdRfVar var_88
  loc_61FF75: NextI2 var_B8, loc_61FF4F
  loc_61FF7A: FLdRfVar var_BE
  loc_61FF7D: FLdRfVar var_A4
  loc_61FF80: PopTmpLdAdStr var_BC
  loc_61FF83: from_stack_2v = Proc_161_151_5EB10C(from_stack_1v)
  loc_61FF88: FLdUI1
  loc_61FF8C: FStUI1 var_86
  loc_61FF90: ExitProcCbHresult
End Function

Private Function Proc_161_151_5EB10C(arg_C) '5EB10C
  'Data Table: 45B254
  loc_5EB07C: LitI2_Byte 1
  loc_5EB07E: FStI2 var_88
  loc_5EB081: FLdI2 var_88
  loc_5EB084: LitI2_Byte &H10
  loc_5EB086: LeI2
  loc_5EB087: BranchF loc_5EB0FB
  loc_5EB08A: FLdI2 var_88
  loc_5EB08D: CI4UI1
  loc_5EB08E: LitI4 0
  loc_5EB093: ImpAdLdRf MemVar_74C1B8
  loc_5EB096: AryLdPr
  loc_5EB099: MemLdUI1 global_0
  loc_5EB09D: CI2UI1
  loc_5EB09F: LitI4 1
  loc_5EB0A4: ILdI4 arg_C
  loc_5EB0A7: Ary1LdI2
  loc_5EB0A8: EqI2
  loc_5EB0A9: FLdI2 var_88
  loc_5EB0AC: CI4UI1
  loc_5EB0AD: LitI4 1
  loc_5EB0B2: ImpAdLdRf MemVar_74C1B8
  loc_5EB0B5: AryLdPr
  loc_5EB0B8: MemLdUI1 global_0
  loc_5EB0BC: CI2UI1
  loc_5EB0BE: LitI4 2
  loc_5EB0C3: ILdI4 arg_C
  loc_5EB0C6: Ary1LdI2
  loc_5EB0C7: EqI2
  loc_5EB0C8: AndI4
  loc_5EB0C9: FLdI2 var_88
  loc_5EB0CC: CI4UI1
  loc_5EB0CD: LitI4 2
  loc_5EB0D2: ImpAdLdRf MemVar_74C1B8
  loc_5EB0D5: AryLdPr
  loc_5EB0D8: MemLdUI1 global_0
  loc_5EB0DC: CI2UI1
  loc_5EB0DE: LitI4 3
  loc_5EB0E3: ILdI4 arg_C
  loc_5EB0E6: Ary1LdI2
  loc_5EB0E7: EqI2
  loc_5EB0E8: AndI4
  loc_5EB0E9: BranchF loc_5EB0EF
  loc_5EB0EC: Branch loc_5EB0FB
  loc_5EB0EF: FLdI2 var_88
  loc_5EB0F2: LitI2_Byte 1
  loc_5EB0F4: AddI2
  loc_5EB0F5: FStI2 var_88
  loc_5EB0F8: Branch loc_5EB081
  loc_5EB0FB: FLdI2 var_88
  loc_5EB0FE: CUI1I2
  loc_5EB100: FStUI1 var_86
  loc_5EB104: ExitProcCbHresult
End Function

Private Function Proc_161_152_5DD688(arg_C) '5DD688
  'Data Table: 45B254
  loc_5DD63C: ZeroRetVal
  loc_5DD63E: LitI4 1
  loc_5DD643: ILdI4 arg_C
  loc_5DD646: LitStr ","
  loc_5DD649: LitI4 0
  loc_5DD64E: FnInStr4
  loc_5DD650: LitI4 0
  loc_5DD655: GtI4
  loc_5DD656: BranchF loc_5DD679
  loc_5DD659: ILdRf arg_C
  loc_5DD65C: LitI4 1
  loc_5DD661: ILdI4 arg_C
  loc_5DD664: LitStr ","
  loc_5DD667: LitI4 0
  loc_5DD66C: FnInStr4
  loc_5DD66E: LitI4 1
  loc_5DD673: LitStr "."
  loc_5DD676: MidStr arg_0
  loc_5DD679: ILdI4 arg_C
  loc_5DD67C: FStStrCopy var_88
  loc_5DD67F: ExitProcCbHresult
End Function

Private Function Proc_161_153_617294() '617294
  'Data Table: 45B254
  loc_617180: OnErrorGoto loc_61726D
  loc_617183: FLdRfVar var_96
  loc_617186: from_stack_1v = Proc_161_154_634F80()
  loc_61718B: FLdI2 var_96
  loc_61718E: LitI2_Byte &HFF
  loc_617190: EqI2
  loc_617191: BranchF loc_617195
  loc_617194: ExitProcHresult
  loc_617195: FLdRfVar var_A0
  loc_617198: FLdRfVar var_9C
  loc_61719B: ImpAdLdRf MemVar_7520D4
  loc_61719E: NewIfNullPr Global
  loc_6171A1:  = Global.App
  loc_6171A6: FLdPr var_9C
  loc_6171A9:  = App.Path
  loc_6171AE: ILdRf var_A0
  loc_6171B1: LitStr "\SaveCfg.cfg"
  loc_6171B4: ConcatStr
  loc_6171B5: FStStrNoPop var_B4
  loc_6171B8: LitI2_Byte 1
  loc_6171BA: LitI2_Byte &HFF
  loc_6171BC: OpenFile
  loc_6171C0: FFreeStr var_A0 = ""
  loc_6171C7: FFree1Ad var_9C
  loc_6171CA: LitI2_Byte 1
  loc_6171CC: ImpAdCallI2 push EOF()
  loc_6171D1: NotI4
  loc_6171D2: BranchF loc_61726D
  loc_6171D5: LitI2_Byte 1
  loc_6171D7: FLdRfVar var_B8
  loc_6171DA: LineInputStr
  loc_6171DC: FLdRfVar var_B8
  loc_6171DF: CVarRef
  loc_6171E4: FLdRfVar var_D0
  loc_6171E7: ImpAdCallFPR4  = Trim()
  loc_6171EC: FLdRfVar var_D0
  loc_6171EF: LitVarStr var_E0, vbNullString
  loc_6171F4: HardType
  loc_6171F5: EqVarBool
  loc_6171F7: FFree1Var var_D0 = ""
  loc_6171FA: BranchF loc_617200
  loc_6171FD: Branch loc_61726A
  loc_617200: FLdUI1
  loc_617204: CI2UI1
  loc_617206: LitI2_Byte &H63
  loc_617208: GeI2
  loc_617209: BranchF loc_61720F
  loc_61720C: Branch loc_61726D
  loc_61720F: LitVarI2 var_D0, 2
  loc_617214: LitI4 1
  loc_617219: FLdRfVar var_B8
  loc_61721C: CVarRef
  loc_617221: FLdRfVar var_F0
  loc_617224: ImpAdCallFPR4  = Mid(, , )
  loc_617229: FLdRfVar var_F0
  loc_61722C: FLdRfVar var_100
  loc_61722F: ImpAdCallFPR4  = Trim()
  loc_617234: FLdRfVar var_100
  loc_617237: FnCIntVar
  loc_617239: LitI2_Byte 1
  loc_61723B: SubI2
  loc_61723C: CStrUI1
  loc_61723E: FStStrNoPop var_A0
  loc_617241: FLdUI1
  loc_617245: CI4UI1
  loc_617246: FLdPr Me
  loc_617249: MemLdRfVar from_stack_1.global_488
  loc_61724C: Ary1StStrCopy
  loc_61724D: FFree1Str var_A0
  loc_617250: FFreeVar var_D0 = "": var_F0 = "": var_100 = ""
  loc_61725B: FLdUI1
  loc_61725F: CI2UI1
  loc_617261: LitI2_Byte 1
  loc_617263: AddI2
  loc_617264: CUI1I2
  loc_617266: FStUI1 var_BE
  loc_61726A: Branch loc_6171CA
  loc_61726D: FLdRfVar var_104
  loc_617270: ImpAdCallI2 Err 'rtcErrObj
  loc_617275: FStAdFunc var_9C
  loc_617278: FLdPr var_9C
  loc_61727B:  = Err.Number
  loc_617280: ILdRf var_104
  loc_617283: LitI4 &H35
  loc_617288: EqI4
  loc_617289: FFree1Ad var_9C
  loc_61728C: BranchF loc_61728F
  loc_61728F: LitI2_Byte 1
  loc_617291: Close
  loc_617293: ExitProcHresult
End Function

Private Function Proc_161_154_634F80() '634F80
  'Data Table: 45B254
  loc_634DA4: OnErrorGoto loc_634EFA
  loc_634DA7: FLdRfVar var_A0
  loc_634DAA: FLdRfVar var_9C
  loc_634DAD: ImpAdLdRf MemVar_7520D4
  loc_634DB0: NewIfNullPr Global
  loc_634DB3:  = Global.App
  loc_634DB8: FLdPr var_9C
  loc_634DBB:  = App.Path
  loc_634DC0: ILdRf var_A0
  loc_634DC3: LitStr "\Marcas.cfg"
  loc_634DC6: ConcatStr
  loc_634DC7: FStStrNoPop var_A4
  loc_634DCA: ImpAdCallI2 push FileLen()
  loc_634DCF: LitI4 0
  loc_634DD4: EqI4
  loc_634DD5: FFreeStr var_A0 = ""
  loc_634DDC: FFree1Ad var_9C
  loc_634DDF: BranchF loc_634E10
  loc_634DE2: LitVar_Missing var_124
  loc_634DE5: LitVar_Missing var_104
  loc_634DE8: LitVar_Missing var_E4
  loc_634DEB: LitI4 &H40
  loc_634DF0: LitVarStr var_B4, "El archivo de configuración de marcas se encuentra vacío."
  loc_634DF5: FStVarCopyObj var_C4
  loc_634DF8: FLdRfVar var_C4
  loc_634DFB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_634E00: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_634E0B: LitI2_Byte &HFF
  loc_634E0D: FStI2 var_86
  loc_634E10: FLdRfVar var_A0
  loc_634E13: FLdRfVar var_9C
  loc_634E16: ImpAdLdRf MemVar_7520D4
  loc_634E19: NewIfNullPr Global
  loc_634E1C:  = Global.App
  loc_634E21: FLdPr var_9C
  loc_634E24:  = App.Path
  loc_634E29: ILdRf var_A0
  loc_634E2C: LitStr "\Marcas.cfg"
  loc_634E2F: ConcatStr
  loc_634E30: FStStrNoPop var_A4
  loc_634E33: LitI2_Byte 1
  loc_634E35: LitI2_Byte &HFF
  loc_634E37: OpenFile
  loc_634E3B: FFreeStr var_A0 = ""
  loc_634E42: FFree1Ad var_9C
  loc_634E45: LitI2_Byte 1
  loc_634E47: ImpAdCallI2 push EOF()
  loc_634E4C: NotI4
  loc_634E4D: BranchF loc_634EFA
  loc_634E50: LitI2_Byte 1
  loc_634E52: FLdRfVar var_128
  loc_634E55: LineInputStr
  loc_634E57: FLdRfVar var_128
  loc_634E5A: CVarRef
  loc_634E5F: FLdRfVar var_C4
  loc_634E62: ImpAdCallFPR4  = Trim()
  loc_634E67: FLdRfVar var_C4
  loc_634E6A: LitVarStr var_D4, vbNullString
  loc_634E6F: HardType
  loc_634E70: EqVar var_E4
  loc_634E74: LitVarI2 var_104, 1
  loc_634E79: LitI4 1
  loc_634E7E: FLdRfVar var_128
  loc_634E81: CVarRef
  loc_634E86: FLdRfVar var_124
  loc_634E89: ImpAdCallFPR4  = Mid(, , )
  loc_634E8E: FLdRfVar var_124
  loc_634E91: LitVarStr var_13C, ";"
  loc_634E96: HardType
  loc_634E97: EqVar var_14C
  loc_634E9B: OrVar var_15C
  loc_634E9F: CBoolVarNull
  loc_634EA1: FFreeVar var_C4 = "": var_104 = ""
  loc_634EAA: BranchF loc_634EB0
  loc_634EAD: Branch loc_634EF7
  loc_634EB0: FLdUI1
  loc_634EB4: CI2UI1
  loc_634EB6: LitI2_Byte &H63
  loc_634EB8: GeI2
  loc_634EB9: BranchF loc_634EBF
  loc_634EBC: Branch loc_634EFA
  loc_634EBF: FLdRfVar var_128
  loc_634EC2: CVarRef
  loc_634EC7: FLdRfVar var_C4
  loc_634ECA: ImpAdCallFPR4  = Trim()
  loc_634ECF: FLdRfVar var_C4
  loc_634ED2: CStrVarTmp
  loc_634ED3: FStStrNoPop var_A0
  loc_634ED6: FLdUI1
  loc_634EDA: CI4UI1
  loc_634EDB: FLdPr Me
  loc_634EDE: MemLdRfVar from_stack_1.global_464
  loc_634EE1: Ary1StStrCopy
  loc_634EE2: FFree1Str var_A0
  loc_634EE5: FFree1Var var_C4 = ""
  loc_634EE8: FLdUI1
  loc_634EEC: CI2UI1
  loc_634EEE: LitI2_Byte 1
  loc_634EF0: AddI2
  loc_634EF1: CUI1I2
  loc_634EF3: FStUI1 var_12A
  loc_634EF7: Branch loc_634E45
  loc_634EFA: FLdRfVar var_160
  loc_634EFD: ImpAdCallI2 Err 'rtcErrObj
  loc_634F02: FStAdFunc var_9C
  loc_634F05: FLdPr var_9C
  loc_634F08:  = Err.Number
  loc_634F0D: ILdRf var_160
  loc_634F10: LitI4 &H35
  loc_634F15: EqI4
  loc_634F16: FFree1Ad var_9C
  loc_634F19: BranchF loc_634F73
  loc_634F1C: FLdRfVar var_A0
  loc_634F1F: FLdRfVar var_9C
  loc_634F22: ImpAdLdRf MemVar_7520D4
  loc_634F25: NewIfNullPr Global
  loc_634F28:  = Global.App
  loc_634F2D: FLdPr var_9C
  loc_634F30:  = App.Path
  loc_634F35: LitVar_Missing var_124
  loc_634F38: LitVar_Missing var_104
  loc_634F3B: LitVar_Missing var_E4
  loc_634F3E: LitI4 &H10
  loc_634F43: LitStr "No se puede encontrar el archivo en la ruta "
  loc_634F46: ILdRf var_A0
  loc_634F49: ConcatStr
  loc_634F4A: FStStrNoPop var_A4
  loc_634F4D: LitStr "\Marcas.cfg"
  loc_634F50: ConcatStr
  loc_634F51: CVarStr var_C4
  loc_634F54: ImpAdCallFPR4 MsgBox(, , , , )
  loc_634F59: FFreeStr var_A0 = ""
  loc_634F60: FFree1Ad var_9C
  loc_634F63: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_634F6E: LitI2_Byte &HFF
  loc_634F70: FStI2 var_86
  loc_634F73: LitI2_Byte 1
  loc_634F75: Close
  loc_634F77: ExitProcCbHresult
End Function
