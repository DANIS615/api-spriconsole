VERSION 5.00
Begin VB.Form frmShowMonthCloseRed21
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 150
  ClientTop = 360
  ClientWidth = 11910
  ClientHeight = 8715
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.TextBox txtListado
    Left = 210
    Top = 1230
    Width = 11385
    Height = 6285
    TabIndex = 5
    MultiLine = -1  'True
    ScrollBars = 2
    Locked = -1  'True
  End
  Begin VB.PictureBox Picture2
    Left = 9480
    Top = 240
    Width = 2205
    Height = 540
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
  End
  Begin VB.PictureBox Picture1
    Left = 240
    Top = 120
    Width = 1575
    Height = 810
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 6240
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 2
    Default = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 9000
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 0
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblTitle
    Caption = "Red XXI - Consolidación Mes Octubre"
    Left = 2160
    Top = 60
    Width = 7335
    Height = 885
    TabIndex = 1
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmShowMonthCloseRed21"

Public TipoReporte As String
Public Desdehasta As String
Public sMes As String
Public sAnio As String
Public sData As String


Private Sub cmdImprimir_Click() '6741E4
  'Data Table: 418000
  loc_673DEC: FLdRfVar var_8C
  loc_673DEF: ImpAdLdRf MemVar_7520D4
  loc_673DF2: NewIfNullPr Global
  loc_673DF5:  = Global.Printer
  loc_673DFA: FLdZeroAd var_8C
  loc_673DFD: FStAdFunc var_88
  loc_673E02: OnErrorGoto loc_6740C6
  loc_673E07: LitVarStr var_9C, "Courier New"
  loc_673E0C: PopAdLdVar
  loc_673E0D: FLdPr var_88
  loc_673E10: LateIdSt
  loc_673E17: LitI2_Byte &HB
  loc_673E19: CR8I2
  loc_673E1A: CVarR4
  loc_673E1E: PopAdLdVar
  loc_673E1F: FLdPr var_88
  loc_673E22: LateIdSt
  loc_673E29: LitI4 6
  loc_673E2E: CI2I4
  loc_673E2F: CVarI2 var_9C
  loc_673E32: PopAdLdVar
  loc_673E33: FLdPr var_88
  loc_673E36: LateIdSt
  loc_673E3D: LitI4 0
  loc_673E42: FLdRfVar var_A0
  loc_673E45: FLdRfVar var_8C
  loc_673E48: ImpAdLdRf MemVar_7520D4
  loc_673E4B: NewIfNullPr Global
  loc_673E4E:  = Global.App
  loc_673E53: FLdPr var_8C
  loc_673E56:  = App.Path
  loc_673E5B: ILdRf var_A0
  loc_673E5E: LitStr "\Logo_Compania.bmp"
  loc_673E61: ConcatStr
  loc_673E62: CVarStr var_B0
  loc_673E65: ImpAdCallI2 push Dir(, )
  loc_673E6A: FStStrNoPop var_B4
  loc_673E6D: LitStr vbNullString
  loc_673E70: NeStr
  loc_673E72: FFreeStr var_A0 = ""
  loc_673E79: FFree1Ad var_8C
  loc_673E7C: FFree1Var var_B0 = ""
  loc_673E7F: BranchF loc_673F00
  loc_673E84: FLdRfVar var_A0
  loc_673E87: FLdRfVar var_8C
  loc_673E8A: ImpAdLdRf MemVar_7520D4
  loc_673E8D: NewIfNullPr Global
  loc_673E90:  = Global.App
  loc_673E95: FLdPr var_8C
  loc_673E98:  = App.Path
  loc_673E9D: FLdRfVar var_B8
  loc_673EA0: ILdRf var_A0
  loc_673EA3: LitStr "\Logo_Compania.bmp"
  loc_673EA6: ConcatStr
  loc_673EA7: CVarStr var_B0
  loc_673EAA: PopAdLdVar
  loc_673EAB: ImpAdLdRf MemVar_7520D4
  loc_673EAE: NewIfNullPr Global
  loc_673EB1: Global.LoadPictureOld from_stack_1
  loc_673EB6: FLdZeroAd var_B8
  loc_673EB9: CVarAd
  loc_673EBD: PopAdLdVar
  loc_673EBE: LitI2_Byte 1
  loc_673EC0: CR8I2
  loc_673EC1: CVarR4
  loc_673EC5: PopAdLdVar
  loc_673EC6: LitI2_Byte &HA
  loc_673EC8: CR8I2
  loc_673EC9: CVarR4
  loc_673ECD: PopAdLdVar
  loc_673ECE: LitVarR8
  loc_673EDA: PopAdLdVar
  loc_673EDB: LitVarR8
  loc_673EE7: PopAdLdVar
  loc_673EE8: FLdPr var_88
  loc_673EEB: LateIdCall
  loc_673EF3: FFree1Str var_A0
  loc_673EF6: FFree1Ad var_8C
  loc_673EF9: FFreeVar var_B0 = ""
  loc_673F04: LitI4 0
  loc_673F09: FLdRfVar var_A0
  loc_673F0C: FLdRfVar var_8C
  loc_673F0F: ImpAdLdRf MemVar_7520D4
  loc_673F12: NewIfNullPr Global
  loc_673F15:  = Global.App
  loc_673F1A: FLdPr var_8C
  loc_673F1D:  = App.Path
  loc_673F22: ILdRf var_A0
  loc_673F25: LitStr "\Logo_Proyecto.bmp"
  loc_673F28: ConcatStr
  loc_673F29: CVarStr var_B0
  loc_673F2C: ImpAdCallI2 push Dir(, )
  loc_673F31: FStStrNoPop var_B4
  loc_673F34: LitStr vbNullString
  loc_673F37: NeStr
  loc_673F39: FFreeStr var_A0 = ""
  loc_673F40: FFree1Ad var_8C
  loc_673F43: FFree1Var var_B0 = ""
  loc_673F46: BranchF loc_673FC8
  loc_673F4B: FLdRfVar var_A0
  loc_673F4E: FLdRfVar var_8C
  loc_673F51: ImpAdLdRf MemVar_7520D4
  loc_673F54: NewIfNullPr Global
  loc_673F57:  = Global.App
  loc_673F5C: FLdPr var_8C
  loc_673F5F:  = App.Path
  loc_673F64: FLdRfVar var_B8
  loc_673F67: ILdRf var_A0
  loc_673F6A: LitStr "\Logo_Proyecto.bmp"
  loc_673F6D: ConcatStr
  loc_673F6E: CVarStr var_B0
  loc_673F71: PopAdLdVar
  loc_673F72: ImpAdLdRf MemVar_7520D4
  loc_673F75: NewIfNullPr Global
  loc_673F78: Global.LoadPictureOld from_stack_1
  loc_673F7D: FLdZeroAd var_B8
  loc_673F80: CVarAd
  loc_673F84: PopAdLdVar
  loc_673F85: LitI2 150
  loc_673F88: CR8I2
  loc_673F89: CVarR4
  loc_673F8D: PopAdLdVar
  loc_673F8E: LitI2_Byte &HA
  loc_673F90: CR8I2
  loc_673F91: CVarR4
  loc_673F95: PopAdLdVar
  loc_673F96: LitVarR8
  loc_673FA2: PopAdLdVar
  loc_673FA3: LitVarR8
  loc_673FAF: PopAdLdVar
  loc_673FB0: FLdPr var_88
  loc_673FB3: LateIdCall
  loc_673FBB: FFree1Str var_A0
  loc_673FBE: FFree1Ad var_8C
  loc_673FC1: FFreeVar var_B0 = ""
  loc_673FCC: LitI4 &HD
  loc_673FD1: ImpAdCallI2 Chr$()
  loc_673FD6: FStStr var_120
  loc_673FD9: LitI4 &HA
  loc_673FDE: ImpAdCallI2 Chr$()
  loc_673FE3: FStStr var_124
  loc_673FE6: LitI4 &HD
  loc_673FEB: ImpAdCallI2 Chr$()
  loc_673FF0: FStStr var_128
  loc_673FF3: LitI4 &HA
  loc_673FF8: ImpAdCallI2 Chr$()
  loc_673FFD: FStStr var_12C
  loc_674000: LitI4 &HD
  loc_674005: ImpAdCallI2 Chr$()
  loc_67400A: FStStr var_130
  loc_67400D: LitI4 &HA
  loc_674012: ImpAdCallI2 Chr$()
  loc_674017: FStStr var_134
  loc_67401A: FLdZeroAd var_120
  loc_67401D: FStStrNoPop var_A0
  loc_674020: FLdZeroAd var_124
  loc_674023: FStStrNoPop var_B4
  loc_674026: ConcatStr
  loc_674027: FStStrNoPop var_FC
  loc_67402A: FLdZeroAd var_128
  loc_67402D: FStStrNoPop var_100
  loc_674030: ConcatStr
  loc_674031: FStStrNoPop var_104
  loc_674034: FLdZeroAd var_12C
  loc_674037: FStStrNoPop var_108
  loc_67403A: ConcatStr
  loc_67403B: FStStrNoPop var_10C
  loc_67403E: FLdZeroAd var_130
  loc_674041: FStStrNoPop var_110
  loc_674044: ConcatStr
  loc_674045: FStStrNoPop var_114
  loc_674048: FLdZeroAd var_134
  loc_67404B: FStStrNoPop var_118
  loc_67404E: ConcatStr
  loc_67404F: FStStrNoPop var_11C
  loc_674052: ILdRf var_88
  loc_674055: PrintObject
  loc_67405B: FFreeStr var_A0 = "": var_B4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_674082: FLdPrThis
  loc_674083: VCallAd Control_ID_txtListado
  loc_674086: FStAdFunc var_B8
  loc_674089: FLdZeroAd var_B8
  loc_67408C: FStAdFuncNoPop
  loc_67408F: ILdRf var_88
  loc_674092: PrintObject
  loc_674098: FFreeAd var_8C = ""
  loc_6740A1: FLdPr var_88
  loc_6740A4: LateIdCall
  loc_6740AE: ILdRf Me
  loc_6740B1: FStAdNoPop
  loc_6740B5: ImpAdLdRf MemVar_7520D4
  loc_6740B8: NewIfNullPr Global
  loc_6740BB: Global.Unload from_stack_1
  loc_6740C0: FFree1Ad var_8C
  loc_6740C5: ExitProcHresult
  loc_6740C8: LitI4 &HD
  loc_6740CD: ImpAdCallI2 Chr$()
  loc_6740D2: FStStr var_120
  loc_6740D5: LitI4 &HD
  loc_6740DA: ImpAdCallI2 Chr$()
  loc_6740DF: FStStr var_124
  loc_6740E2: FLdRfVar var_138
  loc_6740E5: ImpAdCallI2 Err 'rtcErrObj
  loc_6740EA: FStAdFunc var_8C
  loc_6740ED: FLdPr var_8C
  loc_6740F0:  = Err.Number
  loc_6740F5: LitI4 &HD
  loc_6740FA: ImpAdCallI2 Chr$()
  loc_6740FF: FStStr var_128
  loc_674102: FLdRfVar var_118
  loc_674105: ImpAdCallI2 Err 'rtcErrObj
  loc_67410A: FStAdFunc var_B8
  loc_67410D: FLdPr var_B8
  loc_674110:  = Err.Description
  loc_674115: LitVar_Missing var_158
  loc_674118: LitVar_Missing var_148
  loc_67411B: LitVarStr var_9C, "Error en la impresora"
  loc_674120: FStVarCopyObj var_C8
  loc_674123: FLdRfVar var_C8
  loc_674126: LitI4 &H45
  loc_67412B: LitStr "Error en impresora. Verifique por favor que haya papel en la impresora y este en READY."
  loc_67412E: FLdZeroAd var_120
  loc_674131: FStStrNoPop var_A0
  loc_674134: ConcatStr
  loc_674135: FStStrNoPop var_B4
  loc_674138: FLdZeroAd var_124
  loc_67413B: FStStrNoPop var_FC
  loc_67413E: ConcatStr
  loc_67413F: FStStrNoPop var_100
  loc_674142: LitStr "Error Número: "
  loc_674145: ConcatStr
  loc_674146: FStStrNoPop var_104
  loc_674149: ILdRf var_138
  loc_67414C: CStrI4
  loc_67414E: FStStrNoPop var_108
  loc_674151: ConcatStr
  loc_674152: FStStrNoPop var_10C
  loc_674155: FLdZeroAd var_128
  loc_674158: FStStrNoPop var_110
  loc_67415B: ConcatStr
  loc_67415C: FStStrNoPop var_114
  loc_67415F: LitStr "Descipción: "
  loc_674162: ConcatStr
  loc_674163: FStStrNoPop var_11C
  loc_674166: ILdRf var_118
  loc_674169: ConcatStr
  loc_67416A: CVarStr var_B0
  loc_67416D: ImpAdCallI2 MsgBox(, , , , )
  loc_674172: LitI4 4
  loc_674177: EqI4
  loc_674178: FFreeStr var_A0 = "": var_B4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = ""
  loc_674197: FFreeAd var_8C = ""
  loc_67419E: FFreeVar var_B0 = "": var_C8 = "": var_148 = ""
  loc_6741A9: BranchF loc_6741B5
  loc_6741AE: Resume
  loc_6741B2: Branch loc_6741DE
  loc_6741B9: On Error Resume Next
  loc_6741BE: FLdPr var_88
  loc_6741C1: LateIdCall
  loc_6741CB: FLdPr var_88
  loc_6741CE: LateIdCall
  loc_6741D8: On Error GoTo 0
  loc_6741DD: ExitProcHresult
  loc_6741E2: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D1930
  'Data Table: 418000
  loc_5D1918: ILdRf Me
  loc_5D191B: FStAdNoPop
  loc_5D191F: ImpAdLdRf MemVar_7520D4
  loc_5D1922: NewIfNullPr Global
  loc_5D1925: Global.Unload from_stack_1
  loc_5D192A: FFree1Ad var_88
  loc_5D192D: ExitProcHresult
End Sub

Private Sub Form_Load() '622974
  'Data Table: 418000
  loc_622820: FLdPrThis
  loc_622821: VCallAd Control_ID_Picture1
  loc_622824: FStAdFunc var_98
  loc_622827: FLdRfVar var_8C
  loc_62282A: FLdRfVar var_88
  loc_62282D: ImpAdLdRf MemVar_7520D4
  loc_622830: NewIfNullPr Global
  loc_622833:  = Global.App
  loc_622838: FLdPr var_88
  loc_62283B:  = App.Path
  loc_622840: ILdRf var_8C
  loc_622843: LitStr "\Logo_Compania.bmp"
  loc_622846: ConcatStr
  loc_622847: FStStrNoPop var_94
  loc_62284A: FLdZeroAd var_98
  loc_62284D: FStAdFunc var_90
  loc_622850: FLdRfVar var_90
  loc_622853: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_622858: FFreeStr var_8C = ""
  loc_62285F: FFreeAd var_88 = "": var_90 = ""
  loc_622868: FLdPrThis
  loc_622869: VCallAd Control_ID_Picture2
  loc_62286C: FStAdFunc var_98
  loc_62286F: FLdRfVar var_8C
  loc_622872: FLdRfVar var_88
  loc_622875: ImpAdLdRf MemVar_7520D4
  loc_622878: NewIfNullPr Global
  loc_62287B:  = Global.App
  loc_622880: FLdPr var_88
  loc_622883:  = App.Path
  loc_622888: ILdRf var_8C
  loc_62288B: LitStr "\Logo_Proyecto.bmp"
  loc_62288E: ConcatStr
  loc_62288F: FStStrNoPop var_94
  loc_622892: FLdZeroAd var_98
  loc_622895: FStAdFunc var_90
  loc_622898: FLdRfVar var_90
  loc_62289B: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6228A0: FFreeStr var_8C = ""
  loc_6228A7: FFreeAd var_88 = "": var_90 = ""
  loc_6228B0: LitI2_Byte 0
  loc_6228B2: CR8I2
  loc_6228B3: PopFPR4
  loc_6228B4: FLdPr Me
  loc_6228B7: Me.Left = from_stack_1s
  loc_6228BC: LitI2_Byte 0
  loc_6228BE: CR8I2
  loc_6228BF: PopFPR4
  loc_6228C0: FLdPr Me
  loc_6228C3: Me.Top = from_stack_1s
  loc_6228C8: FLdRfVar var_9C
  loc_6228CB: FLdRfVar var_88
  loc_6228CE: ImpAdLdRf MemVar_7520D4
  loc_6228D1: NewIfNullPr Global
  loc_6228D4:  = Global.Screen
  loc_6228D9: FLdPr var_88
  loc_6228DC:  = Screen.TwipsPerPixelX
  loc_6228E1: FLdFPR4 var_9C
  loc_6228E4: LitI2 800
  loc_6228E7: CR8I2
  loc_6228E8: MulR8
  loc_6228E9: PopFPR4
  loc_6228EA: FLdPr Me
  loc_6228ED: Me.Width = from_stack_1s
  loc_6228F2: FFree1Ad var_88
  loc_6228F5: FLdRfVar var_9C
  loc_6228F8: FLdRfVar var_88
  loc_6228FB: ImpAdLdRf MemVar_7520D4
  loc_6228FE: NewIfNullPr Global
  loc_622901:  = Global.Screen
  loc_622906: FLdPr var_88
  loc_622909:  = Screen.TwipsPerPixelY
  loc_62290E: FLdFPR4 var_9C
  loc_622911: LitI2 600
  loc_622914: CR8I2
  loc_622915: MulR8
  loc_622916: PopFPR4
  loc_622917: FLdPr Me
  loc_62291A: Me.Height = from_stack_1s
  loc_62291F: FFree1Ad var_88
  loc_622922: LitStr "Red XXI - Consolidación Mensual"
  loc_622925: LitI4 &HD
  loc_62292A: ImpAdCallI2 Chr$()
  loc_62292F: FStStrNoPop var_8C
  loc_622932: ConcatStr
  loc_622933: FStStrNoPop var_94
  loc_622936: FLdPr Me
  loc_622939: MemLdStr sMes
  loc_62293C: ConcatStr
  loc_62293D: FStStrNoPop var_A0
  loc_622940: LitStr " "
  loc_622943: ConcatStr
  loc_622944: FStStrNoPop var_A4
  loc_622947: FLdPr Me
  loc_62294A: MemLdStr sAnio
  loc_62294D: ConcatStr
  loc_62294E: FStStrNoPop var_A8
  loc_622951: FLdPrThis
  loc_622952: VCallAd Control_ID_lblTitle
  loc_622955: FStAdFunc var_88
  loc_622958: FLdPr var_88
  loc_62295B: Me.Caption = from_stack_1
  loc_622960: FFreeStr var_8C = "": var_94 = "": var_A0 = "": var_A4 = ""
  loc_62296D: FFree1Ad var_88
  loc_622970: ExitProcHresult
  loc_622971: FLdI2 var_F6
End Sub

Private Sub Form_Unload(Cancel As Integer) '5CAD00
  'Data Table: 418000
  loc_5CACF4: LitI2_Byte 0
  loc_5CACF6: FLdPr Me
  loc_5CACF9: MemStI2 global_72
  loc_5CACFC: ExitProcHresult
  loc_5CACFD: FLdPrThis
  loc_5CACFE: VCallAd Control_ID_
End Sub

Private Sub Form_Activate() '720E18
  'Data Table: 418000
  loc_71EE44: OnErrorGoto loc_720D99
  loc_71EE49: FLdPr Me
  loc_71EE4C: MemLdI2 global_72
  loc_71EE4F: BranchF loc_71EE55
  loc_71EE54: ExitProcHresult
  loc_71EE57: LitI2_Byte &HFF
  loc_71EE59: FLdPr Me
  loc_71EE5C: MemStI2 global_72
  loc_71EE61: LitStr "Courier New"
  loc_71EE64: FLdPrThis
  loc_71EE65: VCallAd Control_ID_txtListado
  loc_71EE68: FStAdFunc var_F4
  loc_71EE6B: FLdPr var_F4
  loc_71EE6E: Me.FontName = from_stack_1
  loc_71EE73: FFree1Ad var_F4
  loc_71EE78: LitI2_Byte &HA
  loc_71EE7A: CR8I2
  loc_71EE7B: PopFPR4
  loc_71EE7C: FLdPrThis
  loc_71EE7D: VCallAd Control_ID_txtListado
  loc_71EE80: FStAdFunc var_F4
  loc_71EE83: FLdPr var_F4
  loc_71EE86: Me.FontSize = from_stack_1s
  loc_71EE8B: FFree1Ad var_F4
  loc_71EE90: LitI2_Byte 0
  loc_71EE92: FLdPrThis
  loc_71EE93: VCallAd Control_ID_txtListado
  loc_71EE96: FStAdFunc var_F4
  loc_71EE99: FLdPr var_F4
  loc_71EE9C: Me.FontBold = from_stack_1b
  loc_71EEA1: FFree1Ad var_F4
  loc_71EEA6: LitI2_Byte 0
  loc_71EEA8: PopTmpLdAd2 var_F6
  loc_71EEAB: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_71EEB2: FLdRfVar var_F6
  loc_71EEB5: FLdRfVar var_88
  loc_71EEB8: FLdRfVar var_F4
  loc_71EEBB: ImpAdLdRf MemVar_74C760
  loc_71EEBE: NewIfNullPr Formx
  loc_71EEC1: from_stack_1v = Formx.global_4589716Get()
  loc_71EEC6: FLdPr var_F4
  loc_71EEC9:  = Formx.Picture
  loc_71EECE: FLdI2 var_F6
  loc_71EED1: NotI4
  loc_71EED2: FFree1Ad var_F4
  loc_71EED5: BranchF loc_71EF0E
  loc_71EEDA: FLdRfVar var_108
  loc_71EEDD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_71EEE2: FLdRfVar var_108
  loc_71EEE5: CBoolVarNull
  loc_71EEE7: FFree1Var var_108 = ""
  loc_71EEEA: BranchF loc_71EF07
  loc_71EEEF: ILdRf Me
  loc_71EEF2: FStAdNoPop
  loc_71EEF6: ImpAdLdRf MemVar_7520D4
  loc_71EEF9: NewIfNullPr Global
  loc_71EEFC: Global.Unload from_stack_1
  loc_71EF01: FFree1Ad var_F4
  loc_71EF06: ExitProcHresult
  loc_71EF0B: Branch loc_71EEB0
  loc_71EF10: LitVarI2 var_108, 30
  loc_71EF15: LitI4 7
  loc_71EF1A: FLdRfVar var_88
  loc_71EF1D: CVarRef
  loc_71EF22: FLdRfVar var_138
  loc_71EF25: ImpAdCallFPR4  = Mid(, , )
  loc_71EF2A: FLdRfVar var_138
  loc_71EF2D: FLdRfVar var_148
  loc_71EF30: ImpAdCallFPR4  = Trim()
  loc_71EF35: FLdRfVar var_148
  loc_71EF38: CStrVarTmp
  loc_71EF39: FStStr var_8C
  loc_71EF3C: FFreeVar var_108 = "": var_138 = ""
  loc_71EF47: LitVarI2 var_108, 6
  loc_71EF4C: LitI4 1
  loc_71EF51: FLdRfVar var_88
  loc_71EF54: CVarRef
  loc_71EF59: FLdRfVar var_138
  loc_71EF5C: ImpAdCallFPR4  = Mid(, , )
  loc_71EF61: FLdRfVar var_138
  loc_71EF64: CStrVarVal var_14C
  loc_71EF68: ImpAdCallFPR4 push Val()
  loc_71EF6D: CStrR8
  loc_71EF6F: FStStr var_90
  loc_71EF72: FFree1Str var_14C
  loc_71EF75: FFreeVar var_108 = ""
  loc_71EF7E: LitI2_Byte 1
  loc_71EF80: FLdRfVar var_A6
  loc_71EF83: FLdRfVar var_F6
  loc_71EF86: ImpAdLdRf MemVar_74A220
  loc_71EF89: NewIfNullPr clsProducts
  loc_71EF8C: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_71EF91: FLdI2 var_F6
  loc_71EF94: ForI2 var_150
  loc_71EF9C: FLdRfVar var_14C
  loc_71EF9F: FLdI2 var_A6
  loc_71EFA2: ImpAdLdRf MemVar_74A220
  loc_71EFA5: NewIfNullPr clsProducts
  loc_71EFAD: ILdRf var_E8
  loc_71EFB0: CVarStr var_118
  loc_71EFB3: LitI4 2
  loc_71EFB8: FLdRfVar var_108
  loc_71EFBB: ImpAdCallFPR4  = Space()
  loc_71EFC0: FLdRfVar var_108
  loc_71EFC3: ConcatVar var_138
  loc_71EFC7: LitI4 &HA
  loc_71EFCC: FLdZeroAd var_14C
  loc_71EFCF: CVarStr var_148
  loc_71EFD2: FLdRfVar var_160
  loc_71EFD5: ImpAdCallFPR4  = Left(, )
  loc_71EFDA: FLdRfVar var_160
  loc_71EFDD: ConcatVar var_170
  loc_71EFE1: CStrVarTmp
  loc_71EFE2: FStStr var_E8
  loc_71EFE5: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = ""
  loc_71EFF4: FLdRfVar var_A6
  loc_71EFF7: NextI2 var_150, loc_71EF9A
  loc_71EFFE: LitStr vbNullString
  loc_71F001: FLdPrThis
  loc_71F002: VCallAd Control_ID_txtListado
  loc_71F005: FStAdFunc var_F4
  loc_71F008: FLdPr var_F4
  loc_71F00B: Me.Text = from_stack_1
  loc_71F010: FFree1Ad var_F4
  loc_71F015: FLdRfVar var_14C
  loc_71F018: FLdPrThis
  loc_71F019: VCallAd Control_ID_txtListado
  loc_71F01C: FStAdFunc var_F4
  loc_71F01F: FLdPr var_F4
  loc_71F022:  = Me.Text
  loc_71F027: FLdZeroAd var_14C
  loc_71F02A: CVarStr var_138
  loc_71F02D: LitI4 &HD
  loc_71F032: FLdRfVar var_108
  loc_71F035: ImpAdCallFPR4  = Chr()
  loc_71F03A: FLdRfVar var_108
  loc_71F03D: ConcatVar var_148
  loc_71F041: LitI4 &HA
  loc_71F046: FLdRfVar var_160
  loc_71F049: ImpAdCallFPR4  = Chr()
  loc_71F04E: FLdRfVar var_160
  loc_71F051: ConcatVar var_170
  loc_71F055: LitI4 &HD
  loc_71F05A: FLdRfVar var_180
  loc_71F05D: ImpAdCallFPR4  = Chr()
  loc_71F062: FLdRfVar var_180
  loc_71F065: ConcatVar var_190
  loc_71F069: LitI4 &HA
  loc_71F06E: FLdRfVar var_1A0
  loc_71F071: ImpAdCallFPR4  = Chr()
  loc_71F076: FLdRfVar var_1A0
  loc_71F079: ConcatVar var_1B0
  loc_71F07D: CStrVarVal var_1B4
  loc_71F081: FLdPrThis
  loc_71F082: VCallAd Control_ID_txtListado
  loc_71F085: FStAdFunc var_1B8
  loc_71F088: FLdPr var_1B8
  loc_71F08B: Me.Text = from_stack_1
  loc_71F090: FFree1Str var_1B4
  loc_71F093: FFreeAd var_F4 = ""
  loc_71F09A: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F0B1: FLdPr Me
  loc_71F0B4: MemLdRfVar from_stack_1.sMes
  loc_71F0B7: CVarRef
  loc_71F0BC: FLdRfVar var_108
  loc_71F0BF: ImpAdCallFPR4  = Ucase()
  loc_71F0C4: FLdRfVar var_14C
  loc_71F0C7: FLdPrThis
  loc_71F0C8: VCallAd Control_ID_txtListado
  loc_71F0CB: FStAdFunc var_F4
  loc_71F0CE: FLdPr var_F4
  loc_71F0D1:  = Me.Text
  loc_71F0D6: FLdZeroAd var_14C
  loc_71F0D9: CVarStr var_180
  loc_71F0DC: LitI2_Byte &H50
  loc_71F0DE: LitVarStr var_128, "RESUMEN DE CIERRES DE RED XXI - "
  loc_71F0E3: FLdRfVar var_108
  loc_71F0E6: ConcatVar var_138
  loc_71F0EA: LitVarStr var_1C8, " "
  loc_71F0EF: ConcatVar var_148
  loc_71F0F3: FLdPr Me
  loc_71F0F6: MemLdStr sAnio
  loc_71F0F9: CVarStr var_1D8
  loc_71F0FC: ConcatVar var_160
  loc_71F100: CStrVarVal var_1B4
  loc_71F104: FLdRfVar var_170
  loc_71F107: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_71F10C: FLdRfVar var_170
  loc_71F10F: ConcatVar var_190
  loc_71F113: CStrVarVal var_1DC
  loc_71F117: FLdPrThis
  loc_71F118: VCallAd Control_ID_txtListado
  loc_71F11B: FStAdFunc var_1B8
  loc_71F11E: FLdPr var_1B8
  loc_71F121: Me.Text = from_stack_1
  loc_71F126: FFreeStr var_1B4 = ""
  loc_71F12D: FFreeAd var_F4 = ""
  loc_71F134: FFreeVar var_108 = "": var_138 = "": var_148 = "": var_160 = "": var_180 = "": var_170 = ""
  loc_71F147: FLdRfVar var_14C
  loc_71F14A: FLdPrThis
  loc_71F14B: VCallAd Control_ID_txtListado
  loc_71F14E: FStAdFunc var_F4
  loc_71F151: FLdPr var_F4
  loc_71F154:  = Me.Text
  loc_71F159: FLdZeroAd var_14C
  loc_71F15C: CVarStr var_138
  loc_71F15F: LitI4 &HD
  loc_71F164: FLdRfVar var_108
  loc_71F167: ImpAdCallFPR4  = Chr()
  loc_71F16C: FLdRfVar var_108
  loc_71F16F: ConcatVar var_148
  loc_71F173: LitI4 &HA
  loc_71F178: FLdRfVar var_160
  loc_71F17B: ImpAdCallFPR4  = Chr()
  loc_71F180: FLdRfVar var_160
  loc_71F183: ConcatVar var_170
  loc_71F187: LitI4 &HD
  loc_71F18C: FLdRfVar var_180
  loc_71F18F: ImpAdCallFPR4  = Chr()
  loc_71F194: FLdRfVar var_180
  loc_71F197: ConcatVar var_190
  loc_71F19B: LitI4 &HA
  loc_71F1A0: FLdRfVar var_1A0
  loc_71F1A3: ImpAdCallFPR4  = Chr()
  loc_71F1A8: FLdRfVar var_1A0
  loc_71F1AB: ConcatVar var_1B0
  loc_71F1AF: CStrVarVal var_1B4
  loc_71F1B3: FLdPrThis
  loc_71F1B4: VCallAd Control_ID_txtListado
  loc_71F1B7: FStAdFunc var_1B8
  loc_71F1BA: FLdPr var_1B8
  loc_71F1BD: Me.Text = from_stack_1
  loc_71F1C2: FFree1Str var_1B4
  loc_71F1C5: FFreeAd var_F4 = ""
  loc_71F1CC: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F1E3: FLdRfVar var_160
  loc_71F1E6: ImpAdCallFPR4  = Date
  loc_71F1EB: FLdRfVar var_1EC
  loc_71F1EE: ImpAdCallFPR4  = Time
  loc_71F1F3: FLdRfVar var_14C
  loc_71F1F6: FLdPrThis
  loc_71F1F7: VCallAd Control_ID_txtListado
  loc_71F1FA: FStAdFunc var_F4
  loc_71F1FD: FLdPr var_F4
  loc_71F200:  = Me.Text
  loc_71F205: FLdZeroAd var_14C
  loc_71F208: CVarStr var_138
  loc_71F20B: LitI4 3
  loc_71F210: FLdRfVar var_108
  loc_71F213: ImpAdCallFPR4  = Space()
  loc_71F218: FLdRfVar var_108
  loc_71F21B: ConcatVar var_148
  loc_71F21F: LitI4 1
  loc_71F224: LitI4 1
  loc_71F229: LitVarStr var_118, "dd/mm/yyyy"
  loc_71F22E: FStVarCopyObj var_170
  loc_71F231: FLdRfVar var_170
  loc_71F234: FLdRfVar var_160
  loc_71F237: ImpAdCallI2 Format$(, )
  loc_71F23C: CVarStr var_180
  loc_71F23F: ConcatVar var_190
  loc_71F243: LitI4 &H33
  loc_71F248: FLdRfVar var_1A0
  loc_71F24B: ImpAdCallFPR4  = Space()
  loc_71F250: FLdRfVar var_1A0
  loc_71F253: ConcatVar var_1B0
  loc_71F257: LitI4 1
  loc_71F25C: LitI4 1
  loc_71F261: LitVarStr var_128, "hh:mm:ss"
  loc_71F266: FStVarCopyObj var_1FC
  loc_71F269: FLdRfVar var_1FC
  loc_71F26C: FLdRfVar var_1EC
  loc_71F26F: ImpAdCallI2 Format$(, )
  loc_71F274: CVarStr var_20C
  loc_71F277: ConcatVar var_21C
  loc_71F27B: CStrVarVal var_1B4
  loc_71F27F: FLdPrThis
  loc_71F280: VCallAd Control_ID_txtListado
  loc_71F283: FStAdFunc var_1B8
  loc_71F286: FLdPr var_1B8
  loc_71F289: Me.Text = from_stack_1
  loc_71F28E: FFree1Str var_1B4
  loc_71F291: FFreeAd var_F4 = ""
  loc_71F298: FFreeVar var_138 = "": var_108 = "": var_160 = "": var_170 = "": var_148 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1EC = "": var_1FC = "": var_1B0 = "": var_20C = ""
  loc_71F2B7: FLdRfVar var_14C
  loc_71F2BA: FLdPrThis
  loc_71F2BB: VCallAd Control_ID_txtListado
  loc_71F2BE: FStAdFunc var_F4
  loc_71F2C1: FLdPr var_F4
  loc_71F2C4:  = Me.Text
  loc_71F2C9: FLdZeroAd var_14C
  loc_71F2CC: CVarStr var_138
  loc_71F2CF: LitI4 &HD
  loc_71F2D4: FLdRfVar var_108
  loc_71F2D7: ImpAdCallFPR4  = Chr()
  loc_71F2DC: FLdRfVar var_108
  loc_71F2DF: ConcatVar var_148
  loc_71F2E3: LitI4 &HA
  loc_71F2E8: FLdRfVar var_160
  loc_71F2EB: ImpAdCallFPR4  = Chr()
  loc_71F2F0: FLdRfVar var_160
  loc_71F2F3: ConcatVar var_170
  loc_71F2F7: LitI4 &HD
  loc_71F2FC: FLdRfVar var_180
  loc_71F2FF: ImpAdCallFPR4  = Chr()
  loc_71F304: FLdRfVar var_180
  loc_71F307: ConcatVar var_190
  loc_71F30B: LitI4 &HA
  loc_71F310: FLdRfVar var_1A0
  loc_71F313: ImpAdCallFPR4  = Chr()
  loc_71F318: FLdRfVar var_1A0
  loc_71F31B: ConcatVar var_1B0
  loc_71F31F: CStrVarVal var_1B4
  loc_71F323: FLdPrThis
  loc_71F324: VCallAd Control_ID_txtListado
  loc_71F327: FStAdFunc var_1B8
  loc_71F32A: FLdPr var_1B8
  loc_71F32D: Me.Text = from_stack_1
  loc_71F332: FFree1Str var_1B4
  loc_71F335: FFreeAd var_F4 = ""
  loc_71F33C: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F353: FLdRfVar var_14C
  loc_71F356: FLdPrThis
  loc_71F357: VCallAd Control_ID_txtListado
  loc_71F35A: FStAdFunc var_F4
  loc_71F35D: FLdPr var_F4
  loc_71F360:  = Me.Text
  loc_71F365: FLdZeroAd var_14C
  loc_71F368: CVarStr var_138
  loc_71F36B: LitI4 3
  loc_71F370: FLdRfVar var_108
  loc_71F373: ImpAdCallFPR4  = Space()
  loc_71F378: FLdRfVar var_108
  loc_71F37B: ConcatVar var_148
  loc_71F37F: LitVarStr var_118, "ESTACION NRO: "
  loc_71F384: ConcatVar var_160
  loc_71F388: ILdRf var_90
  loc_71F38B: CVarStr var_128
  loc_71F38E: ConcatVar var_170
  loc_71F392: LitI4 &HD
  loc_71F397: FLdRfVar var_180
  loc_71F39A: ImpAdCallFPR4  = Chr()
  loc_71F39F: FLdRfVar var_180
  loc_71F3A2: ConcatVar var_190
  loc_71F3A6: LitI4 &HA
  loc_71F3AB: FLdRfVar var_1A0
  loc_71F3AE: ImpAdCallFPR4  = Chr()
  loc_71F3B3: FLdRfVar var_1A0
  loc_71F3B6: ConcatVar var_1B0
  loc_71F3BA: CStrVarVal var_1B4
  loc_71F3BE: FLdPrThis
  loc_71F3BF: VCallAd Control_ID_txtListado
  loc_71F3C2: FStAdFunc var_1B8
  loc_71F3C5: FLdPr var_1B8
  loc_71F3C8: Me.Text = from_stack_1
  loc_71F3CD: FFree1Str var_1B4
  loc_71F3D0: FFreeAd var_F4 = ""
  loc_71F3D7: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F3EE: FLdRfVar var_14C
  loc_71F3F1: FLdPrThis
  loc_71F3F2: VCallAd Control_ID_txtListado
  loc_71F3F5: FStAdFunc var_F4
  loc_71F3F8: FLdPr var_F4
  loc_71F3FB:  = Me.Text
  loc_71F400: FLdZeroAd var_14C
  loc_71F403: CVarStr var_138
  loc_71F406: LitI4 3
  loc_71F40B: FLdRfVar var_108
  loc_71F40E: ImpAdCallFPR4  = Space()
  loc_71F413: FLdRfVar var_108
  loc_71F416: ConcatVar var_148
  loc_71F41A: LitVarStr var_118, "RAZON SOCIAL: "
  loc_71F41F: ConcatVar var_160
  loc_71F423: ILdRf var_8C
  loc_71F426: CVarStr var_128
  loc_71F429: ConcatVar var_170
  loc_71F42D: LitI4 &HD
  loc_71F432: FLdRfVar var_180
  loc_71F435: ImpAdCallFPR4  = Chr()
  loc_71F43A: FLdRfVar var_180
  loc_71F43D: ConcatVar var_190
  loc_71F441: LitI4 &HA
  loc_71F446: FLdRfVar var_1A0
  loc_71F449: ImpAdCallFPR4  = Chr()
  loc_71F44E: FLdRfVar var_1A0
  loc_71F451: ConcatVar var_1B0
  loc_71F455: CStrVarVal var_1B4
  loc_71F459: FLdPrThis
  loc_71F45A: VCallAd Control_ID_txtListado
  loc_71F45D: FStAdFunc var_1B8
  loc_71F460: FLdPr var_1B8
  loc_71F463: Me.Text = from_stack_1
  loc_71F468: FFree1Str var_1B4
  loc_71F46B: FFreeAd var_F4 = ""
  loc_71F472: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F489: FLdRfVar var_14C
  loc_71F48C: FLdPrThis
  loc_71F48D: VCallAd Control_ID_txtListado
  loc_71F490: FStAdFunc var_F4
  loc_71F493: FLdPr var_F4
  loc_71F496:  = Me.Text
  loc_71F49B: FLdZeroAd var_14C
  loc_71F49E: CVarStr var_138
  loc_71F4A1: LitI4 &HD
  loc_71F4A6: FLdRfVar var_108
  loc_71F4A9: ImpAdCallFPR4  = Chr()
  loc_71F4AE: FLdRfVar var_108
  loc_71F4B1: ConcatVar var_148
  loc_71F4B5: LitI4 &HA
  loc_71F4BA: FLdRfVar var_160
  loc_71F4BD: ImpAdCallFPR4  = Chr()
  loc_71F4C2: FLdRfVar var_160
  loc_71F4C5: ConcatVar var_170
  loc_71F4C9: LitI4 &HD
  loc_71F4CE: FLdRfVar var_180
  loc_71F4D1: ImpAdCallFPR4  = Chr()
  loc_71F4D6: FLdRfVar var_180
  loc_71F4D9: ConcatVar var_190
  loc_71F4DD: LitI4 &HA
  loc_71F4E2: FLdRfVar var_1A0
  loc_71F4E5: ImpAdCallFPR4  = Chr()
  loc_71F4EA: FLdRfVar var_1A0
  loc_71F4ED: ConcatVar var_1B0
  loc_71F4F1: CStrVarVal var_1B4
  loc_71F4F5: FLdPrThis
  loc_71F4F6: VCallAd Control_ID_txtListado
  loc_71F4F9: FStAdFunc var_1B8
  loc_71F4FC: FLdPr var_1B8
  loc_71F4FF: Me.Text = from_stack_1
  loc_71F504: FFree1Str var_1B4
  loc_71F507: FFreeAd var_F4 = ""
  loc_71F50E: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71F525: LitI4 1
  loc_71F52A: FLdPr Me
  loc_71F52D: MemLdStr sData
  loc_71F530: LitStr "#"
  loc_71F533: LitI4 0
  loc_71F538: FnInStr4
  loc_71F53A: FStR4 var_B8
  loc_71F53F: LitI4 1
  loc_71F544: FLdPr Me
  loc_71F547: MemLdStr sData
  loc_71F54A: LitStr "@"
  loc_71F54D: LitI4 0
  loc_71F552: FnInStr4
  loc_71F554: FStR4 var_BC
  loc_71F559: LitI4 1
  loc_71F55E: FLdPr Me
  loc_71F561: MemLdStr sData
  loc_71F564: LitStr "*"
  loc_71F567: LitI4 0
  loc_71F56C: FnInStr4
  loc_71F56E: FStR4 var_F0
  loc_71F573: FLdRfVar var_14C
  loc_71F576: FLdPrThis
  loc_71F577: VCallAd Control_ID_txtListado
  loc_71F57A: FStAdFunc var_F4
  loc_71F57D: FLdPr var_F4
  loc_71F580:  = Me.Text
  loc_71F585: FLdZeroAd var_14C
  loc_71F588: CVarStr var_148
  loc_71F58B: LitVarStr var_118, "="
  loc_71F590: FStVarCopyObj var_108
  loc_71F593: FLdRfVar var_108
  loc_71F596: LitI4 &H50
  loc_71F59B: FLdRfVar var_138
  loc_71F59E: ImpAdCallFPR4  = String(, )
  loc_71F5A3: FLdRfVar var_138
  loc_71F5A6: ConcatVar var_160
  loc_71F5AA: LitI4 &HD
  loc_71F5AF: FLdRfVar var_170
  loc_71F5B2: ImpAdCallFPR4  = Chr()
  loc_71F5B7: FLdRfVar var_170
  loc_71F5BA: ConcatVar var_180
  loc_71F5BE: LitI4 &HA
  loc_71F5C3: FLdRfVar var_190
  loc_71F5C6: ImpAdCallFPR4  = Chr()
  loc_71F5CB: FLdRfVar var_190
  loc_71F5CE: ConcatVar var_1A0
  loc_71F5D2: CStrVarVal var_1B4
  loc_71F5D6: FLdPrThis
  loc_71F5D7: VCallAd Control_ID_txtListado
  loc_71F5DA: FStAdFunc var_1B8
  loc_71F5DD: FLdPr var_1B8
  loc_71F5E0: Me.Text = from_stack_1
  loc_71F5E5: FFree1Str var_1B4
  loc_71F5E8: FFreeAd var_F4 = ""
  loc_71F5EF: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_71F604: FLdRfVar var_14C
  loc_71F607: FLdPrThis
  loc_71F608: VCallAd Control_ID_txtListado
  loc_71F60B: FStAdFunc var_F4
  loc_71F60E: FLdPr var_F4
  loc_71F611:  = Me.Text
  loc_71F616: FLdZeroAd var_14C
  loc_71F619: CVarStr var_138
  loc_71F61C: LitI2_Byte &H50
  loc_71F61E: LitStr "VENTAS"
  loc_71F621: FLdRfVar var_108
  loc_71F624: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_71F629: FLdRfVar var_108
  loc_71F62C: ConcatVar var_148
  loc_71F630: LitI4 &HD
  loc_71F635: FLdRfVar var_160
  loc_71F638: ImpAdCallFPR4  = Chr()
  loc_71F63D: FLdRfVar var_160
  loc_71F640: ConcatVar var_170
  loc_71F644: LitI4 &HA
  loc_71F649: FLdRfVar var_180
  loc_71F64C: ImpAdCallFPR4  = Chr()
  loc_71F651: FLdRfVar var_180
  loc_71F654: ConcatVar var_190
  loc_71F658: CStrVarVal var_1B4
  loc_71F65C: FLdPrThis
  loc_71F65D: VCallAd Control_ID_txtListado
  loc_71F660: FStAdFunc var_1B8
  loc_71F663: FLdPr var_1B8
  loc_71F666: Me.Text = from_stack_1
  loc_71F66B: FFree1Str var_1B4
  loc_71F66E: FFreeAd var_F4 = ""
  loc_71F675: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_71F688: FLdRfVar var_14C
  loc_71F68B: FLdPrThis
  loc_71F68C: VCallAd Control_ID_txtListado
  loc_71F68F: FStAdFunc var_F4
  loc_71F692: FLdPr var_F4
  loc_71F695:  = Me.Text
  loc_71F69A: FLdZeroAd var_14C
  loc_71F69D: CVarStr var_148
  loc_71F6A0: LitVarStr var_118, "-"
  loc_71F6A5: FStVarCopyObj var_108
  loc_71F6A8: FLdRfVar var_108
  loc_71F6AB: LitI4 &H50
  loc_71F6B0: FLdRfVar var_138
  loc_71F6B3: ImpAdCallFPR4  = String(, )
  loc_71F6B8: FLdRfVar var_138
  loc_71F6BB: ConcatVar var_160
  loc_71F6BF: LitI4 &HD
  loc_71F6C4: FLdRfVar var_170
  loc_71F6C7: ImpAdCallFPR4  = Chr()
  loc_71F6CC: FLdRfVar var_170
  loc_71F6CF: ConcatVar var_180
  loc_71F6D3: LitI4 &HA
  loc_71F6D8: FLdRfVar var_190
  loc_71F6DB: ImpAdCallFPR4  = Chr()
  loc_71F6E0: FLdRfVar var_190
  loc_71F6E3: ConcatVar var_1A0
  loc_71F6E7: CStrVarVal var_1B4
  loc_71F6EB: FLdPrThis
  loc_71F6EC: VCallAd Control_ID_txtListado
  loc_71F6EF: FStAdFunc var_1B8
  loc_71F6F2: FLdPr var_1B8
  loc_71F6F5: Me.Text = from_stack_1
  loc_71F6FA: FFree1Str var_1B4
  loc_71F6FD: FFreeAd var_F4 = ""
  loc_71F704: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_71F719: FLdRfVar var_14C
  loc_71F71C: FLdPrThis
  loc_71F71D: VCallAd Control_ID_txtListado
  loc_71F720: FStAdFunc var_F4
  loc_71F723: FLdPr var_F4
  loc_71F726:  = Me.Text
  loc_71F72B: FLdZeroAd var_14C
  loc_71F72E: CVarStr var_138
  loc_71F731: LitI4 2
  loc_71F736: FLdRfVar var_108
  loc_71F739: ImpAdCallFPR4  = Space()
  loc_71F73E: FLdRfVar var_108
  loc_71F741: ConcatVar var_148
  loc_71F745: LitVarStr var_118, "FECHA"
  loc_71F74A: ConcatVar var_160
  loc_71F74E: LitI4 6
  loc_71F753: FLdRfVar var_170
  loc_71F756: ImpAdCallFPR4  = Space()
  loc_71F75B: FLdRfVar var_170
  loc_71F75E: ConcatVar var_180
  loc_71F762: LitVarStr var_128, "HORA"
  loc_71F767: ConcatVar var_190
  loc_71F76B: LitI4 5
  loc_71F770: FLdRfVar var_1A0
  loc_71F773: ImpAdCallFPR4  = Space()
  loc_71F778: FLdRfVar var_1A0
  loc_71F77B: ConcatVar var_1B0
  loc_71F77F: ILdRf var_E8
  loc_71F782: CVarStr var_1C8
  loc_71F785: ConcatVar var_1EC
  loc_71F789: LitI4 &HD
  loc_71F78E: FLdRfVar var_1FC
  loc_71F791: ImpAdCallFPR4  = Chr()
  loc_71F796: FLdRfVar var_1FC
  loc_71F799: ConcatVar var_20C
  loc_71F79D: LitI4 &HA
  loc_71F7A2: FLdRfVar var_21C
  loc_71F7A5: ImpAdCallFPR4  = Chr()
  loc_71F7AA: FLdRfVar var_21C
  loc_71F7AD: ConcatVar var_22C
  loc_71F7B1: CStrVarVal var_1B4
  loc_71F7B5: FLdPrThis
  loc_71F7B6: VCallAd Control_ID_txtListado
  loc_71F7B9: FStAdFunc var_1B8
  loc_71F7BC: FLdPr var_1B8
  loc_71F7BF: Me.Text = from_stack_1
  loc_71F7C4: FFree1Str var_1B4
  loc_71F7C7: FFreeAd var_F4 = ""
  loc_71F7CE: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = ""
  loc_71F7EF: FLdRfVar var_14C
  loc_71F7F2: FLdPrThis
  loc_71F7F3: VCallAd Control_ID_txtListado
  loc_71F7F6: FStAdFunc var_F4
  loc_71F7F9: FLdPr var_F4
  loc_71F7FC:  = Me.Text
  loc_71F801: FLdZeroAd var_14C
  loc_71F804: CVarStr var_148
  loc_71F807: LitVarStr var_118, "="
  loc_71F80C: FStVarCopyObj var_108
  loc_71F80F: FLdRfVar var_108
  loc_71F812: LitI4 &H50
  loc_71F817: FLdRfVar var_138
  loc_71F81A: ImpAdCallFPR4  = String(, )
  loc_71F81F: FLdRfVar var_138
  loc_71F822: ConcatVar var_160
  loc_71F826: LitI4 &HD
  loc_71F82B: FLdRfVar var_170
  loc_71F82E: ImpAdCallFPR4  = Chr()
  loc_71F833: FLdRfVar var_170
  loc_71F836: ConcatVar var_180
  loc_71F83A: LitI4 &HA
  loc_71F83F: FLdRfVar var_190
  loc_71F842: ImpAdCallFPR4  = Chr()
  loc_71F847: FLdRfVar var_190
  loc_71F84A: ConcatVar var_1A0
  loc_71F84E: CStrVarVal var_1B4
  loc_71F852: FLdPrThis
  loc_71F853: VCallAd Control_ID_txtListado
  loc_71F856: FStAdFunc var_1B8
  loc_71F859: FLdPr var_1B8
  loc_71F85C: Me.Text = from_stack_1
  loc_71F861: FFree1Str var_1B4
  loc_71F864: FFreeAd var_F4 = ""
  loc_71F86B: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_71F880: LitI4 1
  loc_71F885: FStR4 var_B0
  loc_71F88A: LitI4 1
  loc_71F88F: FLdPr Me
  loc_71F892: MemLdStr sData
  loc_71F895: LitStr ";"
  loc_71F898: LitI4 0
  loc_71F89D: FnInStr4
  loc_71F89F: FStR4 var_B4
  loc_71F8A4: ILdRf var_B4
  loc_71F8A7: ILdRf var_F0
  loc_71F8AA: LtI4
  loc_71F8AB: ILdRf var_B4
  loc_71F8AE: LitI4 0
  loc_71F8B3: GtI4
  loc_71F8B4: AndI4
  loc_71F8B5: BranchF loc_71FB9F
  loc_71F8BA: ILdRf var_B4
  loc_71F8BD: ILdRf var_B0
  loc_71F8C0: SubI4
  loc_71F8C1: CVarI4
  loc_71F8C5: ILdRf var_B0
  loc_71F8C8: FLdPr Me
  loc_71F8CB: MemLdRfVar from_stack_1.sData
  loc_71F8CE: CVarRef
  loc_71F8D3: FLdRfVar var_138
  loc_71F8D6: ImpAdCallFPR4  = Mid(, , )
  loc_71F8DB: FLdRfVar var_138
  loc_71F8DE: LitVarStr var_1C8, vbNullString
  loc_71F8E3: ConcatVar var_148
  loc_71F8E7: CStrVarTmp
  loc_71F8E8: FStStr var_94
  loc_71F8EB: FFreeVar var_108 = "": var_138 = ""
  loc_71F8F6: LitVarI2 var_108, 2
  loc_71F8FB: LitI4 7
  loc_71F900: FLdRfVar var_94
  loc_71F903: CVarRef
  loc_71F908: FLdRfVar var_138
  loc_71F90B: ImpAdCallFPR4  = Mid(, , )
  loc_71F910: FLdRfVar var_138
  loc_71F913: LitVarStr var_1C8, "/"
  loc_71F918: ConcatVar var_148
  loc_71F91C: LitVarI2 var_160, 2
  loc_71F921: LitI4 5
  loc_71F926: FLdRfVar var_94
  loc_71F929: CVarRef
  loc_71F92E: FLdRfVar var_170
  loc_71F931: ImpAdCallFPR4  = Mid(, , )
  loc_71F936: FLdRfVar var_170
  loc_71F939: ConcatVar var_180
  loc_71F93D: LitVarStr var_24C, "/"
  loc_71F942: ConcatVar var_190
  loc_71F946: LitVarI2 var_1A0, 4
  loc_71F94B: LitI4 1
  loc_71F950: FLdRfVar var_94
  loc_71F953: CVarRef
  loc_71F958: FLdRfVar var_1B0
  loc_71F95B: ImpAdCallFPR4  = Mid(, , )
  loc_71F960: FLdRfVar var_1B0
  loc_71F963: ConcatVar var_1EC
  loc_71F967: CStrVarTmp
  loc_71F968: FStStr var_98
  loc_71F96B: FFreeVar var_108 = "": var_138 = "": var_160 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_190 = "": var_1B0 = ""
  loc_71F984: LitVarI2 var_108, 2
  loc_71F989: LitI4 9
  loc_71F98E: FLdRfVar var_94
  loc_71F991: CVarRef
  loc_71F996: FLdRfVar var_138
  loc_71F999: ImpAdCallFPR4  = Mid(, , )
  loc_71F99E: FLdRfVar var_138
  loc_71F9A1: LitVarStr var_1C8, ":"
  loc_71F9A6: ConcatVar var_148
  loc_71F9AA: LitVarI2 var_160, 2
  loc_71F9AF: LitI4 &HB
  loc_71F9B4: FLdRfVar var_94
  loc_71F9B7: CVarRef
  loc_71F9BC: FLdRfVar var_170
  loc_71F9BF: ImpAdCallFPR4  = Mid(, , )
  loc_71F9C4: FLdRfVar var_170
  loc_71F9C7: ConcatVar var_180
  loc_71F9CB: LitVarStr var_24C, ":"
  loc_71F9D0: ConcatVar var_190
  loc_71F9D4: LitVarI2 var_1A0, 2
  loc_71F9D9: LitI4 &HD
  loc_71F9DE: FLdRfVar var_94
  loc_71F9E1: CVarRef
  loc_71F9E6: FLdRfVar var_1B0
  loc_71F9E9: ImpAdCallFPR4  = Mid(, , )
  loc_71F9EE: FLdRfVar var_1B0
  loc_71F9F1: ConcatVar var_1EC
  loc_71F9F5: CStrVarTmp
  loc_71F9F6: FStStr var_9C
  loc_71F9F9: FFreeVar var_108 = "": var_138 = "": var_160 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_190 = "": var_1B0 = ""
  loc_71FA12: LitVar_Missing var_108
  loc_71FA15: LitI4 &HF
  loc_71FA1A: FLdRfVar var_94
  loc_71FA1D: CVarRef
  loc_71FA22: FLdRfVar var_138
  loc_71FA25: ImpAdCallFPR4  = Mid(, , )
  loc_71FA2A: FLdRfVar var_138
  loc_71FA2D: CStrVarTmp
  loc_71FA2E: FStStr var_A0
  loc_71FA31: FFreeVar var_108 = ""
  loc_71FA3A: LitStr "  "
  loc_71FA3D: FStStrCopy var_1B4
  loc_71FA40: FLdRfVar var_1B4
  loc_71FA43: LitStr "_"
  loc_71FA46: FStStrCopy var_14C
  loc_71FA49: FLdRfVar var_14C
  loc_71FA4C: FLdRfVar var_A0
  loc_71FA4F: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_71FA54: FStStr var_A0
  loc_71FA57: FFreeStr var_14C = ""
  loc_71FA60: LitI4 &H15
  loc_71FA65: FLdRfVar var_108
  loc_71FA68: ImpAdCallFPR4  = Space()
  loc_71FA6D: FLdRfVar var_108
  loc_71FA70: CStrVarTmp
  loc_71FA71: PopTmpLdAdStr
  loc_71FA75: LitStr Chr(37)
  loc_71FA78: FStStrCopy var_14C
  loc_71FA7B: FLdRfVar var_14C
  loc_71FA7E: FLdRfVar var_A0
  loc_71FA81: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_71FA86: FStStr var_A0
  loc_71FA89: FFreeStr var_14C = ""
  loc_71FA90: FFree1Var var_108 = ""
  loc_71FA95: LitI4 &HD
  loc_71FA9A: FLdRfVar var_108
  loc_71FA9D: ImpAdCallFPR4  = Chr()
  loc_71FAA2: FLdRfVar var_108
  loc_71FAA5: LitI4 &HA
  loc_71FAAA: FLdRfVar var_138
  loc_71FAAD: ImpAdCallFPR4  = Chr()
  loc_71FAB2: FLdRfVar var_138
  loc_71FAB5: ConcatVar var_148
  loc_71FAB9: CStrVarTmp
  loc_71FABA: PopTmpLdAdStr
  loc_71FABE: LitStr "^"
  loc_71FAC1: FStStrCopy var_14C
  loc_71FAC4: FLdRfVar var_14C
  loc_71FAC7: FLdRfVar var_A0
  loc_71FACA: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_71FACF: FStStr var_A0
  loc_71FAD2: FFreeStr var_14C = ""
  loc_71FAD9: FFreeVar var_108 = "": var_138 = ""
  loc_71FAE4: FLdRfVar var_14C
  loc_71FAE7: FLdPrThis
  loc_71FAE8: VCallAd Control_ID_txtListado
  loc_71FAEB: FStAdFunc var_F4
  loc_71FAEE: FLdPr var_F4
  loc_71FAF1:  = Me.Text
  loc_71FAF6: ILdRf var_14C
  loc_71FAF9: ILdRf var_98
  loc_71FAFC: ConcatStr
  loc_71FAFD: CVarStr var_138
  loc_71FB00: LitI4 1
  loc_71FB05: FLdRfVar var_108
  loc_71FB08: ImpAdCallFPR4  = Space()
  loc_71FB0D: FLdRfVar var_108
  loc_71FB10: ConcatVar var_148
  loc_71FB14: ILdRf var_9C
  loc_71FB17: CVarStr var_118
  loc_71FB1A: ConcatVar var_160
  loc_71FB1E: LitI4 2
  loc_71FB23: FLdRfVar var_170
  loc_71FB26: ImpAdCallFPR4  = Space()
  loc_71FB2B: FLdRfVar var_170
  loc_71FB2E: ConcatVar var_180
  loc_71FB32: ILdRf var_A0
  loc_71FB35: CVarStr var_128
  loc_71FB38: ConcatVar var_190
  loc_71FB3C: CStrVarVal var_1B4
  loc_71FB40: FLdPrThis
  loc_71FB41: VCallAd Control_ID_txtListado
  loc_71FB44: FStAdFunc var_1B8
  loc_71FB47: FLdPr var_1B8
  loc_71FB4A: Me.Text = from_stack_1
  loc_71FB4F: FFreeStr var_14C = ""
  loc_71FB56: FFreeAd var_F4 = ""
  loc_71FB5D: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_71FB70: ILdRf var_B4
  loc_71FB73: LitI4 1
  loc_71FB78: AddI4
  loc_71FB79: FStR4 var_B0
  loc_71FB7E: ILdRf var_B4
  loc_71FB81: LitI4 1
  loc_71FB86: AddI4
  loc_71FB87: FLdPr Me
  loc_71FB8A: MemLdStr sData
  loc_71FB8D: LitStr ";"
  loc_71FB90: LitI4 0
  loc_71FB95: FnInStr4
  loc_71FB97: FStR4 var_B4
  loc_71FB9C: Branch loc_71F8A2
  loc_71FBA1: ILdRf var_B8
  loc_71FBA4: ILdRf var_F0
  loc_71FBA7: SubI4
  loc_71FBA8: LitI4 1
  loc_71FBAD: SubI4
  loc_71FBAE: CVarI4
  loc_71FBB2: ILdRf var_F0
  loc_71FBB5: LitI4 1
  loc_71FBBA: AddI4
  loc_71FBBB: FLdPr Me
  loc_71FBBE: MemLdRfVar from_stack_1.sData
  loc_71FBC1: CVarRef
  loc_71FBC6: FLdRfVar var_138
  loc_71FBC9: ImpAdCallFPR4  = Mid(, , )
  loc_71FBCE: FLdRfVar var_138
  loc_71FBD1: LitVarStr var_1C8, vbNullString
  loc_71FBD6: ConcatVar var_148
  loc_71FBDA: CStrVarTmp
  loc_71FBDB: FStStr var_A0
  loc_71FBDE: FFreeVar var_108 = "": var_138 = ""
  loc_71FBE9: LitI4 &H15
  loc_71FBEE: FLdRfVar var_108
  loc_71FBF1: ImpAdCallFPR4  = Space()
  loc_71FBF6: FLdRfVar var_108
  loc_71FBF9: CStrVarTmp
  loc_71FBFA: PopTmpLdAdStr
  loc_71FBFE: LitStr Chr(37)
  loc_71FC01: FStStrCopy var_14C
  loc_71FC04: FLdRfVar var_14C
  loc_71FC07: FLdRfVar var_A0
  loc_71FC0A: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_71FC0F: FStStr var_A0
  loc_71FC12: FFreeStr var_14C = ""
  loc_71FC19: FFree1Var var_108 = ""
  loc_71FC1E: LitI4 &HD
  loc_71FC23: FLdRfVar var_108
  loc_71FC26: ImpAdCallFPR4  = Chr()
  loc_71FC2B: FLdRfVar var_108
  loc_71FC2E: LitI4 &HA
  loc_71FC33: FLdRfVar var_138
  loc_71FC36: ImpAdCallFPR4  = Chr()
  loc_71FC3B: FLdRfVar var_138
  loc_71FC3E: ConcatVar var_148
  loc_71FC42: CStrVarTmp
  loc_71FC43: PopTmpLdAdStr
  loc_71FC47: LitStr "^"
  loc_71FC4A: FStStrCopy var_14C
  loc_71FC4D: FLdRfVar var_14C
  loc_71FC50: FLdRfVar var_A0
  loc_71FC53: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_71FC58: FStStr var_A0
  loc_71FC5B: FFreeStr var_14C = ""
  loc_71FC62: FFreeVar var_108 = "": var_138 = ""
  loc_71FC6D: FLdRfVar var_14C
  loc_71FC70: FLdPrThis
  loc_71FC71: VCallAd Control_ID_txtListado
  loc_71FC74: FStAdFunc var_F4
  loc_71FC77: FLdPr var_F4
  loc_71FC7A:  = Me.Text
  loc_71FC7F: ILdRf var_14C
  loc_71FC82: ILdRf var_A0
  loc_71FC85: ConcatStr
  loc_71FC86: FStStrNoPop var_1B4
  loc_71FC89: FLdPrThis
  loc_71FC8A: VCallAd Control_ID_txtListado
  loc_71FC8D: FStAdFunc var_1B8
  loc_71FC90: FLdPr var_1B8
  loc_71FC93: Me.Text = from_stack_1
  loc_71FC98: FFreeStr var_14C = ""
  loc_71FC9F: FFreeAd var_F4 = ""
  loc_71FCA8: FLdRfVar var_14C
  loc_71FCAB: FLdPrThis
  loc_71FCAC: VCallAd Control_ID_txtListado
  loc_71FCAF: FStAdFunc var_F4
  loc_71FCB2: FLdPr var_F4
  loc_71FCB5:  = Me.Text
  loc_71FCBA: FLdZeroAd var_14C
  loc_71FCBD: CVarStr var_138
  loc_71FCC0: LitI4 &HD
  loc_71FCC5: FLdRfVar var_108
  loc_71FCC8: ImpAdCallFPR4  = Chr()
  loc_71FCCD: FLdRfVar var_108
  loc_71FCD0: ConcatVar var_148
  loc_71FCD4: LitI4 &HA
  loc_71FCD9: FLdRfVar var_160
  loc_71FCDC: ImpAdCallFPR4  = Chr()
  loc_71FCE1: FLdRfVar var_160
  loc_71FCE4: ConcatVar var_170
  loc_71FCE8: LitI4 &HD
  loc_71FCED: FLdRfVar var_180
  loc_71FCF0: ImpAdCallFPR4  = Chr()
  loc_71FCF5: FLdRfVar var_180
  loc_71FCF8: ConcatVar var_190
  loc_71FCFC: LitI4 &HA
  loc_71FD01: FLdRfVar var_1A0
  loc_71FD04: ImpAdCallFPR4  = Chr()
  loc_71FD09: FLdRfVar var_1A0
  loc_71FD0C: ConcatVar var_1B0
  loc_71FD10: CStrVarVal var_1B4
  loc_71FD14: FLdPrThis
  loc_71FD15: VCallAd Control_ID_txtListado
  loc_71FD18: FStAdFunc var_1B8
  loc_71FD1B: FLdPr var_1B8
  loc_71FD1E: Me.Text = from_stack_1
  loc_71FD23: FFree1Str var_1B4
  loc_71FD26: FFreeAd var_F4 = ""
  loc_71FD2D: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_71FD44: FLdRfVar var_14C
  loc_71FD47: FLdPrThis
  loc_71FD48: VCallAd Control_ID_txtListado
  loc_71FD4B: FStAdFunc var_F4
  loc_71FD4E: FLdPr var_F4
  loc_71FD51:  = Me.Text
  loc_71FD56: FLdZeroAd var_14C
  loc_71FD59: CVarStr var_148
  loc_71FD5C: LitVarStr var_118, "="
  loc_71FD61: FStVarCopyObj var_108
  loc_71FD64: FLdRfVar var_108
  loc_71FD67: LitI4 &H50
  loc_71FD6C: FLdRfVar var_138
  loc_71FD6F: ImpAdCallFPR4  = String(, )
  loc_71FD74: FLdRfVar var_138
  loc_71FD77: ConcatVar var_160
  loc_71FD7B: LitI4 &HD
  loc_71FD80: FLdRfVar var_170
  loc_71FD83: ImpAdCallFPR4  = Chr()
  loc_71FD88: FLdRfVar var_170
  loc_71FD8B: ConcatVar var_180
  loc_71FD8F: LitI4 &HA
  loc_71FD94: FLdRfVar var_190
  loc_71FD97: ImpAdCallFPR4  = Chr()
  loc_71FD9C: FLdRfVar var_190
  loc_71FD9F: ConcatVar var_1A0
  loc_71FDA3: CStrVarVal var_1B4
  loc_71FDA7: FLdPrThis
  loc_71FDA8: VCallAd Control_ID_txtListado
  loc_71FDAB: FStAdFunc var_1B8
  loc_71FDAE: FLdPr var_1B8
  loc_71FDB1: Me.Text = from_stack_1
  loc_71FDB6: FFree1Str var_1B4
  loc_71FDB9: FFreeAd var_F4 = ""
  loc_71FDC0: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_71FDD5: FLdRfVar var_14C
  loc_71FDD8: FLdPrThis
  loc_71FDD9: VCallAd Control_ID_txtListado
  loc_71FDDC: FStAdFunc var_F4
  loc_71FDDF: FLdPr var_F4
  loc_71FDE2:  = Me.Text
  loc_71FDE7: FLdZeroAd var_14C
  loc_71FDEA: CVarStr var_138
  loc_71FDED: LitI2_Byte &H50
  loc_71FDEF: LitStr "OPERACIONES QUE REGULARIZAN VENTAS"
  loc_71FDF2: FLdRfVar var_108
  loc_71FDF5: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_71FDFA: FLdRfVar var_108
  loc_71FDFD: ConcatVar var_148
  loc_71FE01: LitI4 &HD
  loc_71FE06: FLdRfVar var_160
  loc_71FE09: ImpAdCallFPR4  = Chr()
  loc_71FE0E: FLdRfVar var_160
  loc_71FE11: ConcatVar var_170
  loc_71FE15: LitI4 &HA
  loc_71FE1A: FLdRfVar var_180
  loc_71FE1D: ImpAdCallFPR4  = Chr()
  loc_71FE22: FLdRfVar var_180
  loc_71FE25: ConcatVar var_190
  loc_71FE29: CStrVarVal var_1B4
  loc_71FE2D: FLdPrThis
  loc_71FE2E: VCallAd Control_ID_txtListado
  loc_71FE31: FStAdFunc var_1B8
  loc_71FE34: FLdPr var_1B8
  loc_71FE37: Me.Text = from_stack_1
  loc_71FE3C: FFree1Str var_1B4
  loc_71FE3F: FFreeAd var_F4 = ""
  loc_71FE46: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_71FE59: FLdRfVar var_14C
  loc_71FE5C: FLdPrThis
  loc_71FE5D: VCallAd Control_ID_txtListado
  loc_71FE60: FStAdFunc var_F4
  loc_71FE63: FLdPr var_F4
  loc_71FE66:  = Me.Text
  loc_71FE6B: FLdZeroAd var_14C
  loc_71FE6E: CVarStr var_148
  loc_71FE71: LitVarStr var_118, "-"
  loc_71FE76: FStVarCopyObj var_108
  loc_71FE79: FLdRfVar var_108
  loc_71FE7C: LitI4 &H50
  loc_71FE81: FLdRfVar var_138
  loc_71FE84: ImpAdCallFPR4  = String(, )
  loc_71FE89: FLdRfVar var_138
  loc_71FE8C: ConcatVar var_160
  loc_71FE90: LitI4 &HD
  loc_71FE95: FLdRfVar var_170
  loc_71FE98: ImpAdCallFPR4  = Chr()
  loc_71FE9D: FLdRfVar var_170
  loc_71FEA0: ConcatVar var_180
  loc_71FEA4: LitI4 &HA
  loc_71FEA9: FLdRfVar var_190
  loc_71FEAC: ImpAdCallFPR4  = Chr()
  loc_71FEB1: FLdRfVar var_190
  loc_71FEB4: ConcatVar var_1A0
  loc_71FEB8: CStrVarVal var_1B4
  loc_71FEBC: FLdPrThis
  loc_71FEBD: VCallAd Control_ID_txtListado
  loc_71FEC0: FStAdFunc var_1B8
  loc_71FEC3: FLdPr var_1B8
  loc_71FEC6: Me.Text = from_stack_1
  loc_71FECB: FFree1Str var_1B4
  loc_71FECE: FFreeAd var_F4 = ""
  loc_71FED5: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_71FEEA: FLdRfVar var_14C
  loc_71FEED: FLdPrThis
  loc_71FEEE: VCallAd Control_ID_txtListado
  loc_71FEF1: FStAdFunc var_F4
  loc_71FEF4: FLdPr var_F4
  loc_71FEF7:  = Me.Text
  loc_71FEFC: FLdZeroAd var_14C
  loc_71FEFF: CVarStr var_138
  loc_71FF02: LitI4 2
  loc_71FF07: FLdRfVar var_108
  loc_71FF0A: ImpAdCallFPR4  = Space()
  loc_71FF0F: FLdRfVar var_108
  loc_71FF12: ConcatVar var_148
  loc_71FF16: LitVarStr var_118, "FECHA"
  loc_71FF1B: ConcatVar var_160
  loc_71FF1F: LitI4 5
  loc_71FF24: FLdRfVar var_170
  loc_71FF27: ImpAdCallFPR4  = Space()
  loc_71FF2C: FLdRfVar var_170
  loc_71FF2F: ConcatVar var_180
  loc_71FF33: LitVarStr var_128, "COD."
  loc_71FF38: ConcatVar var_190
  loc_71FF3C: LitI4 3
  loc_71FF41: FLdRfVar var_1A0
  loc_71FF44: ImpAdCallFPR4  = Space()
  loc_71FF49: FLdRfVar var_1A0
  loc_71FF4C: ConcatVar var_1B0
  loc_71FF50: LitVarStr var_1C8, "COD."
  loc_71FF55: ConcatVar var_1EC
  loc_71FF59: LitI4 9
  loc_71FF5E: FLdRfVar var_1FC
  loc_71FF61: ImpAdCallFPR4  = Space()
  loc_71FF66: FLdRfVar var_1FC
  loc_71FF69: ConcatVar var_20C
  loc_71FF6D: LitVarStr var_1D8, "PRODUCTO"
  loc_71FF72: ConcatVar var_21C
  loc_71FF76: LitI4 &HC
  loc_71FF7B: FLdRfVar var_22C
  loc_71FF7E: ImpAdCallFPR4  = Space()
  loc_71FF83: FLdRfVar var_22C
  loc_71FF86: ConcatVar var_27C
  loc_71FF8A: LitVarStr var_23C, "NIV."
  loc_71FF8F: ConcatVar var_28C
  loc_71FF93: LitI4 2
  loc_71FF98: FLdRfVar var_29C
  loc_71FF9B: ImpAdCallFPR4  = Space()
  loc_71FFA0: FLdRfVar var_29C
  loc_71FFA3: ConcatVar var_2AC
  loc_71FFA7: LitVarStr var_24C, "VOLUMEN"
  loc_71FFAC: ConcatVar var_2BC
  loc_71FFB0: LitI4 &HD
  loc_71FFB5: FLdRfVar var_2CC
  loc_71FFB8: ImpAdCallFPR4  = Chr()
  loc_71FFBD: FLdRfVar var_2CC
  loc_71FFC0: ConcatVar var_2DC
  loc_71FFC4: LitI4 &HA
  loc_71FFC9: FLdRfVar var_2EC
  loc_71FFCC: ImpAdCallFPR4  = Chr()
  loc_71FFD1: FLdRfVar var_2EC
  loc_71FFD4: ConcatVar var_2FC
  loc_71FFD8: CStrVarVal var_1B4
  loc_71FFDC: FLdPrThis
  loc_71FFDD: VCallAd Control_ID_txtListado
  loc_71FFE0: FStAdFunc var_1B8
  loc_71FFE3: FLdPr var_1B8
  loc_71FFE6: Me.Text = from_stack_1
  loc_71FFEB: FFree1Str var_1B4
  loc_71FFEE: FFreeAd var_F4 = ""
  loc_71FFF5: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = ""
  loc_720028: FLdRfVar var_14C
  loc_72002B: FLdPrThis
  loc_72002C: VCallAd Control_ID_txtListado
  loc_72002F: FStAdFunc var_F4
  loc_720032: FLdPr var_F4
  loc_720035:  = Me.Text
  loc_72003A: FLdZeroAd var_14C
  loc_72003D: CVarStr var_138
  loc_720040: LitI4 &HC
  loc_720045: FLdRfVar var_108
  loc_720048: ImpAdCallFPR4  = Space()
  loc_72004D: FLdRfVar var_108
  loc_720050: ConcatVar var_148
  loc_720054: LitVarStr var_118, "OPER."
  loc_720059: ConcatVar var_160
  loc_72005D: LitI4 2
  loc_720062: FLdRfVar var_170
  loc_720065: ImpAdCallFPR4  = Space()
  loc_72006A: FLdRfVar var_170
  loc_72006D: ConcatVar var_180
  loc_720071: LitVarStr var_128, "CLIENTE"
  loc_720076: ConcatVar var_190
  loc_72007A: LitI4 2
  loc_72007F: FLdRfVar var_1A0
  loc_720082: ImpAdCallFPR4  = Space()
  loc_720087: FLdRfVar var_1A0
  loc_72008A: ConcatVar var_1B0
  loc_72008E: LitI4 &HD
  loc_720093: FLdRfVar var_1EC
  loc_720096: ImpAdCallFPR4  = Chr()
  loc_72009B: FLdRfVar var_1EC
  loc_72009E: ConcatVar var_1FC
  loc_7200A2: LitI4 &HA
  loc_7200A7: FLdRfVar var_20C
  loc_7200AA: ImpAdCallFPR4  = Chr()
  loc_7200AF: FLdRfVar var_20C
  loc_7200B2: ConcatVar var_21C
  loc_7200B6: CStrVarVal var_1B4
  loc_7200BA: FLdPrThis
  loc_7200BB: VCallAd Control_ID_txtListado
  loc_7200BE: FStAdFunc var_1B8
  loc_7200C1: FLdPr var_1B8
  loc_7200C4: Me.Text = from_stack_1
  loc_7200C9: FFree1Str var_1B4
  loc_7200CC: FFreeAd var_F4 = ""
  loc_7200D3: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_1FC = "": var_20C = ""
  loc_7200F2: FLdRfVar var_14C
  loc_7200F5: FLdPrThis
  loc_7200F6: VCallAd Control_ID_txtListado
  loc_7200F9: FStAdFunc var_F4
  loc_7200FC: FLdPr var_F4
  loc_7200FF:  = Me.Text
  loc_720104: FLdZeroAd var_14C
  loc_720107: CVarStr var_148
  loc_72010A: LitVarStr var_118, "="
  loc_72010F: FStVarCopyObj var_108
  loc_720112: FLdRfVar var_108
  loc_720115: LitI4 &H50
  loc_72011A: FLdRfVar var_138
  loc_72011D: ImpAdCallFPR4  = String(, )
  loc_720122: FLdRfVar var_138
  loc_720125: ConcatVar var_160
  loc_720129: LitI4 &HD
  loc_72012E: FLdRfVar var_170
  loc_720131: ImpAdCallFPR4  = Chr()
  loc_720136: FLdRfVar var_170
  loc_720139: ConcatVar var_180
  loc_72013D: LitI4 &HA
  loc_720142: FLdRfVar var_190
  loc_720145: ImpAdCallFPR4  = Chr()
  loc_72014A: FLdRfVar var_190
  loc_72014D: ConcatVar var_1A0
  loc_720151: CStrVarVal var_1B4
  loc_720155: FLdPrThis
  loc_720156: VCallAd Control_ID_txtListado
  loc_720159: FStAdFunc var_1B8
  loc_72015C: FLdPr var_1B8
  loc_72015F: Me.Text = from_stack_1
  loc_720164: FFree1Str var_1B4
  loc_720167: FFreeAd var_F4 = ""
  loc_72016E: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_720183: ILdRf var_B8
  loc_720186: LitI4 1
  loc_72018B: AddI4
  loc_72018C: FStR4 var_B0
  loc_720191: ILdRf var_B0
  loc_720194: ILdRf var_BC
  loc_720197: LtI4
  loc_720198: BranchF loc_7205B5
  loc_72019D: LitVarI2 var_108, 30
  loc_7201A2: ILdRf var_B0
  loc_7201A5: FLdPr Me
  loc_7201A8: MemLdRfVar from_stack_1.sData
  loc_7201AB: CVarRef
  loc_7201B0: FLdRfVar var_138
  loc_7201B3: ImpAdCallFPR4  = Mid(, , )
  loc_7201B8: FLdRfVar var_138
  loc_7201BB: LitVarStr var_1C8, vbNullString
  loc_7201C0: ConcatVar var_148
  loc_7201C4: CStrVarTmp
  loc_7201C5: FStStr var_94
  loc_7201C8: FFreeVar var_108 = "": var_138 = ""
  loc_7201D3: LitVarI2 var_108, 2
  loc_7201D8: LitI4 7
  loc_7201DD: FLdRfVar var_94
  loc_7201E0: CVarRef
  loc_7201E5: FLdRfVar var_138
  loc_7201E8: ImpAdCallFPR4  = Mid(, , )
  loc_7201ED: FLdRfVar var_138
  loc_7201F0: LitVarStr var_1C8, "/"
  loc_7201F5: ConcatVar var_148
  loc_7201F9: LitVarI2 var_160, 2
  loc_7201FE: LitI4 5
  loc_720203: FLdRfVar var_94
  loc_720206: CVarRef
  loc_72020B: FLdRfVar var_170
  loc_72020E: ImpAdCallFPR4  = Mid(, , )
  loc_720213: FLdRfVar var_170
  loc_720216: ConcatVar var_180
  loc_72021A: LitVarStr var_24C, "/"
  loc_72021F: ConcatVar var_190
  loc_720223: LitVarI2 var_1A0, 4
  loc_720228: LitI4 1
  loc_72022D: FLdRfVar var_94
  loc_720230: CVarRef
  loc_720235: FLdRfVar var_1B0
  loc_720238: ImpAdCallFPR4  = Mid(, , )
  loc_72023D: FLdRfVar var_1B0
  loc_720240: ConcatVar var_1EC
  loc_720244: CStrVarTmp
  loc_720245: FStStr var_98
  loc_720248: FFreeVar var_108 = "": var_138 = "": var_160 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_190 = "": var_1B0 = ""
  loc_720261: LitVarI2 var_108, 3
  loc_720266: LitI4 9
  loc_72026B: FLdRfVar var_94
  loc_72026E: CVarRef
  loc_720273: FLdRfVar var_138
  loc_720276: ImpAdCallFPR4  = Mid(, , )
  loc_72027B: FLdRfVar var_138
  loc_72027E: CStrVarTmp
  loc_72027F: FStStr var_300
  loc_720282: FFreeVar var_108 = ""
  loc_72028B: FLdRfVar var_F6
  loc_72028E: ImpAdLdRf MemVar_74A220
  loc_720291: NewIfNullPr clsProducts
  loc_720294: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_720299: LitVarI2 var_108, 2
  loc_72029E: LitI4 &HC
  loc_7202A3: FLdRfVar var_94
  loc_7202A6: CVarRef
  loc_7202AB: FLdRfVar var_138
  loc_7202AE: ImpAdCallFPR4  = Mid(, , )
  loc_7202B3: FLdRfVar var_138
  loc_7202B6: CStrVarVal var_14C
  loc_7202BA: ImpAdCallFPR4 push Val()
  loc_7202BF: CR8R8
  loc_7202C0: FLdI2 var_F6
  loc_7202C3: CR8I2
  loc_7202C4: LeR8
  loc_7202C5: LitVarI2 var_148, 2
  loc_7202CA: LitI4 &HC
  loc_7202CF: FLdRfVar var_94
  loc_7202D2: CVarRef
  loc_7202D7: FLdRfVar var_160
  loc_7202DA: ImpAdCallFPR4  = Mid(, , )
  loc_7202DF: FLdRfVar var_160
  loc_7202E2: CStrVarVal var_1B4
  loc_7202E6: ImpAdCallFPR4 push Val()
  loc_7202EB: CR8R8
  loc_7202EC: LitI2_Byte 0
  loc_7202EE: CR8I2
  loc_7202EF: GtR4
  loc_7202F0: AndI4
  loc_7202F1: FFreeStr var_14C = ""
  loc_7202F8: FFreeVar var_108 = "": var_138 = "": var_148 = ""
  loc_720303: BranchF loc_72035A
  loc_720308: LitVarI2 var_108, 2
  loc_72030D: LitI4 &HC
  loc_720312: FLdRfVar var_94
  loc_720315: CVarRef
  loc_72031A: FLdRfVar var_138
  loc_72031D: ImpAdCallFPR4  = Mid(, , )
  loc_720322: FLdRfVar var_138
  loc_720325: CStrVarVal var_14C
  loc_720329: ImpAdCallFPR4 push Val()
  loc_72032E: FStFPR8 var_33C
  loc_720331: FLdRfVar var_1B4
  loc_720334: FLdFPR8 var_33C
  loc_720337: CI2R8
  loc_720338: ImpAdLdRf MemVar_74A220
  loc_72033B: NewIfNullPr clsProducts
  loc_720343: FLdZeroAd var_1B4
  loc_720346: FLdRfVar var_328
  loc_720349: StFixedStrFree
  loc_72034D: FFree1Str var_14C
  loc_720350: FFreeVar var_108 = ""
  loc_720357: Branch loc_720395
  loc_72035E: LitVarStr var_1C8, "Cod. "
  loc_720363: LitVarI2 var_108, 2
  loc_720368: LitI4 &HC
  loc_72036D: FLdRfVar var_94
  loc_720370: CVarRef
  loc_720375: FLdRfVar var_138
  loc_720378: ImpAdCallFPR4  = Mid(, , )
  loc_72037D: FLdRfVar var_138
  loc_720380: ConcatVar var_148
  loc_720384: CStrVarTmp
  loc_720385: FLdRfVar var_328
  loc_720388: StFixedStrFree
  loc_72038C: FFreeVar var_108 = "": var_138 = ""
  loc_720399: LitVarI2 var_108, 1
  loc_72039E: LitI4 &HE
  loc_7203A3: FLdRfVar var_94
  loc_7203A6: CVarRef
  loc_7203AB: FLdRfVar var_138
  loc_7203AE: ImpAdCallFPR4  = Mid(, , )
  loc_7203B3: FLdRfVar var_138
  loc_7203B6: CStrVarTmp
  loc_7203B7: FStStr var_330
  loc_7203BA: FFreeVar var_108 = ""
  loc_7203C3: LitVarI2 var_108, 8
  loc_7203C8: LitI4 &HF
  loc_7203CD: FLdRfVar var_94
  loc_7203D0: CVarRef
  loc_7203D5: FLdRfVar var_138
  loc_7203D8: ImpAdCallFPR4  = Mid(, , )
  loc_7203DD: FLdRfVar var_138
  loc_7203E0: CStrVarTmp
  loc_7203E1: FStStr var_334
  loc_7203E4: FFreeVar var_108 = ""
  loc_7203ED: LitVarI2 var_108, 8
  loc_7203F2: LitI4 &H17
  loc_7203F7: FLdRfVar var_94
  loc_7203FA: CVarRef
  loc_7203FF: FLdRfVar var_138
  loc_720402: ImpAdCallFPR4  = Mid(, , )
  loc_720407: FLdRfVar var_138
  loc_72040A: CStrVarTmp
  loc_72040B: FStStr var_32C
  loc_72040E: FFreeVar var_108 = ""
  loc_720417: ILdRf var_32C
  loc_72041A: ImpAdCallFPR4 push Val()
  loc_72041F: FStFPR8 var_33C
  loc_720422: LitI4 1
  loc_720427: LitI4 1
  loc_72042C: LitVarStr var_23C, "#####0.00"
  loc_720431: FStVarCopyObj var_2AC
  loc_720434: FLdRfVar var_2AC
  loc_720437: FLdFPR8 var_33C
  loc_72043A: LitI2_Byte &H64
  loc_72043C: CR8I2
  loc_72043D: DivR8
  loc_72043E: CVarR8
  loc_720442: FLdRfVar var_2BC
  loc_720445: ImpAdCallFPR4  = Format(, )
  loc_72044A: FLdRfVar var_14C
  loc_72044D: FLdPrThis
  loc_72044E: VCallAd Control_ID_txtListado
  loc_720451: FStAdFunc var_F4
  loc_720454: FLdPr var_F4
  loc_720457:  = Me.Text
  loc_72045C: ILdRf var_14C
  loc_72045F: ILdRf var_98
  loc_720462: ConcatStr
  loc_720463: CVarStr var_138
  loc_720466: LitI4 3
  loc_72046B: FLdRfVar var_108
  loc_72046E: ImpAdCallFPR4  = Space()
  loc_720473: FLdRfVar var_108
  loc_720476: ConcatVar var_148
  loc_72047A: ILdRf var_300
  loc_72047D: CVarStr var_118
  loc_720480: ConcatVar var_160
  loc_720484: LitI4 3
  loc_720489: FLdRfVar var_170
  loc_72048C: ImpAdCallFPR4  = Space()
  loc_720491: FLdRfVar var_170
  loc_720494: ConcatVar var_180
  loc_720498: ILdRf var_334
  loc_72049B: CVarStr var_128
  loc_72049E: ConcatVar var_190
  loc_7204A2: LitI4 3
  loc_7204A7: FLdRfVar var_1A0
  loc_7204AA: ImpAdCallFPR4  = Space()
  loc_7204AF: FLdRfVar var_1A0
  loc_7204B2: ConcatVar var_1B0
  loc_7204B6: FLdRfVar var_328
  loc_7204B9: LdFixedStr
  loc_7204BC: CVarStr var_1EC
  loc_7204BF: ConcatVar var_1FC
  loc_7204C3: LitI4 3
  loc_7204C8: FLdRfVar var_20C
  loc_7204CB: ImpAdCallFPR4  = Space()
  loc_7204D0: FLdRfVar var_20C
  loc_7204D3: ConcatVar var_21C
  loc_7204D7: ILdRf var_330
  loc_7204DA: CVarStr var_1C8
  loc_7204DD: ConcatVar var_22C
  loc_7204E1: LitI4 3
  loc_7204E6: FLdRfVar var_27C
  loc_7204E9: ImpAdCallFPR4  = Space()
  loc_7204EE: FLdRfVar var_27C
  loc_7204F1: ConcatVar var_28C
  loc_7204F5: LitI4 1
  loc_7204FA: LitI4 1
  loc_7204FF: LitVarStr var_24C, "@@@@@@@@@"
  loc_720504: FStVarCopyObj var_2CC
  loc_720507: FLdRfVar var_2CC
  loc_72050A: FLdRfVar var_2BC
  loc_72050D: FLdRfVar var_2DC
  loc_720510: ImpAdCallFPR4  = Format(, )
  loc_720515: FLdRfVar var_2DC
  loc_720518: ConcatVar var_2EC
  loc_72051C: LitI4 &HD
  loc_720521: FLdRfVar var_2FC
  loc_720524: ImpAdCallFPR4  = Chr()
  loc_720529: FLdRfVar var_2FC
  loc_72052C: ConcatVar var_34C
  loc_720530: LitI4 &HA
  loc_720535: FLdRfVar var_35C
  loc_720538: ImpAdCallFPR4  = Chr()
  loc_72053D: FLdRfVar var_35C
  loc_720540: ConcatVar var_36C
  loc_720544: CStrVarVal var_1B4
  loc_720548: FLdPrThis
  loc_720549: VCallAd Control_ID_txtListado
  loc_72054C: FStAdFunc var_1B8
  loc_72054F: FLdPr var_1B8
  loc_720552: Me.Text = from_stack_1
  loc_720557: FFreeStr var_14C = ""
  loc_72055E: FFreeAd var_F4 = ""
  loc_720565: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_27C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_28C = "": var_2DC = "": var_2EC = "": var_2FC = "": var_34C = "": var_35C = ""
  loc_72059E: ILdRf var_B0
  loc_7205A1: LitI4 &H16
  loc_7205A6: AddI4
  loc_7205A7: LitI4 8
  loc_7205AC: AddI4
  loc_7205AD: FStR4 var_B0
  loc_7205B2: Branch loc_72018F
  loc_7205B7: FLdRfVar var_14C
  loc_7205BA: FLdPrThis
  loc_7205BB: VCallAd Control_ID_txtListado
  loc_7205BE: FStAdFunc var_F4
  loc_7205C1: FLdPr var_F4
  loc_7205C4:  = Me.Text
  loc_7205C9: FLdZeroAd var_14C
  loc_7205CC: CVarStr var_138
  loc_7205CF: LitI4 &HD
  loc_7205D4: FLdRfVar var_108
  loc_7205D7: ImpAdCallFPR4  = Chr()
  loc_7205DC: FLdRfVar var_108
  loc_7205DF: ConcatVar var_148
  loc_7205E3: LitI4 &HA
  loc_7205E8: FLdRfVar var_160
  loc_7205EB: ImpAdCallFPR4  = Chr()
  loc_7205F0: FLdRfVar var_160
  loc_7205F3: ConcatVar var_170
  loc_7205F7: LitI4 &HD
  loc_7205FC: FLdRfVar var_180
  loc_7205FF: ImpAdCallFPR4  = Chr()
  loc_720604: FLdRfVar var_180
  loc_720607: ConcatVar var_190
  loc_72060B: LitI4 &HA
  loc_720610: FLdRfVar var_1A0
  loc_720613: ImpAdCallFPR4  = Chr()
  loc_720618: FLdRfVar var_1A0
  loc_72061B: ConcatVar var_1B0
  loc_72061F: CStrVarVal var_1B4
  loc_720623: FLdPrThis
  loc_720624: VCallAd Control_ID_txtListado
  loc_720627: FStAdFunc var_1B8
  loc_72062A: FLdPr var_1B8
  loc_72062D: Me.Text = from_stack_1
  loc_720632: FFree1Str var_1B4
  loc_720635: FFreeAd var_F4 = ""
  loc_72063C: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_720653: FLdRfVar var_14C
  loc_720656: FLdPrThis
  loc_720657: VCallAd Control_ID_txtListado
  loc_72065A: FStAdFunc var_F4
  loc_72065D: FLdPr var_F4
  loc_720660:  = Me.Text
  loc_720665: FLdZeroAd var_14C
  loc_720668: CVarStr var_148
  loc_72066B: LitVarStr var_118, "="
  loc_720670: FStVarCopyObj var_108
  loc_720673: FLdRfVar var_108
  loc_720676: LitI4 &H50
  loc_72067B: FLdRfVar var_138
  loc_72067E: ImpAdCallFPR4  = String(, )
  loc_720683: FLdRfVar var_138
  loc_720686: ConcatVar var_160
  loc_72068A: LitI4 &HD
  loc_72068F: FLdRfVar var_170
  loc_720692: ImpAdCallFPR4  = Chr()
  loc_720697: FLdRfVar var_170
  loc_72069A: ConcatVar var_180
  loc_72069E: LitI4 &HA
  loc_7206A3: FLdRfVar var_190
  loc_7206A6: ImpAdCallFPR4  = Chr()
  loc_7206AB: FLdRfVar var_190
  loc_7206AE: ConcatVar var_1A0
  loc_7206B2: CStrVarVal var_1B4
  loc_7206B6: FLdPrThis
  loc_7206B7: VCallAd Control_ID_txtListado
  loc_7206BA: FStAdFunc var_1B8
  loc_7206BD: FLdPr var_1B8
  loc_7206C0: Me.Text = from_stack_1
  loc_7206C5: FFree1Str var_1B4
  loc_7206C8: FFreeAd var_F4 = ""
  loc_7206CF: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_7206E4: FLdRfVar var_14C
  loc_7206E7: FLdPrThis
  loc_7206E8: VCallAd Control_ID_txtListado
  loc_7206EB: FStAdFunc var_F4
  loc_7206EE: FLdPr var_F4
  loc_7206F1:  = Me.Text
  loc_7206F6: FLdZeroAd var_14C
  loc_7206F9: CVarStr var_138
  loc_7206FC: LitI2_Byte &H50
  loc_7206FE: LitStr "TOTALIZADORES INICIALES DEL MES"
  loc_720701: FLdRfVar var_108
  loc_720704: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_720709: FLdRfVar var_108
  loc_72070C: ConcatVar var_148
  loc_720710: LitI4 &HD
  loc_720715: FLdRfVar var_160
  loc_720718: ImpAdCallFPR4  = Chr()
  loc_72071D: FLdRfVar var_160
  loc_720720: ConcatVar var_170
  loc_720724: LitI4 &HA
  loc_720729: FLdRfVar var_180
  loc_72072C: ImpAdCallFPR4  = Chr()
  loc_720731: FLdRfVar var_180
  loc_720734: ConcatVar var_190
  loc_720738: CStrVarVal var_1B4
  loc_72073C: FLdPrThis
  loc_72073D: VCallAd Control_ID_txtListado
  loc_720740: FStAdFunc var_1B8
  loc_720743: FLdPr var_1B8
  loc_720746: Me.Text = from_stack_1
  loc_72074B: FFree1Str var_1B4
  loc_72074E: FFreeAd var_F4 = ""
  loc_720755: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_720768: FLdRfVar var_14C
  loc_72076B: FLdPrThis
  loc_72076C: VCallAd Control_ID_txtListado
  loc_72076F: FStAdFunc var_F4
  loc_720772: FLdPr var_F4
  loc_720775:  = Me.Text
  loc_72077A: FLdZeroAd var_14C
  loc_72077D: CVarStr var_148
  loc_720780: LitVarStr var_118, "-"
  loc_720785: FStVarCopyObj var_108
  loc_720788: FLdRfVar var_108
  loc_72078B: LitI4 &H50
  loc_720790: FLdRfVar var_138
  loc_720793: ImpAdCallFPR4  = String(, )
  loc_720798: FLdRfVar var_138
  loc_72079B: ConcatVar var_160
  loc_72079F: LitI4 &HD
  loc_7207A4: FLdRfVar var_170
  loc_7207A7: ImpAdCallFPR4  = Chr()
  loc_7207AC: FLdRfVar var_170
  loc_7207AF: ConcatVar var_180
  loc_7207B3: LitI4 &HA
  loc_7207B8: FLdRfVar var_190
  loc_7207BB: ImpAdCallFPR4  = Chr()
  loc_7207C0: FLdRfVar var_190
  loc_7207C3: ConcatVar var_1A0
  loc_7207C7: CStrVarVal var_1B4
  loc_7207CB: FLdPrThis
  loc_7207CC: VCallAd Control_ID_txtListado
  loc_7207CF: FStAdFunc var_1B8
  loc_7207D2: FLdPr var_1B8
  loc_7207D5: Me.Text = from_stack_1
  loc_7207DA: FFree1Str var_1B4
  loc_7207DD: FFreeAd var_F4 = ""
  loc_7207E4: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_7207F9: FLdRfVar var_14C
  loc_7207FC: FLdPrThis
  loc_7207FD: VCallAd Control_ID_txtListado
  loc_720800: FStAdFunc var_F4
  loc_720803: FLdPr var_F4
  loc_720806:  = Me.Text
  loc_72080B: FLdZeroAd var_14C
  loc_72080E: CVarStr var_138
  loc_720811: LitI4 1
  loc_720816: FLdRfVar var_108
  loc_720819: ImpAdCallFPR4  = Space()
  loc_72081E: FLdRfVar var_108
  loc_720821: ConcatVar var_148
  loc_720825: LitVarStr var_118, "SURT."
  loc_72082A: ConcatVar var_160
  loc_72082E: LitI4 1
  loc_720833: FLdRfVar var_170
  loc_720836: ImpAdCallFPR4  = Space()
  loc_72083B: FLdRfVar var_170
  loc_72083E: ConcatVar var_180
  loc_720842: LitVarStr var_128, "PRODUCTO"
  loc_720847: ConcatVar var_190
  loc_72084B: LitI4 &H12
  loc_720850: FLdRfVar var_1A0
  loc_720853: ImpAdCallFPR4  = Space()
  loc_720858: FLdRfVar var_1A0
  loc_72085B: ConcatVar var_1B0
  loc_72085F: LitVarStr var_1C8, "TOTALIZADOR"
  loc_720864: ConcatVar var_1EC
  loc_720868: LitI4 &HD
  loc_72086D: FLdRfVar var_1FC
  loc_720870: ImpAdCallFPR4  = Chr()
  loc_720875: FLdRfVar var_1FC
  loc_720878: ConcatVar var_20C
  loc_72087C: LitI4 &HA
  loc_720881: FLdRfVar var_21C
  loc_720884: ImpAdCallFPR4  = Chr()
  loc_720889: FLdRfVar var_21C
  loc_72088C: ConcatVar var_22C
  loc_720890: CStrVarVal var_1B4
  loc_720894: FLdPrThis
  loc_720895: VCallAd Control_ID_txtListado
  loc_720898: FStAdFunc var_1B8
  loc_72089B: FLdPr var_1B8
  loc_72089E: Me.Text = from_stack_1
  loc_7208A3: FFree1Str var_1B4
  loc_7208A6: FFreeAd var_F4 = ""
  loc_7208AD: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = ""
  loc_7208CE: FLdRfVar var_14C
  loc_7208D1: FLdPrThis
  loc_7208D2: VCallAd Control_ID_txtListado
  loc_7208D5: FStAdFunc var_F4
  loc_7208D8: FLdPr var_F4
  loc_7208DB:  = Me.Text
  loc_7208E0: FLdZeroAd var_14C
  loc_7208E3: CVarStr var_138
  loc_7208E6: LitI4 1
  loc_7208EB: FLdRfVar var_108
  loc_7208EE: ImpAdCallFPR4  = Space()
  loc_7208F3: FLdRfVar var_108
  loc_7208F6: ConcatVar var_148
  loc_7208FA: LitVarStr var_118, "PICO"
  loc_7208FF: ConcatVar var_160
  loc_720903: LitI4 &HD
  loc_720908: FLdRfVar var_170
  loc_72090B: ImpAdCallFPR4  = Chr()
  loc_720910: FLdRfVar var_170
  loc_720913: ConcatVar var_180
  loc_720917: LitI4 &HA
  loc_72091C: FLdRfVar var_190
  loc_72091F: ImpAdCallFPR4  = Chr()
  loc_720924: FLdRfVar var_190
  loc_720927: ConcatVar var_1A0
  loc_72092B: CStrVarVal var_1B4
  loc_72092F: FLdPrThis
  loc_720930: VCallAd Control_ID_txtListado
  loc_720933: FStAdFunc var_1B8
  loc_720936: FLdPr var_1B8
  loc_720939: Me.Text = from_stack_1
  loc_72093E: FFree1Str var_1B4
  loc_720941: FFreeAd var_F4 = ""
  loc_720948: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_72095D: FLdRfVar var_14C
  loc_720960: FLdPrThis
  loc_720961: VCallAd Control_ID_txtListado
  loc_720964: FStAdFunc var_F4
  loc_720967: FLdPr var_F4
  loc_72096A:  = Me.Text
  loc_72096F: FLdZeroAd var_14C
  loc_720972: CVarStr var_148
  loc_720975: LitVarStr var_118, "="
  loc_72097A: FStVarCopyObj var_108
  loc_72097D: FLdRfVar var_108
  loc_720980: LitI4 &H50
  loc_720985: FLdRfVar var_138
  loc_720988: ImpAdCallFPR4  = String(, )
  loc_72098D: FLdRfVar var_138
  loc_720990: ConcatVar var_160
  loc_720994: LitI4 &HD
  loc_720999: FLdRfVar var_170
  loc_72099C: ImpAdCallFPR4  = Chr()
  loc_7209A1: FLdRfVar var_170
  loc_7209A4: ConcatVar var_180
  loc_7209A8: LitI4 &HA
  loc_7209AD: FLdRfVar var_190
  loc_7209B0: ImpAdCallFPR4  = Chr()
  loc_7209B5: FLdRfVar var_190
  loc_7209B8: ConcatVar var_1A0
  loc_7209BC: CStrVarVal var_1B4
  loc_7209C0: FLdPrThis
  loc_7209C1: VCallAd Control_ID_txtListado
  loc_7209C4: FStAdFunc var_1B8
  loc_7209C7: FLdPr var_1B8
  loc_7209CA: Me.Text = from_stack_1
  loc_7209CF: FFree1Str var_1B4
  loc_7209D2: FFreeAd var_F4 = ""
  loc_7209D9: FFreeVar var_108 = "": var_148 = "": var_138 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_7209EE: ILdRf var_BC
  loc_7209F1: LitI4 1
  loc_7209F6: AddI4
  loc_7209F7: FStR4 var_B0
  loc_7209FC: ILdRf var_B0
  loc_7209FF: FLdPr Me
  loc_720A02: MemLdStr sData
  loc_720A05: FnLenStr
  loc_720A06: LtI4
  loc_720A07: BranchF loc_720D96
  loc_720A0C: LitVarI2 var_108, 11
  loc_720A11: ILdRf var_B0
  loc_720A14: FLdPr Me
  loc_720A17: MemLdRfVar from_stack_1.sData
  loc_720A1A: CVarRef
  loc_720A1F: FLdRfVar var_138
  loc_720A22: ImpAdCallFPR4  = Mid(, , )
  loc_720A27: FLdRfVar var_138
  loc_720A2A: LitVarStr var_1C8, vbNullString
  loc_720A2F: ConcatVar var_148
  loc_720A33: CStrVarTmp
  loc_720A34: FStStr var_94
  loc_720A37: FFreeVar var_108 = "": var_138 = ""
  loc_720A42: LitVarI2 var_108, 2
  loc_720A47: LitI4 1
  loc_720A4C: FLdRfVar var_94
  loc_720A4F: CVarRef
  loc_720A54: FLdRfVar var_138
  loc_720A57: ImpAdCallFPR4  = Mid(, , )
  loc_720A5C: FLdRfVar var_138
  loc_720A5F: CStrVarTmp
  loc_720A60: FStStr var_370
  loc_720A63: FFreeVar var_108 = ""
  loc_720A6C: LitVarI2 var_108, 1
  loc_720A71: LitI4 3
  loc_720A76: FLdRfVar var_94
  loc_720A79: CVarRef
  loc_720A7E: FLdRfVar var_138
  loc_720A81: ImpAdCallFPR4  = Mid(, , )
  loc_720A86: FLdRfVar var_138
  loc_720A89: CStrVarTmp
  loc_720A8A: FStStr var_378
  loc_720A8D: FFreeVar var_108 = ""
  loc_720A96: LitVarI2 var_108, 8
  loc_720A9B: LitI4 4
  loc_720AA0: FLdRfVar var_94
  loc_720AA3: CVarRef
  loc_720AA8: FLdRfVar var_138
  loc_720AAB: ImpAdCallFPR4  = Mid(, , )
  loc_720AB0: FLdRfVar var_138
  loc_720AB3: CStrVarTmp
  loc_720AB4: FStStr var_374
  loc_720AB7: FFreeVar var_108 = ""
  loc_720AC0: LitI4 0
  loc_720AC5: LitI4 9
  loc_720ACA: FLdRfVar var_380
  loc_720ACD: Redim
  loc_720AD7: ILdRf var_378
  loc_720ADA: LitStr "_"
  loc_720ADD: EqStr
  loc_720ADF: CVarBoolI2 var_118
  loc_720AE3: ParmAry1St
  loc_720AE9: LitVarI2 var_128, 0
  loc_720AEE: LitI4 1
  loc_720AF3: ILdRf var_380
  loc_720AF6: Ary1StVar
  loc_720AF7: ILdRf var_378
  loc_720AFA: LitStr "a"
  loc_720AFD: EqStr
  loc_720AFF: CVarBoolI2 var_1C8
  loc_720B03: ParmAry1St
  loc_720B09: LitVarI2 var_1D8, 0
  loc_720B0E: LitI4 3
  loc_720B13: ILdRf var_380
  loc_720B16: Ary1StVar
  loc_720B17: ILdRf var_378
  loc_720B1A: LitStr "b"
  loc_720B1D: EqStr
  loc_720B1F: CVarBoolI2 var_23C
  loc_720B23: ParmAry1St
  loc_720B29: LitVarI2 var_24C, 1
  loc_720B2E: LitI4 5
  loc_720B33: ILdRf var_380
  loc_720B36: Ary1StVar
  loc_720B37: ILdRf var_378
  loc_720B3A: LitStr "c"
  loc_720B3D: EqStr
  loc_720B3F: CVarBoolI2 var_25C
  loc_720B43: ParmAry1St
  loc_720B49: LitVarI2 var_26C, 2
  loc_720B4E: LitI4 7
  loc_720B53: ILdRf var_380
  loc_720B56: Ary1StVar
  loc_720B57: ILdRf var_378
  loc_720B5A: LitStr "d"
  loc_720B5D: EqStr
  loc_720B5F: CVarBoolI2 var_390
  loc_720B63: ParmAry1St
  loc_720B69: LitVarI2 var_3A0, 3
  loc_720B6E: LitI4 9
  loc_720B73: ILdRf var_380
  loc_720B76: Ary1StVar
  loc_720B77: FLdRfVar var_380
  loc_720B7A: FLdRfVar var_108
  loc_720B7D: ImpAdCallFPR4  = Switch()
  loc_720B82: FLdRfVar var_380
  loc_720B85: Erase
  loc_720B86: FLdRfVar var_108
  loc_720B89: CI2Var
  loc_720B8A: FStI2 var_37A
  loc_720B8D: FFree1Var var_108 = ""
  loc_720B92: ILdRf var_370
  loc_720B95: ImpAdCallFPR4 push Val()
  loc_720B9A: CI4R8
  loc_720B9B: FLdI2 var_37A
  loc_720B9E: CI4UI1
  loc_720B9F: ImpAdLdRf MemVar_74C12C
  loc_720BA2: AryLdPr
  loc_720BA5: MemLdUI1 global_0
  loc_720BA9: CI2UI1
  loc_720BAB: LitI2_Byte 0
  loc_720BAD: GtI2
  loc_720BAE: ILdRf var_370
  loc_720BB1: ImpAdCallFPR4 push Val()
  loc_720BB6: CI4R8
  loc_720BB7: FLdI2 var_37A
  loc_720BBA: CI4UI1
  loc_720BBB: ImpAdLdRf MemVar_74C12C
  loc_720BBE: AryLdPr
  loc_720BC1: MemLdUI1 global_0
  loc_720BC5: CI2UI1
  loc_720BC7: FLdRfVar var_F6
  loc_720BCA: ImpAdLdRf MemVar_74A220
  loc_720BCD: NewIfNullPr clsProducts
  loc_720BD0: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_720BD5: FLdI2 var_F6
  loc_720BD8: LeI2
  loc_720BD9: AndI4
  loc_720BDA: BranchF loc_720C19
  loc_720BDF: ILdRf var_370
  loc_720BE2: ImpAdCallFPR4 push Val()
  loc_720BE7: FStFPR8 var_33C
  loc_720BEA: FLdRfVar var_14C
  loc_720BED: FLdFPR8 var_33C
  loc_720BF0: CI4R8
  loc_720BF1: FLdI2 var_37A
  loc_720BF4: CI4UI1
  loc_720BF5: ImpAdLdRf MemVar_74C12C
  loc_720BF8: AryLdPr
  loc_720BFB: MemLdUI1 global_0
  loc_720BFF: CI2UI1
  loc_720C01: ImpAdLdRf MemVar_74A220
  loc_720C04: NewIfNullPr clsProducts
  loc_720C0C: FLdZeroAd var_14C
  loc_720C0F: FLdRfVar var_328
  loc_720C12: StFixedStrFree
  loc_720C16: Branch loc_720C47
  loc_720C1D: LitStr "Cod. "
  loc_720C20: ILdRf var_370
  loc_720C23: ImpAdCallFPR4 push Val()
  loc_720C28: CI4R8
  loc_720C29: FLdI2 var_37A
  loc_720C2C: CI4UI1
  loc_720C2D: ImpAdLdRf MemVar_74C12C
  loc_720C30: AryLdPr
  loc_720C33: MemLdUI1 global_0
  loc_720C37: CStrI2
  loc_720C39: FStStrNoPop var_14C
  loc_720C3C: ConcatStr
  loc_720C3D: FLdRfVar var_328
  loc_720C40: StFixedStrFree
  loc_720C44: FFree1Str var_14C
  loc_720C4B: LitI4 1
  loc_720C50: LitI4 1
  loc_720C55: LitVarStr var_1D8, "0.00"
  loc_720C5A: FStVarCopyObj var_21C
  loc_720C5D: FLdRfVar var_21C
  loc_720C60: ILdRf var_374
  loc_720C63: CR8Str
  loc_720C65: LitI2_Byte &H64
  loc_720C67: CR8I2
  loc_720C68: DivR8
  loc_720C69: CVarR8
  loc_720C6D: FLdRfVar var_22C
  loc_720C70: ImpAdCallFPR4  = Format(, )
  loc_720C75: FLdRfVar var_14C
  loc_720C78: FLdPrThis
  loc_720C79: VCallAd Control_ID_txtListado
  loc_720C7C: FStAdFunc var_F4
  loc_720C7F: FLdPr var_F4
  loc_720C82:  = Me.Text
  loc_720C87: FLdZeroAd var_14C
  loc_720C8A: CVarStr var_138
  loc_720C8D: LitI4 2
  loc_720C92: FLdRfVar var_108
  loc_720C95: ImpAdCallFPR4  = Space()
  loc_720C9A: FLdRfVar var_108
  loc_720C9D: ConcatVar var_148
  loc_720CA1: ILdRf var_370
  loc_720CA4: CVarStr var_118
  loc_720CA7: ConcatVar var_160
  loc_720CAB: ILdRf var_378
  loc_720CAE: CVarStr var_128
  loc_720CB1: ConcatVar var_170
  loc_720CB5: LitI4 2
  loc_720CBA: FLdRfVar var_180
  loc_720CBD: ImpAdCallFPR4  = Space()
  loc_720CC2: FLdRfVar var_180
  loc_720CC5: ConcatVar var_190
  loc_720CC9: FLdRfVar var_328
  loc_720CCC: LdFixedStr
  loc_720CCF: CVarStr var_1A0
  loc_720CD2: ConcatVar var_1B0
  loc_720CD6: LitI4 2
  loc_720CDB: FLdRfVar var_1EC
  loc_720CDE: ImpAdCallFPR4  = Space()
  loc_720CE3: FLdRfVar var_1EC
  loc_720CE6: ConcatVar var_1FC
  loc_720CEA: LitI4 1
  loc_720CEF: LitI4 1
  loc_720CF4: LitVarStr var_23C, "@@@@@@@@@"
  loc_720CF9: FStVarCopyObj var_27C
  loc_720CFC: FLdRfVar var_27C
  loc_720CFF: FLdRfVar var_22C
  loc_720D02: FLdRfVar var_28C
  loc_720D05: ImpAdCallFPR4  = Format(, )
  loc_720D0A: FLdRfVar var_28C
  loc_720D0D: ConcatVar var_29C
  loc_720D11: LitI4 &HD
  loc_720D16: FLdRfVar var_2AC
  loc_720D19: ImpAdCallFPR4  = Chr()
  loc_720D1E: FLdRfVar var_2AC
  loc_720D21: ConcatVar var_2BC
  loc_720D25: LitI4 &HA
  loc_720D2A: FLdRfVar var_2CC
  loc_720D2D: ImpAdCallFPR4  = Chr()
  loc_720D32: FLdRfVar var_2CC
  loc_720D35: ConcatVar var_2DC
  loc_720D39: CStrVarVal var_1B4
  loc_720D3D: FLdPrThis
  loc_720D3E: VCallAd Control_ID_txtListado
  loc_720D41: FStAdFunc var_1B8
  loc_720D44: FLdPr var_1B8
  loc_720D47: Me.Text = from_stack_1
  loc_720D4C: FFree1Str var_1B4
  loc_720D4F: FFreeAd var_F4 = ""
  loc_720D56: FFreeVar var_138 = "": var_108 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1EC = "": var_20C = "": var_21C = "": var_22C = "": var_27C = "": var_1FC = "": var_28C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = ""
  loc_720D85: ILdRf var_B0
  loc_720D88: LitI4 &HB
  loc_720D8D: AddI4
  loc_720D8E: FStR4 var_B0
  loc_720D93: Branch loc_7209FA
  loc_720D98: ExitProcHresult
  loc_720D9B: FLdRfVar var_3A4
  loc_720D9E: ImpAdCallI2 Err 'rtcErrObj
  loc_720DA3: FStAdFunc var_F4
  loc_720DA6: FLdPr var_F4
  loc_720DA9:  = Err.Number
  loc_720DAE: FLdRfVar var_1DC
  loc_720DB1: ImpAdCallI2 Err 'rtcErrObj
  loc_720DB6: FStAdFunc var_1B8
  loc_720DB9: FLdPr var_1B8
  loc_720DBC:  = Err.Description
  loc_720DC1: LitVar_Missing var_160
  loc_720DC4: LitVar_Missing var_148
  loc_720DC7: LitVar_Missing var_138
  loc_720DCA: LitI4 &H10
  loc_720DCF: LitStr "Err. #"
  loc_720DD2: ILdRf var_3A4
  loc_720DD5: CStrI4
  loc_720DD7: FStStrNoPop var_14C
  loc_720DDA: ConcatStr
  loc_720DDB: FStStrNoPop var_1B4
  loc_720DDE: LitStr ". "
  loc_720DE1: ConcatStr
  loc_720DE2: FStStrNoPop var_3A8
  loc_720DE5: ILdRf var_1DC
  loc_720DE8: ConcatStr
  loc_720DE9: CVarStr var_108
  loc_720DEC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_720DF1: FFreeStr var_14C = "": var_1B4 = "": var_3A8 = ""
  loc_720DFC: FFreeAd var_F4 = ""
  loc_720E03: FFreeVar var_108 = "": var_138 = "": var_148 = ""
  loc_720E10: Resume
  loc_720E16: ExitProcHresult
End Sub

Public Function TipoReporteGet() '4185E4
  TipoReporteGet = TipoReporte
End Function

Public Sub TipoReportePut(Value) '4185F3
  TipoReporte = Value
End Sub

Public Function DesdehastaGet() '418602
  DesdehastaGet = Desdehasta
End Function

Public Sub DesdehastaPut(Value) '418611
  Desdehasta = Value
End Sub

Public Function sMesGet() '418620
  sMesGet = sMes
End Function

Public Sub sMesPut(Value) '41862F
  sMes = Value
End Sub

Public Function sAnioGet() '41863E
  sAnioGet = sAnio
End Function

Public Sub sAnioPut(Value) '41864D
  sAnio = Value
End Sub

Public Function sDataGet() '41865C
  sDataGet = sData
End Function

Public Sub sDataPut(Value) '41866B
  sData = Value
End Sub
