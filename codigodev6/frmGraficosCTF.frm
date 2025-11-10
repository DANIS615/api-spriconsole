VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{02B5E320-7292-11CF-93D50020AF99504A}#1.0#0"; "C:\WINDOWS\SysWow64\MSCHART.OCX"
Begin VB.Form frmGraficosCTF
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
  Begin VB.ComboBox cboOpcion
    Style = 2
    Left = 6600
    Top = 960
    Width = 2295
    Height = 390
    TabIndex = 12
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
  Begin VB.CommandButton cmdActualiza
    Caption = "A&ctualiza"
    Left = 6600
    Top = 1680
    Width = 1455
    Height = 495
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
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 8280
    Top = 1680
    Width = 1455
    Height = 495
    TabIndex = 7
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
    Left = 9240
    Top = 960
    Width = 2535
    Height = 495
    TabIndex = 0
    Default = -1  'True
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
  Begin VB.Frame Frame2
    Caption = "Rango"
    Left = 3360
    Top = 840
    Width = 3015
    Height = 1455
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox txtFechaHasta
      Left = 1080
      Top = 840
      Width = 1455
      Height = 375
      TabIndex = 9
      OleObjectBlob = "frmGraficosCTF.frx":0000
    End
    Begin MSMask.MaskEdBox txtFechaDesde
      Left = 1080
      Top = 360
      Width = 1455
      Height = 375
      TabIndex = 8
      OleObjectBlob = "frmGraficosCTF.frx":0094
    End
    Begin VB.Label Label2
      Caption = "Hasta"
      Left = 240
      Top = 960
      Width = 615
      Height = 255
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
    Begin VB.Label Label1
      Caption = "Desde"
      Left = 240
      Top = 480
      Width = 615
      Height = 255
      TabIndex = 5
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
  Begin VB.Frame Frame1
    Caption = "Tipo de Gráfico"
    Left = 120
    Top = 840
    Width = 3015
    Height = 1455
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optGrafico
      Caption = "Ventas por playero"
      Index = 1
      Left = 120
      Top = 960
      Width = 2655
      Height = 255
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
    Begin VB.OptionButton optGrafico
      Caption = "Ranking de playeros"
      Index = 0
      Left = 120
      Top = 480
      Width = 2655
      Height = 255
      TabIndex = 2
      Value = 255
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
  Begin MSChartLib.MSChart Grafico
    Left = 0
    Top = 2280
    Width = 11895
    Height = 6615
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "frmGraficosCTF.frx":0128
  End
  Begin VB.Label Label3
    Caption = "Estadísticas de Playeros"
    Left = 3240
    Top = 120
    Width = 5415
    Height = 495
    TabIndex = 13
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 20.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmGraficosCTF"


Private Sub cmdImprimir_Click() '5CB9B4
  'Data Table: 43090C
  loc_5CB9A4: Call cmdActualiza_Click()
  loc_5CB9A9: FLdPr Me
  loc_5CB9AC: Me.PrintForm
  loc_5CB9B1: ExitProcHresult
  loc_5CB9B2: LitStr "StrFormMemory_0"
End Sub

Private Sub optGrafico_Click() '5D066C
  'Data Table: 43090C
  loc_5D0654: FLdRfVar var_86
  loc_5D0657: from_stack_1v = Proc_63_14_63DE7C()
  loc_5D065C: FLdI2 var_86
  loc_5D065F: NotI4
  loc_5D0660: BranchF loc_5D0664
  loc_5D0663: ExitProcHresult
  loc_5D0664: Call cmdActualiza_Click()
  loc_5D0669: ExitProcHresult
End Sub

Private Sub cmdActualiza_Click() '626DA8
  'Data Table: 43090C
  loc_626C50: FLdRfVar var_8A
  loc_626C53: from_stack_1v = Proc_63_15_6465A8()
  loc_626C58: FLdI2 var_8A
  loc_626C5B: NotI4
  loc_626C5C: BranchF loc_626CE6
  loc_626C5F: FLdRfVar var_1D8
  loc_626C62: LitVar_Missing var_1D4
  loc_626C65: LitVar_Missing var_1B4
  loc_626C68: LitVar_Missing var_194
  loc_626C6B: LitVar_Missing var_174
  loc_626C6E: LitVar_Missing var_154
  loc_626C71: LitVar_Missing var_134
  loc_626C74: LitVar_Missing var_114
  loc_626C77: LitVar_Missing var_F4
  loc_626C7A: LitVar_Missing var_D4
  loc_626C7D: LitVar_Missing var_B4
  loc_626C80: LitStr "Debe ingresar una fecha correcta. Verifique por favor."
  loc_626C83: FStStrCopy var_94
  loc_626C86: FLdRfVar var_94
  loc_626C89: LitI4 &HF
  loc_626C8E: PopTmpLdAdStr var_90
  loc_626C91: LitI2_Byte &H4D
  loc_626C93: PopTmpLdAd2 var_8A
  loc_626C96: ImpAdLdRf MemVar_74C7D0
  loc_626C99: NewIfNullPr clsMsg
  loc_626C9C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_626CA1: FLdZeroAd var_1D8
  loc_626CA4: FStStr var_88
  loc_626CA7: FFree1Str var_94
  loc_626CAA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_626CC1: LitVar_Missing var_F4
  loc_626CC4: LitVar_Missing var_D4
  loc_626CC7: LitVar_Missing var_B4
  loc_626CCA: LitI4 &H40
  loc_626CCF: FLdRfVar var_88
  loc_626CD2: CVarRef
  loc_626CD7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_626CDC: FFreeVar var_B4 = "": var_D4 = ""
  loc_626CE5: ExitProcHresult
  loc_626CE6: FLdRfVar var_8A
  loc_626CE9: from_stack_1v = Proc_63_14_63DE7C()
  loc_626CEE: FLdI2 var_8A
  loc_626CF1: NotI4
  loc_626CF2: BranchF loc_626D7C
  loc_626CF5: FLdRfVar var_1D8
  loc_626CF8: LitVar_Missing var_1D4
  loc_626CFB: LitVar_Missing var_1B4
  loc_626CFE: LitVar_Missing var_194
  loc_626D01: LitVar_Missing var_174
  loc_626D04: LitVar_Missing var_154
  loc_626D07: LitVar_Missing var_134
  loc_626D0A: LitVar_Missing var_114
  loc_626D0D: LitVar_Missing var_F4
  loc_626D10: LitVar_Missing var_D4
  loc_626D13: LitVar_Missing var_B4
  loc_626D16: LitStr "Debe ingresar un rango de tiempo correcto. Verifique por favor."
  loc_626D19: FStStrCopy var_94
  loc_626D1C: FLdRfVar var_94
  loc_626D1F: LitI4 &H10
  loc_626D24: PopTmpLdAdStr var_90
  loc_626D27: LitI2_Byte &H4D
  loc_626D29: PopTmpLdAd2 var_8A
  loc_626D2C: ImpAdLdRf MemVar_74C7D0
  loc_626D2F: NewIfNullPr clsMsg
  loc_626D32: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_626D37: FLdZeroAd var_1D8
  loc_626D3A: FStStr var_88
  loc_626D3D: FFree1Str var_94
  loc_626D40: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_626D57: LitVar_Missing var_F4
  loc_626D5A: LitVar_Missing var_D4
  loc_626D5D: LitVar_Missing var_B4
  loc_626D60: LitI4 &H40
  loc_626D65: FLdRfVar var_88
  loc_626D68: CVarRef
  loc_626D6D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_626D72: FFreeVar var_B4 = "": var_D4 = ""
  loc_626D7B: ExitProcHresult
  loc_626D7C: FLdRfVar var_8A
  loc_626D7F: from_stack_1v = Proc_63_11_5D832C()
  loc_626D84: FLdI2 var_8A
  loc_626D87: NotI4
  loc_626D88: BranchF loc_626DA1
  loc_626D8B: ILdRf Me
  loc_626D8E: FStAdNoPop
  loc_626D92: ImpAdLdRf MemVar_7520D4
  loc_626D95: NewIfNullPr Global
  loc_626D98: Global.Unload from_stack_1
  loc_626D9D: FFree1Ad var_1DC
  loc_626DA0: ExitProcHresult
  loc_626DA1: from_stack_1v = Proc_63_12_6C67E8()
  loc_626DA6: ExitProcHresult
End Sub

Private Sub txtFechaDesde_UnknownEvent_0 '5DA73C
  'Data Table: 43090C
  loc_5DA704: LitVarI4
  loc_5DA70C: PopAdLdVar
  loc_5DA70D: FLdPrThis
  loc_5DA70E: VCallAd Control_ID_txtFechaDesde
  loc_5DA711: FStAdFunc var_98
  loc_5DA714: FLdPr var_98
  loc_5DA717: LateIdSt
  loc_5DA71C: FFree1Ad var_98
  loc_5DA71F: LitVarI4
  loc_5DA727: PopAdLdVar
  loc_5DA728: FLdPrThis
  loc_5DA729: VCallAd Control_ID_txtFechaDesde
  loc_5DA72C: FStAdFunc var_98
  loc_5DA72F: FLdPr var_98
  loc_5DA732: LateIdSt
  loc_5DA737: FFree1Ad var_98
  loc_5DA73A: ExitProcHresult
End Sub

Private Sub txtFechaDesde_UnknownEvent_1 '5DD900
  'Data Table: 43090C
  loc_5DD8BC: FLdPrThis
  loc_5DD8BD: VCallAd Control_ID_txtFechaDesde
  loc_5DD8C0: FStAdFunc var_88
  loc_5DD8C3: FLdPr var_88
  loc_5DD8C6: LateIdLdVar var_98 DispID_22 0
  loc_5DD8CD: PopAd
  loc_5DD8CF: LitI2_Byte &HFF
  loc_5DD8D1: FLdRfVar var_98
  loc_5DD8D4: CStrVarTmp
  loc_5DD8D5: FStStrNoPop var_9C
  loc_5DD8D8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DD8DD: NotI4
  loc_5DD8DE: FFree1Str var_9C
  loc_5DD8E1: FFree1Ad var_88
  loc_5DD8E4: FFree1Var var_98 = ""
  loc_5DD8E7: BranchF loc_5DD8FF
  loc_5DD8EA: FLdPrThis
  loc_5DD8EB: VCallAd Control_ID_txtFechaDesde
  loc_5DD8EE: FStAdFunc var_88
  loc_5DD8F1: FLdPr var_88
  loc_5DD8F4: LateIdCall
  loc_5DD8FC: FFree1Ad var_88
  loc_5DD8FF: ExitProcHresult
End Sub

Private Sub txtFechaHasta_UnknownEvent_0 '5DA6D0
  'Data Table: 43090C
  loc_5DA698: LitVarI4
  loc_5DA6A0: PopAdLdVar
  loc_5DA6A1: FLdPrThis
  loc_5DA6A2: VCallAd Control_ID_txtFechaHasta
  loc_5DA6A5: FStAdFunc var_98
  loc_5DA6A8: FLdPr var_98
  loc_5DA6AB: LateIdSt
  loc_5DA6B0: FFree1Ad var_98
  loc_5DA6B3: LitVarI4
  loc_5DA6BB: PopAdLdVar
  loc_5DA6BC: FLdPrThis
  loc_5DA6BD: VCallAd Control_ID_txtFechaHasta
  loc_5DA6C0: FStAdFunc var_98
  loc_5DA6C3: FLdPr var_98
  loc_5DA6C6: LateIdSt
  loc_5DA6CB: FFree1Ad var_98
  loc_5DA6CE: ExitProcHresult
End Sub

Private Sub txtFechaHasta_UnknownEvent_1 '5DDE80
  'Data Table: 43090C
  loc_5DDE3C: FLdPrThis
  loc_5DDE3D: VCallAd Control_ID_txtFechaHasta
  loc_5DDE40: FStAdFunc var_88
  loc_5DDE43: FLdPr var_88
  loc_5DDE46: LateIdLdVar var_98 DispID_22 0
  loc_5DDE4D: PopAd
  loc_5DDE4F: LitI2_Byte &HFF
  loc_5DDE51: FLdRfVar var_98
  loc_5DDE54: CStrVarTmp
  loc_5DDE55: FStStrNoPop var_9C
  loc_5DDE58: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DDE5D: NotI4
  loc_5DDE5E: FFree1Str var_9C
  loc_5DDE61: FFree1Ad var_88
  loc_5DDE64: FFree1Var var_98 = ""
  loc_5DDE67: BranchF loc_5DDE7F
  loc_5DDE6A: FLdPrThis
  loc_5DDE6B: VCallAd Control_ID_txtFechaHasta
  loc_5DDE6E: FStAdFunc var_88
  loc_5DDE71: FLdPr var_88
  loc_5DDE74: LateIdCall
  loc_5DDE7C: FFree1Ad var_88
  loc_5DDE7F: ExitProcHresult
End Sub

Private Sub cboOpcion_Click() '5CB8F4
  'Data Table: 43090C
  loc_5CB8E4: FLdPr Me
  loc_5CB8E7: MemLdI2 global_60
  loc_5CB8EA: BranchF loc_5CB8F2
  loc_5CB8ED: Call cmdActualiza_Click()
  loc_5CB8F2: ExitProcHresult
End Sub

Private Sub Form_Load() '6A3854
  'Data Table: 43090C
  loc_6A3158: FLdRfVar var_1D4
  loc_6A315B: LitVar_Missing var_1D0
  loc_6A315E: LitVar_Missing var_1B0
  loc_6A3161: LitVar_Missing var_190
  loc_6A3164: LitVar_Missing var_170
  loc_6A3167: LitVar_Missing var_150
  loc_6A316A: LitVar_Missing var_130
  loc_6A316D: LitVar_Missing var_110
  loc_6A3170: LitVar_Missing var_F0
  loc_6A3173: LitVar_Missing var_D0
  loc_6A3176: LitVar_Missing var_B0
  loc_6A3179: LitStr "Estadísticas de Playeros"
  loc_6A317C: FStStrCopy var_90
  loc_6A317F: FLdRfVar var_90
  loc_6A3182: LitI4 1
  loc_6A3187: PopTmpLdAdStr var_8C
  loc_6A318A: LitI2_Byte &H4D
  loc_6A318C: PopTmpLdAd2 var_88
  loc_6A318F: ImpAdLdRf MemVar_74C7D0
  loc_6A3192: NewIfNullPr clsMsg
  loc_6A3195: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A319A: ILdRf var_1D4
  loc_6A319D: FLdPrThis
  loc_6A319E: VCallAd Control_ID_Label3
  loc_6A31A1: FStAdFunc var_1D8
  loc_6A31A4: FLdPr var_1D8
  loc_6A31A7: Me.Caption = from_stack_1
  loc_6A31AC: FFreeStr var_90 = ""
  loc_6A31B3: FFree1Ad var_1D8
  loc_6A31B6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A31CD: FLdRfVar var_1D4
  loc_6A31D0: LitVar_Missing var_1D0
  loc_6A31D3: LitVar_Missing var_1B0
  loc_6A31D6: LitVar_Missing var_190
  loc_6A31D9: LitVar_Missing var_170
  loc_6A31DC: LitVar_Missing var_150
  loc_6A31DF: LitVar_Missing var_130
  loc_6A31E2: LitVar_Missing var_110
  loc_6A31E5: LitVar_Missing var_F0
  loc_6A31E8: LitVar_Missing var_D0
  loc_6A31EB: LitVar_Missing var_B0
  loc_6A31EE: LitStr "Tipo de Gráfico"
  loc_6A31F1: FStStrCopy var_90
  loc_6A31F4: FLdRfVar var_90
  loc_6A31F7: LitI4 2
  loc_6A31FC: PopTmpLdAdStr var_8C
  loc_6A31FF: LitI2_Byte &H4D
  loc_6A3201: PopTmpLdAd2 var_88
  loc_6A3204: ImpAdLdRf MemVar_74C7D0
  loc_6A3207: NewIfNullPr clsMsg
  loc_6A320A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A320F: ILdRf var_1D4
  loc_6A3212: FLdPrThis
  loc_6A3213: VCallAd Control_ID_Frame1
  loc_6A3216: FStAdFunc var_1D8
  loc_6A3219: FLdPr var_1D8
  loc_6A321C: Me.Caption = from_stack_1
  loc_6A3221: FFreeStr var_90 = ""
  loc_6A3228: FFree1Ad var_1D8
  loc_6A322B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A3242: FLdRfVar var_1D4
  loc_6A3245: LitVar_Missing var_1D0
  loc_6A3248: LitVar_Missing var_1B0
  loc_6A324B: LitVar_Missing var_190
  loc_6A324E: LitVar_Missing var_170
  loc_6A3251: LitVar_Missing var_150
  loc_6A3254: LitVar_Missing var_130
  loc_6A3257: LitVar_Missing var_110
  loc_6A325A: LitVar_Missing var_F0
  loc_6A325D: LitVar_Missing var_D0
  loc_6A3260: LitVar_Missing var_B0
  loc_6A3263: LitStr "Ranking de playeros"
  loc_6A3266: FStStrCopy var_90
  loc_6A3269: FLdRfVar var_90
  loc_6A326C: LitI4 3
  loc_6A3271: PopTmpLdAdStr var_8C
  loc_6A3274: LitI2_Byte &H4D
  loc_6A3276: PopTmpLdAd2 var_88
  loc_6A3279: ImpAdLdRf MemVar_74C7D0
  loc_6A327C: NewIfNullPr clsMsg
  loc_6A327F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3284: ILdRf var_1D4
  loc_6A3287: FLdRfVar var_1DC
  loc_6A328A: LitI2_Byte 0
  loc_6A328C: FLdPrThis
  loc_6A328D: VCallAd Control_ID_optGrafico
  loc_6A3290: FStAdFunc var_1D8
  loc_6A3293: FLdPr var_1D8
  loc_6A3296: Set from_stack_2 = Me(from_stack_1)
  loc_6A329B: FLdPr var_1DC
  loc_6A329E: Me.Caption = from_stack_1
  loc_6A32A3: FFreeStr var_90 = ""
  loc_6A32AA: FFreeAd var_1D8 = ""
  loc_6A32B1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A32C8: FLdRfVar var_1D4
  loc_6A32CB: LitVar_Missing var_1D0
  loc_6A32CE: LitVar_Missing var_1B0
  loc_6A32D1: LitVar_Missing var_190
  loc_6A32D4: LitVar_Missing var_170
  loc_6A32D7: LitVar_Missing var_150
  loc_6A32DA: LitVar_Missing var_130
  loc_6A32DD: LitVar_Missing var_110
  loc_6A32E0: LitVar_Missing var_F0
  loc_6A32E3: LitVar_Missing var_D0
  loc_6A32E6: LitVar_Missing var_B0
  loc_6A32E9: LitStr "Ventas por playero"
  loc_6A32EC: FStStrCopy var_90
  loc_6A32EF: FLdRfVar var_90
  loc_6A32F2: LitI4 4
  loc_6A32F7: PopTmpLdAdStr var_8C
  loc_6A32FA: LitI2_Byte &H4D
  loc_6A32FC: PopTmpLdAd2 var_88
  loc_6A32FF: ImpAdLdRf MemVar_74C7D0
  loc_6A3302: NewIfNullPr clsMsg
  loc_6A3305: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A330A: ILdRf var_1D4
  loc_6A330D: FLdRfVar var_1DC
  loc_6A3310: LitI2_Byte 1
  loc_6A3312: FLdPrThis
  loc_6A3313: VCallAd Control_ID_optGrafico
  loc_6A3316: FStAdFunc var_1D8
  loc_6A3319: FLdPr var_1D8
  loc_6A331C: Set from_stack_2 = Me(from_stack_1)
  loc_6A3321: FLdPr var_1DC
  loc_6A3324: Me.Caption = from_stack_1
  loc_6A3329: FFreeStr var_90 = ""
  loc_6A3330: FFreeAd var_1D8 = ""
  loc_6A3337: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A334E: FLdRfVar var_1D4
  loc_6A3351: LitVar_Missing var_1D0
  loc_6A3354: LitVar_Missing var_1B0
  loc_6A3357: LitVar_Missing var_190
  loc_6A335A: LitVar_Missing var_170
  loc_6A335D: LitVar_Missing var_150
  loc_6A3360: LitVar_Missing var_130
  loc_6A3363: LitVar_Missing var_110
  loc_6A3366: LitVar_Missing var_F0
  loc_6A3369: LitVar_Missing var_D0
  loc_6A336C: LitVar_Missing var_B0
  loc_6A336F: LitStr "Rango"
  loc_6A3372: FStStrCopy var_90
  loc_6A3375: FLdRfVar var_90
  loc_6A3378: LitI4 5
  loc_6A337D: PopTmpLdAdStr var_8C
  loc_6A3380: LitI2_Byte &H4D
  loc_6A3382: PopTmpLdAd2 var_88
  loc_6A3385: ImpAdLdRf MemVar_74C7D0
  loc_6A3388: NewIfNullPr clsMsg
  loc_6A338B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3390: ILdRf var_1D4
  loc_6A3393: FLdPrThis
  loc_6A3394: VCallAd Control_ID_Frame2
  loc_6A3397: FStAdFunc var_1D8
  loc_6A339A: FLdPr var_1D8
  loc_6A339D: Me.Caption = from_stack_1
  loc_6A33A2: FFreeStr var_90 = ""
  loc_6A33A9: FFree1Ad var_1D8
  loc_6A33AC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A33C3: FLdRfVar var_1D4
  loc_6A33C6: LitVar_Missing var_1D0
  loc_6A33C9: LitVar_Missing var_1B0
  loc_6A33CC: LitVar_Missing var_190
  loc_6A33CF: LitVar_Missing var_170
  loc_6A33D2: LitVar_Missing var_150
  loc_6A33D5: LitVar_Missing var_130
  loc_6A33D8: LitVar_Missing var_110
  loc_6A33DB: LitVar_Missing var_F0
  loc_6A33DE: LitVar_Missing var_D0
  loc_6A33E1: LitVar_Missing var_B0
  loc_6A33E4: LitStr "Desde"
  loc_6A33E7: FStStrCopy var_90
  loc_6A33EA: FLdRfVar var_90
  loc_6A33ED: LitI4 6
  loc_6A33F2: PopTmpLdAdStr var_8C
  loc_6A33F5: LitI2_Byte &H4D
  loc_6A33F7: PopTmpLdAd2 var_88
  loc_6A33FA: ImpAdLdRf MemVar_74C7D0
  loc_6A33FD: NewIfNullPr clsMsg
  loc_6A3400: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3405: ILdRf var_1D4
  loc_6A3408: FLdPrThis
  loc_6A3409: VCallAd Control_ID_Label1
  loc_6A340C: FStAdFunc var_1D8
  loc_6A340F: FLdPr var_1D8
  loc_6A3412: Me.Caption = from_stack_1
  loc_6A3417: FFreeStr var_90 = ""
  loc_6A341E: FFree1Ad var_1D8
  loc_6A3421: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A3438: FLdRfVar var_1D4
  loc_6A343B: LitVar_Missing var_1D0
  loc_6A343E: LitVar_Missing var_1B0
  loc_6A3441: LitVar_Missing var_190
  loc_6A3444: LitVar_Missing var_170
  loc_6A3447: LitVar_Missing var_150
  loc_6A344A: LitVar_Missing var_130
  loc_6A344D: LitVar_Missing var_110
  loc_6A3450: LitVar_Missing var_F0
  loc_6A3453: LitVar_Missing var_D0
  loc_6A3456: LitVar_Missing var_B0
  loc_6A3459: LitStr "Hasta"
  loc_6A345C: FStStrCopy var_90
  loc_6A345F: FLdRfVar var_90
  loc_6A3462: LitI4 7
  loc_6A3467: PopTmpLdAdStr var_8C
  loc_6A346A: LitI2_Byte &H4D
  loc_6A346C: PopTmpLdAd2 var_88
  loc_6A346F: ImpAdLdRf MemVar_74C7D0
  loc_6A3472: NewIfNullPr clsMsg
  loc_6A3475: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A347A: ILdRf var_1D4
  loc_6A347D: FLdPrThis
  loc_6A347E: VCallAd Control_ID_Label2
  loc_6A3481: FStAdFunc var_1D8
  loc_6A3484: FLdPr var_1D8
  loc_6A3487: Me.Caption = from_stack_1
  loc_6A348C: FFreeStr var_90 = ""
  loc_6A3493: FFree1Ad var_1D8
  loc_6A3496: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A34AD: FLdRfVar var_1D4
  loc_6A34B0: LitVar_Missing var_1D0
  loc_6A34B3: LitVar_Missing var_1B0
  loc_6A34B6: LitVar_Missing var_190
  loc_6A34B9: LitVar_Missing var_170
  loc_6A34BC: LitVar_Missing var_150
  loc_6A34BF: LitVar_Missing var_130
  loc_6A34C2: LitVar_Missing var_110
  loc_6A34C5: LitVar_Missing var_F0
  loc_6A34C8: LitVar_Missing var_D0
  loc_6A34CB: LitVar_Missing var_B0
  loc_6A34CE: LitStr "A&ctualiza"
  loc_6A34D1: FStStrCopy var_90
  loc_6A34D4: FLdRfVar var_90
  loc_6A34D7: LitI4 8
  loc_6A34DC: PopTmpLdAdStr var_8C
  loc_6A34DF: LitI2_Byte &H4D
  loc_6A34E1: PopTmpLdAd2 var_88
  loc_6A34E4: ImpAdLdRf MemVar_74C7D0
  loc_6A34E7: NewIfNullPr clsMsg
  loc_6A34EA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A34EF: ILdRf var_1D4
  loc_6A34F2: FLdPrThis
  loc_6A34F3: VCallAd Control_ID_cmdActualiza
  loc_6A34F6: FStAdFunc var_1D8
  loc_6A34F9: FLdPr var_1D8
  loc_6A34FC: Me.Caption = from_stack_1
  loc_6A3501: FFreeStr var_90 = ""
  loc_6A3508: FFree1Ad var_1D8
  loc_6A350B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A3522: FLdRfVar var_1D4
  loc_6A3525: LitVar_Missing var_1D0
  loc_6A3528: LitVar_Missing var_1B0
  loc_6A352B: LitVar_Missing var_190
  loc_6A352E: LitVar_Missing var_170
  loc_6A3531: LitVar_Missing var_150
  loc_6A3534: LitVar_Missing var_130
  loc_6A3537: LitVar_Missing var_110
  loc_6A353A: LitVar_Missing var_F0
  loc_6A353D: LitVar_Missing var_D0
  loc_6A3540: LitVar_Missing var_B0
  loc_6A3543: LitStr "&Imprimir"
  loc_6A3546: FStStrCopy var_90
  loc_6A3549: FLdRfVar var_90
  loc_6A354C: LitI4 9
  loc_6A3551: PopTmpLdAdStr var_8C
  loc_6A3554: LitI2_Byte &H4D
  loc_6A3556: PopTmpLdAd2 var_88
  loc_6A3559: ImpAdLdRf MemVar_74C7D0
  loc_6A355C: NewIfNullPr clsMsg
  loc_6A355F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3564: ILdRf var_1D4
  loc_6A3567: FLdPrThis
  loc_6A3568: VCallAd Control_ID_cmdImprimir
  loc_6A356B: FStAdFunc var_1D8
  loc_6A356E: FLdPr var_1D8
  loc_6A3571: Me.Caption = from_stack_1
  loc_6A3576: FFreeStr var_90 = ""
  loc_6A357D: FFree1Ad var_1D8
  loc_6A3580: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A3597: FLdRfVar var_1D4
  loc_6A359A: LitVar_Missing var_1D0
  loc_6A359D: LitVar_Missing var_1B0
  loc_6A35A0: LitVar_Missing var_190
  loc_6A35A3: LitVar_Missing var_170
  loc_6A35A6: LitVar_Missing var_150
  loc_6A35A9: LitVar_Missing var_130
  loc_6A35AC: LitVar_Missing var_110
  loc_6A35AF: LitVar_Missing var_F0
  loc_6A35B2: LitVar_Missing var_D0
  loc_6A35B5: LitVar_Missing var_B0
  loc_6A35B8: LitStr "&Aceptar"
  loc_6A35BB: FStStrCopy var_90
  loc_6A35BE: FLdRfVar var_90
  loc_6A35C1: LitI4 &HA
  loc_6A35C6: PopTmpLdAdStr var_8C
  loc_6A35C9: LitI2_Byte &H4D
  loc_6A35CB: PopTmpLdAd2 var_88
  loc_6A35CE: ImpAdLdRf MemVar_74C7D0
  loc_6A35D1: NewIfNullPr clsMsg
  loc_6A35D4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A35D9: ILdRf var_1D4
  loc_6A35DC: FLdPrThis
  loc_6A35DD: VCallAd Control_ID_cmdAceptar
  loc_6A35E0: FStAdFunc var_1D8
  loc_6A35E3: FLdPr var_1D8
  loc_6A35E6: Me.Caption = from_stack_1
  loc_6A35EB: FFreeStr var_90 = ""
  loc_6A35F2: FFree1Ad var_1D8
  loc_6A35F5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A360C: ILdRf Me
  loc_6A360F: CastAd
  loc_6A3612: FStAdFunc var_1D8
  loc_6A3615: FLdRfVar var_1D8
  loc_6A3618: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6A361D: FFree1Ad var_1D8
  loc_6A3620: FLdRfVar var_B0
  loc_6A3623: ImpAdCallFPR4  = Date
  loc_6A3628: LitI4 1
  loc_6A362D: LitI4 1
  loc_6A3632: LitVarStr var_A0, "dd/mm/yyyy"
  loc_6A3637: FStVarCopyObj var_D0
  loc_6A363A: FLdRfVar var_D0
  loc_6A363D: FLdRfVar var_B0
  loc_6A3640: ImpAdCallI2 Format$(, )
  loc_6A3645: CVarStr var_F0
  loc_6A3648: PopAdLdVar
  loc_6A3649: FLdPrThis
  loc_6A364A: VCallAd Control_ID_txtFechaDesde
  loc_6A364D: FStAdFunc var_1D8
  loc_6A3650: FLdPr var_1D8
  loc_6A3653: LateIdSt
  loc_6A3658: FFree1Ad var_1D8
  loc_6A365B: FFreeVar var_B0 = "": var_D0 = ""
  loc_6A3664: FLdRfVar var_B0
  loc_6A3667: ImpAdCallFPR4  = Date
  loc_6A366C: LitI4 1
  loc_6A3671: LitI4 1
  loc_6A3676: LitVarStr var_A0, "dd/mm/yyyy"
  loc_6A367B: FStVarCopyObj var_D0
  loc_6A367E: FLdRfVar var_D0
  loc_6A3681: FLdRfVar var_B0
  loc_6A3684: ImpAdCallI2 Format$(, )
  loc_6A3689: CVarStr var_F0
  loc_6A368C: PopAdLdVar
  loc_6A368D: FLdPrThis
  loc_6A368E: VCallAd Control_ID_txtFechaHasta
  loc_6A3691: FStAdFunc var_1D8
  loc_6A3694: FLdPr var_1D8
  loc_6A3697: LateIdSt
  loc_6A369C: FFree1Ad var_1D8
  loc_6A369F: FFreeVar var_B0 = "": var_D0 = ""
  loc_6A36A8: LitI2_Byte 0
  loc_6A36AA: FLdPr Me
  loc_6A36AD: MemStI2 global_60
  loc_6A36B0: FLdPrThis
  loc_6A36B1: VCallAd Control_ID_cboOpcion
  loc_6A36B4: FStAdFunc var_1D8
  loc_6A36B7: FLdPr var_1D8
  loc_6A36BA: Me.Clear
  loc_6A36BF: FFree1Ad var_1D8
  loc_6A36C2: FLdRfVar var_1D4
  loc_6A36C5: LitVar_Missing var_1D0
  loc_6A36C8: LitVar_Missing var_1B0
  loc_6A36CB: LitVar_Missing var_190
  loc_6A36CE: LitVar_Missing var_170
  loc_6A36D1: LitVar_Missing var_150
  loc_6A36D4: LitVar_Missing var_130
  loc_6A36D7: LitVar_Missing var_110
  loc_6A36DA: LitVar_Missing var_F0
  loc_6A36DD: LitVar_Missing var_D0
  loc_6A36E0: LitVar_Missing var_B0
  loc_6A36E3: LitStr "Volumen"
  loc_6A36E6: FStStrCopy var_90
  loc_6A36E9: FLdRfVar var_90
  loc_6A36EC: LitI4 &HB
  loc_6A36F1: PopTmpLdAdStr var_8C
  loc_6A36F4: LitI2_Byte &H4D
  loc_6A36F6: PopTmpLdAd2 var_88
  loc_6A36F9: ImpAdLdRf MemVar_74C7D0
  loc_6A36FC: NewIfNullPr clsMsg
  loc_6A36FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3704: LitVar_Missing var_1EC
  loc_6A3707: PopAdLdVar
  loc_6A3708: ILdRf var_1D4
  loc_6A370B: FLdPrThis
  loc_6A370C: VCallAd Control_ID_cboOpcion
  loc_6A370F: FStAdFunc var_1D8
  loc_6A3712: FLdPr var_1D8
  loc_6A3715: Me.AddItem from_stack_1, from_stack_2
  loc_6A371A: FFreeStr var_90 = ""
  loc_6A3721: FFree1Ad var_1D8
  loc_6A3724: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A373B: FLdRfVar var_1D4
  loc_6A373E: LitVar_Missing var_1D0
  loc_6A3741: LitVar_Missing var_1B0
  loc_6A3744: LitVar_Missing var_190
  loc_6A3747: LitVar_Missing var_170
  loc_6A374A: LitVar_Missing var_150
  loc_6A374D: LitVar_Missing var_130
  loc_6A3750: LitVar_Missing var_110
  loc_6A3753: LitVar_Missing var_F0
  loc_6A3756: LitVar_Missing var_D0
  loc_6A3759: LitVar_Missing var_B0
  loc_6A375C: LitStr "Monto"
  loc_6A375F: FStStrCopy var_90
  loc_6A3762: FLdRfVar var_90
  loc_6A3765: LitI4 &HC
  loc_6A376A: PopTmpLdAdStr var_8C
  loc_6A376D: LitI2_Byte &H4D
  loc_6A376F: PopTmpLdAd2 var_88
  loc_6A3772: ImpAdLdRf MemVar_74C7D0
  loc_6A3775: NewIfNullPr clsMsg
  loc_6A3778: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A377D: LitVar_Missing var_1EC
  loc_6A3780: PopAdLdVar
  loc_6A3781: ILdRf var_1D4
  loc_6A3784: FLdPrThis
  loc_6A3785: VCallAd Control_ID_cboOpcion
  loc_6A3788: FStAdFunc var_1D8
  loc_6A378B: FLdPr var_1D8
  loc_6A378E: Me.AddItem from_stack_1, from_stack_2
  loc_6A3793: FFreeStr var_90 = ""
  loc_6A379A: FFree1Ad var_1D8
  loc_6A379D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A37B4: FLdRfVar var_1D4
  loc_6A37B7: LitVar_Missing var_1D0
  loc_6A37BA: LitVar_Missing var_1B0
  loc_6A37BD: LitVar_Missing var_190
  loc_6A37C0: LitVar_Missing var_170
  loc_6A37C3: LitVar_Missing var_150
  loc_6A37C6: LitVar_Missing var_130
  loc_6A37C9: LitVar_Missing var_110
  loc_6A37CC: LitVar_Missing var_F0
  loc_6A37CF: LitVar_Missing var_D0
  loc_6A37D2: LitVar_Missing var_B0
  loc_6A37D5: LitStr "Despachos"
  loc_6A37D8: FStStrCopy var_90
  loc_6A37DB: FLdRfVar var_90
  loc_6A37DE: LitI4 &HD
  loc_6A37E3: PopTmpLdAdStr var_8C
  loc_6A37E6: LitI2_Byte &H4D
  loc_6A37E8: PopTmpLdAd2 var_88
  loc_6A37EB: ImpAdLdRf MemVar_74C7D0
  loc_6A37EE: NewIfNullPr clsMsg
  loc_6A37F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A37F6: LitVar_Missing var_1EC
  loc_6A37F9: PopAdLdVar
  loc_6A37FA: ILdRf var_1D4
  loc_6A37FD: FLdPrThis
  loc_6A37FE: VCallAd Control_ID_cboOpcion
  loc_6A3801: FStAdFunc var_1D8
  loc_6A3804: FLdPr var_1D8
  loc_6A3807: Me.AddItem from_stack_1, from_stack_2
  loc_6A380C: FFreeStr var_90 = ""
  loc_6A3813: FFree1Ad var_1D8
  loc_6A3816: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6A382D: LitI2_Byte 0
  loc_6A382F: FLdPrThis
  loc_6A3830: VCallAd Control_ID_cboOpcion
  loc_6A3833: FStAdFunc var_1D8
  loc_6A3836: FLdPr var_1D8
  loc_6A3839: Me.ListIndex = from_stack_1
  loc_6A383E: FFree1Ad var_1D8
  loc_6A3841: LitI2_Byte &HFF
  loc_6A3843: FLdPr Me
  loc_6A3846: MemStI2 global_60
  loc_6A3849: LitI2_Byte 0
  loc_6A384B: FLdPr Me
  loc_6A384E: MemStI2 global_62
  loc_6A3851: ExitProcHresult
End Sub

Private Sub Form_Activate() '5F1BC4
  'Data Table: 43090C
  loc_5F1B2C: FLdPr Me
  loc_5F1B2F: MemLdI2 global_62
  loc_5F1B32: BranchF loc_5F1B36
  loc_5F1B35: ExitProcHresult
  loc_5F1B36: LitI2_Byte &HFF
  loc_5F1B38: FLdPr Me
  loc_5F1B3B: MemStI2 global_62
  loc_5F1B3E: LitI2_Byte &HFF
  loc_5F1B40: FLdRfVar var_8C
  loc_5F1B43: LitI2_Byte 0
  loc_5F1B45: FLdPrThis
  loc_5F1B46: VCallAd Control_ID_optGrafico
  loc_5F1B49: FStAdFunc var_88
  loc_5F1B4C: FLdPr var_88
  loc_5F1B4F: Set from_stack_2 = Me(from_stack_1)
  loc_5F1B54: FLdPr var_8C
  loc_5F1B57: Me.Value = from_stack_1b
  loc_5F1B5C: FFreeAd var_88 = ""
  loc_5F1B63: LitI2_Byte 8
  loc_5F1B65: CR8I2
  loc_5F1B66: PopFPR4
  loc_5F1B67: FLdRfVar var_A0
  loc_5F1B6A: FLdPrThis
  loc_5F1B6B: VCallAd Control_ID_Grafico
  loc_5F1B6E: FStAdFunc var_88
  loc_5F1B71: FLdPr var_88
  loc_5F1B74: LateIdLdVar var_9C DispID_38 0
  loc_5F1B7B: CastAdVar Me
  loc_5F1B7F: FStAdFunc var_8C
  loc_5F1B82: FLdPr var_8C
  loc_5F1B85:  = Me.IVcLegend.VtFont
  loc_5F1B8A: FLdPr var_A0
  loc_5F1B8D:  = Me.Size = from_stack_1s
  loc_5F1B92: FFreeAd var_88 = "": var_8C = ""
  loc_5F1B9B: FFree1Var var_9C = ""
  loc_5F1B9E: LitVarI4
  loc_5F1BA6: PopAdLdVar
  loc_5F1BA7: FLdPrThis
  loc_5F1BA8: VCallAd Control_ID_Grafico
  loc_5F1BAB: FStAdFunc var_88
  loc_5F1BAE: FLdPr var_88
  loc_5F1BB1: LateIdSt
  loc_5F1BB6: FFree1Ad var_88
  loc_5F1BB9: LitI2_Byte 0
  loc_5F1BBB: PopTmpLdAd2 var_B2
  loc_5F1BBE: Call optGrafico_Click()
  loc_5F1BC3: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5D2394
  'Data Table: 43090C
  loc_5D237C: ILdRf Me
  loc_5D237F: FStAdNoPop
  loc_5D2383: ImpAdLdRf MemVar_7520D4
  loc_5D2386: NewIfNullPr Global
  loc_5D2389: Global.Unload from_stack_1
  loc_5D238E: FFree1Ad var_88
  loc_5D2391: ExitProcHresult
End Sub

Private Function Proc_63_11_5D832C() '5D832C
  'Data Table: 43090C
  loc_5D82F8: LitI4 0
  loc_5D82FD: LitI4 0
  loc_5D8302: FLdPr Me
  loc_5D8305: MemLdRfVar from_stack_1.global_56
  loc_5D8308: Redim
  loc_5D8312: LitI2_Byte 0
  loc_5D8314: PopTmpLdAd2 var_88
  loc_5D8317: from_stack_2v = Proc_63_19_5E872C(from_stack_1v)
  loc_5D831C: from_stack_1v = Proc_63_16_62DDC8()
  loc_5D8321: LitI2_Byte &HFF
  loc_5D8323: FStI2 var_86
  loc_5D8326: ExitProcCbHresult
End Function

Private Function Proc_63_12_6C67E8() '6C67E8
  'Data Table: 43090C
  loc_6C5F30: FLdRfVar var_8E
  loc_6C5F33: from_stack_1v = Proc_63_13_5E28E0()
  loc_6C5F38: FLdI2 var_8E
  loc_6C5F3B: FStI2 var_90
  loc_6C5F3E: FLdI2 var_90
  loc_6C5F41: LitI2_Byte 1
  loc_6C5F43: EqI2
  loc_6C5F44: BranchF loc_6C632B
  loc_6C5F47: FLdPr Me
  loc_6C5F4A: VCallAd Control_ID_Grafico
  loc_6C5F4D: FStAdFunc var_94
  loc_6C5F50: LitVarI4
  loc_6C5F58: PopAdLdVar
  loc_6C5F59: FLdPr var_94
  loc_6C5F5C: LateIdSt
  loc_6C5F61: LitI2_Byte &HFF
  loc_6C5F63: FLdRfVar var_BC
  loc_6C5F66: FLdPr var_94
  loc_6C5F69: LateIdLdVar var_B4 DispID_38 0
  loc_6C5F70: CastAdVar Me
  loc_6C5F74: FStAdFunc var_B8
  loc_6C5F77: FLdPr var_B8
  loc_6C5F7A:  = Me.IVcLegend.Location
  loc_6C5F7F: FLdPr var_BC
  loc_6C5F82:  = Me.Visible = from_stack_1b
  loc_6C5F87: FFreeAd var_B8 = ""
  loc_6C5F8E: FFree1Var var_B4 = ""
  loc_6C5F91: LitI4 7
  loc_6C5F96: FLdRfVar var_BC
  loc_6C5F99: FLdPr var_94
  loc_6C5F9C: LateIdLdVar var_B4 DispID_38 0
  loc_6C5FA3: CastAdVar Me
  loc_6C5FA7: FStAdFunc var_B8
  loc_6C5FAA: FLdPr var_B8
  loc_6C5FAD:  = Me.IVcLegend.Location
  loc_6C5FB2: FLdPr var_BC
  loc_6C5FB5:  = Me.LocationType = from_stack_1v
  loc_6C5FBA: FFreeAd var_B8 = ""
  loc_6C5FC1: FFree1Var var_B4 = ""
  loc_6C5FC4: LitI4 3
  loc_6C5FC9: FLdRfVar var_BC
  loc_6C5FCC: FLdPr var_94
  loc_6C5FCF: LateIdLdVar var_B4 DispID_38 0
  loc_6C5FD6: CastAdVar Me
  loc_6C5FDA: FStAdFunc var_B8
  loc_6C5FDD: FLdPr var_B8
  loc_6C5FE0:  = Me.IVcLegend.TextLayout
  loc_6C5FE5: FLdPr var_BC
  loc_6C5FE8:  = Me.HorzAlignment = from_stack_1v
  loc_6C5FED: FFreeAd var_B8 = ""
  loc_6C5FF4: FFree1Var var_B4 = ""
  loc_6C5FF7: LitI4 0
  loc_6C5FFC: FLdRfVar var_BC
  loc_6C5FFF: FLdPr var_94
  loc_6C6002: LateIdLdVar var_B4 DispID_38 0
  loc_6C6009: CastAdVar Me
  loc_6C600D: FStAdFunc var_B8
  loc_6C6010: FLdPr var_B8
  loc_6C6013:  = Me.IVcLegend.TextLayout
  loc_6C6018: FLdPr var_BC
  loc_6C601B:  = Me.VertAlignment = from_stack_1v
  loc_6C6020: FFreeAd var_B8 = ""
  loc_6C6027: FFree1Var var_B4 = ""
  loc_6C602A: LitI4 1
  loc_6C602F: FLdRfVar var_BC
  loc_6C6032: FLdPr var_94
  loc_6C6035: LateIdLdVar var_B4 DispID_38 0
  loc_6C603C: CastAdVar Me
  loc_6C6040: FStAdFunc var_B8
  loc_6C6043: FLdPr var_B8
  loc_6C6046:  = Me.IVcLegend.TextLayout
  loc_6C604B: FLdPr var_BC
  loc_6C604E:  = Me.Orientation = from_stack_1v
  loc_6C6053: FFreeAd var_B8 = ""
  loc_6C605A: FFree1Var var_B4 = ""
  loc_6C605D: LitI2_Byte &HFF
  loc_6C605F: FLdRfVar var_BC
  loc_6C6062: FLdPr var_94
  loc_6C6065: LateIdLdVar var_B4 DispID_38 0
  loc_6C606C: CastAdVar Me
  loc_6C6070: FStAdFunc var_B8
  loc_6C6073: FLdPr var_B8
  loc_6C6076:  = Me.IVcLegend.TextLayout
  loc_6C607B: FLdPr var_BC
  loc_6C607E:  = Me.WordWrap = from_stack_1b
  loc_6C6083: FFreeAd var_B8 = ""
  loc_6C608A: FFree1Var var_B4 = ""
  loc_6C608D: LitI2_Byte 7
  loc_6C608F: CR8I2
  loc_6C6090: PopFPR4
  loc_6C6091: FLdRfVar var_BC
  loc_6C6094: FLdPr var_94
  loc_6C6097: LateIdLdVar var_B4 DispID_38 0
  loc_6C609E: CastAdVar Me
  loc_6C60A2: FStAdFunc var_B8
  loc_6C60A5: FLdPr var_B8
  loc_6C60A8:  = Me.IVcLegend.VtFont
  loc_6C60AD: FLdPr var_BC
  loc_6C60B0:  = Me.Size = from_stack_1s
  loc_6C60B5: FFreeAd var_B8 = ""
  loc_6C60BC: FFree1Var var_B4 = ""
  loc_6C60BF: FLdPr Me
  loc_6C60C2: MemLdStr global_56
  loc_6C60C5: LitI2_Byte 1
  loc_6C60C7: FnUBound
  loc_6C60C9: LitI4 1
  loc_6C60CE: AddI4
  loc_6C60CF: CI2I4
  loc_6C60D0: CVarI2 var_A4
  loc_6C60D3: PopAdLdVar
  loc_6C60D4: FLdPr var_94
  loc_6C60D7: LateIdSt
  loc_6C60DC: LitI2_Byte &H46
  loc_6C60DE: CR8I2
  loc_6C60DF: PopFPR4
  loc_6C60E0: FLdPr var_94
  loc_6C60E3: LateIdLdVar var_B4 DispID_40 0
  loc_6C60EA: CastAdVar Me
  loc_6C60EE: FStAdFunc var_B8
  loc_6C60F1: FLdPr var_B8
  loc_6C60F4:  = Me.IVcPlot.WidthToHeightRatio = from_stack_1s
  loc_6C60F9: FFree1Ad var_B8
  loc_6C60FC: FFree1Var var_B4 = ""
  loc_6C60FF: LitVarI2 var_A4, 1
  loc_6C6104: PopAdLdVar
  loc_6C6105: FLdPr var_94
  loc_6C6108: LateIdSt
  loc_6C610D: LitVarI2 var_A4, 1
  loc_6C6112: PopAdLdVar
  loc_6C6113: FLdPr var_94
  loc_6C6116: LateIdSt
  loc_6C611B: LitVarStr var_A4, vbNullString
  loc_6C6120: PopAdLdVar
  loc_6C6121: FLdPr var_94
  loc_6C6124: LateIdSt
  loc_6C6129: LitI2_Byte 0
  loc_6C612B: CUI1I2
  loc_6C612D: FLdRfVar var_8A
  loc_6C6130: FLdPr Me
  loc_6C6133: MemLdStr global_56
  loc_6C6136: LitI2_Byte 1
  loc_6C6138: FnUBound
  loc_6C613A: CUI1I4
  loc_6C613C: ForUI1 var_C0
  loc_6C6142: FLdUI1
  loc_6C6146: CI2UI1
  loc_6C6148: LitI2_Byte 1
  loc_6C614A: AddI2
  loc_6C614B: CVarI2 var_A4
  loc_6C614E: PopAdLdVar
  loc_6C614F: FLdPr var_94
  loc_6C6152: LateIdSt
  loc_6C6157: FLdUI1
  loc_6C615B: CI4UI1
  loc_6C615C: FLdPr Me
  loc_6C615F: MemLdStr global_56
  loc_6C6162: AryLock
  loc_6C6165: Ary1LdPr
  loc_6C6166: MemLdRfVar from_stack_1.global_0
  loc_6C6169: CDargRef
  loc_6C616D: FLdPr var_94
  loc_6C6170: LateIdSt
  loc_6C6175: AryUnlock
  loc_6C6178: FLdRfVar var_8E
  loc_6C617B: FLdPrThis
  loc_6C617C: VCallAd Control_ID_cboOpcion
  loc_6C617F: FStAdFunc var_B8
  loc_6C6182: FLdPr var_B8
  loc_6C6185:  = Me.ListIndex
  loc_6C618A: FLdI2 var_8E
  loc_6C618D: FStI2 var_C6
  loc_6C6190: FFree1Ad var_B8
  loc_6C6193: FLdI2 var_C6
  loc_6C6196: LitI2_Byte 0
  loc_6C6198: EqI2
  loc_6C6199: BranchF loc_6C6216
  loc_6C619C: LitI4 &H18
  loc_6C61A1: FLdUI1
  loc_6C61A5: CI4UI1
  loc_6C61A6: FLdPr Me
  loc_6C61A9: MemLdStr global_56
  loc_6C61AC: Ary1LdPr
  loc_6C61AD: MemLdRfVar from_stack_1.global_8
  loc_6C61B0: AryInRecLdPr
  loc_6C61B6: MemLdFPR4 global_0
  loc_6C61B9: CStrR4
  loc_6C61BB: CVarStr var_B4
  loc_6C61BE: PopAdLdVar
  loc_6C61BF: FLdPr var_94
  loc_6C61C2: LateIdSt
  loc_6C61C7: FFree1Var var_B4 = ""
  loc_6C61CA: ImpAdLdI4 MemVar_74BEBC
  loc_6C61CD: FLdRfVar var_CC
  loc_6C61D0: FLdRfVar var_BC
  loc_6C61D3: LitVarI2 var_A4, 1
  loc_6C61D8: PopAdLdVar
  loc_6C61D9: LitI4 1
  loc_6C61DE: FLdPr var_94
  loc_6C61E1: LateIdLdVar var_B4 DispID_40 0
  loc_6C61E8: CastAdVar Me
  loc_6C61EC: FStAdFunc var_B8
  loc_6C61EF: FLdPr var_B8
  loc_6C61F2: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C61F7: FLdPr var_BC
  loc_6C61FA:  = Me.AxisTitle
  loc_6C61FF: FLdPr var_CC
  loc_6C6202:  = Me._Text = from_stack_1v
  loc_6C6207: FFreeAd var_B8 = "": var_BC = ""
  loc_6C6210: FFree1Var var_B4 = ""
  loc_6C6213: Branch loc_6C6319
  loc_6C6216: FLdI2 var_C6
  loc_6C6219: LitI2_Byte 1
  loc_6C621B: EqI2
  loc_6C621C: BranchF loc_6C6299
  loc_6C621F: LitI4 &H18
  loc_6C6224: FLdUI1
  loc_6C6228: CI4UI1
  loc_6C6229: FLdPr Me
  loc_6C622C: MemLdStr global_56
  loc_6C622F: Ary1LdPr
  loc_6C6230: MemLdRfVar from_stack_1.global_108
  loc_6C6233: AryInRecLdPr
  loc_6C6239: MemLdFPR4 global_0
  loc_6C623C: CStrR4
  loc_6C623E: CVarStr var_B4
  loc_6C6241: PopAdLdVar
  loc_6C6242: FLdPr var_94
  loc_6C6245: LateIdSt
  loc_6C624A: FFree1Var var_B4 = ""
  loc_6C624D: ImpAdLdI4 MemVar_74BECC
  loc_6C6250: FLdRfVar var_CC
  loc_6C6253: FLdRfVar var_BC
  loc_6C6256: LitVarI2 var_A4, 1
  loc_6C625B: PopAdLdVar
  loc_6C625C: LitI4 1
  loc_6C6261: FLdPr var_94
  loc_6C6264: LateIdLdVar var_B4 DispID_40 0
  loc_6C626B: CastAdVar Me
  loc_6C626F: FStAdFunc var_B8
  loc_6C6272: FLdPr var_B8
  loc_6C6275: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C627A: FLdPr var_BC
  loc_6C627D:  = Me.AxisTitle
  loc_6C6282: FLdPr var_CC
  loc_6C6285:  = Me._Text = from_stack_1v
  loc_6C628A: FFreeAd var_B8 = "": var_BC = ""
  loc_6C6293: FFree1Var var_B4 = ""
  loc_6C6296: Branch loc_6C6319
  loc_6C6299: FLdI2 var_C6
  loc_6C629C: LitI2_Byte 2
  loc_6C629E: EqI2
  loc_6C629F: BranchF loc_6C6319
  loc_6C62A2: LitI4 &H18
  loc_6C62A7: FLdUI1
  loc_6C62AB: CI4UI1
  loc_6C62AC: FLdPr Me
  loc_6C62AF: MemLdStr global_56
  loc_6C62B2: Ary1LdPr
  loc_6C62B3: MemLdRfVar from_stack_1.global_208
  loc_6C62B6: AryInRecLdPr
  loc_6C62BC: MemLdI2 global_0
  loc_6C62BF: CStrUI1
  loc_6C62C1: CVarStr var_B4
  loc_6C62C4: PopAdLdVar
  loc_6C62C5: FLdPr var_94
  loc_6C62C8: LateIdSt
  loc_6C62CD: FFree1Var var_B4 = ""
  loc_6C62D0: LitStr "Despachos"
  loc_6C62D3: FLdRfVar var_CC
  loc_6C62D6: FLdRfVar var_BC
  loc_6C62D9: LitVarI2 var_A4, 1
  loc_6C62DE: PopAdLdVar
  loc_6C62DF: LitI4 1
  loc_6C62E4: FLdPr var_94
  loc_6C62E7: LateIdLdVar var_B4 DispID_40 0
  loc_6C62EE: CastAdVar Me
  loc_6C62F2: FStAdFunc var_B8
  loc_6C62F5: FLdPr var_B8
  loc_6C62F8: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C62FD: FLdPr var_BC
  loc_6C6300:  = Me.AxisTitle
  loc_6C6305: FLdPr var_CC
  loc_6C6308:  = Me._Text = from_stack_1v
  loc_6C630D: FFreeAd var_B8 = "": var_BC = ""
  loc_6C6316: FFree1Var var_B4 = ""
  loc_6C6319: FLdRfVar var_8A
  loc_6C631C: NextUI1
  loc_6C6322: LitNothing
  loc_6C6324: FStAd var_94 
  loc_6C6328: Branch loc_6C67E4
  loc_6C632B: FLdI2 var_90
  loc_6C632E: LitI2_Byte 2
  loc_6C6330: EqI2
  loc_6C6331: BranchF loc_6C67E4
  loc_6C6334: FLdPr Me
  loc_6C6337: VCallAd Control_ID_Grafico
  loc_6C633A: FStAdFunc var_D0
  loc_6C633D: LitVarI4
  loc_6C6345: PopAdLdVar
  loc_6C6346: FLdPr var_D0
  loc_6C6349: LateIdSt
  loc_6C634E: LitI2_Byte &HFF
  loc_6C6350: FLdRfVar var_BC
  loc_6C6353: FLdPr var_D0
  loc_6C6356: LateIdLdVar var_B4 DispID_38 0
  loc_6C635D: CastAdVar Me
  loc_6C6361: FStAdFunc var_B8
  loc_6C6364: FLdPr var_B8
  loc_6C6367:  = Me.IVcLegend.Location
  loc_6C636C: FLdPr var_BC
  loc_6C636F:  = Me.Visible = from_stack_1b
  loc_6C6374: FFreeAd var_B8 = ""
  loc_6C637B: FFree1Var var_B4 = ""
  loc_6C637E: LitI4 7
  loc_6C6383: FLdRfVar var_BC
  loc_6C6386: FLdPr var_D0
  loc_6C6389: LateIdLdVar var_B4 DispID_38 0
  loc_6C6390: CastAdVar Me
  loc_6C6394: FStAdFunc var_B8
  loc_6C6397: FLdPr var_B8
  loc_6C639A:  = Me.IVcLegend.Location
  loc_6C639F: FLdPr var_BC
  loc_6C63A2:  = Me.LocationType = from_stack_1v
  loc_6C63A7: FFreeAd var_B8 = ""
  loc_6C63AE: FFree1Var var_B4 = ""
  loc_6C63B1: LitI4 3
  loc_6C63B6: FLdRfVar var_BC
  loc_6C63B9: FLdPr var_D0
  loc_6C63BC: LateIdLdVar var_B4 DispID_38 0
  loc_6C63C3: CastAdVar Me
  loc_6C63C7: FStAdFunc var_B8
  loc_6C63CA: FLdPr var_B8
  loc_6C63CD:  = Me.IVcLegend.TextLayout
  loc_6C63D2: FLdPr var_BC
  loc_6C63D5:  = Me.HorzAlignment = from_stack_1v
  loc_6C63DA: FFreeAd var_B8 = ""
  loc_6C63E1: FFree1Var var_B4 = ""
  loc_6C63E4: LitI4 0
  loc_6C63E9: FLdRfVar var_BC
  loc_6C63EC: FLdPr var_D0
  loc_6C63EF: LateIdLdVar var_B4 DispID_38 0
  loc_6C63F6: CastAdVar Me
  loc_6C63FA: FStAdFunc var_B8
  loc_6C63FD: FLdPr var_B8
  loc_6C6400:  = Me.IVcLegend.TextLayout
  loc_6C6405: FLdPr var_BC
  loc_6C6408:  = Me.VertAlignment = from_stack_1v
  loc_6C640D: FFreeAd var_B8 = ""
  loc_6C6414: FFree1Var var_B4 = ""
  loc_6C6417: LitI4 1
  loc_6C641C: FLdRfVar var_BC
  loc_6C641F: FLdPr var_D0
  loc_6C6422: LateIdLdVar var_B4 DispID_38 0
  loc_6C6429: CastAdVar Me
  loc_6C642D: FStAdFunc var_B8
  loc_6C6430: FLdPr var_B8
  loc_6C6433:  = Me.IVcLegend.TextLayout
  loc_6C6438: FLdPr var_BC
  loc_6C643B:  = Me.Orientation = from_stack_1v
  loc_6C6440: FFreeAd var_B8 = ""
  loc_6C6447: FFree1Var var_B4 = ""
  loc_6C644A: LitI2_Byte &HFF
  loc_6C644C: FLdRfVar var_BC
  loc_6C644F: FLdPr var_D0
  loc_6C6452: LateIdLdVar var_B4 DispID_38 0
  loc_6C6459: CastAdVar Me
  loc_6C645D: FStAdFunc var_B8
  loc_6C6460: FLdPr var_B8
  loc_6C6463:  = Me.IVcLegend.TextLayout
  loc_6C6468: FLdPr var_BC
  loc_6C646B:  = Me.WordWrap = from_stack_1b
  loc_6C6470: FFreeAd var_B8 = ""
  loc_6C6477: FFree1Var var_B4 = ""
  loc_6C647A: LitI2_Byte 8
  loc_6C647C: CR8I2
  loc_6C647D: PopFPR4
  loc_6C647E: FLdRfVar var_BC
  loc_6C6481: FLdPr var_D0
  loc_6C6484: LateIdLdVar var_B4 DispID_38 0
  loc_6C648B: CastAdVar Me
  loc_6C648F: FStAdFunc var_B8
  loc_6C6492: FLdPr var_B8
  loc_6C6495:  = Me.IVcLegend.VtFont
  loc_6C649A: FLdPr var_BC
  loc_6C649D:  = Me.Size = from_stack_1s
  loc_6C64A2: FFreeAd var_B8 = ""
  loc_6C64A9: FFree1Var var_B4 = ""
  loc_6C64AC: FLdPr Me
  loc_6C64AF: MemLdStr global_56
  loc_6C64B2: LitI2_Byte 1
  loc_6C64B4: FnUBound
  loc_6C64B6: LitI4 1
  loc_6C64BB: AddI4
  loc_6C64BC: CI2I4
  loc_6C64BD: CVarI2 var_A4
  loc_6C64C0: PopAdLdVar
  loc_6C64C1: FLdPr var_D0
  loc_6C64C4: LateIdSt
  loc_6C64C9: LitVarI2 var_A4, 24
  loc_6C64CE: PopAdLdVar
  loc_6C64CF: FLdPr var_D0
  loc_6C64D2: LateIdSt
  loc_6C64D7: LitStr "Horas"
  loc_6C64DA: FLdRfVar var_CC
  loc_6C64DD: FLdRfVar var_BC
  loc_6C64E0: LitVarI2 var_A4, 1
  loc_6C64E5: PopAdLdVar
  loc_6C64E6: LitI4 0
  loc_6C64EB: FLdPr var_D0
  loc_6C64EE: LateIdLdVar var_B4 DispID_40 0
  loc_6C64F5: CastAdVar Me
  loc_6C64F9: FStAdFunc var_B8
  loc_6C64FC: FLdPr var_B8
  loc_6C64FF: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C6504: FLdPr var_BC
  loc_6C6507:  = Me.AxisTitle
  loc_6C650C: FLdPr var_CC
  loc_6C650F:  = Me._Text = from_stack_1v
  loc_6C6514: FFreeAd var_B8 = "": var_BC = ""
  loc_6C651D: FFree1Var var_B4 = ""
  loc_6C6520: LitI2_Byte 0
  loc_6C6522: CUI1I2
  loc_6C6524: FLdRfVar var_8C
  loc_6C6527: LitI2_Byte &H17
  loc_6C6529: CUI1I2
  loc_6C652B: ForUI1 var_D4
  loc_6C6531: FLdUI1
  loc_6C6535: CI2UI1
  loc_6C6537: LitI2_Byte 1
  loc_6C6539: AddI2
  loc_6C653A: CVarI2 var_A4
  loc_6C653D: PopAdLdVar
  loc_6C653E: FLdPr var_D0
  loc_6C6541: LateIdSt
  loc_6C6546: FLdUI1
  loc_6C654A: CI2UI1
  loc_6C654C: LitI2_Byte 1
  loc_6C654E: AddI2
  loc_6C654F: CStrUI1
  loc_6C6551: CVarStr var_B4
  loc_6C6554: PopAdLdVar
  loc_6C6555: FLdPr var_D0
  loc_6C6558: LateIdSt
  loc_6C655D: FFree1Var var_B4 = ""
  loc_6C6560: LitI2_Byte 0
  loc_6C6562: CUI1I2
  loc_6C6564: FLdRfVar var_8A
  loc_6C6567: FLdPr Me
  loc_6C656A: MemLdStr global_56
  loc_6C656D: LitI2_Byte 1
  loc_6C656F: FnUBound
  loc_6C6571: CUI1I4
  loc_6C6573: ForUI1 var_D8
  loc_6C6579: FLdUI1
  loc_6C657D: CI2UI1
  loc_6C657F: LitI2_Byte 1
  loc_6C6581: AddI2
  loc_6C6582: CVarI2 var_A4
  loc_6C6585: PopAdLdVar
  loc_6C6586: FLdPr var_D0
  loc_6C6589: LateIdSt
  loc_6C658E: FLdUI1
  loc_6C6592: CI4UI1
  loc_6C6593: FLdPr Me
  loc_6C6596: MemLdStr global_56
  loc_6C6599: AryLock
  loc_6C659C: Ary1LdPr
  loc_6C659D: MemLdRfVar from_stack_1.global_0
  loc_6C65A0: CDargRef
  loc_6C65A4: FLdPr var_D0
  loc_6C65A7: LateIdSt
  loc_6C65AC: AryUnlock
  loc_6C65AF: FLdRfVar var_8E
  loc_6C65B2: FLdPrThis
  loc_6C65B3: VCallAd Control_ID_cboOpcion
  loc_6C65B6: FStAdFunc var_B8
  loc_6C65B9: FLdPr var_B8
  loc_6C65BC:  = Me.ListIndex
  loc_6C65C1: FLdI2 var_8E
  loc_6C65C4: FStI2 var_DA
  loc_6C65C7: FFree1Ad var_B8
  loc_6C65CA: FLdI2 var_DA
  loc_6C65CD: LitI2_Byte 0
  loc_6C65CF: EqI2
  loc_6C65D0: BranchF loc_6C6657
  loc_6C65D3: FLdUI1
  loc_6C65D7: CI4UI1
  loc_6C65D8: FLdUI1
  loc_6C65DC: CI4UI1
  loc_6C65DD: FLdPr Me
  loc_6C65E0: MemLdStr global_56
  loc_6C65E3: Ary1LdPr
  loc_6C65E4: MemLdRfVar from_stack_1.global_8
  loc_6C65E7: AryInRecLdPr
  loc_6C65ED: MemLdFPR4 global_0
  loc_6C65F0: CStrR4
  loc_6C65F2: CVarStr var_B4
  loc_6C65F5: PopAdLdVar
  loc_6C65F6: FLdPr var_D0
  loc_6C65F9: LateIdSt
  loc_6C65FE: FFree1Var var_B4 = ""
  loc_6C6601: ImpAdLdI4 MemVar_74BEBC
  loc_6C6604: LitStr " / h"
  loc_6C6607: ConcatStr
  loc_6C6608: FStStrNoPop var_E0
  loc_6C660B: FLdRfVar var_CC
  loc_6C660E: FLdRfVar var_BC
  loc_6C6611: LitVarI2 var_A4, 1
  loc_6C6616: PopAdLdVar
  loc_6C6617: LitI4 1
  loc_6C661C: FLdPr var_D0
  loc_6C661F: LateIdLdVar var_B4 DispID_40 0
  loc_6C6626: CastAdVar Me
  loc_6C662A: FStAdFunc var_B8
  loc_6C662D: FLdPr var_B8
  loc_6C6630: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C6635: FLdPr var_BC
  loc_6C6638:  = Me.AxisTitle
  loc_6C663D: FLdPr var_CC
  loc_6C6640:  = Me._Text = from_stack_1v
  loc_6C6645: FFree1Str var_E0
  loc_6C6648: FFreeAd var_B8 = "": var_BC = ""
  loc_6C6651: FFree1Var var_B4 = ""
  loc_6C6654: Branch loc_6C67CC
  loc_6C6657: FLdI2 var_DA
  loc_6C665A: LitI2_Byte 1
  loc_6C665C: EqI2
  loc_6C665D: BranchF loc_6C66E4
  loc_6C6660: FLdUI1
  loc_6C6664: CI4UI1
  loc_6C6665: FLdUI1
  loc_6C6669: CI4UI1
  loc_6C666A: FLdPr Me
  loc_6C666D: MemLdStr global_56
  loc_6C6670: Ary1LdPr
  loc_6C6671: MemLdRfVar from_stack_1.global_108
  loc_6C6674: AryInRecLdPr
  loc_6C667A: MemLdFPR4 global_0
  loc_6C667D: CStrR4
  loc_6C667F: CVarStr var_B4
  loc_6C6682: PopAdLdVar
  loc_6C6683: FLdPr var_D0
  loc_6C6686: LateIdSt
  loc_6C668B: FFree1Var var_B4 = ""
  loc_6C668E: ImpAdLdI4 MemVar_74BECC
  loc_6C6691: LitStr " / h"
  loc_6C6694: ConcatStr
  loc_6C6695: FStStrNoPop var_E0
  loc_6C6698: FLdRfVar var_CC
  loc_6C669B: FLdRfVar var_BC
  loc_6C669E: LitVarI2 var_A4, 1
  loc_6C66A3: PopAdLdVar
  loc_6C66A4: LitI4 1
  loc_6C66A9: FLdPr var_D0
  loc_6C66AC: LateIdLdVar var_B4 DispID_40 0
  loc_6C66B3: CastAdVar Me
  loc_6C66B7: FStAdFunc var_B8
  loc_6C66BA: FLdPr var_B8
  loc_6C66BD: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C66C2: FLdPr var_BC
  loc_6C66C5:  = Me.AxisTitle
  loc_6C66CA: FLdPr var_CC
  loc_6C66CD:  = Me._Text = from_stack_1v
  loc_6C66D2: FFree1Str var_E0
  loc_6C66D5: FFreeAd var_B8 = "": var_BC = ""
  loc_6C66DE: FFree1Var var_B4 = ""
  loc_6C66E1: Branch loc_6C67CC
  loc_6C66E4: FLdI2 var_DA
  loc_6C66E7: LitI2_Byte 2
  loc_6C66E9: EqI2
  loc_6C66EA: BranchF loc_6C67CC
  loc_6C66ED: FLdUI1
  loc_6C66F1: CI4UI1
  loc_6C66F2: FLdUI1
  loc_6C66F6: CI4UI1
  loc_6C66F7: FLdPr Me
  loc_6C66FA: MemLdStr global_56
  loc_6C66FD: Ary1LdPr
  loc_6C66FE: MemLdRfVar from_stack_1.global_208
  loc_6C6701: AryInRecLdPr
  loc_6C6707: MemLdI2 global_0
  loc_6C670A: CStrUI1
  loc_6C670C: CVarStr var_B4
  loc_6C670F: PopAdLdVar
  loc_6C6710: FLdPr var_D0
  loc_6C6713: LateIdSt
  loc_6C6718: FFree1Var var_B4 = ""
  loc_6C671B: FLdRfVar var_208
  loc_6C671E: LitVar_Missing var_204
  loc_6C6721: LitVar_Missing var_1E4
  loc_6C6724: LitVar_Missing var_1C4
  loc_6C6727: LitVar_Missing var_1A4
  loc_6C672A: LitVar_Missing var_184
  loc_6C672D: LitVar_Missing var_164
  loc_6C6730: LitVar_Missing var_144
  loc_6C6733: LitVar_Missing var_124
  loc_6C6736: LitVar_Missing var_104
  loc_6C6739: LitVar_Missing var_B4
  loc_6C673C: LitStr "Despachos"
  loc_6C673F: FStStrCopy var_E0
  loc_6C6742: FLdRfVar var_E0
  loc_6C6745: LitI4 &HD
  loc_6C674A: PopTmpLdAdStr var_E4
  loc_6C674D: LitI2_Byte &H4D
  loc_6C674F: PopTmpLdAd2 var_8E
  loc_6C6752: ImpAdLdRf MemVar_74C7D0
  loc_6C6755: NewIfNullPr clsMsg
  loc_6C6758: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C675D: ILdRf var_208
  loc_6C6760: LitStr " / h"
  loc_6C6763: ConcatStr
  loc_6C6764: FStStrNoPop var_22C
  loc_6C6767: FLdRfVar var_CC
  loc_6C676A: FLdRfVar var_BC
  loc_6C676D: LitVarI2 var_228, 1
  loc_6C6772: PopAdLdVar
  loc_6C6773: LitI4 1
  loc_6C6778: FLdPr var_D0
  loc_6C677B: LateIdLdVar var_218 DispID_40 0
  loc_6C6782: CastAdVar Me
  loc_6C6786: FStAdFunc var_B8
  loc_6C6789: FLdPr var_B8
  loc_6C678C: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6C6791: FLdPr var_BC
  loc_6C6794:  = Me.AxisTitle
  loc_6C6799: FLdPr var_CC
  loc_6C679C:  = Me._Text = from_stack_1v
  loc_6C67A1: FFreeStr var_E0 = "": var_208 = ""
  loc_6C67AA: FFreeAd var_B8 = "": var_BC = ""
  loc_6C67B3: FFreeVar var_B4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6C67CC: FLdRfVar var_8A
  loc_6C67CF: NextUI1
  loc_6C67D5: FLdRfVar var_8C
  loc_6C67D8: NextUI1
  loc_6C67DE: LitNothing
  loc_6C67E0: FStAd var_D0 
  loc_6C67E4: ExitProcHresult
End Function

Private Function Proc_63_13_5E28E0() '5E28E0
  'Data Table: 43090C
  loc_5E2884: LitI2_Byte 0
  loc_5E2886: FStI2 var_88
  loc_5E2889: FLdI2 var_88
  loc_5E288C: LitI2_Byte 2
  loc_5E288E: LtI2
  loc_5E288F: BranchF loc_5E28CE
  loc_5E2892: FLdRfVar var_92
  loc_5E2895: FLdRfVar var_90
  loc_5E2898: FLdI2 var_88
  loc_5E289B: FLdPrThis
  loc_5E289C: VCallAd Control_ID_optGrafico
  loc_5E289F: FStAdFunc var_8C
  loc_5E28A2: FLdPr var_8C
  loc_5E28A5: Set from_stack_2 = Me(from_stack_1)
  loc_5E28AA: FLdPr var_90
  loc_5E28AD:  = Me.Value
  loc_5E28B2: FLdI2 var_92
  loc_5E28B5: FFreeAd var_8C = ""
  loc_5E28BC: BranchF loc_5E28C2
  loc_5E28BF: Branch loc_5E28CE
  loc_5E28C2: FLdI2 var_88
  loc_5E28C5: LitI2_Byte 1
  loc_5E28C7: AddI2
  loc_5E28C8: FStI2 var_88
  loc_5E28CB: Branch loc_5E2889
  loc_5E28CE: FLdI2 var_88
  loc_5E28D1: LitI2_Byte 1
  loc_5E28D3: AddI2
  loc_5E28D4: FStI2 var_86
  loc_5E28D7: ExitProcCbHresult
  loc_5E28DD: LtR8
  loc_5E28DE: ExitProcR8
End Function

Private Function Proc_63_14_63DE7C() '63DE7C
  'Data Table: 43090C
  loc_63DCC4: FLdPrThis
  loc_63DCC5: VCallAd Control_ID_txtFechaDesde
  loc_63DCC8: FStAdFunc var_8C
  loc_63DCCB: FLdPr var_8C
  loc_63DCCE: LateIdLdVar var_9C DispID_22 0
  loc_63DCD5: PopAd
  loc_63DCD7: LitVarI2 var_C0, 2
  loc_63DCDC: LitI4 1
  loc_63DCE1: FLdRfVar var_9C
  loc_63DCE4: CStrVarTmp
  loc_63DCE5: FStStrNoPop var_A0
  loc_63DCE8: ImpAdCallI2 Mid$(, , )
  loc_63DCED: FStStr var_1F8
  loc_63DCF0: FLdPrThis
  loc_63DCF1: VCallAd Control_ID_txtFechaDesde
  loc_63DCF4: FStAdFunc var_C4
  loc_63DCF7: FLdPr var_C4
  loc_63DCFA: LateIdLdVar var_D4 DispID_22 0
  loc_63DD01: PopAd
  loc_63DD03: LitVarI2 var_F8, 2
  loc_63DD08: LitI4 4
  loc_63DD0D: FLdRfVar var_D4
  loc_63DD10: CStrVarTmp
  loc_63DD11: FStStrNoPop var_D8
  loc_63DD14: ImpAdCallI2 Mid$(, , )
  loc_63DD19: FStStr var_1FC
  loc_63DD1C: FLdPrThis
  loc_63DD1D: VCallAd Control_ID_txtFechaDesde
  loc_63DD20: FStAdFunc var_FC
  loc_63DD23: FLdPr var_FC
  loc_63DD26: LateIdLdVar var_10C DispID_22 0
  loc_63DD2D: PopAd
  loc_63DD2F: LitVarI2 var_130, 4
  loc_63DD34: LitI4 7
  loc_63DD39: FLdRfVar var_10C
  loc_63DD3C: CStrVarTmp
  loc_63DD3D: FStStrNoPop var_110
  loc_63DD40: ImpAdCallI2 Mid$(, , )
  loc_63DD45: FStStr var_200
  loc_63DD48: FLdPrThis
  loc_63DD49: VCallAd Control_ID_txtFechaHasta
  loc_63DD4C: FStAdFunc var_134
  loc_63DD4F: FLdPr var_134
  loc_63DD52: LateIdLdVar var_144 DispID_22 0
  loc_63DD59: PopAd
  loc_63DD5B: LitVarI2 var_168, 2
  loc_63DD60: LitI4 1
  loc_63DD65: FLdRfVar var_144
  loc_63DD68: CStrVarTmp
  loc_63DD69: FStStrNoPop var_148
  loc_63DD6C: ImpAdCallI2 Mid$(, , )
  loc_63DD71: FStStr var_204
  loc_63DD74: FLdPrThis
  loc_63DD75: VCallAd Control_ID_txtFechaHasta
  loc_63DD78: FStAdFunc var_16C
  loc_63DD7B: FLdPr var_16C
  loc_63DD7E: LateIdLdVar var_17C DispID_22 0
  loc_63DD85: PopAd
  loc_63DD87: LitVarI2 var_1A0, 2
  loc_63DD8C: LitI4 4
  loc_63DD91: FLdRfVar var_17C
  loc_63DD94: CStrVarTmp
  loc_63DD95: FStStrNoPop var_180
  loc_63DD98: ImpAdCallI2 Mid$(, , )
  loc_63DD9D: FStStr var_208
  loc_63DDA0: FLdPrThis
  loc_63DDA1: VCallAd Control_ID_txtFechaHasta
  loc_63DDA4: FStAdFunc var_1A4
  loc_63DDA7: FLdPr var_1A4
  loc_63DDAA: LateIdLdVar var_1B4 DispID_22 0
  loc_63DDB1: PopAd
  loc_63DDB3: LitVarI2 var_1D8, 4
  loc_63DDB8: LitI4 7
  loc_63DDBD: FLdRfVar var_1B4
  loc_63DDC0: CStrVarTmp
  loc_63DDC1: FStStrNoPop var_1B8
  loc_63DDC4: ImpAdCallI2 Mid$(, , )
  loc_63DDC9: FStStrNoPop var_1F0
  loc_63DDCC: CI2Str
  loc_63DDCE: FLdZeroAd var_208
  loc_63DDD1: FStStrNoPop var_1EC
  loc_63DDD4: CI2Str
  loc_63DDD6: FLdZeroAd var_204
  loc_63DDD9: FStStrNoPop var_1E8
  loc_63DDDC: CI2Str
  loc_63DDDE: FLdZeroAd var_200
  loc_63DDE1: FStStrNoPop var_1E4
  loc_63DDE4: CI2Str
  loc_63DDE6: FLdZeroAd var_1FC
  loc_63DDE9: FStStrNoPop var_1E0
  loc_63DDEC: CI2Str
  loc_63DDEE: FLdZeroAd var_1F8
  loc_63DDF1: FStStrNoPop var_1DC
  loc_63DDF4: CI2Str
  loc_63DDF6: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_63DDFB: FStI2 var_1F2
  loc_63DDFE: FFreeStr var_A0 = "": var_D8 = "": var_110 = "": var_148 = "": var_180 = "": var_1B8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_63DE23: FFreeAd var_8C = "": var_C4 = "": var_FC = "": var_134 = "": var_16C = ""
  loc_63DE32: FFreeVar var_9C = "": var_C0 = "": var_D4 = "": var_F8 = "": var_10C = "": var_130 = "": var_144 = "": var_168 = "": var_17C = "": var_1A0 = "": var_1B4 = ""
  loc_63DE4D: FLdI2 var_1F2
  loc_63DE50: LitI2_Byte &HFF
  loc_63DE52: EqI2
  loc_63DE53: BranchT loc_63DE5F
  loc_63DE56: FLdI2 var_1F2
  loc_63DE59: LitI2_Byte 0
  loc_63DE5B: EqI2
  loc_63DE5C: BranchF loc_63DE67
  loc_63DE5F: LitI2_Byte &HFF
  loc_63DE61: FStI2 var_86
  loc_63DE64: Branch loc_63DE75
  loc_63DE67: FLdI2 var_1F2
  loc_63DE6A: LitI2_Byte 1
  loc_63DE6C: EqI2
  loc_63DE6D: BranchF loc_63DE75
  loc_63DE70: LitI2_Byte 0
  loc_63DE72: FStI2 var_86
  loc_63DE75: ExitProcCbHresult
End Function

Private Function Proc_63_15_6465A8() '6465A8
  'Data Table: 43090C
  loc_64636C: FLdPrThis
  loc_64636D: VCallAd Control_ID_txtFechaDesde
  loc_646370: FStAdFunc var_8C
  loc_646373: FLdPr var_8C
  loc_646376: LateIdLdVar var_9C DispID_22 0
  loc_64637D: PopAd
  loc_64637F: LitVarI2 var_C0, 2
  loc_646384: LitI4 1
  loc_646389: FLdRfVar var_9C
  loc_64638C: CStrVarTmp
  loc_64638D: FStStrNoPop var_A0
  loc_646390: ImpAdCallI2 Mid$(, , )
  loc_646395: FStStr var_140
  loc_646398: FLdPrThis
  loc_646399: VCallAd Control_ID_txtFechaDesde
  loc_64639C: FStAdFunc var_C4
  loc_64639F: FLdPr var_C4
  loc_6463A2: LateIdLdVar var_D4 DispID_22 0
  loc_6463A9: PopAd
  loc_6463AB: LitVarI2 var_F8, 2
  loc_6463B0: LitI4 4
  loc_6463B5: FLdRfVar var_D4
  loc_6463B8: CStrVarTmp
  loc_6463B9: FStStrNoPop var_D8
  loc_6463BC: ImpAdCallI2 Mid$(, , )
  loc_6463C1: FStStr var_144
  loc_6463C4: FLdPrThis
  loc_6463C5: VCallAd Control_ID_txtFechaDesde
  loc_6463C8: FStAdFunc var_FC
  loc_6463CB: FLdPr var_FC
  loc_6463CE: LateIdLdVar var_10C DispID_22 0
  loc_6463D5: PopAd
  loc_6463D7: LitVarI2 var_130, 4
  loc_6463DC: LitI4 7
  loc_6463E1: FLdRfVar var_10C
  loc_6463E4: CStrVarTmp
  loc_6463E5: FStStrNoPop var_110
  loc_6463E8: ImpAdCallI2 Mid$(, , )
  loc_6463ED: FStStrNoPop var_13C
  loc_6463F0: CI2Str
  loc_6463F2: FLdZeroAd var_144
  loc_6463F5: FStStrNoPop var_138
  loc_6463F8: CI2Str
  loc_6463FA: FLdZeroAd var_140
  loc_6463FD: FStStrNoPop var_134
  loc_646400: CI2Str
  loc_646402: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_646407: NotI4
  loc_646408: FFreeStr var_A0 = "": var_D8 = "": var_110 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_64641B: FFreeAd var_8C = "": var_C4 = ""
  loc_646424: FFreeVar var_9C = "": var_C0 = "": var_D4 = "": var_F8 = "": var_10C = ""
  loc_646433: BranchF loc_646456
  loc_646436: FLdPrThis
  loc_646437: VCallAd Control_ID_txtFechaDesde
  loc_64643A: FStAdFunc var_8C
  loc_64643D: FLdPr var_8C
  loc_646440: LateIdCall
  loc_646448: FFree1Ad var_8C
  loc_64644B: LitI2_Byte 0
  loc_64644D: FStI2 var_86
  loc_646450: ExitProcCbHresult
  loc_646456: FLdPrThis
  loc_646457: VCallAd Control_ID_txtFechaHasta
  loc_64645A: FStAdFunc var_8C
  loc_64645D: FLdPr var_8C
  loc_646460: LateIdLdVar var_9C DispID_22 0
  loc_646467: PopAd
  loc_646469: LitVarI2 var_C0, 2
  loc_64646E: LitI4 1
  loc_646473: FLdRfVar var_9C
  loc_646476: CStrVarTmp
  loc_646477: FStStrNoPop var_A0
  loc_64647A: ImpAdCallI2 Mid$(, , )
  loc_64647F: FStStr var_140
  loc_646482: FLdPrThis
  loc_646483: VCallAd Control_ID_txtFechaHasta
  loc_646486: FStAdFunc var_C4
  loc_646489: FLdPr var_C4
  loc_64648C: LateIdLdVar var_D4 DispID_22 0
  loc_646493: PopAd
  loc_646495: LitVarI2 var_F8, 2
  loc_64649A: LitI4 4
  loc_64649F: FLdRfVar var_D4
  loc_6464A2: CStrVarTmp
  loc_6464A3: FStStrNoPop var_D8
  loc_6464A6: ImpAdCallI2 Mid$(, , )
  loc_6464AB: FStStr var_144
  loc_6464AE: FLdPrThis
  loc_6464AF: VCallAd Control_ID_txtFechaHasta
  loc_6464B2: FStAdFunc var_FC
  loc_6464B5: FLdPr var_FC
  loc_6464B8: LateIdLdVar var_10C DispID_22 0
  loc_6464BF: PopAd
  loc_6464C1: LitVarI2 var_130, 4
  loc_6464C6: LitI4 7
  loc_6464CB: FLdRfVar var_10C
  loc_6464CE: CStrVarTmp
  loc_6464CF: FStStrNoPop var_110
  loc_6464D2: ImpAdCallI2 Mid$(, , )
  loc_6464D7: FStStrNoPop var_13C
  loc_6464DA: CI2Str
  loc_6464DC: FLdZeroAd var_144
  loc_6464DF: FStStrNoPop var_138
  loc_6464E2: CI2Str
  loc_6464E4: FLdZeroAd var_140
  loc_6464E7: FStStrNoPop var_134
  loc_6464EA: CI2Str
  loc_6464EC: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6464F1: NotI4
  loc_6464F2: FFreeStr var_A0 = "": var_D8 = "": var_110 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_646505: FFreeAd var_8C = "": var_C4 = ""
  loc_64650E: FFreeVar var_9C = "": var_C0 = "": var_D4 = "": var_F8 = "": var_10C = ""
  loc_64651D: BranchF loc_646540
  loc_646520: FLdPrThis
  loc_646521: VCallAd Control_ID_txtFechaHasta
  loc_646524: FStAdFunc var_8C
  loc_646527: FLdPr var_8C
  loc_64652A: LateIdCall
  loc_646532: FFree1Ad var_8C
  loc_646535: LitI2_Byte 0
  loc_646537: FStI2 var_86
  loc_64653A: ExitProcCbHresult
  loc_646540: FLdPrThis
  loc_646541: VCallAd Control_ID_txtFechaDesde
  loc_646544: FStAdFunc var_8C
  loc_646547: FLdPr var_8C
  loc_64654A: LateIdLdVar var_9C DispID_22 0
  loc_646551: PopAd
  loc_646553: LitI4 4
  loc_646558: FLdRfVar var_9C
  loc_64655B: CStrVarTmp
  loc_64655C: FStStrNoPop var_A0
  loc_64655F: ImpAdCallI2 Right$(, )
  loc_646564: FStStrNoPop var_D8
  loc_646567: CI2Str
  loc_646569: LitI2 1970
  loc_64656C: LtI2
  loc_64656D: FFreeStr var_A0 = ""
  loc_646574: FFree1Ad var_8C
  loc_646577: FFree1Var var_9C = ""
  loc_64657A: BranchF loc_64659D
  loc_64657D: FLdPrThis
  loc_64657E: VCallAd Control_ID_txtFechaDesde
  loc_646581: FStAdFunc var_8C
  loc_646584: FLdPr var_8C
  loc_646587: LateIdCall
  loc_64658F: FFree1Ad var_8C
  loc_646592: LitI2_Byte 0
  loc_646594: FStI2 var_86
  loc_646597: ExitProcCbHresult
  loc_64659D: LitI2_Byte &HFF
  loc_64659F: FStI2 var_86
  loc_6465A2: ExitProcCbHresult
End Function

Private Function Proc_63_16_62DDC8() '62DDC8
  'Data Table: 43090C
  loc_62DC34: FLdPrThis
  loc_62DC35: VCallAd Control_ID_txtFechaDesde
  loc_62DC38: FStAdFunc var_9C
  loc_62DC3B: FLdPr var_9C
  loc_62DC3E: LateIdLdVar var_AC DispID_22 0
  loc_62DC45: CStrVarTmp
  loc_62DC46: FStStrNoPop var_B0
  loc_62DC49: ImpAdCallI2 Proc_87_13_5E04EC()
  loc_62DC4E: FStStrNoPop var_D0
  loc_62DC51: CI4Str
  loc_62DC52: FLdRfVar var_94
  loc_62DC55: FLdPrThis
  loc_62DC56: VCallAd Control_ID_txtFechaHasta
  loc_62DC59: FStAdFunc var_B4
  loc_62DC5C: FLdPr var_B4
  loc_62DC5F: LateIdLdVar var_C4 DispID_22 0
  loc_62DC66: CStrVarTmp
  loc_62DC67: FStStrNoPop var_C8
  loc_62DC6A: ImpAdCallI2 Proc_87_13_5E04EC()
  loc_62DC6F: FStStrNoPop var_CC
  loc_62DC72: CI4Str
  loc_62DC73: FFreeStr var_B0 = "": var_C8 = "": var_CC = ""
  loc_62DC7E: FFreeAd var_9C = ""
  loc_62DC85: FFreeVar var_AC = ""
  loc_62DC8C: ForI4 var_D8
  loc_62DC92: ILdRf var_94
  loc_62DC95: CStrI4
  loc_62DC97: FStStrNoPop var_B0
  loc_62DC9A: LitStr "000000"
  loc_62DC9D: ConcatStr
  loc_62DC9E: FStStrNoPop var_C8
  loc_62DCA1: ILdRf var_94
  loc_62DCA4: CStrI4
  loc_62DCA6: FStStrNoPop var_CC
  loc_62DCA9: ConcatStr
  loc_62DCAA: FStStrNoPop var_D0
  loc_62DCAD: LitStr "235959"
  loc_62DCB0: ConcatStr
  loc_62DCB1: FStStrNoPop var_DC
  loc_62DCB4: LitStr "01"
  loc_62DCB7: ConcatStr
  loc_62DCB8: FStStr var_88
  loc_62DCBB: FFreeStr var_B0 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_62DCC8: FLdRfVar var_DE
  loc_62DCCB: FLdRfVar var_90
  loc_62DCCE: ILdRf var_88
  loc_62DCD1: FLdRfVar var_9C
  loc_62DCD4: ImpAdLdRf MemVar_74C760
  loc_62DCD7: NewIfNullPr Formx
  loc_62DCDA: from_stack_1v = Formx.global_4589716Get()
  loc_62DCDF: FLdPr var_9C
  loc_62DCE2: Formx.Appearance = from_stack_1
  loc_62DCE7: FLdI2 var_DE
  loc_62DCEA: NotI4
  loc_62DCEB: FFree1Ad var_9C
  loc_62DCEE: BranchF loc_62DD1D
  loc_62DCF1: FLdRfVar var_AC
  loc_62DCF4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62DCF9: FLdRfVar var_AC
  loc_62DCFC: CBoolVarNull
  loc_62DCFE: FFree1Var var_AC = ""
  loc_62DD01: BranchF loc_62DD1A
  loc_62DD04: ILdRf Me
  loc_62DD07: FStAdNoPop
  loc_62DD0B: ImpAdLdRf MemVar_7520D4
  loc_62DD0E: NewIfNullPr Global
  loc_62DD11: Global.Unload from_stack_1
  loc_62DD16: FFree1Ad var_9C
  loc_62DD19: ExitProcHresult
  loc_62DD1A: Branch loc_62DCC8
  loc_62DD1D: ILdRf var_90
  loc_62DD20: LitI4 &HA
  loc_62DD25: GtI4
  loc_62DD26: BranchF loc_62DDBC
  loc_62DD29: FLdRfVar var_DE
  loc_62DD2C: FLdRfVar var_8C
  loc_62DD2F: FLdRfVar var_9C
  loc_62DD32: ImpAdLdRf MemVar_74C760
  loc_62DD35: NewIfNullPr Formx
  loc_62DD38: from_stack_1v = Formx.global_4589716Get()
  loc_62DD3D: FLdPr var_9C
  loc_62DD40:  = Formx.WhatsThisButton
  loc_62DD45: FLdI2 var_DE
  loc_62DD48: NotI4
  loc_62DD49: FFree1Ad var_9C
  loc_62DD4C: BranchF loc_62DD7B
  loc_62DD4F: FLdRfVar var_AC
  loc_62DD52: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62DD57: FLdRfVar var_AC
  loc_62DD5A: CBoolVarNull
  loc_62DD5C: FFree1Var var_AC = ""
  loc_62DD5F: BranchF loc_62DD78
  loc_62DD62: ILdRf Me
  loc_62DD65: FStAdNoPop
  loc_62DD69: ImpAdLdRf MemVar_7520D4
  loc_62DD6C: NewIfNullPr Global
  loc_62DD6F: Global.Unload from_stack_1
  loc_62DD74: FFree1Ad var_9C
  loc_62DD77: ExitProcHresult
  loc_62DD78: Branch loc_62DD29
  loc_62DD7B: LitI4 1
  loc_62DD80: FStR4 var_98
  loc_62DD83: ILdRf var_98
  loc_62DD86: ILdRf var_8C
  loc_62DD89: FnLenStr
  loc_62DD8A: LtI4
  loc_62DD8B: BranchF loc_62DDBC
  loc_62DD8E: LitVarI2 var_AC, 74
  loc_62DD93: ILdRf var_98
  loc_62DD96: ILdRf var_8C
  loc_62DD99: ImpAdCallI2 Mid$(, , )
  loc_62DD9E: PopTmpLdAdStr
  loc_62DDA2: from_stack_2v = Proc_63_18_6885B8(from_stack_1v)
  loc_62DDA7: FFree1Str var_B0
  loc_62DDAA: FFree1Var var_AC = ""
  loc_62DDAD: ILdRf var_98
  loc_62DDB0: LitI4 &H4A
  loc_62DDB5: AddI4
  loc_62DDB6: FStR4 var_98
  loc_62DDB9: Branch loc_62DD83
  loc_62DDBC: FLdRfVar var_94
  loc_62DDBF: NextI4 var_D8, loc_62DC92
  loc_62DDC4: ExitProcHresult
End Function

Private Function Proc_63_17_5C858C() '5C858C
  'Data Table: 43090C
  loc_5C8588: ExitProcHresult
  loc_5C8589: LitI2_Byte &H1A
End Function

Private Function Proc_63_18_6885B8(arg_C) '6885B8
  'Data Table: 43090C
  loc_688058: LitI2_Byte 9
  loc_68805A: FStI2 var_96
  loc_68805D: LitVarI2 var_C8, 2
  loc_688062: FLdI2 var_96
  loc_688065: CI4UI1
  loc_688066: ILdRf arg_C
  loc_688069: CVarRef
  loc_68806E: FLdRfVar var_D8
  loc_688071: ImpAdCallFPR4  = Mid(, , )
  loc_688076: FLdRfVar var_D8
  loc_688079: CI2Var
  loc_68807A: FStI2 var_8A
  loc_68807D: FFreeVar var_C8 = ""
  loc_688084: FLdI2 var_96
  loc_688087: LitI2_Byte 6
  loc_688089: AddI2
  loc_68808A: FStI2 var_96
  loc_68808D: FLdI2 var_96
  loc_688090: LitI2_Byte 3
  loc_688092: AddI2
  loc_688093: FStI2 var_96
  loc_688096: LitVarI2 var_C8, 10
  loc_68809B: FLdI2 var_96
  loc_68809E: CI4UI1
  loc_68809F: ILdI4 arg_C
  loc_6880A2: ImpAdCallI2 Mid$(, , )
  loc_6880A7: FStStrNoPop var_DC
  loc_6880AA: FnCSngStr
  loc_6880AC: ImpAdLdFPR4 MemVar_74C2E0
  loc_6880AF: DivR8
  loc_6880B0: FStFPR4 var_94
  loc_6880B3: FFree1Str var_DC
  loc_6880B6: FFree1Var var_C8 = ""
  loc_6880B9: FLdI2 var_96
  loc_6880BC: LitI2_Byte &HA
  loc_6880BE: AddI2
  loc_6880BF: FStI2 var_96
  loc_6880C2: LitVarI2 var_C8, 10
  loc_6880C7: FLdI2 var_96
  loc_6880CA: CI4UI1
  loc_6880CB: ILdI4 arg_C
  loc_6880CE: ImpAdCallI2 Mid$(, , )
  loc_6880D3: FStStrNoPop var_DC
  loc_6880D6: FnCSngStr
  loc_6880D8: LitI2_Byte &H64
  loc_6880DA: CR8I2
  loc_6880DB: DivR8
  loc_6880DC: FStFPR4 var_90
  loc_6880DF: FFree1Str var_DC
  loc_6880E2: FFree1Var var_C8 = ""
  loc_6880E5: FLdI2 var_96
  loc_6880E8: LitI2_Byte &HA
  loc_6880EA: AddI2
  loc_6880EB: FStI2 var_96
  loc_6880EE: FLdI2 var_96
  loc_6880F1: LitI2_Byte &HC
  loc_6880F3: AddI2
  loc_6880F4: FStI2 var_96
  loc_6880F7: LitVarI2 var_C8, 3
  loc_6880FC: FLdI2 var_96
  loc_6880FF: CI4UI1
  loc_688100: ILdI4 arg_C
  loc_688103: ImpAdCallI2 Mid$(, , )
  loc_688108: FStStrNoPop var_DC
  loc_68810B: CI2Str
  loc_68810D: FStI2 var_86
  loc_688110: FFree1Str var_DC
  loc_688113: FFree1Var var_C8 = ""
  loc_688116: FLdI2 var_96
  loc_688119: LitI2_Byte 3
  loc_68811B: AddI2
  loc_68811C: FStI2 var_96
  loc_68811F: LitVarI2 var_C8, 4
  loc_688124: FLdI2 var_96
  loc_688127: CI4UI1
  loc_688128: ILdI4 arg_C
  loc_68812B: ImpAdCallI2 Mid$(, , )
  loc_688130: FStStrNoPop var_DC
  loc_688133: CI2Str
  loc_688135: FStI2 var_88
  loc_688138: FFree1Str var_DC
  loc_68813B: FFree1Var var_C8 = ""
  loc_68813E: LitI2_Byte 0
  loc_688140: FStI2 var_96
  loc_688143: FLdI2 var_96
  loc_688146: CI4UI1
  loc_688147: FLdPr Me
  loc_68814A: MemLdStr global_56
  loc_68814D: LitI2_Byte 1
  loc_68814F: FnUBound
  loc_688151: LeI4
  loc_688152: BranchF loc_68818C
  loc_688155: FLdI2 var_96
  loc_688158: CI4UI1
  loc_688159: FLdPr Me
  loc_68815C: MemLdStr global_56
  loc_68815F: Ary1LdPr
  loc_688160: MemLdI2 global_4
  loc_688163: FLdI2 var_86
  loc_688166: EqI2
  loc_688167: FLdI2 var_96
  loc_68816A: CI4UI1
  loc_68816B: FLdPr Me
  loc_68816E: MemLdStr global_56
  loc_688171: Ary1LdPr
  loc_688172: MemLdI2 global_6
  loc_688175: FLdI2 var_88
  loc_688178: EqI2
  loc_688179: AndI4
  loc_68817A: BranchF loc_688180
  loc_68817D: Branch loc_68818C
  loc_688180: FLdI2 var_96
  loc_688183: LitI2_Byte 1
  loc_688185: AddI2
  loc_688186: FStI2 var_96
  loc_688189: Branch loc_688143
  loc_68818C: FLdI2 var_96
  loc_68818F: CI4UI1
  loc_688190: FLdPr Me
  loc_688193: MemLdStr global_56
  loc_688196: LitI2_Byte 1
  loc_688198: FnUBound
  loc_68819A: GtI4
  loc_68819B: BranchF loc_688454
  loc_68819E: LitI4 0
  loc_6881A3: FLdPr Me
  loc_6881A6: MemLdStr global_56
  loc_6881A9: Ary1LdPr
  loc_6881AA: MemLdI2 global_4
  loc_6881AD: LitI2_Byte 0
  loc_6881AF: EqI2
  loc_6881B0: LitI4 0
  loc_6881B5: FLdPr Me
  loc_6881B8: MemLdStr global_56
  loc_6881BB: Ary1LdPr
  loc_6881BC: MemLdI2 global_6
  loc_6881BF: LitI2_Byte 0
  loc_6881C1: EqI2
  loc_6881C2: AndI4
  loc_6881C3: FLdI2 var_96
  loc_6881C6: LitI2_Byte 1
  loc_6881C8: EqI2
  loc_6881C9: AndI4
  loc_6881CA: BranchF loc_688300
  loc_6881CD: LitI2_Byte 0
  loc_6881CF: FStI2 var_96
  loc_6881D2: FLdI2 var_86
  loc_6881D5: LitI4 0
  loc_6881DA: FLdPr Me
  loc_6881DD: MemLdStr global_56
  loc_6881E0: Ary1LdPr
  loc_6881E1: MemStI2 global_4
  loc_6881E4: FLdI2 var_88
  loc_6881E7: LitI4 0
  loc_6881EC: FLdPr Me
  loc_6881EF: MemLdStr global_56
  loc_6881F2: Ary1LdPr
  loc_6881F3: MemStI2 global_6
  loc_6881F6: LitI4 1
  loc_6881FB: LitI4 1
  loc_688200: LitVarStr var_B8, "0000"
  loc_688205: FStVarCopyObj var_C8
  loc_688208: FLdRfVar var_C8
  loc_68820B: FLdRfVar var_88
  loc_68820E: CVarRef
  loc_688213: ImpAdCallI2 Format$(, )
  loc_688218: FStStr var_EC
  loc_68821B: FLdRfVar var_E6
  loc_68821E: LitI4 0
  loc_688223: FLdPr Me
  loc_688226: MemLdStr global_56
  loc_688229: AryLock
  loc_68822C: Ary1LdPr
  loc_68822D: MemLdRfVar from_stack_1.global_0
  loc_688230: FLdZeroAd var_EC
  loc_688233: FStStrNoPop var_DC
  loc_688236: FLdRfVar var_E0
  loc_688239: ImpAdLdRf MemVar_74C760
  loc_68823C: NewIfNullPr Formx
  loc_68823F: from_stack_1v = Formx.global_4589716Get()
  loc_688244: FLdPr var_E0
  loc_688247: Call 0.Method_arg_26C ()
  loc_68824C: AryUnlock
  loc_68824F: FLdI2 var_E6
  loc_688252: NotI4
  loc_688253: FFreeStr var_DC = ""
  loc_68825A: FFree1Ad var_E0
  loc_68825D: FFree1Var var_C8 = ""
  loc_688260: BranchF loc_68828F
  loc_688263: FLdRfVar var_C8
  loc_688266: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68826B: FLdRfVar var_C8
  loc_68826E: CBoolVarNull
  loc_688270: FFree1Var var_C8 = ""
  loc_688273: BranchF loc_68828C
  loc_688276: ILdRf Me
  loc_688279: FStAdNoPop
  loc_68827D: ImpAdLdRf MemVar_7520D4
  loc_688280: NewIfNullPr Global
  loc_688283: Global.Unload from_stack_1
  loc_688288: FFree1Ad var_E0
  loc_68828B: ExitProcHresult
  loc_68828C: Branch loc_6881F6
  loc_68828F: LitI4 0
  loc_688294: FLdPr Me
  loc_688297: MemLdStr global_56
  loc_68829A: Ary1LdPr
  loc_68829B: MemLdStr global_0
  loc_68829E: LitStr vbNullString
  loc_6882A1: EqStr
  loc_6882A3: BranchF loc_6882FD
  loc_6882A6: LitStr "G: "
  loc_6882A9: LitI4 0
  loc_6882AE: FLdPr Me
  loc_6882B1: MemLdStr global_56
  loc_6882B4: Ary1LdPr
  loc_6882B5: MemLdI2 global_4
  loc_6882B8: CStrUI1
  loc_6882BA: FStStrNoPop var_DC
  loc_6882BD: ConcatStr
  loc_6882BE: FStStrNoPop var_EC
  loc_6882C1: LitStr ", U: "
  loc_6882C4: ConcatStr
  loc_6882C5: FStStrNoPop var_F0
  loc_6882C8: LitI4 0
  loc_6882CD: FLdPr Me
  loc_6882D0: MemLdStr global_56
  loc_6882D3: Ary1LdPr
  loc_6882D4: MemLdI2 global_6
  loc_6882D7: CStrUI1
  loc_6882D9: FStStrNoPop var_F4
  loc_6882DC: ConcatStr
  loc_6882DD: FStStrNoPop var_F8
  loc_6882E0: LitI4 0
  loc_6882E5: FLdPr Me
  loc_6882E8: MemLdStr global_56
  loc_6882EB: Ary1LdPr
  loc_6882EC: MemStStrCopy
  loc_6882F0: FFreeStr var_DC = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_6882FD: Branch loc_688454
  loc_688300: LitI4 0
  loc_688305: FLdPr Me
  loc_688308: MemLdStr global_56
  loc_68830B: LitI2_Byte 1
  loc_68830D: FnUBound
  loc_68830F: LitI4 1
  loc_688314: AddI4
  loc_688315: FLdPr Me
  loc_688318: MemLdRfVar from_stack_1.global_56
  loc_68831B: RedimPreserve
  loc_688325: FLdI2 var_96
  loc_688328: PopTmpLdAd2 var_E6
  loc_68832B: from_stack_2v = Proc_63_19_5E872C(from_stack_1v)
  loc_688330: FLdI2 var_86
  loc_688333: FLdI2 var_96
  loc_688336: CI4UI1
  loc_688337: FLdPr Me
  loc_68833A: MemLdStr global_56
  loc_68833D: Ary1LdPr
  loc_68833E: MemStI2 global_4
  loc_688341: FLdI2 var_88
  loc_688344: FLdI2 var_96
  loc_688347: CI4UI1
  loc_688348: FLdPr Me
  loc_68834B: MemLdStr global_56
  loc_68834E: Ary1LdPr
  loc_68834F: MemStI2 global_6
  loc_688352: LitI4 1
  loc_688357: LitI4 1
  loc_68835C: LitVarStr var_B8, "0000"
  loc_688361: FStVarCopyObj var_C8
  loc_688364: FLdRfVar var_C8
  loc_688367: FLdRfVar var_88
  loc_68836A: CVarRef
  loc_68836F: ImpAdCallI2 Format$(, )
  loc_688374: FStStr var_EC
  loc_688377: FLdRfVar var_E6
  loc_68837A: FLdI2 var_96
  loc_68837D: CI4UI1
  loc_68837E: FLdPr Me
  loc_688381: MemLdStr global_56
  loc_688384: AryLock
  loc_688387: Ary1LdPr
  loc_688388: MemLdRfVar from_stack_1.global_0
  loc_68838B: FLdZeroAd var_EC
  loc_68838E: FStStrNoPop var_DC
  loc_688391: FLdRfVar var_E0
  loc_688394: ImpAdLdRf MemVar_74C760
  loc_688397: NewIfNullPr Formx
  loc_68839A: from_stack_1v = Formx.global_4589716Get()
  loc_68839F: FLdPr var_E0
  loc_6883A2: Call 0.Method_arg_26C ()
  loc_6883A7: AryUnlock
  loc_6883AA: FLdI2 var_E6
  loc_6883AD: NotI4
  loc_6883AE: FFreeStr var_DC = ""
  loc_6883B5: FFree1Ad var_E0
  loc_6883B8: FFree1Var var_C8 = ""
  loc_6883BB: BranchF loc_6883EA
  loc_6883BE: FLdRfVar var_C8
  loc_6883C1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6883C6: FLdRfVar var_C8
  loc_6883C9: CBoolVarNull
  loc_6883CB: FFree1Var var_C8 = ""
  loc_6883CE: BranchF loc_6883E7
  loc_6883D1: ILdRf Me
  loc_6883D4: FStAdNoPop
  loc_6883D8: ImpAdLdRf MemVar_7520D4
  loc_6883DB: NewIfNullPr Global
  loc_6883DE: Global.Unload from_stack_1
  loc_6883E3: FFree1Ad var_E0
  loc_6883E6: ExitProcHresult
  loc_6883E7: Branch loc_688352
  loc_6883EA: FLdI2 var_96
  loc_6883ED: CI4UI1
  loc_6883EE: FLdPr Me
  loc_6883F1: MemLdStr global_56
  loc_6883F4: Ary1LdPr
  loc_6883F5: MemLdStr global_0
  loc_6883F8: LitStr vbNullString
  loc_6883FB: EqStr
  loc_6883FD: BranchF loc_688454
  loc_688400: LitStr "G: "
  loc_688403: FLdI2 var_96
  loc_688406: CI4UI1
  loc_688407: FLdPr Me
  loc_68840A: MemLdStr global_56
  loc_68840D: Ary1LdPr
  loc_68840E: MemLdI2 global_4
  loc_688411: CStrUI1
  loc_688413: FStStrNoPop var_DC
  loc_688416: ConcatStr
  loc_688417: FStStrNoPop var_EC
  loc_68841A: LitStr ", U: "
  loc_68841D: ConcatStr
  loc_68841E: FStStrNoPop var_F0
  loc_688421: FLdI2 var_96
  loc_688424: CI4UI1
  loc_688425: FLdPr Me
  loc_688428: MemLdStr global_56
  loc_68842B: Ary1LdPr
  loc_68842C: MemLdI2 global_6
  loc_68842F: CStrUI1
  loc_688431: FStStrNoPop var_F4
  loc_688434: ConcatStr
  loc_688435: FStStrNoPop var_F8
  loc_688438: FLdI2 var_96
  loc_68843B: CI4UI1
  loc_68843C: FLdPr Me
  loc_68843F: MemLdStr global_56
  loc_688442: Ary1LdPr
  loc_688443: MemStStrCopy
  loc_688447: FFreeStr var_DC = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_688454: FLdI2 var_8A
  loc_688457: CI4UI1
  loc_688458: FLdI2 var_96
  loc_68845B: CI4UI1
  loc_68845C: FLdPr Me
  loc_68845F: MemLdStr global_56
  loc_688462: Ary1LdPr
  loc_688463: MemLdRfVar from_stack_1.global_208
  loc_688466: AryInRecLdPr
  loc_68846C: MemLdI2 global_0
  loc_68846F: LitI2_Byte 1
  loc_688471: AddI2
  loc_688472: FLdI2 var_8A
  loc_688475: CI4UI1
  loc_688476: FLdI2 var_96
  loc_688479: CI4UI1
  loc_68847A: FLdPr Me
  loc_68847D: MemLdStr global_56
  loc_688480: Ary1LdPr
  loc_688481: MemLdRfVar from_stack_1.global_208
  loc_688484: AryInRecLdPr
  loc_68848A: MemStI2 global_0
  loc_68848D: LitI4 &H18
  loc_688492: FLdI2 var_96
  loc_688495: CI4UI1
  loc_688496: FLdPr Me
  loc_688499: MemLdStr global_56
  loc_68849C: Ary1LdPr
  loc_68849D: MemLdRfVar from_stack_1.global_208
  loc_6884A0: AryInRecLdPr
  loc_6884A6: MemLdI2 global_0
  loc_6884A9: LitI2_Byte 1
  loc_6884AB: AddI2
  loc_6884AC: LitI4 &H18
  loc_6884B1: FLdI2 var_96
  loc_6884B4: CI4UI1
  loc_6884B5: FLdPr Me
  loc_6884B8: MemLdStr global_56
  loc_6884BB: Ary1LdPr
  loc_6884BC: MemLdRfVar from_stack_1.global_208
  loc_6884BF: AryInRecLdPr
  loc_6884C5: MemStI2 global_0
  loc_6884C8: FLdI2 var_8A
  loc_6884CB: CI4UI1
  loc_6884CC: FLdI2 var_96
  loc_6884CF: CI4UI1
  loc_6884D0: FLdPr Me
  loc_6884D3: MemLdStr global_56
  loc_6884D6: Ary1LdPr
  loc_6884D7: MemLdRfVar from_stack_1.global_108
  loc_6884DA: AryInRecLdPr
  loc_6884E0: MemLdFPR4 global_0
  loc_6884E3: FLdFPR4 var_94
  loc_6884E6: AddR8
  loc_6884E7: FLdI2 var_8A
  loc_6884EA: CI4UI1
  loc_6884EB: FLdI2 var_96
  loc_6884EE: CI4UI1
  loc_6884EF: FLdPr Me
  loc_6884F2: MemLdStr global_56
  loc_6884F5: Ary1LdPr
  loc_6884F6: MemLdRfVar from_stack_1.global_108
  loc_6884F9: AryInRecLdPr
  loc_6884FF: MemStFPR4 global_0
  loc_688502: FLdI2 var_8A
  loc_688505: CI4UI1
  loc_688506: FLdI2 var_96
  loc_688509: CI4UI1
  loc_68850A: FLdPr Me
  loc_68850D: MemLdStr global_56
  loc_688510: Ary1LdPr
  loc_688511: MemLdRfVar from_stack_1.global_8
  loc_688514: AryInRecLdPr
  loc_68851A: MemLdFPR4 global_0
  loc_68851D: FLdFPR4 var_90
  loc_688520: AddR8
  loc_688521: FLdI2 var_8A
  loc_688524: CI4UI1
  loc_688525: FLdI2 var_96
  loc_688528: CI4UI1
  loc_688529: FLdPr Me
  loc_68852C: MemLdStr global_56
  loc_68852F: Ary1LdPr
  loc_688530: MemLdRfVar from_stack_1.global_8
  loc_688533: AryInRecLdPr
  loc_688539: MemStFPR4 global_0
  loc_68853C: LitI4 &H18
  loc_688541: FLdI2 var_96
  loc_688544: CI4UI1
  loc_688545: FLdPr Me
  loc_688548: MemLdStr global_56
  loc_68854B: Ary1LdPr
  loc_68854C: MemLdRfVar from_stack_1.global_108
  loc_68854F: AryInRecLdPr
  loc_688555: MemLdFPR4 global_0
  loc_688558: FLdFPR4 var_94
  loc_68855B: AddR8
  loc_68855C: LitI4 &H18
  loc_688561: FLdI2 var_96
  loc_688564: CI4UI1
  loc_688565: FLdPr Me
  loc_688568: MemLdStr global_56
  loc_68856B: Ary1LdPr
  loc_68856C: MemLdRfVar from_stack_1.global_108
  loc_68856F: AryInRecLdPr
  loc_688575: MemStFPR4 global_0
  loc_688578: LitI4 &H18
  loc_68857D: FLdI2 var_96
  loc_688580: CI4UI1
  loc_688581: FLdPr Me
  loc_688584: MemLdStr global_56
  loc_688587: Ary1LdPr
  loc_688588: MemLdRfVar from_stack_1.global_8
  loc_68858B: AryInRecLdPr
  loc_688591: MemLdFPR4 global_0
  loc_688594: FLdFPR4 var_90
  loc_688597: AddR8
  loc_688598: LitI4 &H18
  loc_68859D: FLdI2 var_96
  loc_6885A0: CI4UI1
  loc_6885A1: FLdPr Me
  loc_6885A4: MemLdStr global_56
  loc_6885A7: Ary1LdPr
  loc_6885A8: MemLdRfVar from_stack_1.global_8
  loc_6885AB: AryInRecLdPr
  loc_6885B1: MemStFPR4 global_0
  loc_6885B4: ExitProcHresult
  loc_6885B5: LitStr "??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x??x"
End Function

Private Function Proc_63_19_5E872C(arg_C) '5E872C
  'Data Table: 43090C
  loc_5E86AC: ILdI2 arg_C
  loc_5E86AF: CI4UI1
  loc_5E86B0: FLdPr Me
  loc_5E86B3: MemLdStr global_56
  loc_5E86B6: AryLock
  loc_5E86B9: Ary1LdRf
  loc_5E86BA: FStR4 var_90
  loc_5E86BD: LitI2_Byte 0
  loc_5E86BF: FMemStI2 var_90(4)
  loc_5E86C4: LitI2_Byte 0
  loc_5E86C6: FMemStI2 var_90(6)
  loc_5E86CB: LitI2_Byte 0
  loc_5E86CD: FLdRfVar var_86
  loc_5E86D0: LitI2_Byte &H18
  loc_5E86D2: ForI2 var_94
  loc_5E86D8: LitI2_Byte 0
  loc_5E86DA: CR8I2
  loc_5E86DB: FLdI2 var_86
  loc_5E86DE: CI4UI1
  loc_5E86DF: FMemLdRf unk_43087D
  loc_5E86E4: AryInRecLdPr
  loc_5E86EA: MemStFPR4 global_0
  loc_5E86ED: LitI2_Byte 0
  loc_5E86EF: CR8I2
  loc_5E86F0: FLdI2 var_86
  loc_5E86F3: CI4UI1
  loc_5E86F4: FMemLdRf unk_43087D
  loc_5E86F9: AryInRecLdPr
  loc_5E86FF: MemStFPR4 global_0
  loc_5E8702: LitI2_Byte 0
  loc_5E8704: FLdI2 var_86
  loc_5E8707: CI4UI1
  loc_5E8708: FMemLdRf unk_43087D
  loc_5E870D: AryInRecLdPr
  loc_5E8713: MemStI2 global_0
  loc_5E8716: FLdRfVar var_86
  loc_5E8719: NextI2 var_94, loc_5E86D8
  loc_5E871E: LitI4 0
  loc_5E8723: FStR4 var_90
  loc_5E8726: AryUnlock
  loc_5E8729: ExitProcHresult
  loc_5E872A: FStStr var_6BFE
End Function
