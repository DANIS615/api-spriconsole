VERSION 5.00
Begin VB.Form frmReporteCisterna
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
  ClientHeight = 8745
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer tmrAceptar
    Enabled = 0   'False
    Interval = 60000
    Left = 2760
    Top = 1080
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 7
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 240
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 6
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 120
    Top = 8400
  End
  Begin VB.CommandButton cmdAcpetar
    Caption = "&Aceptar"
    Left = 9360
    Top = 7680
    Width = 2175
    Height = 855
    TabIndex = 3
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 6720
    Top = 7680
    Width = 2175
    Height = 855
    TabIndex = 2
    Default = -1  'True
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
  Begin VB.ListBox lstReporte
    Left = 240
    Top = 1800
    Width = 11415
    Height = 5580
    TabIndex = 0
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 240
    Top = 1080
    Width = 1815
    Height = 375
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10320
    Top = 1080
    Width = 1095
    Height = 375
    TabIndex = 4
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Reporte Camión Cisterna"
    Left = 2760
    Top = 360
    Width = 6375
    Height = 615
    TabIndex = 1
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
End

Attribute VB_Name = "frmReporteCisterna"

Public fecha As String
Public strReporteCamionCisterna As String
Public strDateTime As String


Private Sub tmrAceptar_Timer() '6046AC
  'Data Table: 41C41C
  loc_6045DC: LitStr "00"
  loc_6045DF: FStStrCopy var_9C
  loc_6045E2: FLdRfVar var_9C
  loc_6045E5: LitStr "TIEMPO_CIERRE_VENTANA"
  loc_6045E8: FStStrCopy var_98
  loc_6045EB: FLdRfVar var_98
  loc_6045EE: ImpAdCallI2 Proc_53_9_613F58(, )
  loc_6045F3: CVarStr var_AC
  loc_6045F6: FStVar var_94
  loc_6045FA: FFreeStr var_98 = ""
  loc_604601: FLdRfVar var_AC
  loc_604604: ImpAdCallFPR4  = Time
  loc_604609: FLdRfVar var_AC
  loc_60460C: FLdPr Me
  loc_60460F: MemLdRfVar from_stack_1.global_64
  loc_604612: SubVar var_BC
  loc_604616: FLdPr Me
  loc_604619: MemStVar
  loc_60461D: FFree1Var var_AC = ""
  loc_604620: LitI4 1
  loc_604625: LitI4 1
  loc_60462A: LitVarStr var_CC, "hh:mm"
  loc_60462F: FStVarCopyObj var_AC
  loc_604632: FLdRfVar var_AC
  loc_604635: FLdPr Me
  loc_604638: MemLdRfVar from_stack_1.global_80
  loc_60463B: ImpAdCallI2 Format$(, )
  loc_604640: FStStrNoPop var_98
  loc_604643: FLdPr Me
  loc_604646: MemStStrCopy
  loc_60464A: FFree1Str var_98
  loc_60464D: FFree1Var var_AC = ""
  loc_604650: FLdRfVar var_94
  loc_604653: LitVarStr var_CC, "00"
  loc_604658: HardType
  loc_604659: NeVarBool
  loc_60465B: BranchF loc_604695
  loc_60465E: LitVarI2 var_AC, 2
  loc_604663: LitI4 4
  loc_604668: FLdPr Me
  loc_60466B: MemLdRfVar from_stack_1.global_96
  loc_60466E: CVarRef
  loc_604673: FLdRfVar var_BC
  loc_604676: ImpAdCallFPR4  = Mid(, , )
  loc_60467B: FLdRfVar var_BC
  loc_60467E: FLdRfVar var_94
  loc_604681: GeVarBool
  loc_604683: FFreeVar var_AC = ""
  loc_60468A: BranchF loc_604692
  loc_60468D: Call cmdAcpetar_Click()
  loc_604692: Branch loc_6046A9
  loc_604695: LitI2_Byte 0
  loc_604697: FLdPrThis
  loc_604698: VCallAd Control_ID_tmrAceptar
  loc_60469B: FStAdFunc var_F0
  loc_60469E: FLdPr var_F0
  loc_6046A1: Me.Enabled = from_stack_1b
  loc_6046A6: FFree1Ad var_F0
  loc_6046A9: ExitProcHresult
End Sub

Private Sub Form_Load() '625050
  'Data Table: 41C41C
  loc_624EDC: LitI2_Byte 0
  loc_624EDE: CR8I2
  loc_624EDF: PopFPR4
  loc_624EE0: FLdPr Me
  loc_624EE3: Me.Top = from_stack_1s
  loc_624EE8: LitI2_Byte 0
  loc_624EEA: CR8I2
  loc_624EEB: PopFPR4
  loc_624EEC: FLdPr Me
  loc_624EEF: Me.Left = from_stack_1s
  loc_624EF4: FLdRfVar var_8C
  loc_624EF7: FLdRfVar var_88
  loc_624EFA: ImpAdLdRf MemVar_7520D4
  loc_624EFD: NewIfNullPr Global
  loc_624F00:  = Global.Screen
  loc_624F05: FLdPr var_88
  loc_624F08:  = Screen.TwipsPerPixelY
  loc_624F0D: FLdFPR4 var_8C
  loc_624F10: LitI2 600
  loc_624F13: CR8I2
  loc_624F14: MulR8
  loc_624F15: PopFPR4
  loc_624F16: FLdPr Me
  loc_624F19: Me.Height = from_stack_1s
  loc_624F1E: FFree1Ad var_88
  loc_624F21: FLdRfVar var_8C
  loc_624F24: FLdRfVar var_88
  loc_624F27: ImpAdLdRf MemVar_7520D4
  loc_624F2A: NewIfNullPr Global
  loc_624F2D:  = Global.Screen
  loc_624F32: FLdPr var_88
  loc_624F35:  = Screen.TwipsPerPixelX
  loc_624F3A: FLdFPR4 var_8C
  loc_624F3D: LitI2 800
  loc_624F40: CR8I2
  loc_624F41: MulR8
  loc_624F42: PopFPR4
  loc_624F43: FLdPr Me
  loc_624F46: Me.Width = from_stack_1s
  loc_624F4B: FFree1Ad var_88
  loc_624F4E: LitVarStr var_A0, "Courier New"
  loc_624F53: PopAdLdVar
  loc_624F54: FLdRfVar var_90
  loc_624F57: FLdPrThis
  loc_624F58: VCallAd Control_ID_lstReporte
  loc_624F5B: FStAdFunc var_88
  loc_624F5E: FLdPr var_88
  loc_624F61:  = Me.Font
  loc_624F66: FLdPr var_90
  loc_624F69: LateIdSt
  loc_624F6E: FFreeAd var_88 = ""
  loc_624F75: LitVarI2 var_A0, 11
  loc_624F7A: PopAdLdVar
  loc_624F7B: FLdRfVar var_90
  loc_624F7E: FLdPrThis
  loc_624F7F: VCallAd Control_ID_lstReporte
  loc_624F82: FStAdFunc var_88
  loc_624F85: FLdPr var_88
  loc_624F88:  = Me.Font
  loc_624F8D: FLdPr var_90
  loc_624F90: LateIdSt
  loc_624F95: FFreeAd var_88 = ""
  loc_624F9C: FLdRfVar var_B0
  loc_624F9F: ImpAdCallFPR4  = Date
  loc_624FA4: LitI4 1
  loc_624FA9: LitI4 1
  loc_624FAE: LitVarStr var_A0, "dd/mm/yyyy"
  loc_624FB3: FStVarCopyObj var_C0
  loc_624FB6: FLdRfVar var_C0
  loc_624FB9: FLdRfVar var_B0
  loc_624FBC: ImpAdCallI2 Format$(, )
  loc_624FC1: FStStrNoPop var_C4
  loc_624FC4: FLdPrThis
  loc_624FC5: VCallAd Control_ID_lFecha
  loc_624FC8: FStAdFunc var_88
  loc_624FCB: FLdPr var_88
  loc_624FCE: Me.Caption = from_stack_1
  loc_624FD3: FFree1Str var_C4
  loc_624FD6: FFree1Ad var_88
  loc_624FD9: FFreeVar var_B0 = ""
  loc_624FE0: FLdRfVar var_B0
  loc_624FE3: ImpAdCallFPR4  = Time
  loc_624FE8: LitI4 1
  loc_624FED: LitI4 1
  loc_624FF2: LitVarStr var_A0, "hh:mm"
  loc_624FF7: FStVarCopyObj var_C0
  loc_624FFA: FLdRfVar var_C0
  loc_624FFD: FLdRfVar var_B0
  loc_625000: ImpAdCallI2 Format$(, )
  loc_625005: FStStrNoPop var_C4
  loc_625008: FLdPrThis
  loc_625009: VCallAd Control_ID_lHora
  loc_62500C: FStAdFunc var_88
  loc_62500F: FLdPr var_88
  loc_625012: Me.Caption = from_stack_1
  loc_625017: FFree1Str var_C4
  loc_62501A: FFree1Ad var_88
  loc_62501D: FFreeVar var_B0 = ""
  loc_625024: FLdRfVar var_B0
  loc_625027: ImpAdCallFPR4  = Time
  loc_62502C: FLdRfVar var_B0
  loc_62502F: FLdPr Me
  loc_625032: MemStVar
  loc_625036: FFree1Var var_B0 = ""
  loc_625039: LitI2_Byte &HFF
  loc_62503B: FLdPrThis
  loc_62503C: VCallAd Control_ID_tmrAceptar
  loc_62503F: FStAdFunc var_88
  loc_625042: FLdPr var_88
  loc_625045: Me.Enabled = from_stack_1b
  loc_62504A: FFree1Ad var_88
  loc_62504D: ExitProcHresult
End Sub

Private Sub Form_Activate() '653598
  'Data Table: 41C41C
  loc_6532DC: FLdPrThis
  loc_6532DD: VCallAd Control_ID_Picture1
  loc_6532E0: FStAdFunc var_98
  loc_6532E3: FLdRfVar var_8C
  loc_6532E6: FLdRfVar var_88
  loc_6532E9: ImpAdLdRf MemVar_7520D4
  loc_6532EC: NewIfNullPr Global
  loc_6532EF:  = Global.App
  loc_6532F4: FLdPr var_88
  loc_6532F7:  = App.Path
  loc_6532FC: ILdRf var_8C
  loc_6532FF: LitStr "\Logo_Compania.bmp"
  loc_653302: ConcatStr
  loc_653303: FStStrNoPop var_94
  loc_653306: FLdZeroAd var_98
  loc_653309: FStAdFunc var_90
  loc_65330C: FLdRfVar var_90
  loc_65330F: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_653314: FFreeStr var_8C = ""
  loc_65331B: FFreeAd var_88 = "": var_90 = ""
  loc_653324: FLdPrThis
  loc_653325: VCallAd Control_ID_Picture2
  loc_653328: FStAdFunc var_98
  loc_65332B: FLdRfVar var_8C
  loc_65332E: FLdRfVar var_88
  loc_653331: ImpAdLdRf MemVar_7520D4
  loc_653334: NewIfNullPr Global
  loc_653337:  = Global.App
  loc_65333C: FLdPr var_88
  loc_65333F:  = App.Path
  loc_653344: ILdRf var_8C
  loc_653347: LitStr "\Logo_Proyecto.bmp"
  loc_65334A: ConcatStr
  loc_65334B: FStStrNoPop var_94
  loc_65334E: FLdZeroAd var_98
  loc_653351: FStAdFunc var_90
  loc_653354: FLdRfVar var_90
  loc_653357: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_65335C: FFreeStr var_8C = ""
  loc_653363: FFreeAd var_88 = "": var_90 = ""
  loc_65336C: FLdRfVar var_94
  loc_65336F: LitVar_Missing var_1E0
  loc_653372: LitVar_Missing var_1C0
  loc_653375: LitVar_Missing var_1A0
  loc_653378: LitVar_Missing var_180
  loc_65337B: LitVar_Missing var_160
  loc_65337E: LitVar_Missing var_140
  loc_653381: LitVar_Missing var_120
  loc_653384: LitVar_Missing var_100
  loc_653387: LitVar_Missing var_E0
  loc_65338A: LitVar_Missing var_C0
  loc_65338D: LitStr "Reporte Camión Cisterna"
  loc_653390: FStStrCopy var_8C
  loc_653393: FLdRfVar var_8C
  loc_653396: LitI4 1
  loc_65339B: PopTmpLdAdStr var_A0
  loc_65339E: LitI2_Byte 7
  loc_6533A0: PopTmpLdAd2 var_9A
  loc_6533A3: ImpAdLdRf MemVar_74C7D0
  loc_6533A6: NewIfNullPr clsMsg
  loc_6533A9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6533AE: ILdRf var_94
  loc_6533B1: FLdPr Me
  loc_6533B4: MemStStrCopy
  loc_6533B8: FFreeStr var_8C = ""
  loc_6533BF: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6533D6: FLdPr Me
  loc_6533D9: MemLdStr strReporteCamionCisterna
  loc_6533DC: FLdPrThis
  loc_6533DD: VCallAd Control_ID_Label1
  loc_6533E0: FStAdFunc var_88
  loc_6533E3: FLdPr var_88
  loc_6533E6: Me.Caption = from_stack_1
  loc_6533EB: FFree1Ad var_88
  loc_6533EE: FLdRfVar var_94
  loc_6533F1: LitVar_Missing var_1E0
  loc_6533F4: LitVar_Missing var_1C0
  loc_6533F7: LitVar_Missing var_1A0
  loc_6533FA: LitVar_Missing var_180
  loc_6533FD: LitVar_Missing var_160
  loc_653400: LitVar_Missing var_140
  loc_653403: LitVar_Missing var_120
  loc_653406: LitVar_Missing var_100
  loc_653409: LitVar_Missing var_E0
  loc_65340C: LitVar_Missing var_C0
  loc_65340F: LitStr "&Imprimir"
  loc_653412: FStStrCopy var_8C
  loc_653415: FLdRfVar var_8C
  loc_653418: LitI4 2
  loc_65341D: PopTmpLdAdStr var_A0
  loc_653420: LitI2_Byte 7
  loc_653422: PopTmpLdAd2 var_9A
  loc_653425: ImpAdLdRf MemVar_74C7D0
  loc_653428: NewIfNullPr clsMsg
  loc_65342B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_653430: ILdRf var_94
  loc_653433: FLdPrThis
  loc_653434: VCallAd Control_ID_cmdImprimir
  loc_653437: FStAdFunc var_88
  loc_65343A: FLdPr var_88
  loc_65343D: Me.Caption = from_stack_1
  loc_653442: FFreeStr var_8C = ""
  loc_653449: FFree1Ad var_88
  loc_65344C: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_653463: FLdRfVar var_94
  loc_653466: LitVar_Missing var_1E0
  loc_653469: LitVar_Missing var_1C0
  loc_65346C: LitVar_Missing var_1A0
  loc_65346F: LitVar_Missing var_180
  loc_653472: LitVar_Missing var_160
  loc_653475: LitVar_Missing var_140
  loc_653478: LitVar_Missing var_120
  loc_65347B: LitVar_Missing var_100
  loc_65347E: LitVar_Missing var_E0
  loc_653481: LitVar_Missing var_C0
  loc_653484: LitStr "&Aceptar"
  loc_653487: FStStrCopy var_8C
  loc_65348A: FLdRfVar var_8C
  loc_65348D: LitI4 3
  loc_653492: PopTmpLdAdStr var_A0
  loc_653495: LitI2_Byte 7
  loc_653497: PopTmpLdAd2 var_9A
  loc_65349A: ImpAdLdRf MemVar_74C7D0
  loc_65349D: NewIfNullPr clsMsg
  loc_6534A0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6534A5: ILdRf var_94
  loc_6534A8: FLdPrThis
  loc_6534A9: VCallAd Control_ID_cmdAcpetar
  loc_6534AC: FStAdFunc var_88
  loc_6534AF: FLdPr var_88
  loc_6534B2: Me.Caption = from_stack_1
  loc_6534B7: FFreeStr var_8C = ""
  loc_6534BE: FFree1Ad var_88
  loc_6534C1: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6534D8: FLdRfVar var_94
  loc_6534DB: LitVar_Missing var_1E0
  loc_6534DE: LitVar_Missing var_1C0
  loc_6534E1: LitVar_Missing var_1A0
  loc_6534E4: LitVar_Missing var_180
  loc_6534E7: LitVar_Missing var_160
  loc_6534EA: LitVar_Missing var_140
  loc_6534ED: LitVar_Missing var_120
  loc_6534F0: LitVar_Missing var_100
  loc_6534F3: LitVar_Missing var_E0
  loc_6534F6: LitVar_Missing var_C0
  loc_6534F9: LitStr "Fecha y Hora de emisión: "
  loc_6534FC: FStStrCopy var_8C
  loc_6534FF: FLdRfVar var_8C
  loc_653502: LitI4 4
  loc_653507: PopTmpLdAdStr var_A0
  loc_65350A: LitI2_Byte 7
  loc_65350C: PopTmpLdAd2 var_9A
  loc_65350F: ImpAdLdRf MemVar_74C7D0
  loc_653512: NewIfNullPr clsMsg
  loc_653515: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65351A: ILdRf var_94
  loc_65351D: FLdPr Me
  loc_653520: MemStStrCopy
  loc_653524: FFreeStr var_8C = ""
  loc_65352B: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_653542: FLdPr Me
  loc_653545: MemLdStr fecha
  loc_653548: LitStr vbNullString
  loc_65354B: EqStr
  loc_65354D: FLdPr Me
  loc_653550: MemLdStr fecha
  loc_653553: FnLenStr
  loc_653554: LitI4 &HE
  loc_653559: NeI4
  loc_65355A: OrI4
  loc_65355B: BranchF loc_653568
  loc_65355E: LitStr "00000000"
  loc_653561: FLdPr Me
  loc_653564: MemStStrCopy
  loc_653568: LitI2_Byte &HFF
  loc_65356A: FLdPrThis
  loc_65356B: VCallAd Control_ID_tmrAceptar
  loc_65356E: FStAdFunc var_88
  loc_653571: FLdPr var_88
  loc_653574: Me.Enabled = from_stack_1b
  loc_653579: FFree1Ad var_88
  loc_65357C: FLdPrThis
  loc_65357D: VCallAd Control_ID_lstReporte
  loc_653580: FStAdFunc var_88
  loc_653583: FLdRfVar var_88
  loc_653586: FLdPr Me
  loc_653589: MemLdStr fecha
  loc_65358C: ImpAdCallFPR4 Proc_53_7_736A84(, )
  loc_653591: FFree1Ad var_88
  loc_653594: ExitProcHresult
End Sub

Private Sub Form_Deactivate() '5D29D0
  'Data Table: 41C41C
  loc_5D29B8: LitI2_Byte 0
  loc_5D29BA: FLdPrThis
  loc_5D29BB: VCallAd Control_ID_tmrAceptar
  loc_5D29BE: FStAdFunc var_88
  loc_5D29C1: FLdPr var_88
  loc_5D29C4: Me.Enabled = from_stack_1b
  loc_5D29C9: FFree1Ad var_88
  loc_5D29CC: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5FC934
  'Data Table: 41C41C
  loc_5FC880: FLdRfVar var_9C
  loc_5FC883: ImpAdCallFPR4  = Date
  loc_5FC888: LitI4 1
  loc_5FC88D: LitI4 1
  loc_5FC892: LitVarStr var_AC, "dd/mm/yyyy"
  loc_5FC897: FStVarCopyObj var_BC
  loc_5FC89A: FLdRfVar var_BC
  loc_5FC89D: FLdRfVar var_9C
  loc_5FC8A0: ImpAdCallI2 Format$(, )
  loc_5FC8A5: FStStrNoPop var_C0
  loc_5FC8A8: FLdPrThis
  loc_5FC8A9: VCallAd Control_ID_lFecha
  loc_5FC8AC: FStAdFunc var_C4
  loc_5FC8AF: FLdPr var_C4
  loc_5FC8B2: Me.Caption = from_stack_1
  loc_5FC8B7: FFree1Str var_C0
  loc_5FC8BA: FFree1Ad var_C4
  loc_5FC8BD: FFreeVar var_9C = ""
  loc_5FC8C4: FLdRfVar var_9C
  loc_5FC8C7: ImpAdCallFPR4  = Time
  loc_5FC8CC: LitI4 1
  loc_5FC8D1: LitI4 1
  loc_5FC8D6: LitVarStr var_AC, "hh:mm"
  loc_5FC8DB: FStVarCopyObj var_BC
  loc_5FC8DE: FLdRfVar var_BC
  loc_5FC8E1: FLdRfVar var_9C
  loc_5FC8E4: ImpAdCallI2 Format$(, )
  loc_5FC8E9: FStStrNoPop var_C0
  loc_5FC8EC: FLdPrThis
  loc_5FC8ED: VCallAd Control_ID_lHora
  loc_5FC8F0: FStAdFunc var_C4
  loc_5FC8F3: FLdPr var_C4
  loc_5FC8F6: Me.Caption = from_stack_1
  loc_5FC8FB: FFree1Str var_C0
  loc_5FC8FE: FFree1Ad var_C4
  loc_5FC901: FFreeVar var_9C = ""
  loc_5FC908: FLdPrThis
  loc_5FC909: VCallAd Control_ID_Reloj
  loc_5FC90C: FStAdFunc var_CC
  loc_5FC90F: ILdRf Me
  loc_5FC912: CastAd
  loc_5FC915: FStAdFunc var_C8
  loc_5FC918: FLdRfVar var_C8
  loc_5FC91B: FLdZeroAd var_CC
  loc_5FC91E: FStAdFunc var_C4
  loc_5FC921: FLdRfVar var_C4
  loc_5FC924: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_5FC929: FFreeAd var_C4 = "": var_C8 = ""
  loc_5FC932: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '65C778
  'Data Table: 41C41C
  loc_65C464: FLdRfVar var_98
  loc_65C467: FLdRfVar var_94
  loc_65C46A: ImpAdLdRf MemVar_7520D4
  loc_65C46D: NewIfNullPr Global
  loc_65C470:  = Global.App
  loc_65C475: FLdPr var_94
  loc_65C478:  = App.Path
  loc_65C47D: FLdRfVar var_AE
  loc_65C480: LitDate 13.22918
  loc_65C489: PopTmpLdAdFPR4
  loc_65C48D: LitDate 26.72294
  loc_65C496: PopTmpLdAdFPR4
  loc_65C49A: LitI2_Byte &H14
  loc_65C49C: CR8I2
  loc_65C49D: PopTmpLdAdFPR4
  loc_65C4A1: LitI2_Byte &HA
  loc_65C4A3: CR8I2
  loc_65C4A4: PopTmpLdAdFPR4
  loc_65C4A8: ILdRf var_98
  loc_65C4AB: LitStr "\Logo_Compania.bmp"
  loc_65C4AE: ConcatStr
  loc_65C4AF: PopTmpLdAdStr
  loc_65C4B3: FLdRfVar var_8C
  loc_65C4B6: NewIfNullPr CReporte
  loc_65C4B9: CReporte.BackColor = from_stack_1
  loc_65C4BE: FFreeStr var_98 = ""
  loc_65C4C5: FFree1Ad var_94
  loc_65C4C8: FLdRfVar var_98
  loc_65C4CB: FLdRfVar var_94
  loc_65C4CE: ImpAdLdRf MemVar_7520D4
  loc_65C4D1: NewIfNullPr Global
  loc_65C4D4:  = Global.App
  loc_65C4D9: FLdPr var_94
  loc_65C4DC:  = App.Path
  loc_65C4E1: FLdRfVar var_AE
  loc_65C4E4: LitDate 8.466675
  loc_65C4ED: PopTmpLdAdFPR4
  loc_65C4F1: LitDate 37.83545
  loc_65C4FA: PopTmpLdAdFPR4
  loc_65C4FE: LitI2_Byte &H14
  loc_65C500: CR8I2
  loc_65C501: PopTmpLdAdFPR4
  loc_65C505: LitI2 160
  loc_65C508: CR8I2
  loc_65C509: PopTmpLdAdFPR4
  loc_65C50D: ILdRf var_98
  loc_65C510: LitStr "\Logo_Proyecto.bmp"
  loc_65C513: ConcatStr
  loc_65C514: PopTmpLdAdStr
  loc_65C518: FLdRfVar var_8C
  loc_65C51B: NewIfNullPr CReporte
  loc_65C51E: CReporte.BackColor = from_stack_1
  loc_65C523: FFreeStr var_98 = ""
  loc_65C52A: FFree1Ad var_94
  loc_65C52D: LitStr "Courier New"
  loc_65C530: FLdRfVar var_90
  loc_65C533: NewIfNullPr CFuente
  loc_65C536: Reset
  loc_65C53B: LitI2_Byte 8
  loc_65C53D: CR8I2
  loc_65C53E: PopFPR4
  loc_65C53F: FLdRfVar var_90
  loc_65C542: NewIfNullPr CFuente
  loc_65C54A: FLdRfVar var_C0
  loc_65C54D: ImpAdCallFPR4  = Date
  loc_65C552: LitI4 1
  loc_65C557: LitI4 1
  loc_65C55C: LitVarStr var_D0, "dd/mm/yyyy"
  loc_65C561: FStVarCopyObj var_E0
  loc_65C564: FLdRfVar var_E0
  loc_65C567: FLdRfVar var_C0
  loc_65C56A: ImpAdCallI2 Format$(, )
  loc_65C56F: FStStr var_120
  loc_65C572: FLdRfVar var_F0
  loc_65C575: ImpAdCallFPR4  = Time
  loc_65C57A: LitI4 1
  loc_65C57F: LitI4 1
  loc_65C584: LitVarStr var_100, "hh:mm:ss"
  loc_65C589: FStVarCopyObj var_110
  loc_65C58C: FLdRfVar var_110
  loc_65C58F: FLdRfVar var_F0
  loc_65C592: ImpAdCallI2 Format$(, )
  loc_65C597: FStStr var_124
  loc_65C59A: FLdRfVar var_AE
  loc_65C59D: FLdRfVar var_90
  loc_65C5A0: NewIfNullRf
  loc_65C5A4: FLdPr Me
  loc_65C5A7: MemLdStr strDateTime
  loc_65C5AA: FLdZeroAd var_120
  loc_65C5AD: FStStrNoPop var_98
  loc_65C5B0: ConcatStr
  loc_65C5B1: FStStrNoPop var_9C
  loc_65C5B4: LitStr "  -  "
  loc_65C5B7: ConcatStr
  loc_65C5B8: FStStrNoPop var_114
  loc_65C5BB: FLdZeroAd var_124
  loc_65C5BE: FStStrNoPop var_118
  loc_65C5C1: ConcatStr
  loc_65C5C2: PopTmpLdAdStr
  loc_65C5C6: FLdRfVar var_8C
  loc_65C5C9: NewIfNullPr CReporte
  loc_65C5CC:  = CReporte.hWnd
  loc_65C5D1: FFreeStr var_98 = "": var_9C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_65C5E2: FFreeVar var_C0 = "": var_E0 = "": var_F0 = ""
  loc_65C5ED: FLdRfVar var_AE
  loc_65C5F0: FLdRfVar var_90
  loc_65C5F3: NewIfNullRf
  loc_65C5F7: FLdPr Me
  loc_65C5FA: MemLdRfVar from_stack_1.strReporteCamionCisterna
  loc_65C5FD: FLdRfVar var_8C
  loc_65C600: NewIfNullPr CReporte
  loc_65C603: CReporte.Caption = from_stack_1
  loc_65C608: LitI2_Byte &H12
  loc_65C60A: CR8I2
  loc_65C60B: PopFPR4
  loc_65C60C: FLdRfVar var_90
  loc_65C60F: NewIfNullPr CFuente
  loc_65C617: LitI2_Byte &HFF
  loc_65C619: FLdRfVar var_90
  loc_65C61C: NewIfNullPr CFuente
  loc_65C624: LitI2_Byte &HFF
  loc_65C626: FLdRfVar var_90
  loc_65C629: NewIfNullPr CFuente
  loc_65C62C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65C631: FLdRfVar var_AE
  loc_65C634: FLdRfVar var_90
  loc_65C637: NewIfNullRf
  loc_65C63B: LitStr vbNullString
  loc_65C63E: FStStrCopy var_98
  loc_65C641: FLdRfVar var_98
  loc_65C644: FLdRfVar var_8C
  loc_65C647: NewIfNullPr CReporte
  loc_65C64A:  = CReporte.BackColor
  loc_65C64F: FFree1Str var_98
  loc_65C652: FLdRfVar var_AE
  loc_65C655: FLdRfVar var_90
  loc_65C658: NewIfNullRf
  loc_65C65C: LitStr vbNullString
  loc_65C65F: FStStrCopy var_98
  loc_65C662: FLdRfVar var_98
  loc_65C665: FLdRfVar var_8C
  loc_65C668: NewIfNullPr CReporte
  loc_65C66B:  = CReporte.BackColor
  loc_65C670: FFree1Str var_98
  loc_65C673: FLdRfVar var_AE
  loc_65C676: FLdRfVar var_90
  loc_65C679: NewIfNullRf
  loc_65C67D: LitStr "Reporte Camión Cisterna"
  loc_65C680: FStStrCopy var_98
  loc_65C683: FLdRfVar var_98
  loc_65C686: FLdRfVar var_8C
  loc_65C689: NewIfNullPr CReporte
  loc_65C68C:  = CReporte.BackColor
  loc_65C691: FFree1Str var_98
  loc_65C694: FLdRfVar var_AE
  loc_65C697: FLdRfVar var_90
  loc_65C69A: NewIfNullRf
  loc_65C69E: LitStr vbNullString
  loc_65C6A1: FStStrCopy var_98
  loc_65C6A4: FLdRfVar var_98
  loc_65C6A7: FLdRfVar var_8C
  loc_65C6AA: NewIfNullPr CReporte
  loc_65C6AD:  = CReporte.BackColor
  loc_65C6B2: FFree1Str var_98
  loc_65C6B5: LitI2_Byte 0
  loc_65C6B7: FLdRfVar var_90
  loc_65C6BA: NewIfNullPr CFuente
  loc_65C6BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65C6C2: LitI2_Byte &HA
  loc_65C6C4: CR8I2
  loc_65C6C5: PopFPR4
  loc_65C6C6: FLdRfVar var_90
  loc_65C6C9: NewIfNullPr CFuente
  loc_65C6D1: LitI2_Byte 0
  loc_65C6D3: FLdRfVar var_90
  loc_65C6D6: NewIfNullPr CFuente
  loc_65C6DE: LitI2_Byte 0
  loc_65C6E0: FLdRfVar var_86
  loc_65C6E3: FLdRfVar var_AE
  loc_65C6E6: FLdPrThis
  loc_65C6E7: VCallAd Control_ID_lstReporte
  loc_65C6EA: FStAdFunc var_94
  loc_65C6ED: FLdPr var_94
  loc_65C6F0:  = Me.ListCount
  loc_65C6F5: FLdI2 var_AE
  loc_65C6F8: LitI2_Byte 1
  loc_65C6FA: SubI2
  loc_65C6FB: FFree1Ad var_94
  loc_65C6FE: ForI2 var_128
  loc_65C704: FLdRfVar var_98
  loc_65C707: FLdI2 var_86
  loc_65C70A: FLdPrThis
  loc_65C70B: VCallAd Control_ID_lstReporte
  loc_65C70E: FStAdFunc var_94
  loc_65C711: FLdPr var_94
  loc_65C714: from_stack_2 = Me.List(from_stack_1)
  loc_65C719: FLdRfVar var_AE
  loc_65C71C: FLdRfVar var_90
  loc_65C71F: NewIfNullRf
  loc_65C723: FLdZeroAd var_98
  loc_65C726: PopTmpLdAdStr
  loc_65C72A: FLdRfVar var_8C
  loc_65C72D: NewIfNullPr CReporte
  loc_65C730:  = CReporte.ForeColor
  loc_65C735: FFree1Str var_9C
  loc_65C738: FFree1Ad var_94
  loc_65C73B: FLdRfVar var_86
  loc_65C73E: NextI2 var_128, loc_65C704
  loc_65C743: FLdRfVar var_AE
  loc_65C746: FLdRfVar var_8C
  loc_65C749: NewIfNullPr CReporte
  loc_65C74C: CReporte.ForeColor = from_stack_1
  loc_65C751: LitNothing
  loc_65C753: CastAd
  loc_65C756: FStAdFunc var_8C
  loc_65C759: LitNothing
  loc_65C75B: CastAd
  loc_65C75E: FStAdFunc var_90
  loc_65C761: ILdRf Me
  loc_65C764: FStAdNoPop
  loc_65C768: ImpAdLdRf MemVar_7520D4
  loc_65C76B: NewIfNullPr Global
  loc_65C76E: Global.Unload from_stack_1
  loc_65C773: FFree1Ad var_94
  loc_65C776: ExitProcHresult
End Sub

Private Sub cmdAcpetar_Click() '5D2F74
  'Data Table: 41C41C
  loc_5D2F5C: ILdRf Me
  loc_5D2F5F: FStAdNoPop
  loc_5D2F63: ImpAdLdRf MemVar_7520D4
  loc_5D2F66: NewIfNullPr Global
  loc_5D2F69: Global.Unload from_stack_1
  loc_5D2F6E: FFree1Ad var_88
  loc_5D2F71: ExitProcHresult
End Sub

Public Function fechaGet() '41CABC
  fechaGet = fecha
End Function

Public Sub fechaPut(Value) '41CACB
  fecha = Value
End Sub

Public Function strReporteCamionCisternaGet() '41CADA
  strReporteCamionCisternaGet = strReporteCamionCisterna
End Function

Public Sub strReporteCamionCisternaPut(Value) '41CAE9
  strReporteCamionCisterna = Value
End Sub

Public Function strDateTimeGet() '41CAF8
  strDateTimeGet = strDateTime
End Function

Public Sub strDateTimePut(Value) '41CB07
  strDateTime = Value
End Sub
