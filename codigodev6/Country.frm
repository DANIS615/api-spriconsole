VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form Country
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 2475
  ClientTop = 1200
  ClientWidth = 8745
  ClientHeight = 7440
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 13.5
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 7275
    TabIndex = 18
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox txtLongitudAbrev
      Left = 6480
      Top = 2160
      Width = 1695
      Height = 495
      TabIndex = 3
      MaxLength = 5
    End
    Begin VB.TextBox txtLongitud
      Left = 2400
      Top = 2160
      Width = 3855
      Height = 495
      TabIndex = 2
      MaxLength = 20
    End
    Begin VB.TextBox txtDescripcionCUIT
      Left = 2400
      Top = 5760
      Width = 3855
      Height = 480
      TabIndex = 14
      MaxLength = 20
    End
    Begin VB.TextBox txtAbrebiaturaCUIT
      Left = 6480
      Top = 5760
      Width = 1695
      Height = 495
      TabIndex = 15
      MaxLength = 5
    End
    Begin VB.TextBox txtMoneda
      Left = 2400
      Top = 2760
      Width = 3855
      Height = 480
      TabIndex = 4
      MaxLength = 15
    End
    Begin VB.TextBox txtVolumen
      Left = 2400
      Top = 1575
      Width = 3855
      Height = 480
      TabIndex = 0
      MaxLength = 15
    End
    Begin VB.TextBox txtVolumenAbrev
      Left = 6480
      Top = 1575
      Width = 1695
      Height = 480
      TabIndex = 1
      MaxLength = 5
    End
    Begin VB.TextBox txtMonedaAbrev
      Left = 6480
      Top = 2760
      Width = 1695
      Height = 480
      TabIndex = 5
      MaxLength = 5
    End
    Begin VB.TextBox txtSurtidor
      Left = 2400
      Top = 3360
      Width = 3855
      Height = 480
      TabIndex = 6
      MaxLength = 20
    End
    Begin VB.TextBox txtManguera
      Left = 2400
      Top = 4560
      Width = 3855
      Height = 480
      TabIndex = 10
      MaxLength = 20
    End
    Begin VB.TextBox txtMangueraAbrev
      Left = 6480
      Top = 4560
      Width = 1695
      Height = 495
      TabIndex = 11
      MaxLength = 5
    End
    Begin VB.TextBox txtSurtidorAbrev
      Left = 6480
      Top = 3360
      Width = 1695
      Height = 480
      TabIndex = 7
      MaxLength = 5
    End
    Begin VB.TextBox txtSurtidoresAbrev
      Left = 6480
      Top = 3960
      Width = 1695
      Height = 495
      TabIndex = 9
      MaxLength = 5
    End
    Begin VB.TextBox txtSurtidores
      Left = 2400
      Top = 3960
      Width = 3855
      Height = 480
      TabIndex = 8
      MaxLength = 20
    End
    Begin VB.TextBox txtGasAbrev
      Left = 6480
      Top = 5160
      Width = 1695
      Height = 480
      TabIndex = 13
      MaxLength = 5
    End
    Begin VB.TextBox txtGas
      Left = 2400
      Top = 5160
      Width = 3855
      Height = 480
      TabIndex = 12
      MaxLength = 20
    End
    Begin Threed.SSCommand sscmdAceptar
      Left = 5820
      Top = 6360
      Width = 2415
      Height = 735
      TabIndex = 16
      OleObjectBlob = "Country.frx":0000
    End
    Begin Threed.SSCommand sscmdCancelar
      Left = 3240
      Top = 6360
      Width = 2355
      Height = 735
      TabIndex = 17
      OleObjectBlob = "Country.frx":0064
    End
    Begin VB.Label Label2
      Caption = "Longitud :"
      Left = 360
      Top = 2280
      Width = 1935
      Height = 375
      TabIndex = 29
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label Label1
      Caption = "CUIT :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 5880
      Width = 2055
      Height = 375
      TabIndex = 28
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label lblVolumen
      Caption = "Volumen :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 1680
      Width = 2055
      Height = 375
      TabIndex = 27
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label lblMoneda
      Caption = "Moneda :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 2880
      Width = 2055
      Height = 375
      TabIndex = 26
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label Label3
      Caption = "Descripción"
      ForeColor = &H0&
      Left = 2400
      Top = 1080
      Width = 3855
      Height = 375
      TabIndex = 25
      Alignment = 2 'Center
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
    Begin VB.Label Label4
      Caption = "Abreviatura"
      ForeColor = &H0&
      Left = 6480
      Top = 1080
      Width = 1695
      Height = 375
      TabIndex = 24
      Alignment = 2 'Center
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
    Begin VB.Label lblSurtidor
      Caption = "Surtidor :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 3480
      Width = 2055
      Height = 375
      TabIndex = 23
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label lblManguera
      Caption = "Manguera :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 4680
      Width = 2055
      Height = 375
      TabIndex = 22
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label lblTitulo
      Caption = "Datos Regionales"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 60
      Top = 240
      Width = 8415
      Height = 495
      TabIndex = 21
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
    Begin VB.Label lblSurtidores
      Caption = "Surtidores :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 4080
      Width = 2055
      Height = 375
      TabIndex = 20
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin VB.Label lblGas
      Caption = "Volumen Gas :"
      BackColor = &H404040&
      ForeColor = &H0&
      Left = 240
      Top = 5280
      Width = 2055
      Height = 375
      TabIndex = 19
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
  End
End

Attribute VB_Name = "Country"


Private Sub Form_Load() '6940D4
  'Data Table: 44E4A0
  loc_693AC8: FLdRfVar var_1D4
  loc_693ACB: LitVar_Missing var_1D0
  loc_693ACE: LitVar_Missing var_1B0
  loc_693AD1: LitVar_Missing var_190
  loc_693AD4: LitVar_Missing var_170
  loc_693AD7: LitVar_Missing var_150
  loc_693ADA: LitVar_Missing var_130
  loc_693ADD: LitVar_Missing var_110
  loc_693AE0: LitVar_Missing var_F0
  loc_693AE3: LitVar_Missing var_D0
  loc_693AE6: LitVar_Missing var_B0
  loc_693AE9: LitStr "Datos Regionales"
  loc_693AEC: FStStrCopy var_90
  loc_693AEF: FLdRfVar var_90
  loc_693AF2: LitI4 1
  loc_693AF7: PopTmpLdAdStr var_8C
  loc_693AFA: LitI2_Byte &H44
  loc_693AFC: PopTmpLdAd2 var_86
  loc_693AFF: ImpAdLdRf MemVar_74C7D0
  loc_693B02: NewIfNullPr clsMsg
  loc_693B05: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693B0A: ILdRf var_1D4
  loc_693B0D: FLdPrThis
  loc_693B0E: VCallAd Control_ID_lblTitulo
  loc_693B11: FStAdFunc var_1D8
  loc_693B14: FLdPr var_1D8
  loc_693B17: Me.Caption = from_stack_1
  loc_693B1C: FFreeStr var_90 = ""
  loc_693B23: FFree1Ad var_1D8
  loc_693B26: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693B3D: FLdRfVar var_1D4
  loc_693B40: LitVar_Missing var_1D0
  loc_693B43: LitVar_Missing var_1B0
  loc_693B46: LitVar_Missing var_190
  loc_693B49: LitVar_Missing var_170
  loc_693B4C: LitVar_Missing var_150
  loc_693B4F: LitVar_Missing var_130
  loc_693B52: LitVar_Missing var_110
  loc_693B55: LitVar_Missing var_F0
  loc_693B58: LitVar_Missing var_D0
  loc_693B5B: LitVar_Missing var_B0
  loc_693B5E: LitStr "Descripción"
  loc_693B61: FStStrCopy var_90
  loc_693B64: FLdRfVar var_90
  loc_693B67: LitI4 2
  loc_693B6C: PopTmpLdAdStr var_8C
  loc_693B6F: LitI2_Byte &H44
  loc_693B71: PopTmpLdAd2 var_86
  loc_693B74: ImpAdLdRf MemVar_74C7D0
  loc_693B77: NewIfNullPr clsMsg
  loc_693B7A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693B7F: ILdRf var_1D4
  loc_693B82: FLdPrThis
  loc_693B83: VCallAd Control_ID_Label3
  loc_693B86: FStAdFunc var_1D8
  loc_693B89: FLdPr var_1D8
  loc_693B8C: Me.Caption = from_stack_1
  loc_693B91: FFreeStr var_90 = ""
  loc_693B98: FFree1Ad var_1D8
  loc_693B9B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693BB2: FLdRfVar var_1D4
  loc_693BB5: LitVar_Missing var_1D0
  loc_693BB8: LitVar_Missing var_1B0
  loc_693BBB: LitVar_Missing var_190
  loc_693BBE: LitVar_Missing var_170
  loc_693BC1: LitVar_Missing var_150
  loc_693BC4: LitVar_Missing var_130
  loc_693BC7: LitVar_Missing var_110
  loc_693BCA: LitVar_Missing var_F0
  loc_693BCD: LitVar_Missing var_D0
  loc_693BD0: LitVar_Missing var_B0
  loc_693BD3: LitStr "Abreviatura"
  loc_693BD6: FStStrCopy var_90
  loc_693BD9: FLdRfVar var_90
  loc_693BDC: LitI4 3
  loc_693BE1: PopTmpLdAdStr var_8C
  loc_693BE4: LitI2_Byte &H44
  loc_693BE6: PopTmpLdAd2 var_86
  loc_693BE9: ImpAdLdRf MemVar_74C7D0
  loc_693BEC: NewIfNullPr clsMsg
  loc_693BEF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693BF4: ILdRf var_1D4
  loc_693BF7: FLdPrThis
  loc_693BF8: VCallAd Control_ID_Label4
  loc_693BFB: FStAdFunc var_1D8
  loc_693BFE: FLdPr var_1D8
  loc_693C01: Me.Caption = from_stack_1
  loc_693C06: FFreeStr var_90 = ""
  loc_693C0D: FFree1Ad var_1D8
  loc_693C10: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693C27: FLdRfVar var_1D4
  loc_693C2A: LitVar_Missing var_1D0
  loc_693C2D: LitVar_Missing var_1B0
  loc_693C30: LitVar_Missing var_190
  loc_693C33: LitVar_Missing var_170
  loc_693C36: LitVar_Missing var_150
  loc_693C39: LitVar_Missing var_130
  loc_693C3C: LitVar_Missing var_110
  loc_693C3F: LitVar_Missing var_F0
  loc_693C42: LitVar_Missing var_D0
  loc_693C45: LitVar_Missing var_B0
  loc_693C48: LitStr "Volumen:"
  loc_693C4B: FStStrCopy var_90
  loc_693C4E: FLdRfVar var_90
  loc_693C51: LitI4 4
  loc_693C56: PopTmpLdAdStr var_8C
  loc_693C59: LitI2_Byte &H44
  loc_693C5B: PopTmpLdAd2 var_86
  loc_693C5E: ImpAdLdRf MemVar_74C7D0
  loc_693C61: NewIfNullPr clsMsg
  loc_693C64: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693C69: ILdRf var_1D4
  loc_693C6C: FLdPrThis
  loc_693C6D: VCallAd Control_ID_lblVolumen
  loc_693C70: FStAdFunc var_1D8
  loc_693C73: FLdPr var_1D8
  loc_693C76: Me.Caption = from_stack_1
  loc_693C7B: FFreeStr var_90 = ""
  loc_693C82: FFree1Ad var_1D8
  loc_693C85: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693C9C: FLdRfVar var_1D4
  loc_693C9F: LitVar_Missing var_1D0
  loc_693CA2: LitVar_Missing var_1B0
  loc_693CA5: LitVar_Missing var_190
  loc_693CA8: LitVar_Missing var_170
  loc_693CAB: LitVar_Missing var_150
  loc_693CAE: LitVar_Missing var_130
  loc_693CB1: LitVar_Missing var_110
  loc_693CB4: LitVar_Missing var_F0
  loc_693CB7: LitVar_Missing var_D0
  loc_693CBA: LitVar_Missing var_B0
  loc_693CBD: LitStr "Moneda:"
  loc_693CC0: FStStrCopy var_90
  loc_693CC3: FLdRfVar var_90
  loc_693CC6: LitI4 5
  loc_693CCB: PopTmpLdAdStr var_8C
  loc_693CCE: LitI2_Byte &H44
  loc_693CD0: PopTmpLdAd2 var_86
  loc_693CD3: ImpAdLdRf MemVar_74C7D0
  loc_693CD6: NewIfNullPr clsMsg
  loc_693CD9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693CDE: ILdRf var_1D4
  loc_693CE1: FLdPrThis
  loc_693CE2: VCallAd Control_ID_lblMoneda
  loc_693CE5: FStAdFunc var_1D8
  loc_693CE8: FLdPr var_1D8
  loc_693CEB: Me.Caption = from_stack_1
  loc_693CF0: FFreeStr var_90 = ""
  loc_693CF7: FFree1Ad var_1D8
  loc_693CFA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693D11: FLdRfVar var_1D4
  loc_693D14: LitVar_Missing var_1D0
  loc_693D17: LitVar_Missing var_1B0
  loc_693D1A: LitVar_Missing var_190
  loc_693D1D: LitVar_Missing var_170
  loc_693D20: LitVar_Missing var_150
  loc_693D23: LitVar_Missing var_130
  loc_693D26: LitVar_Missing var_110
  loc_693D29: LitVar_Missing var_F0
  loc_693D2C: LitVar_Missing var_D0
  loc_693D2F: LitVar_Missing var_B0
  loc_693D32: LitStr "Surtidor:"
  loc_693D35: FStStrCopy var_90
  loc_693D38: FLdRfVar var_90
  loc_693D3B: LitI4 6
  loc_693D40: PopTmpLdAdStr var_8C
  loc_693D43: LitI2_Byte &H44
  loc_693D45: PopTmpLdAd2 var_86
  loc_693D48: ImpAdLdRf MemVar_74C7D0
  loc_693D4B: NewIfNullPr clsMsg
  loc_693D4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693D53: ILdRf var_1D4
  loc_693D56: FLdPrThis
  loc_693D57: VCallAd Control_ID_lblSurtidor
  loc_693D5A: FStAdFunc var_1D8
  loc_693D5D: FLdPr var_1D8
  loc_693D60: Me.Caption = from_stack_1
  loc_693D65: FFreeStr var_90 = ""
  loc_693D6C: FFree1Ad var_1D8
  loc_693D6F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693D86: FLdRfVar var_1D4
  loc_693D89: LitVar_Missing var_1D0
  loc_693D8C: LitVar_Missing var_1B0
  loc_693D8F: LitVar_Missing var_190
  loc_693D92: LitVar_Missing var_170
  loc_693D95: LitVar_Missing var_150
  loc_693D98: LitVar_Missing var_130
  loc_693D9B: LitVar_Missing var_110
  loc_693D9E: LitVar_Missing var_F0
  loc_693DA1: LitVar_Missing var_D0
  loc_693DA4: LitVar_Missing var_B0
  loc_693DA7: LitStr "Surtidores:"
  loc_693DAA: FStStrCopy var_90
  loc_693DAD: FLdRfVar var_90
  loc_693DB0: LitI4 7
  loc_693DB5: PopTmpLdAdStr var_8C
  loc_693DB8: LitI2_Byte &H44
  loc_693DBA: PopTmpLdAd2 var_86
  loc_693DBD: ImpAdLdRf MemVar_74C7D0
  loc_693DC0: NewIfNullPr clsMsg
  loc_693DC3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693DC8: ILdRf var_1D4
  loc_693DCB: FLdPrThis
  loc_693DCC: VCallAd Control_ID_lblSurtidores
  loc_693DCF: FStAdFunc var_1D8
  loc_693DD2: FLdPr var_1D8
  loc_693DD5: Me.Caption = from_stack_1
  loc_693DDA: FFreeStr var_90 = ""
  loc_693DE1: FFree1Ad var_1D8
  loc_693DE4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693DFB: FLdRfVar var_1D4
  loc_693DFE: LitVar_Missing var_1D0
  loc_693E01: LitVar_Missing var_1B0
  loc_693E04: LitVar_Missing var_190
  loc_693E07: LitVar_Missing var_170
  loc_693E0A: LitVar_Missing var_150
  loc_693E0D: LitVar_Missing var_130
  loc_693E10: LitVar_Missing var_110
  loc_693E13: LitVar_Missing var_F0
  loc_693E16: LitVar_Missing var_D0
  loc_693E19: LitVar_Missing var_B0
  loc_693E1C: LitStr "Manguera:"
  loc_693E1F: FStStrCopy var_90
  loc_693E22: FLdRfVar var_90
  loc_693E25: LitI4 8
  loc_693E2A: PopTmpLdAdStr var_8C
  loc_693E2D: LitI2_Byte &H44
  loc_693E2F: PopTmpLdAd2 var_86
  loc_693E32: ImpAdLdRf MemVar_74C7D0
  loc_693E35: NewIfNullPr clsMsg
  loc_693E38: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693E3D: ILdRf var_1D4
  loc_693E40: FLdPrThis
  loc_693E41: VCallAd Control_ID_lblManguera
  loc_693E44: FStAdFunc var_1D8
  loc_693E47: FLdPr var_1D8
  loc_693E4A: Me.Caption = from_stack_1
  loc_693E4F: FFreeStr var_90 = ""
  loc_693E56: FFree1Ad var_1D8
  loc_693E59: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693E70: FLdRfVar var_1D4
  loc_693E73: LitVar_Missing var_1D0
  loc_693E76: LitVar_Missing var_1B0
  loc_693E79: LitVar_Missing var_190
  loc_693E7C: LitVar_Missing var_170
  loc_693E7F: LitVar_Missing var_150
  loc_693E82: LitVar_Missing var_130
  loc_693E85: LitVar_Missing var_110
  loc_693E88: LitVar_Missing var_F0
  loc_693E8B: LitVar_Missing var_D0
  loc_693E8E: LitVar_Missing var_B0
  loc_693E91: LitStr "Volumen Gas:"
  loc_693E94: FStStrCopy var_90
  loc_693E97: FLdRfVar var_90
  loc_693E9A: LitI4 9
  loc_693E9F: PopTmpLdAdStr var_8C
  loc_693EA2: LitI2_Byte &H44
  loc_693EA4: PopTmpLdAd2 var_86
  loc_693EA7: ImpAdLdRf MemVar_74C7D0
  loc_693EAA: NewIfNullPr clsMsg
  loc_693EAD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693EB2: ILdRf var_1D4
  loc_693EB5: FLdPrThis
  loc_693EB6: VCallAd Control_ID_lblGas
  loc_693EB9: FStAdFunc var_1D8
  loc_693EBC: FLdPr var_1D8
  loc_693EBF: Me.Caption = from_stack_1
  loc_693EC4: FFreeStr var_90 = ""
  loc_693ECB: FFree1Ad var_1D8
  loc_693ECE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693EE5: FLdRfVar var_1D4
  loc_693EE8: LitVar_Missing var_1D0
  loc_693EEB: LitVar_Missing var_1B0
  loc_693EEE: LitVar_Missing var_190
  loc_693EF1: LitVar_Missing var_170
  loc_693EF4: LitVar_Missing var_150
  loc_693EF7: LitVar_Missing var_130
  loc_693EFA: LitVar_Missing var_110
  loc_693EFD: LitVar_Missing var_F0
  loc_693F00: LitVar_Missing var_D0
  loc_693F03: LitVar_Missing var_B0
  loc_693F06: LitStr "CUIT"
  loc_693F09: FStStrCopy var_90
  loc_693F0C: FLdRfVar var_90
  loc_693F0F: LitI4 &HA
  loc_693F14: PopTmpLdAdStr var_8C
  loc_693F17: LitI2_Byte &H44
  loc_693F19: PopTmpLdAd2 var_86
  loc_693F1C: ImpAdLdRf MemVar_74C7D0
  loc_693F1F: NewIfNullPr clsMsg
  loc_693F22: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693F27: ILdRf var_1D4
  loc_693F2A: FLdPrThis
  loc_693F2B: VCallAd Control_ID_Label1
  loc_693F2E: FStAdFunc var_1D8
  loc_693F31: FLdPr var_1D8
  loc_693F34: Me.Caption = from_stack_1
  loc_693F39: FFreeStr var_90 = ""
  loc_693F40: FFree1Ad var_1D8
  loc_693F43: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_693F5A: FLdRfVar var_1D4
  loc_693F5D: LitVar_Missing var_1D0
  loc_693F60: LitVar_Missing var_1B0
  loc_693F63: LitVar_Missing var_190
  loc_693F66: LitVar_Missing var_170
  loc_693F69: LitVar_Missing var_150
  loc_693F6C: LitVar_Missing var_130
  loc_693F6F: LitVar_Missing var_110
  loc_693F72: LitVar_Missing var_F0
  loc_693F75: LitVar_Missing var_D0
  loc_693F78: LitVar_Missing var_B0
  loc_693F7B: LitStr "&Cancelar"
  loc_693F7E: FStStrCopy var_90
  loc_693F81: FLdRfVar var_90
  loc_693F84: LitI4 &HB
  loc_693F89: PopTmpLdAdStr var_8C
  loc_693F8C: LitI2_Byte &H44
  loc_693F8E: PopTmpLdAd2 var_86
  loc_693F91: ImpAdLdRf MemVar_74C7D0
  loc_693F94: NewIfNullPr clsMsg
  loc_693F97: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693F9C: FLdZeroAd var_1D4
  loc_693F9F: CVarStr var_1E8
  loc_693FA2: PopAdLdVar
  loc_693FA3: FLdPrThis
  loc_693FA4: VCallAd Control_ID_sscmdCancelar
  loc_693FA7: FStAdFunc var_1D8
  loc_693FAA: FLdPr var_1D8
  loc_693FAD: LateIdSt
  loc_693FB2: FFree1Str var_90
  loc_693FB5: FFree1Ad var_1D8
  loc_693FB8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_693FD1: FLdRfVar var_1D4
  loc_693FD4: LitVar_Missing var_1D0
  loc_693FD7: LitVar_Missing var_1B0
  loc_693FDA: LitVar_Missing var_190
  loc_693FDD: LitVar_Missing var_170
  loc_693FE0: LitVar_Missing var_150
  loc_693FE3: LitVar_Missing var_130
  loc_693FE6: LitVar_Missing var_110
  loc_693FE9: LitVar_Missing var_F0
  loc_693FEC: LitVar_Missing var_D0
  loc_693FEF: LitVar_Missing var_B0
  loc_693FF2: LitStr "&Aceptar"
  loc_693FF5: FStStrCopy var_90
  loc_693FF8: FLdRfVar var_90
  loc_693FFB: LitI4 &HC
  loc_694000: PopTmpLdAdStr var_8C
  loc_694003: LitI2_Byte &H44
  loc_694005: PopTmpLdAd2 var_86
  loc_694008: ImpAdLdRf MemVar_74C7D0
  loc_69400B: NewIfNullPr clsMsg
  loc_69400E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_694013: FLdZeroAd var_1D4
  loc_694016: CVarStr var_1E8
  loc_694019: PopAdLdVar
  loc_69401A: FLdPrThis
  loc_69401B: VCallAd Control_ID_sscmdAceptar
  loc_69401E: FStAdFunc var_1D8
  loc_694021: FLdPr var_1D8
  loc_694024: LateIdSt
  loc_694029: FFree1Str var_90
  loc_69402C: FFree1Ad var_1D8
  loc_69402F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_694048: FLdRfVar var_1D4
  loc_69404B: LitVar_Missing var_1D0
  loc_69404E: LitVar_Missing var_1B0
  loc_694051: LitVar_Missing var_190
  loc_694054: LitVar_Missing var_170
  loc_694057: LitVar_Missing var_150
  loc_69405A: LitVar_Missing var_130
  loc_69405D: LitVar_Missing var_110
  loc_694060: LitVar_Missing var_F0
  loc_694063: LitVar_Missing var_D0
  loc_694066: LitVar_Missing var_B0
  loc_694069: LitStr "Longitud:"
  loc_69406C: FStStrCopy var_90
  loc_69406F: FLdRfVar var_90
  loc_694072: LitI4 &H32
  loc_694077: PopTmpLdAdStr var_8C
  loc_69407A: LitI2_Byte &H44
  loc_69407C: PopTmpLdAd2 var_86
  loc_69407F: ImpAdLdRf MemVar_74C7D0
  loc_694082: NewIfNullPr clsMsg
  loc_694085: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69408A: ILdRf var_1D4
  loc_69408D: FLdPrThis
  loc_69408E: VCallAd Control_ID_Label2
  loc_694091: FStAdFunc var_1D8
  loc_694094: FLdPr var_1D8
  loc_694097: Me.Caption = from_stack_1
  loc_69409C: FFreeStr var_90 = ""
  loc_6940A3: FFree1Ad var_1D8
  loc_6940A6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6940BD: ILdRf Me
  loc_6940C0: CastAd
  loc_6940C3: FStAdFunc var_1D8
  loc_6940C6: FLdRfVar var_1D8
  loc_6940C9: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6940CE: FFree1Ad var_1D8
  loc_6940D1: ExitProcHresult
  loc_6940D2: ExitProc
End Sub

Private Sub Form_Activate() '61D8F8
  'Data Table: 44E4A0
  loc_61D7A4: ImpAdLdI4 MemVar_74BEBC
  loc_61D7A7: FLdPrThis
  loc_61D7A8: VCallAd Control_ID_txtVolumen
  loc_61D7AB: FStAdFunc var_88
  loc_61D7AE: FLdPr var_88
  loc_61D7B1: Me.Text = from_stack_1
  loc_61D7B6: FFree1Ad var_88
  loc_61D7B9: ImpAdLdI4 MemVar_74BEC0
  loc_61D7BC: FLdPrThis
  loc_61D7BD: VCallAd Control_ID_txtVolumenAbrev
  loc_61D7C0: FStAdFunc var_88
  loc_61D7C3: FLdPr var_88
  loc_61D7C6: Me.Text = from_stack_1
  loc_61D7CB: FFree1Ad var_88
  loc_61D7CE: ImpAdLdI4 MemVar_74BECC
  loc_61D7D1: FLdPrThis
  loc_61D7D2: VCallAd Control_ID_txtMoneda
  loc_61D7D5: FStAdFunc var_88
  loc_61D7D8: FLdPr var_88
  loc_61D7DB: Me.Text = from_stack_1
  loc_61D7E0: FFree1Ad var_88
  loc_61D7E3: ImpAdLdI4 MemVar_74BED0
  loc_61D7E6: FLdPrThis
  loc_61D7E7: VCallAd Control_ID_txtMonedaAbrev
  loc_61D7EA: FStAdFunc var_88
  loc_61D7ED: FLdPr var_88
  loc_61D7F0: Me.Text = from_stack_1
  loc_61D7F5: FFree1Ad var_88
  loc_61D7F8: ImpAdLdI4 MemVar_74BED4
  loc_61D7FB: FLdPrThis
  loc_61D7FC: VCallAd Control_ID_txtSurtidor
  loc_61D7FF: FStAdFunc var_88
  loc_61D802: FLdPr var_88
  loc_61D805: Me.Text = from_stack_1
  loc_61D80A: FFree1Ad var_88
  loc_61D80D: ImpAdLdI4 MemVar_74BED8
  loc_61D810: FLdPrThis
  loc_61D811: VCallAd Control_ID_txtSurtidorAbrev
  loc_61D814: FStAdFunc var_88
  loc_61D817: FLdPr var_88
  loc_61D81A: Me.Text = from_stack_1
  loc_61D81F: FFree1Ad var_88
  loc_61D822: ImpAdLdI4 MemVar_74BEDC
  loc_61D825: FLdPrThis
  loc_61D826: VCallAd Control_ID_txtManguera
  loc_61D829: FStAdFunc var_88
  loc_61D82C: FLdPr var_88
  loc_61D82F: Me.Text = from_stack_1
  loc_61D834: FFree1Ad var_88
  loc_61D837: ImpAdLdI4 MemVar_74BEE0
  loc_61D83A: FLdPrThis
  loc_61D83B: VCallAd Control_ID_txtMangueraAbrev
  loc_61D83E: FStAdFunc var_88
  loc_61D841: FLdPr var_88
  loc_61D844: Me.Text = from_stack_1
  loc_61D849: FFree1Ad var_88
  loc_61D84C: ImpAdLdI4 MemVar_74BEE4
  loc_61D84F: FLdPrThis
  loc_61D850: VCallAd Control_ID_txtSurtidores
  loc_61D853: FStAdFunc var_88
  loc_61D856: FLdPr var_88
  loc_61D859: Me.Text = from_stack_1
  loc_61D85E: FFree1Ad var_88
  loc_61D861: ImpAdLdI4 MemVar_74BEE8
  loc_61D864: FLdPrThis
  loc_61D865: VCallAd Control_ID_txtSurtidoresAbrev
  loc_61D868: FStAdFunc var_88
  loc_61D86B: FLdPr var_88
  loc_61D86E: Me.Text = from_stack_1
  loc_61D873: FFree1Ad var_88
  loc_61D876: ImpAdLdI4 MemVar_74BEEC
  loc_61D879: FLdPrThis
  loc_61D87A: VCallAd Control_ID_txtGas
  loc_61D87D: FStAdFunc var_88
  loc_61D880: FLdPr var_88
  loc_61D883: Me.Text = from_stack_1
  loc_61D888: FFree1Ad var_88
  loc_61D88B: ImpAdLdI4 MemVar_74BEF0
  loc_61D88E: FLdPrThis
  loc_61D88F: VCallAd Control_ID_txtGasAbrev
  loc_61D892: FStAdFunc var_88
  loc_61D895: FLdPr var_88
  loc_61D898: Me.Text = from_stack_1
  loc_61D89D: FFree1Ad var_88
  loc_61D8A0: ImpAdLdI4 MemVar_74BEF4
  loc_61D8A3: FLdPrThis
  loc_61D8A4: VCallAd Control_ID_txtDescripcionCUIT
  loc_61D8A7: FStAdFunc var_88
  loc_61D8AA: FLdPr var_88
  loc_61D8AD: Me.Text = from_stack_1
  loc_61D8B2: FFree1Ad var_88
  loc_61D8B5: ImpAdLdI4 MemVar_74BEF8
  loc_61D8B8: FLdPrThis
  loc_61D8B9: VCallAd Control_ID_txtAbrebiaturaCUIT
  loc_61D8BC: FStAdFunc var_88
  loc_61D8BF: FLdPr var_88
  loc_61D8C2: Me.Text = from_stack_1
  loc_61D8C7: FFree1Ad var_88
  loc_61D8CA: ImpAdLdI4 MemVar_74BEC4
  loc_61D8CD: FLdPrThis
  loc_61D8CE: VCallAd Control_ID_txtLongitud
  loc_61D8D1: FStAdFunc var_88
  loc_61D8D4: FLdPr var_88
  loc_61D8D7: Me.Text = from_stack_1
  loc_61D8DC: FFree1Ad var_88
  loc_61D8DF: ImpAdLdI4 MemVar_74BEC8
  loc_61D8E2: FLdPrThis
  loc_61D8E3: VCallAd Control_ID_txtLongitudAbrev
  loc_61D8E6: FStAdFunc var_88
  loc_61D8E9: FLdPr var_88
  loc_61D8EC: Me.Text = from_stack_1
  loc_61D8F1: FFree1Ad var_88
  loc_61D8F4: ExitProcHresult
End Sub

Private Sub sscmdAceptar_UnknownEvent_8 '6B4F60
  'Data Table: 44E4A0
  loc_6B4760: FLdRfVar var_90
  loc_6B4763: FLdPrThis
  loc_6B4764: VCallAd Control_ID_txtVolumen
  loc_6B4767: FStAdFunc var_8C
  loc_6B476A: FLdPr var_8C
  loc_6B476D:  = Me.Text
  loc_6B4772: FLdZeroAd var_90
  loc_6B4775: CVarStr var_A0
  loc_6B4778: FLdRfVar var_B0
  loc_6B477B: ImpAdCallFPR4  = Trim()
  loc_6B4780: FLdRfVar var_B0
  loc_6B4783: CStrVarTmp
  loc_6B4784: ImpAdStStr MemVar_74BEBC
  loc_6B4788: FFree1Ad var_8C
  loc_6B478B: FFreeVar var_A0 = ""
  loc_6B4792: FLdRfVar var_90
  loc_6B4795: FLdPrThis
  loc_6B4796: VCallAd Control_ID_txtVolumenAbrev
  loc_6B4799: FStAdFunc var_8C
  loc_6B479C: FLdPr var_8C
  loc_6B479F:  = Me.Text
  loc_6B47A4: FLdZeroAd var_90
  loc_6B47A7: CVarStr var_A0
  loc_6B47AA: FLdRfVar var_B0
  loc_6B47AD: ImpAdCallFPR4  = Trim()
  loc_6B47B2: FLdRfVar var_B0
  loc_6B47B5: CStrVarTmp
  loc_6B47B6: ImpAdStStr MemVar_74BEC0
  loc_6B47BA: FFree1Ad var_8C
  loc_6B47BD: FFreeVar var_A0 = ""
  loc_6B47C4: FLdRfVar var_90
  loc_6B47C7: FLdPrThis
  loc_6B47C8: VCallAd Control_ID_txtMoneda
  loc_6B47CB: FStAdFunc var_8C
  loc_6B47CE: FLdPr var_8C
  loc_6B47D1:  = Me.Text
  loc_6B47D6: FLdZeroAd var_90
  loc_6B47D9: CVarStr var_A0
  loc_6B47DC: FLdRfVar var_B0
  loc_6B47DF: ImpAdCallFPR4  = Trim()
  loc_6B47E4: FLdRfVar var_B0
  loc_6B47E7: CStrVarTmp
  loc_6B47E8: ImpAdStStr MemVar_74BECC
  loc_6B47EC: FFree1Ad var_8C
  loc_6B47EF: FFreeVar var_A0 = ""
  loc_6B47F6: FLdRfVar var_90
  loc_6B47F9: FLdPrThis
  loc_6B47FA: VCallAd Control_ID_txtMonedaAbrev
  loc_6B47FD: FStAdFunc var_8C
  loc_6B4800: FLdPr var_8C
  loc_6B4803:  = Me.Text
  loc_6B4808: FLdZeroAd var_90
  loc_6B480B: CVarStr var_A0
  loc_6B480E: FLdRfVar var_B0
  loc_6B4811: ImpAdCallFPR4  = Trim()
  loc_6B4816: FLdRfVar var_B0
  loc_6B4819: CStrVarTmp
  loc_6B481A: ImpAdStStr MemVar_74BED0
  loc_6B481E: FFree1Ad var_8C
  loc_6B4821: FFreeVar var_A0 = ""
  loc_6B4828: FLdRfVar var_90
  loc_6B482B: FLdPrThis
  loc_6B482C: VCallAd Control_ID_txtSurtidor
  loc_6B482F: FStAdFunc var_8C
  loc_6B4832: FLdPr var_8C
  loc_6B4835:  = Me.Text
  loc_6B483A: FLdZeroAd var_90
  loc_6B483D: CVarStr var_A0
  loc_6B4840: FLdRfVar var_B0
  loc_6B4843: ImpAdCallFPR4  = Trim()
  loc_6B4848: FLdRfVar var_B0
  loc_6B484B: CStrVarTmp
  loc_6B484C: ImpAdStStr MemVar_74BED4
  loc_6B4850: FFree1Ad var_8C
  loc_6B4853: FFreeVar var_A0 = ""
  loc_6B485A: FLdRfVar var_90
  loc_6B485D: FLdPrThis
  loc_6B485E: VCallAd Control_ID_txtSurtidorAbrev
  loc_6B4861: FStAdFunc var_8C
  loc_6B4864: FLdPr var_8C
  loc_6B4867:  = Me.Text
  loc_6B486C: FLdZeroAd var_90
  loc_6B486F: CVarStr var_A0
  loc_6B4872: FLdRfVar var_B0
  loc_6B4875: ImpAdCallFPR4  = Trim()
  loc_6B487A: FLdRfVar var_B0
  loc_6B487D: CStrVarTmp
  loc_6B487E: ImpAdStStr MemVar_74BED8
  loc_6B4882: FFree1Ad var_8C
  loc_6B4885: FFreeVar var_A0 = ""
  loc_6B488C: FLdRfVar var_90
  loc_6B488F: FLdPrThis
  loc_6B4890: VCallAd Control_ID_txtManguera
  loc_6B4893: FStAdFunc var_8C
  loc_6B4896: FLdPr var_8C
  loc_6B4899:  = Me.Text
  loc_6B489E: FLdZeroAd var_90
  loc_6B48A1: CVarStr var_A0
  loc_6B48A4: FLdRfVar var_B0
  loc_6B48A7: ImpAdCallFPR4  = Trim()
  loc_6B48AC: FLdRfVar var_B0
  loc_6B48AF: CStrVarTmp
  loc_6B48B0: ImpAdStStr MemVar_74BEDC
  loc_6B48B4: FFree1Ad var_8C
  loc_6B48B7: FFreeVar var_A0 = ""
  loc_6B48BE: FLdRfVar var_90
  loc_6B48C1: FLdPrThis
  loc_6B48C2: VCallAd Control_ID_txtMangueraAbrev
  loc_6B48C5: FStAdFunc var_8C
  loc_6B48C8: FLdPr var_8C
  loc_6B48CB:  = Me.Text
  loc_6B48D0: FLdZeroAd var_90
  loc_6B48D3: CVarStr var_A0
  loc_6B48D6: FLdRfVar var_B0
  loc_6B48D9: ImpAdCallFPR4  = Trim()
  loc_6B48DE: FLdRfVar var_B0
  loc_6B48E1: CStrVarTmp
  loc_6B48E2: ImpAdStStr MemVar_74BEE0
  loc_6B48E6: FFree1Ad var_8C
  loc_6B48E9: FFreeVar var_A0 = ""
  loc_6B48F0: FLdRfVar var_90
  loc_6B48F3: FLdPrThis
  loc_6B48F4: VCallAd Control_ID_txtSurtidores
  loc_6B48F7: FStAdFunc var_8C
  loc_6B48FA: FLdPr var_8C
  loc_6B48FD:  = Me.Text
  loc_6B4902: FLdZeroAd var_90
  loc_6B4905: CVarStr var_A0
  loc_6B4908: FLdRfVar var_B0
  loc_6B490B: ImpAdCallFPR4  = Trim()
  loc_6B4910: FLdRfVar var_B0
  loc_6B4913: CStrVarTmp
  loc_6B4914: ImpAdStStr MemVar_74BEE4
  loc_6B4918: FFree1Ad var_8C
  loc_6B491B: FFreeVar var_A0 = ""
  loc_6B4922: FLdRfVar var_90
  loc_6B4925: FLdPrThis
  loc_6B4926: VCallAd Control_ID_txtSurtidoresAbrev
  loc_6B4929: FStAdFunc var_8C
  loc_6B492C: FLdPr var_8C
  loc_6B492F:  = Me.Text
  loc_6B4934: FLdZeroAd var_90
  loc_6B4937: CVarStr var_A0
  loc_6B493A: FLdRfVar var_B0
  loc_6B493D: ImpAdCallFPR4  = Trim()
  loc_6B4942: FLdRfVar var_B0
  loc_6B4945: CStrVarTmp
  loc_6B4946: ImpAdStStr MemVar_74BEE8
  loc_6B494A: FFree1Ad var_8C
  loc_6B494D: FFreeVar var_A0 = ""
  loc_6B4954: FLdRfVar var_90
  loc_6B4957: FLdPrThis
  loc_6B4958: VCallAd Control_ID_txtGas
  loc_6B495B: FStAdFunc var_8C
  loc_6B495E: FLdPr var_8C
  loc_6B4961:  = Me.Text
  loc_6B4966: FLdZeroAd var_90
  loc_6B4969: CVarStr var_A0
  loc_6B496C: FLdRfVar var_B0
  loc_6B496F: ImpAdCallFPR4  = Trim()
  loc_6B4974: FLdRfVar var_B0
  loc_6B4977: CStrVarTmp
  loc_6B4978: ImpAdStStr MemVar_74BEEC
  loc_6B497C: FFree1Ad var_8C
  loc_6B497F: FFreeVar var_A0 = ""
  loc_6B4986: FLdRfVar var_90
  loc_6B4989: FLdPrThis
  loc_6B498A: VCallAd Control_ID_txtGasAbrev
  loc_6B498D: FStAdFunc var_8C
  loc_6B4990: FLdPr var_8C
  loc_6B4993:  = Me.Text
  loc_6B4998: FLdZeroAd var_90
  loc_6B499B: CVarStr var_A0
  loc_6B499E: FLdRfVar var_B0
  loc_6B49A1: ImpAdCallFPR4  = Trim()
  loc_6B49A6: FLdRfVar var_B0
  loc_6B49A9: CStrVarTmp
  loc_6B49AA: ImpAdStStr MemVar_74BEF0
  loc_6B49AE: FFree1Ad var_8C
  loc_6B49B1: FFreeVar var_A0 = ""
  loc_6B49B8: FLdRfVar var_90
  loc_6B49BB: FLdPrThis
  loc_6B49BC: VCallAd Control_ID_txtDescripcionCUIT
  loc_6B49BF: FStAdFunc var_8C
  loc_6B49C2: FLdPr var_8C
  loc_6B49C5:  = Me.Text
  loc_6B49CA: FLdZeroAd var_90
  loc_6B49CD: CVarStr var_A0
  loc_6B49D0: FLdRfVar var_B0
  loc_6B49D3: ImpAdCallFPR4  = Trim()
  loc_6B49D8: FLdRfVar var_B0
  loc_6B49DB: CStrVarTmp
  loc_6B49DC: ImpAdStStr MemVar_74BEF4
  loc_6B49E0: FFree1Ad var_8C
  loc_6B49E3: FFreeVar var_A0 = ""
  loc_6B49EA: FLdRfVar var_90
  loc_6B49ED: FLdPrThis
  loc_6B49EE: VCallAd Control_ID_txtAbrebiaturaCUIT
  loc_6B49F1: FStAdFunc var_8C
  loc_6B49F4: FLdPr var_8C
  loc_6B49F7:  = Me.Text
  loc_6B49FC: FLdZeroAd var_90
  loc_6B49FF: CVarStr var_A0
  loc_6B4A02: FLdRfVar var_B0
  loc_6B4A05: ImpAdCallFPR4  = Trim()
  loc_6B4A0A: FLdRfVar var_B0
  loc_6B4A0D: CStrVarTmp
  loc_6B4A0E: ImpAdStStr MemVar_74BEF8
  loc_6B4A12: FFree1Ad var_8C
  loc_6B4A15: FFreeVar var_A0 = ""
  loc_6B4A1C: FLdRfVar var_90
  loc_6B4A1F: FLdPrThis
  loc_6B4A20: VCallAd Control_ID_txtLongitud
  loc_6B4A23: FStAdFunc var_8C
  loc_6B4A26: FLdPr var_8C
  loc_6B4A29:  = Me.Text
  loc_6B4A2E: FLdZeroAd var_90
  loc_6B4A31: CVarStr var_A0
  loc_6B4A34: FLdRfVar var_B0
  loc_6B4A37: ImpAdCallFPR4  = Trim()
  loc_6B4A3C: FLdRfVar var_B0
  loc_6B4A3F: CStrVarTmp
  loc_6B4A40: ImpAdStStr MemVar_74BEC4
  loc_6B4A44: FFree1Ad var_8C
  loc_6B4A47: FFreeVar var_A0 = ""
  loc_6B4A4E: FLdRfVar var_90
  loc_6B4A51: FLdPrThis
  loc_6B4A52: VCallAd Control_ID_txtLongitudAbrev
  loc_6B4A55: FStAdFunc var_8C
  loc_6B4A58: FLdPr var_8C
  loc_6B4A5B:  = Me.Text
  loc_6B4A60: FLdZeroAd var_90
  loc_6B4A63: CVarStr var_A0
  loc_6B4A66: FLdRfVar var_B0
  loc_6B4A69: ImpAdCallFPR4  = Trim()
  loc_6B4A6E: FLdRfVar var_B0
  loc_6B4A71: CStrVarTmp
  loc_6B4A72: ImpAdStStr MemVar_74BEC8
  loc_6B4A76: FFree1Ad var_8C
  loc_6B4A79: FFreeVar var_A0 = ""
  loc_6B4A80: LitI4 1
  loc_6B4A85: LitI4 1
  loc_6B4A8A: LitVarStr var_D0, "!@@@@@@@@@@@@@@@"
  loc_6B4A8F: FStVarCopyObj var_A0
  loc_6B4A92: FLdRfVar var_A0
  loc_6B4A95: ImpAdLdRf MemVar_74BEBC
  loc_6B4A98: CVarRef
  loc_6B4A9D: FLdRfVar var_B0
  loc_6B4AA0: ImpAdCallFPR4  = Format(, )
  loc_6B4AA5: FLdRfVar var_B0
  loc_6B4AA8: CStrVarTmp
  loc_6B4AA9: FStStr var_88
  loc_6B4AAC: FFreeVar var_A0 = ""
  loc_6B4AB3: ILdRf var_88
  loc_6B4AB6: CVarStr var_E0
  loc_6B4AB9: LitI4 1
  loc_6B4ABE: LitI4 1
  loc_6B4AC3: LitVarStr var_D0, "!@@@@@@@@@@@@@@@"
  loc_6B4AC8: FStVarCopyObj var_A0
  loc_6B4ACB: FLdRfVar var_A0
  loc_6B4ACE: ImpAdLdRf MemVar_74BECC
  loc_6B4AD1: CVarRef
  loc_6B4AD6: FLdRfVar var_B0
  loc_6B4AD9: ImpAdCallFPR4  = Format(, )
  loc_6B4ADE: FLdRfVar var_B0
  loc_6B4AE1: ConcatVar var_F0
  loc_6B4AE5: CStrVarTmp
  loc_6B4AE6: FStStr var_88
  loc_6B4AE9: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4AF2: ILdRf var_88
  loc_6B4AF5: CVarStr var_E0
  loc_6B4AF8: LitI4 1
  loc_6B4AFD: LitI4 1
  loc_6B4B02: LitVarStr var_D0, "!@@@@@"
  loc_6B4B07: FStVarCopyObj var_A0
  loc_6B4B0A: FLdRfVar var_A0
  loc_6B4B0D: ImpAdLdRf MemVar_74BEC0
  loc_6B4B10: CVarRef
  loc_6B4B15: FLdRfVar var_B0
  loc_6B4B18: ImpAdCallFPR4  = Format(, )
  loc_6B4B1D: FLdRfVar var_B0
  loc_6B4B20: ConcatVar var_F0
  loc_6B4B24: CStrVarTmp
  loc_6B4B25: FStStr var_88
  loc_6B4B28: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4B31: ILdRf var_88
  loc_6B4B34: CVarStr var_E0
  loc_6B4B37: LitI4 1
  loc_6B4B3C: LitI4 1
  loc_6B4B41: LitVarStr var_D0, "!@@@@@"
  loc_6B4B46: FStVarCopyObj var_A0
  loc_6B4B49: FLdRfVar var_A0
  loc_6B4B4C: ImpAdLdRf MemVar_74BED0
  loc_6B4B4F: CVarRef
  loc_6B4B54: FLdRfVar var_B0
  loc_6B4B57: ImpAdCallFPR4  = Format(, )
  loc_6B4B5C: FLdRfVar var_B0
  loc_6B4B5F: ConcatVar var_F0
  loc_6B4B63: CStrVarTmp
  loc_6B4B64: FStStr var_88
  loc_6B4B67: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4B70: LitVarStr var_C0, "@"
  loc_6B4B75: FStVarCopyObj var_A0
  loc_6B4B78: FLdRfVar var_A0
  loc_6B4B7B: LitI4 &H14
  loc_6B4B80: FLdRfVar var_B0
  loc_6B4B83: ImpAdCallFPR4  = String(, )
  loc_6B4B88: ILdRf var_88
  loc_6B4B8B: CVarStr var_110
  loc_6B4B8E: LitI4 1
  loc_6B4B93: LitI4 1
  loc_6B4B98: LitVarStr var_D0, "!"
  loc_6B4B9D: FLdRfVar var_B0
  loc_6B4BA0: ConcatVar var_F0
  loc_6B4BA4: ImpAdLdRf MemVar_74BED4
  loc_6B4BA7: CVarRef
  loc_6B4BAC: FLdRfVar var_100
  loc_6B4BAF: ImpAdCallFPR4  = Format(, )
  loc_6B4BB4: FLdRfVar var_100
  loc_6B4BB7: ConcatVar var_120
  loc_6B4BBB: CStrVarTmp
  loc_6B4BBC: FStStr var_88
  loc_6B4BBF: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_100 = ""
  loc_6B4BCC: LitVarStr var_C0, "@"
  loc_6B4BD1: FStVarCopyObj var_A0
  loc_6B4BD4: FLdRfVar var_A0
  loc_6B4BD7: LitI4 &H14
  loc_6B4BDC: FLdRfVar var_B0
  loc_6B4BDF: ImpAdCallFPR4  = String(, )
  loc_6B4BE4: ILdRf var_88
  loc_6B4BE7: CVarStr var_110
  loc_6B4BEA: LitI4 1
  loc_6B4BEF: LitI4 1
  loc_6B4BF4: LitVarStr var_D0, "!"
  loc_6B4BF9: FLdRfVar var_B0
  loc_6B4BFC: ConcatVar var_F0
  loc_6B4C00: ImpAdLdRf MemVar_74BEDC
  loc_6B4C03: CVarRef
  loc_6B4C08: FLdRfVar var_100
  loc_6B4C0B: ImpAdCallFPR4  = Format(, )
  loc_6B4C10: FLdRfVar var_100
  loc_6B4C13: ConcatVar var_120
  loc_6B4C17: CStrVarTmp
  loc_6B4C18: FStStr var_88
  loc_6B4C1B: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_100 = ""
  loc_6B4C28: ILdRf var_88
  loc_6B4C2B: CVarStr var_E0
  loc_6B4C2E: LitI4 1
  loc_6B4C33: LitI4 1
  loc_6B4C38: LitVarStr var_D0, "!@@@@@"
  loc_6B4C3D: FStVarCopyObj var_A0
  loc_6B4C40: FLdRfVar var_A0
  loc_6B4C43: ImpAdLdRf MemVar_74BED8
  loc_6B4C46: CVarRef
  loc_6B4C4B: FLdRfVar var_B0
  loc_6B4C4E: ImpAdCallFPR4  = Format(, )
  loc_6B4C53: FLdRfVar var_B0
  loc_6B4C56: ConcatVar var_F0
  loc_6B4C5A: CStrVarTmp
  loc_6B4C5B: FStStr var_88
  loc_6B4C5E: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4C67: ILdRf var_88
  loc_6B4C6A: CVarStr var_E0
  loc_6B4C6D: LitI4 1
  loc_6B4C72: LitI4 1
  loc_6B4C77: LitVarStr var_D0, "!@@@@@"
  loc_6B4C7C: FStVarCopyObj var_A0
  loc_6B4C7F: FLdRfVar var_A0
  loc_6B4C82: ImpAdLdRf MemVar_74BEE0
  loc_6B4C85: CVarRef
  loc_6B4C8A: FLdRfVar var_B0
  loc_6B4C8D: ImpAdCallFPR4  = Format(, )
  loc_6B4C92: FLdRfVar var_B0
  loc_6B4C95: ConcatVar var_F0
  loc_6B4C99: CStrVarTmp
  loc_6B4C9A: FStStr var_88
  loc_6B4C9D: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4CA6: LitVarStr var_C0, "@"
  loc_6B4CAB: FStVarCopyObj var_A0
  loc_6B4CAE: FLdRfVar var_A0
  loc_6B4CB1: LitI4 &H14
  loc_6B4CB6: FLdRfVar var_B0
  loc_6B4CB9: ImpAdCallFPR4  = String(, )
  loc_6B4CBE: ILdRf var_88
  loc_6B4CC1: CVarStr var_110
  loc_6B4CC4: LitI4 1
  loc_6B4CC9: LitI4 1
  loc_6B4CCE: LitVarStr var_D0, "!"
  loc_6B4CD3: FLdRfVar var_B0
  loc_6B4CD6: ConcatVar var_F0
  loc_6B4CDA: ImpAdLdRf MemVar_74BEE4
  loc_6B4CDD: CVarRef
  loc_6B4CE2: FLdRfVar var_100
  loc_6B4CE5: ImpAdCallFPR4  = Format(, )
  loc_6B4CEA: FLdRfVar var_100
  loc_6B4CED: ConcatVar var_120
  loc_6B4CF1: CStrVarTmp
  loc_6B4CF2: FStStr var_88
  loc_6B4CF5: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_100 = ""
  loc_6B4D02: LitVarStr var_C0, "@"
  loc_6B4D07: FStVarCopyObj var_A0
  loc_6B4D0A: FLdRfVar var_A0
  loc_6B4D0D: LitI4 &H14
  loc_6B4D12: FLdRfVar var_B0
  loc_6B4D15: ImpAdCallFPR4  = String(, )
  loc_6B4D1A: ILdRf var_88
  loc_6B4D1D: CVarStr var_110
  loc_6B4D20: LitI4 1
  loc_6B4D25: LitI4 1
  loc_6B4D2A: LitVarStr var_D0, "!"
  loc_6B4D2F: FLdRfVar var_B0
  loc_6B4D32: ConcatVar var_F0
  loc_6B4D36: ImpAdLdRf MemVar_74BEEC
  loc_6B4D39: CVarRef
  loc_6B4D3E: FLdRfVar var_100
  loc_6B4D41: ImpAdCallFPR4  = Format(, )
  loc_6B4D46: FLdRfVar var_100
  loc_6B4D49: ConcatVar var_120
  loc_6B4D4D: CStrVarTmp
  loc_6B4D4E: FStStr var_88
  loc_6B4D51: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_100 = ""
  loc_6B4D5E: ILdRf var_88
  loc_6B4D61: CVarStr var_E0
  loc_6B4D64: LitI4 1
  loc_6B4D69: LitI4 1
  loc_6B4D6E: LitVarStr var_D0, "!@@@@@"
  loc_6B4D73: FStVarCopyObj var_A0
  loc_6B4D76: FLdRfVar var_A0
  loc_6B4D79: ImpAdLdRf MemVar_74BEE8
  loc_6B4D7C: CVarRef
  loc_6B4D81: FLdRfVar var_B0
  loc_6B4D84: ImpAdCallFPR4  = Format(, )
  loc_6B4D89: FLdRfVar var_B0
  loc_6B4D8C: ConcatVar var_F0
  loc_6B4D90: CStrVarTmp
  loc_6B4D91: FStStr var_88
  loc_6B4D94: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4D9D: ILdRf var_88
  loc_6B4DA0: CVarStr var_E0
  loc_6B4DA3: LitI4 1
  loc_6B4DA8: LitI4 1
  loc_6B4DAD: LitVarStr var_D0, "!@@@@@"
  loc_6B4DB2: FStVarCopyObj var_A0
  loc_6B4DB5: FLdRfVar var_A0
  loc_6B4DB8: ImpAdLdRf MemVar_74BEF0
  loc_6B4DBB: CVarRef
  loc_6B4DC0: FLdRfVar var_B0
  loc_6B4DC3: ImpAdCallFPR4  = Format(, )
  loc_6B4DC8: FLdRfVar var_B0
  loc_6B4DCB: ConcatVar var_F0
  loc_6B4DCF: CStrVarTmp
  loc_6B4DD0: FStStr var_88
  loc_6B4DD3: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4DDC: LitVarStr var_C0, "@"
  loc_6B4DE1: FStVarCopyObj var_A0
  loc_6B4DE4: FLdRfVar var_A0
  loc_6B4DE7: LitI4 &H14
  loc_6B4DEC: FLdRfVar var_B0
  loc_6B4DEF: ImpAdCallFPR4  = String(, )
  loc_6B4DF4: ILdRf var_88
  loc_6B4DF7: CVarStr var_110
  loc_6B4DFA: LitI4 1
  loc_6B4DFF: LitI4 1
  loc_6B4E04: LitVarStr var_D0, "!"
  loc_6B4E09: FLdRfVar var_B0
  loc_6B4E0C: ConcatVar var_F0
  loc_6B4E10: ImpAdLdRf MemVar_74BEF4
  loc_6B4E13: CVarRef
  loc_6B4E18: FLdRfVar var_100
  loc_6B4E1B: ImpAdCallFPR4  = Format(, )
  loc_6B4E20: FLdRfVar var_100
  loc_6B4E23: ConcatVar var_120
  loc_6B4E27: CStrVarTmp
  loc_6B4E28: FStStr var_88
  loc_6B4E2B: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_100 = ""
  loc_6B4E38: ILdRf var_88
  loc_6B4E3B: CVarStr var_E0
  loc_6B4E3E: LitI4 1
  loc_6B4E43: LitI4 1
  loc_6B4E48: LitVarStr var_D0, "!@@@@@"
  loc_6B4E4D: FStVarCopyObj var_A0
  loc_6B4E50: FLdRfVar var_A0
  loc_6B4E53: ImpAdLdRf MemVar_74BEF8
  loc_6B4E56: CVarRef
  loc_6B4E5B: FLdRfVar var_B0
  loc_6B4E5E: ImpAdCallFPR4  = Format(, )
  loc_6B4E63: FLdRfVar var_B0
  loc_6B4E66: ConcatVar var_F0
  loc_6B4E6A: CStrVarTmp
  loc_6B4E6B: FStStr var_88
  loc_6B4E6E: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4E77: ILdRf var_88
  loc_6B4E7A: CVarStr var_E0
  loc_6B4E7D: LitI4 1
  loc_6B4E82: LitI4 1
  loc_6B4E87: LitVarStr var_D0, "!@@@@@@@@@@@@@@@@@@@@"
  loc_6B4E8C: FStVarCopyObj var_A0
  loc_6B4E8F: FLdRfVar var_A0
  loc_6B4E92: ImpAdLdRf MemVar_74BEC4
  loc_6B4E95: CVarRef
  loc_6B4E9A: FLdRfVar var_B0
  loc_6B4E9D: ImpAdCallFPR4  = Format(, )
  loc_6B4EA2: FLdRfVar var_B0
  loc_6B4EA5: ConcatVar var_F0
  loc_6B4EA9: CStrVarTmp
  loc_6B4EAA: FStStr var_88
  loc_6B4EAD: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4EB6: ILdRf var_88
  loc_6B4EB9: CVarStr var_E0
  loc_6B4EBC: LitI4 1
  loc_6B4EC1: LitI4 1
  loc_6B4EC6: LitVarStr var_D0, "!@@@@@"
  loc_6B4ECB: FStVarCopyObj var_A0
  loc_6B4ECE: FLdRfVar var_A0
  loc_6B4ED1: ImpAdLdRf MemVar_74BEC8
  loc_6B4ED4: CVarRef
  loc_6B4ED9: FLdRfVar var_B0
  loc_6B4EDC: ImpAdCallFPR4  = Format(, )
  loc_6B4EE1: FLdRfVar var_B0
  loc_6B4EE4: ConcatVar var_F0
  loc_6B4EE8: CStrVarTmp
  loc_6B4EE9: FStStr var_88
  loc_6B4EEC: FFreeVar var_A0 = "": var_B0 = ""
  loc_6B4EF5: FLdRfVar var_122
  loc_6B4EF8: FLdRfVar var_88
  loc_6B4EFB: FLdRfVar var_8C
  loc_6B4EFE: ImpAdLdRf MemVar_74C760
  loc_6B4F01: NewIfNullPr Formx
  loc_6B4F04: from_stack_1v = Formx.global_4589716Get()
  loc_6B4F09: FLdPr var_8C
  loc_6B4F0C: Formx.FillColor = from_stack_1
  loc_6B4F11: FLdI2 var_122
  loc_6B4F14: NotI4
  loc_6B4F15: FFree1Ad var_8C
  loc_6B4F18: BranchF loc_6B4F47
  loc_6B4F1B: FLdRfVar var_A0
  loc_6B4F1E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B4F23: FLdRfVar var_A0
  loc_6B4F26: CBoolVarNull
  loc_6B4F28: FFree1Var var_A0 = ""
  loc_6B4F2B: BranchF loc_6B4F44
  loc_6B4F2E: ILdRf Me
  loc_6B4F31: FStAdNoPop
  loc_6B4F35: ImpAdLdRf MemVar_7520D4
  loc_6B4F38: NewIfNullPr Global
  loc_6B4F3B: Global.Unload from_stack_1
  loc_6B4F40: FFree1Ad var_8C
  loc_6B4F43: ExitProcHresult
  loc_6B4F44: Branch loc_6B4EF5
  loc_6B4F47: ILdRf Me
  loc_6B4F4A: FStAdNoPop
  loc_6B4F4E: ImpAdLdRf MemVar_7520D4
  loc_6B4F51: NewIfNullPr Global
  loc_6B4F54: Global.Unload from_stack_1
  loc_6B4F59: FFree1Ad var_8C
  loc_6B4F5C: ExitProcHresult
End Sub

Private Sub sscmdCancelar_UnknownEvent_8 '5D24C4
  'Data Table: 44E4A0
  loc_5D24AC: ILdRf Me
  loc_5D24AF: FStAdNoPop
  loc_5D24B3: ImpAdLdRf MemVar_7520D4
  loc_5D24B6: NewIfNullPr Global
  loc_5D24B9: Global.Unload from_stack_1
  loc_5D24BE: FFree1Ad var_88
  loc_5D24C1: ExitProcHresult
End Sub

Public Function AbrirBD(sValor) '62B990
  'Data Table: 44E4A0
  loc_62B83C: OnErrorGoto loc_62B8A8
  loc_62B83F: LitI2_Byte &HFF
  loc_62B841: FStI2 var_86
  loc_62B844: FLdRfVar var_A4
  loc_62B847: FLdRfVar var_A0
  loc_62B84A: ImpAdLdRf MemVar_7520D4
  loc_62B84D: NewIfNullPr Global
  loc_62B850:  = Global.App
  loc_62B855: FLdPr var_A0
  loc_62B858:  = App.Path
  loc_62B85D: ILdRf var_A4
  loc_62B860: ILdI4 sValor
  loc_62B863: ConcatStr
  loc_62B864: CVarStr var_B4
  loc_62B867: FStVar var_98
  loc_62B86B: FFree1Str var_A4
  loc_62B86E: FFree1Ad var_A0
  loc_62B871: FLdRfVar var_A0
  loc_62B874: LitVar_Missing var_E4
  loc_62B877: PopAdLdVar
  loc_62B878: LitVar_Missing var_D4
  loc_62B87B: PopAdLdVar
  loc_62B87C: LitVar_Missing var_C4
  loc_62B87F: PopAdLdVar
  loc_62B880: FLdRfVar var_98
  loc_62B883: CStrVarVal var_A4
  loc_62B887: ImpAdLdRf MemVar_752164
  loc_62B88A: NewIfNullPr Me
  loc_62B88D: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_62B892: ILdRf var_A0
  loc_62B895: FLdPr Me
  loc_62B898: MemStAd
  loc_62B89C: FFree1Str var_A4
  loc_62B89F: FFree1Ad var_A0
  loc_62B8A2: ExitProcCbHresult
  loc_62B8A8: LitI2_Byte 0
  loc_62B8AA: FStI2 var_86
  loc_62B8AD: FLdRfVar var_1F0
  loc_62B8B0: LitVar_Missing var_1EC
  loc_62B8B3: LitVar_Missing var_1CC
  loc_62B8B6: LitVar_Missing var_1AC
  loc_62B8B9: LitVar_Missing var_18C
  loc_62B8BC: LitVar_Missing var_16C
  loc_62B8BF: LitVar_Missing var_14C
  loc_62B8C2: LitVar_Missing var_12C
  loc_62B8C5: LitVar_Missing var_10C
  loc_62B8C8: LitVar_Missing var_FC
  loc_62B8CB: LitVar_Missing var_B4
  loc_62B8CE: LitStr "Error al abrir base de datos:"
  loc_62B8D1: FStStrCopy var_A4
  loc_62B8D4: FLdRfVar var_A4
  loc_62B8D7: LitI4 &HD
  loc_62B8DC: PopTmpLdAdStr var_EC
  loc_62B8DF: LitI2_Byte &H44
  loc_62B8E1: PopTmpLdAd2 var_E6
  loc_62B8E4: ImpAdLdRf MemVar_74C7D0
  loc_62B8E7: NewIfNullPr clsMsg
  loc_62B8EA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62B8EF: FLdZeroAd var_1F0
  loc_62B8F2: CVarStr var_264
  loc_62B8F5: LitVarStr var_200, " "
  loc_62B8FA: FLdRfVar var_98
  loc_62B8FD: AddVar var_210
  loc_62B901: LitI4 &HD
  loc_62B906: FLdRfVar var_220
  loc_62B909: ImpAdCallFPR4  = Chr()
  loc_62B90E: FLdRfVar var_220
  loc_62B911: AddVar var_230
  loc_62B915: FLdRfVar var_234
  loc_62B918: ImpAdCallI2 Err 'rtcErrObj
  loc_62B91D: FStAdFunc var_A0
  loc_62B920: FLdPr var_A0
  loc_62B923:  = Err.Description
  loc_62B928: FLdZeroAd var_234
  loc_62B92B: CVarStr var_244
  loc_62B92E: AddVar var_254
  loc_62B932: ConcatVar var_274
  loc_62B936: CStrVarTmp
  loc_62B937: FStStr var_9C
  loc_62B93A: FFree1Str var_A4
  loc_62B93D: FFree1Ad var_A0
  loc_62B940: FFreeVar var_B4 = "": var_FC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_210 = "": var_220 = "": var_230 = "": var_244 = "": var_264 = "": var_254 = ""
  loc_62B965: LitVar_Missing var_10C
  loc_62B968: LitVar_Missing var_FC
  loc_62B96B: LitVar_Missing var_B4
  loc_62B96E: LitI4 &H10
  loc_62B973: FLdRfVar var_9C
  loc_62B976: CVarRef
  loc_62B97B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62B980: FFreeVar var_B4 = "": var_FC = ""
  loc_62B989: ExitProcCbHresult
End Function

Public Function BorrarBD(sValor) '64A6E0
  'Data Table: 44E4A0
  loc_64A4C0: OnErrorGoto loc_64A4FA
  loc_64A4C3: LitI2_Byte &HFF
  loc_64A4C5: FStI2 var_86
  loc_64A4C8: LitStr "delete * from "
  loc_64A4CB: ILdI4 sValor
  loc_64A4CE: ConcatStr
  loc_64A4CF: CVarStr var_AC
  loc_64A4D2: FStVar var_98
  loc_64A4D6: LitVarI4
  loc_64A4DE: PopAdLdVar
  loc_64A4DF: FLdRfVar var_98
  loc_64A4E2: CStrVarVal var_B0
  loc_64A4E6: FLdPr Me
  loc_64A4E9: MemLdPr global_52
  loc_64A4EC: Me.Execute from_stack_1, from_stack_2
  loc_64A4F1: FFree1Str var_B0
  loc_64A4F4: ExitProcCbHresult
  loc_64A4FA: LitI2_Byte 0
  loc_64A4FC: FStI2 var_86
  loc_64A4FF: FLdRfVar var_C8
  loc_64A502: ImpAdCallI2 Err 'rtcErrObj
  loc_64A507: FStAdFunc var_C4
  loc_64A50A: FLdPr var_C4
  loc_64A50D:  = Err.Number
  loc_64A512: ILdRf var_C8
  loc_64A515: LitI4 &HC0E
  loc_64A51A: EqI4
  loc_64A51B: FFree1Ad var_C4
  loc_64A51E: BranchF loc_64A5FE
  loc_64A521: FLdRfVar var_1F0
  loc_64A524: LitVar_Missing var_1EC
  loc_64A527: LitVar_Missing var_1CC
  loc_64A52A: LitVar_Missing var_1AC
  loc_64A52D: LitVar_Missing var_18C
  loc_64A530: LitVar_Missing var_16C
  loc_64A533: LitVar_Missing var_14C
  loc_64A536: LitVar_Missing var_12C
  loc_64A539: LitVar_Missing var_10C
  loc_64A53C: LitVar_Missing var_EC
  loc_64A53F: LitVar_Missing var_AC
  loc_64A542: LitStr "Los archivos de impresión estan siendo utilizados. Reintente por favor"
  loc_64A545: FStStrCopy var_B0
  loc_64A548: FLdRfVar var_B0
  loc_64A54B: LitI4 &HE
  loc_64A550: PopTmpLdAdStr var_C8
  loc_64A553: LitI2_Byte &H44
  loc_64A555: PopTmpLdAd2 var_CA
  loc_64A558: ImpAdLdRf MemVar_74C7D0
  loc_64A55B: NewIfNullPr clsMsg
  loc_64A55E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64A563: FLdRfVar var_340
  loc_64A566: LitVar_Missing var_33C
  loc_64A569: LitVar_Missing var_31C
  loc_64A56C: LitVar_Missing var_2FC
  loc_64A56F: LitVar_Missing var_2DC
  loc_64A572: LitVar_Missing var_2BC
  loc_64A575: LitVar_Missing var_29C
  loc_64A578: LitVar_Missing var_27C
  loc_64A57B: LitVar_Missing var_25C
  loc_64A57E: LitVar_Missing var_23C
  loc_64A581: LitVar_Missing var_21C
  loc_64A584: LitStr "Reportes"
  loc_64A587: FStStrCopy var_1FC
  loc_64A58A: FLdRfVar var_1FC
  loc_64A58D: LitI4 &HF
  loc_64A592: PopTmpLdAdStr var_1F8
  loc_64A595: LitI2_Byte &H44
  loc_64A597: PopTmpLdAd2 var_1F2
  loc_64A59A: ImpAdLdRf MemVar_74C7D0
  loc_64A59D: NewIfNullPr clsMsg
  loc_64A5A0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64A5A5: LitVar_Missing var_3A0
  loc_64A5A8: LitVar_Missing var_380
  loc_64A5AB: FLdZeroAd var_340
  loc_64A5AE: CVarStr var_360
  loc_64A5B1: LitI4 &H40
  loc_64A5B6: FLdZeroAd var_1F0
  loc_64A5B9: CVarStr var_350
  loc_64A5BC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64A5C1: FFreeStr var_B0 = ""
  loc_64A5C8: FFreeVar var_AC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_350 = "": var_360 = "": var_380 = ""
  loc_64A5FB: Branch loc_64A6D8
  loc_64A5FE: FLdRfVar var_1F0
  loc_64A601: LitVar_Missing var_1EC
  loc_64A604: LitVar_Missing var_1CC
  loc_64A607: LitVar_Missing var_1AC
  loc_64A60A: LitVar_Missing var_18C
  loc_64A60D: LitVar_Missing var_16C
  loc_64A610: LitVar_Missing var_14C
  loc_64A613: LitVar_Missing var_12C
  loc_64A616: LitVar_Missing var_10C
  loc_64A619: LitVar_Missing var_EC
  loc_64A61C: LitVar_Missing var_AC
  loc_64A61F: LitStr "Error al borrar la tabla:"
  loc_64A622: FStStrCopy var_B0
  loc_64A625: FLdRfVar var_B0
  loc_64A628: LitI4 &H10
  loc_64A62D: PopTmpLdAdStr var_C8
  loc_64A630: LitI2_Byte &H44
  loc_64A632: PopTmpLdAd2 var_CA
  loc_64A635: ImpAdLdRf MemVar_74C7D0
  loc_64A638: NewIfNullPr clsMsg
  loc_64A63B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64A640: FLdZeroAd var_1F0
  loc_64A643: CVarStr var_2BC
  loc_64A646: LitStr " "
  loc_64A649: ILdI4 sValor
  loc_64A64C: ConcatStr
  loc_64A64D: CVarStr var_23C
  loc_64A650: LitI4 &HD
  loc_64A655: FLdRfVar var_21C
  loc_64A658: ImpAdCallFPR4  = Chr()
  loc_64A65D: FLdRfVar var_21C
  loc_64A660: AddVar var_25C
  loc_64A664: FLdRfVar var_1FC
  loc_64A667: ImpAdCallI2 Err 'rtcErrObj
  loc_64A66C: FStAdFunc var_C4
  loc_64A66F: FLdPr var_C4
  loc_64A672:  = Err.Description
  loc_64A677: FLdZeroAd var_1FC
  loc_64A67A: CVarStr var_27C
  loc_64A67D: AddVar var_29C
  loc_64A681: ConcatVar var_2DC
  loc_64A685: CStrVarTmp
  loc_64A686: FStStr var_9C
  loc_64A689: FFree1Str var_B0
  loc_64A68C: FFree1Ad var_C4
  loc_64A68F: FFreeVar var_AC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_23C = "": var_21C = "": var_25C = "": var_27C = "": var_2BC = "": var_29C = ""
  loc_64A6B4: LitVar_Missing var_10C
  loc_64A6B7: LitVar_Missing var_EC
  loc_64A6BA: LitVar_Missing var_AC
  loc_64A6BD: LitI4 &H10
  loc_64A6C2: FLdRfVar var_9C
  loc_64A6C5: CVarRef
  loc_64A6CA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64A6CF: FFreeVar var_AC = "": var_EC = ""
  loc_64A6D8: ExitProcCbHresult
End Function

Public Function CerrarBD() '618208
  'Data Table: 44E4A0
  loc_61811C: OnErrorGoto loc_618135
  loc_61811F: LitI2_Byte &HFF
  loc_618121: FStI2 var_86
  loc_618124: FLdPr Me
  loc_618127: MemLdPr global_52
  loc_61812A: Me.Close
  loc_61812F: ExitProcCbHresult
  loc_618135: LitI2_Byte 0
  loc_618137: FStI2 var_86
  loc_61813A: FLdRfVar var_1DC
  loc_61813D: LitVar_Missing var_1D8
  loc_618140: LitVar_Missing var_1B8
  loc_618143: LitVar_Missing var_198
  loc_618146: LitVar_Missing var_178
  loc_618149: LitVar_Missing var_158
  loc_61814C: LitVar_Missing var_138
  loc_61814F: LitVar_Missing var_118
  loc_618152: LitVar_Missing var_F8
  loc_618155: LitVar_Missing var_D8
  loc_618158: LitVar_Missing var_B8
  loc_61815B: LitStr "Error al cerrar la base de datos"
  loc_61815E: FStStrCopy var_98
  loc_618161: FLdRfVar var_98
  loc_618164: LitI4 &H11
  loc_618169: PopTmpLdAdStr CerrarBD
  loc_61816C: LitI2_Byte &H44
  loc_61816E: PopTmpLdAd2 var_8E
  loc_618171: ImpAdLdRf MemVar_74C7D0
  loc_618174: NewIfNullPr clsMsg
  loc_618177: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61817C: FLdZeroAd var_1DC
  loc_61817F: CVarStr var_1FC
  loc_618182: LitI4 &HD
  loc_618187: FLdRfVar var_1EC
  loc_61818A: ImpAdCallFPR4  = Chr()
  loc_61818F: FLdRfVar var_1EC
  loc_618192: AddVar var_20C
  loc_618196: FLdRfVar var_214
  loc_618199: ImpAdCallI2 Err 'rtcErrObj
  loc_61819E: FStAdFunc var_210
  loc_6181A1: FLdPr var_210
  loc_6181A4:  = Err.Description
  loc_6181A9: FLdZeroAd var_214
  loc_6181AC: CVarStr var_224
  loc_6181AF: AddVar var_234
  loc_6181B3: CStrVarTmp
  loc_6181B4: FStStr var_8C
  loc_6181B7: FFree1Str var_98
  loc_6181BA: FFree1Ad var_210
  loc_6181BD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1FC = "": var_1EC = "": var_20C = "": var_224 = ""
  loc_6181DE: LitVar_Missing var_F8
  loc_6181E1: LitVar_Missing var_D8
  loc_6181E4: LitVar_Missing var_B8
  loc_6181E7: LitI4 &H10
  loc_6181EC: FLdRfVar var_8C
  loc_6181EF: CVarRef
  loc_6181F4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6181F9: FFreeVar var_B8 = "": var_D8 = ""
  loc_618202: ExitProcCbHresult
End Function

Private Function Proc_57_7_5F321C(arg_C) '5F321C
  'Data Table: 44E4A0
  loc_5F3190: OnErrorGoto loc_5F31B0
  loc_5F3193: LitI2_Byte &HFF
  loc_5F3195: FStI2 var_86
  loc_5F3198: LitVar_Missing var_98
  loc_5F319B: PopAdLdVar
  loc_5F319C: ILdI4 arg_C
  loc_5F319F: FLdPr Me
  loc_5F31A2: MemLdPr global_52
  loc_5F31A5: Me.Execute from_stack_1, from_stack_2
  loc_5F31AA: ExitProcCbHresult
  loc_5F31B0: LitVar_Missing var_140
  loc_5F31B3: LitVar_Missing var_120
  loc_5F31B6: LitVar_Missing var_100
  loc_5F31B9: LitI4 0
  loc_5F31BE: ILdI4 arg_C
  loc_5F31C1: CVarStr var_98
  loc_5F31C4: LitI4 &HD
  loc_5F31C9: FLdRfVar var_A8
  loc_5F31CC: ImpAdCallFPR4  = Chr()
  loc_5F31D1: FLdRfVar var_A8
  loc_5F31D4: ConcatVar var_B8
  loc_5F31D8: FLdRfVar var_C0
  loc_5F31DB: ImpAdCallI2 Err 'rtcErrObj
  loc_5F31E0: FStAdFunc var_BC
  loc_5F31E3: FLdPr var_BC
  loc_5F31E6:  = Err.Description
  loc_5F31EB: FLdZeroAd var_C0
  loc_5F31EE: CVarStr var_D0
  loc_5F31F1: ConcatVar var_E0
  loc_5F31F5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F31FA: FFree1Ad var_BC
  loc_5F31FD: FFreeVar var_A8 = "": var_B8 = "": var_D0 = "": var_E0 = "": var_100 = "": var_120 = ""
  loc_5F320E: LitI2_Byte 0
  loc_5F3210: FStI2 var_86
  loc_5F3213: ExitProcCbHresult
End Function

Private Function Proc_57_8_66BB08() '66BB08
  'Data Table: 44E4A0
  loc_66B808: OnErrorGoto loc_66BA9A
  loc_66B80B: FLdRfVar var_8A
  loc_66B80E: LitStr "\reporte.mdb"
  loc_66B811: FStStrCopy var_88
  loc_66B814: FLdRfVar var_88
  loc_66B817: from_stack_2v = AbrirBD(from_stack_1v)
  loc_66B81C: FFree1Str var_88
  loc_66B81F: FLdRfVar var_8A
  loc_66B822: LitStr "DatosRegionales"
  loc_66B825: FStStrCopy var_88
  loc_66B828: FLdRfVar var_88
  loc_66B82B: from_stack_2v = BorrarBD(from_stack_1v)
  loc_66B830: FFree1Str var_88
  loc_66B833: FLdRfVar var_8A
  loc_66B836: LitStr "INSERT INTO DatosRegionales VALUES('"
  loc_66B839: FLdRfVar var_88
  loc_66B83C: FLdPr Me
  loc_66B83F: VCallAd Control_ID_txtVolumen
  loc_66B842: FStAdFunc var_90
  loc_66B845: FLdPr var_90
  loc_66B848:  = Me.Text
  loc_66B84D: ILdRf var_88
  loc_66B850: ConcatStr
  loc_66B851: FStStrNoPop var_94
  loc_66B854: LitStr "', '"
  loc_66B857: ConcatStr
  loc_66B858: FStStrNoPop var_A0
  loc_66B85B: FLdRfVar var_9C
  loc_66B85E: FLdPr Me
  loc_66B861: VCallAd Control_ID_txtVolumenAbrev
  loc_66B864: FStAdFunc var_98
  loc_66B867: FLdPr var_98
  loc_66B86A:  = Me.Text
  loc_66B86F: ILdRf var_9C
  loc_66B872: ConcatStr
  loc_66B873: FStStrNoPop var_A4
  loc_66B876: LitStr "', '"
  loc_66B879: ConcatStr
  loc_66B87A: FStStrNoPop var_B0
  loc_66B87D: FLdRfVar var_AC
  loc_66B880: FLdPr Me
  loc_66B883: VCallAd Control_ID_txtMoneda
  loc_66B886: FStAdFunc var_A8
  loc_66B889: FLdPr var_A8
  loc_66B88C:  = Me.Text
  loc_66B891: ILdRf var_AC
  loc_66B894: ConcatStr
  loc_66B895: FStStrNoPop var_B4
  loc_66B898: LitStr "', '"
  loc_66B89B: ConcatStr
  loc_66B89C: FStStrNoPop var_C0
  loc_66B89F: FLdRfVar var_BC
  loc_66B8A2: FLdPr Me
  loc_66B8A5: VCallAd Control_ID_txtMonedaAbrev
  loc_66B8A8: FStAdFunc var_B8
  loc_66B8AB: FLdPr var_B8
  loc_66B8AE:  = Me.Text
  loc_66B8B3: ILdRf var_BC
  loc_66B8B6: ConcatStr
  loc_66B8B7: FStStrNoPop var_C4
  loc_66B8BA: LitStr "', '"
  loc_66B8BD: ConcatStr
  loc_66B8BE: FStStrNoPop var_D0
  loc_66B8C1: FLdRfVar var_CC
  loc_66B8C4: FLdPr Me
  loc_66B8C7: VCallAd Control_ID_txtSurtidor
  loc_66B8CA: FStAdFunc var_C8
  loc_66B8CD: FLdPr var_C8
  loc_66B8D0:  = Me.Text
  loc_66B8D5: ILdRf var_CC
  loc_66B8D8: ConcatStr
  loc_66B8D9: FStStrNoPop var_D4
  loc_66B8DC: LitStr "', '"
  loc_66B8DF: ConcatStr
  loc_66B8E0: FStStrNoPop var_E0
  loc_66B8E3: FLdRfVar var_DC
  loc_66B8E6: FLdPr Me
  loc_66B8E9: VCallAd Control_ID_txtSurtidorAbrev
  loc_66B8EC: FStAdFunc var_D8
  loc_66B8EF: FLdPr var_D8
  loc_66B8F2:  = Me.Text
  loc_66B8F7: ILdRf var_DC
  loc_66B8FA: ConcatStr
  loc_66B8FB: FStStrNoPop var_E4
  loc_66B8FE: LitStr "', '"
  loc_66B901: ConcatStr
  loc_66B902: FStStrNoPop var_F0
  loc_66B905: FLdRfVar var_EC
  loc_66B908: FLdPr Me
  loc_66B90B: VCallAd Control_ID_txtSurtidores
  loc_66B90E: FStAdFunc var_E8
  loc_66B911: FLdPr var_E8
  loc_66B914:  = Me.Text
  loc_66B919: ILdRf var_EC
  loc_66B91C: ConcatStr
  loc_66B91D: FStStrNoPop var_F4
  loc_66B920: LitStr "', '"
  loc_66B923: ConcatStr
  loc_66B924: FStStrNoPop var_100
  loc_66B927: FLdRfVar var_FC
  loc_66B92A: FLdPr Me
  loc_66B92D: VCallAd Control_ID_txtSurtidoresAbrev
  loc_66B930: FStAdFunc var_F8
  loc_66B933: FLdPr var_F8
  loc_66B936:  = Me.Text
  loc_66B93B: ILdRf var_FC
  loc_66B93E: ConcatStr
  loc_66B93F: FStStrNoPop var_104
  loc_66B942: LitStr "', '"
  loc_66B945: ConcatStr
  loc_66B946: FStStrNoPop var_110
  loc_66B949: FLdRfVar var_10C
  loc_66B94C: FLdPr Me
  loc_66B94F: VCallAd Control_ID_txtManguera
  loc_66B952: FStAdFunc var_108
  loc_66B955: FLdPr var_108
  loc_66B958:  = Me.Text
  loc_66B95D: ILdRf var_10C
  loc_66B960: ConcatStr
  loc_66B961: FStStrNoPop var_114
  loc_66B964: LitStr "', '"
  loc_66B967: ConcatStr
  loc_66B968: FStStrNoPop var_120
  loc_66B96B: FLdRfVar var_11C
  loc_66B96E: FLdPr Me
  loc_66B971: VCallAd Control_ID_txtMangueraAbrev
  loc_66B974: FStAdFunc var_118
  loc_66B977: FLdPr var_118
  loc_66B97A:  = Me.Text
  loc_66B97F: ILdRf var_11C
  loc_66B982: ConcatStr
  loc_66B983: FStStrNoPop var_124
  loc_66B986: LitStr "', '"
  loc_66B989: ConcatStr
  loc_66B98A: FStStrNoPop var_130
  loc_66B98D: FLdRfVar var_12C
  loc_66B990: FLdPr Me
  loc_66B993: VCallAd Control_ID_txtGas
  loc_66B996: FStAdFunc var_128
  loc_66B999: FLdPr var_128
  loc_66B99C:  = Me.Text
  loc_66B9A1: ILdRf var_12C
  loc_66B9A4: ConcatStr
  loc_66B9A5: FStStrNoPop var_134
  loc_66B9A8: LitStr "', '"
  loc_66B9AB: ConcatStr
  loc_66B9AC: FStStrNoPop var_140
  loc_66B9AF: FLdRfVar var_13C
  loc_66B9B2: FLdPr Me
  loc_66B9B5: VCallAd Control_ID_txtGasAbrev
  loc_66B9B8: FStAdFunc var_138
  loc_66B9BB: FLdPr var_138
  loc_66B9BE:  = Me.Text
  loc_66B9C3: ILdRf var_13C
  loc_66B9C6: ConcatStr
  loc_66B9C7: FStStrNoPop var_144
  loc_66B9CA: LitStr "', '"
  loc_66B9CD: ConcatStr
  loc_66B9CE: FStStrNoPop var_150
  loc_66B9D1: FLdRfVar var_14C
  loc_66B9D4: FLdPr Me
  loc_66B9D7: VCallAd Control_ID_txtDescripcionCUIT
  loc_66B9DA: FStAdFunc var_148
  loc_66B9DD: FLdPr var_148
  loc_66B9E0:  = Me.Text
  loc_66B9E5: ILdRf var_14C
  loc_66B9E8: ConcatStr
  loc_66B9E9: FStStrNoPop var_154
  loc_66B9EC: LitStr "', '"
  loc_66B9EF: ConcatStr
  loc_66B9F0: FStStrNoPop var_160
  loc_66B9F3: FLdRfVar var_15C
  loc_66B9F6: FLdPr Me
  loc_66B9F9: VCallAd Control_ID_txtAbrebiaturaCUIT
  loc_66B9FC: FStAdFunc var_158
  loc_66B9FF: FLdPr var_158
  loc_66BA02:  = Me.Text
  loc_66BA07: ILdRf var_15C
  loc_66BA0A: ConcatStr
  loc_66BA0B: FStStrNoPop var_164
  loc_66BA0E: LitStr "')"
  loc_66BA11: ConcatStr
  loc_66BA12: PopTmpLdAdStr
  loc_66BA16: from_stack_2v = Proc_57_7_5F321C(from_stack_1v)
  loc_66BA1B: FFreeStr var_12C = "": var_134 = "": var_140 = "": var_13C = "": var_144 = "": var_150 = "": var_14C = "": var_154 = "": var_160 = "": var_15C = "": var_164 = "": var_168 = "": var_88 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = "": var_C0 = "": var_BC = "": var_C4 = "": var_D0 = "": var_CC = "": var_D4 = "": var_E0 = "": var_DC = "": var_E4 = "": var_F0 = "": var_EC = "": var_F4 = "": var_100 = "": var_FC = "": var_104 = "": var_110 = "": var_10C = "": var_114 = "": var_120 = "": var_11C = "": var_124 = ""
  loc_66BA72: FFreeAd var_90 = "": var_98 = "": var_A8 = "": var_B8 = "": var_C8 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = ""
  loc_66BA91: FLdRfVar var_8A
  loc_66BA94: from_stack_1v = CerrarBD()
  loc_66BA99: ExitProcHresult
  loc_66BA9A: LitVar_Missing var_1DC
  loc_66BA9D: LitVar_Missing var_1BC
  loc_66BAA0: LitVar_Missing var_19C
  loc_66BAA3: LitI4 0
  loc_66BAA8: FLdRfVar var_16C
  loc_66BAAB: ImpAdCallI2 Err 'rtcErrObj
  loc_66BAB0: FStAdFunc var_90
  loc_66BAB3: FLdPr var_90
  loc_66BAB6:  = Err.Number
  loc_66BABB: ILdRf var_16C
  loc_66BABE: CStrI4
  loc_66BAC0: FStStrNoPop var_88
  loc_66BAC3: LitStr " "
  loc_66BAC6: ConcatStr
  loc_66BAC7: FStStrNoPop var_9C
  loc_66BACA: FLdRfVar var_94
  loc_66BACD: ImpAdCallI2 Err 'rtcErrObj
  loc_66BAD2: FStAdFunc var_98
  loc_66BAD5: FLdPr var_98
  loc_66BAD8:  = Err.Description
  loc_66BADD: ILdRf var_94
  loc_66BAE0: ConcatStr
  loc_66BAE1: CVarStr var_17C
  loc_66BAE4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66BAE9: FFreeStr var_88 = "": var_9C = ""
  loc_66BAF2: FFreeAd var_90 = ""
  loc_66BAF9: FFreeVar var_17C = "": var_19C = "": var_1BC = ""
  loc_66BB04: ExitProcHresult
End Function
