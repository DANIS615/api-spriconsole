VERSION 5.00
Begin VB.Form frmReporteGrupos
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 75
  ClientWidth = 6615
  ClientHeight = 5700
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.TextBox txtHasta
    Left = 840
    Top = 5280
    Width = 1935
    Height = 285
    TabIndex = 3
    Locked = -1  'True
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
  Begin VB.TextBox txtDesde
    Left = 840
    Top = 4920
    Width = 1935
    Height = 285
    TabIndex = 2
    Locked = -1  'True
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
  Begin VB.ListBox lstReporte
    Left = 120
    Top = 840
    Width = 6375
    Height = 4020
    TabIndex = 4
    BeginProperty Font
      Name = "Courier New"
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
    Left = 3720
    Top = 5040
    Width = 1215
    Height = 495
    TabIndex = 1
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
  Begin VB.CommandButton cmdSalir
    Caption = "&Aceptar"
    Left = 5280
    Top = 5040
    Width = 1215
    Height = 495
    TabIndex = 0
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
    Caption = "Hasta:"
    Left = 120
    Top = 5280
    Width = 615
    Height = 255
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
  Begin VB.Label Label1
    Caption = "Desde:"
    Left = 120
    Top = 4920
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
  Begin VB.Label lblTitulo
    Caption = "Reporte de Grupo de Surtidores"
    Left = 0
    Top = 120
    Width = 6615
    Height = 495
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
End

Attribute VB_Name = "frmReporteGrupos"

Public Desdehasta As String


Private Sub cmdSalir_Click() '5D1F6C
  'Data Table: 41A504
  loc_5D1F54: ILdRf Me
  loc_5D1F57: FStAdNoPop
  loc_5D1F5B: ImpAdLdRf MemVar_7520D4
  loc_5D1F5E: NewIfNullPr Global
  loc_5D1F61: Global.Unload from_stack_1
  loc_5D1F66: FFree1Ad var_88
  loc_5D1F69: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '5C8DC8
  'Data Table: 41A504
  loc_5C8DC0: LitI2_Byte &HFF
  loc_5C8DC2: Call ImprimeListado(from_stack_1v)
  loc_5C8DC7: ExitProcHresult
End Sub

Private Sub Form_Load() '68225C
  'Data Table: 41A504
  loc_681D80: ILdRf Me
  loc_681D83: CastAd
  loc_681D86: FStAdFunc var_88
  loc_681D89: FLdRfVar var_88
  loc_681D8C: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_681D91: FFree1Ad var_88
  loc_681D94: FLdPrThis
  loc_681D95: VCallAd Control_ID_lstReporte
  loc_681D98: FStAdFunc var_88
  loc_681D9B: FLdPr var_88
  loc_681D9E: Me.Clear
  loc_681DA3: FFree1Ad var_88
  loc_681DA6: LitVarI2 var_A8, 10
  loc_681DAB: LitI4 1
  loc_681DB0: FLdPr Me
  loc_681DB3: MemLdStr Desdehasta
  loc_681DB6: ImpAdCallI2 Mid$(, , )
  loc_681DBB: FStStrNoPop var_AC
  loc_681DBE: LitStr "  "
  loc_681DC1: ConcatStr
  loc_681DC2: FStStrNoPop var_D0
  loc_681DC5: LitVarI2 var_CC, 8
  loc_681DCA: LitI4 &HB
  loc_681DCF: FLdPr Me
  loc_681DD2: MemLdStr Desdehasta
  loc_681DD5: ImpAdCallI2 Mid$(, , )
  loc_681DDA: FStStrNoPop var_D4
  loc_681DDD: ConcatStr
  loc_681DDE: FStStrNoPop var_D8
  loc_681DE1: FLdPrThis
  loc_681DE2: VCallAd Control_ID_txtDesde
  loc_681DE5: FStAdFunc var_88
  loc_681DE8: FLdPr var_88
  loc_681DEB: Me.Text = from_stack_1
  loc_681DF0: FFreeStr var_AC = "": var_D0 = "": var_D4 = ""
  loc_681DFB: FFree1Ad var_88
  loc_681DFE: FFreeVar var_A8 = ""
  loc_681E05: LitVarI2 var_A8, 10
  loc_681E0A: LitI4 &H13
  loc_681E0F: FLdPr Me
  loc_681E12: MemLdStr Desdehasta
  loc_681E15: ImpAdCallI2 Mid$(, , )
  loc_681E1A: FStStrNoPop var_AC
  loc_681E1D: LitStr "  "
  loc_681E20: ConcatStr
  loc_681E21: FStStrNoPop var_D0
  loc_681E24: LitVarI2 var_CC, 8
  loc_681E29: LitI4 &H1D
  loc_681E2E: FLdPr Me
  loc_681E31: MemLdStr Desdehasta
  loc_681E34: ImpAdCallI2 Mid$(, , )
  loc_681E39: FStStrNoPop var_D4
  loc_681E3C: ConcatStr
  loc_681E3D: FStStrNoPop var_D8
  loc_681E40: FLdPrThis
  loc_681E41: VCallAd Control_ID_txtHasta
  loc_681E44: FStAdFunc var_88
  loc_681E47: FLdPr var_88
  loc_681E4A: Me.Text = from_stack_1
  loc_681E4F: FFreeStr var_AC = "": var_D0 = "": var_D4 = ""
  loc_681E5A: FFree1Ad var_88
  loc_681E5D: FFreeVar var_A8 = ""
  loc_681E64: FLdRfVar var_D0
  loc_681E67: LitVar_Missing var_1E0
  loc_681E6A: LitVar_Missing var_1C0
  loc_681E6D: LitVar_Missing var_1A0
  loc_681E70: LitVar_Missing var_180
  loc_681E73: LitVar_Missing var_160
  loc_681E76: LitVar_Missing var_140
  loc_681E79: LitVar_Missing var_120
  loc_681E7C: LitVar_Missing var_100
  loc_681E7F: LitVar_Missing var_CC
  loc_681E82: LitVar_Missing var_A8
  loc_681E85: LitStr "Reporte de Grupo de"
  loc_681E88: FStStrCopy var_AC
  loc_681E8B: FLdRfVar var_AC
  loc_681E8E: LitI4 1
  loc_681E93: PopTmpLdAdStr var_E0
  loc_681E96: LitI2_Byte &H43
  loc_681E98: PopTmpLdAd2 var_DA
  loc_681E9B: ImpAdLdRf MemVar_74C7D0
  loc_681E9E: NewIfNullPr clsMsg
  loc_681EA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681EA6: ILdRf var_D0
  loc_681EA9: LitStr " "
  loc_681EAC: ConcatStr
  loc_681EAD: FStStrNoPop var_D4
  loc_681EB0: ImpAdLdI4 MemVar_74BEE4
  loc_681EB3: ConcatStr
  loc_681EB4: FStStrNoPop var_D8
  loc_681EB7: FLdPrThis
  loc_681EB8: VCallAd Control_ID_lblTitulo
  loc_681EBB: FStAdFunc var_88
  loc_681EBE: FLdPr var_88
  loc_681EC1: Me.Caption = from_stack_1
  loc_681EC6: FFreeStr var_AC = "": var_D0 = "": var_D4 = ""
  loc_681ED1: FFree1Ad var_88
  loc_681ED4: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_681EEB: FLdRfVar var_D0
  loc_681EEE: LitVar_Missing var_1E0
  loc_681EF1: LitVar_Missing var_1C0
  loc_681EF4: LitVar_Missing var_1A0
  loc_681EF7: LitVar_Missing var_180
  loc_681EFA: LitVar_Missing var_160
  loc_681EFD: LitVar_Missing var_140
  loc_681F00: LitVar_Missing var_120
  loc_681F03: LitVar_Missing var_100
  loc_681F06: LitVar_Missing var_CC
  loc_681F09: LitVar_Missing var_A8
  loc_681F0C: LitStr "Desde:"
  loc_681F0F: FStStrCopy var_AC
  loc_681F12: FLdRfVar var_AC
  loc_681F15: LitI4 2
  loc_681F1A: PopTmpLdAdStr var_E0
  loc_681F1D: LitI2_Byte &H43
  loc_681F1F: PopTmpLdAd2 var_DA
  loc_681F22: ImpAdLdRf MemVar_74C7D0
  loc_681F25: NewIfNullPr clsMsg
  loc_681F28: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681F2D: ILdRf var_D0
  loc_681F30: FLdPrThis
  loc_681F31: VCallAd Control_ID_Label1
  loc_681F34: FStAdFunc var_88
  loc_681F37: FLdPr var_88
  loc_681F3A: Me.Caption = from_stack_1
  loc_681F3F: FFreeStr var_AC = ""
  loc_681F46: FFree1Ad var_88
  loc_681F49: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_681F60: FLdRfVar var_D0
  loc_681F63: LitVar_Missing var_1E0
  loc_681F66: LitVar_Missing var_1C0
  loc_681F69: LitVar_Missing var_1A0
  loc_681F6C: LitVar_Missing var_180
  loc_681F6F: LitVar_Missing var_160
  loc_681F72: LitVar_Missing var_140
  loc_681F75: LitVar_Missing var_120
  loc_681F78: LitVar_Missing var_100
  loc_681F7B: LitVar_Missing var_CC
  loc_681F7E: LitVar_Missing var_A8
  loc_681F81: LitStr "Até:"
  loc_681F84: FStStrCopy var_AC
  loc_681F87: FLdRfVar var_AC
  loc_681F8A: LitI4 3
  loc_681F8F: PopTmpLdAdStr var_E0
  loc_681F92: LitI2_Byte &H43
  loc_681F94: PopTmpLdAd2 var_DA
  loc_681F97: ImpAdLdRf MemVar_74C7D0
  loc_681F9A: NewIfNullPr clsMsg
  loc_681F9D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681FA2: ILdRf var_D0
  loc_681FA5: FLdPrThis
  loc_681FA6: VCallAd Control_ID_Label2
  loc_681FA9: FStAdFunc var_88
  loc_681FAC: FLdPr var_88
  loc_681FAF: Me.Caption = from_stack_1
  loc_681FB4: FFreeStr var_AC = ""
  loc_681FBB: FFree1Ad var_88
  loc_681FBE: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_681FD5: FLdRfVar var_D0
  loc_681FD8: LitVar_Missing var_1E0
  loc_681FDB: LitVar_Missing var_1C0
  loc_681FDE: LitVar_Missing var_1A0
  loc_681FE1: LitVar_Missing var_180
  loc_681FE4: LitVar_Missing var_160
  loc_681FE7: LitVar_Missing var_140
  loc_681FEA: LitVar_Missing var_120
  loc_681FED: LitVar_Missing var_100
  loc_681FF0: LitVar_Missing var_CC
  loc_681FF3: LitVar_Missing var_A8
  loc_681FF6: LitStr "&Imprimir"
  loc_681FF9: FStStrCopy var_AC
  loc_681FFC: FLdRfVar var_AC
  loc_681FFF: LitI4 4
  loc_682004: PopTmpLdAdStr var_E0
  loc_682007: LitI2_Byte &H43
  loc_682009: PopTmpLdAd2 var_DA
  loc_68200C: ImpAdLdRf MemVar_74C7D0
  loc_68200F: NewIfNullPr clsMsg
  loc_682012: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_682017: ILdRf var_D0
  loc_68201A: FLdPrThis
  loc_68201B: VCallAd Control_ID_cmdImprimir
  loc_68201E: FStAdFunc var_88
  loc_682021: FLdPr var_88
  loc_682024: Me.Caption = from_stack_1
  loc_682029: FFreeStr var_AC = ""
  loc_682030: FFree1Ad var_88
  loc_682033: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_68204A: FLdRfVar var_D0
  loc_68204D: LitVar_Missing var_1E0
  loc_682050: LitVar_Missing var_1C0
  loc_682053: LitVar_Missing var_1A0
  loc_682056: LitVar_Missing var_180
  loc_682059: LitVar_Missing var_160
  loc_68205C: LitVar_Missing var_140
  loc_68205F: LitVar_Missing var_120
  loc_682062: LitVar_Missing var_100
  loc_682065: LitVar_Missing var_CC
  loc_682068: LitVar_Missing var_A8
  loc_68206B: LitStr "&Salir"
  loc_68206E: FStStrCopy var_AC
  loc_682071: FLdRfVar var_AC
  loc_682074: LitI4 5
  loc_682079: PopTmpLdAdStr var_E0
  loc_68207C: LitI2_Byte &H43
  loc_68207E: PopTmpLdAd2 var_DA
  loc_682081: ImpAdLdRf MemVar_74C7D0
  loc_682084: NewIfNullPr clsMsg
  loc_682087: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68208C: ILdRf var_D0
  loc_68208F: FLdPrThis
  loc_682090: VCallAd Control_ID_cmdSalir
  loc_682093: FStAdFunc var_88
  loc_682096: FLdPr var_88
  loc_682099: Me.Caption = from_stack_1
  loc_68209E: FFreeStr var_AC = ""
  loc_6820A5: FFree1Ad var_88
  loc_6820A8: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6820BF: FLdRfVar var_DA
  loc_6820C2: FLdRfVar var_1E8
  loc_6820C5: FLdRfVar var_88
  loc_6820C8: ImpAdLdRf MemVar_74C760
  loc_6820CB: NewIfNullPr Formx
  loc_6820CE: from_stack_1v = Formx.global_4589716Get()
  loc_6820D3: FLdPr var_88
  loc_6820D6: Call 0.Method_arg_29C ()
  loc_6820DB: FLdI2 var_DA
  loc_6820DE: NotI4
  loc_6820DF: FFree1Ad var_88
  loc_6820E2: BranchF loc_682111
  loc_6820E5: FLdRfVar var_A8
  loc_6820E8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6820ED: FLdRfVar var_A8
  loc_6820F0: CBoolVarNull
  loc_6820F2: FFree1Var var_A8 = ""
  loc_6820F5: BranchF loc_68210E
  loc_6820F8: ILdRf Me
  loc_6820FB: FStAdNoPop
  loc_6820FF: ImpAdLdRf MemVar_7520D4
  loc_682102: NewIfNullPr Global
  loc_682105: Global.Unload from_stack_1
  loc_68210A: FFree1Ad var_88
  loc_68210D: ExitProcHresult
  loc_68210E: Branch loc_6820BF
  loc_682111: ILdRf var_1E8
  loc_682114: FnLenStr
  loc_682115: LitI4 &H34
  loc_68211A: LtI4
  loc_68211B: BranchF loc_6821B1
  loc_68211E: FLdRfVar var_D0
  loc_682121: LitVar_Missing var_1E0
  loc_682124: LitVar_Missing var_1C0
  loc_682127: LitVar_Missing var_1A0
  loc_68212A: LitVar_Missing var_180
  loc_68212D: LitVar_Missing var_160
  loc_682130: LitVar_Missing var_140
  loc_682133: LitVar_Missing var_120
  loc_682136: LitVar_Missing var_100
  loc_682139: LitVar_Missing var_CC
  loc_68213C: LitVar_Missing var_A8
  loc_68213F: LitStr "No hay grupos de surtidores configurados. Verifique por favor."
  loc_682142: FStStrCopy var_AC
  loc_682145: FLdRfVar var_AC
  loc_682148: LitI4 &HD
  loc_68214D: PopTmpLdAdStr var_E0
  loc_682150: LitI2_Byte &H43
  loc_682152: PopTmpLdAd2 var_DA
  loc_682155: ImpAdLdRf MemVar_74C7D0
  loc_682158: NewIfNullPr clsMsg
  loc_68215B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_682160: LitVar_Missing var_258
  loc_682163: LitVar_Missing var_238
  loc_682166: LitVar_Missing var_218
  loc_682169: LitI4 &H40
  loc_68216E: FLdZeroAd var_D0
  loc_682171: CVarStr var_1F8
  loc_682174: ImpAdCallFPR4 MsgBox(, , , , )
  loc_682179: FFree1Str var_AC
  loc_68217C: FFreeVar var_A8 = "": var_CC = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_1F8 = "": var_218 = "": var_238 = ""
  loc_68219B: ILdRf Me
  loc_68219E: FStAdNoPop
  loc_6821A2: ImpAdLdRf MemVar_7520D4
  loc_6821A5: NewIfNullPr Global
  loc_6821A8: Global.Unload from_stack_1
  loc_6821AD: FFree1Ad var_88
  loc_6821B0: ExitProcHresult
  loc_6821B1: LitI4 1
  loc_6821B6: ILdRf var_1E8
  loc_6821B9: FnLenStr
  loc_6821BA: CR8I4
  loc_6821BB: LitI2_Byte &H34
  loc_6821BD: CR8I2
  loc_6821BE: DivR8
  loc_6821BF: CI4R8
  loc_6821C0: FLdPr Me
  loc_6821C3: MemLdRfVar from_stack_1.global_56
  loc_6821C6: Redim
  loc_6821D0: LitI2_Byte 1
  loc_6821D2: FStI2 var_1E2
  loc_6821D5: FLdI2 var_1E2
  loc_6821D8: CI4UI1
  loc_6821D9: ILdRf var_1E8
  loc_6821DC: FnLenStr
  loc_6821DD: LtI4
  loc_6821DE: BranchF loc_682258
  loc_6821E1: LitVarI2 var_A8, 20
  loc_6821E6: FLdI2 var_1E2
  loc_6821E9: CI4UI1
  loc_6821EA: ILdRf var_1E8
  loc_6821ED: ImpAdCallI2 Mid$(, , )
  loc_6821F2: FStStrNoPop var_AC
  loc_6821F5: FLdI2 var_1E2
  loc_6821F8: CR8I2
  loc_6821F9: LitI2_Byte &H34
  loc_6821FB: CR8I2
  loc_6821FC: DivR8
  loc_6821FD: LitI2_Byte 1
  loc_6821FF: CR8I2
  loc_682200: AddR8
  loc_682201: CI4R8
  loc_682202: FLdPr Me
  loc_682205: MemLdStr global_56
  loc_682208: Ary1LdPr
  loc_682209: MemLdRfVar from_stack_1.global_64
  loc_68220C: StFixedStr
  loc_68220F: FFree1Str var_AC
  loc_682212: FFree1Var var_A8 = ""
  loc_682215: LitVarI2 var_A8, 32
  loc_68221A: FLdI2 var_1E2
  loc_68221D: LitI2_Byte &H14
  loc_68221F: AddI2
  loc_682220: CI4UI1
  loc_682221: ILdRf var_1E8
  loc_682224: ImpAdCallI2 Mid$(, , )
  loc_682229: FStStrNoPop var_AC
  loc_68222C: FLdI2 var_1E2
  loc_68222F: CR8I2
  loc_682230: LitI2_Byte &H34
  loc_682232: CR8I2
  loc_682233: DivR8
  loc_682234: LitI2_Byte 1
  loc_682236: CR8I2
  loc_682237: AddR8
  loc_682238: CI4R8
  loc_682239: FLdPr Me
  loc_68223C: MemLdStr global_56
  loc_68223F: Ary1LdPr
  loc_682240: MemLdRfVar from_stack_1.global_0
  loc_682243: StFixedStr
  loc_682246: FFree1Str var_AC
  loc_682249: FFree1Var var_A8 = ""
  loc_68224C: FLdI2 var_1E2
  loc_68224F: LitI2_Byte &H34
  loc_682251: AddI2
  loc_682252: FStI2 var_1E2
  loc_682255: Branch loc_6821D5
  loc_682258: ExitProcHresult
  loc_682259: SubI4
  loc_68225A: Ary1LdI2
End Sub

Private Sub Form_Activate() '5C8E00
  'Data Table: 41A504
  loc_5C8DF8: LitI2_Byte 0
  loc_5C8DFA: Call ImprimeListado(from_stack_1v)
  loc_5C8DFF: ExitProcHresult
End Sub

Public Function DesdehastaGet() '41AB78
  DesdehastaGet = Desdehasta
End Function

Public Sub DesdehastaPut(Value) '41AB87
  Desdehasta = Value
End Sub

Public Sub ImprimeListado(bPorImpresora) '6CF63C
  'Data Table: 41A504
  loc_6CEDE4: OnErrorGoto loc_6CF468
  loc_6CEDE7: LitI2_Byte 0
  loc_6CEDE9: FStI2 var_8E
  loc_6CEDEC: FLdI2 bPorImpresora
  loc_6CEDEF: BranchF loc_6CF1C1
  loc_6CEDF2: New Me
  loc_6CEDF6: FStAdFunc var_8C
  loc_6CEDF9: FLdRfVar var_A2
  loc_6CEDFC: FLdRfVar var_9C
  loc_6CEDFF: FLdRfVar var_98
  loc_6CEE02: ImpAdLdRf MemVar_7520D4
  loc_6CEE05: NewIfNullPr Global
  loc_6CEE08:  = Global.App
  loc_6CEE0D: FLdPr var_98
  loc_6CEE10:  = App.Path
  loc_6CEE15: ILdRf var_9C
  loc_6CEE18: LitStr "\reporte.mdb"
  loc_6CEE1B: ConcatStr
  loc_6CEE1C: PopTmpLdAdStr
  loc_6CEE20: FLdPr var_8C
  loc_6CEE23: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEE28: FLdI2 var_A2
  loc_6CEE2B: FFreeStr var_9C = ""
  loc_6CEE32: FFree1Ad var_98
  loc_6CEE35: BranchF loc_6CF1BE
  loc_6CEE38: FLdRfVar var_A2
  loc_6CEE3B: LitStr "DROP TABLE grupo_temp"
  loc_6CEE3E: FStStrCopy var_9C
  loc_6CEE41: FLdRfVar var_9C
  loc_6CEE44: FLdPr var_8C
  loc_6CEE47:  = Forms
  loc_6CEE4C: FFree1Str var_9C
  loc_6CEE4F: FLdRfVar var_A2
  loc_6CEE52: LitStr "DROP TABLE grupo_temp_h"
  loc_6CEE55: FStStrCopy var_9C
  loc_6CEE58: FLdRfVar var_9C
  loc_6CEE5B: FLdPr var_8C
  loc_6CEE5E:  = Forms
  loc_6CEE63: FFree1Str var_9C
  loc_6CEE66: LitStr "CREATE TABLE grupo_temp (id int,tipo varchar(1),nombre varchar(70),importe MONEY)"
  loc_6CEE69: FStStrCopy var_94
  loc_6CEE6C: FLdRfVar var_A2
  loc_6CEE6F: FLdRfVar var_94
  loc_6CEE72: FLdPr var_8C
  loc_6CEE75:  = Forms
  loc_6CEE7A: LitStr "CREATE TABLE grupo_temp_h (uno varchar(70),dos varchar(70),tres varchar(70),cuatro varchar(70),cinco varchar(70))"
  loc_6CEE7D: FStStrCopy var_94
  loc_6CEE80: FLdRfVar var_A2
  loc_6CEE83: FLdRfVar var_94
  loc_6CEE86: FLdPr var_8C
  loc_6CEE89:  = Forms
  loc_6CEE8E: LitStr "insert into grupo_temp_h (uno,dos,tres,cuatro,cinco) values ('"
  loc_6CEE91: FLdRfVar var_A0
  loc_6CEE94: LitVar_Missing var_1E8
  loc_6CEE97: LitVar_Missing var_1C8
  loc_6CEE9A: LitVar_Missing var_1A8
  loc_6CEE9D: LitVar_Missing var_188
  loc_6CEEA0: LitVar_Missing var_168
  loc_6CEEA3: LitVar_Missing var_148
  loc_6CEEA6: LitVar_Missing var_128
  loc_6CEEA9: LitVar_Missing var_108
  loc_6CEEAC: LitVar_Missing var_E8
  loc_6CEEAF: LitVar_Missing var_C8
  loc_6CEEB2: LitStr "Reporte de Grupo de"
  loc_6CEEB5: FStStrCopy var_9C
  loc_6CEEB8: FLdRfVar var_9C
  loc_6CEEBB: LitI4 1
  loc_6CEEC0: PopTmpLdAdStr var_A8
  loc_6CEEC3: LitI2_Byte &H43
  loc_6CEEC5: PopTmpLdAd2 var_A2
  loc_6CEEC8: ImpAdLdRf MemVar_74C7D0
  loc_6CEECB: NewIfNullPr clsMsg
  loc_6CEECE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEED3: ILdRf var_A0
  loc_6CEED6: ConcatStr
  loc_6CEED7: FStStrNoPop var_1EC
  loc_6CEEDA: LitStr " "
  loc_6CEEDD: ConcatStr
  loc_6CEEDE: FStStrNoPop var_1F0
  loc_6CEEE1: ImpAdLdI4 MemVar_74BEE4
  loc_6CEEE4: ConcatStr
  loc_6CEEE5: FStStrNoPop var_1F4
  loc_6CEEE8: LitStr "' ,'"
  loc_6CEEEB: ConcatStr
  loc_6CEEEC: FStStrNoPop var_348
  loc_6CEEEF: FLdRfVar var_344
  loc_6CEEF2: LitVar_Missing var_340
  loc_6CEEF5: LitVar_Missing var_320
  loc_6CEEF8: LitVar_Missing var_300
  loc_6CEEFB: LitVar_Missing var_2E0
  loc_6CEEFE: LitVar_Missing var_2C0
  loc_6CEF01: LitVar_Missing var_2A0
  loc_6CEF04: LitVar_Missing var_280
  loc_6CEF07: LitVar_Missing var_260
  loc_6CEF0A: LitVar_Missing var_240
  loc_6CEF0D: LitVar_Missing var_220
  loc_6CEF10: LitStr "Desde:"
  loc_6CEF13: FStStrCopy var_200
  loc_6CEF16: FLdRfVar var_200
  loc_6CEF19: LitI4 2
  loc_6CEF1E: PopTmpLdAdStr var_1FC
  loc_6CEF21: LitI2_Byte &H43
  loc_6CEF23: PopTmpLdAd2 var_1F6
  loc_6CEF26: ImpAdLdRf MemVar_74C7D0
  loc_6CEF29: NewIfNullPr clsMsg
  loc_6CEF2C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEF31: ILdRf var_344
  loc_6CEF34: ConcatStr
  loc_6CEF35: FStStrNoPop var_34C
  loc_6CEF38: LitStr " "
  loc_6CEF3B: ConcatStr
  loc_6CEF3C: FStStrNoPop var_354
  loc_6CEF3F: FLdRfVar var_350
  loc_6CEF42: FLdPrThis
  loc_6CEF43: VCallAd Control_ID_txtDesde
  loc_6CEF46: FStAdFunc var_98
  loc_6CEF49: FLdPr var_98
  loc_6CEF4C:  = Me.Text
  loc_6CEF51: ILdRf var_350
  loc_6CEF54: ConcatStr
  loc_6CEF55: FStStrNoPop var_358
  loc_6CEF58: LitStr "  -   "
  loc_6CEF5B: ConcatStr
  loc_6CEF5C: FStStrNoPop var_4AC
  loc_6CEF5F: FLdRfVar var_4A8
  loc_6CEF62: LitVar_Missing var_4A4
  loc_6CEF65: LitVar_Missing var_484
  loc_6CEF68: LitVar_Missing var_464
  loc_6CEF6B: LitVar_Missing var_444
  loc_6CEF6E: LitVar_Missing var_424
  loc_6CEF71: LitVar_Missing var_404
  loc_6CEF74: LitVar_Missing var_3E4
  loc_6CEF77: LitVar_Missing var_3C4
  loc_6CEF7A: LitVar_Missing var_3A4
  loc_6CEF7D: LitVar_Missing var_384
  loc_6CEF80: LitStr "Hasta:"
  loc_6CEF83: FStStrCopy var_364
  loc_6CEF86: FLdRfVar var_364
  loc_6CEF89: LitI4 3
  loc_6CEF8E: PopTmpLdAdStr var_360
  loc_6CEF91: LitI2_Byte &H43
  loc_6CEF93: PopTmpLdAd2 var_35A
  loc_6CEF96: ImpAdLdRf MemVar_74C7D0
  loc_6CEF99: NewIfNullPr clsMsg
  loc_6CEF9C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEFA1: ILdRf var_4A8
  loc_6CEFA4: ConcatStr
  loc_6CEFA5: FStStrNoPop var_4B0
  loc_6CEFA8: LitStr " "
  loc_6CEFAB: ConcatStr
  loc_6CEFAC: FStStrNoPop var_4BC
  loc_6CEFAF: FLdRfVar var_4B8
  loc_6CEFB2: FLdPrThis
  loc_6CEFB3: VCallAd Control_ID_txtHasta
  loc_6CEFB6: FStAdFunc var_4B4
  loc_6CEFB9: FLdPr var_4B4
  loc_6CEFBC:  = Me.Text
  loc_6CEFC1: ILdRf var_4B8
  loc_6CEFC4: ConcatStr
  loc_6CEFC5: FStStrNoPop var_4C0
  loc_6CEFC8: LitStr "' ,'"
  loc_6CEFCB: ConcatStr
  loc_6CEFCC: FStStrNoPop var_614
  loc_6CEFCF: FLdRfVar var_610
  loc_6CEFD2: LitVar_Missing var_60C
  loc_6CEFD5: LitVar_Missing var_5EC
  loc_6CEFD8: LitVar_Missing var_5CC
  loc_6CEFDB: LitVar_Missing var_5AC
  loc_6CEFDE: LitVar_Missing var_58C
  loc_6CEFE1: LitVar_Missing var_56C
  loc_6CEFE4: LitVar_Missing var_54C
  loc_6CEFE7: LitVar_Missing var_52C
  loc_6CEFEA: LitVar_Missing var_50C
  loc_6CEFED: LitVar_Missing var_4EC
  loc_6CEFF0: LitStr "Fecha de emision:"
  loc_6CEFF3: FStStrCopy var_4CC
  loc_6CEFF6: FLdRfVar var_4CC
  loc_6CEFF9: LitI4 6
  loc_6CEFFE: PopTmpLdAdStr var_4C8
  loc_6CF001: LitI2_Byte &H43
  loc_6CF003: PopTmpLdAd2 var_4C2
  loc_6CF006: ImpAdLdRf MemVar_74C7D0
  loc_6CF009: NewIfNullPr clsMsg
  loc_6CF00C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF011: ILdRf var_610
  loc_6CF014: ConcatStr
  loc_6CF015: FStStrNoPop var_618
  loc_6CF018: LitStr " "
  loc_6CF01B: ConcatStr
  loc_6CF01C: CVarStr var_638
  loc_6CF01F: FLdRfVar var_628
  loc_6CF022: ImpAdCallFPR4  = Now
  loc_6CF027: FLdRfVar var_628
  loc_6CF02A: ConcatVar var_648
  loc_6CF02E: LitVarStr var_658, "' ,'"
  loc_6CF033: ConcatVar var_668
  loc_6CF037: FLdRfVar var_7B8
  loc_6CF03A: LitVar_Missing var_7B4
  loc_6CF03D: LitVar_Missing var_794
  loc_6CF040: LitVar_Missing var_774
  loc_6CF043: LitVar_Missing var_754
  loc_6CF046: LitVar_Missing var_734
  loc_6CF049: LitVar_Missing var_714
  loc_6CF04C: LitVar_Missing var_6F4
  loc_6CF04F: LitVar_Missing var_6D4
  loc_6CF052: LitVar_Missing var_6B4
  loc_6CF055: LitVar_Missing var_694
  loc_6CF058: LitStr "Grupo"
  loc_6CF05B: FStStrCopy var_674
  loc_6CF05E: FLdRfVar var_674
  loc_6CF061: LitI4 7
  loc_6CF066: PopTmpLdAdStr var_670
  loc_6CF069: LitI2_Byte &H43
  loc_6CF06B: PopTmpLdAd2 var_66A
  loc_6CF06E: ImpAdLdRf MemVar_74C7D0
  loc_6CF071: NewIfNullPr clsMsg
  loc_6CF074: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF079: FLdZeroAd var_7B8
  loc_6CF07C: CVarStr var_7C8
  loc_6CF07F: ConcatVar var_7D8
  loc_6CF083: LitVarStr var_7E8, "' ,'"
  loc_6CF088: ConcatVar var_7F8
  loc_6CF08C: FLdRfVar var_948
  loc_6CF08F: LitVar_Missing var_944
  loc_6CF092: LitVar_Missing var_924
  loc_6CF095: LitVar_Missing var_904
  loc_6CF098: LitVar_Missing var_8E4
  loc_6CF09B: LitVar_Missing var_8C4
  loc_6CF09E: LitVar_Missing var_8A4
  loc_6CF0A1: LitVar_Missing var_884
  loc_6CF0A4: LitVar_Missing var_864
  loc_6CF0A7: LitVar_Missing var_844
  loc_6CF0AA: LitVar_Missing var_824
  loc_6CF0AD: LitStr "Monto"
  loc_6CF0B0: FStStrCopy var_804
  loc_6CF0B3: FLdRfVar var_804
  loc_6CF0B6: LitI4 8
  loc_6CF0BB: PopTmpLdAdStr var_800
  loc_6CF0BE: LitI2_Byte &H43
  loc_6CF0C0: PopTmpLdAd2 var_7FA
  loc_6CF0C3: ImpAdLdRf MemVar_74C7D0
  loc_6CF0C6: NewIfNullPr clsMsg
  loc_6CF0C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF0CE: FLdZeroAd var_948
  loc_6CF0D1: CVarStr var_958
  loc_6CF0D4: ConcatVar var_968
  loc_6CF0D8: LitVarStr var_978, "')"
  loc_6CF0DD: ConcatVar var_988
  loc_6CF0E1: CStrVarTmp
  loc_6CF0E2: FStStr var_94
  loc_6CF0E5: FFreeStr var_9C = "": var_A0 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_200 = "": var_348 = "": var_344 = "": var_34C = "": var_354 = "": var_350 = "": var_358 = "": var_364 = "": var_4AC = "": var_4A8 = "": var_4B0 = "": var_4BC = "": var_4B8 = "": var_4C0 = "": var_4CC = "": var_614 = "": var_610 = "": var_618 = "": var_674 = ""
  loc_6CF11A: FFreeAd var_98 = ""
  loc_6CF121: FFreeVar var_8A4 = "": var_8C4 = "": var_8E4 = "": var_904 = "": var_924 = "": var_944 = "": var_7F8 = "": var_958 = "": var_968 = "": var_988 = "": var_4EC = "": var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5EC = "": var_60C = "": var_638 = "": var_628 = "": var_648 = "": var_694 = "": var_6B4 = "": var_6D4 = "": var_6F4 = "": var_714 = "": var_734 = "": var_754 = "": var_774 = "": var_794 = "": var_7B4 = "": var_668 = "": var_7C8 = "": var_7D8 = "": var_824 = "": var_844 = "": var_864 = "": var_884 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6CF1B0: FLdRfVar var_A2
  loc_6CF1B3: FLdRfVar var_94
  loc_6CF1B6: FLdPr var_8C
  loc_6CF1B9:  = Forms
  loc_6CF1BE: Branch loc_6CF300
  loc_6CF1C1: FLdRfVar var_A0
  loc_6CF1C4: LitVar_Missing var_1E8
  loc_6CF1C7: LitVar_Missing var_1C8
  loc_6CF1CA: LitVar_Missing var_1A8
  loc_6CF1CD: LitVar_Missing var_188
  loc_6CF1D0: LitVar_Missing var_168
  loc_6CF1D3: LitVar_Missing var_148
  loc_6CF1D6: LitVar_Missing var_128
  loc_6CF1D9: LitVar_Missing var_108
  loc_6CF1DC: LitVar_Missing var_E8
  loc_6CF1DF: LitVar_Missing var_C8
  loc_6CF1E2: LitStr "Grupo de Surtidores"
  loc_6CF1E5: FStStrCopy var_9C
  loc_6CF1E8: FLdRfVar var_9C
  loc_6CF1EB: LitI4 9
  loc_6CF1F0: PopTmpLdAdStr var_A8
  loc_6CF1F3: LitI2_Byte &H43
  loc_6CF1F5: PopTmpLdAd2 var_A2
  loc_6CF1F8: ImpAdLdRf MemVar_74C7D0
  loc_6CF1FB: NewIfNullPr clsMsg
  loc_6CF1FE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF203: LitI4 &HA
  loc_6CF208: FLdRfVar var_220
  loc_6CF20B: ImpAdCallFPR4  = Space()
  loc_6CF210: FLdRfVar var_1F0
  loc_6CF213: LitVar_Missing var_3C4
  loc_6CF216: LitVar_Missing var_3A4
  loc_6CF219: LitVar_Missing var_384
  loc_6CF21C: LitVar_Missing var_340
  loc_6CF21F: LitVar_Missing var_320
  loc_6CF222: LitVar_Missing var_300
  loc_6CF225: LitVar_Missing var_2E0
  loc_6CF228: LitVar_Missing var_2C0
  loc_6CF22B: LitVar_Missing var_2A0
  loc_6CF22E: LitVar_Missing var_280
  loc_6CF231: LitStr "Monto"
  loc_6CF234: FStStrCopy var_1EC
  loc_6CF237: FLdRfVar var_1EC
  loc_6CF23A: LitI4 8
  loc_6CF23F: PopTmpLdAdStr var_1FC
  loc_6CF242: LitI2_Byte &H43
  loc_6CF244: PopTmpLdAd2 var_1F6
  loc_6CF247: ImpAdLdRf MemVar_74C7D0
  loc_6CF24A: NewIfNullPr clsMsg
  loc_6CF24D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF252: LitVar_Missing var_374
  loc_6CF255: PopAdLdVar
  loc_6CF256: FLdZeroAd var_A0
  loc_6CF259: CVarStr var_240
  loc_6CF25C: FLdRfVar var_220
  loc_6CF25F: ConcatVar var_260
  loc_6CF263: FLdZeroAd var_1F0
  loc_6CF266: CVarStr var_3E4
  loc_6CF269: ConcatVar var_404
  loc_6CF26D: CStrVarVal var_1F4
  loc_6CF271: FLdPrThis
  loc_6CF272: VCallAd Control_ID_lstReporte
  loc_6CF275: FStAdFunc var_98
  loc_6CF278: FLdPr var_98
  loc_6CF27B: Me.AddItem from_stack_1, from_stack_2
  loc_6CF280: FFreeStr var_9C = "": var_1EC = ""
  loc_6CF289: FFree1Ad var_98
  loc_6CF28C: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_240 = "": var_220 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_260 = "": var_3E4 = ""
  loc_6CF2C1: LitVarStr var_B8, "-"
  loc_6CF2C6: FStVarCopyObj var_C8
  loc_6CF2C9: FLdRfVar var_C8
  loc_6CF2CC: LitI4 &H28
  loc_6CF2D1: FLdRfVar var_E8
  loc_6CF2D4: ImpAdCallFPR4  = String(, )
  loc_6CF2D9: LitVar_Missing var_D8
  loc_6CF2DC: PopAdLdVar
  loc_6CF2DD: FLdRfVar var_E8
  loc_6CF2E0: CStrVarVal var_9C
  loc_6CF2E4: FLdPrThis
  loc_6CF2E5: VCallAd Control_ID_lstReporte
  loc_6CF2E8: FStAdFunc var_98
  loc_6CF2EB: FLdPr var_98
  loc_6CF2EE: Me.AddItem from_stack_1, from_stack_2
  loc_6CF2F3: FFree1Str var_9C
  loc_6CF2F6: FFree1Ad var_98
  loc_6CF2F9: FFreeVar var_C8 = ""
  loc_6CF300: LitI2_Byte 1
  loc_6CF302: FLdRfVar var_86
  loc_6CF305: FLdPr Me
  loc_6CF308: MemLdStr global_56
  loc_6CF30B: LitI2_Byte 1
  loc_6CF30D: FnUBound
  loc_6CF30F: CI2I4
  loc_6CF310: ForI2 var_98C
  loc_6CF316: FLdI2 bPorImpresora
  loc_6CF319: BranchF loc_6CF3BE
  loc_6CF31C: FLdI2 var_8E
  loc_6CF31F: LitI2_Byte 1
  loc_6CF321: AddI2
  loc_6CF322: FStI2 var_8E
  loc_6CF325: LitStr "insert into grupo_temp (id,tipo,nombre,importe) values ('"
  loc_6CF328: FLdI2 var_8E
  loc_6CF32B: CStrUI1
  loc_6CF32D: FStStrNoPop var_9C
  loc_6CF330: ConcatStr
  loc_6CF331: FStStrNoPop var_A0
  loc_6CF334: LitStr "','D', '"
  loc_6CF337: ConcatStr
  loc_6CF338: FStStrNoPop var_1EC
  loc_6CF33B: FLdI2 var_86
  loc_6CF33E: CI4UI1
  loc_6CF33F: FLdPr Me
  loc_6CF342: MemLdStr global_56
  loc_6CF345: Ary1LdPr
  loc_6CF346: MemLdRfVar from_stack_1.global_64
  loc_6CF349: LdFixedStr
  loc_6CF34C: FStStrNoPop var_1F0
  loc_6CF34F: ConcatStr
  loc_6CF350: FStStrNoPop var_1F4
  loc_6CF353: LitStr "' , '"
  loc_6CF356: ConcatStr
  loc_6CF357: FStStrNoPop var_348
  loc_6CF35A: FLdRfVar var_344
  loc_6CF35D: FLdI2 var_86
  loc_6CF360: CI4UI1
  loc_6CF361: FLdPr Me
  loc_6CF364: MemLdStr global_56
  loc_6CF367: Ary1LdPr
  loc_6CF368: MemLdRfVar from_stack_1.global_0
  loc_6CF36B: LdFixedStr
  loc_6CF36E: FStStrNoPop var_200
  loc_6CF371: from_stack_2v = Proc_46_7_67796C(from_stack_1v)
  loc_6CF376: ILdRf var_200
  loc_6CF379: FLdI2 var_86
  loc_6CF37C: CI4UI1
  loc_6CF37D: FLdPr Me
  loc_6CF380: MemLdStr global_56
  loc_6CF383: Ary1LdPr
  loc_6CF384: MemLdRfVar from_stack_1.global_0
  loc_6CF387: StFixedStr
  loc_6CF38A: ILdRf var_344
  loc_6CF38D: ConcatStr
  loc_6CF38E: FStStrNoPop var_34C
  loc_6CF391: LitStr "')"
  loc_6CF394: ConcatStr
  loc_6CF395: FStStr var_94
  loc_6CF398: FFreeStr var_9C = "": var_A0 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_200 = "": var_348 = "": var_344 = ""
  loc_6CF3AD: FLdRfVar var_A2
  loc_6CF3B0: FLdRfVar var_94
  loc_6CF3B3: FLdPr var_8C
  loc_6CF3B6:  = Forms
  loc_6CF3BB: Branch loc_6CF44E
  loc_6CF3BE: LitI4 5
  loc_6CF3C3: FLdRfVar var_C8
  loc_6CF3C6: ImpAdCallFPR4  = Space()
  loc_6CF3CB: FLdRfVar var_A0
  loc_6CF3CE: FLdI2 var_86
  loc_6CF3D1: CI4UI1
  loc_6CF3D2: FLdPr Me
  loc_6CF3D5: MemLdStr global_56
  loc_6CF3D8: Ary1LdPr
  loc_6CF3D9: MemLdRfVar from_stack_1.global_0
  loc_6CF3DC: LdFixedStr
  loc_6CF3DF: FStStrNoPop var_9C
  loc_6CF3E2: from_stack_2v = Proc_46_7_67796C(from_stack_1v)
  loc_6CF3E7: ILdRf var_9C
  loc_6CF3EA: FLdI2 var_86
  loc_6CF3ED: CI4UI1
  loc_6CF3EE: FLdPr Me
  loc_6CF3F1: MemLdStr global_56
  loc_6CF3F4: Ary1LdPr
  loc_6CF3F5: MemLdRfVar from_stack_1.global_0
  loc_6CF3F8: StFixedStr
  loc_6CF3FB: LitVar_Missing var_B8
  loc_6CF3FE: PopAdLdVar
  loc_6CF3FF: FLdI2 var_86
  loc_6CF402: CI4UI1
  loc_6CF403: FLdPr Me
  loc_6CF406: MemLdStr global_56
  loc_6CF409: Ary1LdPr
  loc_6CF40A: MemLdRfVar from_stack_1.global_64
  loc_6CF40D: LdFixedStr
  loc_6CF410: CVarStr var_E8
  loc_6CF413: FLdRfVar var_C8
  loc_6CF416: ConcatVar var_108
  loc_6CF41A: FLdZeroAd var_A0
  loc_6CF41D: CVarStr var_128
  loc_6CF420: ConcatVar var_148
  loc_6CF424: CStrVarVal var_1EC
  loc_6CF428: FLdPrThis
  loc_6CF429: VCallAd Control_ID_lstReporte
  loc_6CF42C: FStAdFunc var_98
  loc_6CF42F: FLdPr var_98
  loc_6CF432: Me.AddItem from_stack_1, from_stack_2
  loc_6CF437: FFreeStr var_9C = ""
  loc_6CF43E: FFree1Ad var_98
  loc_6CF441: FFreeVar var_E8 = "": var_C8 = "": var_108 = "": var_128 = ""
  loc_6CF44E: FLdRfVar var_86
  loc_6CF451: NextI2 var_98C, loc_6CF316
  loc_6CF456: FLdI2 bPorImpresora
  loc_6CF459: BranchF loc_6CF467
  loc_6CF45C: FLdRfVar var_A2
  loc_6CF45F: FLdPr var_8C
  loc_6CF462: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6CF467: ExitProcHresult
  loc_6CF468: FLdRfVar var_A8
  loc_6CF46B: ImpAdCallI2 Err 'rtcErrObj
  loc_6CF470: FStAdFunc var_98
  loc_6CF473: FLdPr var_98
  loc_6CF476:  = Err.Number
  loc_6CF47B: ILdRf var_A8
  loc_6CF47E: LitI4 &H1E2
  loc_6CF483: EqI4
  loc_6CF484: FFree1Ad var_98
  loc_6CF487: BranchF loc_6CF638
  loc_6CF48A: FLdRfVar var_A0
  loc_6CF48D: LitVar_Missing var_1E8
  loc_6CF490: LitVar_Missing var_1C8
  loc_6CF493: LitVar_Missing var_1A8
  loc_6CF496: LitVar_Missing var_188
  loc_6CF499: LitVar_Missing var_168
  loc_6CF49C: LitVar_Missing var_148
  loc_6CF49F: LitVar_Missing var_128
  loc_6CF4A2: LitVar_Missing var_108
  loc_6CF4A5: LitVar_Missing var_E8
  loc_6CF4A8: LitVar_Missing var_C8
  loc_6CF4AB: LitStr "Se produjo un error al intentar"
  loc_6CF4AE: FStStrCopy var_9C
  loc_6CF4B1: FLdRfVar var_9C
  loc_6CF4B4: LitI4 &HE
  loc_6CF4B9: PopTmpLdAdStr var_A8
  loc_6CF4BC: LitI2_Byte &H43
  loc_6CF4BE: PopTmpLdAd2 var_A2
  loc_6CF4C1: ImpAdLdRf MemVar_74C7D0
  loc_6CF4C4: NewIfNullPr clsMsg
  loc_6CF4C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF4CC: LitI4 &HD
  loc_6CF4D1: FLdRfVar var_220
  loc_6CF4D4: ImpAdCallFPR4  = Chr()
  loc_6CF4D9: LitI4 &HA
  loc_6CF4DE: FLdRfVar var_280
  loc_6CF4E1: ImpAdCallFPR4  = Chr()
  loc_6CF4E6: FLdRfVar var_1F0
  loc_6CF4E9: LitVar_Missing var_404
  loc_6CF4EC: LitVar_Missing var_3E4
  loc_6CF4EF: LitVar_Missing var_3C4
  loc_6CF4F2: LitVar_Missing var_3A4
  loc_6CF4F5: LitVar_Missing var_384
  loc_6CF4F8: LitVar_Missing var_340
  loc_6CF4FB: LitVar_Missing var_320
  loc_6CF4FE: LitVar_Missing var_300
  loc_6CF501: LitVar_Missing var_2E0
  loc_6CF504: LitVar_Missing var_2C0
  loc_6CF507: LitStr "imprimir. Por favor verifique las"
  loc_6CF50A: FStStrCopy var_1EC
  loc_6CF50D: FLdRfVar var_1EC
  loc_6CF510: LitI4 &HF
  loc_6CF515: PopTmpLdAdStr var_1FC
  loc_6CF518: LitI2_Byte &H43
  loc_6CF51A: PopTmpLdAd2 var_1F6
  loc_6CF51D: ImpAdLdRf MemVar_74C7D0
  loc_6CF520: NewIfNullPr clsMsg
  loc_6CF523: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF528: LitI4 &HD
  loc_6CF52D: FLdRfVar var_464
  loc_6CF530: ImpAdCallFPR4  = Chr()
  loc_6CF535: LitI4 &HA
  loc_6CF53A: FLdRfVar var_4A4
  loc_6CF53D: ImpAdCallFPR4  = Chr()
  loc_6CF542: FLdRfVar var_200
  loc_6CF545: LitVar_Missing var_628
  loc_6CF548: LitVar_Missing var_60C
  loc_6CF54B: LitVar_Missing var_5EC
  loc_6CF54E: LitVar_Missing var_5CC
  loc_6CF551: LitVar_Missing var_5AC
  loc_6CF554: LitVar_Missing var_58C
  loc_6CF557: LitVar_Missing var_56C
  loc_6CF55A: LitVar_Missing var_54C
  loc_6CF55D: LitVar_Missing var_52C
  loc_6CF560: LitVar_Missing var_50C
  loc_6CF563: LitStr "conexiones."
  loc_6CF566: FStStrCopy var_1F4
  loc_6CF569: FLdRfVar var_1F4
  loc_6CF56C: LitI4 &H10
  loc_6CF571: PopTmpLdAdStr var_360
  loc_6CF574: LitI2_Byte &H43
  loc_6CF576: PopTmpLdAd2 var_35A
  loc_6CF579: ImpAdLdRf MemVar_74C7D0
  loc_6CF57C: NewIfNullPr clsMsg
  loc_6CF57F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CF584: LitVar_Missing var_694
  loc_6CF587: LitVar_Missing var_668
  loc_6CF58A: ImpAdLdRf MemVar_74BF24
  loc_6CF58D: CVarRef
  loc_6CF592: LitI4 &H40
  loc_6CF597: FLdZeroAd var_A0
  loc_6CF59A: CVarStr var_240
  loc_6CF59D: FLdRfVar var_220
  loc_6CF5A0: AddVar var_260
  loc_6CF5A4: FLdRfVar var_280
  loc_6CF5A7: AddVar var_2A0
  loc_6CF5AB: FLdZeroAd var_1F0
  loc_6CF5AE: CVarStr var_424
  loc_6CF5B1: AddVar var_444
  loc_6CF5B5: FLdRfVar var_464
  loc_6CF5B8: AddVar var_484
  loc_6CF5BC: FLdRfVar var_4A4
  loc_6CF5BF: AddVar var_4EC
  loc_6CF5C3: FLdZeroAd var_200
  loc_6CF5C6: CVarStr var_638
  loc_6CF5C9: AddVar var_648
  loc_6CF5CD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CF5D2: FFreeStr var_9C = "": var_1EC = ""
  loc_6CF5DB: FFreeVar var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5EC = "": var_60C = "": var_628 = "": var_4EC = "": var_638 = "": var_648 = "": var_668 = "": var_694 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_240 = "": var_220 = "": var_260 = "": var_280 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_2A0 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6CF638: ExitProcHresult
End Sub

Private Function Proc_46_7_67796C(arg_C) '67796C
  'Data Table: 41A504
  loc_6775A0: ILdRf arg_C
  loc_6775A3: FStStrCopy var_8C
  loc_6775A6: ZeroRetVal
  loc_6775A8: LitVarI2 var_DC, 18
  loc_6775AD: LitI4 1
  loc_6775B2: FLdPr Me
  loc_6775B5: MemLdRfVar from_stack_1.Desdehasta
  loc_6775B8: CVarRef
  loc_6775BD: FLdRfVar var_EC
  loc_6775C0: ImpAdCallFPR4  = Mid(, , )
  loc_6775C5: FLdRfVar var_EC
  loc_6775C8: CStrVarTmp
  loc_6775C9: FStStr var_98
  loc_6775CC: FFreeVar var_DC = ""
  loc_6775D3: LitStr vbNullString
  loc_6775D6: LitStr "/"
  loc_6775D9: ILdRf var_98
  loc_6775DC: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_6775E1: FStStr var_98
  loc_6775E4: LitStr vbNullString
  loc_6775E7: LitStr ":"
  loc_6775EA: ILdRf var_98
  loc_6775ED: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_6775F2: FStStr var_98
  loc_6775F5: LitVarI2 var_DC, 18
  loc_6775FA: LitI4 &H13
  loc_6775FF: FLdPr Me
  loc_677602: MemLdRfVar from_stack_1.Desdehasta
  loc_677605: CVarRef
  loc_67760A: FLdRfVar var_EC
  loc_67760D: ImpAdCallFPR4  = Mid(, , )
  loc_677612: FLdRfVar var_EC
  loc_677615: CStrVarTmp
  loc_677616: FStStr var_9C
  loc_677619: FFreeVar var_DC = ""
  loc_677620: LitStr vbNullString
  loc_677623: LitStr "/"
  loc_677626: ILdRf var_9C
  loc_677629: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_67762E: FStStr var_9C
  loc_677631: LitStr vbNullString
  loc_677634: LitStr ":"
  loc_677637: ILdRf var_9C
  loc_67763A: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_67763F: FStStr var_9C
  loc_677642: FLdRfVar var_DC
  loc_677645: FLdRfVar var_AC
  loc_677648: FLdRfVar var_A0
  loc_67764B: ILdRf var_8C
  loc_67764E: LitStr "1111111"
  loc_677651: ConcatStr
  loc_677652: FStStrNoPop var_F4
  loc_677655: LitI2_Byte 0
  loc_677657: ILdRf var_9C
  loc_67765A: ILdRf var_98
  loc_67765D: FLdRfVar var_F0
  loc_677660: ImpAdLdRf MemVar_74C760
  loc_677663: NewIfNullPr Formx
  loc_677666: from_stack_1v = Formx.global_4589716Get()
  loc_67766B: FLdPr var_F0
  loc_67766E: Formx.ScaleLeft = from_stack_1s
  loc_677673: FLdRfVar var_DC
  loc_677676: NotVar var_EC
  loc_67767A: CBoolVarNull
  loc_67767C: FFree1Str var_F4
  loc_67767F: FFree1Ad var_F0
  loc_677682: FFree1Var var_DC = ""
  loc_677685: BranchF loc_6776B9
  loc_677688: FLdRfVar var_DC
  loc_67768B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_677690: FLdRfVar var_DC
  loc_677693: CBoolVarNull
  loc_677695: FFree1Var var_DC = ""
  loc_677698: BranchF loc_6776B6
  loc_67769B: ILdRf Me
  loc_67769E: FStAdNoPop
  loc_6776A2: ImpAdLdRf MemVar_7520D4
  loc_6776A5: NewIfNullPr Global
  loc_6776A8: Global.Unload from_stack_1
  loc_6776AD: FFree1Ad var_F0
  loc_6776B0: ExitProcCbHresult
  loc_6776B6: Branch loc_677642
  loc_6776B9: ILdRf var_A0
  loc_6776BC: LitI4 &HFFFF
  loc_6776C1: GtI4
  loc_6776C2: BranchF loc_677837
  loc_6776C5: FLdRfVar var_200
  loc_6776C8: LitVar_Missing var_1FC
  loc_6776CB: LitVar_Missing var_1DC
  loc_6776CE: LitVar_Missing var_1BC
  loc_6776D1: LitVar_Missing var_19C
  loc_6776D4: LitVar_Missing var_17C
  loc_6776D7: LitVar_Missing var_15C
  loc_6776DA: LitVar_Missing var_13C
  loc_6776DD: LitVar_Missing var_11C
  loc_6776E0: LitVar_Missing var_EC
  loc_6776E3: LitVar_Missing var_DC
  loc_6776E6: LitStr "El período seleccionado abarca demasiados despachos."
  loc_6776E9: FStStrCopy var_F4
  loc_6776EC: FLdRfVar var_F4
  loc_6776EF: LitI4 &HA
  loc_6776F4: PopTmpLdAdStr var_FC
  loc_6776F7: LitI2_Byte &H43
  loc_6776F9: PopTmpLdAd2 var_F6
  loc_6776FC: ImpAdLdRf MemVar_74C7D0
  loc_6776FF: NewIfNullPr clsMsg
  loc_677702: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677707: LitI4 &HD
  loc_67770C: ImpAdCallI2 Chr$()
  loc_677711: FStStr var_50C
  loc_677714: FLdRfVar var_354
  loc_677717: LitVar_Missing var_350
  loc_67771A: LitVar_Missing var_330
  loc_67771D: LitVar_Missing var_310
  loc_677720: LitVar_Missing var_2F0
  loc_677723: LitVar_Missing var_2D0
  loc_677726: LitVar_Missing var_2B0
  loc_677729: LitVar_Missing var_290
  loc_67772C: LitVar_Missing var_270
  loc_67772F: LitVar_Missing var_250
  loc_677732: LitVar_Missing var_230
  loc_677735: LitStr "Por favor reduzca el rango."
  loc_677738: FStStrCopy var_210
  loc_67773B: FLdRfVar var_210
  loc_67773E: LitI4 &HB
  loc_677743: PopTmpLdAdStr var_20C
  loc_677746: LitI2_Byte &H43
  loc_677748: PopTmpLdAd2 var_206
  loc_67774B: ImpAdLdRf MemVar_74C7D0
  loc_67774E: NewIfNullPr clsMsg
  loc_677751: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677756: FLdRfVar var_4A8
  loc_677759: LitVar_Missing var_4A4
  loc_67775C: LitVar_Missing var_484
  loc_67775F: LitVar_Missing var_464
  loc_677762: LitVar_Missing var_444
  loc_677765: LitVar_Missing var_424
  loc_677768: LitVar_Missing var_404
  loc_67776B: LitVar_Missing var_3E4
  loc_67776E: LitVar_Missing var_3C4
  loc_677771: LitVar_Missing var_3A4
  loc_677774: LitVar_Missing var_384
  loc_677777: LitStr "Reporte de Grupo de Surtidores"
  loc_67777A: FStStrCopy var_364
  loc_67777D: FLdRfVar var_364
  loc_677780: LitI4 &HC
  loc_677785: PopTmpLdAdStr var_360
  loc_677788: LitI2_Byte &H43
  loc_67778A: PopTmpLdAd2 var_35A
  loc_67778D: ImpAdLdRf MemVar_74C7D0
  loc_677790: NewIfNullPr clsMsg
  loc_677793: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677798: LitVar_Missing var_508
  loc_67779B: LitVar_Missing var_4E8
  loc_67779E: FLdZeroAd var_4A8
  loc_6777A1: CVarStr var_4C8
  loc_6777A4: LitI4 &H40
  loc_6777A9: ILdRf var_200
  loc_6777AC: FLdZeroAd var_50C
  loc_6777AF: FStStrNoPop var_204
  loc_6777B2: ConcatStr
  loc_6777B3: FStStrNoPop var_358
  loc_6777B6: ILdRf var_354
  loc_6777B9: ConcatStr
  loc_6777BA: CVarStr var_4B8
  loc_6777BD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6777C2: FFreeStr var_F4 = "": var_200 = "": var_204 = "": var_210 = "": var_358 = "": var_354 = "": var_364 = ""
  loc_6777D5: FFreeVar var_4B8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_DC = "": var_EC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_67781C: ILdRf Me
  loc_67781F: FStAdNoPop
  loc_677823: ImpAdLdRf MemVar_7520D4
  loc_677826: NewIfNullPr Global
  loc_677829: Global.Unload from_stack_1
  loc_67782E: FFree1Ad var_F0
  loc_677831: ExitProcCbHresult
  loc_677837: FLdRfVar var_DC
  loc_67783A: FLdRfVar var_90
  loc_67783D: ILdRf var_A0
  loc_677840: FLdRfVar var_F0
  loc_677843: ImpAdLdRf MemVar_74C760
  loc_677846: NewIfNullPr Formx
  loc_677849: from_stack_1v = Formx.global_4589716Get()
  loc_67784E: FLdPr var_F0
  loc_677851:  = Formx.ScaleTop
  loc_677856: FLdRfVar var_DC
  loc_677859: NotVar var_EC
  loc_67785D: CBoolVarNull
  loc_67785F: FFree1Ad var_F0
  loc_677862: FFree1Var var_DC = ""
  loc_677865: BranchF loc_677899
  loc_677868: FLdRfVar var_DC
  loc_67786B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_677870: FLdRfVar var_DC
  loc_677873: CBoolVarNull
  loc_677875: FFree1Var var_DC = ""
  loc_677878: BranchF loc_677896
  loc_67787B: ILdRf Me
  loc_67787E: FStAdNoPop
  loc_677882: ImpAdLdRf MemVar_7520D4
  loc_677885: NewIfNullPr Global
  loc_677888: Global.Unload from_stack_1
  loc_67788D: FFree1Ad var_F0
  loc_677890: ExitProcCbHresult
  loc_677896: Branch loc_677837
  loc_677899: LitDate 0
  loc_6778A2: FStFPR4 var_A8
  loc_6778A5: LitI2_Byte 1
  loc_6778A7: FStI2 var_A2
  loc_6778AA: FLdI2 var_A2
  loc_6778AD: CI4UI1
  loc_6778AE: ILdRf var_90
  loc_6778B1: FnLenStr
  loc_6778B2: LtI4
  loc_6778B3: ILdRf var_90
  loc_6778B6: FnLenStr
  loc_6778B7: LitI4 &HA
  loc_6778BC: GtI4
  loc_6778BD: AndI4
  loc_6778BE: BranchF loc_677902
  loc_6778C1: LitVarI2 var_DC, 8
  loc_6778C6: FLdI2 var_A2
  loc_6778C9: LitI2_Byte &H17
  loc_6778CB: AddI2
  loc_6778CC: CI4UI1
  loc_6778CD: FLdRfVar var_90
  loc_6778D0: CVarRef
  loc_6778D5: FLdRfVar var_EC
  loc_6778D8: ImpAdCallFPR4  = Mid(, , )
  loc_6778DD: FLdFPR4 var_A8
  loc_6778E0: FLdRfVar var_EC
  loc_6778E3: FnCSngVar
  loc_6778E5: ImpAdLdFPR4 MemVar_74C2E0
  loc_6778E8: DivR8
  loc_6778E9: AddR8
  loc_6778EA: FStFPR4 var_A8
  loc_6778ED: FFreeVar var_DC = "": var_EC = ""
  loc_6778F6: FLdI2 var_A2
  loc_6778F9: LitI2_Byte &H38
  loc_6778FB: AddI2
  loc_6778FC: FStI2 var_A2
  loc_6778FF: Branch loc_6778AA
  loc_677902: LitI4 1
  loc_677907: LitI4 1
  loc_67790C: ImpAdLdRf MemVar_74C364
  loc_67790F: CVarRef
  loc_677914: FLdRfVar var_A8
  loc_677917: CVarRef
  loc_67791C: ImpAdCallI2 Format$(, )
  loc_677921: FStStr var_F4
  loc_677924: LitVarStr var_10C, "@"
  loc_677929: FStVarCopyObj var_DC
  loc_67792C: FLdRfVar var_DC
  loc_67792F: LitI4 &HA
  loc_677934: FLdRfVar var_EC
  loc_677937: ImpAdCallFPR4  = String(, )
  loc_67793C: LitI4 1
  loc_677941: LitI4 1
  loc_677946: FLdRfVar var_EC
  loc_677949: FLdZeroAd var_F4
  loc_67794C: CVarStr var_11C
  loc_67794F: ImpAdCallI2 Format$(, )
  loc_677954: FStStr var_88
  loc_677957: FFree1Str var_F4
  loc_67795A: FFreeVar var_DC = "": var_11C = ""
  loc_677963: ExitProcCbHresult
End Function
