VERSION 5.00
Begin VB.Form frmPuestaEnMarcha
  Caption = "RED XXI - Puesta en Marcha"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 1935
  ClientTop = 2565
  ClientWidth = 7875
  ClientHeight = 2970
  ShowInTaskbar = 0   'False
  Begin VB.Frame Frame1
    Left = 180
    Top = 180
    Width = 7515
    Height = 1875
    TabIndex = 8
    Begin VB.TextBox txtPassword
      ForeColor = &H404040&
      Left = 270
      Top = 930
      Width = 6915
      Height = 405
      TabIndex = 0
      PasswordChar = "*"
      MaxLength = 10
    End
    Begin VB.TextBox txtAnio
      ForeColor = &H404040&
      Left = 3930
      Top = 1950
      Width = 1005
      Height = 405
      TabIndex = 3
      MaxLength = 4
    End
    Begin VB.TextBox txtSegundos
      ForeColor = &H404040&
      Left = 3840
      Top = 2640
      Width = 555
      Height = 405
      TabIndex = 6
      MaxLength = 2
    End
    Begin VB.TextBox txtMinutos
      ForeColor = &H404040&
      Left = 3120
      Top = 2610
      Width = 555
      Height = 405
      TabIndex = 5
      MaxLength = 2
    End
    Begin VB.TextBox txtHora
      ForeColor = &H404040&
      Left = 2370
      Top = 2580
      Width = 555
      Height = 405
      TabIndex = 4
      MaxLength = 2
    End
    Begin VB.TextBox txtMes
      ForeColor = &H404040&
      Left = 3180
      Top = 1950
      Width = 555
      Height = 405
      TabIndex = 2
      MaxLength = 2
    End
    Begin VB.TextBox txtDia
      ForeColor = &H404040&
      Left = 2280
      Top = 2070
      Width = 555
      Height = 405
      TabIndex = 1
      MaxLength = 2
    End
    Begin VB.Label lblPassword
      Caption = "Password Implementación :"
      Left = 270
      Top = 420
      Width = 4035
      Height = 435
      TabIndex = 18
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
    Begin VB.Label Label9
      Caption = "   HH           MM          SS"
      Left = 2370
      Top = 3120
      Width = 2055
      Height = 255
      TabIndex = 17
    End
    Begin VB.Label Label8
      Caption = "    DD           MM               AAAA"
      Left = 2340
      Top = 2370
      Width = 2625
      Height = 255
      TabIndex = 16
    End
    Begin VB.Label Label6
      Caption = ":"
      Left = 3660
      Top = 2580
      Width = 165
      Height = 435
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
    Begin VB.Label Label5
      Caption = ":"
      Left = 2970
      Top = 2550
      Width = 165
      Height = 435
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
    Begin VB.Label Label4
      Caption = "/"
      Left = 3750
      Top = 1950
      Width = 225
      Height = 435
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
    Begin VB.Label Label3
      Caption = "/"
      Left = 2880
      Top = 2070
      Width = 225
      Height = 435
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
    Begin VB.Label lblHora
      Caption = "Hora :"
      Left = 270
      Top = 2640
      Width = 1125
      Height = 495
      TabIndex = 11
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
    Begin VB.Label lblFecha
      Caption = "Fecha :"
      Left = 300
      Top = 2100
      Width = 1215
      Height = 435
      TabIndex = 10
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
  End
  Begin VB.CommandButton cmdCancel
    Caption = "&Cancelar"
    Left = 4050
    Top = 2250
    Width = 1740
    Height = 630
    TabIndex = 9
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdOK
    Caption = "&Aceptar"
    Left = 5970
    Top = 2220
    Width = 1740
    Height = 630
    TabIndex = 7
    Default = -1  'True
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
End

Attribute VB_Name = "frmPuestaEnMarcha"

Public sTipo As String


Private Sub txtDia_LostFocus() '5F27BC
  'Data Table: 439BA8
  loc_5F2730: FLdRfVar var_8C
  loc_5F2733: FLdPrThis
  loc_5F2734: VCallAd Control_ID_txtDia
  loc_5F2737: FStAdFunc var_88
  loc_5F273A: FLdPr var_88
  loc_5F273D:  = Me.Text
  loc_5F2742: ILdRf var_8C
  loc_5F2745: ImpAdCallFPR4 push Val()
  loc_5F274A: CR8R8
  loc_5F274B: LitI2_Byte 0
  loc_5F274D: CR8I2
  loc_5F274E: LtR8
  loc_5F274F: FLdRfVar var_94
  loc_5F2752: FLdPrThis
  loc_5F2753: VCallAd Control_ID_txtDia
  loc_5F2756: FStAdFunc var_90
  loc_5F2759: FLdPr var_90
  loc_5F275C:  = Me.Text
  loc_5F2761: ILdRf var_94
  loc_5F2764: ImpAdCallFPR4 push Val()
  loc_5F2769: CR8R8
  loc_5F276A: LitI2_Byte &H1F
  loc_5F276C: CR8I2
  loc_5F276D: GtR4
  loc_5F276E: OrI4
  loc_5F276F: FFreeStr var_8C = ""
  loc_5F2776: FFreeAd var_88 = ""
  loc_5F277D: BranchF loc_5F27BB
  loc_5F2780: LitVar_Missing var_114
  loc_5F2783: LitVar_Missing var_F4
  loc_5F2786: LitVar_Missing var_D4
  loc_5F2789: LitI4 &H40
  loc_5F278E: LitVarStr var_A4, "Número de día erroneo."
  loc_5F2793: FStVarCopyObj var_B4
  loc_5F2796: FLdRfVar var_B4
  loc_5F2799: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F279E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F27A9: FLdPrThis
  loc_5F27AA: VCallAd Control_ID_txtDia
  loc_5F27AD: FStAdFunc var_88
  loc_5F27B0: FLdPr var_88
  loc_5F27B3: Me.SetFocus
  loc_5F27B8: FFree1Ad var_88
  loc_5F27BB: ExitProcHresult
End Sub

Private Sub txtMes_LostFocus() '5F2294
  'Data Table: 439BA8
  loc_5F2208: FLdRfVar var_8C
  loc_5F220B: FLdPrThis
  loc_5F220C: VCallAd Control_ID_txtMes
  loc_5F220F: FStAdFunc var_88
  loc_5F2212: FLdPr var_88
  loc_5F2215:  = Me.Text
  loc_5F221A: ILdRf var_8C
  loc_5F221D: ImpAdCallFPR4 push Val()
  loc_5F2222: CR8R8
  loc_5F2223: LitI2_Byte 0
  loc_5F2225: CR8I2
  loc_5F2226: LtR8
  loc_5F2227: FLdRfVar var_94
  loc_5F222A: FLdPrThis
  loc_5F222B: VCallAd Control_ID_txtMes
  loc_5F222E: FStAdFunc var_90
  loc_5F2231: FLdPr var_90
  loc_5F2234:  = Me.Text
  loc_5F2239: ILdRf var_94
  loc_5F223C: ImpAdCallFPR4 push Val()
  loc_5F2241: CR8R8
  loc_5F2242: LitI2_Byte &HC
  loc_5F2244: CR8I2
  loc_5F2245: GtR4
  loc_5F2246: OrI4
  loc_5F2247: FFreeStr var_8C = ""
  loc_5F224E: FFreeAd var_88 = ""
  loc_5F2255: BranchF loc_5F2293
  loc_5F2258: LitVar_Missing var_114
  loc_5F225B: LitVar_Missing var_F4
  loc_5F225E: LitVar_Missing var_D4
  loc_5F2261: LitI4 &H40
  loc_5F2266: LitVarStr var_A4, "Número de mes erroneo."
  loc_5F226B: FStVarCopyObj var_B4
  loc_5F226E: FLdRfVar var_B4
  loc_5F2271: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F2276: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F2281: FLdPrThis
  loc_5F2282: VCallAd Control_ID_txtMes
  loc_5F2285: FStAdFunc var_88
  loc_5F2288: FLdPr var_88
  loc_5F228B: Me.SetFocus
  loc_5F2290: FFree1Ad var_88
  loc_5F2293: ExitProcHresult
End Sub

Private Sub txtAnio_LostFocus() '5F3140
  'Data Table: 439BA8
  loc_5F30B0: FLdRfVar var_8C
  loc_5F30B3: FLdPrThis
  loc_5F30B4: VCallAd Control_ID_txtAnio
  loc_5F30B7: FStAdFunc var_88
  loc_5F30BA: FLdPr var_88
  loc_5F30BD:  = Me.Text
  loc_5F30C2: ILdRf var_8C
  loc_5F30C5: ImpAdCallFPR4 push Val()
  loc_5F30CA: CR8R8
  loc_5F30CB: LitI2_Byte 0
  loc_5F30CD: CR8I2
  loc_5F30CE: LtR8
  loc_5F30CF: FLdRfVar var_94
  loc_5F30D2: FLdPrThis
  loc_5F30D3: VCallAd Control_ID_txtAnio
  loc_5F30D6: FStAdFunc var_90
  loc_5F30D9: FLdPr var_90
  loc_5F30DC:  = Me.Text
  loc_5F30E1: ILdRf var_94
  loc_5F30E4: ImpAdCallFPR4 push Val()
  loc_5F30E9: CR8R8
  loc_5F30EA: LitI2 2000
  loc_5F30ED: CR8I2
  loc_5F30EE: GtR4
  loc_5F30EF: OrI4
  loc_5F30F0: FFreeStr var_8C = ""
  loc_5F30F7: FFreeAd var_88 = ""
  loc_5F30FE: BranchF loc_5F313C
  loc_5F3101: LitVar_Missing var_114
  loc_5F3104: LitVar_Missing var_F4
  loc_5F3107: LitVar_Missing var_D4
  loc_5F310A: LitI4 &H40
  loc_5F310F: LitVarStr var_A4, "Número de año erroneo."
  loc_5F3114: FStVarCopyObj var_B4
  loc_5F3117: FLdRfVar var_B4
  loc_5F311A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F311F: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F312A: FLdPrThis
  loc_5F312B: VCallAd Control_ID_txtAnio
  loc_5F312E: FStAdFunc var_88
  loc_5F3131: FLdPr var_88
  loc_5F3134: Me.SetFocus
  loc_5F3139: FFree1Ad var_88
  loc_5F313C: ExitProcHresult
End Sub

Private Sub txtHora_LostFocus() '5F1D6C
  'Data Table: 439BA8
  loc_5F1CE0: FLdRfVar var_8C
  loc_5F1CE3: FLdPrThis
  loc_5F1CE4: VCallAd Control_ID_txtHora
  loc_5F1CE7: FStAdFunc var_88
  loc_5F1CEA: FLdPr var_88
  loc_5F1CED:  = Me.Text
  loc_5F1CF2: ILdRf var_8C
  loc_5F1CF5: ImpAdCallFPR4 push Val()
  loc_5F1CFA: CR8R8
  loc_5F1CFB: LitI2_Byte 0
  loc_5F1CFD: CR8I2
  loc_5F1CFE: LtR8
  loc_5F1CFF: FLdRfVar var_94
  loc_5F1D02: FLdPrThis
  loc_5F1D03: VCallAd Control_ID_txtHora
  loc_5F1D06: FStAdFunc var_90
  loc_5F1D09: FLdPr var_90
  loc_5F1D0C:  = Me.Text
  loc_5F1D11: ILdRf var_94
  loc_5F1D14: ImpAdCallFPR4 push Val()
  loc_5F1D19: CR8R8
  loc_5F1D1A: LitI2_Byte &H17
  loc_5F1D1C: CR8I2
  loc_5F1D1D: GtR4
  loc_5F1D1E: OrI4
  loc_5F1D1F: FFreeStr var_8C = ""
  loc_5F1D26: FFreeAd var_88 = ""
  loc_5F1D2D: BranchF loc_5F1D6B
  loc_5F1D30: LitVar_Missing var_114
  loc_5F1D33: LitVar_Missing var_F4
  loc_5F1D36: LitVar_Missing var_D4
  loc_5F1D39: LitI4 &H40
  loc_5F1D3E: LitVarStr var_A4, "Número de hora erroneo."
  loc_5F1D43: FStVarCopyObj var_B4
  loc_5F1D46: FLdRfVar var_B4
  loc_5F1D49: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F1D4E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F1D59: FLdPrThis
  loc_5F1D5A: VCallAd Control_ID_txtHora
  loc_5F1D5D: FStAdFunc var_88
  loc_5F1D60: FLdPr var_88
  loc_5F1D63: Me.SetFocus
  loc_5F1D68: FFree1Ad var_88
  loc_5F1D6B: ExitProcHresult
End Sub

Private Sub txtMinutos_LostFocus() '5F1C90
  'Data Table: 439BA8
  loc_5F1C04: FLdRfVar var_8C
  loc_5F1C07: FLdPrThis
  loc_5F1C08: VCallAd Control_ID_txtMinutos
  loc_5F1C0B: FStAdFunc var_88
  loc_5F1C0E: FLdPr var_88
  loc_5F1C11:  = Me.Text
  loc_5F1C16: ILdRf var_8C
  loc_5F1C19: ImpAdCallFPR4 push Val()
  loc_5F1C1E: CR8R8
  loc_5F1C1F: LitI2_Byte 0
  loc_5F1C21: CR8I2
  loc_5F1C22: LtR8
  loc_5F1C23: FLdRfVar var_94
  loc_5F1C26: FLdPrThis
  loc_5F1C27: VCallAd Control_ID_txtMinutos
  loc_5F1C2A: FStAdFunc var_90
  loc_5F1C2D: FLdPr var_90
  loc_5F1C30:  = Me.Text
  loc_5F1C35: ILdRf var_94
  loc_5F1C38: ImpAdCallFPR4 push Val()
  loc_5F1C3D: CR8R8
  loc_5F1C3E: LitI2_Byte &H3B
  loc_5F1C40: CR8I2
  loc_5F1C41: GtR4
  loc_5F1C42: OrI4
  loc_5F1C43: FFreeStr var_8C = ""
  loc_5F1C4A: FFreeAd var_88 = ""
  loc_5F1C51: BranchF loc_5F1C8F
  loc_5F1C54: LitVar_Missing var_114
  loc_5F1C57: LitVar_Missing var_F4
  loc_5F1C5A: LitVar_Missing var_D4
  loc_5F1C5D: LitI4 &H40
  loc_5F1C62: LitVarStr var_A4, "Número de minutos erroneo."
  loc_5F1C67: FStVarCopyObj var_B4
  loc_5F1C6A: FLdRfVar var_B4
  loc_5F1C6D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F1C72: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F1C7D: FLdPrThis
  loc_5F1C7E: VCallAd Control_ID_txtMinutos
  loc_5F1C81: FStAdFunc var_88
  loc_5F1C84: FLdPr var_88
  loc_5F1C87: Me.SetFocus
  loc_5F1C8C: FFree1Ad var_88
  loc_5F1C8F: ExitProcHresult
End Sub

Private Sub txtSegundos_LostFocus() '5F2C08
  'Data Table: 439BA8
  loc_5F2B7C: FLdRfVar var_8C
  loc_5F2B7F: FLdPrThis
  loc_5F2B80: VCallAd Control_ID_txtSegundos
  loc_5F2B83: FStAdFunc var_88
  loc_5F2B86: FLdPr var_88
  loc_5F2B89:  = Me.Text
  loc_5F2B8E: ILdRf var_8C
  loc_5F2B91: ImpAdCallFPR4 push Val()
  loc_5F2B96: CR8R8
  loc_5F2B97: LitI2_Byte 0
  loc_5F2B99: CR8I2
  loc_5F2B9A: LtR8
  loc_5F2B9B: FLdRfVar var_94
  loc_5F2B9E: FLdPrThis
  loc_5F2B9F: VCallAd Control_ID_txtSegundos
  loc_5F2BA2: FStAdFunc var_90
  loc_5F2BA5: FLdPr var_90
  loc_5F2BA8:  = Me.Text
  loc_5F2BAD: ILdRf var_94
  loc_5F2BB0: ImpAdCallFPR4 push Val()
  loc_5F2BB5: CR8R8
  loc_5F2BB6: LitI2_Byte &H3B
  loc_5F2BB8: CR8I2
  loc_5F2BB9: GtR4
  loc_5F2BBA: OrI4
  loc_5F2BBB: FFreeStr var_8C = ""
  loc_5F2BC2: FFreeAd var_88 = ""
  loc_5F2BC9: BranchF loc_5F2C07
  loc_5F2BCC: LitVar_Missing var_114
  loc_5F2BCF: LitVar_Missing var_F4
  loc_5F2BD2: LitVar_Missing var_D4
  loc_5F2BD5: LitI4 &H40
  loc_5F2BDA: LitVarStr var_A4, "Número de segundos erroneo."
  loc_5F2BDF: FStVarCopyObj var_B4
  loc_5F2BE2: FLdRfVar var_B4
  loc_5F2BE5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F2BEA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_5F2BF5: FLdPrThis
  loc_5F2BF6: VCallAd Control_ID_txtSegundos
  loc_5F2BF9: FStAdFunc var_88
  loc_5F2BFC: FLdPr var_88
  loc_5F2BFF: Me.SetFocus
  loc_5F2C04: FFree1Ad var_88
  loc_5F2C07: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '5D2B00
  'Data Table: 439BA8
  loc_5D2AE8: ILdRf Me
  loc_5D2AEB: FStAdNoPop
  loc_5D2AEF: ImpAdLdRf MemVar_7520D4
  loc_5D2AF2: NewIfNullPr Global
  loc_5D2AF5: Global.Unload from_stack_1
  loc_5D2AFA: FFree1Ad var_88
  loc_5D2AFD: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '623A10
  'Data Table: 439BA8
  loc_6238C0: OnErrorGoto loc_6239E6
  loc_6238C3: FLdRfVar var_A4
  loc_6238C6: FLdPrThis
  loc_6238C7: VCallAd Control_ID_txtPassword
  loc_6238CA: FStAdFunc var_A0
  loc_6238CD: FLdPr var_A0
  loc_6238D0:  = Me.Text
  loc_6238D5: ILdRf var_A4
  loc_6238D8: LitStr vbNullString
  loc_6238DB: EqStr
  loc_6238DD: FFree1Str var_A4
  loc_6238E0: FFree1Ad var_A0
  loc_6238E3: BranchF loc_623910
  loc_6238E6: LitVar_Missing var_124
  loc_6238E9: LitVar_Missing var_104
  loc_6238EC: LitVar_Missing var_E4
  loc_6238EF: LitI4 &H30
  loc_6238F4: LitVarStr var_B4, "No ha ingresado su password. Por favor, ingrésela."
  loc_6238F9: FStVarCopyObj var_C4
  loc_6238FC: FLdRfVar var_C4
  loc_6238FF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623904: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_62390F: ExitProcHresult
  loc_623910: FLdRfVar var_A4
  loc_623913: FLdPrThis
  loc_623914: VCallAd Control_ID_txtPassword
  loc_623917: FStAdFunc var_A0
  loc_62391A: FLdPr var_A0
  loc_62391D:  = Me.Text
  loc_623922: FLdRfVar var_132
  loc_623925: FLdRfVar var_9C
  loc_623928: FLdZeroAd var_A4
  loc_62392B: PopTmpLdAdStr
  loc_62392F: LitStr vbNullString
  loc_623932: FStStrCopy var_12C
  loc_623935: FLdRfVar var_12C
  loc_623938: FLdPr Me
  loc_62393B: MemLdRfVar from_stack_1.sTipo
  loc_62393E: FLdRfVar var_128
  loc_623941: ImpAdLdRf MemVar_74C760
  loc_623944: NewIfNullPr Formx
  loc_623947: from_stack_1v = Formx.global_4589716Get()
  loc_62394C: FLdPr var_128
  loc_62394F: Formx.Move from_stack_1s, from_stack_2, from_stack_3, from_stack_4
  loc_623954: FLdI2 var_132
  loc_623957: FStI2 var_96
  loc_62395A: FFreeStr var_12C = ""
  loc_623961: FFreeAd var_A0 = ""
  loc_623968: FLdI2 var_96
  loc_62396B: LitI2_Byte &HFF
  loc_62396D: EqI2
  loc_62396E: ILdRf var_9C
  loc_623971: LitStr "OK"
  loc_623974: EqStr
  loc_623976: AndI4
  loc_623977: BranchF loc_6239A6
  loc_62397A: LitVar_Missing var_124
  loc_62397D: LitVar_Missing var_104
  loc_623980: LitVar_Missing var_E4
  loc_623983: LitI4 &H40
  loc_623988: LitVarStr var_B4, "Proceso de generación de archivos completado exitósamente."
  loc_62398D: FStVarCopyObj var_C4
  loc_623990: FLdRfVar var_C4
  loc_623993: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623998: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_6239A3: Branch loc_6239D0
  loc_6239A6: LitVar_Missing var_124
  loc_6239A9: LitVar_Missing var_104
  loc_6239AC: LitVar_Missing var_E4
  loc_6239AF: LitI4 &H30
  loc_6239B4: LitVarStr var_B4, "La password ingresada es inválida. Por favor, verifique."
  loc_6239B9: FStVarCopyObj var_C4
  loc_6239BC: FLdRfVar var_C4
  loc_6239BF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6239C4: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_6239CF: ExitProcHresult
  loc_6239D0: ILdRf Me
  loc_6239D3: FStAdNoPop
  loc_6239D7: ImpAdLdRf MemVar_7520D4
  loc_6239DA: NewIfNullPr Global
  loc_6239DD: Global.Unload from_stack_1
  loc_6239E2: FFree1Ad var_A0
  loc_6239E5: ExitProcHresult
  loc_6239E6: LitVar_Missing var_124
  loc_6239E9: LitVar_Missing var_104
  loc_6239EC: LitVar_Missing var_E4
  loc_6239EF: LitI4 &H30
  loc_6239F4: LitVarStr var_B4, "Ha ingresado una fecha errónea. Por favor, verifique."
  loc_6239F9: FStVarCopyObj var_C4
  loc_6239FC: FLdRfVar var_C4
  loc_6239FF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623A04: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_623A0F: ExitProcHresult
End Sub

Private Sub Form_Load() '5E7504
  'Data Table: 439BA8
  loc_5E748C: FLdPr Me
  loc_5E748F: MemLdStr sTipo
  loc_5E7492: FStStrCopy var_88
  loc_5E7495: ILdRf var_88
  loc_5E7498: LitStr "I"
  loc_5E749B: EqStr
  loc_5E749D: BranchF loc_5E74C3
  loc_5E74A0: LitStr "Red XXI - Instalación"
  loc_5E74A3: FLdPr Me
  loc_5E74A6: Me.Caption = from_stack_1
  loc_5E74AB: LitStr "Password Instalación :"
  loc_5E74AE: FLdPrThis
  loc_5E74AF: VCallAd Control_ID_lblPassword
  loc_5E74B2: FStAdFunc var_8C
  loc_5E74B5: FLdPr var_8C
  loc_5E74B8: Me.Caption = from_stack_1
  loc_5E74BD: FFree1Ad var_8C
  loc_5E74C0: Branch loc_5E74EE
  loc_5E74C3: ILdRf var_88
  loc_5E74C6: LitStr "P"
  loc_5E74C9: EqStr
  loc_5E74CB: BranchF loc_5E74EE
  loc_5E74CE: LitStr "Red XXI - Producción"
  loc_5E74D1: FLdPr Me
  loc_5E74D4: Me.Caption = from_stack_1
  loc_5E74D9: LitStr "Password Producción :"
  loc_5E74DC: FLdPrThis
  loc_5E74DD: VCallAd Control_ID_lblPassword
  loc_5E74E0: FStAdFunc var_8C
  loc_5E74E3: FLdPr var_8C
  loc_5E74E6: Me.Caption = from_stack_1
  loc_5E74EB: FFree1Ad var_8C
  loc_5E74EE: ILdRf Me
  loc_5E74F1: CastAd
  loc_5E74F4: FStAdFunc var_8C
  loc_5E74F7: FLdRfVar var_8C
  loc_5E74FA: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5E74FF: FFree1Ad var_8C
  loc_5E7502: ExitProcHresult
End Sub

Public Function sTipoGet() '43A7A0
  sTipoGet = sTipo
End Function

Public Sub sTipoPut(Value) '43A7AF
  sTipo = Value
End Sub
