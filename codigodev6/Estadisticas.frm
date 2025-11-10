VERSION 5.00
Object = "{02B5E320-7292-11CF-93D50020AF99504A}#1.0#0"; "C:\WINDOWS\SysWow64\MSCHART.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form Estadisticas
  BackColor = &HFFFFFF&
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
  ClientTop = 75
  ClientWidth = 11910
  ClientHeight = 8685
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer TestTimer
    Enabled = 0   'False
    Interval = 3000
    Left = 9960
    Top = 240
  End
  Begin VB.CheckBox Totales
    Caption = "Visualiza solo totales"
    BackColor = &HFFFFFF&
    Left = 4740
    Top = 6360
    Width = 3075
    Height = 375
    TabIndex = 8
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
  Begin VB.ComboBox Valores
    Style = 2
    Left = 1440
    Top = 6300
    Width = 3015
    Height = 405
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
  Begin MSChartLib.MSChart Grafico
    Left = 360
    Top = 960
    Width = 11175
    Height = 5055
    TabStop = 0   'False
    TabIndex = 0
    OleObjectBlob = "Estadisticas.frx":0000
  End
  Begin Threed.SSCommand SSCommand1
    Left = 9360
    Top = 6840
    Width = 2295
    Height = 735
    TabIndex = 4
    OleObjectBlob = "Estadisticas.frx":2B91
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9360
    Top = 7800
    Width = 2295
    Height = 735
    TabIndex = 5
    OleObjectBlob = "Estadisticas.frx":2BF6
  End
  Begin VB.Label lbGraphicWait
    Caption = "Label1"
    Left = 3120
    Top = 2760
    Width = 5295
    Height = 1335
    TabIndex = 9
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Rangos
    Caption = "Ventas por tipo de Combustible"
    Left = 360
    Top = 360
    Width = 10635
    Height = 435
    TabIndex = 7
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
  Begin VB.Label Label3
    Caption = "Valores :"
    Left = 300
    Top = 6360
    Width = 1155
    Height = 315
    TabIndex = 6
    BackStyle = 0 'Transparent
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
    BackColor = &HFFFFFF&
    Left = 180
    Top = 6780
    Width = 8715
    Height = 1815
    TabIndex = 2
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Titulo
    Caption = "Ventas por tipo de Combustible"
    Left = 300
    Top = 60
    Width = 10635
    Height = 435
    TabIndex = 1
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

Attribute VB_Name = "Estadisticas"

Public TipoGrafico As Byte
Public range As String
Public hours As String
Public bitmap As String
Public RangoTexto As String


Private Sub SSCommand1_UnknownEvent_8 '60A7C4
  'Data Table: 42AF9C
  loc_60A6D4: OnErrorGoto loc_60A749
  loc_60A6D9: LitVar_FALSE
  loc_60A6DD: PopAdLdVar
  loc_60A6DE: FLdPrThis
  loc_60A6DF: VCallAd Control_ID_SSCommand1
  loc_60A6E2: FStAdFunc var_98
  loc_60A6E5: FLdPr var_98
  loc_60A6E8: LateIdSt
  loc_60A6ED: FFree1Ad var_98
  loc_60A6F2: LitVar_FALSE
  loc_60A6F6: PopAdLdVar
  loc_60A6F7: FLdPrThis
  loc_60A6F8: VCallAd Control_ID_SSCommand2
  loc_60A6FB: FStAdFunc var_98
  loc_60A6FE: FLdPr var_98
  loc_60A701: LateIdSt
  loc_60A706: FFree1Ad var_98
  loc_60A70B: ImpAdLdRf MemVar_74DB2C
  loc_60A70E: NewIfNullPr Estadisticas
  loc_60A711: Estadisticas.PrintForm
  loc_60A718: LitVar_TRUE var_94
  loc_60A71B: PopAdLdVar
  loc_60A71C: FLdPrThis
  loc_60A71D: VCallAd Control_ID_SSCommand1
  loc_60A720: FStAdFunc var_98
  loc_60A723: FLdPr var_98
  loc_60A726: LateIdSt
  loc_60A72B: FFree1Ad var_98
  loc_60A730: LitVar_TRUE var_94
  loc_60A733: PopAdLdVar
  loc_60A734: FLdPrThis
  loc_60A735: VCallAd Control_ID_SSCommand2
  loc_60A738: FStAdFunc var_98
  loc_60A73B: FLdPr var_98
  loc_60A73E: LateIdSt
  loc_60A743: FFree1Ad var_98
  loc_60A748: ExitProcHresult
  loc_60A74B: LitVar_TRUE var_94
  loc_60A74E: PopAdLdVar
  loc_60A74F: FLdPrThis
  loc_60A750: VCallAd Control_ID_SSCommand1
  loc_60A753: FStAdFunc var_98
  loc_60A756: FLdPr var_98
  loc_60A759: LateIdSt
  loc_60A75E: FFree1Ad var_98
  loc_60A763: LitVar_TRUE var_94
  loc_60A766: PopAdLdVar
  loc_60A767: FLdPrThis
  loc_60A768: VCallAd Control_ID_SSCommand2
  loc_60A76B: FStAdFunc var_98
  loc_60A76E: FLdPr var_98
  loc_60A771: LateIdSt
  loc_60A776: FFree1Ad var_98
  loc_60A77B: LitVar_Missing var_E8
  loc_60A77E: LitVar_Missing var_C8
  loc_60A781: FLdPr Me
  loc_60A784: MemLdRfVar from_stack_1.global_6636
  loc_60A787: CVarRef
  loc_60A78C: LitI4 &H45
  loc_60A791: FLdPr Me
  loc_60A794: MemLdRfVar from_stack_1.global_6632
  loc_60A797: CVarRef
  loc_60A79C: ImpAdCallI2 MsgBox(, , , , )
  loc_60A7A1: LitI4 4
  loc_60A7A6: EqI4
  loc_60A7A7: FFreeVar var_C8 = ""
  loc_60A7AE: BranchF loc_60A7BA
  loc_60A7B3: Resume
  loc_60A7B7: Branch loc_60A7BF
  loc_60A7BE: ExitProcHresult
  loc_60A7C3: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D25A8
  'Data Table: 42AF9C
  loc_5D2590: ILdRf Me
  loc_5D2593: FStAdNoPop
  loc_5D2597: ImpAdLdRf MemVar_7520D4
  loc_5D259A: NewIfNullPr Global
  loc_5D259D: Global.Unload from_stack_1
  loc_5D25A2: FFree1Ad var_88
  loc_5D25A5: ExitProcHresult
End Sub

Private Sub TestTimer_Timer() '5D78A0
  'Data Table: 42AF9C
  loc_5D7874: LitI2_Byte 0
  loc_5D7876: FLdPrThis
  loc_5D7877: VCallAd Control_ID_TestTimer
  loc_5D787A: FStAdFunc var_88
  loc_5D787D: FLdPr var_88
  loc_5D7880: Me.Enabled = from_stack_1b
  loc_5D7885: FFree1Ad var_88
  loc_5D7888: ILdRf Me
  loc_5D788B: FStAdNoPop
  loc_5D788F: ImpAdLdRf MemVar_7520D4
  loc_5D7892: NewIfNullPr Global
  loc_5D7895: Global.Unload from_stack_1
  loc_5D789A: FFree1Ad var_88
  loc_5D789D: ExitProcHresult
End Sub

Private Sub Totales_Click() '5DCC28
  'Data Table: 42AF9C
  loc_5DCBE0: FLdRfVar var_8A
  loc_5DCBE3: FLdPrThis
  loc_5DCBE4: VCallAd Control_ID_Totales
  loc_5DCBE7: FStAdFunc var_88
  loc_5DCBEA: FLdPr var_88
  loc_5DCBED:  = Me.Value
  loc_5DCBF2: FLdI2 var_8A
  loc_5DCBF5: CBoolUI1
  loc_5DCBF7: FLdPr Me
  loc_5DCBFA: MemStI2 global_72
  loc_5DCBFD: FFree1Ad var_88
  loc_5DCC00: FLdRfVar var_8A
  loc_5DCC03: FLdPrThis
  loc_5DCC04: VCallAd Control_ID_Valores
  loc_5DCC07: FStAdFunc var_88
  loc_5DCC0A: FLdPr var_88
  loc_5DCC0D:  = Me.ListIndex
  loc_5DCC12: FLdI2 var_8A
  loc_5DCC15: LitI2_Byte 1
  loc_5DCC17: AddI2
  loc_5DCC18: CUI1I2
  loc_5DCC1A: PopTmpLdAd1
  loc_5DCC1E: from_stack_2v = Proc_134_28_6D01C4(from_stack_1v)
  loc_5DCC23: FFree1Ad var_88
  loc_5DCC26: ExitProcHresult
End Sub

Private Sub Valores_Click() '5D7840
  'Data Table: 42AF9C
  loc_5D7814: from_stack_1v = Proc_134_18_665FE4()
  loc_5D7819: FLdRfVar var_8A
  loc_5D781C: FLdPrThis
  loc_5D781D: VCallAd Control_ID_Valores
  loc_5D7820: FStAdFunc var_88
  loc_5D7823: FLdPr var_88
  loc_5D7826:  = Me.ListIndex
  loc_5D782B: FLdI2 var_8A
  loc_5D782E: LitI2_Byte 1
  loc_5D7830: AddI2
  loc_5D7831: CUI1I2
  loc_5D7833: PopTmpLdAd1
  loc_5D7837: from_stack_2v = Proc_134_28_6D01C4(from_stack_1v)
  loc_5D783C: FFree1Ad var_88
  loc_5D783F: ExitProcHresult
End Sub

Private Sub Form_Load() '69E8CC
  'Data Table: 42AF9C
  loc_69E220: LitI2_Byte 0
  loc_69E222: CR8I2
  loc_69E223: PopFPR4
  loc_69E224: FLdPrThis
  loc_69E225: Me.Top = from_stack_1s
  loc_69E22A: LitI2_Byte 0
  loc_69E22C: CR8I2
  loc_69E22D: PopFPR4
  loc_69E22E: FLdPrThis
  loc_69E22F: Me.Left = from_stack_1s
  loc_69E234: FLdRfVar var_8C
  loc_69E237: FLdRfVar var_88
  loc_69E23A: ImpAdLdRf MemVar_7520D4
  loc_69E23D: NewIfNullPr Global
  loc_69E240:  = Global.Screen
  loc_69E245: FLdPr var_88
  loc_69E248:  = Screen.TwipsPerPixelX
  loc_69E24D: LitI2 800
  loc_69E250: CR8I2
  loc_69E251: FLdFPR4 var_8C
  loc_69E254: MulR8
  loc_69E255: PopFPR4
  loc_69E256: FLdPrThis
  loc_69E257: Me.Width = from_stack_1s
  loc_69E25C: FFree1Ad var_88
  loc_69E25F: FLdRfVar var_8C
  loc_69E262: FLdRfVar var_88
  loc_69E265: ImpAdLdRf MemVar_7520D4
  loc_69E268: NewIfNullPr Global
  loc_69E26B:  = Global.Screen
  loc_69E270: FLdPr var_88
  loc_69E273:  = Screen.TwipsPerPixelX
  loc_69E278: LitI2 600
  loc_69E27B: CR8I2
  loc_69E27C: FLdFPR4 var_8C
  loc_69E27F: MulR8
  loc_69E280: PopFPR4
  loc_69E281: FLdPrThis
  loc_69E282: Me.Height = from_stack_1s
  loc_69E287: FFree1Ad var_88
  loc_69E28A: LitVarI4
  loc_69E292: LitI4 1
  loc_69E297: FLdPr Me
  loc_69E29A: MemLdRfVar from_stack_1.global_6576
  loc_69E29D: Ary1StVar
  loc_69E29E: LitVarI4
  loc_69E2A6: LitI4 2
  loc_69E2AB: FLdPr Me
  loc_69E2AE: MemLdRfVar from_stack_1.global_6576
  loc_69E2B1: Ary1StVar
  loc_69E2B2: LitVarI4
  loc_69E2BA: LitI4 3
  loc_69E2BF: FLdPr Me
  loc_69E2C2: MemLdRfVar from_stack_1.global_6576
  loc_69E2C5: Ary1StVar
  loc_69E2C6: LitVarI4
  loc_69E2CE: LitI4 4
  loc_69E2D3: FLdPr Me
  loc_69E2D6: MemLdRfVar from_stack_1.global_6576
  loc_69E2D9: Ary1StVar
  loc_69E2DA: LitVarI4
  loc_69E2E2: LitI4 5
  loc_69E2E7: FLdPr Me
  loc_69E2EA: MemLdRfVar from_stack_1.global_6576
  loc_69E2ED: Ary1StVar
  loc_69E2EE: LitVarI4
  loc_69E2F6: LitI4 6
  loc_69E2FB: FLdPr Me
  loc_69E2FE: MemLdRfVar from_stack_1.global_6576
  loc_69E301: Ary1StVar
  loc_69E302: LitVarI4
  loc_69E30A: LitI4 7
  loc_69E30F: FLdPr Me
  loc_69E312: MemLdRfVar from_stack_1.global_6576
  loc_69E315: Ary1StVar
  loc_69E316: LitVarI4
  loc_69E31E: LitI4 8
  loc_69E323: FLdPr Me
  loc_69E326: MemLdRfVar from_stack_1.global_6576
  loc_69E329: Ary1StVar
  loc_69E32A: LitVarI4
  loc_69E332: LitI4 9
  loc_69E337: FLdPr Me
  loc_69E33A: MemLdRfVar from_stack_1.global_6576
  loc_69E33D: Ary1StVar
  loc_69E33E: LitVarI4
  loc_69E346: LitI4 &HA
  loc_69E34B: FLdPr Me
  loc_69E34E: MemLdRfVar from_stack_1.global_6576
  loc_69E351: Ary1StVar
  loc_69E352: FLdRfVar var_1D8
  loc_69E355: LitVar_Missing var_1D4
  loc_69E358: LitVar_Missing var_1B4
  loc_69E35B: LitVar_Missing var_194
  loc_69E35E: LitVar_Missing var_174
  loc_69E361: LitVar_Missing var_154
  loc_69E364: LitVar_Missing var_134
  loc_69E367: LitVar_Missing var_114
  loc_69E36A: LitVar_Missing var_F4
  loc_69E36D: LitVar_Missing var_D4
  loc_69E370: LitVar_Missing var_B4
  loc_69E373: LitStr "Ventas por tipo de combustible"
  loc_69E376: FStStrCopy var_A4
  loc_69E379: FLdRfVar var_A4
  loc_69E37C: LitI4 1
  loc_69E381: PopTmpLdAdStr var_8C
  loc_69E384: LitI2_Byte &HE
  loc_69E386: PopTmpLdAd2 var_9E
  loc_69E389: ImpAdLdRf MemVar_74C7D0
  loc_69E38C: NewIfNullPr clsMsg
  loc_69E38F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E394: ILdRf var_1D8
  loc_69E397: FLdPr Me
  loc_69E39A: MemStStrCopy
  loc_69E39E: FFreeStr var_A4 = ""
  loc_69E3A5: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E3BC: FLdRfVar var_1D8
  loc_69E3BF: LitVar_Missing var_1D4
  loc_69E3C2: LitVar_Missing var_1B4
  loc_69E3C5: LitVar_Missing var_194
  loc_69E3C8: LitVar_Missing var_174
  loc_69E3CB: LitVar_Missing var_154
  loc_69E3CE: LitVar_Missing var_134
  loc_69E3D1: LitVar_Missing var_114
  loc_69E3D4: LitVar_Missing var_F4
  loc_69E3D7: LitVar_Missing var_D4
  loc_69E3DA: LitVar_Missing var_B4
  loc_69E3DD: LitStr "Ventas por franja horaria"
  loc_69E3E0: FStStrCopy var_A4
  loc_69E3E3: FLdRfVar var_A4
  loc_69E3E6: LitI4 2
  loc_69E3EB: PopTmpLdAdStr var_8C
  loc_69E3EE: LitI2_Byte &HE
  loc_69E3F0: PopTmpLdAd2 var_9E
  loc_69E3F3: ImpAdLdRf MemVar_74C7D0
  loc_69E3F6: NewIfNullPr clsMsg
  loc_69E3F9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E3FE: ILdRf var_1D8
  loc_69E401: FLdPr Me
  loc_69E404: MemStStrCopy
  loc_69E408: FFreeStr var_A4 = ""
  loc_69E40F: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E426: FLdRfVar var_1D8
  loc_69E429: LitVar_Missing var_1D4
  loc_69E42C: LitVar_Missing var_1B4
  loc_69E42F: LitVar_Missing var_194
  loc_69E432: LitVar_Missing var_174
  loc_69E435: LitVar_Missing var_154
  loc_69E438: LitVar_Missing var_134
  loc_69E43B: LitVar_Missing var_114
  loc_69E43E: LitVar_Missing var_F4
  loc_69E441: LitVar_Missing var_D4
  loc_69E444: LitVar_Missing var_B4
  loc_69E447: LitStr "Montos"
  loc_69E44A: FStStrCopy var_A4
  loc_69E44D: FLdRfVar var_A4
  loc_69E450: LitI4 3
  loc_69E455: PopTmpLdAdStr var_8C
  loc_69E458: LitI2_Byte &HE
  loc_69E45A: PopTmpLdAd2 var_9E
  loc_69E45D: ImpAdLdRf MemVar_74C7D0
  loc_69E460: NewIfNullPr clsMsg
  loc_69E463: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E468: ILdRf var_1D8
  loc_69E46B: FLdPr Me
  loc_69E46E: MemStStrCopy
  loc_69E472: FFreeStr var_A4 = ""
  loc_69E479: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E490: FLdRfVar var_1D8
  loc_69E493: LitVar_Missing var_1D4
  loc_69E496: LitVar_Missing var_1B4
  loc_69E499: LitVar_Missing var_194
  loc_69E49C: LitVar_Missing var_174
  loc_69E49F: LitVar_Missing var_154
  loc_69E4A2: LitVar_Missing var_134
  loc_69E4A5: LitVar_Missing var_114
  loc_69E4A8: LitVar_Missing var_F4
  loc_69E4AB: LitVar_Missing var_D4
  loc_69E4AE: LitVar_Missing var_B4
  loc_69E4B1: LitStr "Volumenes"
  loc_69E4B4: FStStrCopy var_A4
  loc_69E4B7: FLdRfVar var_A4
  loc_69E4BA: LitI4 4
  loc_69E4BF: PopTmpLdAdStr var_8C
  loc_69E4C2: LitI2_Byte &HE
  loc_69E4C4: PopTmpLdAd2 var_9E
  loc_69E4C7: ImpAdLdRf MemVar_74C7D0
  loc_69E4CA: NewIfNullPr clsMsg
  loc_69E4CD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E4D2: ILdRf var_1D8
  loc_69E4D5: FLdPr Me
  loc_69E4D8: MemStStrCopy
  loc_69E4DC: FFreeStr var_A4 = ""
  loc_69E4E3: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E4FA: FLdRfVar var_1D8
  loc_69E4FD: LitVar_Missing var_1D4
  loc_69E500: LitVar_Missing var_1B4
  loc_69E503: LitVar_Missing var_194
  loc_69E506: LitVar_Missing var_174
  loc_69E509: LitVar_Missing var_154
  loc_69E50C: LitVar_Missing var_134
  loc_69E50F: LitVar_Missing var_114
  loc_69E512: LitVar_Missing var_F4
  loc_69E515: LitVar_Missing var_D4
  loc_69E518: LitVar_Missing var_B4
  loc_69E51B: LitStr "Despachos"
  loc_69E51E: FStStrCopy var_A4
  loc_69E521: FLdRfVar var_A4
  loc_69E524: LitI4 5
  loc_69E529: PopTmpLdAdStr var_8C
  loc_69E52C: LitI2_Byte &HE
  loc_69E52E: PopTmpLdAd2 var_9E
  loc_69E531: ImpAdLdRf MemVar_74C7D0
  loc_69E534: NewIfNullPr clsMsg
  loc_69E537: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E53C: ILdRf var_1D8
  loc_69E53F: FLdPr Me
  loc_69E542: MemStStrCopy
  loc_69E546: FFreeStr var_A4 = ""
  loc_69E54D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E564: FLdRfVar var_1D8
  loc_69E567: LitVar_Missing var_1D4
  loc_69E56A: LitVar_Missing var_1B4
  loc_69E56D: LitVar_Missing var_194
  loc_69E570: LitVar_Missing var_174
  loc_69E573: LitVar_Missing var_154
  loc_69E576: LitVar_Missing var_134
  loc_69E579: LitVar_Missing var_114
  loc_69E57C: LitVar_Missing var_F4
  loc_69E57F: LitVar_Missing var_D4
  loc_69E582: LitVar_Missing var_B4
  loc_69E585: LitStr "Monto Promedio"
  loc_69E588: FStStrCopy var_A4
  loc_69E58B: FLdRfVar var_A4
  loc_69E58E: LitI4 6
  loc_69E593: PopTmpLdAdStr var_8C
  loc_69E596: LitI2_Byte &HE
  loc_69E598: PopTmpLdAd2 var_9E
  loc_69E59B: ImpAdLdRf MemVar_74C7D0
  loc_69E59E: NewIfNullPr clsMsg
  loc_69E5A1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E5A6: ILdRf var_1D8
  loc_69E5A9: FLdPr Me
  loc_69E5AC: MemStStrCopy
  loc_69E5B0: FFreeStr var_A4 = ""
  loc_69E5B7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E5CE: FLdRfVar var_1D8
  loc_69E5D1: LitVar_Missing var_1D4
  loc_69E5D4: LitVar_Missing var_1B4
  loc_69E5D7: LitVar_Missing var_194
  loc_69E5DA: LitVar_Missing var_174
  loc_69E5DD: LitVar_Missing var_154
  loc_69E5E0: LitVar_Missing var_134
  loc_69E5E3: LitVar_Missing var_114
  loc_69E5E6: LitVar_Missing var_F4
  loc_69E5E9: LitVar_Missing var_D4
  loc_69E5EC: LitVar_Missing var_B4
  loc_69E5EF: LitStr "Volumen Promedio"
  loc_69E5F2: FStStrCopy var_A4
  loc_69E5F5: FLdRfVar var_A4
  loc_69E5F8: LitI4 7
  loc_69E5FD: PopTmpLdAdStr var_8C
  loc_69E600: LitI2_Byte &HE
  loc_69E602: PopTmpLdAd2 var_9E
  loc_69E605: ImpAdLdRf MemVar_74C7D0
  loc_69E608: NewIfNullPr clsMsg
  loc_69E60B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E610: ILdRf var_1D8
  loc_69E613: FLdPr Me
  loc_69E616: MemStStrCopy
  loc_69E61A: FFreeStr var_A4 = ""
  loc_69E621: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E638: FLdRfVar var_1D8
  loc_69E63B: LitVar_Missing var_1D4
  loc_69E63E: LitVar_Missing var_1B4
  loc_69E641: LitVar_Missing var_194
  loc_69E644: LitVar_Missing var_174
  loc_69E647: LitVar_Missing var_154
  loc_69E64A: LitVar_Missing var_134
  loc_69E64D: LitVar_Missing var_114
  loc_69E650: LitVar_Missing var_F4
  loc_69E653: LitVar_Missing var_D4
  loc_69E656: LitVar_Missing var_B4
  loc_69E659: LitStr "Chequee que la impresora tenga papel y este en Ready."
  loc_69E65C: FStStrCopy var_A4
  loc_69E65F: FLdRfVar var_A4
  loc_69E662: LitI4 8
  loc_69E667: PopTmpLdAdStr var_8C
  loc_69E66A: LitI2_Byte &HE
  loc_69E66C: PopTmpLdAd2 var_9E
  loc_69E66F: ImpAdLdRf MemVar_74C7D0
  loc_69E672: NewIfNullPr clsMsg
  loc_69E675: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E67A: ILdRf var_1D8
  loc_69E67D: FLdPr Me
  loc_69E680: MemStStrCopy
  loc_69E684: FFreeStr var_A4 = ""
  loc_69E68B: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E6A2: FLdRfVar var_1D8
  loc_69E6A5: LitVar_Missing var_1D4
  loc_69E6A8: LitVar_Missing var_1B4
  loc_69E6AB: LitVar_Missing var_194
  loc_69E6AE: LitVar_Missing var_174
  loc_69E6B1: LitVar_Missing var_154
  loc_69E6B4: LitVar_Missing var_134
  loc_69E6B7: LitVar_Missing var_114
  loc_69E6BA: LitVar_Missing var_F4
  loc_69E6BD: LitVar_Missing var_D4
  loc_69E6C0: LitVar_Missing var_B4
  loc_69E6C3: LitStr "Error en la impresora"
  loc_69E6C6: FStStrCopy var_A4
  loc_69E6C9: FLdRfVar var_A4
  loc_69E6CC: LitI4 9
  loc_69E6D1: PopTmpLdAdStr var_8C
  loc_69E6D4: LitI2_Byte &HE
  loc_69E6D6: PopTmpLdAd2 var_9E
  loc_69E6D9: ImpAdLdRf MemVar_74C7D0
  loc_69E6DC: NewIfNullPr clsMsg
  loc_69E6DF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E6E4: ILdRf var_1D8
  loc_69E6E7: FLdPr Me
  loc_69E6EA: MemStStrCopy
  loc_69E6EE: FFreeStr var_A4 = ""
  loc_69E6F5: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E70C: FLdRfVar var_1D8
  loc_69E70F: LitVar_Missing var_1D4
  loc_69E712: LitVar_Missing var_1B4
  loc_69E715: LitVar_Missing var_194
  loc_69E718: LitVar_Missing var_174
  loc_69E71B: LitVar_Missing var_154
  loc_69E71E: LitVar_Missing var_134
  loc_69E721: LitVar_Missing var_114
  loc_69E724: LitVar_Missing var_F4
  loc_69E727: LitVar_Missing var_D4
  loc_69E72A: LitVar_Missing var_B4
  loc_69E72D: LitStr "&Imprimir"
  loc_69E730: FStStrCopy var_A4
  loc_69E733: FLdRfVar var_A4
  loc_69E736: LitI4 &H10
  loc_69E73B: PopTmpLdAdStr var_8C
  loc_69E73E: LitI2_Byte &HE
  loc_69E740: PopTmpLdAd2 var_9E
  loc_69E743: ImpAdLdRf MemVar_74C7D0
  loc_69E746: NewIfNullPr clsMsg
  loc_69E749: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E74E: FLdZeroAd var_1D8
  loc_69E751: CVarStr var_1E8
  loc_69E754: PopAdLdVar
  loc_69E755: FLdPrThis
  loc_69E756: VCallAd Control_ID_SSCommand1
  loc_69E759: FStAdFunc var_88
  loc_69E75C: FLdPr var_88
  loc_69E75F: LateIdSt
  loc_69E764: FFree1Str var_A4
  loc_69E767: FFree1Ad var_88
  loc_69E76A: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_69E783: FLdRfVar var_1D8
  loc_69E786: LitVar_Missing var_1D4
  loc_69E789: LitVar_Missing var_1B4
  loc_69E78C: LitVar_Missing var_194
  loc_69E78F: LitVar_Missing var_174
  loc_69E792: LitVar_Missing var_154
  loc_69E795: LitVar_Missing var_134
  loc_69E798: LitVar_Missing var_114
  loc_69E79B: LitVar_Missing var_F4
  loc_69E79E: LitVar_Missing var_D4
  loc_69E7A1: LitVar_Missing var_B4
  loc_69E7A4: LitStr "&Salir"
  loc_69E7A7: FStStrCopy var_A4
  loc_69E7AA: FLdRfVar var_A4
  loc_69E7AD: LitI4 &H11
  loc_69E7B2: PopTmpLdAdStr var_8C
  loc_69E7B5: LitI2_Byte &HE
  loc_69E7B7: PopTmpLdAd2 var_9E
  loc_69E7BA: ImpAdLdRf MemVar_74C7D0
  loc_69E7BD: NewIfNullPr clsMsg
  loc_69E7C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E7C5: FLdZeroAd var_1D8
  loc_69E7C8: CVarStr var_1E8
  loc_69E7CB: PopAdLdVar
  loc_69E7CC: FLdPrThis
  loc_69E7CD: VCallAd Control_ID_SSCommand2
  loc_69E7D0: FStAdFunc var_88
  loc_69E7D3: FLdPr var_88
  loc_69E7D6: LateIdSt
  loc_69E7DB: FFree1Str var_A4
  loc_69E7DE: FFree1Ad var_88
  loc_69E7E1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_69E7FA: FLdRfVar var_1D8
  loc_69E7FD: LitVar_Missing var_1D4
  loc_69E800: LitVar_Missing var_1B4
  loc_69E803: LitVar_Missing var_194
  loc_69E806: LitVar_Missing var_174
  loc_69E809: LitVar_Missing var_154
  loc_69E80C: LitVar_Missing var_134
  loc_69E80F: LitVar_Missing var_114
  loc_69E812: LitVar_Missing var_F4
  loc_69E815: LitVar_Missing var_D4
  loc_69E818: LitVar_Missing var_B4
  loc_69E81B: LitStr "Visualiza solo totales"
  loc_69E81E: FStStrCopy var_A4
  loc_69E821: FLdRfVar var_A4
  loc_69E824: LitI4 &H12
  loc_69E829: PopTmpLdAdStr var_8C
  loc_69E82C: LitI2_Byte &HE
  loc_69E82E: PopTmpLdAd2 var_9E
  loc_69E831: ImpAdLdRf MemVar_74C7D0
  loc_69E834: NewIfNullPr clsMsg
  loc_69E837: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69E83C: ILdRf var_1D8
  loc_69E83F: FLdPrThis
  loc_69E840: VCallAd Control_ID_Totales
  loc_69E843: FStAdFunc var_88
  loc_69E846: FLdPr var_88
  loc_69E849: Me.Caption = from_stack_1
  loc_69E84E: FFreeStr var_A4 = ""
  loc_69E855: FFree1Ad var_88
  loc_69E858: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_69E86F: LitVarStr var_9C, "Aguarde unos Instantes."
  loc_69E874: LitI4 &HD
  loc_69E879: FLdRfVar var_B4
  loc_69E87C: ImpAdCallFPR4  = Chr()
  loc_69E881: FLdRfVar var_B4
  loc_69E884: AddVar var_D4
  loc_69E888: LitVarStr var_C4, "(Está operación podria demorar unos minutos)"
  loc_69E88D: AddVar var_F4
  loc_69E891: CStrVarVal var_A4
  loc_69E895: FLdPrThis
  loc_69E896: VCallAd Control_ID_lbGraphicWait
  loc_69E899: FStAdFunc var_88
  loc_69E89C: FLdPr var_88
  loc_69E89F: Me.Caption = from_stack_1
  loc_69E8A4: FFree1Str var_A4
  loc_69E8A7: FFree1Ad var_88
  loc_69E8AA: FFreeVar var_B4 = "": var_D4 = ""
  loc_69E8B3: LitVar_FALSE
  loc_69E8B7: PopAdLdVar
  loc_69E8B8: FLdPrThis
  loc_69E8B9: VCallAd Control_ID_Grafico
  loc_69E8BC: FStAdFunc var_88
  loc_69E8BF: FLdPr var_88
  loc_69E8C2: LateIdSt
  loc_69E8C7: FFree1Ad var_88
  loc_69E8CA: ExitProcHresult
End Sub

Private Sub Form_Activate() '5F773C
  'Data Table: 42AF9C
  loc_5F7678: LitI2_Byte 0
  loc_5F767A: FLdPr Me
  loc_5F767D: MemStI2 global_72
  loc_5F7680: from_stack_1v = Proc_134_22_658A0C()
  loc_5F7685: LitI2_Byte 1
  loc_5F7687: CUI1I2
  loc_5F7689: PopTmpLdAd1
  loc_5F768D: from_stack_2v = Proc_134_28_6D01C4(from_stack_1v)
  loc_5F7692: from_stack_1v = Proc_134_18_665FE4()
  loc_5F7697: FLdPr Me
  loc_5F769A: MemLdUI1 TipoGrafico
  loc_5F769E: FStUI1 var_90
  loc_5F76A2: FLdUI1
  loc_5F76A6: LitI2_Byte 1
  loc_5F76A8: CUI1I2
  loc_5F76AA: EqI2
  loc_5F76AB: BranchF loc_5F76CE
  loc_5F76AE: FLdPr Me
  loc_5F76B1: MemLdStr global_6604
  loc_5F76B4: FStStrCopy var_8C
  loc_5F76B7: LitI2_Byte 0
  loc_5F76B9: FLdPrThis
  loc_5F76BA: VCallAd Control_ID_Totales
  loc_5F76BD: FStAdFunc var_94
  loc_5F76C0: FLdPr var_94
  loc_5F76C3: Me.Visible = from_stack_1b
  loc_5F76C8: FFree1Ad var_94
  loc_5F76CB: Branch loc_5F770C
  loc_5F76CE: FLdUI1
  loc_5F76D2: LitI2_Byte 2
  loc_5F76D4: CUI1I2
  loc_5F76D6: EqI2
  loc_5F76D7: BranchF loc_5F76FA
  loc_5F76DA: FLdPr Me
  loc_5F76DD: MemLdStr global_6608
  loc_5F76E0: FStStrCopy var_8C
  loc_5F76E3: LitI2_Byte &HFF
  loc_5F76E5: FLdPrThis
  loc_5F76E6: VCallAd Control_ID_Totales
  loc_5F76E9: FStAdFunc var_94
  loc_5F76EC: FLdPr var_94
  loc_5F76EF: Me.Visible = from_stack_1b
  loc_5F76F4: FFree1Ad var_94
  loc_5F76F7: Branch loc_5F770C
  loc_5F76FA: FLdUI1
  loc_5F76FE: LitI2_Byte 3
  loc_5F7700: CUI1I2
  loc_5F7702: EqI2
  loc_5F7703: BranchF loc_5F770C
  loc_5F7706: LitStr vbNullString
  loc_5F7709: FStStrCopy var_8C
  loc_5F770C: ILdRf var_8C
  loc_5F770F: FLdPrThis
  loc_5F7710: VCallAd Control_ID_Titulo
  loc_5F7713: FStAdFunc var_94
  loc_5F7716: FLdPr var_94
  loc_5F7719: Me.Caption = from_stack_1
  loc_5F771E: FFree1Ad var_94
  loc_5F7721: FLdPr Me
  loc_5F7724: MemLdStr RangoTexto
  loc_5F7727: FLdPrThis
  loc_5F7728: VCallAd Control_ID_Rangos
  loc_5F772B: FStAdFunc var_94
  loc_5F772E: FLdPr var_94
  loc_5F7731: Me.Caption = from_stack_1
  loc_5F7736: FFree1Ad var_94
  loc_5F7739: ExitProcHresult
  loc_5F773A: FnStrComp3
End Sub

Public Function TipoGraficoGet() '42B7DC
  TipoGraficoGet = TipoGrafico
End Function

Public Sub TipoGraficoPut(Value) '42B7EB
  TipoGrafico = Value
End Sub

Public Function rangeGet() '42B7FA
  rangeGet = range
End Function

Public Sub rangePut(Value) '42B809
  range = Value
End Sub

Public Function hoursGet() '42B818
  hoursGet = hours
End Function

Public Sub hoursPut(Value) '42B827
  hours = Value
End Sub

Public Function bitmapGet() '42B836
  bitmapGet = bitmap
End Function

Public Sub bitmapPut(Value) '42B845
  bitmap = Value
End Sub

Public Function RangoTextoGet() '42B854
  RangoTextoGet = RangoTexto
End Function

Public Sub RangoTextoPut(Value) '42B863
  RangoTexto = Value
End Sub

Public Property Let StatisticType(value) '5CA148
  'Data Table: 42AF9C
  loc_5CA13C: ILdI2 value
  loc_5CA13F: FLdPr Me
  loc_5CA142: MemStI2 global_6600
  loc_5CA145: ExitProcHresult
  loc_5CA146: FStI2 arg_2478
End Sub

Private Function Proc_134_18_665FE4() '665FE4
  'Data Table: 42AF9C
  loc_665C78: LitStr vbNullString
  loc_665C7B: FStStrCopy var_8C
  loc_665C7E: LitI2_Byte 1
  loc_665C80: CUI1I2
  loc_665C82: FLdRfVar var_86
  loc_665C85: FLdRfVar var_8E
  loc_665C88: ImpAdLdRf MemVar_74A220
  loc_665C8B: NewIfNullPr clsProducts
  loc_665C8E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_665C93: FLdI2 var_8E
  loc_665C96: CUI1I2
  loc_665C98: ForUI1 var_92
  loc_665C9E: ImpAdLdUI1
  loc_665CA2: CI2UI1
  loc_665CA4: LitI2_Byte 4
  loc_665CA6: EqI2
  loc_665CA7: ImpAdLdUI1
  loc_665CAB: CI2UI1
  loc_665CAD: LitI2_Byte 5
  loc_665CAF: EqI2
  loc_665CB0: OrI4
  loc_665CB1: BranchF loc_665F47
  loc_665CB4: FLdPr Me
  loc_665CB7: MemLdUI1 TipoGrafico
  loc_665CBB: CI2UI1
  loc_665CBD: LitI2_Byte 2
  loc_665CBF: EqI2
  loc_665CC0: BranchF loc_665E03
  loc_665CC3: FLdRfVar var_8E
  loc_665CC6: FLdUI1
  loc_665CCA: CI2UI1
  loc_665CCC: ImpAdLdRf MemVar_74A220
  loc_665CCF: NewIfNullPr clsProducts
  loc_665CD2:  = clsProducts.hWnd
  loc_665CD7: FLdI2 var_8E
  loc_665CDA: NotI4
  loc_665CDB: FLdPr Me
  loc_665CDE: MemLdI2 global_6600
  loc_665CE1: LitI2_Byte 1
  loc_665CE3: EqI2
  loc_665CE4: NotI4
  loc_665CE5: AndI4
  loc_665CE6: BranchF loc_665D64
  loc_665CE9: ILdRf var_8C
  loc_665CEC: CVarStr var_C4
  loc_665CEF: FLdRfVar var_86
  loc_665CF2: CVarRef
  loc_665CF7: FLdRfVar var_B4
  loc_665CFA: ImpAdCallFPR4  = Str()
  loc_665CFF: FLdRfVar var_B4
  loc_665D02: ConcatVar var_D4
  loc_665D06: LitVarStr var_E4, " = "
  loc_665D0B: ConcatVar var_F4
  loc_665D0F: FLdRfVar var_F8
  loc_665D12: FLdUI1
  loc_665D16: CI2UI1
  loc_665D18: ImpAdLdRf MemVar_74A220
  loc_665D1B: NewIfNullPr clsProducts
  loc_665D23: FLdZeroAd var_F8
  loc_665D26: CVarStr var_108
  loc_665D29: ConcatVar var_118
  loc_665D2D: LitI4 &HD
  loc_665D32: FLdRfVar var_128
  loc_665D35: ImpAdCallFPR4  = Chr()
  loc_665D3A: FLdRfVar var_128
  loc_665D3D: ConcatVar var_138
  loc_665D41: LitVarStr var_148, " "
  loc_665D46: ConcatVar var_158
  loc_665D4A: CStrVarTmp
  loc_665D4B: FStStr var_8C
  loc_665D4E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_665D61: Branch loc_665E00
  loc_665D64: FLdRfVar var_8E
  loc_665D67: FLdUI1
  loc_665D6B: CI2UI1
  loc_665D6D: ImpAdLdRf MemVar_74A220
  loc_665D70: NewIfNullPr clsProducts
  loc_665D73:  = clsProducts.hWnd
  loc_665D78: FLdI2 var_8E
  loc_665D7B: FLdPr Me
  loc_665D7E: MemLdI2 global_6600
  loc_665D81: LitI2_Byte 1
  loc_665D83: EqI2
  loc_665D84: AndI4
  loc_665D85: BranchF loc_665E00
  loc_665D88: ILdRf var_8C
  loc_665D8B: CVarStr var_C4
  loc_665D8E: FLdRfVar var_86
  loc_665D91: CVarRef
  loc_665D96: FLdRfVar var_B4
  loc_665D99: ImpAdCallFPR4  = Str()
  loc_665D9E: FLdRfVar var_B4
  loc_665DA1: ConcatVar var_D4
  loc_665DA5: LitVarStr var_E4, " = "
  loc_665DAA: ConcatVar var_F4
  loc_665DAE: FLdRfVar var_F8
  loc_665DB1: FLdUI1
  loc_665DB5: CI2UI1
  loc_665DB7: ImpAdLdRf MemVar_74A220
  loc_665DBA: NewIfNullPr clsProducts
  loc_665DC2: FLdZeroAd var_F8
  loc_665DC5: CVarStr var_108
  loc_665DC8: ConcatVar var_118
  loc_665DCC: LitI4 &HD
  loc_665DD1: FLdRfVar var_128
  loc_665DD4: ImpAdCallFPR4  = Chr()
  loc_665DD9: FLdRfVar var_128
  loc_665DDC: ConcatVar var_138
  loc_665DE0: LitVarStr var_148, " "
  loc_665DE5: ConcatVar var_158
  loc_665DE9: CStrVarTmp
  loc_665DEA: FStStr var_8C
  loc_665DED: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_665E00: Branch loc_665F44
  loc_665E03: FLdRfVar var_F8
  loc_665E06: FLdPrThis
  loc_665E07: VCallAd Control_ID_Valores
  loc_665E0A: FStAdFunc var_15C
  loc_665E0D: FLdPr var_15C
  loc_665E10:  = Me.Text
  loc_665E15: ILdRf var_F8
  loc_665E18: FLdPr Me
  loc_665E1B: MemLdStr global_6616
  loc_665E1E: EqStr
  loc_665E20: FLdPr Me
  loc_665E23: MemLdUI1 TipoGrafico
  loc_665E27: CI2UI1
  loc_665E29: LitI2_Byte 1
  loc_665E2B: EqI2
  loc_665E2C: AndI4
  loc_665E2D: FFree1Str var_F8
  loc_665E30: FFree1Ad var_15C
  loc_665E33: BranchF loc_665ECC
  loc_665E36: FLdRfVar var_8E
  loc_665E39: FLdUI1
  loc_665E3D: CI2UI1
  loc_665E3F: ImpAdLdRf MemVar_74A220
  loc_665E42: NewIfNullPr clsProducts
  loc_665E45:  = clsProducts.hWnd
  loc_665E4A: FLdI2 var_8E
  loc_665E4D: NotI4
  loc_665E4E: BranchF loc_665EC9
  loc_665E51: ILdRf var_8C
  loc_665E54: CVarStr var_C4
  loc_665E57: FLdRfVar var_86
  loc_665E5A: CVarRef
  loc_665E5F: FLdRfVar var_B4
  loc_665E62: ImpAdCallFPR4  = Str()
  loc_665E67: FLdRfVar var_B4
  loc_665E6A: ConcatVar var_D4
  loc_665E6E: LitVarStr var_E4, " = "
  loc_665E73: ConcatVar var_F4
  loc_665E77: FLdRfVar var_F8
  loc_665E7A: FLdUI1
  loc_665E7E: CI2UI1
  loc_665E80: ImpAdLdRf MemVar_74A220
  loc_665E83: NewIfNullPr clsProducts
  loc_665E8B: FLdZeroAd var_F8
  loc_665E8E: CVarStr var_108
  loc_665E91: ConcatVar var_118
  loc_665E95: LitI4 &HD
  loc_665E9A: FLdRfVar var_128
  loc_665E9D: ImpAdCallFPR4  = Chr()
  loc_665EA2: FLdRfVar var_128
  loc_665EA5: ConcatVar var_138
  loc_665EA9: LitVarStr var_148, " "
  loc_665EAE: ConcatVar var_158
  loc_665EB2: CStrVarTmp
  loc_665EB3: FStStr var_8C
  loc_665EB6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_665EC9: Branch loc_665F44
  loc_665ECC: ILdRf var_8C
  loc_665ECF: CVarStr var_C4
  loc_665ED2: FLdRfVar var_86
  loc_665ED5: CVarRef
  loc_665EDA: FLdRfVar var_B4
  loc_665EDD: ImpAdCallFPR4  = Str()
  loc_665EE2: FLdRfVar var_B4
  loc_665EE5: ConcatVar var_D4
  loc_665EE9: LitVarStr var_E4, " = "
  loc_665EEE: ConcatVar var_F4
  loc_665EF2: FLdRfVar var_F8
  loc_665EF5: FLdUI1
  loc_665EF9: CI2UI1
  loc_665EFB: ImpAdLdRf MemVar_74A220
  loc_665EFE: NewIfNullPr clsProducts
  loc_665F06: FLdZeroAd var_F8
  loc_665F09: CVarStr var_108
  loc_665F0C: ConcatVar var_118
  loc_665F10: LitI4 &HD
  loc_665F15: FLdRfVar var_128
  loc_665F18: ImpAdCallFPR4  = Chr()
  loc_665F1D: FLdRfVar var_128
  loc_665F20: ConcatVar var_138
  loc_665F24: LitVarStr var_148, " "
  loc_665F29: ConcatVar var_158
  loc_665F2D: CStrVarTmp
  loc_665F2E: FStStr var_8C
  loc_665F31: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_665F44: Branch loc_665FBF
  loc_665F47: ILdRf var_8C
  loc_665F4A: CVarStr var_C4
  loc_665F4D: FLdRfVar var_86
  loc_665F50: CVarRef
  loc_665F55: FLdRfVar var_B4
  loc_665F58: ImpAdCallFPR4  = Str()
  loc_665F5D: FLdRfVar var_B4
  loc_665F60: ConcatVar var_D4
  loc_665F64: LitVarStr var_E4, " = "
  loc_665F69: ConcatVar var_F4
  loc_665F6D: FLdRfVar var_F8
  loc_665F70: FLdUI1
  loc_665F74: CI2UI1
  loc_665F76: ImpAdLdRf MemVar_74A220
  loc_665F79: NewIfNullPr clsProducts
  loc_665F81: FLdZeroAd var_F8
  loc_665F84: CVarStr var_108
  loc_665F87: ConcatVar var_118
  loc_665F8B: LitI4 &HD
  loc_665F90: FLdRfVar var_128
  loc_665F93: ImpAdCallFPR4  = Chr()
  loc_665F98: FLdRfVar var_128
  loc_665F9B: ConcatVar var_138
  loc_665F9F: LitVarStr var_148, " "
  loc_665FA4: ConcatVar var_158
  loc_665FA8: CStrVarTmp
  loc_665FA9: FStStr var_8C
  loc_665FAC: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = ""
  loc_665FBF: FLdRfVar var_86
  loc_665FC2: NextUI1
  loc_665FC8: ILdRf var_8C
  loc_665FCB: FLdPrThis
  loc_665FCC: VCallAd Control_ID_Label2
  loc_665FCF: FStAdFunc var_15C
  loc_665FD2: FLdPr var_15C
  loc_665FD5: Me.Caption = from_stack_1
  loc_665FDA: FFree1Ad var_15C
  loc_665FDD: LitStr vbNullString
  loc_665FE0: FStStrCopy var_8C
  loc_665FE3: ExitProcHresult
End Function

Private Function Proc_134_19_5ECAE4(arg_24) '5ECAE4
  'Data Table: 42AF9C
  loc_5ECA54: FLdPrThis
  loc_5ECA55: VCallAd Control_ID_Valores
  loc_5ECA58: FStAdFunc var_88
  loc_5ECA5B: FLdPr var_88
  loc_5ECA5E: Me.Clear
  loc_5ECA63: FFree1Ad var_88
  loc_5ECA66: LitVar_Missing var_98
  loc_5ECA69: PopAdLdVar
  loc_5ECA6A: FLdPr Me
  loc_5ECA6D: MemLdStr global_6612
  loc_5ECA70: FLdPrThis
  loc_5ECA71: VCallAd Control_ID_Valores
  loc_5ECA74: FStAdFunc var_88
  loc_5ECA77: FLdPr var_88
  loc_5ECA7A: Me.AddItem from_stack_1, from_stack_2
  loc_5ECA7F: FFree1Ad var_88
  loc_5ECA82: LitVar_Missing var_98
  loc_5ECA85: PopAdLdVar
  loc_5ECA86: FLdPr Me
  loc_5ECA89: MemLdStr global_6616
  loc_5ECA8C: FLdPrThis
  loc_5ECA8D: VCallAd Control_ID_Valores
  loc_5ECA90: FStAdFunc var_88
  loc_5ECA93: FLdPr var_88
  loc_5ECA96: Me.AddItem from_stack_1, from_stack_2
  loc_5ECA9B: FFree1Ad var_88
  loc_5ECA9E: ImpAdLdUI1
  loc_5ECAA2: CI2UI1
  loc_5ECAA4: LitI2_Byte 4
  loc_5ECAA6: EqI2
  loc_5ECAA7: ImpAdLdUI1
  loc_5ECAAB: CI2UI1
  loc_5ECAAD: LitI2_Byte 5
  loc_5ECAAF: EqI2
  loc_5ECAB0: OrI4
  loc_5ECAB1: BranchF loc_5ECACD
  loc_5ECAB4: LitVar_Missing var_98
  loc_5ECAB7: PopAdLdVar
  loc_5ECAB8: LitStr "Volumenes GNC"
  loc_5ECABB: FLdPrThis
  loc_5ECABC: VCallAd Control_ID_Valores
  loc_5ECABF: FStAdFunc var_88
  loc_5ECAC2: FLdPr var_88
  loc_5ECAC5: Me.AddItem from_stack_1, from_stack_2
  loc_5ECACA: FFree1Ad var_88
  loc_5ECACD: LitI2_Byte 0
  loc_5ECACF: FLdPrThis
  loc_5ECAD0: VCallAd Control_ID_Valores
  loc_5ECAD3: FStAdFunc var_88
  loc_5ECAD6: FLdPr var_88
  loc_5ECAD9: Me.ListIndex = from_stack_1
  loc_5ECADE: FFree1Ad var_88
  loc_5ECAE1: ExitProcHresult
  loc_5ECAE2: FLdZeroAd arg_2410
End Function

Private Function Proc_134_20_5DAB24(arg_C) '5DAB24
  'Data Table: 42AF9C
  loc_5DAAE4: ILdI2 arg_C
  loc_5DAAE7: CI4UI1
  loc_5DAAE8: ImpAdLdRf MemVar_74C6FC
  loc_5DAAEB: Ary1LdPr
  loc_5DAAEC: MemLdFPR8 global_8
  loc_5DAAEF: CCyR4
  loc_5DAAF0: ILdI2 arg_C
  loc_5DAAF3: CI4UI1
  loc_5DAAF4: FLdPr Me
  loc_5DAAF7: MemLdRfVar from_stack_1.global_156
  loc_5DAAFA: AryInRecLdPr
  loc_5DAB00: MemStR8 global_0
  loc_5DAB03: ILdI2 arg_C
  loc_5DAB06: CI4UI1
  loc_5DAB07: ImpAdLdRf MemVar_74C6FC
  loc_5DAB0A: Ary1LdPr
  loc_5DAB0B: MemLdFPR8 global_0
  loc_5DAB0E: CCyR4
  loc_5DAB0F: ILdI2 arg_C
  loc_5DAB12: CI4UI1
  loc_5DAB13: FLdPr Me
  loc_5DAB16: MemLdRfVar from_stack_1.global_76
  loc_5DAB19: AryInRecLdPr
  loc_5DAB1F: MemStR8 global_0
  loc_5DAB22: ExitProcHresult
  loc_5DAB23: Ary1LdRf
End Function

Private Function Proc_134_21_5E1B9C() '5E1B9C
  'Data Table: 42AF9C
  loc_5E1B38: LitI2_Byte 1
  loc_5E1B3A: FLdRfVar var_86
  loc_5E1B3D: FLdRfVar var_88
  loc_5E1B40: ImpAdLdRf MemVar_74A220
  loc_5E1B43: NewIfNullPr clsProducts
  loc_5E1B46: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5E1B4B: FLdI2 var_88
  loc_5E1B4E: ForI2 var_8C
  loc_5E1B54: ImpAdLdUI1
  loc_5E1B58: CI2UI1
  loc_5E1B5A: LitI2_Byte 4
  loc_5E1B5C: EqI2
  loc_5E1B5D: ImpAdLdUI1
  loc_5E1B61: CI2UI1
  loc_5E1B63: LitI2_Byte 5
  loc_5E1B65: EqI2
  loc_5E1B66: OrI4
  loc_5E1B67: FLdRfVar var_88
  loc_5E1B6A: FLdI2 var_86
  loc_5E1B6D: ImpAdLdRf MemVar_74A220
  loc_5E1B70: NewIfNullPr clsProducts
  loc_5E1B73:  = clsProducts.hWnd
  loc_5E1B78: FLdI2 var_88
  loc_5E1B7B: AndI4
  loc_5E1B7C: BranchF loc_5E1B8A
  loc_5E1B7F: FLdRfVar var_86
  loc_5E1B82: from_stack_2v = Proc_134_20_5DAB24(from_stack_1v)
  loc_5E1B87: Branch loc_5E1B92
  loc_5E1B8A: FLdRfVar var_86
  loc_5E1B8D: from_stack_2v = Proc_134_20_5DAB24(from_stack_1v)
  loc_5E1B92: FLdRfVar var_86
  loc_5E1B95: NextI2 var_8C, loc_5E1B54
  loc_5E1B9A: ExitProcHresult
End Function

Private Function Proc_134_22_658A0C() '658A0C
  'Data Table: 42AF9C
  loc_65870C: FLdPr Me
  loc_65870F: MemLdUI1 TipoGrafico
  loc_658713: FStUI1 var_92
  loc_658717: FLdUI1
  loc_65871B: LitI2_Byte 1
  loc_65871D: CUI1I2
  loc_65871F: EqI2
  loc_658720: BranchF loc_658795
  loc_658723: LitVarI2 var_C4, 14
  loc_658728: LitI4 1
  loc_65872D: FLdPr Me
  loc_658730: MemLdRfVar from_stack_1.range
  loc_658733: CVarRef
  loc_658738: FLdRfVar var_D4
  loc_65873B: ImpAdCallFPR4  = Mid(, , )
  loc_658740: LitVar_Missing var_104
  loc_658743: LitI4 &HF
  loc_658748: FLdPr Me
  loc_65874B: MemLdRfVar from_stack_1.range
  loc_65874E: CVarRef
  loc_658753: FLdRfVar var_114
  loc_658756: ImpAdCallFPR4  = Mid(, , )
  loc_65875B: FLdPr Me
  loc_65875E: MemLdStr bitmap
  loc_658761: LitI2_Byte 0
  loc_658763: FLdRfVar var_114
  loc_658766: CStrVarVal var_11C
  loc_65876A: FLdRfVar var_D4
  loc_65876D: CStrVarVal var_118
  loc_658771: ImpAdCallFPR4 Proc_158_14_615544(, , , )
  loc_658776: FFreeStr var_118 = ""
  loc_65877D: FFreeVar var_C4 = "": var_104 = "": var_D4 = ""
  loc_658788: from_stack_1v = Proc_134_21_5E1B9C()
  loc_65878D: from_stack_2v = Proc_134_19_5ECAE4(from_stack_1v)
  loc_658792: Branch loc_6589F2
  loc_658795: FLdUI1
  loc_658799: LitI2_Byte 2
  loc_65879B: CUI1I2
  loc_65879D: EqI2
  loc_65879E: BranchF loc_6589F2
  loc_6587A1: FLdRfVar var_C4
  loc_6587A4: FLdRfVar var_88
  loc_6587A7: FLdPr Me
  loc_6587AA: MemLdStr bitmap
  loc_6587AD: FLdPr Me
  loc_6587B0: MemLdStr hours
  loc_6587B3: FLdPr Me
  loc_6587B6: MemLdStr range
  loc_6587B9: FLdRfVar var_120
  loc_6587BC: ImpAdLdRf MemVar_74C760
  loc_6587BF: NewIfNullPr Formx
  loc_6587C2: from_stack_1v = Formx.global_4589716Get()
  loc_6587C7: FLdPr var_120
  loc_6587CA:  = Formx.ScaleMode
  loc_6587CF: FLdRfVar var_C4
  loc_6587D2: NotVar var_D4
  loc_6587D6: CBoolVarNull
  loc_6587D8: FFree1Ad var_120
  loc_6587DB: FFree1Var var_C4 = ""
  loc_6587DE: BranchF loc_65880D
  loc_6587E1: FLdRfVar var_C4
  loc_6587E4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6587E9: FLdRfVar var_C4
  loc_6587EC: CBoolVarNull
  loc_6587EE: FFree1Var var_C4 = ""
  loc_6587F1: BranchF loc_65880A
  loc_6587F4: ILdRf Me
  loc_6587F7: FStAdNoPop
  loc_6587FB: ImpAdLdRf MemVar_7520D4
  loc_6587FE: NewIfNullPr Global
  loc_658801: Global.Unload from_stack_1
  loc_658806: FFree1Ad var_120
  loc_658809: ExitProcHresult
  loc_65880A: Branch loc_6587A1
  loc_65880D: LitI4 1
  loc_658812: FStR4 var_90
  loc_658815: LitI2_Byte 1
  loc_658817: FLdRfVar var_8A
  loc_65881A: LitI2_Byte &H18
  loc_65881C: CR8I2
  loc_65881D: FLdPr Me
  loc_658820: MemLdStr hours
  loc_658823: CR8Str
  loc_658825: DivR8
  loc_658826: CI2R8
  loc_658827: ForI2 var_124
  loc_65882D: LitI2_Byte 1
  loc_65882F: FLdRfVar var_8C
  loc_658832: LitI2_Byte &HB
  loc_658834: ForI2 var_128
  loc_65883A: LitVarI2 var_C4, 9
  loc_65883F: ILdRf var_90
  loc_658842: FLdRfVar var_88
  loc_658845: CVarRef
  loc_65884A: FLdRfVar var_D4
  loc_65884D: ImpAdCallFPR4  = Mid(, , )
  loc_658852: FLdRfVar var_D4
  loc_658855: FnCCurVar
  loc_658857: CR8Cy
  loc_658858: LitI2_Byte &H64
  loc_65885A: CR8I2
  loc_65885B: DivR8
  loc_65885C: CCyR4
  loc_65885D: FLdI2 var_8C
  loc_658860: CI4UI1
  loc_658861: FLdI2 var_8A
  loc_658864: CI4UI1
  loc_658865: FLdPr Me
  loc_658868: MemLdRfVar from_stack_1.global_236
  loc_65886B: AryInRecLdPr
  loc_658871: MemLdRfVar from_stack_1.global_0
  loc_658874: AryInRecLdPr
  loc_65887A: MemStR8 global_0
  loc_65887D: FFreeVar var_C4 = "": var_D4 = ""
  loc_658886: LitVarI2 var_C4, 9
  loc_65888B: ILdRf var_90
  loc_65888E: LitI4 9
  loc_658893: AddI4
  loc_658894: FLdRfVar var_88
  loc_658897: CVarRef
  loc_65889C: FLdRfVar var_D4
  loc_65889F: ImpAdCallFPR4  = Mid(, , )
  loc_6588A4: FLdRfVar var_D4
  loc_6588A7: FnCCurVar
  loc_6588A9: CR8Cy
  loc_6588AA: ImpAdLdFPR4 MemVar_74C2E0
  loc_6588AD: DivR8
  loc_6588AE: CCyR4
  loc_6588AF: FLdI2 var_8C
  loc_6588B2: CI4UI1
  loc_6588B3: FLdI2 var_8A
  loc_6588B6: CI4UI1
  loc_6588B7: FLdPr Me
  loc_6588BA: MemLdRfVar from_stack_1.global_236
  loc_6588BD: AryInRecLdPr
  loc_6588C3: MemLdRfVar from_stack_1.global_88
  loc_6588C6: AryInRecLdPr
  loc_6588CC: MemStR8 global_0
  loc_6588CF: FFreeVar var_C4 = "": var_D4 = ""
  loc_6588D8: LitVarI2 var_C4, 6
  loc_6588DD: ILdRf var_90
  loc_6588E0: LitI4 &H12
  loc_6588E5: AddI4
  loc_6588E6: FLdRfVar var_88
  loc_6588E9: CVarRef
  loc_6588EE: FLdRfVar var_D4
  loc_6588F1: ImpAdCallFPR4  = Mid(, , )
  loc_6588F6: FLdRfVar var_D4
  loc_6588F9: FnCCurVar
  loc_6588FB: FLdI2 var_8C
  loc_6588FE: CI4UI1
  loc_6588FF: FLdI2 var_8A
  loc_658902: CI4UI1
  loc_658903: FLdPr Me
  loc_658906: MemLdRfVar from_stack_1.global_236
  loc_658909: AryInRecLdPr
  loc_65890F: MemLdRfVar from_stack_1.global_176
  loc_658912: AryInRecLdPr
  loc_658918: MemStR8 global_0
  loc_65891B: FFreeVar var_C4 = "": var_D4 = ""
  loc_658924: ILdRf var_90
  loc_658927: LitI4 &H18
  loc_65892C: AddI4
  loc_65892D: FStR4 var_90
  loc_658930: FLdRfVar var_8C
  loc_658933: NextI2 var_128, loc_65883A
  loc_658938: FLdRfVar var_8A
  loc_65893B: NextI2 var_124, loc_65882D
  loc_658940: FLdPrThis
  loc_658941: VCallAd Control_ID_Valores
  loc_658944: FStAdFunc var_120
  loc_658947: FLdPr var_120
  loc_65894A: Me.Clear
  loc_65894F: FFree1Ad var_120
  loc_658952: LitVar_Missing var_A4
  loc_658955: PopAdLdVar
  loc_658956: FLdPr Me
  loc_658959: MemLdStr global_6612
  loc_65895C: FLdPrThis
  loc_65895D: VCallAd Control_ID_Valores
  loc_658960: FStAdFunc var_120
  loc_658963: FLdPr var_120
  loc_658966: Me.AddItem from_stack_1, from_stack_2
  loc_65896B: FFree1Ad var_120
  loc_65896E: LitVar_Missing var_A4
  loc_658971: PopAdLdVar
  loc_658972: FLdPr Me
  loc_658975: MemLdStr global_6616
  loc_658978: FLdPrThis
  loc_658979: VCallAd Control_ID_Valores
  loc_65897C: FStAdFunc var_120
  loc_65897F: FLdPr var_120
  loc_658982: Me.AddItem from_stack_1, from_stack_2
  loc_658987: FFree1Ad var_120
  loc_65898A: LitVar_Missing var_A4
  loc_65898D: PopAdLdVar
  loc_65898E: FLdPr Me
  loc_658991: MemLdStr global_6620
  loc_658994: FLdPrThis
  loc_658995: VCallAd Control_ID_Valores
  loc_658998: FStAdFunc var_120
  loc_65899B: FLdPr var_120
  loc_65899E: Me.AddItem from_stack_1, from_stack_2
  loc_6589A3: FFree1Ad var_120
  loc_6589A6: LitVar_Missing var_A4
  loc_6589A9: PopAdLdVar
  loc_6589AA: FLdPr Me
  loc_6589AD: MemLdStr global_6624
  loc_6589B0: FLdPrThis
  loc_6589B1: VCallAd Control_ID_Valores
  loc_6589B4: FStAdFunc var_120
  loc_6589B7: FLdPr var_120
  loc_6589BA: Me.AddItem from_stack_1, from_stack_2
  loc_6589BF: FFree1Ad var_120
  loc_6589C2: LitVar_Missing var_A4
  loc_6589C5: PopAdLdVar
  loc_6589C6: FLdPr Me
  loc_6589C9: MemLdStr global_6628
  loc_6589CC: FLdPrThis
  loc_6589CD: VCallAd Control_ID_Valores
  loc_6589D0: FStAdFunc var_120
  loc_6589D3: FLdPr var_120
  loc_6589D6: Me.AddItem from_stack_1, from_stack_2
  loc_6589DB: FFree1Ad var_120
  loc_6589DE: LitI2_Byte 0
  loc_6589E0: FLdPrThis
  loc_6589E1: VCallAd Control_ID_Valores
  loc_6589E4: FStAdFunc var_120
  loc_6589E7: FLdPr var_120
  loc_6589EA: Me.ListIndex = from_stack_1
  loc_6589EF: FFree1Ad var_120
  loc_6589F2: LitVar_TRUE var_A4
  loc_6589F5: PopAdLdVar
  loc_6589F6: FLdPrThis
  loc_6589F7: VCallAd Control_ID_Grafico
  loc_6589FA: FStAdFunc var_120
  loc_6589FD: FLdPr var_120
  loc_658A00: LateIdSt
  loc_658A05: FFree1Ad var_120
  loc_658A08: ExitProcHresult
  loc_658A09: FLdRfVar arg_0
End Function

Private Function Proc_134_23_5D255C() '5D255C
  'Data Table: 42AF9C
  loc_5D2544: ILdRf Me
  loc_5D2547: FStAdNoPop
  loc_5D254B: ImpAdLdRf MemVar_7520D4
  loc_5D254E: NewIfNullPr Global
  loc_5D2551: Global.Unload from_stack_1
  loc_5D2556: FFree1Ad var_88
  loc_5D2559: ExitProcHresult
End Function

Private Function Proc_134_24_61BF38() '61BF38
  'Data Table: 42AF9C
  loc_61BDF4: FLdPr Me
  loc_61BDF7: MemLdUI1 TipoGrafico
  loc_61BDFB: CI2UI1
  loc_61BDFD: LitI2_Byte 1
  loc_61BDFF: EqI2
  loc_61BE00: BranchF loc_61BEAF
  loc_61BE03: ImpAdLdUI1
  loc_61BE07: CI2UI1
  loc_61BE09: LitI2_Byte 4
  loc_61BE0B: EqI2
  loc_61BE0C: ImpAdLdUI1
  loc_61BE10: CI2UI1
  loc_61BE12: LitI2_Byte 5
  loc_61BE14: EqI2
  loc_61BE15: OrI4
  loc_61BE16: BranchF loc_61BE98
  loc_61BE19: FLdRfVar var_90
  loc_61BE1C: FLdPrThis
  loc_61BE1D: VCallAd Control_ID_Valores
  loc_61BE20: FStAdFunc var_8C
  loc_61BE23: FLdPr var_8C
  loc_61BE26:  = Me.Text
  loc_61BE2B: ILdRf var_90
  loc_61BE2E: LitStr "Volumenes GNC"
  loc_61BE31: EqStr
  loc_61BE33: FFree1Str var_90
  loc_61BE36: FFree1Ad var_8C
  loc_61BE39: BranchF loc_61BE44
  loc_61BE3C: LitI2_Byte 1
  loc_61BE3E: FStI2 var_88
  loc_61BE41: Branch loc_61BE95
  loc_61BE44: FLdRfVar var_90
  loc_61BE47: FLdPrThis
  loc_61BE48: VCallAd Control_ID_Valores
  loc_61BE4B: FStAdFunc var_8C
  loc_61BE4E: FLdPr var_8C
  loc_61BE51:  = Me.Text
  loc_61BE56: ILdRf var_90
  loc_61BE59: LitStr "Volumenes"
  loc_61BE5C: EqStr
  loc_61BE5E: FFree1Str var_90
  loc_61BE61: FFree1Ad var_8C
  loc_61BE64: BranchF loc_61BE81
  loc_61BE67: FLdRfVar var_92
  loc_61BE6A: ImpAdLdRf MemVar_74A220
  loc_61BE6D: NewIfNullPr clsProducts
  loc_61BE70: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BE75: FLdI2 var_92
  loc_61BE78: LitI2_Byte 1
  loc_61BE7A: SubI2
  loc_61BE7B: FStI2 var_88
  loc_61BE7E: Branch loc_61BE95
  loc_61BE81: FLdRfVar var_92
  loc_61BE84: ImpAdLdRf MemVar_74A220
  loc_61BE87: NewIfNullPr clsProducts
  loc_61BE8A: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BE8F: FLdI2 var_92
  loc_61BE92: FStI2 var_88
  loc_61BE95: Branch loc_61BEAC
  loc_61BE98: FLdRfVar var_92
  loc_61BE9B: ImpAdLdRf MemVar_74A220
  loc_61BE9E: NewIfNullPr clsProducts
  loc_61BEA1: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BEA6: FLdI2 var_92
  loc_61BEA9: FStI2 var_88
  loc_61BEAC: Branch loc_61BF2A
  loc_61BEAF: ImpAdLdUI1
  loc_61BEB3: CI2UI1
  loc_61BEB5: LitI2_Byte 4
  loc_61BEB7: EqI2
  loc_61BEB8: ImpAdLdUI1
  loc_61BEBC: CI2UI1
  loc_61BEBE: LitI2_Byte 5
  loc_61BEC0: EqI2
  loc_61BEC1: OrI4
  loc_61BEC2: BranchF loc_61BF16
  loc_61BEC5: FLdPr Me
  loc_61BEC8: MemLdI2 global_6600
  loc_61BECB: LitI2_Byte 1
  loc_61BECD: EqI2
  loc_61BECE: BranchF loc_61BED9
  loc_61BED1: LitI2_Byte 1
  loc_61BED3: FStI2 var_88
  loc_61BED6: Branch loc_61BF13
  loc_61BED9: FLdPr Me
  loc_61BEDC: MemLdI2 global_6600
  loc_61BEDF: LitI2_Byte 2
  loc_61BEE1: EqI2
  loc_61BEE2: BranchF loc_61BEFF
  loc_61BEE5: FLdRfVar var_92
  loc_61BEE8: ImpAdLdRf MemVar_74A220
  loc_61BEEB: NewIfNullPr clsProducts
  loc_61BEEE: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BEF3: FLdI2 var_92
  loc_61BEF6: LitI2_Byte 1
  loc_61BEF8: SubI2
  loc_61BEF9: FStI2 var_88
  loc_61BEFC: Branch loc_61BF13
  loc_61BEFF: FLdRfVar var_92
  loc_61BF02: ImpAdLdRf MemVar_74A220
  loc_61BF05: NewIfNullPr clsProducts
  loc_61BF08: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BF0D: FLdI2 var_92
  loc_61BF10: FStI2 var_88
  loc_61BF13: Branch loc_61BF2A
  loc_61BF16: FLdRfVar var_92
  loc_61BF19: ImpAdLdRf MemVar_74A220
  loc_61BF1C: NewIfNullPr clsProducts
  loc_61BF1F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BF24: FLdI2 var_92
  loc_61BF27: FStI2 var_88
  loc_61BF2A: FLdI2 var_88
  loc_61BF2D: FStI2 var_86
  loc_61BF30: ExitProcCbHresult
  loc_61BF36: BranchF loc_61E218
End Function

Private Function Proc_134_25_6059A0(arg_C, arg_10, arg_14) '6059A0
  'Data Table: 42AF9C
  loc_6058B8: ImpAdLdRf MemVar_74DB2C
  loc_6058BB: NewIfNullPr Estadisticas
  loc_6058BE: VCallAd Control_ID_Grafico
  loc_6058C1: FStAdFunc var_8C
  loc_6058C4: ILdRf arg_C
  loc_6058C7: CDargRef
  loc_6058CB: FLdPr var_8C
  loc_6058CE: LateIdSt
  loc_6058D3: ILdI2 arg_10
  loc_6058D6: CStrUI1
  loc_6058D8: CVarStr var_AC
  loc_6058DB: PopAdLdVar
  loc_6058DC: FLdPr var_8C
  loc_6058DF: LateIdSt
  loc_6058E4: FFree1Var var_AC = ""
  loc_6058E7: ILdI2 arg_14
  loc_6058EA: FStI2 var_AE
  loc_6058ED: FLdI2 var_AE
  loc_6058F0: LitI2_Byte 3
  loc_6058F2: EqI2
  loc_6058F3: BranchF loc_605934
  loc_6058F6: FLdRfVar var_B0
  loc_6058F9: ILdI2 arg_10
  loc_6058FC: ImpAdLdRf MemVar_74A220
  loc_6058FF: NewIfNullPr clsProducts
  loc_605902:  = clsProducts.hWnd
  loc_605907: FLdI2 var_B0
  loc_60590A: BranchF loc_605931
  loc_60590D: ILdI2 arg_10
  loc_605910: CI4UI1
  loc_605911: FLdPr Me
  loc_605914: MemLdRfVar from_stack_1.global_156
  loc_605917: AryInRecLdPr
  loc_60591D: MemLdR8 global_0
  loc_605920: CStrCy
  loc_605922: CVarStr var_AC
  loc_605925: PopAdLdVar
  loc_605926: FLdPr var_8C
  loc_605929: LateIdSt
  loc_60592E: FFree1Var var_AC = ""
  loc_605931: Branch loc_605991
  loc_605934: FLdI2 var_AE
  loc_605937: LitI2_Byte 2
  loc_605939: EqI2
  loc_60593A: BranchF loc_605964
  loc_60593D: ILdI2 arg_10
  loc_605940: CI4UI1
  loc_605941: FLdPr Me
  loc_605944: MemLdRfVar from_stack_1.global_156
  loc_605947: AryInRecLdPr
  loc_60594D: MemLdR8 global_0
  loc_605950: CStrCy
  loc_605952: CVarStr var_AC
  loc_605955: PopAdLdVar
  loc_605956: FLdPr var_8C
  loc_605959: LateIdSt
  loc_60595E: FFree1Var var_AC = ""
  loc_605961: Branch loc_605991
  loc_605964: FLdI2 var_AE
  loc_605967: LitI2_Byte 1
  loc_605969: EqI2
  loc_60596A: BranchF loc_605991
  loc_60596D: ILdI2 arg_10
  loc_605970: CI4UI1
  loc_605971: FLdPr Me
  loc_605974: MemLdRfVar from_stack_1.global_76
  loc_605977: AryInRecLdPr
  loc_60597D: MemLdR8 global_0
  loc_605980: CStrCy
  loc_605982: CVarStr var_AC
  loc_605985: PopAdLdVar
  loc_605986: FLdPr var_8C
  loc_605989: LateIdSt
  loc_60598E: FFree1Var var_AC = ""
  loc_605991: LitNothing
  loc_605993: FStAd var_8C 
  loc_605997: ExitProcCbHresult
End Function

Private Function Proc_134_26_637614(arg_C) '637614
  'Data Table: 42AF9C
  loc_6373FC: ImpAdLdUI1
  loc_637400: CI2UI1
  loc_637402: LitI2_Byte 4
  loc_637404: EqI2
  loc_637405: ImpAdLdUI1
  loc_637409: CI2UI1
  loc_63740B: LitI2_Byte 5
  loc_63740D: EqI2
  loc_63740E: OrI4
  loc_63740F: FStI2 var_8A
  loc_637412: LitI2_Byte 1
  loc_637414: FStI2 var_88
  loc_637417: LitI2_Byte 1
  loc_637419: FLdRfVar var_86
  loc_63741C: FLdRfVar var_8C
  loc_63741F: ImpAdLdRf MemVar_74A220
  loc_637422: NewIfNullPr clsProducts
  loc_637425: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_63742A: FLdI2 var_8C
  loc_63742D: ForI2 var_90
  loc_637433: FLdI2 var_8A
  loc_637436: BranchF loc_637578
  loc_637439: FLdRfVar var_98
  loc_63743C: FLdPrThis
  loc_63743D: VCallAd Control_ID_Valores
  loc_637440: FStAdFunc var_94
  loc_637443: FLdPr var_94
  loc_637446:  = Me.Text
  loc_63744B: ILdRf var_98
  loc_63744E: LitStr "Volumenes GNC"
  loc_637451: EqStr
  loc_637453: FLdRfVar var_8C
  loc_637456: FLdI2 var_86
  loc_637459: ImpAdLdRf MemVar_74A220
  loc_63745C: NewIfNullPr clsProducts
  loc_63745F:  = clsProducts.hWnd
  loc_637464: FLdI2 var_8C
  loc_637467: AndI4
  loc_637468: FFree1Str var_98
  loc_63746B: FFree1Ad var_94
  loc_63746E: BranchF loc_6374AA
  loc_637471: FLdRfVar var_8C
  loc_637474: FLdPrThis
  loc_637475: VCallAd Control_ID_Valores
  loc_637478: FStAdFunc var_94
  loc_63747B: FLdPr var_94
  loc_63747E:  = Me.ListIndex
  loc_637483: FLdRfVar var_9C
  loc_637486: ILdI2 arg_C
  loc_637489: FLdI2 var_8C
  loc_63748C: AddI2
  loc_63748D: PopTmpLdAd2 var_9A
  loc_637490: FLdRfVar var_86
  loc_637493: FLdRfVar var_88
  loc_637496: from_stack_4v = Proc_134_25_6059A0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_63749B: FFree1Ad var_94
  loc_63749E: FLdI2 var_88
  loc_6374A1: LitI2_Byte 1
  loc_6374A3: AddI2
  loc_6374A4: FStI2 var_88
  loc_6374A7: Branch loc_637575
  loc_6374AA: FLdRfVar var_98
  loc_6374AD: FLdPrThis
  loc_6374AE: VCallAd Control_ID_Valores
  loc_6374B1: FStAdFunc var_94
  loc_6374B4: FLdPr var_94
  loc_6374B7:  = Me.Text
  loc_6374BC: ILdRf var_98
  loc_6374BF: LitStr "Volumenes"
  loc_6374C2: EqStr
  loc_6374C4: FLdRfVar var_8C
  loc_6374C7: FLdI2 var_86
  loc_6374CA: ImpAdLdRf MemVar_74A220
  loc_6374CD: NewIfNullPr clsProducts
  loc_6374D0:  = clsProducts.hWnd
  loc_6374D5: FLdI2 var_8C
  loc_6374D8: NotI4
  loc_6374D9: AndI4
  loc_6374DA: FFree1Str var_98
  loc_6374DD: FFree1Ad var_94
  loc_6374E0: BranchF loc_63751C
  loc_6374E3: FLdRfVar var_8C
  loc_6374E6: FLdPrThis
  loc_6374E7: VCallAd Control_ID_Valores
  loc_6374EA: FStAdFunc var_94
  loc_6374ED: FLdPr var_94
  loc_6374F0:  = Me.ListIndex
  loc_6374F5: FLdRfVar var_9C
  loc_6374F8: ILdI2 arg_C
  loc_6374FB: FLdI2 var_8C
  loc_6374FE: AddI2
  loc_6374FF: PopTmpLdAd2 var_9A
  loc_637502: FLdRfVar var_86
  loc_637505: FLdRfVar var_88
  loc_637508: from_stack_4v = Proc_134_25_6059A0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_63750D: FFree1Ad var_94
  loc_637510: FLdI2 var_88
  loc_637513: LitI2_Byte 1
  loc_637515: AddI2
  loc_637516: FStI2 var_88
  loc_637519: Branch loc_637575
  loc_63751C: FLdRfVar var_98
  loc_63751F: FLdPrThis
  loc_637520: VCallAd Control_ID_Valores
  loc_637523: FStAdFunc var_94
  loc_637526: FLdPr var_94
  loc_637529:  = Me.Text
  loc_63752E: ILdRf var_98
  loc_637531: LitStr "Montos"
  loc_637534: EqStr
  loc_637536: FFree1Str var_98
  loc_637539: FFree1Ad var_94
  loc_63753C: BranchF loc_637575
  loc_63753F: FLdRfVar var_8C
  loc_637542: FLdPrThis
  loc_637543: VCallAd Control_ID_Valores
  loc_637546: FStAdFunc var_94
  loc_637549: FLdPr var_94
  loc_63754C:  = Me.ListIndex
  loc_637551: FLdRfVar var_9C
  loc_637554: ILdI2 arg_C
  loc_637557: FLdI2 var_8C
  loc_63755A: AddI2
  loc_63755B: PopTmpLdAd2 var_9A
  loc_63755E: FLdRfVar var_86
  loc_637561: FLdRfVar var_88
  loc_637564: from_stack_4v = Proc_134_25_6059A0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_637569: FFree1Ad var_94
  loc_63756C: FLdI2 var_88
  loc_63756F: LitI2_Byte 1
  loc_637571: AddI2
  loc_637572: FStI2 var_88
  loc_637575: Branch loc_63760A
  loc_637578: FLdRfVar var_98
  loc_63757B: FLdPrThis
  loc_63757C: VCallAd Control_ID_Valores
  loc_63757F: FStAdFunc var_94
  loc_637582: FLdPr var_94
  loc_637585:  = Me.Text
  loc_63758A: ILdRf var_98
  loc_63758D: LitStr "Montos"
  loc_637590: EqStr
  loc_637592: FFree1Str var_98
  loc_637595: FFree1Ad var_94
  loc_637598: BranchF loc_6375D4
  loc_63759B: FLdRfVar var_8C
  loc_63759E: FLdPrThis
  loc_63759F: VCallAd Control_ID_Valores
  loc_6375A2: FStAdFunc var_94
  loc_6375A5: FLdPr var_94
  loc_6375A8:  = Me.ListIndex
  loc_6375AD: FLdRfVar var_9C
  loc_6375B0: ILdI2 arg_C
  loc_6375B3: FLdI2 var_8C
  loc_6375B6: AddI2
  loc_6375B7: PopTmpLdAd2 var_9A
  loc_6375BA: FLdRfVar var_86
  loc_6375BD: FLdRfVar var_88
  loc_6375C0: from_stack_4v = Proc_134_25_6059A0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6375C5: FFree1Ad var_94
  loc_6375C8: FLdI2 var_88
  loc_6375CB: LitI2_Byte 1
  loc_6375CD: AddI2
  loc_6375CE: FStI2 var_88
  loc_6375D1: Branch loc_63760A
  loc_6375D4: FLdRfVar var_8C
  loc_6375D7: FLdPrThis
  loc_6375D8: VCallAd Control_ID_Valores
  loc_6375DB: FStAdFunc var_94
  loc_6375DE: FLdPr var_94
  loc_6375E1:  = Me.ListIndex
  loc_6375E6: FLdRfVar var_9C
  loc_6375E9: ILdI2 arg_C
  loc_6375EC: FLdI2 var_8C
  loc_6375EF: AddI2
  loc_6375F0: PopTmpLdAd2 var_9A
  loc_6375F3: FLdRfVar var_86
  loc_6375F6: FLdRfVar var_88
  loc_6375F9: from_stack_4v = Proc_134_25_6059A0(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6375FE: FFree1Ad var_94
  loc_637601: FLdI2 var_88
  loc_637604: LitI2_Byte 1
  loc_637606: AddI2
  loc_637607: FStI2 var_88
  loc_63760A: FLdRfVar var_86
  loc_63760D: NextI2 var_90, loc_637433
  loc_637612: ExitProcHresult
End Function

Private Function Proc_134_27_674FD8(arg_C, arg_10) '674FD8
  'Data Table: 42AF9C
  loc_674B8C: LitI2_Byte 1
  loc_674B8E: FStI2 var_88
  loc_674B91: ImpAdLdRf MemVar_74DB2C
  loc_674B94: NewIfNullPr Estadisticas
  loc_674B97: VCallAd Control_ID_Grafico
  loc_674B9A: FStAdFunc var_8C
  loc_674B9D: LitI2_Byte 1
  loc_674B9F: FLdRfVar var_86
  loc_674BA2: FLdRfVar var_8E
  loc_674BA5: ImpAdLdRf MemVar_74A220
  loc_674BA8: NewIfNullPr clsProducts
  loc_674BAB: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_674BB0: FLdI2 var_8E
  loc_674BB3: ForI2 var_92
  loc_674BB9: FLdPr var_8C
  loc_674BBC: LateIdLdVar var_A4 DispID_5 0
  loc_674BC3: CI2Var
  loc_674BC4: FLdI2 var_88
  loc_674BC7: LtI2
  loc_674BC8: FFree1Var var_A4 = ""
  loc_674BCB: BranchF loc_674BCF
  loc_674BCE: ExitProcHresult
  loc_674BCF: FLdRfVar var_88
  loc_674BD2: CDargRef
  loc_674BD6: FLdPr var_8C
  loc_674BD9: LateIdSt
  loc_674BDE: FLdI2 var_88
  loc_674BE1: CStrUI1
  loc_674BE3: CVarStr var_A4
  loc_674BE6: PopAdLdVar
  loc_674BE7: FLdPr var_8C
  loc_674BEA: LateIdSt
  loc_674BEF: FFree1Var var_A4 = ""
  loc_674BF2: ILdUI1 arg_10
  loc_674BF6: FStUI1 var_B6
  loc_674BFA: FLdUI1
  loc_674BFE: LitI2_Byte 1
  loc_674C00: CUI1I2
  loc_674C02: EqI2
  loc_674C03: BranchF loc_674C99
  loc_674C06: FLdI2 var_88
  loc_674C09: CI4UI1
  loc_674C0A: ILdI2 arg_C
  loc_674C0D: CI4UI1
  loc_674C0E: FLdPr Me
  loc_674C11: MemLdRfVar from_stack_1.global_236
  loc_674C14: AryInRecLdPr
  loc_674C1A: MemLdRfVar from_stack_1.global_88
  loc_674C1D: AryInRecLdPr
  loc_674C23: MemLdR8 global_0
  loc_674C26: CStrCy
  loc_674C28: CVarStr var_A4
  loc_674C2B: PopAdLdVar
  loc_674C2C: FLdPr var_8C
  loc_674C2F: LateIdSt
  loc_674C34: FFree1Var var_A4 = ""
  loc_674C37: ImpAdLdI4 MemVar_74BECC
  loc_674C3A: FLdPr Me
  loc_674C3D: MemLdStr global_6640
  loc_674C40: ConcatStr
  loc_674C41: FStStrNoPop var_C8
  loc_674C44: FLdRfVar var_C4
  loc_674C47: FLdRfVar var_C0
  loc_674C4A: LitVarI2 var_B4, 1
  loc_674C4F: PopAdLdVar
  loc_674C50: LitI4 1
  loc_674C55: FLdPr var_8C
  loc_674C58: LateIdLdVar var_A4 DispID_40 0
  loc_674C5F: CastAdVar Me
  loc_674C63: FStAdFunc var_BC
  loc_674C66: FLdPr var_BC
  loc_674C69: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_674C6E: FLdPr var_C0
  loc_674C71:  = Me.AxisTitle
  loc_674C76: FLdPr var_C4
  loc_674C79:  = Me._Text = from_stack_1v
  loc_674C7E: FFree1Str var_C8
  loc_674C81: FFreeAd var_BC = "": var_C0 = ""
  loc_674C8A: FFree1Var var_A4 = ""
  loc_674C8D: FLdI2 var_88
  loc_674C90: LitI2_Byte 1
  loc_674C92: AddI2
  loc_674C93: FStI2 var_88
  loc_674C96: Branch loc_674FC8
  loc_674C99: FLdUI1
  loc_674C9D: LitI2_Byte 2
  loc_674C9F: CUI1I2
  loc_674CA1: EqI2
  loc_674CA2: BranchF loc_674D38
  loc_674CA5: FLdI2 var_88
  loc_674CA8: CI4UI1
  loc_674CA9: ILdI2 arg_C
  loc_674CAC: CI4UI1
  loc_674CAD: FLdPr Me
  loc_674CB0: MemLdRfVar from_stack_1.global_236
  loc_674CB3: AryInRecLdPr
  loc_674CB9: MemLdRfVar from_stack_1.global_0
  loc_674CBC: AryInRecLdPr
  loc_674CC2: MemLdR8 global_0
  loc_674CC5: CStrCy
  loc_674CC7: CVarStr var_A4
  loc_674CCA: PopAdLdVar
  loc_674CCB: FLdPr var_8C
  loc_674CCE: LateIdSt
  loc_674CD3: FFree1Var var_A4 = ""
  loc_674CD6: ImpAdLdI4 MemVar_74BEBC
  loc_674CD9: FLdPr Me
  loc_674CDC: MemLdStr global_6640
  loc_674CDF: ConcatStr
  loc_674CE0: FStStrNoPop var_C8
  loc_674CE3: FLdRfVar var_C4
  loc_674CE6: FLdRfVar var_C0
  loc_674CE9: LitVarI2 var_B4, 1
  loc_674CEE: PopAdLdVar
  loc_674CEF: LitI4 1
  loc_674CF4: FLdPr var_8C
  loc_674CF7: LateIdLdVar var_A4 DispID_40 0
  loc_674CFE: CastAdVar Me
  loc_674D02: FStAdFunc var_BC
  loc_674D05: FLdPr var_BC
  loc_674D08: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_674D0D: FLdPr var_C0
  loc_674D10:  = Me.AxisTitle
  loc_674D15: FLdPr var_C4
  loc_674D18:  = Me._Text = from_stack_1v
  loc_674D1D: FFree1Str var_C8
  loc_674D20: FFreeAd var_BC = "": var_C0 = ""
  loc_674D29: FFree1Var var_A4 = ""
  loc_674D2C: FLdI2 var_88
  loc_674D2F: LitI2_Byte 1
  loc_674D31: AddI2
  loc_674D32: FStI2 var_88
  loc_674D35: Branch loc_674FC8
  loc_674D38: FLdUI1
  loc_674D3C: LitI2_Byte 3
  loc_674D3E: CUI1I2
  loc_674D40: EqI2
  loc_674D41: BranchF loc_674DCD
  loc_674D44: FLdI2 var_88
  loc_674D47: CI4UI1
  loc_674D48: ILdI2 arg_C
  loc_674D4B: CI4UI1
  loc_674D4C: FLdPr Me
  loc_674D4F: MemLdRfVar from_stack_1.global_236
  loc_674D52: AryInRecLdPr
  loc_674D58: MemLdRfVar from_stack_1.global_176
  loc_674D5B: AryInRecLdPr
  loc_674D61: MemLdR8 global_0
  loc_674D64: CStrCy
  loc_674D66: CVarStr var_A4
  loc_674D69: PopAdLdVar
  loc_674D6A: FLdPr var_8C
  loc_674D6D: LateIdSt
  loc_674D72: FFree1Var var_A4 = ""
  loc_674D75: FLdPr Me
  loc_674D78: MemLdStr global_6648
  loc_674D7B: FLdRfVar var_C4
  loc_674D7E: FLdRfVar var_C0
  loc_674D81: LitVarI2 var_B4, 1
  loc_674D86: PopAdLdVar
  loc_674D87: LitI4 1
  loc_674D8C: FLdPr var_8C
  loc_674D8F: LateIdLdVar var_A4 DispID_40 0
  loc_674D96: CastAdVar Me
  loc_674D9A: FStAdFunc var_BC
  loc_674D9D: FLdPr var_BC
  loc_674DA0: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_674DA5: FLdPr var_C0
  loc_674DA8:  = Me.AxisTitle
  loc_674DAD: FLdPr var_C4
  loc_674DB0:  = Me._Text = from_stack_1v
  loc_674DB5: FFreeAd var_BC = "": var_C0 = ""
  loc_674DBE: FFree1Var var_A4 = ""
  loc_674DC1: FLdI2 var_88
  loc_674DC4: LitI2_Byte 1
  loc_674DC6: AddI2
  loc_674DC7: FStI2 var_88
  loc_674DCA: Branch loc_674FC8
  loc_674DCD: FLdUI1
  loc_674DD1: LitI2_Byte 4
  loc_674DD3: CUI1I2
  loc_674DD5: EqI2
  loc_674DD6: BranchF loc_674ECC
  loc_674DD9: FLdI2 var_88
  loc_674DDC: CI4UI1
  loc_674DDD: ILdI2 arg_C
  loc_674DE0: CI4UI1
  loc_674DE1: FLdPr Me
  loc_674DE4: MemLdRfVar from_stack_1.global_236
  loc_674DE7: AryInRecLdPr
  loc_674DED: MemLdRfVar from_stack_1.global_176
  loc_674DF0: AryInRecLdPr
  loc_674DF6: MemLdR8 global_0
  loc_674DF9: LitI2_Byte 0
  loc_674DFB: CR8I2
  loc_674DFC: EqCyR8
  loc_674DFD: BranchF loc_674E16
  loc_674E00: LitI2_Byte 0
  loc_674E02: CStrUI1
  loc_674E04: CVarStr var_A4
  loc_674E07: PopAdLdVar
  loc_674E08: FLdPr var_8C
  loc_674E0B: LateIdSt
  loc_674E10: FFree1Var var_A4 = ""
  loc_674E13: Branch loc_674E6A
  loc_674E16: FLdI2 var_88
  loc_674E19: CI4UI1
  loc_674E1A: ILdI2 arg_C
  loc_674E1D: CI4UI1
  loc_674E1E: FLdPr Me
  loc_674E21: MemLdRfVar from_stack_1.global_236
  loc_674E24: AryInRecLdPr
  loc_674E2A: MemLdRfVar from_stack_1.global_88
  loc_674E2D: AryInRecLdPr
  loc_674E33: MemLdR8 global_0
  loc_674E36: CR8Cy
  loc_674E37: FLdI2 var_88
  loc_674E3A: CI4UI1
  loc_674E3B: ILdI2 arg_C
  loc_674E3E: CI4UI1
  loc_674E3F: FLdPr Me
  loc_674E42: MemLdRfVar from_stack_1.global_236
  loc_674E45: AryInRecLdPr
  loc_674E4B: MemLdRfVar from_stack_1.global_176
  loc_674E4E: AryInRecLdPr
  loc_674E54: MemLdR8 global_0
  loc_674E57: CR8Cy
  loc_674E58: DivR8
  loc_674E59: CStrR8
  loc_674E5B: CVarStr var_A4
  loc_674E5E: PopAdLdVar
  loc_674E5F: FLdPr var_8C
  loc_674E62: LateIdSt
  loc_674E67: FFree1Var var_A4 = ""
  loc_674E6A: ImpAdLdI4 MemVar_74BECC
  loc_674E6D: FLdPr Me
  loc_674E70: MemLdStr global_6644
  loc_674E73: ConcatStr
  loc_674E74: FStStrNoPop var_C8
  loc_674E77: FLdRfVar var_C4
  loc_674E7A: FLdRfVar var_C0
  loc_674E7D: LitVarI2 var_B4, 1
  loc_674E82: PopAdLdVar
  loc_674E83: LitI4 1
  loc_674E88: FLdPr var_8C
  loc_674E8B: LateIdLdVar var_A4 DispID_40 0
  loc_674E92: CastAdVar Me
  loc_674E96: FStAdFunc var_BC
  loc_674E99: FLdPr var_BC
  loc_674E9C: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_674EA1: FLdPr var_C0
  loc_674EA4:  = Me.AxisTitle
  loc_674EA9: FLdPr var_C4
  loc_674EAC:  = Me._Text = from_stack_1v
  loc_674EB1: FFree1Str var_C8
  loc_674EB4: FFreeAd var_BC = "": var_C0 = ""
  loc_674EBD: FFree1Var var_A4 = ""
  loc_674EC0: FLdI2 var_88
  loc_674EC3: LitI2_Byte 1
  loc_674EC5: AddI2
  loc_674EC6: FStI2 var_88
  loc_674EC9: Branch loc_674FC8
  loc_674ECC: FLdUI1
  loc_674ED0: LitI2_Byte 5
  loc_674ED2: CUI1I2
  loc_674ED4: EqI2
  loc_674ED5: BranchF loc_674FC8
  loc_674ED8: FLdI2 var_88
  loc_674EDB: CI4UI1
  loc_674EDC: ILdI2 arg_C
  loc_674EDF: CI4UI1
  loc_674EE0: FLdPr Me
  loc_674EE3: MemLdRfVar from_stack_1.global_236
  loc_674EE6: AryInRecLdPr
  loc_674EEC: MemLdRfVar from_stack_1.global_176
  loc_674EEF: AryInRecLdPr
  loc_674EF5: MemLdR8 global_0
  loc_674EF8: LitI2_Byte 0
  loc_674EFA: CR8I2
  loc_674EFB: EqCyR8
  loc_674EFC: BranchF loc_674F15
  loc_674EFF: LitI2_Byte 0
  loc_674F01: CStrUI1
  loc_674F03: CVarStr var_A4
  loc_674F06: PopAdLdVar
  loc_674F07: FLdPr var_8C
  loc_674F0A: LateIdSt
  loc_674F0F: FFree1Var var_A4 = ""
  loc_674F12: Branch loc_674F69
  loc_674F15: FLdI2 var_88
  loc_674F18: CI4UI1
  loc_674F19: ILdI2 arg_C
  loc_674F1C: CI4UI1
  loc_674F1D: FLdPr Me
  loc_674F20: MemLdRfVar from_stack_1.global_236
  loc_674F23: AryInRecLdPr
  loc_674F29: MemLdRfVar from_stack_1.global_0
  loc_674F2C: AryInRecLdPr
  loc_674F32: MemLdR8 global_0
  loc_674F35: CR8Cy
  loc_674F36: FLdI2 var_88
  loc_674F39: CI4UI1
  loc_674F3A: ILdI2 arg_C
  loc_674F3D: CI4UI1
  loc_674F3E: FLdPr Me
  loc_674F41: MemLdRfVar from_stack_1.global_236
  loc_674F44: AryInRecLdPr
  loc_674F4A: MemLdRfVar from_stack_1.global_176
  loc_674F4D: AryInRecLdPr
  loc_674F53: MemLdR8 global_0
  loc_674F56: CR8Cy
  loc_674F57: DivR8
  loc_674F58: CStrR8
  loc_674F5A: CVarStr var_A4
  loc_674F5D: PopAdLdVar
  loc_674F5E: FLdPr var_8C
  loc_674F61: LateIdSt
  loc_674F66: FFree1Var var_A4 = ""
  loc_674F69: ImpAdLdI4 MemVar_74BEBC
  loc_674F6C: FLdPr Me
  loc_674F6F: MemLdStr global_6644
  loc_674F72: ConcatStr
  loc_674F73: FStStrNoPop var_C8
  loc_674F76: FLdRfVar var_C4
  loc_674F79: FLdRfVar var_C0
  loc_674F7C: LitVarI2 var_B4, 1
  loc_674F81: PopAdLdVar
  loc_674F82: LitI4 1
  loc_674F87: FLdPr var_8C
  loc_674F8A: LateIdLdVar var_A4 DispID_40 0
  loc_674F91: CastAdVar Me
  loc_674F95: FStAdFunc var_BC
  loc_674F98: FLdPr var_BC
  loc_674F9B: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_674FA0: FLdPr var_C0
  loc_674FA3:  = Me.AxisTitle
  loc_674FA8: FLdPr var_C4
  loc_674FAB:  = Me._Text = from_stack_1v
  loc_674FB0: FFree1Str var_C8
  loc_674FB3: FFreeAd var_BC = "": var_C0 = ""
  loc_674FBC: FFree1Var var_A4 = ""
  loc_674FBF: FLdI2 var_88
  loc_674FC2: LitI2_Byte 1
  loc_674FC4: AddI2
  loc_674FC5: FStI2 var_88
  loc_674FC8: FLdRfVar var_86
  loc_674FCB: NextI2 var_92, loc_674BB9
  loc_674FD0: LitNothing
  loc_674FD2: FStAd var_8C 
  loc_674FD6: ExitProcHresult
End Function

Private Function Proc_134_28_6D01C4(arg_C) '6D01C4
  'Data Table: 42AF9C
  loc_6CF800: FLdPr Me
  loc_6CF803: MemLdUI1 TipoGrafico
  loc_6CF807: FStUI1 var_8A
  loc_6CF80B: FLdUI1
  loc_6CF80F: LitI2_Byte 1
  loc_6CF811: CUI1I2
  loc_6CF813: EqI2
  loc_6CF814: BranchF loc_6CFA10
  loc_6CF817: ImpAdLdRf MemVar_74DB2C
  loc_6CF81A: NewIfNullPr Estadisticas
  loc_6CF81D: VCallAd Control_ID_Grafico
  loc_6CF820: FStAdFunc var_90
  loc_6CF823: LitVarI4
  loc_6CF82B: PopAdLdVar
  loc_6CF82C: FLdPr var_90
  loc_6CF82F: LateIdSt
  loc_6CF834: LitI2_Byte &HFF
  loc_6CF836: FLdRfVar var_B8
  loc_6CF839: FLdPr var_90
  loc_6CF83C: LateIdLdVar var_B0 DispID_38 0
  loc_6CF843: CastAdVar Me
  loc_6CF847: FStAdFunc var_B4
  loc_6CF84A: FLdPr var_B4
  loc_6CF84D:  = Me.IVcLegend.Location
  loc_6CF852: FLdPr var_B8
  loc_6CF855:  = Me.Visible = from_stack_1b
  loc_6CF85A: FFreeAd var_B4 = ""
  loc_6CF861: FFree1Var var_B0 = ""
  loc_6CF864: LitI4 7
  loc_6CF869: FLdRfVar var_B8
  loc_6CF86C: FLdPr var_90
  loc_6CF86F: LateIdLdVar var_B0 DispID_38 0
  loc_6CF876: CastAdVar Me
  loc_6CF87A: FStAdFunc var_B4
  loc_6CF87D: FLdPr var_B4
  loc_6CF880:  = Me.IVcLegend.Location
  loc_6CF885: FLdPr var_B8
  loc_6CF888:  = Me.LocationType = from_stack_1v
  loc_6CF88D: FFreeAd var_B4 = ""
  loc_6CF894: FFree1Var var_B0 = ""
  loc_6CF897: LitI4 8
  loc_6CF89C: FLdRfVar var_B8
  loc_6CF89F: FLdPr var_90
  loc_6CF8A2: LateIdLdVar var_B0 DispID_38 0
  loc_6CF8A9: CastAdVar Me
  loc_6CF8AD: FStAdFunc var_B4
  loc_6CF8B0: FLdPr var_B4
  loc_6CF8B3:  = Me.IVcLegend.Location
  loc_6CF8B8: FLdPr var_B8
  loc_6CF8BB:  = Me.LocationType = from_stack_1v
  loc_6CF8C0: FFreeAd var_B4 = ""
  loc_6CF8C7: FFree1Var var_B0 = ""
  loc_6CF8CA: LitI4 3
  loc_6CF8CF: FLdRfVar var_B8
  loc_6CF8D2: FLdPr var_90
  loc_6CF8D5: LateIdLdVar var_B0 DispID_38 0
  loc_6CF8DC: CastAdVar Me
  loc_6CF8E0: FStAdFunc var_B4
  loc_6CF8E3: FLdPr var_B4
  loc_6CF8E6:  = Me.IVcLegend.TextLayout
  loc_6CF8EB: FLdPr var_B8
  loc_6CF8EE:  = Me.HorzAlignment = from_stack_1v
  loc_6CF8F3: FFreeAd var_B4 = ""
  loc_6CF8FA: FFree1Var var_B0 = ""
  loc_6CF8FD: LitI4 0
  loc_6CF902: FLdRfVar var_B8
  loc_6CF905: FLdPr var_90
  loc_6CF908: LateIdLdVar var_B0 DispID_38 0
  loc_6CF90F: CastAdVar Me
  loc_6CF913: FStAdFunc var_B4
  loc_6CF916: FLdPr var_B4
  loc_6CF919:  = Me.IVcLegend.TextLayout
  loc_6CF91E: FLdPr var_B8
  loc_6CF921:  = Me.VertAlignment = from_stack_1v
  loc_6CF926: FFreeAd var_B4 = ""
  loc_6CF92D: FFree1Var var_B0 = ""
  loc_6CF930: LitI4 1
  loc_6CF935: FLdRfVar var_B8
  loc_6CF938: FLdPr var_90
  loc_6CF93B: LateIdLdVar var_B0 DispID_38 0
  loc_6CF942: CastAdVar Me
  loc_6CF946: FStAdFunc var_B4
  loc_6CF949: FLdPr var_B4
  loc_6CF94C:  = Me.IVcLegend.TextLayout
  loc_6CF951: FLdPr var_B8
  loc_6CF954:  = Me.Orientation = from_stack_1v
  loc_6CF959: FFreeAd var_B4 = ""
  loc_6CF960: FFree1Var var_B0 = ""
  loc_6CF963: LitI2_Byte &HFF
  loc_6CF965: FLdRfVar var_B8
  loc_6CF968: FLdPr var_90
  loc_6CF96B: LateIdLdVar var_B0 DispID_38 0
  loc_6CF972: CastAdVar Me
  loc_6CF976: FStAdFunc var_B4
  loc_6CF979: FLdPr var_B4
  loc_6CF97C:  = Me.IVcLegend.TextLayout
  loc_6CF981: FLdPr var_B8
  loc_6CF984:  = Me.WordWrap = from_stack_1b
  loc_6CF989: FFreeAd var_B4 = ""
  loc_6CF990: FFree1Var var_B0 = ""
  loc_6CF993: LitVar_FALSE
  loc_6CF997: PopAdLdVar
  loc_6CF998: FLdPr var_90
  loc_6CF99B: LateIdSt
  loc_6CF9A0: LitVarI2 var_A0, 1
  loc_6CF9A5: PopAdLdVar
  loc_6CF9A6: FLdPr var_90
  loc_6CF9A9: LateIdSt
  loc_6CF9AE: FLdRfVar var_BA
  loc_6CF9B1: from_stack_1v = Proc_134_24_61BF38()
  loc_6CF9B6: FLdI2 var_BA
  loc_6CF9B9: CVarI2 var_A0
  loc_6CF9BC: PopAdLdVar
  loc_6CF9BD: FLdPr var_90
  loc_6CF9C0: LateIdSt
  loc_6CF9C5: LitI2_Byte &H46
  loc_6CF9C7: CR8I2
  loc_6CF9C8: PopFPR4
  loc_6CF9C9: FLdPr var_90
  loc_6CF9CC: LateIdLdVar var_B0 DispID_40 0
  loc_6CF9D3: CastAdVar Me
  loc_6CF9D7: FStAdFunc var_B4
  loc_6CF9DA: FLdPr var_B4
  loc_6CF9DD:  = Me.IVcPlot.WidthToHeightRatio = from_stack_1s
  loc_6CF9E2: FFree1Ad var_B4
  loc_6CF9E5: FFree1Var var_B0 = ""
  loc_6CF9E8: LitVarStr var_A0, vbNullString
  loc_6CF9ED: PopAdLdVar
  loc_6CF9EE: FLdPr var_90
  loc_6CF9F1: LateIdSt
  loc_6CF9F6: FLdPr Me
  loc_6CF9F9: MemLdUI1 TipoGrafico
  loc_6CF9FD: CI2UI1
  loc_6CF9FF: PopTmpLdAd2 var_BA
  loc_6CFA02: from_stack_2v = Proc_134_26_637614(from_stack_1v)
  loc_6CFA07: LitNothing
  loc_6CFA09: FStAd var_90 
  loc_6CFA0D: Branch loc_6D01C3
  loc_6CFA10: FLdUI1
  loc_6CFA14: LitI2_Byte 2
  loc_6CFA16: CUI1I2
  loc_6CFA18: EqI2
  loc_6CFA19: BranchF loc_6D01B7
  loc_6CFA1C: ImpAdLdRf MemVar_74DB2C
  loc_6CFA1F: NewIfNullPr Estadisticas
  loc_6CFA22: VCallAd Control_ID_Grafico
  loc_6CFA25: FStAdFunc var_C0
  loc_6CFA28: LitVarI4
  loc_6CFA30: PopAdLdVar
  loc_6CFA31: FLdPr var_C0
  loc_6CFA34: LateIdSt
  loc_6CFA39: LitI2_Byte &HFF
  loc_6CFA3B: FLdRfVar var_B8
  loc_6CFA3E: FLdPr var_C0
  loc_6CFA41: LateIdLdVar var_B0 DispID_38 0
  loc_6CFA48: CastAdVar Me
  loc_6CFA4C: FStAdFunc var_B4
  loc_6CFA4F: FLdPr var_B4
  loc_6CFA52:  = Me.IVcLegend.Location
  loc_6CFA57: FLdPr var_B8
  loc_6CFA5A:  = Me.Visible = from_stack_1b
  loc_6CFA5F: FFreeAd var_B4 = ""
  loc_6CFA66: FFree1Var var_B0 = ""
  loc_6CFA69: LitI4 6
  loc_6CFA6E: FLdRfVar var_B8
  loc_6CFA71: FLdPr var_C0
  loc_6CFA74: LateIdLdVar var_B0 DispID_38 0
  loc_6CFA7B: CastAdVar Me
  loc_6CFA7F: FStAdFunc var_B4
  loc_6CFA82: FLdPr var_B4
  loc_6CFA85:  = Me.IVcLegend.Location
  loc_6CFA8A: FLdPr var_B8
  loc_6CFA8D:  = Me.LocationType = from_stack_1v
  loc_6CFA92: FFreeAd var_B4 = ""
  loc_6CFA99: FFree1Var var_B0 = ""
  loc_6CFA9C: LitI4 3
  loc_6CFAA1: FLdRfVar var_B8
  loc_6CFAA4: FLdPr var_C0
  loc_6CFAA7: LateIdLdVar var_B0 DispID_38 0
  loc_6CFAAE: CastAdVar Me
  loc_6CFAB2: FStAdFunc var_B4
  loc_6CFAB5: FLdPr var_B4
  loc_6CFAB8:  = Me.IVcLegend.TextLayout
  loc_6CFABD: FLdPr var_B8
  loc_6CFAC0:  = Me.HorzAlignment = from_stack_1v
  loc_6CFAC5: FFreeAd var_B4 = ""
  loc_6CFACC: FFree1Var var_B0 = ""
  loc_6CFACF: LitI4 0
  loc_6CFAD4: FLdRfVar var_B8
  loc_6CFAD7: FLdPr var_C0
  loc_6CFADA: LateIdLdVar var_B0 DispID_38 0
  loc_6CFAE1: CastAdVar Me
  loc_6CFAE5: FStAdFunc var_B4
  loc_6CFAE8: FLdPr var_B4
  loc_6CFAEB:  = Me.IVcLegend.TextLayout
  loc_6CFAF0: FLdPr var_B8
  loc_6CFAF3:  = Me.VertAlignment = from_stack_1v
  loc_6CFAF8: FFreeAd var_B4 = ""
  loc_6CFAFF: FFree1Var var_B0 = ""
  loc_6CFB02: LitI4 1
  loc_6CFB07: FLdRfVar var_B8
  loc_6CFB0A: FLdPr var_C0
  loc_6CFB0D: LateIdLdVar var_B0 DispID_38 0
  loc_6CFB14: CastAdVar Me
  loc_6CFB18: FStAdFunc var_B4
  loc_6CFB1B: FLdPr var_B4
  loc_6CFB1E:  = Me.IVcLegend.TextLayout
  loc_6CFB23: FLdPr var_B8
  loc_6CFB26:  = Me.Orientation = from_stack_1v
  loc_6CFB2B: FFreeAd var_B4 = ""
  loc_6CFB32: FFree1Var var_B0 = ""
  loc_6CFB35: LitI2_Byte &HFF
  loc_6CFB37: FLdRfVar var_B8
  loc_6CFB3A: FLdPr var_C0
  loc_6CFB3D: LateIdLdVar var_B0 DispID_38 0
  loc_6CFB44: CastAdVar Me
  loc_6CFB48: FStAdFunc var_B4
  loc_6CFB4B: FLdPr var_B4
  loc_6CFB4E:  = Me.IVcLegend.TextLayout
  loc_6CFB53: FLdPr var_B8
  loc_6CFB56:  = Me.WordWrap = from_stack_1b
  loc_6CFB5B: FFreeAd var_B4 = ""
  loc_6CFB62: FFree1Var var_B0 = ""
  loc_6CFB65: FLdRfVar var_BA
  loc_6CFB68: from_stack_1v = Proc_134_24_61BF38()
  loc_6CFB6D: FLdI2 var_BA
  loc_6CFB70: CVarI2 var_A0
  loc_6CFB73: PopAdLdVar
  loc_6CFB74: FLdPr var_C0
  loc_6CFB77: LateIdSt
  loc_6CFB7C: LitI2_Byte &H18
  loc_6CFB7E: CR8I2
  loc_6CFB7F: FLdPr Me
  loc_6CFB82: MemLdStr hours
  loc_6CFB85: CR8Str
  loc_6CFB87: DivR8
  loc_6CFB88: CI2R8
  loc_6CFB89: CVarI2 var_A0
  loc_6CFB8C: PopAdLdVar
  loc_6CFB8D: FLdPr var_C0
  loc_6CFB90: LateIdSt
  loc_6CFB95: FLdRfVar var_1EC
  loc_6CFB98: LitVar_Missing var_1E8
  loc_6CFB9B: LitVar_Missing var_1C8
  loc_6CFB9E: LitVar_Missing var_1A8
  loc_6CFBA1: LitVar_Missing var_188
  loc_6CFBA4: LitVar_Missing var_168
  loc_6CFBA7: LitVar_Missing var_148
  loc_6CFBAA: LitVar_Missing var_128
  loc_6CFBAD: LitVar_Missing var_108
  loc_6CFBB0: LitVar_Missing var_E8
  loc_6CFBB3: LitVar_Missing var_B0
  loc_6CFBB6: LitStr "HORAS"
  loc_6CFBB9: FStStrCopy var_C8
  loc_6CFBBC: FLdRfVar var_C8
  loc_6CFBBF: LitI4 &HF
  loc_6CFBC4: PopTmpLdAdStr var_C4
  loc_6CFBC7: LitI2_Byte &HE
  loc_6CFBC9: PopTmpLdAd2 var_BA
  loc_6CFBCC: ImpAdLdRf MemVar_74C7D0
  loc_6CFBCF: NewIfNullPr clsMsg
  loc_6CFBD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CFBD7: ILdRf var_1EC
  loc_6CFBDA: FLdRfVar var_210
  loc_6CFBDD: FLdRfVar var_B8
  loc_6CFBE0: LitVarI2 var_20C, 1
  loc_6CFBE5: PopAdLdVar
  loc_6CFBE6: LitI4 0
  loc_6CFBEB: FLdPr var_C0
  loc_6CFBEE: LateIdLdVar var_1FC DispID_40 0
  loc_6CFBF5: CastAdVar Me
  loc_6CFBF9: FStAdFunc var_B4
  loc_6CFBFC: FLdPr var_B4
  loc_6CFBFF: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6CFC04: FLdPr var_B8
  loc_6CFC07:  = Me.AxisTitle
  loc_6CFC0C: FLdPr var_210
  loc_6CFC0F:  = Me._Text = from_stack_1v
  loc_6CFC14: FFreeStr var_C8 = ""
  loc_6CFC1B: FFreeAd var_B4 = "": var_B8 = ""
  loc_6CFC24: FFreeVar var_B0 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = ""
  loc_6CFC3D: LitI2_Byte 1
  loc_6CFC3F: CUI1I2
  loc_6CFC41: FLdRfVar var_86
  loc_6CFC44: FLdRfVar var_BA
  loc_6CFC47: from_stack_1v = Proc_134_24_61BF38()
  loc_6CFC4C: FLdI2 var_BA
  loc_6CFC4F: CUI1I2
  loc_6CFC51: ForUI1 var_214
  loc_6CFC57: FLdUI1
  loc_6CFC5B: CI4UI1
  loc_6CFC5C: FLdPr Me
  loc_6CFC5F: MemLdRfVar from_stack_1.global_6576
  loc_6CFC62: Ary1LdRfVar
  loc_6CFC64: CI4Var
  loc_6CFC66: FLdRfVar var_218
  loc_6CFC69: FLdRfVar var_210
  loc_6CFC6C: FLdUI1
  loc_6CFC70: CI2UI1
  loc_6CFC72: FLdRfVar var_B8
  loc_6CFC75: FLdPr var_C0
  loc_6CFC78: LateIdLdVar var_B0 DispID_40 0
  loc_6CFC7F: CastAdVar Me
  loc_6CFC83: FStAdFunc var_B4
  loc_6CFC86: FLdPr var_B4
  loc_6CFC89:  = Me.IVcPlot.SeriesCollection
  loc_6CFC8E: FLdPr var_B8
  loc_6CFC91: from_stack_2 = Me.item(from_stack_1v)
  loc_6CFC96: FLdPr var_210
  loc_6CFC99:  = Me.Pen
  loc_6CFC9E: FLdPr var_218
  loc_6CFCA1:  = Me.Style = from_stack_1v
  loc_6CFCA6: FFreeAd var_B4 = "": var_B8 = "": var_210 = ""
  loc_6CFCB1: FFree1Var var_B0 = ""
  loc_6CFCB4: FLdRfVar var_86
  loc_6CFCB7: NextUI1
  loc_6CFCBD: LitI2_Byte 1
  loc_6CFCBF: CUI1I2
  loc_6CFCC1: FLdRfVar var_88
  loc_6CFCC4: LitI2_Byte &H18
  loc_6CFCC6: CR8I2
  loc_6CFCC7: FLdPr Me
  loc_6CFCCA: MemLdStr hours
  loc_6CFCCD: CR8Str
  loc_6CFCCF: DivR8
  loc_6CFCD0: CUI1R4
  loc_6CFCD2: ForUI1 var_21C
  loc_6CFCD8: FLdUI1
  loc_6CFCDC: CI2UI1
  loc_6CFCDE: CVarI2 var_A0
  loc_6CFCE1: PopAdLdVar
  loc_6CFCE2: FLdPr var_C0
  loc_6CFCE5: LateIdSt
  loc_6CFCEA: FLdUI1
  loc_6CFCEE: CI2UI1
  loc_6CFCF0: LitI2_Byte 1
  loc_6CFCF2: SubI2
  loc_6CFCF3: CR8I2
  loc_6CFCF4: FLdPr Me
  loc_6CFCF7: MemLdStr hours
  loc_6CFCFA: CR8Str
  loc_6CFCFC: MulR8
  loc_6CFCFD: CVarR8
  loc_6CFD01: FLdRfVar var_E8
  loc_6CFD04: ImpAdCallFPR4  = Str()
  loc_6CFD09: FLdRfVar var_E8
  loc_6CFD0C: LitVarStr var_D8, " -"
  loc_6CFD11: ConcatVar var_108
  loc_6CFD15: FLdUI1
  loc_6CFD19: CR8I2
  loc_6CFD1A: FLdPr Me
  loc_6CFD1D: MemLdStr hours
  loc_6CFD20: CR8Str
  loc_6CFD22: MulR8
  loc_6CFD23: CVarR8
  loc_6CFD27: FLdRfVar var_148
  loc_6CFD2A: ImpAdCallFPR4  = Str()
  loc_6CFD2F: FLdRfVar var_148
  loc_6CFD32: ConcatVar var_168
  loc_6CFD36: CStrVarTmp
  loc_6CFD37: CVarStr var_188
  loc_6CFD3A: PopAdLdVar
  loc_6CFD3B: FLdPr var_C0
  loc_6CFD3E: LateIdSt
  loc_6CFD43: FFreeVar var_B0 = "": var_E8 = "": var_128 = "": var_108 = "": var_148 = "": var_168 = ""
  loc_6CFD54: FLdPr Me
  loc_6CFD57: MemLdI2 global_72
  loc_6CFD5A: BranchF loc_6D0194
  loc_6CFD5D: LitVarI2 var_A0, 1
  loc_6CFD62: PopAdLdVar
  loc_6CFD63: FLdPr var_C0
  loc_6CFD66: LateIdSt
  loc_6CFD6B: LitVarI2 var_A0, 1
  loc_6CFD70: PopAdLdVar
  loc_6CFD71: FLdPr var_C0
  loc_6CFD74: LateIdSt
  loc_6CFD79: LitVarStr var_A0, "Tot."
  loc_6CFD7E: PopAdLdVar
  loc_6CFD7F: FLdPr var_C0
  loc_6CFD82: LateIdSt
  loc_6CFD87: LitI4 1
  loc_6CFD8C: FLdRfVar var_218
  loc_6CFD8F: FLdRfVar var_210
  loc_6CFD92: LitI2_Byte 1
  loc_6CFD94: FLdRfVar var_B8
  loc_6CFD97: FLdPr var_C0
  loc_6CFD9A: LateIdLdVar var_B0 DispID_40 0
  loc_6CFDA1: CastAdVar Me
  loc_6CFDA5: FStAdFunc var_B4
  loc_6CFDA8: FLdPr var_B4
  loc_6CFDAB:  = Me.IVcPlot.SeriesCollection
  loc_6CFDB0: FLdPr var_B8
  loc_6CFDB3: from_stack_2 = Me.item(from_stack_1v)
  loc_6CFDB8: FLdPr var_210
  loc_6CFDBB:  = Me.Pen
  loc_6CFDC0: FLdPr var_218
  loc_6CFDC3:  = Me.Style = from_stack_1v
  loc_6CFDC8: FFreeAd var_B4 = "": var_B8 = "": var_210 = ""
  loc_6CFDD3: FFree1Var var_B0 = ""
  loc_6CFDD6: ILdUI1 arg_C
  loc_6CFDDA: FStUI1 var_21E
  loc_6CFDDE: FLdUI1
  loc_6CFDE2: LitI2_Byte 1
  loc_6CFDE4: CUI1I2
  loc_6CFDE6: EqI2
  loc_6CFDE7: BranchF loc_6CFE76
  loc_6CFDEA: LitI4 &HB
  loc_6CFDEF: FLdUI1
  loc_6CFDF3: CI4UI1
  loc_6CFDF4: FLdPr Me
  loc_6CFDF7: MemLdRfVar from_stack_1.global_236
  loc_6CFDFA: AryInRecLdPr
  loc_6CFE00: MemLdRfVar from_stack_1.global_88
  loc_6CFE03: AryInRecLdPr
  loc_6CFE09: MemLdR8 global_0
  loc_6CFE0C: CStrCy
  loc_6CFE0E: CVarStr var_B0
  loc_6CFE11: PopAdLdVar
  loc_6CFE12: FLdPr var_C0
  loc_6CFE15: LateIdSt
  loc_6CFE1A: FFree1Var var_B0 = ""
  loc_6CFE1D: ImpAdLdI4 MemVar_74BECC
  loc_6CFE20: FLdPr Me
  loc_6CFE23: MemLdStr global_6640
  loc_6CFE26: ConcatStr
  loc_6CFE27: FStStrNoPop var_C8
  loc_6CFE2A: FLdRfVar var_210
  loc_6CFE2D: FLdRfVar var_B8
  loc_6CFE30: LitVarI2 var_A0, 1
  loc_6CFE35: PopAdLdVar
  loc_6CFE36: LitI4 1
  loc_6CFE3B: FLdPr var_C0
  loc_6CFE3E: LateIdLdVar var_B0 DispID_40 0
  loc_6CFE45: CastAdVar Me
  loc_6CFE49: FStAdFunc var_B4
  loc_6CFE4C: FLdPr var_B4
  loc_6CFE4F: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6CFE54: FLdPr var_B8
  loc_6CFE57:  = Me.AxisTitle
  loc_6CFE5C: FLdPr var_210
  loc_6CFE5F:  = Me._Text = from_stack_1v
  loc_6CFE64: FFree1Str var_C8
  loc_6CFE67: FFreeAd var_B4 = "": var_B8 = ""
  loc_6CFE70: FFree1Var var_B0 = ""
  loc_6CFE73: Branch loc_6D0191
  loc_6CFE76: FLdUI1
  loc_6CFE7A: LitI2_Byte 2
  loc_6CFE7C: CUI1I2
  loc_6CFE7E: EqI2
  loc_6CFE7F: BranchF loc_6CFF0E
  loc_6CFE82: LitI4 &HB
  loc_6CFE87: FLdUI1
  loc_6CFE8B: CI4UI1
  loc_6CFE8C: FLdPr Me
  loc_6CFE8F: MemLdRfVar from_stack_1.global_236
  loc_6CFE92: AryInRecLdPr
  loc_6CFE98: MemLdRfVar from_stack_1.global_0
  loc_6CFE9B: AryInRecLdPr
  loc_6CFEA1: MemLdR8 global_0
  loc_6CFEA4: CStrCy
  loc_6CFEA6: CVarStr var_B0
  loc_6CFEA9: PopAdLdVar
  loc_6CFEAA: FLdPr var_C0
  loc_6CFEAD: LateIdSt
  loc_6CFEB2: FFree1Var var_B0 = ""
  loc_6CFEB5: ImpAdLdI4 MemVar_74BEBC
  loc_6CFEB8: FLdPr Me
  loc_6CFEBB: MemLdStr global_6640
  loc_6CFEBE: ConcatStr
  loc_6CFEBF: FStStrNoPop var_C8
  loc_6CFEC2: FLdRfVar var_210
  loc_6CFEC5: FLdRfVar var_B8
  loc_6CFEC8: LitVarI2 var_A0, 1
  loc_6CFECD: PopAdLdVar
  loc_6CFECE: LitI4 1
  loc_6CFED3: FLdPr var_C0
  loc_6CFED6: LateIdLdVar var_B0 DispID_40 0
  loc_6CFEDD: CastAdVar Me
  loc_6CFEE1: FStAdFunc var_B4
  loc_6CFEE4: FLdPr var_B4
  loc_6CFEE7: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6CFEEC: FLdPr var_B8
  loc_6CFEEF:  = Me.AxisTitle
  loc_6CFEF4: FLdPr var_210
  loc_6CFEF7:  = Me._Text = from_stack_1v
  loc_6CFEFC: FFree1Str var_C8
  loc_6CFEFF: FFreeAd var_B4 = "": var_B8 = ""
  loc_6CFF08: FFree1Var var_B0 = ""
  loc_6CFF0B: Branch loc_6D0191
  loc_6CFF0E: FLdUI1
  loc_6CFF12: LitI2_Byte 3
  loc_6CFF14: CUI1I2
  loc_6CFF16: EqI2
  loc_6CFF17: BranchF loc_6CFF9C
  loc_6CFF1A: LitI4 &HB
  loc_6CFF1F: FLdUI1
  loc_6CFF23: CI4UI1
  loc_6CFF24: FLdPr Me
  loc_6CFF27: MemLdRfVar from_stack_1.global_236
  loc_6CFF2A: AryInRecLdPr
  loc_6CFF30: MemLdRfVar from_stack_1.global_176
  loc_6CFF33: AryInRecLdPr
  loc_6CFF39: MemLdR8 global_0
  loc_6CFF3C: CStrCy
  loc_6CFF3E: CVarStr var_B0
  loc_6CFF41: PopAdLdVar
  loc_6CFF42: FLdPr var_C0
  loc_6CFF45: LateIdSt
  loc_6CFF4A: FFree1Var var_B0 = ""
  loc_6CFF4D: FLdPr Me
  loc_6CFF50: MemLdStr global_6648
  loc_6CFF53: FLdRfVar var_210
  loc_6CFF56: FLdRfVar var_B8
  loc_6CFF59: LitVarI2 var_A0, 1
  loc_6CFF5E: PopAdLdVar
  loc_6CFF5F: LitI4 1
  loc_6CFF64: FLdPr var_C0
  loc_6CFF67: LateIdLdVar var_B0 DispID_40 0
  loc_6CFF6E: CastAdVar Me
  loc_6CFF72: FStAdFunc var_B4
  loc_6CFF75: FLdPr var_B4
  loc_6CFF78: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6CFF7D: FLdPr var_B8
  loc_6CFF80:  = Me.AxisTitle
  loc_6CFF85: FLdPr var_210
  loc_6CFF88:  = Me._Text = from_stack_1v
  loc_6CFF8D: FFreeAd var_B4 = "": var_B8 = ""
  loc_6CFF96: FFree1Var var_B0 = ""
  loc_6CFF99: Branch loc_6D0191
  loc_6CFF9C: FLdUI1
  loc_6CFFA0: LitI2_Byte 4
  loc_6CFFA2: CUI1I2
  loc_6CFFA4: EqI2
  loc_6CFFA5: BranchF loc_6D0098
  loc_6CFFA8: LitI4 &HB
  loc_6CFFAD: FLdUI1
  loc_6CFFB1: CI4UI1
  loc_6CFFB2: FLdPr Me
  loc_6CFFB5: MemLdRfVar from_stack_1.global_236
  loc_6CFFB8: AryInRecLdPr
  loc_6CFFBE: MemLdRfVar from_stack_1.global_176
  loc_6CFFC1: AryInRecLdPr
  loc_6CFFC7: MemLdR8 global_0
  loc_6CFFCA: LitI2_Byte 0
  loc_6CFFCC: CR8I2
  loc_6CFFCD: EqCyR8
  loc_6CFFCE: BranchF loc_6CFFE7
  loc_6CFFD1: LitI2_Byte 0
  loc_6CFFD3: CStrUI1
  loc_6CFFD5: CVarStr var_B0
  loc_6CFFD8: PopAdLdVar
  loc_6CFFD9: FLdPr var_C0
  loc_6CFFDC: LateIdSt
  loc_6CFFE1: FFree1Var var_B0 = ""
  loc_6CFFE4: Branch loc_6D003F
  loc_6CFFE7: LitI4 &HB
  loc_6CFFEC: FLdUI1
  loc_6CFFF0: CI4UI1
  loc_6CFFF1: FLdPr Me
  loc_6CFFF4: MemLdRfVar from_stack_1.global_236
  loc_6CFFF7: AryInRecLdPr
  loc_6CFFFD: MemLdRfVar from_stack_1.global_88
  loc_6D0000: AryInRecLdPr
  loc_6D0006: MemLdR8 global_0
  loc_6D0009: CR8Cy
  loc_6D000A: LitI4 &HB
  loc_6D000F: FLdUI1
  loc_6D0013: CI4UI1
  loc_6D0014: FLdPr Me
  loc_6D0017: MemLdRfVar from_stack_1.global_236
  loc_6D001A: AryInRecLdPr
  loc_6D0020: MemLdRfVar from_stack_1.global_176
  loc_6D0023: AryInRecLdPr
  loc_6D0029: MemLdR8 global_0
  loc_6D002C: CR8Cy
  loc_6D002D: DivR8
  loc_6D002E: CStrR8
  loc_6D0030: CVarStr var_B0
  loc_6D0033: PopAdLdVar
  loc_6D0034: FLdPr var_C0
  loc_6D0037: LateIdSt
  loc_6D003C: FFree1Var var_B0 = ""
  loc_6D003F: ImpAdLdI4 MemVar_74BECC
  loc_6D0042: FLdPr Me
  loc_6D0045: MemLdStr global_6644
  loc_6D0048: ConcatStr
  loc_6D0049: FStStrNoPop var_C8
  loc_6D004C: FLdRfVar var_210
  loc_6D004F: FLdRfVar var_B8
  loc_6D0052: LitVarI2 var_A0, 1
  loc_6D0057: PopAdLdVar
  loc_6D0058: LitI4 1
  loc_6D005D: FLdPr var_C0
  loc_6D0060: LateIdLdVar var_B0 DispID_40 0
  loc_6D0067: CastAdVar Me
  loc_6D006B: FStAdFunc var_B4
  loc_6D006E: FLdPr var_B4
  loc_6D0071: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6D0076: FLdPr var_B8
  loc_6D0079:  = Me.AxisTitle
  loc_6D007E: FLdPr var_210
  loc_6D0081:  = Me._Text = from_stack_1v
  loc_6D0086: FFree1Str var_C8
  loc_6D0089: FFreeAd var_B4 = "": var_B8 = ""
  loc_6D0092: FFree1Var var_B0 = ""
  loc_6D0095: Branch loc_6D0191
  loc_6D0098: FLdUI1
  loc_6D009C: LitI2_Byte 5
  loc_6D009E: CUI1I2
  loc_6D00A0: EqI2
  loc_6D00A1: BranchF loc_6D0191
  loc_6D00A4: LitI4 &HB
  loc_6D00A9: FLdUI1
  loc_6D00AD: CI4UI1
  loc_6D00AE: FLdPr Me
  loc_6D00B1: MemLdRfVar from_stack_1.global_236
  loc_6D00B4: AryInRecLdPr
  loc_6D00BA: MemLdRfVar from_stack_1.global_176
  loc_6D00BD: AryInRecLdPr
  loc_6D00C3: MemLdR8 global_0
  loc_6D00C6: LitI2_Byte 0
  loc_6D00C8: CR8I2
  loc_6D00C9: EqCyR8
  loc_6D00CA: BranchF loc_6D00E3
  loc_6D00CD: LitI2_Byte 0
  loc_6D00CF: CStrUI1
  loc_6D00D1: CVarStr var_B0
  loc_6D00D4: PopAdLdVar
  loc_6D00D5: FLdPr var_C0
  loc_6D00D8: LateIdSt
  loc_6D00DD: FFree1Var var_B0 = ""
  loc_6D00E0: Branch loc_6D013B
  loc_6D00E3: LitI4 &HB
  loc_6D00E8: FLdUI1
  loc_6D00EC: CI4UI1
  loc_6D00ED: FLdPr Me
  loc_6D00F0: MemLdRfVar from_stack_1.global_236
  loc_6D00F3: AryInRecLdPr
  loc_6D00F9: MemLdRfVar from_stack_1.global_0
  loc_6D00FC: AryInRecLdPr
  loc_6D0102: MemLdR8 global_0
  loc_6D0105: CR8Cy
  loc_6D0106: LitI4 &HB
  loc_6D010B: FLdUI1
  loc_6D010F: CI4UI1
  loc_6D0110: FLdPr Me
  loc_6D0113: MemLdRfVar from_stack_1.global_236
  loc_6D0116: AryInRecLdPr
  loc_6D011C: MemLdRfVar from_stack_1.global_176
  loc_6D011F: AryInRecLdPr
  loc_6D0125: MemLdR8 global_0
  loc_6D0128: CR8Cy
  loc_6D0129: DivR8
  loc_6D012A: CStrR8
  loc_6D012C: CVarStr var_B0
  loc_6D012F: PopAdLdVar
  loc_6D0130: FLdPr var_C0
  loc_6D0133: LateIdSt
  loc_6D0138: FFree1Var var_B0 = ""
  loc_6D013B: ImpAdLdI4 MemVar_74BEBC
  loc_6D013E: FLdPr Me
  loc_6D0141: MemLdStr global_6644
  loc_6D0144: ConcatStr
  loc_6D0145: FStStrNoPop var_C8
  loc_6D0148: FLdRfVar var_210
  loc_6D014B: FLdRfVar var_B8
  loc_6D014E: LitVarI2 var_A0, 1
  loc_6D0153: PopAdLdVar
  loc_6D0154: LitI4 1
  loc_6D0159: FLdPr var_C0
  loc_6D015C: LateIdLdVar var_B0 DispID_40 0
  loc_6D0163: CastAdVar Me
  loc_6D0167: FStAdFunc var_B4
  loc_6D016A: FLdPr var_B4
  loc_6D016D: from_stack_3 = Me.IVcPlot.Axis(from_stack_1v, from_stack_2v)
  loc_6D0172: FLdPr var_B8
  loc_6D0175:  = Me.AxisTitle
  loc_6D017A: FLdPr var_210
  loc_6D017D:  = Me._Text = from_stack_1v
  loc_6D0182: FFree1Str var_C8
  loc_6D0185: FFreeAd var_B4 = "": var_B8 = ""
  loc_6D018E: FFree1Var var_B0 = ""
  loc_6D0191: Branch loc_6D01A5
  loc_6D0194: ILdRf arg_C
  loc_6D0197: FLdUI1
  loc_6D019B: CI2UI1
  loc_6D019D: PopTmpLdAd2 var_BA
  loc_6D01A0: from_stack_3v = Proc_134_27_674FD8(from_stack_1v, from_stack_2v)
  loc_6D01A5: FLdRfVar var_88
  loc_6D01A8: NextUI1
  loc_6D01AE: LitNothing
  loc_6D01B0: FStAd var_C0 
  loc_6D01B4: Branch loc_6D01C3
  loc_6D01B7: FLdUI1
  loc_6D01BB: LitI2_Byte 3
  loc_6D01BD: CUI1I2
  loc_6D01BF: EqI2
  loc_6D01C0: BranchF loc_6D01C3
  loc_6D01C3: ExitProcHresult
End Function
