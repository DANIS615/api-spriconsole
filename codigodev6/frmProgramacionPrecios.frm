VERSION 5.00
Object = "{B16553C3-06DB-101B-85B20000C009BE81}#1.0#0"; "C:\WINDOWS\SysWow64\SPIN32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Begin VB.Form frmProgramacionPrecios
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 750
  ClientTop = 300
  ClientWidth = 10275
  ClientHeight = 8580
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.CommandButton cmdLockPrices
    Left = 180
    Top = 900
    Width = 735
    Height = 675
    TabIndex = 33
    Picture = "frmProgramacionPrecios.frx":0000
    Style = 1
  End
  Begin VB.CommandButton cmdBorrarNivel
    Left = 1050
    Top = 900
    Width = 735
    Height = 675
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
    Picture = "frmProgramacionPrecios.frx":1692
    ToolTipText = "Pone todos los Precios en 0"
    Style = 1
  End
  Begin VB.TextBox txtNivel
    Left = 6780
    Top = 960
    Width = 375
    Height = 540
    Text = "1"
    TabIndex = 28
    Alignment = 1 'Right Justify
    MaxLength = 1
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Spin.SpinButton spnNivel
    Left = 7275
    Top = 960
    Width = 375
    Height = 555
    TabIndex = 7
    OleObjectBlob = "frmProgramacionPrecios.frx":2D24
  End
  Begin VB.Frame fraPrecios
    Left = 180
    Top = 1680
    Width = 9915
    Height = 5895
    TabIndex = 5
    Begin MSMask.MaskEdBox txtPrecio
      Index = 1
      Left = 5160
      Top = 840
      Width = 2295
      Height = 405
      TabIndex = 34
      OleObjectBlob = "frmProgramacionPrecios.frx":2D76
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 2
      Left = 5160
      Top = 1320
      Width = 2295
      Height = 405
      TabIndex = 35
      OleObjectBlob = "frmProgramacionPrecios.frx":2DF6
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 3
      Left = 5160
      Top = 1800
      Width = 2295
      Height = 405
      TabIndex = 36
      OleObjectBlob = "frmProgramacionPrecios.frx":2E76
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 4
      Left = 5160
      Top = 2280
      Width = 2295
      Height = 405
      TabIndex = 37
      OleObjectBlob = "frmProgramacionPrecios.frx":2EF6
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 5
      Left = 5160
      Top = 2760
      Width = 2295
      Height = 405
      TabIndex = 38
      OleObjectBlob = "frmProgramacionPrecios.frx":2F76
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 6
      Left = 5160
      Top = 3240
      Width = 2295
      Height = 405
      TabIndex = 39
      OleObjectBlob = "frmProgramacionPrecios.frx":2FF6
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 7
      Left = 5160
      Top = 3720
      Width = 2295
      Height = 405
      TabIndex = 40
      OleObjectBlob = "frmProgramacionPrecios.frx":3076
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 8
      Left = 5160
      Top = 4200
      Width = 2295
      Height = 405
      TabIndex = 41
      OleObjectBlob = "frmProgramacionPrecios.frx":30F6
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 9
      Left = 5160
      Top = 4680
      Width = 2295
      Height = 405
      TabIndex = 42
      OleObjectBlob = "frmProgramacionPrecios.frx":3176
    End
    Begin MSMask.MaskEdBox txtPrecio
      Index = 10
      Left = 5160
      Top = 5160
      Width = 2295
      Height = 405
      TabIndex = 43
      OleObjectBlob = "frmProgramacionPrecios.frx":31F6
    End
    Begin VB.TextBox txtImpuesto
      Index = 10
      BackColor = &H8000000F&
      Left = 7560
      Top = 5160
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 29
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 9
      BackColor = &H8000000F&
      Left = 7560
      Top = 4680
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 25
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 8
      BackColor = &H8000000F&
      Left = 7560
      Top = 4200
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 23
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 7
      BackColor = &H8000000F&
      Left = 7560
      Top = 3720
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 21
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 6
      BackColor = &H8000000F&
      Left = 7560
      Top = 3240
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 19
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 5
      BackColor = &H8000000F&
      Left = 7560
      Top = 2760
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 17
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 4
      BackColor = &H8000000F&
      Left = 7560
      Top = 2280
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 15
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 3
      BackColor = &H8000000F&
      Left = 7560
      Top = 1800
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 13
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 2
      BackColor = &H8000000F&
      Left = 7560
      Top = 1320
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 11
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox txtImpuesto
      Index = 1
      BackColor = &H8000000F&
      Left = 7560
      Top = 840
      Width = 1935
      Height = 405
      Enabled = 0   'False
      Text = "Impuesto"
      TabIndex = 9
      Alignment = 1 'Right Justify
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
    Begin VB.Label lblTituloProducto
      Caption = "Producto"
      BackColor = &HC0C0FF&
      Left = 420
      Top = 360
      Width = 4635
      Height = 375
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "PREMIUM UNLEADED PLUS 98"
      Index = 10
      BackColor = &HC0FFFF&
      Left = 420
      Top = 5160
      Width = 4635
      Height = 375
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblTituloImpuesto
      Caption = "Impuesto Interno"
      BackColor = &HC0C0FF&
      Left = 7560
      Top = 360
      Width = 1935
      Height = 375
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblTituloPrecio
      Caption = "Precio por Unidad"
      BackColor = &HC0C0FF&
      Left = 5160
      Top = 360
      Width = 2295
      Height = 375
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 9
      BackColor = &HC0FFFF&
      Left = 420
      Top = 4680
      Width = 4635
      Height = 375
      TabIndex = 24
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 8
      BackColor = &HC0FFFF&
      Left = 420
      Top = 4200
      Width = 4635
      Height = 375
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 7
      BackColor = &HC0FFFF&
      Left = 420
      Top = 3720
      Width = 4635
      Height = 375
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 6
      BackColor = &HC0FFFF&
      Left = 420
      Top = 3240
      Width = 4635
      Height = 375
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 5
      BackColor = &HC0FFFF&
      Left = 420
      Top = 2760
      Width = 4635
      Height = 375
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 4
      BackColor = &HC0FFFF&
      Left = 420
      Top = 2280
      Width = 4635
      Height = 375
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 3
      BackColor = &HC0FFFF&
      Left = 420
      Top = 1800
      Width = 4635
      Height = 375
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 2
      BackColor = &HC0FFFF&
      Left = 420
      Top = 1320
      Width = 4635
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label lblProducto
      Caption = "Producto"
      Index = 1
      BackColor = &HC0FFFF&
      Left = 420
      Top = 840
      Width = 4635
      Height = 375
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Salir"
    Left = 7800
    Top = 7740
    Width = 2000
    Height = 672
    TabIndex = 4
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
  Begin VB.CommandButton cmdInmetiata
    Caption = "&Inmediato"
    Left = 5400
    Top = 7740
    Width = 2000
    Height = 672
    TabIndex = 3
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
  Begin VB.CommandButton cmdTemporizar
    Caption = "&Temporizado"
    Left = 3000
    Top = 7740
    Width = 2115
    Height = 672
    TabIndex = 2
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
  Begin KeyStatLib.MhState NumLock
    Left = 2220
    Top = 7980
    Width = 420
    Height = 420
    Visible = 0   'False
    TabIndex = 1
    OleObjectBlob = "frmProgramacionPrecios.frx":3276
  End
  Begin VB.Label lblNivel
    Caption = "Nivel de Precio"
    Left = 4275
    Top = 1080
    Width = 2415
    Height = 375
    TabIndex = 6
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
  Begin VB.Label lblTitulo
    Caption = "Programación de Precios"
    BackColor = &H80000002&
    ForeColor = &H80000009&
    Left = 0
    Top = 120
    Width = 10335
    Height = 615
    TabIndex = 0
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
End

Attribute VB_Name = "frmProgramacionPrecios"

Public strPrecio As String
Public strFecha As String
Public strLevel As String
Public strIngresarPrecio As String
Public strCheckPlease As String
Public strPriceError As String
Public strPriceAdvice As String
Public strPriceMsg1 As String
Public strPriceMsg2 As String
Public strPriceMsg3 As String
Public changePriceId As Integer


Private Sub cmdCancelar_Click() '5D33D0
  'Data Table: 444EE4
  loc_5D33B4: LitI2_Byte &HFF
  loc_5D33B6: ImpAdStI2 MemVar_74C37E
  loc_5D33B9: ILdRf Me
  loc_5D33BC: FStAdNoPop
  loc_5D33C0: ImpAdLdRf MemVar_7520D4
  loc_5D33C3: NewIfNullPr Global
  loc_5D33C6: Global.Unload from_stack_1
  loc_5D33CB: FFree1Ad var_88
  loc_5D33CE: ExitProcHresult
  loc_5D33CF: ExitProcCy
End Sub

Private Sub txtImpuesto_GotFocus(arg_C) '5EE2FC
  'Data Table: 444EE4
  loc_5EE270: FLdPr Me
  loc_5EE273: MemLdUI1 global_94
  loc_5EE277: CBoolUI1
  loc_5EE279: BranchF loc_5EE2FB
  loc_5EE27C: ILdI2 arg_C
  loc_5EE27F: CI4UI1
  loc_5EE280: ImpAdLdRf MemVar_74C094
  loc_5EE283: Ary1LdCy
  loc_5EE284: LitCy 0
  loc_5EE28D: EqCy
  loc_5EE28E: BranchF loc_5EE2BB
  loc_5EE291: LitStr vbNullString
  loc_5EE294: FLdRfVar var_8C
  loc_5EE297: ILdI2 arg_C
  loc_5EE29A: FLdPrThis
  loc_5EE29B: VCallAd Control_ID_txtImpuesto
  loc_5EE29E: FStAdFunc var_88
  loc_5EE2A1: FLdPr var_88
  loc_5EE2A4: Set from_stack_2 = Me(from_stack_1)
  loc_5EE2A9: FLdPr var_8C
  loc_5EE2AC: Me.Text = from_stack_1
  loc_5EE2B1: FFreeAd var_88 = ""
  loc_5EE2B8: Branch loc_5EE2FB
  loc_5EE2BB: ILdI2 arg_C
  loc_5EE2BE: CI4UI1
  loc_5EE2BF: ImpAdLdRf MemVar_74C094
  loc_5EE2C2: Ary1LdCy
  loc_5EE2C3: CStrCy
  loc_5EE2C5: FStStrNoPop var_90
  loc_5EE2C8: ImpAdCallI2 Trim$()
  loc_5EE2CD: FStStrNoPop var_94
  loc_5EE2D0: FLdRfVar var_8C
  loc_5EE2D3: ILdI2 arg_C
  loc_5EE2D6: FLdPrThis
  loc_5EE2D7: VCallAd Control_ID_txtImpuesto
  loc_5EE2DA: FStAdFunc var_88
  loc_5EE2DD: FLdPr var_88
  loc_5EE2E0: Set from_stack_2 = Me(from_stack_1)
  loc_5EE2E5: FLdPr var_8C
  loc_5EE2E8: Me.Text = from_stack_1
  loc_5EE2ED: FFreeStr var_90 = ""
  loc_5EE2F4: FFreeAd var_88 = ""
  loc_5EE2FB: ExitProcHresult
End Sub

Private Sub txtImpuesto_KeyPress(KeyAscii As Integer) '5DE8CC
  'Data Table: 444EE4
  loc_5DE878: ILdI2 arg_10
  loc_5DE87B: FStI2 var_86
  loc_5DE87E: FLdI2 var_86
  loc_5DE881: LitI2_Byte &HD
  loc_5DE883: EqI2
  loc_5DE884: BranchF loc_5DE89C
  loc_5DE887: LitI2_Byte 0
  loc_5DE889: IStI2 arg_10
  loc_5DE88C: LitI2_Byte 0
  loc_5DE88E: PopTmpLdAd2 var_88
  loc_5DE891: LitStr "{TAB}"
  loc_5DE894: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DE899: Branch loc_5DE8CA
  loc_5DE89C: FLdI2 var_86
  loc_5DE89F: LitI4 &H30
  loc_5DE8A4: CI2I4
  loc_5DE8A5: LitI4 &H39
  loc_5DE8AA: CI2I4
  loc_5DE8AB: BetweenI2
  loc_5DE8AD: BranchT loc_5DE8C2
  loc_5DE8B0: FLdI2 var_86
  loc_5DE8B3: LitI2_Byte 8
  loc_5DE8B5: EqI2
  loc_5DE8B6: BranchT loc_5DE8C2
  loc_5DE8B9: FLdI2 var_86
  loc_5DE8BC: LitI2_Byte &H2E
  loc_5DE8BE: EqI2
  loc_5DE8BF: BranchF loc_5DE8C5
  loc_5DE8C2: Branch loc_5DE8CA
  loc_5DE8C5: LitI2_Byte 0
  loc_5DE8C7: IStI2 arg_10
  loc_5DE8CA: ExitProcHresult
End Sub

Private Sub txtImpuesto_LostFocus(arg_C) '614224
  'Data Table: 444EE4
  loc_614114: FLdPr Me
  loc_614117: MemLdUI1 global_94
  loc_61411B: CBoolUI1
  loc_61411D: BranchF loc_6141F0
  loc_614120: FLdRfVar var_98
  loc_614123: FLdRfVar var_90
  loc_614126: FLdRfVar var_8C
  loc_614129: ILdI2 arg_C
  loc_61412C: FLdPrThis
  loc_61412D: VCallAd Control_ID_txtImpuesto
  loc_614130: FStAdFunc var_88
  loc_614133: FLdPr var_88
  loc_614136: Set from_stack_2 = Me(from_stack_1)
  loc_61413B: FLdPr var_8C
  loc_61413E:  = Me.Text
  loc_614143: FLdZeroAd var_90
  loc_614146: PopTmpLdAdStr
  loc_61414A: from_stack_2v = Proc_104_57_5DD108(from_stack_1v)
  loc_61414F: ILdRf var_98
  loc_614152: FLdRfVar var_A0
  loc_614155: ILdI2 arg_C
  loc_614158: FLdPrThis
  loc_614159: VCallAd Control_ID_txtImpuesto
  loc_61415C: FStAdFunc var_9C
  loc_61415F: FLdPr var_9C
  loc_614162: Set from_stack_2 = Me(from_stack_1)
  loc_614167: FLdPr var_A0
  loc_61416A: Me.Text = from_stack_1
  loc_61416F: FFreeStr var_94 = ""
  loc_614176: FFreeAd var_88 = "": var_8C = "": var_9C = ""
  loc_614181: FLdRfVar var_90
  loc_614184: FLdRfVar var_8C
  loc_614187: ILdI2 arg_C
  loc_61418A: FLdPrThis
  loc_61418B: VCallAd Control_ID_txtImpuesto
  loc_61418E: FStAdFunc var_88
  loc_614191: FLdPr var_88
  loc_614194: Set from_stack_2 = Me(from_stack_1)
  loc_614199: FLdPr var_8C
  loc_61419C:  = Me.Text
  loc_6141A1: ILdRf var_90
  loc_6141A4: ImpAdCallFPR4 push Val()
  loc_6141A9: CCyR4
  loc_6141AA: ILdI2 arg_C
  loc_6141AD: CI4UI1
  loc_6141AE: ImpAdLdRf MemVar_74C094
  loc_6141B1: Ary1StCy
  loc_6141B2: FFree1Str var_90
  loc_6141B5: FFreeAd var_88 = ""
  loc_6141BC: ILdI2 arg_C
  loc_6141BF: CI4UI1
  loc_6141C0: ImpAdLdRf MemVar_74C094
  loc_6141C3: Ary1LdCy
  loc_6141C4: CStrCy
  loc_6141C6: FStStrNoPop var_90
  loc_6141C9: FLdRfVar var_8C
  loc_6141CC: ILdI2 arg_C
  loc_6141CF: FLdPrThis
  loc_6141D0: VCallAd Control_ID_txtImpuesto
  loc_6141D3: FStAdFunc var_88
  loc_6141D6: FLdPr var_88
  loc_6141D9: Set from_stack_2 = Me(from_stack_1)
  loc_6141DE: FLdPr var_8C
  loc_6141E1: Me.Text = from_stack_1
  loc_6141E6: FFree1Str var_90
  loc_6141E9: FFreeAd var_88 = ""
  loc_6141F0: ImpAdLdI2 MemVar_74BEA8
  loc_6141F3: BranchF loc_614200
  loc_6141F6: LitI2_Byte 1
  loc_6141F8: from_stack_1v = Proc_104_51_62E1B4()
  loc_6141FD: Branch loc_614222
  loc_614200: FLdRfVar var_90
  loc_614203: FLdPrThis
  loc_614204: VCallAd Control_ID_txtNivel
  loc_614207: FStAdFunc var_88
  loc_61420A: FLdPr var_88
  loc_61420D:  = Me.Text
  loc_614212: ILdRf var_90
  loc_614215: CI2Str
  loc_614217: from_stack_1v = Proc_104_51_62E1B4()
  loc_61421C: FFree1Str var_90
  loc_61421F: FFree1Ad var_88
  loc_614222: ExitProcHresult
End Sub

Private Sub cmdTemporizar_Click() '60FC84
  'Data Table: 444EE4
  loc_60FB88: LitI2_Byte 1
  loc_60FB8A: FLdRfVar var_86
  loc_60FB8D: LitI2_Byte &HA
  loc_60FB8F: ForI2 var_8A
  loc_60FB95: FLdRfVar var_94
  loc_60FB98: FLdI2 var_86
  loc_60FB9B: FLdPrThis
  loc_60FB9C: VCallAd Control_ID_txtPrecio
  loc_60FB9F: FStAdFunc var_90
  loc_60FBA2: FLdPr var_90
  loc_60FBA5: Set from_stack_2 = Me(from_stack_1)
  loc_60FBAA: FLdPr var_94
  loc_60FBAD: LateIdLdVar var_A4 DispID_7 -32767
  loc_60FBB4: CBoolVar
  loc_60FBB6: FFreeAd var_90 = ""
  loc_60FBBD: FFree1Var var_A4 = ""
  loc_60FBC0: BranchF loc_60FBD9
  loc_60FBC3: FLdRfVar var_A6
  loc_60FBC6: FLdRfVar var_86
  loc_60FBC9: from_stack_2v = Proc_104_55_63E8C8(from_stack_1v)
  loc_60FBCE: FLdI2 var_A6
  loc_60FBD1: NotI4
  loc_60FBD2: BranchF loc_60FBD6
  loc_60FBD5: ExitProcHresult
  loc_60FBD6: Branch loc_60FBDC
  loc_60FBD9: Branch loc_60FBE4
  loc_60FBDC: FLdRfVar var_86
  loc_60FBDF: NextI2 var_8A, loc_60FB95
  loc_60FBE4: LitI4 &H29
  loc_60FBE9: ImpAdLdRf MemVar_74A170
  loc_60FBEC: Ary1LdI2
  loc_60FBED: NotI4
  loc_60FBEE: CVarBoolI2 var_118
  loc_60FBF2: LitVarI2 var_A4, 3
  loc_60FBF7: LitI4 1
  loc_60FBFC: ImpAdLdRf MemVar_74BF90
  loc_60FBFF: CVarRef
  loc_60FC04: FLdRfVar var_D8
  loc_60FC07: ImpAdCallFPR4  = Mid(, , )
  loc_60FC0C: FLdRfVar var_D8
  loc_60FC0F: LitVarStr var_E8, "\\."
  loc_60FC14: HardType
  loc_60FC15: EqVar var_F8
  loc_60FC19: NotVar var_108
  loc_60FC1D: AndVar var_128
  loc_60FC21: CBoolVarNull
  loc_60FC23: FFreeVar var_A4 = "": var_D8 = ""
  loc_60FC2C: BranchF loc_60FC35
  loc_60FC2F: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_60FC34: ExitProcHresult
  loc_60FC35: ImpAdLdI2 MemVar_74BEA8
  loc_60FC38: BranchF loc_60FC4C
  loc_60FC3B: FLdPr Me
  loc_60FC3E: MemLdStr strFecha
  loc_60FC41: ImpAdLdRf MemVar_74DE30
  loc_60FC44: NewIfNullPr PreciosTemporizado
  loc_60FC47: Call PreciosTemporizado.strFechaPut(from_stack_1v)
  loc_60FC4C: LitVar_Missing var_C8
  loc_60FC4F: PopAdLdVar
  loc_60FC50: LitVarI4
  loc_60FC58: PopAdLdVar
  loc_60FC59: ImpAdLdRf MemVar_74DE30
  loc_60FC5C: NewIfNullPr PreciosTemporizado
  loc_60FC5F: PreciosTemporizado.Show from_stack_1, from_stack_2
  loc_60FC64: LitI2_Byte 0
  loc_60FC66: ImpAdStI2 MemVar_74BEA8
  loc_60FC69: ILdRf Me
  loc_60FC6C: FStAdNoPop
  loc_60FC70: ImpAdLdRf MemVar_7520D4
  loc_60FC73: NewIfNullPr Global
  loc_60FC76: Global.Unload from_stack_1
  loc_60FC7B: FFree1Ad var_90
  loc_60FC7E: from_stack_1v = Proc_104_41_607938()
  loc_60FC83: ExitProcHresult
End Sub

Private Sub cmdInmetiata_Click() '65F194
  'Data Table: 444EE4
  loc_65EE84: LitI2_Byte 1
  loc_65EE86: FLdRfVar var_8E
  loc_65EE89: LitI2_Byte &HA
  loc_65EE8B: ForI2 var_94
  loc_65EE91: FLdRfVar var_9C
  loc_65EE94: FLdI2 var_8E
  loc_65EE97: FLdPrThis
  loc_65EE98: VCallAd Control_ID_txtPrecio
  loc_65EE9B: FStAdFunc var_98
  loc_65EE9E: FLdPr var_98
  loc_65EEA1: Set from_stack_2 = Me(from_stack_1)
  loc_65EEA6: FLdPr var_9C
  loc_65EEA9: LateIdLdVar var_AC DispID_7 -32767
  loc_65EEB0: CBoolVar
  loc_65EEB2: FFreeAd var_98 = ""
  loc_65EEB9: FFree1Var var_AC = ""
  loc_65EEBC: BranchF loc_65EED5
  loc_65EEBF: FLdRfVar var_AE
  loc_65EEC2: FLdRfVar var_8E
  loc_65EEC5: from_stack_2v = Proc_104_55_63E8C8(from_stack_1v)
  loc_65EECA: FLdI2 var_AE
  loc_65EECD: NotI4
  loc_65EECE: BranchF loc_65EED2
  loc_65EED1: ExitProcHresult
  loc_65EED2: Branch loc_65EED8
  loc_65EED5: Branch loc_65EEE0
  loc_65EED8: FLdRfVar var_8E
  loc_65EEDB: NextI2 var_94, loc_65EE91
  loc_65EEE0: ImpAdCallUI1 Proc_155_3_5EE224()
  loc_65EEE6: LitI2_Byte &HD
  loc_65EEE8: EqI2
  loc_65EEE9: BranchF loc_65EF15
  loc_65EEEC: LitVar_Missing var_110
  loc_65EEEF: LitVar_Missing var_F0
  loc_65EEF2: LitVar_Missing var_D0
  loc_65EEF5: LitI4 &H40
  loc_65EEFA: LitStr "No se puede enviar un cambio de precios debido a que se encuentra un cambio de densidad pendiente. "
  loc_65EEFD: LitStr "Intente nuevamente en unos minutos"
  loc_65EF00: ConcatStr
  loc_65EF01: CVarStr var_AC
  loc_65EF04: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65EF09: FFreeVar var_AC = "": var_D0 = "": var_F0 = ""
  loc_65EF14: ExitProcHresult
  loc_65EF15: LitI2_Byte &HFF
  loc_65EF17: FLdRfVar var_8C
  loc_65EF1A: NewIfNullPr CPrice
  loc_65EF1D:  = CPrice.Caption
  loc_65EF22: FLdRfVar var_AC
  loc_65EF25: ImpAdCallFPR4  = Now
  loc_65EF2A: FLdRfVar var_AC
  loc_65EF2D: FLdRfVar var_D0
  loc_65EF30: ImpAdCallFPR4  = Year()
  loc_65EF35: FLdRfVar var_120
  loc_65EF38: ImpAdCallFPR4  = Now
  loc_65EF3D: FLdRfVar var_120
  loc_65EF40: FLdRfVar var_130
  loc_65EF43: ImpAdCallFPR4  = Month()
  loc_65EF48: FLdRfVar var_170
  loc_65EF4B: ImpAdCallFPR4  = Now
  loc_65EF50: FLdRfVar var_170
  loc_65EF53: FLdRfVar var_180
  loc_65EF56: ImpAdCallFPR4  = Day()
  loc_65EF5B: LitI4 1
  loc_65EF60: LitI4 1
  loc_65EF65: LitVarStr var_C0, "0000"
  loc_65EF6A: FStVarCopyObj var_F0
  loc_65EF6D: FLdRfVar var_F0
  loc_65EF70: FLdRfVar var_D0
  loc_65EF73: FLdRfVar var_110
  loc_65EF76: ImpAdCallFPR4  = Format(, )
  loc_65EF7B: FLdRfVar var_110
  loc_65EF7E: LitI4 1
  loc_65EF83: LitI4 1
  loc_65EF88: LitVarStr var_E0, "00"
  loc_65EF8D: FStVarCopyObj var_140
  loc_65EF90: FLdRfVar var_140
  loc_65EF93: FLdRfVar var_130
  loc_65EF96: FLdRfVar var_150
  loc_65EF99: ImpAdCallFPR4  = Format(, )
  loc_65EF9E: FLdRfVar var_150
  loc_65EFA1: ConcatVar var_160
  loc_65EFA5: LitI4 1
  loc_65EFAA: LitI4 1
  loc_65EFAF: LitVarStr var_100, "00"
  loc_65EFB4: FStVarCopyObj var_190
  loc_65EFB7: FLdRfVar var_190
  loc_65EFBA: FLdRfVar var_180
  loc_65EFBD: FLdRfVar var_1A0
  loc_65EFC0: ImpAdCallFPR4  = Format(, )
  loc_65EFC5: FLdRfVar var_1A0
  loc_65EFC8: ConcatVar var_1B0
  loc_65EFCC: CStrVarVal var_1B4
  loc_65EFD0: FLdRfVar var_8C
  loc_65EFD3: NewIfNullPr CPrice
  loc_65EFD6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65EFDB: FFree1Str var_1B4
  loc_65EFDE: FFreeVar var_AC = "": var_D0 = "": var_F0 = "": var_120 = "": var_130 = "": var_140 = "": var_110 = "": var_150 = "": var_170 = "": var_180 = "": var_190 = "": var_160 = "": var_1A0 = ""
  loc_65EFFD: FLdRfVar var_AC
  loc_65F000: ImpAdCallFPR4  = Now
  loc_65F005: FLdRfVar var_AC
  loc_65F008: FLdRfVar var_D0
  loc_65F00B: ImpAdCallFPR4  = Hour()
  loc_65F010: FLdRfVar var_120
  loc_65F013: ImpAdCallFPR4  = Now
  loc_65F018: FLdRfVar var_120
  loc_65F01B: FLdRfVar var_130
  loc_65F01E: ImpAdCallFPR4  = Minute()
  loc_65F023: LitI4 1
  loc_65F028: LitI4 1
  loc_65F02D: LitVarStr var_C0, "00"
  loc_65F032: FStVarCopyObj var_F0
  loc_65F035: FLdRfVar var_F0
  loc_65F038: FLdRfVar var_D0
  loc_65F03B: FLdRfVar var_110
  loc_65F03E: ImpAdCallFPR4  = Format(, )
  loc_65F043: FLdRfVar var_110
  loc_65F046: LitI4 1
  loc_65F04B: LitI4 1
  loc_65F050: LitVarStr var_E0, "00"
  loc_65F055: FStVarCopyObj var_140
  loc_65F058: FLdRfVar var_140
  loc_65F05B: FLdRfVar var_130
  loc_65F05E: FLdRfVar var_150
  loc_65F061: ImpAdCallFPR4  = Format(, )
  loc_65F066: FLdRfVar var_150
  loc_65F069: ConcatVar var_160
  loc_65F06D: CStrVarVal var_1B4
  loc_65F071: FLdRfVar var_8C
  loc_65F074: NewIfNullPr CPrice
  loc_65F077:  = Forms
  loc_65F07C: FFree1Str var_1B4
  loc_65F07F: FFreeVar var_AC = "": var_D0 = "": var_F0 = "": var_120 = "": var_130 = "": var_140 = "": var_110 = "": var_150 = ""
  loc_65F094: LitI2_Byte &HFF
  loc_65F096: FLdRfVar var_8C
  loc_65F099: NewIfNullPr CPrice
  loc_65F0A1: LitI2_Byte 1
  loc_65F0A3: FLdRfVar var_8E
  loc_65F0A6: LitStr "5"
  loc_65F0A9: CI2Str
  loc_65F0AB: ForI2 var_1B8
  loc_65F0B1: LitI2_Byte 1
  loc_65F0B3: FLdRfVar var_90
  loc_65F0B6: LitStr "10"
  loc_65F0B9: CI2Str
  loc_65F0BB: ForI2 var_1BC
  loc_65F0C1: FLdRfVar var_AC
  loc_65F0C4: FLdI2 var_8E
  loc_65F0C7: CI4UI1
  loc_65F0C8: FLdI2 var_90
  loc_65F0CB: CI4UI1
  loc_65F0CC: ImpAdLdRf MemVar_74C074
  loc_65F0CF: AryLdPr
  loc_65F0D2: MemLdR8 global_0
  loc_65F0D5: CR8Cy
  loc_65F0D6: PopFPR8
  loc_65F0D7: FLdI2 var_90
  loc_65F0DA: FLdI2 var_8E
  loc_65F0DD: FLdRfVar var_8C
  loc_65F0E0: NewIfNullPr CPrice
  loc_65F0E8: FFree1Var var_AC = ""
  loc_65F0EB: FLdRfVar var_90
  loc_65F0EE: NextI2 var_1BC, loc_65F0C1
  loc_65F0F3: FLdRfVar var_8E
  loc_65F0F6: NextI2 var_1B8, loc_65F0B1
  loc_65F0FB: LitI2_Byte 1
  loc_65F0FD: FLdRfVar var_8E
  loc_65F100: LitStr "10"
  loc_65F103: CI2Str
  loc_65F105: ForI2 var_1C0
  loc_65F10B: FLdRfVar var_AC
  loc_65F10E: FLdI2 var_8E
  loc_65F111: CI4UI1
  loc_65F112: ImpAdLdRf MemVar_74C094
  loc_65F115: Ary1LdCy
  loc_65F116: CI4Cy
  loc_65F117: FLdI2 var_8E
  loc_65F11A: FLdRfVar var_8C
  loc_65F11D: NewIfNullPr CPrice
  loc_65F120: Set from_stack_2 = CPrice(from_stack_1)
  loc_65F125: FFree1Var var_AC = ""
  loc_65F128: FLdRfVar var_8E
  loc_65F12B: NextI2 var_1C0, loc_65F10B
  loc_65F130: ImpAdCallI2 Proc_98_3_5D53A4()
  loc_65F135: FStStrNoPop var_1B4
  loc_65F138: FLdRfVar var_8C
  loc_65F13B: NewIfNullPr CPrice
  loc_65F13E:  = CPrice.Name
  loc_65F143: FFree1Str var_1B4
  loc_65F146: FLdRfVar var_AC
  loc_65F149: FLdRfVar var_8C
  loc_65F14C: NewIfNullPr CPrice
  loc_65F14F:  = CPrice.BackColor
  loc_65F154: FFree1Var var_AC = ""
  loc_65F157: FLdRfVar var_AE
  loc_65F15A: FLdRfVar var_8C
  loc_65F15D: NewIfNullRf
  loc_65F161: FLdRfVar var_88
  loc_65F164: NewIfNullPr CMsgPrice
  loc_65F167: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65F16C: LitNothing
  loc_65F16E: CastAd
  loc_65F171: FStAdFunc var_88
  loc_65F174: LitNothing
  loc_65F176: CastAd
  loc_65F179: FStAdFunc var_8C
  loc_65F17C: ILdRf Me
  loc_65F17F: FStAdNoPop
  loc_65F183: ImpAdLdRf MemVar_7520D4
  loc_65F186: NewIfNullPr Global
  loc_65F189: Global.Unload from_stack_1
  loc_65F18E: FFree1Ad var_98
  loc_65F191: ExitProcHresult
  loc_65F192: MemLdPr global_27901
End Sub

Private Sub cmdLockPrices_Click() '65B640
  'Data Table: 444EE4
  loc_65B30C: FLdRfVar var_90
  loc_65B30F: FLdPrThis
  loc_65B310: VCallAd Control_ID_txtNivel
  loc_65B313: FStAdFunc var_8C
  loc_65B316: FLdPr var_8C
  loc_65B319:  = Me.Text
  loc_65B31E: ILdRf var_90
  loc_65B321: ImpAdCallFPR4 push Val()
  loc_65B326: FStFPR8 var_9C
  loc_65B329: FLdRfVar var_94
  loc_65B32C: LitI2_Byte &H3F
  loc_65B32E: CR8I2
  loc_65B32F: FLdFPR8 var_9C
  loc_65B332: AddR8
  loc_65B333: LitI2_Byte 1
  loc_65B335: CR8I2
  loc_65B336: SubR4
  loc_65B337: CI2R8
  loc_65B338: PopTmpLdAd2 var_92
  loc_65B33B: ImpAdLdRf MemVar_74A21C
  loc_65B33E: NewIfNullPr clsSecurity
  loc_65B346: FLdUI1
  loc_65B34A: CI2UI1
  loc_65B34C: LitI2_Byte 0
  loc_65B34E: GtI2
  loc_65B34F: FFree1Str var_90
  loc_65B352: FFree1Ad var_8C
  loc_65B355: BranchF loc_65B455
  loc_65B358: FLdRfVar var_90
  loc_65B35B: FLdPrThis
  loc_65B35C: VCallAd Control_ID_txtNivel
  loc_65B35F: FStAdFunc var_8C
  loc_65B362: FLdPr var_8C
  loc_65B365:  = Me.Text
  loc_65B36A: ILdRf var_90
  loc_65B36D: ImpAdCallFPR4 push Val()
  loc_65B372: FStFPR8 var_9C
  loc_65B375: LitI2_Byte &H3F
  loc_65B377: CR8I2
  loc_65B378: FLdFPR8 var_9C
  loc_65B37B: AddR8
  loc_65B37C: LitI2_Byte 1
  loc_65B37E: CR8I2
  loc_65B37F: SubR4
  loc_65B380: CI2R8
  loc_65B381: PopTmpLdAd2 var_92
  loc_65B384: ImpAdCallI2 Proc_94_7_603DD0()
  loc_65B389: NotI4
  loc_65B38A: FFree1Str var_90
  loc_65B38D: FFree1Ad var_8C
  loc_65B390: BranchF loc_65B397
  loc_65B393: ExitProcHresult
  loc_65B394: Branch loc_65B455
  loc_65B397: FLdRfVar var_94
  loc_65B39A: LitI2_Byte &H5D
  loc_65B39C: PopTmpLdAd2 var_92
  loc_65B39F: ImpAdLdRf MemVar_74A21C
  loc_65B3A2: NewIfNullPr clsSecurity
  loc_65B3AA: FLdUI1
  loc_65B3AE: CI2UI1
  loc_65B3B0: ImpAdLdPr unk_444EF5
  loc_65B3B3: MemLdI2 global_4
  loc_65B3B6: LtI2
  loc_65B3B7: BranchF loc_65B3D7
  loc_65B3BA: FLdRfVar var_B0
  loc_65B3BD: LitI2_Byte 1
  loc_65B3BF: PopTmpLdAd2 var_9E
  loc_65B3C2: LitI2_Byte 1
  loc_65B3C4: PopTmpLdAd2 var_94
  loc_65B3C7: LitI2_Byte &H5D
  loc_65B3C9: PopTmpLdAd2 var_92
  loc_65B3CC: from_stack_4v = Proc_104_59_632458(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_65B3D1: FFree1Var var_B0 = ""
  loc_65B3D4: Branch loc_65B3F1
  loc_65B3D7: FLdRfVar var_B0
  loc_65B3DA: LitI2_Byte 1
  loc_65B3DC: PopTmpLdAd2 var_9E
  loc_65B3DF: LitI2_Byte 0
  loc_65B3E1: PopTmpLdAd2 var_94
  loc_65B3E4: LitI2_Byte &H5D
  loc_65B3E6: PopTmpLdAd2 var_92
  loc_65B3E9: from_stack_4v = Proc_104_59_632458(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_65B3EE: FFree1Var var_B0 = ""
  loc_65B3F1: FLdRfVar var_94
  loc_65B3F4: LitI2_Byte &H5E
  loc_65B3F6: PopTmpLdAd2 var_92
  loc_65B3F9: ImpAdLdRf MemVar_74A21C
  loc_65B3FC: NewIfNullPr clsSecurity
  loc_65B404: FLdUI1
  loc_65B408: CI2UI1
  loc_65B40A: ImpAdLdPr unk_444EF5
  loc_65B40D: MemLdI2 global_4
  loc_65B410: LtI2
  loc_65B411: ImpAdLdPr unk_444EF5
  loc_65B414: MemLdI2 global_4
  loc_65B417: LitI2_Byte 9
  loc_65B419: NeI2
  loc_65B41A: AndI4
  loc_65B41B: BranchF loc_65B43B
  loc_65B41E: FLdRfVar var_B0
  loc_65B421: LitI2_Byte 1
  loc_65B423: PopTmpLdAd2 var_9E
  loc_65B426: LitI2_Byte 1
  loc_65B428: PopTmpLdAd2 var_94
  loc_65B42B: LitI2_Byte &H5E
  loc_65B42D: PopTmpLdAd2 var_92
  loc_65B430: from_stack_4v = Proc_104_59_632458(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_65B435: FFree1Var var_B0 = ""
  loc_65B438: Branch loc_65B455
  loc_65B43B: FLdRfVar var_B0
  loc_65B43E: LitI2_Byte 1
  loc_65B440: PopTmpLdAd2 var_9E
  loc_65B443: LitI2_Byte 0
  loc_65B445: PopTmpLdAd2 var_94
  loc_65B448: LitI2_Byte &H5E
  loc_65B44A: PopTmpLdAd2 var_92
  loc_65B44D: from_stack_4v = Proc_104_59_632458(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_65B452: FFree1Var var_B0 = ""
  loc_65B455: LitI2_Byte 1
  loc_65B457: FLdRfVar var_86
  loc_65B45A: LitI2_Byte &HA
  loc_65B45C: ForI2 var_B4
  loc_65B462: LitVarI4
  loc_65B46A: PopAdLdVar
  loc_65B46B: FLdRfVar var_B8
  loc_65B46E: FLdI2 var_86
  loc_65B471: FLdPrThis
  loc_65B472: VCallAd Control_ID_txtPrecio
  loc_65B475: FStAdFunc var_8C
  loc_65B478: FLdPr var_8C
  loc_65B47B: Set from_stack_2 = Me(from_stack_1)
  loc_65B480: FLdPr var_B8
  loc_65B483: LateIdSt
  loc_65B488: FFreeAd var_8C = ""
  loc_65B48F: LitVar_TRUE var_C8
  loc_65B492: PopAdLdVar
  loc_65B493: FLdRfVar var_B8
  loc_65B496: FLdI2 var_86
  loc_65B499: FLdPrThis
  loc_65B49A: VCallAd Control_ID_txtPrecio
  loc_65B49D: FStAdFunc var_8C
  loc_65B4A0: FLdPr var_8C
  loc_65B4A3: Set from_stack_2 = Me(from_stack_1)
  loc_65B4A8: FLdPr var_B8
  loc_65B4AB: LateIdSt
  loc_65B4B0: FFreeAd var_8C = ""
  loc_65B4B7: LitI4 &HFFFFFF
  loc_65B4BC: FLdRfVar var_B8
  loc_65B4BF: FLdI2 var_86
  loc_65B4C2: FLdPrThis
  loc_65B4C3: VCallAd Control_ID_txtImpuesto
  loc_65B4C6: FStAdFunc var_8C
  loc_65B4C9: FLdPr var_8C
  loc_65B4CC: Set from_stack_2 = Me(from_stack_1)
  loc_65B4D1: FLdPr var_B8
  loc_65B4D4: Me.BackColor = from_stack_1
  loc_65B4D9: FFreeAd var_8C = ""
  loc_65B4E0: LitI2_Byte &HFF
  loc_65B4E2: FLdRfVar var_B8
  loc_65B4E5: FLdI2 var_86
  loc_65B4E8: FLdPrThis
  loc_65B4E9: VCallAd Control_ID_txtImpuesto
  loc_65B4EC: FStAdFunc var_8C
  loc_65B4EF: FLdPr var_8C
  loc_65B4F2: Set from_stack_2 = Me(from_stack_1)
  loc_65B4F7: FLdPr var_B8
  loc_65B4FA: Me.Enabled = from_stack_1b
  loc_65B4FF: FFreeAd var_8C = ""
  loc_65B506: FLdRfVar var_86
  loc_65B509: NextI2 var_B4, loc_65B462
  loc_65B50E: LitI2_Byte &HFF
  loc_65B510: FLdPrThis
  loc_65B511: VCallAd Control_ID_cmdTemporizar
  loc_65B514: FStAdFunc var_8C
  loc_65B517: FLdPr var_8C
  loc_65B51A: Me.Enabled = from_stack_1b
  loc_65B51F: FFree1Ad var_8C
  loc_65B522: LitI2_Byte &HFF
  loc_65B524: FLdPrThis
  loc_65B525: VCallAd Control_ID_cmdInmetiata
  loc_65B528: FStAdFunc var_8C
  loc_65B52B: FLdPr var_8C
  loc_65B52E: Me.Enabled = from_stack_1b
  loc_65B533: FFree1Ad var_8C
  loc_65B536: LitVarI2 var_B0, 1
  loc_65B53B: LitI4 &HC
  loc_65B540: ImpAdLdI4 MemVar_74BEAC
  loc_65B543: ImpAdCallI2 Mid$(, , )
  loc_65B548: FStStrNoPop var_90
  loc_65B54B: LitStr "1"
  loc_65B54E: EqStr
  loc_65B550: FFree1Str var_90
  loc_65B553: FFree1Var var_B0 = ""
  loc_65B556: BranchF loc_65B63F
  loc_65B559: ImpAdLdPr unk_444EF5
  loc_65B55C: MemLdI2 global_4
  loc_65B55F: LitI2_Byte 1
  loc_65B561: SubI2
  loc_65B562: FLdRfVar var_94
  loc_65B565: LitI2_Byte &H5D
  loc_65B567: PopTmpLdAd2 var_92
  loc_65B56A: ImpAdLdRf MemVar_74A21C
  loc_65B56D: NewIfNullPr clsSecurity
  loc_65B575: FLdUI1
  loc_65B579: CI2UI1
  loc_65B57B: LtI2
  loc_65B57C: BranchF loc_65B584
  loc_65B57F: from_stack_1v = Proc_104_39_60FB4C()
  loc_65B584: ImpAdLdPr unk_444EF5
  loc_65B587: MemLdI2 global_4
  loc_65B58A: LitI2_Byte 1
  loc_65B58C: SubI2
  loc_65B58D: FLdRfVar var_94
  loc_65B590: LitI2_Byte &H5E
  loc_65B592: PopTmpLdAd2 var_92
  loc_65B595: ImpAdLdRf MemVar_74A21C
  loc_65B598: NewIfNullPr clsSecurity
  loc_65B5A0: FLdUI1
  loc_65B5A4: CI2UI1
  loc_65B5A6: LtI2
  loc_65B5A7: ImpAdLdPr unk_444EF5
  loc_65B5AA: MemLdI2 global_4
  loc_65B5AD: LitI2_Byte 9
  loc_65B5AF: EqI2
  loc_65B5B0: OrI4
  loc_65B5B1: BranchF loc_65B5B9
  loc_65B5B4: from_stack_1v = Proc_104_40_60F4F8()
  loc_65B5B9: ImpAdLdPr unk_444EF5
  loc_65B5BC: MemLdI2 global_4
  loc_65B5BF: LitI2_Byte 1
  loc_65B5C1: SubI2
  loc_65B5C2: FLdRfVar var_94
  loc_65B5C5: LitI2_Byte &H5D
  loc_65B5C7: PopTmpLdAd2 var_92
  loc_65B5CA: ImpAdLdRf MemVar_74A21C
  loc_65B5CD: NewIfNullPr clsSecurity
  loc_65B5D5: FLdUI1
  loc_65B5D9: CI2UI1
  loc_65B5DB: LtI2
  loc_65B5DC: ImpAdLdPr unk_444EF5
  loc_65B5DF: MemLdI2 global_4
  loc_65B5E2: LitI2_Byte 1
  loc_65B5E4: SubI2
  loc_65B5E5: FLdRfVar var_CA
  loc_65B5E8: LitI2_Byte &H5E
  loc_65B5EA: PopTmpLdAd2 var_9E
  loc_65B5ED: ImpAdLdRf MemVar_74A21C
  loc_65B5F0: NewIfNullPr clsSecurity
  loc_65B5F8: FLdUI1
  loc_65B5FC: CI2UI1
  loc_65B5FE: LtI2
  loc_65B5FF: AndI4
  loc_65B600: BranchF loc_65B62B
  loc_65B603: LitI2_Byte 0
  loc_65B605: FLdPrThis
  loc_65B606: VCallAd Control_ID_cmdTemporizar
  loc_65B609: FStAdFunc var_8C
  loc_65B60C: FLdPr var_8C
  loc_65B60F: Me.Enabled = from_stack_1b
  loc_65B614: FFree1Ad var_8C
  loc_65B617: LitI2_Byte 0
  loc_65B619: FLdPrThis
  loc_65B61A: VCallAd Control_ID_cmdInmetiata
  loc_65B61D: FStAdFunc var_8C
  loc_65B620: FLdPr var_8C
  loc_65B623: Me.Enabled = from_stack_1b
  loc_65B628: FFree1Ad var_8C
  loc_65B62B: LitI2_Byte 0
  loc_65B62D: FLdPrThis
  loc_65B62E: VCallAd Control_ID_cmdLockPrices
  loc_65B631: FStAdFunc var_8C
  loc_65B634: FLdPr var_8C
  loc_65B637: Me.Enabled = from_stack_1b
  loc_65B63C: FFree1Ad var_8C
  loc_65B63F: ExitProcHresult
End Sub

Private Sub cmdBorrarNivel_Click() '5D753C
  'Data Table: 444EE4
  loc_5D7514: from_stack_1v = Proc_104_38_638D2C()
  loc_5D7519: FLdRfVar var_8C
  loc_5D751C: FLdPrThis
  loc_5D751D: VCallAd Control_ID_txtNivel
  loc_5D7520: FStAdFunc var_88
  loc_5D7523: FLdPr var_88
  loc_5D7526:  = Me.Text
  loc_5D752B: ILdRf var_8C
  loc_5D752E: CI2Str
  loc_5D7530: from_stack_1v = Proc_104_51_62E1B4()
  loc_5D7535: FFree1Str var_8C
  loc_5D7538: FFree1Ad var_88
  loc_5D753B: ExitProcHresult
End Sub

Private Sub spnNivel_UnknownEvent_8 '5F2388
  'Data Table: 444EE4
  loc_5F22E4: ImpAdCallFPR4 DoEvents()
  loc_5F22E9: FLdRfVar var_86
  loc_5F22EC: from_stack_1v = Proc_104_43_5E40D8()
  loc_5F22F1: FLdI2 var_86
  loc_5F22F4: BranchF loc_5F22FE
  loc_5F22F7: LitI2_Byte 1
  loc_5F22F9: from_stack_2v = Proc_104_45_63D03C(from_stack_1v)
  loc_5F22FE: FLdRfVar var_90
  loc_5F2301: FLdPrThis
  loc_5F2302: VCallAd Control_ID_txtNivel
  loc_5F2305: FStAdFunc var_8C
  loc_5F2308: FLdPr var_8C
  loc_5F230B:  = Me.Text
  loc_5F2310: ILdRf var_90
  loc_5F2313: CR8Str
  loc_5F2315: LitI2_Byte 1
  loc_5F2317: CR8I2
  loc_5F2318: GtR4
  loc_5F2319: FFree1Str var_90
  loc_5F231C: FFree1Ad var_8C
  loc_5F231F: BranchF loc_5F2384
  loc_5F2322: FLdRfVar var_90
  loc_5F2325: FLdPrThis
  loc_5F2326: VCallAd Control_ID_txtNivel
  loc_5F2329: FStAdFunc var_8C
  loc_5F232C: FLdPr var_8C
  loc_5F232F:  = Me.Text
  loc_5F2334: ILdRf var_90
  loc_5F2337: CI2Str
  loc_5F2339: LitI2_Byte 1
  loc_5F233B: SubI2
  loc_5F233C: CI4UI1
  loc_5F233D: LitI4 1
  loc_5F2342: ImpAdLdRf MemVar_74C074
  loc_5F2345: AryLdPr
  loc_5F2348: MemLdR8 global_0
  loc_5F234B: LitI2_Byte 0
  loc_5F234D: CR8I2
  loc_5F234E: EqCyR8
  loc_5F234F: FFree1Str var_90
  loc_5F2352: FFree1Ad var_8C
  loc_5F2355: BranchF loc_5F2370
  loc_5F2358: LitI2_Byte 0
  loc_5F235A: FLdPrThis
  loc_5F235B: VCallAd Control_ID_cmdLockPrices
  loc_5F235E: FStAdFunc var_8C
  loc_5F2361: FLdPr var_8C
  loc_5F2364: Me.Enabled = from_stack_1b
  loc_5F2369: FFree1Ad var_8C
  loc_5F236C: ExitProcHresult
  loc_5F236D: Branch loc_5F2384
  loc_5F2370: LitI2_Byte &HFF
  loc_5F2372: FLdPrThis
  loc_5F2373: VCallAd Control_ID_cmdLockPrices
  loc_5F2376: FStAdFunc var_8C
  loc_5F2379: FLdPr var_8C
  loc_5F237C: Me.Enabled = from_stack_1b
  loc_5F2381: FFree1Ad var_8C
  loc_5F2384: ExitProcHresult
End Sub

Private Sub spnNivel_SpinDown() '5F2464
  'Data Table: 444EE4
  loc_5F23C0: ImpAdCallFPR4 DoEvents()
  loc_5F23C5: FLdRfVar var_86
  loc_5F23C8: from_stack_1v = Proc_104_43_5E40D8()
  loc_5F23CD: FLdI2 var_86
  loc_5F23D0: BranchF loc_5F23DA
  loc_5F23D3: LitI2_Byte &HFF
  loc_5F23D5: from_stack_2v = Proc_104_45_63D03C(from_stack_1v)
  loc_5F23DA: FLdRfVar var_90
  loc_5F23DD: FLdPrThis
  loc_5F23DE: VCallAd Control_ID_txtNivel
  loc_5F23E1: FStAdFunc var_8C
  loc_5F23E4: FLdPr var_8C
  loc_5F23E7:  = Me.Text
  loc_5F23EC: ILdRf var_90
  loc_5F23EF: CR8Str
  loc_5F23F1: LitI2_Byte 1
  loc_5F23F3: CR8I2
  loc_5F23F4: GtR4
  loc_5F23F5: FFree1Str var_90
  loc_5F23F8: FFree1Ad var_8C
  loc_5F23FB: BranchF loc_5F2460
  loc_5F23FE: FLdRfVar var_90
  loc_5F2401: FLdPrThis
  loc_5F2402: VCallAd Control_ID_txtNivel
  loc_5F2405: FStAdFunc var_8C
  loc_5F2408: FLdPr var_8C
  loc_5F240B:  = Me.Text
  loc_5F2410: ILdRf var_90
  loc_5F2413: CI2Str
  loc_5F2415: LitI2_Byte 1
  loc_5F2417: SubI2
  loc_5F2418: CI4UI1
  loc_5F2419: LitI4 1
  loc_5F241E: ImpAdLdRf MemVar_74C074
  loc_5F2421: AryLdPr
  loc_5F2424: MemLdR8 global_0
  loc_5F2427: LitI2_Byte 0
  loc_5F2429: CR8I2
  loc_5F242A: EqCyR8
  loc_5F242B: FFree1Str var_90
  loc_5F242E: FFree1Ad var_8C
  loc_5F2431: BranchF loc_5F244C
  loc_5F2434: LitI2_Byte 0
  loc_5F2436: FLdPrThis
  loc_5F2437: VCallAd Control_ID_cmdLockPrices
  loc_5F243A: FStAdFunc var_8C
  loc_5F243D: FLdPr var_8C
  loc_5F2440: Me.Enabled = from_stack_1b
  loc_5F2445: FFree1Ad var_8C
  loc_5F2448: ExitProcHresult
  loc_5F2449: Branch loc_5F2460
  loc_5F244C: LitI2_Byte &HFF
  loc_5F244E: FLdPrThis
  loc_5F244F: VCallAd Control_ID_cmdLockPrices
  loc_5F2452: FStAdFunc var_8C
  loc_5F2455: FLdPr var_8C
  loc_5F2458: Me.Enabled = from_stack_1b
  loc_5F245D: FFree1Ad var_8C
  loc_5F2460: ExitProcHresult
End Sub

Private Sub NumLock_UnknownEvent_8 '5C8114
  'Data Table: 444EE4
  loc_5C8110: ExitProcHresult
End Sub

Private Function txtPrecio_UnknownEvent_0(arg_C) '5EF8B8
  'Data Table: 444EE4
  loc_5EF830: LitVarI4
  loc_5EF838: PopAdLdVar
  loc_5EF839: FLdRfVar var_8C
  loc_5EF83C: ILdI2 arg_C
  loc_5EF83F: FLdPrThis
  loc_5EF840: VCallAd Control_ID_txtPrecio
  loc_5EF843: FStAdFunc var_88
  loc_5EF846: FLdPr var_88
  loc_5EF849: Set from_stack_2 = Me(from_stack_1)
  loc_5EF84E: FLdPr var_8C
  loc_5EF851: LateIdSt
  loc_5EF856: FFreeAd var_88 = ""
  loc_5EF85D: FLdRfVar var_8C
  loc_5EF860: ILdI2 arg_C
  loc_5EF863: FLdPrThis
  loc_5EF864: VCallAd Control_ID_txtPrecio
  loc_5EF867: FStAdFunc var_88
  loc_5EF86A: FLdPr var_88
  loc_5EF86D: Set from_stack_2 = Me(from_stack_1)
  loc_5EF872: FLdPr var_8C
  loc_5EF875: LateIdLdVar var_AC DispID_22 0
  loc_5EF87C: CStrVarTmp
  loc_5EF87D: FStStrNoPop var_B0
  loc_5EF880: FnLenStr
  loc_5EF881: CVarI4
  loc_5EF885: PopAdLdVar
  loc_5EF886: FLdRfVar var_B8
  loc_5EF889: ILdI2 arg_C
  loc_5EF88C: FLdPrThis
  loc_5EF88D: VCallAd Control_ID_txtPrecio
  loc_5EF890: FStAdFunc var_B4
  loc_5EF893: FLdPr var_B4
  loc_5EF896: Set from_stack_2 = Me(from_stack_1)
  loc_5EF89B: FLdPr var_B8
  loc_5EF89E: LateIdSt
  loc_5EF8A3: FFree1Str var_B0
  loc_5EF8A6: FFreeAd var_88 = "": var_8C = "": var_B4 = ""
  loc_5EF8B1: FFree1Var var_AC = ""
  loc_5EF8B4: ExitProcHresult
End Function

Private Function txtPrecio_UnknownEvent_1(arg_C) '5CA094
  'Data Table: 444EE4
  loc_5CA088: FLdRfVar var_86
  loc_5CA08B: ILdRf arg_C
  loc_5CA08E: from_stack_2v = Proc_104_55_63E8C8(from_stack_1v)
  loc_5CA093: ExitProcHresult
End Function

Private Sub txtPrecio_KeyDown(KeyCode As Integer, Shift As Integer) '6C5EC4
  'Data Table: 444EE4
  loc_6C5604: ILdI2 Shift
  loc_6C5607: LitI2_Byte &H30
  loc_6C5609: EqI2
  loc_6C560A: BranchF loc_6C5EC0
  loc_6C560D: FLdRfVar var_90
  loc_6C5610: ILdI2 KeyCode
  loc_6C5613: FLdPrThis
  loc_6C5614: VCallAd Control_ID_txtPrecio
  loc_6C5617: FStAdFunc var_8C
  loc_6C561A: FLdPr var_8C
  loc_6C561D: Set from_stack_2 = Me(from_stack_1)
  loc_6C5622: FLdPr var_90
  loc_6C5625: LateIdLdVar var_A0 DispID_22 0
  loc_6C562C: CStrVarTmp
  loc_6C562D: FStStrNoPop var_A4
  loc_6C5630: FnLenStr
  loc_6C5631: FLdRfVar var_AC
  loc_6C5634: ILdI2 KeyCode
  loc_6C5637: FLdPrThis
  loc_6C5638: VCallAd Control_ID_txtPrecio
  loc_6C563B: FStAdFunc var_A8
  loc_6C563E: FLdPr var_A8
  loc_6C5641: Set from_stack_2 = Me(from_stack_1)
  loc_6C5646: FLdPr var_AC
  loc_6C5649: LateIdLdVar var_BC DispID_18 0
  loc_6C5650: CI4Var
  loc_6C5652: EqI4
  loc_6C5653: FFree1Str var_A4
  loc_6C5656: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5661: FFreeVar var_A0 = ""
  loc_6C5668: BranchF loc_6C566F
  loc_6C566B: ExitProcHresult
  loc_6C566C: Branch loc_6C57A1
  loc_6C566F: FLdRfVar var_90
  loc_6C5672: ILdI2 KeyCode
  loc_6C5675: FLdPrThis
  loc_6C5676: VCallAd Control_ID_txtPrecio
  loc_6C5679: FStAdFunc var_8C
  loc_6C567C: FLdPr var_8C
  loc_6C567F: Set from_stack_2 = Me(from_stack_1)
  loc_6C5684: FLdPr var_90
  loc_6C5687: LateIdLdVar var_A0 DispID_22 0
  loc_6C568E: CStrVarTmp
  loc_6C568F: FStStrNoPop var_A4
  loc_6C5692: FnLenStr
  loc_6C5693: FLdRfVar var_AC
  loc_6C5696: ILdI2 KeyCode
  loc_6C5699: FLdPrThis
  loc_6C569A: VCallAd Control_ID_txtPrecio
  loc_6C569D: FStAdFunc var_A8
  loc_6C56A0: FLdPr var_A8
  loc_6C56A3: Set from_stack_2 = Me(from_stack_1)
  loc_6C56A8: FLdPr var_AC
  loc_6C56AB: LateIdLdVar var_BC DispID_17 0
  loc_6C56B2: CI4Var
  loc_6C56B4: EqI4
  loc_6C56B5: FFree1Str var_A4
  loc_6C56B8: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C56C3: FFreeVar var_A0 = ""
  loc_6C56CA: BranchF loc_6C57A1
  loc_6C56CD: FLdRfVar var_BE
  loc_6C56D0: FLdRfVar var_90
  loc_6C56D3: ILdI2 KeyCode
  loc_6C56D6: FLdPrThis
  loc_6C56D7: VCallAd Control_ID_txtImpuesto
  loc_6C56DA: FStAdFunc var_8C
  loc_6C56DD: FLdPr var_8C
  loc_6C56E0: Set from_stack_2 = Me(from_stack_1)
  loc_6C56E5: FLdPr var_90
  loc_6C56E8:  = Me.Visible
  loc_6C56ED: FLdI2 var_BE
  loc_6C56F0: NotI4
  loc_6C56F1: FFreeAd var_8C = ""
  loc_6C56F8: BranchF loc_6C5749
  loc_6C56FB: FLdRfVar var_A4
  loc_6C56FE: FLdRfVar var_C4
  loc_6C5701: from_stack_1v = Proc_104_46_5E9700()
  loc_6C5706: ILdRf var_C4
  loc_6C5709: PopTmpLdAdStr var_C8
  loc_6C570C: from_stack_2v = Proc_104_48_5DB464(from_stack_1v)
  loc_6C5711: ILdRf var_A4
  loc_6C5714: ImpAdLdI4 MemVar_74C358
  loc_6C5717: ConcatStr
  loc_6C5718: CVarStr var_A0
  loc_6C571B: PopAdLdVar
  loc_6C571C: FLdRfVar var_90
  loc_6C571F: ILdI2 KeyCode
  loc_6C5722: FLdPrThis
  loc_6C5723: VCallAd Control_ID_txtPrecio
  loc_6C5726: FStAdFunc var_8C
  loc_6C5729: FLdPr var_8C
  loc_6C572C: Set from_stack_2 = Me(from_stack_1)
  loc_6C5731: FLdPr var_90
  loc_6C5734: LateIdSt
  loc_6C5739: FFree1Str var_A4
  loc_6C573C: FFreeAd var_8C = ""
  loc_6C5743: FFree1Var var_A0 = ""
  loc_6C5746: Branch loc_6C5774
  loc_6C5749: ImpAdLdRf MemVar_74C358
  loc_6C574C: CDargRef
  loc_6C5750: FLdRfVar var_90
  loc_6C5753: ILdI2 KeyCode
  loc_6C5756: FLdPrThis
  loc_6C5757: VCallAd Control_ID_txtPrecio
  loc_6C575A: FStAdFunc var_8C
  loc_6C575D: FLdPr var_8C
  loc_6C5760: Set from_stack_2 = Me(from_stack_1)
  loc_6C5765: FLdPr var_90
  loc_6C5768: LateIdSt
  loc_6C576D: FFreeAd var_8C = ""
  loc_6C5774: LitVarI4
  loc_6C577C: PopAdLdVar
  loc_6C577D: FLdRfVar var_90
  loc_6C5780: ILdI2 KeyCode
  loc_6C5783: FLdPrThis
  loc_6C5784: VCallAd Control_ID_txtPrecio
  loc_6C5787: FStAdFunc var_8C
  loc_6C578A: FLdPr var_8C
  loc_6C578D: Set from_stack_2 = Me(from_stack_1)
  loc_6C5792: FLdPr var_90
  loc_6C5795: LateIdSt
  loc_6C579A: FFreeAd var_8C = ""
  loc_6C57A1: FLdRfVar var_90
  loc_6C57A4: ILdI2 KeyCode
  loc_6C57A7: FLdPrThis
  loc_6C57A8: VCallAd Control_ID_txtPrecio
  loc_6C57AB: FStAdFunc var_8C
  loc_6C57AE: FLdPr var_8C
  loc_6C57B1: Set from_stack_2 = Me(from_stack_1)
  loc_6C57B6: FLdPr var_90
  loc_6C57B9: LateIdLdVar var_A0 DispID_18 0
  loc_6C57C0: PopAd
  loc_6C57C2: FLdRfVar var_C8
  loc_6C57C5: FLdRfVar var_A0
  loc_6C57C8: CI4Var
  loc_6C57CA: PopTmpLdAdStr var_C4
  loc_6C57CD: ILdRf KeyCode
  loc_6C57D0: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C57D5: ILdRf var_C8
  loc_6C57D8: LitI4 1
  loc_6C57DD: EqI4
  loc_6C57DE: FFreeAd var_8C = ""
  loc_6C57E5: FFree1Var var_A0 = ""
  loc_6C57E8: BranchF loc_6C592D
  loc_6C57EB: FLdRfVar var_90
  loc_6C57EE: ILdI2 KeyCode
  loc_6C57F1: FLdPrThis
  loc_6C57F2: VCallAd Control_ID_txtPrecio
  loc_6C57F5: FStAdFunc var_8C
  loc_6C57F8: FLdPr var_8C
  loc_6C57FB: Set from_stack_2 = Me(from_stack_1)
  loc_6C5800: FLdPr var_90
  loc_6C5803: LateIdLdVar var_A0 DispID_22 0
  loc_6C580A: PopAd
  loc_6C580C: FLdRfVar var_AC
  loc_6C580F: ILdI2 KeyCode
  loc_6C5812: FLdPrThis
  loc_6C5813: VCallAd Control_ID_txtPrecio
  loc_6C5816: FStAdFunc var_A8
  loc_6C5819: FLdPr var_A8
  loc_6C581C: Set from_stack_2 = Me(from_stack_1)
  loc_6C5821: FLdPr var_AC
  loc_6C5824: LateIdLdVar var_BC DispID_18 0
  loc_6C582B: CI4Var
  loc_6C582D: CVarI4
  loc_6C5831: LitI4 1
  loc_6C5836: FLdRfVar var_A0
  loc_6C5839: CStrVarTmp
  loc_6C583A: CVarStr var_E8
  loc_6C583D: FLdRfVar var_108
  loc_6C5840: ImpAdCallFPR4  = Mid(, , )
  loc_6C5845: FLdRfVar var_108
  loc_6C5848: CStrVarTmp
  loc_6C5849: FStStr var_88
  loc_6C584C: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5857: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = ""
  loc_6C5864: FLdRfVar var_90
  loc_6C5867: ILdI2 KeyCode
  loc_6C586A: FLdPrThis
  loc_6C586B: VCallAd Control_ID_txtPrecio
  loc_6C586E: FStAdFunc var_8C
  loc_6C5871: FLdPr var_8C
  loc_6C5874: Set from_stack_2 = Me(from_stack_1)
  loc_6C5879: FLdPr var_90
  loc_6C587C: LateIdLdVar var_A0 DispID_22 0
  loc_6C5883: PopAd
  loc_6C5885: FLdRfVar var_AC
  loc_6C5888: ILdI2 KeyCode
  loc_6C588B: FLdPrThis
  loc_6C588C: VCallAd Control_ID_txtPrecio
  loc_6C588F: FStAdFunc var_A8
  loc_6C5892: FLdPr var_A8
  loc_6C5895: Set from_stack_2 = Me(from_stack_1)
  loc_6C589A: FLdPr var_AC
  loc_6C589D: LateIdLdVar var_BC DispID_18 0
  loc_6C58A4: PopAd
  loc_6C58A6: ILdRf var_88
  loc_6C58A9: LitStr "0"
  loc_6C58AC: ConcatStr
  loc_6C58AD: CVarStr var_118
  loc_6C58B0: LitVar_Missing var_F8
  loc_6C58B3: FLdRfVar var_BC
  loc_6C58B6: CI4Var
  loc_6C58B8: LitI4 2
  loc_6C58BD: AddI4
  loc_6C58BE: FLdRfVar var_A0
  loc_6C58C1: CStrVarTmp
  loc_6C58C2: CVarStr var_E8
  loc_6C58C5: FLdRfVar var_108
  loc_6C58C8: ImpAdCallFPR4  = Mid(, , )
  loc_6C58CD: FLdRfVar var_108
  loc_6C58D0: ConcatVar var_128
  loc_6C58D4: CStrVarTmp
  loc_6C58D5: FStStr var_88
  loc_6C58D8: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C58E3: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = "": var_118 = "": var_108 = ""
  loc_6C58F4: FLdRfVar var_90
  loc_6C58F7: ILdI2 KeyCode
  loc_6C58FA: FLdPrThis
  loc_6C58FB: VCallAd Control_ID_txtPrecio
  loc_6C58FE: FStAdFunc var_8C
  loc_6C5901: FLdPr var_8C
  loc_6C5904: Set from_stack_2 = Me(from_stack_1)
  loc_6C5909: FLdPr var_90
  loc_6C590C: LateIdLdVar var_A0 DispID_18 0
  loc_6C5913: CI4Var
  loc_6C5915: ILdI2 KeyCode
  loc_6C5918: ILdRf var_88
  loc_6C591B: from_stack_4v = Proc_104_53_5E42AC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C5920: FFreeAd var_8C = ""
  loc_6C5927: FFree1Var var_A0 = ""
  loc_6C592A: Branch loc_6C5EC0
  loc_6C592D: FLdRfVar var_90
  loc_6C5930: ILdI2 KeyCode
  loc_6C5933: FLdPrThis
  loc_6C5934: VCallAd Control_ID_txtPrecio
  loc_6C5937: FStAdFunc var_8C
  loc_6C593A: FLdPr var_8C
  loc_6C593D: Set from_stack_2 = Me(from_stack_1)
  loc_6C5942: FLdPr var_90
  loc_6C5945: LateIdLdVar var_A0 DispID_18 0
  loc_6C594C: PopAd
  loc_6C594E: FLdRfVar var_C8
  loc_6C5951: FLdRfVar var_A0
  loc_6C5954: CI4Var
  loc_6C5956: PopTmpLdAdStr var_C4
  loc_6C5959: ILdRf KeyCode
  loc_6C595C: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C5961: ILdRf var_C8
  loc_6C5964: LitI4 3
  loc_6C5969: EqI4
  loc_6C596A: FFreeAd var_8C = ""
  loc_6C5971: FFree1Var var_A0 = ""
  loc_6C5974: BranchF loc_6C5B15
  loc_6C5977: FLdRfVar var_90
  loc_6C597A: ILdI2 KeyCode
  loc_6C597D: FLdPrThis
  loc_6C597E: VCallAd Control_ID_txtPrecio
  loc_6C5981: FStAdFunc var_8C
  loc_6C5984: FLdPr var_8C
  loc_6C5987: Set from_stack_2 = Me(from_stack_1)
  loc_6C598C: FLdPr var_90
  loc_6C598F: LateIdLdVar var_A0 DispID_18 0
  loc_6C5996: PopAd
  loc_6C5998: FLdRfVar var_C8
  loc_6C599B: FLdRfVar var_A0
  loc_6C599E: CI4Var
  loc_6C59A0: LitI4 1
  loc_6C59A5: AddI4
  loc_6C59A6: PopTmpLdAdStr var_C4
  loc_6C59A9: ILdRf KeyCode
  loc_6C59AC: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C59B1: ILdRf var_C8
  loc_6C59B4: LitI4 1
  loc_6C59B9: EqI4
  loc_6C59BA: FFreeAd var_8C = ""
  loc_6C59C1: FFree1Var var_A0 = ""
  loc_6C59C4: BranchF loc_6C5B12
  loc_6C59C7: FLdRfVar var_90
  loc_6C59CA: ILdI2 KeyCode
  loc_6C59CD: FLdPrThis
  loc_6C59CE: VCallAd Control_ID_txtPrecio
  loc_6C59D1: FStAdFunc var_8C
  loc_6C59D4: FLdPr var_8C
  loc_6C59D7: Set from_stack_2 = Me(from_stack_1)
  loc_6C59DC: FLdPr var_90
  loc_6C59DF: LateIdLdVar var_A0 DispID_22 0
  loc_6C59E6: PopAd
  loc_6C59E8: FLdRfVar var_AC
  loc_6C59EB: ILdI2 KeyCode
  loc_6C59EE: FLdPrThis
  loc_6C59EF: VCallAd Control_ID_txtPrecio
  loc_6C59F2: FStAdFunc var_A8
  loc_6C59F5: FLdPr var_A8
  loc_6C59F8: Set from_stack_2 = Me(from_stack_1)
  loc_6C59FD: FLdPr var_AC
  loc_6C5A00: LateIdLdVar var_BC DispID_18 0
  loc_6C5A07: CI4Var
  loc_6C5A09: LitI4 1
  loc_6C5A0E: AddI4
  loc_6C5A0F: CVarI4
  loc_6C5A13: LitI4 1
  loc_6C5A18: FLdRfVar var_A0
  loc_6C5A1B: CStrVarTmp
  loc_6C5A1C: CVarStr var_E8
  loc_6C5A1F: FLdRfVar var_108
  loc_6C5A22: ImpAdCallFPR4  = Mid(, , )
  loc_6C5A27: FLdRfVar var_108
  loc_6C5A2A: CStrVarTmp
  loc_6C5A2B: FStStr var_88
  loc_6C5A2E: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5A39: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = ""
  loc_6C5A46: FLdRfVar var_90
  loc_6C5A49: ILdI2 KeyCode
  loc_6C5A4C: FLdPrThis
  loc_6C5A4D: VCallAd Control_ID_txtPrecio
  loc_6C5A50: FStAdFunc var_8C
  loc_6C5A53: FLdPr var_8C
  loc_6C5A56: Set from_stack_2 = Me(from_stack_1)
  loc_6C5A5B: FLdPr var_90
  loc_6C5A5E: LateIdLdVar var_A0 DispID_22 0
  loc_6C5A65: PopAd
  loc_6C5A67: FLdRfVar var_AC
  loc_6C5A6A: ILdI2 KeyCode
  loc_6C5A6D: FLdPrThis
  loc_6C5A6E: VCallAd Control_ID_txtPrecio
  loc_6C5A71: FStAdFunc var_A8
  loc_6C5A74: FLdPr var_A8
  loc_6C5A77: Set from_stack_2 = Me(from_stack_1)
  loc_6C5A7C: FLdPr var_AC
  loc_6C5A7F: LateIdLdVar var_BC DispID_18 0
  loc_6C5A86: PopAd
  loc_6C5A88: ILdRf var_88
  loc_6C5A8B: LitStr "0"
  loc_6C5A8E: ConcatStr
  loc_6C5A8F: CVarStr var_118
  loc_6C5A92: LitVar_Missing var_F8
  loc_6C5A95: FLdRfVar var_BC
  loc_6C5A98: CI4Var
  loc_6C5A9A: LitI4 3
  loc_6C5A9F: AddI4
  loc_6C5AA0: FLdRfVar var_A0
  loc_6C5AA3: CStrVarTmp
  loc_6C5AA4: CVarStr var_E8
  loc_6C5AA7: FLdRfVar var_108
  loc_6C5AAA: ImpAdCallFPR4  = Mid(, , )
  loc_6C5AAF: FLdRfVar var_108
  loc_6C5AB2: ConcatVar var_128
  loc_6C5AB6: CStrVarTmp
  loc_6C5AB7: FStStr var_88
  loc_6C5ABA: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5AC5: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = "": var_118 = "": var_108 = ""
  loc_6C5AD6: FLdRfVar var_90
  loc_6C5AD9: ILdI2 KeyCode
  loc_6C5ADC: FLdPrThis
  loc_6C5ADD: VCallAd Control_ID_txtPrecio
  loc_6C5AE0: FStAdFunc var_8C
  loc_6C5AE3: FLdPr var_8C
  loc_6C5AE6: Set from_stack_2 = Me(from_stack_1)
  loc_6C5AEB: FLdPr var_90
  loc_6C5AEE: LateIdLdVar var_A0 DispID_18 0
  loc_6C5AF5: CI4Var
  loc_6C5AF7: LitI4 1
  loc_6C5AFC: AddI4
  loc_6C5AFD: ILdI2 KeyCode
  loc_6C5B00: ILdRf var_88
  loc_6C5B03: from_stack_4v = Proc_104_53_5E42AC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C5B08: FFreeAd var_8C = ""
  loc_6C5B0F: FFree1Var var_A0 = ""
  loc_6C5B12: Branch loc_6C5EC0
  loc_6C5B15: FLdRfVar var_90
  loc_6C5B18: ILdI2 KeyCode
  loc_6C5B1B: FLdPrThis
  loc_6C5B1C: VCallAd Control_ID_txtPrecio
  loc_6C5B1F: FStAdFunc var_8C
  loc_6C5B22: FLdPr var_8C
  loc_6C5B25: Set from_stack_2 = Me(from_stack_1)
  loc_6C5B2A: FLdPr var_90
  loc_6C5B2D: LateIdLdVar var_A0 DispID_18 0
  loc_6C5B34: PopAd
  loc_6C5B36: FLdRfVar var_C8
  loc_6C5B39: FLdRfVar var_A0
  loc_6C5B3C: CI4Var
  loc_6C5B3E: PopTmpLdAdStr var_C4
  loc_6C5B41: ILdRf KeyCode
  loc_6C5B44: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C5B49: ILdRf var_C8
  loc_6C5B4C: LitI4 2
  loc_6C5B51: EqI4
  loc_6C5B52: FFreeAd var_8C = ""
  loc_6C5B59: FFree1Var var_A0 = ""
  loc_6C5B5C: BranchF loc_6C5CFD
  loc_6C5B5F: FLdRfVar var_90
  loc_6C5B62: ILdI2 KeyCode
  loc_6C5B65: FLdPrThis
  loc_6C5B66: VCallAd Control_ID_txtPrecio
  loc_6C5B69: FStAdFunc var_8C
  loc_6C5B6C: FLdPr var_8C
  loc_6C5B6F: Set from_stack_2 = Me(from_stack_1)
  loc_6C5B74: FLdPr var_90
  loc_6C5B77: LateIdLdVar var_A0 DispID_18 0
  loc_6C5B7E: PopAd
  loc_6C5B80: FLdRfVar var_C8
  loc_6C5B83: FLdRfVar var_A0
  loc_6C5B86: CI4Var
  loc_6C5B88: LitI4 1
  loc_6C5B8D: AddI4
  loc_6C5B8E: PopTmpLdAdStr var_C4
  loc_6C5B91: ILdRf KeyCode
  loc_6C5B94: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C5B99: ILdRf var_C8
  loc_6C5B9C: LitI4 1
  loc_6C5BA1: EqI4
  loc_6C5BA2: FFreeAd var_8C = ""
  loc_6C5BA9: FFree1Var var_A0 = ""
  loc_6C5BAC: BranchF loc_6C5CFA
  loc_6C5BAF: FLdRfVar var_90
  loc_6C5BB2: ILdI2 KeyCode
  loc_6C5BB5: FLdPrThis
  loc_6C5BB6: VCallAd Control_ID_txtPrecio
  loc_6C5BB9: FStAdFunc var_8C
  loc_6C5BBC: FLdPr var_8C
  loc_6C5BBF: Set from_stack_2 = Me(from_stack_1)
  loc_6C5BC4: FLdPr var_90
  loc_6C5BC7: LateIdLdVar var_A0 DispID_22 0
  loc_6C5BCE: PopAd
  loc_6C5BD0: FLdRfVar var_AC
  loc_6C5BD3: ILdI2 KeyCode
  loc_6C5BD6: FLdPrThis
  loc_6C5BD7: VCallAd Control_ID_txtPrecio
  loc_6C5BDA: FStAdFunc var_A8
  loc_6C5BDD: FLdPr var_A8
  loc_6C5BE0: Set from_stack_2 = Me(from_stack_1)
  loc_6C5BE5: FLdPr var_AC
  loc_6C5BE8: LateIdLdVar var_BC DispID_18 0
  loc_6C5BEF: CI4Var
  loc_6C5BF1: LitI4 1
  loc_6C5BF6: AddI4
  loc_6C5BF7: CVarI4
  loc_6C5BFB: LitI4 1
  loc_6C5C00: FLdRfVar var_A0
  loc_6C5C03: CStrVarTmp
  loc_6C5C04: CVarStr var_E8
  loc_6C5C07: FLdRfVar var_108
  loc_6C5C0A: ImpAdCallFPR4  = Mid(, , )
  loc_6C5C0F: FLdRfVar var_108
  loc_6C5C12: CStrVarTmp
  loc_6C5C13: FStStr var_88
  loc_6C5C16: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5C21: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = ""
  loc_6C5C2E: FLdRfVar var_90
  loc_6C5C31: ILdI2 KeyCode
  loc_6C5C34: FLdPrThis
  loc_6C5C35: VCallAd Control_ID_txtPrecio
  loc_6C5C38: FStAdFunc var_8C
  loc_6C5C3B: FLdPr var_8C
  loc_6C5C3E: Set from_stack_2 = Me(from_stack_1)
  loc_6C5C43: FLdPr var_90
  loc_6C5C46: LateIdLdVar var_A0 DispID_22 0
  loc_6C5C4D: PopAd
  loc_6C5C4F: FLdRfVar var_AC
  loc_6C5C52: ILdI2 KeyCode
  loc_6C5C55: FLdPrThis
  loc_6C5C56: VCallAd Control_ID_txtPrecio
  loc_6C5C59: FStAdFunc var_A8
  loc_6C5C5C: FLdPr var_A8
  loc_6C5C5F: Set from_stack_2 = Me(from_stack_1)
  loc_6C5C64: FLdPr var_AC
  loc_6C5C67: LateIdLdVar var_BC DispID_18 0
  loc_6C5C6E: PopAd
  loc_6C5C70: ILdRf var_88
  loc_6C5C73: LitStr "0"
  loc_6C5C76: ConcatStr
  loc_6C5C77: CVarStr var_118
  loc_6C5C7A: LitVar_Missing var_F8
  loc_6C5C7D: FLdRfVar var_BC
  loc_6C5C80: CI4Var
  loc_6C5C82: LitI4 3
  loc_6C5C87: AddI4
  loc_6C5C88: FLdRfVar var_A0
  loc_6C5C8B: CStrVarTmp
  loc_6C5C8C: CVarStr var_E8
  loc_6C5C8F: FLdRfVar var_108
  loc_6C5C92: ImpAdCallFPR4  = Mid(, , )
  loc_6C5C97: FLdRfVar var_108
  loc_6C5C9A: ConcatVar var_128
  loc_6C5C9E: CStrVarTmp
  loc_6C5C9F: FStStr var_88
  loc_6C5CA2: FFreeAd var_8C = "": var_90 = "": var_A8 = ""
  loc_6C5CAD: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_F8 = "": var_118 = "": var_108 = ""
  loc_6C5CBE: FLdRfVar var_90
  loc_6C5CC1: ILdI2 KeyCode
  loc_6C5CC4: FLdPrThis
  loc_6C5CC5: VCallAd Control_ID_txtPrecio
  loc_6C5CC8: FStAdFunc var_8C
  loc_6C5CCB: FLdPr var_8C
  loc_6C5CCE: Set from_stack_2 = Me(from_stack_1)
  loc_6C5CD3: FLdPr var_90
  loc_6C5CD6: LateIdLdVar var_A0 DispID_18 0
  loc_6C5CDD: CI4Var
  loc_6C5CDF: LitI4 1
  loc_6C5CE4: AddI4
  loc_6C5CE5: ILdI2 KeyCode
  loc_6C5CE8: ILdRf var_88
  loc_6C5CEB: from_stack_4v = Proc_104_53_5E42AC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C5CF0: FFreeAd var_8C = ""
  loc_6C5CF7: FFree1Var var_A0 = ""
  loc_6C5CFA: Branch loc_6C5EC0
  loc_6C5CFD: FLdRfVar var_90
  loc_6C5D00: ILdI2 KeyCode
  loc_6C5D03: FLdPrThis
  loc_6C5D04: VCallAd Control_ID_txtPrecio
  loc_6C5D07: FStAdFunc var_8C
  loc_6C5D0A: FLdPr var_8C
  loc_6C5D0D: Set from_stack_2 = Me(from_stack_1)
  loc_6C5D12: FLdPr var_90
  loc_6C5D15: LateIdLdVar var_A0 DispID_18 0
  loc_6C5D1C: PopAd
  loc_6C5D1E: FLdRfVar var_C8
  loc_6C5D21: FLdRfVar var_A0
  loc_6C5D24: CI4Var
  loc_6C5D26: PopTmpLdAdStr var_C4
  loc_6C5D29: ILdRf KeyCode
  loc_6C5D2C: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C5D31: ILdRf var_C8
  loc_6C5D34: LitI4 4
  loc_6C5D39: EqI4
  loc_6C5D3A: FFreeAd var_8C = ""
  loc_6C5D41: FFree1Var var_A0 = ""
  loc_6C5D44: BranchF loc_6C5EC0
  loc_6C5D47: FLdRfVar var_90
  loc_6C5D4A: ILdI2 KeyCode
  loc_6C5D4D: FLdPrThis
  loc_6C5D4E: VCallAd Control_ID_txtPrecio
  loc_6C5D51: FStAdFunc var_8C
  loc_6C5D54: FLdPr var_8C
  loc_6C5D57: Set from_stack_2 = Me(from_stack_1)
  loc_6C5D5C: FLdPr var_90
  loc_6C5D5F: LateIdLdVar var_A0 DispID_18 0
  loc_6C5D66: CI4Var
  loc_6C5D68: FLdRfVar var_12C
  loc_6C5D6B: FLdRfVar var_AC
  loc_6C5D6E: ILdI2 KeyCode
  loc_6C5D71: FLdPrThis
  loc_6C5D72: VCallAd Control_ID_txtPrecio
  loc_6C5D75: FStAdFunc var_A8
  loc_6C5D78: FLdPr var_A8
  loc_6C5D7B: Set from_stack_2 = Me(from_stack_1)
  loc_6C5D80: FLdPr var_AC
  loc_6C5D83: LateIdLdVar var_BC DispID_22 0
  loc_6C5D8A: CStrVarTmp
  loc_6C5D8B: FStStrNoPop var_A4
  loc_6C5D8E: FnLenStr
  loc_6C5D8F: FLdRfVar var_134
  loc_6C5D92: ILdI2 KeyCode
  loc_6C5D95: FLdPrThis
  loc_6C5D96: VCallAd Control_ID_txtPrecio
  loc_6C5D99: FStAdFunc var_130
  loc_6C5D9C: FLdPr var_130
  loc_6C5D9F: Set from_stack_2 = Me(from_stack_1)
  loc_6C5DA4: FLdPr var_134
  loc_6C5DA7: LateIdLdVar var_E8 DispID_17 0
  loc_6C5DAE: CI4Var
  loc_6C5DB0: SubI4
  loc_6C5DB1: FFree1Str var_A4
  loc_6C5DB4: FFreeAd var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_130 = ""
  loc_6C5DC3: FFreeVar var_A0 = "": var_BC = ""
  loc_6C5DCC: ForI4 var_13C
  loc_6C5DD2: FLdRfVar var_C4
  loc_6C5DD5: FLdRfVar var_12C
  loc_6C5DD8: ILdRf KeyCode
  loc_6C5DDB: from_stack_3v = Proc_104_52_62336C(from_stack_1v, from_stack_2v)
  loc_6C5DE0: ILdRf var_C4
  loc_6C5DE3: LitI4 1
  loc_6C5DE8: EqI4
  loc_6C5DE9: BranchF loc_6C5EB8
  loc_6C5DEC: FLdRfVar var_90
  loc_6C5DEF: ILdI2 KeyCode
  loc_6C5DF2: FLdPrThis
  loc_6C5DF3: VCallAd Control_ID_txtPrecio
  loc_6C5DF6: FStAdFunc var_8C
  loc_6C5DF9: FLdPr var_8C
  loc_6C5DFC: Set from_stack_2 = Me(from_stack_1)
  loc_6C5E01: FLdPr var_90
  loc_6C5E04: LateIdLdVar var_A0 DispID_22 0
  loc_6C5E0B: PopAd
  loc_6C5E0D: FLdRfVar var_12C
  loc_6C5E10: CVarRef
  loc_6C5E15: LitI4 1
  loc_6C5E1A: FLdRfVar var_A0
  loc_6C5E1D: CStrVarTmp
  loc_6C5E1E: CVarStr var_BC
  loc_6C5E21: FLdRfVar var_E8
  loc_6C5E24: ImpAdCallFPR4  = Mid(, , )
  loc_6C5E29: FLdRfVar var_E8
  loc_6C5E2C: CStrVarTmp
  loc_6C5E2D: FStStr var_88
  loc_6C5E30: FFreeAd var_8C = ""
  loc_6C5E37: FFreeVar var_A0 = "": var_BC = ""
  loc_6C5E40: FLdRfVar var_90
  loc_6C5E43: ILdI2 KeyCode
  loc_6C5E46: FLdPrThis
  loc_6C5E47: VCallAd Control_ID_txtPrecio
  loc_6C5E4A: FStAdFunc var_8C
  loc_6C5E4D: FLdPr var_8C
  loc_6C5E50: Set from_stack_2 = Me(from_stack_1)
  loc_6C5E55: FLdPr var_90
  loc_6C5E58: LateIdLdVar var_A0 DispID_22 0
  loc_6C5E5F: PopAd
  loc_6C5E61: ILdRf var_88
  loc_6C5E64: LitStr "0"
  loc_6C5E67: ConcatStr
  loc_6C5E68: CVarStr var_108
  loc_6C5E6B: LitVar_Missing var_E8
  loc_6C5E6E: ILdRf var_12C
  loc_6C5E71: LitI4 2
  loc_6C5E76: AddI4
  loc_6C5E77: FLdRfVar var_A0
  loc_6C5E7A: CStrVarTmp
  loc_6C5E7B: CVarStr var_BC
  loc_6C5E7E: FLdRfVar var_F8
  loc_6C5E81: ImpAdCallFPR4  = Mid(, , )
  loc_6C5E86: FLdRfVar var_F8
  loc_6C5E89: ConcatVar var_118
  loc_6C5E8D: CStrVarTmp
  loc_6C5E8E: FStStr var_88
  loc_6C5E91: FFreeAd var_8C = ""
  loc_6C5E98: FFreeVar var_A0 = "": var_BC = "": var_E8 = "": var_108 = "": var_F8 = ""
  loc_6C5EA7: ILdRf var_12C
  loc_6C5EAA: ILdI2 KeyCode
  loc_6C5EAD: ILdRf var_88
  loc_6C5EB0: from_stack_4v = Proc_104_53_5E42AC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C5EB5: Branch loc_6C5EC0
  loc_6C5EB8: FLdRfVar var_12C
  loc_6C5EBB: NextI4 var_13C, loc_6C5DD2
  loc_6C5EC0: ExitProcHresult
  loc_6C5EC1: ExitProcHresult
End Sub

Private Sub Form_Load() '6A55F8
  'Data Table: 444EE4
  loc_6A4F00: FLdRfVar var_1D4
  loc_6A4F03: LitVar_Missing var_1D0
  loc_6A4F06: LitVar_Missing var_1B0
  loc_6A4F09: LitVar_Missing var_190
  loc_6A4F0C: LitVar_Missing var_170
  loc_6A4F0F: LitVar_Missing var_150
  loc_6A4F12: LitVar_Missing var_130
  loc_6A4F15: LitVar_Missing var_110
  loc_6A4F18: LitVar_Missing var_F0
  loc_6A4F1B: LitVar_Missing var_D0
  loc_6A4F1E: LitVar_Missing var_B0
  loc_6A4F21: LitStr "Programación de Precios"
  loc_6A4F24: FStStrCopy var_90
  loc_6A4F27: FLdRfVar var_90
  loc_6A4F2A: LitI4 1
  loc_6A4F2F: PopTmpLdAdStr var_8C
  loc_6A4F32: LitI2_Byte &HB
  loc_6A4F34: PopTmpLdAd2 var_88
  loc_6A4F37: ImpAdLdRf MemVar_74C7D0
  loc_6A4F3A: NewIfNullPr clsMsg
  loc_6A4F3D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A4F42: ILdRf var_1D4
  loc_6A4F45: FLdPrThis
  loc_6A4F46: VCallAd Control_ID_lblTitulo
  loc_6A4F49: FStAdFunc var_1D8
  loc_6A4F4C: FLdPr var_1D8
  loc_6A4F4F: Me.Caption = from_stack_1
  loc_6A4F54: FFreeStr var_90 = ""
  loc_6A4F5B: FFree1Ad var_1D8
  loc_6A4F5E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A4F75: FLdRfVar var_1D4
  loc_6A4F78: LitVar_Missing var_1D0
  loc_6A4F7B: LitVar_Missing var_1B0
  loc_6A4F7E: LitVar_Missing var_190
  loc_6A4F81: LitVar_Missing var_170
  loc_6A4F84: LitVar_Missing var_150
  loc_6A4F87: LitVar_Missing var_130
  loc_6A4F8A: LitVar_Missing var_110
  loc_6A4F8D: LitVar_Missing var_F0
  loc_6A4F90: LitVar_Missing var_D0
  loc_6A4F93: LitVar_Missing var_B0
  loc_6A4F96: LitStr "Nivel de Precio"
  loc_6A4F99: FStStrCopy var_90
  loc_6A4F9C: FLdRfVar var_90
  loc_6A4F9F: LitI4 2
  loc_6A4FA4: PopTmpLdAdStr var_8C
  loc_6A4FA7: LitI2_Byte &HB
  loc_6A4FA9: PopTmpLdAd2 var_88
  loc_6A4FAC: ImpAdLdRf MemVar_74C7D0
  loc_6A4FAF: NewIfNullPr clsMsg
  loc_6A4FB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A4FB7: ILdRf var_1D4
  loc_6A4FBA: FLdPrThis
  loc_6A4FBB: VCallAd Control_ID_lblNivel
  loc_6A4FBE: FStAdFunc var_1D8
  loc_6A4FC1: FLdPr var_1D8
  loc_6A4FC4: Me.Caption = from_stack_1
  loc_6A4FC9: FFreeStr var_90 = ""
  loc_6A4FD0: FFree1Ad var_1D8
  loc_6A4FD3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A4FEA: FLdRfVar var_1D4
  loc_6A4FED: LitVar_Missing var_1D0
  loc_6A4FF0: LitVar_Missing var_1B0
  loc_6A4FF3: LitVar_Missing var_190
  loc_6A4FF6: LitVar_Missing var_170
  loc_6A4FF9: LitVar_Missing var_150
  loc_6A4FFC: LitVar_Missing var_130
  loc_6A4FFF: LitVar_Missing var_110
  loc_6A5002: LitVar_Missing var_F0
  loc_6A5005: LitVar_Missing var_D0
  loc_6A5008: LitVar_Missing var_B0
  loc_6A500B: LitStr "Producto"
  loc_6A500E: FStStrCopy var_90
  loc_6A5011: FLdRfVar var_90
  loc_6A5014: LitI4 3
  loc_6A5019: PopTmpLdAdStr var_8C
  loc_6A501C: LitI2_Byte &HB
  loc_6A501E: PopTmpLdAd2 var_88
  loc_6A5021: ImpAdLdRf MemVar_74C7D0
  loc_6A5024: NewIfNullPr clsMsg
  loc_6A5027: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A502C: ILdRf var_1D4
  loc_6A502F: FLdPrThis
  loc_6A5030: VCallAd Control_ID_lblTituloProducto
  loc_6A5033: FStAdFunc var_1D8
  loc_6A5036: FLdPr var_1D8
  loc_6A5039: Me.Caption = from_stack_1
  loc_6A503E: FFreeStr var_90 = ""
  loc_6A5045: FFree1Ad var_1D8
  loc_6A5048: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A505F: FLdRfVar var_1D4
  loc_6A5062: LitVar_Missing var_1D0
  loc_6A5065: LitVar_Missing var_1B0
  loc_6A5068: LitVar_Missing var_190
  loc_6A506B: LitVar_Missing var_170
  loc_6A506E: LitVar_Missing var_150
  loc_6A5071: LitVar_Missing var_130
  loc_6A5074: LitVar_Missing var_110
  loc_6A5077: LitVar_Missing var_F0
  loc_6A507A: LitVar_Missing var_D0
  loc_6A507D: LitVar_Missing var_B0
  loc_6A5080: LitStr "Precio por Unidad"
  loc_6A5083: FStStrCopy var_90
  loc_6A5086: FLdRfVar var_90
  loc_6A5089: LitI4 4
  loc_6A508E: PopTmpLdAdStr var_8C
  loc_6A5091: LitI2_Byte &HB
  loc_6A5093: PopTmpLdAd2 var_88
  loc_6A5096: ImpAdLdRf MemVar_74C7D0
  loc_6A5099: NewIfNullPr clsMsg
  loc_6A509C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A50A1: ILdRf var_1D4
  loc_6A50A4: FLdPrThis
  loc_6A50A5: VCallAd Control_ID_lblTituloPrecio
  loc_6A50A8: FStAdFunc var_1D8
  loc_6A50AB: FLdPr var_1D8
  loc_6A50AE: Me.Caption = from_stack_1
  loc_6A50B3: FFreeStr var_90 = ""
  loc_6A50BA: FFree1Ad var_1D8
  loc_6A50BD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A50D4: FLdRfVar var_1D4
  loc_6A50D7: LitVar_Missing var_1D0
  loc_6A50DA: LitVar_Missing var_1B0
  loc_6A50DD: LitVar_Missing var_190
  loc_6A50E0: LitVar_Missing var_170
  loc_6A50E3: LitVar_Missing var_150
  loc_6A50E6: LitVar_Missing var_130
  loc_6A50E9: LitVar_Missing var_110
  loc_6A50EC: LitVar_Missing var_F0
  loc_6A50EF: LitVar_Missing var_D0
  loc_6A50F2: LitVar_Missing var_B0
  loc_6A50F5: LitStr "Impuesto Interno"
  loc_6A50F8: FStStrCopy var_90
  loc_6A50FB: FLdRfVar var_90
  loc_6A50FE: LitI4 5
  loc_6A5103: PopTmpLdAdStr var_8C
  loc_6A5106: LitI2_Byte &HB
  loc_6A5108: PopTmpLdAd2 var_88
  loc_6A510B: ImpAdLdRf MemVar_74C7D0
  loc_6A510E: NewIfNullPr clsMsg
  loc_6A5111: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5116: ILdRf var_1D4
  loc_6A5119: FLdPrThis
  loc_6A511A: VCallAd Control_ID_lblTituloImpuesto
  loc_6A511D: FStAdFunc var_1D8
  loc_6A5120: FLdPr var_1D8
  loc_6A5123: Me.Caption = from_stack_1
  loc_6A5128: FFreeStr var_90 = ""
  loc_6A512F: FFree1Ad var_1D8
  loc_6A5132: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5149: FLdRfVar var_1D4
  loc_6A514C: LitVar_Missing var_1D0
  loc_6A514F: LitVar_Missing var_1B0
  loc_6A5152: LitVar_Missing var_190
  loc_6A5155: LitVar_Missing var_170
  loc_6A5158: LitVar_Missing var_150
  loc_6A515B: LitVar_Missing var_130
  loc_6A515E: LitVar_Missing var_110
  loc_6A5161: LitVar_Missing var_F0
  loc_6A5164: LitVar_Missing var_D0
  loc_6A5167: LitVar_Missing var_B0
  loc_6A516A: LitStr "&Temporizado"
  loc_6A516D: FStStrCopy var_90
  loc_6A5170: FLdRfVar var_90
  loc_6A5173: LitI4 6
  loc_6A5178: PopTmpLdAdStr var_8C
  loc_6A517B: LitI2_Byte &HB
  loc_6A517D: PopTmpLdAd2 var_88
  loc_6A5180: ImpAdLdRf MemVar_74C7D0
  loc_6A5183: NewIfNullPr clsMsg
  loc_6A5186: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A518B: ILdRf var_1D4
  loc_6A518E: FLdPrThis
  loc_6A518F: VCallAd Control_ID_cmdTemporizar
  loc_6A5192: FStAdFunc var_1D8
  loc_6A5195: FLdPr var_1D8
  loc_6A5198: Me.Caption = from_stack_1
  loc_6A519D: FFreeStr var_90 = ""
  loc_6A51A4: FFree1Ad var_1D8
  loc_6A51A7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A51BE: FLdRfVar var_1D4
  loc_6A51C1: LitVar_Missing var_1D0
  loc_6A51C4: LitVar_Missing var_1B0
  loc_6A51C7: LitVar_Missing var_190
  loc_6A51CA: LitVar_Missing var_170
  loc_6A51CD: LitVar_Missing var_150
  loc_6A51D0: LitVar_Missing var_130
  loc_6A51D3: LitVar_Missing var_110
  loc_6A51D6: LitVar_Missing var_F0
  loc_6A51D9: LitVar_Missing var_D0
  loc_6A51DC: LitVar_Missing var_B0
  loc_6A51DF: LitStr "&Inmediato"
  loc_6A51E2: FStStrCopy var_90
  loc_6A51E5: FLdRfVar var_90
  loc_6A51E8: LitI4 7
  loc_6A51ED: PopTmpLdAdStr var_8C
  loc_6A51F0: LitI2_Byte &HB
  loc_6A51F2: PopTmpLdAd2 var_88
  loc_6A51F5: ImpAdLdRf MemVar_74C7D0
  loc_6A51F8: NewIfNullPr clsMsg
  loc_6A51FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5200: ILdRf var_1D4
  loc_6A5203: FLdPrThis
  loc_6A5204: VCallAd Control_ID_cmdInmetiata
  loc_6A5207: FStAdFunc var_1D8
  loc_6A520A: FLdPr var_1D8
  loc_6A520D: Me.Caption = from_stack_1
  loc_6A5212: FFreeStr var_90 = ""
  loc_6A5219: FFree1Ad var_1D8
  loc_6A521C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5233: FLdRfVar var_1D4
  loc_6A5236: LitVar_Missing var_1D0
  loc_6A5239: LitVar_Missing var_1B0
  loc_6A523C: LitVar_Missing var_190
  loc_6A523F: LitVar_Missing var_170
  loc_6A5242: LitVar_Missing var_150
  loc_6A5245: LitVar_Missing var_130
  loc_6A5248: LitVar_Missing var_110
  loc_6A524B: LitVar_Missing var_F0
  loc_6A524E: LitVar_Missing var_D0
  loc_6A5251: LitVar_Missing var_B0
  loc_6A5254: LitStr "&Cancelar"
  loc_6A5257: FStStrCopy var_90
  loc_6A525A: FLdRfVar var_90
  loc_6A525D: LitI4 8
  loc_6A5262: PopTmpLdAdStr var_8C
  loc_6A5265: LitI2_Byte &HB
  loc_6A5267: PopTmpLdAd2 var_88
  loc_6A526A: ImpAdLdRf MemVar_74C7D0
  loc_6A526D: NewIfNullPr clsMsg
  loc_6A5270: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5275: ILdRf var_1D4
  loc_6A5278: FLdPrThis
  loc_6A5279: VCallAd Control_ID_cmdCancelar
  loc_6A527C: FStAdFunc var_1D8
  loc_6A527F: FLdPr var_1D8
  loc_6A5282: Me.Caption = from_stack_1
  loc_6A5287: FFreeStr var_90 = ""
  loc_6A528E: FFree1Ad var_1D8
  loc_6A5291: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A52A8: FLdRfVar var_1D4
  loc_6A52AB: LitVar_Missing var_1D0
  loc_6A52AE: LitVar_Missing var_1B0
  loc_6A52B1: LitVar_Missing var_190
  loc_6A52B4: LitVar_Missing var_170
  loc_6A52B7: LitVar_Missing var_150
  loc_6A52BA: LitVar_Missing var_130
  loc_6A52BD: LitVar_Missing var_110
  loc_6A52C0: LitVar_Missing var_F0
  loc_6A52C3: LitVar_Missing var_D0
  loc_6A52C6: LitVar_Missing var_B0
  loc_6A52C9: LitStr "Debe ingresar un precio mayor o igual a"
  loc_6A52CC: FStStrCopy var_90
  loc_6A52CF: FLdRfVar var_90
  loc_6A52D2: LitI4 9
  loc_6A52D7: PopTmpLdAdStr var_8C
  loc_6A52DA: LitI2_Byte &HB
  loc_6A52DC: PopTmpLdAd2 var_88
  loc_6A52DF: ImpAdLdRf MemVar_74C7D0
  loc_6A52E2: NewIfNullPr clsMsg
  loc_6A52E5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A52EA: ILdRf var_1D4
  loc_6A52ED: FLdPr Me
  loc_6A52F0: MemStStrCopy
  loc_6A52F4: FFreeStr var_90 = ""
  loc_6A52FB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A5312: FLdRfVar var_1D4
  loc_6A5315: LitVar_Missing var_1D0
  loc_6A5318: LitVar_Missing var_1B0
  loc_6A531B: LitVar_Missing var_190
  loc_6A531E: LitVar_Missing var_170
  loc_6A5321: LitVar_Missing var_150
  loc_6A5324: LitVar_Missing var_130
  loc_6A5327: LitVar_Missing var_110
  loc_6A532A: LitVar_Missing var_F0
  loc_6A532D: LitVar_Missing var_D0
  loc_6A5330: LitVar_Missing var_B0
  loc_6A5333: LitStr ". Verifique por favor"
  loc_6A5336: FStStrCopy var_90
  loc_6A5339: FLdRfVar var_90
  loc_6A533C: LitI4 &HA
  loc_6A5341: PopTmpLdAdStr var_8C
  loc_6A5344: LitI2_Byte &HB
  loc_6A5346: PopTmpLdAd2 var_88
  loc_6A5349: ImpAdLdRf MemVar_74C7D0
  loc_6A534C: NewIfNullPr clsMsg
  loc_6A534F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A5354: ILdRf var_1D4
  loc_6A5357: FLdPr Me
  loc_6A535A: MemStStrCopy
  loc_6A535E: FFreeStr var_90 = ""
  loc_6A5365: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A537C: FLdRfVar var_1D4
  loc_6A537F: LitVar_Missing var_1D0
  loc_6A5382: LitVar_Missing var_1B0
  loc_6A5385: LitVar_Missing var_190
  loc_6A5388: LitVar_Missing var_170
  loc_6A538B: LitVar_Missing var_150
  loc_6A538E: LitVar_Missing var_130
  loc_6A5391: LitVar_Missing var_110
  loc_6A5394: LitVar_Missing var_F0
  loc_6A5397: LitVar_Missing var_D0
  loc_6A539A: LitVar_Missing var_B0
  loc_6A539D: LitStr "Pone todos los Precios en 0"
  loc_6A53A0: FStStrCopy var_90
  loc_6A53A3: FLdRfVar var_90
  loc_6A53A6: LitI4 &HB
  loc_6A53AB: PopTmpLdAdStr var_8C
  loc_6A53AE: LitI2_Byte &HB
  loc_6A53B0: PopTmpLdAd2 var_88
  loc_6A53B3: ImpAdLdRf MemVar_74C7D0
  loc_6A53B6: NewIfNullPr clsMsg
  loc_6A53B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A53BE: ILdRf var_1D4
  loc_6A53C1: FLdPrThis
  loc_6A53C2: VCallAd Control_ID_cmdBorrarNivel
  loc_6A53C5: FStAdFunc var_1D8
  loc_6A53C8: FLdPr var_1D8
  loc_6A53CB: Me.ToolTipText = from_stack_1
  loc_6A53D0: FFreeStr var_90 = ""
  loc_6A53D7: FFree1Ad var_1D8
  loc_6A53DA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A53F1: LitVarI2 var_B0, 1
  loc_6A53F6: LitI4 1
  loc_6A53FB: ImpAdLdI4 MemVar_74BEAC
  loc_6A53FE: ImpAdCallI2 Mid$(, , )
  loc_6A5403: FStStrNoPop var_90
  loc_6A5406: LitStr "0"
  loc_6A5409: EqStr
  loc_6A540B: CVarBoolI2 var_120
  loc_6A540F: LitVarI2 var_D0, 1
  loc_6A5414: LitI4 &HC
  loc_6A5419: ImpAdLdRf MemVar_74BEAC
  loc_6A541C: CVarRef
  loc_6A5421: FLdRfVar var_F0
  loc_6A5424: ImpAdCallFPR4  = Mid(, , )
  loc_6A5429: FLdRfVar var_F0
  loc_6A542C: LitVarI2 var_100, 1
  loc_6A5431: HardType
  loc_6A5432: EqVar var_110
  loc_6A5436: OrVar var_130
  loc_6A543A: ImpAdLdI2 MemVar_74BEA8
  loc_6A543D: CVarBoolI2 var_140
  loc_6A5441: OrVar var_150
  loc_6A5445: CBoolVarNull
  loc_6A5447: FFree1Str var_90
  loc_6A544A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_120 = ""
  loc_6A5457: BranchF loc_6A556E
  loc_6A545A: LitI2_Byte 0
  loc_6A545C: FLdPrThis
  loc_6A545D: VCallAd Control_ID_lblTituloImpuesto
  loc_6A5460: FStAdFunc var_1D8
  loc_6A5463: FLdPr var_1D8
  loc_6A5466: Me.Visible = from_stack_1b
  loc_6A546B: FFree1Ad var_1D8
  loc_6A546E: FLdRfVar var_1E0
  loc_6A5471: FLdPrThis
  loc_6A5472: VCallAd Control_ID_lblTituloImpuesto
  loc_6A5475: FStAdFunc var_1DC
  loc_6A5478: FLdPr var_1DC
  loc_6A547B:  = Me.Width
  loc_6A5480: FLdRfVar var_8C
  loc_6A5483: FLdPrThis
  loc_6A5484: VCallAd Control_ID_lblTituloPrecio
  loc_6A5487: FStAdFunc var_1D8
  loc_6A548A: FLdPr var_1D8
  loc_6A548D:  = Me.Width
  loc_6A5492: FLdFPR4 var_8C
  loc_6A5495: FLdFPR4 var_1E0
  loc_6A5498: AddR8
  loc_6A5499: LitI2_Byte &H64
  loc_6A549B: CR8I2
  loc_6A549C: AddR8
  loc_6A549D: PopFPR4
  loc_6A549E: FLdPrThis
  loc_6A549F: VCallAd Control_ID_lblTituloPrecio
  loc_6A54A2: FStAdFunc var_1E4
  loc_6A54A5: FLdPr var_1E4
  loc_6A54A8: Me.Width = from_stack_1s
  loc_6A54AD: FFreeAd var_1D8 = "": var_1DC = ""
  loc_6A54B6: LitI2_Byte 1
  loc_6A54B8: FLdRfVar var_86
  loc_6A54BB: LitI2_Byte &HA
  loc_6A54BD: ForI2 var_1E8
  loc_6A54C3: LitI2_Byte 0
  loc_6A54C5: FLdRfVar var_1DC
  loc_6A54C8: FLdI2 var_86
  loc_6A54CB: FLdPrThis
  loc_6A54CC: VCallAd Control_ID_txtImpuesto
  loc_6A54CF: FStAdFunc var_1D8
  loc_6A54D2: FLdPr var_1D8
  loc_6A54D5: Set from_stack_2 = Me(from_stack_1)
  loc_6A54DA: FLdPr var_1DC
  loc_6A54DD: Me.Visible = from_stack_1b
  loc_6A54E2: FFreeAd var_1D8 = ""
  loc_6A54E9: FLdRfVar var_8C
  loc_6A54EC: FLdRfVar var_1EC
  loc_6A54EF: FLdI2 var_86
  loc_6A54F2: FLdPrThis
  loc_6A54F3: VCallAd Control_ID_txtImpuesto
  loc_6A54F6: FStAdFunc var_1E4
  loc_6A54F9: FLdPr var_1E4
  loc_6A54FC: Set from_stack_2 = Me(from_stack_1)
  loc_6A5501: FLdPr var_1EC
  loc_6A5504:  = Me.Width
  loc_6A5509: FLdRfVar var_1DC
  loc_6A550C: FLdI2 var_86
  loc_6A550F: FLdPrThis
  loc_6A5510: VCallAd Control_ID_txtPrecio
  loc_6A5513: FStAdFunc var_1D8
  loc_6A5516: FLdPr var_1D8
  loc_6A5519: Set from_stack_2 = Me(from_stack_1)
  loc_6A551E: FLdPr var_1DC
  loc_6A5521: LateIdLdVar var_B0 DispID_5 -32767
  loc_6A5528: CR8Var
  loc_6A552A: FLdFPR4 var_8C
  loc_6A552D: AddR8
  loc_6A552E: LitI2_Byte &H64
  loc_6A5530: CR8I2
  loc_6A5531: AddR8
  loc_6A5532: CVarR4
  loc_6A5536: PopAdLdVar
  loc_6A5537: FLdRfVar var_1F4
  loc_6A553A: FLdI2 var_86
  loc_6A553D: FLdPrThis
  loc_6A553E: VCallAd Control_ID_txtPrecio
  loc_6A5541: FStAdFunc var_1F0
  loc_6A5544: FLdPr var_1F0
  loc_6A5547: Set from_stack_2 = Me(from_stack_1)
  loc_6A554C: FLdPr var_1F4
  loc_6A554F: LateIdSt
  loc_6A5554: FFreeAd var_1D8 = "": var_1DC = "": var_1E4 = "": var_1EC = "": var_1F0 = ""
  loc_6A5563: FFree1Var var_B0 = ""
  loc_6A5566: FLdRfVar var_86
  loc_6A5569: NextI2 var_1E8, loc_6A54C3
  loc_6A556E: LitI2_Byte 0
  loc_6A5570: FLdPr Me
  loc_6A5573: MemStI2 global_96
  loc_6A5576: LitI4 &H2B
  loc_6A557B: ImpAdLdRf MemVar_74A170
  loc_6A557E: Ary1LdI2
  loc_6A557F: NotI4
  loc_6A5580: CVarBoolI2 var_100
  loc_6A5584: LitVarI2 var_B0, 3
  loc_6A5589: LitI4 1
  loc_6A558E: ImpAdLdRf MemVar_74BF90
  loc_6A5591: CVarRef
  loc_6A5596: FLdRfVar var_D0
  loc_6A5599: ImpAdCallFPR4  = Mid(, , )
  loc_6A559E: FLdRfVar var_D0
  loc_6A55A1: LitVarStr var_E0, "\\."
  loc_6A55A6: HardType
  loc_6A55A7: EqVar var_F0
  loc_6A55AB: NotVar var_110
  loc_6A55AF: AndVar var_130
  loc_6A55B3: CBoolVarNull
  loc_6A55B5: FFreeVar var_B0 = "": var_D0 = ""
  loc_6A55BE: BranchF loc_6A55D8
  loc_6A55C1: LitI2_Byte 0
  loc_6A55C3: FLdPrThis
  loc_6A55C4: VCallAd Control_ID_cmdLockPrices
  loc_6A55C7: FStAdFunc var_1D8
  loc_6A55CA: FLdPr var_1D8
  loc_6A55CD: Me.Enabled = from_stack_1b
  loc_6A55D2: FFree1Ad var_1D8
  loc_6A55D5: Branch loc_6A55EC
  loc_6A55D8: LitI2_Byte &HFF
  loc_6A55DA: FLdPrThis
  loc_6A55DB: VCallAd Control_ID_cmdLockPrices
  loc_6A55DE: FStAdFunc var_1D8
  loc_6A55E1: FLdPr var_1D8
  loc_6A55E4: Me.Enabled = from_stack_1b
  loc_6A55E9: FFree1Ad var_1D8
  loc_6A55EC: LitI2_Byte &HFF
  loc_6A55EE: FLdPr Me
  loc_6A55F1: MemStI2 changePriceId
  loc_6A55F4: ExitProcHresult
End Sub

Private Sub Form_Activate() '683D4C
  'Data Table: 444EE4
  loc_683860: FLdPr Me
  loc_683863: MemLdI2 global_96
  loc_683866: BranchF loc_68386A
  loc_683869: ExitProcHresult
  loc_68386A: LitI2_Byte &HFF
  loc_68386C: FLdPr Me
  loc_68386F: MemStI2 global_96
  loc_683872: LitVarI2 var_C0, 1
  loc_683877: LitI4 4
  loc_68387C: ImpAdLdI4 MemVar_74BEAC
  loc_68387F: ImpAdCallI2 Mid$(, , )
  loc_683884: FStStrNoPop var_C4
  loc_683887: LitStr "1"
  loc_68388A: EqStr
  loc_68388C: FFree1Str var_C4
  loc_68388F: FFree1Var var_C0 = ""
  loc_683892: BranchF loc_6838A9
  loc_683895: LitI2_Byte 0
  loc_683897: FLdPrThis
  loc_683898: VCallAd Control_ID_cmdBorrarNivel
  loc_68389B: FStAdFunc var_C8
  loc_68389E: FLdPr var_C8
  loc_6838A1: Me.Visible = from_stack_1b
  loc_6838A6: FFree1Ad var_C8
  loc_6838A9: LitI2_Byte 0
  loc_6838AB: FLdPrThis
  loc_6838AC: VCallAd Control_ID_cmdBorrarNivel
  loc_6838AF: FStAdFunc var_C8
  loc_6838B2: FLdPr var_C8
  loc_6838B5: Me.Enabled = from_stack_1b
  loc_6838BA: FFree1Ad var_C8
  loc_6838BD: FLdRfVar var_CA
  loc_6838C0: ImpAdLdRf MemVar_74A220
  loc_6838C3: NewIfNullPr clsProducts
  loc_6838C6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6838CB: FLdI2 var_CA
  loc_6838CE: LitI2_Byte 1
  loc_6838D0: AddI2
  loc_6838D1: CVarI2 var_EC
  loc_6838D4: FLdRfVar var_94
  loc_6838D7: LitVarI2 var_DC, 10
  loc_6838DC: ForVar var_10C
  loc_6838E2: LitI2_Byte 0
  loc_6838E4: FLdRfVar var_110
  loc_6838E7: FLdRfVar var_94
  loc_6838EA: CI2Var
  loc_6838EB: FLdPrThis
  loc_6838EC: VCallAd Control_ID_lblProducto
  loc_6838EF: FStAdFunc var_C8
  loc_6838F2: FLdPr var_C8
  loc_6838F5: Set from_stack_2 = Me(from_stack_1)
  loc_6838FA: FLdPr var_110
  loc_6838FD: Me.Visible = from_stack_1b
  loc_683902: FFreeAd var_C8 = ""
  loc_683909: LitVar_FALSE
  loc_68390D: PopAdLdVar
  loc_68390E: FLdRfVar var_110
  loc_683911: FLdRfVar var_94
  loc_683914: CI2Var
  loc_683915: FLdPrThis
  loc_683916: VCallAd Control_ID_txtPrecio
  loc_683919: FStAdFunc var_C8
  loc_68391C: FLdPr var_C8
  loc_68391F: Set from_stack_2 = Me(from_stack_1)
  loc_683924: FLdPr var_110
  loc_683927: LateIdSt
  loc_68392C: FFreeAd var_C8 = ""
  loc_683933: LitI2_Byte 0
  loc_683935: FLdRfVar var_110
  loc_683938: FLdRfVar var_94
  loc_68393B: CI2Var
  loc_68393C: FLdPrThis
  loc_68393D: VCallAd Control_ID_txtImpuesto
  loc_683940: FStAdFunc var_C8
  loc_683943: FLdPr var_C8
  loc_683946: Set from_stack_2 = Me(from_stack_1)
  loc_68394B: FLdPr var_110
  loc_68394E: Me.Visible = from_stack_1b
  loc_683953: FFreeAd var_C8 = ""
  loc_68395A: FLdRfVar var_94
  loc_68395D: NextStepVar var_10C
  loc_683963: ImpAdLdI2 MemVar_74BEA8
  loc_683966: BranchF loc_683A62
  loc_683969: LitI2_Byte 0
  loc_68396B: FLdPrThis
  loc_68396C: VCallAd Control_ID_cmdBorrarNivel
  loc_68396F: FStAdFunc var_C8
  loc_683972: FLdPr var_C8
  loc_683975: Me.Enabled = from_stack_1b
  loc_68397A: FFree1Ad var_C8
  loc_68397D: LitI2_Byte 0
  loc_68397F: FLdPrThis
  loc_683980: VCallAd Control_ID_lblNivel
  loc_683983: FStAdFunc var_C8
  loc_683986: FLdPr var_C8
  loc_683989: Me.Visible = from_stack_1b
  loc_68398E: FFree1Ad var_C8
  loc_683991: LitI2_Byte 0
  loc_683993: FLdPrThis
  loc_683994: VCallAd Control_ID_txtNivel
  loc_683997: FStAdFunc var_C8
  loc_68399A: FLdPr var_C8
  loc_68399D: Me.Visible = from_stack_1b
  loc_6839A2: FFree1Ad var_C8
  loc_6839A5: LitVar_FALSE
  loc_6839A9: PopAdLdVar
  loc_6839AA: FLdPrThis
  loc_6839AB: VCallAd Control_ID_spnNivel
  loc_6839AE: FStAdFunc var_C8
  loc_6839B1: FLdPr var_C8
  loc_6839B4: LateIdSt
  loc_6839B9: FFree1Ad var_C8
  loc_6839BC: LitI2_Byte 0
  loc_6839BE: FLdPrThis
  loc_6839BF: VCallAd Control_ID_cmdInmetiata
  loc_6839C2: FStAdFunc var_C8
  loc_6839C5: FLdPr var_C8
  loc_6839C8: Me.Visible = from_stack_1b
  loc_6839CD: FFree1Ad var_C8
  loc_6839D0: LitI2_Byte 1
  loc_6839D2: FStI2 var_9E
  loc_6839D5: FLdPr Me
  loc_6839D8: MemLdStr strPrecio
  loc_6839DB: FStStrCopy var_9C
  loc_6839DE: FLdPr Me
  loc_6839E1: MemLdStr strLevel
  loc_6839E4: FLdPrThis
  loc_6839E5: VCallAd Control_ID_txtNivel
  loc_6839E8: FStAdFunc var_C8
  loc_6839EB: FLdPr var_C8
  loc_6839EE: Me.Text = from_stack_1
  loc_6839F3: FFree1Ad var_C8
  loc_6839F6: LitVarI2 var_EC, 1
  loc_6839FB: FLdRfVar var_94
  loc_6839FE: LitVarI2 var_DC, 10
  loc_683A03: ForVar var_130
  loc_683A09: LitVarI2 var_C0, 6
  loc_683A0E: FLdI2 var_9E
  loc_683A11: CI4UI1
  loc_683A12: FLdRfVar var_9C
  loc_683A15: CVarRef
  loc_683A1A: FLdRfVar var_140
  loc_683A1D: ImpAdCallFPR4  = Mid(, , )
  loc_683A22: FLdRfVar var_140
  loc_683A25: FnCCurVar
  loc_683A27: CR8Cy
  loc_683A28: ImpAdLdFPR4 MemVar_74C2DC
  loc_683A2B: DivR8
  loc_683A2C: CCyR4
  loc_683A2D: FLdPr Me
  loc_683A30: MemLdStr strLevel
  loc_683A33: CI2Str
  loc_683A35: CI4UI1
  loc_683A36: FLdRfVar var_94
  loc_683A39: CI4Var
  loc_683A3B: ImpAdLdRf MemVar_74C074
  loc_683A3E: AryLdPr
  loc_683A41: MemStR8 global_0
  loc_683A44: FFreeVar var_C0 = "": var_140 = ""
  loc_683A4D: FLdI2 var_9E
  loc_683A50: LitI2_Byte 6
  loc_683A52: AddI2
  loc_683A53: FStI2 var_9E
  loc_683A56: FLdRfVar var_94
  loc_683A59: NextStepVar var_130
  loc_683A5F: Branch loc_683B9B
  loc_683A62: FLdRfVar var_CA
  loc_683A65: FLdRfVar var_9C
  loc_683A68: FLdRfVar var_C8
  loc_683A6B: ImpAdLdRf MemVar_74C760
  loc_683A6E: NewIfNullPr Formx
  loc_683A71: from_stack_1v = Formx.global_4589716Get()
  loc_683A76: FLdPr var_C8
  loc_683A79:  = Formx.FontUnderline
  loc_683A7E: FLdI2 var_CA
  loc_683A81: NotI4
  loc_683A82: FFree1Ad var_C8
  loc_683A85: BranchF loc_683AB4
  loc_683A88: FLdRfVar var_C0
  loc_683A8B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_683A90: FLdRfVar var_C0
  loc_683A93: CBoolVarNull
  loc_683A95: FFree1Var var_C0 = ""
  loc_683A98: BranchF loc_683AB1
  loc_683A9B: ILdRf Me
  loc_683A9E: FStAdNoPop
  loc_683AA2: ImpAdLdRf MemVar_7520D4
  loc_683AA5: NewIfNullPr Global
  loc_683AA8: Global.Unload from_stack_1
  loc_683AAD: FFree1Ad var_C8
  loc_683AB0: ExitProcHresult
  loc_683AB1: Branch loc_683A62
  loc_683AB4: LitI2_Byte 1
  loc_683AB6: FStI2 var_9E
  loc_683AB9: LitI2_Byte 1
  loc_683ABB: CUI1I2
  loc_683ABD: FLdRfVar var_96
  loc_683AC0: LitI2_Byte 5
  loc_683AC2: CUI1I2
  loc_683AC4: ForUI1 var_144
  loc_683ACA: LitVarI2 var_EC, 1
  loc_683ACF: FLdRfVar var_94
  loc_683AD2: LitVarI2 var_DC, 10
  loc_683AD7: ForVar var_164
  loc_683ADD: LitVarI2 var_C0, 6
  loc_683AE2: FLdI2 var_9E
  loc_683AE5: CI4UI1
  loc_683AE6: FLdRfVar var_9C
  loc_683AE9: CVarRef
  loc_683AEE: FLdRfVar var_140
  loc_683AF1: ImpAdCallFPR4  = Mid(, , )
  loc_683AF6: FLdRfVar var_140
  loc_683AF9: CStrVarVal var_C4
  loc_683AFD: ImpAdCallFPR4 push Val()
  loc_683B02: ImpAdLdFPR4 MemVar_74C2DC
  loc_683B05: DivR8
  loc_683B06: CCyR4
  loc_683B07: FLdUI1
  loc_683B0B: CI4UI1
  loc_683B0C: FLdRfVar var_94
  loc_683B0F: CI4Var
  loc_683B11: ImpAdLdRf MemVar_74C074
  loc_683B14: AryLdPr
  loc_683B17: MemStR8 global_0
  loc_683B1A: FFree1Str var_C4
  loc_683B1D: FFreeVar var_C0 = ""
  loc_683B24: FLdI2 var_9E
  loc_683B27: LitI2_Byte 6
  loc_683B29: AddI2
  loc_683B2A: FStI2 var_9E
  loc_683B2D: FLdRfVar var_94
  loc_683B30: NextStepVar var_164
  loc_683B36: FLdRfVar var_96
  loc_683B39: NextUI1
  loc_683B3F: LitVarI2 var_EC, 1
  loc_683B44: FLdRfVar var_94
  loc_683B47: LitVarI2 var_DC, 10
  loc_683B4C: ForVar var_184
  loc_683B52: LitVarI2 var_C0, 8
  loc_683B57: FLdI2 var_9E
  loc_683B5A: CI4UI1
  loc_683B5B: FLdRfVar var_9C
  loc_683B5E: CVarRef
  loc_683B63: FLdRfVar var_140
  loc_683B66: ImpAdCallFPR4  = Mid(, , )
  loc_683B6B: FLdRfVar var_140
  loc_683B6E: FnCCurVar
  loc_683B70: CR8Cy
  loc_683B71: LitI2 10000
  loc_683B74: CR8I2
  loc_683B75: DivR8
  loc_683B76: CCyR4
  loc_683B77: FLdRfVar var_94
  loc_683B7A: CI4Var
  loc_683B7C: ImpAdLdRf MemVar_74C094
  loc_683B7F: Ary1StCy
  loc_683B80: FFreeVar var_C0 = "": var_140 = ""
  loc_683B89: FLdI2 var_9E
  loc_683B8C: LitI2_Byte 8
  loc_683B8E: AddI2
  loc_683B8F: FStI2 var_9E
  loc_683B92: FLdRfVar var_94
  loc_683B95: NextStepVar var_184
  loc_683B9B: LitVarI2 var_EC, 1
  loc_683BA0: FLdRfVar var_94
  loc_683BA3: FLdRfVar var_CA
  loc_683BA6: ImpAdLdRf MemVar_74A220
  loc_683BA9: NewIfNullPr clsProducts
  loc_683BAC: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_683BB1: FLdI2 var_CA
  loc_683BB4: CVarI2 var_DC
  loc_683BB7: ForVar var_1A4
  loc_683BBD: FLdRfVar var_C4
  loc_683BC0: FLdRfVar var_94
  loc_683BC3: CI2Var
  loc_683BC4: ImpAdLdRf MemVar_74A220
  loc_683BC7: NewIfNullPr clsProducts
  loc_683BCF: ILdRf var_C4
  loc_683BD2: FLdRfVar var_110
  loc_683BD5: FLdRfVar var_94
  loc_683BD8: CI2Var
  loc_683BD9: FLdPrThis
  loc_683BDA: VCallAd Control_ID_lblProducto
  loc_683BDD: FStAdFunc var_C8
  loc_683BE0: FLdPr var_C8
  loc_683BE3: Set from_stack_2 = Me(from_stack_1)
  loc_683BE8: FLdPr var_110
  loc_683BEB: Me.Caption = from_stack_1
  loc_683BF0: FFree1Str var_C4
  loc_683BF3: FFreeAd var_C8 = ""
  loc_683BFA: FLdRfVar var_94
  loc_683BFD: NextStepVar var_1A4
  loc_683C03: FLdRfVar var_1A8
  loc_683C06: from_stack_1v = Proc_104_56_5D3424()
  loc_683C0B: FLdFPR4 var_1A8
  loc_683C0E: FLdPr Me
  loc_683C11: MemStFPR4 global_100
  loc_683C14: FLdRfVar var_C4
  loc_683C17: FLdPrThis
  loc_683C18: VCallAd Control_ID_txtNivel
  loc_683C1B: FStAdFunc var_C8
  loc_683C1E: FLdPr var_C8
  loc_683C21:  = Me.Text
  loc_683C26: ILdRf var_C4
  loc_683C29: CI2Str
  loc_683C2B: from_stack_1v = Proc_104_51_62E1B4()
  loc_683C30: FFree1Str var_C4
  loc_683C33: FFree1Ad var_C8
  loc_683C36: LitI2_Byte 0
  loc_683C38: FLdPrThis
  loc_683C39: VCallAd Control_ID_cmdTemporizar
  loc_683C3C: FStAdFunc var_C8
  loc_683C3F: FLdPr var_C8
  loc_683C42: Me.Enabled = from_stack_1b
  loc_683C47: FFree1Ad var_C8
  loc_683C4A: LitI2_Byte 0
  loc_683C4C: FLdPrThis
  loc_683C4D: VCallAd Control_ID_cmdInmetiata
  loc_683C50: FStAdFunc var_C8
  loc_683C53: FLdPr var_C8
  loc_683C56: Me.Enabled = from_stack_1b
  loc_683C5B: FFree1Ad var_C8
  loc_683C5E: LitI2_Byte 1
  loc_683C60: CUI1I2
  loc_683C62: FLdPr Me
  loc_683C65: MemStUI1
  loc_683C69: LitVarI2 var_C0, 1
  loc_683C6E: LitI4 &HC
  loc_683C73: ImpAdLdRf MemVar_74BEAC
  loc_683C76: CVarRef
  loc_683C7B: FLdRfVar var_140
  loc_683C7E: ImpAdCallFPR4  = Mid(, , )
  loc_683C83: FLdRfVar var_140
  loc_683C86: LitVarI2 var_EC, 1
  loc_683C8B: HardType
  loc_683C8C: EqVar var_1B8
  loc_683C90: ImpAdLdI2 MemVar_74C6B8
  loc_683C93: LitI2_Byte 0
  loc_683C95: EqI2
  loc_683C96: CVarBoolI2 var_1C8
  loc_683C9A: AndVar var_1D8
  loc_683C9E: CBoolVarNull
  loc_683CA0: FFreeVar var_C0 = "": var_140 = ""
  loc_683CA9: BranchF loc_683CEE
  loc_683CAC: LitI2_Byte 0
  loc_683CAE: FLdPrThis
  loc_683CAF: VCallAd Control_ID_txtNivel
  loc_683CB2: FStAdFunc var_C8
  loc_683CB5: FLdPr var_C8
  loc_683CB8: Me.Visible = from_stack_1b
  loc_683CBD: FFree1Ad var_C8
  loc_683CC0: LitVar_FALSE
  loc_683CC4: PopAdLdVar
  loc_683CC5: FLdPrThis
  loc_683CC6: VCallAd Control_ID_spnNivel
  loc_683CC9: FStAdFunc var_C8
  loc_683CCC: FLdPr var_C8
  loc_683CCF: LateIdSt
  loc_683CD4: FFree1Ad var_C8
  loc_683CD7: LitI2_Byte 0
  loc_683CD9: FLdPrThis
  loc_683CDA: VCallAd Control_ID_lblNivel
  loc_683CDD: FStAdFunc var_C8
  loc_683CE0: FLdPr var_C8
  loc_683CE3: Me.Visible = from_stack_1b
  loc_683CE8: FFree1Ad var_C8
  loc_683CEB: Branch loc_683D45
  loc_683CEE: LitVarI2 var_C0, 1
  loc_683CF3: LitI4 &HC
  loc_683CF8: ImpAdLdRf MemVar_74BEAC
  loc_683CFB: CVarRef
  loc_683D00: FLdRfVar var_140
  loc_683D03: ImpAdCallFPR4  = Mid(, , )
  loc_683D08: FLdRfVar var_140
  loc_683D0B: LitVarI2 var_EC, 1
  loc_683D10: HardType
  loc_683D11: EqVar var_1B8
  loc_683D15: ImpAdLdI2 MemVar_74C6B8
  loc_683D18: LitI2_Byte &HFF
  loc_683D1A: EqI2
  loc_683D1B: CVarBoolI2 var_1C8
  loc_683D1F: AndVar var_1D8
  loc_683D23: CBoolVarNull
  loc_683D25: FFreeVar var_C0 = "": var_140 = ""
  loc_683D2E: BranchF loc_683D45
  loc_683D31: LitI2_Byte 0
  loc_683D33: FLdPrThis
  loc_683D34: VCallAd Control_ID_cmdBorrarNivel
  loc_683D37: FStAdFunc var_C8
  loc_683D3A: FLdPr var_C8
  loc_683D3D: Me.Visible = from_stack_1b
  loc_683D42: FFree1Ad var_C8
  loc_683D45: ImpAdCallFPR4 Proc_101_14_6180C4()
  loc_683D4A: ExitProcHresult
End Sub

Public Function strPrecioGet() '445B74
  strPrecioGet = strPrecio
End Function

Public Sub strPrecioPut(Value) '445B83
  strPrecio = Value
End Sub

Public Function strFechaGet() '445B92
  strFechaGet = strFecha
End Function

Public Sub strFechaPut(Value) '445BA1
  strFecha = Value
End Sub

Public Function strLevelGet() '445BB0
  strLevelGet = strLevel
End Function

Public Sub strLevelPut(Value) '445BBF
  strLevel = Value
End Sub

Public Function strIngresarPrecioGet() '445BCE
  strIngresarPrecioGet = strIngresarPrecio
End Function

Public Sub strIngresarPrecioPut(Value) '445BDD
  strIngresarPrecio = Value
End Sub

Public Function strCheckPleaseGet() '445BEC
  strCheckPleaseGet = strCheckPlease
End Function

Public Sub strCheckPleasePut(Value) '445BFB
  strCheckPlease = Value
End Sub

Public Function strPriceErrorGet() '445C0A
  strPriceErrorGet = strPriceError
End Function

Public Sub strPriceErrorPut(Value) '445C19
  strPriceError = Value
End Sub

Public Function strPriceAdviceGet() '445C28
  strPriceAdviceGet = strPriceAdvice
End Function

Public Sub strPriceAdvicePut(Value) '445C37
  strPriceAdvice = Value
End Sub

Public Function strPriceMsg1Get() '445C46
  strPriceMsg1Get = strPriceMsg1
End Function

Public Sub strPriceMsg1Put(Value) '445C55
  strPriceMsg1 = Value
End Sub

Public Function strPriceMsg2Get() '445C78
  strPriceMsg2Get = strPriceMsg2
End Function

Public Sub strPriceMsg2Put(Value) '445C87
  strPriceMsg2 = Value
End Sub

Public Function strPriceMsg3Get() '445C96
  strPriceMsg3Get = strPriceMsg3
End Function

Public Sub strPriceMsg3Put(Value) '445CA5
  strPriceMsg3 = Value
End Sub

Public Function changePriceIdGet() '445CB4
  changePriceIdGet = changePriceId
End Function

Public Sub changePriceIdPut(Value) '445CC3
  changePriceId = Value
End Sub

Private Function Proc_104_38_638D2C() '638D2C
  'Data Table: 444EE4
  loc_638B34: FLdRfVar var_90
  loc_638B37: FLdPrThis
  loc_638B38: VCallAd Control_ID_txtNivel
  loc_638B3B: FStAdFunc var_8C
  loc_638B3E: FLdPr var_8C
  loc_638B41:  = Me.Text
  loc_638B46: ILdRf var_90
  loc_638B49: CI2Str
  loc_638B4B: LitI2_Byte 5
  loc_638B4D: LtI2
  loc_638B4E: FFree1Str var_90
  loc_638B51: FFree1Ad var_8C
  loc_638B54: BranchF loc_638BC1
  loc_638B57: FLdRfVar var_90
  loc_638B5A: FLdPrThis
  loc_638B5B: VCallAd Control_ID_txtNivel
  loc_638B5E: FStAdFunc var_8C
  loc_638B61: FLdPr var_8C
  loc_638B64:  = Me.Text
  loc_638B69: ILdRf var_90
  loc_638B6C: CR8Str
  loc_638B6E: LitI2_Byte 1
  loc_638B70: CR8I2
  loc_638B71: AddR8
  loc_638B72: CI2R8
  loc_638B73: CI4UI1
  loc_638B74: LitI4 1
  loc_638B79: ImpAdLdRf MemVar_74C074
  loc_638B7C: AryLdPr
  loc_638B7F: MemLdR8 global_0
  loc_638B82: LitI2_Byte 0
  loc_638B84: CR8I2
  loc_638B85: GtCyR8
  loc_638B86: FFree1Str var_90
  loc_638B89: FFree1Ad var_8C
  loc_638B8C: BranchF loc_638BC1
  loc_638B8F: LitVar_Missing var_110
  loc_638B92: LitVar_Missing var_F0
  loc_638B95: LitVar_Missing var_D0
  loc_638B98: LitI4 &H10
  loc_638B9D: LitVarStr var_A0, "No se puede eliminar este nivel ya que existe un nivel superior."
  loc_638BA2: FStVarCopyObj var_B0
  loc_638BA5: FLdRfVar var_B0
  loc_638BA8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_638BAD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_638BB8: LitI2_Byte &HFF
  loc_638BBA: FLdPr Me
  loc_638BBD: MemStI2 global_106
  loc_638BC0: ExitProcHresult
  loc_638BC1: LitStr vbNullString
  loc_638BC4: FStStrCopy var_118
  loc_638BC7: LitI2_Byte 1
  loc_638BC9: CUI1I2
  loc_638BCB: FLdRfVar var_112
  loc_638BCE: LitI2_Byte &H20
  loc_638BD0: CUI1I2
  loc_638BD2: ForUI1 var_11C
  loc_638BD8: FLdUI1
  loc_638BDC: CI4UI1
  loc_638BDD: ImpAdLdRf MemVar_74BFC8
  loc_638BE0: Ary1LdI2
  loc_638BE1: FLdRfVar var_90
  loc_638BE4: FLdPrThis
  loc_638BE5: VCallAd Control_ID_txtNivel
  loc_638BE8: FStAdFunc var_8C
  loc_638BEB: FLdPr var_8C
  loc_638BEE:  = Me.Text
  loc_638BF3: ILdRf var_90
  loc_638BF6: CI2Str
  loc_638BF8: EqI2
  loc_638BF9: FFree1Str var_90
  loc_638BFC: FFree1Ad var_8C
  loc_638BFF: BranchF loc_638C20
  loc_638C02: ILdRf var_118
  loc_638C05: LitStr " "
  loc_638C08: ConcatStr
  loc_638C09: FStStrNoPop var_90
  loc_638C0C: FLdUI1
  loc_638C10: CStrI2
  loc_638C12: FStStrNoPop var_120
  loc_638C15: ConcatStr
  loc_638C16: FStStr var_118
  loc_638C19: FFreeStr var_90 = ""
  loc_638C20: FLdRfVar var_112
  loc_638C23: NextUI1
  loc_638C29: ILdRf var_118
  loc_638C2C: LitStr vbNullString
  loc_638C2F: NeStr
  loc_638C31: BranchF loc_638CA3
  loc_638C34: FLdRfVar var_90
  loc_638C37: FLdPrThis
  loc_638C38: VCallAd Control_ID_txtNivel
  loc_638C3B: FStAdFunc var_8C
  loc_638C3E: FLdPr var_8C
  loc_638C41:  = Me.Text
  loc_638C46: LitVar_Missing var_110
  loc_638C49: LitVar_Missing var_F0
  loc_638C4C: LitVar_Missing var_D0
  loc_638C4F: LitI4 &H10
  loc_638C54: LitStr "El nivel de precio "
  loc_638C57: ILdRf var_90
  loc_638C5A: CI2Str
  loc_638C5C: CStrUI1
  loc_638C5E: FStStrNoPop var_120
  loc_638C61: ConcatStr
  loc_638C62: FStStrNoPop var_124
  loc_638C65: LitStr " es utilizado por el surtidor"
  loc_638C68: ConcatStr
  loc_638C69: FStStrNoPop var_128
  loc_638C6C: ILdRf var_118
  loc_638C6F: ConcatStr
  loc_638C70: FStStrNoPop var_12C
  loc_638C73: LitStr "."
  loc_638C76: ConcatStr
  loc_638C77: CVarStr var_B0
  loc_638C7A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_638C7F: FFreeStr var_90 = "": var_120 = "": var_124 = "": var_128 = ""
  loc_638C8C: FFree1Ad var_8C
  loc_638C8F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_638C9A: LitI2_Byte &HFF
  loc_638C9C: FLdPr Me
  loc_638C9F: MemStI2 global_106
  loc_638CA2: ExitProcHresult
  loc_638CA3: LitI2_Byte 1
  loc_638CA5: FLdRfVar var_86
  loc_638CA8: FLdRfVar var_12E
  loc_638CAB: ImpAdLdRf MemVar_74A220
  loc_638CAE: NewIfNullPr clsProducts
  loc_638CB1: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_638CB6: FLdI2 var_12E
  loc_638CB9: ForI2 var_132
  loc_638CBF: FLdRfVar var_138
  loc_638CC2: FLdI2 var_86
  loc_638CC5: FLdPrThis
  loc_638CC6: VCallAd Control_ID_lblProducto
  loc_638CC9: FStAdFunc var_8C
  loc_638CCC: FLdPr var_8C
  loc_638CCF: Set from_stack_2 = Me(from_stack_1)
  loc_638CD4: FLdZeroAd var_138
  loc_638CD7: CVarAd
  loc_638CDB: ImpAdCallI2 Proc_101_16_6179AC()
  loc_638CE0: NotI4
  loc_638CE1: ImpAdLdPr unk_444EF5
  loc_638CE4: MemLdI2 global_4
  loc_638CE7: LitI2_Byte 8
  loc_638CE9: GtI2
  loc_638CEA: OrI4
  loc_638CEB: FFree1Ad var_8C
  loc_638CEE: FFree1Var var_B0 = ""
  loc_638CF1: BranchF loc_638D22
  loc_638CF4: LitI2_Byte 0
  loc_638CF6: CCyI2
  loc_638CF7: FLdRfVar var_90
  loc_638CFA: FLdPrThis
  loc_638CFB: VCallAd Control_ID_txtNivel
  loc_638CFE: FStAdFunc var_8C
  loc_638D01: FLdPr var_8C
  loc_638D04:  = Me.Text
  loc_638D09: ILdRf var_90
  loc_638D0C: CI2Str
  loc_638D0E: CI4UI1
  loc_638D0F: FLdI2 var_86
  loc_638D12: CI4UI1
  loc_638D13: ImpAdLdRf MemVar_74C074
  loc_638D16: AryLdPr
  loc_638D19: MemStR8 global_0
  loc_638D1C: FFree1Str var_90
  loc_638D1F: FFree1Ad var_8C
  loc_638D22: FLdRfVar var_86
  loc_638D25: NextI2 var_132, loc_638CBF
  loc_638D2A: ExitProcHresult
End Function

Private Function Proc_104_39_60FB4C() '60FB4C
  'Data Table: 444EE4
  loc_60FA44: LitI2_Byte 1
  loc_60FA46: FLdRfVar var_86
  loc_60FA49: FLdRfVar var_88
  loc_60FA4C: ImpAdLdRf MemVar_74A220
  loc_60FA4F: NewIfNullPr clsProducts
  loc_60FA52: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60FA57: FLdI2 var_88
  loc_60FA5A: ForI2 var_8C
  loc_60FA60: FLdRfVar var_86
  loc_60FA63: CVarRef
  loc_60FA68: ImpAdCallI2 Proc_101_16_6179AC()
  loc_60FA6D: FLdRfVar var_A4
  loc_60FA70: FLdI2 var_86
  loc_60FA73: FLdPrThis
  loc_60FA74: VCallAd Control_ID_txtPrecio
  loc_60FA77: FStAdFunc var_A0
  loc_60FA7A: FLdPr var_A0
  loc_60FA7D: Set from_stack_2 = Me(from_stack_1)
  loc_60FA82: FLdPr var_A4
  loc_60FA85: LateIdLdVar var_B4 DispID_13 -32767
  loc_60FA8C: CBoolVar
  loc_60FA8E: AndI4
  loc_60FA8F: FFreeAd var_A0 = ""
  loc_60FA96: FFree1Var var_B4 = ""
  loc_60FA99: BranchF loc_60FB41
  loc_60FA9C: LitI2_Byte 0
  loc_60FA9E: FLdRfVar var_A4
  loc_60FAA1: FLdI2 var_86
  loc_60FAA4: FLdPrThis
  loc_60FAA5: VCallAd Control_ID_txtImpuesto
  loc_60FAA8: FStAdFunc var_A0
  loc_60FAAB: FLdPr var_A0
  loc_60FAAE: Set from_stack_2 = Me(from_stack_1)
  loc_60FAB3: FLdPr var_A4
  loc_60FAB6: Me.Enabled = from_stack_1b
  loc_60FABB: FFreeAd var_A0 = ""
  loc_60FAC2: LitVar_FALSE
  loc_60FAC6: PopAdLdVar
  loc_60FAC7: FLdRfVar var_A4
  loc_60FACA: FLdI2 var_86
  loc_60FACD: FLdPrThis
  loc_60FACE: VCallAd Control_ID_txtPrecio
  loc_60FAD1: FStAdFunc var_A0
  loc_60FAD4: FLdPr var_A0
  loc_60FAD7: Set from_stack_2 = Me(from_stack_1)
  loc_60FADC: FLdPr var_A4
  loc_60FADF: LateIdSt
  loc_60FAE4: FFreeAd var_A0 = ""
  loc_60FAEB: LitVarI4
  loc_60FAF3: PopAdLdVar
  loc_60FAF4: FLdRfVar var_A4
  loc_60FAF7: FLdI2 var_86
  loc_60FAFA: FLdPrThis
  loc_60FAFB: VCallAd Control_ID_txtPrecio
  loc_60FAFE: FStAdFunc var_A0
  loc_60FB01: FLdPr var_A0
  loc_60FB04: Set from_stack_2 = Me(from_stack_1)
  loc_60FB09: FLdPr var_A4
  loc_60FB0C: LateIdSt
  loc_60FB11: FFreeAd var_A0 = ""
  loc_60FB18: LitI4 -2147483648
  loc_60FB1D: FLdRfVar var_A4
  loc_60FB20: FLdI2 var_86
  loc_60FB23: FLdPrThis
  loc_60FB24: VCallAd Control_ID_txtImpuesto
  loc_60FB27: FStAdFunc var_A0
  loc_60FB2A: FLdPr var_A0
  loc_60FB2D: Set from_stack_2 = Me(from_stack_1)
  loc_60FB32: FLdPr var_A4
  loc_60FB35: Me.BackColor = from_stack_1
  loc_60FB3A: FFreeAd var_A0 = ""
  loc_60FB41: FLdRfVar var_86
  loc_60FB44: NextI2 var_8C, loc_60FA60
  loc_60FB49: ExitProcHresult
  loc_60FB4A: FLdPrThis
End Function

Private Function Proc_104_40_60F4F8() '60F4F8
  'Data Table: 444EE4
  loc_60F3F0: LitI2_Byte 1
  loc_60F3F2: FLdRfVar var_86
  loc_60F3F5: FLdRfVar var_88
  loc_60F3F8: ImpAdLdRf MemVar_74A220
  loc_60F3FB: NewIfNullPr clsProducts
  loc_60F3FE: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60F403: FLdI2 var_88
  loc_60F406: ForI2 var_8C
  loc_60F40C: FLdRfVar var_86
  loc_60F40F: CVarRef
  loc_60F414: ImpAdCallI2 Proc_101_16_6179AC()
  loc_60F419: NotI4
  loc_60F41A: FLdRfVar var_A4
  loc_60F41D: FLdI2 var_86
  loc_60F420: FLdPrThis
  loc_60F421: VCallAd Control_ID_txtPrecio
  loc_60F424: FStAdFunc var_A0
  loc_60F427: FLdPr var_A0
  loc_60F42A: Set from_stack_2 = Me(from_stack_1)
  loc_60F42F: FLdPr var_A4
  loc_60F432: LateIdLdVar var_B4 DispID_13 -32767
  loc_60F439: CBoolVar
  loc_60F43B: AndI4
  loc_60F43C: FFreeAd var_A0 = ""
  loc_60F443: FFree1Var var_B4 = ""
  loc_60F446: BranchF loc_60F4EE
  loc_60F449: LitI2_Byte 0
  loc_60F44B: FLdRfVar var_A4
  loc_60F44E: FLdI2 var_86
  loc_60F451: FLdPrThis
  loc_60F452: VCallAd Control_ID_txtImpuesto
  loc_60F455: FStAdFunc var_A0
  loc_60F458: FLdPr var_A0
  loc_60F45B: Set from_stack_2 = Me(from_stack_1)
  loc_60F460: FLdPr var_A4
  loc_60F463: Me.Enabled = from_stack_1b
  loc_60F468: FFreeAd var_A0 = ""
  loc_60F46F: LitVar_FALSE
  loc_60F473: PopAdLdVar
  loc_60F474: FLdRfVar var_A4
  loc_60F477: FLdI2 var_86
  loc_60F47A: FLdPrThis
  loc_60F47B: VCallAd Control_ID_txtPrecio
  loc_60F47E: FStAdFunc var_A0
  loc_60F481: FLdPr var_A0
  loc_60F484: Set from_stack_2 = Me(from_stack_1)
  loc_60F489: FLdPr var_A4
  loc_60F48C: LateIdSt
  loc_60F491: FFreeAd var_A0 = ""
  loc_60F498: LitVarI4
  loc_60F4A0: PopAdLdVar
  loc_60F4A1: FLdRfVar var_A4
  loc_60F4A4: FLdI2 var_86
  loc_60F4A7: FLdPrThis
  loc_60F4A8: VCallAd Control_ID_txtPrecio
  loc_60F4AB: FStAdFunc var_A0
  loc_60F4AE: FLdPr var_A0
  loc_60F4B1: Set from_stack_2 = Me(from_stack_1)
  loc_60F4B6: FLdPr var_A4
  loc_60F4B9: LateIdSt
  loc_60F4BE: FFreeAd var_A0 = ""
  loc_60F4C5: LitI4 -2147483648
  loc_60F4CA: FLdRfVar var_A4
  loc_60F4CD: FLdI2 var_86
  loc_60F4D0: FLdPrThis
  loc_60F4D1: VCallAd Control_ID_txtImpuesto
  loc_60F4D4: FStAdFunc var_A0
  loc_60F4D7: FLdPr var_A0
  loc_60F4DA: Set from_stack_2 = Me(from_stack_1)
  loc_60F4DF: FLdPr var_A4
  loc_60F4E2: Me.BackColor = from_stack_1
  loc_60F4E7: FFreeAd var_A0 = ""
  loc_60F4EE: FLdRfVar var_86
  loc_60F4F1: NextI2 var_8C, loc_60F40C
  loc_60F4F6: ExitProcHresult
End Function

Private Function Proc_104_41_607938() '607938
  'Data Table: 444EE4
  loc_607858: FLdPr Me
  loc_60785B: MemLdI2 changePriceId
  loc_60785E: LitI2_Byte 0
  loc_607860: GeI2
  loc_607861: BranchF loc_607937
  loc_607864: LitI2_Byte 0
  loc_607866: ImpAdLdRf MemVar_74C760
  loc_607869: NewIfNullPr Formx
  loc_60786C: VCallAd Control_ID_Text1
  loc_60786F: FStAdFunc var_90
  loc_607872: FLdPr var_90
  loc_607875: Formx.TextBox.Visible = from_stack_1b
  loc_60787A: FFree1Ad var_90
  loc_60787D: LitVarI2 var_C0, 1
  loc_607882: LitI4 &HC
  loc_607887: ImpAdLdRf MemVar_74BEAC
  loc_60788A: CVarRef
  loc_60788F: FLdRfVar var_D0
  loc_607892: ImpAdCallFPR4  = Mid(, , )
  loc_607897: FLdRfVar var_D0
  loc_60789A: LitVarStr var_E0, "1"
  loc_60789F: HardType
  loc_6078A0: EqVarBool
  loc_6078A2: FFreeVar var_C0 = ""
  loc_6078A9: BranchF loc_607910
  loc_6078AC: FLdRfVar var_F2
  loc_6078AF: FLdRfVar var_88
  loc_6078B2: NewIfNullRf
  loc_6078B6: FLdPr Me
  loc_6078B9: MemLdI2 changePriceId
  loc_6078BC: FLdRfVar var_8C
  loc_6078BF: NewIfNullPr CMsgPrice
  loc_6078C7: FLdRfVar var_C0
  loc_6078CA: LitI2_Byte 0
  loc_6078CC: PopTmpLdAd2 var_F2
  loc_6078CF: ImpAdLdRf MemVar_74DE1C
  loc_6078D2: NewIfNullPr PreciosConectividad
  loc_6078D5: from_stack_2v = PreciosConectividad.setAdvise(from_stack_1v)
  loc_6078DA: FFree1Var var_C0 = ""
  loc_6078DD: FLdRfVar var_C0
  loc_6078E0: FLdRfVar var_88
  loc_6078E3: NewIfNullRf
  loc_6078E7: ImpAdLdRf MemVar_74DE1C
  loc_6078EA: NewIfNullPr PreciosConectividad
  loc_6078ED: from_stack_2v = PreciosConectividad.setPrice(from_stack_1v)
  loc_6078F2: FFree1Var var_C0 = ""
  loc_6078F5: LitVar_Missing var_B0
  loc_6078F8: PopAdLdVar
  loc_6078F9: LitVarI4
  loc_607901: PopAdLdVar
  loc_607902: ImpAdLdRf MemVar_74DE1C
  loc_607905: NewIfNullPr PreciosConectividad
  loc_607908: PreciosConectividad.Show from_stack_1, from_stack_2
  loc_60790D: Branch loc_60792F
  loc_607910: ImpAdLdI2 MemVar_74C7C0
  loc_607913: NotI4
  loc_607914: BranchF loc_60792F
  loc_607917: LitVar_Missing var_B0
  loc_60791A: PopAdLdVar
  loc_60791B: LitVarI4
  loc_607923: PopAdLdVar
  loc_607924: ImpAdLdRf MemVar_74E0D8
  loc_607927: NewIfNullPr Cambios_Diferidos
  loc_60792A: Cambios_Diferidos.Show from_stack_1, from_stack_2
  loc_60792F: LitI2_Byte &HFF
  loc_607931: FLdPr Me
  loc_607934: MemStI2 changePriceId
  loc_607937: ExitProcHresult
End Function

Private Function Proc_104_42_659ACC(arg_C) '659ACC
  'Data Table: 444EE4
  loc_6597BC: ILdRf arg_C
  loc_6597BF: FStStrCopy var_8C
  loc_6597C2: LitI2_Byte 0
  loc_6597C4: FStI2 var_86
  loc_6597C7: LitI4 1
  loc_6597CC: ILdRf var_8C
  loc_6597CF: LitStr ","
  loc_6597D2: LitI4 0
  loc_6597D7: FnInStr4
  loc_6597D9: LitI4 0
  loc_6597DE: GtI4
  loc_6597DF: BranchF loc_659859
  loc_6597E2: LitI4 1
  loc_6597E7: ILdRf var_8C
  loc_6597EA: LitStr ","
  loc_6597ED: LitI4 0
  loc_6597F2: FnInStr4
  loc_6597F4: LitI4 1
  loc_6597F9: SubI4
  loc_6597FA: CVarI4
  loc_6597FE: LitI4 1
  loc_659803: ILdRf var_8C
  loc_659806: ImpAdCallI2 Mid$(, , )
  loc_65980B: FStStrNoPop var_D4
  loc_65980E: ILdRf var_8C
  loc_659811: FnLenStr
  loc_659812: CVarI4
  loc_659816: LitI4 1
  loc_65981B: ILdRf var_8C
  loc_65981E: LitStr ","
  loc_659821: LitI4 0
  loc_659826: FnInStr4
  loc_659828: LitI4 1
  loc_65982D: AddI4
  loc_65982E: ILdRf var_8C
  loc_659831: ImpAdCallI2 Mid$(, , )
  loc_659836: FStStrNoPop var_D8
  loc_659839: ConcatStr
  loc_65983A: PopTmpLdAdStr
  loc_65983E: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_659843: FStFPR4 var_90
  loc_659846: FFreeStr var_D4 = "": var_D8 = ""
  loc_65984F: FFreeVar var_B0 = ""
  loc_659856: Branch loc_659864
  loc_659859: FLdRfVar var_8C
  loc_65985C: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_659861: FStFPR4 var_90
  loc_659864: ImpAdLdUI1
  loc_659868: FStUI1 var_DE
  loc_65986C: FLdUI1
  loc_659870: LitI2_Byte 1
  loc_659872: CUI1I2
  loc_659874: EqI2
  loc_659875: BranchF loc_6598D5
  loc_659878: FLdFPR4 var_90
  loc_65987B: LitDate 0.1
  loc_659884: CR4R4
  loc_659885: LtR8
  loc_659886: BranchF loc_6598D2
  loc_659889: LitVar_Missing var_110
  loc_65988C: LitVar_Missing var_F0
  loc_65988F: LitVar_Missing var_D0
  loc_659892: LitI4 &H40
  loc_659897: FLdPr Me
  loc_65989A: MemLdStr strIngresarPrecio
  loc_65989D: LitStr " 0.100 "
  loc_6598A0: ConcatStr
  loc_6598A1: FStStrNoPop var_D4
  loc_6598A4: ImpAdLdI4 MemVar_74BECC
  loc_6598A7: ConcatStr
  loc_6598A8: FStStrNoPop var_D8
  loc_6598AB: FLdPr Me
  loc_6598AE: MemLdStr strCheckPlease
  loc_6598B1: ConcatStr
  loc_6598B2: CVarStr var_B0
  loc_6598B5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6598BA: FFreeStr var_D4 = ""
  loc_6598C1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6598CC: ExitProcCbHresult
  loc_6598D2: Branch loc_659ABE
  loc_6598D5: FLdUI1
  loc_6598D9: LitI2_Byte 2
  loc_6598DB: CUI1I2
  loc_6598DD: EqI2
  loc_6598DE: BranchF loc_659937
  loc_6598E1: FLdFPR4 var_90
  loc_6598E4: LitI2_Byte 1
  loc_6598E6: CR8I2
  loc_6598E7: LtR8
  loc_6598E8: BranchF loc_659934
  loc_6598EB: LitVar_Missing var_110
  loc_6598EE: LitVar_Missing var_F0
  loc_6598F1: LitVar_Missing var_D0
  loc_6598F4: LitI4 &H40
  loc_6598F9: FLdPr Me
  loc_6598FC: MemLdStr strIngresarPrecio
  loc_6598FF: LitStr " 1.00 "
  loc_659902: ConcatStr
  loc_659903: FStStrNoPop var_D4
  loc_659906: ImpAdLdI4 MemVar_74BECC
  loc_659909: ConcatStr
  loc_65990A: FStStrNoPop var_D8
  loc_65990D: FLdPr Me
  loc_659910: MemLdStr strCheckPlease
  loc_659913: ConcatStr
  loc_659914: CVarStr var_B0
  loc_659917: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65991C: FFreeStr var_D4 = ""
  loc_659923: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_65992E: ExitProcCbHresult
  loc_659934: Branch loc_659ABE
  loc_659937: FLdUI1
  loc_65993B: LitI2_Byte 3
  loc_65993D: CUI1I2
  loc_65993F: EqI2
  loc_659940: BranchF loc_659999
  loc_659943: FLdFPR4 var_90
  loc_659946: LitI2_Byte &HA
  loc_659948: CR8I2
  loc_659949: LtR8
  loc_65994A: BranchF loc_659996
  loc_65994D: LitVar_Missing var_110
  loc_659950: LitVar_Missing var_F0
  loc_659953: LitVar_Missing var_D0
  loc_659956: LitI4 &H40
  loc_65995B: FLdPr Me
  loc_65995E: MemLdStr strIngresarPrecio
  loc_659961: LitStr " 10.00 "
  loc_659964: ConcatStr
  loc_659965: FStStrNoPop var_D4
  loc_659968: ImpAdLdI4 MemVar_74BECC
  loc_65996B: ConcatStr
  loc_65996C: FStStrNoPop var_D8
  loc_65996F: FLdPr Me
  loc_659972: MemLdStr strCheckPlease
  loc_659975: ConcatStr
  loc_659976: CVarStr var_B0
  loc_659979: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65997E: FFreeStr var_D4 = ""
  loc_659985: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_659990: ExitProcCbHresult
  loc_659996: Branch loc_659ABE
  loc_659999: FLdUI1
  loc_65999D: LitI2_Byte 4
  loc_65999F: CUI1I2
  loc_6599A1: EqI2
  loc_6599A2: BranchF loc_6599FB
  loc_6599A5: FLdFPR4 var_90
  loc_6599A8: LitI2_Byte &H64
  loc_6599AA: CR8I2
  loc_6599AB: LtR8
  loc_6599AC: BranchF loc_6599F8
  loc_6599AF: LitVar_Missing var_110
  loc_6599B2: LitVar_Missing var_F0
  loc_6599B5: LitVar_Missing var_D0
  loc_6599B8: LitI4 &H40
  loc_6599BD: FLdPr Me
  loc_6599C0: MemLdStr strIngresarPrecio
  loc_6599C3: LitStr " 100.00 "
  loc_6599C6: ConcatStr
  loc_6599C7: FStStrNoPop var_D4
  loc_6599CA: ImpAdLdI4 MemVar_74BECC
  loc_6599CD: ConcatStr
  loc_6599CE: FStStrNoPop var_D8
  loc_6599D1: FLdPr Me
  loc_6599D4: MemLdStr strCheckPlease
  loc_6599D7: ConcatStr
  loc_6599D8: CVarStr var_B0
  loc_6599DB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6599E0: FFreeStr var_D4 = ""
  loc_6599E7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6599F2: ExitProcCbHresult
  loc_6599F8: Branch loc_659ABE
  loc_6599FB: FLdUI1
  loc_6599FF: LitI2_Byte 5
  loc_659A01: CUI1I2
  loc_659A03: EqI2
  loc_659A04: BranchF loc_659A5E
  loc_659A07: FLdFPR4 var_90
  loc_659A0A: LitI2 1000
  loc_659A0D: CR8I2
  loc_659A0E: LtR8
  loc_659A0F: BranchF loc_659A5B
  loc_659A12: LitVar_Missing var_110
  loc_659A15: LitVar_Missing var_F0
  loc_659A18: LitVar_Missing var_D0
  loc_659A1B: LitI4 &H40
  loc_659A20: FLdPr Me
  loc_659A23: MemLdStr strIngresarPrecio
  loc_659A26: LitStr " 1000.00 "
  loc_659A29: ConcatStr
  loc_659A2A: FStStrNoPop var_D4
  loc_659A2D: ImpAdLdI4 MemVar_74BECC
  loc_659A30: ConcatStr
  loc_659A31: FStStrNoPop var_D8
  loc_659A34: FLdPr Me
  loc_659A37: MemLdStr strCheckPlease
  loc_659A3A: ConcatStr
  loc_659A3B: CVarStr var_B0
  loc_659A3E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_659A43: FFreeStr var_D4 = ""
  loc_659A4A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_659A55: ExitProcCbHresult
  loc_659A5B: Branch loc_659ABE
  loc_659A5E: FLdUI1
  loc_659A62: LitI2_Byte 6
  loc_659A64: CUI1I2
  loc_659A66: EqI2
  loc_659A67: BranchF loc_659ABE
  loc_659A6A: FLdFPR4 var_90
  loc_659A6D: LitI2 10000
  loc_659A70: CR8I2
  loc_659A71: LtR8
  loc_659A72: BranchF loc_659ABE
  loc_659A75: LitVar_Missing var_110
  loc_659A78: LitVar_Missing var_F0
  loc_659A7B: LitVar_Missing var_D0
  loc_659A7E: LitI4 &H40
  loc_659A83: FLdPr Me
  loc_659A86: MemLdStr strIngresarPrecio
  loc_659A89: LitStr " 10000.00 "
  loc_659A8C: ConcatStr
  loc_659A8D: FStStrNoPop var_D4
  loc_659A90: ImpAdLdI4 MemVar_74BECC
  loc_659A93: ConcatStr
  loc_659A94: FStStrNoPop var_D8
  loc_659A97: FLdPr Me
  loc_659A9A: MemLdStr strCheckPlease
  loc_659A9D: ConcatStr
  loc_659A9E: CVarStr var_B0
  loc_659AA1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_659AA6: FFreeStr var_D4 = ""
  loc_659AAD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_659AB8: ExitProcCbHresult
  loc_659ABE: LitI2_Byte &HFF
  loc_659AC0: FStI2 var_86
  loc_659AC3: ExitProcCbHresult
End Function

Private Function Proc_104_43_5E40D8() '5E40D8
  'Data Table: 444EE4
  loc_5E406C: LitI2_Byte 0
  loc_5E406E: FStI2 var_86
  loc_5E4071: FLdRfVar var_8A
  loc_5E4074: from_stack_1v = Proc_104_44_5E8B60()
  loc_5E4079: FLdI2 var_8A
  loc_5E407C: NotI4
  loc_5E407D: BranchF loc_5E4090
  loc_5E4080: from_stack_1v = Proc_104_38_638D2C()
  loc_5E4085: LitI2_Byte &HFF
  loc_5E4087: FStI2 var_86
  loc_5E408A: ExitProcCbHresult
  loc_5E4090: LitI2_Byte 1
  loc_5E4092: FLdRfVar var_88
  loc_5E4095: FLdRfVar var_8A
  loc_5E4098: ImpAdLdRf MemVar_74A220
  loc_5E409B: NewIfNullPr clsProducts
  loc_5E409E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5E40A3: FLdI2 var_8A
  loc_5E40A6: ForI2 var_8E
  loc_5E40AC: FLdRfVar var_8A
  loc_5E40AF: FLdRfVar var_88
  loc_5E40B2: from_stack_2v = Proc_104_54_61F94C(from_stack_1v)
  loc_5E40B7: FLdI2 var_8A
  loc_5E40BA: NotI4
  loc_5E40BB: BranchF loc_5E40C4
  loc_5E40BE: ExitProcCbHresult
  loc_5E40C4: FLdRfVar var_88
  loc_5E40C7: NextI2 var_8E, loc_5E40AC
  loc_5E40CC: LitI2_Byte &HFF
  loc_5E40CE: FStI2 var_86
  loc_5E40D1: ExitProcCbHresult
End Function

Private Function Proc_104_44_5E8B60() '5E8B60
  'Data Table: 444EE4
  loc_5E8AE8: LitI2_Byte 1
  loc_5E8AEA: FLdRfVar var_88
  loc_5E8AED: FLdRfVar var_8A
  loc_5E8AF0: ImpAdLdRf MemVar_74A220
  loc_5E8AF3: NewIfNullPr clsProducts
  loc_5E8AF6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5E8AFB: FLdI2 var_8A
  loc_5E8AFE: ForI2 var_8E
  loc_5E8B04: FLdRfVar var_98
  loc_5E8B07: FLdI2 var_88
  loc_5E8B0A: FLdPrThis
  loc_5E8B0B: VCallAd Control_ID_txtPrecio
  loc_5E8B0E: FStAdFunc var_94
  loc_5E8B11: FLdPr var_94
  loc_5E8B14: Set from_stack_2 = Me(from_stack_1)
  loc_5E8B19: FLdPr var_98
  loc_5E8B1C: LateIdLdVar var_A8 DispID_22 0
  loc_5E8B23: CStrVarTmp
  loc_5E8B24: FStStrNoPop var_AC
  loc_5E8B27: ImpAdCallFPR4 push Val()
  loc_5E8B2C: CR8R8
  loc_5E8B2D: LitI2_Byte 0
  loc_5E8B2F: CR8I2
  loc_5E8B30: GtR4
  loc_5E8B31: FFree1Str var_AC
  loc_5E8B34: FFreeAd var_94 = ""
  loc_5E8B3B: FFree1Var var_A8 = ""
  loc_5E8B3E: BranchF loc_5E8B4C
  loc_5E8B41: LitI2_Byte &HFF
  loc_5E8B43: FStI2 var_86
  loc_5E8B46: ExitProcCbHresult
  loc_5E8B4C: FLdRfVar var_88
  loc_5E8B4F: NextI2 var_8E, loc_5E8B04
  loc_5E8B54: LitI2_Byte 0
  loc_5E8B56: FStI2 var_86
  loc_5E8B59: ExitProcCbHresult
End Function

Private Function Proc_104_45_63D03C(arg_C) '63D03C
  'Data Table: 444EE4
  loc_63CE0C: FLdRfVar var_90
  loc_63CE0F: FLdPrThis
  loc_63CE10: VCallAd Control_ID_txtNivel
  loc_63CE13: FStAdFunc var_8C
  loc_63CE16: FLdPr var_8C
  loc_63CE19:  = Me.Text
  loc_63CE1E: ILdRf var_90
  loc_63CE21: CI2Str
  loc_63CE23: LitI2_Byte 1
  loc_63CE25: EqI2
  loc_63CE26: FLdI2 arg_C
  loc_63CE29: LitI2_Byte &HFF
  loc_63CE2B: EqI2
  loc_63CE2C: AndI4
  loc_63CE2D: FLdRfVar var_98
  loc_63CE30: FLdPrThis
  loc_63CE31: VCallAd Control_ID_txtNivel
  loc_63CE34: FStAdFunc var_94
  loc_63CE37: FLdPr var_94
  loc_63CE3A:  = Me.Text
  loc_63CE3F: ILdRf var_98
  loc_63CE42: CI2Str
  loc_63CE44: LitI2_Byte 5
  loc_63CE46: EqI2
  loc_63CE47: FLdI2 arg_C
  loc_63CE4A: LitI2_Byte 1
  loc_63CE4C: EqI2
  loc_63CE4D: AndI4
  loc_63CE4E: OrI4
  loc_63CE4F: FFreeStr var_90 = ""
  loc_63CE56: FFreeAd var_8C = ""
  loc_63CE5D: BranchF loc_63CE63
  loc_63CE60: Branch loc_63CF32
  loc_63CE63: FLdRfVar var_90
  loc_63CE66: FLdPrThis
  loc_63CE67: VCallAd Control_ID_txtNivel
  loc_63CE6A: FStAdFunc var_8C
  loc_63CE6D: FLdPr var_8C
  loc_63CE70:  = Me.Text
  loc_63CE75: ILdRf var_90
  loc_63CE78: CI2Str
  loc_63CE7A: FLdI2 arg_C
  loc_63CE7D: AddI2
  loc_63CE7E: CStrUI1
  loc_63CE80: FStStrNoPop var_98
  loc_63CE83: FLdPrThis
  loc_63CE84: VCallAd Control_ID_txtNivel
  loc_63CE87: FStAdFunc var_94
  loc_63CE8A: FLdPr var_94
  loc_63CE8D: Me.Text = from_stack_1
  loc_63CE92: FFreeStr var_90 = ""
  loc_63CE99: FFreeAd var_8C = ""
  loc_63CEA0: FLdRfVar var_90
  loc_63CEA3: FLdPrThis
  loc_63CEA4: VCallAd Control_ID_txtNivel
  loc_63CEA7: FStAdFunc var_8C
  loc_63CEAA: FLdPr var_8C
  loc_63CEAD:  = Me.Text
  loc_63CEB2: ILdRf var_90
  loc_63CEB5: CI2Str
  loc_63CEB7: LitI2_Byte 1
  loc_63CEB9: EqI2
  loc_63CEBA: LitVarI2 var_B8, 1
  loc_63CEBF: LitI4 4
  loc_63CEC4: ImpAdLdI4 MemVar_74BEAC
  loc_63CEC7: ImpAdCallI2 Mid$(, , )
  loc_63CECC: FStStrNoPop var_98
  loc_63CECF: LitStr "1"
  loc_63CED2: EqStr
  loc_63CED4: OrI4
  loc_63CED5: FFreeStr var_90 = ""
  loc_63CEDC: FFree1Ad var_8C
  loc_63CEDF: FFree1Var var_B8 = ""
  loc_63CEE2: BranchF loc_63CEFC
  loc_63CEE5: LitI2_Byte 0
  loc_63CEE7: FLdPrThis
  loc_63CEE8: VCallAd Control_ID_cmdBorrarNivel
  loc_63CEEB: FStAdFunc var_8C
  loc_63CEEE: FLdPr var_8C
  loc_63CEF1: Me.Enabled = from_stack_1b
  loc_63CEF6: FFree1Ad var_8C
  loc_63CEF9: Branch loc_63CF10
  loc_63CEFC: LitI2_Byte &HFF
  loc_63CEFE: FLdPrThis
  loc_63CEFF: VCallAd Control_ID_cmdBorrarNivel
  loc_63CF02: FStAdFunc var_8C
  loc_63CF05: FLdPr var_8C
  loc_63CF08: Me.Enabled = from_stack_1b
  loc_63CF0D: FFree1Ad var_8C
  loc_63CF10: FLdRfVar var_90
  loc_63CF13: FLdPrThis
  loc_63CF14: VCallAd Control_ID_txtNivel
  loc_63CF17: FStAdFunc var_8C
  loc_63CF1A: FLdPr var_8C
  loc_63CF1D:  = Me.Text
  loc_63CF22: ILdRf var_90
  loc_63CF25: CI2Str
  loc_63CF27: from_stack_1v = Proc_104_51_62E1B4()
  loc_63CF2C: FFree1Str var_90
  loc_63CF2F: FFree1Ad var_8C
  loc_63CF32: LitVarI2 var_B8, 1
  loc_63CF37: LitI4 &HC
  loc_63CF3C: ImpAdLdI4 MemVar_74BEAC
  loc_63CF3F: ImpAdCallI2 Mid$(, , )
  loc_63CF44: FStStrNoPop var_90
  loc_63CF47: LitStr "1"
  loc_63CF4A: EqStr
  loc_63CF4C: NotI4
  loc_63CF4D: FFree1Str var_90
  loc_63CF50: FFree1Var var_B8 = ""
  loc_63CF53: BranchF loc_63D038
  loc_63CF56: LitI2_Byte 1
  loc_63CF58: FLdRfVar var_86
  loc_63CF5B: LitI2_Byte &HA
  loc_63CF5D: ForI2 var_BC
  loc_63CF63: LitVarI4
  loc_63CF6B: PopAdLdVar
  loc_63CF6C: FLdRfVar var_94
  loc_63CF6F: FLdI2 var_86
  loc_63CF72: FLdPrThis
  loc_63CF73: VCallAd Control_ID_txtPrecio
  loc_63CF76: FStAdFunc var_8C
  loc_63CF79: FLdPr var_8C
  loc_63CF7C: Set from_stack_2 = Me(from_stack_1)
  loc_63CF81: FLdPr var_94
  loc_63CF84: LateIdSt
  loc_63CF89: FFreeAd var_8C = ""
  loc_63CF90: LitVar_FALSE
  loc_63CF94: PopAdLdVar
  loc_63CF95: FLdRfVar var_94
  loc_63CF98: FLdI2 var_86
  loc_63CF9B: FLdPrThis
  loc_63CF9C: VCallAd Control_ID_txtPrecio
  loc_63CF9F: FStAdFunc var_8C
  loc_63CFA2: FLdPr var_8C
  loc_63CFA5: Set from_stack_2 = Me(from_stack_1)
  loc_63CFAA: FLdPr var_94
  loc_63CFAD: LateIdSt
  loc_63CFB2: FFreeAd var_8C = ""
  loc_63CFB9: LitI4 -2147483633
  loc_63CFBE: FLdRfVar var_94
  loc_63CFC1: FLdI2 var_86
  loc_63CFC4: FLdPrThis
  loc_63CFC5: VCallAd Control_ID_txtImpuesto
  loc_63CFC8: FStAdFunc var_8C
  loc_63CFCB: FLdPr var_8C
  loc_63CFCE: Set from_stack_2 = Me(from_stack_1)
  loc_63CFD3: FLdPr var_94
  loc_63CFD6: Me.BackColor = from_stack_1
  loc_63CFDB: FFreeAd var_8C = ""
  loc_63CFE2: LitI2_Byte 0
  loc_63CFE4: FLdRfVar var_94
  loc_63CFE7: FLdI2 var_86
  loc_63CFEA: FLdPrThis
  loc_63CFEB: VCallAd Control_ID_txtImpuesto
  loc_63CFEE: FStAdFunc var_8C
  loc_63CFF1: FLdPr var_8C
  loc_63CFF4: Set from_stack_2 = Me(from_stack_1)
  loc_63CFF9: FLdPr var_94
  loc_63CFFC: Me.Enabled = from_stack_1b
  loc_63D001: FFreeAd var_8C = ""
  loc_63D008: FLdRfVar var_86
  loc_63D00B: NextI2 var_BC, loc_63CF63
  loc_63D010: LitI2_Byte 0
  loc_63D012: FLdPrThis
  loc_63D013: VCallAd Control_ID_cmdTemporizar
  loc_63D016: FStAdFunc var_8C
  loc_63D019: FLdPr var_8C
  loc_63D01C: Me.Enabled = from_stack_1b
  loc_63D021: FFree1Ad var_8C
  loc_63D024: LitI2_Byte 0
  loc_63D026: FLdPrThis
  loc_63D027: VCallAd Control_ID_cmdInmetiata
  loc_63D02A: FStAdFunc var_8C
  loc_63D02D: FLdPr var_8C
  loc_63D030: Me.Enabled = from_stack_1b
  loc_63D035: FFree1Ad var_8C
  loc_63D038: ExitProcHresult
  loc_63D039: MemLdRfVar from_stack_1.global_0
End Function

Private Function Proc_104_46_5E9700() '5E9700
  'Data Table: 444EE4
  loc_5E9674: ImpAdLdUI1
  loc_5E9678: FStUI1 var_8A
  loc_5E967C: FLdUI1
  loc_5E9680: LitI2_Byte 1
  loc_5E9682: CUI1I2
  loc_5E9684: EqI2
  loc_5E9685: BranchF loc_5E9693
  loc_5E9688: LitI4 &H31
  loc_5E968D: FStR4 var_88
  loc_5E9690: Branch loc_5E96F7
  loc_5E9693: FLdUI1
  loc_5E9697: LitI2_Byte 2
  loc_5E9699: CUI1I2
  loc_5E969B: EqI2
  loc_5E969C: BranchF loc_5E96AA
  loc_5E969F: LitI4 &H30
  loc_5E96A4: FStR4 var_88
  loc_5E96A7: Branch loc_5E96F7
  loc_5E96AA: FLdUI1
  loc_5E96AE: LitI2_Byte 3
  loc_5E96B0: CUI1I2
  loc_5E96B2: EqI2
  loc_5E96B3: BranchF loc_5E96C1
  loc_5E96B6: LitI4 &H2D
  loc_5E96BB: FStR4 var_88
  loc_5E96BE: Branch loc_5E96F7
  loc_5E96C1: FLdUI1
  loc_5E96C5: LitI2_Byte 4
  loc_5E96C7: CUI1I2
  loc_5E96C9: EqI2
  loc_5E96CA: BranchF loc_5E96D8
  loc_5E96CD: LitI4 &H2B
  loc_5E96D2: FStR4 var_88
  loc_5E96D5: Branch loc_5E96F7
  loc_5E96D8: FLdUI1
  loc_5E96DC: LitI2_Byte 5
  loc_5E96DE: CUI1I2
  loc_5E96E0: EqI2
  loc_5E96E1: BranchF loc_5E96EF
  loc_5E96E4: LitI4 &H2A
  loc_5E96E9: FStR4 var_88
  loc_5E96EC: Branch loc_5E96F7
  loc_5E96EF: LitI4 &H28
  loc_5E96F4: FStR4 var_88
  loc_5E96F7: ExitProcCbHresult
End Function

Private Function Proc_104_47_5E0B1C(arg_C) '5E0B1C
  'Data Table: 444EE4
  loc_5E0AC4: FLdRfVar var_92
  loc_5E0AC7: FLdRfVar var_90
  loc_5E0ACA: FLdI2 arg_C
  loc_5E0ACD: FLdPrThis
  loc_5E0ACE: VCallAd Control_ID_txtImpuesto
  loc_5E0AD1: FStAdFunc var_8C
  loc_5E0AD4: FLdPr var_8C
  loc_5E0AD7: Set from_stack_2 = Me(from_stack_1)
  loc_5E0ADC: FLdPr var_90
  loc_5E0ADF:  = Me.Visible
  loc_5E0AE4: FLdI2 var_92
  loc_5E0AE7: NotI4
  loc_5E0AE8: FFreeAd var_8C = ""
  loc_5E0AEF: BranchF loc_5E0B0B
  loc_5E0AF2: FLdRfVar var_98
  loc_5E0AF5: from_stack_1v = Proc_104_46_5E9700()
  loc_5E0AFA: ILdRf var_98
  loc_5E0AFD: PopTmpLdAdStr var_9C
  loc_5E0B00: FLdRfVar arg_C
  loc_5E0B03: from_stack_3v = Proc_104_49_61DEF8(from_stack_1v, from_stack_2v)
  loc_5E0B08: Branch loc_5E0B1B
  loc_5E0B0B: LitI4 0
  loc_5E0B10: PopTmpLdAdStr var_98
  loc_5E0B13: FLdRfVar arg_C
  loc_5E0B16: from_stack_3v = Proc_104_49_61DEF8(from_stack_1v, from_stack_2v)
  loc_5E0B1B: ExitProcHresult
End Function

Private Function Proc_104_48_5DB464(arg_C) '5DB464
  'Data Table: 444EE4
  loc_5DB428: ZeroRetVal
  loc_5DB42A: ImpAdLdI4 MemVar_74BED0
  loc_5DB42D: FnLenStr
  loc_5DB42E: FStR4 var_90
  loc_5DB431: LitI4 1
  loc_5DB436: FLdRfVar var_8C
  loc_5DB439: ILdI4 arg_C
  loc_5DB43C: ILdRf var_90
  loc_5DB43F: SubI4
  loc_5DB440: ForI4 var_9C
  loc_5DB446: ILdRf var_94
  loc_5DB449: LitStr " "
  loc_5DB44C: ConcatStr
  loc_5DB44D: FStStr var_94
  loc_5DB450: FLdRfVar var_8C
  loc_5DB453: NextI4 var_9C, loc_5DB446
  loc_5DB458: ILdRf var_94
  loc_5DB45B: FStStrCopy var_88
  loc_5DB45E: ExitProcCbHresult
End Function

Private Function Proc_104_49_61DEF8(arg_C, arg_10) '61DEF8
  'Data Table: 444EE4
  loc_61DDC4: FLdRfVar var_88
  loc_61DDC7: ILdRf arg_10
  loc_61DDCA: from_stack_2v = Proc_104_48_5DB464(from_stack_1v)
  loc_61DDCF: ILdRf var_88
  loc_61DDD2: ImpAdLdI4 MemVar_74C354
  loc_61DDD5: ConcatStr
  loc_61DDD6: CVarStr var_A0
  loc_61DDD9: PopAdLdVar
  loc_61DDDA: FLdRfVar var_90
  loc_61DDDD: ILdI2 arg_C
  loc_61DDE0: FLdPrThis
  loc_61DDE1: VCallAd Control_ID_txtPrecio
  loc_61DDE4: FStAdFunc var_8C
  loc_61DDE7: FLdPr var_8C
  loc_61DDEA: Set from_stack_2 = Me(from_stack_1)
  loc_61DDEF: FLdPr var_90
  loc_61DDF2: LateIdSt
  loc_61DDF7: FFree1Str var_88
  loc_61DDFA: FFreeAd var_8C = ""
  loc_61DE01: FFree1Var var_A0 = ""
  loc_61DE04: FLdRfVar var_88
  loc_61DE07: ILdRf arg_10
  loc_61DE0A: from_stack_2v = Proc_104_48_5DB464(from_stack_1v)
  loc_61DE0F: ILdRf var_88
  loc_61DE12: ImpAdLdI4 MemVar_74C358
  loc_61DE15: ConcatStr
  loc_61DE16: FStStrNoPop var_A4
  loc_61DE19: LitStr " "
  loc_61DE1C: ConcatStr
  loc_61DE1D: FStStrNoPop var_A8
  loc_61DE20: ImpAdLdI4 MemVar_74BED0
  loc_61DE23: ConcatStr
  loc_61DE24: CVarStr var_A0
  loc_61DE27: PopAdLdVar
  loc_61DE28: FLdRfVar var_90
  loc_61DE2B: ILdI2 arg_C
  loc_61DE2E: FLdPrThis
  loc_61DE2F: VCallAd Control_ID_txtPrecio
  loc_61DE32: FStAdFunc var_8C
  loc_61DE35: FLdPr var_8C
  loc_61DE38: Set from_stack_2 = Me(from_stack_1)
  loc_61DE3D: FLdPr var_90
  loc_61DE40: LateIdSt
  loc_61DE45: FFreeStr var_88 = "": var_A4 = ""
  loc_61DE4E: FFreeAd var_8C = ""
  loc_61DE55: FFree1Var var_A0 = ""
  loc_61DE58: FLdRfVar var_A4
  loc_61DE5B: FLdPrThis
  loc_61DE5C: VCallAd Control_ID_txtNivel
  loc_61DE5F: FStAdFunc var_8C
  loc_61DE62: FLdPr var_8C
  loc_61DE65:  = Me.Text
  loc_61DE6A: LitI4 1
  loc_61DE6F: LitI4 1
  loc_61DE74: ImpAdLdRf MemVar_74C358
  loc_61DE77: CVarRef
  loc_61DE7C: ILdRf var_A4
  loc_61DE7F: CI2Str
  loc_61DE81: CI4UI1
  loc_61DE82: ILdI2 arg_C
  loc_61DE85: CI4UI1
  loc_61DE86: ImpAdLdRf MemVar_74C074
  loc_61DE89: AryLdRf
  loc_61DE8C: CVarRef
  loc_61DE91: FLdRfVar var_A0
  loc_61DE94: ImpAdCallFPR4  = Format(, )
  loc_61DE99: FLdRfVar var_88
  loc_61DE9C: ILdRf arg_10
  loc_61DE9F: from_stack_2v = Proc_104_48_5DB464(from_stack_1v)
  loc_61DEA4: ILdRf var_88
  loc_61DEA7: FLdRfVar var_CC
  loc_61DEAA: FLdRfVar var_A0
  loc_61DEAD: CStrVarTmp
  loc_61DEAE: PopTmpLdAdStr
  loc_61DEB2: from_stack_2v = Proc_104_50_60446C(from_stack_1v)
  loc_61DEB7: ILdRf var_CC
  loc_61DEBA: ConcatStr
  loc_61DEBB: CVarStr var_E0
  loc_61DEBE: PopAdLdVar
  loc_61DEBF: FLdRfVar var_D0
  loc_61DEC2: ILdI2 arg_C
  loc_61DEC5: FLdPrThis
  loc_61DEC6: VCallAd Control_ID_txtPrecio
  loc_61DEC9: FStAdFunc var_90
  loc_61DECC: FLdPr var_90
  loc_61DECF: Set from_stack_2 = Me(from_stack_1)
  loc_61DED4: FLdPr var_D0
  loc_61DED7: LateIdSt
  loc_61DEDC: FFreeStr var_A4 = "": var_A8 = "": var_88 = ""
  loc_61DEE7: FFreeAd var_8C = "": var_90 = ""
  loc_61DEF0: FFreeVar var_A0 = ""
  loc_61DEF7: ExitProcHresult
End Function

Private Function Proc_104_50_60446C(arg_C) '60446C
  'Data Table: 444EE4
  loc_6043A4: ZeroRetVal
  loc_6043A6: LitI2_Byte 1
  loc_6043A8: FLdRfVar var_8A
  loc_6043AB: ILdI4 arg_C
  loc_6043AE: FnLenStr
  loc_6043AF: CI2I4
  loc_6043B0: ForI2 var_94
  loc_6043B6: LitVarI2 var_C4, 1
  loc_6043BB: FLdI2 var_8A
  loc_6043BE: CI4UI1
  loc_6043BF: ILdRf arg_C
  loc_6043C2: CVarRef
  loc_6043C7: FLdRfVar var_D4
  loc_6043CA: ImpAdCallFPR4  = Mid(, , )
  loc_6043CF: FLdRfVar var_D4
  loc_6043D2: LitVarStr var_E4, "0"
  loc_6043D7: HardType
  loc_6043D8: NeVar var_F4
  loc_6043DC: LitVarI2 var_124, 1
  loc_6043E1: FLdI2 var_8A
  loc_6043E4: CI4UI1
  loc_6043E5: ImpAdLdRf MemVar_74C354
  loc_6043E8: CVarRef
  loc_6043ED: FLdRfVar var_134
  loc_6043F0: ImpAdCallFPR4  = Mid(, , )
  loc_6043F5: FLdRfVar var_134
  loc_6043F8: LitVarStr var_144, "0"
  loc_6043FD: HardType
  loc_6043FE: EqVar var_154
  loc_604402: AndVar var_164
  loc_604406: CBoolVarNull
  loc_604408: FFreeVar var_C4 = "": var_D4 = "": var_124 = ""
  loc_604413: BranchF loc_604423
  loc_604416: ILdRf var_90
  loc_604419: LitStr "0"
  loc_60441C: ConcatStr
  loc_60441D: FStStr var_90
  loc_604420: Branch loc_604456
  loc_604423: ILdRf var_90
  loc_604426: CVarStr var_E4
  loc_604429: LitVarI2 var_C4, 1
  loc_60442E: FLdI2 var_8A
  loc_604431: CI4UI1
  loc_604432: ILdRf arg_C
  loc_604435: CVarRef
  loc_60443A: FLdRfVar var_D4
  loc_60443D: ImpAdCallFPR4  = Mid(, , )
  loc_604442: FLdRfVar var_D4
  loc_604445: ConcatVar var_F4
  loc_604449: CStrVarTmp
  loc_60444A: FStStr var_90
  loc_60444D: FFreeVar var_C4 = "": var_D4 = ""
  loc_604456: FLdRfVar var_8A
  loc_604459: NextI2 var_94, loc_6043B6
  loc_60445E: ILdRf var_90
  loc_604461: FStStrCopy var_88
  loc_604464: ExitProcCbHresult
End Function

Private Function Proc_104_51_62E1B4() '62E1B4
  'Data Table: 444EE4
  loc_62E014: FLdPr Me
  loc_62E017: MemLdI2 global_106
  loc_62E01A: LitI2_Byte &HFF
  loc_62E01C: EqI2
  loc_62E01D: BranchF loc_62E029
  loc_62E020: LitI2_Byte 0
  loc_62E022: FLdPr Me
  loc_62E025: MemStI2 global_106
  loc_62E028: ExitProcHresult
  loc_62E029: LitI2_Byte 1
  loc_62E02B: FLdRfVar var_86
  loc_62E02E: FLdRfVar var_88
  loc_62E031: ImpAdLdRf MemVar_74A220
  loc_62E034: NewIfNullPr clsProducts
  loc_62E037: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62E03C: FLdI2 var_88
  loc_62E03F: ForI2 var_8C
  loc_62E045: FLdI2 var_86
  loc_62E048: from_stack_2v = Proc_104_47_5E0B1C(from_stack_1v)
  loc_62E04D: FLdRfVar var_A0
  loc_62E050: FLdRfVar var_98
  loc_62E053: FLdRfVar var_94
  loc_62E056: FLdI2 var_86
  loc_62E059: FLdPrThis
  loc_62E05A: VCallAd Control_ID_txtImpuesto
  loc_62E05D: FStAdFunc var_90
  loc_62E060: FLdPr var_90
  loc_62E063: Set from_stack_2 = Me(from_stack_1)
  loc_62E068: FLdPr var_94
  loc_62E06B:  = Me.Text
  loc_62E070: FLdZeroAd var_98
  loc_62E073: PopTmpLdAdStr
  loc_62E077: from_stack_2v = Proc_104_57_5DD108(from_stack_1v)
  loc_62E07C: ILdRf var_A0
  loc_62E07F: FLdRfVar var_A8
  loc_62E082: FLdI2 var_86
  loc_62E085: FLdPrThis
  loc_62E086: VCallAd Control_ID_txtImpuesto
  loc_62E089: FStAdFunc var_A4
  loc_62E08C: FLdPr var_A4
  loc_62E08F: Set from_stack_2 = Me(from_stack_1)
  loc_62E094: FLdPr var_A8
  loc_62E097: Me.Text = from_stack_1
  loc_62E09C: FFreeStr var_9C = ""
  loc_62E0A3: FFreeAd var_90 = "": var_94 = "": var_A4 = ""
  loc_62E0AE: LitI4 1
  loc_62E0B3: LitI4 1
  loc_62E0B8: LitVarStr var_C8, "###0.0000"
  loc_62E0BD: FStVarCopyObj var_D8
  loc_62E0C0: FLdRfVar var_D8
  loc_62E0C3: FLdI2 var_86
  loc_62E0C6: CI4UI1
  loc_62E0C7: ImpAdLdRf MemVar_74C094
  loc_62E0CA: Ary1LdRf
  loc_62E0CB: CVarRef
  loc_62E0D0: FLdRfVar var_E8
  loc_62E0D3: ImpAdCallFPR4  = Format(, )
  loc_62E0D8: FLdRfVar var_E8
  loc_62E0DB: CStrVarVal var_98
  loc_62E0DF: FLdRfVar var_94
  loc_62E0E2: FLdI2 var_86
  loc_62E0E5: FLdPrThis
  loc_62E0E6: VCallAd Control_ID_txtImpuesto
  loc_62E0E9: FStAdFunc var_90
  loc_62E0EC: FLdPr var_90
  loc_62E0EF: Set from_stack_2 = Me(from_stack_1)
  loc_62E0F4: FLdPr var_94
  loc_62E0F7: Me.Text = from_stack_1
  loc_62E0FC: FFree1Str var_98
  loc_62E0FF: FFreeAd var_90 = ""
  loc_62E106: FFreeVar var_D8 = ""
  loc_62E10D: FLdRfVar var_86
  loc_62E110: NextI2 var_8C, loc_62E045
  loc_62E115: FLdRfVar var_88
  loc_62E118: ImpAdLdRf MemVar_74A220
  loc_62E11B: NewIfNullPr clsProducts
  loc_62E11E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62E123: FLdI2 var_88
  loc_62E126: LitI2_Byte 1
  loc_62E128: AddI2
  loc_62E129: FLdRfVar var_86
  loc_62E12C: LitI2_Byte &HA
  loc_62E12E: ForI2 var_EC
  loc_62E134: LitVar_FALSE
  loc_62E138: PopAdLdVar
  loc_62E139: FLdRfVar var_94
  loc_62E13C: FLdI2 var_86
  loc_62E13F: FLdPrThis
  loc_62E140: VCallAd Control_ID_txtPrecio
  loc_62E143: FStAdFunc var_90
  loc_62E146: FLdPr var_90
  loc_62E149: Set from_stack_2 = Me(from_stack_1)
  loc_62E14E: FLdPr var_94
  loc_62E151: LateIdSt
  loc_62E156: FFreeAd var_90 = ""
  loc_62E15D: LitI2_Byte 0
  loc_62E15F: FLdRfVar var_94
  loc_62E162: FLdI2 var_86
  loc_62E165: FLdPrThis
  loc_62E166: VCallAd Control_ID_txtImpuesto
  loc_62E169: FStAdFunc var_90
  loc_62E16C: FLdPr var_90
  loc_62E16F: Set from_stack_2 = Me(from_stack_1)
  loc_62E174: FLdPr var_94
  loc_62E177: Me.Enabled = from_stack_1b
  loc_62E17C: FFreeAd var_90 = ""
  loc_62E183: LitI2_Byte 0
  loc_62E185: FLdRfVar var_94
  loc_62E188: FLdI2 var_86
  loc_62E18B: FLdPrThis
  loc_62E18C: VCallAd Control_ID_lblProducto
  loc_62E18F: FStAdFunc var_90
  loc_62E192: FLdPr var_90
  loc_62E195: Set from_stack_2 = Me(from_stack_1)
  loc_62E19A: FLdPr var_94
  loc_62E19D: Me.Enabled = from_stack_1b
  loc_62E1A2: FFreeAd var_90 = ""
  loc_62E1A9: FLdRfVar var_86
  loc_62E1AC: NextI2 var_EC, loc_62E134
  loc_62E1B1: ExitProcHresult
End Function

Private Function Proc_104_52_62336C(arg_C, arg_10) '62336C
  'Data Table: 444EE4
  loc_62320C: FLdRfVar var_96
  loc_62320F: FLdRfVar var_94
  loc_623212: ILdI2 arg_C
  loc_623215: FLdPrThis
  loc_623216: VCallAd Control_ID_txtImpuesto
  loc_623219: FStAdFunc var_90
  loc_62321C: FLdPr var_90
  loc_62321F: Set from_stack_2 = Me(from_stack_1)
  loc_623224: FLdPr var_94
  loc_623227:  = Me.Visible
  loc_62322C: FLdI2 var_96
  loc_62322F: NotI4
  loc_623230: FFreeAd var_90 = ""
  loc_623237: BranchF loc_623260
  loc_62323A: FLdRfVar var_A4
  loc_62323D: FLdRfVar var_9C
  loc_623240: from_stack_1v = Proc_104_46_5E9700()
  loc_623245: ILdRf var_9C
  loc_623248: PopTmpLdAdStr var_A0
  loc_62324B: from_stack_2v = Proc_104_48_5DB464(from_stack_1v)
  loc_623250: ILdRf var_A4
  loc_623253: ImpAdLdI4 MemVar_74C354
  loc_623256: ConcatStr
  loc_623257: FStStr var_8C
  loc_62325A: FFree1Str var_A4
  loc_62325D: Branch loc_623266
  loc_623260: ImpAdLdI4 MemVar_74C354
  loc_623263: FStStrCopy var_8C
  loc_623266: LitVarI2 var_D4, 1
  loc_62326B: ILdI4 arg_10
  loc_62326E: LitI4 1
  loc_623273: AddI4
  loc_623274: FLdRfVar var_8C
  loc_623277: CVarRef
  loc_62327C: FLdRfVar var_E4
  loc_62327F: ImpAdCallFPR4  = Mid(, , )
  loc_623284: FLdRfVar var_E4
  loc_623287: LitVarStr var_F4, "#"
  loc_62328C: HardType
  loc_62328D: EqVarBool
  loc_62328F: FFreeVar var_D4 = ""
  loc_623296: BranchF loc_6232A4
  loc_623299: LitI4 1
  loc_62329E: FStR4 var_88
  loc_6232A1: Branch loc_623366
  loc_6232A4: LitVarI2 var_D4, 1
  loc_6232A9: ILdI4 arg_10
  loc_6232AC: LitI4 1
  loc_6232B1: AddI4
  loc_6232B2: FLdRfVar var_8C
  loc_6232B5: CVarRef
  loc_6232BA: FLdRfVar var_E4
  loc_6232BD: ImpAdCallFPR4  = Mid(, , )
  loc_6232C2: FLdRfVar var_E4
  loc_6232C5: LitVarStr var_F4, "."
  loc_6232CA: HardType
  loc_6232CB: EqVarBool
  loc_6232CD: FFreeVar var_D4 = ""
  loc_6232D4: BranchF loc_6232E2
  loc_6232D7: LitI4 3
  loc_6232DC: FStR4 var_88
  loc_6232DF: Branch loc_623366
  loc_6232E2: LitVarI2 var_D4, 1
  loc_6232E7: ILdI4 arg_10
  loc_6232EA: LitI4 1
  loc_6232EF: AddI4
  loc_6232F0: FLdRfVar var_8C
  loc_6232F3: CVarRef
  loc_6232F8: FLdRfVar var_E4
  loc_6232FB: ImpAdCallFPR4  = Mid(, , )
  loc_623300: FLdRfVar var_E4
  loc_623303: LitVarStr var_F4, ","
  loc_623308: HardType
  loc_623309: EqVarBool
  loc_62330B: FFreeVar var_D4 = ""
  loc_623312: BranchF loc_623320
  loc_623315: LitI4 2
  loc_62331A: FStR4 var_88
  loc_62331D: Branch loc_623366
  loc_623320: LitVarI2 var_D4, 1
  loc_623325: ILdI4 arg_10
  loc_623328: LitI4 1
  loc_62332D: AddI4
  loc_62332E: FLdRfVar var_8C
  loc_623331: CVarRef
  loc_623336: FLdRfVar var_E4
  loc_623339: ImpAdCallFPR4  = Mid(, , )
  loc_62333E: FLdRfVar var_E4
  loc_623341: LitVarStr var_F4, " "
  loc_623346: HardType
  loc_623347: EqVarBool
  loc_623349: FFreeVar var_D4 = ""
  loc_623350: BranchF loc_62335E
  loc_623353: LitI4 4
  loc_623358: FStR4 var_88
  loc_62335B: Branch loc_623366
  loc_62335E: LitI4 5
  loc_623363: FStR4 var_88
  loc_623366: ExitProcCbHresult
End Function

Private Function Proc_104_53_5E42AC(arg_C, arg_10, arg_14) '5E42AC
  'Data Table: 444EE4
  loc_5E4248: ILdRf arg_C
  loc_5E424B: FStStrCopy var_88
  loc_5E424E: FLdRfVar var_88
  loc_5E4251: CDargRef
  loc_5E4255: FLdRfVar var_90
  loc_5E4258: FLdI2 arg_10
  loc_5E425B: FLdPrThis
  loc_5E425C: VCallAd Control_ID_txtPrecio
  loc_5E425F: FStAdFunc var_8C
  loc_5E4262: FLdPr var_8C
  loc_5E4265: Set from_stack_2 = Me(from_stack_1)
  loc_5E426A: FLdPr var_90
  loc_5E426D: LateIdSt
  loc_5E4272: FFreeAd var_8C = ""
  loc_5E4279: ILdRf arg_14
  loc_5E427C: LitI4 1
  loc_5E4281: AddI4
  loc_5E4282: CVarI4
  loc_5E4286: PopAdLdVar
  loc_5E4287: FLdRfVar var_90
  loc_5E428A: FLdI2 arg_10
  loc_5E428D: FLdPrThis
  loc_5E428E: VCallAd Control_ID_txtPrecio
  loc_5E4291: FStAdFunc var_8C
  loc_5E4294: FLdPr var_8C
  loc_5E4297: Set from_stack_2 = Me(from_stack_1)
  loc_5E429C: FLdPr var_90
  loc_5E429F: LateIdSt
  loc_5E42A4: FFreeAd var_8C = ""
  loc_5E42AB: ExitProcHresult
End Function

Private Function Proc_104_54_61F94C(arg_C) '61F94C
  'Data Table: 444EE4
  loc_61F820: LitI2_Byte 0
  loc_61F822: FStI2 var_86
  loc_61F825: FLdRfVar var_90
  loc_61F828: ILdI2 arg_C
  loc_61F82B: FLdPrThis
  loc_61F82C: VCallAd Control_ID_txtPrecio
  loc_61F82F: FStAdFunc var_8C
  loc_61F832: FLdPr var_8C
  loc_61F835: Set from_stack_2 = Me(from_stack_1)
  loc_61F83A: FLdPr var_90
  loc_61F83D: LateIdLdVar var_A0 DispID_22 0
  loc_61F844: CStrVarTmp
  loc_61F845: PopTmpLdAdStr
  loc_61F849: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_61F84E: FStFPR8 var_AC
  loc_61F851: ImpAdLdFPR8 MemVar_74C35C
  loc_61F854: FLdFPR8 var_AC
  loc_61F857: CR8R8
  loc_61F858: GtR4
  loc_61F859: FFree1Str var_A4
  loc_61F85C: FFreeAd var_8C = ""
  loc_61F863: FFree1Var var_A0 = ""
  loc_61F866: BranchF loc_61F8D8
  loc_61F869: LitVar_Missing var_120
  loc_61F86C: LitVar_Missing var_100
  loc_61F86F: LitVarStr var_D0, "Ingreso de precios"
  loc_61F874: FStVarCopyObj var_E0
  loc_61F877: FLdRfVar var_E0
  loc_61F87A: LitI4 &H40
  loc_61F87F: LitStr "El precio minimo editable para la opción decimal "
  loc_61F882: ImpAdLdUI1
  loc_61F886: CStrI2
  loc_61F888: FStStrNoPop var_A4
  loc_61F88B: ConcatStr
  loc_61F88C: FStStrNoPop var_B0
  loc_61F88F: LitStr " es "
  loc_61F892: ConcatStr
  loc_61F893: FStStrNoPop var_B4
  loc_61F896: ImpAdLdFPR8 MemVar_74C35C
  loc_61F899: CStrR8
  loc_61F89B: FStStrNoPop var_B8
  loc_61F89E: ConcatStr
  loc_61F89F: FStStrNoPop var_BC
  loc_61F8A2: LitStr " "
  loc_61F8A5: ConcatStr
  loc_61F8A6: FStStrNoPop var_C0
  loc_61F8A9: ImpAdLdI4 MemVar_74BED0
  loc_61F8AC: ConcatStr
  loc_61F8AD: CVarStr var_A0
  loc_61F8B0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61F8B5: FFreeStr var_A4 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_61F8C4: FFreeVar var_A0 = "": var_E0 = "": var_100 = ""
  loc_61F8CF: ExitProcCbHresult
  loc_61F8D5: Branch loc_61F93A
  loc_61F8D8: FLdRfVar var_90
  loc_61F8DB: ILdI2 arg_C
  loc_61F8DE: FLdPrThis
  loc_61F8DF: VCallAd Control_ID_txtPrecio
  loc_61F8E2: FStAdFunc var_8C
  loc_61F8E5: FLdPr var_8C
  loc_61F8E8: Set from_stack_2 = Me(from_stack_1)
  loc_61F8ED: FLdPr var_90
  loc_61F8F0: LateIdLdVar var_A0 DispID_22 0
  loc_61F8F7: CStrVarTmp
  loc_61F8F8: PopTmpLdAdStr
  loc_61F8FC: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_61F901: CCyR4
  loc_61F902: FLdRfVar var_B0
  loc_61F905: FLdPrThis
  loc_61F906: VCallAd Control_ID_txtNivel
  loc_61F909: FStAdFunc var_124
  loc_61F90C: FLdPr var_124
  loc_61F90F:  = Me.Text
  loc_61F914: ILdRf var_B0
  loc_61F917: CI2Str
  loc_61F919: CI4UI1
  loc_61F91A: ILdI2 arg_C
  loc_61F91D: CI4UI1
  loc_61F91E: ImpAdLdRf MemVar_74C074
  loc_61F921: AryLdPr
  loc_61F924: MemStR8 global_0
  loc_61F927: FFreeStr var_A4 = ""
  loc_61F92E: FFreeAd var_8C = "": var_90 = ""
  loc_61F937: FFree1Var var_A0 = ""
  loc_61F93A: LitI2_Byte &HFF
  loc_61F93C: FStI2 var_86
  loc_61F93F: ExitProcCbHresult
  loc_61F945: ExitProcCbHresult
End Function

Private Function Proc_104_55_63E8C8(arg_C) '63E8C8
  'Data Table: 444EE4
  loc_63E6AC: OnErrorGoto loc_63E8C1
  loc_63E6AF: LitI2_Byte 0
  loc_63E6B1: FStI2 var_86
  loc_63E6B4: FLdRfVar var_90
  loc_63E6B7: ILdI2 arg_C
  loc_63E6BA: FLdPrThis
  loc_63E6BB: VCallAd Control_ID_txtPrecio
  loc_63E6BE: FStAdFunc var_8C
  loc_63E6C1: FLdPr var_8C
  loc_63E6C4: Set from_stack_2 = Me(from_stack_1)
  loc_63E6C9: FLdPr var_90
  loc_63E6CC: LateIdLdVar var_A0 DispID_22 0
  loc_63E6D3: CStrVarTmp
  loc_63E6D4: PopTmpLdAdStr
  loc_63E6D8: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_63E6DD: FStFPR8 var_AC
  loc_63E6E0: ImpAdLdFPR8 MemVar_74C35C
  loc_63E6E3: FLdFPR8 var_AC
  loc_63E6E6: CR8R8
  loc_63E6E7: GtR4
  loc_63E6E8: FFree1Str var_A4
  loc_63E6EB: FFreeAd var_8C = ""
  loc_63E6F2: FFree1Var var_A0 = ""
  loc_63E6F5: BranchF loc_63E7A8
  loc_63E6F8: FLdRfVar var_8C
  loc_63E6FB: FLdPr Me
  loc_63E6FE:  = Me.ActiveControl
  loc_63E703: FLdZeroAd var_8C
  loc_63E706: CVarAd
  loc_63E70A: CBoolVarNull
  loc_63E70C: FFree1Var var_A0 = ""
  loc_63E70F: BranchF loc_63E739
  loc_63E712: FLdRfVar var_90
  loc_63E715: ILdI2 arg_C
  loc_63E718: FLdPrThis
  loc_63E719: VCallAd Control_ID_txtPrecio
  loc_63E71C: FStAdFunc var_8C
  loc_63E71F: FLdPr var_8C
  loc_63E722: Set from_stack_2 = Me(from_stack_1)
  loc_63E727: FLdPr var_90
  loc_63E72A: LateIdCall
  loc_63E732: FFreeAd var_8C = ""
  loc_63E739: LitVar_Missing var_120
  loc_63E73C: LitVar_Missing var_100
  loc_63E73F: LitVarStr var_D0, "Ingreso de precios"
  loc_63E744: FStVarCopyObj var_E0
  loc_63E747: FLdRfVar var_E0
  loc_63E74A: LitI4 &H40
  loc_63E74F: LitStr "El precio minimo editable para la opción decimal "
  loc_63E752: ImpAdLdUI1
  loc_63E756: CStrI2
  loc_63E758: FStStrNoPop var_A4
  loc_63E75B: ConcatStr
  loc_63E75C: FStStrNoPop var_B0
  loc_63E75F: LitStr " es "
  loc_63E762: ConcatStr
  loc_63E763: FStStrNoPop var_B4
  loc_63E766: ImpAdLdFPR8 MemVar_74C35C
  loc_63E769: CStrR8
  loc_63E76B: FStStrNoPop var_B8
  loc_63E76E: ConcatStr
  loc_63E76F: FStStrNoPop var_BC
  loc_63E772: LitStr " "
  loc_63E775: ConcatStr
  loc_63E776: FStStrNoPop var_C0
  loc_63E779: ImpAdLdI4 MemVar_74BED0
  loc_63E77C: ConcatStr
  loc_63E77D: CVarStr var_A0
  loc_63E780: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63E785: FFreeStr var_A4 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_63E794: FFreeVar var_A0 = "": var_E0 = "": var_100 = ""
  loc_63E79F: ExitProcCbHresult
  loc_63E7A5: Branch loc_63E8B6
  loc_63E7A8: ImpAdLdI2 MemVar_74C6B8
  loc_63E7AB: LitI2_Byte &HFF
  loc_63E7AD: EqI2
  loc_63E7AE: BranchF loc_63E854
  loc_63E7B1: FLdRfVar var_90
  loc_63E7B4: ILdI2 arg_C
  loc_63E7B7: FLdPrThis
  loc_63E7B8: VCallAd Control_ID_txtPrecio
  loc_63E7BB: FStAdFunc var_8C
  loc_63E7BE: FLdPr var_8C
  loc_63E7C1: Set from_stack_2 = Me(from_stack_1)
  loc_63E7C6: FLdPr var_90
  loc_63E7C9: LateIdLdVar var_A0 DispID_22 0
  loc_63E7D0: CStrVarTmp
  loc_63E7D1: PopTmpLdAdStr
  loc_63E7D5: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_63E7DA: CR8R8
  loc_63E7DB: LitI2_Byte 0
  loc_63E7DD: CR8I2
  loc_63E7DE: NeR8
  loc_63E7DF: FFree1Str var_A4
  loc_63E7E2: FFreeAd var_8C = ""
  loc_63E7E9: FFree1Var var_A0 = ""
  loc_63E7EC: BranchF loc_63E851
  loc_63E7EF: FLdRfVar var_90
  loc_63E7F2: ILdI2 arg_C
  loc_63E7F5: FLdPrThis
  loc_63E7F6: VCallAd Control_ID_txtPrecio
  loc_63E7F9: FStAdFunc var_8C
  loc_63E7FC: FLdPr var_8C
  loc_63E7FF: Set from_stack_2 = Me(from_stack_1)
  loc_63E804: FLdPr var_90
  loc_63E807: LateIdLdVar var_A0 DispID_22 0
  loc_63E80E: CStrVarTmp
  loc_63E80F: PopTmpLdAdStr
  loc_63E813: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_63E818: CCyR4
  loc_63E819: FLdRfVar var_B0
  loc_63E81C: FLdPrThis
  loc_63E81D: VCallAd Control_ID_txtNivel
  loc_63E820: FStAdFunc var_124
  loc_63E823: FLdPr var_124
  loc_63E826:  = Me.Text
  loc_63E82B: ILdRf var_B0
  loc_63E82E: CI2Str
  loc_63E830: CI4UI1
  loc_63E831: ILdI2 arg_C
  loc_63E834: CI4UI1
  loc_63E835: ImpAdLdRf MemVar_74C074
  loc_63E838: AryLdPr
  loc_63E83B: MemStR8 global_0
  loc_63E83E: FFreeStr var_A4 = ""
  loc_63E845: FFreeAd var_8C = "": var_90 = ""
  loc_63E84E: FFree1Var var_A0 = ""
  loc_63E851: Branch loc_63E8B6
  loc_63E854: FLdRfVar var_90
  loc_63E857: ILdI2 arg_C
  loc_63E85A: FLdPrThis
  loc_63E85B: VCallAd Control_ID_txtPrecio
  loc_63E85E: FStAdFunc var_8C
  loc_63E861: FLdPr var_8C
  loc_63E864: Set from_stack_2 = Me(from_stack_1)
  loc_63E869: FLdPr var_90
  loc_63E86C: LateIdLdVar var_A0 DispID_22 0
  loc_63E873: CStrVarTmp
  loc_63E874: PopTmpLdAdStr
  loc_63E878: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_63E87D: CCyR4
  loc_63E87E: FLdRfVar var_B0
  loc_63E881: FLdPrThis
  loc_63E882: VCallAd Control_ID_txtNivel
  loc_63E885: FStAdFunc var_124
  loc_63E888: FLdPr var_124
  loc_63E88B:  = Me.Text
  loc_63E890: ILdRf var_B0
  loc_63E893: CI2Str
  loc_63E895: CI4UI1
  loc_63E896: ILdI2 arg_C
  loc_63E899: CI4UI1
  loc_63E89A: ImpAdLdRf MemVar_74C074
  loc_63E89D: AryLdPr
  loc_63E8A0: MemStR8 global_0
  loc_63E8A3: FFreeStr var_A4 = ""
  loc_63E8AA: FFreeAd var_8C = "": var_90 = ""
  loc_63E8B3: FFree1Var var_A0 = ""
  loc_63E8B6: LitI2_Byte &HFF
  loc_63E8B8: FStI2 var_86
  loc_63E8BB: ExitProcCbHresult
  loc_63E8C1: ExitProcCbHresult
End Function

Private Function Proc_104_56_5D3424() '5D3424
  'Data Table: 444EE4
  loc_5D3404: LitDate 0.9999
  loc_5D340D: LitI2_Byte &HA
  loc_5D340F: CR8I2
  loc_5D3410: ImpAdLdUI1
  loc_5D3414: CR8I2
  loc_5D3415: PwrR8R8
  loc_5D3417: MulR8
  loc_5D3418: FStFPR4 var_88
  loc_5D341B: ExitProcCbHresult
End Function

Private Function Proc_104_57_5DD108(arg_C) '5DD108
  'Data Table: 444EE4
  loc_5DD0BC: ZeroRetVal
  loc_5DD0BE: LitI4 1
  loc_5DD0C3: ILdI4 arg_C
  loc_5DD0C6: LitStr ","
  loc_5DD0C9: LitI4 0
  loc_5DD0CE: FnInStr4
  loc_5DD0D0: LitI4 0
  loc_5DD0D5: GtI4
  loc_5DD0D6: BranchF loc_5DD0F9
  loc_5DD0D9: ILdRf arg_C
  loc_5DD0DC: LitI4 1
  loc_5DD0E1: ILdI4 arg_C
  loc_5DD0E4: LitStr ","
  loc_5DD0E7: LitI4 0
  loc_5DD0EC: FnInStr4
  loc_5DD0EE: LitI4 1
  loc_5DD0F3: LitStr "."
  loc_5DD0F6: MidStr arg_0
  loc_5DD0F9: ILdI4 arg_C
  loc_5DD0FC: FStStrCopy var_88
  loc_5DD0FF: ExitProcCbHresult
  loc_5DD105: FLdRfVar arg_0
End Function

Private Function Proc_104_58_5F28A8(arg_C) '5F28A8
  'Data Table: 444EE4
  loc_5F280C: ZeroRetVal
  loc_5F280E: LitI4 1
  loc_5F2813: ILdI4 arg_C
  loc_5F2816: LitStr ","
  loc_5F2819: LitI4 0
  loc_5F281E: FnInStr4
  loc_5F2820: CI2I4
  loc_5F2821: FStI2 var_8A
  loc_5F2824: LitI2_Byte 0
  loc_5F2826: FLdI2 var_8A
  loc_5F2829: LtI2
  loc_5F282A: BranchF loc_5F2859
  loc_5F282D: FLdI2 var_8A
  loc_5F2830: LitI2_Byte 1
  loc_5F2832: SubI2
  loc_5F2833: CVarI2 var_BC
  loc_5F2836: LitI4 1
  loc_5F283B: ILdRf arg_C
  loc_5F283E: CVarRef
  loc_5F2843: FLdRfVar var_CC
  loc_5F2846: ImpAdCallFPR4  = Mid(, , )
  loc_5F284B: FLdRfVar var_CC
  loc_5F284E: CStrVarTmp
  loc_5F284F: FStStr var_88
  loc_5F2852: FFreeVar var_BC = ""
  loc_5F2859: FLdI2 var_8A
  loc_5F285C: CI4UI1
  loc_5F285D: ILdI4 arg_C
  loc_5F2860: FnLenStr
  loc_5F2861: LtI4
  loc_5F2862: BranchF loc_5F2899
  loc_5F2865: ILdRf var_88
  loc_5F2868: CVarStr var_DC
  loc_5F286B: LitVar_Missing var_BC
  loc_5F286E: FLdI2 var_8A
  loc_5F2871: LitI2_Byte 1
  loc_5F2873: AddI2
  loc_5F2874: CI4UI1
  loc_5F2875: ILdRf arg_C
  loc_5F2878: CVarRef
  loc_5F287D: FLdRfVar var_CC
  loc_5F2880: ImpAdCallFPR4  = Mid(, , )
  loc_5F2885: FLdRfVar var_CC
  loc_5F2888: ConcatVar var_EC
  loc_5F288C: CStrVarTmp
  loc_5F288D: FStStr var_88
  loc_5F2890: FFreeVar var_BC = "": var_CC = ""
  loc_5F2899: ILdRf var_88
  loc_5F289C: IStStrCopy arg_C
  loc_5F28A0: ExitProcCbHresult
  loc_5F28A6: ExitProcR4
End Function

Private Function Proc_104_59_632458(arg_C, arg_10, arg_14) '632458
  'Data Table: 444EE4
  loc_632290: ZeroRetValVar
  loc_632292: OnErrorGoto loc_63244A
  loc_632295: FLdRfVar var_A2
  loc_632298: LitStr "/reporte.mdb"
  loc_63229B: FStStrCopy var_A0
  loc_63229E: FLdRfVar var_A0
  loc_6322A1: ImpAdLdRf MemVar_74DC6C
  loc_6322A4: NewIfNullPr Reportes_Anteriores
  loc_6322A7: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_6322AC: FFree1Str var_A0
  loc_6322AF: FLdRfVar var_E0
  loc_6322B2: LitVar_Missing var_DC
  loc_6322B5: PopAdLdVar
  loc_6322B6: LitVar_Missing var_CC
  loc_6322B9: PopAdLdVar
  loc_6322BA: LitVar_Missing var_BC
  loc_6322BD: PopAdLdVar
  loc_6322BE: LitStr "SELECT * FROM  Modulos where id =  "
  loc_6322C1: ILdI2 arg_C
  loc_6322C4: CStrUI1
  loc_6322C6: FStStrNoPop var_A0
  loc_6322C9: ConcatStr
  loc_6322CA: FStStrNoPop var_AC
  loc_6322CD: FLdRfVar var_A8
  loc_6322D0: ImpAdLdRf MemVar_74DC6C
  loc_6322D3: NewIfNullPr Reportes_Anteriores
  loc_6322D6: from_stack_1v = Reportes_Anteriores.DBaseGet()
  loc_6322DB: FLdPr var_A8
  loc_6322DE: Reportes_Anteriores.Database.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6322E3: FLdZeroAd var_E0
  loc_6322E6: FStAdFunc var_9C
  loc_6322E9: FFreeStr var_A0 = ""
  loc_6322F0: FFree1Ad var_A8
  loc_6322F3: FLdRfVar var_F0
  loc_6322F6: FLdRfVar var_E0
  loc_6322F9: LitVarI2 var_BC, 3
  loc_6322FE: PopAdLdVar
  loc_6322FF: FLdRfVar var_A8
  loc_632302: FLdPr var_9C
  loc_632305:  = Me.Fields
  loc_63230A: FLdPr var_A8
  loc_63230D: from_stack_2 = Me.Item(from_stack_1)
  loc_632312: FLdPr var_E0
  loc_632315:  = Me.Value
  loc_63231A: FLdRfVar var_F0
  loc_63231D: CBoolVarNull
  loc_63231F: FFreeAd var_A8 = ""
  loc_632326: FFree1Var var_F0 = ""
  loc_632329: BranchF loc_632436
  loc_63232C: ILdI2 arg_14
  loc_63232F: CStrUI1
  loc_632331: FStStrNoPop var_A0
  loc_632334: ImpAdLdPr unk_444EF5
  loc_632337: MemLdStr global_0
  loc_63233A: ConcatStr
  loc_63233B: FStStr var_98
  loc_63233E: FFree1Str var_A0
  loc_632341: LitI2_Byte &HFF
  loc_632343: PopTmpLdAd2 var_F2
  loc_632346: LitI2_Byte &H1F
  loc_632348: PopTmpLdAd2 var_A2
  loc_63234B: LitStr " "
  loc_63234E: FStStrCopy var_A0
  loc_632351: FLdRfVar var_A0
  loc_632354: FLdRfVar var_98
  loc_632357: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_63235C: FStStr var_98
  loc_63235F: FFree1Str var_A0
  loc_632362: ILdI2 arg_10
  loc_632365: BranchF loc_632394
  loc_632368: ILdRf var_98
  loc_63236B: FLdRfVar var_A0
  loc_63236E: ILdRf arg_C
  loc_632371: ImpAdLdRf MemVar_74A21C
  loc_632374: NewIfNullPr clsSecurity
  loc_632377: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_63237C: ILdRf var_A0
  loc_63237F: ConcatStr
  loc_632380: FStStrNoPop var_AC
  loc_632383: LitStr "(Con Acceso)"
  loc_632386: ConcatStr
  loc_632387: FStStr var_98
  loc_63238A: FFreeStr var_A0 = ""
  loc_632391: Branch loc_6323BD
  loc_632394: ILdRf var_98
  loc_632397: FLdRfVar var_A0
  loc_63239A: ILdRf arg_C
  loc_63239D: ImpAdLdRf MemVar_74A21C
  loc_6323A0: NewIfNullPr clsSecurity
  loc_6323A3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6323A8: ILdRf var_A0
  loc_6323AB: ConcatStr
  loc_6323AC: FStStrNoPop var_AC
  loc_6323AF: LitStr "(Sin Acceso)"
  loc_6323B2: ConcatStr
  loc_6323B3: FStStr var_98
  loc_6323B6: FFreeStr var_A0 = ""
  loc_6323BD: LitI2_Byte &HFF
  loc_6323BF: PopTmpLdAd2 var_F2
  loc_6323C2: LitI2 131
  loc_6323C5: PopTmpLdAd2 var_A2
  loc_6323C8: LitStr " "
  loc_6323CB: FStStrCopy var_A0
  loc_6323CE: FLdRfVar var_A0
  loc_6323D1: FLdRfVar var_98
  loc_6323D4: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_6323D9: FStStr var_98
  loc_6323DC: FFree1Str var_A0
  loc_6323DF: FLdRfVar var_A2
  loc_6323E2: FLdRfVar var_98
  loc_6323E5: FLdRfVar var_A8
  loc_6323E8: ImpAdLdRf MemVar_74C760
  loc_6323EB: NewIfNullPr Formx
  loc_6323EE: from_stack_1v = Formx.global_4589716Get()
  loc_6323F3: FLdPr var_A8
  loc_6323F6: Call 0.Method_arg_324 ()
  loc_6323FB: FLdI2 var_A2
  loc_6323FE: NotI4
  loc_6323FF: FFree1Ad var_A8
  loc_632402: BranchF loc_632436
  loc_632405: FLdRfVar var_F0
  loc_632408: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63240D: FLdRfVar var_F0
  loc_632410: CBoolVarNull
  loc_632412: FFree1Var var_F0 = ""
  loc_632415: BranchF loc_632433
  loc_632418: ILdRf Me
  loc_63241B: FStAdNoPop
  loc_63241F: ImpAdLdRf MemVar_7520D4
  loc_632422: NewIfNullPr Global
  loc_632425: Global.Unload from_stack_1
  loc_63242A: FFree1Ad var_A8
  loc_63242D: ExitProcCbHresult
  loc_632433: Branch loc_6323DF
  loc_632436: FLdRfVar var_A2
  loc_632439: ImpAdLdRf MemVar_74DC6C
  loc_63243C: NewIfNullPr Reportes_Anteriores
  loc_63243F: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_632444: ExitProcCbHresult
  loc_63244A: ImpAdCallFPR4 Proc_87_15_5C8864()
  loc_63244F: ExitProcCbHresult
  loc_632455: HardType
  loc_632456: FStStr arg_6C02
End Function
