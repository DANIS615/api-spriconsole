VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fSurtidores
  Caption = "CONFIGURAR MARCA DE SURTIDORES Y CANALES EN ACTIVIDAD"
  BackColor = &H80000004&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 0
  ClientTop = 240
  ClientWidth = 11880
  ClientHeight = 8550
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin Threed.SSFrame SSFrame1
    Left = 240
    Top = 240
    Width = 5415
    Height = 6255
    TabIndex = 0
    OleObjectBlob = "fSurtidores.frx":0000
    Begin VB.OptionButton OptionCanal1
      Caption = "  GNC"
      Index = 4
      ForeColor = &H0&
      Left = 1260
      Top = 3840
      Width = 2655
      Height = 495
      TabIndex = 14
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
    Begin VB.OptionButton OptionCanal1
      Caption = "  Schlumberger"
      Index = 3
      ForeColor = &H0&
      Left = 1260
      Top = 3180
      Width = 3255
      Height = 495
      TabIndex = 13
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
    Begin VB.OptionButton OptionCanal1
      Caption = "  Wayne"
      Index = 1
      ForeColor = &H0&
      Left = 1260
      Top = 1800
      Width = 2655
      Height = 495
      TabIndex = 8
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
    Begin VB.OptionButton OptionCanal1
      Caption = "  Tokheim"
      Index = 2
      ForeColor = &H0&
      Left = 1260
      Top = 2520
      Width = 2655
      Height = 495
      TabIndex = 7
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
    Begin VB.OptionButton OptionCanal1
      Caption = "  Gilbarco"
      Index = 0
      ForeColor = &H0&
      Left = 1260
      Top = 1080
      Width = 2655
      Height = 495
      TabIndex = 6
      Value = 255
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
    Begin Threed.SSPanel SSPanel1
      Left = 180
      Top = 0
      Width = 5085
      Height = 735
      TabIndex = 1
      OleObjectBlob = "fSurtidores.frx":007D
    End
  End
  Begin Threed.SSFrame SSFrame2
    Left = 6240
    Top = 240
    Width = 5415
    Height = 6195
    TabIndex = 2
    OleObjectBlob = "fSurtidores.frx":0101
    Begin VB.OptionButton OptionCanal2
      Caption = "  GNC"
      Index = 5
      ForeColor = &H0&
      Left = 1260
      Top = 4620
      Width = 2655
      Height = 495
      TabIndex = 16
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
    Begin VB.OptionButton OptionCanal2
      Caption = "  Schlumberger"
      Index = 4
      ForeColor = &H0&
      Left = 1260
      Top = 3900
      Width = 3255
      Height = 495
      TabIndex = 15
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
    Begin VB.OptionButton OptionCanal2
      Caption = "  Wayne"
      Index = 2
      ForeColor = &H0&
      Left = 1260
      Top = 2460
      Width = 2655
      Height = 495
      TabIndex = 12
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
    Begin VB.OptionButton OptionCanal2
      Caption = "  Tokheim"
      Index = 3
      ForeColor = &H0&
      Left = 1260
      Top = 3180
      Width = 2655
      Height = 495
      TabIndex = 11
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
    Begin VB.OptionButton OptionCanal2
      Caption = "  Gilbarco"
      Index = 1
      ForeColor = &H0&
      Left = 1260
      Top = 1740
      Width = 2655
      Height = 495
      TabIndex = 10
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
    Begin VB.OptionButton OptionCanal2
      Caption = "  No Instalado"
      Index = 0
      ForeColor = &H0&
      Left = 1260
      Top = 1020
      Width = 3015
      Height = 495
      TabIndex = 9
      Value = 255
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
    Begin Threed.SSPanel SSPanel2
      Left = 240
      Top = 0
      Width = 4980
      Height = 735
      TabIndex = 3
      OleObjectBlob = "fSurtidores.frx":017E
    End
  End
  Begin Threed.SSCommand SSCommand2
    Left = 8280
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 4
    OleObjectBlob = "fSurtidores.frx":0202
  End
  Begin Threed.SSCommand SSCommand3
    Left = 1080
    Top = 7560
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "fSurtidores.frx":026D
  End
  Begin Threed.SSCommand sscCancel
    Left = 4680
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 17
    OleObjectBlob = "fSurtidores.frx":02CF
  End
End

Attribute VB_Name = "fSurtidores"


Private Sub OptionCanal2_Click() '5E7D50
  'Data Table: 414EE4
  loc_5E7CD4: FLdRfVar var_8E
  loc_5E7CD7: FLdRfVar var_8C
  loc_5E7CDA: LitI2_Byte 4
  loc_5E7CDC: FLdPrThis
  loc_5E7CDD: VCallAd Control_ID_OptionCanal2
  loc_5E7CE0: FStAdFunc var_88
  loc_5E7CE3: FLdPr var_88
  loc_5E7CE6: Set from_stack_2 = Me(from_stack_1)
  loc_5E7CEB: FLdPr var_8C
  loc_5E7CEE:  = Me.Value
  loc_5E7CF3: FLdI2 var_8E
  loc_5E7CF6: FFreeAd var_88 = ""
  loc_5E7CFD: BranchF loc_5E7D28
  loc_5E7D00: LitI2_Byte 0
  loc_5E7D02: FLdRfVar var_8C
  loc_5E7D05: LitI2_Byte 3
  loc_5E7D07: FLdPrThis
  loc_5E7D08: VCallAd Control_ID_OptionCanal1
  loc_5E7D0B: FStAdFunc var_88
  loc_5E7D0E: FLdPr var_88
  loc_5E7D11: Set from_stack_2 = Me(from_stack_1)
  loc_5E7D16: FLdPr var_8C
  loc_5E7D19: Me.Enabled = from_stack_1b
  loc_5E7D1E: FFreeAd var_88 = ""
  loc_5E7D25: Branch loc_5E7D4D
  loc_5E7D28: LitI2_Byte &HFF
  loc_5E7D2A: FLdRfVar var_8C
  loc_5E7D2D: LitI2_Byte 3
  loc_5E7D2F: FLdPrThis
  loc_5E7D30: VCallAd Control_ID_OptionCanal1
  loc_5E7D33: FStAdFunc var_88
  loc_5E7D36: FLdPr var_88
  loc_5E7D39: Set from_stack_2 = Me(from_stack_1)
  loc_5E7D3E: FLdPr var_8C
  loc_5E7D41: Me.Enabled = from_stack_1b
  loc_5E7D46: FFreeAd var_88 = ""
  loc_5E7D4D: ExitProcHresult
  loc_5E7D4E: BranchF loc_5EE8D4
End Sub

Private Sub OptionCanal1_Click(Index As Integer) '619AA0
  'Data Table: 414EE4
  loc_619968: LitI2_Byte 1
  loc_61996A: CUI1I2
  loc_61996C: FLdRfVar var_86
  loc_61996F: ILdI2 Index
  loc_619972: CUI1I2
  loc_619974: ForUI1 var_8A
  loc_61997A: FLdRfVar var_96
  loc_61997D: FLdRfVar var_94
  loc_619980: FLdUI1
  loc_619984: CI2UI1
  loc_619986: FLdPrThis
  loc_619987: VCallAd Control_ID_OptionCanal2
  loc_61998A: FStAdFunc var_90
  loc_61998D: FLdPr var_90
  loc_619990: Set from_stack_2 = Me(from_stack_1)
  loc_619995: FLdPr var_94
  loc_619998:  = Me.Value
  loc_61999D: FLdI2 var_96
  loc_6199A0: FFreeAd var_90 = ""
  loc_6199A7: BranchF loc_6199CF
  loc_6199AA: LitI2_Byte &HFF
  loc_6199AC: FLdRfVar var_94
  loc_6199AF: LitI2_Byte 0
  loc_6199B1: FLdPrThis
  loc_6199B2: VCallAd Control_ID_OptionCanal2
  loc_6199B5: FStAdFunc var_90
  loc_6199B8: FLdPr var_90
  loc_6199BB: Set from_stack_2 = Me(from_stack_1)
  loc_6199C0: FLdPr var_94
  loc_6199C3: Me.Value = from_stack_1b
  loc_6199C8: FFreeAd var_90 = ""
  loc_6199CF: LitI2_Byte 0
  loc_6199D1: FLdRfVar var_94
  loc_6199D4: FLdUI1
  loc_6199D8: CI2UI1
  loc_6199DA: FLdPrThis
  loc_6199DB: VCallAd Control_ID_OptionCanal2
  loc_6199DE: FStAdFunc var_90
  loc_6199E1: FLdPr var_90
  loc_6199E4: Set from_stack_2 = Me(from_stack_1)
  loc_6199E9: FLdPr var_94
  loc_6199EC: Me.Enabled = from_stack_1b
  loc_6199F1: FFreeAd var_90 = ""
  loc_6199F8: FLdRfVar var_86
  loc_6199FB: NextUI1
  loc_619A01: ILdI2 Index
  loc_619A04: LitI2_Byte 1
  loc_619A06: AddI2
  loc_619A07: CUI1I2
  loc_619A09: FLdRfVar var_86
  loc_619A0C: LitI2_Byte 5
  loc_619A0E: CUI1I2
  loc_619A10: ForUI1 var_9A
  loc_619A16: LitI2_Byte &HFF
  loc_619A18: FLdRfVar var_94
  loc_619A1B: FLdUI1
  loc_619A1F: CI2UI1
  loc_619A21: FLdPrThis
  loc_619A22: VCallAd Control_ID_OptionCanal2
  loc_619A25: FStAdFunc var_90
  loc_619A28: FLdPr var_90
  loc_619A2B: Set from_stack_2 = Me(from_stack_1)
  loc_619A30: FLdPr var_94
  loc_619A33: Me.Enabled = from_stack_1b
  loc_619A38: FFreeAd var_90 = ""
  loc_619A3F: FLdRfVar var_86
  loc_619A42: NextUI1
  loc_619A48: FLdRfVar var_96
  loc_619A4B: FLdRfVar var_94
  loc_619A4E: LitI2_Byte 3
  loc_619A50: FLdPrThis
  loc_619A51: VCallAd Control_ID_OptionCanal1
  loc_619A54: FStAdFunc var_90
  loc_619A57: FLdPr var_90
  loc_619A5A: Set from_stack_2 = Me(from_stack_1)
  loc_619A5F: FLdPr var_94
  loc_619A62:  = Me.Value
  loc_619A67: FLdI2 var_96
  loc_619A6A: FFreeAd var_90 = ""
  loc_619A71: BranchF loc_619A9C
  loc_619A74: LitI2_Byte 0
  loc_619A76: FLdRfVar var_94
  loc_619A79: LitI2_Byte 4
  loc_619A7B: FLdPrThis
  loc_619A7C: VCallAd Control_ID_OptionCanal2
  loc_619A7F: FStAdFunc var_90
  loc_619A82: FLdPr var_90
  loc_619A85: Set from_stack_2 = Me(from_stack_1)
  loc_619A8A: FLdPr var_94
  loc_619A8D: Me.Enabled = from_stack_1b
  loc_619A92: FFreeAd var_90 = ""
  loc_619A99: Branch loc_619A9C
  loc_619A9C: ExitProcHresult
End Sub

Private Sub Form_Activate() '696790
  'Data Table: 414EE4
  loc_6961B8: ImpAdLdRf MemVar_74BED8
  loc_6961BB: CVarRef
  loc_6961C0: FLdRfVar var_1F4
  loc_6961C3: ImpAdCallFPR4  = Ucase()
  loc_6961C8: FLdRfVar var_1D4
  loc_6961CB: LitVar_Missing var_1D0
  loc_6961CE: LitVar_Missing var_1B0
  loc_6961D1: LitVar_Missing var_190
  loc_6961D4: LitVar_Missing var_170
  loc_6961D7: LitVar_Missing var_150
  loc_6961DA: LitVar_Missing var_130
  loc_6961DD: LitVar_Missing var_110
  loc_6961E0: LitVar_Missing var_F0
  loc_6961E3: LitVar_Missing var_D0
  loc_6961E6: LitVar_Missing var_B0
  loc_6961E9: LitStr "CONFIGURAR MARCA DE"
  loc_6961EC: FStStrCopy var_90
  loc_6961EF: FLdRfVar var_90
  loc_6961F2: LitI4 1
  loc_6961F7: PopTmpLdAdStr var_8C
  loc_6961FA: LitI2_Byte &H3E
  loc_6961FC: PopTmpLdAd2 var_86
  loc_6961FF: ImpAdLdRf MemVar_74C7D0
  loc_696202: NewIfNullPr clsMsg
  loc_696205: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69620A: ILdRf var_1D4
  loc_69620D: LitStr " "
  loc_696210: ConcatStr
  loc_696211: CVarStr var_244
  loc_696214: ImpAdLdRf MemVar_74BED4
  loc_696217: CVarRef
  loc_69621C: FLdRfVar var_214
  loc_69621F: ImpAdCallFPR4  = Ucase()
  loc_696224: FLdRfVar var_214
  loc_696227: FLdRfVar var_1F4
  loc_69622A: ImpAdLdI4 MemVar_74BED4
  loc_69622D: FnLenStr
  loc_69622E: LitI4 &HC
  loc_696233: GtI4
  loc_696234: CVarBoolI2 var_224
  loc_696238: FLdRfVar var_234
  loc_69623B: ImpAdCallFPR4  = IIf(, , )
  loc_696240: FLdRfVar var_234
  loc_696243: ConcatVar var_254
  loc_696247: LitVarStr var_264, " "
  loc_69624C: ConcatVar var_274
  loc_696250: FLdRfVar var_3C4
  loc_696253: LitVar_Missing var_3C0
  loc_696256: LitVar_Missing var_3A0
  loc_696259: LitVar_Missing var_380
  loc_69625C: LitVar_Missing var_360
  loc_69625F: LitVar_Missing var_340
  loc_696262: LitVar_Missing var_320
  loc_696265: LitVar_Missing var_300
  loc_696268: LitVar_Missing var_2E0
  loc_69626B: LitVar_Missing var_2C0
  loc_69626E: LitVar_Missing var_2A0
  loc_696271: LitStr "Y CANALES EN ACTIVIDAD"
  loc_696274: FStStrCopy var_280
  loc_696277: FLdRfVar var_280
  loc_69627A: LitI4 2
  loc_69627F: PopTmpLdAdStr var_27C
  loc_696282: LitI2_Byte &H3E
  loc_696284: PopTmpLdAd2 var_276
  loc_696287: ImpAdLdRf MemVar_74C7D0
  loc_69628A: NewIfNullPr clsMsg
  loc_69628D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_696292: FLdZeroAd var_3C4
  loc_696295: CVarStr var_3D4
  loc_696298: ConcatVar var_3E4
  loc_69629C: CStrVarVal var_3E8
  loc_6962A0: ImpAdLdRf MemVar_74E330
  loc_6962A3: NewIfNullPr fSurtidores
  loc_6962A6: fSurtidores.Caption = from_stack_1
  loc_6962AB: FFreeStr var_90 = "": var_1D4 = "": var_280 = ""
  loc_6962B6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_224 = "": var_1F4 = "": var_214 = "": var_244 = "": var_234 = "": var_254 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3C0 = "": var_274 = "": var_3D4 = ""
  loc_6962F3: ImpAdLdRf MemVar_74BED8
  loc_6962F6: CVarRef
  loc_6962FB: FLdRfVar var_B0
  loc_6962FE: ImpAdCallFPR4  = Ucase()
  loc_696303: ImpAdLdRf MemVar_74BED4
  loc_696306: CVarRef
  loc_69630B: FLdRfVar var_D0
  loc_69630E: ImpAdCallFPR4  = Ucase()
  loc_696313: FLdRfVar var_D0
  loc_696316: FLdRfVar var_B0
  loc_696319: ImpAdLdI4 MemVar_74BED4
  loc_69631C: FnLenStr
  loc_69631D: LitI4 &HC
  loc_696322: GtI4
  loc_696323: CVarBoolI2 var_E0
  loc_696327: FLdRfVar var_F0
  loc_69632A: ImpAdCallFPR4  = IIf(, , )
  loc_69632F: FLdVar var_F0
  loc_696333: FLdPrThis
  loc_696334: VCallAd Control_ID_SSPanel1
  loc_696337: FStAdFunc var_3EC
  loc_69633A: FLdPr var_3EC
  loc_69633D: LateIdSt
  loc_696342: FFree1Ad var_3EC
  loc_696345: FFreeVar var_E0 = "": var_B0 = "": var_D0 = ""
  loc_696350: ImpAdLdRf MemVar_74BED8
  loc_696353: CVarRef
  loc_696358: FLdRfVar var_B0
  loc_69635B: ImpAdCallFPR4  = Ucase()
  loc_696360: ImpAdLdRf MemVar_74BED4
  loc_696363: CVarRef
  loc_696368: FLdRfVar var_D0
  loc_69636B: ImpAdCallFPR4  = Ucase()
  loc_696370: FLdRfVar var_D0
  loc_696373: FLdRfVar var_B0
  loc_696376: ImpAdLdI4 MemVar_74BED4
  loc_696379: FnLenStr
  loc_69637A: LitI4 &HC
  loc_69637F: GtI4
  loc_696380: CVarBoolI2 var_E0
  loc_696384: FLdRfVar var_F0
  loc_696387: ImpAdCallFPR4  = IIf(, , )
  loc_69638C: FLdVar var_F0
  loc_696390: FLdPrThis
  loc_696391: VCallAd Control_ID_SSPanel2
  loc_696394: FStAdFunc var_3EC
  loc_696397: FLdPr var_3EC
  loc_69639A: LateIdSt
  loc_69639F: FFree1Ad var_3EC
  loc_6963A2: FFreeVar var_E0 = "": var_B0 = "": var_D0 = ""
  loc_6963AD: ImpAdLdUI1
  loc_6963B1: CI2UI1
  loc_6963B3: LitI2_Byte 0
  loc_6963B5: LtI2
  loc_6963B6: ImpAdLdUI1
  loc_6963BA: CI2UI1
  loc_6963BC: LitI2_Byte 4
  loc_6963BE: GtI2
  loc_6963BF: OrI4
  loc_6963C0: BranchF loc_6963CB
  loc_6963C3: LitI2_Byte 0
  loc_6963C5: CUI1I2
  loc_6963C7: ImpAdStUI1 MemVar_74C0F8
  loc_6963CB: ImpAdLdUI1
  loc_6963CF: CI2UI1
  loc_6963D1: LitI2_Byte 0
  loc_6963D3: LtI2
  loc_6963D4: ImpAdLdUI1
  loc_6963D8: CI2UI1
  loc_6963DA: LitI2_Byte 5
  loc_6963DC: GtI2
  loc_6963DD: OrI4
  loc_6963DE: BranchF loc_6963E9
  loc_6963E1: LitI2_Byte 0
  loc_6963E3: CUI1I2
  loc_6963E5: ImpAdStUI1 MemVar_74C0F8
  loc_6963E9: LitI2_Byte &HFF
  loc_6963EB: FLdRfVar var_3F0
  loc_6963EE: ImpAdLdUI1
  loc_6963F2: CI2UI1
  loc_6963F4: FLdPrThis
  loc_6963F5: VCallAd Control_ID_OptionCanal1
  loc_6963F8: FStAdFunc var_3EC
  loc_6963FB: FLdPr var_3EC
  loc_6963FE: Set from_stack_2 = Me(from_stack_1)
  loc_696403: FLdPr var_3F0
  loc_696406: Me.Value = from_stack_1b
  loc_69640B: FFreeAd var_3EC = ""
  loc_696412: LitStr "  "
  loc_696415: FLdRfVar var_1D4
  loc_696418: LitVar_Missing var_1D0
  loc_69641B: LitVar_Missing var_1B0
  loc_69641E: LitVar_Missing var_190
  loc_696421: LitVar_Missing var_170
  loc_696424: LitVar_Missing var_150
  loc_696427: LitVar_Missing var_130
  loc_69642A: LitVar_Missing var_110
  loc_69642D: LitVar_Missing var_F0
  loc_696430: LitVar_Missing var_D0
  loc_696433: LitVar_Missing var_B0
  loc_696436: LitStr "No Instalado"
  loc_696439: FStStrCopy var_90
  loc_69643C: FLdRfVar var_90
  loc_69643F: LitI4 6
  loc_696444: PopTmpLdAdStr var_8C
  loc_696447: LitI2_Byte &H3E
  loc_696449: PopTmpLdAd2 var_86
  loc_69644C: ImpAdLdRf MemVar_74C7D0
  loc_69644F: NewIfNullPr clsMsg
  loc_696452: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_696457: ILdRf var_1D4
  loc_69645A: ConcatStr
  loc_69645B: FStStrNoPop var_280
  loc_69645E: FLdRfVar var_3F0
  loc_696461: LitI2_Byte 0
  loc_696463: FLdPrThis
  loc_696464: VCallAd Control_ID_OptionCanal2
  loc_696467: FStAdFunc var_3EC
  loc_69646A: FLdPr var_3EC
  loc_69646D: Set from_stack_2 = Me(from_stack_1)
  loc_696472: FLdPr var_3F0
  loc_696475: Me.Caption = from_stack_1
  loc_69647A: FFreeStr var_90 = "": var_1D4 = ""
  loc_696483: FFreeAd var_3EC = ""
  loc_69648A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6964A1: FLdRfVar var_1D4
  loc_6964A4: LitVar_Missing var_1D0
  loc_6964A7: LitVar_Missing var_1B0
  loc_6964AA: LitVar_Missing var_190
  loc_6964AD: LitVar_Missing var_170
  loc_6964B0: LitVar_Missing var_150
  loc_6964B3: LitVar_Missing var_130
  loc_6964B6: LitVar_Missing var_110
  loc_6964B9: LitVar_Missing var_F0
  loc_6964BC: LitVar_Missing var_D0
  loc_6964BF: LitVar_Missing var_B0
  loc_6964C2: LitStr "&Reset"
  loc_6964C5: FStStrCopy var_90
  loc_6964C8: FLdRfVar var_90
  loc_6964CB: LitI4 7
  loc_6964D0: PopTmpLdAdStr var_8C
  loc_6964D3: LitI2_Byte &H3E
  loc_6964D5: PopTmpLdAd2 var_86
  loc_6964D8: ImpAdLdRf MemVar_74C7D0
  loc_6964DB: NewIfNullPr clsMsg
  loc_6964DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6964E3: FLdZeroAd var_1D4
  loc_6964E6: CVarStr var_1F4
  loc_6964E9: PopAdLdVar
  loc_6964EA: FLdPrThis
  loc_6964EB: VCallAd Control_ID_SSCommand3
  loc_6964EE: FStAdFunc var_3EC
  loc_6964F1: FLdPr var_3EC
  loc_6964F4: LateIdSt
  loc_6964F9: FFree1Str var_90
  loc_6964FC: FFree1Ad var_3EC
  loc_6964FF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_696518: FLdRfVar var_1D4
  loc_69651B: LitVar_Missing var_1D0
  loc_69651E: LitVar_Missing var_1B0
  loc_696521: LitVar_Missing var_190
  loc_696524: LitVar_Missing var_170
  loc_696527: LitVar_Missing var_150
  loc_69652A: LitVar_Missing var_130
  loc_69652D: LitVar_Missing var_110
  loc_696530: LitVar_Missing var_F0
  loc_696533: LitVar_Missing var_D0
  loc_696536: LitVar_Missing var_B0
  loc_696539: LitStr "&Cancelar"
  loc_69653C: FStStrCopy var_90
  loc_69653F: FLdRfVar var_90
  loc_696542: LitI4 8
  loc_696547: PopTmpLdAdStr var_8C
  loc_69654A: LitI2_Byte &H3E
  loc_69654C: PopTmpLdAd2 var_86
  loc_69654F: ImpAdLdRf MemVar_74C7D0
  loc_696552: NewIfNullPr clsMsg
  loc_696555: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69655A: FLdZeroAd var_1D4
  loc_69655D: CVarStr var_1F4
  loc_696560: PopAdLdVar
  loc_696561: FLdPrThis
  loc_696562: VCallAd Control_ID_sscCancel
  loc_696565: FStAdFunc var_3EC
  loc_696568: FLdPr var_3EC
  loc_69656B: LateIdSt
  loc_696570: FFree1Str var_90
  loc_696573: FFree1Ad var_3EC
  loc_696576: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_69658F: FLdRfVar var_1D4
  loc_696592: LitVar_Missing var_1D0
  loc_696595: LitVar_Missing var_1B0
  loc_696598: LitVar_Missing var_190
  loc_69659B: LitVar_Missing var_170
  loc_69659E: LitVar_Missing var_150
  loc_6965A1: LitVar_Missing var_130
  loc_6965A4: LitVar_Missing var_110
  loc_6965A7: LitVar_Missing var_F0
  loc_6965AA: LitVar_Missing var_D0
  loc_6965AD: LitVar_Missing var_B0
  loc_6965B0: LitStr "&Próxima Página"
  loc_6965B3: FStStrCopy var_90
  loc_6965B6: FLdRfVar var_90
  loc_6965B9: LitI4 9
  loc_6965BE: PopTmpLdAdStr var_8C
  loc_6965C1: LitI2_Byte &H3E
  loc_6965C3: PopTmpLdAd2 var_86
  loc_6965C6: ImpAdLdRf MemVar_74C7D0
  loc_6965C9: NewIfNullPr clsMsg
  loc_6965CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6965D1: FLdZeroAd var_1D4
  loc_6965D4: CVarStr var_1F4
  loc_6965D7: PopAdLdVar
  loc_6965D8: FLdPrThis
  loc_6965D9: VCallAd Control_ID_SSCommand2
  loc_6965DC: FStAdFunc var_3EC
  loc_6965DF: FLdPr var_3EC
  loc_6965E2: LateIdSt
  loc_6965E7: FFree1Str var_90
  loc_6965EA: FFree1Ad var_3EC
  loc_6965ED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_696606: LitStr "  "
  loc_696609: FLdRfVar var_1D4
  loc_69660C: LitVar_Missing var_1D0
  loc_69660F: LitVar_Missing var_1B0
  loc_696612: LitVar_Missing var_190
  loc_696615: LitVar_Missing var_170
  loc_696618: LitVar_Missing var_150
  loc_69661B: LitVar_Missing var_130
  loc_69661E: LitVar_Missing var_110
  loc_696621: LitVar_Missing var_F0
  loc_696624: LitVar_Missing var_D0
  loc_696627: LitVar_Missing var_B0
  loc_69662A: LitStr "GNC"
  loc_69662D: FStStrCopy var_90
  loc_696630: FLdRfVar var_90
  loc_696633: LitI4 &HA
  loc_696638: PopTmpLdAdStr var_8C
  loc_69663B: LitI2_Byte &H3E
  loc_69663D: PopTmpLdAd2 var_86
  loc_696640: ImpAdLdRf MemVar_74C7D0
  loc_696643: NewIfNullPr clsMsg
  loc_696646: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69664B: ILdRf var_1D4
  loc_69664E: ConcatStr
  loc_69664F: FStStrNoPop var_280
  loc_696652: FLdRfVar var_3F0
  loc_696655: LitI2_Byte 4
  loc_696657: FLdPrThis
  loc_696658: VCallAd Control_ID_OptionCanal1
  loc_69665B: FStAdFunc var_3EC
  loc_69665E: FLdPr var_3EC
  loc_696661: Set from_stack_2 = Me(from_stack_1)
  loc_696666: FLdPr var_3F0
  loc_696669: Me.Caption = from_stack_1
  loc_69666E: FFreeStr var_90 = "": var_1D4 = ""
  loc_696677: FFreeAd var_3EC = ""
  loc_69667E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_696695: LitStr "  "
  loc_696698: FLdRfVar var_1D4
  loc_69669B: LitVar_Missing var_1D0
  loc_69669E: LitVar_Missing var_1B0
  loc_6966A1: LitVar_Missing var_190
  loc_6966A4: LitVar_Missing var_170
  loc_6966A7: LitVar_Missing var_150
  loc_6966AA: LitVar_Missing var_130
  loc_6966AD: LitVar_Missing var_110
  loc_6966B0: LitVar_Missing var_F0
  loc_6966B3: LitVar_Missing var_D0
  loc_6966B6: LitVar_Missing var_B0
  loc_6966B9: LitStr "GNC"
  loc_6966BC: FStStrCopy var_90
  loc_6966BF: FLdRfVar var_90
  loc_6966C2: LitI4 &HA
  loc_6966C7: PopTmpLdAdStr var_8C
  loc_6966CA: LitI2_Byte &H3E
  loc_6966CC: PopTmpLdAd2 var_86
  loc_6966CF: ImpAdLdRf MemVar_74C7D0
  loc_6966D2: NewIfNullPr clsMsg
  loc_6966D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6966DA: ILdRf var_1D4
  loc_6966DD: ConcatStr
  loc_6966DE: FStStrNoPop var_280
  loc_6966E1: FLdRfVar var_3F0
  loc_6966E4: LitI2_Byte 5
  loc_6966E6: FLdPrThis
  loc_6966E7: VCallAd Control_ID_OptionCanal2
  loc_6966EA: FStAdFunc var_3EC
  loc_6966ED: FLdPr var_3EC
  loc_6966F0: Set from_stack_2 = Me(from_stack_1)
  loc_6966F5: FLdPr var_3F0
  loc_6966F8: Me.Caption = from_stack_1
  loc_6966FD: FFreeStr var_90 = "": var_1D4 = ""
  loc_696706: FFreeAd var_3EC = ""
  loc_69670D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_696724: ImpAdLdUI1
  loc_696728: CI2UI1
  loc_69672A: LitI2_Byte &H21
  loc_69672C: EqI2
  loc_69672D: BranchF loc_696758
  loc_696730: LitI2_Byte &HFF
  loc_696732: FLdRfVar var_3F0
  loc_696735: LitI2_Byte 0
  loc_696737: FLdPrThis
  loc_696738: VCallAd Control_ID_OptionCanal2
  loc_69673B: FStAdFunc var_3EC
  loc_69673E: FLdPr var_3EC
  loc_696741: Set from_stack_2 = Me(from_stack_1)
  loc_696746: FLdPr var_3F0
  loc_696749: Me.Value = from_stack_1b
  loc_69674E: FFreeAd var_3EC = ""
  loc_696755: Branch loc_696781
  loc_696758: LitI2_Byte &HFF
  loc_69675A: FLdRfVar var_3F0
  loc_69675D: ImpAdLdUI1
  loc_696761: CI2UI1
  loc_696763: FLdPrThis
  loc_696764: VCallAd Control_ID_OptionCanal2
  loc_696767: FStAdFunc var_3EC
  loc_69676A: FLdPr var_3EC
  loc_69676D: Set from_stack_2 = Me(from_stack_1)
  loc_696772: FLdPr var_3F0
  loc_696775: Me.Value = from_stack_1b
  loc_69677A: FFreeAd var_3EC = ""
  loc_696781: FLdRfVar var_86
  loc_696784: ImpAdLdRf MemVar_74C6B0
  loc_696787: NewIfNullPr CPumpsConfig
  loc_69678A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69678F: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '61A4CC
  'Data Table: 414EE4
  loc_61A390: FLdRfVar var_92
  loc_61A393: FLdRfVar var_90
  loc_61A396: LitI2_Byte 0
  loc_61A398: FLdPrThis
  loc_61A399: VCallAd Control_ID_OptionCanal2
  loc_61A39C: FStAdFunc var_8C
  loc_61A39F: FLdPr var_8C
  loc_61A3A2: Set from_stack_2 = Me(from_stack_1)
  loc_61A3A7: FLdPr var_90
  loc_61A3AA:  = Me.Value
  loc_61A3AF: FLdI2 var_92
  loc_61A3B2: LitI2_Byte &HFF
  loc_61A3B4: EqI2
  loc_61A3B5: FFreeAd var_8C = ""
  loc_61A3BC: BranchF loc_61A3D1
  loc_61A3BF: LitI2_Byte &H21
  loc_61A3C1: CUI1I2
  loc_61A3C3: ImpAdStUI1 MemVar_74C0DC
  loc_61A3C7: ImpAdLdRf MemVar_74C224
  loc_61A3CA: PopTmpLdAdStr var_98
  loc_61A3CD: Erase
  loc_61A3CE: Branch loc_61A3D9
  loc_61A3D1: LitI2_Byte &H11
  loc_61A3D3: CUI1I2
  loc_61A3D5: ImpAdStUI1 MemVar_74C0DC
  loc_61A3D9: LitI2_Byte 0
  loc_61A3DB: CUI1I2
  loc_61A3DD: ImpAdStUI1 MemVar_74C0F9
  loc_61A3E1: LitI2_Byte 0
  loc_61A3E3: CUI1I2
  loc_61A3E5: FLdRfVar var_86
  loc_61A3E8: LitI2_Byte 4
  loc_61A3EA: CUI1I2
  loc_61A3EC: ForUI1 var_9C
  loc_61A3F2: FLdRfVar var_92
  loc_61A3F5: FLdRfVar var_90
  loc_61A3F8: FLdUI1
  loc_61A3FC: CI2UI1
  loc_61A3FE: FLdPrThis
  loc_61A3FF: VCallAd Control_ID_OptionCanal1
  loc_61A402: FStAdFunc var_8C
  loc_61A405: FLdPr var_8C
  loc_61A408: Set from_stack_2 = Me(from_stack_1)
  loc_61A40D: FLdPr var_90
  loc_61A410:  = Me.Value
  loc_61A415: FLdI2 var_92
  loc_61A418: LitI2_Byte &HFF
  loc_61A41A: EqI2
  loc_61A41B: FFreeAd var_8C = ""
  loc_61A422: BranchF loc_61A42D
  loc_61A425: FLdUI1
  loc_61A429: ImpAdStUI1 MemVar_74C0F8
  loc_61A42D: FLdRfVar var_92
  loc_61A430: FLdRfVar var_90
  loc_61A433: FLdUI1
  loc_61A437: CI2UI1
  loc_61A439: FLdPrThis
  loc_61A43A: VCallAd Control_ID_OptionCanal2
  loc_61A43D: FStAdFunc var_8C
  loc_61A440: FLdPr var_8C
  loc_61A443: Set from_stack_2 = Me(from_stack_1)
  loc_61A448: FLdPr var_90
  loc_61A44B:  = Me.Value
  loc_61A450: FLdI2 var_92
  loc_61A453: LitI2_Byte &HFF
  loc_61A455: EqI2
  loc_61A456: FFreeAd var_8C = ""
  loc_61A45D: BranchF loc_61A468
  loc_61A460: FLdUI1
  loc_61A464: ImpAdStUI1 MemVar_74C0F9
  loc_61A468: FLdRfVar var_86
  loc_61A46B: NextUI1
  loc_61A471: FLdRfVar var_92
  loc_61A474: FLdRfVar var_90
  loc_61A477: LitI2_Byte 5
  loc_61A479: FLdPrThis
  loc_61A47A: VCallAd Control_ID_OptionCanal2
  loc_61A47D: FStAdFunc var_8C
  loc_61A480: FLdPr var_8C
  loc_61A483: Set from_stack_2 = Me(from_stack_1)
  loc_61A488: FLdPr var_90
  loc_61A48B:  = Me.Value
  loc_61A490: FLdI2 var_92
  loc_61A493: LitI2_Byte &HFF
  loc_61A495: EqI2
  loc_61A496: FFreeAd var_8C = ""
  loc_61A49D: BranchF loc_61A4A8
  loc_61A4A0: LitI2_Byte 5
  loc_61A4A2: CUI1I2
  loc_61A4A4: ImpAdStUI1 MemVar_74C0F9
  loc_61A4A8: ImpAdLdRf MemVar_74E330
  loc_61A4AB: NewIfNullPr fSurtidores
  loc_61A4AE: fSurtidores.Hide
  loc_61A4B3: LitVar_Missing var_BC
  loc_61A4B6: PopAdLdVar
  loc_61A4B7: LitVarI2 var_AC, 1
  loc_61A4BC: PopAdLdVar
  loc_61A4BD: ImpAdLdRf MemVar_74E344
  loc_61A4C0: NewIfNullPr fModelosCanal1
  loc_61A4C3: fModelosCanal1.Show from_stack_1, from_stack_2
  loc_61A4C8: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5DA010
  'Data Table: 414EE4
  loc_5D9FD8: ImpAdLdRf MemVar_74A220
  loc_5D9FDB: NewIfNullPr clsProducts
  loc_5D9FDE: clsProducts.Height = from_stack_1s
  loc_5D9FE3: LitI2_Byte &HFF
  loc_5D9FE5: PopTmpLdAd2 var_86
  loc_5D9FE8: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5D9FED: LitI2_Byte &HFF
  loc_5D9FEF: ImpAdLdRf MemVar_74C760
  loc_5D9FF2: NewIfNullPr Formx
  loc_5D9FF5: Call Formx.CanceladoPut(from_stack_1v)
  loc_5D9FFA: ILdRf Me
  loc_5D9FFD: FStAdNoPop
  loc_5DA001: ImpAdLdRf MemVar_7520D4
  loc_5DA004: NewIfNullPr Global
  loc_5DA007: Global.Unload from_stack_1
  loc_5DA00C: FFree1Ad var_8C
  loc_5DA00F: ExitProcHresult
End Sub

Private Sub SSCommand3_UnknownEvent_8 '64D158
  'Data Table: 414EE4
  loc_64CF6C: ImpAdCallFPR4 Beep()
  loc_64CF71: FLdRfVar var_1D4
  loc_64CF74: LitVar_Missing var_1D0
  loc_64CF77: LitVar_Missing var_1B0
  loc_64CF7A: LitVar_Missing var_190
  loc_64CF7D: LitVar_Missing var_170
  loc_64CF80: LitVar_Missing var_150
  loc_64CF83: LitVar_Missing var_130
  loc_64CF86: LitVar_Missing var_110
  loc_64CF89: LitVar_Missing var_F0
  loc_64CF8C: LitVar_Missing var_D0
  loc_64CF8F: LitVar_Missing var_B0
  loc_64CF92: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_64CF95: FStStrCopy var_90
  loc_64CF98: FLdRfVar var_90
  loc_64CF9B: LitI4 3
  loc_64CFA0: PopTmpLdAdStr var_8C
  loc_64CFA3: LitI2_Byte &H3E
  loc_64CFA5: PopTmpLdAd2 var_88
  loc_64CFA8: ImpAdLdRf MemVar_74C7D0
  loc_64CFAB: NewIfNullPr clsMsg
  loc_64CFAE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64CFB3: LitI4 &HD
  loc_64CFB8: FLdRfVar var_1E4
  loc_64CFBB: ImpAdCallFPR4  = Chr()
  loc_64CFC0: LitI4 &HA
  loc_64CFC5: FLdRfVar var_214
  loc_64CFC8: ImpAdCallFPR4  = Chr()
  loc_64CFCD: FLdRfVar var_374
  loc_64CFD0: LitVar_Missing var_370
  loc_64CFD3: LitVar_Missing var_350
  loc_64CFD6: LitVar_Missing var_330
  loc_64CFD9: LitVar_Missing var_310
  loc_64CFDC: LitVar_Missing var_2F0
  loc_64CFDF: LitVar_Missing var_2D0
  loc_64CFE2: LitVar_Missing var_2B0
  loc_64CFE5: LitVar_Missing var_290
  loc_64CFE8: LitVar_Missing var_270
  loc_64CFEB: LitVar_Missing var_250
  loc_64CFEE: LitStr "Presionando ""CANCEL"" se aborta el proceso."
  loc_64CFF1: FStStrCopy var_230
  loc_64CFF4: FLdRfVar var_230
  loc_64CFF7: LitI4 4
  loc_64CFFC: PopTmpLdAdStr var_22C
  loc_64CFFF: LitI2_Byte &H3E
  loc_64D001: PopTmpLdAd2 var_226
  loc_64D004: ImpAdLdRf MemVar_74C7D0
  loc_64D007: NewIfNullPr clsMsg
  loc_64D00A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64D00F: LitI4 &HD
  loc_64D014: FLdRfVar var_3A4
  loc_64D017: ImpAdCallFPR4  = Chr()
  loc_64D01C: LitI4 &HA
  loc_64D021: FLdRfVar var_3C4
  loc_64D024: ImpAdCallFPR4  = Chr()
  loc_64D029: FLdRfVar var_524
  loc_64D02C: LitVar_Missing var_520
  loc_64D02F: LitVar_Missing var_500
  loc_64D032: LitVar_Missing var_4E0
  loc_64D035: LitVar_Missing var_4C0
  loc_64D038: LitVar_Missing var_4A0
  loc_64D03B: LitVar_Missing var_480
  loc_64D03E: LitVar_Missing var_460
  loc_64D041: LitVar_Missing var_440
  loc_64D044: LitVar_Missing var_420
  loc_64D047: LitVar_Missing var_400
  loc_64D04A: LitStr "ADVERTENCIA"
  loc_64D04D: FStStrCopy var_3E0
  loc_64D050: FLdRfVar var_3E0
  loc_64D053: LitI4 5
  loc_64D058: PopTmpLdAdStr var_3DC
  loc_64D05B: LitI2_Byte &H3E
  loc_64D05D: PopTmpLdAd2 var_3D6
  loc_64D060: ImpAdLdRf MemVar_74C7D0
  loc_64D063: NewIfNullPr clsMsg
  loc_64D066: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64D06B: LitVar_Missing var_574
  loc_64D06E: LitVar_Missing var_554
  loc_64D071: FLdZeroAd var_524
  loc_64D074: CVarStr var_534
  loc_64D077: LitI4 &H131
  loc_64D07C: FLdZeroAd var_1D4
  loc_64D07F: CVarStr var_1F4
  loc_64D082: FLdRfVar var_1E4
  loc_64D085: ConcatVar var_204
  loc_64D089: FLdRfVar var_214
  loc_64D08C: ConcatVar var_224
  loc_64D090: FLdZeroAd var_374
  loc_64D093: CVarStr var_384
  loc_64D096: ConcatVar var_394
  loc_64D09A: FLdRfVar var_3A4
  loc_64D09D: ConcatVar var_3B4
  loc_64D0A1: FLdRfVar var_3C4
  loc_64D0A4: ConcatVar var_3D4
  loc_64D0A8: ImpAdCallI2 MsgBox(, , , , )
  loc_64D0AD: CUI1I4
  loc_64D0AF: FStUI1 var_86
  loc_64D0B3: FFreeStr var_90 = "": var_230 = ""
  loc_64D0BC: FFreeVar var_400 = "": var_420 = "": var_440 = "": var_460 = "": var_480 = "": var_4A0 = "": var_4C0 = "": var_4E0 = "": var_500 = "": var_520 = "": var_3D4 = "": var_534 = "": var_554 = "": var_574 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_224 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = ""
  loc_64D117: FLdUI1
  loc_64D11B: CI4UI1
  loc_64D11C: LitI4 1
  loc_64D121: EqI4
  loc_64D122: BranchF loc_64D142
  loc_64D125: LitI2_Byte 0
  loc_64D127: CUI1I2
  loc_64D129: ImpAdStUI1 MemVar_74C0F8
  loc_64D12D: LitI2_Byte 0
  loc_64D12F: CUI1I2
  loc_64D131: ImpAdStUI1 MemVar_74C0F9
  loc_64D135: LitI2_Byte &H21
  loc_64D137: CUI1I2
  loc_64D139: ImpAdStUI1 MemVar_74C0DC
  loc_64D13D: Call Form_Activate()
  loc_64D142: FLdPrThis
  loc_64D143: VCallAd Control_ID_SSCommand2
  loc_64D146: FStAdFunc var_578
  loc_64D149: FLdPr var_578
  loc_64D14C: LateIdCall
  loc_64D154: FFree1Ad var_578
  loc_64D157: ExitProcHresult
End Sub
