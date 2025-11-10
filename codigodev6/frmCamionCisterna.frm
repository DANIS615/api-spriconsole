VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form frmCamionCisterna
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = False
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 11910
  ClientHeight = 6375
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton cmdAnt
    Caption = "Ver período &anterior"
    Left = 240
    Top = 4200
    Width = 2295
    Height = 735
    TabIndex = 1
    Default = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.CommandButton cmdSig
    Caption = "Ver período &siguiente"
    Left = 9360
    Top = 4200
    Width = 2295
    Height = 735
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
    Style = 1
  End
  Begin VB.Timer tmrReloj
    Interval = 60000
    Left = 0
    Top = 5880
  End
  Begin MSFlexGridLib.MSFlexGrid grdGrilla
    Left = 2880
    Top = 1560
    Width = 6135
    Height = 3615
    TabIndex = 0
    OleObjectBlob = "frmCamionCisterna.frx":0000
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Aceptar"
    Left = 4680
    Top = 5400
    Width = 2535
    Height = 735
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 240
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 5
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 4
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.Label Label1
    Caption = "Reporte Camión Cisterna"
    Left = 2760
    Top = 360
    Width = 6375
    Height = 615
    TabIndex = 8
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10560
    Top = 1200
    Width = 1095
    Height = 375
    TabIndex = 7
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
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 240
    Top = 1200
    Width = 1815
    Height = 375
    TabIndex = 6
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
End

Attribute VB_Name = "frmCamionCisterna"


Private Sub cmdSig_Click() '614E84
  'Data Table: 4216E8
  loc_614D60: FLdPr Me
  loc_614D63: MemLdStr global_52
  loc_614D66: CI4Str
  loc_614D67: LitI4 &H2710
  loc_614D6C: AddI4
  loc_614D6D: CStrI4
  loc_614D6F: FStStrNoPop var_8C
  loc_614D72: FLdPr Me
  loc_614D75: MemStStrCopy
  loc_614D79: FFree1Str var_8C
  loc_614D7C: LitI2_Byte &HFF
  loc_614D7E: FLdPrThis
  loc_614D7F: VCallAd Control_ID_cmdAnt
  loc_614D82: FStAdFunc var_90
  loc_614D85: FLdPr var_90
  loc_614D88: Me.Visible = from_stack_1b
  loc_614D8D: FFree1Ad var_90
  loc_614D90: FLdRfVar var_8C
  loc_614D93: FLdPr Me
  loc_614D96: MemLdStr global_52
  loc_614D99: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_614D9E: FLdZeroAd var_8C
  loc_614DA1: FStStr var_88
  loc_614DA4: ILdRf var_88
  loc_614DA7: FnLenStr
  loc_614DA8: LitI4 1
  loc_614DAD: GtI4
  loc_614DAE: BranchF loc_614DBC
  loc_614DB1: ILdRf var_88
  loc_614DB4: from_stack_2v = Proc_39_11_647DEC(from_stack_1v)
  loc_614DB9: Branch loc_614E02
  loc_614DBC: LitStr "No hay Datos que Reportar."
  loc_614DBF: ImpAdLdRf MemVar_74D9C8
  loc_614DC2: NewIfNullPr frmMsgBox
  loc_614DC5: Call frmMsgBox.strMensajePut(from_stack_1v)
  loc_614DCA: LitVar_Missing var_B0
  loc_614DCD: PopAdLdVar
  loc_614DCE: LitVarI4
  loc_614DD6: PopAdLdVar
  loc_614DD7: ImpAdLdRf MemVar_74D9C8
  loc_614DDA: NewIfNullPr frmMsgBox
  loc_614DDD: frmMsgBox.Show from_stack_1, from_stack_2
  loc_614DE2: LitStr vbNullString
  loc_614DE5: FLdPr Me
  loc_614DE8: MemStStrCopy
  loc_614DEC: ILdRf Me
  loc_614DEF: FStAdNoPop
  loc_614DF3: ImpAdLdRf MemVar_7520D4
  loc_614DF6: NewIfNullPr Global
  loc_614DF9: Global.Unload from_stack_1
  loc_614DFE: FFree1Ad var_90
  loc_614E01: ExitProcHresult
  loc_614E02: FLdPr Me
  loc_614E05: MemLdStr global_52
  loc_614E08: CI4Str
  loc_614E09: LitI4 &H2710
  loc_614E0E: AddI4
  loc_614E0F: CStrI4
  loc_614E11: FStStrNoPop var_8C
  loc_614E14: FLdPr Me
  loc_614E17: MemStStrCopy
  loc_614E1B: FFree1Str var_8C
  loc_614E1E: FLdRfVar var_8C
  loc_614E21: FLdPr Me
  loc_614E24: MemLdStr global_52
  loc_614E27: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_614E2C: ILdRf var_8C
  loc_614E2F: FnLenStr
  loc_614E30: LitI4 1
  loc_614E35: GtI4
  loc_614E36: FFree1Str var_8C
  loc_614E39: BranchF loc_614E53
  loc_614E3C: LitI2_Byte &HFF
  loc_614E3E: FLdPrThis
  loc_614E3F: VCallAd Control_ID_cmdSig
  loc_614E42: FStAdFunc var_90
  loc_614E45: FLdPr var_90
  loc_614E48: Me.Visible = from_stack_1b
  loc_614E4D: FFree1Ad var_90
  loc_614E50: Branch loc_614E67
  loc_614E53: LitI2_Byte 0
  loc_614E55: FLdPrThis
  loc_614E56: VCallAd Control_ID_cmdSig
  loc_614E59: FStAdFunc var_90
  loc_614E5C: FLdPr var_90
  loc_614E5F: Me.Visible = from_stack_1b
  loc_614E64: FFree1Ad var_90
  loc_614E67: FLdPr Me
  loc_614E6A: MemLdStr global_52
  loc_614E6D: CI4Str
  loc_614E6E: LitI4 &H2710
  loc_614E73: SubI4
  loc_614E74: CStrI4
  loc_614E76: FStStrNoPop var_8C
  loc_614E79: FLdPr Me
  loc_614E7C: MemStStrCopy
  loc_614E80: FFree1Str var_8C
  loc_614E83: ExitProcHresult
End Sub

Private Sub Form_Load() '6641C0
  'Data Table: 4216E8
  loc_663E78: FLdPrThis
  loc_663E79: VCallAd Control_ID_Picture1
  loc_663E7C: FStAdFunc var_98
  loc_663E7F: FLdRfVar var_8C
  loc_663E82: FLdRfVar var_88
  loc_663E85: ImpAdLdRf MemVar_7520D4
  loc_663E88: NewIfNullPr Global
  loc_663E8B:  = Global.App
  loc_663E90: FLdPr var_88
  loc_663E93:  = App.Path
  loc_663E98: ILdRf var_8C
  loc_663E9B: LitStr "\Logo_Compania.bmp"
  loc_663E9E: ConcatStr
  loc_663E9F: FStStrNoPop var_94
  loc_663EA2: FLdZeroAd var_98
  loc_663EA5: FStAdFunc var_90
  loc_663EA8: FLdRfVar var_90
  loc_663EAB: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_663EB0: FFreeStr var_8C = ""
  loc_663EB7: FFreeAd var_88 = "": var_90 = ""
  loc_663EC0: FLdPrThis
  loc_663EC1: VCallAd Control_ID_Picture2
  loc_663EC4: FStAdFunc var_98
  loc_663EC7: FLdRfVar var_8C
  loc_663ECA: FLdRfVar var_88
  loc_663ECD: ImpAdLdRf MemVar_7520D4
  loc_663ED0: NewIfNullPr Global
  loc_663ED3:  = Global.App
  loc_663ED8: FLdPr var_88
  loc_663EDB:  = App.Path
  loc_663EE0: ILdRf var_8C
  loc_663EE3: LitStr "\Logo_Proyecto.bmp"
  loc_663EE6: ConcatStr
  loc_663EE7: FStStrNoPop var_94
  loc_663EEA: FLdZeroAd var_98
  loc_663EED: FStAdFunc var_90
  loc_663EF0: FLdRfVar var_90
  loc_663EF3: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_663EF8: FFreeStr var_8C = ""
  loc_663EFF: FFreeAd var_88 = "": var_90 = ""
  loc_663F08: FLdRfVar var_A8
  loc_663F0B: ImpAdCallFPR4  = Date
  loc_663F10: LitI4 1
  loc_663F15: LitI4 1
  loc_663F1A: LitVarStr var_B8, "dd/mm/yyyy"
  loc_663F1F: FStVarCopyObj var_C8
  loc_663F22: FLdRfVar var_C8
  loc_663F25: FLdRfVar var_A8
  loc_663F28: ImpAdCallI2 Format$(, )
  loc_663F2D: FStStrNoPop var_8C
  loc_663F30: FLdPrThis
  loc_663F31: VCallAd Control_ID_lFecha
  loc_663F34: FStAdFunc var_88
  loc_663F37: FLdPr var_88
  loc_663F3A: Me.Caption = from_stack_1
  loc_663F3F: FFree1Str var_8C
  loc_663F42: FFree1Ad var_88
  loc_663F45: FFreeVar var_A8 = ""
  loc_663F4C: FLdRfVar var_A8
  loc_663F4F: ImpAdCallFPR4  = Time
  loc_663F54: LitI4 1
  loc_663F59: LitI4 1
  loc_663F5E: LitVarStr var_B8, "hh:mm"
  loc_663F63: FStVarCopyObj var_C8
  loc_663F66: FLdRfVar var_C8
  loc_663F69: FLdRfVar var_A8
  loc_663F6C: ImpAdCallI2 Format$(, )
  loc_663F71: FStStrNoPop var_8C
  loc_663F74: FLdPrThis
  loc_663F75: VCallAd Control_ID_lHora
  loc_663F78: FStAdFunc var_88
  loc_663F7B: FLdPr var_88
  loc_663F7E: Me.Caption = from_stack_1
  loc_663F83: FFree1Str var_8C
  loc_663F86: FFree1Ad var_88
  loc_663F89: FFreeVar var_A8 = ""
  loc_663F90: FLdRfVar var_94
  loc_663F93: LitVar_Missing var_1E0
  loc_663F96: LitVar_Missing var_1C0
  loc_663F99: LitVar_Missing var_1A0
  loc_663F9C: LitVar_Missing var_180
  loc_663F9F: LitVar_Missing var_160
  loc_663FA2: LitVar_Missing var_140
  loc_663FA5: LitVar_Missing var_120
  loc_663FA8: LitVar_Missing var_100
  loc_663FAB: LitVar_Missing var_C8
  loc_663FAE: LitVar_Missing var_A8
  loc_663FB1: LitStr "Reporte Camión Cisterna"
  loc_663FB4: FStStrCopy var_8C
  loc_663FB7: FLdRfVar var_8C
  loc_663FBA: LitI4 1
  loc_663FBF: PopTmpLdAdStr var_D0
  loc_663FC2: LitI2_Byte &H34
  loc_663FC4: PopTmpLdAd2 var_CA
  loc_663FC7: ImpAdLdRf MemVar_74C7D0
  loc_663FCA: NewIfNullPr clsMsg
  loc_663FCD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_663FD2: ILdRf var_94
  loc_663FD5: FLdPrThis
  loc_663FD6: VCallAd Control_ID_Label1
  loc_663FD9: FStAdFunc var_88
  loc_663FDC: FLdPr var_88
  loc_663FDF: Me.Caption = from_stack_1
  loc_663FE4: FFreeStr var_8C = ""
  loc_663FEB: FFree1Ad var_88
  loc_663FEE: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_664005: FLdRfVar var_94
  loc_664008: LitVar_Missing var_1E0
  loc_66400B: LitVar_Missing var_1C0
  loc_66400E: LitVar_Missing var_1A0
  loc_664011: LitVar_Missing var_180
  loc_664014: LitVar_Missing var_160
  loc_664017: LitVar_Missing var_140
  loc_66401A: LitVar_Missing var_120
  loc_66401D: LitVar_Missing var_100
  loc_664020: LitVar_Missing var_C8
  loc_664023: LitVar_Missing var_A8
  loc_664026: LitStr "Ver periodo &anterior"
  loc_664029: FStStrCopy var_8C
  loc_66402C: FLdRfVar var_8C
  loc_66402F: LitI4 2
  loc_664034: PopTmpLdAdStr var_D0
  loc_664037: LitI2_Byte &H34
  loc_664039: PopTmpLdAd2 var_CA
  loc_66403C: ImpAdLdRf MemVar_74C7D0
  loc_66403F: NewIfNullPr clsMsg
  loc_664042: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664047: ILdRf var_94
  loc_66404A: FLdPrThis
  loc_66404B: VCallAd Control_ID_cmdAnt
  loc_66404E: FStAdFunc var_88
  loc_664051: FLdPr var_88
  loc_664054: Me.Caption = from_stack_1
  loc_664059: FFreeStr var_8C = ""
  loc_664060: FFree1Ad var_88
  loc_664063: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_66407A: FLdRfVar var_94
  loc_66407D: LitVar_Missing var_1E0
  loc_664080: LitVar_Missing var_1C0
  loc_664083: LitVar_Missing var_1A0
  loc_664086: LitVar_Missing var_180
  loc_664089: LitVar_Missing var_160
  loc_66408C: LitVar_Missing var_140
  loc_66408F: LitVar_Missing var_120
  loc_664092: LitVar_Missing var_100
  loc_664095: LitVar_Missing var_C8
  loc_664098: LitVar_Missing var_A8
  loc_66409B: LitStr "Ver periodo &siguiente"
  loc_66409E: FStStrCopy var_8C
  loc_6640A1: FLdRfVar var_8C
  loc_6640A4: LitI4 3
  loc_6640A9: PopTmpLdAdStr var_D0
  loc_6640AC: LitI2_Byte &H34
  loc_6640AE: PopTmpLdAd2 var_CA
  loc_6640B1: ImpAdLdRf MemVar_74C7D0
  loc_6640B4: NewIfNullPr clsMsg
  loc_6640B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6640BC: ILdRf var_94
  loc_6640BF: FLdPrThis
  loc_6640C0: VCallAd Control_ID_cmdSig
  loc_6640C3: FStAdFunc var_88
  loc_6640C6: FLdPr var_88
  loc_6640C9: Me.Caption = from_stack_1
  loc_6640CE: FFreeStr var_8C = ""
  loc_6640D5: FFree1Ad var_88
  loc_6640D8: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6640EF: FLdRfVar var_94
  loc_6640F2: LitVar_Missing var_1E0
  loc_6640F5: LitVar_Missing var_1C0
  loc_6640F8: LitVar_Missing var_1A0
  loc_6640FB: LitVar_Missing var_180
  loc_6640FE: LitVar_Missing var_160
  loc_664101: LitVar_Missing var_140
  loc_664104: LitVar_Missing var_120
  loc_664107: LitVar_Missing var_100
  loc_66410A: LitVar_Missing var_C8
  loc_66410D: LitVar_Missing var_A8
  loc_664110: LitStr "&Cancelar"
  loc_664113: FStStrCopy var_8C
  loc_664116: FLdRfVar var_8C
  loc_664119: LitI4 4
  loc_66411E: PopTmpLdAdStr var_D0
  loc_664121: LitI2_Byte &H34
  loc_664123: PopTmpLdAd2 var_CA
  loc_664126: ImpAdLdRf MemVar_74C7D0
  loc_664129: NewIfNullPr clsMsg
  loc_66412C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664131: ILdRf var_94
  loc_664134: FLdPrThis
  loc_664135: VCallAd Control_ID_cmdCancelar
  loc_664138: FStAdFunc var_88
  loc_66413B: FLdPr var_88
  loc_66413E: Me.Caption = from_stack_1
  loc_664143: FFreeStr var_8C = ""
  loc_66414A: FFree1Ad var_88
  loc_66414D: FFreeVar var_A8 = "": var_C8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_664164: LitI2_Byte 0
  loc_664166: CR8I2
  loc_664167: PopFPR4
  loc_664168: FLdPr Me
  loc_66416B: Me.Left = from_stack_1s
  loc_664170: LitI2 12000
  loc_664173: CR8I2
  loc_664174: PopFPR4
  loc_664175: FLdPr Me
  loc_664178: Me.Width = from_stack_1s
  loc_66417D: FLdRfVar var_1E4
  loc_664180: FLdPr Me
  loc_664183:  = Me.Height
  loc_664188: FLdRfVar var_D0
  loc_66418B: FLdRfVar var_88
  loc_66418E: ImpAdLdRf MemVar_7520D4
  loc_664191: NewIfNullPr Global
  loc_664194:  = Global.Screen
  loc_664199: FLdPr var_88
  loc_66419C:  = Screen.Height
  loc_6641A1: FLdFPR4 var_D0
  loc_6641A4: FLdFPR4 var_1E4
  loc_6641A7: SubR4
  loc_6641A8: CI4R8
  loc_6641A9: LitI4 2
  loc_6641AE: IDvI4
  loc_6641AF: CR8I4
  loc_6641B0: PopFPR4
  loc_6641B1: FLdPr Me
  loc_6641B4: Me.Top = from_stack_1s
  loc_6641B9: FFree1Ad var_88
  loc_6641BC: ExitProcHresult
End Sub

Private Sub Form_Activate() '664CFC
  'Data Table: 4216E8
  loc_6649A4: FLdPr Me
  loc_6649A7: MemLdStr global_52
  loc_6649AA: LitStr vbNullString
  loc_6649AD: NeStr
  loc_6649AF: BranchF loc_6649B3
  loc_6649B2: ExitProcHresult
  loc_6649B3: LitVar_FALSE
  loc_6649B7: PopAdLdVar
  loc_6649B8: FLdPrThis
  loc_6649B9: VCallAd Control_ID_grdGrilla
  loc_6649BC: FStAdFunc var_9C
  loc_6649BF: FLdPr var_9C
  loc_6649C2: LateIdSt
  loc_6649C7: FFree1Ad var_9C
  loc_6649CA: FLdRfVar var_AC
  loc_6649CD: ImpAdCallFPR4  = Date
  loc_6649D2: FLdRfVar var_AC
  loc_6649D5: FLdRfVar var_BC
  loc_6649D8: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6649DD: LitI4 1
  loc_6649E2: LitI4 1
  loc_6649E7: LitVarStr var_98, "0000"
  loc_6649EC: FStVarCopyObj var_CC
  loc_6649EF: FLdRfVar var_CC
  loc_6649F2: FLdRfVar var_BC
  loc_6649F5: ImpAdCallI2 Format$(, )
  loc_6649FA: FStStrNoPop var_D0
  loc_6649FD: CR8Str
  loc_6649FF: LitI2_Byte 1
  loc_664A01: CR8I2
  loc_664A02: SubR4
  loc_664A03: CStrR8
  loc_664A05: FStStrNoPop var_D4
  loc_664A08: FLdPr Me
  loc_664A0B: MemStStrCopy
  loc_664A0F: FFreeStr var_D0 = ""
  loc_664A16: FFreeVar var_AC = "": var_BC = ""
  loc_664A1F: FLdRfVar var_AC
  loc_664A22: ImpAdCallFPR4  = Date
  loc_664A27: FLdRfVar var_AC
  loc_664A2A: FLdRfVar var_BC
  loc_664A2D: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_664A32: FLdPr Me
  loc_664A35: MemLdStr global_52
  loc_664A38: LitI4 1
  loc_664A3D: LitI4 1
  loc_664A42: LitVarStr var_98, "00"
  loc_664A47: FStVarCopyObj var_CC
  loc_664A4A: FLdRfVar var_CC
  loc_664A4D: FLdRfVar var_BC
  loc_664A50: ImpAdCallI2 Format$(, )
  loc_664A55: FStStrNoPop var_D0
  loc_664A58: ConcatStr
  loc_664A59: FStStrNoPop var_D4
  loc_664A5C: FLdPr Me
  loc_664A5F: MemStStrCopy
  loc_664A63: FFreeStr var_D0 = ""
  loc_664A6A: FFreeVar var_AC = "": var_BC = ""
  loc_664A73: FLdRfVar var_AC
  loc_664A76: ImpAdCallFPR4  = Date
  loc_664A7B: FLdRfVar var_AC
  loc_664A7E: FLdRfVar var_BC
  loc_664A81: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_664A86: FLdPr Me
  loc_664A89: MemLdStr global_52
  loc_664A8C: LitI4 1
  loc_664A91: LitI4 1
  loc_664A96: LitVarStr var_98, "00"
  loc_664A9B: FStVarCopyObj var_CC
  loc_664A9E: FLdRfVar var_CC
  loc_664AA1: FLdRfVar var_BC
  loc_664AA4: ImpAdCallI2 Format$(, )
  loc_664AA9: FStStrNoPop var_D0
  loc_664AAC: ConcatStr
  loc_664AAD: FStStrNoPop var_D4
  loc_664AB0: FLdPr Me
  loc_664AB3: MemStStrCopy
  loc_664AB7: FFreeStr var_D0 = ""
  loc_664ABE: FFreeVar var_AC = "": var_BC = ""
  loc_664AC7: FLdRfVar var_D0
  loc_664ACA: FLdPr Me
  loc_664ACD: MemLdStr global_52
  loc_664AD0: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_664AD5: ILdRf var_D0
  loc_664AD8: FnLenStr
  loc_664AD9: LitI4 1
  loc_664ADE: GtI4
  loc_664ADF: FFree1Str var_D0
  loc_664AE2: BranchF loc_664AFC
  loc_664AE5: LitI2_Byte &HFF
  loc_664AE7: FLdPrThis
  loc_664AE8: VCallAd Control_ID_cmdAnt
  loc_664AEB: FStAdFunc var_9C
  loc_664AEE: FLdPr var_9C
  loc_664AF1: Me.Visible = from_stack_1b
  loc_664AF6: FFree1Ad var_9C
  loc_664AF9: Branch loc_664B10
  loc_664AFC: LitI2_Byte 0
  loc_664AFE: FLdPrThis
  loc_664AFF: VCallAd Control_ID_cmdAnt
  loc_664B02: FStAdFunc var_9C
  loc_664B05: FLdPr var_9C
  loc_664B08: Me.Visible = from_stack_1b
  loc_664B0D: FFree1Ad var_9C
  loc_664B10: LitI2_Byte 0
  loc_664B12: FLdPrThis
  loc_664B13: VCallAd Control_ID_cmdSig
  loc_664B16: FStAdFunc var_9C
  loc_664B19: FLdPr var_9C
  loc_664B1C: Me.Visible = from_stack_1b
  loc_664B21: FFree1Ad var_9C
  loc_664B24: FLdRfVar var_AC
  loc_664B27: ImpAdCallFPR4  = Date
  loc_664B2C: FLdRfVar var_AC
  loc_664B2F: FLdRfVar var_BC
  loc_664B32: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_664B37: LitI4 1
  loc_664B3C: LitI4 1
  loc_664B41: LitVarStr var_98, "0000"
  loc_664B46: FStVarCopyObj var_CC
  loc_664B49: FLdRfVar var_CC
  loc_664B4C: FLdRfVar var_BC
  loc_664B4F: ImpAdCallI2 Format$(, )
  loc_664B54: FStStrNoPop var_D0
  loc_664B57: FLdPr Me
  loc_664B5A: MemStStrCopy
  loc_664B5E: FFree1Str var_D0
  loc_664B61: FFreeVar var_AC = "": var_BC = ""
  loc_664B6A: FLdRfVar var_AC
  loc_664B6D: ImpAdCallFPR4  = Date
  loc_664B72: FLdRfVar var_AC
  loc_664B75: FLdRfVar var_BC
  loc_664B78: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_664B7D: FLdPr Me
  loc_664B80: MemLdStr global_52
  loc_664B83: LitI4 1
  loc_664B88: LitI4 1
  loc_664B8D: LitVarStr var_98, "00"
  loc_664B92: FStVarCopyObj var_CC
  loc_664B95: FLdRfVar var_CC
  loc_664B98: FLdRfVar var_BC
  loc_664B9B: ImpAdCallI2 Format$(, )
  loc_664BA0: FStStrNoPop var_D0
  loc_664BA3: ConcatStr
  loc_664BA4: FStStrNoPop var_D4
  loc_664BA7: FLdPr Me
  loc_664BAA: MemStStrCopy
  loc_664BAE: FFreeStr var_D0 = ""
  loc_664BB5: FFreeVar var_AC = "": var_BC = ""
  loc_664BBE: FLdRfVar var_AC
  loc_664BC1: ImpAdCallFPR4  = Date
  loc_664BC6: FLdRfVar var_AC
  loc_664BC9: FLdRfVar var_BC
  loc_664BCC: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_664BD1: FLdPr Me
  loc_664BD4: MemLdStr global_52
  loc_664BD7: LitI4 1
  loc_664BDC: LitI4 1
  loc_664BE1: LitVarStr var_98, "00"
  loc_664BE6: FStVarCopyObj var_CC
  loc_664BE9: FLdRfVar var_CC
  loc_664BEC: FLdRfVar var_BC
  loc_664BEF: ImpAdCallI2 Format$(, )
  loc_664BF4: FStStrNoPop var_D0
  loc_664BF7: ConcatStr
  loc_664BF8: FStStrNoPop var_D4
  loc_664BFB: FLdPr Me
  loc_664BFE: MemStStrCopy
  loc_664C02: FFreeStr var_D0 = ""
  loc_664C09: FFreeVar var_AC = "": var_BC = ""
  loc_664C12: FLdRfVar var_D0
  loc_664C15: FLdPr Me
  loc_664C18: MemLdStr global_52
  loc_664C1B: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_664C20: FLdZeroAd var_D0
  loc_664C23: FStStr var_88
  loc_664C26: ILdRf var_88
  loc_664C29: FnLenStr
  loc_664C2A: LitI4 1
  loc_664C2F: GtI4
  loc_664C30: BranchF loc_664C3E
  loc_664C33: ILdRf var_88
  loc_664C36: from_stack_2v = Proc_39_11_647DEC(from_stack_1v)
  loc_664C3B: Branch loc_664CE4
  loc_664C3E: FLdRfVar var_D4
  loc_664C41: LitVar_Missing var_1DC
  loc_664C44: LitVar_Missing var_1BC
  loc_664C47: LitVar_Missing var_19C
  loc_664C4A: LitVar_Missing var_17C
  loc_664C4D: LitVar_Missing var_15C
  loc_664C50: LitVar_Missing var_13C
  loc_664C53: LitVar_Missing var_11C
  loc_664C56: LitVar_Missing var_CC
  loc_664C59: LitVar_Missing var_BC
  loc_664C5C: LitVar_Missing var_AC
  loc_664C5F: LitStr "No hay datos que reportar."
  loc_664C62: FStStrCopy var_D0
  loc_664C65: FLdRfVar var_D0
  loc_664C68: LitI4 6
  loc_664C6D: PopTmpLdAdStr var_DC
  loc_664C70: LitI2_Byte &H34
  loc_664C72: PopTmpLdAd2 var_D6
  loc_664C75: ImpAdLdRf MemVar_74C7D0
  loc_664C78: NewIfNullPr clsMsg
  loc_664C7B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664C80: ILdRf var_D4
  loc_664C83: ImpAdLdRf MemVar_74D9C8
  loc_664C86: NewIfNullPr frmMsgBox
  loc_664C89: Call frmMsgBox.strMensajePut(from_stack_1v)
  loc_664C8E: FFreeStr var_D0 = ""
  loc_664C95: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_664CAC: LitVar_Missing var_EC
  loc_664CAF: PopAdLdVar
  loc_664CB0: LitVarI4
  loc_664CB8: PopAdLdVar
  loc_664CB9: ImpAdLdRf MemVar_74D9C8
  loc_664CBC: NewIfNullPr frmMsgBox
  loc_664CBF: frmMsgBox.Show from_stack_1, from_stack_2
  loc_664CC4: LitStr vbNullString
  loc_664CC7: FLdPr Me
  loc_664CCA: MemStStrCopy
  loc_664CCE: ILdRf Me
  loc_664CD1: FStAdNoPop
  loc_664CD5: ImpAdLdRf MemVar_7520D4
  loc_664CD8: NewIfNullPr Global
  loc_664CDB: Global.Unload from_stack_1
  loc_664CE0: FFree1Ad var_9C
  loc_664CE3: ExitProcHresult
  loc_664CE4: LitVar_TRUE var_98
  loc_664CE7: PopAdLdVar
  loc_664CE8: FLdPrThis
  loc_664CE9: VCallAd Control_ID_grdGrilla
  loc_664CEC: FStAdFunc var_9C
  loc_664CEF: FLdPr var_9C
  loc_664CF2: LateIdSt
  loc_664CF7: FFree1Ad var_9C
  loc_664CFA: ExitProcHresult
End Sub

Private Sub tmrReloj_Timer() '5EE098
  'Data Table: 4216E8
  loc_5EE00C: FLdRfVar var_94
  loc_5EE00F: ImpAdCallFPR4  = Date
  loc_5EE014: LitI4 1
  loc_5EE019: LitI4 1
  loc_5EE01E: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EE023: FStVarCopyObj var_B4
  loc_5EE026: FLdRfVar var_B4
  loc_5EE029: FLdRfVar var_94
  loc_5EE02C: ImpAdCallI2 Format$(, )
  loc_5EE031: FStStrNoPop var_B8
  loc_5EE034: FLdPrThis
  loc_5EE035: VCallAd Control_ID_lFecha
  loc_5EE038: FStAdFunc var_BC
  loc_5EE03B: FLdPr var_BC
  loc_5EE03E: Me.Caption = from_stack_1
  loc_5EE043: FFree1Str var_B8
  loc_5EE046: FFree1Ad var_BC
  loc_5EE049: FFreeVar var_94 = ""
  loc_5EE050: FLdRfVar var_94
  loc_5EE053: ImpAdCallFPR4  = Time
  loc_5EE058: LitI4 1
  loc_5EE05D: LitI4 1
  loc_5EE062: LitVarStr var_A4, "hh:mm"
  loc_5EE067: FStVarCopyObj var_B4
  loc_5EE06A: FLdRfVar var_B4
  loc_5EE06D: FLdRfVar var_94
  loc_5EE070: ImpAdCallI2 Format$(, )
  loc_5EE075: FStStrNoPop var_B8
  loc_5EE078: FLdPrThis
  loc_5EE079: VCallAd Control_ID_lHora
  loc_5EE07C: FStAdFunc var_BC
  loc_5EE07F: FLdPr var_BC
  loc_5EE082: Me.Caption = from_stack_1
  loc_5EE087: FFree1Str var_B8
  loc_5EE08A: FFree1Ad var_BC
  loc_5EE08D: FFreeVar var_94 = ""
  loc_5EE094: ExitProcHresult
End Sub

Private Sub cmdAnt_Click() '614A64
  'Data Table: 4216E8
  loc_614940: FLdPr Me
  loc_614943: MemLdStr global_52
  loc_614946: CI4Str
  loc_614947: LitI4 &H2710
  loc_61494C: SubI4
  loc_61494D: CStrI4
  loc_61494F: FStStrNoPop var_8C
  loc_614952: FLdPr Me
  loc_614955: MemStStrCopy
  loc_614959: FFree1Str var_8C
  loc_61495C: LitI2_Byte &HFF
  loc_61495E: FLdPrThis
  loc_61495F: VCallAd Control_ID_cmdSig
  loc_614962: FStAdFunc var_90
  loc_614965: FLdPr var_90
  loc_614968: Me.Visible = from_stack_1b
  loc_61496D: FFree1Ad var_90
  loc_614970: FLdRfVar var_8C
  loc_614973: FLdPr Me
  loc_614976: MemLdStr global_52
  loc_614979: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_61497E: FLdZeroAd var_8C
  loc_614981: FStStr var_88
  loc_614984: ILdRf var_88
  loc_614987: FnLenStr
  loc_614988: LitI4 1
  loc_61498D: GtI4
  loc_61498E: BranchF loc_61499C
  loc_614991: ILdRf var_88
  loc_614994: from_stack_2v = Proc_39_11_647DEC(from_stack_1v)
  loc_614999: Branch loc_6149E2
  loc_61499C: LitStr "No hay Datos que Reportar."
  loc_61499F: ImpAdLdRf MemVar_74D9C8
  loc_6149A2: NewIfNullPr frmMsgBox
  loc_6149A5: Call frmMsgBox.strMensajePut(from_stack_1v)
  loc_6149AA: LitVar_Missing var_B0
  loc_6149AD: PopAdLdVar
  loc_6149AE: LitVarI4
  loc_6149B6: PopAdLdVar
  loc_6149B7: ImpAdLdRf MemVar_74D9C8
  loc_6149BA: NewIfNullPr frmMsgBox
  loc_6149BD: frmMsgBox.Show from_stack_1, from_stack_2
  loc_6149C2: LitStr vbNullString
  loc_6149C5: FLdPr Me
  loc_6149C8: MemStStrCopy
  loc_6149CC: ILdRf Me
  loc_6149CF: FStAdNoPop
  loc_6149D3: ImpAdLdRf MemVar_7520D4
  loc_6149D6: NewIfNullPr Global
  loc_6149D9: Global.Unload from_stack_1
  loc_6149DE: FFree1Ad var_90
  loc_6149E1: ExitProcHresult
  loc_6149E2: FLdPr Me
  loc_6149E5: MemLdStr global_52
  loc_6149E8: CI4Str
  loc_6149E9: LitI4 &H2710
  loc_6149EE: SubI4
  loc_6149EF: CStrI4
  loc_6149F1: FStStrNoPop var_8C
  loc_6149F4: FLdPr Me
  loc_6149F7: MemStStrCopy
  loc_6149FB: FFree1Str var_8C
  loc_6149FE: FLdRfVar var_8C
  loc_614A01: FLdPr Me
  loc_614A04: MemLdStr global_52
  loc_614A07: from_stack_2v = Proc_39_10_5F1860(from_stack_1v)
  loc_614A0C: ILdRf var_8C
  loc_614A0F: FnLenStr
  loc_614A10: LitI4 1
  loc_614A15: GtI4
  loc_614A16: FFree1Str var_8C
  loc_614A19: BranchF loc_614A33
  loc_614A1C: LitI2_Byte &HFF
  loc_614A1E: FLdPrThis
  loc_614A1F: VCallAd Control_ID_cmdAnt
  loc_614A22: FStAdFunc var_90
  loc_614A25: FLdPr var_90
  loc_614A28: Me.Visible = from_stack_1b
  loc_614A2D: FFree1Ad var_90
  loc_614A30: Branch loc_614A47
  loc_614A33: LitI2_Byte 0
  loc_614A35: FLdPrThis
  loc_614A36: VCallAd Control_ID_cmdAnt
  loc_614A39: FStAdFunc var_90
  loc_614A3C: FLdPr var_90
  loc_614A3F: Me.Visible = from_stack_1b
  loc_614A44: FFree1Ad var_90
  loc_614A47: FLdPr Me
  loc_614A4A: MemLdStr global_52
  loc_614A4D: CI4Str
  loc_614A4E: LitI4 &H2710
  loc_614A53: AddI4
  loc_614A54: CStrI4
  loc_614A56: FStStrNoPop var_8C
  loc_614A59: FLdPr Me
  loc_614A5C: MemStStrCopy
  loc_614A60: FFree1Str var_8C
  loc_614A63: ExitProcHresult
End Sub

Private Sub grdGrilla_UnknownEvent_8 '64BA8C
  'Data Table: 4216E8
  loc_64B874: FLdRfVar var_1D4
  loc_64B877: LitVar_Missing var_1D0
  loc_64B87A: LitVar_Missing var_1B0
  loc_64B87D: LitVar_Missing var_190
  loc_64B880: LitVar_Missing var_170
  loc_64B883: LitVar_Missing var_150
  loc_64B886: LitVar_Missing var_130
  loc_64B889: LitVar_Missing var_110
  loc_64B88C: LitVar_Missing var_F0
  loc_64B88F: LitVar_Missing var_D0
  loc_64B892: LitVar_Missing var_B0
  loc_64B895: LitStr "Esta seguro que desea Ver/Imprimir el reporte?"
  loc_64B898: FStStrCopy var_90
  loc_64B89B: FLdRfVar var_90
  loc_64B89E: LitI4 5
  loc_64B8A3: PopTmpLdAdStr var_8C
  loc_64B8A6: LitI2_Byte &H34
  loc_64B8A8: PopTmpLdAd2 var_86
  loc_64B8AB: ImpAdLdRf MemVar_74C7D0
  loc_64B8AE: NewIfNullPr clsMsg
  loc_64B8B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64B8B6: LitVar_Missing var_244
  loc_64B8B9: LitVar_Missing var_224
  loc_64B8BC: LitVar_Missing var_204
  loc_64B8BF: LitI4 &H24
  loc_64B8C4: FLdZeroAd var_1D4
  loc_64B8C7: CVarStr var_1E4
  loc_64B8CA: ImpAdCallI2 MsgBox(, , , , )
  loc_64B8CF: LitI4 6
  loc_64B8D4: EqI4
  loc_64B8D5: FFree1Str var_90
  loc_64B8D8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_64B8F7: BranchF loc_64BA88
  loc_64B8FA: FLdPrThis
  loc_64B8FB: VCallAd Control_ID_grdGrilla
  loc_64B8FE: FStAdFunc var_248
  loc_64B901: FLdPr var_248
  loc_64B904: LateIdLdVar var_B0 DispID_0 0
  loc_64B90B: PopAd
  loc_64B90D: FLdPrThis
  loc_64B90E: VCallAd Control_ID_grdGrilla
  loc_64B911: FStAdFunc var_24C
  loc_64B914: FLdPr var_24C
  loc_64B917: LateIdLdVar var_F0 DispID_0 0
  loc_64B91E: PopAd
  loc_64B920: FLdPrThis
  loc_64B921: VCallAd Control_ID_grdGrilla
  loc_64B924: FStAdFunc var_258
  loc_64B927: FLdPr var_258
  loc_64B92A: LateIdLdVar var_130 DispID_0 0
  loc_64B931: PopAd
  loc_64B933: FLdPrThis
  loc_64B934: VCallAd Control_ID_grdGrilla
  loc_64B937: FStAdFunc var_268
  loc_64B93A: FLdPr var_268
  loc_64B93D: LateIdLdVar var_170 DispID_0 0
  loc_64B944: PopAd
  loc_64B946: FLdPrThis
  loc_64B947: VCallAd Control_ID_grdGrilla
  loc_64B94A: FStAdFunc var_278
  loc_64B94D: FLdPr var_278
  loc_64B950: LateIdLdVar var_1B0 DispID_0 0
  loc_64B957: PopAd
  loc_64B959: FLdPrThis
  loc_64B95A: VCallAd Control_ID_grdGrilla
  loc_64B95D: FStAdFunc var_288
  loc_64B960: FLdPr var_288
  loc_64B963: LateIdLdVar var_1E4 DispID_0 0
  loc_64B96A: PopAd
  loc_64B96C: LitVarI2 var_D0, 4
  loc_64B971: LitI4 7
  loc_64B976: FLdRfVar var_B0
  loc_64B979: CStrVarTmp
  loc_64B97A: FStStrNoPop var_90
  loc_64B97D: ImpAdCallI2 Mid$(, , )
  loc_64B982: FStStrNoPop var_250
  loc_64B985: LitVarI2 var_110, 2
  loc_64B98A: LitI4 4
  loc_64B98F: FLdRfVar var_F0
  loc_64B992: CStrVarTmp
  loc_64B993: FStStrNoPop var_1D4
  loc_64B996: ImpAdCallI2 Mid$(, , )
  loc_64B99B: FStStrNoPop var_254
  loc_64B99E: ConcatStr
  loc_64B99F: FStStrNoPop var_260
  loc_64B9A2: LitVarI2 var_150, 2
  loc_64B9A7: LitI4 1
  loc_64B9AC: FLdRfVar var_130
  loc_64B9AF: CStrVarTmp
  loc_64B9B0: FStStrNoPop var_25C
  loc_64B9B3: ImpAdCallI2 Mid$(, , )
  loc_64B9B8: FStStrNoPop var_264
  loc_64B9BB: ConcatStr
  loc_64B9BC: FStStrNoPop var_270
  loc_64B9BF: LitVarI2 var_190, 2
  loc_64B9C4: LitI4 &H10
  loc_64B9C9: FLdRfVar var_170
  loc_64B9CC: CStrVarTmp
  loc_64B9CD: FStStrNoPop var_26C
  loc_64B9D0: ImpAdCallI2 Mid$(, , )
  loc_64B9D5: FStStrNoPop var_274
  loc_64B9D8: ConcatStr
  loc_64B9D9: FStStrNoPop var_280
  loc_64B9DC: LitVarI2 var_1D0, 2
  loc_64B9E1: LitI4 &H13
  loc_64B9E6: FLdRfVar var_1B0
  loc_64B9E9: CStrVarTmp
  loc_64B9EA: FStStrNoPop var_27C
  loc_64B9ED: ImpAdCallI2 Mid$(, , )
  loc_64B9F2: FStStrNoPop var_284
  loc_64B9F5: ConcatStr
  loc_64B9F6: FStStrNoPop var_290
  loc_64B9F9: LitVarI2 var_204, 2
  loc_64B9FE: LitI4 &H16
  loc_64BA03: FLdRfVar var_1E4
  loc_64BA06: CStrVarTmp
  loc_64BA07: FStStrNoPop var_28C
  loc_64BA0A: ImpAdCallI2 Mid$(, , )
  loc_64BA0F: FStStrNoPop var_294
  loc_64BA12: ConcatStr
  loc_64BA13: FStStrNoPop var_298
  loc_64BA16: ImpAdLdRf MemVar_74CA00
  loc_64BA19: NewIfNullPr frmReporteCisterna
  loc_64BA1C: Call frmReporteCisterna.fechaPut(from_stack_1v)
  loc_64BA21: FFreeStr var_90 = "": var_1D4 = "": var_250 = "": var_254 = "": var_25C = "": var_260 = "": var_264 = "": var_26C = "": var_270 = "": var_274 = "": var_27C = "": var_280 = "": var_284 = "": var_28C = "": var_290 = "": var_294 = ""
  loc_64BA46: FFreeAd var_248 = "": var_24C = "": var_258 = "": var_268 = "": var_278 = ""
  loc_64BA55: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = ""
  loc_64BA70: LitVar_Missing var_C0
  loc_64BA73: PopAdLdVar
  loc_64BA74: LitVarI4
  loc_64BA7C: PopAdLdVar
  loc_64BA7D: ImpAdLdRf MemVar_74CA00
  loc_64BA80: NewIfNullPr frmReporteCisterna
  loc_64BA83: frmReporteCisterna.Show from_stack_1, from_stack_2
  loc_64BA88: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D4B24
  'Data Table: 4216E8
  loc_5D4B04: LitStr vbNullString
  loc_5D4B07: FLdPr Me
  loc_5D4B0A: MemStStrCopy
  loc_5D4B0E: ILdRf Me
  loc_5D4B11: FStAdNoPop
  loc_5D4B15: ImpAdLdRf MemVar_7520D4
  loc_5D4B18: NewIfNullPr Global
  loc_5D4B1B: Global.Unload from_stack_1
  loc_5D4B20: FFree1Ad var_88
  loc_5D4B23: ExitProcHresult
End Sub

Private Function Proc_39_7_5C85F4() '5C85F4
  'Data Table: 4216E8
  loc_5C85F0: ExitProcHresult
End Function

Private Function Proc_39_8_5C87FC() '5C87FC
  'Data Table: 4216E8
  loc_5C87F8: ExitProcHresult
End Function

Private Function Proc_39_9_5C8488() '5C8488
  'Data Table: 4216E8
  loc_5C8484: ExitProcHresult
End Function

Private Function Proc_39_10_5F1860(arg_C) '5F1860
  'Data Table: 4216E8
  loc_5F17CC: ILdRf arg_C
  loc_5F17CF: FStStrCopy var_8C
  loc_5F17D2: ZeroRetVal
  loc_5F17D4: FLdRfVar var_96
  loc_5F17D7: FLdRfVar var_88
  loc_5F17DA: ILdRf var_8C
  loc_5F17DD: LitStr "235959"
  loc_5F17E0: ConcatStr
  loc_5F17E1: FStStrNoPop var_94
  loc_5F17E4: FLdRfVar var_90
  loc_5F17E7: ImpAdLdRf MemVar_74C760
  loc_5F17EA: NewIfNullPr Formx
  loc_5F17ED: from_stack_1v = Formx.global_4589716Get()
  loc_5F17F2: FLdPr var_90
  loc_5F17F5: Call 0.Method_arg_244 ()
  loc_5F17FA: FLdI2 var_96
  loc_5F17FD: NotI4
  loc_5F17FE: FFree1Str var_94
  loc_5F1801: FFree1Ad var_90
  loc_5F1804: BranchF loc_5F183E
  loc_5F1807: FLdRfVar var_A8
  loc_5F180A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F180F: FLdRfVar var_A8
  loc_5F1812: CBoolVarNull
  loc_5F1814: FFree1Var var_A8 = ""
  loc_5F1817: BranchF loc_5F183B
  loc_5F181A: LitStr vbNullString
  loc_5F181D: FStStrCopy var_8C
  loc_5F1820: ILdRf Me
  loc_5F1823: FStAdNoPop
  loc_5F1827: ImpAdLdRf MemVar_7520D4
  loc_5F182A: NewIfNullPr Global
  loc_5F182D: Global.Unload from_stack_1
  loc_5F1832: FFree1Ad var_90
  loc_5F1835: ExitProcCbHresult
  loc_5F183B: Branch loc_5F17D4
  loc_5F183E: FLdRfVar var_88
  loc_5F1841: CVarRef
  loc_5F1846: FLdRfVar var_A8
  loc_5F1849: ImpAdCallFPR4  = Trim()
  loc_5F184E: FLdRfVar var_A8
  loc_5F1851: CStrVarTmp
  loc_5F1852: FStStr var_88
  loc_5F1855: FFree1Var var_A8 = ""
  loc_5F1858: ExitProcCbHresult
End Function

Private Function Proc_39_11_647DEC(arg_C) '647DEC
  'Data Table: 4216E8
  loc_647BA0: ILdRf arg_C
  loc_647BA3: FStStrCopy var_88
  loc_647BA6: FLdPrThis
  loc_647BA7: VCallAd Control_ID_grdGrilla
  loc_647BAA: FStAdFunc var_94
  loc_647BAD: FLdPr var_94
  loc_647BB0: LateIdCall
  loc_647BB8: FFree1Ad var_94
  loc_647BBB: LitVarI4
  loc_647BC3: PopAdLdVar
  loc_647BC4: FLdPrThis
  loc_647BC5: VCallAd Control_ID_grdGrilla
  loc_647BC8: FStAdFunc var_94
  loc_647BCB: FLdPr var_94
  loc_647BCE: LateIdSt
  loc_647BD3: FFree1Ad var_94
  loc_647BD6: LitVarI4
  loc_647BDE: PopAdLdVar
  loc_647BDF: LitVarI4
  loc_647BE7: PopAdLdVar
  loc_647BE8: FLdPrThis
  loc_647BE9: VCallAd Control_ID_grdGrilla
  loc_647BEC: FStAdFunc var_94
  loc_647BEF: FLdPr var_94
  loc_647BF2: LateIdCallSt
  loc_647BFA: FFree1Ad var_94
  loc_647BFD: LitVar_TRUE var_A4
  loc_647C00: PopAdLdVar
  loc_647C01: FLdPrThis
  loc_647C02: VCallAd Control_ID_grdGrilla
  loc_647C05: FStAdFunc var_94
  loc_647C08: FLdPr var_94
  loc_647C0B: LateIdLdVar var_C4 DispID_-512 -1
  loc_647C12: CastAdVar Me
  loc_647C16: FStAdFunc var_C8
  loc_647C19: FLdPr var_C8
  loc_647C1C: LateIdSt
  loc_647C21: FFreeAd var_94 = ""
  loc_647C28: FFree1Var var_C4 = ""
  loc_647C2B: LitVarI2 var_A4, 18
  loc_647C30: PopAdLdVar
  loc_647C31: FLdPrThis
  loc_647C32: VCallAd Control_ID_grdGrilla
  loc_647C35: FStAdFunc var_94
  loc_647C38: FLdPr var_94
  loc_647C3B: LateIdLdVar var_C4 DispID_-512 -1
  loc_647C42: CastAdVar Me
  loc_647C46: FStAdFunc var_C8
  loc_647C49: FLdPr var_C8
  loc_647C4C: LateIdSt
  loc_647C51: FFreeAd var_94 = ""
  loc_647C58: FFree1Var var_C4 = ""
  loc_647C5B: LitVarStr var_A4, "Courier New"
  loc_647C60: PopAdLdVar
  loc_647C61: FLdPrThis
  loc_647C62: VCallAd Control_ID_grdGrilla
  loc_647C65: FStAdFunc var_94
  loc_647C68: FLdPr var_94
  loc_647C6B: LateIdLdVar var_C4 DispID_-512 -1
  loc_647C72: CastAdVar Me
  loc_647C76: FStAdFunc var_C8
  loc_647C79: FLdPr var_C8
  loc_647C7C: LateIdSt
  loc_647C81: FFreeAd var_94 = ""
  loc_647C88: FFree1Var var_C4 = ""
  loc_647C8B: LitVarI4
  loc_647C93: PopAdLdVar
  loc_647C94: LitI4 4
  loc_647C99: CI2I4
  loc_647C9A: CVarI2 var_B4
  loc_647C9D: PopAdLdVar
  loc_647C9E: FLdPrThis
  loc_647C9F: VCallAd Control_ID_grdGrilla
  loc_647CA2: FStAdFunc var_94
  loc_647CA5: FLdPr var_94
  loc_647CA8: LateIdCallSt
  loc_647CB0: FFree1Ad var_94
  loc_647CB3: FLdRfVar var_88
  loc_647CB6: from_stack_2v = Proc_39_12_61E3A8(from_stack_1v)
  loc_647CBB: LitI2_Byte 1
  loc_647CBD: FStI2 var_8A
  loc_647CC0: FLdI2 var_8A
  loc_647CC3: CI4UI1
  loc_647CC4: ILdRf var_88
  loc_647CC7: FnLenStr
  loc_647CC8: LtI4
  loc_647CC9: BranchF loc_647DE9
  loc_647CCC: LitVarI2 var_C4, 2
  loc_647CD1: FLdI2 var_8A
  loc_647CD4: LitI2_Byte 6
  loc_647CD6: AddI2
  loc_647CD7: CI4UI1
  loc_647CD8: ILdRf var_88
  loc_647CDB: ImpAdCallI2 Mid$(, , )
  loc_647CE0: FStStrNoPop var_CC
  loc_647CE3: LitStr "/"
  loc_647CE6: ConcatStr
  loc_647CE7: FStStrNoPop var_E0
  loc_647CEA: LitVarI2 var_DC, 2
  loc_647CEF: FLdI2 var_8A
  loc_647CF2: LitI2_Byte 4
  loc_647CF4: AddI2
  loc_647CF5: CI4UI1
  loc_647CF6: ILdRf var_88
  loc_647CF9: ImpAdCallI2 Mid$(, , )
  loc_647CFE: FStStrNoPop var_E4
  loc_647D01: ConcatStr
  loc_647D02: FStStrNoPop var_E8
  loc_647D05: LitStr "/"
  loc_647D08: ConcatStr
  loc_647D09: FStStrNoPop var_10C
  loc_647D0C: LitVarI2 var_108, 4
  loc_647D11: FLdI2 var_8A
  loc_647D14: CI4UI1
  loc_647D15: ILdRf var_88
  loc_647D18: ImpAdCallI2 Mid$(, , )
  loc_647D1D: FStStrNoPop var_110
  loc_647D20: ConcatStr
  loc_647D21: FStStrNoPop var_114
  loc_647D24: LitStr "  -  "
  loc_647D27: ConcatStr
  loc_647D28: FStStr var_90
  loc_647D2B: FFreeStr var_CC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_10C = "": var_110 = ""
  loc_647D3C: FFreeVar var_C4 = "": var_DC = ""
  loc_647D45: ILdRf var_90
  loc_647D48: LitVarI2 var_C4, 2
  loc_647D4D: FLdI2 var_8A
  loc_647D50: LitI2_Byte 8
  loc_647D52: AddI2
  loc_647D53: CI4UI1
  loc_647D54: ILdRf var_88
  loc_647D57: ImpAdCallI2 Mid$(, , )
  loc_647D5C: FStStrNoPop var_CC
  loc_647D5F: ConcatStr
  loc_647D60: FStStrNoPop var_E0
  loc_647D63: LitStr ":"
  loc_647D66: ConcatStr
  loc_647D67: FStStrNoPop var_E4
  loc_647D6A: LitVarI2 var_DC, 2
  loc_647D6F: FLdI2 var_8A
  loc_647D72: LitI2_Byte &HA
  loc_647D74: AddI2
  loc_647D75: CI4UI1
  loc_647D76: ILdRf var_88
  loc_647D79: ImpAdCallI2 Mid$(, , )
  loc_647D7E: FStStrNoPop var_E8
  loc_647D81: ConcatStr
  loc_647D82: FStStrNoPop var_10C
  loc_647D85: LitStr ":"
  loc_647D88: ConcatStr
  loc_647D89: FStStrNoPop var_110
  loc_647D8C: LitVarI2 var_108, 2
  loc_647D91: FLdI2 var_8A
  loc_647D94: LitI2_Byte &HC
  loc_647D96: AddI2
  loc_647D97: CI4UI1
  loc_647D98: ILdRf var_88
  loc_647D9B: ImpAdCallI2 Mid$(, , )
  loc_647DA0: FStStrNoPop var_114
  loc_647DA3: ConcatStr
  loc_647DA4: FStStr var_90
  loc_647DA7: FFreeStr var_CC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_10C = "": var_110 = ""
  loc_647DB8: FFreeVar var_C4 = "": var_DC = ""
  loc_647DC1: FLdRfVar var_90
  loc_647DC4: CDargRef
  loc_647DC8: FLdPrThis
  loc_647DC9: VCallAd Control_ID_grdGrilla
  loc_647DCC: FStAdFunc var_94
  loc_647DCF: FLdPr var_94
  loc_647DD2: LateIdCall
  loc_647DDA: FFree1Ad var_94
  loc_647DDD: FLdI2 var_8A
  loc_647DE0: LitI2_Byte &HE
  loc_647DE2: AddI2
  loc_647DE3: FStI2 var_8A
  loc_647DE6: Branch loc_647CC0
  loc_647DE9: ExitProcHresult
End Function

Private Function Proc_39_12_61E3A8(arg_C) '61E3A8
  'Data Table: 4216E8
  loc_61E260: LitI2_Byte &HE
  loc_61E262: FStI2 var_92
  loc_61E265: ILdI4 arg_C
  loc_61E268: FnLenStr
  loc_61E269: FStR4 var_90
  loc_61E26C: LitI4 1
  loc_61E271: FLdRfVar var_88
  loc_61E274: ILdRf var_90
  loc_61E277: CR8I4
  loc_61E278: FLdI2 var_92
  loc_61E27B: CR8I2
  loc_61E27C: DivR8
  loc_61E27D: CI4R8
  loc_61E27E: ForI4 var_A0
  loc_61E284: LitI4 1
  loc_61E289: FLdRfVar var_8C
  loc_61E28C: ILdRf var_90
  loc_61E28F: CR8I4
  loc_61E290: FLdI2 var_92
  loc_61E293: CR8I2
  loc_61E294: DivR8
  loc_61E295: LitI2_Byte 1
  loc_61E297: CR8I2
  loc_61E298: SubR4
  loc_61E299: CI4R8
  loc_61E29A: ForI4 var_A8
  loc_61E2A0: FLdRfVar var_92
  loc_61E2A3: CVarRef
  loc_61E2A8: ILdRf var_8C
  loc_61E2AB: LitI4 1
  loc_61E2B0: SubI4
  loc_61E2B1: FLdI2 var_92
  loc_61E2B4: CI4UI1
  loc_61E2B5: MulI4
  loc_61E2B6: LitI4 1
  loc_61E2BB: AddI4
  loc_61E2BC: ILdI4 arg_C
  loc_61E2BF: ImpAdCallI2 Mid$(, , )
  loc_61E2C4: FStStr var_D8
  loc_61E2C7: FLdRfVar var_92
  loc_61E2CA: CVarRef
  loc_61E2CF: ILdRf var_8C
  loc_61E2D2: FLdI2 var_92
  loc_61E2D5: CI4UI1
  loc_61E2D6: MulI4
  loc_61E2D7: LitI4 1
  loc_61E2DC: AddI4
  loc_61E2DD: ILdI4 arg_C
  loc_61E2E0: ImpAdCallI2 Mid$(, , )
  loc_61E2E5: FStStr var_DC
  loc_61E2E8: FLdRfVar var_D2
  loc_61E2EB: FLdZeroAd var_DC
  loc_61E2EE: PopTmpLdAdStr
  loc_61E2F2: FLdZeroAd var_D8
  loc_61E2F5: PopTmpLdAdStr
  loc_61E2F9: from_stack_3v = Proc_39_13_649918(from_stack_1v, from_stack_2v)
  loc_61E2FE: FLdI2 var_D2
  loc_61E301: LitI2_Byte 0
  loc_61E303: LtI2
  loc_61E304: FFreeStr var_CC = "": var_D0 = "": var_D8 = ""
  loc_61E30F: BranchF loc_61E396
  loc_61E312: FLdRfVar var_92
  loc_61E315: CVarRef
  loc_61E31A: ILdRf var_8C
  loc_61E31D: FLdI2 var_92
  loc_61E320: CI4UI1
  loc_61E321: MulI4
  loc_61E322: LitI4 1
  loc_61E327: AddI4
  loc_61E328: ILdI4 arg_C
  loc_61E32B: ImpAdCallI2 Mid$(, , )
  loc_61E330: FStStr var_98
  loc_61E333: ILdRf arg_C
  loc_61E336: ILdRf var_8C
  loc_61E339: FLdI2 var_92
  loc_61E33C: CI4UI1
  loc_61E33D: MulI4
  loc_61E33E: LitI4 1
  loc_61E343: AddI4
  loc_61E344: FLdI2 var_92
  loc_61E347: CI4UI1
  loc_61E348: FLdRfVar var_92
  loc_61E34B: CVarRef
  loc_61E350: ILdRf var_8C
  loc_61E353: LitI4 1
  loc_61E358: SubI4
  loc_61E359: FLdI2 var_92
  loc_61E35C: CI4UI1
  loc_61E35D: MulI4
  loc_61E35E: LitI4 1
  loc_61E363: AddI4
  loc_61E364: ILdI4 arg_C
  loc_61E367: ImpAdCallI2 Mid$(, , )
  loc_61E36C: FStStrNoPop var_CC
  loc_61E36F: MidStr arg_0
  loc_61E372: FFree1Str var_CC
  loc_61E375: ILdRf arg_C
  loc_61E378: ILdRf var_8C
  loc_61E37B: LitI4 1
  loc_61E380: SubI4
  loc_61E381: FLdI2 var_92
  loc_61E384: CI4UI1
  loc_61E385: MulI4
  loc_61E386: LitI4 1
  loc_61E38B: AddI4
  loc_61E38C: FLdI2 var_92
  loc_61E38F: CI4UI1
  loc_61E390: ILdRf var_98
  loc_61E393: MidStr arg_0
  loc_61E396: FLdRfVar var_8C
  loc_61E399: NextI4 var_A8, loc_61E2A0
  loc_61E39E: FLdRfVar var_88
  loc_61E3A1: NextI4 var_A0, loc_61E284
  loc_61E3A6: ExitProcHresult
End Function

Private Function Proc_39_13_649918(arg_C, arg_10) '649918
  'Data Table: 4216E8
  loc_6496E4: LitVarI2 var_A8, 2
  loc_6496E9: LitI4 7
  loc_6496EE: ILdI4 arg_C
  loc_6496F1: ImpAdCallI2 Mid$(, , )
  loc_6496F6: FStStr var_168
  loc_6496F9: LitVarI2 var_C8, 2
  loc_6496FE: LitI4 5
  loc_649703: ILdI4 arg_C
  loc_649706: ImpAdCallI2 Mid$(, , )
  loc_64970B: FStStr var_16C
  loc_64970E: LitVarI2 var_E8, 4
  loc_649713: LitI4 1
  loc_649718: ILdI4 arg_C
  loc_64971B: ImpAdCallI2 Mid$(, , )
  loc_649720: FStStr var_170
  loc_649723: LitVarI2 var_108, 2
  loc_649728: LitI4 7
  loc_64972D: ILdI4 arg_10
  loc_649730: ImpAdCallI2 Mid$(, , )
  loc_649735: FStStr var_174
  loc_649738: LitVarI2 var_128, 2
  loc_64973D: LitI4 5
  loc_649742: ILdI4 arg_10
  loc_649745: ImpAdCallI2 Mid$(, , )
  loc_64974A: FStStr var_178
  loc_64974D: LitVarI2 var_148, 4
  loc_649752: LitI4 1
  loc_649757: ILdI4 arg_10
  loc_64975A: ImpAdCallI2 Mid$(, , )
  loc_64975F: FStStrNoPop var_160
  loc_649762: CI2Str
  loc_649764: FLdZeroAd var_178
  loc_649767: FStStrNoPop var_15C
  loc_64976A: CI2Str
  loc_64976C: FLdZeroAd var_174
  loc_64976F: FStStrNoPop var_158
  loc_649772: CI2Str
  loc_649774: FLdZeroAd var_170
  loc_649777: FStStrNoPop var_154
  loc_64977A: CI2Str
  loc_64977C: FLdZeroAd var_16C
  loc_64977F: FStStrNoPop var_150
  loc_649782: CI2Str
  loc_649784: FLdZeroAd var_168
  loc_649787: FStStrNoPop var_14C
  loc_64978A: CI2Str
  loc_64978C: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_649791: FStI2 var_162
  loc_649794: FFreeStr var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_6497AD: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_6497BC: FLdI2 var_162
  loc_6497BF: LitI2_Byte &HFF
  loc_6497C1: EqI2
  loc_6497C2: BranchF loc_6497CD
  loc_6497C5: LitI2_Byte &HFF
  loc_6497C7: FStI2 var_86
  loc_6497CA: Branch loc_64990F
  loc_6497CD: FLdI2 var_162
  loc_6497D0: LitI2_Byte 0
  loc_6497D2: EqI2
  loc_6497D3: BranchF loc_649901
  loc_6497D6: LitVarI2 var_A8, 2
  loc_6497DB: LitI4 9
  loc_6497E0: ILdI4 arg_C
  loc_6497E3: ImpAdCallI2 Mid$(, , )
  loc_6497E8: FStStr var_18C
  loc_6497EB: LitVarI2 var_C8, 2
  loc_6497F0: LitI4 &HB
  loc_6497F5: ILdI4 arg_C
  loc_6497F8: ImpAdCallI2 Mid$(, , )
  loc_6497FD: FStStr var_190
  loc_649800: LitVarI2 var_E8, 2
  loc_649805: LitI4 &HD
  loc_64980A: ILdI4 arg_C
  loc_64980D: ImpAdCallI2 Mid$(, , )
  loc_649812: FStStr var_194
  loc_649815: LitVarI2 var_108, 2
  loc_64981A: LitI4 9
  loc_64981F: ILdI4 arg_10
  loc_649822: ImpAdCallI2 Mid$(, , )
  loc_649827: FStStrNoPop var_168
  loc_64982A: LitStr ":"
  loc_64982D: ConcatStr
  loc_64982E: FStStrNoPop var_16C
  loc_649831: LitVarI2 var_128, 2
  loc_649836: LitI4 &HB
  loc_64983B: ILdI4 arg_10
  loc_64983E: ImpAdCallI2 Mid$(, , )
  loc_649843: FStStrNoPop var_170
  loc_649846: ConcatStr
  loc_649847: FStStrNoPop var_174
  loc_64984A: LitStr ":"
  loc_64984D: ConcatStr
  loc_64984E: FStStrNoPop var_178
  loc_649851: LitVarI2 var_148, 2
  loc_649856: LitI4 &HD
  loc_64985B: ILdI4 arg_10
  loc_64985E: ImpAdCallI2 Mid$(, , )
  loc_649863: FStStrNoPop var_17C
  loc_649866: ConcatStr
  loc_649867: FStStrNoPop var_184
  loc_64986A: FLdZeroAd var_18C
  loc_64986D: FStStrNoPop var_14C
  loc_649870: LitStr ":"
  loc_649873: ConcatStr
  loc_649874: FStStrNoPop var_150
  loc_649877: FLdZeroAd var_190
  loc_64987A: FStStrNoPop var_154
  loc_64987D: ConcatStr
  loc_64987E: FStStrNoPop var_158
  loc_649881: LitStr ":"
  loc_649884: ConcatStr
  loc_649885: FStStrNoPop var_15C
  loc_649888: FLdZeroAd var_194
  loc_64988B: FStStrNoPop var_160
  loc_64988E: ConcatStr
  loc_64988F: FStStrNoPop var_180
  loc_649892: ImpAdCallI2 Proc_65_3_641944(, )
  loc_649897: FStI2 var_186
  loc_64989A: FFreeStr var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_18C = "": var_190 = ""
  loc_6498BF: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_6498CE: FLdI2 var_186
  loc_6498D1: LitI2_Byte &HFF
  loc_6498D3: EqI2
  loc_6498D4: BranchF loc_6498DF
  loc_6498D7: LitI2_Byte &HFF
  loc_6498D9: FStI2 var_86
  loc_6498DC: Branch loc_6498FE
  loc_6498DF: FLdI2 var_186
  loc_6498E2: LitI2_Byte 0
  loc_6498E4: EqI2
  loc_6498E5: BranchF loc_6498F0
  loc_6498E8: LitI2_Byte 0
  loc_6498EA: FStI2 var_86
  loc_6498ED: Branch loc_6498FE
  loc_6498F0: FLdI2 var_186
  loc_6498F3: LitI2_Byte 1
  loc_6498F5: EqI2
  loc_6498F6: BranchF loc_6498FE
  loc_6498F9: LitI2_Byte 1
  loc_6498FB: FStI2 var_86
  loc_6498FE: Branch loc_64990F
  loc_649901: FLdI2 var_162
  loc_649904: LitI2_Byte 1
  loc_649906: EqI2
  loc_649907: BranchF loc_64990F
  loc_64990A: LitI2_Byte 1
  loc_64990C: FStI2 var_86
  loc_64990F: ExitProcCbHresult
End Function
