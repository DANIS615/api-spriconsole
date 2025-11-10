VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmListadoCTF
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
  Moveable = 0   'False
  Begin VB.CheckBox chkRed
    Caption = "Red"
    Left = 7080
    Top = 2040
    Width = 1095
    Height = 375
    TabIndex = 5
    Value = 1
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
  Begin VB.CheckBox chkLocal
    Caption = "Local"
    Left = 7080
    Top = 1440
    Width = 1095
    Height = 375
    TabIndex = 4
    Value = 1
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
  Begin VB.ListBox List1
    Left = 240
    Top = 4080
    Width = 11415
    Height = 4545
    TabIndex = 13
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
  Begin VB.CommandButton cmdTurnoDiaMes
    Caption = "&Turno"
    Index = 0
    Left = 1200
    Top = 2760
    Width = 1335
    Height = 375
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
  Begin VB.CommandButton cmdTurnoDiaMes
    Caption = "&Dia"
    Index = 1
    Left = 3000
    Top = 2760
    Width = 1335
    Height = 375
    TabIndex = 7
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
    Caption = "&Mes"
    Index = 2
    Left = 4800
    Top = 2760
    Width = 1215
    Height = 375
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
  Begin Threed.SSCommand sscImprimir
    Left = 9360
    Top = 2040
    Width = 2295
    Height = 495
    TabIndex = 10
    OleObjectBlob = "frmListadoCTF.frx":0000
  End
  Begin Threed.SSCommand cmdConsultar
    Left = 9360
    Top = 1440
    Width = 2295
    Height = 495
    TabIndex = 9
    OleObjectBlob = "frmListadoCTF.frx":0065
  End
  Begin MSMask.MaskEdBox FechaInicial
    Left = 1200
    Top = 1440
    Width = 2235
    Height = 435
    TabIndex = 0
    OleObjectBlob = "frmListadoCTF.frx":00CB
  End
  Begin MSMask.MaskEdBox HoraInicial
    Left = 3840
    Top = 1440
    Width = 2235
    Height = 435
    TabIndex = 1
    OleObjectBlob = "frmListadoCTF.frx":015F
  End
  Begin MSMask.MaskEdBox HoraFinal
    Left = 3840
    Top = 2100
    Width = 2235
    Height = 435
    TabIndex = 3
    OleObjectBlob = "frmListadoCTF.frx":01FF
  End
  Begin Threed.SSCommand sscSalir
    Left = 9360
    Top = 2640
    Width = 2295
    Height = 495
    TabIndex = 11
    OleObjectBlob = "frmListadoCTF.frx":029F
  End
  Begin MSMask.MaskEdBox FechaFinal
    Left = 1200
    Top = 2100
    Width = 2235
    Height = 435
    TabIndex = 2
    OleObjectBlob = "frmListadoCTF.frx":0303
  End
  Begin VB.Label Label2
    Caption = "Patente"
    Index = 6
    Left = 5040
    Top = 3720
    Width = 975
    Height = 255
    TabIndex = 25
    Alignment = 2 'Center
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
    Caption = "Odómetro"
    Index = 1
    Left = 6360
    Top = 3720
    Width = 1215
    Height = 255
    TabIndex = 24
    Alignment = 2 'Center
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
    Caption = "Desde :"
    Index = 0
    Left = 240
    Top = 1560
    Width = 975
    Height = 375
    TabIndex = 23
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
    Caption = "Hasta :"
    Index = 1
    Left = 240
    Top = 2220
    Width = 975
    Height = 375
    TabIndex = 22
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
  Begin VB.Label Label2
    Caption = "Fecha y Hora"
    Index = 0
    Left = 360
    Top = 3720
    Width = 1695
    Height = 255
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
  End
  Begin VB.Label labelsurtidor2
    Caption = "Surtidor"
    Left = 2280
    Top = 3720
    Width = 1095
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
  Begin VB.Label Label2
    Caption = "Producto"
    Index = 2
    Left = 3600
    Top = 3720
    Width = 1095
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
  Begin VB.Label Label2
    Caption = "Monto"
    Index = 3
    Left = 8280
    Top = 3720
    Width = 855
    Height = 255
    TabIndex = 18
    Alignment = 2 'Center
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
    Caption = "Volumen"
    Index = 4
    Left = 9480
    Top = 3720
    Width = 1095
    Height = 255
    TabIndex = 17
    Alignment = 2 'Center
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
    Caption = "PPU"
    Index = 5
    Left = 10920
    Top = 3720
    Width = 735
    Height = 255
    TabIndex = 16
    Alignment = 2 'Center
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
    Caption = "Listado CDFP"
    Left = 3480
    Top = 240
    Width = 3855
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
  Begin VB.Label Label4
    Caption = "Fecha"
    Left = 1320
    Top = 1200
    Width = 2055
    Height = 255
    TabIndex = 14
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
  Begin VB.Label Label5
    Caption = "Hora"
    Left = 3960
    Top = 1200
    Width = 2055
    Height = 255
    TabIndex = 12
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
End

Attribute VB_Name = "frmListadoCTF"


Private Sub Form_Load() '6E25B0
  'Data Table: 43A8EC
  loc_6E193C: ILdRf Me
  loc_6E193F: CastAd
  loc_6E1942: FStAdFunc var_88
  loc_6E1945: FLdRfVar var_88
  loc_6E1948: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6E194D: FFree1Ad var_88
  loc_6E1950: FLdRfVar var_98
  loc_6E1953: ImpAdCallFPR4  = Now
  loc_6E1958: FLdRfVar var_98
  loc_6E195B: FLdRfVar var_A8
  loc_6E195E: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6E1963: FLdRfVar var_108
  loc_6E1966: ImpAdCallFPR4  = Now
  loc_6E196B: FLdRfVar var_108
  loc_6E196E: FLdRfVar var_118
  loc_6E1971: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6E1976: FLdRfVar var_188
  loc_6E1979: ImpAdCallFPR4  = Now
  loc_6E197E: FLdRfVar var_188
  loc_6E1981: FLdRfVar var_198
  loc_6E1984: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6E1989: LitI4 1
  loc_6E198E: LitI4 1
  loc_6E1993: LitVarStr var_B8, "00"
  loc_6E1998: FStVarCopyObj var_C8
  loc_6E199B: FLdRfVar var_C8
  loc_6E199E: FLdRfVar var_A8
  loc_6E19A1: FLdRfVar var_D8
  loc_6E19A4: ImpAdCallFPR4  = Format(, )
  loc_6E19A9: FLdRfVar var_D8
  loc_6E19AC: LitVarStr var_E8, "-"
  loc_6E19B1: ConcatVar var_F8
  loc_6E19B5: LitI4 1
  loc_6E19BA: LitI4 1
  loc_6E19BF: LitVarStr var_128, "00"
  loc_6E19C4: FStVarCopyObj var_138
  loc_6E19C7: FLdRfVar var_138
  loc_6E19CA: FLdRfVar var_118
  loc_6E19CD: FLdRfVar var_148
  loc_6E19D0: ImpAdCallFPR4  = Format(, )
  loc_6E19D5: FLdRfVar var_148
  loc_6E19D8: ConcatVar var_158
  loc_6E19DC: LitVarStr var_168, "-"
  loc_6E19E1: ConcatVar var_178
  loc_6E19E5: LitI4 1
  loc_6E19EA: LitI4 1
  loc_6E19EF: LitVarStr var_1A8, "0000"
  loc_6E19F4: FStVarCopyObj var_1B8
  loc_6E19F7: FLdRfVar var_1B8
  loc_6E19FA: FLdRfVar var_198
  loc_6E19FD: FLdRfVar var_1C8
  loc_6E1A00: ImpAdCallFPR4  = Format(, )
  loc_6E1A05: FLdRfVar var_1C8
  loc_6E1A08: ConcatVar var_1D8
  loc_6E1A0C: CStrVarTmp
  loc_6E1A0D: CVarStr var_1E8
  loc_6E1A10: PopAdLdVar
  loc_6E1A11: FLdPrThis
  loc_6E1A12: VCallAd Control_ID_FechaInicial
  loc_6E1A15: FStAdFunc var_88
  loc_6E1A18: FLdPr var_88
  loc_6E1A1B: LateIdSt
  loc_6E1A20: FFree1Ad var_88
  loc_6E1A23: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_108 = "": var_118 = "": var_138 = "": var_F8 = "": var_148 = "": var_158 = "": var_188 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1D8 = ""
  loc_6E1A48: FLdRfVar var_98
  loc_6E1A4B: ImpAdCallFPR4  = Now
  loc_6E1A50: FLdRfVar var_98
  loc_6E1A53: FLdRfVar var_A8
  loc_6E1A56: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6E1A5B: FLdRfVar var_108
  loc_6E1A5E: ImpAdCallFPR4  = Now
  loc_6E1A63: FLdRfVar var_108
  loc_6E1A66: FLdRfVar var_118
  loc_6E1A69: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6E1A6E: FLdRfVar var_188
  loc_6E1A71: ImpAdCallFPR4  = Now
  loc_6E1A76: FLdRfVar var_188
  loc_6E1A79: FLdRfVar var_198
  loc_6E1A7C: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6E1A81: LitI4 1
  loc_6E1A86: LitI4 1
  loc_6E1A8B: LitVarStr var_B8, "00"
  loc_6E1A90: FStVarCopyObj var_C8
  loc_6E1A93: FLdRfVar var_C8
  loc_6E1A96: FLdRfVar var_A8
  loc_6E1A99: FLdRfVar var_D8
  loc_6E1A9C: ImpAdCallFPR4  = Format(, )
  loc_6E1AA1: FLdRfVar var_D8
  loc_6E1AA4: LitVarStr var_E8, "-"
  loc_6E1AA9: ConcatVar var_F8
  loc_6E1AAD: LitI4 1
  loc_6E1AB2: LitI4 1
  loc_6E1AB7: LitVarStr var_128, "00"
  loc_6E1ABC: FStVarCopyObj var_138
  loc_6E1ABF: FLdRfVar var_138
  loc_6E1AC2: FLdRfVar var_118
  loc_6E1AC5: FLdRfVar var_148
  loc_6E1AC8: ImpAdCallFPR4  = Format(, )
  loc_6E1ACD: FLdRfVar var_148
  loc_6E1AD0: ConcatVar var_158
  loc_6E1AD4: LitVarStr var_168, "-"
  loc_6E1AD9: ConcatVar var_178
  loc_6E1ADD: LitI4 1
  loc_6E1AE2: LitI4 1
  loc_6E1AE7: LitVarStr var_1A8, "0000"
  loc_6E1AEC: FStVarCopyObj var_1B8
  loc_6E1AEF: FLdRfVar var_1B8
  loc_6E1AF2: FLdRfVar var_198
  loc_6E1AF5: FLdRfVar var_1C8
  loc_6E1AF8: ImpAdCallFPR4  = Format(, )
  loc_6E1AFD: FLdRfVar var_1C8
  loc_6E1B00: ConcatVar var_1D8
  loc_6E1B04: CStrVarTmp
  loc_6E1B05: CVarStr var_1E8
  loc_6E1B08: PopAdLdVar
  loc_6E1B09: FLdPrThis
  loc_6E1B0A: VCallAd Control_ID_FechaFinal
  loc_6E1B0D: FStAdFunc var_88
  loc_6E1B10: FLdPr var_88
  loc_6E1B13: LateIdSt
  loc_6E1B18: FFree1Ad var_88
  loc_6E1B1B: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_108 = "": var_118 = "": var_138 = "": var_F8 = "": var_148 = "": var_158 = "": var_188 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1D8 = ""
  loc_6E1B40: LitVarStr var_B8, "00:00:00"
  loc_6E1B45: PopAdLdVar
  loc_6E1B46: FLdPrThis
  loc_6E1B47: VCallAd Control_ID_HoraInicial
  loc_6E1B4A: FStAdFunc var_88
  loc_6E1B4D: FLdPr var_88
  loc_6E1B50: LateIdSt
  loc_6E1B55: FFree1Ad var_88
  loc_6E1B58: FLdRfVar var_98
  loc_6E1B5B: ImpAdCallFPR4  = Now
  loc_6E1B60: FLdRfVar var_98
  loc_6E1B63: FLdRfVar var_A8
  loc_6E1B66: ImpAdCallFPR4  = Hour()
  loc_6E1B6B: FLdRfVar var_108
  loc_6E1B6E: ImpAdCallFPR4  = Now
  loc_6E1B73: FLdRfVar var_108
  loc_6E1B76: FLdRfVar var_118
  loc_6E1B79: ImpAdCallFPR4  = Minute()
  loc_6E1B7E: FLdRfVar var_188
  loc_6E1B81: ImpAdCallFPR4  = Now
  loc_6E1B86: FLdRfVar var_188
  loc_6E1B89: FLdRfVar var_198
  loc_6E1B8C: ImpAdCallFPR4  = Second()
  loc_6E1B91: LitI4 1
  loc_6E1B96: LitI4 1
  loc_6E1B9B: LitVarStr var_B8, "00"
  loc_6E1BA0: FStVarCopyObj var_C8
  loc_6E1BA3: FLdRfVar var_C8
  loc_6E1BA6: FLdRfVar var_A8
  loc_6E1BA9: FLdRfVar var_D8
  loc_6E1BAC: ImpAdCallFPR4  = Format(, )
  loc_6E1BB1: FLdRfVar var_D8
  loc_6E1BB4: LitVarStr var_E8, ":"
  loc_6E1BB9: ConcatVar var_F8
  loc_6E1BBD: LitI4 1
  loc_6E1BC2: LitI4 1
  loc_6E1BC7: LitVarStr var_128, "00"
  loc_6E1BCC: FStVarCopyObj var_138
  loc_6E1BCF: FLdRfVar var_138
  loc_6E1BD2: FLdRfVar var_118
  loc_6E1BD5: FLdRfVar var_148
  loc_6E1BD8: ImpAdCallFPR4  = Format(, )
  loc_6E1BDD: FLdRfVar var_148
  loc_6E1BE0: ConcatVar var_158
  loc_6E1BE4: LitVarStr var_168, ":"
  loc_6E1BE9: ConcatVar var_178
  loc_6E1BED: LitI4 1
  loc_6E1BF2: LitI4 1
  loc_6E1BF7: LitVarStr var_1A8, "00"
  loc_6E1BFC: FStVarCopyObj var_1B8
  loc_6E1BFF: FLdRfVar var_1B8
  loc_6E1C02: FLdRfVar var_198
  loc_6E1C05: FLdRfVar var_1C8
  loc_6E1C08: ImpAdCallFPR4  = Format(, )
  loc_6E1C0D: FLdRfVar var_1C8
  loc_6E1C10: ConcatVar var_1D8
  loc_6E1C14: CStrVarTmp
  loc_6E1C15: CVarStr var_1E8
  loc_6E1C18: PopAdLdVar
  loc_6E1C19: FLdPrThis
  loc_6E1C1A: VCallAd Control_ID_HoraFinal
  loc_6E1C1D: FStAdFunc var_88
  loc_6E1C20: FLdPr var_88
  loc_6E1C23: LateIdSt
  loc_6E1C28: FFree1Ad var_88
  loc_6E1C2B: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_108 = "": var_118 = "": var_138 = "": var_F8 = "": var_148 = "": var_158 = "": var_188 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1D8 = ""
  loc_6E1C50: FLdRfVar var_248
  loc_6E1C53: LitVar_Missing var_158
  loc_6E1C56: LitVar_Missing var_148
  loc_6E1C59: LitVar_Missing var_138
  loc_6E1C5C: LitVar_Missing var_118
  loc_6E1C5F: LitVar_Missing var_108
  loc_6E1C62: LitVar_Missing var_F8
  loc_6E1C65: LitVar_Missing var_D8
  loc_6E1C68: LitVar_Missing var_C8
  loc_6E1C6B: LitVar_Missing var_A8
  loc_6E1C6E: LitVar_Missing var_98
  loc_6E1C71: LitStr "Listado CDFP"
  loc_6E1C74: FStStrCopy var_1F4
  loc_6E1C77: FLdRfVar var_1F4
  loc_6E1C7A: LitI4 1
  loc_6E1C7F: PopTmpLdAdStr var_1F0
  loc_6E1C82: LitI2_Byte &H4B
  loc_6E1C84: PopTmpLdAd2 var_1EA
  loc_6E1C87: ImpAdLdRf MemVar_74C7D0
  loc_6E1C8A: NewIfNullPr clsMsg
  loc_6E1C8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1C92: ILdRf var_248
  loc_6E1C95: FLdPrThis
  loc_6E1C96: VCallAd Control_ID_Label3
  loc_6E1C99: FStAdFunc var_88
  loc_6E1C9C: FLdPr var_88
  loc_6E1C9F: Me.Caption = from_stack_1
  loc_6E1CA4: FFreeStr var_1F4 = ""
  loc_6E1CAB: FFree1Ad var_88
  loc_6E1CAE: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1CC5: FLdRfVar var_248
  loc_6E1CC8: LitVar_Missing var_158
  loc_6E1CCB: LitVar_Missing var_148
  loc_6E1CCE: LitVar_Missing var_138
  loc_6E1CD1: LitVar_Missing var_118
  loc_6E1CD4: LitVar_Missing var_108
  loc_6E1CD7: LitVar_Missing var_F8
  loc_6E1CDA: LitVar_Missing var_D8
  loc_6E1CDD: LitVar_Missing var_C8
  loc_6E1CE0: LitVar_Missing var_A8
  loc_6E1CE3: LitVar_Missing var_98
  loc_6E1CE6: LitStr "Fecha"
  loc_6E1CE9: FStStrCopy var_1F4
  loc_6E1CEC: FLdRfVar var_1F4
  loc_6E1CEF: LitI4 2
  loc_6E1CF4: PopTmpLdAdStr var_1F0
  loc_6E1CF7: LitI2_Byte &H4B
  loc_6E1CF9: PopTmpLdAd2 var_1EA
  loc_6E1CFC: ImpAdLdRf MemVar_74C7D0
  loc_6E1CFF: NewIfNullPr clsMsg
  loc_6E1D02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1D07: ILdRf var_248
  loc_6E1D0A: FLdPrThis
  loc_6E1D0B: VCallAd Control_ID_Label4
  loc_6E1D0E: FStAdFunc var_88
  loc_6E1D11: FLdPr var_88
  loc_6E1D14: Me.Caption = from_stack_1
  loc_6E1D19: FFreeStr var_1F4 = ""
  loc_6E1D20: FFree1Ad var_88
  loc_6E1D23: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1D3A: FLdRfVar var_248
  loc_6E1D3D: LitVar_Missing var_158
  loc_6E1D40: LitVar_Missing var_148
  loc_6E1D43: LitVar_Missing var_138
  loc_6E1D46: LitVar_Missing var_118
  loc_6E1D49: LitVar_Missing var_108
  loc_6E1D4C: LitVar_Missing var_F8
  loc_6E1D4F: LitVar_Missing var_D8
  loc_6E1D52: LitVar_Missing var_C8
  loc_6E1D55: LitVar_Missing var_A8
  loc_6E1D58: LitVar_Missing var_98
  loc_6E1D5B: LitStr "Hora"
  loc_6E1D5E: FStStrCopy var_1F4
  loc_6E1D61: FLdRfVar var_1F4
  loc_6E1D64: LitI4 3
  loc_6E1D69: PopTmpLdAdStr var_1F0
  loc_6E1D6C: LitI2_Byte &H4B
  loc_6E1D6E: PopTmpLdAd2 var_1EA
  loc_6E1D71: ImpAdLdRf MemVar_74C7D0
  loc_6E1D74: NewIfNullPr clsMsg
  loc_6E1D77: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1D7C: ILdRf var_248
  loc_6E1D7F: FLdPrThis
  loc_6E1D80: VCallAd Control_ID_Label5
  loc_6E1D83: FStAdFunc var_88
  loc_6E1D86: FLdPr var_88
  loc_6E1D89: Me.Caption = from_stack_1
  loc_6E1D8E: FFreeStr var_1F4 = ""
  loc_6E1D95: FFree1Ad var_88
  loc_6E1D98: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1DAF: FLdRfVar var_248
  loc_6E1DB2: LitVar_Missing var_158
  loc_6E1DB5: LitVar_Missing var_148
  loc_6E1DB8: LitVar_Missing var_138
  loc_6E1DBB: LitVar_Missing var_118
  loc_6E1DBE: LitVar_Missing var_108
  loc_6E1DC1: LitVar_Missing var_F8
  loc_6E1DC4: LitVar_Missing var_D8
  loc_6E1DC7: LitVar_Missing var_C8
  loc_6E1DCA: LitVar_Missing var_A8
  loc_6E1DCD: LitVar_Missing var_98
  loc_6E1DD0: LitStr "Local"
  loc_6E1DD3: FStStrCopy var_1F4
  loc_6E1DD6: FLdRfVar var_1F4
  loc_6E1DD9: LitI4 4
  loc_6E1DDE: PopTmpLdAdStr var_1F0
  loc_6E1DE1: LitI2_Byte &H4B
  loc_6E1DE3: PopTmpLdAd2 var_1EA
  loc_6E1DE6: ImpAdLdRf MemVar_74C7D0
  loc_6E1DE9: NewIfNullPr clsMsg
  loc_6E1DEC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1DF1: ILdRf var_248
  loc_6E1DF4: FLdPrThis
  loc_6E1DF5: VCallAd Control_ID_chkLocal
  loc_6E1DF8: FStAdFunc var_88
  loc_6E1DFB: FLdPr var_88
  loc_6E1DFE: Me.Caption = from_stack_1
  loc_6E1E03: FFreeStr var_1F4 = ""
  loc_6E1E0A: FFree1Ad var_88
  loc_6E1E0D: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1E24: FLdRfVar var_248
  loc_6E1E27: LitVar_Missing var_158
  loc_6E1E2A: LitVar_Missing var_148
  loc_6E1E2D: LitVar_Missing var_138
  loc_6E1E30: LitVar_Missing var_118
  loc_6E1E33: LitVar_Missing var_108
  loc_6E1E36: LitVar_Missing var_F8
  loc_6E1E39: LitVar_Missing var_D8
  loc_6E1E3C: LitVar_Missing var_C8
  loc_6E1E3F: LitVar_Missing var_A8
  loc_6E1E42: LitVar_Missing var_98
  loc_6E1E45: LitStr "Red"
  loc_6E1E48: FStStrCopy var_1F4
  loc_6E1E4B: FLdRfVar var_1F4
  loc_6E1E4E: LitI4 5
  loc_6E1E53: PopTmpLdAdStr var_1F0
  loc_6E1E56: LitI2_Byte &H4B
  loc_6E1E58: PopTmpLdAd2 var_1EA
  loc_6E1E5B: ImpAdLdRf MemVar_74C7D0
  loc_6E1E5E: NewIfNullPr clsMsg
  loc_6E1E61: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1E66: ILdRf var_248
  loc_6E1E69: FLdPrThis
  loc_6E1E6A: VCallAd Control_ID_chkRed
  loc_6E1E6D: FStAdFunc var_88
  loc_6E1E70: FLdPr var_88
  loc_6E1E73: Me.Caption = from_stack_1
  loc_6E1E78: FFreeStr var_1F4 = ""
  loc_6E1E7F: FFree1Ad var_88
  loc_6E1E82: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1E99: FLdRfVar var_248
  loc_6E1E9C: LitVar_Missing var_158
  loc_6E1E9F: LitVar_Missing var_148
  loc_6E1EA2: LitVar_Missing var_138
  loc_6E1EA5: LitVar_Missing var_118
  loc_6E1EA8: LitVar_Missing var_108
  loc_6E1EAB: LitVar_Missing var_F8
  loc_6E1EAE: LitVar_Missing var_D8
  loc_6E1EB1: LitVar_Missing var_C8
  loc_6E1EB4: LitVar_Missing var_A8
  loc_6E1EB7: LitVar_Missing var_98
  loc_6E1EBA: LitStr "&Turno"
  loc_6E1EBD: FStStrCopy var_1F4
  loc_6E1EC0: FLdRfVar var_1F4
  loc_6E1EC3: LitI4 6
  loc_6E1EC8: PopTmpLdAdStr var_1F0
  loc_6E1ECB: LitI2_Byte &H4B
  loc_6E1ECD: PopTmpLdAd2 var_1EA
  loc_6E1ED0: ImpAdLdRf MemVar_74C7D0
  loc_6E1ED3: NewIfNullPr clsMsg
  loc_6E1ED6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1EDB: ILdRf var_248
  loc_6E1EDE: FLdRfVar var_24C
  loc_6E1EE1: LitI2_Byte 0
  loc_6E1EE3: FLdPrThis
  loc_6E1EE4: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6E1EE7: FStAdFunc var_88
  loc_6E1EEA: FLdPr var_88
  loc_6E1EED: Set from_stack_2 = Me(from_stack_1)
  loc_6E1EF2: FLdPr var_24C
  loc_6E1EF5: Me.Caption = from_stack_1
  loc_6E1EFA: FFreeStr var_1F4 = ""
  loc_6E1F01: FFreeAd var_88 = ""
  loc_6E1F08: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1F1F: FLdRfVar var_248
  loc_6E1F22: LitVar_Missing var_158
  loc_6E1F25: LitVar_Missing var_148
  loc_6E1F28: LitVar_Missing var_138
  loc_6E1F2B: LitVar_Missing var_118
  loc_6E1F2E: LitVar_Missing var_108
  loc_6E1F31: LitVar_Missing var_F8
  loc_6E1F34: LitVar_Missing var_D8
  loc_6E1F37: LitVar_Missing var_C8
  loc_6E1F3A: LitVar_Missing var_A8
  loc_6E1F3D: LitVar_Missing var_98
  loc_6E1F40: LitStr "&Día"
  loc_6E1F43: FStStrCopy var_1F4
  loc_6E1F46: FLdRfVar var_1F4
  loc_6E1F49: LitI4 7
  loc_6E1F4E: PopTmpLdAdStr var_1F0
  loc_6E1F51: LitI2_Byte &H4B
  loc_6E1F53: PopTmpLdAd2 var_1EA
  loc_6E1F56: ImpAdLdRf MemVar_74C7D0
  loc_6E1F59: NewIfNullPr clsMsg
  loc_6E1F5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1F61: ILdRf var_248
  loc_6E1F64: FLdRfVar var_24C
  loc_6E1F67: LitI2_Byte 1
  loc_6E1F69: FLdPrThis
  loc_6E1F6A: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6E1F6D: FStAdFunc var_88
  loc_6E1F70: FLdPr var_88
  loc_6E1F73: Set from_stack_2 = Me(from_stack_1)
  loc_6E1F78: FLdPr var_24C
  loc_6E1F7B: Me.Caption = from_stack_1
  loc_6E1F80: FFreeStr var_1F4 = ""
  loc_6E1F87: FFreeAd var_88 = ""
  loc_6E1F8E: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E1FA5: FLdRfVar var_248
  loc_6E1FA8: LitVar_Missing var_158
  loc_6E1FAB: LitVar_Missing var_148
  loc_6E1FAE: LitVar_Missing var_138
  loc_6E1FB1: LitVar_Missing var_118
  loc_6E1FB4: LitVar_Missing var_108
  loc_6E1FB7: LitVar_Missing var_F8
  loc_6E1FBA: LitVar_Missing var_D8
  loc_6E1FBD: LitVar_Missing var_C8
  loc_6E1FC0: LitVar_Missing var_A8
  loc_6E1FC3: LitVar_Missing var_98
  loc_6E1FC6: LitStr "&Mes"
  loc_6E1FC9: FStStrCopy var_1F4
  loc_6E1FCC: FLdRfVar var_1F4
  loc_6E1FCF: LitI4 8
  loc_6E1FD4: PopTmpLdAdStr var_1F0
  loc_6E1FD7: LitI2_Byte &H4B
  loc_6E1FD9: PopTmpLdAd2 var_1EA
  loc_6E1FDC: ImpAdLdRf MemVar_74C7D0
  loc_6E1FDF: NewIfNullPr clsMsg
  loc_6E1FE2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E1FE7: ILdRf var_248
  loc_6E1FEA: FLdRfVar var_24C
  loc_6E1FED: LitI2_Byte 2
  loc_6E1FEF: FLdPrThis
  loc_6E1FF0: VCallAd Control_ID_cmdTurnoDiaMes
  loc_6E1FF3: FStAdFunc var_88
  loc_6E1FF6: FLdPr var_88
  loc_6E1FF9: Set from_stack_2 = Me(from_stack_1)
  loc_6E1FFE: FLdPr var_24C
  loc_6E2001: Me.Caption = from_stack_1
  loc_6E2006: FFreeStr var_1F4 = ""
  loc_6E200D: FFreeAd var_88 = ""
  loc_6E2014: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E202B: FLdRfVar var_248
  loc_6E202E: LitVar_Missing var_158
  loc_6E2031: LitVar_Missing var_148
  loc_6E2034: LitVar_Missing var_138
  loc_6E2037: LitVar_Missing var_118
  loc_6E203A: LitVar_Missing var_108
  loc_6E203D: LitVar_Missing var_F8
  loc_6E2040: LitVar_Missing var_D8
  loc_6E2043: LitVar_Missing var_C8
  loc_6E2046: LitVar_Missing var_A8
  loc_6E2049: LitVar_Missing var_98
  loc_6E204C: LitStr "&Consultar"
  loc_6E204F: FStStrCopy var_1F4
  loc_6E2052: FLdRfVar var_1F4
  loc_6E2055: LitI4 9
  loc_6E205A: PopTmpLdAdStr var_1F0
  loc_6E205D: LitI2_Byte &H4B
  loc_6E205F: PopTmpLdAd2 var_1EA
  loc_6E2062: ImpAdLdRf MemVar_74C7D0
  loc_6E2065: NewIfNullPr clsMsg
  loc_6E2068: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E206D: FLdZeroAd var_248
  loc_6E2070: CVarStr var_178
  loc_6E2073: PopAdLdVar
  loc_6E2074: FLdPrThis
  loc_6E2075: VCallAd Control_ID_cmdConsultar
  loc_6E2078: FStAdFunc var_88
  loc_6E207B: FLdPr var_88
  loc_6E207E: LateIdSt
  loc_6E2083: FFree1Str var_1F4
  loc_6E2086: FFree1Ad var_88
  loc_6E2089: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_6E20A2: FLdRfVar var_248
  loc_6E20A5: LitVar_Missing var_158
  loc_6E20A8: LitVar_Missing var_148
  loc_6E20AB: LitVar_Missing var_138
  loc_6E20AE: LitVar_Missing var_118
  loc_6E20B1: LitVar_Missing var_108
  loc_6E20B4: LitVar_Missing var_F8
  loc_6E20B7: LitVar_Missing var_D8
  loc_6E20BA: LitVar_Missing var_C8
  loc_6E20BD: LitVar_Missing var_A8
  loc_6E20C0: LitVar_Missing var_98
  loc_6E20C3: LitStr "&Imprimir"
  loc_6E20C6: FStStrCopy var_1F4
  loc_6E20C9: FLdRfVar var_1F4
  loc_6E20CC: LitI4 &HA
  loc_6E20D1: PopTmpLdAdStr var_1F0
  loc_6E20D4: LitI2_Byte &H4B
  loc_6E20D6: PopTmpLdAd2 var_1EA
  loc_6E20D9: ImpAdLdRf MemVar_74C7D0
  loc_6E20DC: NewIfNullPr clsMsg
  loc_6E20DF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E20E4: FLdZeroAd var_248
  loc_6E20E7: CVarStr var_178
  loc_6E20EA: PopAdLdVar
  loc_6E20EB: FLdPrThis
  loc_6E20EC: VCallAd Control_ID_sscImprimir
  loc_6E20EF: FStAdFunc var_88
  loc_6E20F2: FLdPr var_88
  loc_6E20F5: LateIdSt
  loc_6E20FA: FFree1Str var_1F4
  loc_6E20FD: FFree1Ad var_88
  loc_6E2100: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_6E2119: FLdRfVar var_248
  loc_6E211C: LitVar_Missing var_158
  loc_6E211F: LitVar_Missing var_148
  loc_6E2122: LitVar_Missing var_138
  loc_6E2125: LitVar_Missing var_118
  loc_6E2128: LitVar_Missing var_108
  loc_6E212B: LitVar_Missing var_F8
  loc_6E212E: LitVar_Missing var_D8
  loc_6E2131: LitVar_Missing var_C8
  loc_6E2134: LitVar_Missing var_A8
  loc_6E2137: LitVar_Missing var_98
  loc_6E213A: LitStr "&Salir"
  loc_6E213D: FStStrCopy var_1F4
  loc_6E2140: FLdRfVar var_1F4
  loc_6E2143: LitI4 &HB
  loc_6E2148: PopTmpLdAdStr var_1F0
  loc_6E214B: LitI2_Byte &H4B
  loc_6E214D: PopTmpLdAd2 var_1EA
  loc_6E2150: ImpAdLdRf MemVar_74C7D0
  loc_6E2153: NewIfNullPr clsMsg
  loc_6E2156: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E215B: FLdZeroAd var_248
  loc_6E215E: CVarStr var_178
  loc_6E2161: PopAdLdVar
  loc_6E2162: FLdPrThis
  loc_6E2163: VCallAd Control_ID_sscSalir
  loc_6E2166: FStAdFunc var_88
  loc_6E2169: FLdPr var_88
  loc_6E216C: LateIdSt
  loc_6E2171: FFree1Str var_1F4
  loc_6E2174: FFree1Ad var_88
  loc_6E2177: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_6E2190: FLdRfVar var_248
  loc_6E2193: LitVar_Missing var_158
  loc_6E2196: LitVar_Missing var_148
  loc_6E2199: LitVar_Missing var_138
  loc_6E219C: LitVar_Missing var_118
  loc_6E219F: LitVar_Missing var_108
  loc_6E21A2: LitVar_Missing var_F8
  loc_6E21A5: LitVar_Missing var_D8
  loc_6E21A8: LitVar_Missing var_C8
  loc_6E21AB: LitVar_Missing var_A8
  loc_6E21AE: LitVar_Missing var_98
  loc_6E21B1: LitStr "Fecha y Hora"
  loc_6E21B4: FStStrCopy var_1F4
  loc_6E21B7: FLdRfVar var_1F4
  loc_6E21BA: LitI4 &HC
  loc_6E21BF: PopTmpLdAdStr var_1F0
  loc_6E21C2: LitI2_Byte &H4B
  loc_6E21C4: PopTmpLdAd2 var_1EA
  loc_6E21C7: ImpAdLdRf MemVar_74C7D0
  loc_6E21CA: NewIfNullPr clsMsg
  loc_6E21CD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E21D2: ILdRf var_248
  loc_6E21D5: FLdRfVar var_24C
  loc_6E21D8: LitI2_Byte 0
  loc_6E21DA: FLdPrThis
  loc_6E21DB: VCallAd Control_ID_Label2
  loc_6E21DE: FStAdFunc var_88
  loc_6E21E1: FLdPr var_88
  loc_6E21E4: Set from_stack_2 = Me(from_stack_1)
  loc_6E21E9: FLdPr var_24C
  loc_6E21EC: Me.Caption = from_stack_1
  loc_6E21F1: FFreeStr var_1F4 = ""
  loc_6E21F8: FFreeAd var_88 = ""
  loc_6E21FF: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E2216: FLdRfVar var_248
  loc_6E2219: LitVar_Missing var_158
  loc_6E221C: LitVar_Missing var_148
  loc_6E221F: LitVar_Missing var_138
  loc_6E2222: LitVar_Missing var_118
  loc_6E2225: LitVar_Missing var_108
  loc_6E2228: LitVar_Missing var_F8
  loc_6E222B: LitVar_Missing var_D8
  loc_6E222E: LitVar_Missing var_C8
  loc_6E2231: LitVar_Missing var_A8
  loc_6E2234: LitVar_Missing var_98
  loc_6E2237: LitStr "Surtidor"
  loc_6E223A: FStStrCopy var_1F4
  loc_6E223D: FLdRfVar var_1F4
  loc_6E2240: LitI4 &HD
  loc_6E2245: PopTmpLdAdStr var_1F0
  loc_6E2248: LitI2_Byte &H4B
  loc_6E224A: PopTmpLdAd2 var_1EA
  loc_6E224D: ImpAdLdRf MemVar_74C7D0
  loc_6E2250: NewIfNullPr clsMsg
  loc_6E2253: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2258: ILdRf var_248
  loc_6E225B: FLdPrThis
  loc_6E225C: VCallAd Control_ID_labelsurtidor2
  loc_6E225F: FStAdFunc var_88
  loc_6E2262: FLdPr var_88
  loc_6E2265: Me.Caption = from_stack_1
  loc_6E226A: FFreeStr var_1F4 = ""
  loc_6E2271: FFree1Ad var_88
  loc_6E2274: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E228B: FLdRfVar var_248
  loc_6E228E: LitVar_Missing var_158
  loc_6E2291: LitVar_Missing var_148
  loc_6E2294: LitVar_Missing var_138
  loc_6E2297: LitVar_Missing var_118
  loc_6E229A: LitVar_Missing var_108
  loc_6E229D: LitVar_Missing var_F8
  loc_6E22A0: LitVar_Missing var_D8
  loc_6E22A3: LitVar_Missing var_C8
  loc_6E22A6: LitVar_Missing var_A8
  loc_6E22A9: LitVar_Missing var_98
  loc_6E22AC: LitStr "Producto"
  loc_6E22AF: FStStrCopy var_1F4
  loc_6E22B2: FLdRfVar var_1F4
  loc_6E22B5: LitI4 &HE
  loc_6E22BA: PopTmpLdAdStr var_1F0
  loc_6E22BD: LitI2_Byte &H4B
  loc_6E22BF: PopTmpLdAd2 var_1EA
  loc_6E22C2: ImpAdLdRf MemVar_74C7D0
  loc_6E22C5: NewIfNullPr clsMsg
  loc_6E22C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E22CD: ILdRf var_248
  loc_6E22D0: FLdRfVar var_24C
  loc_6E22D3: LitI2_Byte 2
  loc_6E22D5: FLdPrThis
  loc_6E22D6: VCallAd Control_ID_Label2
  loc_6E22D9: FStAdFunc var_88
  loc_6E22DC: FLdPr var_88
  loc_6E22DF: Set from_stack_2 = Me(from_stack_1)
  loc_6E22E4: FLdPr var_24C
  loc_6E22E7: Me.Caption = from_stack_1
  loc_6E22EC: FFreeStr var_1F4 = ""
  loc_6E22F3: FFreeAd var_88 = ""
  loc_6E22FA: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E2311: FLdRfVar var_248
  loc_6E2314: LitVar_Missing var_158
  loc_6E2317: LitVar_Missing var_148
  loc_6E231A: LitVar_Missing var_138
  loc_6E231D: LitVar_Missing var_118
  loc_6E2320: LitVar_Missing var_108
  loc_6E2323: LitVar_Missing var_F8
  loc_6E2326: LitVar_Missing var_D8
  loc_6E2329: LitVar_Missing var_C8
  loc_6E232C: LitVar_Missing var_A8
  loc_6E232F: LitVar_Missing var_98
  loc_6E2332: LitStr "Patente"
  loc_6E2335: FStStrCopy var_1F4
  loc_6E2338: FLdRfVar var_1F4
  loc_6E233B: LitI4 &HF
  loc_6E2340: PopTmpLdAdStr var_1F0
  loc_6E2343: LitI2_Byte &H4B
  loc_6E2345: PopTmpLdAd2 var_1EA
  loc_6E2348: ImpAdLdRf MemVar_74C7D0
  loc_6E234B: NewIfNullPr clsMsg
  loc_6E234E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2353: ILdRf var_248
  loc_6E2356: FLdRfVar var_24C
  loc_6E2359: LitI2_Byte 6
  loc_6E235B: FLdPrThis
  loc_6E235C: VCallAd Control_ID_Label2
  loc_6E235F: FStAdFunc var_88
  loc_6E2362: FLdPr var_88
  loc_6E2365: Set from_stack_2 = Me(from_stack_1)
  loc_6E236A: FLdPr var_24C
  loc_6E236D: Me.Caption = from_stack_1
  loc_6E2372: FFreeStr var_1F4 = ""
  loc_6E2379: FFreeAd var_88 = ""
  loc_6E2380: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E2397: FLdRfVar var_248
  loc_6E239A: LitVar_Missing var_158
  loc_6E239D: LitVar_Missing var_148
  loc_6E23A0: LitVar_Missing var_138
  loc_6E23A3: LitVar_Missing var_118
  loc_6E23A6: LitVar_Missing var_108
  loc_6E23A9: LitVar_Missing var_F8
  loc_6E23AC: LitVar_Missing var_D8
  loc_6E23AF: LitVar_Missing var_C8
  loc_6E23B2: LitVar_Missing var_A8
  loc_6E23B5: LitVar_Missing var_98
  loc_6E23B8: LitStr "Odómetro"
  loc_6E23BB: FStStrCopy var_1F4
  loc_6E23BE: FLdRfVar var_1F4
  loc_6E23C1: LitI4 &H10
  loc_6E23C6: PopTmpLdAdStr var_1F0
  loc_6E23C9: LitI2_Byte &H4B
  loc_6E23CB: PopTmpLdAd2 var_1EA
  loc_6E23CE: ImpAdLdRf MemVar_74C7D0
  loc_6E23D1: NewIfNullPr clsMsg
  loc_6E23D4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E23D9: ILdRf var_248
  loc_6E23DC: FLdRfVar var_24C
  loc_6E23DF: LitI2_Byte 1
  loc_6E23E1: FLdPrThis
  loc_6E23E2: VCallAd Control_ID_Label2
  loc_6E23E5: FStAdFunc var_88
  loc_6E23E8: FLdPr var_88
  loc_6E23EB: Set from_stack_2 = Me(from_stack_1)
  loc_6E23F0: FLdPr var_24C
  loc_6E23F3: Me.Caption = from_stack_1
  loc_6E23F8: FFreeStr var_1F4 = ""
  loc_6E23FF: FFreeAd var_88 = ""
  loc_6E2406: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E241D: FLdRfVar var_248
  loc_6E2420: LitVar_Missing var_158
  loc_6E2423: LitVar_Missing var_148
  loc_6E2426: LitVar_Missing var_138
  loc_6E2429: LitVar_Missing var_118
  loc_6E242C: LitVar_Missing var_108
  loc_6E242F: LitVar_Missing var_F8
  loc_6E2432: LitVar_Missing var_D8
  loc_6E2435: LitVar_Missing var_C8
  loc_6E2438: LitVar_Missing var_A8
  loc_6E243B: LitVar_Missing var_98
  loc_6E243E: LitStr "Monto"
  loc_6E2441: FStStrCopy var_1F4
  loc_6E2444: FLdRfVar var_1F4
  loc_6E2447: LitI4 &H11
  loc_6E244C: PopTmpLdAdStr var_1F0
  loc_6E244F: LitI2_Byte &H4B
  loc_6E2451: PopTmpLdAd2 var_1EA
  loc_6E2454: ImpAdLdRf MemVar_74C7D0
  loc_6E2457: NewIfNullPr clsMsg
  loc_6E245A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E245F: ILdRf var_248
  loc_6E2462: FLdRfVar var_24C
  loc_6E2465: LitI2_Byte 3
  loc_6E2467: FLdPrThis
  loc_6E2468: VCallAd Control_ID_Label2
  loc_6E246B: FStAdFunc var_88
  loc_6E246E: FLdPr var_88
  loc_6E2471: Set from_stack_2 = Me(from_stack_1)
  loc_6E2476: FLdPr var_24C
  loc_6E2479: Me.Caption = from_stack_1
  loc_6E247E: FFreeStr var_1F4 = ""
  loc_6E2485: FFreeAd var_88 = ""
  loc_6E248C: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E24A3: FLdRfVar var_248
  loc_6E24A6: LitVar_Missing var_158
  loc_6E24A9: LitVar_Missing var_148
  loc_6E24AC: LitVar_Missing var_138
  loc_6E24AF: LitVar_Missing var_118
  loc_6E24B2: LitVar_Missing var_108
  loc_6E24B5: LitVar_Missing var_F8
  loc_6E24B8: LitVar_Missing var_D8
  loc_6E24BB: LitVar_Missing var_C8
  loc_6E24BE: LitVar_Missing var_A8
  loc_6E24C1: LitVar_Missing var_98
  loc_6E24C4: LitStr "Volumen"
  loc_6E24C7: FStStrCopy var_1F4
  loc_6E24CA: FLdRfVar var_1F4
  loc_6E24CD: LitI4 &H12
  loc_6E24D2: PopTmpLdAdStr var_1F0
  loc_6E24D5: LitI2_Byte &H4B
  loc_6E24D7: PopTmpLdAd2 var_1EA
  loc_6E24DA: ImpAdLdRf MemVar_74C7D0
  loc_6E24DD: NewIfNullPr clsMsg
  loc_6E24E0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E24E5: ILdRf var_248
  loc_6E24E8: FLdRfVar var_24C
  loc_6E24EB: LitI2_Byte 4
  loc_6E24ED: FLdPrThis
  loc_6E24EE: VCallAd Control_ID_Label2
  loc_6E24F1: FStAdFunc var_88
  loc_6E24F4: FLdPr var_88
  loc_6E24F7: Set from_stack_2 = Me(from_stack_1)
  loc_6E24FC: FLdPr var_24C
  loc_6E24FF: Me.Caption = from_stack_1
  loc_6E2504: FFreeStr var_1F4 = ""
  loc_6E250B: FFreeAd var_88 = ""
  loc_6E2512: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E2529: FLdRfVar var_248
  loc_6E252C: LitVar_Missing var_158
  loc_6E252F: LitVar_Missing var_148
  loc_6E2532: LitVar_Missing var_138
  loc_6E2535: LitVar_Missing var_118
  loc_6E2538: LitVar_Missing var_108
  loc_6E253B: LitVar_Missing var_F8
  loc_6E253E: LitVar_Missing var_D8
  loc_6E2541: LitVar_Missing var_C8
  loc_6E2544: LitVar_Missing var_A8
  loc_6E2547: LitVar_Missing var_98
  loc_6E254A: LitStr "PPU"
  loc_6E254D: FStStrCopy var_1F4
  loc_6E2550: FLdRfVar var_1F4
  loc_6E2553: LitI4 &H13
  loc_6E2558: PopTmpLdAdStr var_1F0
  loc_6E255B: LitI2_Byte &H4B
  loc_6E255D: PopTmpLdAd2 var_1EA
  loc_6E2560: ImpAdLdRf MemVar_74C7D0
  loc_6E2563: NewIfNullPr clsMsg
  loc_6E2566: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E256B: ILdRf var_248
  loc_6E256E: FLdRfVar var_24C
  loc_6E2571: LitI2_Byte 5
  loc_6E2573: FLdPrThis
  loc_6E2574: VCallAd Control_ID_Label2
  loc_6E2577: FStAdFunc var_88
  loc_6E257A: FLdPr var_88
  loc_6E257D: Set from_stack_2 = Me(from_stack_1)
  loc_6E2582: FLdPr var_24C
  loc_6E2585: Me.Caption = from_stack_1
  loc_6E258A: FFreeStr var_1F4 = ""
  loc_6E2591: FFreeAd var_88 = ""
  loc_6E2598: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_6E25AF: ExitProcHresult
End Sub

Private Sub sscImprimir_UnknownEvent_8 '6AA0C0
  'Data Table: 43A8EC
  loc_6A9A34: FLdPrThis
  loc_6A9A35: VCallAd Control_ID_List1
  loc_6A9A38: FStAdFunc var_A0
  loc_6A9A3B: FLdPr var_A0
  loc_6A9A3E: Me.Clear
  loc_6A9A43: FFree1Ad var_A0
  loc_6A9A46: FLdRfVar var_B0
  loc_6A9A49: from_stack_1v = Proc_129_11_6EACEC()
  loc_6A9A4E: FLdRfVar var_B0
  loc_6A9A51: LitVarI4
  loc_6A9A59: HardType
  loc_6A9A5A: NeVarBool
  loc_6A9A5C: FFree1Var var_B0 = ""
  loc_6A9A5F: BranchF loc_6A9A63
  loc_6A9A62: ExitProcHresult
  loc_6A9A63: FLdPrThis
  loc_6A9A64: VCallAd Control_ID_FechaInicial
  loc_6A9A67: FStAdFunc var_284
  loc_6A9A6A: FLdPrThis
  loc_6A9A6B: VCallAd Control_ID_FechaInicial
  loc_6A9A6E: FStAdFunc var_288
  loc_6A9A71: FLdPrThis
  loc_6A9A72: VCallAd Control_ID_FechaInicial
  loc_6A9A75: FStAdFunc var_28C
  loc_6A9A78: FLdPrThis
  loc_6A9A79: VCallAd Control_ID_HoraInicial
  loc_6A9A7C: FStAdFunc var_A0
  loc_6A9A7F: FLdPr var_A0
  loc_6A9A82: LateIdLdVar var_190 DispID_22 0
  loc_6A9A89: PopAd
  loc_6A9A8B: FLdPrThis
  loc_6A9A8C: VCallAd Control_ID_HoraInicial
  loc_6A9A8F: FStAdFunc var_290
  loc_6A9A92: FLdPrThis
  loc_6A9A93: VCallAd Control_ID_HoraInicial
  loc_6A9A96: FStAdFunc var_294
  loc_6A9A99: LitVarI2 var_D0, 4
  loc_6A9A9E: LitI4 7
  loc_6A9AA3: FLdZeroAd var_284
  loc_6A9AA6: CVarAd
  loc_6A9AAA: FLdRfVar var_E0
  loc_6A9AAD: ImpAdCallFPR4  = Mid(, , )
  loc_6A9AB2: FLdRfVar var_E0
  loc_6A9AB5: LitVarI2 var_110, 2
  loc_6A9ABA: LitI4 4
  loc_6A9ABF: FLdZeroAd var_288
  loc_6A9AC2: CVarAd
  loc_6A9AC6: FLdRfVar var_120
  loc_6A9AC9: ImpAdCallFPR4  = Mid(, , )
  loc_6A9ACE: FLdRfVar var_120
  loc_6A9AD1: ConcatVar var_130
  loc_6A9AD5: LitVarI2 var_160, 2
  loc_6A9ADA: LitI4 1
  loc_6A9ADF: FLdZeroAd var_28C
  loc_6A9AE2: CVarAd
  loc_6A9AE6: FLdRfVar var_170
  loc_6A9AE9: ImpAdCallFPR4  = Mid(, , )
  loc_6A9AEE: FLdRfVar var_170
  loc_6A9AF1: ConcatVar var_180
  loc_6A9AF5: LitVarI2 var_1C0, 2
  loc_6A9AFA: LitI4 1
  loc_6A9AFF: FLdRfVar var_190
  loc_6A9B02: CStrVarTmp
  loc_6A9B03: CVarStr var_1A0
  loc_6A9B06: FLdRfVar var_1D0
  loc_6A9B09: ImpAdCallFPR4  = Mid(, , )
  loc_6A9B0E: FLdRfVar var_1D0
  loc_6A9B11: ConcatVar var_1E0
  loc_6A9B15: LitVarI2 var_210, 2
  loc_6A9B1A: LitI4 4
  loc_6A9B1F: FLdZeroAd var_290
  loc_6A9B22: CVarAd
  loc_6A9B26: FLdRfVar var_220
  loc_6A9B29: ImpAdCallFPR4  = Mid(, , )
  loc_6A9B2E: FLdRfVar var_220
  loc_6A9B31: ConcatVar var_230
  loc_6A9B35: LitVarI2 var_260, 2
  loc_6A9B3A: LitI4 7
  loc_6A9B3F: FLdZeroAd var_294
  loc_6A9B42: CVarAd
  loc_6A9B46: FLdRfVar var_270
  loc_6A9B49: ImpAdCallFPR4  = Mid(, , )
  loc_6A9B4E: FLdRfVar var_270
  loc_6A9B51: ConcatVar var_280
  loc_6A9B55: CStrVarTmp
  loc_6A9B56: FStStr var_88
  loc_6A9B59: FFreeAd var_A0 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = ""
  loc_6A9B68: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_130 = "": var_170 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_1E0 = "": var_220 = "": var_240 = "": var_260 = "": var_230 = "": var_270 = ""
  loc_6A9B9B: FLdPrThis
  loc_6A9B9C: VCallAd Control_ID_FechaFinal
  loc_6A9B9F: FStAdFunc var_284
  loc_6A9BA2: FLdPrThis
  loc_6A9BA3: VCallAd Control_ID_FechaFinal
  loc_6A9BA6: FStAdFunc var_288
  loc_6A9BA9: FLdPrThis
  loc_6A9BAA: VCallAd Control_ID_FechaFinal
  loc_6A9BAD: FStAdFunc var_28C
  loc_6A9BB0: FLdPrThis
  loc_6A9BB1: VCallAd Control_ID_HoraFinal
  loc_6A9BB4: FStAdFunc var_A0
  loc_6A9BB7: FLdPr var_A0
  loc_6A9BBA: LateIdLdVar var_190 DispID_22 0
  loc_6A9BC1: PopAd
  loc_6A9BC3: FLdPrThis
  loc_6A9BC4: VCallAd Control_ID_HoraFinal
  loc_6A9BC7: FStAdFunc var_290
  loc_6A9BCA: FLdPrThis
  loc_6A9BCB: VCallAd Control_ID_HoraFinal
  loc_6A9BCE: FStAdFunc var_294
  loc_6A9BD1: LitVarI2 var_D0, 4
  loc_6A9BD6: LitI4 7
  loc_6A9BDB: FLdZeroAd var_284
  loc_6A9BDE: CVarAd
  loc_6A9BE2: FLdRfVar var_E0
  loc_6A9BE5: ImpAdCallFPR4  = Mid(, , )
  loc_6A9BEA: FLdRfVar var_E0
  loc_6A9BED: LitVarI2 var_110, 2
  loc_6A9BF2: LitI4 4
  loc_6A9BF7: FLdZeroAd var_288
  loc_6A9BFA: CVarAd
  loc_6A9BFE: FLdRfVar var_120
  loc_6A9C01: ImpAdCallFPR4  = Mid(, , )
  loc_6A9C06: FLdRfVar var_120
  loc_6A9C09: ConcatVar var_130
  loc_6A9C0D: LitVarI2 var_160, 2
  loc_6A9C12: LitI4 1
  loc_6A9C17: FLdZeroAd var_28C
  loc_6A9C1A: CVarAd
  loc_6A9C1E: FLdRfVar var_170
  loc_6A9C21: ImpAdCallFPR4  = Mid(, , )
  loc_6A9C26: FLdRfVar var_170
  loc_6A9C29: ConcatVar var_180
  loc_6A9C2D: LitVarI2 var_1C0, 2
  loc_6A9C32: LitI4 1
  loc_6A9C37: FLdRfVar var_190
  loc_6A9C3A: CStrVarTmp
  loc_6A9C3B: CVarStr var_1A0
  loc_6A9C3E: FLdRfVar var_1D0
  loc_6A9C41: ImpAdCallFPR4  = Mid(, , )
  loc_6A9C46: FLdRfVar var_1D0
  loc_6A9C49: ConcatVar var_1E0
  loc_6A9C4D: LitVarI2 var_210, 2
  loc_6A9C52: LitI4 4
  loc_6A9C57: FLdZeroAd var_290
  loc_6A9C5A: CVarAd
  loc_6A9C5E: FLdRfVar var_220
  loc_6A9C61: ImpAdCallFPR4  = Mid(, , )
  loc_6A9C66: FLdRfVar var_220
  loc_6A9C69: ConcatVar var_230
  loc_6A9C6D: LitVarI2 var_260, 2
  loc_6A9C72: LitI4 7
  loc_6A9C77: FLdZeroAd var_294
  loc_6A9C7A: CVarAd
  loc_6A9C7E: FLdRfVar var_270
  loc_6A9C81: ImpAdCallFPR4  = Mid(, , )
  loc_6A9C86: FLdRfVar var_270
  loc_6A9C89: ConcatVar var_280
  loc_6A9C8D: CStrVarTmp
  loc_6A9C8E: FStStr var_8C
  loc_6A9C91: FFreeAd var_A0 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = ""
  loc_6A9CA0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_130 = "": var_170 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_1E0 = "": var_220 = "": var_240 = "": var_260 = "": var_230 = "": var_270 = ""
  loc_6A9CD3: FLdRfVar var_296
  loc_6A9CD6: FLdPrThis
  loc_6A9CD7: VCallAd Control_ID_chkRed
  loc_6A9CDA: FStAdFunc var_A0
  loc_6A9CDD: FLdPr var_A0
  loc_6A9CE0:  = Me.Value
  loc_6A9CE5: FLdRfVar var_298
  loc_6A9CE8: FLdPrThis
  loc_6A9CE9: VCallAd Control_ID_chkLocal
  loc_6A9CEC: FStAdFunc var_284
  loc_6A9CEF: FLdPr var_284
  loc_6A9CF2:  = Me.Value
  loc_6A9CF7: ILdRf var_88
  loc_6A9CFA: ILdRf var_8C
  loc_6A9CFD: ConcatStr
  loc_6A9CFE: CVarStr var_F0
  loc_6A9D01: LitVarStr var_150, "0"
  loc_6A9D06: FStVarCopyObj var_D0
  loc_6A9D09: FLdRfVar var_D0
  loc_6A9D0C: LitVarStr var_100, "1"
  loc_6A9D11: FStVarCopyObj var_B0
  loc_6A9D14: FLdRfVar var_B0
  loc_6A9D17: FLdI2 var_296
  loc_6A9D1A: CI4UI1
  loc_6A9D1B: LitI4 1
  loc_6A9D20: EqI4
  loc_6A9D21: CVarBoolI2 var_C0
  loc_6A9D25: FLdRfVar var_E0
  loc_6A9D28: ImpAdCallFPR4  = IIf(, , )
  loc_6A9D2D: FLdRfVar var_E0
  loc_6A9D30: ConcatVar var_110
  loc_6A9D34: LitVarStr var_250, "0"
  loc_6A9D39: FStVarCopyObj var_130
  loc_6A9D3C: FLdRfVar var_130
  loc_6A9D3F: LitVarStr var_200, "1"
  loc_6A9D44: FStVarCopyObj var_120
  loc_6A9D47: FLdRfVar var_120
  loc_6A9D4A: FLdI2 var_298
  loc_6A9D4D: CI4UI1
  loc_6A9D4E: LitI4 1
  loc_6A9D53: EqI4
  loc_6A9D54: CVarBoolI2 var_1B0
  loc_6A9D58: FLdRfVar var_140
  loc_6A9D5B: ImpAdCallFPR4  = IIf(, , )
  loc_6A9D60: FLdRfVar var_140
  loc_6A9D63: ConcatVar var_160
  loc_6A9D67: CStrVarTmp
  loc_6A9D68: FStStr var_94
  loc_6A9D6B: FFreeAd var_A0 = ""
  loc_6A9D72: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_1B0 = "": var_120 = "": var_130 = "": var_110 = "": var_140 = ""
  loc_6A9D8B: FLdRfVar var_296
  loc_6A9D8E: FLdRfVar var_9C
  loc_6A9D91: ILdRf var_94
  loc_6A9D94: FLdRfVar var_A0
  loc_6A9D97: ImpAdLdRf MemVar_74C760
  loc_6A9D9A: NewIfNullPr Formx
  loc_6A9D9D: from_stack_1v = Formx.global_4589716Get()
  loc_6A9DA2: FLdPr var_A0
  loc_6A9DA5: Formx.Appearance = from_stack_1
  loc_6A9DAA: FLdI2 var_296
  loc_6A9DAD: NotI4
  loc_6A9DAE: FFree1Ad var_A0
  loc_6A9DB1: BranchF loc_6A9DE0
  loc_6A9DB4: FLdRfVar var_B0
  loc_6A9DB7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A9DBC: FLdRfVar var_B0
  loc_6A9DBF: CBoolVarNull
  loc_6A9DC1: FFree1Var var_B0 = ""
  loc_6A9DC4: BranchF loc_6A9DDD
  loc_6A9DC7: ILdRf Me
  loc_6A9DCA: FStAdNoPop
  loc_6A9DCE: ImpAdLdRf MemVar_7520D4
  loc_6A9DD1: NewIfNullPr Global
  loc_6A9DD4: Global.Unload from_stack_1
  loc_6A9DD9: FFree1Ad var_A0
  loc_6A9DDC: ExitProcHresult
  loc_6A9DDD: Branch loc_6A9D8B
  loc_6A9DE0: ILdRf var_9C
  loc_6A9DE3: LitI4 0
  loc_6A9DE8: EqI4
  loc_6A9DE9: BranchF loc_6A9E6A
  loc_6A9DEC: FLdRfVar var_2E4
  loc_6A9DEF: LitVar_Missing var_170
  loc_6A9DF2: LitVar_Missing var_160
  loc_6A9DF5: LitVar_Missing var_140
  loc_6A9DF8: LitVar_Missing var_130
  loc_6A9DFB: LitVar_Missing var_120
  loc_6A9DFE: LitVar_Missing var_110
  loc_6A9E01: LitVar_Missing var_F0
  loc_6A9E04: LitVar_Missing var_E0
  loc_6A9E07: LitVar_Missing var_D0
  loc_6A9E0A: LitVar_Missing var_B0
  loc_6A9E0D: LitStr "No existen datos a reportar."
  loc_6A9E10: FStStrCopy var_2A0
  loc_6A9E13: FLdRfVar var_2A0
  loc_6A9E16: LitI4 &H14
  loc_6A9E1B: PopTmpLdAdStr var_29C
  loc_6A9E1E: LitI2_Byte &H4B
  loc_6A9E20: PopTmpLdAd2 var_296
  loc_6A9E23: ImpAdLdRf MemVar_74C7D0
  loc_6A9E26: NewIfNullPr clsMsg
  loc_6A9E29: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9E2E: LitVar_Missing var_1C0
  loc_6A9E31: LitVar_Missing var_1A0
  loc_6A9E34: LitVar_Missing var_190
  loc_6A9E37: LitI4 &H40
  loc_6A9E3C: FLdZeroAd var_2E4
  loc_6A9E3F: CVarStr var_180
  loc_6A9E42: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A9E47: FFree1Str var_2A0
  loc_6A9E4A: FFreeVar var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6A9E69: ExitProcHresult
  loc_6A9E6A: ILdRf var_9C
  loc_6A9E6D: LitI4 &H493E0
  loc_6A9E72: GtI4
  loc_6A9E73: BranchF loc_6A9FD0
  loc_6A9E76: FLdRfVar var_2E4
  loc_6A9E79: LitVar_Missing var_170
  loc_6A9E7C: LitVar_Missing var_160
  loc_6A9E7F: LitVar_Missing var_140
  loc_6A9E82: LitVar_Missing var_130
  loc_6A9E85: LitVar_Missing var_120
  loc_6A9E88: LitVar_Missing var_110
  loc_6A9E8B: LitVar_Missing var_F0
  loc_6A9E8E: LitVar_Missing var_E0
  loc_6A9E91: LitVar_Missing var_D0
  loc_6A9E94: LitVar_Missing var_B0
  loc_6A9E97: LitStr "El período seleccionado abarca demasiados despachos."
  loc_6A9E9A: FStStrCopy var_2A0
  loc_6A9E9D: FLdRfVar var_2A0
  loc_6A9EA0: LitI4 &H15
  loc_6A9EA5: PopTmpLdAdStr var_29C
  loc_6A9EA8: LitI2_Byte &H4B
  loc_6A9EAA: PopTmpLdAd2 var_296
  loc_6A9EAD: ImpAdLdRf MemVar_74C7D0
  loc_6A9EB0: NewIfNullPr clsMsg
  loc_6A9EB3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9EB8: LitI4 &HD
  loc_6A9EBD: ImpAdCallI2 Chr$()
  loc_6A9EC2: FStStr var_50C
  loc_6A9EC5: FLdRfVar var_394
  loc_6A9EC8: LitVar_Missing var_230
  loc_6A9ECB: LitVar_Missing var_220
  loc_6A9ECE: LitVar_Missing var_210
  loc_6A9ED1: LitVar_Missing var_1F0
  loc_6A9ED4: LitVar_Missing var_1E0
  loc_6A9ED7: LitVar_Missing var_1D0
  loc_6A9EDA: LitVar_Missing var_1C0
  loc_6A9EDD: LitVar_Missing var_1A0
  loc_6A9EE0: LitVar_Missing var_190
  loc_6A9EE3: LitVar_Missing var_180
  loc_6A9EE6: LitStr "Por favor reduzca el rango."
  loc_6A9EE9: FStStrCopy var_320
  loc_6A9EEC: FLdRfVar var_320
  loc_6A9EEF: LitI4 &H16
  loc_6A9EF4: PopTmpLdAdStr var_31C
  loc_6A9EF7: LitI2_Byte &H4B
  loc_6A9EF9: PopTmpLdAd2 var_298
  loc_6A9EFC: ImpAdLdRf MemVar_74C7D0
  loc_6A9EFF: NewIfNullPr clsMsg
  loc_6A9F02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9F07: FLdRfVar var_4A8
  loc_6A9F0A: LitVar_Missing var_4A4
  loc_6A9F0D: LitVar_Missing var_484
  loc_6A9F10: LitVar_Missing var_464
  loc_6A9F13: LitVar_Missing var_444
  loc_6A9F16: LitVar_Missing var_424
  loc_6A9F19: LitVar_Missing var_404
  loc_6A9F1C: LitVar_Missing var_280
  loc_6A9F1F: LitVar_Missing var_270
  loc_6A9F22: LitVar_Missing var_260
  loc_6A9F25: LitVar_Missing var_240
  loc_6A9F28: LitStr "Despachos Anteriores"
  loc_6A9F2B: FStStrCopy var_3A4
  loc_6A9F2E: FLdRfVar var_3A4
  loc_6A9F31: LitI4 &H17
  loc_6A9F36: PopTmpLdAdStr var_3A0
  loc_6A9F39: LitI2_Byte &H4B
  loc_6A9F3B: PopTmpLdAd2 var_39A
  loc_6A9F3E: ImpAdLdRf MemVar_74C7D0
  loc_6A9F41: NewIfNullPr clsMsg
  loc_6A9F44: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A9F49: LitVar_Missing var_508
  loc_6A9F4C: LitVar_Missing var_4E8
  loc_6A9F4F: FLdZeroAd var_4A8
  loc_6A9F52: CVarStr var_4C8
  loc_6A9F55: LitI4 &H40
  loc_6A9F5A: ILdRf var_2E4
  loc_6A9F5D: FLdZeroAd var_50C
  loc_6A9F60: FStStrNoPop var_318
  loc_6A9F63: ConcatStr
  loc_6A9F64: FStStrNoPop var_398
  loc_6A9F67: ILdRf var_394
  loc_6A9F6A: ConcatStr
  loc_6A9F6B: CVarStr var_4B8
  loc_6A9F6E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A9F73: FFreeStr var_2A0 = "": var_2E4 = "": var_318 = "": var_320 = "": var_398 = "": var_394 = "": var_3A4 = ""
  loc_6A9F86: FFreeVar var_4B8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_280 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6A9FCD: Branch loc_6AA0BF
  loc_6A9FD0: FLdRfVar var_296
  loc_6A9FD3: FLdRfVar var_90
  loc_6A9FD6: FLdRfVar var_A0
  loc_6A9FD9: ImpAdLdRf MemVar_74C760
  loc_6A9FDC: NewIfNullPr Formx
  loc_6A9FDF: from_stack_1v = Formx.global_4589716Get()
  loc_6A9FE4: FLdPr var_A0
  loc_6A9FE7:  = Formx.WhatsThisButton
  loc_6A9FEC: FLdI2 var_296
  loc_6A9FEF: NotI4
  loc_6A9FF0: FFree1Ad var_A0
  loc_6A9FF3: BranchF loc_6AA022
  loc_6A9FF6: FLdRfVar var_B0
  loc_6A9FF9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A9FFE: FLdRfVar var_B0
  loc_6AA001: CBoolVarNull
  loc_6AA003: FFree1Var var_B0 = ""
  loc_6AA006: BranchF loc_6AA01F
  loc_6AA009: ILdRf Me
  loc_6AA00C: FStAdNoPop
  loc_6AA010: ImpAdLdRf MemVar_7520D4
  loc_6AA013: NewIfNullPr Global
  loc_6AA016: Global.Unload from_stack_1
  loc_6AA01B: FFree1Ad var_A0
  loc_6AA01E: ExitProcHresult
  loc_6AA01F: Branch loc_6A9FD0
  loc_6AA022: ILdRf var_90
  loc_6AA025: FnLenStr
  loc_6AA026: LitI4 &HA
  loc_6AA02B: GtI4
  loc_6AA02C: BranchF loc_6AA042
  loc_6AA02F: ILdRf var_90
  loc_6AA032: from_stack_2v = Proc_129_10_727698(from_stack_1v)
  loc_6AA037: ILdRf var_90
  loc_6AA03A: from_stack_2v = Proc_129_13_72BFB8(from_stack_1v)
  loc_6AA03F: Branch loc_6AA0BF
  loc_6AA042: FLdRfVar var_2E4
  loc_6AA045: LitVar_Missing var_170
  loc_6AA048: LitVar_Missing var_160
  loc_6AA04B: LitVar_Missing var_140
  loc_6AA04E: LitVar_Missing var_130
  loc_6AA051: LitVar_Missing var_120
  loc_6AA054: LitVar_Missing var_110
  loc_6AA057: LitVar_Missing var_F0
  loc_6AA05A: LitVar_Missing var_E0
  loc_6AA05D: LitVar_Missing var_D0
  loc_6AA060: LitVar_Missing var_B0
  loc_6AA063: LitStr "Hubo un error inesperado del servicio. Por favor vuelva a intentar la operación."
  loc_6AA066: FStStrCopy var_2A0
  loc_6AA069: FLdRfVar var_2A0
  loc_6AA06C: LitI4 &H18
  loc_6AA071: PopTmpLdAdStr var_29C
  loc_6AA074: LitI2_Byte &H4B
  loc_6AA076: PopTmpLdAd2 var_296
  loc_6AA079: ImpAdLdRf MemVar_74C7D0
  loc_6AA07C: NewIfNullPr clsMsg
  loc_6AA07F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA084: LitVar_Missing var_1C0
  loc_6AA087: LitVar_Missing var_1A0
  loc_6AA08A: LitVar_Missing var_190
  loc_6AA08D: LitI4 &H40
  loc_6AA092: FLdZeroAd var_2E4
  loc_6AA095: CVarStr var_180
  loc_6AA098: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AA09D: FFree1Str var_2A0
  loc_6AA0A0: FFreeVar var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6AA0BF: ExitProcHresult
End Sub

Private Sub cmdConsultar_UnknownEvent_8 '6A736C
  'Data Table: 43A8EC
  loc_6A6CE8: FLdPrThis
  loc_6A6CE9: VCallAd Control_ID_List1
  loc_6A6CEC: FStAdFunc var_A0
  loc_6A6CEF: FLdPr var_A0
  loc_6A6CF2: Me.Clear
  loc_6A6CF7: FFree1Ad var_A0
  loc_6A6CFA: FLdRfVar var_B0
  loc_6A6CFD: from_stack_1v = Proc_129_11_6EACEC()
  loc_6A6D02: FLdRfVar var_B0
  loc_6A6D05: LitVarI4
  loc_6A6D0D: HardType
  loc_6A6D0E: NeVarBool
  loc_6A6D10: FFree1Var var_B0 = ""
  loc_6A6D13: BranchF loc_6A6D17
  loc_6A6D16: ExitProcHresult
  loc_6A6D17: FLdPrThis
  loc_6A6D18: VCallAd Control_ID_FechaInicial
  loc_6A6D1B: FStAdFunc var_284
  loc_6A6D1E: FLdPrThis
  loc_6A6D1F: VCallAd Control_ID_FechaInicial
  loc_6A6D22: FStAdFunc var_288
  loc_6A6D25: FLdPrThis
  loc_6A6D26: VCallAd Control_ID_FechaInicial
  loc_6A6D29: FStAdFunc var_28C
  loc_6A6D2C: FLdPrThis
  loc_6A6D2D: VCallAd Control_ID_HoraInicial
  loc_6A6D30: FStAdFunc var_A0
  loc_6A6D33: FLdPr var_A0
  loc_6A6D36: LateIdLdVar var_190 DispID_22 0
  loc_6A6D3D: PopAd
  loc_6A6D3F: FLdPrThis
  loc_6A6D40: VCallAd Control_ID_HoraInicial
  loc_6A6D43: FStAdFunc var_290
  loc_6A6D46: FLdPrThis
  loc_6A6D47: VCallAd Control_ID_HoraInicial
  loc_6A6D4A: FStAdFunc var_294
  loc_6A6D4D: LitVarI2 var_D0, 4
  loc_6A6D52: LitI4 7
  loc_6A6D57: FLdZeroAd var_284
  loc_6A6D5A: CVarAd
  loc_6A6D5E: FLdRfVar var_E0
  loc_6A6D61: ImpAdCallFPR4  = Mid(, , )
  loc_6A6D66: FLdRfVar var_E0
  loc_6A6D69: LitVarI2 var_110, 2
  loc_6A6D6E: LitI4 4
  loc_6A6D73: FLdZeroAd var_288
  loc_6A6D76: CVarAd
  loc_6A6D7A: FLdRfVar var_120
  loc_6A6D7D: ImpAdCallFPR4  = Mid(, , )
  loc_6A6D82: FLdRfVar var_120
  loc_6A6D85: ConcatVar var_130
  loc_6A6D89: LitVarI2 var_160, 2
  loc_6A6D8E: LitI4 1
  loc_6A6D93: FLdZeroAd var_28C
  loc_6A6D96: CVarAd
  loc_6A6D9A: FLdRfVar var_170
  loc_6A6D9D: ImpAdCallFPR4  = Mid(, , )
  loc_6A6DA2: FLdRfVar var_170
  loc_6A6DA5: ConcatVar var_180
  loc_6A6DA9: LitVarI2 var_1C0, 2
  loc_6A6DAE: LitI4 1
  loc_6A6DB3: FLdRfVar var_190
  loc_6A6DB6: CStrVarTmp
  loc_6A6DB7: CVarStr var_1A0
  loc_6A6DBA: FLdRfVar var_1D0
  loc_6A6DBD: ImpAdCallFPR4  = Mid(, , )
  loc_6A6DC2: FLdRfVar var_1D0
  loc_6A6DC5: ConcatVar var_1E0
  loc_6A6DC9: LitVarI2 var_210, 2
  loc_6A6DCE: LitI4 4
  loc_6A6DD3: FLdZeroAd var_290
  loc_6A6DD6: CVarAd
  loc_6A6DDA: FLdRfVar var_220
  loc_6A6DDD: ImpAdCallFPR4  = Mid(, , )
  loc_6A6DE2: FLdRfVar var_220
  loc_6A6DE5: ConcatVar var_230
  loc_6A6DE9: LitVarI2 var_260, 2
  loc_6A6DEE: LitI4 7
  loc_6A6DF3: FLdZeroAd var_294
  loc_6A6DF6: CVarAd
  loc_6A6DFA: FLdRfVar var_270
  loc_6A6DFD: ImpAdCallFPR4  = Mid(, , )
  loc_6A6E02: FLdRfVar var_270
  loc_6A6E05: ConcatVar var_280
  loc_6A6E09: CStrVarTmp
  loc_6A6E0A: FStStr var_88
  loc_6A6E0D: FFreeAd var_A0 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = ""
  loc_6A6E1C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_130 = "": var_170 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_1E0 = "": var_220 = "": var_240 = "": var_260 = "": var_230 = "": var_270 = ""
  loc_6A6E4F: FLdPrThis
  loc_6A6E50: VCallAd Control_ID_FechaFinal
  loc_6A6E53: FStAdFunc var_284
  loc_6A6E56: FLdPrThis
  loc_6A6E57: VCallAd Control_ID_FechaFinal
  loc_6A6E5A: FStAdFunc var_288
  loc_6A6E5D: FLdPrThis
  loc_6A6E5E: VCallAd Control_ID_FechaFinal
  loc_6A6E61: FStAdFunc var_28C
  loc_6A6E64: FLdPrThis
  loc_6A6E65: VCallAd Control_ID_HoraFinal
  loc_6A6E68: FStAdFunc var_A0
  loc_6A6E6B: FLdPr var_A0
  loc_6A6E6E: LateIdLdVar var_190 DispID_22 0
  loc_6A6E75: PopAd
  loc_6A6E77: FLdPrThis
  loc_6A6E78: VCallAd Control_ID_HoraFinal
  loc_6A6E7B: FStAdFunc var_290
  loc_6A6E7E: FLdPrThis
  loc_6A6E7F: VCallAd Control_ID_HoraFinal
  loc_6A6E82: FStAdFunc var_294
  loc_6A6E85: LitVarI2 var_D0, 4
  loc_6A6E8A: LitI4 7
  loc_6A6E8F: FLdZeroAd var_284
  loc_6A6E92: CVarAd
  loc_6A6E96: FLdRfVar var_E0
  loc_6A6E99: ImpAdCallFPR4  = Mid(, , )
  loc_6A6E9E: FLdRfVar var_E0
  loc_6A6EA1: LitVarI2 var_110, 2
  loc_6A6EA6: LitI4 4
  loc_6A6EAB: FLdZeroAd var_288
  loc_6A6EAE: CVarAd
  loc_6A6EB2: FLdRfVar var_120
  loc_6A6EB5: ImpAdCallFPR4  = Mid(, , )
  loc_6A6EBA: FLdRfVar var_120
  loc_6A6EBD: ConcatVar var_130
  loc_6A6EC1: LitVarI2 var_160, 2
  loc_6A6EC6: LitI4 1
  loc_6A6ECB: FLdZeroAd var_28C
  loc_6A6ECE: CVarAd
  loc_6A6ED2: FLdRfVar var_170
  loc_6A6ED5: ImpAdCallFPR4  = Mid(, , )
  loc_6A6EDA: FLdRfVar var_170
  loc_6A6EDD: ConcatVar var_180
  loc_6A6EE1: LitVarI2 var_1C0, 2
  loc_6A6EE6: LitI4 1
  loc_6A6EEB: FLdRfVar var_190
  loc_6A6EEE: CStrVarTmp
  loc_6A6EEF: CVarStr var_1A0
  loc_6A6EF2: FLdRfVar var_1D0
  loc_6A6EF5: ImpAdCallFPR4  = Mid(, , )
  loc_6A6EFA: FLdRfVar var_1D0
  loc_6A6EFD: ConcatVar var_1E0
  loc_6A6F01: LitVarI2 var_210, 2
  loc_6A6F06: LitI4 4
  loc_6A6F0B: FLdZeroAd var_290
  loc_6A6F0E: CVarAd
  loc_6A6F12: FLdRfVar var_220
  loc_6A6F15: ImpAdCallFPR4  = Mid(, , )
  loc_6A6F1A: FLdRfVar var_220
  loc_6A6F1D: ConcatVar var_230
  loc_6A6F21: LitVarI2 var_260, 2
  loc_6A6F26: LitI4 7
  loc_6A6F2B: FLdZeroAd var_294
  loc_6A6F2E: CVarAd
  loc_6A6F32: FLdRfVar var_270
  loc_6A6F35: ImpAdCallFPR4  = Mid(, , )
  loc_6A6F3A: FLdRfVar var_270
  loc_6A6F3D: ConcatVar var_280
  loc_6A6F41: CStrVarTmp
  loc_6A6F42: FStStr var_8C
  loc_6A6F45: FFreeAd var_A0 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = ""
  loc_6A6F54: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_130 = "": var_170 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_1E0 = "": var_220 = "": var_240 = "": var_260 = "": var_230 = "": var_270 = ""
  loc_6A6F87: FLdRfVar var_296
  loc_6A6F8A: FLdPrThis
  loc_6A6F8B: VCallAd Control_ID_chkRed
  loc_6A6F8E: FStAdFunc var_A0
  loc_6A6F91: FLdPr var_A0
  loc_6A6F94:  = Me.Value
  loc_6A6F99: FLdRfVar var_298
  loc_6A6F9C: FLdPrThis
  loc_6A6F9D: VCallAd Control_ID_chkLocal
  loc_6A6FA0: FStAdFunc var_284
  loc_6A6FA3: FLdPr var_284
  loc_6A6FA6:  = Me.Value
  loc_6A6FAB: ILdRf var_88
  loc_6A6FAE: ILdRf var_8C
  loc_6A6FB1: ConcatStr
  loc_6A6FB2: CVarStr var_F0
  loc_6A6FB5: LitVarStr var_150, "0"
  loc_6A6FBA: FStVarCopyObj var_D0
  loc_6A6FBD: FLdRfVar var_D0
  loc_6A6FC0: LitVarStr var_100, "1"
  loc_6A6FC5: FStVarCopyObj var_B0
  loc_6A6FC8: FLdRfVar var_B0
  loc_6A6FCB: FLdI2 var_296
  loc_6A6FCE: CI4UI1
  loc_6A6FCF: LitI4 1
  loc_6A6FD4: EqI4
  loc_6A6FD5: CVarBoolI2 var_C0
  loc_6A6FD9: FLdRfVar var_E0
  loc_6A6FDC: ImpAdCallFPR4  = IIf(, , )
  loc_6A6FE1: FLdRfVar var_E0
  loc_6A6FE4: ConcatVar var_110
  loc_6A6FE8: LitVarStr var_250, "0"
  loc_6A6FED: FStVarCopyObj var_130
  loc_6A6FF0: FLdRfVar var_130
  loc_6A6FF3: LitVarStr var_200, "1"
  loc_6A6FF8: FStVarCopyObj var_120
  loc_6A6FFB: FLdRfVar var_120
  loc_6A6FFE: FLdI2 var_298
  loc_6A7001: CI4UI1
  loc_6A7002: LitI4 1
  loc_6A7007: EqI4
  loc_6A7008: CVarBoolI2 var_1B0
  loc_6A700C: FLdRfVar var_140
  loc_6A700F: ImpAdCallFPR4  = IIf(, , )
  loc_6A7014: FLdRfVar var_140
  loc_6A7017: ConcatVar var_160
  loc_6A701B: CStrVarTmp
  loc_6A701C: FStStr var_94
  loc_6A701F: FFreeAd var_A0 = ""
  loc_6A7026: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_1B0 = "": var_120 = "": var_130 = "": var_110 = "": var_140 = ""
  loc_6A703F: FLdRfVar var_296
  loc_6A7042: FLdRfVar var_9C
  loc_6A7045: ILdRf var_94
  loc_6A7048: FLdRfVar var_A0
  loc_6A704B: ImpAdLdRf MemVar_74C760
  loc_6A704E: NewIfNullPr Formx
  loc_6A7051: from_stack_1v = Formx.global_4589716Get()
  loc_6A7056: FLdPr var_A0
  loc_6A7059: Formx.Appearance = from_stack_1
  loc_6A705E: FLdI2 var_296
  loc_6A7061: NotI4
  loc_6A7062: FFree1Ad var_A0
  loc_6A7065: BranchF loc_6A7094
  loc_6A7068: FLdRfVar var_B0
  loc_6A706B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A7070: FLdRfVar var_B0
  loc_6A7073: CBoolVarNull
  loc_6A7075: FFree1Var var_B0 = ""
  loc_6A7078: BranchF loc_6A7091
  loc_6A707B: ILdRf Me
  loc_6A707E: FStAdNoPop
  loc_6A7082: ImpAdLdRf MemVar_7520D4
  loc_6A7085: NewIfNullPr Global
  loc_6A7088: Global.Unload from_stack_1
  loc_6A708D: FFree1Ad var_A0
  loc_6A7090: ExitProcHresult
  loc_6A7091: Branch loc_6A703F
  loc_6A7094: ILdRf var_9C
  loc_6A7097: LitI4 0
  loc_6A709C: EqI4
  loc_6A709D: BranchF loc_6A711E
  loc_6A70A0: FLdRfVar var_2E4
  loc_6A70A3: LitVar_Missing var_170
  loc_6A70A6: LitVar_Missing var_160
  loc_6A70A9: LitVar_Missing var_140
  loc_6A70AC: LitVar_Missing var_130
  loc_6A70AF: LitVar_Missing var_120
  loc_6A70B2: LitVar_Missing var_110
  loc_6A70B5: LitVar_Missing var_F0
  loc_6A70B8: LitVar_Missing var_E0
  loc_6A70BB: LitVar_Missing var_D0
  loc_6A70BE: LitVar_Missing var_B0
  loc_6A70C1: LitStr "No existen datos a reportar."
  loc_6A70C4: FStStrCopy var_2A0
  loc_6A70C7: FLdRfVar var_2A0
  loc_6A70CA: LitI4 &H14
  loc_6A70CF: PopTmpLdAdStr var_29C
  loc_6A70D2: LitI2_Byte &H4B
  loc_6A70D4: PopTmpLdAd2 var_296
  loc_6A70D7: ImpAdLdRf MemVar_74C7D0
  loc_6A70DA: NewIfNullPr clsMsg
  loc_6A70DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A70E2: LitVar_Missing var_1C0
  loc_6A70E5: LitVar_Missing var_1A0
  loc_6A70E8: LitVar_Missing var_190
  loc_6A70EB: LitI4 &H40
  loc_6A70F0: FLdZeroAd var_2E4
  loc_6A70F3: CVarStr var_180
  loc_6A70F6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A70FB: FFree1Str var_2A0
  loc_6A70FE: FFreeVar var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6A711D: ExitProcHresult
  loc_6A711E: ILdRf var_9C
  loc_6A7121: LitI4 &H493E0
  loc_6A7126: GtI4
  loc_6A7127: BranchF loc_6A7284
  loc_6A712A: FLdRfVar var_2E4
  loc_6A712D: LitVar_Missing var_170
  loc_6A7130: LitVar_Missing var_160
  loc_6A7133: LitVar_Missing var_140
  loc_6A7136: LitVar_Missing var_130
  loc_6A7139: LitVar_Missing var_120
  loc_6A713C: LitVar_Missing var_110
  loc_6A713F: LitVar_Missing var_F0
  loc_6A7142: LitVar_Missing var_E0
  loc_6A7145: LitVar_Missing var_D0
  loc_6A7148: LitVar_Missing var_B0
  loc_6A714B: LitStr "El período seleccionado abarca demasiados despachos."
  loc_6A714E: FStStrCopy var_2A0
  loc_6A7151: FLdRfVar var_2A0
  loc_6A7154: LitI4 &H15
  loc_6A7159: PopTmpLdAdStr var_29C
  loc_6A715C: LitI2_Byte &H4B
  loc_6A715E: PopTmpLdAd2 var_296
  loc_6A7161: ImpAdLdRf MemVar_74C7D0
  loc_6A7164: NewIfNullPr clsMsg
  loc_6A7167: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A716C: LitI4 &HD
  loc_6A7171: ImpAdCallI2 Chr$()
  loc_6A7176: FStStr var_50C
  loc_6A7179: FLdRfVar var_394
  loc_6A717C: LitVar_Missing var_230
  loc_6A717F: LitVar_Missing var_220
  loc_6A7182: LitVar_Missing var_210
  loc_6A7185: LitVar_Missing var_1F0
  loc_6A7188: LitVar_Missing var_1E0
  loc_6A718B: LitVar_Missing var_1D0
  loc_6A718E: LitVar_Missing var_1C0
  loc_6A7191: LitVar_Missing var_1A0
  loc_6A7194: LitVar_Missing var_190
  loc_6A7197: LitVar_Missing var_180
  loc_6A719A: LitStr "Por favor reduzca el rango."
  loc_6A719D: FStStrCopy var_320
  loc_6A71A0: FLdRfVar var_320
  loc_6A71A3: LitI4 &H16
  loc_6A71A8: PopTmpLdAdStr var_31C
  loc_6A71AB: LitI2_Byte &H4B
  loc_6A71AD: PopTmpLdAd2 var_298
  loc_6A71B0: ImpAdLdRf MemVar_74C7D0
  loc_6A71B3: NewIfNullPr clsMsg
  loc_6A71B6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A71BB: FLdRfVar var_4A8
  loc_6A71BE: LitVar_Missing var_4A4
  loc_6A71C1: LitVar_Missing var_484
  loc_6A71C4: LitVar_Missing var_464
  loc_6A71C7: LitVar_Missing var_444
  loc_6A71CA: LitVar_Missing var_424
  loc_6A71CD: LitVar_Missing var_404
  loc_6A71D0: LitVar_Missing var_280
  loc_6A71D3: LitVar_Missing var_270
  loc_6A71D6: LitVar_Missing var_260
  loc_6A71D9: LitVar_Missing var_240
  loc_6A71DC: LitStr "Despachos Anteriores"
  loc_6A71DF: FStStrCopy var_3A4
  loc_6A71E2: FLdRfVar var_3A4
  loc_6A71E5: LitI4 &H17
  loc_6A71EA: PopTmpLdAdStr var_3A0
  loc_6A71ED: LitI2_Byte &H4B
  loc_6A71EF: PopTmpLdAd2 var_39A
  loc_6A71F2: ImpAdLdRf MemVar_74C7D0
  loc_6A71F5: NewIfNullPr clsMsg
  loc_6A71F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A71FD: LitVar_Missing var_508
  loc_6A7200: LitVar_Missing var_4E8
  loc_6A7203: FLdZeroAd var_4A8
  loc_6A7206: CVarStr var_4C8
  loc_6A7209: LitI4 &H40
  loc_6A720E: ILdRf var_2E4
  loc_6A7211: FLdZeroAd var_50C
  loc_6A7214: FStStrNoPop var_318
  loc_6A7217: ConcatStr
  loc_6A7218: FStStrNoPop var_398
  loc_6A721B: ILdRf var_394
  loc_6A721E: ConcatStr
  loc_6A721F: CVarStr var_4B8
  loc_6A7222: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A7227: FFreeStr var_2A0 = "": var_2E4 = "": var_318 = "": var_320 = "": var_398 = "": var_394 = "": var_3A4 = ""
  loc_6A723A: FFreeVar var_4B8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_280 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6A7281: Branch loc_6A736B
  loc_6A7284: FLdRfVar var_296
  loc_6A7287: FLdRfVar var_90
  loc_6A728A: FLdRfVar var_A0
  loc_6A728D: ImpAdLdRf MemVar_74C760
  loc_6A7290: NewIfNullPr Formx
  loc_6A7293: from_stack_1v = Formx.global_4589716Get()
  loc_6A7298: FLdPr var_A0
  loc_6A729B:  = Formx.WhatsThisButton
  loc_6A72A0: FLdI2 var_296
  loc_6A72A3: NotI4
  loc_6A72A4: FFree1Ad var_A0
  loc_6A72A7: BranchF loc_6A72D6
  loc_6A72AA: FLdRfVar var_B0
  loc_6A72AD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A72B2: FLdRfVar var_B0
  loc_6A72B5: CBoolVarNull
  loc_6A72B7: FFree1Var var_B0 = ""
  loc_6A72BA: BranchF loc_6A72D3
  loc_6A72BD: ILdRf Me
  loc_6A72C0: FStAdNoPop
  loc_6A72C4: ImpAdLdRf MemVar_7520D4
  loc_6A72C7: NewIfNullPr Global
  loc_6A72CA: Global.Unload from_stack_1
  loc_6A72CF: FFree1Ad var_A0
  loc_6A72D2: ExitProcHresult
  loc_6A72D3: Branch loc_6A7284
  loc_6A72D6: ILdRf var_90
  loc_6A72D9: FnLenStr
  loc_6A72DA: LitI4 &HA
  loc_6A72DF: GtI4
  loc_6A72E0: BranchF loc_6A72EE
  loc_6A72E3: ILdRf var_90
  loc_6A72E6: from_stack_2v = Proc_129_10_727698(from_stack_1v)
  loc_6A72EB: Branch loc_6A736B
  loc_6A72EE: FLdRfVar var_2E4
  loc_6A72F1: LitVar_Missing var_170
  loc_6A72F4: LitVar_Missing var_160
  loc_6A72F7: LitVar_Missing var_140
  loc_6A72FA: LitVar_Missing var_130
  loc_6A72FD: LitVar_Missing var_120
  loc_6A7300: LitVar_Missing var_110
  loc_6A7303: LitVar_Missing var_F0
  loc_6A7306: LitVar_Missing var_E0
  loc_6A7309: LitVar_Missing var_D0
  loc_6A730C: LitVar_Missing var_B0
  loc_6A730F: LitStr "Hubo un error inesperado del servicio. Por favor vuelva a intentar la operación."
  loc_6A7312: FStStrCopy var_2A0
  loc_6A7315: FLdRfVar var_2A0
  loc_6A7318: LitI4 &H18
  loc_6A731D: PopTmpLdAdStr var_29C
  loc_6A7320: LitI2_Byte &H4B
  loc_6A7322: PopTmpLdAd2 var_296
  loc_6A7325: ImpAdLdRf MemVar_74C7D0
  loc_6A7328: NewIfNullPr clsMsg
  loc_6A732B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A7330: LitVar_Missing var_1C0
  loc_6A7333: LitVar_Missing var_1A0
  loc_6A7336: LitVar_Missing var_190
  loc_6A7339: LitI4 &H40
  loc_6A733E: FLdZeroAd var_2E4
  loc_6A7341: CVarStr var_180
  loc_6A7344: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A7349: FFree1Str var_2A0
  loc_6A734C: FFreeVar var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_6A736B: ExitProcHresult
End Sub

Private Sub FechaFinal_UnknownEvent_0 '5E1AF8
  'Data Table: 43A8EC
  loc_5E1AA4: LitVarI4
  loc_5E1AAC: PopAdLdVar
  loc_5E1AAD: FLdPrThis
  loc_5E1AAE: VCallAd Control_ID_FechaFinal
  loc_5E1AB1: FStAdFunc var_98
  loc_5E1AB4: FLdPr var_98
  loc_5E1AB7: LateIdSt
  loc_5E1ABC: FFree1Ad var_98
  loc_5E1ABF: FLdPrThis
  loc_5E1AC0: VCallAd Control_ID_FechaFinal
  loc_5E1AC3: FStAdFunc var_98
  loc_5E1AC6: FLdPr var_98
  loc_5E1AC9: LateIdLdVar var_A8 DispID_22 0
  loc_5E1AD0: CStrVarTmp
  loc_5E1AD1: FStStrNoPop var_AC
  loc_5E1AD4: FnLenStr
  loc_5E1AD5: CVarI4
  loc_5E1AD9: PopAdLdVar
  loc_5E1ADA: FLdPrThis
  loc_5E1ADB: VCallAd Control_ID_FechaFinal
  loc_5E1ADE: FStAdFunc var_B0
  loc_5E1AE1: FLdPr var_B0
  loc_5E1AE4: LateIdSt
  loc_5E1AE9: FFree1Str var_AC
  loc_5E1AEC: FFreeAd var_98 = ""
  loc_5E1AF3: FFree1Var var_A8 = ""
  loc_5E1AF6: ExitProcHresult
End Sub

Private Sub FechaFinal_UnknownEvent_1 '5DDA80
  'Data Table: 43A8EC
  loc_5DDA3C: FLdPrThis
  loc_5DDA3D: VCallAd Control_ID_FechaFinal
  loc_5DDA40: FStAdFunc var_88
  loc_5DDA43: FLdPr var_88
  loc_5DDA46: LateIdLdVar var_98 DispID_22 0
  loc_5DDA4D: PopAd
  loc_5DDA4F: LitI2_Byte &HFF
  loc_5DDA51: FLdRfVar var_98
  loc_5DDA54: CStrVarTmp
  loc_5DDA55: FStStrNoPop var_9C
  loc_5DDA58: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DDA5D: NotI4
  loc_5DDA5E: FFree1Str var_9C
  loc_5DDA61: FFree1Ad var_88
  loc_5DDA64: FFree1Var var_98 = ""
  loc_5DDA67: BranchF loc_5DDA7F
  loc_5DDA6A: FLdPrThis
  loc_5DDA6B: VCallAd Control_ID_FechaFinal
  loc_5DDA6E: FStAdFunc var_88
  loc_5DDA71: FLdPr var_88
  loc_5DDA74: LateIdCall
  loc_5DDA7C: FFree1Ad var_88
  loc_5DDA7F: ExitProcHresult
End Sub

Private Sub FechaInicial_UnknownEvent_0 '5E193C
  'Data Table: 43A8EC
  loc_5E18E8: LitVarI4
  loc_5E18F0: PopAdLdVar
  loc_5E18F1: FLdPrThis
  loc_5E18F2: VCallAd Control_ID_FechaInicial
  loc_5E18F5: FStAdFunc var_98
  loc_5E18F8: FLdPr var_98
  loc_5E18FB: LateIdSt
  loc_5E1900: FFree1Ad var_98
  loc_5E1903: FLdPrThis
  loc_5E1904: VCallAd Control_ID_FechaInicial
  loc_5E1907: FStAdFunc var_98
  loc_5E190A: FLdPr var_98
  loc_5E190D: LateIdLdVar var_A8 DispID_22 0
  loc_5E1914: CStrVarTmp
  loc_5E1915: FStStrNoPop var_AC
  loc_5E1918: FnLenStr
  loc_5E1919: CVarI4
  loc_5E191D: PopAdLdVar
  loc_5E191E: FLdPrThis
  loc_5E191F: VCallAd Control_ID_FechaInicial
  loc_5E1922: FStAdFunc var_B0
  loc_5E1925: FLdPr var_B0
  loc_5E1928: LateIdSt
  loc_5E192D: FFree1Str var_AC
  loc_5E1930: FFreeAd var_98 = ""
  loc_5E1937: FFree1Var var_A8 = ""
  loc_5E193A: ExitProcHresult
End Sub

Private Sub FechaInicial_UnknownEvent_1 '5DDF00
  'Data Table: 43A8EC
  loc_5DDEBC: FLdPrThis
  loc_5DDEBD: VCallAd Control_ID_FechaInicial
  loc_5DDEC0: FStAdFunc var_88
  loc_5DDEC3: FLdPr var_88
  loc_5DDEC6: LateIdLdVar var_98 DispID_22 0
  loc_5DDECD: PopAd
  loc_5DDECF: LitI2_Byte &HFF
  loc_5DDED1: FLdRfVar var_98
  loc_5DDED4: CStrVarTmp
  loc_5DDED5: FStStrNoPop var_9C
  loc_5DDED8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DDEDD: NotI4
  loc_5DDEDE: FFree1Str var_9C
  loc_5DDEE1: FFree1Ad var_88
  loc_5DDEE4: FFree1Var var_98 = ""
  loc_5DDEE7: BranchF loc_5DDEFF
  loc_5DDEEA: FLdPrThis
  loc_5DDEEB: VCallAd Control_ID_FechaInicial
  loc_5DDEEE: FStAdFunc var_88
  loc_5DDEF1: FLdPr var_88
  loc_5DDEF4: LateIdCall
  loc_5DDEFC: FFree1Ad var_88
  loc_5DDEFF: ExitProcHresult
End Sub

Private Sub cmdTurnoDiaMes_Click(Index As Integer) '640728
  'Data Table: 43A8EC
  loc_640508: LitI4 0
  loc_64050D: LitI4 2
  loc_640512: FLdRfVar var_8C
  loc_640515: Redim
  loc_64051F: LitVarStr var_9C, "T"
  loc_640524: LitI4 0
  loc_640529: ILdRf var_8C
  loc_64052C: Ary1StVarCopy
  loc_64052E: LitVarStr var_AC, "D"
  loc_640533: LitI4 1
  loc_640538: ILdRf var_8C
  loc_64053B: Ary1StVarCopy
  loc_64053D: LitVarStr var_BC, "M"
  loc_640542: LitI4 2
  loc_640547: ILdRf var_8C
  loc_64054A: Ary1StVarCopy
  loc_64054C: FLdRfVar var_8C
  loc_64054F: ILdI2 Index
  loc_640552: LitI2_Byte 1
  loc_640554: AddI2
  loc_640555: CR8I2
  loc_640556: PopFPR4
  loc_640557: FLdRfVar var_CC
  loc_64055A: ImpAdCallFPR4  = Choose(, )
  loc_64055F: FLdRfVar var_8C
  loc_640562: Erase
  loc_640563: FLdRfVar var_CC
  loc_640566: CStrVarVal var_D0
  loc_64056A: ImpAdLdRf MemVar_74DC6C
  loc_64056D: NewIfNullPr Reportes_Anteriores
  loc_640570: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_640575: FFree1Str var_D0
  loc_640578: FFree1Var var_CC = ""
  loc_64057B: LitI2_Byte &HFF
  loc_64057D: ImpAdLdRf MemVar_74DC6C
  loc_640580: NewIfNullPr Reportes_Anteriores
  loc_640583: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_640588: LitVar_Missing var_AC
  loc_64058B: PopAdLdVar
  loc_64058C: LitVarI4
  loc_640594: PopAdLdVar
  loc_640595: ImpAdLdRf MemVar_74DC6C
  loc_640598: NewIfNullPr Reportes_Anteriores
  loc_64059B: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_6405A0: FLdRfVar var_D0
  loc_6405A3: ImpAdLdRf MemVar_74DC6C
  loc_6405A6: NewIfNullPr Reportes_Anteriores
  loc_6405A9: from_stack_1v = Reportes_Anteriores.RangoFechaGet()
  loc_6405AE: FLdZeroAd var_D0
  loc_6405B1: FStStr var_88
  loc_6405B4: ILdRf var_88
  loc_6405B7: LitStr vbNullString
  loc_6405BA: NeStr
  loc_6405BC: BranchF loc_640726
  loc_6405BF: LitVarI2 var_CC, 2
  loc_6405C4: LitI4 9
  loc_6405C9: ILdRf var_88
  loc_6405CC: ImpAdCallI2 Mid$(, , )
  loc_6405D1: FStStrNoPop var_D0
  loc_6405D4: LitStr "-"
  loc_6405D7: ConcatStr
  loc_6405D8: FStStrNoPop var_E4
  loc_6405DB: LitVarI2 var_E0, 2
  loc_6405E0: LitI4 6
  loc_6405E5: ILdRf var_88
  loc_6405E8: ImpAdCallI2 Mid$(, , )
  loc_6405ED: FStStrNoPop var_E8
  loc_6405F0: ConcatStr
  loc_6405F1: FStStrNoPop var_EC
  loc_6405F4: LitStr "-"
  loc_6405F7: ConcatStr
  loc_6405F8: FStStrNoPop var_100
  loc_6405FB: LitVarI2 var_FC, 4
  loc_640600: LitI4 1
  loc_640605: ILdRf var_88
  loc_640608: ImpAdCallI2 Mid$(, , )
  loc_64060D: FStStrNoPop var_104
  loc_640610: ConcatStr
  loc_640611: CVarStr var_114
  loc_640614: PopAdLdVar
  loc_640615: FLdPrThis
  loc_640616: VCallAd Control_ID_
  loc_640619: FStAdFunc var_118
  loc_64061C: FLdPr var_118
  loc_64061F: LateIdSt
  loc_640624: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_640633: FFree1Ad var_118
  loc_640636: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_640641: LitVarI2 var_CC, 8
  loc_640646: LitI4 &HB
  loc_64064B: ILdRf var_88
  loc_64064E: ImpAdCallI2 Mid$(, , )
  loc_640653: CVarStr var_E0
  loc_640656: PopAdLdVar
  loc_640657: FLdPrThis
  loc_640658: VCallAd Control_ID_
  loc_64065B: FStAdFunc var_118
  loc_64065E: FLdPr var_118
  loc_640661: LateIdSt
  loc_640666: FFree1Ad var_118
  loc_640669: FFreeVar var_CC = ""
  loc_640670: LitVarI2 var_CC, 2
  loc_640675: LitI4 &H1B
  loc_64067A: ILdRf var_88
  loc_64067D: ImpAdCallI2 Mid$(, , )
  loc_640682: FStStrNoPop var_D0
  loc_640685: LitStr "-"
  loc_640688: ConcatStr
  loc_640689: FStStrNoPop var_E4
  loc_64068C: LitVarI2 var_E0, 2
  loc_640691: LitI4 &H18
  loc_640696: ILdRf var_88
  loc_640699: ImpAdCallI2 Mid$(, , )
  loc_64069E: FStStrNoPop var_E8
  loc_6406A1: ConcatStr
  loc_6406A2: FStStrNoPop var_EC
  loc_6406A5: LitStr "-"
  loc_6406A8: ConcatStr
  loc_6406A9: FStStrNoPop var_100
  loc_6406AC: LitVarI2 var_FC, 4
  loc_6406B1: LitI4 &H13
  loc_6406B6: ILdRf var_88
  loc_6406B9: ImpAdCallI2 Mid$(, , )
  loc_6406BE: FStStrNoPop var_104
  loc_6406C1: ConcatStr
  loc_6406C2: CVarStr var_114
  loc_6406C5: PopAdLdVar
  loc_6406C6: FLdPrThis
  loc_6406C7: VCallAd Control_ID_
  loc_6406CA: FStAdFunc var_118
  loc_6406CD: FLdPr var_118
  loc_6406D0: LateIdSt
  loc_6406D5: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_6406E4: FFree1Ad var_118
  loc_6406E7: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_6406F2: LitVarI2 var_CC, 8
  loc_6406F7: LitI4 &H1D
  loc_6406FC: ILdRf var_88
  loc_6406FF: ImpAdCallI2 Mid$(, , )
  loc_640704: CVarStr var_E0
  loc_640707: PopAdLdVar
  loc_640708: FLdPrThis
  loc_640709: VCallAd Control_ID_
  loc_64070C: FStAdFunc var_118
  loc_64070F: FLdPr var_118
  loc_640712: LateIdSt
  loc_640717: FFree1Ad var_118
  loc_64071A: FFreeVar var_CC = ""
  loc_640721: Call cmdConsultar_UnknownEvent_8()
  loc_640726: ExitProcHresult
End Sub

Private Sub sscSalir_UnknownEvent_8 '5D0FB0
  'Data Table: 43A8EC
  loc_5D0F98: ILdRf Me
  loc_5D0F9B: FStAdNoPop
  loc_5D0F9F: ImpAdLdRf MemVar_7520D4
  loc_5D0FA2: NewIfNullPr Global
  loc_5D0FA5: Global.Unload from_stack_1
  loc_5D0FAA: FFree1Ad var_88
  loc_5D0FAD: ExitProcHresult
End Sub

Public Function CalculoPrice(valor, PPU) '60694C
  'Data Table: 43A8EC
  loc_606878: ZeroRetVal
  loc_60687A: ILdI2 PPU
  loc_60687D: BranchF loc_6068C1
  loc_606880: ILdI4 valor
  loc_606883: ImpAdCallFPR4 push Val()
  loc_606888: FStFPR8 var_D4
  loc_60688B: LitI4 1
  loc_606890: LitI4 1
  loc_606895: ImpAdLdRf MemVar_74C350
  loc_606898: CVarRef
  loc_60689D: FLdFPR8 var_D4
  loc_6068A0: ImpAdLdFPR4 MemVar_74C2DC
  loc_6068A3: DivR8
  loc_6068A4: CVarR8
  loc_6068A8: FLdRfVar var_CC
  loc_6068AB: ImpAdCallFPR4  = Format(, )
  loc_6068B0: FLdRfVar var_CC
  loc_6068B3: CStrVarTmp
  loc_6068B4: FStStr var_8C
  loc_6068B7: FFreeVar var_AC = ""
  loc_6068BE: Branch loc_6068FF
  loc_6068C1: ILdI4 valor
  loc_6068C4: ImpAdCallFPR4 push Val()
  loc_6068C9: FStFPR8 var_D4
  loc_6068CC: LitI4 1
  loc_6068D1: LitI4 1
  loc_6068D6: ImpAdLdRf MemVar_74C364
  loc_6068D9: CVarRef
  loc_6068DE: FLdFPR8 var_D4
  loc_6068E1: ImpAdLdFPR4 MemVar_74C2E0
  loc_6068E4: DivR8
  loc_6068E5: CVarR8
  loc_6068E9: FLdRfVar var_CC
  loc_6068EC: ImpAdCallFPR4  = Format(, )
  loc_6068F1: FLdRfVar var_CC
  loc_6068F4: CStrVarTmp
  loc_6068F5: FStStr var_8C
  loc_6068F8: FFreeVar var_AC = ""
  loc_6068FF: LitVarI2 var_BC, 11
  loc_606904: FLdRfVar var_8C
  loc_606907: CVarRef
  loc_60690C: FLdRfVar var_AC
  loc_60690F: ImpAdCallFPR4  = Trim()
  loc_606914: FLdRfVar var_AC
  loc_606917: FnLenVar var_CC
  loc_60691B: SubVar var_E4
  loc_60691F: CI4Var
  loc_606921: FLdRfVar var_F4
  loc_606924: ImpAdCallFPR4  = Space()
  loc_606929: FLdRfVar var_F4
  loc_60692C: ILdRf var_8C
  loc_60692F: CVarStr var_104
  loc_606932: ConcatVar var_114
  loc_606936: CStrVarTmp
  loc_606937: FStStr var_88
  loc_60693A: FFreeVar var_AC = "": var_F4 = ""
  loc_606943: ExitProcCbHresult
  loc_606949: FLdRfVar var_200
End Function

Private Function Proc_129_10_727698(arg_C) '727698
  'Data Table: 43A8EC
  loc_7254D8: ILdRf arg_C
  loc_7254DB: FStStrCopy var_88
  loc_7254DE: LitI2_Byte &HFF
  loc_7254E0: FStI2 var_B6
  loc_7254E3: LitI4 -1
  loc_7254E8: FStR4 var_BC
  loc_7254EB: LitI2_Byte &HFF
  loc_7254ED: FStI2 var_BE
  loc_7254F0: LitI2_Byte &HFF
  loc_7254F2: FStI2 var_C0
  loc_7254F5: LitI4 -1
  loc_7254FA: FStR4 var_C4
  loc_7254FD: LitI2_Byte &HFF
  loc_7254FF: FStI2 var_C6
  loc_725502: LitI2_Byte 0
  loc_725504: CR8I2
  loc_725505: FStFPR4 var_CC
  loc_725508: LitI2_Byte 0
  loc_72550A: CR8I2
  loc_72550B: FStFPR4 var_D0
  loc_72550E: LitI2_Byte 0
  loc_725510: CR8I2
  loc_725511: FStFPR4 var_D4
  loc_725514: LitI2_Byte 0
  loc_725516: CR8I2
  loc_725517: FStFPR4 var_D8
  loc_72551A: LitI2_Byte 0
  loc_72551C: CR8I2
  loc_72551D: FStFPR4 var_DC
  loc_725520: LitI2_Byte 0
  loc_725522: CR8I2
  loc_725523: FStFPR4 var_E0
  loc_725526: LitI4 1
  loc_72552B: FStR4 var_8C
  loc_72552E: LitI2_Byte &H4A
  loc_725530: CUI1I2
  loc_725532: FStUI1 var_8E
  loc_725536: ILdRf var_8C
  loc_725539: ILdRf var_88
  loc_72553C: FnLenStr
  loc_72553D: LeI4
  loc_72553E: BranchF loc_7267D4
  loc_725541: LitVarI2 var_120, 2
  loc_725546: ILdRf var_8C
  loc_725549: FLdRfVar var_88
  loc_72554C: CVarRef
  loc_725551: FLdRfVar var_130
  loc_725554: ImpAdCallFPR4  = Mid(, , )
  loc_725559: FLdRfVar var_130
  loc_72555C: LitVarStr var_140, "/"
  loc_725561: ConcatVar var_150
  loc_725565: LitVarI2 var_180, 2
  loc_72556A: ILdRf var_8C
  loc_72556D: LitI4 2
  loc_725572: AddI4
  loc_725573: FLdRfVar var_88
  loc_725576: CVarRef
  loc_72557B: FLdRfVar var_190
  loc_72557E: ImpAdCallFPR4  = Mid(, , )
  loc_725583: FLdRfVar var_190
  loc_725586: ConcatVar var_1A0
  loc_72558A: LitVarStr var_1B0, "/"
  loc_72558F: ConcatVar var_1C0
  loc_725593: LitVarI2 var_1F0, 4
  loc_725598: ILdRf var_8C
  loc_72559B: LitI4 4
  loc_7255A0: AddI4
  loc_7255A1: FLdRfVar var_88
  loc_7255A4: CVarRef
  loc_7255A9: FLdRfVar var_200
  loc_7255AC: ImpAdCallFPR4  = Mid(, , )
  loc_7255B1: FLdRfVar var_200
  loc_7255B4: ConcatVar var_210
  loc_7255B8: CStrVarTmp
  loc_7255B9: FStStr var_94
  loc_7255BC: FFreeVar var_120 = "": var_130 = "": var_180 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1F0 = "": var_1C0 = "": var_200 = ""
  loc_7255D3: LitVarI2 var_120, 2
  loc_7255D8: ILdRf var_8C
  loc_7255DB: LitI4 8
  loc_7255E0: AddI4
  loc_7255E1: FLdRfVar var_88
  loc_7255E4: CVarRef
  loc_7255E9: FLdRfVar var_130
  loc_7255EC: ImpAdCallFPR4  = Mid(, , )
  loc_7255F1: FLdRfVar var_130
  loc_7255F4: LitVarStr var_140, ":"
  loc_7255F9: ConcatVar var_150
  loc_7255FD: LitVarI2 var_180, 2
  loc_725602: ILdRf var_8C
  loc_725605: LitI4 &HA
  loc_72560A: AddI4
  loc_72560B: FLdRfVar var_88
  loc_72560E: CVarRef
  loc_725613: FLdRfVar var_190
  loc_725616: ImpAdCallFPR4  = Mid(, , )
  loc_72561B: FLdRfVar var_190
  loc_72561E: ConcatVar var_1A0
  loc_725622: LitVarStr var_1B0, ":"
  loc_725627: ConcatVar var_1C0
  loc_72562B: LitVarI2 var_1F0, 2
  loc_725630: ILdRf var_8C
  loc_725633: LitI4 &HC
  loc_725638: AddI4
  loc_725639: FLdRfVar var_88
  loc_72563C: CVarRef
  loc_725641: FLdRfVar var_200
  loc_725644: ImpAdCallFPR4  = Mid(, , )
  loc_725649: FLdRfVar var_200
  loc_72564C: ConcatVar var_210
  loc_725650: CStrVarTmp
  loc_725651: FStStr var_98
  loc_725654: FFreeVar var_120 = "": var_130 = "": var_180 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1F0 = "": var_1C0 = "": var_200 = ""
  loc_72566B: LitVarI2 var_120, 2
  loc_725670: ILdRf var_8C
  loc_725673: LitI4 &HE
  loc_725678: AddI4
  loc_725679: FLdRfVar var_88
  loc_72567C: CVarRef
  loc_725681: FLdRfVar var_130
  loc_725684: ImpAdCallFPR4  = Mid(, , )
  loc_725689: FLdRfVar var_130
  loc_72568C: CStrVarTmp
  loc_72568D: FStStr var_9C
  loc_725690: FFreeVar var_120 = ""
  loc_725697: LitVarI2 var_120, 1
  loc_72569C: ILdRf var_8C
  loc_72569F: LitI4 &H10
  loc_7256A4: AddI4
  loc_7256A5: FLdRfVar var_88
  loc_7256A8: CVarRef
  loc_7256AD: FLdRfVar var_130
  loc_7256B0: ImpAdCallFPR4  = Mid(, , )
  loc_7256B5: FLdRfVar var_130
  loc_7256B8: FLdRfVar var_150
  loc_7256BB: ImpAdCallFPR4  = Ucase()
  loc_7256C0: FLdRfVar var_150
  loc_7256C3: CStrVarTmp
  loc_7256C4: FStStr var_B0
  loc_7256C7: FFreeVar var_120 = "": var_130 = ""
  loc_7256D0: LitVarI2 var_120, 10
  loc_7256D5: ILdRf var_8C
  loc_7256D8: LitI4 &H11
  loc_7256DD: AddI4
  loc_7256DE: ILdRf var_88
  loc_7256E1: ImpAdCallI2 Mid$(, , )
  loc_7256E6: FStStr var_220
  loc_7256E9: FLdRfVar var_21C
  loc_7256EC: LitI2_Byte 0
  loc_7256EE: PopTmpLdAd2 var_216
  loc_7256F1: FLdZeroAd var_220
  loc_7256F4: PopTmpLdAdStr
  loc_7256F8: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_7256FD: FLdZeroAd var_21C
  loc_725700: FStStr var_A0
  loc_725703: FFreeStr var_214 = ""
  loc_72570A: FFree1Var var_120 = ""
  loc_72570D: LitVarI2 var_120, 10
  loc_725712: ILdRf var_8C
  loc_725715: LitI4 &H1B
  loc_72571A: AddI4
  loc_72571B: FLdRfVar var_88
  loc_72571E: CVarRef
  loc_725723: FLdRfVar var_130
  loc_725726: ImpAdCallFPR4  = Mid(, , )
  loc_72572B: FLdRfVar var_130
  loc_72572E: CStrVarVal var_214
  loc_725732: ImpAdCallFPR4 push Val()
  loc_725737: FStFPR8 var_228
  loc_72573A: LitI4 1
  loc_72573F: LitI4 1
  loc_725744: LitVarStr var_160, "#######0.00"
  loc_725749: FStVarCopyObj var_180
  loc_72574C: FLdRfVar var_180
  loc_72574F: FLdFPR8 var_228
  loc_725752: LitI2_Byte &H64
  loc_725754: CR8I2
  loc_725755: DivR8
  loc_725756: CVarR8
  loc_72575A: ImpAdCallI2 Format$(, )
  loc_72575F: FStStr var_21C
  loc_725762: LitI4 1
  loc_725767: LitI4 1
  loc_72576C: LitVarStr var_170, "@@@@@@@@@@@"
  loc_725771: FStVarCopyObj var_1A0
  loc_725774: FLdRfVar var_1A0
  loc_725777: FLdZeroAd var_21C
  loc_72577A: CVarStr var_190
  loc_72577D: ImpAdCallI2 Format$(, )
  loc_725782: FStStr var_A4
  loc_725785: FFreeStr var_214 = ""
  loc_72578C: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = ""
  loc_72579B: LitVarI2 var_120, 10
  loc_7257A0: ILdRf var_8C
  loc_7257A3: LitI4 &H25
  loc_7257A8: AddI4
  loc_7257A9: FLdRfVar var_88
  loc_7257AC: CVarRef
  loc_7257B1: FLdRfVar var_130
  loc_7257B4: ImpAdCallFPR4  = Mid(, , )
  loc_7257B9: FLdRfVar var_21C
  loc_7257BC: LitI2_Byte &HFF
  loc_7257BE: PopTmpLdAd2 var_216
  loc_7257C1: FLdRfVar var_130
  loc_7257C4: CStrVarTmp
  loc_7257C5: PopTmpLdAdStr
  loc_7257C9: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_7257CE: FLdZeroAd var_21C
  loc_7257D1: FStStr var_AC
  loc_7257D4: FFree1Str var_214
  loc_7257D7: FFreeVar var_120 = ""
  loc_7257DE: LitVarI2 var_120, 1
  loc_7257E3: ILdRf var_8C
  loc_7257E6: LitI4 &H2F
  loc_7257EB: AddI4
  loc_7257EC: FLdRfVar var_88
  loc_7257EF: CVarRef
  loc_7257F4: FLdRfVar var_130
  loc_7257F7: ImpAdCallFPR4  = Mid(, , )
  loc_7257FC: FLdRfVar var_130
  loc_7257FF: CStrVarVal var_214
  loc_725803: ImpAdCallFPR4 push Val()
  loc_725808: FStFPR8 var_228
  loc_72580B: FLdRfVar var_21C
  loc_72580E: FLdFPR8 var_228
  loc_725811: CI2R8
  loc_725812: ImpAdLdRf MemVar_74A220
  loc_725815: NewIfNullPr clsProducts
  loc_72581D: LitI4 &HF
  loc_725822: FLdZeroAd var_21C
  loc_725825: CVarStr var_150
  loc_725828: FLdRfVar var_180
  loc_72582B: ImpAdCallFPR4  = Left(, )
  loc_725830: LitI2_Byte &HFF
  loc_725832: PopTmpLdAd2 var_22E
  loc_725835: LitI2_Byte &HF
  loc_725837: PopTmpLdAd2 var_216
  loc_72583A: LitStr " "
  loc_72583D: FStStrCopy var_22C
  loc_725840: FLdRfVar var_22C
  loc_725843: FLdRfVar var_180
  loc_725846: CStrVarTmp
  loc_725847: PopTmpLdAdStr
  loc_72584B: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_725850: FStStr var_A8
  loc_725853: FFreeStr var_214 = "": var_220 = ""
  loc_72585C: FFreeVar var_120 = "": var_130 = "": var_150 = ""
  loc_725867: LitVarI2 var_120, 3
  loc_72586C: ILdRf var_8C
  loc_72586F: LitI4 &H31
  loc_725874: AddI4
  loc_725875: ILdRf var_88
  loc_725878: ImpAdCallI2 Mid$(, , )
  loc_72587D: FStStrNoPop var_214
  loc_725880: CI2Str
  loc_725882: FStI2 var_B6
  loc_725885: FFree1Str var_214
  loc_725888: FFree1Var var_120 = ""
  loc_72588B: LitVarI2 var_120, 4
  loc_725890: ILdRf var_8C
  loc_725893: LitI4 &H34
  loc_725898: AddI4
  loc_725899: ILdRf var_88
  loc_72589C: ImpAdCallI2 Mid$(, , )
  loc_7258A1: FStStrNoPop var_214
  loc_7258A4: CI2Str
  loc_7258A6: FStI2 var_BE
  loc_7258A9: FFree1Str var_214
  loc_7258AC: FFree1Var var_120 = ""
  loc_7258AF: LitVarI2 var_120, 5
  loc_7258B4: ILdRf var_8C
  loc_7258B7: LitI4 &H38
  loc_7258BC: AddI4
  loc_7258BD: ILdRf var_88
  loc_7258C0: ImpAdCallI2 Mid$(, , )
  loc_7258C5: FStStrNoPop var_214
  loc_7258C8: CI4Str
  loc_7258C9: FStR4 var_BC
  loc_7258CC: FFree1Str var_214
  loc_7258CF: FFree1Var var_120 = ""
  loc_7258D2: ImpAdLdI2 MemVar_74C3A8
  loc_7258D5: FLdI2 var_B6
  loc_7258D8: EqI2
  loc_7258D9: LitStr "0"
  loc_7258DC: LitVarI2 var_120, 6
  loc_7258E1: ILdRf var_8C
  loc_7258E4: LitI4 &H3D
  loc_7258E9: AddI4
  loc_7258EA: ILdRf var_88
  loc_7258ED: ImpAdCallI2 Mid$(, , )
  loc_7258F2: FStStrNoPop var_214
  loc_7258F5: ConcatStr
  loc_7258F6: FStStrNoPop var_21C
  loc_7258F9: CI4Str
  loc_7258FA: LitI4 0
  loc_7258FF: EqI4
  loc_725900: OrI4
  loc_725901: FFreeStr var_214 = ""
  loc_725908: FFree1Var var_120 = ""
  loc_72590B: BranchF loc_725917
  loc_72590E: LitStr "      "
  loc_725911: FStStrCopy var_F0
  loc_725914: Branch loc_725991
  loc_725917: LitVarI2 var_120, 6
  loc_72591C: ILdRf var_8C
  loc_72591F: LitI4 &H3D
  loc_725924: AddI4
  loc_725925: ILdRf var_88
  loc_725928: ImpAdCallI2 Mid$(, , )
  loc_72592D: FStStr var_21C
  loc_725930: LitI4 1
  loc_725935: LitI4 1
  loc_72593A: LitVarStr var_140, "#0"
  loc_72593F: FStVarCopyObj var_150
  loc_725942: FLdRfVar var_150
  loc_725945: FLdZeroAd var_21C
  loc_725948: FStStrNoPop var_214
  loc_72594B: CI4Str
  loc_72594C: CVarI4
  loc_725950: ImpAdCallI2 Format$(, )
  loc_725955: FStStr var_220
  loc_725958: LitI4 1
  loc_72595D: LitI4 1
  loc_725962: LitVarStr var_160, "@@@@@@"
  loc_725967: FStVarCopyObj var_190
  loc_72596A: FLdRfVar var_190
  loc_72596D: FLdZeroAd var_220
  loc_725970: CVarStr var_180
  loc_725973: ImpAdCallI2 Format$(, )
  loc_725978: FStStr var_F0
  loc_72597B: FFreeStr var_214 = "": var_21C = ""
  loc_725984: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = ""
  loc_725991: LitVarI2 var_120, 7
  loc_725996: ILdRf var_8C
  loc_725999: LitI4 &H43
  loc_72599E: AddI4
  loc_72599F: ILdRf var_88
  loc_7259A2: ImpAdCallI2 Mid$(, , )
  loc_7259A7: CVarStr var_150
  loc_7259AA: LitVarStr var_140, "       "
  loc_7259AF: FStVarCopyObj var_130
  loc_7259B2: FLdRfVar var_130
  loc_7259B5: ImpAdLdI2 MemVar_74C3A8
  loc_7259B8: FLdI2 var_B6
  loc_7259BB: EqI2
  loc_7259BC: CVarBoolI2 var_110
  loc_7259C0: FLdRfVar var_180
  loc_7259C3: ImpAdCallFPR4  = IIf(, , )
  loc_7259C8: FLdRfVar var_180
  loc_7259CB: CStrVarTmp
  loc_7259CC: FStStr var_EC
  loc_7259CF: FFreeVar var_120 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_7259DC: FLdI2 var_C6
  loc_7259DF: FLdI2 var_BE
  loc_7259E2: NeI2
  loc_7259E3: ILdRf var_C4
  loc_7259E6: ILdRf var_BC
  loc_7259E9: NeI4
  loc_7259EA: OrI4
  loc_7259EB: FLdI2 var_C0
  loc_7259EE: FLdI2 var_B6
  loc_7259F1: NeI2
  loc_7259F2: OrI4
  loc_7259F3: BranchF loc_725EEF
  loc_7259F6: FLdI2 var_C6
  loc_7259F9: LitI2_Byte &HFF
  loc_7259FB: NeI2
  loc_7259FC: BranchF loc_725EDD
  loc_7259FF: FLdI2 var_C0
  loc_725A02: LitI2 800
  loc_725A05: GtI2
  loc_725A06: FLdI2 var_C0
  loc_725A09: LitI2_Byte 0
  loc_725A0B: EqI2
  loc_725A0C: OrI4
  loc_725A0D: BranchF loc_725A13
  loc_725A10: Branch loc_725EDD
  loc_725A13: FLdRfVar var_214
  loc_725A16: FLdI2 var_C6
  loc_725A19: from_stack_2v = Proc_129_12_5F20E8(from_stack_1v)
  loc_725A1E: FLdZeroAd var_214
  loc_725A21: FStStr var_B4
  loc_725A24: ILdRf var_B4
  loc_725A27: LitStr vbNullString
  loc_725A2A: EqStr
  loc_725A2C: BranchF loc_725C5C
  loc_725A2F: FLdRfVar var_21C
  loc_725A32: LitVar_Missing var_210
  loc_725A35: LitVar_Missing var_200
  loc_725A38: LitVar_Missing var_1F0
  loc_725A3B: LitVar_Missing var_1C0
  loc_725A3E: LitVar_Missing var_1A0
  loc_725A41: LitVar_Missing var_190
  loc_725A44: LitVar_Missing var_180
  loc_725A47: LitVar_Missing var_150
  loc_725A4A: LitVar_Missing var_130
  loc_725A4D: LitVar_Missing var_120
  loc_725A50: LitStr "Usuario:"
  loc_725A53: FStStrCopy var_214
  loc_725A56: FLdRfVar var_214
  loc_725A59: LitI4 &H19
  loc_725A5E: PopTmpLdAdStr var_234
  loc_725A61: LitI2_Byte &H4B
  loc_725A63: PopTmpLdAd2 var_216
  loc_725A66: ImpAdLdRf MemVar_74C7D0
  loc_725A69: NewIfNullPr clsMsg
  loc_725A6C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_725A71: LitI4 1
  loc_725A76: LitI4 1
  loc_725A7B: LitVarStr var_274, "@@@@"
  loc_725A80: FStVarCopyObj var_284
  loc_725A83: FLdRfVar var_284
  loc_725A86: FLdRfVar var_C6
  loc_725A89: CVarRef
  loc_725A8E: ImpAdCallI2 Format$(, )
  loc_725A93: FStStr var_40C
  loc_725A96: LitI4 &HD
  loc_725A9B: ImpAdCallI2 Space$()
  loc_725AA0: FStStr var_410
  loc_725AA3: LitI4 &H12
  loc_725AA8: FLdRfVar var_29C
  loc_725AAB: ImpAdCallFPR4  = Space()
  loc_725AB0: LitI4 &HC
  loc_725AB5: FLdRfVar var_2CC
  loc_725AB8: ImpAdCallFPR4  = Space()
  loc_725ABD: LitI4 1
  loc_725AC2: LitI4 1
  loc_725AC7: ImpAdLdRf MemVar_74C364
  loc_725ACA: CVarRef
  loc_725ACF: FLdRfVar var_DC
  loc_725AD2: CVarRef
  loc_725AD7: ImpAdCallI2 Format$(, )
  loc_725ADC: FStStr var_414
  loc_725ADF: LitI4 1
  loc_725AE4: LitI4 1
  loc_725AE9: LitVarStr var_31C, "@@@@@@@@@@@"
  loc_725AEE: FStVarCopyObj var_32C
  loc_725AF1: FLdRfVar var_32C
  loc_725AF4: FLdZeroAd var_414
  loc_725AF7: CVarStr var_30C
  loc_725AFA: ImpAdCallI2 Format$(, )
  loc_725AFF: FStStr var_418
  loc_725B02: LitI4 2
  loc_725B07: FLdRfVar var_35C
  loc_725B0A: ImpAdCallFPR4  = Space()
  loc_725B0F: LitI4 1
  loc_725B14: LitI4 1
  loc_725B19: LitVarStr var_38C, "#######0.00"
  loc_725B1E: FStVarCopyObj var_39C
  loc_725B21: FLdRfVar var_39C
  loc_725B24: FLdRfVar var_E0
  loc_725B27: CVarRef
  loc_725B2C: ImpAdCallI2 Format$(, )
  loc_725B31: FStStr var_41C
  loc_725B34: LitI4 1
  loc_725B39: LitI4 1
  loc_725B3E: LitVarStr var_3BC, "@@@@@@@@@@@"
  loc_725B43: FStVarCopyObj var_3CC
  loc_725B46: FLdRfVar var_3CC
  loc_725B49: FLdZeroAd var_41C
  loc_725B4C: CVarStr var_3AC
  loc_725B4F: ImpAdCallI2 Format$(, )
  loc_725B54: FStStr var_420
  loc_725B57: FLdRfVar var_22E
  loc_725B5A: FLdPrThis
  loc_725B5B: VCallAd Control_ID_List1
  loc_725B5E: FStAdFunc var_3F0
  loc_725B61: FLdPr var_3F0
  loc_725B64:  = Me.ListCount
  loc_725B69: FLdI2 var_22E
  loc_725B6C: CVarI2 var_404
  loc_725B6F: PopAdLdVar
  loc_725B70: ILdRf var_21C
  loc_725B73: LitStr " "
  loc_725B76: ConcatStr
  loc_725B77: FStStrNoPop var_220
  loc_725B7A: FLdZeroAd var_40C
  loc_725B7D: FStStrNoPop var_22C
  loc_725B80: ConcatStr
  loc_725B81: FStStrNoPop var_288
  loc_725B84: FLdZeroAd var_410
  loc_725B87: FStStrNoPop var_28C
  loc_725B8A: ConcatStr
  loc_725B8B: CVarStr var_2AC
  loc_725B8E: FLdRfVar var_29C
  loc_725B91: ConcatVar var_2BC
  loc_725B95: FLdRfVar var_2CC
  loc_725B98: ConcatVar var_2DC
  loc_725B9C: FLdZeroAd var_418
  loc_725B9F: CVarStr var_33C
  loc_725BA2: ConcatVar var_34C
  loc_725BA6: FLdRfVar var_35C
  loc_725BA9: ConcatVar var_36C
  loc_725BAD: FLdZeroAd var_420
  loc_725BB0: CVarStr var_3DC
  loc_725BB3: ConcatVar var_3EC
  loc_725BB7: CStrVarVal var_3F4
  loc_725BBB: FLdPrThis
  loc_725BBC: VCallAd Control_ID_List1
  loc_725BBF: FStAdFunc var_408
  loc_725BC2: FLdPr var_408
  loc_725BC5: Me.AddItem from_stack_1, from_stack_2
  loc_725BCA: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = ""
  loc_725BE7: FFreeAd var_3F0 = ""
  loc_725BEE: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_2AC = "": var_29C = "": var_2BC = "": var_2CC = "": var_30C = "": var_32C = "": var_2DC = "": var_33C = "": var_34C = "": var_35C = "": var_39C = "": var_3AC = "": var_3CC = "": var_36C = "": var_3DC = ""
  loc_725C27: FLdRfVar var_216
  loc_725C2A: FLdPrThis
  loc_725C2B: VCallAd Control_ID_List1
  loc_725C2E: FStAdFunc var_3F0
  loc_725C31: FLdPr var_3F0
  loc_725C34:  = Me.ListCount
  loc_725C39: FLdI2 var_216
  loc_725C3C: CVarI2 var_100
  loc_725C3F: PopAdLdVar
  loc_725C40: LitStr vbNullString
  loc_725C43: FLdPrThis
  loc_725C44: VCallAd Control_ID_List1
  loc_725C47: FStAdFunc var_408
  loc_725C4A: FLdPr var_408
  loc_725C4D: Me.AddItem from_stack_1, from_stack_2
  loc_725C52: FFreeAd var_3F0 = ""
  loc_725C59: Branch loc_725EDD
  loc_725C5C: FLdRfVar var_21C
  loc_725C5F: LitVar_Missing var_210
  loc_725C62: LitVar_Missing var_200
  loc_725C65: LitVar_Missing var_1F0
  loc_725C68: LitVar_Missing var_1C0
  loc_725C6B: LitVar_Missing var_1A0
  loc_725C6E: LitVar_Missing var_190
  loc_725C71: LitVar_Missing var_180
  loc_725C74: LitVar_Missing var_150
  loc_725C77: LitVar_Missing var_130
  loc_725C7A: LitVar_Missing var_120
  loc_725C7D: LitStr "Usuario:"
  loc_725C80: FStStrCopy var_214
  loc_725C83: FLdRfVar var_214
  loc_725C86: LitI4 &H1A
  loc_725C8B: PopTmpLdAdStr var_234
  loc_725C8E: LitI2_Byte &H4B
  loc_725C90: PopTmpLdAd2 var_216
  loc_725C93: ImpAdLdRf MemVar_74C7D0
  loc_725C96: NewIfNullPr clsMsg
  loc_725C99: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_725C9E: LitI4 1
  loc_725CA3: LitI4 1
  loc_725CA8: LitVarStr var_274, "@@@@"
  loc_725CAD: FStVarCopyObj var_284
  loc_725CB0: FLdRfVar var_284
  loc_725CB3: FLdRfVar var_C6
  loc_725CB6: CVarRef
  loc_725CBB: ImpAdCallI2 Format$(, )
  loc_725CC0: FStStr var_418
  loc_725CC3: LitI4 &HF
  loc_725CC8: ILdRf var_B4
  loc_725CCB: ImpAdCallI2 Left$(, )
  loc_725CD0: FStStr var_41C
  loc_725CD3: LitVarStr var_2EC, "@"
  loc_725CD8: FStVarCopyObj var_29C
  loc_725CDB: FLdRfVar var_29C
  loc_725CDE: LitI4 &HF
  loc_725CE3: FLdRfVar var_2AC
  loc_725CE6: ImpAdCallFPR4  = String(, )
  loc_725CEB: LitI4 1
  loc_725CF0: LitI4 1
  loc_725CF5: LitVarStr var_2FC, "!"
  loc_725CFA: FLdRfVar var_2AC
  loc_725CFD: ConcatVar var_2BC
  loc_725D01: FLdZeroAd var_41C
  loc_725D04: CVarStr var_2CC
  loc_725D07: ImpAdCallI2 Format$(, )
  loc_725D0C: FStStr var_420
  loc_725D0F: LitI4 &HD
  loc_725D14: ImpAdCallI2 Space$()
  loc_725D19: FStStr var_464
  loc_725D1C: LitI4 &HC
  loc_725D21: FLdRfVar var_2DC
  loc_725D24: ImpAdCallFPR4  = Space()
  loc_725D29: LitI4 1
  loc_725D2E: LitI4 1
  loc_725D33: ImpAdLdRf MemVar_74C364
  loc_725D36: CVarRef
  loc_725D3B: FLdRfVar var_DC
  loc_725D3E: CVarRef
  loc_725D43: ImpAdCallI2 Format$(, )
  loc_725D48: FStStr var_468
  loc_725D4B: LitI4 1
  loc_725D50: LitI4 1
  loc_725D55: LitVarStr var_38C, "@@@@@@@@@@@"
  loc_725D5A: FStVarCopyObj var_34C
  loc_725D5D: FLdRfVar var_34C
  loc_725D60: FLdZeroAd var_468
  loc_725D63: CVarStr var_33C
  loc_725D66: ImpAdCallI2 Format$(, )
  loc_725D6B: FStStr var_46C
  loc_725D6E: LitI4 2
  loc_725D73: FLdRfVar var_39C
  loc_725D76: ImpAdCallFPR4  = Space()
  loc_725D7B: LitI4 1
  loc_725D80: LitI4 1
  loc_725D85: LitVarStr var_404, "#######0.00"
  loc_725D8A: FStVarCopyObj var_3CC
  loc_725D8D: FLdRfVar var_3CC
  loc_725D90: FLdRfVar var_E0
  loc_725D93: CVarRef
  loc_725D98: ImpAdCallI2 Format$(, )
  loc_725D9D: FStStr var_470
  loc_725DA0: LitI4 1
  loc_725DA5: LitI4 1
  loc_725DAA: LitVarStr var_430, "@@@@@@@@@@@"
  loc_725DAF: FStVarCopyObj var_3EC
  loc_725DB2: FLdRfVar var_3EC
  loc_725DB5: FLdZeroAd var_470
  loc_725DB8: CVarStr var_3DC
  loc_725DBB: ImpAdCallI2 Format$(, )
  loc_725DC0: FStStr var_474
  loc_725DC3: FLdRfVar var_22E
  loc_725DC6: FLdPrThis
  loc_725DC7: VCallAd Control_ID_List1
  loc_725DCA: FStAdFunc var_3F0
  loc_725DCD: FLdPr var_3F0
  loc_725DD0:  = Me.ListCount
  loc_725DD5: FLdI2 var_22E
  loc_725DD8: CVarI2 var_460
  loc_725DDB: PopAdLdVar
  loc_725DDC: ILdRf var_21C
  loc_725DDF: LitStr " "
  loc_725DE2: ConcatStr
  loc_725DE3: FStStrNoPop var_220
  loc_725DE6: FLdZeroAd var_418
  loc_725DE9: FStStrNoPop var_22C
  loc_725DEC: ConcatStr
  loc_725DED: FStStrNoPop var_288
  loc_725DF0: LitStr " _ "
  loc_725DF3: ConcatStr
  loc_725DF4: FStStrNoPop var_28C
  loc_725DF7: FLdZeroAd var_420
  loc_725DFA: FStStrNoPop var_3F4
  loc_725DFD: ConcatStr
  loc_725DFE: FStStrNoPop var_40C
  loc_725E01: FLdZeroAd var_464
  loc_725E04: FStStrNoPop var_410
  loc_725E07: ConcatStr
  loc_725E08: CVarStr var_30C
  loc_725E0B: FLdRfVar var_2DC
  loc_725E0E: ConcatVar var_32C
  loc_725E12: FLdZeroAd var_46C
  loc_725E15: CVarStr var_35C
  loc_725E18: ConcatVar var_36C
  loc_725E1C: FLdRfVar var_39C
  loc_725E1F: ConcatVar var_3AC
  loc_725E23: FLdZeroAd var_474
  loc_725E26: CVarStr var_440
  loc_725E29: ConcatVar var_450
  loc_725E2D: CStrVarVal var_414
  loc_725E31: FLdPrThis
  loc_725E32: VCallAd Control_ID_List1
  loc_725E35: FStAdFunc var_408
  loc_725E38: FLdPr var_408
  loc_725E3B: Me.AddItem from_stack_1, from_stack_2
  loc_725E40: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = "": var_464 = "": var_468 = "": var_46C = "": var_470 = ""
  loc_725E67: FFreeAd var_3F0 = ""
  loc_725E6E: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_29C = "": var_2AC = "": var_2CC = "": var_2BC = "": var_30C = "": var_2DC = "": var_33C = "": var_34C = "": var_32C = "": var_35C = "": var_36C = "": var_39C = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3AC = "": var_440 = ""
  loc_725EAB: FLdRfVar var_216
  loc_725EAE: FLdPrThis
  loc_725EAF: VCallAd Control_ID_List1
  loc_725EB2: FStAdFunc var_3F0
  loc_725EB5: FLdPr var_3F0
  loc_725EB8:  = Me.ListCount
  loc_725EBD: FLdI2 var_216
  loc_725EC0: CVarI2 var_100
  loc_725EC3: PopAdLdVar
  loc_725EC4: LitStr vbNullString
  loc_725EC7: FLdPrThis
  loc_725EC8: VCallAd Control_ID_List1
  loc_725ECB: FStAdFunc var_408
  loc_725ECE: FLdPr var_408
  loc_725ED1: Me.AddItem from_stack_1, from_stack_2
  loc_725ED6: FFreeAd var_3F0 = ""
  loc_725EDD: LitI2_Byte 0
  loc_725EDF: CR8I2
  loc_725EE0: FStFPR4 var_DC
  loc_725EE3: LitI2_Byte 0
  loc_725EE5: CR8I2
  loc_725EE6: FStFPR4 var_E0
  loc_725EE9: FLdI2 var_BE
  loc_725EEC: FStI2 var_C6
  loc_725EEF: ILdRf var_C4
  loc_725EF2: ILdRf var_BC
  loc_725EF5: NeI4
  loc_725EF6: FLdI2 var_C0
  loc_725EF9: FLdI2 var_B6
  loc_725EFC: NeI2
  loc_725EFD: OrI4
  loc_725EFE: BranchF loc_7261DE
  loc_725F01: ILdRf var_C4
  loc_725F04: LitI4 -1
  loc_725F09: NeI4
  loc_725F0A: FLdI2 var_C0
  loc_725F0D: LitI2 800
  loc_725F10: GtI2
  loc_725F11: FLdI2 var_C0
  loc_725F14: LitI2_Byte 0
  loc_725F16: EqI2
  loc_725F17: OrI4
  loc_725F18: AndI4
  loc_725F19: BranchF loc_7261CC
  loc_725F1C: FLdRfVar var_21C
  loc_725F1F: LitVar_Missing var_210
  loc_725F22: LitVar_Missing var_200
  loc_725F25: LitVar_Missing var_1F0
  loc_725F28: LitVar_Missing var_1C0
  loc_725F2B: LitVar_Missing var_1A0
  loc_725F2E: LitVar_Missing var_190
  loc_725F31: LitVar_Missing var_180
  loc_725F34: LitVar_Missing var_150
  loc_725F37: LitVar_Missing var_130
  loc_725F3A: LitVar_Missing var_120
  loc_725F3D: LitStr "Grupo:"
  loc_725F40: FStStrCopy var_214
  loc_725F43: FLdRfVar var_214
  loc_725F46: LitI4 &H1A
  loc_725F4B: PopTmpLdAdStr var_234
  loc_725F4E: LitI2_Byte &H4B
  loc_725F50: PopTmpLdAd2 var_216
  loc_725F53: ImpAdLdRf MemVar_74C7D0
  loc_725F56: NewIfNullPr clsMsg
  loc_725F59: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_725F5E: LitI4 1
  loc_725F63: LitI4 1
  loc_725F68: LitVarStr var_274, "@@@"
  loc_725F6D: FStVarCopyObj var_284
  loc_725F70: FLdRfVar var_284
  loc_725F73: FLdRfVar var_C0
  loc_725F76: CVarRef
  loc_725F7B: ImpAdCallI2 Format$(, )
  loc_725F80: FStStr var_41C
  loc_725F83: FLdRfVar var_28C
  loc_725F86: LitVar_Missing var_35C
  loc_725F89: LitVar_Missing var_34C
  loc_725F8C: LitVar_Missing var_33C
  loc_725F8F: LitVar_Missing var_32C
  loc_725F92: LitVar_Missing var_30C
  loc_725F95: LitVar_Missing var_2DC
  loc_725F98: LitVar_Missing var_2CC
  loc_725F9B: LitVar_Missing var_2BC
  loc_725F9E: LitVar_Missing var_2AC
  loc_725FA1: LitVar_Missing var_29C
  loc_725FA4: LitStr " - Compañía:"
  loc_725FA7: FStStrCopy var_288
  loc_725FAA: FLdRfVar var_288
  loc_725FAD: LitI4 &H1B
  loc_725FB2: PopTmpLdAdStr var_478
  loc_725FB5: LitI2_Byte &H4B
  loc_725FB7: PopTmpLdAd2 var_22E
  loc_725FBA: ImpAdLdRf MemVar_74C7D0
  loc_725FBD: NewIfNullPr clsMsg
  loc_725FC0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_725FC5: LitI4 1
  loc_725FCA: LitI4 1
  loc_725FCF: LitVarStr var_4A8, "@@@@@"
  loc_725FD4: FStVarCopyObj var_36C
  loc_725FD7: FLdRfVar var_36C
  loc_725FDA: FLdRfVar var_C4
  loc_725FDD: CVarRef
  loc_725FE2: ImpAdCallI2 Format$(, )
  loc_725FE7: FStStr var_420
  loc_725FEA: LitI4 &H11
  loc_725FEF: FLdRfVar var_39C
  loc_725FF2: ImpAdCallFPR4  = Space()
  loc_725FF7: LitI4 &HB
  loc_725FFC: FLdRfVar var_3DC
  loc_725FFF: ImpAdCallFPR4  = Space()
  loc_726004: LitI4 1
  loc_726009: LitI4 1
  loc_72600E: ImpAdLdRf MemVar_74C364
  loc_726011: CVarRef
  loc_726016: FLdRfVar var_D4
  loc_726019: CVarRef
  loc_72601E: ImpAdCallI2 Format$(, )
  loc_726023: FStStr var_464
  loc_726026: LitI4 1
  loc_72602B: LitI4 1
  loc_726030: LitVarStr var_4D8, "@@@@@@@@@@@"
  loc_726035: FStVarCopyObj var_450
  loc_726038: FLdRfVar var_450
  loc_72603B: FLdZeroAd var_464
  loc_72603E: CVarStr var_440
  loc_726041: ImpAdCallI2 Format$(, )
  loc_726046: FStStr var_468
  loc_726049: LitI4 2
  loc_72604E: FLdRfVar var_508
  loc_726051: ImpAdCallFPR4  = Space()
  loc_726056: LitI4 1
  loc_72605B: LitI4 1
  loc_726060: LitVarStr var_538, "#######0.00"
  loc_726065: FStVarCopyObj var_548
  loc_726068: FLdRfVar var_548
  loc_72606B: FLdRfVar var_D8
  loc_72606E: CVarRef
  loc_726073: ImpAdCallI2 Format$(, )
  loc_726078: FStStr var_46C
  loc_72607B: LitI4 1
  loc_726080: LitI4 1
  loc_726085: LitVarStr var_568, "@@@@@@@@@@@"
  loc_72608A: FStVarCopyObj var_578
  loc_72608D: FLdRfVar var_578
  loc_726090: FLdZeroAd var_46C
  loc_726093: CVarStr var_558
  loc_726096: ImpAdCallI2 Format$(, )
  loc_72609B: FStStr var_470
  loc_72609E: FLdRfVar var_59A
  loc_7260A1: FLdPrThis
  loc_7260A2: VCallAd Control_ID_List1
  loc_7260A5: FStAdFunc var_3F0
  loc_7260A8: FLdPr var_3F0
  loc_7260AB:  = Me.ListCount
  loc_7260B0: FLdI2 var_59A
  loc_7260B3: CVarI2 var_5AC
  loc_7260B6: PopAdLdVar
  loc_7260B7: ILdRf var_21C
  loc_7260BA: LitStr " "
  loc_7260BD: ConcatStr
  loc_7260BE: FStStrNoPop var_220
  loc_7260C1: FLdZeroAd var_41C
  loc_7260C4: FStStrNoPop var_22C
  loc_7260C7: ConcatStr
  loc_7260C8: FStStrNoPop var_3F4
  loc_7260CB: ILdRf var_28C
  loc_7260CE: ConcatStr
  loc_7260CF: FStStrNoPop var_40C
  loc_7260D2: LitStr " "
  loc_7260D5: ConcatStr
  loc_7260D6: FStStrNoPop var_410
  loc_7260D9: FLdZeroAd var_420
  loc_7260DC: FStStrNoPop var_414
  loc_7260DF: ConcatStr
  loc_7260E0: CVarStr var_3AC
  loc_7260E3: FLdRfVar var_39C
  loc_7260E6: ConcatVar var_3CC
  loc_7260EA: FLdRfVar var_3DC
  loc_7260ED: ConcatVar var_3EC
  loc_7260F1: FLdZeroAd var_468
  loc_7260F4: CVarStr var_4E8
  loc_7260F7: ConcatVar var_4F8
  loc_7260FB: FLdRfVar var_508
  loc_7260FE: ConcatVar var_518
  loc_726102: FLdZeroAd var_470
  loc_726105: CVarStr var_588
  loc_726108: ConcatVar var_598
  loc_72610C: CStrVarVal var_418
  loc_726110: FLdPrThis
  loc_726111: VCallAd Control_ID_List1
  loc_726114: FStAdFunc var_408
  loc_726117: FLdPr var_408
  loc_72611A: Me.AddItem from_stack_1, from_stack_2
  loc_72611F: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_3F4 = "": var_28C = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = "": var_464 = "": var_468 = "": var_46C = ""
  loc_726144: FFreeAd var_3F0 = ""
  loc_72614B: FFreeVar var_4F8 = "": var_508 = "": var_548 = "": var_558 = "": var_578 = "": var_518 = "": var_588 = "": var_598 = "": var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_30C = "": var_32C = "": var_33C = "": var_34C = "": var_35C = "": var_36C = "": var_3AC = "": var_39C = "": var_3CC = "": var_3DC = "": var_440 = "": var_450 = "": var_3EC = ""
  loc_72619A: FLdRfVar var_216
  loc_72619D: FLdPrThis
  loc_72619E: VCallAd Control_ID_List1
  loc_7261A1: FStAdFunc var_3F0
  loc_7261A4: FLdPr var_3F0
  loc_7261A7:  = Me.ListCount
  loc_7261AC: FLdI2 var_216
  loc_7261AF: CVarI2 var_100
  loc_7261B2: PopAdLdVar
  loc_7261B3: LitStr vbNullString
  loc_7261B6: FLdPrThis
  loc_7261B7: VCallAd Control_ID_List1
  loc_7261BA: FStAdFunc var_408
  loc_7261BD: FLdPr var_408
  loc_7261C0: Me.AddItem from_stack_1, from_stack_2
  loc_7261C5: FFreeAd var_3F0 = ""
  loc_7261CC: LitI2_Byte 0
  loc_7261CE: CR8I2
  loc_7261CF: FStFPR4 var_D4
  loc_7261D2: LitI2_Byte 0
  loc_7261D4: CR8I2
  loc_7261D5: FStFPR4 var_D8
  loc_7261D8: ILdRf var_BC
  loc_7261DB: FStR4 var_C4
  loc_7261DE: FLdI2 var_C0
  loc_7261E1: FLdI2 var_B6
  loc_7261E4: NeI2
  loc_7261E5: BranchF loc_7265FA
  loc_7261E8: FLdI2 var_C0
  loc_7261EB: LitI2_Byte &HFF
  loc_7261ED: NeI2
  loc_7261EE: BranchF loc_7265E8
  loc_7261F1: FLdI2 var_C0
  loc_7261F4: LitI2 800
  loc_7261F7: GtI2
  loc_7261F8: FLdI2 var_C0
  loc_7261FB: LitI2_Byte 0
  loc_7261FD: EqI2
  loc_7261FE: OrI4
  loc_7261FF: BranchF loc_7263E0
  loc_726202: FLdRfVar var_21C
  loc_726205: LitVar_Missing var_210
  loc_726208: LitVar_Missing var_200
  loc_72620B: LitVar_Missing var_1F0
  loc_72620E: LitVar_Missing var_1C0
  loc_726211: LitVar_Missing var_1A0
  loc_726214: LitVar_Missing var_190
  loc_726217: LitVar_Missing var_180
  loc_72621A: LitVar_Missing var_150
  loc_72621D: LitVar_Missing var_130
  loc_726220: LitVar_Missing var_120
  loc_726223: LitStr "Grupo:"
  loc_726226: FStStrCopy var_214
  loc_726229: FLdRfVar var_214
  loc_72622C: LitI4 &H1A
  loc_726231: PopTmpLdAdStr var_234
  loc_726234: LitI2_Byte &H4B
  loc_726236: PopTmpLdAd2 var_216
  loc_726239: ImpAdLdRf MemVar_74C7D0
  loc_72623C: NewIfNullPr clsMsg
  loc_72623F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726244: LitI4 1
  loc_726249: LitI4 1
  loc_72624E: LitVarStr var_274, "@@@"
  loc_726253: FStVarCopyObj var_284
  loc_726256: FLdRfVar var_284
  loc_726259: FLdRfVar var_C0
  loc_72625C: CVarRef
  loc_726261: ImpAdCallI2 Format$(, )
  loc_726266: FStStr var_28C
  loc_726269: LitI4 &H22
  loc_72626E: FLdRfVar var_29C
  loc_726271: ImpAdCallFPR4  = Space()
  loc_726276: LitI4 &HC
  loc_72627B: FLdRfVar var_2CC
  loc_72627E: ImpAdCallFPR4  = Space()
  loc_726283: LitI4 1
  loc_726288: LitI4 1
  loc_72628D: ImpAdLdRf MemVar_74C364
  loc_726290: CVarRef
  loc_726295: FLdRfVar var_CC
  loc_726298: CVarRef
  loc_72629D: ImpAdCallI2 Format$(, )
  loc_7262A2: FStStr var_3F4
  loc_7262A5: LitI4 1
  loc_7262AA: LitI4 1
  loc_7262AF: LitVarStr var_31C, "@@@@@@@@@@@"
  loc_7262B4: FStVarCopyObj var_32C
  loc_7262B7: FLdRfVar var_32C
  loc_7262BA: FLdZeroAd var_3F4
  loc_7262BD: CVarStr var_30C
  loc_7262C0: ImpAdCallI2 Format$(, )
  loc_7262C5: FStStr var_40C
  loc_7262C8: LitI4 2
  loc_7262CD: FLdRfVar var_35C
  loc_7262D0: ImpAdCallFPR4  = Space()
  loc_7262D5: LitI4 1
  loc_7262DA: LitI4 1
  loc_7262DF: LitVarStr var_38C, "#######0.00"
  loc_7262E4: FStVarCopyObj var_39C
  loc_7262E7: FLdRfVar var_39C
  loc_7262EA: FLdRfVar var_D0
  loc_7262ED: CVarRef
  loc_7262F2: ImpAdCallI2 Format$(, )
  loc_7262F7: FStStr var_410
  loc_7262FA: LitI4 1
  loc_7262FF: LitI4 1
  loc_726304: LitVarStr var_3BC, "@@@@@@@@@@@"
  loc_726309: FStVarCopyObj var_3CC
  loc_72630C: FLdRfVar var_3CC
  loc_72630F: FLdZeroAd var_410
  loc_726312: CVarStr var_3AC
  loc_726315: ImpAdCallI2 Format$(, )
  loc_72631A: FStStr var_414
  loc_72631D: FLdRfVar var_22E
  loc_726320: FLdPrThis
  loc_726321: VCallAd Control_ID_List1
  loc_726324: FStAdFunc var_3F0
  loc_726327: FLdPr var_3F0
  loc_72632A:  = Me.ListCount
  loc_72632F: FLdI2 var_22E
  loc_726332: CVarI2 var_404
  loc_726335: PopAdLdVar
  loc_726336: ILdRf var_21C
  loc_726339: LitStr " "
  loc_72633C: ConcatStr
  loc_72633D: FStStrNoPop var_220
  loc_726340: FLdZeroAd var_28C
  loc_726343: FStStrNoPop var_22C
  loc_726346: ConcatStr
  loc_726347: CVarStr var_2AC
  loc_72634A: FLdRfVar var_29C
  loc_72634D: ConcatVar var_2BC
  loc_726351: FLdRfVar var_2CC
  loc_726354: ConcatVar var_2DC
  loc_726358: FLdZeroAd var_40C
  loc_72635B: CVarStr var_33C
  loc_72635E: ConcatVar var_34C
  loc_726362: FLdRfVar var_35C
  loc_726365: ConcatVar var_36C
  loc_726369: FLdZeroAd var_414
  loc_72636C: CVarStr var_3DC
  loc_72636F: ConcatVar var_3EC
  loc_726373: CStrVarVal var_288
  loc_726377: FLdPrThis
  loc_726378: VCallAd Control_ID_List1
  loc_72637B: FStAdFunc var_408
  loc_72637E: FLdPr var_408
  loc_726381: Me.AddItem from_stack_1, from_stack_2
  loc_726386: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = ""
  loc_72639D: FFreeAd var_3F0 = ""
  loc_7263A4: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_2AC = "": var_29C = "": var_2BC = "": var_2CC = "": var_30C = "": var_32C = "": var_2DC = "": var_33C = "": var_34C = "": var_35C = "": var_39C = "": var_3AC = "": var_3CC = "": var_36C = "": var_3DC = ""
  loc_7263DD: Branch loc_726584
  loc_7263E0: FLdRfVar var_21C
  loc_7263E3: LitVar_Missing var_210
  loc_7263E6: LitVar_Missing var_200
  loc_7263E9: LitVar_Missing var_1F0
  loc_7263EC: LitVar_Missing var_1C0
  loc_7263EF: LitVar_Missing var_1A0
  loc_7263F2: LitVar_Missing var_190
  loc_7263F5: LitVar_Missing var_180
  loc_7263F8: LitVar_Missing var_150
  loc_7263FB: LitVar_Missing var_130
  loc_7263FE: LitVar_Missing var_120
  loc_726401: LitStr "Estacíon:"
  loc_726404: FStStrCopy var_214
  loc_726407: FLdRfVar var_214
  loc_72640A: LitI4 &H1C
  loc_72640F: PopTmpLdAdStr var_234
  loc_726412: LitI2_Byte &H4B
  loc_726414: PopTmpLdAd2 var_216
  loc_726417: ImpAdLdRf MemVar_74C7D0
  loc_72641A: NewIfNullPr clsMsg
  loc_72641D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726422: LitI4 &H22
  loc_726427: FLdRfVar var_284
  loc_72642A: ImpAdCallFPR4  = Space()
  loc_72642F: LitI4 &HC
  loc_726434: FLdRfVar var_2BC
  loc_726437: ImpAdCallFPR4  = Space()
  loc_72643C: LitI4 1
  loc_726441: LitI4 1
  loc_726446: ImpAdLdRf MemVar_74C364
  loc_726449: CVarRef
  loc_72644E: FLdRfVar var_CC
  loc_726451: CVarRef
  loc_726456: ImpAdCallI2 Format$(, )
  loc_72645B: FStStr var_22C
  loc_72645E: LitI4 1
  loc_726463: LitI4 1
  loc_726468: LitVarStr var_2EC, "@@@@@@@@@@@"
  loc_72646D: FStVarCopyObj var_30C
  loc_726470: FLdRfVar var_30C
  loc_726473: FLdZeroAd var_22C
  loc_726476: CVarStr var_2DC
  loc_726479: ImpAdCallI2 Format$(, )
  loc_72647E: FStStr var_288
  loc_726481: LitI4 2
  loc_726486: FLdRfVar var_34C
  loc_726489: ImpAdCallFPR4  = Space()
  loc_72648E: LitI4 1
  loc_726493: LitI4 1
  loc_726498: LitVarStr var_31C, "#######0.00"
  loc_72649D: FStVarCopyObj var_36C
  loc_7264A0: FLdRfVar var_36C
  loc_7264A3: FLdRfVar var_D0
  loc_7264A6: CVarRef
  loc_7264AB: ImpAdCallI2 Format$(, )
  loc_7264B0: FStStr var_28C
  loc_7264B3: LitI4 1
  loc_7264B8: LitI4 1
  loc_7264BD: LitVarStr var_37C, "@@@@@@@@@@@"
  loc_7264C2: FStVarCopyObj var_3AC
  loc_7264C5: FLdRfVar var_3AC
  loc_7264C8: FLdZeroAd var_28C
  loc_7264CB: CVarStr var_39C
  loc_7264CE: ImpAdCallI2 Format$(, )
  loc_7264D3: FStStr var_3F4
  loc_7264D6: FLdRfVar var_22E
  loc_7264D9: FLdPrThis
  loc_7264DA: VCallAd Control_ID_List1
  loc_7264DD: FStAdFunc var_3F0
  loc_7264E0: FLdPr var_3F0
  loc_7264E3:  = Me.ListCount
  loc_7264E8: FLdI2 var_22E
  loc_7264EB: CVarI2 var_38C
  loc_7264EE: PopAdLdVar
  loc_7264EF: ILdRf var_21C
  loc_7264F2: LitStr " "
  loc_7264F5: ConcatStr
  loc_7264F6: CVarStr var_29C
  loc_7264F9: FLdRfVar var_284
  loc_7264FC: ConcatVar var_2AC
  loc_726500: FLdRfVar var_2BC
  loc_726503: ConcatVar var_2CC
  loc_726507: FLdZeroAd var_288
  loc_72650A: CVarStr var_32C
  loc_72650D: ConcatVar var_33C
  loc_726511: FLdRfVar var_34C
  loc_726514: ConcatVar var_35C
  loc_726518: FLdZeroAd var_3F4
  loc_72651B: CVarStr var_3CC
  loc_72651E: ConcatVar var_3DC
  loc_726522: CStrVarVal var_220
  loc_726526: FLdPrThis
  loc_726527: VCallAd Control_ID_List1
  loc_72652A: FStAdFunc var_408
  loc_72652D: FLdPr var_408
  loc_726530: Me.AddItem from_stack_1, from_stack_2
  loc_726535: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = ""
  loc_726546: FFreeAd var_3F0 = ""
  loc_72654D: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_29C = "": var_284 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_30C = "": var_2CC = "": var_32C = "": var_33C = "": var_34C = "": var_36C = "": var_39C = "": var_3AC = "": var_35C = "": var_3CC = ""
  loc_726584: FLdRfVar var_216
  loc_726587: FLdPrThis
  loc_726588: VCallAd Control_ID_List1
  loc_72658B: FStAdFunc var_3F0
  loc_72658E: FLdPr var_3F0
  loc_726591:  = Me.ListCount
  loc_726596: FLdI2 var_216
  loc_726599: CVarI2 var_100
  loc_72659C: PopAdLdVar
  loc_72659D: LitStr vbNullString
  loc_7265A0: FLdPrThis
  loc_7265A1: VCallAd Control_ID_List1
  loc_7265A4: FStAdFunc var_408
  loc_7265A7: FLdPr var_408
  loc_7265AA: Me.AddItem from_stack_1, from_stack_2
  loc_7265AF: FFreeAd var_3F0 = ""
  loc_7265B6: FLdRfVar var_216
  loc_7265B9: FLdPrThis
  loc_7265BA: VCallAd Control_ID_List1
  loc_7265BD: FStAdFunc var_3F0
  loc_7265C0: FLdPr var_3F0
  loc_7265C3:  = Me.ListCount
  loc_7265C8: FLdI2 var_216
  loc_7265CB: CVarI2 var_100
  loc_7265CE: PopAdLdVar
  loc_7265CF: LitStr vbNullString
  loc_7265D2: FLdPrThis
  loc_7265D3: VCallAd Control_ID_List1
  loc_7265D6: FStAdFunc var_408
  loc_7265D9: FLdPr var_408
  loc_7265DC: Me.AddItem from_stack_1, from_stack_2
  loc_7265E1: FFreeAd var_3F0 = ""
  loc_7265E8: LitI2_Byte 0
  loc_7265EA: CR8I2
  loc_7265EB: FStFPR4 var_CC
  loc_7265EE: LitI2_Byte 0
  loc_7265F0: CR8I2
  loc_7265F1: FStFPR4 var_D0
  loc_7265F4: FLdI2 var_B6
  loc_7265F7: FStI2 var_C0
  loc_7265FA: FLdFPR4 var_CC
  loc_7265FD: ILdRf var_A0
  loc_726600: CR8Str
  loc_726602: AddR8
  loc_726603: FStFPR4 var_CC
  loc_726606: FLdFPR4 var_D0
  loc_726609: ILdRf var_A4
  loc_72660C: CR8Str
  loc_72660E: AddR8
  loc_72660F: FStFPR4 var_D0
  loc_726612: FLdFPR4 var_D4
  loc_726615: ILdRf var_A0
  loc_726618: CR8Str
  loc_72661A: AddR8
  loc_72661B: FStFPR4 var_D4
  loc_72661E: FLdFPR4 var_D8
  loc_726621: ILdRf var_A4
  loc_726624: CR8Str
  loc_726626: AddR8
  loc_726627: FStFPR4 var_D8
  loc_72662A: FLdFPR4 var_DC
  loc_72662D: ILdRf var_A0
  loc_726630: CR8Str
  loc_726632: AddR8
  loc_726633: FStFPR4 var_DC
  loc_726636: FLdFPR4 var_E0
  loc_726639: ILdRf var_A4
  loc_72663C: CR8Str
  loc_72663E: AddR8
  loc_72663F: FStFPR4 var_E0
  loc_726642: FLdFPR4 var_E4
  loc_726645: ILdRf var_A0
  loc_726648: CR8Str
  loc_72664A: AddR8
  loc_72664B: FStFPR4 var_E4
  loc_72664E: FLdFPR4 var_E8
  loc_726651: ILdRf var_A4
  loc_726654: CR8Str
  loc_726656: AddR8
  loc_726657: FStFPR4 var_E8
  loc_72665A: LitI4 1
  loc_72665F: FLdRfVar var_120
  loc_726662: ImpAdCallFPR4  = Space()
  loc_726667: LitI4 1
  loc_72666C: FLdRfVar var_180
  loc_72666F: ImpAdCallFPR4  = Space()
  loc_726674: LitI4 1
  loc_726679: FLdRfVar var_1F0
  loc_72667C: ImpAdCallFPR4  = Space()
  loc_726681: LitI4 1
  loc_726686: FLdRfVar var_284
  loc_726689: ImpAdCallFPR4  = Space()
  loc_72668E: LitI4 2
  loc_726693: FLdRfVar var_2BC
  loc_726696: ImpAdCallFPR4  = Space()
  loc_72669B: LitI4 1
  loc_7266A0: FLdRfVar var_30C
  loc_7266A3: ImpAdCallFPR4  = Space()
  loc_7266A8: LitI4 2
  loc_7266AD: FLdRfVar var_34C
  loc_7266B0: ImpAdCallFPR4  = Space()
  loc_7266B5: LitI4 1
  loc_7266BA: FLdRfVar var_39C
  loc_7266BD: ImpAdCallFPR4  = Space()
  loc_7266C2: FLdRfVar var_216
  loc_7266C5: FLdPrThis
  loc_7266C6: VCallAd Control_ID_List1
  loc_7266C9: FStAdFunc var_3F0
  loc_7266CC: FLdPr var_3F0
  loc_7266CF:  = Me.ListCount
  loc_7266D4: FLdI2 var_216
  loc_7266D7: CVarI2 var_264
  loc_7266DA: PopAdLdVar
  loc_7266DB: ILdRf var_94
  loc_7266DE: CVarStr var_100
  loc_7266E1: FLdRfVar var_120
  loc_7266E4: ConcatVar var_130
  loc_7266E8: ILdRf var_98
  loc_7266EB: CVarStr var_110
  loc_7266EE: ConcatVar var_150
  loc_7266F2: FLdRfVar var_180
  loc_7266F5: ConcatVar var_190
  loc_7266F9: ILdRf var_9C
  loc_7266FC: CVarStr var_140
  loc_7266FF: ConcatVar var_1A0
  loc_726703: ILdRf var_B0
  loc_726706: CVarStr var_160
  loc_726709: ConcatVar var_1C0
  loc_72670D: FLdRfVar var_1F0
  loc_726710: ConcatVar var_200
  loc_726714: ILdRf var_A8
  loc_726717: CVarStr var_170
  loc_72671A: ConcatVar var_210
  loc_72671E: FLdRfVar var_284
  loc_726721: ConcatVar var_29C
  loc_726725: ILdRf var_EC
  loc_726728: CVarStr var_1B0
  loc_72672B: ConcatVar var_2AC
  loc_72672F: FLdRfVar var_2BC
  loc_726732: ConcatVar var_2CC
  loc_726736: ILdRf var_F0
  loc_726739: CVarStr var_1D0
  loc_72673C: ConcatVar var_2DC
  loc_726740: FLdRfVar var_30C
  loc_726743: ConcatVar var_32C
  loc_726747: ILdRf var_A0
  loc_72674A: CVarStr var_1E0
  loc_72674D: ConcatVar var_33C
  loc_726751: FLdRfVar var_34C
  loc_726754: ConcatVar var_35C
  loc_726758: ILdRf var_A4
  loc_72675B: CVarStr var_244
  loc_72675E: ConcatVar var_36C
  loc_726762: FLdRfVar var_39C
  loc_726765: ConcatVar var_3AC
  loc_726769: ILdRf var_AC
  loc_72676C: CVarStr var_254
  loc_72676F: ConcatVar var_3CC
  loc_726773: CStrVarVal var_214
  loc_726777: FLdPrThis
  loc_726778: VCallAd Control_ID_List1
  loc_72677B: FStAdFunc var_408
  loc_72677E: FLdPr var_408
  loc_726781: Me.AddItem from_stack_1, from_stack_2
  loc_726786: FFree1Str var_214
  loc_726789: FFreeAd var_3F0 = ""
  loc_726790: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_30C = "": var_32C = "": var_33C = "": var_34C = "": var_35C = "": var_36C = "": var_39C = "": var_3AC = ""
  loc_7267C5: ILdRf var_8C
  loc_7267C8: FLdUI1
  loc_7267CC: CI4UI1
  loc_7267CD: AddI4
  loc_7267CE: FStR4 var_8C
  loc_7267D1: Branch loc_725536
  loc_7267D4: FLdI2 var_C6
  loc_7267D7: LitI2_Byte &HFF
  loc_7267D9: NeI2
  loc_7267DA: BranchF loc_726CBB
  loc_7267DD: FLdI2 var_C0
  loc_7267E0: LitI2 800
  loc_7267E3: GtI2
  loc_7267E4: FLdI2 var_C0
  loc_7267E7: LitI2_Byte 0
  loc_7267E9: EqI2
  loc_7267EA: OrI4
  loc_7267EB: BranchF loc_7267F1
  loc_7267EE: Branch loc_726CBB
  loc_7267F1: FLdRfVar var_214
  loc_7267F4: FLdI2 var_C6
  loc_7267F7: from_stack_2v = Proc_129_12_5F20E8(from_stack_1v)
  loc_7267FC: FLdZeroAd var_214
  loc_7267FF: FStStr var_B4
  loc_726802: ILdRf var_B4
  loc_726805: LitStr vbNullString
  loc_726808: EqStr
  loc_72680A: BranchF loc_726A3A
  loc_72680D: FLdRfVar var_21C
  loc_726810: LitVar_Missing var_210
  loc_726813: LitVar_Missing var_200
  loc_726816: LitVar_Missing var_1F0
  loc_726819: LitVar_Missing var_1C0
  loc_72681C: LitVar_Missing var_1A0
  loc_72681F: LitVar_Missing var_190
  loc_726822: LitVar_Missing var_180
  loc_726825: LitVar_Missing var_150
  loc_726828: LitVar_Missing var_130
  loc_72682B: LitVar_Missing var_120
  loc_72682E: LitStr "Usuario:"
  loc_726831: FStStrCopy var_214
  loc_726834: FLdRfVar var_214
  loc_726837: LitI4 &H1D
  loc_72683C: PopTmpLdAdStr var_234
  loc_72683F: LitI2_Byte &H4B
  loc_726841: PopTmpLdAd2 var_216
  loc_726844: ImpAdLdRf MemVar_74C7D0
  loc_726847: NewIfNullPr clsMsg
  loc_72684A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72684F: LitI4 1
  loc_726854: LitI4 1
  loc_726859: LitVarStr var_274, "@@@@"
  loc_72685E: FStVarCopyObj var_284
  loc_726861: FLdRfVar var_284
  loc_726864: FLdRfVar var_C6
  loc_726867: CVarRef
  loc_72686C: ImpAdCallI2 Format$(, )
  loc_726871: FStStr var_40C
  loc_726874: LitI4 &HD
  loc_726879: ImpAdCallI2 Space$()
  loc_72687E: FStStr var_410
  loc_726881: LitI4 &H12
  loc_726886: FLdRfVar var_29C
  loc_726889: ImpAdCallFPR4  = Space()
  loc_72688E: LitI4 &HC
  loc_726893: FLdRfVar var_2CC
  loc_726896: ImpAdCallFPR4  = Space()
  loc_72689B: LitI4 1
  loc_7268A0: LitI4 1
  loc_7268A5: ImpAdLdRf MemVar_74C364
  loc_7268A8: CVarRef
  loc_7268AD: FLdRfVar var_DC
  loc_7268B0: CVarRef
  loc_7268B5: ImpAdCallI2 Format$(, )
  loc_7268BA: FStStr var_414
  loc_7268BD: LitI4 1
  loc_7268C2: LitI4 1
  loc_7268C7: LitVarStr var_31C, "@@@@@@@@@@@"
  loc_7268CC: FStVarCopyObj var_32C
  loc_7268CF: FLdRfVar var_32C
  loc_7268D2: FLdZeroAd var_414
  loc_7268D5: CVarStr var_30C
  loc_7268D8: ImpAdCallI2 Format$(, )
  loc_7268DD: FStStr var_418
  loc_7268E0: LitI4 2
  loc_7268E5: FLdRfVar var_35C
  loc_7268E8: ImpAdCallFPR4  = Space()
  loc_7268ED: LitI4 1
  loc_7268F2: LitI4 1
  loc_7268F7: LitVarStr var_38C, "#######0.00"
  loc_7268FC: FStVarCopyObj var_39C
  loc_7268FF: FLdRfVar var_39C
  loc_726902: FLdRfVar var_E0
  loc_726905: CVarRef
  loc_72690A: ImpAdCallI2 Format$(, )
  loc_72690F: FStStr var_41C
  loc_726912: LitI4 1
  loc_726917: LitI4 1
  loc_72691C: LitVarStr var_3BC, "@@@@@@@@@@@"
  loc_726921: FStVarCopyObj var_3CC
  loc_726924: FLdRfVar var_3CC
  loc_726927: FLdZeroAd var_41C
  loc_72692A: CVarStr var_3AC
  loc_72692D: ImpAdCallI2 Format$(, )
  loc_726932: FStStr var_420
  loc_726935: FLdRfVar var_22E
  loc_726938: FLdPrThis
  loc_726939: VCallAd Control_ID_List1
  loc_72693C: FStAdFunc var_3F0
  loc_72693F: FLdPr var_3F0
  loc_726942:  = Me.ListCount
  loc_726947: FLdI2 var_22E
  loc_72694A: CVarI2 var_404
  loc_72694D: PopAdLdVar
  loc_72694E: ILdRf var_21C
  loc_726951: LitStr " "
  loc_726954: ConcatStr
  loc_726955: FStStrNoPop var_220
  loc_726958: FLdZeroAd var_40C
  loc_72695B: FStStrNoPop var_22C
  loc_72695E: ConcatStr
  loc_72695F: FStStrNoPop var_288
  loc_726962: FLdZeroAd var_410
  loc_726965: FStStrNoPop var_28C
  loc_726968: ConcatStr
  loc_726969: CVarStr var_2AC
  loc_72696C: FLdRfVar var_29C
  loc_72696F: ConcatVar var_2BC
  loc_726973: FLdRfVar var_2CC
  loc_726976: ConcatVar var_2DC
  loc_72697A: FLdZeroAd var_418
  loc_72697D: CVarStr var_33C
  loc_726980: ConcatVar var_34C
  loc_726984: FLdRfVar var_35C
  loc_726987: ConcatVar var_36C
  loc_72698B: FLdZeroAd var_420
  loc_72698E: CVarStr var_3DC
  loc_726991: ConcatVar var_3EC
  loc_726995: CStrVarVal var_3F4
  loc_726999: FLdPrThis
  loc_72699A: VCallAd Control_ID_List1
  loc_72699D: FStAdFunc var_408
  loc_7269A0: FLdPr var_408
  loc_7269A3: Me.AddItem from_stack_1, from_stack_2
  loc_7269A8: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = ""
  loc_7269C5: FFreeAd var_3F0 = ""
  loc_7269CC: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_2AC = "": var_29C = "": var_2BC = "": var_2CC = "": var_30C = "": var_32C = "": var_2DC = "": var_33C = "": var_34C = "": var_35C = "": var_39C = "": var_3AC = "": var_3CC = "": var_36C = "": var_3DC = ""
  loc_726A05: FLdRfVar var_216
  loc_726A08: FLdPrThis
  loc_726A09: VCallAd Control_ID_List1
  loc_726A0C: FStAdFunc var_3F0
  loc_726A0F: FLdPr var_3F0
  loc_726A12:  = Me.ListCount
  loc_726A17: FLdI2 var_216
  loc_726A1A: CVarI2 var_100
  loc_726A1D: PopAdLdVar
  loc_726A1E: LitStr vbNullString
  loc_726A21: FLdPrThis
  loc_726A22: VCallAd Control_ID_List1
  loc_726A25: FStAdFunc var_408
  loc_726A28: FLdPr var_408
  loc_726A2B: Me.AddItem from_stack_1, from_stack_2
  loc_726A30: FFreeAd var_3F0 = ""
  loc_726A37: Branch loc_726CBB
  loc_726A3A: FLdRfVar var_21C
  loc_726A3D: LitVar_Missing var_210
  loc_726A40: LitVar_Missing var_200
  loc_726A43: LitVar_Missing var_1F0
  loc_726A46: LitVar_Missing var_1C0
  loc_726A49: LitVar_Missing var_1A0
  loc_726A4C: LitVar_Missing var_190
  loc_726A4F: LitVar_Missing var_180
  loc_726A52: LitVar_Missing var_150
  loc_726A55: LitVar_Missing var_130
  loc_726A58: LitVar_Missing var_120
  loc_726A5B: LitStr "Usuario:"
  loc_726A5E: FStStrCopy var_214
  loc_726A61: FLdRfVar var_214
  loc_726A64: LitI4 &H1D
  loc_726A69: PopTmpLdAdStr var_234
  loc_726A6C: LitI2_Byte &H4B
  loc_726A6E: PopTmpLdAd2 var_216
  loc_726A71: ImpAdLdRf MemVar_74C7D0
  loc_726A74: NewIfNullPr clsMsg
  loc_726A77: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726A7C: LitI4 1
  loc_726A81: LitI4 1
  loc_726A86: LitVarStr var_274, "@@@@"
  loc_726A8B: FStVarCopyObj var_284
  loc_726A8E: FLdRfVar var_284
  loc_726A91: FLdRfVar var_C6
  loc_726A94: CVarRef
  loc_726A99: ImpAdCallI2 Format$(, )
  loc_726A9E: FStStr var_418
  loc_726AA1: LitI4 &HF
  loc_726AA6: ILdRf var_B4
  loc_726AA9: ImpAdCallI2 Left$(, )
  loc_726AAE: FStStr var_41C
  loc_726AB1: LitVarStr var_2EC, "@"
  loc_726AB6: FStVarCopyObj var_29C
  loc_726AB9: FLdRfVar var_29C
  loc_726ABC: LitI4 &HF
  loc_726AC1: FLdRfVar var_2AC
  loc_726AC4: ImpAdCallFPR4  = String(, )
  loc_726AC9: LitI4 1
  loc_726ACE: LitI4 1
  loc_726AD3: LitVarStr var_2FC, "!"
  loc_726AD8: FLdRfVar var_2AC
  loc_726ADB: ConcatVar var_2BC
  loc_726ADF: FLdZeroAd var_41C
  loc_726AE2: CVarStr var_2CC
  loc_726AE5: ImpAdCallI2 Format$(, )
  loc_726AEA: FStStr var_420
  loc_726AED: LitI4 &HD
  loc_726AF2: ImpAdCallI2 Space$()
  loc_726AF7: FStStr var_464
  loc_726AFA: LitI4 &HC
  loc_726AFF: FLdRfVar var_2DC
  loc_726B02: ImpAdCallFPR4  = Space()
  loc_726B07: LitI4 1
  loc_726B0C: LitI4 1
  loc_726B11: ImpAdLdRf MemVar_74C364
  loc_726B14: CVarRef
  loc_726B19: FLdRfVar var_DC
  loc_726B1C: CVarRef
  loc_726B21: ImpAdCallI2 Format$(, )
  loc_726B26: FStStr var_468
  loc_726B29: LitI4 1
  loc_726B2E: LitI4 1
  loc_726B33: LitVarStr var_38C, "@@@@@@@@@@@"
  loc_726B38: FStVarCopyObj var_34C
  loc_726B3B: FLdRfVar var_34C
  loc_726B3E: FLdZeroAd var_468
  loc_726B41: CVarStr var_33C
  loc_726B44: ImpAdCallI2 Format$(, )
  loc_726B49: FStStr var_46C
  loc_726B4C: LitI4 2
  loc_726B51: FLdRfVar var_39C
  loc_726B54: ImpAdCallFPR4  = Space()
  loc_726B59: LitI4 1
  loc_726B5E: LitI4 1
  loc_726B63: LitVarStr var_404, "#######0.00"
  loc_726B68: FStVarCopyObj var_3CC
  loc_726B6B: FLdRfVar var_3CC
  loc_726B6E: FLdRfVar var_E0
  loc_726B71: CVarRef
  loc_726B76: ImpAdCallI2 Format$(, )
  loc_726B7B: FStStr var_470
  loc_726B7E: LitI4 1
  loc_726B83: LitI4 1
  loc_726B88: LitVarStr var_430, "@@@@@@@@@@@"
  loc_726B8D: FStVarCopyObj var_3EC
  loc_726B90: FLdRfVar var_3EC
  loc_726B93: FLdZeroAd var_470
  loc_726B96: CVarStr var_3DC
  loc_726B99: ImpAdCallI2 Format$(, )
  loc_726B9E: FStStr var_474
  loc_726BA1: FLdRfVar var_22E
  loc_726BA4: FLdPrThis
  loc_726BA5: VCallAd Control_ID_List1
  loc_726BA8: FStAdFunc var_3F0
  loc_726BAB: FLdPr var_3F0
  loc_726BAE:  = Me.ListCount
  loc_726BB3: FLdI2 var_22E
  loc_726BB6: CVarI2 var_460
  loc_726BB9: PopAdLdVar
  loc_726BBA: ILdRf var_21C
  loc_726BBD: LitStr " "
  loc_726BC0: ConcatStr
  loc_726BC1: FStStrNoPop var_220
  loc_726BC4: FLdZeroAd var_418
  loc_726BC7: FStStrNoPop var_22C
  loc_726BCA: ConcatStr
  loc_726BCB: FStStrNoPop var_288
  loc_726BCE: LitStr " _ "
  loc_726BD1: ConcatStr
  loc_726BD2: FStStrNoPop var_28C
  loc_726BD5: FLdZeroAd var_420
  loc_726BD8: FStStrNoPop var_3F4
  loc_726BDB: ConcatStr
  loc_726BDC: FStStrNoPop var_40C
  loc_726BDF: FLdZeroAd var_464
  loc_726BE2: FStStrNoPop var_410
  loc_726BE5: ConcatStr
  loc_726BE6: CVarStr var_30C
  loc_726BE9: FLdRfVar var_2DC
  loc_726BEC: ConcatVar var_32C
  loc_726BF0: FLdZeroAd var_46C
  loc_726BF3: CVarStr var_35C
  loc_726BF6: ConcatVar var_36C
  loc_726BFA: FLdRfVar var_39C
  loc_726BFD: ConcatVar var_3AC
  loc_726C01: FLdZeroAd var_474
  loc_726C04: CVarStr var_440
  loc_726C07: ConcatVar var_450
  loc_726C0B: CStrVarVal var_414
  loc_726C0F: FLdPrThis
  loc_726C10: VCallAd Control_ID_List1
  loc_726C13: FStAdFunc var_408
  loc_726C16: FLdPr var_408
  loc_726C19: Me.AddItem from_stack_1, from_stack_2
  loc_726C1E: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = "": var_464 = "": var_468 = "": var_46C = "": var_470 = ""
  loc_726C45: FFreeAd var_3F0 = ""
  loc_726C4C: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_29C = "": var_2AC = "": var_2CC = "": var_2BC = "": var_30C = "": var_2DC = "": var_33C = "": var_34C = "": var_32C = "": var_35C = "": var_36C = "": var_39C = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3AC = "": var_440 = ""
  loc_726C89: FLdRfVar var_216
  loc_726C8C: FLdPrThis
  loc_726C8D: VCallAd Control_ID_List1
  loc_726C90: FStAdFunc var_3F0
  loc_726C93: FLdPr var_3F0
  loc_726C96:  = Me.ListCount
  loc_726C9B: FLdI2 var_216
  loc_726C9E: CVarI2 var_100
  loc_726CA1: PopAdLdVar
  loc_726CA2: LitStr vbNullString
  loc_726CA5: FLdPrThis
  loc_726CA6: VCallAd Control_ID_List1
  loc_726CA9: FStAdFunc var_408
  loc_726CAC: FLdPr var_408
  loc_726CAF: Me.AddItem from_stack_1, from_stack_2
  loc_726CB4: FFreeAd var_3F0 = ""
  loc_726CBB: ILdRf var_C4
  loc_726CBE: LitI4 -1
  loc_726CC3: NeI4
  loc_726CC4: FLdI2 var_C0
  loc_726CC7: LitI2 800
  loc_726CCA: GtI2
  loc_726CCB: FLdI2 var_C0
  loc_726CCE: LitI2_Byte 0
  loc_726CD0: EqI2
  loc_726CD1: OrI4
  loc_726CD2: AndI4
  loc_726CD3: BranchF loc_726FA1
  loc_726CD6: ILdRf var_C4
  loc_726CD9: LitI4 -1
  loc_726CDE: NeI4
  loc_726CDF: FLdI2 var_C0
  loc_726CE2: LitI2 800
  loc_726CE5: GtI2
  loc_726CE6: FLdI2 var_C0
  loc_726CE9: LitI2_Byte 0
  loc_726CEB: EqI2
  loc_726CEC: OrI4
  loc_726CED: AndI4
  loc_726CEE: BranchF loc_726FA1
  loc_726CF1: FLdRfVar var_21C
  loc_726CF4: LitVar_Missing var_210
  loc_726CF7: LitVar_Missing var_200
  loc_726CFA: LitVar_Missing var_1F0
  loc_726CFD: LitVar_Missing var_1C0
  loc_726D00: LitVar_Missing var_1A0
  loc_726D03: LitVar_Missing var_190
  loc_726D06: LitVar_Missing var_180
  loc_726D09: LitVar_Missing var_150
  loc_726D0C: LitVar_Missing var_130
  loc_726D0F: LitVar_Missing var_120
  loc_726D12: LitStr "Grupo:"
  loc_726D15: FStStrCopy var_214
  loc_726D18: FLdRfVar var_214
  loc_726D1B: LitI4 &H1A
  loc_726D20: PopTmpLdAdStr var_234
  loc_726D23: LitI2_Byte &H4B
  loc_726D25: PopTmpLdAd2 var_216
  loc_726D28: ImpAdLdRf MemVar_74C7D0
  loc_726D2B: NewIfNullPr clsMsg
  loc_726D2E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726D33: LitI4 1
  loc_726D38: LitI4 1
  loc_726D3D: LitVarStr var_274, "@@@"
  loc_726D42: FStVarCopyObj var_284
  loc_726D45: FLdRfVar var_284
  loc_726D48: FLdRfVar var_C0
  loc_726D4B: CVarRef
  loc_726D50: ImpAdCallI2 Format$(, )
  loc_726D55: FStStr var_41C
  loc_726D58: FLdRfVar var_28C
  loc_726D5B: LitVar_Missing var_35C
  loc_726D5E: LitVar_Missing var_34C
  loc_726D61: LitVar_Missing var_33C
  loc_726D64: LitVar_Missing var_32C
  loc_726D67: LitVar_Missing var_30C
  loc_726D6A: LitVar_Missing var_2DC
  loc_726D6D: LitVar_Missing var_2CC
  loc_726D70: LitVar_Missing var_2BC
  loc_726D73: LitVar_Missing var_2AC
  loc_726D76: LitVar_Missing var_29C
  loc_726D79: LitStr " - Compañía:"
  loc_726D7C: FStStrCopy var_288
  loc_726D7F: FLdRfVar var_288
  loc_726D82: LitI4 &H1B
  loc_726D87: PopTmpLdAdStr var_478
  loc_726D8A: LitI2_Byte &H4B
  loc_726D8C: PopTmpLdAd2 var_22E
  loc_726D8F: ImpAdLdRf MemVar_74C7D0
  loc_726D92: NewIfNullPr clsMsg
  loc_726D95: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726D9A: LitI4 1
  loc_726D9F: LitI4 1
  loc_726DA4: LitVarStr var_4A8, "@@@@@"
  loc_726DA9: FStVarCopyObj var_36C
  loc_726DAC: FLdRfVar var_36C
  loc_726DAF: FLdRfVar var_C4
  loc_726DB2: CVarRef
  loc_726DB7: ImpAdCallI2 Format$(, )
  loc_726DBC: FStStr var_420
  loc_726DBF: LitI4 &H10
  loc_726DC4: FLdRfVar var_39C
  loc_726DC7: ImpAdCallFPR4  = Space()
  loc_726DCC: LitI4 &HC
  loc_726DD1: FLdRfVar var_3DC
  loc_726DD4: ImpAdCallFPR4  = Space()
  loc_726DD9: LitI4 1
  loc_726DDE: LitI4 1
  loc_726DE3: ImpAdLdRf MemVar_74C364
  loc_726DE6: CVarRef
  loc_726DEB: FLdRfVar var_D4
  loc_726DEE: CVarRef
  loc_726DF3: ImpAdCallI2 Format$(, )
  loc_726DF8: FStStr var_464
  loc_726DFB: LitI4 1
  loc_726E00: LitI4 1
  loc_726E05: LitVarStr var_4D8, "@@@@@@@@@@@"
  loc_726E0A: FStVarCopyObj var_450
  loc_726E0D: FLdRfVar var_450
  loc_726E10: FLdZeroAd var_464
  loc_726E13: CVarStr var_440
  loc_726E16: ImpAdCallI2 Format$(, )
  loc_726E1B: FStStr var_468
  loc_726E1E: LitI4 2
  loc_726E23: FLdRfVar var_508
  loc_726E26: ImpAdCallFPR4  = Space()
  loc_726E2B: LitI4 1
  loc_726E30: LitI4 1
  loc_726E35: LitVarStr var_538, "#######0.00"
  loc_726E3A: FStVarCopyObj var_548
  loc_726E3D: FLdRfVar var_548
  loc_726E40: FLdRfVar var_D8
  loc_726E43: CVarRef
  loc_726E48: ImpAdCallI2 Format$(, )
  loc_726E4D: FStStr var_46C
  loc_726E50: LitI4 1
  loc_726E55: LitI4 1
  loc_726E5A: LitVarStr var_568, "@@@@@@@@@@@"
  loc_726E5F: FStVarCopyObj var_578
  loc_726E62: FLdRfVar var_578
  loc_726E65: FLdZeroAd var_46C
  loc_726E68: CVarStr var_558
  loc_726E6B: ImpAdCallI2 Format$(, )
  loc_726E70: FStStr var_470
  loc_726E73: FLdRfVar var_59A
  loc_726E76: FLdPrThis
  loc_726E77: VCallAd Control_ID_List1
  loc_726E7A: FStAdFunc var_3F0
  loc_726E7D: FLdPr var_3F0
  loc_726E80:  = Me.ListCount
  loc_726E85: FLdI2 var_59A
  loc_726E88: CVarI2 var_5AC
  loc_726E8B: PopAdLdVar
  loc_726E8C: ILdRf var_21C
  loc_726E8F: LitStr " "
  loc_726E92: ConcatStr
  loc_726E93: FStStrNoPop var_220
  loc_726E96: FLdZeroAd var_41C
  loc_726E99: FStStrNoPop var_22C
  loc_726E9C: ConcatStr
  loc_726E9D: FStStrNoPop var_3F4
  loc_726EA0: ILdRf var_28C
  loc_726EA3: ConcatStr
  loc_726EA4: FStStrNoPop var_40C
  loc_726EA7: LitStr " "
  loc_726EAA: ConcatStr
  loc_726EAB: FStStrNoPop var_410
  loc_726EAE: FLdZeroAd var_420
  loc_726EB1: FStStrNoPop var_414
  loc_726EB4: ConcatStr
  loc_726EB5: CVarStr var_3AC
  loc_726EB8: FLdRfVar var_39C
  loc_726EBB: ConcatVar var_3CC
  loc_726EBF: FLdRfVar var_3DC
  loc_726EC2: ConcatVar var_3EC
  loc_726EC6: FLdZeroAd var_468
  loc_726EC9: CVarStr var_4E8
  loc_726ECC: ConcatVar var_4F8
  loc_726ED0: FLdRfVar var_508
  loc_726ED3: ConcatVar var_518
  loc_726ED7: FLdZeroAd var_470
  loc_726EDA: CVarStr var_588
  loc_726EDD: ConcatVar var_598
  loc_726EE1: CStrVarVal var_418
  loc_726EE5: FLdPrThis
  loc_726EE6: VCallAd Control_ID_List1
  loc_726EE9: FStAdFunc var_408
  loc_726EEC: FLdPr var_408
  loc_726EEF: Me.AddItem from_stack_1, from_stack_2
  loc_726EF4: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_3F4 = "": var_28C = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = "": var_464 = "": var_468 = "": var_46C = ""
  loc_726F19: FFreeAd var_3F0 = ""
  loc_726F20: FFreeVar var_4F8 = "": var_508 = "": var_548 = "": var_558 = "": var_578 = "": var_518 = "": var_588 = "": var_598 = "": var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_30C = "": var_32C = "": var_33C = "": var_34C = "": var_35C = "": var_36C = "": var_3AC = "": var_39C = "": var_3CC = "": var_3DC = "": var_440 = "": var_450 = "": var_3EC = ""
  loc_726F6F: FLdRfVar var_216
  loc_726F72: FLdPrThis
  loc_726F73: VCallAd Control_ID_List1
  loc_726F76: FStAdFunc var_3F0
  loc_726F79: FLdPr var_3F0
  loc_726F7C:  = Me.ListCount
  loc_726F81: FLdI2 var_216
  loc_726F84: CVarI2 var_100
  loc_726F87: PopAdLdVar
  loc_726F88: LitStr vbNullString
  loc_726F8B: FLdPrThis
  loc_726F8C: VCallAd Control_ID_List1
  loc_726F8F: FStAdFunc var_408
  loc_726F92: FLdPr var_408
  loc_726F95: Me.AddItem from_stack_1, from_stack_2
  loc_726F9A: FFreeAd var_3F0 = ""
  loc_726FA1: FLdI2 var_C0
  loc_726FA4: LitI2_Byte &HFF
  loc_726FA6: NeI2
  loc_726FA7: BranchF loc_7273A1
  loc_726FAA: FLdI2 var_C0
  loc_726FAD: LitI2 800
  loc_726FB0: GtI2
  loc_726FB1: FLdI2 var_C0
  loc_726FB4: LitI2_Byte 0
  loc_726FB6: EqI2
  loc_726FB7: OrI4
  loc_726FB8: BranchF loc_727199
  loc_726FBB: FLdRfVar var_21C
  loc_726FBE: LitVar_Missing var_210
  loc_726FC1: LitVar_Missing var_200
  loc_726FC4: LitVar_Missing var_1F0
  loc_726FC7: LitVar_Missing var_1C0
  loc_726FCA: LitVar_Missing var_1A0
  loc_726FCD: LitVar_Missing var_190
  loc_726FD0: LitVar_Missing var_180
  loc_726FD3: LitVar_Missing var_150
  loc_726FD6: LitVar_Missing var_130
  loc_726FD9: LitVar_Missing var_120
  loc_726FDC: LitStr "Grupo:"
  loc_726FDF: FStStrCopy var_214
  loc_726FE2: FLdRfVar var_214
  loc_726FE5: LitI4 &H1A
  loc_726FEA: PopTmpLdAdStr var_234
  loc_726FED: LitI2_Byte &H4B
  loc_726FEF: PopTmpLdAd2 var_216
  loc_726FF2: ImpAdLdRf MemVar_74C7D0
  loc_726FF5: NewIfNullPr clsMsg
  loc_726FF8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_726FFD: LitI4 1
  loc_727002: LitI4 1
  loc_727007: LitVarStr var_274, "@@@"
  loc_72700C: FStVarCopyObj var_284
  loc_72700F: FLdRfVar var_284
  loc_727012: FLdRfVar var_C0
  loc_727015: CVarRef
  loc_72701A: ImpAdCallI2 Format$(, )
  loc_72701F: FStStr var_28C
  loc_727022: LitI4 &H22
  loc_727027: FLdRfVar var_29C
  loc_72702A: ImpAdCallFPR4  = Space()
  loc_72702F: LitI4 &HC
  loc_727034: FLdRfVar var_2CC
  loc_727037: ImpAdCallFPR4  = Space()
  loc_72703C: LitI4 1
  loc_727041: LitI4 1
  loc_727046: ImpAdLdRf MemVar_74C364
  loc_727049: CVarRef
  loc_72704E: FLdRfVar var_CC
  loc_727051: CVarRef
  loc_727056: ImpAdCallI2 Format$(, )
  loc_72705B: FStStr var_3F4
  loc_72705E: LitI4 1
  loc_727063: LitI4 1
  loc_727068: LitVarStr var_31C, "@@@@@@@@@@@"
  loc_72706D: FStVarCopyObj var_32C
  loc_727070: FLdRfVar var_32C
  loc_727073: FLdZeroAd var_3F4
  loc_727076: CVarStr var_30C
  loc_727079: ImpAdCallI2 Format$(, )
  loc_72707E: FStStr var_40C
  loc_727081: LitI4 2
  loc_727086: FLdRfVar var_35C
  loc_727089: ImpAdCallFPR4  = Space()
  loc_72708E: LitI4 1
  loc_727093: LitI4 1
  loc_727098: LitVarStr var_38C, "#######0.00"
  loc_72709D: FStVarCopyObj var_39C
  loc_7270A0: FLdRfVar var_39C
  loc_7270A3: FLdRfVar var_D0
  loc_7270A6: CVarRef
  loc_7270AB: ImpAdCallI2 Format$(, )
  loc_7270B0: FStStr var_410
  loc_7270B3: LitI4 1
  loc_7270B8: LitI4 1
  loc_7270BD: LitVarStr var_3BC, "@@@@@@@@@@@"
  loc_7270C2: FStVarCopyObj var_3CC
  loc_7270C5: FLdRfVar var_3CC
  loc_7270C8: FLdZeroAd var_410
  loc_7270CB: CVarStr var_3AC
  loc_7270CE: ImpAdCallI2 Format$(, )
  loc_7270D3: FStStr var_414
  loc_7270D6: FLdRfVar var_22E
  loc_7270D9: FLdPrThis
  loc_7270DA: VCallAd Control_ID_List1
  loc_7270DD: FStAdFunc var_3F0
  loc_7270E0: FLdPr var_3F0
  loc_7270E3:  = Me.ListCount
  loc_7270E8: FLdI2 var_22E
  loc_7270EB: CVarI2 var_404
  loc_7270EE: PopAdLdVar
  loc_7270EF: ILdRf var_21C
  loc_7270F2: LitStr " "
  loc_7270F5: ConcatStr
  loc_7270F6: FStStrNoPop var_220
  loc_7270F9: FLdZeroAd var_28C
  loc_7270FC: FStStrNoPop var_22C
  loc_7270FF: ConcatStr
  loc_727100: CVarStr var_2AC
  loc_727103: FLdRfVar var_29C
  loc_727106: ConcatVar var_2BC
  loc_72710A: FLdRfVar var_2CC
  loc_72710D: ConcatVar var_2DC
  loc_727111: FLdZeroAd var_40C
  loc_727114: CVarStr var_33C
  loc_727117: ConcatVar var_34C
  loc_72711B: FLdRfVar var_35C
  loc_72711E: ConcatVar var_36C
  loc_727122: FLdZeroAd var_414
  loc_727125: CVarStr var_3DC
  loc_727128: ConcatVar var_3EC
  loc_72712C: CStrVarVal var_288
  loc_727130: FLdPrThis
  loc_727131: VCallAd Control_ID_List1
  loc_727134: FStAdFunc var_408
  loc_727137: FLdPr var_408
  loc_72713A: Me.AddItem from_stack_1, from_stack_2
  loc_72713F: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = "": var_3F4 = "": var_40C = "": var_410 = ""
  loc_727156: FFreeAd var_3F0 = ""
  loc_72715D: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_284 = "": var_2AC = "": var_29C = "": var_2BC = "": var_2CC = "": var_30C = "": var_32C = "": var_2DC = "": var_33C = "": var_34C = "": var_35C = "": var_39C = "": var_3AC = "": var_3CC = "": var_36C = "": var_3DC = ""
  loc_727196: Branch loc_72733D
  loc_727199: FLdRfVar var_21C
  loc_72719C: LitVar_Missing var_210
  loc_72719F: LitVar_Missing var_200
  loc_7271A2: LitVar_Missing var_1F0
  loc_7271A5: LitVar_Missing var_1C0
  loc_7271A8: LitVar_Missing var_1A0
  loc_7271AB: LitVar_Missing var_190
  loc_7271AE: LitVar_Missing var_180
  loc_7271B1: LitVar_Missing var_150
  loc_7271B4: LitVar_Missing var_130
  loc_7271B7: LitVar_Missing var_120
  loc_7271BA: LitStr "Estacíon:"
  loc_7271BD: FStStrCopy var_214
  loc_7271C0: FLdRfVar var_214
  loc_7271C3: LitI4 &H1C
  loc_7271C8: PopTmpLdAdStr var_234
  loc_7271CB: LitI2_Byte &H4B
  loc_7271CD: PopTmpLdAd2 var_216
  loc_7271D0: ImpAdLdRf MemVar_74C7D0
  loc_7271D3: NewIfNullPr clsMsg
  loc_7271D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7271DB: LitI4 &H22
  loc_7271E0: FLdRfVar var_284
  loc_7271E3: ImpAdCallFPR4  = Space()
  loc_7271E8: LitI4 &HC
  loc_7271ED: FLdRfVar var_2BC
  loc_7271F0: ImpAdCallFPR4  = Space()
  loc_7271F5: LitI4 1
  loc_7271FA: LitI4 1
  loc_7271FF: ImpAdLdRf MemVar_74C364
  loc_727202: CVarRef
  loc_727207: FLdRfVar var_CC
  loc_72720A: CVarRef
  loc_72720F: ImpAdCallI2 Format$(, )
  loc_727214: FStStr var_22C
  loc_727217: LitI4 1
  loc_72721C: LitI4 1
  loc_727221: LitVarStr var_2EC, "@@@@@@@@@@@"
  loc_727226: FStVarCopyObj var_30C
  loc_727229: FLdRfVar var_30C
  loc_72722C: FLdZeroAd var_22C
  loc_72722F: CVarStr var_2DC
  loc_727232: ImpAdCallI2 Format$(, )
  loc_727237: FStStr var_288
  loc_72723A: LitI4 2
  loc_72723F: FLdRfVar var_34C
  loc_727242: ImpAdCallFPR4  = Space()
  loc_727247: LitI4 1
  loc_72724C: LitI4 1
  loc_727251: LitVarStr var_31C, "#######0.00"
  loc_727256: FStVarCopyObj var_36C
  loc_727259: FLdRfVar var_36C
  loc_72725C: FLdRfVar var_D0
  loc_72725F: CVarRef
  loc_727264: ImpAdCallI2 Format$(, )
  loc_727269: FStStr var_28C
  loc_72726C: LitI4 1
  loc_727271: LitI4 1
  loc_727276: LitVarStr var_37C, "@@@@@@@@@@@"
  loc_72727B: FStVarCopyObj var_3AC
  loc_72727E: FLdRfVar var_3AC
  loc_727281: FLdZeroAd var_28C
  loc_727284: CVarStr var_39C
  loc_727287: ImpAdCallI2 Format$(, )
  loc_72728C: FStStr var_3F4
  loc_72728F: FLdRfVar var_22E
  loc_727292: FLdPrThis
  loc_727293: VCallAd Control_ID_List1
  loc_727296: FStAdFunc var_3F0
  loc_727299: FLdPr var_3F0
  loc_72729C:  = Me.ListCount
  loc_7272A1: FLdI2 var_22E
  loc_7272A4: CVarI2 var_38C
  loc_7272A7: PopAdLdVar
  loc_7272A8: ILdRf var_21C
  loc_7272AB: LitStr " "
  loc_7272AE: ConcatStr
  loc_7272AF: CVarStr var_29C
  loc_7272B2: FLdRfVar var_284
  loc_7272B5: ConcatVar var_2AC
  loc_7272B9: FLdRfVar var_2BC
  loc_7272BC: ConcatVar var_2CC
  loc_7272C0: FLdZeroAd var_288
  loc_7272C3: CVarStr var_32C
  loc_7272C6: ConcatVar var_33C
  loc_7272CA: FLdRfVar var_34C
  loc_7272CD: ConcatVar var_35C
  loc_7272D1: FLdZeroAd var_3F4
  loc_7272D4: CVarStr var_3CC
  loc_7272D7: ConcatVar var_3DC
  loc_7272DB: CStrVarVal var_220
  loc_7272DF: FLdPrThis
  loc_7272E0: VCallAd Control_ID_List1
  loc_7272E3: FStAdFunc var_408
  loc_7272E6: FLdPr var_408
  loc_7272E9: Me.AddItem from_stack_1, from_stack_2
  loc_7272EE: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = ""
  loc_7272FF: FFreeAd var_3F0 = ""
  loc_727306: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_29C = "": var_284 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_30C = "": var_2CC = "": var_32C = "": var_33C = "": var_34C = "": var_36C = "": var_39C = "": var_3AC = "": var_35C = "": var_3CC = ""
  loc_72733D: FLdRfVar var_216
  loc_727340: FLdPrThis
  loc_727341: VCallAd Control_ID_List1
  loc_727344: FStAdFunc var_3F0
  loc_727347: FLdPr var_3F0
  loc_72734A:  = Me.ListCount
  loc_72734F: FLdI2 var_216
  loc_727352: CVarI2 var_100
  loc_727355: PopAdLdVar
  loc_727356: LitStr vbNullString
  loc_727359: FLdPrThis
  loc_72735A: VCallAd Control_ID_List1
  loc_72735D: FStAdFunc var_408
  loc_727360: FLdPr var_408
  loc_727363: Me.AddItem from_stack_1, from_stack_2
  loc_727368: FFreeAd var_3F0 = ""
  loc_72736F: FLdRfVar var_216
  loc_727372: FLdPrThis
  loc_727373: VCallAd Control_ID_List1
  loc_727376: FStAdFunc var_3F0
  loc_727379: FLdPr var_3F0
  loc_72737C:  = Me.ListCount
  loc_727381: FLdI2 var_216
  loc_727384: CVarI2 var_100
  loc_727387: PopAdLdVar
  loc_727388: LitStr vbNullString
  loc_72738B: FLdPrThis
  loc_72738C: VCallAd Control_ID_List1
  loc_72738F: FStAdFunc var_408
  loc_727392: FLdPr var_408
  loc_727395: Me.AddItem from_stack_1, from_stack_2
  loc_72739A: FFreeAd var_3F0 = ""
  loc_7273A1: FLdRfVar var_216
  loc_7273A4: FLdPrThis
  loc_7273A5: VCallAd Control_ID_List1
  loc_7273A8: FStAdFunc var_3F0
  loc_7273AB: FLdPr var_3F0
  loc_7273AE:  = Me.ListCount
  loc_7273B3: FLdI2 var_216
  loc_7273B6: CVarI2 var_100
  loc_7273B9: PopAdLdVar
  loc_7273BA: LitStr vbNullString
  loc_7273BD: FLdPrThis
  loc_7273BE: VCallAd Control_ID_List1
  loc_7273C1: FStAdFunc var_408
  loc_7273C4: FLdPr var_408
  loc_7273C7: Me.AddItem from_stack_1, from_stack_2
  loc_7273CC: FFreeAd var_3F0 = ""
  loc_7273D3: FLdRfVar var_21C
  loc_7273D6: LitVar_Missing var_210
  loc_7273D9: LitVar_Missing var_200
  loc_7273DC: LitVar_Missing var_1F0
  loc_7273DF: LitVar_Missing var_1C0
  loc_7273E2: LitVar_Missing var_1A0
  loc_7273E5: LitVar_Missing var_190
  loc_7273E8: LitVar_Missing var_180
  loc_7273EB: LitVar_Missing var_150
  loc_7273EE: LitVar_Missing var_130
  loc_7273F1: LitVar_Missing var_120
  loc_7273F4: LitStr "Totales:"
  loc_7273F7: FStStrCopy var_214
  loc_7273FA: FLdRfVar var_214
  loc_7273FD: LitI4 &H1E
  loc_727402: PopTmpLdAdStr var_234
  loc_727405: LitI2_Byte &H4B
  loc_727407: PopTmpLdAd2 var_216
  loc_72740A: ImpAdLdRf MemVar_74C7D0
  loc_72740D: NewIfNullPr clsMsg
  loc_727410: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_727415: LitI4 &H23
  loc_72741A: FLdRfVar var_284
  loc_72741D: ImpAdCallFPR4  = Space()
  loc_727422: LitI4 &HC
  loc_727427: FLdRfVar var_2BC
  loc_72742A: ImpAdCallFPR4  = Space()
  loc_72742F: LitI4 1
  loc_727434: LitI4 1
  loc_727439: ImpAdLdRf MemVar_74C364
  loc_72743C: CVarRef
  loc_727441: FLdRfVar var_E4
  loc_727444: CVarRef
  loc_727449: ImpAdCallI2 Format$(, )
  loc_72744E: FStStr var_22C
  loc_727451: LitI4 1
  loc_727456: LitI4 1
  loc_72745B: LitVarStr var_2EC, "@@@@@@@@@@@"
  loc_727460: FStVarCopyObj var_30C
  loc_727463: FLdRfVar var_30C
  loc_727466: FLdZeroAd var_22C
  loc_727469: CVarStr var_2DC
  loc_72746C: ImpAdCallI2 Format$(, )
  loc_727471: FStStr var_288
  loc_727474: LitI4 2
  loc_727479: FLdRfVar var_34C
  loc_72747C: ImpAdCallFPR4  = Space()
  loc_727481: LitI4 1
  loc_727486: LitI4 1
  loc_72748B: LitVarStr var_31C, "#######0.00"
  loc_727490: FStVarCopyObj var_36C
  loc_727493: FLdRfVar var_36C
  loc_727496: FLdRfVar var_E8
  loc_727499: CVarRef
  loc_72749E: ImpAdCallI2 Format$(, )
  loc_7274A3: FStStr var_28C
  loc_7274A6: LitI4 1
  loc_7274AB: LitI4 1
  loc_7274B0: LitVarStr var_37C, "@@@@@@@@@@@"
  loc_7274B5: FStVarCopyObj var_3AC
  loc_7274B8: FLdRfVar var_3AC
  loc_7274BB: FLdZeroAd var_28C
  loc_7274BE: CVarStr var_39C
  loc_7274C1: ImpAdCallI2 Format$(, )
  loc_7274C6: FStStr var_3F4
  loc_7274C9: FLdRfVar var_22E
  loc_7274CC: FLdPrThis
  loc_7274CD: VCallAd Control_ID_List1
  loc_7274D0: FStAdFunc var_3F0
  loc_7274D3: FLdPr var_3F0
  loc_7274D6:  = Me.ListCount
  loc_7274DB: FLdI2 var_22E
  loc_7274DE: CVarI2 var_38C
  loc_7274E1: PopAdLdVar
  loc_7274E2: ILdRf var_21C
  loc_7274E5: LitStr " "
  loc_7274E8: ConcatStr
  loc_7274E9: CVarStr var_29C
  loc_7274EC: FLdRfVar var_284
  loc_7274EF: ConcatVar var_2AC
  loc_7274F3: FLdRfVar var_2BC
  loc_7274F6: ConcatVar var_2CC
  loc_7274FA: FLdZeroAd var_288
  loc_7274FD: CVarStr var_32C
  loc_727500: ConcatVar var_33C
  loc_727504: FLdRfVar var_34C
  loc_727507: ConcatVar var_35C
  loc_72750B: FLdZeroAd var_3F4
  loc_72750E: CVarStr var_3CC
  loc_727511: ConcatVar var_3DC
  loc_727515: CStrVarVal var_220
  loc_727519: FLdPrThis
  loc_72751A: VCallAd Control_ID_List1
  loc_72751D: FStAdFunc var_408
  loc_727520: FLdPr var_408
  loc_727523: Me.AddItem from_stack_1, from_stack_2
  loc_727528: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = "": var_288 = "": var_28C = ""
  loc_727539: FFreeAd var_3F0 = ""
  loc_727540: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_29C = "": var_284 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_30C = "": var_2CC = "": var_32C = "": var_33C = "": var_34C = "": var_36C = "": var_39C = "": var_3AC = "": var_35C = "": var_3CC = ""
  loc_727577: FLdRfVar var_216
  loc_72757A: FLdPrThis
  loc_72757B: VCallAd Control_ID_List1
  loc_72757E: FStAdFunc var_3F0
  loc_727581: FLdPr var_3F0
  loc_727584:  = Me.ListCount
  loc_727589: FLdI2 var_216
  loc_72758C: CVarI2 var_100
  loc_72758F: PopAdLdVar
  loc_727590: LitStr vbNullString
  loc_727593: FLdPrThis
  loc_727594: VCallAd Control_ID_List1
  loc_727597: FStAdFunc var_408
  loc_72759A: FLdPr var_408
  loc_72759D: Me.AddItem from_stack_1, from_stack_2
  loc_7275A2: FFreeAd var_3F0 = ""
  loc_7275A9: FLdRfVar var_216
  loc_7275AC: FLdPrThis
  loc_7275AD: VCallAd Control_ID_List1
  loc_7275B0: FStAdFunc var_3F0
  loc_7275B3: FLdPr var_3F0
  loc_7275B6:  = Me.ListCount
  loc_7275BB: FLdI2 var_216
  loc_7275BE: CVarI2 var_100
  loc_7275C1: PopAdLdVar
  loc_7275C2: LitStr vbNullString
  loc_7275C5: FLdPrThis
  loc_7275C6: VCallAd Control_ID_List1
  loc_7275C9: FStAdFunc var_408
  loc_7275CC: FLdPr var_408
  loc_7275CF: Me.AddItem from_stack_1, from_stack_2
  loc_7275D4: FFreeAd var_3F0 = ""
  loc_7275DB: FLdRfVar var_21C
  loc_7275DE: LitVar_Missing var_210
  loc_7275E1: LitVar_Missing var_200
  loc_7275E4: LitVar_Missing var_1F0
  loc_7275E7: LitVar_Missing var_1C0
  loc_7275EA: LitVar_Missing var_1A0
  loc_7275ED: LitVar_Missing var_190
  loc_7275F0: LitVar_Missing var_180
  loc_7275F3: LitVar_Missing var_150
  loc_7275F6: LitVar_Missing var_130
  loc_7275F9: LitVar_Missing var_120
  loc_7275FC: LitStr "Cantidad de despachos:"
  loc_7275FF: FStStrCopy var_214
  loc_727602: FLdRfVar var_214
  loc_727605: LitI4 &H1F
  loc_72760A: PopTmpLdAdStr var_234
  loc_72760D: LitI2_Byte &H4B
  loc_72760F: PopTmpLdAd2 var_216
  loc_727612: ImpAdLdRf MemVar_74C7D0
  loc_727615: NewIfNullPr clsMsg
  loc_727618: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72761D: FLdRfVar var_22E
  loc_727620: FLdPrThis
  loc_727621: VCallAd Control_ID_List1
  loc_727624: FStAdFunc var_3F0
  loc_727627: FLdPr var_3F0
  loc_72762A:  = Me.ListCount
  loc_72762F: FLdI2 var_22E
  loc_727632: CVarI2 var_264
  loc_727635: PopAdLdVar
  loc_727636: ILdRf var_21C
  loc_727639: LitStr " "
  loc_72763C: ConcatStr
  loc_72763D: FStStrNoPop var_220
  loc_727640: ILdRf var_88
  loc_727643: FnLenStr
  loc_727644: LitI4 &H4A
  loc_727649: IDvI4
  loc_72764A: CStrI4
  loc_72764C: FStStrNoPop var_22C
  loc_72764F: ConcatStr
  loc_727650: FStStrNoPop var_288
  loc_727653: FLdPrThis
  loc_727654: VCallAd Control_ID_List1
  loc_727657: FStAdFunc var_408
  loc_72765A: FLdPr var_408
  loc_72765D: Me.AddItem from_stack_1, from_stack_2
  loc_727662: FFreeStr var_214 = "": var_21C = "": var_220 = "": var_22C = ""
  loc_72766F: FFreeAd var_3F0 = ""
  loc_727676: FFreeVar var_120 = "": var_130 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72768D: LitI4 1
  loc_727692: FStR4 var_8C
  loc_727695: ExitProcHresult
  loc_727696: AryLock
End Function

Private Function Proc_129_11_6EACEC() '6EACEC
  'Data Table: 43A8EC
  loc_6E9FF0: ZeroRetValVar
  loc_6E9FF2: LitVarI4
  loc_6E9FFA: FStVar var_94
  loc_6E9FFE: FLdPrThis
  loc_6E9FFF: VCallAd Control_ID_FechaInicial
  loc_6EA002: FStAdFunc var_A8
  loc_6EA005: FLdPr var_A8
  loc_6EA008: LateIdLdVar var_B8 DispID_22 0
  loc_6EA00F: PopAd
  loc_6EA011: LitVarI2 var_CC, 2
  loc_6EA016: LitI4 1
  loc_6EA01B: FLdRfVar var_B8
  loc_6EA01E: CStrVarTmp
  loc_6EA01F: FStStrNoPop var_BC
  loc_6EA022: ImpAdCallI2 Mid$(, , )
  loc_6EA027: FStStr var_14C
  loc_6EA02A: FLdPrThis
  loc_6EA02B: VCallAd Control_ID_FechaInicial
  loc_6EA02E: FStAdFunc var_D0
  loc_6EA031: FLdPr var_D0
  loc_6EA034: LateIdLdVar var_E0 DispID_22 0
  loc_6EA03B: PopAd
  loc_6EA03D: LitVarI2 var_104, 2
  loc_6EA042: LitI4 4
  loc_6EA047: FLdRfVar var_E0
  loc_6EA04A: CStrVarTmp
  loc_6EA04B: FStStrNoPop var_E4
  loc_6EA04E: ImpAdCallI2 Mid$(, , )
  loc_6EA053: FStStr var_150
  loc_6EA056: FLdPrThis
  loc_6EA057: VCallAd Control_ID_FechaInicial
  loc_6EA05A: FStAdFunc var_108
  loc_6EA05D: FLdPr var_108
  loc_6EA060: LateIdLdVar var_118 DispID_22 0
  loc_6EA067: PopAd
  loc_6EA069: LitVarI2 var_13C, 4
  loc_6EA06E: LitI4 7
  loc_6EA073: FLdRfVar var_118
  loc_6EA076: CStrVarTmp
  loc_6EA077: FStStrNoPop var_11C
  loc_6EA07A: ImpAdCallI2 Mid$(, , )
  loc_6EA07F: FStStrNoPop var_148
  loc_6EA082: CI2Str
  loc_6EA084: FLdZeroAd var_150
  loc_6EA087: FStStrNoPop var_144
  loc_6EA08A: CI2Str
  loc_6EA08C: FLdZeroAd var_14C
  loc_6EA08F: FStStrNoPop var_140
  loc_6EA092: CI2Str
  loc_6EA094: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6EA099: NotI4
  loc_6EA09A: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6EA0AD: FFreeAd var_A8 = "": var_D0 = ""
  loc_6EA0B6: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6EA0C5: BranchF loc_6EA1A8
  loc_6EA0C8: FLdRfVar var_E4
  loc_6EA0CB: LitVar_Missing var_208
  loc_6EA0CE: LitVar_Missing var_1E8
  loc_6EA0D1: LitVar_Missing var_1C8
  loc_6EA0D4: LitVar_Missing var_1A8
  loc_6EA0D7: LitVar_Missing var_13C
  loc_6EA0DA: LitVar_Missing var_118
  loc_6EA0DD: LitVar_Missing var_104
  loc_6EA0E0: LitVar_Missing var_E0
  loc_6EA0E3: LitVar_Missing var_CC
  loc_6EA0E6: LitVar_Missing var_B8
  loc_6EA0E9: LitStr "Debe ingresar correctamente la fecha inicial. Verifique por favor."
  loc_6EA0EC: FStStrCopy var_BC
  loc_6EA0EF: FLdRfVar var_BC
  loc_6EA0F2: LitI4 &H20
  loc_6EA0F7: PopTmpLdAdStr var_158
  loc_6EA0FA: LitI2_Byte &H4B
  loc_6EA0FC: PopTmpLdAd2 var_152
  loc_6EA0FF: ImpAdLdRf MemVar_74C7D0
  loc_6EA102: NewIfNullPr clsMsg
  loc_6EA105: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA10A: FLdRfVar var_140
  loc_6EA10D: LitVar_Missing var_350
  loc_6EA110: LitVar_Missing var_330
  loc_6EA113: LitVar_Missing var_310
  loc_6EA116: LitVar_Missing var_2F0
  loc_6EA119: LitVar_Missing var_2D0
  loc_6EA11C: LitVar_Missing var_2B0
  loc_6EA11F: LitVar_Missing var_290
  loc_6EA122: LitVar_Missing var_270
  loc_6EA125: LitVar_Missing var_250
  loc_6EA128: LitVar_Missing var_230
  loc_6EA12B: LitStr "Verificación de datos"
  loc_6EA12E: FStStrCopy var_11C
  loc_6EA131: FLdRfVar var_11C
  loc_6EA134: LitI4 &H21
  loc_6EA139: PopTmpLdAdStr var_210
  loc_6EA13C: LitI2_Byte &H4B
  loc_6EA13E: PopTmpLdAd2 var_20A
  loc_6EA141: ImpAdLdRf MemVar_74C7D0
  loc_6EA144: NewIfNullPr clsMsg
  loc_6EA147: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA14C: LitVar_Missing var_3B0
  loc_6EA14F: LitVar_Missing var_390
  loc_6EA152: FLdZeroAd var_140
  loc_6EA155: CVarStr var_370
  loc_6EA158: LitI4 &H40
  loc_6EA15D: FLdZeroAd var_E4
  loc_6EA160: CVarStr var_360
  loc_6EA163: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA168: FFreeStr var_BC = ""
  loc_6EA16F: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA1A2: ExitProcCbHresult
  loc_6EA1A8: FLdPrThis
  loc_6EA1A9: VCallAd Control_ID_FechaFinal
  loc_6EA1AC: FStAdFunc var_A8
  loc_6EA1AF: FLdPr var_A8
  loc_6EA1B2: LateIdLdVar var_B8 DispID_22 0
  loc_6EA1B9: PopAd
  loc_6EA1BB: LitVarI2 var_CC, 2
  loc_6EA1C0: LitI4 1
  loc_6EA1C5: FLdRfVar var_B8
  loc_6EA1C8: CStrVarTmp
  loc_6EA1C9: FStStrNoPop var_BC
  loc_6EA1CC: ImpAdCallI2 Mid$(, , )
  loc_6EA1D1: FStStr var_14C
  loc_6EA1D4: FLdPrThis
  loc_6EA1D5: VCallAd Control_ID_FechaFinal
  loc_6EA1D8: FStAdFunc var_D0
  loc_6EA1DB: FLdPr var_D0
  loc_6EA1DE: LateIdLdVar var_E0 DispID_22 0
  loc_6EA1E5: PopAd
  loc_6EA1E7: LitVarI2 var_104, 2
  loc_6EA1EC: LitI4 4
  loc_6EA1F1: FLdRfVar var_E0
  loc_6EA1F4: CStrVarTmp
  loc_6EA1F5: FStStrNoPop var_E4
  loc_6EA1F8: ImpAdCallI2 Mid$(, , )
  loc_6EA1FD: FStStr var_150
  loc_6EA200: FLdPrThis
  loc_6EA201: VCallAd Control_ID_FechaFinal
  loc_6EA204: FStAdFunc var_108
  loc_6EA207: FLdPr var_108
  loc_6EA20A: LateIdLdVar var_118 DispID_22 0
  loc_6EA211: PopAd
  loc_6EA213: LitVarI2 var_13C, 4
  loc_6EA218: LitI4 7
  loc_6EA21D: FLdRfVar var_118
  loc_6EA220: CStrVarTmp
  loc_6EA221: FStStrNoPop var_11C
  loc_6EA224: ImpAdCallI2 Mid$(, , )
  loc_6EA229: FStStrNoPop var_148
  loc_6EA22C: CI2Str
  loc_6EA22E: FLdZeroAd var_150
  loc_6EA231: FStStrNoPop var_144
  loc_6EA234: CI2Str
  loc_6EA236: FLdZeroAd var_14C
  loc_6EA239: FStStrNoPop var_140
  loc_6EA23C: CI2Str
  loc_6EA23E: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6EA243: NotI4
  loc_6EA244: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6EA257: FFreeAd var_A8 = "": var_D0 = ""
  loc_6EA260: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6EA26F: BranchF loc_6EA352
  loc_6EA272: FLdRfVar var_E4
  loc_6EA275: LitVar_Missing var_208
  loc_6EA278: LitVar_Missing var_1E8
  loc_6EA27B: LitVar_Missing var_1C8
  loc_6EA27E: LitVar_Missing var_1A8
  loc_6EA281: LitVar_Missing var_13C
  loc_6EA284: LitVar_Missing var_118
  loc_6EA287: LitVar_Missing var_104
  loc_6EA28A: LitVar_Missing var_E0
  loc_6EA28D: LitVar_Missing var_CC
  loc_6EA290: LitVar_Missing var_B8
  loc_6EA293: LitStr "Debe ingresar correctamente la fecha final. Verifique por favor."
  loc_6EA296: FStStrCopy var_BC
  loc_6EA299: FLdRfVar var_BC
  loc_6EA29C: LitI4 &H22
  loc_6EA2A1: PopTmpLdAdStr var_158
  loc_6EA2A4: LitI2_Byte &H4B
  loc_6EA2A6: PopTmpLdAd2 var_152
  loc_6EA2A9: ImpAdLdRf MemVar_74C7D0
  loc_6EA2AC: NewIfNullPr clsMsg
  loc_6EA2AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA2B4: FLdRfVar var_140
  loc_6EA2B7: LitVar_Missing var_350
  loc_6EA2BA: LitVar_Missing var_330
  loc_6EA2BD: LitVar_Missing var_310
  loc_6EA2C0: LitVar_Missing var_2F0
  loc_6EA2C3: LitVar_Missing var_2D0
  loc_6EA2C6: LitVar_Missing var_2B0
  loc_6EA2C9: LitVar_Missing var_290
  loc_6EA2CC: LitVar_Missing var_270
  loc_6EA2CF: LitVar_Missing var_250
  loc_6EA2D2: LitVar_Missing var_230
  loc_6EA2D5: LitStr "Verificación de datos"
  loc_6EA2D8: FStStrCopy var_11C
  loc_6EA2DB: FLdRfVar var_11C
  loc_6EA2DE: LitI4 &H21
  loc_6EA2E3: PopTmpLdAdStr var_210
  loc_6EA2E6: LitI2_Byte &H4B
  loc_6EA2E8: PopTmpLdAd2 var_20A
  loc_6EA2EB: ImpAdLdRf MemVar_74C7D0
  loc_6EA2EE: NewIfNullPr clsMsg
  loc_6EA2F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA2F6: LitVar_Missing var_3B0
  loc_6EA2F9: LitVar_Missing var_390
  loc_6EA2FC: FLdZeroAd var_140
  loc_6EA2FF: CVarStr var_370
  loc_6EA302: LitI4 &H40
  loc_6EA307: FLdZeroAd var_E4
  loc_6EA30A: CVarStr var_360
  loc_6EA30D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA312: FFreeStr var_BC = ""
  loc_6EA319: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA34C: ExitProcCbHresult
  loc_6EA352: FLdPrThis
  loc_6EA353: VCallAd Control_ID_HoraInicial
  loc_6EA356: FStAdFunc var_A8
  loc_6EA359: FLdPr var_A8
  loc_6EA35C: LateIdLdVar var_B8 DispID_22 0
  loc_6EA363: CStrVarTmp
  loc_6EA364: CVarStr var_CC
  loc_6EA367: ImpAdCallI2 Proc_53_13_638184()
  loc_6EA36C: NotI4
  loc_6EA36D: FFree1Ad var_A8
  loc_6EA370: FFreeVar var_B8 = ""
  loc_6EA377: BranchF loc_6EA45A
  loc_6EA37A: FLdRfVar var_E4
  loc_6EA37D: LitVar_Missing var_208
  loc_6EA380: LitVar_Missing var_1E8
  loc_6EA383: LitVar_Missing var_1C8
  loc_6EA386: LitVar_Missing var_1A8
  loc_6EA389: LitVar_Missing var_13C
  loc_6EA38C: LitVar_Missing var_118
  loc_6EA38F: LitVar_Missing var_104
  loc_6EA392: LitVar_Missing var_E0
  loc_6EA395: LitVar_Missing var_CC
  loc_6EA398: LitVar_Missing var_B8
  loc_6EA39B: LitStr "Debe ingresar correctamente la hora inicial. Verifique por favor."
  loc_6EA39E: FStStrCopy var_BC
  loc_6EA3A1: FLdRfVar var_BC
  loc_6EA3A4: LitI4 &H23
  loc_6EA3A9: PopTmpLdAdStr var_158
  loc_6EA3AC: LitI2_Byte &H4B
  loc_6EA3AE: PopTmpLdAd2 var_152
  loc_6EA3B1: ImpAdLdRf MemVar_74C7D0
  loc_6EA3B4: NewIfNullPr clsMsg
  loc_6EA3B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA3BC: FLdRfVar var_140
  loc_6EA3BF: LitVar_Missing var_350
  loc_6EA3C2: LitVar_Missing var_330
  loc_6EA3C5: LitVar_Missing var_310
  loc_6EA3C8: LitVar_Missing var_2F0
  loc_6EA3CB: LitVar_Missing var_2D0
  loc_6EA3CE: LitVar_Missing var_2B0
  loc_6EA3D1: LitVar_Missing var_290
  loc_6EA3D4: LitVar_Missing var_270
  loc_6EA3D7: LitVar_Missing var_250
  loc_6EA3DA: LitVar_Missing var_230
  loc_6EA3DD: LitStr "Verificación de datos"
  loc_6EA3E0: FStStrCopy var_11C
  loc_6EA3E3: FLdRfVar var_11C
  loc_6EA3E6: LitI4 &H21
  loc_6EA3EB: PopTmpLdAdStr var_210
  loc_6EA3EE: LitI2_Byte &H4B
  loc_6EA3F0: PopTmpLdAd2 var_20A
  loc_6EA3F3: ImpAdLdRf MemVar_74C7D0
  loc_6EA3F6: NewIfNullPr clsMsg
  loc_6EA3F9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA3FE: LitVar_Missing var_3B0
  loc_6EA401: LitVar_Missing var_390
  loc_6EA404: FLdZeroAd var_140
  loc_6EA407: CVarStr var_370
  loc_6EA40A: LitI4 &H40
  loc_6EA40F: FLdZeroAd var_E4
  loc_6EA412: CVarStr var_360
  loc_6EA415: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA41A: FFreeStr var_BC = ""
  loc_6EA421: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA454: ExitProcCbHresult
  loc_6EA45A: FLdPrThis
  loc_6EA45B: VCallAd Control_ID_HoraFinal
  loc_6EA45E: FStAdFunc var_A8
  loc_6EA461: FLdPr var_A8
  loc_6EA464: LateIdLdVar var_B8 DispID_22 0
  loc_6EA46B: CStrVarTmp
  loc_6EA46C: CVarStr var_CC
  loc_6EA46F: ImpAdCallI2 Proc_53_13_638184()
  loc_6EA474: NotI4
  loc_6EA475: FFree1Ad var_A8
  loc_6EA478: FFreeVar var_B8 = ""
  loc_6EA47F: BranchF loc_6EA562
  loc_6EA482: FLdRfVar var_E4
  loc_6EA485: LitVar_Missing var_208
  loc_6EA488: LitVar_Missing var_1E8
  loc_6EA48B: LitVar_Missing var_1C8
  loc_6EA48E: LitVar_Missing var_1A8
  loc_6EA491: LitVar_Missing var_13C
  loc_6EA494: LitVar_Missing var_118
  loc_6EA497: LitVar_Missing var_104
  loc_6EA49A: LitVar_Missing var_E0
  loc_6EA49D: LitVar_Missing var_CC
  loc_6EA4A0: LitVar_Missing var_B8
  loc_6EA4A3: LitStr "Debe ingresar correctamente la hora final. Verifique por favor."
  loc_6EA4A6: FStStrCopy var_BC
  loc_6EA4A9: FLdRfVar var_BC
  loc_6EA4AC: LitI4 &H24
  loc_6EA4B1: PopTmpLdAdStr var_158
  loc_6EA4B4: LitI2_Byte &H4B
  loc_6EA4B6: PopTmpLdAd2 var_152
  loc_6EA4B9: ImpAdLdRf MemVar_74C7D0
  loc_6EA4BC: NewIfNullPr clsMsg
  loc_6EA4BF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA4C4: FLdRfVar var_140
  loc_6EA4C7: LitVar_Missing var_350
  loc_6EA4CA: LitVar_Missing var_330
  loc_6EA4CD: LitVar_Missing var_310
  loc_6EA4D0: LitVar_Missing var_2F0
  loc_6EA4D3: LitVar_Missing var_2D0
  loc_6EA4D6: LitVar_Missing var_2B0
  loc_6EA4D9: LitVar_Missing var_290
  loc_6EA4DC: LitVar_Missing var_270
  loc_6EA4DF: LitVar_Missing var_250
  loc_6EA4E2: LitVar_Missing var_230
  loc_6EA4E5: LitStr "Verificación de datos"
  loc_6EA4E8: FStStrCopy var_11C
  loc_6EA4EB: FLdRfVar var_11C
  loc_6EA4EE: LitI4 &H21
  loc_6EA4F3: PopTmpLdAdStr var_210
  loc_6EA4F6: LitI2_Byte &H4B
  loc_6EA4F8: PopTmpLdAd2 var_20A
  loc_6EA4FB: ImpAdLdRf MemVar_74C7D0
  loc_6EA4FE: NewIfNullPr clsMsg
  loc_6EA501: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA506: LitVar_Missing var_3B0
  loc_6EA509: LitVar_Missing var_390
  loc_6EA50C: FLdZeroAd var_140
  loc_6EA50F: CVarStr var_370
  loc_6EA512: LitI4 &H40
  loc_6EA517: FLdZeroAd var_E4
  loc_6EA51A: CVarStr var_360
  loc_6EA51D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA522: FFreeStr var_BC = ""
  loc_6EA529: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA55C: ExitProcCbHresult
  loc_6EA562: FLdPrThis
  loc_6EA563: VCallAd Control_ID_FechaInicial
  loc_6EA566: FStAdFunc var_A8
  loc_6EA569: FLdPr var_A8
  loc_6EA56C: LateIdLdVar var_B8 DispID_22 0
  loc_6EA573: PopAd
  loc_6EA575: LitVarI2 var_CC, 4
  loc_6EA57A: LitI4 7
  loc_6EA57F: FLdRfVar var_B8
  loc_6EA582: CStrVarTmp
  loc_6EA583: FStStrNoPop var_BC
  loc_6EA586: ImpAdCallI2 Mid$(, , )
  loc_6EA58B: FStStrNoPop var_E4
  loc_6EA58E: CR8Str
  loc_6EA590: LitI2 1970
  loc_6EA593: CR8I2
  loc_6EA594: LtR8
  loc_6EA595: FFreeStr var_BC = ""
  loc_6EA59C: FFree1Ad var_A8
  loc_6EA59F: FFreeVar var_B8 = ""
  loc_6EA5A6: BranchF loc_6EA689
  loc_6EA5A9: FLdRfVar var_E4
  loc_6EA5AC: LitVar_Missing var_208
  loc_6EA5AF: LitVar_Missing var_1E8
  loc_6EA5B2: LitVar_Missing var_1C8
  loc_6EA5B5: LitVar_Missing var_1A8
  loc_6EA5B8: LitVar_Missing var_13C
  loc_6EA5BB: LitVar_Missing var_118
  loc_6EA5BE: LitVar_Missing var_104
  loc_6EA5C1: LitVar_Missing var_E0
  loc_6EA5C4: LitVar_Missing var_CC
  loc_6EA5C7: LitVar_Missing var_B8
  loc_6EA5CA: LitStr "Debe ingresar una fecha inicial mayor a 1970. Verifique por favor."
  loc_6EA5CD: FStStrCopy var_BC
  loc_6EA5D0: FLdRfVar var_BC
  loc_6EA5D3: LitI4 &H25
  loc_6EA5D8: PopTmpLdAdStr var_158
  loc_6EA5DB: LitI2_Byte &H4B
  loc_6EA5DD: PopTmpLdAd2 var_152
  loc_6EA5E0: ImpAdLdRf MemVar_74C7D0
  loc_6EA5E3: NewIfNullPr clsMsg
  loc_6EA5E6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA5EB: FLdRfVar var_140
  loc_6EA5EE: LitVar_Missing var_350
  loc_6EA5F1: LitVar_Missing var_330
  loc_6EA5F4: LitVar_Missing var_310
  loc_6EA5F7: LitVar_Missing var_2F0
  loc_6EA5FA: LitVar_Missing var_2D0
  loc_6EA5FD: LitVar_Missing var_2B0
  loc_6EA600: LitVar_Missing var_290
  loc_6EA603: LitVar_Missing var_270
  loc_6EA606: LitVar_Missing var_250
  loc_6EA609: LitVar_Missing var_230
  loc_6EA60C: LitStr "Verificación de datos"
  loc_6EA60F: FStStrCopy var_11C
  loc_6EA612: FLdRfVar var_11C
  loc_6EA615: LitI4 &H21
  loc_6EA61A: PopTmpLdAdStr var_210
  loc_6EA61D: LitI2_Byte &H4B
  loc_6EA61F: PopTmpLdAd2 var_20A
  loc_6EA622: ImpAdLdRf MemVar_74C7D0
  loc_6EA625: NewIfNullPr clsMsg
  loc_6EA628: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA62D: LitVar_Missing var_3B0
  loc_6EA630: LitVar_Missing var_390
  loc_6EA633: FLdZeroAd var_140
  loc_6EA636: CVarStr var_370
  loc_6EA639: LitI4 &H40
  loc_6EA63E: FLdZeroAd var_E4
  loc_6EA641: CVarStr var_360
  loc_6EA644: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA649: FFreeStr var_BC = ""
  loc_6EA650: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA683: ExitProcCbHresult
  loc_6EA689: FLdPrThis
  loc_6EA68A: VCallAd Control_ID_FechaFinal
  loc_6EA68D: FStAdFunc var_A8
  loc_6EA690: FLdPr var_A8
  loc_6EA693: LateIdLdVar var_B8 DispID_22 0
  loc_6EA69A: PopAd
  loc_6EA69C: LitVarI2 var_CC, 4
  loc_6EA6A1: LitI4 7
  loc_6EA6A6: FLdRfVar var_B8
  loc_6EA6A9: CStrVarTmp
  loc_6EA6AA: FStStrNoPop var_BC
  loc_6EA6AD: ImpAdCallI2 Mid$(, , )
  loc_6EA6B2: FStStrNoPop var_E4
  loc_6EA6B5: CR8Str
  loc_6EA6B7: LitI2 1970
  loc_6EA6BA: CR8I2
  loc_6EA6BB: LtR8
  loc_6EA6BC: FFreeStr var_BC = ""
  loc_6EA6C3: FFree1Ad var_A8
  loc_6EA6C6: FFreeVar var_B8 = ""
  loc_6EA6CD: BranchF loc_6EA7B0
  loc_6EA6D0: FLdRfVar var_E4
  loc_6EA6D3: LitVar_Missing var_208
  loc_6EA6D6: LitVar_Missing var_1E8
  loc_6EA6D9: LitVar_Missing var_1C8
  loc_6EA6DC: LitVar_Missing var_1A8
  loc_6EA6DF: LitVar_Missing var_13C
  loc_6EA6E2: LitVar_Missing var_118
  loc_6EA6E5: LitVar_Missing var_104
  loc_6EA6E8: LitVar_Missing var_E0
  loc_6EA6EB: LitVar_Missing var_CC
  loc_6EA6EE: LitVar_Missing var_B8
  loc_6EA6F1: LitStr "Debe ingresar una fecha final mayor a 1970. Verifique por favor."
  loc_6EA6F4: FStStrCopy var_BC
  loc_6EA6F7: FLdRfVar var_BC
  loc_6EA6FA: LitI4 &H26
  loc_6EA6FF: PopTmpLdAdStr var_158
  loc_6EA702: LitI2_Byte &H4B
  loc_6EA704: PopTmpLdAd2 var_152
  loc_6EA707: ImpAdLdRf MemVar_74C7D0
  loc_6EA70A: NewIfNullPr clsMsg
  loc_6EA70D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA712: FLdRfVar var_140
  loc_6EA715: LitVar_Missing var_350
  loc_6EA718: LitVar_Missing var_330
  loc_6EA71B: LitVar_Missing var_310
  loc_6EA71E: LitVar_Missing var_2F0
  loc_6EA721: LitVar_Missing var_2D0
  loc_6EA724: LitVar_Missing var_2B0
  loc_6EA727: LitVar_Missing var_290
  loc_6EA72A: LitVar_Missing var_270
  loc_6EA72D: LitVar_Missing var_250
  loc_6EA730: LitVar_Missing var_230
  loc_6EA733: LitStr "Verificación de datos"
  loc_6EA736: FStStrCopy var_11C
  loc_6EA739: FLdRfVar var_11C
  loc_6EA73C: LitI4 &H21
  loc_6EA741: PopTmpLdAdStr var_210
  loc_6EA744: LitI2_Byte &H4B
  loc_6EA746: PopTmpLdAd2 var_20A
  loc_6EA749: ImpAdLdRf MemVar_74C7D0
  loc_6EA74C: NewIfNullPr clsMsg
  loc_6EA74F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA754: LitVar_Missing var_3B0
  loc_6EA757: LitVar_Missing var_390
  loc_6EA75A: FLdZeroAd var_140
  loc_6EA75D: CVarStr var_370
  loc_6EA760: LitI4 &H40
  loc_6EA765: FLdZeroAd var_E4
  loc_6EA768: CVarStr var_360
  loc_6EA76B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA770: FFreeStr var_BC = ""
  loc_6EA777: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EA7AA: ExitProcCbHresult
  loc_6EA7B0: FLdPrThis
  loc_6EA7B1: VCallAd Control_ID_FechaInicial
  loc_6EA7B4: FStAdFunc var_A8
  loc_6EA7B7: FLdPr var_A8
  loc_6EA7BA: LateIdLdVar var_B8 DispID_22 0
  loc_6EA7C1: PopAd
  loc_6EA7C3: LitVarI2 var_CC, 2
  loc_6EA7C8: LitI4 1
  loc_6EA7CD: FLdRfVar var_B8
  loc_6EA7D0: CStrVarTmp
  loc_6EA7D1: FStStrNoPop var_BC
  loc_6EA7D4: ImpAdCallI2 Mid$(, , )
  loc_6EA7D9: FStStr var_3D0
  loc_6EA7DC: FLdPrThis
  loc_6EA7DD: VCallAd Control_ID_FechaInicial
  loc_6EA7E0: FStAdFunc var_D0
  loc_6EA7E3: FLdPr var_D0
  loc_6EA7E6: LateIdLdVar var_E0 DispID_22 0
  loc_6EA7ED: PopAd
  loc_6EA7EF: LitVarI2 var_104, 2
  loc_6EA7F4: LitI4 4
  loc_6EA7F9: FLdRfVar var_E0
  loc_6EA7FC: CStrVarTmp
  loc_6EA7FD: FStStrNoPop var_E4
  loc_6EA800: ImpAdCallI2 Mid$(, , )
  loc_6EA805: FStStr var_3D4
  loc_6EA808: FLdPrThis
  loc_6EA809: VCallAd Control_ID_FechaInicial
  loc_6EA80C: FStAdFunc var_108
  loc_6EA80F: FLdPr var_108
  loc_6EA812: LateIdLdVar var_118 DispID_22 0
  loc_6EA819: PopAd
  loc_6EA81B: LitVarI2 var_13C, 4
  loc_6EA820: LitI4 7
  loc_6EA825: FLdRfVar var_118
  loc_6EA828: CStrVarTmp
  loc_6EA829: FStStrNoPop var_11C
  loc_6EA82C: ImpAdCallI2 Mid$(, , )
  loc_6EA831: FStStr var_3D8
  loc_6EA834: FLdPrThis
  loc_6EA835: VCallAd Control_ID_FechaFinal
  loc_6EA838: FStAdFunc var_3B4
  loc_6EA83B: FLdPr var_3B4
  loc_6EA83E: LateIdLdVar var_1A8 DispID_22 0
  loc_6EA845: PopAd
  loc_6EA847: LitVarI2 var_1C8, 2
  loc_6EA84C: LitI4 1
  loc_6EA851: FLdRfVar var_1A8
  loc_6EA854: CStrVarTmp
  loc_6EA855: FStStrNoPop var_140
  loc_6EA858: ImpAdCallI2 Mid$(, , )
  loc_6EA85D: FStStr var_3DC
  loc_6EA860: FLdPrThis
  loc_6EA861: VCallAd Control_ID_FechaFinal
  loc_6EA864: FStAdFunc var_3B8
  loc_6EA867: FLdPr var_3B8
  loc_6EA86A: LateIdLdVar var_1E8 DispID_22 0
  loc_6EA871: PopAd
  loc_6EA873: LitVarI2 var_208, 2
  loc_6EA878: LitI4 4
  loc_6EA87D: FLdRfVar var_1E8
  loc_6EA880: CStrVarTmp
  loc_6EA881: FStStrNoPop var_144
  loc_6EA884: ImpAdCallI2 Mid$(, , )
  loc_6EA889: FStStr var_3E0
  loc_6EA88C: FLdPrThis
  loc_6EA88D: VCallAd Control_ID_FechaFinal
  loc_6EA890: FStAdFunc var_3BC
  loc_6EA893: FLdPr var_3BC
  loc_6EA896: LateIdLdVar var_230 DispID_22 0
  loc_6EA89D: PopAd
  loc_6EA89F: LitVarI2 var_250, 4
  loc_6EA8A4: LitI4 7
  loc_6EA8A9: FLdRfVar var_230
  loc_6EA8AC: CStrVarTmp
  loc_6EA8AD: FStStrNoPop var_148
  loc_6EA8B0: ImpAdCallI2 Mid$(, , )
  loc_6EA8B5: FStStrNoPop var_3CC
  loc_6EA8B8: CI2Str
  loc_6EA8BA: FLdZeroAd var_3E0
  loc_6EA8BD: FStStrNoPop var_3C8
  loc_6EA8C0: CI2Str
  loc_6EA8C2: FLdZeroAd var_3DC
  loc_6EA8C5: FStStrNoPop var_3C4
  loc_6EA8C8: CI2Str
  loc_6EA8CA: FLdZeroAd var_3D8
  loc_6EA8CD: FStStrNoPop var_3C0
  loc_6EA8D0: CI2Str
  loc_6EA8D2: FLdZeroAd var_3D4
  loc_6EA8D5: FStStrNoPop var_150
  loc_6EA8D8: CI2Str
  loc_6EA8DA: FLdZeroAd var_3D0
  loc_6EA8DD: FStStrNoPop var_14C
  loc_6EA8E0: CI2Str
  loc_6EA8E2: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6EA8E7: LitI2_Byte 0
  loc_6EA8E9: GtI2
  loc_6EA8EA: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6EA90F: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6EA91E: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6EA939: BranchF loc_6EAA1F
  loc_6EA93C: FLdRfVar var_E4
  loc_6EA93F: LitVar_Missing var_208
  loc_6EA942: LitVar_Missing var_1E8
  loc_6EA945: LitVar_Missing var_1C8
  loc_6EA948: LitVar_Missing var_1A8
  loc_6EA94B: LitVar_Missing var_13C
  loc_6EA94E: LitVar_Missing var_118
  loc_6EA951: LitVar_Missing var_104
  loc_6EA954: LitVar_Missing var_E0
  loc_6EA957: LitVar_Missing var_CC
  loc_6EA95A: LitVar_Missing var_B8
  loc_6EA95D: LitStr "Debe ingresar una fecha inicial menor o igual a la final. Verifique por favor."
  loc_6EA960: FStStrCopy var_BC
  loc_6EA963: FLdRfVar var_BC
  loc_6EA966: LitI4 &H27
  loc_6EA96B: PopTmpLdAdStr var_158
  loc_6EA96E: LitI2_Byte &H4B
  loc_6EA970: PopTmpLdAd2 var_152
  loc_6EA973: ImpAdLdRf MemVar_74C7D0
  loc_6EA976: NewIfNullPr clsMsg
  loc_6EA979: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA97E: FLdRfVar var_140
  loc_6EA981: LitVar_Missing var_350
  loc_6EA984: LitVar_Missing var_330
  loc_6EA987: LitVar_Missing var_310
  loc_6EA98A: LitVar_Missing var_2F0
  loc_6EA98D: LitVar_Missing var_2D0
  loc_6EA990: LitVar_Missing var_2B0
  loc_6EA993: LitVar_Missing var_290
  loc_6EA996: LitVar_Missing var_270
  loc_6EA999: LitVar_Missing var_250
  loc_6EA99C: LitVar_Missing var_230
  loc_6EA99F: LitStr "Verificación de datos"
  loc_6EA9A2: FStStrCopy var_11C
  loc_6EA9A5: FLdRfVar var_11C
  loc_6EA9A8: LitI4 &H21
  loc_6EA9AD: PopTmpLdAdStr var_210
  loc_6EA9B0: LitI2_Byte &H4B
  loc_6EA9B2: PopTmpLdAd2 var_20A
  loc_6EA9B5: ImpAdLdRf MemVar_74C7D0
  loc_6EA9B8: NewIfNullPr clsMsg
  loc_6EA9BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EA9C0: LitVar_Missing var_3B0
  loc_6EA9C3: LitVar_Missing var_390
  loc_6EA9C6: FLdZeroAd var_140
  loc_6EA9C9: CVarStr var_370
  loc_6EA9CC: LitI4 &H40
  loc_6EA9D1: FLdZeroAd var_E4
  loc_6EA9D4: CVarStr var_360
  loc_6EA9D7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EA9DC: FFreeStr var_BC = ""
  loc_6EA9E3: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EAA16: ExitProcCbHresult
  loc_6EAA1C: Branch loc_6EACDA
  loc_6EAA1F: FLdPrThis
  loc_6EAA20: VCallAd Control_ID_FechaInicial
  loc_6EAA23: FStAdFunc var_A8
  loc_6EAA26: FLdPr var_A8
  loc_6EAA29: LateIdLdVar var_B8 DispID_22 0
  loc_6EAA30: PopAd
  loc_6EAA32: LitVarI2 var_CC, 2
  loc_6EAA37: LitI4 1
  loc_6EAA3C: FLdRfVar var_B8
  loc_6EAA3F: CStrVarTmp
  loc_6EAA40: FStStrNoPop var_BC
  loc_6EAA43: ImpAdCallI2 Mid$(, , )
  loc_6EAA48: FStStr var_3D0
  loc_6EAA4B: FLdPrThis
  loc_6EAA4C: VCallAd Control_ID_FechaInicial
  loc_6EAA4F: FStAdFunc var_D0
  loc_6EAA52: FLdPr var_D0
  loc_6EAA55: LateIdLdVar var_E0 DispID_22 0
  loc_6EAA5C: PopAd
  loc_6EAA5E: LitVarI2 var_104, 2
  loc_6EAA63: LitI4 4
  loc_6EAA68: FLdRfVar var_E0
  loc_6EAA6B: CStrVarTmp
  loc_6EAA6C: FStStrNoPop var_E4
  loc_6EAA6F: ImpAdCallI2 Mid$(, , )
  loc_6EAA74: FStStr var_3D4
  loc_6EAA77: FLdPrThis
  loc_6EAA78: VCallAd Control_ID_FechaInicial
  loc_6EAA7B: FStAdFunc var_108
  loc_6EAA7E: FLdPr var_108
  loc_6EAA81: LateIdLdVar var_118 DispID_22 0
  loc_6EAA88: PopAd
  loc_6EAA8A: LitVarI2 var_13C, 4
  loc_6EAA8F: LitI4 7
  loc_6EAA94: FLdRfVar var_118
  loc_6EAA97: CStrVarTmp
  loc_6EAA98: FStStrNoPop var_11C
  loc_6EAA9B: ImpAdCallI2 Mid$(, , )
  loc_6EAAA0: FStStr var_3D8
  loc_6EAAA3: FLdPrThis
  loc_6EAAA4: VCallAd Control_ID_FechaFinal
  loc_6EAAA7: FStAdFunc var_3B4
  loc_6EAAAA: FLdPr var_3B4
  loc_6EAAAD: LateIdLdVar var_1A8 DispID_22 0
  loc_6EAAB4: PopAd
  loc_6EAAB6: LitVarI2 var_1C8, 2
  loc_6EAABB: LitI4 1
  loc_6EAAC0: FLdRfVar var_1A8
  loc_6EAAC3: CStrVarTmp
  loc_6EAAC4: FStStrNoPop var_140
  loc_6EAAC7: ImpAdCallI2 Mid$(, , )
  loc_6EAACC: FStStr var_3DC
  loc_6EAACF: FLdPrThis
  loc_6EAAD0: VCallAd Control_ID_FechaFinal
  loc_6EAAD3: FStAdFunc var_3B8
  loc_6EAAD6: FLdPr var_3B8
  loc_6EAAD9: LateIdLdVar var_1E8 DispID_22 0
  loc_6EAAE0: PopAd
  loc_6EAAE2: LitVarI2 var_208, 2
  loc_6EAAE7: LitI4 4
  loc_6EAAEC: FLdRfVar var_1E8
  loc_6EAAEF: CStrVarTmp
  loc_6EAAF0: FStStrNoPop var_144
  loc_6EAAF3: ImpAdCallI2 Mid$(, , )
  loc_6EAAF8: FStStr var_3E0
  loc_6EAAFB: FLdPrThis
  loc_6EAAFC: VCallAd Control_ID_FechaFinal
  loc_6EAAFF: FStAdFunc var_3BC
  loc_6EAB02: FLdPr var_3BC
  loc_6EAB05: LateIdLdVar var_230 DispID_22 0
  loc_6EAB0C: PopAd
  loc_6EAB0E: LitVarI2 var_250, 4
  loc_6EAB13: LitI4 7
  loc_6EAB18: FLdRfVar var_230
  loc_6EAB1B: CStrVarTmp
  loc_6EAB1C: FStStrNoPop var_148
  loc_6EAB1F: ImpAdCallI2 Mid$(, , )
  loc_6EAB24: FStStrNoPop var_3CC
  loc_6EAB27: CI2Str
  loc_6EAB29: FLdZeroAd var_3E0
  loc_6EAB2C: FStStrNoPop var_3C8
  loc_6EAB2F: CI2Str
  loc_6EAB31: FLdZeroAd var_3DC
  loc_6EAB34: FStStrNoPop var_3C4
  loc_6EAB37: CI2Str
  loc_6EAB39: FLdZeroAd var_3D8
  loc_6EAB3C: FStStrNoPop var_3C0
  loc_6EAB3F: CI2Str
  loc_6EAB41: FLdZeroAd var_3D4
  loc_6EAB44: FStStrNoPop var_150
  loc_6EAB47: CI2Str
  loc_6EAB49: FLdZeroAd var_3D0
  loc_6EAB4C: FStStrNoPop var_14C
  loc_6EAB4F: CI2Str
  loc_6EAB51: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6EAB56: LitI2_Byte 0
  loc_6EAB58: EqI2
  loc_6EAB59: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6EAB7E: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6EAB8D: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6EABA8: BranchF loc_6EACDA
  loc_6EABAB: FLdPrThis
  loc_6EABAC: VCallAd Control_ID_HoraInicial
  loc_6EABAF: FStAdFunc var_A8
  loc_6EABB2: FLdPr var_A8
  loc_6EABB5: LateIdLdVar var_B8 DispID_22 0
  loc_6EABBC: PopAd
  loc_6EABBE: FLdPrThis
  loc_6EABBF: VCallAd Control_ID_HoraFinal
  loc_6EABC2: FStAdFunc var_D0
  loc_6EABC5: FLdPr var_D0
  loc_6EABC8: LateIdLdVar var_CC DispID_22 0
  loc_6EABCF: CStrVarTmp
  loc_6EABD0: FStStrNoPop var_E4
  loc_6EABD3: FLdRfVar var_B8
  loc_6EABD6: CStrVarTmp
  loc_6EABD7: FStStrNoPop var_BC
  loc_6EABDA: ImpAdCallI2 Proc_65_3_641944(, )
  loc_6EABDF: LitI2_Byte 0
  loc_6EABE1: GtI2
  loc_6EABE2: FFreeStr var_BC = ""
  loc_6EABE9: FFreeAd var_A8 = ""
  loc_6EABF0: FFreeVar var_B8 = ""
  loc_6EABF7: BranchF loc_6EACDA
  loc_6EABFA: FLdRfVar var_E4
  loc_6EABFD: LitVar_Missing var_208
  loc_6EAC00: LitVar_Missing var_1E8
  loc_6EAC03: LitVar_Missing var_1C8
  loc_6EAC06: LitVar_Missing var_1A8
  loc_6EAC09: LitVar_Missing var_13C
  loc_6EAC0C: LitVar_Missing var_118
  loc_6EAC0F: LitVar_Missing var_104
  loc_6EAC12: LitVar_Missing var_E0
  loc_6EAC15: LitVar_Missing var_CC
  loc_6EAC18: LitVar_Missing var_B8
  loc_6EAC1B: LitStr "Debe ingresar una hora inicial menor o igual a la final. Verifique por favor."
  loc_6EAC1E: FStStrCopy var_BC
  loc_6EAC21: FLdRfVar var_BC
  loc_6EAC24: LitI4 &H28
  loc_6EAC29: PopTmpLdAdStr var_158
  loc_6EAC2C: LitI2_Byte &H4B
  loc_6EAC2E: PopTmpLdAd2 var_152
  loc_6EAC31: ImpAdLdRf MemVar_74C7D0
  loc_6EAC34: NewIfNullPr clsMsg
  loc_6EAC37: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EAC3C: FLdRfVar var_140
  loc_6EAC3F: LitVar_Missing var_350
  loc_6EAC42: LitVar_Missing var_330
  loc_6EAC45: LitVar_Missing var_310
  loc_6EAC48: LitVar_Missing var_2F0
  loc_6EAC4B: LitVar_Missing var_2D0
  loc_6EAC4E: LitVar_Missing var_2B0
  loc_6EAC51: LitVar_Missing var_290
  loc_6EAC54: LitVar_Missing var_270
  loc_6EAC57: LitVar_Missing var_250
  loc_6EAC5A: LitVar_Missing var_230
  loc_6EAC5D: LitStr "Verificación de datos"
  loc_6EAC60: FStStrCopy var_11C
  loc_6EAC63: FLdRfVar var_11C
  loc_6EAC66: LitI4 &H21
  loc_6EAC6B: PopTmpLdAdStr var_210
  loc_6EAC6E: LitI2_Byte &H4B
  loc_6EAC70: PopTmpLdAd2 var_20A
  loc_6EAC73: ImpAdLdRf MemVar_74C7D0
  loc_6EAC76: NewIfNullPr clsMsg
  loc_6EAC79: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EAC7E: LitVar_Missing var_3B0
  loc_6EAC81: LitVar_Missing var_390
  loc_6EAC84: FLdZeroAd var_140
  loc_6EAC87: CVarStr var_370
  loc_6EAC8A: LitI4 &H40
  loc_6EAC8F: FLdZeroAd var_E4
  loc_6EAC92: CVarStr var_360
  loc_6EAC95: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EAC9A: FFreeStr var_BC = ""
  loc_6EACA1: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6EACD4: ExitProcCbHresult
  loc_6EACDA: LitVarI4
  loc_6EACE2: FStVar var_94
  loc_6EACE6: ExitProcCbHresult
End Function

Private Function Proc_129_12_5F20E8(arg_C) '5F20E8
  'Data Table: 43A8EC
  loc_5F2050: ZeroRetVal
  loc_5F2052: LitI2_Byte 1
  loc_5F2054: FStI2 var_8A
  loc_5F2057: LitI4 1
  loc_5F205C: LitI4 1
  loc_5F2061: LitVarStr var_AC, "0000"
  loc_5F2066: FStVarCopyObj var_BC
  loc_5F2069: FLdRfVar var_BC
  loc_5F206C: FLdRfVar arg_C
  loc_5F206F: CVarRef
  loc_5F2074: ImpAdCallI2 Format$(, )
  loc_5F2079: FStStr var_CC
  loc_5F207C: FLdRfVar var_C6
  loc_5F207F: FLdRfVar var_88
  loc_5F2082: FLdZeroAd var_CC
  loc_5F2085: FStStrNoPop var_C4
  loc_5F2088: FLdRfVar var_C0
  loc_5F208B: ImpAdLdRf MemVar_74C760
  loc_5F208E: NewIfNullPr Formx
  loc_5F2091: from_stack_1v = Formx.global_4589716Get()
  loc_5F2096: FLdPr var_C0
  loc_5F2099: Call 0.Method_arg_26C ()
  loc_5F209E: FLdI2 var_C6
  loc_5F20A1: NotI4
  loc_5F20A2: FLdI2 var_8A
  loc_5F20A5: LitI2_Byte 3
  loc_5F20A7: LeI2
  loc_5F20A8: AndI4
  loc_5F20A9: FFreeStr var_C4 = ""
  loc_5F20B0: FFree1Ad var_C0
  loc_5F20B3: FFree1Var var_BC = ""
  loc_5F20B6: BranchF loc_5F20C5
  loc_5F20B9: FLdI2 var_8A
  loc_5F20BC: LitI2_Byte 1
  loc_5F20BE: AddI2
  loc_5F20BF: FStI2 var_8A
  loc_5F20C2: Branch loc_5F2057
  loc_5F20C5: FLdI2 var_8A
  loc_5F20C8: LitI2_Byte 3
  loc_5F20CA: GtI2
  loc_5F20CB: ILdRf var_88
  loc_5F20CE: FnLenStr
  loc_5F20CF: LitI4 2
  loc_5F20D4: LtI4
  loc_5F20D5: OrI4
  loc_5F20D6: BranchF loc_5F20DF
  loc_5F20D9: LitStr vbNullString
  loc_5F20DC: FStStrCopy var_88
  loc_5F20DF: ExitProcCbHresult
  loc_5F20E5: SubCy
End Function

Private Function Proc_129_13_72BFB8(arg_C) '72BFB8
  'Data Table: 43A8EC
  loc_729B28: ILdRf arg_C
  loc_729B2B: FStStrCopy var_88
  loc_729B2E: FLdRfVar var_F0
  loc_729B31: NewIfNullAd
  loc_729B34: FStAd var_FC 
  loc_729B38: LitI2_Byte &HFF
  loc_729B3A: FLdPr var_FC
  loc_729B42: LitStr "Courier New"
  loc_729B45: FLdPr var_FC
  loc_729B48: Reset
  loc_729B4D: LitI2_Byte &H16
  loc_729B4F: CR8I2
  loc_729B50: PopFPR4
  loc_729B51: FLdPr var_FC
  loc_729B59: LitNothing
  loc_729B5B: FStAd var_FC 
  loc_729B5F: FLdRfVar var_24C
  loc_729B62: LitVar_Missing var_248
  loc_729B65: LitVar_Missing var_228
  loc_729B68: LitVar_Missing var_208
  loc_729B6B: LitVar_Missing var_1E8
  loc_729B6E: LitVar_Missing var_1C8
  loc_729B71: LitVar_Missing var_1A8
  loc_729B74: LitVar_Missing var_188
  loc_729B77: LitVar_Missing var_168
  loc_729B7A: LitVar_Missing var_148
  loc_729B7D: LitVarStr var_118, "Listado CDFP"
  loc_729B82: FStVarCopyObj var_128
  loc_729B85: FLdRfVar var_128
  loc_729B88: LitI2_Byte 1
  loc_729B8A: CStrUI1
  loc_729B8C: PopTmpLdAdStr
  loc_729B90: LitI4 &H4B
  loc_729B95: PopTmpLdAdStr var_104
  loc_729B98: LitI2_Byte &H4B
  loc_729B9A: PopTmpLdAd2 var_FE
  loc_729B9D: ImpAdLdRf MemVar_74C7D0
  loc_729BA0: NewIfNullPr clsMsg
  loc_729BA3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_729BA8: FLdRfVar var_252
  loc_729BAB: FLdRfVar var_F0
  loc_729BAE: NewIfNullRf
  loc_729BB2: FLdZeroAd var_24C
  loc_729BB5: PopTmpLdAdStr
  loc_729BB9: FLdRfVar var_EC
  loc_729BBC: NewIfNullPr CReporte
  loc_729BBF:  = CReporte.BackColor
  loc_729BC4: FFreeStr var_108 = ""
  loc_729BCB: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_729BE2: FLdRfVar var_FE
  loc_729BE5: FLdRfVar var_F0
  loc_729BE8: NewIfNullRf
  loc_729BEC: LitStr vbNullString
  loc_729BEF: FStStrCopy var_108
  loc_729BF2: FLdRfVar var_108
  loc_729BF5: FLdRfVar var_EC
  loc_729BF8: NewIfNullPr CReporte
  loc_729BFB: Call 0.Method_arg_5C ()
  loc_729C00: FFree1Str var_108
  loc_729C03: LitI2_Byte 0
  loc_729C05: FLdRfVar var_F0
  loc_729C08: NewIfNullPr CFuente
  loc_729C10: LitI2_Byte 8
  loc_729C12: CR8I2
  loc_729C13: PopFPR4
  loc_729C14: FLdRfVar var_F0
  loc_729C17: NewIfNullPr CFuente
  loc_729C1F: FLdRfVar var_24C
  loc_729C22: LitVar_Missing var_248
  loc_729C25: LitVar_Missing var_228
  loc_729C28: LitVar_Missing var_208
  loc_729C2B: LitVar_Missing var_1E8
  loc_729C2E: LitVar_Missing var_1C8
  loc_729C31: LitVar_Missing var_1A8
  loc_729C34: LitVar_Missing var_188
  loc_729C37: LitVar_Missing var_168
  loc_729C3A: LitVar_Missing var_148
  loc_729C3D: LitVar_Missing var_128
  loc_729C40: LitStr "Rango =   Desde:"
  loc_729C43: FStStrCopy var_108
  loc_729C46: FLdRfVar var_108
  loc_729C49: LitI4 &H29
  loc_729C4E: PopTmpLdAdStr var_104
  loc_729C51: LitI2_Byte &H4B
  loc_729C53: PopTmpLdAd2 var_FE
  loc_729C56: ImpAdLdRf MemVar_74C7D0
  loc_729C59: NewIfNullPr clsMsg
  loc_729C5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_729C61: FLdPrThis
  loc_729C62: VCallAd Control_ID_FechaInicial
  loc_729C65: FStAdFunc var_258
  loc_729C68: FLdPr var_258
  loc_729C6B: LateIdLdVar var_268 DispID_22 0
  loc_729C72: PopAd
  loc_729C74: FLdPrThis
  loc_729C75: VCallAd Control_ID_HoraInicial
  loc_729C78: FStAdFunc var_274
  loc_729C7B: FLdPr var_274
  loc_729C7E: LateIdLdVar var_284 DispID_22 0
  loc_729C85: PopAd
  loc_729C87: FLdRfVar var_3D8
  loc_729C8A: LitVar_Missing var_3D4
  loc_729C8D: LitVar_Missing var_3B4
  loc_729C90: LitVar_Missing var_394
  loc_729C93: LitVar_Missing var_374
  loc_729C96: LitVar_Missing var_354
  loc_729C99: LitVar_Missing var_334
  loc_729C9C: LitVar_Missing var_314
  loc_729C9F: LitVar_Missing var_2F4
  loc_729CA2: LitVar_Missing var_2D4
  loc_729CA5: LitVar_Missing var_2B4
  loc_729CA8: LitStr "  -  Hasta:"
  loc_729CAB: FStStrCopy var_294
  loc_729CAE: FLdRfVar var_294
  loc_729CB1: LitI4 &H2A
  loc_729CB6: PopTmpLdAdStr var_290
  loc_729CB9: LitI2_Byte &H4B
  loc_729CBB: PopTmpLdAd2 var_252
  loc_729CBE: ImpAdLdRf MemVar_74C7D0
  loc_729CC1: NewIfNullPr clsMsg
  loc_729CC4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_729CC9: FLdPrThis
  loc_729CCA: VCallAd Control_ID_FechaFinal
  loc_729CCD: FStAdFunc var_3E4
  loc_729CD0: FLdPr var_3E4
  loc_729CD3: LateIdLdVar var_3F4 DispID_22 0
  loc_729CDA: PopAd
  loc_729CDC: FLdPrThis
  loc_729CDD: VCallAd Control_ID_HoraFinal
  loc_729CE0: FStAdFunc var_404
  loc_729CE3: FLdPr var_404
  loc_729CE6: LateIdLdVar var_414 DispID_22 0
  loc_729CED: PopAd
  loc_729CEF: FLdRfVar var_422
  loc_729CF2: FLdRfVar var_F0
  loc_729CF5: NewIfNullRf
  loc_729CF9: ILdRf var_24C
  loc_729CFC: LitStr " "
  loc_729CFF: ConcatStr
  loc_729D00: FStStrNoPop var_250
  loc_729D03: FLdRfVar var_268
  loc_729D06: CStrVarTmp
  loc_729D07: FStStrNoPop var_26C
  loc_729D0A: ConcatStr
  loc_729D0B: FStStrNoPop var_270
  loc_729D0E: LitStr "  "
  loc_729D11: ConcatStr
  loc_729D12: FStStrNoPop var_288
  loc_729D15: FLdRfVar var_284
  loc_729D18: CStrVarTmp
  loc_729D19: FStStrNoPop var_28C
  loc_729D1C: ConcatStr
  loc_729D1D: FStStrNoPop var_3DC
  loc_729D20: ILdRf var_3D8
  loc_729D23: ConcatStr
  loc_729D24: FStStrNoPop var_3E0
  loc_729D27: LitStr " "
  loc_729D2A: ConcatStr
  loc_729D2B: FStStrNoPop var_3F8
  loc_729D2E: FLdRfVar var_3F4
  loc_729D31: CStrVarTmp
  loc_729D32: FStStrNoPop var_3FC
  loc_729D35: ConcatStr
  loc_729D36: FStStrNoPop var_400
  loc_729D39: LitStr "  "
  loc_729D3C: ConcatStr
  loc_729D3D: FStStrNoPop var_418
  loc_729D40: FLdRfVar var_414
  loc_729D43: CStrVarTmp
  loc_729D44: FStStrNoPop var_41C
  loc_729D47: ConcatStr
  loc_729D48: PopTmpLdAdStr
  loc_729D4C: FLdRfVar var_EC
  loc_729D4F: NewIfNullPr CReporte
  loc_729D52:  = CReporte.hWnd
  loc_729D57: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3DC = "": var_3D8 = "": var_3E0 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_418 = "": var_41C = ""
  loc_729D7C: FFreeAd var_258 = "": var_274 = "": var_3E4 = ""
  loc_729D87: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = ""
  loc_729DBA: FLdRfVar var_128
  loc_729DBD: ImpAdCallFPR4  = Date
  loc_729DC2: LitI4 1
  loc_729DC7: LitI4 1
  loc_729DCC: LitVarStr var_118, "dd/mm/yyyy"
  loc_729DD1: FStVarCopyObj var_148
  loc_729DD4: FLdRfVar var_148
  loc_729DD7: FLdRfVar var_128
  loc_729DDA: ImpAdCallI2 Format$(, )
  loc_729DDF: FStStr var_288
  loc_729DE2: FLdRfVar var_168
  loc_729DE5: ImpAdCallFPR4  = Now
  loc_729DEA: LitI4 1
  loc_729DEF: LitI4 1
  loc_729DF4: LitVarStr var_138, "hh:mm:ss"
  loc_729DF9: FStVarCopyObj var_188
  loc_729DFC: FLdRfVar var_188
  loc_729DFF: FLdRfVar var_168
  loc_729E02: ImpAdCallI2 Format$(, )
  loc_729E07: FStStr var_28C
  loc_729E0A: FLdRfVar var_FE
  loc_729E0D: FLdRfVar var_F0
  loc_729E10: NewIfNullRf
  loc_729E14: LitStr "Fecha: "
  loc_729E17: FLdZeroAd var_288
  loc_729E1A: FStStrNoPop var_108
  loc_729E1D: ConcatStr
  loc_729E1E: FStStrNoPop var_24C
  loc_729E21: LitStr "  -  Hora: "
  loc_729E24: ConcatStr
  loc_729E25: FStStrNoPop var_250
  loc_729E28: FLdZeroAd var_28C
  loc_729E2B: FStStrNoPop var_26C
  loc_729E2E: ConcatStr
  loc_729E2F: PopTmpLdAdStr
  loc_729E33: FLdRfVar var_EC
  loc_729E36: NewIfNullPr CReporte
  loc_729E39: CReporte.Caption = from_stack_1
  loc_729E3E: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = ""
  loc_729E4F: FFreeVar var_128 = "": var_148 = "": var_168 = ""
  loc_729E5A: LitI2_Byte &HFF
  loc_729E5C: FLdRfVar var_F0
  loc_729E5F: NewIfNullPr CFuente
  loc_729E67: LitI2_Byte &HA
  loc_729E69: CR8I2
  loc_729E6A: PopFPR4
  loc_729E6B: FLdRfVar var_F0
  loc_729E6E: NewIfNullPr CFuente
  loc_729E76: FLdRfVar var_24C
  loc_729E79: LitVar_Missing var_248
  loc_729E7C: LitVar_Missing var_228
  loc_729E7F: LitVar_Missing var_208
  loc_729E82: LitVar_Missing var_1E8
  loc_729E85: LitVar_Missing var_1C8
  loc_729E88: LitVar_Missing var_1A8
  loc_729E8B: LitVar_Missing var_188
  loc_729E8E: LitVar_Missing var_168
  loc_729E91: LitVar_Missing var_148
  loc_729E94: LitVar_Missing var_128
  loc_729E97: LitStr "Fecha y Hora"
  loc_729E9A: FStStrCopy var_108
  loc_729E9D: FLdRfVar var_108
  loc_729EA0: LitI4 &HC
  loc_729EA5: PopTmpLdAdStr var_104
  loc_729EA8: LitI2_Byte &H4B
  loc_729EAA: PopTmpLdAd2 var_FE
  loc_729EAD: ImpAdLdRf MemVar_74C7D0
  loc_729EB0: NewIfNullPr clsMsg
  loc_729EB3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_729EB8: LitI4 &HA
  loc_729EBD: ImpAdLdRf MemVar_74BED4
  loc_729EC0: CVarRef
  loc_729EC5: FLdRfVar var_268
  loc_729EC8: ImpAdCallFPR4  = Left(, )
  loc_729ECD: LitI4 1
  loc_729ED2: LitI4 1
  loc_729ED7: LitVarStr var_2C4, "!@@@@@@@@@@"
  loc_729EDC: FStVarCopyObj var_284
  loc_729EDF: FLdRfVar var_284
  loc_729EE2: FLdRfVar var_268
  loc_729EE5: ImpAdCallI2 Format$(, )
  loc_729EEA: FStStr var_3D8
  loc_729EED: FLdRfVar var_288
  loc_729EF0: LitVar_Missing var_3D4
  loc_729EF3: LitVar_Missing var_3B4
  loc_729EF6: LitVar_Missing var_394
  loc_729EF9: LitVar_Missing var_374
  loc_729EFC: LitVar_Missing var_354
  loc_729EFF: LitVar_Missing var_334
  loc_729F02: LitVar_Missing var_314
  loc_729F05: LitVar_Missing var_2F4
  loc_729F08: LitVar_Missing var_2D4
  loc_729F0B: LitVar_Missing var_2B4
  loc_729F0E: LitStr " Producto                Patente  Odometro    Monto      Volumen          PPU"
  loc_729F11: FStStrCopy var_270
  loc_729F14: FLdRfVar var_270
  loc_729F17: LitI4 &H2B
  loc_729F1C: PopTmpLdAdStr var_290
  loc_729F1F: LitI2_Byte &H4B
  loc_729F21: PopTmpLdAd2 var_252
  loc_729F24: ImpAdLdRf MemVar_74C7D0
  loc_729F27: NewIfNullPr clsMsg
  loc_729F2A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_729F2F: FLdRfVar var_422
  loc_729F32: FLdRfVar var_F0
  loc_729F35: NewIfNullRf
  loc_729F39: ILdRf var_24C
  loc_729F3C: LitStr "     "
  loc_729F3F: ConcatStr
  loc_729F40: FStStrNoPop var_250
  loc_729F43: FLdZeroAd var_3D8
  loc_729F46: FStStrNoPop var_26C
  loc_729F49: ConcatStr
  loc_729F4A: FStStrNoPop var_28C
  loc_729F4D: ILdRf var_288
  loc_729F50: ConcatStr
  loc_729F51: PopTmpLdAdStr
  loc_729F55: FLdRfVar var_EC
  loc_729F58: NewIfNullPr CReporte
  loc_729F5B: Call 0.Method_arg_5C ()
  loc_729F60: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_28C = "": var_288 = "": var_294 = ""
  loc_729F75: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = ""
  loc_729FA4: LitI2_Byte &HFF
  loc_729FA6: FStI2 var_B6
  loc_729FA9: LitI4 -1
  loc_729FAE: FStR4 var_BC
  loc_729FB1: LitI2_Byte &HFF
  loc_729FB3: FStI2 var_BE
  loc_729FB6: LitI2_Byte &HFF
  loc_729FB8: FStI2 var_C0
  loc_729FBB: LitI4 -1
  loc_729FC0: FStR4 var_C4
  loc_729FC3: LitI2_Byte &HFF
  loc_729FC5: FStI2 var_C6
  loc_729FC8: LitI2_Byte 0
  loc_729FCA: CR8I2
  loc_729FCB: FStFPR4 var_CC
  loc_729FCE: LitI2_Byte 0
  loc_729FD0: CR8I2
  loc_729FD1: FStFPR4 var_D0
  loc_729FD4: LitI2_Byte 0
  loc_729FD6: CR8I2
  loc_729FD7: FStFPR4 var_D4
  loc_729FDA: LitI2_Byte 0
  loc_729FDC: CR8I2
  loc_729FDD: FStFPR4 var_D8
  loc_729FE0: LitI2_Byte 0
  loc_729FE2: CR8I2
  loc_729FE3: FStFPR4 var_DC
  loc_729FE6: LitI2_Byte 0
  loc_729FE8: CR8I2
  loc_729FE9: FStFPR4 var_E0
  loc_729FEC: LitI4 1
  loc_729FF1: FStR4 var_8C
  loc_729FF4: LitI2_Byte &H4A
  loc_729FF6: CUI1I2
  loc_729FF8: FStUI1 var_8E
  loc_729FFC: ILdRf var_8C
  loc_729FFF: ILdRf var_88
  loc_72A002: FnLenStr
  loc_72A003: LeI4
  loc_72A004: BranchF loc_72B1A7
  loc_72A007: LitVarI2 var_128, 2
  loc_72A00C: ILdRf var_8C
  loc_72A00F: FLdRfVar var_88
  loc_72A012: CVarRef
  loc_72A017: FLdRfVar var_148
  loc_72A01A: ImpAdCallFPR4  = Mid(, , )
  loc_72A01F: FLdRfVar var_148
  loc_72A022: LitVarStr var_158, "/"
  loc_72A027: ConcatVar var_168
  loc_72A02B: LitVarI2 var_188, 2
  loc_72A030: ILdRf var_8C
  loc_72A033: LitI4 2
  loc_72A038: AddI4
  loc_72A039: FLdRfVar var_88
  loc_72A03C: CVarRef
  loc_72A041: FLdRfVar var_1A8
  loc_72A044: ImpAdCallFPR4  = Mid(, , )
  loc_72A049: FLdRfVar var_1A8
  loc_72A04C: ConcatVar var_1C8
  loc_72A050: LitVarStr var_1B8, "/"
  loc_72A055: ConcatVar var_1E8
  loc_72A059: LitVarI2 var_208, 4
  loc_72A05E: ILdRf var_8C
  loc_72A061: LitI4 4
  loc_72A066: AddI4
  loc_72A067: FLdRfVar var_88
  loc_72A06A: CVarRef
  loc_72A06F: FLdRfVar var_228
  loc_72A072: ImpAdCallFPR4  = Mid(, , )
  loc_72A077: FLdRfVar var_228
  loc_72A07A: ConcatVar var_248
  loc_72A07E: CStrVarTmp
  loc_72A07F: FStStr var_94
  loc_72A082: FFreeVar var_128 = "": var_148 = "": var_188 = "": var_168 = "": var_1A8 = "": var_1C8 = "": var_208 = "": var_1E8 = "": var_228 = ""
  loc_72A099: LitVarI2 var_128, 2
  loc_72A09E: ILdRf var_8C
  loc_72A0A1: LitI4 8
  loc_72A0A6: AddI4
  loc_72A0A7: FLdRfVar var_88
  loc_72A0AA: CVarRef
  loc_72A0AF: FLdRfVar var_148
  loc_72A0B2: ImpAdCallFPR4  = Mid(, , )
  loc_72A0B7: FLdRfVar var_148
  loc_72A0BA: LitVarStr var_158, ":"
  loc_72A0BF: ConcatVar var_168
  loc_72A0C3: LitVarI2 var_188, 2
  loc_72A0C8: ILdRf var_8C
  loc_72A0CB: LitI4 &HA
  loc_72A0D0: AddI4
  loc_72A0D1: FLdRfVar var_88
  loc_72A0D4: CVarRef
  loc_72A0D9: FLdRfVar var_1A8
  loc_72A0DC: ImpAdCallFPR4  = Mid(, , )
  loc_72A0E1: FLdRfVar var_1A8
  loc_72A0E4: ConcatVar var_1C8
  loc_72A0E8: LitVarStr var_1B8, ":"
  loc_72A0ED: ConcatVar var_1E8
  loc_72A0F1: LitVarI2 var_208, 2
  loc_72A0F6: ILdRf var_8C
  loc_72A0F9: LitI4 &HC
  loc_72A0FE: AddI4
  loc_72A0FF: FLdRfVar var_88
  loc_72A102: CVarRef
  loc_72A107: FLdRfVar var_228
  loc_72A10A: ImpAdCallFPR4  = Mid(, , )
  loc_72A10F: FLdRfVar var_228
  loc_72A112: ConcatVar var_248
  loc_72A116: CStrVarTmp
  loc_72A117: FStStr var_98
  loc_72A11A: FFreeVar var_128 = "": var_148 = "": var_188 = "": var_168 = "": var_1A8 = "": var_1C8 = "": var_208 = "": var_1E8 = "": var_228 = ""
  loc_72A131: LitVarI2 var_128, 2
  loc_72A136: ILdRf var_8C
  loc_72A139: LitI4 &HE
  loc_72A13E: AddI4
  loc_72A13F: FLdRfVar var_88
  loc_72A142: CVarRef
  loc_72A147: FLdRfVar var_148
  loc_72A14A: ImpAdCallFPR4  = Mid(, , )
  loc_72A14F: FLdRfVar var_148
  loc_72A152: CStrVarTmp
  loc_72A153: FStStr var_9C
  loc_72A156: FFreeVar var_128 = ""
  loc_72A15D: LitVarI2 var_128, 1
  loc_72A162: ILdRf var_8C
  loc_72A165: LitI4 &H10
  loc_72A16A: AddI4
  loc_72A16B: FLdRfVar var_88
  loc_72A16E: CVarRef
  loc_72A173: FLdRfVar var_148
  loc_72A176: ImpAdCallFPR4  = Mid(, , )
  loc_72A17B: FLdRfVar var_148
  loc_72A17E: FLdRfVar var_168
  loc_72A181: ImpAdCallFPR4  = Ucase()
  loc_72A186: FLdRfVar var_168
  loc_72A189: CStrVarTmp
  loc_72A18A: FStStr var_B0
  loc_72A18D: FFreeVar var_128 = "": var_148 = ""
  loc_72A196: LitVarI2 var_128, 10
  loc_72A19B: ILdRf var_8C
  loc_72A19E: LitI4 &H11
  loc_72A1A3: AddI4
  loc_72A1A4: ILdRf var_88
  loc_72A1A7: ImpAdCallI2 Mid$(, , )
  loc_72A1AC: FStStr var_250
  loc_72A1AF: FLdRfVar var_24C
  loc_72A1B2: LitI2_Byte 0
  loc_72A1B4: PopTmpLdAd2 var_FE
  loc_72A1B7: FLdZeroAd var_250
  loc_72A1BA: PopTmpLdAdStr
  loc_72A1BE: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_72A1C3: FLdZeroAd var_24C
  loc_72A1C6: FStStr var_A0
  loc_72A1C9: FFreeStr var_108 = ""
  loc_72A1D0: FFree1Var var_128 = ""
  loc_72A1D3: LitVarI2 var_128, 10
  loc_72A1D8: ILdRf var_8C
  loc_72A1DB: LitI4 &H1B
  loc_72A1E0: AddI4
  loc_72A1E1: FLdRfVar var_88
  loc_72A1E4: CVarRef
  loc_72A1E9: FLdRfVar var_148
  loc_72A1EC: ImpAdCallFPR4  = Mid(, , )
  loc_72A1F1: FLdRfVar var_148
  loc_72A1F4: CStrVarVal var_108
  loc_72A1F8: ImpAdCallFPR4 push Val()
  loc_72A1FD: FStFPR8 var_44C
  loc_72A200: LitI4 1
  loc_72A205: LitI4 1
  loc_72A20A: LitVarStr var_178, "#######0.00"
  loc_72A20F: FStVarCopyObj var_188
  loc_72A212: FLdRfVar var_188
  loc_72A215: FLdFPR8 var_44C
  loc_72A218: LitI2_Byte &H64
  loc_72A21A: CR8I2
  loc_72A21B: DivR8
  loc_72A21C: CVarR8
  loc_72A220: ImpAdCallI2 Format$(, )
  loc_72A225: FStStr var_24C
  loc_72A228: LitI4 1
  loc_72A22D: LitI4 1
  loc_72A232: LitVarStr var_198, "@@@@@@@@@@@"
  loc_72A237: FStVarCopyObj var_1C8
  loc_72A23A: FLdRfVar var_1C8
  loc_72A23D: FLdZeroAd var_24C
  loc_72A240: CVarStr var_1A8
  loc_72A243: ImpAdCallI2 Format$(, )
  loc_72A248: FStStr var_A4
  loc_72A24B: FFreeStr var_108 = ""
  loc_72A252: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = ""
  loc_72A261: LitVarI2 var_128, 10
  loc_72A266: ILdRf var_8C
  loc_72A269: LitI4 &H25
  loc_72A26E: AddI4
  loc_72A26F: FLdRfVar var_88
  loc_72A272: CVarRef
  loc_72A277: FLdRfVar var_148
  loc_72A27A: ImpAdCallFPR4  = Mid(, , )
  loc_72A27F: FLdRfVar var_24C
  loc_72A282: LitI2_Byte &HFF
  loc_72A284: PopTmpLdAd2 var_FE
  loc_72A287: FLdRfVar var_148
  loc_72A28A: CStrVarTmp
  loc_72A28B: PopTmpLdAdStr
  loc_72A28F: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_72A294: FLdZeroAd var_24C
  loc_72A297: FStStr var_AC
  loc_72A29A: FFree1Str var_108
  loc_72A29D: FFreeVar var_128 = ""
  loc_72A2A4: LitVarI2 var_128, 1
  loc_72A2A9: ILdRf var_8C
  loc_72A2AC: LitI4 &H2F
  loc_72A2B1: AddI4
  loc_72A2B2: FLdRfVar var_88
  loc_72A2B5: CVarRef
  loc_72A2BA: FLdRfVar var_148
  loc_72A2BD: ImpAdCallFPR4  = Mid(, , )
  loc_72A2C2: FLdRfVar var_148
  loc_72A2C5: CStrVarVal var_108
  loc_72A2C9: ImpAdCallFPR4 push Val()
  loc_72A2CE: FStFPR8 var_44C
  loc_72A2D1: FLdRfVar var_24C
  loc_72A2D4: FLdFPR8 var_44C
  loc_72A2D7: CI2R8
  loc_72A2D8: ImpAdLdRf MemVar_74A220
  loc_72A2DB: NewIfNullPr clsProducts
  loc_72A2E3: LitI4 &H19
  loc_72A2E8: FLdZeroAd var_24C
  loc_72A2EB: CVarStr var_168
  loc_72A2EE: FLdRfVar var_188
  loc_72A2F1: ImpAdCallFPR4  = Left(, )
  loc_72A2F6: LitI2_Byte &HFF
  loc_72A2F8: PopTmpLdAd2 var_252
  loc_72A2FB: LitI2_Byte &H19
  loc_72A2FD: PopTmpLdAd2 var_FE
  loc_72A300: LitStr " "
  loc_72A303: FStStrCopy var_26C
  loc_72A306: FLdRfVar var_26C
  loc_72A309: FLdRfVar var_188
  loc_72A30C: CStrVarTmp
  loc_72A30D: PopTmpLdAdStr
  loc_72A311: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_72A316: FStStr var_A8
  loc_72A319: FFreeStr var_108 = "": var_250 = ""
  loc_72A322: FFreeVar var_128 = "": var_148 = "": var_168 = ""
  loc_72A32D: LitVarI2 var_128, 3
  loc_72A332: ILdRf var_8C
  loc_72A335: LitI4 &H31
  loc_72A33A: AddI4
  loc_72A33B: ILdRf var_88
  loc_72A33E: ImpAdCallI2 Mid$(, , )
  loc_72A343: FStStrNoPop var_108
  loc_72A346: CI2Str
  loc_72A348: FStI2 var_B6
  loc_72A34B: FFree1Str var_108
  loc_72A34E: FFree1Var var_128 = ""
  loc_72A351: LitVarI2 var_128, 4
  loc_72A356: ILdRf var_8C
  loc_72A359: LitI4 &H34
  loc_72A35E: AddI4
  loc_72A35F: ILdRf var_88
  loc_72A362: ImpAdCallI2 Mid$(, , )
  loc_72A367: FStStrNoPop var_108
  loc_72A36A: CI4Str
  loc_72A36B: CI2I4
  loc_72A36C: FStI2 var_BE
  loc_72A36F: FFree1Str var_108
  loc_72A372: FFree1Var var_128 = ""
  loc_72A375: LitVarI2 var_128, 5
  loc_72A37A: ILdRf var_8C
  loc_72A37D: LitI4 &H38
  loc_72A382: AddI4
  loc_72A383: ILdRf var_88
  loc_72A386: ImpAdCallI2 Mid$(, , )
  loc_72A38B: FStStrNoPop var_108
  loc_72A38E: CI2Str
  loc_72A390: CI4UI1
  loc_72A391: FStR4 var_BC
  loc_72A394: FFree1Str var_108
  loc_72A397: FFree1Var var_128 = ""
  loc_72A39A: ImpAdLdI2 MemVar_74C3A8
  loc_72A39D: FLdI2 var_B6
  loc_72A3A0: EqI2
  loc_72A3A1: LitStr "0"
  loc_72A3A4: LitVarI2 var_128, 6
  loc_72A3A9: ILdRf var_8C
  loc_72A3AC: LitI4 &H3D
  loc_72A3B1: AddI4
  loc_72A3B2: ILdRf var_88
  loc_72A3B5: ImpAdCallI2 Mid$(, , )
  loc_72A3BA: FStStrNoPop var_108
  loc_72A3BD: ConcatStr
  loc_72A3BE: FStStrNoPop var_24C
  loc_72A3C1: CI4Str
  loc_72A3C2: LitI4 0
  loc_72A3C7: EqI4
  loc_72A3C8: OrI4
  loc_72A3C9: FFreeStr var_108 = ""
  loc_72A3D0: FFree1Var var_128 = ""
  loc_72A3D3: BranchF loc_72A3DF
  loc_72A3D6: LitStr "      "
  loc_72A3D9: FStStrCopy var_F8
  loc_72A3DC: Branch loc_72A459
  loc_72A3DF: LitVarI2 var_128, 6
  loc_72A3E4: ILdRf var_8C
  loc_72A3E7: LitI4 &H3D
  loc_72A3EC: AddI4
  loc_72A3ED: ILdRf var_88
  loc_72A3F0: ImpAdCallI2 Mid$(, , )
  loc_72A3F5: FStStr var_24C
  loc_72A3F8: LitI4 1
  loc_72A3FD: LitI4 1
  loc_72A402: LitVarStr var_158, "#0"
  loc_72A407: FStVarCopyObj var_168
  loc_72A40A: FLdRfVar var_168
  loc_72A40D: FLdZeroAd var_24C
  loc_72A410: FStStrNoPop var_108
  loc_72A413: CI4Str
  loc_72A414: CVarI4
  loc_72A418: ImpAdCallI2 Format$(, )
  loc_72A41D: FStStr var_250
  loc_72A420: LitI4 1
  loc_72A425: LitI4 1
  loc_72A42A: LitVarStr var_178, "@@@@@@"
  loc_72A42F: FStVarCopyObj var_1A8
  loc_72A432: FLdRfVar var_1A8
  loc_72A435: FLdZeroAd var_250
  loc_72A438: CVarStr var_188
  loc_72A43B: ImpAdCallI2 Format$(, )
  loc_72A440: FStStr var_F8
  loc_72A443: FFreeStr var_108 = "": var_24C = ""
  loc_72A44C: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = ""
  loc_72A459: LitVarI2 var_128, 7
  loc_72A45E: ILdRf var_8C
  loc_72A461: LitI4 &H43
  loc_72A466: AddI4
  loc_72A467: ILdRf var_88
  loc_72A46A: ImpAdCallI2 Mid$(, , )
  loc_72A46F: CVarStr var_168
  loc_72A472: LitVarStr var_158, "       "
  loc_72A477: FStVarCopyObj var_148
  loc_72A47A: FLdRfVar var_148
  loc_72A47D: ImpAdLdI2 MemVar_74C3A8
  loc_72A480: FLdI2 var_B6
  loc_72A483: EqI2
  loc_72A484: CVarBoolI2 var_138
  loc_72A488: FLdRfVar var_188
  loc_72A48B: ImpAdCallFPR4  = IIf(, , )
  loc_72A490: FLdRfVar var_188
  loc_72A493: CStrVarTmp
  loc_72A494: FStStr var_F4
  loc_72A497: FFreeVar var_128 = "": var_138 = "": var_148 = "": var_168 = ""
  loc_72A4A4: FLdI2 var_C6
  loc_72A4A7: FLdI2 var_BE
  loc_72A4AA: NeI2
  loc_72A4AB: ILdRf var_C4
  loc_72A4AE: ILdRf var_BC
  loc_72A4B1: NeI4
  loc_72A4B2: OrI4
  loc_72A4B3: FLdI2 var_C0
  loc_72A4B6: FLdI2 var_B6
  loc_72A4B9: NeI2
  loc_72A4BA: OrI4
  loc_72A4BB: BranchF loc_72A971
  loc_72A4BE: FLdI2 var_C6
  loc_72A4C1: LitI2_Byte &HFF
  loc_72A4C3: NeI2
  loc_72A4C4: BranchF loc_72A95F
  loc_72A4C7: FLdI2 var_C0
  loc_72A4CA: LitI2 800
  loc_72A4CD: GtI2
  loc_72A4CE: FLdI2 var_C0
  loc_72A4D1: LitI2_Byte 0
  loc_72A4D3: EqI2
  loc_72A4D4: OrI4
  loc_72A4D5: BranchF loc_72A4DB
  loc_72A4D8: Branch loc_72A95F
  loc_72A4DB: FLdRfVar var_108
  loc_72A4DE: FLdI2 var_C6
  loc_72A4E1: from_stack_2v = Proc_129_12_5F20E8(from_stack_1v)
  loc_72A4E6: FLdZeroAd var_108
  loc_72A4E9: FStStr var_B4
  loc_72A4EC: ILdRf var_B4
  loc_72A4EF: LitStr vbNullString
  loc_72A4F2: EqStr
  loc_72A4F4: BranchF loc_72A6F5
  loc_72A4F7: FLdRfVar var_24C
  loc_72A4FA: LitVar_Missing var_248
  loc_72A4FD: LitVar_Missing var_228
  loc_72A500: LitVar_Missing var_208
  loc_72A503: LitVar_Missing var_1E8
  loc_72A506: LitVar_Missing var_1C8
  loc_72A509: LitVar_Missing var_1A8
  loc_72A50C: LitVar_Missing var_188
  loc_72A50F: LitVar_Missing var_168
  loc_72A512: LitVar_Missing var_148
  loc_72A515: LitVar_Missing var_128
  loc_72A518: LitStr "Usuario:"
  loc_72A51B: FStStrCopy var_108
  loc_72A51E: FLdRfVar var_108
  loc_72A521: LitI4 &H1D
  loc_72A526: PopTmpLdAdStr var_104
  loc_72A529: LitI2_Byte &H4B
  loc_72A52B: PopTmpLdAd2 var_FE
  loc_72A52E: ImpAdLdRf MemVar_74C7D0
  loc_72A531: NewIfNullPr clsMsg
  loc_72A534: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72A539: LitI4 1
  loc_72A53E: LitI4 1
  loc_72A543: LitVarStr var_2C4, "@@@@"
  loc_72A548: FStVarCopyObj var_268
  loc_72A54B: FLdRfVar var_268
  loc_72A54E: FLdRfVar var_C6
  loc_72A551: CVarRef
  loc_72A556: ImpAdCallI2 Format$(, )
  loc_72A55B: FStStr var_288
  loc_72A55E: LitI4 &HD
  loc_72A563: FLdRfVar var_284
  loc_72A566: ImpAdCallFPR4  = Space()
  loc_72A56B: LitI4 &H12
  loc_72A570: FLdRfVar var_2F4
  loc_72A573: ImpAdCallFPR4  = Space()
  loc_72A578: LitI4 &H17
  loc_72A57D: FLdRfVar var_334
  loc_72A580: ImpAdCallFPR4  = Space()
  loc_72A585: LitI4 1
  loc_72A58A: LitI4 1
  loc_72A58F: ImpAdLdRf MemVar_74C364
  loc_72A592: CVarRef
  loc_72A597: FLdRfVar var_DC
  loc_72A59A: CVarRef
  loc_72A59F: ImpAdCallI2 Format$(, )
  loc_72A5A4: FStStr var_28C
  loc_72A5A7: LitI4 1
  loc_72A5AC: LitI4 1
  loc_72A5B1: LitVarStr var_324, "@@@@@@@@@@@"
  loc_72A5B6: FStVarCopyObj var_394
  loc_72A5B9: FLdRfVar var_394
  loc_72A5BC: FLdZeroAd var_28C
  loc_72A5BF: CVarStr var_374
  loc_72A5C2: ImpAdCallI2 Format$(, )
  loc_72A5C7: FStStr var_294
  loc_72A5CA: LitI4 2
  loc_72A5CF: FLdRfVar var_3F4
  loc_72A5D2: ImpAdCallFPR4  = Space()
  loc_72A5D7: LitI4 1
  loc_72A5DC: LitI4 1
  loc_72A5E1: LitVarStr var_364, "#######0.00"
  loc_72A5E6: FStVarCopyObj var_45C
  loc_72A5E9: FLdRfVar var_45C
  loc_72A5EC: FLdRfVar var_E0
  loc_72A5EF: CVarRef
  loc_72A5F4: ImpAdCallI2 Format$(, )
  loc_72A5F9: FStStr var_3D8
  loc_72A5FC: LitI4 1
  loc_72A601: LitI4 1
  loc_72A606: LitVarStr var_384, "@@@@@@@@@@@"
  loc_72A60B: FStVarCopyObj var_47C
  loc_72A60E: FLdRfVar var_47C
  loc_72A611: FLdZeroAd var_3D8
  loc_72A614: CVarStr var_46C
  loc_72A617: ImpAdCallI2 Format$(, )
  loc_72A61C: FStStr var_3DC
  loc_72A61F: FLdRfVar var_252
  loc_72A622: FLdRfVar var_F0
  loc_72A625: NewIfNullRf
  loc_72A629: ILdRf var_24C
  loc_72A62C: LitStr " "
  loc_72A62F: ConcatStr
  loc_72A630: FStStrNoPop var_250
  loc_72A633: FLdZeroAd var_288
  loc_72A636: FStStrNoPop var_26C
  loc_72A639: ConcatStr
  loc_72A63A: CVarStr var_2B4
  loc_72A63D: FLdRfVar var_284
  loc_72A640: ConcatVar var_2D4
  loc_72A644: FLdRfVar var_2F4
  loc_72A647: ConcatVar var_314
  loc_72A64B: FLdRfVar var_334
  loc_72A64E: ConcatVar var_354
  loc_72A652: FLdZeroAd var_294
  loc_72A655: CVarStr var_3B4
  loc_72A658: ConcatVar var_3D4
  loc_72A65C: FLdRfVar var_3F4
  loc_72A65F: ConcatVar var_414
  loc_72A663: FLdZeroAd var_3DC
  loc_72A666: CVarStr var_48C
  loc_72A669: ConcatVar var_49C
  loc_72A66D: CStrVarTmp
  loc_72A66E: PopTmpLdAdStr
  loc_72A672: FLdRfVar var_EC
  loc_72A675: NewIfNullPr CReporte
  loc_72A678:  = CReporte.ForeColor
  loc_72A67D: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = ""
  loc_72A694: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_2B4 = "": var_284 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_374 = "": var_394 = "": var_354 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_45C = "": var_46C = "": var_47C = "": var_414 = "": var_48C = ""
  loc_72A6D1: FLdRfVar var_FE
  loc_72A6D4: FLdRfVar var_F0
  loc_72A6D7: NewIfNullRf
  loc_72A6DB: LitStr vbNullString
  loc_72A6DE: FStStrCopy var_108
  loc_72A6E1: FLdRfVar var_108
  loc_72A6E4: FLdRfVar var_EC
  loc_72A6E7: NewIfNullPr CReporte
  loc_72A6EA:  = CReporte.ForeColor
  loc_72A6EF: FFree1Str var_108
  loc_72A6F2: Branch loc_72A95F
  loc_72A6F5: FLdRfVar var_24C
  loc_72A6F8: LitVar_Missing var_248
  loc_72A6FB: LitVar_Missing var_228
  loc_72A6FE: LitVar_Missing var_208
  loc_72A701: LitVar_Missing var_1E8
  loc_72A704: LitVar_Missing var_1C8
  loc_72A707: LitVar_Missing var_1A8
  loc_72A70A: LitVar_Missing var_188
  loc_72A70D: LitVar_Missing var_168
  loc_72A710: LitVar_Missing var_148
  loc_72A713: LitVar_Missing var_128
  loc_72A716: LitStr "Usuario:"
  loc_72A719: FStStrCopy var_108
  loc_72A71C: FLdRfVar var_108
  loc_72A71F: LitI4 &H1D
  loc_72A724: PopTmpLdAdStr var_104
  loc_72A727: LitI2_Byte &H4B
  loc_72A729: PopTmpLdAd2 var_FE
  loc_72A72C: ImpAdLdRf MemVar_74C7D0
  loc_72A72F: NewIfNullPr clsMsg
  loc_72A732: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72A737: LitI4 1
  loc_72A73C: LitI4 1
  loc_72A741: LitVarStr var_2C4, "@@@@"
  loc_72A746: FStVarCopyObj var_268
  loc_72A749: FLdRfVar var_268
  loc_72A74C: FLdRfVar var_C6
  loc_72A74F: CVarRef
  loc_72A754: ImpAdCallI2 Format$(, )
  loc_72A759: FStStr var_3D8
  loc_72A75C: LitI4 &HF
  loc_72A761: ILdRf var_B4
  loc_72A764: ImpAdCallI2 Left$(, )
  loc_72A769: FStStr var_3DC
  loc_72A76C: LitVarStr var_2E4, "@"
  loc_72A771: FStVarCopyObj var_284
  loc_72A774: FLdRfVar var_284
  loc_72A777: LitI4 &HF
  loc_72A77C: FLdRfVar var_2B4
  loc_72A77F: ImpAdCallFPR4  = String(, )
  loc_72A784: LitI4 1
  loc_72A789: LitI4 1
  loc_72A78E: LitVarStr var_304, "!"
  loc_72A793: FLdRfVar var_2B4
  loc_72A796: ConcatVar var_2D4
  loc_72A79A: FLdZeroAd var_3DC
  loc_72A79D: CVarStr var_2F4
  loc_72A7A0: ImpAdCallI2 Format$(, )
  loc_72A7A5: FStStr var_3E0
  loc_72A7A8: LitI4 &HD
  loc_72A7AD: FLdRfVar var_314
  loc_72A7B0: ImpAdCallFPR4  = Space()
  loc_72A7B5: LitI4 &HA
  loc_72A7BA: FLdRfVar var_374
  loc_72A7BD: ImpAdCallFPR4  = Space()
  loc_72A7C2: LitI4 &HD
  loc_72A7C7: FLdRfVar var_3B4
  loc_72A7CA: ImpAdCallFPR4  = Space()
  loc_72A7CF: LitI4 1
  loc_72A7D4: LitI4 1
  loc_72A7D9: ImpAdLdRf MemVar_74C364
  loc_72A7DC: CVarRef
  loc_72A7E1: FLdRfVar var_DC
  loc_72A7E4: CVarRef
  loc_72A7E9: ImpAdCallI2 Format$(, )
  loc_72A7EE: FStStr var_3F8
  loc_72A7F1: LitI4 1
  loc_72A7F6: LitI4 1
  loc_72A7FB: LitVarStr var_364, "@@@@@@@@@@@"
  loc_72A800: FStVarCopyObj var_414
  loc_72A803: FLdRfVar var_414
  loc_72A806: FLdZeroAd var_3F8
  loc_72A809: CVarStr var_3F4
  loc_72A80C: ImpAdCallI2 Format$(, )
  loc_72A811: FStStr var_3FC
  loc_72A814: LitI4 2
  loc_72A819: FLdRfVar var_47C
  loc_72A81C: ImpAdCallFPR4  = Space()
  loc_72A821: LitI4 1
  loc_72A826: LitI4 1
  loc_72A82B: LitVarStr var_3A4, "#######0.00"
  loc_72A830: FStVarCopyObj var_49C
  loc_72A833: FLdRfVar var_49C
  loc_72A836: FLdRfVar var_E0
  loc_72A839: CVarRef
  loc_72A83E: ImpAdCallI2 Format$(, )
  loc_72A843: FStStr var_400
  loc_72A846: LitI4 1
  loc_72A84B: LitI4 1
  loc_72A850: LitVarStr var_3C4, "@@@@@@@@@@@"
  loc_72A855: FStVarCopyObj var_4BC
  loc_72A858: FLdRfVar var_4BC
  loc_72A85B: FLdZeroAd var_400
  loc_72A85E: CVarStr var_4AC
  loc_72A861: ImpAdCallI2 Format$(, )
  loc_72A866: FStStr var_418
  loc_72A869: FLdRfVar var_252
  loc_72A86C: FLdRfVar var_F0
  loc_72A86F: NewIfNullRf
  loc_72A873: ILdRf var_24C
  loc_72A876: LitStr " "
  loc_72A879: ConcatStr
  loc_72A87A: FStStrNoPop var_250
  loc_72A87D: FLdZeroAd var_3D8
  loc_72A880: FStStrNoPop var_26C
  loc_72A883: ConcatStr
  loc_72A884: FStStrNoPop var_270
  loc_72A887: LitStr " _ "
  loc_72A88A: ConcatStr
  loc_72A88B: FStStrNoPop var_288
  loc_72A88E: FLdZeroAd var_3E0
  loc_72A891: FStStrNoPop var_28C
  loc_72A894: ConcatStr
  loc_72A895: CVarStr var_334
  loc_72A898: FLdRfVar var_314
  loc_72A89B: ConcatVar var_354
  loc_72A89F: FLdRfVar var_374
  loc_72A8A2: ConcatVar var_394
  loc_72A8A6: FLdRfVar var_3B4
  loc_72A8A9: ConcatVar var_3D4
  loc_72A8AD: FLdZeroAd var_3FC
  loc_72A8B0: CVarStr var_45C
  loc_72A8B3: ConcatVar var_46C
  loc_72A8B7: FLdRfVar var_47C
  loc_72A8BA: ConcatVar var_48C
  loc_72A8BE: FLdZeroAd var_418
  loc_72A8C1: CVarStr var_4CC
  loc_72A8C4: ConcatVar var_4DC
  loc_72A8C8: CStrVarTmp
  loc_72A8C9: PopTmpLdAdStr
  loc_72A8CD: FLdRfVar var_EC
  loc_72A8D0: NewIfNullPr CReporte
  loc_72A8D3:  = CReporte.ForeColor
  loc_72A8D8: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3F8 = "": var_3FC = "": var_400 = ""
  loc_72A8F9: FFreeVar var_48C = "": var_4CC = "": var_4DC = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2F4 = "": var_2D4 = "": var_334 = "": var_314 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_414 = "": var_3D4 = "": var_45C = "": var_46C = "": var_47C = "": var_49C = "": var_4AC = ""
  loc_72A93E: FLdRfVar var_FE
  loc_72A941: FLdRfVar var_F0
  loc_72A944: NewIfNullRf
  loc_72A948: LitStr vbNullString
  loc_72A94B: FStStrCopy var_108
  loc_72A94E: FLdRfVar var_108
  loc_72A951: FLdRfVar var_EC
  loc_72A954: NewIfNullPr CReporte
  loc_72A957:  = CReporte.ForeColor
  loc_72A95C: FFree1Str var_108
  loc_72A95F: LitI2_Byte 0
  loc_72A961: CR8I2
  loc_72A962: FStFPR4 var_DC
  loc_72A965: LitI2_Byte 0
  loc_72A967: CR8I2
  loc_72A968: FStFPR4 var_E0
  loc_72A96B: FLdI2 var_BE
  loc_72A96E: FStI2 var_C6
  loc_72A971: ILdRf var_C4
  loc_72A974: ILdRf var_BC
  loc_72A977: NeI4
  loc_72A978: FLdI2 var_C0
  loc_72A97B: FLdI2 var_B6
  loc_72A97E: NeI2
  loc_72A97F: OrI4
  loc_72A980: BranchF loc_72AC36
  loc_72A983: ILdRf var_C4
  loc_72A986: LitI4 -1
  loc_72A98B: NeI4
  loc_72A98C: FLdI2 var_C0
  loc_72A98F: LitI2 800
  loc_72A992: GtI2
  loc_72A993: FLdI2 var_C0
  loc_72A996: LitI2_Byte 0
  loc_72A998: EqI2
  loc_72A999: OrI4
  loc_72A99A: AndI4
  loc_72A99B: BranchF loc_72AC24
  loc_72A99E: FLdRfVar var_24C
  loc_72A9A1: LitVar_Missing var_248
  loc_72A9A4: LitVar_Missing var_228
  loc_72A9A7: LitVar_Missing var_208
  loc_72A9AA: LitVar_Missing var_1E8
  loc_72A9AD: LitVar_Missing var_1C8
  loc_72A9B0: LitVar_Missing var_1A8
  loc_72A9B3: LitVar_Missing var_188
  loc_72A9B6: LitVar_Missing var_168
  loc_72A9B9: LitVar_Missing var_148
  loc_72A9BC: LitVar_Missing var_128
  loc_72A9BF: LitStr "Grupo:"
  loc_72A9C2: FStStrCopy var_108
  loc_72A9C5: FLdRfVar var_108
  loc_72A9C8: LitI4 &H1A
  loc_72A9CD: PopTmpLdAdStr var_104
  loc_72A9D0: LitI2_Byte &H4B
  loc_72A9D2: PopTmpLdAd2 var_FE
  loc_72A9D5: ImpAdLdRf MemVar_74C7D0
  loc_72A9D8: NewIfNullPr clsMsg
  loc_72A9DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72A9E0: LitI4 1
  loc_72A9E5: LitI4 1
  loc_72A9EA: LitVarStr var_2C4, "@@@"
  loc_72A9EF: FStVarCopyObj var_268
  loc_72A9F2: FLdRfVar var_268
  loc_72A9F5: FLdRfVar var_C0
  loc_72A9F8: CVarRef
  loc_72A9FD: ImpAdCallI2 Format$(, )
  loc_72AA02: FStStr var_3F8
  loc_72AA05: FLdRfVar var_288
  loc_72AA08: LitVar_Missing var_3B4
  loc_72AA0B: LitVar_Missing var_394
  loc_72AA0E: LitVar_Missing var_374
  loc_72AA11: LitVar_Missing var_354
  loc_72AA14: LitVar_Missing var_334
  loc_72AA17: LitVar_Missing var_314
  loc_72AA1A: LitVar_Missing var_2F4
  loc_72AA1D: LitVar_Missing var_2D4
  loc_72AA20: LitVar_Missing var_2B4
  loc_72AA23: LitVar_Missing var_284
  loc_72AA26: LitStr " - Compañía:"
  loc_72AA29: FStStrCopy var_270
  loc_72AA2C: FLdRfVar var_270
  loc_72AA2F: LitI4 &H1B
  loc_72AA34: PopTmpLdAdStr var_290
  loc_72AA37: LitI2_Byte &H4B
  loc_72AA39: PopTmpLdAd2 var_252
  loc_72AA3C: ImpAdLdRf MemVar_74C7D0
  loc_72AA3F: NewIfNullPr clsMsg
  loc_72AA42: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72AA47: LitI4 1
  loc_72AA4C: LitI4 1
  loc_72AA51: LitVarStr var_4FC, "!@@@@"
  loc_72AA56: FStVarCopyObj var_3D4
  loc_72AA59: FLdRfVar var_3D4
  loc_72AA5C: FLdRfVar var_C4
  loc_72AA5F: CVarRef
  loc_72AA64: ImpAdCallI2 Format$(, )
  loc_72AA69: FStStr var_3FC
  loc_72AA6C: LitI4 &H1B
  loc_72AA71: FLdRfVar var_3F4
  loc_72AA74: ImpAdCallFPR4  = Space()
  loc_72AA79: LitI4 &HD
  loc_72AA7E: FLdRfVar var_46C
  loc_72AA81: ImpAdCallFPR4  = Space()
  loc_72AA86: LitI4 1
  loc_72AA8B: LitI4 1
  loc_72AA90: ImpAdLdRf MemVar_74C364
  loc_72AA93: CVarRef
  loc_72AA98: FLdRfVar var_D4
  loc_72AA9B: CVarRef
  loc_72AAA0: ImpAdCallI2 Format$(, )
  loc_72AAA5: FStStr var_400
  loc_72AAA8: LitI4 1
  loc_72AAAD: LitI4 1
  loc_72AAB2: LitVarStr var_52C, "@@@@@@@@@@@"
  loc_72AAB7: FStVarCopyObj var_49C
  loc_72AABA: FLdRfVar var_49C
  loc_72AABD: FLdZeroAd var_400
  loc_72AAC0: CVarStr var_48C
  loc_72AAC3: ImpAdCallI2 Format$(, )
  loc_72AAC8: FStStr var_418
  loc_72AACB: LitI4 2
  loc_72AAD0: FLdRfVar var_4CC
  loc_72AAD3: ImpAdCallFPR4  = Space()
  loc_72AAD8: LitI4 1
  loc_72AADD: LitI4 1
  loc_72AAE2: LitVarStr var_54C, "#######0.00"
  loc_72AAE7: FStVarCopyObj var_55C
  loc_72AAEA: FLdRfVar var_55C
  loc_72AAED: FLdRfVar var_D8
  loc_72AAF0: CVarRef
  loc_72AAF5: ImpAdCallI2 Format$(, )
  loc_72AAFA: FStStr var_41C
  loc_72AAFD: LitI4 1
  loc_72AB02: LitI4 1
  loc_72AB07: LitVarStr var_57C, "@@@@@@@@@@@"
  loc_72AB0C: FStVarCopyObj var_58C
  loc_72AB0F: FLdRfVar var_58C
  loc_72AB12: FLdZeroAd var_41C
  loc_72AB15: CVarStr var_56C
  loc_72AB18: ImpAdCallI2 Format$(, )
  loc_72AB1D: FStStr var_420
  loc_72AB20: FLdRfVar var_422
  loc_72AB23: FLdRfVar var_F0
  loc_72AB26: NewIfNullRf
  loc_72AB2A: ILdRf var_24C
  loc_72AB2D: LitStr " "
  loc_72AB30: ConcatStr
  loc_72AB31: FStStrNoPop var_250
  loc_72AB34: FLdZeroAd var_3F8
  loc_72AB37: FStStrNoPop var_26C
  loc_72AB3A: ConcatStr
  loc_72AB3B: FStStrNoPop var_28C
  loc_72AB3E: ILdRf var_288
  loc_72AB41: ConcatStr
  loc_72AB42: FStStrNoPop var_294
  loc_72AB45: LitStr " "
  loc_72AB48: ConcatStr
  loc_72AB49: FStStrNoPop var_3D8
  loc_72AB4C: FLdZeroAd var_3FC
  loc_72AB4F: FStStrNoPop var_3DC
  loc_72AB52: ConcatStr
  loc_72AB53: CVarStr var_414
  loc_72AB56: FLdRfVar var_3F4
  loc_72AB59: ConcatVar var_45C
  loc_72AB5D: FLdRfVar var_46C
  loc_72AB60: ConcatVar var_47C
  loc_72AB64: FLdZeroAd var_418
  loc_72AB67: CVarStr var_4AC
  loc_72AB6A: ConcatVar var_4BC
  loc_72AB6E: FLdRfVar var_4CC
  loc_72AB71: ConcatVar var_4DC
  loc_72AB75: FLdZeroAd var_420
  loc_72AB78: CVarStr var_59C
  loc_72AB7B: ConcatVar var_5AC
  loc_72AB7F: CStrVarTmp
  loc_72AB80: PopTmpLdAdStr
  loc_72AB84: FLdRfVar var_EC
  loc_72AB87: NewIfNullPr CReporte
  loc_72AB8A:  = CReporte.ForeColor
  loc_72AB8F: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_28C = "": var_288 = "": var_294 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_418 = "": var_41C = ""
  loc_72ABB4: FFreeVar var_4BC = "": var_4CC = "": var_55C = "": var_56C = "": var_58C = "": var_4DC = "": var_59C = "": var_5AC = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_414 = "": var_3F4 = "": var_45C = "": var_46C = "": var_48C = "": var_49C = "": var_47C = ""
  loc_72AC03: FLdRfVar var_FE
  loc_72AC06: FLdRfVar var_F0
  loc_72AC09: NewIfNullRf
  loc_72AC0D: LitStr " "
  loc_72AC10: FStStrCopy var_108
  loc_72AC13: FLdRfVar var_108
  loc_72AC16: FLdRfVar var_EC
  loc_72AC19: NewIfNullPr CReporte
  loc_72AC1C:  = CReporte.ForeColor
  loc_72AC21: FFree1Str var_108
  loc_72AC24: LitI2_Byte 0
  loc_72AC26: CR8I2
  loc_72AC27: FStFPR4 var_D4
  loc_72AC2A: LitI2_Byte 0
  loc_72AC2C: CR8I2
  loc_72AC2D: FStFPR4 var_D8
  loc_72AC30: ILdRf var_BC
  loc_72AC33: FStR4 var_C4
  loc_72AC36: FLdI2 var_C0
  loc_72AC39: FLdI2 var_B6
  loc_72AC3C: NeI2
  loc_72AC3D: BranchF loc_72AFFE
  loc_72AC40: FLdI2 var_C0
  loc_72AC43: LitI2_Byte &HFF
  loc_72AC45: NeI2
  loc_72AC46: BranchF loc_72AFEC
  loc_72AC49: FLdI2 var_C0
  loc_72AC4C: LitI2 800
  loc_72AC4F: GtI2
  loc_72AC50: FLdI2 var_C0
  loc_72AC53: LitI2_Byte 0
  loc_72AC55: EqI2
  loc_72AC56: OrI4
  loc_72AC57: BranchF loc_72AE1F
  loc_72AC5A: FLdRfVar var_24C
  loc_72AC5D: LitVar_Missing var_248
  loc_72AC60: LitVar_Missing var_228
  loc_72AC63: LitVar_Missing var_208
  loc_72AC66: LitVar_Missing var_1E8
  loc_72AC69: LitVar_Missing var_1C8
  loc_72AC6C: LitVar_Missing var_1A8
  loc_72AC6F: LitVar_Missing var_188
  loc_72AC72: LitVar_Missing var_168
  loc_72AC75: LitVar_Missing var_148
  loc_72AC78: LitVar_Missing var_128
  loc_72AC7B: LitStr "Grupo:"
  loc_72AC7E: FStStrCopy var_108
  loc_72AC81: FLdRfVar var_108
  loc_72AC84: LitI4 &H1A
  loc_72AC89: PopTmpLdAdStr var_104
  loc_72AC8C: LitI2_Byte &H4B
  loc_72AC8E: PopTmpLdAd2 var_FE
  loc_72AC91: ImpAdLdRf MemVar_74C7D0
  loc_72AC94: NewIfNullPr clsMsg
  loc_72AC97: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72AC9C: LitI4 1
  loc_72ACA1: LitI4 1
  loc_72ACA6: LitVarStr var_2C4, "@@@"
  loc_72ACAB: FStVarCopyObj var_268
  loc_72ACAE: FLdRfVar var_268
  loc_72ACB1: FLdRfVar var_C0
  loc_72ACB4: CVarRef
  loc_72ACB9: ImpAdCallI2 Format$(, )
  loc_72ACBE: FStStr var_288
  loc_72ACC1: LitI4 &H2C
  loc_72ACC6: FLdRfVar var_284
  loc_72ACC9: ImpAdCallFPR4  = Space()
  loc_72ACCE: LitI4 &HD
  loc_72ACD3: FLdRfVar var_2F4
  loc_72ACD6: ImpAdCallFPR4  = Space()
  loc_72ACDB: LitI4 1
  loc_72ACE0: LitI4 1
  loc_72ACE5: ImpAdLdRf MemVar_74C364
  loc_72ACE8: CVarRef
  loc_72ACED: FLdRfVar var_CC
  loc_72ACF0: CVarRef
  loc_72ACF5: ImpAdCallI2 Format$(, )
  loc_72ACFA: FStStr var_28C
  loc_72ACFD: LitI4 1
  loc_72AD02: LitI4 1
  loc_72AD07: LitVarStr var_324, "@@@@@@@@@@@"
  loc_72AD0C: FStVarCopyObj var_354
  loc_72AD0F: FLdRfVar var_354
  loc_72AD12: FLdZeroAd var_28C
  loc_72AD15: CVarStr var_334
  loc_72AD18: ImpAdCallI2 Format$(, )
  loc_72AD1D: FStStr var_294
  loc_72AD20: LitI4 2
  loc_72AD25: FLdRfVar var_3B4
  loc_72AD28: ImpAdCallFPR4  = Space()
  loc_72AD2D: LitI4 1
  loc_72AD32: LitI4 1
  loc_72AD37: LitVarStr var_364, "#######0.00"
  loc_72AD3C: FStVarCopyObj var_3F4
  loc_72AD3F: FLdRfVar var_3F4
  loc_72AD42: FLdRfVar var_D0
  loc_72AD45: CVarRef
  loc_72AD4A: ImpAdCallI2 Format$(, )
  loc_72AD4F: FStStr var_3D8
  loc_72AD52: LitI4 1
  loc_72AD57: LitI4 1
  loc_72AD5C: LitVarStr var_384, "@@@@@@@@@@@"
  loc_72AD61: FStVarCopyObj var_45C
  loc_72AD64: FLdRfVar var_45C
  loc_72AD67: FLdZeroAd var_3D8
  loc_72AD6A: CVarStr var_414
  loc_72AD6D: ImpAdCallI2 Format$(, )
  loc_72AD72: FStStr var_3DC
  loc_72AD75: FLdRfVar var_252
  loc_72AD78: FLdRfVar var_F0
  loc_72AD7B: NewIfNullRf
  loc_72AD7F: ILdRf var_24C
  loc_72AD82: LitStr " "
  loc_72AD85: ConcatStr
  loc_72AD86: FStStrNoPop var_250
  loc_72AD89: FLdZeroAd var_288
  loc_72AD8C: FStStrNoPop var_26C
  loc_72AD8F: ConcatStr
  loc_72AD90: CVarStr var_2B4
  loc_72AD93: FLdRfVar var_284
  loc_72AD96: ConcatVar var_2D4
  loc_72AD9A: FLdRfVar var_2F4
  loc_72AD9D: ConcatVar var_314
  loc_72ADA1: FLdZeroAd var_294
  loc_72ADA4: CVarStr var_374
  loc_72ADA7: ConcatVar var_394
  loc_72ADAB: FLdRfVar var_3B4
  loc_72ADAE: ConcatVar var_3D4
  loc_72ADB2: FLdZeroAd var_3DC
  loc_72ADB5: CVarStr var_46C
  loc_72ADB8: ConcatVar var_47C
  loc_72ADBC: CStrVarTmp
  loc_72ADBD: PopTmpLdAdStr
  loc_72ADC1: FLdRfVar var_EC
  loc_72ADC4: NewIfNullPr CReporte
  loc_72ADC7:  = CReporte.ForeColor
  loc_72ADCC: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = ""
  loc_72ADE3: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_2B4 = "": var_284 = "": var_2D4 = "": var_2F4 = "": var_334 = "": var_354 = "": var_314 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_414 = "": var_45C = "": var_3D4 = "": var_46C = ""
  loc_72AE1C: Branch loc_72AFAA
  loc_72AE1F: FLdRfVar var_24C
  loc_72AE22: LitVar_Missing var_248
  loc_72AE25: LitVar_Missing var_228
  loc_72AE28: LitVar_Missing var_208
  loc_72AE2B: LitVar_Missing var_1E8
  loc_72AE2E: LitVar_Missing var_1C8
  loc_72AE31: LitVar_Missing var_1A8
  loc_72AE34: LitVar_Missing var_188
  loc_72AE37: LitVar_Missing var_168
  loc_72AE3A: LitVar_Missing var_148
  loc_72AE3D: LitVar_Missing var_128
  loc_72AE40: LitStr "Estacíon:"
  loc_72AE43: FStStrCopy var_108
  loc_72AE46: FLdRfVar var_108
  loc_72AE49: LitI4 &H1C
  loc_72AE4E: PopTmpLdAdStr var_104
  loc_72AE51: LitI2_Byte &H4B
  loc_72AE53: PopTmpLdAd2 var_FE
  loc_72AE56: ImpAdLdRf MemVar_74C7D0
  loc_72AE59: NewIfNullPr clsMsg
  loc_72AE5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72AE61: LitI4 &H2C
  loc_72AE66: FLdRfVar var_268
  loc_72AE69: ImpAdCallFPR4  = Space()
  loc_72AE6E: LitI4 &HD
  loc_72AE73: FLdRfVar var_2D4
  loc_72AE76: ImpAdCallFPR4  = Space()
  loc_72AE7B: LitI4 1
  loc_72AE80: LitI4 1
  loc_72AE85: ImpAdLdRf MemVar_74C364
  loc_72AE88: CVarRef
  loc_72AE8D: FLdRfVar var_CC
  loc_72AE90: CVarRef
  loc_72AE95: ImpAdCallI2 Format$(, )
  loc_72AE9A: FStStr var_26C
  loc_72AE9D: LitI4 1
  loc_72AEA2: LitI4 1
  loc_72AEA7: LitVarStr var_2E4, "@@@@@@@@@@@"
  loc_72AEAC: FStVarCopyObj var_334
  loc_72AEAF: FLdRfVar var_334
  loc_72AEB2: FLdZeroAd var_26C
  loc_72AEB5: CVarStr var_314
  loc_72AEB8: ImpAdCallI2 Format$(, )
  loc_72AEBD: FStStr var_270
  loc_72AEC0: LitI4 2
  loc_72AEC5: FLdRfVar var_394
  loc_72AEC8: ImpAdCallFPR4  = Space()
  loc_72AECD: LitI4 1
  loc_72AED2: LitI4 1
  loc_72AED7: LitVarStr var_324, "#######0.00"
  loc_72AEDC: FStVarCopyObj var_3D4
  loc_72AEDF: FLdRfVar var_3D4
  loc_72AEE2: FLdRfVar var_D0
  loc_72AEE5: CVarRef
  loc_72AEEA: ImpAdCallI2 Format$(, )
  loc_72AEEF: FStStr var_288
  loc_72AEF2: LitI4 1
  loc_72AEF7: LitI4 1
  loc_72AEFC: LitVarStr var_344, "@@@@@@@@@@@"
  loc_72AF01: FStVarCopyObj var_414
  loc_72AF04: FLdRfVar var_414
  loc_72AF07: FLdZeroAd var_288
  loc_72AF0A: CVarStr var_3F4
  loc_72AF0D: ImpAdCallI2 Format$(, )
  loc_72AF12: FStStr var_28C
  loc_72AF15: FLdRfVar var_252
  loc_72AF18: FLdRfVar var_F0
  loc_72AF1B: NewIfNullRf
  loc_72AF1F: ILdRf var_24C
  loc_72AF22: LitStr " "
  loc_72AF25: ConcatStr
  loc_72AF26: CVarStr var_284
  loc_72AF29: FLdRfVar var_268
  loc_72AF2C: ConcatVar var_2B4
  loc_72AF30: FLdRfVar var_2D4
  loc_72AF33: ConcatVar var_2F4
  loc_72AF37: FLdZeroAd var_270
  loc_72AF3A: CVarStr var_354
  loc_72AF3D: ConcatVar var_374
  loc_72AF41: FLdRfVar var_394
  loc_72AF44: ConcatVar var_3B4
  loc_72AF48: FLdZeroAd var_28C
  loc_72AF4B: CVarStr var_45C
  loc_72AF4E: ConcatVar var_46C
  loc_72AF52: CStrVarTmp
  loc_72AF53: PopTmpLdAdStr
  loc_72AF57: FLdRfVar var_EC
  loc_72AF5A: NewIfNullPr CReporte
  loc_72AF5D:  = CReporte.ForeColor
  loc_72AF62: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = ""
  loc_72AF73: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_284 = "": var_268 = "": var_2B4 = "": var_2D4 = "": var_314 = "": var_334 = "": var_2F4 = "": var_354 = "": var_374 = "": var_394 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_3B4 = "": var_45C = ""
  loc_72AFAA: FLdRfVar var_FE
  loc_72AFAD: FLdRfVar var_F0
  loc_72AFB0: NewIfNullRf
  loc_72AFB4: LitStr " "
  loc_72AFB7: FStStrCopy var_108
  loc_72AFBA: FLdRfVar var_108
  loc_72AFBD: FLdRfVar var_EC
  loc_72AFC0: NewIfNullPr CReporte
  loc_72AFC3:  = CReporte.ForeColor
  loc_72AFC8: FFree1Str var_108
  loc_72AFCB: FLdRfVar var_FE
  loc_72AFCE: FLdRfVar var_F0
  loc_72AFD1: NewIfNullRf
  loc_72AFD5: LitStr " "
  loc_72AFD8: FStStrCopy var_108
  loc_72AFDB: FLdRfVar var_108
  loc_72AFDE: FLdRfVar var_EC
  loc_72AFE1: NewIfNullPr CReporte
  loc_72AFE4:  = CReporte.ForeColor
  loc_72AFE9: FFree1Str var_108
  loc_72AFEC: LitI2_Byte 0
  loc_72AFEE: CR8I2
  loc_72AFEF: FStFPR4 var_CC
  loc_72AFF2: LitI2_Byte 0
  loc_72AFF4: CR8I2
  loc_72AFF5: FStFPR4 var_D0
  loc_72AFF8: FLdI2 var_B6
  loc_72AFFB: FStI2 var_C0
  loc_72AFFE: FLdFPR4 var_CC
  loc_72B001: ILdRf var_A0
  loc_72B004: CR8Str
  loc_72B006: AddR8
  loc_72B007: FStFPR4 var_CC
  loc_72B00A: FLdFPR4 var_D0
  loc_72B00D: ILdRf var_A4
  loc_72B010: CR8Str
  loc_72B012: AddR8
  loc_72B013: FStFPR4 var_D0
  loc_72B016: FLdFPR4 var_D4
  loc_72B019: ILdRf var_A0
  loc_72B01C: CR8Str
  loc_72B01E: AddR8
  loc_72B01F: FStFPR4 var_D4
  loc_72B022: FLdFPR4 var_D8
  loc_72B025: ILdRf var_A4
  loc_72B028: CR8Str
  loc_72B02A: AddR8
  loc_72B02B: FStFPR4 var_D8
  loc_72B02E: FLdFPR4 var_DC
  loc_72B031: ILdRf var_A0
  loc_72B034: CR8Str
  loc_72B036: AddR8
  loc_72B037: FStFPR4 var_DC
  loc_72B03A: FLdFPR4 var_E0
  loc_72B03D: ILdRf var_A4
  loc_72B040: CR8Str
  loc_72B042: AddR8
  loc_72B043: FStFPR4 var_E0
  loc_72B046: FLdFPR4 var_E4
  loc_72B049: ILdRf var_A0
  loc_72B04C: CR8Str
  loc_72B04E: AddR8
  loc_72B04F: FStFPR4 var_E4
  loc_72B052: FLdFPR4 var_E8
  loc_72B055: ILdRf var_A4
  loc_72B058: CR8Str
  loc_72B05A: AddR8
  loc_72B05B: FStFPR4 var_E8
  loc_72B05E: LitI4 1
  loc_72B063: FLdRfVar var_128
  loc_72B066: ImpAdCallFPR4  = Space()
  loc_72B06B: LitI4 1
  loc_72B070: FLdRfVar var_188
  loc_72B073: ImpAdCallFPR4  = Space()
  loc_72B078: LitI4 2
  loc_72B07D: FLdRfVar var_208
  loc_72B080: ImpAdCallFPR4  = Space()
  loc_72B085: LitI4 2
  loc_72B08A: FLdRfVar var_268
  loc_72B08D: ImpAdCallFPR4  = Space()
  loc_72B092: LitI4 2
  loc_72B097: FLdRfVar var_2D4
  loc_72B09A: ImpAdCallFPR4  = Space()
  loc_72B09F: LitI4 2
  loc_72B0A4: FLdRfVar var_354
  loc_72B0A7: ImpAdCallFPR4  = Space()
  loc_72B0AC: LitI4 2
  loc_72B0B1: FLdRfVar var_3B4
  loc_72B0B4: ImpAdCallFPR4  = Space()
  loc_72B0B9: FLdRfVar var_FE
  loc_72B0BC: FLdRfVar var_F0
  loc_72B0BF: NewIfNullRf
  loc_72B0C3: ILdRf var_94
  loc_72B0C6: CVarStr var_118
  loc_72B0C9: FLdRfVar var_128
  loc_72B0CC: ConcatVar var_148
  loc_72B0D0: ILdRf var_98
  loc_72B0D3: CVarStr var_138
  loc_72B0D6: ConcatVar var_168
  loc_72B0DA: FLdRfVar var_188
  loc_72B0DD: ConcatVar var_1A8
  loc_72B0E1: ILdRf var_9C
  loc_72B0E4: CVarStr var_158
  loc_72B0E7: ConcatVar var_1C8
  loc_72B0EB: ILdRf var_B0
  loc_72B0EE: CVarStr var_178
  loc_72B0F1: ConcatVar var_1E8
  loc_72B0F5: FLdRfVar var_208
  loc_72B0F8: ConcatVar var_228
  loc_72B0FC: ILdRf var_A8
  loc_72B0FF: CVarStr var_198
  loc_72B102: ConcatVar var_248
  loc_72B106: FLdRfVar var_268
  loc_72B109: ConcatVar var_284
  loc_72B10D: ILdRf var_F4
  loc_72B110: CVarStr var_1B8
  loc_72B113: ConcatVar var_2B4
  loc_72B117: FLdRfVar var_2D4
  loc_72B11A: ConcatVar var_2F4
  loc_72B11E: ILdRf var_F8
  loc_72B121: CVarStr var_1D8
  loc_72B124: ConcatVar var_314
  loc_72B128: ILdRf var_A0
  loc_72B12B: CVarStr var_1F8
  loc_72B12E: ConcatVar var_334
  loc_72B132: FLdRfVar var_354
  loc_72B135: ConcatVar var_374
  loc_72B139: ILdRf var_A4
  loc_72B13C: CVarStr var_218
  loc_72B13F: ConcatVar var_394
  loc_72B143: FLdRfVar var_3B4
  loc_72B146: ConcatVar var_3D4
  loc_72B14A: ILdRf var_AC
  loc_72B14D: CVarStr var_238
  loc_72B150: ConcatVar var_3F4
  loc_72B154: CStrVarTmp
  loc_72B155: PopTmpLdAdStr
  loc_72B159: FLdRfVar var_EC
  loc_72B15C: NewIfNullPr CReporte
  loc_72B15F:  = CReporte.ForeColor
  loc_72B164: FFree1Str var_108
  loc_72B167: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = ""
  loc_72B198: ILdRf var_8C
  loc_72B19B: FLdUI1
  loc_72B19F: CI4UI1
  loc_72B1A0: AddI4
  loc_72B1A1: FStR4 var_8C
  loc_72B1A4: Branch loc_729FFC
  loc_72B1A7: FLdI2 var_C6
  loc_72B1AA: LitI2_Byte &HFF
  loc_72B1AC: NeI2
  loc_72B1AD: BranchF loc_72B648
  loc_72B1B0: FLdI2 var_C0
  loc_72B1B3: LitI2 800
  loc_72B1B6: GtI2
  loc_72B1B7: FLdI2 var_C0
  loc_72B1BA: LitI2_Byte 0
  loc_72B1BC: EqI2
  loc_72B1BD: OrI4
  loc_72B1BE: BranchF loc_72B1C4
  loc_72B1C1: Branch loc_72B648
  loc_72B1C4: FLdRfVar var_108
  loc_72B1C7: FLdI2 var_C6
  loc_72B1CA: from_stack_2v = Proc_129_12_5F20E8(from_stack_1v)
  loc_72B1CF: FLdZeroAd var_108
  loc_72B1D2: FStStr var_B4
  loc_72B1D5: ILdRf var_B4
  loc_72B1D8: LitStr vbNullString
  loc_72B1DB: EqStr
  loc_72B1DD: BranchF loc_72B3DE
  loc_72B1E0: FLdRfVar var_24C
  loc_72B1E3: LitVar_Missing var_248
  loc_72B1E6: LitVar_Missing var_228
  loc_72B1E9: LitVar_Missing var_208
  loc_72B1EC: LitVar_Missing var_1E8
  loc_72B1EF: LitVar_Missing var_1C8
  loc_72B1F2: LitVar_Missing var_1A8
  loc_72B1F5: LitVar_Missing var_188
  loc_72B1F8: LitVar_Missing var_168
  loc_72B1FB: LitVar_Missing var_148
  loc_72B1FE: LitVar_Missing var_128
  loc_72B201: LitStr "Usuario:"
  loc_72B204: FStStrCopy var_108
  loc_72B207: FLdRfVar var_108
  loc_72B20A: LitI4 &H19
  loc_72B20F: PopTmpLdAdStr var_104
  loc_72B212: LitI2_Byte &H4B
  loc_72B214: PopTmpLdAd2 var_FE
  loc_72B217: ImpAdLdRf MemVar_74C7D0
  loc_72B21A: NewIfNullPr clsMsg
  loc_72B21D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72B222: LitI4 1
  loc_72B227: LitI4 1
  loc_72B22C: LitVarStr var_2C4, "@@@@"
  loc_72B231: FStVarCopyObj var_268
  loc_72B234: FLdRfVar var_268
  loc_72B237: FLdRfVar var_C6
  loc_72B23A: CVarRef
  loc_72B23F: ImpAdCallI2 Format$(, )
  loc_72B244: FStStr var_288
  loc_72B247: LitI4 &HD
  loc_72B24C: FLdRfVar var_284
  loc_72B24F: ImpAdCallFPR4  = Space()
  loc_72B254: LitI4 &H12
  loc_72B259: FLdRfVar var_2F4
  loc_72B25C: ImpAdCallFPR4  = Space()
  loc_72B261: LitI4 &H17
  loc_72B266: FLdRfVar var_334
  loc_72B269: ImpAdCallFPR4  = Space()
  loc_72B26E: LitI4 1
  loc_72B273: LitI4 1
  loc_72B278: ImpAdLdRf MemVar_74C364
  loc_72B27B: CVarRef
  loc_72B280: FLdRfVar var_DC
  loc_72B283: CVarRef
  loc_72B288: ImpAdCallI2 Format$(, )
  loc_72B28D: FStStr var_28C
  loc_72B290: LitI4 1
  loc_72B295: LitI4 1
  loc_72B29A: LitVarStr var_324, "@@@@@@@@@@@"
  loc_72B29F: FStVarCopyObj var_394
  loc_72B2A2: FLdRfVar var_394
  loc_72B2A5: FLdZeroAd var_28C
  loc_72B2A8: CVarStr var_374
  loc_72B2AB: ImpAdCallI2 Format$(, )
  loc_72B2B0: FStStr var_294
  loc_72B2B3: LitI4 2
  loc_72B2B8: FLdRfVar var_3F4
  loc_72B2BB: ImpAdCallFPR4  = Space()
  loc_72B2C0: LitI4 1
  loc_72B2C5: LitI4 1
  loc_72B2CA: LitVarStr var_364, "#######0.00"
  loc_72B2CF: FStVarCopyObj var_45C
  loc_72B2D2: FLdRfVar var_45C
  loc_72B2D5: FLdRfVar var_E0
  loc_72B2D8: CVarRef
  loc_72B2DD: ImpAdCallI2 Format$(, )
  loc_72B2E2: FStStr var_3D8
  loc_72B2E5: LitI4 1
  loc_72B2EA: LitI4 1
  loc_72B2EF: LitVarStr var_384, "@@@@@@@@@@@"
  loc_72B2F4: FStVarCopyObj var_47C
  loc_72B2F7: FLdRfVar var_47C
  loc_72B2FA: FLdZeroAd var_3D8
  loc_72B2FD: CVarStr var_46C
  loc_72B300: ImpAdCallI2 Format$(, )
  loc_72B305: FStStr var_3DC
  loc_72B308: FLdRfVar var_252
  loc_72B30B: FLdRfVar var_F0
  loc_72B30E: NewIfNullRf
  loc_72B312: ILdRf var_24C
  loc_72B315: LitStr " "
  loc_72B318: ConcatStr
  loc_72B319: FStStrNoPop var_250
  loc_72B31C: FLdZeroAd var_288
  loc_72B31F: FStStrNoPop var_26C
  loc_72B322: ConcatStr
  loc_72B323: CVarStr var_2B4
  loc_72B326: FLdRfVar var_284
  loc_72B329: ConcatVar var_2D4
  loc_72B32D: FLdRfVar var_2F4
  loc_72B330: ConcatVar var_314
  loc_72B334: FLdRfVar var_334
  loc_72B337: ConcatVar var_354
  loc_72B33B: FLdZeroAd var_294
  loc_72B33E: CVarStr var_3B4
  loc_72B341: ConcatVar var_3D4
  loc_72B345: FLdRfVar var_3F4
  loc_72B348: ConcatVar var_414
  loc_72B34C: FLdZeroAd var_3DC
  loc_72B34F: CVarStr var_48C
  loc_72B352: ConcatVar var_49C
  loc_72B356: CStrVarTmp
  loc_72B357: PopTmpLdAdStr
  loc_72B35B: FLdRfVar var_EC
  loc_72B35E: NewIfNullPr CReporte
  loc_72B361:  = CReporte.ForeColor
  loc_72B366: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = ""
  loc_72B37D: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_2B4 = "": var_284 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_374 = "": var_394 = "": var_354 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_45C = "": var_46C = "": var_47C = "": var_414 = "": var_48C = ""
  loc_72B3BA: FLdRfVar var_FE
  loc_72B3BD: FLdRfVar var_F0
  loc_72B3C0: NewIfNullRf
  loc_72B3C4: LitStr vbNullString
  loc_72B3C7: FStStrCopy var_108
  loc_72B3CA: FLdRfVar var_108
  loc_72B3CD: FLdRfVar var_EC
  loc_72B3D0: NewIfNullPr CReporte
  loc_72B3D3:  = CReporte.ForeColor
  loc_72B3D8: FFree1Str var_108
  loc_72B3DB: Branch loc_72B648
  loc_72B3DE: FLdRfVar var_24C
  loc_72B3E1: LitVar_Missing var_248
  loc_72B3E4: LitVar_Missing var_228
  loc_72B3E7: LitVar_Missing var_208
  loc_72B3EA: LitVar_Missing var_1E8
  loc_72B3ED: LitVar_Missing var_1C8
  loc_72B3F0: LitVar_Missing var_1A8
  loc_72B3F3: LitVar_Missing var_188
  loc_72B3F6: LitVar_Missing var_168
  loc_72B3F9: LitVar_Missing var_148
  loc_72B3FC: LitVar_Missing var_128
  loc_72B3FF: LitStr "Usuario:"
  loc_72B402: FStStrCopy var_108
  loc_72B405: FLdRfVar var_108
  loc_72B408: LitI4 &H19
  loc_72B40D: PopTmpLdAdStr var_104
  loc_72B410: LitI2_Byte &H4B
  loc_72B412: PopTmpLdAd2 var_FE
  loc_72B415: ImpAdLdRf MemVar_74C7D0
  loc_72B418: NewIfNullPr clsMsg
  loc_72B41B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72B420: LitI4 1
  loc_72B425: LitI4 1
  loc_72B42A: LitVarStr var_2C4, "@@@@"
  loc_72B42F: FStVarCopyObj var_268
  loc_72B432: FLdRfVar var_268
  loc_72B435: FLdRfVar var_C6
  loc_72B438: CVarRef
  loc_72B43D: ImpAdCallI2 Format$(, )
  loc_72B442: FStStr var_3D8
  loc_72B445: LitI4 &HF
  loc_72B44A: ILdRf var_B4
  loc_72B44D: ImpAdCallI2 Left$(, )
  loc_72B452: FStStr var_3DC
  loc_72B455: LitVarStr var_2E4, "@"
  loc_72B45A: FStVarCopyObj var_284
  loc_72B45D: FLdRfVar var_284
  loc_72B460: LitI4 &HF
  loc_72B465: FLdRfVar var_2B4
  loc_72B468: ImpAdCallFPR4  = String(, )
  loc_72B46D: LitI4 1
  loc_72B472: LitI4 1
  loc_72B477: LitVarStr var_304, "!"
  loc_72B47C: FLdRfVar var_2B4
  loc_72B47F: ConcatVar var_2D4
  loc_72B483: FLdZeroAd var_3DC
  loc_72B486: CVarStr var_2F4
  loc_72B489: ImpAdCallI2 Format$(, )
  loc_72B48E: FStStr var_3E0
  loc_72B491: LitI4 &HD
  loc_72B496: FLdRfVar var_314
  loc_72B499: ImpAdCallFPR4  = Space()
  loc_72B49E: LitI4 &HA
  loc_72B4A3: FLdRfVar var_374
  loc_72B4A6: ImpAdCallFPR4  = Space()
  loc_72B4AB: LitI4 &HD
  loc_72B4B0: FLdRfVar var_3B4
  loc_72B4B3: ImpAdCallFPR4  = Space()
  loc_72B4B8: LitI4 1
  loc_72B4BD: LitI4 1
  loc_72B4C2: ImpAdLdRf MemVar_74C364
  loc_72B4C5: CVarRef
  loc_72B4CA: FLdRfVar var_DC
  loc_72B4CD: CVarRef
  loc_72B4D2: ImpAdCallI2 Format$(, )
  loc_72B4D7: FStStr var_3F8
  loc_72B4DA: LitI4 1
  loc_72B4DF: LitI4 1
  loc_72B4E4: LitVarStr var_364, "@@@@@@@@@@@"
  loc_72B4E9: FStVarCopyObj var_414
  loc_72B4EC: FLdRfVar var_414
  loc_72B4EF: FLdZeroAd var_3F8
  loc_72B4F2: CVarStr var_3F4
  loc_72B4F5: ImpAdCallI2 Format$(, )
  loc_72B4FA: FStStr var_3FC
  loc_72B4FD: LitI4 2
  loc_72B502: FLdRfVar var_47C
  loc_72B505: ImpAdCallFPR4  = Space()
  loc_72B50A: LitI4 1
  loc_72B50F: LitI4 1
  loc_72B514: LitVarStr var_3A4, "#######0.00"
  loc_72B519: FStVarCopyObj var_49C
  loc_72B51C: FLdRfVar var_49C
  loc_72B51F: FLdRfVar var_E0
  loc_72B522: CVarRef
  loc_72B527: ImpAdCallI2 Format$(, )
  loc_72B52C: FStStr var_400
  loc_72B52F: LitI4 1
  loc_72B534: LitI4 1
  loc_72B539: LitVarStr var_3C4, "@@@@@@@@@@@"
  loc_72B53E: FStVarCopyObj var_4BC
  loc_72B541: FLdRfVar var_4BC
  loc_72B544: FLdZeroAd var_400
  loc_72B547: CVarStr var_4AC
  loc_72B54A: ImpAdCallI2 Format$(, )
  loc_72B54F: FStStr var_418
  loc_72B552: FLdRfVar var_252
  loc_72B555: FLdRfVar var_F0
  loc_72B558: NewIfNullRf
  loc_72B55C: ILdRf var_24C
  loc_72B55F: LitStr " "
  loc_72B562: ConcatStr
  loc_72B563: FStStrNoPop var_250
  loc_72B566: FLdZeroAd var_3D8
  loc_72B569: FStStrNoPop var_26C
  loc_72B56C: ConcatStr
  loc_72B56D: FStStrNoPop var_270
  loc_72B570: LitStr " _ "
  loc_72B573: ConcatStr
  loc_72B574: FStStrNoPop var_288
  loc_72B577: FLdZeroAd var_3E0
  loc_72B57A: FStStrNoPop var_28C
  loc_72B57D: ConcatStr
  loc_72B57E: CVarStr var_334
  loc_72B581: FLdRfVar var_314
  loc_72B584: ConcatVar var_354
  loc_72B588: FLdRfVar var_374
  loc_72B58B: ConcatVar var_394
  loc_72B58F: FLdRfVar var_3B4
  loc_72B592: ConcatVar var_3D4
  loc_72B596: FLdZeroAd var_3FC
  loc_72B599: CVarStr var_45C
  loc_72B59C: ConcatVar var_46C
  loc_72B5A0: FLdRfVar var_47C
  loc_72B5A3: ConcatVar var_48C
  loc_72B5A7: FLdZeroAd var_418
  loc_72B5AA: CVarStr var_4CC
  loc_72B5AD: ConcatVar var_4DC
  loc_72B5B1: CStrVarTmp
  loc_72B5B2: PopTmpLdAdStr
  loc_72B5B6: FLdRfVar var_EC
  loc_72B5B9: NewIfNullPr CReporte
  loc_72B5BC:  = CReporte.ForeColor
  loc_72B5C1: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3F8 = "": var_3FC = "": var_400 = ""
  loc_72B5E2: FFreeVar var_48C = "": var_4CC = "": var_4DC = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2F4 = "": var_2D4 = "": var_334 = "": var_314 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_414 = "": var_3D4 = "": var_45C = "": var_46C = "": var_47C = "": var_49C = "": var_4AC = ""
  loc_72B627: FLdRfVar var_FE
  loc_72B62A: FLdRfVar var_F0
  loc_72B62D: NewIfNullRf
  loc_72B631: LitStr vbNullString
  loc_72B634: FStStrCopy var_108
  loc_72B637: FLdRfVar var_108
  loc_72B63A: FLdRfVar var_EC
  loc_72B63D: NewIfNullPr CReporte
  loc_72B640:  = CReporte.ForeColor
  loc_72B645: FFree1Str var_108
  loc_72B648: ILdRf var_C4
  loc_72B64B: LitI4 -1
  loc_72B650: NeI4
  loc_72B651: FLdI2 var_C0
  loc_72B654: LitI2 800
  loc_72B657: GtI2
  loc_72B658: FLdI2 var_C0
  loc_72B65B: LitI2_Byte 0
  loc_72B65D: EqI2
  loc_72B65E: OrI4
  loc_72B65F: AndI4
  loc_72B660: BranchF loc_72B8E9
  loc_72B663: FLdRfVar var_24C
  loc_72B666: LitVar_Missing var_248
  loc_72B669: LitVar_Missing var_228
  loc_72B66C: LitVar_Missing var_208
  loc_72B66F: LitVar_Missing var_1E8
  loc_72B672: LitVar_Missing var_1C8
  loc_72B675: LitVar_Missing var_1A8
  loc_72B678: LitVar_Missing var_188
  loc_72B67B: LitVar_Missing var_168
  loc_72B67E: LitVar_Missing var_148
  loc_72B681: LitVar_Missing var_128
  loc_72B684: LitStr "Grupo:"
  loc_72B687: FStStrCopy var_108
  loc_72B68A: FLdRfVar var_108
  loc_72B68D: LitI4 &H1A
  loc_72B692: PopTmpLdAdStr var_104
  loc_72B695: LitI2_Byte &H4B
  loc_72B697: PopTmpLdAd2 var_FE
  loc_72B69A: ImpAdLdRf MemVar_74C7D0
  loc_72B69D: NewIfNullPr clsMsg
  loc_72B6A0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72B6A5: LitI4 1
  loc_72B6AA: LitI4 1
  loc_72B6AF: LitVarStr var_2C4, "@@@"
  loc_72B6B4: FStVarCopyObj var_268
  loc_72B6B7: FLdRfVar var_268
  loc_72B6BA: FLdRfVar var_C0
  loc_72B6BD: CVarRef
  loc_72B6C2: ImpAdCallI2 Format$(, )
  loc_72B6C7: FStStr var_3F8
  loc_72B6CA: FLdRfVar var_288
  loc_72B6CD: LitVar_Missing var_3B4
  loc_72B6D0: LitVar_Missing var_394
  loc_72B6D3: LitVar_Missing var_374
  loc_72B6D6: LitVar_Missing var_354
  loc_72B6D9: LitVar_Missing var_334
  loc_72B6DC: LitVar_Missing var_314
  loc_72B6DF: LitVar_Missing var_2F4
  loc_72B6E2: LitVar_Missing var_2D4
  loc_72B6E5: LitVar_Missing var_2B4
  loc_72B6E8: LitVar_Missing var_284
  loc_72B6EB: LitStr " - Compañía:"
  loc_72B6EE: FStStrCopy var_270
  loc_72B6F1: FLdRfVar var_270
  loc_72B6F4: LitI4 &H1B
  loc_72B6F9: PopTmpLdAdStr var_290
  loc_72B6FC: LitI2_Byte &H4B
  loc_72B6FE: PopTmpLdAd2 var_252
  loc_72B701: ImpAdLdRf MemVar_74C7D0
  loc_72B704: NewIfNullPr clsMsg
  loc_72B707: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72B70C: LitI4 1
  loc_72B711: LitI4 1
  loc_72B716: LitVarStr var_4FC, "!@@@@"
  loc_72B71B: FStVarCopyObj var_3D4
  loc_72B71E: FLdRfVar var_3D4
  loc_72B721: FLdRfVar var_C4
  loc_72B724: CVarRef
  loc_72B729: ImpAdCallI2 Format$(, )
  loc_72B72E: FStStr var_3FC
  loc_72B731: LitI4 &H1B
  loc_72B736: FLdRfVar var_3F4
  loc_72B739: ImpAdCallFPR4  = Space()
  loc_72B73E: LitI4 &HD
  loc_72B743: FLdRfVar var_46C
  loc_72B746: ImpAdCallFPR4  = Space()
  loc_72B74B: LitI4 1
  loc_72B750: LitI4 1
  loc_72B755: ImpAdLdRf MemVar_74C364
  loc_72B758: CVarRef
  loc_72B75D: FLdRfVar var_D4
  loc_72B760: CVarRef
  loc_72B765: ImpAdCallI2 Format$(, )
  loc_72B76A: FStStr var_400
  loc_72B76D: LitI4 1
  loc_72B772: LitI4 1
  loc_72B777: LitVarStr var_52C, "@@@@@@@@@@@"
  loc_72B77C: FStVarCopyObj var_49C
  loc_72B77F: FLdRfVar var_49C
  loc_72B782: FLdZeroAd var_400
  loc_72B785: CVarStr var_48C
  loc_72B788: ImpAdCallI2 Format$(, )
  loc_72B78D: FStStr var_418
  loc_72B790: LitI4 2
  loc_72B795: FLdRfVar var_4CC
  loc_72B798: ImpAdCallFPR4  = Space()
  loc_72B79D: LitI4 1
  loc_72B7A2: LitI4 1
  loc_72B7A7: LitVarStr var_54C, "#######0.00"
  loc_72B7AC: FStVarCopyObj var_55C
  loc_72B7AF: FLdRfVar var_55C
  loc_72B7B2: FLdRfVar var_D8
  loc_72B7B5: CVarRef
  loc_72B7BA: ImpAdCallI2 Format$(, )
  loc_72B7BF: FStStr var_41C
  loc_72B7C2: LitI4 1
  loc_72B7C7: LitI4 1
  loc_72B7CC: LitVarStr var_57C, "@@@@@@@@@@@"
  loc_72B7D1: FStVarCopyObj var_58C
  loc_72B7D4: FLdRfVar var_58C
  loc_72B7D7: FLdZeroAd var_41C
  loc_72B7DA: CVarStr var_56C
  loc_72B7DD: ImpAdCallI2 Format$(, )
  loc_72B7E2: FStStr var_420
  loc_72B7E5: FLdRfVar var_422
  loc_72B7E8: FLdRfVar var_F0
  loc_72B7EB: NewIfNullRf
  loc_72B7EF: ILdRf var_24C
  loc_72B7F2: LitStr " "
  loc_72B7F5: ConcatStr
  loc_72B7F6: FStStrNoPop var_250
  loc_72B7F9: FLdZeroAd var_3F8
  loc_72B7FC: FStStrNoPop var_26C
  loc_72B7FF: ConcatStr
  loc_72B800: FStStrNoPop var_28C
  loc_72B803: ILdRf var_288
  loc_72B806: ConcatStr
  loc_72B807: FStStrNoPop var_294
  loc_72B80A: LitStr " "
  loc_72B80D: ConcatStr
  loc_72B80E: FStStrNoPop var_3D8
  loc_72B811: FLdZeroAd var_3FC
  loc_72B814: FStStrNoPop var_3DC
  loc_72B817: ConcatStr
  loc_72B818: CVarStr var_414
  loc_72B81B: FLdRfVar var_3F4
  loc_72B81E: ConcatVar var_45C
  loc_72B822: FLdRfVar var_46C
  loc_72B825: ConcatVar var_47C
  loc_72B829: FLdZeroAd var_418
  loc_72B82C: CVarStr var_4AC
  loc_72B82F: ConcatVar var_4BC
  loc_72B833: FLdRfVar var_4CC
  loc_72B836: ConcatVar var_4DC
  loc_72B83A: FLdZeroAd var_420
  loc_72B83D: CVarStr var_59C
  loc_72B840: ConcatVar var_5AC
  loc_72B844: CStrVarTmp
  loc_72B845: PopTmpLdAdStr
  loc_72B849: FLdRfVar var_EC
  loc_72B84C: NewIfNullPr CReporte
  loc_72B84F:  = CReporte.ForeColor
  loc_72B854: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_28C = "": var_288 = "": var_294 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_418 = "": var_41C = ""
  loc_72B879: FFreeVar var_4BC = "": var_4CC = "": var_55C = "": var_56C = "": var_58C = "": var_4DC = "": var_59C = "": var_5AC = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_414 = "": var_3F4 = "": var_45C = "": var_46C = "": var_48C = "": var_49C = "": var_47C = ""
  loc_72B8C8: FLdRfVar var_FE
  loc_72B8CB: FLdRfVar var_F0
  loc_72B8CE: NewIfNullRf
  loc_72B8D2: LitStr " "
  loc_72B8D5: FStStrCopy var_108
  loc_72B8D8: FLdRfVar var_108
  loc_72B8DB: FLdRfVar var_EC
  loc_72B8DE: NewIfNullPr CReporte
  loc_72B8E1:  = CReporte.ForeColor
  loc_72B8E6: FFree1Str var_108
  loc_72B8E9: FLdI2 var_C0
  loc_72B8EC: LitI2_Byte &HFF
  loc_72B8EE: NeI2
  loc_72B8EF: BranchF loc_72BC95
  loc_72B8F2: FLdI2 var_C0
  loc_72B8F5: LitI2 800
  loc_72B8F8: GtI2
  loc_72B8F9: FLdI2 var_C0
  loc_72B8FC: LitI2_Byte 0
  loc_72B8FE: EqI2
  loc_72B8FF: OrI4
  loc_72B900: BranchF loc_72BAC8
  loc_72B903: FLdRfVar var_24C
  loc_72B906: LitVar_Missing var_248
  loc_72B909: LitVar_Missing var_228
  loc_72B90C: LitVar_Missing var_208
  loc_72B90F: LitVar_Missing var_1E8
  loc_72B912: LitVar_Missing var_1C8
  loc_72B915: LitVar_Missing var_1A8
  loc_72B918: LitVar_Missing var_188
  loc_72B91B: LitVar_Missing var_168
  loc_72B91E: LitVar_Missing var_148
  loc_72B921: LitVar_Missing var_128
  loc_72B924: LitStr "Grupo:"
  loc_72B927: FStStrCopy var_108
  loc_72B92A: FLdRfVar var_108
  loc_72B92D: LitI4 &H1A
  loc_72B932: PopTmpLdAdStr var_104
  loc_72B935: LitI2_Byte &H4B
  loc_72B937: PopTmpLdAd2 var_FE
  loc_72B93A: ImpAdLdRf MemVar_74C7D0
  loc_72B93D: NewIfNullPr clsMsg
  loc_72B940: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72B945: LitI4 1
  loc_72B94A: LitI4 1
  loc_72B94F: LitVarStr var_2C4, "@@@"
  loc_72B954: FStVarCopyObj var_268
  loc_72B957: FLdRfVar var_268
  loc_72B95A: FLdRfVar var_C0
  loc_72B95D: CVarRef
  loc_72B962: ImpAdCallI2 Format$(, )
  loc_72B967: FStStr var_288
  loc_72B96A: LitI4 &H2C
  loc_72B96F: FLdRfVar var_284
  loc_72B972: ImpAdCallFPR4  = Space()
  loc_72B977: LitI4 &HD
  loc_72B97C: FLdRfVar var_2F4
  loc_72B97F: ImpAdCallFPR4  = Space()
  loc_72B984: LitI4 1
  loc_72B989: LitI4 1
  loc_72B98E: ImpAdLdRf MemVar_74C364
  loc_72B991: CVarRef
  loc_72B996: FLdRfVar var_CC
  loc_72B999: CVarRef
  loc_72B99E: ImpAdCallI2 Format$(, )
  loc_72B9A3: FStStr var_28C
  loc_72B9A6: LitI4 1
  loc_72B9AB: LitI4 1
  loc_72B9B0: LitVarStr var_324, "@@@@@@@@@@@"
  loc_72B9B5: FStVarCopyObj var_354
  loc_72B9B8: FLdRfVar var_354
  loc_72B9BB: FLdZeroAd var_28C
  loc_72B9BE: CVarStr var_334
  loc_72B9C1: ImpAdCallI2 Format$(, )
  loc_72B9C6: FStStr var_294
  loc_72B9C9: LitI4 2
  loc_72B9CE: FLdRfVar var_3B4
  loc_72B9D1: ImpAdCallFPR4  = Space()
  loc_72B9D6: LitI4 1
  loc_72B9DB: LitI4 1
  loc_72B9E0: LitVarStr var_364, "#######0.00"
  loc_72B9E5: FStVarCopyObj var_3F4
  loc_72B9E8: FLdRfVar var_3F4
  loc_72B9EB: FLdRfVar var_D0
  loc_72B9EE: CVarRef
  loc_72B9F3: ImpAdCallI2 Format$(, )
  loc_72B9F8: FStStr var_3D8
  loc_72B9FB: LitI4 1
  loc_72BA00: LitI4 1
  loc_72BA05: LitVarStr var_384, "@@@@@@@@@@@"
  loc_72BA0A: FStVarCopyObj var_45C
  loc_72BA0D: FLdRfVar var_45C
  loc_72BA10: FLdZeroAd var_3D8
  loc_72BA13: CVarStr var_414
  loc_72BA16: ImpAdCallI2 Format$(, )
  loc_72BA1B: FStStr var_3DC
  loc_72BA1E: FLdRfVar var_252
  loc_72BA21: FLdRfVar var_F0
  loc_72BA24: NewIfNullRf
  loc_72BA28: ILdRf var_24C
  loc_72BA2B: LitStr " "
  loc_72BA2E: ConcatStr
  loc_72BA2F: FStStrNoPop var_250
  loc_72BA32: FLdZeroAd var_288
  loc_72BA35: FStStrNoPop var_26C
  loc_72BA38: ConcatStr
  loc_72BA39: CVarStr var_2B4
  loc_72BA3C: FLdRfVar var_284
  loc_72BA3F: ConcatVar var_2D4
  loc_72BA43: FLdRfVar var_2F4
  loc_72BA46: ConcatVar var_314
  loc_72BA4A: FLdZeroAd var_294
  loc_72BA4D: CVarStr var_374
  loc_72BA50: ConcatVar var_394
  loc_72BA54: FLdRfVar var_3B4
  loc_72BA57: ConcatVar var_3D4
  loc_72BA5B: FLdZeroAd var_3DC
  loc_72BA5E: CVarStr var_46C
  loc_72BA61: ConcatVar var_47C
  loc_72BA65: CStrVarTmp
  loc_72BA66: PopTmpLdAdStr
  loc_72BA6A: FLdRfVar var_EC
  loc_72BA6D: NewIfNullPr CReporte
  loc_72BA70:  = CReporte.ForeColor
  loc_72BA75: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = "": var_28C = "": var_294 = "": var_3D8 = ""
  loc_72BA8C: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_2B4 = "": var_284 = "": var_2D4 = "": var_2F4 = "": var_334 = "": var_354 = "": var_314 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_414 = "": var_45C = "": var_3D4 = "": var_46C = ""
  loc_72BAC5: Branch loc_72BC53
  loc_72BAC8: FLdRfVar var_24C
  loc_72BACB: LitVar_Missing var_248
  loc_72BACE: LitVar_Missing var_228
  loc_72BAD1: LitVar_Missing var_208
  loc_72BAD4: LitVar_Missing var_1E8
  loc_72BAD7: LitVar_Missing var_1C8
  loc_72BADA: LitVar_Missing var_1A8
  loc_72BADD: LitVar_Missing var_188
  loc_72BAE0: LitVar_Missing var_168
  loc_72BAE3: LitVar_Missing var_148
  loc_72BAE6: LitVar_Missing var_128
  loc_72BAE9: LitStr "Estacíon:"
  loc_72BAEC: FStStrCopy var_108
  loc_72BAEF: FLdRfVar var_108
  loc_72BAF2: LitI4 &H1C
  loc_72BAF7: PopTmpLdAdStr var_104
  loc_72BAFA: LitI2_Byte &H4B
  loc_72BAFC: PopTmpLdAd2 var_FE
  loc_72BAFF: ImpAdLdRf MemVar_74C7D0
  loc_72BB02: NewIfNullPr clsMsg
  loc_72BB05: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72BB0A: LitI4 &H2C
  loc_72BB0F: FLdRfVar var_268
  loc_72BB12: ImpAdCallFPR4  = Space()
  loc_72BB17: LitI4 &HD
  loc_72BB1C: FLdRfVar var_2D4
  loc_72BB1F: ImpAdCallFPR4  = Space()
  loc_72BB24: LitI4 1
  loc_72BB29: LitI4 1
  loc_72BB2E: ImpAdLdRf MemVar_74C364
  loc_72BB31: CVarRef
  loc_72BB36: FLdRfVar var_CC
  loc_72BB39: CVarRef
  loc_72BB3E: ImpAdCallI2 Format$(, )
  loc_72BB43: FStStr var_26C
  loc_72BB46: LitI4 1
  loc_72BB4B: LitI4 1
  loc_72BB50: LitVarStr var_2E4, "@@@@@@@@@@@"
  loc_72BB55: FStVarCopyObj var_334
  loc_72BB58: FLdRfVar var_334
  loc_72BB5B: FLdZeroAd var_26C
  loc_72BB5E: CVarStr var_314
  loc_72BB61: ImpAdCallI2 Format$(, )
  loc_72BB66: FStStr var_270
  loc_72BB69: LitI4 2
  loc_72BB6E: FLdRfVar var_394
  loc_72BB71: ImpAdCallFPR4  = Space()
  loc_72BB76: LitI4 1
  loc_72BB7B: LitI4 1
  loc_72BB80: LitVarStr var_324, "#######0.00"
  loc_72BB85: FStVarCopyObj var_3D4
  loc_72BB88: FLdRfVar var_3D4
  loc_72BB8B: FLdRfVar var_D0
  loc_72BB8E: CVarRef
  loc_72BB93: ImpAdCallI2 Format$(, )
  loc_72BB98: FStStr var_288
  loc_72BB9B: LitI4 1
  loc_72BBA0: LitI4 1
  loc_72BBA5: LitVarStr var_344, "@@@@@@@@@@@"
  loc_72BBAA: FStVarCopyObj var_414
  loc_72BBAD: FLdRfVar var_414
  loc_72BBB0: FLdZeroAd var_288
  loc_72BBB3: CVarStr var_3F4
  loc_72BBB6: ImpAdCallI2 Format$(, )
  loc_72BBBB: FStStr var_28C
  loc_72BBBE: FLdRfVar var_252
  loc_72BBC1: FLdRfVar var_F0
  loc_72BBC4: NewIfNullRf
  loc_72BBC8: ILdRf var_24C
  loc_72BBCB: LitStr " "
  loc_72BBCE: ConcatStr
  loc_72BBCF: CVarStr var_284
  loc_72BBD2: FLdRfVar var_268
  loc_72BBD5: ConcatVar var_2B4
  loc_72BBD9: FLdRfVar var_2D4
  loc_72BBDC: ConcatVar var_2F4
  loc_72BBE0: FLdZeroAd var_270
  loc_72BBE3: CVarStr var_354
  loc_72BBE6: ConcatVar var_374
  loc_72BBEA: FLdRfVar var_394
  loc_72BBED: ConcatVar var_3B4
  loc_72BBF1: FLdZeroAd var_28C
  loc_72BBF4: CVarStr var_45C
  loc_72BBF7: ConcatVar var_46C
  loc_72BBFB: CStrVarTmp
  loc_72BBFC: PopTmpLdAdStr
  loc_72BC00: FLdRfVar var_EC
  loc_72BC03: NewIfNullPr CReporte
  loc_72BC06:  = CReporte.ForeColor
  loc_72BC0B: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = ""
  loc_72BC1C: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_284 = "": var_268 = "": var_2B4 = "": var_2D4 = "": var_314 = "": var_334 = "": var_2F4 = "": var_354 = "": var_374 = "": var_394 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_3B4 = "": var_45C = ""
  loc_72BC53: FLdRfVar var_FE
  loc_72BC56: FLdRfVar var_F0
  loc_72BC59: NewIfNullRf
  loc_72BC5D: LitStr " "
  loc_72BC60: FStStrCopy var_108
  loc_72BC63: FLdRfVar var_108
  loc_72BC66: FLdRfVar var_EC
  loc_72BC69: NewIfNullPr CReporte
  loc_72BC6C:  = CReporte.ForeColor
  loc_72BC71: FFree1Str var_108
  loc_72BC74: FLdRfVar var_FE
  loc_72BC77: FLdRfVar var_F0
  loc_72BC7A: NewIfNullRf
  loc_72BC7E: LitStr " "
  loc_72BC81: FStStrCopy var_108
  loc_72BC84: FLdRfVar var_108
  loc_72BC87: FLdRfVar var_EC
  loc_72BC8A: NewIfNullPr CReporte
  loc_72BC8D:  = CReporte.ForeColor
  loc_72BC92: FFree1Str var_108
  loc_72BC95: FLdRfVar var_FE
  loc_72BC98: FLdRfVar var_F0
  loc_72BC9B: NewIfNullRf
  loc_72BC9F: LitStr " "
  loc_72BCA2: FStStrCopy var_108
  loc_72BCA5: FLdRfVar var_108
  loc_72BCA8: FLdRfVar var_EC
  loc_72BCAB: NewIfNullPr CReporte
  loc_72BCAE:  = CReporte.ForeColor
  loc_72BCB3: FFree1Str var_108
  loc_72BCB6: FLdRfVar var_24C
  loc_72BCB9: LitVar_Missing var_248
  loc_72BCBC: LitVar_Missing var_228
  loc_72BCBF: LitVar_Missing var_208
  loc_72BCC2: LitVar_Missing var_1E8
  loc_72BCC5: LitVar_Missing var_1C8
  loc_72BCC8: LitVar_Missing var_1A8
  loc_72BCCB: LitVar_Missing var_188
  loc_72BCCE: LitVar_Missing var_168
  loc_72BCD1: LitVar_Missing var_148
  loc_72BCD4: LitVar_Missing var_128
  loc_72BCD7: LitStr "Totales:"
  loc_72BCDA: FStStrCopy var_108
  loc_72BCDD: FLdRfVar var_108
  loc_72BCE0: LitI4 &H1E
  loc_72BCE5: PopTmpLdAdStr var_104
  loc_72BCE8: LitI2_Byte &H4B
  loc_72BCEA: PopTmpLdAd2 var_FE
  loc_72BCED: ImpAdLdRf MemVar_74C7D0
  loc_72BCF0: NewIfNullPr clsMsg
  loc_72BCF3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72BCF8: LitI4 &H2D
  loc_72BCFD: FLdRfVar var_268
  loc_72BD00: ImpAdCallFPR4  = Space()
  loc_72BD05: LitI4 &HD
  loc_72BD0A: FLdRfVar var_2D4
  loc_72BD0D: ImpAdCallFPR4  = Space()
  loc_72BD12: LitI4 1
  loc_72BD17: LitI4 1
  loc_72BD1C: ImpAdLdRf MemVar_74C364
  loc_72BD1F: CVarRef
  loc_72BD24: FLdRfVar var_E4
  loc_72BD27: CVarRef
  loc_72BD2C: ImpAdCallI2 Format$(, )
  loc_72BD31: FStStr var_26C
  loc_72BD34: LitI4 1
  loc_72BD39: LitI4 1
  loc_72BD3E: LitVarStr var_2E4, "@@@@@@@@@@@"
  loc_72BD43: FStVarCopyObj var_334
  loc_72BD46: FLdRfVar var_334
  loc_72BD49: FLdZeroAd var_26C
  loc_72BD4C: CVarStr var_314
  loc_72BD4F: ImpAdCallI2 Format$(, )
  loc_72BD54: FStStr var_270
  loc_72BD57: LitI4 2
  loc_72BD5C: FLdRfVar var_394
  loc_72BD5F: ImpAdCallFPR4  = Space()
  loc_72BD64: LitI4 1
  loc_72BD69: LitI4 1
  loc_72BD6E: LitVarStr var_324, "#######0.00"
  loc_72BD73: FStVarCopyObj var_3D4
  loc_72BD76: FLdRfVar var_3D4
  loc_72BD79: FLdRfVar var_E8
  loc_72BD7C: CVarRef
  loc_72BD81: ImpAdCallI2 Format$(, )
  loc_72BD86: FStStr var_288
  loc_72BD89: LitI4 1
  loc_72BD8E: LitI4 1
  loc_72BD93: LitVarStr var_344, "@@@@@@@@@@@"
  loc_72BD98: FStVarCopyObj var_414
  loc_72BD9B: FLdRfVar var_414
  loc_72BD9E: FLdZeroAd var_288
  loc_72BDA1: CVarStr var_3F4
  loc_72BDA4: ImpAdCallI2 Format$(, )
  loc_72BDA9: FStStr var_28C
  loc_72BDAC: FLdRfVar var_252
  loc_72BDAF: FLdRfVar var_F0
  loc_72BDB2: NewIfNullRf
  loc_72BDB6: ILdRf var_24C
  loc_72BDB9: LitStr " "
  loc_72BDBC: ConcatStr
  loc_72BDBD: CVarStr var_284
  loc_72BDC0: FLdRfVar var_268
  loc_72BDC3: ConcatVar var_2B4
  loc_72BDC7: FLdRfVar var_2D4
  loc_72BDCA: ConcatVar var_2F4
  loc_72BDCE: FLdZeroAd var_270
  loc_72BDD1: CVarStr var_354
  loc_72BDD4: ConcatVar var_374
  loc_72BDD8: FLdRfVar var_394
  loc_72BDDB: ConcatVar var_3B4
  loc_72BDDF: FLdZeroAd var_28C
  loc_72BDE2: CVarStr var_45C
  loc_72BDE5: ConcatVar var_46C
  loc_72BDE9: CStrVarTmp
  loc_72BDEA: PopTmpLdAdStr
  loc_72BDEE: FLdRfVar var_EC
  loc_72BDF1: NewIfNullPr CReporte
  loc_72BDF4:  = CReporte.ForeColor
  loc_72BDF9: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = "": var_270 = "": var_288 = ""
  loc_72BE0A: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_284 = "": var_268 = "": var_2B4 = "": var_2D4 = "": var_314 = "": var_334 = "": var_2F4 = "": var_354 = "": var_374 = "": var_394 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_3B4 = "": var_45C = ""
  loc_72BE41: FLdRfVar var_FE
  loc_72BE44: FLdRfVar var_F0
  loc_72BE47: NewIfNullRf
  loc_72BE4B: LitStr " "
  loc_72BE4E: FStStrCopy var_108
  loc_72BE51: FLdRfVar var_108
  loc_72BE54: FLdRfVar var_EC
  loc_72BE57: NewIfNullPr CReporte
  loc_72BE5A:  = CReporte.ForeColor
  loc_72BE5F: FFree1Str var_108
  loc_72BE62: FLdRfVar var_FE
  loc_72BE65: FLdRfVar var_F0
  loc_72BE68: NewIfNullRf
  loc_72BE6C: LitStr " "
  loc_72BE6F: FStStrCopy var_108
  loc_72BE72: FLdRfVar var_108
  loc_72BE75: FLdRfVar var_EC
  loc_72BE78: NewIfNullPr CReporte
  loc_72BE7B:  = CReporte.ForeColor
  loc_72BE80: FFree1Str var_108
  loc_72BE83: FLdRfVar var_24C
  loc_72BE86: LitVar_Missing var_248
  loc_72BE89: LitVar_Missing var_228
  loc_72BE8C: LitVar_Missing var_208
  loc_72BE8F: LitVar_Missing var_1E8
  loc_72BE92: LitVar_Missing var_1C8
  loc_72BE95: LitVar_Missing var_1A8
  loc_72BE98: LitVar_Missing var_188
  loc_72BE9B: LitVar_Missing var_168
  loc_72BE9E: LitVar_Missing var_148
  loc_72BEA1: LitVar_Missing var_128
  loc_72BEA4: LitStr "Cantidad de despachos:"
  loc_72BEA7: FStStrCopy var_108
  loc_72BEAA: FLdRfVar var_108
  loc_72BEAD: LitI4 &H1F
  loc_72BEB2: PopTmpLdAdStr var_104
  loc_72BEB5: LitI2_Byte &H4B
  loc_72BEB7: PopTmpLdAd2 var_FE
  loc_72BEBA: ImpAdLdRf MemVar_74C7D0
  loc_72BEBD: NewIfNullPr clsMsg
  loc_72BEC0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72BEC5: FLdRfVar var_252
  loc_72BEC8: FLdRfVar var_F0
  loc_72BECB: NewIfNullRf
  loc_72BECF: ILdRf var_24C
  loc_72BED2: LitStr " "
  loc_72BED5: ConcatStr
  loc_72BED6: FStStrNoPop var_250
  loc_72BED9: ILdRf var_88
  loc_72BEDC: FnLenStr
  loc_72BEDD: LitI4 &H4A
  loc_72BEE2: IDvI4
  loc_72BEE3: CStrI4
  loc_72BEE5: FStStrNoPop var_26C
  loc_72BEE8: ConcatStr
  loc_72BEE9: PopTmpLdAdStr
  loc_72BEED: FLdRfVar var_EC
  loc_72BEF0: NewIfNullPr CReporte
  loc_72BEF3:  = CReporte.ForeColor
  loc_72BEF8: FFreeStr var_108 = "": var_24C = "": var_250 = "": var_26C = ""
  loc_72BF05: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_72BF1C: FLdRfVar var_FE
  loc_72BF1F: FLdRfVar var_EC
  loc_72BF22: NewIfNullPr CReporte
  loc_72BF25: CReporte.ForeColor = from_stack_1
  loc_72BF2A: LitNothing
  loc_72BF2C: CastAd
  loc_72BF2F: FStAdFunc var_EC
  loc_72BF32: LitNothing
  loc_72BF34: CastAd
  loc_72BF37: FStAdFunc var_F0
  loc_72BF3A: FLdRfVar var_24C
  loc_72BF3D: LitVar_Missing var_248
  loc_72BF40: LitVar_Missing var_228
  loc_72BF43: LitVar_Missing var_208
  loc_72BF46: LitVar_Missing var_1E8
  loc_72BF49: LitVar_Missing var_1C8
  loc_72BF4C: LitVar_Missing var_1A8
  loc_72BF4F: LitVar_Missing var_188
  loc_72BF52: LitVar_Missing var_168
  loc_72BF55: LitVar_Missing var_148
  loc_72BF58: LitVar_Missing var_128
  loc_72BF5B: LitStr "Impresión terminada."
  loc_72BF5E: FStStrCopy var_108
  loc_72BF61: FLdRfVar var_108
  loc_72BF64: LitI4 &H2C
  loc_72BF69: PopTmpLdAdStr var_104
  loc_72BF6C: LitI2_Byte &H4B
  loc_72BF6E: PopTmpLdAd2 var_FE
  loc_72BF71: ImpAdLdRf MemVar_74C7D0
  loc_72BF74: NewIfNullPr clsMsg
  loc_72BF77: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72BF7C: LitVar_Missing var_2D4
  loc_72BF7F: LitVar_Missing var_2B4
  loc_72BF82: LitVar_Missing var_284
  loc_72BF85: LitI4 &H40
  loc_72BF8A: FLdZeroAd var_24C
  loc_72BF8D: CVarStr var_268
  loc_72BF90: ImpAdCallFPR4 MsgBox(, , , , )
  loc_72BF95: FFree1Str var_108
  loc_72BF98: FFreeVar var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_284 = "": var_2B4 = ""
  loc_72BFB7: ExitProcHresult
End Function
