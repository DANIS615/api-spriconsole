VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{00025600-0000-0000-C000000000000046}#5.1#0"; "C:\WINDOWS\SysWow64\CRYSTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form EmisionFacturas
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2325
  ClientTop = 840
  ClientWidth = 7455
  ClientHeight = 5580
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin Threed.SSPanel SSPanel1
    Left = 0
    Top = 0
    Width = 7455
    Height = 5595
    TabIndex = 13
    OleObjectBlob = "EmisionFacturas.frx":0000
    Begin Crystal.CrystalReport CrystalReport1
      OleObjectBlob = "EmisionFacturas.frx":0079
      Left = 3960
      Top = 720
    End
    Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1
      Left = 180
      Top = 3000
      Width = 4575
      Height = 1635
      TabStop = 0   'False
      TabIndex = 6
      OleObjectBlob = "EmisionFacturas.frx":016C
    End
    Begin Threed.SSCommand NuevoCliente
      Left = 4980
      Top = 240
      Width = 2295
      Height = 735
      TabStop = 0   'False
      TabIndex = 3
      OleObjectBlob = "EmisionFacturas.frx":0258
    End
    Begin Threed.SSPanel Tipo
      Index = 0
      Left = 180
      Top = 2280
      Width = 2175
      Height = 555
      TabIndex = 1
      OleObjectBlob = "EmisionFacturas.frx":02C8
    End
    Begin VB.TextBox NroCliente
      ForeColor = &H0&
      Left = 1680
      Top = 720
      Width = 1455
      Height = 435
      TabIndex = 0
      MultiLine = -1  'True
      TabStop = 0   'False
      Alignment = 1 'Right Justify
      MaxLength = 4
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
    Begin VB.TextBox NroComprobante
      BackColor = &H8000000F&
      ForeColor = &H0&
      Left = 1320
      Top = 180
      Width = 1455
      Height = 435
      Text = "00000000"
      TabIndex = 16
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox CentroEmisor
      BackColor = &H8000000F&
      Left = 480
      Top = 180
      Width = 735
      Height = 435
      Text = "0000"
      TabIndex = 15
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.TextBox TipoComprobante
      BackColor = &H8000000F&
      Left = 180
      Top = 180
      Width = 375
      Height = 435
      Text = "B"
      TabIndex = 14
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Threed.SSPanel Tipo
      Index = 1
      Left = 2520
      Top = 2280
      Width = 2175
      Height = 555
      TabIndex = 2
      OleObjectBlob = "EmisionFacturas.frx":0341
    End
    Begin Threed.SSCommand ConsultaClientes
      Left = 4980
      Top = 1140
      Width = 2295
      Height = 735
      TabStop = 0   'False
      TabIndex = 4
      OleObjectBlob = "EmisionFacturas.frx":03C3
    End
    Begin Threed.SSCommand cmdNuevoNroFactura
      Left = 4980
      Top = 2040
      Width = 2295
      Height = 735
      TabStop = 0   'False
      TabIndex = 5
      OleObjectBlob = "EmisionFacturas.frx":0431
    End
    Begin Threed.SSCommand cmdCancelar
      Left = 4980
      Top = 3840
      Width = 2295
      Height = 735
      TabStop = 0   'False
      TabIndex = 11
      OleObjectBlob = "EmisionFacturas.frx":049A
    End
    Begin Threed.SSCommand cmdImprimir
      Left = 4920
      Top = 4680
      Width = 2295
      Height = 735
      TabStop = 0   'False
      TabIndex = 12
      OleObjectBlob = "EmisionFacturas.frx":0504
    End
    Begin VB.Label Ltotal
      Caption = "0.00"
      BackColor = &HFFFFFF&
      Left = 3720
      Top = 5040
      Width = 1095
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
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
    Begin VB.Label LIva
      Caption = "0.00"
      BackColor = &HFFFFFF&
      Left = 2520
      Top = 5040
      Width = 1095
      Height = 375
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LImpint
      Caption = "0.00"
      BackColor = &HFFFFFF&
      Left = 1320
      Top = 5040
      Width = 1095
      Height = 375
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LNeto
      Caption = "0.00"
      BackColor = &HFFFFFF&
      Left = 120
      Top = 5040
      Width = 1095
      Height = 375
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Total"
      Index = 3
      Left = 3720
      Top = 4800
      Width = 1095
      Height = 375
      TabIndex = 24
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Iva"
      Index = 2
      Left = 2520
      Top = 4800
      Width = 1095
      Height = 375
      TabIndex = 23
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Imp. Int."
      Index = 1
      Left = 1320
      Top = 4800
      Width = 1095
      Height = 375
      TabIndex = 22
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Neto"
      Index = 0
      Left = 240
      Top = 4800
      Width = 1095
      Height = 375
      TabIndex = 21
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label EstadoInscripcion
      Caption = "Consumidor Final"
      Left = 240
      Top = 1800
      Width = 4455
      Height = 315
      TabIndex = 20
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
    Begin VB.Label RazonSocial
      Caption = "Sin Cliente"
      Left = 240
      Top = 1380
      Width = 4455
      Height = 315
      TabIndex = 19
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
    Begin VB.Label Label2
      Caption = "Cliente Nº"
      Left = 180
      Top = 780
      Width = 1515
      Height = 315
      TabIndex = 18
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
      Caption = "-"
      Left = 1140
      Top = 180
      Width = 255
      Height = 375
      TabIndex = 17
      Alignment = 2 'Center
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

Attribute VB_Name = "EmisionFacturas"

Public SeleccionGrilla As Byte

Private Type UDT_1_0047C2AC
  bStruc(48) As Byte ' String fields: 7
End Type

Private Type UDT_2_0046FB84
  bStruc(116) As Byte ' String fields: 8
End Type


Private Function Tipo_UnknownEvent_8(arg_C) '5FCA54
  'Data Table: 442D6C
  loc_5FC984: LitVarI4
  loc_5FC98C: PopAdLdVar
  loc_5FC98D: FLdRfVar var_8C
  loc_5FC990: FLdPr Me
  loc_5FC993: MemLdUI1 global_53
  loc_5FC997: CI2UI1
  loc_5FC999: FLdPrThis
  loc_5FC99A: VCallAd Control_ID_Tipo
  loc_5FC99D: FStAdFunc var_88
  loc_5FC9A0: FLdPr var_88
  loc_5FC9A3: Set from_stack_2 = Me(from_stack_1)
  loc_5FC9A8: FLdPr var_8C
  loc_5FC9AB: LateIdSt
  loc_5FC9B0: FFreeAd var_88 = ""
  loc_5FC9B7: LitVarI4
  loc_5FC9BF: PopAdLdVar
  loc_5FC9C0: FLdRfVar var_8C
  loc_5FC9C3: FLdPr Me
  loc_5FC9C6: MemLdUI1 global_53
  loc_5FC9CA: CI2UI1
  loc_5FC9CC: FLdPrThis
  loc_5FC9CD: VCallAd Control_ID_Tipo
  loc_5FC9D0: FStAdFunc var_88
  loc_5FC9D3: FLdPr var_88
  loc_5FC9D6: Set from_stack_2 = Me(from_stack_1)
  loc_5FC9DB: FLdPr var_8C
  loc_5FC9DE: LateIdSt
  loc_5FC9E3: FFreeAd var_88 = ""
  loc_5FC9EA: LitVarI4
  loc_5FC9F2: PopAdLdVar
  loc_5FC9F3: FLdRfVar var_8C
  loc_5FC9F6: ILdI2 arg_C
  loc_5FC9F9: FLdPrThis
  loc_5FC9FA: VCallAd Control_ID_Tipo
  loc_5FC9FD: FStAdFunc var_88
  loc_5FCA00: FLdPr var_88
  loc_5FCA03: Set from_stack_2 = Me(from_stack_1)
  loc_5FCA08: FLdPr var_8C
  loc_5FCA0B: LateIdSt
  loc_5FCA10: FFreeAd var_88 = ""
  loc_5FCA17: LitVarI4
  loc_5FCA1F: PopAdLdVar
  loc_5FCA20: FLdRfVar var_8C
  loc_5FCA23: ILdI2 arg_C
  loc_5FCA26: FLdPrThis
  loc_5FCA27: VCallAd Control_ID_Tipo
  loc_5FCA2A: FStAdFunc var_88
  loc_5FCA2D: FLdPr var_88
  loc_5FCA30: Set from_stack_2 = Me(from_stack_1)
  loc_5FCA35: FLdPr var_8C
  loc_5FCA38: LateIdSt
  loc_5FCA3D: FFreeAd var_88 = ""
  loc_5FCA44: ILdI2 arg_C
  loc_5FCA47: CUI1I2
  loc_5FCA49: FLdPr Me
  loc_5FCA4C: MemStUI1
  loc_5FCA50: ExitProcHresult
End Function

Private Sub NuevoCliente_UnknownEvent_8 '5E6F7C
  'Data Table: 442D6C
  loc_5E6F0C: FLdRfVar var_8C
  loc_5E6F0F: ImpAdLdRf MemVar_74D98C
  loc_5E6F12: NewIfNullPr EmisionFacturas
  loc_5E6F15: VCallAd Control_ID_NroCliente
  loc_5E6F18: FStAdFunc var_88
  loc_5E6F1B: FLdPr var_88
  loc_5E6F1E:  = EmisionFacturas.TextBox.Text
  loc_5E6F23: FLdZeroAd var_8C
  loc_5E6F26: CVarStr var_9C
  loc_5E6F29: PopAdLdVar
  loc_5E6F2A: ImpAdLdRf MemVar_74D978
  loc_5E6F2D: NewIfNullPr FormClientes
  loc_5E6F30: VCallAd Control_ID_meNumeroCliente
  loc_5E6F33: FStAdFunc var_A0
  loc_5E6F36: FLdPr var_A0
  loc_5E6F39: LateIdSt
  loc_5E6F3E: FFreeAd var_88 = ""
  loc_5E6F45: FFree1Var var_9C = ""
  loc_5E6F48: LitStr "&Aceptar"
  loc_5E6F4B: ImpAdLdRf MemVar_74D978
  loc_5E6F4E: NewIfNullPr FormClientes
  loc_5E6F51: VCallAd Control_ID_cmdCancelar
  loc_5E6F54: FStAdFunc var_88
  loc_5E6F57: FLdPr var_88
  loc_5E6F5A: FormClientes.CommandButton.Caption = from_stack_1
  loc_5E6F5F: FFree1Ad var_88
  loc_5E6F62: LitVar_Missing var_C0
  loc_5E6F65: PopAdLdVar
  loc_5E6F66: LitVarI4
  loc_5E6F6E: PopAdLdVar
  loc_5E6F6F: ImpAdLdRf MemVar_74D978
  loc_5E6F72: NewIfNullPr FormClientes
  loc_5E6F75: FormClientes.Show from_stack_1, from_stack_2
  loc_5E6F7A: ExitProcHresult
End Sub

Private Sub Form_Load() '620DF0
  'Data Table: 442D6C
  loc_620C94: LitI4 1
  loc_620C99: LitI4 1
  loc_620C9E: LitVarStr var_A8, "@@@@@@@@@@@@@@"
  loc_620CA3: FStVarCopyObj var_B8
  loc_620CA6: FLdRfVar var_B8
  loc_620CA9: ImpAdLdRf MemVar_74BEBC
  loc_620CAC: CVarRef
  loc_620CB1: ImpAdCallI2 Format$(, )
  loc_620CB6: FStStr var_88
  loc_620CB9: FFree1Var var_B8 = ""
  loc_620CBC: LitVarI4
  loc_620CC4: PopAdLdVar
  loc_620CC5: FLdPrThis
  loc_620CC6: VCallAd Control_ID_MSFlexGrid1
  loc_620CC9: FStAdFunc var_BC
  loc_620CCC: FLdPr var_BC
  loc_620CCF: LateIdSt
  loc_620CD4: FFree1Ad var_BC
  loc_620CD7: LitVarI4
  loc_620CDF: PopAdLdVar
  loc_620CE0: FLdPrThis
  loc_620CE1: VCallAd Control_ID_MSFlexGrid1
  loc_620CE4: FStAdFunc var_BC
  loc_620CE7: FLdPr var_BC
  loc_620CEA: LateIdSt
  loc_620CEF: FFree1Ad var_BC
  loc_620CF2: LitVarI4
  loc_620CFA: PopAdLdVar
  loc_620CFB: FLdPrThis
  loc_620CFC: VCallAd Control_ID_MSFlexGrid1
  loc_620CFF: FStAdFunc var_BC
  loc_620D02: FLdPr var_BC
  loc_620D05: LateIdSt
  loc_620D0A: FFree1Ad var_BC
  loc_620D0D: LitStr "<"
  loc_620D10: ILdRf var_88
  loc_620D13: ConcatStr
  loc_620D14: FStStrNoPop var_C0
  loc_620D17: LitStr "|<Producto              |<PPU        |<Total         "
  loc_620D1A: ConcatStr
  loc_620D1B: CVarStr var_B8
  loc_620D1E: PopAdLdVar
  loc_620D1F: FLdPrThis
  loc_620D20: VCallAd Control_ID_MSFlexGrid1
  loc_620D23: FStAdFunc var_BC
  loc_620D26: FLdPr var_BC
  loc_620D29: LateIdSt
  loc_620D2E: FFree1Str var_C0
  loc_620D31: FFree1Ad var_BC
  loc_620D34: FFree1Var var_B8 = ""
  loc_620D37: LitVarI4
  loc_620D3F: PopAdLdVar
  loc_620D40: LitI4 9
  loc_620D45: CI2I4
  loc_620D46: CVarI2 var_A8
  loc_620D49: PopAdLdVar
  loc_620D4A: FLdPrThis
  loc_620D4B: VCallAd Control_ID_MSFlexGrid1
  loc_620D4E: FStAdFunc var_BC
  loc_620D51: FLdPr var_BC
  loc_620D54: LateIdCallSt
  loc_620D5C: FFree1Ad var_BC
  loc_620D5F: LitVarI4
  loc_620D67: PopAdLdVar
  loc_620D68: LitI4 9
  loc_620D6D: CI2I4
  loc_620D6E: CVarI2 var_A8
  loc_620D71: PopAdLdVar
  loc_620D72: FLdPrThis
  loc_620D73: VCallAd Control_ID_MSFlexGrid1
  loc_620D76: FStAdFunc var_BC
  loc_620D79: FLdPr var_BC
  loc_620D7C: LateIdCallSt
  loc_620D84: FFree1Ad var_BC
  loc_620D87: LitVarI4
  loc_620D8F: PopAdLdVar
  loc_620D90: LitI4 9
  loc_620D95: CI2I4
  loc_620D96: CVarI2 var_A8
  loc_620D99: PopAdLdVar
  loc_620D9A: FLdPrThis
  loc_620D9B: VCallAd Control_ID_MSFlexGrid1
  loc_620D9E: FStAdFunc var_BC
  loc_620DA1: FLdPr var_BC
  loc_620DA4: LateIdCallSt
  loc_620DAC: FFree1Ad var_BC
  loc_620DAF: LitVarI4
  loc_620DB7: PopAdLdVar
  loc_620DB8: LitI4 9
  loc_620DBD: CI2I4
  loc_620DBE: CVarI2 var_A8
  loc_620DC1: PopAdLdVar
  loc_620DC2: FLdPrThis
  loc_620DC3: VCallAd Control_ID_MSFlexGrid1
  loc_620DC6: FStAdFunc var_BC
  loc_620DC9: FLdPr var_BC
  loc_620DCC: LateIdCallSt
  loc_620DD4: FFree1Ad var_BC
  loc_620DD7: LitStr "0"
  loc_620DDA: FLdPrThis
  loc_620DDB: VCallAd Control_ID_NroCliente
  loc_620DDE: FStAdFunc var_BC
  loc_620DE1: FLdPr var_BC
  loc_620DE4: Me.Text = from_stack_1
  loc_620DE9: FFree1Ad var_BC
  loc_620DEC: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5C84BC
  'Data Table: 442D6C
  loc_5C84B8: ExitProcHresult
End Sub

Private Sub Form_Activate() '62DA00
  'Data Table: 442D6C
  loc_62D858: FLdRfVar var_8A
  loc_62D85B: FLdPr Me
  loc_62D85E: MemLdRfVar from_stack_1.global_92
  loc_62D861: FLdPr Me
  loc_62D864: MemLdRfVar from_stack_1.global_88
  loc_62D867: FLdPr Me
  loc_62D86A: MemLdRfVar from_stack_1.global_84
  loc_62D86D: FLdPr Me
  loc_62D870: MemLdRfVar from_stack_1.global_80
  loc_62D873: FLdRfVar var_88
  loc_62D876: ImpAdLdRf MemVar_74C760
  loc_62D879: NewIfNullPr Formx
  loc_62D87C: from_stack_1v = Formx.global_4589716Get()
  loc_62D881: FLdPr var_88
  loc_62D884: Formx.FontItalic = from_stack_1b
  loc_62D889: FLdI2 var_8A
  loc_62D88C: NotI4
  loc_62D88D: FFree1Ad var_88
  loc_62D890: BranchF loc_62D8BF
  loc_62D893: FLdRfVar var_9C
  loc_62D896: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62D89B: FLdRfVar var_9C
  loc_62D89E: CBoolVarNull
  loc_62D8A0: FFree1Var var_9C = ""
  loc_62D8A3: BranchF loc_62D8BC
  loc_62D8A6: ILdRf Me
  loc_62D8A9: FStAdNoPop
  loc_62D8AD: ImpAdLdRf MemVar_7520D4
  loc_62D8B0: NewIfNullPr Global
  loc_62D8B3: Global.Unload from_stack_1
  loc_62D8B8: FFree1Ad var_88
  loc_62D8BB: ExitProcHresult
  loc_62D8BC: Branch loc_62D858
  loc_62D8BF: FLdPr Me
  loc_62D8C2: MemLdStr global_88
  loc_62D8C5: ImpAdCallFPR4 push Val()
  loc_62D8CA: FStFPR8 var_E8
  loc_62D8CD: LitI4 1
  loc_62D8D2: LitI4 1
  loc_62D8D7: LitVarStr var_BC, "0000"
  loc_62D8DC: FStVarCopyObj var_CC
  loc_62D8DF: FLdRfVar var_CC
  loc_62D8E2: FLdFPR8 var_E8
  loc_62D8E5: CVarR8
  loc_62D8E9: FLdRfVar var_DC
  loc_62D8EC: ImpAdCallFPR4  = Format(, )
  loc_62D8F1: FLdRfVar var_DC
  loc_62D8F4: CStrVarVal var_E0
  loc_62D8F8: FLdPrThis
  loc_62D8F9: VCallAd Control_ID_CentroEmisor
  loc_62D8FC: FStAdFunc var_88
  loc_62D8FF: FLdPr var_88
  loc_62D902: Me.Text = from_stack_1
  loc_62D907: FFree1Str var_E0
  loc_62D90A: FFree1Ad var_88
  loc_62D90D: FFreeVar var_9C = "": var_CC = ""
  loc_62D916: FLdPr Me
  loc_62D919: MemLdStr global_84
  loc_62D91C: ImpAdCallFPR4 push Val()
  loc_62D921: FStFPR8 var_E8
  loc_62D924: LitI4 1
  loc_62D929: LitI4 1
  loc_62D92E: LitVarStr var_BC, "00000000"
  loc_62D933: FStVarCopyObj var_CC
  loc_62D936: FLdRfVar var_CC
  loc_62D939: FLdFPR8 var_E8
  loc_62D93C: CVarR8
  loc_62D940: FLdRfVar var_DC
  loc_62D943: ImpAdCallFPR4  = Format(, )
  loc_62D948: FLdRfVar var_DC
  loc_62D94B: CStrVarVal var_E0
  loc_62D94F: FLdPrThis
  loc_62D950: VCallAd Control_ID_NroComprobante
  loc_62D953: FStAdFunc var_88
  loc_62D956: FLdPr var_88
  loc_62D959: Me.Text = from_stack_1
  loc_62D95E: FFree1Str var_E0
  loc_62D961: FFree1Ad var_88
  loc_62D964: FFreeVar var_9C = "": var_CC = ""
  loc_62D96D: LitStr "B"
  loc_62D970: FLdPrThis
  loc_62D971: VCallAd Control_ID_TipoComprobante
  loc_62D974: FStAdFunc var_88
  loc_62D977: FLdPr var_88
  loc_62D97A: Me.Text = from_stack_1
  loc_62D97F: FFree1Ad var_88
  loc_62D982: LitI2_Byte 0
  loc_62D984: CUI1I2
  loc_62D986: FLdPr Me
  loc_62D989: MemStUI1
  loc_62D98D: FLdRfVar var_E0
  loc_62D990: FLdPrThis
  loc_62D991: VCallAd Control_ID_NroCliente
  loc_62D994: FStAdFunc var_88
  loc_62D997: FLdPr var_88
  loc_62D99A:  = Me.Text
  loc_62D99F: FLdZeroAd var_E0
  loc_62D9A2: CVarStr var_9C
  loc_62D9A5: FLdRfVar var_CC
  loc_62D9A8: ImpAdCallFPR4  = Trim()
  loc_62D9AD: FLdRfVar var_CC
  loc_62D9B0: LitVarStr var_AC, "0"
  loc_62D9B5: HardType
  loc_62D9B6: EqVarBool
  loc_62D9B8: FFree1Ad var_88
  loc_62D9BB: FFreeVar var_9C = ""
  loc_62D9C2: BranchF loc_62D9EF
  loc_62D9C5: LitStr "Consumidor Final"
  loc_62D9C8: FLdPrThis
  loc_62D9C9: VCallAd Control_ID_EstadoInscripcion
  loc_62D9CC: FStAdFunc var_88
  loc_62D9CF: FLdPr var_88
  loc_62D9D2: Me.Caption = from_stack_1
  loc_62D9D7: FFree1Ad var_88
  loc_62D9DA: LitStr "Consumidor Final"
  loc_62D9DD: FLdPrThis
  loc_62D9DE: VCallAd Control_ID_RazonSocial
  loc_62D9E1: FStAdFunc var_88
  loc_62D9E4: FLdPr var_88
  loc_62D9E7: Me.Caption = from_stack_1
  loc_62D9EC: FFree1Ad var_88
  loc_62D9EF: LitI2_Byte 0
  loc_62D9F1: PopTmpLdAd2 var_8A
  loc_62D9F4: from_stack_2v = Tipo_UnknownEvent_8(from_stack_1v)
  loc_62D9F9: from_stack_1v = Proc_112_18_696E68()
  loc_62D9FE: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5EB648
  'Data Table: 442D6C
  loc_5EB5BC: ILdI2 KeyAscii
  loc_5EB5BF: FStI2 var_86
  loc_5EB5C2: FLdI2 var_86
  loc_5EB5C5: LitI4 &HD
  loc_5EB5CA: CI2I4
  loc_5EB5CB: EqI2
  loc_5EB5CC: BranchF loc_5EB5F1
  loc_5EB5CF: FLdPrThis
  loc_5EB5D0: VCallAd Control_ID_cmdImprimir
  loc_5EB5D3: FStAdFunc var_8C
  loc_5EB5D6: FLdPr var_8C
  loc_5EB5D9: LateIdCall
  loc_5EB5E1: FFree1Ad var_8C
  loc_5EB5E4: Call cmdImprimir_UnknownEvent_8()
  loc_5EB5E9: LitI2_Byte 0
  loc_5EB5EB: IStI2 KeyAscii
  loc_5EB5EE: Branch loc_5EB647
  loc_5EB5F1: FLdI2 var_86
  loc_5EB5F4: LitI4 &H41
  loc_5EB5F9: CI2I4
  loc_5EB5FA: LitI4 &H5A
  loc_5EB5FF: CI2I4
  loc_5EB600: BetweenI2
  loc_5EB602: BranchT loc_5EB619
  loc_5EB605: FLdI2 var_86
  loc_5EB608: LitI4 &H61
  loc_5EB60D: CI2I4
  loc_5EB60E: LitI4 &H7A
  loc_5EB613: CI2I4
  loc_5EB614: BetweenI2
  loc_5EB616: BranchF loc_5EB634
  loc_5EB619: ILdI2 KeyAscii
  loc_5EB61C: ImpAdLdRf MemVar_74D874
  loc_5EB61F: NewIfNullPr BrowseCli
  loc_5EB622: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5EB627: Call ConsultaClientes_UnknownEvent_8()
  loc_5EB62C: LitI2_Byte 0
  loc_5EB62E: IStI2 KeyAscii
  loc_5EB631: Branch loc_5EB647
  loc_5EB634: FLdI2 var_86
  loc_5EB637: LitI2_Byte &H1B
  loc_5EB639: EqI2
  loc_5EB63A: BranchF loc_5EB647
  loc_5EB63D: Call cmdCancelar_UnknownEvent_8()
  loc_5EB642: LitI2_Byte 0
  loc_5EB644: IStI2 KeyAscii
  loc_5EB647: ExitProcHresult
End Sub

Private Sub cmdNuevoNroFactura_UnknownEvent_8 '5EA5B8
  'Data Table: 442D6C
  loc_5EA53C: LitI4 &H15
  loc_5EA541: ImpAdLdRf MemVar_74A170
  loc_5EA544: Ary1LdI2
  loc_5EA545: NotI4
  loc_5EA546: CVarBoolI2 var_104
  loc_5EA54A: LitVarI2 var_B4, 3
  loc_5EA54F: LitI4 1
  loc_5EA554: ImpAdLdRf MemVar_74BF90
  loc_5EA557: CVarRef
  loc_5EA55C: FLdRfVar var_C4
  loc_5EA55F: ImpAdCallFPR4  = Mid(, , )
  loc_5EA564: FLdRfVar var_C4
  loc_5EA567: LitVarStr var_D4, "\\."
  loc_5EA56C: HardType
  loc_5EA56D: EqVar var_E4
  loc_5EA571: NotVar var_F4
  loc_5EA575: AndVar var_114
  loc_5EA579: CBoolVarNull
  loc_5EA57B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EA584: BranchF loc_5EA58D
  loc_5EA587: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EA58C: ExitProcHresult
  loc_5EA58D: LitI2_Byte &H17
  loc_5EA58F: PopTmpLdAd2 var_116
  loc_5EA592: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EA597: NotI4
  loc_5EA598: BranchF loc_5EA59C
  loc_5EA59B: ExitProcHresult
  loc_5EA59C: LitVar_Missing var_A4
  loc_5EA59F: PopAdLdVar
  loc_5EA5A0: LitVarI4
  loc_5EA5A8: PopAdLdVar
  loc_5EA5A9: ImpAdLdRf MemVar_74DB40
  loc_5EA5AC: NewIfNullPr NewInvoiceNumber
  loc_5EA5AF: NewInvoiceNumber.Show from_stack_1, from_stack_2
  loc_5EA5B4: ExitProcHresult
  loc_5EA5B5: Ary1LdFPR4
End Sub

Private Sub ConsultaClientes_UnknownEvent_8 '5DD784
  'Data Table: 442D6C
  loc_5DD73C: LitVar_Missing var_A4
  loc_5DD73F: PopAdLdVar
  loc_5DD740: LitVarI2 var_94, 1
  loc_5DD745: PopAdLdVar
  loc_5DD746: ImpAdLdRf MemVar_74D874
  loc_5DD749: NewIfNullPr BrowseCli
  loc_5DD74C: BrowseCli.Show from_stack_1, from_stack_2
  loc_5DD751: LitI2_Byte 0
  loc_5DD753: ImpAdLdRf MemVar_74D874
  loc_5DD756: NewIfNullPr BrowseCli
  loc_5DD759: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5DD75E: ImpAdLdI2 MemVar_74C37E
  loc_5DD761: NotI4
  loc_5DD762: BranchF loc_5DD782
  loc_5DD765: ImpAdLdI2 MemVar_74C384
  loc_5DD768: CStrUI1
  loc_5DD76A: FStStrNoPop var_A8
  loc_5DD76D: FLdPrThis
  loc_5DD76E: VCallAd Control_ID_Cancelar
  loc_5DD771: FStAdFunc var_AC
  loc_5DD774: FLdPr var_AC
  loc_5DD777: BrowseCli.TextBox.Text = from_stack_1
  loc_5DD77C: FFree1Str var_A8
  loc_5DD77F: FFree1Ad var_AC
  loc_5DD782: ExitProcHresult
End Sub

Private Sub cmdCancelar_UnknownEvent_8 '5D36A0
  'Data Table: 442D6C
  loc_5D3684: LitI2_Byte &HFF
  loc_5D3686: ImpAdStI2 MemVar_74C37E
  loc_5D3689: ILdRf Me
  loc_5D368C: FStAdNoPop
  loc_5D3690: ImpAdLdRf MemVar_7520D4
  loc_5D3693: NewIfNullPr Global
  loc_5D3696: Global.Unload from_stack_1
  loc_5D369B: FFree1Ad var_88
  loc_5D369E: ExitProcHresult
End Sub

Private Sub NroCliente_Change() '60A0B8
  'Data Table: 442D6C
  loc_609FC8: FLdRfVar var_8C
  loc_609FCB: FLdPrThis
  loc_609FCC: VCallAd Control_ID_NroCliente
  loc_609FCF: FStAdFunc var_88
  loc_609FD2: FLdPr var_88
  loc_609FD5:  = Me.Text
  loc_609FDA: ILdRf var_8C
  loc_609FDD: FnLenStr
  loc_609FDE: LitI4 0
  loc_609FE3: NeI4
  loc_609FE4: FFree1Str var_8C
  loc_609FE7: FFree1Ad var_88
  loc_609FEA: BranchF loc_60A059
  loc_609FED: FLdRfVar var_8C
  loc_609FF0: FLdPrThis
  loc_609FF1: VCallAd Control_ID_NroCliente
  loc_609FF4: FStAdFunc var_88
  loc_609FF7: FLdPr var_88
  loc_609FFA:  = Me.Text
  loc_609FFF: ILdRf var_8C
  loc_60A002: ImpAdLdRf MemVar_74D978
  loc_60A005: NewIfNullPr FormClientes
  loc_60A008: Call FormClientes.ConsultaCliente(from_stack_1v)
  loc_60A00D: FFree1Str var_8C
  loc_60A010: FFree1Ad var_88
  loc_60A013: FLdRfVar var_8C
  loc_60A016: FLdPrThis
  loc_60A017: VCallAd Control_ID_cmdAlta
  loc_60A01A: FStAdFunc var_88
  loc_60A01D: FLdPr var_88
  loc_60A020:  = FormClientes.TextBox.Text
  loc_60A025: ILdRf var_8C
  loc_60A028: ImpAdCallFPR4 push Val()
  loc_60A02D: CI2R8
  loc_60A02E: FLdPr Me
  loc_60A031: MemStI2 global_164
  loc_60A034: FFree1Str var_8C
  loc_60A037: FFree1Ad var_88
  loc_60A03A: FLdRfVar var_8E
  loc_60A03D: ImpAdLdRf MemVar_74D978
  loc_60A040: NewIfNullPr FormClientes
  loc_60A043: from_stack_1v = FormClientes.ExisteCliente()
  loc_60A048: FLdI2 var_8E
  loc_60A04B: BranchF loc_60A056
  loc_60A04E: LitI2_Byte 0
  loc_60A050: FLdPr Me
  loc_60A053: MemStI2 global_164
  loc_60A056: Branch loc_60A061
  loc_60A059: LitI2_Byte 0
  loc_60A05B: FLdPr Me
  loc_60A05E: MemStI2 global_164
  loc_60A061: FLdRfVar var_A0
  loc_60A064: FLdPr Me
  loc_60A067: MemLdRfVar from_stack_1.global_164
  loc_60A06A: from_stack_2v = Proc_112_17_654BEC(from_stack_1v)
  loc_60A06F: FFree1Var var_A0 = ""
  loc_60A072: from_stack_1v = Proc_112_18_696E68()
  loc_60A077: FLdPr Me
  loc_60A07A: MemLdStr global_168
  loc_60A07D: FLdPrThis
  loc_60A07E: VCallAd Control_ID_Label8
  loc_60A081: FStAdFunc var_88
  loc_60A084: FLdPr var_88
  loc_60A087: FormClientes.Label.Caption = from_stack_1
  loc_60A08C: FFree1Ad var_88
  loc_60A08F: FLdRfVar var_8C
  loc_60A092: FLdPr Me
  loc_60A095: MemLdRfVar from_stack_1.global_272
  loc_60A098: from_stack_2v = TipoIvaDesc(from_stack_1v)
  loc_60A09D: ILdRf var_8C
  loc_60A0A0: FLdPrThis
  loc_60A0A1: VCallAd Control_ID_EstadoInscripcion
  loc_60A0A4: FStAdFunc var_88
  loc_60A0A7: FLdPr var_88
  loc_60A0AA: Me.Caption = from_stack_1
  loc_60A0AF: FFree1Str var_8C
  loc_60A0B2: FFree1Ad var_88
  loc_60A0B5: ExitProcHresult
End Sub

Private Sub NroCliente_GotFocus() '5D8A94
  'Data Table: 442D6C
  loc_5D8A64: LitI4 0
  loc_5D8A69: FLdPrThis
  loc_5D8A6A: VCallAd Control_ID_NroCliente
  loc_5D8A6D: FStAdFunc var_88
  loc_5D8A70: FLdPr var_88
  loc_5D8A73: Me.SelStart = from_stack_1
  loc_5D8A78: FFree1Ad var_88
  loc_5D8A7B: LitI4 &H3E7
  loc_5D8A80: FLdPrThis
  loc_5D8A81: VCallAd Control_ID_NroCliente
  loc_5D8A84: FStAdFunc var_88
  loc_5D8A87: FLdPr var_88
  loc_5D8A8A: Me.SelLength = from_stack_1
  loc_5D8A8F: FFree1Ad var_88
  loc_5D8A92: ExitProcHresult
End Sub

Private Sub cmdImprimir_UnknownEvent_8 '6B9B44
  'Data Table: 442D6C
  loc_6B9328: FLdRfVar var_98
  loc_6B932B: FLdPrThis
  loc_6B932C: VCallAd Control_ID_NroCliente
  loc_6B932F: FStAdFunc var_94
  loc_6B9332: FLdPr var_94
  loc_6B9335:  = Me.Text
  loc_6B933A: FLdZeroAd var_98
  loc_6B933D: CVarStr var_A8
  loc_6B9340: ImpAdCallI2 IsNumeric()
  loc_6B9345: NotI4
  loc_6B9346: FFree1Ad var_94
  loc_6B9349: FFree1Var var_A8 = ""
  loc_6B934C: BranchF loc_6B9393
  loc_6B934F: LitVar_Missing var_118
  loc_6B9352: LitVar_Missing var_F8
  loc_6B9355: LitVarStr var_C8, "Número de cliente inválido"
  loc_6B935A: FStVarCopyObj var_D8
  loc_6B935D: FLdRfVar var_D8
  loc_6B9360: LitI4 &H40
  loc_6B9365: LitVarStr var_B8, "No ha ingresado un número de cliente válido."
  loc_6B936A: FStVarCopyObj var_A8
  loc_6B936D: FLdRfVar var_A8
  loc_6B9370: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B9375: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_6B9380: FLdPrThis
  loc_6B9381: VCallAd Control_ID_NroCliente
  loc_6B9384: FStAdFunc var_94
  loc_6B9387: FLdPr var_94
  loc_6B938A: Me.SetFocus
  loc_6B938F: FFree1Ad var_94
  loc_6B9392: ExitProcHresult
  loc_6B9393: FLdRfVar var_98
  loc_6B9396: FLdPrThis
  loc_6B9397: VCallAd Control_ID_NroCliente
  loc_6B939A: FStAdFunc var_94
  loc_6B939D: FLdPr var_94
  loc_6B93A0:  = Me.Text
  loc_6B93A5: ILdRf var_98
  loc_6B93A8: ImpAdCallFPR4 push Val()
  loc_6B93AD: CI2R8
  loc_6B93AE: FLdPr Me
  loc_6B93B1: MemStI2 global_164
  loc_6B93B4: FFree1Str var_98
  loc_6B93B7: FFree1Ad var_94
  loc_6B93BA: FLdRfVar var_A8
  loc_6B93BD: FLdPr Me
  loc_6B93C0: MemLdRfVar from_stack_1.global_164
  loc_6B93C3: from_stack_2v = Proc_112_17_654BEC(from_stack_1v)
  loc_6B93C8: FLdRfVar var_A8
  loc_6B93CB: NotVar var_D8
  loc_6B93CF: CBoolVarNull
  loc_6B93D1: FFree1Var var_A8 = ""
  loc_6B93D4: BranchF loc_6B941B
  loc_6B93D7: LitVar_Missing var_118
  loc_6B93DA: LitVar_Missing var_F8
  loc_6B93DD: LitVarStr var_C8, "Cliente no encontrado"
  loc_6B93E2: FStVarCopyObj var_D8
  loc_6B93E5: FLdRfVar var_D8
  loc_6B93E8: LitI4 &H40
  loc_6B93ED: LitVarStr var_B8, "No se ha podido encontrar los datos de ese cliente."
  loc_6B93F2: FStVarCopyObj var_A8
  loc_6B93F5: FLdRfVar var_A8
  loc_6B93F8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B93FD: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_6B9408: FLdPrThis
  loc_6B9409: VCallAd Control_ID_NroCliente
  loc_6B940C: FStAdFunc var_94
  loc_6B940F: FLdPr var_94
  loc_6B9412: Me.SetFocus
  loc_6B9417: FFree1Ad var_94
  loc_6B941A: ExitProcHresult
  loc_6B941B: FLdPr Me
  loc_6B941E: MemLdI2 global_252
  loc_6B9421: LitI2_Byte 0
  loc_6B9423: EqI2
  loc_6B9424: FLdRfVar var_11C
  loc_6B9427: LitI2_Byte 0
  loc_6B9429: FLdPrThis
  loc_6B942A: VCallAd Control_ID_Tipo
  loc_6B942D: FStAdFunc var_94
  loc_6B9430: FLdPr var_94
  loc_6B9433: Set from_stack_2 = Me(from_stack_1)
  loc_6B9438: FLdPr var_11C
  loc_6B943B: LateIdLdVar var_A8 DispID_-501 -1
  loc_6B9442: CI4Var
  loc_6B9444: LitI4 -2147483633
  loc_6B9449: EqI4
  loc_6B944A: AndI4
  loc_6B944B: FFreeAd var_94 = ""
  loc_6B9452: FFree1Var var_A8 = ""
  loc_6B9455: BranchF loc_6B949C
  loc_6B9458: LitVar_Missing var_118
  loc_6B945B: LitVar_Missing var_F8
  loc_6B945E: LitVarStr var_C8, "Cliente sin cuenta corriente"
  loc_6B9463: FStVarCopyObj var_D8
  loc_6B9466: FLdRfVar var_D8
  loc_6B9469: LitI4 &H40
  loc_6B946E: LitVarStr var_B8, "Este cliente no posee una cuenta corriente."
  loc_6B9473: FStVarCopyObj var_A8
  loc_6B9476: FLdRfVar var_A8
  loc_6B9479: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B947E: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_6B9489: FLdPrThis
  loc_6B948A: VCallAd Control_ID_NroCliente
  loc_6B948D: FStAdFunc var_94
  loc_6B9490: FLdPr var_94
  loc_6B9493: Me.SetFocus
  loc_6B9498: FFree1Ad var_94
  loc_6B949B: ExitProcHresult
  loc_6B949C: FLdPr Me
  loc_6B949F: MemLdStr global_276
  loc_6B94A2: LitStr "FA"
  loc_6B94A5: EqStr
  loc_6B94A7: BranchF loc_6B94F9
  loc_6B94AA: LitStr "A"
  loc_6B94AD: FLdPr Me
  loc_6B94B0: MemLdRfVar from_stack_1.global_280
  loc_6B94B3: StFixedStr
  loc_6B94B6: LitI4 1
  loc_6B94BB: LitI4 1
  loc_6B94C0: LitVarStr var_C8, "00000000"
  loc_6B94C5: FStVarCopyObj var_A8
  loc_6B94C8: FLdRfVar var_A8
  loc_6B94CB: FLdPr Me
  loc_6B94CE: MemLdRfVar from_stack_1.global_80
  loc_6B94D1: CVarRef
  loc_6B94D6: FLdRfVar var_D8
  loc_6B94D9: ImpAdCallFPR4  = Format(, )
  loc_6B94DE: FLdRfVar var_D8
  loc_6B94E1: CStrVarTmp
  loc_6B94E2: FStStrNoPop var_98
  loc_6B94E5: FLdPr Me
  loc_6B94E8: MemStStrCopy
  loc_6B94EC: FFree1Str var_98
  loc_6B94EF: FFreeVar var_A8 = ""
  loc_6B94F6: Branch loc_6B9545
  loc_6B94F9: LitStr "B"
  loc_6B94FC: FLdPr Me
  loc_6B94FF: MemLdRfVar from_stack_1.global_280
  loc_6B9502: StFixedStr
  loc_6B9505: LitI4 1
  loc_6B950A: LitI4 1
  loc_6B950F: LitVarStr var_C8, "00000000"
  loc_6B9514: FStVarCopyObj var_A8
  loc_6B9517: FLdRfVar var_A8
  loc_6B951A: FLdPr Me
  loc_6B951D: MemLdRfVar from_stack_1.global_84
  loc_6B9520: CVarRef
  loc_6B9525: FLdRfVar var_D8
  loc_6B9528: ImpAdCallFPR4  = Format(, )
  loc_6B952D: FLdRfVar var_D8
  loc_6B9530: CStrVarTmp
  loc_6B9531: FStStrNoPop var_98
  loc_6B9534: FLdPr Me
  loc_6B9537: MemStStrCopy
  loc_6B953B: FFree1Str var_98
  loc_6B953E: FFreeVar var_A8 = ""
  loc_6B9545: FLdPr Me
  loc_6B9548: MemLdRfVar from_stack_1.global_280
  loc_6B954B: LdFixedStr
  loc_6B954E: FStStrNoPop var_98
  loc_6B9551: FLdPrThis
  loc_6B9552: VCallAd Control_ID_TipoComprobante
  loc_6B9555: FStAdFunc var_94
  loc_6B9558: FLdPr var_94
  loc_6B955B: Me.Text = from_stack_1
  loc_6B9560: ILdRf var_98
  loc_6B9563: FLdPr Me
  loc_6B9566: MemLdRfVar from_stack_1.global_280
  loc_6B9569: StFixedStr
  loc_6B956C: FFree1Str var_98
  loc_6B956F: FFree1Ad var_94
  loc_6B9572: FLdPr Me
  loc_6B9575: MemLdStr global_284
  loc_6B9578: FLdPrThis
  loc_6B9579: VCallAd Control_ID_NroComprobante
  loc_6B957C: FStAdFunc var_94
  loc_6B957F: FLdPr var_94
  loc_6B9582: Me.Text = from_stack_1
  loc_6B9587: FFree1Ad var_94
  loc_6B958A: FLdPr Me
  loc_6B958D: MemLdStr global_168
  loc_6B9590: FLdPrThis
  loc_6B9591: VCallAd Control_ID_RazonSocial
  loc_6B9594: FStAdFunc var_94
  loc_6B9597: FLdPr var_94
  loc_6B959A: Me.Caption = from_stack_1
  loc_6B959F: FFree1Ad var_94
  loc_6B95A2: FLdRfVar var_98
  loc_6B95A5: FLdPr Me
  loc_6B95A8: MemLdRfVar from_stack_1.global_272
  loc_6B95AB: from_stack_2v = TipoIvaDesc(from_stack_1v)
  loc_6B95B0: ILdRf var_98
  loc_6B95B3: FLdPrThis
  loc_6B95B4: VCallAd Control_ID_EstadoInscripcion
  loc_6B95B7: FStAdFunc var_94
  loc_6B95BA: FLdPr var_94
  loc_6B95BD: Me.Caption = from_stack_1
  loc_6B95C2: FFree1Str var_98
  loc_6B95C5: FFree1Ad var_94
  loc_6B95C8: LitVarStr var_B8, "Confirme la emisión de la siguiente factura:"
  loc_6B95CD: LitI4 &HD
  loc_6B95D2: FLdRfVar var_A8
  loc_6B95D5: ImpAdCallFPR4  = Chr()
  loc_6B95DA: FLdRfVar var_A8
  loc_6B95DD: ConcatVar var_D8
  loc_6B95E1: LitI4 &HD
  loc_6B95E6: FLdRfVar var_F8
  loc_6B95E9: ImpAdCallFPR4  = Chr()
  loc_6B95EE: FLdRfVar var_F8
  loc_6B95F1: ConcatVar var_118
  loc_6B95F5: CStrVarTmp
  loc_6B95F6: FStStr var_8C
  loc_6B95F9: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_6B9604: ILdRf var_8C
  loc_6B9607: LitStr "Nro Cliente: "
  loc_6B960A: ConcatStr
  loc_6B960B: CVarStr var_D8
  loc_6B960E: LitI4 9
  loc_6B9613: FLdRfVar var_A8
  loc_6B9616: ImpAdCallFPR4  = Chr()
  loc_6B961B: FLdRfVar var_A8
  loc_6B961E: ConcatVar var_F8
  loc_6B9622: FLdPr Me
  loc_6B9625: MemLdI2 global_164
  loc_6B9628: CVarI2 var_B8
  loc_6B962B: ConcatVar var_118
  loc_6B962F: LitI4 &HD
  loc_6B9634: FLdRfVar var_12C
  loc_6B9637: ImpAdCallFPR4  = Chr()
  loc_6B963C: FLdRfVar var_12C
  loc_6B963F: ConcatVar var_13C
  loc_6B9643: CStrVarTmp
  loc_6B9644: FStStr var_8C
  loc_6B9647: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_12C = ""
  loc_6B9656: ILdRf var_8C
  loc_6B9659: LitStr "Razón Social: "
  loc_6B965C: ConcatStr
  loc_6B965D: CVarStr var_D8
  loc_6B9660: LitI4 9
  loc_6B9665: FLdRfVar var_A8
  loc_6B9668: ImpAdCallFPR4  = Chr()
  loc_6B966D: FLdRfVar var_A8
  loc_6B9670: ConcatVar var_F8
  loc_6B9674: FLdPr Me
  loc_6B9677: MemLdStr global_168
  loc_6B967A: CVarStr var_B8
  loc_6B967D: ConcatVar var_118
  loc_6B9681: LitI4 &HD
  loc_6B9686: FLdRfVar var_12C
  loc_6B9689: ImpAdCallFPR4  = Chr()
  loc_6B968E: FLdRfVar var_12C
  loc_6B9691: ConcatVar var_13C
  loc_6B9695: CStrVarTmp
  loc_6B9696: FStStr var_8C
  loc_6B9699: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_12C = ""
  loc_6B96A8: ILdRf var_8C
  loc_6B96AB: ImpAdLdI4 MemVar_74BEF4
  loc_6B96AE: ConcatStr
  loc_6B96AF: FStStrNoPop var_98
  loc_6B96B2: LitStr ": "
  loc_6B96B5: ConcatStr
  loc_6B96B6: CVarStr var_D8
  loc_6B96B9: LitI4 9
  loc_6B96BE: FLdRfVar var_A8
  loc_6B96C1: ImpAdCallFPR4  = Chr()
  loc_6B96C6: FLdRfVar var_A8
  loc_6B96C9: ConcatVar var_F8
  loc_6B96CD: LitI4 9
  loc_6B96D2: FLdRfVar var_118
  loc_6B96D5: ImpAdCallFPR4  = Chr()
  loc_6B96DA: FLdRfVar var_118
  loc_6B96DD: ConcatVar var_12C
  loc_6B96E1: FLdPr Me
  loc_6B96E4: MemLdRfVar from_stack_1.global_256
  loc_6B96E7: ConcatVar var_13C
  loc_6B96EB: LitI4 &HD
  loc_6B96F0: FLdRfVar var_14C
  loc_6B96F3: ImpAdCallFPR4  = Chr()
  loc_6B96F8: FLdRfVar var_14C
  loc_6B96FB: ConcatVar var_15C
  loc_6B96FF: LitI4 &HD
  loc_6B9704: FLdRfVar var_16C
  loc_6B9707: ImpAdCallFPR4  = Chr()
  loc_6B970C: FLdRfVar var_16C
  loc_6B970F: ConcatVar var_17C
  loc_6B9713: CStrVarTmp
  loc_6B9714: FStStr var_8C
  loc_6B9717: FFree1Str var_98
  loc_6B971A: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = ""
  loc_6B9731: ILdRf var_8C
  loc_6B9734: LitStr "Datos del despacho:"
  loc_6B9737: ConcatStr
  loc_6B9738: CVarStr var_D8
  loc_6B973B: LitI4 &HD
  loc_6B9740: FLdRfVar var_A8
  loc_6B9743: ImpAdCallFPR4  = Chr()
  loc_6B9748: FLdRfVar var_A8
  loc_6B974B: ConcatVar var_F8
  loc_6B974F: CStrVarTmp
  loc_6B9750: FStStr var_8C
  loc_6B9753: FFreeVar var_D8 = "": var_A8 = ""
  loc_6B975C: ILdRf var_8C
  loc_6B975F: LitStr "---------------------------------"
  loc_6B9762: ConcatStr
  loc_6B9763: CVarStr var_D8
  loc_6B9766: LitI4 &HD
  loc_6B976B: FLdRfVar var_A8
  loc_6B976E: ImpAdCallFPR4  = Chr()
  loc_6B9773: FLdRfVar var_A8
  loc_6B9776: ConcatVar var_F8
  loc_6B977A: CStrVarTmp
  loc_6B977B: FStStr var_8C
  loc_6B977E: FFreeVar var_D8 = "": var_A8 = ""
  loc_6B9787: ILdRf var_8C
  loc_6B978A: LitStr "Neto: "
  loc_6B978D: ConcatStr
  loc_6B978E: CVarStr var_D8
  loc_6B9791: LitI4 9
  loc_6B9796: FLdRfVar var_A8
  loc_6B9799: ImpAdCallFPR4  = Chr()
  loc_6B979E: FLdRfVar var_A8
  loc_6B97A1: ConcatVar var_F8
  loc_6B97A5: LitI4 9
  loc_6B97AA: FLdRfVar var_118
  loc_6B97AD: ImpAdCallFPR4  = Chr()
  loc_6B97B2: FLdRfVar var_118
  loc_6B97B5: ConcatVar var_12C
  loc_6B97B9: LitI4 1
  loc_6B97BE: LitI4 1
  loc_6B97C3: LitVarStr var_C8, "0.00"
  loc_6B97C8: FStVarCopyObj var_13C
  loc_6B97CB: FLdRfVar var_13C
  loc_6B97CE: FLdPr Me
  loc_6B97D1: MemLdRfVar from_stack_1.global_288
  loc_6B97D4: CVarRef
  loc_6B97D9: FLdRfVar var_14C
  loc_6B97DC: ImpAdCallFPR4  = Format(, )
  loc_6B97E1: FLdRfVar var_14C
  loc_6B97E4: ConcatVar var_15C
  loc_6B97E8: LitI4 &HD
  loc_6B97ED: FLdRfVar var_16C
  loc_6B97F0: ImpAdCallFPR4  = Chr()
  loc_6B97F5: FLdRfVar var_16C
  loc_6B97F8: ConcatVar var_17C
  loc_6B97FC: CStrVarTmp
  loc_6B97FD: FStStr var_8C
  loc_6B9800: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_13C = "": var_12C = "": var_14C = "": var_15C = "": var_16C = ""
  loc_6B9817: ILdRf var_8C
  loc_6B981A: LitStr "Impuestos: "
  loc_6B981D: ConcatStr
  loc_6B981E: CVarStr var_D8
  loc_6B9821: LitI4 9
  loc_6B9826: FLdRfVar var_A8
  loc_6B9829: ImpAdCallFPR4  = Chr()
  loc_6B982E: FLdRfVar var_A8
  loc_6B9831: ConcatVar var_F8
  loc_6B9835: LitI4 1
  loc_6B983A: LitI4 1
  loc_6B983F: LitVarStr var_C8, "0.00"
  loc_6B9844: FStVarCopyObj var_118
  loc_6B9847: FLdRfVar var_118
  loc_6B984A: FLdPr Me
  loc_6B984D: MemLdRfVar from_stack_1.global_296
  loc_6B9850: CVarRef
  loc_6B9855: FLdRfVar var_12C
  loc_6B9858: ImpAdCallFPR4  = Format(, )
  loc_6B985D: FLdRfVar var_12C
  loc_6B9860: ConcatVar var_13C
  loc_6B9864: LitI4 &HD
  loc_6B9869: FLdRfVar var_14C
  loc_6B986C: ImpAdCallFPR4  = Chr()
  loc_6B9871: FLdRfVar var_14C
  loc_6B9874: ConcatVar var_15C
  loc_6B9878: CStrVarTmp
  loc_6B9879: FStStr var_8C
  loc_6B987C: FFreeVar var_D8 = "": var_A8 = "": var_118 = "": var_F8 = "": var_12C = "": var_13C = "": var_14C = ""
  loc_6B988F: ILdRf var_8C
  loc_6B9892: LitStr "IVA: "
  loc_6B9895: ConcatStr
  loc_6B9896: CVarStr var_D8
  loc_6B9899: LitI4 9
  loc_6B989E: FLdRfVar var_A8
  loc_6B98A1: ImpAdCallFPR4  = Chr()
  loc_6B98A6: FLdRfVar var_A8
  loc_6B98A9: ConcatVar var_F8
  loc_6B98AD: LitI4 9
  loc_6B98B2: FLdRfVar var_118
  loc_6B98B5: ImpAdCallFPR4  = Chr()
  loc_6B98BA: FLdRfVar var_118
  loc_6B98BD: ConcatVar var_12C
  loc_6B98C1: LitI4 1
  loc_6B98C6: LitI4 1
  loc_6B98CB: LitVarStr var_C8, "0.00"
  loc_6B98D0: FStVarCopyObj var_13C
  loc_6B98D3: FLdRfVar var_13C
  loc_6B98D6: FLdPr Me
  loc_6B98D9: MemLdRfVar from_stack_1.global_304
  loc_6B98DC: CVarRef
  loc_6B98E1: FLdRfVar var_14C
  loc_6B98E4: ImpAdCallFPR4  = Format(, )
  loc_6B98E9: FLdRfVar var_14C
  loc_6B98EC: ConcatVar var_15C
  loc_6B98F0: LitI4 &HD
  loc_6B98F5: FLdRfVar var_16C
  loc_6B98F8: ImpAdCallFPR4  = Chr()
  loc_6B98FD: FLdRfVar var_16C
  loc_6B9900: ConcatVar var_17C
  loc_6B9904: CStrVarTmp
  loc_6B9905: FStStr var_8C
  loc_6B9908: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_13C = "": var_12C = "": var_14C = "": var_15C = "": var_16C = ""
  loc_6B991F: ILdRf var_8C
  loc_6B9922: LitStr "IVA Dif: "
  loc_6B9925: ConcatStr
  loc_6B9926: CVarStr var_D8
  loc_6B9929: LitI4 9
  loc_6B992E: FLdRfVar var_A8
  loc_6B9931: ImpAdCallFPR4  = Chr()
  loc_6B9936: FLdRfVar var_A8
  loc_6B9939: ConcatVar var_F8
  loc_6B993D: LitI4 9
  loc_6B9942: FLdRfVar var_118
  loc_6B9945: ImpAdCallFPR4  = Chr()
  loc_6B994A: FLdRfVar var_118
  loc_6B994D: ConcatVar var_12C
  loc_6B9951: LitI4 1
  loc_6B9956: LitI4 1
  loc_6B995B: LitVarStr var_C8, "0.00"
  loc_6B9960: FStVarCopyObj var_13C
  loc_6B9963: FLdRfVar var_13C
  loc_6B9966: FLdPr Me
  loc_6B9969: MemLdRfVar from_stack_1.global_312
  loc_6B996C: CVarRef
  loc_6B9971: FLdRfVar var_14C
  loc_6B9974: ImpAdCallFPR4  = Format(, )
  loc_6B9979: FLdRfVar var_14C
  loc_6B997C: ConcatVar var_15C
  loc_6B9980: LitI4 &HD
  loc_6B9985: FLdRfVar var_16C
  loc_6B9988: ImpAdCallFPR4  = Chr()
  loc_6B998D: FLdRfVar var_16C
  loc_6B9990: ConcatVar var_17C
  loc_6B9994: LitI4 &HD
  loc_6B9999: FLdRfVar var_18C
  loc_6B999C: ImpAdCallFPR4  = Chr()
  loc_6B99A1: FLdRfVar var_18C
  loc_6B99A4: ConcatVar var_19C
  loc_6B99A8: CStrVarTmp
  loc_6B99A9: FStStr var_8C
  loc_6B99AC: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_13C = "": var_12C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = ""
  loc_6B99C7: ILdRf var_8C
  loc_6B99CA: LitStr "Total: "
  loc_6B99CD: ConcatStr
  loc_6B99CE: CVarStr var_D8
  loc_6B99D1: LitI4 9
  loc_6B99D6: FLdRfVar var_A8
  loc_6B99D9: ImpAdCallFPR4  = Chr()
  loc_6B99DE: FLdRfVar var_A8
  loc_6B99E1: ConcatVar var_F8
  loc_6B99E5: LitI4 9
  loc_6B99EA: FLdRfVar var_118
  loc_6B99ED: ImpAdCallFPR4  = Chr()
  loc_6B99F2: FLdRfVar var_118
  loc_6B99F5: ConcatVar var_12C
  loc_6B99F9: LitI4 1
  loc_6B99FE: LitI4 1
  loc_6B9A03: LitVarStr var_C8, "0.00"
  loc_6B9A08: FStVarCopyObj var_13C
  loc_6B9A0B: FLdRfVar var_13C
  loc_6B9A0E: FLdPr Me
  loc_6B9A11: MemLdRfVar from_stack_1.global_320
  loc_6B9A14: CVarRef
  loc_6B9A19: FLdRfVar var_14C
  loc_6B9A1C: ImpAdCallFPR4  = Format(, )
  loc_6B9A21: FLdRfVar var_14C
  loc_6B9A24: ConcatVar var_15C
  loc_6B9A28: LitI4 &HD
  loc_6B9A2D: FLdRfVar var_16C
  loc_6B9A30: ImpAdCallFPR4  = Chr()
  loc_6B9A35: FLdRfVar var_16C
  loc_6B9A38: ConcatVar var_17C
  loc_6B9A3C: CStrVarTmp
  loc_6B9A3D: FStStr var_8C
  loc_6B9A40: FFreeVar var_D8 = "": var_A8 = "": var_F8 = "": var_118 = "": var_13C = "": var_12C = "": var_14C = "": var_15C = "": var_16C = ""
  loc_6B9A57: LitStr "FACTURA "
  loc_6B9A5A: FLdPr Me
  loc_6B9A5D: MemLdRfVar from_stack_1.global_280
  loc_6B9A60: LdFixedStr
  loc_6B9A63: FStStrNoPop var_98
  loc_6B9A66: ConcatStr
  loc_6B9A67: FStStrNoPop var_1A0
  loc_6B9A6A: LitStr " "
  loc_6B9A6D: ConcatStr
  loc_6B9A6E: FStStrNoPop var_1A8
  loc_6B9A71: FLdRfVar var_1A4
  loc_6B9A74: FLdPrThis
  loc_6B9A75: VCallAd Control_ID_CentroEmisor
  loc_6B9A78: FStAdFunc var_94
  loc_6B9A7B: FLdPr var_94
  loc_6B9A7E:  = Me.Text
  loc_6B9A83: ILdRf var_1A4
  loc_6B9A86: ConcatStr
  loc_6B9A87: FStStrNoPop var_1AC
  loc_6B9A8A: LitStr "-"
  loc_6B9A8D: ConcatStr
  loc_6B9A8E: FStStrNoPop var_1B0
  loc_6B9A91: FLdPr Me
  loc_6B9A94: MemLdStr global_284
  loc_6B9A97: ConcatStr
  loc_6B9A98: FStStr var_90
  loc_6B9A9B: FFreeStr var_98 = "": var_1A0 = "": var_1A8 = "": var_1A4 = "": var_1AC = ""
  loc_6B9AAA: FFree1Ad var_94
  loc_6B9AAD: ILdRf var_90
  loc_6B9AB0: LitStr " por $"
  loc_6B9AB3: ConcatStr
  loc_6B9AB4: CVarStr var_F8
  loc_6B9AB7: LitI4 1
  loc_6B9ABC: LitI4 1
  loc_6B9AC1: LitVarStr var_C8, "0.00"
  loc_6B9AC6: FStVarCopyObj var_A8
  loc_6B9AC9: FLdRfVar var_A8
  loc_6B9ACC: FLdPr Me
  loc_6B9ACF: MemLdRfVar from_stack_1.global_320
  loc_6B9AD2: CVarRef
  loc_6B9AD7: FLdRfVar var_D8
  loc_6B9ADA: ImpAdCallFPR4  = Format(, )
  loc_6B9ADF: FLdRfVar var_D8
  loc_6B9AE2: ConcatVar var_118
  loc_6B9AE6: CStrVarTmp
  loc_6B9AE7: FStStr var_90
  loc_6B9AEA: FFreeVar var_A8 = "": var_F8 = "": var_D8 = ""
  loc_6B9AF5: LitVar_Missing var_D8
  loc_6B9AF8: LitVar_Missing var_A8
  loc_6B9AFB: FLdRfVar var_90
  loc_6B9AFE: CVarRef
  loc_6B9B03: LitI4 &H21
  loc_6B9B08: FLdRfVar var_8C
  loc_6B9B0B: CVarRef
  loc_6B9B10: ImpAdCallI2 MsgBox(, , , , )
  loc_6B9B15: CI2I4
  loc_6B9B16: FStI2 var_86
  loc_6B9B19: FFreeVar var_A8 = ""
  loc_6B9B20: FLdI2 var_86
  loc_6B9B23: LitI2_Byte 1
  loc_6B9B25: EqI2
  loc_6B9B26: BranchF loc_6B9B42
  loc_6B9B29: LitI2_Byte &HB
  loc_6B9B2B: FLdPr Me
  loc_6B9B2E: Me.MousePointer = from_stack_1
  loc_6B9B33: Call EmitirComprobante()
  loc_6B9B38: LitI2_Byte 0
  loc_6B9B3A: FLdPr Me
  loc_6B9B3D: Me.MousePointer = from_stack_1
  loc_6B9B42: ExitProcHresult
End Sub

Public Function SeleccionGrillaGet() '443C34
  SeleccionGrillaGet = SeleccionGrilla
End Function

Public Sub SeleccionGrillaPut(Value) '443C43
  SeleccionGrilla = Value
End Sub

Public Function TipoIvaDesc(codigo) '5E4ED8
  'Data Table: 442D6C
  loc_5E4E68: ZeroRetVal
  loc_5E4E6A: ILdI2 codigo
  loc_5E4E6D: FStI2 var_8A
  loc_5E4E70: FLdI2 var_8A
  loc_5E4E73: LitI2_Byte 1
  loc_5E4E75: EqI2
  loc_5E4E76: BranchF loc_5E4E82
  loc_5E4E79: LitStr "Consumidor Final"
  loc_5E4E7C: FStStrCopy var_88
  loc_5E4E7F: Branch loc_5E4ED0
  loc_5E4E82: FLdI2 var_8A
  loc_5E4E85: LitI2_Byte 2
  loc_5E4E87: EqI2
  loc_5E4E88: BranchF loc_5E4E94
  loc_5E4E8B: LitStr "Exento"
  loc_5E4E8E: FStStrCopy var_88
  loc_5E4E91: Branch loc_5E4ED0
  loc_5E4E94: FLdI2 var_8A
  loc_5E4E97: LitI2_Byte 3
  loc_5E4E99: EqI2
  loc_5E4E9A: BranchF loc_5E4EA6
  loc_5E4E9D: LitStr "No Responsable"
  loc_5E4EA0: FStStrCopy var_88
  loc_5E4EA3: Branch loc_5E4ED0
  loc_5E4EA6: FLdI2 var_8A
  loc_5E4EA9: LitI2_Byte 4
  loc_5E4EAB: EqI2
  loc_5E4EAC: BranchF loc_5E4EB8
  loc_5E4EAF: LitStr "Responsable Inscripto"
  loc_5E4EB2: FStStrCopy var_88
  loc_5E4EB5: Branch loc_5E4ED0
  loc_5E4EB8: FLdI2 var_8A
  loc_5E4EBB: LitI2_Byte 5
  loc_5E4EBD: EqI2
  loc_5E4EBE: BranchF loc_5E4ECA
  loc_5E4EC1: LitStr "Responsable No Inscripto"
  loc_5E4EC4: FStStrCopy var_88
  loc_5E4EC7: Branch loc_5E4ED0
  loc_5E4ECA: LitStr vbNullString
  loc_5E4ECD: FStStrCopy var_88
  loc_5E4ED0: ExitProcCbHresult
  loc_5E4ED6: FLdI2 var_C00
End Function

Public Sub SaltoLinea(filehandle, CantLineas) '5D32E4
  'Data Table: 442D6C
  loc_5D32C4: LitI2_Byte 1
  loc_5D32C6: FLdRfVar var_86
  loc_5D32C9: ILdI2 CantLineas
  loc_5D32CC: ForI2 var_8A
  loc_5D32D2: ILdI2 filehandle
  loc_5D32D5: PrintFile
  loc_5D32DB: FLdRfVar var_86
  loc_5D32DE: NextI2 var_8A, loc_5D32D2
  loc_5D32E3: ExitProcHresult
End Sub

Public Sub EmitirComprobante() '7004AC
  'Data Table: 442D6C
  loc_6FF428: OnErrorGoto loc_7003A3
  loc_6FF42D: LitI2_Byte &HFF
  loc_6FF42F: FStI2 var_DA
  loc_6FF434: FLdPr Me
  loc_6FF437: MemLdI2 global_164
  loc_6FF43A: FStI2 var_86
  loc_6FF43F: FLdRfVar var_F0
  loc_6FF442: FLdPrThis
  loc_6FF443: VCallAd Control_ID_CentroEmisor
  loc_6FF446: FStAdFunc var_EC
  loc_6FF449: FLdPr var_EC
  loc_6FF44C:  = Me.Text
  loc_6FF451: LitI4 1
  loc_6FF456: LitI4 1
  loc_6FF45B: LitVarStr var_110, "0000"
  loc_6FF460: FStVarCopyObj var_120
  loc_6FF463: FLdRfVar var_120
  loc_6FF466: FLdZeroAd var_F0
  loc_6FF469: CVarStr var_100
  loc_6FF46C: FLdRfVar var_130
  loc_6FF46F: ImpAdCallFPR4  = Format(, )
  loc_6FF474: FLdRfVar var_130
  loc_6FF477: CStrVarTmp
  loc_6FF478: FStStr var_94
  loc_6FF47B: FFree1Ad var_EC
  loc_6FF47E: FFreeVar var_100 = "": var_120 = ""
  loc_6FF489: FLdPr Me
  loc_6FF48C: MemLdStr global_284
  loc_6FF48F: FStStrCopy var_90
  loc_6FF494: LitStr "F"
  loc_6FF497: FLdPr Me
  loc_6FF49A: MemLdRfVar from_stack_1.global_280
  loc_6FF49D: LdFixedStr
  loc_6FF4A0: FStStrNoPop var_F0
  loc_6FF4A3: ConcatStr
  loc_6FF4A4: FStStr var_8C
  loc_6FF4A7: FFree1Str var_F0
  loc_6FF4AC: FLdRfVar var_100
  loc_6FF4AF: ImpAdCallFPR4  = Date
  loc_6FF4B4: FLdRfVar var_100
  loc_6FF4B7: FStVar var_A4
  loc_6FF4BD: FLdRfVar var_100
  loc_6FF4C0: ImpAdCallFPR4  = Time
  loc_6FF4C5: FLdRfVar var_100
  loc_6FF4C8: FStVar var_C0
  loc_6FF4CE: FLdRfVar var_A4
  loc_6FF4D1: FLdRfVar var_100
  loc_6FF4D4: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6FF4D9: LitI4 1
  loc_6FF4DE: LitI4 1
  loc_6FF4E3: LitVarStr var_110, "0000"
  loc_6FF4E8: FStVarCopyObj var_120
  loc_6FF4EB: FLdRfVar var_120
  loc_6FF4EE: FLdRfVar var_100
  loc_6FF4F1: FLdRfVar var_130
  loc_6FF4F4: ImpAdCallFPR4  = Format(, )
  loc_6FF4F9: FLdRfVar var_130
  loc_6FF4FC: CStrVarTmp
  loc_6FF4FD: FStStr var_A8
  loc_6FF500: FFreeVar var_100 = "": var_120 = ""
  loc_6FF50B: FLdRfVar var_A4
  loc_6FF50E: FLdRfVar var_100
  loc_6FF511: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6FF516: LitI4 1
  loc_6FF51B: LitI4 1
  loc_6FF520: LitVarStr var_110, "00"
  loc_6FF525: FStVarCopyObj var_120
  loc_6FF528: FLdRfVar var_120
  loc_6FF52B: FLdRfVar var_100
  loc_6FF52E: FLdRfVar var_130
  loc_6FF531: ImpAdCallFPR4  = Format(, )
  loc_6FF536: FLdRfVar var_130
  loc_6FF539: CStrVarTmp
  loc_6FF53A: FStStr var_AC
  loc_6FF53D: FFreeVar var_100 = "": var_120 = ""
  loc_6FF548: FLdRfVar var_A4
  loc_6FF54B: FLdRfVar var_100
  loc_6FF54E: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6FF553: LitI4 1
  loc_6FF558: LitI4 1
  loc_6FF55D: LitVarStr var_110, "00"
  loc_6FF562: FStVarCopyObj var_120
  loc_6FF565: FLdRfVar var_120
  loc_6FF568: FLdRfVar var_100
  loc_6FF56B: FLdRfVar var_130
  loc_6FF56E: ImpAdCallFPR4  = Format(, )
  loc_6FF573: FLdRfVar var_130
  loc_6FF576: CStrVarTmp
  loc_6FF577: FStStr var_B0
  loc_6FF57A: FFreeVar var_100 = "": var_120 = ""
  loc_6FF585: FLdRfVar var_C0
  loc_6FF588: FLdRfVar var_100
  loc_6FF58B: ImpAdCallFPR4  = Hour()
  loc_6FF590: LitI4 1
  loc_6FF595: LitI4 1
  loc_6FF59A: LitVarStr var_110, "00"
  loc_6FF59F: FStVarCopyObj var_120
  loc_6FF5A2: FLdRfVar var_120
  loc_6FF5A5: FLdRfVar var_100
  loc_6FF5A8: FLdRfVar var_130
  loc_6FF5AB: ImpAdCallFPR4  = Format(, )
  loc_6FF5B0: FLdRfVar var_130
  loc_6FF5B3: CStrVarTmp
  loc_6FF5B4: FStStr var_C4
  loc_6FF5B7: FFreeVar var_100 = "": var_120 = ""
  loc_6FF5C2: FLdRfVar var_C0
  loc_6FF5C5: FLdRfVar var_100
  loc_6FF5C8: ImpAdCallFPR4  = Minute()
  loc_6FF5CD: LitI4 1
  loc_6FF5D2: LitI4 1
  loc_6FF5D7: LitVarStr var_110, "00"
  loc_6FF5DC: FStVarCopyObj var_120
  loc_6FF5DF: FLdRfVar var_120
  loc_6FF5E2: FLdRfVar var_100
  loc_6FF5E5: FLdRfVar var_130
  loc_6FF5E8: ImpAdCallFPR4  = Format(, )
  loc_6FF5ED: FLdRfVar var_130
  loc_6FF5F0: CStrVarTmp
  loc_6FF5F1: FStStr var_C8
  loc_6FF5F4: FFreeVar var_100 = "": var_120 = ""
  loc_6FF5FF: FLdRfVar var_C0
  loc_6FF602: FLdRfVar var_100
  loc_6FF605: ImpAdCallFPR4  = Second()
  loc_6FF60A: LitI4 1
  loc_6FF60F: LitI4 1
  loc_6FF614: LitVarStr var_110, "00"
  loc_6FF619: FStVarCopyObj var_120
  loc_6FF61C: FLdRfVar var_120
  loc_6FF61F: FLdRfVar var_100
  loc_6FF622: FLdRfVar var_130
  loc_6FF625: ImpAdCallFPR4  = Format(, )
  loc_6FF62A: FLdRfVar var_130
  loc_6FF62D: CStrVarTmp
  loc_6FF62E: FStStr var_CC
  loc_6FF631: FFreeVar var_100 = "": var_120 = ""
  loc_6FF63C: LitI4 1
  loc_6FF641: LitI4 1
  loc_6FF646: LitVarStr var_140, "0000"
  loc_6FF64B: FStVarCopyObj var_100
  loc_6FF64E: FLdRfVar var_100
  loc_6FF651: FLdRfVar var_94
  loc_6FF654: CVarRef
  loc_6FF659: FLdRfVar var_120
  loc_6FF65C: ImpAdCallFPR4  = Format(, )
  loc_6FF661: FLdRfVar var_120
  loc_6FF664: CStrVarTmp
  loc_6FF665: FStStr var_D0
  loc_6FF668: FFreeVar var_100 = ""
  loc_6FF671: ILdRf var_D0
  loc_6FF674: CVarStr var_140
  loc_6FF677: LitI4 1
  loc_6FF67C: FLdRfVar var_8C
  loc_6FF67F: CVarRef
  loc_6FF684: FLdRfVar var_100
  loc_6FF687: ImpAdCallFPR4  = Right(, )
  loc_6FF68C: FLdRfVar var_100
  loc_6FF68F: ConcatVar var_120
  loc_6FF693: CStrVarTmp
  loc_6FF694: FStStr var_D0
  loc_6FF697: FFreeVar var_100 = ""
  loc_6FF6A0: ILdRf var_D0
  loc_6FF6A3: CVarStr var_150
  loc_6FF6A6: LitI4 1
  loc_6FF6AB: LitI4 1
  loc_6FF6B0: LitVarStr var_140, "00000000"
  loc_6FF6B5: FStVarCopyObj var_100
  loc_6FF6B8: FLdRfVar var_100
  loc_6FF6BB: FLdRfVar var_90
  loc_6FF6BE: CVarRef
  loc_6FF6C3: FLdRfVar var_120
  loc_6FF6C6: ImpAdCallFPR4  = Format(, )
  loc_6FF6CB: FLdRfVar var_120
  loc_6FF6CE: ConcatVar var_130
  loc_6FF6D2: CStrVarTmp
  loc_6FF6D3: FStStr var_D0
  loc_6FF6D6: FFreeVar var_100 = "": var_120 = ""
  loc_6FF6E1: ILdRf var_D0
  loc_6FF6E4: CVarStr var_150
  loc_6FF6E7: LitI4 1
  loc_6FF6EC: LitI4 1
  loc_6FF6F1: LitVarStr var_140, "0000"
  loc_6FF6F6: FStVarCopyObj var_100
  loc_6FF6F9: FLdRfVar var_100
  loc_6FF6FC: FLdRfVar var_86
  loc_6FF6FF: CVarRef
  loc_6FF704: FLdRfVar var_120
  loc_6FF707: ImpAdCallFPR4  = Format(, )
  loc_6FF70C: FLdRfVar var_120
  loc_6FF70F: ConcatVar var_130
  loc_6FF713: CStrVarTmp
  loc_6FF714: FStStr var_D0
  loc_6FF717: FFreeVar var_100 = "": var_120 = ""
  loc_6FF722: ILdRf var_D0
  loc_6FF725: CVarStr var_150
  loc_6FF728: LitI4 1
  loc_6FF72D: LitI4 1
  loc_6FF732: LitVarStr var_140, "00000000"
  loc_6FF737: FStVarCopyObj var_120
  loc_6FF73A: FLdRfVar var_120
  loc_6FF73D: FLdPr Me
  loc_6FF740: MemLdR8 global_112
  loc_6FF743: CR8Cy
  loc_6FF744: ImpAdLdFPR4 MemVar_74C2E0
  loc_6FF747: MulR8
  loc_6FF748: CVarR8
  loc_6FF74C: FLdRfVar var_130
  loc_6FF74F: ImpAdCallFPR4  = Format(, )
  loc_6FF754: FLdRfVar var_130
  loc_6FF757: ConcatVar var_160
  loc_6FF75B: CStrVarTmp
  loc_6FF75C: FStStr var_D0
  loc_6FF75F: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_6FF76C: ILdRf var_D0
  loc_6FF76F: CVarStr var_150
  loc_6FF772: LitI4 1
  loc_6FF777: LitI4 1
  loc_6FF77C: LitVarStr var_140, "00000000"
  loc_6FF781: FStVarCopyObj var_120
  loc_6FF784: FLdRfVar var_120
  loc_6FF787: FLdPr Me
  loc_6FF78A: MemLdR8 global_96
  loc_6FF78D: CR8Cy
  loc_6FF78E: ImpAdLdFPR4 MemVar_74C2E0
  loc_6FF791: MulR8
  loc_6FF792: CVarR8
  loc_6FF796: FLdRfVar var_130
  loc_6FF799: ImpAdCallFPR4  = Format(, )
  loc_6FF79E: FLdRfVar var_130
  loc_6FF7A1: ConcatVar var_160
  loc_6FF7A5: CStrVarTmp
  loc_6FF7A6: FStStr var_D0
  loc_6FF7A9: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_6FF7B6: ILdRf var_D0
  loc_6FF7B9: CVarStr var_150
  loc_6FF7BC: LitI4 1
  loc_6FF7C1: LitI4 1
  loc_6FF7C6: LitVarStr var_140, "00000000"
  loc_6FF7CB: FStVarCopyObj var_120
  loc_6FF7CE: FLdRfVar var_120
  loc_6FF7D1: FLdPr Me
  loc_6FF7D4: MemLdR8 global_136
  loc_6FF7D7: CR8Cy
  loc_6FF7D8: ImpAdLdFPR4 MemVar_74C2E0
  loc_6FF7DB: MulR8
  loc_6FF7DC: CVarR8
  loc_6FF7E0: FLdRfVar var_130
  loc_6FF7E3: ImpAdCallFPR4  = Format(, )
  loc_6FF7E8: FLdRfVar var_130
  loc_6FF7EB: ConcatVar var_160
  loc_6FF7EF: CStrVarTmp
  loc_6FF7F0: FStStr var_D0
  loc_6FF7F3: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_6FF800: ILdRf var_D0
  loc_6FF803: CVarStr var_150
  loc_6FF806: LitI4 1
  loc_6FF80B: LitI4 1
  loc_6FF810: LitVarStr var_140, "00000000"
  loc_6FF815: FStVarCopyObj var_120
  loc_6FF818: FLdRfVar var_120
  loc_6FF81B: LitI2_Byte 0
  loc_6FF81D: CR8I2
  loc_6FF81E: ImpAdLdFPR4 MemVar_74C2E0
  loc_6FF821: MulR8
  loc_6FF822: CVarR4
  loc_6FF826: FLdRfVar var_130
  loc_6FF829: ImpAdCallFPR4  = Format(, )
  loc_6FF82E: FLdRfVar var_130
  loc_6FF831: ConcatVar var_160
  loc_6FF835: CStrVarTmp
  loc_6FF836: FStStr var_D0
  loc_6FF839: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_6FF846: ILdRf var_D0
  loc_6FF849: CVarStr var_150
  loc_6FF84C: LitI4 1
  loc_6FF851: LitI4 1
  loc_6FF856: LitVarStr var_140, "00000000"
  loc_6FF85B: FStVarCopyObj var_120
  loc_6FF85E: FLdRfVar var_120
  loc_6FF861: FLdPr Me
  loc_6FF864: MemLdR8 global_120
  loc_6FF867: CR8Cy
  loc_6FF868: ImpAdLdFPR4 MemVar_74C2E0
  loc_6FF86B: MulR8
  loc_6FF86C: CVarR8
  loc_6FF870: FLdRfVar var_130
  loc_6FF873: ImpAdCallFPR4  = Format(, )
  loc_6FF878: FLdRfVar var_130
  loc_6FF87B: ConcatVar var_160
  loc_6FF87F: CStrVarTmp
  loc_6FF880: FStStr var_D0
  loc_6FF883: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_6FF890: ILdRf var_D0
  loc_6FF893: LitStr "01"
  loc_6FF896: ConcatStr
  loc_6FF897: FStStr var_D0
  loc_6FF89C: FLdRfVar var_162
  loc_6FF89F: FLdRfVar var_D2
  loc_6FF8A2: ILdRf var_D0
  loc_6FF8A5: FLdRfVar var_EC
  loc_6FF8A8: ImpAdLdRf MemVar_74C760
  loc_6FF8AB: NewIfNullPr Formx
  loc_6FF8AE: from_stack_1v = Formx.global_4589716Get()
  loc_6FF8B3: FLdPr var_EC
  loc_6FF8B6:  = Formx.CurrentY
  loc_6FF8BB: FLdI2 var_162
  loc_6FF8BE: NotI4
  loc_6FF8BF: FFree1Ad var_EC
  loc_6FF8C2: BranchF loc_6FF8FB
  loc_6FF8C7: FLdRfVar var_100
  loc_6FF8CA: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6FF8CF: FLdRfVar var_100
  loc_6FF8D2: CBoolVarNull
  loc_6FF8D4: FFree1Var var_100 = ""
  loc_6FF8D7: BranchF loc_6FF8F4
  loc_6FF8DC: ILdRf Me
  loc_6FF8DF: FStAdNoPop
  loc_6FF8E3: ImpAdLdRf MemVar_7520D4
  loc_6FF8E6: NewIfNullPr Global
  loc_6FF8E9: Global.Unload from_stack_1
  loc_6FF8EE: FFree1Ad var_EC
  loc_6FF8F3: ExitProcHresult
  loc_6FF8F8: Branch loc_6FF89A
  loc_6FF8FD: FLdRfVar var_168
  loc_6FF900: LitI2_Byte 0
  loc_6FF902: FLdPrThis
  loc_6FF903: VCallAd Control_ID_Tipo
  loc_6FF906: FStAdFunc var_EC
  loc_6FF909: FLdPr var_EC
  loc_6FF90C: Set from_stack_2 = Me(from_stack_1)
  loc_6FF911: FLdPr var_168
  loc_6FF914: LateIdLdVar var_100 DispID_-501 -1
  loc_6FF91B: CI4Var
  loc_6FF91D: LitI4 -2147483633
  loc_6FF922: EqI4
  loc_6FF923: FFreeAd var_EC = ""
  loc_6FF92A: FFree1Var var_100 = ""
  loc_6FF92D: BranchF loc_6FF93A
  loc_6FF932: LitI2_Byte &H21
  loc_6FF934: CUI1I2
  loc_6FF936: ImpAdStUI1 MemVar_74C380
  loc_6FF93E: LitI2_Byte 0
  loc_6FF940: FStI2 var_DA
  loc_6FF945: LitVar_Missing var_100
  loc_6FF948: ImpAdCallI2 FreeFile()
  loc_6FF94D: FStI2 var_E2
  loc_6FF950: FFree1Var var_100 = ""
  loc_6FF955: LitVarI2 var_110, 0
  loc_6FF95A: PopAdLdVar
  loc_6FF95B: LitStr "InvoicePrinterPort"
  loc_6FF95E: LitStr "Startup"
  loc_6FF961: LitStr "CEM44"
  loc_6FF964: ImpAdCallI2 GetSetting(, , , )
  loc_6FF969: FStStrNoPop var_F0
  loc_6FF96C: CI4Str
  loc_6FF96D: ImpAdLdRf MemVar_74A26C
  loc_6FF970: Ary1LdI4
  loc_6FF971: FStStrCopy var_E0
  loc_6FF974: FFree1Str var_F0
  loc_6FF979: ILdRf var_E0
  loc_6FF97C: FLdI2 var_E2
  loc_6FF97F: LitI2_Byte &HFF
  loc_6FF981: OpenFile
  loc_6FF987: FLdRfVar var_E2
  loc_6FF98A: ImpAdCallFPR4 Proc_19_0_67707C()
  loc_6FF991: LitI2_Byte 2
  loc_6FF993: PopTmpLdAd2 var_162
  loc_6FF996: FLdRfVar var_E2
  loc_6FF999: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FF9A0: LitI4 &H12
  loc_6FF9A5: ImpAdCallI2 Chr$()
  loc_6FF9AA: FStStr var_188
  loc_6FF9AD: LitI4 &H1B
  loc_6FF9B2: ImpAdCallI2 Chr$()
  loc_6FF9B7: FStStr var_18C
  loc_6FF9BA: LitI4 0
  loc_6FF9BF: ImpAdCallI2 Chr$()
  loc_6FF9C4: FStStr var_190
  loc_6FF9C7: LitI4 &HF
  loc_6FF9CC: ImpAdCallI2 Chr$()
  loc_6FF9D1: FStStr var_194
  loc_6FF9D4: FLdZeroAd var_194
  loc_6FF9D7: FStStrNoPop var_184
  loc_6FF9DA: ILdRf var_B0
  loc_6FF9DD: LitStr "/"
  loc_6FF9E0: ConcatStr
  loc_6FF9E1: FStStrNoPop var_174
  loc_6FF9E4: ILdRf var_AC
  loc_6FF9E7: ConcatStr
  loc_6FF9E8: FStStrNoPop var_178
  loc_6FF9EB: LitStr "/"
  loc_6FF9EE: ConcatStr
  loc_6FF9EF: FStStrNoPop var_17C
  loc_6FF9F2: ILdRf var_A8
  loc_6FF9F5: ConcatStr
  loc_6FF9F6: FStStrNoPop var_180
  loc_6FF9F9: LitI2_Byte &H2F
  loc_6FF9FB: FLdZeroAd var_190
  loc_6FF9FE: FStStrNoPop var_170
  loc_6FFA01: LitStr "x"
  loc_6FFA04: FLdZeroAd var_18C
  loc_6FFA07: FStStrNoPop var_16C
  loc_6FFA0A: FLdZeroAd var_188
  loc_6FFA0D: FStStrNoPop var_F0
  loc_6FFA10: FLdI2 var_E2
  loc_6FFA13: PrintFile
  loc_6FFA19: FFreeStr var_F0 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_6FFA36: LitI2_Byte 5
  loc_6FFA38: PopTmpLdAd2 var_162
  loc_6FFA3B: FLdRfVar var_E2
  loc_6FFA3E: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFA45: FLdRfVar var_16C
  loc_6FFA48: FLdPrThis
  loc_6FFA49: VCallAd Control_ID_NroCliente
  loc_6FFA4C: FStAdFunc var_EC
  loc_6FFA4F: FLdPr var_EC
  loc_6FFA52:  = Me.Text
  loc_6FFA57: LitVarStr var_140, vbNullString
  loc_6FFA5C: FStVarCopyObj var_120
  loc_6FFA5F: FLdRfVar var_120
  loc_6FFA62: LitStr " ("
  loc_6FFA65: ILdRf var_16C
  loc_6FFA68: ConcatStr
  loc_6FFA69: FStStrNoPop var_170
  loc_6FFA6C: LitStr ")"
  loc_6FFA6F: ConcatStr
  loc_6FFA70: CVarStr var_100
  loc_6FFA73: FLdPr Me
  loc_6FFA76: MemLdRfVar from_stack_1.global_280
  loc_6FFA79: LdFixedStr
  loc_6FFA7C: FStStrNoPop var_F0
  loc_6FFA7F: LitStr "A"
  loc_6FFA82: EqStr
  loc_6FFA84: CVarBoolI2 var_110
  loc_6FFA88: FLdRfVar var_130
  loc_6FFA8B: ImpAdCallFPR4  = IIf(, , )
  loc_6FFA90: FLdRfVar var_130
  loc_6FFA93: FLdPr Me
  loc_6FFA96: MemLdStr global_168
  loc_6FFA99: LitI2_Byte &H19
  loc_6FFA9B: FLdI2 var_E2
  loc_6FFA9E: PrintFile
  loc_6FFAA4: FFreeStr var_F0 = "": var_16C = ""
  loc_6FFAAD: FFree1Ad var_EC
  loc_6FFAB0: FFreeVar var_110 = "": var_100 = "": var_120 = ""
  loc_6FFABD: FLdPr Me
  loc_6FFAC0: MemLdRfVar from_stack_1.global_172
  loc_6FFAC3: ImpAdCallI2 IsNull()
  loc_6FFAC8: FStI2 var_162
  loc_6FFACB: FLdPr Me
  loc_6FFACE: MemLdRfVar from_stack_1.global_172
  loc_6FFAD1: LitVarStr var_140, vbNullString
  loc_6FFAD6: FStVarCopyObj var_100
  loc_6FFAD9: FLdRfVar var_100
  loc_6FFADC: FLdI2 var_162
  loc_6FFADF: CVarBoolI2 var_110
  loc_6FFAE3: FLdRfVar var_120
  loc_6FFAE6: ImpAdCallFPR4  = IIf(, , )
  loc_6FFAEB: FLdRfVar var_120
  loc_6FFAEE: LitI2_Byte &H19
  loc_6FFAF0: FLdI2 var_E2
  loc_6FFAF3: PrintFile
  loc_6FFAF9: FFreeVar var_110 = "": var_100 = ""
  loc_6FFB04: LitI2_Byte 1
  loc_6FFB06: PopTmpLdAd2 var_162
  loc_6FFB09: FLdRfVar var_E2
  loc_6FFB0C: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFB13: FLdRfVar var_F0
  loc_6FFB16: FLdPr Me
  loc_6FFB19: MemLdRfVar from_stack_1.global_272
  loc_6FFB1C: from_stack_2v = TipoIvaDesc(from_stack_1v)
  loc_6FFB21: ILdRf var_F0
  loc_6FFB24: LitI2_Byte &H19
  loc_6FFB26: FLdI2 var_E2
  loc_6FFB29: PrintFile
  loc_6FFB2F: FFree1Str var_F0
  loc_6FFB34: FLdPr Me
  loc_6FFB37: MemLdRfVar from_stack_1.global_256
  loc_6FFB3A: ImpAdCallI2 IsNull()
  loc_6FFB3F: FStI2 var_162
  loc_6FFB42: FLdPr Me
  loc_6FFB45: MemLdRfVar from_stack_1.global_256
  loc_6FFB48: LitVarStr var_140, vbNullString
  loc_6FFB4D: FStVarCopyObj var_100
  loc_6FFB50: FLdRfVar var_100
  loc_6FFB53: FLdI2 var_162
  loc_6FFB56: CVarBoolI2 var_110
  loc_6FFB5A: FLdRfVar var_120
  loc_6FFB5D: ImpAdCallFPR4  = IIf(, , )
  loc_6FFB62: FLdRfVar var_120
  loc_6FFB65: LitI2_Byte &H46
  loc_6FFB67: FLdI2 var_E2
  loc_6FFB6A: PrintFile
  loc_6FFB70: FFreeVar var_110 = "": var_100 = ""
  loc_6FFB7B: LitI2_Byte 1
  loc_6FFB7D: PopTmpLdAd2 var_162
  loc_6FFB80: FLdRfVar var_E2
  loc_6FFB83: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFB8A: FLdRfVar var_162
  loc_6FFB8D: ImpAdLdRf MemVar_74E128
  loc_6FFB90: NewIfNullPr FormadePago
  loc_6FFB93: from_stack_1v = FormadePago.PagaconTarjetaGet()
  loc_6FFB98: ImpAdLdRf MemVar_74E128
  loc_6FFB9B: NewIfNullPr FormadePago
  loc_6FFB9E: VCallAd Control_ID_Tarjeta
  loc_6FFBA1: CVarAd
  loc_6FFBA5: FLdRfVar var_120
  loc_6FFBA8: ImpAdCallFPR4  = RTrim()
  loc_6FFBAD: FLdRfVar var_F0
  loc_6FFBB0: ImpAdLdRf MemVar_74E128
  loc_6FFBB3: NewIfNullPr FormadePago
  loc_6FFBB6: VCallAd Control_ID_NumeroTarjeta
  loc_6FFBB9: FStAdFunc var_EC
  loc_6FFBBC: FLdPr var_EC
  loc_6FFBBF:  = FormadePago.TextBox.Text
  loc_6FFBC4: LitVarStr var_1C4, "Contado Efectivo"
  loc_6FFBC9: FStVarCopyObj var_1D4
  loc_6FFBCC: FLdRfVar var_1D4
  loc_6FFBCF: FLdRfVar var_120
  loc_6FFBD2: LitVarStr var_110, "  ("
  loc_6FFBD7: ConcatVar var_130
  loc_6FFBDB: FLdZeroAd var_F0
  loc_6FFBDE: CVarStr var_160
  loc_6FFBE1: ConcatVar var_1A4
  loc_6FFBE5: LitVarStr var_140, ")"
  loc_6FFBEA: ConcatVar var_1B4
  loc_6FFBEE: FLdI2 var_162
  loc_6FFBF1: CVarBoolI2 var_150
  loc_6FFBF5: FLdRfVar var_1E4
  loc_6FFBF8: ImpAdCallFPR4  = IIf(, , )
  loc_6FFBFD: FLdRfVar var_1E4
  loc_6FFC00: LitI2_Byte &H23
  loc_6FFC02: FLdI2 var_E2
  loc_6FFC05: PrintFile
  loc_6FFC0B: FFree1Ad var_EC
  loc_6FFC0E: FFreeVar var_100 = "": var_120 = "": var_130 = "": var_160 = "": var_1A4 = "": var_150 = "": var_1B4 = "": var_1D4 = ""
  loc_6FFC25: LitI2_Byte 3
  loc_6FFC27: PopTmpLdAd2 var_162
  loc_6FFC2A: FLdRfVar var_E2
  loc_6FFC2D: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFC34: LitI2_Byte 1
  loc_6FFC36: FStI2 var_E4
  loc_6FFC3B: LitI2_Byte 1
  loc_6FFC3D: FLdRfVar var_E6
  loc_6FFC40: LitI2_Byte 5
  loc_6FFC42: ForI2 var_1E8
  loc_6FFC4A: FLdI2 var_E6
  loc_6FFC4D: FLdI2 var_E4
  loc_6FFC50: LeI2
  loc_6FFC51: BranchF loc_6FFEB0
  loc_6FFC56: LitI4 &H12
  loc_6FFC5B: FLdRfVar var_100
  loc_6FFC5E: ImpAdCallFPR4  = Chr()
  loc_6FFC63: LitI4 1
  loc_6FFC68: LitI4 1
  loc_6FFC6D: LitVarStr var_140, "####0.00"
  loc_6FFC72: FStVarCopyObj var_120
  loc_6FFC75: FLdRfVar var_120
  loc_6FFC78: FLdI2 var_E6
  loc_6FFC7B: CI4UI1
  loc_6FFC7C: FLdPr Me
  loc_6FFC7F: MemLdRfVar from_stack_1.global_56
  loc_6FFC82: Ary1LdPr
  loc_6FFC83: MemLdRfVar from_stack_1.global_0
  loc_6FFC86: CVarRef
  loc_6FFC8B: ImpAdCallI2 Format$(, )
  loc_6FFC90: FStStr var_F0
  loc_6FFC93: LitI4 1
  loc_6FFC98: LitI4 1
  loc_6FFC9D: LitVarStr var_150, "@@@@@@@@"
  loc_6FFCA2: FStVarCopyObj var_160
  loc_6FFCA5: FLdRfVar var_160
  loc_6FFCA8: FLdZeroAd var_F0
  loc_6FFCAB: CVarStr var_130
  loc_6FFCAE: ImpAdCallI2 Format$(, )
  loc_6FFCB3: FStStr var_16C
  loc_6FFCB6: LitI4 &HF
  loc_6FFCBB: FLdRfVar var_1D4
  loc_6FFCBE: ImpAdCallFPR4  = Chr()
  loc_6FFCC3: FLdRfVar var_100
  loc_6FFCC6: FLdZeroAd var_16C
  loc_6FFCC9: CVarStr var_1A4
  loc_6FFCCC: ConcatVar var_1B4
  loc_6FFCD0: FLdRfVar var_1D4
  loc_6FFCD3: ConcatVar var_1E4
  loc_6FFCD7: LitI2_Byte &HC
  loc_6FFCD9: FLdI2 var_E2
  loc_6FFCDC: PrintFile
  loc_6FFCE2: FFreeStr var_F0 = ""
  loc_6FFCE9: FFreeVar var_120 = "": var_130 = "": var_160 = "": var_100 = "": var_1A4 = "": var_1B4 = "": var_1D4 = ""
  loc_6FFCFE: LitI4 &H19
  loc_6FFD03: FLdI2 var_E6
  loc_6FFD06: CI4UI1
  loc_6FFD07: FLdPr Me
  loc_6FFD0A: MemLdRfVar from_stack_1.global_56
  loc_6FFD0D: Ary1LdPr
  loc_6FFD0E: MemLdStr global_8
  loc_6FFD11: ImpAdCallI2 Left$(, )
  loc_6FFD16: FStStrNoPop var_F0
  loc_6FFD19: ImpAdCallI2 Trim$()
  loc_6FFD1E: FStStr var_170
  loc_6FFD21: LitI4 1
  loc_6FFD26: LitI4 1
  loc_6FFD2B: LitVarStr var_110, "!@@@@@@@@@@@@@@@@@@@@@@@@@"
  loc_6FFD30: FStVarCopyObj var_120
  loc_6FFD33: FLdRfVar var_120
  loc_6FFD36: FLdZeroAd var_170
  loc_6FFD39: CVarStr var_100
  loc_6FFD3C: ImpAdCallI2 Format$(, )
  loc_6FFD41: FStStr var_174
  loc_6FFD44: FLdZeroAd var_174
  loc_6FFD47: FStStrNoPop var_16C
  loc_6FFD4A: LitI2_Byte &H1B
  loc_6FFD4C: FLdI2 var_E2
  loc_6FFD4F: PrintFile
  loc_6FFD55: FFreeStr var_F0 = "": var_16C = "": var_170 = ""
  loc_6FFD60: FFreeVar var_100 = ""
  loc_6FFD69: LitI4 &H12
  loc_6FFD6E: FLdRfVar var_100
  loc_6FFD71: ImpAdCallFPR4  = Chr()
  loc_6FFD76: LitI4 1
  loc_6FFD7B: LitI4 1
  loc_6FFD80: ImpAdLdRf MemVar_74C350
  loc_6FFD83: CVarRef
  loc_6FFD88: FLdI2 var_E6
  loc_6FFD8B: CI4UI1
  loc_6FFD8C: FLdPr Me
  loc_6FFD8F: MemLdRfVar from_stack_1.global_56
  loc_6FFD92: Ary1LdPr
  loc_6FFD93: MemLdRfVar from_stack_1.global_12
  loc_6FFD96: CVarRef
  loc_6FFD9B: ImpAdCallI2 Format$(, )
  loc_6FFDA0: FStStr var_F0
  loc_6FFDA3: LitI4 1
  loc_6FFDA8: LitI4 1
  loc_6FFDAD: LitVarStr var_150, "@@@@@@@@@"
  loc_6FFDB2: FStVarCopyObj var_130
  loc_6FFDB5: FLdRfVar var_130
  loc_6FFDB8: FLdZeroAd var_F0
  loc_6FFDBB: CVarStr var_120
  loc_6FFDBE: ImpAdCallI2 Format$(, )
  loc_6FFDC3: FStStr var_16C
  loc_6FFDC6: LitI4 &HF
  loc_6FFDCB: FLdRfVar var_1B4
  loc_6FFDCE: ImpAdCallFPR4  = Chr()
  loc_6FFDD3: FLdRfVar var_100
  loc_6FFDD6: FLdZeroAd var_16C
  loc_6FFDD9: CVarStr var_160
  loc_6FFDDC: ConcatVar var_1A4
  loc_6FFDE0: FLdRfVar var_1B4
  loc_6FFDE3: ConcatVar var_1D4
  loc_6FFDE7: LitI2_Byte &H41
  loc_6FFDE9: FLdI2 var_E2
  loc_6FFDEC: PrintFile
  loc_6FFDF2: FFreeStr var_F0 = ""
  loc_6FFDF9: FFreeVar var_120 = "": var_130 = "": var_100 = "": var_160 = "": var_1A4 = "": var_1B4 = ""
  loc_6FFE0C: LitI4 &H12
  loc_6FFE11: FLdRfVar var_100
  loc_6FFE14: ImpAdCallFPR4  = Chr()
  loc_6FFE19: LitI4 1
  loc_6FFE1E: LitI4 1
  loc_6FFE23: ImpAdLdRf MemVar_74C364
  loc_6FFE26: CVarRef
  loc_6FFE2B: FLdI2 var_E6
  loc_6FFE2E: CI4UI1
  loc_6FFE2F: FLdPr Me
  loc_6FFE32: MemLdRfVar from_stack_1.global_56
  loc_6FFE35: Ary1LdPr
  loc_6FFE36: MemLdRfVar from_stack_1.global_20
  loc_6FFE39: CVarRef
  loc_6FFE3E: ImpAdCallI2 Format$(, )
  loc_6FFE43: FStStr var_F0
  loc_6FFE46: LitI4 1
  loc_6FFE4B: LitI4 1
  loc_6FFE50: LitVarStr var_150, "@@@@@@@@@"
  loc_6FFE55: FStVarCopyObj var_130
  loc_6FFE58: FLdRfVar var_130
  loc_6FFE5B: FLdZeroAd var_F0
  loc_6FFE5E: CVarStr var_120
  loc_6FFE61: ImpAdCallI2 Format$(, )
  loc_6FFE66: FStStr var_16C
  loc_6FFE69: LitI4 &HF
  loc_6FFE6E: FLdRfVar var_1B4
  loc_6FFE71: ImpAdCallFPR4  = Chr()
  loc_6FFE76: FLdRfVar var_100
  loc_6FFE79: FLdZeroAd var_16C
  loc_6FFE7C: CVarStr var_160
  loc_6FFE7F: ConcatVar var_1A4
  loc_6FFE83: FLdRfVar var_1B4
  loc_6FFE86: ConcatVar var_1D4
  loc_6FFE8A: LitI2_Byte &H4B
  loc_6FFE8C: FLdI2 var_E2
  loc_6FFE8F: PrintFile
  loc_6FFE95: FFreeStr var_F0 = ""
  loc_6FFE9C: FFreeVar var_120 = "": var_130 = "": var_100 = "": var_160 = "": var_1A4 = "": var_1B4 = ""
  loc_6FFEAD: Branch loc_6FFEC1
  loc_6FFEB4: LitI2_Byte 1
  loc_6FFEB6: PopTmpLdAd2 var_162
  loc_6FFEB9: FLdRfVar var_E2
  loc_6FFEBC: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFEC5: FLdRfVar var_E6
  loc_6FFEC8: NextI2 var_1E8, loc_6FFC48
  loc_6FFECF: LitI2_Byte &HE
  loc_6FFED1: PopTmpLdAd2 var_162
  loc_6FFED4: FLdRfVar var_E2
  loc_6FFED7: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_6FFEDE: FLdPr Me
  loc_6FFEE1: MemLdRfVar from_stack_1.global_280
  loc_6FFEE4: LdFixedStr
  loc_6FFEE7: FStStrNoPop var_F0
  loc_6FFEEA: LitStr "A"
  loc_6FFEED: EqStr
  loc_6FFEEF: FFree1Str var_F0
  loc_6FFEF2: BranchF loc_70014F
  loc_6FFEF7: LitI4 &H12
  loc_6FFEFC: FLdRfVar var_100
  loc_6FFEFF: ImpAdCallFPR4  = Chr()
  loc_6FFF04: LitI4 1
  loc_6FFF09: LitI4 1
  loc_6FFF0E: LitVarStr var_140, "0.00"
  loc_6FFF13: FStVarCopyObj var_120
  loc_6FFF16: FLdRfVar var_120
  loc_6FFF19: FLdPr Me
  loc_6FFF1C: MemLdRfVar from_stack_1.global_288
  loc_6FFF1F: CVarRef
  loc_6FFF24: FLdRfVar var_130
  loc_6FFF27: ImpAdCallFPR4  = Format(, )
  loc_6FFF2C: LitI4 &HF
  loc_6FFF31: FLdRfVar var_1A4
  loc_6FFF34: ImpAdCallFPR4  = Chr()
  loc_6FFF39: FLdRfVar var_100
  loc_6FFF3C: FLdRfVar var_130
  loc_6FFF3F: ConcatVar var_160
  loc_6FFF43: FLdRfVar var_1A4
  loc_6FFF46: ConcatVar var_1B4
  loc_6FFF4A: LitI2_Byte &H16
  loc_6FFF4C: FLdI2 var_E2
  loc_6FFF4F: PrintFile
  loc_6FFF55: FFreeVar var_120 = "": var_100 = "": var_130 = "": var_160 = "": var_1A4 = ""
  loc_6FFF66: LitI4 &H12
  loc_6FFF6B: FLdRfVar var_100
  loc_6FFF6E: ImpAdCallFPR4  = Chr()
  loc_6FFF73: LitI4 1
  loc_6FFF78: LitI4 1
  loc_6FFF7D: LitVarStr var_140, "0.00"
  loc_6FFF82: FStVarCopyObj var_120
  loc_6FFF85: FLdRfVar var_120
  loc_6FFF88: FLdPr Me
  loc_6FFF8B: MemLdRfVar from_stack_1.global_296
  loc_6FFF8E: CVarRef
  loc_6FFF93: FLdRfVar var_130
  loc_6FFF96: ImpAdCallFPR4  = Format(, )
  loc_6FFF9B: LitI4 &HF
  loc_6FFFA0: FLdRfVar var_1A4
  loc_6FFFA3: ImpAdCallFPR4  = Chr()
  loc_6FFFA8: FLdRfVar var_100
  loc_6FFFAB: FLdRfVar var_130
  loc_6FFFAE: ConcatVar var_160
  loc_6FFFB2: FLdRfVar var_1A4
  loc_6FFFB5: ConcatVar var_1B4
  loc_6FFFB9: LitI2_Byte &H26
  loc_6FFFBB: FLdI2 var_E2
  loc_6FFFBE: PrintFile
  loc_6FFFC4: FFreeVar var_120 = "": var_100 = "": var_130 = "": var_160 = "": var_1A4 = ""
  loc_6FFFD5: LitI4 &H12
  loc_6FFFDA: FLdRfVar var_100
  loc_6FFFDD: ImpAdCallFPR4  = Chr()
  loc_6FFFE2: LitI4 1
  loc_6FFFE7: LitI4 1
  loc_6FFFEC: LitVarStr var_140, "0.00"
  loc_6FFFF1: FStVarCopyObj var_120
  loc_6FFFF4: FLdRfVar var_120
  loc_6FFFF7: FLdPr Me
  loc_6FFFFA: MemLdRfVar from_stack_1.global_304
  loc_6FFFFD: CVarRef
  loc_700002: FLdRfVar var_130
  loc_700005: ImpAdCallFPR4  = Format(, )
  loc_70000A: LitI4 &HF
  loc_70000F: FLdRfVar var_1A4
  loc_700012: ImpAdCallFPR4  = Chr()
  loc_700017: FLdRfVar var_100
  loc_70001A: FLdRfVar var_130
  loc_70001D: ConcatVar var_160
  loc_700021: FLdRfVar var_1A4
  loc_700024: ConcatVar var_1B4
  loc_700028: LitI2_Byte &H36
  loc_70002A: FLdI2 var_E2
  loc_70002D: PrintFile
  loc_700033: FFreeVar var_120 = "": var_100 = "": var_130 = "": var_160 = "": var_1A4 = ""
  loc_700044: LitI4 &H12
  loc_700049: FLdRfVar var_100
  loc_70004C: ImpAdCallFPR4  = Chr()
  loc_700051: LitI4 1
  loc_700056: LitI4 1
  loc_70005B: LitVarStr var_140, "0.00"
  loc_700060: FStVarCopyObj var_120
  loc_700063: FLdRfVar var_120
  loc_700066: FLdPr Me
  loc_700069: MemLdRfVar from_stack_1.global_312
  loc_70006C: CVarRef
  loc_700071: FLdRfVar var_130
  loc_700074: ImpAdCallFPR4  = Format(, )
  loc_700079: LitI4 &HF
  loc_70007E: FLdRfVar var_1A4
  loc_700081: ImpAdCallFPR4  = Chr()
  loc_700086: FLdRfVar var_100
  loc_700089: FLdRfVar var_130
  loc_70008C: ConcatVar var_160
  loc_700090: FLdRfVar var_1A4
  loc_700093: ConcatVar var_1B4
  loc_700097: LitI2_Byte &H43
  loc_700099: FLdI2 var_E2
  loc_70009C: PrintFile
  loc_7000A2: FFreeVar var_120 = "": var_100 = "": var_130 = "": var_160 = "": var_1A4 = ""
  loc_7000B3: LitI4 &H12
  loc_7000B8: FLdRfVar var_100
  loc_7000BB: ImpAdCallFPR4  = Chr()
  loc_7000C0: LitI4 1
  loc_7000C5: LitI4 1
  loc_7000CA: ImpAdLdRf MemVar_74C364
  loc_7000CD: CVarRef
  loc_7000D2: FLdPr Me
  loc_7000D5: MemLdRfVar from_stack_1.global_320
  loc_7000D8: CVarRef
  loc_7000DD: ImpAdCallI2 Format$(, )
  loc_7000E2: FStStr var_F0
  loc_7000E5: LitI4 1
  loc_7000EA: LitI4 1
  loc_7000EF: LitVarStr var_150, "@@@@@@@@@"
  loc_7000F4: FStVarCopyObj var_130
  loc_7000F7: FLdRfVar var_130
  loc_7000FA: FLdZeroAd var_F0
  loc_7000FD: CVarStr var_120
  loc_700100: ImpAdCallI2 Format$(, )
  loc_700105: FStStr var_16C
  loc_700108: LitI4 &HF
  loc_70010D: FLdRfVar var_1B4
  loc_700110: ImpAdCallFPR4  = Chr()
  loc_700115: FLdRfVar var_100
  loc_700118: FLdZeroAd var_16C
  loc_70011B: CVarStr var_160
  loc_70011E: ConcatVar var_1A4
  loc_700122: FLdRfVar var_1B4
  loc_700125: ConcatVar var_1D4
  loc_700129: LitI2_Byte &H4B
  loc_70012B: FLdI2 var_E2
  loc_70012E: PrintFile
  loc_700134: FFreeStr var_F0 = ""
  loc_70013B: FFreeVar var_120 = "": var_130 = "": var_100 = "": var_160 = "": var_1A4 = "": var_1B4 = ""
  loc_70014C: Branch loc_7001EC
  loc_700153: LitI4 &H12
  loc_700158: FLdRfVar var_100
  loc_70015B: ImpAdCallFPR4  = Chr()
  loc_700160: LitI4 1
  loc_700165: LitI4 1
  loc_70016A: ImpAdLdRf MemVar_74C364
  loc_70016D: CVarRef
  loc_700172: FLdPr Me
  loc_700175: MemLdRfVar from_stack_1.global_320
  loc_700178: CVarRef
  loc_70017D: ImpAdCallI2 Format$(, )
  loc_700182: FStStr var_F0
  loc_700185: LitI4 1
  loc_70018A: LitI4 1
  loc_70018F: LitVarStr var_150, "@@@@@@@@@"
  loc_700194: FStVarCopyObj var_130
  loc_700197: FLdRfVar var_130
  loc_70019A: FLdZeroAd var_F0
  loc_70019D: CVarStr var_120
  loc_7001A0: ImpAdCallI2 Format$(, )
  loc_7001A5: FStStr var_16C
  loc_7001A8: LitI4 &HF
  loc_7001AD: FLdRfVar var_1B4
  loc_7001B0: ImpAdCallFPR4  = Chr()
  loc_7001B5: FLdRfVar var_100
  loc_7001B8: FLdZeroAd var_16C
  loc_7001BB: CVarStr var_160
  loc_7001BE: ConcatVar var_1A4
  loc_7001C2: FLdRfVar var_1B4
  loc_7001C5: ConcatVar var_1D4
  loc_7001C9: LitI2_Byte &H55
  loc_7001CB: FLdI2 var_E2
  loc_7001CE: PrintFile
  loc_7001D4: FFreeStr var_F0 = ""
  loc_7001DB: FFreeVar var_120 = "": var_130 = "": var_100 = "": var_160 = "": var_1A4 = "": var_1B4 = ""
  loc_7001F0: LitI2_Byte 2
  loc_7001F2: PopTmpLdAd2 var_162
  loc_7001F5: FLdRfVar var_E2
  loc_7001F8: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_7001FF: LitStr "Control: "
  loc_700202: FLdPr Me
  loc_700205: MemLdRfVar from_stack_1.global_280
  loc_700208: LdFixedStr
  loc_70020B: FStStrNoPop var_F0
  loc_70020E: ConcatStr
  loc_70020F: FStStrNoPop var_16C
  loc_700212: LitStr " "
  loc_700215: ConcatStr
  loc_700216: FStStrNoPop var_170
  loc_700219: LitI2_Byte &H46
  loc_70021B: FLdI2 var_E2
  loc_70021E: PrintFile
  loc_700224: FFreeStr var_F0 = "": var_16C = ""
  loc_70022F: ILdRf var_94
  loc_700232: LitStr "-"
  loc_700235: ConcatStr
  loc_700236: FStStrNoPop var_F0
  loc_700239: ILdRf var_90
  loc_70023C: ConcatStr
  loc_70023D: FStStrNoPop var_16C
  loc_700240: FLdI2 var_E2
  loc_700243: PrintFile
  loc_700249: FFreeStr var_F0 = ""
  loc_700252: LitStr "   Hora: "
  loc_700255: ILdRf var_C4
  loc_700258: ConcatStr
  loc_700259: FStStrNoPop var_F0
  loc_70025C: LitStr ":"
  loc_70025F: ConcatStr
  loc_700260: FStStrNoPop var_16C
  loc_700263: ILdRf var_C8
  loc_700266: ConcatStr
  loc_700267: FStStrNoPop var_170
  loc_70026A: LitI2_Byte &H46
  loc_70026C: FLdI2 var_E2
  loc_70026F: PrintFile
  loc_700275: FFreeStr var_F0 = "": var_16C = ""
  loc_700280: LitStr ":"
  loc_700283: ILdRf var_CC
  loc_700286: ConcatStr
  loc_700287: FStStrNoPop var_F0
  loc_70028A: FLdI2 var_E2
  loc_70028D: PrintFile
  loc_700293: FFree1Str var_F0
  loc_700298: LitI4 &HC
  loc_70029D: FLdRfVar var_100
  loc_7002A0: ImpAdCallFPR4  = Chr()
  loc_7002A5: FLdRfVar var_100
  loc_7002A8: FLdI2 var_E2
  loc_7002AB: PrintFile
  loc_7002B1: FFree1Var var_100 = ""
  loc_7002B6: ImpAdCallFPR4 Reset()
  loc_7002BD: LitI2_Byte 0
  loc_7002BF: ImpAdStI2 MemVar_74C37E
  loc_7002C4: On Error GoTo 0
  loc_7002C9: FLdPr Me
  loc_7002CC: MemLdStr global_284
  loc_7002CF: ImpAdCallFPR4 push Val()
  loc_7002D4: FStFPR8 var_1F0
  loc_7002D7: LitI4 1
  loc_7002DC: LitI4 1
  loc_7002E1: LitVarStr var_140, "00000000"
  loc_7002E6: FStVarCopyObj var_120
  loc_7002E9: FLdRfVar var_120
  loc_7002EC: FLdFPR8 var_1F0
  loc_7002EF: LitI2_Byte 1
  loc_7002F1: CR8I2
  loc_7002F2: AddR8
  loc_7002F3: CVarR8
  loc_7002F7: FLdRfVar var_130
  loc_7002FA: ImpAdCallFPR4  = Format(, )
  loc_7002FF: FLdRfVar var_162
  loc_700302: FLdRfVar var_130
  loc_700305: CStrVarTmp
  loc_700306: PopTmpLdAdStr
  loc_70030A: FLdPr Me
  loc_70030D: MemLdRfVar from_stack_1.global_280
  loc_700310: LdFixedStr
  loc_700313: PopTmpLdAdStr
  loc_700317: FLdRfVar var_EC
  loc_70031A: ImpAdLdRf MemVar_74C760
  loc_70031D: NewIfNullPr Formx
  loc_700320: from_stack_1v = Formx.global_4589716Get()
  loc_700325: FLdPr var_EC
  loc_700328:  = Formx.FontStrikethru
  loc_70032D: ILdRf var_F0
  loc_700330: FLdPr Me
  loc_700333: MemLdRfVar from_stack_1.global_280
  loc_700336: StFixedStr
  loc_700339: FLdI2 var_162
  loc_70033C: NotI4
  loc_70033D: FFreeStr var_F0 = ""
  loc_700344: FFree1Ad var_EC
  loc_700347: FFreeVar var_100 = "": var_120 = ""
  loc_700350: BranchF loc_700389
  loc_700355: FLdRfVar var_100
  loc_700358: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70035D: FLdRfVar var_100
  loc_700360: CBoolVarNull
  loc_700362: FFree1Var var_100 = ""
  loc_700365: BranchF loc_700382
  loc_70036A: ILdRf Me
  loc_70036D: FStAdNoPop
  loc_700371: ImpAdLdRf MemVar_7520D4
  loc_700374: NewIfNullPr Global
  loc_700377: Global.Unload from_stack_1
  loc_70037C: FFree1Ad var_EC
  loc_700381: ExitProcHresult
  loc_700386: Branch loc_7002C7
  loc_70038B: ILdRf Me
  loc_70038E: FStAdNoPop
  loc_700392: ImpAdLdRf MemVar_7520D4
  loc_700395: NewIfNullPr Global
  loc_700398: Global.Unload from_stack_1
  loc_70039D: FFree1Ad var_EC
  loc_7003A2: ExitProcHresult
  loc_7003A5: FLdI2 var_DA
  loc_7003A8: BranchF loc_7003AB
  loc_7003AF: LitVarStr var_110, "Ha ocurrido un error inesperado al intentar imprimir una factura."
  loc_7003B4: LitI4 &HD
  loc_7003B9: FLdRfVar var_100
  loc_7003BC: ImpAdCallFPR4  = Chr()
  loc_7003C1: FLdRfVar var_100
  loc_7003C4: ConcatVar var_120
  loc_7003C8: LitI4 &HD
  loc_7003CD: FLdRfVar var_130
  loc_7003D0: ImpAdCallFPR4  = Chr()
  loc_7003D5: FLdRfVar var_130
  loc_7003D8: ConcatVar var_160
  loc_7003DC: CStrVarTmp
  loc_7003DD: FStStr var_D8
  loc_7003E0: FFreeVar var_100 = "": var_120 = "": var_130 = ""
  loc_7003ED: ILdRf var_D8
  loc_7003F0: LitStr "Error Número: "
  loc_7003F3: ConcatStr
  loc_7003F4: FStStrNoPop var_F0
  loc_7003F7: FLdRfVar var_1F4
  loc_7003FA: ImpAdCallI2 Err 'rtcErrObj
  loc_7003FF: FStAdFunc var_EC
  loc_700402: FLdPr var_EC
  loc_700405:  = Err.Number
  loc_70040A: ILdRf var_1F4
  loc_70040D: CStrI4
  loc_70040F: FStStrNoPop var_16C
  loc_700412: ConcatStr
  loc_700413: CVarStr var_120
  loc_700416: LitI4 &HD
  loc_70041B: FLdRfVar var_100
  loc_70041E: ImpAdCallFPR4  = Chr()
  loc_700423: FLdRfVar var_100
  loc_700426: ConcatVar var_130
  loc_70042A: CStrVarTmp
  loc_70042B: FStStr var_D8
  loc_70042E: FFreeStr var_F0 = ""
  loc_700435: FFree1Ad var_EC
  loc_700438: FFreeVar var_120 = "": var_100 = ""
  loc_700443: ILdRf var_D8
  loc_700446: LitStr "Descripción: "
  loc_700449: ConcatStr
  loc_70044A: CVarStr var_100
  loc_70044D: FLdI2 var_D2
  loc_700450: CVarBoolI2 var_110
  loc_700454: ConcatVar var_120
  loc_700458: CStrVarTmp
  loc_700459: FStStr var_D8
  loc_70045C: FFreeVar var_100 = "": var_110 = ""
  loc_700467: LitVar_Missing var_130
  loc_70046A: LitVar_Missing var_120
  loc_70046D: LitVarStr var_140, "Error inesperado"
  loc_700472: FStVarCopyObj var_100
  loc_700475: FLdRfVar var_100
  loc_700478: LitI4 &H10
  loc_70047D: FLdRfVar var_D8
  loc_700480: CVarRef
  loc_700485: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70048A: FFreeVar var_100 = "": var_120 = ""
  loc_700495: On Error Resume Next
  loc_70049A: ImpAdCallFPR4 Reset()
  loc_7004A1: On Error GoTo 0
  loc_7004A6: ExitProcHresult
  loc_7004A9: ExitProcHresult
End Sub

Private Function Proc_112_17_654BEC(arg_C) '654BEC
  'Data Table: 442D6C
  loc_654918: ZeroRetValVar
  loc_65491A: OnErrorGoto loc_654B00
  loc_65491D: FMemLdI2 arg_C(0)
  loc_654922: LitI2_Byte 0
  loc_654924: EqI2
  loc_654925: BranchF loc_654957
  loc_654928: LitStr "Consumidor Final"
  loc_65492B: FMemStStrCopy
  loc_654930: LitI2_Byte 1
  loc_654932: FMemStI2 arg_C(108)
  loc_654937: LitVarStr var_B4, vbNullString
  loc_65493C: FMemStVarCopy arg_C(92)
  loc_654942: LitVarStr var_B4, vbNullString
  loc_654947: FMemStVarCopy arg_C(8)
  loc_65494D: LitI2_Byte 0
  loc_65494F: FMemStI2 arg_C(88)
  loc_654954: Branch loc_654AD5
  loc_654957: LitI4 1
  loc_65495C: LitI4 1
  loc_654961: LitVarStr var_C4, "0000"
  loc_654966: FStVarCopyObj var_D4
  loc_654969: FLdRfVar var_D4
  loc_65496C: FMemLdRf unk_442D79
  loc_654971: CVarRef
  loc_654976: FLdRfVar var_E4
  loc_654979: ImpAdCallFPR4  = Format(, )
  loc_65497E: FLdRfVar var_EA
  loc_654981: FLdRfVar var_A2
  loc_654984: FLdRfVar var_9C
  loc_654987: FLdVar var_E4
  loc_65498B: FLdRfVar var_E8
  loc_65498E: ImpAdLdRf MemVar_74C760
  loc_654991: NewIfNullPr Formx
  loc_654994: from_stack_1v = Formx.global_4589716Get()
  loc_654999: FLdPr var_E8
  loc_65499C: Call 0.Method_arg_DC ()
  loc_6549A1: FLdI2 var_EA
  loc_6549A4: NotI4
  loc_6549A5: FFree1Ad var_E8
  loc_6549A8: FFreeVar var_D4 = ""
  loc_6549AF: BranchF loc_6549EB
  loc_6549B2: FLdRfVar var_D4
  loc_6549B5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6549BA: FLdRfVar var_D4
  loc_6549BD: CBoolVarNull
  loc_6549BF: FFree1Var var_D4 = ""
  loc_6549C2: BranchF loc_6549E8
  loc_6549C5: ILdRf Me
  loc_6549C8: FStAdNoPop
  loc_6549CC: ImpAdLdRf MemVar_7520D4
  loc_6549CF: NewIfNullPr Global
  loc_6549D2: Global.Unload from_stack_1
  loc_6549D7: FFree1Ad var_E8
  loc_6549DA: LitVar_FALSE
  loc_6549DE: FStVar var_94
  loc_6549E2: ExitProcCbHresult
  loc_6549E8: Branch loc_654957
  loc_6549EB: FLdI2 var_A2
  loc_6549EE: BranchF loc_6549F7
  loc_6549F1: ExitProcCbHresult
  loc_6549F7: LitVarI2 var_D4, 25
  loc_6549FC: LitI4 5
  loc_654A01: FLdRfVar var_9C
  loc_654A04: CVarRef
  loc_654A09: FLdRfVar var_E4
  loc_654A0C: ImpAdCallFPR4  = Mid(, , )
  loc_654A11: FLdRfVar var_E4
  loc_654A14: CStrVarTmp
  loc_654A15: FStStrNoPop var_F0
  loc_654A18: FMemStStrCopy
  loc_654A1D: FFree1Str var_F0
  loc_654A20: FFreeVar var_D4 = ""
  loc_654A27: LitVarI2 var_D4, 13
  loc_654A2C: LitI4 &H55
  loc_654A31: FLdRfVar var_9C
  loc_654A34: CVarRef
  loc_654A39: FLdRfVar var_E4
  loc_654A3C: ImpAdCallFPR4  = Mid(, , )
  loc_654A41: FLdRfVar var_E4
  loc_654A44: FMemStVar arg_C(92)
  loc_654A4A: FFreeVar var_D4 = ""
  loc_654A51: LitVarI2 var_D4, 40
  loc_654A56: LitI4 &H1E
  loc_654A5B: FLdRfVar var_9C
  loc_654A5E: CVarRef
  loc_654A63: FLdRfVar var_E4
  loc_654A66: ImpAdCallFPR4  = Mid(, , )
  loc_654A6B: FLdRfVar var_E4
  loc_654A6E: FMemStVar arg_C(8)
  loc_654A74: FFreeVar var_D4 = ""
  loc_654A7B: LitVarI2 var_D4, 1
  loc_654A80: LitI4 &H63
  loc_654A85: FLdRfVar var_9C
  loc_654A88: CVarRef
  loc_654A8D: FLdRfVar var_E4
  loc_654A90: ImpAdCallFPR4  = Mid(, , )
  loc_654A95: FLdRfVar var_E4
  loc_654A98: FnCBoolVar
  loc_654A9A: FMemStI2 arg_C(88)
  loc_654A9F: FFreeVar var_D4 = "": var_E4 = ""
  loc_654AA8: LitVarI2 var_D4, 1
  loc_654AAD: LitI4 &H62
  loc_654AB2: FLdRfVar var_9C
  loc_654AB5: CVarRef
  loc_654ABA: FLdRfVar var_E4
  loc_654ABD: ImpAdCallFPR4  = Mid(, , )
  loc_654AC2: FLdRfVar var_E4
  loc_654AC5: FnCIntVar
  loc_654AC7: FMemStI2 arg_C(108)
  loc_654ACC: FFreeVar var_D4 = "": var_E4 = ""
  loc_654AD5: FMemLdI2 arg_C(108)
  loc_654ADA: LitI2_Byte 4
  loc_654ADC: GeI2
  loc_654ADD: BranchF loc_654AEB
  loc_654AE0: LitStr "FA"
  loc_654AE3: FMemStStrCopy
  loc_654AE8: Branch loc_654AF3
  loc_654AEB: LitStr "FB"
  loc_654AEE: FMemStStrCopy
  loc_654AF3: LitVar_TRUE var_B4
  loc_654AF6: FStVar var_94
  loc_654AFA: ExitProcCbHresult
  loc_654B00: LitVarStr var_B4, "Ha ocurrido un error inesperado al intentar buscar un cliente."
  loc_654B05: LitI4 &HD
  loc_654B0A: FLdRfVar var_D4
  loc_654B0D: ImpAdCallFPR4  = Chr()
  loc_654B12: FLdRfVar var_D4
  loc_654B15: ConcatVar var_E4
  loc_654B19: LitI4 &HD
  loc_654B1E: FLdRfVar var_100
  loc_654B21: ImpAdCallFPR4  = Chr()
  loc_654B26: FLdRfVar var_100
  loc_654B29: ConcatVar var_110
  loc_654B2D: CStrVarTmp
  loc_654B2E: FStStr var_A0
  loc_654B31: FFreeVar var_D4 = "": var_E4 = "": var_100 = ""
  loc_654B3C: ILdRf var_A0
  loc_654B3F: LitStr "             Código: "
  loc_654B42: ConcatStr
  loc_654B43: FStStrNoPop var_F0
  loc_654B46: FLdRfVar var_114
  loc_654B49: ImpAdCallI2 Err 'rtcErrObj
  loc_654B4E: FStAdFunc var_E8
  loc_654B51: FLdPr var_E8
  loc_654B54:  = Err.Number
  loc_654B59: ILdRf var_114
  loc_654B5C: CStrI4
  loc_654B5E: FStStrNoPop var_118
  loc_654B61: ConcatStr
  loc_654B62: CVarStr var_E4
  loc_654B65: LitI4 &HD
  loc_654B6A: FLdRfVar var_D4
  loc_654B6D: ImpAdCallFPR4  = Chr()
  loc_654B72: FLdRfVar var_D4
  loc_654B75: ConcatVar var_100
  loc_654B79: CStrVarTmp
  loc_654B7A: FStStr var_A0
  loc_654B7D: FFreeStr var_F0 = ""
  loc_654B84: FFree1Ad var_E8
  loc_654B87: FFreeVar var_E4 = "": var_D4 = ""
  loc_654B90: ILdRf var_A0
  loc_654B93: LitStr "             Descripción: "
  loc_654B96: ConcatStr
  loc_654B97: CVarStr var_D4
  loc_654B9A: FLdI2 var_A2
  loc_654B9D: CVarBoolI2 var_B4
  loc_654BA1: ConcatVar var_E4
  loc_654BA5: CStrVarTmp
  loc_654BA6: FStStr var_A0
  loc_654BA9: FFreeVar var_D4 = "": var_B4 = ""
  loc_654BB2: LitVar_Missing var_100
  loc_654BB5: LitVar_Missing var_E4
  loc_654BB8: LitVarStr var_C4, "Error inesperado"
  loc_654BBD: FStVarCopyObj var_D4
  loc_654BC0: FLdRfVar var_D4
  loc_654BC3: LitI4 &H10
  loc_654BC8: FLdRfVar var_A0
  loc_654BCB: CVarRef
  loc_654BD0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_654BD5: FFreeVar var_D4 = "": var_E4 = ""
  loc_654BDE: ExitProcCbHresult
  loc_654BE4: ExitProcCbHresult
  loc_654BEA: CCyI2
End Function

Private Function Proc_112_18_696E68() '696E68
  'Data Table: 442D6C
  loc_69684C: FLdRfVar var_92
  loc_69684F: ImpAdLdRf MemVar_74D8B0
  loc_696852: NewIfNullPr Consola
  loc_696855: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_69685A: FLdUI1
  loc_69685E: CI4UI1
  loc_69685F: FLdPr Me
  loc_696862: MemLdUI1 SeleccionGrilla
  loc_696866: CI4UI1
  loc_696867: ImpAdLdRf MemVar_74BFE4
  loc_69686A: AryLdPr
  loc_69686D: MemLdR8 global_12
  loc_696870: CR8Cy
  loc_696871: ImpAdLdFPR4 MemVar_74C2E0
  loc_696874: DivR8
  loc_696875: CCyR4
  loc_696876: LitI4 1
  loc_69687B: FLdPr Me
  loc_69687E: MemLdRfVar from_stack_1.global_56
  loc_696881: Ary1LdPr
  loc_696882: MemStR8 global_0
  loc_696885: FLdRfVar var_92
  loc_696888: ImpAdLdRf MemVar_74D8B0
  loc_69688B: NewIfNullPr Consola
  loc_69688E: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_696893: FLdUI1
  loc_696897: CI4UI1
  loc_696898: FLdPr Me
  loc_69689B: MemLdUI1 SeleccionGrilla
  loc_69689F: CI4UI1
  loc_6968A0: ImpAdLdRf MemVar_74BFE4
  loc_6968A3: AryLdPr
  loc_6968A6: MemLdR8 global_20
  loc_6968A9: CR8Cy
  loc_6968AA: ImpAdLdFPR4 MemVar_74C2DC
  loc_6968AD: DivR8
  loc_6968AE: CCyR4
  loc_6968AF: LitI4 1
  loc_6968B4: FLdPr Me
  loc_6968B7: MemLdRfVar from_stack_1.global_56
  loc_6968BA: Ary1LdPr
  loc_6968BB: MemStR8 global_12
  loc_6968BE: FLdRfVar var_98
  loc_6968C1: FLdRfVar var_92
  loc_6968C4: ImpAdLdRf MemVar_74D8B0
  loc_6968C7: NewIfNullPr Consola
  loc_6968CA: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_6968CF: FLdUI1
  loc_6968D3: CI4UI1
  loc_6968D4: FLdPr Me
  loc_6968D7: MemLdUI1 SeleccionGrilla
  loc_6968DB: CI4UI1
  loc_6968DC: ImpAdLdRf MemVar_74BFE4
  loc_6968DF: AryLdPr
  loc_6968E2: MemLdUI1 global_28
  loc_6968E6: CI2UI1
  loc_6968E8: ImpAdLdRf MemVar_74A220
  loc_6968EB: NewIfNullPr clsProducts
  loc_6968F3: ILdRf var_98
  loc_6968F6: LitI4 1
  loc_6968FB: FLdPr Me
  loc_6968FE: MemLdRfVar from_stack_1.global_56
  loc_696901: Ary1LdPr
  loc_696902: MemStStrCopy
  loc_696906: FFree1Str var_98
  loc_696909: FLdRfVar var_92
  loc_69690C: ImpAdLdRf MemVar_74D8B0
  loc_69690F: NewIfNullPr Consola
  loc_696912: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_696917: FLdUI1
  loc_69691B: CI4UI1
  loc_69691C: FLdPr Me
  loc_69691F: MemLdUI1 SeleccionGrilla
  loc_696923: CI4UI1
  loc_696924: ImpAdLdRf MemVar_74BFE4
  loc_696927: AryLdPr
  loc_69692A: MemLdUI1 global_28
  loc_69692E: CI4UI1
  loc_69692F: ImpAdLdRf MemVar_74C094
  loc_696932: Ary1LdCy
  loc_696933: FLdPr Me
  loc_696936: MemStR8 global_152
  loc_696939: FLdRfVar var_92
  loc_69693C: ImpAdLdRf MemVar_74D8B0
  loc_69693F: NewIfNullPr Consola
  loc_696942: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_696947: FLdUI1
  loc_69694B: CI4UI1
  loc_69694C: FLdPr Me
  loc_69694F: MemLdUI1 SeleccionGrilla
  loc_696953: CI4UI1
  loc_696954: ImpAdLdRf MemVar_74BFE4
  loc_696957: AryLdPr
  loc_69695A: MemLdR8 global_4
  loc_69695D: CR8Cy
  loc_69695E: ImpAdLdFPR4 MemVar_74C2E0
  loc_696961: DivR8
  loc_696962: CCyR4
  loc_696963: LitI4 1
  loc_696968: FLdPr Me
  loc_69696B: MemLdRfVar from_stack_1.global_56
  loc_69696E: Ary1LdPr
  loc_69696F: MemStR8 global_20
  loc_696972: LitVarStr var_BC, "Arial"
  loc_696977: PopAdLdVar
  loc_696978: FLdPrThis
  loc_696979: VCallAd Control_ID_fraSalesPending
  loc_69697C: FStAdFunc var_9C
  loc_69697F: FLdPr var_9C
  loc_696982: LateIdLdVar var_AC DispID_-512 -1
  loc_696989: CastAdVar Me
  loc_69698D: FStAdFunc var_C0
  loc_696990: FLdPr var_C0
  loc_696993: LateIdSt
  loc_696998: FFreeAd var_9C = ""
  loc_69699F: FFree1Var var_AC = ""
  loc_6969A2: LitVarI2 var_BC, 9
  loc_6969A7: PopAdLdVar
  loc_6969A8: FLdPrThis
  loc_6969A9: VCallAd Control_ID_MSFlexGrid1
  loc_6969AC: FStAdFunc var_9C
  loc_6969AF: FLdPr var_9C
  loc_6969B2: LateIdLdVar var_AC DispID_-512 -1
  loc_6969B9: CastAdVar Me
  loc_6969BD: FStAdFunc var_C0
  loc_6969C0: FLdPr var_C0
  loc_6969C3: LateIdSt
  loc_6969C8: FFreeAd var_9C = ""
  loc_6969CF: FFree1Var var_AC = ""
  loc_6969D2: LitVar_TRUE var_BC
  loc_6969D5: PopAdLdVar
  loc_6969D6: FLdPrThis
  loc_6969D7: VCallAd Control_ID_MSFlexGrid1
  loc_6969DA: FStAdFunc var_9C
  loc_6969DD: FLdPr var_9C
  loc_6969E0: LateIdLdVar var_AC DispID_-512 -1
  loc_6969E7: CastAdVar Me
  loc_6969EB: FStAdFunc var_C0
  loc_6969EE: FLdPr var_C0
  loc_6969F1: LateIdSt
  loc_6969F6: FFreeAd var_9C = ""
  loc_6969FD: FFree1Var var_AC = ""
  loc_696A00: LitVarI4
  loc_696A08: PopAdLdVar
  loc_696A09: FLdPrThis
  loc_696A0A: VCallAd Control_ID_MSFlexGrid1
  loc_696A0D: FStAdFunc var_9C
  loc_696A10: FLdPr var_9C
  loc_696A13: LateIdSt
  loc_696A18: FFree1Ad var_9C
  loc_696A1B: LitI2_Byte 1
  loc_696A1D: CUI1I2
  loc_696A1F: FStUI1 var_86
  loc_696A23: FLdUI1
  loc_696A27: CI4UI1
  loc_696A28: FLdPr Me
  loc_696A2B: MemLdRfVar from_stack_1.global_56
  loc_696A2E: Ary1LdPr
  loc_696A2F: MemLdR8 global_0
  loc_696A32: LitI2_Byte 0
  loc_696A34: CR8I2
  loc_696A35: NeCyR8
  loc_696A36: BranchF loc_696B95
  loc_696A39: LitI4 1
  loc_696A3E: LitI4 1
  loc_696A43: LitVarStr var_D0, "####.00"
  loc_696A48: FStVarCopyObj var_AC
  loc_696A4B: FLdRfVar var_AC
  loc_696A4E: FLdUI1
  loc_696A52: CI4UI1
  loc_696A53: FLdPr Me
  loc_696A56: MemLdRfVar from_stack_1.global_56
  loc_696A59: Ary1LdPr
  loc_696A5A: MemLdRfVar from_stack_1.global_0
  loc_696A5D: CVarRef
  loc_696A62: FLdRfVar var_E0
  loc_696A65: ImpAdCallFPR4  = Format(, )
  loc_696A6A: FLdRfVar var_E0
  loc_696A6D: LitI4 9
  loc_696A72: FLdRfVar var_F0
  loc_696A75: ImpAdCallFPR4  = Chr()
  loc_696A7A: FLdRfVar var_F0
  loc_696A7D: ConcatVar var_100
  loc_696A81: LitI4 &H19
  loc_696A86: FLdUI1
  loc_696A8A: CI4UI1
  loc_696A8B: FLdPr Me
  loc_696A8E: MemLdRfVar from_stack_1.global_56
  loc_696A91: Ary1LdPr
  loc_696A92: MemLdRfVar from_stack_1.global_8
  loc_696A95: CVarRef
  loc_696A9A: FLdRfVar var_120
  loc_696A9D: ImpAdCallFPR4  = Left(, )
  loc_696AA2: FLdRfVar var_120
  loc_696AA5: ConcatVar var_130
  loc_696AA9: LitI4 9
  loc_696AAE: FLdRfVar var_140
  loc_696AB1: ImpAdCallFPR4  = Chr()
  loc_696AB6: FLdRfVar var_140
  loc_696AB9: ConcatVar var_150
  loc_696ABD: LitI4 1
  loc_696AC2: LitI4 1
  loc_696AC7: ImpAdLdRf MemVar_74C350
  loc_696ACA: CVarRef
  loc_696ACF: FLdUI1
  loc_696AD3: CI4UI1
  loc_696AD4: FLdPr Me
  loc_696AD7: MemLdRfVar from_stack_1.global_56
  loc_696ADA: Ary1LdPr
  loc_696ADB: MemLdRfVar from_stack_1.global_12
  loc_696ADE: CVarRef
  loc_696AE3: FLdRfVar var_180
  loc_696AE6: ImpAdCallFPR4  = Format(, )
  loc_696AEB: FLdRfVar var_180
  loc_696AEE: ConcatVar var_190
  loc_696AF2: LitI4 9
  loc_696AF7: FLdRfVar var_1A0
  loc_696AFA: ImpAdCallFPR4  = Chr()
  loc_696AFF: FLdRfVar var_1A0
  loc_696B02: ConcatVar var_1B0
  loc_696B06: LitI4 1
  loc_696B0B: LitI4 1
  loc_696B10: ImpAdLdRf MemVar_74C364
  loc_696B13: CVarRef
  loc_696B18: FLdUI1
  loc_696B1C: CI4UI1
  loc_696B1D: FLdPr Me
  loc_696B20: MemLdRfVar from_stack_1.global_56
  loc_696B23: Ary1LdPr
  loc_696B24: MemLdRfVar from_stack_1.global_20
  loc_696B27: CVarRef
  loc_696B2C: FLdRfVar var_1E0
  loc_696B2F: ImpAdCallFPR4  = Format(, )
  loc_696B34: FLdRfVar var_1E0
  loc_696B37: ConcatVar var_1F0
  loc_696B3B: CStrVarTmp
  loc_696B3C: FStStr var_8C
  loc_696B3F: FFreeVar var_AC = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1E0 = ""
  loc_696B5E: FLdRfVar var_8C
  loc_696B61: CDargRef
  loc_696B65: FLdUI1
  loc_696B69: CVarUI1
  loc_696B6D: PopAdLdVar
  loc_696B6E: FLdPrThis
  loc_696B6F: VCallAd Control_ID_MSFlexGrid1
  loc_696B72: FStAdFunc var_9C
  loc_696B75: FLdPr var_9C
  loc_696B78: LateIdCall
  loc_696B80: FFree1Ad var_9C
  loc_696B83: FLdUI1
  loc_696B87: CI2UI1
  loc_696B89: LitI2_Byte 1
  loc_696B8B: AddI2
  loc_696B8C: CUI1I2
  loc_696B8E: FStUI1 var_86
  loc_696B92: Branch loc_696A23
  loc_696B95: LitI4 1
  loc_696B9A: LitI4 1
  loc_696B9F: LitVarStr var_D0, "0.00"
  loc_696BA4: FStVarCopyObj var_E0
  loc_696BA7: FLdRfVar var_E0
  loc_696BAA: LitI4 1
  loc_696BAF: FLdPr Me
  loc_696BB2: MemLdRfVar from_stack_1.global_56
  loc_696BB5: Ary1LdPr
  loc_696BB6: MemLdR8 global_0
  loc_696BB9: FLdPr Me
  loc_696BBC: MemLdR8 global_152
  loc_696BBF: MulCy
  loc_696BC0: CVarCy var_AC
  loc_696BC3: FLdRfVar var_F0
  loc_696BC6: ImpAdCallFPR4  = Format(, )
  loc_696BCB: FLdRfVar var_F0
  loc_696BCE: CCyVar
  loc_696BD0: FLdPr Me
  loc_696BD3: MemStR8 global_136
  loc_696BD6: FFreeVar var_AC = "": var_E0 = ""
  loc_696BDF: LitI4 1
  loc_696BE4: LitI4 1
  loc_696BE9: LitVarStr var_D0, "0.00"
  loc_696BEE: FStVarCopyObj var_E0
  loc_696BF1: FLdRfVar var_E0
  loc_696BF4: LitI4 1
  loc_696BF9: FLdPr Me
  loc_696BFC: MemLdRfVar from_stack_1.global_56
  loc_696BFF: Ary1LdPr
  loc_696C00: MemLdR8 global_20
  loc_696C03: FLdPr Me
  loc_696C06: MemLdR8 global_136
  loc_696C09: SubCy
  loc_696C0A: CVarCy var_AC
  loc_696C0D: FLdRfVar var_F0
  loc_696C10: ImpAdCallFPR4  = Format(, )
  loc_696C15: FLdRfVar var_F0
  loc_696C18: CCyVar
  loc_696C1A: FLdPr Me
  loc_696C1D: MemStR8 global_144
  loc_696C20: FFreeVar var_AC = "": var_E0 = ""
  loc_696C29: FLdPr Me
  loc_696C2C: MemLdStr global_92
  loc_696C2F: ImpAdCallFPR4 push Val()
  loc_696C34: FStFPR8 var_1F8
  loc_696C37: LitI4 1
  loc_696C3C: LitI4 1
  loc_696C41: LitVarStr var_D0, "0.00"
  loc_696C46: FStVarCopyObj var_E0
  loc_696C49: FLdRfVar var_E0
  loc_696C4C: FLdPr Me
  loc_696C4F: MemLdR8 global_144
  loc_696C52: CR8Cy
  loc_696C53: LitI2_Byte 1
  loc_696C55: CR8I2
  loc_696C56: FLdFPR8 var_1F8
  loc_696C59: LitI2 10000
  loc_696C5C: CR8I2
  loc_696C5D: DivR8
  loc_696C5E: AddR8
  loc_696C5F: DivR8
  loc_696C60: CVarR8
  loc_696C64: FLdRfVar var_F0
  loc_696C67: ImpAdCallFPR4  = Format(, )
  loc_696C6C: FLdRfVar var_F0
  loc_696C6F: CCyVar
  loc_696C71: FLdPr Me
  loc_696C74: MemStR8 global_112
  loc_696C77: FFreeVar var_AC = "": var_E0 = ""
  loc_696C80: FLdPr Me
  loc_696C83: MemLdStr global_92
  loc_696C86: ImpAdCallFPR4 push Val()
  loc_696C8B: FStFPR8 var_1F8
  loc_696C8E: LitI4 1
  loc_696C93: LitI4 1
  loc_696C98: LitVarStr var_D0, "0.00"
  loc_696C9D: FStVarCopyObj var_E0
  loc_696CA0: FLdRfVar var_E0
  loc_696CA3: FLdPr Me
  loc_696CA6: MemLdR8 global_112
  loc_696CA9: CR8Cy
  loc_696CAA: FLdFPR8 var_1F8
  loc_696CAD: MulR8
  loc_696CAE: LitI2 10000
  loc_696CB1: CR8I2
  loc_696CB2: DivR8
  loc_696CB3: CVarR8
  loc_696CB7: FLdRfVar var_F0
  loc_696CBA: ImpAdCallFPR4  = Format(, )
  loc_696CBF: FLdRfVar var_F0
  loc_696CC2: CCyVar
  loc_696CC4: FLdPr Me
  loc_696CC7: MemStR8 global_96
  loc_696CCA: FFreeVar var_AC = "": var_E0 = ""
  loc_696CD3: LitI2_Byte 0
  loc_696CD5: CCyI2
  loc_696CD6: FLdPr Me
  loc_696CD9: MemStR8 global_104
  loc_696CDC: FLdPr Me
  loc_696CDF: MemLdR8 global_136
  loc_696CE2: FLdPr Me
  loc_696CE5: MemLdR8 global_112
  loc_696CE8: AddCy
  loc_696CE9: FLdPr Me
  loc_696CEC: MemLdR8 global_96
  loc_696CEF: AddCy
  loc_696CF0: FLdPr Me
  loc_696CF3: MemLdR8 global_104
  loc_696CF6: AddCy
  loc_696CF7: FLdPr Me
  loc_696CFA: MemStR8 global_120
  loc_696CFD: LitI4 1
  loc_696D02: LitI4 1
  loc_696D07: LitVarStr var_D0, "0.00"
  loc_696D0C: FStVarCopyObj var_AC
  loc_696D0F: FLdRfVar var_AC
  loc_696D12: FLdPr Me
  loc_696D15: MemLdRfVar from_stack_1.global_136
  loc_696D18: CVarRef
  loc_696D1D: FLdRfVar var_E0
  loc_696D20: ImpAdCallFPR4  = Format(, )
  loc_696D25: FLdRfVar var_E0
  loc_696D28: CStrVarVal var_98
  loc_696D2C: FLdPrThis
  loc_696D2D: VCallAd Control_ID_LImpint
  loc_696D30: FStAdFunc var_9C
  loc_696D33: FLdPr var_9C
  loc_696D36: Me.Label.Caption = from_stack_1
  loc_696D3B: FFree1Str var_98
  loc_696D3E: FFree1Ad var_9C
  loc_696D41: FFreeVar var_AC = ""
  loc_696D48: LitI4 1
  loc_696D4D: LitI4 1
  loc_696D52: LitVarStr var_D0, "0.00"
  loc_696D57: FStVarCopyObj var_AC
  loc_696D5A: FLdRfVar var_AC
  loc_696D5D: FLdPr Me
  loc_696D60: MemLdRfVar from_stack_1.global_112
  loc_696D63: CVarRef
  loc_696D68: FLdRfVar var_E0
  loc_696D6B: ImpAdCallFPR4  = Format(, )
  loc_696D70: FLdRfVar var_E0
  loc_696D73: CStrVarVal var_98
  loc_696D77: FLdPrThis
  loc_696D78: VCallAd Control_ID_LNeto
  loc_696D7B: FStAdFunc var_9C
  loc_696D7E: FLdPr var_9C
  loc_696D81: Me.Caption = from_stack_1
  loc_696D86: FFree1Str var_98
  loc_696D89: FFree1Ad var_9C
  loc_696D8C: FFreeVar var_AC = ""
  loc_696D93: LitI4 1
  loc_696D98: LitI4 1
  loc_696D9D: LitVarStr var_D0, "0.00"
  loc_696DA2: FStVarCopyObj var_AC
  loc_696DA5: FLdRfVar var_AC
  loc_696DA8: FLdPr Me
  loc_696DAB: MemLdRfVar from_stack_1.global_96
  loc_696DAE: CVarRef
  loc_696DB3: FLdRfVar var_E0
  loc_696DB6: ImpAdCallFPR4  = Format(, )
  loc_696DBB: FLdRfVar var_E0
  loc_696DBE: CStrVarVal var_98
  loc_696DC2: FLdPrThis
  loc_696DC3: VCallAd Control_ID_LIva
  loc_696DC6: FStAdFunc var_9C
  loc_696DC9: FLdPr var_9C
  loc_696DCC: Me.Caption = from_stack_1
  loc_696DD1: FFree1Str var_98
  loc_696DD4: FFree1Ad var_9C
  loc_696DD7: FFreeVar var_AC = ""
  loc_696DDE: LitI4 1
  loc_696DE3: LitI4 1
  loc_696DE8: LitVarStr var_D0, "0.00"
  loc_696DED: FStVarCopyObj var_AC
  loc_696DF0: FLdRfVar var_AC
  loc_696DF3: FLdPr Me
  loc_696DF6: MemLdRfVar from_stack_1.global_120
  loc_696DF9: CVarRef
  loc_696DFE: FLdRfVar var_E0
  loc_696E01: ImpAdCallFPR4  = Format(, )
  loc_696E06: FLdRfVar var_E0
  loc_696E09: CStrVarVal var_98
  loc_696E0D: FLdPrThis
  loc_696E0E: VCallAd Control_ID_Ltotal
  loc_696E11: FStAdFunc var_9C
  loc_696E14: FLdPr var_9C
  loc_696E17: Me.Caption = from_stack_1
  loc_696E1C: FFree1Str var_98
  loc_696E1F: FFree1Ad var_9C
  loc_696E22: FFreeVar var_AC = ""
  loc_696E29: FLdPr Me
  loc_696E2C: MemLdR8 global_136
  loc_696E2F: FLdPr Me
  loc_696E32: MemStR8 global_296
  loc_696E35: FLdPr Me
  loc_696E38: MemLdR8 global_96
  loc_696E3B: FLdPr Me
  loc_696E3E: MemStR8 global_304
  loc_696E41: FLdPr Me
  loc_696E44: MemLdR8 global_104
  loc_696E47: FLdPr Me
  loc_696E4A: MemStR8 global_312
  loc_696E4D: FLdPr Me
  loc_696E50: MemLdR8 global_120
  loc_696E53: FLdPr Me
  loc_696E56: MemStR8 global_320
  loc_696E59: FLdPr Me
  loc_696E5C: MemLdR8 global_112
  loc_696E5F: FLdPr Me
  loc_696E62: MemStR8 global_288
  loc_696E65: ExitProcHresult
  loc_696E66: FnStrComp3
End Function
