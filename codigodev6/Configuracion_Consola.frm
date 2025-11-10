VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form Configuracion_Consola
  Caption = "Configuración de la Consola"
  BackColor = &H80000004&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 765
  ClientTop = 1830
  ClientWidth = 10845
  ClientHeight = 4515
  PaletteMode = 1
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 60
    Width = 10575
    Height = 4275
    TabIndex = 2
    Begin VB.TextBox Text1
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 4260
      Top = 1980
      Width = 6000
      Height = 600
      TabIndex = 0
      TabStop = 0   'False
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 18
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Text1
      Index = 0
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 300
      Top = 480
      Width = 9975
      Height = 1080
      Text = "Configuracion_Consola.frx":0000
      TabIndex = 3
      MultiLine = -1  'True
      TabStop = 0   'False
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
    Begin Threed.SSCommand SSCommand2
      Left = 7620
      Top = 3240
      Width = 2655
      Height = 735
      TabIndex = 1
      OleObjectBlob = "Configuracion_Consola.frx":0071
    End
    Begin VB.Label Label1
      Caption = "Servidor CEM-44"
      Index = 1
      BackColor = &H808080&
      ForeColor = &H0&
      Left = 300
      Top = 1980
      Width = 3720
      Height = 615
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
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
End

Attribute VB_Name = "Configuracion_Consola"


Private Sub Form_Load() '64F240
  'Data Table: 4095E0
  loc_64EFB4: ILdRf Me
  loc_64EFB7: CastAd
  loc_64EFBA: FStAdFunc var_88
  loc_64EFBD: FLdRfVar var_88
  loc_64EFC0: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_64EFC5: FFree1Ad var_88
  loc_64EFC8: LitStr "  "
  loc_64EFCB: FLdRfVar var_1D8
  loc_64EFCE: LitVar_Missing var_1D4
  loc_64EFD1: LitVar_Missing var_1B4
  loc_64EFD4: LitVar_Missing var_194
  loc_64EFD7: LitVar_Missing var_174
  loc_64EFDA: LitVar_Missing var_154
  loc_64EFDD: LitVar_Missing var_134
  loc_64EFE0: LitVar_Missing var_114
  loc_64EFE3: LitVar_Missing var_F4
  loc_64EFE6: LitVar_Missing var_D4
  loc_64EFE9: LitVar_Missing var_B4
  loc_64EFEC: LitStr "Con anterioridad al uso de la consola debe configurar dirección en notacion UNC; del servidor CEM-44 Pump Service"
  loc_64EFEF: FStStrCopy var_94
  loc_64EFF2: FLdRfVar var_94
  loc_64EFF5: LitI4 1
  loc_64EFFA: PopTmpLdAdStr var_90
  loc_64EFFD: LitI2_Byte &H25
  loc_64EFFF: PopTmpLdAd2 var_8A
  loc_64F002: ImpAdLdRf MemVar_74C7D0
  loc_64F005: NewIfNullPr clsMsg
  loc_64F008: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64F00D: ILdRf var_1D8
  loc_64F010: ConcatStr
  loc_64F011: FStStrNoPop var_1E0
  loc_64F014: FLdRfVar var_1DC
  loc_64F017: LitI2_Byte 0
  loc_64F019: FLdPrThis
  loc_64F01A: VCallAd Control_ID_Text1
  loc_64F01D: FStAdFunc var_88
  loc_64F020: FLdPr var_88
  loc_64F023: Set from_stack_2 = Me(from_stack_1)
  loc_64F028: FLdPr var_1DC
  loc_64F02B: Me.Text = from_stack_1
  loc_64F030: FFreeStr var_94 = "": var_1D8 = ""
  loc_64F039: FFreeAd var_88 = ""
  loc_64F040: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64F057: ImpAdLdRf MemVar_74BF90
  loc_64F05A: CVarRef
  loc_64F05F: FLdRfVar var_B4
  loc_64F062: ImpAdCallFPR4  = Trim()
  loc_64F067: FLdRfVar var_B4
  loc_64F06A: FnLenVar var_D4
  loc_64F06E: LitVarStr var_C4, "\pipe\Cem44Pipe"
  loc_64F073: FStVarCopyObj var_F4
  loc_64F076: FLdRfVar var_F4
  loc_64F079: FLdRfVar var_114
  loc_64F07C: ImpAdCallFPR4  = Trim()
  loc_64F081: FLdRfVar var_114
  loc_64F084: FnLenVar var_134
  loc_64F088: SubVar var_154
  loc_64F08C: CI4Var
  loc_64F08E: ImpAdLdRf MemVar_74BF90
  loc_64F091: CVarRef
  loc_64F096: FLdRfVar var_174
  loc_64F099: ImpAdCallFPR4  = Left(, )
  loc_64F09E: FLdRfVar var_174
  loc_64F0A1: CStrVarVal var_94
  loc_64F0A5: FLdRfVar var_1DC
  loc_64F0A8: LitI2_Byte 1
  loc_64F0AA: FLdPrThis
  loc_64F0AB: VCallAd Control_ID_Text1
  loc_64F0AE: FStAdFunc var_88
  loc_64F0B1: FLdPr var_88
  loc_64F0B4: Set from_stack_2 = Me(from_stack_1)
  loc_64F0B9: FLdPr var_1DC
  loc_64F0BC: Me.Text = from_stack_1
  loc_64F0C1: FFree1Str var_94
  loc_64F0C4: FFreeAd var_88 = ""
  loc_64F0CB: FFreeVar var_B4 = "": var_F4 = "": var_114 = ""
  loc_64F0D6: FLdRfVar var_1D8
  loc_64F0D9: LitVar_Missing var_1D4
  loc_64F0DC: LitVar_Missing var_1B4
  loc_64F0DF: LitVar_Missing var_194
  loc_64F0E2: LitVar_Missing var_174
  loc_64F0E5: LitVar_Missing var_154
  loc_64F0E8: LitVar_Missing var_134
  loc_64F0EB: LitVar_Missing var_114
  loc_64F0EE: LitVar_Missing var_F4
  loc_64F0F1: LitVar_Missing var_D4
  loc_64F0F4: LitVar_Missing var_B4
  loc_64F0F7: LitStr "Configuración de la Consola"
  loc_64F0FA: FStStrCopy var_94
  loc_64F0FD: FLdRfVar var_94
  loc_64F100: LitI4 2
  loc_64F105: PopTmpLdAdStr var_90
  loc_64F108: LitI2_Byte &H25
  loc_64F10A: PopTmpLdAd2 var_8A
  loc_64F10D: ImpAdLdRf MemVar_74C7D0
  loc_64F110: NewIfNullPr clsMsg
  loc_64F113: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64F118: ILdRf var_1D8
  loc_64F11B: FLdPr Me
  loc_64F11E: Me.Caption = from_stack_1
  loc_64F123: FFreeStr var_94 = ""
  loc_64F12A: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64F141: FLdRfVar var_1D8
  loc_64F144: LitVar_Missing var_1D4
  loc_64F147: LitVar_Missing var_1B4
  loc_64F14A: LitVar_Missing var_194
  loc_64F14D: LitVar_Missing var_174
  loc_64F150: LitVar_Missing var_154
  loc_64F153: LitVar_Missing var_134
  loc_64F156: LitVar_Missing var_114
  loc_64F159: LitVar_Missing var_F4
  loc_64F15C: LitVar_Missing var_D4
  loc_64F15F: LitVar_Missing var_B4
  loc_64F162: LitStr "Servidor CEM-44"
  loc_64F165: FStStrCopy var_94
  loc_64F168: FLdRfVar var_94
  loc_64F16B: LitI4 3
  loc_64F170: PopTmpLdAdStr var_90
  loc_64F173: LitI2_Byte &H25
  loc_64F175: PopTmpLdAd2 var_8A
  loc_64F178: ImpAdLdRf MemVar_74C7D0
  loc_64F17B: NewIfNullPr clsMsg
  loc_64F17E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64F183: ILdRf var_1D8
  loc_64F186: FLdRfVar var_1DC
  loc_64F189: LitI2_Byte 1
  loc_64F18B: FLdPrThis
  loc_64F18C: VCallAd Control_ID_Label1
  loc_64F18F: FStAdFunc var_88
  loc_64F192: FLdPr var_88
  loc_64F195: Set from_stack_2 = Me(from_stack_1)
  loc_64F19A: FLdPr var_1DC
  loc_64F19D: Me.Caption = from_stack_1
  loc_64F1A2: FFreeStr var_94 = ""
  loc_64F1A9: FFreeAd var_88 = ""
  loc_64F1B0: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_64F1C7: FLdRfVar var_1D8
  loc_64F1CA: LitVar_Missing var_1D4
  loc_64F1CD: LitVar_Missing var_1B4
  loc_64F1D0: LitVar_Missing var_194
  loc_64F1D3: LitVar_Missing var_174
  loc_64F1D6: LitVar_Missing var_154
  loc_64F1D9: LitVar_Missing var_134
  loc_64F1DC: LitVar_Missing var_114
  loc_64F1DF: LitVar_Missing var_F4
  loc_64F1E2: LitVar_Missing var_D4
  loc_64F1E5: LitVar_Missing var_B4
  loc_64F1E8: LitStr "CONTINUAR"
  loc_64F1EB: FStStrCopy var_94
  loc_64F1EE: FLdRfVar var_94
  loc_64F1F1: LitI4 4
  loc_64F1F6: PopTmpLdAdStr var_90
  loc_64F1F9: LitI2_Byte &H25
  loc_64F1FB: PopTmpLdAd2 var_8A
  loc_64F1FE: ImpAdLdRf MemVar_74C7D0
  loc_64F201: NewIfNullPr clsMsg
  loc_64F204: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64F209: FLdZeroAd var_1D8
  loc_64F20C: CVarStr var_1F0
  loc_64F20F: PopAdLdVar
  loc_64F210: FLdPrThis
  loc_64F211: VCallAd Control_ID_SSCommand2
  loc_64F214: FStAdFunc var_88
  loc_64F217: FLdPr var_88
  loc_64F21A: LateIdSt
  loc_64F21F: FFree1Str var_94
  loc_64F222: FFree1Ad var_88
  loc_64F225: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_64F23E: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D6E20
  'Data Table: 4095E0
  loc_5D6DFC: FLdRfVar var_8C
  loc_5D6DFF: LitI2_Byte 1
  loc_5D6E01: FLdPrThis
  loc_5D6E02: VCallAd Control_ID_Text1
  loc_5D6E05: FStAdFunc var_88
  loc_5D6E08: FLdPr var_88
  loc_5D6E0B: Set from_stack_2 = Me(from_stack_1)
  loc_5D6E10: FLdPr var_8C
  loc_5D6E13: Me.SetFocus
  loc_5D6E18: FFreeAd var_88 = ""
  loc_5D6E1F: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '68D128
  'Data Table: 4095E0
  loc_68CBDC: LitI4 &HFF
  loc_68CBE1: PopTmpLdAdStr var_A8
  loc_68CBE4: ILdRf var_8C
  loc_68CBE7: FLdRfVar var_A0
  loc_68CBEA: CStr2Ansi
  loc_68CBEB: ILdRf var_A0
  loc_68CBEE: ImpAdCallFPR4 GetComputerName(, )
  loc_68CBF3: SetLastSystemError
  loc_68CBF4: ILdRf var_A0
  loc_68CBF7: FLdRfVar var_A4
  loc_68CBFA: CStr2Uni
  loc_68CBFC: ILdRf var_A4
  loc_68CBFF: ILdRf var_8C
  loc_68CC02: StFixedStr
  loc_68CC05: FFreeStr var_A0 = ""
  loc_68CC0E: LitI4 1
  loc_68CC13: ILdRf var_8C
  loc_68CC16: LitStr vbNullString
  loc_68CC19: LitI4 0
  loc_68CC1E: FnInStr4
  loc_68CC20: LitI4 1
  loc_68CC25: SubI4
  loc_68CC26: ILdRf var_8C
  loc_68CC29: FStStrCopy var_A0
  loc_68CC2C: ILdRf var_A0
  loc_68CC2F: ImpAdCallI2 Left$(, )
  loc_68CC34: FStStr var_A4
  loc_68CC37: ILdRf var_A0
  loc_68CC3A: ILdRf var_8C
  loc_68CC3D: StFixedStr
  loc_68CC40: FLdZeroAd var_A4
  loc_68CC43: ILdRf var_8C
  loc_68CC46: StFixedStrFree
  loc_68CC4A: FFree1Str var_A0
  loc_68CC4F: FLdRfVar var_A0
  loc_68CC52: FLdRfVar var_B0
  loc_68CC55: LitI2_Byte 1
  loc_68CC57: FLdPrThis
  loc_68CC58: VCallAd Control_ID_Text1
  loc_68CC5B: FStAdFunc var_AC
  loc_68CC5E: FLdPr var_AC
  loc_68CC61: Set from_stack_2 = Me(from_stack_1)
  loc_68CC66: FLdPr var_B0
  loc_68CC69:  = Me.Text
  loc_68CC6E: LitVarI2 var_E0, 2
  loc_68CC73: LitI4 1
  loc_68CC78: FLdZeroAd var_A0
  loc_68CC7B: CVarStr var_C0
  loc_68CC7E: FLdRfVar var_F0
  loc_68CC81: ImpAdCallFPR4  = Mid(, , )
  loc_68CC86: FLdRfVar var_F0
  loc_68CC89: LitVarStr var_100, "//"
  loc_68CC8E: HardType
  loc_68CC8F: EqVarBool
  loc_68CC91: FFreeAd var_AC = ""
  loc_68CC98: FFreeVar var_C0 = "": var_E0 = ""
  loc_68CCA1: BranchF loc_68CD56
  loc_68CCA6: FLdRfVar var_A0
  loc_68CCA9: FLdRfVar var_B0
  loc_68CCAC: LitI2_Byte 1
  loc_68CCAE: FLdPrThis
  loc_68CCAF: VCallAd Control_ID_Text1
  loc_68CCB2: FStAdFunc var_AC
  loc_68CCB5: FLdPr var_AC
  loc_68CCB8: Set from_stack_2 = Me(from_stack_1)
  loc_68CCBD: FLdPr var_B0
  loc_68CCC0:  = Me.Text
  loc_68CCC5: LitVarStr var_100, "\\"
  loc_68CCCA: FLdRfVar var_A4
  loc_68CCCD: FLdRfVar var_118
  loc_68CCD0: LitI2_Byte 1
  loc_68CCD2: FLdPrThis
  loc_68CCD3: VCallAd Control_ID_Text1
  loc_68CCD6: FStAdFunc var_114
  loc_68CCD9: FLdPr var_114
  loc_68CCDC: Set from_stack_2 = Me(from_stack_1)
  loc_68CCE1: FLdPr var_118
  loc_68CCE4:  = Me.Text
  loc_68CCE9: ILdRf var_A4
  loc_68CCEC: FnLenStr
  loc_68CCED: LitI4 2
  loc_68CCF2: SubI4
  loc_68CCF3: CVarI4
  loc_68CCF7: LitI4 3
  loc_68CCFC: FLdZeroAd var_A0
  loc_68CCFF: CVarStr var_C0
  loc_68CD02: FLdRfVar var_F0
  loc_68CD05: ImpAdCallFPR4  = Mid(, , )
  loc_68CD0A: FLdRfVar var_F0
  loc_68CD0D: ConcatVar var_110
  loc_68CD11: CStrVarTmp
  loc_68CD12: FStStr var_88
  loc_68CD15: FFree1Str var_A4
  loc_68CD18: FFreeAd var_AC = "": var_B0 = "": var_114 = ""
  loc_68CD23: FFreeVar var_C0 = "": var_E0 = "": var_F0 = ""
  loc_68CD30: ILdRf var_88
  loc_68CD33: FLdRfVar var_B0
  loc_68CD36: LitI2_Byte 1
  loc_68CD38: FLdPrThis
  loc_68CD39: VCallAd Control_ID_Text1
  loc_68CD3C: FStAdFunc var_AC
  loc_68CD3F: FLdPr var_AC
  loc_68CD42: Set from_stack_2 = Me(from_stack_1)
  loc_68CD47: FLdPr var_B0
  loc_68CD4A: Me.Text = from_stack_1
  loc_68CD4F: FFreeAd var_AC = ""
  loc_68CD5A: FLdRfVar var_A4
  loc_68CD5D: FLdRfVar var_B0
  loc_68CD60: LitI2_Byte 1
  loc_68CD62: FLdPrThis
  loc_68CD63: VCallAd Control_ID_Text1
  loc_68CD66: FStAdFunc var_AC
  loc_68CD69: FLdPr var_AC
  loc_68CD6C: Set from_stack_2 = Me(from_stack_1)
  loc_68CD71: FLdPr var_B0
  loc_68CD74:  = Me.Text
  loc_68CD79: ILdRf var_8C
  loc_68CD7C: FStStrCopy var_A0
  loc_68CD7F: FLdRfVar var_A0
  loc_68CD82: CVarRef
  loc_68CD87: FLdRfVar var_C0
  loc_68CD8A: ImpAdCallFPR4  = Trim()
  loc_68CD8F: ILdRf var_A0
  loc_68CD92: ILdRf var_8C
  loc_68CD95: StFixedStr
  loc_68CD98: FLdRfVar var_C0
  loc_68CD9B: FLdRfVar var_11C
  loc_68CD9E: FLdRfVar var_118
  loc_68CDA1: LitI2_Byte 1
  loc_68CDA3: FLdPrThis
  loc_68CDA4: VCallAd Control_ID_Text1
  loc_68CDA7: FStAdFunc var_114
  loc_68CDAA: FLdPr var_114
  loc_68CDAD: Set from_stack_2 = Me(from_stack_1)
  loc_68CDB2: FLdPr var_118
  loc_68CDB5:  = Me.Text
  loc_68CDBA: ILdRf var_11C
  loc_68CDBD: FnLenStr
  loc_68CDBE: LitI4 2
  loc_68CDC3: SubI4
  loc_68CDC4: CVarI4
  loc_68CDC8: LitI4 3
  loc_68CDCD: FLdZeroAd var_A4
  loc_68CDD0: CVarStr var_E0
  loc_68CDD3: FLdRfVar var_110
  loc_68CDD6: ImpAdCallFPR4  = Mid(, , )
  loc_68CDDB: FLdRfVar var_110
  loc_68CDDE: FLdRfVar var_12C
  loc_68CDE1: ImpAdCallFPR4  = Ucase()
  loc_68CDE6: FLdRfVar var_12C
  loc_68CDE9: EqVarBool
  loc_68CDEB: FFreeStr var_A0 = ""
  loc_68CDF2: FFreeAd var_AC = "": var_B0 = "": var_114 = ""
  loc_68CDFD: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_C0 = ""
  loc_68CE0A: BranchF loc_68CE35
  loc_68CE0F: LitStr "\\."
  loc_68CE12: FLdRfVar var_B0
  loc_68CE15: LitI2_Byte 1
  loc_68CE17: FLdPrThis
  loc_68CE18: VCallAd Control_ID_Text1
  loc_68CE1B: FStAdFunc var_AC
  loc_68CE1E: FLdPr var_AC
  loc_68CE21: Set from_stack_2 = Me(from_stack_1)
  loc_68CE26: FLdPr var_B0
  loc_68CE29: Me.Text = from_stack_1
  loc_68CE2E: FFreeAd var_AC = ""
  loc_68CE39: FLdRfVar var_A0
  loc_68CE3C: FLdRfVar var_B0
  loc_68CE3F: LitI2_Byte 1
  loc_68CE41: FLdPrThis
  loc_68CE42: VCallAd Control_ID_Text1
  loc_68CE45: FStAdFunc var_AC
  loc_68CE48: FLdPr var_AC
  loc_68CE4B: Set from_stack_2 = Me(from_stack_1)
  loc_68CE50: FLdPr var_B0
  loc_68CE53:  = Me.Text
  loc_68CE58: ILdRf var_A0
  loc_68CE5B: LitStr "Pipe"
  loc_68CE5E: LitStr "Startup"
  loc_68CE61: LitStr "CEM44"
  loc_68CE64: ImpAdCallFPR4 SaveSetting(, , , )
  loc_68CE69: FFree1Str var_A0
  loc_68CE6C: FFreeAd var_AC = ""
  loc_68CE75: FLdRfVar var_A0
  loc_68CE78: FLdRfVar var_B0
  loc_68CE7B: LitI2_Byte 1
  loc_68CE7D: FLdPrThis
  loc_68CE7E: VCallAd Control_ID_Text1
  loc_68CE81: FStAdFunc var_AC
  loc_68CE84: FLdPr var_AC
  loc_68CE87: Set from_stack_2 = Me(from_stack_1)
  loc_68CE8C: FLdPr var_B0
  loc_68CE8F:  = Me.Text
  loc_68CE94: ILdRf var_A0
  loc_68CE97: LitStr "\pipe\Cem44Pipe"
  loc_68CE9A: ConcatStr
  loc_68CE9B: ImpAdStStr MemVar_74BF90
  loc_68CE9F: FFree1Str var_A0
  loc_68CEA2: FFreeAd var_AC = ""
  loc_68CEAB: LitI4 &H12C
  loc_68CEB0: FLdRfVar var_C0
  loc_68CEB3: ImpAdCallFPR4  = Space()
  loc_68CEB8: FLdRfVar var_C0
  loc_68CEBB: CStrVarTmp
  loc_68CEBC: ILdRf var_90
  loc_68CEBF: StFixedStrFree
  loc_68CEC3: FFree1Var var_C0 = ""
  loc_68CEC8: LitI4 3
  loc_68CECD: ImpAdCallI2 Chr$()
  loc_68CED2: FStStrNoPop var_A0
  loc_68CED5: LitStr "066"
  loc_68CED8: ConcatStr
  loc_68CED9: FStStr var_98
  loc_68CEDC: FFree1Str var_A0
  loc_68CEE1: OnErrorGoto loc_68D112
  loc_68CEE6: LitI2 1000
  loc_68CEE9: LitI4 &H12C
  loc_68CEEE: ILdRf var_90
  loc_68CEF1: FLdRfVar var_11C
  loc_68CEF4: CStr2Ansi
  loc_68CEF5: ILdRf var_11C
  loc_68CEF8: ILdRf var_98
  loc_68CEFB: FLdRfVar var_A4
  loc_68CEFE: CStr2Ansi
  loc_68CEFF: ILdRf var_A4
  loc_68CF02: ImpAdLdI4 MemVar_74BF90
  loc_68CF05: FLdRfVar var_A0
  loc_68CF08: CStr2Ansi
  loc_68CF09: ILdRf var_A0
  loc_68CF0C: ImpAdCallI2 ()
  loc_68CF11: FStI2 var_142
  loc_68CF14: SetLastSystemError
  loc_68CF15: ILdRf var_A0
  loc_68CF18: ImpAdLdRf MemVar_74BF90
  loc_68CF1B: CStr2Uni
  loc_68CF1D: ILdRf var_A4
  loc_68CF20: FLdRfVar var_98
  loc_68CF23: CStr2Uni
  loc_68CF25: ILdRf var_11C
  loc_68CF28: FLdRfVar var_140
  loc_68CF2B: CStr2Uni
  loc_68CF2D: ILdRf var_140
  loc_68CF30: ILdRf var_90
  loc_68CF33: StFixedStr
  loc_68CF36: FLdI2 var_142
  loc_68CF39: CUI1I2
  loc_68CF3B: FStUI1 var_92
  loc_68CF3F: FFreeStr var_A0 = "": var_A4 = "": var_11C = ""
  loc_68CF4C: FLdUI1
  loc_68CF50: CI2UI1
  loc_68CF52: LitI2_Byte 0
  loc_68CF54: EqI2
  loc_68CF55: NotI4
  loc_68CF56: BranchF loc_68D0F6
  loc_68CF5B: FLdRfVar var_A8
  loc_68CF5E: FLdPr Me
  loc_68CF61:  = Me.hWnd
  loc_68CF66: FLdRfVar var_A0
  loc_68CF69: FLdRfVar var_B0
  loc_68CF6C: LitI2_Byte 1
  loc_68CF6E: FLdPrThis
  loc_68CF6F: VCallAd Control_ID_Text1
  loc_68CF72: FStAdFunc var_AC
  loc_68CF75: FLdPr var_AC
  loc_68CF78: Set from_stack_2 = Me(from_stack_1)
  loc_68CF7D: FLdPr var_B0
  loc_68CF80:  = Me.Text
  loc_68CF85: FLdZeroAd var_A0
  loc_68CF88: CVarStr var_C0
  loc_68CF8B: FLdRfVar var_E0
  loc_68CF8E: ImpAdCallFPR4  = Trim()
  loc_68CF93: FLdRfVar var_A4
  loc_68CF96: FLdRfVar var_114
  loc_68CF99: ImpAdLdRf MemVar_7520D4
  loc_68CF9C: NewIfNullPr Global
  loc_68CF9F:  = Global.App
  loc_68CFA4: FLdPr var_114
  loc_68CFA7:  = App.Path
  loc_68CFAC: LitI4 0
  loc_68CFB1: ILdRf var_A4
  loc_68CFB4: LitStr "\"
  loc_68CFB7: ConcatStr
  loc_68CFB8: FStStrNoPop var_150
  loc_68CFBB: FLdRfVar var_154
  loc_68CFBE: CStr2Ansi
  loc_68CFBF: ILdRf var_154
  loc_68CFC2: LitVarStr var_D0, "/C net use "
  loc_68CFC7: FLdRfVar var_E0
  loc_68CFCA: ConcatVar var_F0
  loc_68CFCE: LitVarStr var_100, " /user:operador operador"
  loc_68CFD3: ConcatVar var_110
  loc_68CFD7: CStrVarVal var_148
  loc_68CFDB: FLdRfVar var_14C
  loc_68CFDE: CStr2Ansi
  loc_68CFDF: ILdRf var_14C
  loc_68CFE2: LitStr "cmd"
  loc_68CFE5: FLdRfVar var_140
  loc_68CFE8: CStr2Ansi
  loc_68CFE9: ILdRf var_140
  loc_68CFEC: LitStr "open"
  loc_68CFEF: FLdRfVar var_11C
  loc_68CFF2: CStr2Ansi
  loc_68CFF3: ILdRf var_11C
  loc_68CFF6: ILdRf var_A8
  loc_68CFF9: ImpAdCallI2 ShellExecute(, , , , , )
  loc_68CFFE: FStR4 var_158
  loc_68D001: SetLastSystemError
  loc_68D002: ILdRf var_158
  loc_68D005: CStrI4
  loc_68D007: FStStr var_9C
  loc_68D00A: FFreeStr var_A4 = "": var_11C = "": var_140 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_68D01B: FFreeAd var_AC = "": var_B0 = ""
  loc_68D024: FFreeVar var_C0 = "": var_E0 = "": var_F0 = ""
  loc_68D031: LitI4 &H3E8
  loc_68D036: ImpAdCallFPR4 Sleep()
  loc_68D03B: SetLastSystemError
  loc_68D03E: LitI2 1000
  loc_68D041: LitI4 &H12C
  loc_68D046: ILdRf var_90
  loc_68D049: FLdRfVar var_11C
  loc_68D04C: CStr2Ansi
  loc_68D04D: ILdRf var_11C
  loc_68D050: ILdRf var_98
  loc_68D053: FLdRfVar var_A4
  loc_68D056: CStr2Ansi
  loc_68D057: ILdRf var_A4
  loc_68D05A: ImpAdLdI4 MemVar_74BF90
  loc_68D05D: FLdRfVar var_A0
  loc_68D060: CStr2Ansi
  loc_68D061: ILdRf var_A0
  loc_68D064: ImpAdCallI2 ()
  loc_68D069: FStI2 var_142
  loc_68D06C: SetLastSystemError
  loc_68D06D: ILdRf var_A0
  loc_68D070: ImpAdLdRf MemVar_74BF90
  loc_68D073: CStr2Uni
  loc_68D075: ILdRf var_A4
  loc_68D078: FLdRfVar var_98
  loc_68D07B: CStr2Uni
  loc_68D07D: ILdRf var_11C
  loc_68D080: FLdRfVar var_140
  loc_68D083: CStr2Uni
  loc_68D085: ILdRf var_140
  loc_68D088: ILdRf var_90
  loc_68D08B: StFixedStr
  loc_68D08E: FLdI2 var_142
  loc_68D091: CUI1I2
  loc_68D093: FStUI1 var_92
  loc_68D097: FFreeStr var_A0 = "": var_A4 = "": var_11C = ""
  loc_68D0A4: FLdUI1
  loc_68D0A8: CI2UI1
  loc_68D0AA: LitI2_Byte 0
  loc_68D0AC: EqI2
  loc_68D0AD: NotI4
  loc_68D0AE: BranchF loc_68D0F4
  loc_68D0B3: LitVar_Missing var_110
  loc_68D0B6: LitVar_Missing var_F0
  loc_68D0B9: LitVarStr var_100, "Aviso"
  loc_68D0BE: FStVarCopyObj var_E0
  loc_68D0C1: FLdRfVar var_E0
  loc_68D0C4: LitI4 &H14
  loc_68D0C9: LitVarStr var_D0, "El pipe es incorrecto. ¿Desea salir de la aplicación?"
  loc_68D0CE: FStVarCopyObj var_C0
  loc_68D0D1: FLdRfVar var_C0
  loc_68D0D4: ImpAdCallI2 MsgBox(, , , , )
  loc_68D0D9: LitI4 6
  loc_68D0DE: EqI4
  loc_68D0DF: FFreeVar var_C0 = "": var_E0 = "": var_F0 = ""
  loc_68D0EA: BranchF loc_68D0F1
  loc_68D0EF: End
  loc_68D0F3: ExitProcHresult
  loc_68D0FA: ILdRf Me
  loc_68D0FD: FStAdNoPop
  loc_68D101: ImpAdLdRf MemVar_7520D4
  loc_68D104: NewIfNullPr Global
  loc_68D107: Global.Unload from_stack_1
  loc_68D10C: FFree1Ad var_AC
  loc_68D111: ExitProcHresult
  loc_68D114: LitI2_Byte 1
  loc_68D116: CUI1I2
  loc_68D118: FStUI1 var_92
  loc_68D11E: Resume
  loc_68D124: ExitProcHresult
End Sub
