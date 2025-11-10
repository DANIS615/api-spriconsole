VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmTicket
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = -225
  ClientTop = 90
  ClientWidth = 12060
  ClientHeight = 8745
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.PictureBox barSide
    BackColor = &H80000010&
    Left = 0
    Top = 1320
    Width = 1935
    Height = 7575
    TabIndex = 57
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Begin VB.CommandButton cmdBarSide
      Index = 2
      Left = 480
      Top = 5280
      Width = 855
      Height = 735
      TabIndex = 85
      Picture = "frmTicket.frx":0000
      Style = 1
    End
    Begin VB.CommandButton cmdBarSide
      Index = 1
      Left = 480
      Top = 3120
      Width = 855
      Height = 735
      TabIndex = 84
      Picture = "frmTicket.frx":0442
      Style = 1
    End
    Begin VB.CommandButton cmdBarSide
      Index = 0
      Left = 480
      Top = 840
      Width = 855
      Height = 735
      TabIndex = 83
      Picture = "frmTicket.frx":0884
      Style = 1
    End
    Begin VB.Label lblBarSide
      Caption = "Definir Ticket"
      Index = 1
      BackColor = &H80000010&
      ForeColor = &H8000000E&
      Left = 0
      Top = 3960
      Width = 1815
      Height = 450
      TabIndex = 61
      Alignment = 2 'Center
      WordWrap = -1  'True
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
    Begin VB.Label lblBarSide
      Caption = "Definir Impuesto"
      Index = 2
      BackColor = &H80000010&
      ForeColor = &H8000000E&
      Left = -120
      Top = 6120
      Width = 1935
      Height = 255
      TabIndex = 60
      Alignment = 2 'Center
      AutoSize = -1  'True
      WordWrap = -1  'True
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
    Begin VB.Label lblBarSide
      Caption = "Relación entre Surtidor-Impresora"
      Index = 0
      BackColor = &H80000010&
      ForeColor = &H8000000E&
      Left = 0
      Top = 1680
      Width = 1815
      Height = 570
      TabIndex = 59
      Alignment = 2 'Center
      AutoSize = -1  'True
      WordWrap = -1  'True
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
  End
  Begin VB.PictureBox boxHeading
    BackColor = &H80000010&
    Left = 2040
    Top = 1320
    Width = 9855
    Height = 765
    TabIndex = 55
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Begin VB.Image PicHeading
      Left = 9000
      Top = 120
      Width = 735
      Height = 615
      Stretch = -1  'True
    End
    Begin VB.Label lblHeading
      Caption = "Caption"
      ForeColor = &HFFFFFF&
      Left = 180
      Top = 120
      Width = 8715
      Height = 615
      TabIndex = 56
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Times New Roman"
        Size = 24
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel Panel
    Index = 1
    Left = 2040
    Top = 2100
    Width = 9975
    Height = 6735
    TabIndex = 63
    OleObjectBlob = "frmTicket.frx":0CC6
    Begin VB.CommandButton cmdEliminar
      Caption = "&Eliminar"
      BackColor = &H80000010&
      Left = 6660
      Top = 4560
      Width = 1575
      Height = 495
      TabIndex = 98
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Elimina este formato de ticket"
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdDefault
      Caption = "&Default"
      BackColor = &H80000010&
      Left = 8340
      Top = 4560
      Width = 1575
      Height = 495
      TabIndex = 97
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Hace que este ticket sea el ticket de impresión automático"
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdCargar
      Caption = "&Cargar"
      BackColor = &H80000010&
      Left = 6660
      Top = 3960
      Width = 1575
      Height = 495
      TabIndex = 96
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Carga el formato de un ticket para verlo y modificarlo"
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdGrabar
      Caption = "&Grabar"
      BackColor = &H80000010&
      Left = 8340
      Top = 3960
      Width = 1575
      Height = 495
      TabIndex = 95
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Graba el formato del ticket"
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Index = 0
      BackColor = &H80000010&
      Left = 6660
      Top = 5940
      Width = 1575
      Height = 555
      TabIndex = 94
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdAceptar
      Caption = "&Aceptar"
      Index = 0
      BackColor = &H80000010&
      Left = 8340
      Top = 5940
      Width = 1575
      Height = 555
      TabIndex = 93
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdPreview
      Caption = "&Preview"
      BackColor = &H80000010&
      Left = 6660
      Top = 5160
      Width = 1575
      Height = 495
      TabIndex = 92
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Muestra en pantalla el formato del ticket para ver su apariencia"
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdImprimir
      Caption = "&Test"
      BackColor = &H80000010&
      Left = 8340
      Top = 5160
      Width = 1575
      Height = 495
      TabIndex = 91
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Imprime un ticket de prueba"
      MaskColor = &H808080&
    End
    Begin MSFlexGridLib.MSFlexGrid grdAyuda
      Left = 6660
      Top = 240
      Width = 3195
      Height = 3495
      TabStop = 0   'False
      TabIndex = 82
      OleObjectBlob = "frmTicket.frx":0D3F
    End
    Begin VB.TextBox txtTicket
      Left = 120
      Top = 840
      Width = 6375
      Height = 5655
      TabIndex = 25
      MultiLine = -1  'True
      MaxLength = 5000
      BeginProperty Font
        Name = "Courier New"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblTicketName
      Caption = "Ticket"
      BackColor = &HC0C0C0&
      Left = 180
      Top = 120
      Width = 6135
      Height = 615
      TabIndex = 73
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 24
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel Panel
    Index = 2
    Left = 2100
    Top = 2160
    Width = 9855
    Height = 6735
    TabIndex = 64
    OleObjectBlob = "frmTicket.frx":0E2B
    Begin VB.CheckBox chk3DecVol
      Caption = "3 Decimales en Volumen"
      Left = 120
      Top = 6120
      Width = 3015
      Height = 375
      TabIndex = 103
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
    Begin VB.TextBox txtDecimales
      Left = 3000
      Top = 5520
      Width = 375
      Height = 375
      TabIndex = 30
      MaxLength = 1
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
    Begin VB.TextBox txtImpuesto
      Index = 9
      Left = 7680
      Top = 4920
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 50
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 8
      Left = 7680
      Top = 4440
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 48
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 7
      Left = 7680
      Top = 3960
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 46
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 6
      Left = 7680
      Top = 3480
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 44
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 5
      Left = 7680
      Top = 3000
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 42
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 4
      Left = 7680
      Top = 2520
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 40
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 3
      Left = 7680
      Top = 2040
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 38
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 2
      Left = 7680
      Top = 1560
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 36
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 1
      Left = 7680
      Top = 1080
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 34
      MaxLength = 10
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
    Begin VB.TextBox txtImpuesto
      Index = 0
      Left = 7680
      Top = 600
      Width = 1935
      Height = 375
      Text = "Text1"
      TabIndex = 32
      MaxLength = 10
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
    Begin VB.TextBox txtProducto
      Index = 9
      Left = 4080
      Top = 4920
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 49
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 8
      Left = 4080
      Top = 4440
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 47
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 7
      Left = 4080
      Top = 3960
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 45
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 6
      Left = 4080
      Top = 3480
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 43
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 5
      Left = 4080
      Top = 3000
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 41
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 4
      Left = 4080
      Top = 2520
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 39
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 3
      Left = 4080
      Top = 2040
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 37
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 2
      Left = 4080
      Top = 1560
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 35
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 1
      Left = 4080
      Top = 1080
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 33
      Locked = -1  'True
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
    Begin VB.TextBox txtProducto
      Index = 0
      Left = 4080
      Top = 600
      Width = 3255
      Height = 375
      Enabled = 0   'False
      Text = "Text1"
      TabIndex = 31
      Locked = -1  'True
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
    Begin VB.OptionButton optTipo
      Caption = "No habilitado"
      Index = 2
      Left = 1080
      Top = 4080
      Width = 2415
      Height = 255
      TabIndex = 29
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
    Begin VB.OptionButton optTipo
      Caption = "Por Volumen"
      Index = 1
      Left = 1080
      Top = 3600
      Width = 2415
      Height = 255
      TabIndex = 28
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
    Begin VB.OptionButton optTipo
      Caption = "Porcentual"
      Index = 0
      Left = 1080
      Top = 3120
      Width = 2415
      Height = 255
      TabIndex = 27
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
    Begin VB.ComboBox cmbImpuesto
      Style = 2
      Left = 480
      Top = 600
      Width = 2895
      Height = 405
      TabIndex = 26
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
    Begin VB.CommandButton cmdAceptar
      Caption = "&Aceptar"
      Index = 1
      BackColor = &H80000010&
      Left = 7920
      Top = 5760
      Width = 1695
      Height = 735
      TabIndex = 51
      BeginProperty Font
        Name = "Arial"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Index = 1
      BackColor = &H80000010&
      Left = 6000
      Top = 5760
      Width = 1695
      Height = 735
      TabIndex = 52
      BeginProperty Font
        Name = "Arial"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H808080&
    End
    Begin VB.Label lblProducto
      Caption = "Producto"
      BackColor = &HC0C0C0&
      Left = 4080
      Top = 240
      Width = 3255
      Height = 375
      TabIndex = 78
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
    Begin VB.Label lblImpuesto
      Caption = "Impuesto"
      BackColor = &HC0C0C0&
      Left = 7680
      Top = 240
      Width = 1935
      Height = 375
      TabIndex = 81
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
    Begin VB.Label lblDecimales
      Caption = "Cantidad de Decimales:"
      Left = 0
      Top = 5520
      Width = 2895
      Height = 255
      TabIndex = 80
      Alignment = 1 'Right Justify
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
    Begin VB.Label Label19
      Caption = "El Impuesto es: "
      BackColor = &HC0C0C0&
      Left = 240
      Top = 2520
      Width = 3255
      Height = 375
      TabIndex = 79
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
    Begin VB.Label Label17
      Caption = "Impuesto #"
      BackColor = &HC0C0C0&
      Left = 480
      Top = 240
      Width = 2895
      Height = 375
      TabIndex = 77
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
  End
  Begin Threed.SSPanel Panel
    Index = 0
    Left = 2040
    Top = 2160
    Width = 9975
    Height = 6735
    TabIndex = 62
    OleObjectBlob = "frmTicket.frx":0EA4
    Begin VB.Frame Frame1
      Left = 2460
      Top = 4440
      Width = 7395
      Height = 1215
      TabIndex = 99
      Begin VB.CommandButton cmdLockMaxTicketNumber
        Left = 300
        Top = 300
        Width = 855
        Height = 735
        TabIndex = 102
        Picture = "frmTicket.frx":0F1D
        Style = 1
      End
      Begin VB.TextBox txtMaxTicket
        BackColor = &H8000000F&
        Left = 5040
        Top = 480
        Width = 1095
        Height = 375
        Enabled = 0   'False
        TabIndex = 100
        MaxLength = 8
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
      Begin VB.Label Label16
        Caption = "Número máximo de tickets:"
        BackColor = &HC0C0C0&
        Left = 1560
        Top = 480
        Width = 3135
        Height = 375
        TabIndex = 101
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
    End
    Begin VB.TextBox txtMinimo
      Left = 2460
      Top = 5940
      Width = 1695
      Height = 375
      Text = "0.00"
      TabIndex = 90
      Alignment = 1 'Right Justify
      MaxLength = 15
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
    Begin VB.Frame fraTipoLimite
      Caption = "Tipo de Límite"
      Left = 420
      Top = 4440
      Width = 1815
      Height = 1215
      TabIndex = 86
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.OptionButton optTipoLimite
        Caption = "Volumen"
        Index = 1
        Left = 240
        Top = 720
        Width = 1335
        Height = 375
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
      Begin VB.OptionButton optTipoLimite
        Caption = "Monto"
        Index = 0
        Left = 240
        Top = 360
        Width = 1335
        Height = 375
        TabIndex = 87
        Value = 255
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
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 0
      Left = 8520
      Top = 540
      Width = 735
      Height = 375
      TabIndex = 2
      OleObjectBlob = "frmTicket.frx":135F
    End
    Begin VB.VScrollBar vscSurtidores
      Left = 9480
      Top = 540
      Width = 375
      Height = 3735
      TabIndex = 24
      Min = 1
      Max = 32
      LargeChange = 8
      Value = 1
    End
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 7
      Left = 5880
      Top = 3900
      Width = 2415
      Height = 360
      TabIndex = 22
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 7
      Left = 1920
      Top = 3900
      Width = 3735
      Height = 360
      TabIndex = 21
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 6
      Left = 5880
      Top = 3420
      Width = 2415
      Height = 360
      TabIndex = 19
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 6
      Left = 1920
      Top = 3420
      Width = 3735
      Height = 360
      TabIndex = 18
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 5
      Left = 5880
      Top = 2940
      Width = 2415
      Height = 360
      TabIndex = 16
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 5
      Left = 1920
      Top = 2940
      Width = 3735
      Height = 360
      TabIndex = 15
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 4
      Left = 5880
      Top = 2460
      Width = 2415
      Height = 360
      TabIndex = 13
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 4
      Left = 1920
      Top = 2460
      Width = 3735
      Height = 360
      TabIndex = 12
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 3
      Left = 5880
      Top = 1980
      Width = 2415
      Height = 360
      TabIndex = 10
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 3
      Left = 1920
      Top = 1980
      Width = 3735
      Height = 360
      TabIndex = 9
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 2
      Left = 5880
      Top = 1500
      Width = 2415
      Height = 360
      TabIndex = 7
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 2
      Left = 1920
      Top = 1500
      Width = 3735
      Height = 360
      TabIndex = 6
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 1
      Left = 5880
      Top = 1020
      Width = 2415
      Height = 360
      TabIndex = 4
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 1
      Left = 1920
      Top = 1020
      Width = 3735
      Height = 360
      TabIndex = 3
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
    Begin VB.ComboBox cmbTipo
      Style = 2
      Index = 0
      Left = 5880
      Top = 540
      Width = 2415
      Height = 360
      TabIndex = 1
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
    Begin VB.ComboBox cmbImpresora
      Style = 2
      Index = 0
      Left = 1920
      Top = 540
      Width = 3735
      Height = 360
      TabIndex = 0
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
    Begin VB.CommandButton cmdAceptar
      Caption = "&Aceptar"
      Index = 2
      BackColor = &H80000010&
      Left = 8160
      Top = 5880
      Width = 1695
      Height = 615
      TabIndex = 53
      BeginProperty Font
        Name = "Arial"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H808080&
    End
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Index = 2
      BackColor = &H80000010&
      Left = 6360
      Top = 5880
      Width = 1695
      Height = 615
      TabIndex = 54
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
      MaskColor = &H808080&
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 1
      Left = 8520
      Top = 1020
      Width = 735
      Height = 375
      TabIndex = 5
      OleObjectBlob = "frmTicket.frx":13E7
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 2
      Left = 8520
      Top = 1500
      Width = 735
      Height = 375
      TabIndex = 8
      OleObjectBlob = "frmTicket.frx":146F
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 3
      Left = 8520
      Top = 1980
      Width = 735
      Height = 375
      TabIndex = 11
      OleObjectBlob = "frmTicket.frx":14F7
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 4
      Left = 8520
      Top = 2460
      Width = 735
      Height = 375
      TabIndex = 14
      OleObjectBlob = "frmTicket.frx":157F
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 5
      Left = 8520
      Top = 2940
      Width = 735
      Height = 375
      TabIndex = 17
      OleObjectBlob = "frmTicket.frx":1607
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 6
      Left = 8520
      Top = 3420
      Width = 735
      Height = 375
      TabIndex = 20
      OleObjectBlob = "frmTicket.frx":168F
    End
    Begin MSMask.MaskEdBox txtPrefijo
      Index = 7
      Left = 8520
      Top = 3900
      Width = 735
      Height = 375
      TabIndex = 23
      OleObjectBlob = "frmTicket.frx":1717
    End
    Begin VB.Label lblMinimo
      Caption = "Monto mínimo para la impresión de tickets:"
      BackColor = &HC0C0C0&
      Left = 420
      Top = 5880
      Width = 2415
      Height = 495
      TabIndex = 89
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
    Begin VB.Label Label15
      Caption = "Prefijo"
      BackColor = &HC0C0C0&
      Left = 8520
      Top = 180
      Width = 735
      Height = 375
      TabIndex = 76
      Alignment = 2 'Center
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
    Begin VB.Label Label4
      Caption = "Forma de Impresión"
      BackColor = &HC0C0C0&
      Left = 5880
      Top = 180
      Width = 2415
      Height = 375
      TabIndex = 75
      Alignment = 2 'Center
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
    Begin VB.Label Label2
      Caption = "Impresora"
      BackColor = &HC0C0C0&
      Left = 1920
      Top = 180
      Width = 3735
      Height = 375
      TabIndex = 74
      Alignment = 2 'Center
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 7
      BackColor = &HC0C0C0&
      Left = 120
      Top = 3900
      Width = 1575
      Height = 255
      TabIndex = 72
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 6
      BackColor = &HC0C0C0&
      Left = 120
      Top = 3420
      Width = 1575
      Height = 255
      TabIndex = 71
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 5
      BackColor = &HC0C0C0&
      Left = 120
      Top = 2940
      Width = 1575
      Height = 255
      TabIndex = 70
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 4
      BackColor = &HC0C0C0&
      Left = 120
      Top = 2460
      Width = 1575
      Height = 255
      TabIndex = 69
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 2
      BackColor = &HC0C0C0&
      Left = 120
      Top = 1500
      Width = 1575
      Height = 255
      TabIndex = 67
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 120
      Top = 1080
      Width = 1575
      Height = 255
      TabIndex = 66
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 120
      Top = 600
      Width = 1575
      Height = 255
      TabIndex = 65
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor # 99:"
      Index = 3
      BackColor = &HC0C0C0&
      Left = 120
      Top = 1980
      Width = 1575
      Height = 255
      TabIndex = 68
      Alignment = 1 'Right Justify
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
  Begin VB.Label Label1
    Caption = "Configuración Ticket"
    Left = 2880
    Top = 240
    Width = 6135
    Height = 735
    TabIndex = 58
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 27.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmTicket"

Public Modifico As Boolean


Private Sub txtDecimales_Change() '5E03DC
  'Data Table: 454520
  loc_5E038C: FLdRfVar var_8C
  loc_5E038F: FLdPrThis
  loc_5E0390: VCallAd Control_ID_txtDecimales
  loc_5E0393: FStAdFunc var_88
  loc_5E0396: FLdPr var_88
  loc_5E0399:  = Me.Text
  loc_5E039E: ILdRf var_8C
  loc_5E03A1: ImpAdCallFPR4 push Val()
  loc_5E03A6: CI2R8
  loc_5E03A7: FLdRfVar var_92
  loc_5E03AA: FLdPrThis
  loc_5E03AB: VCallAd Control_ID_cmbImpuesto
  loc_5E03AE: FStAdFunc var_90
  loc_5E03B1: FLdPr var_90
  loc_5E03B4:  = Me.ListIndex
  loc_5E03B9: FLdI2 var_92
  loc_5E03BC: LitI2_Byte 1
  loc_5E03BE: AddI2
  loc_5E03BF: CI4UI1
  loc_5E03C0: ImpAdLdPr unk_454529
  loc_5E03C3: MemLdRfVar from_stack_1.global_6
  loc_5E03C6: AryInRecLdPr
  loc_5E03CC: MemStI2 global_0
  loc_5E03CF: FFree1Str var_8C
  loc_5E03D2: FFreeAd var_88 = ""
  loc_5E03D9: ExitProcHresult
End Sub

Private Sub txtDecimales_GotFocus() '5DEEF0
  'Data Table: 454520
  loc_5DEEA8: LitI4 0
  loc_5DEEAD: FLdPrThis
  loc_5DEEAE: VCallAd Control_ID_txtDecimales
  loc_5DEEB1: FStAdFunc var_88
  loc_5DEEB4: FLdPr var_88
  loc_5DEEB7: Me.SelStart = from_stack_1
  loc_5DEEBC: FFree1Ad var_88
  loc_5DEEBF: FLdRfVar var_8C
  loc_5DEEC2: FLdPrThis
  loc_5DEEC3: VCallAd Control_ID_txtDecimales
  loc_5DEEC6: FStAdFunc var_88
  loc_5DEEC9: FLdPr var_88
  loc_5DEECC:  = Me.Text
  loc_5DEED1: ILdRf var_8C
  loc_5DEED4: FnLenStr
  loc_5DEED5: FLdPrThis
  loc_5DEED6: VCallAd Control_ID_txtDecimales
  loc_5DEED9: FStAdFunc var_90
  loc_5DEEDC: FLdPr var_90
  loc_5DEEDF: Me.SelLength = from_stack_1
  loc_5DEEE4: FFree1Str var_8C
  loc_5DEEE7: FFreeAd var_88 = ""
  loc_5DEEEE: ExitProcHresult
End Sub

Private Sub txtDecimales_KeyPress(KeyAscii As Integer) '5E1304
  'Data Table: 454520
  loc_5E12A4: ILdI2 KeyAscii
  loc_5E12A7: FStI2 var_86
  loc_5E12AA: FLdI2 var_86
  loc_5E12AD: LitI4 &H30
  loc_5E12B2: CI2I4
  loc_5E12B3: LitI4 &H39
  loc_5E12B8: CI2I4
  loc_5E12B9: BetweenI2
  loc_5E12BB: BranchT loc_5E12D8
  loc_5E12BE: FLdI2 var_86
  loc_5E12C1: LitI4 8
  loc_5E12C6: CI2I4
  loc_5E12C7: EqI2
  loc_5E12C8: BranchT loc_5E12D8
  loc_5E12CB: FLdI2 var_86
  loc_5E12CE: LitI4 &H6E
  loc_5E12D3: CI2I4
  loc_5E12D4: EqI2
  loc_5E12D5: BranchF loc_5E12DB
  loc_5E12D8: Branch loc_5E1302
  loc_5E12DB: FLdI2 var_86
  loc_5E12DE: LitI4 &HD
  loc_5E12E3: CI2I4
  loc_5E12E4: EqI2
  loc_5E12E5: BranchF loc_5E12FD
  loc_5E12E8: LitI2_Byte 0
  loc_5E12EA: IStI2 KeyAscii
  loc_5E12ED: LitI2_Byte &HFF
  loc_5E12EF: PopTmpLdAd2 var_88
  loc_5E12F2: LitStr "{TAB}"
  loc_5E12F5: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E12FA: Branch loc_5E1302
  loc_5E12FD: LitI2_Byte 0
  loc_5E12FF: IStI2 KeyAscii
  loc_5E1302: ExitProcHresult
End Sub

Private Sub txtDecimales_LostFocus() '5DE9C8
  'Data Table: 454520
  loc_5DE980: FLdRfVar var_8A
  loc_5DE983: FLdPrThis
  loc_5DE984: VCallAd Control_ID_cmbImpuesto
  loc_5DE987: FStAdFunc var_88
  loc_5DE98A: FLdPr var_88
  loc_5DE98D:  = Me.ListIndex
  loc_5DE992: FLdI2 var_8A
  loc_5DE995: LitI2_Byte 1
  loc_5DE997: AddI2
  loc_5DE998: CI4UI1
  loc_5DE999: ImpAdLdPr unk_454529
  loc_5DE99C: MemLdRfVar from_stack_1.global_6
  loc_5DE99F: AryInRecLdPr
  loc_5DE9A5: MemLdI2 global_0
  loc_5DE9A8: CStrUI1
  loc_5DE9AA: FStStrNoPop var_90
  loc_5DE9AD: FLdPrThis
  loc_5DE9AE: VCallAd Control_ID_txtDecimales
  loc_5DE9B1: FStAdFunc var_94
  loc_5DE9B4: FLdPr var_94
  loc_5DE9B7: Me.Text = from_stack_1
  loc_5DE9BC: FFree1Str var_90
  loc_5DE9BF: FFreeAd var_88 = ""
  loc_5DE9C6: ExitProcHresult
End Sub

Private Sub cmbImpuesto_Click() '60DBD4
  'Data Table: 454520
  loc_60DAD4: FLdRfVar var_8E
  loc_60DAD7: FLdPrThis
  loc_60DAD8: VCallAd Control_ID_cmbImpuesto
  loc_60DADB: FStAdFunc var_8C
  loc_60DADE: FLdPr var_8C
  loc_60DAE1:  = Me.ListIndex
  loc_60DAE6: FLdI2 var_8E
  loc_60DAE9: LitI2_Byte 1
  loc_60DAEB: AddI2
  loc_60DAEC: CI4UI1
  loc_60DAED: ImpAdLdPr unk_454529
  loc_60DAF0: MemLdRfVar from_stack_1.global_6
  loc_60DAF3: AryInRecLdPr
  loc_60DAF9: MemLdI2 global_0
  loc_60DAFC: CStrUI1
  loc_60DAFE: FStStrNoPop var_94
  loc_60DB01: FLdPrThis
  loc_60DB02: VCallAd Control_ID_txtDecimales
  loc_60DB05: FStAdFunc var_98
  loc_60DB08: FLdPr var_98
  loc_60DB0B: Me.Text = from_stack_1
  loc_60DB10: FFree1Str var_94
  loc_60DB13: FFreeAd var_8C = ""
  loc_60DB1A: LitI2_Byte 0
  loc_60DB1C: FLdRfVar var_86
  loc_60DB1F: FLdRfVar var_8E
  loc_60DB22: ImpAdLdRf MemVar_74A220
  loc_60DB25: NewIfNullPr clsProducts
  loc_60DB28: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60DB2D: FLdI2 var_8E
  loc_60DB30: LitI2_Byte 1
  loc_60DB32: SubI2
  loc_60DB33: ForI2 var_9C
  loc_60DB39: FLdRfVar var_8E
  loc_60DB3C: FLdPrThis
  loc_60DB3D: VCallAd Control_ID_cmbImpuesto
  loc_60DB40: FStAdFunc var_8C
  loc_60DB43: FLdPr var_8C
  loc_60DB46:  = Me.ListIndex
  loc_60DB4B: FLdI2 var_8E
  loc_60DB4E: LitI2_Byte 1
  loc_60DB50: AddI2
  loc_60DB51: CI4UI1
  loc_60DB52: FLdI2 var_86
  loc_60DB55: LitI2_Byte 1
  loc_60DB57: AddI2
  loc_60DB58: CI4UI1
  loc_60DB59: ImpAdLdPr unk_454529
  loc_60DB5C: MemLdRfVar from_stack_1.global_12
  loc_60DB5F: AryInRecLdPr
  loc_60DB65: MemLdStr global_0
  loc_60DB68: ImpAdCallFPR4 push Val()
  loc_60DB6D: CStrR8
  loc_60DB6F: FStStrNoPop var_94
  loc_60DB72: FLdRfVar var_A0
  loc_60DB75: FLdI2 var_86
  loc_60DB78: FLdPrThis
  loc_60DB79: VCallAd Control_ID_txtImpuesto
  loc_60DB7C: FStAdFunc var_98
  loc_60DB7F: FLdPr var_98
  loc_60DB82: Set from_stack_2 = Me(from_stack_1)
  loc_60DB87: FLdPr var_A0
  loc_60DB8A: Me.Text = from_stack_1
  loc_60DB8F: FFree1Str var_94
  loc_60DB92: FFreeAd var_8C = "": var_98 = ""
  loc_60DB9B: FLdRfVar var_86
  loc_60DB9E: NextI2 var_9C, loc_60DB39
  loc_60DBA3: FLdRfVar var_8E
  loc_60DBA6: FLdPrThis
  loc_60DBA7: VCallAd Control_ID_cmbImpuesto
  loc_60DBAA: FStAdFunc var_8C
  loc_60DBAD: FLdPr var_8C
  loc_60DBB0:  = Me.ListIndex
  loc_60DBB5: FLdI2 var_8E
  loc_60DBB8: LitI2_Byte 1
  loc_60DBBA: AddI2
  loc_60DBBB: CI4UI1
  loc_60DBBC: ImpAdLdPr unk_454529
  loc_60DBBF: MemLdRfVar from_stack_1.global_0
  loc_60DBC2: AryInRecLdRf
  loc_60DBC8: Call optTipo_Click(from_stack_1v)
  loc_60DBCD: FFree1Ad var_8C
  loc_60DBD0: ExitProcHresult
End Sub

Private Sub cmbImpuesto_KeyPress(KeyAscii As Integer) '5CFAE4
  'Data Table: 454520
  loc_5CFACC: ILdI2 KeyAscii
  loc_5CFACF: LitI2_Byte &HD
  loc_5CFAD1: EqI2
  loc_5CFAD2: BranchF loc_5CFAE2
  loc_5CFAD5: LitI2_Byte &HFF
  loc_5CFAD7: PopTmpLdAd2 var_86
  loc_5CFADA: LitStr "{TAB} "
  loc_5CFADD: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5CFAE2: ExitProcHresult
End Sub

Private Sub cmbTipo_Click(arg_C) '5FB804
  'Data Table: 454520
  loc_5FB73C: FLdRfVar var_92
  loc_5FB73F: FLdRfVar var_90
  loc_5FB742: ILdI2 arg_C
  loc_5FB745: FLdPrThis
  loc_5FB746: VCallAd Control_ID_cmbTipo
  loc_5FB749: FStAdFunc var_8C
  loc_5FB74C: FLdPr var_8C
  loc_5FB74F: Set from_stack_2 = Me(from_stack_1)
  loc_5FB754: FLdPr var_90
  loc_5FB757:  = Me.ListIndex
  loc_5FB75C: FLdI2 var_92
  loc_5FB75F: ILdI2 arg_C
  loc_5FB762: FLdRfVar var_9A
  loc_5FB765: FLdPrThis
  loc_5FB766: VCallAd Control_ID_vscSurtidores
  loc_5FB769: FStAdFunc var_98
  loc_5FB76C: FLdPr var_98
  loc_5FB76F:  = Me.Value
  loc_5FB774: FLdI2 var_9A
  loc_5FB777: AddI2
  loc_5FB778: CI4UI1
  loc_5FB779: ImpAdLdPr unk_454524
  loc_5FB77C: MemLdRfVar from_stack_1.global_64
  loc_5FB77F: AryInRecLdPr
  loc_5FB785: MemStI2 global_0
  loc_5FB788: FFreeAd var_8C = "": var_90 = ""
  loc_5FB791: LitI2_Byte 1
  loc_5FB793: FStI2 var_86
  loc_5FB796: FLdI2 var_86
  loc_5FB799: ImpAdLdUI1
  loc_5FB79D: CI2UI1
  loc_5FB79F: LeI2
  loc_5FB7A0: BranchF loc_5FB7CB
  loc_5FB7A3: FLdI2 var_86
  loc_5FB7A6: CI4UI1
  loc_5FB7A7: ImpAdLdPr unk_454524
  loc_5FB7AA: MemLdRfVar from_stack_1.global_64
  loc_5FB7AD: AryInRecLdPr
  loc_5FB7B3: MemLdI2 global_0
  loc_5FB7B6: LitI2_Byte 1
  loc_5FB7B8: EqI2
  loc_5FB7B9: BranchF loc_5FB7BF
  loc_5FB7BC: Branch loc_5FB7CB
  loc_5FB7BF: FLdI2 var_86
  loc_5FB7C2: LitI2_Byte 1
  loc_5FB7C4: AddI2
  loc_5FB7C5: FStI2 var_86
  loc_5FB7C8: Branch loc_5FB796
  loc_5FB7CB: FLdI2 var_86
  loc_5FB7CE: ImpAdLdUI1
  loc_5FB7D2: CI2UI1
  loc_5FB7D4: LeI2
  loc_5FB7D5: FLdPrThis
  loc_5FB7D6: VCallAd Control_ID_txtMinimo
  loc_5FB7D9: FStAdFunc var_8C
  loc_5FB7DC: FLdPr var_8C
  loc_5FB7DF: Me.Enabled = from_stack_1b
  loc_5FB7E4: FFree1Ad var_8C
  loc_5FB7E7: FLdI2 var_86
  loc_5FB7EA: ImpAdLdUI1
  loc_5FB7EE: CI2UI1
  loc_5FB7F0: LeI2
  loc_5FB7F1: FLdPrThis
  loc_5FB7F2: VCallAd Control_ID_fraTipoLimite
  loc_5FB7F5: FStAdFunc var_8C
  loc_5FB7F8: FLdPr var_8C
  loc_5FB7FB: Me.Enabled = from_stack_1b
  loc_5FB800: FFree1Ad var_8C
  loc_5FB803: ExitProcHresult
End Sub

Private Sub cmbTipo_KeyPress(KeyAscii As Integer) '5CFA54
  'Data Table: 454520
  loc_5CFA3C: ILdI2 arg_10
  loc_5CFA3F: LitI2_Byte &HD
  loc_5CFA41: EqI2
  loc_5CFA42: BranchF loc_5CFA52
  loc_5CFA45: LitI2_Byte &HFF
  loc_5CFA47: PopTmpLdAd2 var_86
  loc_5CFA4A: LitStr "{TAB} "
  loc_5CFA4D: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5CFA52: ExitProcHresult
End Sub

Private Sub txtMinimo_GotFocus() '5D741C
  'Data Table: 454520
  loc_5D73F4: FLdRfVar var_8C
  loc_5D73F7: FLdPrThis
  loc_5D73F8: VCallAd Control_ID_txtMinimo
  loc_5D73FB: FStAdFunc var_88
  loc_5D73FE: FLdPr var_88
  loc_5D7401:  = Me.Text
  loc_5D7406: ILdRf var_8C
  loc_5D7409: ImpAdCallFPR4 push Val()
  loc_5D740E: FLdPr Me
  loc_5D7411: MemStFPR4 global_56
  loc_5D7414: FFree1Str var_8C
  loc_5D7417: FFree1Ad var_88
  loc_5D741A: ExitProcHresult
End Sub

Private Sub txtMinimo_KeyPress(KeyAscii As Integer) '5DECEC
  'Data Table: 454520
  loc_5DEC98: ILdI2 KeyAscii
  loc_5DEC9B: FStI2 var_86
  loc_5DEC9E: FLdI2 var_86
  loc_5DECA1: LitI2_Byte &HD
  loc_5DECA3: EqI2
  loc_5DECA4: BranchF loc_5DECBC
  loc_5DECA7: LitI2_Byte 0
  loc_5DECA9: IStI2 KeyAscii
  loc_5DECAC: LitI2_Byte 0
  loc_5DECAE: PopTmpLdAd2 var_88
  loc_5DECB1: LitStr "{TAB}"
  loc_5DECB4: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DECB9: Branch loc_5DECEA
  loc_5DECBC: FLdI2 var_86
  loc_5DECBF: LitI4 &H30
  loc_5DECC4: CI2I4
  loc_5DECC5: LitI4 &H39
  loc_5DECCA: CI2I4
  loc_5DECCB: BetweenI2
  loc_5DECCD: BranchT loc_5DECE2
  loc_5DECD0: FLdI2 var_86
  loc_5DECD3: LitI2_Byte 8
  loc_5DECD5: EqI2
  loc_5DECD6: BranchT loc_5DECE2
  loc_5DECD9: FLdI2 var_86
  loc_5DECDC: LitI2_Byte &H2E
  loc_5DECDE: EqI2
  loc_5DECDF: BranchF loc_5DECE5
  loc_5DECE2: Branch loc_5DECEA
  loc_5DECE5: LitI2_Byte 0
  loc_5DECE7: IStI2 KeyAscii
  loc_5DECEA: ExitProcHresult
End Sub

Private Sub txtMinimo_LostFocus() '64E964
  'Data Table: 454520
  loc_64E6D0: FLdRfVar var_90
  loc_64E6D3: FLdPrThis
  loc_64E6D4: VCallAd Control_ID_txtMinimo
  loc_64E6D7: FStAdFunc var_8C
  loc_64E6DA: FLdPr var_8C
  loc_64E6DD:  = Me.Text
  loc_64E6E2: FLdZeroAd var_90
  loc_64E6E5: CVarStr var_A0
  loc_64E6E8: ImpAdCallI2 IsNumeric()
  loc_64E6ED: NotI4
  loc_64E6EE: FFree1Ad var_8C
  loc_64E6F1: FFree1Var var_A0 = ""
  loc_64E6F4: BranchF loc_64E7CE
  loc_64E6F7: FLdRfVar var_A6
  loc_64E6FA: FLdRfVar var_A4
  loc_64E6FD: LitI2_Byte 0
  loc_64E6FF: FLdPrThis
  loc_64E700: VCallAd Control_ID_optTipoLimite
  loc_64E703: FStAdFunc var_8C
  loc_64E706: FLdPr var_8C
  loc_64E709: Set from_stack_2 = Me(from_stack_1)
  loc_64E70E: FLdPr var_A4
  loc_64E711:  = Me.Value
  loc_64E716: LitVarStr var_D8, "volumen"
  loc_64E71B: FStVarCopyObj var_E8
  loc_64E71E: FLdRfVar var_E8
  loc_64E721: LitVarStr var_C8, "monto"
  loc_64E726: FStVarCopyObj var_A0
  loc_64E729: FLdRfVar var_A0
  loc_64E72C: FLdI2 var_A6
  loc_64E72F: CVarBoolI2 var_B8
  loc_64E733: FLdRfVar var_F8
  loc_64E736: ImpAdCallFPR4  = IIf(, , )
  loc_64E73B: LitVar_Missing var_198
  loc_64E73E: LitVar_Missing var_178
  loc_64E741: LitVar_Missing var_158
  loc_64E744: LitI4 &H40
  loc_64E749: LitVarStr var_108, "Debe ingresar un "
  loc_64E74E: FLdRfVar var_F8
  loc_64E751: ConcatVar var_118
  loc_64E755: LitVarStr var_128, " correcto. Verifique por favor."
  loc_64E75A: ConcatVar var_138
  loc_64E75E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64E763: FFreeAd var_8C = ""
  loc_64E76A: FFreeVar var_B8 = "": var_A0 = "": var_E8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = ""
  loc_64E77F: LitI4 1
  loc_64E784: LitI4 1
  loc_64E789: ImpAdLdRf MemVar_74C364
  loc_64E78C: CVarRef
  loc_64E791: FLdPr Me
  loc_64E794: MemLdRfVar from_stack_1.global_56
  loc_64E797: CVarRef
  loc_64E79C: ImpAdCallI2 Format$(, )
  loc_64E7A1: FStStrNoPop var_90
  loc_64E7A4: FLdPrThis
  loc_64E7A5: VCallAd Control_ID_txtMinimo
  loc_64E7A8: FStAdFunc var_8C
  loc_64E7AB: FLdPr var_8C
  loc_64E7AE: Me.Text = from_stack_1
  loc_64E7B3: FFree1Str var_90
  loc_64E7B6: FFree1Ad var_8C
  loc_64E7B9: FLdPrThis
  loc_64E7BA: VCallAd Control_ID_txtMinimo
  loc_64E7BD: FStAdFunc var_8C
  loc_64E7C0: FLdPr var_8C
  loc_64E7C3: Me.SetFocus
  loc_64E7C8: FFree1Ad var_8C
  loc_64E7CB: Branch loc_64E962
  loc_64E7CE: FLdRfVar var_A6
  loc_64E7D1: FLdRfVar var_A4
  loc_64E7D4: LitI2_Byte 0
  loc_64E7D6: FLdPrThis
  loc_64E7D7: VCallAd Control_ID_optTipoLimite
  loc_64E7DA: FStAdFunc var_8C
  loc_64E7DD: FLdPr var_8C
  loc_64E7E0: Set from_stack_2 = Me(from_stack_1)
  loc_64E7E5: FLdPr var_A4
  loc_64E7E8:  = Me.Value
  loc_64E7ED: FLdI2 var_A6
  loc_64E7F0: FFreeAd var_8C = ""
  loc_64E7F7: BranchF loc_64E8F0
  loc_64E7FA: ImpAdLdUI1
  loc_64E7FE: CI2UI1
  loc_64E800: LitI2_Byte 2
  loc_64E802: LtI2
  loc_64E803: BranchF loc_64E87B
  loc_64E806: FLdRfVar var_90
  loc_64E809: FLdPrThis
  loc_64E80A: VCallAd Control_ID_txtMinimo
  loc_64E80D: FStAdFunc var_8C
  loc_64E810: FLdPr var_8C
  loc_64E813:  = Me.Text
  loc_64E818: FLdRfVar var_19C
  loc_64E81B: ILdRf var_90
  loc_64E81E: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_64E823: ILdRf var_19C
  loc_64E826: CR8Str
  loc_64E828: ImpAdLdFPR4 MemVar_74C2E0
  loc_64E82B: MulR8
  loc_64E82C: CI4R8
  loc_64E82D: FStR4 var_88
  loc_64E830: FFreeStr var_90 = ""
  loc_64E837: FFree1Ad var_8C
  loc_64E83A: LitI4 1
  loc_64E83F: LitI4 1
  loc_64E844: ImpAdLdRf MemVar_74C364
  loc_64E847: CVarRef
  loc_64E84C: ILdRf var_88
  loc_64E84F: CR8I4
  loc_64E850: ImpAdLdFPR4 MemVar_74C2E0
  loc_64E853: DivR8
  loc_64E854: CVarR8
  loc_64E858: ImpAdCallI2 Format$(, )
  loc_64E85D: FStStrNoPop var_90
  loc_64E860: FLdPrThis
  loc_64E861: VCallAd Control_ID_txtMinimo
  loc_64E864: FStAdFunc var_8C
  loc_64E867: FLdPr var_8C
  loc_64E86A: Me.Text = from_stack_1
  loc_64E86F: FFree1Str var_90
  loc_64E872: FFree1Ad var_8C
  loc_64E875: FFree1Var var_A0 = ""
  loc_64E878: Branch loc_64E8ED
  loc_64E87B: FLdRfVar var_90
  loc_64E87E: FLdPrThis
  loc_64E87F: VCallAd Control_ID_txtMinimo
  loc_64E882: FStAdFunc var_8C
  loc_64E885: FLdPr var_8C
  loc_64E888:  = Me.Text
  loc_64E88D: FLdRfVar var_19C
  loc_64E890: ILdRf var_90
  loc_64E893: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_64E898: ILdRf var_19C
  loc_64E89B: CR8Str
  loc_64E89D: ImpAdLdFPR4 MemVar_74C2E0
  loc_64E8A0: DivR8
  loc_64E8A1: CI4R8
  loc_64E8A2: FStR4 var_88
  loc_64E8A5: FFreeStr var_90 = ""
  loc_64E8AC: FFree1Ad var_8C
  loc_64E8AF: LitI4 1
  loc_64E8B4: LitI4 1
  loc_64E8B9: ImpAdLdRf MemVar_74C364
  loc_64E8BC: CVarRef
  loc_64E8C1: ILdRf var_88
  loc_64E8C4: CR8I4
  loc_64E8C5: ImpAdLdFPR4 MemVar_74C2E0
  loc_64E8C8: MulR8
  loc_64E8C9: CVarR8
  loc_64E8CD: ImpAdCallI2 Format$(, )
  loc_64E8D2: FStStrNoPop var_90
  loc_64E8D5: FLdPrThis
  loc_64E8D6: VCallAd Control_ID_txtMinimo
  loc_64E8D9: FStAdFunc var_8C
  loc_64E8DC: FLdPr var_8C
  loc_64E8DF: Me.Text = from_stack_1
  loc_64E8E4: FFree1Str var_90
  loc_64E8E7: FFree1Ad var_8C
  loc_64E8EA: FFree1Var var_A0 = ""
  loc_64E8ED: Branch loc_64E962
  loc_64E8F0: FLdRfVar var_90
  loc_64E8F3: FLdPrThis
  loc_64E8F4: VCallAd Control_ID_txtMinimo
  loc_64E8F7: FStAdFunc var_8C
  loc_64E8FA: FLdPr var_8C
  loc_64E8FD:  = Me.Text
  loc_64E902: FLdRfVar var_19C
  loc_64E905: ILdRf var_90
  loc_64E908: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_64E90D: ILdRf var_19C
  loc_64E910: CR8Str
  loc_64E912: LitI2_Byte &H64
  loc_64E914: CR8I2
  loc_64E915: MulR8
  loc_64E916: CI4R8
  loc_64E917: FStR4 var_88
  loc_64E91A: FFreeStr var_90 = ""
  loc_64E921: FFree1Ad var_8C
  loc_64E924: LitI4 1
  loc_64E929: LitI4 1
  loc_64E92E: ImpAdLdRf MemVar_74C364
  loc_64E931: CVarRef
  loc_64E936: ILdRf var_88
  loc_64E939: CR8I4
  loc_64E93A: LitI2_Byte &H64
  loc_64E93C: CR8I2
  loc_64E93D: DivR8
  loc_64E93E: CVarR8
  loc_64E942: ImpAdCallI2 Format$(, )
  loc_64E947: FStStrNoPop var_90
  loc_64E94A: FLdPrThis
  loc_64E94B: VCallAd Control_ID_txtMinimo
  loc_64E94E: FStAdFunc var_8C
  loc_64E951: FLdPr var_8C
  loc_64E954: Me.Text = from_stack_1
  loc_64E959: FFree1Str var_90
  loc_64E95C: FFree1Ad var_8C
  loc_64E95F: FFree1Var var_A0 = ""
  loc_64E962: ExitProcHresult
End Sub

Private Sub cmdEliminar_Click() '5F46BC
  'Data Table: 454520
  loc_5F461C: FLdPr Me
  loc_5F461F: MemLdStr global_64
  loc_5F4622: LitStr vbNullString
  loc_5F4625: NeStr
  loc_5F4627: BranchF loc_5F4695
  loc_5F462A: FLdRfVar var_8A
  loc_5F462D: FLdPr Me
  loc_5F4630: MemLdRfVar from_stack_1.global_64
  loc_5F4633: FLdRfVar var_88
  loc_5F4636: ImpAdLdRf MemVar_74C760
  loc_5F4639: NewIfNullPr Formx
  loc_5F463C: from_stack_1v = Formx.global_4589716Get()
  loc_5F4641: FLdPr var_88
  loc_5F4644:  = Formx.Appearance
  loc_5F4649: FLdI2 var_8A
  loc_5F464C: NotI4
  loc_5F464D: FFree1Ad var_88
  loc_5F4650: BranchF loc_5F4695
  loc_5F4653: FLdRfVar var_9C
  loc_5F4656: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F465B: FLdRfVar var_9C
  loc_5F465E: CBoolVarNull
  loc_5F4660: FFree1Var var_9C = ""
  loc_5F4663: BranchF loc_5F4692
  loc_5F4666: LitVar_Missing var_10C
  loc_5F4669: LitVar_Missing var_EC
  loc_5F466C: LitVar_Missing var_CC
  loc_5F466F: LitI4 &H10
  loc_5F4674: LitVarStr var_AC, "El servicio no está disponible"
  loc_5F4679: FStVarCopyObj var_9C
  loc_5F467C: FLdRfVar var_9C
  loc_5F467F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F4684: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_5F468F: Branch loc_5F4695
  loc_5F4692: Branch loc_5F462A
  loc_5F4695: from_stack_1v = Proc_107_45_613A08()
  loc_5F469A: LitI2_Byte 1
  loc_5F469C: CStrUI1
  loc_5F469E: FStStrNoPop var_110
  loc_5F46A1: FLdPrThis
  loc_5F46A2: VCallAd Control_ID_cmdPreview
  loc_5F46A5: FStAdFunc var_88
  loc_5F46A8: FLdPr var_88
  loc_5F46AB: Me.Tag = from_stack_1
  loc_5F46B0: FFree1Str var_110
  loc_5F46B3: FFree1Ad var_88
  loc_5F46B6: Call cmdPreview_Click()
  loc_5F46BB: ExitProcHresult
End Sub

Private Sub optTipoLimite_Click(Index As Integer) '61374C
  'Data Table: 454520
  loc_613640: ILdI2 Index
  loc_613643: LitI2_Byte 0
  loc_613645: EqI2
  loc_613646: BranchF loc_6136CB
  loc_613649: LitStr "Monto mínimo para la impresion de Tickets"
  loc_61364C: FLdPrThis
  loc_61364D: VCallAd Control_ID_lblMinimo
  loc_613650: FStAdFunc var_88
  loc_613653: FLdPr var_88
  loc_613656: Me.Caption = from_stack_1
  loc_61365B: FFree1Ad var_88
  loc_61365E: FLdRfVar var_8C
  loc_613661: FLdPrThis
  loc_613662: VCallAd Control_ID_txtMinimo
  loc_613665: FStAdFunc var_88
  loc_613668: FLdPr var_88
  loc_61366B:  = Me.Text
  loc_613670: FLdRfVar var_90
  loc_613673: ILdRf var_8C
  loc_613676: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_61367B: LitI4 1
  loc_613680: LitI4 1
  loc_613685: ImpAdLdRf MemVar_74C364
  loc_613688: CVarRef
  loc_61368D: ILdRf var_90
  loc_613690: CR8Str
  loc_613692: ImpAdLdFPR4 MemVar_74C2E0
  loc_613695: MulR8
  loc_613696: ImpAdLdFPR4 MemVar_74C2E0
  loc_613699: DivR8
  loc_61369A: CVarR8
  loc_61369E: ImpAdCallI2 Format$(, )
  loc_6136A3: FStStrNoPop var_C4
  loc_6136A6: FLdPrThis
  loc_6136A7: VCallAd Control_ID_txtMinimo
  loc_6136AA: FStAdFunc var_C8
  loc_6136AD: FLdPr var_C8
  loc_6136B0: Me.Text = from_stack_1
  loc_6136B5: FFreeStr var_8C = "": var_90 = ""
  loc_6136BE: FFreeAd var_88 = ""
  loc_6136C5: FFree1Var var_B0 = ""
  loc_6136C8: Branch loc_613744
  loc_6136CB: LitStr "Volumen mínimo para la impresion de Tickets"
  loc_6136CE: FLdPrThis
  loc_6136CF: VCallAd Control_ID_lblMinimo
  loc_6136D2: FStAdFunc var_88
  loc_6136D5: FLdPr var_88
  loc_6136D8: Me.Caption = from_stack_1
  loc_6136DD: FFree1Ad var_88
  loc_6136E0: FLdRfVar var_8C
  loc_6136E3: FLdPrThis
  loc_6136E4: VCallAd Control_ID_txtMinimo
  loc_6136E7: FStAdFunc var_88
  loc_6136EA: FLdPr var_88
  loc_6136ED:  = Me.Text
  loc_6136F2: FLdRfVar var_90
  loc_6136F5: ILdRf var_8C
  loc_6136F8: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_6136FD: LitI4 1
  loc_613702: LitI4 1
  loc_613707: LitVarStr var_A0, "######0.00"
  loc_61370C: FStVarCopyObj var_D8
  loc_61370F: FLdRfVar var_D8
  loc_613712: FLdZeroAd var_90
  loc_613715: CVarStr var_B0
  loc_613718: ImpAdCallI2 Format$(, )
  loc_61371D: FStStrNoPop var_C4
  loc_613720: FLdPrThis
  loc_613721: VCallAd Control_ID_txtMinimo
  loc_613724: FStAdFunc var_C8
  loc_613727: FLdPr var_C8
  loc_61372A: Me.Text = from_stack_1
  loc_61372F: FFreeStr var_8C = ""
  loc_613736: FFreeAd var_88 = ""
  loc_61373D: FFreeVar var_B0 = ""
  loc_613744: Call txtMinimo_LostFocus()
  loc_613749: ExitProcHresult
End Sub

Private Sub cmdBarSide_Click(Index As Integer) '6215DC
  'Data Table: 454520
  loc_6214A0: LitI4 0
  loc_6214A5: LitI4 2
  loc_6214AA: FLdRfVar var_90
  loc_6214AD: Redim
  loc_6214B7: LitStr "Relacion entre "
  loc_6214BA: ImpAdLdI4 MemVar_74BED4
  loc_6214BD: ConcatStr
  loc_6214BE: FStStrNoPop var_8C
  loc_6214C1: LitStr " - Impresora"
  loc_6214C4: ConcatStr
  loc_6214C5: CVarStr var_A0
  loc_6214C8: ParmAry1St
  loc_6214CE: LitVarStr var_B0, "Definir Ticket"
  loc_6214D3: LitI4 1
  loc_6214D8: ILdRf var_90
  loc_6214DB: Ary1StVarCopy
  loc_6214DD: LitVarStr var_C0, "Definir Impuesto"
  loc_6214E2: LitI4 2
  loc_6214E7: ILdRf var_90
  loc_6214EA: Ary1StVarCopy
  loc_6214EC: FLdRfVar var_90
  loc_6214EF: ILdI2 Index
  loc_6214F2: LitI2_Byte 1
  loc_6214F4: AddI2
  loc_6214F5: CR8I2
  loc_6214F6: PopFPR4
  loc_6214F7: FLdRfVar var_D0
  loc_6214FA: ImpAdCallFPR4  = Choose(, )
  loc_6214FF: FLdRfVar var_90
  loc_621502: Erase
  loc_621503: FLdRfVar var_D0
  loc_621506: CStrVarVal var_D4
  loc_62150A: FLdPrThis
  loc_62150B: VCallAd Control_ID_lblHeading
  loc_62150E: FStAdFunc var_D8
  loc_621511: FLdPr var_D8
  loc_621514: Me.Caption = from_stack_1
  loc_621519: FFreeStr var_8C = ""
  loc_621520: FFree1Ad var_D8
  loc_621523: FFree1Var var_D0 = ""
  loc_621526: FLdRfVar var_E0
  loc_621529: FLdRfVar var_DC
  loc_62152C: ILdI2 Index
  loc_62152F: FLdPrThis
  loc_621530: VCallAd Control_ID_cmdBarSide
  loc_621533: FStAdFunc var_D8
  loc_621536: FLdPr var_D8
  loc_621539: Set from_stack_2 = Me(from_stack_1)
  loc_62153E: FLdPr var_DC
  loc_621541:  = Me.Picture
  loc_621546: FLdZeroAd var_E0
  loc_621549: FStAdFuncNoPop
  loc_62154C: FLdPrThis
  loc_62154D: VCallAd Control_ID_PicHeading
  loc_621550: FStAdFunc var_E8
  loc_621553: FLdPr var_E8
  loc_621556: Me.Picture = from_stack_1
  loc_62155B: FFreeAd var_D8 = "": var_DC = "": var_E4 = ""
  loc_621566: LitI2_Byte 0
  loc_621568: FLdRfVar var_86
  loc_62156B: LitI2_Byte 2
  loc_62156D: ForI2 var_EC
  loc_621573: FLdI2 var_86
  loc_621576: ILdI2 Index
  loc_621579: EqI2
  loc_62157A: BranchF loc_6215A8
  loc_62157D: LitVar_TRUE var_B0
  loc_621580: PopAdLdVar
  loc_621581: FLdRfVar var_DC
  loc_621584: ILdI2 Index
  loc_621587: FLdPrThis
  loc_621588: VCallAd Control_ID_Panel
  loc_62158B: FStAdFunc var_D8
  loc_62158E: FLdPr var_D8
  loc_621591: Set from_stack_2 = Me(from_stack_1)
  loc_621596: FLdPr var_DC
  loc_621599: LateIdSt
  loc_62159E: FFreeAd var_D8 = ""
  loc_6215A5: Branch loc_6215D1
  loc_6215A8: LitVar_FALSE
  loc_6215AC: PopAdLdVar
  loc_6215AD: FLdRfVar var_DC
  loc_6215B0: FLdI2 var_86
  loc_6215B3: FLdPrThis
  loc_6215B4: VCallAd Control_ID_Panel
  loc_6215B7: FStAdFunc var_D8
  loc_6215BA: FLdPr var_D8
  loc_6215BD: Set from_stack_2 = Me(from_stack_1)
  loc_6215C2: FLdPr var_DC
  loc_6215C5: LateIdSt
  loc_6215CA: FFreeAd var_D8 = ""
  loc_6215D1: FLdRfVar var_86
  loc_6215D4: NextI2 var_EC, loc_621573
  loc_6215D9: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '663E24
  'Data Table: 454520
  loc_663AC4: ImpAdLdI4 MemVar_74E0A0
  loc_663AC7: FStStrCopy var_88
  loc_663ACA: LitStr " 1"
  loc_663ACD: LitStr "^P"
  loc_663AD0: ILdRf var_88
  loc_663AD3: FLdRfVar var_9C
  loc_663AD6: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663ADB: FLdRfVar var_9C
  loc_663ADE: CStrVarTmp
  loc_663ADF: FStStr var_88
  loc_663AE2: FFree1Var var_9C = ""
  loc_663AE5: LitStr "A"
  loc_663AE8: LitStr "^H"
  loc_663AEB: ILdRf var_88
  loc_663AEE: FLdRfVar var_9C
  loc_663AF1: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663AF6: FLdRfVar var_9C
  loc_663AF9: CStrVarTmp
  loc_663AFA: FStStr var_88
  loc_663AFD: FFree1Var var_9C = ""
  loc_663B00: LitStr "   456.89"
  loc_663B03: LitStr "^U"
  loc_663B06: ILdRf var_88
  loc_663B09: FLdRfVar var_9C
  loc_663B0C: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663B11: FLdRfVar var_9C
  loc_663B14: CStrVarTmp
  loc_663B15: FStStr var_88
  loc_663B18: FFree1Var var_9C = ""
  loc_663B1B: FLdRfVar var_A2
  loc_663B1E: FLdPrThis
  loc_663B1F: VCallAd Control_ID_chk3DecVol
  loc_663B22: FStAdFunc var_A0
  loc_663B25: FLdPr var_A0
  loc_663B28:  = Me.Value
  loc_663B2D: LitVarStr var_D4, "  3456.89"
  loc_663B32: FStVarCopyObj var_E4
  loc_663B35: FLdRfVar var_E4
  loc_663B38: LitVarStr var_C4, "  345.891"
  loc_663B3D: FStVarCopyObj var_9C
  loc_663B40: FLdRfVar var_9C
  loc_663B43: FLdI2 var_A2
  loc_663B46: CI4UI1
  loc_663B47: LitI4 1
  loc_663B4C: EqI4
  loc_663B4D: CVarBoolI2 var_B4
  loc_663B51: FLdRfVar var_F4
  loc_663B54: ImpAdCallFPR4  = IIf(, , )
  loc_663B59: FLdRfVar var_F4
  loc_663B5C: CStrVarVal var_F8
  loc_663B60: LitStr "^V"
  loc_663B63: ILdRf var_88
  loc_663B66: FLdRfVar var_108
  loc_663B69: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663B6E: FLdRfVar var_108
  loc_663B71: CStrVarTmp
  loc_663B72: FStStr var_88
  loc_663B75: FFree1Str var_F8
  loc_663B78: FFree1Ad var_A0
  loc_663B7B: FFreeVar var_B4 = "": var_9C = "": var_E4 = "": var_F4 = ""
  loc_663B88: LitStr " 23456.89"
  loc_663B8B: LitStr "^A"
  loc_663B8E: ILdRf var_88
  loc_663B91: FLdRfVar var_9C
  loc_663B94: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663B99: FLdRfVar var_9C
  loc_663B9C: CStrVarTmp
  loc_663B9D: FStStr var_88
  loc_663BA0: FFree1Var var_9C = ""
  loc_663BA3: LitStr "0001-12345678"
  loc_663BA6: LitStr "^T"
  loc_663BA9: ILdRf var_88
  loc_663BAC: FLdRfVar var_9C
  loc_663BAF: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663BB4: FLdRfVar var_9C
  loc_663BB7: CStrVarTmp
  loc_663BB8: FStStr var_88
  loc_663BBB: FFree1Var var_9C = ""
  loc_663BBE: LitStr "08/04/1998"
  loc_663BC1: LitStr "^D"
  loc_663BC4: ILdRf var_88
  loc_663BC7: FLdRfVar var_9C
  loc_663BCA: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663BCF: FLdRfVar var_9C
  loc_663BD2: CStrVarTmp
  loc_663BD3: FStStr var_88
  loc_663BD6: FFree1Var var_9C = ""
  loc_663BD9: LitStr "23:59:59"
  loc_663BDC: LitStr "^M"
  loc_663BDF: ILdRf var_88
  loc_663BE2: FLdRfVar var_9C
  loc_663BE5: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663BEA: FLdRfVar var_9C
  loc_663BED: CStrVarTmp
  loc_663BEE: FStStr var_88
  loc_663BF1: FFree1Var var_9C = ""
  loc_663BF4: LitStr "13245678901234567890"
  loc_663BF7: LitStr "^R"
  loc_663BFA: ILdRf var_88
  loc_663BFD: FLdRfVar var_9C
  loc_663C00: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C05: FLdRfVar var_9C
  loc_663C08: CStrVarTmp
  loc_663C09: FStStr var_88
  loc_663C0C: FFree1Var var_9C = ""
  loc_663C0F: LitStr "0.111"
  loc_663C12: LitStr "^I"
  loc_663C15: ILdRf var_88
  loc_663C18: FLdRfVar var_9C
  loc_663C1B: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C20: FLdRfVar var_9C
  loc_663C23: CStrVarTmp
  loc_663C24: FStStr var_88
  loc_663C27: FFree1Var var_9C = ""
  loc_663C2A: LitStr "2.22"
  loc_663C2D: LitStr "^J"
  loc_663C30: ILdRf var_88
  loc_663C33: FLdRfVar var_9C
  loc_663C36: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C3B: FLdRfVar var_9C
  loc_663C3E: CStrVarTmp
  loc_663C3F: FStStr var_88
  loc_663C42: FFree1Var var_9C = ""
  loc_663C45: LitStr "33.3"
  loc_663C48: LitStr "^K"
  loc_663C4B: ILdRf var_88
  loc_663C4E: FLdRfVar var_9C
  loc_663C51: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C56: FLdRfVar var_9C
  loc_663C59: CStrVarTmp
  loc_663C5A: FStStr var_88
  loc_663C5D: FFree1Var var_9C = ""
  loc_663C60: LitStr "123456.89"
  loc_663C63: LitStr "^N"
  loc_663C66: ILdRf var_88
  loc_663C69: FLdRfVar var_9C
  loc_663C6C: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C71: FLdRfVar var_9C
  loc_663C74: CStrVarTmp
  loc_663C75: FStStr var_88
  loc_663C78: FFree1Var var_9C = ""
  loc_663C7B: LitStr "9999"
  loc_663C7E: LitStr "^C[N]"
  loc_663C81: ILdRf var_88
  loc_663C84: FLdRfVar var_9C
  loc_663C87: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663C8C: FLdRfVar var_9C
  loc_663C8F: CStrVarTmp
  loc_663C90: FStStr var_88
  loc_663C93: FFree1Var var_9C = ""
  loc_663C96: LitStr "ABCDEFGHIJKLMNOPQRST"
  loc_663C99: LitStr "^C[R]"
  loc_663C9C: ILdRf var_88
  loc_663C9F: FLdRfVar var_9C
  loc_663CA2: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663CA7: FLdRfVar var_9C
  loc_663CAA: CStrVarTmp
  loc_663CAB: FStStr var_88
  loc_663CAE: FFree1Var var_9C = ""
  loc_663CB1: LitStr "ABCDEFGHIJKLMNOPQRST1234567890"
  loc_663CB4: LitStr "^C[D]"
  loc_663CB7: ILdRf var_88
  loc_663CBA: FLdRfVar var_9C
  loc_663CBD: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663CC2: FLdRfVar var_9C
  loc_663CC5: CStrVarTmp
  loc_663CC6: FStStr var_88
  loc_663CC9: FFree1Var var_9C = ""
  loc_663CCC: LitStr "123456789012345"
  loc_663CCF: LitStr "^C[T]"
  loc_663CD2: ILdRf var_88
  loc_663CD5: FLdRfVar var_9C
  loc_663CD8: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663CDD: FLdRfVar var_9C
  loc_663CE0: CStrVarTmp
  loc_663CE1: FStStr var_88
  loc_663CE4: FFree1Var var_9C = ""
  loc_663CE7: LitStr "1234567890123"
  loc_663CEA: LitStr "^C[C]"
  loc_663CED: ILdRf var_88
  loc_663CF0: FLdRfVar var_9C
  loc_663CF3: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663CF8: FLdRfVar var_9C
  loc_663CFB: CStrVarTmp
  loc_663CFC: FStStr var_88
  loc_663CFF: FFree1Var var_9C = ""
  loc_663D02: LitStr "XX"
  loc_663D05: LitStr "^C[B]"
  loc_663D08: ILdRf var_88
  loc_663D0B: FLdRfVar var_9C
  loc_663D0E: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663D13: FLdRfVar var_9C
  loc_663D16: CStrVarTmp
  loc_663D17: FStStr var_88
  loc_663D1A: FFree1Var var_9C = ""
  loc_663D1D: LitStr "ABCDEFGHIJKLMNOPQRST1234"
  loc_663D20: LitStr "^C[I]"
  loc_663D23: ILdRf var_88
  loc_663D26: FLdRfVar var_9C
  loc_663D29: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663D2E: FLdRfVar var_9C
  loc_663D31: CStrVarTmp
  loc_663D32: FStStr var_88
  loc_663D35: FFree1Var var_9C = ""
  loc_663D38: ImpAdLdI4 MemVar_74BEC0
  loc_663D3B: LitStr "^C[A]"
  loc_663D3E: ILdRf var_88
  loc_663D41: FLdRfVar var_9C
  loc_663D44: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663D49: FLdRfVar var_9C
  loc_663D4C: CStrVarTmp
  loc_663D4D: FStStr var_88
  loc_663D50: FFree1Var var_9C = ""
  loc_663D53: ImpAdLdI4 MemVar_74BED0
  loc_663D56: LitStr "^C[M]"
  loc_663D59: ILdRf var_88
  loc_663D5C: FLdRfVar var_9C
  loc_663D5F: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663D64: FLdRfVar var_9C
  loc_663D67: CStrVarTmp
  loc_663D68: FStStr var_88
  loc_663D6B: FFree1Var var_9C = ""
  loc_663D6E: ILdRf var_88
  loc_663D71: ImpAdCallI2 Proc_103_2_6294F8()
  loc_663D76: FStStr var_88
  loc_663D79: LitI2_Byte &HFF
  loc_663D7B: LitStr "^X"
  loc_663D7E: ILdRf var_88
  loc_663D81: FLdRfVar var_9C
  loc_663D84: ImpAdCallFPR4  = Proc_103_3_624968(, , )
  loc_663D89: FLdRfVar var_9C
  loc_663D8C: CStrVarTmp
  loc_663D8D: FStStr var_88
  loc_663D90: FFree1Var var_9C = ""
  loc_663D93: LitI4 &HA
  loc_663D98: ImpAdCallI2 Chr$()
  loc_663D9D: FStStrNoPop var_F8
  loc_663DA0: LitStr "~~"
  loc_663DA3: ILdRf var_88
  loc_663DA6: FLdRfVar var_9C
  loc_663DA9: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_663DAE: FLdRfVar var_9C
  loc_663DB1: CStrVarTmp
  loc_663DB2: FStStr var_88
  loc_663DB5: FFree1Str var_F8
  loc_663DB8: FFree1Var var_9C = ""
  loc_663DBB: LitI4 1
  loc_663DC0: ImpAdLdPr unk_454524
  loc_663DC3: MemLdRfVar from_stack_1.global_128
  loc_663DC6: AryInRecLdRf
  loc_663DCC: CVarRef
  loc_663DD1: FLdRfVar var_9C
  loc_663DD4: ImpAdCallFPR4  = Trim()
  loc_663DD9: FLdRfVar var_9C
  loc_663DDC: CStrVarVal var_F8
  loc_663DE0: ImpAdCallI2 Proc_142_9_5F7B04()
  loc_663DE5: FStStr var_8C
  loc_663DE8: FFree1Str var_F8
  loc_663DEB: FFree1Var var_9C = ""
  loc_663DEE: ILdRf var_88
  loc_663DF1: FnLenStr
  loc_663DF2: ILdRf var_88
  loc_663DF5: FLdRfVar var_10C
  loc_663DF8: CStr2Ansi
  loc_663DF9: ILdRf var_10C
  loc_663DFC: ILdRf var_8C
  loc_663DFF: FLdRfVar var_F8
  loc_663E02: CStr2Ansi
  loc_663E03: ILdRf var_F8
  loc_663E06: ImpAdCallFPR4 ()
  loc_663E0B: SetLastSystemError
  loc_663E0C: ILdRf var_F8
  loc_663E0F: FLdRfVar var_8C
  loc_663E12: CStr2Uni
  loc_663E14: ILdRf var_10C
  loc_663E17: FLdRfVar var_88
  loc_663E1A: CStr2Uni
  loc_663E1C: FFreeStr var_F8 = ""
  loc_663E23: ExitProcHresult
End Sub

Private Sub cmdPreview_Click() '61309C
  'Data Table: 454520
  loc_612F8C: FLdRfVar var_90
  loc_612F8F: FLdPrThis
  loc_612F90: VCallAd Control_ID_cmdPreview
  loc_612F93: FStAdFunc var_8C
  loc_612F96: FLdPr var_8C
  loc_612F99:  = Me.Tag
  loc_612F9E: ILdRf var_90
  loc_612FA1: CR8Str
  loc_612FA3: LitI2_Byte 0
  loc_612FA5: CR8I2
  loc_612FA6: EqR4
  loc_612FA7: FFree1Str var_90
  loc_612FAA: FFree1Ad var_8C
  loc_612FAD: BranchF loc_61303F
  loc_612FB0: LitStr "&Editar"
  loc_612FB3: FLdPrThis
  loc_612FB4: VCallAd Control_ID_cmdPreview
  loc_612FB7: FStAdFunc var_8C
  loc_612FBA: FLdPr var_8C
  loc_612FBD: Me.Caption = from_stack_1
  loc_612FC2: FFree1Ad var_8C
  loc_612FC5: LitI2_Byte &HFF
  loc_612FC7: FLdPrThis
  loc_612FC8: VCallAd Control_ID_txtTicket
  loc_612FCB: FStAdFunc var_8C
  loc_612FCE: FLdPr var_8C
  loc_612FD1: Me.Locked = from_stack_1b
  loc_612FD6: FFree1Ad var_8C
  loc_612FD9: LitI2_Byte 1
  loc_612FDB: CStrUI1
  loc_612FDD: FStStrNoPop var_90
  loc_612FE0: FLdPrThis
  loc_612FE1: VCallAd Control_ID_cmdPreview
  loc_612FE4: FStAdFunc var_8C
  loc_612FE7: FLdPr var_8C
  loc_612FEA: Me.Tag = from_stack_1
  loc_612FEF: FFree1Str var_90
  loc_612FF2: FFree1Ad var_8C
  loc_612FF5: ImpAdLdI4 MemVar_74E0A0
  loc_612FF8: FStStrCopy var_88
  loc_612FFB: FLdRfVar var_90
  loc_612FFE: FLdPrThis
  loc_612FFF: VCallAd Control_ID_txtTicket
  loc_613002: FStAdFunc var_8C
  loc_613005: FLdPr var_8C
  loc_613008:  = Me.Text
  loc_61300D: ILdRf var_90
  loc_613010: ImpAdCallI2 Proc_156_8_650470()
  loc_613015: FStStrNoPop var_94
  loc_613018: FLdPrThis
  loc_613019: VCallAd Control_ID_txtTicket
  loc_61301C: FStAdFunc var_98
  loc_61301F: FLdPr var_98
  loc_613022: Me.Text = from_stack_1
  loc_613027: FFreeStr var_90 = ""
  loc_61302E: FFreeAd var_8C = ""
  loc_613035: ILdRf var_88
  loc_613038: ImpAdStStrCopy MemVar_74E0A0
  loc_61303C: Branch loc_613099
  loc_61303F: LitStr "&Preview"
  loc_613042: FLdPrThis
  loc_613043: VCallAd Control_ID_cmdPreview
  loc_613046: FStAdFunc var_8C
  loc_613049: FLdPr var_8C
  loc_61304C: Me.Caption = from_stack_1
  loc_613051: FFree1Ad var_8C
  loc_613054: LitI2_Byte 0
  loc_613056: FLdPrThis
  loc_613057: VCallAd Control_ID_txtTicket
  loc_61305A: FStAdFunc var_8C
  loc_61305D: FLdPr var_8C
  loc_613060: Me.Locked = from_stack_1b
  loc_613065: FFree1Ad var_8C
  loc_613068: LitI2_Byte 0
  loc_61306A: CStrUI1
  loc_61306C: FStStrNoPop var_90
  loc_61306F: FLdPrThis
  loc_613070: VCallAd Control_ID_cmdPreview
  loc_613073: FStAdFunc var_8C
  loc_613076: FLdPr var_8C
  loc_613079: Me.Tag = from_stack_1
  loc_61307E: FFree1Str var_90
  loc_613081: FFree1Ad var_8C
  loc_613084: ImpAdLdI4 MemVar_74E0A0
  loc_613087: FLdPrThis
  loc_613088: VCallAd Control_ID_txtTicket
  loc_61308B: FStAdFunc var_8C
  loc_61308E: FLdPr var_8C
  loc_613091: Me.Text = from_stack_1
  loc_613096: FFree1Ad var_8C
  loc_613099: ExitProcHresult
End Sub

Private Sub txtTicket_Change() '5D4E7C
  'Data Table: 454520
  loc_5D4E5C: FLdRfVar var_8C
  loc_5D4E5F: FLdPrThis
  loc_5D4E60: VCallAd Control_ID_txtTicket
  loc_5D4E63: FStAdFunc var_88
  loc_5D4E66: FLdPr var_88
  loc_5D4E69:  = Me.Text
  loc_5D4E6E: FLdZeroAd var_8C
  loc_5D4E71: ImpAdStStr MemVar_74E0A0
  loc_5D4E75: FFree1Ad var_88
  loc_5D4E78: ExitProcHresult
End Sub

Private Sub txtMaxTicket_Change() '5D747C
  'Data Table: 454520
  loc_5D7454: FLdRfVar var_8C
  loc_5D7457: FLdPrThis
  loc_5D7458: VCallAd Control_ID_txtMaxTicket
  loc_5D745B: FStAdFunc var_88
  loc_5D745E: FLdPr var_88
  loc_5D7461:  = Me.Text
  loc_5D7466: ILdRf var_8C
  loc_5D7469: ImpAdCallFPR4 push Val()
  loc_5D746E: CI4R8
  loc_5D746F: ImpAdLdPr unk_454524
  loc_5D7472: MemStI4 global_388
  loc_5D7475: FFree1Str var_8C
  loc_5D7478: FFree1Ad var_88
  loc_5D747B: ExitProcHresult
End Sub

Private Sub txtMaxTicket_GotFocus() '5DE104
  'Data Table: 454520
  loc_5DE0BC: LitI4 0
  loc_5DE0C1: FLdPrThis
  loc_5DE0C2: VCallAd Control_ID_txtMaxTicket
  loc_5DE0C5: FStAdFunc var_88
  loc_5DE0C8: FLdPr var_88
  loc_5DE0CB: Me.SelStart = from_stack_1
  loc_5DE0D0: FFree1Ad var_88
  loc_5DE0D3: FLdRfVar var_8C
  loc_5DE0D6: FLdPrThis
  loc_5DE0D7: VCallAd Control_ID_txtMaxTicket
  loc_5DE0DA: FStAdFunc var_88
  loc_5DE0DD: FLdPr var_88
  loc_5DE0E0:  = Me.Text
  loc_5DE0E5: ILdRf var_8C
  loc_5DE0E8: FnLenStr
  loc_5DE0E9: FLdPrThis
  loc_5DE0EA: VCallAd Control_ID_txtMaxTicket
  loc_5DE0ED: FStAdFunc var_90
  loc_5DE0F0: FLdPr var_90
  loc_5DE0F3: Me.SelLength = from_stack_1
  loc_5DE0F8: FFree1Str var_8C
  loc_5DE0FB: FFreeAd var_88 = ""
  loc_5DE102: ExitProcHresult
End Sub

Private Sub txtMaxTicket_KeyPress(KeyAscii As Integer) '5DE950
  'Data Table: 454520
  loc_5DE8FC: ILdI2 KeyAscii
  loc_5DE8FF: FStI2 var_86
  loc_5DE902: FLdI2 var_86
  loc_5DE905: LitI4 &H30
  loc_5DE90A: CI2I4
  loc_5DE90B: LitI4 &H39
  loc_5DE910: CI2I4
  loc_5DE911: BetweenI2
  loc_5DE913: BranchT loc_5DE923
  loc_5DE916: FLdI2 var_86
  loc_5DE919: LitI4 8
  loc_5DE91E: CI2I4
  loc_5DE91F: EqI2
  loc_5DE920: BranchF loc_5DE926
  loc_5DE923: Branch loc_5DE94D
  loc_5DE926: FLdI2 var_86
  loc_5DE929: LitI4 &HD
  loc_5DE92E: CI2I4
  loc_5DE92F: EqI2
  loc_5DE930: BranchF loc_5DE948
  loc_5DE933: LitI2_Byte 0
  loc_5DE935: IStI2 KeyAscii
  loc_5DE938: LitI2_Byte &HFF
  loc_5DE93A: PopTmpLdAd2 var_88
  loc_5DE93D: LitStr "{TAB}"
  loc_5DE940: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DE945: Branch loc_5DE94D
  loc_5DE948: LitI2_Byte 0
  loc_5DE94A: IStI2 KeyAscii
  loc_5DE94D: ExitProcHresult
End Sub

Private Sub txtMaxTicket_LostFocus() '5E520C
  'Data Table: 454520
  loc_5E51A4: FLdRfVar var_8C
  loc_5E51A7: FLdPrThis
  loc_5E51A8: VCallAd Control_ID_txtMaxTicket
  loc_5E51AB: FStAdFunc var_88
  loc_5E51AE: FLdPr var_88
  loc_5E51B1:  = Me.Text
  loc_5E51B6: ILdRf var_8C
  loc_5E51B9: ImpAdCallFPR4 push Val()
  loc_5E51BE: CStrR8
  loc_5E51C0: FStStrNoPop var_90
  loc_5E51C3: FLdPrThis
  loc_5E51C4: VCallAd Control_ID_txtMaxTicket
  loc_5E51C7: FStAdFunc var_94
  loc_5E51CA: FLdPr var_94
  loc_5E51CD: Me.Text = from_stack_1
  loc_5E51D2: FFreeStr var_8C = ""
  loc_5E51D9: FFreeAd var_88 = ""
  loc_5E51E0: LitI2_Byte 0
  loc_5E51E2: FLdPrThis
  loc_5E51E3: VCallAd Control_ID_txtMaxTicket
  loc_5E51E6: FStAdFunc var_88
  loc_5E51E9: FLdPr var_88
  loc_5E51EC: Me.Enabled = from_stack_1b
  loc_5E51F1: FFree1Ad var_88
  loc_5E51F4: LitI4 -2147483633
  loc_5E51F9: FLdPrThis
  loc_5E51FA: VCallAd Control_ID_txtMaxTicket
  loc_5E51FD: FStAdFunc var_88
  loc_5E5200: FLdPr var_88
  loc_5E5203: Me.BackColor = from_stack_1
  loc_5E5208: FFree1Ad var_88
  loc_5E520B: ExitProcHresult
End Sub

Private Function txtPrefijo_UnknownEvent_0(arg_C) '5EF4A8
  'Data Table: 454520
  loc_5EF420: LitVarI4
  loc_5EF428: PopAdLdVar
  loc_5EF429: FLdRfVar var_8C
  loc_5EF42C: ILdI2 arg_C
  loc_5EF42F: FLdPrThis
  loc_5EF430: VCallAd Control_ID_txtPrefijo
  loc_5EF433: FStAdFunc var_88
  loc_5EF436: FLdPr var_88
  loc_5EF439: Set from_stack_2 = Me(from_stack_1)
  loc_5EF43E: FLdPr var_8C
  loc_5EF441: LateIdSt
  loc_5EF446: FFreeAd var_88 = ""
  loc_5EF44D: FLdRfVar var_8C
  loc_5EF450: ILdI2 arg_C
  loc_5EF453: FLdPrThis
  loc_5EF454: VCallAd Control_ID_txtPrefijo
  loc_5EF457: FStAdFunc var_88
  loc_5EF45A: FLdPr var_88
  loc_5EF45D: Set from_stack_2 = Me(from_stack_1)
  loc_5EF462: FLdPr var_8C
  loc_5EF465: LateIdLdVar var_AC DispID_22 0
  loc_5EF46C: CStrVarTmp
  loc_5EF46D: FStStrNoPop var_B0
  loc_5EF470: FnLenStr
  loc_5EF471: CVarI4
  loc_5EF475: PopAdLdVar
  loc_5EF476: FLdRfVar var_B8
  loc_5EF479: ILdI2 arg_C
  loc_5EF47C: FLdPrThis
  loc_5EF47D: VCallAd Control_ID_txtPrefijo
  loc_5EF480: FStAdFunc var_B4
  loc_5EF483: FLdPr var_B4
  loc_5EF486: Set from_stack_2 = Me(from_stack_1)
  loc_5EF48B: FLdPr var_B8
  loc_5EF48E: LateIdSt
  loc_5EF493: FFree1Str var_B0
  loc_5EF496: FFreeAd var_88 = "": var_8C = "": var_B4 = ""
  loc_5EF4A1: FFree1Var var_AC = ""
  loc_5EF4A4: ExitProcHresult
End Function

Private Function txtPrefijo_UnknownEvent_1(arg_C) '5E7860
  'Data Table: 454520
  loc_5E77FC: FLdRfVar var_8C
  loc_5E77FF: ILdI2 arg_C
  loc_5E7802: FLdPrThis
  loc_5E7803: VCallAd Control_ID_txtPrefijo
  loc_5E7806: FStAdFunc var_88
  loc_5E7809: FLdPr var_88
  loc_5E780C: Set from_stack_2 = Me(from_stack_1)
  loc_5E7811: FLdPr var_8C
  loc_5E7814: LateIdLdVar var_9C DispID_22 0
  loc_5E781B: CStrVarTmp
  loc_5E781C: FStStrNoPop var_A0
  loc_5E781F: ImpAdCallFPR4 push Val()
  loc_5E7824: CStrR8
  loc_5E7826: CVarStr var_B8
  loc_5E7829: PopAdLdVar
  loc_5E782A: FLdRfVar var_A8
  loc_5E782D: ILdI2 arg_C
  loc_5E7830: FLdPrThis
  loc_5E7831: VCallAd Control_ID_txtPrefijo
  loc_5E7834: FStAdFunc var_A4
  loc_5E7837: FLdPr var_A4
  loc_5E783A: Set from_stack_2 = Me(from_stack_1)
  loc_5E783F: FLdPr var_A8
  loc_5E7842: LateIdSt
  loc_5E7847: FFree1Str var_A0
  loc_5E784A: FFreeAd var_88 = "": var_8C = "": var_A4 = ""
  loc_5E7855: FFreeVar var_9C = ""
  loc_5E785C: ExitProcHresult
End Function

Private Function txtPrefijo_UnknownEvent_8(arg_C) '5E5010
  'Data Table: 454520
  loc_5E4FB0: FLdRfVar var_8C
  loc_5E4FB3: ILdI2 arg_C
  loc_5E4FB6: FLdPrThis
  loc_5E4FB7: VCallAd Control_ID_txtPrefijo
  loc_5E4FBA: FStAdFunc var_88
  loc_5E4FBD: FLdPr var_88
  loc_5E4FC0: Set from_stack_2 = Me(from_stack_1)
  loc_5E4FC5: FLdPr var_8C
  loc_5E4FC8: LateIdLdVar var_9C DispID_22 0
  loc_5E4FCF: CStrVarTmp
  loc_5E4FD0: FStStrNoPop var_A8
  loc_5E4FD3: ILdI2 arg_C
  loc_5E4FD6: FLdRfVar var_A2
  loc_5E4FD9: FLdPrThis
  loc_5E4FDA: VCallAd Control_ID_vscSurtidores
  loc_5E4FDD: FStAdFunc var_A0
  loc_5E4FE0: FLdPr var_A0
  loc_5E4FE3:  = Me.Value
  loc_5E4FE8: FLdI2 var_A2
  loc_5E4FEB: AddI2
  loc_5E4FEC: CI4UI1
  loc_5E4FED: ImpAdLdPr unk_454524
  loc_5E4FF0: MemLdRfVar from_stack_1.global_256
  loc_5E4FF3: AryInRecLdPr
  loc_5E4FF9: MemStStrCopy
  loc_5E4FFD: FFree1Str var_A8
  loc_5E5000: FFreeAd var_88 = "": var_8C = ""
  loc_5E5009: FFree1Var var_9C = ""
  loc_5E500C: ExitProcHresult
End Function

Private Sub txtPrefijo_KeyDown(KeyCode As Integer, Shift As Integer) '5DD18C
  'Data Table: 454520
  loc_5DD13C: ILdI2 Shift
  loc_5DD13F: FStI2 var_86
  loc_5DD142: FLdI2 var_86
  loc_5DD145: LitI4 &H30
  loc_5DD14A: CI2I4
  loc_5DD14B: LitI4 &H39
  loc_5DD150: CI2I4
  loc_5DD151: BetweenI2
  loc_5DD153: BranchT loc_5DD15F
  loc_5DD156: FLdI2 var_86
  loc_5DD159: LitI2_Byte 8
  loc_5DD15B: EqI2
  loc_5DD15C: BranchF loc_5DD162
  loc_5DD15F: Branch loc_5DD189
  loc_5DD162: FLdI2 var_86
  loc_5DD165: LitI4 &HD
  loc_5DD16A: CI2I4
  loc_5DD16B: EqI2
  loc_5DD16C: BranchF loc_5DD184
  loc_5DD16F: LitI2_Byte 0
  loc_5DD171: IStI2 Shift
  loc_5DD174: LitI2_Byte &HFF
  loc_5DD176: PopTmpLdAd2 var_88
  loc_5DD179: LitStr "{TAB}"
  loc_5DD17C: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DD181: Branch loc_5DD189
  loc_5DD184: LitI2_Byte 0
  loc_5DD186: IStI2 Shift
  loc_5DD189: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '634D04
  'Data Table: 454520
  loc_634B6C: DestructOFrame
  loc_634B72: FLdRfVar var_10C
  loc_634B75: ImpAdCallFPR4  = Proc_156_4_63714C()
  loc_634B7A: FLdRfVar var_10C
  loc_634B7D: ImpAdLdRf MemVar_74E01C
  loc_634B80: AssignRecord
  loc_634B84: LitStr vbNullString
  loc_634B87: FStStrCopy var_110
  loc_634B8A: FLdRfVar var_110
  loc_634B8D: ImpAdCallI2 Proc_142_5_5F7928()
  loc_634B92: ImpAdStStr MemVar_74E0A0
  loc_634B96: FFree1Str var_110
  loc_634B99: DestructOFrame
  loc_634B9F: FLdRfVar var_298
  loc_634BA2: ImpAdCallFPR4 Proc_156_5_631170()
  loc_634BA7: FLdRfVar var_298
  loc_634BAA: ImpAdLdRf MemVar_74DE94
  loc_634BAD: AssignRecord
  loc_634BB1: DestructOFrame
  loc_634BB7: ImpAdLdRf MemVar_74DE94
  loc_634BBA: FLdRfVar var_420
  loc_634BBD: ImpAdCallFPR4  = Proc_156_6_620C34()
  loc_634BC2: FLdRfVar var_420
  loc_634BC5: ImpAdLdRf MemVar_74DE94
  loc_634BC8: AssignRecord
  loc_634BCC: LitI2_Byte 1
  loc_634BCE: FStI2 var_86
  loc_634BD1: LitI2_Byte 1
  loc_634BD3: FLdRfVar var_86
  loc_634BD6: ImpAdLdUI1
  loc_634BDA: CI2UI1
  loc_634BDC: ForI2 var_424
  loc_634BE2: LitI2_Byte 1
  loc_634BE4: FLdRfVar var_88
  loc_634BE7: ImpAdLdPr unk_454524
  loc_634BEA: MemLdI2 global_384
  loc_634BED: ForI2 var_428
  loc_634BF3: FLdI2 var_86
  loc_634BF6: CI4UI1
  loc_634BF7: ImpAdLdPr unk_454524
  loc_634BFA: MemLdRfVar from_stack_1.global_128
  loc_634BFD: AryInRecLdRf
  loc_634C03: CVarRef
  loc_634C08: FLdRfVar var_448
  loc_634C0B: ImpAdCallFPR4  = Trim()
  loc_634C10: FLdRfVar var_448
  loc_634C13: FLdRfVar var_110
  loc_634C16: FLdI2 var_88
  loc_634C19: LitI2_Byte 1
  loc_634C1B: SubI2
  loc_634C1C: FLdRfVar var_450
  loc_634C1F: LitI2_Byte 0
  loc_634C21: FLdPrThis
  loc_634C22: VCallAd Control_ID_cmbImpresora
  loc_634C25: FStAdFunc var_44C
  loc_634C28: FLdPr var_44C
  loc_634C2B: Set from_stack_2 = Me(from_stack_1)
  loc_634C30: FLdPr var_450
  loc_634C33: from_stack_2 = Me.List(from_stack_1)
  loc_634C38: FLdZeroAd var_110
  loc_634C3B: CVarStr var_460
  loc_634C3E: FLdRfVar var_470
  loc_634C41: ImpAdCallFPR4  = Trim()
  loc_634C46: FLdRfVar var_470
  loc_634C49: EqVarBool
  loc_634C4B: FFreeAd var_44C = ""
  loc_634C52: FFreeVar var_460 = "": var_448 = ""
  loc_634C5B: BranchF loc_634C7A
  loc_634C5E: FLdI2 var_88
  loc_634C61: LitI2_Byte 1
  loc_634C63: SubI2
  loc_634C64: FLdI2 var_86
  loc_634C67: CI4UI1
  loc_634C68: ImpAdLdPr unk_454524
  loc_634C6B: MemLdRfVar from_stack_1.global_0
  loc_634C6E: AryInRecLdPr
  loc_634C74: MemStI2 global_0
  loc_634C77: Branch loc_634C82
  loc_634C7A: FLdRfVar var_88
  loc_634C7D: NextI2 var_428, loc_634BF3
  loc_634C82: FLdI2 var_88
  loc_634C85: ImpAdLdPr unk_454524
  loc_634C88: MemLdI2 global_384
  loc_634C8B: GtI2
  loc_634C8C: BranchF loc_634CE6
  loc_634C8F: LitI2_Byte 0
  loc_634C91: FLdI2 var_86
  loc_634C94: CI4UI1
  loc_634C95: ImpAdLdPr unk_454524
  loc_634C98: MemLdRfVar from_stack_1.global_0
  loc_634C9B: AryInRecLdPr
  loc_634CA1: MemStI2 global_0
  loc_634CA4: FLdRfVar var_110
  loc_634CA7: LitI2_Byte 0
  loc_634CA9: FLdRfVar var_450
  loc_634CAC: LitI2_Byte 0
  loc_634CAE: FLdPrThis
  loc_634CAF: VCallAd Control_ID_cmbImpresora
  loc_634CB2: FStAdFunc var_44C
  loc_634CB5: FLdPr var_44C
  loc_634CB8: Set from_stack_2 = Me(from_stack_1)
  loc_634CBD: FLdPr var_450
  loc_634CC0: from_stack_2 = Me.List(from_stack_1)
  loc_634CC5: ILdRf var_110
  loc_634CC8: FLdI2 var_86
  loc_634CCB: CI4UI1
  loc_634CCC: ImpAdLdPr unk_454524
  loc_634CCF: MemLdRfVar from_stack_1.global_128
  loc_634CD2: AryInRecLdPr
  loc_634CD8: MemStStrCopy
  loc_634CDC: FFree1Str var_110
  loc_634CDF: FFreeAd var_44C = ""
  loc_634CE6: FLdRfVar var_86
  loc_634CE9: NextI2 var_424, loc_634BE2
  loc_634CEE: ILdRf Me
  loc_634CF1: FStAdNoPop
  loc_634CF5: ImpAdLdRf MemVar_7520D4
  loc_634CF8: NewIfNullPr Global
  loc_634CFB: Global.Unload from_stack_1
  loc_634D00: FFree1Ad var_44C
  loc_634D03: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '626A3C
  'Data Table: 454520
  loc_6268D0: ImpAdLdRf MemVar_74DE94
  loc_6268D3: ImpAdCallFPR4  = Proc_155_6_625FBC()
  loc_6268D8: ImpAdLdRf MemVar_74DE94
  loc_6268DB: ImpAdCallFPR4  = Proc_156_0_5F7830()
  loc_6268E0: ImpAdLdRf MemVar_74E01C
  loc_6268E3: ImpAdCallFPR4  = Proc_156_1_603A7C()
  loc_6268E8: FLdRfVar var_96
  loc_6268EB: FLdRfVar var_94
  loc_6268EE: LitI2_Byte 0
  loc_6268F0: FLdPrThis
  loc_6268F1: VCallAd Control_ID_optTipoLimite
  loc_6268F4: FStAdFunc var_90
  loc_6268F7: FLdPr var_90
  loc_6268FA: Set from_stack_2 = Me(from_stack_1)
  loc_6268FF: FLdPr var_94
  loc_626902:  = Me.Value
  loc_626907: FLdI2 var_96
  loc_62690A: FFreeAd var_90 = ""
  loc_626911: BranchF loc_626990
  loc_626914: LitStr "0"
  loc_626917: FStStrCopy var_8C
  loc_62691A: FLdRfVar var_9C
  loc_62691D: FLdPrThis
  loc_62691E: VCallAd Control_ID_txtMinimo
  loc_626921: FStAdFunc var_90
  loc_626924: FLdPr var_90
  loc_626927:  = Me.Text
  loc_62692C: FLdRfVar var_A0
  loc_62692F: ILdRf var_9C
  loc_626932: from_stack_2v = Proc_107_44_5FDEE4(from_stack_1v)
  loc_626937: ILdRf var_A0
  loc_62693A: ImpAdCallFPR4 push Val()
  loc_62693F: FStFPR8 var_F8
  loc_626942: LitVarStr var_B0, "0"
  loc_626947: FStVarCopyObj var_C0
  loc_62694A: FLdRfVar var_C0
  loc_62694D: LitI4 9
  loc_626952: FLdRfVar var_D0
  loc_626955: ImpAdCallFPR4  = String(, )
  loc_62695A: LitI4 1
  loc_62695F: LitI4 1
  loc_626964: FLdRfVar var_D0
  loc_626967: FLdFPR8 var_F8
  loc_62696A: ImpAdLdFPR4 MemVar_74C2E0
  loc_62696D: MulR8
  loc_62696E: CVarR8
  loc_626972: ImpAdCallI2 Format$(, )
  loc_626977: FStStr var_88
  loc_62697A: FFreeStr var_9C = ""
  loc_626981: FFree1Ad var_90
  loc_626984: FFreeVar var_C0 = "": var_F0 = ""
  loc_62698D: Branch loc_6269F1
  loc_626990: FLdRfVar var_9C
  loc_626993: FLdPrThis
  loc_626994: VCallAd Control_ID_txtMinimo
  loc_626997: FStAdFunc var_90
  loc_62699A: FLdPr var_90
  loc_62699D:  = Me.Text
  loc_6269A2: LitVarStr var_B0, "0"
  loc_6269A7: FStVarCopyObj var_C0
  loc_6269AA: FLdRfVar var_C0
  loc_6269AD: LitI4 9
  loc_6269B2: FLdRfVar var_D0
  loc_6269B5: ImpAdCallFPR4  = String(, )
  loc_6269BA: LitI4 1
  loc_6269BF: LitI4 1
  loc_6269C4: FLdRfVar var_D0
  loc_6269C7: ILdRf var_9C
  loc_6269CA: CR8Str
  loc_6269CC: LitI2_Byte &H64
  loc_6269CE: CR8I2
  loc_6269CF: MulR8
  loc_6269D0: CVarR8
  loc_6269D4: ImpAdCallI2 Format$(, )
  loc_6269D9: FStStr var_88
  loc_6269DC: FFree1Str var_9C
  loc_6269DF: FFree1Ad var_90
  loc_6269E2: FFreeVar var_C0 = "": var_F0 = ""
  loc_6269EB: LitStr "1"
  loc_6269EE: FStStrCopy var_8C
  loc_6269F1: ILdRf var_8C
  loc_6269F4: ILdRf var_88
  loc_6269F7: ImpAdCallFPR4 Proc_156_2_5DC6C8(, )
  loc_6269FC: FLdRfVar var_96
  loc_6269FF: FLdPrThis
  loc_626A00: VCallAd Control_ID_chk3DecVol
  loc_626A03: FStAdFunc var_90
  loc_626A06: FLdPr var_90
  loc_626A09:  = Me.Value
  loc_626A0E: FLdI2 var_96
  loc_626A11: CI4UI1
  loc_626A12: LitI4 1
  loc_626A17: EqI4
  loc_626A18: ImpAdStI2 MemVar_74BF72
  loc_626A1B: FFree1Ad var_90
  loc_626A1E: ImpAdCallFPR4 Proc_156_3_5DC12C()
  loc_626A23: ILdRf Me
  loc_626A26: FStAdNoPop
  loc_626A2A: ImpAdLdRf MemVar_7520D4
  loc_626A2D: NewIfNullPr Global
  loc_626A30: Global.Unload from_stack_1
  loc_626A35: FFree1Ad var_90
  loc_626A38: ExitProcHresult
End Sub

Private Sub cmbImpresora_Click(arg_C) '5F53BC
  'Data Table: 454520
  loc_5F530C: FLdRfVar var_8E
  loc_5F530F: FLdRfVar var_8C
  loc_5F5312: ILdI2 arg_C
  loc_5F5315: FLdPrThis
  loc_5F5316: VCallAd Control_ID_cmbImpresora
  loc_5F5319: FStAdFunc var_88
  loc_5F531C: FLdPr var_88
  loc_5F531F: Set from_stack_2 = Me(from_stack_1)
  loc_5F5324: FLdPr var_8C
  loc_5F5327:  = Me.ListIndex
  loc_5F532C: FLdI2 var_8E
  loc_5F532F: ILdI2 arg_C
  loc_5F5332: FLdRfVar var_96
  loc_5F5335: FLdPrThis
  loc_5F5336: VCallAd Control_ID_vscSurtidores
  loc_5F5339: FStAdFunc var_94
  loc_5F533C: FLdPr var_94
  loc_5F533F:  = Me.Value
  loc_5F5344: FLdI2 var_96
  loc_5F5347: AddI2
  loc_5F5348: CI4UI1
  loc_5F5349: ImpAdLdPr unk_454524
  loc_5F534C: MemLdRfVar from_stack_1.global_0
  loc_5F534F: AryInRecLdPr
  loc_5F5355: MemStI2 global_0
  loc_5F5358: FFreeAd var_88 = "": var_8C = ""
  loc_5F5361: FLdRfVar var_9C
  loc_5F5364: FLdRfVar var_8C
  loc_5F5367: ILdI2 arg_C
  loc_5F536A: FLdPrThis
  loc_5F536B: VCallAd Control_ID_cmbImpresora
  loc_5F536E: FStAdFunc var_88
  loc_5F5371: FLdPr var_88
  loc_5F5374: Set from_stack_2 = Me(from_stack_1)
  loc_5F5379: FLdPr var_8C
  loc_5F537C:  = Me.Text
  loc_5F5381: ILdRf var_9C
  loc_5F5384: ILdI2 arg_C
  loc_5F5387: FLdRfVar var_8E
  loc_5F538A: FLdPrThis
  loc_5F538B: VCallAd Control_ID_vscSurtidores
  loc_5F538E: FStAdFunc var_94
  loc_5F5391: FLdPr var_94
  loc_5F5394:  = Me.Value
  loc_5F5399: FLdI2 var_8E
  loc_5F539C: AddI2
  loc_5F539D: CI4UI1
  loc_5F539E: ImpAdLdPr unk_454524
  loc_5F53A1: MemLdRfVar from_stack_1.global_128
  loc_5F53A4: AryInRecLdPr
  loc_5F53AA: MemStStrCopy
  loc_5F53AE: FFree1Str var_9C
  loc_5F53B1: FFreeAd var_88 = "": var_8C = ""
  loc_5F53BA: ExitProcHresult
End Sub

Private Sub cmbImpresora_KeyPress(KeyAscii As Integer) '5CFB74
  'Data Table: 454520
  loc_5CFB5C: ILdI2 arg_10
  loc_5CFB5F: LitI2_Byte &HD
  loc_5CFB61: EqI2
  loc_5CFB62: BranchF loc_5CFB72
  loc_5CFB65: LitI2_Byte &HFF
  loc_5CFB67: PopTmpLdAd2 var_86
  loc_5CFB6A: LitStr "{TAB} "
  loc_5CFB6D: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5CFB72: ExitProcHresult
End Sub

Private Sub cmdLockMaxTicketNumber_Click() '5E4214
  'Data Table: 454520
  loc_5E41A8: FLdRfVar var_88
  loc_5E41AB: LitI2_Byte &H3B
  loc_5E41AD: PopTmpLdAd2 var_86
  loc_5E41B0: ImpAdLdRf MemVar_74A21C
  loc_5E41B3: NewIfNullPr clsSecurity
  loc_5E41BB: FLdUI1
  loc_5E41BF: CI2UI1
  loc_5E41C1: LitI2_Byte 0
  loc_5E41C3: GtI2
  loc_5E41C4: BranchF loc_5E41D6
  loc_5E41C7: LitI2_Byte &H3B
  loc_5E41C9: PopTmpLdAd2 var_86
  loc_5E41CC: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E41D1: NotI4
  loc_5E41D2: BranchF loc_5E41D6
  loc_5E41D5: ExitProcHresult
  loc_5E41D6: LitI2_Byte &HFF
  loc_5E41D8: FLdPrThis
  loc_5E41D9: VCallAd Control_ID_txtMaxTicket
  loc_5E41DC: FStAdFunc var_8C
  loc_5E41DF: FLdPr var_8C
  loc_5E41E2: Me.Enabled = from_stack_1b
  loc_5E41E7: FFree1Ad var_8C
  loc_5E41EA: LitI4 &HFFFFFF
  loc_5E41EF: FLdPrThis
  loc_5E41F0: VCallAd Control_ID_txtMaxTicket
  loc_5E41F3: FStAdFunc var_8C
  loc_5E41F6: FLdPr var_8C
  loc_5E41F9: Me.BackColor = from_stack_1
  loc_5E41FE: FFree1Ad var_8C
  loc_5E4201: FLdPrThis
  loc_5E4202: VCallAd Control_ID_txtMaxTicket
  loc_5E4205: FStAdFunc var_8C
  loc_5E4208: FLdPr var_8C
  loc_5E420B: Me.SetFocus
  loc_5E4210: FFree1Ad var_8C
  loc_5E4213: ExitProcHresult
End Sub

Private Sub optTipo_Click(Index As Integer) '6519CC
  'Data Table: 454520
  loc_6516F4: ILdI2 Index
  loc_6516F7: FStI2 var_88
  loc_6516FA: FLdI2 var_88
  loc_6516FD: LitI2_Byte 0
  loc_6516FF: EqI2
  loc_651700: BranchF loc_6517D1
  loc_651703: LitI2_Byte &HFF
  loc_651705: FLdPrThis
  loc_651706: VCallAd Control_ID_lblDecimales
  loc_651709: FStAdFunc var_8C
  loc_65170C: FLdPr var_8C
  loc_65170F: Me.Visible = from_stack_1b
  loc_651714: FFree1Ad var_8C
  loc_651717: LitI2_Byte &HFF
  loc_651719: FLdPrThis
  loc_65171A: VCallAd Control_ID_lblProducto
  loc_65171D: FStAdFunc var_8C
  loc_651720: FLdPr var_8C
  loc_651723: Me.Visible = from_stack_1b
  loc_651728: FFree1Ad var_8C
  loc_65172B: LitI2_Byte &HFF
  loc_65172D: FLdPrThis
  loc_65172E: VCallAd Control_ID_lblImpuesto
  loc_651731: FStAdFunc var_8C
  loc_651734: FLdPr var_8C
  loc_651737: Me.Visible = from_stack_1b
  loc_65173C: FFree1Ad var_8C
  loc_65173F: LitI2_Byte &HFF
  loc_651741: FLdPrThis
  loc_651742: VCallAd Control_ID_txtDecimales
  loc_651745: FStAdFunc var_8C
  loc_651748: FLdPr var_8C
  loc_65174B: Me.Visible = from_stack_1b
  loc_651750: FFree1Ad var_8C
  loc_651753: LitI2_Byte 0
  loc_651755: FLdRfVar var_86
  loc_651758: FLdRfVar var_8E
  loc_65175B: ImpAdLdRf MemVar_74A220
  loc_65175E: NewIfNullPr clsProducts
  loc_651761: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_651766: FLdI2 var_8E
  loc_651769: LitI2_Byte 1
  loc_65176B: SubI2
  loc_65176C: ForI2 var_92
  loc_651772: LitI2_Byte &HFF
  loc_651774: FLdRfVar var_98
  loc_651777: FLdI2 var_86
  loc_65177A: FLdPrThis
  loc_65177B: VCallAd Control_ID_txtProducto
  loc_65177E: FStAdFunc var_8C
  loc_651781: FLdPr var_8C
  loc_651784: Set from_stack_2 = Me(from_stack_1)
  loc_651789: FLdPr var_98
  loc_65178C: Me.Visible = from_stack_1b
  loc_651791: FFreeAd var_8C = ""
  loc_651798: LitI2_Byte &HFF
  loc_65179A: FLdRfVar var_98
  loc_65179D: FLdI2 var_86
  loc_6517A0: FLdPrThis
  loc_6517A1: VCallAd Control_ID_txtImpuesto
  loc_6517A4: FStAdFunc var_8C
  loc_6517A7: FLdPr var_8C
  loc_6517AA: Set from_stack_2 = Me(from_stack_1)
  loc_6517AF: FLdPr var_98
  loc_6517B2: Me.Visible = from_stack_1b
  loc_6517B7: FFreeAd var_8C = ""
  loc_6517BE: FLdRfVar var_86
  loc_6517C1: Call txtImpuesto_Change(from_stack_1v)
  loc_6517C6: FLdRfVar var_86
  loc_6517C9: NextI2 var_92, loc_651772
  loc_6517CE: Branch loc_651974
  loc_6517D1: FLdI2 var_88
  loc_6517D4: LitI2_Byte 1
  loc_6517D6: EqI2
  loc_6517D7: BranchF loc_6518A8
  loc_6517DA: LitI2_Byte &HFF
  loc_6517DC: FLdPrThis
  loc_6517DD: VCallAd Control_ID_lblDecimales
  loc_6517E0: FStAdFunc var_8C
  loc_6517E3: FLdPr var_8C
  loc_6517E6: Me.Visible = from_stack_1b
  loc_6517EB: FFree1Ad var_8C
  loc_6517EE: LitI2_Byte &HFF
  loc_6517F0: FLdPrThis
  loc_6517F1: VCallAd Control_ID_lblProducto
  loc_6517F4: FStAdFunc var_8C
  loc_6517F7: FLdPr var_8C
  loc_6517FA: Me.Visible = from_stack_1b
  loc_6517FF: FFree1Ad var_8C
  loc_651802: LitI2_Byte &HFF
  loc_651804: FLdPrThis
  loc_651805: VCallAd Control_ID_lblImpuesto
  loc_651808: FStAdFunc var_8C
  loc_65180B: FLdPr var_8C
  loc_65180E: Me.Visible = from_stack_1b
  loc_651813: FFree1Ad var_8C
  loc_651816: LitI2_Byte &HFF
  loc_651818: FLdPrThis
  loc_651819: VCallAd Control_ID_txtDecimales
  loc_65181C: FStAdFunc var_8C
  loc_65181F: FLdPr var_8C
  loc_651822: Me.Visible = from_stack_1b
  loc_651827: FFree1Ad var_8C
  loc_65182A: LitI2_Byte 0
  loc_65182C: FLdRfVar var_86
  loc_65182F: FLdRfVar var_8E
  loc_651832: ImpAdLdRf MemVar_74A220
  loc_651835: NewIfNullPr clsProducts
  loc_651838: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65183D: FLdI2 var_8E
  loc_651840: LitI2_Byte 1
  loc_651842: SubI2
  loc_651843: ForI2 var_9C
  loc_651849: LitI2_Byte &HFF
  loc_65184B: FLdRfVar var_98
  loc_65184E: FLdI2 var_86
  loc_651851: FLdPrThis
  loc_651852: VCallAd Control_ID_txtProducto
  loc_651855: FStAdFunc var_8C
  loc_651858: FLdPr var_8C
  loc_65185B: Set from_stack_2 = Me(from_stack_1)
  loc_651860: FLdPr var_98
  loc_651863: Me.Visible = from_stack_1b
  loc_651868: FFreeAd var_8C = ""
  loc_65186F: LitI2_Byte &HFF
  loc_651871: FLdRfVar var_98
  loc_651874: FLdI2 var_86
  loc_651877: FLdPrThis
  loc_651878: VCallAd Control_ID_txtImpuesto
  loc_65187B: FStAdFunc var_8C
  loc_65187E: FLdPr var_8C
  loc_651881: Set from_stack_2 = Me(from_stack_1)
  loc_651886: FLdPr var_98
  loc_651889: Me.Visible = from_stack_1b
  loc_65188E: FFreeAd var_8C = ""
  loc_651895: FLdRfVar var_86
  loc_651898: Call txtImpuesto_Change(from_stack_1v)
  loc_65189D: FLdRfVar var_86
  loc_6518A0: NextI2 var_9C, loc_651849
  loc_6518A5: Branch loc_651974
  loc_6518A8: FLdI2 var_88
  loc_6518AB: LitI2_Byte 2
  loc_6518AD: EqI2
  loc_6518AE: BranchF loc_651974
  loc_6518B1: LitI2_Byte 0
  loc_6518B3: FLdPrThis
  loc_6518B4: VCallAd Control_ID_lblDecimales
  loc_6518B7: FStAdFunc var_8C
  loc_6518BA: FLdPr var_8C
  loc_6518BD: Me.Visible = from_stack_1b
  loc_6518C2: FFree1Ad var_8C
  loc_6518C5: LitI2_Byte 0
  loc_6518C7: FLdPrThis
  loc_6518C8: VCallAd Control_ID_lblProducto
  loc_6518CB: FStAdFunc var_8C
  loc_6518CE: FLdPr var_8C
  loc_6518D1: Me.Visible = from_stack_1b
  loc_6518D6: FFree1Ad var_8C
  loc_6518D9: LitI2_Byte 0
  loc_6518DB: FLdPrThis
  loc_6518DC: VCallAd Control_ID_lblImpuesto
  loc_6518DF: FStAdFunc var_8C
  loc_6518E2: FLdPr var_8C
  loc_6518E5: Me.Visible = from_stack_1b
  loc_6518EA: FFree1Ad var_8C
  loc_6518ED: LitI2_Byte 0
  loc_6518EF: FLdPrThis
  loc_6518F0: VCallAd Control_ID_txtDecimales
  loc_6518F3: FStAdFunc var_8C
  loc_6518F6: FLdPr var_8C
  loc_6518F9: Me.Visible = from_stack_1b
  loc_6518FE: FFree1Ad var_8C
  loc_651901: LitI2_Byte 0
  loc_651903: FLdRfVar var_86
  loc_651906: FLdRfVar var_8E
  loc_651909: ImpAdLdRf MemVar_74A220
  loc_65190C: NewIfNullPr clsProducts
  loc_65190F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_651914: FLdI2 var_8E
  loc_651917: LitI2_Byte 1
  loc_651919: SubI2
  loc_65191A: ForI2 var_A0
  loc_651920: LitI2_Byte 0
  loc_651922: FLdRfVar var_98
  loc_651925: FLdI2 var_86
  loc_651928: FLdPrThis
  loc_651929: VCallAd Control_ID_txtProducto
  loc_65192C: FStAdFunc var_8C
  loc_65192F: FLdPr var_8C
  loc_651932: Set from_stack_2 = Me(from_stack_1)
  loc_651937: FLdPr var_98
  loc_65193A: Me.Visible = from_stack_1b
  loc_65193F: FFreeAd var_8C = ""
  loc_651946: LitI2_Byte 0
  loc_651948: FLdRfVar var_98
  loc_65194B: FLdI2 var_86
  loc_65194E: FLdPrThis
  loc_65194F: VCallAd Control_ID_txtImpuesto
  loc_651952: FStAdFunc var_8C
  loc_651955: FLdPr var_8C
  loc_651958: Set from_stack_2 = Me(from_stack_1)
  loc_65195D: FLdPr var_98
  loc_651960: Me.Visible = from_stack_1b
  loc_651965: FFreeAd var_8C = ""
  loc_65196C: FLdRfVar var_86
  loc_65196F: NextI2 var_A0, loc_651920
  loc_651974: LitI2_Byte &HFF
  loc_651976: FLdRfVar var_98
  loc_651979: ILdI2 Index
  loc_65197C: FLdPrThis
  loc_65197D: VCallAd Control_ID_optTipo
  loc_651980: FStAdFunc var_8C
  loc_651983: FLdPr var_8C
  loc_651986: Set from_stack_2 = Me(from_stack_1)
  loc_65198B: FLdPr var_98
  loc_65198E: Me.Value = from_stack_1b
  loc_651993: FFreeAd var_8C = ""
  loc_65199A: ILdI2 Index
  loc_65199D: FLdRfVar var_8E
  loc_6519A0: FLdPrThis
  loc_6519A1: VCallAd Control_ID_cmbImpuesto
  loc_6519A4: FStAdFunc var_8C
  loc_6519A7: FLdPr var_8C
  loc_6519AA:  = Me.ListIndex
  loc_6519AF: FLdI2 var_8E
  loc_6519B2: LitI2_Byte 1
  loc_6519B4: AddI2
  loc_6519B5: CI4UI1
  loc_6519B6: ImpAdLdPr unk_454529
  loc_6519B9: MemLdRfVar from_stack_1.global_0
  loc_6519BC: AryInRecLdPr
  loc_6519C2: MemStI2 global_0
  loc_6519C5: FFree1Ad var_8C
  loc_6519C8: ExitProcHresult
End Sub

Private Sub Form_Load() '6BF2AC
  'Data Table: 454520
  loc_6BEA28: LitI2_Byte 0
  loc_6BEA2A: FLdPr Me
  loc_6BEA2D: MemStI2 global_60
  loc_6BEA30: LitVarI4
  loc_6BEA38: LitVarI4
  loc_6BEA40: ImpAdLdRf MemVar_74BF72
  loc_6BEA43: CVarRef
  loc_6BEA48: FLdRfVar var_E8
  loc_6BEA4B: ImpAdCallFPR4  = IIf(, , )
  loc_6BEA50: FLdRfVar var_E8
  loc_6BEA53: CI2Var
  loc_6BEA54: FLdPrThis
  loc_6BEA55: VCallAd Control_ID_chk3DecVol
  loc_6BEA58: FStAdFunc var_EC
  loc_6BEA5B: FLdPr var_EC
  loc_6BEA5E: Me.Value = from_stack_1
  loc_6BEA63: FFree1Ad var_EC
  loc_6BEA66: FFreeVar var_B8 = "": var_D8 = ""
  loc_6BEA6F: LitI2_Byte 0
  loc_6BEA71: CStrUI1
  loc_6BEA73: FStStrNoPop var_F0
  loc_6BEA76: FLdPrThis
  loc_6BEA77: VCallAd Control_ID_cmdPreview
  loc_6BEA7A: FStAdFunc var_EC
  loc_6BEA7D: FLdPr var_EC
  loc_6BEA80: Me.Tag = from_stack_1
  loc_6BEA85: FFree1Str var_F0
  loc_6BEA88: FFree1Ad var_EC
  loc_6BEA8B: LitVar_Missing var_98
  loc_6BEA8E: PopAdLdVar
  loc_6BEA8F: LitStr "Impuesto 1"
  loc_6BEA92: FLdPrThis
  loc_6BEA93: VCallAd Control_ID_cmbImpuesto
  loc_6BEA96: FStAdFunc var_EC
  loc_6BEA99: FLdPr var_EC
  loc_6BEA9C: Me.AddItem from_stack_1, from_stack_2
  loc_6BEAA1: FFree1Ad var_EC
  loc_6BEAA4: LitVar_Missing var_98
  loc_6BEAA7: PopAdLdVar
  loc_6BEAA8: LitStr "Impuesto 2"
  loc_6BEAAB: FLdPrThis
  loc_6BEAAC: VCallAd Control_ID_cmbImpuesto
  loc_6BEAAF: FStAdFunc var_EC
  loc_6BEAB2: FLdPr var_EC
  loc_6BEAB5: Me.AddItem from_stack_1, from_stack_2
  loc_6BEABA: FFree1Ad var_EC
  loc_6BEABD: LitVar_Missing var_98
  loc_6BEAC0: PopAdLdVar
  loc_6BEAC1: LitStr "Impuesto 3"
  loc_6BEAC4: FLdPrThis
  loc_6BEAC5: VCallAd Control_ID_cmbImpuesto
  loc_6BEAC8: FStAdFunc var_EC
  loc_6BEACB: FLdPr var_EC
  loc_6BEACE: Me.AddItem from_stack_1, from_stack_2
  loc_6BEAD3: FFree1Ad var_EC
  loc_6BEAD6: LitI2_Byte 0
  loc_6BEAD8: FLdRfVar var_86
  loc_6BEADB: FLdRfVar var_F2
  loc_6BEADE: ImpAdLdRf MemVar_74A220
  loc_6BEAE1: NewIfNullPr clsProducts
  loc_6BEAE4: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6BEAE9: FLdI2 var_F2
  loc_6BEAEC: LitI2_Byte 1
  loc_6BEAEE: SubI2
  loc_6BEAEF: ForI2 var_F6
  loc_6BEAF5: FLdRfVar var_F0
  loc_6BEAF8: FLdI2 var_86
  loc_6BEAFB: LitI2_Byte 1
  loc_6BEAFD: AddI2
  loc_6BEAFE: ImpAdLdRf MemVar_74A220
  loc_6BEB01: NewIfNullPr clsProducts
  loc_6BEB09: ILdRf var_F0
  loc_6BEB0C: FLdRfVar var_FC
  loc_6BEB0F: FLdI2 var_86
  loc_6BEB12: FLdPrThis
  loc_6BEB13: VCallAd Control_ID_txtProducto
  loc_6BEB16: FStAdFunc var_EC
  loc_6BEB19: FLdPr var_EC
  loc_6BEB1C: Set from_stack_2 = Me(from_stack_1)
  loc_6BEB21: FLdPr var_FC
  loc_6BEB24: Me.Text = from_stack_1
  loc_6BEB29: FFree1Str var_F0
  loc_6BEB2C: FFreeAd var_EC = ""
  loc_6BEB33: FLdRfVar var_86
  loc_6BEB36: NextI2 var_F6, loc_6BEAF5
  loc_6BEB3B: FLdRfVar var_F2
  loc_6BEB3E: ImpAdLdRf MemVar_74A220
  loc_6BEB41: NewIfNullPr clsProducts
  loc_6BEB44: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6BEB49: FLdI2 var_F2
  loc_6BEB4C: FLdRfVar var_86
  loc_6BEB4F: LitI2_Byte 9
  loc_6BEB51: ForI2 var_100
  loc_6BEB57: LitI2_Byte 0
  loc_6BEB59: FLdRfVar var_FC
  loc_6BEB5C: FLdI2 var_86
  loc_6BEB5F: FLdPrThis
  loc_6BEB60: VCallAd Control_ID_txtProducto
  loc_6BEB63: FStAdFunc var_EC
  loc_6BEB66: FLdPr var_EC
  loc_6BEB69: Set from_stack_2 = Me(from_stack_1)
  loc_6BEB6E: FLdPr var_FC
  loc_6BEB71: Me.Visible = from_stack_1b
  loc_6BEB76: FFreeAd var_EC = ""
  loc_6BEB7D: LitI2_Byte 0
  loc_6BEB7F: FLdRfVar var_FC
  loc_6BEB82: FLdI2 var_86
  loc_6BEB85: FLdPrThis
  loc_6BEB86: VCallAd Control_ID_txtImpuesto
  loc_6BEB89: FStAdFunc var_EC
  loc_6BEB8C: FLdPr var_EC
  loc_6BEB8F: Set from_stack_2 = Me(from_stack_1)
  loc_6BEB94: FLdPr var_FC
  loc_6BEB97: Me.Visible = from_stack_1b
  loc_6BEB9C: FFreeAd var_EC = ""
  loc_6BEBA3: FLdRfVar var_86
  loc_6BEBA6: NextI2 var_100, loc_6BEB57
  loc_6BEBAB: LitVarStr var_98, "Arial"
  loc_6BEBB0: PopAdLdVar
  loc_6BEBB1: FLdPrThis
  loc_6BEBB2: VCallAd Control_ID_grdAyuda
  loc_6BEBB5: FStAdFunc var_EC
  loc_6BEBB8: FLdPr var_EC
  loc_6BEBBB: LateIdLdVar var_B8 DispID_-512 -1
  loc_6BEBC2: CastAdVar Me
  loc_6BEBC6: FStAdFunc var_FC
  loc_6BEBC9: FLdPr var_FC
  loc_6BEBCC: LateIdSt
  loc_6BEBD1: FFreeAd var_EC = ""
  loc_6BEBD8: FFree1Var var_B8 = ""
  loc_6BEBDB: LitVarI2 var_98, 10
  loc_6BEBE0: PopAdLdVar
  loc_6BEBE1: FLdPrThis
  loc_6BEBE2: VCallAd Control_ID_grdAyuda
  loc_6BEBE5: FStAdFunc var_EC
  loc_6BEBE8: FLdPr var_EC
  loc_6BEBEB: LateIdLdVar var_B8 DispID_-512 -1
  loc_6BEBF2: CastAdVar Me
  loc_6BEBF6: FStAdFunc var_FC
  loc_6BEBF9: FLdPr var_FC
  loc_6BEBFC: LateIdSt
  loc_6BEC01: FFreeAd var_EC = ""
  loc_6BEC08: FFree1Var var_B8 = ""
  loc_6BEC0B: LitVar_TRUE var_98
  loc_6BEC0E: PopAdLdVar
  loc_6BEC0F: FLdPrThis
  loc_6BEC10: VCallAd Control_ID_grdAyuda
  loc_6BEC13: FStAdFunc var_EC
  loc_6BEC16: FLdPr var_EC
  loc_6BEC19: LateIdLdVar var_B8 DispID_-512 -1
  loc_6BEC20: CastAdVar Me
  loc_6BEC24: FStAdFunc var_FC
  loc_6BEC27: FLdPr var_FC
  loc_6BEC2A: LateIdSt
  loc_6BEC2F: FFreeAd var_EC = ""
  loc_6BEC36: FFree1Var var_B8 = ""
  loc_6BEC39: LitVarStr var_98, "Item|Código"
  loc_6BEC3E: PopAdLdVar
  loc_6BEC3F: FLdPrThis
  loc_6BEC40: VCallAd Control_ID_grdAyuda
  loc_6BEC43: FStAdFunc var_EC
  loc_6BEC46: FLdPr var_EC
  loc_6BEC49: LateIdSt
  loc_6BEC4E: FFree1Ad var_EC
  loc_6BEC51: LitVar_FALSE
  loc_6BEC55: PopAdLdVar
  loc_6BEC56: FLdPrThis
  loc_6BEC57: VCallAd Control_ID_grdAyuda
  loc_6BEC5A: FStAdFunc var_EC
  loc_6BEC5D: FLdPr var_EC
  loc_6BEC60: LateIdLdVar var_B8 DispID_-512 -1
  loc_6BEC67: CastAdVar Me
  loc_6BEC6B: FStAdFunc var_FC
  loc_6BEC6E: FLdPr var_FC
  loc_6BEC71: LateIdSt
  loc_6BEC76: FFreeAd var_EC = ""
  loc_6BEC7D: FFree1Var var_B8 = ""
  loc_6BEC80: LitVarI4
  loc_6BEC88: PopAdLdVar
  loc_6BEC89: LitVarI4
  loc_6BEC91: PopAdLdVar
  loc_6BEC92: FLdPrThis
  loc_6BEC93: VCallAd Control_ID_grdAyuda
  loc_6BEC96: FStAdFunc var_EC
  loc_6BEC99: FLdPr var_EC
  loc_6BEC9C: LateIdCallSt
  loc_6BECA4: FFree1Ad var_EC
  loc_6BECA7: LitVarI4
  loc_6BECAF: PopAdLdVar
  loc_6BECB0: LitVarI4
  loc_6BECB8: PopAdLdVar
  loc_6BECB9: FLdPrThis
  loc_6BECBA: VCallAd Control_ID_grdAyuda
  loc_6BECBD: FStAdFunc var_EC
  loc_6BECC0: FLdPr var_EC
  loc_6BECC3: LateIdCallSt
  loc_6BECCB: FFree1Ad var_EC
  loc_6BECCE: LitVarI4
  loc_6BECD6: PopAdLdVar
  loc_6BECD7: FLdPrThis
  loc_6BECD8: VCallAd Control_ID_grdAyuda
  loc_6BECDB: FStAdFunc var_EC
  loc_6BECDE: FLdPr var_EC
  loc_6BECE1: LateIdSt
  loc_6BECE6: FFree1Ad var_EC
  loc_6BECE9: ImpAdLdRf MemVar_74BED4
  loc_6BECEC: CVarRef
  loc_6BECF1: FLdRfVar var_B8
  loc_6BECF4: ImpAdCallFPR4  = Trim()
  loc_6BECF9: FLdRfVar var_B8
  loc_6BECFC: LitI4 9
  loc_6BED01: ImpAdCallI2 Chr$()
  loc_6BED06: CVarStr var_D8
  loc_6BED09: ConcatVar var_E8
  loc_6BED0D: LitVarStr var_A8, "^P (2 car.)"
  loc_6BED12: ConcatVar var_110
  loc_6BED16: CStrVarTmp
  loc_6BED17: CVarStr var_120
  loc_6BED1A: PopAdLdVar
  loc_6BED1B: FLdPrThis
  loc_6BED1C: VCallAd Control_ID_grdAyuda
  loc_6BED1F: FStAdFunc var_EC
  loc_6BED22: FLdPr var_EC
  loc_6BED25: LateIdCall
  loc_6BED2D: FFree1Ad var_EC
  loc_6BED30: FFreeVar var_B8 = "": var_D8 = "": var_E8 = "": var_110 = ""
  loc_6BED3D: ImpAdLdRf MemVar_74BEDC
  loc_6BED40: CVarRef
  loc_6BED45: FLdRfVar var_B8
  loc_6BED48: ImpAdCallFPR4  = Trim()
  loc_6BED4D: FLdRfVar var_B8
  loc_6BED50: LitI4 9
  loc_6BED55: ImpAdCallI2 Chr$()
  loc_6BED5A: CVarStr var_D8
  loc_6BED5D: ConcatVar var_E8
  loc_6BED61: LitVarStr var_A8, "^H (1 car.)"
  loc_6BED66: ConcatVar var_110
  loc_6BED6A: CStrVarTmp
  loc_6BED6B: CVarStr var_120
  loc_6BED6E: PopAdLdVar
  loc_6BED6F: FLdPrThis
  loc_6BED70: VCallAd Control_ID_grdAyuda
  loc_6BED73: FStAdFunc var_EC
  loc_6BED76: FLdPr var_EC
  loc_6BED79: LateIdCall
  loc_6BED81: FFree1Ad var_EC
  loc_6BED84: FFreeVar var_B8 = "": var_D8 = "": var_E8 = "": var_110 = ""
  loc_6BED91: LitStr "PPU"
  loc_6BED94: LitI4 9
  loc_6BED99: ImpAdCallI2 Chr$()
  loc_6BED9E: FStStrNoPop var_F0
  loc_6BEDA1: ConcatStr
  loc_6BEDA2: FStStrNoPop var_124
  loc_6BEDA5: LitStr "^U (9 car.)"
  loc_6BEDA8: ConcatStr
  loc_6BEDA9: CVarStr var_B8
  loc_6BEDAC: PopAdLdVar
  loc_6BEDAD: FLdPrThis
  loc_6BEDAE: VCallAd Control_ID_grdAyuda
  loc_6BEDB1: FStAdFunc var_EC
  loc_6BEDB4: FLdPr var_EC
  loc_6BEDB7: LateIdCall
  loc_6BEDBF: FFreeStr var_F0 = ""
  loc_6BEDC6: FFree1Ad var_EC
  loc_6BEDC9: FFree1Var var_B8 = ""
  loc_6BEDCC: LitStr "Volumen"
  loc_6BEDCF: LitI4 9
  loc_6BEDD4: ImpAdCallI2 Chr$()
  loc_6BEDD9: FStStrNoPop var_F0
  loc_6BEDDC: ConcatStr
  loc_6BEDDD: FStStrNoPop var_124
  loc_6BEDE0: LitStr "^V (9 car.)"
  loc_6BEDE3: ConcatStr
  loc_6BEDE4: CVarStr var_B8
  loc_6BEDE7: PopAdLdVar
  loc_6BEDE8: FLdPrThis
  loc_6BEDE9: VCallAd Control_ID_grdAyuda
  loc_6BEDEC: FStAdFunc var_EC
  loc_6BEDEF: FLdPr var_EC
  loc_6BEDF2: LateIdCall
  loc_6BEDFA: FFreeStr var_F0 = ""
  loc_6BEE01: FFree1Ad var_EC
  loc_6BEE04: FFree1Var var_B8 = ""
  loc_6BEE07: LitStr "Monto"
  loc_6BEE0A: LitI4 9
  loc_6BEE0F: ImpAdCallI2 Chr$()
  loc_6BEE14: FStStrNoPop var_F0
  loc_6BEE17: ConcatStr
  loc_6BEE18: FStStrNoPop var_124
  loc_6BEE1B: LitStr "^A (9 car.)"
  loc_6BEE1E: ConcatStr
  loc_6BEE1F: CVarStr var_B8
  loc_6BEE22: PopAdLdVar
  loc_6BEE23: FLdPrThis
  loc_6BEE24: VCallAd Control_ID_grdAyuda
  loc_6BEE27: FStAdFunc var_EC
  loc_6BEE2A: FLdPr var_EC
  loc_6BEE2D: LateIdCall
  loc_6BEE35: FFreeStr var_F0 = ""
  loc_6BEE3C: FFree1Ad var_EC
  loc_6BEE3F: FFree1Var var_B8 = ""
  loc_6BEE42: LitStr "Ticket"
  loc_6BEE45: LitI4 9
  loc_6BEE4A: ImpAdCallI2 Chr$()
  loc_6BEE4F: FStStrNoPop var_F0
  loc_6BEE52: ConcatStr
  loc_6BEE53: FStStrNoPop var_124
  loc_6BEE56: LitStr "^T (max. 13 car.)"
  loc_6BEE59: ConcatStr
  loc_6BEE5A: CVarStr var_B8
  loc_6BEE5D: PopAdLdVar
  loc_6BEE5E: FLdPrThis
  loc_6BEE5F: VCallAd Control_ID_grdAyuda
  loc_6BEE62: FStAdFunc var_EC
  loc_6BEE65: FLdPr var_EC
  loc_6BEE68: LateIdCall
  loc_6BEE70: FFreeStr var_F0 = ""
  loc_6BEE77: FFree1Ad var_EC
  loc_6BEE7A: FFree1Var var_B8 = ""
  loc_6BEE7D: LitStr "Fecha"
  loc_6BEE80: LitI4 9
  loc_6BEE85: ImpAdCallI2 Chr$()
  loc_6BEE8A: FStStrNoPop var_F0
  loc_6BEE8D: ConcatStr
  loc_6BEE8E: FStStrNoPop var_124
  loc_6BEE91: LitStr "^D (10 car.)"
  loc_6BEE94: ConcatStr
  loc_6BEE95: CVarStr var_B8
  loc_6BEE98: PopAdLdVar
  loc_6BEE99: FLdPrThis
  loc_6BEE9A: VCallAd Control_ID_grdAyuda
  loc_6BEE9D: FStAdFunc var_EC
  loc_6BEEA0: FLdPr var_EC
  loc_6BEEA3: LateIdCall
  loc_6BEEAB: FFreeStr var_F0 = ""
  loc_6BEEB2: FFree1Ad var_EC
  loc_6BEEB5: FFree1Var var_B8 = ""
  loc_6BEEB8: LitStr "Hora"
  loc_6BEEBB: LitI4 9
  loc_6BEEC0: ImpAdCallI2 Chr$()
  loc_6BEEC5: FStStrNoPop var_F0
  loc_6BEEC8: ConcatStr
  loc_6BEEC9: FStStrNoPop var_124
  loc_6BEECC: LitStr "^M (8 car.)"
  loc_6BEECF: ConcatStr
  loc_6BEED0: CVarStr var_B8
  loc_6BEED3: PopAdLdVar
  loc_6BEED4: FLdPrThis
  loc_6BEED5: VCallAd Control_ID_grdAyuda
  loc_6BEED8: FStAdFunc var_EC
  loc_6BEEDB: FLdPr var_EC
  loc_6BEEDE: LateIdCall
  loc_6BEEE6: FFreeStr var_F0 = ""
  loc_6BEEED: FFree1Ad var_EC
  loc_6BEEF0: FFree1Var var_B8 = ""
  loc_6BEEF3: LitStr "Producto"
  loc_6BEEF6: LitI4 9
  loc_6BEEFB: ImpAdCallI2 Chr$()
  loc_6BEF00: FStStrNoPop var_F0
  loc_6BEF03: ConcatStr
  loc_6BEF04: FStStrNoPop var_124
  loc_6BEF07: LitStr "^R (20 car.)"
  loc_6BEF0A: ConcatStr
  loc_6BEF0B: CVarStr var_B8
  loc_6BEF0E: PopAdLdVar
  loc_6BEF0F: FLdPrThis
  loc_6BEF10: VCallAd Control_ID_grdAyuda
  loc_6BEF13: FStAdFunc var_EC
  loc_6BEF16: FLdPr var_EC
  loc_6BEF19: LateIdCall
  loc_6BEF21: FFreeStr var_F0 = ""
  loc_6BEF28: FFree1Ad var_EC
  loc_6BEF2B: FFree1Var var_B8 = ""
  loc_6BEF2E: LitStr "Neto"
  loc_6BEF31: LitI4 9
  loc_6BEF36: ImpAdCallI2 Chr$()
  loc_6BEF3B: FStStrNoPop var_F0
  loc_6BEF3E: ConcatStr
  loc_6BEF3F: FStStrNoPop var_124
  loc_6BEF42: LitStr "^N (9 car.)"
  loc_6BEF45: ConcatStr
  loc_6BEF46: CVarStr var_B8
  loc_6BEF49: PopAdLdVar
  loc_6BEF4A: FLdPrThis
  loc_6BEF4B: VCallAd Control_ID_grdAyuda
  loc_6BEF4E: FStAdFunc var_EC
  loc_6BEF51: FLdPr var_EC
  loc_6BEF54: LateIdCall
  loc_6BEF5C: FFreeStr var_F0 = ""
  loc_6BEF63: FFree1Ad var_EC
  loc_6BEF66: FFree1Var var_B8 = ""
  loc_6BEF69: LitStr "Especial"
  loc_6BEF6C: LitI4 9
  loc_6BEF71: ImpAdCallI2 Chr$()
  loc_6BEF76: FStStrNoPop var_F0
  loc_6BEF79: ConcatStr
  loc_6BEF7A: FStStrNoPop var_124
  loc_6BEF7D: LitStr "^X[ ] (variable)"
  loc_6BEF80: ConcatStr
  loc_6BEF81: CVarStr var_B8
  loc_6BEF84: PopAdLdVar
  loc_6BEF85: FLdPrThis
  loc_6BEF86: VCallAd Control_ID_grdAyuda
  loc_6BEF89: FStAdFunc var_EC
  loc_6BEF8C: FLdPr var_EC
  loc_6BEF8F: LateIdCall
  loc_6BEF97: FFreeStr var_F0 = ""
  loc_6BEF9E: FFree1Ad var_EC
  loc_6BEFA1: FFree1Var var_B8 = ""
  loc_6BEFA4: LitStr "Impuesto 1"
  loc_6BEFA7: LitI4 9
  loc_6BEFAC: ImpAdCallI2 Chr$()
  loc_6BEFB1: FStStrNoPop var_F0
  loc_6BEFB4: ConcatStr
  loc_6BEFB5: FStStrNoPop var_124
  loc_6BEFB8: LitStr "^I (max. 10 car.)"
  loc_6BEFBB: ConcatStr
  loc_6BEFBC: CVarStr var_B8
  loc_6BEFBF: PopAdLdVar
  loc_6BEFC0: FLdPrThis
  loc_6BEFC1: VCallAd Control_ID_grdAyuda
  loc_6BEFC4: FStAdFunc var_EC
  loc_6BEFC7: FLdPr var_EC
  loc_6BEFCA: LateIdCall
  loc_6BEFD2: FFreeStr var_F0 = ""
  loc_6BEFD9: FFree1Ad var_EC
  loc_6BEFDC: FFree1Var var_B8 = ""
  loc_6BEFDF: LitStr "Impuesto 2"
  loc_6BEFE2: LitI4 9
  loc_6BEFE7: ImpAdCallI2 Chr$()
  loc_6BEFEC: FStStrNoPop var_F0
  loc_6BEFEF: ConcatStr
  loc_6BEFF0: FStStrNoPop var_124
  loc_6BEFF3: LitStr "^J (max. 10 car.)"
  loc_6BEFF6: ConcatStr
  loc_6BEFF7: CVarStr var_B8
  loc_6BEFFA: PopAdLdVar
  loc_6BEFFB: FLdPrThis
  loc_6BEFFC: VCallAd Control_ID_grdAyuda
  loc_6BEFFF: FStAdFunc var_EC
  loc_6BF002: FLdPr var_EC
  loc_6BF005: LateIdCall
  loc_6BF00D: FFreeStr var_F0 = ""
  loc_6BF014: FFree1Ad var_EC
  loc_6BF017: FFree1Var var_B8 = ""
  loc_6BF01A: LitStr "Impuesto 3"
  loc_6BF01D: LitI4 9
  loc_6BF022: ImpAdCallI2 Chr$()
  loc_6BF027: FStStrNoPop var_F0
  loc_6BF02A: ConcatStr
  loc_6BF02B: FStStrNoPop var_124
  loc_6BF02E: LitStr "^K (max. 10 car.)"
  loc_6BF031: ConcatStr
  loc_6BF032: CVarStr var_B8
  loc_6BF035: PopAdLdVar
  loc_6BF036: FLdPrThis
  loc_6BF037: VCallAd Control_ID_grdAyuda
  loc_6BF03A: FStAdFunc var_EC
  loc_6BF03D: FLdPr var_EC
  loc_6BF040: LateIdCall
  loc_6BF048: FFreeStr var_F0 = ""
  loc_6BF04F: FFree1Ad var_EC
  loc_6BF052: FFree1Var var_B8 = ""
  loc_6BF055: LitStr "Cliente N."
  loc_6BF058: LitI4 9
  loc_6BF05D: ImpAdCallI2 Chr$()
  loc_6BF062: FStStrNoPop var_F0
  loc_6BF065: ConcatStr
  loc_6BF066: FStStrNoPop var_124
  loc_6BF069: LitStr "^C[N] (4 car.)"
  loc_6BF06C: ConcatStr
  loc_6BF06D: CVarStr var_B8
  loc_6BF070: PopAdLdVar
  loc_6BF071: FLdPrThis
  loc_6BF072: VCallAd Control_ID_grdAyuda
  loc_6BF075: FStAdFunc var_EC
  loc_6BF078: FLdPr var_EC
  loc_6BF07B: LateIdCall
  loc_6BF083: FFreeStr var_F0 = ""
  loc_6BF08A: FFree1Ad var_EC
  loc_6BF08D: FFree1Var var_B8 = ""
  loc_6BF090: LitStr "Razón Social"
  loc_6BF093: LitI4 9
  loc_6BF098: ImpAdCallI2 Chr$()
  loc_6BF09D: FStStrNoPop var_F0
  loc_6BF0A0: ConcatStr
  loc_6BF0A1: FStStrNoPop var_124
  loc_6BF0A4: LitStr "^C[R] (20 car.)"
  loc_6BF0A7: ConcatStr
  loc_6BF0A8: CVarStr var_B8
  loc_6BF0AB: PopAdLdVar
  loc_6BF0AC: FLdPrThis
  loc_6BF0AD: VCallAd Control_ID_grdAyuda
  loc_6BF0B0: FStAdFunc var_EC
  loc_6BF0B3: FLdPr var_EC
  loc_6BF0B6: LateIdCall
  loc_6BF0BE: FFreeStr var_F0 = ""
  loc_6BF0C5: FFree1Ad var_EC
  loc_6BF0C8: FFree1Var var_B8 = ""
  loc_6BF0CB: LitStr "Domicilio"
  loc_6BF0CE: LitI4 9
  loc_6BF0D3: ImpAdCallI2 Chr$()
  loc_6BF0D8: FStStrNoPop var_F0
  loc_6BF0DB: ConcatStr
  loc_6BF0DC: FStStrNoPop var_124
  loc_6BF0DF: LitStr "^C[D] (30 car.)"
  loc_6BF0E2: ConcatStr
  loc_6BF0E3: CVarStr var_B8
  loc_6BF0E6: PopAdLdVar
  loc_6BF0E7: FLdPrThis
  loc_6BF0E8: VCallAd Control_ID_grdAyuda
  loc_6BF0EB: FStAdFunc var_EC
  loc_6BF0EE: FLdPr var_EC
  loc_6BF0F1: LateIdCall
  loc_6BF0F9: FFreeStr var_F0 = ""
  loc_6BF100: FFree1Ad var_EC
  loc_6BF103: FFree1Var var_B8 = ""
  loc_6BF106: LitStr "Telefono"
  loc_6BF109: LitI4 9
  loc_6BF10E: ImpAdCallI2 Chr$()
  loc_6BF113: FStStrNoPop var_F0
  loc_6BF116: ConcatStr
  loc_6BF117: FStStrNoPop var_124
  loc_6BF11A: LitStr "^C[T] (15 car.)"
  loc_6BF11D: ConcatStr
  loc_6BF11E: CVarStr var_B8
  loc_6BF121: PopAdLdVar
  loc_6BF122: FLdPrThis
  loc_6BF123: VCallAd Control_ID_grdAyuda
  loc_6BF126: FStAdFunc var_EC
  loc_6BF129: FLdPr var_EC
  loc_6BF12C: LateIdCall
  loc_6BF134: FFreeStr var_F0 = ""
  loc_6BF13B: FFree1Ad var_EC
  loc_6BF13E: FFree1Var var_B8 = ""
  loc_6BF141: ImpAdLdI4 MemVar_74BEF4
  loc_6BF144: LitI4 9
  loc_6BF149: ImpAdCallI2 Chr$()
  loc_6BF14E: FStStrNoPop var_F0
  loc_6BF151: ConcatStr
  loc_6BF152: FStStrNoPop var_124
  loc_6BF155: LitStr "^C[C] (13 car.)"
  loc_6BF158: ConcatStr
  loc_6BF159: CVarStr var_B8
  loc_6BF15C: PopAdLdVar
  loc_6BF15D: FLdPrThis
  loc_6BF15E: VCallAd Control_ID_grdAyuda
  loc_6BF161: FStAdFunc var_EC
  loc_6BF164: FLdPr var_EC
  loc_6BF167: LateIdCall
  loc_6BF16F: FFreeStr var_F0 = ""
  loc_6BF176: FFree1Ad var_EC
  loc_6BF179: FFree1Var var_B8 = ""
  loc_6BF17C: LitStr "C. Corriente"
  loc_6BF17F: LitI4 9
  loc_6BF184: ImpAdCallI2 Chr$()
  loc_6BF189: FStStrNoPop var_F0
  loc_6BF18C: ConcatStr
  loc_6BF18D: FStStrNoPop var_124
  loc_6BF190: LitStr "^C[B] (""Si"" o ""No"")"
  loc_6BF193: ConcatStr
  loc_6BF194: CVarStr var_B8
  loc_6BF197: PopAdLdVar
  loc_6BF198: FLdPrThis
  loc_6BF199: VCallAd Control_ID_grdAyuda
  loc_6BF19C: FStAdFunc var_EC
  loc_6BF19F: FLdPr var_EC
  loc_6BF1A2: LateIdCall
  loc_6BF1AA: FFreeStr var_F0 = ""
  loc_6BF1B1: FFree1Ad var_EC
  loc_6BF1B4: FFree1Var var_B8 = ""
  loc_6BF1B7: LitStr "IVA"
  loc_6BF1BA: LitI4 9
  loc_6BF1BF: ImpAdCallI2 Chr$()
  loc_6BF1C4: FStStrNoPop var_F0
  loc_6BF1C7: ConcatStr
  loc_6BF1C8: FStStrNoPop var_124
  loc_6BF1CB: LitStr "^C[I] (max. 24 car.)"
  loc_6BF1CE: ConcatStr
  loc_6BF1CF: CVarStr var_B8
  loc_6BF1D2: PopAdLdVar
  loc_6BF1D3: FLdPrThis
  loc_6BF1D4: VCallAd Control_ID_grdAyuda
  loc_6BF1D7: FStAdFunc var_EC
  loc_6BF1DA: FLdPr var_EC
  loc_6BF1DD: LateIdCall
  loc_6BF1E5: FFreeStr var_F0 = ""
  loc_6BF1EC: FFree1Ad var_EC
  loc_6BF1EF: FFree1Var var_B8 = ""
  loc_6BF1F2: LitVarStr var_98, "Volumen desc."
  loc_6BF1F7: LitI4 9
  loc_6BF1FC: FLdRfVar var_B8
  loc_6BF1FF: ImpAdCallFPR4  = Chr()
  loc_6BF204: FLdRfVar var_B8
  loc_6BF207: ConcatVar var_D8
  loc_6BF20B: LitVarStr var_A8, "^C[A] (5 car.)"
  loc_6BF210: ConcatVar var_E8
  loc_6BF214: CStrVarTmp
  loc_6BF215: CVarStr var_110
  loc_6BF218: PopAdLdVar
  loc_6BF219: FLdPrThis
  loc_6BF21A: VCallAd Control_ID_grdAyuda
  loc_6BF21D: FStAdFunc var_EC
  loc_6BF220: FLdPr var_EC
  loc_6BF223: LateIdCall
  loc_6BF22B: FFree1Ad var_EC
  loc_6BF22E: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_6BF239: LitVarStr var_98, "Moneda"
  loc_6BF23E: LitI4 9
  loc_6BF243: FLdRfVar var_B8
  loc_6BF246: ImpAdCallFPR4  = Chr()
  loc_6BF24B: FLdRfVar var_B8
  loc_6BF24E: ConcatVar var_D8
  loc_6BF252: LitVarStr var_A8, "^C[M] (5 car.)"
  loc_6BF257: ConcatVar var_E8
  loc_6BF25B: CStrVarTmp
  loc_6BF25C: CVarStr var_110
  loc_6BF25F: PopAdLdVar
  loc_6BF260: FLdPrThis
  loc_6BF261: VCallAd Control_ID_grdAyuda
  loc_6BF264: FStAdFunc var_EC
  loc_6BF267: FLdPr var_EC
  loc_6BF26A: LateIdCall
  loc_6BF272: FFree1Ad var_EC
  loc_6BF275: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_6BF280: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_6BF285: ImpAdCallI2 Proc_142_8_5D8068()
  loc_6BF28A: AndI4
  loc_6BF28B: NotI4
  loc_6BF28C: FLdPrThis
  loc_6BF28D: VCallAd Control_ID_cmdLockMaxTicketNumber
  loc_6BF290: FStAdFunc var_EC
  loc_6BF293: FLdPr var_EC
  loc_6BF296: Me.CommandButton.Enabled = from_stack_1b
  loc_6BF29B: FFree1Ad var_EC
  loc_6BF29E: LitI2_Byte 0
  loc_6BF2A0: PopTmpLdAd2 var_F2
  loc_6BF2A3: Call cmdBarSide_Click(from_stack_1v)
  loc_6BF2A8: ExitProcHresult
End Sub

Private Sub Form_Activate() '6ABFAC
  'Data Table: 454520
  loc_6AB8A0: FLdPr Me
  loc_6AB8A3: MemLdI2 global_60
  loc_6AB8A6: BranchF loc_6AB8AA
  loc_6AB8A9: ExitProcHresult
  loc_6AB8AA: LitI2_Byte &HFF
  loc_6AB8AC: FLdPr Me
  loc_6AB8AF: MemStI2 global_60
  loc_6AB8B2: from_stack_1v = Proc_107_45_613A08()
  loc_6AB8B7: ImpAdLdPr unk_454524
  loc_6AB8BA: MemLdStr global_388
  loc_6AB8BD: CStrI4
  loc_6AB8BF: FStStrNoPop var_B4
  loc_6AB8C2: FLdPrThis
  loc_6AB8C3: VCallAd Control_ID_txtMaxTicket
  loc_6AB8C6: FStAdFunc var_B8
  loc_6AB8C9: FLdPr var_B8
  loc_6AB8CC: Me.Text = from_stack_1
  loc_6AB8D1: FFree1Str var_B4
  loc_6AB8D4: FFree1Ad var_B8
  loc_6AB8D7: LitI2_Byte 1
  loc_6AB8D9: FStI2 var_86
  loc_6AB8DC: FLdRfVar var_B8
  loc_6AB8DF: ImpAdLdRf MemVar_7520D4
  loc_6AB8E2: NewIfNullPr Global
  loc_6AB8E5:  = Global.Printers
  loc_6AB8EA: FLdZeroAd var_B8
  loc_6AB8ED: FStAdFuncNoPop
  loc_6AB8F0: FLdRfVar var_90
  loc_6AB8F3: ForEachCollObj
  loc_6AB8FB: FLdI2 var_86
  loc_6AB8FE: LitI2_Byte &H20
  loc_6AB900: GtI2
  loc_6AB901: BranchF loc_6AB90A
  loc_6AB904: ExitForCollObj
  loc_6AB90A: FLdPr var_90
  loc_6AB90D: LateIdLdVar var_D0 DispID_28 1
  loc_6AB914: PopAd
  loc_6AB916: LitI4 &H32
  loc_6AB91B: FLdRfVar var_D0
  loc_6AB91E: CStrVarTmp
  loc_6AB91F: FStStrNoPop var_B4
  loc_6AB922: ImpAdCallI2 Left$(, )
  loc_6AB927: FStStrNoPop var_D4
  loc_6AB92A: FLdI2 var_86
  loc_6AB92D: CI4UI1
  loc_6AB92E: FLdRfVar var_A8
  loc_6AB931: Ary1StStrCopy
  loc_6AB932: FFreeStr var_B4 = ""
  loc_6AB939: FFree1Var var_D0 = ""
  loc_6AB93C: FLdI2 var_86
  loc_6AB93F: ImpAdLdPr unk_454524
  loc_6AB942: MemStI2 global_384
  loc_6AB945: FLdI2 var_86
  loc_6AB948: LitI2_Byte 1
  loc_6AB94A: AddI2
  loc_6AB94B: FStI2 var_86
  loc_6AB94E: FLdRfVar var_90
  loc_6AB951: NextEachCollObj
  loc_6AB959: FLdI2 var_86
  loc_6AB95C: LitI2_Byte 1
  loc_6AB95E: EqI2
  loc_6AB95F: BranchF loc_6AB9A9
  loc_6AB962: LitVar_Missing var_144
  loc_6AB965: LitVar_Missing var_124
  loc_6AB968: LitVarStr var_F4, "CEM-44"
  loc_6AB96D: FStVarCopyObj var_104
  loc_6AB970: FLdRfVar var_104
  loc_6AB973: LitI4 &H40
  loc_6AB978: LitVarStr var_E4, "No hay impresora definida"
  loc_6AB97D: FStVarCopyObj var_D0
  loc_6AB980: FLdRfVar var_D0
  loc_6AB983: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AB988: FFreeVar var_D0 = "": var_104 = "": var_124 = ""
  loc_6AB993: ILdRf Me
  loc_6AB996: FStAdNoPop
  loc_6AB99A: ImpAdLdRf MemVar_7520D4
  loc_6AB99D: NewIfNullPr Global
  loc_6AB9A0: Global.Unload from_stack_1
  loc_6AB9A5: FFree1Ad var_B8
  loc_6AB9A8: ExitProcHresult
  loc_6AB9A9: ImpAdLdUI1
  loc_6AB9AD: CI2UI1
  loc_6AB9AF: LitI2_Byte 8
  loc_6AB9B1: GtI2
  loc_6AB9B2: BranchF loc_6ABBEC
  loc_6AB9B5: LitI2_Byte 1
  loc_6AB9B7: FLdPrThis
  loc_6AB9B8: VCallAd Control_ID_vscSurtidores
  loc_6AB9BB: FStAdFunc var_B8
  loc_6AB9BE: FLdPr var_B8
  loc_6AB9C1: Me.Min = from_stack_1
  loc_6AB9C6: FFree1Ad var_B8
  loc_6AB9C9: ImpAdLdUI1
  loc_6AB9CD: CI2UI1
  loc_6AB9CF: LitI2_Byte 7
  loc_6AB9D1: SubI2
  loc_6AB9D2: FLdPrThis
  loc_6AB9D3: VCallAd Control_ID_vscSurtidores
  loc_6AB9D6: FStAdFunc var_B8
  loc_6AB9D9: FLdPr var_B8
  loc_6AB9DC: Me.Max = from_stack_1
  loc_6AB9E1: FFree1Ad var_B8
  loc_6AB9E4: LitI2_Byte &HFF
  loc_6AB9E6: FLdPrThis
  loc_6AB9E7: VCallAd Control_ID_vscSurtidores
  loc_6AB9EA: FStAdFunc var_B8
  loc_6AB9ED: FLdPr var_B8
  loc_6AB9F0: Me.Visible = from_stack_1b
  loc_6AB9F5: FFree1Ad var_B8
  loc_6AB9F8: LitI2_Byte 0
  loc_6AB9FA: FLdRfVar var_86
  loc_6AB9FD: LitI2_Byte 7
  loc_6AB9FF: ForI2 var_148
  loc_6ABA05: ImpAdLdRf MemVar_74BED4
  loc_6ABA08: CVarRef
  loc_6ABA0D: FLdRfVar var_D0
  loc_6ABA10: ImpAdCallFPR4  = Trim()
  loc_6ABA15: FLdRfVar var_D0
  loc_6ABA18: LitVarStr var_F4, " # "
  loc_6ABA1D: ConcatVar var_104
  loc_6ABA21: LitI4 1
  loc_6ABA26: LitI4 1
  loc_6ABA2B: LitVarStr var_134, "@@"
  loc_6ABA30: FStVarCopyObj var_144
  loc_6ABA33: FLdRfVar var_144
  loc_6ABA36: FLdI2 var_86
  loc_6ABA39: LitI2_Byte 1
  loc_6ABA3B: AddI2
  loc_6ABA3C: CVarI2 var_124
  loc_6ABA3F: FLdRfVar var_158
  loc_6ABA42: ImpAdCallFPR4  = Format(, )
  loc_6ABA47: FLdRfVar var_158
  loc_6ABA4A: ConcatVar var_168
  loc_6ABA4E: LitVarStr var_178, " :"
  loc_6ABA53: ConcatVar var_188
  loc_6ABA57: CStrVarVal var_B4
  loc_6ABA5B: FLdRfVar var_18C
  loc_6ABA5E: FLdI2 var_86
  loc_6ABA61: FLdPrThis
  loc_6ABA62: VCallAd Control_ID_lblSurtidor
  loc_6ABA65: FStAdFunc var_B8
  loc_6ABA68: FLdPr var_B8
  loc_6ABA6B: Set from_stack_2 = Me(from_stack_1)
  loc_6ABA70: FLdPr var_18C
  loc_6ABA73: Me.Caption = from_stack_1
  loc_6ABA78: FFree1Str var_B4
  loc_6ABA7B: FFreeAd var_B8 = ""
  loc_6ABA82: FFreeVar var_D0 = "": var_124 = "": var_144 = "": var_104 = "": var_158 = "": var_168 = ""
  loc_6ABA93: LitVar_Missing var_E4
  loc_6ABA96: PopAdLdVar
  loc_6ABA97: LitStr "A Pedido"
  loc_6ABA9A: FLdRfVar var_18C
  loc_6ABA9D: FLdI2 var_86
  loc_6ABAA0: FLdPrThis
  loc_6ABAA1: VCallAd Control_ID_cmbTipo
  loc_6ABAA4: FStAdFunc var_B8
  loc_6ABAA7: FLdPr var_B8
  loc_6ABAAA: Set from_stack_2 = Me(from_stack_1)
  loc_6ABAAF: FLdPr var_18C
  loc_6ABAB2: Me.AddItem from_stack_1, from_stack_2
  loc_6ABAB7: FFreeAd var_B8 = ""
  loc_6ABABE: LitVar_Missing var_E4
  loc_6ABAC1: PopAdLdVar
  loc_6ABAC2: LitStr "Automaticamente"
  loc_6ABAC5: FLdRfVar var_18C
  loc_6ABAC8: FLdI2 var_86
  loc_6ABACB: FLdPrThis
  loc_6ABACC: VCallAd Control_ID_cmbTipo
  loc_6ABACF: FStAdFunc var_B8
  loc_6ABAD2: FLdPr var_B8
  loc_6ABAD5: Set from_stack_2 = Me(from_stack_1)
  loc_6ABADA: FLdPr var_18C
  loc_6ABADD: Me.AddItem from_stack_1, from_stack_2
  loc_6ABAE2: FFreeAd var_B8 = ""
  loc_6ABAE9: FLdI2 var_86
  loc_6ABAEC: LitI2_Byte 1
  loc_6ABAEE: AddI2
  loc_6ABAEF: CI4UI1
  loc_6ABAF0: ImpAdLdPr unk_454524
  loc_6ABAF3: MemLdRfVar from_stack_1.global_64
  loc_6ABAF6: AryInRecLdPr
  loc_6ABAFC: MemLdI2 global_0
  loc_6ABAFF: FLdRfVar var_18C
  loc_6ABB02: FLdI2 var_86
  loc_6ABB05: FLdPrThis
  loc_6ABB06: VCallAd Control_ID_cmbTipo
  loc_6ABB09: FStAdFunc var_B8
  loc_6ABB0C: FLdPr var_B8
  loc_6ABB0F: Set from_stack_2 = Me(from_stack_1)
  loc_6ABB14: FLdPr var_18C
  loc_6ABB17: Me.ListIndex = from_stack_1
  loc_6ABB1C: FFreeAd var_B8 = ""
  loc_6ABB23: LitI2_Byte 1
  loc_6ABB25: FLdRfVar var_88
  loc_6ABB28: ImpAdLdPr unk_454524
  loc_6ABB2B: MemLdI2 global_384
  loc_6ABB2E: ForI2 var_190
  loc_6ABB34: LitVar_Missing var_E4
  loc_6ABB37: PopAdLdVar
  loc_6ABB38: FLdI2 var_88
  loc_6ABB3B: CI4UI1
  loc_6ABB3C: FLdRfVar var_A8
  loc_6ABB3F: Ary1LdI4
  loc_6ABB40: FLdRfVar var_18C
  loc_6ABB43: FLdI2 var_86
  loc_6ABB46: FLdPrThis
  loc_6ABB47: VCallAd Control_ID_cmbImpresora
  loc_6ABB4A: FStAdFunc var_B8
  loc_6ABB4D: FLdPr var_B8
  loc_6ABB50: Set from_stack_2 = Me(from_stack_1)
  loc_6ABB55: FLdPr var_18C
  loc_6ABB58: Me.AddItem from_stack_1, from_stack_2
  loc_6ABB5D: FFreeAd var_B8 = ""
  loc_6ABB64: FLdRfVar var_88
  loc_6ABB67: NextI2 var_190, loc_6ABB34
  loc_6ABB6C: FLdI2 var_86
  loc_6ABB6F: LitI2_Byte 1
  loc_6ABB71: AddI2
  loc_6ABB72: CI4UI1
  loc_6ABB73: ImpAdLdPr unk_454524
  loc_6ABB76: MemLdRfVar from_stack_1.global_0
  loc_6ABB79: AryInRecLdPr
  loc_6ABB7F: MemLdI2 global_0
  loc_6ABB82: FLdRfVar var_18C
  loc_6ABB85: FLdI2 var_86
  loc_6ABB88: FLdPrThis
  loc_6ABB89: VCallAd Control_ID_cmbImpresora
  loc_6ABB8C: FStAdFunc var_B8
  loc_6ABB8F: FLdPr var_B8
  loc_6ABB92: Set from_stack_2 = Me(from_stack_1)
  loc_6ABB97: FLdPr var_18C
  loc_6ABB9A: Me.ListIndex = from_stack_1
  loc_6ABB9F: FFreeAd var_B8 = ""
  loc_6ABBA6: FLdI2 var_86
  loc_6ABBA9: LitI2_Byte 1
  loc_6ABBAB: AddI2
  loc_6ABBAC: CI4UI1
  loc_6ABBAD: ImpAdLdPr unk_454524
  loc_6ABBB0: MemLdRfVar from_stack_1.global_256
  loc_6ABBB3: AryInRecLdRf
  loc_6ABBB9: CDargRef
  loc_6ABBBD: FLdRfVar var_18C
  loc_6ABBC0: FLdI2 var_86
  loc_6ABBC3: FLdPrThis
  loc_6ABBC4: VCallAd Control_ID_txtPrefijo
  loc_6ABBC7: FStAdFunc var_B8
  loc_6ABBCA: FLdPr var_B8
  loc_6ABBCD: Set from_stack_2 = Me(from_stack_1)
  loc_6ABBD2: FLdPr var_18C
  loc_6ABBD5: LateIdSt
  loc_6ABBDA: FFreeAd var_B8 = ""
  loc_6ABBE1: FLdRfVar var_86
  loc_6ABBE4: NextI2 var_148, loc_6ABA05
  loc_6ABBE9: Branch loc_6ABEAC
  loc_6ABBEC: LitI2_Byte 0
  loc_6ABBEE: FLdPrThis
  loc_6ABBEF: VCallAd Control_ID_vscSurtidores
  loc_6ABBF2: FStAdFunc var_B8
  loc_6ABBF5: FLdPr var_B8
  loc_6ABBF8: Me.Visible = from_stack_1b
  loc_6ABBFD: FFree1Ad var_B8
  loc_6ABC00: LitI2_Byte 0
  loc_6ABC02: FLdRfVar var_86
  loc_6ABC05: ImpAdLdUI1
  loc_6ABC09: CI2UI1
  loc_6ABC0B: LitI2_Byte 1
  loc_6ABC0D: SubI2
  loc_6ABC0E: ForI2 var_194
  loc_6ABC14: ImpAdLdRf MemVar_74BED4
  loc_6ABC17: CVarRef
  loc_6ABC1C: FLdRfVar var_D0
  loc_6ABC1F: ImpAdCallFPR4  = Trim()
  loc_6ABC24: FLdRfVar var_D0
  loc_6ABC27: LitVarStr var_F4, " # "
  loc_6ABC2C: ConcatVar var_104
  loc_6ABC30: LitI4 1
  loc_6ABC35: LitI4 1
  loc_6ABC3A: LitVarStr var_134, "@@"
  loc_6ABC3F: FStVarCopyObj var_144
  loc_6ABC42: FLdRfVar var_144
  loc_6ABC45: FLdI2 var_86
  loc_6ABC48: LitI2_Byte 1
  loc_6ABC4A: AddI2
  loc_6ABC4B: CVarI2 var_124
  loc_6ABC4E: FLdRfVar var_158
  loc_6ABC51: ImpAdCallFPR4  = Format(, )
  loc_6ABC56: FLdRfVar var_158
  loc_6ABC59: ConcatVar var_168
  loc_6ABC5D: LitVarStr var_178, " :"
  loc_6ABC62: ConcatVar var_188
  loc_6ABC66: CStrVarVal var_B4
  loc_6ABC6A: FLdRfVar var_18C
  loc_6ABC6D: FLdI2 var_86
  loc_6ABC70: FLdPrThis
  loc_6ABC71: VCallAd Control_ID_lblSurtidor
  loc_6ABC74: FStAdFunc var_B8
  loc_6ABC77: FLdPr var_B8
  loc_6ABC7A: Set from_stack_2 = Me(from_stack_1)
  loc_6ABC7F: FLdPr var_18C
  loc_6ABC82: Me.Caption = from_stack_1
  loc_6ABC87: FFree1Str var_B4
  loc_6ABC8A: FFreeAd var_B8 = ""
  loc_6ABC91: FFreeVar var_D0 = "": var_124 = "": var_144 = "": var_104 = "": var_158 = "": var_168 = ""
  loc_6ABCA2: LitVar_Missing var_E4
  loc_6ABCA5: PopAdLdVar
  loc_6ABCA6: LitStr "A Pedido"
  loc_6ABCA9: FLdRfVar var_18C
  loc_6ABCAC: FLdI2 var_86
  loc_6ABCAF: FLdPrThis
  loc_6ABCB0: VCallAd Control_ID_cmbTipo
  loc_6ABCB3: FStAdFunc var_B8
  loc_6ABCB6: FLdPr var_B8
  loc_6ABCB9: Set from_stack_2 = Me(from_stack_1)
  loc_6ABCBE: FLdPr var_18C
  loc_6ABCC1: Me.AddItem from_stack_1, from_stack_2
  loc_6ABCC6: FFreeAd var_B8 = ""
  loc_6ABCCD: LitVar_Missing var_E4
  loc_6ABCD0: PopAdLdVar
  loc_6ABCD1: LitStr "Automaticamente"
  loc_6ABCD4: FLdRfVar var_18C
  loc_6ABCD7: FLdI2 var_86
  loc_6ABCDA: FLdPrThis
  loc_6ABCDB: VCallAd Control_ID_cmbTipo
  loc_6ABCDE: FStAdFunc var_B8
  loc_6ABCE1: FLdPr var_B8
  loc_6ABCE4: Set from_stack_2 = Me(from_stack_1)
  loc_6ABCE9: FLdPr var_18C
  loc_6ABCEC: Me.AddItem from_stack_1, from_stack_2
  loc_6ABCF1: FFreeAd var_B8 = ""
  loc_6ABCF8: FLdI2 var_86
  loc_6ABCFB: LitI2_Byte 1
  loc_6ABCFD: AddI2
  loc_6ABCFE: CI4UI1
  loc_6ABCFF: ImpAdLdPr unk_454524
  loc_6ABD02: MemLdRfVar from_stack_1.global_64
  loc_6ABD05: AryInRecLdPr
  loc_6ABD0B: MemLdI2 global_0
  loc_6ABD0E: FLdRfVar var_18C
  loc_6ABD11: FLdI2 var_86
  loc_6ABD14: FLdPrThis
  loc_6ABD15: VCallAd Control_ID_cmbTipo
  loc_6ABD18: FStAdFunc var_B8
  loc_6ABD1B: FLdPr var_B8
  loc_6ABD1E: Set from_stack_2 = Me(from_stack_1)
  loc_6ABD23: FLdPr var_18C
  loc_6ABD26: Me.ListIndex = from_stack_1
  loc_6ABD2B: FFreeAd var_B8 = ""
  loc_6ABD32: LitI2_Byte 1
  loc_6ABD34: FLdRfVar var_88
  loc_6ABD37: ImpAdLdPr unk_454524
  loc_6ABD3A: MemLdI2 global_384
  loc_6ABD3D: ForI2 var_198
  loc_6ABD43: LitVar_Missing var_E4
  loc_6ABD46: PopAdLdVar
  loc_6ABD47: FLdI2 var_88
  loc_6ABD4A: CI4UI1
  loc_6ABD4B: FLdRfVar var_A8
  loc_6ABD4E: Ary1LdI4
  loc_6ABD4F: FLdRfVar var_18C
  loc_6ABD52: FLdI2 var_86
  loc_6ABD55: FLdPrThis
  loc_6ABD56: VCallAd Control_ID_cmbImpresora
  loc_6ABD59: FStAdFunc var_B8
  loc_6ABD5C: FLdPr var_B8
  loc_6ABD5F: Set from_stack_2 = Me(from_stack_1)
  loc_6ABD64: FLdPr var_18C
  loc_6ABD67: Me.AddItem from_stack_1, from_stack_2
  loc_6ABD6C: FFreeAd var_B8 = ""
  loc_6ABD73: FLdRfVar var_88
  loc_6ABD76: NextI2 var_198, loc_6ABD43
  loc_6ABD7B: FLdI2 var_86
  loc_6ABD7E: LitI2_Byte 1
  loc_6ABD80: AddI2
  loc_6ABD81: CI4UI1
  loc_6ABD82: ImpAdLdPr unk_454524
  loc_6ABD85: MemLdRfVar from_stack_1.global_0
  loc_6ABD88: AryInRecLdPr
  loc_6ABD8E: MemLdI2 global_0
  loc_6ABD91: FLdRfVar var_18C
  loc_6ABD94: FLdI2 var_86
  loc_6ABD97: FLdPrThis
  loc_6ABD98: VCallAd Control_ID_cmbImpresora
  loc_6ABD9B: FStAdFunc var_B8
  loc_6ABD9E: FLdPr var_B8
  loc_6ABDA1: Set from_stack_2 = Me(from_stack_1)
  loc_6ABDA6: FLdPr var_18C
  loc_6ABDA9: Me.ListIndex = from_stack_1
  loc_6ABDAE: FFreeAd var_B8 = ""
  loc_6ABDB5: FLdI2 var_86
  loc_6ABDB8: LitI2_Byte 1
  loc_6ABDBA: AddI2
  loc_6ABDBB: CI4UI1
  loc_6ABDBC: ImpAdLdPr unk_454524
  loc_6ABDBF: MemLdRfVar from_stack_1.global_256
  loc_6ABDC2: AryInRecLdRf
  loc_6ABDC8: CDargRef
  loc_6ABDCC: FLdRfVar var_18C
  loc_6ABDCF: FLdI2 var_86
  loc_6ABDD2: FLdPrThis
  loc_6ABDD3: VCallAd Control_ID_txtPrefijo
  loc_6ABDD6: FStAdFunc var_B8
  loc_6ABDD9: FLdPr var_B8
  loc_6ABDDC: Set from_stack_2 = Me(from_stack_1)
  loc_6ABDE1: FLdPr var_18C
  loc_6ABDE4: LateIdSt
  loc_6ABDE9: FFreeAd var_B8 = ""
  loc_6ABDF0: FLdRfVar var_86
  loc_6ABDF3: NextI2 var_194, loc_6ABC14
  loc_6ABDF8: ImpAdLdUI1
  loc_6ABDFC: CI2UI1
  loc_6ABDFE: FLdRfVar var_86
  loc_6ABE01: LitI2_Byte 7
  loc_6ABE03: ForI2 var_19C
  loc_6ABE09: LitI2_Byte 0
  loc_6ABE0B: FLdRfVar var_18C
  loc_6ABE0E: FLdI2 var_86
  loc_6ABE11: FLdPrThis
  loc_6ABE12: VCallAd Control_ID_cmbTipo
  loc_6ABE15: FStAdFunc var_B8
  loc_6ABE18: FLdPr var_B8
  loc_6ABE1B: Set from_stack_2 = Me(from_stack_1)
  loc_6ABE20: FLdPr var_18C
  loc_6ABE23: Me.Visible = from_stack_1b
  loc_6ABE28: FFreeAd var_B8 = ""
  loc_6ABE2F: LitI2_Byte 0
  loc_6ABE31: FLdRfVar var_18C
  loc_6ABE34: FLdI2 var_86
  loc_6ABE37: FLdPrThis
  loc_6ABE38: VCallAd Control_ID_cmbImpresora
  loc_6ABE3B: FStAdFunc var_B8
  loc_6ABE3E: FLdPr var_B8
  loc_6ABE41: Set from_stack_2 = Me(from_stack_1)
  loc_6ABE46: FLdPr var_18C
  loc_6ABE49: Me.Visible = from_stack_1b
  loc_6ABE4E: FFreeAd var_B8 = ""
  loc_6ABE55: LitI2_Byte 0
  loc_6ABE57: FLdRfVar var_18C
  loc_6ABE5A: FLdI2 var_86
  loc_6ABE5D: FLdPrThis
  loc_6ABE5E: VCallAd Control_ID_lblSurtidor
  loc_6ABE61: FStAdFunc var_B8
  loc_6ABE64: FLdPr var_B8
  loc_6ABE67: Set from_stack_2 = Me(from_stack_1)
  loc_6ABE6C: FLdPr var_18C
  loc_6ABE6F: Me.Visible = from_stack_1b
  loc_6ABE74: FFreeAd var_B8 = ""
  loc_6ABE7B: LitVar_FALSE
  loc_6ABE7F: PopAdLdVar
  loc_6ABE80: FLdRfVar var_18C
  loc_6ABE83: FLdI2 var_86
  loc_6ABE86: FLdPrThis
  loc_6ABE87: VCallAd Control_ID_txtPrefijo
  loc_6ABE8A: FStAdFunc var_B8
  loc_6ABE8D: FLdPr var_B8
  loc_6ABE90: Set from_stack_2 = Me(from_stack_1)
  loc_6ABE95: FLdPr var_18C
  loc_6ABE98: LateIdSt
  loc_6ABE9D: FFreeAd var_B8 = ""
  loc_6ABEA4: FLdRfVar var_86
  loc_6ABEA7: NextI2 var_19C, loc_6ABE09
  loc_6ABEAC: FLdRfVar var_AC
  loc_6ABEAF: FLdRfVar var_B0
  loc_6ABEB2: ImpAdCallFPR4  = Proc_158_0_5ED660()
  loc_6ABEB7: ILdRf var_AC
  loc_6ABEBA: LitStr "0"
  loc_6ABEBD: EqStr
  loc_6ABEBF: BranchF loc_6ABF29
  loc_6ABEC2: LitI2_Byte &HFF
  loc_6ABEC4: FLdRfVar var_18C
  loc_6ABEC7: LitI2_Byte 0
  loc_6ABEC9: FLdPrThis
  loc_6ABECA: VCallAd Control_ID_optTipoLimite
  loc_6ABECD: FStAdFunc var_B8
  loc_6ABED0: FLdPr var_B8
  loc_6ABED3: Set from_stack_2 = Me(from_stack_1)
  loc_6ABED8: FLdPr var_18C
  loc_6ABEDB: Me.Value = from_stack_1b
  loc_6ABEE0: FFreeAd var_B8 = ""
  loc_6ABEE7: LitI4 1
  loc_6ABEEC: LitI4 1
  loc_6ABEF1: ImpAdLdRf MemVar_74C364
  loc_6ABEF4: CVarRef
  loc_6ABEF9: ILdRf var_B0
  loc_6ABEFC: CR8Str
  loc_6ABEFE: ImpAdLdFPR4 MemVar_74C2E0
  loc_6ABF01: DivR8
  loc_6ABF02: CVarR8
  loc_6ABF06: ImpAdCallI2 Format$(, )
  loc_6ABF0B: FStStrNoPop var_B4
  loc_6ABF0E: FLdPrThis
  loc_6ABF0F: VCallAd Control_ID_txtMinimo
  loc_6ABF12: FStAdFunc var_B8
  loc_6ABF15: FLdPr var_B8
  loc_6ABF18: Me.Text = from_stack_1
  loc_6ABF1D: FFree1Str var_B4
  loc_6ABF20: FFree1Ad var_B8
  loc_6ABF23: FFree1Var var_D0 = ""
  loc_6ABF26: Branch loc_6ABF94
  loc_6ABF29: LitI2_Byte &HFF
  loc_6ABF2B: FLdRfVar var_18C
  loc_6ABF2E: LitI2_Byte 1
  loc_6ABF30: FLdPrThis
  loc_6ABF31: VCallAd Control_ID_optTipoLimite
  loc_6ABF34: FStAdFunc var_B8
  loc_6ABF37: FLdPr var_B8
  loc_6ABF3A: Set from_stack_2 = Me(from_stack_1)
  loc_6ABF3F: FLdPr var_18C
  loc_6ABF42: Me.Value = from_stack_1b
  loc_6ABF47: FFreeAd var_B8 = ""
  loc_6ABF4E: LitI4 1
  loc_6ABF53: LitI4 1
  loc_6ABF58: LitVarStr var_F4, "######0.00"
  loc_6ABF5D: FStVarCopyObj var_104
  loc_6ABF60: FLdRfVar var_104
  loc_6ABF63: ILdRf var_B0
  loc_6ABF66: CR8Str
  loc_6ABF68: LitI2_Byte &H64
  loc_6ABF6A: CR8I2
  loc_6ABF6B: DivR8
  loc_6ABF6C: CVarR8
  loc_6ABF70: ImpAdCallI2 Format$(, )
  loc_6ABF75: FStStrNoPop var_B4
  loc_6ABF78: FLdPrThis
  loc_6ABF79: VCallAd Control_ID_txtMinimo
  loc_6ABF7C: FStAdFunc var_B8
  loc_6ABF7F: FLdPr var_B8
  loc_6ABF82: Me.Text = from_stack_1
  loc_6ABF87: FFree1Str var_B4
  loc_6ABF8A: FFree1Ad var_B8
  loc_6ABF8D: FFreeVar var_D0 = ""
  loc_6ABF94: LitI2_Byte 0
  loc_6ABF96: FLdPrThis
  loc_6ABF97: VCallAd Control_ID_cmbImpuesto
  loc_6ABF9A: FStAdFunc var_B8
  loc_6ABF9D: FLdPr var_B8
  loc_6ABFA0: Me.ListIndex = from_stack_1
  loc_6ABFA5: FFree1Ad var_B8
  loc_6ABFA8: ExitProcHresult
End Sub

Private Sub lblBarSide_Click(arg_C) '5C9B6C
  'Data Table: 454520
  loc_5C9B60: ILdRf arg_C
  loc_5C9B63: Call cmdBarSide_Click(from_stack_1v)
  loc_5C9B68: ExitProcHresult
  loc_5C9B69: ModI2
End Sub

Private Sub cmdDefault_Click() '6051C4
  'Data Table: 454520
  loc_6050F4: FLdPr Me
  loc_6050F7: MemLdStr global_64
  loc_6050FA: LitStr vbNullString
  loc_6050FD: NeStr
  loc_6050FF: BranchF loc_605197
  loc_605102: LitVar_Missing var_108
  loc_605105: LitVar_Missing var_E8
  loc_605108: LitVar_Missing var_C8
  loc_60510B: LitI4 &H24
  loc_605110: LitVarStr var_98, "¿Desea setear éste ticket como default?"
  loc_605115: FStVarCopyObj var_A8
  loc_605118: FLdRfVar var_A8
  loc_60511B: ImpAdCallI2 MsgBox(, , , , )
  loc_605120: LitI4 6
  loc_605125: EqI4
  loc_605126: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_605131: BranchF loc_605194
  loc_605134: FLdRfVar var_112
  loc_605137: LitStr "NTV"
  loc_60513A: FLdPr Me
  loc_60513D: MemLdStr global_64
  loc_605140: ConcatStr
  loc_605141: PopTmpLdAdStr
  loc_605145: FLdRfVar var_10C
  loc_605148: ImpAdLdRf MemVar_74C760
  loc_60514B: NewIfNullPr Formx
  loc_60514E: from_stack_1v = Formx.global_4589716Get()
  loc_605153: FLdPr var_10C
  loc_605156: Formx.Hide
  loc_60515B: FLdI2 var_112
  loc_60515E: NotI4
  loc_60515F: FFree1Str var_110
  loc_605162: FFree1Ad var_10C
  loc_605165: BranchF loc_605194
  loc_605168: FLdRfVar var_A8
  loc_60516B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_605170: FLdRfVar var_A8
  loc_605173: CBoolVarNull
  loc_605175: FFree1Var var_A8 = ""
  loc_605178: BranchF loc_605191
  loc_60517B: ILdRf Me
  loc_60517E: FStAdNoPop
  loc_605182: ImpAdLdRf MemVar_7520D4
  loc_605185: NewIfNullPr Global
  loc_605188: Global.Unload from_stack_1
  loc_60518D: FFree1Ad var_10C
  loc_605190: ExitProcHresult
  loc_605191: Branch loc_605134
  loc_605194: Branch loc_6051C0
  loc_605197: LitVar_Missing var_108
  loc_60519A: LitVar_Missing var_E8
  loc_60519D: LitVar_Missing var_C8
  loc_6051A0: LitI4 &H10
  loc_6051A5: LitVarStr var_98, "Debe grabar un ticket antes de setearlo como default. Verifique por favor."
  loc_6051AA: FStVarCopyObj var_A8
  loc_6051AD: FLdRfVar var_A8
  loc_6051B0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6051B5: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_6051C0: ExitProcHresult
End Sub

Private Sub cmdCargar_Click() '648B80
  'Data Table: 454520
  loc_648934: OnErrorGoto loc_648ADD
  loc_648937: LitStr vbNullString
  loc_64893A: FStStrCopy var_8C
  loc_64893D: LitI2_Byte 1
  loc_64893F: FStI2 var_86
  loc_648942: FLdRfVar var_96
  loc_648945: FLdRfVar var_8C
  loc_648948: FLdRfVar var_94
  loc_64894B: ImpAdLdRf MemVar_74C760
  loc_64894E: NewIfNullPr Formx
  loc_648951: from_stack_1v = Formx.global_4589716Get()
  loc_648956: FLdPr var_94
  loc_648959: Formx.Font = from_stack_1
  loc_64895E: FLdI2 var_96
  loc_648961: NotI4
  loc_648962: FLdI2 var_86
  loc_648965: LitI2_Byte 5
  loc_648967: LtI2
  loc_648968: AndI4
  loc_648969: FFree1Ad var_94
  loc_64896C: BranchF loc_64898E
  loc_64896F: FLdRfVar var_A8
  loc_648972: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_648977: FLdRfVar var_A8
  loc_64897A: CBoolVarNull
  loc_64897C: FFree1Var var_A8 = ""
  loc_64897F: BranchF loc_64898B
  loc_648982: FLdI2 var_86
  loc_648985: LitI2_Byte 1
  loc_648987: AddI2
  loc_648988: FStI2 var_86
  loc_64898B: Branch loc_648942
  loc_64898E: FLdRfVar var_8C
  loc_648991: CVarRef
  loc_648996: FLdRfVar var_A8
  loc_648999: ImpAdCallFPR4  = Trim()
  loc_64899E: FLdRfVar var_A8
  loc_6489A1: CStrVarTmp
  loc_6489A2: FStStr var_8C
  loc_6489A5: FFree1Var var_A8 = ""
  loc_6489A8: LitStr vbNullString
  loc_6489AB: ImpAdLdRf MemVar_74CA9C
  loc_6489AE: NewIfNullPr frmListaDeSeleccion
  loc_6489B1: Call frmListaDeSeleccion.sSeleccionPut(from_stack_1v)
  loc_6489B6: ILdRf var_8C
  loc_6489B9: FnLenStr
  loc_6489BA: LitI4 1
  loc_6489BF: GtI4
  loc_6489C0: BranchF loc_648A16
  loc_6489C3: LitStr "Tipos de Tickets"
  loc_6489C6: ImpAdLdRf MemVar_74CA9C
  loc_6489C9: NewIfNullPr frmListaDeSeleccion
  loc_6489CC: Call frmListaDeSeleccion.sTituloPut(from_stack_1v)
  loc_6489D1: LitStr "Seleccione el tipo de ticket que desea cargar"
  loc_6489D4: ImpAdLdRf MemVar_74CA9C
  loc_6489D7: NewIfNullPr frmListaDeSeleccion
  loc_6489DA: Call frmListaDeSeleccion.sMensajePut(from_stack_1v)
  loc_6489DF: LitStr ";"
  loc_6489E2: ImpAdLdRf MemVar_74CA9C
  loc_6489E5: NewIfNullPr frmListaDeSeleccion
  loc_6489E8: Call frmListaDeSeleccion.sSeparadorPut(from_stack_1v)
  loc_6489ED: ILdRf var_8C
  loc_6489F0: ImpAdLdRf MemVar_74CA9C
  loc_6489F3: NewIfNullPr frmListaDeSeleccion
  loc_6489F6: Call frmListaDeSeleccion.sListaOpcionesPut(from_stack_1v)
  loc_6489FB: LitVar_Missing var_C8
  loc_6489FE: PopAdLdVar
  loc_6489FF: LitVarI4
  loc_648A07: PopAdLdVar
  loc_648A08: ImpAdLdRf MemVar_74CA9C
  loc_648A0B: NewIfNullPr frmListaDeSeleccion
  loc_648A0E: frmListaDeSeleccion.Show from_stack_1, from_stack_2
  loc_648A13: Branch loc_648A3F
  loc_648A16: LitVar_Missing var_118
  loc_648A19: LitVar_Missing var_F8
  loc_648A1C: LitVar_Missing var_D8
  loc_648A1F: LitI4 0
  loc_648A24: LitVarStr var_B8, "No existen tickets a cargar."
  loc_648A29: FStVarCopyObj var_A8
  loc_648A2C: FLdRfVar var_A8
  loc_648A2F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_648A34: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_648A3F: FLdRfVar var_11C
  loc_648A42: ImpAdLdRf MemVar_74CA9C
  loc_648A45: NewIfNullPr frmListaDeSeleccion
  loc_648A48: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_648A4D: ILdRf var_11C
  loc_648A50: LitStr vbNullString
  loc_648A53: NeStr
  loc_648A55: FFree1Str var_11C
  loc_648A58: BranchF loc_648ABB
  loc_648A5B: FLdRfVar var_11C
  loc_648A5E: ImpAdLdRf MemVar_74CA9C
  loc_648A61: NewIfNullPr frmListaDeSeleccion
  loc_648A64: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_648A69: ILdRf var_11C
  loc_648A6C: FLdPr Me
  loc_648A6F: MemStStrCopy
  loc_648A73: FFree1Str var_11C
  loc_648A76: LitStr "Ticket: "
  loc_648A79: FLdPr Me
  loc_648A7C: MemLdStr global_64
  loc_648A7F: ConcatStr
  loc_648A80: FStStrNoPop var_11C
  loc_648A83: FLdPrThis
  loc_648A84: VCallAd Control_ID_
  loc_648A87: FStAdFunc var_94
  loc_648A8A: FLdPr var_94
  loc_648A8D: frmListaDeSeleccion.Label.Caption = from_stack_1
  loc_648A92: FFree1Str var_11C
  loc_648A95: FFree1Ad var_94
  loc_648A98: FLdPr Me
  loc_648A9B: MemLdRfVar from_stack_1.global_64
  loc_648A9E: ImpAdCallI2 Proc_142_5_5F7928()
  loc_648AA3: FStStrNoPop var_11C
  loc_648AA6: FLdPrThis
  loc_648AA7: VCallAd Control_ID_txtTicket
  loc_648AAA: FStAdFunc var_94
  loc_648AAD: FLdPr var_94
  loc_648AB0: Me.Text = from_stack_1
  loc_648AB5: FFree1Str var_11C
  loc_648AB8: FFree1Ad var_94
  loc_648ABB: LitI2_Byte 1
  loc_648ABD: CStrUI1
  loc_648ABF: FStStrNoPop var_11C
  loc_648AC2: FLdPrThis
  loc_648AC3: VCallAd Control_ID_cmdPreview
  loc_648AC6: FStAdFunc var_94
  loc_648AC9: FLdPr var_94
  loc_648ACC: Me.Tag = from_stack_1
  loc_648AD1: FFree1Str var_11C
  loc_648AD4: FFree1Ad var_94
  loc_648AD7: Call cmdPreview_Click()
  loc_648ADC: ExitProcHresult
  loc_648ADD: LitVar_Missing var_164
  loc_648AE0: LitVar_Missing var_154
  loc_648AE3: LitVar_Missing var_144
  loc_648AE6: LitI4 0
  loc_648AEB: LitStr "Error #"
  loc_648AEE: FLdRfVar var_120
  loc_648AF1: ImpAdCallI2 Err 'rtcErrObj
  loc_648AF6: FStAdFunc var_94
  loc_648AF9: FLdPr var_94
  loc_648AFC:  = Err.Number
  loc_648B01: ILdRf var_120
  loc_648B04: CStrI4
  loc_648B06: FStStrNoPop var_11C
  loc_648B09: ConcatStr
  loc_648B0A: FStStrNoPop var_124
  loc_648B0D: LitStr " - "
  loc_648B10: ConcatStr
  loc_648B11: FStStrNoPop var_130
  loc_648B14: FLdRfVar var_12C
  loc_648B17: ImpAdCallI2 Err 'rtcErrObj
  loc_648B1C: FStAdFunc var_128
  loc_648B1F: FLdPr var_128
  loc_648B22:  = Err.Description
  loc_648B27: ILdRf var_12C
  loc_648B2A: ConcatStr
  loc_648B2B: FStStrNoPop var_134
  loc_648B2E: LitStr "."
  loc_648B31: ConcatStr
  loc_648B32: CVarStr var_D8
  loc_648B35: LitI4 &HD
  loc_648B3A: FLdRfVar var_A8
  loc_648B3D: ImpAdCallFPR4  = Chr()
  loc_648B42: FLdRfVar var_A8
  loc_648B45: ConcatVar var_F8
  loc_648B49: LitVarStr var_B8, "(cmdCargar_Click)"
  loc_648B4E: ConcatVar var_118
  loc_648B52: ImpAdCallFPR4 MsgBox(, , , , )
  loc_648B57: FFreeStr var_11C = "": var_124 = "": var_130 = "": var_12C = ""
  loc_648B64: FFreeAd var_94 = ""
  loc_648B6B: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_144 = "": var_154 = ""
  loc_648B7C: ExitProcHresult
End Sub

Private Sub cmdGrabar_Click() '61EB48
  'Data Table: 454520
  loc_61EA1C: LitI2_Byte 0
  loc_61EA1E: FStI2 var_8A
  loc_61EA21: LitVar_Missing var_14C
  loc_61EA24: LitVar_Missing var_12C
  loc_61EA27: LitVar_Missing var_10C
  loc_61EA2A: LitVar_Missing var_EC
  loc_61EA2D: FLdPr Me
  loc_61EA30: MemLdRfVar from_stack_1.global_64
  loc_61EA33: CVarRef
  loc_61EA38: LitVarStr var_AC, "Grabar Ticket"
  loc_61EA3D: FStVarCopyObj var_BC
  loc_61EA40: FLdRfVar var_BC
  loc_61EA43: LitStr "Ingrese un nombre con el que desea grabar "
  loc_61EA46: LitStr "este ticket (Máximo 15 caracteres)."
  loc_61EA49: ConcatStr
  loc_61EA4A: CVarStr var_9C
  loc_61EA4D: ImpAdCallI2 InputBox(, , , , , , )
  loc_61EA52: FStStr var_88
  loc_61EA55: FFreeVar var_9C = "": var_BC = "": var_EC = "": var_10C = "": var_12C = ""
  loc_61EA64: ILdRf var_88
  loc_61EA67: LitStr vbNullString
  loc_61EA6A: EqStr
  loc_61EA6C: BranchF loc_61EA70
  loc_61EA6F: ExitProcHresult
  loc_61EA70: ILdRf var_88
  loc_61EA73: FnLenStr
  loc_61EA74: LitI4 &HF
  loc_61EA79: GtI4
  loc_61EA7A: BranchF loc_61EADE
  loc_61EA7D: LitVar_Missing var_10C
  loc_61EA80: LitVar_Missing var_EC
  loc_61EA83: LitVar_Missing var_BC
  loc_61EA86: LitI4 1
  loc_61EA8B: LitVarStr var_AC, "El nombre debe tener entre 1 y 15 caracteres."
  loc_61EA90: FStVarCopyObj var_9C
  loc_61EA93: FLdRfVar var_9C
  loc_61EA96: ImpAdCallI2 MsgBox(, , , , )
  loc_61EA9B: LitI4 2
  loc_61EAA0: EqI4
  loc_61EAA1: FFreeVar var_9C = "": var_BC = "": var_EC = ""
  loc_61EAAC: BranchF loc_61EAB7
  loc_61EAAF: LitI2_Byte &HFF
  loc_61EAB1: FStI2 var_8A
  loc_61EAB4: Branch loc_61EADB
  loc_61EAB7: LitStr "Ticket: "
  loc_61EABA: ILdRf var_88
  loc_61EABD: ConcatStr
  loc_61EABE: FStStrNoPop var_150
  loc_61EAC1: FLdPrThis
  loc_61EAC2: VCallAd Control_ID_lblTicketName
  loc_61EAC5: FStAdFunc var_154
  loc_61EAC8: FLdPr var_154
  loc_61EACB: Me.Caption = from_stack_1
  loc_61EAD0: FFree1Str var_150
  loc_61EAD3: FFree1Ad var_154
  loc_61EAD6: LitI2_Byte 0
  loc_61EAD8: FStI2 var_8A
  loc_61EADB: Branch loc_61EB3F
  loc_61EADE: LitI2_Byte &HFF
  loc_61EAE0: FStI2 var_8A
  loc_61EAE3: LitStr "NTV"
  loc_61EAE6: ILdRf var_88
  loc_61EAE9: ConcatStr
  loc_61EAEA: FStStrNoPop var_150
  loc_61EAED: LitStr ";"
  loc_61EAF0: ConcatStr
  loc_61EAF1: FStStrNoPop var_15C
  loc_61EAF4: FLdRfVar var_158
  loc_61EAF7: FLdPrThis
  loc_61EAF8: VCallAd Control_ID_txtTicket
  loc_61EAFB: FStAdFunc var_154
  loc_61EAFE: FLdPr var_154
  loc_61EB01:  = Me.Text
  loc_61EB06: ILdRf var_158
  loc_61EB09: ConcatStr
  loc_61EB0A: FStStrNoPop var_160
  loc_61EB0D: ImpAdCallFPR4 Proc_156_7_5D15A0()
  loc_61EB12: FFreeStr var_150 = "": var_15C = "": var_158 = ""
  loc_61EB1D: FFree1Ad var_154
  loc_61EB20: LitStr "Ticket: "
  loc_61EB23: ILdRf var_88
  loc_61EB26: ConcatStr
  loc_61EB27: FStStrNoPop var_150
  loc_61EB2A: FLdPrThis
  loc_61EB2B: VCallAd Control_ID_lblTicketName
  loc_61EB2E: FStAdFunc var_154
  loc_61EB31: FLdPr var_154
  loc_61EB34: Me.Caption = from_stack_1
  loc_61EB39: FFree1Str var_150
  loc_61EB3C: FFree1Ad var_154
  loc_61EB3F: FLdI2 var_8A
  loc_61EB42: NotI4
  loc_61EB43: BranchT loc_61EA21
  loc_61EB46: ExitProcHresult
End Sub

Private Sub vscSurtidores_Change() '634244
  'Data Table: 454520
  loc_634070: LitI2_Byte 0
  loc_634072: FLdRfVar var_86
  loc_634075: ImpAdLdRf MemVar_74C068
  loc_634078: CVarRef
  loc_63407D: LitVarI2 var_B8, 7
  loc_634082: ImpAdLdUI1
  loc_634086: CI2UI1
  loc_634088: LitI2_Byte 8
  loc_63408A: GtI2
  loc_63408B: CVarBoolI2 var_98
  loc_63408F: FLdRfVar var_D8
  loc_634092: ImpAdCallFPR4  = IIf(, , )
  loc_634097: FLdRfVar var_D8
  loc_63409A: CI2Var
  loc_63409B: FFreeVar var_98 = "": var_B8 = ""
  loc_6340A4: ForI2 var_DC
  loc_6340AA: FLdRfVar var_E2
  loc_6340AD: FLdPrThis
  loc_6340AE: VCallAd Control_ID_vscSurtidores
  loc_6340B1: FStAdFunc var_E0
  loc_6340B4: FLdPr var_E0
  loc_6340B7:  = Me.Value
  loc_6340BC: ImpAdLdRf MemVar_74BED4
  loc_6340BF: CVarRef
  loc_6340C4: FLdRfVar var_B8
  loc_6340C7: ImpAdCallFPR4  = Trim()
  loc_6340CC: FLdRfVar var_B8
  loc_6340CF: LitVarStr var_A8, " # "
  loc_6340D4: ConcatVar var_D8
  loc_6340D8: LitI4 1
  loc_6340DD: LitI4 1
  loc_6340E2: LitVarStr var_104, "@@"
  loc_6340E7: FStVarCopyObj var_114
  loc_6340EA: FLdRfVar var_114
  loc_6340ED: FLdI2 var_86
  loc_6340F0: FLdI2 var_E2
  loc_6340F3: AddI2
  loc_6340F4: CVarI2 var_F4
  loc_6340F7: FLdRfVar var_124
  loc_6340FA: ImpAdCallFPR4  = Format(, )
  loc_6340FF: FLdRfVar var_124
  loc_634102: ConcatVar var_134
  loc_634106: LitVarStr var_144, " :"
  loc_63410B: ConcatVar var_154
  loc_63410F: CStrVarVal var_160
  loc_634113: FLdRfVar var_15C
  loc_634116: FLdI2 var_86
  loc_634119: FLdPrThis
  loc_63411A: VCallAd Control_ID_lblSurtidor
  loc_63411D: FStAdFunc var_158
  loc_634120: FLdPr var_158
  loc_634123: Set from_stack_2 = Me(from_stack_1)
  loc_634128: FLdPr var_15C
  loc_63412B: Me.Caption = from_stack_1
  loc_634130: FFree1Str var_160
  loc_634133: FFreeAd var_E0 = "": var_158 = ""
  loc_63413C: FFreeVar var_B8 = "": var_F4 = "": var_114 = "": var_D8 = "": var_124 = "": var_134 = ""
  loc_63414D: FLdI2 var_86
  loc_634150: FLdRfVar var_E2
  loc_634153: FLdPrThis
  loc_634154: VCallAd Control_ID_vscSurtidores
  loc_634157: FStAdFunc var_E0
  loc_63415A: FLdPr var_E0
  loc_63415D:  = Me.Value
  loc_634162: FLdI2 var_E2
  loc_634165: AddI2
  loc_634166: CI4UI1
  loc_634167: ImpAdLdPr unk_454524
  loc_63416A: MemLdRfVar from_stack_1.global_0
  loc_63416D: AryInRecLdPr
  loc_634173: MemLdI2 global_0
  loc_634176: FLdRfVar var_15C
  loc_634179: FLdI2 var_86
  loc_63417C: FLdPrThis
  loc_63417D: VCallAd Control_ID_cmbImpresora
  loc_634180: FStAdFunc var_158
  loc_634183: FLdPr var_158
  loc_634186: Set from_stack_2 = Me(from_stack_1)
  loc_63418B: FLdPr var_15C
  loc_63418E: Me.ListIndex = from_stack_1
  loc_634193: FFreeAd var_E0 = "": var_158 = ""
  loc_63419C: FLdI2 var_86
  loc_63419F: FLdRfVar var_E2
  loc_6341A2: FLdPrThis
  loc_6341A3: VCallAd Control_ID_vscSurtidores
  loc_6341A6: FStAdFunc var_E0
  loc_6341A9: FLdPr var_E0
  loc_6341AC:  = Me.Value
  loc_6341B1: FLdI2 var_E2
  loc_6341B4: AddI2
  loc_6341B5: CI4UI1
  loc_6341B6: ImpAdLdPr unk_454524
  loc_6341B9: MemLdRfVar from_stack_1.global_64
  loc_6341BC: AryInRecLdPr
  loc_6341C2: MemLdI2 global_0
  loc_6341C5: FLdRfVar var_15C
  loc_6341C8: FLdI2 var_86
  loc_6341CB: FLdPrThis
  loc_6341CC: VCallAd Control_ID_cmbTipo
  loc_6341CF: FStAdFunc var_158
  loc_6341D2: FLdPr var_158
  loc_6341D5: Set from_stack_2 = Me(from_stack_1)
  loc_6341DA: FLdPr var_15C
  loc_6341DD: Me.ListIndex = from_stack_1
  loc_6341E2: FFreeAd var_E0 = "": var_158 = ""
  loc_6341EB: FLdI2 var_86
  loc_6341EE: FLdRfVar var_E2
  loc_6341F1: FLdPrThis
  loc_6341F2: VCallAd Control_ID_vscSurtidores
  loc_6341F5: FStAdFunc var_E0
  loc_6341F8: FLdPr var_E0
  loc_6341FB:  = Me.Value
  loc_634200: FLdI2 var_E2
  loc_634203: AddI2
  loc_634204: CI4UI1
  loc_634205: ImpAdLdPr unk_454524
  loc_634208: MemLdRfVar from_stack_1.global_256
  loc_63420B: AryInRecLdRf
  loc_634211: CDargRef
  loc_634215: FLdRfVar var_15C
  loc_634218: FLdI2 var_86
  loc_63421B: FLdPrThis
  loc_63421C: VCallAd Control_ID_txtPrefijo
  loc_63421F: FStAdFunc var_158
  loc_634222: FLdPr var_158
  loc_634225: Set from_stack_2 = Me(from_stack_1)
  loc_63422A: FLdPr var_15C
  loc_63422D: LateIdSt
  loc_634232: FFreeAd var_E0 = "": var_158 = ""
  loc_63423B: FLdRfVar var_86
  loc_63423E: NextI2 var_DC, loc_6340AA
  loc_634243: ExitProcHresult
End Sub

Private Sub txtImpuesto_Change(Index As Integer) '6565E0
  'Data Table: 454520
  loc_6562E4: FLdRfVar var_94
  loc_6562E7: FLdRfVar var_90
  loc_6562EA: ILdI2 Index
  loc_6562ED: FLdPrThis
  loc_6562EE: VCallAd Control_ID_txtImpuesto
  loc_6562F1: FStAdFunc var_8C
  loc_6562F4: FLdPr var_8C
  loc_6562F7: Set from_stack_2 = Me(from_stack_1)
  loc_6562FC: FLdPr var_90
  loc_6562FF:  = Me.SelStart
  loc_656304: ILdRf var_94
  loc_656307: CI2I4
  loc_656308: FStI2 var_86
  loc_65630B: FFreeAd var_8C = ""
  loc_656312: FLdRfVar var_96
  loc_656315: FLdRfVar var_90
  loc_656318: LitI2_Byte 0
  loc_65631A: FLdPrThis
  loc_65631B: VCallAd Control_ID_optTipo
  loc_65631E: FStAdFunc var_8C
  loc_656321: FLdPr var_8C
  loc_656324: Set from_stack_2 = Me(from_stack_1)
  loc_656329: FLdPr var_90
  loc_65632C:  = Me.Value
  loc_656331: FLdI2 var_96
  loc_656334: FFreeAd var_8C = ""
  loc_65633B: BranchF loc_6563AE
  loc_65633E: FLdRfVar var_9C
  loc_656341: FLdRfVar var_90
  loc_656344: ILdI2 Index
  loc_656347: FLdPrThis
  loc_656348: VCallAd Control_ID_txtImpuesto
  loc_65634B: FStAdFunc var_8C
  loc_65634E: FLdPr var_8C
  loc_656351: Set from_stack_2 = Me(from_stack_1)
  loc_656356: FLdPr var_90
  loc_656359:  = Me.Text
  loc_65635E: LitI2_Byte &HFF
  loc_656360: ILdRf var_9C
  loc_656363: ImpAdCallI2 Proc_142_0_62D24C(, )
  loc_656368: FStStrNoPop var_A4
  loc_65636B: FLdRfVar var_96
  loc_65636E: FLdPrThis
  loc_65636F: VCallAd Control_ID_cmbImpuesto
  loc_656372: FStAdFunc var_A0
  loc_656375: FLdPr var_A0
  loc_656378:  = Me.ListIndex
  loc_65637D: FLdI2 var_96
  loc_656380: LitI2_Byte 1
  loc_656382: AddI2
  loc_656383: CI4UI1
  loc_656384: ILdI2 Index
  loc_656387: LitI2_Byte 1
  loc_656389: AddI2
  loc_65638A: CI4UI1
  loc_65638B: ImpAdLdPr unk_454529
  loc_65638E: MemLdRfVar from_stack_1.global_12
  loc_656391: AryInRecLdPr
  loc_656397: MemStStrCopy
  loc_65639B: FFreeStr var_9C = ""
  loc_6563A2: FFreeAd var_8C = "": var_90 = ""
  loc_6563AB: Branch loc_656447
  loc_6563AE: FLdRfVar var_96
  loc_6563B1: FLdRfVar var_90
  loc_6563B4: LitI2_Byte 1
  loc_6563B6: FLdPrThis
  loc_6563B7: VCallAd Control_ID_optTipo
  loc_6563BA: FStAdFunc var_8C
  loc_6563BD: FLdPr var_8C
  loc_6563C0: Set from_stack_2 = Me(from_stack_1)
  loc_6563C5: FLdPr var_90
  loc_6563C8:  = Me.Value
  loc_6563CD: FLdI2 var_96
  loc_6563D0: FFreeAd var_8C = ""
  loc_6563D7: BranchF loc_656447
  loc_6563DA: FLdRfVar var_9C
  loc_6563DD: FLdRfVar var_90
  loc_6563E0: ILdI2 Index
  loc_6563E3: FLdPrThis
  loc_6563E4: VCallAd Control_ID_txtImpuesto
  loc_6563E7: FStAdFunc var_8C
  loc_6563EA: FLdPr var_8C
  loc_6563ED: Set from_stack_2 = Me(from_stack_1)
  loc_6563F2: FLdPr var_90
  loc_6563F5:  = Me.Text
  loc_6563FA: LitI2_Byte 0
  loc_6563FC: ILdRf var_9C
  loc_6563FF: ImpAdCallI2 Proc_142_0_62D24C(, )
  loc_656404: FStStrNoPop var_A4
  loc_656407: FLdRfVar var_96
  loc_65640A: FLdPrThis
  loc_65640B: VCallAd Control_ID_cmbImpuesto
  loc_65640E: FStAdFunc var_A0
  loc_656411: FLdPr var_A0
  loc_656414:  = Me.ListIndex
  loc_656419: FLdI2 var_96
  loc_65641C: LitI2_Byte 1
  loc_65641E: AddI2
  loc_65641F: CI4UI1
  loc_656420: ILdI2 Index
  loc_656423: LitI2_Byte 1
  loc_656425: AddI2
  loc_656426: CI4UI1
  loc_656427: ImpAdLdPr unk_454529
  loc_65642A: MemLdRfVar from_stack_1.global_12
  loc_65642D: AryInRecLdPr
  loc_656433: MemStStrCopy
  loc_656437: FFreeStr var_9C = ""
  loc_65643E: FFreeAd var_8C = "": var_90 = ""
  loc_656447: FLdRfVar var_96
  loc_65644A: FLdPrThis
  loc_65644B: VCallAd Control_ID_cmbImpuesto
  loc_65644E: FStAdFunc var_8C
  loc_656451: FLdPr var_8C
  loc_656454:  = Me.ListIndex
  loc_656459: FLdI2 var_96
  loc_65645C: LitI2_Byte 1
  loc_65645E: AddI2
  loc_65645F: CI4UI1
  loc_656460: ILdI2 Index
  loc_656463: LitI2_Byte 1
  loc_656465: AddI2
  loc_656466: CI4UI1
  loc_656467: ImpAdLdPr unk_454529
  loc_65646A: MemLdRfVar from_stack_1.global_12
  loc_65646D: AryInRecLdPr
  loc_656473: MemLdStr global_0
  loc_656476: FLdRfVar var_A0
  loc_656479: ILdI2 Index
  loc_65647C: FLdPrThis
  loc_65647D: VCallAd Control_ID_txtImpuesto
  loc_656480: FStAdFunc var_90
  loc_656483: FLdPr var_90
  loc_656486: Set from_stack_2 = Me(from_stack_1)
  loc_65648B: FLdPr var_A0
  loc_65648E: Me.Text = from_stack_1
  loc_656493: FFreeAd var_8C = "": var_90 = ""
  loc_65649C: FLdRfVar var_9C
  loc_65649F: FLdRfVar var_90
  loc_6564A2: ILdI2 Index
  loc_6564A5: FLdPrThis
  loc_6564A6: VCallAd Control_ID_txtImpuesto
  loc_6564A9: FStAdFunc var_8C
  loc_6564AC: FLdPr var_8C
  loc_6564AF: Set from_stack_2 = Me(from_stack_1)
  loc_6564B4: FLdPr var_90
  loc_6564B7:  = Me.Text
  loc_6564BC: ILdRf var_9C
  loc_6564BF: LitStr vbNullString
  loc_6564C2: EqStr
  loc_6564C4: FLdRfVar var_A4
  loc_6564C7: FLdRfVar var_A8
  loc_6564CA: ILdI2 Index
  loc_6564CD: FLdPrThis
  loc_6564CE: VCallAd Control_ID_txtImpuesto
  loc_6564D1: FStAdFunc var_A0
  loc_6564D4: FLdPr var_A0
  loc_6564D7: Set from_stack_2 = Me(from_stack_1)
  loc_6564DC: FLdPr var_A8
  loc_6564DF:  = Me.Text
  loc_6564E4: ILdRf var_A4
  loc_6564E7: LitStr "0"
  loc_6564EA: EqStr
  loc_6564EC: OrI4
  loc_6564ED: FFreeStr var_9C = ""
  loc_6564F4: FFreeAd var_8C = "": var_90 = "": var_A0 = ""
  loc_6564FF: BranchF loc_656555
  loc_656502: LitStr "0"
  loc_656505: FLdRfVar var_90
  loc_656508: ILdI2 Index
  loc_65650B: FLdPrThis
  loc_65650C: VCallAd Control_ID_txtImpuesto
  loc_65650F: FStAdFunc var_8C
  loc_656512: FLdPr var_8C
  loc_656515: Set from_stack_2 = Me(from_stack_1)
  loc_65651A: FLdPr var_90
  loc_65651D: Me.Text = from_stack_1
  loc_656522: FFreeAd var_8C = ""
  loc_656529: LitI4 2
  loc_65652E: FLdRfVar var_90
  loc_656531: ILdI2 Index
  loc_656534: FLdPrThis
  loc_656535: VCallAd Control_ID_txtImpuesto
  loc_656538: FStAdFunc var_8C
  loc_65653B: FLdPr var_8C
  loc_65653E: Set from_stack_2 = Me(from_stack_1)
  loc_656543: FLdPr var_90
  loc_656546: Me.SelStart = from_stack_1
  loc_65654B: FFreeAd var_8C = ""
  loc_656552: Branch loc_6565DE
  loc_656555: FLdRfVar var_9C
  loc_656558: FLdRfVar var_90
  loc_65655B: ILdI2 Index
  loc_65655E: FLdPrThis
  loc_65655F: VCallAd Control_ID_txtImpuesto
  loc_656562: FStAdFunc var_8C
  loc_656565: FLdPr var_8C
  loc_656568: Set from_stack_2 = Me(from_stack_1)
  loc_65656D: FLdPr var_90
  loc_656570:  = Me.Text
  loc_656575: ILdRf var_9C
  loc_656578: LitStr "0."
  loc_65657B: EqStr
  loc_65657D: FFree1Str var_9C
  loc_656580: FFreeAd var_8C = ""
  loc_656587: BranchF loc_6565B6
  loc_65658A: LitI4 2
  loc_65658F: FLdRfVar var_90
  loc_656592: ILdI2 Index
  loc_656595: FLdPrThis
  loc_656596: VCallAd Control_ID_txtImpuesto
  loc_656599: FStAdFunc var_8C
  loc_65659C: FLdPr var_8C
  loc_65659F: Set from_stack_2 = Me(from_stack_1)
  loc_6565A4: FLdPr var_90
  loc_6565A7: Me.SelStart = from_stack_1
  loc_6565AC: FFreeAd var_8C = ""
  loc_6565B3: Branch loc_6565DE
  loc_6565B6: FLdI2 var_86
  loc_6565B9: CI4UI1
  loc_6565BA: FLdRfVar var_90
  loc_6565BD: ILdI2 Index
  loc_6565C0: FLdPrThis
  loc_6565C1: VCallAd Control_ID_txtImpuesto
  loc_6565C4: FStAdFunc var_8C
  loc_6565C7: FLdPr var_8C
  loc_6565CA: Set from_stack_2 = Me(from_stack_1)
  loc_6565CF: FLdPr var_90
  loc_6565D2: Me.SelStart = from_stack_1
  loc_6565D7: FFreeAd var_8C = ""
  loc_6565DE: ExitProcHresult
End Sub

Private Sub txtImpuesto_GotFocus(arg_C) '5EB7B8
  'Data Table: 454520
  loc_5EB73C: LitI4 0
  loc_5EB741: FLdRfVar var_8C
  loc_5EB744: ILdI2 arg_C
  loc_5EB747: FLdPrThis
  loc_5EB748: VCallAd Control_ID_txtImpuesto
  loc_5EB74B: FStAdFunc var_88
  loc_5EB74E: FLdPr var_88
  loc_5EB751: Set from_stack_2 = Me(from_stack_1)
  loc_5EB756: FLdPr var_8C
  loc_5EB759: Me.SelStart = from_stack_1
  loc_5EB75E: FFreeAd var_88 = ""
  loc_5EB765: FLdRfVar var_90
  loc_5EB768: FLdRfVar var_8C
  loc_5EB76B: ILdI2 arg_C
  loc_5EB76E: FLdPrThis
  loc_5EB76F: VCallAd Control_ID_txtImpuesto
  loc_5EB772: FStAdFunc var_88
  loc_5EB775: FLdPr var_88
  loc_5EB778: Set from_stack_2 = Me(from_stack_1)
  loc_5EB77D: FLdPr var_8C
  loc_5EB780:  = Me.Text
  loc_5EB785: ILdRf var_90
  loc_5EB788: FnLenStr
  loc_5EB789: FLdRfVar var_98
  loc_5EB78C: ILdI2 arg_C
  loc_5EB78F: FLdPrThis
  loc_5EB790: VCallAd Control_ID_txtImpuesto
  loc_5EB793: FStAdFunc var_94
  loc_5EB796: FLdPr var_94
  loc_5EB799: Set from_stack_2 = Me(from_stack_1)
  loc_5EB79E: FLdPr var_98
  loc_5EB7A1: Me.SelLength = from_stack_1
  loc_5EB7A6: FFree1Str var_90
  loc_5EB7A9: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5EB7B4: ExitProcHresult
End Sub

Private Sub txtImpuesto_KeyPress(KeyAscii As Integer) '5DFEFC
  'Data Table: 454520
  loc_5DFEA0: ILdI2 arg_10
  loc_5DFEA3: FStI2 var_86
  loc_5DFEA6: FLdI2 var_86
  loc_5DFEA9: LitI4 &H30
  loc_5DFEAE: CI2I4
  loc_5DFEAF: LitI4 &H39
  loc_5DFEB4: CI2I4
  loc_5DFEB5: BetweenI2
  loc_5DFEB7: BranchT loc_5DFED0
  loc_5DFEBA: FLdI2 var_86
  loc_5DFEBD: LitI4 8
  loc_5DFEC2: CI2I4
  loc_5DFEC3: EqI2
  loc_5DFEC4: BranchT loc_5DFED0
  loc_5DFEC7: FLdI2 var_86
  loc_5DFECA: LitI2_Byte &H2E
  loc_5DFECC: EqI2
  loc_5DFECD: BranchF loc_5DFED3
  loc_5DFED0: Branch loc_5DFEFA
  loc_5DFED3: FLdI2 var_86
  loc_5DFED6: LitI4 &HD
  loc_5DFEDB: CI2I4
  loc_5DFEDC: EqI2
  loc_5DFEDD: BranchF loc_5DFEF5
  loc_5DFEE0: LitI2_Byte 0
  loc_5DFEE2: IStI2 arg_10
  loc_5DFEE5: LitI2_Byte &HFF
  loc_5DFEE7: PopTmpLdAd2 var_88
  loc_5DFEEA: LitStr "{TAB}"
  loc_5DFEED: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DFEF2: Branch loc_5DFEFA
  loc_5DFEF5: LitI2_Byte 0
  loc_5DFEF7: IStI2 arg_10
  loc_5DFEFA: ExitProcHresult
End Sub

Private Sub txtImpuesto_LostFocus(arg_C) '5E4F70
  'Data Table: 454520
  loc_5E4F0C: FLdRfVar var_8A
  loc_5E4F0F: FLdPrThis
  loc_5E4F10: VCallAd Control_ID_cmbImpuesto
  loc_5E4F13: FStAdFunc var_88
  loc_5E4F16: FLdPr var_88
  loc_5E4F19:  = Me.ListIndex
  loc_5E4F1E: FLdI2 var_8A
  loc_5E4F21: LitI2_Byte 1
  loc_5E4F23: AddI2
  loc_5E4F24: CI4UI1
  loc_5E4F25: ILdI2 arg_C
  loc_5E4F28: LitI2_Byte 1
  loc_5E4F2A: AddI2
  loc_5E4F2B: CI4UI1
  loc_5E4F2C: ImpAdLdPr unk_454529
  loc_5E4F2F: MemLdRfVar from_stack_1.global_12
  loc_5E4F32: AryInRecLdPr
  loc_5E4F38: MemLdStr global_0
  loc_5E4F3B: ImpAdCallFPR4 push Val()
  loc_5E4F40: CStrR8
  loc_5E4F42: FStStrNoPop var_98
  loc_5E4F45: FLdRfVar var_94
  loc_5E4F48: ILdI2 arg_C
  loc_5E4F4B: FLdPrThis
  loc_5E4F4C: VCallAd Control_ID_txtImpuesto
  loc_5E4F4F: FStAdFunc var_90
  loc_5E4F52: FLdPr var_90
  loc_5E4F55: Set from_stack_2 = Me(from_stack_1)
  loc_5E4F5A: FLdPr var_94
  loc_5E4F5D: Me.Text = from_stack_1
  loc_5E4F62: FFree1Str var_98
  loc_5E4F65: FFreeAd var_88 = "": var_90 = ""
  loc_5E4F6E: ExitProcHresult
End Sub

Public Function ModificoGet() '4562CC
  ModificoGet = Modifico
End Function

Public Sub ModificoPut(Value) '4562DB
  Modifico = Value
End Sub

Private Function Proc_107_44_5FDEE4(arg_C) '5FDEE4
  'Data Table: 454520
  loc_5FDE24: ILdRf arg_C
  loc_5FDE27: FStStrCopy var_8C
  loc_5FDE2A: ZeroRetVal
  loc_5FDE2C: ILdRf var_8C
  loc_5FDE2F: FStStrCopy var_88
  loc_5FDE32: LitI4 1
  loc_5FDE37: ILdRf var_88
  loc_5FDE3A: LitStr ","
  loc_5FDE3D: LitI4 0
  loc_5FDE42: FnInStr4
  loc_5FDE44: CBoolI4
  loc_5FDE46: BranchF loc_5FDEAC
  loc_5FDE49: LitI4 1
  loc_5FDE4E: ILdRf var_88
  loc_5FDE51: LitStr ","
  loc_5FDE54: LitI4 0
  loc_5FDE59: FnInStr4
  loc_5FDE5B: CI2I4
  loc_5FDE5C: FStI2 var_8E
  loc_5FDE5F: FLdI2 var_8E
  loc_5FDE62: LitI2_Byte 1
  loc_5FDE64: SubI2
  loc_5FDE65: CVarI2 var_B0
  loc_5FDE68: LitI4 1
  loc_5FDE6D: ILdRf var_88
  loc_5FDE70: ImpAdCallI2 Mid$(, , )
  loc_5FDE75: FStStrNoPop var_D4
  loc_5FDE78: ILdRf var_88
  loc_5FDE7B: FnLenStr
  loc_5FDE7C: FLdI2 var_8E
  loc_5FDE7F: CI4UI1
  loc_5FDE80: SubI4
  loc_5FDE81: CVarI4
  loc_5FDE85: FLdI2 var_8E
  loc_5FDE88: LitI2_Byte 1
  loc_5FDE8A: AddI2
  loc_5FDE8B: CI4UI1
  loc_5FDE8C: ILdRf var_88
  loc_5FDE8F: ImpAdCallI2 Mid$(, , )
  loc_5FDE94: FStStrNoPop var_D8
  loc_5FDE97: ConcatStr
  loc_5FDE98: FStStr var_88
  loc_5FDE9B: FFreeStr var_D4 = ""
  loc_5FDEA2: FFreeVar var_B0 = ""
  loc_5FDEA9: Branch loc_5FDE32
  loc_5FDEAC: LitI4 2
  loc_5FDEB1: ILdRf var_88
  loc_5FDEB4: ImpAdCallI2 Right$(, )
  loc_5FDEB9: FStStrNoPop var_D4
  loc_5FDEBC: LitStr ".-"
  loc_5FDEBF: EqStr
  loc_5FDEC1: FFree1Str var_D4
  loc_5FDEC4: BranchF loc_5FDEDC
  loc_5FDEC7: ILdRf var_88
  loc_5FDECA: FnLenStr
  loc_5FDECB: LitI4 2
  loc_5FDED0: SubI4
  loc_5FDED1: ILdRf var_88
  loc_5FDED4: ImpAdCallI2 Left$(, )
  loc_5FDED9: FStStr var_88
  loc_5FDEDC: ExitProcCbHresult
End Function

Private Function Proc_107_45_613A08() '613A08
  'Data Table: 454520
  loc_6138F0: LitStr vbNullString
  loc_6138F3: FStStrCopy var_88
  loc_6138F6: LitI2_Byte 1
  loc_6138F8: FStI2 var_8A
  loc_6138FB: FLdRfVar var_92
  loc_6138FE: FLdRfVar var_88
  loc_613901: FLdRfVar var_90
  loc_613904: ImpAdLdRf MemVar_74C760
  loc_613907: NewIfNullPr Formx
  loc_61390A: from_stack_1v = Formx.global_4589716Get()
  loc_61390F: FLdPr var_90
  loc_613912: Formx.Font = from_stack_1
  loc_613917: FLdI2 var_92
  loc_61391A: NotI4
  loc_61391B: FLdI2 var_8A
  loc_61391E: LitI2_Byte 5
  loc_613920: LtI2
  loc_613921: AndI4
  loc_613922: FFree1Ad var_90
  loc_613925: BranchF loc_613947
  loc_613928: FLdRfVar var_A4
  loc_61392B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_613930: FLdRfVar var_A4
  loc_613933: CBoolVarNull
  loc_613935: FFree1Var var_A4 = ""
  loc_613938: BranchF loc_613944
  loc_61393B: FLdI2 var_8A
  loc_61393E: LitI2_Byte 1
  loc_613940: AddI2
  loc_613941: FStI2 var_8A
  loc_613944: Branch loc_6138FB
  loc_613947: FLdRfVar var_88
  loc_61394A: CVarRef
  loc_61394F: FLdRfVar var_A4
  loc_613952: ImpAdCallFPR4  = Trim()
  loc_613957: FLdRfVar var_A4
  loc_61395A: CStrVarTmp
  loc_61395B: FStStr var_88
  loc_61395E: FFree1Var var_A4 = ""
  loc_613961: ILdRf var_88
  loc_613964: FnLenStr
  loc_613965: LitI4 2
  loc_61396A: GtI4
  loc_61396B: BranchF loc_6139D0
  loc_61396E: LitStr ";"
  loc_613971: LitI2_Byte 1
  loc_613973: FLdRfVar var_88
  loc_613976: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_61397B: FStStrNoPop var_B8
  loc_61397E: FLdPr Me
  loc_613981: MemStStrCopy
  loc_613985: FFree1Str var_B8
  loc_613988: LitStr "Ticket: "
  loc_61398B: FLdPr Me
  loc_61398E: MemLdStr global_64
  loc_613991: ConcatStr
  loc_613992: FStStrNoPop var_B8
  loc_613995: FLdPrThis
  loc_613996: VCallAd Control_ID_lblTicketName
  loc_613999: FStAdFunc var_90
  loc_61399C: FLdPr var_90
  loc_61399F: Me.Caption = from_stack_1
  loc_6139A4: FFree1Str var_B8
  loc_6139A7: FFree1Ad var_90
  loc_6139AA: FLdPr Me
  loc_6139AD: MemLdRfVar from_stack_1.global_64
  loc_6139B0: ImpAdCallI2 Proc_142_5_5F7928()
  loc_6139B5: FStStrNoPop var_B8
  loc_6139B8: FLdPrThis
  loc_6139B9: VCallAd Control_ID_txtTicket
  loc_6139BC: FStAdFunc var_90
  loc_6139BF: FLdPr var_90
  loc_6139C2: Me.Text = from_stack_1
  loc_6139C7: FFree1Str var_B8
  loc_6139CA: FFree1Ad var_90
  loc_6139CD: Branch loc_613A04
  loc_6139D0: LitStr vbNullString
  loc_6139D3: FLdPr Me
  loc_6139D6: MemStStrCopy
  loc_6139DA: LitStr "Ticket"
  loc_6139DD: FLdPrThis
  loc_6139DE: VCallAd Control_ID_lblTicketName
  loc_6139E1: FStAdFunc var_90
  loc_6139E4: FLdPr var_90
  loc_6139E7: Me.Caption = from_stack_1
  loc_6139EC: FFree1Ad var_90
  loc_6139EF: LitStr vbNullString
  loc_6139F2: FLdPrThis
  loc_6139F3: VCallAd Control_ID_txtTicket
  loc_6139F6: FStAdFunc var_90
  loc_6139F9: FLdPr var_90
  loc_6139FC: Me.Text = from_stack_1
  loc_613A01: FFree1Ad var_90
  loc_613A04: ExitProcHresult
End Function
