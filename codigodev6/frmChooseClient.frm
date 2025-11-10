VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmChooseClient
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
  ClientWidth = 11910
  ClientHeight = 6075
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame fraCuentaCorriente
    Left = 2760
    Top = 3720
    Width = 2295
    Height = 495
    TabIndex = 21
    BorderStyle = 0 'None
    Begin VB.CheckBox chkCuentaCorriente
      Caption = "Cuenta Corriente"
      Left = 0
      Top = 120
      Width = 2055
      Height = 255
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
  End
  Begin VB.TextBox txtCUIT
    Left = 2760
    Top = 3360
    Width = 2295
    Height = 375
    TabIndex = 20
    TabStop = 0   'False
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
  Begin VB.TextBox txtRazonSocial
    Left = 2760
    Top = 1800
    Width = 4455
    Height = 375
    TabIndex = 19
    TabStop = 0   'False
    MaxLength = 40
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
    Left = 9840
    Top = 5040
    Width = 1815
    Height = 735
    TabIndex = 1
    Default = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Consulta por Razon Social"
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7800
    Top = 5040
    Width = 1815
    Height = 735
    TabIndex = 3
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
  Begin VB.CommandButton cmdConsulta
    Caption = "C&onsulta"
    Left = 5760
    Top = 5040
    Width = 1815
    Height = 735
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Consulta por Razon Social"
  End
  Begin VB.TextBox txtDomicilio
    Left = 2760
    Top = 2280
    Width = 5055
    Height = 375
    TabIndex = 11
    TabStop = 0   'False
    MaxLength = 40
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
  Begin VB.TextBox txtTelefono
    Left = 2760
    Top = 2760
    Width = 2055
    Height = 375
    TabIndex = 10
    TabStop = 0   'False
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
  Begin VB.Frame fraIVA
    Caption = "IVA"
    Left = 8040
    Top = 1320
    Width = 3375
    Height = 2895
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optIVA
      Caption = "Consumidor Final"
      Index = 0
      Left = 120
      Top = 360
      Width = 3135
      Height = 375
      TabIndex = 9
      TabStop = 0   'False
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
    Begin VB.OptionButton optIVA
      Caption = "Exento"
      Index = 1
      Left = 120
      Top = 840
      Width = 3135
      Height = 375
      TabIndex = 8
      TabStop = 0   'False
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
    Begin VB.OptionButton optIVA
      Caption = "No Responsable"
      Index = 2
      Left = 120
      Top = 1320
      Width = 3135
      Height = 375
      TabIndex = 7
      TabStop = 0   'False
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
    Begin VB.OptionButton optIVA
      Caption = "Responsable Inscripto"
      Index = 3
      Left = 120
      Top = 1800
      Width = 3135
      Height = 375
      TabIndex = 6
      TabStop = 0   'False
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
    Begin VB.OptionButton optIVA
      Caption = "Responsable No Inscripto"
      Index = 4
      Left = 120
      Top = 2280
      Width = 3135
      Height = 495
      TabIndex = 5
      TabStop = 0   'False
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
  Begin MSMask.MaskEdBox meNumeroCliente
    Left = 2760
    Top = 1200
    Width = 735
    Height = 375
    TabIndex = 0
    OleObjectBlob = "frmChooseClient.frx":0000
  End
  Begin VB.Label Label5
    Caption = "Clientes"
    Left = 3840
    Top = 120
    Width = 4215
    Height = 615
    TabIndex = 18
    Alignment = 2 'Center
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
  Begin VB.Shape Shape1
    Left = 240
    Top = 960
    Width = 11415
    Height = 3615
    BorderWidth = 3
  End
  Begin VB.Label Label1
    Caption = "Nº Cliente :"
    Left = 480
    Top = 1200
    Width = 2175
    Height = 375
    TabIndex = 17
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
  Begin VB.Label Label2
    Caption = "Razon Social :"
    Left = 480
    Top = 1800
    Width = 2175
    Height = 375
    TabIndex = 16
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
  Begin VB.Label Label3
    Caption = "Domicilio :"
    Left = 480
    Top = 2280
    Width = 2175
    Height = 375
    TabIndex = 15
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
  Begin VB.Label Label4
    Caption = "Teléfono :"
    Left = 480
    Top = 2760
    Width = 2175
    Height = 375
    TabIndex = 14
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
  Begin VB.Label Label6
    Caption = "Cuenta Corriente :"
    Left = 480
    Top = 3840
    Width = 2175
    Height = 375
    TabIndex = 13
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
  Begin VB.Label lblCUIT
    Caption = "CUIT :"
    Left = 480
    Top = 3360
    Width = 2175
    Height = 375
    TabIndex = 12
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
End

Attribute VB_Name = "frmChooseClient"

Public sNroCliente As String
Public sRazonSocial As String
Public sDomicilio As String
Public sTelefono As String
Public sCUIT As String
Public sCuentaCorriente As String
Public sIVA As String


Private Sub cmdAceptar_Click() '6BD814
  'Data Table: 43D268
  loc_6BCFDC: FLdPr Me
  loc_6BCFDF: MemLdI2 global_80
  loc_6BCFE2: BranchF loc_6BD2A3
  loc_6BCFE5: FLdPrThis
  loc_6BCFE6: VCallAd Control_ID_meNumeroCliente
  loc_6BCFE9: FStAdFunc var_88
  loc_6BCFEC: FLdPr var_88
  loc_6BCFEF: LateIdLdVar var_98 DispID_22 0
  loc_6BCFF6: PopAd
  loc_6BCFF8: LitI4 1
  loc_6BCFFD: LitI4 1
  loc_6BD002: LitStr "!"
  loc_6BD005: LitStr "@@@@"
  loc_6BD008: ConcatStr
  loc_6BD009: CVarStr var_B8
  loc_6BD00C: FLdRfVar var_98
  loc_6BD00F: CStrVarTmp
  loc_6BD010: CVarStr var_A8
  loc_6BD013: ImpAdCallI2 Format$(, )
  loc_6BD018: FStStrNoPop var_BC
  loc_6BD01B: FLdPr Me
  loc_6BD01E: MemStStrCopy
  loc_6BD022: FFree1Str var_BC
  loc_6BD025: FFree1Ad var_88
  loc_6BD028: FFreeVar var_98 = "": var_A8 = ""
  loc_6BD031: FLdRfVar var_BC
  loc_6BD034: FLdPrThis
  loc_6BD035: VCallAd Control_ID_txtRazonSocial
  loc_6BD038: FStAdFunc var_88
  loc_6BD03B: FLdPr var_88
  loc_6BD03E:  = Me.Text
  loc_6BD043: LitI4 &H14
  loc_6BD048: FLdZeroAd var_BC
  loc_6BD04B: CVarStr var_98
  loc_6BD04E: FLdRfVar var_A8
  loc_6BD051: ImpAdCallFPR4  = Left(, )
  loc_6BD056: LitVarStr var_CC, "@"
  loc_6BD05B: FStVarCopyObj var_B8
  loc_6BD05E: FLdRfVar var_B8
  loc_6BD061: LitI4 &H14
  loc_6BD066: FLdRfVar var_DC
  loc_6BD069: ImpAdCallFPR4  = String(, )
  loc_6BD06E: LitI4 1
  loc_6BD073: LitI4 1
  loc_6BD078: LitVarStr var_EC, "!"
  loc_6BD07D: FLdRfVar var_DC
  loc_6BD080: ConcatVar var_FC
  loc_6BD084: FLdRfVar var_A8
  loc_6BD087: ImpAdCallI2 Format$(, )
  loc_6BD08C: FStStrNoPop var_100
  loc_6BD08F: FLdPr Me
  loc_6BD092: MemStStrCopy
  loc_6BD096: FFree1Str var_100
  loc_6BD099: FFree1Ad var_88
  loc_6BD09C: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_A8 = ""
  loc_6BD0A9: FLdRfVar var_BC
  loc_6BD0AC: FLdPrThis
  loc_6BD0AD: VCallAd Control_ID_txtDomicilio
  loc_6BD0B0: FStAdFunc var_88
  loc_6BD0B3: FLdPr var_88
  loc_6BD0B6:  = Me.Text
  loc_6BD0BB: LitI4 &H1E
  loc_6BD0C0: FLdZeroAd var_BC
  loc_6BD0C3: CVarStr var_98
  loc_6BD0C6: FLdRfVar var_A8
  loc_6BD0C9: ImpAdCallFPR4  = Left(, )
  loc_6BD0CE: LitVarStr var_CC, "@"
  loc_6BD0D3: FStVarCopyObj var_B8
  loc_6BD0D6: FLdRfVar var_B8
  loc_6BD0D9: LitI4 &H1E
  loc_6BD0DE: FLdRfVar var_DC
  loc_6BD0E1: ImpAdCallFPR4  = String(, )
  loc_6BD0E6: LitI4 1
  loc_6BD0EB: LitI4 1
  loc_6BD0F0: LitVarStr var_EC, "!"
  loc_6BD0F5: FLdRfVar var_DC
  loc_6BD0F8: ConcatVar var_FC
  loc_6BD0FC: FLdRfVar var_A8
  loc_6BD0FF: ImpAdCallI2 Format$(, )
  loc_6BD104: FStStrNoPop var_100
  loc_6BD107: FLdPr Me
  loc_6BD10A: MemStStrCopy
  loc_6BD10E: FFree1Str var_100
  loc_6BD111: FFree1Ad var_88
  loc_6BD114: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_A8 = ""
  loc_6BD121: FLdRfVar var_BC
  loc_6BD124: FLdPrThis
  loc_6BD125: VCallAd Control_ID_txtTelefono
  loc_6BD128: FStAdFunc var_88
  loc_6BD12B: FLdPr var_88
  loc_6BD12E:  = Me.Text
  loc_6BD133: LitVarStr var_CC, "@"
  loc_6BD138: FStVarCopyObj var_98
  loc_6BD13B: FLdRfVar var_98
  loc_6BD13E: LitI4 &HF
  loc_6BD143: FLdRfVar var_A8
  loc_6BD146: ImpAdCallFPR4  = String(, )
  loc_6BD14B: LitI4 1
  loc_6BD150: LitI4 1
  loc_6BD155: LitVarStr var_EC, "!"
  loc_6BD15A: FLdRfVar var_A8
  loc_6BD15D: ConcatVar var_B8
  loc_6BD161: FLdZeroAd var_BC
  loc_6BD164: CVarStr var_DC
  loc_6BD167: ImpAdCallI2 Format$(, )
  loc_6BD16C: FStStrNoPop var_100
  loc_6BD16F: FLdPr Me
  loc_6BD172: MemStStrCopy
  loc_6BD176: FFree1Str var_100
  loc_6BD179: FFree1Ad var_88
  loc_6BD17C: FFreeVar var_98 = "": var_A8 = "": var_DC = ""
  loc_6BD187: FLdRfVar var_BC
  loc_6BD18A: FLdPrThis
  loc_6BD18B: VCallAd Control_ID_txtCUIT
  loc_6BD18E: FStAdFunc var_88
  loc_6BD191: FLdPr var_88
  loc_6BD194:  = Me.Text
  loc_6BD199: LitVarStr var_CC, "@"
  loc_6BD19E: FStVarCopyObj var_98
  loc_6BD1A1: FLdRfVar var_98
  loc_6BD1A4: LitI4 &HD
  loc_6BD1A9: FLdRfVar var_A8
  loc_6BD1AC: ImpAdCallFPR4  = String(, )
  loc_6BD1B1: LitI4 1
  loc_6BD1B6: LitI4 1
  loc_6BD1BB: LitVarStr var_EC, "!"
  loc_6BD1C0: FLdRfVar var_A8
  loc_6BD1C3: ConcatVar var_B8
  loc_6BD1C7: FLdZeroAd var_BC
  loc_6BD1CA: CVarStr var_DC
  loc_6BD1CD: ImpAdCallI2 Format$(, )
  loc_6BD1D2: FStStrNoPop var_100
  loc_6BD1D5: FLdPr Me
  loc_6BD1D8: MemStStrCopy
  loc_6BD1DC: FFree1Str var_100
  loc_6BD1DF: FFree1Ad var_88
  loc_6BD1E2: FFreeVar var_98 = "": var_A8 = "": var_DC = ""
  loc_6BD1ED: FLdRfVar var_102
  loc_6BD1F0: FLdPrThis
  loc_6BD1F1: VCallAd Control_ID_chkCuentaCorriente
  loc_6BD1F4: FStAdFunc var_88
  loc_6BD1F7: FLdPr var_88
  loc_6BD1FA:  = Me.Value
  loc_6BD1FF: LitVarStr var_114, "No"
  loc_6BD204: FStVarCopyObj var_A8
  loc_6BD207: FLdRfVar var_A8
  loc_6BD20A: LitVarStr var_EC, "Si"
  loc_6BD20F: FStVarCopyObj var_98
  loc_6BD212: FLdRfVar var_98
  loc_6BD215: FLdI2 var_102
  loc_6BD218: CI4UI1
  loc_6BD219: LitI4 1
  loc_6BD21E: EqI4
  loc_6BD21F: CVarBoolI2 var_CC
  loc_6BD223: FLdRfVar var_B8
  loc_6BD226: ImpAdCallFPR4  = IIf(, , )
  loc_6BD22B: FLdRfVar var_B8
  loc_6BD22E: CStrVarTmp
  loc_6BD22F: FStStrNoPop var_BC
  loc_6BD232: FLdPr Me
  loc_6BD235: MemStStrCopy
  loc_6BD239: FFree1Str var_BC
  loc_6BD23C: FFree1Ad var_88
  loc_6BD23F: FFreeVar var_CC = "": var_98 = "": var_A8 = ""
  loc_6BD24A: FLdRfVar var_98
  loc_6BD24D: from_stack_1v = Proc_28_23_605518()
  loc_6BD252: LitVarStr var_CC, "@"
  loc_6BD257: FStVarCopyObj var_A8
  loc_6BD25A: FLdRfVar var_A8
  loc_6BD25D: LitI4 &H18
  loc_6BD262: FLdRfVar var_B8
  loc_6BD265: ImpAdCallFPR4  = String(, )
  loc_6BD26A: LitI4 1
  loc_6BD26F: LitI4 1
  loc_6BD274: LitVarStr var_EC, "!"
  loc_6BD279: FLdRfVar var_B8
  loc_6BD27C: ConcatVar var_DC
  loc_6BD280: FLdRfVar var_98
  loc_6BD283: ImpAdCallI2 Format$(, )
  loc_6BD288: FStStrNoPop var_BC
  loc_6BD28B: FLdPr Me
  loc_6BD28E: MemStStrCopy
  loc_6BD292: FFree1Str var_BC
  loc_6BD295: FFreeVar var_A8 = "": var_B8 = "": var_98 = ""
  loc_6BD2A0: Branch loc_6BD7F9
  loc_6BD2A3: FLdRfVar var_BC
  loc_6BD2A6: FLdPrThis
  loc_6BD2A7: VCallAd Control_ID_txtRazonSocial
  loc_6BD2AA: FStAdFunc var_88
  loc_6BD2AD: FLdPr var_88
  loc_6BD2B0:  = Me.Text
  loc_6BD2B5: ILdRf var_BC
  loc_6BD2B8: ImpAdCallI2 Trim$()
  loc_6BD2BD: FStStrNoPop var_100
  loc_6BD2C0: LitStr vbNullString
  loc_6BD2C3: NeStr
  loc_6BD2C5: FLdRfVar var_11C
  loc_6BD2C8: FLdPrThis
  loc_6BD2C9: VCallAd Control_ID_txtTelefono
  loc_6BD2CC: FStAdFunc var_118
  loc_6BD2CF: FLdPr var_118
  loc_6BD2D2:  = Me.Text
  loc_6BD2D7: ILdRf var_11C
  loc_6BD2DA: ImpAdCallI2 Trim$()
  loc_6BD2DF: FStStrNoPop var_120
  loc_6BD2E2: LitStr vbNullString
  loc_6BD2E5: NeStr
  loc_6BD2E7: OrI4
  loc_6BD2E8: FLdRfVar var_128
  loc_6BD2EB: FLdPrThis
  loc_6BD2EC: VCallAd Control_ID_txtCUIT
  loc_6BD2EF: FStAdFunc var_124
  loc_6BD2F2: FLdPr var_124
  loc_6BD2F5:  = Me.Text
  loc_6BD2FA: ILdRf var_128
  loc_6BD2FD: ImpAdCallI2 Trim$()
  loc_6BD302: FStStrNoPop var_12C
  loc_6BD305: LitStr vbNullString
  loc_6BD308: NeStr
  loc_6BD30A: OrI4
  loc_6BD30B: FLdRfVar var_134
  loc_6BD30E: FLdPrThis
  loc_6BD30F: VCallAd Control_ID_txtDomicilio
  loc_6BD312: FStAdFunc var_130
  loc_6BD315: FLdPr var_130
  loc_6BD318:  = Me.Text
  loc_6BD31D: ILdRf var_134
  loc_6BD320: ImpAdCallI2 Trim$()
  loc_6BD325: FStStrNoPop var_138
  loc_6BD328: LitStr vbNullString
  loc_6BD32B: NeStr
  loc_6BD32D: OrI4
  loc_6BD32E: FFreeStr var_BC = "": var_100 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_134 = ""
  loc_6BD341: FFreeAd var_88 = "": var_118 = "": var_124 = ""
  loc_6BD34C: BranchF loc_6BD60D
  loc_6BD34F: FLdPrThis
  loc_6BD350: VCallAd Control_ID_meNumeroCliente
  loc_6BD353: FStAdFunc var_88
  loc_6BD356: FLdPr var_88
  loc_6BD359: LateIdLdVar var_98 DispID_22 0
  loc_6BD360: PopAd
  loc_6BD362: LitI4 1
  loc_6BD367: LitI4 1
  loc_6BD36C: LitStr "!"
  loc_6BD36F: LitStr "@@@@"
  loc_6BD372: ConcatStr
  loc_6BD373: CVarStr var_B8
  loc_6BD376: FLdRfVar var_98
  loc_6BD379: CStrVarTmp
  loc_6BD37A: CVarStr var_A8
  loc_6BD37D: ImpAdCallI2 Format$(, )
  loc_6BD382: FStStrNoPop var_BC
  loc_6BD385: FLdPr Me
  loc_6BD388: MemStStrCopy
  loc_6BD38C: FFree1Str var_BC
  loc_6BD38F: FFree1Ad var_88
  loc_6BD392: FFreeVar var_98 = "": var_A8 = ""
  loc_6BD39B: FLdRfVar var_BC
  loc_6BD39E: FLdPrThis
  loc_6BD39F: VCallAd Control_ID_txtRazonSocial
  loc_6BD3A2: FStAdFunc var_88
  loc_6BD3A5: FLdPr var_88
  loc_6BD3A8:  = Me.Text
  loc_6BD3AD: LitI4 &H14
  loc_6BD3B2: FLdZeroAd var_BC
  loc_6BD3B5: CVarStr var_98
  loc_6BD3B8: FLdRfVar var_A8
  loc_6BD3BB: ImpAdCallFPR4  = Left(, )
  loc_6BD3C0: LitVarStr var_CC, "@"
  loc_6BD3C5: FStVarCopyObj var_B8
  loc_6BD3C8: FLdRfVar var_B8
  loc_6BD3CB: LitI4 &H14
  loc_6BD3D0: FLdRfVar var_DC
  loc_6BD3D3: ImpAdCallFPR4  = String(, )
  loc_6BD3D8: LitI4 1
  loc_6BD3DD: LitI4 1
  loc_6BD3E2: LitVarStr var_EC, "!"
  loc_6BD3E7: FLdRfVar var_DC
  loc_6BD3EA: ConcatVar var_FC
  loc_6BD3EE: FLdRfVar var_A8
  loc_6BD3F1: ImpAdCallI2 Format$(, )
  loc_6BD3F6: FStStrNoPop var_100
  loc_6BD3F9: FLdPr Me
  loc_6BD3FC: MemStStrCopy
  loc_6BD400: FFree1Str var_100
  loc_6BD403: FFree1Ad var_88
  loc_6BD406: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_A8 = ""
  loc_6BD413: FLdRfVar var_BC
  loc_6BD416: FLdPrThis
  loc_6BD417: VCallAd Control_ID_txtDomicilio
  loc_6BD41A: FStAdFunc var_88
  loc_6BD41D: FLdPr var_88
  loc_6BD420:  = Me.Text
  loc_6BD425: LitI4 &H1E
  loc_6BD42A: FLdZeroAd var_BC
  loc_6BD42D: CVarStr var_98
  loc_6BD430: FLdRfVar var_A8
  loc_6BD433: ImpAdCallFPR4  = Left(, )
  loc_6BD438: LitVarStr var_CC, "@"
  loc_6BD43D: FStVarCopyObj var_B8
  loc_6BD440: FLdRfVar var_B8
  loc_6BD443: LitI4 &H1E
  loc_6BD448: FLdRfVar var_DC
  loc_6BD44B: ImpAdCallFPR4  = String(, )
  loc_6BD450: LitI4 1
  loc_6BD455: LitI4 1
  loc_6BD45A: LitVarStr var_EC, "!"
  loc_6BD45F: FLdRfVar var_DC
  loc_6BD462: ConcatVar var_FC
  loc_6BD466: FLdRfVar var_A8
  loc_6BD469: ImpAdCallI2 Format$(, )
  loc_6BD46E: FStStrNoPop var_100
  loc_6BD471: FLdPr Me
  loc_6BD474: MemStStrCopy
  loc_6BD478: FFree1Str var_100
  loc_6BD47B: FFree1Ad var_88
  loc_6BD47E: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_A8 = ""
  loc_6BD48B: FLdRfVar var_BC
  loc_6BD48E: FLdPrThis
  loc_6BD48F: VCallAd Control_ID_txtTelefono
  loc_6BD492: FStAdFunc var_88
  loc_6BD495: FLdPr var_88
  loc_6BD498:  = Me.Text
  loc_6BD49D: LitVarStr var_CC, "@"
  loc_6BD4A2: FStVarCopyObj var_98
  loc_6BD4A5: FLdRfVar var_98
  loc_6BD4A8: LitI4 &HF
  loc_6BD4AD: FLdRfVar var_A8
  loc_6BD4B0: ImpAdCallFPR4  = String(, )
  loc_6BD4B5: LitI4 1
  loc_6BD4BA: LitI4 1
  loc_6BD4BF: LitVarStr var_EC, "!"
  loc_6BD4C4: FLdRfVar var_A8
  loc_6BD4C7: ConcatVar var_B8
  loc_6BD4CB: FLdZeroAd var_BC
  loc_6BD4CE: CVarStr var_DC
  loc_6BD4D1: ImpAdCallI2 Format$(, )
  loc_6BD4D6: FStStrNoPop var_100
  loc_6BD4D9: FLdPr Me
  loc_6BD4DC: MemStStrCopy
  loc_6BD4E0: FFree1Str var_100
  loc_6BD4E3: FFree1Ad var_88
  loc_6BD4E6: FFreeVar var_98 = "": var_A8 = "": var_DC = ""
  loc_6BD4F1: FLdRfVar var_BC
  loc_6BD4F4: FLdPrThis
  loc_6BD4F5: VCallAd Control_ID_txtCUIT
  loc_6BD4F8: FStAdFunc var_88
  loc_6BD4FB: FLdPr var_88
  loc_6BD4FE:  = Me.Text
  loc_6BD503: LitVarStr var_CC, "@"
  loc_6BD508: FStVarCopyObj var_98
  loc_6BD50B: FLdRfVar var_98
  loc_6BD50E: LitI4 &HD
  loc_6BD513: FLdRfVar var_A8
  loc_6BD516: ImpAdCallFPR4  = String(, )
  loc_6BD51B: LitI4 1
  loc_6BD520: LitI4 1
  loc_6BD525: LitVarStr var_EC, "!"
  loc_6BD52A: FLdRfVar var_A8
  loc_6BD52D: ConcatVar var_B8
  loc_6BD531: FLdZeroAd var_BC
  loc_6BD534: CVarStr var_DC
  loc_6BD537: ImpAdCallI2 Format$(, )
  loc_6BD53C: FStStrNoPop var_100
  loc_6BD53F: FLdPr Me
  loc_6BD542: MemStStrCopy
  loc_6BD546: FFree1Str var_100
  loc_6BD549: FFree1Ad var_88
  loc_6BD54C: FFreeVar var_98 = "": var_A8 = "": var_DC = ""
  loc_6BD557: FLdRfVar var_102
  loc_6BD55A: FLdPrThis
  loc_6BD55B: VCallAd Control_ID_chkCuentaCorriente
  loc_6BD55E: FStAdFunc var_88
  loc_6BD561: FLdPr var_88
  loc_6BD564:  = Me.Value
  loc_6BD569: LitVarStr var_114, "No"
  loc_6BD56E: FStVarCopyObj var_A8
  loc_6BD571: FLdRfVar var_A8
  loc_6BD574: LitVarStr var_EC, "Si"
  loc_6BD579: FStVarCopyObj var_98
  loc_6BD57C: FLdRfVar var_98
  loc_6BD57F: FLdI2 var_102
  loc_6BD582: CI4UI1
  loc_6BD583: LitI4 1
  loc_6BD588: EqI4
  loc_6BD589: CVarBoolI2 var_CC
  loc_6BD58D: FLdRfVar var_B8
  loc_6BD590: ImpAdCallFPR4  = IIf(, , )
  loc_6BD595: FLdRfVar var_B8
  loc_6BD598: CStrVarTmp
  loc_6BD599: FStStrNoPop var_BC
  loc_6BD59C: FLdPr Me
  loc_6BD59F: MemStStrCopy
  loc_6BD5A3: FFree1Str var_BC
  loc_6BD5A6: FFree1Ad var_88
  loc_6BD5A9: FFreeVar var_CC = "": var_98 = "": var_A8 = ""
  loc_6BD5B4: FLdRfVar var_98
  loc_6BD5B7: from_stack_1v = Proc_28_23_605518()
  loc_6BD5BC: LitVarStr var_CC, "@"
  loc_6BD5C1: FStVarCopyObj var_A8
  loc_6BD5C4: FLdRfVar var_A8
  loc_6BD5C7: LitI4 &H18
  loc_6BD5CC: FLdRfVar var_B8
  loc_6BD5CF: ImpAdCallFPR4  = String(, )
  loc_6BD5D4: LitI4 1
  loc_6BD5D9: LitI4 1
  loc_6BD5DE: LitVarStr var_EC, "!"
  loc_6BD5E3: FLdRfVar var_B8
  loc_6BD5E6: ConcatVar var_DC
  loc_6BD5EA: FLdRfVar var_98
  loc_6BD5ED: ImpAdCallI2 Format$(, )
  loc_6BD5F2: FStStrNoPop var_BC
  loc_6BD5F5: FLdPr Me
  loc_6BD5F8: MemStStrCopy
  loc_6BD5FC: FFree1Str var_BC
  loc_6BD5FF: FFreeVar var_A8 = "": var_B8 = "": var_98 = ""
  loc_6BD60A: Branch loc_6BD7F9
  loc_6BD60D: FLdPrThis
  loc_6BD60E: VCallAd Control_ID_meNumeroCliente
  loc_6BD611: FStAdFunc var_88
  loc_6BD614: FLdPr var_88
  loc_6BD617: LateIdLdVar var_98 DispID_22 0
  loc_6BD61E: CStrVarTmp
  loc_6BD61F: FStStrNoPop var_BC
  loc_6BD622: ImpAdCallI2 Trim$()
  loc_6BD627: FStStrNoPop var_100
  loc_6BD62A: LitStr vbNullString
  loc_6BD62D: EqStr
  loc_6BD62F: FLdRfVar var_11C
  loc_6BD632: FLdPrThis
  loc_6BD633: VCallAd Control_ID_txtRazonSocial
  loc_6BD636: FStAdFunc var_118
  loc_6BD639: FLdPr var_118
  loc_6BD63C:  = Me.Text
  loc_6BD641: ILdRf var_11C
  loc_6BD644: ImpAdCallI2 Trim$()
  loc_6BD649: FStStrNoPop var_120
  loc_6BD64C: LitStr vbNullString
  loc_6BD64F: EqStr
  loc_6BD651: AndI4
  loc_6BD652: FLdRfVar var_128
  loc_6BD655: FLdPrThis
  loc_6BD656: VCallAd Control_ID_txtTelefono
  loc_6BD659: FStAdFunc var_124
  loc_6BD65C: FLdPr var_124
  loc_6BD65F:  = Me.Text
  loc_6BD664: ILdRf var_128
  loc_6BD667: ImpAdCallI2 Trim$()
  loc_6BD66C: FStStrNoPop var_12C
  loc_6BD66F: LitStr vbNullString
  loc_6BD672: EqStr
  loc_6BD674: AndI4
  loc_6BD675: FLdRfVar var_134
  loc_6BD678: FLdPrThis
  loc_6BD679: VCallAd Control_ID_txtCUIT
  loc_6BD67C: FStAdFunc var_130
  loc_6BD67F: FLdPr var_130
  loc_6BD682:  = Me.Text
  loc_6BD687: ILdRf var_134
  loc_6BD68A: ImpAdCallI2 Trim$()
  loc_6BD68F: FStStrNoPop var_138
  loc_6BD692: LitStr vbNullString
  loc_6BD695: EqStr
  loc_6BD697: AndI4
  loc_6BD698: FLdRfVar var_140
  loc_6BD69B: FLdPrThis
  loc_6BD69C: VCallAd Control_ID_txtDomicilio
  loc_6BD69F: FStAdFunc var_13C
  loc_6BD6A2: FLdPr var_13C
  loc_6BD6A5:  = Me.Text
  loc_6BD6AA: ILdRf var_140
  loc_6BD6AD: ImpAdCallI2 Trim$()
  loc_6BD6B2: FStStrNoPop var_144
  loc_6BD6B5: LitStr vbNullString
  loc_6BD6B8: EqStr
  loc_6BD6BA: AndI4
  loc_6BD6BB: FFreeStr var_BC = "": var_100 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_140 = ""
  loc_6BD6D2: FFreeAd var_88 = "": var_118 = "": var_124 = "": var_130 = ""
  loc_6BD6DF: FFree1Var var_98 = ""
  loc_6BD6E2: BranchF loc_6BD7CF
  loc_6BD6E5: LitI4 4
  loc_6BD6EA: FLdRfVar var_98
  loc_6BD6ED: ImpAdCallFPR4  = Space()
  loc_6BD6F2: FLdRfVar var_98
  loc_6BD6F5: CStrVarTmp
  loc_6BD6F6: FStStrNoPop var_BC
  loc_6BD6F9: FLdPr Me
  loc_6BD6FC: MemStStrCopy
  loc_6BD700: FFree1Str var_BC
  loc_6BD703: FFree1Var var_98 = ""
  loc_6BD706: LitI4 &H14
  loc_6BD70B: FLdRfVar var_98
  loc_6BD70E: ImpAdCallFPR4  = Space()
  loc_6BD713: FLdRfVar var_98
  loc_6BD716: CStrVarTmp
  loc_6BD717: FStStrNoPop var_BC
  loc_6BD71A: FLdPr Me
  loc_6BD71D: MemStStrCopy
  loc_6BD721: FFree1Str var_BC
  loc_6BD724: FFree1Var var_98 = ""
  loc_6BD727: LitI4 &H1E
  loc_6BD72C: FLdRfVar var_98
  loc_6BD72F: ImpAdCallFPR4  = Space()
  loc_6BD734: FLdRfVar var_98
  loc_6BD737: CStrVarTmp
  loc_6BD738: FStStrNoPop var_BC
  loc_6BD73B: FLdPr Me
  loc_6BD73E: MemStStrCopy
  loc_6BD742: FFree1Str var_BC
  loc_6BD745: FFree1Var var_98 = ""
  loc_6BD748: LitI4 &HF
  loc_6BD74D: FLdRfVar var_98
  loc_6BD750: ImpAdCallFPR4  = Space()
  loc_6BD755: FLdRfVar var_98
  loc_6BD758: CStrVarTmp
  loc_6BD759: FStStrNoPop var_BC
  loc_6BD75C: FLdPr Me
  loc_6BD75F: MemStStrCopy
  loc_6BD763: FFree1Str var_BC
  loc_6BD766: FFree1Var var_98 = ""
  loc_6BD769: LitI4 &HD
  loc_6BD76E: FLdRfVar var_98
  loc_6BD771: ImpAdCallFPR4  = Space()
  loc_6BD776: FLdRfVar var_98
  loc_6BD779: CStrVarTmp
  loc_6BD77A: FStStrNoPop var_BC
  loc_6BD77D: FLdPr Me
  loc_6BD780: MemStStrCopy
  loc_6BD784: FFree1Str var_BC
  loc_6BD787: FFree1Var var_98 = ""
  loc_6BD78A: LitI4 2
  loc_6BD78F: FLdRfVar var_98
  loc_6BD792: ImpAdCallFPR4  = Space()
  loc_6BD797: FLdRfVar var_98
  loc_6BD79A: CStrVarTmp
  loc_6BD79B: FStStrNoPop var_BC
  loc_6BD79E: FLdPr Me
  loc_6BD7A1: MemStStrCopy
  loc_6BD7A5: FFree1Str var_BC
  loc_6BD7A8: FFree1Var var_98 = ""
  loc_6BD7AB: LitI4 &H18
  loc_6BD7B0: FLdRfVar var_98
  loc_6BD7B3: ImpAdCallFPR4  = Space()
  loc_6BD7B8: FLdRfVar var_98
  loc_6BD7BB: CStrVarTmp
  loc_6BD7BC: FStStrNoPop var_BC
  loc_6BD7BF: FLdPr Me
  loc_6BD7C2: MemStStrCopy
  loc_6BD7C6: FFree1Str var_BC
  loc_6BD7C9: FFree1Var var_98 = ""
  loc_6BD7CC: Branch loc_6BD7F9
  loc_6BD7CF: LitVar_Missing var_DC
  loc_6BD7D2: LitVar_Missing var_B8
  loc_6BD7D5: LitVar_Missing var_A8
  loc_6BD7D8: LitI4 &H10
  loc_6BD7DD: LitVarStr var_CC, "Debe ingresar un número de cliente existente o el cliente en sí. Verifique por favor."
  loc_6BD7E2: FStVarCopyObj var_98
  loc_6BD7E5: FLdRfVar var_98
  loc_6BD7E8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BD7ED: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_6BD7F8: ExitProcHresult
  loc_6BD7F9: LitI2_Byte 0
  loc_6BD7FB: ImpAdStI2 MemVar_74C37E
  loc_6BD7FE: ILdRf Me
  loc_6BD801: FStAdNoPop
  loc_6BD805: ImpAdLdRf MemVar_7520D4
  loc_6BD808: NewIfNullPr Global
  loc_6BD80B: Global.Unload from_stack_1
  loc_6BD810: FFree1Ad var_88
  loc_6BD813: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D31F0
  'Data Table: 43D268
  loc_5D31D4: LitI2_Byte &HFF
  loc_5D31D6: ImpAdStI2 MemVar_74C37E
  loc_5D31D9: ILdRf Me
  loc_5D31DC: FStAdNoPop
  loc_5D31E0: ImpAdLdRf MemVar_7520D4
  loc_5D31E3: NewIfNullPr Global
  loc_5D31E6: Global.Unload from_stack_1
  loc_5D31EB: FFree1Ad var_88
  loc_5D31EE: ExitProcHresult
End Sub

Private Sub meNumeroCliente_UnknownEvent_8 '5E68AC
  'Data Table: 43D268
  loc_5E683C: FLdPrThis
  loc_5E683D: VCallAd Control_ID_meNumeroCliente
  loc_5E6840: FStAdFunc var_88
  loc_5E6843: FLdPr var_88
  loc_5E6846: LateIdLdVar var_98 DispID_22 0
  loc_5E684D: CStrVarTmp
  loc_5E684E: FStStrNoPop var_9C
  loc_5E6851: FnLenStr
  loc_5E6852: LitI4 0
  loc_5E6857: NeI4
  loc_5E6858: FFree1Str var_9C
  loc_5E685B: FFree1Ad var_88
  loc_5E685E: FFree1Var var_98 = ""
  loc_5E6861: BranchF loc_5E6894
  loc_5E6864: LitI2_Byte &HFF
  loc_5E6866: PopTmpLdAd2 var_9E
  loc_5E6869: from_stack_2v = Proc_28_22_5E8F04(from_stack_1v)
  loc_5E686E: FLdPrThis
  loc_5E686F: VCallAd Control_ID_meNumeroCliente
  loc_5E6872: FStAdFunc var_88
  loc_5E6875: FLdPr var_88
  loc_5E6878: LateIdLdVar var_98 DispID_22 0
  loc_5E687F: CStrVarTmp
  loc_5E6880: FStStrNoPop var_9C
  loc_5E6883: from_stack_2v = Proc_28_21_64B274(from_stack_1v)
  loc_5E6888: FFree1Str var_9C
  loc_5E688B: FFree1Ad var_88
  loc_5E688E: FFree1Var var_98 = ""
  loc_5E6891: Branch loc_5E68AB
  loc_5E6894: LitI2_Byte 0
  loc_5E6896: FLdPr Me
  loc_5E6899: MemStI2 global_80
  loc_5E689C: LitI2_Byte 0
  loc_5E689E: PopTmpLdAd2 var_9E
  loc_5E68A1: from_stack_2v = Proc_28_22_5E8F04(from_stack_1v)
  loc_5E68A6: from_stack_1v = Proc_28_20_5FCC64()
  loc_5E68AB: ExitProcHresult
End Sub

Private Sub meNumeroCliente_KeyPress(KeyAscii As Integer) '64EC6C
  'Data Table: 43D268
  loc_64E9C4: ILdI2 KeyAscii
  loc_64E9C7: FStI2 var_86
  loc_64E9CA: FLdI2 var_86
  loc_64E9CD: LitI4 &H22
  loc_64E9D2: CI2I4
  loc_64E9D3: EqI2
  loc_64E9D4: BranchF loc_64EA90
  loc_64E9D7: LitI2_Byte 0
  loc_64E9D9: IStI2 KeyAscii
  loc_64E9DC: FLdRfVar var_90
  loc_64E9DF: FLdRfVar var_8C
  loc_64E9E2: ImpAdLdRf MemVar_7520D4
  loc_64E9E5: NewIfNullPr Global
  loc_64E9E8:  = Global.Screen
  loc_64E9ED: FLdPr var_8C
  loc_64E9F0:  = Screen.ActiveControl
  loc_64E9F5: FLdPr var_90
  loc_64E9F8: LateMemLdVar
  loc_64E9FD: LitVarStr var_A0, "meNumeroCliente"
  loc_64EA02: HardType
  loc_64EA03: EqVar var_C0
  loc_64EA07: FLdPrThis
  loc_64EA08: VCallAd Control_ID_meNumeroCliente
  loc_64EA0B: FStAdFunc var_C4
  loc_64EA0E: FLdPr var_C4
  loc_64EA11: LateIdLdVar var_D4 DispID_22 0
  loc_64EA18: CStrVarTmp
  loc_64EA19: FStStrNoPop var_D8
  loc_64EA1C: ImpAdCallFPR4 push Val()
  loc_64EA21: CR8R8
  loc_64EA22: LitI2 9999
  loc_64EA25: CR8I2
  loc_64EA26: LtR8
  loc_64EA27: CVarBoolI2 var_E8
  loc_64EA2B: AndVar var_F8
  loc_64EA2F: CBoolVarNull
  loc_64EA31: FFree1Str var_D8
  loc_64EA34: FFreeAd var_8C = "": var_90 = ""
  loc_64EA3D: FFreeVar var_B0 = "": var_D4 = ""
  loc_64EA46: BranchF loc_64EA8D
  loc_64EA49: FLdPrThis
  loc_64EA4A: VCallAd Control_ID_meNumeroCliente
  loc_64EA4D: FStAdFunc var_8C
  loc_64EA50: FLdPr var_8C
  loc_64EA53: LateIdLdVar var_B0 DispID_22 0
  loc_64EA5A: CStrVarTmp
  loc_64EA5B: FStStrNoPop var_D8
  loc_64EA5E: ImpAdCallFPR4 push Val()
  loc_64EA63: LitI2_Byte 1
  loc_64EA65: CR8I2
  loc_64EA66: AddR8
  loc_64EA67: CStrR8
  loc_64EA69: CVarStr var_C0
  loc_64EA6C: PopAdLdVar
  loc_64EA6D: FLdPrThis
  loc_64EA6E: VCallAd Control_ID_meNumeroCliente
  loc_64EA71: FStAdFunc var_90
  loc_64EA74: FLdPr var_90
  loc_64EA77: LateIdSt
  loc_64EA7C: FFree1Str var_D8
  loc_64EA7F: FFreeAd var_8C = ""
  loc_64EA86: FFreeVar var_B0 = ""
  loc_64EA8D: Branch loc_64EC6A
  loc_64EA90: FLdI2 var_86
  loc_64EA93: LitI4 &H21
  loc_64EA98: CI2I4
  loc_64EA99: EqI2
  loc_64EA9A: BranchF loc_64EB55
  loc_64EA9D: LitI2_Byte 0
  loc_64EA9F: IStI2 KeyAscii
  loc_64EAA2: FLdRfVar var_90
  loc_64EAA5: FLdRfVar var_8C
  loc_64EAA8: ImpAdLdRf MemVar_7520D4
  loc_64EAAB: NewIfNullPr Global
  loc_64EAAE:  = Global.Screen
  loc_64EAB3: FLdPr var_8C
  loc_64EAB6:  = Screen.ActiveControl
  loc_64EABB: FLdPr var_90
  loc_64EABE: LateMemLdVar
  loc_64EAC3: LitVarStr var_A0, "meNumeroCliente"
  loc_64EAC8: HardType
  loc_64EAC9: EqVar var_C0
  loc_64EACD: FLdPrThis
  loc_64EACE: VCallAd Control_ID_meNumeroCliente
  loc_64EAD1: FStAdFunc var_C4
  loc_64EAD4: FLdPr var_C4
  loc_64EAD7: LateIdLdVar var_D4 DispID_22 0
  loc_64EADE: CStrVarTmp
  loc_64EADF: FStStrNoPop var_D8
  loc_64EAE2: ImpAdCallFPR4 push Val()
  loc_64EAE7: CR8R8
  loc_64EAE8: LitI2_Byte 1
  loc_64EAEA: CR8I2
  loc_64EAEB: GtR4
  loc_64EAEC: CVarBoolI2 var_E8
  loc_64EAF0: AndVar var_F8
  loc_64EAF4: CBoolVarNull
  loc_64EAF6: FFree1Str var_D8
  loc_64EAF9: FFreeAd var_8C = "": var_90 = ""
  loc_64EB02: FFreeVar var_B0 = "": var_D4 = ""
  loc_64EB0B: BranchF loc_64EB52
  loc_64EB0E: FLdPrThis
  loc_64EB0F: VCallAd Control_ID_meNumeroCliente
  loc_64EB12: FStAdFunc var_8C
  loc_64EB15: FLdPr var_8C
  loc_64EB18: LateIdLdVar var_B0 DispID_22 0
  loc_64EB1F: CStrVarTmp
  loc_64EB20: FStStrNoPop var_D8
  loc_64EB23: ImpAdCallFPR4 push Val()
  loc_64EB28: LitI2_Byte 1
  loc_64EB2A: CR8I2
  loc_64EB2B: SubR4
  loc_64EB2C: CStrR8
  loc_64EB2E: CVarStr var_C0
  loc_64EB31: PopAdLdVar
  loc_64EB32: FLdPrThis
  loc_64EB33: VCallAd Control_ID_meNumeroCliente
  loc_64EB36: FStAdFunc var_90
  loc_64EB39: FLdPr var_90
  loc_64EB3C: LateIdSt
  loc_64EB41: FFree1Str var_D8
  loc_64EB44: FFreeAd var_8C = ""
  loc_64EB4B: FFreeVar var_B0 = ""
  loc_64EB52: Branch loc_64EC6A
  loc_64EB55: FLdI2 var_86
  loc_64EB58: LitI4 &H24
  loc_64EB5D: CI2I4
  loc_64EB5E: EqI2
  loc_64EB5F: BranchF loc_64EBBD
  loc_64EB62: LitI2_Byte 0
  loc_64EB64: IStI2 KeyAscii
  loc_64EB67: FLdRfVar var_90
  loc_64EB6A: FLdRfVar var_8C
  loc_64EB6D: ImpAdLdRf MemVar_7520D4
  loc_64EB70: NewIfNullPr Global
  loc_64EB73:  = Global.Screen
  loc_64EB78: FLdPr var_8C
  loc_64EB7B:  = Screen.ActiveControl
  loc_64EB80: FLdPr var_90
  loc_64EB83: LateMemLdVar
  loc_64EB88: LitVarStr var_A0, "meNumeroCliente"
  loc_64EB8D: HardType
  loc_64EB8E: EqVarBool
  loc_64EB90: FFreeAd var_8C = ""
  loc_64EB97: FFree1Var var_B0 = ""
  loc_64EB9A: BranchF loc_64EBBA
  loc_64EB9D: LitI2_Byte 1
  loc_64EB9F: CStrUI1
  loc_64EBA1: CVarStr var_B0
  loc_64EBA4: PopAdLdVar
  loc_64EBA5: FLdPrThis
  loc_64EBA6: VCallAd Control_ID_meNumeroCliente
  loc_64EBA9: FStAdFunc var_8C
  loc_64EBAC: FLdPr var_8C
  loc_64EBAF: LateIdSt
  loc_64EBB4: FFree1Ad var_8C
  loc_64EBB7: FFree1Var var_B0 = ""
  loc_64EBBA: Branch loc_64EC6A
  loc_64EBBD: FLdI2 var_86
  loc_64EBC0: LitI4 &H23
  loc_64EBC5: CI2I4
  loc_64EBC6: EqI2
  loc_64EBC7: BranchF loc_64EC26
  loc_64EBCA: LitI2_Byte 0
  loc_64EBCC: IStI2 KeyAscii
  loc_64EBCF: FLdRfVar var_90
  loc_64EBD2: FLdRfVar var_8C
  loc_64EBD5: ImpAdLdRf MemVar_7520D4
  loc_64EBD8: NewIfNullPr Global
  loc_64EBDB:  = Global.Screen
  loc_64EBE0: FLdPr var_8C
  loc_64EBE3:  = Screen.ActiveControl
  loc_64EBE8: FLdPr var_90
  loc_64EBEB: LateMemLdVar
  loc_64EBF0: LitVarStr var_A0, "meNumeroCliente"
  loc_64EBF5: HardType
  loc_64EBF6: EqVarBool
  loc_64EBF8: FFreeAd var_8C = ""
  loc_64EBFF: FFree1Var var_B0 = ""
  loc_64EC02: BranchF loc_64EC23
  loc_64EC05: LitI2 9999
  loc_64EC08: CStrUI1
  loc_64EC0A: CVarStr var_B0
  loc_64EC0D: PopAdLdVar
  loc_64EC0E: FLdPrThis
  loc_64EC0F: VCallAd Control_ID_meNumeroCliente
  loc_64EC12: FStAdFunc var_8C
  loc_64EC15: FLdPr var_8C
  loc_64EC18: LateIdSt
  loc_64EC1D: FFree1Ad var_8C
  loc_64EC20: FFree1Var var_B0 = ""
  loc_64EC23: Branch loc_64EC6A
  loc_64EC26: FLdI2 var_86
  loc_64EC29: LitI4 &HD
  loc_64EC2E: CI2I4
  loc_64EC2F: EqI2
  loc_64EC30: BranchF loc_64EC40
  loc_64EC33: LitI2_Byte 0
  loc_64EC35: IStI2 KeyAscii
  loc_64EC38: Call cmdAceptar_Click()
  loc_64EC3D: Branch loc_64EC6A
  loc_64EC40: FLdI2 var_86
  loc_64EC43: LitI4 &H1B
  loc_64EC48: CI2I4
  loc_64EC49: EqI2
  loc_64EC4A: BranchF loc_64EC6A
  loc_64EC4D: LitI2_Byte 0
  loc_64EC4F: IStI2 KeyAscii
  loc_64EC52: LitVarStr var_A0, vbNullString
  loc_64EC57: PopAdLdVar
  loc_64EC58: FLdPrThis
  loc_64EC59: VCallAd Control_ID_meNumeroCliente
  loc_64EC5C: FStAdFunc var_8C
  loc_64EC5F: FLdPr var_8C
  loc_64EC62: LateIdSt
  loc_64EC67: FFree1Ad var_8C
  loc_64EC6A: ExitProcHresult
End Sub

Private Sub cmdConsulta_Click() '5E32EC
  'Data Table: 43D268
  loc_5E328C: LitVar_Missing var_A4
  loc_5E328F: PopAdLdVar
  loc_5E3290: LitVarI4
  loc_5E3298: PopAdLdVar
  loc_5E3299: ImpAdLdRf MemVar_74D874
  loc_5E329C: NewIfNullPr BrowseCli
  loc_5E329F: BrowseCli.Show from_stack_1, from_stack_2
  loc_5E32A4: LitI2_Byte 0
  loc_5E32A6: ImpAdLdRf MemVar_74D874
  loc_5E32A9: NewIfNullPr BrowseCli
  loc_5E32AC: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5E32B1: ImpAdLdI2 MemVar_74C37E
  loc_5E32B4: NotI4
  loc_5E32B5: BranchF loc_5E32EB
  loc_5E32B8: ImpAdLdI2 MemVar_74C384
  loc_5E32BB: CStrUI1
  loc_5E32BD: CVarStr var_B4
  loc_5E32C0: PopAdLdVar
  loc_5E32C1: FLdPrThis
  loc_5E32C2: VCallAd Control_ID_
  loc_5E32C5: FStAdFunc var_B8
  loc_5E32C8: FLdPr var_B8
  loc_5E32CB: LateIdSt
  loc_5E32D0: FFree1Ad var_B8
  loc_5E32D3: FFree1Var var_B4 = ""
  loc_5E32D6: FLdPrThis
  loc_5E32D7: VCallAd Control_ID_
  loc_5E32DA: FStAdFunc var_B8
  loc_5E32DD: FLdPr var_B8
  loc_5E32E0: LateIdCall
  loc_5E32E8: FFree1Ad var_B8
  loc_5E32EB: ExitProcHresult
End Sub

Private Sub Form_Load() '5D3A60
  'Data Table: 43D268
  loc_5D3A44: ImpAdLdI4 MemVar_74BEF4
  loc_5D3A47: FLdPrThis
  loc_5D3A48: VCallAd Control_ID_lblCUIT
  loc_5D3A4B: FStAdFunc var_88
  loc_5D3A4E: FLdPr var_88
  loc_5D3A51: Me.Caption = from_stack_1
  loc_5D3A56: FFree1Ad var_88
  loc_5D3A59: from_stack_1v = Proc_28_20_5FCC64()
  loc_5D3A5E: ExitProcHresult
End Sub

Public Function sNroClienteGet() '43DE80
  sNroClienteGet = sNroCliente
End Function

Public Sub sNroClientePut(Value) '43DE8F
  sNroCliente = Value
End Sub

Public Function sRazonSocialGet() '43DE9E
  sRazonSocialGet = sRazonSocial
End Function

Public Sub sRazonSocialPut(Value) '43DEAD
  sRazonSocial = Value
End Sub

Public Function sDomicilioGet() '43DEBC
  sDomicilioGet = sDomicilio
End Function

Public Sub sDomicilioPut(Value) '43DECB
  sDomicilio = Value
End Sub

Public Function sTelefonoGet() '43DEDA
  sTelefonoGet = sTelefono
End Function

Public Sub sTelefonoPut(Value) '43DEE9
  sTelefono = Value
End Sub

Public Function sCUITGet() '43DEF8
  sCUITGet = sCUIT
End Function

Public Sub sCUITPut(Value) '43DF07
  sCUIT = Value
End Sub

Public Function sCuentaCorrienteGet() '43DF16
  sCuentaCorrienteGet = sCuentaCorriente
End Function

Public Sub sCuentaCorrientePut(Value) '43DF25
  sCuentaCorriente = Value
End Sub

Public Function sIVAGet() '43DF34
  sIVAGet = sIVA
End Function

Public Sub sIVAPut(Value) '43DF43
  sIVA = Value
End Sub

Private Function Proc_28_20_5FCC64() '5FCC64
  'Data Table: 43D268
  loc_5FCB94: LitStr vbNullString
  loc_5FCB97: FLdPrThis
  loc_5FCB98: VCallAd Control_ID_txtRazonSocial
  loc_5FCB9B: FStAdFunc var_8C
  loc_5FCB9E: FLdPr var_8C
  loc_5FCBA1: Me.Text = from_stack_1
  loc_5FCBA6: FFree1Ad var_8C
  loc_5FCBA9: LitStr vbNullString
  loc_5FCBAC: FLdPrThis
  loc_5FCBAD: VCallAd Control_ID_txtDomicilio
  loc_5FCBB0: FStAdFunc var_8C
  loc_5FCBB3: FLdPr var_8C
  loc_5FCBB6: Me.Text = from_stack_1
  loc_5FCBBB: FFree1Ad var_8C
  loc_5FCBBE: LitStr vbNullString
  loc_5FCBC1: FLdPrThis
  loc_5FCBC2: VCallAd Control_ID_txtTelefono
  loc_5FCBC5: FStAdFunc var_8C
  loc_5FCBC8: FLdPr var_8C
  loc_5FCBCB: Me.Text = from_stack_1
  loc_5FCBD0: FFree1Ad var_8C
  loc_5FCBD3: LitStr vbNullString
  loc_5FCBD6: FLdPrThis
  loc_5FCBD7: VCallAd Control_ID_txtCUIT
  loc_5FCBDA: FStAdFunc var_8C
  loc_5FCBDD: FLdPr var_8C
  loc_5FCBE0: Me.Text = from_stack_1
  loc_5FCBE5: FFree1Ad var_8C
  loc_5FCBE8: LitI4 0
  loc_5FCBED: CI2I4
  loc_5FCBEE: FLdPrThis
  loc_5FCBEF: VCallAd Control_ID_chkCuentaCorriente
  loc_5FCBF2: FStAdFunc var_8C
  loc_5FCBF5: FLdPr var_8C
  loc_5FCBF8: Me.Value = from_stack_1
  loc_5FCBFD: FFree1Ad var_8C
  loc_5FCC00: LitI2_Byte 1
  loc_5FCC02: FLdRfVar var_86
  loc_5FCC05: LitI2_Byte 4
  loc_5FCC07: ForI2 var_90
  loc_5FCC0D: LitI2_Byte 0
  loc_5FCC0F: FLdRfVar var_94
  loc_5FCC12: FLdI2 var_86
  loc_5FCC15: FLdPrThis
  loc_5FCC16: VCallAd Control_ID_optIVA
  loc_5FCC19: FStAdFunc var_8C
  loc_5FCC1C: FLdPr var_8C
  loc_5FCC1F: Set from_stack_2 = Me(from_stack_1)
  loc_5FCC24: FLdPr var_94
  loc_5FCC27: Me.Value = from_stack_1b
  loc_5FCC2C: FFreeAd var_8C = ""
  loc_5FCC33: FLdRfVar var_86
  loc_5FCC36: NextI2 var_90, loc_5FCC0D
  loc_5FCC3B: LitI2_Byte &HFF
  loc_5FCC3D: FLdRfVar var_94
  loc_5FCC40: LitI2_Byte 0
  loc_5FCC42: FLdPrThis
  loc_5FCC43: VCallAd Control_ID_optIVA
  loc_5FCC46: FStAdFunc var_8C
  loc_5FCC49: FLdPr var_8C
  loc_5FCC4C: Set from_stack_2 = Me(from_stack_1)
  loc_5FCC51: FLdPr var_94
  loc_5FCC54: Me.Value = from_stack_1b
  loc_5FCC59: FFreeAd var_8C = ""
  loc_5FCC60: ExitProcHresult
End Function

Private Function Proc_28_21_64B274(arg_C) '64B274
  'Data Table: 43D268
  loc_64AFFC: ILdRf arg_C
  loc_64AFFF: FStStrCopy var_88
  loc_64B002: ILdRf var_88
  loc_64B005: ImpAdCallFPR4 push Val()
  loc_64B00A: FStFPR8 var_B0
  loc_64B00D: FLdRfVar var_A6
  loc_64B010: FLdRfVar var_8A
  loc_64B013: FLdRfVar var_90
  loc_64B016: FLdFPR8 var_B0
  loc_64B019: CVarR8
  loc_64B01D: PopAdLdVar
  loc_64B01E: FLdRfVar var_94
  loc_64B021: ImpAdLdRf MemVar_74C760
  loc_64B024: NewIfNullPr Formx
  loc_64B027: from_stack_1v = Formx.global_4589716Get()
  loc_64B02C: FLdPr var_94
  loc_64B02F: Call 0.Method_arg_DC ()
  loc_64B034: FLdI2 var_A6
  loc_64B037: NotI4
  loc_64B038: FFree1Ad var_94
  loc_64B03B: BranchF loc_64B06A
  loc_64B03E: FLdRfVar var_C0
  loc_64B041: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64B046: FLdRfVar var_C0
  loc_64B049: CBoolVarNull
  loc_64B04B: FFree1Var var_C0 = ""
  loc_64B04E: BranchF loc_64B067
  loc_64B051: ILdRf Me
  loc_64B054: FStAdNoPop
  loc_64B058: ImpAdLdRf MemVar_7520D4
  loc_64B05B: NewIfNullPr Global
  loc_64B05E: Global.Unload from_stack_1
  loc_64B063: FFree1Ad var_94
  loc_64B066: ExitProcHresult
  loc_64B067: Branch loc_64B002
  loc_64B06A: FLdI2 var_8A
  loc_64B06D: BranchF loc_64B080
  loc_64B070: from_stack_1v = Proc_28_20_5FCC64()
  loc_64B075: LitI2_Byte 0
  loc_64B077: FLdPr Me
  loc_64B07A: MemStI2 global_80
  loc_64B07D: Branch loc_64B273
  loc_64B080: LitVarI2 var_C0, 25
  loc_64B085: LitI4 5
  loc_64B08A: FLdRfVar var_90
  loc_64B08D: CVarRef
  loc_64B092: FLdRfVar var_E0
  loc_64B095: ImpAdCallFPR4  = Mid(, , )
  loc_64B09A: FLdRfVar var_E0
  loc_64B09D: FLdRfVar var_F0
  loc_64B0A0: ImpAdCallFPR4  = Trim()
  loc_64B0A5: FLdRfVar var_F0
  loc_64B0A8: CStrVarVal var_F4
  loc_64B0AC: FLdPrThis
  loc_64B0AD: VCallAd Control_ID_txtRazonSocial
  loc_64B0B0: FStAdFunc var_94
  loc_64B0B3: FLdPr var_94
  loc_64B0B6: Me.Text = from_stack_1
  loc_64B0BB: FFree1Str var_F4
  loc_64B0BE: FFree1Ad var_94
  loc_64B0C1: FFreeVar var_C0 = "": var_E0 = ""
  loc_64B0CA: LitVarI2 var_C0, 13
  loc_64B0CF: LitI4 &H55
  loc_64B0D4: FLdRfVar var_90
  loc_64B0D7: CVarRef
  loc_64B0DC: FLdRfVar var_E0
  loc_64B0DF: ImpAdCallFPR4  = Mid(, , )
  loc_64B0E4: FLdRfVar var_E0
  loc_64B0E7: FLdRfVar var_F0
  loc_64B0EA: ImpAdCallFPR4  = Trim()
  loc_64B0EF: FLdRfVar var_F0
  loc_64B0F2: CStrVarVal var_F4
  loc_64B0F6: FLdPrThis
  loc_64B0F7: VCallAd Control_ID_txtCUIT
  loc_64B0FA: FStAdFunc var_94
  loc_64B0FD: FLdPr var_94
  loc_64B100: Me.Text = from_stack_1
  loc_64B105: FFree1Str var_F4
  loc_64B108: FFree1Ad var_94
  loc_64B10B: FFreeVar var_C0 = "": var_E0 = ""
  loc_64B114: LitVarI2 var_C0, 40
  loc_64B119: LitI4 &H1E
  loc_64B11E: FLdRfVar var_90
  loc_64B121: CVarRef
  loc_64B126: FLdRfVar var_E0
  loc_64B129: ImpAdCallFPR4  = Mid(, , )
  loc_64B12E: FLdRfVar var_E0
  loc_64B131: FLdRfVar var_F0
  loc_64B134: ImpAdCallFPR4  = Trim()
  loc_64B139: FLdRfVar var_F0
  loc_64B13C: CStrVarVal var_F4
  loc_64B140: FLdPrThis
  loc_64B141: VCallAd Control_ID_txtDomicilio
  loc_64B144: FStAdFunc var_94
  loc_64B147: FLdPr var_94
  loc_64B14A: Me.Text = from_stack_1
  loc_64B14F: FFree1Str var_F4
  loc_64B152: FFree1Ad var_94
  loc_64B155: FFreeVar var_C0 = "": var_E0 = ""
  loc_64B15E: LitVarI2 var_C0, 15
  loc_64B163: LitI4 &H46
  loc_64B168: FLdRfVar var_90
  loc_64B16B: CVarRef
  loc_64B170: FLdRfVar var_E0
  loc_64B173: ImpAdCallFPR4  = Mid(, , )
  loc_64B178: FLdRfVar var_E0
  loc_64B17B: FLdRfVar var_F0
  loc_64B17E: ImpAdCallFPR4  = Trim()
  loc_64B183: FLdRfVar var_F0
  loc_64B186: CStrVarVal var_F4
  loc_64B18A: FLdPrThis
  loc_64B18B: VCallAd Control_ID_txtTelefono
  loc_64B18E: FStAdFunc var_94
  loc_64B191: FLdPr var_94
  loc_64B194: Me.Text = from_stack_1
  loc_64B199: FFree1Str var_F4
  loc_64B19C: FFree1Ad var_94
  loc_64B19F: FFreeVar var_C0 = "": var_E0 = ""
  loc_64B1A8: LitVarI2 var_C0, 1
  loc_64B1AD: LitI4 &H63
  loc_64B1B2: FLdRfVar var_90
  loc_64B1B5: CVarRef
  loc_64B1BA: FLdRfVar var_E0
  loc_64B1BD: ImpAdCallFPR4  = Mid(, , )
  loc_64B1C2: FLdRfVar var_E0
  loc_64B1C5: CStrVarVal var_F4
  loc_64B1C9: ImpAdCallFPR4 push Val()
  loc_64B1CE: FStFPR8 var_B0
  loc_64B1D1: LitVarI4
  loc_64B1D9: LitVarI4
  loc_64B1E1: FLdFPR8 var_B0
  loc_64B1E4: CR8R8
  loc_64B1E5: LitI2_Byte 1
  loc_64B1E7: CR8I2
  loc_64B1E8: EqR4
  loc_64B1E9: CVarBoolI2 var_104
  loc_64B1ED: FLdRfVar var_144
  loc_64B1F0: ImpAdCallFPR4  = IIf(, , )
  loc_64B1F5: FLdRfVar var_144
  loc_64B1F8: CI2Var
  loc_64B1F9: FLdPrThis
  loc_64B1FA: VCallAd Control_ID_chkCuentaCorriente
  loc_64B1FD: FStAdFunc var_94
  loc_64B200: FLdPr var_94
  loc_64B203: Me.Value = from_stack_1
  loc_64B208: FFree1Str var_F4
  loc_64B20B: FFree1Ad var_94
  loc_64B20E: FFreeVar var_C0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_134 = ""
  loc_64B21D: LitVarI2 var_C0, 1
  loc_64B222: LitI4 &H62
  loc_64B227: FLdRfVar var_90
  loc_64B22A: CVarRef
  loc_64B22F: FLdRfVar var_E0
  loc_64B232: ImpAdCallFPR4  = Mid(, , )
  loc_64B237: LitI2_Byte &HFF
  loc_64B239: FLdRfVar var_148
  loc_64B23C: FLdRfVar var_E0
  loc_64B23F: FnCIntVar
  loc_64B241: LitI2_Byte 1
  loc_64B243: SubI2
  loc_64B244: FLdPrThis
  loc_64B245: VCallAd Control_ID_optIVA
  loc_64B248: FStAdFunc var_94
  loc_64B24B: FLdPr var_94
  loc_64B24E: Set from_stack_2 = Me(from_stack_1)
  loc_64B253: FLdPr var_148
  loc_64B256: Me.Value = from_stack_1b
  loc_64B25B: FFreeAd var_94 = ""
  loc_64B262: FFreeVar var_C0 = "": var_E0 = ""
  loc_64B26B: LitI2_Byte &HFF
  loc_64B26D: FLdPr Me
  loc_64B270: MemStI2 global_80
  loc_64B273: ExitProcHresult
End Function

Private Function Proc_28_22_5E8F04(arg_C) '5E8F04
  'Data Table: 43D268
  loc_5E8E80: ILdI2 arg_C
  loc_5E8E83: FLdPrThis
  loc_5E8E84: VCallAd Control_ID_txtCUIT
  loc_5E8E87: FStAdFunc var_88
  loc_5E8E8A: FLdPr var_88
  loc_5E8E8D: Me.Locked = from_stack_1b
  loc_5E8E92: FFree1Ad var_88
  loc_5E8E95: ILdI2 arg_C
  loc_5E8E98: FLdPrThis
  loc_5E8E99: VCallAd Control_ID_txtDomicilio
  loc_5E8E9C: FStAdFunc var_88
  loc_5E8E9F: FLdPr var_88
  loc_5E8EA2: Me.Locked = from_stack_1b
  loc_5E8EA7: FFree1Ad var_88
  loc_5E8EAA: ILdI2 arg_C
  loc_5E8EAD: FLdPrThis
  loc_5E8EAE: VCallAd Control_ID_txtRazonSocial
  loc_5E8EB1: FStAdFunc var_88
  loc_5E8EB4: FLdPr var_88
  loc_5E8EB7: Me.Locked = from_stack_1b
  loc_5E8EBC: FFree1Ad var_88
  loc_5E8EBF: ILdI2 arg_C
  loc_5E8EC2: FLdPrThis
  loc_5E8EC3: VCallAd Control_ID_txtTelefono
  loc_5E8EC6: FStAdFunc var_88
  loc_5E8EC9: FLdPr var_88
  loc_5E8ECC: Me.Locked = from_stack_1b
  loc_5E8ED1: FFree1Ad var_88
  loc_5E8ED4: ILdI2 arg_C
  loc_5E8ED7: NotI4
  loc_5E8ED8: FLdPrThis
  loc_5E8ED9: VCallAd Control_ID_fraCuentaCorriente
  loc_5E8EDC: FStAdFunc var_88
  loc_5E8EDF: FLdPr var_88
  loc_5E8EE2: Me.Enabled = from_stack_1b
  loc_5E8EE7: FFree1Ad var_88
  loc_5E8EEA: ILdI2 arg_C
  loc_5E8EED: NotI4
  loc_5E8EEE: FLdPrThis
  loc_5E8EEF: VCallAd Control_ID_fraIVA
  loc_5E8EF2: FStAdFunc var_88
  loc_5E8EF5: FLdPr var_88
  loc_5E8EF8: Me.Enabled = from_stack_1b
  loc_5E8EFD: FFree1Ad var_88
  loc_5E8F00: ExitProcHresult
  loc_5E8F01: CVarI2 arg_18
End Function

Private Function Proc_28_23_605518() '605518
  'Data Table: 43D268
  loc_605448: ZeroRetValVar
  loc_60544A: LitI2_Byte 1
  loc_60544C: FLdRfVar var_96
  loc_60544F: LitI2_Byte 5
  loc_605451: ForI2 var_9A
  loc_605457: FLdRfVar var_A6
  loc_60545A: FLdRfVar var_A4
  loc_60545D: FLdI2 var_96
  loc_605460: LitI2_Byte 1
  loc_605462: SubI2
  loc_605463: FLdPrThis
  loc_605464: VCallAd Control_ID_optIVA
  loc_605467: FStAdFunc var_A0
  loc_60546A: FLdPr var_A0
  loc_60546D: Set from_stack_2 = Me(from_stack_1)
  loc_605472: FLdPr var_A4
  loc_605475:  = Me.Value
  loc_60547A: FLdI2 var_A6
  loc_60547D: FFreeAd var_A0 = ""
  loc_605484: BranchF loc_60550A
  loc_605487: LitI4 0
  loc_60548C: LitI4 4
  loc_605491: FLdRfVar var_AC
  loc_605494: Redim
  loc_60549E: LitVarStr var_BC, "Consumidor Final"
  loc_6054A3: LitI4 0
  loc_6054A8: ILdRf var_AC
  loc_6054AB: Ary1StVarCopy
  loc_6054AD: LitVarStr var_CC, "Exento"
  loc_6054B2: LitI4 1
  loc_6054B7: ILdRf var_AC
  loc_6054BA: Ary1StVarCopy
  loc_6054BC: LitVarStr var_DC, "No Responsable"
  loc_6054C1: LitI4 2
  loc_6054C6: ILdRf var_AC
  loc_6054C9: Ary1StVarCopy
  loc_6054CB: LitVarStr var_EC, "Responsable Inscripto"
  loc_6054D0: LitI4 3
  loc_6054D5: ILdRf var_AC
  loc_6054D8: Ary1StVarCopy
  loc_6054DA: LitVarStr var_FC, "Responsable No Inscripto"
  loc_6054DF: LitI4 4
  loc_6054E4: ILdRf var_AC
  loc_6054E7: Ary1StVarCopy
  loc_6054E9: FLdRfVar var_AC
  loc_6054EC: FLdI2 var_96
  loc_6054EF: CR8I2
  loc_6054F0: PopFPR4
  loc_6054F1: FLdRfVar var_10C
  loc_6054F4: ImpAdCallFPR4  = Choose(, )
  loc_6054F9: FLdRfVar var_AC
  loc_6054FC: Erase
  loc_6054FD: FLdRfVar var_10C
  loc_605500: FStVar var_94
  loc_605504: ExitProcCbHresult
  loc_60550A: FLdRfVar var_96
  loc_60550D: NextI2 var_9A, loc_605457
  loc_605512: ExitProcCbHresult
End Function
