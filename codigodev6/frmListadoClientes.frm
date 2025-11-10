VERSION 5.00
Begin VB.Form frmListadoClientes
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
  ClientHeight = 8910
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.TextBox txtHasta
    Left = 1080
    Top = 1680
    Width = 375
    Height = 390
    Text = "Z"
    TabIndex = 1
    Alignment = 2 'Center
    MaxLength = 1
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtDesde
    Left = 1080
    Top = 1200
    Width = 375
    Height = 390
    Text = "0"
    TabIndex = 0
    Alignment = 2 'Center
    MaxLength = 1
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Aceptar"
    Left = 10200
    Top = 1320
    Width = 1455
    Height = 615
    TabIndex = 6
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
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 8520
    Top = 1320
    Width = 1455
    Height = 615
    TabIndex = 5
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
  Begin VB.ListBox lstListadoClientes
    Left = 120
    Top = 2280
    Width = 11655
    Height = 6360
    TabIndex = 7
    TabStop = 0   'False
    BeginProperty Font
      Name = "Courier New"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CheckBox chkSaldo
    Caption = "Incluir Saldo"
    Left = 2520
    Top = 1680
    Width = 1815
    Height = 375
    TabIndex = 3
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
  Begin VB.CheckBox chkCuentaCorriente
    Caption = "Clientes con Cuenta Corriente"
    Left = 2160
    Top = 1200
    Width = 3855
    Height = 375
    TabIndex = 2
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
  Begin VB.CommandButton cmdListar
    Caption = "&Listar"
    Left = 6840
    Top = 1320
    Width = 1455
    Height = 615
    TabIndex = 4
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
    Caption = "Hasta"
    Left = 240
    Top = 1680
    Width = 735
    Height = 375
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
  Begin VB.Label Label2
    Caption = "Desde"
    Left = 240
    Top = 1200
    Width = 735
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
  Begin VB.Line Line1
    X1 = 240
    Y1 = 960
    X2 = 11640
    Y2 = 960
    BorderWidth = 3
  End
  Begin VB.Label Label1
    Caption = "Listado de Clientes"
    Left = 120
    Top = 240
    Width = 11655
    Height = 615
    TabIndex = 8
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

Attribute VB_Name = "frmListadoClientes"


Private Sub cmdCancelar_Click() '5D1D58
  'Data Table: 423AA8
  loc_5D1D40: ILdRf Me
  loc_5D1D43: FStAdNoPop
  loc_5D1D47: ImpAdLdRf MemVar_7520D4
  loc_5D1D4A: NewIfNullPr Global
  loc_5D1D4D: Global.Unload from_stack_1
  loc_5D1D52: FFree1Ad var_88
  loc_5D1D55: ExitProcHresult
End Sub

Private Sub chkCuentaCorriente_Click() '5DF084
  'Data Table: 423AA8
  loc_5DF034: FLdRfVar var_8A
  loc_5DF037: FLdPrThis
  loc_5DF038: VCallAd Control_ID_chkCuentaCorriente
  loc_5DF03B: FStAdFunc var_88
  loc_5DF03E: FLdPr var_88
  loc_5DF041:  = Me.Value
  loc_5DF046: FLdI2 var_8A
  loc_5DF049: CI4UI1
  loc_5DF04A: LitI4 1
  loc_5DF04F: EqI4
  loc_5DF050: FFree1Ad var_88
  loc_5DF053: BranchF loc_5DF06D
  loc_5DF056: LitI2_Byte &HFF
  loc_5DF058: FLdPrThis
  loc_5DF059: VCallAd Control_ID_chkSaldo
  loc_5DF05C: FStAdFunc var_88
  loc_5DF05F: FLdPr var_88
  loc_5DF062: Me.Visible = from_stack_1b
  loc_5DF067: FFree1Ad var_88
  loc_5DF06A: Branch loc_5DF081
  loc_5DF06D: LitI2_Byte 0
  loc_5DF06F: FLdPrThis
  loc_5DF070: VCallAd Control_ID_chkSaldo
  loc_5DF073: FStAdFunc var_88
  loc_5DF076: FLdPr var_88
  loc_5DF079: Me.Visible = from_stack_1b
  loc_5DF07E: FFree1Ad var_88
  loc_5DF081: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '6BFB60
  'Data Table: 423AA8
  loc_6BF300: FLdRfVar var_A4
  loc_6BF303: FLdPrThis
  loc_6BF304: VCallAd Control_ID_txtDesde
  loc_6BF307: FStAdFunc var_A0
  loc_6BF30A: FLdPr var_A0
  loc_6BF30D:  = Me.Text
  loc_6BF312: FLdRfVar var_AC
  loc_6BF315: FLdPrThis
  loc_6BF316: VCallAd Control_ID_txtHasta
  loc_6BF319: FStAdFunc var_A8
  loc_6BF31C: FLdPr var_A8
  loc_6BF31F:  = Me.Text
  loc_6BF324: FLdRfVar var_AE
  loc_6BF327: FLdRfVar var_90
  loc_6BF32A: FLdRfVar var_8E
  loc_6BF32D: FLdRfVar var_94
  loc_6BF330: FLdRfVar var_92
  loc_6BF333: ILdRf var_AC
  loc_6BF336: ILdRf var_A4
  loc_6BF339: from_stack_7v = Proc_45_8_610820(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_6BF33E: FLdI2 var_AE
  loc_6BF341: NotI4
  loc_6BF342: FFreeStr var_A4 = ""
  loc_6BF349: FFreeAd var_A0 = ""
  loc_6BF350: BranchF loc_6BF37D
  loc_6BF353: LitVar_Missing var_130
  loc_6BF356: LitVar_Missing var_110
  loc_6BF359: LitVar_Missing var_F0
  loc_6BF35C: LitI4 &H40
  loc_6BF361: LitVarStr var_C0, "Rango del listado incorrecto. Verifique por favor."
  loc_6BF366: FStVarCopyObj var_D0
  loc_6BF369: FLdRfVar var_D0
  loc_6BF36C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BF371: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_6BF37C: ExitProcHresult
  loc_6BF37D: FLdPrThis
  loc_6BF37E: VCallAd Control_ID_lstListadoClientes
  loc_6BF381: FStAdFunc var_A0
  loc_6BF384: FLdPr var_A0
  loc_6BF387: Me.Clear
  loc_6BF38C: FFree1Ad var_A0
  loc_6BF38F: LitI2_Byte &HFF
  loc_6BF391: FLdRfVar var_98
  loc_6BF394: NewIfNullPr CFuente
  loc_6BF39C: LitI2_Byte &H10
  loc_6BF39E: CR8I2
  loc_6BF39F: PopFPR4
  loc_6BF3A0: FLdRfVar var_98
  loc_6BF3A3: NewIfNullPr CFuente
  loc_6BF3AB: LitStr "Courier New"
  loc_6BF3AE: FLdRfVar var_98
  loc_6BF3B1: NewIfNullPr CFuente
  loc_6BF3B4: Reset
  loc_6BF3B9: FLdRfVar var_AE
  loc_6BF3BC: FLdRfVar var_98
  loc_6BF3BF: NewIfNullRf
  loc_6BF3C3: LitStr "Listado de Cliente"
  loc_6BF3C6: FStStrCopy var_A4
  loc_6BF3C9: FLdRfVar var_A4
  loc_6BF3CC: FLdRfVar var_9C
  loc_6BF3CF: NewIfNullPr CReporte
  loc_6BF3D2:  = CReporte.BackColor
  loc_6BF3D7: FLdI2 var_AE
  loc_6BF3DA: NotI4
  loc_6BF3DB: FFree1Str var_A4
  loc_6BF3DE: BranchF loc_6BF40F
  loc_6BF3E1: FLdRfVar var_9C
  loc_6BF3E4: NewIfNullPr CReporte
  loc_6BF3E7:  = CReporte.Left
  loc_6BF3EC: LitNothing
  loc_6BF3EE: CastAd
  loc_6BF3F1: FStAdFunc var_98
  loc_6BF3F4: LitNothing
  loc_6BF3F6: CastAd
  loc_6BF3F9: FStAdFunc var_9C
  loc_6BF3FC: FLdPrThis
  loc_6BF3FD: VCallAd Control_ID_lstListadoClientes
  loc_6BF400: FStAdFunc var_A0
  loc_6BF403: FLdPr var_A0
  loc_6BF406: Me.Clear
  loc_6BF40B: FFree1Ad var_A0
  loc_6BF40E: ExitProcHresult
  loc_6BF40F: FLdRfVar var_AE
  loc_6BF412: FLdRfVar var_98
  loc_6BF415: NewIfNullRf
  loc_6BF419: LitStr " "
  loc_6BF41C: FStStrCopy var_A4
  loc_6BF41F: FLdRfVar var_A4
  loc_6BF422: FLdRfVar var_9C
  loc_6BF425: NewIfNullPr CReporte
  loc_6BF428:  = CReporte.BackColor
  loc_6BF42D: FLdI2 var_AE
  loc_6BF430: NotI4
  loc_6BF431: FFree1Str var_A4
  loc_6BF434: BranchF loc_6BF465
  loc_6BF437: FLdRfVar var_9C
  loc_6BF43A: NewIfNullPr CReporte
  loc_6BF43D:  = CReporte.Left
  loc_6BF442: LitNothing
  loc_6BF444: CastAd
  loc_6BF447: FStAdFunc var_98
  loc_6BF44A: LitNothing
  loc_6BF44C: CastAd
  loc_6BF44F: FStAdFunc var_9C
  loc_6BF452: FLdPrThis
  loc_6BF453: VCallAd Control_ID_lstListadoClientes
  loc_6BF456: FStAdFunc var_A0
  loc_6BF459: FLdPr var_A0
  loc_6BF45C: Me.Clear
  loc_6BF461: FFree1Ad var_A0
  loc_6BF464: ExitProcHresult
  loc_6BF465: FLdRfVar var_AE
  loc_6BF468: FLdRfVar var_98
  loc_6BF46B: NewIfNullRf
  loc_6BF46F: LitStr " "
  loc_6BF472: FStStrCopy var_A4
  loc_6BF475: FLdRfVar var_A4
  loc_6BF478: FLdRfVar var_9C
  loc_6BF47B: NewIfNullPr CReporte
  loc_6BF47E:  = CReporte.BackColor
  loc_6BF483: FLdI2 var_AE
  loc_6BF486: NotI4
  loc_6BF487: FFree1Str var_A4
  loc_6BF48A: BranchF loc_6BF4BB
  loc_6BF48D: FLdRfVar var_9C
  loc_6BF490: NewIfNullPr CReporte
  loc_6BF493:  = CReporte.Left
  loc_6BF498: LitNothing
  loc_6BF49A: CastAd
  loc_6BF49D: FStAdFunc var_98
  loc_6BF4A0: LitNothing
  loc_6BF4A2: CastAd
  loc_6BF4A5: FStAdFunc var_9C
  loc_6BF4A8: FLdPrThis
  loc_6BF4A9: VCallAd Control_ID_lstListadoClientes
  loc_6BF4AC: FStAdFunc var_A0
  loc_6BF4AF: FLdPr var_A0
  loc_6BF4B2: Me.Clear
  loc_6BF4B7: FFree1Ad var_A0
  loc_6BF4BA: ExitProcHresult
  loc_6BF4BB: LitI2_Byte &HA
  loc_6BF4BD: CR8I2
  loc_6BF4BE: PopFPR4
  loc_6BF4BF: FLdRfVar var_98
  loc_6BF4C2: NewIfNullPr CFuente
  loc_6BF4CA: LitStr "Arial"
  loc_6BF4CD: FLdRfVar var_98
  loc_6BF4D0: NewIfNullPr CFuente
  loc_6BF4D3: Reset
  loc_6BF4D8: FLdRfVar var_AE
  loc_6BF4DB: FLdRfVar var_98
  loc_6BF4DE: NewIfNullRf
  loc_6BF4E2: LitStr "Listado de clientes"
  loc_6BF4E5: FStStrCopy var_A4
  loc_6BF4E8: FLdRfVar var_A4
  loc_6BF4EB: FLdRfVar var_9C
  loc_6BF4EE: NewIfNullPr CReporte
  loc_6BF4F1:  = CReporte.hWnd
  loc_6BF4F6: FLdI2 var_AE
  loc_6BF4F9: NotI4
  loc_6BF4FA: FFree1Str var_A4
  loc_6BF4FD: BranchF loc_6BF52E
  loc_6BF500: FLdRfVar var_9C
  loc_6BF503: NewIfNullPr CReporte
  loc_6BF506:  = CReporte.Left
  loc_6BF50B: LitNothing
  loc_6BF50D: CastAd
  loc_6BF510: FStAdFunc var_98
  loc_6BF513: LitNothing
  loc_6BF515: CastAd
  loc_6BF518: FStAdFunc var_9C
  loc_6BF51B: FLdPrThis
  loc_6BF51C: VCallAd Control_ID_lstListadoClientes
  loc_6BF51F: FStAdFunc var_A0
  loc_6BF522: FLdPr var_A0
  loc_6BF525: Me.Clear
  loc_6BF52A: FFree1Ad var_A0
  loc_6BF52D: ExitProcHresult
  loc_6BF52E: FLdRfVar var_D0
  loc_6BF531: ImpAdCallFPR4  = Date
  loc_6BF536: LitI4 1
  loc_6BF53B: LitI4 1
  loc_6BF540: LitVarStr var_C0, "dd/mm/yyyy"
  loc_6BF545: FStVarCopyObj var_F0
  loc_6BF548: FLdRfVar var_F0
  loc_6BF54B: FLdRfVar var_D0
  loc_6BF54E: ImpAdCallI2 Format$(, )
  loc_6BF553: FStStr var_140
  loc_6BF556: FLdRfVar var_110
  loc_6BF559: ImpAdCallFPR4  = Time
  loc_6BF55E: LitI4 1
  loc_6BF563: LitI4 1
  loc_6BF568: LitVarStr var_E0, "hh:mm:ss"
  loc_6BF56D: FStVarCopyObj var_130
  loc_6BF570: FLdRfVar var_130
  loc_6BF573: FLdRfVar var_110
  loc_6BF576: ImpAdCallI2 Format$(, )
  loc_6BF57B: FStStr var_144
  loc_6BF57E: FLdRfVar var_AE
  loc_6BF581: FLdRfVar var_98
  loc_6BF584: NewIfNullRf
  loc_6BF588: LitStr "Fecha: "
  loc_6BF58B: FLdZeroAd var_140
  loc_6BF58E: FStStrNoPop var_A4
  loc_6BF591: ConcatStr
  loc_6BF592: FStStrNoPop var_AC
  loc_6BF595: LitStr "  /\  Hora: "
  loc_6BF598: ConcatStr
  loc_6BF599: FStStrNoPop var_134
  loc_6BF59C: FLdZeroAd var_144
  loc_6BF59F: FStStrNoPop var_138
  loc_6BF5A2: ConcatStr
  loc_6BF5A3: PopTmpLdAdStr
  loc_6BF5A7: FLdRfVar var_9C
  loc_6BF5AA: NewIfNullPr CReporte
  loc_6BF5AD: CReporte.Caption = from_stack_1
  loc_6BF5B2: FLdI2 var_AE
  loc_6BF5B5: NotI4
  loc_6BF5B6: FFreeStr var_A4 = "": var_AC = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_6BF5C7: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_6BF5D2: BranchF loc_6BF603
  loc_6BF5D5: FLdRfVar var_9C
  loc_6BF5D8: NewIfNullPr CReporte
  loc_6BF5DB:  = CReporte.Left
  loc_6BF5E0: LitNothing
  loc_6BF5E2: CastAd
  loc_6BF5E5: FStAdFunc var_98
  loc_6BF5E8: LitNothing
  loc_6BF5EA: CastAd
  loc_6BF5ED: FStAdFunc var_9C
  loc_6BF5F0: FLdPrThis
  loc_6BF5F1: VCallAd Control_ID_lstListadoClientes
  loc_6BF5F4: FStAdFunc var_A0
  loc_6BF5F7: FLdPr var_A0
  loc_6BF5FA: Me.Clear
  loc_6BF5FF: FFree1Ad var_A0
  loc_6BF602: ExitProcHresult
  loc_6BF603: LitI2_Byte 0
  loc_6BF605: FLdRfVar var_98
  loc_6BF608: NewIfNullPr CFuente
  loc_6BF610: LitDate 8.25
  loc_6BF619: PopFPR4
  loc_6BF61A: FLdRfVar var_98
  loc_6BF61D: NewIfNullPr CFuente
  loc_6BF625: FLdRfVar var_AE
  loc_6BF628: FLdPrThis
  loc_6BF629: VCallAd Control_ID_chkSaldo
  loc_6BF62C: FStAdFunc var_A0
  loc_6BF62F: FLdPr var_A0
  loc_6BF632:  = Me.Value
  loc_6BF637: FLdI2 var_AE
  loc_6BF63A: CI4UI1
  loc_6BF63B: LitI4 1
  loc_6BF640: EqI4
  loc_6BF641: FLdRfVar var_146
  loc_6BF644: FLdPrThis
  loc_6BF645: VCallAd Control_ID_chkCuentaCorriente
  loc_6BF648: FStAdFunc var_A8
  loc_6BF64B: FLdPr var_A8
  loc_6BF64E:  = Me.Value
  loc_6BF653: FLdI2 var_146
  loc_6BF656: CI4UI1
  loc_6BF657: LitI4 1
  loc_6BF65C: EqI4
  loc_6BF65D: AndI4
  loc_6BF65E: FFreeAd var_A0 = ""
  loc_6BF665: BranchF loc_6BF6CE
  loc_6BF668: FLdRfVar var_AE
  loc_6BF66B: FLdRfVar var_98
  loc_6BF66E: NewIfNullRf
  loc_6BF672: LitStr "Cliente  Razón Social          Domicilio             Teléfono      "
  loc_6BF675: ImpAdLdI4 MemVar_74BEF8
  loc_6BF678: ConcatStr
  loc_6BF679: FStStrNoPop var_A4
  loc_6BF67C: LitStr "           IVA                  Saldo  "
  loc_6BF67F: ConcatStr
  loc_6BF680: PopTmpLdAdStr
  loc_6BF684: FLdRfVar var_9C
  loc_6BF687: NewIfNullPr CReporte
  loc_6BF68A: Call 0.Method_arg_5C ()
  loc_6BF68F: FLdI2 var_AE
  loc_6BF692: NotI4
  loc_6BF693: FFreeStr var_A4 = ""
  loc_6BF69A: BranchF loc_6BF6CB
  loc_6BF69D: FLdRfVar var_9C
  loc_6BF6A0: NewIfNullPr CReporte
  loc_6BF6A3:  = CReporte.Left
  loc_6BF6A8: LitNothing
  loc_6BF6AA: CastAd
  loc_6BF6AD: FStAdFunc var_98
  loc_6BF6B0: LitNothing
  loc_6BF6B2: CastAd
  loc_6BF6B5: FStAdFunc var_9C
  loc_6BF6B8: FLdPrThis
  loc_6BF6B9: VCallAd Control_ID_lstListadoClientes
  loc_6BF6BC: FStAdFunc var_A0
  loc_6BF6BF: FLdPr var_A0
  loc_6BF6C2: Me.Clear
  loc_6BF6C7: FFree1Ad var_A0
  loc_6BF6CA: ExitProcHresult
  loc_6BF6CB: Branch loc_6BF731
  loc_6BF6CE: FLdRfVar var_AE
  loc_6BF6D1: FLdRfVar var_98
  loc_6BF6D4: NewIfNullRf
  loc_6BF6D8: LitStr "Cliente  Razón Social          Domicilio                  Teléfono         "
  loc_6BF6DB: ImpAdLdI4 MemVar_74BEF8
  loc_6BF6DE: ConcatStr
  loc_6BF6DF: FStStrNoPop var_A4
  loc_6BF6E2: LitStr "           IVA                 "
  loc_6BF6E5: ConcatStr
  loc_6BF6E6: PopTmpLdAdStr
  loc_6BF6EA: FLdRfVar var_9C
  loc_6BF6ED: NewIfNullPr CReporte
  loc_6BF6F0: Call 0.Method_arg_5C ()
  loc_6BF6F5: FLdI2 var_AE
  loc_6BF6F8: NotI4
  loc_6BF6F9: FFreeStr var_A4 = ""
  loc_6BF700: BranchF loc_6BF731
  loc_6BF703: FLdRfVar var_9C
  loc_6BF706: NewIfNullPr CReporte
  loc_6BF709:  = CReporte.Left
  loc_6BF70E: LitNothing
  loc_6BF710: CastAd
  loc_6BF713: FStAdFunc var_98
  loc_6BF716: LitNothing
  loc_6BF718: CastAd
  loc_6BF71B: FStAdFunc var_9C
  loc_6BF71E: FLdPrThis
  loc_6BF71F: VCallAd Control_ID_lstListadoClientes
  loc_6BF722: FStAdFunc var_A0
  loc_6BF725: FLdPr var_A0
  loc_6BF728: Me.Clear
  loc_6BF72D: FFree1Ad var_A0
  loc_6BF730: ExitProcHresult
  loc_6BF731: LitVarStr var_C0, "_"
  loc_6BF736: FStVarCopyObj var_D0
  loc_6BF739: FLdRfVar var_D0
  loc_6BF73C: LitI4 &H6E
  loc_6BF741: FLdRfVar var_F0
  loc_6BF744: ImpAdCallFPR4  = String(, )
  loc_6BF749: FLdRfVar var_AE
  loc_6BF74C: FLdRfVar var_98
  loc_6BF74F: NewIfNullRf
  loc_6BF753: FLdRfVar var_F0
  loc_6BF756: CStrVarTmp
  loc_6BF757: PopTmpLdAdStr
  loc_6BF75B: FLdRfVar var_9C
  loc_6BF75E: NewIfNullPr CReporte
  loc_6BF761: Call 0.Method_arg_5C ()
  loc_6BF766: FLdI2 var_AE
  loc_6BF769: NotI4
  loc_6BF76A: FFree1Str var_A4
  loc_6BF76D: FFreeVar var_D0 = ""
  loc_6BF774: BranchF loc_6BF7A5
  loc_6BF777: FLdRfVar var_9C
  loc_6BF77A: NewIfNullPr CReporte
  loc_6BF77D:  = CReporte.Left
  loc_6BF782: LitNothing
  loc_6BF784: CastAd
  loc_6BF787: FStAdFunc var_98
  loc_6BF78A: LitNothing
  loc_6BF78C: CastAd
  loc_6BF78F: FStAdFunc var_9C
  loc_6BF792: FLdPrThis
  loc_6BF793: VCallAd Control_ID_lstListadoClientes
  loc_6BF796: FStAdFunc var_A0
  loc_6BF799: FLdPr var_A0
  loc_6BF79C: Me.Clear
  loc_6BF7A1: FFree1Ad var_A0
  loc_6BF7A4: ExitProcHresult
  loc_6BF7A5: FLdI2 var_8E
  loc_6BF7A8: FLdRfVar var_8C
  loc_6BF7AB: FLdI2 var_90
  loc_6BF7AE: ForI2 var_14A
  loc_6BF7B4: FLdRfVar var_AE
  loc_6BF7B7: FLdRfVar var_8A
  loc_6BF7BA: FLdRfVar var_88
  loc_6BF7BD: FLdI2 var_8C
  loc_6BF7C0: CStrUI1
  loc_6BF7C2: FStStrNoPop var_A4
  loc_6BF7C5: FLdRfVar var_A0
  loc_6BF7C8: ImpAdLdRf MemVar_74C760
  loc_6BF7CB: NewIfNullPr Formx
  loc_6BF7CE: from_stack_1v = Formx.global_4589716Get()
  loc_6BF7D3: FLdPr var_A0
  loc_6BF7D6: Formx.CurrentX = from_stack_1s
  loc_6BF7DB: FLdI2 var_AE
  loc_6BF7DE: NotI4
  loc_6BF7DF: FFree1Str var_A4
  loc_6BF7E2: FFree1Ad var_A0
  loc_6BF7E5: BranchF loc_6BF814
  loc_6BF7E8: FLdRfVar var_D0
  loc_6BF7EB: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BF7F0: FLdRfVar var_D0
  loc_6BF7F3: CBoolVarNull
  loc_6BF7F5: FFree1Var var_D0 = ""
  loc_6BF7F8: BranchF loc_6BF811
  loc_6BF7FB: ILdRf Me
  loc_6BF7FE: FStAdNoPop
  loc_6BF802: ImpAdLdRf MemVar_7520D4
  loc_6BF805: NewIfNullPr Global
  loc_6BF808: Global.Unload from_stack_1
  loc_6BF80D: FFree1Ad var_A0
  loc_6BF810: ExitProcHresult
  loc_6BF811: Branch loc_6BF7B4
  loc_6BF814: FLdI2 var_8A
  loc_6BF817: NotI4
  loc_6BF818: BranchF loc_6BF8CB
  loc_6BF81B: FLdPrThis
  loc_6BF81C: VCallAd Control_ID_lstListadoClientes
  loc_6BF81F: FStAdFunc var_15C
  loc_6BF822: FLdRfVar var_AE
  loc_6BF825: FLdPrThis
  loc_6BF826: VCallAd Control_ID_chkCuentaCorriente
  loc_6BF829: FStAdFunc var_A0
  loc_6BF82C: FLdPr var_A0
  loc_6BF82F:  = Me.Value
  loc_6BF834: FLdRfVar var_146
  loc_6BF837: FLdPrThis
  loc_6BF838: VCallAd Control_ID_chkSaldo
  loc_6BF83B: FStAdFunc var_A8
  loc_6BF83E: FLdPr var_A8
  loc_6BF841:  = Me.Value
  loc_6BF846: FLdRfVar var_156
  loc_6BF849: FLdRfVar var_9C
  loc_6BF84C: NewIfNullAd
  loc_6BF84F: FStAd var_154 
  loc_6BF853: FLdRfVar var_154
  loc_6BF856: CVarRef
  loc_6BF85B: FLdI2 var_146
  loc_6BF85E: CI4UI1
  loc_6BF85F: LitI4 1
  loc_6BF864: EqI4
  loc_6BF865: FLdI2 var_AE
  loc_6BF868: CI4UI1
  loc_6BF869: LitI4 1
  loc_6BF86E: EqI4
  loc_6BF86F: ILdRf var_88
  loc_6BF872: FLdZeroAd var_15C
  loc_6BF875: FStAdFunc var_150
  loc_6BF878: FLdRfVar var_150
  loc_6BF87B: from_stack_5v = Proc_45_7_6D4130(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6BF880: ILdRf var_154
  loc_6BF883: CastAd
  loc_6BF886: FStAdFunc var_9C
  loc_6BF889: FLdI2 var_156
  loc_6BF88C: NotI4
  loc_6BF88D: FFreeAd var_A0 = "": var_A8 = "": var_150 = "": var_154 = ""
  loc_6BF89A: BranchF loc_6BF8CB
  loc_6BF89D: FLdRfVar var_9C
  loc_6BF8A0: NewIfNullPr CReporte
  loc_6BF8A3:  = CReporte.Left
  loc_6BF8A8: LitNothing
  loc_6BF8AA: CastAd
  loc_6BF8AD: FStAdFunc var_98
  loc_6BF8B0: LitNothing
  loc_6BF8B2: CastAd
  loc_6BF8B5: FStAdFunc var_9C
  loc_6BF8B8: FLdPrThis
  loc_6BF8B9: VCallAd Control_ID_lstListadoClientes
  loc_6BF8BC: FStAdFunc var_A0
  loc_6BF8BF: FLdPr var_A0
  loc_6BF8C2: Me.Clear
  loc_6BF8C7: FFree1Ad var_A0
  loc_6BF8CA: ExitProcHresult
  loc_6BF8CB: FLdRfVar var_8C
  loc_6BF8CE: NextI2 var_14A, loc_6BF7B4
  loc_6BF8D3: FLdI2 var_92
  loc_6BF8D6: FLdRfVar var_8C
  loc_6BF8D9: FLdI2 var_94
  loc_6BF8DC: ForI2 var_160
  loc_6BF8E2: FLdI2 var_8C
  loc_6BF8E5: CI4UI1
  loc_6BF8E6: ImpAdCallI2 Chr$()
  loc_6BF8EB: FStStr var_AC
  loc_6BF8EE: FLdRfVar var_AE
  loc_6BF8F1: FLdRfVar var_8A
  loc_6BF8F4: FLdRfVar var_88
  loc_6BF8F7: FLdZeroAd var_AC
  loc_6BF8FA: FStStrNoPop var_A4
  loc_6BF8FD: FLdRfVar var_A0
  loc_6BF900: ImpAdLdRf MemVar_74C760
  loc_6BF903: NewIfNullPr Formx
  loc_6BF906: from_stack_1v = Formx.global_4589716Get()
  loc_6BF90B: FLdPr var_A0
  loc_6BF90E: Formx.CurrentX = from_stack_1s
  loc_6BF913: FLdI2 var_AE
  loc_6BF916: NotI4
  loc_6BF917: FFreeStr var_A4 = ""
  loc_6BF91E: FFree1Ad var_A0
  loc_6BF921: BranchF loc_6BF950
  loc_6BF924: FLdRfVar var_D0
  loc_6BF927: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BF92C: FLdRfVar var_D0
  loc_6BF92F: CBoolVarNull
  loc_6BF931: FFree1Var var_D0 = ""
  loc_6BF934: BranchF loc_6BF94D
  loc_6BF937: ILdRf Me
  loc_6BF93A: FStAdNoPop
  loc_6BF93E: ImpAdLdRf MemVar_7520D4
  loc_6BF941: NewIfNullPr Global
  loc_6BF944: Global.Unload from_stack_1
  loc_6BF949: FFree1Ad var_A0
  loc_6BF94C: ExitProcHresult
  loc_6BF94D: Branch loc_6BF8E2
  loc_6BF950: FLdI2 var_8A
  loc_6BF953: NotI4
  loc_6BF954: BranchF loc_6BFA07
  loc_6BF957: FLdPrThis
  loc_6BF958: VCallAd Control_ID_lstListadoClientes
  loc_6BF95B: FStAdFunc var_15C
  loc_6BF95E: FLdRfVar var_AE
  loc_6BF961: FLdPrThis
  loc_6BF962: VCallAd Control_ID_chkCuentaCorriente
  loc_6BF965: FStAdFunc var_A0
  loc_6BF968: FLdPr var_A0
  loc_6BF96B:  = Me.Value
  loc_6BF970: FLdRfVar var_146
  loc_6BF973: FLdPrThis
  loc_6BF974: VCallAd Control_ID_chkSaldo
  loc_6BF977: FStAdFunc var_A8
  loc_6BF97A: FLdPr var_A8
  loc_6BF97D:  = Me.Value
  loc_6BF982: FLdRfVar var_156
  loc_6BF985: FLdRfVar var_9C
  loc_6BF988: NewIfNullAd
  loc_6BF98B: FStAd var_154 
  loc_6BF98F: FLdRfVar var_154
  loc_6BF992: CVarRef
  loc_6BF997: FLdI2 var_146
  loc_6BF99A: CI4UI1
  loc_6BF99B: LitI4 1
  loc_6BF9A0: EqI4
  loc_6BF9A1: FLdI2 var_AE
  loc_6BF9A4: CI4UI1
  loc_6BF9A5: LitI4 1
  loc_6BF9AA: EqI4
  loc_6BF9AB: ILdRf var_88
  loc_6BF9AE: FLdZeroAd var_15C
  loc_6BF9B1: FStAdFunc var_150
  loc_6BF9B4: FLdRfVar var_150
  loc_6BF9B7: from_stack_5v = Proc_45_7_6D4130(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6BF9BC: ILdRf var_154
  loc_6BF9BF: CastAd
  loc_6BF9C2: FStAdFunc var_9C
  loc_6BF9C5: FLdI2 var_156
  loc_6BF9C8: NotI4
  loc_6BF9C9: FFreeAd var_A0 = "": var_A8 = "": var_150 = "": var_154 = ""
  loc_6BF9D6: BranchF loc_6BFA07
  loc_6BF9D9: FLdRfVar var_9C
  loc_6BF9DC: NewIfNullPr CReporte
  loc_6BF9DF:  = CReporte.Left
  loc_6BF9E4: LitNothing
  loc_6BF9E6: CastAd
  loc_6BF9E9: FStAdFunc var_98
  loc_6BF9EC: LitNothing
  loc_6BF9EE: CastAd
  loc_6BF9F1: FStAdFunc var_9C
  loc_6BF9F4: FLdPrThis
  loc_6BF9F5: VCallAd Control_ID_lstListadoClientes
  loc_6BF9F8: FStAdFunc var_A0
  loc_6BF9FB: FLdPr var_A0
  loc_6BF9FE: Me.Clear
  loc_6BFA03: FFree1Ad var_A0
  loc_6BFA06: ExitProcHresult
  loc_6BFA07: FLdRfVar var_8C
  loc_6BFA0A: NextI2 var_160, loc_6BF8E2
  loc_6BFA0F: FLdRfVar var_AE
  loc_6BFA12: FLdPrThis
  loc_6BFA13: VCallAd Control_ID_chkSaldo
  loc_6BFA16: FStAdFunc var_A0
  loc_6BFA19: FLdPr var_A0
  loc_6BFA1C:  = Me.Value
  loc_6BFA21: FLdI2 var_AE
  loc_6BFA24: CI4UI1
  loc_6BFA25: LitI4 1
  loc_6BFA2A: EqI4
  loc_6BFA2B: FLdRfVar var_146
  loc_6BFA2E: FLdPrThis
  loc_6BFA2F: VCallAd Control_ID_chkCuentaCorriente
  loc_6BFA32: FStAdFunc var_A8
  loc_6BFA35: FLdPr var_A8
  loc_6BFA38:  = Me.Value
  loc_6BFA3D: FLdI2 var_146
  loc_6BFA40: CI4UI1
  loc_6BFA41: LitI4 1
  loc_6BFA46: EqI4
  loc_6BFA47: AndI4
  loc_6BFA48: FFreeAd var_A0 = ""
  loc_6BFA4F: BranchF loc_6BFA85
  loc_6BFA52: LitVarI2 var_C0, 0
  loc_6BFA57: PopAdLdVar
  loc_6BFA58: LitStr "Cliente  Razón Social          Domicilio             Teléfono      "
  loc_6BFA5B: ImpAdLdI4 MemVar_74BEF8
  loc_6BFA5E: ConcatStr
  loc_6BFA5F: FStStrNoPop var_A4
  loc_6BFA62: LitStr "           IVA              Saldo      "
  loc_6BFA65: ConcatStr
  loc_6BFA66: FStStrNoPop var_AC
  loc_6BFA69: FLdPrThis
  loc_6BFA6A: VCallAd Control_ID_lstListadoClientes
  loc_6BFA6D: FStAdFunc var_A0
  loc_6BFA70: FLdPr var_A0
  loc_6BFA73: Me.AddItem from_stack_1, from_stack_2
  loc_6BFA78: FFreeStr var_A4 = ""
  loc_6BFA7F: FFree1Ad var_A0
  loc_6BFA82: Branch loc_6BFAB5
  loc_6BFA85: LitVarI2 var_C0, 0
  loc_6BFA8A: PopAdLdVar
  loc_6BFA8B: LitStr "Cliente  Razón Social          Domicilio                  Teléfono         "
  loc_6BFA8E: ImpAdLdI4 MemVar_74BEF8
  loc_6BFA91: ConcatStr
  loc_6BFA92: FStStrNoPop var_A4
  loc_6BFA95: LitStr "           IVA                 "
  loc_6BFA98: ConcatStr
  loc_6BFA99: FStStrNoPop var_AC
  loc_6BFA9C: FLdPrThis
  loc_6BFA9D: VCallAd Control_ID_lstListadoClientes
  loc_6BFAA0: FStAdFunc var_A0
  loc_6BFAA3: FLdPr var_A0
  loc_6BFAA6: Me.AddItem from_stack_1, from_stack_2
  loc_6BFAAB: FFreeStr var_A4 = ""
  loc_6BFAB2: FFree1Ad var_A0
  loc_6BFAB5: LitVarStr var_C0, "_"
  loc_6BFABA: FStVarCopyObj var_D0
  loc_6BFABD: FLdRfVar var_D0
  loc_6BFAC0: LitI4 &H6E
  loc_6BFAC5: FLdRfVar var_F0
  loc_6BFAC8: ImpAdCallFPR4  = String(, )
  loc_6BFACD: LitVarI2 var_E0, 1
  loc_6BFAD2: PopAdLdVar
  loc_6BFAD3: FLdRfVar var_F0
  loc_6BFAD6: CStrVarVal var_A4
  loc_6BFADA: FLdPrThis
  loc_6BFADB: VCallAd Control_ID_lstListadoClientes
  loc_6BFADE: FStAdFunc var_A0
  loc_6BFAE1: FLdPr var_A0
  loc_6BFAE4: Me.AddItem from_stack_1, from_stack_2
  loc_6BFAE9: FFree1Str var_A4
  loc_6BFAEC: FFree1Ad var_A0
  loc_6BFAEF: FFreeVar var_D0 = ""
  loc_6BFAF6: FLdRfVar var_AE
  loc_6BFAF9: FLdRfVar var_9C
  loc_6BFAFC: NewIfNullPr CReporte
  loc_6BFAFF: CReporte.ForeColor = from_stack_1
  loc_6BFB04: FLdI2 var_AE
  loc_6BFB07: BranchF loc_6BFB36
  loc_6BFB0A: LitVar_Missing var_130
  loc_6BFB0D: LitVar_Missing var_110
  loc_6BFB10: LitVar_Missing var_F0
  loc_6BFB13: LitI4 &H40
  loc_6BFB18: LitVarStr var_C0, "La impresión del Listado de Clientes se realizo exitosamente."
  loc_6BFB1D: FStVarCopyObj var_D0
  loc_6BFB20: FLdRfVar var_D0
  loc_6BFB23: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BFB28: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_6BFB33: Branch loc_6BFB5F
  loc_6BFB36: LitVar_Missing var_130
  loc_6BFB39: LitVar_Missing var_110
  loc_6BFB3C: LitVar_Missing var_F0
  loc_6BFB3F: LitI4 &H40
  loc_6BFB44: LitVarStr var_C0, "La impresión del Listado de Clientes no se realizo exitosamente."
  loc_6BFB49: FStVarCopyObj var_D0
  loc_6BFB4C: FLdRfVar var_D0
  loc_6BFB4F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BFB54: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_6BFB5F: ExitProcHresult
End Sub

Private Sub txtDesde_KeyPress(KeyAscii As Integer) '5E37A8
  'Data Table: 423AA8
  loc_5E374C: ILdI2 KeyAscii
  loc_5E374F: CI4UI1
  loc_5E3750: FLdRfVar var_94
  loc_5E3753: ImpAdCallFPR4  = Chr()
  loc_5E3758: FLdRfVar var_94
  loc_5E375B: FLdRfVar var_A4
  loc_5E375E: ImpAdCallFPR4  = Ucase()
  loc_5E3763: FLdRfVar var_A4
  loc_5E3766: CStrVarVal var_A8
  loc_5E376A: ImpAdCallI2 Asc()
  loc_5E376F: IStI2 KeyAscii
  loc_5E3772: FFree1Str var_A8
  loc_5E3775: FFreeVar var_94 = ""
  loc_5E377C: LitI2_Byte &H30
  loc_5E377E: ILdI2 KeyAscii
  loc_5E3781: LeI2
  loc_5E3782: ILdI2 KeyAscii
  loc_5E3785: LitI2_Byte &H39
  loc_5E3787: LeI2
  loc_5E3788: AndI4
  loc_5E3789: LitI2_Byte &H41
  loc_5E378B: ILdI2 KeyAscii
  loc_5E378E: LeI2
  loc_5E378F: ILdI2 KeyAscii
  loc_5E3792: LitI2_Byte &H5A
  loc_5E3794: LeI2
  loc_5E3795: AndI4
  loc_5E3796: OrI4
  loc_5E3797: ILdI2 KeyAscii
  loc_5E379A: LitI2_Byte 8
  loc_5E379C: EqI2
  loc_5E379D: OrI4
  loc_5E379E: NotI4
  loc_5E379F: BranchF loc_5E37A7
  loc_5E37A2: LitI2_Byte 0
  loc_5E37A4: IStI2 KeyAscii
  loc_5E37A7: ExitProcHresult
End Sub

Private Sub txtHasta_KeyPress(KeyAscii As Integer) '5E3710
  'Data Table: 423AA8
  loc_5E36B4: ILdI2 KeyAscii
  loc_5E36B7: CI4UI1
  loc_5E36B8: FLdRfVar var_94
  loc_5E36BB: ImpAdCallFPR4  = Chr()
  loc_5E36C0: FLdRfVar var_94
  loc_5E36C3: FLdRfVar var_A4
  loc_5E36C6: ImpAdCallFPR4  = Ucase()
  loc_5E36CB: FLdRfVar var_A4
  loc_5E36CE: CStrVarVal var_A8
  loc_5E36D2: ImpAdCallI2 Asc()
  loc_5E36D7: IStI2 KeyAscii
  loc_5E36DA: FFree1Str var_A8
  loc_5E36DD: FFreeVar var_94 = ""
  loc_5E36E4: LitI2_Byte &H30
  loc_5E36E6: ILdI2 KeyAscii
  loc_5E36E9: LeI2
  loc_5E36EA: ILdI2 KeyAscii
  loc_5E36ED: LitI2_Byte &H39
  loc_5E36EF: LeI2
  loc_5E36F0: AndI4
  loc_5E36F1: LitI2_Byte &H41
  loc_5E36F3: ILdI2 KeyAscii
  loc_5E36F6: LeI2
  loc_5E36F7: ILdI2 KeyAscii
  loc_5E36FA: LitI2_Byte &H5A
  loc_5E36FC: LeI2
  loc_5E36FD: AndI4
  loc_5E36FE: OrI4
  loc_5E36FF: ILdI2 KeyAscii
  loc_5E3702: LitI2_Byte 8
  loc_5E3704: EqI2
  loc_5E3705: OrI4
  loc_5E3706: NotI4
  loc_5E3707: BranchF loc_5E370F
  loc_5E370A: LitI2_Byte 0
  loc_5E370C: IStI2 KeyAscii
  loc_5E370F: ExitProcHresult
End Sub

Private Sub cmdListar_Click() '663A68
  'Data Table: 423AA8
  loc_663710: FLdPrThis
  loc_663711: VCallAd Control_ID_lstListadoClientes
  loc_663714: FStAdFunc var_98
  loc_663717: FLdPr var_98
  loc_66371A: Me.Clear
  loc_66371F: FFree1Ad var_98
  loc_663722: FLdRfVar var_9C
  loc_663725: FLdPrThis
  loc_663726: VCallAd Control_ID_txtDesde
  loc_663729: FStAdFunc var_98
  loc_66372C: FLdPr var_98
  loc_66372F:  = Me.Text
  loc_663734: FLdRfVar var_A4
  loc_663737: FLdPrThis
  loc_663738: VCallAd Control_ID_txtHasta
  loc_66373B: FStAdFunc var_A0
  loc_66373E: FLdPr var_A0
  loc_663741:  = Me.Text
  loc_663746: FLdRfVar var_A6
  loc_663749: FLdRfVar var_90
  loc_66374C: FLdRfVar var_8E
  loc_66374F: FLdRfVar var_94
  loc_663752: FLdRfVar var_92
  loc_663755: ILdRf var_A4
  loc_663758: ILdRf var_9C
  loc_66375B: from_stack_7v = Proc_45_8_610820(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_663760: FLdI2 var_A6
  loc_663763: NotI4
  loc_663764: FFreeStr var_9C = ""
  loc_66376B: FFreeAd var_98 = ""
  loc_663772: BranchF loc_66379F
  loc_663775: LitVar_Missing var_128
  loc_663778: LitVar_Missing var_108
  loc_66377B: LitVar_Missing var_E8
  loc_66377E: LitI4 &H40
  loc_663783: LitVarStr var_B8, "Rango del listado incorrecto. Verifique por favor."
  loc_663788: FStVarCopyObj var_C8
  loc_66378B: FLdRfVar var_C8
  loc_66378E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_663793: FFreeVar var_C8 = "": var_E8 = "": var_108 = ""
  loc_66379E: ExitProcHresult
  loc_66379F: FLdI2 var_8E
  loc_6637A2: FLdRfVar var_8C
  loc_6637A5: FLdI2 var_90
  loc_6637A8: ForI2 var_12C
  loc_6637AE: FLdI2 var_8C
  loc_6637B1: CI4UI1
  loc_6637B2: ImpAdCallI2 Chr$()
  loc_6637B7: FStStr var_A4
  loc_6637BA: FLdRfVar var_A6
  loc_6637BD: FLdRfVar var_8A
  loc_6637C0: FLdRfVar var_88
  loc_6637C3: FLdZeroAd var_A4
  loc_6637C6: FStStrNoPop var_9C
  loc_6637C9: FLdRfVar var_98
  loc_6637CC: ImpAdLdRf MemVar_74C760
  loc_6637CF: NewIfNullPr Formx
  loc_6637D2: from_stack_1v = Formx.global_4589716Get()
  loc_6637D7: FLdPr var_98
  loc_6637DA: Formx.CurrentX = from_stack_1s
  loc_6637DF: FLdI2 var_A6
  loc_6637E2: NotI4
  loc_6637E3: FFreeStr var_9C = ""
  loc_6637EA: FFree1Ad var_98
  loc_6637ED: BranchF loc_66381C
  loc_6637F0: FLdRfVar var_C8
  loc_6637F3: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6637F8: FLdRfVar var_C8
  loc_6637FB: CBoolVarNull
  loc_6637FD: FFree1Var var_C8 = ""
  loc_663800: BranchF loc_663819
  loc_663803: ILdRf Me
  loc_663806: FStAdNoPop
  loc_66380A: ImpAdLdRf MemVar_7520D4
  loc_66380D: NewIfNullPr Global
  loc_663810: Global.Unload from_stack_1
  loc_663815: FFree1Ad var_98
  loc_663818: ExitProcHresult
  loc_663819: Branch loc_6637AE
  loc_66381C: FLdI2 var_8A
  loc_66381F: NotI4
  loc_663820: BranchF loc_663887
  loc_663823: FLdPrThis
  loc_663824: VCallAd Control_ID_lstListadoClientes
  loc_663827: FStAdFunc var_13C
  loc_66382A: FLdRfVar var_A6
  loc_66382D: FLdPrThis
  loc_66382E: VCallAd Control_ID_chkCuentaCorriente
  loc_663831: FStAdFunc var_98
  loc_663834: FLdPr var_98
  loc_663837:  = Me.Value
  loc_66383C: FLdRfVar var_12E
  loc_66383F: FLdPrThis
  loc_663840: VCallAd Control_ID_chkSaldo
  loc_663843: FStAdFunc var_A0
  loc_663846: FLdPr var_A0
  loc_663849:  = Me.Value
  loc_66384E: FLdRfVar var_136
  loc_663851: LitVar_Missing var_C8
  loc_663854: FLdI2 var_12E
  loc_663857: CI4UI1
  loc_663858: LitI4 1
  loc_66385D: EqI4
  loc_66385E: FLdI2 var_A6
  loc_663861: CI4UI1
  loc_663862: LitI4 1
  loc_663867: EqI4
  loc_663868: ILdRf var_88
  loc_66386B: FLdZeroAd var_13C
  loc_66386E: FStAdFunc var_134
  loc_663871: FLdRfVar var_134
  loc_663874: from_stack_5v = Proc_45_7_6D4130(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_663879: FFreeAd var_98 = "": var_A0 = "": var_134 = ""
  loc_663884: FFree1Var var_C8 = ""
  loc_663887: FLdRfVar var_8C
  loc_66388A: NextI2 var_12C, loc_6637AE
  loc_66388F: FLdI2 var_92
  loc_663892: FLdRfVar var_8C
  loc_663895: FLdI2 var_94
  loc_663898: ForI2 var_140
  loc_66389E: FLdI2 var_8C
  loc_6638A1: CI4UI1
  loc_6638A2: ImpAdCallI2 Chr$()
  loc_6638A7: FStStr var_A4
  loc_6638AA: FLdRfVar var_A6
  loc_6638AD: FLdRfVar var_8A
  loc_6638B0: FLdRfVar var_88
  loc_6638B3: FLdZeroAd var_A4
  loc_6638B6: FStStrNoPop var_9C
  loc_6638B9: FLdRfVar var_98
  loc_6638BC: ImpAdLdRf MemVar_74C760
  loc_6638BF: NewIfNullPr Formx
  loc_6638C2: from_stack_1v = Formx.global_4589716Get()
  loc_6638C7: FLdPr var_98
  loc_6638CA: Formx.CurrentX = from_stack_1s
  loc_6638CF: FLdI2 var_A6
  loc_6638D2: NotI4
  loc_6638D3: FFreeStr var_9C = ""
  loc_6638DA: FFree1Ad var_98
  loc_6638DD: BranchF loc_66390C
  loc_6638E0: FLdRfVar var_C8
  loc_6638E3: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6638E8: FLdRfVar var_C8
  loc_6638EB: CBoolVarNull
  loc_6638ED: FFree1Var var_C8 = ""
  loc_6638F0: BranchF loc_663909
  loc_6638F3: ILdRf Me
  loc_6638F6: FStAdNoPop
  loc_6638FA: ImpAdLdRf MemVar_7520D4
  loc_6638FD: NewIfNullPr Global
  loc_663900: Global.Unload from_stack_1
  loc_663905: FFree1Ad var_98
  loc_663908: ExitProcHresult
  loc_663909: Branch loc_66389E
  loc_66390C: FLdI2 var_8A
  loc_66390F: NotI4
  loc_663910: BranchF loc_663977
  loc_663913: FLdPrThis
  loc_663914: VCallAd Control_ID_lstListadoClientes
  loc_663917: FStAdFunc var_13C
  loc_66391A: FLdRfVar var_A6
  loc_66391D: FLdPrThis
  loc_66391E: VCallAd Control_ID_chkCuentaCorriente
  loc_663921: FStAdFunc var_98
  loc_663924: FLdPr var_98
  loc_663927:  = Me.Value
  loc_66392C: FLdRfVar var_12E
  loc_66392F: FLdPrThis
  loc_663930: VCallAd Control_ID_chkSaldo
  loc_663933: FStAdFunc var_A0
  loc_663936: FLdPr var_A0
  loc_663939:  = Me.Value
  loc_66393E: FLdRfVar var_136
  loc_663941: LitVar_Missing var_C8
  loc_663944: FLdI2 var_12E
  loc_663947: CI4UI1
  loc_663948: LitI4 1
  loc_66394D: EqI4
  loc_66394E: FLdI2 var_A6
  loc_663951: CI4UI1
  loc_663952: LitI4 1
  loc_663957: EqI4
  loc_663958: ILdRf var_88
  loc_66395B: FLdZeroAd var_13C
  loc_66395E: FStAdFunc var_134
  loc_663961: FLdRfVar var_134
  loc_663964: from_stack_5v = Proc_45_7_6D4130(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_663969: FFreeAd var_98 = "": var_A0 = "": var_134 = ""
  loc_663974: FFree1Var var_C8 = ""
  loc_663977: FLdRfVar var_8C
  loc_66397A: NextI2 var_140, loc_66389E
  loc_66397F: FLdRfVar var_A6
  loc_663982: FLdPrThis
  loc_663983: VCallAd Control_ID_chkSaldo
  loc_663986: FStAdFunc var_98
  loc_663989: FLdPr var_98
  loc_66398C:  = Me.Value
  loc_663991: FLdI2 var_A6
  loc_663994: CI4UI1
  loc_663995: LitI4 1
  loc_66399A: EqI4
  loc_66399B: FLdRfVar var_12E
  loc_66399E: FLdPrThis
  loc_66399F: VCallAd Control_ID_chkCuentaCorriente
  loc_6639A2: FStAdFunc var_A0
  loc_6639A5: FLdPr var_A0
  loc_6639A8:  = Me.Value
  loc_6639AD: FLdI2 var_12E
  loc_6639B0: CI4UI1
  loc_6639B1: LitI4 1
  loc_6639B6: EqI4
  loc_6639B7: AndI4
  loc_6639B8: FFreeAd var_98 = ""
  loc_6639BF: BranchF loc_6639F5
  loc_6639C2: LitVarI2 var_B8, 0
  loc_6639C7: PopAdLdVar
  loc_6639C8: LitStr "Cliente  Razón Social          Domicilio             Teléfono      "
  loc_6639CB: ImpAdLdI4 MemVar_74BEF8
  loc_6639CE: ConcatStr
  loc_6639CF: FStStrNoPop var_9C
  loc_6639D2: LitStr "           IVA              Saldo      "
  loc_6639D5: ConcatStr
  loc_6639D6: FStStrNoPop var_A4
  loc_6639D9: FLdPrThis
  loc_6639DA: VCallAd Control_ID_lstListadoClientes
  loc_6639DD: FStAdFunc var_98
  loc_6639E0: FLdPr var_98
  loc_6639E3: Me.AddItem from_stack_1, from_stack_2
  loc_6639E8: FFreeStr var_9C = ""
  loc_6639EF: FFree1Ad var_98
  loc_6639F2: Branch loc_663A25
  loc_6639F5: LitVarI2 var_B8, 0
  loc_6639FA: PopAdLdVar
  loc_6639FB: LitStr "Cliente  Razón Social          Domicilio                  Teléfono         "
  loc_6639FE: ImpAdLdI4 MemVar_74BEF8
  loc_663A01: ConcatStr
  loc_663A02: FStStrNoPop var_9C
  loc_663A05: LitStr "           IVA                 "
  loc_663A08: ConcatStr
  loc_663A09: FStStrNoPop var_A4
  loc_663A0C: FLdPrThis
  loc_663A0D: VCallAd Control_ID_lstListadoClientes
  loc_663A10: FStAdFunc var_98
  loc_663A13: FLdPr var_98
  loc_663A16: Me.AddItem from_stack_1, from_stack_2
  loc_663A1B: FFreeStr var_9C = ""
  loc_663A22: FFree1Ad var_98
  loc_663A25: LitVarStr var_B8, "_"
  loc_663A2A: FStVarCopyObj var_C8
  loc_663A2D: FLdRfVar var_C8
  loc_663A30: LitI4 &H6E
  loc_663A35: FLdRfVar var_E8
  loc_663A38: ImpAdCallFPR4  = String(, )
  loc_663A3D: LitVarI2 var_D8, 1
  loc_663A42: PopAdLdVar
  loc_663A43: FLdRfVar var_E8
  loc_663A46: CStrVarVal var_9C
  loc_663A4A: FLdPrThis
  loc_663A4B: VCallAd Control_ID_lstListadoClientes
  loc_663A4E: FStAdFunc var_98
  loc_663A51: FLdPr var_98
  loc_663A54: Me.AddItem from_stack_1, from_stack_2
  loc_663A59: FFree1Str var_9C
  loc_663A5C: FFree1Ad var_98
  loc_663A5F: FFreeVar var_C8 = ""
  loc_663A66: ExitProcHresult
End Sub

Private Sub Form_Load() '5E9AA8
  'Data Table: 423AA8
  loc_5E9A20: LitI2_Byte 0
  loc_5E9A22: CR8I2
  loc_5E9A23: PopFPR4
  loc_5E9A24: FLdPr Me
  loc_5E9A27: Me.Top = from_stack_1s
  loc_5E9A2C: LitI2_Byte 0
  loc_5E9A2E: CR8I2
  loc_5E9A2F: PopFPR4
  loc_5E9A30: FLdPr Me
  loc_5E9A33: Me.Left = from_stack_1s
  loc_5E9A38: FLdRfVar var_8C
  loc_5E9A3B: FLdRfVar var_88
  loc_5E9A3E: ImpAdLdRf MemVar_7520D4
  loc_5E9A41: NewIfNullPr Global
  loc_5E9A44:  = Global.Screen
  loc_5E9A49: FLdPr var_88
  loc_5E9A4C:  = Screen.TwipsPerPixelY
  loc_5E9A51: FLdFPR4 var_8C
  loc_5E9A54: LitI2 600
  loc_5E9A57: CR8I2
  loc_5E9A58: MulR8
  loc_5E9A59: PopFPR4
  loc_5E9A5A: FLdPr Me
  loc_5E9A5D: Me.Height = from_stack_1s
  loc_5E9A62: FFree1Ad var_88
  loc_5E9A65: FLdRfVar var_8C
  loc_5E9A68: FLdRfVar var_88
  loc_5E9A6B: ImpAdLdRf MemVar_7520D4
  loc_5E9A6E: NewIfNullPr Global
  loc_5E9A71:  = Global.Screen
  loc_5E9A76: FLdPr var_88
  loc_5E9A79:  = Screen.TwipsPerPixelX
  loc_5E9A7E: FLdFPR4 var_8C
  loc_5E9A81: LitI2 800
  loc_5E9A84: CR8I2
  loc_5E9A85: MulR8
  loc_5E9A86: PopFPR4
  loc_5E9A87: FLdPr Me
  loc_5E9A8A: Me.Width = from_stack_1s
  loc_5E9A8F: FFree1Ad var_88
  loc_5E9A92: LitI2_Byte 0
  loc_5E9A94: FLdPrThis
  loc_5E9A95: VCallAd Control_ID_chkSaldo
  loc_5E9A98: FStAdFunc var_88
  loc_5E9A9B: FLdPr var_88
  loc_5E9A9E: Me.Visible = from_stack_1b
  loc_5E9AA3: FFree1Ad var_88
  loc_5E9AA6: ExitProcHresult
End Sub

Private Function Proc_45_7_6D4130(arg_10, arg_14, arg_18, arg_1C) '6D4130
  'Data Table: 423AA8
  loc_6D36CC: ILdRf arg_10
  loc_6D36CF: FStStrCopy var_8C
  loc_6D36D2: LitStr "Courier New"
  loc_6D36D5: FLdRfVar var_16C
  loc_6D36D8: NewIfNullPr CFuente
  loc_6D36DB: Reset
  loc_6D36E0: LitDate 8.25
  loc_6D36E9: PopFPR4
  loc_6D36EA: FLdRfVar var_16C
  loc_6D36ED: NewIfNullPr CFuente
  loc_6D36F5: LitI2_Byte 1
  loc_6D36F7: FStI2 var_8E
  loc_6D36FA: FLdI2 var_8E
  loc_6D36FD: CI4UI1
  loc_6D36FE: ILdRf var_8C
  loc_6D3701: FnLenStr
  loc_6D3702: LeI4
  loc_6D3703: BranchF loc_6D411C
  loc_6D3706: LitVarI2 var_18C, 4
  loc_6D370B: FLdI2 var_8E
  loc_6D370E: CI4UI1
  loc_6D370F: ILdRf var_8C
  loc_6D3712: ImpAdCallI2 Mid$(, , )
  loc_6D3717: FStStr var_98
  loc_6D371A: FFree1Var var_18C = ""
  loc_6D371D: ILdRf var_98
  loc_6D3720: ImpAdCallFPR4 push Val()
  loc_6D3725: FStFPR8 var_19C
  loc_6D3728: FLdRfVar var_192
  loc_6D372B: FLdRfVar var_92
  loc_6D372E: FLdRfVar var_9C
  loc_6D3731: FLdFPR8 var_19C
  loc_6D3734: CVarR8
  loc_6D3738: PopAdLdVar
  loc_6D3739: FLdRfVar var_190
  loc_6D373C: ImpAdLdRf MemVar_74C760
  loc_6D373F: NewIfNullPr Formx
  loc_6D3742: from_stack_1v = Formx.global_4589716Get()
  loc_6D3747: FLdPr var_190
  loc_6D374A: Call 0.Method_arg_DC ()
  loc_6D374F: FLdI2 var_192
  loc_6D3752: NotI4
  loc_6D3753: FFree1Ad var_190
  loc_6D3756: BranchF loc_6D378A
  loc_6D3759: FLdRfVar var_18C
  loc_6D375C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D3761: FLdRfVar var_18C
  loc_6D3764: CBoolVarNull
  loc_6D3766: FFree1Var var_18C = ""
  loc_6D3769: BranchF loc_6D3787
  loc_6D376C: ILdRf Me
  loc_6D376F: FStAdNoPop
  loc_6D3773: ImpAdLdRf MemVar_7520D4
  loc_6D3776: NewIfNullPr Global
  loc_6D3779: Global.Unload from_stack_1
  loc_6D377E: FFree1Ad var_190
  loc_6D3781: ExitProcCbHresult
  loc_6D3787: Branch loc_6D371D
  loc_6D378A: FLdI2 var_92
  loc_6D378D: NotI4
  loc_6D378E: BranchF loc_6D4110
  loc_6D3791: ILdRf var_98
  loc_6D3794: CI2Str
  loc_6D3796: FStI2 var_168
  loc_6D3799: LitI2_Byte 5
  loc_6D379B: FStI2 var_90
  loc_6D379E: LitVarI2 var_18C, 25
  loc_6D37A3: FLdI2 var_90
  loc_6D37A6: CI4UI1
  loc_6D37A7: ILdRf var_9C
  loc_6D37AA: ImpAdCallI2 Mid$(, , )
  loc_6D37AF: FStStrNoPop var_1A0
  loc_6D37B2: FLdRfVar var_166
  loc_6D37B5: StFixedStr
  loc_6D37B8: FFree1Str var_1A0
  loc_6D37BB: FFree1Var var_18C = ""
  loc_6D37BE: FLdI2 var_90
  loc_6D37C1: LitI2_Byte &H19
  loc_6D37C3: AddI2
  loc_6D37C4: FStI2 var_90
  loc_6D37C7: LitVarI2 var_18C, 40
  loc_6D37CC: FLdI2 var_90
  loc_6D37CF: CI4UI1
  loc_6D37D0: ILdRf var_9C
  loc_6D37D3: ImpAdCallI2 Mid$(, , )
  loc_6D37D8: FStStrNoPop var_1A0
  loc_6D37DB: FLdRfVar var_134
  loc_6D37DE: StFixedStr
  loc_6D37E1: FFree1Str var_1A0
  loc_6D37E4: FFree1Var var_18C = ""
  loc_6D37E7: FLdI2 var_90
  loc_6D37EA: LitI2_Byte &H28
  loc_6D37EC: AddI2
  loc_6D37ED: FStI2 var_90
  loc_6D37F0: LitVarI2 var_18C, 15
  loc_6D37F5: FLdI2 var_90
  loc_6D37F8: CI4UI1
  loc_6D37F9: ILdRf var_9C
  loc_6D37FC: ImpAdCallI2 Mid$(, , )
  loc_6D3801: FStStrNoPop var_1A0
  loc_6D3804: FLdRfVar var_E4
  loc_6D3807: StFixedStr
  loc_6D380A: FFree1Str var_1A0
  loc_6D380D: FFree1Var var_18C = ""
  loc_6D3810: FLdI2 var_90
  loc_6D3813: LitI2_Byte &HF
  loc_6D3815: AddI2
  loc_6D3816: FStI2 var_90
  loc_6D3819: LitVarI2 var_18C, 13
  loc_6D381E: FLdI2 var_90
  loc_6D3821: CI4UI1
  loc_6D3822: ILdRf var_9C
  loc_6D3825: ImpAdCallI2 Mid$(, , )
  loc_6D382A: FStStrNoPop var_1A0
  loc_6D382D: FLdRfVar var_C6
  loc_6D3830: StFixedStr
  loc_6D3833: FFree1Str var_1A0
  loc_6D3836: FFree1Var var_18C = ""
  loc_6D3839: FLdI2 var_90
  loc_6D383C: LitI2_Byte &HD
  loc_6D383E: AddI2
  loc_6D383F: FStI2 var_90
  loc_6D3842: LitVarI2 var_18C, 1
  loc_6D3847: FLdI2 var_90
  loc_6D384A: CI4UI1
  loc_6D384B: ILdRf var_9C
  loc_6D384E: ImpAdCallI2 Mid$(, , )
  loc_6D3853: FStStrNoPop var_1A0
  loc_6D3856: CUI1Str
  loc_6D3858: FStUI1 var_A8
  loc_6D385C: FFree1Str var_1A0
  loc_6D385F: FFree1Var var_18C = ""
  loc_6D3862: FLdI2 var_90
  loc_6D3865: LitI2_Byte 1
  loc_6D3867: AddI2
  loc_6D3868: FStI2 var_90
  loc_6D386B: LitVarI2 var_18C, 1
  loc_6D3870: FLdI2 var_90
  loc_6D3873: CI4UI1
  loc_6D3874: ILdRf var_9C
  loc_6D3877: ImpAdCallI2 Mid$(, , )
  loc_6D387C: FStStrNoPop var_1A0
  loc_6D387F: LitStr "1"
  loc_6D3882: EqStr
  loc_6D3884: FStI2 var_A6
  loc_6D3887: FFree1Str var_1A0
  loc_6D388A: FFree1Var var_18C = ""
  loc_6D388D: FLdI2 var_90
  loc_6D3890: LitI2_Byte 1
  loc_6D3892: AddI2
  loc_6D3893: FStI2 var_90
  loc_6D3896: LitVarI2 var_18C, 9
  loc_6D389B: FLdI2 var_90
  loc_6D389E: CI4UI1
  loc_6D389F: ILdRf var_9C
  loc_6D38A2: ImpAdCallI2 Mid$(, , )
  loc_6D38A7: FStStrNoPop var_1A0
  loc_6D38AA: ImpAdCallFPR4 push Val()
  loc_6D38AF: CI4R8
  loc_6D38B0: FStR4 var_A4
  loc_6D38B3: FFree1Str var_1A0
  loc_6D38B6: FFree1Var var_18C = ""
  loc_6D38B9: FLdI2 var_90
  loc_6D38BC: LitI2_Byte 9
  loc_6D38BE: AddI2
  loc_6D38BF: FStI2 var_90
  loc_6D38C2: FLdI2 var_90
  loc_6D38C5: LitI2_Byte 9
  loc_6D38C7: AddI2
  loc_6D38C8: FStI2 var_90
  loc_6D38CB: FLdI2 arg_14
  loc_6D38CE: BranchF loc_6D3E84
  loc_6D38D1: FLdI2 var_A6
  loc_6D38D4: BranchF loc_6D3E81
  loc_6D38D7: FLdI2 arg_18
  loc_6D38DA: BranchF loc_6D3BF5
  loc_6D38DD: FLdI2 var_168
  loc_6D38E0: CStrUI1
  loc_6D38E2: FStStrNoPop var_1A0
  loc_6D38E5: ImpAdCallFPR4 push Val()
  loc_6D38EA: FStFPR8 var_19C
  loc_6D38ED: LitI4 1
  loc_6D38F2: LitI4 1
  loc_6D38F7: LitVarStr var_1B0, "@@@@"
  loc_6D38FC: FStVarCopyObj var_1C0
  loc_6D38FF: FLdRfVar var_1C0
  loc_6D3902: FLdFPR8 var_19C
  loc_6D3905: CVarR8
  loc_6D3909: ImpAdCallI2 Format$(, )
  loc_6D390E: CVarStr var_230
  loc_6D3911: LitVarStr var_200, "  "
  loc_6D3916: FStVarCopyObj var_210
  loc_6D3919: FLdRfVar var_210
  loc_6D391C: LitVarStr var_1E0, "c "
  loc_6D3921: FStVarCopyObj var_1F0
  loc_6D3924: FLdRfVar var_1F0
  loc_6D3927: FLdRfVar var_A6
  loc_6D392A: CVarRef
  loc_6D392F: FLdRfVar var_220
  loc_6D3932: ImpAdCallFPR4  = IIf(, , )
  loc_6D3937: FLdRfVar var_220
  loc_6D393A: ConcatVar var_240
  loc_6D393E: CStrVarTmp
  loc_6D393F: FStStr var_A0
  loc_6D3942: FFree1Str var_1A0
  loc_6D3945: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_220 = ""
  loc_6D3956: ILdRf var_A0
  loc_6D3959: LitI4 &H14
  loc_6D395E: FLdRfVar var_166
  loc_6D3961: LdFixedStr
  loc_6D3964: FStStrNoPop var_1A0
  loc_6D3967: ImpAdCallI2 Left$(, )
  loc_6D396C: FStStr var_244
  loc_6D396F: ILdRf var_1A0
  loc_6D3972: FLdRfVar var_166
  loc_6D3975: StFixedStr
  loc_6D3978: ILdRf var_244
  loc_6D397B: ConcatStr
  loc_6D397C: FStStrNoPop var_248
  loc_6D397F: LitStr "  "
  loc_6D3982: ConcatStr
  loc_6D3983: FStStr var_A0
  loc_6D3986: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D398F: ILdRf var_A0
  loc_6D3992: LitI4 &H14
  loc_6D3997: FLdRfVar var_134
  loc_6D399A: LdFixedStr
  loc_6D399D: FStStrNoPop var_1A0
  loc_6D39A0: ImpAdCallI2 Left$(, )
  loc_6D39A5: FStStr var_244
  loc_6D39A8: ILdRf var_1A0
  loc_6D39AB: FLdRfVar var_134
  loc_6D39AE: StFixedStr
  loc_6D39B1: ILdRf var_244
  loc_6D39B4: ConcatStr
  loc_6D39B5: FStStrNoPop var_248
  loc_6D39B8: LitStr "  "
  loc_6D39BB: ConcatStr
  loc_6D39BC: FStStr var_A0
  loc_6D39BF: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D39C8: ILdRf var_A0
  loc_6D39CB: LitI4 &HC
  loc_6D39D0: FLdRfVar var_E4
  loc_6D39D3: LdFixedStr
  loc_6D39D6: FStStrNoPop var_1A0
  loc_6D39D9: ImpAdCallI2 Left$(, )
  loc_6D39DE: FStStr var_244
  loc_6D39E1: ILdRf var_1A0
  loc_6D39E4: FLdRfVar var_E4
  loc_6D39E7: StFixedStr
  loc_6D39EA: ILdRf var_244
  loc_6D39ED: ConcatStr
  loc_6D39EE: FStStrNoPop var_248
  loc_6D39F1: LitStr "  "
  loc_6D39F4: ConcatStr
  loc_6D39F5: FStStr var_A0
  loc_6D39F8: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3A01: ILdRf var_A0
  loc_6D3A04: FLdRfVar var_C6
  loc_6D3A07: LdFixedStr
  loc_6D3A0A: FStStrNoPop var_1A0
  loc_6D3A0D: ConcatStr
  loc_6D3A0E: FStStrNoPop var_244
  loc_6D3A11: LitStr "  "
  loc_6D3A14: ConcatStr
  loc_6D3A15: FStStr var_A0
  loc_6D3A18: FFreeStr var_1A0 = ""
  loc_6D3A1F: LitI4 0
  loc_6D3A24: LitI4 4
  loc_6D3A29: FLdRfVar var_24C
  loc_6D3A2C: Redim
  loc_6D3A36: LitVarStr var_17C, "Consumidor Final"
  loc_6D3A3B: LitI4 0
  loc_6D3A40: ILdRf var_24C
  loc_6D3A43: Ary1StVarCopy
  loc_6D3A45: LitVarStr var_1B0, "Exento"
  loc_6D3A4A: LitI4 1
  loc_6D3A4F: ILdRf var_24C
  loc_6D3A52: Ary1StVarCopy
  loc_6D3A54: LitVarStr var_1D0, "No Responsable"
  loc_6D3A59: LitI4 2
  loc_6D3A5E: ILdRf var_24C
  loc_6D3A61: Ary1StVarCopy
  loc_6D3A63: LitVarStr var_1E0, "Responsable Inscripto"
  loc_6D3A68: LitI4 3
  loc_6D3A6D: ILdRf var_24C
  loc_6D3A70: Ary1StVarCopy
  loc_6D3A72: LitVarStr var_200, "Responsable No Inscripto"
  loc_6D3A77: LitI4 4
  loc_6D3A7C: ILdRf var_24C
  loc_6D3A7F: Ary1StVarCopy
  loc_6D3A81: FLdRfVar var_24C
  loc_6D3A84: FLdUI1
  loc_6D3A88: CR8I2
  loc_6D3A89: PopFPR4
  loc_6D3A8A: FLdRfVar var_18C
  loc_6D3A8D: ImpAdCallFPR4  = Choose(, )
  loc_6D3A92: FLdRfVar var_24C
  loc_6D3A95: Erase
  loc_6D3A96: LitI4 &H11
  loc_6D3A9B: FLdRfVar var_18C
  loc_6D3A9E: CStrVarVal var_1A0
  loc_6D3AA2: ImpAdCallI2 Left$(, )
  loc_6D3AA7: FStStr var_270
  loc_6D3AAA: LitVarStr var_25C, "@"
  loc_6D3AAF: FStVarCopyObj var_1C0
  loc_6D3AB2: FLdRfVar var_1C0
  loc_6D3AB5: LitI4 &H11
  loc_6D3ABA: FLdRfVar var_1F0
  loc_6D3ABD: ImpAdCallFPR4  = String(, )
  loc_6D3AC2: ILdRf var_A0
  loc_6D3AC5: LitI4 1
  loc_6D3ACA: LitI4 1
  loc_6D3ACF: LitVarStr var_26C, "!"
  loc_6D3AD4: FLdRfVar var_1F0
  loc_6D3AD7: ConcatVar var_210
  loc_6D3ADB: FLdZeroAd var_270
  loc_6D3ADE: CVarStr var_220
  loc_6D3AE1: ImpAdCallI2 Format$(, )
  loc_6D3AE6: FStStrNoPop var_244
  loc_6D3AE9: ConcatStr
  loc_6D3AEA: FStStrNoPop var_248
  loc_6D3AED: LitStr "  "
  loc_6D3AF0: ConcatStr
  loc_6D3AF1: FStStr var_A0
  loc_6D3AF4: FFreeStr var_1A0 = "": var_244 = "": var_248 = ""
  loc_6D3AFF: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_220 = ""
  loc_6D3B0C: LitI4 1
  loc_6D3B11: LitI4 1
  loc_6D3B16: LitVarStr var_1B0, "#####0.00"
  loc_6D3B1B: FStVarCopyObj var_1C0
  loc_6D3B1E: FLdRfVar var_1C0
  loc_6D3B21: ILdRf var_A4
  loc_6D3B24: CR8I4
  loc_6D3B25: LitI2_Byte &H64
  loc_6D3B27: CR8I2
  loc_6D3B28: DivR8
  loc_6D3B29: CVarR8
  loc_6D3B2D: ImpAdCallI2 Format$(, )
  loc_6D3B32: FStStr var_244
  loc_6D3B35: ILdRf var_A0
  loc_6D3B38: LitI4 1
  loc_6D3B3D: LitI4 1
  loc_6D3B42: LitVarStr var_1D0, "@@@@@@@@@"
  loc_6D3B47: FStVarCopyObj var_210
  loc_6D3B4A: FLdRfVar var_210
  loc_6D3B4D: FLdZeroAd var_244
  loc_6D3B50: CVarStr var_1F0
  loc_6D3B53: ImpAdCallI2 Format$(, )
  loc_6D3B58: FStStrNoPop var_1A0
  loc_6D3B5B: ConcatStr
  loc_6D3B5C: FStStr var_A0
  loc_6D3B5F: FFreeStr var_1A0 = ""
  loc_6D3B66: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = ""
  loc_6D3B71: LitVar_Missing var_17C
  loc_6D3B74: PopAdLdVar
  loc_6D3B75: ILdRf var_A0
  loc_6D3B78: ILdPr
  loc_6D3B7B: Me.AddItem from_stack_1, from_stack_2
  loc_6D3B80: ILdRf arg_1C
  loc_6D3B83: ImpAdCallI2 IsMissing()
  loc_6D3B88: NotI4
  loc_6D3B89: BranchF loc_6D3BF2
  loc_6D3B8C: FLdRfVar var_A0
  loc_6D3B8F: CDargRef
  loc_6D3B93: FLdRfVar var_16C
  loc_6D3B96: NewIfNullAd
  loc_6D3B99: FStAd var_190 
  loc_6D3B9D: FLdRfVar var_190
  loc_6D3BA0: CDargRef
  loc_6D3BA4: ILdRfDarg arg_1C
  loc_6D3BAA: LdPrVar
  loc_6D3BAC: LateMemCallLdVar var_18C, .AddPrintLine
  loc_6D3BB4: PopAd
  loc_6D3BB6: ILdRf var_190
  loc_6D3BB9: CastAd
  loc_6D3BBC: FStAdFunc var_16C
  loc_6D3BBF: FLdRfVar var_18C
  loc_6D3BC2: NotVar var_1C0
  loc_6D3BC6: CBoolVarNull
  loc_6D3BC8: FFree1Ad var_190
  loc_6D3BCB: FFree1Var var_18C = ""
  loc_6D3BCE: BranchF loc_6D3BF2
  loc_6D3BD1: ILdRfDarg arg_1C
  loc_6D3BD7: LdPrVar
  loc_6D3BD9: LateMemCall
  loc_6D3BDF: LitNothing
  loc_6D3BE1: CastAd
  loc_6D3BE4: FStAdFunc var_16C
  loc_6D3BE7: LitI2_Byte 0
  loc_6D3BE9: FStI2 var_86
  loc_6D3BEC: ExitProcCbHresult
  loc_6D3BF2: Branch loc_6D3E81
  loc_6D3BF5: FLdI2 var_168
  loc_6D3BF8: CStrUI1
  loc_6D3BFA: FStStrNoPop var_1A0
  loc_6D3BFD: ImpAdCallFPR4 push Val()
  loc_6D3C02: FStFPR8 var_19C
  loc_6D3C05: LitI4 1
  loc_6D3C0A: LitI4 1
  loc_6D3C0F: LitVarStr var_1B0, "@@@@"
  loc_6D3C14: FStVarCopyObj var_1C0
  loc_6D3C17: FLdRfVar var_1C0
  loc_6D3C1A: FLdFPR8 var_19C
  loc_6D3C1D: CVarR8
  loc_6D3C21: ImpAdCallI2 Format$(, )
  loc_6D3C26: CVarStr var_230
  loc_6D3C29: LitVarStr var_200, "  "
  loc_6D3C2E: FStVarCopyObj var_210
  loc_6D3C31: FLdRfVar var_210
  loc_6D3C34: LitVarStr var_1E0, "c "
  loc_6D3C39: FStVarCopyObj var_1F0
  loc_6D3C3C: FLdRfVar var_1F0
  loc_6D3C3F: FLdRfVar var_A6
  loc_6D3C42: CVarRef
  loc_6D3C47: FLdRfVar var_220
  loc_6D3C4A: ImpAdCallFPR4  = IIf(, , )
  loc_6D3C4F: FLdRfVar var_220
  loc_6D3C52: ConcatVar var_240
  loc_6D3C56: CStrVarTmp
  loc_6D3C57: FStStr var_A0
  loc_6D3C5A: FFree1Str var_1A0
  loc_6D3C5D: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_220 = ""
  loc_6D3C6E: ILdRf var_A0
  loc_6D3C71: LitI4 &H14
  loc_6D3C76: FLdRfVar var_166
  loc_6D3C79: LdFixedStr
  loc_6D3C7C: FStStrNoPop var_1A0
  loc_6D3C7F: ImpAdCallI2 Left$(, )
  loc_6D3C84: FStStr var_244
  loc_6D3C87: ILdRf var_1A0
  loc_6D3C8A: FLdRfVar var_166
  loc_6D3C8D: StFixedStr
  loc_6D3C90: ILdRf var_244
  loc_6D3C93: ConcatStr
  loc_6D3C94: FStStrNoPop var_248
  loc_6D3C97: LitStr "  "
  loc_6D3C9A: ConcatStr
  loc_6D3C9B: FStStr var_A0
  loc_6D3C9E: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3CA7: ILdRf var_A0
  loc_6D3CAA: LitI4 &H19
  loc_6D3CAF: FLdRfVar var_134
  loc_6D3CB2: LdFixedStr
  loc_6D3CB5: FStStrNoPop var_1A0
  loc_6D3CB8: ImpAdCallI2 Left$(, )
  loc_6D3CBD: FStStr var_244
  loc_6D3CC0: ILdRf var_1A0
  loc_6D3CC3: FLdRfVar var_134
  loc_6D3CC6: StFixedStr
  loc_6D3CC9: ILdRf var_244
  loc_6D3CCC: ConcatStr
  loc_6D3CCD: FStStrNoPop var_248
  loc_6D3CD0: LitStr "  "
  loc_6D3CD3: ConcatStr
  loc_6D3CD4: FStStr var_A0
  loc_6D3CD7: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3CE0: ILdRf var_A0
  loc_6D3CE3: FLdRfVar var_E4
  loc_6D3CE6: LdFixedStr
  loc_6D3CE9: FStStrNoPop var_1A0
  loc_6D3CEC: ConcatStr
  loc_6D3CED: FStStrNoPop var_244
  loc_6D3CF0: LitStr "  "
  loc_6D3CF3: ConcatStr
  loc_6D3CF4: FStStr var_A0
  loc_6D3CF7: FFreeStr var_1A0 = ""
  loc_6D3CFE: ILdRf var_A0
  loc_6D3D01: FLdRfVar var_C6
  loc_6D3D04: LdFixedStr
  loc_6D3D07: FStStrNoPop var_1A0
  loc_6D3D0A: ConcatStr
  loc_6D3D0B: FStStrNoPop var_244
  loc_6D3D0E: LitStr "  "
  loc_6D3D11: ConcatStr
  loc_6D3D12: FStStr var_A0
  loc_6D3D15: FFreeStr var_1A0 = ""
  loc_6D3D1C: LitI4 0
  loc_6D3D21: LitI4 4
  loc_6D3D26: FLdRfVar var_24C
  loc_6D3D29: Redim
  loc_6D3D33: LitVarStr var_17C, "Consumidor Final"
  loc_6D3D38: LitI4 0
  loc_6D3D3D: ILdRf var_24C
  loc_6D3D40: Ary1StVarCopy
  loc_6D3D42: LitVarStr var_1B0, "Exento"
  loc_6D3D47: LitI4 1
  loc_6D3D4C: ILdRf var_24C
  loc_6D3D4F: Ary1StVarCopy
  loc_6D3D51: LitVarStr var_1D0, "No Responsable"
  loc_6D3D56: LitI4 2
  loc_6D3D5B: ILdRf var_24C
  loc_6D3D5E: Ary1StVarCopy
  loc_6D3D60: LitVarStr var_1E0, "Responsable Inscripto"
  loc_6D3D65: LitI4 3
  loc_6D3D6A: ILdRf var_24C
  loc_6D3D6D: Ary1StVarCopy
  loc_6D3D6F: LitVarStr var_200, "Responsable No Inscripto"
  loc_6D3D74: LitI4 4
  loc_6D3D79: ILdRf var_24C
  loc_6D3D7C: Ary1StVarCopy
  loc_6D3D7E: FLdRfVar var_24C
  loc_6D3D81: FLdUI1
  loc_6D3D85: CR8I2
  loc_6D3D86: PopFPR4
  loc_6D3D87: FLdRfVar var_18C
  loc_6D3D8A: ImpAdCallFPR4  = Choose(, )
  loc_6D3D8F: FLdRfVar var_24C
  loc_6D3D92: Erase
  loc_6D3D93: LitI4 &H14
  loc_6D3D98: FLdRfVar var_18C
  loc_6D3D9B: CStrVarVal var_1A0
  loc_6D3D9F: ImpAdCallI2 Left$(, )
  loc_6D3DA4: FStStr var_248
  loc_6D3DA7: LitVarStr var_25C, "@"
  loc_6D3DAC: FStVarCopyObj var_1C0
  loc_6D3DAF: FLdRfVar var_1C0
  loc_6D3DB2: LitI4 &H14
  loc_6D3DB7: FLdRfVar var_1F0
  loc_6D3DBA: ImpAdCallFPR4  = String(, )
  loc_6D3DBF: ILdRf var_A0
  loc_6D3DC2: LitI4 1
  loc_6D3DC7: LitI4 1
  loc_6D3DCC: LitVarStr var_26C, "!"
  loc_6D3DD1: FLdRfVar var_1F0
  loc_6D3DD4: ConcatVar var_210
  loc_6D3DD8: FLdZeroAd var_248
  loc_6D3DDB: CVarStr var_220
  loc_6D3DDE: ImpAdCallI2 Format$(, )
  loc_6D3DE3: FStStrNoPop var_244
  loc_6D3DE6: ConcatStr
  loc_6D3DE7: FStStr var_A0
  loc_6D3DEA: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3DF3: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_220 = ""
  loc_6D3E00: LitVar_Missing var_17C
  loc_6D3E03: PopAdLdVar
  loc_6D3E04: ILdRf var_A0
  loc_6D3E07: ILdPr
  loc_6D3E0A: Me.AddItem from_stack_1, from_stack_2
  loc_6D3E0F: ILdRf arg_1C
  loc_6D3E12: ImpAdCallI2 IsMissing()
  loc_6D3E17: NotI4
  loc_6D3E18: BranchF loc_6D3E81
  loc_6D3E1B: FLdRfVar var_A0
  loc_6D3E1E: CDargRef
  loc_6D3E22: FLdRfVar var_16C
  loc_6D3E25: NewIfNullAd
  loc_6D3E28: FStAd var_190 
  loc_6D3E2C: FLdRfVar var_190
  loc_6D3E2F: CDargRef
  loc_6D3E33: ILdRfDarg arg_1C
  loc_6D3E39: LdPrVar
  loc_6D3E3B: LateMemCallLdVar var_18C, .AddPrintLine
  loc_6D3E43: PopAd
  loc_6D3E45: ILdRf var_190
  loc_6D3E48: CastAd
  loc_6D3E4B: FStAdFunc var_16C
  loc_6D3E4E: FLdRfVar var_18C
  loc_6D3E51: NotVar var_1C0
  loc_6D3E55: CBoolVarNull
  loc_6D3E57: FFree1Ad var_190
  loc_6D3E5A: FFree1Var var_18C = ""
  loc_6D3E5D: BranchF loc_6D3E81
  loc_6D3E60: ILdRfDarg arg_1C
  loc_6D3E66: LdPrVar
  loc_6D3E68: LateMemCall
  loc_6D3E6E: LitNothing
  loc_6D3E70: CastAd
  loc_6D3E73: FStAdFunc var_16C
  loc_6D3E76: LitI2_Byte 0
  loc_6D3E78: FStI2 var_86
  loc_6D3E7B: ExitProcCbHresult
  loc_6D3E81: Branch loc_6D4110
  loc_6D3E84: FLdI2 var_168
  loc_6D3E87: CStrUI1
  loc_6D3E89: FStStrNoPop var_1A0
  loc_6D3E8C: ImpAdCallFPR4 push Val()
  loc_6D3E91: FStFPR8 var_19C
  loc_6D3E94: LitI4 1
  loc_6D3E99: LitI4 1
  loc_6D3E9E: LitVarStr var_1B0, "@@@@"
  loc_6D3EA3: FStVarCopyObj var_1C0
  loc_6D3EA6: FLdRfVar var_1C0
  loc_6D3EA9: FLdFPR8 var_19C
  loc_6D3EAC: CVarR8
  loc_6D3EB0: ImpAdCallI2 Format$(, )
  loc_6D3EB5: CVarStr var_230
  loc_6D3EB8: LitVarStr var_200, "  "
  loc_6D3EBD: FStVarCopyObj var_210
  loc_6D3EC0: FLdRfVar var_210
  loc_6D3EC3: LitVarStr var_1E0, "c "
  loc_6D3EC8: FStVarCopyObj var_1F0
  loc_6D3ECB: FLdRfVar var_1F0
  loc_6D3ECE: FLdRfVar var_A6
  loc_6D3ED1: CVarRef
  loc_6D3ED6: FLdRfVar var_220
  loc_6D3ED9: ImpAdCallFPR4  = IIf(, , )
  loc_6D3EDE: FLdRfVar var_220
  loc_6D3EE1: ConcatVar var_240
  loc_6D3EE5: CStrVarTmp
  loc_6D3EE6: FStStr var_A0
  loc_6D3EE9: FFree1Str var_1A0
  loc_6D3EEC: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_220 = ""
  loc_6D3EFD: ILdRf var_A0
  loc_6D3F00: LitI4 &H14
  loc_6D3F05: FLdRfVar var_166
  loc_6D3F08: LdFixedStr
  loc_6D3F0B: FStStrNoPop var_1A0
  loc_6D3F0E: ImpAdCallI2 Left$(, )
  loc_6D3F13: FStStr var_244
  loc_6D3F16: ILdRf var_1A0
  loc_6D3F19: FLdRfVar var_166
  loc_6D3F1C: StFixedStr
  loc_6D3F1F: ILdRf var_244
  loc_6D3F22: ConcatStr
  loc_6D3F23: FStStrNoPop var_248
  loc_6D3F26: LitStr "  "
  loc_6D3F29: ConcatStr
  loc_6D3F2A: FStStr var_A0
  loc_6D3F2D: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3F36: ILdRf var_A0
  loc_6D3F39: LitI4 &H19
  loc_6D3F3E: FLdRfVar var_134
  loc_6D3F41: LdFixedStr
  loc_6D3F44: FStStrNoPop var_1A0
  loc_6D3F47: ImpAdCallI2 Left$(, )
  loc_6D3F4C: FStStr var_244
  loc_6D3F4F: ILdRf var_1A0
  loc_6D3F52: FLdRfVar var_134
  loc_6D3F55: StFixedStr
  loc_6D3F58: ILdRf var_244
  loc_6D3F5B: ConcatStr
  loc_6D3F5C: FStStrNoPop var_248
  loc_6D3F5F: LitStr "  "
  loc_6D3F62: ConcatStr
  loc_6D3F63: FStStr var_A0
  loc_6D3F66: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D3F6F: ILdRf var_A0
  loc_6D3F72: FLdRfVar var_E4
  loc_6D3F75: LdFixedStr
  loc_6D3F78: FStStrNoPop var_1A0
  loc_6D3F7B: ConcatStr
  loc_6D3F7C: FStStrNoPop var_244
  loc_6D3F7F: LitStr "  "
  loc_6D3F82: ConcatStr
  loc_6D3F83: FStStr var_A0
  loc_6D3F86: FFreeStr var_1A0 = ""
  loc_6D3F8D: ILdRf var_A0
  loc_6D3F90: FLdRfVar var_C6
  loc_6D3F93: LdFixedStr
  loc_6D3F96: FStStrNoPop var_1A0
  loc_6D3F99: ConcatStr
  loc_6D3F9A: FStStrNoPop var_244
  loc_6D3F9D: LitStr "  "
  loc_6D3FA0: ConcatStr
  loc_6D3FA1: FStStr var_A0
  loc_6D3FA4: FFreeStr var_1A0 = ""
  loc_6D3FAB: LitI4 0
  loc_6D3FB0: LitI4 4
  loc_6D3FB5: FLdRfVar var_24C
  loc_6D3FB8: Redim
  loc_6D3FC2: LitVarStr var_17C, "Consumidor Final"
  loc_6D3FC7: LitI4 0
  loc_6D3FCC: ILdRf var_24C
  loc_6D3FCF: Ary1StVarCopy
  loc_6D3FD1: LitVarStr var_1B0, "Exento"
  loc_6D3FD6: LitI4 1
  loc_6D3FDB: ILdRf var_24C
  loc_6D3FDE: Ary1StVarCopy
  loc_6D3FE0: LitVarStr var_1D0, "No Responsable"
  loc_6D3FE5: LitI4 2
  loc_6D3FEA: ILdRf var_24C
  loc_6D3FED: Ary1StVarCopy
  loc_6D3FEF: LitVarStr var_1E0, "Responsable Inscripto"
  loc_6D3FF4: LitI4 3
  loc_6D3FF9: ILdRf var_24C
  loc_6D3FFC: Ary1StVarCopy
  loc_6D3FFE: LitVarStr var_200, "Responsable No Inscripto"
  loc_6D4003: LitI4 4
  loc_6D4008: ILdRf var_24C
  loc_6D400B: Ary1StVarCopy
  loc_6D400D: FLdRfVar var_24C
  loc_6D4010: FLdUI1
  loc_6D4014: CR8I2
  loc_6D4015: PopFPR4
  loc_6D4016: FLdRfVar var_18C
  loc_6D4019: ImpAdCallFPR4  = Choose(, )
  loc_6D401E: FLdRfVar var_24C
  loc_6D4021: Erase
  loc_6D4022: LitI4 &H14
  loc_6D4027: FLdRfVar var_18C
  loc_6D402A: CStrVarVal var_1A0
  loc_6D402E: ImpAdCallI2 Left$(, )
  loc_6D4033: FStStr var_248
  loc_6D4036: LitVarStr var_25C, "@"
  loc_6D403B: FStVarCopyObj var_1C0
  loc_6D403E: FLdRfVar var_1C0
  loc_6D4041: LitI4 &H14
  loc_6D4046: FLdRfVar var_1F0
  loc_6D4049: ImpAdCallFPR4  = String(, )
  loc_6D404E: ILdRf var_A0
  loc_6D4051: LitI4 1
  loc_6D4056: LitI4 1
  loc_6D405B: LitVarStr var_26C, "!"
  loc_6D4060: FLdRfVar var_1F0
  loc_6D4063: ConcatVar var_210
  loc_6D4067: FLdZeroAd var_248
  loc_6D406A: CVarStr var_220
  loc_6D406D: ImpAdCallI2 Format$(, )
  loc_6D4072: FStStrNoPop var_244
  loc_6D4075: ConcatStr
  loc_6D4076: FStStr var_A0
  loc_6D4079: FFreeStr var_1A0 = "": var_244 = ""
  loc_6D4082: FFreeVar var_18C = "": var_1C0 = "": var_1F0 = "": var_220 = ""
  loc_6D408F: LitVar_Missing var_17C
  loc_6D4092: PopAdLdVar
  loc_6D4093: ILdRf var_A0
  loc_6D4096: ILdPr
  loc_6D4099: Me.AddItem from_stack_1, from_stack_2
  loc_6D409E: ILdRf arg_1C
  loc_6D40A1: ImpAdCallI2 IsMissing()
  loc_6D40A6: NotI4
  loc_6D40A7: BranchF loc_6D4110
  loc_6D40AA: FLdRfVar var_A0
  loc_6D40AD: CDargRef
  loc_6D40B1: FLdRfVar var_16C
  loc_6D40B4: NewIfNullAd
  loc_6D40B7: FStAd var_190 
  loc_6D40BB: FLdRfVar var_190
  loc_6D40BE: CDargRef
  loc_6D40C2: ILdRfDarg arg_1C
  loc_6D40C8: LdPrVar
  loc_6D40CA: LateMemCallLdVar var_18C, .AddPrintLine
  loc_6D40D2: PopAd
  loc_6D40D4: ILdRf var_190
  loc_6D40D7: CastAd
  loc_6D40DA: FStAdFunc var_16C
  loc_6D40DD: FLdRfVar var_18C
  loc_6D40E0: NotVar var_1C0
  loc_6D40E4: CBoolVarNull
  loc_6D40E6: FFree1Ad var_190
  loc_6D40E9: FFree1Var var_18C = ""
  loc_6D40EC: BranchF loc_6D4110
  loc_6D40EF: ILdRfDarg arg_1C
  loc_6D40F5: LdPrVar
  loc_6D40F7: LateMemCall
  loc_6D40FD: LitNothing
  loc_6D40FF: CastAd
  loc_6D4102: FStAdFunc var_16C
  loc_6D4105: LitI2_Byte 0
  loc_6D4107: FStI2 var_86
  loc_6D410A: ExitProcCbHresult
  loc_6D4110: FLdI2 var_8E
  loc_6D4113: LitI2_Byte &H1D
  loc_6D4115: AddI2
  loc_6D4116: FStI2 var_8E
  loc_6D4119: Branch loc_6D36FA
  loc_6D411C: LitNothing
  loc_6D411E: CastAd
  loc_6D4121: FStAdFunc var_16C
  loc_6D4124: LitI2_Byte &HFF
  loc_6D4126: FStI2 var_86
  loc_6D4129: ExitProcCbHresult
End Function

Private Function Proc_45_8_610820(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '610820
  'Data Table: 423AA8
  loc_610710: ILdRf arg_C
  loc_610713: FStStrCopy var_8C
  loc_610716: ILdRf arg_10
  loc_610719: FStStrCopy var_90
  loc_61071C: LitI2_Byte &HFF
  loc_61071E: FStI2 var_86
  loc_610721: ILdRf var_8C
  loc_610724: LitStr vbNullString
  loc_610727: EqStr
  loc_610729: BranchF loc_610734
  loc_61072C: LitI2_Byte &H30
  loc_61072E: FStI2 var_92
  loc_610731: Branch loc_61073F
  loc_610734: ILdRf var_8C
  loc_610737: ImpAdCallI2 Asc()
  loc_61073C: FStI2 var_92
  loc_61073F: ILdRf var_90
  loc_610742: LitStr vbNullString
  loc_610745: EqStr
  loc_610747: BranchF loc_610752
  loc_61074A: LitI2_Byte &H5A
  loc_61074C: FStI2 var_94
  loc_61074F: Branch loc_61075D
  loc_610752: ILdRf var_90
  loc_610755: ImpAdCallI2 Asc()
  loc_61075A: FStI2 var_94
  loc_61075D: LitI2_Byte &H30
  loc_61075F: FLdI2 var_92
  loc_610762: LeI2
  loc_610763: FLdI2 var_92
  loc_610766: LitI2_Byte &H39
  loc_610768: LeI2
  loc_610769: AndI4
  loc_61076A: LitI2_Byte &H41
  loc_61076C: FLdI2 var_94
  loc_61076F: LeI2
  loc_610770: AndI4
  loc_610771: FLdI2 var_94
  loc_610774: LitI2_Byte &H5A
  loc_610776: LeI2
  loc_610777: AndI4
  loc_610778: BranchF loc_610794
  loc_61077B: FLdI2 var_92
  loc_61077E: IStI2 arg_1C
  loc_610781: LitI2_Byte &H39
  loc_610783: IStI2 arg_20
  loc_610786: LitI2_Byte &H41
  loc_610788: IStI2 arg_14
  loc_61078B: FLdI2 var_94
  loc_61078E: IStI2 arg_18
  loc_610791: Branch loc_610817
  loc_610794: LitI2_Byte &H30
  loc_610796: FLdI2 var_92
  loc_610799: LeI2
  loc_61079A: FLdI2 var_92
  loc_61079D: LitI2_Byte &H39
  loc_61079F: LeI2
  loc_6107A0: AndI4
  loc_6107A1: LitI2_Byte &H30
  loc_6107A3: FLdI2 var_94
  loc_6107A6: LeI2
  loc_6107A7: AndI4
  loc_6107A8: FLdI2 var_94
  loc_6107AB: LitI2_Byte &H39
  loc_6107AD: LeI2
  loc_6107AE: AndI4
  loc_6107AF: FLdI2 var_92
  loc_6107B2: FLdI2 var_94
  loc_6107B5: LeI2
  loc_6107B6: AndI4
  loc_6107B7: BranchF loc_6107D3
  loc_6107BA: FLdI2 var_92
  loc_6107BD: IStI2 arg_1C
  loc_6107C0: FLdI2 var_94
  loc_6107C3: IStI2 arg_20
  loc_6107C6: LitI2_Byte 0
  loc_6107C8: IStI2 arg_14
  loc_6107CB: LitI2_Byte &HFF
  loc_6107CD: IStI2 arg_18
  loc_6107D0: Branch loc_610817
  loc_6107D3: LitI2_Byte &H41
  loc_6107D5: FLdI2 var_92
  loc_6107D8: LeI2
  loc_6107D9: FLdI2 var_92
  loc_6107DC: LitI2_Byte &H5A
  loc_6107DE: LeI2
  loc_6107DF: AndI4
  loc_6107E0: LitI2_Byte &H41
  loc_6107E2: FLdI2 var_94
  loc_6107E5: LeI2
  loc_6107E6: AndI4
  loc_6107E7: FLdI2 var_94
  loc_6107EA: LitI2_Byte &H5A
  loc_6107EC: LeI2
  loc_6107ED: AndI4
  loc_6107EE: FLdI2 var_92
  loc_6107F1: FLdI2 var_94
  loc_6107F4: LeI2
  loc_6107F5: AndI4
  loc_6107F6: BranchF loc_610812
  loc_6107F9: LitI2_Byte 0
  loc_6107FB: IStI2 arg_1C
  loc_6107FE: LitI2_Byte &HFF
  loc_610800: IStI2 arg_20
  loc_610803: FLdI2 var_92
  loc_610806: IStI2 arg_14
  loc_610809: FLdI2 var_94
  loc_61080C: IStI2 arg_18
  loc_61080F: Branch loc_610817
  loc_610812: LitI2_Byte 0
  loc_610814: FStI2 var_86
  loc_610817: ExitProcCbHresult
  loc_61081D: CStrVarTmp
End Function
