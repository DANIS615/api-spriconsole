VERSION 5.00
Begin VB.Form frmParamsImpresionTabla
  Caption = "Impresion"
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
  ClientTop = 330
  ClientWidth = 7185
  ClientHeight = 4305
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.TextBox txtMMHasta
    Left = 3960
    Top = 2400
    Width = 2775
    Height = 375
    Text = "6000"
    TabIndex = 2
    Alignment = 1 'Right Justify
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
  Begin VB.TextBox txtMMDesde
    Left = 3960
    Top = 1920
    Width = 2775
    Height = 375
    Text = "0"
    TabIndex = 1
    Alignment = 1 'Right Justify
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
    Left = 5160
    Top = 3480
    Width = 1935
    Height = 615
    TabIndex = 4
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 3000
    Top = 3480
    Width = 1935
    Height = 615
    TabIndex = 3
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
  Begin VB.ComboBox cmbCalibradaDesde
    Style = 2
    Left = 3960
    Top = 1320
    Width = 2775
    Height = 450
    TabIndex = 0
    List = "frmParamsImpresionTabla.frx":0000
    ItemData = "frmParamsImpresionTabla.frx":001F
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
    Caption = "MM hasta :"
    Left = 120
    Top = 2400
    Width = 3615
    Height = 375
    TabIndex = 8
    Alignment = 1 'Right Justify
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
    Caption = "MM desde :"
    Left = 120
    Top = 1920
    Width = 3615
    Height = 375
    TabIndex = 7
    Alignment = 1 'Right Justify
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
    Caption = "Tabla Calibrada según:"
    Left = 120
    Top = 1440
    Width = 3615
    Height = 375
    TabIndex = 6
    Alignment = 1 'Right Justify
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
    Caption = "Impresion de Tablas de Tanque"
    Left = 480
    Top = 0
    Width = 5775
    Height = 615
    TabIndex = 5
    Alignment = 2 'Center
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
  Begin VB.Line Line1
    X1 = 240
    Y1 = 840
    X2 = 6720
    Y2 = 840
    BorderWidth = 3
  End
End

Attribute VB_Name = "frmParamsImpresionTabla"


Private Sub cmdCancelar_Click() '5D6530
  'Data Table: 41639C
  loc_5D650C: LitI2_Byte &HFF
  loc_5D650E: ImpAdLdRf MemVar_74D8EC
  loc_5D6511: NewIfNullPr frmControlTanques
  loc_5D6514: Call frmControlTanques.CancelaImpresionPut(from_stack_1v)
  loc_5D6519: ILdRf Me
  loc_5D651C: FStAdNoPop
  loc_5D6520: ImpAdLdRf MemVar_7520D4
  loc_5D6523: NewIfNullPr Global
  loc_5D6526: Global.Unload from_stack_1
  loc_5D652B: FFree1Ad var_88
  loc_5D652E: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '63B330
  'Data Table: 41639C
  loc_63B124: FLdRfVar var_94
  loc_63B127: FLdPrThis
  loc_63B128: VCallAd Control_ID_txtMMDesde
  loc_63B12B: FStAdFunc var_90
  loc_63B12E: FLdPr var_90
  loc_63B131:  = Me.Text
  loc_63B136: ILdRf var_94
  loc_63B139: ImpAdCallFPR4 push Val()
  loc_63B13E: FStFPR8 var_9C
  loc_63B141: FLdRfVar var_8C
  loc_63B144: FLdPrThis
  loc_63B145: VCallAd Control_ID_txtMMHasta
  loc_63B148: FStAdFunc var_88
  loc_63B14B: FLdPr var_88
  loc_63B14E:  = Me.Text
  loc_63B153: ILdRf var_8C
  loc_63B156: ImpAdCallFPR4 push Val()
  loc_63B15B: FLdFPR8 var_9C
  loc_63B15E: SubR4
  loc_63B15F: CR8R8
  loc_63B160: LitI2_Byte 2
  loc_63B162: CR8I2
  loc_63B163: LtR8
  loc_63B164: FFreeStr var_8C = ""
  loc_63B16B: FFreeAd var_88 = ""
  loc_63B172: BranchF loc_63B1B1
  loc_63B175: LitVar_Missing var_11C
  loc_63B178: LitVar_Missing var_FC
  loc_63B17B: LitVar_Missing var_DC
  loc_63B17E: LitI4 0
  loc_63B183: LitVarStr var_AC, "Los desde, hasta no corresponden"
  loc_63B188: FStVarCopyObj var_BC
  loc_63B18B: FLdRfVar var_BC
  loc_63B18E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63B193: FFreeVar var_BC = "": var_DC = "": var_FC = ""
  loc_63B19E: FLdPrThis
  loc_63B19F: VCallAd Control_ID_txtMMDesde
  loc_63B1A2: FStAdFunc var_88
  loc_63B1A5: FLdPr var_88
  loc_63B1A8: Me.SetFocus
  loc_63B1AD: FFree1Ad var_88
  loc_63B1B0: ExitProcHresult
  loc_63B1B1: FLdRfVar var_8C
  loc_63B1B4: FLdPrThis
  loc_63B1B5: VCallAd Control_ID_txtMMHasta
  loc_63B1B8: FStAdFunc var_88
  loc_63B1BB: FLdPr var_88
  loc_63B1BE:  = Me.Text
  loc_63B1C3: ILdRf var_8C
  loc_63B1C6: ImpAdCallFPR4 push Val()
  loc_63B1CB: FStFPR8 var_9C
  loc_63B1CE: FLdRfVar var_94
  loc_63B1D1: FLdPrThis
  loc_63B1D2: VCallAd Control_ID_txtMMDesde
  loc_63B1D5: FStAdFunc var_90
  loc_63B1D8: FLdPr var_90
  loc_63B1DB:  = Me.Text
  loc_63B1E0: ILdRf var_94
  loc_63B1E3: ImpAdCallFPR4 push Val()
  loc_63B1E8: FStFPR8 var_12C
  loc_63B1EB: LitVar_Missing var_11C
  loc_63B1EE: LitVar_Missing var_FC
  loc_63B1F1: LitVar_Missing var_DC
  loc_63B1F4: LitI4 1
  loc_63B1F9: LitStr "Se imprimirán aproximadamente "
  loc_63B1FC: FLdFPR8 var_9C
  loc_63B1FF: FLdFPR8 var_12C
  loc_63B202: SubR4
  loc_63B203: LitI2 150
  loc_63B206: CR8I2
  loc_63B207: DivR8
  loc_63B208: FnIntR8
  loc_63B20A: LitI2_Byte 1
  loc_63B20C: CR8I2
  loc_63B20D: AddR8
  loc_63B20E: CStrR8
  loc_63B210: FStStrNoPop var_120
  loc_63B213: ConcatStr
  loc_63B214: FStStrNoPop var_124
  loc_63B217: LitStr " Paginas, desea continuar?"
  loc_63B21A: ConcatStr
  loc_63B21B: CVarStr var_BC
  loc_63B21E: ImpAdCallI2 MsgBox(, , , , )
  loc_63B223: LitI4 2
  loc_63B228: EqI4
  loc_63B229: FFreeStr var_8C = "": var_94 = "": var_120 = ""
  loc_63B234: FFreeAd var_88 = ""
  loc_63B23B: FFreeVar var_BC = "": var_DC = "": var_FC = ""
  loc_63B246: BranchF loc_63B26C
  loc_63B249: LitI2_Byte &HFF
  loc_63B24B: ImpAdLdRf MemVar_74D8EC
  loc_63B24E: NewIfNullPr frmControlTanques
  loc_63B251: Call frmControlTanques.CancelaImpresionPut(from_stack_1v)
  loc_63B256: ILdRf Me
  loc_63B259: FStAdNoPop
  loc_63B25D: ImpAdLdRf MemVar_7520D4
  loc_63B260: NewIfNullPr Global
  loc_63B263: Global.Unload from_stack_1
  loc_63B268: FFree1Ad var_88
  loc_63B26B: ExitProcHresult
  loc_63B26C: FLdRfVar var_12E
  loc_63B26F: FLdPrThis
  loc_63B270: VCallAd Control_ID_cmbCalibradaDesde
  loc_63B273: FStAdFunc var_88
  loc_63B276: FLdPr var_88
  loc_63B279:  = Me.ListIndex
  loc_63B27E: LitVar_FALSE
  loc_63B282: LitVar_TRUE var_BC
  loc_63B285: FLdI2 var_12E
  loc_63B288: LitI2_Byte 0
  loc_63B28A: EqI2
  loc_63B28B: CVarBoolI2 var_AC
  loc_63B28F: FLdRfVar var_FC
  loc_63B292: ImpAdCallFPR4  = IIf(, , )
  loc_63B297: FLdRfVar var_FC
  loc_63B29A: CBoolVar
  loc_63B29C: ImpAdLdRf MemVar_74D8EC
  loc_63B29F: NewIfNullPr frmControlTanques
  loc_63B2A2: Call frmControlTanques.EmitidaPorSensorPut(from_stack_1v)
  loc_63B2A7: FFree1Ad var_88
  loc_63B2AA: FFreeVar var_AC = "": var_BC = "": var_DC = ""
  loc_63B2B5: LitI2_Byte 0
  loc_63B2B7: ImpAdLdRf MemVar_74D8EC
  loc_63B2BA: NewIfNullPr frmControlTanques
  loc_63B2BD: Call frmControlTanques.CancelaImpresionPut(from_stack_1v)
  loc_63B2C2: FLdRfVar var_8C
  loc_63B2C5: FLdPrThis
  loc_63B2C6: VCallAd Control_ID_GrabarTabla
  loc_63B2C9: FStAdFunc var_88
  loc_63B2CC: FLdPr var_88
  loc_63B2CF:  = frmControlTanques.TextBox.Text
  loc_63B2D4: ILdRf var_8C
  loc_63B2D7: ImpAdCallFPR4 push Val()
  loc_63B2DC: CI4R8
  loc_63B2DD: ImpAdLdRf MemVar_74D8EC
  loc_63B2E0: NewIfNullPr frmControlTanques
  loc_63B2E3: Call frmControlTanques.MMDesdePut(from_stack_1v)
  loc_63B2E8: FFree1Str var_8C
  loc_63B2EB: FFree1Ad var_88
  loc_63B2EE: FLdRfVar var_8C
  loc_63B2F1: FLdPrThis
  loc_63B2F2: VCallAd Control_ID_ImprimirTabla
  loc_63B2F5: FStAdFunc var_88
  loc_63B2F8: FLdPr var_88
  loc_63B2FB:  = frmControlTanques.TextBox.Text
  loc_63B300: ILdRf var_8C
  loc_63B303: ImpAdCallFPR4 push Val()
  loc_63B308: CI4R8
  loc_63B309: ImpAdLdRf MemVar_74D8EC
  loc_63B30C: NewIfNullPr frmControlTanques
  loc_63B30F: Call frmControlTanques.MMHastaPut(from_stack_1v)
  loc_63B314: FFree1Str var_8C
  loc_63B317: FFree1Ad var_88
  loc_63B31A: ILdRf Me
  loc_63B31D: FStAdNoPop
  loc_63B321: ImpAdLdRf MemVar_7520D4
  loc_63B324: NewIfNullPr Global
  loc_63B327: Global.Unload from_stack_1
  loc_63B32C: FFree1Ad var_88
  loc_63B32F: ExitProcHresult
End Sub

Private Sub Form_Load() '5ED7F8
  'Data Table: 41639C
  loc_5ED764: FLdRfVar var_94
  loc_5ED767: FLdPr Me
  loc_5ED76A:  = Me.Width
  loc_5ED76F: FLdRfVar var_90
  loc_5ED772: FLdRfVar var_8C
  loc_5ED775: ImpAdLdRf MemVar_7520D4
  loc_5ED778: NewIfNullPr Global
  loc_5ED77B:  = Global.Screen
  loc_5ED780: FLdPr var_8C
  loc_5ED783:  = Screen.Width
  loc_5ED788: FLdFPR4 var_90
  loc_5ED78B: FLdFPR4 var_94
  loc_5ED78E: SubR4
  loc_5ED78F: CI4R8
  loc_5ED790: LitI4 2
  loc_5ED795: IDvI4
  loc_5ED796: CR8I4
  loc_5ED797: PopFPR4
  loc_5ED798: FLdPr Me
  loc_5ED79B: Me.Left = from_stack_1s
  loc_5ED7A0: FFree1Ad var_8C
  loc_5ED7A3: FLdRfVar var_94
  loc_5ED7A6: FLdPr Me
  loc_5ED7A9:  = Me.Height
  loc_5ED7AE: FLdRfVar var_90
  loc_5ED7B1: FLdRfVar var_8C
  loc_5ED7B4: ImpAdLdRf MemVar_7520D4
  loc_5ED7B7: NewIfNullPr Global
  loc_5ED7BA:  = Global.Screen
  loc_5ED7BF: FLdPr var_8C
  loc_5ED7C2:  = Screen.Height
  loc_5ED7C7: FLdFPR4 var_90
  loc_5ED7CA: FLdFPR4 var_94
  loc_5ED7CD: SubR4
  loc_5ED7CE: CI4R8
  loc_5ED7CF: LitI4 2
  loc_5ED7D4: IDvI4
  loc_5ED7D5: CR8I4
  loc_5ED7D6: PopFPR4
  loc_5ED7D7: FLdPr Me
  loc_5ED7DA: Me.Top = from_stack_1s
  loc_5ED7DF: FFree1Ad var_8C
  loc_5ED7E2: LitI2_Byte 0
  loc_5ED7E4: FLdPrThis
  loc_5ED7E5: VCallAd Control_ID_cmbCalibradaDesde
  loc_5ED7E8: FStAdFunc var_8C
  loc_5ED7EB: FLdPr var_8C
  loc_5ED7EE: Me.ListIndex = from_stack_1
  loc_5ED7F3: FFree1Ad var_8C
  loc_5ED7F6: ExitProcHresult
End Sub

Private Sub txtMMHasta_LostFocus() '610058
  'Data Table: 41639C
  loc_60FF60: FLdRfVar var_8C
  loc_60FF63: FLdPrThis
  loc_60FF64: VCallAd Control_ID_txtMMHasta
  loc_60FF67: FStAdFunc var_88
  loc_60FF6A: FLdPr var_88
  loc_60FF6D:  = Me.Text
  loc_60FF72: FLdZeroAd var_8C
  loc_60FF75: CVarStr var_9C
  loc_60FF78: ImpAdCallI2 IsNumeric()
  loc_60FF7D: NotI4
  loc_60FF7E: FFree1Ad var_88
  loc_60FF81: FFree1Var var_9C = ""
  loc_60FF84: BranchF loc_60FFC5
  loc_60FF87: LitStr "6000"
  loc_60FF8A: FLdPrThis
  loc_60FF8B: VCallAd Control_ID_txtMMHasta
  loc_60FF8E: FStAdFunc var_88
  loc_60FF91: FLdPr var_88
  loc_60FF94: Me.Text = from_stack_1
  loc_60FF99: FFree1Ad var_88
  loc_60FF9C: LitVar_Missing var_10C
  loc_60FF9F: LitVar_Missing var_EC
  loc_60FFA2: LitVar_Missing var_CC
  loc_60FFA5: LitI4 0
  loc_60FFAA: LitVarStr var_AC, "El valor de MM Hasta no es válido"
  loc_60FFAF: FStVarCopyObj var_9C
  loc_60FFB2: FLdRfVar var_9C
  loc_60FFB5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60FFBA: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_60FFC5: FLdRfVar var_8C
  loc_60FFC8: FLdPrThis
  loc_60FFC9: VCallAd Control_ID_txtMMHasta
  loc_60FFCC: FStAdFunc var_88
  loc_60FFCF: FLdPr var_88
  loc_60FFD2:  = Me.Text
  loc_60FFD7: ILdRf var_8C
  loc_60FFDA: ImpAdCallFPR4 push Val()
  loc_60FFDF: CR8R8
  loc_60FFE0: LitI2 6000
  loc_60FFE3: CR8I2
  loc_60FFE4: GtR4
  loc_60FFE5: FLdRfVar var_114
  loc_60FFE8: FLdPrThis
  loc_60FFE9: VCallAd Control_ID_txtMMHasta
  loc_60FFEC: FStAdFunc var_110
  loc_60FFEF: FLdPr var_110
  loc_60FFF2:  = Me.Text
  loc_60FFF7: ILdRf var_114
  loc_60FFFA: ImpAdCallFPR4 push Val()
  loc_60FFFF: CR8R8
  loc_610000: LitI2_Byte 0
  loc_610002: CR8I2
  loc_610003: LtR8
  loc_610004: OrI4
  loc_610005: FFreeStr var_8C = ""
  loc_61000C: FFreeAd var_88 = ""
  loc_610013: BranchF loc_610054
  loc_610016: LitStr "6000"
  loc_610019: FLdPrThis
  loc_61001A: VCallAd Control_ID_txtMMHasta
  loc_61001D: FStAdFunc var_88
  loc_610020: FLdPr var_88
  loc_610023: Me.Text = from_stack_1
  loc_610028: FFree1Ad var_88
  loc_61002B: LitVar_Missing var_10C
  loc_61002E: LitVar_Missing var_EC
  loc_610031: LitVar_Missing var_CC
  loc_610034: LitI4 0
  loc_610039: LitVarStr var_AC, "El valor de MM Hasta no es válido"
  loc_61003E: FStVarCopyObj var_9C
  loc_610041: FLdRfVar var_9C
  loc_610044: ImpAdCallFPR4 MsgBox(, , , , )
  loc_610049: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_610054: ExitProcHresult
  loc_610055: OnErrorGoto loc_60FF79
End Sub

Private Sub txtMMDesde_LostFocus() '610578
  'Data Table: 41639C
  loc_610480: FLdRfVar var_8C
  loc_610483: FLdPrThis
  loc_610484: VCallAd Control_ID_txtMMDesde
  loc_610487: FStAdFunc var_88
  loc_61048A: FLdPr var_88
  loc_61048D:  = Me.Text
  loc_610492: FLdZeroAd var_8C
  loc_610495: CVarStr var_9C
  loc_610498: ImpAdCallI2 IsNumeric()
  loc_61049D: NotI4
  loc_61049E: FFree1Ad var_88
  loc_6104A1: FFree1Var var_9C = ""
  loc_6104A4: BranchF loc_6104E5
  loc_6104A7: LitStr "0"
  loc_6104AA: FLdPrThis
  loc_6104AB: VCallAd Control_ID_txtMMDesde
  loc_6104AE: FStAdFunc var_88
  loc_6104B1: FLdPr var_88
  loc_6104B4: Me.Text = from_stack_1
  loc_6104B9: FFree1Ad var_88
  loc_6104BC: LitVar_Missing var_10C
  loc_6104BF: LitVar_Missing var_EC
  loc_6104C2: LitVar_Missing var_CC
  loc_6104C5: LitI4 0
  loc_6104CA: LitVarStr var_AC, "El valor de MM Desde no es válido"
  loc_6104CF: FStVarCopyObj var_9C
  loc_6104D2: FLdRfVar var_9C
  loc_6104D5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6104DA: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_6104E5: FLdRfVar var_8C
  loc_6104E8: FLdPrThis
  loc_6104E9: VCallAd Control_ID_txtMMDesde
  loc_6104EC: FStAdFunc var_88
  loc_6104EF: FLdPr var_88
  loc_6104F2:  = Me.Text
  loc_6104F7: ILdRf var_8C
  loc_6104FA: ImpAdCallFPR4 push Val()
  loc_6104FF: CR8R8
  loc_610500: LitI2 6000
  loc_610503: CR8I2
  loc_610504: GtR4
  loc_610505: FLdRfVar var_114
  loc_610508: FLdPrThis
  loc_610509: VCallAd Control_ID_txtMMDesde
  loc_61050C: FStAdFunc var_110
  loc_61050F: FLdPr var_110
  loc_610512:  = Me.Text
  loc_610517: ILdRf var_114
  loc_61051A: ImpAdCallFPR4 push Val()
  loc_61051F: CR8R8
  loc_610520: LitI2_Byte 0
  loc_610522: CR8I2
  loc_610523: LtR8
  loc_610524: OrI4
  loc_610525: FFreeStr var_8C = ""
  loc_61052C: FFreeAd var_88 = ""
  loc_610533: BranchF loc_610574
  loc_610536: LitStr "0"
  loc_610539: FLdPrThis
  loc_61053A: VCallAd Control_ID_txtMMDesde
  loc_61053D: FStAdFunc var_88
  loc_610540: FLdPr var_88
  loc_610543: Me.Text = from_stack_1
  loc_610548: FFree1Ad var_88
  loc_61054B: LitVar_Missing var_10C
  loc_61054E: LitVar_Missing var_EC
  loc_610551: LitVar_Missing var_CC
  loc_610554: LitI4 0
  loc_610559: LitVarStr var_AC, "El valor de MM Desde no es válido"
  loc_61055E: FStVarCopyObj var_9C
  loc_610561: FLdRfVar var_9C
  loc_610564: ImpAdCallFPR4 MsgBox(, , , , )
  loc_610569: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_610574: ExitProcHresult
End Sub
