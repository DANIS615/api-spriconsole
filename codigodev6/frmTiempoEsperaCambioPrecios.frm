VERSION 5.00
Begin VB.Form frmTiempoEsperaCambioPrecios
  Caption = "Tiempo de Espera para  Cambio de Precios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 4425
  ClientTop = 3810
  ClientWidth = 6450
  ClientHeight = 2340
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 6195
    Height = 2115
    TabIndex = 0
    Begin VB.CommandButton cmdAceptar
      Caption = "&Aceptar"
      Left = 4440
      Top = 1320
      Width = 1634
      Height = 672
      TabIndex = 3
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
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Left = 2760
      Top = 1320
      Width = 1634
      Height = 672
      TabIndex = 2
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
    Begin VB.TextBox txtTimeout
      Left = 5040
      Top = 420
      Width = 975
      Height = 495
      TabIndex = 1
      Alignment = 1 'Right Justify
      MaxLength = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Tiempo de Espera en Segundos :"
      Left = 240
      Top = 480
      Width = 4755
      Height = 360
      TabIndex = 4
      AutoSize = -1  'True
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
End

Attribute VB_Name = "frmTiempoEsperaCambioPrecios"


Private Sub txtTimeout_KeyPress(KeyAscii As Integer) '5D75A4
  'Data Table: 40BE88
  loc_5D7574: ILdI2 KeyAscii
  loc_5D7577: CI4UI1
  loc_5D7578: LitI4 8
  loc_5D757D: EqI4
  loc_5D757E: BranchF loc_5D7582
  loc_5D7581: ExitProcHresult
  loc_5D7582: ILdI2 KeyAscii
  loc_5D7585: LitStr "0"
  loc_5D7588: ImpAdCallI2 Asc()
  loc_5D758D: LtI2
  loc_5D758E: ILdI2 KeyAscii
  loc_5D7591: LitStr "9"
  loc_5D7594: ImpAdCallI2 Asc()
  loc_5D7599: GtI2
  loc_5D759A: OrI4
  loc_5D759B: BranchF loc_5D75A3
  loc_5D759E: LitI2_Byte 0
  loc_5D75A0: IStI2 KeyAscii
  loc_5D75A3: ExitProcHresult
End Sub

Private Sub Form_Load() '6488D0
  'Data Table: 40BE88
  loc_648678: FLdRfVar var_90
  loc_64867B: ImpAdLdRf MemVar_74C978
  loc_64867E: NewIfNullPr frmTiempoEsperaCambioPrecios
  loc_648681:  = frmTiempoEsperaCambioPrecios.Height
  loc_648686: FLdRfVar var_8C
  loc_648689: FLdRfVar var_88
  loc_64868C: ImpAdLdRf MemVar_7520D4
  loc_64868F: NewIfNullPr Global
  loc_648692:  = Global.Screen
  loc_648697: FLdPr var_88
  loc_64869A:  = Screen.Height
  loc_64869F: FLdFPR4 var_8C
  loc_6486A2: FLdFPR4 var_90
  loc_6486A5: SubR4
  loc_6486A6: CI4R8
  loc_6486A7: LitI4 2
  loc_6486AC: IDvI4
  loc_6486AD: CR8I4
  loc_6486AE: PopFPR4
  loc_6486AF: ImpAdLdRf MemVar_74C978
  loc_6486B2: NewIfNullPr frmTiempoEsperaCambioPrecios
  loc_6486B5: frmTiempoEsperaCambioPrecios.Top = from_stack_1s
  loc_6486BA: FFree1Ad var_88
  loc_6486BD: FLdRfVar var_90
  loc_6486C0: ImpAdLdRf MemVar_74C978
  loc_6486C3: NewIfNullPr frmTiempoEsperaCambioPrecios
  loc_6486C6:  = frmTiempoEsperaCambioPrecios.Width
  loc_6486CB: FLdRfVar var_8C
  loc_6486CE: FLdRfVar var_88
  loc_6486D1: ImpAdLdRf MemVar_7520D4
  loc_6486D4: NewIfNullPr Global
  loc_6486D7:  = Global.Screen
  loc_6486DC: FLdPr var_88
  loc_6486DF:  = Screen.Width
  loc_6486E4: FLdFPR4 var_8C
  loc_6486E7: FLdFPR4 var_90
  loc_6486EA: SubR4
  loc_6486EB: CI4R8
  loc_6486EC: LitI4 2
  loc_6486F1: IDvI4
  loc_6486F2: CR8I4
  loc_6486F3: PopFPR4
  loc_6486F4: ImpAdLdRf MemVar_74C978
  loc_6486F7: NewIfNullPr frmTiempoEsperaCambioPrecios
  loc_6486FA: frmTiempoEsperaCambioPrecios.Left = from_stack_1s
  loc_6486FF: FFree1Ad var_88
  loc_648702: FLdRfVar var_1DC
  loc_648705: LitVar_Missing var_1D8
  loc_648708: LitVar_Missing var_1B8
  loc_64870B: LitVar_Missing var_198
  loc_64870E: LitVar_Missing var_178
  loc_648711: LitVar_Missing var_158
  loc_648714: LitVar_Missing var_138
  loc_648717: LitVar_Missing var_118
  loc_64871A: LitVar_Missing var_F8
  loc_64871D: LitVar_Missing var_D8
  loc_648720: LitVar_Missing var_B8
  loc_648723: LitStr "Tiempo de Espera para Cambio de Precios"
  loc_648726: FStStrCopy var_98
  loc_648729: FLdRfVar var_98
  loc_64872C: LitI4 1
  loc_648731: PopTmpLdAdStr var_8C
  loc_648734: LitI2_Byte &H3A
  loc_648736: PopTmpLdAd2 var_92
  loc_648739: ImpAdLdRf MemVar_74C7D0
  loc_64873C: NewIfNullPr clsMsg
  loc_64873F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_648744: ILdRf var_1DC
  loc_648747: FLdPr Me
  loc_64874A: Me.Caption = from_stack_1
  loc_64874F: FFreeStr var_98 = ""
  loc_648756: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_64876D: FLdRfVar var_1DC
  loc_648770: LitVar_Missing var_1D8
  loc_648773: LitVar_Missing var_1B8
  loc_648776: LitVar_Missing var_198
  loc_648779: LitVar_Missing var_178
  loc_64877C: LitVar_Missing var_158
  loc_64877F: LitVar_Missing var_138
  loc_648782: LitVar_Missing var_118
  loc_648785: LitVar_Missing var_F8
  loc_648788: LitVar_Missing var_D8
  loc_64878B: LitVar_Missing var_B8
  loc_64878E: LitStr "Tiempo de Espera en Segundos :"
  loc_648791: FStStrCopy var_98
  loc_648794: FLdRfVar var_98
  loc_648797: LitI4 2
  loc_64879C: PopTmpLdAdStr var_8C
  loc_64879F: LitI2_Byte &H3A
  loc_6487A1: PopTmpLdAd2 var_92
  loc_6487A4: ImpAdLdRf MemVar_74C7D0
  loc_6487A7: NewIfNullPr clsMsg
  loc_6487AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6487AF: ILdRf var_1DC
  loc_6487B2: FLdPrThis
  loc_6487B3: VCallAd Control_ID_Label1
  loc_6487B6: FStAdFunc var_88
  loc_6487B9: FLdPr var_88
  loc_6487BC: Me.Caption = from_stack_1
  loc_6487C1: FFreeStr var_98 = ""
  loc_6487C8: FFree1Ad var_88
  loc_6487CB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6487E2: FLdRfVar var_1DC
  loc_6487E5: LitVar_Missing var_1D8
  loc_6487E8: LitVar_Missing var_1B8
  loc_6487EB: LitVar_Missing var_198
  loc_6487EE: LitVar_Missing var_178
  loc_6487F1: LitVar_Missing var_158
  loc_6487F4: LitVar_Missing var_138
  loc_6487F7: LitVar_Missing var_118
  loc_6487FA: LitVar_Missing var_F8
  loc_6487FD: LitVar_Missing var_D8
  loc_648800: LitVar_Missing var_B8
  loc_648803: LitStr "&Cancelar"
  loc_648806: FStStrCopy var_98
  loc_648809: FLdRfVar var_98
  loc_64880C: LitI4 3
  loc_648811: PopTmpLdAdStr var_8C
  loc_648814: LitI2_Byte &H3A
  loc_648816: PopTmpLdAd2 var_92
  loc_648819: ImpAdLdRf MemVar_74C7D0
  loc_64881C: NewIfNullPr clsMsg
  loc_64881F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_648824: ILdRf var_1DC
  loc_648827: FLdPrThis
  loc_648828: VCallAd Control_ID_cmdCancelar
  loc_64882B: FStAdFunc var_88
  loc_64882E: FLdPr var_88
  loc_648831: Me.Caption = from_stack_1
  loc_648836: FFreeStr var_98 = ""
  loc_64883D: FFree1Ad var_88
  loc_648840: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_648857: FLdRfVar var_1DC
  loc_64885A: LitVar_Missing var_1D8
  loc_64885D: LitVar_Missing var_1B8
  loc_648860: LitVar_Missing var_198
  loc_648863: LitVar_Missing var_178
  loc_648866: LitVar_Missing var_158
  loc_648869: LitVar_Missing var_138
  loc_64886C: LitVar_Missing var_118
  loc_64886F: LitVar_Missing var_F8
  loc_648872: LitVar_Missing var_D8
  loc_648875: LitVar_Missing var_B8
  loc_648878: LitStr "&Aceptar"
  loc_64887B: FStStrCopy var_98
  loc_64887E: FLdRfVar var_98
  loc_648881: LitI4 4
  loc_648886: PopTmpLdAdStr var_8C
  loc_648889: LitI2_Byte &H3A
  loc_64888B: PopTmpLdAd2 var_92
  loc_64888E: ImpAdLdRf MemVar_74C7D0
  loc_648891: NewIfNullPr clsMsg
  loc_648894: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_648899: ILdRf var_1DC
  loc_64889C: FLdPrThis
  loc_64889D: VCallAd Control_ID_cmdAceptar
  loc_6488A0: FStAdFunc var_88
  loc_6488A3: FLdPr var_88
  loc_6488A6: Me.Caption = from_stack_1
  loc_6488AB: FFreeStr var_98 = ""
  loc_6488B2: FFree1Ad var_88
  loc_6488B5: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6488CC: ExitProcHresult
End Sub

Private Sub Form_Activate() '5F3BEC
  'Data Table: 40BE88
  loc_5F3B50: FLdRfVar var_9C
  loc_5F3B53: FLdRfVar var_88
  loc_5F3B56: FLdRfVar var_8C
  loc_5F3B59: ImpAdLdRf MemVar_74C760
  loc_5F3B5C: NewIfNullPr Formx
  loc_5F3B5F: from_stack_1v = Formx.global_4589716Get()
  loc_5F3B64: FLdPr var_8C
  loc_5F3B67: Call 0.Method_arg_1B4 ()
  loc_5F3B6C: FLdRfVar var_9C
  loc_5F3B6F: NotVar var_AC
  loc_5F3B73: CBoolVarNull
  loc_5F3B75: FFree1Ad var_8C
  loc_5F3B78: FFree1Var var_9C = ""
  loc_5F3B7B: BranchF loc_5F3BAA
  loc_5F3B7E: FLdRfVar var_9C
  loc_5F3B81: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F3B86: FLdRfVar var_9C
  loc_5F3B89: CBoolVarNull
  loc_5F3B8B: FFree1Var var_9C = ""
  loc_5F3B8E: BranchF loc_5F3BA7
  loc_5F3B91: ILdRf Me
  loc_5F3B94: FStAdNoPop
  loc_5F3B98: ImpAdLdRf MemVar_7520D4
  loc_5F3B9B: NewIfNullPr Global
  loc_5F3B9E: Global.Unload from_stack_1
  loc_5F3BA3: FFree1Ad var_8C
  loc_5F3BA6: ExitProcHresult
  loc_5F3BA7: Branch loc_5F3B50
  loc_5F3BAA: ILdRf var_88
  loc_5F3BAD: ImpAdCallFPR4 push Val()
  loc_5F3BB2: CStrR8
  loc_5F3BB4: FStStrNoPop var_B0
  loc_5F3BB7: LitStr vbNullString
  loc_5F3BBA: ConcatStr
  loc_5F3BBB: FStStrNoPop var_B4
  loc_5F3BBE: FLdPrThis
  loc_5F3BBF: VCallAd Control_ID_txtTimeout
  loc_5F3BC2: FStAdFunc var_8C
  loc_5F3BC5: FLdPr var_8C
  loc_5F3BC8: Me.Text = from_stack_1
  loc_5F3BCD: FFreeStr var_B0 = ""
  loc_5F3BD4: FFree1Ad var_8C
  loc_5F3BD7: FLdPrThis
  loc_5F3BD8: VCallAd Control_ID_txtTimeout
  loc_5F3BDB: FStAdFunc var_8C
  loc_5F3BDE: FLdPr var_8C
  loc_5F3BE1: Me.SetFocus
  loc_5F3BE6: FFree1Ad var_8C
  loc_5F3BE9: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D2938
  'Data Table: 40BE88
  loc_5D2920: ILdRf Me
  loc_5D2923: FStAdNoPop
  loc_5D2927: ImpAdLdRf MemVar_7520D4
  loc_5D292A: NewIfNullPr Global
  loc_5D292D: Global.Unload from_stack_1
  loc_5D2932: FFree1Ad var_88
  loc_5D2935: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '5EA2B4
  'Data Table: 40BE88
  loc_5EA23C: FLdRfVar var_A4
  loc_5EA23F: FLdRfVar var_8C
  loc_5EA242: FLdPrThis
  loc_5EA243: VCallAd Control_ID_txtTimeout
  loc_5EA246: FStAdFunc var_88
  loc_5EA249: FLdPr var_88
  loc_5EA24C:  = Me.Text
  loc_5EA251: FLdZeroAd var_8C
  loc_5EA254: PopTmpLdAdStr
  loc_5EA258: FLdRfVar var_90
  loc_5EA25B: ImpAdLdRf MemVar_74C760
  loc_5EA25E: NewIfNullPr Formx
  loc_5EA261: from_stack_1v = Formx.global_4589716Get()
  loc_5EA266: FLdPr var_90
  loc_5EA269:  = Formx.Visible
  loc_5EA26E: FLdRfVar var_A4
  loc_5EA271: NotVar var_B4
  loc_5EA275: CBoolVarNull
  loc_5EA277: FFree1Str var_94
  loc_5EA27A: FFreeAd var_88 = ""
  loc_5EA281: FFree1Var var_A4 = ""
  loc_5EA284: BranchF loc_5EA29E
  loc_5EA287: FLdRfVar var_A4
  loc_5EA28A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5EA28F: FLdRfVar var_A4
  loc_5EA292: CBoolVarNull
  loc_5EA294: FFree1Var var_A4 = ""
  loc_5EA297: BranchF loc_5EA29B
  loc_5EA29A: ExitProcHresult
  loc_5EA29B: Branch loc_5EA23C
  loc_5EA29E: ILdRf Me
  loc_5EA2A1: FStAdNoPop
  loc_5EA2A5: ImpAdLdRf MemVar_7520D4
  loc_5EA2A8: NewIfNullPr Global
  loc_5EA2AB: Global.Unload from_stack_1
  loc_5EA2B0: FFree1Ad var_88
  loc_5EA2B3: ExitProcHresult
End Sub
