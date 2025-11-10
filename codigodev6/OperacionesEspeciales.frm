VERSION 5.00
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Begin VB.Form OperacionesEspeciales
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
  ClientTop = 210
  ClientWidth = 11910
  ClientHeight = 8325
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 9
    Left = 6240
    Top = 7680
    Width = 855
    Height = 360
    TabIndex = 31
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 8
    Left = 6240
    Top = 7200
    Width = 855
    Height = 360
    TabIndex = 28
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 7
    Left = 6240
    Top = 6720
    Width = 855
    Height = 360
    TabIndex = 25
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 6
    Left = 6240
    Top = 6240
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 5
    Left = 6240
    Top = 5760
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 4
    Left = 6240
    Top = 5280
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 3
    Left = 6240
    Top = 4800
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 2
    Left = 6240
    Top = 4320
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 1
    Left = 6240
    Top = 3840
    Width = 855
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
  Begin VB.ComboBox cmbNivel
    Style = 2
    Index = 0
    Left = 6240
    Top = 3360
    Width = 855
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
  Begin VB.ComboBox cmbOperaciones
    Style = 2
    Left = 4320
    Top = 1680
    Width = 3735
    Height = 405
    TabIndex = 0
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
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 3000
    Top = 4800
  End
  Begin VB.TextBox txtVolumen
    Index = 9
    Left = 10110
    Top = 7680
    Width = 1335
    Height = 375
    TabIndex = 33
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 9
    Left = 7200
    Top = 7650
    Width = 2775
    Height = 375
    TabIndex = 32
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 8
    Left = 10110
    Top = 7200
    Width = 1335
    Height = 375
    TabIndex = 30
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 8
    Left = 7200
    Top = 7200
    Width = 2775
    Height = 375
    TabIndex = 29
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 7
    Left = 10110
    Top = 6720
    Width = 1335
    Height = 375
    TabIndex = 27
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 7
    Left = 7200
    Top = 6720
    Width = 2775
    Height = 375
    TabIndex = 26
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 6
    Left = 10110
    Top = 6240
    Width = 1335
    Height = 375
    TabIndex = 24
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 6
    Left = 7200
    Top = 6240
    Width = 2775
    Height = 375
    TabIndex = 23
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 5
    Left = 10110
    Top = 5790
    Width = 1335
    Height = 375
    TabIndex = 21
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 5
    Left = 7200
    Top = 5760
    Width = 2775
    Height = 375
    TabIndex = 20
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 4
    Left = 10110
    Top = 5280
    Width = 1335
    Height = 375
    TabIndex = 18
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 4
    Left = 7200
    Top = 5280
    Width = 2775
    Height = 375
    TabIndex = 17
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 3
    Left = 10110
    Top = 4800
    Width = 1335
    Height = 375
    TabIndex = 15
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 3
    Left = 7200
    Top = 4800
    Width = 2775
    Height = 375
    TabIndex = 14
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 2
    Left = 10110
    Top = 4320
    Width = 1335
    Height = 375
    TabIndex = 12
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 2
    Left = 7200
    Top = 4320
    Width = 2775
    Height = 375
    TabIndex = 11
    TabStop = 0   'False
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
  Begin VB.TextBox txtVolumen
    Index = 1
    Left = 10110
    Top = 3840
    Width = 1335
    Height = 375
    TabIndex = 9
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 1
    Left = 7200
    Top = 3840
    Width = 2775
    Height = 375
    TabIndex = 8
    TabStop = 0   'False
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
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 120
    Top = 7440
    Width = 1815
    Height = 735
    TabIndex = 34
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 2160
    Top = 7440
    Width = 1695
    Height = 735
    TabIndex = 35
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 4080
    Top = 7440
    Width = 1815
    Height = 735
    TabIndex = 36
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
  Begin VB.TextBox txtVolumen
    Index = 0
    Left = 10110
    Top = 3360
    Width = 1335
    Height = 375
    TabIndex = 6
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin VB.TextBox txtProductos
    Index = 0
    Left = 7200
    Top = 3360
    Width = 2775
    Height = 375
    TabIndex = 5
    TabStop = 0   'False
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
  Begin VB.ComboBox cmbClientes
    Style = 2
    Left = 2880
    Top = 3360
    Width = 3255
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
  Begin VB.TextBox txtDireccionEntrega
    Left = 1560
    Top = 3360
    Width = 1215
    Height = 375
    TabIndex = 2
    TabStop = 0   'False
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.TextBox txtCuentaCorriente
    Left = 120
    Top = 3360
    Width = 1335
    Height = 375
    TabIndex = 1
    TabStop = 0   'False
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 38
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 240
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 37
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin KeyStatLib.MhState NumLock
    Left = 1440
    Top = 4920
    Width = 1335
    Height = 855
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
    OleObjectBlob = "OperacionesEspeciales.frx":0000
  End
  Begin VB.Label Label8
    Caption = "Nivel"
    Left = 6060
    Top = 2520
    Width = 1215
    Height = 375
    TabIndex = 49
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
  Begin VB.Label Label3
    Caption = "Operación:"
    Left = 2880
    Top = 1695
    Width = 1335
    Height = 375
    TabIndex = 48
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
  Begin VB.Label Label7
    Caption = "Volumen Despachado"
    Left = 9990
    Top = 2520
    Width = 1575
    Height = 615
    TabIndex = 46
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
  Begin VB.Label Label6
    Caption = "Productos"
    Left = 7200
    Top = 2520
    Width = 2655
    Height = 375
    TabIndex = 45
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
  Begin VB.Label Label5
    Caption = "Razón Social"
    Left = 2880
    Top = 2520
    Width = 3255
    Height = 375
    TabIndex = 44
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
  Begin VB.Label Label4
    Caption = "Dirección entrega"
    Left = 1560
    Top = 2520
    Width = 1095
    Height = 615
    TabIndex = 43
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
  Begin VB.Label Label2
    Caption = "Cuenta Corriente"
    Left = 0
    Top = 2520
    Width = 1695
    Height = 615
    TabIndex = 42
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
  Begin VB.Label Label1
    Caption = "Operaciones Diferenciales"
    Left = 2760
    Top = 360
    Width = 5535
    Height = 495
    TabIndex = 41
    Alignment = 2 'Center
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10680
    Top = 1080
    Width = 975
    Height = 375
    TabIndex = 40
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
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 360
    Top = 1200
    Width = 1815
    Height = 375
    TabIndex = 39
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

Attribute VB_Name = "OperacionesEspeciales"


Private Sub Form_Load() '5ECA20
  'Data Table: 44842C
  loc_5EC990: LitI2_Byte 0
  loc_5EC992: CR8I2
  loc_5EC993: PopFPR4
  loc_5EC994: FLdPr Me
  loc_5EC997: Me.Top = from_stack_1s
  loc_5EC99C: LitI2_Byte 0
  loc_5EC99E: CR8I2
  loc_5EC99F: PopFPR4
  loc_5EC9A0: FLdPr Me
  loc_5EC9A3: Me.Left = from_stack_1s
  loc_5EC9A8: FLdRfVar var_8C
  loc_5EC9AB: FLdRfVar var_88
  loc_5EC9AE: ImpAdLdRf MemVar_7520D4
  loc_5EC9B1: NewIfNullPr Global
  loc_5EC9B4:  = Global.Screen
  loc_5EC9B9: FLdPr var_88
  loc_5EC9BC:  = Screen.TwipsPerPixelX
  loc_5EC9C1: FLdFPR4 var_8C
  loc_5EC9C4: LitI2 800
  loc_5EC9C7: CR8I2
  loc_5EC9C8: MulR8
  loc_5EC9C9: PopFPR4
  loc_5EC9CA: FLdPr Me
  loc_5EC9CD: Me.Width = from_stack_1s
  loc_5EC9D2: FFree1Ad var_88
  loc_5EC9D5: FLdRfVar var_8C
  loc_5EC9D8: FLdRfVar var_88
  loc_5EC9DB: ImpAdLdRf MemVar_7520D4
  loc_5EC9DE: NewIfNullPr Global
  loc_5EC9E1:  = Global.Screen
  loc_5EC9E6: FLdPr var_88
  loc_5EC9E9:  = Screen.TwipsPerPixelY
  loc_5EC9EE: FLdFPR4 var_8C
  loc_5EC9F1: LitI2 600
  loc_5EC9F4: CR8I2
  loc_5EC9F5: MulR8
  loc_5EC9F6: PopFPR4
  loc_5EC9F7: FLdPr Me
  loc_5EC9FA: Me.Height = from_stack_1s
  loc_5EC9FF: FFree1Ad var_88
  loc_5ECA02: LitI4 0
  loc_5ECA07: LitI4 0
  loc_5ECA0C: FLdPr Me
  loc_5ECA0F: MemLdRfVar from_stack_1.global_496
  loc_5ECA12: RedimPreserve
  loc_5ECA1C: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D40A4
  'Data Table: 44842C
  loc_5D4084: LitI2_Byte 0
  loc_5D4086: FLdPr Me
  loc_5D4089: MemStI2 global_492
  loc_5D408C: LitI2_Byte 0
  loc_5D408E: FLdPrThis
  loc_5D408F: VCallAd Control_ID_Reloj
  loc_5D4092: FStAdFunc var_88
  loc_5D4095: FLdPr var_88
  loc_5D4098: Me.Enabled = from_stack_1b
  loc_5D409D: FFree1Ad var_88
  loc_5D40A0: ExitProcHresult
End Sub

Private Sub Form_Activate() '67FD28
  'Data Table: 44842C
  loc_67F854: FLdPr Me
  loc_67F857: MemLdI2 global_492
  loc_67F85A: BranchF loc_67F85E
  loc_67F85D: ExitProcHresult
  loc_67F85E: LitI2_Byte &HFF
  loc_67F860: FLdPr Me
  loc_67F863: MemStI2 global_492
  loc_67F866: LitI2_Byte 0
  loc_67F868: PopTmpLdAd2 var_8C
  loc_67F86B: ImpAdCallI2 Proc_53_4_718EF4()
  loc_67F870: NotI4
  loc_67F871: BranchF loc_67F88A
  loc_67F874: ILdRf Me
  loc_67F877: FStAdNoPop
  loc_67F87B: ImpAdLdRf MemVar_7520D4
  loc_67F87E: NewIfNullPr Global
  loc_67F881: Global.Unload from_stack_1
  loc_67F886: FFree1Ad var_90
  loc_67F889: ExitProcHresult
  loc_67F88A: LitI2_Byte &HFF
  loc_67F88C: FLdPrThis
  loc_67F88D: VCallAd Control_ID_Reloj
  loc_67F890: FStAdFunc var_90
  loc_67F893: FLdPr var_90
  loc_67F896: Me.Enabled = from_stack_1b
  loc_67F89B: FFree1Ad var_90
  loc_67F89E: FLdPrThis
  loc_67F89F: VCallAd Control_ID_Picture1
  loc_67F8A2: FStAdFunc var_A0
  loc_67F8A5: FLdRfVar var_94
  loc_67F8A8: FLdRfVar var_90
  loc_67F8AB: ImpAdLdRf MemVar_7520D4
  loc_67F8AE: NewIfNullPr Global
  loc_67F8B1:  = Global.App
  loc_67F8B6: FLdPr var_90
  loc_67F8B9:  = App.Path
  loc_67F8BE: ILdRf var_94
  loc_67F8C1: LitStr "\Logo_Compania.bmp"
  loc_67F8C4: ConcatStr
  loc_67F8C5: FStStrNoPop var_9C
  loc_67F8C8: FLdZeroAd var_A0
  loc_67F8CB: FStAdFunc var_98
  loc_67F8CE: FLdRfVar var_98
  loc_67F8D1: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67F8D6: FFreeStr var_94 = ""
  loc_67F8DD: FFreeAd var_90 = "": var_98 = ""
  loc_67F8E6: FLdPrThis
  loc_67F8E7: VCallAd Control_ID_Picture2
  loc_67F8EA: FStAdFunc var_A0
  loc_67F8ED: FLdRfVar var_94
  loc_67F8F0: FLdRfVar var_90
  loc_67F8F3: ImpAdLdRf MemVar_7520D4
  loc_67F8F6: NewIfNullPr Global
  loc_67F8F9:  = Global.App
  loc_67F8FE: FLdPr var_90
  loc_67F901:  = App.Path
  loc_67F906: ILdRf var_94
  loc_67F909: LitStr "\Logo_Proyecto.bmp"
  loc_67F90C: ConcatStr
  loc_67F90D: FStStrNoPop var_9C
  loc_67F910: FLdZeroAd var_A0
  loc_67F913: FStAdFunc var_98
  loc_67F916: FLdRfVar var_98
  loc_67F919: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67F91E: FFreeStr var_94 = ""
  loc_67F925: FFreeAd var_90 = "": var_98 = ""
  loc_67F92E: FLdRfVar var_B0
  loc_67F931: ImpAdCallFPR4  = Date
  loc_67F936: LitI4 1
  loc_67F93B: LitI4 1
  loc_67F940: LitVarStr var_C0, "dd/mm/yyyy"
  loc_67F945: FStVarCopyObj var_D0
  loc_67F948: FLdRfVar var_D0
  loc_67F94B: FLdRfVar var_B0
  loc_67F94E: ImpAdCallI2 Format$(, )
  loc_67F953: FStStrNoPop var_94
  loc_67F956: FLdPrThis
  loc_67F957: VCallAd Control_ID_lFecha
  loc_67F95A: FStAdFunc var_90
  loc_67F95D: FLdPr var_90
  loc_67F960: Me.Caption = from_stack_1
  loc_67F965: FFree1Str var_94
  loc_67F968: FFree1Ad var_90
  loc_67F96B: FFreeVar var_B0 = ""
  loc_67F972: FLdRfVar var_B0
  loc_67F975: ImpAdCallFPR4  = Time
  loc_67F97A: LitI4 1
  loc_67F97F: LitI4 1
  loc_67F984: LitVarStr var_C0, "hh:mm"
  loc_67F989: FStVarCopyObj var_D0
  loc_67F98C: FLdRfVar var_D0
  loc_67F98F: FLdRfVar var_B0
  loc_67F992: ImpAdCallI2 Format$(, )
  loc_67F997: FStStrNoPop var_94
  loc_67F99A: FLdPrThis
  loc_67F99B: VCallAd Control_ID_lHora
  loc_67F99E: FStAdFunc var_90
  loc_67F9A1: FLdPr var_90
  loc_67F9A4: Me.Caption = from_stack_1
  loc_67F9A9: FFree1Str var_94
  loc_67F9AC: FFree1Ad var_90
  loc_67F9AF: FFreeVar var_B0 = ""
  loc_67F9B6: LitI2_Byte 0
  loc_67F9B8: FLdRfVar var_8A
  loc_67F9BB: FLdRfVar var_8C
  loc_67F9BE: ImpAdLdRf MemVar_74A220
  loc_67F9C1: NewIfNullPr clsProducts
  loc_67F9C4: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67F9C9: FLdI2 var_8C
  loc_67F9CC: LitI2_Byte 1
  loc_67F9CE: SubI2
  loc_67F9CF: ForI2 var_D4
  loc_67F9D5: FLdRfVar var_94
  loc_67F9D8: FLdI2 var_8A
  loc_67F9DB: LitI2_Byte 1
  loc_67F9DD: AddI2
  loc_67F9DE: ImpAdLdRf MemVar_74A220
  loc_67F9E1: NewIfNullPr clsProducts
  loc_67F9E9: ILdRf var_94
  loc_67F9EC: FLdRfVar var_98
  loc_67F9EF: FLdI2 var_8A
  loc_67F9F2: FLdPrThis
  loc_67F9F3: VCallAd Control_ID_txtProductos
  loc_67F9F6: FStAdFunc var_90
  loc_67F9F9: FLdPr var_90
  loc_67F9FC: Set from_stack_2 = Me(from_stack_1)
  loc_67FA01: FLdPr var_98
  loc_67FA04: Me.Text = from_stack_1
  loc_67FA09: FFree1Str var_94
  loc_67FA0C: FFreeAd var_90 = ""
  loc_67FA13: LitStr "0.00"
  loc_67FA16: FLdRfVar var_98
  loc_67FA19: FLdI2 var_8A
  loc_67FA1C: FLdPrThis
  loc_67FA1D: VCallAd Control_ID_txtVolumen
  loc_67FA20: FStAdFunc var_90
  loc_67FA23: FLdPr var_90
  loc_67FA26: Set from_stack_2 = Me(from_stack_1)
  loc_67FA2B: FLdPr var_98
  loc_67FA2E: Me.Text = from_stack_1
  loc_67FA33: FFreeAd var_90 = ""
  loc_67FA3A: FLdRfVar var_8A
  loc_67FA3D: NextI2 var_D4, loc_67F9D5
  loc_67FA42: FLdRfVar var_8C
  loc_67FA45: ImpAdLdRf MemVar_74A220
  loc_67FA48: NewIfNullPr clsProducts
  loc_67FA4B: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67FA50: FLdI2 var_8C
  loc_67FA53: FLdRfVar var_8A
  loc_67FA56: LitI2_Byte 9
  loc_67FA58: ForI2 var_D8
  loc_67FA5E: LitI2_Byte 0
  loc_67FA60: FLdRfVar var_98
  loc_67FA63: FLdI2 var_8A
  loc_67FA66: FLdPrThis
  loc_67FA67: VCallAd Control_ID_txtProductos
  loc_67FA6A: FStAdFunc var_90
  loc_67FA6D: FLdPr var_90
  loc_67FA70: Set from_stack_2 = Me(from_stack_1)
  loc_67FA75: FLdPr var_98
  loc_67FA78: Me.Visible = from_stack_1b
  loc_67FA7D: FFreeAd var_90 = ""
  loc_67FA84: LitI2_Byte 0
  loc_67FA86: FLdRfVar var_98
  loc_67FA89: FLdI2 var_8A
  loc_67FA8C: FLdPrThis
  loc_67FA8D: VCallAd Control_ID_txtVolumen
  loc_67FA90: FStAdFunc var_90
  loc_67FA93: FLdPr var_90
  loc_67FA96: Set from_stack_2 = Me(from_stack_1)
  loc_67FA9B: FLdPr var_98
  loc_67FA9E: Me.Visible = from_stack_1b
  loc_67FAA3: FFreeAd var_90 = ""
  loc_67FAAA: LitI2_Byte 0
  loc_67FAAC: FLdRfVar var_98
  loc_67FAAF: FLdI2 var_8A
  loc_67FAB2: FLdPrThis
  loc_67FAB3: VCallAd Control_ID_cmbNivel
  loc_67FAB6: FStAdFunc var_90
  loc_67FAB9: FLdPr var_90
  loc_67FABC: Set from_stack_2 = Me(from_stack_1)
  loc_67FAC1: FLdPr var_98
  loc_67FAC4: Me.Visible = from_stack_1b
  loc_67FAC9: FFreeAd var_90 = ""
  loc_67FAD0: FLdRfVar var_8A
  loc_67FAD3: NextI2 var_D8, loc_67FA5E
  loc_67FAD8: FLdRfVar var_B0
  loc_67FADB: FLdRfVar var_88
  loc_67FADE: FLdRfVar var_90
  loc_67FAE1: ImpAdLdRf MemVar_74C760
  loc_67FAE4: NewIfNullPr Formx
  loc_67FAE7: from_stack_1v = Formx.global_4589716Get()
  loc_67FAEC: FLdPr var_90
  loc_67FAEF:  = Formx.ControlBox
  loc_67FAF4: FLdRfVar var_B0
  loc_67FAF7: NotVar var_D0
  loc_67FAFB: CBoolVarNull
  loc_67FAFD: FFree1Ad var_90
  loc_67FB00: FFree1Var var_B0 = ""
  loc_67FB03: BranchF loc_67FB32
  loc_67FB06: FLdRfVar var_B0
  loc_67FB09: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67FB0E: FLdRfVar var_B0
  loc_67FB11: CBoolVarNull
  loc_67FB13: FFree1Var var_B0 = ""
  loc_67FB16: BranchF loc_67FB2F
  loc_67FB19: ILdRf Me
  loc_67FB1C: FStAdNoPop
  loc_67FB20: ImpAdLdRf MemVar_7520D4
  loc_67FB23: NewIfNullPr Global
  loc_67FB26: Global.Unload from_stack_1
  loc_67FB2B: FFree1Ad var_90
  loc_67FB2E: ExitProcHresult
  loc_67FB2F: Branch loc_67FAD8
  loc_67FB32: FLdRfVar var_88
  loc_67FB35: CVarRef
  loc_67FB3A: FLdRfVar var_B0
  loc_67FB3D: ImpAdCallFPR4  = Trim()
  loc_67FB42: FLdRfVar var_B0
  loc_67FB45: CStrVarTmp
  loc_67FB46: FStStr var_88
  loc_67FB49: FFree1Var var_B0 = ""
  loc_67FB4C: ILdRf var_88
  loc_67FB4F: FnLenStr
  loc_67FB50: LitI4 1
  loc_67FB55: EqI4
  loc_67FB56: BranchF loc_67FB98
  loc_67FB59: LitVar_Missing var_128
  loc_67FB5C: LitVar_Missing var_108
  loc_67FB5F: LitVar_Missing var_D0
  loc_67FB62: LitI4 0
  loc_67FB67: LitVarStr var_C0, "No Existen Operaciones Especiales Ingresadas"
  loc_67FB6C: FStVarCopyObj var_B0
  loc_67FB6F: FLdRfVar var_B0
  loc_67FB72: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67FB77: FFreeVar var_B0 = "": var_D0 = "": var_108 = ""
  loc_67FB82: ILdRf Me
  loc_67FB85: FStAdNoPop
  loc_67FB89: ImpAdLdRf MemVar_7520D4
  loc_67FB8C: NewIfNullPr Global
  loc_67FB8F: Global.Unload from_stack_1
  loc_67FB94: FFree1Ad var_90
  loc_67FB97: ExitProcHresult
  loc_67FB98: LitI2_Byte 1
  loc_67FB9A: FStI2 var_8A
  loc_67FB9D: FLdI2 var_8A
  loc_67FBA0: CI4UI1
  loc_67FBA1: ILdRf var_88
  loc_67FBA4: FnLenStr
  loc_67FBA5: LtI4
  loc_67FBA6: BranchF loc_67FCEB
  loc_67FBA9: LitVarI2 var_B0, 20
  loc_67FBAE: FLdI2 var_8A
  loc_67FBB1: LitI2_Byte 4
  loc_67FBB3: AddI2
  loc_67FBB4: CI4UI1
  loc_67FBB5: ILdRf var_88
  loc_67FBB8: ImpAdCallI2 Mid$(, , )
  loc_67FBBD: FStStr var_9C
  loc_67FBC0: LitVar_Missing var_E8
  loc_67FBC3: PopAdLdVar
  loc_67FBC4: FLdZeroAd var_9C
  loc_67FBC7: FStStrNoPop var_94
  loc_67FBCA: FLdPrThis
  loc_67FBCB: VCallAd Control_ID_cmbOperaciones
  loc_67FBCE: FStAdFunc var_90
  loc_67FBD1: FLdPr var_90
  loc_67FBD4: Me.AddItem from_stack_1, from_stack_2
  loc_67FBD9: FFreeStr var_94 = ""
  loc_67FBE0: FFree1Ad var_90
  loc_67FBE3: FFree1Var var_B0 = ""
  loc_67FBE6: LitI4 0
  loc_67FBEB: FLdRfVar var_8C
  loc_67FBEE: FLdPrThis
  loc_67FBEF: VCallAd Control_ID_cmbOperaciones
  loc_67FBF2: FStAdFunc var_90
  loc_67FBF5: FLdPr var_90
  loc_67FBF8:  = Me.NewIndex
  loc_67FBFD: FLdI2 var_8C
  loc_67FC00: LitI2_Byte 1
  loc_67FC02: AddI2
  loc_67FC03: CI4UI1
  loc_67FC04: FLdPr Me
  loc_67FC07: MemLdRfVar from_stack_1.global_488
  loc_67FC0A: RedimPreserve
  loc_67FC14: FFree1Ad var_90
  loc_67FC17: LitVarI2 var_D0, 1
  loc_67FC1C: FLdI2 var_8A
  loc_67FC1F: LitI2_Byte 3
  loc_67FC21: AddI2
  loc_67FC22: CI4UI1
  loc_67FC23: ILdRf var_88
  loc_67FC26: ImpAdCallI2 Mid$(, , )
  loc_67FC2B: FStStr var_19C
  loc_67FC2E: LitI4 1
  loc_67FC33: LitI4 1
  loc_67FC38: LitVarStr var_F8, ">"
  loc_67FC3D: FStVarCopyObj var_128
  loc_67FC40: FLdRfVar var_128
  loc_67FC43: FLdZeroAd var_19C
  loc_67FC46: CVarStr var_108
  loc_67FC49: ImpAdCallI2 Format$(, )
  loc_67FC4E: FStStr var_1A0
  loc_67FC51: LitVarI2 var_B0, 3
  loc_67FC56: FLdI2 var_8A
  loc_67FC59: CI4UI1
  loc_67FC5A: ILdRf var_88
  loc_67FC5D: ImpAdCallI2 Mid$(, , )
  loc_67FC62: CVarStr var_188
  loc_67FC65: LitVarStr var_158, "0"
  loc_67FC6A: FStVarCopyObj var_168
  loc_67FC6D: FLdRfVar var_168
  loc_67FC70: LitVarStr var_138, "1"
  loc_67FC75: FStVarCopyObj var_148
  loc_67FC78: FLdRfVar var_148
  loc_67FC7B: FLdZeroAd var_1A0
  loc_67FC7E: FStStrNoPop var_94
  loc_67FC81: LitStr "S"
  loc_67FC84: EqStr
  loc_67FC86: CVarBoolI2 var_118
  loc_67FC8A: FLdRfVar var_178
  loc_67FC8D: ImpAdCallFPR4  = IIf(, , )
  loc_67FC92: FLdRfVar var_178
  loc_67FC95: ConcatVar var_198
  loc_67FC99: CStrVarTmp
  loc_67FC9A: FStStrNoPop var_9C
  loc_67FC9D: FLdRfVar var_8C
  loc_67FCA0: FLdPrThis
  loc_67FCA1: VCallAd Control_ID_cmbOperaciones
  loc_67FCA4: FStAdFunc var_90
  loc_67FCA7: FLdPr var_90
  loc_67FCAA:  = Me.NewIndex
  loc_67FCAF: FLdI2 var_8C
  loc_67FCB2: CI4UI1
  loc_67FCB3: FLdPr Me
  loc_67FCB6: MemLdStr global_488
  loc_67FCB9: Ary1StStrCopy
  loc_67FCBA: FFreeStr var_94 = "": var_9C = "": var_19C = ""
  loc_67FCC5: FFree1Ad var_90
  loc_67FCC8: FFreeVar var_B0 = "": var_D0 = "": var_108 = "": var_128 = "": var_118 = "": var_148 = "": var_168 = "": var_188 = "": var_178 = ""
  loc_67FCDF: FLdI2 var_8A
  loc_67FCE2: LitI2_Byte &H18
  loc_67FCE4: AddI2
  loc_67FCE5: FStI2 var_8A
  loc_67FCE8: Branch loc_67FB9D
  loc_67FCEB: LitVar_FALSE
  loc_67FCEF: FLdPr Me
  loc_67FCF2: MemStVar
  loc_67FCF6: LitI2_Byte 0
  loc_67FCF8: FLdPr Me
  loc_67FCFB: MemStI2 global_476
  loc_67FCFE: LitI2_Byte 0
  loc_67FD00: FLdPr Me
  loc_67FD03: MemStI2 global_68
  loc_67FD06: LitI2_Byte 0
  loc_67FD08: FLdPrThis
  loc_67FD09: VCallAd Control_ID_cmbOperaciones
  loc_67FD0C: FStAdFunc var_90
  loc_67FD0F: FLdPr var_90
  loc_67FD12: Me.ListIndex = from_stack_1
  loc_67FD17: FFree1Ad var_90
  loc_67FD1A: LitVar_FALSE
  loc_67FD1E: FLdPr Me
  loc_67FD21: MemStVar
  loc_67FD25: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5EDD68
  'Data Table: 44842C
  loc_5EDCDC: FLdRfVar var_94
  loc_5EDCDF: ImpAdCallFPR4  = Date
  loc_5EDCE4: LitI4 1
  loc_5EDCE9: LitI4 1
  loc_5EDCEE: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EDCF3: FStVarCopyObj var_B4
  loc_5EDCF6: FLdRfVar var_B4
  loc_5EDCF9: FLdRfVar var_94
  loc_5EDCFC: ImpAdCallI2 Format$(, )
  loc_5EDD01: FStStrNoPop var_B8
  loc_5EDD04: FLdPrThis
  loc_5EDD05: VCallAd Control_ID_lFecha
  loc_5EDD08: FStAdFunc var_BC
  loc_5EDD0B: FLdPr var_BC
  loc_5EDD0E: Me.Caption = from_stack_1
  loc_5EDD13: FFree1Str var_B8
  loc_5EDD16: FFree1Ad var_BC
  loc_5EDD19: FFreeVar var_94 = ""
  loc_5EDD20: FLdRfVar var_94
  loc_5EDD23: ImpAdCallFPR4  = Time
  loc_5EDD28: LitI4 1
  loc_5EDD2D: LitI4 1
  loc_5EDD32: LitVarStr var_A4, "hh:mm"
  loc_5EDD37: FStVarCopyObj var_B4
  loc_5EDD3A: FLdRfVar var_B4
  loc_5EDD3D: FLdRfVar var_94
  loc_5EDD40: ImpAdCallI2 Format$(, )
  loc_5EDD45: FStStrNoPop var_B8
  loc_5EDD48: FLdPrThis
  loc_5EDD49: VCallAd Control_ID_lHora
  loc_5EDD4C: FStAdFunc var_BC
  loc_5EDD4F: FLdPr var_BC
  loc_5EDD52: Me.Caption = from_stack_1
  loc_5EDD57: FFree1Str var_B8
  loc_5EDD5A: FFree1Ad var_BC
  loc_5EDD5D: FFreeVar var_94 = ""
  loc_5EDD64: ExitProcHresult
End Sub

Private Sub cmbOperaciones_Click() '69A420
  'Data Table: 44842C
  loc_699DBC: FLdPr Me
  loc_699DBF: MemLdRfVar from_stack_1.global_52
  loc_699DC2: CBoolVarNull
  loc_699DC4: BranchF loc_699E06
  loc_699DC7: LitVar_Missing var_110
  loc_699DCA: LitVar_Missing var_F0
  loc_699DCD: LitVarStr var_C0, "Guardar datos"
  loc_699DD2: FStVarCopyObj var_D0
  loc_699DD5: FLdRfVar var_D0
  loc_699DD8: LitI4 &H24
  loc_699DDD: LitVarStr var_A0, "Desea guardar los cambios realizados?"
  loc_699DE2: FStVarCopyObj var_B0
  loc_699DE5: FLdRfVar var_B0
  loc_699DE8: ImpAdCallI2 MsgBox(, , , , )
  loc_699DED: LitI4 6
  loc_699DF2: EqI4
  loc_699DF3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_699DFE: BranchF loc_699E06
  loc_699E01: Call SaveCustomresVolume()
  loc_699E06: LitVar_FALSE
  loc_699E0A: FLdPr Me
  loc_699E0D: MemStVar
  loc_699E11: FLdPr Me
  loc_699E14: MemLdI2 global_68
  loc_699E17: BranchF loc_699E38
  loc_699E1A: FLdRfVar var_116
  loc_699E1D: FLdPrThis
  loc_699E1E: VCallAd Control_ID_cmbOperaciones
  loc_699E21: FStAdFunc var_114
  loc_699E24: FLdPr var_114
  loc_699E27:  = Me.ListIndex
  loc_699E2C: FLdI2 var_116
  loc_699E2F: FLdPr Me
  loc_699E32: MemStI2 global_476
  loc_699E35: FFree1Ad var_114
  loc_699E38: LitI2_Byte &HFF
  loc_699E3A: FLdPr Me
  loc_699E3D: MemStI2 global_68
  loc_699E40: FLdRfVar var_116
  loc_699E43: FLdPrThis
  loc_699E44: VCallAd Control_ID_cmbOperaciones
  loc_699E47: FStAdFunc var_114
  loc_699E4A: FLdPr var_114
  loc_699E4D:  = Me.ListIndex
  loc_699E52: LitI4 1
  loc_699E57: FLdI2 var_116
  loc_699E5A: CI4UI1
  loc_699E5B: FLdPr Me
  loc_699E5E: MemLdStr global_488
  loc_699E61: Ary1LdI4
  loc_699E62: ImpAdCallI2 Right$(, )
  loc_699E67: FStStrNoPop var_11C
  loc_699E6A: LitStr "1"
  loc_699E6D: EqStr
  loc_699E6F: FFree1Str var_11C
  loc_699E72: FFree1Ad var_114
  loc_699E75: BranchF loc_69A062
  loc_699E78: LitI2_Byte &HFF
  loc_699E7A: FLdPrThis
  loc_699E7B: VCallAd Control_ID_txtCuentaCorriente
  loc_699E7E: FStAdFunc var_114
  loc_699E81: FLdPr var_114
  loc_699E84: Me.Visible = from_stack_1b
  loc_699E89: FFree1Ad var_114
  loc_699E8C: LitI2_Byte &HFF
  loc_699E8E: FLdPrThis
  loc_699E8F: VCallAd Control_ID_txtDireccionEntrega
  loc_699E92: FStAdFunc var_114
  loc_699E95: FLdPr var_114
  loc_699E98: Me.Visible = from_stack_1b
  loc_699E9D: FFree1Ad var_114
  loc_699EA0: FLdRfVar var_116
  loc_699EA3: FLdPrThis
  loc_699EA4: VCallAd Control_ID_cmbOperaciones
  loc_699EA7: FStAdFunc var_114
  loc_699EAA: FLdPr var_114
  loc_699EAD:  = Me.ListIndex
  loc_699EB2: LitI4 3
  loc_699EB7: FLdI2 var_116
  loc_699EBA: CI4UI1
  loc_699EBB: FLdPr Me
  loc_699EBE: MemLdStr global_488
  loc_699EC1: Ary1LdI4
  loc_699EC2: ImpAdCallI2 Left$(, )
  loc_699EC7: PopTmpLdAdStr
  loc_699ECB: Call ClientesxOperacion(from_stack_1v)
  loc_699ED0: FFree1Str var_11C
  loc_699ED3: FFree1Ad var_114
  loc_699ED6: FLdRfVar var_116
  loc_699ED9: FLdPrThis
  loc_699EDA: VCallAd Control_ID_cmbClientes
  loc_699EDD: FStAdFunc var_114
  loc_699EE0: FLdPr var_114
  loc_699EE3:  = Me.ListCount
  loc_699EE8: FLdI2 var_116
  loc_699EEB: LitI2_Byte 0
  loc_699EED: EqI2
  loc_699EEE: FFree1Ad var_114
  loc_699EF1: BranchF loc_69A00F
  loc_699EF4: LitVar_Missing var_110
  loc_699EF7: LitVar_Missing var_F0
  loc_699EFA: LitVarStr var_C0, "Operaciones Especiales"
  loc_699EFF: FStVarCopyObj var_D0
  loc_699F02: FLdRfVar var_D0
  loc_699F05: LitI4 &H40
  loc_699F0A: LitVarStr var_A0, "No hay Clientes para esta operacion. Verifique por favor."
  loc_699F0F: FStVarCopyObj var_B0
  loc_699F12: FLdRfVar var_B0
  loc_699F15: ImpAdCallFPR4 MsgBox(, , , , )
  loc_699F1A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_699F25: FLdPrThis
  loc_699F26: VCallAd Control_ID_cmbClientes
  loc_699F29: FStAdFunc var_114
  loc_699F2C: FLdPr var_114
  loc_699F2F: Me.Clear
  loc_699F34: FFree1Ad var_114
  loc_699F37: LitI2_Byte 0
  loc_699F39: FLdPrThis
  loc_699F3A: VCallAd Control_ID_txtCuentaCorriente
  loc_699F3D: FStAdFunc var_114
  loc_699F40: FLdPr var_114
  loc_699F43: Me.Visible = from_stack_1b
  loc_699F48: FFree1Ad var_114
  loc_699F4B: LitI2_Byte 0
  loc_699F4D: FLdPrThis
  loc_699F4E: VCallAd Control_ID_txtDireccionEntrega
  loc_699F51: FStAdFunc var_114
  loc_699F54: FLdPr var_114
  loc_699F57: Me.Visible = from_stack_1b
  loc_699F5C: FFree1Ad var_114
  loc_699F5F: LitI2_Byte 0
  loc_699F61: FLdPrThis
  loc_699F62: VCallAd Control_ID_cmbClientes
  loc_699F65: FStAdFunc var_114
  loc_699F68: FLdPr var_114
  loc_699F6B: Me.Visible = from_stack_1b
  loc_699F70: FFree1Ad var_114
  loc_699F73: LitI2_Byte 0
  loc_699F75: FLdRfVar var_8A
  loc_699F78: FLdRfVar var_116
  loc_699F7B: ImpAdLdRf MemVar_74A220
  loc_699F7E: NewIfNullPr clsProducts
  loc_699F81: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_699F86: FLdI2 var_116
  loc_699F89: LitI2_Byte 1
  loc_699F8B: SubI2
  loc_699F8C: ForI2 var_120
  loc_699F92: FLdRfVar var_124
  loc_699F95: FLdI2 var_8A
  loc_699F98: FLdPrThis
  loc_699F99: VCallAd Control_ID_cmbNivel
  loc_699F9C: FStAdFunc var_114
  loc_699F9F: FLdPr var_114
  loc_699FA2: Set from_stack_2 = Me(from_stack_1)
  loc_699FA7: FLdPr var_124
  loc_699FAA: Me.Clear
  loc_699FAF: FFreeAd var_114 = ""
  loc_699FB6: LitStr vbNullString
  loc_699FB9: FLdRfVar var_124
  loc_699FBC: FLdI2 var_8A
  loc_699FBF: FLdPrThis
  loc_699FC0: VCallAd Control_ID_txtVolumen
  loc_699FC3: FStAdFunc var_114
  loc_699FC6: FLdPr var_114
  loc_699FC9: Set from_stack_2 = Me(from_stack_1)
  loc_699FCE: FLdPr var_124
  loc_699FD1: Me.Text = from_stack_1
  loc_699FD6: FFreeAd var_114 = ""
  loc_699FDD: LitI2_Byte 0
  loc_699FDF: FLdRfVar var_124
  loc_699FE2: FLdI2 var_8A
  loc_699FE5: FLdPrThis
  loc_699FE6: VCallAd Control_ID_txtVolumen
  loc_699FE9: FStAdFunc var_114
  loc_699FEC: FLdPr var_114
  loc_699FEF: Set from_stack_2 = Me(from_stack_1)
  loc_699FF4: FLdPr var_124
  loc_699FF7: Me.Enabled = from_stack_1b
  loc_699FFC: FFreeAd var_114 = ""
  loc_69A003: FLdRfVar var_8A
  loc_69A006: NextI2 var_120, loc_699F92
  loc_69A00B: ExitProcHresult
  loc_69A00C: Branch loc_69A04B
  loc_69A00F: LitI2_Byte &HFF
  loc_69A011: FLdPrThis
  loc_69A012: VCallAd Control_ID_txtCuentaCorriente
  loc_69A015: FStAdFunc var_114
  loc_69A018: FLdPr var_114
  loc_69A01B: Me.Visible = from_stack_1b
  loc_69A020: FFree1Ad var_114
  loc_69A023: LitI2_Byte &HFF
  loc_69A025: FLdPrThis
  loc_69A026: VCallAd Control_ID_txtDireccionEntrega
  loc_69A029: FStAdFunc var_114
  loc_69A02C: FLdPr var_114
  loc_69A02F: Me.Visible = from_stack_1b
  loc_69A034: FFree1Ad var_114
  loc_69A037: LitI2_Byte &HFF
  loc_69A039: FLdPrThis
  loc_69A03A: VCallAd Control_ID_cmbClientes
  loc_69A03D: FStAdFunc var_114
  loc_69A040: FLdPr var_114
  loc_69A043: Me.Visible = from_stack_1b
  loc_69A048: FFree1Ad var_114
  loc_69A04B: LitI2_Byte 0
  loc_69A04D: FLdPrThis
  loc_69A04E: VCallAd Control_ID_cmbClientes
  loc_69A051: FStAdFunc var_114
  loc_69A054: FLdPr var_114
  loc_69A057: Me.ListIndex = from_stack_1
  loc_69A05C: FFree1Ad var_114
  loc_69A05F: Branch loc_69A41F
  loc_69A062: FLdPrThis
  loc_69A063: VCallAd Control_ID_cmbClientes
  loc_69A066: FStAdFunc var_114
  loc_69A069: FLdPr var_114
  loc_69A06C: Me.Clear
  loc_69A071: FFree1Ad var_114
  loc_69A074: LitI2_Byte 0
  loc_69A076: FLdPrThis
  loc_69A077: VCallAd Control_ID_txtCuentaCorriente
  loc_69A07A: FStAdFunc var_114
  loc_69A07D: FLdPr var_114
  loc_69A080: Me.Visible = from_stack_1b
  loc_69A085: FFree1Ad var_114
  loc_69A088: LitI2_Byte 0
  loc_69A08A: FLdPrThis
  loc_69A08B: VCallAd Control_ID_txtDireccionEntrega
  loc_69A08E: FStAdFunc var_114
  loc_69A091: FLdPr var_114
  loc_69A094: Me.Visible = from_stack_1b
  loc_69A099: FFree1Ad var_114
  loc_69A09C: LitI2_Byte 0
  loc_69A09E: FLdPrThis
  loc_69A09F: VCallAd Control_ID_cmbClientes
  loc_69A0A2: FStAdFunc var_114
  loc_69A0A5: FLdPr var_114
  loc_69A0A8: Me.Visible = from_stack_1b
  loc_69A0AD: FFree1Ad var_114
  loc_69A0B0: LitI2_Byte 0
  loc_69A0B2: FLdRfVar var_8A
  loc_69A0B5: FLdRfVar var_116
  loc_69A0B8: ImpAdLdRf MemVar_74A220
  loc_69A0BB: NewIfNullPr clsProducts
  loc_69A0BE: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_69A0C3: FLdI2 var_116
  loc_69A0C6: LitI2_Byte 1
  loc_69A0C8: SubI2
  loc_69A0C9: ForI2 var_128
  loc_69A0CF: LitI2_Byte &HFF
  loc_69A0D1: FLdRfVar var_124
  loc_69A0D4: FLdI2 var_8A
  loc_69A0D7: FLdPrThis
  loc_69A0D8: VCallAd Control_ID_txtVolumen
  loc_69A0DB: FStAdFunc var_114
  loc_69A0DE: FLdPr var_114
  loc_69A0E1: Set from_stack_2 = Me(from_stack_1)
  loc_69A0E6: FLdPr var_124
  loc_69A0E9: Me.Enabled = from_stack_1b
  loc_69A0EE: FFreeAd var_114 = ""
  loc_69A0F5: LitI2_Byte &HFF
  loc_69A0F7: FLdRfVar var_124
  loc_69A0FA: FLdI2 var_8A
  loc_69A0FD: FLdPrThis
  loc_69A0FE: VCallAd Control_ID_txtProductos
  loc_69A101: FStAdFunc var_114
  loc_69A104: FLdPr var_114
  loc_69A107: Set from_stack_2 = Me(from_stack_1)
  loc_69A10C: FLdPr var_124
  loc_69A10F: Me.Enabled = from_stack_1b
  loc_69A114: FFreeAd var_114 = ""
  loc_69A11B: FLdRfVar var_124
  loc_69A11E: FLdI2 var_8A
  loc_69A121: FLdPrThis
  loc_69A122: VCallAd Control_ID_cmbNivel
  loc_69A125: FStAdFunc var_114
  loc_69A128: FLdPr var_114
  loc_69A12B: Set from_stack_2 = Me(from_stack_1)
  loc_69A130: FLdPr var_124
  loc_69A133: Me.Clear
  loc_69A138: FFreeAd var_114 = ""
  loc_69A13F: LitI2_Byte &HFF
  loc_69A141: FLdRfVar var_124
  loc_69A144: FLdI2 var_8A
  loc_69A147: FLdPrThis
  loc_69A148: VCallAd Control_ID_cmbNivel
  loc_69A14B: FStAdFunc var_114
  loc_69A14E: FLdPr var_114
  loc_69A151: Set from_stack_2 = Me(from_stack_1)
  loc_69A156: FLdPr var_124
  loc_69A159: Me.Enabled = from_stack_1b
  loc_69A15E: FFreeAd var_114 = ""
  loc_69A165: LitVar_Missing var_A0
  loc_69A168: PopAdLdVar
  loc_69A169: LitI2_Byte 1
  loc_69A16B: CStrUI1
  loc_69A16D: FStStrNoPop var_11C
  loc_69A170: FLdRfVar var_124
  loc_69A173: FLdI2 var_8A
  loc_69A176: FLdPrThis
  loc_69A177: VCallAd Control_ID_cmbNivel
  loc_69A17A: FStAdFunc var_114
  loc_69A17D: FLdPr var_114
  loc_69A180: Set from_stack_2 = Me(from_stack_1)
  loc_69A185: FLdPr var_124
  loc_69A188: Me.AddItem from_stack_1, from_stack_2
  loc_69A18D: FFree1Str var_11C
  loc_69A190: FFreeAd var_114 = ""
  loc_69A197: LitI2_Byte 0
  loc_69A199: FLdRfVar var_124
  loc_69A19C: FLdI2 var_8A
  loc_69A19F: FLdPrThis
  loc_69A1A0: VCallAd Control_ID_cmbNivel
  loc_69A1A3: FStAdFunc var_114
  loc_69A1A6: FLdPr var_114
  loc_69A1A9: Set from_stack_2 = Me(from_stack_1)
  loc_69A1AE: FLdPr var_124
  loc_69A1B1: Me.ListIndex = from_stack_1
  loc_69A1B6: FFreeAd var_114 = ""
  loc_69A1BD: FLdRfVar var_8A
  loc_69A1C0: NextI2 var_128, loc_69A0CF
  loc_69A1C5: FLdRfVar var_116
  loc_69A1C8: FLdPrThis
  loc_69A1C9: VCallAd Control_ID_cmbOperaciones
  loc_69A1CC: FStAdFunc var_114
  loc_69A1CF: FLdPr var_114
  loc_69A1D2:  = Me.ListIndex
  loc_69A1D7: LitI4 3
  loc_69A1DC: FLdI2 var_116
  loc_69A1DF: CI4UI1
  loc_69A1E0: FLdPr Me
  loc_69A1E3: MemLdStr global_488
  loc_69A1E6: Ary1LdI4
  loc_69A1E7: ImpAdCallI2 Left$(, )
  loc_69A1EC: FStStr var_88
  loc_69A1EF: FFree1Ad var_114
  loc_69A1F2: ILdRf var_88
  loc_69A1F5: LitStr "000000000"
  loc_69A1F8: ConcatStr
  loc_69A1F9: FStStr var_88
  loc_69A1FC: ILdRf var_88
  loc_69A1FF: LitStr "000"
  loc_69A202: ConcatStr
  loc_69A203: FStStr var_88
  loc_69A206: ILdRf var_88
  loc_69A209: LitStr "00"
  loc_69A20C: ConcatStr
  loc_69A20D: FStStr var_88
  loc_69A210: FLdRfVar var_88
  loc_69A213: Call OperClieVol(from_stack_1v)
  loc_69A218: LitStr "FLOTAS.INI"
  loc_69A21B: FLdRfVar var_130
  loc_69A21E: CStr2Ansi
  loc_69A21F: ILdRf var_130
  loc_69A222: LitI4 -1
  loc_69A227: LitStr "CODIGO_VENTAS_DIFERENCIALES"
  loc_69A22A: FLdRfVar var_12C
  loc_69A22D: CStr2Ansi
  loc_69A22E: ILdRf var_12C
  loc_69A231: LitStr "General"
  loc_69A234: FLdRfVar var_11C
  loc_69A237: CStr2Ansi
  loc_69A238: ILdRf var_11C
  loc_69A23B: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_69A240: FStR4 var_134
  loc_69A243: SetLastSystemError
  loc_69A244: ILdRf var_134
  loc_69A247: CI2I4
  loc_69A248: FStI2 var_8E
  loc_69A24B: FFreeStr var_11C = "": var_12C = ""
  loc_69A254: LitI2_Byte 0
  loc_69A256: FLdRfVar var_136
  loc_69A259: FLdRfVar var_116
  loc_69A25C: ImpAdLdRf MemVar_74A220
  loc_69A25F: NewIfNullPr clsProducts
  loc_69A262: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_69A267: FLdI2 var_116
  loc_69A26A: LitI2_Byte 1
  loc_69A26C: SubI2
  loc_69A26D: ForI2 var_13A
  loc_69A273: LitStr "0"
  loc_69A276: FLdRfVar var_11C
  loc_69A279: FLdRfVar var_124
  loc_69A27C: FLdI2 var_136
  loc_69A27F: FLdPrThis
  loc_69A280: VCallAd Control_ID_cmbNivel
  loc_69A283: FStAdFunc var_114
  loc_69A286: FLdPr var_114
  loc_69A289: Set from_stack_2 = Me(from_stack_1)
  loc_69A28E: FLdPr var_124
  loc_69A291:  = Me.Text
  loc_69A296: ILdRf var_11C
  loc_69A299: ConcatStr
  loc_69A29A: FStStrNoPop var_12C
  loc_69A29D: ImpAdCallFPR4 push Val()
  loc_69A2A2: CR8R8
  loc_69A2A3: LitI2_Byte 0
  loc_69A2A5: CR8I2
  loc_69A2A6: EqR4
  loc_69A2A7: FFreeStr var_11C = ""
  loc_69A2AE: FFreeAd var_114 = ""
  loc_69A2B5: BranchF loc_69A314
  loc_69A2B8: LitI4 1
  loc_69A2BD: LitI4 1
  loc_69A2C2: LitVarStr var_C0, "#####0.00"
  loc_69A2C7: FStVarCopyObj var_D0
  loc_69A2CA: FLdRfVar var_D0
  loc_69A2CD: LitVarI2 var_B0, 0
  loc_69A2D2: FLdRfVar var_F0
  loc_69A2D5: ImpAdCallFPR4  = Format(, )
  loc_69A2DA: FLdRfVar var_F0
  loc_69A2DD: CStrVarVal var_11C
  loc_69A2E1: FLdRfVar var_124
  loc_69A2E4: FLdI2 var_136
  loc_69A2E7: FLdPrThis
  loc_69A2E8: VCallAd Control_ID_txtVolumen
  loc_69A2EB: FStAdFunc var_114
  loc_69A2EE: FLdPr var_114
  loc_69A2F1: Set from_stack_2 = Me(from_stack_1)
  loc_69A2F6: FLdPr var_124
  loc_69A2F9: Me.Text = from_stack_1
  loc_69A2FE: FFree1Str var_11C
  loc_69A301: FFreeAd var_114 = ""
  loc_69A308: FFreeVar var_B0 = "": var_D0 = ""
  loc_69A311: Branch loc_69A3BE
  loc_69A314: LitStr "0"
  loc_69A317: FLdRfVar var_11C
  loc_69A31A: FLdRfVar var_124
  loc_69A31D: FLdI2 var_136
  loc_69A320: FLdPrThis
  loc_69A321: VCallAd Control_ID_cmbNivel
  loc_69A324: FStAdFunc var_114
  loc_69A327: FLdPr var_114
  loc_69A32A: Set from_stack_2 = Me(from_stack_1)
  loc_69A32F: FLdPr var_124
  loc_69A332:  = Me.Text
  loc_69A337: ILdRf var_11C
  loc_69A33A: ConcatStr
  loc_69A33B: FStStrNoPop var_12C
  loc_69A33E: ImpAdCallFPR4 push Val()
  loc_69A343: FStFPR8 var_14C
  loc_69A346: LitI4 1
  loc_69A34B: LitI4 1
  loc_69A350: LitVarStr var_C0, "#####0.00"
  loc_69A355: FStVarCopyObj var_B0
  loc_69A358: FLdRfVar var_B0
  loc_69A35B: FLdI2 var_136
  loc_69A35E: LitI2_Byte 1
  loc_69A360: AddI2
  loc_69A361: CI4UI1
  loc_69A362: FLdFPR8 var_14C
  loc_69A365: CI4R8
  loc_69A366: FLdPr Me
  loc_69A369: MemLdRfVar from_stack_1.global_76
  loc_69A36C: AryInRecLdRf
  loc_69A372: CVarRef
  loc_69A377: FLdRfVar var_D0
  loc_69A37A: ImpAdCallFPR4  = Format(, )
  loc_69A37F: FLdRfVar var_D0
  loc_69A382: CStrVarVal var_130
  loc_69A386: FLdRfVar var_144
  loc_69A389: FLdI2 var_136
  loc_69A38C: FLdPrThis
  loc_69A38D: VCallAd Control_ID_txtVolumen
  loc_69A390: FStAdFunc var_140
  loc_69A393: FLdPr var_140
  loc_69A396: Set from_stack_2 = Me(from_stack_1)
  loc_69A39B: FLdPr var_144
  loc_69A39E: Me.Text = from_stack_1
  loc_69A3A3: FFreeStr var_11C = "": var_12C = ""
  loc_69A3AC: FFreeAd var_114 = "": var_124 = "": var_140 = ""
  loc_69A3B7: FFreeVar var_B0 = ""
  loc_69A3BE: FLdRfVar var_116
  loc_69A3C1: FLdPrThis
  loc_69A3C2: VCallAd Control_ID_cmbOperaciones
  loc_69A3C5: FStAdFunc var_114
  loc_69A3C8: FLdPr var_114
  loc_69A3CB:  = Me.ListIndex
  loc_69A3D0: FLdI2 var_8E
  loc_69A3D3: LitI4 3
  loc_69A3D8: FLdI2 var_116
  loc_69A3DB: CI4UI1
  loc_69A3DC: FLdPr Me
  loc_69A3DF: MemLdStr global_488
  loc_69A3E2: Ary1LdI4
  loc_69A3E3: ImpAdCallI2 Left$(, )
  loc_69A3E8: FStStrNoPop var_11C
  loc_69A3EB: CI2Str
  loc_69A3ED: NeI2
  loc_69A3EE: FLdRfVar var_140
  loc_69A3F1: FLdI2 var_136
  loc_69A3F4: FLdPrThis
  loc_69A3F5: VCallAd Control_ID_txtVolumen
  loc_69A3F8: FStAdFunc var_124
  loc_69A3FB: FLdPr var_124
  loc_69A3FE: Set from_stack_2 = Me(from_stack_1)
  loc_69A403: FLdPr var_140
  loc_69A406: Me.Enabled = from_stack_1b
  loc_69A40B: FFree1Str var_11C
  loc_69A40E: FFreeAd var_114 = "": var_124 = ""
  loc_69A417: FLdRfVar var_136
  loc_69A41A: NextI2 var_13A, loc_69A273
  loc_69A41F: ExitProcHresult
End Sub

Private Sub txtVolumen_GotFocus(arg_C) '5FC630
  'Data Table: 44842C
  loc_5FC574: LitI4 0
  loc_5FC579: FLdRfVar var_8C
  loc_5FC57C: ILdI2 arg_C
  loc_5FC57F: FLdPrThis
  loc_5FC580: VCallAd Control_ID_txtVolumen
  loc_5FC583: FStAdFunc var_88
  loc_5FC586: FLdPr var_88
  loc_5FC589: Set from_stack_2 = Me(from_stack_1)
  loc_5FC58E: FLdPr var_8C
  loc_5FC591: Me.SelStart = from_stack_1
  loc_5FC596: FFreeAd var_88 = ""
  loc_5FC59D: FLdRfVar var_90
  loc_5FC5A0: FLdRfVar var_8C
  loc_5FC5A3: ILdI2 arg_C
  loc_5FC5A6: FLdPrThis
  loc_5FC5A7: VCallAd Control_ID_txtVolumen
  loc_5FC5AA: FStAdFunc var_88
  loc_5FC5AD: FLdPr var_88
  loc_5FC5B0: Set from_stack_2 = Me(from_stack_1)
  loc_5FC5B5: FLdPr var_8C
  loc_5FC5B8:  = Me.Text
  loc_5FC5BD: ILdRf var_90
  loc_5FC5C0: FnLenStr
  loc_5FC5C1: FLdRfVar var_98
  loc_5FC5C4: ILdI2 arg_C
  loc_5FC5C7: FLdPrThis
  loc_5FC5C8: VCallAd Control_ID_txtVolumen
  loc_5FC5CB: FStAdFunc var_94
  loc_5FC5CE: FLdPr var_94
  loc_5FC5D1: Set from_stack_2 = Me(from_stack_1)
  loc_5FC5D6: FLdPr var_98
  loc_5FC5D9: Me.SelLength = from_stack_1
  loc_5FC5DE: FFree1Str var_90
  loc_5FC5E1: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5FC5EC: LitStr "0"
  loc_5FC5EF: FLdRfVar var_90
  loc_5FC5F2: FLdRfVar var_8C
  loc_5FC5F5: ILdI2 arg_C
  loc_5FC5F8: FLdPrThis
  loc_5FC5F9: VCallAd Control_ID_txtVolumen
  loc_5FC5FC: FStAdFunc var_88
  loc_5FC5FF: FLdPr var_88
  loc_5FC602: Set from_stack_2 = Me(from_stack_1)
  loc_5FC607: FLdPr var_8C
  loc_5FC60A:  = Me.Text
  loc_5FC60F: ILdRf var_90
  loc_5FC612: ConcatStr
  loc_5FC613: FStStrNoPop var_9C
  loc_5FC616: CR8Str
  loc_5FC618: FLdPr Me
  loc_5FC61B: MemStFPR8 global_480
  loc_5FC61E: FFreeStr var_90 = ""
  loc_5FC625: FFreeAd var_88 = ""
  loc_5FC62C: ExitProcHresult
End Sub

Private Sub txtVolumen_KeyPress(KeyAscii As Integer) '5E02D0
  'Data Table: 44842C
  loc_5E0274: ILdI2 arg_10
  loc_5E0277: FStI2 var_86
  loc_5E027A: FLdI2 var_86
  loc_5E027D: LitI4 &HD
  loc_5E0282: CI2I4
  loc_5E0283: EqI2
  loc_5E0284: BranchF loc_5E029C
  loc_5E0287: LitI2_Byte 0
  loc_5E0289: IStI2 arg_10
  loc_5E028C: LitI2_Byte 0
  loc_5E028E: PopTmpLdAd2 var_88
  loc_5E0291: LitStr "{TAB}"
  loc_5E0294: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E0299: Branch loc_5E02CE
  loc_5E029C: FLdI2 var_86
  loc_5E029F: LitI4 8
  loc_5E02A4: CI2I4
  loc_5E02A5: EqI2
  loc_5E02A6: BranchT loc_5E02C6
  loc_5E02A9: FLdI2 var_86
  loc_5E02AC: LitI4 &H30
  loc_5E02B1: CI2I4
  loc_5E02B2: LitI4 &H39
  loc_5E02B7: CI2I4
  loc_5E02B8: BetweenI2
  loc_5E02BA: BranchT loc_5E02C6
  loc_5E02BD: FLdI2 var_86
  loc_5E02C0: LitI2_Byte &H2E
  loc_5E02C2: EqI2
  loc_5E02C3: BranchF loc_5E02C9
  loc_5E02C6: Branch loc_5E02CE
  loc_5E02C9: LitI2_Byte 0
  loc_5E02CB: IStI2 arg_10
  loc_5E02CE: ExitProcHresult
End Sub

Private Sub txtVolumen_LostFocus(arg_C) '65107C
  'Data Table: 44842C
  loc_650DD0: FLdRfVar var_90
  loc_650DD3: FLdRfVar var_8C
  loc_650DD6: ILdI2 arg_C
  loc_650DD9: FLdPrThis
  loc_650DDA: VCallAd Control_ID_txtVolumen
  loc_650DDD: FStAdFunc var_88
  loc_650DE0: FLdPr var_88
  loc_650DE3: Set from_stack_2 = Me(from_stack_1)
  loc_650DE8: FLdPr var_8C
  loc_650DEB:  = Me.Text
  loc_650DF0: ILdRf var_90
  loc_650DF3: LitStr vbNullString
  loc_650DF6: EqStr
  loc_650DF8: FFree1Str var_90
  loc_650DFB: FFreeAd var_88 = ""
  loc_650E02: BranchF loc_650E2C
  loc_650E05: LitStr "0.00"
  loc_650E08: FLdRfVar var_8C
  loc_650E0B: ILdI2 arg_C
  loc_650E0E: FLdPrThis
  loc_650E0F: VCallAd Control_ID_txtVolumen
  loc_650E12: FStAdFunc var_88
  loc_650E15: FLdPr var_88
  loc_650E18: Set from_stack_2 = Me(from_stack_1)
  loc_650E1D: FLdPr var_8C
  loc_650E20: Me.Text = from_stack_1
  loc_650E25: FFreeAd var_88 = ""
  loc_650E2C: LitStr "0"
  loc_650E2F: FLdRfVar var_90
  loc_650E32: FLdRfVar var_8C
  loc_650E35: ILdI2 arg_C
  loc_650E38: FLdPrThis
  loc_650E39: VCallAd Control_ID_txtVolumen
  loc_650E3C: FStAdFunc var_88
  loc_650E3F: FLdPr var_88
  loc_650E42: Set from_stack_2 = Me(from_stack_1)
  loc_650E47: FLdPr var_8C
  loc_650E4A:  = Me.Text
  loc_650E4F: ILdRf var_90
  loc_650E52: ImpAdCallFPR4 push Val()
  loc_650E57: CStrR8
  loc_650E59: FStStrNoPop var_94
  loc_650E5C: ConcatStr
  loc_650E5D: FStStrNoPop var_98
  loc_650E60: CR8Str
  loc_650E62: LitDate 999999.99
  loc_650E6B: GtR4
  loc_650E6C: FFreeStr var_90 = "": var_94 = ""
  loc_650E75: FFreeAd var_88 = ""
  loc_650E7C: BranchF loc_650ECF
  loc_650E7F: LitVar_Missing var_118
  loc_650E82: LitVar_Missing var_F8
  loc_650E85: LitVar_Missing var_D8
  loc_650E88: LitI4 &H40
  loc_650E8D: LitVarStr var_A8, "Debe ingresa un monto no mayor a 999999.99. Verifique por favor."
  loc_650E92: FStVarCopyObj var_B8
  loc_650E95: FLdRfVar var_B8
  loc_650E98: ImpAdCallFPR4 MsgBox(, , , , )
  loc_650E9D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_650EA8: LitStr "0"
  loc_650EAB: FLdRfVar var_8C
  loc_650EAE: ILdI2 arg_C
  loc_650EB1: FLdPrThis
  loc_650EB2: VCallAd Control_ID_txtVolumen
  loc_650EB5: FStAdFunc var_88
  loc_650EB8: FLdPr var_88
  loc_650EBB: Set from_stack_2 = Me(from_stack_1)
  loc_650EC0: FLdPr var_8C
  loc_650EC3: Me.Text = from_stack_1
  loc_650EC8: FFreeAd var_88 = ""
  loc_650ECF: FLdRfVar var_90
  loc_650ED2: FLdRfVar var_8C
  loc_650ED5: ILdI2 arg_C
  loc_650ED8: FLdPrThis
  loc_650ED9: VCallAd Control_ID_txtVolumen
  loc_650EDC: FStAdFunc var_88
  loc_650EDF: FLdPr var_88
  loc_650EE2: Set from_stack_2 = Me(from_stack_1)
  loc_650EE7: FLdPr var_8C
  loc_650EEA:  = Me.Text
  loc_650EEF: ILdRf var_90
  loc_650EF2: ImpAdCallFPR4 push Val()
  loc_650EF7: FStFPR8 var_12C
  loc_650EFA: LitI4 1
  loc_650EFF: LitI4 1
  loc_650F04: LitVarStr var_C8, "#####0.00"
  loc_650F09: FStVarCopyObj var_D8
  loc_650F0C: FLdRfVar var_D8
  loc_650F0F: LitStr "0"
  loc_650F12: FLdFPR8 var_12C
  loc_650F15: CStrR8
  loc_650F17: FStStrNoPop var_94
  loc_650F1A: ConcatStr
  loc_650F1B: FStStrNoPop var_98
  loc_650F1E: CR8Str
  loc_650F20: CVarR8
  loc_650F24: ImpAdCallI2 Format$(, )
  loc_650F29: FStStrNoPop var_124
  loc_650F2C: FLdRfVar var_120
  loc_650F2F: ILdI2 arg_C
  loc_650F32: FLdPrThis
  loc_650F33: VCallAd Control_ID_txtVolumen
  loc_650F36: FStAdFunc var_11C
  loc_650F39: FLdPr var_11C
  loc_650F3C: Set from_stack_2 = Me(from_stack_1)
  loc_650F41: FLdPr var_120
  loc_650F44: Me.Text = from_stack_1
  loc_650F49: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_650F54: FFreeAd var_88 = "": var_8C = "": var_11C = ""
  loc_650F5F: FFreeVar var_B8 = ""
  loc_650F66: LitStr "0"
  loc_650F69: FLdRfVar var_90
  loc_650F6C: FLdRfVar var_8C
  loc_650F6F: ILdI2 arg_C
  loc_650F72: FLdPrThis
  loc_650F73: VCallAd Control_ID_txtVolumen
  loc_650F76: FStAdFunc var_88
  loc_650F79: FLdPr var_88
  loc_650F7C: Set from_stack_2 = Me(from_stack_1)
  loc_650F81: FLdPr var_8C
  loc_650F84:  = Me.Text
  loc_650F89: ILdRf var_90
  loc_650F8C: ConcatStr
  loc_650F8D: FStStrNoPop var_94
  loc_650F90: CR8Str
  loc_650F92: FLdPr Me
  loc_650F95: MemLdFPR8 global_480
  loc_650F98: NeR8
  loc_650F99: FFreeStr var_90 = ""
  loc_650FA0: FFreeAd var_88 = ""
  loc_650FA7: BranchF loc_650FB4
  loc_650FAA: LitVar_TRUE var_A8
  loc_650FAD: FLdPr Me
  loc_650FB0: MemStVar
  loc_650FB4: FLdRfVar var_90
  loc_650FB7: FLdRfVar var_8C
  loc_650FBA: ILdI2 arg_C
  loc_650FBD: FLdPrThis
  loc_650FBE: VCallAd Control_ID_cmbNivel
  loc_650FC1: FStAdFunc var_88
  loc_650FC4: FLdPr var_88
  loc_650FC7: Set from_stack_2 = Me(from_stack_1)
  loc_650FCC: FLdPr var_8C
  loc_650FCF:  = Me.Text
  loc_650FD4: FLdZeroAd var_90
  loc_650FD7: CVarStr var_B8
  loc_650FDA: ImpAdCallI2 IsNumeric()
  loc_650FDF: FFreeAd var_88 = ""
  loc_650FE6: FFree1Var var_B8 = ""
  loc_650FE9: BranchF loc_65107A
  loc_650FEC: LitStr "0"
  loc_650FEF: FLdRfVar var_98
  loc_650FF2: FLdRfVar var_120
  loc_650FF5: ILdI2 arg_C
  loc_650FF8: FLdPrThis
  loc_650FF9: VCallAd Control_ID_cmbNivel
  loc_650FFC: FStAdFunc var_11C
  loc_650FFF: FLdPr var_11C
  loc_651002: Set from_stack_2 = Me(from_stack_1)
  loc_651007: FLdPr var_120
  loc_65100A:  = Me.Text
  loc_65100F: ILdRf var_98
  loc_651012: ConcatStr
  loc_651013: FStStrNoPop var_124
  loc_651016: ImpAdCallFPR4 push Val()
  loc_65101B: FStFPR8 var_12C
  loc_65101E: LitStr "0"
  loc_651021: FLdRfVar var_90
  loc_651024: FLdRfVar var_8C
  loc_651027: ILdI2 arg_C
  loc_65102A: FLdPrThis
  loc_65102B: VCallAd Control_ID_txtVolumen
  loc_65102E: FStAdFunc var_88
  loc_651031: FLdPr var_88
  loc_651034: Set from_stack_2 = Me(from_stack_1)
  loc_651039: FLdPr var_8C
  loc_65103C:  = Me.Text
  loc_651041: ILdRf var_90
  loc_651044: ConcatStr
  loc_651045: FStStrNoPop var_94
  loc_651048: CR8Str
  loc_65104A: ILdI2 arg_C
  loc_65104D: LitI2_Byte 1
  loc_65104F: AddI2
  loc_651050: CI4UI1
  loc_651051: FLdFPR8 var_12C
  loc_651054: CI4R8
  loc_651055: FLdPr Me
  loc_651058: MemLdRfVar from_stack_1.global_76
  loc_65105B: AryInRecLdPr
  loc_651061: MemStFPR8 global_0
  loc_651064: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_65106F: FFreeAd var_88 = "": var_8C = "": var_11C = ""
  loc_65107A: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D0E80
  'Data Table: 44842C
  loc_5D0E68: ILdRf Me
  loc_5D0E6B: FStAdNoPop
  loc_5D0E6F: ImpAdLdRf MemVar_7520D4
  loc_5D0E72: NewIfNullPr Global
  loc_5D0E75: Global.Unload from_stack_1
  loc_5D0E7A: FFree1Ad var_88
  loc_5D0E7D: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5EC3F0
  'Data Table: 44842C
  loc_5EC370: FLdPr Me
  loc_5EC373: MemLdRfVar from_stack_1.global_52
  loc_5EC376: CBoolVarNull
  loc_5EC378: BranchF loc_5EC3D8
  loc_5EC37B: LitVar_Missing var_104
  loc_5EC37E: LitVar_Missing var_E4
  loc_5EC381: LitVarStr var_B4, "Guardar datos"
  loc_5EC386: FStVarCopyObj var_C4
  loc_5EC389: FLdRfVar var_C4
  loc_5EC38C: LitI4 &H24
  loc_5EC391: LitVarStr var_94, "Desea guardar los cambios realizados?"
  loc_5EC396: FStVarCopyObj var_A4
  loc_5EC399: FLdRfVar var_A4
  loc_5EC39C: ImpAdCallI2 MsgBox(, , , , )
  loc_5EC3A1: LitI4 6
  loc_5EC3A6: EqI4
  loc_5EC3A7: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_5EC3B2: BranchF loc_5EC3D8
  loc_5EC3B5: FLdRfVar var_10A
  loc_5EC3B8: FLdPrThis
  loc_5EC3B9: VCallAd Control_ID_cmbOperaciones
  loc_5EC3BC: FStAdFunc var_108
  loc_5EC3BF: FLdPr var_108
  loc_5EC3C2:  = Me.ListIndex
  loc_5EC3C7: FLdI2 var_10A
  loc_5EC3CA: FLdPr Me
  loc_5EC3CD: MemStI2 global_476
  loc_5EC3D0: FFree1Ad var_108
  loc_5EC3D3: Call SaveCustomresVolume()
  loc_5EC3D8: ILdRf Me
  loc_5EC3DB: FStAdNoPop
  loc_5EC3DF: ImpAdLdRf MemVar_7520D4
  loc_5EC3E2: NewIfNullPr Global
  loc_5EC3E5: Global.Unload from_stack_1
  loc_5EC3EA: FFree1Ad var_108
  loc_5EC3ED: ExitProcHresult
End Sub

Private Sub cmbClientes_Click() '65C080
  'Data Table: 44842C
  loc_65BD70: FLdPr Me
  loc_65BD73: MemLdRfVar from_stack_1.global_52
  loc_65BD76: CBoolVarNull
  loc_65BD78: BranchF loc_65BDBA
  loc_65BD7B: LitVar_Missing var_114
  loc_65BD7E: LitVar_Missing var_F4
  loc_65BD81: LitVarStr var_C4, "Guardar datos"
  loc_65BD86: FStVarCopyObj var_D4
  loc_65BD89: FLdRfVar var_D4
  loc_65BD8C: LitI4 &H24
  loc_65BD91: LitVarStr var_A4, "Desea guardar los cambios realizados?"
  loc_65BD96: FStVarCopyObj var_B4
  loc_65BD99: FLdRfVar var_B4
  loc_65BD9C: ImpAdCallI2 MsgBox(, , , , )
  loc_65BDA1: LitI4 6
  loc_65BDA6: EqI4
  loc_65BDA7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_65BDB2: BranchF loc_65BDBA
  loc_65BDB5: Call SaveCustomresVolume()
  loc_65BDBA: LitVar_FALSE
  loc_65BDBE: FLdPr Me
  loc_65BDC1: MemStVar
  loc_65BDC5: FLdRfVar var_11A
  loc_65BDC8: FLdPrThis
  loc_65BDC9: VCallAd Control_ID_cmbOperaciones
  loc_65BDCC: FStAdFunc var_118
  loc_65BDCF: FLdPr var_118
  loc_65BDD2:  = Me.ListIndex
  loc_65BDD7: LitI4 3
  loc_65BDDC: FLdI2 var_11A
  loc_65BDDF: CI4UI1
  loc_65BDE0: FLdPr Me
  loc_65BDE3: MemLdStr global_488
  loc_65BDE6: Ary1LdI4
  loc_65BDE7: ImpAdCallI2 Left$(, )
  loc_65BDEC: FStStr var_90
  loc_65BDEF: FFree1Ad var_118
  loc_65BDF2: FLdRfVar var_11A
  loc_65BDF5: FLdPrThis
  loc_65BDF6: VCallAd Control_ID_cmbClientes
  loc_65BDF9: FStAdFunc var_118
  loc_65BDFC: FLdPr var_118
  loc_65BDFF:  = Me.ListIndex
  loc_65BE04: ILdRf var_90
  loc_65BE07: CVarStr var_E4
  loc_65BE0A: LitVarI2 var_B4, 8
  loc_65BE0F: LitI4 1
  loc_65BE14: FLdI2 var_11A
  loc_65BE17: CI4UI1
  loc_65BE18: FLdPr Me
  loc_65BE1B: MemLdStr global_72
  loc_65BE1E: AryLock
  loc_65BE21: Ary1LdPr
  loc_65BE22: MemLdRfVar from_stack_1.global_8
  loc_65BE25: CVarRef
  loc_65BE2A: FLdRfVar var_D4
  loc_65BE2D: ImpAdCallFPR4  = Mid(, , )
  loc_65BE32: AryUnlock
  loc_65BE35: FLdRfVar var_D4
  loc_65BE38: ConcatVar var_F4
  loc_65BE3C: CStrVarTmp
  loc_65BE3D: FStStr var_90
  loc_65BE40: FFree1Ad var_118
  loc_65BE43: FFreeVar var_B4 = "": var_D4 = ""
  loc_65BE4C: ILdRf var_90
  loc_65BE4F: FLdRfVar var_11A
  loc_65BE52: FLdPrThis
  loc_65BE53: VCallAd Control_ID_cmbClientes
  loc_65BE56: FStAdFunc var_118
  loc_65BE59: FLdPr var_118
  loc_65BE5C:  = Me.ListIndex
  loc_65BE61: FLdI2 var_11A
  loc_65BE64: CI4UI1
  loc_65BE65: FLdPr Me
  loc_65BE68: MemLdStr global_72
  loc_65BE6B: Ary1LdPr
  loc_65BE6C: MemLdStr global_4
  loc_65BE6F: ConcatStr
  loc_65BE70: FStStr var_90
  loc_65BE73: FFree1Ad var_118
  loc_65BE76: ILdRf var_90
  loc_65BE79: LitStr "00"
  loc_65BE7C: ConcatStr
  loc_65BE7D: FStStr var_90
  loc_65BE80: FLdRfVar var_11A
  loc_65BE83: FLdPrThis
  loc_65BE84: VCallAd Control_ID_cmbClientes
  loc_65BE87: FStAdFunc var_118
  loc_65BE8A: FLdPr var_118
  loc_65BE8D:  = Me.ListIndex
  loc_65BE92: FLdI2 var_11A
  loc_65BE95: CI4UI1
  loc_65BE96: FLdPr Me
  loc_65BE99: MemLdStr global_72
  loc_65BE9C: Ary1LdPr
  loc_65BE9D: MemLdStr global_8
  loc_65BEA0: FLdPrThis
  loc_65BEA1: VCallAd Control_ID_txtCuentaCorriente
  loc_65BEA4: FStAdFunc var_124
  loc_65BEA7: FLdPr var_124
  loc_65BEAA: Me.Text = from_stack_1
  loc_65BEAF: FFreeAd var_118 = ""
  loc_65BEB6: FLdRfVar var_11A
  loc_65BEB9: FLdPrThis
  loc_65BEBA: VCallAd Control_ID_cmbClientes
  loc_65BEBD: FStAdFunc var_118
  loc_65BEC0: FLdPr var_118
  loc_65BEC3:  = Me.ListIndex
  loc_65BEC8: FLdI2 var_11A
  loc_65BECB: CI4UI1
  loc_65BECC: FLdPr Me
  loc_65BECF: MemLdStr global_72
  loc_65BED2: Ary1LdPr
  loc_65BED3: MemLdStr global_4
  loc_65BED6: FLdPrThis
  loc_65BED7: VCallAd Control_ID_txtDireccionEntrega
  loc_65BEDA: FStAdFunc var_124
  loc_65BEDD: FLdPr var_124
  loc_65BEE0: Me.Text = from_stack_1
  loc_65BEE5: FFreeAd var_118 = ""
  loc_65BEEC: FLdRfVar var_90
  loc_65BEEF: Call OperClieVol(from_stack_1v)
  loc_65BEF4: LitI2_Byte 0
  loc_65BEF6: CUI1I2
  loc_65BEF8: FLdRfVar var_92
  loc_65BEFB: FLdRfVar var_11A
  loc_65BEFE: ImpAdLdRf MemVar_74A220
  loc_65BF01: NewIfNullPr clsProducts
  loc_65BF04: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65BF09: FLdI2 var_11A
  loc_65BF0C: LitI2_Byte 1
  loc_65BF0E: SubI2
  loc_65BF0F: CUI1I2
  loc_65BF11: ForUI1 var_128
  loc_65BF17: LitStr "0"
  loc_65BF1A: FLdRfVar var_12C
  loc_65BF1D: FLdRfVar var_124
  loc_65BF20: FLdUI1
  loc_65BF24: CI2UI1
  loc_65BF26: FLdPrThis
  loc_65BF27: VCallAd Control_ID_cmbNivel
  loc_65BF2A: FStAdFunc var_118
  loc_65BF2D: FLdPr var_118
  loc_65BF30: Set from_stack_2 = Me(from_stack_1)
  loc_65BF35: FLdPr var_124
  loc_65BF38:  = Me.Text
  loc_65BF3D: ILdRf var_12C
  loc_65BF40: ConcatStr
  loc_65BF41: FStStrNoPop var_130
  loc_65BF44: ImpAdCallFPR4 push Val()
  loc_65BF49: CR8R8
  loc_65BF4A: LitI2_Byte 0
  loc_65BF4C: CR8I2
  loc_65BF4D: EqR4
  loc_65BF4E: FFreeStr var_12C = ""
  loc_65BF55: FFreeAd var_118 = ""
  loc_65BF5C: BranchF loc_65BFBE
  loc_65BF5F: LitI4 1
  loc_65BF64: LitI4 1
  loc_65BF69: LitVarStr var_C4, "#####0.00"
  loc_65BF6E: FStVarCopyObj var_D4
  loc_65BF71: FLdRfVar var_D4
  loc_65BF74: LitVarI2 var_B4, 0
  loc_65BF79: FLdRfVar var_F4
  loc_65BF7C: ImpAdCallFPR4  = Format(, )
  loc_65BF81: FLdRfVar var_F4
  loc_65BF84: CStrVarVal var_12C
  loc_65BF88: FLdRfVar var_124
  loc_65BF8B: FLdUI1
  loc_65BF8F: CI2UI1
  loc_65BF91: FLdPrThis
  loc_65BF92: VCallAd Control_ID_txtVolumen
  loc_65BF95: FStAdFunc var_118
  loc_65BF98: FLdPr var_118
  loc_65BF9B: Set from_stack_2 = Me(from_stack_1)
  loc_65BFA0: FLdPr var_124
  loc_65BFA3: Me.Text = from_stack_1
  loc_65BFA8: FFree1Str var_12C
  loc_65BFAB: FFreeAd var_118 = ""
  loc_65BFB2: FFreeVar var_B4 = "": var_D4 = ""
  loc_65BFBB: Branch loc_65C071
  loc_65BFBE: LitStr "0"
  loc_65BFC1: FLdRfVar var_12C
  loc_65BFC4: FLdRfVar var_124
  loc_65BFC7: FLdUI1
  loc_65BFCB: CI2UI1
  loc_65BFCD: FLdPrThis
  loc_65BFCE: VCallAd Control_ID_cmbNivel
  loc_65BFD1: FStAdFunc var_118
  loc_65BFD4: FLdPr var_118
  loc_65BFD7: Set from_stack_2 = Me(from_stack_1)
  loc_65BFDC: FLdPr var_124
  loc_65BFDF:  = Me.Text
  loc_65BFE4: ILdRf var_12C
  loc_65BFE7: ConcatStr
  loc_65BFE8: FStStrNoPop var_130
  loc_65BFEB: ImpAdCallFPR4 push Val()
  loc_65BFF0: FStFPR8 var_144
  loc_65BFF3: LitI4 1
  loc_65BFF8: LitI4 1
  loc_65BFFD: LitVarStr var_C4, "#####0.00"
  loc_65C002: FStVarCopyObj var_B4
  loc_65C005: FLdRfVar var_B4
  loc_65C008: FLdUI1
  loc_65C00C: CI2UI1
  loc_65C00E: LitI2_Byte 1
  loc_65C010: AddI2
  loc_65C011: CI4UI1
  loc_65C012: FLdFPR8 var_144
  loc_65C015: CI4R8
  loc_65C016: FLdPr Me
  loc_65C019: MemLdRfVar from_stack_1.global_76
  loc_65C01C: AryInRecLdRf
  loc_65C022: CVarRef
  loc_65C027: FLdRfVar var_D4
  loc_65C02A: ImpAdCallFPR4  = Format(, )
  loc_65C02F: FLdRfVar var_D4
  loc_65C032: CStrVarVal var_13C
  loc_65C036: FLdRfVar var_138
  loc_65C039: FLdUI1
  loc_65C03D: CI2UI1
  loc_65C03F: FLdPrThis
  loc_65C040: VCallAd Control_ID_txtVolumen
  loc_65C043: FStAdFunc var_134
  loc_65C046: FLdPr var_134
  loc_65C049: Set from_stack_2 = Me(from_stack_1)
  loc_65C04E: FLdPr var_138
  loc_65C051: Me.Text = from_stack_1
  loc_65C056: FFreeStr var_12C = "": var_130 = ""
  loc_65C05F: FFreeAd var_118 = "": var_124 = "": var_134 = ""
  loc_65C06A: FFreeVar var_B4 = ""
  loc_65C071: FLdRfVar var_92
  loc_65C074: NextUI1
  loc_65C07A: from_stack_1v = Proc_121_23_64E0AC()
  loc_65C07F: ExitProcHresult
End Sub

Private Sub NumLock_UnknownEvent_8 '5E0F0C
  'Data Table: 44842C
  loc_5E0EB4: ImpAdLdI4 MemVar_74A154
  loc_5E0EB7: LitStr "6.0"
  loc_5E0EBA: NeStr
  loc_5E0EBC: ImpAdLdI4 MemVar_74A154
  loc_5E0EBF: LitStr "6.1"
  loc_5E0EC2: NeStr
  loc_5E0EC4: AndI4
  loc_5E0EC5: BranchF loc_5E0F08
  loc_5E0EC8: FLdPrThis
  loc_5E0EC9: VCallAd Control_ID_NumLock
  loc_5E0ECC: FStAdFunc var_88
  loc_5E0ECF: FLdPr var_88
  loc_5E0ED2: LateIdLdVar var_98 DispID_6 0
  loc_5E0ED9: CBoolVar
  loc_5E0EDB: FFree1Ad var_88
  loc_5E0EDE: FFree1Var var_98 = ""
  loc_5E0EE1: BranchF loc_5E0F08
  loc_5E0EE4: LitI2_Byte &HFF
  loc_5E0EE6: PopTmpLdAd2 var_9A
  loc_5E0EE9: LitStr "{NUMLOCK}"
  loc_5E0EEC: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E0EF1: LitVar_FALSE
  loc_5E0EF5: PopAdLdVar
  loc_5E0EF6: FLdPrThis
  loc_5E0EF7: VCallAd Control_ID_NumLock
  loc_5E0EFA: FStAdFunc var_88
  loc_5E0EFD: FLdPr var_88
  loc_5E0F00: LateIdSt
  loc_5E0F05: FFree1Ad var_88
  loc_5E0F08: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '68CB50
  'Data Table: 44842C
  loc_68C5F4: FLdPr Me
  loc_68C5F7: MemLdRfVar from_stack_1.global_52
  loc_68C5FA: CBoolVarNull
  loc_68C5FC: BranchF loc_68C651
  loc_68C601: LitVar_Missing var_10C
  loc_68C604: LitVar_Missing var_EC
  loc_68C607: LitVarStr var_BC, "Guardar datos"
  loc_68C60C: FStVarCopyObj var_CC
  loc_68C60F: FLdRfVar var_CC
  loc_68C612: LitI4 &H24
  loc_68C617: LitVarStr var_9C, "Desea guardar los cambios realizados?"
  loc_68C61C: FStVarCopyObj var_AC
  loc_68C61F: FLdRfVar var_AC
  loc_68C622: ImpAdCallI2 MsgBox(, , , , )
  loc_68C627: LitI4 6
  loc_68C62C: EqI4
  loc_68C62D: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_68C638: BranchF loc_68C64F
  loc_68C63D: Call SaveCustomresVolume()
  loc_68C644: LitVar_FALSE
  loc_68C648: FLdPr Me
  loc_68C64B: MemStVar
  loc_68C655: FLdRfVar var_AC
  loc_68C658: from_stack_1v = BorrarArrayImpresion()
  loc_68C65D: FFree1Var var_AC = ""
  loc_68C662: FLdRfVar var_110
  loc_68C665: ImpAdLdRf MemVar_7520D4
  loc_68C668: NewIfNullPr Global
  loc_68C66B:  = Global.Printer
  loc_68C670: FLdZeroAd var_110
  loc_68C673: FStAdFunc var_88
  loc_68C678: LitVarStr var_9C, "Courier New"
  loc_68C67D: PopAdLdVar
  loc_68C67E: FLdPr var_88
  loc_68C681: LateIdSt
  loc_68C688: LitI2_Byte &HA
  loc_68C68A: CR8I2
  loc_68C68B: CVarR4
  loc_68C68F: PopAdLdVar
  loc_68C690: FLdPr var_88
  loc_68C693: LateIdSt
  loc_68C69A: LitI4 6
  loc_68C69F: CI2I4
  loc_68C6A0: CVarI2 var_9C
  loc_68C6A3: PopAdLdVar
  loc_68C6A4: FLdPr var_88
  loc_68C6A7: LateIdSt
  loc_68C6AE: FLdRfVar var_114
  loc_68C6B1: FLdPrThis
  loc_68C6B2: VCallAd Control_ID_Picture1
  loc_68C6B5: FStAdFunc var_110
  loc_68C6B8: FLdPr var_110
  loc_68C6BB:  = Me.Picture
  loc_68C6C0: FLdPr var_114
  loc_68C6C3: LateIdLdVar var_AC DispID_0 0
  loc_68C6CA: CI4Var
  loc_68C6CC: LitI4 0
  loc_68C6D1: NeI4
  loc_68C6D2: FFreeAd var_110 = ""
  loc_68C6D9: FFree1Var var_AC = ""
  loc_68C6DC: BranchF loc_68C736
  loc_68C6E1: FLdRfVar var_114
  loc_68C6E4: FLdPrThis
  loc_68C6E5: VCallAd Control_ID_Picture1
  loc_68C6E8: FStAdFunc var_110
  loc_68C6EB: FLdPr var_110
  loc_68C6EE:  = Me.Picture
  loc_68C6F3: FLdZeroAd var_114
  loc_68C6F6: CVarAd
  loc_68C6FA: PopAdLdVar
  loc_68C6FB: LitI2_Byte 1
  loc_68C6FD: CR8I2
  loc_68C6FE: CVarR4
  loc_68C702: PopAdLdVar
  loc_68C703: LitI2_Byte &HA
  loc_68C705: CR8I2
  loc_68C706: CVarR4
  loc_68C70A: PopAdLdVar
  loc_68C70B: LitVarR8
  loc_68C717: PopAdLdVar
  loc_68C718: LitVarR8
  loc_68C724: PopAdLdVar
  loc_68C725: FLdPr var_88
  loc_68C728: LateIdCall
  loc_68C730: FFree1Ad var_110
  loc_68C733: FFree1Var var_AC = ""
  loc_68C73A: FLdRfVar var_114
  loc_68C73D: FLdPrThis
  loc_68C73E: VCallAd Control_ID_Picture2
  loc_68C741: FStAdFunc var_110
  loc_68C744: FLdPr var_110
  loc_68C747:  = Me.Picture
  loc_68C74C: FLdPr var_114
  loc_68C74F: LateIdLdVar var_AC DispID_0 0
  loc_68C756: CI4Var
  loc_68C758: LitI4 0
  loc_68C75D: NeI4
  loc_68C75E: FFreeAd var_110 = ""
  loc_68C765: FFree1Var var_AC = ""
  loc_68C768: BranchF loc_68C7C3
  loc_68C76D: FLdRfVar var_114
  loc_68C770: FLdPrThis
  loc_68C771: VCallAd Control_ID_Picture2
  loc_68C774: FStAdFunc var_110
  loc_68C777: FLdPr var_110
  loc_68C77A:  = Me.Picture
  loc_68C77F: FLdZeroAd var_114
  loc_68C782: CVarAd
  loc_68C786: PopAdLdVar
  loc_68C787: LitI2 150
  loc_68C78A: CR8I2
  loc_68C78B: CVarR4
  loc_68C78F: PopAdLdVar
  loc_68C790: LitI2_Byte &HA
  loc_68C792: CR8I2
  loc_68C793: CVarR4
  loc_68C797: PopAdLdVar
  loc_68C798: LitVarR8
  loc_68C7A4: PopAdLdVar
  loc_68C7A5: LitVarR8
  loc_68C7B1: PopAdLdVar
  loc_68C7B2: FLdPr var_88
  loc_68C7B5: LateIdCall
  loc_68C7BD: FFree1Ad var_110
  loc_68C7C0: FFree1Var var_AC = ""
  loc_68C7C7: LitI2_Byte 1
  loc_68C7C9: FLdRfVar var_8A
  loc_68C7CC: LitI2_Byte 4
  loc_68C7CE: ForI2 var_118
  loc_68C7D6: ILdRf var_88
  loc_68C7D9: PrintObject
  loc_68C7E1: FLdRfVar var_8A
  loc_68C7E4: NextI2 var_118, loc_68C7D4
  loc_68C7EB: LitStr "OPERACIONES DIFERENCIALES"
  loc_68C7EE: LitI2_Byte &H1D
  loc_68C7F0: ILdRf var_88
  loc_68C7F3: PrintObject
  loc_68C7FB: ILdRf var_88
  loc_68C7FE: PrintObject
  loc_68C806: ILdRf var_88
  loc_68C809: PrintObject
  loc_68C811: FLdRfVar var_AC
  loc_68C814: ImpAdCallFPR4  = Date
  loc_68C819: LitI4 1
  loc_68C81E: LitI4 1
  loc_68C823: LitVarStr var_9C, "dd/mm/yyyy"
  loc_68C828: FStVarCopyObj var_CC
  loc_68C82B: FLdRfVar var_CC
  loc_68C82E: FLdRfVar var_AC
  loc_68C831: ImpAdCallI2 Format$(, )
  loc_68C836: FStStr var_124
  loc_68C839: FLdRfVar var_EC
  loc_68C83C: ImpAdCallFPR4  = Time
  loc_68C841: LitI4 1
  loc_68C846: LitI4 1
  loc_68C84B: LitVarStr var_BC, "hh:mm:ss"
  loc_68C850: FStVarCopyObj var_10C
  loc_68C853: FLdRfVar var_10C
  loc_68C856: FLdRfVar var_EC
  loc_68C859: ImpAdCallI2 Format$(, )
  loc_68C85E: FStStr var_128
  loc_68C861: FLdZeroAd var_128
  loc_68C864: FStStrNoPop var_120
  loc_68C867: LitI2_Byte &H44
  loc_68C869: FLdZeroAd var_124
  loc_68C86C: FStStrNoPop var_11C
  loc_68C86F: LitI2_Byte 6
  loc_68C871: ILdRf var_88
  loc_68C874: PrintObject
  loc_68C87A: FFreeStr var_11C = "": var_120 = "": var_124 = ""
  loc_68C885: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_68C892: ILdRf var_88
  loc_68C895: PrintObject
  loc_68C89D: ILdRf var_88
  loc_68C8A0: PrintObject
  loc_68C8A8: LitI2_Byte &HFF
  loc_68C8AA: FStI2 var_8C
  loc_68C8AF: LitI2_Byte 0
  loc_68C8B1: FLdRfVar var_8A
  loc_68C8B4: FLdRfVar var_12A
  loc_68C8B7: FLdPrThis
  loc_68C8B8: VCallAd Control_ID_cmbOperaciones
  loc_68C8BB: FStAdFunc var_110
  loc_68C8BE: FLdPr var_110
  loc_68C8C1:  = Me.ListCount
  loc_68C8C6: FLdI2 var_12A
  loc_68C8C9: LitI2_Byte 1
  loc_68C8CB: SubI2
  loc_68C8CC: FFree1Ad var_110
  loc_68C8CF: ForI2 var_12E
  loc_68C8D7: FLdRfVar var_11C
  loc_68C8DA: FLdI2 var_8A
  loc_68C8DD: FLdPrThis
  loc_68C8DE: VCallAd Control_ID_cmbOperaciones
  loc_68C8E1: FStAdFunc var_110
  loc_68C8E4: FLdPr var_110
  loc_68C8E7: from_stack_2 = Me.List(from_stack_1)
  loc_68C8EC: ILdRf var_11C
  loc_68C8EF: LitStr "OPERACION: "
  loc_68C8F2: LitI2_Byte 7
  loc_68C8F4: ILdRf var_88
  loc_68C8F7: PrintObject
  loc_68C8FD: FFree1Str var_11C
  loc_68C900: FFree1Ad var_110
  loc_68C905: ILdRf var_88
  loc_68C908: PrintObject
  loc_68C910: FLdI2 var_8C
  loc_68C913: BranchF loc_68C9AF
  loc_68C918: LitI4 2
  loc_68C91D: FLdRfVar var_AC
  loc_68C920: ImpAdCallFPR4  = Space()
  loc_68C925: LitVarStr var_9C, "NIV"
  loc_68C92A: FLdRfVar var_AC
  loc_68C92D: ConcatVar var_CC
  loc_68C931: LitVarStr var_BC, "VOLUMEN"
  loc_68C936: ConcatVar var_EC
  loc_68C93A: LitI2_Byte &H43
  loc_68C93C: LitStr "PRODUCTOS"
  loc_68C93F: LitI2_Byte &H31
  loc_68C941: LitStr "RAZON SOCIAL"
  loc_68C944: LitI2_Byte &H16
  loc_68C946: LitStr "DIRECCION"
  loc_68C949: LitI2_Byte &HC
  loc_68C94B: LitStr "CUENTA"
  loc_68C94E: LitI2_Byte 3
  loc_68C950: ILdRf var_88
  loc_68C953: PrintObject
  loc_68C959: FFreeVar var_AC = "": var_CC = ""
  loc_68C964: LitI4 2
  loc_68C969: FLdRfVar var_AC
  loc_68C96C: ImpAdCallFPR4  = Space()
  loc_68C971: LitVarStr var_9C, " EL"
  loc_68C976: FLdRfVar var_AC
  loc_68C979: ConcatVar var_CC
  loc_68C97D: LitVarStr var_BC, "DESPACHADO"
  loc_68C982: ConcatVar var_EC
  loc_68C986: LitI2_Byte &H42
  loc_68C988: LitStr "ENTREGA"
  loc_68C98B: LitI2_Byte &HD
  loc_68C98D: LitStr "CORRIENTE"
  loc_68C990: LitI2_Byte 2
  loc_68C992: ILdRf var_88
  loc_68C995: PrintObject
  loc_68C99B: FFreeVar var_AC = "": var_CC = ""
  loc_68C9A6: ILdRf var_88
  loc_68C9A9: PrintObject
  loc_68C9B3: LitI2_Byte 0
  loc_68C9B5: FStI2 var_8C
  loc_68C9BA: FLdI2 var_8A
  loc_68C9BD: CI4UI1
  loc_68C9BE: FLdPr Me
  loc_68C9C1: MemLdStr global_488
  loc_68C9C4: AryLock
  loc_68C9C7: Ary1LdRf
  loc_68C9C8: FLdRfVar var_88
  loc_68C9CB: Call ImprimeCliente(from_stack_1v, from_stack_2v)
  loc_68C9D0: AryUnlock
  loc_68C9D5: ILdRf var_88
  loc_68C9D8: PrintObject
  loc_68C9E0: LitVarStr var_9C, "_"
  loc_68C9E5: FStVarCopyObj var_AC
  loc_68C9E8: FLdRfVar var_AC
  loc_68C9EB: LitI4 &H50
  loc_68C9F0: FLdRfVar var_CC
  loc_68C9F3: ImpAdCallFPR4  = String(, )
  loc_68C9F8: FLdRfVar var_CC
  loc_68C9FB: ILdRf var_88
  loc_68C9FE: PrintObject
  loc_68CA04: FFreeVar var_AC = ""
  loc_68CA0D: ILdRf var_88
  loc_68CA10: PrintObject
  loc_68CA18: FLdRfVar var_8A
  loc_68CA1B: NextI2 var_12E, loc_68C8D5
  loc_68CA22: FLdPr var_88
  loc_68CA25: LateIdCall
  loc_68CA2F: ExitProcHresult
  loc_68CA32: LitI4 &HD
  loc_68CA37: ImpAdCallI2 Chr$()
  loc_68CA3C: FStStr var_158
  loc_68CA3F: LitI4 &HD
  loc_68CA44: ImpAdCallI2 Chr$()
  loc_68CA49: FStStr var_15C
  loc_68CA4C: FLdRfVar var_138
  loc_68CA4F: ImpAdCallI2 Err 'rtcErrObj
  loc_68CA54: FStAdFunc var_110
  loc_68CA57: FLdPr var_110
  loc_68CA5A:  = Err.Number
  loc_68CA5F: LitI4 &HD
  loc_68CA64: ImpAdCallI2 Chr$()
  loc_68CA69: FStStr var_160
  loc_68CA6C: FLdRfVar var_150
  loc_68CA6F: ImpAdCallI2 Err 'rtcErrObj
  loc_68CA74: FStAdFunc var_114
  loc_68CA77: FLdPr var_114
  loc_68CA7A:  = Err.Description
  loc_68CA7F: LitVar_Missing var_10C
  loc_68CA82: LitVar_Missing var_EC
  loc_68CA85: LitVarStr var_9C, "Error en la impresora"
  loc_68CA8A: FStVarCopyObj var_CC
  loc_68CA8D: FLdRfVar var_CC
  loc_68CA90: LitI4 &H45
  loc_68CA95: LitStr "Error en la impresora. Chequee que la impresora tenga papel y este en READY."
  loc_68CA98: FLdZeroAd var_158
  loc_68CA9B: FStStrNoPop var_11C
  loc_68CA9E: ConcatStr
  loc_68CA9F: FStStrNoPop var_120
  loc_68CAA2: FLdZeroAd var_15C
  loc_68CAA5: FStStrNoPop var_124
  loc_68CAA8: ConcatStr
  loc_68CAA9: FStStrNoPop var_128
  loc_68CAAC: LitStr "Error Número: "
  loc_68CAAF: ConcatStr
  loc_68CAB0: FStStrNoPop var_13C
  loc_68CAB3: ILdRf var_138
  loc_68CAB6: CStrI4
  loc_68CAB8: FStStrNoPop var_140
  loc_68CABB: ConcatStr
  loc_68CABC: FStStrNoPop var_144
  loc_68CABF: FLdZeroAd var_160
  loc_68CAC2: FStStrNoPop var_148
  loc_68CAC5: ConcatStr
  loc_68CAC6: FStStrNoPop var_14C
  loc_68CAC9: LitStr "Descripción: "
  loc_68CACC: ConcatStr
  loc_68CACD: FStStrNoPop var_154
  loc_68CAD0: ILdRf var_150
  loc_68CAD3: ConcatStr
  loc_68CAD4: CVarStr var_AC
  loc_68CAD7: ImpAdCallI2 MsgBox(, , , , )
  loc_68CADC: LitI4 4
  loc_68CAE1: EqI4
  loc_68CAE2: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = "": var_15C = ""
  loc_68CB01: FFreeAd var_110 = ""
  loc_68CB08: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_68CB13: BranchF loc_68CB1F
  loc_68CB18: Resume
  loc_68CB1C: Branch loc_68CB48
  loc_68CB23: On Error Resume Next
  loc_68CB28: FLdPr var_88
  loc_68CB2B: LateIdCall
  loc_68CB35: FLdPr var_88
  loc_68CB38: LateIdCall
  loc_68CB42: On Error GoTo 0
  loc_68CB47: ExitProcHresult
  loc_68CB4C: ExitProcHresult
End Sub

Private Sub cmbNivel_Click(arg_C) '5F98A8
  'Data Table: 44842C
  loc_5F97FC: LitStr "0"
  loc_5F97FF: FLdRfVar var_90
  loc_5F9802: FLdRfVar var_8C
  loc_5F9805: ILdI2 arg_C
  loc_5F9808: FLdPrThis
  loc_5F9809: VCallAd Control_ID_cmbNivel
  loc_5F980C: FStAdFunc var_88
  loc_5F980F: FLdPr var_88
  loc_5F9812: Set from_stack_2 = Me(from_stack_1)
  loc_5F9817: FLdPr var_8C
  loc_5F981A:  = Me.Text
  loc_5F981F: ILdRf var_90
  loc_5F9822: ConcatStr
  loc_5F9823: FStStrNoPop var_94
  loc_5F9826: ImpAdCallFPR4 push Val()
  loc_5F982B: FStFPR8 var_E8
  loc_5F982E: LitI4 1
  loc_5F9833: LitI4 1
  loc_5F9838: LitVarStr var_B4, "#####0.00"
  loc_5F983D: FStVarCopyObj var_C4
  loc_5F9840: FLdRfVar var_C4
  loc_5F9843: ILdI2 arg_C
  loc_5F9846: LitI2_Byte 1
  loc_5F9848: AddI2
  loc_5F9849: CI4UI1
  loc_5F984A: FLdFPR8 var_E8
  loc_5F984D: CI4R8
  loc_5F984E: FLdPr Me
  loc_5F9851: MemLdRfVar from_stack_1.global_76
  loc_5F9854: AryInRecLdRf
  loc_5F985A: CVarRef
  loc_5F985F: FLdRfVar var_D4
  loc_5F9862: ImpAdCallFPR4  = Format(, )
  loc_5F9867: FLdRfVar var_D4
  loc_5F986A: CStrVarVal var_E0
  loc_5F986E: FLdRfVar var_DC
  loc_5F9871: ILdI2 arg_C
  loc_5F9874: FLdPrThis
  loc_5F9875: VCallAd Control_ID_txtVolumen
  loc_5F9878: FStAdFunc var_D8
  loc_5F987B: FLdPr var_D8
  loc_5F987E: Set from_stack_2 = Me(from_stack_1)
  loc_5F9883: FLdPr var_DC
  loc_5F9886: Me.Text = from_stack_1
  loc_5F988B: FFreeStr var_90 = "": var_94 = ""
  loc_5F9894: FFreeAd var_88 = "": var_8C = "": var_D8 = ""
  loc_5F989F: FFreeVar var_C4 = ""
  loc_5F98A6: ExitProcHresult
End Sub

Public Sub ClientesxOperacion(Operacion) '6746B0
  'Data Table: 44842C
  loc_674274: FLdPrThis
  loc_674275: VCallAd Control_ID_cmbClientes
  loc_674278: FStAdFunc var_90
  loc_67427B: FLdPr var_90
  loc_67427E: Me.Clear
  loc_674283: FFree1Ad var_90
  loc_674286: FLdRfVar var_A0
  loc_674289: ILdRf Operacion
  loc_67428C: FLdRfVar var_88
  loc_67428F: FLdRfVar var_90
  loc_674292: ImpAdLdRf MemVar_74C760
  loc_674295: NewIfNullPr Formx
  loc_674298: from_stack_1v = Formx.global_4589716Get()
  loc_67429D: FLdPr var_90
  loc_6742A0: Call 0.Method_arg_18C ()
  loc_6742A5: FLdRfVar var_A0
  loc_6742A8: NotVar var_B0
  loc_6742AC: CBoolVarNull
  loc_6742AE: FFree1Ad var_90
  loc_6742B1: FFree1Var var_A0 = ""
  loc_6742B4: BranchF loc_6742E3
  loc_6742B7: FLdRfVar var_A0
  loc_6742BA: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6742BF: FLdRfVar var_A0
  loc_6742C2: CBoolVarNull
  loc_6742C4: FFree1Var var_A0 = ""
  loc_6742C7: BranchF loc_6742E0
  loc_6742CA: ILdRf Me
  loc_6742CD: FStAdNoPop
  loc_6742D1: ImpAdLdRf MemVar_7520D4
  loc_6742D4: NewIfNullPr Global
  loc_6742D7: Global.Unload from_stack_1
  loc_6742DC: FFree1Ad var_90
  loc_6742DF: ExitProcHresult
  loc_6742E0: Branch loc_674286
  loc_6742E3: LitI4 0
  loc_6742E8: LitI4 0
  loc_6742ED: FLdPr Me
  loc_6742F0: MemLdRfVar from_stack_1.global_72
  loc_6742F3: Redim
  loc_6742FD: FLdRfVar var_88
  loc_674300: CVarRef
  loc_674305: FLdRfVar var_A0
  loc_674308: ImpAdCallFPR4  = Trim()
  loc_67430D: FLdRfVar var_A0
  loc_674310: CStrVarTmp
  loc_674311: FStStr var_88
  loc_674314: FFree1Var var_A0 = ""
  loc_674317: ILdRf var_88
  loc_67431A: FnLenStr
  loc_67431B: LitI4 1
  loc_674320: EqI4
  loc_674321: BranchF loc_674339
  loc_674324: FLdPrThis
  loc_674325: VCallAd Control_ID_cmbClientes
  loc_674328: FStAdFunc var_90
  loc_67432B: FLdPr var_90
  loc_67432E: Me.Clear
  loc_674333: FFree1Ad var_90
  loc_674336: Branch loc_6746AE
  loc_674339: LitI2_Byte 1
  loc_67433B: FStI2 var_8A
  loc_67433E: FLdI2 var_8A
  loc_674341: CI4UI1
  loc_674342: ILdRf var_88
  loc_674345: FnLenStr
  loc_674346: LtI4
  loc_674347: BranchF loc_6745FF
  loc_67434A: LitVarI2 var_A0, 8
  loc_67434F: FLdI2 var_8A
  loc_674352: CI4UI1
  loc_674353: ILdRf var_88
  loc_674356: ImpAdCallI2 Mid$(, , )
  loc_67435B: FStStr var_D4
  loc_67435E: FLdRfVar var_CE
  loc_674361: FLdRfVar var_8C
  loc_674364: LitStr "0"
  loc_674367: FLdZeroAd var_D4
  loc_67436A: FStStrNoPop var_C4
  loc_67436D: ConcatStr
  loc_67436E: FStStrNoPop var_C8
  loc_674371: CI4Str
  loc_674372: PopTmpLdAdStr var_CC
  loc_674375: from_stack_3v = Proc_121_22_5F2010(from_stack_1v, from_stack_2v)
  loc_67437A: FLdI2 var_CE
  loc_67437D: FFreeStr var_C4 = "": var_C8 = ""
  loc_674386: FFree1Var var_A0 = ""
  loc_674389: BranchF loc_674475
  loc_67438C: LitI2_Byte &HFF
  loc_67438E: LitStr "0"
  loc_674391: LitVarI2 var_A0, 2
  loc_674396: FLdI2 var_8A
  loc_674399: LitI2_Byte &HB
  loc_67439B: AddI2
  loc_67439C: CI4UI1
  loc_67439D: ILdRf var_88
  loc_6743A0: ImpAdCallI2 Mid$(, , )
  loc_6743A5: FStStrNoPop var_C4
  loc_6743A8: ConcatStr
  loc_6743A9: FStStrNoPop var_C8
  loc_6743AC: ImpAdCallFPR4 push Val()
  loc_6743B1: CI4R8
  loc_6743B2: FLdI2 var_8C
  loc_6743B5: CI4UI1
  loc_6743B6: FLdPr Me
  loc_6743B9: MemLdStr global_72
  loc_6743BC: Ary1LdPr
  loc_6743BD: MemLdRfVar from_stack_1.global_12
  loc_6743C0: AryInRecLdPr
  loc_6743C6: MemStI2 global_0
  loc_6743C9: FFreeStr var_C4 = ""
  loc_6743D0: FFree1Var var_A0 = ""
  loc_6743D3: LitI2_Byte &HFF
  loc_6743D5: LitStr "0"
  loc_6743D8: LitVarI2 var_A0, 2
  loc_6743DD: FLdI2 var_8A
  loc_6743E0: LitI2_Byte &HB
  loc_6743E2: AddI2
  loc_6743E3: CI4UI1
  loc_6743E4: ILdRf var_88
  loc_6743E7: ImpAdCallI2 Mid$(, , )
  loc_6743EC: FStStrNoPop var_C4
  loc_6743EF: ConcatStr
  loc_6743F0: FStStrNoPop var_C8
  loc_6743F3: ImpAdCallFPR4 push Val()
  loc_6743F8: CI4R8
  loc_6743F9: LitStr "0"
  loc_6743FC: LitVarI2 var_B0, 1
  loc_674401: FLdI2 var_8A
  loc_674404: LitI2_Byte &HD
  loc_674406: AddI2
  loc_674407: CI4UI1
  loc_674408: ILdRf var_88
  loc_67440B: ImpAdCallI2 Mid$(, , )
  loc_674410: FStStrNoPop var_D4
  loc_674413: ConcatStr
  loc_674414: FStStrNoPop var_E8
  loc_674417: ImpAdCallFPR4 push Val()
  loc_67441C: CI4R8
  loc_67441D: FLdI2 var_8C
  loc_674420: CI4UI1
  loc_674421: FLdPr Me
  loc_674424: MemLdStr global_72
  loc_674427: Ary1LdPr
  loc_674428: MemLdRfVar from_stack_1.global_32
  loc_67442B: AryInRecLdPr
  loc_674431: MemStI2 global_0
  loc_674434: FFreeStr var_C4 = "": var_C8 = "": var_D4 = ""
  loc_67443F: FFreeVar var_A0 = ""
  loc_674446: LitVarI2 var_A0, 20
  loc_67444B: FLdI2 var_8A
  loc_67444E: LitI2_Byte &HE
  loc_674450: AddI2
  loc_674451: CI4UI1
  loc_674452: ILdRf var_88
  loc_674455: ImpAdCallI2 Mid$(, , )
  loc_67445A: FStStrNoPop var_C4
  loc_67445D: FLdI2 var_8C
  loc_674460: CI4UI1
  loc_674461: FLdPr Me
  loc_674464: MemLdStr global_72
  loc_674467: Ary1LdPr
  loc_674468: MemStStrCopy
  loc_67446C: FFree1Str var_C4
  loc_67446F: FFree1Var var_A0 = ""
  loc_674472: Branch loc_6745F3
  loc_674475: LitVarI2 var_A0, 8
  loc_67447A: FLdI2 var_8A
  loc_67447D: CI4UI1
  loc_67447E: ILdRf var_88
  loc_674481: ImpAdCallI2 Mid$(, , )
  loc_674486: FStStrNoPop var_C4
  loc_674489: FLdPr Me
  loc_67448C: MemLdStr global_72
  loc_67448F: LitI2_Byte 1
  loc_674491: FnUBound
  loc_674493: FLdPr Me
  loc_674496: MemLdStr global_72
  loc_674499: Ary1LdPr
  loc_67449A: MemStStrCopy
  loc_67449E: FFree1Str var_C4
  loc_6744A1: FFree1Var var_A0 = ""
  loc_6744A4: LitVarI2 var_A0, 3
  loc_6744A9: FLdI2 var_8A
  loc_6744AC: LitI2_Byte 8
  loc_6744AE: AddI2
  loc_6744AF: CI4UI1
  loc_6744B0: ILdRf var_88
  loc_6744B3: ImpAdCallI2 Mid$(, , )
  loc_6744B8: FStStrNoPop var_C4
  loc_6744BB: FLdPr Me
  loc_6744BE: MemLdStr global_72
  loc_6744C1: LitI2_Byte 1
  loc_6744C3: FnUBound
  loc_6744C5: FLdPr Me
  loc_6744C8: MemLdStr global_72
  loc_6744CB: Ary1LdPr
  loc_6744CC: MemStStrCopy
  loc_6744D0: FFree1Str var_C4
  loc_6744D3: FFree1Var var_A0 = ""
  loc_6744D6: LitI2_Byte &HFF
  loc_6744D8: LitStr "0"
  loc_6744DB: LitVarI2 var_A0, 2
  loc_6744E0: FLdI2 var_8A
  loc_6744E3: LitI2_Byte &HB
  loc_6744E5: AddI2
  loc_6744E6: CI4UI1
  loc_6744E7: ILdRf var_88
  loc_6744EA: ImpAdCallI2 Mid$(, , )
  loc_6744EF: FStStrNoPop var_C4
  loc_6744F2: ConcatStr
  loc_6744F3: FStStrNoPop var_C8
  loc_6744F6: ImpAdCallFPR4 push Val()
  loc_6744FB: CI4R8
  loc_6744FC: FLdPr Me
  loc_6744FF: MemLdStr global_72
  loc_674502: LitI2_Byte 1
  loc_674504: FnUBound
  loc_674506: FLdPr Me
  loc_674509: MemLdStr global_72
  loc_67450C: Ary1LdPr
  loc_67450D: MemLdRfVar from_stack_1.global_12
  loc_674510: AryInRecLdPr
  loc_674516: MemStI2 global_0
  loc_674519: FFreeStr var_C4 = ""
  loc_674520: FFree1Var var_A0 = ""
  loc_674523: LitVarI2 var_A0, 20
  loc_674528: FLdI2 var_8A
  loc_67452B: LitI2_Byte &HE
  loc_67452D: AddI2
  loc_67452E: CI4UI1
  loc_67452F: ILdRf var_88
  loc_674532: ImpAdCallI2 Mid$(, , )
  loc_674537: FStStrNoPop var_C4
  loc_67453A: FLdPr Me
  loc_67453D: MemLdStr global_72
  loc_674540: LitI2_Byte 1
  loc_674542: FnUBound
  loc_674544: FLdPr Me
  loc_674547: MemLdStr global_72
  loc_67454A: Ary1LdPr
  loc_67454B: MemStStrCopy
  loc_67454F: FFree1Str var_C4
  loc_674552: FFree1Var var_A0 = ""
  loc_674555: LitI2_Byte &HFF
  loc_674557: LitStr "0"
  loc_67455A: LitVarI2 var_A0, 2
  loc_67455F: FLdI2 var_8A
  loc_674562: LitI2_Byte &HB
  loc_674564: AddI2
  loc_674565: CI4UI1
  loc_674566: ILdRf var_88
  loc_674569: ImpAdCallI2 Mid$(, , )
  loc_67456E: FStStrNoPop var_C4
  loc_674571: ConcatStr
  loc_674572: FStStrNoPop var_C8
  loc_674575: ImpAdCallFPR4 push Val()
  loc_67457A: CI4R8
  loc_67457B: LitStr "0"
  loc_67457E: LitVarI2 var_B0, 1
  loc_674583: FLdI2 var_8A
  loc_674586: LitI2_Byte &HD
  loc_674588: AddI2
  loc_674589: CI4UI1
  loc_67458A: ILdRf var_88
  loc_67458D: ImpAdCallI2 Mid$(, , )
  loc_674592: FStStrNoPop var_D4
  loc_674595: ConcatStr
  loc_674596: FStStrNoPop var_E8
  loc_674599: ImpAdCallFPR4 push Val()
  loc_67459E: CI4R8
  loc_67459F: FLdPr Me
  loc_6745A2: MemLdStr global_72
  loc_6745A5: LitI2_Byte 1
  loc_6745A7: FnUBound
  loc_6745A9: FLdPr Me
  loc_6745AC: MemLdStr global_72
  loc_6745AF: Ary1LdPr
  loc_6745B0: MemLdRfVar from_stack_1.global_32
  loc_6745B3: AryInRecLdPr
  loc_6745B9: MemStI2 global_0
  loc_6745BC: FFreeStr var_C4 = "": var_C8 = "": var_D4 = ""
  loc_6745C7: FFreeVar var_A0 = ""
  loc_6745CE: LitI4 0
  loc_6745D3: FLdPr Me
  loc_6745D6: MemLdStr global_72
  loc_6745D9: LitI2_Byte 1
  loc_6745DB: FnUBound
  loc_6745DD: LitI4 1
  loc_6745E2: AddI4
  loc_6745E3: FLdPr Me
  loc_6745E6: MemLdRfVar from_stack_1.global_72
  loc_6745E9: RedimPreserve
  loc_6745F3: FLdI2 var_8A
  loc_6745F6: LitI2_Byte &H22
  loc_6745F8: AddI2
  loc_6745F9: FStI2 var_8A
  loc_6745FC: Branch loc_67433E
  loc_6745FF: FLdPr Me
  loc_674602: MemLdStr global_72
  loc_674605: LitI2_Byte 1
  loc_674607: FnLBound
  loc_674608: CUI1I4
  loc_67460A: FLdRfVar var_EA
  loc_67460D: FLdPr Me
  loc_674610: MemLdStr global_72
  loc_674613: LitI2_Byte 1
  loc_674615: FnUBound
  loc_674617: LitI4 1
  loc_67461C: SubI4
  loc_67461D: CUI1I4
  loc_67461F: ForUI1 var_EE
  loc_674625: LitVar_Missing var_C0
  loc_674628: PopAdLdVar
  loc_674629: FLdUI1
  loc_67462D: CI4UI1
  loc_67462E: FLdPr Me
  loc_674631: MemLdStr global_72
  loc_674634: Ary1LdPr
  loc_674635: MemLdStr global_0
  loc_674638: FLdPrThis
  loc_674639: VCallAd Control_ID_cmbClientes
  loc_67463C: FStAdFunc var_90
  loc_67463F: FLdPr var_90
  loc_674642: Me.AddItem from_stack_1, from_stack_2
  loc_674647: FFree1Ad var_90
  loc_67464A: FLdRfVar var_EA
  loc_67464D: NextUI1
  loc_674653: LitI4 0
  loc_674658: FLdPr Me
  loc_67465B: MemLdStr global_72
  loc_67465E: Ary1LdPr
  loc_67465F: MemLdStr global_8
  loc_674662: FLdPrThis
  loc_674663: VCallAd Control_ID_txtCuentaCorriente
  loc_674666: FStAdFunc var_90
  loc_674669: FLdPr var_90
  loc_67466C: Me.Text = from_stack_1
  loc_674671: FFree1Ad var_90
  loc_674674: LitI4 0
  loc_674679: FLdPr Me
  loc_67467C: MemLdStr global_72
  loc_67467F: Ary1LdPr
  loc_674680: MemLdStr global_4
  loc_674683: FLdPrThis
  loc_674684: VCallAd Control_ID_txtDireccionEntrega
  loc_674687: FStAdFunc var_90
  loc_67468A: FLdPr var_90
  loc_67468D: Me.Text = from_stack_1
  loc_674692: FFree1Ad var_90
  loc_674695: LitI2_Byte 0
  loc_674697: FLdPrThis
  loc_674698: VCallAd Control_ID_cmbClientes
  loc_67469B: FStAdFunc var_90
  loc_67469E: FLdPr var_90
  loc_6746A1: Me.ListIndex = from_stack_1
  loc_6746A6: FFree1Ad var_90
  loc_6746A9: from_stack_1v = Proc_121_23_64E0AC()
  loc_6746AE: ExitProcHresult
End Sub

Public Sub SaveCustomresVolume() '643B1C
  'Data Table: 44842C
  loc_6438D4: LitI4 3
  loc_6438D9: FLdPr Me
  loc_6438DC: MemLdI2 global_476
  loc_6438DF: CI4UI1
  loc_6438E0: FLdPr Me
  loc_6438E3: MemLdStr global_488
  loc_6438E6: Ary1LdI4
  loc_6438E7: ImpAdCallI2 Left$(, )
  loc_6438EC: FStStr var_88
  loc_6438EF: FLdRfVar var_92
  loc_6438F2: FLdPrThis
  loc_6438F3: VCallAd Control_ID_txtCuentaCorriente
  loc_6438F6: FStAdFunc var_90
  loc_6438F9: FLdPr var_90
  loc_6438FC:  = Me.Visible
  loc_643901: FLdRfVar var_9C
  loc_643904: FLdPrThis
  loc_643905: VCallAd Control_ID_txtCuentaCorriente
  loc_643908: FStAdFunc var_98
  loc_64390B: FLdPr var_98
  loc_64390E:  = Me.Text
  loc_643913: LitI4 1
  loc_643918: LitI4 1
  loc_64391D: LitVarStr var_BC, "00000000"
  loc_643922: FStVarCopyObj var_CC
  loc_643925: FLdRfVar var_CC
  loc_643928: FLdZeroAd var_9C
  loc_64392B: CVarStr var_AC
  loc_64392E: ImpAdCallI2 Format$(, )
  loc_643933: FStStr var_140
  loc_643936: ILdRf var_88
  loc_643939: CVarStr var_12C
  loc_64393C: LitVarStr var_FC, "00000000"
  loc_643941: FStVarCopyObj var_10C
  loc_643944: FLdRfVar var_10C
  loc_643947: FLdZeroAd var_140
  loc_64394A: CVarStr var_EC
  loc_64394D: FLdI2 var_92
  loc_643950: CVarBoolI2 var_DC
  loc_643954: FLdRfVar var_11C
  loc_643957: ImpAdCallFPR4  = IIf(, , )
  loc_64395C: FLdRfVar var_11C
  loc_64395F: ConcatVar var_13C
  loc_643963: CStrVarTmp
  loc_643964: FStStr var_88
  loc_643967: FFree1Str var_140
  loc_64396A: FFreeAd var_90 = ""
  loc_643971: FFreeVar var_AC = "": var_CC = "": var_DC = "": var_EC = "": var_10C = "": var_11C = ""
  loc_643982: FLdRfVar var_92
  loc_643985: FLdPrThis
  loc_643986: VCallAd Control_ID_txtDireccionEntrega
  loc_643989: FStAdFunc var_90
  loc_64398C: FLdPr var_90
  loc_64398F:  = Me.Visible
  loc_643994: FLdRfVar var_9C
  loc_643997: FLdPrThis
  loc_643998: VCallAd Control_ID_txtDireccionEntrega
  loc_64399B: FStAdFunc var_98
  loc_64399E: FLdPr var_98
  loc_6439A1:  = Me.Text
  loc_6439A6: ILdRf var_88
  loc_6439A9: CVarStr var_FC
  loc_6439AC: LitVarStr var_DC, "000"
  loc_6439B1: FStVarCopyObj var_CC
  loc_6439B4: FLdRfVar var_CC
  loc_6439B7: FLdZeroAd var_9C
  loc_6439BA: CVarStr var_AC
  loc_6439BD: FLdI2 var_92
  loc_6439C0: CVarBoolI2 var_BC
  loc_6439C4: FLdRfVar var_EC
  loc_6439C7: ImpAdCallFPR4  = IIf(, , )
  loc_6439CC: FLdRfVar var_EC
  loc_6439CF: ConcatVar var_10C
  loc_6439D3: CStrVarTmp
  loc_6439D4: FStStr var_88
  loc_6439D7: FFreeAd var_90 = ""
  loc_6439DE: FFreeVar var_BC = "": var_AC = "": var_CC = "": var_EC = ""
  loc_6439EB: LitI2_Byte 0
  loc_6439ED: FLdRfVar var_8A
  loc_6439F0: FLdRfVar var_92
  loc_6439F3: ImpAdLdRf MemVar_74A220
  loc_6439F6: NewIfNullPr clsProducts
  loc_6439F9: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6439FE: FLdI2 var_92
  loc_643A01: LitI2_Byte 1
  loc_643A03: SubI2
  loc_643A04: ForI2 var_144
  loc_643A0A: ILdRf var_88
  loc_643A0D: LitStr "00"
  loc_643A10: ConcatStr
  loc_643A11: FStStr var_88
  loc_643A14: ILdRf var_88
  loc_643A17: LitI4 1
  loc_643A1C: LitI4 1
  loc_643A21: LitVarStr var_DC, "00"
  loc_643A26: FStVarCopyObj var_CC
  loc_643A29: FLdRfVar var_CC
  loc_643A2C: FLdI2 var_8A
  loc_643A2F: LitI2_Byte 1
  loc_643A31: AddI2
  loc_643A32: CVarI2 var_AC
  loc_643A35: ImpAdCallI2 Format$(, )
  loc_643A3A: FStStrNoPop var_9C
  loc_643A3D: ConcatStr
  loc_643A3E: FStStr var_88
  loc_643A41: FFree1Str var_9C
  loc_643A44: FFreeVar var_AC = ""
  loc_643A4B: LitI2_Byte 1
  loc_643A4D: CUI1I2
  loc_643A4F: FLdRfVar var_8C
  loc_643A52: LitI2_Byte 5
  loc_643A54: CUI1I2
  loc_643A56: ForUI1 var_148
  loc_643A5C: ILdRf var_88
  loc_643A5F: LitI4 1
  loc_643A64: LitI4 1
  loc_643A69: LitVarStr var_DC, "00000000"
  loc_643A6E: FStVarCopyObj var_CC
  loc_643A71: FLdRfVar var_CC
  loc_643A74: FLdI2 var_8A
  loc_643A77: LitI2_Byte 1
  loc_643A79: AddI2
  loc_643A7A: CI4UI1
  loc_643A7B: FLdUI1
  loc_643A7F: CI4UI1
  loc_643A80: FLdPr Me
  loc_643A83: MemLdRfVar from_stack_1.global_76
  loc_643A86: AryInRecLdPr
  loc_643A8C: MemLdFPR8 global_0
  loc_643A8F: LitI2_Byte &H64
  loc_643A91: CR8I2
  loc_643A92: MulR8
  loc_643A93: CI4R8
  loc_643A94: CVarI4
  loc_643A98: ImpAdCallI2 Format$(, )
  loc_643A9D: FStStrNoPop var_9C
  loc_643AA0: ConcatStr
  loc_643AA1: FStStr var_88
  loc_643AA4: FFree1Str var_9C
  loc_643AA7: FFreeVar var_AC = ""
  loc_643AAE: FLdRfVar var_8C
  loc_643AB1: NextUI1
  loc_643AB7: FLdRfVar var_8A
  loc_643ABA: NextI2 var_144, loc_643A0A
  loc_643ABF: FLdRfVar var_AC
  loc_643AC2: FLdRfVar var_88
  loc_643AC5: FLdRfVar var_90
  loc_643AC8: ImpAdLdRf MemVar_74C760
  loc_643ACB: NewIfNullPr Formx
  loc_643ACE: from_stack_1v = Formx.global_4589716Get()
  loc_643AD3: FLdPr var_90
  loc_643AD6:  = Formx.Image
  loc_643ADB: FLdRfVar var_AC
  loc_643ADE: NotVar var_CC
  loc_643AE2: CBoolVarNull
  loc_643AE4: FFree1Ad var_90
  loc_643AE7: FFree1Var var_AC = ""
  loc_643AEA: BranchF loc_643B19
  loc_643AED: FLdRfVar var_AC
  loc_643AF0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_643AF5: FLdRfVar var_AC
  loc_643AF8: CBoolVarNull
  loc_643AFA: FFree1Var var_AC = ""
  loc_643AFD: BranchF loc_643B16
  loc_643B00: ILdRf Me
  loc_643B03: FStAdNoPop
  loc_643B07: ImpAdLdRf MemVar_7520D4
  loc_643B0A: NewIfNullPr Global
  loc_643B0D: Global.Unload from_stack_1
  loc_643B12: FFree1Ad var_90
  loc_643B15: ExitProcHresult
  loc_643B16: Branch loc_643ABF
  loc_643B19: ExitProcHresult
End Sub

Public Sub OperClieVol(OperClieDir) '626F84
  'Data Table: 44842C
  loc_626E10: from_stack_1v = Proc_121_24_5DC314()
  loc_626E15: FLdRfVar var_A0
  loc_626E18: FLdRfVar var_88
  loc_626E1B: ILdRf OperClieDir
  loc_626E1E: FLdRfVar var_90
  loc_626E21: ImpAdLdRf MemVar_74C760
  loc_626E24: NewIfNullPr Formx
  loc_626E27: from_stack_1v = Formx.global_4589716Get()
  loc_626E2C: FLdPr var_90
  loc_626E2F: Call 0.Method_arg_194 ()
  loc_626E34: FLdRfVar var_A0
  loc_626E37: NotVar var_B0
  loc_626E3B: CBoolVarNull
  loc_626E3D: FFree1Ad var_90
  loc_626E40: FFree1Var var_A0 = ""
  loc_626E43: BranchF loc_626E72
  loc_626E46: FLdRfVar var_A0
  loc_626E49: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_626E4E: FLdRfVar var_A0
  loc_626E51: CBoolVarNull
  loc_626E53: FFree1Var var_A0 = ""
  loc_626E56: BranchF loc_626E6F
  loc_626E59: ILdRf Me
  loc_626E5C: FStAdNoPop
  loc_626E60: ImpAdLdRf MemVar_7520D4
  loc_626E63: NewIfNullPr Global
  loc_626E66: Global.Unload from_stack_1
  loc_626E6B: FFree1Ad var_90
  loc_626E6E: ExitProcHresult
  loc_626E6F: Branch loc_626E15
  loc_626E72: FLdRfVar var_88
  loc_626E75: CVarRef
  loc_626E7A: FLdRfVar var_A0
  loc_626E7D: ImpAdCallFPR4  = Trim()
  loc_626E82: FLdRfVar var_A0
  loc_626E85: CStrVarTmp
  loc_626E86: FStStr var_88
  loc_626E89: FFree1Var var_A0 = ""
  loc_626E8C: ILdRf var_88
  loc_626E8F: FnLenStr
  loc_626E90: LitI4 1
  loc_626E95: EqI4
  loc_626E96: BranchF loc_626EEA
  loc_626E99: LitI2_Byte 0
  loc_626E9B: FLdRfVar var_8A
  loc_626E9E: FLdRfVar var_C2
  loc_626EA1: ImpAdLdRf MemVar_74A220
  loc_626EA4: NewIfNullPr clsProducts
  loc_626EA7: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_626EAC: FLdI2 var_C2
  loc_626EAF: LitI2_Byte 1
  loc_626EB1: SubI2
  loc_626EB2: ForI2 var_C6
  loc_626EB8: LitStr "0.00"
  loc_626EBB: FLdRfVar var_CC
  loc_626EBE: FLdI2 var_8A
  loc_626EC1: FLdPrThis
  loc_626EC2: VCallAd Control_ID_txtVolumen
  loc_626EC5: FStAdFunc var_90
  loc_626EC8: FLdPr var_90
  loc_626ECB: Set from_stack_2 = Me(from_stack_1)
  loc_626ED0: FLdPr var_CC
  loc_626ED3: Me.Text = from_stack_1
  loc_626ED8: FFreeAd var_90 = ""
  loc_626EDF: FLdRfVar var_8A
  loc_626EE2: NextI2 var_C6, loc_626EB8
  loc_626EE7: Branch loc_626F77
  loc_626EEA: LitI2_Byte 1
  loc_626EEC: FStI2 var_8A
  loc_626EEF: FLdI2 var_8A
  loc_626EF2: CI4UI1
  loc_626EF3: ILdRf var_88
  loc_626EF6: FnLenStr
  loc_626EF7: LtI4
  loc_626EF8: BranchF loc_626F77
  loc_626EFB: LitI2_Byte 1
  loc_626EFD: CUI1I2
  loc_626EFF: FLdRfVar var_CE
  loc_626F02: LitI2_Byte 5
  loc_626F04: CUI1I2
  loc_626F06: ForUI1 var_D2
  loc_626F0C: LitStr "0"
  loc_626F0F: LitVarI2 var_A0, 8
  loc_626F14: FLdI2 var_8A
  loc_626F17: FLdUI1
  loc_626F1B: CI2UI1
  loc_626F1D: LitI2_Byte 1
  loc_626F1F: SubI2
  loc_626F20: LitI2_Byte 8
  loc_626F22: MulI2
  loc_626F23: AddI2
  loc_626F24: CI4UI1
  loc_626F25: ILdRf var_88
  loc_626F28: ImpAdCallI2 Mid$(, , )
  loc_626F2D: FStStrNoPop var_D8
  loc_626F30: ConcatStr
  loc_626F31: FStStrNoPop var_DC
  loc_626F34: CR8Str
  loc_626F36: LitI2_Byte &H64
  loc_626F38: CR8I2
  loc_626F39: DivR8
  loc_626F3A: FLdI2 var_8A
  loc_626F3D: LitI2_Byte &H28
  loc_626F3F: IDvI2
  loc_626F40: LitI2_Byte 1
  loc_626F42: AddI2
  loc_626F43: CI4UI1
  loc_626F44: FLdUI1
  loc_626F48: CI4UI1
  loc_626F49: FLdPr Me
  loc_626F4C: MemLdRfVar from_stack_1.global_76
  loc_626F4F: AryInRecLdPr
  loc_626F55: MemStFPR8 global_0
  loc_626F58: FFreeStr var_D8 = ""
  loc_626F5F: FFree1Var var_A0 = ""
  loc_626F62: FLdRfVar var_CE
  loc_626F65: NextUI1
  loc_626F6B: FLdI2 var_8A
  loc_626F6E: LitI2_Byte &H28
  loc_626F70: AddI2
  loc_626F71: FStI2 var_8A
  loc_626F74: Branch loc_626EEF
  loc_626F77: LitVar_FALSE
  loc_626F7B: FLdPr Me
  loc_626F7E: MemStVar
  loc_626F82: ExitProcHresult
End Sub

Public Sub ImprimeCliente(prn, Operacion) '630168
  'Data Table: 44842C
  loc_62FFB4: LitI4 1
  loc_62FFB9: ILdI4 Operacion
  loc_62FFBC: ImpAdCallI2 Right$(, )
  loc_62FFC1: FStStrNoPop var_94
  loc_62FFC4: LitStr "1"
  loc_62FFC7: EqStr
  loc_62FFC9: FFree1Str var_94
  loc_62FFCC: BranchF loc_63006D
  loc_62FFCF: LitVarI2 var_B4, 3
  loc_62FFD4: LitI4 1
  loc_62FFD9: ILdI4 Operacion
  loc_62FFDC: ImpAdCallI2 Mid$(, , )
  loc_62FFE1: FStStr var_DC
  loc_62FFE4: FLdRfVar var_C8
  loc_62FFE7: FLdZeroAd var_DC
  loc_62FFEA: PopTmpLdAdStr
  loc_62FFEE: FLdRfVar var_88
  loc_62FFF1: FLdRfVar var_B8
  loc_62FFF4: ImpAdLdRf MemVar_74C760
  loc_62FFF7: NewIfNullPr Formx
  loc_62FFFA: from_stack_1v = Formx.global_4589716Get()
  loc_62FFFF: FLdPr var_B8
  loc_630002: Call 0.Method_arg_18C ()
  loc_630007: FLdRfVar var_C8
  loc_63000A: NotVar var_D8
  loc_63000E: CBoolVarNull
  loc_630010: FFreeStr var_94 = ""
  loc_630017: FFree1Ad var_B8
  loc_63001A: FFreeVar var_B4 = ""
  loc_630021: BranchF loc_630050
  loc_630024: FLdRfVar var_B4
  loc_630027: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63002C: FLdRfVar var_B4
  loc_63002F: CBoolVarNull
  loc_630031: FFree1Var var_B4 = ""
  loc_630034: BranchF loc_63004D
  loc_630037: ILdRf Me
  loc_63003A: FStAdNoPop
  loc_63003E: ImpAdLdRf MemVar_7520D4
  loc_630041: NewIfNullPr Global
  loc_630044: Global.Unload from_stack_1
  loc_630049: FFree1Ad var_B8
  loc_63004C: ExitProcHresult
  loc_63004D: Branch loc_62FFCF
  loc_630050: FLdRfVar var_88
  loc_630053: CVarRef
  loc_630058: FLdRfVar var_B4
  loc_63005B: ImpAdCallFPR4  = Trim()
  loc_630060: FLdRfVar var_B4
  loc_630063: CStrVarTmp
  loc_630064: FStStr var_88
  loc_630067: FFree1Var var_B4 = ""
  loc_63006A: Branch loc_630073
  loc_63006D: LitStr "0"
  loc_630070: FStStrCopy var_88
  loc_630073: ILdRf var_88
  loc_630076: FnLenStr
  loc_630077: LitI4 1
  loc_63007C: EqI4
  loc_63007D: BranchF loc_6300A2
  loc_630080: ILdI4 Operacion
  loc_630083: LitStr "0000000000000000000000000000000"
  loc_630086: ConcatStr
  loc_630087: PopTmpLdAdStr
  loc_63008B: ILdRf prn
  loc_63008E: Call ImprimeVolumen(from_stack_1v, from_stack_2v)
  loc_630093: FFree1Str var_94
  loc_630096: ILdI4 prn
  loc_630099: PrintObject
  loc_63009F: Branch loc_63015B
  loc_6300A2: LitI2_Byte 1
  loc_6300A4: FStI2 var_8A
  loc_6300A7: FLdI2 var_8A
  loc_6300AA: CI4UI1
  loc_6300AB: ILdRf var_88
  loc_6300AE: FnLenStr
  loc_6300AF: LtI4
  loc_6300B0: BranchF loc_63015B
  loc_6300B3: LitVarI2 var_B4, 11
  loc_6300B8: FLdI2 var_8A
  loc_6300BB: CI4UI1
  loc_6300BC: ILdRf var_88
  loc_6300BF: ImpAdCallI2 Mid$(, , )
  loc_6300C4: FStStr var_DC
  loc_6300C7: FLdRfVar var_DE
  loc_6300CA: FLdZeroAd var_DC
  loc_6300CD: PopTmpLdAdStr
  loc_6300D1: from_stack_2v = ExisteArrayImpresion(from_stack_1v)
  loc_6300D6: FLdI2 var_DE
  loc_6300D9: NotI4
  loc_6300DA: FFreeStr var_94 = ""
  loc_6300E1: FFree1Var var_B4 = ""
  loc_6300E4: BranchF loc_630146
  loc_6300E7: ILdI4 Operacion
  loc_6300EA: LitVarI2 var_B4, 34
  loc_6300EF: FLdI2 var_8A
  loc_6300F2: CI4UI1
  loc_6300F3: ILdRf var_88
  loc_6300F6: ImpAdCallI2 Mid$(, , )
  loc_6300FB: FStStrNoPop var_94
  loc_6300FE: ConcatStr
  loc_6300FF: PopTmpLdAdStr
  loc_630103: ILdRf prn
  loc_630106: Call ImprimeVolumen(from_stack_1v, from_stack_2v)
  loc_63010B: FFreeStr var_94 = ""
  loc_630112: FFree1Var var_B4 = ""
  loc_630115: LitVarI2 var_B4, 11
  loc_63011A: FLdI2 var_8A
  loc_63011D: CI4UI1
  loc_63011E: ILdRf var_88
  loc_630121: ImpAdCallI2 Mid$(, , )
  loc_630126: FStStr var_DC
  loc_630129: FLdRfVar var_C8
  loc_63012C: FLdZeroAd var_DC
  loc_63012F: PopTmpLdAdStr
  loc_630133: from_stack_2v = AgregarArrayImpresion(from_stack_1v)
  loc_630138: FFreeStr var_94 = ""
  loc_63013F: FFreeVar var_B4 = ""
  loc_630146: ILdI4 prn
  loc_630149: PrintObject
  loc_63014F: FLdI2 var_8A
  loc_630152: LitI2_Byte &H22
  loc_630154: AddI2
  loc_630155: FStI2 var_8A
  loc_630158: Branch loc_6300A7
  loc_63015B: FLdRfVar var_B4
  loc_63015E: from_stack_1v = BorrarArrayImpresion()
  loc_630163: FFree1Var var_B4 = ""
  loc_630166: ExitProcHresult
  loc_630167: ExitProcHresult
End Sub

Public Sub ImprimeVolumen(prn, Encabezado) '681214
  'Data Table: 44842C
  loc_680D80: LitVarI2 var_B4, 3
  loc_680D85: LitI4 1
  loc_680D8A: ILdI4 Encabezado
  loc_680D8D: ImpAdCallI2 Mid$(, , )
  loc_680D92: FStStrNoPop var_D8
  loc_680D95: LitVarI2 var_D4, 11
  loc_680D9A: LitI4 5
  loc_680D9F: ILdI4 Encabezado
  loc_680DA2: ImpAdCallI2 Mid$(, , )
  loc_680DA7: FStStrNoPop var_DC
  loc_680DAA: ConcatStr
  loc_680DAB: FStStrNoPop var_E0
  loc_680DAE: LitStr "00"
  loc_680DB1: ConcatStr
  loc_680DB2: FStStr var_90
  loc_680DB5: FFreeStr var_D8 = "": var_DC = ""
  loc_680DBE: FFreeVar var_B4 = ""
  loc_680DC5: FLdRfVar var_B4
  loc_680DC8: FLdRfVar var_88
  loc_680DCB: FLdRfVar var_90
  loc_680DCE: FLdRfVar var_E4
  loc_680DD1: ImpAdLdRf MemVar_74C760
  loc_680DD4: NewIfNullPr Formx
  loc_680DD7: from_stack_1v = Formx.global_4589716Get()
  loc_680DDC: FLdPr var_E4
  loc_680DDF: Call 0.Method_arg_194 ()
  loc_680DE4: FLdRfVar var_B4
  loc_680DE7: NotVar var_D4
  loc_680DEB: CBoolVarNull
  loc_680DED: FFree1Ad var_E4
  loc_680DF0: FFree1Var var_B4 = ""
  loc_680DF3: BranchF loc_680E22
  loc_680DF6: FLdRfVar var_B4
  loc_680DF9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_680DFE: FLdRfVar var_B4
  loc_680E01: CBoolVarNull
  loc_680E03: FFree1Var var_B4 = ""
  loc_680E06: BranchF loc_680E1F
  loc_680E09: ILdRf Me
  loc_680E0C: FStAdNoPop
  loc_680E10: ImpAdLdRf MemVar_7520D4
  loc_680E13: NewIfNullPr Global
  loc_680E16: Global.Unload from_stack_1
  loc_680E1B: FFree1Ad var_E4
  loc_680E1E: ExitProcHresult
  loc_680E1F: Branch loc_680DC5
  loc_680E22: LitI2_Byte &HFF
  loc_680E24: LitVarI2 var_B4, 1
  loc_680E29: LitI4 4
  loc_680E2E: ILdI4 Encabezado
  loc_680E31: ImpAdCallI2 Mid$(, , )
  loc_680E36: FStStrNoPop var_D8
  loc_680E39: LitStr "1"
  loc_680E3C: EqStr
  loc_680E3E: AndI4
  loc_680E3F: FStI2 var_92
  loc_680E42: FFree1Str var_D8
  loc_680E45: FFree1Var var_B4 = ""
  loc_680E48: FLdRfVar var_88
  loc_680E4B: CVarRef
  loc_680E50: FLdRfVar var_B4
  loc_680E53: ImpAdCallFPR4  = Trim()
  loc_680E58: FLdRfVar var_B4
  loc_680E5B: CStrVarTmp
  loc_680E5C: FStStr var_88
  loc_680E5F: FFree1Var var_B4 = ""
  loc_680E62: ILdRf var_88
  loc_680E65: FnLenStr
  loc_680E66: LitI4 1
  loc_680E6B: EqI4
  loc_680E6C: BranchF loc_680E73
  loc_680E6F: ExitProcHresult
  loc_680E70: Branch loc_681212
  loc_680E73: LitI2_Byte 1
  loc_680E75: FStI2 var_8A
  loc_680E78: FLdI2 var_8A
  loc_680E7B: CI4UI1
  loc_680E7C: ILdRf var_88
  loc_680E7F: FnLenStr
  loc_680E80: LtI4
  loc_680E81: BranchF loc_681212
  loc_680E84: LitI2_Byte 1
  loc_680E86: CUI1I2
  loc_680E88: FLdRfVar var_94
  loc_680E8B: LitI2_Byte 5
  loc_680E8D: CUI1I2
  loc_680E8F: ForUI1 var_E8
  loc_680E95: LitStr "0"
  loc_680E98: LitVarI2 var_B4, 8
  loc_680E9D: FLdI2 var_8A
  loc_680EA0: FLdUI1
  loc_680EA4: CI2UI1
  loc_680EA6: LitI2_Byte 1
  loc_680EA8: SubI2
  loc_680EA9: LitI2_Byte 8
  loc_680EAB: MulI2
  loc_680EAC: AddI2
  loc_680EAD: CI4UI1
  loc_680EAE: ILdRf var_88
  loc_680EB1: ImpAdCallI2 Mid$(, , )
  loc_680EB6: FStStrNoPop var_D8
  loc_680EB9: ConcatStr
  loc_680EBA: FStStrNoPop var_DC
  loc_680EBD: ImpAdCallFPR4 push Val()
  loc_680EC2: LitI2_Byte &H64
  loc_680EC4: CR8I2
  loc_680EC5: DivR8
  loc_680EC6: CR8R8
  loc_680EC7: LitI2_Byte 0
  loc_680EC9: CR8I2
  loc_680ECA: GtR4
  loc_680ECB: FFreeStr var_D8 = ""
  loc_680ED2: FFree1Var var_B4 = ""
  loc_680ED5: BranchF loc_6811FD
  loc_680ED8: FLdI2 var_92
  loc_680EDB: BranchF loc_6810CA
  loc_680EDE: LitVarI2 var_B4, 8
  loc_680EE3: LitI4 5
  loc_680EE8: ILdI4 Encabezado
  loc_680EEB: ImpAdCallI2 Mid$(, , )
  loc_680EF0: FStStr var_2C8
  loc_680EF3: LitI4 1
  loc_680EF8: LitI4 1
  loc_680EFD: LitVarStr var_C4, "#######0"
  loc_680F02: FStVarCopyObj var_F8
  loc_680F05: FLdRfVar var_F8
  loc_680F08: FLdZeroAd var_2C8
  loc_680F0B: CVarStr var_D4
  loc_680F0E: FLdRfVar var_108
  loc_680F11: ImpAdCallFPR4  = Format(, )
  loc_680F16: LitI4 1
  loc_680F1B: LitI4 1
  loc_680F20: LitVarStr var_118, "@@@@@@@@"
  loc_680F25: FStVarCopyObj var_128
  loc_680F28: FLdRfVar var_128
  loc_680F2B: FLdRfVar var_108
  loc_680F2E: FLdRfVar var_138
  loc_680F31: ImpAdCallFPR4  = Format(, )
  loc_680F36: LitVarI2 var_158, 3
  loc_680F3B: LitI4 &HD
  loc_680F40: ILdI4 Encabezado
  loc_680F43: ImpAdCallI2 Mid$(, , )
  loc_680F48: FStStr var_2CC
  loc_680F4B: LitVarI2 var_178, 20
  loc_680F50: LitI4 &H13
  loc_680F55: ILdI4 Encabezado
  loc_680F58: ImpAdCallI2 Mid$(, , )
  loc_680F5D: FStStr var_2D0
  loc_680F60: FLdRfVar var_E0
  loc_680F63: FLdI2 var_8A
  loc_680F66: LitI2_Byte &H28
  loc_680F68: IDvI2
  loc_680F69: LitI2_Byte 1
  loc_680F6B: AddI2
  loc_680F6C: ImpAdLdRf MemVar_74A220
  loc_680F6F: NewIfNullPr clsProducts
  loc_680F77: LitVarI2 var_198, 15
  loc_680F7C: LitI4 1
  loc_680F81: ILdRf var_E0
  loc_680F84: ImpAdCallI2 Mid$(, , )
  loc_680F89: FStStr var_2D4
  loc_680F8C: LitI4 8
  loc_680F91: FLdRfVar var_1AC
  loc_680F94: ImpAdCallFPR4  = Space()
  loc_680F99: LitI4 1
  loc_680F9E: LitI4 1
  loc_680FA3: LitVarStr var_1CC, "@@"
  loc_680FA8: FStVarCopyObj var_1DC
  loc_680FAB: FLdRfVar var_1DC
  loc_680FAE: FLdRfVar var_94
  loc_680FB1: CVarRef
  loc_680FB6: FLdRfVar var_1EC
  loc_680FB9: ImpAdCallFPR4  = Format(, )
  loc_680FBE: LitI4 3
  loc_680FC3: FLdRfVar var_20C
  loc_680FC6: ImpAdCallFPR4  = Space()
  loc_680FCB: LitVarI2 var_22C, 8
  loc_680FD0: FLdI2 var_8A
  loc_680FD3: FLdUI1
  loc_680FD7: CI2UI1
  loc_680FD9: LitI2_Byte 1
  loc_680FDB: SubI2
  loc_680FDC: LitI2_Byte 8
  loc_680FDE: MulI2
  loc_680FDF: AddI2
  loc_680FE0: CI4UI1
  loc_680FE1: ILdRf var_88
  loc_680FE4: ImpAdCallI2 Mid$(, , )
  loc_680FE9: FStStr var_2D8
  loc_680FEC: LitI4 1
  loc_680FF1: LitI4 1
  loc_680FF6: LitVarStr var_264, "#####0.00"
  loc_680FFB: FStVarCopyObj var_274
  loc_680FFE: FLdRfVar var_274
  loc_681001: LitStr "0"
  loc_681004: FLdZeroAd var_2D8
  loc_681007: FStStrNoPop var_230
  loc_68100A: ConcatStr
  loc_68100B: FStStrNoPop var_234
  loc_68100E: CR8Str
  loc_681010: LitI2_Byte &H64
  loc_681012: CR8I2
  loc_681013: DivR8
  loc_681014: CVarR8
  loc_681018: FLdRfVar var_284
  loc_68101B: ImpAdCallFPR4  = Format(, )
  loc_681020: LitI4 1
  loc_681025: LitI4 1
  loc_68102A: LitVarStr var_294, "@@@@@@@@@"
  loc_68102F: FStVarCopyObj var_2A4
  loc_681032: FLdRfVar var_2A4
  loc_681035: FLdRfVar var_284
  loc_681038: FLdRfVar var_2B4
  loc_68103B: ImpAdCallFPR4  = Format(, )
  loc_681040: FLdRfVar var_20C
  loc_681043: FLdRfVar var_2B4
  loc_681046: ConcatVar var_2C4
  loc_68104A: FLdRfVar var_1AC
  loc_68104D: FLdRfVar var_1EC
  loc_681050: ConcatVar var_1FC
  loc_681054: LitI2_Byte &H3B
  loc_681056: FLdZeroAd var_2D4
  loc_681059: FStStrNoPop var_19C
  loc_68105C: LitI2_Byte &H2C
  loc_68105E: FLdZeroAd var_2D0
  loc_681061: FStStrNoPop var_DC
  loc_681064: LitI2_Byte &H16
  loc_681066: FLdZeroAd var_2CC
  loc_681069: FStStrNoPop var_D8
  loc_68106C: LitI2_Byte &HF
  loc_68106E: FLdRfVar var_138
  loc_681071: LitI2_Byte 2
  loc_681073: ILdI4 prn
  loc_681076: PrintObject
  loc_68107C: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_19C = "": var_230 = "": var_234 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = ""
  loc_681095: FFreeVar var_B4 = "": var_D4 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1DC = "": var_1AC = "": var_1EC = "": var_1FC = "": var_22C = "": var_254 = "": var_274 = "": var_284 = "": var_2A4 = "": var_20C = "": var_2B4 = ""
  loc_6810C2: LitI2_Byte 0
  loc_6810C4: FStI2 var_92
  loc_6810C7: Branch loc_6811FD
  loc_6810CA: FLdRfVar var_D8
  loc_6810CD: FLdI2 var_8A
  loc_6810D0: LitI2_Byte &H28
  loc_6810D2: IDvI2
  loc_6810D3: LitI2_Byte 1
  loc_6810D5: AddI2
  loc_6810D6: ImpAdLdRf MemVar_74A220
  loc_6810D9: NewIfNullPr clsProducts
  loc_6810E1: LitVarI2 var_B4, 15
  loc_6810E6: LitI4 1
  loc_6810EB: ILdRf var_D8
  loc_6810EE: ImpAdCallI2 Mid$(, , )
  loc_6810F3: FStStr var_230
  loc_6810F6: LitI4 8
  loc_6810FB: FLdRfVar var_D4
  loc_6810FE: ImpAdCallFPR4  = Space()
  loc_681103: LitI4 1
  loc_681108: LitI4 1
  loc_68110D: LitVarStr var_118, "@@"
  loc_681112: FStVarCopyObj var_F8
  loc_681115: FLdRfVar var_F8
  loc_681118: FLdRfVar var_94
  loc_68111B: CVarRef
  loc_681120: FLdRfVar var_108
  loc_681123: ImpAdCallFPR4  = Format(, )
  loc_681128: LitI4 3
  loc_68112D: FLdRfVar var_138
  loc_681130: ImpAdCallFPR4  = Space()
  loc_681135: LitVarI2 var_158, 8
  loc_68113A: FLdI2 var_8A
  loc_68113D: FLdUI1
  loc_681141: CI2UI1
  loc_681143: LitI2_Byte 1
  loc_681145: SubI2
  loc_681146: LitI2_Byte 8
  loc_681148: MulI2
  loc_681149: AddI2
  loc_68114A: CI4UI1
  loc_68114B: ILdRf var_88
  loc_68114E: ImpAdCallI2 Mid$(, , )
  loc_681153: FStStr var_234
  loc_681156: LitI4 1
  loc_68115B: LitI4 1
  loc_681160: LitVarStr var_188, "#####0.00"
  loc_681165: FStVarCopyObj var_198
  loc_681168: FLdRfVar var_198
  loc_68116B: LitStr "0"
  loc_68116E: FLdZeroAd var_234
  loc_681171: FStStrNoPop var_E0
  loc_681174: ConcatStr
  loc_681175: FStStrNoPop var_19C
  loc_681178: CR8Str
  loc_68117A: LitI2_Byte &H64
  loc_68117C: CR8I2
  loc_68117D: DivR8
  loc_68117E: CVarR8
  loc_681182: FLdRfVar var_1AC
  loc_681185: ImpAdCallFPR4  = Format(, )
  loc_68118A: LitI4 1
  loc_68118F: LitI4 1
  loc_681194: LitVarStr var_1BC, "@@@@@@@@@"
  loc_681199: FStVarCopyObj var_1DC
  loc_68119C: FLdRfVar var_1DC
  loc_68119F: FLdRfVar var_1AC
  loc_6811A2: FLdRfVar var_1EC
  loc_6811A5: ImpAdCallFPR4  = Format(, )
  loc_6811AA: FLdRfVar var_138
  loc_6811AD: FLdRfVar var_1EC
  loc_6811B0: ConcatVar var_1FC
  loc_6811B4: FLdRfVar var_D4
  loc_6811B7: FLdRfVar var_108
  loc_6811BA: ConcatVar var_128
  loc_6811BE: LitI2_Byte &H3B
  loc_6811C0: FLdZeroAd var_230
  loc_6811C3: FStStrNoPop var_DC
  loc_6811C6: LitI2_Byte &H2C
  loc_6811C8: ILdI4 prn
  loc_6811CB: PrintObject
  loc_6811D1: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_19C = "": var_230 = ""
  loc_6811E0: FFreeVar var_B4 = "": var_F8 = "": var_D4 = "": var_108 = "": var_128 = "": var_158 = "": var_178 = "": var_198 = "": var_1AC = "": var_1DC = "": var_138 = "": var_1EC = ""
  loc_6811FD: FLdRfVar var_94
  loc_681200: NextUI1
  loc_681206: FLdI2 var_8A
  loc_681209: LitI2_Byte &H28
  loc_68120B: AddI2
  loc_68120C: FStI2 var_8A
  loc_68120F: Branch loc_680E78
  loc_681212: ExitProcHresult
End Sub

Public Function BorrarArrayImpresion() '5D54B0
  'Data Table: 44842C
  loc_5D548C: ZeroRetValVar
  loc_5D548E: LitI4 0
  loc_5D5493: LitI4 0
  loc_5D5498: FLdPr Me
  loc_5D549B: MemLdRfVar from_stack_1.global_496
  loc_5D549E: Redim
  loc_5D54A8: ExitProcCbHresult
End Function

Public Function AgregarArrayImpresion(cadena) '5DC478
  'Data Table: 44842C
  loc_5DC434: ZeroRetValVar
  loc_5DC436: LitI4 0
  loc_5DC43B: FLdPr Me
  loc_5DC43E: MemLdStr global_496
  loc_5DC441: LitI2_Byte 1
  loc_5DC443: FnUBound
  loc_5DC445: LitI4 1
  loc_5DC44A: AddI4
  loc_5DC44B: FLdPr Me
  loc_5DC44E: MemLdRfVar from_stack_1.global_496
  loc_5DC451: RedimPreserve
  loc_5DC45B: ILdI4 cadena
  loc_5DC45E: FLdPr Me
  loc_5DC461: MemLdStr global_496
  loc_5DC464: LitI2_Byte 1
  loc_5DC466: FnUBound
  loc_5DC468: FLdPr Me
  loc_5DC46B: MemLdStr global_496
  loc_5DC46E: Ary1StStrCopy
  loc_5DC46F: ExitProcCbHresult
End Function

Public Function ExisteArrayImpresion(cadena) '5E2C6C
  'Data Table: 44842C
  loc_5E2C04: LitI2_Byte 0
  loc_5E2C06: FStI2 var_86
  loc_5E2C09: FLdPr Me
  loc_5E2C0C: MemLdStr global_496
  loc_5E2C0F: LitI2_Byte 1
  loc_5E2C11: FnUBound
  loc_5E2C13: LitI4 0
  loc_5E2C18: EqI4
  loc_5E2C19: BranchF loc_5E2C22
  loc_5E2C1C: ExitProcCbHresult
  loc_5E2C22: LitI2_Byte 1
  loc_5E2C24: CUI1I2
  loc_5E2C26: FLdRfVar var_88
  loc_5E2C29: FLdPr Me
  loc_5E2C2C: MemLdStr global_496
  loc_5E2C2F: LitI2_Byte 1
  loc_5E2C31: FnUBound
  loc_5E2C33: CUI1I4
  loc_5E2C35: ForUI1 var_8C
  loc_5E2C3B: ILdI4 cadena
  loc_5E2C3E: FLdUI1
  loc_5E2C42: CI4UI1
  loc_5E2C43: FLdPr Me
  loc_5E2C46: MemLdStr global_496
  loc_5E2C49: Ary1LdI4
  loc_5E2C4A: EqStr
  loc_5E2C4C: BranchF loc_5E2C5A
  loc_5E2C4F: LitI2_Byte &HFF
  loc_5E2C51: FStI2 var_86
  loc_5E2C54: ExitProcCbHresult
  loc_5E2C5A: FLdRfVar var_88
  loc_5E2C5D: NextUI1
  loc_5E2C63: ExitProcCbHresult
End Function

Private Function Proc_121_22_5F2010(arg_C, arg_10) '5F2010
  'Data Table: 44842C
  loc_5F1F74: LitI2_Byte 0
  loc_5F1F76: FStI2 var_86
  loc_5F1F79: FLdPr Me
  loc_5F1F7C: MemLdStr global_72
  loc_5F1F7F: LitI2_Byte 1
  loc_5F1F81: FnLBound
  loc_5F1F82: CI2I4
  loc_5F1F83: FLdRfVar var_88
  loc_5F1F86: FLdPr Me
  loc_5F1F89: MemLdStr global_72
  loc_5F1F8C: LitI2_Byte 1
  loc_5F1F8E: FnUBound
  loc_5F1F90: CI2I4
  loc_5F1F91: ForI2 var_8C
  loc_5F1F97: LitVarStr var_C0, "0"
  loc_5F1F9C: ILdRf arg_C
  loc_5F1F9F: CVarRef
  loc_5F1FA4: FLdRfVar var_B0
  loc_5F1FA7: ImpAdCallFPR4  = Str()
  loc_5F1FAC: FLdRfVar var_B0
  loc_5F1FAF: ConcatVar var_D0
  loc_5F1FB3: CStrVarVal var_D4
  loc_5F1FB7: ImpAdCallFPR4 push Val()
  loc_5F1FBC: FStFPR8 var_DC
  loc_5F1FBF: LitStr "0"
  loc_5F1FC2: FLdI2 var_88
  loc_5F1FC5: CI4UI1
  loc_5F1FC6: FLdPr Me
  loc_5F1FC9: MemLdStr global_72
  loc_5F1FCC: Ary1LdPr
  loc_5F1FCD: MemLdStr global_8
  loc_5F1FD0: ConcatStr
  loc_5F1FD1: FStStrNoPop var_90
  loc_5F1FD4: ImpAdCallFPR4 push Val()
  loc_5F1FD9: CR8R8
  loc_5F1FDA: FLdFPR8 var_DC
  loc_5F1FDD: CR8R8
  loc_5F1FDE: EqR4
  loc_5F1FDF: FFreeStr var_90 = ""
  loc_5F1FE6: FFreeVar var_B0 = ""
  loc_5F1FED: BranchF loc_5F2001
  loc_5F1FF0: FLdI2 var_88
  loc_5F1FF3: IStI2 arg_10
  loc_5F1FF6: LitI2_Byte &HFF
  loc_5F1FF8: FStI2 var_86
  loc_5F1FFB: ExitProcCbHresult
  loc_5F2001: FLdRfVar var_88
  loc_5F2004: NextI2 var_8C, loc_5F1F97
  loc_5F2009: ExitProcCbHresult
End Function

Private Function Proc_121_23_64E0AC() '64E0AC
  'Data Table: 44842C
  loc_64DE00: FLdRfVar var_9E
  loc_64DE03: FLdPrThis
  loc_64DE04: VCallAd Control_ID_cmbClientes
  loc_64DE07: FStAdFunc var_9C
  loc_64DE0A: FLdPr var_9C
  loc_64DE0D:  = Me.ListIndex
  loc_64DE12: FLdI2 var_9E
  loc_64DE15: CVarI2 var_B0
  loc_64DE18: FStVar var_94
  loc_64DE1C: FFree1Ad var_9C
  loc_64DE1F: LitI2_Byte 0
  loc_64DE21: FLdRfVar var_96
  loc_64DE24: LitI2_Byte 9
  loc_64DE26: ForI2 var_B4
  loc_64DE2C: FLdI2 var_96
  loc_64DE2F: LitI2_Byte 1
  loc_64DE31: AddI2
  loc_64DE32: CI4UI1
  loc_64DE33: FLdRfVar var_94
  loc_64DE36: CI4Var
  loc_64DE38: FLdPr Me
  loc_64DE3B: MemLdStr global_72
  loc_64DE3E: Ary1LdPr
  loc_64DE3F: MemLdRfVar from_stack_1.global_12
  loc_64DE42: AryInRecLdPr
  loc_64DE48: MemLdI2 global_0
  loc_64DE4B: BranchF loc_64E00C
  loc_64DE4E: LitI2_Byte &HFF
  loc_64DE50: FLdRfVar var_B8
  loc_64DE53: FLdI2 var_96
  loc_64DE56: FLdPrThis
  loc_64DE57: VCallAd Control_ID_txtProductos
  loc_64DE5A: FStAdFunc var_9C
  loc_64DE5D: FLdPr var_9C
  loc_64DE60: Set from_stack_2 = Me(from_stack_1)
  loc_64DE65: FLdPr var_B8
  loc_64DE68: Me.Enabled = from_stack_1b
  loc_64DE6D: FFreeAd var_9C = ""
  loc_64DE74: LitI2_Byte &HFF
  loc_64DE76: FLdRfVar var_B8
  loc_64DE79: FLdI2 var_96
  loc_64DE7C: FLdPrThis
  loc_64DE7D: VCallAd Control_ID_txtVolumen
  loc_64DE80: FStAdFunc var_9C
  loc_64DE83: FLdPr var_9C
  loc_64DE86: Set from_stack_2 = Me(from_stack_1)
  loc_64DE8B: FLdPr var_B8
  loc_64DE8E: Me.Enabled = from_stack_1b
  loc_64DE93: FFreeAd var_9C = ""
  loc_64DE9A: LitI2_Byte &HFF
  loc_64DE9C: FLdRfVar var_B8
  loc_64DE9F: FLdI2 var_96
  loc_64DEA2: FLdPrThis
  loc_64DEA3: VCallAd Control_ID_cmbNivel
  loc_64DEA6: FStAdFunc var_9C
  loc_64DEA9: FLdPr var_9C
  loc_64DEAC: Set from_stack_2 = Me(from_stack_1)
  loc_64DEB1: FLdPr var_B8
  loc_64DEB4: Me.Enabled = from_stack_1b
  loc_64DEB9: FFreeAd var_9C = ""
  loc_64DEC0: FLdRfVar var_B8
  loc_64DEC3: FLdI2 var_96
  loc_64DEC6: FLdPrThis
  loc_64DEC7: VCallAd Control_ID_cmbNivel
  loc_64DECA: FStAdFunc var_9C
  loc_64DECD: FLdPr var_9C
  loc_64DED0: Set from_stack_2 = Me(from_stack_1)
  loc_64DED5: FLdPr var_B8
  loc_64DED8: Me.Clear
  loc_64DEDD: FFreeAd var_9C = ""
  loc_64DEE4: LitI2_Byte 1
  loc_64DEE6: FLdRfVar var_98
  loc_64DEE9: LitI2_Byte 5
  loc_64DEEB: ForI2 var_BC
  loc_64DEF1: FLdI2 var_96
  loc_64DEF4: LitI2_Byte 1
  loc_64DEF6: AddI2
  loc_64DEF7: CI4UI1
  loc_64DEF8: FLdI2 var_98
  loc_64DEFB: CI4UI1
  loc_64DEFC: FLdRfVar var_94
  loc_64DEFF: CI4Var
  loc_64DF01: FLdPr Me
  loc_64DF04: MemLdStr global_72
  loc_64DF07: Ary1LdPr
  loc_64DF08: MemLdRfVar from_stack_1.global_32
  loc_64DF0B: AryInRecLdPr
  loc_64DF11: MemLdI2 global_0
  loc_64DF14: BranchF loc_64E001
  loc_64DF17: LitVar_Missing var_E0
  loc_64DF1A: PopAdLdVar
  loc_64DF1B: FLdRfVar var_98
  loc_64DF1E: CVarRef
  loc_64DF23: FLdRfVar var_CC
  loc_64DF26: ImpAdCallFPR4  = Str()
  loc_64DF2B: FLdRfVar var_CC
  loc_64DF2E: CStrVarVal var_D0
  loc_64DF32: FLdRfVar var_B8
  loc_64DF35: FLdI2 var_96
  loc_64DF38: FLdPrThis
  loc_64DF39: VCallAd Control_ID_cmbNivel
  loc_64DF3C: FStAdFunc var_9C
  loc_64DF3F: FLdPr var_9C
  loc_64DF42: Set from_stack_2 = Me(from_stack_1)
  loc_64DF47: FLdPr var_B8
  loc_64DF4A: Me.AddItem from_stack_1, from_stack_2
  loc_64DF4F: FFree1Str var_D0
  loc_64DF52: FFreeAd var_9C = ""
  loc_64DF59: FFree1Var var_CC = ""
  loc_64DF5C: LitI2_Byte 0
  loc_64DF5E: FLdRfVar var_B8
  loc_64DF61: FLdI2 var_96
  loc_64DF64: FLdPrThis
  loc_64DF65: VCallAd Control_ID_cmbNivel
  loc_64DF68: FStAdFunc var_9C
  loc_64DF6B: FLdPr var_9C
  loc_64DF6E: Set from_stack_2 = Me(from_stack_1)
  loc_64DF73: FLdPr var_B8
  loc_64DF76: Me.ListIndex = from_stack_1
  loc_64DF7B: FFreeAd var_9C = ""
  loc_64DF82: FLdRfVar var_9E
  loc_64DF85: FLdRfVar var_B8
  loc_64DF88: FLdI2 var_96
  loc_64DF8B: FLdPrThis
  loc_64DF8C: VCallAd Control_ID_cmbNivel
  loc_64DF8F: FStAdFunc var_9C
  loc_64DF92: FLdPr var_9C
  loc_64DF95: Set from_stack_2 = Me(from_stack_1)
  loc_64DF9A: FLdPr var_B8
  loc_64DF9D:  = Me.ListCount
  loc_64DFA2: FLdI2 var_9E
  loc_64DFA5: LitI2_Byte 0
  loc_64DFA7: LtI2
  loc_64DFA8: FFreeAd var_9C = ""
  loc_64DFAF: BranchF loc_64DFDB
  loc_64DFB2: LitI2_Byte 0
  loc_64DFB4: FLdRfVar var_B8
  loc_64DFB7: FLdI2 var_96
  loc_64DFBA: FLdPrThis
  loc_64DFBB: VCallAd Control_ID_cmbNivel
  loc_64DFBE: FStAdFunc var_9C
  loc_64DFC1: FLdPr var_9C
  loc_64DFC4: Set from_stack_2 = Me(from_stack_1)
  loc_64DFC9: FLdPr var_B8
  loc_64DFCC: Me.Enabled = from_stack_1b
  loc_64DFD1: FFreeAd var_9C = ""
  loc_64DFD8: Branch loc_64E001
  loc_64DFDB: LitI2_Byte &HFF
  loc_64DFDD: FLdRfVar var_B8
  loc_64DFE0: FLdI2 var_96
  loc_64DFE3: FLdPrThis
  loc_64DFE4: VCallAd Control_ID_cmbNivel
  loc_64DFE7: FStAdFunc var_9C
  loc_64DFEA: FLdPr var_9C
  loc_64DFED: Set from_stack_2 = Me(from_stack_1)
  loc_64DFF2: FLdPr var_B8
  loc_64DFF5: Me.Enabled = from_stack_1b
  loc_64DFFA: FFreeAd var_9C = ""
  loc_64E001: FLdRfVar var_98
  loc_64E004: NextI2 var_BC, loc_64DEF1
  loc_64E009: Branch loc_64E0A2
  loc_64E00C: LitI2_Byte 0
  loc_64E00E: FLdRfVar var_B8
  loc_64E011: FLdI2 var_96
  loc_64E014: FLdPrThis
  loc_64E015: VCallAd Control_ID_txtProductos
  loc_64E018: FStAdFunc var_9C
  loc_64E01B: FLdPr var_9C
  loc_64E01E: Set from_stack_2 = Me(from_stack_1)
  loc_64E023: FLdPr var_B8
  loc_64E026: Me.Enabled = from_stack_1b
  loc_64E02B: FFreeAd var_9C = ""
  loc_64E032: LitI2_Byte 0
  loc_64E034: FLdRfVar var_B8
  loc_64E037: FLdI2 var_96
  loc_64E03A: FLdPrThis
  loc_64E03B: VCallAd Control_ID_txtVolumen
  loc_64E03E: FStAdFunc var_9C
  loc_64E041: FLdPr var_9C
  loc_64E044: Set from_stack_2 = Me(from_stack_1)
  loc_64E049: FLdPr var_B8
  loc_64E04C: Me.Enabled = from_stack_1b
  loc_64E051: FFreeAd var_9C = ""
  loc_64E058: LitI2_Byte 0
  loc_64E05A: FLdRfVar var_B8
  loc_64E05D: FLdI2 var_96
  loc_64E060: FLdPrThis
  loc_64E061: VCallAd Control_ID_cmbNivel
  loc_64E064: FStAdFunc var_9C
  loc_64E067: FLdPr var_9C
  loc_64E06A: Set from_stack_2 = Me(from_stack_1)
  loc_64E06F: FLdPr var_B8
  loc_64E072: Me.Enabled = from_stack_1b
  loc_64E077: FFreeAd var_9C = ""
  loc_64E07E: FLdRfVar var_B8
  loc_64E081: FLdI2 var_96
  loc_64E084: FLdPrThis
  loc_64E085: VCallAd Control_ID_cmbNivel
  loc_64E088: FStAdFunc var_9C
  loc_64E08B: FLdPr var_9C
  loc_64E08E: Set from_stack_2 = Me(from_stack_1)
  loc_64E093: FLdPr var_B8
  loc_64E096: Me.Clear
  loc_64E09B: FFreeAd var_9C = ""
  loc_64E0A2: FLdRfVar var_96
  loc_64E0A5: NextI2 var_B4, loc_64DE2C
  loc_64E0AA: ExitProcHresult
End Function

Private Function Proc_121_24_5DC314() '5DC314
  'Data Table: 44842C
  loc_5DC2CC: LitI2_Byte 1
  loc_5DC2CE: FLdRfVar var_86
  loc_5DC2D1: LitI2_Byte &HA
  loc_5DC2D3: ForI2 var_8C
  loc_5DC2D9: LitI2_Byte 1
  loc_5DC2DB: FLdRfVar var_88
  loc_5DC2DE: LitI2_Byte 5
  loc_5DC2E0: ForI2 var_90
  loc_5DC2E6: LitI2_Byte 0
  loc_5DC2E8: CR8I2
  loc_5DC2E9: FLdI2 var_86
  loc_5DC2EC: CI4UI1
  loc_5DC2ED: FLdI2 var_88
  loc_5DC2F0: CI4UI1
  loc_5DC2F1: FLdPr Me
  loc_5DC2F4: MemLdRfVar from_stack_1.global_76
  loc_5DC2F7: AryInRecLdPr
  loc_5DC2FD: MemStFPR8 global_0
  loc_5DC300: FLdRfVar var_88
  loc_5DC303: NextI2 var_90, loc_5DC2E6
  loc_5DC308: FLdRfVar var_86
  loc_5DC30B: NextI2 var_8C, loc_5DC2D9
  loc_5DC310: ExitProcHresult
End Function
