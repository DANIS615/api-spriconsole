VERSION 5.00
Begin VB.Form frmAbout
  Caption = "Acerca de..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 2160
  ClientTop = 1485
  ClientWidth = 7965
  ClientHeight = 6720
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.CommandButton cmdabout
    Caption = "&Aceptar"
    Left = 3000
    Top = 6120
    Width = 1815
    Height = 555
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 15
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    Left = 180
    Top = 0
    Width = 7575
    Height = 6015
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame3
      Left = 1680
      Top = 1440
      Width = 5565
      Height = 30
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdLibraries
      Caption = "Librerias cargadas"
      Left = 3180
      Top = 5220
      Width = 1935
      Height = 315
      TabIndex = 7
    End
    Begin VB.Frame Frame2
      Left = 1680
      Top = 780
      Width = 5565
      Height = 30
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LabVersion
      Caption = "Versión: "
      Left = 1680
      Top = 960
      Width = 1365
      Height = 360
      TabIndex = 8
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblCompany
      Caption = "Copyright:  Gilbarco Latin America    1989 - 2010"
      Left = 1800
      Top = 5700
      Width = 5085
      Height = 255
      TabIndex = 5
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
    Begin VB.Label Label2
      Caption = "Componentes Instalados:"
      Left = 1680
      Top = 1560
      Width = 5625
      Height = 465
      TabIndex = 4
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
    Begin VB.Label lblAboutMsg
      Caption = "Label2"
      Left = 2340
      Top = 1980
      Width = 3525
      Height = 3075
      TabIndex = 3
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
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
    Begin VB.Label Label1
      Caption = "Acerca de CEM-44..."
      Left = 1740
      Top = 210
      Width = 5355
      Height = 585
      TabIndex = 1
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image1
      Picture = "frmAbout.frx":0000
      Left = 90
      Top = 180
      Width = 1380
      Height = 5715
      Stretch = -1  'True
    End
  End
End

Attribute VB_Name = "frmAbout"


Private Sub Form_Load() '677ECC
  'Data Table: 41AC88
  loc_677A6C: FLdRfVar var_1EC
  loc_677A6F: LitVar_Missing var_1E8
  loc_677A72: LitVar_Missing var_1C8
  loc_677A75: LitVar_Missing var_1A8
  loc_677A78: LitVar_Missing var_188
  loc_677A7B: LitVar_Missing var_168
  loc_677A7E: LitVar_Missing var_148
  loc_677A81: LitVar_Missing var_128
  loc_677A84: LitVar_Missing var_108
  loc_677A87: LitVar_Missing var_E8
  loc_677A8A: LitVar_Missing var_C8
  loc_677A8D: LitStr "Acerca de..."
  loc_677A90: FStStrCopy var_A8
  loc_677A93: FLdRfVar var_A8
  loc_677A96: LitI4 1
  loc_677A9B: PopTmpLdAdStr var_A4
  loc_677A9E: LitI2_Byte &H33
  loc_677AA0: PopTmpLdAd2 var_9E
  loc_677AA3: ImpAdLdRf MemVar_74C7D0
  loc_677AA6: NewIfNullPr clsMsg
  loc_677AA9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677AAE: ILdRf var_1EC
  loc_677AB1: FLdPr Me
  loc_677AB4: Me.Caption = from_stack_1
  loc_677AB9: FFreeStr var_A8 = ""
  loc_677AC0: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677AD9: FLdRfVar var_1EC
  loc_677ADC: LitVar_Missing var_1E8
  loc_677ADF: LitVar_Missing var_1C8
  loc_677AE2: LitVar_Missing var_1A8
  loc_677AE5: LitVar_Missing var_188
  loc_677AE8: LitVar_Missing var_168
  loc_677AEB: LitVar_Missing var_148
  loc_677AEE: LitVar_Missing var_128
  loc_677AF1: LitVar_Missing var_108
  loc_677AF4: LitVar_Missing var_E8
  loc_677AF7: LitVar_Missing var_C8
  loc_677AFA: LitStr "Acerca de CEM-44..."
  loc_677AFD: FStStrCopy var_A8
  loc_677B00: FLdRfVar var_A8
  loc_677B03: LitI4 2
  loc_677B08: PopTmpLdAdStr var_A4
  loc_677B0B: LitI2_Byte &H33
  loc_677B0D: PopTmpLdAd2 var_9E
  loc_677B10: ImpAdLdRf MemVar_74C7D0
  loc_677B13: NewIfNullPr clsMsg
  loc_677B16: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677B1B: ILdRf var_1EC
  loc_677B1E: FLdPrThis
  loc_677B1F: VCallAd Control_ID_Label1
  loc_677B22: FStAdFunc var_1F0
  loc_677B25: FLdPr var_1F0
  loc_677B28: Me.Caption = from_stack_1
  loc_677B2D: FFreeStr var_A8 = ""
  loc_677B34: FFree1Ad var_1F0
  loc_677B37: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677B50: FLdRfVar var_1EC
  loc_677B53: LitVar_Missing var_1E8
  loc_677B56: LitVar_Missing var_1C8
  loc_677B59: LitVar_Missing var_1A8
  loc_677B5C: LitVar_Missing var_188
  loc_677B5F: LitVar_Missing var_168
  loc_677B62: LitVar_Missing var_148
  loc_677B65: LitVar_Missing var_128
  loc_677B68: LitVar_Missing var_108
  loc_677B6B: LitVar_Missing var_E8
  loc_677B6E: LitVar_Missing var_C8
  loc_677B71: LitStr "Componentes Instalados:"
  loc_677B74: FStStrCopy var_A8
  loc_677B77: FLdRfVar var_A8
  loc_677B7A: LitI4 3
  loc_677B7F: PopTmpLdAdStr var_A4
  loc_677B82: LitI2_Byte &H33
  loc_677B84: PopTmpLdAd2 var_9E
  loc_677B87: ImpAdLdRf MemVar_74C7D0
  loc_677B8A: NewIfNullPr clsMsg
  loc_677B8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677B92: ILdRf var_1EC
  loc_677B95: FLdPrThis
  loc_677B96: VCallAd Control_ID_Label2
  loc_677B99: FStAdFunc var_1F0
  loc_677B9C: FLdPr var_1F0
  loc_677B9F: Me.Caption = from_stack_1
  loc_677BA4: FFreeStr var_A8 = ""
  loc_677BAB: FFree1Ad var_1F0
  loc_677BAE: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677BC7: FLdRfVar var_1EC
  loc_677BCA: LitVar_Missing var_1E8
  loc_677BCD: LitVar_Missing var_1C8
  loc_677BD0: LitVar_Missing var_1A8
  loc_677BD3: LitVar_Missing var_188
  loc_677BD6: LitVar_Missing var_168
  loc_677BD9: LitVar_Missing var_148
  loc_677BDC: LitVar_Missing var_128
  loc_677BDF: LitVar_Missing var_108
  loc_677BE2: LitVar_Missing var_E8
  loc_677BE5: LitVar_Missing var_C8
  loc_677BE8: LitStr "&Aceptar"
  loc_677BEB: FStStrCopy var_A8
  loc_677BEE: FLdRfVar var_A8
  loc_677BF1: LitI4 4
  loc_677BF6: PopTmpLdAdStr var_A4
  loc_677BF9: LitI2_Byte &H33
  loc_677BFB: PopTmpLdAd2 var_9E
  loc_677BFE: ImpAdLdRf MemVar_74C7D0
  loc_677C01: NewIfNullPr clsMsg
  loc_677C04: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677C09: ILdRf var_1EC
  loc_677C0C: FLdPrThis
  loc_677C0D: VCallAd Control_ID_cmdabout
  loc_677C10: FStAdFunc var_1F0
  loc_677C13: FLdPr var_1F0
  loc_677C16: Me.Caption = from_stack_1
  loc_677C1B: FFreeStr var_A8 = ""
  loc_677C22: FFree1Ad var_1F0
  loc_677C25: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677C3E: LitVarStr var_B8, "Copyright:  Gilbarco Veeder-Root  1989 - "
  loc_677C43: FLdRfVar var_C8
  loc_677C46: ImpAdCallFPR4  = Now
  loc_677C4B: FLdRfVar var_C8
  loc_677C4E: FLdRfVar var_E8
  loc_677C51: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_677C56: FLdRfVar var_E8
  loc_677C59: ConcatVar var_108
  loc_677C5D: CStrVarVal var_A8
  loc_677C61: FLdPrThis
  loc_677C62: VCallAd Control_ID_lblCompany
  loc_677C65: FStAdFunc var_1F0
  loc_677C68: FLdPr var_1F0
  loc_677C6B: Me.Caption = from_stack_1
  loc_677C70: FFree1Str var_A8
  loc_677C73: FFree1Ad var_1F0
  loc_677C76: FFreeVar var_C8 = "": var_E8 = ""
  loc_677C81: FLdRfVar var_1EC
  loc_677C84: LitVar_Missing var_1E8
  loc_677C87: LitVar_Missing var_1C8
  loc_677C8A: LitVar_Missing var_1A8
  loc_677C8D: LitVar_Missing var_188
  loc_677C90: LitVar_Missing var_168
  loc_677C93: LitVar_Missing var_148
  loc_677C96: LitVar_Missing var_128
  loc_677C99: LitVar_Missing var_108
  loc_677C9C: LitVar_Missing var_E8
  loc_677C9F: LitVar_Missing var_C8
  loc_677CA2: LitStr "No hay librerias cargadas"
  loc_677CA5: FStStrCopy var_A8
  loc_677CA8: FLdRfVar var_A8
  loc_677CAB: LitI4 5
  loc_677CB0: PopTmpLdAdStr var_A4
  loc_677CB3: LitI2_Byte &H33
  loc_677CB5: PopTmpLdAd2 var_9E
  loc_677CB8: ImpAdLdRf MemVar_74C7D0
  loc_677CBB: NewIfNullPr clsMsg
  loc_677CBE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677CC3: ILdRf var_1EC
  loc_677CC6: FLdPr Me
  loc_677CC9: MemStStrCopy
  loc_677CCD: FFreeStr var_A8 = ""
  loc_677CD4: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677CED: FLdRfVar var_1EC
  loc_677CF0: LitVar_Missing var_1E8
  loc_677CF3: LitVar_Missing var_1C8
  loc_677CF6: LitVar_Missing var_1A8
  loc_677CF9: LitVar_Missing var_188
  loc_677CFC: LitVar_Missing var_168
  loc_677CFF: LitVar_Missing var_148
  loc_677D02: LitVar_Missing var_128
  loc_677D05: LitVar_Missing var_108
  loc_677D08: LitVar_Missing var_E8
  loc_677D0B: LitVar_Missing var_C8
  loc_677D0E: LitStr "Versión"
  loc_677D11: FStStrCopy var_A8
  loc_677D14: FLdRfVar var_A8
  loc_677D17: LitI4 6
  loc_677D1C: PopTmpLdAdStr var_A4
  loc_677D1F: LitI2_Byte &H33
  loc_677D21: PopTmpLdAd2 var_9E
  loc_677D24: ImpAdLdRf MemVar_74C7D0
  loc_677D27: NewIfNullPr clsMsg
  loc_677D2A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677D2F: ILdRf var_1EC
  loc_677D32: FLdPrThis
  loc_677D33: VCallAd Control_ID_LabVersion
  loc_677D36: FStAdFunc var_1F0
  loc_677D39: FLdPr var_1F0
  loc_677D3C: Me.Caption = from_stack_1
  loc_677D41: FFreeStr var_A8 = ""
  loc_677D48: FFree1Ad var_1F0
  loc_677D4B: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677D64: FLdRfVar var_1EC
  loc_677D67: LitVar_Missing var_1E8
  loc_677D6A: LitVar_Missing var_1C8
  loc_677D6D: LitVar_Missing var_1A8
  loc_677D70: LitVar_Missing var_188
  loc_677D73: LitVar_Missing var_168
  loc_677D76: LitVar_Missing var_148
  loc_677D79: LitVar_Missing var_128
  loc_677D7C: LitVar_Missing var_108
  loc_677D7F: LitVar_Missing var_E8
  loc_677D82: LitVar_Missing var_C8
  loc_677D85: LitStr "Librerias cargadas"
  loc_677D88: FStStrCopy var_A8
  loc_677D8B: FLdRfVar var_A8
  loc_677D8E: LitI4 7
  loc_677D93: PopTmpLdAdStr var_A4
  loc_677D96: LitI2_Byte &H33
  loc_677D98: PopTmpLdAd2 var_9E
  loc_677D9B: ImpAdLdRf MemVar_74C7D0
  loc_677D9E: NewIfNullPr clsMsg
  loc_677DA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_677DA6: ILdRf var_1EC
  loc_677DA9: FLdPrThis
  loc_677DAA: VCallAd Control_ID_cmdLibraries
  loc_677DAD: FStAdFunc var_1F0
  loc_677DB0: FLdPr var_1F0
  loc_677DB3: Me.Caption = from_stack_1
  loc_677DB8: FFreeStr var_A8 = ""
  loc_677DBF: FFree1Ad var_1F0
  loc_677DC2: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_677DDB: from_stack_1v = Proc_24_3_604C40()
  loc_677DE2: OnErrorGoto loc_677EAF
  loc_677DE7: LitVarStr var_B8, "WINDIR"
  loc_677DEC: FStVarCopyObj var_C8
  loc_677DEF: FLdRfVar var_C8
  loc_677DF2: FLdRfVar var_E8
  loc_677DF5: ImpAdCallFPR4  = Environ()
  loc_677DFA: FLdRfVar var_E8
  loc_677DFD: LitVarStr var_D8, "\CEM44\Console\CEM-44.exe"
  loc_677E02: ConcatVar var_108
  loc_677E06: CStrVarVal var_A8
  loc_677E0A: FLdRfVar var_128
  loc_677E0D: ImpAdCallFPR4  = FileDateTime()
  loc_677E12: FLdRfVar var_128
  loc_677E15: FStVar var_98
  loc_677E19: FFree1Str var_A8
  loc_677E1C: FFreeVar var_C8 = "": var_E8 = ""
  loc_677E27: LitVarStr var_B8, "WINDIR"
  loc_677E2C: FStVarCopyObj var_C8
  loc_677E2F: FLdRfVar var_C8
  loc_677E32: FLdRfVar var_E8
  loc_677E35: ImpAdCallFPR4  = Environ()
  loc_677E3A: FLdRfVar var_E8
  loc_677E3D: LitVarStr var_D8, "\CEM44\Console\CEM-44.exe"
  loc_677E42: ConcatVar var_108
  loc_677E46: CStrVarVal var_A8
  loc_677E4A: ImpAdCallI2 push FileLen()
  loc_677E4F: FStR4 var_9C
  loc_677E52: FFree1Str var_A8
  loc_677E55: FFreeVar var_C8 = "": var_E8 = ""
  loc_677E60: ILdRf Me
  loc_677E63: CastAd
  loc_677E66: FStAdFunc var_1F0
  loc_677E69: FLdRfVar var_1F0
  loc_677E6C: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_677E71: FFree1Ad var_1F0
  loc_677E76: FLdRfVar var_9E
  loc_677E79: FLdRfVar var_88
  loc_677E7C: FLdRfVar var_1F0
  loc_677E7F: ImpAdLdRf MemVar_74C760
  loc_677E82: NewIfNullPr Formx
  loc_677E85: from_stack_1v = Formx.global_4589716Get()
  loc_677E8A: FLdPr var_1F0
  loc_677E8D:  = Formx.StartUpPosition
  loc_677E92: FFree1Ad var_1F0
  loc_677E97: ILdRf var_88
  loc_677E9A: FLdPrThis
  loc_677E9B: VCallAd Control_ID_lblAboutMsg
  loc_677E9E: FStAdFunc var_1F0
  loc_677EA1: FLdPr var_1F0
  loc_677EA4: Me.Caption = from_stack_1
  loc_677EA9: FFree1Ad var_1F0
  loc_677EAE: ExitProcHresult
  loc_677EB1: FLdRfVar var_C8
  loc_677EB4: ImpAdCallFPR4  = Now
  loc_677EB9: FLdRfVar var_C8
  loc_677EBC: FStVar var_98
  loc_677EC2: Resume
  loc_677EC8: ExitProcHresult
End Sub

Private Sub cmdLibraries_Click() '61DBE8
  'Data Table: 41AC88
  loc_61DAB4: FLdI2 var_86
  loc_61DAB7: CI4UI1
  loc_61DAB8: ImpAdLdRf MemVar_74CB00
  loc_61DABB: Ary1LdI4
  loc_61DABC: LitStr vbNullString
  loc_61DABF: NeStr
  loc_61DAC1: BranchF loc_61DB47
  loc_61DAC4: ILdRf var_8C
  loc_61DAC7: FLdI2 var_86
  loc_61DACA: CI4UI1
  loc_61DACB: ImpAdLdRf MemVar_74CB00
  loc_61DACE: Ary1LdI4
  loc_61DACF: ConcatStr
  loc_61DAD0: FStStrNoPop var_90
  loc_61DAD3: LitStr "....."
  loc_61DAD6: ConcatStr
  loc_61DAD7: CVarStr var_C4
  loc_61DADA: FLdRfVar var_B4
  loc_61DADD: FLdI2 var_86
  loc_61DAE0: CI4UI1
  loc_61DAE1: ImpAdLdRf MemVar_74CB00
  loc_61DAE4: Ary1LdRf
  loc_61DAE5: CVarRef
  loc_61DAEA: FLdRfVar var_94
  loc_61DAED: ImpAdLdPr unk_41AC8F
  loc_61DAF0: MemLdPr global_0
  loc_61DAF3:  = Forms
  loc_61DAF8: FLdPr var_94
  loc_61DAFB: from_stack_2 = Me.Item(from_stack_1)
  loc_61DB00: FLdRfVar var_B4
  loc_61DB03: LdPrVar
  loc_61DB05: LateMemLdVar
  loc_61DB0A: ConcatVar var_E4
  loc_61DB0E: LitI4 &HD
  loc_61DB13: FLdRfVar var_F4
  loc_61DB16: ImpAdCallFPR4  = Chr()
  loc_61DB1B: FLdRfVar var_F4
  loc_61DB1E: ConcatVar var_104
  loc_61DB22: CStrVarTmp
  loc_61DB23: FStStr var_8C
  loc_61DB26: FFree1Str var_90
  loc_61DB29: FFree1Ad var_94
  loc_61DB2C: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = ""
  loc_61DB3B: FLdI2 var_86
  loc_61DB3E: LitI2_Byte 1
  loc_61DB40: AddI2
  loc_61DB41: FStI2 var_86
  loc_61DB44: Branch loc_61DAB4
  loc_61DB47: FLdRfVar var_8C
  loc_61DB4A: CVarRef
  loc_61DB4F: FLdRfVar var_B4
  loc_61DB52: ImpAdCallFPR4  = Trim()
  loc_61DB57: FLdRfVar var_B4
  loc_61DB5A: LitVarStr var_114, vbNullString
  loc_61DB5F: HardType
  loc_61DB60: EqVarBool
  loc_61DB62: FFree1Var var_B4 = ""
  loc_61DB65: BranchF loc_61DBAA
  loc_61DB68: FLdRfVar var_90
  loc_61DB6B: FLdPrThis
  loc_61DB6C: VCallAd Control_ID_cmdLibraries
  loc_61DB6F: FStAdFunc var_94
  loc_61DB72: FLdPr var_94
  loc_61DB75:  = Me.Caption
  loc_61DB7A: LitVar_Missing var_D4
  loc_61DB7D: LitVar_Missing var_C4
  loc_61DB80: FLdZeroAd var_90
  loc_61DB83: CVarStr var_B4
  loc_61DB86: LitI4 &H40
  loc_61DB8B: FLdPr Me
  loc_61DB8E: MemLdRfVar from_stack_1.global_52
  loc_61DB91: CVarRef
  loc_61DB96: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61DB9B: FFree1Ad var_94
  loc_61DB9E: FFreeVar var_B4 = "": var_C4 = ""
  loc_61DBA7: Branch loc_61DBE6
  loc_61DBAA: FLdRfVar var_90
  loc_61DBAD: FLdPrThis
  loc_61DBAE: VCallAd Control_ID_cmdLibraries
  loc_61DBB1: FStAdFunc var_94
  loc_61DBB4: FLdPr var_94
  loc_61DBB7:  = Me.Caption
  loc_61DBBC: LitVar_Missing var_D4
  loc_61DBBF: LitVar_Missing var_C4
  loc_61DBC2: FLdZeroAd var_90
  loc_61DBC5: CVarStr var_B4
  loc_61DBC8: LitI4 &H40
  loc_61DBCD: FLdRfVar var_8C
  loc_61DBD0: CVarRef
  loc_61DBD5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61DBDA: FFree1Ad var_94
  loc_61DBDD: FFreeVar var_B4 = "": var_C4 = ""
  loc_61DBE6: ExitProcHresult
End Sub

Private Sub cmdabout_Click() '5D2C7C
  'Data Table: 41AC88
  loc_5D2C64: ILdRf Me
  loc_5D2C67: FStAdNoPop
  loc_5D2C6B: ImpAdLdRf MemVar_7520D4
  loc_5D2C6E: NewIfNullPr Global
  loc_5D2C71: Global.Unload from_stack_1
  loc_5D2C76: FFree1Ad var_88
  loc_5D2C79: ExitProcHresult
End Sub

Private Function Proc_24_3_604C40() '604C40
  'Data Table: 41AC88
  loc_604B68: ImpAdLdI4 MemVar_74BF3C
  loc_604B6B: LitStr vbNullString
  loc_604B6E: EqStr
  loc_604B70: BranchF loc_604BFA
  loc_604B73: LitI2_Byte 0
  loc_604B75: FLdPrThis
  loc_604B76: VCallAd Control_ID_LabVersion
  loc_604B79: FStAdFunc var_88
  loc_604B7C: FLdPr var_88
  loc_604B7F: Me.Visible = from_stack_1b
  loc_604B84: FFree1Ad var_88
  loc_604B87: LitI2_Byte 0
  loc_604B89: FLdPrThis
  loc_604B8A: VCallAd Control_ID_Frame3
  loc_604B8D: FStAdFunc var_88
  loc_604B90: FLdPr var_88
  loc_604B93: Me.Visible = from_stack_1b
  loc_604B98: FFree1Ad var_88
  loc_604B9B: FLdRfVar var_8C
  loc_604B9E: FLdPrThis
  loc_604B9F: VCallAd Control_ID_LabVersion
  loc_604BA2: FStAdFunc var_88
  loc_604BA5: FLdPr var_88
  loc_604BA8:  = Me.Top
  loc_604BAD: ILdRf var_8C
  loc_604BB0: FLdPrThis
  loc_604BB1: VCallAd Control_ID_Label2
  loc_604BB4: FStAdFunc var_90
  loc_604BB7: FLdPr var_90
  loc_604BBA: Me.Top = from_stack_1s
  loc_604BBF: FFreeAd var_88 = ""
  loc_604BC6: FLdRfVar var_8C
  loc_604BC9: FLdPrThis
  loc_604BCA: VCallAd Control_ID_Label2
  loc_604BCD: FStAdFunc var_88
  loc_604BD0: FLdPr var_88
  loc_604BD3:  = Me.Top
  loc_604BD8: FLdFPR4 var_8C
  loc_604BDB: LitI2 600
  loc_604BDE: CR8I2
  loc_604BDF: AddR8
  loc_604BE0: PopFPR4
  loc_604BE1: FLdPrThis
  loc_604BE2: VCallAd Control_ID_lblAboutMsg
  loc_604BE5: FStAdFunc var_90
  loc_604BE8: FLdPr var_90
  loc_604BEB: Me.Top = from_stack_1s
  loc_604BF0: FFreeAd var_88 = ""
  loc_604BF7: Branch loc_604C3C
  loc_604BFA: FLdRfVar var_94
  loc_604BFD: FLdPrThis
  loc_604BFE: VCallAd Control_ID_LabVersion
  loc_604C01: FStAdFunc var_88
  loc_604C04: FLdPr var_88
  loc_604C07:  = Me.Caption
  loc_604C0C: ILdRf var_94
  loc_604C0F: LitStr ": "
  loc_604C12: ConcatStr
  loc_604C13: FStStrNoPop var_98
  loc_604C16: ImpAdLdI4 MemVar_74BF3C
  loc_604C19: ConcatStr
  loc_604C1A: FStStrNoPop var_9C
  loc_604C1D: FLdPrThis
  loc_604C1E: VCallAd Control_ID_LabVersion
  loc_604C21: FStAdFunc var_90
  loc_604C24: FLdPr var_90
  loc_604C27: Me.Caption = from_stack_1
  loc_604C2C: FFreeStr var_94 = "": var_98 = ""
  loc_604C35: FFreeAd var_88 = ""
  loc_604C3C: ExitProcHresult
End Function
