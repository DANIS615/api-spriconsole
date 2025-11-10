VERSION 5.00
Begin VB.Form frmShowBankDebit
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
  ClientTop = 75
  ClientWidth = 11910
  ClientHeight = 8745
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.PictureBox Picture2
    Left = 9480
    Top = 240
    Width = 2205
    Height = 540
    TabIndex = 5
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
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 6360
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 3
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
    Left = 9120
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 1
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
  Begin VB.ListBox lstListado
    Left = 240
    Top = 1080
    Width = 11415
    Height = 6495
    TabIndex = 0
  End
  Begin VB.Label Label1
    Caption = "Debitos Bancarios"
    Left = 2040
    Top = 240
    Width = 7335
    Height = 495
    TabIndex = 2
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

Attribute VB_Name = "frmShowBankDebit"

Public TipoReporte As String
Public Desdehasta As String


Private Sub cmdImprimir_Click() '5D37E0
  'Data Table: 411B50
  loc_5D37C4: ImpAdCallFPR4 Proc_87_2_6D5770()
  loc_5D37C9: ILdRf Me
  loc_5D37CC: FStAdNoPop
  loc_5D37D0: ImpAdLdRf MemVar_7520D4
  loc_5D37D3: NewIfNullPr Global
  loc_5D37D6: Global.Unload from_stack_1
  loc_5D37DB: FFree1Ad var_88
  loc_5D37DE: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D2050
  'Data Table: 411B50
  loc_5D2038: ILdRf Me
  loc_5D203B: FStAdNoPop
  loc_5D203F: ImpAdLdRf MemVar_7520D4
  loc_5D2042: NewIfNullPr Global
  loc_5D2045: Global.Unload from_stack_1
  loc_5D204A: FFree1Ad var_88
  loc_5D204D: ExitProcHresult
End Sub

Private Sub Form_Load() '610AA4
  'Data Table: 411B50
  loc_6109A0: FLdPrThis
  loc_6109A1: VCallAd Control_ID_Picture1
  loc_6109A4: FStAdFunc var_98
  loc_6109A7: FLdRfVar var_8C
  loc_6109AA: FLdRfVar var_88
  loc_6109AD: ImpAdLdRf MemVar_7520D4
  loc_6109B0: NewIfNullPr Global
  loc_6109B3:  = Global.App
  loc_6109B8: FLdPr var_88
  loc_6109BB:  = App.Path
  loc_6109C0: ILdRf var_8C
  loc_6109C3: LitStr "\Logo_Compania.bmp"
  loc_6109C6: ConcatStr
  loc_6109C7: FStStrNoPop var_94
  loc_6109CA: FLdZeroAd var_98
  loc_6109CD: FStAdFunc var_90
  loc_6109D0: FLdRfVar var_90
  loc_6109D3: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6109D8: FFreeStr var_8C = ""
  loc_6109DF: FFreeAd var_88 = "": var_90 = ""
  loc_6109E8: FLdPrThis
  loc_6109E9: VCallAd Control_ID_Picture2
  loc_6109EC: FStAdFunc var_98
  loc_6109EF: FLdRfVar var_8C
  loc_6109F2: FLdRfVar var_88
  loc_6109F5: ImpAdLdRf MemVar_7520D4
  loc_6109F8: NewIfNullPr Global
  loc_6109FB:  = Global.App
  loc_610A00: FLdPr var_88
  loc_610A03:  = App.Path
  loc_610A08: ILdRf var_8C
  loc_610A0B: LitStr "\Logo_Proyecto.bmp"
  loc_610A0E: ConcatStr
  loc_610A0F: FStStrNoPop var_94
  loc_610A12: FLdZeroAd var_98
  loc_610A15: FStAdFunc var_90
  loc_610A18: FLdRfVar var_90
  loc_610A1B: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_610A20: FFreeStr var_8C = ""
  loc_610A27: FFreeAd var_88 = "": var_90 = ""
  loc_610A30: LitI2_Byte 0
  loc_610A32: CR8I2
  loc_610A33: PopFPR4
  loc_610A34: FLdPr Me
  loc_610A37: Me.Left = from_stack_1s
  loc_610A3C: LitI2_Byte 0
  loc_610A3E: CR8I2
  loc_610A3F: PopFPR4
  loc_610A40: FLdPr Me
  loc_610A43: Me.Top = from_stack_1s
  loc_610A48: FLdRfVar var_9C
  loc_610A4B: FLdRfVar var_88
  loc_610A4E: ImpAdLdRf MemVar_7520D4
  loc_610A51: NewIfNullPr Global
  loc_610A54:  = Global.Screen
  loc_610A59: FLdPr var_88
  loc_610A5C:  = Screen.TwipsPerPixelX
  loc_610A61: FLdFPR4 var_9C
  loc_610A64: LitI2 800
  loc_610A67: CR8I2
  loc_610A68: MulR8
  loc_610A69: PopFPR4
  loc_610A6A: FLdPr Me
  loc_610A6D: Me.Width = from_stack_1s
  loc_610A72: FFree1Ad var_88
  loc_610A75: FLdRfVar var_9C
  loc_610A78: FLdRfVar var_88
  loc_610A7B: ImpAdLdRf MemVar_7520D4
  loc_610A7E: NewIfNullPr Global
  loc_610A81:  = Global.Screen
  loc_610A86: FLdPr var_88
  loc_610A89:  = Screen.TwipsPerPixelY
  loc_610A8E: FLdFPR4 var_9C
  loc_610A91: LitI2 600
  loc_610A94: CR8I2
  loc_610A95: MulR8
  loc_610A96: PopFPR4
  loc_610A97: FLdPr Me
  loc_610A9A: Me.Height = from_stack_1s
  loc_610A9F: FFree1Ad var_88
  loc_610AA2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5CAC88
  'Data Table: 411B50
  loc_5CAC7C: LitI2_Byte 0
  loc_5CAC7E: FLdPr Me
  loc_5CAC81: MemStI2 global_60
  loc_5CAC84: ExitProcHresult
End Sub

Private Sub Form_Activate() '6A6C4C
  'Data Table: 411B50
  loc_6A6568: FLdPr Me
  loc_6A656B: MemLdI2 global_60
  loc_6A656E: BranchF loc_6A6572
  loc_6A6571: ExitProcHresult
  loc_6A6572: LitI2_Byte &HFF
  loc_6A6574: FLdPr Me
  loc_6A6577: MemStI2 global_60
  loc_6A657A: LitStr "Courier New"
  loc_6A657D: FLdPrThis
  loc_6A657E: VCallAd Control_ID_lstListado
  loc_6A6581: FStAdFunc var_B0
  loc_6A6584: FLdPr var_B0
  loc_6A6587: Me.FontName = from_stack_1
  loc_6A658C: FFree1Ad var_B0
  loc_6A658F: LitI2_Byte &HB
  loc_6A6591: CR8I2
  loc_6A6592: PopFPR4
  loc_6A6593: FLdPrThis
  loc_6A6594: VCallAd Control_ID_lstListado
  loc_6A6597: FStAdFunc var_B0
  loc_6A659A: FLdPr var_B0
  loc_6A659D: Me.FontSize = from_stack_1s
  loc_6A65A2: FFree1Ad var_B0
  loc_6A65A5: LitI2_Byte &HFF
  loc_6A65A7: FLdPrThis
  loc_6A65A8: VCallAd Control_ID_lstListado
  loc_6A65AB: FStAdFunc var_B0
  loc_6A65AE: FLdPr var_B0
  loc_6A65B1: Me.FontBold = from_stack_1b
  loc_6A65B6: FFree1Ad var_B0
  loc_6A65B9: LitI2_Byte 0
  loc_6A65BB: PopTmpLdAd2 var_B2
  loc_6A65BE: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_6A65C3: FLdRfVar var_B2
  loc_6A65C6: FLdRfVar var_98
  loc_6A65C9: FLdRfVar var_B0
  loc_6A65CC: ImpAdLdRf MemVar_74C760
  loc_6A65CF: NewIfNullPr Formx
  loc_6A65D2: from_stack_1v = Formx.global_4589716Get()
  loc_6A65D7: FLdPr var_B0
  loc_6A65DA:  = Formx.Picture
  loc_6A65DF: FLdI2 var_B2
  loc_6A65E2: NotI4
  loc_6A65E3: FFree1Ad var_B0
  loc_6A65E6: BranchF loc_6A6615
  loc_6A65E9: FLdRfVar var_C4
  loc_6A65EC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A65F1: FLdRfVar var_C4
  loc_6A65F4: CBoolVarNull
  loc_6A65F6: FFree1Var var_C4 = ""
  loc_6A65F9: BranchF loc_6A6612
  loc_6A65FC: ILdRf Me
  loc_6A65FF: FStAdNoPop
  loc_6A6603: ImpAdLdRf MemVar_7520D4
  loc_6A6606: NewIfNullPr Global
  loc_6A6609: Global.Unload from_stack_1
  loc_6A660E: FFree1Ad var_B0
  loc_6A6611: ExitProcHresult
  loc_6A6612: Branch loc_6A65C3
  loc_6A6615: LitVarI2 var_C4, 30
  loc_6A661A: LitI4 7
  loc_6A661F: FLdRfVar var_98
  loc_6A6622: CVarRef
  loc_6A6627: FLdRfVar var_F4
  loc_6A662A: ImpAdCallFPR4  = Mid(, , )
  loc_6A662F: FLdRfVar var_F4
  loc_6A6632: FLdRfVar var_104
  loc_6A6635: ImpAdCallFPR4  = Trim()
  loc_6A663A: FLdRfVar var_104
  loc_6A663D: CStrVarTmp
  loc_6A663E: FStStr var_94
  loc_6A6641: FFreeVar var_C4 = "": var_F4 = ""
  loc_6A664A: LitVarI2 var_C4, 6
  loc_6A664F: LitI4 1
  loc_6A6654: FLdRfVar var_98
  loc_6A6657: CVarRef
  loc_6A665C: FLdRfVar var_F4
  loc_6A665F: ImpAdCallFPR4  = Mid(, , )
  loc_6A6664: FLdRfVar var_F4
  loc_6A6667: CStrVarVal var_108
  loc_6A666B: ImpAdCallFPR4 push Val()
  loc_6A6670: CI2R8
  loc_6A6671: FStI2 var_8A
  loc_6A6674: FFree1Str var_108
  loc_6A6677: FFreeVar var_C4 = ""
  loc_6A667E: LitVar_Missing var_D4
  loc_6A6681: PopAdLdVar
  loc_6A6682: LitStr vbNullString
  loc_6A6685: FLdPrThis
  loc_6A6686: VCallAd Control_ID_lstListado
  loc_6A6689: FStAdFunc var_B0
  loc_6A668C: FLdPr var_B0
  loc_6A668F: Me.AddItem from_stack_1, from_stack_2
  loc_6A6694: FFree1Ad var_B0
  loc_6A6697: LitVar_Missing var_D4
  loc_6A669A: PopAdLdVar
  loc_6A669B: LitStr vbNullString
  loc_6A669E: FLdPrThis
  loc_6A669F: VCallAd Control_ID_lstListado
  loc_6A66A2: FStAdFunc var_B0
  loc_6A66A5: FLdPr var_B0
  loc_6A66A8: Me.AddItem from_stack_1, from_stack_2
  loc_6A66AD: FFree1Ad var_B0
  loc_6A66B0: FLdRfVar var_C4
  loc_6A66B3: ImpAdCallFPR4  = Now
  loc_6A66B8: LitI4 1
  loc_6A66BD: LitI4 1
  loc_6A66C2: LitVarStr var_D4, "dd/mm/yyyy hh:mm"
  loc_6A66C7: FStVarCopyObj var_F4
  loc_6A66CA: FLdRfVar var_F4
  loc_6A66CD: FLdRfVar var_C4
  loc_6A66D0: FLdRfVar var_104
  loc_6A66D3: ImpAdCallFPR4  = Format(, )
  loc_6A66D8: LitI2_Byte &H50
  loc_6A66DA: LitVarStr var_E4, "INFORME DE DEBITO BANCARIO - "
  loc_6A66DF: FLdRfVar var_104
  loc_6A66E2: ConcatVar var_118
  loc_6A66E6: CStrVarVal var_108
  loc_6A66EA: FLdRfVar var_128
  loc_6A66ED: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_6A66F2: LitVar_Missing var_13C
  loc_6A66F5: PopAdLdVar
  loc_6A66F6: FLdRfVar var_128
  loc_6A66F9: CStrVarVal var_12C
  loc_6A66FD: FLdPrThis
  loc_6A66FE: VCallAd Control_ID_lstListado
  loc_6A6701: FStAdFunc var_B0
  loc_6A6704: FLdPr var_B0
  loc_6A6707: Me.AddItem from_stack_1, from_stack_2
  loc_6A670C: FFreeStr var_108 = ""
  loc_6A6713: FFree1Ad var_B0
  loc_6A6716: FFreeVar var_C4 = "": var_F4 = "": var_104 = "": var_118 = ""
  loc_6A6723: LitVar_Missing var_D4
  loc_6A6726: PopAdLdVar
  loc_6A6727: LitStr vbNullString
  loc_6A672A: FLdPrThis
  loc_6A672B: VCallAd Control_ID_lstListado
  loc_6A672E: FStAdFunc var_B0
  loc_6A6731: FLdPr var_B0
  loc_6A6734: Me.AddItem from_stack_1, from_stack_2
  loc_6A6739: FFree1Ad var_B0
  loc_6A673C: LitVar_Missing var_D4
  loc_6A673F: PopAdLdVar
  loc_6A6740: LitStr vbNullString
  loc_6A6743: FLdPrThis
  loc_6A6744: VCallAd Control_ID_lstListado
  loc_6A6747: FStAdFunc var_B0
  loc_6A674A: FLdPr var_B0
  loc_6A674D: Me.AddItem from_stack_1, from_stack_2
  loc_6A6752: FFree1Ad var_B0
  loc_6A6755: LitVar_Missing var_13C
  loc_6A6758: PopAdLdVar
  loc_6A6759: LitI4 3
  loc_6A675E: FLdRfVar var_C4
  loc_6A6761: ImpAdCallFPR4  = Space()
  loc_6A6766: FLdRfVar var_C4
  loc_6A6769: LitVarStr var_D4, "ESTACION NRO: "
  loc_6A676E: ConcatVar var_F4
  loc_6A6772: FLdI2 var_8A
  loc_6A6775: CVarI2 var_E4
  loc_6A6778: ConcatVar var_104
  loc_6A677C: CStrVarVal var_108
  loc_6A6780: FLdPrThis
  loc_6A6781: VCallAd Control_ID_lstListado
  loc_6A6784: FStAdFunc var_B0
  loc_6A6787: FLdPr var_B0
  loc_6A678A: Me.AddItem from_stack_1, from_stack_2
  loc_6A678F: FFree1Str var_108
  loc_6A6792: FFree1Ad var_B0
  loc_6A6795: FFreeVar var_C4 = "": var_F4 = ""
  loc_6A679E: LitVar_Missing var_13C
  loc_6A67A1: PopAdLdVar
  loc_6A67A2: LitI4 3
  loc_6A67A7: FLdRfVar var_C4
  loc_6A67AA: ImpAdCallFPR4  = Space()
  loc_6A67AF: FLdRfVar var_C4
  loc_6A67B2: LitVarStr var_D4, "RAZON SOCIAL: "
  loc_6A67B7: ConcatVar var_F4
  loc_6A67BB: ILdRf var_94
  loc_6A67BE: CVarStr var_E4
  loc_6A67C1: ConcatVar var_104
  loc_6A67C5: CStrVarVal var_108
  loc_6A67C9: FLdPrThis
  loc_6A67CA: VCallAd Control_ID_lstListado
  loc_6A67CD: FStAdFunc var_B0
  loc_6A67D0: FLdPr var_B0
  loc_6A67D3: Me.AddItem from_stack_1, from_stack_2
  loc_6A67D8: FFree1Str var_108
  loc_6A67DB: FFree1Ad var_B0
  loc_6A67DE: FFreeVar var_C4 = "": var_F4 = ""
  loc_6A67E7: LitVar_Missing var_D4
  loc_6A67EA: PopAdLdVar
  loc_6A67EB: LitStr vbNullString
  loc_6A67EE: FLdPrThis
  loc_6A67EF: VCallAd Control_ID_lstListado
  loc_6A67F2: FStAdFunc var_B0
  loc_6A67F5: FLdPr var_B0
  loc_6A67F8: Me.AddItem from_stack_1, from_stack_2
  loc_6A67FD: FFree1Ad var_B0
  loc_6A6800: LitVar_Missing var_D4
  loc_6A6803: PopAdLdVar
  loc_6A6804: LitStr vbNullString
  loc_6A6807: FLdPrThis
  loc_6A6808: VCallAd Control_ID_lstListado
  loc_6A680B: FStAdFunc var_B0
  loc_6A680E: FLdPr var_B0
  loc_6A6811: Me.AddItem from_stack_1, from_stack_2
  loc_6A6816: FFree1Ad var_B0
  loc_6A6819: FLdRfVar var_B2
  loc_6A681C: FLdRfVar var_A0
  loc_6A681F: FLdRfVar var_B0
  loc_6A6822: ImpAdLdRf MemVar_74C760
  loc_6A6825: NewIfNullPr Formx
  loc_6A6828: from_stack_1v = Formx.global_4589716Get()
  loc_6A682D: FLdPr var_B0
  loc_6A6830:  = Formx.RightToLeft
  loc_6A6835: FLdI2 var_B2
  loc_6A6838: NotI4
  loc_6A6839: FFree1Ad var_B0
  loc_6A683C: BranchF loc_6A686B
  loc_6A683F: FLdRfVar var_C4
  loc_6A6842: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A6847: FLdRfVar var_C4
  loc_6A684A: CBoolVarNull
  loc_6A684C: FFree1Var var_C4 = ""
  loc_6A684F: BranchF loc_6A6868
  loc_6A6852: ILdRf Me
  loc_6A6855: FStAdNoPop
  loc_6A6859: ImpAdLdRf MemVar_7520D4
  loc_6A685C: NewIfNullPr Global
  loc_6A685F: Global.Unload from_stack_1
  loc_6A6864: FFree1Ad var_B0
  loc_6A6867: ExitProcHresult
  loc_6A6868: Branch loc_6A6819
  loc_6A686B: FLdRfVar var_A0
  loc_6A686E: CVarRef
  loc_6A6873: FLdRfVar var_C4
  loc_6A6876: ImpAdCallFPR4  = RTrim()
  loc_6A687B: FLdRfVar var_C4
  loc_6A687E: CStrVarTmp
  loc_6A687F: FStStr var_9C
  loc_6A6882: FFree1Var var_C4 = ""
  loc_6A6885: ILdRf var_9C
  loc_6A6888: FnLenStr
  loc_6A6889: LitI4 1
  loc_6A688E: GtI4
  loc_6A688F: BranchF loc_6A6960
  loc_6A6892: LitVar_Missing var_D4
  loc_6A6895: PopAdLdVar
  loc_6A6896: LitStr vbNullString
  loc_6A6899: FLdPrThis
  loc_6A689A: VCallAd Control_ID_lstListado
  loc_6A689D: FStAdFunc var_B0
  loc_6A68A0: FLdPr var_B0
  loc_6A68A3: Me.AddItem from_stack_1, from_stack_2
  loc_6A68A8: FFree1Ad var_B0
  loc_6A68AB: LitVar_Missing var_17C
  loc_6A68AE: PopAdLdVar
  loc_6A68AF: LitI4 4
  loc_6A68B4: FLdRfVar var_C4
  loc_6A68B7: ImpAdCallFPR4  = Space()
  loc_6A68BC: FLdRfVar var_C4
  loc_6A68BF: LitVarStr var_D4, "NUMERO DE CUENTA"
  loc_6A68C4: ConcatVar var_F4
  loc_6A68C8: LitI4 &HE
  loc_6A68CD: FLdRfVar var_104
  loc_6A68D0: ImpAdCallFPR4  = Space()
  loc_6A68D5: FLdRfVar var_104
  loc_6A68D8: ConcatVar var_118
  loc_6A68DC: LitVarStr var_E4, "IMPORTE"
  loc_6A68E1: ConcatVar var_128
  loc_6A68E5: LitI4 &H10
  loc_6A68EA: FLdRfVar var_14C
  loc_6A68ED: ImpAdCallFPR4  = Space()
  loc_6A68F2: FLdRfVar var_14C
  loc_6A68F5: ConcatVar var_15C
  loc_6A68F9: LitVarStr var_13C, "FECHA VENC."
  loc_6A68FE: ConcatVar var_16C
  loc_6A6902: CStrVarVal var_108
  loc_6A6906: FLdPrThis
  loc_6A6907: VCallAd Control_ID_lstListado
  loc_6A690A: FStAdFunc var_B0
  loc_6A690D: FLdPr var_B0
  loc_6A6910: Me.AddItem from_stack_1, from_stack_2
  loc_6A6915: FFree1Str var_108
  loc_6A6918: FFree1Ad var_B0
  loc_6A691B: FFreeVar var_C4 = "": var_F4 = "": var_104 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_6A692E: LitVar_Missing var_D4
  loc_6A6931: PopAdLdVar
  loc_6A6932: LitStr vbNullString
  loc_6A6935: FLdPrThis
  loc_6A6936: VCallAd Control_ID_lstListado
  loc_6A6939: FStAdFunc var_B0
  loc_6A693C: FLdPr var_B0
  loc_6A693F: Me.AddItem from_stack_1, from_stack_2
  loc_6A6944: FFree1Ad var_B0
  loc_6A6947: LitVar_Missing var_D4
  loc_6A694A: PopAdLdVar
  loc_6A694B: LitStr vbNullString
  loc_6A694E: FLdPrThis
  loc_6A694F: VCallAd Control_ID_lstListado
  loc_6A6952: FStAdFunc var_B0
  loc_6A6955: FLdPr var_B0
  loc_6A6958: Me.AddItem from_stack_1, from_stack_2
  loc_6A695D: FFree1Ad var_B0
  loc_6A6960: LitI2_Byte 1
  loc_6A6962: FStI2 var_86
  loc_6A6965: FLdI2 var_86
  loc_6A6968: CI4UI1
  loc_6A6969: ILdRf var_9C
  loc_6A696C: FnLenStr
  loc_6A696D: LtI4
  loc_6A696E: BranchF loc_6A6C48
  loc_6A6971: LitVarI2 var_C4, 17
  loc_6A6976: FLdI2 var_86
  loc_6A6979: CI4UI1
  loc_6A697A: ILdRf var_9C
  loc_6A697D: ImpAdCallI2 Mid$(, , )
  loc_6A6982: FStStr var_108
  loc_6A6985: LitI4 1
  loc_6A698A: LitI4 1
  loc_6A698F: LitVarStr var_E4, "@@@@@@@@@@@@@@@@@"
  loc_6A6994: FStVarCopyObj var_104
  loc_6A6997: FLdRfVar var_104
  loc_6A699A: FLdZeroAd var_108
  loc_6A699D: CVarStr var_F4
  loc_6A69A0: FLdRfVar var_118
  loc_6A69A3: ImpAdCallFPR4  = Format(, )
  loc_6A69A8: FLdRfVar var_118
  loc_6A69AB: CStrVarTmp
  loc_6A69AC: FStStr var_A4
  loc_6A69AF: FFree1Str var_108
  loc_6A69B2: FFreeVar var_C4 = "": var_F4 = "": var_104 = ""
  loc_6A69BD: FLdI2 var_86
  loc_6A69C0: LitI2_Byte &H11
  loc_6A69C2: AddI2
  loc_6A69C3: FStI2 var_86
  loc_6A69C6: LitVarI2 var_C4, 2
  loc_6A69CB: FLdI2 var_86
  loc_6A69CE: LitI2_Byte 6
  loc_6A69D0: AddI2
  loc_6A69D1: CI4UI1
  loc_6A69D2: ILdRf var_9C
  loc_6A69D5: ImpAdCallI2 Mid$(, , )
  loc_6A69DA: FStStr var_108
  loc_6A69DD: LitVarI2 var_14C, 2
  loc_6A69E2: FLdI2 var_86
  loc_6A69E5: LitI2_Byte 4
  loc_6A69E7: AddI2
  loc_6A69E8: CI4UI1
  loc_6A69E9: ILdRf var_9C
  loc_6A69EC: ImpAdCallI2 Mid$(, , )
  loc_6A69F1: FStStr var_12C
  loc_6A69F4: LitVarI2 var_1EC, 4
  loc_6A69F9: FLdI2 var_86
  loc_6A69FC: CI4UI1
  loc_6A69FD: ILdRf var_9C
  loc_6A6A00: ImpAdCallI2 Mid$(, , )
  loc_6A6A05: FStStr var_240
  loc_6A6A08: LitI4 1
  loc_6A6A0D: LitI4 1
  loc_6A6A12: LitVarStr var_E4, "##"
  loc_6A6A17: FStVarCopyObj var_104
  loc_6A6A1A: FLdRfVar var_104
  loc_6A6A1D: FLdZeroAd var_108
  loc_6A6A20: CVarStr var_F4
  loc_6A6A23: FLdRfVar var_118
  loc_6A6A26: ImpAdCallFPR4  = Format(, )
  loc_6A6A2B: FLdRfVar var_118
  loc_6A6A2E: LitVarStr var_13C, "/"
  loc_6A6A33: ConcatVar var_128
  loc_6A6A37: LitI4 1
  loc_6A6A3C: LitI4 1
  loc_6A6A41: LitVarStr var_18C, "##"
  loc_6A6A46: FStVarCopyObj var_16C
  loc_6A6A49: FLdRfVar var_16C
  loc_6A6A4C: FLdZeroAd var_12C
  loc_6A6A4F: CVarStr var_15C
  loc_6A6A52: FLdRfVar var_19C
  loc_6A6A55: ImpAdCallFPR4  = Format(, )
  loc_6A6A5A: FLdRfVar var_19C
  loc_6A6A5D: ConcatVar var_1AC
  loc_6A6A61: LitVarStr var_1BC, "/"
  loc_6A6A66: ConcatVar var_1CC
  loc_6A6A6A: LitI4 1
  loc_6A6A6F: LitI4 1
  loc_6A6A74: LitVarStr var_20C, "####"
  loc_6A6A79: FStVarCopyObj var_21C
  loc_6A6A7C: FLdRfVar var_21C
  loc_6A6A7F: FLdZeroAd var_240
  loc_6A6A82: CVarStr var_1FC
  loc_6A6A85: FLdRfVar var_22C
  loc_6A6A88: ImpAdCallFPR4  = Format(, )
  loc_6A6A8D: FLdRfVar var_22C
  loc_6A6A90: ConcatVar var_23C
  loc_6A6A94: CStrVarTmp
  loc_6A6A95: FStStr var_A8
  loc_6A6A98: FFreeStr var_108 = "": var_12C = ""
  loc_6A6AA1: FFreeVar var_C4 = "": var_F4 = "": var_104 = "": var_118 = "": var_14C = "": var_15C = "": var_16C = "": var_128 = "": var_19C = "": var_1AC = "": var_1EC = "": var_1FC = "": var_21C = "": var_1CC = "": var_22C = ""
  loc_6A6AC4: FLdI2 var_86
  loc_6A6AC7: LitI2_Byte 8
  loc_6A6AC9: AddI2
  loc_6A6ACA: FStI2 var_86
  loc_6A6ACD: LitVarI2 var_C4, 12
  loc_6A6AD2: FLdI2 var_86
  loc_6A6AD5: CI4UI1
  loc_6A6AD6: ILdRf var_9C
  loc_6A6AD9: ImpAdCallI2 Mid$(, , )
  loc_6A6ADE: FStStrNoPop var_108
  loc_6A6AE1: ImpAdCallFPR4 push Val()
  loc_6A6AE6: FStFPR8 var_248
  loc_6A6AE9: LitI4 1
  loc_6A6AEE: LitI4 1
  loc_6A6AF3: LitVarStr var_13C, "#,###,###,##0.00"
  loc_6A6AF8: FStVarCopyObj var_104
  loc_6A6AFB: FLdRfVar var_104
  loc_6A6AFE: FLdFPR8 var_248
  loc_6A6B01: LitI2_Byte &H64
  loc_6A6B03: CR8I2
  loc_6A6B04: DivR8
  loc_6A6B05: CVarR8
  loc_6A6B09: FLdRfVar var_118
  loc_6A6B0C: ImpAdCallFPR4  = Format(, )
  loc_6A6B11: LitI4 1
  loc_6A6B16: LitI4 1
  loc_6A6B1B: LitVarStr var_17C, "@@@@@@@@@@@@@"
  loc_6A6B20: FStVarCopyObj var_128
  loc_6A6B23: FLdRfVar var_128
  loc_6A6B26: FLdRfVar var_118
  loc_6A6B29: FLdRfVar var_14C
  loc_6A6B2C: ImpAdCallFPR4  = Format(, )
  loc_6A6B31: FLdRfVar var_14C
  loc_6A6B34: CStrVarTmp
  loc_6A6B35: FStStr var_AC
  loc_6A6B38: FFree1Str var_108
  loc_6A6B3B: FFreeVar var_C4 = "": var_F4 = "": var_104 = "": var_118 = "": var_128 = ""
  loc_6A6B4A: LitStr ";"
  loc_6A6B4D: FStStrCopy var_12C
  loc_6A6B50: FLdRfVar var_12C
  loc_6A6B53: LitStr "."
  loc_6A6B56: FStStrCopy var_108
  loc_6A6B59: FLdRfVar var_108
  loc_6A6B5C: FLdRfVar var_AC
  loc_6A6B5F: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_6A6B64: FStStr var_AC
  loc_6A6B67: FFreeStr var_108 = ""
  loc_6A6B6E: LitStr "."
  loc_6A6B71: FStStrCopy var_12C
  loc_6A6B74: FLdRfVar var_12C
  loc_6A6B77: LitStr ","
  loc_6A6B7A: FStStrCopy var_108
  loc_6A6B7D: FLdRfVar var_108
  loc_6A6B80: FLdRfVar var_AC
  loc_6A6B83: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_6A6B88: FStStr var_AC
  loc_6A6B8B: FFreeStr var_108 = ""
  loc_6A6B92: LitStr ","
  loc_6A6B95: FStStrCopy var_12C
  loc_6A6B98: FLdRfVar var_12C
  loc_6A6B9B: LitStr ";"
  loc_6A6B9E: FStStrCopy var_108
  loc_6A6BA1: FLdRfVar var_108
  loc_6A6BA4: FLdRfVar var_AC
  loc_6A6BA7: ImpAdCallI2 Proc_87_4_5F7240(, , )
  loc_6A6BAC: FStStr var_AC
  loc_6A6BAF: FFreeStr var_108 = ""
  loc_6A6BB6: FLdI2 var_86
  loc_6A6BB9: LitI2_Byte &HC
  loc_6A6BBB: AddI2
  loc_6A6BBC: FStI2 var_86
  loc_6A6BBF: LitVar_Missing var_17C
  loc_6A6BC2: PopAdLdVar
  loc_6A6BC3: LitI4 4
  loc_6A6BC8: FLdRfVar var_C4
  loc_6A6BCB: ImpAdCallFPR4  = Space()
  loc_6A6BD0: FLdRfVar var_C4
  loc_6A6BD3: ILdRf var_A4
  loc_6A6BD6: CVarStr var_D4
  loc_6A6BD9: ConcatVar var_F4
  loc_6A6BDD: LitI4 &HA
  loc_6A6BE2: FLdRfVar var_104
  loc_6A6BE5: ImpAdCallFPR4  = Space()
  loc_6A6BEA: FLdRfVar var_104
  loc_6A6BED: ConcatVar var_118
  loc_6A6BF1: ILdRf var_AC
  loc_6A6BF4: CVarStr var_E4
  loc_6A6BF7: ConcatVar var_128
  loc_6A6BFB: LitI4 &HD
  loc_6A6C00: FLdRfVar var_14C
  loc_6A6C03: ImpAdCallFPR4  = Space()
  loc_6A6C08: FLdRfVar var_14C
  loc_6A6C0B: ConcatVar var_15C
  loc_6A6C0F: ILdRf var_A8
  loc_6A6C12: CVarStr var_13C
  loc_6A6C15: ConcatVar var_16C
  loc_6A6C19: CStrVarVal var_108
  loc_6A6C1D: FLdPrThis
  loc_6A6C1E: VCallAd Control_ID_lstListado
  loc_6A6C21: FStAdFunc var_B0
  loc_6A6C24: FLdPr var_B0
  loc_6A6C27: Me.AddItem from_stack_1, from_stack_2
  loc_6A6C2C: FFree1Str var_108
  loc_6A6C2F: FFree1Ad var_B0
  loc_6A6C32: FFreeVar var_C4 = "": var_F4 = "": var_104 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_6A6C45: Branch loc_6A6965
  loc_6A6C48: ExitProcHresult
  loc_6A6C49: AryDescTemp 395
End Sub

Public Function TipoReporteGet() '412054
  TipoReporteGet = TipoReporte
End Function

Public Sub TipoReportePut(Value) '412063
  TipoReporte = Value
End Sub

Public Function DesdehastaGet() '412072
  DesdehastaGet = Desdehasta
End Function

Public Sub DesdehastaPut(Value) '412081
  Desdehasta = Value
End Sub
