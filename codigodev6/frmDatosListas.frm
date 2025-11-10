VERSION 5.00
Begin VB.Form frmDatosListas
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
  ClientWidth = 11865
  ClientHeight = 6570
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton cmdForzada
    Caption = "Llamada Forzada"
    Left = 240
    Top = 5760
    Width = 2415
    Height = 495
    TabIndex = 8
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
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 7200
    Top = 5760
    Width = 1215
    Height = 375
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
  Begin VB.Frame Frame4
    Caption = "Archivo de Recibo"
    Left = 7200
    Top = 960
    Width = 4455
    Height = 4695
    TabIndex = 21
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox txtRecibo
      Left = 240
      Top = 960
      Width = 3975
      Height = 3495
      TabIndex = 7
      MultiLine = -1  'True
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Courier New"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox cboRecibo
      Style = 2
      Left = 240
      Top = 360
      Width = 3975
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
  End
  Begin VB.Frame Frame3
    Caption = "Internet"
    Left = 120
    Top = 4200
    Width = 6855
    Height = 1335
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
    Begin VB.TextBox txtArchivoEnviado
      Left = 4200
      Top = 360
      Width = 2415
      Height = 285
      TabIndex = 4
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
    Begin VB.TextBox txtArchivoRecibido
      Left = 4200
      Top = 840
      Width = 2415
      Height = 285
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
    Begin VB.Label Label9
      Caption = "Fecha del último archivo recibido"
      Left = 240
      Top = 840
      Width = 4695
      Height = 255
      TabIndex = 20
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
    Begin VB.Label Label8
      Caption = "Fecha del último archivo enviado"
      Left = 240
      Top = 360
      Width = 4695
      Height = 255
      TabIndex = 19
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
  Begin VB.CommandButton cmdSalir
    Caption = "&Aceptar"
    Left = 10080
    Top = 5880
    Width = 1575
    Height = 495
    TabIndex = 10
    Default = -1  'True
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
  Begin VB.Frame Frame2
    Caption = "Lista de Bloqueos"
    Left = 120
    Top = 2520
    Width = 6855
    Height = 1455
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
    Begin VB.TextBox txtFechaRecibiNegra
      Left = 3000
      Top = 840
      Width = 3615
      Height = 285
      TabIndex = 3
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
    Begin VB.TextBox txtFechaNegra
      Left = 3000
      Top = 360
      Width = 3615
      Height = 285
      TabIndex = 2
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
    Begin VB.Label Label7
      Caption = "Fecha de vencimiento"
      Left = 240
      Top = 360
      Width = 2655
      Height = 255
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
    Begin VB.Label Label6
      Caption = "Fecha de recibimiento"
      Left = 240
      Top = 840
      Width = 2655
      Height = 255
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
  End
  Begin VB.Frame Frame1
    Caption = "Lista de Flotas"
    Left = 120
    Top = 960
    Width = 6855
    Height = 1335
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
    Begin VB.TextBox txtFechaRecibiBlanca
      Left = 3000
      Top = 840
      Width = 3615
      Height = 285
      TabIndex = 1
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
    Begin VB.TextBox txtFechaBlanca
      Left = 3000
      Top = 360
      Width = 3615
      Height = 285
      TabIndex = 0
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
    Begin VB.Label Label4
      Caption = "Fecha de recibimiento"
      Left = 240
      Top = 840
      Width = 2655
      Height = 255
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
    End
    Begin VB.Label Label2
      Caption = "Fecha de vencimiento"
      Left = 240
      Top = 360
      Width = 2655
      Height = 255
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
    End
  End
  Begin VB.Label Label1
    Caption = "Datos de Comunicación"
    Left = 3360
    Top = 240
    Width = 5175
    Height = 495
    TabIndex = 11
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

Attribute VB_Name = "frmDatosListas"


Private Sub cmdImprimir_Click() '66AF24
  'Data Table: 43EF28
  loc_66ABA8: FLdRfVar var_8C
  loc_66ABAB: NewIfNullAd
  loc_66ABAE: FStAd var_94 
  loc_66ABB2: LitI2_Byte &HFF
  loc_66ABB4: FLdPr var_94
  loc_66ABBC: LitStr "Courier New"
  loc_66ABBF: FLdPr var_94
  loc_66ABC2: Reset
  loc_66ABC7: LitI2_Byte &H18
  loc_66ABC9: CR8I2
  loc_66ABCA: PopFPR4
  loc_66ABCB: FLdPr var_94
  loc_66ABD3: LitNothing
  loc_66ABD5: FStAd var_94 
  loc_66ABD9: FLdRfVar var_1E4
  loc_66ABDC: LitVar_Missing var_1E0
  loc_66ABDF: LitVar_Missing var_1C0
  loc_66ABE2: LitVar_Missing var_1A0
  loc_66ABE5: LitVar_Missing var_180
  loc_66ABE8: LitVar_Missing var_160
  loc_66ABEB: LitVar_Missing var_140
  loc_66ABEE: LitVar_Missing var_120
  loc_66ABF1: LitVar_Missing var_100
  loc_66ABF4: LitVar_Missing var_E0
  loc_66ABF7: LitVar_Missing var_C0
  loc_66ABFA: LitStr "Archivo de Recibo"
  loc_66ABFD: FStStrCopy var_A0
  loc_66AC00: FLdRfVar var_A0
  loc_66AC03: LitI4 9
  loc_66AC08: PopTmpLdAdStr var_9C
  loc_66AC0B: LitI2_Byte &H4E
  loc_66AC0D: PopTmpLdAd2 var_96
  loc_66AC10: ImpAdLdRf MemVar_74C7D0
  loc_66AC13: NewIfNullPr clsMsg
  loc_66AC16: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66AC1B: FLdRfVar var_1EA
  loc_66AC1E: FLdRfVar var_8C
  loc_66AC21: NewIfNullRf
  loc_66AC25: FLdZeroAd var_1E4
  loc_66AC28: PopTmpLdAdStr
  loc_66AC2C: FLdRfVar var_88
  loc_66AC2F: NewIfNullPr CReporte
  loc_66AC32:  = CReporte.BackColor
  loc_66AC37: FFreeStr var_A0 = ""
  loc_66AC3E: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_66AC55: FLdRfVar var_96
  loc_66AC58: FLdRfVar var_8C
  loc_66AC5B: NewIfNullRf
  loc_66AC5F: LitStr " "
  loc_66AC62: FStStrCopy var_A0
  loc_66AC65: FLdRfVar var_A0
  loc_66AC68: FLdRfVar var_88
  loc_66AC6B: NewIfNullPr CReporte
  loc_66AC6E:  = CReporte.BackColor
  loc_66AC73: FFree1Str var_A0
  loc_66AC76: FLdRfVar var_96
  loc_66AC79: FLdRfVar var_8C
  loc_66AC7C: NewIfNullRf
  loc_66AC80: LitStr " "
  loc_66AC83: FStStrCopy var_A0
  loc_66AC86: FLdRfVar var_A0
  loc_66AC89: FLdRfVar var_88
  loc_66AC8C: NewIfNullPr CReporte
  loc_66AC8F:  = CReporte.BackColor
  loc_66AC94: FFree1Str var_A0
  loc_66AC97: FLdRfVar var_8C
  loc_66AC9A: NewIfNullAd
  loc_66AC9D: FStAd var_1F0 
  loc_66ACA1: LitI2_Byte 0
  loc_66ACA3: FLdPr var_1F0
  loc_66ACAB: LitI2_Byte 8
  loc_66ACAD: CR8I2
  loc_66ACAE: PopFPR4
  loc_66ACAF: FLdPr var_1F0
  loc_66ACB7: LitNothing
  loc_66ACB9: FStAd var_1F0 
  loc_66ACBD: FLdRfVar var_1E4
  loc_66ACC0: LitVar_Missing var_1E0
  loc_66ACC3: LitVar_Missing var_1C0
  loc_66ACC6: LitVar_Missing var_1A0
  loc_66ACC9: LitVar_Missing var_180
  loc_66ACCC: LitVar_Missing var_160
  loc_66ACCF: LitVar_Missing var_140
  loc_66ACD2: LitVar_Missing var_120
  loc_66ACD5: LitVar_Missing var_100
  loc_66ACD8: LitVar_Missing var_E0
  loc_66ACDB: LitVar_Missing var_C0
  loc_66ACDE: LitStr "Fecha de Emisión:"
  loc_66ACE1: FStStrCopy var_A0
  loc_66ACE4: FLdRfVar var_A0
  loc_66ACE7: LitI4 &HC
  loc_66ACEC: PopTmpLdAdStr var_9C
  loc_66ACEF: LitI2_Byte &H4E
  loc_66ACF1: PopTmpLdAd2 var_96
  loc_66ACF4: ImpAdLdRf MemVar_74C7D0
  loc_66ACF7: NewIfNullPr clsMsg
  loc_66ACFA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66ACFF: FLdRfVar var_200
  loc_66AD02: ImpAdCallFPR4  = Now
  loc_66AD07: LitI4 1
  loc_66AD0C: LitI4 1
  loc_66AD11: LitVarStr var_210, "DD/MM/YYYY  HH:MM:SS"
  loc_66AD16: FStVarCopyObj var_220
  loc_66AD19: FLdRfVar var_220
  loc_66AD1C: FLdRfVar var_200
  loc_66AD1F: ImpAdCallI2 Format$(, )
  loc_66AD24: FStStr var_22C
  loc_66AD27: FLdRfVar var_1EA
  loc_66AD2A: FLdRfVar var_8C
  loc_66AD2D: NewIfNullRf
  loc_66AD31: ILdRf var_1E4
  loc_66AD34: LitStr " "
  loc_66AD37: ConcatStr
  loc_66AD38: FStStrNoPop var_1E8
  loc_66AD3B: FLdZeroAd var_22C
  loc_66AD3E: FStStrNoPop var_224
  loc_66AD41: ConcatStr
  loc_66AD42: PopTmpLdAdStr
  loc_66AD46: FLdRfVar var_88
  loc_66AD49: NewIfNullPr CReporte
  loc_66AD4C:  = CReporte.hWnd
  loc_66AD51: FFreeStr var_A0 = "": var_1E4 = "": var_1E8 = "": var_224 = "": var_228 = ""
  loc_66AD60: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = ""
  loc_66AD7B: LitI2_Byte &HE
  loc_66AD7D: CR8I2
  loc_66AD7E: PopFPR4
  loc_66AD7F: FLdRfVar var_8C
  loc_66AD82: NewIfNullPr CFuente
  loc_66AD8A: LitI2_Byte 1
  loc_66AD8C: FStI2 var_8E
  loc_66AD8F: LitI2_Byte 1
  loc_66AD91: FStI2 var_90
  loc_66AD94: FLdI2 var_90
  loc_66AD97: LitI2_Byte 0
  loc_66AD99: GtI2
  loc_66AD9A: BranchF loc_66AE85
  loc_66AD9D: FLdRfVar var_A0
  loc_66ADA0: FLdPrThis
  loc_66ADA1: VCallAd Control_ID_txtRecibo
  loc_66ADA4: FStAdFunc var_230
  loc_66ADA7: FLdPr var_230
  loc_66ADAA:  = Me.Text
  loc_66ADAF: LitI4 &HD
  loc_66ADB4: ImpAdCallI2 Chr$()
  loc_66ADB9: FStStr var_238
  loc_66ADBC: LitI4 &HA
  loc_66ADC1: ImpAdCallI2 Chr$()
  loc_66ADC6: FStStr var_23C
  loc_66ADC9: FLdZeroAd var_238
  loc_66ADCC: FStStrNoPop var_1E4
  loc_66ADCF: FLdZeroAd var_23C
  loc_66ADD2: FStStrNoPop var_1E8
  loc_66ADD5: ConcatStr
  loc_66ADD6: FStStrNoPop var_228
  loc_66ADD9: FLdI2 var_8E
  loc_66ADDC: FLdZeroAd var_A0
  loc_66ADDF: PopTmpLdAdStr
  loc_66ADE3: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_66ADE8: FStStr var_240
  loc_66ADEB: FLdRfVar var_96
  loc_66ADEE: FLdRfVar var_8C
  loc_66ADF1: NewIfNullRf
  loc_66ADF5: LitStr " "
  loc_66ADF8: FLdZeroAd var_240
  loc_66ADFB: FStStrNoPop var_22C
  loc_66ADFE: ConcatStr
  loc_66ADFF: PopTmpLdAdStr
  loc_66AE03: FLdRfVar var_88
  loc_66AE06: NewIfNullPr CReporte
  loc_66AE09:  = CReporte.ForeColor
  loc_66AE0E: FFreeStr var_1E4 = "": var_1E8 = "": var_224 = "": var_228 = "": var_22C = "": var_234 = "": var_238 = "": var_23C = ""
  loc_66AE23: FFree1Ad var_230
  loc_66AE26: FLdI2 var_8E
  loc_66AE29: LitI2_Byte 1
  loc_66AE2B: AddI2
  loc_66AE2C: FStI2 var_8E
  loc_66AE2F: FLdI2 var_90
  loc_66AE32: LitI2_Byte 1
  loc_66AE34: AddI2
  loc_66AE35: CI4UI1
  loc_66AE36: FLdRfVar var_A0
  loc_66AE39: FLdPrThis
  loc_66AE3A: VCallAd Control_ID_txtRecibo
  loc_66AE3D: FStAdFunc var_230
  loc_66AE40: FLdPr var_230
  loc_66AE43:  = Me.Text
  loc_66AE48: ILdRf var_A0
  loc_66AE4B: LitI4 &HD
  loc_66AE50: ImpAdCallI2 Chr$()
  loc_66AE55: FStStrNoPop var_1E4
  loc_66AE58: LitI4 &HA
  loc_66AE5D: ImpAdCallI2 Chr$()
  loc_66AE62: FStStrNoPop var_1E8
  loc_66AE65: ConcatStr
  loc_66AE66: FStStrNoPop var_224
  loc_66AE69: LitI4 0
  loc_66AE6E: FnInStr4
  loc_66AE70: CI2I4
  loc_66AE71: FStI2 var_90
  loc_66AE74: FFreeStr var_1E4 = "": var_1E8 = "": var_224 = ""
  loc_66AE7F: FFree1Ad var_230
  loc_66AE82: Branch loc_66AD94
  loc_66AE85: FLdRfVar var_96
  loc_66AE88: FLdRfVar var_88
  loc_66AE8B: NewIfNullPr CReporte
  loc_66AE8E: CReporte.ForeColor = from_stack_1
  loc_66AE93: LitNothing
  loc_66AE95: CastAd
  loc_66AE98: FStAdFunc var_88
  loc_66AE9B: LitNothing
  loc_66AE9D: CastAd
  loc_66AEA0: FStAdFunc var_8C
  loc_66AEA3: FLdRfVar var_1E4
  loc_66AEA6: LitVar_Missing var_1E0
  loc_66AEA9: LitVar_Missing var_1C0
  loc_66AEAC: LitVar_Missing var_1A0
  loc_66AEAF: LitVar_Missing var_180
  loc_66AEB2: LitVar_Missing var_160
  loc_66AEB5: LitVar_Missing var_140
  loc_66AEB8: LitVar_Missing var_120
  loc_66AEBB: LitVar_Missing var_100
  loc_66AEBE: LitVar_Missing var_E0
  loc_66AEC1: LitVar_Missing var_C0
  loc_66AEC4: LitStr "Impresión terminada."
  loc_66AEC7: FStStrCopy var_A0
  loc_66AECA: FLdRfVar var_A0
  loc_66AECD: LitI4 &HD
  loc_66AED2: PopTmpLdAdStr var_9C
  loc_66AED5: LitI2_Byte &H4E
  loc_66AED7: PopTmpLdAd2 var_96
  loc_66AEDA: ImpAdLdRf MemVar_74C7D0
  loc_66AEDD: NewIfNullPr clsMsg
  loc_66AEE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66AEE5: LitVar_Missing var_280
  loc_66AEE8: LitVar_Missing var_260
  loc_66AEEB: LitVar_Missing var_220
  loc_66AEEE: LitI4 &H40
  loc_66AEF3: FLdZeroAd var_1E4
  loc_66AEF6: CVarStr var_200
  loc_66AEF9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66AEFE: FFree1Str var_A0
  loc_66AF01: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_260 = ""
  loc_66AF20: ExitProcHresult
End Sub

Private Sub cboRecibo_Click() '6019E8
  'Data Table: 43EF28
  loc_601924: FLdRfVar var_90
  loc_601927: FLdPrThis
  loc_601928: VCallAd Control_ID_cboRecibo
  loc_60192B: FStAdFunc var_8C
  loc_60192E: FLdPr var_8C
  loc_601931:  = Me.Text
  loc_601936: LitStr vbNullString
  loc_601939: LitStr "/"
  loc_60193C: ILdRf var_90
  loc_60193F: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_601944: FStStr var_A0
  loc_601947: FLdRfVar var_9A
  loc_60194A: FLdZeroAd var_A0
  loc_60194D: FStStrNoPop var_98
  loc_601950: FLdRfVar var_88
  loc_601953: FLdRfVar var_94
  loc_601956: ImpAdLdRf MemVar_74C760
  loc_601959: NewIfNullPr Formx
  loc_60195C: from_stack_1v = Formx.global_4589716Get()
  loc_601961: FLdPr var_94
  loc_601964: Formx.PaletteMode = from_stack_1
  loc_601969: FLdI2 var_9A
  loc_60196C: NotI4
  loc_60196D: FFreeStr var_90 = "": var_98 = ""
  loc_601976: FFreeAd var_8C = ""
  loc_60197D: BranchF loc_6019AC
  loc_601980: FLdRfVar var_B0
  loc_601983: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_601988: FLdRfVar var_B0
  loc_60198B: CBoolVarNull
  loc_60198D: FFree1Var var_B0 = ""
  loc_601990: BranchF loc_6019A9
  loc_601993: ILdRf Me
  loc_601996: FStAdNoPop
  loc_60199A: ImpAdLdRf MemVar_7520D4
  loc_60199D: NewIfNullPr Global
  loc_6019A0: Global.Unload from_stack_1
  loc_6019A5: FFree1Ad var_8C
  loc_6019A8: ExitProcHresult
  loc_6019A9: Branch loc_601924
  loc_6019AC: ILdRf var_88
  loc_6019AF: FnLenStr
  loc_6019B0: LitI4 &HA
  loc_6019B5: LtI4
  loc_6019B6: BranchF loc_6019D1
  loc_6019B9: LitStr vbNullString
  loc_6019BC: FLdPrThis
  loc_6019BD: VCallAd Control_ID_txtRecibo
  loc_6019C0: FStAdFunc var_8C
  loc_6019C3: FLdPr var_8C
  loc_6019C6: Me.Text = from_stack_1
  loc_6019CB: FFree1Ad var_8C
  loc_6019CE: Branch loc_6019E6
  loc_6019D1: ILdRf var_88
  loc_6019D4: FLdPrThis
  loc_6019D5: VCallAd Control_ID_txtRecibo
  loc_6019D8: FStAdFunc var_8C
  loc_6019DB: FLdPr var_8C
  loc_6019DE: Me.Text = from_stack_1
  loc_6019E3: FFree1Ad var_8C
  loc_6019E6: ExitProcHresult
End Sub

Private Sub Form_Load() '68C588
  'Data Table: 43EF28
  loc_68C010: ILdRf Me
  loc_68C013: CastAd
  loc_68C016: FStAdFunc var_88
  loc_68C019: FLdRfVar var_88
  loc_68C01C: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_68C021: FFree1Ad var_88
  loc_68C024: FLdRfVar var_1D8
  loc_68C027: LitVar_Missing var_1D4
  loc_68C02A: LitVar_Missing var_1B4
  loc_68C02D: LitVar_Missing var_194
  loc_68C030: LitVar_Missing var_174
  loc_68C033: LitVar_Missing var_154
  loc_68C036: LitVar_Missing var_134
  loc_68C039: LitVar_Missing var_114
  loc_68C03C: LitVar_Missing var_F4
  loc_68C03F: LitVar_Missing var_D4
  loc_68C042: LitVar_Missing var_B4
  loc_68C045: LitStr "Datos de Comunicación"
  loc_68C048: FStStrCopy var_94
  loc_68C04B: FLdRfVar var_94
  loc_68C04E: LitI4 1
  loc_68C053: PopTmpLdAdStr var_90
  loc_68C056: LitI2_Byte &H4E
  loc_68C058: PopTmpLdAd2 var_8A
  loc_68C05B: ImpAdLdRf MemVar_74C7D0
  loc_68C05E: NewIfNullPr clsMsg
  loc_68C061: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C066: ILdRf var_1D8
  loc_68C069: FLdPrThis
  loc_68C06A: VCallAd Control_ID_Label1
  loc_68C06D: FStAdFunc var_88
  loc_68C070: FLdPr var_88
  loc_68C073: Me.Caption = from_stack_1
  loc_68C078: FFreeStr var_94 = ""
  loc_68C07F: FFree1Ad var_88
  loc_68C082: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C099: FLdRfVar var_1D8
  loc_68C09C: LitVar_Missing var_1D4
  loc_68C09F: LitVar_Missing var_1B4
  loc_68C0A2: LitVar_Missing var_194
  loc_68C0A5: LitVar_Missing var_174
  loc_68C0A8: LitVar_Missing var_154
  loc_68C0AB: LitVar_Missing var_134
  loc_68C0AE: LitVar_Missing var_114
  loc_68C0B1: LitVar_Missing var_F4
  loc_68C0B4: LitVar_Missing var_D4
  loc_68C0B7: LitVar_Missing var_B4
  loc_68C0BA: LitStr "Lista de Flotas"
  loc_68C0BD: FStStrCopy var_94
  loc_68C0C0: FLdRfVar var_94
  loc_68C0C3: LitI4 2
  loc_68C0C8: PopTmpLdAdStr var_90
  loc_68C0CB: LitI2_Byte &H4E
  loc_68C0CD: PopTmpLdAd2 var_8A
  loc_68C0D0: ImpAdLdRf MemVar_74C7D0
  loc_68C0D3: NewIfNullPr clsMsg
  loc_68C0D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C0DB: ILdRf var_1D8
  loc_68C0DE: FLdPrThis
  loc_68C0DF: VCallAd Control_ID_Frame1
  loc_68C0E2: FStAdFunc var_88
  loc_68C0E5: FLdPr var_88
  loc_68C0E8: Me.Caption = from_stack_1
  loc_68C0ED: FFreeStr var_94 = ""
  loc_68C0F4: FFree1Ad var_88
  loc_68C0F7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C10E: FLdRfVar var_1D8
  loc_68C111: LitVar_Missing var_1D4
  loc_68C114: LitVar_Missing var_1B4
  loc_68C117: LitVar_Missing var_194
  loc_68C11A: LitVar_Missing var_174
  loc_68C11D: LitVar_Missing var_154
  loc_68C120: LitVar_Missing var_134
  loc_68C123: LitVar_Missing var_114
  loc_68C126: LitVar_Missing var_F4
  loc_68C129: LitVar_Missing var_D4
  loc_68C12C: LitVar_Missing var_B4
  loc_68C12F: LitStr "Fecha de vencimiento:"
  loc_68C132: FStStrCopy var_94
  loc_68C135: FLdRfVar var_94
  loc_68C138: LitI4 3
  loc_68C13D: PopTmpLdAdStr var_90
  loc_68C140: LitI2_Byte &H4E
  loc_68C142: PopTmpLdAd2 var_8A
  loc_68C145: ImpAdLdRf MemVar_74C7D0
  loc_68C148: NewIfNullPr clsMsg
  loc_68C14B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C150: ILdRf var_1D8
  loc_68C153: FLdPrThis
  loc_68C154: VCallAd Control_ID_Label2
  loc_68C157: FStAdFunc var_88
  loc_68C15A: FLdPr var_88
  loc_68C15D: Me.Caption = from_stack_1
  loc_68C162: FFreeStr var_94 = ""
  loc_68C169: FFree1Ad var_88
  loc_68C16C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C183: FLdRfVar var_1D8
  loc_68C186: LitVar_Missing var_1D4
  loc_68C189: LitVar_Missing var_1B4
  loc_68C18C: LitVar_Missing var_194
  loc_68C18F: LitVar_Missing var_174
  loc_68C192: LitVar_Missing var_154
  loc_68C195: LitVar_Missing var_134
  loc_68C198: LitVar_Missing var_114
  loc_68C19B: LitVar_Missing var_F4
  loc_68C19E: LitVar_Missing var_D4
  loc_68C1A1: LitVar_Missing var_B4
  loc_68C1A4: LitStr "Fecha de recibimiento:"
  loc_68C1A7: FStStrCopy var_94
  loc_68C1AA: FLdRfVar var_94
  loc_68C1AD: LitI4 4
  loc_68C1B2: PopTmpLdAdStr var_90
  loc_68C1B5: LitI2_Byte &H4E
  loc_68C1B7: PopTmpLdAd2 var_8A
  loc_68C1BA: ImpAdLdRf MemVar_74C7D0
  loc_68C1BD: NewIfNullPr clsMsg
  loc_68C1C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C1C5: ILdRf var_1D8
  loc_68C1C8: FLdPrThis
  loc_68C1C9: VCallAd Control_ID_Label4
  loc_68C1CC: FStAdFunc var_88
  loc_68C1CF: FLdPr var_88
  loc_68C1D2: Me.Caption = from_stack_1
  loc_68C1D7: FFreeStr var_94 = ""
  loc_68C1DE: FFree1Ad var_88
  loc_68C1E1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C1F8: FLdRfVar var_1D8
  loc_68C1FB: LitVar_Missing var_1D4
  loc_68C1FE: LitVar_Missing var_1B4
  loc_68C201: LitVar_Missing var_194
  loc_68C204: LitVar_Missing var_174
  loc_68C207: LitVar_Missing var_154
  loc_68C20A: LitVar_Missing var_134
  loc_68C20D: LitVar_Missing var_114
  loc_68C210: LitVar_Missing var_F4
  loc_68C213: LitVar_Missing var_D4
  loc_68C216: LitVar_Missing var_B4
  loc_68C219: LitStr "Lista de Bloqueos"
  loc_68C21C: FStStrCopy var_94
  loc_68C21F: FLdRfVar var_94
  loc_68C222: LitI4 5
  loc_68C227: PopTmpLdAdStr var_90
  loc_68C22A: LitI2_Byte &H4E
  loc_68C22C: PopTmpLdAd2 var_8A
  loc_68C22F: ImpAdLdRf MemVar_74C7D0
  loc_68C232: NewIfNullPr clsMsg
  loc_68C235: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C23A: ILdRf var_1D8
  loc_68C23D: FLdPrThis
  loc_68C23E: VCallAd Control_ID_Frame2
  loc_68C241: FStAdFunc var_88
  loc_68C244: FLdPr var_88
  loc_68C247: Me.Caption = from_stack_1
  loc_68C24C: FFreeStr var_94 = ""
  loc_68C253: FFree1Ad var_88
  loc_68C256: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C26D: FLdRfVar var_94
  loc_68C270: FLdPrThis
  loc_68C271: VCallAd Control_ID_Label2
  loc_68C274: FStAdFunc var_88
  loc_68C277: FLdPr var_88
  loc_68C27A:  = Me.Caption
  loc_68C27F: ILdRf var_94
  loc_68C282: FLdPrThis
  loc_68C283: VCallAd Control_ID_Label7
  loc_68C286: FStAdFunc var_1DC
  loc_68C289: FLdPr var_1DC
  loc_68C28C: Me.Caption = from_stack_1
  loc_68C291: FFree1Str var_94
  loc_68C294: FFreeAd var_88 = ""
  loc_68C29B: FLdRfVar var_94
  loc_68C29E: FLdPrThis
  loc_68C29F: VCallAd Control_ID_Label4
  loc_68C2A2: FStAdFunc var_88
  loc_68C2A5: FLdPr var_88
  loc_68C2A8:  = Me.Caption
  loc_68C2AD: ILdRf var_94
  loc_68C2B0: FLdPrThis
  loc_68C2B1: VCallAd Control_ID_Label6
  loc_68C2B4: FStAdFunc var_1DC
  loc_68C2B7: FLdPr var_1DC
  loc_68C2BA: Me.Caption = from_stack_1
  loc_68C2BF: FFree1Str var_94
  loc_68C2C2: FFreeAd var_88 = ""
  loc_68C2C9: FLdRfVar var_1D8
  loc_68C2CC: LitVar_Missing var_1D4
  loc_68C2CF: LitVar_Missing var_1B4
  loc_68C2D2: LitVar_Missing var_194
  loc_68C2D5: LitVar_Missing var_174
  loc_68C2D8: LitVar_Missing var_154
  loc_68C2DB: LitVar_Missing var_134
  loc_68C2DE: LitVar_Missing var_114
  loc_68C2E1: LitVar_Missing var_F4
  loc_68C2E4: LitVar_Missing var_D4
  loc_68C2E7: LitVar_Missing var_B4
  loc_68C2EA: LitStr "Internet"
  loc_68C2ED: FStStrCopy var_94
  loc_68C2F0: FLdRfVar var_94
  loc_68C2F3: LitI4 6
  loc_68C2F8: PopTmpLdAdStr var_90
  loc_68C2FB: LitI2_Byte &H4E
  loc_68C2FD: PopTmpLdAd2 var_8A
  loc_68C300: ImpAdLdRf MemVar_74C7D0
  loc_68C303: NewIfNullPr clsMsg
  loc_68C306: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C30B: ILdRf var_1D8
  loc_68C30E: FLdPrThis
  loc_68C30F: VCallAd Control_ID_Frame3
  loc_68C312: FStAdFunc var_88
  loc_68C315: FLdPr var_88
  loc_68C318: Me.Caption = from_stack_1
  loc_68C31D: FFreeStr var_94 = ""
  loc_68C324: FFree1Ad var_88
  loc_68C327: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C33E: FLdRfVar var_1D8
  loc_68C341: LitVar_Missing var_1D4
  loc_68C344: LitVar_Missing var_1B4
  loc_68C347: LitVar_Missing var_194
  loc_68C34A: LitVar_Missing var_174
  loc_68C34D: LitVar_Missing var_154
  loc_68C350: LitVar_Missing var_134
  loc_68C353: LitVar_Missing var_114
  loc_68C356: LitVar_Missing var_F4
  loc_68C359: LitVar_Missing var_D4
  loc_68C35C: LitVar_Missing var_B4
  loc_68C35F: LitStr "Fecha del último archivo enviado"
  loc_68C362: FStStrCopy var_94
  loc_68C365: FLdRfVar var_94
  loc_68C368: LitI4 7
  loc_68C36D: PopTmpLdAdStr var_90
  loc_68C370: LitI2_Byte &H4E
  loc_68C372: PopTmpLdAd2 var_8A
  loc_68C375: ImpAdLdRf MemVar_74C7D0
  loc_68C378: NewIfNullPr clsMsg
  loc_68C37B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C380: ILdRf var_1D8
  loc_68C383: FLdPrThis
  loc_68C384: VCallAd Control_ID_Label8
  loc_68C387: FStAdFunc var_88
  loc_68C38A: FLdPr var_88
  loc_68C38D: Me.Caption = from_stack_1
  loc_68C392: FFreeStr var_94 = ""
  loc_68C399: FFree1Ad var_88
  loc_68C39C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C3B3: FLdRfVar var_1D8
  loc_68C3B6: LitVar_Missing var_1D4
  loc_68C3B9: LitVar_Missing var_1B4
  loc_68C3BC: LitVar_Missing var_194
  loc_68C3BF: LitVar_Missing var_174
  loc_68C3C2: LitVar_Missing var_154
  loc_68C3C5: LitVar_Missing var_134
  loc_68C3C8: LitVar_Missing var_114
  loc_68C3CB: LitVar_Missing var_F4
  loc_68C3CE: LitVar_Missing var_D4
  loc_68C3D1: LitVar_Missing var_B4
  loc_68C3D4: LitStr "Fecha del último archivo recibido"
  loc_68C3D7: FStStrCopy var_94
  loc_68C3DA: FLdRfVar var_94
  loc_68C3DD: LitI4 8
  loc_68C3E2: PopTmpLdAdStr var_90
  loc_68C3E5: LitI2_Byte &H4E
  loc_68C3E7: PopTmpLdAd2 var_8A
  loc_68C3EA: ImpAdLdRf MemVar_74C7D0
  loc_68C3ED: NewIfNullPr clsMsg
  loc_68C3F0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C3F5: ILdRf var_1D8
  loc_68C3F8: FLdPrThis
  loc_68C3F9: VCallAd Control_ID_Label9
  loc_68C3FC: FStAdFunc var_88
  loc_68C3FF: FLdPr var_88
  loc_68C402: Me.Caption = from_stack_1
  loc_68C407: FFreeStr var_94 = ""
  loc_68C40E: FFree1Ad var_88
  loc_68C411: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C428: FLdRfVar var_1D8
  loc_68C42B: LitVar_Missing var_1D4
  loc_68C42E: LitVar_Missing var_1B4
  loc_68C431: LitVar_Missing var_194
  loc_68C434: LitVar_Missing var_174
  loc_68C437: LitVar_Missing var_154
  loc_68C43A: LitVar_Missing var_134
  loc_68C43D: LitVar_Missing var_114
  loc_68C440: LitVar_Missing var_F4
  loc_68C443: LitVar_Missing var_D4
  loc_68C446: LitVar_Missing var_B4
  loc_68C449: LitStr "Archivo de Recibo"
  loc_68C44C: FStStrCopy var_94
  loc_68C44F: FLdRfVar var_94
  loc_68C452: LitI4 9
  loc_68C457: PopTmpLdAdStr var_90
  loc_68C45A: LitI2_Byte &H4E
  loc_68C45C: PopTmpLdAd2 var_8A
  loc_68C45F: ImpAdLdRf MemVar_74C7D0
  loc_68C462: NewIfNullPr clsMsg
  loc_68C465: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C46A: ILdRf var_1D8
  loc_68C46D: FLdPrThis
  loc_68C46E: VCallAd Control_ID_Frame4
  loc_68C471: FStAdFunc var_88
  loc_68C474: FLdPr var_88
  loc_68C477: Me.Caption = from_stack_1
  loc_68C47C: FFreeStr var_94 = ""
  loc_68C483: FFree1Ad var_88
  loc_68C486: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C49D: FLdRfVar var_1D8
  loc_68C4A0: LitVar_Missing var_1D4
  loc_68C4A3: LitVar_Missing var_1B4
  loc_68C4A6: LitVar_Missing var_194
  loc_68C4A9: LitVar_Missing var_174
  loc_68C4AC: LitVar_Missing var_154
  loc_68C4AF: LitVar_Missing var_134
  loc_68C4B2: LitVar_Missing var_114
  loc_68C4B5: LitVar_Missing var_F4
  loc_68C4B8: LitVar_Missing var_D4
  loc_68C4BB: LitVar_Missing var_B4
  loc_68C4BE: LitStr "&Imprimir"
  loc_68C4C1: FStStrCopy var_94
  loc_68C4C4: FLdRfVar var_94
  loc_68C4C7: LitI4 &HA
  loc_68C4CC: PopTmpLdAdStr var_90
  loc_68C4CF: LitI2_Byte &H4E
  loc_68C4D1: PopTmpLdAd2 var_8A
  loc_68C4D4: ImpAdLdRf MemVar_74C7D0
  loc_68C4D7: NewIfNullPr clsMsg
  loc_68C4DA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C4DF: ILdRf var_1D8
  loc_68C4E2: FLdPrThis
  loc_68C4E3: VCallAd Control_ID_cmdImprimir
  loc_68C4E6: FStAdFunc var_88
  loc_68C4E9: FLdPr var_88
  loc_68C4EC: Me.Caption = from_stack_1
  loc_68C4F1: FFreeStr var_94 = ""
  loc_68C4F8: FFree1Ad var_88
  loc_68C4FB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C512: FLdRfVar var_1D8
  loc_68C515: LitVar_Missing var_1D4
  loc_68C518: LitVar_Missing var_1B4
  loc_68C51B: LitVar_Missing var_194
  loc_68C51E: LitVar_Missing var_174
  loc_68C521: LitVar_Missing var_154
  loc_68C524: LitVar_Missing var_134
  loc_68C527: LitVar_Missing var_114
  loc_68C52A: LitVar_Missing var_F4
  loc_68C52D: LitVar_Missing var_D4
  loc_68C530: LitVar_Missing var_B4
  loc_68C533: LitStr "&Salir"
  loc_68C536: FStStrCopy var_94
  loc_68C539: FLdRfVar var_94
  loc_68C53C: LitI4 &HB
  loc_68C541: PopTmpLdAdStr var_90
  loc_68C544: LitI2_Byte &H4E
  loc_68C546: PopTmpLdAd2 var_8A
  loc_68C549: ImpAdLdRf MemVar_74C7D0
  loc_68C54C: NewIfNullPr clsMsg
  loc_68C54F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68C554: ILdRf var_1D8
  loc_68C557: FLdPrThis
  loc_68C558: VCallAd Control_ID_cmdSalir
  loc_68C55B: FStAdFunc var_88
  loc_68C55E: FLdPr var_88
  loc_68C561: Me.Caption = from_stack_1
  loc_68C566: FFreeStr var_94 = ""
  loc_68C56D: FFree1Ad var_88
  loc_68C570: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_68C587: ExitProcHresult
End Sub

Private Sub Form_Activate() '6B366C
  'Data Table: 43EF28
  loc_6B2ED0: FLdRfVar var_96
  loc_6B2ED3: FLdRfVar var_88
  loc_6B2ED6: FLdRfVar var_94
  loc_6B2ED9: ImpAdLdRf MemVar_74C760
  loc_6B2EDC: NewIfNullPr Formx
  loc_6B2EDF: from_stack_1v = Formx.global_4589716Get()
  loc_6B2EE4: FLdPr var_94
  loc_6B2EE7: Formx.Palette = from_stack_1
  loc_6B2EEC: FLdI2 var_96
  loc_6B2EEF: NotI4
  loc_6B2EF0: FFree1Ad var_94
  loc_6B2EF3: BranchF loc_6B2F22
  loc_6B2EF6: FLdRfVar var_A8
  loc_6B2EF9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B2EFE: FLdRfVar var_A8
  loc_6B2F01: CBoolVarNull
  loc_6B2F03: FFree1Var var_A8 = ""
  loc_6B2F06: BranchF loc_6B2F1F
  loc_6B2F09: ILdRf Me
  loc_6B2F0C: FStAdNoPop
  loc_6B2F10: ImpAdLdRf MemVar_7520D4
  loc_6B2F13: NewIfNullPr Global
  loc_6B2F16: Global.Unload from_stack_1
  loc_6B2F1B: FFree1Ad var_94
  loc_6B2F1E: ExitProcHresult
  loc_6B2F1F: Branch loc_6B2ED0
  loc_6B2F22: ILdRf var_88
  loc_6B2F25: FnLenStr
  loc_6B2F26: LitI4 &HA
  loc_6B2F2B: LtI4
  loc_6B2F2C: BranchF loc_6B2F55
  loc_6B2F2F: LitVarStr var_B8, "0"
  loc_6B2F34: FStVarCopyObj var_A8
  loc_6B2F37: FLdRfVar var_A8
  loc_6B2F3A: LitI4 &HC8
  loc_6B2F3F: FLdRfVar var_C8
  loc_6B2F42: ImpAdCallFPR4  = String(, )
  loc_6B2F47: FLdRfVar var_C8
  loc_6B2F4A: CStrVarTmp
  loc_6B2F4B: FStStr var_88
  loc_6B2F4E: FFreeVar var_A8 = ""
  loc_6B2F55: LitVarI2 var_A8, 8
  loc_6B2F5A: LitI4 1
  loc_6B2F5F: ILdRf var_88
  loc_6B2F62: ImpAdCallI2 Mid$(, , )
  loc_6B2F67: FStStrNoPop var_CC
  loc_6B2F6A: LitStr "00000000"
  loc_6B2F6D: EqStr
  loc_6B2F6F: FFree1Str var_CC
  loc_6B2F72: FFree1Var var_A8 = ""
  loc_6B2F75: BranchF loc_6B2FF0
  loc_6B2F78: FLdRfVar var_1E4
  loc_6B2F7B: LitVar_Missing var_1E0
  loc_6B2F7E: LitVar_Missing var_1C0
  loc_6B2F81: LitVar_Missing var_1A0
  loc_6B2F84: LitVar_Missing var_180
  loc_6B2F87: LitVar_Missing var_160
  loc_6B2F8A: LitVar_Missing var_140
  loc_6B2F8D: LitVar_Missing var_120
  loc_6B2F90: LitVar_Missing var_100
  loc_6B2F93: LitVar_Missing var_C8
  loc_6B2F96: LitVar_Missing var_A8
  loc_6B2F99: LitStr "Desconocida"
  loc_6B2F9C: FStStrCopy var_CC
  loc_6B2F9F: FLdRfVar var_CC
  loc_6B2FA2: LitI4 &HE
  loc_6B2FA7: PopTmpLdAdStr var_D0
  loc_6B2FAA: LitI2_Byte &H4E
  loc_6B2FAC: PopTmpLdAd2 var_96
  loc_6B2FAF: ImpAdLdRf MemVar_74C7D0
  loc_6B2FB2: NewIfNullPr clsMsg
  loc_6B2FB5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B2FBA: ILdRf var_1E4
  loc_6B2FBD: FLdPrThis
  loc_6B2FBE: VCallAd Control_ID_txtFechaBlanca
  loc_6B2FC1: FStAdFunc var_94
  loc_6B2FC4: FLdPr var_94
  loc_6B2FC7: Me.Text = from_stack_1
  loc_6B2FCC: FFreeStr var_CC = ""
  loc_6B2FD3: FFree1Ad var_94
  loc_6B2FD6: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6B2FED: Branch loc_6B3081
  loc_6B2FF0: LitVarI2 var_A8, 2
  loc_6B2FF5: LitI4 1
  loc_6B2FFA: ILdRf var_88
  loc_6B2FFD: ImpAdCallI2 Mid$(, , )
  loc_6B3002: FStStrNoPop var_CC
  loc_6B3005: LitStr "/"
  loc_6B3008: ConcatStr
  loc_6B3009: FStStrNoPop var_1E4
  loc_6B300C: LitVarI2 var_C8, 2
  loc_6B3011: LitI4 3
  loc_6B3016: ILdRf var_88
  loc_6B3019: ImpAdCallI2 Mid$(, , )
  loc_6B301E: FStStrNoPop var_1E8
  loc_6B3021: ConcatStr
  loc_6B3022: FStStrNoPop var_1EC
  loc_6B3025: LitStr "/"
  loc_6B3028: ConcatStr
  loc_6B3029: FStStrNoPop var_1F0
  loc_6B302C: LitVarI2 var_100, 4
  loc_6B3031: LitI4 5
  loc_6B3036: ILdRf var_88
  loc_6B3039: ImpAdCallI2 Mid$(, , )
  loc_6B303E: FStStrNoPop var_1F4
  loc_6B3041: ConcatStr
  loc_6B3042: FStStr var_8C
  loc_6B3045: FFreeStr var_CC = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_6B3054: FFreeVar var_A8 = "": var_C8 = ""
  loc_6B305D: ILdRf var_8C
  loc_6B3060: CDateStr
  loc_6B3062: LitI2_Byte 7
  loc_6B3064: CR8I2
  loc_6B3065: AddR8
  loc_6B3066: CDateR8
  loc_6B3067: CStrDate
  loc_6B3069: FStStrNoPop var_CC
  loc_6B306C: FLdPrThis
  loc_6B306D: VCallAd Control_ID_txtFechaBlanca
  loc_6B3070: FStAdFunc var_94
  loc_6B3073: FLdPr var_94
  loc_6B3076: Me.Text = from_stack_1
  loc_6B307B: FFree1Str var_CC
  loc_6B307E: FFree1Ad var_94
  loc_6B3081: LitVarI2 var_A8, 10
  loc_6B3086: LitI4 9
  loc_6B308B: ILdRf var_88
  loc_6B308E: ImpAdCallI2 Mid$(, , )
  loc_6B3093: FStStrNoPop var_CC
  loc_6B3096: LitStr "0000000000"
  loc_6B3099: EqStr
  loc_6B309B: FFree1Str var_CC
  loc_6B309E: FFree1Var var_A8 = ""
  loc_6B30A1: BranchF loc_6B30BC
  loc_6B30A4: LitStr "Desconocida"
  loc_6B30A7: FLdPrThis
  loc_6B30A8: VCallAd Control_ID_txtFechaRecibiBlanca
  loc_6B30AB: FStAdFunc var_94
  loc_6B30AE: FLdPr var_94
  loc_6B30B1: Me.Text = from_stack_1
  loc_6B30B6: FFree1Ad var_94
  loc_6B30B9: Branch loc_6B3165
  loc_6B30BC: LitVarI2 var_A8, 10
  loc_6B30C1: LitI4 9
  loc_6B30C6: ILdRf var_88
  loc_6B30C9: ImpAdCallI2 Mid$(, , )
  loc_6B30CE: FStStrNoPop var_CC
  loc_6B30D1: FLdPrThis
  loc_6B30D2: VCallAd Control_ID_txtFechaRecibiBlanca
  loc_6B30D5: FStAdFunc var_94
  loc_6B30D8: FLdPr var_94
  loc_6B30DB: Me.Text = from_stack_1
  loc_6B30E0: FFree1Str var_CC
  loc_6B30E3: FFree1Ad var_94
  loc_6B30E6: FFree1Var var_A8 = ""
  loc_6B30E9: LitVarI2 var_A8, 8
  loc_6B30EE: LitI4 &H13
  loc_6B30F3: ILdRf var_88
  loc_6B30F6: ImpAdCallI2 Mid$(, , )
  loc_6B30FB: FStStrNoPop var_CC
  loc_6B30FE: LitStr "00000000"
  loc_6B3101: NeStr
  loc_6B3103: FFree1Str var_CC
  loc_6B3106: FFree1Var var_A8 = ""
  loc_6B3109: BranchF loc_6B3165
  loc_6B310C: FLdRfVar var_CC
  loc_6B310F: FLdPrThis
  loc_6B3110: VCallAd Control_ID_txtFechaRecibiBlanca
  loc_6B3113: FStAdFunc var_94
  loc_6B3116: FLdPr var_94
  loc_6B3119:  = Me.Text
  loc_6B311E: ILdRf var_CC
  loc_6B3121: LitStr "  "
  loc_6B3124: ConcatStr
  loc_6B3125: FStStrNoPop var_1E4
  loc_6B3128: LitVarI2 var_A8, 8
  loc_6B312D: LitI4 &H13
  loc_6B3132: ILdRf var_88
  loc_6B3135: ImpAdCallI2 Mid$(, , )
  loc_6B313A: FStStrNoPop var_1E8
  loc_6B313D: ConcatStr
  loc_6B313E: FStStrNoPop var_1EC
  loc_6B3141: FLdPrThis
  loc_6B3142: VCallAd Control_ID_txtFechaRecibiBlanca
  loc_6B3145: FStAdFunc var_1F8
  loc_6B3148: FLdPr var_1F8
  loc_6B314B: Me.Text = from_stack_1
  loc_6B3150: FFreeStr var_CC = "": var_1E4 = "": var_1E8 = ""
  loc_6B315B: FFreeAd var_94 = ""
  loc_6B3162: FFree1Var var_A8 = ""
  loc_6B3165: LitVarI2 var_A8, 8
  loc_6B316A: LitI4 &H1B
  loc_6B316F: ILdRf var_88
  loc_6B3172: ImpAdCallI2 Mid$(, , )
  loc_6B3177: FStStrNoPop var_CC
  loc_6B317A: LitStr "00000000"
  loc_6B317D: EqStr
  loc_6B317F: FFree1Str var_CC
  loc_6B3182: FFree1Var var_A8 = ""
  loc_6B3185: BranchF loc_6B31A0
  loc_6B3188: LitStr "Desconocida"
  loc_6B318B: FLdPrThis
  loc_6B318C: VCallAd Control_ID_txtFechaNegra
  loc_6B318F: FStAdFunc var_94
  loc_6B3192: FLdPr var_94
  loc_6B3195: Me.Text = from_stack_1
  loc_6B319A: FFree1Ad var_94
  loc_6B319D: Branch loc_6B3231
  loc_6B31A0: LitVarI2 var_A8, 2
  loc_6B31A5: LitI4 &H1B
  loc_6B31AA: ILdRf var_88
  loc_6B31AD: ImpAdCallI2 Mid$(, , )
  loc_6B31B2: FStStrNoPop var_CC
  loc_6B31B5: LitStr "/"
  loc_6B31B8: ConcatStr
  loc_6B31B9: FStStrNoPop var_1E4
  loc_6B31BC: LitVarI2 var_C8, 2
  loc_6B31C1: LitI4 &H1D
  loc_6B31C6: ILdRf var_88
  loc_6B31C9: ImpAdCallI2 Mid$(, , )
  loc_6B31CE: FStStrNoPop var_1E8
  loc_6B31D1: ConcatStr
  loc_6B31D2: FStStrNoPop var_1EC
  loc_6B31D5: LitStr "/"
  loc_6B31D8: ConcatStr
  loc_6B31D9: FStStrNoPop var_1F0
  loc_6B31DC: LitVarI2 var_100, 4
  loc_6B31E1: LitI4 &H1F
  loc_6B31E6: ILdRf var_88
  loc_6B31E9: ImpAdCallI2 Mid$(, , )
  loc_6B31EE: FStStrNoPop var_1F4
  loc_6B31F1: ConcatStr
  loc_6B31F2: FStStr var_8C
  loc_6B31F5: FFreeStr var_CC = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_6B3204: FFreeVar var_A8 = "": var_C8 = ""
  loc_6B320D: ILdRf var_8C
  loc_6B3210: CDateStr
  loc_6B3212: LitI2_Byte 7
  loc_6B3214: CR8I2
  loc_6B3215: AddR8
  loc_6B3216: CDateR8
  loc_6B3217: CStrDate
  loc_6B3219: FStStrNoPop var_CC
  loc_6B321C: FLdPrThis
  loc_6B321D: VCallAd Control_ID_txtFechaNegra
  loc_6B3220: FStAdFunc var_94
  loc_6B3223: FLdPr var_94
  loc_6B3226: Me.Text = from_stack_1
  loc_6B322B: FFree1Str var_CC
  loc_6B322E: FFree1Ad var_94
  loc_6B3231: LitVarI2 var_A8, 10
  loc_6B3236: LitI4 &H23
  loc_6B323B: ILdRf var_88
  loc_6B323E: ImpAdCallI2 Mid$(, , )
  loc_6B3243: FStStrNoPop var_CC
  loc_6B3246: LitStr "0000000000"
  loc_6B3249: EqStr
  loc_6B324B: FFree1Str var_CC
  loc_6B324E: FFree1Var var_A8 = ""
  loc_6B3251: BranchF loc_6B32CC
  loc_6B3254: FLdRfVar var_1E4
  loc_6B3257: LitVar_Missing var_1E0
  loc_6B325A: LitVar_Missing var_1C0
  loc_6B325D: LitVar_Missing var_1A0
  loc_6B3260: LitVar_Missing var_180
  loc_6B3263: LitVar_Missing var_160
  loc_6B3266: LitVar_Missing var_140
  loc_6B3269: LitVar_Missing var_120
  loc_6B326C: LitVar_Missing var_100
  loc_6B326F: LitVar_Missing var_C8
  loc_6B3272: LitVar_Missing var_A8
  loc_6B3275: LitStr "Desconocida"
  loc_6B3278: FStStrCopy var_CC
  loc_6B327B: FLdRfVar var_CC
  loc_6B327E: LitI4 &HE
  loc_6B3283: PopTmpLdAdStr var_D0
  loc_6B3286: LitI2_Byte &H4E
  loc_6B3288: PopTmpLdAd2 var_96
  loc_6B328B: ImpAdLdRf MemVar_74C7D0
  loc_6B328E: NewIfNullPr clsMsg
  loc_6B3291: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B3296: ILdRf var_1E4
  loc_6B3299: FLdPrThis
  loc_6B329A: VCallAd Control_ID_txtFechaRecibiNegra
  loc_6B329D: FStAdFunc var_94
  loc_6B32A0: FLdPr var_94
  loc_6B32A3: Me.Text = from_stack_1
  loc_6B32A8: FFreeStr var_CC = ""
  loc_6B32AF: FFree1Ad var_94
  loc_6B32B2: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6B32C9: Branch loc_6B3375
  loc_6B32CC: LitVarI2 var_A8, 10
  loc_6B32D1: LitI4 9
  loc_6B32D6: ILdRf var_88
  loc_6B32D9: ImpAdCallI2 Mid$(, , )
  loc_6B32DE: FStStrNoPop var_CC
  loc_6B32E1: FLdPrThis
  loc_6B32E2: VCallAd Control_ID_txtFechaRecibiNegra
  loc_6B32E5: FStAdFunc var_94
  loc_6B32E8: FLdPr var_94
  loc_6B32EB: Me.Text = from_stack_1
  loc_6B32F0: FFree1Str var_CC
  loc_6B32F3: FFree1Ad var_94
  loc_6B32F6: FFree1Var var_A8 = ""
  loc_6B32F9: LitVarI2 var_A8, 8
  loc_6B32FE: LitI4 &H2D
  loc_6B3303: ILdRf var_88
  loc_6B3306: ImpAdCallI2 Mid$(, , )
  loc_6B330B: FStStrNoPop var_CC
  loc_6B330E: LitStr "00000000"
  loc_6B3311: NeStr
  loc_6B3313: FFree1Str var_CC
  loc_6B3316: FFree1Var var_A8 = ""
  loc_6B3319: BranchF loc_6B3375
  loc_6B331C: FLdRfVar var_CC
  loc_6B331F: FLdPrThis
  loc_6B3320: VCallAd Control_ID_txtFechaRecibiNegra
  loc_6B3323: FStAdFunc var_94
  loc_6B3326: FLdPr var_94
  loc_6B3329:  = Me.Text
  loc_6B332E: ILdRf var_CC
  loc_6B3331: LitStr "  "
  loc_6B3334: ConcatStr
  loc_6B3335: FStStrNoPop var_1E4
  loc_6B3338: LitVarI2 var_A8, 8
  loc_6B333D: LitI4 &H13
  loc_6B3342: ILdRf var_88
  loc_6B3345: ImpAdCallI2 Mid$(, , )
  loc_6B334A: FStStrNoPop var_1E8
  loc_6B334D: ConcatStr
  loc_6B334E: FStStrNoPop var_1EC
  loc_6B3351: FLdPrThis
  loc_6B3352: VCallAd Control_ID_txtFechaRecibiNegra
  loc_6B3355: FStAdFunc var_1F8
  loc_6B3358: FLdPr var_1F8
  loc_6B335B: Me.Text = from_stack_1
  loc_6B3360: FFreeStr var_CC = "": var_1E4 = "": var_1E8 = ""
  loc_6B336B: FFreeAd var_94 = ""
  loc_6B3372: FFree1Var var_A8 = ""
  loc_6B3375: LitVarI2 var_A8, 19
  loc_6B337A: LitI4 &H35
  loc_6B337F: ILdRf var_88
  loc_6B3382: ImpAdCallI2 Mid$(, , )
  loc_6B3387: CVarStr var_120
  loc_6B338A: HardType
  loc_6B338B: LitVarStr var_E0, "0"
  loc_6B3390: FStVarCopyObj var_C8
  loc_6B3393: FLdRfVar var_C8
  loc_6B3396: LitI4 &H13
  loc_6B339B: FLdRfVar var_100
  loc_6B339E: ImpAdCallFPR4  = String(, )
  loc_6B33A3: FLdRfVar var_100
  loc_6B33A6: EqVarBool
  loc_6B33A8: FFreeVar var_A8 = "": var_C8 = "": var_120 = ""
  loc_6B33B3: BranchF loc_6B342E
  loc_6B33B6: FLdRfVar var_1E4
  loc_6B33B9: LitVar_Missing var_1E0
  loc_6B33BC: LitVar_Missing var_1C0
  loc_6B33BF: LitVar_Missing var_1A0
  loc_6B33C2: LitVar_Missing var_180
  loc_6B33C5: LitVar_Missing var_160
  loc_6B33C8: LitVar_Missing var_140
  loc_6B33CB: LitVar_Missing var_120
  loc_6B33CE: LitVar_Missing var_100
  loc_6B33D1: LitVar_Missing var_C8
  loc_6B33D4: LitVar_Missing var_A8
  loc_6B33D7: LitStr "Desconocida"
  loc_6B33DA: FStStrCopy var_CC
  loc_6B33DD: FLdRfVar var_CC
  loc_6B33E0: LitI4 &HE
  loc_6B33E5: PopTmpLdAdStr var_D0
  loc_6B33E8: LitI2_Byte &H4E
  loc_6B33EA: PopTmpLdAd2 var_96
  loc_6B33ED: ImpAdLdRf MemVar_74C7D0
  loc_6B33F0: NewIfNullPr clsMsg
  loc_6B33F3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B33F8: ILdRf var_1E4
  loc_6B33FB: FLdPrThis
  loc_6B33FC: VCallAd Control_ID_txtArchivoEnviado
  loc_6B33FF: FStAdFunc var_94
  loc_6B3402: FLdPr var_94
  loc_6B3405: Me.Text = from_stack_1
  loc_6B340A: FFreeStr var_CC = ""
  loc_6B3411: FFree1Ad var_94
  loc_6B3414: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6B342B: Branch loc_6B345B
  loc_6B342E: LitVarI2 var_A8, 19
  loc_6B3433: LitI4 &H35
  loc_6B3438: ILdRf var_88
  loc_6B343B: ImpAdCallI2 Mid$(, , )
  loc_6B3440: FStStrNoPop var_CC
  loc_6B3443: FLdPrThis
  loc_6B3444: VCallAd Control_ID_txtArchivoEnviado
  loc_6B3447: FStAdFunc var_94
  loc_6B344A: FLdPr var_94
  loc_6B344D: Me.Text = from_stack_1
  loc_6B3452: FFree1Str var_CC
  loc_6B3455: FFree1Ad var_94
  loc_6B3458: FFree1Var var_A8 = ""
  loc_6B345B: LitVarI2 var_A8, 19
  loc_6B3460: LitI4 &H48
  loc_6B3465: ILdRf var_88
  loc_6B3468: ImpAdCallI2 Mid$(, , )
  loc_6B346D: CVarStr var_120
  loc_6B3470: HardType
  loc_6B3471: LitVarStr var_E0, "0"
  loc_6B3476: FStVarCopyObj var_C8
  loc_6B3479: FLdRfVar var_C8
  loc_6B347C: LitI4 &H13
  loc_6B3481: FLdRfVar var_100
  loc_6B3484: ImpAdCallFPR4  = String(, )
  loc_6B3489: FLdRfVar var_100
  loc_6B348C: EqVarBool
  loc_6B348E: FFreeVar var_A8 = "": var_C8 = "": var_120 = ""
  loc_6B3499: BranchF loc_6B3514
  loc_6B349C: FLdRfVar var_1E4
  loc_6B349F: LitVar_Missing var_1E0
  loc_6B34A2: LitVar_Missing var_1C0
  loc_6B34A5: LitVar_Missing var_1A0
  loc_6B34A8: LitVar_Missing var_180
  loc_6B34AB: LitVar_Missing var_160
  loc_6B34AE: LitVar_Missing var_140
  loc_6B34B1: LitVar_Missing var_120
  loc_6B34B4: LitVar_Missing var_100
  loc_6B34B7: LitVar_Missing var_C8
  loc_6B34BA: LitVar_Missing var_A8
  loc_6B34BD: LitStr "Desconocida"
  loc_6B34C0: FStStrCopy var_CC
  loc_6B34C3: FLdRfVar var_CC
  loc_6B34C6: LitI4 &HE
  loc_6B34CB: PopTmpLdAdStr var_D0
  loc_6B34CE: LitI2_Byte &H4E
  loc_6B34D0: PopTmpLdAd2 var_96
  loc_6B34D3: ImpAdLdRf MemVar_74C7D0
  loc_6B34D6: NewIfNullPr clsMsg
  loc_6B34D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B34DE: ILdRf var_1E4
  loc_6B34E1: FLdPrThis
  loc_6B34E2: VCallAd Control_ID_txtArchivoRecibido
  loc_6B34E5: FStAdFunc var_94
  loc_6B34E8: FLdPr var_94
  loc_6B34EB: Me.Text = from_stack_1
  loc_6B34F0: FFreeStr var_CC = ""
  loc_6B34F7: FFree1Ad var_94
  loc_6B34FA: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6B3511: Branch loc_6B3541
  loc_6B3514: LitVarI2 var_A8, 19
  loc_6B3519: LitI4 &H48
  loc_6B351E: ILdRf var_88
  loc_6B3521: ImpAdCallI2 Mid$(, , )
  loc_6B3526: FStStrNoPop var_CC
  loc_6B3529: FLdPrThis
  loc_6B352A: VCallAd Control_ID_txtArchivoRecibido
  loc_6B352D: FStAdFunc var_94
  loc_6B3530: FLdPr var_94
  loc_6B3533: Me.Text = from_stack_1
  loc_6B3538: FFree1Str var_CC
  loc_6B353B: FFree1Ad var_94
  loc_6B353E: FFree1Var var_A8 = ""
  loc_6B3541: FLdRfVar var_96
  loc_6B3544: FLdRfVar var_88
  loc_6B3547: FLdRfVar var_94
  loc_6B354A: ImpAdLdRf MemVar_74C760
  loc_6B354D: NewIfNullPr Formx
  loc_6B3550: from_stack_1v = Formx.global_4589716Get()
  loc_6B3555: FLdPr var_94
  loc_6B3558:  = Formx.PaletteMode
  loc_6B355D: FLdI2 var_96
  loc_6B3560: NotI4
  loc_6B3561: FFree1Ad var_94
  loc_6B3564: BranchF loc_6B3593
  loc_6B3567: FLdRfVar var_A8
  loc_6B356A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B356F: FLdRfVar var_A8
  loc_6B3572: CBoolVarNull
  loc_6B3574: FFree1Var var_A8 = ""
  loc_6B3577: BranchF loc_6B3590
  loc_6B357A: ILdRf Me
  loc_6B357D: FStAdNoPop
  loc_6B3581: ImpAdLdRf MemVar_7520D4
  loc_6B3584: NewIfNullPr Global
  loc_6B3587: Global.Unload from_stack_1
  loc_6B358C: FFree1Ad var_94
  loc_6B358F: ExitProcHresult
  loc_6B3590: Branch loc_6B3541
  loc_6B3593: ILdRf var_88
  loc_6B3596: FnLenStr
  loc_6B3597: LitI4 &HA
  loc_6B359C: LtI4
  loc_6B359D: BranchF loc_6B35C9
  loc_6B35A0: LitI2_Byte 0
  loc_6B35A2: FLdPrThis
  loc_6B35A3: VCallAd Control_ID_cboRecibo
  loc_6B35A6: FStAdFunc var_94
  loc_6B35A9: FLdPr var_94
  loc_6B35AC: Me.Enabled = from_stack_1b
  loc_6B35B1: FFree1Ad var_94
  loc_6B35B4: LitI2_Byte 0
  loc_6B35B6: FLdPrThis
  loc_6B35B7: VCallAd Control_ID_cmdImprimir
  loc_6B35BA: FStAdFunc var_94
  loc_6B35BD: FLdPr var_94
  loc_6B35C0: Me.Enabled = from_stack_1b
  loc_6B35C5: FFree1Ad var_94
  loc_6B35C8: ExitProcHresult
  loc_6B35C9: LitI2_Byte 1
  loc_6B35CB: FStI2 var_8E
  loc_6B35CE: FLdI2 var_8E
  loc_6B35D1: CI4UI1
  loc_6B35D2: ILdRf var_88
  loc_6B35D5: FnLenStr
  loc_6B35D6: LtI4
  loc_6B35D7: BranchF loc_6B3657
  loc_6B35DA: LitVarI2 var_A8, 10
  loc_6B35DF: FLdI2 var_8E
  loc_6B35E2: CI4UI1
  loc_6B35E3: ILdRf var_88
  loc_6B35E6: ImpAdCallI2 Mid$(, , )
  loc_6B35EB: FStStr var_1EC
  loc_6B35EE: LitVarI2 var_C8, 10
  loc_6B35F3: LitI4 1
  loc_6B35F8: FLdZeroAd var_1EC
  loc_6B35FB: FStStrNoPop var_CC
  loc_6B35FE: CR8Str
  loc_6B3600: LitI2_Byte &H18
  loc_6B3602: CR8I2
  loc_6B3603: DivR8
  loc_6B3604: FnCDblR8
  loc_6B3606: CDateR8
  loc_6B3607: LitStr "01/01/1970"
  loc_6B360A: CDateStr
  loc_6B360C: AddR8
  loc_6B360D: CDateR8
  loc_6B360E: CStrDate
  loc_6B3610: FStStrNoPop var_1E4
  loc_6B3613: ImpAdCallI2 Mid$(, , )
  loc_6B3618: FStStr var_1F0
  loc_6B361B: LitVar_Missing var_F0
  loc_6B361E: PopAdLdVar
  loc_6B361F: FLdZeroAd var_1F0
  loc_6B3622: FStStrNoPop var_1E8
  loc_6B3625: FLdPrThis
  loc_6B3626: VCallAd Control_ID_cboRecibo
  loc_6B3629: FStAdFunc var_94
  loc_6B362C: FLdPr var_94
  loc_6B362F: Me.AddItem from_stack_1, from_stack_2
  loc_6B3634: FFreeStr var_CC = "": var_1E4 = "": var_1E8 = "": var_1EC = ""
  loc_6B3641: FFree1Ad var_94
  loc_6B3644: FFreeVar var_A8 = ""
  loc_6B364B: FLdI2 var_8E
  loc_6B364E: LitI2_Byte &HA
  loc_6B3650: AddI2
  loc_6B3651: FStI2 var_8E
  loc_6B3654: Branch loc_6B35CE
  loc_6B3657: LitI2_Byte 0
  loc_6B3659: FLdPrThis
  loc_6B365A: VCallAd Control_ID_cboRecibo
  loc_6B365D: FStAdFunc var_94
  loc_6B3660: FLdPr var_94
  loc_6B3663: Me.ListIndex = from_stack_1
  loc_6B3668: FFree1Ad var_94
  loc_6B366B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '5D1A60
  'Data Table: 43EF28
  loc_5D1A48: ILdRf Me
  loc_5D1A4B: FStAdNoPop
  loc_5D1A4F: ImpAdLdRf MemVar_7520D4
  loc_5D1A52: NewIfNullPr Global
  loc_5D1A55: Global.Unload from_stack_1
  loc_5D1A5A: FFree1Ad var_88
  loc_5D1A5D: ExitProcHresult
End Sub

Private Sub cmdForzada_Click() '666B10
  'Data Table: 43EF28
  loc_6667E0: FLdRfVar var_1D4
  loc_6667E3: LitVar_Missing var_1D0
  loc_6667E6: LitVar_Missing var_1B0
  loc_6667E9: LitVar_Missing var_190
  loc_6667EC: LitVar_Missing var_170
  loc_6667EF: LitVar_Missing var_150
  loc_6667F2: LitVar_Missing var_130
  loc_6667F5: LitVar_Missing var_110
  loc_6667F8: LitVar_Missing var_F0
  loc_6667FB: LitVar_Missing var_D0
  loc_6667FE: LitVar_Missing var_B0
  loc_666801: LitStr "¿Está seguro de realizar una Llamada Forzada?"
  loc_666804: FStStrCopy var_90
  loc_666807: FLdRfVar var_90
  loc_66680A: LitI4 &HF
  loc_66680F: PopTmpLdAdStr var_8C
  loc_666812: LitI2_Byte &H4E
  loc_666814: PopTmpLdAd2 var_86
  loc_666817: ImpAdLdRf MemVar_74C7D0
  loc_66681A: NewIfNullPr clsMsg
  loc_66681D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_666822: LitVar_Missing var_244
  loc_666825: LitVar_Missing var_224
  loc_666828: LitVar_Missing var_204
  loc_66682B: LitI4 &H124
  loc_666830: FLdZeroAd var_1D4
  loc_666833: CVarStr var_1E4
  loc_666836: ImpAdCallI2 MsgBox(, , , , )
  loc_66683B: LitI4 6
  loc_666840: EqI4
  loc_666841: FFree1Str var_90
  loc_666844: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_666863: BranchF loc_6669F2
  loc_666866: OnErrorGoto loc_6669F3
  loc_666869: LitI4 &H12C
  loc_66686E: ImpAdCallI2 Space$()
  loc_666873: FStStr var_248
  loc_666876: LitI4 &H32
  loc_66687B: ImpAdCallI2 Space$()
  loc_666880: FStStr var_24C
  loc_666883: LitStr "CTFSERVICE.INI"
  loc_666886: FLdRfVar var_25C
  loc_666889: CStr2Ansi
  loc_66688A: ILdRf var_25C
  loc_66688D: LitI4 &H12C
  loc_666892: ILdRf var_248
  loc_666895: FLdRfVar var_258
  loc_666898: CStr2Ansi
  loc_666899: ILdRf var_258
  loc_66689C: LitStr "C:\Archivos de programa\POLIMAIL"
  loc_66689F: FLdRfVar var_254
  loc_6668A2: CStr2Ansi
  loc_6668A3: ILdRf var_254
  loc_6668A6: LitStr "Llamada_Forzada"
  loc_6668A9: FLdRfVar var_1D4
  loc_6668AC: CStr2Ansi
  loc_6668AD: ILdRf var_1D4
  loc_6668B0: LitStr "Polinet"
  loc_6668B3: FLdRfVar var_90
  loc_6668B6: CStr2Ansi
  loc_6668B7: ILdRf var_90
  loc_6668BA: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_6668BF: SetLastSystemError
  loc_6668C0: ILdRf var_258
  loc_6668C3: FLdRfVar var_248
  loc_6668C6: CStr2Uni
  loc_6668C8: FFreeStr var_90 = "": var_1D4 = "": var_254 = "": var_258 = ""
  loc_6668D5: LitStr "CTFSERVICE.INI"
  loc_6668D8: FLdRfVar var_25C
  loc_6668DB: CStr2Ansi
  loc_6668DC: ILdRf var_25C
  loc_6668DF: LitI4 &H32
  loc_6668E4: ILdRf var_24C
  loc_6668E7: FLdRfVar var_258
  loc_6668EA: CStr2Ansi
  loc_6668EB: ILdRf var_258
  loc_6668EE: LitStr "Forcada.txt"
  loc_6668F1: FLdRfVar var_254
  loc_6668F4: CStr2Ansi
  loc_6668F5: ILdRf var_254
  loc_6668F8: LitStr "Archivo_Llamada"
  loc_6668FB: FLdRfVar var_1D4
  loc_6668FE: CStr2Ansi
  loc_6668FF: ILdRf var_1D4
  loc_666902: LitStr "Polinet"
  loc_666905: FLdRfVar var_90
  loc_666908: CStr2Ansi
  loc_666909: ILdRf var_90
  loc_66690C: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_666911: SetLastSystemError
  loc_666912: ILdRf var_258
  loc_666915: FLdRfVar var_24C
  loc_666918: CStr2Uni
  loc_66691A: FFreeStr var_90 = "": var_1D4 = "": var_254 = "": var_258 = ""
  loc_666927: ILdRf var_248
  loc_66692A: ImpAdCallI2 Trim$()
  loc_66692F: FStStr var_248
  loc_666932: ILdRf var_24C
  loc_666935: ImpAdCallI2 Trim$()
  loc_66693A: FStStr var_24C
  loc_66693D: LitI4 1
  loc_666942: ILdRf var_248
  loc_666945: ImpAdCallI2 Right$(, )
  loc_66694A: FStStrNoPop var_90
  loc_66694D: ImpAdCallI2 Asc()
  loc_666952: LitI2_Byte 0
  loc_666954: EqI2
  loc_666955: FFree1Str var_90
  loc_666958: BranchF loc_666970
  loc_66695B: ILdRf var_248
  loc_66695E: FnLenStr
  loc_66695F: LitI4 1
  loc_666964: SubI4
  loc_666965: ILdRf var_248
  loc_666968: ImpAdCallI2 Left$(, )
  loc_66696D: FStStr var_248
  loc_666970: LitI4 1
  loc_666975: ILdRf var_24C
  loc_666978: ImpAdCallI2 Right$(, )
  loc_66697D: FStStrNoPop var_90
  loc_666980: ImpAdCallI2 Asc()
  loc_666985: LitI2_Byte 0
  loc_666987: EqI2
  loc_666988: FFree1Str var_90
  loc_66698B: BranchF loc_6669A3
  loc_66698E: ILdRf var_24C
  loc_666991: FnLenStr
  loc_666992: LitI4 1
  loc_666997: SubI4
  loc_666998: ILdRf var_24C
  loc_66699B: ImpAdCallI2 Left$(, )
  loc_6669A0: FStStr var_24C
  loc_6669A3: LitVar_Missing var_B0
  loc_6669A6: ImpAdCallI2 FreeFile()
  loc_6669AB: CUI1I2
  loc_6669AD: FStUI1 var_24E
  loc_6669B1: FFree1Var var_B0 = ""
  loc_6669B4: ILdRf var_248
  loc_6669B7: LitStr "\"
  loc_6669BA: ConcatStr
  loc_6669BB: FStStrNoPop var_90
  loc_6669BE: ILdRf var_24C
  loc_6669C1: ConcatStr
  loc_6669C2: FStStrNoPop var_1D4
  loc_6669C5: FLdUI1
  loc_6669C9: CI2UI1
  loc_6669CB: LitI2_Byte &HFF
  loc_6669CD: OpenFile
  loc_6669D1: FFreeStr var_90 = ""
  loc_6669D8: LitStr "Julio"
  loc_6669DB: FLdUI1
  loc_6669DF: CI2UI1
  loc_6669E1: WriteFile
  loc_6669E7: FLdUI1
  loc_6669EB: CI2UI1
  loc_6669ED: Close
  loc_6669EF: On Error GoTo 0
  loc_6669F2: ExitProcHresult
  loc_6669F3: FLdRfVar var_1D4
  loc_6669F6: LitVar_Missing var_1D0
  loc_6669F9: LitVar_Missing var_1B0
  loc_6669FC: LitVar_Missing var_190
  loc_6669FF: LitVar_Missing var_170
  loc_666A02: LitVar_Missing var_150
  loc_666A05: LitVar_Missing var_130
  loc_666A08: LitVar_Missing var_110
  loc_666A0B: LitVar_Missing var_F0
  loc_666A0E: LitVar_Missing var_D0
  loc_666A11: LitVar_Missing var_B0
  loc_666A14: LitStr "Hubo un error al realizar la Llamada Forzada."
  loc_666A17: FStStrCopy var_90
  loc_666A1A: FLdRfVar var_90
  loc_666A1D: LitI4 &H10
  loc_666A22: PopTmpLdAdStr var_8C
  loc_666A25: LitI2_Byte &H4E
  loc_666A27: PopTmpLdAd2 var_86
  loc_666A2A: ImpAdLdRf MemVar_74C7D0
  loc_666A2D: NewIfNullPr clsMsg
  loc_666A30: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_666A35: LitI4 &HD
  loc_666A3A: ImpAdCallI2 Chr$()
  loc_666A3F: FStStr var_288
  loc_666A42: LitI4 &HD
  loc_666A47: ImpAdCallI2 Chr$()
  loc_666A4C: FStStr var_28C
  loc_666A4F: FLdRfVar var_268
  loc_666A52: ImpAdCallI2 Err 'rtcErrObj
  loc_666A57: FStAdFunc var_264
  loc_666A5A: FLdPr var_264
  loc_666A5D:  = Err.Number
  loc_666A62: FLdRfVar var_27C
  loc_666A65: ImpAdCallI2 Err 'rtcErrObj
  loc_666A6A: FStAdFunc var_278
  loc_666A6D: FLdPr var_278
  loc_666A70:  = Err.Description
  loc_666A75: LitVar_Missing var_244
  loc_666A78: LitVar_Missing var_224
  loc_666A7B: LitVar_Missing var_204
  loc_666A7E: LitI4 &H10
  loc_666A83: ILdRf var_1D4
  loc_666A86: FLdZeroAd var_288
  loc_666A89: FStStrNoPop var_254
  loc_666A8C: ConcatStr
  loc_666A8D: FStStrNoPop var_258
  loc_666A90: FLdZeroAd var_28C
  loc_666A93: FStStrNoPop var_25C
  loc_666A96: ConcatStr
  loc_666A97: FStStrNoPop var_260
  loc_666A9A: LitStr "Err ["
  loc_666A9D: ConcatStr
  loc_666A9E: FStStrNoPop var_26C
  loc_666AA1: ILdRf var_268
  loc_666AA4: CStrI4
  loc_666AA6: FStStrNoPop var_270
  loc_666AA9: ConcatStr
  loc_666AAA: FStStrNoPop var_274
  loc_666AAD: LitStr "] Desc ["
  loc_666AB0: ConcatStr
  loc_666AB1: FStStrNoPop var_280
  loc_666AB4: ILdRf var_27C
  loc_666AB7: ConcatStr
  loc_666AB8: FStStrNoPop var_284
  loc_666ABB: LitStr "]"
  loc_666ABE: ConcatStr
  loc_666ABF: CVarStr var_1E4
  loc_666AC2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_666AC7: FFreeStr var_90 = "": var_1D4 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_26C = "": var_270 = "": var_274 = "": var_280 = "": var_27C = "": var_284 = "": var_288 = ""
  loc_666AE6: FFreeAd var_264 = ""
  loc_666AED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_666B0C: ExitProcHresult
End Sub
