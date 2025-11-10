VERSION 5.00
Begin VB.Form frmSeccionesReporte
  Caption = "Configuración de Reportes"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 60
  ClientTop = 135
  ClientWidth = 11910
  ClientHeight = 8550
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Frame Frame1
    Left = 90
    Top = 90
    Width = 11715
    Height = 8355
    TabIndex = 0
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Stock y Vacío por Producto"
      Index = 11
      Left = 2910
      Top = 4890
      Width = 8415
      Height = 375
      TabIndex = 57
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Movimientos de Recepción y Baja por Tanque"
      Index = 12
      Left = 2910
      Top = 5250
      Width = 8415
      Height = 375
      TabIndex = 56
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Movimientos de Recepción y Baja por Producto"
      Index = 13
      Left = 2910
      Top = 5610
      Width = 8445
      Height = 375
      TabIndex = 55
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Reporte de Tanques"
      Index = 14
      Left = 2910
      Top = 5970
      Width = 8385
      Height = 375
      TabIndex = 54
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Reporte de Productos"
      Index = 15
      Left = 2910
      Top = 6330
      Width = 8175
      Height = 375
      TabIndex = 53
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Eventos del Controlador"
      Index = 16
      Left = 2910
      Top = 6690
      Width = 5175
      Height = 375
      TabIndex = 52
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Tipo de Pago"
      Index = 0
      Left = 2910
      Top = 930
      Width = 8055
      Height = 375
      TabIndex = 51
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Tipo de Producto"
      Index = 1
      Left = 2910
      Top = 1290
      Width = 8205
      Height = 375
      TabIndex = 50
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor"
      Index = 2
      Left = 2910
      Top = 1650
      Width = 8175
      Height = 375
      TabIndex = 49
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor (Contado)"
      Index = 3
      Left = 2910
      Top = 2010
      Width = 8445
      Height = 375
      TabIndex = 48
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor (Pruebas de surtidor)"
      Index = 4
      Left = 2910
      Top = 2370
      Width = 8385
      Height = 375
      TabIndex = 47
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor (Pruebas sin retorno)"
      Index = 5
      Left = 2910
      Top = 2730
      Width = 8325
      Height = 375
      TabIndex = 46
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor (Bonificaciones)"
      Index = 6
      Left = 2910
      Top = 3090
      Width = 8415
      Height = 375
      TabIndex = 45
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Ventas Totales por Surtidor (Sin Control)"
      Index = 7
      Left = 2910
      Top = 3450
      Width = 8385
      Height = 375
      TabIndex = 44
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Totalizadores Electrónicos por Surtidor"
      Index = 8
      Left = 2910
      Top = 3810
      Width = 8445
      Height = 375
      TabIndex = 43
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Stock y Vacío por Tanque"
      Index = 9
      Left = 2910
      Top = 4170
      Width = 8235
      Height = 375
      TabIndex = 42
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesMes
      Caption = "Stock y Vacío por Batería de Tanques Paralelos"
      Index = 10
      Left = 2910
      Top = 4530
      Width = 8415
      Height = 375
      TabIndex = 41
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 0
      Left = 2370
      Top = 930
      Width = 345
      Height = 375
      TabIndex = 40
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 1
      Left = 2370
      Top = 1290
      Width = 345
      Height = 375
      TabIndex = 39
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 2
      Left = 2370
      Top = 1650
      Width = 345
      Height = 375
      TabIndex = 38
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 3
      Left = 2370
      Top = 2010
      Width = 345
      Height = 375
      TabIndex = 37
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 4
      Left = 2370
      Top = 2370
      Width = 345
      Height = 375
      TabIndex = 36
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 5
      Left = 2370
      Top = 2730
      Width = 345
      Height = 375
      TabIndex = 35
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 6
      Left = 2370
      Top = 3090
      Width = 345
      Height = 375
      TabIndex = 34
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 7
      Left = 2370
      Top = 3450
      Width = 345
      Height = 375
      TabIndex = 33
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 8
      Left = 2370
      Top = 3810
      Width = 345
      Height = 375
      TabIndex = 32
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 9
      Left = 2370
      Top = 4170
      Width = 345
      Height = 375
      TabIndex = 31
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 10
      Left = 2370
      Top = 4530
      Width = 345
      Height = 375
      TabIndex = 30
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 11
      Left = 2370
      Top = 4890
      Width = 345
      Height = 375
      TabIndex = 29
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 12
      Left = 2370
      Top = 5250
      Width = 345
      Height = 375
      TabIndex = 28
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 13
      Left = 2370
      Top = 5610
      Width = 345
      Height = 375
      TabIndex = 27
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 14
      Left = 2370
      Top = 5970
      Width = 345
      Height = 375
      TabIndex = 26
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 15
      Left = 2370
      Top = 6330
      Width = 345
      Height = 375
      TabIndex = 25
    End
    Begin VB.CheckBox chkSeccionesDia
      Index = 16
      Left = 2370
      Top = 6690
      Width = 345
      Height = 375
      TabIndex = 24
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 0
      Left = 1800
      Top = 930
      Width = 345
      Height = 375
      TabIndex = 23
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 1
      Left = 1800
      Top = 1290
      Width = 345
      Height = 375
      TabIndex = 22
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 2
      Left = 1800
      Top = 1650
      Width = 345
      Height = 375
      TabIndex = 21
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 3
      Left = 1800
      Top = 2010
      Width = 345
      Height = 375
      TabIndex = 20
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 4
      Left = 1800
      Top = 2370
      Width = 345
      Height = 375
      TabIndex = 19
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 5
      Left = 1800
      Top = 2730
      Width = 345
      Height = 375
      TabIndex = 18
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 6
      Left = 1800
      Top = 3090
      Width = 345
      Height = 375
      TabIndex = 17
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 7
      Left = 1800
      Top = 3450
      Width = 345
      Height = 375
      TabIndex = 16
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 8
      Left = 1800
      Top = 3810
      Width = 345
      Height = 375
      TabIndex = 15
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 9
      Left = 1800
      Top = 4170
      Width = 345
      Height = 375
      TabIndex = 14
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 10
      Left = 1800
      Top = 4530
      Width = 345
      Height = 375
      TabIndex = 13
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 11
      Left = 1800
      Top = 4890
      Width = 345
      Height = 375
      TabIndex = 12
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 12
      Left = 1800
      Top = 5250
      Width = 345
      Height = 375
      TabIndex = 11
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 13
      Left = 1800
      Top = 5610
      Width = 345
      Height = 375
      TabIndex = 10
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 14
      Left = 1800
      Top = 5970
      Width = 345
      Height = 375
      TabIndex = 9
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 15
      Left = 1800
      Top = 6330
      Width = 345
      Height = 375
      TabIndex = 8
    End
    Begin VB.CheckBox chkSeccionesTurno
      Index = 16
      Left = 1800
      Top = 6690
      Width = 345
      Height = 375
      TabIndex = 7
    End
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Left = 8160
      Top = 7560
      Width = 1634
      Height = 672
      TabIndex = 3
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
      Left = 9960
      Top = 7560
      Width = 1634
      Height = 672
      TabIndex = 2
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
      Caption = "Mes"
      Left = 2880
      Top = 630
      Width = 300
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Día"
      Left = 2340
      Top = 630
      Width = 270
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Turno"
      Left = 1710
      Top = 630
      Width = 420
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Image Image1
      Picture = "frmSeccionesReporte.frx":0000
      Left = 450
      Top = 120
      Width = 480
      Height = 480
    End
    Begin VB.Label Label1
      Caption = "Secciones a visualizar en los reportes de turnos, días y meses."
      Left = 1260
      Top = 240
      Width = 9735
      Height = 405
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
    End
  End
End

Attribute VB_Name = "frmSeccionesReporte"


Private Sub cmdCancelar_Click() '5D2CC8
  'Data Table: 420590
  loc_5D2CB0: ILdRf Me
  loc_5D2CB3: FStAdNoPop
  loc_5D2CB7: ImpAdLdRf MemVar_7520D4
  loc_5D2CBA: NewIfNullPr Global
  loc_5D2CBD: Global.Unload from_stack_1
  loc_5D2CC2: FFree1Ad var_88
  loc_5D2CC5: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '661208
  'Data Table: 420590
  loc_660EC4: LitStr vbNullString
  loc_660EC7: ImpAdStStrCopy MemVar_74BEB0
  loc_660ECB: LitStr vbNullString
  loc_660ECE: ImpAdStStrCopy MemVar_74BEB4
  loc_660ED2: LitStr vbNullString
  loc_660ED5: ImpAdStStrCopy MemVar_74BEB8
  loc_660ED9: LitI2_Byte 0
  loc_660EDB: FLdRfVar var_86
  loc_660EDE: LitI2_Byte &HF
  loc_660EE0: ForI2 var_8A
  loc_660EE6: FLdRfVar var_96
  loc_660EE9: FLdRfVar var_94
  loc_660EEC: FLdI2 var_86
  loc_660EEF: FLdPrThis
  loc_660EF0: VCallAd Control_ID_chkSeccionesTurno
  loc_660EF3: FStAdFunc var_90
  loc_660EF6: FLdPr var_90
  loc_660EF9: Set from_stack_2 = Me(from_stack_1)
  loc_660EFE: FLdPr var_94
  loc_660F01:  = Me.Value
  loc_660F06: FLdI2 var_96
  loc_660F09: LitI2_Byte 1
  loc_660F0B: EqI2
  loc_660F0C: FFreeAd var_90 = ""
  loc_660F13: BranchF loc_660F70
  loc_660F16: ImpAdLdI4 MemVar_74BEB0
  loc_660F19: LitStr "<"
  loc_660F1C: ConcatStr
  loc_660F1D: FStStrNoPop var_9C
  loc_660F20: FLdI2 var_86
  loc_660F23: LitI2_Byte 1
  loc_660F25: AddI2
  loc_660F26: CStrUI1
  loc_660F28: FStStrNoPop var_A0
  loc_660F2B: ConcatStr
  loc_660F2C: FStStrNoPop var_A4
  loc_660F2F: LitStr ">"
  loc_660F32: ConcatStr
  loc_660F33: FStStrNoPop var_AC
  loc_660F36: FLdRfVar var_A8
  loc_660F39: FLdI2 var_86
  loc_660F3C: LitI2_Byte 1
  loc_660F3E: AddI2
  loc_660F3F: PopTmpLdAd2 var_96
  loc_660F42: from_stack_2v = Proc_23_3_62CE90(from_stack_1v)
  loc_660F47: ILdRf var_A8
  loc_660F4A: ConcatStr
  loc_660F4B: ImpAdStStr MemVar_74BEB0
  loc_660F4F: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_AC = ""
  loc_660F5C: FLdI2 var_86
  loc_660F5F: LitI2_Byte 1
  loc_660F61: EqI2
  loc_660F62: BranchF loc_660F70
  loc_660F65: ImpAdLdI4 MemVar_74BEB0
  loc_660F68: LitStr "<17>"
  loc_660F6B: ConcatStr
  loc_660F6C: ImpAdStStr MemVar_74BEB0
  loc_660F70: FLdRfVar var_96
  loc_660F73: FLdRfVar var_94
  loc_660F76: FLdI2 var_86
  loc_660F79: FLdPrThis
  loc_660F7A: VCallAd Control_ID_chkSeccionesDia
  loc_660F7D: FStAdFunc var_90
  loc_660F80: FLdPr var_90
  loc_660F83: Set from_stack_2 = Me(from_stack_1)
  loc_660F88: FLdPr var_94
  loc_660F8B:  = Me.Value
  loc_660F90: FLdI2 var_96
  loc_660F93: LitI2_Byte 1
  loc_660F95: EqI2
  loc_660F96: FFreeAd var_90 = ""
  loc_660F9D: BranchF loc_660FFA
  loc_660FA0: ImpAdLdI4 MemVar_74BEB4
  loc_660FA3: LitStr "<"
  loc_660FA6: ConcatStr
  loc_660FA7: FStStrNoPop var_9C
  loc_660FAA: FLdI2 var_86
  loc_660FAD: LitI2_Byte 1
  loc_660FAF: AddI2
  loc_660FB0: CStrUI1
  loc_660FB2: FStStrNoPop var_A0
  loc_660FB5: ConcatStr
  loc_660FB6: FStStrNoPop var_A4
  loc_660FB9: LitStr ">"
  loc_660FBC: ConcatStr
  loc_660FBD: FStStrNoPop var_AC
  loc_660FC0: FLdRfVar var_A8
  loc_660FC3: FLdI2 var_86
  loc_660FC6: LitI2_Byte 1
  loc_660FC8: AddI2
  loc_660FC9: PopTmpLdAd2 var_96
  loc_660FCC: from_stack_2v = Proc_23_3_62CE90(from_stack_1v)
  loc_660FD1: ILdRf var_A8
  loc_660FD4: ConcatStr
  loc_660FD5: ImpAdStStr MemVar_74BEB4
  loc_660FD9: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_AC = ""
  loc_660FE6: FLdI2 var_86
  loc_660FE9: LitI2_Byte 1
  loc_660FEB: EqI2
  loc_660FEC: BranchF loc_660FFA
  loc_660FEF: ImpAdLdI4 MemVar_74BEB4
  loc_660FF2: LitStr "<17>"
  loc_660FF5: ConcatStr
  loc_660FF6: ImpAdStStr MemVar_74BEB4
  loc_660FFA: FLdRfVar var_96
  loc_660FFD: FLdRfVar var_94
  loc_661000: FLdI2 var_86
  loc_661003: FLdPrThis
  loc_661004: VCallAd Control_ID_chkSeccionesMes
  loc_661007: FStAdFunc var_90
  loc_66100A: FLdPr var_90
  loc_66100D: Set from_stack_2 = Me(from_stack_1)
  loc_661012: FLdPr var_94
  loc_661015:  = Me.Value
  loc_66101A: FLdI2 var_96
  loc_66101D: LitI2_Byte 1
  loc_66101F: EqI2
  loc_661020: FFreeAd var_90 = ""
  loc_661027: BranchF loc_661084
  loc_66102A: ImpAdLdI4 MemVar_74BEB8
  loc_66102D: LitStr "<"
  loc_661030: ConcatStr
  loc_661031: FStStrNoPop var_9C
  loc_661034: FLdI2 var_86
  loc_661037: LitI2_Byte 1
  loc_661039: AddI2
  loc_66103A: CStrUI1
  loc_66103C: FStStrNoPop var_A0
  loc_66103F: ConcatStr
  loc_661040: FStStrNoPop var_A4
  loc_661043: LitStr ">"
  loc_661046: ConcatStr
  loc_661047: FStStrNoPop var_AC
  loc_66104A: FLdRfVar var_A8
  loc_66104D: FLdI2 var_86
  loc_661050: LitI2_Byte 1
  loc_661052: AddI2
  loc_661053: PopTmpLdAd2 var_96
  loc_661056: from_stack_2v = Proc_23_3_62CE90(from_stack_1v)
  loc_66105B: ILdRf var_A8
  loc_66105E: ConcatStr
  loc_66105F: ImpAdStStr MemVar_74BEB8
  loc_661063: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_AC = ""
  loc_661070: FLdI2 var_86
  loc_661073: LitI2_Byte 1
  loc_661075: EqI2
  loc_661076: BranchF loc_661084
  loc_661079: ImpAdLdI4 MemVar_74BEB8
  loc_66107C: LitStr "<17>"
  loc_66107F: ConcatStr
  loc_661080: ImpAdStStr MemVar_74BEB8
  loc_661084: FLdRfVar var_86
  loc_661087: NextI2 var_8A, loc_660EE6
  loc_66108C: FLdRfVar var_96
  loc_66108F: FLdRfVar var_94
  loc_661092: LitI2_Byte &H10
  loc_661094: FLdPrThis
  loc_661095: VCallAd Control_ID_chkSeccionesTurno
  loc_661098: FStAdFunc var_90
  loc_66109B: FLdPr var_90
  loc_66109E: Set from_stack_2 = Me(from_stack_1)
  loc_6610A3: FLdPr var_94
  loc_6610A6:  = Me.Value
  loc_6610AB: FLdI2 var_96
  loc_6610AE: LitI2_Byte 1
  loc_6610B0: EqI2
  loc_6610B1: FFreeAd var_90 = ""
  loc_6610B8: BranchF loc_6610E1
  loc_6610BB: ImpAdLdI4 MemVar_74BEB0
  loc_6610BE: LitStr "<"
  loc_6610C1: ConcatStr
  loc_6610C2: FStStrNoPop var_9C
  loc_6610C5: LitI2_Byte &H14
  loc_6610C7: CStrUI1
  loc_6610C9: FStStrNoPop var_A0
  loc_6610CC: ConcatStr
  loc_6610CD: FStStrNoPop var_A4
  loc_6610D0: LitStr ">"
  loc_6610D3: ConcatStr
  loc_6610D4: ImpAdStStr MemVar_74BEB0
  loc_6610D8: FFreeStr var_9C = "": var_A0 = ""
  loc_6610E1: FLdRfVar var_96
  loc_6610E4: FLdRfVar var_94
  loc_6610E7: LitI2_Byte &H10
  loc_6610E9: FLdPrThis
  loc_6610EA: VCallAd Control_ID_chkSeccionesDia
  loc_6610ED: FStAdFunc var_90
  loc_6610F0: FLdPr var_90
  loc_6610F3: Set from_stack_2 = Me(from_stack_1)
  loc_6610F8: FLdPr var_94
  loc_6610FB:  = Me.Value
  loc_661100: FLdI2 var_96
  loc_661103: LitI2_Byte 1
  loc_661105: EqI2
  loc_661106: FFreeAd var_90 = ""
  loc_66110D: BranchF loc_661136
  loc_661110: ImpAdLdI4 MemVar_74BEB4
  loc_661113: LitStr "<"
  loc_661116: ConcatStr
  loc_661117: FStStrNoPop var_9C
  loc_66111A: LitI2_Byte &H14
  loc_66111C: CStrUI1
  loc_66111E: FStStrNoPop var_A0
  loc_661121: ConcatStr
  loc_661122: FStStrNoPop var_A4
  loc_661125: LitStr ">"
  loc_661128: ConcatStr
  loc_661129: ImpAdStStr MemVar_74BEB4
  loc_66112D: FFreeStr var_9C = "": var_A0 = ""
  loc_661136: FLdRfVar var_96
  loc_661139: FLdRfVar var_94
  loc_66113C: LitI2_Byte &H10
  loc_66113E: FLdPrThis
  loc_66113F: VCallAd Control_ID_chkSeccionesMes
  loc_661142: FStAdFunc var_90
  loc_661145: FLdPr var_90
  loc_661148: Set from_stack_2 = Me(from_stack_1)
  loc_66114D: FLdPr var_94
  loc_661150:  = Me.Value
  loc_661155: FLdI2 var_96
  loc_661158: LitI2_Byte 1
  loc_66115A: EqI2
  loc_66115B: FFreeAd var_90 = ""
  loc_661162: BranchF loc_66118B
  loc_661165: ImpAdLdI4 MemVar_74BEB8
  loc_661168: LitStr "<"
  loc_66116B: ConcatStr
  loc_66116C: FStStrNoPop var_9C
  loc_66116F: LitI2_Byte &H14
  loc_661171: CStrUI1
  loc_661173: FStStrNoPop var_A0
  loc_661176: ConcatStr
  loc_661177: FStStrNoPop var_A4
  loc_66117A: LitStr ">"
  loc_66117D: ConcatStr
  loc_66117E: ImpAdStStr MemVar_74BEB8
  loc_661182: FFreeStr var_9C = "": var_A0 = ""
  loc_66118B: LitVarI2 var_DC, 1
  loc_661190: LitI4 4
  loc_661195: ImpAdLdRf MemVar_74BEAC
  loc_661198: CVarRef
  loc_66119D: FLdRfVar var_EC
  loc_6611A0: ImpAdCallFPR4  = Mid(, , )
  loc_6611A5: FLdRfVar var_EC
  loc_6611A8: LitVarStr var_FC, "1"
  loc_6611AD: HardType
  loc_6611AE: EqVarBool
  loc_6611B0: FFreeVar var_DC = ""
  loc_6611B7: BranchF loc_6611BF
  loc_6611BA: from_stack_1v = Proc_23_4_60EAD8()
  loc_6611BF: ImpAdLdI4 MemVar_74BEB0
  loc_6611C2: LitStr "Turno"
  loc_6611C5: LitStr "Startup"
  loc_6611C8: LitStr "CEM44"
  loc_6611CB: ImpAdCallFPR4 SaveSetting(, , , )
  loc_6611D0: ImpAdLdI4 MemVar_74BEB4
  loc_6611D3: LitStr "Dia"
  loc_6611D6: LitStr "Startup"
  loc_6611D9: LitStr "CEM44"
  loc_6611DC: ImpAdCallFPR4 SaveSetting(, , , )
  loc_6611E1: ImpAdLdI4 MemVar_74BEB8
  loc_6611E4: LitStr "Mes"
  loc_6611E7: LitStr "Startup"
  loc_6611EA: LitStr "CEM44"
  loc_6611ED: ImpAdCallFPR4 SaveSetting(, , , )
  loc_6611F2: ILdRf Me
  loc_6611F5: FStAdNoPop
  loc_6611F9: ImpAdLdRf MemVar_7520D4
  loc_6611FC: NewIfNullPr Global
  loc_6611FF: Global.Unload from_stack_1
  loc_661204: FFree1Ad var_90
  loc_661207: ExitProcHresult
End Sub

Private Sub Form_Load() '6EF4DC
  'Data Table: 420590
  loc_6EE6A0: FLdRfVar var_1D4
  loc_6EE6A3: LitVar_Missing var_1D0
  loc_6EE6A6: LitVar_Missing var_1B0
  loc_6EE6A9: LitVar_Missing var_190
  loc_6EE6AC: LitVar_Missing var_170
  loc_6EE6AF: LitVar_Missing var_150
  loc_6EE6B2: LitVar_Missing var_130
  loc_6EE6B5: LitVar_Missing var_110
  loc_6EE6B8: LitVar_Missing var_F0
  loc_6EE6BB: LitVar_Missing var_D0
  loc_6EE6BE: LitVar_Missing var_B0
  loc_6EE6C1: LitStr "Configuración de Reportes"
  loc_6EE6C4: FStStrCopy var_90
  loc_6EE6C7: FLdRfVar var_90
  loc_6EE6CA: LitI4 1
  loc_6EE6CF: PopTmpLdAdStr var_8C
  loc_6EE6D2: LitI2_Byte &H47
  loc_6EE6D4: PopTmpLdAd2 var_88
  loc_6EE6D7: ImpAdLdRf MemVar_74C7D0
  loc_6EE6DA: NewIfNullPr clsMsg
  loc_6EE6DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE6E2: ILdRf var_1D4
  loc_6EE6E5: FLdPr Me
  loc_6EE6E8: Me.Caption = from_stack_1
  loc_6EE6ED: FFreeStr var_90 = ""
  loc_6EE6F4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE70B: FLdRfVar var_1D4
  loc_6EE70E: LitVar_Missing var_1D0
  loc_6EE711: LitVar_Missing var_1B0
  loc_6EE714: LitVar_Missing var_190
  loc_6EE717: LitVar_Missing var_170
  loc_6EE71A: LitVar_Missing var_150
  loc_6EE71D: LitVar_Missing var_130
  loc_6EE720: LitVar_Missing var_110
  loc_6EE723: LitVar_Missing var_F0
  loc_6EE726: LitVar_Missing var_D0
  loc_6EE729: LitVar_Missing var_B0
  loc_6EE72C: LitStr "Secciones a visualizar en los reportes de turnos, días y meses."
  loc_6EE72F: FStStrCopy var_90
  loc_6EE732: FLdRfVar var_90
  loc_6EE735: LitI4 2
  loc_6EE73A: PopTmpLdAdStr var_8C
  loc_6EE73D: LitI2_Byte &H47
  loc_6EE73F: PopTmpLdAd2 var_88
  loc_6EE742: ImpAdLdRf MemVar_74C7D0
  loc_6EE745: NewIfNullPr clsMsg
  loc_6EE748: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE74D: ILdRf var_1D4
  loc_6EE750: FLdPrThis
  loc_6EE751: VCallAd Control_ID_Label1
  loc_6EE754: FStAdFunc var_1D8
  loc_6EE757: FLdPr var_1D8
  loc_6EE75A: Me.Caption = from_stack_1
  loc_6EE75F: FFreeStr var_90 = ""
  loc_6EE766: FFree1Ad var_1D8
  loc_6EE769: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE780: FLdRfVar var_1D4
  loc_6EE783: LitVar_Missing var_1D0
  loc_6EE786: LitVar_Missing var_1B0
  loc_6EE789: LitVar_Missing var_190
  loc_6EE78C: LitVar_Missing var_170
  loc_6EE78F: LitVar_Missing var_150
  loc_6EE792: LitVar_Missing var_130
  loc_6EE795: LitVar_Missing var_110
  loc_6EE798: LitVar_Missing var_F0
  loc_6EE79B: LitVar_Missing var_D0
  loc_6EE79E: LitVar_Missing var_B0
  loc_6EE7A1: LitStr "Turno"
  loc_6EE7A4: FStStrCopy var_90
  loc_6EE7A7: FLdRfVar var_90
  loc_6EE7AA: LitI4 3
  loc_6EE7AF: PopTmpLdAdStr var_8C
  loc_6EE7B2: LitI2_Byte &H47
  loc_6EE7B4: PopTmpLdAd2 var_88
  loc_6EE7B7: ImpAdLdRf MemVar_74C7D0
  loc_6EE7BA: NewIfNullPr clsMsg
  loc_6EE7BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE7C2: ILdRf var_1D4
  loc_6EE7C5: FLdPrThis
  loc_6EE7C6: VCallAd Control_ID_Label2
  loc_6EE7C9: FStAdFunc var_1D8
  loc_6EE7CC: FLdPr var_1D8
  loc_6EE7CF: Me.Caption = from_stack_1
  loc_6EE7D4: FFreeStr var_90 = ""
  loc_6EE7DB: FFree1Ad var_1D8
  loc_6EE7DE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE7F5: FLdRfVar var_1D4
  loc_6EE7F8: LitVar_Missing var_1D0
  loc_6EE7FB: LitVar_Missing var_1B0
  loc_6EE7FE: LitVar_Missing var_190
  loc_6EE801: LitVar_Missing var_170
  loc_6EE804: LitVar_Missing var_150
  loc_6EE807: LitVar_Missing var_130
  loc_6EE80A: LitVar_Missing var_110
  loc_6EE80D: LitVar_Missing var_F0
  loc_6EE810: LitVar_Missing var_D0
  loc_6EE813: LitVar_Missing var_B0
  loc_6EE816: LitStr "Día"
  loc_6EE819: FStStrCopy var_90
  loc_6EE81C: FLdRfVar var_90
  loc_6EE81F: LitI4 4
  loc_6EE824: PopTmpLdAdStr var_8C
  loc_6EE827: LitI2_Byte &H47
  loc_6EE829: PopTmpLdAd2 var_88
  loc_6EE82C: ImpAdLdRf MemVar_74C7D0
  loc_6EE82F: NewIfNullPr clsMsg
  loc_6EE832: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE837: ILdRf var_1D4
  loc_6EE83A: FLdPrThis
  loc_6EE83B: VCallAd Control_ID_Label3
  loc_6EE83E: FStAdFunc var_1D8
  loc_6EE841: FLdPr var_1D8
  loc_6EE844: Me.Caption = from_stack_1
  loc_6EE849: FFreeStr var_90 = ""
  loc_6EE850: FFree1Ad var_1D8
  loc_6EE853: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE86A: FLdRfVar var_1D4
  loc_6EE86D: LitVar_Missing var_1D0
  loc_6EE870: LitVar_Missing var_1B0
  loc_6EE873: LitVar_Missing var_190
  loc_6EE876: LitVar_Missing var_170
  loc_6EE879: LitVar_Missing var_150
  loc_6EE87C: LitVar_Missing var_130
  loc_6EE87F: LitVar_Missing var_110
  loc_6EE882: LitVar_Missing var_F0
  loc_6EE885: LitVar_Missing var_D0
  loc_6EE888: LitVar_Missing var_B0
  loc_6EE88B: LitStr "Mes"
  loc_6EE88E: FStStrCopy var_90
  loc_6EE891: FLdRfVar var_90
  loc_6EE894: LitI4 5
  loc_6EE899: PopTmpLdAdStr var_8C
  loc_6EE89C: LitI2_Byte &H47
  loc_6EE89E: PopTmpLdAd2 var_88
  loc_6EE8A1: ImpAdLdRf MemVar_74C7D0
  loc_6EE8A4: NewIfNullPr clsMsg
  loc_6EE8A7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE8AC: ILdRf var_1D4
  loc_6EE8AF: FLdPrThis
  loc_6EE8B0: VCallAd Control_ID_Label4
  loc_6EE8B3: FStAdFunc var_1D8
  loc_6EE8B6: FLdPr var_1D8
  loc_6EE8B9: Me.Caption = from_stack_1
  loc_6EE8BE: FFreeStr var_90 = ""
  loc_6EE8C5: FFree1Ad var_1D8
  loc_6EE8C8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE8DF: FLdRfVar var_1D4
  loc_6EE8E2: LitVar_Missing var_1D0
  loc_6EE8E5: LitVar_Missing var_1B0
  loc_6EE8E8: LitVar_Missing var_190
  loc_6EE8EB: LitVar_Missing var_170
  loc_6EE8EE: LitVar_Missing var_150
  loc_6EE8F1: LitVar_Missing var_130
  loc_6EE8F4: LitVar_Missing var_110
  loc_6EE8F7: LitVar_Missing var_F0
  loc_6EE8FA: LitVar_Missing var_D0
  loc_6EE8FD: LitVar_Missing var_B0
  loc_6EE900: LitStr "Ventas Totales por Tipo de Pago"
  loc_6EE903: FStStrCopy var_90
  loc_6EE906: FLdRfVar var_90
  loc_6EE909: LitI4 6
  loc_6EE90E: PopTmpLdAdStr var_8C
  loc_6EE911: LitI2_Byte &H47
  loc_6EE913: PopTmpLdAd2 var_88
  loc_6EE916: ImpAdLdRf MemVar_74C7D0
  loc_6EE919: NewIfNullPr clsMsg
  loc_6EE91C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE921: ILdRf var_1D4
  loc_6EE924: FLdRfVar var_1DC
  loc_6EE927: LitI2_Byte 0
  loc_6EE929: FLdPrThis
  loc_6EE92A: VCallAd Control_ID_chkSeccionesMes
  loc_6EE92D: FStAdFunc var_1D8
  loc_6EE930: FLdPr var_1D8
  loc_6EE933: Set from_stack_2 = Me(from_stack_1)
  loc_6EE938: FLdPr var_1DC
  loc_6EE93B: Me.Caption = from_stack_1
  loc_6EE940: FFreeStr var_90 = ""
  loc_6EE947: FFreeAd var_1D8 = ""
  loc_6EE94E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE965: FLdRfVar var_1D4
  loc_6EE968: LitVar_Missing var_1D0
  loc_6EE96B: LitVar_Missing var_1B0
  loc_6EE96E: LitVar_Missing var_190
  loc_6EE971: LitVar_Missing var_170
  loc_6EE974: LitVar_Missing var_150
  loc_6EE977: LitVar_Missing var_130
  loc_6EE97A: LitVar_Missing var_110
  loc_6EE97D: LitVar_Missing var_F0
  loc_6EE980: LitVar_Missing var_D0
  loc_6EE983: LitVar_Missing var_B0
  loc_6EE986: LitStr "Ventas Totales por Tipo de Producto"
  loc_6EE989: FStStrCopy var_90
  loc_6EE98C: FLdRfVar var_90
  loc_6EE98F: LitI4 7
  loc_6EE994: PopTmpLdAdStr var_8C
  loc_6EE997: LitI2_Byte &H47
  loc_6EE999: PopTmpLdAd2 var_88
  loc_6EE99C: ImpAdLdRf MemVar_74C7D0
  loc_6EE99F: NewIfNullPr clsMsg
  loc_6EE9A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE9A7: ILdRf var_1D4
  loc_6EE9AA: FLdRfVar var_1DC
  loc_6EE9AD: LitI2_Byte 1
  loc_6EE9AF: FLdPrThis
  loc_6EE9B0: VCallAd Control_ID_chkSeccionesMes
  loc_6EE9B3: FStAdFunc var_1D8
  loc_6EE9B6: FLdPr var_1D8
  loc_6EE9B9: Set from_stack_2 = Me(from_stack_1)
  loc_6EE9BE: FLdPr var_1DC
  loc_6EE9C1: Me.Caption = from_stack_1
  loc_6EE9C6: FFreeStr var_90 = ""
  loc_6EE9CD: FFreeAd var_1D8 = ""
  loc_6EE9D4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE9EB: FLdRfVar var_1D4
  loc_6EE9EE: LitVar_Missing var_1D0
  loc_6EE9F1: LitVar_Missing var_1B0
  loc_6EE9F4: LitVar_Missing var_190
  loc_6EE9F7: LitVar_Missing var_170
  loc_6EE9FA: LitVar_Missing var_150
  loc_6EE9FD: LitVar_Missing var_130
  loc_6EEA00: LitVar_Missing var_110
  loc_6EEA03: LitVar_Missing var_F0
  loc_6EEA06: LitVar_Missing var_D0
  loc_6EEA09: LitVar_Missing var_B0
  loc_6EEA0C: LitStr "Ventas Totales por Surtidor"
  loc_6EEA0F: FStStrCopy var_90
  loc_6EEA12: FLdRfVar var_90
  loc_6EEA15: LitI4 8
  loc_6EEA1A: PopTmpLdAdStr var_8C
  loc_6EEA1D: LitI2_Byte &H47
  loc_6EEA1F: PopTmpLdAd2 var_88
  loc_6EEA22: ImpAdLdRf MemVar_74C7D0
  loc_6EEA25: NewIfNullPr clsMsg
  loc_6EEA28: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEA2D: ILdRf var_1D4
  loc_6EEA30: FLdRfVar var_1DC
  loc_6EEA33: LitI2_Byte 2
  loc_6EEA35: FLdPrThis
  loc_6EEA36: VCallAd Control_ID_chkSeccionesMes
  loc_6EEA39: FStAdFunc var_1D8
  loc_6EEA3C: FLdPr var_1D8
  loc_6EEA3F: Set from_stack_2 = Me(from_stack_1)
  loc_6EEA44: FLdPr var_1DC
  loc_6EEA47: Me.Caption = from_stack_1
  loc_6EEA4C: FFreeStr var_90 = ""
  loc_6EEA53: FFreeAd var_1D8 = ""
  loc_6EEA5A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEA71: FLdRfVar var_1D4
  loc_6EEA74: LitVar_Missing var_1D0
  loc_6EEA77: LitVar_Missing var_1B0
  loc_6EEA7A: LitVar_Missing var_190
  loc_6EEA7D: LitVar_Missing var_170
  loc_6EEA80: LitVar_Missing var_150
  loc_6EEA83: LitVar_Missing var_130
  loc_6EEA86: LitVar_Missing var_110
  loc_6EEA89: LitVar_Missing var_F0
  loc_6EEA8C: LitVar_Missing var_D0
  loc_6EEA8F: LitVar_Missing var_B0
  loc_6EEA92: LitStr "Ventas Totales por Surtidor (Contado)"
  loc_6EEA95: FStStrCopy var_90
  loc_6EEA98: FLdRfVar var_90
  loc_6EEA9B: LitI4 9
  loc_6EEAA0: PopTmpLdAdStr var_8C
  loc_6EEAA3: LitI2_Byte &H47
  loc_6EEAA5: PopTmpLdAd2 var_88
  loc_6EEAA8: ImpAdLdRf MemVar_74C7D0
  loc_6EEAAB: NewIfNullPr clsMsg
  loc_6EEAAE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEAB3: ILdRf var_1D4
  loc_6EEAB6: FLdRfVar var_1DC
  loc_6EEAB9: LitI2_Byte 3
  loc_6EEABB: FLdPrThis
  loc_6EEABC: VCallAd Control_ID_chkSeccionesMes
  loc_6EEABF: FStAdFunc var_1D8
  loc_6EEAC2: FLdPr var_1D8
  loc_6EEAC5: Set from_stack_2 = Me(from_stack_1)
  loc_6EEACA: FLdPr var_1DC
  loc_6EEACD: Me.Caption = from_stack_1
  loc_6EEAD2: FFreeStr var_90 = ""
  loc_6EEAD9: FFreeAd var_1D8 = ""
  loc_6EEAE0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEAF7: FLdRfVar var_1D4
  loc_6EEAFA: LitVar_Missing var_1D0
  loc_6EEAFD: LitVar_Missing var_1B0
  loc_6EEB00: LitVar_Missing var_190
  loc_6EEB03: LitVar_Missing var_170
  loc_6EEB06: LitVar_Missing var_150
  loc_6EEB09: LitVar_Missing var_130
  loc_6EEB0C: LitVar_Missing var_110
  loc_6EEB0F: LitVar_Missing var_F0
  loc_6EEB12: LitVar_Missing var_D0
  loc_6EEB15: LitVar_Missing var_B0
  loc_6EEB18: LitStr "Ventas Totales por Surtidor (Pruebas de surtidor)"
  loc_6EEB1B: FStStrCopy var_90
  loc_6EEB1E: FLdRfVar var_90
  loc_6EEB21: LitI4 &HA
  loc_6EEB26: PopTmpLdAdStr var_8C
  loc_6EEB29: LitI2_Byte &H47
  loc_6EEB2B: PopTmpLdAd2 var_88
  loc_6EEB2E: ImpAdLdRf MemVar_74C7D0
  loc_6EEB31: NewIfNullPr clsMsg
  loc_6EEB34: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEB39: ILdRf var_1D4
  loc_6EEB3C: FLdRfVar var_1DC
  loc_6EEB3F: LitI2_Byte 4
  loc_6EEB41: FLdPrThis
  loc_6EEB42: VCallAd Control_ID_chkSeccionesMes
  loc_6EEB45: FStAdFunc var_1D8
  loc_6EEB48: FLdPr var_1D8
  loc_6EEB4B: Set from_stack_2 = Me(from_stack_1)
  loc_6EEB50: FLdPr var_1DC
  loc_6EEB53: Me.Caption = from_stack_1
  loc_6EEB58: FFreeStr var_90 = ""
  loc_6EEB5F: FFreeAd var_1D8 = ""
  loc_6EEB66: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEB7D: FLdRfVar var_1D4
  loc_6EEB80: LitVar_Missing var_1D0
  loc_6EEB83: LitVar_Missing var_1B0
  loc_6EEB86: LitVar_Missing var_190
  loc_6EEB89: LitVar_Missing var_170
  loc_6EEB8C: LitVar_Missing var_150
  loc_6EEB8F: LitVar_Missing var_130
  loc_6EEB92: LitVar_Missing var_110
  loc_6EEB95: LitVar_Missing var_F0
  loc_6EEB98: LitVar_Missing var_D0
  loc_6EEB9B: LitVar_Missing var_B0
  loc_6EEB9E: LitStr "Ventas Totales por Surtidor (Pruebas sin retorno)"
  loc_6EEBA1: FStStrCopy var_90
  loc_6EEBA4: FLdRfVar var_90
  loc_6EEBA7: LitI4 &HB
  loc_6EEBAC: PopTmpLdAdStr var_8C
  loc_6EEBAF: LitI2_Byte &H47
  loc_6EEBB1: PopTmpLdAd2 var_88
  loc_6EEBB4: ImpAdLdRf MemVar_74C7D0
  loc_6EEBB7: NewIfNullPr clsMsg
  loc_6EEBBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEBBF: ILdRf var_1D4
  loc_6EEBC2: FLdRfVar var_1DC
  loc_6EEBC5: LitI2_Byte 5
  loc_6EEBC7: FLdPrThis
  loc_6EEBC8: VCallAd Control_ID_chkSeccionesMes
  loc_6EEBCB: FStAdFunc var_1D8
  loc_6EEBCE: FLdPr var_1D8
  loc_6EEBD1: Set from_stack_2 = Me(from_stack_1)
  loc_6EEBD6: FLdPr var_1DC
  loc_6EEBD9: Me.Caption = from_stack_1
  loc_6EEBDE: FFreeStr var_90 = ""
  loc_6EEBE5: FFreeAd var_1D8 = ""
  loc_6EEBEC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEC03: FLdRfVar var_1D4
  loc_6EEC06: LitVar_Missing var_1D0
  loc_6EEC09: LitVar_Missing var_1B0
  loc_6EEC0C: LitVar_Missing var_190
  loc_6EEC0F: LitVar_Missing var_170
  loc_6EEC12: LitVar_Missing var_150
  loc_6EEC15: LitVar_Missing var_130
  loc_6EEC18: LitVar_Missing var_110
  loc_6EEC1B: LitVar_Missing var_F0
  loc_6EEC1E: LitVar_Missing var_D0
  loc_6EEC21: LitVar_Missing var_B0
  loc_6EEC24: LitStr "Ventas Totales por Surtidor (Bonificaciones)"
  loc_6EEC27: FStStrCopy var_90
  loc_6EEC2A: FLdRfVar var_90
  loc_6EEC2D: LitI4 &HC
  loc_6EEC32: PopTmpLdAdStr var_8C
  loc_6EEC35: LitI2_Byte &H47
  loc_6EEC37: PopTmpLdAd2 var_88
  loc_6EEC3A: ImpAdLdRf MemVar_74C7D0
  loc_6EEC3D: NewIfNullPr clsMsg
  loc_6EEC40: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEC45: ILdRf var_1D4
  loc_6EEC48: FLdRfVar var_1DC
  loc_6EEC4B: LitI2_Byte 6
  loc_6EEC4D: FLdPrThis
  loc_6EEC4E: VCallAd Control_ID_chkSeccionesMes
  loc_6EEC51: FStAdFunc var_1D8
  loc_6EEC54: FLdPr var_1D8
  loc_6EEC57: Set from_stack_2 = Me(from_stack_1)
  loc_6EEC5C: FLdPr var_1DC
  loc_6EEC5F: Me.Caption = from_stack_1
  loc_6EEC64: FFreeStr var_90 = ""
  loc_6EEC6B: FFreeAd var_1D8 = ""
  loc_6EEC72: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEC89: FLdRfVar var_1D4
  loc_6EEC8C: LitVar_Missing var_1D0
  loc_6EEC8F: LitVar_Missing var_1B0
  loc_6EEC92: LitVar_Missing var_190
  loc_6EEC95: LitVar_Missing var_170
  loc_6EEC98: LitVar_Missing var_150
  loc_6EEC9B: LitVar_Missing var_130
  loc_6EEC9E: LitVar_Missing var_110
  loc_6EECA1: LitVar_Missing var_F0
  loc_6EECA4: LitVar_Missing var_D0
  loc_6EECA7: LitVar_Missing var_B0
  loc_6EECAA: LitStr "Ventas Totales por Surtidor (Sin Control)"
  loc_6EECAD: FStStrCopy var_90
  loc_6EECB0: FLdRfVar var_90
  loc_6EECB3: LitI4 &HD
  loc_6EECB8: PopTmpLdAdStr var_8C
  loc_6EECBB: LitI2_Byte &H47
  loc_6EECBD: PopTmpLdAd2 var_88
  loc_6EECC0: ImpAdLdRf MemVar_74C7D0
  loc_6EECC3: NewIfNullPr clsMsg
  loc_6EECC6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EECCB: ILdRf var_1D4
  loc_6EECCE: FLdRfVar var_1DC
  loc_6EECD1: LitI2_Byte 7
  loc_6EECD3: FLdPrThis
  loc_6EECD4: VCallAd Control_ID_chkSeccionesMes
  loc_6EECD7: FStAdFunc var_1D8
  loc_6EECDA: FLdPr var_1D8
  loc_6EECDD: Set from_stack_2 = Me(from_stack_1)
  loc_6EECE2: FLdPr var_1DC
  loc_6EECE5: Me.Caption = from_stack_1
  loc_6EECEA: FFreeStr var_90 = ""
  loc_6EECF1: FFreeAd var_1D8 = ""
  loc_6EECF8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EED0F: FLdRfVar var_1D4
  loc_6EED12: LitVar_Missing var_1D0
  loc_6EED15: LitVar_Missing var_1B0
  loc_6EED18: LitVar_Missing var_190
  loc_6EED1B: LitVar_Missing var_170
  loc_6EED1E: LitVar_Missing var_150
  loc_6EED21: LitVar_Missing var_130
  loc_6EED24: LitVar_Missing var_110
  loc_6EED27: LitVar_Missing var_F0
  loc_6EED2A: LitVar_Missing var_D0
  loc_6EED2D: LitVar_Missing var_B0
  loc_6EED30: LitStr "Totalizadores Electrónicos por Surtidor"
  loc_6EED33: FStStrCopy var_90
  loc_6EED36: FLdRfVar var_90
  loc_6EED39: LitI4 &HE
  loc_6EED3E: PopTmpLdAdStr var_8C
  loc_6EED41: LitI2_Byte &H47
  loc_6EED43: PopTmpLdAd2 var_88
  loc_6EED46: ImpAdLdRf MemVar_74C7D0
  loc_6EED49: NewIfNullPr clsMsg
  loc_6EED4C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EED51: ILdRf var_1D4
  loc_6EED54: FLdRfVar var_1DC
  loc_6EED57: LitI2_Byte 8
  loc_6EED59: FLdPrThis
  loc_6EED5A: VCallAd Control_ID_chkSeccionesMes
  loc_6EED5D: FStAdFunc var_1D8
  loc_6EED60: FLdPr var_1D8
  loc_6EED63: Set from_stack_2 = Me(from_stack_1)
  loc_6EED68: FLdPr var_1DC
  loc_6EED6B: Me.Caption = from_stack_1
  loc_6EED70: FFreeStr var_90 = ""
  loc_6EED77: FFreeAd var_1D8 = ""
  loc_6EED7E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EED95: FLdRfVar var_1D4
  loc_6EED98: LitVar_Missing var_1D0
  loc_6EED9B: LitVar_Missing var_1B0
  loc_6EED9E: LitVar_Missing var_190
  loc_6EEDA1: LitVar_Missing var_170
  loc_6EEDA4: LitVar_Missing var_150
  loc_6EEDA7: LitVar_Missing var_130
  loc_6EEDAA: LitVar_Missing var_110
  loc_6EEDAD: LitVar_Missing var_F0
  loc_6EEDB0: LitVar_Missing var_D0
  loc_6EEDB3: LitVar_Missing var_B0
  loc_6EEDB6: LitStr "Stock y Vacío por Tanque"
  loc_6EEDB9: FStStrCopy var_90
  loc_6EEDBC: FLdRfVar var_90
  loc_6EEDBF: LitI4 &HF
  loc_6EEDC4: PopTmpLdAdStr var_8C
  loc_6EEDC7: LitI2_Byte &H47
  loc_6EEDC9: PopTmpLdAd2 var_88
  loc_6EEDCC: ImpAdLdRf MemVar_74C7D0
  loc_6EEDCF: NewIfNullPr clsMsg
  loc_6EEDD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEDD7: ILdRf var_1D4
  loc_6EEDDA: FLdRfVar var_1DC
  loc_6EEDDD: LitI2_Byte 9
  loc_6EEDDF: FLdPrThis
  loc_6EEDE0: VCallAd Control_ID_chkSeccionesMes
  loc_6EEDE3: FStAdFunc var_1D8
  loc_6EEDE6: FLdPr var_1D8
  loc_6EEDE9: Set from_stack_2 = Me(from_stack_1)
  loc_6EEDEE: FLdPr var_1DC
  loc_6EEDF1: Me.Caption = from_stack_1
  loc_6EEDF6: FFreeStr var_90 = ""
  loc_6EEDFD: FFreeAd var_1D8 = ""
  loc_6EEE04: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEE1B: FLdRfVar var_1D4
  loc_6EEE1E: LitVar_Missing var_1D0
  loc_6EEE21: LitVar_Missing var_1B0
  loc_6EEE24: LitVar_Missing var_190
  loc_6EEE27: LitVar_Missing var_170
  loc_6EEE2A: LitVar_Missing var_150
  loc_6EEE2D: LitVar_Missing var_130
  loc_6EEE30: LitVar_Missing var_110
  loc_6EEE33: LitVar_Missing var_F0
  loc_6EEE36: LitVar_Missing var_D0
  loc_6EEE39: LitVar_Missing var_B0
  loc_6EEE3C: LitStr "Stock y Vacío por Batería de Tanques Paralelos"
  loc_6EEE3F: FStStrCopy var_90
  loc_6EEE42: FLdRfVar var_90
  loc_6EEE45: LitI4 &H10
  loc_6EEE4A: PopTmpLdAdStr var_8C
  loc_6EEE4D: LitI2_Byte &H47
  loc_6EEE4F: PopTmpLdAd2 var_88
  loc_6EEE52: ImpAdLdRf MemVar_74C7D0
  loc_6EEE55: NewIfNullPr clsMsg
  loc_6EEE58: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEE5D: ILdRf var_1D4
  loc_6EEE60: FLdRfVar var_1DC
  loc_6EEE63: LitI2_Byte &HA
  loc_6EEE65: FLdPrThis
  loc_6EEE66: VCallAd Control_ID_chkSeccionesMes
  loc_6EEE69: FStAdFunc var_1D8
  loc_6EEE6C: FLdPr var_1D8
  loc_6EEE6F: Set from_stack_2 = Me(from_stack_1)
  loc_6EEE74: FLdPr var_1DC
  loc_6EEE77: Me.Caption = from_stack_1
  loc_6EEE7C: FFreeStr var_90 = ""
  loc_6EEE83: FFreeAd var_1D8 = ""
  loc_6EEE8A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEEA1: FLdRfVar var_1D4
  loc_6EEEA4: LitVar_Missing var_1D0
  loc_6EEEA7: LitVar_Missing var_1B0
  loc_6EEEAA: LitVar_Missing var_190
  loc_6EEEAD: LitVar_Missing var_170
  loc_6EEEB0: LitVar_Missing var_150
  loc_6EEEB3: LitVar_Missing var_130
  loc_6EEEB6: LitVar_Missing var_110
  loc_6EEEB9: LitVar_Missing var_F0
  loc_6EEEBC: LitVar_Missing var_D0
  loc_6EEEBF: LitVar_Missing var_B0
  loc_6EEEC2: LitStr "Stock y Vacío por Producto"
  loc_6EEEC5: FStStrCopy var_90
  loc_6EEEC8: FLdRfVar var_90
  loc_6EEECB: LitI4 &H11
  loc_6EEED0: PopTmpLdAdStr var_8C
  loc_6EEED3: LitI2_Byte &H47
  loc_6EEED5: PopTmpLdAd2 var_88
  loc_6EEED8: ImpAdLdRf MemVar_74C7D0
  loc_6EEEDB: NewIfNullPr clsMsg
  loc_6EEEDE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEEE3: ILdRf var_1D4
  loc_6EEEE6: FLdRfVar var_1DC
  loc_6EEEE9: LitI2_Byte &HB
  loc_6EEEEB: FLdPrThis
  loc_6EEEEC: VCallAd Control_ID_chkSeccionesMes
  loc_6EEEEF: FStAdFunc var_1D8
  loc_6EEEF2: FLdPr var_1D8
  loc_6EEEF5: Set from_stack_2 = Me(from_stack_1)
  loc_6EEEFA: FLdPr var_1DC
  loc_6EEEFD: Me.Caption = from_stack_1
  loc_6EEF02: FFreeStr var_90 = ""
  loc_6EEF09: FFreeAd var_1D8 = ""
  loc_6EEF10: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEF27: FLdRfVar var_1D4
  loc_6EEF2A: LitVar_Missing var_1D0
  loc_6EEF2D: LitVar_Missing var_1B0
  loc_6EEF30: LitVar_Missing var_190
  loc_6EEF33: LitVar_Missing var_170
  loc_6EEF36: LitVar_Missing var_150
  loc_6EEF39: LitVar_Missing var_130
  loc_6EEF3C: LitVar_Missing var_110
  loc_6EEF3F: LitVar_Missing var_F0
  loc_6EEF42: LitVar_Missing var_D0
  loc_6EEF45: LitVar_Missing var_B0
  loc_6EEF48: LitStr "Movimientos de Recepción y Baja por Tanque"
  loc_6EEF4B: FStStrCopy var_90
  loc_6EEF4E: FLdRfVar var_90
  loc_6EEF51: LitI4 &H12
  loc_6EEF56: PopTmpLdAdStr var_8C
  loc_6EEF59: LitI2_Byte &H47
  loc_6EEF5B: PopTmpLdAd2 var_88
  loc_6EEF5E: ImpAdLdRf MemVar_74C7D0
  loc_6EEF61: NewIfNullPr clsMsg
  loc_6EEF64: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEF69: ILdRf var_1D4
  loc_6EEF6C: FLdRfVar var_1DC
  loc_6EEF6F: LitI2_Byte &HC
  loc_6EEF71: FLdPrThis
  loc_6EEF72: VCallAd Control_ID_chkSeccionesMes
  loc_6EEF75: FStAdFunc var_1D8
  loc_6EEF78: FLdPr var_1D8
  loc_6EEF7B: Set from_stack_2 = Me(from_stack_1)
  loc_6EEF80: FLdPr var_1DC
  loc_6EEF83: Me.Caption = from_stack_1
  loc_6EEF88: FFreeStr var_90 = ""
  loc_6EEF8F: FFreeAd var_1D8 = ""
  loc_6EEF96: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EEFAD: FLdRfVar var_1D4
  loc_6EEFB0: LitVar_Missing var_1D0
  loc_6EEFB3: LitVar_Missing var_1B0
  loc_6EEFB6: LitVar_Missing var_190
  loc_6EEFB9: LitVar_Missing var_170
  loc_6EEFBC: LitVar_Missing var_150
  loc_6EEFBF: LitVar_Missing var_130
  loc_6EEFC2: LitVar_Missing var_110
  loc_6EEFC5: LitVar_Missing var_F0
  loc_6EEFC8: LitVar_Missing var_D0
  loc_6EEFCB: LitVar_Missing var_B0
  loc_6EEFCE: LitStr "Movimientos de Recepción y Baja por Producto"
  loc_6EEFD1: FStStrCopy var_90
  loc_6EEFD4: FLdRfVar var_90
  loc_6EEFD7: LitI4 &H13
  loc_6EEFDC: PopTmpLdAdStr var_8C
  loc_6EEFDF: LitI2_Byte &H47
  loc_6EEFE1: PopTmpLdAd2 var_88
  loc_6EEFE4: ImpAdLdRf MemVar_74C7D0
  loc_6EEFE7: NewIfNullPr clsMsg
  loc_6EEFEA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EEFEF: ILdRf var_1D4
  loc_6EEFF2: FLdRfVar var_1DC
  loc_6EEFF5: LitI2_Byte &HD
  loc_6EEFF7: FLdPrThis
  loc_6EEFF8: VCallAd Control_ID_chkSeccionesMes
  loc_6EEFFB: FStAdFunc var_1D8
  loc_6EEFFE: FLdPr var_1D8
  loc_6EF001: Set from_stack_2 = Me(from_stack_1)
  loc_6EF006: FLdPr var_1DC
  loc_6EF009: Me.Caption = from_stack_1
  loc_6EF00E: FFreeStr var_90 = ""
  loc_6EF015: FFreeAd var_1D8 = ""
  loc_6EF01C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF033: FLdRfVar var_1D4
  loc_6EF036: LitVar_Missing var_1D0
  loc_6EF039: LitVar_Missing var_1B0
  loc_6EF03C: LitVar_Missing var_190
  loc_6EF03F: LitVar_Missing var_170
  loc_6EF042: LitVar_Missing var_150
  loc_6EF045: LitVar_Missing var_130
  loc_6EF048: LitVar_Missing var_110
  loc_6EF04B: LitVar_Missing var_F0
  loc_6EF04E: LitVar_Missing var_D0
  loc_6EF051: LitVar_Missing var_B0
  loc_6EF054: LitStr "Reporte de Tanques"
  loc_6EF057: FStStrCopy var_90
  loc_6EF05A: FLdRfVar var_90
  loc_6EF05D: LitI4 &H14
  loc_6EF062: PopTmpLdAdStr var_8C
  loc_6EF065: LitI2_Byte &H47
  loc_6EF067: PopTmpLdAd2 var_88
  loc_6EF06A: ImpAdLdRf MemVar_74C7D0
  loc_6EF06D: NewIfNullPr clsMsg
  loc_6EF070: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EF075: ILdRf var_1D4
  loc_6EF078: FLdRfVar var_1DC
  loc_6EF07B: LitI2_Byte &HE
  loc_6EF07D: FLdPrThis
  loc_6EF07E: VCallAd Control_ID_chkSeccionesMes
  loc_6EF081: FStAdFunc var_1D8
  loc_6EF084: FLdPr var_1D8
  loc_6EF087: Set from_stack_2 = Me(from_stack_1)
  loc_6EF08C: FLdPr var_1DC
  loc_6EF08F: Me.Caption = from_stack_1
  loc_6EF094: FFreeStr var_90 = ""
  loc_6EF09B: FFreeAd var_1D8 = ""
  loc_6EF0A2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF0B9: FLdRfVar var_1D4
  loc_6EF0BC: LitVar_Missing var_1D0
  loc_6EF0BF: LitVar_Missing var_1B0
  loc_6EF0C2: LitVar_Missing var_190
  loc_6EF0C5: LitVar_Missing var_170
  loc_6EF0C8: LitVar_Missing var_150
  loc_6EF0CB: LitVar_Missing var_130
  loc_6EF0CE: LitVar_Missing var_110
  loc_6EF0D1: LitVar_Missing var_F0
  loc_6EF0D4: LitVar_Missing var_D0
  loc_6EF0D7: LitVar_Missing var_B0
  loc_6EF0DA: LitStr "Reporte de Productos"
  loc_6EF0DD: FStStrCopy var_90
  loc_6EF0E0: FLdRfVar var_90
  loc_6EF0E3: LitI4 &H15
  loc_6EF0E8: PopTmpLdAdStr var_8C
  loc_6EF0EB: LitI2_Byte &H47
  loc_6EF0ED: PopTmpLdAd2 var_88
  loc_6EF0F0: ImpAdLdRf MemVar_74C7D0
  loc_6EF0F3: NewIfNullPr clsMsg
  loc_6EF0F6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EF0FB: ILdRf var_1D4
  loc_6EF0FE: FLdRfVar var_1DC
  loc_6EF101: LitI2_Byte &HF
  loc_6EF103: FLdPrThis
  loc_6EF104: VCallAd Control_ID_chkSeccionesMes
  loc_6EF107: FStAdFunc var_1D8
  loc_6EF10A: FLdPr var_1D8
  loc_6EF10D: Set from_stack_2 = Me(from_stack_1)
  loc_6EF112: FLdPr var_1DC
  loc_6EF115: Me.Caption = from_stack_1
  loc_6EF11A: FFreeStr var_90 = ""
  loc_6EF121: FFreeAd var_1D8 = ""
  loc_6EF128: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF13F: FLdRfVar var_1D4
  loc_6EF142: LitVar_Missing var_1D0
  loc_6EF145: LitVar_Missing var_1B0
  loc_6EF148: LitVar_Missing var_190
  loc_6EF14B: LitVar_Missing var_170
  loc_6EF14E: LitVar_Missing var_150
  loc_6EF151: LitVar_Missing var_130
  loc_6EF154: LitVar_Missing var_110
  loc_6EF157: LitVar_Missing var_F0
  loc_6EF15A: LitVar_Missing var_D0
  loc_6EF15D: LitVar_Missing var_B0
  loc_6EF160: LitStr "Eventos del Controlador"
  loc_6EF163: FStStrCopy var_90
  loc_6EF166: FLdRfVar var_90
  loc_6EF169: LitI4 &H16
  loc_6EF16E: PopTmpLdAdStr var_8C
  loc_6EF171: LitI2_Byte &H47
  loc_6EF173: PopTmpLdAd2 var_88
  loc_6EF176: ImpAdLdRf MemVar_74C7D0
  loc_6EF179: NewIfNullPr clsMsg
  loc_6EF17C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EF181: ILdRf var_1D4
  loc_6EF184: FLdRfVar var_1DC
  loc_6EF187: LitI2_Byte &H10
  loc_6EF189: FLdPrThis
  loc_6EF18A: VCallAd Control_ID_chkSeccionesMes
  loc_6EF18D: FStAdFunc var_1D8
  loc_6EF190: FLdPr var_1D8
  loc_6EF193: Set from_stack_2 = Me(from_stack_1)
  loc_6EF198: FLdPr var_1DC
  loc_6EF19B: Me.Caption = from_stack_1
  loc_6EF1A0: FFreeStr var_90 = ""
  loc_6EF1A7: FFreeAd var_1D8 = ""
  loc_6EF1AE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF1C5: FLdRfVar var_1D4
  loc_6EF1C8: LitVar_Missing var_1D0
  loc_6EF1CB: LitVar_Missing var_1B0
  loc_6EF1CE: LitVar_Missing var_190
  loc_6EF1D1: LitVar_Missing var_170
  loc_6EF1D4: LitVar_Missing var_150
  loc_6EF1D7: LitVar_Missing var_130
  loc_6EF1DA: LitVar_Missing var_110
  loc_6EF1DD: LitVar_Missing var_F0
  loc_6EF1E0: LitVar_Missing var_D0
  loc_6EF1E3: LitVar_Missing var_B0
  loc_6EF1E6: LitStr "&Cancelar"
  loc_6EF1E9: FStStrCopy var_90
  loc_6EF1EC: FLdRfVar var_90
  loc_6EF1EF: LitI4 &H17
  loc_6EF1F4: PopTmpLdAdStr var_8C
  loc_6EF1F7: LitI2_Byte &H47
  loc_6EF1F9: PopTmpLdAd2 var_88
  loc_6EF1FC: ImpAdLdRf MemVar_74C7D0
  loc_6EF1FF: NewIfNullPr clsMsg
  loc_6EF202: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EF207: ILdRf var_1D4
  loc_6EF20A: FLdPrThis
  loc_6EF20B: VCallAd Control_ID_cmdCancelar
  loc_6EF20E: FStAdFunc var_1D8
  loc_6EF211: FLdPr var_1D8
  loc_6EF214: Me.Caption = from_stack_1
  loc_6EF219: FFreeStr var_90 = ""
  loc_6EF220: FFree1Ad var_1D8
  loc_6EF223: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF23A: FLdRfVar var_1D4
  loc_6EF23D: LitVar_Missing var_1D0
  loc_6EF240: LitVar_Missing var_1B0
  loc_6EF243: LitVar_Missing var_190
  loc_6EF246: LitVar_Missing var_170
  loc_6EF249: LitVar_Missing var_150
  loc_6EF24C: LitVar_Missing var_130
  loc_6EF24F: LitVar_Missing var_110
  loc_6EF252: LitVar_Missing var_F0
  loc_6EF255: LitVar_Missing var_D0
  loc_6EF258: LitVar_Missing var_B0
  loc_6EF25B: LitStr "&Aceptar"
  loc_6EF25E: FStStrCopy var_90
  loc_6EF261: FLdRfVar var_90
  loc_6EF264: LitI4 &H18
  loc_6EF269: PopTmpLdAdStr var_8C
  loc_6EF26C: LitI2_Byte &H47
  loc_6EF26E: PopTmpLdAd2 var_88
  loc_6EF271: ImpAdLdRf MemVar_74C7D0
  loc_6EF274: NewIfNullPr clsMsg
  loc_6EF277: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EF27C: ILdRf var_1D4
  loc_6EF27F: FLdPrThis
  loc_6EF280: VCallAd Control_ID_cmdAceptar
  loc_6EF283: FStAdFunc var_1D8
  loc_6EF286: FLdPr var_1D8
  loc_6EF289: Me.Caption = from_stack_1
  loc_6EF28E: FFreeStr var_90 = ""
  loc_6EF295: FFree1Ad var_1D8
  loc_6EF298: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EF2AF: LitI2_Byte 0
  loc_6EF2B1: FLdRfVar var_86
  loc_6EF2B4: LitI2_Byte &HF
  loc_6EF2B6: ForI2 var_1E0
  loc_6EF2BC: LitI4 1
  loc_6EF2C1: ImpAdLdI4 MemVar_74BEB0
  loc_6EF2C4: LitStr "<"
  loc_6EF2C7: FLdI2 var_86
  loc_6EF2CA: LitI2_Byte 1
  loc_6EF2CC: AddI2
  loc_6EF2CD: CStrUI1
  loc_6EF2CF: FStStrNoPop var_90
  loc_6EF2D2: ConcatStr
  loc_6EF2D3: FStStrNoPop var_1D4
  loc_6EF2D6: LitStr ">"
  loc_6EF2D9: ConcatStr
  loc_6EF2DA: FStStrNoPop var_1E4
  loc_6EF2DD: LitI4 0
  loc_6EF2E2: FnInStr4
  loc_6EF2E4: LitI4 0
  loc_6EF2E9: GtI4
  loc_6EF2EA: FFreeStr var_90 = "": var_1D4 = ""
  loc_6EF2F3: BranchF loc_6EF31C
  loc_6EF2F6: LitI2_Byte 1
  loc_6EF2F8: FLdRfVar var_1DC
  loc_6EF2FB: FLdI2 var_86
  loc_6EF2FE: FLdPrThis
  loc_6EF2FF: VCallAd Control_ID_chkSeccionesTurno
  loc_6EF302: FStAdFunc var_1D8
  loc_6EF305: FLdPr var_1D8
  loc_6EF308: Set from_stack_2 = Me(from_stack_1)
  loc_6EF30D: FLdPr var_1DC
  loc_6EF310: Me.Value = from_stack_1
  loc_6EF315: FFreeAd var_1D8 = ""
  loc_6EF31C: LitI4 1
  loc_6EF321: ImpAdLdI4 MemVar_74BEB4
  loc_6EF324: LitStr "<"
  loc_6EF327: FLdI2 var_86
  loc_6EF32A: LitI2_Byte 1
  loc_6EF32C: AddI2
  loc_6EF32D: CStrUI1
  loc_6EF32F: FStStrNoPop var_90
  loc_6EF332: ConcatStr
  loc_6EF333: FStStrNoPop var_1D4
  loc_6EF336: LitStr ">"
  loc_6EF339: ConcatStr
  loc_6EF33A: FStStrNoPop var_1E4
  loc_6EF33D: LitI4 0
  loc_6EF342: FnInStr4
  loc_6EF344: LitI4 0
  loc_6EF349: GtI4
  loc_6EF34A: FFreeStr var_90 = "": var_1D4 = ""
  loc_6EF353: BranchF loc_6EF37C
  loc_6EF356: LitI2_Byte 1
  loc_6EF358: FLdRfVar var_1DC
  loc_6EF35B: FLdI2 var_86
  loc_6EF35E: FLdPrThis
  loc_6EF35F: VCallAd Control_ID_chkSeccionesDia
  loc_6EF362: FStAdFunc var_1D8
  loc_6EF365: FLdPr var_1D8
  loc_6EF368: Set from_stack_2 = Me(from_stack_1)
  loc_6EF36D: FLdPr var_1DC
  loc_6EF370: Me.Value = from_stack_1
  loc_6EF375: FFreeAd var_1D8 = ""
  loc_6EF37C: LitI4 1
  loc_6EF381: ImpAdLdI4 MemVar_74BEB8
  loc_6EF384: LitStr "<"
  loc_6EF387: FLdI2 var_86
  loc_6EF38A: LitI2_Byte 1
  loc_6EF38C: AddI2
  loc_6EF38D: CStrUI1
  loc_6EF38F: FStStrNoPop var_90
  loc_6EF392: ConcatStr
  loc_6EF393: FStStrNoPop var_1D4
  loc_6EF396: LitStr ">"
  loc_6EF399: ConcatStr
  loc_6EF39A: FStStrNoPop var_1E4
  loc_6EF39D: LitI4 0
  loc_6EF3A2: FnInStr4
  loc_6EF3A4: LitI4 0
  loc_6EF3A9: GtI4
  loc_6EF3AA: FFreeStr var_90 = "": var_1D4 = ""
  loc_6EF3B3: BranchF loc_6EF3DC
  loc_6EF3B6: LitI2_Byte 1
  loc_6EF3B8: FLdRfVar var_1DC
  loc_6EF3BB: FLdI2 var_86
  loc_6EF3BE: FLdPrThis
  loc_6EF3BF: VCallAd Control_ID_chkSeccionesMes
  loc_6EF3C2: FStAdFunc var_1D8
  loc_6EF3C5: FLdPr var_1D8
  loc_6EF3C8: Set from_stack_2 = Me(from_stack_1)
  loc_6EF3CD: FLdPr var_1DC
  loc_6EF3D0: Me.Value = from_stack_1
  loc_6EF3D5: FFreeAd var_1D8 = ""
  loc_6EF3DC: FLdRfVar var_86
  loc_6EF3DF: NextI2 var_1E0, loc_6EF2BC
  loc_6EF3E4: LitI4 1
  loc_6EF3E9: ImpAdLdI4 MemVar_74BEB0
  loc_6EF3EC: LitStr "<20>"
  loc_6EF3EF: LitI4 0
  loc_6EF3F4: FnInStr4
  loc_6EF3F6: LitI4 0
  loc_6EF3FB: GtI4
  loc_6EF3FC: BranchF loc_6EF424
  loc_6EF3FF: LitI2_Byte 1
  loc_6EF401: FLdRfVar var_1DC
  loc_6EF404: LitI2_Byte &H10
  loc_6EF406: FLdPrThis
  loc_6EF407: VCallAd Control_ID_chkSeccionesTurno
  loc_6EF40A: FStAdFunc var_1D8
  loc_6EF40D: FLdPr var_1D8
  loc_6EF410: Set from_stack_2 = Me(from_stack_1)
  loc_6EF415: FLdPr var_1DC
  loc_6EF418: Me.Value = from_stack_1
  loc_6EF41D: FFreeAd var_1D8 = ""
  loc_6EF424: LitI4 1
  loc_6EF429: ImpAdLdI4 MemVar_74BEB4
  loc_6EF42C: LitStr "<20>"
  loc_6EF42F: LitI4 0
  loc_6EF434: FnInStr4
  loc_6EF436: LitI4 0
  loc_6EF43B: GtI4
  loc_6EF43C: BranchF loc_6EF464
  loc_6EF43F: LitI2_Byte 1
  loc_6EF441: FLdRfVar var_1DC
  loc_6EF444: LitI2_Byte &H10
  loc_6EF446: FLdPrThis
  loc_6EF447: VCallAd Control_ID_chkSeccionesDia
  loc_6EF44A: FStAdFunc var_1D8
  loc_6EF44D: FLdPr var_1D8
  loc_6EF450: Set from_stack_2 = Me(from_stack_1)
  loc_6EF455: FLdPr var_1DC
  loc_6EF458: Me.Value = from_stack_1
  loc_6EF45D: FFreeAd var_1D8 = ""
  loc_6EF464: LitI4 1
  loc_6EF469: ImpAdLdI4 MemVar_74BEB8
  loc_6EF46C: LitStr "<20>"
  loc_6EF46F: LitI4 0
  loc_6EF474: FnInStr4
  loc_6EF476: LitI4 0
  loc_6EF47B: GtI4
  loc_6EF47C: BranchF loc_6EF4A4
  loc_6EF47F: LitI2_Byte 1
  loc_6EF481: FLdRfVar var_1DC
  loc_6EF484: LitI2_Byte &H10
  loc_6EF486: FLdPrThis
  loc_6EF487: VCallAd Control_ID_chkSeccionesMes
  loc_6EF48A: FStAdFunc var_1D8
  loc_6EF48D: FLdPr var_1D8
  loc_6EF490: Set from_stack_2 = Me(from_stack_1)
  loc_6EF495: FLdPr var_1DC
  loc_6EF498: Me.Value = from_stack_1
  loc_6EF49D: FFreeAd var_1D8 = ""
  loc_6EF4A4: LitVarI2 var_B0, 1
  loc_6EF4A9: LitI4 4
  loc_6EF4AE: ImpAdLdRf MemVar_74BEAC
  loc_6EF4B1: CVarRef
  loc_6EF4B6: FLdRfVar var_D0
  loc_6EF4B9: ImpAdCallFPR4  = Mid(, , )
  loc_6EF4BE: FLdRfVar var_D0
  loc_6EF4C1: LitVarStr var_E0, "1"
  loc_6EF4C6: HardType
  loc_6EF4C7: EqVarBool
  loc_6EF4C9: FFreeVar var_B0 = ""
  loc_6EF4D0: BranchF loc_6EF4D8
  loc_6EF4D3: from_stack_1v = Proc_23_6_62B430()
  loc_6EF4D8: ExitProcHresult
End Sub

Private Function Proc_23_3_62CE90(arg_C) '62CE90
  'Data Table: 420590
  loc_62CCEC: ZeroRetVal
  loc_62CCEE: LitStr vbNullString
  loc_62CCF1: FStStrCopy var_8C
  loc_62CCF4: ImpAdLdUI1
  loc_62CCF8: CI2UI1
  loc_62CCFA: LitI2_Byte 4
  loc_62CCFC: EqI2
  loc_62CCFD: NotI4
  loc_62CCFE: ImpAdLdUI1
  loc_62CD02: CI2UI1
  loc_62CD04: LitI2_Byte 5
  loc_62CD06: EqI2
  loc_62CD07: NotI4
  loc_62CD08: AndI4
  loc_62CD09: BranchF loc_62CD18
  loc_62CD0C: ILdRf var_8C
  loc_62CD0F: FStStrCopy var_88
  loc_62CD12: ExitProcCbHresult
  loc_62CD18: ILdI2 arg_C
  loc_62CD1B: FStI2 var_8E
  loc_62CD1E: FLdI2 var_8E
  loc_62CD21: LitI2_Byte 1
  loc_62CD23: EqI2
  loc_62CD24: BranchF loc_62CD46
  loc_62CD27: LitStr "<"
  loc_62CD2A: LitI2_Byte &H64
  loc_62CD2C: CStrUI1
  loc_62CD2E: FStStrNoPop var_94
  loc_62CD31: ConcatStr
  loc_62CD32: FStStrNoPop var_98
  loc_62CD35: LitStr ">"
  loc_62CD38: ConcatStr
  loc_62CD39: FStStr var_8C
  loc_62CD3C: FFreeStr var_94 = ""
  loc_62CD43: Branch loc_62CE83
  loc_62CD46: FLdI2 var_8E
  loc_62CD49: LitI2_Byte 2
  loc_62CD4B: EqI2
  loc_62CD4C: BranchF loc_62CD6E
  loc_62CD4F: LitStr "<"
  loc_62CD52: LitI2_Byte &H65
  loc_62CD54: CStrUI1
  loc_62CD56: FStStrNoPop var_94
  loc_62CD59: ConcatStr
  loc_62CD5A: FStStrNoPop var_98
  loc_62CD5D: LitStr ">"
  loc_62CD60: ConcatStr
  loc_62CD61: FStStr var_8C
  loc_62CD64: FFreeStr var_94 = ""
  loc_62CD6B: Branch loc_62CE83
  loc_62CD6E: FLdI2 var_8E
  loc_62CD71: LitI2_Byte 3
  loc_62CD73: EqI2
  loc_62CD74: BranchF loc_62CD96
  loc_62CD77: LitStr "<"
  loc_62CD7A: LitI2_Byte &H66
  loc_62CD7C: CStrUI1
  loc_62CD7E: FStStrNoPop var_94
  loc_62CD81: ConcatStr
  loc_62CD82: FStStrNoPop var_98
  loc_62CD85: LitStr ">"
  loc_62CD88: ConcatStr
  loc_62CD89: FStStr var_8C
  loc_62CD8C: FFreeStr var_94 = ""
  loc_62CD93: Branch loc_62CE83
  loc_62CD96: FLdI2 var_8E
  loc_62CD99: LitI2_Byte 4
  loc_62CD9B: EqI2
  loc_62CD9C: BranchF loc_62CDBE
  loc_62CD9F: LitStr "<"
  loc_62CDA2: LitI2_Byte &H67
  loc_62CDA4: CStrUI1
  loc_62CDA6: FStStrNoPop var_94
  loc_62CDA9: ConcatStr
  loc_62CDAA: FStStrNoPop var_98
  loc_62CDAD: LitStr ">"
  loc_62CDB0: ConcatStr
  loc_62CDB1: FStStr var_8C
  loc_62CDB4: FFreeStr var_94 = ""
  loc_62CDBB: Branch loc_62CE83
  loc_62CDBE: FLdI2 var_8E
  loc_62CDC1: LitI2_Byte 6
  loc_62CDC3: EqI2
  loc_62CDC4: BranchF loc_62CDE6
  loc_62CDC7: LitStr "<"
  loc_62CDCA: LitI2_Byte &H68
  loc_62CDCC: CStrUI1
  loc_62CDCE: FStStrNoPop var_94
  loc_62CDD1: ConcatStr
  loc_62CDD2: FStStrNoPop var_98
  loc_62CDD5: LitStr ">"
  loc_62CDD8: ConcatStr
  loc_62CDD9: FStStr var_8C
  loc_62CDDC: FFreeStr var_94 = ""
  loc_62CDE3: Branch loc_62CE83
  loc_62CDE6: FLdI2 var_8E
  loc_62CDE9: LitI2_Byte 7
  loc_62CDEB: EqI2
  loc_62CDEC: BranchF loc_62CE0E
  loc_62CDEF: LitStr "<"
  loc_62CDF2: LitI2_Byte &H69
  loc_62CDF4: CStrUI1
  loc_62CDF6: FStStrNoPop var_94
  loc_62CDF9: ConcatStr
  loc_62CDFA: FStStrNoPop var_98
  loc_62CDFD: LitStr ">"
  loc_62CE00: ConcatStr
  loc_62CE01: FStStr var_8C
  loc_62CE04: FFreeStr var_94 = ""
  loc_62CE0B: Branch loc_62CE83
  loc_62CE0E: FLdI2 var_8E
  loc_62CE11: LitI2_Byte 8
  loc_62CE13: EqI2
  loc_62CE14: BranchF loc_62CE36
  loc_62CE17: LitStr "<"
  loc_62CE1A: LitI2_Byte &H6A
  loc_62CE1C: CStrUI1
  loc_62CE1E: FStStrNoPop var_94
  loc_62CE21: ConcatStr
  loc_62CE22: FStStrNoPop var_98
  loc_62CE25: LitStr ">"
  loc_62CE28: ConcatStr
  loc_62CE29: FStStr var_8C
  loc_62CE2C: FFreeStr var_94 = ""
  loc_62CE33: Branch loc_62CE83
  loc_62CE36: FLdI2 var_8E
  loc_62CE39: LitI2_Byte 9
  loc_62CE3B: EqI2
  loc_62CE3C: BranchF loc_62CE5E
  loc_62CE3F: LitStr "<"
  loc_62CE42: LitI2_Byte &H6B
  loc_62CE44: CStrUI1
  loc_62CE46: FStStrNoPop var_94
  loc_62CE49: ConcatStr
  loc_62CE4A: FStStrNoPop var_98
  loc_62CE4D: LitStr ">"
  loc_62CE50: ConcatStr
  loc_62CE51: FStStr var_8C
  loc_62CE54: FFreeStr var_94 = ""
  loc_62CE5B: Branch loc_62CE83
  loc_62CE5E: FLdI2 var_8E
  loc_62CE61: LitI2_Byte &H10
  loc_62CE63: EqI2
  loc_62CE64: BranchF loc_62CE83
  loc_62CE67: LitStr "<"
  loc_62CE6A: LitI2_Byte &H6C
  loc_62CE6C: CStrUI1
  loc_62CE6E: FStStrNoPop var_94
  loc_62CE71: ConcatStr
  loc_62CE72: FStStrNoPop var_98
  loc_62CE75: LitStr ">"
  loc_62CE78: ConcatStr
  loc_62CE79: FStStr var_8C
  loc_62CE7C: FFreeStr var_94 = ""
  loc_62CE83: ILdRf var_8C
  loc_62CE86: FStStrCopy var_88
  loc_62CE89: ExitProcCbHresult
End Function

Private Function Proc_23_4_60EAD8() '60EAD8
  'Data Table: 420590
  loc_60E9D4: FLdRfVar var_96
  loc_60E9D7: FLdRfVar var_94
  loc_60E9DA: FLdRfVar var_8A
  loc_60E9DD: FLdPrThis
  loc_60E9DE: VCallAd Control_ID_chkSeccionesTurno
  loc_60E9E1: FStAdFunc var_88
  loc_60E9E4: FLdPr var_88
  loc_60E9E7: Call 0.Method_Proc_23_4_60EAD8C ()
  loc_60E9EC: FLdI2 var_8A
  loc_60E9EF: LitI2_Byte 1
  loc_60E9F1: SubI2
  loc_60E9F2: FLdPrThis
  loc_60E9F3: VCallAd Control_ID_chkSeccionesTurno
  loc_60E9F6: FStAdFunc var_90
  loc_60E9F9: FLdPr var_90
  loc_60E9FC: Set from_stack_2 = Me(from_stack_1)
  loc_60EA01: FLdPr var_94
  loc_60EA04:  = Me.Value
  loc_60EA09: FLdI2 var_96
  loc_60EA0C: CI4UI1
  loc_60EA0D: LitI4 1
  loc_60EA12: EqI4
  loc_60EA13: FFreeAd var_88 = "": var_90 = ""
  loc_60EA1C: BranchF loc_60EA2A
  loc_60EA1F: ImpAdLdI4 MemVar_74BEB0
  loc_60EA22: LitStr "<17>"
  loc_60EA25: ConcatStr
  loc_60EA26: ImpAdStStr MemVar_74BEB0
  loc_60EA2A: FLdRfVar var_96
  loc_60EA2D: FLdRfVar var_94
  loc_60EA30: FLdRfVar var_8A
  loc_60EA33: FLdPrThis
  loc_60EA34: VCallAd Control_ID_chkSeccionesMes
  loc_60EA37: FStAdFunc var_88
  loc_60EA3A: FLdPr var_88
  loc_60EA3D: Call 0.Method_Proc_23_4_60EAD8C ()
  loc_60EA42: FLdI2 var_8A
  loc_60EA45: LitI2_Byte 1
  loc_60EA47: SubI2
  loc_60EA48: FLdPrThis
  loc_60EA49: VCallAd Control_ID_chkSeccionesMes
  loc_60EA4C: FStAdFunc var_90
  loc_60EA4F: FLdPr var_90
  loc_60EA52: Set from_stack_2 = Me(from_stack_1)
  loc_60EA57: FLdPr var_94
  loc_60EA5A:  = Me.Value
  loc_60EA5F: FLdI2 var_96
  loc_60EA62: CI4UI1
  loc_60EA63: LitI4 1
  loc_60EA68: EqI4
  loc_60EA69: FFreeAd var_88 = "": var_90 = ""
  loc_60EA72: BranchF loc_60EA80
  loc_60EA75: ImpAdLdI4 MemVar_74BEB8
  loc_60EA78: LitStr "<17>"
  loc_60EA7B: ConcatStr
  loc_60EA7C: ImpAdStStr MemVar_74BEB8
  loc_60EA80: FLdRfVar var_96
  loc_60EA83: FLdRfVar var_94
  loc_60EA86: FLdRfVar var_8A
  loc_60EA89: FLdPrThis
  loc_60EA8A: VCallAd Control_ID_chkSeccionesDia
  loc_60EA8D: FStAdFunc var_88
  loc_60EA90: FLdPr var_88
  loc_60EA93: Call 0.Method_Proc_23_4_60EAD8C ()
  loc_60EA98: FLdI2 var_8A
  loc_60EA9B: LitI2_Byte 1
  loc_60EA9D: SubI2
  loc_60EA9E: FLdPrThis
  loc_60EA9F: VCallAd Control_ID_chkSeccionesDia
  loc_60EAA2: FStAdFunc var_90
  loc_60EAA5: FLdPr var_90
  loc_60EAA8: Set from_stack_2 = Me(from_stack_1)
  loc_60EAAD: FLdPr var_94
  loc_60EAB0:  = Me.Value
  loc_60EAB5: FLdI2 var_96
  loc_60EAB8: CI4UI1
  loc_60EAB9: LitI4 1
  loc_60EABE: EqI4
  loc_60EABF: FFreeAd var_88 = "": var_90 = ""
  loc_60EAC8: BranchF loc_60EAD6
  loc_60EACB: ImpAdLdI4 MemVar_74BEB4
  loc_60EACE: LitStr "<17>"
  loc_60EAD1: ConcatStr
  loc_60EAD2: ImpAdStStr MemVar_74BEB4
  loc_60EAD6: ExitProcHresult
End Function

Private Function Proc_23_5_63685C(arg_18) '63685C
  'Data Table: 420590
  loc_636658: LitI4 1
  loc_63665D: LitVarStr var_94, "0"
  loc_636662: PopAdLdVar
  loc_636663: LitStr "Dia"
  loc_636666: LitStr "Startup"
  loc_636669: LitStr "CEM44"
  loc_63666C: ImpAdCallI2 GetSetting(, , , )
  loc_636671: FStStrNoPop var_98
  loc_636674: LitStr "<17>"
  loc_636677: LitI4 0
  loc_63667C: FnInStr4
  loc_63667E: CBoolI4
  loc_636680: FFree1Str var_98
  loc_636683: BranchF loc_6366C6
  loc_636686: LitI2_Byte 1
  loc_636688: FLdRfVar var_A8
  loc_63668B: FLdRfVar var_9E
  loc_63668E: FLdPrThis
  loc_63668F: VCallAd Control_ID_chkSeccionesDia
  loc_636692: FStAdFunc var_9C
  loc_636695: FLdPr var_9C
  loc_636698: Call 0.Method_Proc_23_5_63685CC ()
  loc_63669D: FLdI2 var_9E
  loc_6366A0: LitI2_Byte 1
  loc_6366A2: SubI2
  loc_6366A3: FLdPrThis
  loc_6366A4: VCallAd Control_ID_chkSeccionesDia
  loc_6366A7: FStAdFunc var_A4
  loc_6366AA: FLdPr var_A4
  loc_6366AD: Set from_stack_2 = Me(from_stack_1)
  loc_6366B2: FLdPr var_A8
  loc_6366B5: Me.Value = from_stack_1
  loc_6366BA: FFreeAd var_9C = "": var_A4 = ""
  loc_6366C3: Branch loc_636703
  loc_6366C6: LitI2_Byte 0
  loc_6366C8: FLdRfVar var_A8
  loc_6366CB: FLdRfVar var_9E
  loc_6366CE: FLdPrThis
  loc_6366CF: VCallAd Control_ID_chkSeccionesDia
  loc_6366D2: FStAdFunc var_9C
  loc_6366D5: FLdPr var_9C
  loc_6366D8: Call 0.Method_Proc_23_5_63685CC ()
  loc_6366DD: FLdI2 var_9E
  loc_6366E0: LitI2_Byte 1
  loc_6366E2: SubI2
  loc_6366E3: FLdPrThis
  loc_6366E4: VCallAd Control_ID_chkSeccionesDia
  loc_6366E7: FStAdFunc var_A4
  loc_6366EA: FLdPr var_A4
  loc_6366ED: Set from_stack_2 = Me(from_stack_1)
  loc_6366F2: FLdPr var_A8
  loc_6366F5: Me.Value = from_stack_1
  loc_6366FA: FFreeAd var_9C = "": var_A4 = ""
  loc_636703: LitI4 1
  loc_636708: LitVarStr var_94, "0"
  loc_63670D: PopAdLdVar
  loc_63670E: LitStr "Turno"
  loc_636711: LitStr "Startup"
  loc_636714: LitStr "CEM44"
  loc_636717: ImpAdCallI2 GetSetting(, , , )
  loc_63671C: FStStrNoPop var_98
  loc_63671F: LitStr "<17>"
  loc_636722: LitI4 0
  loc_636727: FnInStr4
  loc_636729: CBoolI4
  loc_63672B: FFree1Str var_98
  loc_63672E: BranchF loc_636771
  loc_636731: LitI2_Byte 1
  loc_636733: FLdRfVar var_A8
  loc_636736: FLdRfVar var_9E
  loc_636739: FLdPrThis
  loc_63673A: VCallAd Control_ID_chkSeccionesTurno
  loc_63673D: FStAdFunc var_9C
  loc_636740: FLdPr var_9C
  loc_636743: Call 0.Method_Proc_23_5_63685CC ()
  loc_636748: FLdI2 var_9E
  loc_63674B: LitI2_Byte 1
  loc_63674D: SubI2
  loc_63674E: FLdPrThis
  loc_63674F: VCallAd Control_ID_chkSeccionesTurno
  loc_636752: FStAdFunc var_A4
  loc_636755: FLdPr var_A4
  loc_636758: Set from_stack_2 = Me(from_stack_1)
  loc_63675D: FLdPr var_A8
  loc_636760: Me.Value = from_stack_1
  loc_636765: FFreeAd var_9C = "": var_A4 = ""
  loc_63676E: Branch loc_6367AE
  loc_636771: LitI2_Byte 0
  loc_636773: FLdRfVar var_A8
  loc_636776: FLdRfVar var_9E
  loc_636779: FLdPrThis
  loc_63677A: VCallAd Control_ID_chkSeccionesTurno
  loc_63677D: FStAdFunc var_9C
  loc_636780: FLdPr var_9C
  loc_636783: Call 0.Method_Proc_23_5_63685CC ()
  loc_636788: FLdI2 var_9E
  loc_63678B: LitI2_Byte 1
  loc_63678D: SubI2
  loc_63678E: FLdPrThis
  loc_63678F: VCallAd Control_ID_chkSeccionesTurno
  loc_636792: FStAdFunc var_A4
  loc_636795: FLdPr var_A4
  loc_636798: Set from_stack_2 = Me(from_stack_1)
  loc_63679D: FLdPr var_A8
  loc_6367A0: Me.Value = from_stack_1
  loc_6367A5: FFreeAd var_9C = "": var_A4 = ""
  loc_6367AE: LitI4 1
  loc_6367B3: LitVarStr var_94, "0"
  loc_6367B8: PopAdLdVar
  loc_6367B9: LitStr "Mes"
  loc_6367BC: LitStr "Startup"
  loc_6367BF: LitStr "CEM44"
  loc_6367C2: ImpAdCallI2 GetSetting(, , , )
  loc_6367C7: FStStrNoPop var_98
  loc_6367CA: LitStr "<17>"
  loc_6367CD: LitI4 0
  loc_6367D2: FnInStr4
  loc_6367D4: CBoolI4
  loc_6367D6: FFree1Str var_98
  loc_6367D9: BranchF loc_63681C
  loc_6367DC: LitI2_Byte 1
  loc_6367DE: FLdRfVar var_A8
  loc_6367E1: FLdRfVar var_9E
  loc_6367E4: FLdPrThis
  loc_6367E5: VCallAd Control_ID_chkSeccionesMes
  loc_6367E8: FStAdFunc var_9C
  loc_6367EB: FLdPr var_9C
  loc_6367EE: Call 0.Method_Proc_23_5_63685CC ()
  loc_6367F3: FLdI2 var_9E
  loc_6367F6: LitI2_Byte 1
  loc_6367F8: SubI2
  loc_6367F9: FLdPrThis
  loc_6367FA: VCallAd Control_ID_chkSeccionesMes
  loc_6367FD: FStAdFunc var_A4
  loc_636800: FLdPr var_A4
  loc_636803: Set from_stack_2 = Me(from_stack_1)
  loc_636808: FLdPr var_A8
  loc_63680B: Me.Value = from_stack_1
  loc_636810: FFreeAd var_9C = "": var_A4 = ""
  loc_636819: Branch loc_636859
  loc_63681C: LitI2_Byte 0
  loc_63681E: FLdRfVar var_A8
  loc_636821: FLdRfVar var_9E
  loc_636824: FLdPrThis
  loc_636825: VCallAd Control_ID_chkSeccionesMes
  loc_636828: FStAdFunc var_9C
  loc_63682B: FLdPr var_9C
  loc_63682E: Call 0.Method_Proc_23_5_63685CC ()
  loc_636833: FLdI2 var_9E
  loc_636836: LitI2_Byte 1
  loc_636838: SubI2
  loc_636839: FLdPrThis
  loc_63683A: VCallAd Control_ID_chkSeccionesMes
  loc_63683D: FStAdFunc var_A4
  loc_636840: FLdPr var_A4
  loc_636843: Set from_stack_2 = Me(from_stack_1)
  loc_636848: FLdPr var_A8
  loc_63684B: Me.Value = from_stack_1
  loc_636850: FFreeAd var_9C = "": var_A4 = ""
  loc_636859: ExitProcHresult
  loc_63685A: FStAdFunc arg_1800
End Function

Private Function Proc_23_6_62B430() '62B430
  'Data Table: 420590
  loc_62B2A4: LitI2_Byte 0
  loc_62B2A6: CUI1I2
  loc_62B2A8: FLdRfVar var_86
  loc_62B2AB: FLdRfVar var_8E
  loc_62B2AE: FLdPrThis
  loc_62B2AF: VCallAd Control_ID_chkSeccionesTurno
  loc_62B2B2: FStAdFunc var_8C
  loc_62B2B5: FLdPr var_8C
  loc_62B2B8: Call 0.Method_Proc_23_6_62B430C ()
  loc_62B2BD: FLdI2 var_8E
  loc_62B2C0: LitI2_Byte 1
  loc_62B2C2: SubI2
  loc_62B2C3: CUI1I2
  loc_62B2C5: FFree1Ad var_8C
  loc_62B2C8: ForUI1 var_92
  loc_62B2CE: LitVarI2 var_C4, 1
  loc_62B2D3: LitI4 4
  loc_62B2D8: ImpAdLdRf MemVar_74BEAC
  loc_62B2DB: CVarRef
  loc_62B2E0: FLdRfVar var_D4
  loc_62B2E3: ImpAdCallFPR4  = Mid(, , )
  loc_62B2E8: FLdRfVar var_D4
  loc_62B2EB: LitVarStr var_E4, "1"
  loc_62B2F0: HardType
  loc_62B2F1: EqVar var_F4
  loc_62B2F5: FLdUI1
  loc_62B2F9: CI2UI1
  loc_62B2FB: LitI2_Byte 0
  loc_62B2FD: GtI2
  loc_62B2FE: CVarBoolI2 var_104
  loc_62B302: AndVar var_114
  loc_62B306: CBoolVarNull
  loc_62B308: FFreeVar var_C4 = "": var_D4 = ""
  loc_62B311: BranchF loc_62B419
  loc_62B314: FLdRfVar var_11C
  loc_62B317: FLdRfVar var_118
  loc_62B31A: FLdUI1
  loc_62B31E: CI2UI1
  loc_62B320: FLdPrThis
  loc_62B321: VCallAd Control_ID_chkSeccionesDia
  loc_62B324: FStAdFunc var_8C
  loc_62B327: FLdPr var_8C
  loc_62B32A: Set from_stack_2 = Me(from_stack_1)
  loc_62B32F: FLdPr var_118
  loc_62B332:  = Me.Top
  loc_62B337: FLdFPR4 var_11C
  loc_62B33A: LitI2 360
  loc_62B33D: CR8I2
  loc_62B33E: AddR8
  loc_62B33F: PopFPR4
  loc_62B340: FLdRfVar var_124
  loc_62B343: FLdUI1
  loc_62B347: CI2UI1
  loc_62B349: FLdPrThis
  loc_62B34A: VCallAd Control_ID_chkSeccionesDia
  loc_62B34D: FStAdFunc var_120
  loc_62B350: FLdPr var_120
  loc_62B353: Set from_stack_2 = Me(from_stack_1)
  loc_62B358: FLdPr var_124
  loc_62B35B: Me.Top = from_stack_1s
  loc_62B360: FFreeAd var_8C = "": var_118 = "": var_120 = ""
  loc_62B36B: FLdRfVar var_11C
  loc_62B36E: FLdRfVar var_118
  loc_62B371: FLdUI1
  loc_62B375: CI2UI1
  loc_62B377: FLdPrThis
  loc_62B378: VCallAd Control_ID_chkSeccionesTurno
  loc_62B37B: FStAdFunc var_8C
  loc_62B37E: FLdPr var_8C
  loc_62B381: Set from_stack_2 = Me(from_stack_1)
  loc_62B386: FLdPr var_118
  loc_62B389:  = Me.Top
  loc_62B38E: FLdFPR4 var_11C
  loc_62B391: LitI2 360
  loc_62B394: CR8I2
  loc_62B395: AddR8
  loc_62B396: PopFPR4
  loc_62B397: FLdRfVar var_124
  loc_62B39A: FLdUI1
  loc_62B39E: CI2UI1
  loc_62B3A0: FLdPrThis
  loc_62B3A1: VCallAd Control_ID_chkSeccionesTurno
  loc_62B3A4: FStAdFunc var_120
  loc_62B3A7: FLdPr var_120
  loc_62B3AA: Set from_stack_2 = Me(from_stack_1)
  loc_62B3AF: FLdPr var_124
  loc_62B3B2: Me.Top = from_stack_1s
  loc_62B3B7: FFreeAd var_8C = "": var_118 = "": var_120 = ""
  loc_62B3C2: FLdRfVar var_11C
  loc_62B3C5: FLdRfVar var_118
  loc_62B3C8: FLdUI1
  loc_62B3CC: CI2UI1
  loc_62B3CE: FLdPrThis
  loc_62B3CF: VCallAd Control_ID_chkSeccionesMes
  loc_62B3D2: FStAdFunc var_8C
  loc_62B3D5: FLdPr var_8C
  loc_62B3D8: Set from_stack_2 = Me(from_stack_1)
  loc_62B3DD: FLdPr var_118
  loc_62B3E0:  = Me.Top
  loc_62B3E5: FLdFPR4 var_11C
  loc_62B3E8: LitI2 360
  loc_62B3EB: CR8I2
  loc_62B3EC: AddR8
  loc_62B3ED: PopFPR4
  loc_62B3EE: FLdRfVar var_124
  loc_62B3F1: FLdUI1
  loc_62B3F5: CI2UI1
  loc_62B3F7: FLdPrThis
  loc_62B3F8: VCallAd Control_ID_chkSeccionesMes
  loc_62B3FB: FStAdFunc var_120
  loc_62B3FE: FLdPr var_120
  loc_62B401: Set from_stack_2 = Me(from_stack_1)
  loc_62B406: FLdPr var_124
  loc_62B409: Me.Top = from_stack_1s
  loc_62B40E: FFreeAd var_8C = "": var_118 = "": var_120 = ""
  loc_62B419: FLdRfVar var_86
  loc_62B41C: NextUI1
  loc_62B422: from_stack_1v = Proc_23_7_5E9124()
  loc_62B427: from_stack_2v = Proc_23_5_63685C(from_stack_1v)
  loc_62B42C: ExitProcHresult
End Function

Private Function Proc_23_7_5E9124() '5E9124
  'Data Table: 420590
  loc_5E90A8: FLdPrThis
  loc_5E90A9: VCallAd Control_ID_chkSeccionesDia
  loc_5E90AC: FStAdFunc var_90
  loc_5E90AF: LitStr vbNullString
  loc_5E90B2: FStStrCopy var_8C
  loc_5E90B5: FLdRfVar var_8C
  loc_5E90B8: FLdZeroAd var_90
  loc_5E90BB: FStAdFunc var_88
  loc_5E90BE: FLdRfVar var_88
  loc_5E90C1: from_stack_2v = Proc_23_8_623860(from_stack_1v)
  loc_5E90C6: FFree1Str var_8C
  loc_5E90C9: FFreeAd var_88 = ""
  loc_5E90D0: FLdPrThis
  loc_5E90D1: VCallAd Control_ID_chkSeccionesMes
  loc_5E90D4: FStAdFunc var_90
  loc_5E90D7: LitStr "Ventas Asociadas a Tarjeta Contado"
  loc_5E90DA: FStStrCopy var_8C
  loc_5E90DD: FLdRfVar var_8C
  loc_5E90E0: FLdZeroAd var_90
  loc_5E90E3: FStAdFunc var_88
  loc_5E90E6: FLdRfVar var_88
  loc_5E90E9: from_stack_2v = Proc_23_8_623860(from_stack_1v)
  loc_5E90EE: FFree1Str var_8C
  loc_5E90F1: FFreeAd var_88 = ""
  loc_5E90F8: FLdPrThis
  loc_5E90F9: VCallAd Control_ID_chkSeccionesTurno
  loc_5E90FC: FStAdFunc var_90
  loc_5E90FF: LitStr vbNullString
  loc_5E9102: FStStrCopy var_8C
  loc_5E9105: FLdRfVar var_8C
  loc_5E9108: FLdZeroAd var_90
  loc_5E910B: FStAdFunc var_88
  loc_5E910E: FLdRfVar var_88
  loc_5E9111: from_stack_2v = Proc_23_8_623860(from_stack_1v)
  loc_5E9116: FFree1Str var_8C
  loc_5E9119: FFreeAd var_88 = ""
  loc_5E9120: ExitProcHresult
End Function

Private Function Proc_23_8_623860(arg_10) '623860
  'Data Table: 420590
  loc_623710: ILdPr
  loc_623713: LateMemLdVar
  loc_623718: PopAdLdVar
  loc_623719: ILdPr
  loc_62371C: LateIdCallLdVar
  loc_623726: CAdVar
  loc_623728: FStAdNoPop
  loc_62372C: ImpAdLdRf MemVar_7520D4
  loc_62372F: NewIfNullPr Global
  loc_623732: Global.Load from_stack_1
  loc_623737: FFree1Ad var_A8
  loc_62373A: FFreeVar var_94 = ""
  loc_623741: LitVar_TRUE var_C8
  loc_623744: PopAdLdVar
  loc_623745: ILdPr
  loc_623748: LateMemLdVar
  loc_62374D: LitVarI2 var_B8, 1
  loc_623752: SubVar var_A4
  loc_623756: PopAdLdVar
  loc_623757: ILdPr
  loc_62375A: LateIdCallLdVar
  loc_623764: LdPrVar
  loc_623766: LateMemSt
  loc_62376A: FFreeVar var_94 = ""
  loc_623771: LitVarI2 var_B8, 0
  loc_623776: PopAdLdVar
  loc_623777: ILdPr
  loc_62377A: LateIdCallLdVar
  loc_623784: LdPrVar
  loc_623786: LateMemLdVar
  loc_62378B: PopAdLdVar
  loc_62378C: ILdPr
  loc_62378F: LateMemLdVar
  loc_623794: LitVarI2 var_C8, 1
  loc_623799: SubVar var_E8
  loc_62379D: PopAdLdVar
  loc_62379E: ILdPr
  loc_6237A1: LateIdCallLdVar
  loc_6237AB: LdPrVar
  loc_6237AD: LateMemSt
  loc_6237B1: FFreeVar var_A4 = "": var_D8 = "": var_F8 = ""
  loc_6237BC: LitVarI2 var_B8, 0
  loc_6237C1: PopAdLdVar
  loc_6237C2: ILdPr
  loc_6237C5: LateIdCallLdVar
  loc_6237CF: LdPrVar
  loc_6237D1: LateMemLdVar
  loc_6237D6: LitVarI2 var_C8, 0
  loc_6237DB: PopAdLdVar
  loc_6237DC: ILdPr
  loc_6237DF: LateIdCallLdVar
  loc_6237E9: LdPrVar
  loc_6237EB: LateMemLdVar
  loc_6237F0: AddVar var_118
  loc_6237F4: PopAdLdVar
  loc_6237F5: ILdPr
  loc_6237F8: LateMemLdVar
  loc_6237FD: LitVarI2 var_128, 1
  loc_623802: SubVar var_148
  loc_623806: PopAdLdVar
  loc_623807: ILdPr
  loc_62380A: LateIdCallLdVar
  loc_623814: LdPrVar
  loc_623816: LateMemSt
  loc_62381A: FFreeVar var_A4 = "": var_E8 = "": var_F8 = "": var_108 = "": var_138 = "": var_118 = ""
  loc_62382B: ILdI4 arg_10
  loc_62382E: CVarStr var_C8
  loc_623831: PopAdLdVar
  loc_623832: ILdPr
  loc_623835: LateMemLdVar
  loc_62383A: LitVarI2 var_B8, 1
  loc_62383F: SubVar var_A4
  loc_623843: PopAdLdVar
  loc_623844: ILdPr
  loc_623847: LateIdCallLdVar
  loc_623851: LdPrVar
  loc_623853: LateMemSt
  loc_623857: FFreeVar var_94 = ""
  loc_62385E: ExitProcHresult
End Function
