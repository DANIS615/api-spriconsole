VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmTotalesCTF
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
  ClientWidth = 11265
  ClientHeight = 4575
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CheckBox chkUltimo
    Caption = "Ver solo último cierre"
    Left = 240
    Top = 3960
    Width = 4575
    Height = 375
    TabIndex = 18
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
  Begin VB.CommandButton cmdTurnoDiaMes
    Caption = "&Mes"
    Index = 2
    Left = 4680
    Top = 2760
    Width = 1215
    Height = 375
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
  Begin VB.CommandButton cmdTurnoDiaMes
    Caption = "&Dia"
    Index = 1
    Left = 3000
    Top = 2760
    Width = 1335
    Height = 375
    TabIndex = 2
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
  Begin VB.CommandButton cmdTurnoDiaMes
    Caption = "&Turno"
    Index = 0
    Left = 1320
    Top = 2760
    Width = 1335
    Height = 375
    TabIndex = 1
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
  Begin VB.ListBox List1
    Left = 6600
    Top = 1320
    Width = 4335
    Height = 2205
    TabIndex = 0
    Sorted = -1  'True
    BeginProperty Font
      Name = "Courier"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand sscImprimir
    Left = 7080
    Top = 3840
    Width = 1575
    Height = 495
    TabIndex = 4
    OleObjectBlob = "frmTotalesCTF.frx":0000
  End
  Begin Threed.SSCommand cmdConsultar
    Left = 5040
    Top = 3840
    Width = 1575
    Height = 495
    TabIndex = 5
    OleObjectBlob = "frmTotalesCTF.frx":0065
  End
  Begin MSMask.MaskEdBox FechaInicial
    Left = 1320
    Top = 1440
    Width = 2235
    Height = 435
    TabIndex = 6
    OleObjectBlob = "frmTotalesCTF.frx":00CB
  End
  Begin MSMask.MaskEdBox HoraInicial
    Left = 3720
    Top = 1440
    Width = 2235
    Height = 435
    TabIndex = 7
    OleObjectBlob = "frmTotalesCTF.frx":015F
  End
  Begin MSMask.MaskEdBox HoraFinal
    Left = 3720
    Top = 2100
    Width = 2235
    Height = 435
    TabIndex = 8
    OleObjectBlob = "frmTotalesCTF.frx":01FF
  End
  Begin Threed.SSCommand sscSalir
    Left = 9240
    Top = 3840
    Width = 1575
    Height = 495
    TabIndex = 9
    OleObjectBlob = "frmTotalesCTF.frx":029F
  End
  Begin MSMask.MaskEdBox FechaFinal
    Left = 1320
    Top = 2100
    Width = 2235
    Height = 435
    TabIndex = 10
    OleObjectBlob = "frmTotalesCTF.frx":0303
  End
  Begin VB.Label Label5
    Caption = "Hora"
    Left = 3720
    Top = 1200
    Width = 2295
    Height = 255
    TabIndex = 17
    Alignment = 2 'Center
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
  Begin VB.Label Label4
    Caption = "Fecha"
    Left = 1320
    Top = 1200
    Width = 2295
    Height = 255
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin VB.Label Label3
    Caption = "Totales de Playeros"
    Left = 3480
    Top = 240
    Width = 4335
    Height = 495
    TabIndex = 15
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
  Begin VB.Label labelsurtidor2
    Caption = "Playero"
    Left = 7200
    Top = 960
    Width = 1095
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
    Caption = "Monto"
    Index = 0
    Left = 9360
    Top = 960
    Width = 1335
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
  Begin VB.Label Label1
    Caption = "Hasta :"
    Index = 1
    Left = 360
    Top = 2220
    Width = 975
    Height = 375
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
  Begin VB.Label Label1
    Caption = "Desde :"
    Index = 0
    Left = 360
    Top = 1560
    Width = 975
    Height = 375
    TabIndex = 11
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
End

Attribute VB_Name = "frmTotalesCTF"


Private Sub cmdConsultar_UnknownEvent_8 '6A91CC
  'Data Table: 438174
  loc_6A8B14: FLdPrThis
  loc_6A8B15: VCallAd Control_ID_List1
  loc_6A8B18: FStAdFunc var_A0
  loc_6A8B1B: FLdPr var_A0
  loc_6A8B1E: Me.Clear
  loc_6A8B23: FFree1Ad var_A0
  loc_6A8B26: FLdRfVar var_A2
  loc_6A8B29: FLdPrThis
  loc_6A8B2A: VCallAd Control_ID_chkUltimo
  loc_6A8B2D: FStAdFunc var_A0
  loc_6A8B30: FLdPr var_A0
  loc_6A8B33:  = Me.Value
  loc_6A8B38: FLdI2 var_A2
  loc_6A8B3B: CI4UI1
  loc_6A8B3C: LitI4 1
  loc_6A8B41: EqI4
  loc_6A8B42: FFree1Ad var_A0
  loc_6A8B45: BranchF loc_6A8C4B
  loc_6A8B48: FLdRfVar var_BE
  loc_6A8B4B: FLdRfVar var_A8
  loc_6A8B4E: CVarRef
  loc_6A8B53: LitI2_Byte 0
  loc_6A8B55: PopTmpLdAd2 var_A2
  loc_6A8B58: LitStr "Y"
  loc_6A8B5B: FStStrCopy var_AC
  loc_6A8B5E: FLdRfVar var_AC
  loc_6A8B61: FLdRfVar var_A0
  loc_6A8B64: ImpAdLdRf MemVar_74C760
  loc_6A8B67: NewIfNullPr Formx
  loc_6A8B6A: from_stack_1v = Formx.global_4589716Get()
  loc_6A8B6F: FLdPr var_A0
  loc_6A8B72: Formx.WindowState = from_stack_1
  loc_6A8B77: FLdI2 var_BE
  loc_6A8B7A: NotI4
  loc_6A8B7B: FFree1Str var_AC
  loc_6A8B7E: FFree1Ad var_A0
  loc_6A8B81: BranchF loc_6A8B9B
  loc_6A8B84: FLdRfVar var_D0
  loc_6A8B87: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A8B8C: FLdRfVar var_D0
  loc_6A8B8F: CBoolVarNull
  loc_6A8B91: FFree1Var var_D0 = ""
  loc_6A8B94: BranchF loc_6A8B98
  loc_6A8B97: ExitProcHresult
  loc_6A8B98: Branch loc_6A8B48
  loc_6A8B9B: FLdRfVar var_A8
  loc_6A8B9E: CVarRef
  loc_6A8BA3: FLdRfVar var_D0
  loc_6A8BA6: ImpAdCallFPR4  = Trim()
  loc_6A8BAB: FLdRfVar var_D0
  loc_6A8BAE: CStrVarTmp
  loc_6A8BAF: FStStr var_A8
  loc_6A8BB2: FFree1Var var_D0 = ""
  loc_6A8BB5: ILdRf var_A8
  loc_6A8BB8: FnLenStr
  loc_6A8BB9: LitI4 &HA
  loc_6A8BBE: GtI4
  loc_6A8BBF: BranchF loc_6A8BCD
  loc_6A8BC2: FLdRfVar var_A8
  loc_6A8BC5: from_stack_2v = Proc_127_14_65A82C(from_stack_1v)
  loc_6A8BCA: Branch loc_6A8C4A
  loc_6A8BCD: FLdRfVar var_1F8
  loc_6A8BD0: LitVar_Missing var_1F4
  loc_6A8BD3: LitVar_Missing var_1D4
  loc_6A8BD6: LitVar_Missing var_1B4
  loc_6A8BD9: LitVar_Missing var_194
  loc_6A8BDC: LitVar_Missing var_174
  loc_6A8BDF: LitVar_Missing var_154
  loc_6A8BE2: LitVar_Missing var_134
  loc_6A8BE5: LitVar_Missing var_114
  loc_6A8BE8: LitVar_Missing var_F4
  loc_6A8BEB: LitVar_Missing var_D0
  loc_6A8BEE: LitStr "No existen datos a reportar."
  loc_6A8BF1: FStStrCopy var_AC
  loc_6A8BF4: FLdRfVar var_AC
  loc_6A8BF7: LitI4 &H10
  loc_6A8BFC: PopTmpLdAdStr var_D4
  loc_6A8BFF: LitI2_Byte &H4C
  loc_6A8C01: PopTmpLdAd2 var_A2
  loc_6A8C04: ImpAdLdRf MemVar_74C7D0
  loc_6A8C07: NewIfNullPr clsMsg
  loc_6A8C0A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A8C0F: LitVar_Missing var_268
  loc_6A8C12: LitVar_Missing var_248
  loc_6A8C15: LitVar_Missing var_228
  loc_6A8C18: LitI4 &H40
  loc_6A8C1D: FLdZeroAd var_1F8
  loc_6A8C20: CVarStr var_208
  loc_6A8C23: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A8C28: FFree1Str var_AC
  loc_6A8C2B: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6A8C4A: ExitProcHresult
  loc_6A8C4B: FLdRfVar var_D0
  loc_6A8C4E: from_stack_1v = Proc_127_12_6E9F00()
  loc_6A8C53: FLdRfVar var_D0
  loc_6A8C56: LitVarI4
  loc_6A8C5E: HardType
  loc_6A8C5F: NeVarBool
  loc_6A8C61: FFree1Var var_D0 = ""
  loc_6A8C64: BranchF loc_6A8C68
  loc_6A8C67: ExitProcHresult
  loc_6A8C68: FLdPrThis
  loc_6A8C69: VCallAd Control_ID_FechaInicial
  loc_6A8C6C: FStAdFunc var_30C
  loc_6A8C6F: FLdPrThis
  loc_6A8C70: VCallAd Control_ID_FechaInicial
  loc_6A8C73: FStAdFunc var_310
  loc_6A8C76: FLdPrThis
  loc_6A8C77: VCallAd Control_ID_FechaInicial
  loc_6A8C7A: FStAdFunc var_314
  loc_6A8C7D: FLdPrThis
  loc_6A8C7E: VCallAd Control_ID_HoraInicial
  loc_6A8C81: FStAdFunc var_A0
  loc_6A8C84: FLdPr var_A0
  loc_6A8C87: LateIdLdVar var_228 DispID_22 0
  loc_6A8C8E: PopAd
  loc_6A8C90: FLdPrThis
  loc_6A8C91: VCallAd Control_ID_HoraInicial
  loc_6A8C94: FStAdFunc var_318
  loc_6A8C97: FLdPrThis
  loc_6A8C98: VCallAd Control_ID_HoraInicial
  loc_6A8C9B: FStAdFunc var_31C
  loc_6A8C9E: LitVarI2 var_F4, 4
  loc_6A8CA3: LitI4 7
  loc_6A8CA8: FLdZeroAd var_30C
  loc_6A8CAB: CVarAd
  loc_6A8CAF: FLdRfVar var_114
  loc_6A8CB2: ImpAdCallFPR4  = Mid(, , )
  loc_6A8CB7: FLdRfVar var_114
  loc_6A8CBA: LitVarI2 var_154, 2
  loc_6A8CBF: LitI4 4
  loc_6A8CC4: FLdZeroAd var_310
  loc_6A8CC7: CVarAd
  loc_6A8CCB: FLdRfVar var_174
  loc_6A8CCE: ImpAdCallFPR4  = Mid(, , )
  loc_6A8CD3: FLdRfVar var_174
  loc_6A8CD6: ConcatVar var_194
  loc_6A8CDA: LitVarI2 var_1D4, 2
  loc_6A8CDF: LitI4 1
  loc_6A8CE4: FLdZeroAd var_314
  loc_6A8CE7: CVarAd
  loc_6A8CEB: FLdRfVar var_1F4
  loc_6A8CEE: ImpAdCallFPR4  = Mid(, , )
  loc_6A8CF3: FLdRfVar var_1F4
  loc_6A8CF6: ConcatVar var_208
  loc_6A8CFA: LitVarI2 var_268, 2
  loc_6A8CFF: LitI4 1
  loc_6A8D04: FLdRfVar var_228
  loc_6A8D07: CStrVarTmp
  loc_6A8D08: CVarStr var_248
  loc_6A8D0B: FLdRfVar var_278
  loc_6A8D0E: ImpAdCallFPR4  = Mid(, , )
  loc_6A8D13: FLdRfVar var_278
  loc_6A8D16: ConcatVar var_288
  loc_6A8D1A: LitVarI2 var_2A8, 2
  loc_6A8D1F: LitI4 4
  loc_6A8D24: FLdZeroAd var_318
  loc_6A8D27: CVarAd
  loc_6A8D2B: FLdRfVar var_2B8
  loc_6A8D2E: ImpAdCallFPR4  = Mid(, , )
  loc_6A8D33: FLdRfVar var_2B8
  loc_6A8D36: ConcatVar var_2C8
  loc_6A8D3A: LitVarI2 var_2E8, 2
  loc_6A8D3F: LitI4 7
  loc_6A8D44: FLdZeroAd var_31C
  loc_6A8D47: CVarAd
  loc_6A8D4B: FLdRfVar var_2F8
  loc_6A8D4E: ImpAdCallFPR4  = Mid(, , )
  loc_6A8D53: FLdRfVar var_2F8
  loc_6A8D56: ConcatVar var_308
  loc_6A8D5A: CStrVarTmp
  loc_6A8D5B: FStStr var_88
  loc_6A8D5E: FFreeAd var_A0 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_6A8D6D: FFreeVar var_D0 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1F4 = "": var_228 = "": var_248 = "": var_268 = "": var_208 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_2C8 = "": var_2F8 = ""
  loc_6A8DA0: FLdPrThis
  loc_6A8DA1: VCallAd Control_ID_FechaFinal
  loc_6A8DA4: FStAdFunc var_30C
  loc_6A8DA7: FLdPrThis
  loc_6A8DA8: VCallAd Control_ID_FechaFinal
  loc_6A8DAB: FStAdFunc var_310
  loc_6A8DAE: FLdPrThis
  loc_6A8DAF: VCallAd Control_ID_FechaFinal
  loc_6A8DB2: FStAdFunc var_314
  loc_6A8DB5: FLdPrThis
  loc_6A8DB6: VCallAd Control_ID_HoraFinal
  loc_6A8DB9: FStAdFunc var_A0
  loc_6A8DBC: FLdPr var_A0
  loc_6A8DBF: LateIdLdVar var_228 DispID_22 0
  loc_6A8DC6: PopAd
  loc_6A8DC8: FLdPrThis
  loc_6A8DC9: VCallAd Control_ID_HoraFinal
  loc_6A8DCC: FStAdFunc var_318
  loc_6A8DCF: FLdPrThis
  loc_6A8DD0: VCallAd Control_ID_HoraFinal
  loc_6A8DD3: FStAdFunc var_31C
  loc_6A8DD6: LitVarI2 var_F4, 4
  loc_6A8DDB: LitI4 7
  loc_6A8DE0: FLdZeroAd var_30C
  loc_6A8DE3: CVarAd
  loc_6A8DE7: FLdRfVar var_114
  loc_6A8DEA: ImpAdCallFPR4  = Mid(, , )
  loc_6A8DEF: FLdRfVar var_114
  loc_6A8DF2: LitVarI2 var_154, 2
  loc_6A8DF7: LitI4 4
  loc_6A8DFC: FLdZeroAd var_310
  loc_6A8DFF: CVarAd
  loc_6A8E03: FLdRfVar var_174
  loc_6A8E06: ImpAdCallFPR4  = Mid(, , )
  loc_6A8E0B: FLdRfVar var_174
  loc_6A8E0E: ConcatVar var_194
  loc_6A8E12: LitVarI2 var_1D4, 2
  loc_6A8E17: LitI4 1
  loc_6A8E1C: FLdZeroAd var_314
  loc_6A8E1F: CVarAd
  loc_6A8E23: FLdRfVar var_1F4
  loc_6A8E26: ImpAdCallFPR4  = Mid(, , )
  loc_6A8E2B: FLdRfVar var_1F4
  loc_6A8E2E: ConcatVar var_208
  loc_6A8E32: LitVarI2 var_268, 2
  loc_6A8E37: LitI4 1
  loc_6A8E3C: FLdRfVar var_228
  loc_6A8E3F: CStrVarTmp
  loc_6A8E40: CVarStr var_248
  loc_6A8E43: FLdRfVar var_278
  loc_6A8E46: ImpAdCallFPR4  = Mid(, , )
  loc_6A8E4B: FLdRfVar var_278
  loc_6A8E4E: ConcatVar var_288
  loc_6A8E52: LitVarI2 var_2A8, 2
  loc_6A8E57: LitI4 4
  loc_6A8E5C: FLdZeroAd var_318
  loc_6A8E5F: CVarAd
  loc_6A8E63: FLdRfVar var_2B8
  loc_6A8E66: ImpAdCallFPR4  = Mid(, , )
  loc_6A8E6B: FLdRfVar var_2B8
  loc_6A8E6E: ConcatVar var_2C8
  loc_6A8E72: LitVarI2 var_2E8, 2
  loc_6A8E77: LitI4 7
  loc_6A8E7C: FLdZeroAd var_31C
  loc_6A8E7F: CVarAd
  loc_6A8E83: FLdRfVar var_2F8
  loc_6A8E86: ImpAdCallFPR4  = Mid(, , )
  loc_6A8E8B: FLdRfVar var_2F8
  loc_6A8E8E: ConcatVar var_308
  loc_6A8E92: CStrVarTmp
  loc_6A8E93: FStStr var_8C
  loc_6A8E96: FFreeAd var_A0 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_6A8EA5: FFreeVar var_D0 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1F4 = "": var_228 = "": var_248 = "": var_268 = "": var_208 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_2C8 = "": var_2F8 = ""
  loc_6A8ED8: ILdRf var_88
  loc_6A8EDB: ILdRf var_8C
  loc_6A8EDE: ConcatStr
  loc_6A8EDF: FStStrNoPop var_AC
  loc_6A8EE2: LitStr "0"
  loc_6A8EE5: ConcatStr
  loc_6A8EE6: FStStrNoPop var_1F8
  loc_6A8EE9: LitStr "1"
  loc_6A8EEC: ConcatStr
  loc_6A8EED: FStStr var_94
  loc_6A8EF0: FFreeStr var_AC = ""
  loc_6A8EF7: FLdRfVar var_A2
  loc_6A8EFA: FLdRfVar var_9C
  loc_6A8EFD: ILdRf var_94
  loc_6A8F00: FLdRfVar var_A0
  loc_6A8F03: ImpAdLdRf MemVar_74C760
  loc_6A8F06: NewIfNullPr Formx
  loc_6A8F09: from_stack_1v = Formx.global_4589716Get()
  loc_6A8F0E: FLdPr var_A0
  loc_6A8F11: Formx.Appearance = from_stack_1
  loc_6A8F16: FLdI2 var_A2
  loc_6A8F19: NotI4
  loc_6A8F1A: FFree1Ad var_A0
  loc_6A8F1D: BranchF loc_6A8F4C
  loc_6A8F20: FLdRfVar var_D0
  loc_6A8F23: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A8F28: FLdRfVar var_D0
  loc_6A8F2B: CBoolVarNull
  loc_6A8F2D: FFree1Var var_D0 = ""
  loc_6A8F30: BranchF loc_6A8F49
  loc_6A8F33: ILdRf Me
  loc_6A8F36: FStAdNoPop
  loc_6A8F3A: ImpAdLdRf MemVar_7520D4
  loc_6A8F3D: NewIfNullPr Global
  loc_6A8F40: Global.Unload from_stack_1
  loc_6A8F45: FFree1Ad var_A0
  loc_6A8F48: ExitProcHresult
  loc_6A8F49: Branch loc_6A8EF7
  loc_6A8F4C: ILdRf var_9C
  loc_6A8F4F: LitI4 0
  loc_6A8F54: EqI4
  loc_6A8F55: BranchF loc_6A8FD6
  loc_6A8F58: FLdRfVar var_1F8
  loc_6A8F5B: LitVar_Missing var_1F4
  loc_6A8F5E: LitVar_Missing var_1D4
  loc_6A8F61: LitVar_Missing var_1B4
  loc_6A8F64: LitVar_Missing var_194
  loc_6A8F67: LitVar_Missing var_174
  loc_6A8F6A: LitVar_Missing var_154
  loc_6A8F6D: LitVar_Missing var_134
  loc_6A8F70: LitVar_Missing var_114
  loc_6A8F73: LitVar_Missing var_F4
  loc_6A8F76: LitVar_Missing var_D0
  loc_6A8F79: LitStr "No existen datos a reportar."
  loc_6A8F7C: FStStrCopy var_AC
  loc_6A8F7F: FLdRfVar var_AC
  loc_6A8F82: LitI4 &H10
  loc_6A8F87: PopTmpLdAdStr var_D4
  loc_6A8F8A: LitI2_Byte &H4C
  loc_6A8F8C: PopTmpLdAd2 var_A2
  loc_6A8F8F: ImpAdLdRf MemVar_74C7D0
  loc_6A8F92: NewIfNullPr clsMsg
  loc_6A8F95: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A8F9A: LitVar_Missing var_268
  loc_6A8F9D: LitVar_Missing var_248
  loc_6A8FA0: LitVar_Missing var_228
  loc_6A8FA3: LitI4 &H40
  loc_6A8FA8: FLdZeroAd var_1F8
  loc_6A8FAB: CVarStr var_208
  loc_6A8FAE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A8FB3: FFree1Str var_AC
  loc_6A8FB6: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6A8FD5: ExitProcHresult
  loc_6A8FD6: ILdRf var_9C
  loc_6A8FD9: LitI4 &HEA60
  loc_6A8FDE: GtI4
  loc_6A8FDF: BranchF loc_6A90E1
  loc_6A8FE2: FLdRfVar var_1F8
  loc_6A8FE5: LitVar_Missing var_1F4
  loc_6A8FE8: LitVar_Missing var_1D4
  loc_6A8FEB: LitVar_Missing var_1B4
  loc_6A8FEE: LitVar_Missing var_194
  loc_6A8FF1: LitVar_Missing var_174
  loc_6A8FF4: LitVar_Missing var_154
  loc_6A8FF7: LitVar_Missing var_134
  loc_6A8FFA: LitVar_Missing var_114
  loc_6A8FFD: LitVar_Missing var_F4
  loc_6A9000: LitVar_Missing var_D0
  loc_6A9003: LitStr "El período seleccionado abarca demasiados despachos."
  loc_6A9006: FStStrCopy var_AC
  loc_6A9009: FLdRfVar var_AC
  loc_6A900C: LitI4 &H11
  loc_6A9011: PopTmpLdAdStr var_D4
  loc_6A9014: LitI2_Byte &H4C
  loc_6A9016: PopTmpLdAd2 var_A2
  loc_6A9019: ImpAdLdRf MemVar_74C7D0
  loc_6A901C: NewIfNullPr clsMsg
  loc_6A901F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9024: LitI4 &HD
  loc_6A9029: ImpAdCallI2 Chr$()
  loc_6A902E: FStStr var_3D4
  loc_6A9031: FLdRfVar var_39C
  loc_6A9034: LitVar_Missing var_2C8
  loc_6A9037: LitVar_Missing var_2B8
  loc_6A903A: LitVar_Missing var_2A8
  loc_6A903D: LitVar_Missing var_298
  loc_6A9040: LitVar_Missing var_288
  loc_6A9043: LitVar_Missing var_278
  loc_6A9046: LitVar_Missing var_268
  loc_6A9049: LitVar_Missing var_248
  loc_6A904C: LitVar_Missing var_228
  loc_6A904F: LitVar_Missing var_208
  loc_6A9052: LitStr "Por favor reduzca el rango."
  loc_6A9055: FStStrCopy var_328
  loc_6A9058: FLdRfVar var_328
  loc_6A905B: LitI4 &H12
  loc_6A9060: PopTmpLdAdStr var_324
  loc_6A9063: LitI2_Byte &H4C
  loc_6A9065: PopTmpLdAd2 var_BE
  loc_6A9068: ImpAdLdRf MemVar_74C7D0
  loc_6A906B: NewIfNullPr clsMsg
  loc_6A906E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9073: LitVar_Missing var_308
  loc_6A9076: LitVar_Missing var_2F8
  loc_6A9079: LitVar_Missing var_2E8
  loc_6A907C: LitI4 &H40
  loc_6A9081: ILdRf var_1F8
  loc_6A9084: FLdZeroAd var_3D4
  loc_6A9087: FStStrNoPop var_320
  loc_6A908A: ConcatStr
  loc_6A908B: FStStrNoPop var_3A0
  loc_6A908E: ILdRf var_39C
  loc_6A9091: ConcatStr
  loc_6A9092: CVarStr var_2D8
  loc_6A9095: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A909A: FFreeStr var_AC = "": var_1F8 = "": var_320 = "": var_328 = "": var_3A0 = "": var_39C = ""
  loc_6A90AB: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = ""
  loc_6A90DE: Branch loc_6A91C8
  loc_6A90E1: FLdRfVar var_A2
  loc_6A90E4: FLdRfVar var_90
  loc_6A90E7: FLdRfVar var_A0
  loc_6A90EA: ImpAdLdRf MemVar_74C760
  loc_6A90ED: NewIfNullPr Formx
  loc_6A90F0: from_stack_1v = Formx.global_4589716Get()
  loc_6A90F5: FLdPr var_A0
  loc_6A90F8:  = Formx.WhatsThisButton
  loc_6A90FD: FLdI2 var_A2
  loc_6A9100: NotI4
  loc_6A9101: FFree1Ad var_A0
  loc_6A9104: BranchF loc_6A9133
  loc_6A9107: FLdRfVar var_D0
  loc_6A910A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A910F: FLdRfVar var_D0
  loc_6A9112: CBoolVarNull
  loc_6A9114: FFree1Var var_D0 = ""
  loc_6A9117: BranchF loc_6A9130
  loc_6A911A: ILdRf Me
  loc_6A911D: FStAdNoPop
  loc_6A9121: ImpAdLdRf MemVar_7520D4
  loc_6A9124: NewIfNullPr Global
  loc_6A9127: Global.Unload from_stack_1
  loc_6A912C: FFree1Ad var_A0
  loc_6A912F: ExitProcHresult
  loc_6A9130: Branch loc_6A90E1
  loc_6A9133: ILdRf var_90
  loc_6A9136: FnLenStr
  loc_6A9137: LitI4 &HA
  loc_6A913C: GtI4
  loc_6A913D: BranchF loc_6A914B
  loc_6A9140: ILdRf var_90
  loc_6A9143: from_stack_2v = Proc_127_11_6D2B7C(from_stack_1v)
  loc_6A9148: Branch loc_6A91C8
  loc_6A914B: FLdRfVar var_1F8
  loc_6A914E: LitVar_Missing var_1F4
  loc_6A9151: LitVar_Missing var_1D4
  loc_6A9154: LitVar_Missing var_1B4
  loc_6A9157: LitVar_Missing var_194
  loc_6A915A: LitVar_Missing var_174
  loc_6A915D: LitVar_Missing var_154
  loc_6A9160: LitVar_Missing var_134
  loc_6A9163: LitVar_Missing var_114
  loc_6A9166: LitVar_Missing var_F4
  loc_6A9169: LitVar_Missing var_D0
  loc_6A916C: LitStr "Hubo un error inesperado del servicio. Por favor vuelva a intentar la operación."
  loc_6A916F: FStStrCopy var_AC
  loc_6A9172: FLdRfVar var_AC
  loc_6A9175: LitI4 &H14
  loc_6A917A: PopTmpLdAdStr var_D4
  loc_6A917D: LitI2_Byte &H4C
  loc_6A917F: PopTmpLdAd2 var_A2
  loc_6A9182: ImpAdLdRf MemVar_74C7D0
  loc_6A9185: NewIfNullPr clsMsg
  loc_6A9188: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A918D: LitVar_Missing var_268
  loc_6A9190: LitVar_Missing var_248
  loc_6A9193: LitVar_Missing var_228
  loc_6A9196: LitI4 &H40
  loc_6A919B: FLdZeroAd var_1F8
  loc_6A919E: CVarStr var_208
  loc_6A91A1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A91A6: FFree1Str var_AC
  loc_6A91A9: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6A91C8: ExitProcHresult
  loc_6A91C9: LitStr "????????"
End Sub

Private Sub sscImprimir_UnknownEvent_8 '6BAC14
  'Data Table: 438174
  loc_6BA474: FLdPrThis
  loc_6BA475: VCallAd Control_ID_List1
  loc_6BA478: FStAdFunc var_A0
  loc_6BA47B: FLdPr var_A0
  loc_6BA47E: Me.Clear
  loc_6BA483: FFree1Ad var_A0
  loc_6BA486: FLdRfVar var_A2
  loc_6BA489: FLdPrThis
  loc_6BA48A: VCallAd Control_ID_chkUltimo
  loc_6BA48D: FStAdFunc var_A0
  loc_6BA490: FLdPr var_A0
  loc_6BA493:  = Me.Value
  loc_6BA498: FLdI2 var_A2
  loc_6BA49B: CI4UI1
  loc_6BA49C: LitI4 1
  loc_6BA4A1: EqI4
  loc_6BA4A2: FFree1Ad var_A0
  loc_6BA4A5: BranchF loc_6BA630
  loc_6BA4A8: FLdRfVar var_BE
  loc_6BA4AB: FLdRfVar var_A8
  loc_6BA4AE: CVarRef
  loc_6BA4B3: LitI2_Byte 0
  loc_6BA4B5: PopTmpLdAd2 var_A2
  loc_6BA4B8: LitStr "Y"
  loc_6BA4BB: FStStrCopy var_AC
  loc_6BA4BE: FLdRfVar var_AC
  loc_6BA4C1: FLdRfVar var_A0
  loc_6BA4C4: ImpAdLdRf MemVar_74C760
  loc_6BA4C7: NewIfNullPr Formx
  loc_6BA4CA: from_stack_1v = Formx.global_4589716Get()
  loc_6BA4CF: FLdPr var_A0
  loc_6BA4D2: Formx.WindowState = from_stack_1
  loc_6BA4D7: FLdI2 var_BE
  loc_6BA4DA: NotI4
  loc_6BA4DB: FFree1Str var_AC
  loc_6BA4DE: FFree1Ad var_A0
  loc_6BA4E1: BranchF loc_6BA4FB
  loc_6BA4E4: FLdRfVar var_D0
  loc_6BA4E7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BA4EC: FLdRfVar var_D0
  loc_6BA4EF: CBoolVarNull
  loc_6BA4F1: FFree1Var var_D0 = ""
  loc_6BA4F4: BranchF loc_6BA4F8
  loc_6BA4F7: ExitProcHresult
  loc_6BA4F8: Branch loc_6BA4A8
  loc_6BA4FB: FLdRfVar var_A8
  loc_6BA4FE: CVarRef
  loc_6BA503: FLdRfVar var_D0
  loc_6BA506: ImpAdCallFPR4  = Trim()
  loc_6BA50B: FLdRfVar var_D0
  loc_6BA50E: CStrVarTmp
  loc_6BA50F: FStStr var_A8
  loc_6BA512: FFree1Var var_D0 = ""
  loc_6BA515: ILdRf var_A8
  loc_6BA518: FnLenStr
  loc_6BA519: LitI4 &HA
  loc_6BA51E: GtI4
  loc_6BA51F: BranchF loc_6BA5B2
  loc_6BA522: FLdRfVar var_A8
  loc_6BA525: ImpAdCallFPR4 Proc_158_9_6A0BFC()
  loc_6BA52A: FLdRfVar var_A8
  loc_6BA52D: from_stack_2v = Proc_127_14_65A82C(from_stack_1v)
  loc_6BA532: FLdRfVar var_1F8
  loc_6BA535: LitVar_Missing var_1F4
  loc_6BA538: LitVar_Missing var_1D4
  loc_6BA53B: LitVar_Missing var_1B4
  loc_6BA53E: LitVar_Missing var_194
  loc_6BA541: LitVar_Missing var_174
  loc_6BA544: LitVar_Missing var_154
  loc_6BA547: LitVar_Missing var_134
  loc_6BA54A: LitVar_Missing var_114
  loc_6BA54D: LitVar_Missing var_F4
  loc_6BA550: LitVar_Missing var_D0
  loc_6BA553: LitStr "Impresión terminada."
  loc_6BA556: FStStrCopy var_AC
  loc_6BA559: FLdRfVar var_AC
  loc_6BA55C: LitI4 &HF
  loc_6BA561: PopTmpLdAdStr var_D4
  loc_6BA564: LitI2_Byte &H4C
  loc_6BA566: PopTmpLdAd2 var_A2
  loc_6BA569: ImpAdLdRf MemVar_74C7D0
  loc_6BA56C: NewIfNullPr clsMsg
  loc_6BA56F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA574: LitVar_Missing var_268
  loc_6BA577: LitVar_Missing var_248
  loc_6BA57A: LitVar_Missing var_228
  loc_6BA57D: LitI4 &H40
  loc_6BA582: FLdZeroAd var_1F8
  loc_6BA585: CVarStr var_208
  loc_6BA588: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BA58D: FFree1Str var_AC
  loc_6BA590: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6BA5AF: Branch loc_6BA62F
  loc_6BA5B2: FLdRfVar var_1F8
  loc_6BA5B5: LitVar_Missing var_1F4
  loc_6BA5B8: LitVar_Missing var_1D4
  loc_6BA5BB: LitVar_Missing var_1B4
  loc_6BA5BE: LitVar_Missing var_194
  loc_6BA5C1: LitVar_Missing var_174
  loc_6BA5C4: LitVar_Missing var_154
  loc_6BA5C7: LitVar_Missing var_134
  loc_6BA5CA: LitVar_Missing var_114
  loc_6BA5CD: LitVar_Missing var_F4
  loc_6BA5D0: LitVar_Missing var_D0
  loc_6BA5D3: LitStr "No existen datos a reportar."
  loc_6BA5D6: FStStrCopy var_AC
  loc_6BA5D9: FLdRfVar var_AC
  loc_6BA5DC: LitI4 &H10
  loc_6BA5E1: PopTmpLdAdStr var_D4
  loc_6BA5E4: LitI2_Byte &H4C
  loc_6BA5E6: PopTmpLdAd2 var_A2
  loc_6BA5E9: ImpAdLdRf MemVar_74C7D0
  loc_6BA5EC: NewIfNullPr clsMsg
  loc_6BA5EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA5F4: LitVar_Missing var_268
  loc_6BA5F7: LitVar_Missing var_248
  loc_6BA5FA: LitVar_Missing var_228
  loc_6BA5FD: LitI4 &H40
  loc_6BA602: FLdZeroAd var_1F8
  loc_6BA605: CVarStr var_208
  loc_6BA608: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BA60D: FFree1Str var_AC
  loc_6BA610: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6BA62F: ExitProcHresult
  loc_6BA630: FLdRfVar var_D0
  loc_6BA633: from_stack_1v = Proc_127_12_6E9F00()
  loc_6BA638: FLdRfVar var_D0
  loc_6BA63B: LitVarI4
  loc_6BA643: HardType
  loc_6BA644: NeVarBool
  loc_6BA646: FFree1Var var_D0 = ""
  loc_6BA649: BranchF loc_6BA64D
  loc_6BA64C: ExitProcHresult
  loc_6BA64D: FLdPrThis
  loc_6BA64E: VCallAd Control_ID_FechaInicial
  loc_6BA651: FStAdFunc var_30C
  loc_6BA654: FLdPrThis
  loc_6BA655: VCallAd Control_ID_FechaInicial
  loc_6BA658: FStAdFunc var_310
  loc_6BA65B: FLdPrThis
  loc_6BA65C: VCallAd Control_ID_FechaInicial
  loc_6BA65F: FStAdFunc var_314
  loc_6BA662: FLdPrThis
  loc_6BA663: VCallAd Control_ID_HoraInicial
  loc_6BA666: FStAdFunc var_A0
  loc_6BA669: FLdPr var_A0
  loc_6BA66C: LateIdLdVar var_228 DispID_22 0
  loc_6BA673: PopAd
  loc_6BA675: FLdPrThis
  loc_6BA676: VCallAd Control_ID_HoraInicial
  loc_6BA679: FStAdFunc var_318
  loc_6BA67C: FLdPrThis
  loc_6BA67D: VCallAd Control_ID_HoraInicial
  loc_6BA680: FStAdFunc var_31C
  loc_6BA683: LitVarI2 var_F4, 4
  loc_6BA688: LitI4 7
  loc_6BA68D: FLdZeroAd var_30C
  loc_6BA690: CVarAd
  loc_6BA694: FLdRfVar var_114
  loc_6BA697: ImpAdCallFPR4  = Mid(, , )
  loc_6BA69C: FLdRfVar var_114
  loc_6BA69F: LitVarI2 var_154, 2
  loc_6BA6A4: LitI4 4
  loc_6BA6A9: FLdZeroAd var_310
  loc_6BA6AC: CVarAd
  loc_6BA6B0: FLdRfVar var_174
  loc_6BA6B3: ImpAdCallFPR4  = Mid(, , )
  loc_6BA6B8: FLdRfVar var_174
  loc_6BA6BB: ConcatVar var_194
  loc_6BA6BF: LitVarI2 var_1D4, 2
  loc_6BA6C4: LitI4 1
  loc_6BA6C9: FLdZeroAd var_314
  loc_6BA6CC: CVarAd
  loc_6BA6D0: FLdRfVar var_1F4
  loc_6BA6D3: ImpAdCallFPR4  = Mid(, , )
  loc_6BA6D8: FLdRfVar var_1F4
  loc_6BA6DB: ConcatVar var_208
  loc_6BA6DF: LitVarI2 var_268, 2
  loc_6BA6E4: LitI4 1
  loc_6BA6E9: FLdRfVar var_228
  loc_6BA6EC: CStrVarTmp
  loc_6BA6ED: CVarStr var_248
  loc_6BA6F0: FLdRfVar var_278
  loc_6BA6F3: ImpAdCallFPR4  = Mid(, , )
  loc_6BA6F8: FLdRfVar var_278
  loc_6BA6FB: ConcatVar var_288
  loc_6BA6FF: LitVarI2 var_2A8, 2
  loc_6BA704: LitI4 4
  loc_6BA709: FLdZeroAd var_318
  loc_6BA70C: CVarAd
  loc_6BA710: FLdRfVar var_2B8
  loc_6BA713: ImpAdCallFPR4  = Mid(, , )
  loc_6BA718: FLdRfVar var_2B8
  loc_6BA71B: ConcatVar var_2C8
  loc_6BA71F: LitVarI2 var_2E8, 2
  loc_6BA724: LitI4 7
  loc_6BA729: FLdZeroAd var_31C
  loc_6BA72C: CVarAd
  loc_6BA730: FLdRfVar var_2F8
  loc_6BA733: ImpAdCallFPR4  = Mid(, , )
  loc_6BA738: FLdRfVar var_2F8
  loc_6BA73B: ConcatVar var_308
  loc_6BA73F: CStrVarTmp
  loc_6BA740: FStStr var_88
  loc_6BA743: FFreeAd var_A0 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_6BA752: FFreeVar var_D0 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1F4 = "": var_228 = "": var_248 = "": var_268 = "": var_208 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_2C8 = "": var_2F8 = ""
  loc_6BA785: FLdPrThis
  loc_6BA786: VCallAd Control_ID_FechaFinal
  loc_6BA789: FStAdFunc var_30C
  loc_6BA78C: FLdPrThis
  loc_6BA78D: VCallAd Control_ID_FechaFinal
  loc_6BA790: FStAdFunc var_310
  loc_6BA793: FLdPrThis
  loc_6BA794: VCallAd Control_ID_FechaFinal
  loc_6BA797: FStAdFunc var_314
  loc_6BA79A: FLdPrThis
  loc_6BA79B: VCallAd Control_ID_HoraFinal
  loc_6BA79E: FStAdFunc var_A0
  loc_6BA7A1: FLdPr var_A0
  loc_6BA7A4: LateIdLdVar var_228 DispID_22 0
  loc_6BA7AB: PopAd
  loc_6BA7AD: FLdPrThis
  loc_6BA7AE: VCallAd Control_ID_HoraFinal
  loc_6BA7B1: FStAdFunc var_318
  loc_6BA7B4: FLdPrThis
  loc_6BA7B5: VCallAd Control_ID_HoraFinal
  loc_6BA7B8: FStAdFunc var_31C
  loc_6BA7BB: LitVarI2 var_F4, 4
  loc_6BA7C0: LitI4 7
  loc_6BA7C5: FLdZeroAd var_30C
  loc_6BA7C8: CVarAd
  loc_6BA7CC: FLdRfVar var_114
  loc_6BA7CF: ImpAdCallFPR4  = Mid(, , )
  loc_6BA7D4: FLdRfVar var_114
  loc_6BA7D7: LitVarI2 var_154, 2
  loc_6BA7DC: LitI4 4
  loc_6BA7E1: FLdZeroAd var_310
  loc_6BA7E4: CVarAd
  loc_6BA7E8: FLdRfVar var_174
  loc_6BA7EB: ImpAdCallFPR4  = Mid(, , )
  loc_6BA7F0: FLdRfVar var_174
  loc_6BA7F3: ConcatVar var_194
  loc_6BA7F7: LitVarI2 var_1D4, 2
  loc_6BA7FC: LitI4 1
  loc_6BA801: FLdZeroAd var_314
  loc_6BA804: CVarAd
  loc_6BA808: FLdRfVar var_1F4
  loc_6BA80B: ImpAdCallFPR4  = Mid(, , )
  loc_6BA810: FLdRfVar var_1F4
  loc_6BA813: ConcatVar var_208
  loc_6BA817: LitVarI2 var_268, 2
  loc_6BA81C: LitI4 1
  loc_6BA821: FLdRfVar var_228
  loc_6BA824: CStrVarTmp
  loc_6BA825: CVarStr var_248
  loc_6BA828: FLdRfVar var_278
  loc_6BA82B: ImpAdCallFPR4  = Mid(, , )
  loc_6BA830: FLdRfVar var_278
  loc_6BA833: ConcatVar var_288
  loc_6BA837: LitVarI2 var_2A8, 2
  loc_6BA83C: LitI4 4
  loc_6BA841: FLdZeroAd var_318
  loc_6BA844: CVarAd
  loc_6BA848: FLdRfVar var_2B8
  loc_6BA84B: ImpAdCallFPR4  = Mid(, , )
  loc_6BA850: FLdRfVar var_2B8
  loc_6BA853: ConcatVar var_2C8
  loc_6BA857: LitVarI2 var_2E8, 2
  loc_6BA85C: LitI4 7
  loc_6BA861: FLdZeroAd var_31C
  loc_6BA864: CVarAd
  loc_6BA868: FLdRfVar var_2F8
  loc_6BA86B: ImpAdCallFPR4  = Mid(, , )
  loc_6BA870: FLdRfVar var_2F8
  loc_6BA873: ConcatVar var_308
  loc_6BA877: CStrVarTmp
  loc_6BA878: FStStr var_8C
  loc_6BA87B: FFreeAd var_A0 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = ""
  loc_6BA88A: FFreeVar var_D0 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1F4 = "": var_228 = "": var_248 = "": var_268 = "": var_208 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_2C8 = "": var_2F8 = ""
  loc_6BA8BD: ILdRf var_88
  loc_6BA8C0: ILdRf var_8C
  loc_6BA8C3: ConcatStr
  loc_6BA8C4: FStStrNoPop var_AC
  loc_6BA8C7: LitStr "0"
  loc_6BA8CA: ConcatStr
  loc_6BA8CB: FStStrNoPop var_1F8
  loc_6BA8CE: LitStr "1"
  loc_6BA8D1: ConcatStr
  loc_6BA8D2: FStStr var_94
  loc_6BA8D5: FFreeStr var_AC = ""
  loc_6BA8DC: FLdRfVar var_A2
  loc_6BA8DF: FLdRfVar var_9C
  loc_6BA8E2: ILdRf var_94
  loc_6BA8E5: FLdRfVar var_A0
  loc_6BA8E8: ImpAdLdRf MemVar_74C760
  loc_6BA8EB: NewIfNullPr Formx
  loc_6BA8EE: from_stack_1v = Formx.global_4589716Get()
  loc_6BA8F3: FLdPr var_A0
  loc_6BA8F6: Formx.Appearance = from_stack_1
  loc_6BA8FB: FLdI2 var_A2
  loc_6BA8FE: NotI4
  loc_6BA8FF: FFree1Ad var_A0
  loc_6BA902: BranchF loc_6BA931
  loc_6BA905: FLdRfVar var_D0
  loc_6BA908: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BA90D: FLdRfVar var_D0
  loc_6BA910: CBoolVarNull
  loc_6BA912: FFree1Var var_D0 = ""
  loc_6BA915: BranchF loc_6BA92E
  loc_6BA918: ILdRf Me
  loc_6BA91B: FStAdNoPop
  loc_6BA91F: ImpAdLdRf MemVar_7520D4
  loc_6BA922: NewIfNullPr Global
  loc_6BA925: Global.Unload from_stack_1
  loc_6BA92A: FFree1Ad var_A0
  loc_6BA92D: ExitProcHresult
  loc_6BA92E: Branch loc_6BA8DC
  loc_6BA931: ILdRf var_9C
  loc_6BA934: LitI4 0
  loc_6BA939: EqI4
  loc_6BA93A: BranchF loc_6BA9BB
  loc_6BA93D: FLdRfVar var_1F8
  loc_6BA940: LitVar_Missing var_1F4
  loc_6BA943: LitVar_Missing var_1D4
  loc_6BA946: LitVar_Missing var_1B4
  loc_6BA949: LitVar_Missing var_194
  loc_6BA94C: LitVar_Missing var_174
  loc_6BA94F: LitVar_Missing var_154
  loc_6BA952: LitVar_Missing var_134
  loc_6BA955: LitVar_Missing var_114
  loc_6BA958: LitVar_Missing var_F4
  loc_6BA95B: LitVar_Missing var_D0
  loc_6BA95E: LitStr "No existen datos a reportar."
  loc_6BA961: FStStrCopy var_AC
  loc_6BA964: FLdRfVar var_AC
  loc_6BA967: LitI4 &H10
  loc_6BA96C: PopTmpLdAdStr var_D4
  loc_6BA96F: LitI2_Byte &H4C
  loc_6BA971: PopTmpLdAd2 var_A2
  loc_6BA974: ImpAdLdRf MemVar_74C7D0
  loc_6BA977: NewIfNullPr clsMsg
  loc_6BA97A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BA97F: LitVar_Missing var_268
  loc_6BA982: LitVar_Missing var_248
  loc_6BA985: LitVar_Missing var_228
  loc_6BA988: LitI4 &H40
  loc_6BA98D: FLdZeroAd var_1F8
  loc_6BA990: CVarStr var_208
  loc_6BA993: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BA998: FFree1Str var_AC
  loc_6BA99B: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6BA9BA: ExitProcHresult
  loc_6BA9BB: ILdRf var_9C
  loc_6BA9BE: LitI4 &HEA60
  loc_6BA9C3: GtI4
  loc_6BA9C4: BranchF loc_6BAB21
  loc_6BA9C7: FLdRfVar var_1F8
  loc_6BA9CA: LitVar_Missing var_1F4
  loc_6BA9CD: LitVar_Missing var_1D4
  loc_6BA9D0: LitVar_Missing var_1B4
  loc_6BA9D3: LitVar_Missing var_194
  loc_6BA9D6: LitVar_Missing var_174
  loc_6BA9D9: LitVar_Missing var_154
  loc_6BA9DC: LitVar_Missing var_134
  loc_6BA9DF: LitVar_Missing var_114
  loc_6BA9E2: LitVar_Missing var_F4
  loc_6BA9E5: LitVar_Missing var_D0
  loc_6BA9E8: LitStr "El período seleccionado abarca demasiados despachos."
  loc_6BA9EB: FStStrCopy var_AC
  loc_6BA9EE: FLdRfVar var_AC
  loc_6BA9F1: LitI4 &H11
  loc_6BA9F6: PopTmpLdAdStr var_D4
  loc_6BA9F9: LitI2_Byte &H4C
  loc_6BA9FB: PopTmpLdAd2 var_A2
  loc_6BA9FE: ImpAdLdRf MemVar_74C7D0
  loc_6BAA01: NewIfNullPr clsMsg
  loc_6BAA04: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BAA09: LitI4 &HD
  loc_6BAA0E: ImpAdCallI2 Chr$()
  loc_6BAA13: FStStr var_514
  loc_6BAA16: FLdRfVar var_39C
  loc_6BAA19: LitVar_Missing var_2C8
  loc_6BAA1C: LitVar_Missing var_2B8
  loc_6BAA1F: LitVar_Missing var_2A8
  loc_6BAA22: LitVar_Missing var_298
  loc_6BAA25: LitVar_Missing var_288
  loc_6BAA28: LitVar_Missing var_278
  loc_6BAA2B: LitVar_Missing var_268
  loc_6BAA2E: LitVar_Missing var_248
  loc_6BAA31: LitVar_Missing var_228
  loc_6BAA34: LitVar_Missing var_208
  loc_6BAA37: LitStr "Por favor reduzca el rango."
  loc_6BAA3A: FStStrCopy var_328
  loc_6BAA3D: FLdRfVar var_328
  loc_6BAA40: LitI4 &H12
  loc_6BAA45: PopTmpLdAdStr var_324
  loc_6BAA48: LitI2_Byte &H4C
  loc_6BAA4A: PopTmpLdAd2 var_BE
  loc_6BAA4D: ImpAdLdRf MemVar_74C7D0
  loc_6BAA50: NewIfNullPr clsMsg
  loc_6BAA53: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BAA58: FLdRfVar var_4B0
  loc_6BAA5B: LitVar_Missing var_4AC
  loc_6BAA5E: LitVar_Missing var_48C
  loc_6BAA61: LitVar_Missing var_46C
  loc_6BAA64: LitVar_Missing var_44C
  loc_6BAA67: LitVar_Missing var_42C
  loc_6BAA6A: LitVar_Missing var_40C
  loc_6BAA6D: LitVar_Missing var_308
  loc_6BAA70: LitVar_Missing var_2F8
  loc_6BAA73: LitVar_Missing var_2E8
  loc_6BAA76: LitVar_Missing var_2D8
  loc_6BAA79: LitStr "Despachos Anteriores"
  loc_6BAA7C: FStStrCopy var_3AC
  loc_6BAA7F: FLdRfVar var_3AC
  loc_6BAA82: LitI4 &H13
  loc_6BAA87: PopTmpLdAdStr var_3A8
  loc_6BAA8A: LitI2_Byte &H4C
  loc_6BAA8C: PopTmpLdAd2 var_3A2
  loc_6BAA8F: ImpAdLdRf MemVar_74C7D0
  loc_6BAA92: NewIfNullPr clsMsg
  loc_6BAA95: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BAA9A: LitVar_Missing var_510
  loc_6BAA9D: LitVar_Missing var_4F0
  loc_6BAAA0: FLdZeroAd var_4B0
  loc_6BAAA3: CVarStr var_4D0
  loc_6BAAA6: LitI4 &H40
  loc_6BAAAB: ILdRf var_1F8
  loc_6BAAAE: FLdZeroAd var_514
  loc_6BAAB1: FStStrNoPop var_320
  loc_6BAAB4: ConcatStr
  loc_6BAAB5: FStStrNoPop var_3A0
  loc_6BAAB8: ILdRf var_39C
  loc_6BAABB: ConcatStr
  loc_6BAABC: CVarStr var_4C0
  loc_6BAABF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BAAC4: FFreeStr var_AC = "": var_1F8 = "": var_320 = "": var_328 = "": var_3A0 = "": var_39C = "": var_3AC = ""
  loc_6BAAD7: FFreeVar var_4C0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_40C = "": var_42C = "": var_44C = "": var_46C = "": var_48C = ""
  loc_6BAB1E: Branch loc_6BAC10
  loc_6BAB21: FLdRfVar var_A2
  loc_6BAB24: FLdRfVar var_90
  loc_6BAB27: FLdRfVar var_A0
  loc_6BAB2A: ImpAdLdRf MemVar_74C760
  loc_6BAB2D: NewIfNullPr Formx
  loc_6BAB30: from_stack_1v = Formx.global_4589716Get()
  loc_6BAB35: FLdPr var_A0
  loc_6BAB38:  = Formx.WhatsThisButton
  loc_6BAB3D: FLdI2 var_A2
  loc_6BAB40: NotI4
  loc_6BAB41: FFree1Ad var_A0
  loc_6BAB44: BranchF loc_6BAB73
  loc_6BAB47: FLdRfVar var_D0
  loc_6BAB4A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BAB4F: FLdRfVar var_D0
  loc_6BAB52: CBoolVarNull
  loc_6BAB54: FFree1Var var_D0 = ""
  loc_6BAB57: BranchF loc_6BAB70
  loc_6BAB5A: ILdRf Me
  loc_6BAB5D: FStAdNoPop
  loc_6BAB61: ImpAdLdRf MemVar_7520D4
  loc_6BAB64: NewIfNullPr Global
  loc_6BAB67: Global.Unload from_stack_1
  loc_6BAB6C: FFree1Ad var_A0
  loc_6BAB6F: ExitProcHresult
  loc_6BAB70: Branch loc_6BAB21
  loc_6BAB73: ILdRf var_90
  loc_6BAB76: FnLenStr
  loc_6BAB77: LitI4 &HA
  loc_6BAB7C: GtI4
  loc_6BAB7D: BranchF loc_6BAB93
  loc_6BAB80: ILdRf var_90
  loc_6BAB83: from_stack_2v = Proc_127_11_6D2B7C(from_stack_1v)
  loc_6BAB88: ILdRf var_90
  loc_6BAB8B: from_stack_2v = Proc_127_13_6F6F20(from_stack_1v)
  loc_6BAB90: Branch loc_6BAC10
  loc_6BAB93: FLdRfVar var_1F8
  loc_6BAB96: LitVar_Missing var_1F4
  loc_6BAB99: LitVar_Missing var_1D4
  loc_6BAB9C: LitVar_Missing var_1B4
  loc_6BAB9F: LitVar_Missing var_194
  loc_6BABA2: LitVar_Missing var_174
  loc_6BABA5: LitVar_Missing var_154
  loc_6BABA8: LitVar_Missing var_134
  loc_6BABAB: LitVar_Missing var_114
  loc_6BABAE: LitVar_Missing var_F4
  loc_6BABB1: LitVar_Missing var_D0
  loc_6BABB4: LitStr "Hubo un error inesperado del servicio. Por favor vuelva a intentar la operación."
  loc_6BABB7: FStStrCopy var_AC
  loc_6BABBA: FLdRfVar var_AC
  loc_6BABBD: LitI4 &H14
  loc_6BABC2: PopTmpLdAdStr var_D4
  loc_6BABC5: LitI2_Byte &H4C
  loc_6BABC7: PopTmpLdAd2 var_A2
  loc_6BABCA: ImpAdLdRf MemVar_74C7D0
  loc_6BABCD: NewIfNullPr clsMsg
  loc_6BABD0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6BABD5: LitVar_Missing var_268
  loc_6BABD8: LitVar_Missing var_248
  loc_6BABDB: LitVar_Missing var_228
  loc_6BABDE: LitI4 &H40
  loc_6BABE3: FLdZeroAd var_1F8
  loc_6BABE6: CVarStr var_208
  loc_6BABE9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6BABEE: FFree1Str var_AC
  loc_6BABF1: FFreeVar var_D0 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_6BAC10: ExitProcHresult
  loc_6BAC11: LitStr "????????"
End Sub

Private Sub chkUltimo_Click() '5DAEA0
  'Data Table: 438174
  loc_5DAE64: FLdRfVar var_8A
  loc_5DAE67: FLdPrThis
  loc_5DAE68: VCallAd Control_ID_chkUltimo
  loc_5DAE6B: FStAdFunc var_88
  loc_5DAE6E: FLdPr var_88
  loc_5DAE71:  = Me.Value
  loc_5DAE76: FLdI2 var_8A
  loc_5DAE79: CI4UI1
  loc_5DAE7A: LitI4 1
  loc_5DAE7F: EqI4
  loc_5DAE80: FFree1Ad var_88
  loc_5DAE83: BranchF loc_5DAE93
  loc_5DAE86: LitI2_Byte 0
  loc_5DAE88: PopTmpLdAd2 var_8A
  loc_5DAE8B: from_stack_2v = Proc_127_15_60128C(from_stack_1v)
  loc_5DAE90: Branch loc_5DAE9D
  loc_5DAE93: LitI2_Byte &HFF
  loc_5DAE95: PopTmpLdAd2 var_8A
  loc_5DAE98: from_stack_2v = Proc_127_15_60128C(from_stack_1v)
  loc_5DAE9D: ExitProcHresult
End Sub

Private Sub cmdTurnoDiaMes_Click(Index As Integer) '63FA6C
  'Data Table: 438174
  loc_63F84C: LitI4 0
  loc_63F851: LitI4 2
  loc_63F856: FLdRfVar var_8C
  loc_63F859: Redim
  loc_63F863: LitVarStr var_9C, "T"
  loc_63F868: LitI4 0
  loc_63F86D: ILdRf var_8C
  loc_63F870: Ary1StVarCopy
  loc_63F872: LitVarStr var_AC, "D"
  loc_63F877: LitI4 1
  loc_63F87C: ILdRf var_8C
  loc_63F87F: Ary1StVarCopy
  loc_63F881: LitVarStr var_BC, "M"
  loc_63F886: LitI4 2
  loc_63F88B: ILdRf var_8C
  loc_63F88E: Ary1StVarCopy
  loc_63F890: FLdRfVar var_8C
  loc_63F893: ILdI2 Index
  loc_63F896: LitI2_Byte 1
  loc_63F898: AddI2
  loc_63F899: CR8I2
  loc_63F89A: PopFPR4
  loc_63F89B: FLdRfVar var_CC
  loc_63F89E: ImpAdCallFPR4  = Choose(, )
  loc_63F8A3: FLdRfVar var_8C
  loc_63F8A6: Erase
  loc_63F8A7: FLdRfVar var_CC
  loc_63F8AA: CStrVarVal var_D0
  loc_63F8AE: ImpAdLdRf MemVar_74DC6C
  loc_63F8B1: NewIfNullPr Reportes_Anteriores
  loc_63F8B4: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_63F8B9: FFree1Str var_D0
  loc_63F8BC: FFree1Var var_CC = ""
  loc_63F8BF: LitI2_Byte &HFF
  loc_63F8C1: ImpAdLdRf MemVar_74DC6C
  loc_63F8C4: NewIfNullPr Reportes_Anteriores
  loc_63F8C7: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_63F8CC: LitVar_Missing var_AC
  loc_63F8CF: PopAdLdVar
  loc_63F8D0: LitVarI4
  loc_63F8D8: PopAdLdVar
  loc_63F8D9: ImpAdLdRf MemVar_74DC6C
  loc_63F8DC: NewIfNullPr Reportes_Anteriores
  loc_63F8DF: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_63F8E4: FLdRfVar var_D0
  loc_63F8E7: ImpAdLdRf MemVar_74DC6C
  loc_63F8EA: NewIfNullPr Reportes_Anteriores
  loc_63F8ED: from_stack_1v = Reportes_Anteriores.RangoFechaGet()
  loc_63F8F2: FLdZeroAd var_D0
  loc_63F8F5: FStStr var_88
  loc_63F8F8: ILdRf var_88
  loc_63F8FB: LitStr vbNullString
  loc_63F8FE: NeStr
  loc_63F900: BranchF loc_63FA6A
  loc_63F903: LitVarI2 var_CC, 2
  loc_63F908: LitI4 9
  loc_63F90D: ILdRf var_88
  loc_63F910: ImpAdCallI2 Mid$(, , )
  loc_63F915: FStStrNoPop var_D0
  loc_63F918: LitStr "-"
  loc_63F91B: ConcatStr
  loc_63F91C: FStStrNoPop var_E4
  loc_63F91F: LitVarI2 var_E0, 2
  loc_63F924: LitI4 6
  loc_63F929: ILdRf var_88
  loc_63F92C: ImpAdCallI2 Mid$(, , )
  loc_63F931: FStStrNoPop var_E8
  loc_63F934: ConcatStr
  loc_63F935: FStStrNoPop var_EC
  loc_63F938: LitStr "-"
  loc_63F93B: ConcatStr
  loc_63F93C: FStStrNoPop var_100
  loc_63F93F: LitVarI2 var_FC, 4
  loc_63F944: LitI4 1
  loc_63F949: ILdRf var_88
  loc_63F94C: ImpAdCallI2 Mid$(, , )
  loc_63F951: FStStrNoPop var_104
  loc_63F954: ConcatStr
  loc_63F955: CVarStr var_114
  loc_63F958: PopAdLdVar
  loc_63F959: FLdPrThis
  loc_63F95A: VCallAd Control_ID_
  loc_63F95D: FStAdFunc var_118
  loc_63F960: FLdPr var_118
  loc_63F963: LateIdSt
  loc_63F968: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_63F977: FFree1Ad var_118
  loc_63F97A: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_63F985: LitVarI2 var_CC, 8
  loc_63F98A: LitI4 &HB
  loc_63F98F: ILdRf var_88
  loc_63F992: ImpAdCallI2 Mid$(, , )
  loc_63F997: CVarStr var_E0
  loc_63F99A: PopAdLdVar
  loc_63F99B: FLdPrThis
  loc_63F99C: VCallAd Control_ID_
  loc_63F99F: FStAdFunc var_118
  loc_63F9A2: FLdPr var_118
  loc_63F9A5: LateIdSt
  loc_63F9AA: FFree1Ad var_118
  loc_63F9AD: FFreeVar var_CC = ""
  loc_63F9B4: LitVarI2 var_CC, 2
  loc_63F9B9: LitI4 &H1B
  loc_63F9BE: ILdRf var_88
  loc_63F9C1: ImpAdCallI2 Mid$(, , )
  loc_63F9C6: FStStrNoPop var_D0
  loc_63F9C9: LitStr "-"
  loc_63F9CC: ConcatStr
  loc_63F9CD: FStStrNoPop var_E4
  loc_63F9D0: LitVarI2 var_E0, 2
  loc_63F9D5: LitI4 &H18
  loc_63F9DA: ILdRf var_88
  loc_63F9DD: ImpAdCallI2 Mid$(, , )
  loc_63F9E2: FStStrNoPop var_E8
  loc_63F9E5: ConcatStr
  loc_63F9E6: FStStrNoPop var_EC
  loc_63F9E9: LitStr "-"
  loc_63F9EC: ConcatStr
  loc_63F9ED: FStStrNoPop var_100
  loc_63F9F0: LitVarI2 var_FC, 4
  loc_63F9F5: LitI4 &H13
  loc_63F9FA: ILdRf var_88
  loc_63F9FD: ImpAdCallI2 Mid$(, , )
  loc_63FA02: FStStrNoPop var_104
  loc_63FA05: ConcatStr
  loc_63FA06: CVarStr var_114
  loc_63FA09: PopAdLdVar
  loc_63FA0A: FLdPrThis
  loc_63FA0B: VCallAd Control_ID_
  loc_63FA0E: FStAdFunc var_118
  loc_63FA11: FLdPr var_118
  loc_63FA14: LateIdSt
  loc_63FA19: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_63FA28: FFree1Ad var_118
  loc_63FA2B: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_63FA36: LitVarI2 var_CC, 8
  loc_63FA3B: LitI4 &H1D
  loc_63FA40: ILdRf var_88
  loc_63FA43: ImpAdCallI2 Mid$(, , )
  loc_63FA48: CVarStr var_E0
  loc_63FA4B: PopAdLdVar
  loc_63FA4C: FLdPrThis
  loc_63FA4D: VCallAd Control_ID_
  loc_63FA50: FStAdFunc var_118
  loc_63FA53: FLdPr var_118
  loc_63FA56: LateIdSt
  loc_63FA5B: FFree1Ad var_118
  loc_63FA5E: FFreeVar var_CC = ""
  loc_63FA65: Call cmdConsultar_UnknownEvent_8()
  loc_63FA6A: ExitProcHresult
End Sub

Private Sub sscSalir_UnknownEvent_8 '5D0BD4
  'Data Table: 438174
  loc_5D0BBC: ILdRf Me
  loc_5D0BBF: FStAdNoPop
  loc_5D0BC3: ImpAdLdRf MemVar_7520D4
  loc_5D0BC6: NewIfNullPr Global
  loc_5D0BC9: Global.Unload from_stack_1
  loc_5D0BCE: FFree1Ad var_88
  loc_5D0BD1: ExitProcHresult
  loc_5D0BD2: VCallAd Control_ID_
End Sub

Private Sub FechaFinal_UnknownEvent_0 '5E2688
  'Data Table: 438174
  loc_5E2634: LitVarI4
  loc_5E263C: PopAdLdVar
  loc_5E263D: FLdPrThis
  loc_5E263E: VCallAd Control_ID_FechaFinal
  loc_5E2641: FStAdFunc var_98
  loc_5E2644: FLdPr var_98
  loc_5E2647: LateIdSt
  loc_5E264C: FFree1Ad var_98
  loc_5E264F: FLdPrThis
  loc_5E2650: VCallAd Control_ID_FechaFinal
  loc_5E2653: FStAdFunc var_98
  loc_5E2656: FLdPr var_98
  loc_5E2659: LateIdLdVar var_A8 DispID_22 0
  loc_5E2660: CStrVarTmp
  loc_5E2661: FStStrNoPop var_AC
  loc_5E2664: FnLenStr
  loc_5E2665: CVarI4
  loc_5E2669: PopAdLdVar
  loc_5E266A: FLdPrThis
  loc_5E266B: VCallAd Control_ID_FechaFinal
  loc_5E266E: FStAdFunc var_B0
  loc_5E2671: FLdPr var_B0
  loc_5E2674: LateIdSt
  loc_5E2679: FFree1Str var_AC
  loc_5E267C: FFreeAd var_98 = ""
  loc_5E2683: FFree1Var var_A8 = ""
  loc_5E2686: ExitProcHresult
End Sub

Private Sub FechaFinal_UnknownEvent_1 '5DD300
  'Data Table: 438174
  loc_5DD2BC: FLdPrThis
  loc_5DD2BD: VCallAd Control_ID_FechaFinal
  loc_5DD2C0: FStAdFunc var_88
  loc_5DD2C3: FLdPr var_88
  loc_5DD2C6: LateIdLdVar var_98 DispID_22 0
  loc_5DD2CD: PopAd
  loc_5DD2CF: LitI2_Byte &HFF
  loc_5DD2D1: FLdRfVar var_98
  loc_5DD2D4: CStrVarTmp
  loc_5DD2D5: FStStrNoPop var_9C
  loc_5DD2D8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DD2DD: NotI4
  loc_5DD2DE: FFree1Str var_9C
  loc_5DD2E1: FFree1Ad var_88
  loc_5DD2E4: FFree1Var var_98 = ""
  loc_5DD2E7: BranchF loc_5DD2FF
  loc_5DD2EA: FLdPrThis
  loc_5DD2EB: VCallAd Control_ID_FechaFinal
  loc_5DD2EE: FStAdFunc var_88
  loc_5DD2F1: FLdPr var_88
  loc_5DD2F4: LateIdCall
  loc_5DD2FC: FFree1Ad var_88
  loc_5DD2FF: ExitProcHresult
End Sub

Private Sub FechaInicial_UnknownEvent_0 '5E296C
  'Data Table: 438174
  loc_5E2918: LitVarI4
  loc_5E2920: PopAdLdVar
  loc_5E2921: FLdPrThis
  loc_5E2922: VCallAd Control_ID_FechaInicial
  loc_5E2925: FStAdFunc var_98
  loc_5E2928: FLdPr var_98
  loc_5E292B: LateIdSt
  loc_5E2930: FFree1Ad var_98
  loc_5E2933: FLdPrThis
  loc_5E2934: VCallAd Control_ID_FechaInicial
  loc_5E2937: FStAdFunc var_98
  loc_5E293A: FLdPr var_98
  loc_5E293D: LateIdLdVar var_A8 DispID_22 0
  loc_5E2944: CStrVarTmp
  loc_5E2945: FStStrNoPop var_AC
  loc_5E2948: FnLenStr
  loc_5E2949: CVarI4
  loc_5E294D: PopAdLdVar
  loc_5E294E: FLdPrThis
  loc_5E294F: VCallAd Control_ID_FechaInicial
  loc_5E2952: FStAdFunc var_B0
  loc_5E2955: FLdPr var_B0
  loc_5E2958: LateIdSt
  loc_5E295D: FFree1Str var_AC
  loc_5E2960: FFreeAd var_98 = ""
  loc_5E2967: FFree1Var var_A8 = ""
  loc_5E296A: ExitProcHresult
End Sub

Private Sub FechaInicial_UnknownEvent_1 '5DD200
  'Data Table: 438174
  loc_5DD1BC: FLdPrThis
  loc_5DD1BD: VCallAd Control_ID_FechaInicial
  loc_5DD1C0: FStAdFunc var_88
  loc_5DD1C3: FLdPr var_88
  loc_5DD1C6: LateIdLdVar var_98 DispID_22 0
  loc_5DD1CD: PopAd
  loc_5DD1CF: LitI2_Byte &HFF
  loc_5DD1D1: FLdRfVar var_98
  loc_5DD1D4: CStrVarTmp
  loc_5DD1D5: FStStrNoPop var_9C
  loc_5DD1D8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DD1DD: NotI4
  loc_5DD1DE: FFree1Str var_9C
  loc_5DD1E1: FFree1Ad var_88
  loc_5DD1E4: FFree1Var var_98 = ""
  loc_5DD1E7: BranchF loc_5DD1FF
  loc_5DD1EA: FLdPrThis
  loc_5DD1EB: VCallAd Control_ID_FechaInicial
  loc_5DD1EE: FStAdFunc var_88
  loc_5DD1F1: FLdPr var_88
  loc_5DD1F4: LateIdCall
  loc_5DD1FC: FFree1Ad var_88
  loc_5DD1FF: ExitProcHresult
End Sub

Private Sub Form_Load() '6D168C
  'Data Table: 438174
  loc_6D0CA4: ILdRf Me
  loc_6D0CA7: CastAd
  loc_6D0CAA: FStAdFunc var_88
  loc_6D0CAD: FLdRfVar var_88
  loc_6D0CB0: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6D0CB5: FFree1Ad var_88
  loc_6D0CB8: FLdRfVar var_1D8
  loc_6D0CBB: LitVar_Missing var_1D4
  loc_6D0CBE: LitVar_Missing var_1B4
  loc_6D0CC1: LitVar_Missing var_194
  loc_6D0CC4: LitVar_Missing var_174
  loc_6D0CC7: LitVar_Missing var_154
  loc_6D0CCA: LitVar_Missing var_134
  loc_6D0CCD: LitVar_Missing var_114
  loc_6D0CD0: LitVar_Missing var_F4
  loc_6D0CD3: LitVar_Missing var_D4
  loc_6D0CD6: LitVar_Missing var_B4
  loc_6D0CD9: LitStr "Totales de Playeros"
  loc_6D0CDC: FStStrCopy var_94
  loc_6D0CDF: FLdRfVar var_94
  loc_6D0CE2: LitI4 1
  loc_6D0CE7: PopTmpLdAdStr var_90
  loc_6D0CEA: LitI2_Byte &H4C
  loc_6D0CEC: PopTmpLdAd2 var_8A
  loc_6D0CEF: ImpAdLdRf MemVar_74C7D0
  loc_6D0CF2: NewIfNullPr clsMsg
  loc_6D0CF5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0CFA: ILdRf var_1D8
  loc_6D0CFD: FLdPrThis
  loc_6D0CFE: VCallAd Control_ID_Label3
  loc_6D0D01: FStAdFunc var_88
  loc_6D0D04: FLdPr var_88
  loc_6D0D07: Me.Caption = from_stack_1
  loc_6D0D0C: FFreeStr var_94 = ""
  loc_6D0D13: FFree1Ad var_88
  loc_6D0D16: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0D2D: FLdRfVar var_1D8
  loc_6D0D30: LitVar_Missing var_1D4
  loc_6D0D33: LitVar_Missing var_1B4
  loc_6D0D36: LitVar_Missing var_194
  loc_6D0D39: LitVar_Missing var_174
  loc_6D0D3C: LitVar_Missing var_154
  loc_6D0D3F: LitVar_Missing var_134
  loc_6D0D42: LitVar_Missing var_114
  loc_6D0D45: LitVar_Missing var_F4
  loc_6D0D48: LitVar_Missing var_D4
  loc_6D0D4B: LitVar_Missing var_B4
  loc_6D0D4E: LitStr "Fecha"
  loc_6D0D51: FStStrCopy var_94
  loc_6D0D54: FLdRfVar var_94
  loc_6D0D57: LitI4 2
  loc_6D0D5C: PopTmpLdAdStr var_90
  loc_6D0D5F: LitI2_Byte &H4C
  loc_6D0D61: PopTmpLdAd2 var_8A
  loc_6D0D64: ImpAdLdRf MemVar_74C7D0
  loc_6D0D67: NewIfNullPr clsMsg
  loc_6D0D6A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0D6F: ILdRf var_1D8
  loc_6D0D72: FLdPrThis
  loc_6D0D73: VCallAd Control_ID_Label4
  loc_6D0D76: FStAdFunc var_88
  loc_6D0D79: FLdPr var_88
  loc_6D0D7C: Me.Caption = from_stack_1
  loc_6D0D81: FFreeStr var_94 = ""
  loc_6D0D88: FFree1Ad var_88
  loc_6D0D8B: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0DA2: FLdRfVar var_1D8
  loc_6D0DA5: LitVar_Missing var_1D4
  loc_6D0DA8: LitVar_Missing var_1B4
  loc_6D0DAB: LitVar_Missing var_194
  loc_6D0DAE: LitVar_Missing var_174
  loc_6D0DB1: LitVar_Missing var_154
  loc_6D0DB4: LitVar_Missing var_134
  loc_6D0DB7: LitVar_Missing var_114
  loc_6D0DBA: LitVar_Missing var_F4
  loc_6D0DBD: LitVar_Missing var_D4
  loc_6D0DC0: LitVar_Missing var_B4
  loc_6D0DC3: LitStr "Hora"
  loc_6D0DC6: FStStrCopy var_94
  loc_6D0DC9: FLdRfVar var_94
  loc_6D0DCC: LitI4 3
  loc_6D0DD1: PopTmpLdAdStr var_90
  loc_6D0DD4: LitI2_Byte &H4C
  loc_6D0DD6: PopTmpLdAd2 var_8A
  loc_6D0DD9: ImpAdLdRf MemVar_74C7D0
  loc_6D0DDC: NewIfNullPr clsMsg
  loc_6D0DDF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0DE4: ILdRf var_1D8
  loc_6D0DE7: FLdPrThis
  loc_6D0DE8: VCallAd Control_ID_Label5
  loc_6D0DEB: FStAdFunc var_88
  loc_6D0DEE: FLdPr var_88
  loc_6D0DF1: Me.Caption = from_stack_1
  loc_6D0DF6: FFreeStr var_94 = ""
  loc_6D0DFD: FFree1Ad var_88
  loc_6D0E00: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0E17: FLdRfVar var_1D8
  loc_6D0E1A: LitVar_Missing var_1D4
  loc_6D0E1D: LitVar_Missing var_1B4
  loc_6D0E20: LitVar_Missing var_194
  loc_6D0E23: LitVar_Missing var_174
  loc_6D0E26: LitVar_Missing var_154
  loc_6D0E29: LitVar_Missing var_134
  loc_6D0E2C: LitVar_Missing var_114
  loc_6D0E2F: LitVar_Missing var_F4
  loc_6D0E32: LitVar_Missing var_D4
  loc_6D0E35: LitVar_Missing var_B4
  loc_6D0E38: LitStr "Playero"
  loc_6D0E3B: FStStrCopy var_94
  loc_6D0E3E: FLdRfVar var_94
  loc_6D0E41: LitI4 4
  loc_6D0E46: PopTmpLdAdStr var_90
  loc_6D0E49: LitI2_Byte &H4C
  loc_6D0E4B: PopTmpLdAd2 var_8A
  loc_6D0E4E: ImpAdLdRf MemVar_74C7D0
  loc_6D0E51: NewIfNullPr clsMsg
  loc_6D0E54: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0E59: ILdRf var_1D8
  loc_6D0E5C: FLdPrThis
  loc_6D0E5D: VCallAd Control_ID_labelsurtidor2
  loc_6D0E60: FStAdFunc var_88
  loc_6D0E63: FLdPr var_88
  loc_6D0E66: Me.Caption = from_stack_1
  loc_6D0E6B: FFreeStr var_94 = ""
  loc_6D0E72: FFree1Ad var_88
  loc_6D0E75: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0E8C: FLdRfVar var_1D8
  loc_6D0E8F: LitVar_Missing var_1D4
  loc_6D0E92: LitVar_Missing var_1B4
  loc_6D0E95: LitVar_Missing var_194
  loc_6D0E98: LitVar_Missing var_174
  loc_6D0E9B: LitVar_Missing var_154
  loc_6D0E9E: LitVar_Missing var_134
  loc_6D0EA1: LitVar_Missing var_114
  loc_6D0EA4: LitVar_Missing var_F4
  loc_6D0EA7: LitVar_Missing var_D4
  loc_6D0EAA: LitVar_Missing var_B4
  loc_6D0EAD: LitStr "Monto"
  loc_6D0EB0: FStStrCopy var_94
  loc_6D0EB3: FLdRfVar var_94
  loc_6D0EB6: LitI4 5
  loc_6D0EBB: PopTmpLdAdStr var_90
  loc_6D0EBE: LitI2_Byte &H4C
  loc_6D0EC0: PopTmpLdAd2 var_8A
  loc_6D0EC3: ImpAdLdRf MemVar_74C7D0
  loc_6D0EC6: NewIfNullPr clsMsg
  loc_6D0EC9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0ECE: ILdRf var_1D8
  loc_6D0ED1: FLdRfVar var_1DC
  loc_6D0ED4: LitI2_Byte 0
  loc_6D0ED6: FLdPrThis
  loc_6D0ED7: VCallAd Control_ID_Label2
  loc_6D0EDA: FStAdFunc var_88
  loc_6D0EDD: FLdPr var_88
  loc_6D0EE0: Set from_stack_2 = Me(from_stack_1)
  loc_6D0EE5: FLdPr var_1DC
  loc_6D0EE8: Me.Caption = from_stack_1
  loc_6D0EED: FFreeStr var_94 = ""
  loc_6D0EF4: FFreeAd var_88 = ""
  loc_6D0EFB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0F12: FLdRfVar var_1D8
  loc_6D0F15: LitVar_Missing var_1D4
  loc_6D0F18: LitVar_Missing var_1B4
  loc_6D0F1B: LitVar_Missing var_194
  loc_6D0F1E: LitVar_Missing var_174
  loc_6D0F21: LitVar_Missing var_154
  loc_6D0F24: LitVar_Missing var_134
  loc_6D0F27: LitVar_Missing var_114
  loc_6D0F2A: LitVar_Missing var_F4
  loc_6D0F2D: LitVar_Missing var_D4
  loc_6D0F30: LitVar_Missing var_B4
  loc_6D0F33: LitStr "Desde :"
  loc_6D0F36: FStStrCopy var_94
  loc_6D0F39: FLdRfVar var_94
  loc_6D0F3C: LitI4 6
  loc_6D0F41: PopTmpLdAdStr var_90
  loc_6D0F44: LitI2_Byte &H4C
  loc_6D0F46: PopTmpLdAd2 var_8A
  loc_6D0F49: ImpAdLdRf MemVar_74C7D0
  loc_6D0F4C: NewIfNullPr clsMsg
  loc_6D0F4F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0F54: ILdRf var_1D8
  loc_6D0F57: FLdRfVar var_1DC
  loc_6D0F5A: LitI2_Byte 0
  loc_6D0F5C: FLdPrThis
  loc_6D0F5D: VCallAd Control_ID_Label1
  loc_6D0F60: FStAdFunc var_88
  loc_6D0F63: FLdPr var_88
  loc_6D0F66: Set from_stack_2 = Me(from_stack_1)
  loc_6D0F6B: FLdPr var_1DC
  loc_6D0F6E: Me.Caption = from_stack_1
  loc_6D0F73: FFreeStr var_94 = ""
  loc_6D0F7A: FFreeAd var_88 = ""
  loc_6D0F81: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D0F98: FLdRfVar var_1D8
  loc_6D0F9B: LitVar_Missing var_1D4
  loc_6D0F9E: LitVar_Missing var_1B4
  loc_6D0FA1: LitVar_Missing var_194
  loc_6D0FA4: LitVar_Missing var_174
  loc_6D0FA7: LitVar_Missing var_154
  loc_6D0FAA: LitVar_Missing var_134
  loc_6D0FAD: LitVar_Missing var_114
  loc_6D0FB0: LitVar_Missing var_F4
  loc_6D0FB3: LitVar_Missing var_D4
  loc_6D0FB6: LitVar_Missing var_B4
  loc_6D0FB9: LitStr "Hasta :"
  loc_6D0FBC: FStStrCopy var_94
  loc_6D0FBF: FLdRfVar var_94
  loc_6D0FC2: LitI4 7
  loc_6D0FC7: PopTmpLdAdStr var_90
  loc_6D0FCA: LitI2_Byte &H4C
  loc_6D0FCC: PopTmpLdAd2 var_8A
  loc_6D0FCF: ImpAdLdRf MemVar_74C7D0
  loc_6D0FD2: NewIfNullPr clsMsg
  loc_6D0FD5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D0FDA: ILdRf var_1D8
  loc_6D0FDD: FLdRfVar var_1DC
  loc_6D0FE0: LitI2_Byte 1
  loc_6D0FE2: FLdPrThis
  loc_6D0FE3: VCallAd Control_ID_Label1
  loc_6D0FE6: FStAdFunc var_88
  loc_6D0FE9: FLdPr var_88
  loc_6D0FEC: Set from_stack_2 = Me(from_stack_1)
  loc_6D0FF1: FLdPr var_1DC
  loc_6D0FF4: Me.Caption = from_stack_1
  loc_6D0FF9: FFreeStr var_94 = ""
  loc_6D1000: FFreeAd var_88 = ""
  loc_6D1007: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D101E: FLdRfVar var_1D8
  loc_6D1021: LitVar_Missing var_1D4
  loc_6D1024: LitVar_Missing var_1B4
  loc_6D1027: LitVar_Missing var_194
  loc_6D102A: LitVar_Missing var_174
  loc_6D102D: LitVar_Missing var_154
  loc_6D1030: LitVar_Missing var_134
  loc_6D1033: LitVar_Missing var_114
  loc_6D1036: LitVar_Missing var_F4
  loc_6D1039: LitVar_Missing var_D4
  loc_6D103C: LitVar_Missing var_B4
  loc_6D103F: LitStr "&Turno"
  loc_6D1042: FStStrCopy var_94
  loc_6D1045: FLdRfVar var_94
  loc_6D1048: LitI4 8
  loc_6D104D: PopTmpLdAdStr var_90
  loc_6D1050: LitI2_Byte &H4C
  loc_6D1052: PopTmpLdAd2 var_8A
  loc_6D1055: ImpAdLdRf MemVar_74C7D0
  loc_6D1058: NewIfNullPr clsMsg
  loc_6D105B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D1060: ILdRf var_1D8
  loc_6D1063: FLdRfVar var_1DC
  loc_6D1066: LitI2_Byte 0
  loc_6D1068: FLdPrThis
  loc_6D1069: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6D106C: FStAdFunc var_88
  loc_6D106F: FLdPr var_88
  loc_6D1072: Set from_stack_2 = Me(from_stack_1)
  loc_6D1077: FLdPr var_1DC
  loc_6D107A: Me.Caption = from_stack_1
  loc_6D107F: FFreeStr var_94 = ""
  loc_6D1086: FFreeAd var_88 = ""
  loc_6D108D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D10A4: FLdRfVar var_1D8
  loc_6D10A7: LitVar_Missing var_1D4
  loc_6D10AA: LitVar_Missing var_1B4
  loc_6D10AD: LitVar_Missing var_194
  loc_6D10B0: LitVar_Missing var_174
  loc_6D10B3: LitVar_Missing var_154
  loc_6D10B6: LitVar_Missing var_134
  loc_6D10B9: LitVar_Missing var_114
  loc_6D10BC: LitVar_Missing var_F4
  loc_6D10BF: LitVar_Missing var_D4
  loc_6D10C2: LitVar_Missing var_B4
  loc_6D10C5: LitStr "&Día"
  loc_6D10C8: FStStrCopy var_94
  loc_6D10CB: FLdRfVar var_94
  loc_6D10CE: LitI4 9
  loc_6D10D3: PopTmpLdAdStr var_90
  loc_6D10D6: LitI2_Byte &H4C
  loc_6D10D8: PopTmpLdAd2 var_8A
  loc_6D10DB: ImpAdLdRf MemVar_74C7D0
  loc_6D10DE: NewIfNullPr clsMsg
  loc_6D10E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D10E6: ILdRf var_1D8
  loc_6D10E9: FLdRfVar var_1DC
  loc_6D10EC: LitI2_Byte 1
  loc_6D10EE: FLdPrThis
  loc_6D10EF: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6D10F2: FStAdFunc var_88
  loc_6D10F5: FLdPr var_88
  loc_6D10F8: Set from_stack_2 = Me(from_stack_1)
  loc_6D10FD: FLdPr var_1DC
  loc_6D1100: Me.Caption = from_stack_1
  loc_6D1105: FFreeStr var_94 = ""
  loc_6D110C: FFreeAd var_88 = ""
  loc_6D1113: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D112A: FLdRfVar var_1D8
  loc_6D112D: LitVar_Missing var_1D4
  loc_6D1130: LitVar_Missing var_1B4
  loc_6D1133: LitVar_Missing var_194
  loc_6D1136: LitVar_Missing var_174
  loc_6D1139: LitVar_Missing var_154
  loc_6D113C: LitVar_Missing var_134
  loc_6D113F: LitVar_Missing var_114
  loc_6D1142: LitVar_Missing var_F4
  loc_6D1145: LitVar_Missing var_D4
  loc_6D1148: LitVar_Missing var_B4
  loc_6D114B: LitStr "Mes"
  loc_6D114E: FStStrCopy var_94
  loc_6D1151: FLdRfVar var_94
  loc_6D1154: LitI4 &HA
  loc_6D1159: PopTmpLdAdStr var_90
  loc_6D115C: LitI2_Byte &H4C
  loc_6D115E: PopTmpLdAd2 var_8A
  loc_6D1161: ImpAdLdRf MemVar_74C7D0
  loc_6D1164: NewIfNullPr clsMsg
  loc_6D1167: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D116C: ILdRf var_1D8
  loc_6D116F: FLdRfVar var_1DC
  loc_6D1172: LitI2_Byte 2
  loc_6D1174: FLdPrThis
  loc_6D1175: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6D1178: FStAdFunc var_88
  loc_6D117B: FLdPr var_88
  loc_6D117E: Set from_stack_2 = Me(from_stack_1)
  loc_6D1183: FLdPr var_1DC
  loc_6D1186: Me.Caption = from_stack_1
  loc_6D118B: FFreeStr var_94 = ""
  loc_6D1192: FFreeAd var_88 = ""
  loc_6D1199: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D11B0: FLdRfVar var_1D8
  loc_6D11B3: LitVar_Missing var_1D4
  loc_6D11B6: LitVar_Missing var_1B4
  loc_6D11B9: LitVar_Missing var_194
  loc_6D11BC: LitVar_Missing var_174
  loc_6D11BF: LitVar_Missing var_154
  loc_6D11C2: LitVar_Missing var_134
  loc_6D11C5: LitVar_Missing var_114
  loc_6D11C8: LitVar_Missing var_F4
  loc_6D11CB: LitVar_Missing var_D4
  loc_6D11CE: LitVar_Missing var_B4
  loc_6D11D1: LitStr "Ver solo último cierre"
  loc_6D11D4: FStStrCopy var_94
  loc_6D11D7: FLdRfVar var_94
  loc_6D11DA: LitI4 &HB
  loc_6D11DF: PopTmpLdAdStr var_90
  loc_6D11E2: LitI2_Byte &H4C
  loc_6D11E4: PopTmpLdAd2 var_8A
  loc_6D11E7: ImpAdLdRf MemVar_74C7D0
  loc_6D11EA: NewIfNullPr clsMsg
  loc_6D11ED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D11F2: ILdRf var_1D8
  loc_6D11F5: FLdPrThis
  loc_6D11F6: VCallAd Control_ID_chkUltimo
  loc_6D11F9: FStAdFunc var_88
  loc_6D11FC: FLdPr var_88
  loc_6D11FF: Me.Caption = from_stack_1
  loc_6D1204: FFreeStr var_94 = ""
  loc_6D120B: FFree1Ad var_88
  loc_6D120E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6D1225: FLdRfVar var_1D8
  loc_6D1228: LitVar_Missing var_1D4
  loc_6D122B: LitVar_Missing var_1B4
  loc_6D122E: LitVar_Missing var_194
  loc_6D1231: LitVar_Missing var_174
  loc_6D1234: LitVar_Missing var_154
  loc_6D1237: LitVar_Missing var_134
  loc_6D123A: LitVar_Missing var_114
  loc_6D123D: LitVar_Missing var_F4
  loc_6D1240: LitVar_Missing var_D4
  loc_6D1243: LitVar_Missing var_B4
  loc_6D1246: LitStr "&Consultar"
  loc_6D1249: FStStrCopy var_94
  loc_6D124C: FLdRfVar var_94
  loc_6D124F: LitI4 &HC
  loc_6D1254: PopTmpLdAdStr var_90
  loc_6D1257: LitI2_Byte &H4C
  loc_6D1259: PopTmpLdAd2 var_8A
  loc_6D125C: ImpAdLdRf MemVar_74C7D0
  loc_6D125F: NewIfNullPr clsMsg
  loc_6D1262: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D1267: FLdZeroAd var_1D8
  loc_6D126A: CVarStr var_1EC
  loc_6D126D: PopAdLdVar
  loc_6D126E: FLdPrThis
  loc_6D126F: VCallAd Control_ID_cmdConsultar
  loc_6D1272: FStAdFunc var_88
  loc_6D1275: FLdPr var_88
  loc_6D1278: LateIdSt
  loc_6D127D: FFree1Str var_94
  loc_6D1280: FFree1Ad var_88
  loc_6D1283: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6D129C: FLdRfVar var_1D8
  loc_6D129F: LitVar_Missing var_1D4
  loc_6D12A2: LitVar_Missing var_1B4
  loc_6D12A5: LitVar_Missing var_194
  loc_6D12A8: LitVar_Missing var_174
  loc_6D12AB: LitVar_Missing var_154
  loc_6D12AE: LitVar_Missing var_134
  loc_6D12B1: LitVar_Missing var_114
  loc_6D12B4: LitVar_Missing var_F4
  loc_6D12B7: LitVar_Missing var_D4
  loc_6D12BA: LitVar_Missing var_B4
  loc_6D12BD: LitStr "&Imprimir"
  loc_6D12C0: FStStrCopy var_94
  loc_6D12C3: FLdRfVar var_94
  loc_6D12C6: LitI4 &HD
  loc_6D12CB: PopTmpLdAdStr var_90
  loc_6D12CE: LitI2_Byte &H4C
  loc_6D12D0: PopTmpLdAd2 var_8A
  loc_6D12D3: ImpAdLdRf MemVar_74C7D0
  loc_6D12D6: NewIfNullPr clsMsg
  loc_6D12D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D12DE: FLdZeroAd var_1D8
  loc_6D12E1: CVarStr var_1EC
  loc_6D12E4: PopAdLdVar
  loc_6D12E5: FLdPrThis
  loc_6D12E6: VCallAd Control_ID_sscImprimir
  loc_6D12E9: FStAdFunc var_88
  loc_6D12EC: FLdPr var_88
  loc_6D12EF: LateIdSt
  loc_6D12F4: FFree1Str var_94
  loc_6D12F7: FFree1Ad var_88
  loc_6D12FA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6D1313: FLdRfVar var_1D8
  loc_6D1316: LitVar_Missing var_1D4
  loc_6D1319: LitVar_Missing var_1B4
  loc_6D131C: LitVar_Missing var_194
  loc_6D131F: LitVar_Missing var_174
  loc_6D1322: LitVar_Missing var_154
  loc_6D1325: LitVar_Missing var_134
  loc_6D1328: LitVar_Missing var_114
  loc_6D132B: LitVar_Missing var_F4
  loc_6D132E: LitVar_Missing var_D4
  loc_6D1331: LitVar_Missing var_B4
  loc_6D1334: LitStr "&Salir"
  loc_6D1337: FStStrCopy var_94
  loc_6D133A: FLdRfVar var_94
  loc_6D133D: LitI4 &HE
  loc_6D1342: PopTmpLdAdStr var_90
  loc_6D1345: LitI2_Byte &H4C
  loc_6D1347: PopTmpLdAd2 var_8A
  loc_6D134A: ImpAdLdRf MemVar_74C7D0
  loc_6D134D: NewIfNullPr clsMsg
  loc_6D1350: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D1355: FLdZeroAd var_1D8
  loc_6D1358: CVarStr var_1EC
  loc_6D135B: PopAdLdVar
  loc_6D135C: FLdPrThis
  loc_6D135D: VCallAd Control_ID_sscSalir
  loc_6D1360: FStAdFunc var_88
  loc_6D1363: FLdPr var_88
  loc_6D1366: LateIdSt
  loc_6D136B: FFree1Str var_94
  loc_6D136E: FFree1Ad var_88
  loc_6D1371: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6D138A: FLdRfVar var_B4
  loc_6D138D: ImpAdCallFPR4  = Now
  loc_6D1392: FLdRfVar var_B4
  loc_6D1395: FLdRfVar var_D4
  loc_6D1398: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6D139D: FLdRfVar var_154
  loc_6D13A0: ImpAdCallFPR4  = Now
  loc_6D13A5: FLdRfVar var_154
  loc_6D13A8: FLdRfVar var_174
  loc_6D13AB: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6D13B0: FLdRfVar var_1FC
  loc_6D13B3: ImpAdCallFPR4  = Now
  loc_6D13B8: FLdRfVar var_1FC
  loc_6D13BB: FLdRfVar var_20C
  loc_6D13BE: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6D13C3: LitI4 1
  loc_6D13C8: LitI4 1
  loc_6D13CD: LitVarStr var_A4, "00"
  loc_6D13D2: FStVarCopyObj var_F4
  loc_6D13D5: FLdRfVar var_F4
  loc_6D13D8: FLdRfVar var_D4
  loc_6D13DB: FLdRfVar var_114
  loc_6D13DE: ImpAdCallFPR4  = Format(, )
  loc_6D13E3: FLdRfVar var_114
  loc_6D13E6: LitVarStr var_C4, "-"
  loc_6D13EB: ConcatVar var_134
  loc_6D13EF: LitI4 1
  loc_6D13F4: LitI4 1
  loc_6D13F9: LitVarStr var_E4, "00"
  loc_6D13FE: FStVarCopyObj var_194
  loc_6D1401: FLdRfVar var_194
  loc_6D1404: FLdRfVar var_174
  loc_6D1407: FLdRfVar var_1B4
  loc_6D140A: ImpAdCallFPR4  = Format(, )
  loc_6D140F: FLdRfVar var_1B4
  loc_6D1412: ConcatVar var_1D4
  loc_6D1416: LitVarStr var_104, "-"
  loc_6D141B: ConcatVar var_1EC
  loc_6D141F: LitI4 1
  loc_6D1424: LitI4 1
  loc_6D1429: LitVarStr var_124, "0000"
  loc_6D142E: FStVarCopyObj var_21C
  loc_6D1431: FLdRfVar var_21C
  loc_6D1434: FLdRfVar var_20C
  loc_6D1437: FLdRfVar var_22C
  loc_6D143A: ImpAdCallFPR4  = Format(, )
  loc_6D143F: FLdRfVar var_22C
  loc_6D1442: ConcatVar var_23C
  loc_6D1446: CStrVarTmp
  loc_6D1447: CVarStr var_24C
  loc_6D144A: PopAdLdVar
  loc_6D144B: FLdPrThis
  loc_6D144C: VCallAd Control_ID_FechaInicial
  loc_6D144F: FStAdFunc var_88
  loc_6D1452: FLdPr var_88
  loc_6D1455: LateIdSt
  loc_6D145A: FFree1Ad var_88
  loc_6D145D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_154 = "": var_174 = "": var_194 = "": var_134 = "": var_1B4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6D1482: FLdRfVar var_B4
  loc_6D1485: ImpAdCallFPR4  = Now
  loc_6D148A: FLdRfVar var_B4
  loc_6D148D: FLdRfVar var_D4
  loc_6D1490: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6D1495: FLdRfVar var_154
  loc_6D1498: ImpAdCallFPR4  = Now
  loc_6D149D: FLdRfVar var_154
  loc_6D14A0: FLdRfVar var_174
  loc_6D14A3: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6D14A8: FLdRfVar var_1FC
  loc_6D14AB: ImpAdCallFPR4  = Now
  loc_6D14B0: FLdRfVar var_1FC
  loc_6D14B3: FLdRfVar var_20C
  loc_6D14B6: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6D14BB: LitI4 1
  loc_6D14C0: LitI4 1
  loc_6D14C5: LitVarStr var_A4, "00"
  loc_6D14CA: FStVarCopyObj var_F4
  loc_6D14CD: FLdRfVar var_F4
  loc_6D14D0: FLdRfVar var_D4
  loc_6D14D3: FLdRfVar var_114
  loc_6D14D6: ImpAdCallFPR4  = Format(, )
  loc_6D14DB: FLdRfVar var_114
  loc_6D14DE: LitVarStr var_C4, "-"
  loc_6D14E3: ConcatVar var_134
  loc_6D14E7: LitI4 1
  loc_6D14EC: LitI4 1
  loc_6D14F1: LitVarStr var_E4, "00"
  loc_6D14F6: FStVarCopyObj var_194
  loc_6D14F9: FLdRfVar var_194
  loc_6D14FC: FLdRfVar var_174
  loc_6D14FF: FLdRfVar var_1B4
  loc_6D1502: ImpAdCallFPR4  = Format(, )
  loc_6D1507: FLdRfVar var_1B4
  loc_6D150A: ConcatVar var_1D4
  loc_6D150E: LitVarStr var_104, "-"
  loc_6D1513: ConcatVar var_1EC
  loc_6D1517: LitI4 1
  loc_6D151C: LitI4 1
  loc_6D1521: LitVarStr var_124, "0000"
  loc_6D1526: FStVarCopyObj var_21C
  loc_6D1529: FLdRfVar var_21C
  loc_6D152C: FLdRfVar var_20C
  loc_6D152F: FLdRfVar var_22C
  loc_6D1532: ImpAdCallFPR4  = Format(, )
  loc_6D1537: FLdRfVar var_22C
  loc_6D153A: ConcatVar var_23C
  loc_6D153E: CStrVarTmp
  loc_6D153F: CVarStr var_24C
  loc_6D1542: PopAdLdVar
  loc_6D1543: FLdPrThis
  loc_6D1544: VCallAd Control_ID_FechaFinal
  loc_6D1547: FStAdFunc var_88
  loc_6D154A: FLdPr var_88
  loc_6D154D: LateIdSt
  loc_6D1552: FFree1Ad var_88
  loc_6D1555: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_154 = "": var_174 = "": var_194 = "": var_134 = "": var_1B4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6D157A: LitVarStr var_A4, "00:00:00"
  loc_6D157F: PopAdLdVar
  loc_6D1580: FLdPrThis
  loc_6D1581: VCallAd Control_ID_HoraInicial
  loc_6D1584: FStAdFunc var_88
  loc_6D1587: FLdPr var_88
  loc_6D158A: LateIdSt
  loc_6D158F: FFree1Ad var_88
  loc_6D1592: FLdRfVar var_B4
  loc_6D1595: ImpAdCallFPR4  = Now
  loc_6D159A: FLdRfVar var_B4
  loc_6D159D: FLdRfVar var_D4
  loc_6D15A0: ImpAdCallFPR4  = Hour()
  loc_6D15A5: FLdRfVar var_154
  loc_6D15A8: ImpAdCallFPR4  = Now
  loc_6D15AD: FLdRfVar var_154
  loc_6D15B0: FLdRfVar var_174
  loc_6D15B3: ImpAdCallFPR4  = Minute()
  loc_6D15B8: FLdRfVar var_1FC
  loc_6D15BB: ImpAdCallFPR4  = Now
  loc_6D15C0: FLdRfVar var_1FC
  loc_6D15C3: FLdRfVar var_20C
  loc_6D15C6: ImpAdCallFPR4  = Second()
  loc_6D15CB: LitI4 1
  loc_6D15D0: LitI4 1
  loc_6D15D5: LitVarStr var_A4, "00"
  loc_6D15DA: FStVarCopyObj var_F4
  loc_6D15DD: FLdRfVar var_F4
  loc_6D15E0: FLdRfVar var_D4
  loc_6D15E3: FLdRfVar var_114
  loc_6D15E6: ImpAdCallFPR4  = Format(, )
  loc_6D15EB: FLdRfVar var_114
  loc_6D15EE: LitVarStr var_C4, ":"
  loc_6D15F3: ConcatVar var_134
  loc_6D15F7: LitI4 1
  loc_6D15FC: LitI4 1
  loc_6D1601: LitVarStr var_E4, "00"
  loc_6D1606: FStVarCopyObj var_194
  loc_6D1609: FLdRfVar var_194
  loc_6D160C: FLdRfVar var_174
  loc_6D160F: FLdRfVar var_1B4
  loc_6D1612: ImpAdCallFPR4  = Format(, )
  loc_6D1617: FLdRfVar var_1B4
  loc_6D161A: ConcatVar var_1D4
  loc_6D161E: LitVarStr var_104, ":"
  loc_6D1623: ConcatVar var_1EC
  loc_6D1627: LitI4 1
  loc_6D162C: LitI4 1
  loc_6D1631: LitVarStr var_124, "00"
  loc_6D1636: FStVarCopyObj var_21C
  loc_6D1639: FLdRfVar var_21C
  loc_6D163C: FLdRfVar var_20C
  loc_6D163F: FLdRfVar var_22C
  loc_6D1642: ImpAdCallFPR4  = Format(, )
  loc_6D1647: FLdRfVar var_22C
  loc_6D164A: ConcatVar var_23C
  loc_6D164E: CStrVarTmp
  loc_6D164F: CVarStr var_24C
  loc_6D1652: PopAdLdVar
  loc_6D1653: FLdPrThis
  loc_6D1654: VCallAd Control_ID_HoraFinal
  loc_6D1657: FStAdFunc var_88
  loc_6D165A: FLdPr var_88
  loc_6D165D: LateIdSt
  loc_6D1662: FFree1Ad var_88
  loc_6D1665: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_154 = "": var_174 = "": var_194 = "": var_134 = "": var_1B4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6D168A: ExitProcHresult
End Sub

Public Function CalculoPrice(valor, PPU) '60604C
  'Data Table: 438174
  loc_605F78: ZeroRetVal
  loc_605F7A: ILdI2 PPU
  loc_605F7D: BranchF loc_605FC1
  loc_605F80: ILdI4 valor
  loc_605F83: ImpAdCallFPR4 push Val()
  loc_605F88: FStFPR8 var_D4
  loc_605F8B: LitI4 1
  loc_605F90: LitI4 1
  loc_605F95: ImpAdLdRf MemVar_74C350
  loc_605F98: CVarRef
  loc_605F9D: FLdFPR8 var_D4
  loc_605FA0: ImpAdLdFPR4 MemVar_74C2DC
  loc_605FA3: DivR8
  loc_605FA4: CVarR8
  loc_605FA8: FLdRfVar var_CC
  loc_605FAB: ImpAdCallFPR4  = Format(, )
  loc_605FB0: FLdRfVar var_CC
  loc_605FB3: CStrVarTmp
  loc_605FB4: FStStr var_8C
  loc_605FB7: FFreeVar var_AC = ""
  loc_605FBE: Branch loc_605FFF
  loc_605FC1: ILdI4 valor
  loc_605FC4: ImpAdCallFPR4 push Val()
  loc_605FC9: FStFPR8 var_D4
  loc_605FCC: LitI4 1
  loc_605FD1: LitI4 1
  loc_605FD6: ImpAdLdRf MemVar_74C364
  loc_605FD9: CVarRef
  loc_605FDE: FLdFPR8 var_D4
  loc_605FE1: ImpAdLdFPR4 MemVar_74C2E0
  loc_605FE4: DivR8
  loc_605FE5: CVarR8
  loc_605FE9: FLdRfVar var_CC
  loc_605FEC: ImpAdCallFPR4  = Format(, )
  loc_605FF1: FLdRfVar var_CC
  loc_605FF4: CStrVarTmp
  loc_605FF5: FStStr var_8C
  loc_605FF8: FFreeVar var_AC = ""
  loc_605FFF: LitVarI2 var_BC, 11
  loc_606004: FLdRfVar var_8C
  loc_606007: CVarRef
  loc_60600C: FLdRfVar var_AC
  loc_60600F: ImpAdCallFPR4  = Trim()
  loc_606014: FLdRfVar var_AC
  loc_606017: FnLenVar var_CC
  loc_60601B: SubVar var_E4
  loc_60601F: CI4Var
  loc_606021: FLdRfVar var_F4
  loc_606024: ImpAdCallFPR4  = Space()
  loc_606029: FLdRfVar var_F4
  loc_60602C: ILdRf var_8C
  loc_60602F: CVarStr var_104
  loc_606032: ConcatVar var_114
  loc_606036: CStrVarTmp
  loc_606037: FStStr var_88
  loc_60603A: FFreeVar var_AC = "": var_F4 = ""
  loc_606043: ExitProcCbHresult
End Function

Private Function Proc_127_11_6D2B7C(arg_C) '6D2B7C
  'Data Table: 438174
  loc_6D2194: ILdRf arg_C
  loc_6D2197: FStStrCopy var_88
  loc_6D219A: LitI2_Byte &HFF
  loc_6D219C: FStI2 var_B6
  loc_6D219F: LitI4 -1
  loc_6D21A4: FStR4 var_BC
  loc_6D21A7: LitI2_Byte &HFF
  loc_6D21A9: FStI2 var_BE
  loc_6D21AC: LitI2_Byte &HFF
  loc_6D21AE: FStI2 var_C0
  loc_6D21B1: LitI4 -1
  loc_6D21B6: FStR4 var_C4
  loc_6D21B9: LitI2_Byte &HFF
  loc_6D21BB: FStI2 var_C6
  loc_6D21BE: LitI2_Byte 0
  loc_6D21C0: CR8I2
  loc_6D21C1: FStFPR4 var_CC
  loc_6D21C4: LitI2_Byte 0
  loc_6D21C6: CR8I2
  loc_6D21C7: FStFPR4 var_D0
  loc_6D21CA: LitI2_Byte 0
  loc_6D21CC: CR8I2
  loc_6D21CD: FStFPR4 var_D4
  loc_6D21D0: LitI2_Byte 0
  loc_6D21D2: CR8I2
  loc_6D21D3: FStFPR4 var_D8
  loc_6D21D6: LitI2_Byte 0
  loc_6D21D8: CR8I2
  loc_6D21D9: FStFPR4 var_DC
  loc_6D21DC: LitI2_Byte 0
  loc_6D21DE: CR8I2
  loc_6D21DF: FStFPR4 var_E0
  loc_6D21E2: LitI4 1
  loc_6D21E7: FStR4 var_8C
  loc_6D21EA: LitI2_Byte &H4A
  loc_6D21EC: CUI1I2
  loc_6D21EE: FStUI1 var_8E
  loc_6D21F2: ILdRf var_8C
  loc_6D21F5: ILdRf var_88
  loc_6D21F8: FnLenStr
  loc_6D21F9: LeI4
  loc_6D21FA: BranchF loc_6D28CF
  loc_6D21FD: LitVarI2 var_118, 2
  loc_6D2202: ILdRf var_8C
  loc_6D2205: FLdRfVar var_88
  loc_6D2208: CVarRef
  loc_6D220D: FLdRfVar var_128
  loc_6D2210: ImpAdCallFPR4  = Mid(, , )
  loc_6D2215: FLdRfVar var_128
  loc_6D2218: LitVarStr var_138, "/"
  loc_6D221D: ConcatVar var_148
  loc_6D2221: LitVarI2 var_178, 2
  loc_6D2226: ILdRf var_8C
  loc_6D2229: LitI4 2
  loc_6D222E: AddI4
  loc_6D222F: FLdRfVar var_88
  loc_6D2232: CVarRef
  loc_6D2237: FLdRfVar var_188
  loc_6D223A: ImpAdCallFPR4  = Mid(, , )
  loc_6D223F: FLdRfVar var_188
  loc_6D2242: ConcatVar var_198
  loc_6D2246: LitVarStr var_1A8, "/"
  loc_6D224B: ConcatVar var_1B8
  loc_6D224F: LitVarI2 var_1E8, 4
  loc_6D2254: ILdRf var_8C
  loc_6D2257: LitI4 4
  loc_6D225C: AddI4
  loc_6D225D: FLdRfVar var_88
  loc_6D2260: CVarRef
  loc_6D2265: FLdRfVar var_1F8
  loc_6D2268: ImpAdCallFPR4  = Mid(, , )
  loc_6D226D: FLdRfVar var_1F8
  loc_6D2270: ConcatVar var_208
  loc_6D2274: CStrVarTmp
  loc_6D2275: FStStr var_94
  loc_6D2278: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_188 = "": var_198 = "": var_1E8 = "": var_1B8 = "": var_1F8 = ""
  loc_6D228F: LitVarI2 var_118, 2
  loc_6D2294: ILdRf var_8C
  loc_6D2297: LitI4 8
  loc_6D229C: AddI4
  loc_6D229D: FLdRfVar var_88
  loc_6D22A0: CVarRef
  loc_6D22A5: FLdRfVar var_128
  loc_6D22A8: ImpAdCallFPR4  = Mid(, , )
  loc_6D22AD: FLdRfVar var_128
  loc_6D22B0: LitVarStr var_138, ":"
  loc_6D22B5: ConcatVar var_148
  loc_6D22B9: LitVarI2 var_178, 2
  loc_6D22BE: ILdRf var_8C
  loc_6D22C1: LitI4 &HA
  loc_6D22C6: AddI4
  loc_6D22C7: FLdRfVar var_88
  loc_6D22CA: CVarRef
  loc_6D22CF: FLdRfVar var_188
  loc_6D22D2: ImpAdCallFPR4  = Mid(, , )
  loc_6D22D7: FLdRfVar var_188
  loc_6D22DA: ConcatVar var_198
  loc_6D22DE: LitVarStr var_1A8, ":"
  loc_6D22E3: ConcatVar var_1B8
  loc_6D22E7: LitVarI2 var_1E8, 2
  loc_6D22EC: ILdRf var_8C
  loc_6D22EF: LitI4 &HC
  loc_6D22F4: AddI4
  loc_6D22F5: FLdRfVar var_88
  loc_6D22F8: CVarRef
  loc_6D22FD: FLdRfVar var_1F8
  loc_6D2300: ImpAdCallFPR4  = Mid(, , )
  loc_6D2305: FLdRfVar var_1F8
  loc_6D2308: ConcatVar var_208
  loc_6D230C: CStrVarTmp
  loc_6D230D: FStStr var_98
  loc_6D2310: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_188 = "": var_198 = "": var_1E8 = "": var_1B8 = "": var_1F8 = ""
  loc_6D2327: LitVarI2 var_118, 2
  loc_6D232C: ILdRf var_8C
  loc_6D232F: LitI4 &HE
  loc_6D2334: AddI4
  loc_6D2335: FLdRfVar var_88
  loc_6D2338: CVarRef
  loc_6D233D: FLdRfVar var_128
  loc_6D2340: ImpAdCallFPR4  = Mid(, , )
  loc_6D2345: FLdRfVar var_128
  loc_6D2348: CStrVarTmp
  loc_6D2349: FStStr var_9C
  loc_6D234C: FFreeVar var_118 = ""
  loc_6D2353: LitVarI2 var_118, 1
  loc_6D2358: ILdRf var_8C
  loc_6D235B: LitI4 &H10
  loc_6D2360: AddI4
  loc_6D2361: FLdRfVar var_88
  loc_6D2364: CVarRef
  loc_6D2369: FLdRfVar var_128
  loc_6D236C: ImpAdCallFPR4  = Mid(, , )
  loc_6D2371: FLdRfVar var_128
  loc_6D2374: FLdRfVar var_148
  loc_6D2377: ImpAdCallFPR4  = Ucase()
  loc_6D237C: FLdRfVar var_148
  loc_6D237F: CStrVarTmp
  loc_6D2380: FStStr var_B0
  loc_6D2383: FFreeVar var_118 = "": var_128 = ""
  loc_6D238C: LitVarI2 var_118, 10
  loc_6D2391: ILdRf var_8C
  loc_6D2394: LitI4 &H11
  loc_6D2399: AddI4
  loc_6D239A: ILdRf var_88
  loc_6D239D: ImpAdCallI2 Mid$(, , )
  loc_6D23A2: FStStr var_218
  loc_6D23A5: FLdRfVar var_214
  loc_6D23A8: LitI2_Byte 0
  loc_6D23AA: PopTmpLdAd2 var_20E
  loc_6D23AD: FLdZeroAd var_218
  loc_6D23B0: PopTmpLdAdStr
  loc_6D23B4: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_6D23B9: FLdZeroAd var_214
  loc_6D23BC: FStStr var_A0
  loc_6D23BF: FFreeStr var_20C = ""
  loc_6D23C6: FFree1Var var_118 = ""
  loc_6D23C9: LitVarI2 var_118, 10
  loc_6D23CE: ILdRf var_8C
  loc_6D23D1: LitI4 &H1B
  loc_6D23D6: AddI4
  loc_6D23D7: FLdRfVar var_88
  loc_6D23DA: CVarRef
  loc_6D23DF: FLdRfVar var_128
  loc_6D23E2: ImpAdCallFPR4  = Mid(, , )
  loc_6D23E7: FLdRfVar var_128
  loc_6D23EA: CStrVarVal var_20C
  loc_6D23EE: ImpAdCallFPR4 push Val()
  loc_6D23F3: FStFPR8 var_220
  loc_6D23F6: LitI4 1
  loc_6D23FB: LitI4 1
  loc_6D2400: LitVarStr var_158, "#######0.00"
  loc_6D2405: FStVarCopyObj var_178
  loc_6D2408: FLdRfVar var_178
  loc_6D240B: FLdFPR8 var_220
  loc_6D240E: LitI2_Byte &H64
  loc_6D2410: CR8I2
  loc_6D2411: DivR8
  loc_6D2412: CVarR8
  loc_6D2416: ImpAdCallI2 Format$(, )
  loc_6D241B: FStStr var_214
  loc_6D241E: LitI4 1
  loc_6D2423: LitI4 1
  loc_6D2428: LitVarStr var_168, "@@@@@@@@@@@"
  loc_6D242D: FStVarCopyObj var_198
  loc_6D2430: FLdRfVar var_198
  loc_6D2433: FLdZeroAd var_214
  loc_6D2436: CVarStr var_188
  loc_6D2439: ImpAdCallI2 Format$(, )
  loc_6D243E: FStStr var_A4
  loc_6D2441: FFreeStr var_20C = ""
  loc_6D2448: FFreeVar var_118 = "": var_128 = "": var_148 = "": var_178 = "": var_188 = ""
  loc_6D2457: LitVarI2 var_118, 10
  loc_6D245C: ILdRf var_8C
  loc_6D245F: LitI4 &H25
  loc_6D2464: AddI4
  loc_6D2465: FLdRfVar var_88
  loc_6D2468: CVarRef
  loc_6D246D: FLdRfVar var_128
  loc_6D2470: ImpAdCallFPR4  = Mid(, , )
  loc_6D2475: FLdRfVar var_214
  loc_6D2478: LitI2_Byte &HFF
  loc_6D247A: PopTmpLdAd2 var_20E
  loc_6D247D: FLdRfVar var_128
  loc_6D2480: CStrVarTmp
  loc_6D2481: PopTmpLdAdStr
  loc_6D2485: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_6D248A: FLdZeroAd var_214
  loc_6D248D: FStStr var_AC
  loc_6D2490: FFree1Str var_20C
  loc_6D2493: FFreeVar var_118 = ""
  loc_6D249A: LitVarI2 var_118, 1
  loc_6D249F: ILdRf var_8C
  loc_6D24A2: LitI4 &H2F
  loc_6D24A7: AddI4
  loc_6D24A8: FLdRfVar var_88
  loc_6D24AB: CVarRef
  loc_6D24B0: FLdRfVar var_128
  loc_6D24B3: ImpAdCallFPR4  = Mid(, , )
  loc_6D24B8: FLdRfVar var_128
  loc_6D24BB: CStrVarVal var_20C
  loc_6D24BF: ImpAdCallFPR4 push Val()
  loc_6D24C4: FStFPR8 var_220
  loc_6D24C7: FLdRfVar var_214
  loc_6D24CA: FLdFPR8 var_220
  loc_6D24CD: CI2R8
  loc_6D24CE: ImpAdLdRf MemVar_74A220
  loc_6D24D1: NewIfNullPr clsProducts
  loc_6D24D9: LitI4 &HF
  loc_6D24DE: FLdZeroAd var_214
  loc_6D24E1: CVarStr var_148
  loc_6D24E4: FLdRfVar var_178
  loc_6D24E7: ImpAdCallFPR4  = Left(, )
  loc_6D24EC: LitI4 1
  loc_6D24F1: LitI4 1
  loc_6D24F6: LitVarStr var_138, "!@@@@@@@@@@@@@@@"
  loc_6D24FB: FStVarCopyObj var_188
  loc_6D24FE: FLdRfVar var_188
  loc_6D2501: FLdRfVar var_178
  loc_6D2504: ImpAdCallI2 Format$(, )
  loc_6D2509: FStStr var_A8
  loc_6D250C: FFree1Str var_20C
  loc_6D250F: FFreeVar var_118 = "": var_128 = "": var_148 = "": var_178 = ""
  loc_6D251C: LitVarI2 var_118, 3
  loc_6D2521: ILdRf var_8C
  loc_6D2524: LitI4 &H31
  loc_6D2529: AddI4
  loc_6D252A: ILdRf var_88
  loc_6D252D: ImpAdCallI2 Mid$(, , )
  loc_6D2532: FStStrNoPop var_20C
  loc_6D2535: CI2Str
  loc_6D2537: FStI2 var_B6
  loc_6D253A: FFree1Str var_20C
  loc_6D253D: FFree1Var var_118 = ""
  loc_6D2540: LitVarI2 var_118, 4
  loc_6D2545: ILdRf var_8C
  loc_6D2548: LitI4 &H34
  loc_6D254D: AddI4
  loc_6D254E: ILdRf var_88
  loc_6D2551: ImpAdCallI2 Mid$(, , )
  loc_6D2556: FStStrNoPop var_20C
  loc_6D2559: CI2Str
  loc_6D255B: FStI2 var_BE
  loc_6D255E: FFree1Str var_20C
  loc_6D2561: FFree1Var var_118 = ""
  loc_6D2564: FLdI2 var_C6
  loc_6D2567: FLdI2 var_BE
  loc_6D256A: NeI2
  loc_6D256B: ILdRf var_C4
  loc_6D256E: ILdRf var_BC
  loc_6D2571: NeI4
  loc_6D2572: OrI4
  loc_6D2573: FLdI2 var_C0
  loc_6D2576: FLdI2 var_B6
  loc_6D2579: NeI2
  loc_6D257A: OrI4
  loc_6D257B: BranchF loc_6D27FC
  loc_6D257E: FLdI2 var_C6
  loc_6D2581: LitI2_Byte &HFF
  loc_6D2583: NeI2
  loc_6D2584: BranchF loc_6D27EA
  loc_6D2587: FLdI2 var_C0
  loc_6D258A: LitI2 800
  loc_6D258D: GtI2
  loc_6D258E: FLdI2 var_C0
  loc_6D2591: LitI2_Byte 0
  loc_6D2593: EqI2
  loc_6D2594: OrI4
  loc_6D2595: BranchF loc_6D259B
  loc_6D2598: Branch loc_6D27EA
  loc_6D259B: FLdI2 var_C6
  loc_6D259E: ImpAdCallI2 Proc_158_10_5F0448()
  loc_6D25A3: FStStr var_B4
  loc_6D25A6: ILdRf var_B4
  loc_6D25A9: LitStr vbNullString
  loc_6D25AC: EqStr
  loc_6D25AE: BranchF loc_6D26DC
  loc_6D25B1: LitI4 1
  loc_6D25B6: LitI4 1
  loc_6D25BB: LitVarStr var_108, "@@@"
  loc_6D25C0: FStVarCopyObj var_118
  loc_6D25C3: FLdRfVar var_118
  loc_6D25C6: FLdRfVar var_C0
  loc_6D25C9: CVarRef
  loc_6D25CE: ImpAdCallI2 Format$(, )
  loc_6D25D3: FStStr var_234
  loc_6D25D6: LitI4 1
  loc_6D25DB: LitI4 1
  loc_6D25E0: LitVarStr var_158, "@@@@"
  loc_6D25E5: FStVarCopyObj var_128
  loc_6D25E8: FLdRfVar var_128
  loc_6D25EB: FLdRfVar var_C6
  loc_6D25EE: CVarRef
  loc_6D25F3: ImpAdCallI2 Format$(, )
  loc_6D25F8: FStStr var_238
  loc_6D25FB: LitI4 2
  loc_6D2600: FLdRfVar var_148
  loc_6D2603: ImpAdCallFPR4  = Space()
  loc_6D2608: LitI4 1
  loc_6D260D: LitI4 1
  loc_6D2612: ImpAdLdRf MemVar_74C364
  loc_6D2615: CVarRef
  loc_6D261A: FLdRfVar var_DC
  loc_6D261D: CVarRef
  loc_6D2622: ImpAdCallI2 Format$(, )
  loc_6D2627: FStStr var_23C
  loc_6D262A: LitI4 1
  loc_6D262F: LitI4 1
  loc_6D2634: LitVarStr var_1C8, "@@@@@@@@@@@"
  loc_6D2639: FStVarCopyObj var_1B8
  loc_6D263C: FLdRfVar var_1B8
  loc_6D263F: FLdZeroAd var_23C
  loc_6D2642: CVarStr var_198
  loc_6D2645: ImpAdCallI2 Format$(, )
  loc_6D264A: FStStr var_240
  loc_6D264D: FLdRfVar var_20E
  loc_6D2650: FLdPrThis
  loc_6D2651: VCallAd Control_ID_List1
  loc_6D2654: FStAdFunc var_228
  loc_6D2657: FLdPr var_228
  loc_6D265A:  = Me.ListCount
  loc_6D265F: FLdI2 var_20E
  loc_6D2662: CVarI2 var_1D8
  loc_6D2665: PopAdLdVar
  loc_6D2666: LitStr "G: "
  loc_6D2669: FLdZeroAd var_234
  loc_6D266C: FStStrNoPop var_20C
  loc_6D266F: ConcatStr
  loc_6D2670: FStStrNoPop var_214
  loc_6D2673: LitStr " - U: "
  loc_6D2676: ConcatStr
  loc_6D2677: FStStrNoPop var_218
  loc_6D267A: FLdZeroAd var_238
  loc_6D267D: FStStrNoPop var_224
  loc_6D2680: ConcatStr
  loc_6D2681: CVarStr var_178
  loc_6D2684: FLdRfVar var_148
  loc_6D2687: ConcatVar var_188
  loc_6D268B: FLdZeroAd var_240
  loc_6D268E: CVarStr var_1E8
  loc_6D2691: ConcatVar var_1F8
  loc_6D2695: CStrVarVal var_22C
  loc_6D2699: FLdPrThis
  loc_6D269A: VCallAd Control_ID_List1
  loc_6D269D: FStAdFunc var_230
  loc_6D26A0: FLdPr var_230
  loc_6D26A3: Me.AddItem from_stack_1, from_stack_2
  loc_6D26A8: FFreeStr var_20C = "": var_214 = "": var_218 = "": var_224 = "": var_22C = "": var_234 = "": var_238 = "": var_23C = ""
  loc_6D26BD: FFreeAd var_228 = ""
  loc_6D26C4: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_198 = "": var_1B8 = "": var_188 = "": var_1E8 = ""
  loc_6D26D9: Branch loc_6D27EA
  loc_6D26DC: LitI4 &HF
  loc_6D26E1: ILdRf var_B4
  loc_6D26E4: ImpAdCallI2 Left$(, )
  loc_6D26E9: FStStr var_214
  loc_6D26EC: LitVarStr var_F8, "@"
  loc_6D26F1: FStVarCopyObj var_118
  loc_6D26F4: FLdRfVar var_118
  loc_6D26F7: LitI4 &HF
  loc_6D26FC: FLdRfVar var_128
  loc_6D26FF: ImpAdCallFPR4  = String(, )
  loc_6D2704: LitI4 1
  loc_6D2709: LitI4 1
  loc_6D270E: LitVarStr var_108, "!"
  loc_6D2713: FLdRfVar var_128
  loc_6D2716: ConcatVar var_148
  loc_6D271A: FLdZeroAd var_214
  loc_6D271D: CVarStr var_178
  loc_6D2720: ImpAdCallI2 Format$(, )
  loc_6D2725: FStStr var_218
  loc_6D2728: LitI4 3
  loc_6D272D: FLdRfVar var_188
  loc_6D2730: ImpAdCallFPR4  = Space()
  loc_6D2735: LitI4 1
  loc_6D273A: LitI4 1
  loc_6D273F: ImpAdLdRf MemVar_74C364
  loc_6D2742: CVarRef
  loc_6D2747: FLdRfVar var_DC
  loc_6D274A: CVarRef
  loc_6D274F: ImpAdCallI2 Format$(, )
  loc_6D2754: FStStr var_224
  loc_6D2757: LitI4 1
  loc_6D275C: LitI4 1
  loc_6D2761: LitVarStr var_168, "@@@@@@@@@@@"
  loc_6D2766: FStVarCopyObj var_1F8
  loc_6D2769: FLdRfVar var_1F8
  loc_6D276C: FLdZeroAd var_224
  loc_6D276F: CVarStr var_1E8
  loc_6D2772: ImpAdCallI2 Format$(, )
  loc_6D2777: FStStr var_22C
  loc_6D277A: FLdRfVar var_20E
  loc_6D277D: FLdPrThis
  loc_6D277E: VCallAd Control_ID_List1
  loc_6D2781: FStAdFunc var_228
  loc_6D2784: FLdPr var_228
  loc_6D2787:  = Me.ListCount
  loc_6D278C: FLdI2 var_20E
  loc_6D278F: CVarI2 var_1A8
  loc_6D2792: PopAdLdVar
  loc_6D2793: FLdZeroAd var_218
  loc_6D2796: CVarStr var_198
  loc_6D2799: FLdRfVar var_188
  loc_6D279C: ConcatVar var_1B8
  loc_6D27A0: FLdZeroAd var_22C
  loc_6D27A3: CVarStr var_208
  loc_6D27A6: ConcatVar var_250
  loc_6D27AA: CStrVarVal var_20C
  loc_6D27AE: FLdPrThis
  loc_6D27AF: VCallAd Control_ID_List1
  loc_6D27B2: FStAdFunc var_230
  loc_6D27B5: FLdPr var_230
  loc_6D27B8: Me.AddItem from_stack_1, from_stack_2
  loc_6D27BD: FFreeStr var_20C = "": var_214 = "": var_218 = "": var_224 = ""
  loc_6D27CA: FFreeAd var_228 = ""
  loc_6D27D1: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_198 = "": var_188 = "": var_1E8 = "": var_1F8 = "": var_1B8 = "": var_208 = ""
  loc_6D27EA: LitI2_Byte 0
  loc_6D27EC: CR8I2
  loc_6D27ED: FStFPR4 var_DC
  loc_6D27F0: LitI2_Byte 0
  loc_6D27F2: CR8I2
  loc_6D27F3: FStFPR4 var_E0
  loc_6D27F6: FLdI2 var_BE
  loc_6D27F9: FStI2 var_C6
  loc_6D27FC: ILdRf var_C4
  loc_6D27FF: ILdRf var_BC
  loc_6D2802: NeI4
  loc_6D2803: FLdI2 var_C0
  loc_6D2806: FLdI2 var_B6
  loc_6D2809: NeI2
  loc_6D280A: OrI4
  loc_6D280B: BranchF loc_6D283B
  loc_6D280E: ILdRf var_C4
  loc_6D2811: LitI4 -1
  loc_6D2816: NeI4
  loc_6D2817: FLdI2 var_C0
  loc_6D281A: LitI2 800
  loc_6D281D: GtI2
  loc_6D281E: FLdI2 var_C0
  loc_6D2821: LitI2_Byte 0
  loc_6D2823: EqI2
  loc_6D2824: OrI4
  loc_6D2825: AndI4
  loc_6D2826: BranchF loc_6D2829
  loc_6D2829: LitI2_Byte 0
  loc_6D282B: CR8I2
  loc_6D282C: FStFPR4 var_D4
  loc_6D282F: LitI2_Byte 0
  loc_6D2831: CR8I2
  loc_6D2832: FStFPR4 var_D8
  loc_6D2835: ILdRf var_BC
  loc_6D2838: FStR4 var_C4
  loc_6D283B: FLdI2 var_C0
  loc_6D283E: FLdI2 var_B6
  loc_6D2841: NeI2
  loc_6D2842: BranchF loc_6D2860
  loc_6D2845: FLdI2 var_C0
  loc_6D2848: LitI2_Byte &HFF
  loc_6D284A: NeI2
  loc_6D284B: BranchF loc_6D284E
  loc_6D284E: LitI2_Byte 0
  loc_6D2850: CR8I2
  loc_6D2851: FStFPR4 var_CC
  loc_6D2854: LitI2_Byte 0
  loc_6D2856: CR8I2
  loc_6D2857: FStFPR4 var_D0
  loc_6D285A: FLdI2 var_B6
  loc_6D285D: FStI2 var_C0
  loc_6D2860: FLdFPR4 var_CC
  loc_6D2863: ILdRf var_A0
  loc_6D2866: CR8Str
  loc_6D2868: AddR8
  loc_6D2869: FStFPR4 var_CC
  loc_6D286C: FLdFPR4 var_D0
  loc_6D286F: ILdRf var_A4
  loc_6D2872: CR8Str
  loc_6D2874: AddR8
  loc_6D2875: FStFPR4 var_D0
  loc_6D2878: FLdFPR4 var_D4
  loc_6D287B: ILdRf var_A0
  loc_6D287E: CR8Str
  loc_6D2880: AddR8
  loc_6D2881: FStFPR4 var_D4
  loc_6D2884: FLdFPR4 var_D8
  loc_6D2887: ILdRf var_A4
  loc_6D288A: CR8Str
  loc_6D288C: AddR8
  loc_6D288D: FStFPR4 var_D8
  loc_6D2890: FLdFPR4 var_DC
  loc_6D2893: ILdRf var_A0
  loc_6D2896: CR8Str
  loc_6D2898: AddR8
  loc_6D2899: FStFPR4 var_DC
  loc_6D289C: FLdFPR4 var_E0
  loc_6D289F: ILdRf var_A4
  loc_6D28A2: CR8Str
  loc_6D28A4: AddR8
  loc_6D28A5: FStFPR4 var_E0
  loc_6D28A8: FLdFPR4 var_E4
  loc_6D28AB: ILdRf var_A0
  loc_6D28AE: CR8Str
  loc_6D28B0: AddR8
  loc_6D28B1: FStFPR4 var_E4
  loc_6D28B4: FLdFPR4 var_E8
  loc_6D28B7: ILdRf var_A4
  loc_6D28BA: CR8Str
  loc_6D28BC: AddR8
  loc_6D28BD: FStFPR4 var_E8
  loc_6D28C0: ILdRf var_8C
  loc_6D28C3: FLdUI1
  loc_6D28C7: CI4UI1
  loc_6D28C8: AddI4
  loc_6D28C9: FStR4 var_8C
  loc_6D28CC: Branch loc_6D21F2
  loc_6D28CF: FLdI2 var_C6
  loc_6D28D2: LitI2_Byte &HFF
  loc_6D28D4: NeI2
  loc_6D28D5: BranchF loc_6D2B3B
  loc_6D28D8: FLdI2 var_C0
  loc_6D28DB: LitI2 800
  loc_6D28DE: GtI2
  loc_6D28DF: FLdI2 var_C0
  loc_6D28E2: LitI2_Byte 0
  loc_6D28E4: EqI2
  loc_6D28E5: OrI4
  loc_6D28E6: BranchF loc_6D28EC
  loc_6D28E9: Branch loc_6D2B3B
  loc_6D28EC: FLdI2 var_C6
  loc_6D28EF: ImpAdCallI2 Proc_158_10_5F0448()
  loc_6D28F4: FStStr var_B4
  loc_6D28F7: ILdRf var_B4
  loc_6D28FA: LitStr vbNullString
  loc_6D28FD: EqStr
  loc_6D28FF: BranchF loc_6D2A2D
  loc_6D2902: LitI4 1
  loc_6D2907: LitI4 1
  loc_6D290C: LitVarStr var_108, "@@@"
  loc_6D2911: FStVarCopyObj var_118
  loc_6D2914: FLdRfVar var_118
  loc_6D2917: FLdRfVar var_C0
  loc_6D291A: CVarRef
  loc_6D291F: ImpAdCallI2 Format$(, )
  loc_6D2924: FStStr var_234
  loc_6D2927: LitI4 1
  loc_6D292C: LitI4 1
  loc_6D2931: LitVarStr var_158, "@@@@"
  loc_6D2936: FStVarCopyObj var_128
  loc_6D2939: FLdRfVar var_128
  loc_6D293C: FLdRfVar var_C6
  loc_6D293F: CVarRef
  loc_6D2944: ImpAdCallI2 Format$(, )
  loc_6D2949: FStStr var_238
  loc_6D294C: LitI4 2
  loc_6D2951: FLdRfVar var_148
  loc_6D2954: ImpAdCallFPR4  = Space()
  loc_6D2959: LitI4 1
  loc_6D295E: LitI4 1
  loc_6D2963: ImpAdLdRf MemVar_74C364
  loc_6D2966: CVarRef
  loc_6D296B: FLdRfVar var_DC
  loc_6D296E: CVarRef
  loc_6D2973: ImpAdCallI2 Format$(, )
  loc_6D2978: FStStr var_23C
  loc_6D297B: LitI4 1
  loc_6D2980: LitI4 1
  loc_6D2985: LitVarStr var_1C8, "@@@@@@@@@@@"
  loc_6D298A: FStVarCopyObj var_1B8
  loc_6D298D: FLdRfVar var_1B8
  loc_6D2990: FLdZeroAd var_23C
  loc_6D2993: CVarStr var_198
  loc_6D2996: ImpAdCallI2 Format$(, )
  loc_6D299B: FStStr var_240
  loc_6D299E: FLdRfVar var_20E
  loc_6D29A1: FLdPrThis
  loc_6D29A2: VCallAd Control_ID_List1
  loc_6D29A5: FStAdFunc var_228
  loc_6D29A8: FLdPr var_228
  loc_6D29AB:  = Me.ListCount
  loc_6D29B0: FLdI2 var_20E
  loc_6D29B3: CVarI2 var_1D8
  loc_6D29B6: PopAdLdVar
  loc_6D29B7: LitStr "G: "
  loc_6D29BA: FLdZeroAd var_234
  loc_6D29BD: FStStrNoPop var_20C
  loc_6D29C0: ConcatStr
  loc_6D29C1: FStStrNoPop var_214
  loc_6D29C4: LitStr " - U: "
  loc_6D29C7: ConcatStr
  loc_6D29C8: FStStrNoPop var_218
  loc_6D29CB: FLdZeroAd var_238
  loc_6D29CE: FStStrNoPop var_224
  loc_6D29D1: ConcatStr
  loc_6D29D2: CVarStr var_178
  loc_6D29D5: FLdRfVar var_148
  loc_6D29D8: ConcatVar var_188
  loc_6D29DC: FLdZeroAd var_240
  loc_6D29DF: CVarStr var_1E8
  loc_6D29E2: ConcatVar var_1F8
  loc_6D29E6: CStrVarVal var_22C
  loc_6D29EA: FLdPrThis
  loc_6D29EB: VCallAd Control_ID_List1
  loc_6D29EE: FStAdFunc var_230
  loc_6D29F1: FLdPr var_230
  loc_6D29F4: Me.AddItem from_stack_1, from_stack_2
  loc_6D29F9: FFreeStr var_20C = "": var_214 = "": var_218 = "": var_224 = "": var_22C = "": var_234 = "": var_238 = "": var_23C = ""
  loc_6D2A0E: FFreeAd var_228 = ""
  loc_6D2A15: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_198 = "": var_1B8 = "": var_188 = "": var_1E8 = ""
  loc_6D2A2A: Branch loc_6D2B3B
  loc_6D2A2D: LitI4 &HF
  loc_6D2A32: ILdRf var_B4
  loc_6D2A35: ImpAdCallI2 Left$(, )
  loc_6D2A3A: FStStr var_214
  loc_6D2A3D: LitVarStr var_F8, "@"
  loc_6D2A42: FStVarCopyObj var_118
  loc_6D2A45: FLdRfVar var_118
  loc_6D2A48: LitI4 &HF
  loc_6D2A4D: FLdRfVar var_128
  loc_6D2A50: ImpAdCallFPR4  = String(, )
  loc_6D2A55: LitI4 1
  loc_6D2A5A: LitI4 1
  loc_6D2A5F: LitVarStr var_108, "!"
  loc_6D2A64: FLdRfVar var_128
  loc_6D2A67: ConcatVar var_148
  loc_6D2A6B: FLdZeroAd var_214
  loc_6D2A6E: CVarStr var_178
  loc_6D2A71: ImpAdCallI2 Format$(, )
  loc_6D2A76: FStStr var_218
  loc_6D2A79: LitI4 3
  loc_6D2A7E: FLdRfVar var_188
  loc_6D2A81: ImpAdCallFPR4  = Space()
  loc_6D2A86: LitI4 1
  loc_6D2A8B: LitI4 1
  loc_6D2A90: ImpAdLdRf MemVar_74C364
  loc_6D2A93: CVarRef
  loc_6D2A98: FLdRfVar var_DC
  loc_6D2A9B: CVarRef
  loc_6D2AA0: ImpAdCallI2 Format$(, )
  loc_6D2AA5: FStStr var_224
  loc_6D2AA8: LitI4 1
  loc_6D2AAD: LitI4 1
  loc_6D2AB2: LitVarStr var_168, "@@@@@@@@@@@"
  loc_6D2AB7: FStVarCopyObj var_1F8
  loc_6D2ABA: FLdRfVar var_1F8
  loc_6D2ABD: FLdZeroAd var_224
  loc_6D2AC0: CVarStr var_1E8
  loc_6D2AC3: ImpAdCallI2 Format$(, )
  loc_6D2AC8: FStStr var_22C
  loc_6D2ACB: FLdRfVar var_20E
  loc_6D2ACE: FLdPrThis
  loc_6D2ACF: VCallAd Control_ID_List1
  loc_6D2AD2: FStAdFunc var_228
  loc_6D2AD5: FLdPr var_228
  loc_6D2AD8:  = Me.ListCount
  loc_6D2ADD: FLdI2 var_20E
  loc_6D2AE0: CVarI2 var_1A8
  loc_6D2AE3: PopAdLdVar
  loc_6D2AE4: FLdZeroAd var_218
  loc_6D2AE7: CVarStr var_198
  loc_6D2AEA: FLdRfVar var_188
  loc_6D2AED: ConcatVar var_1B8
  loc_6D2AF1: FLdZeroAd var_22C
  loc_6D2AF4: CVarStr var_208
  loc_6D2AF7: ConcatVar var_250
  loc_6D2AFB: CStrVarVal var_20C
  loc_6D2AFF: FLdPrThis
  loc_6D2B00: VCallAd Control_ID_List1
  loc_6D2B03: FStAdFunc var_230
  loc_6D2B06: FLdPr var_230
  loc_6D2B09: Me.AddItem from_stack_1, from_stack_2
  loc_6D2B0E: FFreeStr var_20C = "": var_214 = "": var_218 = "": var_224 = ""
  loc_6D2B1B: FFreeAd var_228 = ""
  loc_6D2B22: FFreeVar var_118 = "": var_128 = "": var_178 = "": var_148 = "": var_198 = "": var_188 = "": var_1E8 = "": var_1F8 = "": var_1B8 = "": var_208 = ""
  loc_6D2B3B: ILdRf var_C4
  loc_6D2B3E: LitI4 -1
  loc_6D2B43: NeI4
  loc_6D2B44: FLdI2 var_C0
  loc_6D2B47: LitI2 800
  loc_6D2B4A: GtI2
  loc_6D2B4B: FLdI2 var_C0
  loc_6D2B4E: LitI2_Byte 0
  loc_6D2B50: EqI2
  loc_6D2B51: OrI4
  loc_6D2B52: AndI4
  loc_6D2B53: BranchF loc_6D2B71
  loc_6D2B56: ILdRf var_C4
  loc_6D2B59: LitI4 -1
  loc_6D2B5E: NeI4
  loc_6D2B5F: FLdI2 var_C0
  loc_6D2B62: LitI2 800
  loc_6D2B65: GtI2
  loc_6D2B66: FLdI2 var_C0
  loc_6D2B69: LitI2_Byte 0
  loc_6D2B6B: EqI2
  loc_6D2B6C: OrI4
  loc_6D2B6D: AndI4
  loc_6D2B6E: BranchF loc_6D2B71
  loc_6D2B71: LitI4 1
  loc_6D2B76: FStR4 var_8C
  loc_6D2B79: ExitProcHresult
End Function

Private Function Proc_127_12_6E9F00() '6E9F00
  'Data Table: 438174
  loc_6E9204: ZeroRetValVar
  loc_6E9206: LitVarI4
  loc_6E920E: FStVar var_94
  loc_6E9212: FLdPrThis
  loc_6E9213: VCallAd Control_ID_FechaInicial
  loc_6E9216: FStAdFunc var_A8
  loc_6E9219: FLdPr var_A8
  loc_6E921C: LateIdLdVar var_B8 DispID_22 0
  loc_6E9223: PopAd
  loc_6E9225: LitVarI2 var_CC, 2
  loc_6E922A: LitI4 1
  loc_6E922F: FLdRfVar var_B8
  loc_6E9232: CStrVarTmp
  loc_6E9233: FStStrNoPop var_BC
  loc_6E9236: ImpAdCallI2 Mid$(, , )
  loc_6E923B: FStStr var_14C
  loc_6E923E: FLdPrThis
  loc_6E923F: VCallAd Control_ID_FechaInicial
  loc_6E9242: FStAdFunc var_D0
  loc_6E9245: FLdPr var_D0
  loc_6E9248: LateIdLdVar var_E0 DispID_22 0
  loc_6E924F: PopAd
  loc_6E9251: LitVarI2 var_104, 2
  loc_6E9256: LitI4 4
  loc_6E925B: FLdRfVar var_E0
  loc_6E925E: CStrVarTmp
  loc_6E925F: FStStrNoPop var_E4
  loc_6E9262: ImpAdCallI2 Mid$(, , )
  loc_6E9267: FStStr var_150
  loc_6E926A: FLdPrThis
  loc_6E926B: VCallAd Control_ID_FechaInicial
  loc_6E926E: FStAdFunc var_108
  loc_6E9271: FLdPr var_108
  loc_6E9274: LateIdLdVar var_118 DispID_22 0
  loc_6E927B: PopAd
  loc_6E927D: LitVarI2 var_13C, 4
  loc_6E9282: LitI4 7
  loc_6E9287: FLdRfVar var_118
  loc_6E928A: CStrVarTmp
  loc_6E928B: FStStrNoPop var_11C
  loc_6E928E: ImpAdCallI2 Mid$(, , )
  loc_6E9293: FStStrNoPop var_148
  loc_6E9296: CI2Str
  loc_6E9298: FLdZeroAd var_150
  loc_6E929B: FStStrNoPop var_144
  loc_6E929E: CI2Str
  loc_6E92A0: FLdZeroAd var_14C
  loc_6E92A3: FStStrNoPop var_140
  loc_6E92A6: CI2Str
  loc_6E92A8: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6E92AD: NotI4
  loc_6E92AE: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6E92C1: FFreeAd var_A8 = "": var_D0 = ""
  loc_6E92CA: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6E92D9: BranchF loc_6E93BC
  loc_6E92DC: FLdRfVar var_E4
  loc_6E92DF: LitVar_Missing var_208
  loc_6E92E2: LitVar_Missing var_1E8
  loc_6E92E5: LitVar_Missing var_1C8
  loc_6E92E8: LitVar_Missing var_1A8
  loc_6E92EB: LitVar_Missing var_13C
  loc_6E92EE: LitVar_Missing var_118
  loc_6E92F1: LitVar_Missing var_104
  loc_6E92F4: LitVar_Missing var_E0
  loc_6E92F7: LitVar_Missing var_CC
  loc_6E92FA: LitVar_Missing var_B8
  loc_6E92FD: LitStr "Debe ingresar correctamente la fecha inicial. Verifique por favor."
  loc_6E9300: FStStrCopy var_BC
  loc_6E9303: FLdRfVar var_BC
  loc_6E9306: LitI4 &H15
  loc_6E930B: PopTmpLdAdStr var_158
  loc_6E930E: LitI2_Byte &H4C
  loc_6E9310: PopTmpLdAd2 var_152
  loc_6E9313: ImpAdLdRf MemVar_74C7D0
  loc_6E9316: NewIfNullPr clsMsg
  loc_6E9319: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E931E: FLdRfVar var_140
  loc_6E9321: LitVar_Missing var_350
  loc_6E9324: LitVar_Missing var_330
  loc_6E9327: LitVar_Missing var_310
  loc_6E932A: LitVar_Missing var_2F0
  loc_6E932D: LitVar_Missing var_2D0
  loc_6E9330: LitVar_Missing var_2B0
  loc_6E9333: LitVar_Missing var_290
  loc_6E9336: LitVar_Missing var_270
  loc_6E9339: LitVar_Missing var_250
  loc_6E933C: LitVar_Missing var_230
  loc_6E933F: LitStr "Verificación de datos"
  loc_6E9342: FStStrCopy var_11C
  loc_6E9345: FLdRfVar var_11C
  loc_6E9348: LitI4 &H16
  loc_6E934D: PopTmpLdAdStr var_210
  loc_6E9350: LitI2_Byte &H4C
  loc_6E9352: PopTmpLdAd2 var_20A
  loc_6E9355: ImpAdLdRf MemVar_74C7D0
  loc_6E9358: NewIfNullPr clsMsg
  loc_6E935B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9360: LitVar_Missing var_3B0
  loc_6E9363: LitVar_Missing var_390
  loc_6E9366: FLdZeroAd var_140
  loc_6E9369: CVarStr var_370
  loc_6E936C: LitI4 &H40
  loc_6E9371: FLdZeroAd var_E4
  loc_6E9374: CVarStr var_360
  loc_6E9377: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E937C: FFreeStr var_BC = ""
  loc_6E9383: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E93B6: ExitProcCbHresult
  loc_6E93BC: FLdPrThis
  loc_6E93BD: VCallAd Control_ID_FechaFinal
  loc_6E93C0: FStAdFunc var_A8
  loc_6E93C3: FLdPr var_A8
  loc_6E93C6: LateIdLdVar var_B8 DispID_22 0
  loc_6E93CD: PopAd
  loc_6E93CF: LitVarI2 var_CC, 2
  loc_6E93D4: LitI4 1
  loc_6E93D9: FLdRfVar var_B8
  loc_6E93DC: CStrVarTmp
  loc_6E93DD: FStStrNoPop var_BC
  loc_6E93E0: ImpAdCallI2 Mid$(, , )
  loc_6E93E5: FStStr var_14C
  loc_6E93E8: FLdPrThis
  loc_6E93E9: VCallAd Control_ID_FechaFinal
  loc_6E93EC: FStAdFunc var_D0
  loc_6E93EF: FLdPr var_D0
  loc_6E93F2: LateIdLdVar var_E0 DispID_22 0
  loc_6E93F9: PopAd
  loc_6E93FB: LitVarI2 var_104, 2
  loc_6E9400: LitI4 4
  loc_6E9405: FLdRfVar var_E0
  loc_6E9408: CStrVarTmp
  loc_6E9409: FStStrNoPop var_E4
  loc_6E940C: ImpAdCallI2 Mid$(, , )
  loc_6E9411: FStStr var_150
  loc_6E9414: FLdPrThis
  loc_6E9415: VCallAd Control_ID_FechaFinal
  loc_6E9418: FStAdFunc var_108
  loc_6E941B: FLdPr var_108
  loc_6E941E: LateIdLdVar var_118 DispID_22 0
  loc_6E9425: PopAd
  loc_6E9427: LitVarI2 var_13C, 4
  loc_6E942C: LitI4 7
  loc_6E9431: FLdRfVar var_118
  loc_6E9434: CStrVarTmp
  loc_6E9435: FStStrNoPop var_11C
  loc_6E9438: ImpAdCallI2 Mid$(, , )
  loc_6E943D: FStStrNoPop var_148
  loc_6E9440: CI2Str
  loc_6E9442: FLdZeroAd var_150
  loc_6E9445: FStStrNoPop var_144
  loc_6E9448: CI2Str
  loc_6E944A: FLdZeroAd var_14C
  loc_6E944D: FStStrNoPop var_140
  loc_6E9450: CI2Str
  loc_6E9452: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6E9457: NotI4
  loc_6E9458: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6E946B: FFreeAd var_A8 = "": var_D0 = ""
  loc_6E9474: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6E9483: BranchF loc_6E9566
  loc_6E9486: FLdRfVar var_E4
  loc_6E9489: LitVar_Missing var_208
  loc_6E948C: LitVar_Missing var_1E8
  loc_6E948F: LitVar_Missing var_1C8
  loc_6E9492: LitVar_Missing var_1A8
  loc_6E9495: LitVar_Missing var_13C
  loc_6E9498: LitVar_Missing var_118
  loc_6E949B: LitVar_Missing var_104
  loc_6E949E: LitVar_Missing var_E0
  loc_6E94A1: LitVar_Missing var_CC
  loc_6E94A4: LitVar_Missing var_B8
  loc_6E94A7: LitStr "Debe ingresar correctamente la fecha final. Verifique por favor."
  loc_6E94AA: FStStrCopy var_BC
  loc_6E94AD: FLdRfVar var_BC
  loc_6E94B0: LitI4 &H17
  loc_6E94B5: PopTmpLdAdStr var_158
  loc_6E94B8: LitI2_Byte &H4C
  loc_6E94BA: PopTmpLdAd2 var_152
  loc_6E94BD: ImpAdLdRf MemVar_74C7D0
  loc_6E94C0: NewIfNullPr clsMsg
  loc_6E94C3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E94C8: FLdRfVar var_140
  loc_6E94CB: LitVar_Missing var_350
  loc_6E94CE: LitVar_Missing var_330
  loc_6E94D1: LitVar_Missing var_310
  loc_6E94D4: LitVar_Missing var_2F0
  loc_6E94D7: LitVar_Missing var_2D0
  loc_6E94DA: LitVar_Missing var_2B0
  loc_6E94DD: LitVar_Missing var_290
  loc_6E94E0: LitVar_Missing var_270
  loc_6E94E3: LitVar_Missing var_250
  loc_6E94E6: LitVar_Missing var_230
  loc_6E94E9: LitStr "Verificación de datos"
  loc_6E94EC: FStStrCopy var_11C
  loc_6E94EF: FLdRfVar var_11C
  loc_6E94F2: LitI4 &H16
  loc_6E94F7: PopTmpLdAdStr var_210
  loc_6E94FA: LitI2_Byte &H4C
  loc_6E94FC: PopTmpLdAd2 var_20A
  loc_6E94FF: ImpAdLdRf MemVar_74C7D0
  loc_6E9502: NewIfNullPr clsMsg
  loc_6E9505: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E950A: LitVar_Missing var_3B0
  loc_6E950D: LitVar_Missing var_390
  loc_6E9510: FLdZeroAd var_140
  loc_6E9513: CVarStr var_370
  loc_6E9516: LitI4 &H40
  loc_6E951B: FLdZeroAd var_E4
  loc_6E951E: CVarStr var_360
  loc_6E9521: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E9526: FFreeStr var_BC = ""
  loc_6E952D: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9560: ExitProcCbHresult
  loc_6E9566: FLdPrThis
  loc_6E9567: VCallAd Control_ID_HoraInicial
  loc_6E956A: FStAdFunc var_A8
  loc_6E956D: FLdPr var_A8
  loc_6E9570: LateIdLdVar var_B8 DispID_22 0
  loc_6E9577: CStrVarTmp
  loc_6E9578: CVarStr var_CC
  loc_6E957B: ImpAdCallI2 Proc_53_13_638184()
  loc_6E9580: NotI4
  loc_6E9581: FFree1Ad var_A8
  loc_6E9584: FFreeVar var_B8 = ""
  loc_6E958B: BranchF loc_6E966E
  loc_6E958E: FLdRfVar var_E4
  loc_6E9591: LitVar_Missing var_208
  loc_6E9594: LitVar_Missing var_1E8
  loc_6E9597: LitVar_Missing var_1C8
  loc_6E959A: LitVar_Missing var_1A8
  loc_6E959D: LitVar_Missing var_13C
  loc_6E95A0: LitVar_Missing var_118
  loc_6E95A3: LitVar_Missing var_104
  loc_6E95A6: LitVar_Missing var_E0
  loc_6E95A9: LitVar_Missing var_CC
  loc_6E95AC: LitVar_Missing var_B8
  loc_6E95AF: LitStr "Debe ingresar correctamente la hora inicial. Verifique por favor."
  loc_6E95B2: FStStrCopy var_BC
  loc_6E95B5: FLdRfVar var_BC
  loc_6E95B8: LitI4 &H18
  loc_6E95BD: PopTmpLdAdStr var_158
  loc_6E95C0: LitI2_Byte &H4C
  loc_6E95C2: PopTmpLdAd2 var_152
  loc_6E95C5: ImpAdLdRf MemVar_74C7D0
  loc_6E95C8: NewIfNullPr clsMsg
  loc_6E95CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E95D0: FLdRfVar var_140
  loc_6E95D3: LitVar_Missing var_350
  loc_6E95D6: LitVar_Missing var_330
  loc_6E95D9: LitVar_Missing var_310
  loc_6E95DC: LitVar_Missing var_2F0
  loc_6E95DF: LitVar_Missing var_2D0
  loc_6E95E2: LitVar_Missing var_2B0
  loc_6E95E5: LitVar_Missing var_290
  loc_6E95E8: LitVar_Missing var_270
  loc_6E95EB: LitVar_Missing var_250
  loc_6E95EE: LitVar_Missing var_230
  loc_6E95F1: LitStr "Verificación de datos"
  loc_6E95F4: FStStrCopy var_11C
  loc_6E95F7: FLdRfVar var_11C
  loc_6E95FA: LitI4 &H16
  loc_6E95FF: PopTmpLdAdStr var_210
  loc_6E9602: LitI2_Byte &H4C
  loc_6E9604: PopTmpLdAd2 var_20A
  loc_6E9607: ImpAdLdRf MemVar_74C7D0
  loc_6E960A: NewIfNullPr clsMsg
  loc_6E960D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9612: LitVar_Missing var_3B0
  loc_6E9615: LitVar_Missing var_390
  loc_6E9618: FLdZeroAd var_140
  loc_6E961B: CVarStr var_370
  loc_6E961E: LitI4 &H40
  loc_6E9623: FLdZeroAd var_E4
  loc_6E9626: CVarStr var_360
  loc_6E9629: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E962E: FFreeStr var_BC = ""
  loc_6E9635: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9668: ExitProcCbHresult
  loc_6E966E: FLdPrThis
  loc_6E966F: VCallAd Control_ID_HoraFinal
  loc_6E9672: FStAdFunc var_A8
  loc_6E9675: FLdPr var_A8
  loc_6E9678: LateIdLdVar var_B8 DispID_22 0
  loc_6E967F: CStrVarTmp
  loc_6E9680: CVarStr var_CC
  loc_6E9683: ImpAdCallI2 Proc_53_13_638184()
  loc_6E9688: NotI4
  loc_6E9689: FFree1Ad var_A8
  loc_6E968C: FFreeVar var_B8 = ""
  loc_6E9693: BranchF loc_6E9776
  loc_6E9696: FLdRfVar var_E4
  loc_6E9699: LitVar_Missing var_208
  loc_6E969C: LitVar_Missing var_1E8
  loc_6E969F: LitVar_Missing var_1C8
  loc_6E96A2: LitVar_Missing var_1A8
  loc_6E96A5: LitVar_Missing var_13C
  loc_6E96A8: LitVar_Missing var_118
  loc_6E96AB: LitVar_Missing var_104
  loc_6E96AE: LitVar_Missing var_E0
  loc_6E96B1: LitVar_Missing var_CC
  loc_6E96B4: LitVar_Missing var_B8
  loc_6E96B7: LitStr "Debe ingresar correctamente la hora final. Verifique por favor."
  loc_6E96BA: FStStrCopy var_BC
  loc_6E96BD: FLdRfVar var_BC
  loc_6E96C0: LitI4 &H19
  loc_6E96C5: PopTmpLdAdStr var_158
  loc_6E96C8: LitI2_Byte &H4C
  loc_6E96CA: PopTmpLdAd2 var_152
  loc_6E96CD: ImpAdLdRf MemVar_74C7D0
  loc_6E96D0: NewIfNullPr clsMsg
  loc_6E96D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E96D8: FLdRfVar var_140
  loc_6E96DB: LitVar_Missing var_350
  loc_6E96DE: LitVar_Missing var_330
  loc_6E96E1: LitVar_Missing var_310
  loc_6E96E4: LitVar_Missing var_2F0
  loc_6E96E7: LitVar_Missing var_2D0
  loc_6E96EA: LitVar_Missing var_2B0
  loc_6E96ED: LitVar_Missing var_290
  loc_6E96F0: LitVar_Missing var_270
  loc_6E96F3: LitVar_Missing var_250
  loc_6E96F6: LitVar_Missing var_230
  loc_6E96F9: LitStr "Verificación de datos"
  loc_6E96FC: FStStrCopy var_11C
  loc_6E96FF: FLdRfVar var_11C
  loc_6E9702: LitI4 &H16
  loc_6E9707: PopTmpLdAdStr var_210
  loc_6E970A: LitI2_Byte &H4C
  loc_6E970C: PopTmpLdAd2 var_20A
  loc_6E970F: ImpAdLdRf MemVar_74C7D0
  loc_6E9712: NewIfNullPr clsMsg
  loc_6E9715: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E971A: LitVar_Missing var_3B0
  loc_6E971D: LitVar_Missing var_390
  loc_6E9720: FLdZeroAd var_140
  loc_6E9723: CVarStr var_370
  loc_6E9726: LitI4 &H40
  loc_6E972B: FLdZeroAd var_E4
  loc_6E972E: CVarStr var_360
  loc_6E9731: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E9736: FFreeStr var_BC = ""
  loc_6E973D: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9770: ExitProcCbHresult
  loc_6E9776: FLdPrThis
  loc_6E9777: VCallAd Control_ID_FechaInicial
  loc_6E977A: FStAdFunc var_A8
  loc_6E977D: FLdPr var_A8
  loc_6E9780: LateIdLdVar var_B8 DispID_22 0
  loc_6E9787: PopAd
  loc_6E9789: LitVarI2 var_CC, 4
  loc_6E978E: LitI4 7
  loc_6E9793: FLdRfVar var_B8
  loc_6E9796: CStrVarTmp
  loc_6E9797: FStStrNoPop var_BC
  loc_6E979A: ImpAdCallI2 Mid$(, , )
  loc_6E979F: FStStrNoPop var_E4
  loc_6E97A2: CR8Str
  loc_6E97A4: LitI2 1970
  loc_6E97A7: CR8I2
  loc_6E97A8: LtR8
  loc_6E97A9: FFreeStr var_BC = ""
  loc_6E97B0: FFree1Ad var_A8
  loc_6E97B3: FFreeVar var_B8 = ""
  loc_6E97BA: BranchF loc_6E989D
  loc_6E97BD: FLdRfVar var_E4
  loc_6E97C0: LitVar_Missing var_208
  loc_6E97C3: LitVar_Missing var_1E8
  loc_6E97C6: LitVar_Missing var_1C8
  loc_6E97C9: LitVar_Missing var_1A8
  loc_6E97CC: LitVar_Missing var_13C
  loc_6E97CF: LitVar_Missing var_118
  loc_6E97D2: LitVar_Missing var_104
  loc_6E97D5: LitVar_Missing var_E0
  loc_6E97D8: LitVar_Missing var_CC
  loc_6E97DB: LitVar_Missing var_B8
  loc_6E97DE: LitStr "Debe ingresar una fecha inicial mayor a 1970. Verifique por favor."
  loc_6E97E1: FStStrCopy var_BC
  loc_6E97E4: FLdRfVar var_BC
  loc_6E97E7: LitI4 &H1A
  loc_6E97EC: PopTmpLdAdStr var_158
  loc_6E97EF: LitI2_Byte &H4C
  loc_6E97F1: PopTmpLdAd2 var_152
  loc_6E97F4: ImpAdLdRf MemVar_74C7D0
  loc_6E97F7: NewIfNullPr clsMsg
  loc_6E97FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E97FF: FLdRfVar var_140
  loc_6E9802: LitVar_Missing var_350
  loc_6E9805: LitVar_Missing var_330
  loc_6E9808: LitVar_Missing var_310
  loc_6E980B: LitVar_Missing var_2F0
  loc_6E980E: LitVar_Missing var_2D0
  loc_6E9811: LitVar_Missing var_2B0
  loc_6E9814: LitVar_Missing var_290
  loc_6E9817: LitVar_Missing var_270
  loc_6E981A: LitVar_Missing var_250
  loc_6E981D: LitVar_Missing var_230
  loc_6E9820: LitStr "Verificación de datos"
  loc_6E9823: FStStrCopy var_11C
  loc_6E9826: FLdRfVar var_11C
  loc_6E9829: LitI4 &H16
  loc_6E982E: PopTmpLdAdStr var_210
  loc_6E9831: LitI2_Byte &H4C
  loc_6E9833: PopTmpLdAd2 var_20A
  loc_6E9836: ImpAdLdRf MemVar_74C7D0
  loc_6E9839: NewIfNullPr clsMsg
  loc_6E983C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9841: LitVar_Missing var_3B0
  loc_6E9844: LitVar_Missing var_390
  loc_6E9847: FLdZeroAd var_140
  loc_6E984A: CVarStr var_370
  loc_6E984D: LitI4 &H40
  loc_6E9852: FLdZeroAd var_E4
  loc_6E9855: CVarStr var_360
  loc_6E9858: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E985D: FFreeStr var_BC = ""
  loc_6E9864: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9897: ExitProcCbHresult
  loc_6E989D: FLdPrThis
  loc_6E989E: VCallAd Control_ID_FechaFinal
  loc_6E98A1: FStAdFunc var_A8
  loc_6E98A4: FLdPr var_A8
  loc_6E98A7: LateIdLdVar var_B8 DispID_22 0
  loc_6E98AE: PopAd
  loc_6E98B0: LitVarI2 var_CC, 4
  loc_6E98B5: LitI4 7
  loc_6E98BA: FLdRfVar var_B8
  loc_6E98BD: CStrVarTmp
  loc_6E98BE: FStStrNoPop var_BC
  loc_6E98C1: ImpAdCallI2 Mid$(, , )
  loc_6E98C6: FStStrNoPop var_E4
  loc_6E98C9: CR8Str
  loc_6E98CB: LitI2 1970
  loc_6E98CE: CR8I2
  loc_6E98CF: LtR8
  loc_6E98D0: FFreeStr var_BC = ""
  loc_6E98D7: FFree1Ad var_A8
  loc_6E98DA: FFreeVar var_B8 = ""
  loc_6E98E1: BranchF loc_6E99C4
  loc_6E98E4: FLdRfVar var_E4
  loc_6E98E7: LitVar_Missing var_208
  loc_6E98EA: LitVar_Missing var_1E8
  loc_6E98ED: LitVar_Missing var_1C8
  loc_6E98F0: LitVar_Missing var_1A8
  loc_6E98F3: LitVar_Missing var_13C
  loc_6E98F6: LitVar_Missing var_118
  loc_6E98F9: LitVar_Missing var_104
  loc_6E98FC: LitVar_Missing var_E0
  loc_6E98FF: LitVar_Missing var_CC
  loc_6E9902: LitVar_Missing var_B8
  loc_6E9905: LitStr "Debe ingresar una fecha final mayor a 1970. Verifique por favor."
  loc_6E9908: FStStrCopy var_BC
  loc_6E990B: FLdRfVar var_BC
  loc_6E990E: LitI4 &H1B
  loc_6E9913: PopTmpLdAdStr var_158
  loc_6E9916: LitI2_Byte &H4C
  loc_6E9918: PopTmpLdAd2 var_152
  loc_6E991B: ImpAdLdRf MemVar_74C7D0
  loc_6E991E: NewIfNullPr clsMsg
  loc_6E9921: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9926: FLdRfVar var_140
  loc_6E9929: LitVar_Missing var_350
  loc_6E992C: LitVar_Missing var_330
  loc_6E992F: LitVar_Missing var_310
  loc_6E9932: LitVar_Missing var_2F0
  loc_6E9935: LitVar_Missing var_2D0
  loc_6E9938: LitVar_Missing var_2B0
  loc_6E993B: LitVar_Missing var_290
  loc_6E993E: LitVar_Missing var_270
  loc_6E9941: LitVar_Missing var_250
  loc_6E9944: LitVar_Missing var_230
  loc_6E9947: LitStr "Verificación de datos"
  loc_6E994A: FStStrCopy var_11C
  loc_6E994D: FLdRfVar var_11C
  loc_6E9950: LitI4 &H16
  loc_6E9955: PopTmpLdAdStr var_210
  loc_6E9958: LitI2_Byte &H4C
  loc_6E995A: PopTmpLdAd2 var_20A
  loc_6E995D: ImpAdLdRf MemVar_74C7D0
  loc_6E9960: NewIfNullPr clsMsg
  loc_6E9963: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9968: LitVar_Missing var_3B0
  loc_6E996B: LitVar_Missing var_390
  loc_6E996E: FLdZeroAd var_140
  loc_6E9971: CVarStr var_370
  loc_6E9974: LitI4 &H40
  loc_6E9979: FLdZeroAd var_E4
  loc_6E997C: CVarStr var_360
  loc_6E997F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E9984: FFreeStr var_BC = ""
  loc_6E998B: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E99BE: ExitProcCbHresult
  loc_6E99C4: FLdPrThis
  loc_6E99C5: VCallAd Control_ID_FechaInicial
  loc_6E99C8: FStAdFunc var_A8
  loc_6E99CB: FLdPr var_A8
  loc_6E99CE: LateIdLdVar var_B8 DispID_22 0
  loc_6E99D5: PopAd
  loc_6E99D7: LitVarI2 var_CC, 2
  loc_6E99DC: LitI4 1
  loc_6E99E1: FLdRfVar var_B8
  loc_6E99E4: CStrVarTmp
  loc_6E99E5: FStStrNoPop var_BC
  loc_6E99E8: ImpAdCallI2 Mid$(, , )
  loc_6E99ED: FStStr var_3D0
  loc_6E99F0: FLdPrThis
  loc_6E99F1: VCallAd Control_ID_FechaInicial
  loc_6E99F4: FStAdFunc var_D0
  loc_6E99F7: FLdPr var_D0
  loc_6E99FA: LateIdLdVar var_E0 DispID_22 0
  loc_6E9A01: PopAd
  loc_6E9A03: LitVarI2 var_104, 2
  loc_6E9A08: LitI4 4
  loc_6E9A0D: FLdRfVar var_E0
  loc_6E9A10: CStrVarTmp
  loc_6E9A11: FStStrNoPop var_E4
  loc_6E9A14: ImpAdCallI2 Mid$(, , )
  loc_6E9A19: FStStr var_3D4
  loc_6E9A1C: FLdPrThis
  loc_6E9A1D: VCallAd Control_ID_FechaInicial
  loc_6E9A20: FStAdFunc var_108
  loc_6E9A23: FLdPr var_108
  loc_6E9A26: LateIdLdVar var_118 DispID_22 0
  loc_6E9A2D: PopAd
  loc_6E9A2F: LitVarI2 var_13C, 4
  loc_6E9A34: LitI4 7
  loc_6E9A39: FLdRfVar var_118
  loc_6E9A3C: CStrVarTmp
  loc_6E9A3D: FStStrNoPop var_11C
  loc_6E9A40: ImpAdCallI2 Mid$(, , )
  loc_6E9A45: FStStr var_3D8
  loc_6E9A48: FLdPrThis
  loc_6E9A49: VCallAd Control_ID_FechaFinal
  loc_6E9A4C: FStAdFunc var_3B4
  loc_6E9A4F: FLdPr var_3B4
  loc_6E9A52: LateIdLdVar var_1A8 DispID_22 0
  loc_6E9A59: PopAd
  loc_6E9A5B: LitVarI2 var_1C8, 2
  loc_6E9A60: LitI4 1
  loc_6E9A65: FLdRfVar var_1A8
  loc_6E9A68: CStrVarTmp
  loc_6E9A69: FStStrNoPop var_140
  loc_6E9A6C: ImpAdCallI2 Mid$(, , )
  loc_6E9A71: FStStr var_3DC
  loc_6E9A74: FLdPrThis
  loc_6E9A75: VCallAd Control_ID_FechaFinal
  loc_6E9A78: FStAdFunc var_3B8
  loc_6E9A7B: FLdPr var_3B8
  loc_6E9A7E: LateIdLdVar var_1E8 DispID_22 0
  loc_6E9A85: PopAd
  loc_6E9A87: LitVarI2 var_208, 2
  loc_6E9A8C: LitI4 4
  loc_6E9A91: FLdRfVar var_1E8
  loc_6E9A94: CStrVarTmp
  loc_6E9A95: FStStrNoPop var_144
  loc_6E9A98: ImpAdCallI2 Mid$(, , )
  loc_6E9A9D: FStStr var_3E0
  loc_6E9AA0: FLdPrThis
  loc_6E9AA1: VCallAd Control_ID_FechaFinal
  loc_6E9AA4: FStAdFunc var_3BC
  loc_6E9AA7: FLdPr var_3BC
  loc_6E9AAA: LateIdLdVar var_230 DispID_22 0
  loc_6E9AB1: PopAd
  loc_6E9AB3: LitVarI2 var_250, 4
  loc_6E9AB8: LitI4 7
  loc_6E9ABD: FLdRfVar var_230
  loc_6E9AC0: CStrVarTmp
  loc_6E9AC1: FStStrNoPop var_148
  loc_6E9AC4: ImpAdCallI2 Mid$(, , )
  loc_6E9AC9: FStStrNoPop var_3CC
  loc_6E9ACC: CI2Str
  loc_6E9ACE: FLdZeroAd var_3E0
  loc_6E9AD1: FStStrNoPop var_3C8
  loc_6E9AD4: CI2Str
  loc_6E9AD6: FLdZeroAd var_3DC
  loc_6E9AD9: FStStrNoPop var_3C4
  loc_6E9ADC: CI2Str
  loc_6E9ADE: FLdZeroAd var_3D8
  loc_6E9AE1: FStStrNoPop var_3C0
  loc_6E9AE4: CI2Str
  loc_6E9AE6: FLdZeroAd var_3D4
  loc_6E9AE9: FStStrNoPop var_150
  loc_6E9AEC: CI2Str
  loc_6E9AEE: FLdZeroAd var_3D0
  loc_6E9AF1: FStStrNoPop var_14C
  loc_6E9AF4: CI2Str
  loc_6E9AF6: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6E9AFB: LitI2_Byte 0
  loc_6E9AFD: GtI2
  loc_6E9AFE: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6E9B23: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6E9B32: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6E9B4D: BranchF loc_6E9C33
  loc_6E9B50: FLdRfVar var_E4
  loc_6E9B53: LitVar_Missing var_208
  loc_6E9B56: LitVar_Missing var_1E8
  loc_6E9B59: LitVar_Missing var_1C8
  loc_6E9B5C: LitVar_Missing var_1A8
  loc_6E9B5F: LitVar_Missing var_13C
  loc_6E9B62: LitVar_Missing var_118
  loc_6E9B65: LitVar_Missing var_104
  loc_6E9B68: LitVar_Missing var_E0
  loc_6E9B6B: LitVar_Missing var_CC
  loc_6E9B6E: LitVar_Missing var_B8
  loc_6E9B71: LitStr "Debe ingresar una fecha inicial menor o igual a la final. Verifique por favor."
  loc_6E9B74: FStStrCopy var_BC
  loc_6E9B77: FLdRfVar var_BC
  loc_6E9B7A: LitI4 &H1C
  loc_6E9B7F: PopTmpLdAdStr var_158
  loc_6E9B82: LitI2_Byte &H4C
  loc_6E9B84: PopTmpLdAd2 var_152
  loc_6E9B87: ImpAdLdRf MemVar_74C7D0
  loc_6E9B8A: NewIfNullPr clsMsg
  loc_6E9B8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9B92: FLdRfVar var_140
  loc_6E9B95: LitVar_Missing var_350
  loc_6E9B98: LitVar_Missing var_330
  loc_6E9B9B: LitVar_Missing var_310
  loc_6E9B9E: LitVar_Missing var_2F0
  loc_6E9BA1: LitVar_Missing var_2D0
  loc_6E9BA4: LitVar_Missing var_2B0
  loc_6E9BA7: LitVar_Missing var_290
  loc_6E9BAA: LitVar_Missing var_270
  loc_6E9BAD: LitVar_Missing var_250
  loc_6E9BB0: LitVar_Missing var_230
  loc_6E9BB3: LitStr "Verificación de datos"
  loc_6E9BB6: FStStrCopy var_11C
  loc_6E9BB9: FLdRfVar var_11C
  loc_6E9BBC: LitI4 &H16
  loc_6E9BC1: PopTmpLdAdStr var_210
  loc_6E9BC4: LitI2_Byte &H4C
  loc_6E9BC6: PopTmpLdAd2 var_20A
  loc_6E9BC9: ImpAdLdRf MemVar_74C7D0
  loc_6E9BCC: NewIfNullPr clsMsg
  loc_6E9BCF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9BD4: LitVar_Missing var_3B0
  loc_6E9BD7: LitVar_Missing var_390
  loc_6E9BDA: FLdZeroAd var_140
  loc_6E9BDD: CVarStr var_370
  loc_6E9BE0: LitI4 &H40
  loc_6E9BE5: FLdZeroAd var_E4
  loc_6E9BE8: CVarStr var_360
  loc_6E9BEB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E9BF0: FFreeStr var_BC = ""
  loc_6E9BF7: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9C2A: ExitProcCbHresult
  loc_6E9C30: Branch loc_6E9EEE
  loc_6E9C33: FLdPrThis
  loc_6E9C34: VCallAd Control_ID_FechaInicial
  loc_6E9C37: FStAdFunc var_A8
  loc_6E9C3A: FLdPr var_A8
  loc_6E9C3D: LateIdLdVar var_B8 DispID_22 0
  loc_6E9C44: PopAd
  loc_6E9C46: LitVarI2 var_CC, 2
  loc_6E9C4B: LitI4 1
  loc_6E9C50: FLdRfVar var_B8
  loc_6E9C53: CStrVarTmp
  loc_6E9C54: FStStrNoPop var_BC
  loc_6E9C57: ImpAdCallI2 Mid$(, , )
  loc_6E9C5C: FStStr var_3D0
  loc_6E9C5F: FLdPrThis
  loc_6E9C60: VCallAd Control_ID_FechaInicial
  loc_6E9C63: FStAdFunc var_D0
  loc_6E9C66: FLdPr var_D0
  loc_6E9C69: LateIdLdVar var_E0 DispID_22 0
  loc_6E9C70: PopAd
  loc_6E9C72: LitVarI2 var_104, 2
  loc_6E9C77: LitI4 4
  loc_6E9C7C: FLdRfVar var_E0
  loc_6E9C7F: CStrVarTmp
  loc_6E9C80: FStStrNoPop var_E4
  loc_6E9C83: ImpAdCallI2 Mid$(, , )
  loc_6E9C88: FStStr var_3D4
  loc_6E9C8B: FLdPrThis
  loc_6E9C8C: VCallAd Control_ID_FechaInicial
  loc_6E9C8F: FStAdFunc var_108
  loc_6E9C92: FLdPr var_108
  loc_6E9C95: LateIdLdVar var_118 DispID_22 0
  loc_6E9C9C: PopAd
  loc_6E9C9E: LitVarI2 var_13C, 4
  loc_6E9CA3: LitI4 7
  loc_6E9CA8: FLdRfVar var_118
  loc_6E9CAB: CStrVarTmp
  loc_6E9CAC: FStStrNoPop var_11C
  loc_6E9CAF: ImpAdCallI2 Mid$(, , )
  loc_6E9CB4: FStStr var_3D8
  loc_6E9CB7: FLdPrThis
  loc_6E9CB8: VCallAd Control_ID_FechaFinal
  loc_6E9CBB: FStAdFunc var_3B4
  loc_6E9CBE: FLdPr var_3B4
  loc_6E9CC1: LateIdLdVar var_1A8 DispID_22 0
  loc_6E9CC8: PopAd
  loc_6E9CCA: LitVarI2 var_1C8, 2
  loc_6E9CCF: LitI4 1
  loc_6E9CD4: FLdRfVar var_1A8
  loc_6E9CD7: CStrVarTmp
  loc_6E9CD8: FStStrNoPop var_140
  loc_6E9CDB: ImpAdCallI2 Mid$(, , )
  loc_6E9CE0: FStStr var_3DC
  loc_6E9CE3: FLdPrThis
  loc_6E9CE4: VCallAd Control_ID_FechaFinal
  loc_6E9CE7: FStAdFunc var_3B8
  loc_6E9CEA: FLdPr var_3B8
  loc_6E9CED: LateIdLdVar var_1E8 DispID_22 0
  loc_6E9CF4: PopAd
  loc_6E9CF6: LitVarI2 var_208, 2
  loc_6E9CFB: LitI4 4
  loc_6E9D00: FLdRfVar var_1E8
  loc_6E9D03: CStrVarTmp
  loc_6E9D04: FStStrNoPop var_144
  loc_6E9D07: ImpAdCallI2 Mid$(, , )
  loc_6E9D0C: FStStr var_3E0
  loc_6E9D0F: FLdPrThis
  loc_6E9D10: VCallAd Control_ID_FechaFinal
  loc_6E9D13: FStAdFunc var_3BC
  loc_6E9D16: FLdPr var_3BC
  loc_6E9D19: LateIdLdVar var_230 DispID_22 0
  loc_6E9D20: PopAd
  loc_6E9D22: LitVarI2 var_250, 4
  loc_6E9D27: LitI4 7
  loc_6E9D2C: FLdRfVar var_230
  loc_6E9D2F: CStrVarTmp
  loc_6E9D30: FStStrNoPop var_148
  loc_6E9D33: ImpAdCallI2 Mid$(, , )
  loc_6E9D38: FStStrNoPop var_3CC
  loc_6E9D3B: CI2Str
  loc_6E9D3D: FLdZeroAd var_3E0
  loc_6E9D40: FStStrNoPop var_3C8
  loc_6E9D43: CI2Str
  loc_6E9D45: FLdZeroAd var_3DC
  loc_6E9D48: FStStrNoPop var_3C4
  loc_6E9D4B: CI2Str
  loc_6E9D4D: FLdZeroAd var_3D8
  loc_6E9D50: FStStrNoPop var_3C0
  loc_6E9D53: CI2Str
  loc_6E9D55: FLdZeroAd var_3D4
  loc_6E9D58: FStStrNoPop var_150
  loc_6E9D5B: CI2Str
  loc_6E9D5D: FLdZeroAd var_3D0
  loc_6E9D60: FStStrNoPop var_14C
  loc_6E9D63: CI2Str
  loc_6E9D65: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6E9D6A: LitI2_Byte 0
  loc_6E9D6C: EqI2
  loc_6E9D6D: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6E9D92: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6E9DA1: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6E9DBC: BranchF loc_6E9EEE
  loc_6E9DBF: FLdPrThis
  loc_6E9DC0: VCallAd Control_ID_HoraInicial
  loc_6E9DC3: FStAdFunc var_A8
  loc_6E9DC6: FLdPr var_A8
  loc_6E9DC9: LateIdLdVar var_B8 DispID_22 0
  loc_6E9DD0: PopAd
  loc_6E9DD2: FLdPrThis
  loc_6E9DD3: VCallAd Control_ID_HoraFinal
  loc_6E9DD6: FStAdFunc var_D0
  loc_6E9DD9: FLdPr var_D0
  loc_6E9DDC: LateIdLdVar var_CC DispID_22 0
  loc_6E9DE3: CStrVarTmp
  loc_6E9DE4: FStStrNoPop var_E4
  loc_6E9DE7: FLdRfVar var_B8
  loc_6E9DEA: CStrVarTmp
  loc_6E9DEB: FStStrNoPop var_BC
  loc_6E9DEE: ImpAdCallI2 Proc_65_3_641944(, )
  loc_6E9DF3: LitI2_Byte 0
  loc_6E9DF5: GtI2
  loc_6E9DF6: FFreeStr var_BC = ""
  loc_6E9DFD: FFreeAd var_A8 = ""
  loc_6E9E04: FFreeVar var_B8 = ""
  loc_6E9E0B: BranchF loc_6E9EEE
  loc_6E9E0E: FLdRfVar var_E4
  loc_6E9E11: LitVar_Missing var_208
  loc_6E9E14: LitVar_Missing var_1E8
  loc_6E9E17: LitVar_Missing var_1C8
  loc_6E9E1A: LitVar_Missing var_1A8
  loc_6E9E1D: LitVar_Missing var_13C
  loc_6E9E20: LitVar_Missing var_118
  loc_6E9E23: LitVar_Missing var_104
  loc_6E9E26: LitVar_Missing var_E0
  loc_6E9E29: LitVar_Missing var_CC
  loc_6E9E2C: LitVar_Missing var_B8
  loc_6E9E2F: LitStr "Debe ingresar una hora inicial menor o igual a la final. Verifique por favor."
  loc_6E9E32: FStStrCopy var_BC
  loc_6E9E35: FLdRfVar var_BC
  loc_6E9E38: LitI4 &H1D
  loc_6E9E3D: PopTmpLdAdStr var_158
  loc_6E9E40: LitI2_Byte &H4C
  loc_6E9E42: PopTmpLdAd2 var_152
  loc_6E9E45: ImpAdLdRf MemVar_74C7D0
  loc_6E9E48: NewIfNullPr clsMsg
  loc_6E9E4B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9E50: FLdRfVar var_140
  loc_6E9E53: LitVar_Missing var_350
  loc_6E9E56: LitVar_Missing var_330
  loc_6E9E59: LitVar_Missing var_310
  loc_6E9E5C: LitVar_Missing var_2F0
  loc_6E9E5F: LitVar_Missing var_2D0
  loc_6E9E62: LitVar_Missing var_2B0
  loc_6E9E65: LitVar_Missing var_290
  loc_6E9E68: LitVar_Missing var_270
  loc_6E9E6B: LitVar_Missing var_250
  loc_6E9E6E: LitVar_Missing var_230
  loc_6E9E71: LitStr "Verificación de datos"
  loc_6E9E74: FStStrCopy var_11C
  loc_6E9E77: FLdRfVar var_11C
  loc_6E9E7A: LitI4 &H16
  loc_6E9E7F: PopTmpLdAdStr var_210
  loc_6E9E82: LitI2_Byte &H4C
  loc_6E9E84: PopTmpLdAd2 var_20A
  loc_6E9E87: ImpAdLdRf MemVar_74C7D0
  loc_6E9E8A: NewIfNullPr clsMsg
  loc_6E9E8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E9E92: LitVar_Missing var_3B0
  loc_6E9E95: LitVar_Missing var_390
  loc_6E9E98: FLdZeroAd var_140
  loc_6E9E9B: CVarStr var_370
  loc_6E9E9E: LitI4 &H40
  loc_6E9EA3: FLdZeroAd var_E4
  loc_6E9EA6: CVarStr var_360
  loc_6E9EA9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E9EAE: FFreeStr var_BC = ""
  loc_6E9EB5: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6E9EE8: ExitProcCbHresult
  loc_6E9EEE: LitVarI4
  loc_6E9EF6: FStVar var_94
  loc_6E9EFA: ExitProcCbHresult
End Function

Private Function Proc_127_13_6F6F20(arg_C) '6F6F20
  'Data Table: 438174
  loc_6F6078: ILdRf arg_C
  loc_6F607B: FStStrCopy var_88
  loc_6F607E: FLdRfVar var_F0
  loc_6F6081: NewIfNullAd
  loc_6F6084: FStAd var_F4 
  loc_6F6088: LitI2_Byte &HFF
  loc_6F608A: FLdPr var_F4
  loc_6F6092: LitStr "Courier New"
  loc_6F6095: FLdPr var_F4
  loc_6F6098: Reset
  loc_6F609D: LitI2_Byte &H16
  loc_6F609F: CR8I2
  loc_6F60A0: PopFPR4
  loc_6F60A1: FLdPr var_F4
  loc_6F60A9: LitNothing
  loc_6F60AB: FStAd var_F4 
  loc_6F60AF: FLdRfVar var_244
  loc_6F60B2: LitVar_Missing var_240
  loc_6F60B5: LitVar_Missing var_220
  loc_6F60B8: LitVar_Missing var_200
  loc_6F60BB: LitVar_Missing var_1E0
  loc_6F60BE: LitVar_Missing var_1C0
  loc_6F60C1: LitVar_Missing var_1A0
  loc_6F60C4: LitVar_Missing var_180
  loc_6F60C7: LitVar_Missing var_160
  loc_6F60CA: LitVar_Missing var_140
  loc_6F60CD: LitVar_Missing var_120
  loc_6F60D0: LitStr "Totales de Playeros"
  loc_6F60D3: FStStrCopy var_100
  loc_6F60D6: FLdRfVar var_100
  loc_6F60D9: LitI4 1
  loc_6F60DE: PopTmpLdAdStr var_FC
  loc_6F60E1: LitI2_Byte &H4C
  loc_6F60E3: PopTmpLdAd2 var_F6
  loc_6F60E6: ImpAdLdRf MemVar_74C7D0
  loc_6F60E9: NewIfNullPr clsMsg
  loc_6F60EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F60F1: FLdRfVar var_24A
  loc_6F60F4: FLdRfVar var_F0
  loc_6F60F7: NewIfNullRf
  loc_6F60FB: FLdZeroAd var_244
  loc_6F60FE: PopTmpLdAdStr
  loc_6F6102: FLdRfVar var_EC
  loc_6F6105: NewIfNullPr CReporte
  loc_6F6108:  = CReporte.BackColor
  loc_6F610D: FFreeStr var_100 = ""
  loc_6F6114: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = ""
  loc_6F612B: FLdRfVar var_F6
  loc_6F612E: FLdRfVar var_F0
  loc_6F6131: NewIfNullRf
  loc_6F6135: LitStr vbNullString
  loc_6F6138: FStStrCopy var_100
  loc_6F613B: FLdRfVar var_100
  loc_6F613E: FLdRfVar var_EC
  loc_6F6141: NewIfNullPr CReporte
  loc_6F6144: Call 0.Method_arg_5C ()
  loc_6F6149: FFree1Str var_100
  loc_6F614C: LitI2_Byte 0
  loc_6F614E: FLdRfVar var_F0
  loc_6F6151: NewIfNullPr CFuente
  loc_6F6159: LitI2_Byte 8
  loc_6F615B: CR8I2
  loc_6F615C: PopFPR4
  loc_6F615D: FLdRfVar var_F0
  loc_6F6160: NewIfNullPr CFuente
  loc_6F6168: FLdRfVar var_244
  loc_6F616B: LitVar_Missing var_240
  loc_6F616E: LitVar_Missing var_220
  loc_6F6171: LitVar_Missing var_200
  loc_6F6174: LitVar_Missing var_1E0
  loc_6F6177: LitVar_Missing var_1C0
  loc_6F617A: LitVar_Missing var_1A0
  loc_6F617D: LitVar_Missing var_180
  loc_6F6180: LitVar_Missing var_160
  loc_6F6183: LitVar_Missing var_140
  loc_6F6186: LitVar_Missing var_120
  loc_6F6189: LitStr "Rango =   Desde:"
  loc_6F618C: FStStrCopy var_100
  loc_6F618F: FLdRfVar var_100
  loc_6F6192: LitI4 &H1E
  loc_6F6197: PopTmpLdAdStr var_FC
  loc_6F619A: LitI2_Byte &H4C
  loc_6F619C: PopTmpLdAd2 var_F6
  loc_6F619F: ImpAdLdRf MemVar_74C7D0
  loc_6F61A2: NewIfNullPr clsMsg
  loc_6F61A5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F61AA: FLdPrThis
  loc_6F61AB: VCallAd Control_ID_FechaInicial
  loc_6F61AE: FStAdFunc var_250
  loc_6F61B1: FLdPr var_250
  loc_6F61B4: LateIdLdVar var_260 DispID_22 0
  loc_6F61BB: PopAd
  loc_6F61BD: FLdPrThis
  loc_6F61BE: VCallAd Control_ID_HoraInicial
  loc_6F61C1: FStAdFunc var_26C
  loc_6F61C4: FLdPr var_26C
  loc_6F61C7: LateIdLdVar var_27C DispID_22 0
  loc_6F61CE: PopAd
  loc_6F61D0: FLdRfVar var_3D0
  loc_6F61D3: LitVar_Missing var_3CC
  loc_6F61D6: LitVar_Missing var_3AC
  loc_6F61D9: LitVar_Missing var_38C
  loc_6F61DC: LitVar_Missing var_36C
  loc_6F61DF: LitVar_Missing var_34C
  loc_6F61E2: LitVar_Missing var_32C
  loc_6F61E5: LitVar_Missing var_30C
  loc_6F61E8: LitVar_Missing var_2EC
  loc_6F61EB: LitVar_Missing var_2CC
  loc_6F61EE: LitVar_Missing var_2AC
  loc_6F61F1: LitStr "  -  Hasta:"
  loc_6F61F4: FStStrCopy var_28C
  loc_6F61F7: FLdRfVar var_28C
  loc_6F61FA: LitI4 &H1F
  loc_6F61FF: PopTmpLdAdStr var_288
  loc_6F6202: LitI2_Byte &H4C
  loc_6F6204: PopTmpLdAd2 var_24A
  loc_6F6207: ImpAdLdRf MemVar_74C7D0
  loc_6F620A: NewIfNullPr clsMsg
  loc_6F620D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F6212: FLdPrThis
  loc_6F6213: VCallAd Control_ID_FechaFinal
  loc_6F6216: FStAdFunc var_3DC
  loc_6F6219: FLdPr var_3DC
  loc_6F621C: LateIdLdVar var_3EC DispID_22 0
  loc_6F6223: PopAd
  loc_6F6225: FLdPrThis
  loc_6F6226: VCallAd Control_ID_HoraFinal
  loc_6F6229: FStAdFunc var_3FC
  loc_6F622C: FLdPr var_3FC
  loc_6F622F: LateIdLdVar var_40C DispID_22 0
  loc_6F6236: PopAd
  loc_6F6238: FLdRfVar var_41A
  loc_6F623B: FLdRfVar var_F0
  loc_6F623E: NewIfNullRf
  loc_6F6242: ILdRf var_244
  loc_6F6245: LitStr " "
  loc_6F6248: ConcatStr
  loc_6F6249: FStStrNoPop var_248
  loc_6F624C: FLdRfVar var_260
  loc_6F624F: CStrVarTmp
  loc_6F6250: FStStrNoPop var_264
  loc_6F6253: ConcatStr
  loc_6F6254: FStStrNoPop var_268
  loc_6F6257: LitStr "  "
  loc_6F625A: ConcatStr
  loc_6F625B: FStStrNoPop var_280
  loc_6F625E: FLdRfVar var_27C
  loc_6F6261: CStrVarTmp
  loc_6F6262: FStStrNoPop var_284
  loc_6F6265: ConcatStr
  loc_6F6266: FStStrNoPop var_3D4
  loc_6F6269: ILdRf var_3D0
  loc_6F626C: ConcatStr
  loc_6F626D: FStStrNoPop var_3D8
  loc_6F6270: LitStr " "
  loc_6F6273: ConcatStr
  loc_6F6274: FStStrNoPop var_3F0
  loc_6F6277: FLdRfVar var_3EC
  loc_6F627A: CStrVarTmp
  loc_6F627B: FStStrNoPop var_3F4
  loc_6F627E: ConcatStr
  loc_6F627F: FStStrNoPop var_3F8
  loc_6F6282: LitStr "  "
  loc_6F6285: ConcatStr
  loc_6F6286: FStStrNoPop var_410
  loc_6F6289: FLdRfVar var_40C
  loc_6F628C: CStrVarTmp
  loc_6F628D: FStStrNoPop var_414
  loc_6F6290: ConcatStr
  loc_6F6291: PopTmpLdAdStr
  loc_6F6295: FLdRfVar var_EC
  loc_6F6298: NewIfNullPr CReporte
  loc_6F629B:  = CReporte.hWnd
  loc_6F62A0: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = "": var_268 = "": var_280 = "": var_284 = "": var_28C = "": var_3D4 = "": var_3D0 = "": var_3D8 = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_410 = "": var_414 = ""
  loc_6F62C5: FFreeAd var_250 = "": var_26C = "": var_3DC = ""
  loc_6F62D0: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_27C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3EC = ""
  loc_6F6303: FLdRfVar var_244
  loc_6F6306: LitVar_Missing var_240
  loc_6F6309: LitVar_Missing var_220
  loc_6F630C: LitVar_Missing var_200
  loc_6F630F: LitVar_Missing var_1E0
  loc_6F6312: LitVar_Missing var_1C0
  loc_6F6315: LitVar_Missing var_1A0
  loc_6F6318: LitVar_Missing var_180
  loc_6F631B: LitVar_Missing var_160
  loc_6F631E: LitVar_Missing var_140
  loc_6F6321: LitVar_Missing var_120
  loc_6F6324: LitStr "Fecha:"
  loc_6F6327: FStStrCopy var_100
  loc_6F632A: FLdRfVar var_100
  loc_6F632D: LitI4 &H20
  loc_6F6332: PopTmpLdAdStr var_FC
  loc_6F6335: LitI2_Byte &H4C
  loc_6F6337: PopTmpLdAd2 var_F6
  loc_6F633A: ImpAdLdRf MemVar_74C7D0
  loc_6F633D: NewIfNullPr clsMsg
  loc_6F6340: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F6345: FLdRfVar var_260
  loc_6F6348: ImpAdCallFPR4  = Date
  loc_6F634D: LitI4 1
  loc_6F6352: LitI4 1
  loc_6F6357: LitVarStr var_29C, "dd/mm/yyyy"
  loc_6F635C: FStVarCopyObj var_27C
  loc_6F635F: FLdRfVar var_27C
  loc_6F6362: FLdRfVar var_260
  loc_6F6365: ImpAdCallI2 Format$(, )
  loc_6F636A: FStStr var_3F0
  loc_6F636D: FLdRfVar var_280
  loc_6F6370: LitVar_Missing var_3CC
  loc_6F6373: LitVar_Missing var_3AC
  loc_6F6376: LitVar_Missing var_38C
  loc_6F6379: LitVar_Missing var_36C
  loc_6F637C: LitVar_Missing var_34C
  loc_6F637F: LitVar_Missing var_32C
  loc_6F6382: LitVar_Missing var_30C
  loc_6F6385: LitVar_Missing var_2EC
  loc_6F6388: LitVar_Missing var_2CC
  loc_6F638B: LitVar_Missing var_2AC
  loc_6F638E: LitStr "  -  Hora:"
  loc_6F6391: FStStrCopy var_268
  loc_6F6394: FLdRfVar var_268
  loc_6F6397: LitI4 &H21
  loc_6F639C: PopTmpLdAdStr var_288
  loc_6F639F: LitI2_Byte &H4C
  loc_6F63A1: PopTmpLdAd2 var_24A
  loc_6F63A4: ImpAdLdRf MemVar_74C7D0
  loc_6F63A7: NewIfNullPr clsMsg
  loc_6F63AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F63AF: FLdRfVar var_3EC
  loc_6F63B2: ImpAdCallFPR4  = Now
  loc_6F63B7: LitI4 1
  loc_6F63BC: LitI4 1
  loc_6F63C1: LitVarStr var_43C, "hh:mm:ss"
  loc_6F63C6: FStVarCopyObj var_40C
  loc_6F63C9: FLdRfVar var_40C
  loc_6F63CC: FLdRfVar var_3EC
  loc_6F63CF: ImpAdCallI2 Format$(, )
  loc_6F63D4: FStStr var_3F4
  loc_6F63D7: FLdRfVar var_41A
  loc_6F63DA: FLdRfVar var_F0
  loc_6F63DD: NewIfNullRf
  loc_6F63E1: ILdRf var_244
  loc_6F63E4: LitStr " "
  loc_6F63E7: ConcatStr
  loc_6F63E8: FStStrNoPop var_248
  loc_6F63EB: FLdZeroAd var_3F0
  loc_6F63EE: FStStrNoPop var_264
  loc_6F63F1: ConcatStr
  loc_6F63F2: FStStrNoPop var_284
  loc_6F63F5: ILdRf var_280
  loc_6F63F8: ConcatStr
  loc_6F63F9: FStStrNoPop var_28C
  loc_6F63FC: LitStr " "
  loc_6F63FF: ConcatStr
  loc_6F6400: FStStrNoPop var_3D0
  loc_6F6403: FLdZeroAd var_3F4
  loc_6F6406: FStStrNoPop var_3D4
  loc_6F6409: ConcatStr
  loc_6F640A: PopTmpLdAdStr
  loc_6F640E: FLdRfVar var_EC
  loc_6F6411: NewIfNullPr CReporte
  loc_6F6414: CReporte.Caption = from_stack_1
  loc_6F6419: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = "": var_268 = "": var_284 = "": var_280 = "": var_28C = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3F0 = ""
  loc_6F6436: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_27C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3EC = ""
  loc_6F6469: LitI2_Byte &HFF
  loc_6F646B: FLdRfVar var_F0
  loc_6F646E: NewIfNullPr CFuente
  loc_6F6476: LitI2_Byte &HC
  loc_6F6478: CR8I2
  loc_6F6479: PopFPR4
  loc_6F647A: FLdRfVar var_F0
  loc_6F647D: NewIfNullPr CFuente
  loc_6F6485: LitI2_Byte &HFF
  loc_6F6487: FLdRfVar var_F0
  loc_6F648A: NewIfNullPr CFuente
  loc_6F648D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F6492: FLdRfVar var_244
  loc_6F6495: LitVar_Missing var_240
  loc_6F6498: LitVar_Missing var_220
  loc_6F649B: LitVar_Missing var_200
  loc_6F649E: LitVar_Missing var_1E0
  loc_6F64A1: LitVar_Missing var_1C0
  loc_6F64A4: LitVar_Missing var_1A0
  loc_6F64A7: LitVar_Missing var_180
  loc_6F64AA: LitVar_Missing var_160
  loc_6F64AD: LitVar_Missing var_140
  loc_6F64B0: LitVar_Missing var_120
  loc_6F64B3: LitStr "Playero                  Monto"
  loc_6F64B6: FStStrCopy var_100
  loc_6F64B9: FLdRfVar var_100
  loc_6F64BC: LitI4 &H22
  loc_6F64C1: PopTmpLdAdStr var_FC
  loc_6F64C4: LitI2_Byte &H4C
  loc_6F64C6: PopTmpLdAd2 var_F6
  loc_6F64C9: ImpAdLdRf MemVar_74C7D0
  loc_6F64CC: NewIfNullPr clsMsg
  loc_6F64CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F64D4: FLdRfVar var_24A
  loc_6F64D7: FLdRfVar var_F0
  loc_6F64DA: NewIfNullRf
  loc_6F64DE: FLdZeroAd var_244
  loc_6F64E1: PopTmpLdAdStr
  loc_6F64E5: FLdRfVar var_EC
  loc_6F64E8: NewIfNullPr CReporte
  loc_6F64EB: Call 0.Method_arg_5C ()
  loc_6F64F0: FFreeStr var_100 = ""
  loc_6F64F7: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = ""
  loc_6F650E: LitI2_Byte &HA
  loc_6F6510: CR8I2
  loc_6F6511: PopFPR4
  loc_6F6512: FLdRfVar var_F0
  loc_6F6515: NewIfNullPr CFuente
  loc_6F651D: LitI2_Byte 0
  loc_6F651F: FLdRfVar var_F0
  loc_6F6522: NewIfNullPr CFuente
  loc_6F6525: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F652A: LitI2_Byte &HFF
  loc_6F652C: FStI2 var_B6
  loc_6F652F: LitI4 -1
  loc_6F6534: FStR4 var_BC
  loc_6F6537: LitI2_Byte &HFF
  loc_6F6539: FStI2 var_BE
  loc_6F653C: LitI2_Byte &HFF
  loc_6F653E: FStI2 var_C0
  loc_6F6541: LitI4 -1
  loc_6F6546: FStR4 var_C4
  loc_6F6549: LitI2_Byte &HFF
  loc_6F654B: FStI2 var_C6
  loc_6F654E: LitI2_Byte 0
  loc_6F6550: CR8I2
  loc_6F6551: FStFPR4 var_CC
  loc_6F6554: LitI2_Byte 0
  loc_6F6556: CR8I2
  loc_6F6557: FStFPR4 var_D0
  loc_6F655A: LitI2_Byte 0
  loc_6F655C: CR8I2
  loc_6F655D: FStFPR4 var_D4
  loc_6F6560: LitI2_Byte 0
  loc_6F6562: CR8I2
  loc_6F6563: FStFPR4 var_D8
  loc_6F6566: LitI2_Byte 0
  loc_6F6568: CR8I2
  loc_6F6569: FStFPR4 var_DC
  loc_6F656C: LitI2_Byte 0
  loc_6F656E: CR8I2
  loc_6F656F: FStFPR4 var_E0
  loc_6F6572: LitI4 1
  loc_6F6577: FStR4 var_8C
  loc_6F657A: LitI2_Byte &H4A
  loc_6F657C: CUI1I2
  loc_6F657E: FStUI1 var_8E
  loc_6F6582: ILdRf var_8C
  loc_6F6585: ILdRf var_88
  loc_6F6588: FnLenStr
  loc_6F6589: LeI4
  loc_6F658A: BranchF loc_6F6C4A
  loc_6F658D: LitVarI2 var_120, 2
  loc_6F6592: ILdRf var_8C
  loc_6F6595: FLdRfVar var_88
  loc_6F6598: CVarRef
  loc_6F659D: FLdRfVar var_140
  loc_6F65A0: ImpAdCallFPR4  = Mid(, , )
  loc_6F65A5: FLdRfVar var_140
  loc_6F65A8: LitVarStr var_150, "/"
  loc_6F65AD: ConcatVar var_160
  loc_6F65B1: LitVarI2 var_180, 2
  loc_6F65B6: ILdRf var_8C
  loc_6F65B9: LitI4 2
  loc_6F65BE: AddI4
  loc_6F65BF: FLdRfVar var_88
  loc_6F65C2: CVarRef
  loc_6F65C7: FLdRfVar var_1A0
  loc_6F65CA: ImpAdCallFPR4  = Mid(, , )
  loc_6F65CF: FLdRfVar var_1A0
  loc_6F65D2: ConcatVar var_1C0
  loc_6F65D6: LitVarStr var_1B0, "/"
  loc_6F65DB: ConcatVar var_1E0
  loc_6F65DF: LitVarI2 var_200, 4
  loc_6F65E4: ILdRf var_8C
  loc_6F65E7: LitI4 4
  loc_6F65EC: AddI4
  loc_6F65ED: FLdRfVar var_88
  loc_6F65F0: CVarRef
  loc_6F65F5: FLdRfVar var_220
  loc_6F65F8: ImpAdCallFPR4  = Mid(, , )
  loc_6F65FD: FLdRfVar var_220
  loc_6F6600: ConcatVar var_240
  loc_6F6604: CStrVarTmp
  loc_6F6605: FStStr var_94
  loc_6F6608: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_1E0 = "": var_220 = ""
  loc_6F661F: LitVarI2 var_120, 2
  loc_6F6624: ILdRf var_8C
  loc_6F6627: LitI4 8
  loc_6F662C: AddI4
  loc_6F662D: FLdRfVar var_88
  loc_6F6630: CVarRef
  loc_6F6635: FLdRfVar var_140
  loc_6F6638: ImpAdCallFPR4  = Mid(, , )
  loc_6F663D: FLdRfVar var_140
  loc_6F6640: LitVarStr var_150, ":"
  loc_6F6645: ConcatVar var_160
  loc_6F6649: LitVarI2 var_180, 2
  loc_6F664E: ILdRf var_8C
  loc_6F6651: LitI4 &HA
  loc_6F6656: AddI4
  loc_6F6657: FLdRfVar var_88
  loc_6F665A: CVarRef
  loc_6F665F: FLdRfVar var_1A0
  loc_6F6662: ImpAdCallFPR4  = Mid(, , )
  loc_6F6667: FLdRfVar var_1A0
  loc_6F666A: ConcatVar var_1C0
  loc_6F666E: LitVarStr var_1B0, ":"
  loc_6F6673: ConcatVar var_1E0
  loc_6F6677: LitVarI2 var_200, 2
  loc_6F667C: ILdRf var_8C
  loc_6F667F: LitI4 &HC
  loc_6F6684: AddI4
  loc_6F6685: FLdRfVar var_88
  loc_6F6688: CVarRef
  loc_6F668D: FLdRfVar var_220
  loc_6F6690: ImpAdCallFPR4  = Mid(, , )
  loc_6F6695: FLdRfVar var_220
  loc_6F6698: ConcatVar var_240
  loc_6F669C: CStrVarTmp
  loc_6F669D: FStStr var_98
  loc_6F66A0: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_1E0 = "": var_220 = ""
  loc_6F66B7: LitVarI2 var_120, 2
  loc_6F66BC: ILdRf var_8C
  loc_6F66BF: LitI4 &HE
  loc_6F66C4: AddI4
  loc_6F66C5: FLdRfVar var_88
  loc_6F66C8: CVarRef
  loc_6F66CD: FLdRfVar var_140
  loc_6F66D0: ImpAdCallFPR4  = Mid(, , )
  loc_6F66D5: FLdRfVar var_140
  loc_6F66D8: CStrVarTmp
  loc_6F66D9: FStStr var_9C
  loc_6F66DC: FFreeVar var_120 = ""
  loc_6F66E3: LitVarI2 var_120, 1
  loc_6F66E8: ILdRf var_8C
  loc_6F66EB: LitI4 &H10
  loc_6F66F0: AddI4
  loc_6F66F1: FLdRfVar var_88
  loc_6F66F4: CVarRef
  loc_6F66F9: FLdRfVar var_140
  loc_6F66FC: ImpAdCallFPR4  = Mid(, , )
  loc_6F6701: FLdRfVar var_140
  loc_6F6704: FLdRfVar var_160
  loc_6F6707: ImpAdCallFPR4  = Ucase()
  loc_6F670C: FLdRfVar var_160
  loc_6F670F: CStrVarTmp
  loc_6F6710: FStStr var_B0
  loc_6F6713: FFreeVar var_120 = "": var_140 = ""
  loc_6F671C: LitVarI2 var_120, 10
  loc_6F6721: ILdRf var_8C
  loc_6F6724: LitI4 &H11
  loc_6F6729: AddI4
  loc_6F672A: ILdRf var_88
  loc_6F672D: ImpAdCallI2 Mid$(, , )
  loc_6F6732: FStStr var_248
  loc_6F6735: FLdRfVar var_244
  loc_6F6738: LitI2_Byte 0
  loc_6F673A: PopTmpLdAd2 var_F6
  loc_6F673D: FLdZeroAd var_248
  loc_6F6740: PopTmpLdAdStr
  loc_6F6744: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_6F6749: FLdZeroAd var_244
  loc_6F674C: FStStr var_A0
  loc_6F674F: FFreeStr var_100 = ""
  loc_6F6756: FFree1Var var_120 = ""
  loc_6F6759: LitVarI2 var_120, 10
  loc_6F675E: ILdRf var_8C
  loc_6F6761: LitI4 &H1B
  loc_6F6766: AddI4
  loc_6F6767: FLdRfVar var_88
  loc_6F676A: CVarRef
  loc_6F676F: FLdRfVar var_140
  loc_6F6772: ImpAdCallFPR4  = Mid(, , )
  loc_6F6777: FLdRfVar var_140
  loc_6F677A: CStrVarVal var_100
  loc_6F677E: ImpAdCallFPR4 push Val()
  loc_6F6783: FStFPR8 var_444
  loc_6F6786: LitI4 1
  loc_6F678B: LitI4 1
  loc_6F6790: LitVarStr var_170, "#######0.00"
  loc_6F6795: FStVarCopyObj var_180
  loc_6F6798: FLdRfVar var_180
  loc_6F679B: FLdFPR8 var_444
  loc_6F679E: LitI2_Byte &H64
  loc_6F67A0: CR8I2
  loc_6F67A1: DivR8
  loc_6F67A2: CVarR8
  loc_6F67A6: ImpAdCallI2 Format$(, )
  loc_6F67AB: FStStr var_244
  loc_6F67AE: LitI4 1
  loc_6F67B3: LitI4 1
  loc_6F67B8: LitVarStr var_190, "@@@@@@@@@@@"
  loc_6F67BD: FStVarCopyObj var_1C0
  loc_6F67C0: FLdRfVar var_1C0
  loc_6F67C3: FLdZeroAd var_244
  loc_6F67C6: CVarStr var_1A0
  loc_6F67C9: ImpAdCallI2 Format$(, )
  loc_6F67CE: FStStr var_A4
  loc_6F67D1: FFreeStr var_100 = ""
  loc_6F67D8: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = ""
  loc_6F67E7: LitVarI2 var_120, 10
  loc_6F67EC: ILdRf var_8C
  loc_6F67EF: LitI4 &H25
  loc_6F67F4: AddI4
  loc_6F67F5: FLdRfVar var_88
  loc_6F67F8: CVarRef
  loc_6F67FD: FLdRfVar var_140
  loc_6F6800: ImpAdCallFPR4  = Mid(, , )
  loc_6F6805: FLdRfVar var_244
  loc_6F6808: LitI2_Byte &HFF
  loc_6F680A: PopTmpLdAd2 var_F6
  loc_6F680D: FLdRfVar var_140
  loc_6F6810: CStrVarTmp
  loc_6F6811: PopTmpLdAdStr
  loc_6F6815: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_6F681A: FLdZeroAd var_244
  loc_6F681D: FStStr var_AC
  loc_6F6820: FFree1Str var_100
  loc_6F6823: FFreeVar var_120 = ""
  loc_6F682A: LitVarI2 var_120, 1
  loc_6F682F: ILdRf var_8C
  loc_6F6832: LitI4 &H2F
  loc_6F6837: AddI4
  loc_6F6838: FLdRfVar var_88
  loc_6F683B: CVarRef
  loc_6F6840: FLdRfVar var_140
  loc_6F6843: ImpAdCallFPR4  = Mid(, , )
  loc_6F6848: FLdRfVar var_140
  loc_6F684B: CStrVarVal var_100
  loc_6F684F: ImpAdCallFPR4 push Val()
  loc_6F6854: FStFPR8 var_444
  loc_6F6857: FLdRfVar var_244
  loc_6F685A: FLdFPR8 var_444
  loc_6F685D: CI2R8
  loc_6F685E: ImpAdLdRf MemVar_74A220
  loc_6F6861: NewIfNullPr clsProducts
  loc_6F6869: LitI4 &H19
  loc_6F686E: FLdZeroAd var_244
  loc_6F6871: CVarStr var_160
  loc_6F6874: FLdRfVar var_180
  loc_6F6877: ImpAdCallFPR4  = Left(, )
  loc_6F687C: LitVarStr var_150, "@"
  loc_6F6881: FStVarCopyObj var_1A0
  loc_6F6884: FLdRfVar var_1A0
  loc_6F6887: LitI4 &H19
  loc_6F688C: FLdRfVar var_1C0
  loc_6F688F: ImpAdCallFPR4  = String(, )
  loc_6F6894: LitI4 1
  loc_6F6899: LitI4 1
  loc_6F689E: LitVarStr var_170, "!"
  loc_6F68A3: FLdRfVar var_1C0
  loc_6F68A6: ConcatVar var_1E0
  loc_6F68AA: FLdRfVar var_180
  loc_6F68AD: ImpAdCallI2 Format$(, )
  loc_6F68B2: FStStr var_A8
  loc_6F68B5: FFree1Str var_100
  loc_6F68B8: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_1A0 = "": var_1C0 = "": var_180 = ""
  loc_6F68C9: LitVarI2 var_120, 3
  loc_6F68CE: ILdRf var_8C
  loc_6F68D1: LitI4 &H31
  loc_6F68D6: AddI4
  loc_6F68D7: ILdRf var_88
  loc_6F68DA: ImpAdCallI2 Mid$(, , )
  loc_6F68DF: FStStrNoPop var_100
  loc_6F68E2: CI2Str
  loc_6F68E4: FStI2 var_B6
  loc_6F68E7: FFree1Str var_100
  loc_6F68EA: FFree1Var var_120 = ""
  loc_6F68ED: LitVarI2 var_120, 4
  loc_6F68F2: ILdRf var_8C
  loc_6F68F5: LitI4 &H34
  loc_6F68FA: AddI4
  loc_6F68FB: ILdRf var_88
  loc_6F68FE: ImpAdCallI2 Mid$(, , )
  loc_6F6903: FStStrNoPop var_100
  loc_6F6906: CI2Str
  loc_6F6908: FStI2 var_BE
  loc_6F690B: FFree1Str var_100
  loc_6F690E: FFree1Var var_120 = ""
  loc_6F6911: FLdI2 var_C6
  loc_6F6914: FLdI2 var_BE
  loc_6F6917: NeI2
  loc_6F6918: ILdRf var_C4
  loc_6F691B: ILdRf var_BC
  loc_6F691E: NeI4
  loc_6F691F: OrI4
  loc_6F6920: FLdI2 var_C0
  loc_6F6923: FLdI2 var_B6
  loc_6F6926: NeI2
  loc_6F6927: OrI4
  loc_6F6928: BranchF loc_6F6B77
  loc_6F692B: FLdI2 var_C6
  loc_6F692E: LitI2_Byte &HFF
  loc_6F6930: NeI2
  loc_6F6931: BranchF loc_6F6B65
  loc_6F6934: FLdI2 var_C0
  loc_6F6937: LitI2 800
  loc_6F693A: GtI2
  loc_6F693B: FLdI2 var_C0
  loc_6F693E: LitI2_Byte 0
  loc_6F6940: EqI2
  loc_6F6941: OrI4
  loc_6F6942: BranchF loc_6F6948
  loc_6F6945: Branch loc_6F6B65
  loc_6F6948: FLdI2 var_C6
  loc_6F694B: ImpAdCallI2 Proc_158_10_5F0448()
  loc_6F6950: FStStr var_B4
  loc_6F6953: ILdRf var_B4
  loc_6F6956: LitStr vbNullString
  loc_6F6959: EqStr
  loc_6F695B: BranchF loc_6F6A70
  loc_6F695E: LitI4 1
  loc_6F6963: LitI4 1
  loc_6F6968: LitVarStr var_130, "@@@"
  loc_6F696D: FStVarCopyObj var_120
  loc_6F6970: FLdRfVar var_120
  loc_6F6973: FLdRfVar var_C0
  loc_6F6976: CVarRef
  loc_6F697B: ImpAdCallI2 Format$(, )
  loc_6F6980: FStStr var_280
  loc_6F6983: LitI4 1
  loc_6F6988: LitI4 1
  loc_6F698D: LitVarStr var_170, "@@@@"
  loc_6F6992: FStVarCopyObj var_140
  loc_6F6995: FLdRfVar var_140
  loc_6F6998: FLdRfVar var_C6
  loc_6F699B: CVarRef
  loc_6F69A0: ImpAdCallI2 Format$(, )
  loc_6F69A5: FStStr var_284
  loc_6F69A8: LitI4 9
  loc_6F69AD: FLdRfVar var_160
  loc_6F69B0: ImpAdCallFPR4  = Space()
  loc_6F69B5: LitI4 1
  loc_6F69BA: LitI4 1
  loc_6F69BF: ImpAdLdRf MemVar_74C364
  loc_6F69C2: CVarRef
  loc_6F69C7: FLdRfVar var_DC
  loc_6F69CA: CVarRef
  loc_6F69CF: ImpAdCallI2 Format$(, )
  loc_6F69D4: FStStr var_28C
  loc_6F69D7: LitI4 1
  loc_6F69DC: LitI4 1
  loc_6F69E1: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_6F69E6: FStVarCopyObj var_1E0
  loc_6F69E9: FLdRfVar var_1E0
  loc_6F69EC: FLdZeroAd var_28C
  loc_6F69EF: CVarStr var_1C0
  loc_6F69F2: ImpAdCallI2 Format$(, )
  loc_6F69F7: FStStr var_3D0
  loc_6F69FA: FLdRfVar var_F6
  loc_6F69FD: FLdRfVar var_F0
  loc_6F6A00: NewIfNullRf
  loc_6F6A04: LitStr "G: "
  loc_6F6A07: FLdZeroAd var_280
  loc_6F6A0A: FStStrNoPop var_100
  loc_6F6A0D: ConcatStr
  loc_6F6A0E: FStStrNoPop var_244
  loc_6F6A11: LitStr " - U: "
  loc_6F6A14: ConcatStr
  loc_6F6A15: FStStrNoPop var_248
  loc_6F6A18: FLdZeroAd var_284
  loc_6F6A1B: FStStrNoPop var_264
  loc_6F6A1E: ConcatStr
  loc_6F6A1F: CVarStr var_180
  loc_6F6A22: FLdRfVar var_160
  loc_6F6A25: ConcatVar var_1A0
  loc_6F6A29: FLdZeroAd var_3D0
  loc_6F6A2C: CVarStr var_200
  loc_6F6A2F: ConcatVar var_220
  loc_6F6A33: CStrVarTmp
  loc_6F6A34: PopTmpLdAdStr
  loc_6F6A38: FLdRfVar var_EC
  loc_6F6A3B: NewIfNullPr CReporte
  loc_6F6A3E:  = CReporte.ForeColor
  loc_6F6A43: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = "": var_268 = "": var_280 = "": var_284 = "": var_28C = ""
  loc_6F6A58: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1C0 = "": var_1E0 = "": var_1A0 = "": var_200 = ""
  loc_6F6A6D: Branch loc_6F6B65
  loc_6F6A70: LitI4 &HF
  loc_6F6A75: ILdRf var_B4
  loc_6F6A78: ImpAdCallI2 Left$(, )
  loc_6F6A7D: FStStr var_244
  loc_6F6A80: LitVarStr var_110, "@"
  loc_6F6A85: FStVarCopyObj var_120
  loc_6F6A88: FLdRfVar var_120
  loc_6F6A8B: LitI4 &HF
  loc_6F6A90: FLdRfVar var_140
  loc_6F6A93: ImpAdCallFPR4  = String(, )
  loc_6F6A98: LitI4 1
  loc_6F6A9D: LitI4 1
  loc_6F6AA2: LitVarStr var_130, "!"
  loc_6F6AA7: FLdRfVar var_140
  loc_6F6AAA: ConcatVar var_160
  loc_6F6AAE: FLdZeroAd var_244
  loc_6F6AB1: CVarStr var_180
  loc_6F6AB4: ImpAdCallI2 Format$(, )
  loc_6F6AB9: FStStr var_248
  loc_6F6ABC: LitI4 &HA
  loc_6F6AC1: FLdRfVar var_1A0
  loc_6F6AC4: ImpAdCallFPR4  = Space()
  loc_6F6AC9: LitI4 1
  loc_6F6ACE: LitI4 1
  loc_6F6AD3: ImpAdLdRf MemVar_74C364
  loc_6F6AD6: CVarRef
  loc_6F6ADB: FLdRfVar var_DC
  loc_6F6ADE: CVarRef
  loc_6F6AE3: ImpAdCallI2 Format$(, )
  loc_6F6AE8: FStStr var_264
  loc_6F6AEB: LitI4 1
  loc_6F6AF0: LitI4 1
  loc_6F6AF5: LitVarStr var_190, "@@@@@@@@@@@"
  loc_6F6AFA: FStVarCopyObj var_220
  loc_6F6AFD: FLdRfVar var_220
  loc_6F6B00: FLdZeroAd var_264
  loc_6F6B03: CVarStr var_200
  loc_6F6B06: ImpAdCallI2 Format$(, )
  loc_6F6B0B: FStStr var_268
  loc_6F6B0E: FLdRfVar var_F6
  loc_6F6B11: FLdRfVar var_F0
  loc_6F6B14: NewIfNullRf
  loc_6F6B18: FLdZeroAd var_248
  loc_6F6B1B: CVarStr var_1C0
  loc_6F6B1E: FLdRfVar var_1A0
  loc_6F6B21: ConcatVar var_1E0
  loc_6F6B25: FLdZeroAd var_268
  loc_6F6B28: CVarStr var_240
  loc_6F6B2B: ConcatVar var_260
  loc_6F6B2F: CStrVarTmp
  loc_6F6B30: PopTmpLdAdStr
  loc_6F6B34: FLdRfVar var_EC
  loc_6F6B37: NewIfNullPr CReporte
  loc_6F6B3A:  = CReporte.ForeColor
  loc_6F6B3F: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = ""
  loc_6F6B4C: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1C0 = "": var_1A0 = "": var_200 = "": var_220 = "": var_1E0 = "": var_240 = ""
  loc_6F6B65: LitI2_Byte 0
  loc_6F6B67: CR8I2
  loc_6F6B68: FStFPR4 var_DC
  loc_6F6B6B: LitI2_Byte 0
  loc_6F6B6D: CR8I2
  loc_6F6B6E: FStFPR4 var_E0
  loc_6F6B71: FLdI2 var_BE
  loc_6F6B74: FStI2 var_C6
  loc_6F6B77: ILdRf var_C4
  loc_6F6B7A: ILdRf var_BC
  loc_6F6B7D: NeI4
  loc_6F6B7E: FLdI2 var_C0
  loc_6F6B81: FLdI2 var_B6
  loc_6F6B84: NeI2
  loc_6F6B85: OrI4
  loc_6F6B86: BranchF loc_6F6BB6
  loc_6F6B89: ILdRf var_C4
  loc_6F6B8C: LitI4 -1
  loc_6F6B91: NeI4
  loc_6F6B92: FLdI2 var_C0
  loc_6F6B95: LitI2 800
  loc_6F6B98: GtI2
  loc_6F6B99: FLdI2 var_C0
  loc_6F6B9C: LitI2_Byte 0
  loc_6F6B9E: EqI2
  loc_6F6B9F: OrI4
  loc_6F6BA0: AndI4
  loc_6F6BA1: BranchF loc_6F6BA4
  loc_6F6BA4: LitI2_Byte 0
  loc_6F6BA6: CR8I2
  loc_6F6BA7: FStFPR4 var_D4
  loc_6F6BAA: LitI2_Byte 0
  loc_6F6BAC: CR8I2
  loc_6F6BAD: FStFPR4 var_D8
  loc_6F6BB0: ILdRf var_BC
  loc_6F6BB3: FStR4 var_C4
  loc_6F6BB6: FLdI2 var_C0
  loc_6F6BB9: FLdI2 var_B6
  loc_6F6BBC: NeI2
  loc_6F6BBD: BranchF loc_6F6BDB
  loc_6F6BC0: FLdI2 var_C0
  loc_6F6BC3: LitI2_Byte &HFF
  loc_6F6BC5: NeI2
  loc_6F6BC6: BranchF loc_6F6BC9
  loc_6F6BC9: LitI2_Byte 0
  loc_6F6BCB: CR8I2
  loc_6F6BCC: FStFPR4 var_CC
  loc_6F6BCF: LitI2_Byte 0
  loc_6F6BD1: CR8I2
  loc_6F6BD2: FStFPR4 var_D0
  loc_6F6BD5: FLdI2 var_B6
  loc_6F6BD8: FStI2 var_C0
  loc_6F6BDB: FLdFPR4 var_CC
  loc_6F6BDE: ILdRf var_A0
  loc_6F6BE1: CR8Str
  loc_6F6BE3: AddR8
  loc_6F6BE4: FStFPR4 var_CC
  loc_6F6BE7: FLdFPR4 var_D0
  loc_6F6BEA: ILdRf var_A4
  loc_6F6BED: CR8Str
  loc_6F6BEF: AddR8
  loc_6F6BF0: FStFPR4 var_D0
  loc_6F6BF3: FLdFPR4 var_D4
  loc_6F6BF6: ILdRf var_A0
  loc_6F6BF9: CR8Str
  loc_6F6BFB: AddR8
  loc_6F6BFC: FStFPR4 var_D4
  loc_6F6BFF: FLdFPR4 var_D8
  loc_6F6C02: ILdRf var_A4
  loc_6F6C05: CR8Str
  loc_6F6C07: AddR8
  loc_6F6C08: FStFPR4 var_D8
  loc_6F6C0B: FLdFPR4 var_DC
  loc_6F6C0E: ILdRf var_A0
  loc_6F6C11: CR8Str
  loc_6F6C13: AddR8
  loc_6F6C14: FStFPR4 var_DC
  loc_6F6C17: FLdFPR4 var_E0
  loc_6F6C1A: ILdRf var_A4
  loc_6F6C1D: CR8Str
  loc_6F6C1F: AddR8
  loc_6F6C20: FStFPR4 var_E0
  loc_6F6C23: FLdFPR4 var_E4
  loc_6F6C26: ILdRf var_A0
  loc_6F6C29: CR8Str
  loc_6F6C2B: AddR8
  loc_6F6C2C: FStFPR4 var_E4
  loc_6F6C2F: FLdFPR4 var_E8
  loc_6F6C32: ILdRf var_A4
  loc_6F6C35: CR8Str
  loc_6F6C37: AddR8
  loc_6F6C38: FStFPR4 var_E8
  loc_6F6C3B: ILdRf var_8C
  loc_6F6C3E: FLdUI1
  loc_6F6C42: CI4UI1
  loc_6F6C43: AddI4
  loc_6F6C44: FStR4 var_8C
  loc_6F6C47: Branch loc_6F6582
  loc_6F6C4A: FLdI2 var_C6
  loc_6F6C4D: LitI2_Byte &HFF
  loc_6F6C4F: NeI2
  loc_6F6C50: BranchF loc_6F6E84
  loc_6F6C53: FLdI2 var_C0
  loc_6F6C56: LitI2 800
  loc_6F6C59: GtI2
  loc_6F6C5A: FLdI2 var_C0
  loc_6F6C5D: LitI2_Byte 0
  loc_6F6C5F: EqI2
  loc_6F6C60: OrI4
  loc_6F6C61: BranchF loc_6F6C67
  loc_6F6C64: Branch loc_6F6E84
  loc_6F6C67: FLdI2 var_C6
  loc_6F6C6A: ImpAdCallI2 Proc_158_10_5F0448()
  loc_6F6C6F: FStStr var_B4
  loc_6F6C72: ILdRf var_B4
  loc_6F6C75: LitStr vbNullString
  loc_6F6C78: EqStr
  loc_6F6C7A: BranchF loc_6F6D8F
  loc_6F6C7D: LitI4 1
  loc_6F6C82: LitI4 1
  loc_6F6C87: LitVarStr var_130, "@@@"
  loc_6F6C8C: FStVarCopyObj var_120
  loc_6F6C8F: FLdRfVar var_120
  loc_6F6C92: FLdRfVar var_C0
  loc_6F6C95: CVarRef
  loc_6F6C9A: ImpAdCallI2 Format$(, )
  loc_6F6C9F: FStStr var_280
  loc_6F6CA2: LitI4 1
  loc_6F6CA7: LitI4 1
  loc_6F6CAC: LitVarStr var_170, "@@@@"
  loc_6F6CB1: FStVarCopyObj var_140
  loc_6F6CB4: FLdRfVar var_140
  loc_6F6CB7: FLdRfVar var_C6
  loc_6F6CBA: CVarRef
  loc_6F6CBF: ImpAdCallI2 Format$(, )
  loc_6F6CC4: FStStr var_284
  loc_6F6CC7: LitI4 9
  loc_6F6CCC: FLdRfVar var_160
  loc_6F6CCF: ImpAdCallFPR4  = Space()
  loc_6F6CD4: LitI4 1
  loc_6F6CD9: LitI4 1
  loc_6F6CDE: ImpAdLdRf MemVar_74C364
  loc_6F6CE1: CVarRef
  loc_6F6CE6: FLdRfVar var_DC
  loc_6F6CE9: CVarRef
  loc_6F6CEE: ImpAdCallI2 Format$(, )
  loc_6F6CF3: FStStr var_28C
  loc_6F6CF6: LitI4 1
  loc_6F6CFB: LitI4 1
  loc_6F6D00: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_6F6D05: FStVarCopyObj var_1E0
  loc_6F6D08: FLdRfVar var_1E0
  loc_6F6D0B: FLdZeroAd var_28C
  loc_6F6D0E: CVarStr var_1C0
  loc_6F6D11: ImpAdCallI2 Format$(, )
  loc_6F6D16: FStStr var_3D0
  loc_6F6D19: FLdRfVar var_F6
  loc_6F6D1C: FLdRfVar var_F0
  loc_6F6D1F: NewIfNullRf
  loc_6F6D23: LitStr "G: "
  loc_6F6D26: FLdZeroAd var_280
  loc_6F6D29: FStStrNoPop var_100
  loc_6F6D2C: ConcatStr
  loc_6F6D2D: FStStrNoPop var_244
  loc_6F6D30: LitStr " - U: "
  loc_6F6D33: ConcatStr
  loc_6F6D34: FStStrNoPop var_248
  loc_6F6D37: FLdZeroAd var_284
  loc_6F6D3A: FStStrNoPop var_264
  loc_6F6D3D: ConcatStr
  loc_6F6D3E: CVarStr var_180
  loc_6F6D41: FLdRfVar var_160
  loc_6F6D44: ConcatVar var_1A0
  loc_6F6D48: FLdZeroAd var_3D0
  loc_6F6D4B: CVarStr var_200
  loc_6F6D4E: ConcatVar var_220
  loc_6F6D52: CStrVarTmp
  loc_6F6D53: PopTmpLdAdStr
  loc_6F6D57: FLdRfVar var_EC
  loc_6F6D5A: NewIfNullPr CReporte
  loc_6F6D5D:  = CReporte.ForeColor
  loc_6F6D62: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = "": var_268 = "": var_280 = "": var_284 = "": var_28C = ""
  loc_6F6D77: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1C0 = "": var_1E0 = "": var_1A0 = "": var_200 = ""
  loc_6F6D8C: Branch loc_6F6E84
  loc_6F6D8F: LitI4 &HF
  loc_6F6D94: ILdRf var_B4
  loc_6F6D97: ImpAdCallI2 Left$(, )
  loc_6F6D9C: FStStr var_244
  loc_6F6D9F: LitVarStr var_110, "@"
  loc_6F6DA4: FStVarCopyObj var_120
  loc_6F6DA7: FLdRfVar var_120
  loc_6F6DAA: LitI4 &HF
  loc_6F6DAF: FLdRfVar var_140
  loc_6F6DB2: ImpAdCallFPR4  = String(, )
  loc_6F6DB7: LitI4 1
  loc_6F6DBC: LitI4 1
  loc_6F6DC1: LitVarStr var_130, "!"
  loc_6F6DC6: FLdRfVar var_140
  loc_6F6DC9: ConcatVar var_160
  loc_6F6DCD: FLdZeroAd var_244
  loc_6F6DD0: CVarStr var_180
  loc_6F6DD3: ImpAdCallI2 Format$(, )
  loc_6F6DD8: FStStr var_248
  loc_6F6DDB: LitI4 &HA
  loc_6F6DE0: FLdRfVar var_1A0
  loc_6F6DE3: ImpAdCallFPR4  = Space()
  loc_6F6DE8: LitI4 1
  loc_6F6DED: LitI4 1
  loc_6F6DF2: ImpAdLdRf MemVar_74C364
  loc_6F6DF5: CVarRef
  loc_6F6DFA: FLdRfVar var_DC
  loc_6F6DFD: CVarRef
  loc_6F6E02: ImpAdCallI2 Format$(, )
  loc_6F6E07: FStStr var_264
  loc_6F6E0A: LitI4 1
  loc_6F6E0F: LitI4 1
  loc_6F6E14: LitVarStr var_190, "@@@@@@@@@@@"
  loc_6F6E19: FStVarCopyObj var_220
  loc_6F6E1C: FLdRfVar var_220
  loc_6F6E1F: FLdZeroAd var_264
  loc_6F6E22: CVarStr var_200
  loc_6F6E25: ImpAdCallI2 Format$(, )
  loc_6F6E2A: FStStr var_268
  loc_6F6E2D: FLdRfVar var_F6
  loc_6F6E30: FLdRfVar var_F0
  loc_6F6E33: NewIfNullRf
  loc_6F6E37: FLdZeroAd var_248
  loc_6F6E3A: CVarStr var_1C0
  loc_6F6E3D: FLdRfVar var_1A0
  loc_6F6E40: ConcatVar var_1E0
  loc_6F6E44: FLdZeroAd var_268
  loc_6F6E47: CVarStr var_240
  loc_6F6E4A: ConcatVar var_260
  loc_6F6E4E: CStrVarTmp
  loc_6F6E4F: PopTmpLdAdStr
  loc_6F6E53: FLdRfVar var_EC
  loc_6F6E56: NewIfNullPr CReporte
  loc_6F6E59:  = CReporte.ForeColor
  loc_6F6E5E: FFreeStr var_100 = "": var_244 = "": var_248 = "": var_264 = ""
  loc_6F6E6B: FFreeVar var_120 = "": var_140 = "": var_180 = "": var_160 = "": var_1C0 = "": var_1A0 = "": var_200 = "": var_220 = "": var_1E0 = "": var_240 = ""
  loc_6F6E84: FLdRfVar var_F6
  loc_6F6E87: FLdRfVar var_EC
  loc_6F6E8A: NewIfNullPr CReporte
  loc_6F6E8D: CReporte.ForeColor = from_stack_1
  loc_6F6E92: LitNothing
  loc_6F6E94: CastAd
  loc_6F6E97: FStAdFunc var_EC
  loc_6F6E9A: LitNothing
  loc_6F6E9C: CastAd
  loc_6F6E9F: FStAdFunc var_F0
  loc_6F6EA2: FLdRfVar var_244
  loc_6F6EA5: LitVar_Missing var_240
  loc_6F6EA8: LitVar_Missing var_220
  loc_6F6EAB: LitVar_Missing var_200
  loc_6F6EAE: LitVar_Missing var_1E0
  loc_6F6EB1: LitVar_Missing var_1C0
  loc_6F6EB4: LitVar_Missing var_1A0
  loc_6F6EB7: LitVar_Missing var_180
  loc_6F6EBA: LitVar_Missing var_160
  loc_6F6EBD: LitVar_Missing var_140
  loc_6F6EC0: LitVar_Missing var_120
  loc_6F6EC3: LitStr "Impresión terminada."
  loc_6F6EC6: FStStrCopy var_100
  loc_6F6EC9: FLdRfVar var_100
  loc_6F6ECC: LitI4 &HF
  loc_6F6ED1: PopTmpLdAdStr var_FC
  loc_6F6ED4: LitI2_Byte &H4C
  loc_6F6ED6: PopTmpLdAd2 var_F6
  loc_6F6ED9: ImpAdLdRf MemVar_74C7D0
  loc_6F6EDC: NewIfNullPr clsMsg
  loc_6F6EDF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F6EE4: LitVar_Missing var_2CC
  loc_6F6EE7: LitVar_Missing var_2AC
  loc_6F6EEA: LitVar_Missing var_27C
  loc_6F6EED: LitI4 &H40
  loc_6F6EF2: FLdZeroAd var_244
  loc_6F6EF5: CVarStr var_260
  loc_6F6EF8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F6EFD: FFree1Str var_100
  loc_6F6F00: FFreeVar var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_27C = "": var_2AC = ""
  loc_6F6F1F: ExitProcHresult
End Function

Private Function Proc_127_14_65A82C(arg_C) '65A82C
  'Data Table: 438174
  loc_65A54C: LitI2_Byte 1
  loc_65A54E: FStI2 var_8E
  loc_65A551: FLdI2 var_8E
  loc_65A554: CI4UI1
  loc_65A555: ILdI4 arg_C
  loc_65A558: FnLenStr
  loc_65A559: LeI4
  loc_65A55A: BranchF loc_65A82B
  loc_65A55D: LitVarI2 var_B4, 3
  loc_65A562: FLdI2 var_8E
  loc_65A565: CI4UI1
  loc_65A566: ILdI4 arg_C
  loc_65A569: ImpAdCallI2 Mid$(, , )
  loc_65A56E: FStStrNoPop var_B8
  loc_65A571: CI2Str
  loc_65A573: FStI2 var_8A
  loc_65A576: FFree1Str var_B8
  loc_65A579: FFree1Var var_B4 = ""
  loc_65A57C: FLdI2 var_8E
  loc_65A57F: LitI2_Byte 3
  loc_65A581: AddI2
  loc_65A582: FStI2 var_8E
  loc_65A585: LitVarI2 var_B4, 4
  loc_65A58A: FLdI2 var_8E
  loc_65A58D: CI4UI1
  loc_65A58E: ILdI4 arg_C
  loc_65A591: ImpAdCallI2 Mid$(, , )
  loc_65A596: FStStrNoPop var_B8
  loc_65A599: CI2Str
  loc_65A59B: FStI2 var_8C
  loc_65A59E: FFree1Str var_B8
  loc_65A5A1: FFree1Var var_B4 = ""
  loc_65A5A4: FLdI2 var_8E
  loc_65A5A7: LitI2_Byte 4
  loc_65A5A9: AddI2
  loc_65A5AA: FStI2 var_8E
  loc_65A5AD: LitVarI2 var_B4, 10
  loc_65A5B2: FLdI2 var_8E
  loc_65A5B5: CI4UI1
  loc_65A5B6: ILdI4 arg_C
  loc_65A5B9: ImpAdCallI2 Mid$(, , )
  loc_65A5BE: FStStrNoPop var_B8
  loc_65A5C1: CR8Str
  loc_65A5C3: ImpAdLdFPR4 MemVar_74C2E0
  loc_65A5C6: DivR8
  loc_65A5C7: FStFPR4 var_94
  loc_65A5CA: FFree1Str var_B8
  loc_65A5CD: FFree1Var var_B4 = ""
  loc_65A5D0: FLdI2 var_8E
  loc_65A5D3: LitI2_Byte &HA
  loc_65A5D5: AddI2
  loc_65A5D6: FStI2 var_8E
  loc_65A5D9: FLdI2 var_8C
  loc_65A5DC: ImpAdCallI2 Proc_158_10_5F0448()
  loc_65A5E1: FStStr var_88
  loc_65A5E4: ILdRf var_88
  loc_65A5E7: LitStr vbNullString
  loc_65A5EA: EqStr
  loc_65A5EC: BranchF loc_65A71A
  loc_65A5EF: LitI4 1
  loc_65A5F4: LitI4 1
  loc_65A5F9: LitVarStr var_C8, "@@@"
  loc_65A5FE: FStVarCopyObj var_B4
  loc_65A601: FLdRfVar var_B4
  loc_65A604: FLdRfVar var_8A
  loc_65A607: CVarRef
  loc_65A60C: ImpAdCallI2 Format$(, )
  loc_65A611: FStStr var_1C8
  loc_65A614: LitI4 1
  loc_65A619: LitI4 1
  loc_65A61E: LitVarStr var_EC, "@@@@"
  loc_65A623: FStVarCopyObj var_FC
  loc_65A626: FLdRfVar var_FC
  loc_65A629: FLdRfVar var_8C
  loc_65A62C: CVarRef
  loc_65A631: ImpAdCallI2 Format$(, )
  loc_65A636: FStStr var_1CC
  loc_65A639: LitI4 2
  loc_65A63E: FLdRfVar var_114
  loc_65A641: ImpAdCallFPR4  = Space()
  loc_65A646: LitI4 1
  loc_65A64B: LitI4 1
  loc_65A650: ImpAdLdRf MemVar_74C364
  loc_65A653: CVarRef
  loc_65A658: FLdRfVar var_94
  loc_65A65B: CVarRef
  loc_65A660: ImpAdCallI2 Format$(, )
  loc_65A665: FStStr var_1D0
  loc_65A668: LitI4 1
  loc_65A66D: LitI4 1
  loc_65A672: LitVarStr var_174, "@@@@@@@@@@@"
  loc_65A677: FStVarCopyObj var_184
  loc_65A67A: FLdRfVar var_184
  loc_65A67D: FLdZeroAd var_1D0
  loc_65A680: CVarStr var_164
  loc_65A683: ImpAdCallI2 Format$(, )
  loc_65A688: FStStr var_1D4
  loc_65A68B: FLdRfVar var_1AA
  loc_65A68E: FLdPrThis
  loc_65A68F: VCallAd Control_ID_List1
  loc_65A692: FStAdFunc var_1A8
  loc_65A695: FLdPr var_1A8
  loc_65A698:  = Me.ListCount
  loc_65A69D: FLdI2 var_1AA
  loc_65A6A0: CVarI2 var_1C0
  loc_65A6A3: PopAdLdVar
  loc_65A6A4: LitStr "G: "
  loc_65A6A7: FLdZeroAd var_1C8
  loc_65A6AA: FStStrNoPop var_B8
  loc_65A6AD: ConcatStr
  loc_65A6AE: FStStrNoPop var_CC
  loc_65A6B1: LitStr " - U: "
  loc_65A6B4: ConcatStr
  loc_65A6B5: FStStrNoPop var_100
  loc_65A6B8: FLdZeroAd var_1CC
  loc_65A6BB: FStStrNoPop var_104
  loc_65A6BE: ConcatStr
  loc_65A6BF: CVarStr var_124
  loc_65A6C2: FLdRfVar var_114
  loc_65A6C5: ConcatVar var_134
  loc_65A6C9: FLdZeroAd var_1D4
  loc_65A6CC: CVarStr var_194
  loc_65A6CF: ConcatVar var_1A4
  loc_65A6D3: CStrVarVal var_1B0
  loc_65A6D7: FLdPrThis
  loc_65A6D8: VCallAd Control_ID_List1
  loc_65A6DB: FStAdFunc var_1C4
  loc_65A6DE: FLdPr var_1C4
  loc_65A6E1: Me.AddItem from_stack_1, from_stack_2
  loc_65A6E6: FFreeStr var_B8 = "": var_CC = "": var_100 = "": var_104 = "": var_1B0 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_65A6FB: FFreeAd var_1A8 = ""
  loc_65A702: FFreeVar var_B4 = "": var_FC = "": var_124 = "": var_114 = "": var_164 = "": var_184 = "": var_134 = "": var_194 = ""
  loc_65A717: Branch loc_65A828
  loc_65A71A: LitI4 &HF
  loc_65A71F: ILdRf var_88
  loc_65A722: ImpAdCallI2 Left$(, )
  loc_65A727: FStStr var_CC
  loc_65A72A: LitVarStr var_A4, "@"
  loc_65A72F: FStVarCopyObj var_B4
  loc_65A732: FLdRfVar var_B4
  loc_65A735: LitI4 &HF
  loc_65A73A: FLdRfVar var_FC
  loc_65A73D: ImpAdCallFPR4  = String(, )
  loc_65A742: LitI4 1
  loc_65A747: LitI4 1
  loc_65A74C: LitVarStr var_C8, "!"
  loc_65A751: FLdRfVar var_FC
  loc_65A754: ConcatVar var_114
  loc_65A758: FLdZeroAd var_CC
  loc_65A75B: CVarStr var_124
  loc_65A75E: ImpAdCallI2 Format$(, )
  loc_65A763: FStStr var_100
  loc_65A766: LitI4 3
  loc_65A76B: FLdRfVar var_134
  loc_65A76E: ImpAdCallFPR4  = Space()
  loc_65A773: LitI4 1
  loc_65A778: LitI4 1
  loc_65A77D: ImpAdLdRf MemVar_74C364
  loc_65A780: CVarRef
  loc_65A785: FLdRfVar var_94
  loc_65A788: CVarRef
  loc_65A78D: ImpAdCallI2 Format$(, )
  loc_65A792: FStStr var_104
  loc_65A795: LitI4 1
  loc_65A79A: LitI4 1
  loc_65A79F: LitVarStr var_144, "@@@@@@@@@@@"
  loc_65A7A4: FStVarCopyObj var_1A4
  loc_65A7A7: FLdRfVar var_1A4
  loc_65A7AA: FLdZeroAd var_104
  loc_65A7AD: CVarStr var_194
  loc_65A7B0: ImpAdCallI2 Format$(, )
  loc_65A7B5: FStStr var_1B0
  loc_65A7B8: FLdRfVar var_1AA
  loc_65A7BB: FLdPrThis
  loc_65A7BC: VCallAd Control_ID_List1
  loc_65A7BF: FStAdFunc var_1A8
  loc_65A7C2: FLdPr var_1A8
  loc_65A7C5:  = Me.ListCount
  loc_65A7CA: FLdI2 var_1AA
  loc_65A7CD: CVarI2 var_154
  loc_65A7D0: PopAdLdVar
  loc_65A7D1: FLdZeroAd var_100
  loc_65A7D4: CVarStr var_164
  loc_65A7D7: FLdRfVar var_134
  loc_65A7DA: ConcatVar var_184
  loc_65A7DE: FLdZeroAd var_1B0
  loc_65A7E1: CVarStr var_1E4
  loc_65A7E4: ConcatVar var_1F4
  loc_65A7E8: CStrVarVal var_B8
  loc_65A7EC: FLdPrThis
  loc_65A7ED: VCallAd Control_ID_List1
  loc_65A7F0: FStAdFunc var_1C4
  loc_65A7F3: FLdPr var_1C4
  loc_65A7F6: Me.AddItem from_stack_1, from_stack_2
  loc_65A7FB: FFreeStr var_B8 = "": var_CC = "": var_100 = "": var_104 = ""
  loc_65A808: FFreeAd var_1A8 = ""
  loc_65A80F: FFreeVar var_B4 = "": var_FC = "": var_124 = "": var_114 = "": var_164 = "": var_134 = "": var_194 = "": var_1A4 = "": var_184 = "": var_1E4 = ""
  loc_65A828: Branch loc_65A551
  loc_65A82B: ExitProcHresult
End Function

Private Function Proc_127_15_60128C(arg_C) '60128C
  'Data Table: 438174
  loc_6011B4: ILdRf arg_C
  loc_6011B7: CDargRef
  loc_6011BB: FLdPrThis
  loc_6011BC: VCallAd Control_ID_FechaInicial
  loc_6011BF: FStAdFunc var_98
  loc_6011C2: FLdPr var_98
  loc_6011C5: LateIdSt
  loc_6011CA: FFree1Ad var_98
  loc_6011CD: ILdRf arg_C
  loc_6011D0: CDargRef
  loc_6011D4: FLdPrThis
  loc_6011D5: VCallAd Control_ID_FechaFinal
  loc_6011D8: FStAdFunc var_98
  loc_6011DB: FLdPr var_98
  loc_6011DE: LateIdSt
  loc_6011E3: FFree1Ad var_98
  loc_6011E6: ILdRf arg_C
  loc_6011E9: CDargRef
  loc_6011ED: FLdPrThis
  loc_6011EE: VCallAd Control_ID_HoraFinal
  loc_6011F1: FStAdFunc var_98
  loc_6011F4: FLdPr var_98
  loc_6011F7: LateIdSt
  loc_6011FC: FFree1Ad var_98
  loc_6011FF: ILdRf arg_C
  loc_601202: CDargRef
  loc_601206: FLdPrThis
  loc_601207: VCallAd Control_ID_HoraInicial
  loc_60120A: FStAdFunc var_98
  loc_60120D: FLdPr var_98
  loc_601210: LateIdSt
  loc_601215: FFree1Ad var_98
  loc_601218: ILdI2 arg_C
  loc_60121B: FLdRfVar var_9C
  loc_60121E: LitI2_Byte 0
  loc_601220: FLdPrThis
  loc_601221: VCallAd Control_ID_cmdTurnoDiaMes
  loc_601224: FStAdFunc var_98
  loc_601227: FLdPr var_98
  loc_60122A: Set from_stack_2 = Me(from_stack_1)
  loc_60122F: FLdPr var_9C
  loc_601232: Me.Enabled = from_stack_1b
  loc_601237: FFreeAd var_98 = ""
  loc_60123E: ILdI2 arg_C
  loc_601241: FLdRfVar var_9C
  loc_601244: LitI2_Byte 1
  loc_601246: FLdPrThis
  loc_601247: VCallAd Control_ID_cmdTurnoDiaMes
  loc_60124A: FStAdFunc var_98
  loc_60124D: FLdPr var_98
  loc_601250: Set from_stack_2 = Me(from_stack_1)
  loc_601255: FLdPr var_9C
  loc_601258: Me.Enabled = from_stack_1b
  loc_60125D: FFreeAd var_98 = ""
  loc_601264: ILdI2 arg_C
  loc_601267: FLdRfVar var_9C
  loc_60126A: LitI2_Byte 2
  loc_60126C: FLdPrThis
  loc_60126D: VCallAd Control_ID_cmdTurnoDiaMes
  loc_601270: FStAdFunc var_98
  loc_601273: FLdPr var_98
  loc_601276: Set from_stack_2 = Me(from_stack_1)
  loc_60127B: FLdPr var_9C
  loc_60127E: Me.Enabled = from_stack_1b
  loc_601283: FFreeAd var_98 = ""
  loc_60128A: ExitProcHresult
End Function
