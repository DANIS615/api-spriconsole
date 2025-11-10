VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form PreciosConectividad
  Caption = "Cambio de Precios"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 8070
  ClientHeight = 7545
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer ConfirmedTimer
    Enabled = 0   'False
    Interval = 2500
    Left = 7560
    Top = 6840
  End
  Begin VB.CommandButton Cancelar
    Caption = "&Cancelar"
    Left = 3218
    Top = 6840
    Width = 1634
    Height = 672
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Edit_Rest
    Caption = "&Editar"
    Left = 998
    Top = 6840
    Width = 1634
    Height = 672
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Ver
    Caption = "&Ver"
    Left = 3240
    Top = 5880
    Width = 1634
    Height = 672
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame2
    BackColor = &HE0E0E0&
    Left = 120
    Top = 120
    Width = 7815
    Height = 1935
    TabIndex = 6
    Begin VB.Label Label1
      Caption = "Label1"
      Left = 120
      Top = 120
      Width = 7455
      Height = 1815
      TabIndex = 7
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Shape Shape2
      BackColor = &HC0C0C0&
      Left = 0
      Top = 0
      Width = 7695
      Height = 90
      BorderStyle = 0 'Transparent
      BackStyle = 1 'Opaque
    End
  End
  Begin VB.CommandButton Salir_Aceptar
    Caption = "&Salir"
    Left = 5445
    Top = 6840
    Width = 1634
    Height = 672
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    BackColor = &HE0E0E0&
    ForeColor = &H80000008&
    Left = 120
    Top = 1920
    Width = 7815
    Height = 4815
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin MSFlexGridLib.MSFlexGrid TablaProd
      Left = 120
      Top = 360
      Width = 7575
      Height = 3495
      TabIndex = 5
      OleObjectBlob = "PreciosConectividad.frx":0000
    End
    Begin VB.Shape Shape1
      BackColor = &HC0C0C0&
      Left = 0
      Top = 0
      Width = 8000
      Height = 200
      BorderStyle = 0 'Transparent
      BackStyle = 1 'Opaque
    End
  End
End

Attribute VB_Name = "PreciosConectividad"

Public mId_Price As Integer
Public fName As String


Private Sub Form_Load() '6842B8
  'Data Table: 4285F4
  loc_683DC8: FLdRfVar var_98
  loc_683DCB: FLdPr Me
  loc_683DCE:  = Me.Name
  loc_683DD3: ILdRf var_98
  loc_683DD6: FLdPr Me
  loc_683DD9: MemStStrCopy
  loc_683DDD: FFree1Str var_98
  loc_683DE0: FLdPr Me
  loc_683DE3: MemLdI2 global_60
  loc_683DE6: BranchF loc_683EFC
  loc_683DE9: FLdRfVar var_9E
  loc_683DEC: FLdPr Me
  loc_683DEF: MemLdRfVar from_stack_1.global_100
  loc_683DF2: NewIfNullPr CPrice
  loc_683DF5: Call 0.Method_Form_LoadC ()
  loc_683DFA: LitI4 1
  loc_683DFF: LitI4 1
  loc_683E04: LitVarStr var_D0, "00000"
  loc_683E09: FStVarCopyObj var_E0
  loc_683E0C: FLdRfVar var_E0
  loc_683E0F: FLdI2 var_9E
  loc_683E12: CVarI2 var_C0
  loc_683E15: FLdRfVar var_F0
  loc_683E18: ImpAdCallFPR4  = Format(, )
  loc_683E1D: FLdRfVar var_F0
  loc_683E20: CStrVarTmp
  loc_683E21: FStStr var_9C
  loc_683E24: FFreeVar var_C0 = "": var_E0 = ""
  loc_683E2D: FLdRfVar var_9E
  loc_683E30: FLdRfVar var_9C
  loc_683E33: FLdRfVar var_F4
  loc_683E36: ImpAdLdRf MemVar_74C760
  loc_683E39: NewIfNullPr Formx
  loc_683E3C: from_stack_1v = Formx.global_4589716Get()
  loc_683E41: FLdPr var_F4
  loc_683E44: Call 0.Method_arg_358 ()
  loc_683E49: FLdI2 var_9E
  loc_683E4C: NotI4
  loc_683E4D: FFree1Ad var_F4
  loc_683E50: BranchF loc_683E6F
  loc_683E53: FLdRfVar var_C0
  loc_683E56: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_683E5B: FLdRfVar var_C0
  loc_683E5E: CBoolVarNull
  loc_683E60: FFree1Var var_C0 = ""
  loc_683E63: BranchF loc_683E6C
  loc_683E66: Call CleanChildForm()
  loc_683E6B: ExitProcHresult
  loc_683E6C: Branch loc_683E2D
  loc_683E6F: ILdRf var_9C
  loc_683E72: LitStr "1"
  loc_683E75: EqStr
  loc_683E77: BranchF loc_683E85
  loc_683E7A: LitI2_Byte &HFF
  loc_683E7C: FLdPr Me
  loc_683E7F: MemStI2 global_128
  loc_683E82: Branch loc_683E8D
  loc_683E85: LitI2_Byte 0
  loc_683E87: FLdPr Me
  loc_683E8A: MemStI2 global_128
  loc_683E8D: LitStr vbNullString
  loc_683E90: FStStrCopy var_9C
  loc_683E93: FLdRfVar var_9E
  loc_683E96: FLdRfVar var_9C
  loc_683E99: FLdRfVar var_F4
  loc_683E9C: ImpAdLdRf MemVar_74C760
  loc_683E9F: NewIfNullPr Formx
  loc_683EA2: from_stack_1v = Formx.global_4589716Get()
  loc_683EA7: FLdPr var_F4
  loc_683EAA: Call 0.Method_arg_374 ()
  loc_683EAF: FLdI2 var_9E
  loc_683EB2: NotI4
  loc_683EB3: FFree1Ad var_F4
  loc_683EB6: BranchF loc_683ED5
  loc_683EB9: FLdRfVar var_C0
  loc_683EBC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_683EC1: FLdRfVar var_C0
  loc_683EC4: CBoolVarNull
  loc_683EC6: FFree1Var var_C0 = ""
  loc_683EC9: BranchF loc_683ED2
  loc_683ECC: Call CleanChildForm()
  loc_683ED1: ExitProcHresult
  loc_683ED2: Branch loc_683E93
  loc_683ED5: ILdRf var_9C
  loc_683ED8: ImpAdCallFPR4 push Val()
  loc_683EDD: CI2R8
  loc_683EDE: FLdPr Me
  loc_683EE1: MemStI2 global_130
  loc_683EE4: LitStr "&Aceptar"
  loc_683EE7: FLdPrThis
  loc_683EE8: VCallAd Control_ID_Reloj
  loc_683EEB: FStAdFunc var_F4
  loc_683EEE: FLdPr var_F4
  loc_683EF1: Formx.CommandButton.Caption = from_stack_1
  loc_683EF6: FFree1Ad var_F4
  loc_683EF9: Branch loc_683F19
  loc_683EFC: LitI2_Byte 0
  loc_683EFE: FLdPr Me
  loc_683F01: MemStI2 global_128
  loc_683F04: LitStr "&Salir"
  loc_683F07: FLdPrThis
  loc_683F08: VCallAd Control_ID_Salir_Aceptar
  loc_683F0B: FStAdFunc var_F4
  loc_683F0E: FLdPr var_F4
  loc_683F11: Me.Caption = from_stack_1
  loc_683F16: FFree1Ad var_F4
  loc_683F19: FLdPr Me
  loc_683F1C: MemLdI2 global_128
  loc_683F1F: FLdPrThis
  loc_683F20: VCallAd Control_ID_ConfirmedTimer
  loc_683F23: FStAdFunc var_F4
  loc_683F26: FLdPr var_F4
  loc_683F29: Me.Enabled = from_stack_1b
  loc_683F2E: FFree1Ad var_F4
  loc_683F31: LitI2_Byte &HFF
  loc_683F33: FLdPr Me
  loc_683F36: MemStI2 global_84
  loc_683F39: LitI2_Byte &HFF
  loc_683F3B: FLdPrThis
  loc_683F3C: VCallAd Control_ID_Ver
  loc_683F3F: FStAdFunc var_F4
  loc_683F42: FLdPr var_F4
  loc_683F45: Me.Enabled = from_stack_1b
  loc_683F4A: FFree1Ad var_F4
  loc_683F4D: LitStr "&Editar"
  loc_683F50: FLdPrThis
  loc_683F51: VCallAd Control_ID_Edit_Rest
  loc_683F54: FStAdFunc var_F4
  loc_683F57: FLdPr var_F4
  loc_683F5A: Me.Caption = from_stack_1
  loc_683F5F: FFree1Ad var_F4
  loc_683F62: LitI2_Byte 0
  loc_683F64: FLdPrThis
  loc_683F65: VCallAd Control_ID_Cancelar
  loc_683F68: FStAdFunc var_F4
  loc_683F6B: FLdPr var_F4
  loc_683F6E: Me.Enabled = from_stack_1b
  loc_683F73: FFree1Ad var_F4
  loc_683F76: LitI2_Byte &HFF
  loc_683F78: FLdPrThis
  loc_683F79: VCallAd Control_ID_Salir_Aceptar
  loc_683F7C: FStAdFunc var_F4
  loc_683F7F: FLdPr var_F4
  loc_683F82: Me.Enabled = from_stack_1b
  loc_683F87: FFree1Ad var_F4
  loc_683F8A: LitI2_Byte 0
  loc_683F8C: FLdPr Me
  loc_683F8F: MemStI2 global_96
  loc_683F92: FLdRfVar var_98
  loc_683F95: FLdPr Me
  loc_683F98: MemLdRfVar from_stack_1.global_100
  loc_683F9B: NewIfNullPr CPrice
  loc_683F9E: Call 0.Method_arg_5C ()
  loc_683FA3: FLdZeroAd var_98
  loc_683FA6: FStStr var_90
  loc_683FA9: LitVarI2 var_C0, 2
  loc_683FAE: LitI4 7
  loc_683FB3: FLdRfVar var_90
  loc_683FB6: CVarRef
  loc_683FBB: FLdRfVar var_E0
  loc_683FBE: ImpAdCallFPR4  = Mid(, , )
  loc_683FC3: FLdRfVar var_E0
  loc_683FC6: LitVarStr var_104, "/"
  loc_683FCB: AddVar var_F0
  loc_683FCF: LitVarI2 var_134, 2
  loc_683FD4: LitI4 5
  loc_683FD9: FLdRfVar var_90
  loc_683FDC: CVarRef
  loc_683FE1: FLdRfVar var_144
  loc_683FE4: ImpAdCallFPR4  = Mid(, , )
  loc_683FE9: FLdRfVar var_144
  loc_683FEC: AddVar var_154
  loc_683FF0: LitVarStr var_164, "/"
  loc_683FF5: AddVar var_174
  loc_683FF9: LitVarI2 var_1A4, 4
  loc_683FFE: LitI4 1
  loc_684003: FLdRfVar var_90
  loc_684006: CVarRef
  loc_68400B: FLdRfVar var_1B4
  loc_68400E: ImpAdCallFPR4  = Mid(, , )
  loc_684013: FLdRfVar var_1B4
  loc_684016: AddVar var_1C4
  loc_68401A: CStrVarTmp
  loc_68401B: FStStrNoPop var_98
  loc_68401E: FLdPr Me
  loc_684021: MemStStrCopy
  loc_684025: FFree1Str var_98
  loc_684028: FFreeVar var_C0 = "": var_E0 = "": var_134 = "": var_F0 = "": var_144 = "": var_154 = "": var_1A4 = "": var_174 = "": var_1B4 = ""
  loc_68403F: LitVarI2 var_C0, 2
  loc_684044: LitI4 9
  loc_684049: FLdRfVar var_90
  loc_68404C: CVarRef
  loc_684051: FLdRfVar var_E0
  loc_684054: ImpAdCallFPR4  = Mid(, , )
  loc_684059: FLdRfVar var_E0
  loc_68405C: LitVarStr var_104, ":"
  loc_684061: AddVar var_F0
  loc_684065: LitVarI2 var_134, 2
  loc_68406A: LitI4 &HB
  loc_68406F: FLdRfVar var_90
  loc_684072: CVarRef
  loc_684077: FLdRfVar var_144
  loc_68407A: ImpAdCallFPR4  = Mid(, , )
  loc_68407F: FLdRfVar var_144
  loc_684082: AddVar var_154
  loc_684086: CStrVarTmp
  loc_684087: FStStrNoPop var_98
  loc_68408A: FLdPr Me
  loc_68408D: MemStStrCopy
  loc_684091: FFree1Str var_98
  loc_684094: FFreeVar var_C0 = "": var_E0 = "": var_134 = "": var_F0 = "": var_144 = ""
  loc_6840A3: FLdPr Me
  loc_6840A6: MemLdStr global_88
  loc_6840A9: LitStr "  "
  loc_6840AC: ConcatStr
  loc_6840AD: FStStrNoPop var_98
  loc_6840B0: FLdPr Me
  loc_6840B3: MemLdStr global_92
  loc_6840B6: ConcatStr
  loc_6840B7: FStStrNoPop var_1C8
  loc_6840BA: CDateStr
  loc_6840BC: FStFPR8 var_8C
  loc_6840BF: FFreeStr var_98 = ""
  loc_6840C6: FLdFPR8 var_8C
  loc_6840C9: CStrDate
  loc_6840CB: FStStrNoPop var_98
  loc_6840CE: FLdPr Me
  loc_6840D1: MemStStrCopy
  loc_6840D5: FFree1Str var_98
  loc_6840D8: LitI2_Byte 0
  loc_6840DA: FLdPr Me
  loc_6840DD: MemStI2 global_82
  loc_6840E0: from_stack_1v = Proc_99_25_636AAC()
  loc_6840E5: from_stack_1v = Proc_99_26_68F524()
  loc_6840EA: LitStr "Se ha definido modificar los precios de venta al público de los productos indicados a continuación, con vigencia a partir de las "
  loc_6840ED: FStStrCopy var_94
  loc_6840F0: ILdRf var_94
  loc_6840F3: FLdPr Me
  loc_6840F6: MemLdStr global_92
  loc_6840F9: ConcatStr
  loc_6840FA: FStStrNoPop var_98
  loc_6840FD: LitStr " hs. del "
  loc_684100: ConcatStr
  loc_684101: FStStrNoPop var_1C8
  loc_684104: FLdPr Me
  loc_684107: MemLdStr global_88
  loc_68410A: ConcatStr
  loc_68410B: FStStrNoPop var_1CC
  loc_68410E: LitStr "."
  loc_684111: ConcatStr
  loc_684112: CVarStr var_E0
  loc_684115: LitI4 &HD
  loc_68411A: FLdRfVar var_C0
  loc_68411D: ImpAdCallFPR4  = Chr()
  loc_684122: FLdRfVar var_C0
  loc_684125: ConcatVar var_F0
  loc_684129: CStrVarTmp
  loc_68412A: FStStr var_94
  loc_68412D: FFreeStr var_98 = "": var_1C8 = ""
  loc_684136: FFreeVar var_E0 = "": var_C0 = ""
  loc_68413F: ILdRf var_94
  loc_684142: LitStr "Se recuerda actualizar de manera coordinada los precios exhibidos en la cartelería de Esso Servicentro y en otros sistemas del Esso Servicentro"
  loc_684145: ConcatStr
  loc_684146: FStStr var_94
  loc_684149: ILdRf var_94
  loc_68414C: FLdPrThis
  loc_68414D: VCallAd Control_ID_
  loc_684150: FStAdFunc var_F4
  loc_684153: FLdPr var_F4
  loc_684156: CPrice.Label.Caption = from_stack_1
  loc_68415B: FFree1Ad var_F4
  loc_68415E: FLdRfVar var_9E
  loc_684161: from_stack_1v = Proc_99_24_62553C()
  loc_684166: FLdI2 var_9E
  loc_684169: LitI2_Byte &HFF
  loc_68416B: EqI2
  loc_68416C: BranchF loc_6841CA
  loc_68416F: LitStr "Los cambios de precios con vigencia "
  loc_684172: FLdPr Me
  loc_684175: MemLdStr global_92
  loc_684178: ConcatStr
  loc_684179: FStStrNoPop var_98
  loc_68417C: LitStr " hs del "
  loc_68417F: ConcatStr
  loc_684180: FStStrNoPop var_1C8
  loc_684183: FLdPr Me
  loc_684186: MemLdStr global_88
  loc_684189: ConcatStr
  loc_68418A: FStStrNoPop var_1CC
  loc_68418D: LitStr " han vencido. "
  loc_684190: ConcatStr
  loc_684191: FStStrNoPop var_1D0
  loc_684194: LitStr "Se recuerda actualizar de manera coordinada los precios exhibidos en la cartelería de ESSO Servicentro y en otros sistemas de ESSO Servicentro."
  loc_684197: ConcatStr
  loc_684198: FStStrNoPop var_1D4
  loc_68419B: FLdPrThis
  loc_68419C: VCallAd Control_ID_Label1
  loc_68419F: FStAdFunc var_F4
  loc_6841A2: FLdPr var_F4
  loc_6841A5: Me.Caption = from_stack_1
  loc_6841AA: FFreeStr var_98 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_6841B7: FFree1Ad var_F4
  loc_6841BA: LitI2_Byte 2
  loc_6841BC: CUI1I2
  loc_6841BE: PopTmpLdAd1
  loc_6841C2: Call ChangeLabelEsso(from_stack_1v)
  loc_6841C7: Branch loc_6841D7
  loc_6841CA: LitI2_Byte 1
  loc_6841CC: CUI1I2
  loc_6841CE: PopTmpLdAd1
  loc_6841D2: Call ChangeLabelEsso(from_stack_1v)
  loc_6841D7: FLdPr Me
  loc_6841DA: MemLdI2 global_132
  loc_6841DD: NotI4
  loc_6841DE: BranchF loc_6841FD
  loc_6841E1: FLdPr Me
  loc_6841E4: MemLdI2 global_128
  loc_6841E7: BranchF loc_6841FD
  loc_6841EA: FLdRfVar var_9E
  loc_6841ED: from_stack_1v = Proc_99_24_62553C()
  loc_6841F2: FLdI2 var_9E
  loc_6841F5: BranchF loc_6841FD
  loc_6841F8: from_stack_1v = Proc_99_22_65F8A4()
  loc_6841FD: LitVarI2 var_B0, 11
  loc_684202: PopAdLdVar
  loc_684203: FLdRfVar var_1D8
  loc_684206: FLdPrThis
  loc_684207: VCallAd Control_ID_Label1
  loc_68420A: FStAdFunc var_F4
  loc_68420D: FLdPr var_F4
  loc_684210:  = Me.Font
  loc_684215: FLdPr var_1D8
  loc_684218: LateIdSt
  loc_68421D: FFreeAd var_F4 = ""
  loc_684224: LitStr "Informe de Aviso de Cambio de precio de venta al Público Consumidor"
  loc_684227: FLdPr Me
  loc_68422A: Me.Caption = from_stack_1
  loc_68422F: LitI2_Byte &HFF
  loc_684231: FLdPrThis
  loc_684232: VCallAd Control_ID_Edit_Rest
  loc_684235: FStAdFunc var_F4
  loc_684238: FLdPr var_F4
  loc_68423B: Me.Enabled = from_stack_1b
  loc_684240: FFree1Ad var_F4
  loc_684243: FLdRfVar var_98
  loc_684246: FLdPr Me
  loc_684249: MemLdRfVar from_stack_1.global_100
  loc_68424C: NewIfNullPr CPrice
  loc_68424F: CPrice = from_stack_1
  loc_684254: ILdRf var_98
  loc_684257: ImpAdCallI2 Proc_98_0_5D7360()
  loc_68425C: NotI4
  loc_68425D: FFree1Str var_98
  loc_684260: BranchF loc_6842B6
  loc_684263: FLdFPR8 var_8C
  loc_684266: CVarDate var_B0
  loc_68426A: HardType
  loc_68426B: FLdRfVar var_C0
  loc_68426E: ImpAdCallFPR4  = Now
  loc_684273: FLdRfVar var_C0
  loc_684276: LtVar var_E0
  loc_68427A: FLdRfVar var_9E
  loc_68427D: FLdPr Me
  loc_684280: MemLdRfVar from_stack_1.global_100
  loc_684283: NewIfNullPr CPrice
  loc_68428B: FLdI2 var_9E
  loc_68428E: CVarBoolI2 var_D0
  loc_684292: OrVar var_F0
  loc_684296: CBoolVarNull
  loc_684298: FFreeVar var_C0 = ""
  loc_68429F: BranchF loc_6842B6
  loc_6842A2: LitI2_Byte 0
  loc_6842A4: FLdPrThis
  loc_6842A5: VCallAd Control_ID_Edit_Rest
  loc_6842A8: FStAdFunc var_F4
  loc_6842AB: FLdPr var_F4
  loc_6842AE: Me.Enabled = from_stack_1b
  loc_6842B3: FFree1Ad var_F4
  loc_6842B6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D6864
  'Data Table: 4285F4
  loc_5D683C: LitNothing
  loc_5D683E: CastAd
  loc_5D6841: FStAdFuncNoPop
  loc_5D6844: FLdPr Me
  loc_5D6847: MemStAd
  loc_5D684B: FFree1Ad var_88
  loc_5D684E: LitI2_Byte 0
  loc_5D6850: FLdPrThis
  loc_5D6851: VCallAd Control_ID_ConfirmedTimer
  loc_5D6854: FStAdFunc var_88
  loc_5D6857: FLdPr var_88
  loc_5D685A: Me.Enabled = from_stack_1b
  loc_5D685F: FFree1Ad var_88
  loc_5D6862: ExitProcHresult
End Sub

Private Sub Edit_Rest_Click(arg_20) '63202C
  'Data Table: 4285F4
  loc_631E60: FLdRfVar var_8C
  loc_631E63: FLdPrThis
  loc_631E64: VCallAd Control_ID_Edit_Rest
  loc_631E67: FStAdFunc var_88
  loc_631E6A: FLdPr var_88
  loc_631E6D:  = Me.Caption
  loc_631E72: ILdRf var_8C
  loc_631E75: LitStr "&Restaurar"
  loc_631E78: EqStr
  loc_631E7A: FFree1Str var_8C
  loc_631E7D: FFree1Ad var_88
  loc_631E80: BranchF loc_631E8B
  loc_631E83: from_stack_1v = Proc_99_26_68F524()
  loc_631E88: Branch loc_631EF1
  loc_631E8B: LitI2_Byte &H1B
  loc_631E8D: PopTmpLdAd2 var_8E
  loc_631E90: ImpAdCallI2 Proc_94_7_603DD0()
  loc_631E95: NotI4
  loc_631E96: BranchF loc_631E9A
  loc_631E99: ExitProcHresult
  loc_631E9A: LitI2_Byte 0
  loc_631E9C: FLdPrThis
  loc_631E9D: VCallAd Control_ID_Ver
  loc_631EA0: FStAdFunc var_88
  loc_631EA3: FLdPr var_88
  loc_631EA6: Me.Enabled = from_stack_1b
  loc_631EAB: FFree1Ad var_88
  loc_631EAE: LitI2_Byte &HFF
  loc_631EB0: FLdPrThis
  loc_631EB1: VCallAd Control_ID_Cancelar
  loc_631EB4: FStAdFunc var_88
  loc_631EB7: FLdPr var_88
  loc_631EBA: Me.Enabled = from_stack_1b
  loc_631EBF: FFree1Ad var_88
  loc_631EC2: LitStr "&Restaurar"
  loc_631EC5: FLdPrThis
  loc_631EC6: VCallAd Control_ID_Edit_Rest
  loc_631EC9: FStAdFunc var_88
  loc_631ECC: FLdPr var_88
  loc_631ECF: Me.Caption = from_stack_1
  loc_631ED4: FFree1Ad var_88
  loc_631ED7: LitStr "&Aceptar"
  loc_631EDA: FLdPrThis
  loc_631EDB: VCallAd Control_ID_Salir_Aceptar
  loc_631EDE: FStAdFunc var_88
  loc_631EE1: FLdPr var_88
  loc_631EE4: Me.Caption = from_stack_1
  loc_631EE9: FFree1Ad var_88
  loc_631EEC: from_stack_1v = Proc_99_21_5D4DD4()
  loc_631EF1: LitI2_Byte &HFF
  loc_631EF3: FLdPr Me
  loc_631EF6: MemStI2 global_96
  loc_631EF9: LitVarI2 var_E0, 1
  loc_631EFE: FLdRfVar var_A0
  loc_631F01: FLdPrThis
  loc_631F02: VCallAd Control_ID_TablaProd
  loc_631F05: FStAdFunc var_88
  loc_631F08: FLdPr var_88
  loc_631F0B: LateIdLdVar var_B0 DispID_4 0
  loc_631F12: CI4Var
  loc_631F14: LitI4 1
  loc_631F19: SubI4
  loc_631F1A: CVarI4
  loc_631F1E: FFree1Ad var_88
  loc_631F21: FFree1Var var_B0 = ""
  loc_631F24: ForVar var_100
  loc_631F2A: FLdRfVar var_A0
  loc_631F2D: CI4Var
  loc_631F2F: CVarI4
  loc_631F33: PopAdLdVar
  loc_631F34: LitVarI4
  loc_631F3C: PopAdLdVar
  loc_631F3D: FLdPrThis
  loc_631F3E: VCallAd Control_ID_TablaProd
  loc_631F41: FStAdFunc var_88
  loc_631F44: FLdPr var_88
  loc_631F47: LateIdCallLdVar
  loc_631F51: CStrVarTmp
  loc_631F52: CVarStr var_110
  loc_631F55: ImpAdCallI2 Proc_98_2_5E4CF0()
  loc_631F5A: FFree1Ad var_88
  loc_631F5D: FFreeVar var_B0 = ""
  loc_631F64: BranchF loc_63201F
  loc_631F67: LitI2_Byte 0
  loc_631F69: FLdPr Me
  loc_631F6C: MemStI2 global_84
  loc_631F6F: LitI2_Byte &HFF
  loc_631F71: FLdPr Me
  loc_631F74: MemStI2 global_82
  loc_631F77: LitVarI4
  loc_631F7F: PopAdLdVar
  loc_631F80: FLdPrThis
  loc_631F81: VCallAd Control_ID_TablaProd
  loc_631F84: FStAdFunc var_88
  loc_631F87: FLdPr var_88
  loc_631F8A: LateIdSt
  loc_631F8F: FFree1Ad var_88
  loc_631F92: LitI2_Byte 0
  loc_631F94: FLdPr Me
  loc_631F97: MemStI2 global_84
  loc_631F9A: LitI2_Byte &HFF
  loc_631F9C: FLdPr Me
  loc_631F9F: MemStI2 global_82
  loc_631FA2: FLdRfVar var_A0
  loc_631FA5: CI4Var
  loc_631FA7: CVarI4
  loc_631FAB: PopAdLdVar
  loc_631FAC: FLdPrThis
  loc_631FAD: VCallAd Control_ID_TablaProd
  loc_631FB0: FStAdFunc var_88
  loc_631FB3: FLdPr var_88
  loc_631FB6: LateIdSt
  loc_631FBB: FFree1Ad var_88
  loc_631FBE: LitVarI4
  loc_631FC6: PopAdLdVar
  loc_631FC7: FLdPrThis
  loc_631FC8: VCallAd Control_ID_TablaProd
  loc_631FCB: FStAdFunc var_88
  loc_631FCE: FLdPr var_88
  loc_631FD1: LateIdSt
  loc_631FD6: FFree1Ad var_88
  loc_631FD9: LitI2_Byte 0
  loc_631FDB: FLdPr Me
  loc_631FDE: MemStI2 global_84
  loc_631FE1: LitI2_Byte &HFF
  loc_631FE3: FLdPr Me
  loc_631FE6: MemStI2 global_82
  loc_631FE9: LitVarI4
  loc_631FF1: PopAdLdVar
  loc_631FF2: FLdPrThis
  loc_631FF3: VCallAd Control_ID_TablaProd
  loc_631FF6: FStAdFunc var_88
  loc_631FF9: FLdPr var_88
  loc_631FFC: LateIdSt
  loc_632001: FFree1Ad var_88
  loc_632004: LitVarI4
  loc_63200C: PopAdLdVar
  loc_63200D: FLdPrThis
  loc_63200E: VCallAd Control_ID_TablaProd
  loc_632011: FStAdFunc var_88
  loc_632014: FLdPr var_88
  loc_632017: LateIdSt
  loc_63201C: FFree1Ad var_88
  loc_63201F: FLdRfVar var_A0
  loc_632022: NextStepVar var_100
  loc_632028: ExitProcHresult
  loc_632029: FStI2 arg_20
End Sub

Private Sub Ver_Click() '5D07D0
  'Data Table: 4285F4
  loc_5D07BC: FLdRfVar var_98
  loc_5D07BF: LitI2_Byte 0
  loc_5D07C1: PopTmpLdAd2 var_86
  loc_5D07C4: from_stack_2v = ImprimirCambioPrecios(from_stack_1v)
  loc_5D07C9: FFree1Var var_98 = ""
  loc_5D07CC: ExitProcHresult
End Sub

Private Sub Cancelar_Click() '5F6F64
  'Data Table: 4285F4
  loc_5F6EB0: LitVar_Missing var_104
  loc_5F6EB3: LitVar_Missing var_E4
  loc_5F6EB6: LitVarStr var_B4, "Precios Pendientes"
  loc_5F6EBB: FStVarCopyObj var_C4
  loc_5F6EBE: FLdRfVar var_C4
  loc_5F6EC1: LitI4 &H44
  loc_5F6EC6: LitVarStr var_94, "No se aplicaran los cambios realizados. ¿Esta de acuerdo?"
  loc_5F6ECB: FStVarCopyObj var_A4
  loc_5F6ECE: FLdRfVar var_A4
  loc_5F6ED1: ImpAdCallI2 MsgBox(, , , , )
  loc_5F6ED6: LitI4 7
  loc_5F6EDB: EqI4
  loc_5F6EDC: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_5F6EE7: BranchF loc_5F6EEB
  loc_5F6EEA: ExitProcHresult
  loc_5F6EEB: LitStr "&Editar"
  loc_5F6EEE: FLdPrThis
  loc_5F6EEF: VCallAd Control_ID_Edit_Rest
  loc_5F6EF2: FStAdFunc var_108
  loc_5F6EF5: FLdPr var_108
  loc_5F6EF8: Me.Caption = from_stack_1
  loc_5F6EFD: FFree1Ad var_108
  loc_5F6F00: FLdPr Me
  loc_5F6F03: MemLdI2 global_60
  loc_5F6F06: BranchF loc_5F6F21
  loc_5F6F09: LitStr "&Aceptar"
  loc_5F6F0C: FLdPrThis
  loc_5F6F0D: VCallAd Control_ID_Salir_Aceptar
  loc_5F6F10: FStAdFunc var_108
  loc_5F6F13: FLdPr var_108
  loc_5F6F16: Me.Caption = from_stack_1
  loc_5F6F1B: FFree1Ad var_108
  loc_5F6F1E: Branch loc_5F6F36
  loc_5F6F21: LitStr "&Salir"
  loc_5F6F24: FLdPrThis
  loc_5F6F25: VCallAd Control_ID_Salir_Aceptar
  loc_5F6F28: FStAdFunc var_108
  loc_5F6F2B: FLdPr var_108
  loc_5F6F2E: Me.Caption = from_stack_1
  loc_5F6F33: FFree1Ad var_108
  loc_5F6F36: LitI2_Byte &HFF
  loc_5F6F38: FLdPrThis
  loc_5F6F39: VCallAd Control_ID_Ver
  loc_5F6F3C: FStAdFunc var_108
  loc_5F6F3F: FLdPr var_108
  loc_5F6F42: Me.Enabled = from_stack_1b
  loc_5F6F47: FFree1Ad var_108
  loc_5F6F4A: LitI2_Byte 0
  loc_5F6F4C: FLdPrThis
  loc_5F6F4D: VCallAd Control_ID_Cancelar
  loc_5F6F50: FStAdFunc var_108
  loc_5F6F53: FLdPr var_108
  loc_5F6F56: Me.Enabled = from_stack_1b
  loc_5F6F5B: FFree1Ad var_108
  loc_5F6F5E: from_stack_1v = Proc_99_26_68F524()
  loc_5F6F63: ExitProcHresult
End Sub

Private Sub Salir_Aceptar_Click() '69146C
  'Data Table: 4285F4
  loc_690E94: OnErrorGoto loc_69143D
  loc_690E97: FLdRfVar var_9C
  loc_690E9A: FLdPrThis
  loc_690E9B: VCallAd Control_ID_Salir_Aceptar
  loc_690E9E: FStAdFunc var_98
  loc_690EA1: FLdPr var_98
  loc_690EA4:  = Me.Caption
  loc_690EA9: ILdRf var_9C
  loc_690EAC: LitStr "&Aceptar"
  loc_690EAF: EqStr
  loc_690EB1: FFree1Str var_9C
  loc_690EB4: FFree1Ad var_98
  loc_690EB7: BranchF loc_69120E
  loc_690EBA: FLdRfVar var_9C
  loc_690EBD: FLdPrThis
  loc_690EBE: VCallAd Control_ID_Edit_Rest
  loc_690EC1: FStAdFunc var_98
  loc_690EC4: FLdPr var_98
  loc_690EC7:  = Me.Caption
  loc_690ECC: ILdRf var_9C
  loc_690ECF: LitStr "&Restaurar"
  loc_690ED2: EqStr
  loc_690ED4: FFree1Str var_9C
  loc_690ED7: FFree1Ad var_98
  loc_690EDA: BranchF loc_69120E
  loc_690EDD: FLdPrThis
  loc_690EDE: VCallAd Control_ID_TablaProd
  loc_690EE1: FStAdFunc var_98
  loc_690EE4: FLdPr var_98
  loc_690EE7: LateIdLdVar var_AC DispID_10 0
  loc_690EEE: PopAd
  loc_690EF0: FLdPrThis
  loc_690EF1: VCallAd Control_ID_TablaProd
  loc_690EF4: FStAdFunc var_B0
  loc_690EF7: FLdPr var_B0
  loc_690EFA: LateIdLdVar var_C0 DispID_11 0
  loc_690F01: PopAd
  loc_690F03: FLdRfVar var_D4
  loc_690F06: FLdRfVar var_C0
  loc_690F09: CI4Var
  loc_690F0B: CI2I4
  loc_690F0C: PopTmpLdAd2 var_C4
  loc_690F0F: FLdRfVar var_AC
  loc_690F12: CI4Var
  loc_690F14: CI2I4
  loc_690F15: PopTmpLdAd2 var_C2
  loc_690F18: from_stack_3v = VerificarNumero(from_stack_1v, from_stack_2v)
  loc_690F1D: FFreeAd var_98 = ""
  loc_690F24: FFreeVar var_AC = "": var_C0 = ""
  loc_690F2D: FLdPr Me
  loc_690F30: MemLdI2 global_82
  loc_690F33: NotI4
  loc_690F34: BranchF loc_690F38
  loc_690F37: ExitProcHresult
  loc_690F38: LitI2_Byte 1
  loc_690F3A: FLdRfVar var_86
  loc_690F3D: FLdPrThis
  loc_690F3E: VCallAd Control_ID_TablaProd
  loc_690F41: FStAdFunc var_98
  loc_690F44: FLdPr var_98
  loc_690F47: LateIdLdVar var_AC DispID_4 0
  loc_690F4E: CI4Var
  loc_690F50: LitI4 1
  loc_690F55: SubI4
  loc_690F56: CI2I4
  loc_690F57: FFree1Ad var_98
  loc_690F5A: FFree1Var var_AC = ""
  loc_690F5D: ForI2 var_DC
  loc_690F63: FLdI2 var_86
  loc_690F66: CI4UI1
  loc_690F67: FLdPr Me
  loc_690F6A: MemLdRfVar from_stack_1.global_104
  loc_690F6D: Ary1LdI2
  loc_690F6E: BranchF loc_6910B2
  loc_690F71: FLdI2 var_86
  loc_690F74: CI4UI1
  loc_690F75: CVarI4
  loc_690F79: PopAdLdVar
  loc_690F7A: LitVarI4
  loc_690F82: PopAdLdVar
  loc_690F83: FLdPrThis
  loc_690F84: VCallAd Control_ID_TablaProd
  loc_690F87: FStAdFunc var_98
  loc_690F8A: FLdPr var_98
  loc_690F8D: LateIdCallLdVar
  loc_690F97: CStrVarTmp
  loc_690F98: FStStrNoPop var_9C
  loc_690F9B: ImpAdCallFPR4 push Val()
  loc_690FA0: CI2R8
  loc_690FA1: FStI2 var_88
  loc_690FA4: FFree1Str var_9C
  loc_690FA7: FFree1Ad var_98
  loc_690FAA: FFree1Var var_AC = ""
  loc_690FAD: FLdI2 var_86
  loc_690FB0: CI4UI1
  loc_690FB1: CVarI4
  loc_690FB5: PopAdLdVar
  loc_690FB6: LitVarI4
  loc_690FBE: PopAdLdVar
  loc_690FBF: FLdPrThis
  loc_690FC0: VCallAd Control_ID_TablaProd
  loc_690FC3: FStAdFunc var_98
  loc_690FC6: FLdPr var_98
  loc_690FC9: LateIdCallLdVar
  loc_690FD3: PopAd
  loc_690FD5: FLdRfVar var_C2
  loc_690FD8: FLdRfVar var_AC
  loc_690FDB: CStrVarTmp
  loc_690FDC: FStStrNoPop var_9C
  loc_690FDF: ImpAdLdRf MemVar_74A220
  loc_690FE2: NewIfNullPr clsProducts
  loc_690FEA: FLdI2 var_C2
  loc_690FED: FStI2 var_8A
  loc_690FF0: FFree1Str var_9C
  loc_690FF3: FFree1Ad var_98
  loc_690FF6: FFree1Var var_AC = ""
  loc_690FF9: FLdI2 var_86
  loc_690FFC: CI4UI1
  loc_690FFD: CVarI4
  loc_691001: PopAdLdVar
  loc_691002: LitVarI4
  loc_69100A: PopAdLdVar
  loc_69100B: FLdPrThis
  loc_69100C: VCallAd Control_ID_TablaProd
  loc_69100F: FStAdFunc var_98
  loc_691012: FLdPr var_98
  loc_691015: LateIdCallLdVar
  loc_69101F: CStrVarTmp
  loc_691020: PopTmpLdAdStr
  loc_691024: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_691029: FStFPR8 var_104
  loc_69102C: FLdRfVar var_C0
  loc_69102F: FLdR8 var_104
  loc_691032: FLdI2 var_8A
  loc_691035: FLdI2 var_88
  loc_691038: FLdPr Me
  loc_69103B: MemLdRfVar from_stack_1.global_100
  loc_69103E: NewIfNullPr CPrice
  loc_691046: FFree1Str var_9C
  loc_691049: FFree1Ad var_98
  loc_69104C: FFreeVar var_AC = ""
  loc_691053: FLdI2 var_86
  loc_691056: CI4UI1
  loc_691057: CVarI4
  loc_69105B: PopAdLdVar
  loc_69105C: LitVarI4
  loc_691064: PopAdLdVar
  loc_691065: FLdPrThis
  loc_691066: VCallAd Control_ID_TablaProd
  loc_691069: FStAdFunc var_98
  loc_69106C: FLdPr var_98
  loc_69106F: LateIdCallLdVar
  loc_691079: PopAd
  loc_69107B: FLdRfVar var_C2
  loc_69107E: FLdRfVar var_AC
  loc_691081: CStrVarTmp
  loc_691082: PopTmpLdAdStr
  loc_691086: from_stack_2v = Proc_99_27_5D3834(from_stack_1v)
  loc_69108B: FLdRfVar var_C0
  loc_69108E: FLdI2 var_C2
  loc_691091: FLdI2 var_8A
  loc_691094: FLdI2 var_88
  loc_691097: FLdPr Me
  loc_69109A: MemLdRfVar from_stack_1.global_100
  loc_69109D: NewIfNullPr CPrice
  loc_6910A0:  = CPrice.hWnd
  loc_6910A5: FFree1Str var_9C
  loc_6910A8: FFree1Ad var_98
  loc_6910AB: FFreeVar var_AC = ""
  loc_6910B2: FLdRfVar var_86
  loc_6910B5: NextI2 var_DC, loc_690F63
  loc_6910BA: FLdRfVar var_AC
  loc_6910BD: ImpAdCallFPR4  = Now
  loc_6910C2: FLdPr Me
  loc_6910C5: MemLdI2 global_130
  loc_6910C8: LitI2_Byte 2
  loc_6910CA: EqI2
  loc_6910CB: CVarBoolI2 var_FC
  loc_6910CF: FLdRfVar var_9C
  loc_6910D2: FLdPr Me
  loc_6910D5: MemLdRfVar from_stack_1.global_100
  loc_6910D8: NewIfNullPr CPrice
  loc_6910DB: Call 0.Method_arg_5C ()
  loc_6910E0: FLdZeroAd var_9C
  loc_6910E3: CVarStr var_114
  loc_6910E6: HardType
  loc_6910E7: LitI4 1
  loc_6910EC: LitI4 1
  loc_6910F1: LitVarStr var_EC, "yyyymmddhhmm"
  loc_6910F6: FStVarCopyObj var_C0
  loc_6910F9: FLdRfVar var_C0
  loc_6910FC: FLdRfVar var_AC
  loc_6910FF: FLdRfVar var_D4
  loc_691102: ImpAdCallFPR4  = Format(, )
  loc_691107: FLdRfVar var_D4
  loc_69110A: LeVar var_124
  loc_69110E: AndVar var_134
  loc_691112: CBoolVarNull
  loc_691114: FFreeVar var_AC = "": var_C0 = "": var_114 = "": var_D4 = ""
  loc_691121: BranchF loc_691176
  loc_691124: LitI4 &HD
  loc_691129: FLdRfVar var_AC
  loc_69112C: ImpAdCallFPR4  = Chr()
  loc_691131: LitVar_Missing var_134
  loc_691134: LitVar_Missing var_124
  loc_691137: LitVarStr var_144, "Aviso"
  loc_69113C: FStVarCopyObj var_114
  loc_69113F: FLdRfVar var_114
  loc_691142: LitI4 &H40
  loc_691147: LitVarStr var_EC, "La hora actual es mayor a la de cambio de precios."
  loc_69114C: FLdRfVar var_AC
  loc_69114F: AddVar var_C0
  loc_691153: LitVarStr var_FC, "No se aplicaran los cambios."
  loc_691158: AddVar var_D4
  loc_69115C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_691161: FFreeVar var_AC = "": var_C0 = "": var_D4 = "": var_114 = "": var_124 = ""
  loc_691170: Call CleanChildForm()
  loc_691175: ExitProcHresult
  loc_691176: LitVar_Missing var_114
  loc_691179: LitVar_Missing var_D4
  loc_69117C: LitVarStr var_FC, "Precios Pendientes"
  loc_691181: FStVarCopyObj var_C0
  loc_691184: FLdRfVar var_C0
  loc_691187: LitI4 &H44
  loc_69118C: LitVarStr var_EC, "¿Esta seguro que desea aplicar los cambios realizados?"
  loc_691191: FStVarCopyObj var_AC
  loc_691194: FLdRfVar var_AC
  loc_691197: ImpAdCallI2 MsgBox(, , , , )
  loc_69119C: LitI4 7
  loc_6911A1: EqI4
  loc_6911A2: FFreeVar var_AC = "": var_C0 = "": var_D4 = ""
  loc_6911AD: BranchF loc_6911B1
  loc_6911B0: ExitProcHresult
  loc_6911B1: ImpAdCallI2 Proc_98_3_5D53A4()
  loc_6911B6: FStStr var_168
  loc_6911B9: FLdRfVar var_C2
  loc_6911BC: FLdPr Me
  loc_6911BF: MemLdRfVar from_stack_1.global_100
  loc_6911C2: NewIfNullRf
  loc_6911C6: FLdZeroAd var_168
  loc_6911C9: FStStrNoPop var_9C
  loc_6911CC: FLdRfVar var_D8
  loc_6911CF: NewIfNullPr CMsgPrice
  loc_6911D2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6911D7: FLdI2 var_C2
  loc_6911DA: NotI4
  loc_6911DB: FFreeStr var_9C = ""
  loc_6911E2: BranchF loc_69120E
  loc_6911E5: LitVar_Missing var_114
  loc_6911E8: LitVar_Missing var_D4
  loc_6911EB: LitVar_Missing var_C0
  loc_6911EE: LitI4 &H30
  loc_6911F3: LitVarStr var_EC, "Error al intentar modificar el cambio de precios."
  loc_6911F8: FStVarCopyObj var_AC
  loc_6911FB: FLdRfVar var_AC
  loc_6911FE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_691203: FFreeVar var_AC = "": var_C0 = "": var_D4 = ""
  loc_69120E: FLdPr Me
  loc_691211: MemLdI2 global_60
  loc_691214: FLdPr Me
  loc_691217: MemLdI2 global_128
  loc_69121A: AndI4
  loc_69121B: BranchF loc_691271
  loc_69121E: LitI2_Byte 0
  loc_691220: FLdPrThis
  loc_691221: VCallAd Control_ID_ConfirmedTimer
  loc_691224: FStAdFunc var_98
  loc_691227: FLdPr var_98
  loc_69122A: Me.Enabled = from_stack_1b
  loc_69122F: FFree1Ad var_98
  loc_691232: FLdRfVar var_C2
  loc_691235: FLdRfVar var_98
  loc_691238: ImpAdLdRf MemVar_74C760
  loc_69123B: NewIfNullPr Formx
  loc_69123E: from_stack_1v = Formx.global_4589716Get()
  loc_691243: FLdPr var_98
  loc_691246: Call 0.Method_arg_354 ()
  loc_69124B: FLdI2 var_C2
  loc_69124E: NotI4
  loc_69124F: FFree1Ad var_98
  loc_691252: BranchF loc_691271
  loc_691255: FLdRfVar var_AC
  loc_691258: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69125D: FLdRfVar var_AC
  loc_691260: CBoolVarNull
  loc_691262: FFree1Var var_AC = ""
  loc_691265: BranchF loc_69126E
  loc_691268: Call CleanChildForm()
  loc_69126D: ExitProcHresult
  loc_69126E: Branch loc_691232
  loc_691271: LitStr "CEM44.INI"
  loc_691274: FLdRfVar var_170
  loc_691277: CStr2Ansi
  loc_691278: ILdRf var_170
  loc_69127B: LitI4 0
  loc_691280: LitStr "PRICE_CHANGE_PRINT_MODE"
  loc_691283: FLdRfVar var_168
  loc_691286: CStr2Ansi
  loc_691287: ILdRf var_168
  loc_69128A: LitStr "GENERAL"
  loc_69128D: FLdRfVar var_9C
  loc_691290: CStr2Ansi
  loc_691291: ILdRf var_9C
  loc_691294: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_691299: FStR4 var_174
  loc_69129C: SetLastSystemError
  loc_69129D: ILdRf var_174
  loc_6912A0: CUI1I4
  loc_6912A2: FStUI1 var_16A
  loc_6912A6: FFreeStr var_9C = "": var_168 = ""
  loc_6912AF: FLdUI1
  loc_6912B3: FStUI1 var_176
  loc_6912B7: FLdUI1
  loc_6912BB: LitI2_Byte 0
  loc_6912BD: CUI1I2
  loc_6912BF: EqI2
  loc_6912C0: BranchF loc_6912C6
  loc_6912C3: Branch loc_691437
  loc_6912C6: FLdUI1
  loc_6912CA: LitI2_Byte 1
  loc_6912CC: CUI1I2
  loc_6912CE: EqI2
  loc_6912CF: BranchF loc_691359
  loc_6912D2: FLdPr Me
  loc_6912D5: MemLdI2 global_60
  loc_6912D8: BranchF loc_691356
  loc_6912DB: FLdRfVar var_9C
  loc_6912DE: FLdPr Me
  loc_6912E1: MemLdRfVar from_stack_1.global_100
  loc_6912E4: NewIfNullPr CPrice
  loc_6912E7: CPrice = from_stack_1
  loc_6912EC: ILdRf var_9C
  loc_6912EF: ImpAdCallI2 Proc_98_1_5D7300()
  loc_6912F4: FLdRfVar var_C2
  loc_6912F7: FLdPr Me
  loc_6912FA: MemLdRfVar from_stack_1.global_100
  loc_6912FD: NewIfNullPr CPrice
  loc_691305: FLdI2 var_C2
  loc_691308: LitI2_Byte &HFF
  loc_69130A: EqI2
  loc_69130B: AndI4
  loc_69130C: FFree1Str var_9C
  loc_69130F: BranchF loc_691315
  loc_691312: Branch loc_691356
  loc_691315: LitVar_Missing var_114
  loc_691318: LitVar_Missing var_D4
  loc_69131B: LitVarStr var_FC, "Precios Pendientes"
  loc_691320: FStVarCopyObj var_C0
  loc_691323: FLdRfVar var_C0
  loc_691326: LitI4 &H40
  loc_69132B: LitVarStr var_EC, "Se imprimirá un reporte de Cambio de Precios Pendientes"
  loc_691330: FStVarCopyObj var_AC
  loc_691333: FLdRfVar var_AC
  loc_691336: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69133B: FFreeVar var_AC = "": var_C0 = "": var_D4 = ""
  loc_691346: FLdRfVar var_AC
  loc_691349: LitI2_Byte &HFF
  loc_69134B: PopTmpLdAd2 var_C2
  loc_69134E: from_stack_2v = ImprimirCambioPrecios(from_stack_1v)
  loc_691353: FFree1Var var_AC = ""
  loc_691356: Branch loc_691437
  loc_691359: FLdUI1
  loc_69135D: LitI2_Byte 2
  loc_69135F: CUI1I2
  loc_691361: EqI2
  loc_691362: BranchF loc_691437
  loc_691365: FLdPr Me
  loc_691368: MemLdI2 global_60
  loc_69136B: FLdPr Me
  loc_69136E: MemLdI2 global_128
  loc_691371: AndI4
  loc_691372: BranchF loc_691437
  loc_691375: FLdRfVar var_AC
  loc_691378: ImpAdCallFPR4  = Now
  loc_69137D: FLdRfVar var_9C
  loc_691380: FLdPrThis
  loc_691381: VCallAd Control_ID_Edit_Rest
  loc_691384: FStAdFunc var_98
  loc_691387: FLdPr var_98
  loc_69138A:  = Me.Caption
  loc_69138F: ILdRf var_9C
  loc_691392: LitStr "&Restaurar"
  loc_691395: EqStr
  loc_691397: CVarBoolI2 var_FC
  loc_69139B: FLdRfVar var_168
  loc_69139E: FLdPr Me
  loc_6913A1: MemLdRfVar from_stack_1.global_100
  loc_6913A4: NewIfNullPr CPrice
  loc_6913A7: Call 0.Method_arg_5C ()
  loc_6913AC: FLdZeroAd var_168
  loc_6913AF: CVarStr var_114
  loc_6913B2: HardType
  loc_6913B3: LitI4 1
  loc_6913B8: LitI4 1
  loc_6913BD: LitVarStr var_EC, "yyyymmddhhmm"
  loc_6913C2: FStVarCopyObj var_C0
  loc_6913C5: FLdRfVar var_C0
  loc_6913C8: FLdRfVar var_AC
  loc_6913CB: FLdRfVar var_D4
  loc_6913CE: ImpAdCallFPR4  = Format(, )
  loc_6913D3: FLdRfVar var_D4
  loc_6913D6: GtVar var_124
  loc_6913DA: AndVar var_134
  loc_6913DE: CBoolVarNull
  loc_6913E0: FFree1Str var_9C
  loc_6913E3: FFree1Ad var_98
  loc_6913E6: FFreeVar var_AC = "": var_C0 = "": var_114 = "": var_D4 = ""
  loc_6913F3: BranchF loc_691437
  loc_6913F6: LitVar_Missing var_114
  loc_6913F9: LitVar_Missing var_D4
  loc_6913FC: LitVarStr var_FC, "Precios Pendientes"
  loc_691401: FStVarCopyObj var_C0
  loc_691404: FLdRfVar var_C0
  loc_691407: LitI4 &H40
  loc_69140C: LitVarStr var_EC, "Se imprimirá un reporte de Cambio de Precios Pendientes"
  loc_691411: FStVarCopyObj var_AC
  loc_691414: FLdRfVar var_AC
  loc_691417: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69141C: FFreeVar var_AC = "": var_C0 = "": var_D4 = ""
  loc_691427: FLdRfVar var_AC
  loc_69142A: LitI2_Byte &HFF
  loc_69142C: PopTmpLdAd2 var_C2
  loc_69142F: from_stack_2v = ImprimirCambioPrecios(from_stack_1v)
  loc_691434: FFree1Var var_AC = ""
  loc_691437: Call CleanChildForm()
  loc_69143C: ExitProcHresult
  loc_69143D: LitVar_Missing var_114
  loc_691440: LitVar_Missing var_D4
  loc_691443: LitVar_Missing var_C0
  loc_691446: LitI4 &H40
  loc_69144B: LitVarStr var_EC, "Error al Aceptar cambio de precios"
  loc_691450: FStVarCopyObj var_AC
  loc_691453: FLdRfVar var_AC
  loc_691456: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69145B: FFreeVar var_AC = "": var_C0 = "": var_D4 = ""
  loc_691466: Call CleanChildForm()
  loc_69146B: ExitProcHresult
End Sub

Private Sub TablaProd_KeyDown(KeyCode As Integer, Shift As Integer) '645864
  'Data Table: 4285F4
  loc_64560C: FLdPr Me
  loc_64560F: MemLdI2 global_96
  loc_645612: FLdPrThis
  loc_645613: VCallAd Control_ID_TablaProd
  loc_645616: FStAdFunc var_88
  loc_645619: FLdPr var_88
  loc_64561C: LateIdLdVar var_98 DispID_11 0
  loc_645623: CI4Var
  loc_645625: LitI4 3
  loc_64562A: EqI4
  loc_64562B: AndI4
  loc_64562C: FLdPrThis
  loc_64562D: VCallAd Control_ID_TablaProd
  loc_645630: FStAdFunc var_9C
  loc_645633: FLdPr var_9C
  loc_645636: LateIdLdVar var_AC DispID_10 0
  loc_64563D: CI4Var
  loc_64563F: LitI4 0
  loc_645644: GtI4
  loc_645645: AndI4
  loc_645646: FFreeAd var_88 = ""
  loc_64564D: FFreeVar var_98 = ""
  loc_645654: BranchF loc_645861
  loc_645657: FLdPrThis
  loc_645658: VCallAd Control_ID_TablaProd
  loc_64565B: FStAdFunc var_88
  loc_64565E: FLdPr var_88
  loc_645661: LateIdLdVar var_98 DispID_10 0
  loc_645668: CI4Var
  loc_64566A: CVarI4
  loc_64566E: PopAdLdVar
  loc_64566F: LitVarI4
  loc_645677: PopAdLdVar
  loc_645678: FLdPrThis
  loc_645679: VCallAd Control_ID_TablaProd
  loc_64567C: FStAdFunc var_9C
  loc_64567F: FLdPr var_9C
  loc_645682: LateIdCallLdVar
  loc_64568C: CStrVarTmp
  loc_64568D: FStStr var_B0
  loc_645690: FFreeAd var_88 = ""
  loc_645697: FFreeVar var_98 = ""
  loc_64569E: FLdRfVar var_B0
  loc_6456A1: CVarRef
  loc_6456A6: ImpAdCallI2 Proc_98_2_5E4CF0()
  loc_6456AB: NotI4
  loc_6456AC: BranchF loc_645727
  loc_6456AF: FLdRfVar var_B0
  loc_6456B2: CVarRef
  loc_6456B7: ImpAdCallI2 Proc_101_16_6179AC()
  loc_6456BC: BranchF loc_6456F3
  loc_6456BF: LitVar_Missing var_110
  loc_6456C2: LitVar_Missing var_F0
  loc_6456C5: LitVarStr var_D0, "Precios Pendientes"
  loc_6456CA: FStVarCopyObj var_AC
  loc_6456CD: FLdRfVar var_AC
  loc_6456D0: LitI4 &H40
  loc_6456D5: LitVarStr var_C0, "No tiene permiso para cambiar esta opción: El producto es consignado."
  loc_6456DA: FStVarCopyObj var_98
  loc_6456DD: FLdRfVar var_98
  loc_6456E0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6456E5: FFreeVar var_98 = "": var_AC = "": var_F0 = ""
  loc_6456F0: Branch loc_645724
  loc_6456F3: LitVar_Missing var_110
  loc_6456F6: LitVar_Missing var_F0
  loc_6456F9: LitVarStr var_D0, "Precios Pendientes"
  loc_6456FE: FStVarCopyObj var_AC
  loc_645701: FLdRfVar var_AC
  loc_645704: LitI4 &H40
  loc_645709: LitVarStr var_C0, "No tiene permiso para cambiar esta opción: El producto es no consignado."
  loc_64570E: FStVarCopyObj var_98
  loc_645711: FLdRfVar var_98
  loc_645714: ImpAdCallFPR4 MsgBox(, , , , )
  loc_645719: FFreeVar var_98 = "": var_AC = "": var_F0 = ""
  loc_645724: Branch loc_645861
  loc_645727: FLdPrThis
  loc_645728: VCallAd Control_ID_TablaProd
  loc_64572B: FStAdFunc var_88
  loc_64572E: FLdPr var_88
  loc_645731: LateIdLdVar var_98 DispID_10 0
  loc_645738: CI4Var
  loc_64573A: CVarI4
  loc_64573E: PopAdLdVar
  loc_64573F: FLdPrThis
  loc_645740: VCallAd Control_ID_TablaProd
  loc_645743: FStAdFunc var_9C
  loc_645746: FLdPr var_9C
  loc_645749: LateIdLdVar var_AC DispID_11 0
  loc_645750: CI4Var
  loc_645752: CVarI4
  loc_645756: PopAdLdVar
  loc_645757: FLdPrThis
  loc_645758: VCallAd Control_ID_TablaProd
  loc_64575B: FStAdFunc var_114
  loc_64575E: FLdPr var_114
  loc_645761: LateIdCallLdVar
  loc_64576B: CStrVarTmp
  loc_64576C: FStStrNoPop var_118
  loc_64576F: LitStr "SI"
  loc_645772: EqStr
  loc_645774: FFree1Str var_118
  loc_645777: FFreeAd var_88 = "": var_9C = ""
  loc_645780: FFreeVar var_98 = "": var_AC = ""
  loc_645789: BranchF loc_6457E7
  loc_64578C: FLdPrThis
  loc_64578D: VCallAd Control_ID_TablaProd
  loc_645790: FStAdFunc var_88
  loc_645793: FLdPr var_88
  loc_645796: LateIdLdVar var_98 DispID_10 0
  loc_64579D: CI4Var
  loc_64579F: CVarI4
  loc_6457A3: PopAdLdVar
  loc_6457A4: FLdPrThis
  loc_6457A5: VCallAd Control_ID_TablaProd
  loc_6457A8: FStAdFunc var_9C
  loc_6457AB: FLdPr var_9C
  loc_6457AE: LateIdLdVar var_AC DispID_11 0
  loc_6457B5: CI4Var
  loc_6457B7: CVarI4
  loc_6457BB: PopAdLdVar
  loc_6457BC: LitVarStr var_E0, "NO"
  loc_6457C1: PopAdLdVar
  loc_6457C2: FLdPrThis
  loc_6457C3: VCallAd Control_ID_TablaProd
  loc_6457C6: FStAdFunc var_114
  loc_6457C9: FLdPr var_114
  loc_6457CC: LateIdCallSt
  loc_6457D4: FFreeAd var_88 = "": var_9C = ""
  loc_6457DD: FFreeVar var_98 = ""
  loc_6457E4: Branch loc_64583F
  loc_6457E7: FLdPrThis
  loc_6457E8: VCallAd Control_ID_TablaProd
  loc_6457EB: FStAdFunc var_88
  loc_6457EE: FLdPr var_88
  loc_6457F1: LateIdLdVar var_98 DispID_10 0
  loc_6457F8: CI4Var
  loc_6457FA: CVarI4
  loc_6457FE: PopAdLdVar
  loc_6457FF: FLdPrThis
  loc_645800: VCallAd Control_ID_TablaProd
  loc_645803: FStAdFunc var_9C
  loc_645806: FLdPr var_9C
  loc_645809: LateIdLdVar var_AC DispID_11 0
  loc_645810: CI4Var
  loc_645812: CVarI4
  loc_645816: PopAdLdVar
  loc_645817: LitVarStr var_E0, "SI"
  loc_64581C: PopAdLdVar
  loc_64581D: FLdPrThis
  loc_64581E: VCallAd Control_ID_TablaProd
  loc_645821: FStAdFunc var_114
  loc_645824: FLdPr var_114
  loc_645827: LateIdCallSt
  loc_64582F: FFreeAd var_88 = "": var_9C = ""
  loc_645838: FFreeVar var_98 = ""
  loc_64583F: LitI2_Byte &HFF
  loc_645841: FLdPrThis
  loc_645842: VCallAd Control_ID_TablaProd
  loc_645845: FStAdFunc var_88
  loc_645848: FLdPr var_88
  loc_64584B: LateIdLdVar var_98 DispID_10 0
  loc_645852: CI4Var
  loc_645854: FLdPr Me
  loc_645857: MemLdRfVar from_stack_1.global_104
  loc_64585A: Ary1StI2
  loc_64585B: FFree1Ad var_88
  loc_64585E: FFree1Var var_98 = ""
  loc_645861: ExitProcHresult
End Sub

Private Sub TablaProd_DblClick(arg_C) '67F280
  'Data Table: 4285F4
  loc_67EDCC: FLdPrThis
  loc_67EDCD: VCallAd Control_ID_TablaProd
  loc_67EDD0: FStAdFunc var_90
  loc_67EDD3: FLdPr var_90
  loc_67EDD6: LateIdLdVar var_A0 DispID_10 0
  loc_67EDDD: CI4Var
  loc_67EDDF: CVarI4
  loc_67EDE3: PopAdLdVar
  loc_67EDE4: LitVarI4
  loc_67EDEC: PopAdLdVar
  loc_67EDED: FLdPrThis
  loc_67EDEE: VCallAd Control_ID_TablaProd
  loc_67EDF1: FStAdFunc var_C4
  loc_67EDF4: FLdPr var_C4
  loc_67EDF7: LateIdCallLdVar
  loc_67EE01: CStrVarTmp
  loc_67EE02: FStStr var_8C
  loc_67EE05: FFreeAd var_90 = ""
  loc_67EE0C: FFreeVar var_A0 = ""
  loc_67EE13: FLdPr Me
  loc_67EE16: MemLdI2 global_96
  loc_67EE19: NotI4
  loc_67EE1A: BranchF loc_67EE1E
  loc_67EE1D: ExitProcHresult
  loc_67EE1E: FLdPrThis
  loc_67EE1F: VCallAd Control_ID_TablaProd
  loc_67EE22: FStAdFunc var_90
  loc_67EE25: FLdPr var_90
  loc_67EE28: LateIdLdVar var_A0 DispID_11 0
  loc_67EE2F: CI4Var
  loc_67EE31: LitI4 2
  loc_67EE36: NeI4
  loc_67EE37: FFree1Ad var_90
  loc_67EE3A: FFree1Var var_A0 = ""
  loc_67EE3D: BranchF loc_67EE49
  loc_67EE40: LitI2_Byte 0
  loc_67EE42: IStI2 arg_C
  loc_67EE45: ExitProcHresult
  loc_67EE46: Branch loc_67EEDB
  loc_67EE49: FLdRfVar var_8C
  loc_67EE4C: CVarRef
  loc_67EE51: ImpAdCallI2 Proc_98_2_5E4CF0()
  loc_67EE56: NotI4
  loc_67EE57: BranchF loc_67EEDB
  loc_67EE5A: FLdRfVar var_8C
  loc_67EE5D: CVarRef
  loc_67EE62: ImpAdCallI2 Proc_101_16_6179AC()
  loc_67EE67: BranchF loc_67EEA4
  loc_67EE6A: LitI2_Byte 0
  loc_67EE6C: IStI2 arg_C
  loc_67EE6F: LitVar_Missing var_114
  loc_67EE72: LitVar_Missing var_F4
  loc_67EE75: LitVarStr var_C0, "Consignados"
  loc_67EE7A: FStVarCopyObj var_D4
  loc_67EE7D: FLdRfVar var_D4
  loc_67EE80: LitI4 &H40
  loc_67EE85: LitVarStr var_B0, "Cambio de precio denegado: El producto es consignado."
  loc_67EE8A: FStVarCopyObj var_A0
  loc_67EE8D: FLdRfVar var_A0
  loc_67EE90: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67EE95: FFreeVar var_A0 = "": var_D4 = "": var_F4 = ""
  loc_67EEA0: ExitProcHresult
  loc_67EEA1: Branch loc_67EEDB
  loc_67EEA4: LitI2_Byte 0
  loc_67EEA6: IStI2 arg_C
  loc_67EEA9: LitVar_Missing var_114
  loc_67EEAC: LitVar_Missing var_F4
  loc_67EEAF: LitVarStr var_C0, "Consignados"
  loc_67EEB4: FStVarCopyObj var_D4
  loc_67EEB7: FLdRfVar var_D4
  loc_67EEBA: LitI4 &H40
  loc_67EEBF: LitVarStr var_B0, "Cambio de precio denegado: El producto es no consignado."
  loc_67EEC4: FStVarCopyObj var_A0
  loc_67EEC7: FLdRfVar var_A0
  loc_67EECA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67EECF: FFreeVar var_A0 = "": var_D4 = "": var_F4 = ""
  loc_67EEDA: ExitProcHresult
  loc_67EEDB: FLdPrThis
  loc_67EEDC: VCallAd Control_ID_TablaProd
  loc_67EEDF: FStAdFunc var_90
  loc_67EEE2: FLdPr var_90
  loc_67EEE5: LateIdLdVar var_A0 DispID_10 0
  loc_67EEEC: CI4Var
  loc_67EEEE: CVarI4
  loc_67EEF2: PopAdLdVar
  loc_67EEF3: FLdPrThis
  loc_67EEF4: VCallAd Control_ID_TablaProd
  loc_67EEF7: FStAdFunc var_C4
  loc_67EEFA: FLdPr var_C4
  loc_67EEFD: LateIdLdVar var_D4 DispID_11 0
  loc_67EF04: CI4Var
  loc_67EF06: CVarI4
  loc_67EF0A: PopAdLdVar
  loc_67EF0B: FLdPrThis
  loc_67EF0C: VCallAd Control_ID_TablaProd
  loc_67EF0F: FStAdFunc var_118
  loc_67EF12: FLdPr var_118
  loc_67EF15: LateIdCallLdVar
  loc_67EF1F: CStrVarTmp
  loc_67EF20: FStStr var_88
  loc_67EF23: FFreeAd var_90 = "": var_C4 = ""
  loc_67EF2C: FFreeVar var_A0 = "": var_D4 = ""
  loc_67EF35: ILdI2 arg_C
  loc_67EF38: LitI2_Byte 8
  loc_67EF3A: EqI2
  loc_67EF3B: BranchF loc_67EFD6
  loc_67EF3E: ILdRf var_88
  loc_67EF41: LitStr vbNullString
  loc_67EF44: NeStr
  loc_67EF46: BranchF loc_67EFD3
  loc_67EF49: ILdRf var_88
  loc_67EF4C: FnLenStr
  loc_67EF4D: LitI4 1
  loc_67EF52: SubI4
  loc_67EF53: CVarI4
  loc_67EF57: LitI4 1
  loc_67EF5C: FLdRfVar var_88
  loc_67EF5F: CVarRef
  loc_67EF64: FLdRfVar var_D4
  loc_67EF67: ImpAdCallFPR4  = Mid(, , )
  loc_67EF6C: FLdRfVar var_D4
  loc_67EF6F: CStrVarTmp
  loc_67EF70: FStStr var_88
  loc_67EF73: FFreeVar var_A0 = ""
  loc_67EF7A: FLdPrThis
  loc_67EF7B: VCallAd Control_ID_TablaProd
  loc_67EF7E: FStAdFunc var_90
  loc_67EF81: FLdPr var_90
  loc_67EF84: LateIdLdVar var_A0 DispID_10 0
  loc_67EF8B: CI4Var
  loc_67EF8D: CVarI4
  loc_67EF91: PopAdLdVar
  loc_67EF92: FLdPrThis
  loc_67EF93: VCallAd Control_ID_TablaProd
  loc_67EF96: FStAdFunc var_C4
  loc_67EF99: FLdPr var_C4
  loc_67EF9C: LateIdLdVar var_D4 DispID_11 0
  loc_67EFA3: CI4Var
  loc_67EFA5: CVarI4
  loc_67EFA9: PopAdLdVar
  loc_67EFAA: FLdRfVar var_88
  loc_67EFAD: CDargRef
  loc_67EFB1: FLdPrThis
  loc_67EFB2: VCallAd Control_ID_TablaProd
  loc_67EFB5: FStAdFunc var_118
  loc_67EFB8: FLdPr var_118
  loc_67EFBB: LateIdCallSt
  loc_67EFC3: FFreeAd var_90 = "": var_C4 = ""
  loc_67EFCC: FFreeVar var_A0 = ""
  loc_67EFD3: Branch loc_67F0D0
  loc_67EFD6: ILdI2 arg_C
  loc_67EFD9: LitI2_Byte &H30
  loc_67EFDB: GeI2
  loc_67EFDC: ILdI2 arg_C
  loc_67EFDF: LitI2_Byte &H39
  loc_67EFE1: LeI2
  loc_67EFE2: AndI4
  loc_67EFE3: ILdI2 arg_C
  loc_67EFE6: LitI2_Byte &H2E
  loc_67EFE8: EqI2
  loc_67EFE9: OrI4
  loc_67EFEA: ILdRf var_88
  loc_67EFED: FnLenStr
  loc_67EFEE: LitI4 5
  loc_67EFF3: LeI4
  loc_67EFF4: AndI4
  loc_67EFF5: BranchF loc_67F0CB
  loc_67EFF8: FLdPrThis
  loc_67EFF9: VCallAd Control_ID_TablaProd
  loc_67EFFC: FStAdFunc var_90
  loc_67EFFF: FLdPr var_90
  loc_67F002: LateIdLdVar var_A0 DispID_10 0
  loc_67F009: CI4Var
  loc_67F00B: CVarI4
  loc_67F00F: PopAdLdVar
  loc_67F010: FLdPrThis
  loc_67F011: VCallAd Control_ID_TablaProd
  loc_67F014: FStAdFunc var_C4
  loc_67F017: FLdPr var_C4
  loc_67F01A: LateIdLdVar var_D4 DispID_11 0
  loc_67F021: CI4Var
  loc_67F023: CVarI4
  loc_67F027: PopAdLdVar
  loc_67F028: FLdPrThis
  loc_67F029: VCallAd Control_ID_TablaProd
  loc_67F02C: FStAdFunc var_118
  loc_67F02F: FLdPr var_118
  loc_67F032: LateIdCallLdVar
  loc_67F03C: CStrVarTmp
  loc_67F03D: FStStr var_88
  loc_67F040: FFreeAd var_90 = "": var_C4 = ""
  loc_67F049: FFreeVar var_A0 = "": var_D4 = ""
  loc_67F052: FLdPrThis
  loc_67F053: VCallAd Control_ID_TablaProd
  loc_67F056: FStAdFunc var_90
  loc_67F059: FLdPr var_90
  loc_67F05C: LateIdLdVar var_F4 DispID_10 0
  loc_67F063: CI4Var
  loc_67F065: CVarI4
  loc_67F069: PopAdLdVar
  loc_67F06A: FLdPrThis
  loc_67F06B: VCallAd Control_ID_TablaProd
  loc_67F06E: FStAdFunc var_C4
  loc_67F071: FLdPr var_C4
  loc_67F074: LateIdLdVar var_114 DispID_11 0
  loc_67F07B: CI4Var
  loc_67F07D: CVarI4
  loc_67F081: PopAdLdVar
  loc_67F082: ILdRf var_88
  loc_67F085: CVarStr var_B0
  loc_67F088: ILdI2 arg_C
  loc_67F08B: CI4UI1
  loc_67F08C: FLdRfVar var_A0
  loc_67F08F: ImpAdCallFPR4  = Chr()
  loc_67F094: FLdRfVar var_A0
  loc_67F097: AddVar var_D4
  loc_67F09B: CStrVarTmp
  loc_67F09C: CVarStr var_128
  loc_67F09F: PopAdLdVar
  loc_67F0A0: FLdPrThis
  loc_67F0A1: VCallAd Control_ID_TablaProd
  loc_67F0A4: FStAdFunc var_118
  loc_67F0A7: FLdPr var_118
  loc_67F0AA: LateIdCallSt
  loc_67F0B2: FFreeAd var_90 = "": var_C4 = ""
  loc_67F0BB: FFreeVar var_A0 = "": var_F4 = "": var_114 = "": var_D4 = ""
  loc_67F0C8: Branch loc_67F0D0
  loc_67F0CB: LitI2_Byte 0
  loc_67F0CD: IStI2 arg_C
  loc_67F0D0: FLdPrThis
  loc_67F0D1: VCallAd Control_ID_TablaProd
  loc_67F0D4: FStAdFunc var_90
  loc_67F0D7: FLdPr var_90
  loc_67F0DA: LateIdLdVar var_A0 DispID_10 0
  loc_67F0E1: CI4Var
  loc_67F0E3: CVarI4
  loc_67F0E7: PopAdLdVar
  loc_67F0E8: FLdPrThis
  loc_67F0E9: VCallAd Control_ID_TablaProd
  loc_67F0EC: FStAdFunc var_C4
  loc_67F0EF: FLdPr var_C4
  loc_67F0F2: LateIdLdVar var_D4 DispID_11 0
  loc_67F0F9: CI4Var
  loc_67F0FB: CVarI4
  loc_67F0FF: PopAdLdVar
  loc_67F100: FLdPrThis
  loc_67F101: VCallAd Control_ID_TablaProd
  loc_67F104: FStAdFunc var_118
  loc_67F107: FLdPr var_118
  loc_67F10A: LateIdCallLdVar
  loc_67F114: CStrVarTmp
  loc_67F115: FStStrNoPop var_12C
  loc_67F118: FnLenStr
  loc_67F119: LitI4 6
  loc_67F11E: EqI4
  loc_67F11F: FFree1Str var_12C
  loc_67F122: FFreeAd var_90 = "": var_C4 = ""
  loc_67F12B: FFreeVar var_A0 = "": var_D4 = ""
  loc_67F134: BranchF loc_67F25B
  loc_67F137: FLdPrThis
  loc_67F138: VCallAd Control_ID_TablaProd
  loc_67F13B: FStAdFunc var_90
  loc_67F13E: FLdPr var_90
  loc_67F141: LateIdLdVar var_A0 DispID_10 0
  loc_67F148: CI4Var
  loc_67F14A: CVarI4
  loc_67F14E: PopAdLdVar
  loc_67F14F: FLdPrThis
  loc_67F150: VCallAd Control_ID_TablaProd
  loc_67F153: FStAdFunc var_C4
  loc_67F156: FLdPr var_C4
  loc_67F159: LateIdLdVar var_D4 DispID_11 0
  loc_67F160: CI4Var
  loc_67F162: CVarI4
  loc_67F166: PopAdLdVar
  loc_67F167: FLdPrThis
  loc_67F168: VCallAd Control_ID_TablaProd
  loc_67F16B: FStAdFunc var_118
  loc_67F16E: FLdPr var_118
  loc_67F171: LateIdCallLdVar
  loc_67F17B: PopAd
  loc_67F17D: FLdPrThis
  loc_67F17E: VCallAd Control_ID_TablaProd
  loc_67F181: FStAdFunc var_18C
  loc_67F184: FLdPr var_18C
  loc_67F187: LateIdLdVar var_19C DispID_10 0
  loc_67F18E: CI4Var
  loc_67F190: CVarI4
  loc_67F194: PopAdLdVar
  loc_67F195: FLdPrThis
  loc_67F196: VCallAd Control_ID_TablaProd
  loc_67F199: FStAdFunc var_1A0
  loc_67F19C: FLdPr var_1A0
  loc_67F19F: LateIdLdVar var_1B0 DispID_11 0
  loc_67F1A6: CI4Var
  loc_67F1A8: CVarI4
  loc_67F1AC: PopAdLdVar
  loc_67F1AD: FLdPrThis
  loc_67F1AE: VCallAd Control_ID_TablaProd
  loc_67F1B1: FStAdFunc var_130
  loc_67F1B4: FLdPr var_130
  loc_67F1B7: LateIdLdVar var_114 DispID_10 0
  loc_67F1BE: CI4Var
  loc_67F1C0: CVarI4
  loc_67F1C4: PopAdLdVar
  loc_67F1C5: FLdPrThis
  loc_67F1C6: VCallAd Control_ID_TablaProd
  loc_67F1C9: FStAdFunc var_134
  loc_67F1CC: FLdPr var_134
  loc_67F1CF: LateIdLdVar var_128 DispID_11 0
  loc_67F1D6: CI4Var
  loc_67F1D8: CVarI4
  loc_67F1DC: PopAdLdVar
  loc_67F1DD: FLdPrThis
  loc_67F1DE: VCallAd Control_ID_TablaProd
  loc_67F1E1: FStAdFunc var_138
  loc_67F1E4: FLdPr var_138
  loc_67F1E7: LateIdCallLdVar
  loc_67F1F1: CStrVarTmp
  loc_67F1F2: FStStrNoPop var_12C
  loc_67F1F5: FnLenStr
  loc_67F1F6: CVarI4
  loc_67F1FA: LitI4 2
  loc_67F1FF: FLdRfVar var_F4
  loc_67F202: CStrVarTmp
  loc_67F203: CVarStr var_158
  loc_67F206: FLdRfVar var_188
  loc_67F209: ImpAdCallFPR4  = Mid(, , )
  loc_67F20E: FLdRfVar var_188
  loc_67F211: CStrVarTmp
  loc_67F212: CVarStr var_1E0
  loc_67F215: PopAdLdVar
  loc_67F216: FLdPrThis
  loc_67F217: VCallAd Control_ID_TablaProd
  loc_67F21A: FStAdFunc var_1E4
  loc_67F21D: FLdPr var_1E4
  loc_67F220: LateIdCallSt
  loc_67F228: FFree1Str var_12C
  loc_67F22B: FFreeAd var_90 = "": var_C4 = "": var_118 = "": var_130 = "": var_134 = "": var_138 = "": var_18C = "": var_1A0 = ""
  loc_67F240: FFreeVar var_A0 = "": var_D4 = "": var_F4 = "": var_114 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_19C = "": var_1B0 = "": var_188 = ""
  loc_67F25B: LitI2_Byte &HFF
  loc_67F25D: FLdPrThis
  loc_67F25E: VCallAd Control_ID_TablaProd
  loc_67F261: FStAdFunc var_90
  loc_67F264: FLdPr var_90
  loc_67F267: LateIdLdVar var_A0 DispID_10 0
  loc_67F26E: CI4Var
  loc_67F270: FLdPr Me
  loc_67F273: MemLdRfVar from_stack_1.global_104
  loc_67F276: Ary1StI2
  loc_67F277: FFree1Ad var_90
  loc_67F27A: FFree1Var var_A0 = ""
  loc_67F27D: ExitProcHresult
End Sub

Private Sub TablaProd_RowColChange() '5DCF8C
  'Data Table: 4285F4
  loc_5DCF44: FLdPr Me
  loc_5DCF47: MemLdI2 global_82
  loc_5DCF4A: NotI4
  loc_5DCF4B: BranchF loc_5DCF8B
  loc_5DCF4E: FLdPr Me
  loc_5DCF51: MemLdRfVar from_stack_1.global_64
  loc_5DCF54: CI4Var
  loc_5DCF56: CVarI4
  loc_5DCF5A: PopAdLdVar
  loc_5DCF5B: FLdPrThis
  loc_5DCF5C: VCallAd Control_ID_TablaProd
  loc_5DCF5F: FStAdFunc var_98
  loc_5DCF62: FLdPr var_98
  loc_5DCF65: LateIdSt
  loc_5DCF6A: FFree1Ad var_98
  loc_5DCF6D: FLdPr Me
  loc_5DCF70: MemLdI2 global_80
  loc_5DCF73: CI4UI1
  loc_5DCF74: CVarI4
  loc_5DCF78: PopAdLdVar
  loc_5DCF79: FLdPrThis
  loc_5DCF7A: VCallAd Control_ID_TablaProd
  loc_5DCF7D: FStAdFunc var_98
  loc_5DCF80: FLdPr var_98
  loc_5DCF83: LateIdSt
  loc_5DCF88: FFree1Ad var_98
  loc_5DCF8B: ExitProcHresult
End Sub

Private Sub TablaProd_EnterCell() '5E57F0
  'Data Table: 4285F4
  loc_5E578C: FLdPr Me
  loc_5E578F: MemLdI2 global_84
  loc_5E5792: BranchF loc_5E57E5
  loc_5E5795: FLdPrThis
  loc_5E5796: VCallAd Control_ID_TablaProd
  loc_5E5799: FStAdFunc var_88
  loc_5E579C: FLdPr var_88
  loc_5E579F: LateIdLdVar var_98 DispID_10 0
  loc_5E57A6: PopAd
  loc_5E57A8: FLdPrThis
  loc_5E57A9: VCallAd Control_ID_TablaProd
  loc_5E57AC: FStAdFunc var_9C
  loc_5E57AF: FLdPr var_9C
  loc_5E57B2: LateIdLdVar var_AC DispID_11 0
  loc_5E57B9: PopAd
  loc_5E57BB: FLdRfVar var_C0
  loc_5E57BE: FLdRfVar var_AC
  loc_5E57C1: CI4Var
  loc_5E57C3: CI2I4
  loc_5E57C4: PopTmpLdAd2 var_B0
  loc_5E57C7: FLdRfVar var_98
  loc_5E57CA: CI4Var
  loc_5E57CC: CI2I4
  loc_5E57CD: PopTmpLdAd2 var_AE
  loc_5E57D0: from_stack_3v = VerificarNumero(from_stack_1v, from_stack_2v)
  loc_5E57D5: FFreeAd var_88 = ""
  loc_5E57DC: FFreeVar var_98 = "": var_AC = ""
  loc_5E57E5: LitI2_Byte &HFF
  loc_5E57E7: FLdPr Me
  loc_5E57EA: MemStI2 global_84
  loc_5E57ED: ExitProcHresult
  loc_5E57EE: FnStrComp3
End Sub

Private Sub ConfirmedTimer_Timer() '5F002C
  'Data Table: 4285F4
  loc_5EFF94: FLdRfVar var_8A
  loc_5EFF97: FLdPr Me
  loc_5EFF9A: MemLdRfVar from_stack_1.global_100
  loc_5EFF9D: NewIfNullPr CPrice
  loc_5EFFA0: Call 0.Method_ConfirmedTimer_TimerC ()
  loc_5EFFA5: FLdRfVar var_92
  loc_5EFFA8: FLdRfVar var_88
  loc_5EFFAB: FLdI2 var_8A
  loc_5EFFAE: FLdRfVar var_90
  loc_5EFFB1: ImpAdLdRf MemVar_74C760
  loc_5EFFB4: NewIfNullPr Formx
  loc_5EFFB7: from_stack_1v = Formx.global_4589716Get()
  loc_5EFFBC: FLdPr var_90
  loc_5EFFBF: Call 0.Method_arg_350 ()
  loc_5EFFC4: FLdI2 var_92
  loc_5EFFC7: NotI4
  loc_5EFFC8: FFree1Ad var_90
  loc_5EFFCB: BranchF loc_5EFFF2
  loc_5EFFCE: LitI2_Byte 0
  loc_5EFFD0: FLdPr Me
  loc_5EFFD3: MemStI2 global_132
  loc_5EFFD6: FLdRfVar var_A4
  loc_5EFFD9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5EFFDE: FLdRfVar var_A4
  loc_5EFFE1: CBoolVarNull
  loc_5EFFE3: FFree1Var var_A4 = ""
  loc_5EFFE6: BranchF loc_5EFFEF
  loc_5EFFE9: Call CleanChildForm()
  loc_5EFFEE: ExitProcHresult
  loc_5EFFEF: Branch loc_5EFF94
  loc_5EFFF2: FLdPr Me
  loc_5EFFF5: MemLdI2 global_132
  loc_5EFFF8: NotI4
  loc_5EFFF9: BranchF loc_5F0018
  loc_5EFFFC: FLdPr Me
  loc_5EFFFF: MemLdI2 global_128
  loc_5F0002: BranchF loc_5F0018
  loc_5F0005: FLdRfVar var_8A
  loc_5F0008: from_stack_1v = Proc_99_24_62553C()
  loc_5F000D: FLdI2 var_8A
  loc_5F0010: BranchF loc_5F0018
  loc_5F0013: from_stack_1v = Proc_99_22_65F8A4()
  loc_5F0018: ILdRf var_88
  loc_5F001B: LitStr "1"
  loc_5F001E: EqStr
  loc_5F0020: BranchF loc_5F0029
  loc_5F0023: Call CleanChildForm()
  loc_5F0028: ExitProcHresult
  loc_5F0029: ExitProcHresult
  loc_5F002A: LitStr "StrFormMemory_30009"
End Sub

Public Function mId_PriceGet() '428DA4
  mId_PriceGet = mId_Price
End Function

Public Sub mId_PricePut(Value) '428DB3
  mId_Price = Value
End Sub

Public Function fNameGet() '428DC2
  fNameGet = fName
End Function

Public Sub fNamePut(Value) '428DD1
  fName = Value
End Sub

Public Function setAdvise(isAdv) '5CFE40
  'Data Table: 4285F4
  loc_5CFE2C: ZeroRetValVar
  loc_5CFE2E: ILdI2 isAdv
  loc_5CFE31: FLdPr Me
  loc_5CFE34: MemStI2 global_60
  loc_5CFE37: ExitProcCbHresult
  loc_5CFE3D: ExitProcR8
  loc_5CFE3E: ExitProcR8
End Function

Public Function setPrice(Obj) '5DB54C
  'Data Table: 4285F4
  loc_5DB510: ZeroRetValVar
  loc_5DB512: FLdRfVar var_A4
  loc_5DB515: ILdRf Obj
  loc_5DB518: FLdPr Me
  loc_5DB51B: MemLdRfVar from_stack_1.global_100
  loc_5DB51E: NewIfNullPr CPrice
  loc_5DB521: CPrice.BackColor = from_stack_1
  loc_5DB526: FFree1Var var_A4 = ""
  loc_5DB529: FLdRfVar var_A6
  loc_5DB52C: FLdPr Me
  loc_5DB52F: MemLdRfVar from_stack_1.global_100
  loc_5DB532: NewIfNullPr CPrice
  loc_5DB535: Call 0.Method_setPriceC ()
  loc_5DB53A: FLdI2 var_A6
  loc_5DB53D: FLdPr Me
  loc_5DB540: MemStI2 mId_Price
  loc_5DB543: ExitProcCbHresult
End Function

Public Function ImprimirCambioPrecios(destino) '666724
  'Data Table: 4285F4
  loc_666408: ZeroRetValVar
  loc_66640A: OnErrorGoto loc_66669A
  loc_66640D: FLdRfVar var_B6
  loc_666410: LitStr "\reporte.mdb"
  loc_666413: FStStrCopy var_B4
  loc_666416: FLdRfVar var_B4
  loc_666419: ImpAdLdRf MemVar_74DC6C
  loc_66641C: NewIfNullPr Reportes_Anteriores
  loc_66641F: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_666424: FFree1Str var_B4
  loc_666427: ILdI2 destino
  loc_66642A: ImpAdLdRf MemVar_74DC6C
  loc_66642D: NewIfNullPr Reportes_Anteriores
  loc_666430: Call Reportes_Anteriores.ImprimirPut(from_stack_1v)
  loc_666435: LitI4 &HC8
  loc_66643A: FLdRfVar var_C8
  loc_66643D: ImpAdCallFPR4  = Space()
  loc_666442: FLdRfVar var_C8
  loc_666445: CStrVarTmp
  loc_666446: FStStr var_A8
  loc_666449: FFree1Var var_C8 = ""
  loc_66644C: FLdRfVar var_B4
  loc_66644F: FLdRfVar var_CC
  loc_666452: ImpAdLdRf MemVar_7520D4
  loc_666455: NewIfNullPr Global
  loc_666458:  = Global.App
  loc_66645D: FLdPr var_CC
  loc_666460:  = App.Path
  loc_666465: ILdRf var_B4
  loc_666468: LitStr "\reporte.mdb"
  loc_66646B: ConcatStr
  loc_66646C: FStStr var_AC
  loc_66646F: FFree1Str var_B4
  loc_666472: FFree1Ad var_CC
  loc_666475: FLdRfVar var_CC
  loc_666478: LitVar_Missing var_FC
  loc_66647B: PopAdLdVar
  loc_66647C: LitVar_Missing var_EC
  loc_66647F: PopAdLdVar
  loc_666480: LitVar_TRUE var_DC
  loc_666483: PopAdLdVar
  loc_666484: ILdRf var_AC
  loc_666487: ImpAdLdRf MemVar_752164
  loc_66648A: NewIfNullPr Me
  loc_66648D: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_666492: FLdZeroAd var_CC
  loc_666495: FStAdFunc var_98
  loc_666498: LitVarStr var_DC, vbNullString
  loc_66649D: FStVarCopy
  loc_6664A1: LitVar_Missing var_DC
  loc_6664A4: PopAdLdVar
  loc_6664A5: LitStr "DELETE * FROM PRECIOS"
  loc_6664A8: FLdPr var_98
  loc_6664AB: Me.Execute from_stack_1, from_stack_2
  loc_6664B0: LitStr " "
  loc_6664B3: FStStrCopy var_9C
  loc_6664B6: FLdPr Me
  loc_6664B9: MemLdStr global_88
  loc_6664BC: LitStr "  "
  loc_6664BF: ConcatStr
  loc_6664C0: FStStrNoPop var_B4
  loc_6664C3: FLdPr Me
  loc_6664C6: MemLdStr global_92
  loc_6664C9: ConcatStr
  loc_6664CA: CVarStr var_C8
  loc_6664CD: FStVar var_11C
  loc_6664D1: FFree1Str var_B4
  loc_6664D4: LitI2_Byte 1
  loc_6664D6: FLdRfVar var_AE
  loc_6664D9: FLdPrThis
  loc_6664DA: VCallAd Control_ID_TablaProd
  loc_6664DD: FStAdFunc var_CC
  loc_6664E0: FLdPr var_CC
  loc_6664E3: LateIdLdVar var_C8 DispID_4 0
  loc_6664EA: CI4Var
  loc_6664EC: LitI4 1
  loc_6664F1: SubI4
  loc_6664F2: CI2I4
  loc_6664F3: FFree1Ad var_CC
  loc_6664F6: FFree1Var var_C8 = ""
  loc_6664F9: ForI2 var_120
  loc_6664FF: LitVarStr var_DC, "INSERT INTO PRECIOS ( nivel, descripcion, precio, aceptado, fecha, eess) VALUES ("
  loc_666504: FStVarCopy
  loc_666508: FLdRfVar var_10C
  loc_66650B: FLdI2 var_AE
  loc_66650E: CI4UI1
  loc_66650F: CVarI4
  loc_666513: PopAdLdVar
  loc_666514: LitVarI4
  loc_66651C: PopAdLdVar
  loc_66651D: FLdPrThis
  loc_66651E: VCallAd Control_ID_TablaProd
  loc_666521: FStAdFunc var_CC
  loc_666524: FLdPr var_CC
  loc_666527: LateIdCallLdVar
  loc_666531: CStrVarTmp
  loc_666532: FStStrNoPop var_B4
  loc_666535: CI2Str
  loc_666537: CVarI2 var_FC
  loc_66653A: ConcatVar var_130
  loc_66653E: LitVarStr var_140, ",'"
  loc_666543: ConcatVar var_150
  loc_666547: FLdI2 var_AE
  loc_66654A: CI4UI1
  loc_66654B: CVarI4
  loc_66654F: PopAdLdVar
  loc_666550: LitVarI4
  loc_666558: PopAdLdVar
  loc_666559: FLdPrThis
  loc_66655A: VCallAd Control_ID_TablaProd
  loc_66655D: FStAdFunc var_174
  loc_666560: FLdPr var_174
  loc_666563: LateIdCallLdVar
  loc_66656D: CStrVarTmp
  loc_66656E: CVarStr var_194
  loc_666571: ConcatVar var_1A4
  loc_666575: LitVarStr var_1B4, "','"
  loc_66657A: ConcatVar var_1C4
  loc_66657E: FLdI2 var_AE
  loc_666581: CI4UI1
  loc_666582: CVarI4
  loc_666586: PopAdLdVar
  loc_666587: LitVarI4
  loc_66658F: PopAdLdVar
  loc_666590: FLdPrThis
  loc_666591: VCallAd Control_ID_TablaProd
  loc_666594: FStAdFunc var_1E8
  loc_666597: FLdPr var_1E8
  loc_66659A: LateIdCallLdVar
  loc_6665A4: CStrVarTmp
  loc_6665A5: CVarStr var_208
  loc_6665A8: ConcatVar var_218
  loc_6665AC: LitVarStr var_228, "','"
  loc_6665B1: ConcatVar var_238
  loc_6665B5: FLdI2 var_AE
  loc_6665B8: CI4UI1
  loc_6665B9: CVarI4
  loc_6665BD: PopAdLdVar
  loc_6665BE: LitVarI4
  loc_6665C6: PopAdLdVar
  loc_6665C7: FLdPrThis
  loc_6665C8: VCallAd Control_ID_TablaProd
  loc_6665CB: FStAdFunc var_25C
  loc_6665CE: FLdPr var_25C
  loc_6665D1: LateIdCallLdVar
  loc_6665DB: CStrVarTmp
  loc_6665DC: CVarStr var_27C
  loc_6665DF: ConcatVar var_28C
  loc_6665E3: LitVarStr var_29C, "','"
  loc_6665E8: ConcatVar var_2AC
  loc_6665EC: FLdRfVar var_11C
  loc_6665EF: ConcatVar var_2BC
  loc_6665F3: LitVarStr var_2CC, "','"
  loc_6665F8: ConcatVar var_2DC
  loc_6665FC: ILdRf var_9C
  loc_6665FF: CVarStr var_2EC
  loc_666602: ConcatVar var_2FC
  loc_666606: LitVarStr var_30C, "')"
  loc_66660B: ConcatVar var_31C
  loc_66660F: FStVar var_10C
  loc_666613: FFree1Str var_B4
  loc_666616: FFreeAd var_CC = "": var_174 = "": var_1E8 = ""
  loc_666621: FFreeVar var_C8 = "": var_130 = "": var_184 = "": var_150 = "": var_194 = "": var_1A4 = "": var_1F8 = "": var_1C4 = "": var_208 = "": var_218 = "": var_26C = "": var_238 = "": var_27C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2DC = ""
  loc_666648: LitVarI4
  loc_666650: PopAdLdVar
  loc_666651: FLdRfVar var_10C
  loc_666654: CStrVarVal var_B4
  loc_666658: FLdPr var_98
  loc_66665B: Me.Execute from_stack_1, from_stack_2
  loc_666660: FFree1Str var_B4
  loc_666663: FLdRfVar var_AE
  loc_666666: NextI2 var_120, loc_6664FF
  loc_66666B: FLdRfVar var_324
  loc_66666E: LitStr "Reporte de Cierre"
  loc_666671: FStStrCopy var_320
  loc_666674: FLdRfVar var_320
  loc_666677: LitStr "\precios.rpt"
  loc_66667A: FStStrCopy var_B4
  loc_66667D: FLdRfVar var_B4
  loc_666680: ImpAdLdRf MemVar_74DC6C
  loc_666683: NewIfNullPr Reportes_Anteriores
  loc_666686: from_stack_3v = Reportes_Anteriores.MostrarReporte(from_stack_1v, from_stack_2v)
  loc_66668B: FFreeStr var_B4 = "": var_320 = ""
  loc_666694: ExitProcCbHresult
  loc_66669A: LitVar_Missing var_1F8
  loc_66669D: LitVar_Missing var_1C4
  loc_6666A0: LitVar_Missing var_1A4
  loc_6666A3: LitI4 0
  loc_6666A8: LitStr "Imprimir cambio de Precios    "
  loc_6666AB: FLdRfVar var_328
  loc_6666AE: ImpAdCallI2 Err 'rtcErrObj
  loc_6666B3: FStAdFunc var_CC
  loc_6666B6: FLdPr var_CC
  loc_6666B9:  = Reportes_Anteriores.Number
  loc_6666BE: ILdRf var_328
  loc_6666C1: CStrI4
  loc_6666C3: FStStrNoPop var_B4
  loc_6666C6: ConcatStr
  loc_6666C7: CVarStr var_130
  loc_6666CA: LitI4 &HD
  loc_6666CF: FLdRfVar var_C8
  loc_6666D2: ImpAdCallFPR4  = Chr()
  loc_6666D7: FLdRfVar var_C8
  loc_6666DA: ConcatVar var_150
  loc_6666DE: FLdRfVar var_320
  loc_6666E1: ImpAdCallI2 Err 'rtcErrObj
  loc_6666E6: FStAdFunc var_174
  loc_6666E9: FLdPr var_174
  loc_6666EC:  = Err.Description
  loc_6666F1: FLdZeroAd var_320
  loc_6666F4: CVarStr var_184
  loc_6666F7: ConcatVar var_194
  loc_6666FB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_666700: FFree1Str var_B4
  loc_666703: FFreeAd var_CC = ""
  loc_66670A: FFreeVar var_130 = "": var_C8 = "": var_150 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_66671D: ExitProcCbHresult
End Function

Public Function VerificarNumero(Re, Co) '657974
  'Data Table: 4285F4
  loc_65768C: ZeroRetValVar
  loc_65768E: ILdI2 Re
  loc_657691: CI4UI1
  loc_657692: CVarI4
  loc_657696: PopAdLdVar
  loc_657697: FLdPrThis
  loc_657698: VCallAd Control_ID_TablaProd
  loc_65769B: FStAdFunc var_C0
  loc_65769E: FLdPr var_C0
  loc_6576A1: LateIdSt
  loc_6576A6: FFree1Ad var_C0
  loc_6576A9: ILdI2 Co
  loc_6576AC: CI4UI1
  loc_6576AD: CVarI4
  loc_6576B1: PopAdLdVar
  loc_6576B2: FLdPrThis
  loc_6576B3: VCallAd Control_ID_TablaProd
  loc_6576B6: FStAdFunc var_C0
  loc_6576B9: FLdPr var_C0
  loc_6576BC: LateIdSt
  loc_6576C1: FFree1Ad var_C0
  loc_6576C4: OnErrorGoto loc_6578F1
  loc_6576C7: LitI2_Byte &HFF
  loc_6576C9: FLdPr Me
  loc_6576CC: MemStI2 global_82
  loc_6576CF: FLdPrThis
  loc_6576D0: VCallAd Control_ID_TablaProd
  loc_6576D3: FStAdFunc var_C0
  loc_6576D6: FLdPr var_C0
  loc_6576D9: LateIdLdVar var_D0 DispID_10 0
  loc_6576E0: CI4Var
  loc_6576E2: LitI4 0
  loc_6576E7: GtI4
  loc_6576E8: FLdPrThis
  loc_6576E9: VCallAd Control_ID_TablaProd
  loc_6576EC: FStAdFunc var_D4
  loc_6576EF: FLdPr var_D4
  loc_6576F2: LateIdLdVar var_E4 DispID_11 0
  loc_6576F9: CI4Var
  loc_6576FB: LitI4 2
  loc_657700: EqI4
  loc_657701: AndI4
  loc_657702: FFreeAd var_C0 = ""
  loc_657709: FFreeVar var_D0 = ""
  loc_657710: BranchF loc_6578EB
  loc_657713: FLdPrThis
  loc_657714: VCallAd Control_ID_TablaProd
  loc_657717: FStAdFunc var_C0
  loc_65771A: FLdPr var_C0
  loc_65771D: LateIdLdVar var_D0 DispID_10 0
  loc_657724: CI4Var
  loc_657726: CVarI4
  loc_65772A: PopAdLdVar
  loc_65772B: FLdPrThis
  loc_65772C: VCallAd Control_ID_TablaProd
  loc_65772F: FStAdFunc var_D4
  loc_657732: FLdPr var_D4
  loc_657735: LateIdLdVar var_E4 DispID_11 0
  loc_65773C: CI4Var
  loc_65773E: CVarI4
  loc_657742: PopAdLdVar
  loc_657743: FLdPrThis
  loc_657744: VCallAd Control_ID_TablaProd
  loc_657747: FStAdFunc var_F8
  loc_65774A: FLdPr var_F8
  loc_65774D: LateIdCallLdVar
  loc_657757: CStrVarTmp
  loc_657758: PopTmpLdAdStr
  loc_65775C: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_657761: FStFPR8 var_9C
  loc_657764: FFree1Str var_10C
  loc_657767: FFreeAd var_C0 = "": var_D4 = ""
  loc_657770: FFreeVar var_D0 = "": var_E4 = ""
  loc_657779: FLdFPR8 var_9C
  loc_65777C: LitI2_Byte 0
  loc_65777E: CR8I2
  loc_65777F: LtR8
  loc_657780: BranchF loc_65778D
  loc_657783: FLdFPR8 var_9C
  loc_657786: LitI2_Byte &HFF
  loc_657788: CR8I2
  loc_657789: MulR8
  loc_65778A: FStFPR8 var_9C
  loc_65778D: FLdPrThis
  loc_65778E: VCallAd Control_ID_TablaProd
  loc_657791: FStAdFunc var_C0
  loc_657794: FLdPr var_C0
  loc_657797: LateIdLdVar var_E4 DispID_10 0
  loc_65779E: CI4Var
  loc_6577A0: CVarI4
  loc_6577A4: PopAdLdVar
  loc_6577A5: FLdPrThis
  loc_6577A6: VCallAd Control_ID_TablaProd
  loc_6577A9: FStAdFunc var_D4
  loc_6577AC: FLdPr var_D4
  loc_6577AF: LateIdLdVar var_108 DispID_11 0
  loc_6577B6: CI4Var
  loc_6577B8: CVarI4
  loc_6577BC: PopAdLdVar
  loc_6577BD: LitI4 1
  loc_6577C2: LitI4 1
  loc_6577C7: ImpAdLdRf MemVar_74C350
  loc_6577CA: CVarRef
  loc_6577CF: FLdRfVar var_9C
  loc_6577D2: CVarRef
  loc_6577D7: FLdRfVar var_D0
  loc_6577DA: ImpAdCallFPR4  = Format(, )
  loc_6577DF: FLdRfVar var_D0
  loc_6577E2: CStrVarTmp
  loc_6577E3: CVarStr var_13C
  loc_6577E6: PopAdLdVar
  loc_6577E7: FLdPrThis
  loc_6577E8: VCallAd Control_ID_TablaProd
  loc_6577EB: FStAdFunc var_F8
  loc_6577EE: FLdPr var_F8
  loc_6577F1: LateIdCallSt
  loc_6577F9: FFreeAd var_C0 = "": var_D4 = ""
  loc_657802: FFreeVar var_E4 = "": var_108 = "": var_D0 = ""
  loc_65780D: LitI2_Byte &HA
  loc_65780F: CR8I2
  loc_657810: ImpAdLdUI1
  loc_657814: CI2UI1
  loc_657816: LitI2_Byte 4
  loc_657818: SubI2
  loc_657819: CR8I2
  loc_65781A: PwrR8R8
  loc_65781C: LitI2 10000
  loc_65781F: CR8I2
  loc_657820: MulR8
  loc_657821: FStFPR8 var_A4
  loc_657824: LitI2_Byte &HA
  loc_657826: CR8I2
  loc_657827: ImpAdLdUI1
  loc_65782B: CI2UI1
  loc_65782D: LitI2_Byte 4
  loc_65782F: SubI2
  loc_657830: CR8I2
  loc_657831: PwrR8R8
  loc_657833: LitI2_Byte &H64
  loc_657835: CR8I2
  loc_657836: MulR8
  loc_657837: FStFPR8 var_AC
  loc_65783A: FLdFPR8 var_9C
  loc_65783D: FLdFPR8 var_A4
  loc_657840: GtR4
  loc_657841: FLdFPR8 var_9C
  loc_657844: FLdFPR8 var_AC
  loc_657847: LtR8
  loc_657848: OrI4
  loc_657849: BranchF loc_6578EB
  loc_65784C: LitVar_Missing var_13C
  loc_65784F: LitVar_Missing var_108
  loc_657852: LitVarStr var_BC, "Atención"
  loc_657857: FStVarCopyObj var_E4
  loc_65785A: FLdRfVar var_E4
  loc_65785D: LitI4 &H40
  loc_657862: LitStr "El precio no puede ser mayor a "
  loc_657865: FLdFPR8 var_A4
  loc_657868: CStrR8
  loc_65786A: FStStrNoPop var_10C
  loc_65786D: ConcatStr
  loc_65786E: FStStrNoPop var_140
  loc_657871: LitStr ", ni menor a "
  loc_657874: ConcatStr
  loc_657875: FStStrNoPop var_144
  loc_657878: FLdFPR8 var_AC
  loc_65787B: CStrR8
  loc_65787D: FStStrNoPop var_148
  loc_657880: ConcatStr
  loc_657881: CVarStr var_D0
  loc_657884: ImpAdCallFPR4 MsgBox(, , , , )
  loc_657889: FFreeStr var_10C = "": var_140 = "": var_144 = ""
  loc_657894: FFreeVar var_D0 = "": var_E4 = "": var_108 = ""
  loc_65789F: FLdPrThis
  loc_6578A0: VCallAd Control_ID_TablaProd
  loc_6578A3: FStAdFunc var_C0
  loc_6578A6: FLdPr var_C0
  loc_6578A9: LateIdLdVar var_D0 DispID_10 0
  loc_6578B0: CI4Var
  loc_6578B2: CVarI4
  loc_6578B6: FLdPr Me
  loc_6578B9: MemStVar
  loc_6578BD: FFree1Ad var_C0
  loc_6578C0: FFree1Var var_D0 = ""
  loc_6578C3: FLdPrThis
  loc_6578C4: VCallAd Control_ID_TablaProd
  loc_6578C7: FStAdFunc var_C0
  loc_6578CA: FLdPr var_C0
  loc_6578CD: LateIdLdVar var_D0 DispID_11 0
  loc_6578D4: CI4Var
  loc_6578D6: CI2I4
  loc_6578D7: FLdPr Me
  loc_6578DA: MemStI2 global_80
  loc_6578DD: FFree1Ad var_C0
  loc_6578E0: FFree1Var var_D0 = ""
  loc_6578E3: LitI2_Byte 0
  loc_6578E5: FLdPr Me
  loc_6578E8: MemStI2 global_82
  loc_6578EB: ExitProcCbHresult
  loc_6578F1: LitVar_Missing var_13C
  loc_6578F4: LitVar_Missing var_108
  loc_6578F7: LitVarStr var_F4, "Editar cambio de precios"
  loc_6578FC: FStVarCopyObj var_E4
  loc_6578FF: FLdRfVar var_E4
  loc_657902: LitI4 &H10
  loc_657907: LitVarStr var_BC, "El número ingresado es incorrecto. Verifique por favor"
  loc_65790C: FStVarCopyObj var_D0
  loc_65790F: FLdRfVar var_D0
  loc_657912: ImpAdCallFPR4 MsgBox(, , , , )
  loc_657917: FFreeVar var_D0 = "": var_E4 = "": var_108 = ""
  loc_657922: FLdPrThis
  loc_657923: VCallAd Control_ID_TablaProd
  loc_657926: FStAdFunc var_C0
  loc_657929: FLdPr var_C0
  loc_65792C: LateIdLdVar var_D0 DispID_10 0
  loc_657933: CI4Var
  loc_657935: CVarI4
  loc_657939: FLdPr Me
  loc_65793C: MemStVar
  loc_657940: FFree1Ad var_C0
  loc_657943: FFree1Var var_D0 = ""
  loc_657946: FLdPrThis
  loc_657947: VCallAd Control_ID_TablaProd
  loc_65794A: FStAdFunc var_C0
  loc_65794D: FLdPr var_C0
  loc_657950: LateIdLdVar var_D0 DispID_11 0
  loc_657957: CI4Var
  loc_657959: CI2I4
  loc_65795A: FLdPr Me
  loc_65795D: MemStI2 global_80
  loc_657960: FFree1Ad var_C0
  loc_657963: FFree1Var var_D0 = ""
  loc_657966: LitI2_Byte 0
  loc_657968: FLdPr Me
  loc_65796B: MemStI2 global_82
  loc_65796E: ExitProcCbHresult
End Function

Public Sub CleanChildForm() '61111C
  'Data Table: 4285F4
  loc_611018: FLdRfVar var_8C
  loc_61101B: ImpAdLdRf MemVar_7520D4
  loc_61101E: NewIfNullPr Global
  loc_611021:  = Global.Forms
  loc_611026: FLdPr var_8C
  loc_611029: LateMemLdVar
  loc_61102E: LitVarI2 var_9C, 1
  loc_611033: SubVar var_BC
  loc_611037: CI2Var
  loc_611038: FLdRfVar var_86
  loc_61103B: LitI2_Byte 0
  loc_61103D: LitI2_Byte &HFF
  loc_61103F: FFree1Ad var_8C
  loc_611042: FFree1Var var_AC = ""
  loc_611045: ForStepI2 var_C0
  loc_61104B: FLdRfVar var_86
  loc_61104E: CDargRef
  loc_611052: FLdRfVar var_8C
  loc_611055: ImpAdLdRf MemVar_7520D4
  loc_611058: NewIfNullPr Global
  loc_61105B:  = Global.Forms
  loc_611060: FLdPr var_8C
  loc_611063: LateIdCallLdVar
  loc_61106D: LdPrVar
  loc_61106F: LateMemLdVar
  loc_611074: FLdPr Me
  loc_611077: MemLdStr fName
  loc_61107A: CVarStr var_D0
  loc_61107D: HardType
  loc_61107E: EqVarBool
  loc_611080: FFree1Ad var_8C
  loc_611083: FFreeVar var_BC = ""
  loc_61108A: BranchF loc_61110C
  loc_61108D: FLdRfVar var_86
  loc_611090: CDargRef
  loc_611094: FLdRfVar var_8C
  loc_611097: ImpAdLdRf MemVar_7520D4
  loc_61109A: NewIfNullPr Global
  loc_61109D:  = Global.Forms
  loc_6110A2: FLdPr var_8C
  loc_6110A5: LateIdCallLdVar
  loc_6110AF: LdPrVar
  loc_6110B1: LateMemLdVar
  loc_6110B6: FLdPr Me
  loc_6110B9: MemLdI2 mId_Price
  loc_6110BC: CVarI2 var_D0
  loc_6110BF: HardType
  loc_6110C0: EqVarBool
  loc_6110C2: FFree1Ad var_8C
  loc_6110C5: FFreeVar var_BC = ""
  loc_6110CC: BranchF loc_61110C
  loc_6110CF: FLdRfVar var_86
  loc_6110D2: CDargRef
  loc_6110D6: FLdRfVar var_8C
  loc_6110D9: ImpAdLdRf MemVar_7520D4
  loc_6110DC: NewIfNullPr Global
  loc_6110DF:  = Global.Forms
  loc_6110E4: FLdPr var_8C
  loc_6110E7: LateIdCallLdVar
  loc_6110F1: CAdVar
  loc_6110F3: FStAdNoPop
  loc_6110F7: ImpAdLdRf MemVar_7520D4
  loc_6110FA: NewIfNullPr Global
  loc_6110FD: Global.Unload from_stack_1
  loc_611102: FFreeAd var_8C = ""
  loc_611109: FFree1Var var_AC = ""
  loc_61110C: ImpAdCallFPR4 DoEvents()
  loc_611111: FLdRfVar var_86
  loc_611114: NextStepI2 var_C0, loc_61104B
  loc_611119: ExitProcHresult
End Sub

Public Sub ChangeLabelEsso(MsgSelected) '641E58
  'Data Table: 4285F4
  loc_641C1C: LitVarI2 var_A4, 1
  loc_641C21: LitI4 &HC
  loc_641C26: ImpAdLdI4 MemVar_74BEAC
  loc_641C29: ImpAdCallI2 Mid$(, , )
  loc_641C2E: FStStrNoPop var_A8
  loc_641C31: LitStr "1"
  loc_641C34: EqStr
  loc_641C36: FFree1Str var_A8
  loc_641C39: FFree1Var var_A4 = ""
  loc_641C3C: BranchF loc_641E54
  loc_641C3F: FLdRfVar var_A8
  loc_641C42: FLdRfVar var_B0
  loc_641C45: ImpAdLdRf MemVar_74C760
  loc_641C48: NewIfNullPr Formx
  loc_641C4B: from_stack_1v = Formx.global_4589716Get()
  loc_641C50: FLdPr var_B0
  loc_641C53: Call 0.Method_arg_398 ()
  loc_641C58: FLdZeroAd var_A8
  loc_641C5B: FStStr var_AC
  loc_641C5E: FFree1Ad var_B0
  loc_641C61: ILdRf var_AC
  loc_641C64: FnLenStr
  loc_641C65: LitI4 0
  loc_641C6A: EqI4
  loc_641C6B: BranchF loc_641C6F
  loc_641C6E: ExitProcHresult
  loc_641C6F: LitVarI2 var_A4, 1
  loc_641C74: LitI4 1
  loc_641C79: FLdRfVar var_AC
  loc_641C7C: CVarRef
  loc_641C81: FLdRfVar var_D0
  loc_641C84: ImpAdCallFPR4  = Mid(, , )
  loc_641C89: FLdRfVar var_D0
  loc_641C8C: LitVarI2 var_E0, 0
  loc_641C91: HardType
  loc_641C92: EqVarBool
  loc_641C94: FFreeVar var_A4 = ""
  loc_641C9B: BranchF loc_641C9F
  loc_641C9E: ExitProcHresult
  loc_641C9F: LitI2_Byte &HFF
  loc_641CA1: FLdPrThis
  loc_641CA2: VCallAd Control_ID_txtAviso
  loc_641CA5: FStAdFunc var_B0
  loc_641CA8: FLdPr var_B0
  loc_641CAB: Formx.Label.WordWrap = from_stack_1b
  loc_641CB0: FFree1Ad var_B0
  loc_641CB3: ILdUI1 MsgSelected
  loc_641CB7: CI2UI1
  loc_641CB9: LitI2_Byte 1
  loc_641CBB: EqI2
  loc_641CBC: BranchF loc_641D85
  loc_641CBF: LitVarI2 var_A4, 350
  loc_641CC4: LitI4 2
  loc_641CC9: FLdRfVar var_AC
  loc_641CCC: CVarRef
  loc_641CD1: FLdRfVar var_D0
  loc_641CD4: ImpAdCallFPR4  = Mid(, , )
  loc_641CD9: FLdRfVar var_D0
  loc_641CDC: FLdRfVar var_F0
  loc_641CDF: ImpAdCallFPR4  = Trim()
  loc_641CE4: FLdRfVar var_F0
  loc_641CE7: LitVarStr var_E0, vbNullString
  loc_641CEC: HardType
  loc_641CED: NeVarBool
  loc_641CEF: FFreeVar var_A4 = "": var_D0 = ""
  loc_641CF8: BranchF loc_641D82
  loc_641CFB: LitVarI2 var_A4, 350
  loc_641D00: LitI4 2
  loc_641D05: FLdRfVar var_AC
  loc_641D08: CVarRef
  loc_641D0D: FLdRfVar var_D0
  loc_641D10: ImpAdCallFPR4  = Mid(, , )
  loc_641D15: FLdRfVar var_D0
  loc_641D18: FLdRfVar var_F0
  loc_641D1B: ImpAdCallFPR4  = Trim()
  loc_641D20: FLdRfVar var_F0
  loc_641D23: LitVarStr var_E0, " "
  loc_641D28: ConcatVar var_100
  loc_641D2C: LitI4 &HD
  loc_641D31: FLdRfVar var_110
  loc_641D34: ImpAdCallFPR4  = Chr()
  loc_641D39: FLdRfVar var_110
  loc_641D3C: ConcatVar var_120
  loc_641D40: LitVarStr var_130, "Fecha de aplicación: "
  loc_641D45: ConcatVar var_140
  loc_641D49: FLdPr Me
  loc_641D4C: MemLdStr global_136
  loc_641D4F: CVarStr var_150
  loc_641D52: ConcatVar var_160
  loc_641D56: CStrVarVal var_A8
  loc_641D5A: FLdPrThis
  loc_641D5B: VCallAd Control_ID_Label1
  loc_641D5E: FStAdFunc var_B0
  loc_641D61: FLdPr var_B0
  loc_641D64: Me.Caption = from_stack_1
  loc_641D69: FFree1Str var_A8
  loc_641D6C: FFree1Ad var_B0
  loc_641D6F: FFreeVar var_A4 = "": var_D0 = "": var_F0 = "": var_100 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_641D82: Branch loc_641E54
  loc_641D85: ILdUI1 MsgSelected
  loc_641D89: CI2UI1
  loc_641D8B: LitI2_Byte 2
  loc_641D8D: EqI2
  loc_641D8E: BranchF loc_641E54
  loc_641D91: LitVarI2 var_A4, 350
  loc_641D96: LitI4 &H160
  loc_641D9B: FLdRfVar var_AC
  loc_641D9E: CVarRef
  loc_641DA3: FLdRfVar var_D0
  loc_641DA6: ImpAdCallFPR4  = Mid(, , )
  loc_641DAB: FLdRfVar var_D0
  loc_641DAE: FLdRfVar var_F0
  loc_641DB1: ImpAdCallFPR4  = Trim()
  loc_641DB6: FLdRfVar var_F0
  loc_641DB9: LitVarStr var_E0, vbNullString
  loc_641DBE: HardType
  loc_641DBF: NeVarBool
  loc_641DC1: FFreeVar var_A4 = "": var_D0 = ""
  loc_641DCA: BranchF loc_641E54
  loc_641DCD: LitVarI2 var_A4, 350
  loc_641DD2: LitI4 &H160
  loc_641DD7: FLdRfVar var_AC
  loc_641DDA: CVarRef
  loc_641DDF: FLdRfVar var_D0
  loc_641DE2: ImpAdCallFPR4  = Mid(, , )
  loc_641DE7: FLdRfVar var_D0
  loc_641DEA: FLdRfVar var_F0
  loc_641DED: ImpAdCallFPR4  = Trim()
  loc_641DF2: FLdRfVar var_F0
  loc_641DF5: LitVarStr var_E0, " "
  loc_641DFA: ConcatVar var_100
  loc_641DFE: LitI4 &HD
  loc_641E03: FLdRfVar var_110
  loc_641E06: ImpAdCallFPR4  = Chr()
  loc_641E0B: FLdRfVar var_110
  loc_641E0E: ConcatVar var_120
  loc_641E12: LitVarStr var_130, "Fecha de aplicación: "
  loc_641E17: ConcatVar var_140
  loc_641E1B: FLdPr Me
  loc_641E1E: MemLdStr global_136
  loc_641E21: CVarStr var_150
  loc_641E24: ConcatVar var_160
  loc_641E28: CStrVarVal var_A8
  loc_641E2C: FLdPrThis
  loc_641E2D: VCallAd Control_ID_Label1
  loc_641E30: FStAdFunc var_B0
  loc_641E33: FLdPr var_B0
  loc_641E36: Me.Caption = from_stack_1
  loc_641E3B: FFree1Str var_A8
  loc_641E3E: FFree1Ad var_B0
  loc_641E41: FFreeVar var_A4 = "": var_D0 = "": var_F0 = "": var_100 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_641E54: ExitProcHresult
End Sub

Private Function Proc_99_21_5D4DD4() '5D4DD4
  'Data Table: 4285F4
  loc_5D4DAC: LitI2_Byte 1
  loc_5D4DAE: FLdRfVar var_86
  loc_5D4DB1: LitStr "10"
  loc_5D4DB4: CI2Str
  loc_5D4DB6: ForI2 var_8A
  loc_5D4DBC: LitI2_Byte 0
  loc_5D4DBE: FLdI2 var_86
  loc_5D4DC1: CI4UI1
  loc_5D4DC2: FLdPr Me
  loc_5D4DC5: MemLdRfVar from_stack_1.global_104
  loc_5D4DC8: Ary1StI2
  loc_5D4DC9: FLdRfVar var_86
  loc_5D4DCC: NextI2 var_8A, loc_5D4DBC
  loc_5D4DD1: ExitProcHresult
End Function

Private Function Proc_99_22_65F8A4() '65F8A4
  'Data Table: 4285F4
  loc_65F5A0: FLdRfVar var_A4
  loc_65F5A3: from_stack_1v = Proc_99_23_5E0DE8()
  loc_65F5A8: FLdFPR8 var_A4
  loc_65F5AB: FStFPR8 var_9C
  loc_65F5AE: FLdRfVar var_9C
  loc_65F5B1: CVarRef
  loc_65F5B6: FLdRfVar var_C4
  loc_65F5B9: ImpAdCallFPR4  = Hour()
  loc_65F5BE: FLdRfVar var_9C
  loc_65F5C1: CVarRef
  loc_65F5C6: FLdRfVar var_134
  loc_65F5C9: ImpAdCallFPR4  = Minute()
  loc_65F5CE: LitI4 1
  loc_65F5D3: LitI4 1
  loc_65F5D8: LitVarStr var_D4, "00"
  loc_65F5DD: FStVarCopyObj var_E4
  loc_65F5E0: FLdRfVar var_E4
  loc_65F5E3: FLdRfVar var_C4
  loc_65F5E6: FLdRfVar var_F4
  loc_65F5E9: ImpAdCallFPR4  = Format(, )
  loc_65F5EE: FLdRfVar var_F4
  loc_65F5F1: LitVarStr var_104, ":"
  loc_65F5F6: ConcatVar var_114
  loc_65F5FA: LitI4 1
  loc_65F5FF: LitI4 1
  loc_65F604: LitVarStr var_144, "00"
  loc_65F609: FStVarCopyObj var_154
  loc_65F60C: FLdRfVar var_154
  loc_65F60F: FLdRfVar var_134
  loc_65F612: FLdRfVar var_164
  loc_65F615: ImpAdCallFPR4  = Format(, )
  loc_65F61A: FLdRfVar var_164
  loc_65F61D: ConcatVar var_174
  loc_65F621: CStrVarTmp
  loc_65F622: FStStr var_90
  loc_65F625: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_164 = ""
  loc_65F638: FLdRfVar var_9C
  loc_65F63B: CVarRef
  loc_65F640: FLdRfVar var_C4
  loc_65F643: ImpAdCallFPR4  = Day()
  loc_65F648: FLdRfVar var_9C
  loc_65F64B: CVarRef
  loc_65F650: FLdRfVar var_134
  loc_65F653: ImpAdCallFPR4  = Month()
  loc_65F658: FLdRfVar var_9C
  loc_65F65B: CVarRef
  loc_65F660: FLdRfVar var_1B4
  loc_65F663: ImpAdCallFPR4  = Year()
  loc_65F668: LitI4 1
  loc_65F66D: LitI4 1
  loc_65F672: LitVarStr var_D4, "00"
  loc_65F677: FStVarCopyObj var_E4
  loc_65F67A: FLdRfVar var_E4
  loc_65F67D: FLdRfVar var_C4
  loc_65F680: FLdRfVar var_F4
  loc_65F683: ImpAdCallFPR4  = Format(, )
  loc_65F688: FLdRfVar var_F4
  loc_65F68B: LitVarStr var_104, "/"
  loc_65F690: ConcatVar var_114
  loc_65F694: LitI4 1
  loc_65F699: LitI4 1
  loc_65F69E: LitVarStr var_144, "00"
  loc_65F6A3: FStVarCopyObj var_154
  loc_65F6A6: FLdRfVar var_154
  loc_65F6A9: FLdRfVar var_134
  loc_65F6AC: FLdRfVar var_164
  loc_65F6AF: ImpAdCallFPR4  = Format(, )
  loc_65F6B4: FLdRfVar var_164
  loc_65F6B7: ConcatVar var_174
  loc_65F6BB: LitVarStr var_184, "/"
  loc_65F6C0: ConcatVar var_194
  loc_65F6C4: LitI4 1
  loc_65F6C9: LitI4 1
  loc_65F6CE: LitVarStr var_1C4, "0000"
  loc_65F6D3: FStVarCopyObj var_1D4
  loc_65F6D6: FLdRfVar var_1D4
  loc_65F6D9: FLdRfVar var_1B4
  loc_65F6DC: FLdRfVar var_1E4
  loc_65F6DF: ImpAdCallFPR4  = Format(, )
  loc_65F6E4: FLdRfVar var_1E4
  loc_65F6E7: ConcatVar var_1F4
  loc_65F6EB: CStrVarTmp
  loc_65F6EC: FStStr var_94
  loc_65F6EF: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_164 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1E4 = ""
  loc_65F70C: FLdRfVar var_1F8
  loc_65F70F: FLdPr Me
  loc_65F712: MemLdRfVar from_stack_1.global_100
  loc_65F715: NewIfNullPr CPrice
  loc_65F71D: FLdRfVar var_1FC
  loc_65F720: FLdPr Me
  loc_65F723: MemLdRfVar from_stack_1.global_100
  loc_65F726: NewIfNullPr CPrice
  loc_65F72E: LitVarI2 var_E4, 2
  loc_65F733: LitI4 1
  loc_65F738: FLdZeroAd var_1F8
  loc_65F73B: CVarStr var_C4
  loc_65F73E: FLdRfVar var_F4
  loc_65F741: ImpAdCallFPR4  = Mid(, , )
  loc_65F746: FLdRfVar var_F4
  loc_65F749: LitVarStr var_D4, ":"
  loc_65F74E: ConcatVar var_114
  loc_65F752: LitVarI2 var_154, 2
  loc_65F757: LitI4 3
  loc_65F75C: FLdZeroAd var_1FC
  loc_65F75F: CVarStr var_134
  loc_65F762: FLdRfVar var_164
  loc_65F765: ImpAdCallFPR4  = Mid(, , )
  loc_65F76A: FLdRfVar var_164
  loc_65F76D: ConcatVar var_174
  loc_65F771: CStrVarTmp
  loc_65F772: FStStr var_88
  loc_65F775: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_164 = ""
  loc_65F788: FLdRfVar var_1F8
  loc_65F78B: FLdPr Me
  loc_65F78E: MemLdRfVar from_stack_1.global_100
  loc_65F791: NewIfNullPr CPrice
  loc_65F794: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65F799: FLdRfVar var_1FC
  loc_65F79C: FLdPr Me
  loc_65F79F: MemLdRfVar from_stack_1.global_100
  loc_65F7A2: NewIfNullPr CPrice
  loc_65F7A5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65F7AA: FLdRfVar var_200
  loc_65F7AD: FLdPr Me
  loc_65F7B0: MemLdRfVar from_stack_1.global_100
  loc_65F7B3: NewIfNullPr CPrice
  loc_65F7B6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65F7BB: LitVarI2 var_E4, 2
  loc_65F7C0: LitI4 7
  loc_65F7C5: FLdZeroAd var_1F8
  loc_65F7C8: CVarStr var_C4
  loc_65F7CB: FLdRfVar var_F4
  loc_65F7CE: ImpAdCallFPR4  = Mid(, , )
  loc_65F7D3: FLdRfVar var_F4
  loc_65F7D6: LitVarStr var_D4, "/"
  loc_65F7DB: ConcatVar var_114
  loc_65F7DF: LitVarI2 var_154, 2
  loc_65F7E4: LitI4 5
  loc_65F7E9: FLdZeroAd var_1FC
  loc_65F7EC: CVarStr var_134
  loc_65F7EF: FLdRfVar var_164
  loc_65F7F2: ImpAdCallFPR4  = Mid(, , )
  loc_65F7F7: FLdRfVar var_164
  loc_65F7FA: ConcatVar var_174
  loc_65F7FE: LitVarStr var_124, "/"
  loc_65F803: ConcatVar var_194
  loc_65F807: LitVarI2 var_1D4, 4
  loc_65F80C: LitI4 1
  loc_65F811: FLdZeroAd var_200
  loc_65F814: CVarStr var_1B4
  loc_65F817: FLdRfVar var_1E4
  loc_65F81A: ImpAdCallFPR4  = Mid(, , )
  loc_65F81F: FLdRfVar var_1E4
  loc_65F822: ConcatVar var_1F4
  loc_65F826: CStrVarTmp
  loc_65F827: FStStr var_8C
  loc_65F82A: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_134 = "": var_154 = "": var_114 = "": var_164 = "": var_174 = "": var_1B4 = "": var_1D4 = "": var_194 = "": var_1E4 = ""
  loc_65F847: LitStr "Los cambios de precios con vigencia "
  loc_65F84A: ILdRf var_88
  loc_65F84D: ConcatStr
  loc_65F84E: FStStrNoPop var_1F8
  loc_65F851: LitStr " hs del "
  loc_65F854: ConcatStr
  loc_65F855: FStStrNoPop var_1FC
  loc_65F858: ILdRf var_8C
  loc_65F85B: ConcatStr
  loc_65F85C: FStStrNoPop var_200
  loc_65F85F: LitStr " han vencido. "
  loc_65F862: ConcatStr
  loc_65F863: FStStrNoPop var_204
  loc_65F866: LitStr "Se recuerda actualizar de manera coordinada los precios exhibidos en la cartelería de ESSO Servicentro y en otros sistemas de ESSO Servicentro."
  loc_65F869: ConcatStr
  loc_65F86A: FStStrNoPop var_208
  loc_65F86D: FLdPrThis
  loc_65F86E: VCallAd Control_ID_Label1
  loc_65F871: FStAdFunc var_20C
  loc_65F874: FLdPr var_20C
  loc_65F877: Me.Caption = from_stack_1
  loc_65F87C: FFreeStr var_1F8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_65F889: FFree1Ad var_20C
  loc_65F88C: LitI2_Byte &HFF
  loc_65F88E: FLdPr Me
  loc_65F891: MemStI2 global_132
  loc_65F894: LitI2_Byte 2
  loc_65F896: CUI1I2
  loc_65F898: PopTmpLdAd1
  loc_65F89C: Call ChangeLabelEsso(from_stack_1v)
  loc_65F8A1: ExitProcHresult
  loc_65F8A2: Ary1LdI2
End Function

Private Function Proc_99_23_5E0DE8() '5E0DE8
  'Data Table: 4285F4
  loc_5E0D94: FLdRfVar var_A0
  loc_5E0D97: FLdRfVar var_98
  loc_5E0D9A: ImpAdLdRf MemVar_74C760
  loc_5E0D9D: NewIfNullPr Formx
  loc_5E0DA0: from_stack_1v = Formx.global_4589716Get()
  loc_5E0DA5: FLdPr var_98
  loc_5E0DA8: Call 0.Method_arg_35C ()
  loc_5E0DAD: FLdRfVar var_B0
  loc_5E0DB0: ImpAdCallFPR4  = Now
  loc_5E0DB5: FLdRfVar var_B0
  loc_5E0DB8: FLdR8 var_A0
  loc_5E0DBB: LitStr "s"
  loc_5E0DBE: FLdRfVar var_C0
  loc_5E0DC1: ImpAdCallFPR4  = DateAdd(, , )
  loc_5E0DC6: FLdRfVar var_C0
  loc_5E0DC9: CR4Var
  loc_5E0DCA: FStFPR8 var_94
  loc_5E0DCD: FFree1Ad var_98
  loc_5E0DD0: FFreeVar var_B0 = ""
  loc_5E0DD7: FLdFPR8 var_94
  loc_5E0DDA: FnCDblR8
  loc_5E0DDC: CDateR8
  loc_5E0DDD: FStFPR8 var_8C
  loc_5E0DE0: ExitProcCbHresult
  loc_5E0DE6: ExitProcR8
End Function

Private Function Proc_99_24_62553C() '62553C
  'Data Table: 4285F4
  loc_625404: FLdRfVar var_90
  loc_625407: FLdPr Me
  loc_62540A: MemLdRfVar from_stack_1.global_100
  loc_62540D: NewIfNullPr CPrice
  loc_625410: Call 0.Method_arg_5C ()
  loc_625415: FLdZeroAd var_90
  loc_625418: FStStr var_8C
  loc_62541B: LitVarI2 var_C0, 2
  loc_625420: LitI4 7
  loc_625425: FLdRfVar var_8C
  loc_625428: CVarRef
  loc_62542D: FLdRfVar var_D0
  loc_625430: ImpAdCallFPR4  = Mid(, , )
  loc_625435: FLdRfVar var_D0
  loc_625438: LitVarStr var_E0, "/"
  loc_62543D: ConcatVar var_F0
  loc_625441: LitVarI2 var_120, 2
  loc_625446: LitI4 5
  loc_62544B: FLdRfVar var_8C
  loc_62544E: CVarRef
  loc_625453: FLdRfVar var_130
  loc_625456: ImpAdCallFPR4  = Mid(, , )
  loc_62545B: FLdRfVar var_130
  loc_62545E: ConcatVar var_140
  loc_625462: LitVarStr var_150, "/"
  loc_625467: ConcatVar var_160
  loc_62546B: LitVarI2 var_190, 4
  loc_625470: LitI4 1
  loc_625475: FLdRfVar var_8C
  loc_625478: CVarRef
  loc_62547D: FLdRfVar var_1A0
  loc_625480: ImpAdCallFPR4  = Mid(, , )
  loc_625485: FLdRfVar var_1A0
  loc_625488: ConcatVar var_1B0
  loc_62548C: LitVarStr var_1C0, " "
  loc_625491: ConcatVar var_1D0
  loc_625495: LitVarI2 var_200, 2
  loc_62549A: LitI4 9
  loc_62549F: FLdRfVar var_8C
  loc_6254A2: CVarRef
  loc_6254A7: FLdRfVar var_210
  loc_6254AA: ImpAdCallFPR4  = Mid(, , )
  loc_6254AF: FLdRfVar var_210
  loc_6254B2: ConcatVar var_220
  loc_6254B6: LitVarStr var_230, ":"
  loc_6254BB: ConcatVar var_240
  loc_6254BF: LitVarI2 var_270, 2
  loc_6254C4: LitI4 &HB
  loc_6254C9: FLdRfVar var_8C
  loc_6254CC: CVarRef
  loc_6254D1: FLdRfVar var_280
  loc_6254D4: ImpAdCallFPR4  = Mid(, , )
  loc_6254D9: FLdRfVar var_280
  loc_6254DC: ConcatVar var_290
  loc_6254E0: CStrVarTmp
  loc_6254E1: FStStr var_8C
  loc_6254E4: FFreeVar var_C0 = "": var_D0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_190 = "": var_160 = "": var_1A0 = "": var_1B0 = "": var_200 = "": var_1D0 = "": var_210 = "": var_220 = "": var_270 = "": var_240 = "": var_280 = ""
  loc_62550B: ILdRf var_8C
  loc_62550E: CDateStr
  loc_625510: CVarDate var_A0
  loc_625514: HardType
  loc_625515: FLdRfVar var_C0
  loc_625518: ImpAdCallFPR4  = Now
  loc_62551D: FLdRfVar var_C0
  loc_625520: LtVarBool
  loc_625522: FFree1Var var_C0 = ""
  loc_625525: BranchF loc_625530
  loc_625528: LitI2_Byte &HFF
  loc_62552A: FStI2 var_86
  loc_62552D: Branch loc_625535
  loc_625530: LitI2_Byte 0
  loc_625532: FStI2 var_86
  loc_625535: ExitProcCbHresult
End Function

Private Function Proc_99_25_636AAC() '636AAC
  'Data Table: 4285F4
  loc_63689C: LitVarI4
  loc_6368A4: PopAdLdVar
  loc_6368A5: FLdPrThis
  loc_6368A6: VCallAd Control_ID_TablaProd
  loc_6368A9: FStAdFunc var_98
  loc_6368AC: FLdPr var_98
  loc_6368AF: LateIdSt
  loc_6368B4: FFree1Ad var_98
  loc_6368B7: LitVarI4
  loc_6368BF: PopAdLdVar
  loc_6368C0: LitVarI4
  loc_6368C8: PopAdLdVar
  loc_6368C9: FLdPrThis
  loc_6368CA: VCallAd Control_ID_TablaProd
  loc_6368CD: FStAdFunc var_98
  loc_6368D0: FLdPr var_98
  loc_6368D3: LateIdCallSt
  loc_6368DB: FFree1Ad var_98
  loc_6368DE: LitVarI4
  loc_6368E6: PopAdLdVar
  loc_6368E7: LitVarI4
  loc_6368EF: PopAdLdVar
  loc_6368F0: FLdPrThis
  loc_6368F1: VCallAd Control_ID_TablaProd
  loc_6368F4: FStAdFunc var_98
  loc_6368F7: FLdPr var_98
  loc_6368FA: LateIdCallSt
  loc_636902: FFree1Ad var_98
  loc_636905: LitVarI4
  loc_63690D: PopAdLdVar
  loc_63690E: LitVarI4
  loc_636916: PopAdLdVar
  loc_636917: FLdPrThis
  loc_636918: VCallAd Control_ID_TablaProd
  loc_63691B: FStAdFunc var_98
  loc_63691E: FLdPr var_98
  loc_636921: LateIdCallSt
  loc_636929: FFree1Ad var_98
  loc_63692C: LitVarI4
  loc_636934: PopAdLdVar
  loc_636935: LitVarI4
  loc_63693D: PopAdLdVar
  loc_63693E: FLdPrThis
  loc_63693F: VCallAd Control_ID_TablaProd
  loc_636942: FStAdFunc var_98
  loc_636945: FLdPr var_98
  loc_636948: LateIdCallSt
  loc_636950: FFree1Ad var_98
  loc_636953: LitI2 7575
  loc_636956: CR8I2
  loc_636957: CVarR4
  loc_63695B: PopAdLdVar
  loc_63695C: FLdPrThis
  loc_63695D: VCallAd Control_ID_TablaProd
  loc_636960: FStAdFunc var_98
  loc_636963: FLdPr var_98
  loc_636966: LateIdSt
  loc_63696B: FFree1Ad var_98
  loc_63696E: LitVarI4
  loc_636976: PopAdLdVar
  loc_636977: LitVarI4
  loc_63697F: PopAdLdVar
  loc_636980: LitVarStr var_B8, "Nivel"
  loc_636985: PopAdLdVar
  loc_636986: FLdPrThis
  loc_636987: VCallAd Control_ID_TablaProd
  loc_63698A: FStAdFunc var_98
  loc_63698D: FLdPr var_98
  loc_636990: LateIdCallSt
  loc_636998: FFree1Ad var_98
  loc_63699B: LitVarI4
  loc_6369A3: PopAdLdVar
  loc_6369A4: LitVarI4
  loc_6369AC: PopAdLdVar
  loc_6369AD: LitVarStr var_B8, "               Producto"
  loc_6369B2: PopAdLdVar
  loc_6369B3: FLdPrThis
  loc_6369B4: VCallAd Control_ID_TablaProd
  loc_6369B7: FStAdFunc var_98
  loc_6369BA: FLdPr var_98
  loc_6369BD: LateIdCallSt
  loc_6369C5: FFree1Ad var_98
  loc_6369C8: LitVarI4
  loc_6369D0: PopAdLdVar
  loc_6369D1: LitVarI4
  loc_6369D9: PopAdLdVar
  loc_6369DA: LitVarStr var_B8, "       Precio"
  loc_6369DF: PopAdLdVar
  loc_6369E0: FLdPrThis
  loc_6369E1: VCallAd Control_ID_TablaProd
  loc_6369E4: FStAdFunc var_98
  loc_6369E7: FLdPr var_98
  loc_6369EA: LateIdCallSt
  loc_6369F2: FFree1Ad var_98
  loc_6369F5: LitVarI4
  loc_6369FD: PopAdLdVar
  loc_6369FE: LitVarI4
  loc_636A06: PopAdLdVar
  loc_636A07: LitVarStr var_B8, "Acepta"
  loc_636A0C: PopAdLdVar
  loc_636A0D: FLdPrThis
  loc_636A0E: VCallAd Control_ID_TablaProd
  loc_636A11: FStAdFunc var_98
  loc_636A14: FLdPr var_98
  loc_636A17: LateIdCallSt
  loc_636A1F: FFree1Ad var_98
  loc_636A22: LitVarI4
  loc_636A2A: PopAdLdVar
  loc_636A2B: LitVarI2 var_A8, 4
  loc_636A30: PopAdLdVar
  loc_636A31: FLdPrThis
  loc_636A32: VCallAd Control_ID_TablaProd
  loc_636A35: FStAdFunc var_98
  loc_636A38: FLdPr var_98
  loc_636A3B: LateIdCallSt
  loc_636A43: FFree1Ad var_98
  loc_636A46: LitVarI4
  loc_636A4E: PopAdLdVar
  loc_636A4F: LitVarI2 var_A8, 0
  loc_636A54: PopAdLdVar
  loc_636A55: FLdPrThis
  loc_636A56: VCallAd Control_ID_TablaProd
  loc_636A59: FStAdFunc var_98
  loc_636A5C: FLdPr var_98
  loc_636A5F: LateIdCallSt
  loc_636A67: FFree1Ad var_98
  loc_636A6A: LitVarI4
  loc_636A72: PopAdLdVar
  loc_636A73: LitVarI2 var_A8, 4
  loc_636A78: PopAdLdVar
  loc_636A79: FLdPrThis
  loc_636A7A: VCallAd Control_ID_TablaProd
  loc_636A7D: FStAdFunc var_98
  loc_636A80: FLdPr var_98
  loc_636A83: LateIdCallSt
  loc_636A8B: FFree1Ad var_98
  loc_636A8E: LitVarI4
  loc_636A96: PopAdLdVar
  loc_636A97: FLdPrThis
  loc_636A98: VCallAd Control_ID_TablaProd
  loc_636A9B: FStAdFunc var_98
  loc_636A9E: FLdPr var_98
  loc_636AA1: LateIdSt
  loc_636AA6: FFree1Ad var_98
  loc_636AA9: ExitProcHresult
End Function

Private Function Proc_99_26_68F524() '68F524
  'Data Table: 4285F4
  loc_68EFD4: OnErrorGoto loc_68F4A2
  loc_68EFD7: FLdRfVar var_D2
  loc_68EFDA: FLdRfVar var_CC
  loc_68EFDD: FLdRfVar var_D0
  loc_68EFE0: ImpAdLdRf MemVar_74C760
  loc_68EFE3: NewIfNullPr Formx
  loc_68EFE6: from_stack_1v = Formx.global_4589716Get()
  loc_68EFEB: FLdPr var_D0
  loc_68EFEE:  = Formx.FontUnderline
  loc_68EFF3: FLdI2 var_D2
  loc_68EFF6: NotI4
  loc_68EFF7: FFree1Ad var_D0
  loc_68EFFA: BranchF loc_68F019
  loc_68EFFD: FLdRfVar var_E4
  loc_68F000: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68F005: FLdRfVar var_E4
  loc_68F008: CBoolVarNull
  loc_68F00A: FFree1Var var_E4 = ""
  loc_68F00D: BranchF loc_68F016
  loc_68F010: Call CleanChildForm()
  loc_68F015: ExitProcHresult
  loc_68F016: Branch loc_68EFD7
  loc_68F019: LitVarI2 var_98, 1
  loc_68F01E: FStVar var_F4
  loc_68F022: LitVarI2 var_114, 1
  loc_68F027: FLdRfVar var_104
  loc_68F02A: LitVarStr var_A8, "5"
  loc_68F02F: ForVar var_134
  loc_68F035: LitVarI2 var_114, 1
  loc_68F03A: FLdRfVar var_144
  loc_68F03D: LitVarStr var_A8, "10"
  loc_68F042: ForVar var_164
  loc_68F048: LitVarI2 var_E4, 6
  loc_68F04D: FLdRfVar var_F4
  loc_68F050: CI4Var
  loc_68F052: FLdRfVar var_CC
  loc_68F055: CVarRef
  loc_68F05A: FLdRfVar var_174
  loc_68F05D: ImpAdCallFPR4  = Mid(, , )
  loc_68F062: FLdRfVar var_174
  loc_68F065: CStrVarVal var_178
  loc_68F069: ImpAdCallFPR4 push Val()
  loc_68F06E: ImpAdLdFPR4 MemVar_74C2DC
  loc_68F071: DivR8
  loc_68F072: FLdRfVar var_104
  loc_68F075: CI4Var
  loc_68F077: FLdRfVar var_144
  loc_68F07A: CI4Var
  loc_68F07C: FLdRfVar var_C8
  loc_68F07F: AryLdPr
  loc_68F082: MemStFPR8 global_0
  loc_68F085: FFree1Str var_178
  loc_68F088: FFreeVar var_E4 = ""
  loc_68F08F: FLdRfVar var_F4
  loc_68F092: LitVarI2 var_98, 6
  loc_68F097: AddVar var_E4
  loc_68F09B: FStVar var_F4
  loc_68F09F: FLdRfVar var_144
  loc_68F0A2: NextStepVar var_164
  loc_68F0A8: FLdRfVar var_104
  loc_68F0AB: NextStepVar var_134
  loc_68F0B1: LitI2_Byte 1
  loc_68F0B3: FStI2 var_88
  loc_68F0B6: LitI2_Byte &HF
  loc_68F0B8: FStI2 var_86
  loc_68F0BB: ImpAdCallFPR4 Proc_101_14_6180C4()
  loc_68F0C0: ImpAdCallI2 Proc_101_15_5D3FAC()
  loc_68F0C5: CVarStr var_E4
  loc_68F0C8: FLdRfVar var_174
  loc_68F0CB: ImpAdCallFPR4  = Trim()
  loc_68F0D0: FLdRfVar var_174
  loc_68F0D3: FStVar var_188
  loc_68F0D7: FFree1Var var_E4 = ""
  loc_68F0DA: LitVarI2 var_114, 1
  loc_68F0DF: FLdRfVar var_198
  loc_68F0E2: LitVarStr var_A8, "5"
  loc_68F0E7: ForVar var_1B8
  loc_68F0ED: LitI2_Byte 1
  loc_68F0EF: FLdRfVar var_86
  loc_68F0F2: FLdRfVar var_D2
  loc_68F0F5: FLdPr Me
  loc_68F0F8: MemLdRfVar from_stack_1.global_100
  loc_68F0FB: NewIfNullPr CPrice
  loc_68F0FE:  = CPrice.ForeColor
  loc_68F103: FLdI2 var_D2
  loc_68F106: ForI2 var_1BC
  loc_68F10C: FLdRfVar var_1C4
  loc_68F10F: FLdI2 var_86
  loc_68F112: FLdRfVar var_198
  loc_68F115: CI2Var
  loc_68F116: FLdPr Me
  loc_68F119: MemLdRfVar from_stack_1.global_100
  loc_68F11C: NewIfNullPr CPrice
  loc_68F124: FLdFPR8 var_1C4
  loc_68F127: LitI2_Byte 0
  loc_68F129: CR8I2
  loc_68F12A: NeR8
  loc_68F12B: BranchF loc_68F1F9
  loc_68F12E: FLdRfVar var_1C4
  loc_68F131: FLdI2 var_86
  loc_68F134: FLdRfVar var_198
  loc_68F137: CI2Var
  loc_68F138: FLdPr Me
  loc_68F13B: MemLdRfVar from_stack_1.global_100
  loc_68F13E: NewIfNullPr CPrice
  loc_68F146: FLdI2 var_88
  loc_68F149: CI4UI1
  loc_68F14A: CVarI4
  loc_68F14E: PopAdLdVar
  loc_68F14F: LitVarI4
  loc_68F157: PopAdLdVar
  loc_68F158: LitI4 1
  loc_68F15D: LitI4 1
  loc_68F162: ImpAdLdRf MemVar_74C350
  loc_68F165: CVarRef
  loc_68F16A: FLdFPR8 var_1C4
  loc_68F16D: CVarR8
  loc_68F171: FLdRfVar var_174
  loc_68F174: ImpAdCallFPR4  = Format(, )
  loc_68F179: FLdRfVar var_174
  loc_68F17C: CStrVarTmp
  loc_68F17D: CVarStr var_1E4
  loc_68F180: PopAdLdVar
  loc_68F181: FLdPrThis
  loc_68F182: VCallAd Control_ID_TablaProd
  loc_68F185: FStAdFunc var_D0
  loc_68F188: FLdPr var_D0
  loc_68F18B: LateIdCallSt
  loc_68F193: FFree1Ad var_D0
  loc_68F196: FFreeVar var_E4 = "": var_174 = ""
  loc_68F19F: FLdRfVar var_D2
  loc_68F1A2: FLdI2 var_86
  loc_68F1A5: FLdRfVar var_198
  loc_68F1A8: CI2Var
  loc_68F1A9: FLdPr Me
  loc_68F1AC: MemLdRfVar from_stack_1.global_100
  loc_68F1AF: NewIfNullPr CPrice
  loc_68F1B2: CPrice.Caption = from_stack_1
  loc_68F1B7: FLdI2 var_88
  loc_68F1BA: CI4UI1
  loc_68F1BB: CVarI4
  loc_68F1BF: PopAdLdVar
  loc_68F1C0: LitVarI4
  loc_68F1C8: PopAdLdVar
  loc_68F1C9: FLdRfVar var_178
  loc_68F1CC: FLdI2 var_D2
  loc_68F1CF: PopTmpLdAd2 var_1E6
  loc_68F1D2: from_stack_2v = Proc_99_28_5D4788(from_stack_1v)
  loc_68F1D7: FLdZeroAd var_178
  loc_68F1DA: CVarStr var_E4
  loc_68F1DD: PopAdLdVar
  loc_68F1DE: FLdPrThis
  loc_68F1DF: VCallAd Control_ID_TablaProd
  loc_68F1E2: FStAdFunc var_D0
  loc_68F1E5: FLdPr var_D0
  loc_68F1E8: LateIdCallSt
  loc_68F1F0: FFree1Ad var_D0
  loc_68F1F3: FFree1Var var_E4 = ""
  loc_68F1F6: Branch loc_68F29B
  loc_68F1F9: FLdI2 var_88
  loc_68F1FC: CI4UI1
  loc_68F1FD: CVarI4
  loc_68F201: PopAdLdVar
  loc_68F202: LitVarI4
  loc_68F20A: PopAdLdVar
  loc_68F20B: LitI4 1
  loc_68F210: LitI4 1
  loc_68F215: ImpAdLdRf MemVar_74C350
  loc_68F218: CVarRef
  loc_68F21D: FLdRfVar var_198
  loc_68F220: CI4Var
  loc_68F222: FLdI2 var_86
  loc_68F225: CI4UI1
  loc_68F226: FLdRfVar var_C8
  loc_68F229: AryLdRf
  loc_68F22C: CVarRef
  loc_68F231: FLdRfVar var_E4
  loc_68F234: ImpAdCallFPR4  = Format(, )
  loc_68F239: FLdRfVar var_E4
  loc_68F23C: CStrVarTmp
  loc_68F23D: CVarStr var_174
  loc_68F240: PopAdLdVar
  loc_68F241: FLdPrThis
  loc_68F242: VCallAd Control_ID_TablaProd
  loc_68F245: FStAdFunc var_D0
  loc_68F248: FLdPr var_D0
  loc_68F24B: LateIdCallSt
  loc_68F253: FFree1Ad var_D0
  loc_68F256: FFreeVar var_E4 = ""
  loc_68F25D: FLdI2 var_88
  loc_68F260: CI4UI1
  loc_68F261: CVarI4
  loc_68F265: PopAdLdVar
  loc_68F266: LitVarI4
  loc_68F26E: PopAdLdVar
  loc_68F26F: FLdRfVar var_178
  loc_68F272: LitI2_Byte 0
  loc_68F274: PopTmpLdAd2 var_D2
  loc_68F277: from_stack_2v = Proc_99_28_5D4788(from_stack_1v)
  loc_68F27C: FLdZeroAd var_178
  loc_68F27F: CVarStr var_E4
  loc_68F282: PopAdLdVar
  loc_68F283: FLdPrThis
  loc_68F284: VCallAd Control_ID_TablaProd
  loc_68F287: FStAdFunc var_D0
  loc_68F28A: FLdPr var_D0
  loc_68F28D: LateIdCallSt
  loc_68F295: FFree1Ad var_D0
  loc_68F298: FFree1Var var_E4 = ""
  loc_68F29B: FLdI2 var_88
  loc_68F29E: CI4UI1
  loc_68F29F: CVarI4
  loc_68F2A3: PopAdLdVar
  loc_68F2A4: LitVarI4
  loc_68F2AC: PopAdLdVar
  loc_68F2AD: FLdRfVar var_198
  loc_68F2B0: CStrVar
  loc_68F2B2: CVarStr var_E4
  loc_68F2B5: PopAdLdVar
  loc_68F2B6: FLdPrThis
  loc_68F2B7: VCallAd Control_ID_TablaProd
  loc_68F2BA: FStAdFunc var_D0
  loc_68F2BD: FLdPr var_D0
  loc_68F2C0: LateIdCallSt
  loc_68F2C8: FFree1Ad var_D0
  loc_68F2CB: FFree1Var var_E4 = ""
  loc_68F2CE: FLdI2 var_88
  loc_68F2D1: CI4UI1
  loc_68F2D2: CVarI4
  loc_68F2D6: PopAdLdVar
  loc_68F2D7: LitVarI4
  loc_68F2DF: PopAdLdVar
  loc_68F2E0: FLdRfVar var_178
  loc_68F2E3: FLdI2 var_86
  loc_68F2E6: ImpAdLdRf MemVar_74A220
  loc_68F2E9: NewIfNullPr clsProducts
  loc_68F2F1: FLdZeroAd var_178
  loc_68F2F4: CVarStr var_E4
  loc_68F2F7: PopAdLdVar
  loc_68F2F8: FLdPrThis
  loc_68F2F9: VCallAd Control_ID_TablaProd
  loc_68F2FC: FStAdFunc var_D0
  loc_68F2FF: FLdPr var_D0
  loc_68F302: LateIdCallSt
  loc_68F30A: FFree1Ad var_D0
  loc_68F30D: FFree1Var var_E4 = ""
  loc_68F310: FLdI2 var_88
  loc_68F313: LitI2_Byte 1
  loc_68F315: AddI2
  loc_68F316: FStI2 var_88
  loc_68F319: FLdI2 var_88
  loc_68F31C: LitI2_Byte 1
  loc_68F31E: AddI2
  loc_68F31F: CI4UI1
  loc_68F320: CVarI4
  loc_68F324: PopAdLdVar
  loc_68F325: FLdPrThis
  loc_68F326: VCallAd Control_ID_TablaProd
  loc_68F329: FStAdFunc var_D0
  loc_68F32C: FLdPr var_D0
  loc_68F32F: LateIdSt
  loc_68F334: FFree1Ad var_D0
  loc_68F337: FLdRfVar var_86
  loc_68F33A: NextI2 var_1BC, loc_68F10C
  loc_68F33F: FLdRfVar var_198
  loc_68F342: NextStepVar var_1B8
  loc_68F348: LitVarI2 var_98, 12
  loc_68F34D: PopAdLdVar
  loc_68F34E: FLdPrThis
  loc_68F34F: VCallAd Control_ID_TablaProd
  loc_68F352: FStAdFunc var_D0
  loc_68F355: FLdPr var_D0
  loc_68F358: LateIdLdVar var_E4 DispID_-512 -1
  loc_68F35F: CastAdVar Me
  loc_68F363: FStAdFunc var_1EC
  loc_68F366: FLdPr var_1EC
  loc_68F369: LateIdSt
  loc_68F36E: FFreeAd var_D0 = ""
  loc_68F375: FFree1Var var_E4 = ""
  loc_68F378: LitI2_Byte 0
  loc_68F37A: FLdPr Me
  loc_68F37D: MemStI2 global_96
  loc_68F380: FLdPrThis
  loc_68F381: VCallAd Control_ID_TablaProd
  loc_68F384: FStAdFunc var_D0
  loc_68F387: FLdPr var_D0
  loc_68F38A: LateIdLdVar var_E4 DispID_4 0
  loc_68F391: CI4Var
  loc_68F393: LitI4 1
  loc_68F398: SubI4
  loc_68F399: CVarI4
  loc_68F39D: PopAdLdVar
  loc_68F39E: FLdPrThis
  loc_68F39F: VCallAd Control_ID_TablaProd
  loc_68F3A2: FStAdFunc var_1EC
  loc_68F3A5: FLdPr var_1EC
  loc_68F3A8: LateIdSt
  loc_68F3AD: FFreeAd var_D0 = ""
  loc_68F3B4: FFree1Var var_E4 = ""
  loc_68F3B7: LitI2_Byte 1
  loc_68F3B9: FLdRfVar var_86
  loc_68F3BC: FLdPrThis
  loc_68F3BD: VCallAd Control_ID_TablaProd
  loc_68F3C0: FStAdFunc var_D0
  loc_68F3C3: FLdPr var_D0
  loc_68F3C6: LateIdLdVar var_E4 DispID_4 0
  loc_68F3CD: CI4Var
  loc_68F3CF: LitI4 1
  loc_68F3D4: SubI4
  loc_68F3D5: CI2I4
  loc_68F3D6: FFree1Ad var_D0
  loc_68F3D9: FFree1Var var_E4 = ""
  loc_68F3DC: ForI2 var_1F0
  loc_68F3E2: LitI2_Byte 0
  loc_68F3E4: FLdPr Me
  loc_68F3E7: MemStI2 global_84
  loc_68F3EA: LitI2_Byte &HFF
  loc_68F3EC: FLdPr Me
  loc_68F3EF: MemStI2 global_82
  loc_68F3F2: FLdI2 var_86
  loc_68F3F5: CI4UI1
  loc_68F3F6: CVarI4
  loc_68F3FA: PopAdLdVar
  loc_68F3FB: FLdPrThis
  loc_68F3FC: VCallAd Control_ID_TablaProd
  loc_68F3FF: FStAdFunc var_D0
  loc_68F402: FLdPr var_D0
  loc_68F405: LateIdSt
  loc_68F40A: FFree1Ad var_D0
  loc_68F40D: LitI2_Byte 0
  loc_68F40F: FLdPr Me
  loc_68F412: MemStI2 global_84
  loc_68F415: LitI2_Byte &HFF
  loc_68F417: FLdPr Me
  loc_68F41A: MemStI2 global_82
  loc_68F41D: LitVarI4
  loc_68F425: PopAdLdVar
  loc_68F426: FLdPrThis
  loc_68F427: VCallAd Control_ID_TablaProd
  loc_68F42A: FStAdFunc var_D0
  loc_68F42D: FLdPr var_D0
  loc_68F430: LateIdSt
  loc_68F435: FFree1Ad var_D0
  loc_68F438: LitVarI4
  loc_68F440: PopAdLdVar
  loc_68F441: FLdPrThis
  loc_68F442: VCallAd Control_ID_TablaProd
  loc_68F445: FStAdFunc var_D0
  loc_68F448: FLdPr var_D0
  loc_68F44B: LateIdSt
  loc_68F450: FFree1Ad var_D0
  loc_68F453: LitI2_Byte 0
  loc_68F455: FLdPr Me
  loc_68F458: MemStI2 global_84
  loc_68F45B: LitI2_Byte &HFF
  loc_68F45D: FLdPr Me
  loc_68F460: MemStI2 global_82
  loc_68F463: LitVarI4
  loc_68F46B: PopAdLdVar
  loc_68F46C: FLdPrThis
  loc_68F46D: VCallAd Control_ID_TablaProd
  loc_68F470: FStAdFunc var_D0
  loc_68F473: FLdPr var_D0
  loc_68F476: LateIdSt
  loc_68F47B: FFree1Ad var_D0
  loc_68F47E: LitVarI4
  loc_68F486: PopAdLdVar
  loc_68F487: FLdPrThis
  loc_68F488: VCallAd Control_ID_TablaProd
  loc_68F48B: FStAdFunc var_D0
  loc_68F48E: FLdPr var_D0
  loc_68F491: LateIdSt
  loc_68F496: FFree1Ad var_D0
  loc_68F499: FLdRfVar var_86
  loc_68F49C: NextI2 var_1F0, loc_68F3E2
  loc_68F4A1: ExitProcHresult
  loc_68F4A2: LitI4 &HD
  loc_68F4A7: FLdRfVar var_E4
  loc_68F4AA: ImpAdCallFPR4  = Chr()
  loc_68F4AF: FLdRfVar var_1F4
  loc_68F4B2: ImpAdCallI2 Err 'rtcErrObj
  loc_68F4B7: FStAdFunc var_D0
  loc_68F4BA: FLdPr var_D0
  loc_68F4BD:  = Err.Number
  loc_68F4C2: FLdRfVar var_178
  loc_68F4C5: ImpAdCallI2 Err 'rtcErrObj
  loc_68F4CA: FStAdFunc var_1EC
  loc_68F4CD: FLdPr var_1EC
  loc_68F4D0:  = Err.Description
  loc_68F4D5: LitVar_Missing var_254
  loc_68F4D8: LitVar_Missing var_234
  loc_68F4DB: LitVar_Missing var_224
  loc_68F4DE: LitI4 &H10
  loc_68F4E3: LitVarStr var_98, "Error en Cargar Tabla  "
  loc_68F4E8: FLdRfVar var_E4
  loc_68F4EB: ConcatVar var_174
  loc_68F4EF: ILdRf var_1F4
  loc_68F4F2: CVarI4
  loc_68F4F6: ConcatVar var_1E4
  loc_68F4FA: FLdZeroAd var_178
  loc_68F4FD: CVarStr var_204
  loc_68F500: ConcatVar var_214
  loc_68F504: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68F509: FFreeAd var_D0 = ""
  loc_68F510: FFreeVar var_E4 = "": var_174 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = ""
  loc_68F523: ExitProcHresult
End Function

Private Function Proc_99_27_5D3834(arg_C) '5D3834
  'Data Table: 4285F4
  loc_5D3814: ILdI4 arg_C
  loc_5D3817: LitStr "SI"
  loc_5D381A: EqStr
  loc_5D381C: BranchF loc_5D3827
  loc_5D381F: LitI2_Byte &HFF
  loc_5D3821: FStI2 var_86
  loc_5D3824: Branch loc_5D382C
  loc_5D3827: LitI2_Byte 0
  loc_5D3829: FStI2 var_86
  loc_5D382C: ExitProcCbHresult
End Function

Private Function Proc_99_28_5D4788(arg_C) '5D4788
  'Data Table: 4285F4
  loc_5D4768: ZeroRetVal
  loc_5D476A: ILdI2 arg_C
  loc_5D476D: BranchF loc_5D4779
  loc_5D4770: LitStr "SI"
  loc_5D4773: FStStrCopy var_88
  loc_5D4776: Branch loc_5D477F
  loc_5D4779: LitStr "NO"
  loc_5D477C: FStStrCopy var_88
  loc_5D477F: ExitProcCbHresult
End Function
