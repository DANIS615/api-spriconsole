VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fOpcionDecimal
  Caption = "Configuración de la opción decimal"
  BackColor = &H80000004&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 1680
  ClientTop = 795
  ClientWidth = 9645
  ClientHeight = 5685
  StartUpPosition = 1 'CenterOwner
  PaletteMode = 1
  Moveable = 0   'False
  Begin Threed.SSCommand SSAceptar
    Left = 7680
    Top = 4920
    Width = 1800
    Height = 675
    TabIndex = 22
    OleObjectBlob = "fOpcionDecimal.frx":0000
  End
  Begin Threed.SSCommand SSCancelar
    Left = 5640
    Top = 4920
    Width = 1800
    Height = 675
    TabIndex = 21
    OleObjectBlob = "fOpcionDecimal.frx":006C
  End
  Begin Threed.SSPanel SSPanel_PPU
    Left = 120
    Top = 600
    Width = 1635
    Height = 4095
    TabIndex = 14
    OleObjectBlob = "fOpcionDecimal.frx":00D9
    Begin Threed.SSOption SSOption_PPU
      Index = 6
      Left = 120
      Top = 3720
      Width = 1395
      Height = 255
      TabIndex = 20
      OleObjectBlob = "fOpcionDecimal.frx":0152
    End
    Begin Threed.SSOption SSOption_PPU
      Index = 5
      Left = 120
      Top = 3000
      Width = 1455
      Height = 255
      TabIndex = 19
      OleObjectBlob = "fOpcionDecimal.frx":01BA
    End
    Begin Threed.SSOption SSOption_PPU
      Index = 4
      Left = 120
      Top = 2280
      Width = 1455
      Height = 255
      TabIndex = 18
      OleObjectBlob = "fOpcionDecimal.frx":0222
    End
    Begin Threed.SSOption SSOption_PPU
      Index = 3
      Left = 120
      Top = 1560
      Width = 1455
      Height = 255
      TabIndex = 17
      OleObjectBlob = "fOpcionDecimal.frx":028A
    End
    Begin Threed.SSOption SSOption_PPU
      Index = 2
      Left = 120
      Top = 840
      Width = 1395
      Height = 255
      TabIndex = 16
      OleObjectBlob = "fOpcionDecimal.frx":02F2
    End
    Begin Threed.SSOption SSOption_PPU
      Index = 1
      Left = 120
      Top = 120
      Width = 1455
      Height = 255
      TabIndex = 15
      OleObjectBlob = "fOpcionDecimal.frx":035A
    End
  End
  Begin Threed.SSPanel SSPanel_Amount
    Left = 4920
    Top = 600
    Width = 1635
    Height = 4095
    TabIndex = 23
    OleObjectBlob = "fOpcionDecimal.frx":03C2
    Begin Threed.SSOption SSOption_Amount
      Index = 6
      Left = 120
      Top = 3720
      Width = 1395
      Height = 255
      TabIndex = 24
      OleObjectBlob = "fOpcionDecimal.frx":043B
    End
    Begin Threed.SSOption SSOption_Amount
      Index = 5
      Left = 120
      Top = 3000
      Width = 1455
      Height = 255
      TabIndex = 25
      OleObjectBlob = "fOpcionDecimal.frx":04A3
    End
    Begin Threed.SSOption SSOption_Amount
      Index = 4
      Left = 120
      Top = 2280
      Width = 1455
      Height = 255
      TabIndex = 26
      OleObjectBlob = "fOpcionDecimal.frx":050B
    End
    Begin Threed.SSOption SSOption_Amount
      Index = 3
      Left = 120
      Top = 1560
      Width = 1455
      Height = 255
      TabIndex = 27
      OleObjectBlob = "fOpcionDecimal.frx":0573
    End
    Begin Threed.SSOption SSOption_Amount
      Index = 2
      Left = 120
      Top = 840
      Width = 1395
      Height = 255
      TabIndex = 28
      OleObjectBlob = "fOpcionDecimal.frx":05DB
    End
    Begin Threed.SSOption SSOption_Amount
      Index = 1
      Left = 120
      Top = 120
      Width = 1455
      Height = 255
      TabIndex = 29
      OleObjectBlob = "fOpcionDecimal.frx":0643
    End
  End
  Begin VB.Label Label_PPU
    Caption = "#,###"
    Index = 1
    ForeColor = &H0&
    Left = 1800
    Top = 600
    Width = 2925
    Height = 495
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "###,##"
    Index = 1
    ForeColor = &H0&
    Left = 6600
    Top = 600
    Width = 2925
    Height = 495
    TabIndex = 12
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "##,##  "
    Index = 2
    ForeColor = &H0&
    Left = 1800
    Top = 1320
    Width = 2925
    Height = 495
    TabIndex = 11
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "###,#0  "
    Index = 3
    ForeColor = &H0&
    Left = 1800
    Top = 2040
    Width = 2925
    Height = 495
    TabIndex = 10
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "#.###,00  "
    Index = 4
    ForeColor = &H0&
    Left = 1800
    Top = 2760
    Width = 2925
    Height = 495
    TabIndex = 9
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "##.##0,00  "
    Index = 5
    ForeColor = &H0&
    Left = 1800
    Top = 3480
    Width = 2925
    Height = 495
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "###.#00,00  "
    Index = 6
    ForeColor = &H0&
    Left = 1800
    Top = 4200
    Width = 2925
    Height = 495
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "#.###,#0"
    Index = 2
    ForeColor = &H0&
    Left = 6600
    Top = 1320
    Width = 2925
    Height = 495
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "##.###,00"
    Index = 3
    ForeColor = &H0&
    Left = 6600
    Top = 2040
    Width = 2925
    Height = 495
    TabIndex = 5
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "###.##0,00"
    Index = 4
    ForeColor = &H0&
    Left = 6600
    Top = 2760
    Width = 2925
    Height = 495
    TabIndex = 4
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "#.###.#00,00"
    Index = 5
    ForeColor = &H0&
    Left = 6600
    Top = 3480
    Width = 2925
    Height = 495
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_Amount
    Caption = "##.###.000,00"
    Index = 6
    ForeColor = &H0&
    Left = 6600
    Top = 4200
    Width = 2925
    Height = 495
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label_PPU
    Caption = "Precio por Litro"
    Index = 0
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 1800
    Top = 120
    Width = 2925
    Height = 405
    TabIndex = 1
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label_Amount
    Caption = "Importe de Venta"
    Index = 0
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 6600
    Top = 120
    Width = 2925
    Height = 405
    TabIndex = 0
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "fOpcionDecimal"


Private Sub SSCancelar_UnknownEvent_8 '5D3290
  'Data Table: 413AD8
  loc_5D3274: ImpAdLdRf MemVar_74DCF8
  loc_5D3277: NewIfNullAd
  loc_5D327A: FStAdNoPop
  loc_5D327E: ImpAdLdRf MemVar_7520D4
  loc_5D3281: NewIfNullPr Global
  loc_5D3284: Global.Unload from_stack_1
  loc_5D3289: FFree1Ad var_88
  loc_5D328C: ExitProcHresult
End Sub

Private Sub SSAceptar_UnknownEvent_8 '679240
  'Data Table: 413AD8
  loc_678DBC: LitI2_Byte 0
  loc_678DBE: FStI2 var_88
  loc_678DC1: LitI4 &H26
  loc_678DC6: ImpAdLdRf MemVar_74A170
  loc_678DC9: Ary1LdI2
  loc_678DCA: NotI4
  loc_678DCB: CVarBoolI2 var_10C
  loc_678DCF: LitVarI2 var_BC, 3
  loc_678DD4: LitI4 1
  loc_678DD9: ImpAdLdRf MemVar_74BF90
  loc_678DDC: CVarRef
  loc_678DE1: FLdRfVar var_CC
  loc_678DE4: ImpAdCallFPR4  = Mid(, , )
  loc_678DE9: FLdRfVar var_CC
  loc_678DEC: LitVarStr var_DC, "\\."
  loc_678DF1: HardType
  loc_678DF2: EqVar var_EC
  loc_678DF6: NotVar var_FC
  loc_678DFA: AndVar var_11C
  loc_678DFE: CBoolVarNull
  loc_678E00: FFreeVar var_BC = "": var_CC = ""
  loc_678E09: BranchF loc_678E12
  loc_678E0C: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_678E11: ExitProcHresult
  loc_678E12: LitStr "CEM44.INI"
  loc_678E15: FLdRfVar var_128
  loc_678E18: CStr2Ansi
  loc_678E19: ILdRf var_128
  loc_678E1C: LitI4 1
  loc_678E21: LitStr "ACTIVE_OLD_DECIMAL_OPTION"
  loc_678E24: FLdRfVar var_124
  loc_678E27: CStr2Ansi
  loc_678E28: ILdRf var_124
  loc_678E2B: LitStr "GENERAL"
  loc_678E2E: FLdRfVar var_120
  loc_678E31: CStr2Ansi
  loc_678E32: ILdRf var_120
  loc_678E35: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_678E3A: FStR4 var_12C
  loc_678E3D: SetLastSystemError
  loc_678E3E: ILdRf var_12C
  loc_678E41: CUI1I4
  loc_678E43: FStUI1 var_8A
  loc_678E47: FFreeStr var_120 = "": var_124 = ""
  loc_678E50: FLdUI1
  loc_678E54: CI2UI1
  loc_678E56: LitI2_Byte 0
  loc_678E58: NeI2
  loc_678E59: BranchF loc_678F31
  loc_678E5C: FLdRfVar var_132
  loc_678E5F: FLdPrThis
  loc_678E60: VCallAd Control_ID_SSOption_PPU
  loc_678E63: FStAdFunc var_130
  loc_678E66: FLdPr var_130
  loc_678E69: Me = from_stack_1
  loc_678E6E: FLdI2 var_132
  loc_678E71: CUI1I2
  loc_678E73: FLdRfVar var_86
  loc_678E76: FLdRfVar var_13A
  loc_678E79: FLdPrThis
  loc_678E7A: VCallAd Control_ID_SSOption_PPU
  loc_678E7D: FStAdFunc var_138
  loc_678E80: FLdPr var_138
  loc_678E83:  = Me.Name
  loc_678E88: FLdI2 var_13A
  loc_678E8B: CUI1I2
  loc_678E8D: FFreeAd var_130 = ""
  loc_678E94: ForUI1 var_13E
  loc_678E9A: FLdRfVar var_138
  loc_678E9D: FLdUI1
  loc_678EA1: CI2UI1
  loc_678EA3: FLdPrThis
  loc_678EA4: VCallAd Control_ID_SSOption_PPU
  loc_678EA7: FStAdFunc var_130
  loc_678EAA: FLdPr var_130
  loc_678EAD: Set from_stack_2 = Me(from_stack_1)
  loc_678EB2: FLdPr var_138
  loc_678EB5: LateIdLdVar var_BC DispID_11 0
  loc_678EBC: CBoolVar
  loc_678EBE: LitI2_Byte &HFF
  loc_678EC0: EqI2
  loc_678EC1: FFreeAd var_130 = ""
  loc_678EC8: FFree1Var var_BC = ""
  loc_678ECB: BranchF loc_678EE7
  loc_678ECE: ImpAdLdUI1
  loc_678ED2: FLdUI1
  loc_678ED6: NeI2
  loc_678ED7: BranchF loc_678EE7
  loc_678EDA: FLdUI1
  loc_678EDE: ImpAdStUI1 MemVar_74C34D
  loc_678EE2: LitI2_Byte &HFF
  loc_678EE4: FStI2 var_88
  loc_678EE7: FLdRfVar var_86
  loc_678EEA: NextUI1
  loc_678EF0: LitStr "CEM44.INI"
  loc_678EF3: FLdRfVar var_128
  loc_678EF6: CStr2Ansi
  loc_678EF7: ILdRf var_128
  loc_678EFA: ImpAdLdUI1
  loc_678EFE: CI4UI1
  loc_678EFF: LitStr "DECIMAL_PPU"
  loc_678F02: FLdRfVar var_124
  loc_678F05: CStr2Ansi
  loc_678F06: ILdRf var_124
  loc_678F09: LitStr "GENERAL"
  loc_678F0C: FLdRfVar var_120
  loc_678F0F: CStr2Ansi
  loc_678F10: ILdRf var_120
  loc_678F13: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_678F18: FStR4 var_12C
  loc_678F1B: SetLastSystemError
  loc_678F1C: ILdRf var_12C
  loc_678F1F: CUI1I4
  loc_678F21: ImpAdStUI1 MemVar_74C34C
  loc_678F25: FFreeStr var_120 = "": var_124 = ""
  loc_678F2E: Branch loc_679059
  loc_678F31: FLdRfVar var_132
  loc_678F34: FLdPrThis
  loc_678F35: VCallAd Control_ID_SSOption_PPU
  loc_678F38: FStAdFunc var_130
  loc_678F3B: FLdPr var_130
  loc_678F3E: Me = from_stack_1
  loc_678F43: FLdI2 var_132
  loc_678F46: CUI1I2
  loc_678F48: FLdRfVar var_86
  loc_678F4B: FLdRfVar var_13A
  loc_678F4E: FLdPrThis
  loc_678F4F: VCallAd Control_ID_SSOption_PPU
  loc_678F52: FStAdFunc var_138
  loc_678F55: FLdPr var_138
  loc_678F58:  = Me.Name
  loc_678F5D: FLdI2 var_13A
  loc_678F60: CUI1I2
  loc_678F62: FFreeAd var_130 = ""
  loc_678F69: ForUI1 var_142
  loc_678F6F: FLdRfVar var_138
  loc_678F72: FLdUI1
  loc_678F76: CI2UI1
  loc_678F78: FLdPrThis
  loc_678F79: VCallAd Control_ID_SSOption_PPU
  loc_678F7C: FStAdFunc var_130
  loc_678F7F: FLdPr var_130
  loc_678F82: Set from_stack_2 = Me(from_stack_1)
  loc_678F87: FLdPr var_138
  loc_678F8A: LateIdLdVar var_BC DispID_11 0
  loc_678F91: CBoolVar
  loc_678F93: LitI2_Byte &HFF
  loc_678F95: EqI2
  loc_678F96: FFreeAd var_130 = ""
  loc_678F9D: FFree1Var var_BC = ""
  loc_678FA0: BranchF loc_678FBC
  loc_678FA3: ImpAdLdUI1
  loc_678FA7: FLdUI1
  loc_678FAB: NeI2
  loc_678FAC: BranchF loc_678FBC
  loc_678FAF: FLdUI1
  loc_678FB3: ImpAdStUI1 MemVar_74C34C
  loc_678FB7: LitI2_Byte &HFF
  loc_678FB9: FStI2 var_88
  loc_678FBC: FLdRfVar var_86
  loc_678FBF: NextUI1
  loc_678FC5: FLdRfVar var_132
  loc_678FC8: FLdPrThis
  loc_678FC9: VCallAd Control_ID_SSOption_Amount
  loc_678FCC: FStAdFunc var_130
  loc_678FCF: FLdPr var_130
  loc_678FD2: Me = from_stack_1
  loc_678FD7: FLdI2 var_132
  loc_678FDA: CUI1I2
  loc_678FDC: FLdRfVar var_86
  loc_678FDF: FLdRfVar var_13A
  loc_678FE2: FLdPrThis
  loc_678FE3: VCallAd Control_ID_SSOption_Amount
  loc_678FE6: FStAdFunc var_138
  loc_678FE9: FLdPr var_138
  loc_678FEC:  = Me.Name
  loc_678FF1: FLdI2 var_13A
  loc_678FF4: CUI1I2
  loc_678FF6: FFreeAd var_130 = ""
  loc_678FFD: ForUI1 var_146
  loc_679003: FLdRfVar var_138
  loc_679006: FLdUI1
  loc_67900A: CI2UI1
  loc_67900C: FLdPrThis
  loc_67900D: VCallAd Control_ID_SSOption_Amount
  loc_679010: FStAdFunc var_130
  loc_679013: FLdPr var_130
  loc_679016: Set from_stack_2 = Me(from_stack_1)
  loc_67901B: FLdPr var_138
  loc_67901E: LateIdLdVar var_BC DispID_11 0
  loc_679025: CBoolVar
  loc_679027: LitI2_Byte &HFF
  loc_679029: EqI2
  loc_67902A: FFreeAd var_130 = ""
  loc_679031: FFree1Var var_BC = ""
  loc_679034: BranchF loc_679050
  loc_679037: ImpAdLdUI1
  loc_67903B: FLdUI1
  loc_67903F: NeI2
  loc_679040: BranchF loc_679050
  loc_679043: FLdUI1
  loc_679047: ImpAdStUI1 MemVar_74C34D
  loc_67904B: LitI2_Byte &HFF
  loc_67904D: FStI2 var_88
  loc_679050: FLdRfVar var_86
  loc_679053: NextUI1
  loc_679059: ImpAdLdUI1
  loc_67905D: FStUI1 var_148
  loc_679061: FLdUI1
  loc_679065: LitI2_Byte 1
  loc_679067: CUI1I2
  loc_679069: EqI2
  loc_67906A: BranchF loc_67907E
  loc_67906D: LitStr "0.000"
  loc_679070: ImpAdStStrCopy MemVar_74C350
  loc_679074: LitI2 1000
  loc_679077: CR8I2
  loc_679078: ImpAdStFPR4 MemVar_74C2DC
  loc_67907B: Branch loc_679113
  loc_67907E: FLdUI1
  loc_679082: LitI2_Byte 2
  loc_679084: CUI1I2
  loc_679086: EqI2
  loc_679087: BranchF loc_67909A
  loc_67908A: LitStr "#0.00"
  loc_67908D: ImpAdStStrCopy MemVar_74C350
  loc_679091: LitI2_Byte &H64
  loc_679093: CR8I2
  loc_679094: ImpAdStFPR4 MemVar_74C2DC
  loc_679097: Branch loc_679113
  loc_67909A: FLdUI1
  loc_67909E: LitI2_Byte 3
  loc_6790A0: CUI1I2
  loc_6790A2: EqI2
  loc_6790A3: BranchF loc_6790B6
  loc_6790A6: LitStr "##0.00"
  loc_6790A9: ImpAdStStrCopy MemVar_74C350
  loc_6790AD: LitI2_Byte &HA
  loc_6790AF: CR8I2
  loc_6790B0: ImpAdStFPR4 MemVar_74C2DC
  loc_6790B3: Branch loc_679113
  loc_6790B6: FLdUI1
  loc_6790BA: LitI2_Byte 4
  loc_6790BC: CUI1I2
  loc_6790BE: EqI2
  loc_6790BF: BranchF loc_6790D2
  loc_6790C2: LitStr "#,##0.\-"
  loc_6790C5: ImpAdStStrCopy MemVar_74C350
  loc_6790C9: LitI2_Byte 1
  loc_6790CB: CR8I2
  loc_6790CC: ImpAdStFPR4 MemVar_74C2DC
  loc_6790CF: Branch loc_679113
  loc_6790D2: FLdUI1
  loc_6790D6: LitI2_Byte 5
  loc_6790D8: CUI1I2
  loc_6790DA: EqI2
  loc_6790DB: BranchF loc_6790F4
  loc_6790DE: LitStr "##,##0.\-"
  loc_6790E1: ImpAdStStrCopy MemVar_74C350
  loc_6790E5: LitDate 0.1
  loc_6790EE: ImpAdStFPR4 MemVar_74C2DC
  loc_6790F1: Branch loc_679113
  loc_6790F4: FLdUI1
  loc_6790F8: LitI2_Byte 6
  loc_6790FA: CUI1I2
  loc_6790FC: EqI2
  loc_6790FD: BranchF loc_679113
  loc_679100: LitStr "###,#00.\-"
  loc_679103: ImpAdStStrCopy MemVar_74C350
  loc_679107: LitDate 0.01
  loc_679110: ImpAdStFPR4 MemVar_74C2DC
  loc_679113: ImpAdLdUI1
  loc_679117: FStUI1 var_14A
  loc_67911B: FLdUI1
  loc_67911F: LitI2_Byte 1
  loc_679121: CUI1I2
  loc_679123: EqI2
  loc_679124: BranchF loc_67913E
  loc_679127: LitStr "##0.00"
  loc_67912A: ImpAdStStrCopy MemVar_74C364
  loc_67912E: LitStr "###0.00"
  loc_679131: ImpAdStStrCopy MemVar_74C368
  loc_679135: LitI2_Byte &H64
  loc_679137: CR8I2
  loc_679138: ImpAdStFPR4 MemVar_74C2E0
  loc_67913B: Branch loc_6791FC
  loc_67913E: FLdUI1
  loc_679142: LitI2_Byte 2
  loc_679144: CUI1I2
  loc_679146: EqI2
  loc_679147: BranchF loc_679161
  loc_67914A: LitStr "#,##0.00"
  loc_67914D: ImpAdStStrCopy MemVar_74C364
  loc_679151: LitStr "####0.0"
  loc_679154: ImpAdStStrCopy MemVar_74C368
  loc_679158: LitI2_Byte &HA
  loc_67915A: CR8I2
  loc_67915B: ImpAdStFPR4 MemVar_74C2E0
  loc_67915E: Branch loc_6791FC
  loc_679161: FLdUI1
  loc_679165: LitI2_Byte 3
  loc_679167: CUI1I2
  loc_679169: EqI2
  loc_67916A: BranchF loc_679184
  loc_67916D: LitStr "##,##0.00"
  loc_679170: ImpAdStStrCopy MemVar_74C364
  loc_679174: LitStr "#####0.\-"
  loc_679177: ImpAdStStrCopy MemVar_74C368
  loc_67917B: LitI2_Byte 1
  loc_67917D: CR8I2
  loc_67917E: ImpAdStFPR4 MemVar_74C2E0
  loc_679181: Branch loc_6791FC
  loc_679184: FLdUI1
  loc_679188: LitI2_Byte 4
  loc_67918A: CUI1I2
  loc_67918C: EqI2
  loc_67918D: BranchF loc_6791AD
  loc_679190: LitStr "###,##0.\-"
  loc_679193: ImpAdStStrCopy MemVar_74C364
  loc_679197: LitStr "#####0.\-"
  loc_67919A: ImpAdStStrCopy MemVar_74C368
  loc_67919E: LitDate 0.1
  loc_6791A7: ImpAdStFPR4 MemVar_74C2E0
  loc_6791AA: Branch loc_6791FC
  loc_6791AD: FLdUI1
  loc_6791B1: LitI2_Byte 5
  loc_6791B3: CUI1I2
  loc_6791B5: EqI2
  loc_6791B6: BranchF loc_6791D6
  loc_6791B9: LitStr "#,###,#00.\-"
  loc_6791BC: ImpAdStStrCopy MemVar_74C364
  loc_6791C0: LitStr "#####0.\-"
  loc_6791C3: ImpAdStStrCopy MemVar_74C368
  loc_6791C7: LitDate 0.01
  loc_6791D0: ImpAdStFPR4 MemVar_74C2E0
  loc_6791D3: Branch loc_6791FC
  loc_6791D6: FLdUI1
  loc_6791DA: LitI2_Byte 6
  loc_6791DC: CUI1I2
  loc_6791DE: EqI2
  loc_6791DF: BranchF loc_6791FC
  loc_6791E2: LitStr "##,###,000.\-"
  loc_6791E5: ImpAdStStrCopy MemVar_74C364
  loc_6791E9: LitStr "#####0.\-"
  loc_6791EC: ImpAdStStrCopy MemVar_74C368
  loc_6791F0: LitDate 0.001
  loc_6791F9: ImpAdStFPR4 MemVar_74C2E0
  loc_6791FC: ImpAdLdRf MemVar_74DCF8
  loc_6791FF: NewIfNullAd
  loc_679202: FStAdNoPop
  loc_679206: ImpAdLdRf MemVar_7520D4
  loc_679209: NewIfNullPr Global
  loc_67920C: Global.Unload from_stack_1
  loc_679211: FFree1Ad var_130
  loc_679214: ImpAdLdRf MemVar_74C34C
  loc_679217: ImpAdCallFPR4 Proc_87_16_603978()
  loc_67921C: FLdI2 var_88
  loc_67921F: BranchF loc_67923A
  loc_679222: LitVar_Missing var_AC
  loc_679225: PopAdLdVar
  loc_679226: LitVarI4
  loc_67922E: PopAdLdVar
  loc_67922F: ImpAdLdRf MemVar_74DD0C
  loc_679232: NewIfNullPr frmProgramacionPrecios
  loc_679235: frmProgramacionPrecios.Show from_stack_1, from_stack_2
  loc_67923A: ImpAdCallFPR4 Proc_87_17_729AA4()
  loc_67923F: ExitProcHresult
End Sub

Private Sub Form_Load() '5F3594
  'Data Table: 413AD8
  loc_5F3514: FLdRfVar var_1D4
  loc_5F3517: LitVar_Missing var_1D0
  loc_5F351A: LitVar_Missing var_1B0
  loc_5F351D: LitVar_Missing var_190
  loc_5F3520: LitVar_Missing var_170
  loc_5F3523: LitVar_Missing var_150
  loc_5F3526: LitVar_Missing var_130
  loc_5F3529: LitVar_Missing var_110
  loc_5F352C: LitVar_Missing var_F0
  loc_5F352F: LitVar_Missing var_D0
  loc_5F3532: LitVar_Missing var_B0
  loc_5F3535: LitStr "Configuración de la opción decimal"
  loc_5F3538: FStStrCopy var_90
  loc_5F353B: FLdRfVar var_90
  loc_5F353E: LitI4 &HC
  loc_5F3543: PopTmpLdAdStr var_8C
  loc_5F3546: LitI2_Byte &H31
  loc_5F3548: PopTmpLdAd2 var_86
  loc_5F354B: ImpAdLdRf MemVar_74C7D0
  loc_5F354E: NewIfNullPr clsMsg
  loc_5F3551: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_5F3556: ILdRf var_1D4
  loc_5F3559: FLdPr Me
  loc_5F355C: Me.Caption = from_stack_1
  loc_5F3561: FFreeStr var_90 = ""
  loc_5F3568: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_5F357F: ILdRf Me
  loc_5F3582: CastAd
  loc_5F3585: FStAdFunc var_1D8
  loc_5F3588: FLdRfVar var_1D8
  loc_5F358B: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5F3590: FFree1Ad var_1D8
  loc_5F3593: ExitProcHresult
End Sub

Private Sub Form_Activate() '6DD9A8
  'Data Table: 413AD8
  loc_6DCDAC: LitI2_Byte 0
  loc_6DCDAE: PopTmpLdAd2 var_8A
  loc_6DCDB1: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6DCDB6: NotI4
  loc_6DCDB7: BranchF loc_6DCDD0
  loc_6DCDBA: ILdRf Me
  loc_6DCDBD: FStAdNoPop
  loc_6DCDC1: ImpAdLdRf MemVar_7520D4
  loc_6DCDC4: NewIfNullPr Global
  loc_6DCDC7: Global.Unload from_stack_1
  loc_6DCDCC: FFree1Ad var_90
  loc_6DCDCF: ExitProcHresult
  loc_6DCDD0: ImpAdCallFPR4 DoEvents()
  loc_6DCDD5: FLdRfVar var_1E2
  loc_6DCDD8: FLdPrThis
  loc_6DCDD9: VCallAd Control_ID_Label_PPU
  loc_6DCDDC: FStAdFunc var_90
  loc_6DCDDF: FLdPr var_90
  loc_6DCDE2: Me = from_stack_1
  loc_6DCDE7: FLdRfVar var_1DC
  loc_6DCDEA: LitVar_Missing var_1D8
  loc_6DCDED: LitVar_Missing var_1B8
  loc_6DCDF0: LitVar_Missing var_198
  loc_6DCDF3: LitVar_Missing var_178
  loc_6DCDF6: LitVar_Missing var_158
  loc_6DCDF9: LitVar_Missing var_138
  loc_6DCDFC: LitVar_Missing var_118
  loc_6DCDFF: LitVar_Missing var_F8
  loc_6DCE02: LitVar_Missing var_D8
  loc_6DCE05: LitVar_Missing var_B8
  loc_6DCE08: LitStr "Precio por"
  loc_6DCE0B: FStStrCopy var_98
  loc_6DCE0E: FLdRfVar var_98
  loc_6DCE11: LitI4 2
  loc_6DCE16: PopTmpLdAdStr var_94
  loc_6DCE19: LitI2_Byte &H31
  loc_6DCE1B: PopTmpLdAd2 var_8A
  loc_6DCE1E: ImpAdLdRf MemVar_74C7D0
  loc_6DCE21: NewIfNullPr clsMsg
  loc_6DCE24: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DCE29: ILdRf var_1DC
  loc_6DCE2C: LitStr " "
  loc_6DCE2F: ConcatStr
  loc_6DCE30: FStStrNoPop var_1E0
  loc_6DCE33: ImpAdLdI4 MemVar_74BEBC
  loc_6DCE36: ConcatStr
  loc_6DCE37: FStStrNoPop var_1F0
  loc_6DCE3A: FLdRfVar var_1EC
  loc_6DCE3D: FLdI2 var_1E2
  loc_6DCE40: FLdPrThis
  loc_6DCE41: VCallAd Control_ID_Label_PPU
  loc_6DCE44: FStAdFunc var_1E8
  loc_6DCE47: FLdPr var_1E8
  loc_6DCE4A: Set from_stack_2 = Me(from_stack_1)
  loc_6DCE4F: FLdPr var_1EC
  loc_6DCE52: Me.Caption = from_stack_1
  loc_6DCE57: FFreeStr var_98 = "": var_1DC = "": var_1E0 = ""
  loc_6DCE62: FFreeAd var_90 = "": var_1E8 = ""
  loc_6DCE6B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6DCE82: FLdRfVar var_1E2
  loc_6DCE85: FLdPrThis
  loc_6DCE86: VCallAd Control_ID_Label_Amount
  loc_6DCE89: FStAdFunc var_90
  loc_6DCE8C: FLdPr var_90
  loc_6DCE8F: Me = from_stack_1
  loc_6DCE94: FLdRfVar var_1DC
  loc_6DCE97: LitVar_Missing var_1D8
  loc_6DCE9A: LitVar_Missing var_1B8
  loc_6DCE9D: LitVar_Missing var_198
  loc_6DCEA0: LitVar_Missing var_178
  loc_6DCEA3: LitVar_Missing var_158
  loc_6DCEA6: LitVar_Missing var_138
  loc_6DCEA9: LitVar_Missing var_118
  loc_6DCEAC: LitVar_Missing var_F8
  loc_6DCEAF: LitVar_Missing var_D8
  loc_6DCEB2: LitVar_Missing var_B8
  loc_6DCEB5: LitStr "Importe de Venta"
  loc_6DCEB8: FStStrCopy var_98
  loc_6DCEBB: FLdRfVar var_98
  loc_6DCEBE: LitI4 3
  loc_6DCEC3: PopTmpLdAdStr var_94
  loc_6DCEC6: LitI2_Byte &H31
  loc_6DCEC8: PopTmpLdAd2 var_8A
  loc_6DCECB: ImpAdLdRf MemVar_74C7D0
  loc_6DCECE: NewIfNullPr clsMsg
  loc_6DCED1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DCED6: ILdRf var_1DC
  loc_6DCED9: FLdRfVar var_1EC
  loc_6DCEDC: FLdI2 var_1E2
  loc_6DCEDF: FLdPrThis
  loc_6DCEE0: VCallAd Control_ID_Label_Amount
  loc_6DCEE3: FStAdFunc var_1E8
  loc_6DCEE6: FLdPr var_1E8
  loc_6DCEE9: Set from_stack_2 = Me(from_stack_1)
  loc_6DCEEE: FLdPr var_1EC
  loc_6DCEF1: Me.Caption = from_stack_1
  loc_6DCEF6: FFreeStr var_98 = ""
  loc_6DCEFD: FFreeAd var_90 = "": var_1E8 = ""
  loc_6DCF06: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6DCF1D: FLdRfVar var_1DC
  loc_6DCF20: LitVar_Missing var_1D8
  loc_6DCF23: LitVar_Missing var_1B8
  loc_6DCF26: LitVar_Missing var_198
  loc_6DCF29: LitVar_Missing var_178
  loc_6DCF2C: LitVar_Missing var_158
  loc_6DCF2F: LitVar_Missing var_138
  loc_6DCF32: LitVar_Missing var_118
  loc_6DCF35: LitVar_Missing var_F8
  loc_6DCF38: LitVar_Missing var_D8
  loc_6DCF3B: LitVar_Missing var_B8
  loc_6DCF3E: LitStr "Opción &1"
  loc_6DCF41: FStStrCopy var_98
  loc_6DCF44: FLdRfVar var_98
  loc_6DCF47: LitI4 4
  loc_6DCF4C: PopTmpLdAdStr var_94
  loc_6DCF4F: LitI2_Byte &H31
  loc_6DCF51: PopTmpLdAd2 var_8A
  loc_6DCF54: ImpAdLdRf MemVar_74C7D0
  loc_6DCF57: NewIfNullPr clsMsg
  loc_6DCF5A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DCF5F: FLdZeroAd var_1DC
  loc_6DCF62: CVarStr var_200
  loc_6DCF65: PopAdLdVar
  loc_6DCF66: FLdRfVar var_1E8
  loc_6DCF69: LitI2_Byte 1
  loc_6DCF6B: FLdPrThis
  loc_6DCF6C: VCallAd Control_ID_SSOption_PPU
  loc_6DCF6F: FStAdFunc var_90
  loc_6DCF72: FLdPr var_90
  loc_6DCF75: Set from_stack_2 = Me(from_stack_1)
  loc_6DCF7A: FLdPr var_1E8
  loc_6DCF7D: LateIdSt
  loc_6DCF82: FFree1Str var_98
  loc_6DCF85: FFreeAd var_90 = ""
  loc_6DCF8C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DCFA5: FLdRfVar var_1DC
  loc_6DCFA8: LitVar_Missing var_1D8
  loc_6DCFAB: LitVar_Missing var_1B8
  loc_6DCFAE: LitVar_Missing var_198
  loc_6DCFB1: LitVar_Missing var_178
  loc_6DCFB4: LitVar_Missing var_158
  loc_6DCFB7: LitVar_Missing var_138
  loc_6DCFBA: LitVar_Missing var_118
  loc_6DCFBD: LitVar_Missing var_F8
  loc_6DCFC0: LitVar_Missing var_D8
  loc_6DCFC3: LitVar_Missing var_B8
  loc_6DCFC6: LitStr "Opción &2"
  loc_6DCFC9: FStStrCopy var_98
  loc_6DCFCC: FLdRfVar var_98
  loc_6DCFCF: LitI4 5
  loc_6DCFD4: PopTmpLdAdStr var_94
  loc_6DCFD7: LitI2_Byte &H31
  loc_6DCFD9: PopTmpLdAd2 var_8A
  loc_6DCFDC: ImpAdLdRf MemVar_74C7D0
  loc_6DCFDF: NewIfNullPr clsMsg
  loc_6DCFE2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DCFE7: FLdZeroAd var_1DC
  loc_6DCFEA: CVarStr var_200
  loc_6DCFED: PopAdLdVar
  loc_6DCFEE: FLdRfVar var_1E8
  loc_6DCFF1: LitI2_Byte 2
  loc_6DCFF3: FLdPrThis
  loc_6DCFF4: VCallAd Control_ID_SSOption_PPU
  loc_6DCFF7: FStAdFunc var_90
  loc_6DCFFA: FLdPr var_90
  loc_6DCFFD: Set from_stack_2 = Me(from_stack_1)
  loc_6DD002: FLdPr var_1E8
  loc_6DD005: LateIdSt
  loc_6DD00A: FFree1Str var_98
  loc_6DD00D: FFreeAd var_90 = ""
  loc_6DD014: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD02D: FLdRfVar var_1DC
  loc_6DD030: LitVar_Missing var_1D8
  loc_6DD033: LitVar_Missing var_1B8
  loc_6DD036: LitVar_Missing var_198
  loc_6DD039: LitVar_Missing var_178
  loc_6DD03C: LitVar_Missing var_158
  loc_6DD03F: LitVar_Missing var_138
  loc_6DD042: LitVar_Missing var_118
  loc_6DD045: LitVar_Missing var_F8
  loc_6DD048: LitVar_Missing var_D8
  loc_6DD04B: LitVar_Missing var_B8
  loc_6DD04E: LitStr "Opción &3"
  loc_6DD051: FStStrCopy var_98
  loc_6DD054: FLdRfVar var_98
  loc_6DD057: LitI4 6
  loc_6DD05C: PopTmpLdAdStr var_94
  loc_6DD05F: LitI2_Byte &H31
  loc_6DD061: PopTmpLdAd2 var_8A
  loc_6DD064: ImpAdLdRf MemVar_74C7D0
  loc_6DD067: NewIfNullPr clsMsg
  loc_6DD06A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD06F: FLdZeroAd var_1DC
  loc_6DD072: CVarStr var_200
  loc_6DD075: PopAdLdVar
  loc_6DD076: FLdRfVar var_1E8
  loc_6DD079: LitI2_Byte 3
  loc_6DD07B: FLdPrThis
  loc_6DD07C: VCallAd Control_ID_SSOption_PPU
  loc_6DD07F: FStAdFunc var_90
  loc_6DD082: FLdPr var_90
  loc_6DD085: Set from_stack_2 = Me(from_stack_1)
  loc_6DD08A: FLdPr var_1E8
  loc_6DD08D: LateIdSt
  loc_6DD092: FFree1Str var_98
  loc_6DD095: FFreeAd var_90 = ""
  loc_6DD09C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD0B5: FLdRfVar var_1DC
  loc_6DD0B8: LitVar_Missing var_1D8
  loc_6DD0BB: LitVar_Missing var_1B8
  loc_6DD0BE: LitVar_Missing var_198
  loc_6DD0C1: LitVar_Missing var_178
  loc_6DD0C4: LitVar_Missing var_158
  loc_6DD0C7: LitVar_Missing var_138
  loc_6DD0CA: LitVar_Missing var_118
  loc_6DD0CD: LitVar_Missing var_F8
  loc_6DD0D0: LitVar_Missing var_D8
  loc_6DD0D3: LitVar_Missing var_B8
  loc_6DD0D6: LitStr "Opción &4"
  loc_6DD0D9: FStStrCopy var_98
  loc_6DD0DC: FLdRfVar var_98
  loc_6DD0DF: LitI4 7
  loc_6DD0E4: PopTmpLdAdStr var_94
  loc_6DD0E7: LitI2_Byte &H31
  loc_6DD0E9: PopTmpLdAd2 var_8A
  loc_6DD0EC: ImpAdLdRf MemVar_74C7D0
  loc_6DD0EF: NewIfNullPr clsMsg
  loc_6DD0F2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD0F7: FLdZeroAd var_1DC
  loc_6DD0FA: CVarStr var_200
  loc_6DD0FD: PopAdLdVar
  loc_6DD0FE: FLdRfVar var_1E8
  loc_6DD101: LitI2_Byte 4
  loc_6DD103: FLdPrThis
  loc_6DD104: VCallAd Control_ID_SSOption_PPU
  loc_6DD107: FStAdFunc var_90
  loc_6DD10A: FLdPr var_90
  loc_6DD10D: Set from_stack_2 = Me(from_stack_1)
  loc_6DD112: FLdPr var_1E8
  loc_6DD115: LateIdSt
  loc_6DD11A: FFree1Str var_98
  loc_6DD11D: FFreeAd var_90 = ""
  loc_6DD124: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD13D: FLdRfVar var_1DC
  loc_6DD140: LitVar_Missing var_1D8
  loc_6DD143: LitVar_Missing var_1B8
  loc_6DD146: LitVar_Missing var_198
  loc_6DD149: LitVar_Missing var_178
  loc_6DD14C: LitVar_Missing var_158
  loc_6DD14F: LitVar_Missing var_138
  loc_6DD152: LitVar_Missing var_118
  loc_6DD155: LitVar_Missing var_F8
  loc_6DD158: LitVar_Missing var_D8
  loc_6DD15B: LitVar_Missing var_B8
  loc_6DD15E: LitStr "Opción &5"
  loc_6DD161: FStStrCopy var_98
  loc_6DD164: FLdRfVar var_98
  loc_6DD167: LitI4 8
  loc_6DD16C: PopTmpLdAdStr var_94
  loc_6DD16F: LitI2_Byte &H31
  loc_6DD171: PopTmpLdAd2 var_8A
  loc_6DD174: ImpAdLdRf MemVar_74C7D0
  loc_6DD177: NewIfNullPr clsMsg
  loc_6DD17A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD17F: FLdZeroAd var_1DC
  loc_6DD182: CVarStr var_200
  loc_6DD185: PopAdLdVar
  loc_6DD186: FLdRfVar var_1E8
  loc_6DD189: LitI2_Byte 5
  loc_6DD18B: FLdPrThis
  loc_6DD18C: VCallAd Control_ID_SSOption_PPU
  loc_6DD18F: FStAdFunc var_90
  loc_6DD192: FLdPr var_90
  loc_6DD195: Set from_stack_2 = Me(from_stack_1)
  loc_6DD19A: FLdPr var_1E8
  loc_6DD19D: LateIdSt
  loc_6DD1A2: FFree1Str var_98
  loc_6DD1A5: FFreeAd var_90 = ""
  loc_6DD1AC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD1C5: FLdRfVar var_1DC
  loc_6DD1C8: LitVar_Missing var_1D8
  loc_6DD1CB: LitVar_Missing var_1B8
  loc_6DD1CE: LitVar_Missing var_198
  loc_6DD1D1: LitVar_Missing var_178
  loc_6DD1D4: LitVar_Missing var_158
  loc_6DD1D7: LitVar_Missing var_138
  loc_6DD1DA: LitVar_Missing var_118
  loc_6DD1DD: LitVar_Missing var_F8
  loc_6DD1E0: LitVar_Missing var_D8
  loc_6DD1E3: LitVar_Missing var_B8
  loc_6DD1E6: LitStr "Opción &6"
  loc_6DD1E9: FStStrCopy var_98
  loc_6DD1EC: FLdRfVar var_98
  loc_6DD1EF: LitI4 9
  loc_6DD1F4: PopTmpLdAdStr var_94
  loc_6DD1F7: LitI2_Byte &H31
  loc_6DD1F9: PopTmpLdAd2 var_8A
  loc_6DD1FC: ImpAdLdRf MemVar_74C7D0
  loc_6DD1FF: NewIfNullPr clsMsg
  loc_6DD202: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD207: FLdZeroAd var_1DC
  loc_6DD20A: CVarStr var_200
  loc_6DD20D: PopAdLdVar
  loc_6DD20E: FLdRfVar var_1E8
  loc_6DD211: LitI2_Byte 6
  loc_6DD213: FLdPrThis
  loc_6DD214: VCallAd Control_ID_SSOption_PPU
  loc_6DD217: FStAdFunc var_90
  loc_6DD21A: FLdPr var_90
  loc_6DD21D: Set from_stack_2 = Me(from_stack_1)
  loc_6DD222: FLdPr var_1E8
  loc_6DD225: LateIdSt
  loc_6DD22A: FFree1Str var_98
  loc_6DD22D: FFreeAd var_90 = ""
  loc_6DD234: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD24D: FLdRfVar var_1DC
  loc_6DD250: LitVar_Missing var_1D8
  loc_6DD253: LitVar_Missing var_1B8
  loc_6DD256: LitVar_Missing var_198
  loc_6DD259: LitVar_Missing var_178
  loc_6DD25C: LitVar_Missing var_158
  loc_6DD25F: LitVar_Missing var_138
  loc_6DD262: LitVar_Missing var_118
  loc_6DD265: LitVar_Missing var_F8
  loc_6DD268: LitVar_Missing var_D8
  loc_6DD26B: LitVar_Missing var_B8
  loc_6DD26E: LitStr "Opción &1"
  loc_6DD271: FStStrCopy var_98
  loc_6DD274: FLdRfVar var_98
  loc_6DD277: LitI4 4
  loc_6DD27C: PopTmpLdAdStr var_94
  loc_6DD27F: LitI2_Byte &H31
  loc_6DD281: PopTmpLdAd2 var_8A
  loc_6DD284: ImpAdLdRf MemVar_74C7D0
  loc_6DD287: NewIfNullPr clsMsg
  loc_6DD28A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD28F: FLdZeroAd var_1DC
  loc_6DD292: CVarStr var_200
  loc_6DD295: PopAdLdVar
  loc_6DD296: FLdRfVar var_1E8
  loc_6DD299: LitI2_Byte 1
  loc_6DD29B: FLdPrThis
  loc_6DD29C: VCallAd Control_ID_SSOption_Amount
  loc_6DD29F: FStAdFunc var_90
  loc_6DD2A2: FLdPr var_90
  loc_6DD2A5: Set from_stack_2 = Me(from_stack_1)
  loc_6DD2AA: FLdPr var_1E8
  loc_6DD2AD: LateIdSt
  loc_6DD2B2: FFree1Str var_98
  loc_6DD2B5: FFreeAd var_90 = ""
  loc_6DD2BC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD2D5: FLdRfVar var_1DC
  loc_6DD2D8: LitVar_Missing var_1D8
  loc_6DD2DB: LitVar_Missing var_1B8
  loc_6DD2DE: LitVar_Missing var_198
  loc_6DD2E1: LitVar_Missing var_178
  loc_6DD2E4: LitVar_Missing var_158
  loc_6DD2E7: LitVar_Missing var_138
  loc_6DD2EA: LitVar_Missing var_118
  loc_6DD2ED: LitVar_Missing var_F8
  loc_6DD2F0: LitVar_Missing var_D8
  loc_6DD2F3: LitVar_Missing var_B8
  loc_6DD2F6: LitStr "Opción &2"
  loc_6DD2F9: FStStrCopy var_98
  loc_6DD2FC: FLdRfVar var_98
  loc_6DD2FF: LitI4 5
  loc_6DD304: PopTmpLdAdStr var_94
  loc_6DD307: LitI2_Byte &H31
  loc_6DD309: PopTmpLdAd2 var_8A
  loc_6DD30C: ImpAdLdRf MemVar_74C7D0
  loc_6DD30F: NewIfNullPr clsMsg
  loc_6DD312: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD317: FLdZeroAd var_1DC
  loc_6DD31A: CVarStr var_200
  loc_6DD31D: PopAdLdVar
  loc_6DD31E: FLdRfVar var_1E8
  loc_6DD321: LitI2_Byte 2
  loc_6DD323: FLdPrThis
  loc_6DD324: VCallAd Control_ID_SSOption_Amount
  loc_6DD327: FStAdFunc var_90
  loc_6DD32A: FLdPr var_90
  loc_6DD32D: Set from_stack_2 = Me(from_stack_1)
  loc_6DD332: FLdPr var_1E8
  loc_6DD335: LateIdSt
  loc_6DD33A: FFree1Str var_98
  loc_6DD33D: FFreeAd var_90 = ""
  loc_6DD344: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD35D: FLdRfVar var_1DC
  loc_6DD360: LitVar_Missing var_1D8
  loc_6DD363: LitVar_Missing var_1B8
  loc_6DD366: LitVar_Missing var_198
  loc_6DD369: LitVar_Missing var_178
  loc_6DD36C: LitVar_Missing var_158
  loc_6DD36F: LitVar_Missing var_138
  loc_6DD372: LitVar_Missing var_118
  loc_6DD375: LitVar_Missing var_F8
  loc_6DD378: LitVar_Missing var_D8
  loc_6DD37B: LitVar_Missing var_B8
  loc_6DD37E: LitStr "Opción &3"
  loc_6DD381: FStStrCopy var_98
  loc_6DD384: FLdRfVar var_98
  loc_6DD387: LitI4 6
  loc_6DD38C: PopTmpLdAdStr var_94
  loc_6DD38F: LitI2_Byte &H31
  loc_6DD391: PopTmpLdAd2 var_8A
  loc_6DD394: ImpAdLdRf MemVar_74C7D0
  loc_6DD397: NewIfNullPr clsMsg
  loc_6DD39A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD39F: FLdZeroAd var_1DC
  loc_6DD3A2: CVarStr var_200
  loc_6DD3A5: PopAdLdVar
  loc_6DD3A6: FLdRfVar var_1E8
  loc_6DD3A9: LitI2_Byte 3
  loc_6DD3AB: FLdPrThis
  loc_6DD3AC: VCallAd Control_ID_SSOption_Amount
  loc_6DD3AF: FStAdFunc var_90
  loc_6DD3B2: FLdPr var_90
  loc_6DD3B5: Set from_stack_2 = Me(from_stack_1)
  loc_6DD3BA: FLdPr var_1E8
  loc_6DD3BD: LateIdSt
  loc_6DD3C2: FFree1Str var_98
  loc_6DD3C5: FFreeAd var_90 = ""
  loc_6DD3CC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD3E5: FLdRfVar var_1DC
  loc_6DD3E8: LitVar_Missing var_1D8
  loc_6DD3EB: LitVar_Missing var_1B8
  loc_6DD3EE: LitVar_Missing var_198
  loc_6DD3F1: LitVar_Missing var_178
  loc_6DD3F4: LitVar_Missing var_158
  loc_6DD3F7: LitVar_Missing var_138
  loc_6DD3FA: LitVar_Missing var_118
  loc_6DD3FD: LitVar_Missing var_F8
  loc_6DD400: LitVar_Missing var_D8
  loc_6DD403: LitVar_Missing var_B8
  loc_6DD406: LitStr "Opción &4"
  loc_6DD409: FStStrCopy var_98
  loc_6DD40C: FLdRfVar var_98
  loc_6DD40F: LitI4 7
  loc_6DD414: PopTmpLdAdStr var_94
  loc_6DD417: LitI2_Byte &H31
  loc_6DD419: PopTmpLdAd2 var_8A
  loc_6DD41C: ImpAdLdRf MemVar_74C7D0
  loc_6DD41F: NewIfNullPr clsMsg
  loc_6DD422: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD427: FLdZeroAd var_1DC
  loc_6DD42A: CVarStr var_200
  loc_6DD42D: PopAdLdVar
  loc_6DD42E: FLdRfVar var_1E8
  loc_6DD431: LitI2_Byte 4
  loc_6DD433: FLdPrThis
  loc_6DD434: VCallAd Control_ID_SSOption_Amount
  loc_6DD437: FStAdFunc var_90
  loc_6DD43A: FLdPr var_90
  loc_6DD43D: Set from_stack_2 = Me(from_stack_1)
  loc_6DD442: FLdPr var_1E8
  loc_6DD445: LateIdSt
  loc_6DD44A: FFree1Str var_98
  loc_6DD44D: FFreeAd var_90 = ""
  loc_6DD454: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD46D: FLdRfVar var_1DC
  loc_6DD470: LitVar_Missing var_1D8
  loc_6DD473: LitVar_Missing var_1B8
  loc_6DD476: LitVar_Missing var_198
  loc_6DD479: LitVar_Missing var_178
  loc_6DD47C: LitVar_Missing var_158
  loc_6DD47F: LitVar_Missing var_138
  loc_6DD482: LitVar_Missing var_118
  loc_6DD485: LitVar_Missing var_F8
  loc_6DD488: LitVar_Missing var_D8
  loc_6DD48B: LitVar_Missing var_B8
  loc_6DD48E: LitStr "Opción &5"
  loc_6DD491: FStStrCopy var_98
  loc_6DD494: FLdRfVar var_98
  loc_6DD497: LitI4 8
  loc_6DD49C: PopTmpLdAdStr var_94
  loc_6DD49F: LitI2_Byte &H31
  loc_6DD4A1: PopTmpLdAd2 var_8A
  loc_6DD4A4: ImpAdLdRf MemVar_74C7D0
  loc_6DD4A7: NewIfNullPr clsMsg
  loc_6DD4AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD4AF: FLdZeroAd var_1DC
  loc_6DD4B2: CVarStr var_200
  loc_6DD4B5: PopAdLdVar
  loc_6DD4B6: FLdRfVar var_1E8
  loc_6DD4B9: LitI2_Byte 5
  loc_6DD4BB: FLdPrThis
  loc_6DD4BC: VCallAd Control_ID_SSOption_Amount
  loc_6DD4BF: FStAdFunc var_90
  loc_6DD4C2: FLdPr var_90
  loc_6DD4C5: Set from_stack_2 = Me(from_stack_1)
  loc_6DD4CA: FLdPr var_1E8
  loc_6DD4CD: LateIdSt
  loc_6DD4D2: FFree1Str var_98
  loc_6DD4D5: FFreeAd var_90 = ""
  loc_6DD4DC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD4F5: FLdRfVar var_1DC
  loc_6DD4F8: LitVar_Missing var_1D8
  loc_6DD4FB: LitVar_Missing var_1B8
  loc_6DD4FE: LitVar_Missing var_198
  loc_6DD501: LitVar_Missing var_178
  loc_6DD504: LitVar_Missing var_158
  loc_6DD507: LitVar_Missing var_138
  loc_6DD50A: LitVar_Missing var_118
  loc_6DD50D: LitVar_Missing var_F8
  loc_6DD510: LitVar_Missing var_D8
  loc_6DD513: LitVar_Missing var_B8
  loc_6DD516: LitStr "Opción &6"
  loc_6DD519: FStStrCopy var_98
  loc_6DD51C: FLdRfVar var_98
  loc_6DD51F: LitI4 9
  loc_6DD524: PopTmpLdAdStr var_94
  loc_6DD527: LitI2_Byte &H31
  loc_6DD529: PopTmpLdAd2 var_8A
  loc_6DD52C: ImpAdLdRf MemVar_74C7D0
  loc_6DD52F: NewIfNullPr clsMsg
  loc_6DD532: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD537: FLdZeroAd var_1DC
  loc_6DD53A: CVarStr var_200
  loc_6DD53D: PopAdLdVar
  loc_6DD53E: FLdRfVar var_1E8
  loc_6DD541: LitI2_Byte 6
  loc_6DD543: FLdPrThis
  loc_6DD544: VCallAd Control_ID_SSOption_Amount
  loc_6DD547: FStAdFunc var_90
  loc_6DD54A: FLdPr var_90
  loc_6DD54D: Set from_stack_2 = Me(from_stack_1)
  loc_6DD552: FLdPr var_1E8
  loc_6DD555: LateIdSt
  loc_6DD55A: FFree1Str var_98
  loc_6DD55D: FFreeAd var_90 = ""
  loc_6DD564: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD57D: FLdRfVar var_1DC
  loc_6DD580: LitVar_Missing var_1D8
  loc_6DD583: LitVar_Missing var_1B8
  loc_6DD586: LitVar_Missing var_198
  loc_6DD589: LitVar_Missing var_178
  loc_6DD58C: LitVar_Missing var_158
  loc_6DD58F: LitVar_Missing var_138
  loc_6DD592: LitVar_Missing var_118
  loc_6DD595: LitVar_Missing var_F8
  loc_6DD598: LitVar_Missing var_D8
  loc_6DD59B: LitVar_Missing var_B8
  loc_6DD59E: LitStr "&Cancelar"
  loc_6DD5A1: FStStrCopy var_98
  loc_6DD5A4: FLdRfVar var_98
  loc_6DD5A7: LitI4 &HA
  loc_6DD5AC: PopTmpLdAdStr var_94
  loc_6DD5AF: LitI2_Byte &H31
  loc_6DD5B1: PopTmpLdAd2 var_8A
  loc_6DD5B4: ImpAdLdRf MemVar_74C7D0
  loc_6DD5B7: NewIfNullPr clsMsg
  loc_6DD5BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD5BF: FLdZeroAd var_1DC
  loc_6DD5C2: CVarStr var_200
  loc_6DD5C5: PopAdLdVar
  loc_6DD5C6: FLdPrThis
  loc_6DD5C7: VCallAd Control_ID_SSCancelar
  loc_6DD5CA: FStAdFunc var_90
  loc_6DD5CD: FLdPr var_90
  loc_6DD5D0: LateIdSt
  loc_6DD5D5: FFree1Str var_98
  loc_6DD5D8: FFree1Ad var_90
  loc_6DD5DB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD5F4: FLdRfVar var_1DC
  loc_6DD5F7: LitVar_Missing var_1D8
  loc_6DD5FA: LitVar_Missing var_1B8
  loc_6DD5FD: LitVar_Missing var_198
  loc_6DD600: LitVar_Missing var_178
  loc_6DD603: LitVar_Missing var_158
  loc_6DD606: LitVar_Missing var_138
  loc_6DD609: LitVar_Missing var_118
  loc_6DD60C: LitVar_Missing var_F8
  loc_6DD60F: LitVar_Missing var_D8
  loc_6DD612: LitVar_Missing var_B8
  loc_6DD615: LitStr "&Aceptar"
  loc_6DD618: FStStrCopy var_98
  loc_6DD61B: FLdRfVar var_98
  loc_6DD61E: LitI4 &HB
  loc_6DD623: PopTmpLdAdStr var_94
  loc_6DD626: LitI2_Byte &H31
  loc_6DD628: PopTmpLdAd2 var_8A
  loc_6DD62B: ImpAdLdRf MemVar_74C7D0
  loc_6DD62E: NewIfNullPr clsMsg
  loc_6DD631: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DD636: FLdZeroAd var_1DC
  loc_6DD639: CVarStr var_200
  loc_6DD63C: PopAdLdVar
  loc_6DD63D: FLdPrThis
  loc_6DD63E: VCallAd Control_ID_SSAceptar
  loc_6DD641: FStAdFunc var_90
  loc_6DD644: FLdPr var_90
  loc_6DD647: LateIdSt
  loc_6DD64C: FFree1Str var_98
  loc_6DD64F: FFree1Ad var_90
  loc_6DD652: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_6DD66B: LitStr "CEM44.INI"
  loc_6DD66E: FLdRfVar var_1E0
  loc_6DD671: CStr2Ansi
  loc_6DD672: ILdRf var_1E0
  loc_6DD675: LitI4 1
  loc_6DD67A: LitStr "ACTIVE_OLD_DECIMAL_OPTION"
  loc_6DD67D: FLdRfVar var_1DC
  loc_6DD680: CStr2Ansi
  loc_6DD681: ILdRf var_1DC
  loc_6DD684: LitStr "GENERAL"
  loc_6DD687: FLdRfVar var_98
  loc_6DD68A: CStr2Ansi
  loc_6DD68B: ILdRf var_98
  loc_6DD68E: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6DD693: FStR4 var_94
  loc_6DD696: SetLastSystemError
  loc_6DD697: ILdRf var_94
  loc_6DD69A: CUI1I4
  loc_6DD69C: FStUI1 var_88
  loc_6DD6A0: FFreeStr var_98 = "": var_1DC = ""
  loc_6DD6A9: FLdUI1
  loc_6DD6AD: CI2UI1
  loc_6DD6AF: LitI2_Byte 0
  loc_6DD6B1: NeI2
  loc_6DD6B2: BranchF loc_6DD832
  loc_6DD6B5: LitVar_FALSE
  loc_6DD6B9: PopAdLdVar
  loc_6DD6BA: FLdPrThis
  loc_6DD6BB: VCallAd Control_ID_SSPanel_Amount
  loc_6DD6BE: FStAdFunc var_90
  loc_6DD6C1: FLdPr var_90
  loc_6DD6C4: LateIdSt
  loc_6DD6C9: FFree1Ad var_90
  loc_6DD6CC: FLdRfVar var_8A
  loc_6DD6CF: FLdPrThis
  loc_6DD6D0: VCallAd Control_ID_Label_Amount
  loc_6DD6D3: FStAdFunc var_90
  loc_6DD6D6: FLdPr var_90
  loc_6DD6D9: Me = from_stack_1
  loc_6DD6DE: FLdI2 var_8A
  loc_6DD6E1: CUI1I2
  loc_6DD6E3: FLdRfVar var_86
  loc_6DD6E6: FLdRfVar var_1E2
  loc_6DD6E9: FLdPrThis
  loc_6DD6EA: VCallAd Control_ID_Label_Amount
  loc_6DD6ED: FStAdFunc var_1E8
  loc_6DD6F0: FLdPr var_1E8
  loc_6DD6F3:  = Me.Name
  loc_6DD6F8: FLdI2 var_1E2
  loc_6DD6FB: CUI1I2
  loc_6DD6FD: FFreeAd var_90 = ""
  loc_6DD704: ForUI1 var_204
  loc_6DD70A: LitI2 4920
  loc_6DD70D: CR8I2
  loc_6DD70E: PopFPR4
  loc_6DD70F: FLdRfVar var_1E8
  loc_6DD712: FLdUI1
  loc_6DD716: CI2UI1
  loc_6DD718: FLdPrThis
  loc_6DD719: VCallAd Control_ID_Label_Amount
  loc_6DD71C: FStAdFunc var_90
  loc_6DD71F: FLdPr var_90
  loc_6DD722: Set from_stack_2 = Me(from_stack_1)
  loc_6DD727: FLdPr var_1E8
  loc_6DD72A: Me.Left = from_stack_1s
  loc_6DD72F: FFreeAd var_90 = ""
  loc_6DD736: FLdRfVar var_86
  loc_6DD739: NextUI1
  loc_6DD73F: LitI2 8085
  loc_6DD742: CR8I2
  loc_6DD743: PopFPR4
  loc_6DD744: FLdPr Me
  loc_6DD747: Me.Width = from_stack_1s
  loc_6DD74C: LitI2 6000
  loc_6DD74F: CR8I2
  loc_6DD750: CVarR4
  loc_6DD754: PopAdLdVar
  loc_6DD755: FLdPrThis
  loc_6DD756: VCallAd Control_ID_SSAceptar
  loc_6DD759: FStAdFunc var_90
  loc_6DD75C: FLdPr var_90
  loc_6DD75F: LateIdSt
  loc_6DD764: FFree1Ad var_90
  loc_6DD767: LitI2 3960
  loc_6DD76A: CR8I2
  loc_6DD76B: CVarR4
  loc_6DD76F: PopAdLdVar
  loc_6DD770: FLdPrThis
  loc_6DD771: VCallAd Control_ID_SSCancelar
  loc_6DD774: FStAdFunc var_90
  loc_6DD777: FLdPr var_90
  loc_6DD77A: LateIdSt
  loc_6DD77F: FFree1Ad var_90
  loc_6DD782: FLdRfVar var_8A
  loc_6DD785: FLdPrThis
  loc_6DD786: VCallAd Control_ID_SSOption_PPU
  loc_6DD789: FStAdFunc var_90
  loc_6DD78C: FLdPr var_90
  loc_6DD78F: Me = from_stack_1
  loc_6DD794: FLdI2 var_8A
  loc_6DD797: ImpAdLdUI1
  loc_6DD79B: CI2UI1
  loc_6DD79D: LeI2
  loc_6DD79E: ImpAdLdUI1
  loc_6DD7A2: CI2UI1
  loc_6DD7A4: FLdRfVar var_1E2
  loc_6DD7A7: FLdPrThis
  loc_6DD7A8: VCallAd Control_ID_SSOption_PPU
  loc_6DD7AB: FStAdFunc var_1E8
  loc_6DD7AE: FLdPr var_1E8
  loc_6DD7B1:  = Me.Name
  loc_6DD7B6: FLdI2 var_1E2
  loc_6DD7B9: LeI2
  loc_6DD7BA: AndI4
  loc_6DD7BB: FFreeAd var_90 = ""
  loc_6DD7C2: BranchF loc_6DD7F3
  loc_6DD7C5: LitVar_TRUE var_A8
  loc_6DD7C8: PopAdLdVar
  loc_6DD7C9: FLdRfVar var_1E8
  loc_6DD7CC: ImpAdLdUI1
  loc_6DD7D0: CI2UI1
  loc_6DD7D2: FLdPrThis
  loc_6DD7D3: VCallAd Control_ID_SSOption_PPU
  loc_6DD7D6: FStAdFunc var_90
  loc_6DD7D9: FLdPr var_90
  loc_6DD7DC: Set from_stack_2 = Me(from_stack_1)
  loc_6DD7E1: FLdPr var_1E8
  loc_6DD7E4: LateIdSt
  loc_6DD7E9: FFreeAd var_90 = ""
  loc_6DD7F0: Branch loc_6DD82F
  loc_6DD7F3: LitVar_TRUE var_A8
  loc_6DD7F6: PopAdLdVar
  loc_6DD7F7: FLdRfVar var_1EC
  loc_6DD7FA: FLdRfVar var_8A
  loc_6DD7FD: FLdPrThis
  loc_6DD7FE: VCallAd Control_ID_SSOption_PPU
  loc_6DD801: FStAdFunc var_90
  loc_6DD804: FLdPr var_90
  loc_6DD807: Me = from_stack_1
  loc_6DD80C: FLdI2 var_8A
  loc_6DD80F: FLdPrThis
  loc_6DD810: VCallAd Control_ID_SSOption_PPU
  loc_6DD813: FStAdFunc var_1E8
  loc_6DD816: FLdPr var_1E8
  loc_6DD819: Set from_stack_2 = Me(from_stack_1)
  loc_6DD81E: FLdPr var_1EC
  loc_6DD821: LateIdSt
  loc_6DD826: FFreeAd var_90 = "": var_1E8 = ""
  loc_6DD82F: Branch loc_6DD98C
  loc_6DD832: FLdRfVar var_8A
  loc_6DD835: FLdPrThis
  loc_6DD836: VCallAd Control_ID_SSOption_PPU
  loc_6DD839: FStAdFunc var_90
  loc_6DD83C: FLdPr var_90
  loc_6DD83F: Me = from_stack_1
  loc_6DD844: FLdI2 var_8A
  loc_6DD847: ImpAdLdUI1
  loc_6DD84B: CI2UI1
  loc_6DD84D: LeI2
  loc_6DD84E: ImpAdLdUI1
  loc_6DD852: CI2UI1
  loc_6DD854: FLdRfVar var_1E2
  loc_6DD857: FLdPrThis
  loc_6DD858: VCallAd Control_ID_SSOption_PPU
  loc_6DD85B: FStAdFunc var_1E8
  loc_6DD85E: FLdPr var_1E8
  loc_6DD861:  = Me.Name
  loc_6DD866: FLdI2 var_1E2
  loc_6DD869: LeI2
  loc_6DD86A: AndI4
  loc_6DD86B: FFreeAd var_90 = ""
  loc_6DD872: BranchF loc_6DD8A3
  loc_6DD875: LitVar_TRUE var_A8
  loc_6DD878: PopAdLdVar
  loc_6DD879: FLdRfVar var_1E8
  loc_6DD87C: ImpAdLdUI1
  loc_6DD880: CI2UI1
  loc_6DD882: FLdPrThis
  loc_6DD883: VCallAd Control_ID_SSOption_PPU
  loc_6DD886: FStAdFunc var_90
  loc_6DD889: FLdPr var_90
  loc_6DD88C: Set from_stack_2 = Me(from_stack_1)
  loc_6DD891: FLdPr var_1E8
  loc_6DD894: LateIdSt
  loc_6DD899: FFreeAd var_90 = ""
  loc_6DD8A0: Branch loc_6DD8DF
  loc_6DD8A3: LitVar_TRUE var_A8
  loc_6DD8A6: PopAdLdVar
  loc_6DD8A7: FLdRfVar var_1EC
  loc_6DD8AA: FLdRfVar var_8A
  loc_6DD8AD: FLdPrThis
  loc_6DD8AE: VCallAd Control_ID_SSOption_PPU
  loc_6DD8B1: FStAdFunc var_90
  loc_6DD8B4: FLdPr var_90
  loc_6DD8B7: Me = from_stack_1
  loc_6DD8BC: FLdI2 var_8A
  loc_6DD8BF: FLdPrThis
  loc_6DD8C0: VCallAd Control_ID_SSOption_PPU
  loc_6DD8C3: FStAdFunc var_1E8
  loc_6DD8C6: FLdPr var_1E8
  loc_6DD8C9: Set from_stack_2 = Me(from_stack_1)
  loc_6DD8CE: FLdPr var_1EC
  loc_6DD8D1: LateIdSt
  loc_6DD8D6: FFreeAd var_90 = "": var_1E8 = ""
  loc_6DD8DF: FLdRfVar var_8A
  loc_6DD8E2: FLdPrThis
  loc_6DD8E3: VCallAd Control_ID_SSOption_Amount
  loc_6DD8E6: FStAdFunc var_90
  loc_6DD8E9: FLdPr var_90
  loc_6DD8EC: Me = from_stack_1
  loc_6DD8F1: FLdI2 var_8A
  loc_6DD8F4: ImpAdLdUI1
  loc_6DD8F8: CI2UI1
  loc_6DD8FA: LeI2
  loc_6DD8FB: ImpAdLdUI1
  loc_6DD8FF: CI2UI1
  loc_6DD901: FLdRfVar var_1E2
  loc_6DD904: FLdPrThis
  loc_6DD905: VCallAd Control_ID_SSOption_Amount
  loc_6DD908: FStAdFunc var_1E8
  loc_6DD90B: FLdPr var_1E8
  loc_6DD90E:  = Me.Name
  loc_6DD913: FLdI2 var_1E2
  loc_6DD916: LeI2
  loc_6DD917: AndI4
  loc_6DD918: FFreeAd var_90 = ""
  loc_6DD91F: BranchF loc_6DD950
  loc_6DD922: LitVar_TRUE var_A8
  loc_6DD925: PopAdLdVar
  loc_6DD926: FLdRfVar var_1E8
  loc_6DD929: ImpAdLdUI1
  loc_6DD92D: CI2UI1
  loc_6DD92F: FLdPrThis
  loc_6DD930: VCallAd Control_ID_SSOption_Amount
  loc_6DD933: FStAdFunc var_90
  loc_6DD936: FLdPr var_90
  loc_6DD939: Set from_stack_2 = Me(from_stack_1)
  loc_6DD93E: FLdPr var_1E8
  loc_6DD941: LateIdSt
  loc_6DD946: FFreeAd var_90 = ""
  loc_6DD94D: Branch loc_6DD98C
  loc_6DD950: LitVar_TRUE var_A8
  loc_6DD953: PopAdLdVar
  loc_6DD954: FLdRfVar var_1EC
  loc_6DD957: FLdRfVar var_8A
  loc_6DD95A: FLdPrThis
  loc_6DD95B: VCallAd Control_ID_SSOption_Amount
  loc_6DD95E: FStAdFunc var_90
  loc_6DD961: FLdPr var_90
  loc_6DD964: Me = from_stack_1
  loc_6DD969: FLdI2 var_8A
  loc_6DD96C: FLdPrThis
  loc_6DD96D: VCallAd Control_ID_SSOption_Amount
  loc_6DD970: FStAdFunc var_1E8
  loc_6DD973: FLdPr var_1E8
  loc_6DD976: Set from_stack_2 = Me(from_stack_1)
  loc_6DD97B: FLdPr var_1EC
  loc_6DD97E: LateIdSt
  loc_6DD983: FFreeAd var_90 = "": var_1E8 = ""
  loc_6DD98C: LitI2_Byte 0
  loc_6DD98E: ImpAdLdRf MemVar_74C760
  loc_6DD991: NewIfNullPr Formx
  loc_6DD994: VCallAd Control_ID_Text1
  loc_6DD997: FStAdFunc var_90
  loc_6DD99A: FLdPr var_90
  loc_6DD99D: Formx.TextBox.Visible = from_stack_1b
  loc_6DD9A2: FFree1Ad var_90
  loc_6DD9A5: ExitProcHresult
End Sub
