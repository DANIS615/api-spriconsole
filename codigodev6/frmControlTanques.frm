VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmControlTanques
  Caption = "  Tanques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 345
  ClientWidth = 11865
  ClientHeight = 8580
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton ImprimirTabla
    Caption = "I&mprimir Tabla"
    Left = 9360
    Top = 5400
    Width = 2175
    Height = 735
    TabIndex = 15
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.CommandButton GrabarTabla
    Caption = "&Grabar Tabla"
    Left = 9360
    Top = 2880
    Width = 2175
    Height = 735
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
    Style = 1
  End
  Begin VB.CommandButton cmdCopiarTablas
    Caption = "C&opiar Tablas de Tanques"
    Left = 6000
    Top = 5640
    Width = 2175
    Height = 735
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
    Style = 1
  End
  Begin VB.TextBox txtLeyenda
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 3600
    Top = 3600
    Width = 6015
    Height = 1560
    Visible = 0   'False
    Text = "   Cargando tabla, espere un momento..."
    TabIndex = 21
    MultiLine = -1  'True
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdBorrar
    Caption = "&Borrar todos los pares"
    Left = 9360
    Top = 2040
    Width = 2175
    Height = 735
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
    Style = 1
  End
  Begin VB.CommandButton cmdImportar
    Caption = "&Importar Tablas"
    Left = 9360
    Top = 3720
    Width = 2175
    Height = 735
    TabIndex = 13
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.VScrollBar VScroll
    Left = 4680
    Top = 600
    Width = 375
    Height = 7815
    TabIndex = 19
    Max = 5990
    LargeChange = 11
    Tag = "Scroll"
  End
  Begin Threed.SSPanel SSPanel1
    Index = 0
    Left = 240
    Top = 600
    Width = 4335
    Height = 615
    TabIndex = 26
    OleObjectBlob = "frmControlTanques.frx":0000
    Begin VB.TextBox txtLitros
      Index = 0
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 0
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
    Begin VB.TextBox txtMilimetros
      Index = 0
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "0"
      TabIndex = 27
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 9480
    Top = 7680
    Width = 2175
    Height = 735
    TabIndex = 18
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7080
    Top = 7680
    Width = 2175
    Height = 735
    TabIndex = 17
    Cancel = -1  'True
    Tag = "cmdCancelar"
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.ListBox lstTanques
    BackColor = &H80000000&
    Left = 5760
    Top = 2040
    Width = 2655
    Height = 3300
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSPanel SSPanel1
    Index = 1
    Left = 240
    Top = 1320
    Width = 4335
    Height = 615
    TabIndex = 28
    OleObjectBlob = "frmControlTanques.frx":0079
    Begin VB.TextBox txtMilimetros
      Index = 1
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "1"
      TabIndex = 29
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 1
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 1
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin Threed.SSPanel SSPanel1
    Index = 2
    Left = 240
    Top = 2040
    Width = 4335
    Height = 615
    TabIndex = 30
    OleObjectBlob = "frmControlTanques.frx":00F2
    Begin VB.TextBox txtMilimetros
      Index = 2
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "2"
      TabIndex = 31
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 2
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 2
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin Threed.SSPanel SSPanel1
    Index = 3
    Left = 240
    Top = 2760
    Width = 4335
    Height = 615
    TabIndex = 32
    OleObjectBlob = "frmControlTanques.frx":016B
    Begin VB.TextBox txtLitros
      Index = 3
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 3
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
    Begin VB.TextBox txtMilimetros
      Index = 3
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "3"
      TabIndex = 33
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 4
    Left = 240
    Top = 3480
    Width = 4335
    Height = 615
    TabIndex = 34
    OleObjectBlob = "frmControlTanques.frx":01E4
    Begin VB.TextBox txtMilimetros
      Index = 4
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "4"
      TabIndex = 35
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 4
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 4
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin Threed.SSPanel SSPanel1
    Index = 5
    Left = 240
    Top = 4200
    Width = 4335
    Height = 615
    TabIndex = 36
    OleObjectBlob = "frmControlTanques.frx":025D
    Begin VB.TextBox txtLitros
      Index = 5
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 5
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
    Begin VB.TextBox txtMilimetros
      Index = 5
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "5"
      TabIndex = 37
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 6
    Left = 240
    Top = 4920
    Width = 4335
    Height = 615
    TabIndex = 38
    OleObjectBlob = "frmControlTanques.frx":02D6
    Begin VB.TextBox txtMilimetros
      Index = 6
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "6"
      TabIndex = 39
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 6
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 6
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin Threed.SSPanel SSPanel1
    Index = 7
    Left = 240
    Top = 5640
    Width = 4335
    Height = 615
    TabIndex = 40
    OleObjectBlob = "frmControlTanques.frx":034F
    Begin VB.TextBox txtLitros
      Index = 7
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 7
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
    Begin VB.TextBox txtMilimetros
      Index = 7
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "7"
      TabIndex = 41
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 8
    Left = 240
    Top = 6360
    Width = 4335
    Height = 615
    TabIndex = 42
    OleObjectBlob = "frmControlTanques.frx":03C8
    Begin VB.TextBox txtMilimetros
      Index = 8
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "8"
      TabIndex = 43
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 8
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 8
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin Threed.SSPanel SSPanel1
    Index = 9
    Left = 240
    Top = 7080
    Width = 4335
    Height = 615
    TabIndex = 44
    OleObjectBlob = "frmControlTanques.frx":0441
    Begin VB.TextBox txtLitros
      Index = 9
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 9
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
    Begin VB.TextBox txtMilimetros
      Index = 9
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "9"
      TabIndex = 45
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Threed.SSPanel SSPanel1
    Index = 10
    Left = 240
    Top = 7800
    Width = 4335
    Height = 615
    TabIndex = 46
    OleObjectBlob = "frmControlTanques.frx":04BA
    Begin VB.TextBox txtMilimetros
      Index = 10
      Left = 240
      Top = 120
      Width = 1815
      Height = 405
      Text = "10"
      TabIndex = 47
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtLitros
      Index = 10
      Left = 2400
      Top = 120
      Width = 1695
      Height = 405
      Text = "0"
      TabIndex = 10
      Tag = "Litros"
      Alignment = 1 'Right Justify
      MaxLength = 9
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
  Begin VB.CommandButton cmdExportar
    Caption = "&Exportar Tablas"
    Left = 9360
    Top = 4560
    Width = 2175
    Height = 735
    TabIndex = 14
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.ListBox lstreporteTablas
    Left = 240
    Top = 1200
    Width = 6855
    Height = 3660
    Visible = 0   'False
    TabIndex = 48
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Litros"
    Left = 2640
    Top = 120
    Width = 1695
    Height = 375
    TabIndex = 25
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblEscala
    Caption = "Milimetros"
    Left = 480
    Top = 120
    Width = 1815
    Height = 375
    TabIndex = 24
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Tanques"
    Left = 6000
    Top = 1200
    Width = 2175
    Height = 495
    TabIndex = 23
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Control de Tanques"
    Left = 6000
    Top = 240
    Width = 5145
    Height = 555
    TabIndex = 22
    Alignment = 2 'Center
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

Attribute VB_Name = "frmControlTanques"

Public EmitidaPorSensor As Boolean
Public MMDesde As Long
Public MMHasta As Long
Public CopiaTanqueDestino As Integer
Public CancelaImpresion As Boolean


Private Sub cmdAceptar_Click() '5DD388
  'Data Table: 443E20
  loc_5DD33C: FLdPr Me
  loc_5DD33F: MemLdI2 global_116
  loc_5DD342: FLdPr Me
  loc_5DD345: MemLdI2 global_120
  loc_5DD348: AndI4
  loc_5DD349: BranchF loc_5DD36F
  loc_5DD34C: FLdRfVar var_8A
  loc_5DD34F: FLdPrThis
  loc_5DD350: VCallAd Control_ID_lstTanques
  loc_5DD353: FStAdFunc var_88
  loc_5DD356: FLdPr var_88
  loc_5DD359:  = Me.ListIndex
  loc_5DD35E: FLdI2 var_8A
  loc_5DD361: LitI2_Byte 1
  loc_5DD363: AddI2
  loc_5DD364: PopTmpLdAd2 var_8C
  loc_5DD367: from_stack_2v = Proc_152_29_65D200(from_stack_1v)
  loc_5DD36C: FFree1Ad var_88
  loc_5DD36F: ILdRf Me
  loc_5DD372: FStAdNoPop
  loc_5DD376: ImpAdLdRf MemVar_7520D4
  loc_5DD379: NewIfNullPr Global
  loc_5DD37C: Global.Unload from_stack_1
  loc_5DD381: FFree1Ad var_88
  loc_5DD384: ExitProcHresult
End Sub

Private Sub lstTanques_Click() '6C4C20
  'Data Table: 443E20
  loc_6C43AC: LitI2_Byte &HFF
  loc_6C43AE: FLdPr Me
  loc_6C43B1: MemStI2 global_134
  loc_6C43B4: FLdRfVar var_96
  loc_6C43B7: FLdPrThis
  loc_6C43B8: VCallAd Control_ID_lstTanques
  loc_6C43BB: FStAdFunc var_94
  loc_6C43BE: FLdPr var_94
  loc_6C43C1:  = Me.ListIndex
  loc_6C43C6: FLdI2 var_96
  loc_6C43C9: FLdPr Me
  loc_6C43CC: MemStI2 global_122
  loc_6C43CF: FFree1Ad var_94
  loc_6C43D2: FLdPr Me
  loc_6C43D5: MemLdI2 CopiaTanqueDestino
  loc_6C43D8: LitI2_Byte 0
  loc_6C43DA: NeI2
  loc_6C43DB: BranchF loc_6C43E1
  loc_6C43DE: Branch loc_6C43FF
  loc_6C43E1: FLdPr Me
  loc_6C43E4: MemLdI2 global_132
  loc_6C43E7: NotI4
  loc_6C43E8: BranchF loc_6C43FF
  loc_6C43EB: FLdPr Me
  loc_6C43EE: MemLdI2 global_122
  loc_6C43F1: FLdPr Me
  loc_6C43F4: MemLdI2 global_118
  loc_6C43F7: LitI2_Byte 1
  loc_6C43F9: SubI2
  loc_6C43FA: EqI2
  loc_6C43FB: BranchF loc_6C43FF
  loc_6C43FE: ExitProcHresult
  loc_6C43FF: LitI2_Byte 0
  loc_6C4401: FLdPr Me
  loc_6C4404: MemStI2 global_132
  loc_6C4407: FLdPr Me
  loc_6C440A: MemLdI2 global_116
  loc_6C440D: FLdPr Me
  loc_6C4410: MemLdI2 global_120
  loc_6C4413: AndI4
  loc_6C4414: BranchF loc_6C451E
  loc_6C4417: FLdRfVar var_1E4
  loc_6C441A: LitVar_Missing var_1E0
  loc_6C441D: LitVar_Missing var_1C0
  loc_6C4420: LitVar_Missing var_1A0
  loc_6C4423: LitVar_Missing var_180
  loc_6C4426: LitVar_Missing var_160
  loc_6C4429: LitVar_Missing var_140
  loc_6C442C: LitVar_Missing var_120
  loc_6C442F: LitVar_Missing var_100
  loc_6C4432: LitVar_Missing var_E0
  loc_6C4435: LitVar_Missing var_C0
  loc_6C4438: LitStr "Desea guardar los datos ingresados del tanque:"
  loc_6C443B: FStStrCopy var_A0
  loc_6C443E: FLdRfVar var_A0
  loc_6C4441: LitI4 &H13
  loc_6C4446: PopTmpLdAdStr var_9C
  loc_6C4449: LitI2_Byte &H3C
  loc_6C444B: PopTmpLdAd2 var_96
  loc_6C444E: ImpAdLdRf MemVar_74C7D0
  loc_6C4451: NewIfNullPr clsMsg
  loc_6C4454: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C4459: FLdRfVar var_33C
  loc_6C445C: LitVar_Missing var_338
  loc_6C445F: LitVar_Missing var_318
  loc_6C4462: LitVar_Missing var_2F8
  loc_6C4465: LitVar_Missing var_2D8
  loc_6C4468: LitVar_Missing var_2B8
  loc_6C446B: LitVar_Missing var_298
  loc_6C446E: LitVar_Missing var_278
  loc_6C4471: LitVar_Missing var_258
  loc_6C4474: LitVar_Missing var_238
  loc_6C4477: LitVar_Missing var_218
  loc_6C447A: LitStr "Guardar datos"
  loc_6C447D: FStStrCopy var_1F8
  loc_6C4480: FLdRfVar var_1F8
  loc_6C4483: LitI4 &H11
  loc_6C4488: PopTmpLdAdStr var_1F4
  loc_6C448B: LitI2_Byte &H3C
  loc_6C448D: PopTmpLdAd2 var_1EE
  loc_6C4490: ImpAdLdRf MemVar_74C7D0
  loc_6C4493: NewIfNullPr clsMsg
  loc_6C4496: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C449B: LitVar_Missing var_39C
  loc_6C449E: LitVar_Missing var_37C
  loc_6C44A1: FLdZeroAd var_33C
  loc_6C44A4: CVarStr var_35C
  loc_6C44A7: LitI4 &H24
  loc_6C44AC: ILdRf var_1E4
  loc_6C44AF: LitStr " "
  loc_6C44B2: ConcatStr
  loc_6C44B3: FStStrNoPop var_1E8
  loc_6C44B6: FLdPr Me
  loc_6C44B9: MemLdI2 global_118
  loc_6C44BC: CStrUI1
  loc_6C44BE: FStStrNoPop var_1EC
  loc_6C44C1: ConcatStr
  loc_6C44C2: CVarStr var_34C
  loc_6C44C5: ImpAdCallI2 MsgBox(, , , , )
  loc_6C44CA: LitI4 6
  loc_6C44CF: EqI4
  loc_6C44D0: FFreeStr var_A0 = "": var_1E4 = "": var_1E8 = "": var_1EC = ""
  loc_6C44DD: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_34C = "": var_35C = "": var_37C = ""
  loc_6C4510: BranchF loc_6C451E
  loc_6C4513: FLdPr Me
  loc_6C4516: MemLdRfVar from_stack_1.global_118
  loc_6C4519: from_stack_2v = Proc_152_29_65D200(from_stack_1v)
  loc_6C451E: LitI2_Byte 0
  loc_6C4520: FLdPr Me
  loc_6C4523: MemStI2 global_116
  loc_6C4526: FLdPr Me
  loc_6C4529: MemLdI2 global_116
  loc_6C452C: FLdPrThis
  loc_6C452D: VCallAd Control_ID_GrabarTabla
  loc_6C4530: FStAdFunc var_94
  loc_6C4533: FLdPr var_94
  loc_6C4536: Me.Enabled = from_stack_1b
  loc_6C453B: FFree1Ad var_94
  loc_6C453E: LitI2_Byte 0
  loc_6C4540: PopTmpLdAd2 var_96
  loc_6C4543: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6C4548: FLdRfVar var_1E4
  loc_6C454B: LitVar_Missing var_1E0
  loc_6C454E: LitVar_Missing var_1C0
  loc_6C4551: LitVar_Missing var_1A0
  loc_6C4554: LitVar_Missing var_180
  loc_6C4557: LitVar_Missing var_160
  loc_6C455A: LitVar_Missing var_140
  loc_6C455D: LitVar_Missing var_120
  loc_6C4560: LitVar_Missing var_100
  loc_6C4563: LitVar_Missing var_E0
  loc_6C4566: LitVar_Missing var_C0
  loc_6C4569: LitStr "Recuperando datos, espere un momento..."
  loc_6C456C: FStStrCopy var_A0
  loc_6C456F: FLdRfVar var_A0
  loc_6C4572: LitI4 &H14
  loc_6C4577: PopTmpLdAdStr var_9C
  loc_6C457A: LitI2_Byte &H3C
  loc_6C457C: PopTmpLdAd2 var_96
  loc_6C457F: ImpAdLdRf MemVar_74C7D0
  loc_6C4582: NewIfNullPr clsMsg
  loc_6C4585: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C458A: ILdRf var_1E4
  loc_6C458D: FLdPrThis
  loc_6C458E: VCallAd Control_ID_txtLeyenda
  loc_6C4591: FStAdFunc var_94
  loc_6C4594: FLdPr var_94
  loc_6C4597: Me.Text = from_stack_1
  loc_6C459C: FFreeStr var_A0 = ""
  loc_6C45A3: FFree1Ad var_94
  loc_6C45A6: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6C45BD: LitI2_Byte &HFF
  loc_6C45BF: FLdPrThis
  loc_6C45C0: VCallAd Control_ID_txtLeyenda
  loc_6C45C3: FStAdFunc var_94
  loc_6C45C6: FLdPr var_94
  loc_6C45C9: Me.Visible = from_stack_1b
  loc_6C45CE: FFree1Ad var_94
  loc_6C45D1: LitI2_Byte &HFF
  loc_6C45D3: FLdPrThis
  loc_6C45D4: VCallAd Control_ID_txtLeyenda
  loc_6C45D7: FStAdFunc var_94
  loc_6C45DA: FLdPr var_94
  loc_6C45DD: Me.Enabled = from_stack_1b
  loc_6C45E2: FFree1Ad var_94
  loc_6C45E5: ImpAdCallFPR4 DoEvents()
  loc_6C45EA: FLdRfVar var_96
  loc_6C45ED: FLdPrThis
  loc_6C45EE: VCallAd Control_ID_lstTanques
  loc_6C45F1: FStAdFunc var_94
  loc_6C45F4: FLdPr var_94
  loc_6C45F7:  = Me.ListIndex
  loc_6C45FC: FLdI2 var_96
  loc_6C45FF: LitI2_Byte 1
  loc_6C4601: AddI2
  loc_6C4602: FLdPr Me
  loc_6C4605: MemStI2 global_118
  loc_6C4608: FFree1Ad var_94
  loc_6C460B: FLdRfVar var_C0
  loc_6C460E: FLdRfVar var_88
  loc_6C4611: LitStr "0"
  loc_6C4614: FStStrCopy var_A0
  loc_6C4617: FLdRfVar var_A0
  loc_6C461A: FLdPr Me
  loc_6C461D: MemLdRfVar from_stack_1.global_118
  loc_6C4620: FLdRfVar var_94
  loc_6C4623: ImpAdLdRf MemVar_74C760
  loc_6C4626: NewIfNullPr Formx
  loc_6C4629: from_stack_1v = Formx.global_4589716Get()
  loc_6C462E: FLdPr var_94
  loc_6C4631:  = Formx.MaxButton
  loc_6C4636: FLdRfVar var_C0
  loc_6C4639: NotVar var_E0
  loc_6C463D: CBoolVarNull
  loc_6C463F: FFree1Str var_A0
  loc_6C4642: FFree1Ad var_94
  loc_6C4645: FFree1Var var_C0 = ""
  loc_6C4648: BranchF loc_6C4677
  loc_6C464B: FLdRfVar var_C0
  loc_6C464E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C4653: FLdRfVar var_C0
  loc_6C4656: CBoolVarNull
  loc_6C4658: FFree1Var var_C0 = ""
  loc_6C465B: BranchF loc_6C4674
  loc_6C465E: ILdRf Me
  loc_6C4661: FStAdNoPop
  loc_6C4665: ImpAdLdRf MemVar_7520D4
  loc_6C4668: NewIfNullPr Global
  loc_6C466B: Global.Unload from_stack_1
  loc_6C4670: FFree1Ad var_94
  loc_6C4673: ExitProcHresult
  loc_6C4674: Branch loc_6C460B
  loc_6C4677: FLdRfVar var_88
  loc_6C467A: CVarRef
  loc_6C467F: FLdRfVar var_C0
  loc_6C4682: ImpAdCallFPR4  = Trim()
  loc_6C4687: FLdRfVar var_C0
  loc_6C468A: CStrVarTmp
  loc_6C468B: FStStr var_88
  loc_6C468E: FFree1Var var_C0 = ""
  loc_6C4691: ILdRf var_88
  loc_6C4694: FnLenStr
  loc_6C4695: LitI4 1
  loc_6C469A: GtI4
  loc_6C469B: BranchF loc_6C487C
  loc_6C469E: FLdRfVar var_C0
  loc_6C46A1: FLdRfVar var_8C
  loc_6C46A4: LitI2_Byte 0
  loc_6C46A6: PopTmpLdAd2 var_96
  loc_6C46A9: LitStr "1"
  loc_6C46AC: FStStrCopy var_A0
  loc_6C46AF: FLdRfVar var_A0
  loc_6C46B2: FLdPr Me
  loc_6C46B5: MemLdRfVar from_stack_1.global_118
  loc_6C46B8: FLdRfVar var_94
  loc_6C46BB: ImpAdLdRf MemVar_74C760
  loc_6C46BE: NewIfNullPr Formx
  loc_6C46C1: from_stack_1v = Formx.global_4589716Get()
  loc_6C46C6: FLdPr var_94
  loc_6C46C9:  = Formx.MinButton
  loc_6C46CE: FLdRfVar var_C0
  loc_6C46D1: NotVar var_E0
  loc_6C46D5: CBoolVarNull
  loc_6C46D7: FFree1Str var_A0
  loc_6C46DA: FFree1Ad var_94
  loc_6C46DD: FFree1Var var_C0 = ""
  loc_6C46E0: BranchF loc_6C470F
  loc_6C46E3: FLdRfVar var_C0
  loc_6C46E6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C46EB: FLdRfVar var_C0
  loc_6C46EE: CBoolVarNull
  loc_6C46F0: FFree1Var var_C0 = ""
  loc_6C46F3: BranchF loc_6C470C
  loc_6C46F6: ILdRf Me
  loc_6C46F9: FStAdNoPop
  loc_6C46FD: ImpAdLdRf MemVar_7520D4
  loc_6C4700: NewIfNullPr Global
  loc_6C4703: Global.Unload from_stack_1
  loc_6C4708: FFree1Ad var_94
  loc_6C470B: ExitProcHresult
  loc_6C470C: Branch loc_6C469E
  loc_6C470F: FLdRfVar var_8C
  loc_6C4712: CVarRef
  loc_6C4717: FLdRfVar var_C0
  loc_6C471A: ImpAdCallFPR4  = Trim()
  loc_6C471F: FLdRfVar var_C0
  loc_6C4722: CStrVarTmp
  loc_6C4723: FStStr var_8C
  loc_6C4726: FFree1Var var_C0 = ""
  loc_6C4729: LitI2_Byte 1
  loc_6C472B: FStI2 var_8E
  loc_6C472E: LitI2_Byte 0
  loc_6C4730: FStI2 var_90
  loc_6C4733: FLdI2 var_8E
  loc_6C4736: CI4UI1
  loc_6C4737: ILdRf var_8C
  loc_6C473A: FnLenStr
  loc_6C473B: LtI4
  loc_6C473C: BranchF loc_6C4787
  loc_6C473F: LitVarI2 var_C0, 8
  loc_6C4744: FLdI2 var_8E
  loc_6C4747: CI4UI1
  loc_6C4748: ILdRf var_8C
  loc_6C474B: ImpAdCallI2 Mid$(, , )
  loc_6C4750: FStStrNoPop var_A0
  loc_6C4753: ImpAdCallFPR4 push Val()
  loc_6C4758: LitI2_Byte &H64
  loc_6C475A: CR8I2
  loc_6C475B: DivR8
  loc_6C475C: FLdI2 var_90
  loc_6C475F: CI4UI1
  loc_6C4760: FLdPr Me
  loc_6C4763: MemLdRfVar from_stack_1.global_92
  loc_6C4766: Ary1StFPR4
  loc_6C4767: FFree1Str var_A0
  loc_6C476A: FFree1Var var_C0 = ""
  loc_6C476D: FLdI2 var_8E
  loc_6C4770: LitI2_Byte 8
  loc_6C4772: AddI2
  loc_6C4773: FStI2 var_8E
  loc_6C4776: FLdI2 var_90
  loc_6C4779: LitI2_Byte 1
  loc_6C477B: AddI2
  loc_6C477C: FStI2 var_90
  loc_6C477F: ImpAdCallFPR4 DoEvents()
  loc_6C4784: Branch loc_6C4733
  loc_6C4787: FLdRfVar var_C0
  loc_6C478A: FLdRfVar var_8C
  loc_6C478D: LitI2 3000
  loc_6C4790: PopTmpLdAd2 var_96
  loc_6C4793: LitStr "1"
  loc_6C4796: FStStrCopy var_A0
  loc_6C4799: FLdRfVar var_A0
  loc_6C479C: FLdPr Me
  loc_6C479F: MemLdRfVar from_stack_1.global_118
  loc_6C47A2: FLdRfVar var_94
  loc_6C47A5: ImpAdLdRf MemVar_74C760
  loc_6C47A8: NewIfNullPr Formx
  loc_6C47AB: from_stack_1v = Formx.global_4589716Get()
  loc_6C47B0: FLdPr var_94
  loc_6C47B3:  = Formx.MinButton
  loc_6C47B8: FLdRfVar var_C0
  loc_6C47BB: NotVar var_E0
  loc_6C47BF: CBoolVarNull
  loc_6C47C1: FFree1Str var_A0
  loc_6C47C4: FFree1Ad var_94
  loc_6C47C7: FFree1Var var_C0 = ""
  loc_6C47CA: BranchF loc_6C47F9
  loc_6C47CD: FLdRfVar var_C0
  loc_6C47D0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C47D5: FLdRfVar var_C0
  loc_6C47D8: CBoolVarNull
  loc_6C47DA: FFree1Var var_C0 = ""
  loc_6C47DD: BranchF loc_6C47F6
  loc_6C47E0: ILdRf Me
  loc_6C47E3: FStAdNoPop
  loc_6C47E7: ImpAdLdRf MemVar_7520D4
  loc_6C47EA: NewIfNullPr Global
  loc_6C47ED: Global.Unload from_stack_1
  loc_6C47F2: FFree1Ad var_94
  loc_6C47F5: ExitProcHresult
  loc_6C47F6: Branch loc_6C4787
  loc_6C47F9: FLdRfVar var_8C
  loc_6C47FC: CVarRef
  loc_6C4801: FLdRfVar var_C0
  loc_6C4804: ImpAdCallFPR4  = Trim()
  loc_6C4809: FLdRfVar var_C0
  loc_6C480C: CStrVarTmp
  loc_6C480D: FStStr var_8C
  loc_6C4810: FFree1Var var_C0 = ""
  loc_6C4813: LitI2_Byte 1
  loc_6C4815: FStI2 var_8E
  loc_6C4818: FLdI2 var_8E
  loc_6C481B: CI4UI1
  loc_6C481C: ILdRf var_8C
  loc_6C481F: FnLenStr
  loc_6C4820: LtI4
  loc_6C4821: BranchF loc_6C486C
  loc_6C4824: LitVarI2 var_C0, 8
  loc_6C4829: FLdI2 var_8E
  loc_6C482C: CI4UI1
  loc_6C482D: ILdRf var_8C
  loc_6C4830: ImpAdCallI2 Mid$(, , )
  loc_6C4835: FStStrNoPop var_A0
  loc_6C4838: ImpAdCallFPR4 push Val()
  loc_6C483D: LitI2_Byte &H64
  loc_6C483F: CR8I2
  loc_6C4840: DivR8
  loc_6C4841: FLdI2 var_90
  loc_6C4844: CI4UI1
  loc_6C4845: FLdPr Me
  loc_6C4848: MemLdRfVar from_stack_1.global_92
  loc_6C484B: Ary1StFPR4
  loc_6C484C: FFree1Str var_A0
  loc_6C484F: FFree1Var var_C0 = ""
  loc_6C4852: FLdI2 var_8E
  loc_6C4855: LitI2_Byte 8
  loc_6C4857: AddI2
  loc_6C4858: FStI2 var_8E
  loc_6C485B: FLdI2 var_90
  loc_6C485E: LitI2_Byte 1
  loc_6C4860: AddI2
  loc_6C4861: FStI2 var_90
  loc_6C4864: ImpAdCallFPR4 DoEvents()
  loc_6C4869: Branch loc_6C4818
  loc_6C486C: from_stack_1v = Proc_152_33_5D642C()
  loc_6C4871: LitI2_Byte 0
  loc_6C4873: FLdPr Me
  loc_6C4876: MemStI2 global_120
  loc_6C4879: Branch loc_6C4B93
  loc_6C487C: FLdRfVar var_C0
  loc_6C487F: FLdRfVar var_88
  loc_6C4882: LitStr "1"
  loc_6C4885: FStStrCopy var_A0
  loc_6C4888: FLdRfVar var_A0
  loc_6C488B: FLdPr Me
  loc_6C488E: MemLdRfVar from_stack_1.global_118
  loc_6C4891: FLdRfVar var_94
  loc_6C4894: ImpAdLdRf MemVar_74C760
  loc_6C4897: NewIfNullPr Formx
  loc_6C489A: from_stack_1v = Formx.global_4589716Get()
  loc_6C489F: FLdPr var_94
  loc_6C48A2:  = Formx.MaxButton
  loc_6C48A7: FLdRfVar var_C0
  loc_6C48AA: NotVar var_E0
  loc_6C48AE: CBoolVarNull
  loc_6C48B0: FFree1Str var_A0
  loc_6C48B3: FFree1Ad var_94
  loc_6C48B6: FFree1Var var_C0 = ""
  loc_6C48B9: BranchF loc_6C48E8
  loc_6C48BC: FLdRfVar var_C0
  loc_6C48BF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C48C4: FLdRfVar var_C0
  loc_6C48C7: CBoolVarNull
  loc_6C48C9: FFree1Var var_C0 = ""
  loc_6C48CC: BranchF loc_6C48E5
  loc_6C48CF: ILdRf Me
  loc_6C48D2: FStAdNoPop
  loc_6C48D6: ImpAdLdRf MemVar_7520D4
  loc_6C48D9: NewIfNullPr Global
  loc_6C48DC: Global.Unload from_stack_1
  loc_6C48E1: FFree1Ad var_94
  loc_6C48E4: ExitProcHresult
  loc_6C48E5: Branch loc_6C487C
  loc_6C48E8: FLdRfVar var_88
  loc_6C48EB: CVarRef
  loc_6C48F0: FLdRfVar var_C0
  loc_6C48F3: ImpAdCallFPR4  = Trim()
  loc_6C48F8: FLdRfVar var_C0
  loc_6C48FB: CStrVarTmp
  loc_6C48FC: FStStr var_88
  loc_6C48FF: FFree1Var var_C0 = ""
  loc_6C4902: ILdRf var_88
  loc_6C4905: FnLenStr
  loc_6C4906: LitI4 1
  loc_6C490B: GtI4
  loc_6C490C: BranchF loc_6C4B54
  loc_6C490F: LitI2_Byte 0
  loc_6C4911: FLdRfVar var_8E
  loc_6C4914: LitI2 6000
  loc_6C4917: ForI2 var_3A0
  loc_6C491D: LitI2_Byte 0
  loc_6C491F: CR8I2
  loc_6C4920: FLdI2 var_8E
  loc_6C4923: CI4UI1
  loc_6C4924: FLdPr Me
  loc_6C4927: MemLdRfVar from_stack_1.global_68
  loc_6C492A: Ary1StFPR4
  loc_6C492B: ImpAdCallFPR4 DoEvents()
  loc_6C4930: FLdRfVar var_8E
  loc_6C4933: NextI2 var_3A0, loc_6C491D
  loc_6C4938: LitI2_Byte 1
  loc_6C493A: FStI2 var_8E
  loc_6C493D: FLdI2 var_8E
  loc_6C4940: CI4UI1
  loc_6C4941: ILdRf var_88
  loc_6C4944: FnLenStr
  loc_6C4945: LtI4
  loc_6C4946: BranchF loc_6C49AF
  loc_6C4949: LitVarI2 var_E0, 8
  loc_6C494E: FLdI2 var_8E
  loc_6C4951: CI4UI1
  loc_6C4952: ILdRf var_88
  loc_6C4955: ImpAdCallI2 Mid$(, , )
  loc_6C495A: FStStrNoPop var_1E4
  loc_6C495D: ImpAdCallFPR4 push Val()
  loc_6C4962: FStFPR8 var_3A8
  loc_6C4965: LitVarI2 var_C0, 8
  loc_6C496A: FLdI2 var_8E
  loc_6C496D: LitI2_Byte 8
  loc_6C496F: AddI2
  loc_6C4970: CI4UI1
  loc_6C4971: ILdRf var_88
  loc_6C4974: ImpAdCallI2 Mid$(, , )
  loc_6C4979: FStStrNoPop var_A0
  loc_6C497C: ImpAdCallFPR4 push Val()
  loc_6C4981: LitI2_Byte &H64
  loc_6C4983: CR8I2
  loc_6C4984: DivR8
  loc_6C4985: FLdFPR8 var_3A8
  loc_6C4988: CI4R8
  loc_6C4989: FLdPr Me
  loc_6C498C: MemLdRfVar from_stack_1.global_68
  loc_6C498F: Ary1StFPR4
  loc_6C4990: FFreeStr var_A0 = ""
  loc_6C4997: FFreeVar var_C0 = ""
  loc_6C499E: FLdI2 var_8E
  loc_6C49A1: LitI2_Byte &H10
  loc_6C49A3: AddI2
  loc_6C49A4: FStI2 var_8E
  loc_6C49A7: ImpAdCallFPR4 DoEvents()
  loc_6C49AC: Branch loc_6C493D
  loc_6C49AF: FLdRfVar var_C0
  loc_6C49B2: FLdRfVar var_8C
  loc_6C49B5: LitI2_Byte 0
  loc_6C49B7: PopTmpLdAd2 var_96
  loc_6C49BA: LitStr "1"
  loc_6C49BD: FStStrCopy var_A0
  loc_6C49C0: FLdRfVar var_A0
  loc_6C49C3: FLdPr Me
  loc_6C49C6: MemLdRfVar from_stack_1.global_118
  loc_6C49C9: FLdRfVar var_94
  loc_6C49CC: ImpAdLdRf MemVar_74C760
  loc_6C49CF: NewIfNullPr Formx
  loc_6C49D2: from_stack_1v = Formx.global_4589716Get()
  loc_6C49D7: FLdPr var_94
  loc_6C49DA:  = Formx.MinButton
  loc_6C49DF: FLdRfVar var_C0
  loc_6C49E2: NotVar var_E0
  loc_6C49E6: CBoolVarNull
  loc_6C49E8: FFree1Str var_A0
  loc_6C49EB: FFree1Ad var_94
  loc_6C49EE: FFree1Var var_C0 = ""
  loc_6C49F1: BranchF loc_6C4A20
  loc_6C49F4: FLdRfVar var_C0
  loc_6C49F7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C49FC: FLdRfVar var_C0
  loc_6C49FF: CBoolVarNull
  loc_6C4A01: FFree1Var var_C0 = ""
  loc_6C4A04: BranchF loc_6C4A1D
  loc_6C4A07: ILdRf Me
  loc_6C4A0A: FStAdNoPop
  loc_6C4A0E: ImpAdLdRf MemVar_7520D4
  loc_6C4A11: NewIfNullPr Global
  loc_6C4A14: Global.Unload from_stack_1
  loc_6C4A19: FFree1Ad var_94
  loc_6C4A1C: ExitProcHresult
  loc_6C4A1D: Branch loc_6C49AF
  loc_6C4A20: LitI2_Byte 1
  loc_6C4A22: FStI2 var_8E
  loc_6C4A25: LitI2_Byte 0
  loc_6C4A27: FStI2 var_90
  loc_6C4A2A: FLdI2 var_8E
  loc_6C4A2D: CI4UI1
  loc_6C4A2E: ILdRf var_8C
  loc_6C4A31: FnLenStr
  loc_6C4A32: LtI4
  loc_6C4A33: BranchF loc_6C4A7E
  loc_6C4A36: LitVarI2 var_C0, 8
  loc_6C4A3B: FLdI2 var_8E
  loc_6C4A3E: CI4UI1
  loc_6C4A3F: ILdRf var_8C
  loc_6C4A42: ImpAdCallI2 Mid$(, , )
  loc_6C4A47: FStStrNoPop var_A0
  loc_6C4A4A: ImpAdCallFPR4 push Val()
  loc_6C4A4F: LitI2_Byte &H64
  loc_6C4A51: CR8I2
  loc_6C4A52: DivR8
  loc_6C4A53: FLdI2 var_90
  loc_6C4A56: CI4UI1
  loc_6C4A57: FLdPr Me
  loc_6C4A5A: MemLdRfVar from_stack_1.global_92
  loc_6C4A5D: Ary1StFPR4
  loc_6C4A5E: FFree1Str var_A0
  loc_6C4A61: FFree1Var var_C0 = ""
  loc_6C4A64: FLdI2 var_8E
  loc_6C4A67: LitI2_Byte 8
  loc_6C4A69: AddI2
  loc_6C4A6A: FStI2 var_8E
  loc_6C4A6D: FLdI2 var_90
  loc_6C4A70: LitI2_Byte 1
  loc_6C4A72: AddI2
  loc_6C4A73: FStI2 var_90
  loc_6C4A76: ImpAdCallFPR4 DoEvents()
  loc_6C4A7B: Branch loc_6C4A2A
  loc_6C4A7E: FLdRfVar var_C0
  loc_6C4A81: FLdRfVar var_8C
  loc_6C4A84: LitI2 3000
  loc_6C4A87: PopTmpLdAd2 var_96
  loc_6C4A8A: LitStr "1"
  loc_6C4A8D: FStStrCopy var_A0
  loc_6C4A90: FLdRfVar var_A0
  loc_6C4A93: FLdPr Me
  loc_6C4A96: MemLdRfVar from_stack_1.global_118
  loc_6C4A99: FLdRfVar var_94
  loc_6C4A9C: ImpAdLdRf MemVar_74C760
  loc_6C4A9F: NewIfNullPr Formx
  loc_6C4AA2: from_stack_1v = Formx.global_4589716Get()
  loc_6C4AA7: FLdPr var_94
  loc_6C4AAA:  = Formx.MinButton
  loc_6C4AAF: FLdRfVar var_C0
  loc_6C4AB2: NotVar var_E0
  loc_6C4AB6: CBoolVarNull
  loc_6C4AB8: FFree1Str var_A0
  loc_6C4ABB: FFree1Ad var_94
  loc_6C4ABE: FFree1Var var_C0 = ""
  loc_6C4AC1: BranchF loc_6C4AF0
  loc_6C4AC4: FLdRfVar var_C0
  loc_6C4AC7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C4ACC: FLdRfVar var_C0
  loc_6C4ACF: CBoolVarNull
  loc_6C4AD1: FFree1Var var_C0 = ""
  loc_6C4AD4: BranchF loc_6C4AED
  loc_6C4AD7: ILdRf Me
  loc_6C4ADA: FStAdNoPop
  loc_6C4ADE: ImpAdLdRf MemVar_7520D4
  loc_6C4AE1: NewIfNullPr Global
  loc_6C4AE4: Global.Unload from_stack_1
  loc_6C4AE9: FFree1Ad var_94
  loc_6C4AEC: ExitProcHresult
  loc_6C4AED: Branch loc_6C4A7E
  loc_6C4AF0: LitI2_Byte 1
  loc_6C4AF2: FStI2 var_8E
  loc_6C4AF5: FLdI2 var_8E
  loc_6C4AF8: CI4UI1
  loc_6C4AF9: ILdRf var_8C
  loc_6C4AFC: FnLenStr
  loc_6C4AFD: LtI4
  loc_6C4AFE: BranchF loc_6C4B49
  loc_6C4B01: LitVarI2 var_C0, 8
  loc_6C4B06: FLdI2 var_8E
  loc_6C4B09: CI4UI1
  loc_6C4B0A: ILdRf var_8C
  loc_6C4B0D: ImpAdCallI2 Mid$(, , )
  loc_6C4B12: FStStrNoPop var_A0
  loc_6C4B15: ImpAdCallFPR4 push Val()
  loc_6C4B1A: LitI2_Byte &H64
  loc_6C4B1C: CR8I2
  loc_6C4B1D: DivR8
  loc_6C4B1E: FLdI2 var_90
  loc_6C4B21: CI4UI1
  loc_6C4B22: FLdPr Me
  loc_6C4B25: MemLdRfVar from_stack_1.global_92
  loc_6C4B28: Ary1StFPR4
  loc_6C4B29: FFree1Str var_A0
  loc_6C4B2C: FFree1Var var_C0 = ""
  loc_6C4B2F: FLdI2 var_8E
  loc_6C4B32: LitI2_Byte 8
  loc_6C4B34: AddI2
  loc_6C4B35: FStI2 var_8E
  loc_6C4B38: FLdI2 var_90
  loc_6C4B3B: LitI2_Byte 1
  loc_6C4B3D: AddI2
  loc_6C4B3E: FStI2 var_90
  loc_6C4B41: ImpAdCallFPR4 DoEvents()
  loc_6C4B46: Branch loc_6C4AF5
  loc_6C4B49: LitI2_Byte &HFF
  loc_6C4B4B: FLdPr Me
  loc_6C4B4E: MemStI2 global_120
  loc_6C4B51: Branch loc_6C4B93
  loc_6C4B54: LitI2_Byte 0
  loc_6C4B56: FLdRfVar var_8E
  loc_6C4B59: LitI2 6000
  loc_6C4B5C: ForI2 var_3AC
  loc_6C4B62: LitI2_Byte 0
  loc_6C4B64: CR8I2
  loc_6C4B65: FLdI2 var_8E
  loc_6C4B68: CI4UI1
  loc_6C4B69: FLdPr Me
  loc_6C4B6C: MemLdRfVar from_stack_1.global_68
  loc_6C4B6F: Ary1StFPR4
  loc_6C4B70: LitI2_Byte 0
  loc_6C4B72: CR8I2
  loc_6C4B73: FLdI2 var_8E
  loc_6C4B76: CI4UI1
  loc_6C4B77: FLdPr Me
  loc_6C4B7A: MemLdRfVar from_stack_1.global_92
  loc_6C4B7D: Ary1StFPR4
  loc_6C4B7E: ImpAdCallFPR4 DoEvents()
  loc_6C4B83: FLdRfVar var_8E
  loc_6C4B86: NextI2 var_3AC, loc_6C4B62
  loc_6C4B8B: LitI2_Byte &HFF
  loc_6C4B8D: FLdPr Me
  loc_6C4B90: MemStI2 global_120
  loc_6C4B93: Call VScroll_Change()
  loc_6C4B98: LitI2_Byte 0
  loc_6C4B9A: FLdPrThis
  loc_6C4B9B: VCallAd Control_ID_txtLeyenda
  loc_6C4B9E: FStAdFunc var_94
  loc_6C4BA1: FLdPr var_94
  loc_6C4BA4: Me.Visible = from_stack_1b
  loc_6C4BA9: FFree1Ad var_94
  loc_6C4BAC: LitI2_Byte 0
  loc_6C4BAE: FLdRfVar var_8E
  loc_6C4BB1: LitI2_Byte &HA
  loc_6C4BB3: ForI2 var_3B0
  loc_6C4BB9: FLdPr Me
  loc_6C4BBC: MemLdI2 global_120
  loc_6C4BBF: NotI4
  loc_6C4BC0: FLdRfVar var_3B4
  loc_6C4BC3: FLdI2 var_8E
  loc_6C4BC6: FLdPrThis
  loc_6C4BC7: VCallAd Control_ID_txtLitros
  loc_6C4BCA: FStAdFunc var_94
  loc_6C4BCD: FLdPr var_94
  loc_6C4BD0: Set from_stack_2 = Me(from_stack_1)
  loc_6C4BD5: FLdPr var_3B4
  loc_6C4BD8: Me.Locked = from_stack_1b
  loc_6C4BDD: FFreeAd var_94 = ""
  loc_6C4BE4: FLdRfVar var_8E
  loc_6C4BE7: NextI2 var_3B0, loc_6C4BB9
  loc_6C4BEC: LitI2_Byte &HFF
  loc_6C4BEE: PopTmpLdAd2 var_96
  loc_6C4BF1: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6C4BF6: LitI2_Byte 0
  loc_6C4BF8: FLdPr Me
  loc_6C4BFB: MemStI2 global_116
  loc_6C4BFE: LitI2_Byte 0
  loc_6C4C00: FLdPrThis
  loc_6C4C01: VCallAd Control_ID_GrabarTabla
  loc_6C4C04: FStAdFunc var_94
  loc_6C4C07: FLdPr var_94
  loc_6C4C0A: Me.Enabled = from_stack_1b
  loc_6C4C0F: FFree1Ad var_94
  loc_6C4C12: ImpAdCallFPR4 DoEvents()
  loc_6C4C17: LitI2_Byte 0
  loc_6C4C19: FLdPr Me
  loc_6C4C1C: MemStI2 global_134
  loc_6C4C1F: ExitProcHresult
End Sub

Private Sub GrabarTabla_Click() '640E90
  'Data Table: 443E20
  loc_640CAC: FLdRfVar var_1D4
  loc_640CAF: LitVar_Missing var_1D0
  loc_640CB2: LitVar_Missing var_1B0
  loc_640CB5: LitVar_Missing var_190
  loc_640CB8: LitVar_Missing var_170
  loc_640CBB: LitVar_Missing var_150
  loc_640CBE: LitVar_Missing var_130
  loc_640CC1: LitVar_Missing var_110
  loc_640CC4: LitVar_Missing var_F0
  loc_640CC7: LitVar_Missing var_D0
  loc_640CCA: LitVar_Missing var_B0
  loc_640CCD: LitStr "Desea guardar los datos ingresados del tanque:"
  loc_640CD0: FStStrCopy var_90
  loc_640CD3: FLdRfVar var_90
  loc_640CD6: LitI4 &H1B
  loc_640CDB: PopTmpLdAdStr var_8C
  loc_640CDE: LitI2_Byte &H3C
  loc_640CE0: PopTmpLdAd2 var_86
  loc_640CE3: ImpAdLdRf MemVar_74C7D0
  loc_640CE6: NewIfNullPr clsMsg
  loc_640CE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640CEE: FLdRfVar var_32C
  loc_640CF1: LitVar_Missing var_328
  loc_640CF4: LitVar_Missing var_308
  loc_640CF7: LitVar_Missing var_2E8
  loc_640CFA: LitVar_Missing var_2C8
  loc_640CFD: LitVar_Missing var_2A8
  loc_640D00: LitVar_Missing var_288
  loc_640D03: LitVar_Missing var_268
  loc_640D06: LitVar_Missing var_248
  loc_640D09: LitVar_Missing var_228
  loc_640D0C: LitVar_Missing var_208
  loc_640D0F: LitStr "Guardar datos"
  loc_640D12: FStStrCopy var_1E8
  loc_640D15: FLdRfVar var_1E8
  loc_640D18: LitI4 &H1C
  loc_640D1D: PopTmpLdAdStr var_1E4
  loc_640D20: LitI2_Byte &H3C
  loc_640D22: PopTmpLdAd2 var_1DE
  loc_640D25: ImpAdLdRf MemVar_74C7D0
  loc_640D28: NewIfNullPr clsMsg
  loc_640D2B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640D30: LitVar_Missing var_38C
  loc_640D33: LitVar_Missing var_36C
  loc_640D36: FLdZeroAd var_32C
  loc_640D39: CVarStr var_34C
  loc_640D3C: LitI4 &H24
  loc_640D41: ILdRf var_1D4
  loc_640D44: LitStr " "
  loc_640D47: ConcatStr
  loc_640D48: FStStrNoPop var_1D8
  loc_640D4B: FLdPr Me
  loc_640D4E: MemLdI2 global_118
  loc_640D51: CStrUI1
  loc_640D53: FStStrNoPop var_1DC
  loc_640D56: ConcatStr
  loc_640D57: CVarStr var_33C
  loc_640D5A: ImpAdCallI2 MsgBox(, , , , )
  loc_640D5F: LitI4 6
  loc_640D64: EqI4
  loc_640D65: FFreeStr var_90 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_640D72: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_33C = "": var_34C = "": var_36C = ""
  loc_640DA5: BranchF loc_640DB3
  loc_640DA8: FLdPr Me
  loc_640DAB: MemLdRfVar from_stack_1.global_118
  loc_640DAE: from_stack_2v = Proc_152_29_65D200(from_stack_1v)
  loc_640DB3: LitI2_Byte 0
  loc_640DB5: FLdPrThis
  loc_640DB6: VCallAd Control_ID_GrabarTabla
  loc_640DB9: FStAdFunc var_390
  loc_640DBC: FLdPr var_390
  loc_640DBF: Me.Enabled = from_stack_1b
  loc_640DC4: FFree1Ad var_390
  loc_640DC7: LitI2_Byte 0
  loc_640DC9: FLdPr Me
  loc_640DCC: MemStI2 global_116
  loc_640DCF: LitI2_Byte 0
  loc_640DD1: PopTmpLdAd2 var_86
  loc_640DD4: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_640DD9: FLdRfVar var_1D4
  loc_640DDC: LitVar_Missing var_1D0
  loc_640DDF: LitVar_Missing var_1B0
  loc_640DE2: LitVar_Missing var_190
  loc_640DE5: LitVar_Missing var_170
  loc_640DE8: LitVar_Missing var_150
  loc_640DEB: LitVar_Missing var_130
  loc_640DEE: LitVar_Missing var_110
  loc_640DF1: LitVar_Missing var_F0
  loc_640DF4: LitVar_Missing var_D0
  loc_640DF7: LitVar_Missing var_B0
  loc_640DFA: LitStr "Recuperando datos, espere un momento..."
  loc_640DFD: FStStrCopy var_90
  loc_640E00: FLdRfVar var_90
  loc_640E03: LitI4 &H1A
  loc_640E08: PopTmpLdAdStr var_8C
  loc_640E0B: LitI2_Byte &H3C
  loc_640E0D: PopTmpLdAd2 var_86
  loc_640E10: ImpAdLdRf MemVar_74C7D0
  loc_640E13: NewIfNullPr clsMsg
  loc_640E16: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640E1B: ILdRf var_1D4
  loc_640E1E: FLdPrThis
  loc_640E1F: VCallAd Control_ID_txtLeyenda
  loc_640E22: FStAdFunc var_390
  loc_640E25: FLdPr var_390
  loc_640E28: Me.Text = from_stack_1
  loc_640E2D: FFreeStr var_90 = ""
  loc_640E34: FFree1Ad var_390
  loc_640E37: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_640E4E: LitI2_Byte &HFF
  loc_640E50: FLdPrThis
  loc_640E51: VCallAd Control_ID_txtLeyenda
  loc_640E54: FStAdFunc var_390
  loc_640E57: FLdPr var_390
  loc_640E5A: Me.Visible = from_stack_1b
  loc_640E5F: FFree1Ad var_390
  loc_640E62: LitI2_Byte &HFF
  loc_640E64: FLdPrThis
  loc_640E65: VCallAd Control_ID_txtLeyenda
  loc_640E68: FStAdFunc var_390
  loc_640E6B: FLdPr var_390
  loc_640E6E: Me.Enabled = from_stack_1b
  loc_640E73: FFree1Ad var_390
  loc_640E76: LitI4 &H7D0
  loc_640E7B: ImpAdCallFPR4 Sleep()
  loc_640E80: SetLastSystemError
  loc_640E81: FLdPr Me
  loc_640E84: MemLdRfVar from_stack_1.global_118
  loc_640E87: from_stack_2v = Proc_152_27_694760(from_stack_1v)
  loc_640E8C: ExitProcHresult
  loc_640E8D: MemStR8 global_10238
End Sub

Private Sub VScroll_Change() '6348F0
  'Data Table: 443E20
  loc_634700: FLdPr Me
  loc_634703: MemLdI2 global_116
  loc_634706: FStI2 var_88
  loc_634709: LitI2_Byte 0
  loc_63470B: FLdRfVar var_86
  loc_63470E: LitI2_Byte &HA
  loc_634710: ForI2 var_8C
  loc_634716: FLdRfVar var_92
  loc_634719: FLdPrThis
  loc_63471A: VCallAd Control_ID_VScroll
  loc_63471D: FStAdFunc var_90
  loc_634720: FLdPr var_90
  loc_634723:  = Me.Value
  loc_634728: FLdI2 var_92
  loc_63472B: FLdI2 var_86
  loc_63472E: AddI2
  loc_63472F: CStrUI1
  loc_634731: FStStrNoPop var_A0
  loc_634734: FLdRfVar var_9C
  loc_634737: FLdI2 var_86
  loc_63473A: FLdPrThis
  loc_63473B: VCallAd Control_ID_txtMilimetros
  loc_63473E: FStAdFunc var_98
  loc_634741: FLdPr var_98
  loc_634744: Set from_stack_2 = Me(from_stack_1)
  loc_634749: FLdPr var_9C
  loc_63474C: Me.Text = from_stack_1
  loc_634751: FFree1Str var_A0
  loc_634754: FFreeAd var_90 = "": var_98 = ""
  loc_63475D: FLdRfVar var_92
  loc_634760: FLdPrThis
  loc_634761: VCallAd Control_ID_VScroll
  loc_634764: FStAdFunc var_90
  loc_634767: FLdPr var_90
  loc_63476A:  = Me.Value
  loc_63476F: FLdI2 var_92
  loc_634772: FLdI2 var_86
  loc_634775: AddI2
  loc_634776: CI4UI1
  loc_634777: FLdPr Me
  loc_63477A: MemLdRfVar from_stack_1.global_68
  loc_63477D: Ary1LdFPR4
  loc_63477E: LitI2_Byte 0
  loc_634780: CR8I2
  loc_634781: GtR4
  loc_634782: FFree1Ad var_90
  loc_634785: BranchF loc_634827
  loc_634788: LitVarI4
  loc_634790: PopAdLdVar
  loc_634791: FLdRfVar var_98
  loc_634794: FLdI2 var_86
  loc_634797: FLdPrThis
  loc_634798: VCallAd Control_ID_SSPanel1
  loc_63479B: FStAdFunc var_90
  loc_63479E: FLdPr var_90
  loc_6347A1: Set from_stack_2 = Me(from_stack_1)
  loc_6347A6: FLdPr var_98
  loc_6347A9: LateIdSt
  loc_6347AE: FFreeAd var_90 = ""
  loc_6347B5: FLdRfVar var_92
  loc_6347B8: FLdPrThis
  loc_6347B9: VCallAd Control_ID_VScroll
  loc_6347BC: FStAdFunc var_90
  loc_6347BF: FLdPr var_90
  loc_6347C2:  = Me.Value
  loc_6347C7: LitI4 1
  loc_6347CC: LitI4 1
  loc_6347D1: LitVarStr var_C0, "#####0.00"
  loc_6347D6: FStVarCopyObj var_D0
  loc_6347D9: FLdRfVar var_D0
  loc_6347DC: FLdI2 var_92
  loc_6347DF: FLdI2 var_86
  loc_6347E2: AddI2
  loc_6347E3: CI4UI1
  loc_6347E4: FLdPr Me
  loc_6347E7: MemLdRfVar from_stack_1.global_68
  loc_6347EA: Ary1LdRf
  loc_6347EB: CVarRef
  loc_6347F0: ImpAdCallI2 Format$(, )
  loc_6347F5: FStStrNoPop var_A0
  loc_6347F8: FLdRfVar var_9C
  loc_6347FB: FLdI2 var_86
  loc_6347FE: FLdPrThis
  loc_6347FF: VCallAd Control_ID_txtLitros
  loc_634802: FStAdFunc var_98
  loc_634805: FLdPr var_98
  loc_634808: Set from_stack_2 = Me(from_stack_1)
  loc_63480D: FLdPr var_9C
  loc_634810: Me.Text = from_stack_1
  loc_634815: FFree1Str var_A0
  loc_634818: FFreeAd var_90 = "": var_98 = ""
  loc_634821: FFree1Var var_D0 = ""
  loc_634824: Branch loc_6348C3
  loc_634827: LitVarI4
  loc_63482F: PopAdLdVar
  loc_634830: FLdRfVar var_98
  loc_634833: FLdI2 var_86
  loc_634836: FLdPrThis
  loc_634837: VCallAd Control_ID_SSPanel1
  loc_63483A: FStAdFunc var_90
  loc_63483D: FLdPr var_90
  loc_634840: Set from_stack_2 = Me(from_stack_1)
  loc_634845: FLdPr var_98
  loc_634848: LateIdSt
  loc_63484D: FFreeAd var_90 = ""
  loc_634854: FLdRfVar var_92
  loc_634857: FLdPrThis
  loc_634858: VCallAd Control_ID_VScroll
  loc_63485B: FStAdFunc var_90
  loc_63485E: FLdPr var_90
  loc_634861:  = Me.Value
  loc_634866: LitI4 1
  loc_63486B: LitI4 1
  loc_634870: LitVarStr var_C0, "#####0.00"
  loc_634875: FStVarCopyObj var_D0
  loc_634878: FLdRfVar var_D0
  loc_63487B: FLdI2 var_92
  loc_63487E: FLdI2 var_86
  loc_634881: AddI2
  loc_634882: CI4UI1
  loc_634883: FLdPr Me
  loc_634886: MemLdRfVar from_stack_1.global_92
  loc_634889: Ary1LdRf
  loc_63488A: CVarRef
  loc_63488F: ImpAdCallI2 Format$(, )
  loc_634894: FStStrNoPop var_A0
  loc_634897: FLdRfVar var_9C
  loc_63489A: FLdI2 var_86
  loc_63489D: FLdPrThis
  loc_63489E: VCallAd Control_ID_txtLitros
  loc_6348A1: FStAdFunc var_98
  loc_6348A4: FLdPr var_98
  loc_6348A7: Set from_stack_2 = Me(from_stack_1)
  loc_6348AC: FLdPr var_9C
  loc_6348AF: Me.Text = from_stack_1
  loc_6348B4: FFree1Str var_A0
  loc_6348B7: FFreeAd var_90 = "": var_98 = ""
  loc_6348C0: FFree1Var var_D0 = ""
  loc_6348C3: FLdRfVar var_86
  loc_6348C6: NextI2 var_8C, loc_634716
  loc_6348CB: FLdI2 var_88
  loc_6348CE: FLdPr Me
  loc_6348D1: MemStI2 global_116
  loc_6348D4: FLdPr Me
  loc_6348D7: MemLdI2 global_116
  loc_6348DA: FLdPrThis
  loc_6348DB: VCallAd Control_ID_GrabarTabla
  loc_6348DE: FStAdFunc var_90
  loc_6348E1: FLdPr var_90
  loc_6348E4: Me.Enabled = from_stack_1b
  loc_6348E9: FFree1Ad var_90
  loc_6348EC: ExitProcHresult
End Sub

Private Sub txtLitros_GotFocus(arg_C) '5F9BB8
  'Data Table: 443E20
  loc_5F9AFC: ILdI2 arg_C
  loc_5F9AFF: FLdPr Me
  loc_5F9B02: MemStI2 global_130
  loc_5F9B05: FLdRfVar var_90
  loc_5F9B08: FLdRfVar var_8C
  loc_5F9B0B: ILdI2 arg_C
  loc_5F9B0E: FLdPrThis
  loc_5F9B0F: VCallAd Control_ID_txtLitros
  loc_5F9B12: FStAdFunc var_88
  loc_5F9B15: FLdPr var_88
  loc_5F9B18: Set from_stack_2 = Me(from_stack_1)
  loc_5F9B1D: FLdPr var_8C
  loc_5F9B20:  = Me.Text
  loc_5F9B25: ILdRf var_90
  loc_5F9B28: ImpAdCallFPR4 push Val()
  loc_5F9B2D: FLdPr Me
  loc_5F9B30: MemStFPR4 global_124
  loc_5F9B33: FFree1Str var_90
  loc_5F9B36: FFreeAd var_88 = ""
  loc_5F9B3D: FLdRfVar var_90
  loc_5F9B40: FLdRfVar var_8C
  loc_5F9B43: ILdI2 arg_C
  loc_5F9B46: FLdPrThis
  loc_5F9B47: VCallAd Control_ID_txtLitros
  loc_5F9B4A: FStAdFunc var_88
  loc_5F9B4D: FLdPr var_88
  loc_5F9B50: Set from_stack_2 = Me(from_stack_1)
  loc_5F9B55: FLdPr var_8C
  loc_5F9B58:  = Me.Text
  loc_5F9B5D: ILdRf var_90
  loc_5F9B60: FnLenStr
  loc_5F9B61: FLdRfVar var_98
  loc_5F9B64: ILdI2 arg_C
  loc_5F9B67: FLdPrThis
  loc_5F9B68: VCallAd Control_ID_txtLitros
  loc_5F9B6B: FStAdFunc var_94
  loc_5F9B6E: FLdPr var_94
  loc_5F9B71: Set from_stack_2 = Me(from_stack_1)
  loc_5F9B76: FLdPr var_98
  loc_5F9B79: Me.SelLength = from_stack_1
  loc_5F9B7E: FFree1Str var_90
  loc_5F9B81: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5F9B8C: LitI4 0
  loc_5F9B91: FLdRfVar var_8C
  loc_5F9B94: ILdI2 arg_C
  loc_5F9B97: FLdPrThis
  loc_5F9B98: VCallAd Control_ID_txtLitros
  loc_5F9B9B: FStAdFunc var_88
  loc_5F9B9E: FLdPr var_88
  loc_5F9BA1: Set from_stack_2 = Me(from_stack_1)
  loc_5F9BA6: FLdPr var_8C
  loc_5F9BA9: Me.SelStart = from_stack_1
  loc_5F9BAE: FFreeAd var_88 = ""
  loc_5F9BB5: ExitProcHresult
End Sub

Private Sub txtLitros_LostFocus() '6153FC
  'Data Table: 443E20
  loc_6152E0: FLdRfVar var_8A
  loc_6152E3: FLdPrThis
  loc_6152E4: VCallAd Control_ID_VScroll
  loc_6152E7: FStAdFunc var_88
  loc_6152EA: FLdPr var_88
  loc_6152ED:  = Me.Value
  loc_6152F2: FLdI2 var_8A
  loc_6152F5: FLdPr Me
  loc_6152F8: MemLdI2 global_130
  loc_6152FB: AddI2
  loc_6152FC: CI4UI1
  loc_6152FD: FLdPr Me
  loc_615300: MemLdRfVar from_stack_1.global_68
  loc_615303: Ary1LdFPR4
  loc_615304: LitI2_Byte 0
  loc_615306: CR8I2
  loc_615307: GtR4
  loc_615308: FFree1Ad var_88
  loc_61530B: BranchF loc_615386
  loc_61530E: FLdRfVar var_8A
  loc_615311: FLdPrThis
  loc_615312: VCallAd Control_ID_VScroll
  loc_615315: FStAdFunc var_88
  loc_615318: FLdPr var_88
  loc_61531B:  = Me.Value
  loc_615320: LitI4 1
  loc_615325: LitI4 1
  loc_61532A: LitVarStr var_AC, "#####0.00"
  loc_61532F: FStVarCopyObj var_BC
  loc_615332: FLdRfVar var_BC
  loc_615335: FLdI2 var_8A
  loc_615338: FLdPr Me
  loc_61533B: MemLdI2 global_130
  loc_61533E: AddI2
  loc_61533F: CI4UI1
  loc_615340: FLdPr Me
  loc_615343: MemLdRfVar from_stack_1.global_68
  loc_615346: Ary1LdRf
  loc_615347: CVarRef
  loc_61534C: ImpAdCallI2 Format$(, )
  loc_615351: FStStrNoPop var_C8
  loc_615354: FLdRfVar var_C4
  loc_615357: FLdPr Me
  loc_61535A: MemLdI2 global_130
  loc_61535D: FLdPrThis
  loc_61535E: VCallAd Control_ID_txtLitros
  loc_615361: FStAdFunc var_C0
  loc_615364: FLdPr var_C0
  loc_615367: Set from_stack_2 = Me(from_stack_1)
  loc_61536C: FLdPr var_C4
  loc_61536F: Me.Text = from_stack_1
  loc_615374: FFree1Str var_C8
  loc_615377: FFreeAd var_88 = "": var_C0 = ""
  loc_615380: FFree1Var var_BC = ""
  loc_615383: Branch loc_6153FB
  loc_615386: FLdRfVar var_8A
  loc_615389: FLdPrThis
  loc_61538A: VCallAd Control_ID_VScroll
  loc_61538D: FStAdFunc var_88
  loc_615390: FLdPr var_88
  loc_615393:  = Me.Value
  loc_615398: LitI4 1
  loc_61539D: LitI4 1
  loc_6153A2: LitVarStr var_AC, "#####0.00"
  loc_6153A7: FStVarCopyObj var_BC
  loc_6153AA: FLdRfVar var_BC
  loc_6153AD: FLdI2 var_8A
  loc_6153B0: FLdPr Me
  loc_6153B3: MemLdI2 global_130
  loc_6153B6: AddI2
  loc_6153B7: CI4UI1
  loc_6153B8: FLdPr Me
  loc_6153BB: MemLdRfVar from_stack_1.global_92
  loc_6153BE: Ary1LdRf
  loc_6153BF: CVarRef
  loc_6153C4: ImpAdCallI2 Format$(, )
  loc_6153C9: FStStrNoPop var_C8
  loc_6153CC: FLdRfVar var_C4
  loc_6153CF: FLdPr Me
  loc_6153D2: MemLdI2 global_130
  loc_6153D5: FLdPrThis
  loc_6153D6: VCallAd Control_ID_txtLitros
  loc_6153D9: FStAdFunc var_C0
  loc_6153DC: FLdPr var_C0
  loc_6153DF: Set from_stack_2 = Me(from_stack_1)
  loc_6153E4: FLdPr var_C4
  loc_6153E7: Me.Text = from_stack_1
  loc_6153EC: FFree1Str var_C8
  loc_6153EF: FFreeAd var_88 = "": var_C0 = ""
  loc_6153F8: FFree1Var var_BC = ""
  loc_6153FB: ExitProcHresult
End Sub

Private Sub cmdImportar_Click() '5D658C
  'Data Table: 443E20
  loc_5D6564: LitVar_Missing var_A4
  loc_5D6567: PopAdLdVar
  loc_5D6568: LitVarI4
  loc_5D6570: PopAdLdVar
  loc_5D6571: ImpAdLdRf MemVar_74DA40
  loc_5D6574: NewIfNullPr frmImportTables
  loc_5D6577: frmImportTables.Show from_stack_1, from_stack_2
  loc_5D657C: LitI2_Byte 0
  loc_5D657E: FLdPr Me
  loc_5D6581: MemStI2 global_116
  loc_5D6584: Call lstTanques_Click()
  loc_5D6589: ExitProcHresult
End Sub

Private Sub cmdExportar_Click() '6BA3A8
  'Data Table: 443E20
  loc_6B9BD0: FLdRfVar var_1EC
  loc_6B9BD3: LitVar_Missing var_1E8
  loc_6B9BD6: LitVar_Missing var_1C8
  loc_6B9BD9: LitVar_Missing var_1A8
  loc_6B9BDC: LitVar_Missing var_188
  loc_6B9BDF: LitVar_Missing var_168
  loc_6B9BE2: LitVar_Missing var_148
  loc_6B9BE5: LitVar_Missing var_128
  loc_6B9BE8: LitVar_Missing var_108
  loc_6B9BEB: LitVar_Missing var_E8
  loc_6B9BEE: LitVar_Missing var_C8
  loc_6B9BF1: LitStr "Esta seguro de exportar las tablas a un diskette?"
  loc_6B9BF4: FStStrCopy var_A8
  loc_6B9BF7: FLdRfVar var_A8
  loc_6B9BFA: LitI4 &H15
  loc_6B9BFF: PopTmpLdAdStr var_A4
  loc_6B9C02: LitI2_Byte &H3C
  loc_6B9C04: PopTmpLdAd2 var_9E
  loc_6B9C07: ImpAdLdRf MemVar_74C7D0
  loc_6B9C0A: NewIfNullPr clsMsg
  loc_6B9C0D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B9C12: LitVar_Missing var_25C
  loc_6B9C15: LitVar_Missing var_23C
  loc_6B9C18: LitVar_Missing var_21C
  loc_6B9C1B: LitI4 &H24
  loc_6B9C20: FLdZeroAd var_1EC
  loc_6B9C23: CVarStr var_1FC
  loc_6B9C26: ImpAdCallI2 MsgBox(, , , , )
  loc_6B9C2B: LitI4 7
  loc_6B9C30: EqI4
  loc_6B9C31: FFree1Str var_A8
  loc_6B9C34: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1FC = "": var_21C = "": var_23C = ""
  loc_6B9C53: BranchF loc_6B9C59
  loc_6B9C58: ExitProcHresult
  loc_6B9C5D: LitI2_Byte &HFF
  loc_6B9C5F: FLdPr Me
  loc_6B9C62: MemStI2 global_134
  loc_6B9C67: LitI2_Byte 0
  loc_6B9C69: PopTmpLdAd2 var_9E
  loc_6B9C6C: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6B9C73: FLdRfVar var_1EC
  loc_6B9C76: LitVar_Missing var_1E8
  loc_6B9C79: LitVar_Missing var_1C8
  loc_6B9C7C: LitVar_Missing var_1A8
  loc_6B9C7F: LitVar_Missing var_188
  loc_6B9C82: LitVar_Missing var_168
  loc_6B9C85: LitVar_Missing var_148
  loc_6B9C88: LitVar_Missing var_128
  loc_6B9C8B: LitVar_Missing var_108
  loc_6B9C8E: LitVar_Missing var_E8
  loc_6B9C91: LitVar_Missing var_C8
  loc_6B9C94: LitStr "Exportando tablas, espere un momento por favor..."
  loc_6B9C97: FStStrCopy var_A8
  loc_6B9C9A: FLdRfVar var_A8
  loc_6B9C9D: LitI4 &H16
  loc_6B9CA2: PopTmpLdAdStr var_A4
  loc_6B9CA5: LitI2_Byte &H3C
  loc_6B9CA7: PopTmpLdAd2 var_9E
  loc_6B9CAA: ImpAdLdRf MemVar_74C7D0
  loc_6B9CAD: NewIfNullPr clsMsg
  loc_6B9CB0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B9CB5: ILdRf var_1EC
  loc_6B9CB8: FLdPrThis
  loc_6B9CB9: VCallAd Control_ID_txtLeyenda
  loc_6B9CBC: FStAdFunc var_260
  loc_6B9CBF: FLdPr var_260
  loc_6B9CC2: Me.Text = from_stack_1
  loc_6B9CC7: FFreeStr var_A8 = ""
  loc_6B9CCE: FFree1Ad var_260
  loc_6B9CD1: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_6B9CEA: LitI2_Byte &HFF
  loc_6B9CEC: FLdPrThis
  loc_6B9CED: VCallAd Control_ID_txtLeyenda
  loc_6B9CF0: FStAdFunc var_260
  loc_6B9CF3: FLdPr var_260
  loc_6B9CF6: Me.Visible = from_stack_1b
  loc_6B9CFB: FFree1Ad var_260
  loc_6B9D00: LitI2_Byte &HFF
  loc_6B9D02: FLdPrThis
  loc_6B9D03: VCallAd Control_ID_txtLeyenda
  loc_6B9D06: FStAdFunc var_260
  loc_6B9D09: FLdPr var_260
  loc_6B9D0C: Me.Enabled = from_stack_1b
  loc_6B9D11: FFree1Ad var_260
  loc_6B9D16: ImpAdCallFPR4 DoEvents()
  loc_6B9D1D: OnErrorGoto loc_6BA200
  loc_6B9D22: LitI4 0
  loc_6B9D27: LitVarStr var_B8, "A:\INCH.TNK"
  loc_6B9D2C: FStVarCopyObj var_C8
  loc_6B9D2F: FLdRfVar var_C8
  loc_6B9D32: ImpAdCallI2 push Dir(, )
  loc_6B9D37: FStStrNoPop var_A8
  loc_6B9D3A: LitStr vbNullString
  loc_6B9D3D: NeStr
  loc_6B9D3F: FFree1Str var_A8
  loc_6B9D42: FFree1Var var_C8 = ""
  loc_6B9D45: BranchF loc_6B9D5D
  loc_6B9D4A: LitVarStr var_B8, "A:\INCH.TNK"
  loc_6B9D4F: FStVarCopyObj var_C8
  loc_6B9D52: FLdRfVar var_C8
  loc_6B9D55: ImpAdCallFPR4 Kill 
  loc_6B9D5A: FFree1Var var_C8 = ""
  loc_6B9D5F: LitVar_Missing var_C8
  loc_6B9D62: ImpAdCallI2 FreeFile()
  loc_6B9D67: FStI2 var_96
  loc_6B9D6A: FFree1Var var_C8 = ""
  loc_6B9D6F: LitStr "A:\INCH.TNK"
  loc_6B9D72: FLdI2 var_96
  loc_6B9D75: LitI2_Byte &HFF
  loc_6B9D77: OpenFile
  loc_6B9D7D: LitI2_Byte 1
  loc_6B9D7F: FLdRfVar var_8A
  loc_6B9D82: LitI2_Byte &H10
  loc_6B9D84: ForI2 var_264
  loc_6B9D8C: FLdRfVar var_C8
  loc_6B9D8F: FLdRfVar var_88
  loc_6B9D92: LitStr "0"
  loc_6B9D95: FStStrCopy var_A8
  loc_6B9D98: FLdRfVar var_A8
  loc_6B9D9B: FLdRfVar var_8A
  loc_6B9D9E: FLdRfVar var_260
  loc_6B9DA1: ImpAdLdRf MemVar_74C760
  loc_6B9DA4: NewIfNullPr Formx
  loc_6B9DA7: from_stack_1v = Formx.global_4589716Get()
  loc_6B9DAC: FLdPr var_260
  loc_6B9DAF:  = Formx.MaxButton
  loc_6B9DB4: FLdRfVar var_C8
  loc_6B9DB7: NotVar var_E8
  loc_6B9DBB: CBoolVarNull
  loc_6B9DBD: FFree1Str var_A8
  loc_6B9DC0: FFree1Ad var_260
  loc_6B9DC3: FFree1Var var_C8 = ""
  loc_6B9DC6: BranchF loc_6B9E39
  loc_6B9DCB: FLdRfVar var_C8
  loc_6B9DCE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B9DD3: FLdRfVar var_C8
  loc_6B9DD6: CBoolVarNull
  loc_6B9DD8: FFree1Var var_C8 = ""
  loc_6B9DDB: BranchF loc_6B9E32
  loc_6B9DE0: On Error Resume Next
  loc_6B9DE5: FLdI2 var_96
  loc_6B9DE8: Close
  loc_6B9DEC: On Error GoTo 0
  loc_6B9DF1: LitI2_Byte 0
  loc_6B9DF3: FLdPrThis
  loc_6B9DF4: VCallAd Control_ID_txtLeyenda
  loc_6B9DF7: FStAdFunc var_260
  loc_6B9DFA: FLdPr var_260
  loc_6B9DFD: Me.Visible = from_stack_1b
  loc_6B9E02: FFree1Ad var_260
  loc_6B9E07: LitI2_Byte &HFF
  loc_6B9E09: PopTmpLdAd2 var_9E
  loc_6B9E0C: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6B9E13: ImpAdCallFPR4 DoEvents()
  loc_6B9E1A: ILdRf Me
  loc_6B9E1D: FStAdNoPop
  loc_6B9E21: ImpAdLdRf MemVar_7520D4
  loc_6B9E24: NewIfNullPr Global
  loc_6B9E27: Global.Unload from_stack_1
  loc_6B9E2C: FFree1Ad var_260
  loc_6B9E31: ExitProcHresult
  loc_6B9E36: Branch loc_6B9D8A
  loc_6B9E3B: FLdRfVar var_88
  loc_6B9E3E: CVarRef
  loc_6B9E43: FLdRfVar var_C8
  loc_6B9E46: ImpAdCallFPR4  = Trim()
  loc_6B9E4B: FLdRfVar var_C8
  loc_6B9E4E: CStrVarTmp
  loc_6B9E4F: FStStr var_88
  loc_6B9E52: FFree1Var var_C8 = ""
  loc_6B9E57: LitI4 1
  loc_6B9E5C: FStR4 var_94
  loc_6B9E61: LitI4 1
  loc_6B9E66: FLdRfVar var_90
  loc_6B9E69: LitI4 &H668
  loc_6B9E6E: ForI4 var_26C
  loc_6B9E76: ILdRf var_88
  loc_6B9E79: FnLenStr
  loc_6B9E7A: FLdI2 var_8A
  loc_6B9E7D: CI4UI1
  loc_6B9E7E: GtI4
  loc_6B9E7F: BranchF loc_6B9ED3
  loc_6B9E84: LitVarI2 var_C8, 8
  loc_6B9E89: ILdRf var_94
  loc_6B9E8C: ILdRf var_88
  loc_6B9E8F: ImpAdCallI2 Mid$(, , )
  loc_6B9E94: FStStrNoPop var_A8
  loc_6B9E97: ImpAdCallFPR4 push Val()
  loc_6B9E9C: CI2R8
  loc_6B9E9D: FStI2 var_98
  loc_6B9EA0: FFree1Str var_A8
  loc_6B9EA3: FFree1Var var_C8 = ""
  loc_6B9EA8: LitVarI2 var_C8, 8
  loc_6B9EAD: ILdRf var_94
  loc_6B9EB0: LitI4 8
  loc_6B9EB5: AddI4
  loc_6B9EB6: ILdRf var_88
  loc_6B9EB9: ImpAdCallI2 Mid$(, , )
  loc_6B9EBE: FStStrNoPop var_A8
  loc_6B9EC1: ImpAdCallFPR4 push Val()
  loc_6B9EC6: CI4R8
  loc_6B9EC7: FStR4 var_9C
  loc_6B9ECA: FFree1Str var_A8
  loc_6B9ECD: FFree1Var var_C8 = ""
  loc_6B9ED0: Branch loc_6B9EE6
  loc_6B9ED7: LitI2_Byte 0
  loc_6B9ED9: FStI2 var_98
  loc_6B9EDE: LitI4 0
  loc_6B9EE3: FStR4 var_9C
  loc_6B9EEA: FLdI2 var_96
  loc_6B9EED: FLdRfVar var_98
  loc_6B9EF0: LitI4 2
  loc_6B9EF5: PutRec3
  loc_6B9EF9: FLdI2 var_96
  loc_6B9EFC: FLdRfVar var_9C
  loc_6B9EFF: LitI4 4
  loc_6B9F04: PutRec3
  loc_6B9F08: ILdRf var_94
  loc_6B9F0B: LitI4 &H10
  loc_6B9F10: AddI4
  loc_6B9F11: FStR4 var_94
  loc_6B9F16: ImpAdCallFPR4 DoEvents()
  loc_6B9F1D: FLdRfVar var_90
  loc_6B9F20: NextI4 var_26C, loc_6B9E74
  loc_6B9F27: FLdRfVar var_8A
  loc_6B9F2A: NextI2 var_264, loc_6B9D8A
  loc_6B9F31: FLdI2 var_96
  loc_6B9F34: Close
  loc_6B9F38: LitI4 0
  loc_6B9F3D: LitVarStr var_B8, "A:\TABLES.TNK"
  loc_6B9F42: FStVarCopyObj var_C8
  loc_6B9F45: FLdRfVar var_C8
  loc_6B9F48: ImpAdCallI2 push Dir(, )
  loc_6B9F4D: FStStrNoPop var_A8
  loc_6B9F50: LitStr vbNullString
  loc_6B9F53: NeStr
  loc_6B9F55: FFree1Str var_A8
  loc_6B9F58: FFree1Var var_C8 = ""
  loc_6B9F5B: BranchF loc_6B9F73
  loc_6B9F60: LitVarStr var_B8, "A:\TABLES.TNK"
  loc_6B9F65: FStVarCopyObj var_C8
  loc_6B9F68: FLdRfVar var_C8
  loc_6B9F6B: ImpAdCallFPR4 Kill 
  loc_6B9F70: FFree1Var var_C8 = ""
  loc_6B9F75: LitVar_Missing var_C8
  loc_6B9F78: ImpAdCallI2 FreeFile()
  loc_6B9F7D: FStI2 var_96
  loc_6B9F80: FFree1Var var_C8 = ""
  loc_6B9F85: LitStr "A:\TABLES.TNK"
  loc_6B9F88: FLdI2 var_96
  loc_6B9F8B: LitI2_Byte &HFF
  loc_6B9F8D: OpenFile
  loc_6B9F93: LitI2_Byte 1
  loc_6B9F95: FLdRfVar var_8A
  loc_6B9F98: LitI2_Byte &H10
  loc_6B9F9A: ForI2 var_270
  loc_6B9FA2: FLdRfVar var_C8
  loc_6B9FA5: FLdRfVar var_88
  loc_6B9FA8: LitStr "1"
  loc_6B9FAB: FStStrCopy var_A8
  loc_6B9FAE: FLdRfVar var_A8
  loc_6B9FB1: FLdRfVar var_8A
  loc_6B9FB4: FLdRfVar var_260
  loc_6B9FB7: ImpAdLdRf MemVar_74C760
  loc_6B9FBA: NewIfNullPr Formx
  loc_6B9FBD: from_stack_1v = Formx.global_4589716Get()
  loc_6B9FC2: FLdPr var_260
  loc_6B9FC5:  = Formx.MaxButton
  loc_6B9FCA: FLdRfVar var_C8
  loc_6B9FCD: NotVar var_E8
  loc_6B9FD1: CBoolVarNull
  loc_6B9FD3: FFree1Str var_A8
  loc_6B9FD6: FFree1Ad var_260
  loc_6B9FD9: FFree1Var var_C8 = ""
  loc_6B9FDC: BranchF loc_6BA04F
  loc_6B9FE1: FLdRfVar var_C8
  loc_6B9FE4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B9FE9: FLdRfVar var_C8
  loc_6B9FEC: CBoolVarNull
  loc_6B9FEE: FFree1Var var_C8 = ""
  loc_6B9FF1: BranchF loc_6BA048
  loc_6B9FF6: On Error Resume Next
  loc_6B9FFB: FLdI2 var_96
  loc_6B9FFE: Close
  loc_6BA002: On Error GoTo 0
  loc_6BA007: LitI2_Byte 0
  loc_6BA009: FLdPrThis
  loc_6BA00A: VCallAd Control_ID_txtLeyenda
  loc_6BA00D: FStAdFunc var_260
  loc_6BA010: FLdPr var_260
  loc_6BA013: Me.Visible = from_stack_1b
  loc_6BA018: FFree1Ad var_260
  loc_6BA01D: LitI2_Byte &HFF
  loc_6BA01F: PopTmpLdAd2 var_9E
  loc_6BA022: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6BA029: ImpAdCallFPR4 DoEvents()
  loc_6BA030: ILdRf Me
  loc_6BA033: FStAdNoPop
  loc_6BA037: ImpAdLdRf MemVar_7520D4
  loc_6BA03A: NewIfNullPr Global
  loc_6BA03D: Global.Unload from_stack_1
  loc_6BA042: FFree1Ad var_260
  loc_6BA047: ExitProcHresult
  loc_6BA04C: Branch loc_6B9FA0
  loc_6BA051: FLdRfVar var_88
  loc_6BA054: CVarRef
  loc_6BA059: FLdRfVar var_C8
  loc_6BA05C: ImpAdCallFPR4  = Trim()
  loc_6BA061: FLdRfVar var_C8
  loc_6BA064: CStrVarTmp
  loc_6BA065: FStStr var_88
  loc_6BA068: FFree1Var var_C8 = ""
  loc_6BA06D: LitI4 1
  loc_6BA072: FStR4 var_94
  loc_6BA077: LitI4 1
  loc_6BA07C: FLdRfVar var_90
  loc_6BA07F: LitI4 &H668
  loc_6BA084: ForI4 var_278
  loc_6BA08C: ILdRf var_88
  loc_6BA08F: FnLenStr
  loc_6BA090: ILdRf var_94
  loc_6BA093: GtI4
  loc_6BA094: BranchF loc_6BA0E8
  loc_6BA099: LitVarI2 var_C8, 8
  loc_6BA09E: ILdRf var_94
  loc_6BA0A1: ILdRf var_88
  loc_6BA0A4: ImpAdCallI2 Mid$(, , )
  loc_6BA0A9: FStStrNoPop var_A8
  loc_6BA0AC: ImpAdCallFPR4 push Val()
  loc_6BA0B1: CI2R8
  loc_6BA0B2: FStI2 var_98
  loc_6BA0B5: FFree1Str var_A8
  loc_6BA0B8: FFree1Var var_C8 = ""
  loc_6BA0BD: LitVarI2 var_C8, 8
  loc_6BA0C2: ILdRf var_94
  loc_6BA0C5: LitI4 8
  loc_6BA0CA: AddI4
  loc_6BA0CB: ILdRf var_88
  loc_6BA0CE: ImpAdCallI2 Mid$(, , )
  loc_6BA0D3: FStStrNoPop var_A8
  loc_6BA0D6: ImpAdCallFPR4 push Val()
  loc_6BA0DB: CI4R8
  loc_6BA0DC: FStR4 var_9C
  loc_6BA0DF: FFree1Str var_A8
  loc_6BA0E2: FFree1Var var_C8 = ""
  loc_6BA0E5: Branch loc_6BA0FB
  loc_6BA0EC: LitI2_Byte 0
  loc_6BA0EE: FStI2 var_98
  loc_6BA0F3: LitI4 0
  loc_6BA0F8: FStR4 var_9C
  loc_6BA0FF: FLdI2 var_96
  loc_6BA102: FLdRfVar var_98
  loc_6BA105: LitI4 2
  loc_6BA10A: PutRec3
  loc_6BA10E: FLdI2 var_96
  loc_6BA111: FLdRfVar var_9C
  loc_6BA114: LitI4 4
  loc_6BA119: PutRec3
  loc_6BA11D: ILdRf var_94
  loc_6BA120: LitI4 &H10
  loc_6BA125: AddI4
  loc_6BA126: FStR4 var_94
  loc_6BA12B: ImpAdCallFPR4 DoEvents()
  loc_6BA132: FLdRfVar var_90
  loc_6BA135: NextI4 var_278, loc_6BA08A
  loc_6BA13C: FLdRfVar var_8A
  loc_6BA13F: NextI2 var_270, loc_6B9FA0
  loc_6BA146: FLdI2 var_96
  loc_6BA149: Close
  loc_6BA14D: FLdRfVar var_1EC
  loc_6BA150: LitVar_Missing var_1E8
  loc_6BA153: LitVar_Missing var_1C8
  loc_6BA156: LitVar_Missing var_1A8
  loc_6BA159: LitVar_Missing var_188
  loc_6BA15C: LitVar_Missing var_168
  loc_6BA15F: LitVar_Missing var_148
  loc_6BA162: LitVar_Missing var_128
  loc_6BA165: LitVar_Missing var_108
  loc_6BA168: LitVar_Missing var_E8
  loc_6BA16B: LitVar_Missing var_C8
  loc_6BA16E: LitStr "La grabación de tablas se realizo correctamente."
  loc_6BA171: FStStrCopy var_A8
  loc_6BA174: FLdRfVar var_A8
  loc_6BA177: LitI4 &H17
  loc_6BA17C: PopTmpLdAdStr var_A4
  loc_6BA17F: LitI2_Byte &H3C
  loc_6BA181: PopTmpLdAd2 var_9E
  loc_6BA184: ImpAdLdRf MemVar_74C7D0
  loc_6BA187: NewIfNullPr clsMsg
  loc_6BA18A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA18F: LitVar_Missing var_25C
  loc_6BA192: LitVar_Missing var_23C
  loc_6BA195: LitVar_Missing var_21C
  loc_6BA198: LitI4 &H40
  loc_6BA19D: FLdZeroAd var_1EC
  loc_6BA1A0: CVarStr var_1FC
  loc_6BA1A3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BA1A8: FFree1Str var_A8
  loc_6BA1AB: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1FC = "": var_21C = "": var_23C = ""
  loc_6BA1CC: LitI2_Byte 0
  loc_6BA1CE: FLdPrThis
  loc_6BA1CF: VCallAd Control_ID_txtLeyenda
  loc_6BA1D2: FStAdFunc var_260
  loc_6BA1D5: FLdPr var_260
  loc_6BA1D8: Me.Visible = from_stack_1b
  loc_6BA1DD: FFree1Ad var_260
  loc_6BA1E2: LitI2_Byte &HFF
  loc_6BA1E4: PopTmpLdAd2 var_9E
  loc_6BA1E7: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6BA1EE: LitI2_Byte 0
  loc_6BA1F0: FLdPr Me
  loc_6BA1F3: MemStI2 global_134
  loc_6BA1F8: ImpAdCallFPR4 DoEvents()
  loc_6BA1FF: ExitProcHresult
  loc_6BA202: FLdRfVar var_1EC
  loc_6BA205: LitVar_Missing var_1E8
  loc_6BA208: LitVar_Missing var_1C8
  loc_6BA20B: LitVar_Missing var_1A8
  loc_6BA20E: LitVar_Missing var_188
  loc_6BA211: LitVar_Missing var_168
  loc_6BA214: LitVar_Missing var_148
  loc_6BA217: LitVar_Missing var_128
  loc_6BA21A: LitVar_Missing var_108
  loc_6BA21D: LitVar_Missing var_E8
  loc_6BA220: LitVar_Missing var_C8
  loc_6BA223: LitStr "Inserte un diskette en la diskettera."
  loc_6BA226: FStStrCopy var_A8
  loc_6BA229: FLdRfVar var_A8
  loc_6BA22C: LitI4 &H18
  loc_6BA231: PopTmpLdAdStr var_A4
  loc_6BA234: LitI2_Byte &H3C
  loc_6BA236: PopTmpLdAd2 var_9E
  loc_6BA239: ImpAdLdRf MemVar_74C7D0
  loc_6BA23C: NewIfNullPr clsMsg
  loc_6BA23F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA244: LitI4 &HD
  loc_6BA249: ImpAdCallI2 Chr$()
  loc_6BA24E: FStStr var_3DC
  loc_6BA251: FLdRfVar var_280
  loc_6BA254: ImpAdCallI2 Err 'rtcErrObj
  loc_6BA259: FStAdFunc var_260
  loc_6BA25C: FLdPr var_260
  loc_6BA25F:  = Err.Number
  loc_6BA264: FLdRfVar var_294
  loc_6BA267: ImpAdCallI2 Err 'rtcErrObj
  loc_6BA26C: FStAdFunc var_290
  loc_6BA26F: FLdPr var_290
  loc_6BA272:  = Err.Description
  loc_6BA277: FLdRfVar var_378
  loc_6BA27A: LitVar_Missing var_374
  loc_6BA27D: LitVar_Missing var_354
  loc_6BA280: LitVar_Missing var_334
  loc_6BA283: LitVar_Missing var_314
  loc_6BA286: LitVar_Missing var_2F4
  loc_6BA289: LitVar_Missing var_2D4
  loc_6BA28C: LitVar_Missing var_25C
  loc_6BA28F: LitVar_Missing var_23C
  loc_6BA292: LitVar_Missing var_21C
  loc_6BA295: LitVar_Missing var_1FC
  loc_6BA298: LitStr "Grabar Tablas"
  loc_6BA29B: FStStrCopy var_2A4
  loc_6BA29E: FLdRfVar var_2A4
  loc_6BA2A1: LitI4 &H19
  loc_6BA2A6: PopTmpLdAdStr var_2A0
  loc_6BA2A9: LitI2_Byte &H3C
  loc_6BA2AB: PopTmpLdAd2 var_29A
  loc_6BA2AE: ImpAdLdRf MemVar_74C7D0
  loc_6BA2B1: NewIfNullPr clsMsg
  loc_6BA2B4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA2B9: LitVar_Missing var_3D8
  loc_6BA2BC: LitVar_Missing var_3B8
  loc_6BA2BF: FLdZeroAd var_378
  loc_6BA2C2: CVarStr var_398
  loc_6BA2C5: LitI4 &H25
  loc_6BA2CA: ILdRf var_1EC
  loc_6BA2CD: FLdZeroAd var_3DC
  loc_6BA2D0: FStStrNoPop var_27C
  loc_6BA2D3: ConcatStr
  loc_6BA2D4: FStStrNoPop var_284
  loc_6BA2D7: ILdRf var_280
  loc_6BA2DA: CStrI4
  loc_6BA2DC: FStStrNoPop var_288
  loc_6BA2DF: ConcatStr
  loc_6BA2E0: FStStrNoPop var_28C
  loc_6BA2E3: LitStr "  -  "
  loc_6BA2E6: ConcatStr
  loc_6BA2E7: FStStrNoPop var_298
  loc_6BA2EA: ILdRf var_294
  loc_6BA2ED: ConcatStr
  loc_6BA2EE: CVarStr var_388
  loc_6BA2F1: ImpAdCallI2 MsgBox(, , , , )
  loc_6BA2F6: LitI4 4
  loc_6BA2FB: EqI4
  loc_6BA2FC: FFreeStr var_A8 = "": var_1EC = "": var_27C = "": var_284 = "": var_288 = "": var_28C = "": var_298 = "": var_294 = "": var_2A4 = ""
  loc_6BA313: FFreeAd var_260 = ""
  loc_6BA31A: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_388 = "": var_398 = "": var_3B8 = ""
  loc_6BA34D: BranchF loc_6BA359
  loc_6BA352: Resume
  loc_6BA356: Branch loc_6BA3A2
  loc_6BA35D: On Error Resume Next
  loc_6BA362: FLdI2 var_96
  loc_6BA365: Close
  loc_6BA369: On Error GoTo 0
  loc_6BA36E: LitI2_Byte 0
  loc_6BA370: FLdPrThis
  loc_6BA371: VCallAd Control_ID_txtLeyenda
  loc_6BA374: FStAdFunc var_260
  loc_6BA377: FLdPr var_260
  loc_6BA37A: Me.Visible = from_stack_1b
  loc_6BA37F: FFree1Ad var_260
  loc_6BA384: LitI2_Byte &HFF
  loc_6BA386: PopTmpLdAd2 var_9E
  loc_6BA389: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_6BA390: ImpAdCallFPR4 DoEvents()
  loc_6BA397: LitI2_Byte 0
  loc_6BA399: FLdPr Me
  loc_6BA39C: MemStI2 global_134
  loc_6BA3A1: ExitProcHresult
  loc_6BA3A6: ExitProcHresult
End Sub

Private Sub cmdCopiarTablas_Click() '629BF0
  'Data Table: 443E20
  loc_629ABC: FLdPr Me
  loc_629ABF: MemLdI2 global_116
  loc_629AC2: FLdPr Me
  loc_629AC5: MemLdI2 global_120
  loc_629AC8: AndI4
  loc_629AC9: BranchF loc_629BD2
  loc_629ACC: FLdRfVar var_1D4
  loc_629ACF: LitVar_Missing var_1D0
  loc_629AD2: LitVar_Missing var_1B0
  loc_629AD5: LitVar_Missing var_190
  loc_629AD8: LitVar_Missing var_170
  loc_629ADB: LitVar_Missing var_150
  loc_629ADE: LitVar_Missing var_130
  loc_629AE1: LitVar_Missing var_110
  loc_629AE4: LitVar_Missing var_F0
  loc_629AE7: LitVar_Missing var_D0
  loc_629AEA: LitVar_Missing var_B0
  loc_629AED: LitStr "Desea guardar los datos ingresados ?"
  loc_629AF0: FStStrCopy var_90
  loc_629AF3: FLdRfVar var_90
  loc_629AF6: LitI4 &H10
  loc_629AFB: PopTmpLdAdStr var_8C
  loc_629AFE: LitI2_Byte &H3C
  loc_629B00: PopTmpLdAd2 var_86
  loc_629B03: ImpAdLdRf MemVar_74C7D0
  loc_629B06: NewIfNullPr clsMsg
  loc_629B09: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_629B0E: FLdRfVar var_324
  loc_629B11: LitVar_Missing var_320
  loc_629B14: LitVar_Missing var_300
  loc_629B17: LitVar_Missing var_2E0
  loc_629B1A: LitVar_Missing var_2C0
  loc_629B1D: LitVar_Missing var_2A0
  loc_629B20: LitVar_Missing var_280
  loc_629B23: LitVar_Missing var_260
  loc_629B26: LitVar_Missing var_240
  loc_629B29: LitVar_Missing var_220
  loc_629B2C: LitVar_Missing var_200
  loc_629B2F: LitStr "Guardar datos"
  loc_629B32: FStStrCopy var_1E0
  loc_629B35: FLdRfVar var_1E0
  loc_629B38: LitI4 &H11
  loc_629B3D: PopTmpLdAdStr var_1DC
  loc_629B40: LitI2_Byte &H3C
  loc_629B42: PopTmpLdAd2 var_1D6
  loc_629B45: ImpAdLdRf MemVar_74C7D0
  loc_629B48: NewIfNullPr clsMsg
  loc_629B4B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_629B50: LitVar_Missing var_384
  loc_629B53: LitVar_Missing var_364
  loc_629B56: FLdZeroAd var_324
  loc_629B59: CVarStr var_344
  loc_629B5C: LitI4 &H24
  loc_629B61: FLdZeroAd var_1D4
  loc_629B64: CVarStr var_334
  loc_629B67: ImpAdCallI2 MsgBox(, , , , )
  loc_629B6C: LitI4 6
  loc_629B71: EqI4
  loc_629B72: FFreeStr var_90 = ""
  loc_629B79: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_334 = "": var_344 = "": var_364 = ""
  loc_629BAC: BranchF loc_629BCA
  loc_629BAF: LitI2_Byte &HFF
  loc_629BB1: FLdPr Me
  loc_629BB4: MemStI2 global_134
  loc_629BB7: FLdPr Me
  loc_629BBA: MemLdRfVar from_stack_1.global_118
  loc_629BBD: from_stack_2v = Proc_152_29_65D200(from_stack_1v)
  loc_629BC2: LitI2_Byte 0
  loc_629BC4: FLdPr Me
  loc_629BC7: MemStI2 global_134
  loc_629BCA: LitI2_Byte 0
  loc_629BCC: FLdPr Me
  loc_629BCF: MemStI2 global_116
  loc_629BD2: LitVar_Missing var_C0
  loc_629BD5: PopAdLdVar
  loc_629BD6: LitVarI4
  loc_629BDE: PopAdLdVar
  loc_629BDF: ImpAdLdRf MemVar_74D8D8
  loc_629BE2: NewIfNullPr frmCopiarTablas
  loc_629BE5: frmCopiarTablas.Show from_stack_1, from_stack_2
  loc_629BEA: Call lstTanques_Click()
  loc_629BEF: ExitProcHresult
End Sub

Private Sub ImprimirTabla_Click() '6CD940
  'Data Table: 443E20
  loc_6CD0B4: LitVar_Missing var_B0
  loc_6CD0B7: PopAdLdVar
  loc_6CD0B8: LitVarI4
  loc_6CD0C0: PopAdLdVar
  loc_6CD0C1: ImpAdLdRf MemVar_74DBA4
  loc_6CD0C4: NewIfNullPr frmParamsImpresionTabla
  loc_6CD0C7: frmParamsImpresionTabla.Show from_stack_1, from_stack_2
  loc_6CD0CC: FLdPr Me
  loc_6CD0CF: MemLdI2 CancelaImpresion
  loc_6CD0D2: LitI2_Byte &HFF
  loc_6CD0D4: EqI2
  loc_6CD0D5: BranchF loc_6CD0D9
  loc_6CD0D8: ExitProcHresult
  loc_6CD0D9: FLdPrThis
  loc_6CD0DA: VCallAd Control_ID_lstreporteTablas
  loc_6CD0DD: FStAdFunc var_B4
  loc_6CD0E0: FLdPr var_B4
  loc_6CD0E3: Me.Clear
  loc_6CD0E8: FFree1Ad var_B4
  loc_6CD0EB: FLdPrThis
  loc_6CD0EC: VCallAd Control_ID_lstreporteTablas
  loc_6CD0EF: FStAdFunc var_B4
  loc_6CD0F2: FLdRfVar var_B4
  loc_6CD0F5: from_stack_2v = Proc_152_28_6E4CAC(from_stack_1v)
  loc_6CD0FA: FFree1Ad var_B4
  loc_6CD0FD: FLdRfVar var_B8
  loc_6CD100: FLdRfVar var_B4
  loc_6CD103: ImpAdLdRf MemVar_7520D4
  loc_6CD106: NewIfNullPr Global
  loc_6CD109:  = Global.App
  loc_6CD10E: FLdPr var_B4
  loc_6CD111:  = App.Path
  loc_6CD116: FLdRfVar var_CE
  loc_6CD119: LitDate 13.22918
  loc_6CD122: PopTmpLdAdFPR4
  loc_6CD126: LitDate 26.72294
  loc_6CD12F: PopTmpLdAdFPR4
  loc_6CD133: LitI2_Byte &H14
  loc_6CD135: CR8I2
  loc_6CD136: PopTmpLdAdFPR4
  loc_6CD13A: LitI2_Byte &HA
  loc_6CD13C: CR8I2
  loc_6CD13D: PopTmpLdAdFPR4
  loc_6CD141: ILdRf var_B8
  loc_6CD144: LitStr "\Logo_Compania.bmp"
  loc_6CD147: ConcatStr
  loc_6CD148: PopTmpLdAdStr
  loc_6CD14C: FLdRfVar var_8C
  loc_6CD14F: NewIfNullPr CReporte
  loc_6CD152: CReporte.BackColor = from_stack_1
  loc_6CD157: FFreeStr var_B8 = ""
  loc_6CD15E: FFree1Ad var_B4
  loc_6CD161: FLdRfVar var_B8
  loc_6CD164: FLdRfVar var_B4
  loc_6CD167: ImpAdLdRf MemVar_7520D4
  loc_6CD16A: NewIfNullPr Global
  loc_6CD16D:  = Global.App
  loc_6CD172: FLdPr var_B4
  loc_6CD175:  = App.Path
  loc_6CD17A: FLdRfVar var_CE
  loc_6CD17D: LitDate 8.466675
  loc_6CD186: PopTmpLdAdFPR4
  loc_6CD18A: LitDate 37.83545
  loc_6CD193: PopTmpLdAdFPR4
  loc_6CD197: LitI2_Byte &H14
  loc_6CD199: CR8I2
  loc_6CD19A: PopTmpLdAdFPR4
  loc_6CD19E: LitI2 160
  loc_6CD1A1: CR8I2
  loc_6CD1A2: PopTmpLdAdFPR4
  loc_6CD1A6: ILdRf var_B8
  loc_6CD1A9: LitStr "\Logo_Proyecto.bmp"
  loc_6CD1AC: ConcatStr
  loc_6CD1AD: PopTmpLdAdStr
  loc_6CD1B1: FLdRfVar var_8C
  loc_6CD1B4: NewIfNullPr CReporte
  loc_6CD1B7: CReporte.BackColor = from_stack_1
  loc_6CD1BC: FFreeStr var_B8 = ""
  loc_6CD1C3: FFree1Ad var_B4
  loc_6CD1C6: LitStr "Courier New"
  loc_6CD1C9: FLdRfVar var_90
  loc_6CD1CC: NewIfNullPr CFuente
  loc_6CD1CF: Reset
  loc_6CD1D4: LitI2_Byte 8
  loc_6CD1D6: CR8I2
  loc_6CD1D7: PopFPR4
  loc_6CD1D8: FLdRfVar var_90
  loc_6CD1DB: NewIfNullPr CFuente
  loc_6CD1E3: FLdRfVar var_BC
  loc_6CD1E6: LitVar_Missing var_1F0
  loc_6CD1E9: LitVar_Missing var_1D0
  loc_6CD1EC: LitVar_Missing var_1B0
  loc_6CD1EF: LitVar_Missing var_190
  loc_6CD1F2: LitVar_Missing var_170
  loc_6CD1F5: LitVar_Missing var_150
  loc_6CD1F8: LitVar_Missing var_130
  loc_6CD1FB: LitVar_Missing var_110
  loc_6CD1FE: LitVar_Missing var_F0
  loc_6CD201: LitVar_Missing var_E0
  loc_6CD204: LitStr "Fecha y Hora de emisión:"
  loc_6CD207: FStStrCopy var_B8
  loc_6CD20A: FLdRfVar var_B8
  loc_6CD20D: LitI4 &H1D
  loc_6CD212: PopTmpLdAdStr var_C0
  loc_6CD215: LitI2_Byte &H3C
  loc_6CD217: PopTmpLdAd2 var_CE
  loc_6CD21A: ImpAdLdRf MemVar_74C7D0
  loc_6CD21D: NewIfNullPr clsMsg
  loc_6CD220: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD225: FLdRfVar var_200
  loc_6CD228: ImpAdCallFPR4  = Date
  loc_6CD22D: LitI4 1
  loc_6CD232: LitI4 1
  loc_6CD237: LitVarStr var_210, "dd/mm/yyyy"
  loc_6CD23C: FStVarCopyObj var_220
  loc_6CD23F: FLdRfVar var_220
  loc_6CD242: FLdRfVar var_200
  loc_6CD245: ImpAdCallI2 Format$(, )
  loc_6CD24A: FStStr var_270
  loc_6CD24D: FLdRfVar var_23C
  loc_6CD250: ImpAdCallFPR4  = Time
  loc_6CD255: LitI4 1
  loc_6CD25A: LitI4 1
  loc_6CD25F: LitVarStr var_24C, "hh:mm:ss"
  loc_6CD264: FStVarCopyObj var_25C
  loc_6CD267: FLdRfVar var_25C
  loc_6CD26A: FLdRfVar var_23C
  loc_6CD26D: ImpAdCallI2 Format$(, )
  loc_6CD272: FStStr var_274
  loc_6CD275: FLdRfVar var_26A
  loc_6CD278: FLdRfVar var_90
  loc_6CD27B: NewIfNullRf
  loc_6CD27F: ILdRf var_BC
  loc_6CD282: LitStr " "
  loc_6CD285: ConcatStr
  loc_6CD286: FStStrNoPop var_224
  loc_6CD289: FLdZeroAd var_270
  loc_6CD28C: FStStrNoPop var_228
  loc_6CD28F: ConcatStr
  loc_6CD290: FStStrNoPop var_22C
  loc_6CD293: LitStr "  -  "
  loc_6CD296: ConcatStr
  loc_6CD297: FStStrNoPop var_260
  loc_6CD29A: FLdZeroAd var_274
  loc_6CD29D: FStStrNoPop var_264
  loc_6CD2A0: ConcatStr
  loc_6CD2A1: PopTmpLdAdStr
  loc_6CD2A5: FLdRfVar var_8C
  loc_6CD2A8: NewIfNullPr CReporte
  loc_6CD2AB:  = CReporte.hWnd
  loc_6CD2B0: FFreeStr var_B8 = "": var_BC = "": var_224 = "": var_228 = "": var_22C = "": var_260 = "": var_264 = "": var_268 = "": var_270 = ""
  loc_6CD2C7: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_23C = ""
  loc_6CD2E6: FLdRfVar var_BC
  loc_6CD2E9: LitVar_Missing var_1F0
  loc_6CD2EC: LitVar_Missing var_1D0
  loc_6CD2EF: LitVar_Missing var_1B0
  loc_6CD2F2: LitVar_Missing var_190
  loc_6CD2F5: LitVar_Missing var_170
  loc_6CD2F8: LitVar_Missing var_150
  loc_6CD2FB: LitVar_Missing var_130
  loc_6CD2FE: LitVar_Missing var_110
  loc_6CD301: LitVar_Missing var_F0
  loc_6CD304: LitVar_Missing var_E0
  loc_6CD307: LitStr "Tabla de Calibración segun"
  loc_6CD30A: FStStrCopy var_B8
  loc_6CD30D: FLdRfVar var_B8
  loc_6CD310: LitI4 &H1E
  loc_6CD315: PopTmpLdAdStr var_C0
  loc_6CD318: LitI2_Byte &H3C
  loc_6CD31A: PopTmpLdAd2 var_CE
  loc_6CD31D: ImpAdLdRf MemVar_74C7D0
  loc_6CD320: NewIfNullPr clsMsg
  loc_6CD323: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD328: FLdRfVar var_228
  loc_6CD32B: LitVar_Missing var_354
  loc_6CD32E: LitVar_Missing var_334
  loc_6CD331: LitVar_Missing var_314
  loc_6CD334: LitVar_Missing var_2F4
  loc_6CD337: LitVar_Missing var_2D4
  loc_6CD33A: LitVar_Missing var_2B4
  loc_6CD33D: LitVar_Missing var_25C
  loc_6CD340: LitVar_Missing var_23C
  loc_6CD343: LitVar_Missing var_220
  loc_6CD346: LitVar_Missing var_200
  loc_6CD349: LitStr "Boca Sensor"
  loc_6CD34C: FStStrCopy var_224
  loc_6CD34F: FLdRfVar var_224
  loc_6CD352: LitI4 &H1F
  loc_6CD357: PopTmpLdAdStr var_C4
  loc_6CD35A: LitI2_Byte &H3C
  loc_6CD35C: PopTmpLdAd2 var_26A
  loc_6CD35F: ImpAdLdRf MemVar_74C7D0
  loc_6CD362: NewIfNullPr clsMsg
  loc_6CD365: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD36A: FLdRfVar var_260
  loc_6CD36D: LitVar_Missing var_498
  loc_6CD370: LitVar_Missing var_478
  loc_6CD373: LitVar_Missing var_458
  loc_6CD376: LitVar_Missing var_438
  loc_6CD379: LitVar_Missing var_418
  loc_6CD37C: LitVar_Missing var_3F8
  loc_6CD37F: LitVar_Missing var_3D8
  loc_6CD382: LitVar_Missing var_3B8
  loc_6CD385: LitVar_Missing var_398
  loc_6CD388: LitVar_Missing var_378
  loc_6CD38B: LitStr "Boca Varilla"
  loc_6CD38E: FStStrCopy var_22C
  loc_6CD391: FLdRfVar var_22C
  loc_6CD394: LitI4 &H20
  loc_6CD399: PopTmpLdAdStr var_C8
  loc_6CD39C: LitI2_Byte &H3C
  loc_6CD39E: PopTmpLdAd2 var_356
  loc_6CD3A1: ImpAdLdRf MemVar_74C7D0
  loc_6CD3A4: NewIfNullPr clsMsg
  loc_6CD3A7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD3AC: FLdZeroAd var_260
  loc_6CD3AF: CVarStr var_4C8
  loc_6CD3B2: FLdZeroAd var_228
  loc_6CD3B5: CVarStr var_4B8
  loc_6CD3B8: FLdPr Me
  loc_6CD3BB: MemLdRfVar from_stack_1.EmitidaPorSensor
  loc_6CD3BE: CVarRef
  loc_6CD3C3: FLdRfVar var_4D8
  loc_6CD3C6: ImpAdCallFPR4  = IIf(, , )
  loc_6CD3CB: FLdRfVar var_268
  loc_6CD3CE: LitVar_Missing var_65C
  loc_6CD3D1: LitVar_Missing var_63C
  loc_6CD3D4: LitVar_Missing var_61C
  loc_6CD3D7: LitVar_Missing var_5FC
  loc_6CD3DA: LitVar_Missing var_5DC
  loc_6CD3DD: LitVar_Missing var_5BC
  loc_6CD3E0: LitVar_Missing var_59C
  loc_6CD3E3: LitVar_Missing var_57C
  loc_6CD3E6: LitVar_Missing var_55C
  loc_6CD3E9: LitVar_Missing var_53C
  loc_6CD3EC: LitStr "Tanque"
  loc_6CD3EF: FStStrCopy var_264
  loc_6CD3F2: FLdRfVar var_264
  loc_6CD3F5: LitI4 &H21
  loc_6CD3FA: PopTmpLdAdStr var_CC
  loc_6CD3FD: LitI2_Byte &H3C
  loc_6CD3FF: PopTmpLdAd2 var_51A
  loc_6CD402: ImpAdLdRf MemVar_74C7D0
  loc_6CD405: NewIfNullPr clsMsg
  loc_6CD408: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD40D: FLdRfVar var_6BE
  loc_6CD410: FLdRfVar var_90
  loc_6CD413: NewIfNullRf
  loc_6CD417: ILdRf var_BC
  loc_6CD41A: LitStr " "
  loc_6CD41D: ConcatStr
  loc_6CD41E: CVarStr var_4E8
  loc_6CD421: FLdRfVar var_4D8
  loc_6CD424: ConcatVar var_4F8
  loc_6CD428: LitVarStr var_508, " "
  loc_6CD42D: ConcatVar var_518
  loc_6CD431: FLdZeroAd var_268
  loc_6CD434: CVarStr var_66C
  loc_6CD437: ConcatVar var_67C
  loc_6CD43B: LitVarStr var_68C, " "
  loc_6CD440: ConcatVar var_69C
  loc_6CD444: FLdPr Me
  loc_6CD447: MemLdI2 global_118
  loc_6CD44A: CVarI2 var_6AC
  loc_6CD44D: ConcatVar var_6BC
  loc_6CD451: CStrVarTmp
  loc_6CD452: PopTmpLdAdStr
  loc_6CD456: FLdRfVar var_8C
  loc_6CD459: NewIfNullPr CReporte
  loc_6CD45C: CReporte.Caption = from_stack_1
  loc_6CD461: FFreeStr var_B8 = "": var_BC = "": var_224 = "": var_22C = "": var_264 = ""
  loc_6CD470: FFreeVar var_4B8 = "": var_4C8 = "": var_4E8 = "": var_4D8 = "": var_4F8 = "": var_53C = "": var_55C = "": var_57C = "": var_59C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_518 = "": var_66C = "": var_67C = "": var_69C = "": var_6BC = "": var_E0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_23C = "": var_25C = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_378 = "": var_398 = "": var_3B8 = "": var_3D8 = "": var_3F8 = "": var_418 = "": var_438 = "": var_458 = "": var_478 = ""
  loc_6CD4D7: FLdRfVar var_BC
  loc_6CD4DA: LitVar_Missing var_1F0
  loc_6CD4DD: LitVar_Missing var_1D0
  loc_6CD4E0: LitVar_Missing var_1B0
  loc_6CD4E3: LitVar_Missing var_190
  loc_6CD4E6: LitVar_Missing var_170
  loc_6CD4E9: LitVar_Missing var_150
  loc_6CD4EC: LitVar_Missing var_130
  loc_6CD4EF: LitVar_Missing var_110
  loc_6CD4F2: LitVar_Missing var_F0
  loc_6CD4F5: LitVar_Missing var_E0
  loc_6CD4F8: LitStr "* = Punto ingresado para interpolación"
  loc_6CD4FB: FStStrCopy var_B8
  loc_6CD4FE: FLdRfVar var_B8
  loc_6CD501: LitI4 &H22
  loc_6CD506: PopTmpLdAdStr var_C0
  loc_6CD509: LitI2_Byte &H3C
  loc_6CD50B: PopTmpLdAd2 var_CE
  loc_6CD50E: ImpAdLdRf MemVar_74C7D0
  loc_6CD511: NewIfNullPr clsMsg
  loc_6CD514: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD519: FLdRfVar var_26A
  loc_6CD51C: FLdRfVar var_90
  loc_6CD51F: NewIfNullRf
  loc_6CD523: FLdZeroAd var_BC
  loc_6CD526: PopTmpLdAdStr
  loc_6CD52A: FLdRfVar var_8C
  loc_6CD52D: NewIfNullPr CReporte
  loc_6CD530: CReporte.Caption = from_stack_1
  loc_6CD535: FFreeStr var_B8 = ""
  loc_6CD53C: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6CD553: LitI2_Byte &H12
  loc_6CD555: CR8I2
  loc_6CD556: PopFPR4
  loc_6CD557: FLdRfVar var_90
  loc_6CD55A: NewIfNullPr CFuente
  loc_6CD562: LitI2_Byte &HFF
  loc_6CD564: FLdRfVar var_90
  loc_6CD567: NewIfNullPr CFuente
  loc_6CD56F: LitI2_Byte &HFF
  loc_6CD571: FLdRfVar var_90
  loc_6CD574: NewIfNullPr CFuente
  loc_6CD577: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD57C: FLdRfVar var_CE
  loc_6CD57F: FLdRfVar var_90
  loc_6CD582: NewIfNullRf
  loc_6CD586: LitStr vbNullString
  loc_6CD589: FStStrCopy var_B8
  loc_6CD58C: FLdRfVar var_B8
  loc_6CD58F: FLdRfVar var_8C
  loc_6CD592: NewIfNullPr CReporte
  loc_6CD595:  = CReporte.BackColor
  loc_6CD59A: FFree1Str var_B8
  loc_6CD59D: FLdRfVar var_CE
  loc_6CD5A0: FLdRfVar var_90
  loc_6CD5A3: NewIfNullRf
  loc_6CD5A7: LitStr vbNullString
  loc_6CD5AA: FStStrCopy var_B8
  loc_6CD5AD: FLdRfVar var_B8
  loc_6CD5B0: FLdRfVar var_8C
  loc_6CD5B3: NewIfNullPr CReporte
  loc_6CD5B6:  = CReporte.BackColor
  loc_6CD5BB: FFree1Str var_B8
  loc_6CD5BE: FLdRfVar var_CE
  loc_6CD5C1: FLdRfVar var_90
  loc_6CD5C4: NewIfNullRf
  loc_6CD5C8: LitStr vbNullString
  loc_6CD5CB: FStStrCopy var_B8
  loc_6CD5CE: FLdRfVar var_B8
  loc_6CD5D1: FLdRfVar var_8C
  loc_6CD5D4: NewIfNullPr CReporte
  loc_6CD5D7:  = CReporte.BackColor
  loc_6CD5DC: FFree1Str var_B8
  loc_6CD5DF: FLdRfVar var_CE
  loc_6CD5E2: FLdRfVar var_90
  loc_6CD5E5: NewIfNullRf
  loc_6CD5E9: LitStr vbNullString
  loc_6CD5EC: FStStrCopy var_B8
  loc_6CD5EF: FLdRfVar var_B8
  loc_6CD5F2: FLdRfVar var_8C
  loc_6CD5F5: NewIfNullPr CReporte
  loc_6CD5F8:  = CReporte.BackColor
  loc_6CD5FD: FFree1Str var_B8
  loc_6CD600: FLdRfVar var_BC
  loc_6CD603: LitVar_Missing var_1F0
  loc_6CD606: LitVar_Missing var_1D0
  loc_6CD609: LitVar_Missing var_1B0
  loc_6CD60C: LitVar_Missing var_190
  loc_6CD60F: LitVar_Missing var_170
  loc_6CD612: LitVar_Missing var_150
  loc_6CD615: LitVar_Missing var_130
  loc_6CD618: LitVar_Missing var_110
  loc_6CD61B: LitVar_Missing var_F0
  loc_6CD61E: LitVar_Missing var_E0
  loc_6CD621: LitStr "Tabla de Calibración segun"
  loc_6CD624: FStStrCopy var_B8
  loc_6CD627: FLdRfVar var_B8
  loc_6CD62A: LitI4 &H1E
  loc_6CD62F: PopTmpLdAdStr var_C0
  loc_6CD632: LitI2_Byte &H3C
  loc_6CD634: PopTmpLdAd2 var_CE
  loc_6CD637: ImpAdLdRf MemVar_74C7D0
  loc_6CD63A: NewIfNullPr clsMsg
  loc_6CD63D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD642: FLdRfVar var_228
  loc_6CD645: LitVar_Missing var_354
  loc_6CD648: LitVar_Missing var_334
  loc_6CD64B: LitVar_Missing var_314
  loc_6CD64E: LitVar_Missing var_2F4
  loc_6CD651: LitVar_Missing var_2D4
  loc_6CD654: LitVar_Missing var_2B4
  loc_6CD657: LitVar_Missing var_25C
  loc_6CD65A: LitVar_Missing var_23C
  loc_6CD65D: LitVar_Missing var_220
  loc_6CD660: LitVar_Missing var_200
  loc_6CD663: LitStr "Boca Sensor"
  loc_6CD666: FStStrCopy var_224
  loc_6CD669: FLdRfVar var_224
  loc_6CD66C: LitI4 &H1F
  loc_6CD671: PopTmpLdAdStr var_C4
  loc_6CD674: LitI2_Byte &H3C
  loc_6CD676: PopTmpLdAd2 var_26A
  loc_6CD679: ImpAdLdRf MemVar_74C7D0
  loc_6CD67C: NewIfNullPr clsMsg
  loc_6CD67F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD684: FLdRfVar var_260
  loc_6CD687: LitVar_Missing var_498
  loc_6CD68A: LitVar_Missing var_478
  loc_6CD68D: LitVar_Missing var_458
  loc_6CD690: LitVar_Missing var_438
  loc_6CD693: LitVar_Missing var_418
  loc_6CD696: LitVar_Missing var_3F8
  loc_6CD699: LitVar_Missing var_3D8
  loc_6CD69C: LitVar_Missing var_3B8
  loc_6CD69F: LitVar_Missing var_398
  loc_6CD6A2: LitVar_Missing var_378
  loc_6CD6A5: LitStr "Boca Varilla"
  loc_6CD6A8: FStStrCopy var_22C
  loc_6CD6AB: FLdRfVar var_22C
  loc_6CD6AE: LitI4 &H20
  loc_6CD6B3: PopTmpLdAdStr var_C8
  loc_6CD6B6: LitI2_Byte &H3C
  loc_6CD6B8: PopTmpLdAd2 var_356
  loc_6CD6BB: ImpAdLdRf MemVar_74C7D0
  loc_6CD6BE: NewIfNullPr clsMsg
  loc_6CD6C1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD6C6: FLdZeroAd var_260
  loc_6CD6C9: CVarStr var_4C8
  loc_6CD6CC: FLdZeroAd var_228
  loc_6CD6CF: CVarStr var_4B8
  loc_6CD6D2: FLdPr Me
  loc_6CD6D5: MemLdRfVar from_stack_1.EmitidaPorSensor
  loc_6CD6D8: CVarRef
  loc_6CD6DD: FLdRfVar var_4D8
  loc_6CD6E0: ImpAdCallFPR4  = IIf(, , )
  loc_6CD6E5: FLdRfVar var_51A
  loc_6CD6E8: FLdRfVar var_90
  loc_6CD6EB: NewIfNullRf
  loc_6CD6EF: ILdRf var_BC
  loc_6CD6F2: LitStr " "
  loc_6CD6F5: ConcatStr
  loc_6CD6F6: CVarStr var_4E8
  loc_6CD6F9: FLdRfVar var_4D8
  loc_6CD6FC: ConcatVar var_4F8
  loc_6CD700: CStrVarTmp
  loc_6CD701: PopTmpLdAdStr
  loc_6CD705: FLdRfVar var_8C
  loc_6CD708: NewIfNullPr CReporte
  loc_6CD70B:  = CReporte.BackColor
  loc_6CD710: FFreeStr var_B8 = "": var_BC = "": var_224 = "": var_22C = ""
  loc_6CD71D: FFreeVar var_4B8 = "": var_4C8 = "": var_4E8 = "": var_4D8 = "": var_4F8 = "": var_E0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_23C = "": var_25C = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_378 = "": var_398 = "": var_3B8 = "": var_3D8 = "": var_3F8 = "": var_418 = "": var_438 = "": var_458 = "": var_478 = ""
  loc_6CD766: FLdRfVar var_BC
  loc_6CD769: LitVar_Missing var_1F0
  loc_6CD76C: LitVar_Missing var_1D0
  loc_6CD76F: LitVar_Missing var_1B0
  loc_6CD772: LitVar_Missing var_190
  loc_6CD775: LitVar_Missing var_170
  loc_6CD778: LitVar_Missing var_150
  loc_6CD77B: LitVar_Missing var_130
  loc_6CD77E: LitVar_Missing var_110
  loc_6CD781: LitVar_Missing var_F0
  loc_6CD784: LitVar_Missing var_E0
  loc_6CD787: LitStr "Tanque"
  loc_6CD78A: FStStrCopy var_B8
  loc_6CD78D: FLdRfVar var_B8
  loc_6CD790: LitI4 &H21
  loc_6CD795: PopTmpLdAdStr var_C0
  loc_6CD798: LitI2_Byte &H3C
  loc_6CD79A: PopTmpLdAd2 var_CE
  loc_6CD79D: ImpAdLdRf MemVar_74C7D0
  loc_6CD7A0: NewIfNullPr clsMsg
  loc_6CD7A3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD7A8: FLdRfVar var_260
  loc_6CD7AB: FLdPr Me
  loc_6CD7AE: MemLdI2 global_118
  loc_6CD7B1: CI4UI1
  loc_6CD7B2: ImpAdLdRf MemVar_74C1D8
  loc_6CD7B5: Ary1LdUI1
  loc_6CD7B7: CI2UI1
  loc_6CD7B9: ImpAdLdRf MemVar_74A220
  loc_6CD7BC: NewIfNullPr clsProducts
  loc_6CD7C4: LitVarI2 var_200, 12
  loc_6CD7C9: LitI4 1
  loc_6CD7CE: ILdRf var_260
  loc_6CD7D1: ImpAdCallI2 Mid$(, , )
  loc_6CD7D6: CVarStr var_220
  loc_6CD7D9: FLdRfVar var_23C
  loc_6CD7DC: ImpAdCallFPR4  = Trim()
  loc_6CD7E1: LitI4 1
  loc_6CD7E6: LitI4 1
  loc_6CD7EB: LitVar_Missing var_25C
  loc_6CD7EE: FLdRfVar var_23C
  loc_6CD7F1: ImpAdCallI2 Format$(, )
  loc_6CD7F6: FStStr var_274
  loc_6CD7F9: FLdRfVar var_26A
  loc_6CD7FC: FLdRfVar var_90
  loc_6CD7FF: NewIfNullRf
  loc_6CD803: ILdRf var_BC
  loc_6CD806: LitStr " "
  loc_6CD809: ConcatStr
  loc_6CD80A: FStStrNoPop var_224
  loc_6CD80D: FLdPr Me
  loc_6CD810: MemLdI2 global_118
  loc_6CD813: CStrUI1
  loc_6CD815: FStStrNoPop var_228
  loc_6CD818: ConcatStr
  loc_6CD819: FStStrNoPop var_22C
  loc_6CD81C: LitStr " - "
  loc_6CD81F: ConcatStr
  loc_6CD820: FStStrNoPop var_264
  loc_6CD823: FLdZeroAd var_274
  loc_6CD826: FStStrNoPop var_268
  loc_6CD829: ConcatStr
  loc_6CD82A: PopTmpLdAdStr
  loc_6CD82E: FLdRfVar var_8C
  loc_6CD831: NewIfNullPr CReporte
  loc_6CD834:  = CReporte.BackColor
  loc_6CD839: FFreeStr var_B8 = "": var_BC = "": var_224 = "": var_228 = "": var_22C = "": var_260 = "": var_264 = "": var_268 = "": var_270 = ""
  loc_6CD850: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_23C = ""
  loc_6CD86F: FLdRfVar var_CE
  loc_6CD872: FLdRfVar var_90
  loc_6CD875: NewIfNullRf
  loc_6CD879: LitStr vbNullString
  loc_6CD87C: FStStrCopy var_B8
  loc_6CD87F: FLdRfVar var_B8
  loc_6CD882: FLdRfVar var_8C
  loc_6CD885: NewIfNullPr CReporte
  loc_6CD888:  = CReporte.BackColor
  loc_6CD88D: FFree1Str var_B8
  loc_6CD890: LitI2_Byte 0
  loc_6CD892: FLdRfVar var_90
  loc_6CD895: NewIfNullPr CFuente
  loc_6CD898: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CD89D: LitI2_Byte &HA
  loc_6CD89F: CR8I2
  loc_6CD8A0: PopFPR4
  loc_6CD8A1: FLdRfVar var_90
  loc_6CD8A4: NewIfNullPr CFuente
  loc_6CD8AC: LitI2_Byte 0
  loc_6CD8AE: FLdRfVar var_90
  loc_6CD8B1: NewIfNullPr CFuente
  loc_6CD8B9: LitI2_Byte 0
  loc_6CD8BB: FLdRfVar var_86
  loc_6CD8BE: FLdRfVar var_CE
  loc_6CD8C1: FLdPrThis
  loc_6CD8C2: VCallAd Control_ID_lstreporteTablas
  loc_6CD8C5: FStAdFunc var_B4
  loc_6CD8C8: FLdPr var_B4
  loc_6CD8CB:  = Me.ListCount
  loc_6CD8D0: FLdI2 var_CE
  loc_6CD8D3: LitI2_Byte 1
  loc_6CD8D5: SubI2
  loc_6CD8D6: FFree1Ad var_B4
  loc_6CD8D9: ForI2 var_6C2
  loc_6CD8DF: FLdRfVar var_B8
  loc_6CD8E2: FLdI2 var_86
  loc_6CD8E5: FLdPrThis
  loc_6CD8E6: VCallAd Control_ID_lstreporteTablas
  loc_6CD8E9: FStAdFunc var_B4
  loc_6CD8EC: FLdPr var_B4
  loc_6CD8EF: from_stack_2 = Me.List(from_stack_1)
  loc_6CD8F4: FLdRfVar var_CE
  loc_6CD8F7: FLdRfVar var_90
  loc_6CD8FA: NewIfNullRf
  loc_6CD8FE: FLdZeroAd var_B8
  loc_6CD901: PopTmpLdAdStr
  loc_6CD905: FLdRfVar var_8C
  loc_6CD908: NewIfNullPr CReporte
  loc_6CD90B:  = CReporte.ForeColor
  loc_6CD910: FFree1Str var_BC
  loc_6CD913: FFree1Ad var_B4
  loc_6CD916: FLdRfVar var_86
  loc_6CD919: NextI2 var_6C2, loc_6CD8DF
  loc_6CD91E: FLdRfVar var_CE
  loc_6CD921: FLdRfVar var_8C
  loc_6CD924: NewIfNullPr CReporte
  loc_6CD927: CReporte.ForeColor = from_stack_1
  loc_6CD92C: LitNothing
  loc_6CD92E: CastAd
  loc_6CD931: FStAdFunc var_8C
  loc_6CD934: LitNothing
  loc_6CD936: CastAd
  loc_6CD939: FStAdFunc var_90
  loc_6CD93C: ExitProcHresult
End Sub

Private Sub Form_Load() '6C3A10
  'Data Table: 443E20
  loc_6C3188: FLdRfVar var_1D4
  loc_6C318B: LitVar_Missing var_1D0
  loc_6C318E: LitVar_Missing var_1B0
  loc_6C3191: LitVar_Missing var_190
  loc_6C3194: LitVar_Missing var_170
  loc_6C3197: LitVar_Missing var_150
  loc_6C319A: LitVar_Missing var_130
  loc_6C319D: LitVar_Missing var_110
  loc_6C31A0: LitVar_Missing var_F0
  loc_6C31A3: LitVar_Missing var_D0
  loc_6C31A6: LitVar_Missing var_B0
  loc_6C31A9: LitStr "Control de Tanques"
  loc_6C31AC: FStStrCopy var_90
  loc_6C31AF: FLdRfVar var_90
  loc_6C31B2: LitI4 1
  loc_6C31B7: PopTmpLdAdStr var_8C
  loc_6C31BA: LitI2_Byte &H3C
  loc_6C31BC: PopTmpLdAd2 var_88
  loc_6C31BF: ImpAdLdRf MemVar_74C7D0
  loc_6C31C2: NewIfNullPr clsMsg
  loc_6C31C5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C31CA: ILdRf var_1D4
  loc_6C31CD: FLdPrThis
  loc_6C31CE: VCallAd Control_ID_Label1
  loc_6C31D1: FStAdFunc var_1D8
  loc_6C31D4: FLdPr var_1D8
  loc_6C31D7: Me.Caption = from_stack_1
  loc_6C31DC: FFreeStr var_90 = ""
  loc_6C31E3: FFree1Ad var_1D8
  loc_6C31E6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C31FD: FLdRfVar var_1D4
  loc_6C3200: LitVar_Missing var_1D0
  loc_6C3203: LitVar_Missing var_1B0
  loc_6C3206: LitVar_Missing var_190
  loc_6C3209: LitVar_Missing var_170
  loc_6C320C: LitVar_Missing var_150
  loc_6C320F: LitVar_Missing var_130
  loc_6C3212: LitVar_Missing var_110
  loc_6C3215: LitVar_Missing var_F0
  loc_6C3218: LitVar_Missing var_D0
  loc_6C321B: LitVar_Missing var_B0
  loc_6C321E: LitStr "Tanques"
  loc_6C3221: FStStrCopy var_90
  loc_6C3224: FLdRfVar var_90
  loc_6C3227: LitI4 2
  loc_6C322C: PopTmpLdAdStr var_8C
  loc_6C322F: LitI2_Byte &H3C
  loc_6C3231: PopTmpLdAd2 var_88
  loc_6C3234: ImpAdLdRf MemVar_74C7D0
  loc_6C3237: NewIfNullPr clsMsg
  loc_6C323A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C323F: ILdRf var_1D4
  loc_6C3242: FLdPrThis
  loc_6C3243: VCallAd Control_ID_Label2
  loc_6C3246: FStAdFunc var_1D8
  loc_6C3249: FLdPr var_1D8
  loc_6C324C: Me.Caption = from_stack_1
  loc_6C3251: FFreeStr var_90 = ""
  loc_6C3258: FFree1Ad var_1D8
  loc_6C325B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C3272: FLdRfVar var_1D4
  loc_6C3275: LitVar_Missing var_1D0
  loc_6C3278: LitVar_Missing var_1B0
  loc_6C327B: LitVar_Missing var_190
  loc_6C327E: LitVar_Missing var_170
  loc_6C3281: LitVar_Missing var_150
  loc_6C3284: LitVar_Missing var_130
  loc_6C3287: LitVar_Missing var_110
  loc_6C328A: LitVar_Missing var_F0
  loc_6C328D: LitVar_Missing var_D0
  loc_6C3290: LitVar_Missing var_B0
  loc_6C3293: LitStr "Milimetros"
  loc_6C3296: FStStrCopy var_90
  loc_6C3299: FLdRfVar var_90
  loc_6C329C: LitI4 3
  loc_6C32A1: PopTmpLdAdStr var_8C
  loc_6C32A4: LitI2_Byte &H3C
  loc_6C32A6: PopTmpLdAd2 var_88
  loc_6C32A9: ImpAdLdRf MemVar_74C7D0
  loc_6C32AC: NewIfNullPr clsMsg
  loc_6C32AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C32B4: ILdRf var_1D4
  loc_6C32B7: FLdPrThis
  loc_6C32B8: VCallAd Control_ID_lblEscala
  loc_6C32BB: FStAdFunc var_1D8
  loc_6C32BE: FLdPr var_1D8
  loc_6C32C1: Me.Caption = from_stack_1
  loc_6C32C6: FFreeStr var_90 = ""
  loc_6C32CD: FFree1Ad var_1D8
  loc_6C32D0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C32E7: FLdRfVar var_1D4
  loc_6C32EA: LitVar_Missing var_1D0
  loc_6C32ED: LitVar_Missing var_1B0
  loc_6C32F0: LitVar_Missing var_190
  loc_6C32F3: LitVar_Missing var_170
  loc_6C32F6: LitVar_Missing var_150
  loc_6C32F9: LitVar_Missing var_130
  loc_6C32FC: LitVar_Missing var_110
  loc_6C32FF: LitVar_Missing var_F0
  loc_6C3302: LitVar_Missing var_D0
  loc_6C3305: LitVar_Missing var_B0
  loc_6C3308: LitStr "Litros"
  loc_6C330B: FStStrCopy var_90
  loc_6C330E: FLdRfVar var_90
  loc_6C3311: LitI4 4
  loc_6C3316: PopTmpLdAdStr var_8C
  loc_6C3319: LitI2_Byte &H3C
  loc_6C331B: PopTmpLdAd2 var_88
  loc_6C331E: ImpAdLdRf MemVar_74C7D0
  loc_6C3321: NewIfNullPr clsMsg
  loc_6C3324: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3329: ILdRf var_1D4
  loc_6C332C: FLdPrThis
  loc_6C332D: VCallAd Control_ID_Label5
  loc_6C3330: FStAdFunc var_1D8
  loc_6C3333: FLdPr var_1D8
  loc_6C3336: Me.Caption = from_stack_1
  loc_6C333B: FFreeStr var_90 = ""
  loc_6C3342: FFree1Ad var_1D8
  loc_6C3345: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C335C: FLdRfVar var_1D4
  loc_6C335F: LitVar_Missing var_1D0
  loc_6C3362: LitVar_Missing var_1B0
  loc_6C3365: LitVar_Missing var_190
  loc_6C3368: LitVar_Missing var_170
  loc_6C336B: LitVar_Missing var_150
  loc_6C336E: LitVar_Missing var_130
  loc_6C3371: LitVar_Missing var_110
  loc_6C3374: LitVar_Missing var_F0
  loc_6C3377: LitVar_Missing var_D0
  loc_6C337A: LitVar_Missing var_B0
  loc_6C337D: LitStr "   Cargando tabla, espere un momento..."
  loc_6C3380: FStStrCopy var_90
  loc_6C3383: FLdRfVar var_90
  loc_6C3386: LitI4 5
  loc_6C338B: PopTmpLdAdStr var_8C
  loc_6C338E: LitI2_Byte &H3C
  loc_6C3390: PopTmpLdAd2 var_88
  loc_6C3393: ImpAdLdRf MemVar_74C7D0
  loc_6C3396: NewIfNullPr clsMsg
  loc_6C3399: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C339E: ILdRf var_1D4
  loc_6C33A1: FLdPrThis
  loc_6C33A2: VCallAd Control_ID_txtLeyenda
  loc_6C33A5: FStAdFunc var_1D8
  loc_6C33A8: FLdPr var_1D8
  loc_6C33AB: Me.Text = from_stack_1
  loc_6C33B0: FFreeStr var_90 = ""
  loc_6C33B7: FFree1Ad var_1D8
  loc_6C33BA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C33D1: FLdRfVar var_1D4
  loc_6C33D4: LitVar_Missing var_1D0
  loc_6C33D7: LitVar_Missing var_1B0
  loc_6C33DA: LitVar_Missing var_190
  loc_6C33DD: LitVar_Missing var_170
  loc_6C33E0: LitVar_Missing var_150
  loc_6C33E3: LitVar_Missing var_130
  loc_6C33E6: LitVar_Missing var_110
  loc_6C33E9: LitVar_Missing var_F0
  loc_6C33EC: LitVar_Missing var_D0
  loc_6C33EF: LitVar_Missing var_B0
  loc_6C33F2: LitStr "&Borrar todos los pares"
  loc_6C33F5: FStStrCopy var_90
  loc_6C33F8: FLdRfVar var_90
  loc_6C33FB: LitI4 6
  loc_6C3400: PopTmpLdAdStr var_8C
  loc_6C3403: LitI2_Byte &H3C
  loc_6C3405: PopTmpLdAd2 var_88
  loc_6C3408: ImpAdLdRf MemVar_74C7D0
  loc_6C340B: NewIfNullPr clsMsg
  loc_6C340E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3413: ILdRf var_1D4
  loc_6C3416: FLdPrThis
  loc_6C3417: VCallAd Control_ID_cmdBorrar
  loc_6C341A: FStAdFunc var_1D8
  loc_6C341D: FLdPr var_1D8
  loc_6C3420: Me.Caption = from_stack_1
  loc_6C3425: FFreeStr var_90 = ""
  loc_6C342C: FFree1Ad var_1D8
  loc_6C342F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C3446: FLdRfVar var_1D4
  loc_6C3449: LitVar_Missing var_1D0
  loc_6C344C: LitVar_Missing var_1B0
  loc_6C344F: LitVar_Missing var_190
  loc_6C3452: LitVar_Missing var_170
  loc_6C3455: LitVar_Missing var_150
  loc_6C3458: LitVar_Missing var_130
  loc_6C345B: LitVar_Missing var_110
  loc_6C345E: LitVar_Missing var_F0
  loc_6C3461: LitVar_Missing var_D0
  loc_6C3464: LitVar_Missing var_B0
  loc_6C3467: LitStr "&Cancelar"
  loc_6C346A: FStStrCopy var_90
  loc_6C346D: FLdRfVar var_90
  loc_6C3470: LitI4 7
  loc_6C3475: PopTmpLdAdStr var_8C
  loc_6C3478: LitI2_Byte &H3C
  loc_6C347A: PopTmpLdAd2 var_88
  loc_6C347D: ImpAdLdRf MemVar_74C7D0
  loc_6C3480: NewIfNullPr clsMsg
  loc_6C3483: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3488: ILdRf var_1D4
  loc_6C348B: FLdPrThis
  loc_6C348C: VCallAd Control_ID_cmdCancelar
  loc_6C348F: FStAdFunc var_1D8
  loc_6C3492: FLdPr var_1D8
  loc_6C3495: Me.Caption = from_stack_1
  loc_6C349A: FFreeStr var_90 = ""
  loc_6C34A1: FFree1Ad var_1D8
  loc_6C34A4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C34BB: FLdRfVar var_1D4
  loc_6C34BE: LitVar_Missing var_1D0
  loc_6C34C1: LitVar_Missing var_1B0
  loc_6C34C4: LitVar_Missing var_190
  loc_6C34C7: LitVar_Missing var_170
  loc_6C34CA: LitVar_Missing var_150
  loc_6C34CD: LitVar_Missing var_130
  loc_6C34D0: LitVar_Missing var_110
  loc_6C34D3: LitVar_Missing var_F0
  loc_6C34D6: LitVar_Missing var_D0
  loc_6C34D9: LitVar_Missing var_B0
  loc_6C34DC: LitStr "&Importar Tablas"
  loc_6C34DF: FStStrCopy var_90
  loc_6C34E2: FLdRfVar var_90
  loc_6C34E5: LitI4 8
  loc_6C34EA: PopTmpLdAdStr var_8C
  loc_6C34ED: LitI2_Byte &H3C
  loc_6C34EF: PopTmpLdAd2 var_88
  loc_6C34F2: ImpAdLdRf MemVar_74C7D0
  loc_6C34F5: NewIfNullPr clsMsg
  loc_6C34F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C34FD: ILdRf var_1D4
  loc_6C3500: FLdPrThis
  loc_6C3501: VCallAd Control_ID_cmdImportar
  loc_6C3504: FStAdFunc var_1D8
  loc_6C3507: FLdPr var_1D8
  loc_6C350A: Me.Caption = from_stack_1
  loc_6C350F: FFreeStr var_90 = ""
  loc_6C3516: FFree1Ad var_1D8
  loc_6C3519: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C3530: FLdRfVar var_1D4
  loc_6C3533: LitVar_Missing var_1D0
  loc_6C3536: LitVar_Missing var_1B0
  loc_6C3539: LitVar_Missing var_190
  loc_6C353C: LitVar_Missing var_170
  loc_6C353F: LitVar_Missing var_150
  loc_6C3542: LitVar_Missing var_130
  loc_6C3545: LitVar_Missing var_110
  loc_6C3548: LitVar_Missing var_F0
  loc_6C354B: LitVar_Missing var_D0
  loc_6C354E: LitVar_Missing var_B0
  loc_6C3551: LitStr "&Exportar Tablas"
  loc_6C3554: FStStrCopy var_90
  loc_6C3557: FLdRfVar var_90
  loc_6C355A: LitI4 9
  loc_6C355F: PopTmpLdAdStr var_8C
  loc_6C3562: LitI2_Byte &H3C
  loc_6C3564: PopTmpLdAd2 var_88
  loc_6C3567: ImpAdLdRf MemVar_74C7D0
  loc_6C356A: NewIfNullPr clsMsg
  loc_6C356D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3572: ILdRf var_1D4
  loc_6C3575: FLdPrThis
  loc_6C3576: VCallAd Control_ID_cmdExportar
  loc_6C3579: FStAdFunc var_1D8
  loc_6C357C: FLdPr var_1D8
  loc_6C357F: Me.Caption = from_stack_1
  loc_6C3584: FFreeStr var_90 = ""
  loc_6C358B: FFree1Ad var_1D8
  loc_6C358E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C35A5: FLdRfVar var_1D4
  loc_6C35A8: LitVar_Missing var_1D0
  loc_6C35AB: LitVar_Missing var_1B0
  loc_6C35AE: LitVar_Missing var_190
  loc_6C35B1: LitVar_Missing var_170
  loc_6C35B4: LitVar_Missing var_150
  loc_6C35B7: LitVar_Missing var_130
  loc_6C35BA: LitVar_Missing var_110
  loc_6C35BD: LitVar_Missing var_F0
  loc_6C35C0: LitVar_Missing var_D0
  loc_6C35C3: LitVar_Missing var_B0
  loc_6C35C6: LitStr "C&opiar Tablas de Tanques"
  loc_6C35C9: FStStrCopy var_90
  loc_6C35CC: FLdRfVar var_90
  loc_6C35CF: LitI4 &HA
  loc_6C35D4: PopTmpLdAdStr var_8C
  loc_6C35D7: LitI2_Byte &H3C
  loc_6C35D9: PopTmpLdAd2 var_88
  loc_6C35DC: ImpAdLdRf MemVar_74C7D0
  loc_6C35DF: NewIfNullPr clsMsg
  loc_6C35E2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C35E7: ILdRf var_1D4
  loc_6C35EA: FLdPrThis
  loc_6C35EB: VCallAd Control_ID_cmdCopiarTablas
  loc_6C35EE: FStAdFunc var_1D8
  loc_6C35F1: FLdPr var_1D8
  loc_6C35F4: Me.Caption = from_stack_1
  loc_6C35F9: FFreeStr var_90 = ""
  loc_6C3600: FFree1Ad var_1D8
  loc_6C3603: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C361A: FLdRfVar var_1D4
  loc_6C361D: LitVar_Missing var_1D0
  loc_6C3620: LitVar_Missing var_1B0
  loc_6C3623: LitVar_Missing var_190
  loc_6C3626: LitVar_Missing var_170
  loc_6C3629: LitVar_Missing var_150
  loc_6C362C: LitVar_Missing var_130
  loc_6C362F: LitVar_Missing var_110
  loc_6C3632: LitVar_Missing var_F0
  loc_6C3635: LitVar_Missing var_D0
  loc_6C3638: LitVar_Missing var_B0
  loc_6C363B: LitStr "&Aceptar"
  loc_6C363E: FStStrCopy var_90
  loc_6C3641: FLdRfVar var_90
  loc_6C3644: LitI4 &HB
  loc_6C3649: PopTmpLdAdStr var_8C
  loc_6C364C: LitI2_Byte &H3C
  loc_6C364E: PopTmpLdAd2 var_88
  loc_6C3651: ImpAdLdRf MemVar_74C7D0
  loc_6C3654: NewIfNullPr clsMsg
  loc_6C3657: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C365C: ILdRf var_1D4
  loc_6C365F: FLdPrThis
  loc_6C3660: VCallAd Control_ID_cmdAceptar
  loc_6C3663: FStAdFunc var_1D8
  loc_6C3666: FLdPr var_1D8
  loc_6C3669: Me.Caption = from_stack_1
  loc_6C366E: FFreeStr var_90 = ""
  loc_6C3675: FFree1Ad var_1D8
  loc_6C3678: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C368F: FLdRfVar var_1D4
  loc_6C3692: LitVar_Missing var_1D0
  loc_6C3695: LitVar_Missing var_1B0
  loc_6C3698: LitVar_Missing var_190
  loc_6C369B: LitVar_Missing var_170
  loc_6C369E: LitVar_Missing var_150
  loc_6C36A1: LitVar_Missing var_130
  loc_6C36A4: LitVar_Missing var_110
  loc_6C36A7: LitVar_Missing var_F0
  loc_6C36AA: LitVar_Missing var_D0
  loc_6C36AD: LitVar_Missing var_B0
  loc_6C36B0: LitStr "&Cancelar"
  loc_6C36B3: FStStrCopy var_90
  loc_6C36B6: FLdRfVar var_90
  loc_6C36B9: LitI4 &HC
  loc_6C36BE: PopTmpLdAdStr var_8C
  loc_6C36C1: LitI2_Byte &H3C
  loc_6C36C3: PopTmpLdAd2 var_88
  loc_6C36C6: ImpAdLdRf MemVar_74C7D0
  loc_6C36C9: NewIfNullPr clsMsg
  loc_6C36CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C36D1: ILdRf var_1D4
  loc_6C36D4: FLdPrThis
  loc_6C36D5: VCallAd Control_ID_cmdCancelar
  loc_6C36D8: FStAdFunc var_1D8
  loc_6C36DB: FLdPr var_1D8
  loc_6C36DE: Me.Caption = from_stack_1
  loc_6C36E3: FFreeStr var_90 = ""
  loc_6C36EA: FFree1Ad var_1D8
  loc_6C36ED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C3704: FLdRfVar var_1D4
  loc_6C3707: LitVar_Missing var_1D0
  loc_6C370A: LitVar_Missing var_1B0
  loc_6C370D: LitVar_Missing var_190
  loc_6C3710: LitVar_Missing var_170
  loc_6C3713: LitVar_Missing var_150
  loc_6C3716: LitVar_Missing var_130
  loc_6C3719: LitVar_Missing var_110
  loc_6C371C: LitVar_Missing var_F0
  loc_6C371F: LitVar_Missing var_D0
  loc_6C3722: LitVar_Missing var_B0
  loc_6C3725: LitStr "I&mprimir Tabla"
  loc_6C3728: FStStrCopy var_90
  loc_6C372B: FLdRfVar var_90
  loc_6C372E: LitI4 &H27
  loc_6C3733: PopTmpLdAdStr var_8C
  loc_6C3736: LitI2_Byte &H3C
  loc_6C3738: PopTmpLdAd2 var_88
  loc_6C373B: ImpAdLdRf MemVar_74C7D0
  loc_6C373E: NewIfNullPr clsMsg
  loc_6C3741: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3746: ILdRf var_1D4
  loc_6C3749: FLdPrThis
  loc_6C374A: VCallAd Control_ID_ImprimirTabla
  loc_6C374D: FStAdFunc var_1D8
  loc_6C3750: FLdPr var_1D8
  loc_6C3753: Me.Caption = from_stack_1
  loc_6C3758: FFreeStr var_90 = ""
  loc_6C375F: FFree1Ad var_1D8
  loc_6C3762: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6C3779: FLdRfVar var_90
  loc_6C377C: FLdPrThis
  loc_6C377D: VCallAd Control_ID_Label2
  loc_6C3780: FStAdFunc var_1D8
  loc_6C3783: FLdPr var_1D8
  loc_6C3786:  = Me.Caption
  loc_6C378B: ILdRf var_90
  loc_6C378E: FLdPr Me
  loc_6C3791: Me.Caption = from_stack_1
  loc_6C3796: FFree1Str var_90
  loc_6C3799: FFree1Ad var_1D8
  loc_6C379C: ImpAdLdI4 MemVar_74BEBC
  loc_6C379F: FLdPrThis
  loc_6C37A0: VCallAd Control_ID_Label5
  loc_6C37A3: FStAdFunc var_1D8
  loc_6C37A6: FLdPr var_1D8
  loc_6C37A9: Me.Caption = from_stack_1
  loc_6C37AE: FFree1Ad var_1D8
  loc_6C37B1: ImpAdLdI4 MemVar_74BEC4
  loc_6C37B4: FLdPrThis
  loc_6C37B5: VCallAd Control_ID_lblEscala
  loc_6C37B8: FStAdFunc var_1D8
  loc_6C37BB: FLdPr var_1D8
  loc_6C37BE: Me.Caption = from_stack_1
  loc_6C37C3: FFree1Ad var_1D8
  loc_6C37C6: LitI2_Byte 0
  loc_6C37C8: FLdPr Me
  loc_6C37CB: MemStI2 CopiaTanqueDestino
  loc_6C37CE: LitI2_Byte 0
  loc_6C37D0: CR8I2
  loc_6C37D1: PopFPR4
  loc_6C37D2: ImpAdLdRf MemVar_74D8EC
  loc_6C37D5: NewIfNullPr frmControlTanques
  loc_6C37D8: frmControlTanques.Top = from_stack_1s
  loc_6C37DD: LitI2_Byte 0
  loc_6C37DF: CR8I2
  loc_6C37E0: PopFPR4
  loc_6C37E1: ImpAdLdRf MemVar_74D8EC
  loc_6C37E4: NewIfNullPr frmControlTanques
  loc_6C37E7: frmControlTanques.Left = from_stack_1s
  loc_6C37EC: FLdRfVar var_8C
  loc_6C37EF: FLdRfVar var_1D8
  loc_6C37F2: ImpAdLdRf MemVar_7520D4
  loc_6C37F5: NewIfNullPr Global
  loc_6C37F8:  = Global.Screen
  loc_6C37FD: FLdPr var_1D8
  loc_6C3800:  = Screen.TwipsPerPixelY
  loc_6C3805: FLdFPR4 var_8C
  loc_6C3808: LitI2 600
  loc_6C380B: CR8I2
  loc_6C380C: MulR8
  loc_6C380D: PopFPR4
  loc_6C380E: ImpAdLdRf MemVar_74D8EC
  loc_6C3811: NewIfNullPr frmControlTanques
  loc_6C3814: frmControlTanques.Height = from_stack_1s
  loc_6C3819: FFree1Ad var_1D8
  loc_6C381C: FLdRfVar var_8C
  loc_6C381F: FLdRfVar var_1D8
  loc_6C3822: ImpAdLdRf MemVar_7520D4
  loc_6C3825: NewIfNullPr Global
  loc_6C3828:  = Global.Screen
  loc_6C382D: FLdPr var_1D8
  loc_6C3830:  = Screen.TwipsPerPixelX
  loc_6C3835: FLdFPR4 var_8C
  loc_6C3838: LitI2 800
  loc_6C383B: CR8I2
  loc_6C383C: MulR8
  loc_6C383D: PopFPR4
  loc_6C383E: ImpAdLdRf MemVar_74D8EC
  loc_6C3841: NewIfNullPr frmControlTanques
  loc_6C3844: frmControlTanques.Width = from_stack_1s
  loc_6C3849: FFree1Ad var_1D8
  loc_6C384C: LitI2_Byte &HFF
  loc_6C384E: FLdPr Me
  loc_6C3851: MemStI2 global_132
  loc_6C3854: ImpAdLdUI1
  loc_6C3858: CI2UI1
  loc_6C385A: LitI2_Byte 0
  loc_6C385C: EqI2
  loc_6C385D: BranchF loc_6C38F3
  loc_6C3860: FLdRfVar var_1D4
  loc_6C3863: LitVar_Missing var_1D0
  loc_6C3866: LitVar_Missing var_1B0
  loc_6C3869: LitVar_Missing var_190
  loc_6C386C: LitVar_Missing var_170
  loc_6C386F: LitVar_Missing var_150
  loc_6C3872: LitVar_Missing var_130
  loc_6C3875: LitVar_Missing var_110
  loc_6C3878: LitVar_Missing var_F0
  loc_6C387B: LitVar_Missing var_D0
  loc_6C387E: LitVar_Missing var_B0
  loc_6C3881: LitStr "Error: No hay tanques para controlar."
  loc_6C3884: FStStrCopy var_90
  loc_6C3887: FLdRfVar var_90
  loc_6C388A: LitI4 &HD
  loc_6C388F: PopTmpLdAdStr var_8C
  loc_6C3892: LitI2_Byte &H3C
  loc_6C3894: PopTmpLdAd2 var_88
  loc_6C3897: ImpAdLdRf MemVar_74C7D0
  loc_6C389A: NewIfNullPr clsMsg
  loc_6C389D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C38A2: LitVar_Missing var_248
  loc_6C38A5: LitVar_Missing var_228
  loc_6C38A8: LitVar_Missing var_208
  loc_6C38AB: LitI4 &H40
  loc_6C38B0: FLdZeroAd var_1D4
  loc_6C38B3: CVarStr var_1E8
  loc_6C38B6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C38BB: FFree1Str var_90
  loc_6C38BE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_6C38DD: ILdRf Me
  loc_6C38E0: FStAdNoPop
  loc_6C38E4: ImpAdLdRf MemVar_7520D4
  loc_6C38E7: NewIfNullPr Global
  loc_6C38EA: Global.Unload from_stack_1
  loc_6C38EF: FFree1Ad var_1D8
  loc_6C38F2: ExitProcHresult
  loc_6C38F3: LitI2_Byte 1
  loc_6C38F5: FLdRfVar var_86
  loc_6C38F8: ImpAdLdUI1
  loc_6C38FC: CI2UI1
  loc_6C38FE: ForI2 var_24C
  loc_6C3904: FLdRfVar var_88
  loc_6C3907: FLdI2 var_86
  loc_6C390A: CI4UI1
  loc_6C390B: ImpAdLdRf MemVar_74C1D8
  loc_6C390E: Ary1LdUI1
  loc_6C3910: CI2UI1
  loc_6C3912: ImpAdLdRf MemVar_74A220
  loc_6C3915: NewIfNullPr clsProducts
  loc_6C3918:  = clsProducts.hWnd
  loc_6C391D: FLdI2 var_88
  loc_6C3920: NotI4
  loc_6C3921: BranchF loc_6C39D4
  loc_6C3924: FLdRfVar var_1D4
  loc_6C3927: LitVar_Missing var_1D0
  loc_6C392A: LitVar_Missing var_1B0
  loc_6C392D: LitVar_Missing var_190
  loc_6C3930: LitVar_Missing var_170
  loc_6C3933: LitVar_Missing var_150
  loc_6C3936: LitVar_Missing var_130
  loc_6C3939: LitVar_Missing var_110
  loc_6C393C: LitVar_Missing var_F0
  loc_6C393F: LitVar_Missing var_D0
  loc_6C3942: LitVar_Missing var_B0
  loc_6C3945: LitStr "Tanque"
  loc_6C3948: FStStrCopy var_90
  loc_6C394B: FLdRfVar var_90
  loc_6C394E: LitI4 &HE
  loc_6C3953: PopTmpLdAdStr var_8C
  loc_6C3956: LitI2_Byte &H3C
  loc_6C3958: PopTmpLdAd2 var_88
  loc_6C395B: ImpAdLdRf MemVar_74C7D0
  loc_6C395E: NewIfNullPr clsMsg
  loc_6C3961: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C3966: LitI4 &H1E
  loc_6C396B: FLdRfVar var_1E8
  loc_6C396E: ImpAdCallFPR4  = Space()
  loc_6C3973: LitVar_Missing var_1F8
  loc_6C3976: PopAdLdVar
  loc_6C3977: ILdRf var_1D4
  loc_6C397A: LitStr " "
  loc_6C397D: ConcatStr
  loc_6C397E: FStStrNoPop var_250
  loc_6C3981: FLdI2 var_86
  loc_6C3984: CStrUI1
  loc_6C3986: FStStrNoPop var_254
  loc_6C3989: ConcatStr
  loc_6C398A: CVarStr var_208
  loc_6C398D: FLdRfVar var_1E8
  loc_6C3990: ConcatVar var_228
  loc_6C3994: CStrVarVal var_258
  loc_6C3998: FLdPrThis
  loc_6C3999: VCallAd Control_ID_lstTanques
  loc_6C399C: FStAdFunc var_1D8
  loc_6C399F: FLdPr var_1D8
  loc_6C39A2: Me.AddItem from_stack_1, from_stack_2
  loc_6C39A7: FFreeStr var_90 = "": var_1D4 = "": var_250 = "": var_254 = ""
  loc_6C39B4: FFree1Ad var_1D8
  loc_6C39B7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_208 = "": var_1E8 = ""
  loc_6C39D4: FLdRfVar var_86
  loc_6C39D7: NextI2 var_24C, loc_6C3904
  loc_6C39DC: LitI2_Byte 0
  loc_6C39DE: FLdPrThis
  loc_6C39DF: VCallAd Control_ID_txtLeyenda
  loc_6C39E2: FStAdFunc var_1D8
  loc_6C39E5: FLdPr var_1D8
  loc_6C39E8: Me.Visible = from_stack_1b
  loc_6C39ED: FFree1Ad var_1D8
  loc_6C39F0: LitI2_Byte 0
  loc_6C39F2: FLdPr Me
  loc_6C39F5: MemStI2 global_116
  loc_6C39F8: LitI2_Byte 1
  loc_6C39FA: FLdPr Me
  loc_6C39FD: MemStI2 global_118
  loc_6C3A00: LitI2_Byte 0
  loc_6C3A02: FLdPr Me
  loc_6C3A05: MemStI2 global_134
  loc_6C3A08: ImpAdCallFPR4 DoEvents()
  loc_6C3A0D: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D30B0
  'Data Table: 443E20
  loc_5D3094: FLdPr Me
  loc_5D3097: MemLdI2 global_118
  loc_5D309A: LitI2_Byte 1
  loc_5D309C: SubI2
  loc_5D309D: FLdPrThis
  loc_5D309E: VCallAd Control_ID_lstTanques
  loc_5D30A1: FStAdFunc var_88
  loc_5D30A4: FLdPr var_88
  loc_5D30A7: Me.ListIndex = from_stack_1
  loc_5D30AC: FFree1Ad var_88
  loc_5D30AF: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '6DE65C
  'Data Table: 443E20
  loc_6DDA20: FLdPr Me
  loc_6DDA23: MemLdI2 global_134
  loc_6DDA26: BranchF loc_6DDA2F
  loc_6DDA29: LitI2_Byte 0
  loc_6DDA2B: IStI2 KeyCode
  loc_6DDA2E: ExitProcHresult
  loc_6DDA2F: ILdI2 KeyCode
  loc_6DDA32: FStI2 var_86
  loc_6DDA35: FLdI2 var_86
  loc_6DDA38: LitI4 &H30
  loc_6DDA3D: CI2I4
  loc_6DDA3E: LitI4 &H39
  loc_6DDA43: CI2I4
  loc_6DDA44: BetweenI2
  loc_6DDA46: BranchT loc_6DDAAB
  loc_6DDA49: FLdI2 var_86
  loc_6DDA4C: LitI4 &H60
  loc_6DDA51: CI2I4
  loc_6DDA52: LitI4 &H69
  loc_6DDA57: CI2I4
  loc_6DDA58: BetweenI2
  loc_6DDA5A: BranchT loc_6DDAAB
  loc_6DDA5D: FLdI2 var_86
  loc_6DDA60: LitI4 &H6E
  loc_6DDA65: CI2I4
  loc_6DDA66: EqI2
  loc_6DDA67: BranchT loc_6DDAAB
  loc_6DDA6A: FLdI2 var_86
  loc_6DDA6D: LitI4 8
  loc_6DDA72: CI2I4
  loc_6DDA73: EqI2
  loc_6DDA74: BranchT loc_6DDAAB
  loc_6DDA77: FLdI2 var_86
  loc_6DDA7A: LitI4 &H2E
  loc_6DDA7F: CI2I4
  loc_6DDA80: EqI2
  loc_6DDA81: BranchT loc_6DDAAB
  loc_6DDA84: FLdI2 var_86
  loc_6DDA87: LitI4 &HD
  loc_6DDA8C: CI2I4
  loc_6DDA8D: EqI2
  loc_6DDA8E: BranchT loc_6DDAAB
  loc_6DDA91: FLdI2 var_86
  loc_6DDA94: LitI4 &H25
  loc_6DDA99: CI2I4
  loc_6DDA9A: EqI2
  loc_6DDA9B: BranchT loc_6DDAAB
  loc_6DDA9E: FLdI2 var_86
  loc_6DDAA1: LitI4 &H27
  loc_6DDAA6: CI2I4
  loc_6DDAA7: EqI2
  loc_6DDAA8: BranchF loc_6DDAAE
  loc_6DDAAB: Branch loc_6DE65B
  loc_6DDAAE: FLdI2 var_86
  loc_6DDAB1: LitI4 &H26
  loc_6DDAB6: CI2I4
  loc_6DDAB7: EqI2
  loc_6DDAB8: BranchF loc_6DDC9A
  loc_6DDABB: LitI2_Byte 0
  loc_6DDABD: IStI2 KeyCode
  loc_6DDAC0: FLdRfVar var_8E
  loc_6DDAC3: FLdPrThis
  loc_6DDAC4: VCallAd Control_ID_VScroll
  loc_6DDAC7: FStAdFunc var_8C
  loc_6DDACA: FLdPr var_8C
  loc_6DDACD:  = Me.Value
  loc_6DDAD2: FLdI2 var_8E
  loc_6DDAD5: FLdPr Me
  loc_6DDAD8: MemLdI2 global_130
  loc_6DDADB: AddI2
  loc_6DDADC: CI4UI1
  loc_6DDADD: FLdPr Me
  loc_6DDAE0: MemLdRfVar from_stack_1.global_68
  loc_6DDAE3: Ary1LdFPR4
  loc_6DDAE4: LitI2_Byte 0
  loc_6DDAE6: CR8I2
  loc_6DDAE7: GtR4
  loc_6DDAE8: FFree1Ad var_8C
  loc_6DDAEB: BranchF loc_6DDB66
  loc_6DDAEE: FLdRfVar var_8E
  loc_6DDAF1: FLdPrThis
  loc_6DDAF2: VCallAd Control_ID_VScroll
  loc_6DDAF5: FStAdFunc var_8C
  loc_6DDAF8: FLdPr var_8C
  loc_6DDAFB:  = Me.Value
  loc_6DDB00: LitI4 1
  loc_6DDB05: LitI4 1
  loc_6DDB0A: LitVarStr var_B0, "#####0.00"
  loc_6DDB0F: FStVarCopyObj var_C0
  loc_6DDB12: FLdRfVar var_C0
  loc_6DDB15: FLdI2 var_8E
  loc_6DDB18: FLdPr Me
  loc_6DDB1B: MemLdI2 global_130
  loc_6DDB1E: AddI2
  loc_6DDB1F: CI4UI1
  loc_6DDB20: FLdPr Me
  loc_6DDB23: MemLdRfVar from_stack_1.global_68
  loc_6DDB26: Ary1LdRf
  loc_6DDB27: CVarRef
  loc_6DDB2C: ImpAdCallI2 Format$(, )
  loc_6DDB31: FStStrNoPop var_CC
  loc_6DDB34: FLdRfVar var_C8
  loc_6DDB37: FLdPr Me
  loc_6DDB3A: MemLdI2 global_130
  loc_6DDB3D: FLdPrThis
  loc_6DDB3E: VCallAd Control_ID_txtLitros
  loc_6DDB41: FStAdFunc var_C4
  loc_6DDB44: FLdPr var_C4
  loc_6DDB47: Set from_stack_2 = Me(from_stack_1)
  loc_6DDB4C: FLdPr var_C8
  loc_6DDB4F: Me.Text = from_stack_1
  loc_6DDB54: FFree1Str var_CC
  loc_6DDB57: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDB60: FFree1Var var_C0 = ""
  loc_6DDB63: Branch loc_6DDBDB
  loc_6DDB66: FLdRfVar var_8E
  loc_6DDB69: FLdPrThis
  loc_6DDB6A: VCallAd Control_ID_VScroll
  loc_6DDB6D: FStAdFunc var_8C
  loc_6DDB70: FLdPr var_8C
  loc_6DDB73:  = Me.Value
  loc_6DDB78: LitI4 1
  loc_6DDB7D: LitI4 1
  loc_6DDB82: LitVarStr var_B0, "#####0.00"
  loc_6DDB87: FStVarCopyObj var_C0
  loc_6DDB8A: FLdRfVar var_C0
  loc_6DDB8D: FLdI2 var_8E
  loc_6DDB90: FLdPr Me
  loc_6DDB93: MemLdI2 global_130
  loc_6DDB96: AddI2
  loc_6DDB97: CI4UI1
  loc_6DDB98: FLdPr Me
  loc_6DDB9B: MemLdRfVar from_stack_1.global_92
  loc_6DDB9E: Ary1LdRf
  loc_6DDB9F: CVarRef
  loc_6DDBA4: ImpAdCallI2 Format$(, )
  loc_6DDBA9: FStStrNoPop var_CC
  loc_6DDBAC: FLdRfVar var_C8
  loc_6DDBAF: FLdPr Me
  loc_6DDBB2: MemLdI2 global_130
  loc_6DDBB5: FLdPrThis
  loc_6DDBB6: VCallAd Control_ID_txtLitros
  loc_6DDBB9: FStAdFunc var_C4
  loc_6DDBBC: FLdPr var_C4
  loc_6DDBBF: Set from_stack_2 = Me(from_stack_1)
  loc_6DDBC4: FLdPr var_C8
  loc_6DDBC7: Me.Text = from_stack_1
  loc_6DDBCC: FFree1Str var_CC
  loc_6DDBCF: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDBD8: FFree1Var var_C0 = ""
  loc_6DDBDB: FLdPr Me
  loc_6DDBDE: MemLdI2 global_130
  loc_6DDBE1: LitI2_Byte 0
  loc_6DDBE3: EqI2
  loc_6DDBE4: BranchF loc_6DDC61
  loc_6DDBE7: FLdRfVar var_8E
  loc_6DDBEA: FLdPrThis
  loc_6DDBEB: VCallAd Control_ID_VScroll
  loc_6DDBEE: FStAdFunc var_8C
  loc_6DDBF1: FLdPr var_8C
  loc_6DDBF4:  = Me.Value
  loc_6DDBF9: FLdI2 var_8E
  loc_6DDBFC: LitI2_Byte 0
  loc_6DDBFE: EqI2
  loc_6DDBFF: FFree1Ad var_8C
  loc_6DDC02: BranchF loc_6DDC0D
  loc_6DDC05: ImpAdCallFPR4 Beep()
  loc_6DDC0A: Branch loc_6DDC3B
  loc_6DDC0D: FLdRfVar var_8E
  loc_6DDC10: FLdPrThis
  loc_6DDC11: VCallAd Control_ID_VScroll
  loc_6DDC14: FStAdFunc var_8C
  loc_6DDC17: FLdPr var_8C
  loc_6DDC1A:  = Me.Value
  loc_6DDC1F: FLdI2 var_8E
  loc_6DDC22: LitI2_Byte 1
  loc_6DDC24: SubI2
  loc_6DDC25: FLdPrThis
  loc_6DDC26: VCallAd Control_ID_VScroll
  loc_6DDC29: FStAdFunc var_C4
  loc_6DDC2C: FLdPr var_C4
  loc_6DDC2F: Me.Value = from_stack_1
  loc_6DDC34: FFreeAd var_8C = ""
  loc_6DDC3B: FLdRfVar var_C4
  loc_6DDC3E: LitI2_Byte 0
  loc_6DDC40: FLdPrThis
  loc_6DDC41: VCallAd Control_ID_txtLitros
  loc_6DDC44: FStAdFunc var_8C
  loc_6DDC47: FLdPr var_8C
  loc_6DDC4A: Set from_stack_2 = Me(from_stack_1)
  loc_6DDC4F: FLdPr var_C4
  loc_6DDC52: Me.SetFocus
  loc_6DDC57: FFreeAd var_8C = ""
  loc_6DDC5E: Branch loc_6DDC97
  loc_6DDC61: FLdPr Me
  loc_6DDC64: MemLdI2 global_130
  loc_6DDC67: LitI2_Byte 1
  loc_6DDC69: SubI2
  loc_6DDC6A: FLdPr Me
  loc_6DDC6D: MemStI2 global_130
  loc_6DDC70: FLdRfVar var_C4
  loc_6DDC73: FLdPr Me
  loc_6DDC76: MemLdI2 global_130
  loc_6DDC79: FLdPrThis
  loc_6DDC7A: VCallAd Control_ID_txtLitros
  loc_6DDC7D: FStAdFunc var_8C
  loc_6DDC80: FLdPr var_8C
  loc_6DDC83: Set from_stack_2 = Me(from_stack_1)
  loc_6DDC88: FLdPr var_C4
  loc_6DDC8B: Me.SetFocus
  loc_6DDC90: FFreeAd var_8C = ""
  loc_6DDC97: Branch loc_6DE65B
  loc_6DDC9A: FLdI2 var_86
  loc_6DDC9D: LitI4 &H28
  loc_6DDCA2: CI2I4
  loc_6DDCA3: EqI2
  loc_6DDCA4: BranchF loc_6DDE87
  loc_6DDCA7: LitI2_Byte 0
  loc_6DDCA9: IStI2 KeyCode
  loc_6DDCAC: FLdRfVar var_8E
  loc_6DDCAF: FLdPrThis
  loc_6DDCB0: VCallAd Control_ID_VScroll
  loc_6DDCB3: FStAdFunc var_8C
  loc_6DDCB6: FLdPr var_8C
  loc_6DDCB9:  = Me.Value
  loc_6DDCBE: FLdI2 var_8E
  loc_6DDCC1: FLdPr Me
  loc_6DDCC4: MemLdI2 global_130
  loc_6DDCC7: AddI2
  loc_6DDCC8: CI4UI1
  loc_6DDCC9: FLdPr Me
  loc_6DDCCC: MemLdRfVar from_stack_1.global_68
  loc_6DDCCF: Ary1LdFPR4
  loc_6DDCD0: LitI2_Byte 0
  loc_6DDCD2: CR8I2
  loc_6DDCD3: GtR4
  loc_6DDCD4: FFree1Ad var_8C
  loc_6DDCD7: BranchF loc_6DDD52
  loc_6DDCDA: FLdRfVar var_8E
  loc_6DDCDD: FLdPrThis
  loc_6DDCDE: VCallAd Control_ID_VScroll
  loc_6DDCE1: FStAdFunc var_8C
  loc_6DDCE4: FLdPr var_8C
  loc_6DDCE7:  = Me.Value
  loc_6DDCEC: LitI4 1
  loc_6DDCF1: LitI4 1
  loc_6DDCF6: LitVarStr var_B0, "#####0.00"
  loc_6DDCFB: FStVarCopyObj var_C0
  loc_6DDCFE: FLdRfVar var_C0
  loc_6DDD01: FLdI2 var_8E
  loc_6DDD04: FLdPr Me
  loc_6DDD07: MemLdI2 global_130
  loc_6DDD0A: AddI2
  loc_6DDD0B: CI4UI1
  loc_6DDD0C: FLdPr Me
  loc_6DDD0F: MemLdRfVar from_stack_1.global_68
  loc_6DDD12: Ary1LdRf
  loc_6DDD13: CVarRef
  loc_6DDD18: ImpAdCallI2 Format$(, )
  loc_6DDD1D: FStStrNoPop var_CC
  loc_6DDD20: FLdRfVar var_C8
  loc_6DDD23: FLdPr Me
  loc_6DDD26: MemLdI2 global_130
  loc_6DDD29: FLdPrThis
  loc_6DDD2A: VCallAd Control_ID_txtLitros
  loc_6DDD2D: FStAdFunc var_C4
  loc_6DDD30: FLdPr var_C4
  loc_6DDD33: Set from_stack_2 = Me(from_stack_1)
  loc_6DDD38: FLdPr var_C8
  loc_6DDD3B: Me.Text = from_stack_1
  loc_6DDD40: FFree1Str var_CC
  loc_6DDD43: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDD4C: FFree1Var var_C0 = ""
  loc_6DDD4F: Branch loc_6DDDC7
  loc_6DDD52: FLdRfVar var_8E
  loc_6DDD55: FLdPrThis
  loc_6DDD56: VCallAd Control_ID_VScroll
  loc_6DDD59: FStAdFunc var_8C
  loc_6DDD5C: FLdPr var_8C
  loc_6DDD5F:  = Me.Value
  loc_6DDD64: LitI4 1
  loc_6DDD69: LitI4 1
  loc_6DDD6E: LitVarStr var_B0, "#####0.00"
  loc_6DDD73: FStVarCopyObj var_C0
  loc_6DDD76: FLdRfVar var_C0
  loc_6DDD79: FLdI2 var_8E
  loc_6DDD7C: FLdPr Me
  loc_6DDD7F: MemLdI2 global_130
  loc_6DDD82: AddI2
  loc_6DDD83: CI4UI1
  loc_6DDD84: FLdPr Me
  loc_6DDD87: MemLdRfVar from_stack_1.global_92
  loc_6DDD8A: Ary1LdRf
  loc_6DDD8B: CVarRef
  loc_6DDD90: ImpAdCallI2 Format$(, )
  loc_6DDD95: FStStrNoPop var_CC
  loc_6DDD98: FLdRfVar var_C8
  loc_6DDD9B: FLdPr Me
  loc_6DDD9E: MemLdI2 global_130
  loc_6DDDA1: FLdPrThis
  loc_6DDDA2: VCallAd Control_ID_txtLitros
  loc_6DDDA5: FStAdFunc var_C4
  loc_6DDDA8: FLdPr var_C4
  loc_6DDDAB: Set from_stack_2 = Me(from_stack_1)
  loc_6DDDB0: FLdPr var_C8
  loc_6DDDB3: Me.Text = from_stack_1
  loc_6DDDB8: FFree1Str var_CC
  loc_6DDDBB: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDDC4: FFree1Var var_C0 = ""
  loc_6DDDC7: FLdPr Me
  loc_6DDDCA: MemLdI2 global_130
  loc_6DDDCD: LitI2_Byte &HA
  loc_6DDDCF: EqI2
  loc_6DDDD0: BranchF loc_6DDE4E
  loc_6DDDD3: FLdRfVar var_8E
  loc_6DDDD6: FLdPrThis
  loc_6DDDD7: VCallAd Control_ID_VScroll
  loc_6DDDDA: FStAdFunc var_8C
  loc_6DDDDD: FLdPr var_8C
  loc_6DDDE0:  = Me.Value
  loc_6DDDE5: FLdI2 var_8E
  loc_6DDDE8: LitI2 5990
  loc_6DDDEB: EqI2
  loc_6DDDEC: FFree1Ad var_8C
  loc_6DDDEF: BranchF loc_6DDDFA
  loc_6DDDF2: ImpAdCallFPR4 Beep()
  loc_6DDDF7: Branch loc_6DDE28
  loc_6DDDFA: FLdRfVar var_8E
  loc_6DDDFD: FLdPrThis
  loc_6DDDFE: VCallAd Control_ID_VScroll
  loc_6DDE01: FStAdFunc var_8C
  loc_6DDE04: FLdPr var_8C
  loc_6DDE07:  = Me.Value
  loc_6DDE0C: FLdI2 var_8E
  loc_6DDE0F: LitI2_Byte 1
  loc_6DDE11: AddI2
  loc_6DDE12: FLdPrThis
  loc_6DDE13: VCallAd Control_ID_VScroll
  loc_6DDE16: FStAdFunc var_C4
  loc_6DDE19: FLdPr var_C4
  loc_6DDE1C: Me.Value = from_stack_1
  loc_6DDE21: FFreeAd var_8C = ""
  loc_6DDE28: FLdRfVar var_C4
  loc_6DDE2B: LitI2_Byte &HA
  loc_6DDE2D: FLdPrThis
  loc_6DDE2E: VCallAd Control_ID_txtLitros
  loc_6DDE31: FStAdFunc var_8C
  loc_6DDE34: FLdPr var_8C
  loc_6DDE37: Set from_stack_2 = Me(from_stack_1)
  loc_6DDE3C: FLdPr var_C4
  loc_6DDE3F: Me.SetFocus
  loc_6DDE44: FFreeAd var_8C = ""
  loc_6DDE4B: Branch loc_6DDE84
  loc_6DDE4E: FLdPr Me
  loc_6DDE51: MemLdI2 global_130
  loc_6DDE54: LitI2_Byte 1
  loc_6DDE56: AddI2
  loc_6DDE57: FLdPr Me
  loc_6DDE5A: MemStI2 global_130
  loc_6DDE5D: FLdRfVar var_C4
  loc_6DDE60: FLdPr Me
  loc_6DDE63: MemLdI2 global_130
  loc_6DDE66: FLdPrThis
  loc_6DDE67: VCallAd Control_ID_txtLitros
  loc_6DDE6A: FStAdFunc var_8C
  loc_6DDE6D: FLdPr var_8C
  loc_6DDE70: Set from_stack_2 = Me(from_stack_1)
  loc_6DDE75: FLdPr var_C4
  loc_6DDE78: Me.SetFocus
  loc_6DDE7D: FFreeAd var_8C = ""
  loc_6DDE84: Branch loc_6DE65B
  loc_6DDE87: FLdI2 var_86
  loc_6DDE8A: LitI4 &H21
  loc_6DDE8F: CI2I4
  loc_6DDE90: EqI2
  loc_6DDE91: BranchF loc_6DE0A1
  loc_6DDE94: LitI2_Byte 0
  loc_6DDE96: IStI2 KeyCode
  loc_6DDE99: FLdRfVar var_8E
  loc_6DDE9C: FLdPrThis
  loc_6DDE9D: VCallAd Control_ID_VScroll
  loc_6DDEA0: FStAdFunc var_8C
  loc_6DDEA3: FLdPr var_8C
  loc_6DDEA6:  = Me.Value
  loc_6DDEAB: FLdI2 var_8E
  loc_6DDEAE: FLdPr Me
  loc_6DDEB1: MemLdI2 global_130
  loc_6DDEB4: AddI2
  loc_6DDEB5: CI4UI1
  loc_6DDEB6: FLdPr Me
  loc_6DDEB9: MemLdRfVar from_stack_1.global_68
  loc_6DDEBC: Ary1LdFPR4
  loc_6DDEBD: LitI2_Byte 0
  loc_6DDEBF: CR8I2
  loc_6DDEC0: GtR4
  loc_6DDEC1: FFree1Ad var_8C
  loc_6DDEC4: BranchF loc_6DDF3F
  loc_6DDEC7: FLdRfVar var_8E
  loc_6DDECA: FLdPrThis
  loc_6DDECB: VCallAd Control_ID_VScroll
  loc_6DDECE: FStAdFunc var_8C
  loc_6DDED1: FLdPr var_8C
  loc_6DDED4:  = Me.Value
  loc_6DDED9: LitI4 1
  loc_6DDEDE: LitI4 1
  loc_6DDEE3: LitVarStr var_B0, "#####0.00"
  loc_6DDEE8: FStVarCopyObj var_C0
  loc_6DDEEB: FLdRfVar var_C0
  loc_6DDEEE: FLdI2 var_8E
  loc_6DDEF1: FLdPr Me
  loc_6DDEF4: MemLdI2 global_130
  loc_6DDEF7: AddI2
  loc_6DDEF8: CI4UI1
  loc_6DDEF9: FLdPr Me
  loc_6DDEFC: MemLdRfVar from_stack_1.global_68
  loc_6DDEFF: Ary1LdRf
  loc_6DDF00: CVarRef
  loc_6DDF05: ImpAdCallI2 Format$(, )
  loc_6DDF0A: FStStrNoPop var_CC
  loc_6DDF0D: FLdRfVar var_C8
  loc_6DDF10: FLdPr Me
  loc_6DDF13: MemLdI2 global_130
  loc_6DDF16: FLdPrThis
  loc_6DDF17: VCallAd Control_ID_txtLitros
  loc_6DDF1A: FStAdFunc var_C4
  loc_6DDF1D: FLdPr var_C4
  loc_6DDF20: Set from_stack_2 = Me(from_stack_1)
  loc_6DDF25: FLdPr var_C8
  loc_6DDF28: Me.Text = from_stack_1
  loc_6DDF2D: FFree1Str var_CC
  loc_6DDF30: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDF39: FFree1Var var_C0 = ""
  loc_6DDF3C: Branch loc_6DDFB4
  loc_6DDF3F: FLdRfVar var_8E
  loc_6DDF42: FLdPrThis
  loc_6DDF43: VCallAd Control_ID_VScroll
  loc_6DDF46: FStAdFunc var_8C
  loc_6DDF49: FLdPr var_8C
  loc_6DDF4C:  = Me.Value
  loc_6DDF51: LitI4 1
  loc_6DDF56: LitI4 1
  loc_6DDF5B: LitVarStr var_B0, "#####0.00"
  loc_6DDF60: FStVarCopyObj var_C0
  loc_6DDF63: FLdRfVar var_C0
  loc_6DDF66: FLdI2 var_8E
  loc_6DDF69: FLdPr Me
  loc_6DDF6C: MemLdI2 global_130
  loc_6DDF6F: AddI2
  loc_6DDF70: CI4UI1
  loc_6DDF71: FLdPr Me
  loc_6DDF74: MemLdRfVar from_stack_1.global_92
  loc_6DDF77: Ary1LdRf
  loc_6DDF78: CVarRef
  loc_6DDF7D: ImpAdCallI2 Format$(, )
  loc_6DDF82: FStStrNoPop var_CC
  loc_6DDF85: FLdRfVar var_C8
  loc_6DDF88: FLdPr Me
  loc_6DDF8B: MemLdI2 global_130
  loc_6DDF8E: FLdPrThis
  loc_6DDF8F: VCallAd Control_ID_txtLitros
  loc_6DDF92: FStAdFunc var_C4
  loc_6DDF95: FLdPr var_C4
  loc_6DDF98: Set from_stack_2 = Me(from_stack_1)
  loc_6DDF9D: FLdPr var_C8
  loc_6DDFA0: Me.Text = from_stack_1
  loc_6DDFA5: FFree1Str var_CC
  loc_6DDFA8: FFreeAd var_8C = "": var_C4 = ""
  loc_6DDFB1: FFree1Var var_C0 = ""
  loc_6DDFB4: FLdPr Me
  loc_6DDFB7: MemLdI2 global_130
  loc_6DDFBA: LitI2_Byte 0
  loc_6DDFBC: EqI2
  loc_6DDFBD: BranchF loc_6DE06F
  loc_6DDFC0: FLdRfVar var_8E
  loc_6DDFC3: FLdPrThis
  loc_6DDFC4: VCallAd Control_ID_VScroll
  loc_6DDFC7: FStAdFunc var_8C
  loc_6DDFCA: FLdPr var_8C
  loc_6DDFCD:  = Me.Value
  loc_6DDFD2: FLdI2 var_8E
  loc_6DDFD5: LitI2_Byte 0
  loc_6DDFD7: EqI2
  loc_6DDFD8: FFree1Ad var_8C
  loc_6DDFDB: BranchF loc_6DDFE6
  loc_6DDFDE: ImpAdCallFPR4 Beep()
  loc_6DDFE3: Branch loc_6DE049
  loc_6DDFE6: FLdRfVar var_8E
  loc_6DDFE9: FLdPrThis
  loc_6DDFEA: VCallAd Control_ID_VScroll
  loc_6DDFED: FStAdFunc var_8C
  loc_6DDFF0: FLdPr var_8C
  loc_6DDFF3:  = Me.Value
  loc_6DDFF8: FLdI2 var_8E
  loc_6DDFFB: LitI2_Byte &HA
  loc_6DDFFD: GtI2
  loc_6DDFFE: FFree1Ad var_8C
  loc_6DE001: BranchF loc_6DE035
  loc_6DE004: FLdRfVar var_8E
  loc_6DE007: FLdPrThis
  loc_6DE008: VCallAd Control_ID_VScroll
  loc_6DE00B: FStAdFunc var_8C
  loc_6DE00E: FLdPr var_8C
  loc_6DE011:  = Me.Value
  loc_6DE016: FLdI2 var_8E
  loc_6DE019: LitI2_Byte &HA
  loc_6DE01B: SubI2
  loc_6DE01C: FLdPrThis
  loc_6DE01D: VCallAd Control_ID_VScroll
  loc_6DE020: FStAdFunc var_C4
  loc_6DE023: FLdPr var_C4
  loc_6DE026: Me.Value = from_stack_1
  loc_6DE02B: FFreeAd var_8C = ""
  loc_6DE032: Branch loc_6DE049
  loc_6DE035: LitI2_Byte 0
  loc_6DE037: FLdPrThis
  loc_6DE038: VCallAd Control_ID_VScroll
  loc_6DE03B: FStAdFunc var_8C
  loc_6DE03E: FLdPr var_8C
  loc_6DE041: Me.Value = from_stack_1
  loc_6DE046: FFree1Ad var_8C
  loc_6DE049: FLdRfVar var_C4
  loc_6DE04C: LitI2_Byte 0
  loc_6DE04E: FLdPrThis
  loc_6DE04F: VCallAd Control_ID_txtLitros
  loc_6DE052: FStAdFunc var_8C
  loc_6DE055: FLdPr var_8C
  loc_6DE058: Set from_stack_2 = Me(from_stack_1)
  loc_6DE05D: FLdPr var_C4
  loc_6DE060: Me.SetFocus
  loc_6DE065: FFreeAd var_8C = ""
  loc_6DE06C: Branch loc_6DE09E
  loc_6DE06F: LitI2_Byte 0
  loc_6DE071: FLdPr Me
  loc_6DE074: MemStI2 global_130
  loc_6DE077: FLdRfVar var_C4
  loc_6DE07A: FLdPr Me
  loc_6DE07D: MemLdI2 global_130
  loc_6DE080: FLdPrThis
  loc_6DE081: VCallAd Control_ID_txtLitros
  loc_6DE084: FStAdFunc var_8C
  loc_6DE087: FLdPr var_8C
  loc_6DE08A: Set from_stack_2 = Me(from_stack_1)
  loc_6DE08F: FLdPr var_C4
  loc_6DE092: Me.SetFocus
  loc_6DE097: FFreeAd var_8C = ""
  loc_6DE09E: Branch loc_6DE65B
  loc_6DE0A1: FLdI2 var_86
  loc_6DE0A4: LitI4 &H22
  loc_6DE0A9: CI2I4
  loc_6DE0AA: EqI2
  loc_6DE0AB: BranchF loc_6DE2BE
  loc_6DE0AE: LitI2_Byte 0
  loc_6DE0B0: IStI2 KeyCode
  loc_6DE0B3: FLdRfVar var_8E
  loc_6DE0B6: FLdPrThis
  loc_6DE0B7: VCallAd Control_ID_VScroll
  loc_6DE0BA: FStAdFunc var_8C
  loc_6DE0BD: FLdPr var_8C
  loc_6DE0C0:  = Me.Value
  loc_6DE0C5: FLdI2 var_8E
  loc_6DE0C8: FLdPr Me
  loc_6DE0CB: MemLdI2 global_130
  loc_6DE0CE: AddI2
  loc_6DE0CF: CI4UI1
  loc_6DE0D0: FLdPr Me
  loc_6DE0D3: MemLdRfVar from_stack_1.global_68
  loc_6DE0D6: Ary1LdFPR4
  loc_6DE0D7: LitI2_Byte 0
  loc_6DE0D9: CR8I2
  loc_6DE0DA: GtR4
  loc_6DE0DB: FFree1Ad var_8C
  loc_6DE0DE: BranchF loc_6DE159
  loc_6DE0E1: FLdRfVar var_8E
  loc_6DE0E4: FLdPrThis
  loc_6DE0E5: VCallAd Control_ID_VScroll
  loc_6DE0E8: FStAdFunc var_8C
  loc_6DE0EB: FLdPr var_8C
  loc_6DE0EE:  = Me.Value
  loc_6DE0F3: LitI4 1
  loc_6DE0F8: LitI4 1
  loc_6DE0FD: LitVarStr var_B0, "#####0.00"
  loc_6DE102: FStVarCopyObj var_C0
  loc_6DE105: FLdRfVar var_C0
  loc_6DE108: FLdI2 var_8E
  loc_6DE10B: FLdPr Me
  loc_6DE10E: MemLdI2 global_130
  loc_6DE111: AddI2
  loc_6DE112: CI4UI1
  loc_6DE113: FLdPr Me
  loc_6DE116: MemLdRfVar from_stack_1.global_68
  loc_6DE119: Ary1LdRf
  loc_6DE11A: CVarRef
  loc_6DE11F: ImpAdCallI2 Format$(, )
  loc_6DE124: FStStrNoPop var_CC
  loc_6DE127: FLdRfVar var_C8
  loc_6DE12A: FLdPr Me
  loc_6DE12D: MemLdI2 global_130
  loc_6DE130: FLdPrThis
  loc_6DE131: VCallAd Control_ID_txtLitros
  loc_6DE134: FStAdFunc var_C4
  loc_6DE137: FLdPr var_C4
  loc_6DE13A: Set from_stack_2 = Me(from_stack_1)
  loc_6DE13F: FLdPr var_C8
  loc_6DE142: Me.Text = from_stack_1
  loc_6DE147: FFree1Str var_CC
  loc_6DE14A: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE153: FFree1Var var_C0 = ""
  loc_6DE156: Branch loc_6DE1CE
  loc_6DE159: FLdRfVar var_8E
  loc_6DE15C: FLdPrThis
  loc_6DE15D: VCallAd Control_ID_VScroll
  loc_6DE160: FStAdFunc var_8C
  loc_6DE163: FLdPr var_8C
  loc_6DE166:  = Me.Value
  loc_6DE16B: LitI4 1
  loc_6DE170: LitI4 1
  loc_6DE175: LitVarStr var_B0, "#####0.00"
  loc_6DE17A: FStVarCopyObj var_C0
  loc_6DE17D: FLdRfVar var_C0
  loc_6DE180: FLdI2 var_8E
  loc_6DE183: FLdPr Me
  loc_6DE186: MemLdI2 global_130
  loc_6DE189: AddI2
  loc_6DE18A: CI4UI1
  loc_6DE18B: FLdPr Me
  loc_6DE18E: MemLdRfVar from_stack_1.global_92
  loc_6DE191: Ary1LdRf
  loc_6DE192: CVarRef
  loc_6DE197: ImpAdCallI2 Format$(, )
  loc_6DE19C: FStStrNoPop var_CC
  loc_6DE19F: FLdRfVar var_C8
  loc_6DE1A2: FLdPr Me
  loc_6DE1A5: MemLdI2 global_130
  loc_6DE1A8: FLdPrThis
  loc_6DE1A9: VCallAd Control_ID_txtLitros
  loc_6DE1AC: FStAdFunc var_C4
  loc_6DE1AF: FLdPr var_C4
  loc_6DE1B2: Set from_stack_2 = Me(from_stack_1)
  loc_6DE1B7: FLdPr var_C8
  loc_6DE1BA: Me.Text = from_stack_1
  loc_6DE1BF: FFree1Str var_CC
  loc_6DE1C2: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE1CB: FFree1Var var_C0 = ""
  loc_6DE1CE: FLdPr Me
  loc_6DE1D1: MemLdI2 global_130
  loc_6DE1D4: LitI2_Byte &HA
  loc_6DE1D6: EqI2
  loc_6DE1D7: BranchF loc_6DE28C
  loc_6DE1DA: FLdRfVar var_8E
  loc_6DE1DD: FLdPrThis
  loc_6DE1DE: VCallAd Control_ID_VScroll
  loc_6DE1E1: FStAdFunc var_8C
  loc_6DE1E4: FLdPr var_8C
  loc_6DE1E7:  = Me.Value
  loc_6DE1EC: FLdI2 var_8E
  loc_6DE1EF: LitI2 5990
  loc_6DE1F2: EqI2
  loc_6DE1F3: FFree1Ad var_8C
  loc_6DE1F6: BranchF loc_6DE201
  loc_6DE1F9: ImpAdCallFPR4 Beep()
  loc_6DE1FE: Branch loc_6DE266
  loc_6DE201: FLdRfVar var_8E
  loc_6DE204: FLdPrThis
  loc_6DE205: VCallAd Control_ID_VScroll
  loc_6DE208: FStAdFunc var_8C
  loc_6DE20B: FLdPr var_8C
  loc_6DE20E:  = Me.Value
  loc_6DE213: FLdI2 var_8E
  loc_6DE216: LitI2 5980
  loc_6DE219: LeI2
  loc_6DE21A: FFree1Ad var_8C
  loc_6DE21D: BranchF loc_6DE251
  loc_6DE220: FLdRfVar var_8E
  loc_6DE223: FLdPrThis
  loc_6DE224: VCallAd Control_ID_VScroll
  loc_6DE227: FStAdFunc var_8C
  loc_6DE22A: FLdPr var_8C
  loc_6DE22D:  = Me.Value
  loc_6DE232: FLdI2 var_8E
  loc_6DE235: LitI2_Byte &HA
  loc_6DE237: AddI2
  loc_6DE238: FLdPrThis
  loc_6DE239: VCallAd Control_ID_VScroll
  loc_6DE23C: FStAdFunc var_C4
  loc_6DE23F: FLdPr var_C4
  loc_6DE242: Me.Value = from_stack_1
  loc_6DE247: FFreeAd var_8C = ""
  loc_6DE24E: Branch loc_6DE266
  loc_6DE251: LitI2 5990
  loc_6DE254: FLdPrThis
  loc_6DE255: VCallAd Control_ID_VScroll
  loc_6DE258: FStAdFunc var_8C
  loc_6DE25B: FLdPr var_8C
  loc_6DE25E: Me.Value = from_stack_1
  loc_6DE263: FFree1Ad var_8C
  loc_6DE266: FLdRfVar var_C4
  loc_6DE269: LitI2_Byte &HA
  loc_6DE26B: FLdPrThis
  loc_6DE26C: VCallAd Control_ID_txtLitros
  loc_6DE26F: FStAdFunc var_8C
  loc_6DE272: FLdPr var_8C
  loc_6DE275: Set from_stack_2 = Me(from_stack_1)
  loc_6DE27A: FLdPr var_C4
  loc_6DE27D: Me.SetFocus
  loc_6DE282: FFreeAd var_8C = ""
  loc_6DE289: Branch loc_6DE2BB
  loc_6DE28C: LitI2_Byte &HA
  loc_6DE28E: FLdPr Me
  loc_6DE291: MemStI2 global_130
  loc_6DE294: FLdRfVar var_C4
  loc_6DE297: FLdPr Me
  loc_6DE29A: MemLdI2 global_130
  loc_6DE29D: FLdPrThis
  loc_6DE29E: VCallAd Control_ID_txtLitros
  loc_6DE2A1: FStAdFunc var_8C
  loc_6DE2A4: FLdPr var_8C
  loc_6DE2A7: Set from_stack_2 = Me(from_stack_1)
  loc_6DE2AC: FLdPr var_C4
  loc_6DE2AF: Me.SetFocus
  loc_6DE2B4: FFreeAd var_8C = ""
  loc_6DE2BB: Branch loc_6DE65B
  loc_6DE2BE: FLdI2 var_86
  loc_6DE2C1: LitI4 &H24
  loc_6DE2C6: CI2I4
  loc_6DE2C7: EqI2
  loc_6DE2C8: BranchF loc_6DE489
  loc_6DE2CB: LitI2_Byte 0
  loc_6DE2CD: IStI2 KeyCode
  loc_6DE2D0: FLdRfVar var_8E
  loc_6DE2D3: FLdPrThis
  loc_6DE2D4: VCallAd Control_ID_VScroll
  loc_6DE2D7: FStAdFunc var_8C
  loc_6DE2DA: FLdPr var_8C
  loc_6DE2DD:  = Me.Value
  loc_6DE2E2: FLdI2 var_8E
  loc_6DE2E5: FLdPr Me
  loc_6DE2E8: MemLdI2 global_130
  loc_6DE2EB: AddI2
  loc_6DE2EC: CI4UI1
  loc_6DE2ED: FLdPr Me
  loc_6DE2F0: MemLdRfVar from_stack_1.global_68
  loc_6DE2F3: Ary1LdFPR4
  loc_6DE2F4: LitI2_Byte 0
  loc_6DE2F6: CR8I2
  loc_6DE2F7: GtR4
  loc_6DE2F8: FFree1Ad var_8C
  loc_6DE2FB: BranchF loc_6DE376
  loc_6DE2FE: FLdRfVar var_8E
  loc_6DE301: FLdPrThis
  loc_6DE302: VCallAd Control_ID_VScroll
  loc_6DE305: FStAdFunc var_8C
  loc_6DE308: FLdPr var_8C
  loc_6DE30B:  = Me.Value
  loc_6DE310: LitI4 1
  loc_6DE315: LitI4 1
  loc_6DE31A: LitVarStr var_B0, "#####0.00"
  loc_6DE31F: FStVarCopyObj var_C0
  loc_6DE322: FLdRfVar var_C0
  loc_6DE325: FLdI2 var_8E
  loc_6DE328: FLdPr Me
  loc_6DE32B: MemLdI2 global_130
  loc_6DE32E: AddI2
  loc_6DE32F: CI4UI1
  loc_6DE330: FLdPr Me
  loc_6DE333: MemLdRfVar from_stack_1.global_68
  loc_6DE336: Ary1LdRf
  loc_6DE337: CVarRef
  loc_6DE33C: ImpAdCallI2 Format$(, )
  loc_6DE341: FStStrNoPop var_CC
  loc_6DE344: FLdRfVar var_C8
  loc_6DE347: FLdPr Me
  loc_6DE34A: MemLdI2 global_130
  loc_6DE34D: FLdPrThis
  loc_6DE34E: VCallAd Control_ID_txtLitros
  loc_6DE351: FStAdFunc var_C4
  loc_6DE354: FLdPr var_C4
  loc_6DE357: Set from_stack_2 = Me(from_stack_1)
  loc_6DE35C: FLdPr var_C8
  loc_6DE35F: Me.Text = from_stack_1
  loc_6DE364: FFree1Str var_CC
  loc_6DE367: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE370: FFree1Var var_C0 = ""
  loc_6DE373: Branch loc_6DE3EB
  loc_6DE376: FLdRfVar var_8E
  loc_6DE379: FLdPrThis
  loc_6DE37A: VCallAd Control_ID_VScroll
  loc_6DE37D: FStAdFunc var_8C
  loc_6DE380: FLdPr var_8C
  loc_6DE383:  = Me.Value
  loc_6DE388: LitI4 1
  loc_6DE38D: LitI4 1
  loc_6DE392: LitVarStr var_B0, "#####0.00"
  loc_6DE397: FStVarCopyObj var_C0
  loc_6DE39A: FLdRfVar var_C0
  loc_6DE39D: FLdI2 var_8E
  loc_6DE3A0: FLdPr Me
  loc_6DE3A3: MemLdI2 global_130
  loc_6DE3A6: AddI2
  loc_6DE3A7: CI4UI1
  loc_6DE3A8: FLdPr Me
  loc_6DE3AB: MemLdRfVar from_stack_1.global_92
  loc_6DE3AE: Ary1LdRf
  loc_6DE3AF: CVarRef
  loc_6DE3B4: ImpAdCallI2 Format$(, )
  loc_6DE3B9: FStStrNoPop var_CC
  loc_6DE3BC: FLdRfVar var_C8
  loc_6DE3BF: FLdPr Me
  loc_6DE3C2: MemLdI2 global_130
  loc_6DE3C5: FLdPrThis
  loc_6DE3C6: VCallAd Control_ID_txtLitros
  loc_6DE3C9: FStAdFunc var_C4
  loc_6DE3CC: FLdPr var_C4
  loc_6DE3CF: Set from_stack_2 = Me(from_stack_1)
  loc_6DE3D4: FLdPr var_C8
  loc_6DE3D7: Me.Text = from_stack_1
  loc_6DE3DC: FFree1Str var_CC
  loc_6DE3DF: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE3E8: FFree1Var var_C0 = ""
  loc_6DE3EB: FLdPr Me
  loc_6DE3EE: MemLdI2 global_130
  loc_6DE3F1: LitI2_Byte 0
  loc_6DE3F3: EqI2
  loc_6DE3F4: BranchF loc_6DE457
  loc_6DE3F7: FLdRfVar var_8E
  loc_6DE3FA: FLdPrThis
  loc_6DE3FB: VCallAd Control_ID_VScroll
  loc_6DE3FE: FStAdFunc var_8C
  loc_6DE401: FLdPr var_8C
  loc_6DE404:  = Me.Value
  loc_6DE409: FLdI2 var_8E
  loc_6DE40C: LitI2_Byte 0
  loc_6DE40E: EqI2
  loc_6DE40F: FFree1Ad var_8C
  loc_6DE412: BranchF loc_6DE41D
  loc_6DE415: ImpAdCallFPR4 Beep()
  loc_6DE41A: Branch loc_6DE431
  loc_6DE41D: LitI2_Byte 0
  loc_6DE41F: FLdPrThis
  loc_6DE420: VCallAd Control_ID_VScroll
  loc_6DE423: FStAdFunc var_8C
  loc_6DE426: FLdPr var_8C
  loc_6DE429: Me.Value = from_stack_1
  loc_6DE42E: FFree1Ad var_8C
  loc_6DE431: FLdRfVar var_C4
  loc_6DE434: LitI2_Byte 0
  loc_6DE436: FLdPrThis
  loc_6DE437: VCallAd Control_ID_txtLitros
  loc_6DE43A: FStAdFunc var_8C
  loc_6DE43D: FLdPr var_8C
  loc_6DE440: Set from_stack_2 = Me(from_stack_1)
  loc_6DE445: FLdPr var_C4
  loc_6DE448: Me.SetFocus
  loc_6DE44D: FFreeAd var_8C = ""
  loc_6DE454: Branch loc_6DE486
  loc_6DE457: LitI2_Byte 0
  loc_6DE459: FLdPr Me
  loc_6DE45C: MemStI2 global_130
  loc_6DE45F: FLdRfVar var_C4
  loc_6DE462: FLdPr Me
  loc_6DE465: MemLdI2 global_130
  loc_6DE468: FLdPrThis
  loc_6DE469: VCallAd Control_ID_txtLitros
  loc_6DE46C: FStAdFunc var_8C
  loc_6DE46F: FLdPr var_8C
  loc_6DE472: Set from_stack_2 = Me(from_stack_1)
  loc_6DE477: FLdPr var_C4
  loc_6DE47A: Me.SetFocus
  loc_6DE47F: FFreeAd var_8C = ""
  loc_6DE486: Branch loc_6DE65B
  loc_6DE489: FLdI2 var_86
  loc_6DE48C: LitI4 &H23
  loc_6DE491: CI2I4
  loc_6DE492: EqI2
  loc_6DE493: BranchF loc_6DE656
  loc_6DE496: LitI2_Byte 0
  loc_6DE498: IStI2 KeyCode
  loc_6DE49B: FLdRfVar var_8E
  loc_6DE49E: FLdPrThis
  loc_6DE49F: VCallAd Control_ID_VScroll
  loc_6DE4A2: FStAdFunc var_8C
  loc_6DE4A5: FLdPr var_8C
  loc_6DE4A8:  = Me.Value
  loc_6DE4AD: FLdI2 var_8E
  loc_6DE4B0: FLdPr Me
  loc_6DE4B3: MemLdI2 global_130
  loc_6DE4B6: AddI2
  loc_6DE4B7: CI4UI1
  loc_6DE4B8: FLdPr Me
  loc_6DE4BB: MemLdRfVar from_stack_1.global_68
  loc_6DE4BE: Ary1LdFPR4
  loc_6DE4BF: LitI2_Byte 0
  loc_6DE4C1: CR8I2
  loc_6DE4C2: GtR4
  loc_6DE4C3: FFree1Ad var_8C
  loc_6DE4C6: BranchF loc_6DE541
  loc_6DE4C9: FLdRfVar var_8E
  loc_6DE4CC: FLdPrThis
  loc_6DE4CD: VCallAd Control_ID_VScroll
  loc_6DE4D0: FStAdFunc var_8C
  loc_6DE4D3: FLdPr var_8C
  loc_6DE4D6:  = Me.Value
  loc_6DE4DB: LitI4 1
  loc_6DE4E0: LitI4 1
  loc_6DE4E5: LitVarStr var_B0, "#####0.00"
  loc_6DE4EA: FStVarCopyObj var_C0
  loc_6DE4ED: FLdRfVar var_C0
  loc_6DE4F0: FLdI2 var_8E
  loc_6DE4F3: FLdPr Me
  loc_6DE4F6: MemLdI2 global_130
  loc_6DE4F9: AddI2
  loc_6DE4FA: CI4UI1
  loc_6DE4FB: FLdPr Me
  loc_6DE4FE: MemLdRfVar from_stack_1.global_68
  loc_6DE501: Ary1LdRf
  loc_6DE502: CVarRef
  loc_6DE507: ImpAdCallI2 Format$(, )
  loc_6DE50C: FStStrNoPop var_CC
  loc_6DE50F: FLdRfVar var_C8
  loc_6DE512: FLdPr Me
  loc_6DE515: MemLdI2 global_130
  loc_6DE518: FLdPrThis
  loc_6DE519: VCallAd Control_ID_txtLitros
  loc_6DE51C: FStAdFunc var_C4
  loc_6DE51F: FLdPr var_C4
  loc_6DE522: Set from_stack_2 = Me(from_stack_1)
  loc_6DE527: FLdPr var_C8
  loc_6DE52A: Me.Text = from_stack_1
  loc_6DE52F: FFree1Str var_CC
  loc_6DE532: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE53B: FFree1Var var_C0 = ""
  loc_6DE53E: Branch loc_6DE5B6
  loc_6DE541: FLdRfVar var_8E
  loc_6DE544: FLdPrThis
  loc_6DE545: VCallAd Control_ID_VScroll
  loc_6DE548: FStAdFunc var_8C
  loc_6DE54B: FLdPr var_8C
  loc_6DE54E:  = Me.Value
  loc_6DE553: LitI4 1
  loc_6DE558: LitI4 1
  loc_6DE55D: LitVarStr var_B0, "#####0.00"
  loc_6DE562: FStVarCopyObj var_C0
  loc_6DE565: FLdRfVar var_C0
  loc_6DE568: FLdI2 var_8E
  loc_6DE56B: FLdPr Me
  loc_6DE56E: MemLdI2 global_130
  loc_6DE571: AddI2
  loc_6DE572: CI4UI1
  loc_6DE573: FLdPr Me
  loc_6DE576: MemLdRfVar from_stack_1.global_92
  loc_6DE579: Ary1LdRf
  loc_6DE57A: CVarRef
  loc_6DE57F: ImpAdCallI2 Format$(, )
  loc_6DE584: FStStrNoPop var_CC
  loc_6DE587: FLdRfVar var_C8
  loc_6DE58A: FLdPr Me
  loc_6DE58D: MemLdI2 global_130
  loc_6DE590: FLdPrThis
  loc_6DE591: VCallAd Control_ID_txtLitros
  loc_6DE594: FStAdFunc var_C4
  loc_6DE597: FLdPr var_C4
  loc_6DE59A: Set from_stack_2 = Me(from_stack_1)
  loc_6DE59F: FLdPr var_C8
  loc_6DE5A2: Me.Text = from_stack_1
  loc_6DE5A7: FFree1Str var_CC
  loc_6DE5AA: FFreeAd var_8C = "": var_C4 = ""
  loc_6DE5B3: FFree1Var var_C0 = ""
  loc_6DE5B6: FLdPr Me
  loc_6DE5B9: MemLdI2 global_130
  loc_6DE5BC: LitI2_Byte &HA
  loc_6DE5BE: EqI2
  loc_6DE5BF: BranchF loc_6DE624
  loc_6DE5C2: FLdRfVar var_8E
  loc_6DE5C5: FLdPrThis
  loc_6DE5C6: VCallAd Control_ID_VScroll
  loc_6DE5C9: FStAdFunc var_8C
  loc_6DE5CC: FLdPr var_8C
  loc_6DE5CF:  = Me.Value
  loc_6DE5D4: FLdI2 var_8E
  loc_6DE5D7: LitI2 5990
  loc_6DE5DA: EqI2
  loc_6DE5DB: FFree1Ad var_8C
  loc_6DE5DE: BranchF loc_6DE5E9
  loc_6DE5E1: ImpAdCallFPR4 Beep()
  loc_6DE5E6: Branch loc_6DE5FE
  loc_6DE5E9: LitI2 5990
  loc_6DE5EC: FLdPrThis
  loc_6DE5ED: VCallAd Control_ID_VScroll
  loc_6DE5F0: FStAdFunc var_8C
  loc_6DE5F3: FLdPr var_8C
  loc_6DE5F6: Me.Value = from_stack_1
  loc_6DE5FB: FFree1Ad var_8C
  loc_6DE5FE: FLdRfVar var_C4
  loc_6DE601: LitI2_Byte &HA
  loc_6DE603: FLdPrThis
  loc_6DE604: VCallAd Control_ID_txtLitros
  loc_6DE607: FStAdFunc var_8C
  loc_6DE60A: FLdPr var_8C
  loc_6DE60D: Set from_stack_2 = Me(from_stack_1)
  loc_6DE612: FLdPr var_C4
  loc_6DE615: Me.SetFocus
  loc_6DE61A: FFreeAd var_8C = ""
  loc_6DE621: Branch loc_6DE653
  loc_6DE624: LitI2_Byte &HA
  loc_6DE626: FLdPr Me
  loc_6DE629: MemStI2 global_130
  loc_6DE62C: FLdRfVar var_C4
  loc_6DE62F: FLdPr Me
  loc_6DE632: MemLdI2 global_130
  loc_6DE635: FLdPrThis
  loc_6DE636: VCallAd Control_ID_txtLitros
  loc_6DE639: FStAdFunc var_8C
  loc_6DE63C: FLdPr var_8C
  loc_6DE63F: Set from_stack_2 = Me(from_stack_1)
  loc_6DE644: FLdPr var_C4
  loc_6DE647: Me.SetFocus
  loc_6DE64C: FFreeAd var_8C = ""
  loc_6DE653: Branch loc_6DE65B
  loc_6DE656: LitI2_Byte 0
  loc_6DE658: IStI2 KeyCode
  loc_6DE65B: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '69EFC4
  'Data Table: 443E20
  loc_69E934: FLdPr Me
  loc_69E937: MemLdI2 global_134
  loc_69E93A: BranchF loc_69E943
  loc_69E93D: LitI2_Byte 0
  loc_69E93F: IStI2 KeyAscii
  loc_69E942: ExitProcHresult
  loc_69E943: ILdI2 KeyAscii
  loc_69E946: CI4UI1
  loc_69E947: LitI4 &HD
  loc_69E94C: EqI4
  loc_69E94D: BranchF loc_69EFC0
  loc_69E950: LitI2_Byte 0
  loc_69E952: IStI2 KeyAscii
  loc_69E955: FLdPr Me
  loc_69E958: MemLdI2 global_130
  loc_69E95B: FLdRfVar var_8A
  loc_69E95E: FLdPrThis
  loc_69E95F: VCallAd Control_ID_VScroll
  loc_69E962: FStAdFunc var_88
  loc_69E965: FLdPr var_88
  loc_69E968:  = Me.Value
  loc_69E96D: FLdI2 var_8A
  loc_69E970: AddI2
  loc_69E971: LitI2_Byte 0
  loc_69E973: EqI2
  loc_69E974: FFree1Ad var_88
  loc_69E977: BranchF loc_69E9A7
  loc_69E97A: LitStr "0.00"
  loc_69E97D: FLdRfVar var_90
  loc_69E980: FLdPr Me
  loc_69E983: MemLdI2 global_130
  loc_69E986: FLdPrThis
  loc_69E987: VCallAd Control_ID_txtLitros
  loc_69E98A: FStAdFunc var_88
  loc_69E98D: FLdPr var_88
  loc_69E990: Set from_stack_2 = Me(from_stack_1)
  loc_69E995: FLdPr var_90
  loc_69E998: Me.Text = from_stack_1
  loc_69E99D: FFreeAd var_88 = ""
  loc_69E9A4: Branch loc_69EE0C
  loc_69E9A7: FLdRfVar var_94
  loc_69E9AA: FLdRfVar var_90
  loc_69E9AD: FLdPr Me
  loc_69E9B0: MemLdI2 global_130
  loc_69E9B3: FLdPrThis
  loc_69E9B4: VCallAd Control_ID_txtLitros
  loc_69E9B7: FStAdFunc var_88
  loc_69E9BA: FLdPr var_88
  loc_69E9BD: Set from_stack_2 = Me(from_stack_1)
  loc_69E9C2: FLdPr var_90
  loc_69E9C5:  = Me.Text
  loc_69E9CA: ILdRf var_94
  loc_69E9CD: LitStr vbNullString
  loc_69E9D0: EqStr
  loc_69E9D2: FLdRfVar var_A0
  loc_69E9D5: FLdRfVar var_9C
  loc_69E9D8: FLdPr Me
  loc_69E9DB: MemLdI2 global_130
  loc_69E9DE: FLdPrThis
  loc_69E9DF: VCallAd Control_ID_txtLitros
  loc_69E9E2: FStAdFunc var_98
  loc_69E9E5: FLdPr var_98
  loc_69E9E8: Set from_stack_2 = Me(from_stack_1)
  loc_69E9ED: FLdPr var_9C
  loc_69E9F0:  = Me.Text
  loc_69E9F5: ILdRf var_A0
  loc_69E9F8: ImpAdCallFPR4 push Val()
  loc_69E9FD: CR8R8
  loc_69E9FE: LitI2_Byte 0
  loc_69EA00: CR8I2
  loc_69EA01: EqR4
  loc_69EA02: OrI4
  loc_69EA03: FFreeStr var_94 = ""
  loc_69EA0A: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_69EA15: BranchF loc_69EB04
  loc_69EA18: FLdRfVar var_8A
  loc_69EA1B: FLdPrThis
  loc_69EA1C: VCallAd Control_ID_VScroll
  loc_69EA1F: FStAdFunc var_88
  loc_69EA22: FLdPr var_88
  loc_69EA25:  = Me.Value
  loc_69EA2A: FLdI2 var_8A
  loc_69EA2D: FLdPr Me
  loc_69EA30: MemLdI2 global_130
  loc_69EA33: AddI2
  loc_69EA34: CI4UI1
  loc_69EA35: FLdPr Me
  loc_69EA38: MemLdRfVar from_stack_1.global_68
  loc_69EA3B: Ary1LdFPR4
  loc_69EA3C: LitI2_Byte 0
  loc_69EA3E: CR8I2
  loc_69EA3F: EqR4
  loc_69EA40: NotI4
  loc_69EA41: FLdPr Me
  loc_69EA44: MemStI2 global_116
  loc_69EA47: FFree1Ad var_88
  loc_69EA4A: FLdPr Me
  loc_69EA4D: MemLdI2 global_116
  loc_69EA50: FLdPrThis
  loc_69EA51: VCallAd Control_ID_GrabarTabla
  loc_69EA54: FStAdFunc var_88
  loc_69EA57: FLdPr var_88
  loc_69EA5A: Me.Enabled = from_stack_1b
  loc_69EA5F: FFree1Ad var_88
  loc_69EA62: FLdRfVar var_8A
  loc_69EA65: FLdPrThis
  loc_69EA66: VCallAd Control_ID_VScroll
  loc_69EA69: FStAdFunc var_88
  loc_69EA6C: FLdPr var_88
  loc_69EA6F:  = Me.Value
  loc_69EA74: LitI2_Byte 0
  loc_69EA76: CR8I2
  loc_69EA77: FLdI2 var_8A
  loc_69EA7A: FLdPr Me
  loc_69EA7D: MemLdI2 global_130
  loc_69EA80: AddI2
  loc_69EA81: CI4UI1
  loc_69EA82: FLdPr Me
  loc_69EA85: MemLdRfVar from_stack_1.global_68
  loc_69EA88: Ary1StFPR4
  loc_69EA89: FFree1Ad var_88
  loc_69EA8C: FLdRfVar var_8A
  loc_69EA8F: FLdPrThis
  loc_69EA90: VCallAd Control_ID_VScroll
  loc_69EA93: FStAdFunc var_88
  loc_69EA96: FLdPr var_88
  loc_69EA99:  = Me.Value
  loc_69EA9E: LitI4 1
  loc_69EAA3: LitI4 1
  loc_69EAA8: LitVarStr var_C0, "#######0.00"
  loc_69EAAD: FStVarCopyObj var_D0
  loc_69EAB0: FLdRfVar var_D0
  loc_69EAB3: FLdI2 var_8A
  loc_69EAB6: FLdPr Me
  loc_69EAB9: MemLdI2 global_130
  loc_69EABC: AddI2
  loc_69EABD: CI4UI1
  loc_69EABE: FLdPr Me
  loc_69EAC1: MemLdRfVar from_stack_1.global_92
  loc_69EAC4: Ary1LdRf
  loc_69EAC5: CVarRef
  loc_69EACA: ImpAdCallI2 Format$(, )
  loc_69EACF: FStStrNoPop var_94
  loc_69EAD2: FLdRfVar var_98
  loc_69EAD5: FLdPr Me
  loc_69EAD8: MemLdI2 global_130
  loc_69EADB: FLdPrThis
  loc_69EADC: VCallAd Control_ID_txtLitros
  loc_69EADF: FStAdFunc var_90
  loc_69EAE2: FLdPr var_90
  loc_69EAE5: Set from_stack_2 = Me(from_stack_1)
  loc_69EAEA: FLdPr var_98
  loc_69EAED: Me.Text = from_stack_1
  loc_69EAF2: FFree1Str var_94
  loc_69EAF5: FFreeAd var_88 = "": var_90 = ""
  loc_69EAFE: FFree1Var var_D0 = ""
  loc_69EB01: Branch loc_69EE0C
  loc_69EB04: FLdRfVar var_94
  loc_69EB07: FLdRfVar var_98
  loc_69EB0A: FLdPr Me
  loc_69EB0D: MemLdI2 global_130
  loc_69EB10: FLdPrThis
  loc_69EB11: VCallAd Control_ID_txtLitros
  loc_69EB14: FStAdFunc var_90
  loc_69EB17: FLdPr var_90
  loc_69EB1A: Set from_stack_2 = Me(from_stack_1)
  loc_69EB1F: FLdPr var_98
  loc_69EB22:  = Me.Text
  loc_69EB27: ILdRf var_94
  loc_69EB2A: ImpAdCallFPR4 push Val()
  loc_69EB2F: FStFPR8 var_E4
  loc_69EB32: FLdRfVar var_A0
  loc_69EB35: FLdRfVar var_DC
  loc_69EB38: FLdPr Me
  loc_69EB3B: MemLdI2 global_130
  loc_69EB3E: FLdPrThis
  loc_69EB3F: VCallAd Control_ID_txtLitros
  loc_69EB42: FStAdFunc var_D8
  loc_69EB45: FLdPr var_D8
  loc_69EB48: Set from_stack_2 = Me(from_stack_1)
  loc_69EB4D: FLdPr var_DC
  loc_69EB50:  = Me.Text
  loc_69EB55: ILdRf var_A0
  loc_69EB58: ImpAdCallFPR4 push Val()
  loc_69EB5D: FStFPR8 var_EC
  loc_69EB60: FLdRfVar var_8A
  loc_69EB63: FLdPrThis
  loc_69EB64: VCallAd Control_ID_VScroll
  loc_69EB67: FStAdFunc var_88
  loc_69EB6A: FLdPr var_88
  loc_69EB6D:  = Me.Value
  loc_69EB72: FLdI2 var_8A
  loc_69EB75: FLdPr Me
  loc_69EB78: MemLdI2 global_130
  loc_69EB7B: AddI2
  loc_69EB7C: CI4UI1
  loc_69EB7D: FLdPr Me
  loc_69EB80: MemLdRfVar from_stack_1.global_92
  loc_69EB83: Ary1LdFPR4
  loc_69EB84: FLdFPR8 var_E4
  loc_69EB87: CR4R4
  loc_69EB88: NeR8
  loc_69EB89: FLdRfVar var_D2
  loc_69EB8C: FLdPrThis
  loc_69EB8D: VCallAd Control_ID_VScroll
  loc_69EB90: FStAdFunc var_9C
  loc_69EB93: FLdPr var_9C
  loc_69EB96:  = Me.Value
  loc_69EB9B: FLdI2 var_D2
  loc_69EB9E: FLdPr Me
  loc_69EBA1: MemLdI2 global_130
  loc_69EBA4: AddI2
  loc_69EBA5: CI4UI1
  loc_69EBA6: FLdPr Me
  loc_69EBA9: MemLdRfVar from_stack_1.global_68
  loc_69EBAC: Ary1LdFPR4
  loc_69EBAD: FLdFPR8 var_EC
  loc_69EBB0: CR4R4
  loc_69EBB1: NeR8
  loc_69EBB2: OrI4
  loc_69EBB3: FFreeStr var_94 = ""
  loc_69EBBA: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_9C = "": var_D8 = ""
  loc_69EBC9: BranchF loc_69EE0C
  loc_69EBCC: FLdRfVar var_94
  loc_69EBCF: FLdRfVar var_90
  loc_69EBD2: FLdPr Me
  loc_69EBD5: MemLdI2 global_130
  loc_69EBD8: FLdPrThis
  loc_69EBD9: VCallAd Control_ID_txtLitros
  loc_69EBDC: FStAdFunc var_88
  loc_69EBDF: FLdPr var_88
  loc_69EBE2: Set from_stack_2 = Me(from_stack_1)
  loc_69EBE7: FLdPr var_90
  loc_69EBEA:  = Me.Text
  loc_69EBEF: ILdRf var_94
  loc_69EBF2: ImpAdCallFPR4 push Val()
  loc_69EBF7: FStFPR8 var_E4
  loc_69EBFA: FLdRfVar var_8A
  loc_69EBFD: FLdPr Me
  loc_69EC00: MemLdRfVar from_stack_1.global_130
  loc_69EC03: FLdFPR8 var_E4
  loc_69EC06: PopTmpLdAdFPR4
  loc_69EC0A: from_stack_3v = Proc_152_30_5E5604(from_stack_1v, from_stack_2v)
  loc_69EC0F: FLdI2 var_8A
  loc_69EC12: FFree1Str var_94
  loc_69EC15: FFreeAd var_88 = ""
  loc_69EC1C: BranchF loc_69ED12
  loc_69EC1F: FLdRfVar var_8A
  loc_69EC22: FLdPrThis
  loc_69EC23: VCallAd Control_ID_VScroll
  loc_69EC26: FStAdFunc var_98
  loc_69EC29: FLdPr var_98
  loc_69EC2C:  = Me.Value
  loc_69EC31: FLdRfVar var_94
  loc_69EC34: FLdRfVar var_90
  loc_69EC37: FLdPr Me
  loc_69EC3A: MemLdI2 global_130
  loc_69EC3D: FLdPrThis
  loc_69EC3E: VCallAd Control_ID_txtLitros
  loc_69EC41: FStAdFunc var_88
  loc_69EC44: FLdPr var_88
  loc_69EC47: Set from_stack_2 = Me(from_stack_1)
  loc_69EC4C: FLdPr var_90
  loc_69EC4F:  = Me.Text
  loc_69EC54: ILdRf var_94
  loc_69EC57: ImpAdCallFPR4 push Val()
  loc_69EC5C: FLdI2 var_8A
  loc_69EC5F: FLdPr Me
  loc_69EC62: MemLdI2 global_130
  loc_69EC65: AddI2
  loc_69EC66: CI4UI1
  loc_69EC67: FLdPr Me
  loc_69EC6A: MemLdRfVar from_stack_1.global_68
  loc_69EC6D: Ary1StFPR4
  loc_69EC6E: FFree1Str var_94
  loc_69EC71: FFreeAd var_88 = "": var_90 = ""
  loc_69EC7A: FLdRfVar var_8A
  loc_69EC7D: FLdPrThis
  loc_69EC7E: VCallAd Control_ID_VScroll
  loc_69EC81: FStAdFunc var_88
  loc_69EC84: FLdPr var_88
  loc_69EC87:  = Me.Value
  loc_69EC8C: LitI4 1
  loc_69EC91: LitI4 1
  loc_69EC96: LitVarStr var_C0, "#####0.00"
  loc_69EC9B: FStVarCopyObj var_D0
  loc_69EC9E: FLdRfVar var_D0
  loc_69ECA1: FLdI2 var_8A
  loc_69ECA4: FLdPr Me
  loc_69ECA7: MemLdI2 global_130
  loc_69ECAA: AddI2
  loc_69ECAB: CI4UI1
  loc_69ECAC: FLdPr Me
  loc_69ECAF: MemLdRfVar from_stack_1.global_68
  loc_69ECB2: Ary1LdRf
  loc_69ECB3: CVarRef
  loc_69ECB8: ImpAdCallI2 Format$(, )
  loc_69ECBD: FStStrNoPop var_94
  loc_69ECC0: FLdRfVar var_98
  loc_69ECC3: FLdPr Me
  loc_69ECC6: MemLdI2 global_130
  loc_69ECC9: FLdPrThis
  loc_69ECCA: VCallAd Control_ID_txtLitros
  loc_69ECCD: FStAdFunc var_90
  loc_69ECD0: FLdPr var_90
  loc_69ECD3: Set from_stack_2 = Me(from_stack_1)
  loc_69ECD8: FLdPr var_98
  loc_69ECDB: Me.Text = from_stack_1
  loc_69ECE0: FFree1Str var_94
  loc_69ECE3: FFreeAd var_88 = "": var_90 = ""
  loc_69ECEC: FFree1Var var_D0 = ""
  loc_69ECEF: LitI2_Byte &HFF
  loc_69ECF1: FLdPr Me
  loc_69ECF4: MemStI2 global_116
  loc_69ECF7: FLdPr Me
  loc_69ECFA: MemLdI2 global_116
  loc_69ECFD: FLdPrThis
  loc_69ECFE: VCallAd Control_ID_GrabarTabla
  loc_69ED01: FStAdFunc var_88
  loc_69ED04: FLdPr var_88
  loc_69ED07: Me.Enabled = from_stack_1b
  loc_69ED0C: FFree1Ad var_88
  loc_69ED0F: Branch loc_69EE0C
  loc_69ED12: LitI4 1
  loc_69ED17: LitI4 1
  loc_69ED1C: LitVarStr var_C0, "#####0.00"
  loc_69ED21: FStVarCopyObj var_D0
  loc_69ED24: FLdRfVar var_D0
  loc_69ED27: FLdPr Me
  loc_69ED2A: MemLdRfVar from_stack_1.global_124
  loc_69ED2D: CVarRef
  loc_69ED32: ImpAdCallI2 Format$(, )
  loc_69ED37: FStStrNoPop var_94
  loc_69ED3A: FLdRfVar var_90
  loc_69ED3D: FLdPr Me
  loc_69ED40: MemLdI2 global_130
  loc_69ED43: FLdPrThis
  loc_69ED44: VCallAd Control_ID_txtLitros
  loc_69ED47: FStAdFunc var_88
  loc_69ED4A: FLdPr var_88
  loc_69ED4D: Set from_stack_2 = Me(from_stack_1)
  loc_69ED52: FLdPr var_90
  loc_69ED55: Me.Text = from_stack_1
  loc_69ED5A: FFree1Str var_94
  loc_69ED5D: FFreeAd var_88 = ""
  loc_69ED64: FFree1Var var_D0 = ""
  loc_69ED67: FLdRfVar var_A0
  loc_69ED6A: LitVar_Missing var_200
  loc_69ED6D: LitVar_Missing var_1E0
  loc_69ED70: LitVar_Missing var_1C0
  loc_69ED73: LitVar_Missing var_1A0
  loc_69ED76: LitVar_Missing var_180
  loc_69ED79: LitVar_Missing var_160
  loc_69ED7C: LitVar_Missing var_140
  loc_69ED7F: LitVar_Missing var_120
  loc_69ED82: LitVar_Missing var_100
  loc_69ED85: LitVar_Missing var_D0
  loc_69ED88: LitStr "Debe ingresar un volumen coherente con los ingresados en la tabla. Verifique por favor."
  loc_69ED8B: FStStrCopy var_94
  loc_69ED8E: FLdRfVar var_94
  loc_69ED91: LitI4 &H12
  loc_69ED96: PopTmpLdAdStr var_F0
  loc_69ED99: LitI2_Byte &H3C
  loc_69ED9B: PopTmpLdAd2 var_8A
  loc_69ED9E: ImpAdLdRf MemVar_74C7D0
  loc_69EDA1: NewIfNullPr clsMsg
  loc_69EDA4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69EDA9: LitVar_Missing var_270
  loc_69EDAC: LitVar_Missing var_250
  loc_69EDAF: LitVar_Missing var_230
  loc_69EDB2: LitI4 &H40
  loc_69EDB7: FLdZeroAd var_A0
  loc_69EDBA: CVarStr var_210
  loc_69EDBD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69EDC2: FFree1Str var_94
  loc_69EDC5: FFreeVar var_D0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_230 = "": var_250 = ""
  loc_69EDE4: FLdRfVar var_90
  loc_69EDE7: FLdPr Me
  loc_69EDEA: MemLdI2 global_130
  loc_69EDED: FLdPrThis
  loc_69EDEE: VCallAd Control_ID_txtLitros
  loc_69EDF1: FStAdFunc var_88
  loc_69EDF4: FLdPr var_88
  loc_69EDF7: Set from_stack_2 = Me(from_stack_1)
  loc_69EDFC: FLdPr var_90
  loc_69EDFF: Me.SetFocus
  loc_69EE04: FFreeAd var_88 = ""
  loc_69EE0B: ExitProcHresult
  loc_69EE0C: FLdRfVar var_94
  loc_69EE0F: FLdRfVar var_90
  loc_69EE12: FLdPr Me
  loc_69EE15: MemLdI2 global_130
  loc_69EE18: FLdPrThis
  loc_69EE19: VCallAd Control_ID_txtLitros
  loc_69EE1C: FStAdFunc var_88
  loc_69EE1F: FLdPr var_88
  loc_69EE22: Set from_stack_2 = Me(from_stack_1)
  loc_69EE27: FLdPr var_90
  loc_69EE2A:  = Me.Text
  loc_69EE2F: LitI4 1
  loc_69EE34: LitI4 1
  loc_69EE39: LitVarStr var_B0, "#####0.00"
  loc_69EE3E: FStVarCopyObj var_100
  loc_69EE41: FLdRfVar var_100
  loc_69EE44: FLdZeroAd var_94
  loc_69EE47: CVarStr var_D0
  loc_69EE4A: ImpAdCallI2 Format$(, )
  loc_69EE4F: FStStrNoPop var_A0
  loc_69EE52: FLdRfVar var_9C
  loc_69EE55: FLdPr Me
  loc_69EE58: MemLdI2 global_130
  loc_69EE5B: FLdPrThis
  loc_69EE5C: VCallAd Control_ID_txtLitros
  loc_69EE5F: FStAdFunc var_98
  loc_69EE62: FLdPr var_98
  loc_69EE65: Set from_stack_2 = Me(from_stack_1)
  loc_69EE6A: FLdPr var_9C
  loc_69EE6D: Me.Text = from_stack_1
  loc_69EE72: FFree1Str var_A0
  loc_69EE75: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_69EE80: FFreeVar var_D0 = ""
  loc_69EE87: FLdRfVar var_8A
  loc_69EE8A: FLdPrThis
  loc_69EE8B: VCallAd Control_ID_VScroll
  loc_69EE8E: FStAdFunc var_88
  loc_69EE91: FLdPr var_88
  loc_69EE94:  = Me.Value
  loc_69EE99: LitVarI4
  loc_69EEA1: LitVarI4
  loc_69EEA9: FLdI2 var_8A
  loc_69EEAC: FLdPr Me
  loc_69EEAF: MemLdI2 global_130
  loc_69EEB2: AddI2
  loc_69EEB3: CI4UI1
  loc_69EEB4: FLdPr Me
  loc_69EEB7: MemLdRfVar from_stack_1.global_68
  loc_69EEBA: Ary1LdFPR4
  loc_69EEBB: LitI2_Byte 0
  loc_69EEBD: CR8I2
  loc_69EEBE: GtR4
  loc_69EEBF: CVarBoolI2 var_B0
  loc_69EEC3: FLdRfVar var_120
  loc_69EEC6: ImpAdCallFPR4  = IIf(, , )
  loc_69EECB: FLdVar var_120
  loc_69EECF: FLdRfVar var_98
  loc_69EED2: FLdPr Me
  loc_69EED5: MemLdI2 global_130
  loc_69EED8: FLdPrThis
  loc_69EED9: VCallAd Control_ID_SSPanel1
  loc_69EEDC: FStAdFunc var_90
  loc_69EEDF: FLdPr var_90
  loc_69EEE2: Set from_stack_2 = Me(from_stack_1)
  loc_69EEE7: FLdPr var_98
  loc_69EEEA: LateIdSt
  loc_69EEEF: FFreeAd var_88 = "": var_90 = ""
  loc_69EEF8: FFreeVar var_B0 = "": var_D0 = "": var_100 = ""
  loc_69EF03: FLdPr Me
  loc_69EF06: MemLdI2 global_130
  loc_69EF09: LitI2_Byte &HA
  loc_69EF0B: EqI2
  loc_69EF0C: BranchF loc_69EF8A
  loc_69EF0F: FLdRfVar var_8A
  loc_69EF12: FLdPrThis
  loc_69EF13: VCallAd Control_ID_VScroll
  loc_69EF16: FStAdFunc var_88
  loc_69EF19: FLdPr var_88
  loc_69EF1C:  = Me.Value
  loc_69EF21: FLdI2 var_8A
  loc_69EF24: LitI2 5990
  loc_69EF27: EqI2
  loc_69EF28: FFree1Ad var_88
  loc_69EF2B: BranchF loc_69EF36
  loc_69EF2E: ImpAdCallFPR4 Beep()
  loc_69EF33: Branch loc_69EF64
  loc_69EF36: FLdRfVar var_8A
  loc_69EF39: FLdPrThis
  loc_69EF3A: VCallAd Control_ID_VScroll
  loc_69EF3D: FStAdFunc var_88
  loc_69EF40: FLdPr var_88
  loc_69EF43:  = Me.Value
  loc_69EF48: FLdI2 var_8A
  loc_69EF4B: LitI2_Byte 1
  loc_69EF4D: AddI2
  loc_69EF4E: FLdPrThis
  loc_69EF4F: VCallAd Control_ID_VScroll
  loc_69EF52: FStAdFunc var_90
  loc_69EF55: FLdPr var_90
  loc_69EF58: Me.Value = from_stack_1
  loc_69EF5D: FFreeAd var_88 = ""
  loc_69EF64: FLdRfVar var_90
  loc_69EF67: LitI2_Byte &HA
  loc_69EF69: FLdPrThis
  loc_69EF6A: VCallAd Control_ID_txtLitros
  loc_69EF6D: FStAdFunc var_88
  loc_69EF70: FLdPr var_88
  loc_69EF73: Set from_stack_2 = Me(from_stack_1)
  loc_69EF78: FLdPr var_90
  loc_69EF7B: Me.SetFocus
  loc_69EF80: FFreeAd var_88 = ""
  loc_69EF87: Branch loc_69EFC0
  loc_69EF8A: FLdPr Me
  loc_69EF8D: MemLdI2 global_130
  loc_69EF90: LitI2_Byte 1
  loc_69EF92: AddI2
  loc_69EF93: FLdPr Me
  loc_69EF96: MemStI2 global_130
  loc_69EF99: FLdRfVar var_90
  loc_69EF9C: FLdPr Me
  loc_69EF9F: MemLdI2 global_130
  loc_69EFA2: FLdPrThis
  loc_69EFA3: VCallAd Control_ID_txtLitros
  loc_69EFA6: FStAdFunc var_88
  loc_69EFA9: FLdPr var_88
  loc_69EFAC: Set from_stack_2 = Me(from_stack_1)
  loc_69EFB1: FLdPr var_90
  loc_69EFB4: Me.SetFocus
  loc_69EFB9: FFreeAd var_88 = ""
  loc_69EFC0: ExitProcHresult
End Sub

Private Sub cmdBorrar_Click() '649660
  'Data Table: 443E20
  loc_649424: FLdRfVar var_1DC
  loc_649427: LitVar_Missing var_1D8
  loc_64942A: LitVar_Missing var_1B8
  loc_64942D: LitVar_Missing var_198
  loc_649430: LitVar_Missing var_178
  loc_649433: LitVar_Missing var_158
  loc_649436: LitVar_Missing var_138
  loc_649439: LitVar_Missing var_118
  loc_64943C: LitVar_Missing var_F8
  loc_64943F: LitVar_Missing var_D8
  loc_649442: LitVar_Missing var_B8
  loc_649445: LitStr "Esta seguro de borrar la tabla de pares del tanque"
  loc_649448: FStStrCopy var_98
  loc_64944B: FLdRfVar var_98
  loc_64944E: LitI4 &HF
  loc_649453: PopTmpLdAdStr var_94
  loc_649456: LitI2_Byte &H3C
  loc_649458: PopTmpLdAd2 var_8E
  loc_64945B: ImpAdLdRf MemVar_74C7D0
  loc_64945E: NewIfNullPr clsMsg
  loc_649461: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_649466: LitVar_Missing var_258
  loc_649469: LitVar_Missing var_238
  loc_64946C: LitVar_Missing var_218
  loc_64946F: LitI4 &H24
  loc_649474: ILdRf var_1DC
  loc_649477: LitStr " "
  loc_64947A: ConcatStr
  loc_64947B: FStStrNoPop var_1E0
  loc_64947E: FLdPr Me
  loc_649481: MemLdI2 global_118
  loc_649484: CStrUI1
  loc_649486: FStStrNoPop var_1E4
  loc_649489: ConcatStr
  loc_64948A: FStStrNoPop var_1E8
  loc_64948D: LitStr " ?"
  loc_649490: ConcatStr
  loc_649491: CVarStr var_1F8
  loc_649494: ImpAdCallI2 MsgBox(, , , , )
  loc_649499: LitI4 7
  loc_64949E: EqI4
  loc_64949F: FFreeStr var_98 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_6494AC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = ""
  loc_6494CB: BranchF loc_6494CF
  loc_6494CE: ExitProcHresult
  loc_6494CF: FLdPr Me
  loc_6494D2: MemLdI2 global_120
  loc_6494D5: NotI4
  loc_6494D6: BranchF loc_64954E
  loc_6494D9: LitStr "000000000000000020000000100000000"
  loc_6494DC: FStStrCopy var_8C
  loc_6494DF: FLdRfVar var_B8
  loc_6494E2: FLdRfVar var_8C
  loc_6494E5: LitStr "0"
  loc_6494E8: FStStrCopy var_98
  loc_6494EB: FLdRfVar var_98
  loc_6494EE: FLdPr Me
  loc_6494F1: MemLdRfVar from_stack_1.global_118
  loc_6494F4: FLdRfVar var_25C
  loc_6494F7: ImpAdLdRf MemVar_74C760
  loc_6494FA: NewIfNullPr Formx
  loc_6494FD: from_stack_1v = Formx.global_4589716Get()
  loc_649502: FLdPr var_25C
  loc_649505: Call 0.Method_arg_17C ()
  loc_64950A: FLdRfVar var_B8
  loc_64950D: NotVar var_D8
  loc_649511: CBoolVarNull
  loc_649513: FFree1Str var_98
  loc_649516: FFree1Ad var_25C
  loc_649519: FFree1Var var_B8 = ""
  loc_64951C: BranchF loc_64954B
  loc_64951F: FLdRfVar var_B8
  loc_649522: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_649527: FLdRfVar var_B8
  loc_64952A: CBoolVarNull
  loc_64952C: FFree1Var var_B8 = ""
  loc_64952F: BranchF loc_649548
  loc_649532: ILdRf Me
  loc_649535: FStAdNoPop
  loc_649539: ImpAdLdRf MemVar_7520D4
  loc_64953C: NewIfNullPr Global
  loc_64953F: Global.Unload from_stack_1
  loc_649544: FFree1Ad var_25C
  loc_649547: ExitProcHresult
  loc_649548: Branch loc_6494DF
  loc_64954B: Branch loc_649577
  loc_64954E: LitI2_Byte 0
  loc_649550: FLdRfVar var_86
  loc_649553: LitI2 6000
  loc_649556: ForI2 var_260
  loc_64955C: LitI2_Byte 0
  loc_64955E: CR8I2
  loc_64955F: FLdI2 var_86
  loc_649562: CI4UI1
  loc_649563: FLdPr Me
  loc_649566: MemLdRfVar from_stack_1.global_68
  loc_649569: Ary1StFPR4
  loc_64956A: FLdRfVar var_86
  loc_64956D: NextI2 var_260, loc_64955C
  loc_649572: Call VScroll_Change()
  loc_649577: FLdPr Me
  loc_64957A: MemLdRfVar from_stack_1.global_118
  loc_64957D: from_stack_2v = Proc_152_29_65D200(from_stack_1v)
  loc_649582: FLdRfVar var_1DC
  loc_649585: LitVar_Missing var_1D8
  loc_649588: LitVar_Missing var_1B8
  loc_64958B: LitVar_Missing var_198
  loc_64958E: LitVar_Missing var_178
  loc_649591: LitVar_Missing var_158
  loc_649594: LitVar_Missing var_138
  loc_649597: LitVar_Missing var_118
  loc_64959A: LitVar_Missing var_F8
  loc_64959D: LitVar_Missing var_D8
  loc_6495A0: LitVar_Missing var_B8
  loc_6495A3: LitStr "Recuperando datos, espere un momento..."
  loc_6495A6: FStStrCopy var_98
  loc_6495A9: FLdRfVar var_98
  loc_6495AC: LitI4 &H1A
  loc_6495B1: PopTmpLdAdStr var_94
  loc_6495B4: LitI2_Byte &H3C
  loc_6495B6: PopTmpLdAd2 var_8E
  loc_6495B9: ImpAdLdRf MemVar_74C7D0
  loc_6495BC: NewIfNullPr clsMsg
  loc_6495BF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6495C4: ILdRf var_1DC
  loc_6495C7: FLdPrThis
  loc_6495C8: VCallAd Control_ID_txtLeyenda
  loc_6495CB: FStAdFunc var_25C
  loc_6495CE: FLdPr var_25C
  loc_6495D1: Me.Text = from_stack_1
  loc_6495D6: FFreeStr var_98 = ""
  loc_6495DD: FFree1Ad var_25C
  loc_6495E0: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6495F7: LitI2_Byte &HFF
  loc_6495F9: FLdPrThis
  loc_6495FA: VCallAd Control_ID_txtLeyenda
  loc_6495FD: FStAdFunc var_25C
  loc_649600: FLdPr var_25C
  loc_649603: Me.Visible = from_stack_1b
  loc_649608: FFree1Ad var_25C
  loc_64960B: LitI2_Byte &HFF
  loc_64960D: FLdPrThis
  loc_64960E: VCallAd Control_ID_txtLeyenda
  loc_649611: FStAdFunc var_25C
  loc_649614: FLdPr var_25C
  loc_649617: Me.Enabled = from_stack_1b
  loc_64961C: FFree1Ad var_25C
  loc_64961F: LitI2_Byte 0
  loc_649621: PopTmpLdAd2 var_8E
  loc_649624: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_649629: LitI4 &H7D0
  loc_64962E: ImpAdCallFPR4 Sleep()
  loc_649633: SetLastSystemError
  loc_649634: FLdPr Me
  loc_649637: MemLdRfVar from_stack_1.global_118
  loc_64963A: from_stack_2v = Proc_152_27_694760(from_stack_1v)
  loc_64963F: LitI2_Byte 0
  loc_649641: FLdPr Me
  loc_649644: MemStI2 global_116
  loc_649647: FLdPr Me
  loc_64964A: MemLdI2 global_116
  loc_64964D: FLdPrThis
  loc_64964E: VCallAd Control_ID_GrabarTabla
  loc_649651: FStAdFunc var_25C
  loc_649654: FLdPr var_25C
  loc_649657: Me.Enabled = from_stack_1b
  loc_64965C: FFree1Ad var_25C
  loc_64965F: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D2E90
  'Data Table: 443E20
  loc_5D2E78: ILdRf Me
  loc_5D2E7B: FStAdNoPop
  loc_5D2E7F: ImpAdLdRf MemVar_7520D4
  loc_5D2E82: NewIfNullPr Global
  loc_5D2E85: Global.Unload from_stack_1
  loc_5D2E8A: FFree1Ad var_88
  loc_5D2E8D: ExitProcHresult
End Sub

Public Function EmitidaPorSensorGet() '444BB8
  EmitidaPorSensorGet = EmitidaPorSensor
End Function

Public Sub EmitidaPorSensorPut(Value) '444BC7
  EmitidaPorSensor = Value
End Sub

Public Function MMDesdeGet() '444BD6
  MMDesdeGet = MMDesde
End Function

Public Sub MMDesdePut(Value) '444BE5
  MMDesde = Value
End Sub

Public Function MMHastaGet() '444BF4
  MMHastaGet = MMHasta
End Function

Public Sub MMHastaPut(Value) '444C03
  MMHasta = Value
End Sub

Public Function CopiaTanqueDestinoGet() '444C12
  CopiaTanqueDestinoGet = CopiaTanqueDestino
End Function

Public Sub CopiaTanqueDestinoPut(Value) '444C21
  CopiaTanqueDestino = Value
End Sub

Public Function CancelaImpresionGet() '444C30
  CancelaImpresionGet = CancelaImpresion
End Function

Public Sub CancelaImpresionPut(Value) '444C3F
  CancelaImpresion = Value
End Sub

Private Function Proc_152_26_5C80E0() '5C80E0
  'Data Table: 443E20
  loc_5C80DC: ExitProcHresult
  loc_5C80DD: SubI4
  loc_5C80DE: Ary1LdI2
End Function

Private Function Proc_152_27_694760(arg_C) '694760
  'Data Table: 443E20
  loc_69413C: FLdRfVar var_96
  loc_69413F: FLdPrThis
  loc_694140: VCallAd Control_ID_lstTanques
  loc_694143: FStAdFunc var_94
  loc_694146: FLdPr var_94
  loc_694149:  = Me.ListIndex
  loc_69414E: FLdI2 var_96
  loc_694151: LitI2_Byte 1
  loc_694153: AddI2
  loc_694154: IStI2 arg_C
  loc_694157: FFree1Ad var_94
  loc_69415A: FLdRfVar var_AC
  loc_69415D: FLdRfVar var_88
  loc_694160: LitStr "0"
  loc_694163: FStStrCopy var_9C
  loc_694166: FLdRfVar var_9C
  loc_694169: ILdRf arg_C
  loc_69416C: FLdRfVar var_94
  loc_69416F: ImpAdLdRf MemVar_74C760
  loc_694172: NewIfNullPr Formx
  loc_694175: from_stack_1v = Formx.global_4589716Get()
  loc_69417A: FLdPr var_94
  loc_69417D:  = Formx.MaxButton
  loc_694182: FLdRfVar var_AC
  loc_694185: NotVar var_BC
  loc_694189: CBoolVarNull
  loc_69418B: FFree1Str var_9C
  loc_69418E: FFree1Ad var_94
  loc_694191: FFree1Var var_AC = ""
  loc_694194: BranchF loc_6941C3
  loc_694197: FLdRfVar var_AC
  loc_69419A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69419F: FLdRfVar var_AC
  loc_6941A2: CBoolVarNull
  loc_6941A4: FFree1Var var_AC = ""
  loc_6941A7: BranchF loc_6941C0
  loc_6941AA: ILdRf Me
  loc_6941AD: FStAdNoPop
  loc_6941B1: ImpAdLdRf MemVar_7520D4
  loc_6941B4: NewIfNullPr Global
  loc_6941B7: Global.Unload from_stack_1
  loc_6941BC: FFree1Ad var_94
  loc_6941BF: ExitProcHresult
  loc_6941C0: Branch loc_69415A
  loc_6941C3: FLdRfVar var_88
  loc_6941C6: CVarRef
  loc_6941CB: FLdRfVar var_AC
  loc_6941CE: ImpAdCallFPR4  = Trim()
  loc_6941D3: FLdRfVar var_AC
  loc_6941D6: CStrVarTmp
  loc_6941D7: FStStr var_88
  loc_6941DA: FFree1Var var_AC = ""
  loc_6941DD: ILdRf var_88
  loc_6941E0: FnLenStr
  loc_6941E1: LitI4 1
  loc_6941E6: GtI4
  loc_6941E7: BranchF loc_6943C2
  loc_6941EA: FLdRfVar var_AC
  loc_6941ED: FLdRfVar var_8C
  loc_6941F0: LitI2_Byte 0
  loc_6941F2: PopTmpLdAd2 var_96
  loc_6941F5: LitStr "1"
  loc_6941F8: FStStrCopy var_9C
  loc_6941FB: FLdRfVar var_9C
  loc_6941FE: ILdRf arg_C
  loc_694201: FLdRfVar var_94
  loc_694204: ImpAdLdRf MemVar_74C760
  loc_694207: NewIfNullPr Formx
  loc_69420A: from_stack_1v = Formx.global_4589716Get()
  loc_69420F: FLdPr var_94
  loc_694212:  = Formx.MinButton
  loc_694217: FLdRfVar var_AC
  loc_69421A: NotVar var_BC
  loc_69421E: CBoolVarNull
  loc_694220: FFree1Str var_9C
  loc_694223: FFree1Ad var_94
  loc_694226: FFree1Var var_AC = ""
  loc_694229: BranchF loc_694258
  loc_69422C: FLdRfVar var_AC
  loc_69422F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694234: FLdRfVar var_AC
  loc_694237: CBoolVarNull
  loc_694239: FFree1Var var_AC = ""
  loc_69423C: BranchF loc_694255
  loc_69423F: ILdRf Me
  loc_694242: FStAdNoPop
  loc_694246: ImpAdLdRf MemVar_7520D4
  loc_694249: NewIfNullPr Global
  loc_69424C: Global.Unload from_stack_1
  loc_694251: FFree1Ad var_94
  loc_694254: ExitProcHresult
  loc_694255: Branch loc_6941EA
  loc_694258: FLdRfVar var_8C
  loc_69425B: CVarRef
  loc_694260: FLdRfVar var_AC
  loc_694263: ImpAdCallFPR4  = Trim()
  loc_694268: FLdRfVar var_AC
  loc_69426B: CStrVarTmp
  loc_69426C: FStStr var_8C
  loc_69426F: FFree1Var var_AC = ""
  loc_694272: LitI2_Byte 1
  loc_694274: FStI2 var_8E
  loc_694277: LitI2_Byte 0
  loc_694279: FStI2 var_90
  loc_69427C: FLdI2 var_8E
  loc_69427F: CI4UI1
  loc_694280: ILdRf var_8C
  loc_694283: FnLenStr
  loc_694284: LtI4
  loc_694285: BranchF loc_6942D0
  loc_694288: LitVarI2 var_AC, 8
  loc_69428D: FLdI2 var_8E
  loc_694290: CI4UI1
  loc_694291: ILdRf var_8C
  loc_694294: ImpAdCallI2 Mid$(, , )
  loc_694299: FStStrNoPop var_9C
  loc_69429C: ImpAdCallFPR4 push Val()
  loc_6942A1: LitI2_Byte &H64
  loc_6942A3: CR8I2
  loc_6942A4: DivR8
  loc_6942A5: FLdI2 var_90
  loc_6942A8: CI4UI1
  loc_6942A9: FLdPr Me
  loc_6942AC: MemLdRfVar from_stack_1.global_92
  loc_6942AF: Ary1StFPR4
  loc_6942B0: FFree1Str var_9C
  loc_6942B3: FFree1Var var_AC = ""
  loc_6942B6: FLdI2 var_8E
  loc_6942B9: LitI2_Byte 8
  loc_6942BB: AddI2
  loc_6942BC: FStI2 var_8E
  loc_6942BF: FLdI2 var_90
  loc_6942C2: LitI2_Byte 1
  loc_6942C4: AddI2
  loc_6942C5: FStI2 var_90
  loc_6942C8: ImpAdCallFPR4 DoEvents()
  loc_6942CD: Branch loc_69427C
  loc_6942D0: FLdRfVar var_AC
  loc_6942D3: FLdRfVar var_8C
  loc_6942D6: LitI2 3000
  loc_6942D9: PopTmpLdAd2 var_96
  loc_6942DC: LitStr "1"
  loc_6942DF: FStStrCopy var_9C
  loc_6942E2: FLdRfVar var_9C
  loc_6942E5: ILdRf arg_C
  loc_6942E8: FLdRfVar var_94
  loc_6942EB: ImpAdLdRf MemVar_74C760
  loc_6942EE: NewIfNullPr Formx
  loc_6942F1: from_stack_1v = Formx.global_4589716Get()
  loc_6942F6: FLdPr var_94
  loc_6942F9:  = Formx.MinButton
  loc_6942FE: FLdRfVar var_AC
  loc_694301: NotVar var_BC
  loc_694305: CBoolVarNull
  loc_694307: FFree1Str var_9C
  loc_69430A: FFree1Ad var_94
  loc_69430D: FFree1Var var_AC = ""
  loc_694310: BranchF loc_69433F
  loc_694313: FLdRfVar var_AC
  loc_694316: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69431B: FLdRfVar var_AC
  loc_69431E: CBoolVarNull
  loc_694320: FFree1Var var_AC = ""
  loc_694323: BranchF loc_69433C
  loc_694326: ILdRf Me
  loc_694329: FStAdNoPop
  loc_69432D: ImpAdLdRf MemVar_7520D4
  loc_694330: NewIfNullPr Global
  loc_694333: Global.Unload from_stack_1
  loc_694338: FFree1Ad var_94
  loc_69433B: ExitProcHresult
  loc_69433C: Branch loc_6942D0
  loc_69433F: FLdRfVar var_8C
  loc_694342: CVarRef
  loc_694347: FLdRfVar var_AC
  loc_69434A: ImpAdCallFPR4  = Trim()
  loc_69434F: FLdRfVar var_AC
  loc_694352: CStrVarTmp
  loc_694353: FStStr var_8C
  loc_694356: FFree1Var var_AC = ""
  loc_694359: LitI2_Byte 1
  loc_69435B: FStI2 var_8E
  loc_69435E: FLdI2 var_8E
  loc_694361: CI4UI1
  loc_694362: ILdRf var_8C
  loc_694365: FnLenStr
  loc_694366: LtI4
  loc_694367: BranchF loc_6943B2
  loc_69436A: LitVarI2 var_AC, 8
  loc_69436F: FLdI2 var_8E
  loc_694372: CI4UI1
  loc_694373: ILdRf var_8C
  loc_694376: ImpAdCallI2 Mid$(, , )
  loc_69437B: FStStrNoPop var_9C
  loc_69437E: ImpAdCallFPR4 push Val()
  loc_694383: LitI2_Byte &H64
  loc_694385: CR8I2
  loc_694386: DivR8
  loc_694387: FLdI2 var_90
  loc_69438A: CI4UI1
  loc_69438B: FLdPr Me
  loc_69438E: MemLdRfVar from_stack_1.global_92
  loc_694391: Ary1StFPR4
  loc_694392: FFree1Str var_9C
  loc_694395: FFree1Var var_AC = ""
  loc_694398: FLdI2 var_8E
  loc_69439B: LitI2_Byte 8
  loc_69439D: AddI2
  loc_69439E: FStI2 var_8E
  loc_6943A1: FLdI2 var_90
  loc_6943A4: LitI2_Byte 1
  loc_6943A6: AddI2
  loc_6943A7: FStI2 var_90
  loc_6943AA: ImpAdCallFPR4 DoEvents()
  loc_6943AF: Branch loc_69435E
  loc_6943B2: from_stack_1v = Proc_152_33_5D642C()
  loc_6943B7: LitI2_Byte 0
  loc_6943B9: FLdPr Me
  loc_6943BC: MemStI2 global_120
  loc_6943BF: Branch loc_6946D0
  loc_6943C2: FLdRfVar var_AC
  loc_6943C5: FLdRfVar var_88
  loc_6943C8: LitStr "1"
  loc_6943CB: FStStrCopy var_9C
  loc_6943CE: FLdRfVar var_9C
  loc_6943D1: ILdRf arg_C
  loc_6943D4: FLdRfVar var_94
  loc_6943D7: ImpAdLdRf MemVar_74C760
  loc_6943DA: NewIfNullPr Formx
  loc_6943DD: from_stack_1v = Formx.global_4589716Get()
  loc_6943E2: FLdPr var_94
  loc_6943E5:  = Formx.MaxButton
  loc_6943EA: FLdRfVar var_AC
  loc_6943ED: NotVar var_BC
  loc_6943F1: CBoolVarNull
  loc_6943F3: FFree1Str var_9C
  loc_6943F6: FFree1Ad var_94
  loc_6943F9: FFree1Var var_AC = ""
  loc_6943FC: BranchF loc_69442B
  loc_6943FF: FLdRfVar var_AC
  loc_694402: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694407: FLdRfVar var_AC
  loc_69440A: CBoolVarNull
  loc_69440C: FFree1Var var_AC = ""
  loc_69440F: BranchF loc_694428
  loc_694412: ILdRf Me
  loc_694415: FStAdNoPop
  loc_694419: ImpAdLdRf MemVar_7520D4
  loc_69441C: NewIfNullPr Global
  loc_69441F: Global.Unload from_stack_1
  loc_694424: FFree1Ad var_94
  loc_694427: ExitProcHresult
  loc_694428: Branch loc_6943C2
  loc_69442B: FLdRfVar var_88
  loc_69442E: CVarRef
  loc_694433: FLdRfVar var_AC
  loc_694436: ImpAdCallFPR4  = Trim()
  loc_69443B: FLdRfVar var_AC
  loc_69443E: CStrVarTmp
  loc_69443F: FStStr var_88
  loc_694442: FFree1Var var_AC = ""
  loc_694445: ILdRf var_88
  loc_694448: FnLenStr
  loc_694449: LitI4 1
  loc_69444E: GtI4
  loc_69444F: BranchF loc_694691
  loc_694452: LitI2_Byte 0
  loc_694454: FLdRfVar var_8E
  loc_694457: LitI2 6000
  loc_69445A: ForI2 var_D0
  loc_694460: LitI2_Byte 0
  loc_694462: CR8I2
  loc_694463: FLdI2 var_8E
  loc_694466: CI4UI1
  loc_694467: FLdPr Me
  loc_69446A: MemLdRfVar from_stack_1.global_68
  loc_69446D: Ary1StFPR4
  loc_69446E: ImpAdCallFPR4 DoEvents()
  loc_694473: FLdRfVar var_8E
  loc_694476: NextI2 var_D0, loc_694460
  loc_69447B: LitI2_Byte 1
  loc_69447D: FStI2 var_8E
  loc_694480: FLdI2 var_8E
  loc_694483: CI4UI1
  loc_694484: ILdRf var_88
  loc_694487: FnLenStr
  loc_694488: LtI4
  loc_694489: BranchF loc_6944F2
  loc_69448C: LitVarI2 var_BC, 8
  loc_694491: FLdI2 var_8E
  loc_694494: CI4UI1
  loc_694495: ILdRf var_88
  loc_694498: ImpAdCallI2 Mid$(, , )
  loc_69449D: FStStrNoPop var_E4
  loc_6944A0: ImpAdCallFPR4 push Val()
  loc_6944A5: FStFPR8 var_EC
  loc_6944A8: LitVarI2 var_AC, 8
  loc_6944AD: FLdI2 var_8E
  loc_6944B0: LitI2_Byte 8
  loc_6944B2: AddI2
  loc_6944B3: CI4UI1
  loc_6944B4: ILdRf var_88
  loc_6944B7: ImpAdCallI2 Mid$(, , )
  loc_6944BC: FStStrNoPop var_9C
  loc_6944BF: ImpAdCallFPR4 push Val()
  loc_6944C4: LitI2_Byte &H64
  loc_6944C6: CR8I2
  loc_6944C7: DivR8
  loc_6944C8: FLdFPR8 var_EC
  loc_6944CB: CI4R8
  loc_6944CC: FLdPr Me
  loc_6944CF: MemLdRfVar from_stack_1.global_68
  loc_6944D2: Ary1StFPR4
  loc_6944D3: FFreeStr var_9C = ""
  loc_6944DA: FFreeVar var_AC = ""
  loc_6944E1: FLdI2 var_8E
  loc_6944E4: LitI2_Byte &H10
  loc_6944E6: AddI2
  loc_6944E7: FStI2 var_8E
  loc_6944EA: ImpAdCallFPR4 DoEvents()
  loc_6944EF: Branch loc_694480
  loc_6944F2: FLdRfVar var_AC
  loc_6944F5: FLdRfVar var_8C
  loc_6944F8: LitI2_Byte 0
  loc_6944FA: PopTmpLdAd2 var_96
  loc_6944FD: LitStr "1"
  loc_694500: FStStrCopy var_9C
  loc_694503: FLdRfVar var_9C
  loc_694506: ILdRf arg_C
  loc_694509: FLdRfVar var_94
  loc_69450C: ImpAdLdRf MemVar_74C760
  loc_69450F: NewIfNullPr Formx
  loc_694512: from_stack_1v = Formx.global_4589716Get()
  loc_694517: FLdPr var_94
  loc_69451A:  = Formx.MinButton
  loc_69451F: FLdRfVar var_AC
  loc_694522: NotVar var_BC
  loc_694526: CBoolVarNull
  loc_694528: FFree1Str var_9C
  loc_69452B: FFree1Ad var_94
  loc_69452E: FFree1Var var_AC = ""
  loc_694531: BranchF loc_694560
  loc_694534: FLdRfVar var_AC
  loc_694537: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69453C: FLdRfVar var_AC
  loc_69453F: CBoolVarNull
  loc_694541: FFree1Var var_AC = ""
  loc_694544: BranchF loc_69455D
  loc_694547: ILdRf Me
  loc_69454A: FStAdNoPop
  loc_69454E: ImpAdLdRf MemVar_7520D4
  loc_694551: NewIfNullPr Global
  loc_694554: Global.Unload from_stack_1
  loc_694559: FFree1Ad var_94
  loc_69455C: ExitProcHresult
  loc_69455D: Branch loc_6944F2
  loc_694560: LitI2_Byte 1
  loc_694562: FStI2 var_8E
  loc_694565: LitI2_Byte 0
  loc_694567: FStI2 var_90
  loc_69456A: FLdI2 var_8E
  loc_69456D: CI4UI1
  loc_69456E: ILdRf var_8C
  loc_694571: FnLenStr
  loc_694572: LtI4
  loc_694573: BranchF loc_6945BE
  loc_694576: LitVarI2 var_AC, 8
  loc_69457B: FLdI2 var_8E
  loc_69457E: CI4UI1
  loc_69457F: ILdRf var_8C
  loc_694582: ImpAdCallI2 Mid$(, , )
  loc_694587: FStStrNoPop var_9C
  loc_69458A: ImpAdCallFPR4 push Val()
  loc_69458F: LitI2_Byte &H64
  loc_694591: CR8I2
  loc_694592: DivR8
  loc_694593: FLdI2 var_90
  loc_694596: CI4UI1
  loc_694597: FLdPr Me
  loc_69459A: MemLdRfVar from_stack_1.global_92
  loc_69459D: Ary1StFPR4
  loc_69459E: FFree1Str var_9C
  loc_6945A1: FFree1Var var_AC = ""
  loc_6945A4: FLdI2 var_8E
  loc_6945A7: LitI2_Byte 8
  loc_6945A9: AddI2
  loc_6945AA: FStI2 var_8E
  loc_6945AD: FLdI2 var_90
  loc_6945B0: LitI2_Byte 1
  loc_6945B2: AddI2
  loc_6945B3: FStI2 var_90
  loc_6945B6: ImpAdCallFPR4 DoEvents()
  loc_6945BB: Branch loc_69456A
  loc_6945BE: FLdRfVar var_AC
  loc_6945C1: FLdRfVar var_8C
  loc_6945C4: LitI2 3000
  loc_6945C7: PopTmpLdAd2 var_96
  loc_6945CA: LitStr "1"
  loc_6945CD: FStStrCopy var_9C
  loc_6945D0: FLdRfVar var_9C
  loc_6945D3: ILdRf arg_C
  loc_6945D6: FLdRfVar var_94
  loc_6945D9: ImpAdLdRf MemVar_74C760
  loc_6945DC: NewIfNullPr Formx
  loc_6945DF: from_stack_1v = Formx.global_4589716Get()
  loc_6945E4: FLdPr var_94
  loc_6945E7:  = Formx.MinButton
  loc_6945EC: FLdRfVar var_AC
  loc_6945EF: NotVar var_BC
  loc_6945F3: CBoolVarNull
  loc_6945F5: FFree1Str var_9C
  loc_6945F8: FFree1Ad var_94
  loc_6945FB: FFree1Var var_AC = ""
  loc_6945FE: BranchF loc_69462D
  loc_694601: FLdRfVar var_AC
  loc_694604: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694609: FLdRfVar var_AC
  loc_69460C: CBoolVarNull
  loc_69460E: FFree1Var var_AC = ""
  loc_694611: BranchF loc_69462A
  loc_694614: ILdRf Me
  loc_694617: FStAdNoPop
  loc_69461B: ImpAdLdRf MemVar_7520D4
  loc_69461E: NewIfNullPr Global
  loc_694621: Global.Unload from_stack_1
  loc_694626: FFree1Ad var_94
  loc_694629: ExitProcHresult
  loc_69462A: Branch loc_6945BE
  loc_69462D: LitI2_Byte 1
  loc_69462F: FStI2 var_8E
  loc_694632: FLdI2 var_8E
  loc_694635: CI4UI1
  loc_694636: ILdRf var_8C
  loc_694639: FnLenStr
  loc_69463A: LtI4
  loc_69463B: BranchF loc_694686
  loc_69463E: LitVarI2 var_AC, 8
  loc_694643: FLdI2 var_8E
  loc_694646: CI4UI1
  loc_694647: ILdRf var_8C
  loc_69464A: ImpAdCallI2 Mid$(, , )
  loc_69464F: FStStrNoPop var_9C
  loc_694652: ImpAdCallFPR4 push Val()
  loc_694657: LitI2_Byte &H64
  loc_694659: CR8I2
  loc_69465A: DivR8
  loc_69465B: FLdI2 var_90
  loc_69465E: CI4UI1
  loc_69465F: FLdPr Me
  loc_694662: MemLdRfVar from_stack_1.global_92
  loc_694665: Ary1StFPR4
  loc_694666: FFree1Str var_9C
  loc_694669: FFree1Var var_AC = ""
  loc_69466C: FLdI2 var_8E
  loc_69466F: LitI2_Byte 8
  loc_694671: AddI2
  loc_694672: FStI2 var_8E
  loc_694675: FLdI2 var_90
  loc_694678: LitI2_Byte 1
  loc_69467A: AddI2
  loc_69467B: FStI2 var_90
  loc_69467E: ImpAdCallFPR4 DoEvents()
  loc_694683: Branch loc_694632
  loc_694686: LitI2_Byte &HFF
  loc_694688: FLdPr Me
  loc_69468B: MemStI2 global_120
  loc_69468E: Branch loc_6946D0
  loc_694691: LitI2_Byte 0
  loc_694693: FLdRfVar var_8E
  loc_694696: LitI2 6000
  loc_694699: ForI2 var_F0
  loc_69469F: LitI2_Byte 0
  loc_6946A1: CR8I2
  loc_6946A2: FLdI2 var_8E
  loc_6946A5: CI4UI1
  loc_6946A6: FLdPr Me
  loc_6946A9: MemLdRfVar from_stack_1.global_68
  loc_6946AC: Ary1StFPR4
  loc_6946AD: LitI2_Byte 0
  loc_6946AF: CR8I2
  loc_6946B0: FLdI2 var_8E
  loc_6946B3: CI4UI1
  loc_6946B4: FLdPr Me
  loc_6946B7: MemLdRfVar from_stack_1.global_92
  loc_6946BA: Ary1StFPR4
  loc_6946BB: ImpAdCallFPR4 DoEvents()
  loc_6946C0: FLdRfVar var_8E
  loc_6946C3: NextI2 var_F0, loc_69469F
  loc_6946C8: LitI2_Byte &HFF
  loc_6946CA: FLdPr Me
  loc_6946CD: MemStI2 global_120
  loc_6946D0: Call VScroll_Change()
  loc_6946D5: LitI2_Byte 0
  loc_6946D7: FLdPrThis
  loc_6946D8: VCallAd Control_ID_txtLeyenda
  loc_6946DB: FStAdFunc var_94
  loc_6946DE: FLdPr var_94
  loc_6946E1: Me.Visible = from_stack_1b
  loc_6946E6: FFree1Ad var_94
  loc_6946E9: LitI2_Byte 0
  loc_6946EB: FLdRfVar var_8E
  loc_6946EE: LitI2_Byte &HA
  loc_6946F0: ForI2 var_F4
  loc_6946F6: FLdPr Me
  loc_6946F9: MemLdI2 global_120
  loc_6946FC: NotI4
  loc_6946FD: FLdRfVar var_F8
  loc_694700: FLdI2 var_8E
  loc_694703: FLdPrThis
  loc_694704: VCallAd Control_ID_txtLitros
  loc_694707: FStAdFunc var_94
  loc_69470A: FLdPr var_94
  loc_69470D: Set from_stack_2 = Me(from_stack_1)
  loc_694712: FLdPr var_F8
  loc_694715: Me.Locked = from_stack_1b
  loc_69471A: FFreeAd var_94 = ""
  loc_694721: FLdRfVar var_8E
  loc_694724: NextI2 var_F4, loc_6946F6
  loc_694729: LitI2_Byte &HFF
  loc_69472B: PopTmpLdAd2 var_96
  loc_69472E: ImpAdCallFPR4 Proc_166_13_5E8FA8()
  loc_694733: LitI2_Byte 0
  loc_694735: FLdPr Me
  loc_694738: MemStI2 global_116
  loc_69473B: LitI2_Byte 0
  loc_69473D: FLdPrThis
  loc_69473E: VCallAd Control_ID_GrabarTabla
  loc_694741: FStAdFunc var_94
  loc_694744: FLdPr var_94
  loc_694747: Me.Enabled = from_stack_1b
  loc_69474C: FFree1Ad var_94
  loc_69474F: ImpAdCallFPR4 DoEvents()
  loc_694754: LitI2_Byte 0
  loc_694756: FLdPr Me
  loc_694759: MemStI2 global_134
  loc_69475C: ExitProcHresult
End Function

Private Function Proc_152_28_6E4CAC(arg_C) '6E4CAC
  'Data Table: 443E20
  loc_6E40C0: FLdRfVar var_A4
  loc_6E40C3: FLdRfVar var_8C
  loc_6E40C6: FLdPr Me
  loc_6E40C9: MemLdI2 global_118
  loc_6E40CC: CUI1I2
  loc_6E40CE: FLdRfVar var_94
  loc_6E40D1: ImpAdLdRf MemVar_74C760
  loc_6E40D4: NewIfNullPr Formx
  loc_6E40D7: from_stack_1v = Formx.global_4589716Get()
  loc_6E40DC: FLdPr var_94
  loc_6E40DF: Formx.Scale from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_6E40E4: FLdRfVar var_A4
  loc_6E40E7: NotVar var_B4
  loc_6E40EB: CBoolVarNull
  loc_6E40ED: FFree1Ad var_94
  loc_6E40F0: FFree1Var var_A4 = ""
  loc_6E40F3: BranchF loc_6E4122
  loc_6E40F6: FLdRfVar var_A4
  loc_6E40F9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6E40FE: FLdRfVar var_A4
  loc_6E4101: CBoolVarNull
  loc_6E4103: FFree1Var var_A4 = ""
  loc_6E4106: BranchF loc_6E411F
  loc_6E4109: ILdRf Me
  loc_6E410C: FStAdNoPop
  loc_6E4110: ImpAdLdRf MemVar_7520D4
  loc_6E4113: NewIfNullPr Global
  loc_6E4116: Global.Unload from_stack_1
  loc_6E411B: FFree1Ad var_94
  loc_6E411E: ExitProcHresult
  loc_6E411F: Branch loc_6E40C0
  loc_6E4122: FLdRfVar var_1E4
  loc_6E4125: LitVar_Missing var_1E0
  loc_6E4128: LitVar_Missing var_1C0
  loc_6E412B: LitVar_Missing var_1A0
  loc_6E412E: LitVar_Missing var_180
  loc_6E4131: LitVar_Missing var_160
  loc_6E4134: LitVar_Missing var_140
  loc_6E4137: LitVar_Missing var_120
  loc_6E413A: LitVar_Missing var_100
  loc_6E413D: LitVar_Missing var_B4
  loc_6E4140: LitVar_Missing var_A4
  loc_6E4143: LitStr "Fecha de Generación :"
  loc_6E4146: FStStrCopy var_C0
  loc_6E4149: FLdRfVar var_C0
  loc_6E414C: LitI4 &H23
  loc_6E4151: PopTmpLdAdStr var_BC
  loc_6E4154: LitI2_Byte &H3C
  loc_6E4156: PopTmpLdAd2 var_B6
  loc_6E4159: ImpAdLdRf MemVar_74C7D0
  loc_6E415C: NewIfNullPr clsMsg
  loc_6E415F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4164: ILdRf var_1E4
  loc_6E4167: LitStr "     "
  loc_6E416A: ConcatStr
  loc_6E416B: CVarStr var_234
  loc_6E416E: LitVarI2 var_214, 2
  loc_6E4173: LitI4 7
  loc_6E4178: FLdRfVar var_8C
  loc_6E417B: CVarRef
  loc_6E4180: FLdRfVar var_224
  loc_6E4183: ImpAdCallFPR4  = Mid(, , )
  loc_6E4188: FLdRfVar var_224
  loc_6E418B: ConcatVar var_244
  loc_6E418F: LitVarStr var_254, "/"
  loc_6E4194: ConcatVar var_264
  loc_6E4198: LitVarI2 var_294, 2
  loc_6E419D: LitI4 5
  loc_6E41A2: FLdRfVar var_8C
  loc_6E41A5: CVarRef
  loc_6E41AA: FLdRfVar var_2A4
  loc_6E41AD: ImpAdCallFPR4  = Mid(, , )
  loc_6E41B2: FLdRfVar var_2A4
  loc_6E41B5: ConcatVar var_2B4
  loc_6E41B9: LitVarStr var_2C4, "/"
  loc_6E41BE: ConcatVar var_2D4
  loc_6E41C2: LitVarI2 var_304, 4
  loc_6E41C7: LitI4 1
  loc_6E41CC: FLdRfVar var_8C
  loc_6E41CF: CVarRef
  loc_6E41D4: FLdRfVar var_314
  loc_6E41D7: ImpAdCallFPR4  = Mid(, , )
  loc_6E41DC: FLdRfVar var_314
  loc_6E41DF: ConcatVar var_324
  loc_6E41E3: LitVarStr var_334, "  "
  loc_6E41E8: ConcatVar var_344
  loc_6E41EC: LitVarI2 var_374, 2
  loc_6E41F1: LitI4 9
  loc_6E41F6: FLdRfVar var_8C
  loc_6E41F9: CVarRef
  loc_6E41FE: FLdRfVar var_384
  loc_6E4201: ImpAdCallFPR4  = Mid(, , )
  loc_6E4206: FLdRfVar var_384
  loc_6E4209: ConcatVar var_394
  loc_6E420D: LitVarStr var_3A4, ":"
  loc_6E4212: ConcatVar var_3B4
  loc_6E4216: LitVarI2 var_3E4, 2
  loc_6E421B: LitI4 &HB
  loc_6E4220: FLdRfVar var_8C
  loc_6E4223: CVarRef
  loc_6E4228: FLdRfVar var_3F4
  loc_6E422B: ImpAdCallFPR4  = Mid(, , )
  loc_6E4230: FLdRfVar var_3F4
  loc_6E4233: ConcatVar var_404
  loc_6E4237: LitVarStr var_414, ":"
  loc_6E423C: ConcatVar var_424
  loc_6E4240: LitVarI2 var_454, 2
  loc_6E4245: LitI4 &HD
  loc_6E424A: FLdRfVar var_8C
  loc_6E424D: CVarRef
  loc_6E4252: FLdRfVar var_464
  loc_6E4255: ImpAdCallFPR4  = Mid(, , )
  loc_6E425A: FLdRfVar var_464
  loc_6E425D: ConcatVar var_474
  loc_6E4261: CStrVarVal var_478
  loc_6E4265: ILdRf arg_C
  loc_6E4268: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E426D: FFreeStr var_C0 = "": var_1E4 = ""
  loc_6E4276: FFreeVar var_454 = "": var_424 = "": var_464 = "": var_474 = "": var_A4 = "": var_B4 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_234 = "": var_224 = "": var_244 = "": var_294 = "": var_264 = "": var_2A4 = "": var_2B4 = "": var_304 = "": var_2D4 = "": var_314 = "": var_324 = "": var_374 = "": var_344 = "": var_384 = "": var_394 = "": var_3E4 = "": var_3B4 = "": var_3F4 = ""
  loc_6E42BD: FLdRfVar var_484
  loc_6E42C0: LitVar_Missing var_304
  loc_6E42C3: LitVar_Missing var_2D4
  loc_6E42C6: LitVar_Missing var_2B4
  loc_6E42C9: LitVar_Missing var_2A4
  loc_6E42CC: LitVar_Missing var_294
  loc_6E42CF: LitVar_Missing var_264
  loc_6E42D2: LitVar_Missing var_244
  loc_6E42D5: LitVar_Missing var_234
  loc_6E42D8: LitVar_Missing var_224
  loc_6E42DB: LitVar_Missing var_214
  loc_6E42DE: LitStr "Boca Varilla"
  loc_6E42E1: FStStrCopy var_478
  loc_6E42E4: FLdRfVar var_478
  loc_6E42E7: LitI4 &H20
  loc_6E42EC: PopTmpLdAdStr var_480
  loc_6E42EF: LitI2_Byte &H3C
  loc_6E42F1: PopTmpLdAd2 var_47A
  loc_6E42F4: ImpAdLdRf MemVar_74C7D0
  loc_6E42F7: NewIfNullPr clsMsg
  loc_6E42FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E42FF: FLdRfVar var_1E4
  loc_6E4302: LitVar_Missing var_1E0
  loc_6E4305: LitVar_Missing var_1C0
  loc_6E4308: LitVar_Missing var_1A0
  loc_6E430B: LitVar_Missing var_180
  loc_6E430E: LitVar_Missing var_160
  loc_6E4311: LitVar_Missing var_140
  loc_6E4314: LitVar_Missing var_120
  loc_6E4317: LitVar_Missing var_100
  loc_6E431A: LitVar_Missing var_B4
  loc_6E431D: LitVar_Missing var_A4
  loc_6E4320: LitStr "Calibrado por:"
  loc_6E4323: FStStrCopy var_C0
  loc_6E4326: FLdRfVar var_C0
  loc_6E4329: LitI4 &H24
  loc_6E432E: PopTmpLdAdStr var_BC
  loc_6E4331: LitI2_Byte &H3C
  loc_6E4333: PopTmpLdAd2 var_B6
  loc_6E4336: ImpAdLdRf MemVar_74C7D0
  loc_6E4339: NewIfNullPr clsMsg
  loc_6E433C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4341: ILdRf var_1E4
  loc_6E4344: LitStr "            "
  loc_6E4347: ConcatStr
  loc_6E4348: CVarStr var_474
  loc_6E434B: FLdRfVar var_4C4
  loc_6E434E: LitVar_Missing var_404
  loc_6E4351: LitVar_Missing var_3F4
  loc_6E4354: LitVar_Missing var_3E4
  loc_6E4357: LitVar_Missing var_3B4
  loc_6E435A: LitVar_Missing var_394
  loc_6E435D: LitVar_Missing var_384
  loc_6E4360: LitVar_Missing var_374
  loc_6E4363: LitVar_Missing var_344
  loc_6E4366: LitVar_Missing var_324
  loc_6E4369: LitVar_Missing var_314
  loc_6E436C: LitStr "Boca Sensor"
  loc_6E436F: FStStrCopy var_490
  loc_6E4372: FLdRfVar var_490
  loc_6E4375: LitI4 &H1F
  loc_6E437A: PopTmpLdAdStr var_48C
  loc_6E437D: LitI2_Byte &H3C
  loc_6E437F: PopTmpLdAd2 var_486
  loc_6E4382: ImpAdLdRf MemVar_74C7D0
  loc_6E4385: NewIfNullPr clsMsg
  loc_6E4388: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E438D: FLdZeroAd var_4C4
  loc_6E4390: CVarStr var_454
  loc_6E4393: FLdZeroAd var_484
  loc_6E4396: CVarStr var_424
  loc_6E4399: FLdPr Me
  loc_6E439C: MemLdI2 global_118
  loc_6E439F: CI4UI1
  loc_6E43A0: ImpAdLdRf MemVar_74C0C4
  loc_6E43A3: Ary1LdUI1
  loc_6E43A5: CI2UI1
  loc_6E43A7: LitI2_Byte 1
  loc_6E43A9: EqI2
  loc_6E43AA: CVarBoolI2 var_4D4
  loc_6E43AE: FLdRfVar var_464
  loc_6E43B1: ImpAdCallFPR4  = IIf(, , )
  loc_6E43B6: FLdRfVar var_464
  loc_6E43B9: ConcatVar var_4E4
  loc_6E43BD: CStrVarVal var_4E8
  loc_6E43C1: ILdRf arg_C
  loc_6E43C4: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E43C9: FFreeStr var_C0 = "": var_1E4 = "": var_478 = "": var_490 = ""
  loc_6E43D6: FFreeVar var_4D4 = "": var_424 = "": var_454 = "": var_474 = "": var_464 = "": var_4E4 = "": var_A4 = "": var_B4 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_304 = "": var_314 = "": var_324 = "": var_344 = "": var_374 = "": var_384 = "": var_394 = "": var_3B4 = "": var_3E4 = "": var_3F4 = ""
  loc_6E4421: LitStr vbNullString
  loc_6E4424: ILdRf arg_C
  loc_6E4427: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E442C: LitI4 1
  loc_6E4431: LitI4 1
  loc_6E4436: LitVarStr var_204, "####0"
  loc_6E443B: FStVarCopyObj var_214
  loc_6E443E: FLdRfVar var_214
  loc_6E4441: FLdPr Me
  loc_6E4444: MemLdI2 global_118
  loc_6E4447: CI4UI1
  loc_6E4448: ImpAdLdRf MemVar_74C2AC
  loc_6E444B: Ary1LdRf
  loc_6E444C: CVarRef
  loc_6E4451: ImpAdCallI2 Format$(, )
  loc_6E4456: FStStr var_4E8
  loc_6E4459: FLdRfVar var_1E4
  loc_6E445C: LitVar_Missing var_1E0
  loc_6E445F: LitVar_Missing var_1C0
  loc_6E4462: LitVar_Missing var_1A0
  loc_6E4465: LitVar_Missing var_180
  loc_6E4468: LitVar_Missing var_160
  loc_6E446B: LitVar_Missing var_140
  loc_6E446E: LitVar_Missing var_120
  loc_6E4471: LitVar_Missing var_100
  loc_6E4474: LitVar_Missing var_B4
  loc_6E4477: LitVar_Missing var_A4
  loc_6E447A: LitStr "Offset Sensor Producto :"
  loc_6E447D: FStStrCopy var_C0
  loc_6E4480: FLdRfVar var_C0
  loc_6E4483: LitI4 &H25
  loc_6E4488: PopTmpLdAdStr var_BC
  loc_6E448B: LitI2_Byte &H3C
  loc_6E448D: PopTmpLdAd2 var_B6
  loc_6E4490: ImpAdLdRf MemVar_74C7D0
  loc_6E4493: NewIfNullPr clsMsg
  loc_6E4496: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E449B: ILdRf var_1E4
  loc_6E449E: LitI4 1
  loc_6E44A3: LitI4 1
  loc_6E44A8: LitVarStr var_254, "@@@@@@@@"
  loc_6E44AD: FStVarCopyObj var_234
  loc_6E44B0: FLdRfVar var_234
  loc_6E44B3: FLdZeroAd var_4E8
  loc_6E44B6: CVarStr var_224
  loc_6E44B9: ImpAdCallI2 Format$(, )
  loc_6E44BE: FStStrNoPop var_478
  loc_6E44C1: ConcatStr
  loc_6E44C2: FStStrNoPop var_484
  loc_6E44C5: LitStr " "
  loc_6E44C8: ConcatStr
  loc_6E44C9: FStStrNoPop var_490
  loc_6E44CC: LitStr "mm"
  loc_6E44CF: ConcatStr
  loc_6E44D0: FStStrNoPop var_4C4
  loc_6E44D3: ILdRf arg_C
  loc_6E44D6: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E44DB: FFreeStr var_C0 = "": var_1E4 = "": var_478 = "": var_484 = "": var_490 = "": var_4C4 = ""
  loc_6E44EC: FFreeVar var_A4 = "": var_B4 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_224 = ""
  loc_6E4509: LitI4 1
  loc_6E450E: LitI4 1
  loc_6E4513: LitVarStr var_204, "####0"
  loc_6E4518: FStVarCopyObj var_214
  loc_6E451B: FLdRfVar var_214
  loc_6E451E: FLdPr Me
  loc_6E4521: MemLdI2 global_118
  loc_6E4524: CI4UI1
  loc_6E4525: ImpAdLdRf MemVar_74C294
  loc_6E4528: Ary1LdRf
  loc_6E4529: CVarRef
  loc_6E452E: ImpAdCallI2 Format$(, )
  loc_6E4533: FStStr var_4EC
  loc_6E4536: FLdRfVar var_1E4
  loc_6E4539: LitVar_Missing var_1E0
  loc_6E453C: LitVar_Missing var_1C0
  loc_6E453F: LitVar_Missing var_1A0
  loc_6E4542: LitVar_Missing var_180
  loc_6E4545: LitVar_Missing var_160
  loc_6E4548: LitVar_Missing var_140
  loc_6E454B: LitVar_Missing var_120
  loc_6E454E: LitVar_Missing var_100
  loc_6E4551: LitVar_Missing var_B4
  loc_6E4554: LitVar_Missing var_A4
  loc_6E4557: LitStr "Offset Sensor Agua :"
  loc_6E455A: FStStrCopy var_C0
  loc_6E455D: FLdRfVar var_C0
  loc_6E4560: LitI4 &H26
  loc_6E4565: PopTmpLdAdStr var_BC
  loc_6E4568: LitI2_Byte &H3C
  loc_6E456A: PopTmpLdAd2 var_B6
  loc_6E456D: ImpAdLdRf MemVar_74C7D0
  loc_6E4570: NewIfNullPr clsMsg
  loc_6E4573: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E4578: ILdRf var_1E4
  loc_6E457B: LitStr "    "
  loc_6E457E: ConcatStr
  loc_6E457F: FStStrNoPop var_478
  loc_6E4582: LitI4 1
  loc_6E4587: LitI4 1
  loc_6E458C: LitVarStr var_254, "@@@@@@@@"
  loc_6E4591: FStVarCopyObj var_234
  loc_6E4594: FLdRfVar var_234
  loc_6E4597: FLdZeroAd var_4EC
  loc_6E459A: CVarStr var_224
  loc_6E459D: ImpAdCallI2 Format$(, )
  loc_6E45A2: FStStrNoPop var_484
  loc_6E45A5: ConcatStr
  loc_6E45A6: FStStrNoPop var_490
  loc_6E45A9: LitStr " "
  loc_6E45AC: ConcatStr
  loc_6E45AD: FStStrNoPop var_4C4
  loc_6E45B0: LitStr "mm"
  loc_6E45B3: ConcatStr
  loc_6E45B4: FStStrNoPop var_4E8
  loc_6E45B7: ILdRf arg_C
  loc_6E45BA: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E45BF: FFreeStr var_C0 = "": var_1E4 = "": var_478 = "": var_484 = "": var_490 = "": var_4C4 = "": var_4E8 = ""
  loc_6E45D2: FFreeVar var_A4 = "": var_B4 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_224 = ""
  loc_6E45EF: LitStr vbNullString
  loc_6E45F2: ILdRf arg_C
  loc_6E45F5: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E45FA: LitStr vbNullString
  loc_6E45FD: ILdRf arg_C
  loc_6E4600: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E4605: LitI4 5
  loc_6E460A: FLdRfVar var_A4
  loc_6E460D: ImpAdCallFPR4  = Space()
  loc_6E4612: FLdRfVar var_A4
  loc_6E4615: LitVarStr var_D0, "MM"
  loc_6E461A: ConcatVar var_B4
  loc_6E461E: LitI4 8
  loc_6E4623: FLdRfVar var_100
  loc_6E4626: ImpAdCallFPR4  = Space()
  loc_6E462B: FLdRfVar var_100
  loc_6E462E: ConcatVar var_120
  loc_6E4632: ImpAdLdI4 MemVar_74BEBC
  loc_6E4635: CVarStr var_E0
  loc_6E4638: ConcatVar var_140
  loc_6E463C: LitI4 &HD
  loc_6E4641: FLdRfVar var_160
  loc_6E4644: ImpAdCallFPR4  = Space()
  loc_6E4649: FLdRfVar var_160
  loc_6E464C: ConcatVar var_180
  loc_6E4650: LitVarStr var_F0, "MM"
  loc_6E4655: ConcatVar var_1A0
  loc_6E4659: LitI4 8
  loc_6E465E: FLdRfVar var_1C0
  loc_6E4661: ImpAdCallFPR4  = Space()
  loc_6E4666: FLdRfVar var_1C0
  loc_6E4669: ConcatVar var_1E0
  loc_6E466D: ImpAdLdI4 MemVar_74BEBC
  loc_6E4670: CVarStr var_110
  loc_6E4673: ConcatVar var_214
  loc_6E4677: LitI4 &HD
  loc_6E467C: FLdRfVar var_224
  loc_6E467F: ImpAdCallFPR4  = Space()
  loc_6E4684: FLdRfVar var_224
  loc_6E4687: ConcatVar var_234
  loc_6E468B: LitVarStr var_130, "MM"
  loc_6E4690: ConcatVar var_244
  loc_6E4694: LitI4 8
  loc_6E4699: FLdRfVar var_264
  loc_6E469C: ImpAdCallFPR4  = Space()
  loc_6E46A1: FLdRfVar var_264
  loc_6E46A4: ConcatVar var_294
  loc_6E46A8: ImpAdLdI4 MemVar_74BEBC
  loc_6E46AB: CVarStr var_150
  loc_6E46AE: ConcatVar var_2A4
  loc_6E46B2: CStrVarVal var_C0
  loc_6E46B6: ILdRf arg_C
  loc_6E46B9: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E46BE: FFree1Str var_C0
  loc_6E46C1: FFreeVar var_A4 = "": var_B4 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_264 = "": var_294 = ""
  loc_6E46E6: LitStr vbNullString
  loc_6E46E9: ILdRf arg_C
  loc_6E46EC: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E46F1: FLdPr Me
  loc_6E46F4: MemLdI2 global_118
  loc_6E46F7: CI4UI1
  loc_6E46F8: ImpAdLdRf MemVar_74C0C4
  loc_6E46FB: Ary1LdUI1
  loc_6E46FD: CI2UI1
  loc_6E46FF: LitI2_Byte 0
  loc_6E4701: EqI2
  loc_6E4702: BranchF loc_6E4733
  loc_6E4705: FLdPr Me
  loc_6E4708: MemLdI2 EmitidaPorSensor
  loc_6E470B: BranchF loc_6E4716
  loc_6E470E: LitI2_Byte 0
  loc_6E4710: FStI2 var_8E
  loc_6E4713: Branch loc_6E4730
  loc_6E4716: FLdPr Me
  loc_6E4719: MemLdI2 global_118
  loc_6E471C: CI4UI1
  loc_6E471D: ImpAdLdRf MemVar_74C260
  loc_6E4720: Ary1LdI2
  loc_6E4721: FLdPr Me
  loc_6E4724: MemLdI2 global_118
  loc_6E4727: CI4UI1
  loc_6E4728: ImpAdLdRf MemVar_74C278
  loc_6E472B: Ary1LdI2
  loc_6E472C: SubI2
  loc_6E472D: FStI2 var_8E
  loc_6E4730: Branch loc_6E475F
  loc_6E4733: FLdPr Me
  loc_6E4736: MemLdI2 EmitidaPorSensor
  loc_6E4739: BranchF loc_6E475A
  loc_6E473C: FLdPr Me
  loc_6E473F: MemLdI2 global_118
  loc_6E4742: CI4UI1
  loc_6E4743: ImpAdLdRf MemVar_74C260
  loc_6E4746: Ary1LdI2
  loc_6E4747: UMiI2
  loc_6E4748: FLdPr Me
  loc_6E474B: MemLdI2 global_118
  loc_6E474E: CI4UI1
  loc_6E474F: ImpAdLdRf MemVar_74C278
  loc_6E4752: Ary1LdI2
  loc_6E4753: AddI2
  loc_6E4754: FStI2 var_8E
  loc_6E4757: Branch loc_6E475F
  loc_6E475A: LitI2_Byte 0
  loc_6E475C: FStI2 var_8E
  loc_6E475F: FLdPr Me
  loc_6E4762: MemLdStr MMDesde
  loc_6E4765: FLdI2 var_8E
  loc_6E4768: CI4UI1
  loc_6E4769: AddI4
  loc_6E476A: LitI4 0
  loc_6E476F: LtI4
  loc_6E4770: BranchF loc_6E4785
  loc_6E4773: FLdPr Me
  loc_6E4776: MemLdStr MMDesde
  loc_6E4779: FLdI2 var_8E
  loc_6E477C: CI4UI1
  loc_6E477D: AddI4
  loc_6E477E: FnAbsI4
  loc_6E477F: FLdPr Me
  loc_6E4782: MemStI4 MMDesde
  loc_6E4785: FLdPr Me
  loc_6E4788: MemLdStr MMDesde
  loc_6E478B: FLdRfVar var_88
  loc_6E478E: FLdPr Me
  loc_6E4791: MemLdStr MMHasta
  loc_6E4794: LitI4 1
  loc_6E4799: SubI4
  loc_6E479A: LitI4 3
  loc_6E479F: ForStepI4 var_4F4
  loc_6E47A5: ILdRf var_88
  loc_6E47A8: FLdPr Me
  loc_6E47AB: MemLdStr MMDesde
  loc_6E47AE: GtI4
  loc_6E47AF: ILdRf var_88
  loc_6E47B2: FLdI2 var_8E
  loc_6E47B5: CI4UI1
  loc_6E47B6: AddI4
  loc_6E47B7: FLdPr Me
  loc_6E47BA: MemLdRfVar from_stack_1.global_92
  loc_6E47BD: Ary1LdFPR4
  loc_6E47BE: LitI2_Byte 0
  loc_6E47C0: CR8I2
  loc_6E47C1: EqR4
  loc_6E47C2: AndI4
  loc_6E47C3: BranchF loc_6E47C9
  loc_6E47C6: Branch loc_6E4CAA
  loc_6E47C9: LitI4 1
  loc_6E47CE: LitI4 1
  loc_6E47D3: LitVarStr var_E0, "####0"
  loc_6E47D8: FStVarCopyObj var_A4
  loc_6E47DB: FLdRfVar var_A4
  loc_6E47DE: FLdRfVar var_88
  loc_6E47E1: CVarRef
  loc_6E47E6: ImpAdCallI2 Format$(, )
  loc_6E47EB: FStStr var_1E4
  loc_6E47EE: ILdRf var_88
  loc_6E47F1: FLdI2 var_8E
  loc_6E47F4: CI4UI1
  loc_6E47F5: AddI4
  loc_6E47F6: FLdPr Me
  loc_6E47F9: MemLdRfVar from_stack_1.global_92
  loc_6E47FC: Ary1LdRf
  loc_6E47FD: CVarRef
  loc_6E4802: LitVarI2 var_180, 0
  loc_6E4807: ILdRf var_88
  loc_6E480A: FLdI2 var_8E
  loc_6E480D: CI4UI1
  loc_6E480E: AddI4
  loc_6E480F: FLdPr Me
  loc_6E4812: MemLdRfVar from_stack_1.global_92
  loc_6E4815: Ary1LdFPR4
  loc_6E4816: LitI2_Byte 0
  loc_6E4818: CR8I2
  loc_6E4819: LtR8
  loc_6E481A: CVarBoolI2 var_110
  loc_6E481E: FLdRfVar var_1A0
  loc_6E4821: ImpAdCallFPR4  = IIf(, , )
  loc_6E4826: LitI4 1
  loc_6E482B: LitI4 1
  loc_6E4830: LitVarStr var_170, "####0.00"
  loc_6E4835: FStVarCopyObj var_1C0
  loc_6E4838: FLdRfVar var_1C0
  loc_6E483B: FLdRfVar var_1A0
  loc_6E483E: ImpAdCallI2 Format$(, )
  loc_6E4843: FStStr var_478
  loc_6E4846: LitI4 1
  loc_6E484B: LitI4 1
  loc_6E4850: LitVarStr var_274, "####0"
  loc_6E4855: FStVarCopyObj var_394
  loc_6E4858: FLdRfVar var_394
  loc_6E485B: ILdRf var_88
  loc_6E485E: LitI4 1
  loc_6E4863: AddI4
  loc_6E4864: CVarI4
  loc_6E4868: ImpAdCallI2 Format$(, )
  loc_6E486D: FStStr var_484
  loc_6E4870: ILdRf var_88
  loc_6E4873: LitI4 1
  loc_6E4878: AddI4
  loc_6E4879: FLdI2 var_8E
  loc_6E487C: CI4UI1
  loc_6E487D: AddI4
  loc_6E487E: FLdPr Me
  loc_6E4881: MemLdRfVar from_stack_1.global_92
  loc_6E4884: Ary1LdRf
  loc_6E4885: CVarRef
  loc_6E488A: LitVarI2 var_464, 0
  loc_6E488F: ILdRf var_88
  loc_6E4892: LitI4 1
  loc_6E4897: AddI4
  loc_6E4898: FLdI2 var_8E
  loc_6E489B: CI4UI1
  loc_6E489C: AddI4
  loc_6E489D: FLdPr Me
  loc_6E48A0: MemLdRfVar from_stack_1.global_92
  loc_6E48A3: Ary1LdFPR4
  loc_6E48A4: LitI2_Byte 0
  loc_6E48A6: CR8I2
  loc_6E48A7: LtR8
  loc_6E48A8: CVarBoolI2 var_2C4
  loc_6E48AC: FLdRfVar var_474
  loc_6E48AF: ImpAdCallFPR4  = IIf(, , )
  loc_6E48B4: LitI4 1
  loc_6E48B9: LitI4 1
  loc_6E48BE: LitVarStr var_334, "####0.00"
  loc_6E48C3: FStVarCopyObj var_4E4
  loc_6E48C6: FLdRfVar var_4E4
  loc_6E48C9: FLdRfVar var_474
  loc_6E48CC: ImpAdCallI2 Format$(, )
  loc_6E48D1: FStStr var_490
  loc_6E48D4: LitI4 1
  loc_6E48D9: LitI4 1
  loc_6E48DE: LitVarStr var_434, "####0"
  loc_6E48E3: FStVarCopyObj var_604
  loc_6E48E6: FLdRfVar var_604
  loc_6E48E9: ILdRf var_88
  loc_6E48EC: LitI4 2
  loc_6E48F1: AddI4
  loc_6E48F2: CVarI4
  loc_6E48F6: ImpAdCallI2 Format$(, )
  loc_6E48FB: FStStr var_4C4
  loc_6E48FE: ILdRf var_88
  loc_6E4901: LitI4 2
  loc_6E4906: AddI4
  loc_6E4907: FLdI2 var_8E
  loc_6E490A: CI4UI1
  loc_6E490B: AddI4
  loc_6E490C: FLdPr Me
  loc_6E490F: MemLdRfVar from_stack_1.global_92
  loc_6E4912: Ary1LdRf
  loc_6E4913: CVarRef
  loc_6E4918: LitVarI2 var_674, 0
  loc_6E491D: ILdRf var_88
  loc_6E4920: LitI4 2
  loc_6E4925: AddI4
  loc_6E4926: FLdI2 var_8E
  loc_6E4929: CI4UI1
  loc_6E492A: AddI4
  loc_6E492B: FLdPr Me
  loc_6E492E: MemLdRfVar from_stack_1.global_92
  loc_6E4931: Ary1LdFPR4
  loc_6E4932: LitI2_Byte 0
  loc_6E4934: CR8I2
  loc_6E4935: LtR8
  loc_6E4936: CVarBoolI2 var_4A0
  loc_6E493A: FLdRfVar var_684
  loc_6E493D: ImpAdCallFPR4  = IIf(, , )
  loc_6E4942: LitI4 1
  loc_6E4947: LitI4 1
  loc_6E494C: LitVarStr var_4D4, "####0.00"
  loc_6E4951: FStVarCopyObj var_694
  loc_6E4954: FLdRfVar var_694
  loc_6E4957: FLdRfVar var_684
  loc_6E495A: ImpAdCallI2 Format$(, )
  loc_6E495F: FStStr var_4E8
  loc_6E4962: LitI4 1
  loc_6E4967: LitI4 1
  loc_6E496C: LitVarStr var_F0, "@@@@@@@@"
  loc_6E4971: FStVarCopyObj var_100
  loc_6E4974: FLdRfVar var_100
  loc_6E4977: FLdZeroAd var_1E4
  loc_6E497A: CVarStr var_B4
  loc_6E497D: ImpAdCallI2 Format$(, )
  loc_6E4982: CVarStr var_140
  loc_6E4985: LitI4 4
  loc_6E498A: FLdRfVar var_120
  loc_6E498D: ImpAdCallFPR4  = Space()
  loc_6E4992: FLdRfVar var_120
  loc_6E4995: ConcatVar var_160
  loc_6E4999: LitI4 1
  loc_6E499E: LitI4 1
  loc_6E49A3: LitVarStr var_190, "@@@@@@@@"
  loc_6E49A8: FStVarCopyObj var_214
  loc_6E49AB: FLdRfVar var_214
  loc_6E49AE: FLdZeroAd var_478
  loc_6E49B1: CVarStr var_1E0
  loc_6E49B4: ImpAdCallI2 Format$(, )
  loc_6E49B9: CVarStr var_224
  loc_6E49BC: ConcatVar var_234
  loc_6E49C0: LitI4 2
  loc_6E49C5: FLdRfVar var_244
  loc_6E49C8: ImpAdCallFPR4  = Space()
  loc_6E49CD: FLdRfVar var_244
  loc_6E49D0: ConcatVar var_264
  loc_6E49D4: LitVarStr var_1F4, " "
  loc_6E49D9: FStVarCopyObj var_2A4
  loc_6E49DC: FLdRfVar var_2A4
  loc_6E49DF: LitVarStr var_1D0, "*"
  loc_6E49E4: FStVarCopyObj var_294
  loc_6E49E7: FLdRfVar var_294
  loc_6E49EA: FLdI2 var_8E
  loc_6E49ED: LitI2_Byte 0
  loc_6E49EF: EqI2
  loc_6E49F0: ILdRf var_88
  loc_6E49F3: FLdPr Me
  loc_6E49F6: MemLdRfVar from_stack_1.global_68
  loc_6E49F9: Ary1LdFPR4
  loc_6E49FA: LitI2_Byte 0
  loc_6E49FC: CR8I2
  loc_6E49FD: NeR8
  loc_6E49FE: AndI4
  loc_6E49FF: CVarBoolI2 var_1B0
  loc_6E4A03: FLdRfVar var_2B4
  loc_6E4A06: ImpAdCallFPR4  = IIf(, , )
  loc_6E4A0B: FLdRfVar var_2B4
  loc_6E4A0E: ConcatVar var_2D4
  loc_6E4A12: LitI4 1
  loc_6E4A17: FLdRfVar var_304
  loc_6E4A1A: ImpAdCallFPR4  = Space()
  loc_6E4A1F: FLdRfVar var_304
  loc_6E4A22: ConcatVar var_314
  loc_6E4A26: LitVarStr var_204, "|"
  loc_6E4A2B: ConcatVar var_324
  loc_6E4A2F: LitI4 4
  loc_6E4A34: FLdRfVar var_344
  loc_6E4A37: ImpAdCallFPR4  = Space()
  loc_6E4A3C: FLdRfVar var_344
  loc_6E4A3F: ConcatVar var_374
  loc_6E4A43: LitI4 1
  loc_6E4A48: LitI4 1
  loc_6E4A4D: LitVarStr var_284, "@@@@@@@@"
  loc_6E4A52: FStVarCopyObj var_3E4
  loc_6E4A55: FLdRfVar var_3E4
  loc_6E4A58: FLdZeroAd var_484
  loc_6E4A5B: CVarStr var_3B4
  loc_6E4A5E: ImpAdCallI2 Format$(, )
  loc_6E4A63: CVarStr var_3F4
  loc_6E4A66: ConcatVar var_404
  loc_6E4A6A: LitI4 4
  loc_6E4A6F: FLdRfVar var_424
  loc_6E4A72: ImpAdCallFPR4  = Space()
  loc_6E4A77: FLdRfVar var_424
  loc_6E4A7A: ConcatVar var_454
  loc_6E4A7E: LitI4 1
  loc_6E4A83: LitI4 1
  loc_6E4A88: LitVarStr var_354, "@@@@@@@@"
  loc_6E4A8D: FStVarCopyObj var_514
  loc_6E4A90: FLdRfVar var_514
  loc_6E4A93: FLdZeroAd var_490
  loc_6E4A96: CVarStr var_504
  loc_6E4A99: ImpAdCallI2 Format$(, )
  loc_6E4A9E: CVarStr var_524
  loc_6E4AA1: ConcatVar var_534
  loc_6E4AA5: LitI4 2
  loc_6E4AAA: FLdRfVar var_544
  loc_6E4AAD: ImpAdCallFPR4  = Space()
  loc_6E4AB2: FLdRfVar var_544
  loc_6E4AB5: ConcatVar var_554
  loc_6E4AB9: LitVarStr var_3C4, " "
  loc_6E4ABE: FStVarCopyObj var_574
  loc_6E4AC1: FLdRfVar var_574
  loc_6E4AC4: LitVarStr var_3A4, "*"
  loc_6E4AC9: FStVarCopyObj var_564
  loc_6E4ACC: FLdRfVar var_564
  loc_6E4ACF: FLdI2 var_8E
  loc_6E4AD2: LitI2_Byte 0
  loc_6E4AD4: EqI2
  loc_6E4AD5: ILdRf var_88
  loc_6E4AD8: LitI4 1
  loc_6E4ADD: AddI4
  loc_6E4ADE: FLdPr Me
  loc_6E4AE1: MemLdRfVar from_stack_1.global_68
  loc_6E4AE4: Ary1LdFPR4
  loc_6E4AE5: LitI2_Byte 0
  loc_6E4AE7: CR8I2
  loc_6E4AE8: NeR8
  loc_6E4AE9: AndI4
  loc_6E4AEA: CVarBoolI2 var_364
  loc_6E4AEE: FLdRfVar var_584
  loc_6E4AF1: ImpAdCallFPR4  = IIf(, , )
  loc_6E4AF6: FLdRfVar var_584
  loc_6E4AF9: ConcatVar var_594
  loc_6E4AFD: LitI4 1
  loc_6E4B02: FLdRfVar var_5A4
  loc_6E4B05: ImpAdCallFPR4  = Space()
  loc_6E4B0A: FLdRfVar var_5A4
  loc_6E4B0D: ConcatVar var_5B4
  loc_6E4B11: LitVarStr var_3D4, "|"
  loc_6E4B16: ConcatVar var_5C4
  loc_6E4B1A: LitI4 4
  loc_6E4B1F: FLdRfVar var_5D4
  loc_6E4B22: ImpAdCallFPR4  = Space()
  loc_6E4B27: FLdRfVar var_5D4
  loc_6E4B2A: ConcatVar var_5E4
  loc_6E4B2E: LitI4 1
  loc_6E4B33: LitI4 1
  loc_6E4B38: LitVarStr var_444, "@@@@@@@@"
  loc_6E4B3D: FStVarCopyObj var_624
  loc_6E4B40: FLdRfVar var_624
  loc_6E4B43: FLdZeroAd var_4C4
  loc_6E4B46: CVarStr var_614
  loc_6E4B49: ImpAdCallI2 Format$(, )
  loc_6E4B4E: CVarStr var_634
  loc_6E4B51: ConcatVar var_644
  loc_6E4B55: LitI4 4
  loc_6E4B5A: FLdRfVar var_654
  loc_6E4B5D: ImpAdCallFPR4  = Space()
  loc_6E4B62: FLdRfVar var_654
  loc_6E4B65: ConcatVar var_664
  loc_6E4B69: LitI4 1
  loc_6E4B6E: LitI4 1
  loc_6E4B73: LitVarStr var_6B4, "@@@@@@@@"
  loc_6E4B78: FStVarCopyObj var_6C4
  loc_6E4B7B: FLdRfVar var_6C4
  loc_6E4B7E: FLdZeroAd var_4E8
  loc_6E4B81: CVarStr var_6A4
  loc_6E4B84: ImpAdCallI2 Format$(, )
  loc_6E4B89: CVarStr var_6D4
  loc_6E4B8C: ConcatVar var_6E4
  loc_6E4B90: LitI4 2
  loc_6E4B95: FLdRfVar var_6F4
  loc_6E4B98: ImpAdCallFPR4  = Space()
  loc_6E4B9D: FLdRfVar var_6F4
  loc_6E4BA0: ConcatVar var_704
  loc_6E4BA4: LitVarStr var_744, " "
  loc_6E4BA9: FStVarCopyObj var_754
  loc_6E4BAC: FLdRfVar var_754
  loc_6E4BAF: LitVarStr var_724, "*"
  loc_6E4BB4: FStVarCopyObj var_734
  loc_6E4BB7: FLdRfVar var_734
  loc_6E4BBA: FLdI2 var_8E
  loc_6E4BBD: LitI2_Byte 0
  loc_6E4BBF: EqI2
  loc_6E4BC0: ILdRf var_88
  loc_6E4BC3: LitI4 2
  loc_6E4BC8: AddI4
  loc_6E4BC9: FLdPr Me
  loc_6E4BCC: MemLdRfVar from_stack_1.global_68
  loc_6E4BCF: Ary1LdFPR4
  loc_6E4BD0: LitI2_Byte 0
  loc_6E4BD2: CR8I2
  loc_6E4BD3: NeR8
  loc_6E4BD4: AndI4
  loc_6E4BD5: CVarBoolI2 var_714
  loc_6E4BD9: FLdRfVar var_764
  loc_6E4BDC: ImpAdCallFPR4  = IIf(, , )
  loc_6E4BE1: FLdRfVar var_764
  loc_6E4BE4: ConcatVar var_774
  loc_6E4BE8: CStrVarVal var_C0
  loc_6E4BEC: ILdRf arg_C
  loc_6E4BEF: from_stack_3v = Proc_152_36_5DE528(from_stack_1v, from_stack_2v)
  loc_6E4BF4: FFreeStr var_C0 = "": var_1E4 = "": var_478 = "": var_484 = "": var_490 = "": var_4C4 = ""
  loc_6E4C05: FFreeVar var_654 = "": var_4A0 = "": var_674 = "": var_684 = "": var_694 = "": var_6A4 = "": var_6C4 = "": var_664 = "": var_6D4 = "": var_6E4 = "": var_6F4 = "": var_714 = "": var_734 = "": var_754 = "": var_704 = "": var_764 = "": var_774 = "": var_3F4 = "": var_404 = "": var_424 = "": var_2C4 = "": var_464 = "": var_474 = "": var_4E4 = "": var_504 = "": var_514 = "": var_454 = "": var_524 = "": var_534 = "": var_544 = "": var_364 = "": var_564 = "": var_574 = "": var_554 = "": var_584 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_604 = "": var_614 = "": var_624 = "": var_5E4 = "": var_634 = "": var_644 = "": var_A4 = "": var_B4 = "": var_100 = "": var_140 = "": var_120 = "": var_110 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_214 = "": var_160 = "": var_224 = "": var_234 = "": var_244 = "": var_1B0 = "": var_294 = "": var_2A4 = "": var_264 = "": var_2B4 = "": var_2D4 = "": var_304 = "": var_314 = "": var_324 = "": var_344 = "": var_384 = "": var_394 = "": var_3B4 = "": var_3E4 = ""
  loc_6E4CA2: FLdRfVar var_88
  loc_6E4CA5: NextStepI4 var_4F4, loc_6E47A5
  loc_6E4CAA: ExitProcHresult
End Function

Private Function Proc_152_29_65D200(arg_C) '65D200
  'Data Table: 443E20
  loc_65CED8: LitI2_Byte 0
  loc_65CEDA: FLdPr Me
  loc_65CEDD: MemStI2 global_134
  loc_65CEE0: LitI2_Byte 0
  loc_65CEE2: FStI2 var_8A
  loc_65CEE5: LitI2_Byte 1
  loc_65CEE7: FStI2 var_8C
  loc_65CEEA: LitStr "0000000000000000"
  loc_65CEED: FStStrCopy var_88
  loc_65CEF0: LitI2_Byte 1
  loc_65CEF2: FLdRfVar var_8E
  loc_65CEF5: LitI2 6000
  loc_65CEF8: ForI2 var_92
  loc_65CEFE: FLdI2 var_8E
  loc_65CF01: CI4UI1
  loc_65CF02: FLdPr Me
  loc_65CF05: MemLdRfVar from_stack_1.global_68
  loc_65CF08: Ary1LdFPR4
  loc_65CF09: LitI2_Byte 0
  loc_65CF0B: CR8I2
  loc_65CF0C: GtR4
  loc_65CF0D: BranchF loc_65D10C
  loc_65CF10: ILdRf var_88
  loc_65CF13: LitI4 1
  loc_65CF18: LitI4 1
  loc_65CF1D: LitVarStr var_B4, "00000000"
  loc_65CF22: FStVarCopyObj var_C4
  loc_65CF25: FLdRfVar var_C4
  loc_65CF28: FLdRfVar var_8E
  loc_65CF2B: CVarRef
  loc_65CF30: ImpAdCallI2 Format$(, )
  loc_65CF35: FStStrNoPop var_C8
  loc_65CF38: ConcatStr
  loc_65CF39: FStStrNoPop var_10C
  loc_65CF3C: LitI4 1
  loc_65CF41: LitI4 1
  loc_65CF46: LitVarStr var_F8, "00000000"
  loc_65CF4B: FStVarCopyObj var_108
  loc_65CF4E: FLdRfVar var_108
  loc_65CF51: FLdI2 var_8E
  loc_65CF54: CI4UI1
  loc_65CF55: FLdPr Me
  loc_65CF58: MemLdRfVar from_stack_1.global_68
  loc_65CF5B: Ary1LdFPR4
  loc_65CF5C: LitI2_Byte &H64
  loc_65CF5E: CR8I2
  loc_65CF5F: MulR8
  loc_65CF60: CVarR4
  loc_65CF64: ImpAdCallI2 Format$(, )
  loc_65CF69: FStStrNoPop var_110
  loc_65CF6C: ConcatStr
  loc_65CF6D: FStStr var_88
  loc_65CF70: FFreeStr var_C8 = "": var_10C = ""
  loc_65CF79: FFreeVar var_C4 = "": var_E8 = ""
  loc_65CF82: FLdI2 var_8C
  loc_65CF85: LitI2_Byte 1
  loc_65CF87: AddI2
  loc_65CF88: FStI2 var_8C
  loc_65CF8B: FLdI2 var_8C
  loc_65CF8E: LitI2 400
  loc_65CF91: EqI2
  loc_65CF92: BranchF loc_65D10C
  loc_65CF95: FLdRfVar var_116
  loc_65CF98: FLdRfVar var_8E
  loc_65CF9B: FLdPr Me
  loc_65CF9E: MemLdRfVar from_stack_1.global_68
  loc_65CFA1: PopTmpLdAdStr var_114
  loc_65CFA4: from_stack_3v = Proc_152_34_5DB29C(from_stack_1v, from_stack_2v)
  loc_65CFA9: FLdI2 var_116
  loc_65CFAC: BranchF loc_65D020
  loc_65CFAF: LitI4 1
  loc_65CFB4: LitI4 1
  loc_65CFB9: LitVarStr var_B4, "00000000"
  loc_65CFBE: FStVarCopyObj var_C4
  loc_65CFC1: FLdRfVar var_C4
  loc_65CFC4: FLdRfVar var_8A
  loc_65CFC7: CVarRef
  loc_65CFCC: ImpAdCallI2 Format$(, )
  loc_65CFD1: FStStrNoPop var_C8
  loc_65CFD4: LitI4 1
  loc_65CFD9: LitI4 1
  loc_65CFDE: LitVarStr var_F8, "00000000"
  loc_65CFE3: FStVarCopyObj var_E8
  loc_65CFE6: FLdRfVar var_E8
  loc_65CFE9: FLdRfVar var_8C
  loc_65CFEC: CVarRef
  loc_65CFF1: ImpAdCallI2 Format$(, )
  loc_65CFF6: FStStrNoPop var_10C
  loc_65CFF9: ConcatStr
  loc_65CFFA: FStStrNoPop var_110
  loc_65CFFD: LitStr "1"
  loc_65D000: ConcatStr
  loc_65D001: FStStrNoPop var_11C
  loc_65D004: ILdRf var_88
  loc_65D007: ConcatStr
  loc_65D008: FStStr var_88
  loc_65D00B: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_65D016: FFreeVar var_C4 = ""
  loc_65D01D: Branch loc_65D08E
  loc_65D020: LitI4 1
  loc_65D025: LitI4 1
  loc_65D02A: LitVarStr var_B4, "00000000"
  loc_65D02F: FStVarCopyObj var_C4
  loc_65D032: FLdRfVar var_C4
  loc_65D035: FLdRfVar var_8A
  loc_65D038: CVarRef
  loc_65D03D: ImpAdCallI2 Format$(, )
  loc_65D042: FStStrNoPop var_C8
  loc_65D045: LitI4 1
  loc_65D04A: LitI4 1
  loc_65D04F: LitVarStr var_F8, "00000000"
  loc_65D054: FStVarCopyObj var_E8
  loc_65D057: FLdRfVar var_E8
  loc_65D05A: FLdRfVar var_8C
  loc_65D05D: CVarRef
  loc_65D062: ImpAdCallI2 Format$(, )
  loc_65D067: FStStrNoPop var_10C
  loc_65D06A: ConcatStr
  loc_65D06B: FStStrNoPop var_110
  loc_65D06E: LitStr "0"
  loc_65D071: ConcatStr
  loc_65D072: FStStrNoPop var_11C
  loc_65D075: ILdRf var_88
  loc_65D078: ConcatStr
  loc_65D079: FStStr var_88
  loc_65D07C: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_65D087: FFreeVar var_C4 = ""
  loc_65D08E: FLdRfVar var_C4
  loc_65D091: FLdRfVar var_88
  loc_65D094: LitStr "1"
  loc_65D097: FStStrCopy var_C8
  loc_65D09A: FLdRfVar var_C8
  loc_65D09D: ILdRf arg_C
  loc_65D0A0: FLdRfVar var_120
  loc_65D0A3: ImpAdLdRf MemVar_74C760
  loc_65D0A6: NewIfNullPr Formx
  loc_65D0A9: from_stack_1v = Formx.global_4589716Get()
  loc_65D0AE: FLdPr var_120
  loc_65D0B1: Call 0.Method_arg_17C ()
  loc_65D0B6: FLdRfVar var_C4
  loc_65D0B9: NotVar var_E8
  loc_65D0BD: CBoolVarNull
  loc_65D0BF: FFree1Str var_C8
  loc_65D0C2: FFree1Ad var_120
  loc_65D0C5: FFree1Var var_C4 = ""
  loc_65D0C8: BranchF loc_65D0F7
  loc_65D0CB: FLdRfVar var_C4
  loc_65D0CE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65D0D3: FLdRfVar var_C4
  loc_65D0D6: CBoolVarNull
  loc_65D0D8: FFree1Var var_C4 = ""
  loc_65D0DB: BranchF loc_65D0F4
  loc_65D0DE: ILdRf Me
  loc_65D0E1: FStAdNoPop
  loc_65D0E5: ImpAdLdRf MemVar_7520D4
  loc_65D0E8: NewIfNullPr Global
  loc_65D0EB: Global.Unload from_stack_1
  loc_65D0F0: FFree1Ad var_120
  loc_65D0F3: ExitProcHresult
  loc_65D0F4: Branch loc_65D08E
  loc_65D0F7: LitI2_Byte 1
  loc_65D0F9: FStI2 var_8C
  loc_65D0FC: LitStr "0000000000000000"
  loc_65D0FF: FStStrCopy var_88
  loc_65D102: FLdI2 var_8A
  loc_65D105: LitI2 400
  loc_65D108: AddI2
  loc_65D109: FStI2 var_8A
  loc_65D10C: FLdRfVar var_8E
  loc_65D10F: NextI2 var_92, loc_65CEFE
  loc_65D114: FLdI2 var_8C
  loc_65D117: LitI2_Byte 0
  loc_65D119: GtI2
  loc_65D11A: BranchF loc_65D1F4
  loc_65D11D: LitI4 1
  loc_65D122: LitI4 1
  loc_65D127: LitVarStr var_B4, "00000000"
  loc_65D12C: FStVarCopyObj var_C4
  loc_65D12F: FLdRfVar var_C4
  loc_65D132: FLdRfVar var_8A
  loc_65D135: CVarRef
  loc_65D13A: ImpAdCallI2 Format$(, )
  loc_65D13F: FStStrNoPop var_C8
  loc_65D142: LitI4 1
  loc_65D147: LitI4 1
  loc_65D14C: LitVarStr var_F8, "00000000"
  loc_65D151: FStVarCopyObj var_E8
  loc_65D154: FLdRfVar var_E8
  loc_65D157: FLdRfVar var_8C
  loc_65D15A: CVarRef
  loc_65D15F: ImpAdCallI2 Format$(, )
  loc_65D164: FStStrNoPop var_10C
  loc_65D167: ConcatStr
  loc_65D168: FStStrNoPop var_110
  loc_65D16B: LitStr "1"
  loc_65D16E: ConcatStr
  loc_65D16F: FStStrNoPop var_11C
  loc_65D172: ILdRf var_88
  loc_65D175: ConcatStr
  loc_65D176: FStStr var_88
  loc_65D179: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_65D184: FFreeVar var_C4 = ""
  loc_65D18B: FLdRfVar var_C4
  loc_65D18E: FLdRfVar var_88
  loc_65D191: LitStr "1"
  loc_65D194: FStStrCopy var_C8
  loc_65D197: FLdRfVar var_C8
  loc_65D19A: ILdRf arg_C
  loc_65D19D: FLdRfVar var_120
  loc_65D1A0: ImpAdLdRf MemVar_74C760
  loc_65D1A3: NewIfNullPr Formx
  loc_65D1A6: from_stack_1v = Formx.global_4589716Get()
  loc_65D1AB: FLdPr var_120
  loc_65D1AE: Call 0.Method_arg_17C ()
  loc_65D1B3: FLdRfVar var_C4
  loc_65D1B6: NotVar var_E8
  loc_65D1BA: CBoolVarNull
  loc_65D1BC: FFree1Str var_C8
  loc_65D1BF: FFree1Ad var_120
  loc_65D1C2: FFree1Var var_C4 = ""
  loc_65D1C5: BranchF loc_65D1F4
  loc_65D1C8: FLdRfVar var_C4
  loc_65D1CB: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65D1D0: FLdRfVar var_C4
  loc_65D1D3: CBoolVarNull
  loc_65D1D5: FFree1Var var_C4 = ""
  loc_65D1D8: BranchF loc_65D1F1
  loc_65D1DB: ILdRf Me
  loc_65D1DE: FStAdNoPop
  loc_65D1E2: ImpAdLdRf MemVar_7520D4
  loc_65D1E5: NewIfNullPr Global
  loc_65D1E8: Global.Unload from_stack_1
  loc_65D1ED: FFree1Ad var_120
  loc_65D1F0: ExitProcHresult
  loc_65D1F1: Branch loc_65D18B
  loc_65D1F4: LitI2_Byte 0
  loc_65D1F6: FLdPr Me
  loc_65D1F9: MemStI2 global_134
  loc_65D1FC: ExitProcHresult
End Function

Private Function Proc_152_30_5E5604(arg_C, arg_10) '5E5604
  'Data Table: 443E20
  loc_5E5594: FLdRfVar var_8E
  loc_5E5597: FLdPrThis
  loc_5E5598: VCallAd Control_ID_VScroll
  loc_5E559B: FStAdFunc var_8C
  loc_5E559E: FLdPr var_8C
  loc_5E55A1:  = Me.Value
  loc_5E55A6: FLdRfVar var_9A
  loc_5E55A9: FLdPrThis
  loc_5E55AA: VCallAd Control_ID_VScroll
  loc_5E55AD: FStAdFunc var_98
  loc_5E55B0: FLdPr var_98
  loc_5E55B3:  = Me.Value
  loc_5E55B8: FLdRfVar var_A0
  loc_5E55BB: FLdI2 var_9A
  loc_5E55BE: ILdI2 arg_10
  loc_5E55C1: AddI2
  loc_5E55C2: PopTmpLdAd2 var_9C
  loc_5E55C5: from_stack_2v = Proc_152_32_5E2B3C(from_stack_1v)
  loc_5E55CA: ILdFPR4 arg_C
  loc_5E55CD: LitI2_Byte 0
  loc_5E55CF: CR8I2
  loc_5E55D0: EqR4
  loc_5E55D1: FLdRfVar var_94
  loc_5E55D4: FLdI2 var_8E
  loc_5E55D7: ILdI2 arg_10
  loc_5E55DA: AddI2
  loc_5E55DB: PopTmpLdAd2 var_90
  loc_5E55DE: from_stack_2v = Proc_152_31_5E1668(from_stack_1v)
  loc_5E55E3: FLdFPR4 var_94
  loc_5E55E6: ILdFPR4 arg_C
  loc_5E55E9: LtR8
  loc_5E55EA: ILdFPR4 arg_C
  loc_5E55ED: FLdFPR4 var_A0
  loc_5E55F0: LtR8
  loc_5E55F1: AndI4
  loc_5E55F2: OrI4
  loc_5E55F3: FStI2 var_86
  loc_5E55F6: FFreeAd var_8C = ""
  loc_5E55FD: ExitProcCbHresult
End Function

Private Function Proc_152_31_5E1668(arg_C) '5E1668
  'Data Table: 443E20
  loc_5E1604: ILdI2 arg_C
  loc_5E1607: LitI2_Byte 0
  loc_5E1609: EqI2
  loc_5E160A: BranchF loc_5E1619
  loc_5E160D: LitI2_Byte 0
  loc_5E160F: CR8I2
  loc_5E1610: FStFPR4 var_88
  loc_5E1613: ExitProcCbHresult
  loc_5E1619: ILdI2 arg_C
  loc_5E161C: LitI2_Byte 1
  loc_5E161E: SubI2
  loc_5E161F: FStI2 var_8A
  loc_5E1622: FLdI2 var_8A
  loc_5E1625: LitI2_Byte 0
  loc_5E1627: GtI2
  loc_5E1628: BranchF loc_5E1651
  loc_5E162B: FLdI2 var_8A
  loc_5E162E: CI4UI1
  loc_5E162F: FLdPr Me
  loc_5E1632: MemLdRfVar from_stack_1.global_68
  loc_5E1635: Ary1LdFPR4
  loc_5E1636: LitI2_Byte 0
  loc_5E1638: CR8I2
  loc_5E1639: NeR8
  loc_5E163A: BranchF loc_5E1640
  loc_5E163D: Branch loc_5E1651
  loc_5E1640: FLdI2 var_8A
  loc_5E1643: LitI2_Byte 1
  loc_5E1645: SubI2
  loc_5E1646: FStI2 var_8A
  loc_5E1649: ImpAdCallFPR4 DoEvents()
  loc_5E164E: Branch loc_5E1622
  loc_5E1651: FLdI2 var_8A
  loc_5E1654: CI4UI1
  loc_5E1655: FLdPr Me
  loc_5E1658: MemLdRfVar from_stack_1.global_68
  loc_5E165B: Ary1LdFPR4
  loc_5E165C: FStFPR4 var_88
  loc_5E165F: ExitProcCbHresult
End Function

Private Function Proc_152_32_5E2B3C(arg_C) '5E2B3C
  'Data Table: 443E20
  loc_5E2AD4: ILdI2 arg_C
  loc_5E2AD7: LitI2_Byte 1
  loc_5E2AD9: AddI2
  loc_5E2ADA: FStI2 var_8A
  loc_5E2ADD: FLdI2 var_8A
  loc_5E2AE0: LitI2 6000
  loc_5E2AE3: LtI2
  loc_5E2AE4: BranchF loc_5E2B0D
  loc_5E2AE7: FLdI2 var_8A
  loc_5E2AEA: CI4UI1
  loc_5E2AEB: FLdPr Me
  loc_5E2AEE: MemLdRfVar from_stack_1.global_68
  loc_5E2AF1: Ary1LdFPR4
  loc_5E2AF2: LitI2_Byte 0
  loc_5E2AF4: CR8I2
  loc_5E2AF5: NeR8
  loc_5E2AF6: BranchF loc_5E2AFC
  loc_5E2AF9: Branch loc_5E2B0D
  loc_5E2AFC: FLdI2 var_8A
  loc_5E2AFF: LitI2_Byte 1
  loc_5E2B01: AddI2
  loc_5E2B02: FStI2 var_8A
  loc_5E2B05: ImpAdCallFPR4 DoEvents()
  loc_5E2B0A: Branch loc_5E2ADD
  loc_5E2B0D: FLdI2 var_8A
  loc_5E2B10: LitI2 6000
  loc_5E2B13: GeI2
  loc_5E2B14: BranchF loc_5E2B26
  loc_5E2B17: LitDate 3.402823E38
  loc_5E2B20: FStFPR4 var_88
  loc_5E2B23: Branch loc_5E2B34
  loc_5E2B26: FLdI2 var_8A
  loc_5E2B29: CI4UI1
  loc_5E2B2A: FLdPr Me
  loc_5E2B2D: MemLdRfVar from_stack_1.global_68
  loc_5E2B30: Ary1LdFPR4
  loc_5E2B31: FStFPR4 var_88
  loc_5E2B34: ExitProcCbHresult
End Function

Private Function Proc_152_33_5D642C() '5D642C
  'Data Table: 443E20
  loc_5D6404: LitI2_Byte 1
  loc_5D6406: FLdRfVar var_86
  loc_5D6409: LitI2 6000
  loc_5D640C: ForI2 var_8A
  loc_5D6412: LitI2_Byte 0
  loc_5D6414: CR8I2
  loc_5D6415: FLdI2 var_86
  loc_5D6418: CI4UI1
  loc_5D6419: FLdPr Me
  loc_5D641C: MemLdRfVar from_stack_1.global_68
  loc_5D641F: Ary1StFPR4
  loc_5D6420: FLdRfVar var_86
  loc_5D6423: NextI2 var_8A, loc_5D6412
  loc_5D6428: ExitProcHresult
  loc_5D6429: LitStr "Esta seguro de exportar las tablas a un diskette?"
End Function

Private Function Proc_152_34_5DB29C(arg_C, arg_10) '5DB29C
  'Data Table: 443E20
  loc_5DB258: ILdI2 arg_10
  loc_5DB25B: LitI2_Byte 1
  loc_5DB25D: AddI2
  loc_5DB25E: FStI2 var_88
  loc_5DB261: FLdI2 var_88
  loc_5DB264: LitI2 6000
  loc_5DB267: LtI2
  loc_5DB268: BranchF loc_5DB289
  loc_5DB26B: FLdI2 var_88
  loc_5DB26E: CI4UI1
  loc_5DB26F: ILdI4 arg_C
  loc_5DB272: Ary1LdFPR4
  loc_5DB273: LitI2_Byte 0
  loc_5DB275: CR8I2
  loc_5DB276: GtR4
  loc_5DB277: BranchF loc_5DB27D
  loc_5DB27A: Branch loc_5DB289
  loc_5DB27D: FLdI2 var_88
  loc_5DB280: LitI2_Byte 1
  loc_5DB282: AddI2
  loc_5DB283: FStI2 var_88
  loc_5DB286: Branch loc_5DB261
  loc_5DB289: FLdI2 var_88
  loc_5DB28C: LitI2 6000
  loc_5DB28F: EqI2
  loc_5DB290: FStI2 var_86
  loc_5DB293: ExitProcCbHresult
End Function

Private Function Proc_152_35_609870(arg_C) '609870
  'Data Table: 443E20
  loc_609794: LitI2_Byte 0
  loc_609796: FStI2 var_8C
  loc_609799: LitI2_Byte &HFF
  loc_60979B: FStI2 var_86
  loc_60979E: FLdRfVar var_A8
  loc_6097A1: FLdRfVar var_90
  loc_6097A4: ILdRf arg_C
  loc_6097A7: LitI2_Byte 1
  loc_6097A9: PopTmpLdAd2 var_96
  loc_6097AC: FLdRfVar var_94
  loc_6097AF: ImpAdLdRf MemVar_74C760
  loc_6097B2: NewIfNullPr Formx
  loc_6097B5: from_stack_1v = Formx.global_4589716Get()
  loc_6097BA: FLdPr var_94
  loc_6097BD:  = Formx.MaxButton
  loc_6097C2: FLdRfVar var_A8
  loc_6097C5: NotVar var_B8
  loc_6097C9: CBoolVarNull
  loc_6097CB: FFree1Ad var_94
  loc_6097CE: FFree1Var var_A8 = ""
  loc_6097D1: BranchF loc_6097F0
  loc_6097D4: FLdRfVar var_A8
  loc_6097D7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6097DC: FLdRfVar var_A8
  loc_6097DF: CBoolVarNull
  loc_6097E1: FFree1Var var_A8 = ""
  loc_6097E4: BranchF loc_6097ED
  loc_6097E7: ExitProcCbHresult
  loc_6097ED: Branch loc_60979E
  loc_6097F0: FLdRfVar var_90
  loc_6097F3: CVarRef
  loc_6097F8: FLdRfVar var_A8
  loc_6097FB: ImpAdCallFPR4  = Trim()
  loc_609800: FLdRfVar var_A8
  loc_609803: CStrVarTmp
  loc_609804: FStStr var_90
  loc_609807: FFree1Var var_A8 = ""
  loc_60980A: LitVarI2 var_A8, 320
  loc_60980F: LitI4 1
  loc_609814: ILdRf var_90
  loc_609817: ImpAdCallI2 Mid$(, , )
  loc_60981C: CVarStr var_F8
  loc_60981F: HardType
  loc_609820: LitVarStr var_D8, "0"
  loc_609825: FStVarCopyObj var_B8
  loc_609828: FLdRfVar var_B8
  loc_60982B: LitI4 &H140
  loc_609830: FLdRfVar var_E8
  loc_609833: ImpAdCallFPR4  = String(, )
  loc_609838: FLdRfVar var_E8
  loc_60983B: EqVar var_108
  loc_60983F: ILdRf var_90
  loc_609842: FnLenStr
  loc_609843: LitI4 1
  loc_609848: LeI4
  loc_609849: CVarBoolI2 var_118
  loc_60984D: OrVar var_128
  loc_609851: CBoolVar
  loc_609853: FStI2 var_8C
  loc_609856: FFreeVar var_A8 = "": var_B8 = "": var_F8 = "": var_E8 = ""
  loc_609863: FLdI2 var_8C
  loc_609866: FStI2 var_86
  loc_609869: ExitProcCbHresult
End Function

Private Function Proc_152_36_5DE528(arg_C, arg_10) '5DE528
  'Data Table: 443E20
  loc_5DE4DC: ILdRf arg_10
  loc_5DE4DF: FStStrCopy var_88
  loc_5DE4E2: ILdRf arg_C
  loc_5DE4E5: CVarRef
  loc_5DE4EA: ImpAdCallI2 TypeName()
  loc_5DE4EF: FStStr var_9C
  loc_5DE4F2: ILdRf var_9C
  loc_5DE4F5: LitStr "Printer"
  loc_5DE4F8: EqStr
  loc_5DE4FA: BranchF loc_5DE50C
  loc_5DE4FD: ILdRf var_88
  loc_5DE500: ILdI4 arg_C
  loc_5DE503: PrintObject
  loc_5DE509: Branch loc_5DE527
  loc_5DE50C: ILdRf var_9C
  loc_5DE50F: LitStr "ListBox"
  loc_5DE512: EqStr
  loc_5DE514: BranchF loc_5DE527
  loc_5DE517: FLdRfVar var_88
  loc_5DE51A: CDargRef
  loc_5DE51E: ILdPr
  loc_5DE521: LateMemCall
  loc_5DE527: ExitProcHresult
End Function
