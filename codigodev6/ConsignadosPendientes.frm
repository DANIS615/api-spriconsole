VERSION 5.00
Begin VB.Form ConsignadosPendientes
  Caption = "Productos pendientes de Consignación"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6210
  ClientHeight = 6075
  StartUpPosition = 1 'CenterOwner
  Begin VB.CommandButton quitar
    Caption = "&Quitar"
    Left = 4680
    Top = 5400
    Width = 1300
    Height = 550
    TabIndex = 13
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
  Begin VB.Frame Frame2
    Left = 360
    Top = 0
    Width = 5415
    Height = 735
    TabIndex = 14
    Begin VB.Label Label3
      Caption = "ALTA DE PRODUCTO CONSIGNADO"
      Left = 120
      Top = 240
      Width = 5055
      Height = 375
      TabIndex = 15
      Alignment = 2 'Center
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
  End
  Begin VB.CommandButton Agregar
    Caption = "A&gregar"
    Left = 240
    Top = 5400
    Width = 1300
    Height = 550
    TabIndex = 10
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
  Begin VB.CommandButton Cancelar
    Caption = "&Cancelar"
    Left = 3240
    Top = 5400
    Width = 1300
    Height = 550
    TabIndex = 12
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
  Begin VB.CommandButton Aceptar
    Caption = "&Aceptar"
    Left = 1680
    Top = 5400
    Width = 1300
    Height = 550
    TabIndex = 11
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
  Begin VB.Frame Frame1
    Caption = "            "
    Left = 360
    Top = 600
    Width = 5415
    Height = 4575
    TabIndex = 16
    Begin VB.Label Producto
      Caption = "      "
      Index = 9
      BackColor = &H80000005&
      Left = 360
      Top = 3600
      Width = 4005
      Height = 270
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Caption = "      "
      Index = 8
      BackColor = &H80000005&
      Left = 360
      Top = 3240
      Width = 4005
      Height = 270
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Caption = "      "
      Index = 7
      BackColor = &H80000005&
      Left = 360
      Top = 2880
      Width = 4005
      Height = 270
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Caption = "      "
      Index = 6
      BackColor = &H80000005&
      Left = 360
      Top = 2520
      Width = 4005
      Height = 270
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 5
      BackColor = &H80000005&
      Left = 360
      Top = 2160
      Width = 4005
      Height = 270
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 4
      BackColor = &H80000005&
      Left = 360
      Top = 1800
      Width = 4005
      Height = 270
      TabIndex = 3
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 3
      BackColor = &H80000005&
      Left = 360
      Top = 1440
      Width = 4005
      Height = 270
      TabIndex = 2
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 2
      BackColor = &H80000005&
      Left = 360
      Top = 1080
      Width = 4005
      Height = 270
      TabIndex = 1
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 1
      BackColor = &H80000005&
      Left = 360
      Top = 720
      Width = 4005
      Height = 270
      TabIndex = 0
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Producto
      Index = 10
      BackColor = &H80000005&
      Left = 360
      Top = 3960
      Width = 4005
      Height = 270
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label1
      Caption = "Producto"
      Left = 1920
      Top = 240
      Width = 1455
      Height = 375
      TabIndex = 17
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
  End
End

Attribute VB_Name = "ConsignadosPendientes"

Public Alta_Consignado As Boolean


Private Sub Form_Load() '5CFA0C
  'Data Table: 41B454
  loc_5CF9F4: LitI2_Byte 1
  loc_5CF9F6: FLdPr Me
  loc_5CF9F9: MemStI2 global_62
  loc_5CF9FC: LitI2_Byte 1
  loc_5CF9FE: PopTmpLdAd2 var_86
  loc_5CFA01: Call Producto_Click(from_stack_1v)
  loc_5CFA06: ImpAdCallFPR4 Proc_101_14_6180C4()
  loc_5CFA0B: ExitProcHresult
End Sub

Private Sub Form_Activate() '5C9148
  'Data Table: 41B454
  loc_5C9140: from_stack_1v = Proc_111_13_616BA4()
  loc_5C9145: ExitProcHresult
End Sub

Private Sub quitar_Click() '635AAC
  'Data Table: 41B454
  loc_6358CC: LitI2_Byte &H5C
  loc_6358CE: PopTmpLdAd2 var_92
  loc_6358D1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6358D6: NotI4
  loc_6358D7: BranchF loc_6358DB
  loc_6358DA: ExitProcHresult
  loc_6358DB: LitStr vbNullString
  loc_6358DE: FStStrCopy var_88
  loc_6358E1: FLdPr Me
  loc_6358E4: MemLdI2 Alta_Consignado
  loc_6358E7: BranchF loc_635987
  loc_6358EA: FLdRfVar var_A4
  loc_6358ED: ImpAdCallFPR4  = Date
  loc_6358F2: LitI4 1
  loc_6358F7: LitI4 1
  loc_6358FC: LitVarStr var_E4, "yyyymmdd"
  loc_635901: FStVarCopyObj var_F4
  loc_635904: FLdRfVar var_F4
  loc_635907: FLdRfVar var_A4
  loc_63590A: LitVarI2 var_B4, 1
  loc_63590F: SubVar var_C4
  loc_635913: FStVar var_D4
  loc_635917: FLdRfVar var_D4
  loc_63591A: FLdRfVar var_104
  loc_63591D: ImpAdCallFPR4  = Format(, )
  loc_635922: FLdRfVar var_104
  loc_635925: FnCStrVar
  loc_635927: FStStr var_8C
  loc_63592A: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_104 = ""
  loc_635937: FLdRfVar var_A4
  loc_63593A: ImpAdCallFPR4  = Date
  loc_63593F: LitI4 1
  loc_635944: LitI4 1
  loc_635949: LitVarStr var_E4, "yyyymmdd"
  loc_63594E: FStVarCopyObj var_F4
  loc_635951: FLdRfVar var_F4
  loc_635954: FLdRfVar var_A4
  loc_635957: LitVarI2 var_B4, 2
  loc_63595C: SubVar var_C4
  loc_635960: FStVar var_D4
  loc_635964: FLdRfVar var_D4
  loc_635967: FLdRfVar var_104
  loc_63596A: ImpAdCallFPR4  = Format(, )
  loc_63596F: FLdRfVar var_104
  loc_635972: FnCStrVar
  loc_635974: FStStr var_90
  loc_635977: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_104 = ""
  loc_635984: Branch loc_6359DA
  loc_635987: LitStr "20790606"
  loc_63598A: FStStrCopy var_8C
  loc_63598D: FLdRfVar var_A4
  loc_635990: ImpAdCallFPR4  = Date
  loc_635995: LitI4 1
  loc_63599A: LitI4 1
  loc_63599F: LitVarStr var_E4, "yyyymmdd"
  loc_6359A4: FStVarCopyObj var_F4
  loc_6359A7: FLdRfVar var_F4
  loc_6359AA: FLdRfVar var_A4
  loc_6359AD: LitVarI2 var_B4, 2
  loc_6359B2: SubVar var_C4
  loc_6359B6: FStVar var_D4
  loc_6359BA: FLdRfVar var_D4
  loc_6359BD: FLdRfVar var_104
  loc_6359C0: ImpAdCallFPR4  = Format(, )
  loc_6359C5: FLdRfVar var_104
  loc_6359C8: FnCStrVar
  loc_6359CA: FStStr var_90
  loc_6359CD: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_104 = ""
  loc_6359DA: ILdRf var_88
  loc_6359DD: FLdRfVar var_92
  loc_6359E0: FLdRfVar var_110
  loc_6359E3: FLdRfVar var_10C
  loc_6359E6: FLdPr Me
  loc_6359E9: MemLdI2 global_62
  loc_6359EC: FLdPrThis
  loc_6359ED: VCallAd Control_ID_Producto
  loc_6359F0: FStAdFunc var_108
  loc_6359F3: FLdPr var_108
  loc_6359F6: Set from_stack_2 = Me(from_stack_1)
  loc_6359FB: FLdPr var_10C
  loc_6359FE:  = Me.Caption
  loc_635A03: ILdRf var_110
  loc_635A06: ImpAdLdRf MemVar_74A220
  loc_635A09: NewIfNullPr clsProducts
  loc_635A11: FLdI2 var_92
  loc_635A14: CI4UI1
  loc_635A15: FLdRfVar var_A4
  loc_635A18: ImpAdCallFPR4  = Chr()
  loc_635A1D: FLdRfVar var_A4
  loc_635A20: FnCStrVar
  loc_635A22: FStStrNoPop var_114
  loc_635A25: ConcatStr
  loc_635A26: FStStr var_88
  loc_635A29: FFreeStr var_110 = ""
  loc_635A30: FFreeAd var_108 = ""
  loc_635A37: FFreeVar var_A4 = ""
  loc_635A3E: ILdRf var_88
  loc_635A41: ILdRf var_90
  loc_635A44: ConcatStr
  loc_635A45: FStStr var_88
  loc_635A48: ILdRf var_88
  loc_635A4B: ILdRf var_8C
  loc_635A4E: ConcatStr
  loc_635A4F: FStStr var_88
  loc_635A52: FLdRfVar var_92
  loc_635A55: FLdRfVar var_88
  loc_635A58: FLdRfVar var_108
  loc_635A5B: ImpAdLdRf MemVar_74C760
  loc_635A5E: NewIfNullPr Formx
  loc_635A61: from_stack_1v = Formx.global_4589716Get()
  loc_635A66: FLdPr var_108
  loc_635A69: Formx.TextHeight from_stack_1
  loc_635A6E: FLdI2 var_92
  loc_635A71: NotI4
  loc_635A72: FFree1Ad var_108
  loc_635A75: BranchF loc_635AA4
  loc_635A78: FLdRfVar var_A4
  loc_635A7B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_635A80: FLdRfVar var_A4
  loc_635A83: CBoolVarNull
  loc_635A85: FFree1Var var_A4 = ""
  loc_635A88: BranchF loc_635AA1
  loc_635A8B: ILdRf Me
  loc_635A8E: FStAdNoPop
  loc_635A92: ImpAdLdRf MemVar_7520D4
  loc_635A95: NewIfNullPr Global
  loc_635A98: Global.Unload from_stack_1
  loc_635A9D: FFree1Ad var_108
  loc_635AA0: ExitProcHresult
  loc_635AA1: Branch loc_635A52
  loc_635AA4: from_stack_1v = Proc_111_13_616BA4()
  loc_635AA9: ExitProcHresult
End Sub

Private Sub Agregar_Click() '5E8398
  'Data Table: 41B454
  loc_5E8328: LitI2_Byte &H5B
  loc_5E832A: PopTmpLdAd2 var_86
  loc_5E832D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E8332: NotI4
  loc_5E8333: BranchF loc_5E8337
  loc_5E8336: ExitProcHresult
  loc_5E8337: FLdPr Me
  loc_5E833A: MemLdI2 global_60
  loc_5E833D: LitI2_Byte &HA
  loc_5E833F: LtI2
  loc_5E8340: BranchF loc_5E835E
  loc_5E8343: LitVar_Missing var_A8
  loc_5E8346: PopAdLdVar
  loc_5E8347: LitVarI4
  loc_5E834F: PopAdLdVar
  loc_5E8350: ImpAdLdRf MemVar_74DE44
  loc_5E8353: NewIfNullPr frmConsignados
  loc_5E8356: frmConsignados.Show from_stack_1, from_stack_2
  loc_5E835B: Branch loc_5E8394
  loc_5E835E: LitVar_Missing var_FC
  loc_5E8361: LitVar_Missing var_DC
  loc_5E8364: LitVar_Missing var_CC
  loc_5E8367: LitI4 &H10
  loc_5E836C: LitStr "No se pueden dar de "
  loc_5E836F: FLdPr Me
  loc_5E8372: MemLdStr global_80
  loc_5E8375: ConcatStr
  loc_5E8376: FStStrNoPop var_AC
  loc_5E8379: LitStr " mas productos"
  loc_5E837C: ConcatStr
  loc_5E837D: CVarStr var_BC
  loc_5E8380: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5E8385: FFree1Str var_AC
  loc_5E8388: FFreeVar var_BC = "": var_CC = "": var_DC = ""
  loc_5E8393: ExitProcHresult
  loc_5E8394: ExitProcHresult
End Sub

Private Sub Aceptar_Click() '667308
  'Data Table: 41B454
  loc_666FA4: LitI2_Byte 1
  loc_666FA6: FLdRfVar var_AA
  loc_666FA9: LitI2_Byte &HA
  loc_666FAB: ForI2 var_AE
  loc_666FB1: LitStr vbNullString
  loc_666FB4: FLdI2 var_AA
  loc_666FB7: CI4UI1
  loc_666FB8: FLdRfVar var_A4
  loc_666FBB: Ary1StStrCopy
  loc_666FBC: FLdRfVar var_AA
  loc_666FBF: NextI2 var_AE, loc_666FB1
  loc_666FC4: LitI2_Byte 1
  loc_666FC6: FStI2 var_AA
  loc_666FC9: LitStr vbNullString
  loc_666FCC: FStStrCopy var_8C
  loc_666FCF: LitI2_Byte 1
  loc_666FD1: FLdRfVar var_86
  loc_666FD4: LitI2_Byte &HA
  loc_666FD6: ForI2 var_B2
  loc_666FDC: FLdRfVar var_BE
  loc_666FDF: FLdRfVar var_BC
  loc_666FE2: FLdI2 var_86
  loc_666FE5: FLdPrThis
  loc_666FE6: VCallAd Control_ID_Producto
  loc_666FE9: FStAdFunc var_B8
  loc_666FEC: FLdPr var_B8
  loc_666FEF: Set from_stack_2 = Me(from_stack_1)
  loc_666FF4: FLdPr var_BC
  loc_666FF7:  = Me.Visible
  loc_666FFC: FLdI2 var_BE
  loc_666FFF: FFreeAd var_B8 = ""
  loc_667006: BranchF loc_6670A6
  loc_667009: FLdRfVar var_C4
  loc_66700C: FLdRfVar var_BC
  loc_66700F: FLdI2 var_86
  loc_667012: FLdPrThis
  loc_667013: VCallAd Control_ID_Producto
  loc_667016: FStAdFunc var_B8
  loc_667019: FLdPr var_B8
  loc_66701C: Set from_stack_2 = Me(from_stack_1)
  loc_667021: FLdPr var_BC
  loc_667024:  = Me.Caption
  loc_667029: ILdRf var_C4
  loc_66702C: FLdI2 var_AA
  loc_66702F: CI4UI1
  loc_667030: FLdRfVar var_A4
  loc_667033: Ary1StStrCopy
  loc_667034: FFree1Str var_C4
  loc_667037: FFreeAd var_B8 = ""
  loc_66703E: ILdRf var_8C
  loc_667041: CVarStr var_E4
  loc_667044: FLdRfVar var_BE
  loc_667047: FLdRfVar var_C4
  loc_66704A: FLdRfVar var_BC
  loc_66704D: FLdI2 var_86
  loc_667050: FLdPrThis
  loc_667051: VCallAd Control_ID_Producto
  loc_667054: FStAdFunc var_B8
  loc_667057: FLdPr var_B8
  loc_66705A: Set from_stack_2 = Me(from_stack_1)
  loc_66705F: FLdPr var_BC
  loc_667062:  = Me.Caption
  loc_667067: ILdRf var_C4
  loc_66706A: ImpAdLdRf MemVar_74A220
  loc_66706D: NewIfNullPr clsProducts
  loc_667075: FLdI2 var_BE
  loc_667078: CI4UI1
  loc_667079: FLdRfVar var_D4
  loc_66707C: ImpAdCallFPR4  = Chr()
  loc_667081: FLdRfVar var_D4
  loc_667084: ConcatVar var_F4
  loc_667088: CStrVarTmp
  loc_667089: FStStr var_8C
  loc_66708C: FFree1Str var_C4
  loc_66708F: FFreeAd var_B8 = ""
  loc_667096: FFreeVar var_D4 = ""
  loc_66709D: FLdI2 var_AA
  loc_6670A0: LitI2_Byte 1
  loc_6670A2: AddI2
  loc_6670A3: FStI2 var_AA
  loc_6670A6: FLdRfVar var_86
  loc_6670A9: NextI2 var_B2, loc_666FDC
  loc_6670AE: FLdI2 var_AA
  loc_6670B1: LitI2_Byte 1
  loc_6670B3: SubI2
  loc_6670B4: FStI2 var_AA
  loc_6670B7: FLdI2 var_AA
  loc_6670BA: LitI2_Byte 1
  loc_6670BC: GtI2
  loc_6670BD: BranchF loc_667116
  loc_6670C0: LitVarStr var_E4, "Se pasaran a "
  loc_6670C5: FLdPr Me
  loc_6670C8: MemLdRfVar from_stack_1.global_64
  loc_6670CB: ConcatVar var_D4
  loc_6670CF: LitVarStr var_104, " consignado los siguientes productos:"
  loc_6670D4: ConcatVar var_F4
  loc_6670D8: LitI4 &HD
  loc_6670DD: FLdRfVar var_114
  loc_6670E0: ImpAdCallFPR4  = Chr()
  loc_6670E5: FLdRfVar var_114
  loc_6670E8: ConcatVar var_124
  loc_6670EC: LitI4 &HD
  loc_6670F1: FLdRfVar var_134
  loc_6670F4: ImpAdCallFPR4  = Chr()
  loc_6670F9: FLdRfVar var_134
  loc_6670FC: ConcatVar var_144
  loc_667100: CStrVarTmp
  loc_667101: FStStr var_A8
  loc_667104: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_667113: Branch loc_6671B8
  loc_667116: FLdI2 var_AA
  loc_667119: LitI2_Byte 1
  loc_66711B: EqI2
  loc_66711C: BranchF loc_667175
  loc_66711F: LitVarStr var_E4, "Se pasara a "
  loc_667124: FLdPr Me
  loc_667127: MemLdRfVar from_stack_1.global_64
  loc_66712A: ConcatVar var_D4
  loc_66712E: LitVarStr var_104, " consignado el siguiente producto:"
  loc_667133: ConcatVar var_F4
  loc_667137: LitI4 &HD
  loc_66713C: FLdRfVar var_114
  loc_66713F: ImpAdCallFPR4  = Chr()
  loc_667144: FLdRfVar var_114
  loc_667147: ConcatVar var_124
  loc_66714B: LitI4 &HD
  loc_667150: FLdRfVar var_134
  loc_667153: ImpAdCallFPR4  = Chr()
  loc_667158: FLdRfVar var_134
  loc_66715B: ConcatVar var_144
  loc_66715F: CStrVarTmp
  loc_667160: FStStr var_A8
  loc_667163: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_667172: Branch loc_6671B8
  loc_667175: LitVar_Missing var_134
  loc_667178: LitVar_Missing var_124
  loc_66717B: FLdPr Me
  loc_66717E: MemLdStr global_80
  loc_667181: LitStr " de Consignado"
  loc_667184: ConcatStr
  loc_667185: CVarStr var_114
  loc_667188: LitI4 &H40
  loc_66718D: LitVarStr var_E4, "No se pasará ningún producto a "
  loc_667192: FLdPr Me
  loc_667195: MemLdRfVar from_stack_1.global_64
  loc_667198: ConcatVar var_D4
  loc_66719C: LitVarStr var_104, " consignado"
  loc_6671A1: ConcatVar var_F4
  loc_6671A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6671AA: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_124 = ""
  loc_6671B7: ExitProcHresult
  loc_6671B8: LitI2_Byte 1
  loc_6671BA: FLdRfVar var_86
  loc_6671BD: FLdI2 var_AA
  loc_6671C0: ForI2 var_168
  loc_6671C6: ILdRf var_A8
  loc_6671C9: CVarStr var_E4
  loc_6671CC: LitI4 8
  loc_6671D1: FLdRfVar var_D4
  loc_6671D4: ImpAdCallFPR4  = Space()
  loc_6671D9: FLdRfVar var_D4
  loc_6671DC: ConcatVar var_F4
  loc_6671E0: FLdI2 var_86
  loc_6671E3: CI4UI1
  loc_6671E4: FLdRfVar var_A4
  loc_6671E7: Ary1LdI4
  loc_6671E8: CVarStr var_104
  loc_6671EB: ConcatVar var_114
  loc_6671EF: LitI4 &HD
  loc_6671F4: FLdRfVar var_124
  loc_6671F7: ImpAdCallFPR4  = Chr()
  loc_6671FC: FLdRfVar var_124
  loc_6671FF: ConcatVar var_134
  loc_667203: CStrVarTmp
  loc_667204: FStStr var_A8
  loc_667207: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_124 = ""
  loc_667214: FLdRfVar var_86
  loc_667217: NextI2 var_168, loc_6671C6
  loc_66721C: ILdRf var_A8
  loc_66721F: CVarStr var_E4
  loc_667222: LitI4 &HD
  loc_667227: FLdRfVar var_D4
  loc_66722A: ImpAdCallFPR4  = Chr()
  loc_66722F: FLdRfVar var_D4
  loc_667232: ConcatVar var_F4
  loc_667236: LitVarStr var_104, "¿Esta de acuerdo?"
  loc_66723B: ConcatVar var_114
  loc_66723F: CStrVarTmp
  loc_667240: FStStr var_A8
  loc_667243: FFreeVar var_D4 = "": var_F4 = ""
  loc_66724C: LitVar_Missing var_114
  loc_66724F: LitVar_Missing var_F4
  loc_667252: FLdPr Me
  loc_667255: MemLdStr global_80
  loc_667258: LitStr " de Consignado"
  loc_66725B: ConcatStr
  loc_66725C: CVarStr var_D4
  loc_66725F: LitI4 &H41
  loc_667264: FLdRfVar var_A8
  loc_667267: CVarRef
  loc_66726C: ImpAdCallI2 MsgBox(, , , , )
  loc_667271: LitI4 1
  loc_667276: EqI4
  loc_667277: FFreeVar var_D4 = "": var_F4 = ""
  loc_667280: BranchF loc_667305
  loc_667283: FLdRfVar var_BE
  loc_667286: ImpAdLdRf MemVar_74E114
  loc_667289: NewIfNullPr ConsignadosPendientes
  loc_66728C: from_stack_1v = ConsignadosPendientes.Alta_ConsignadoGet()
  loc_667291: FLdI2 var_BE
  loc_667294: BranchF loc_6672A4
  loc_667297: LitStr "1"
  loc_66729A: ILdRf var_8C
  loc_66729D: ConcatStr
  loc_66729E: FStStr var_8C
  loc_6672A1: Branch loc_6672AE
  loc_6672A4: LitStr "0"
  loc_6672A7: ILdRf var_8C
  loc_6672AA: ConcatStr
  loc_6672AB: FStStr var_8C
  loc_6672AE: FLdRfVar var_BE
  loc_6672B1: FLdRfVar var_8C
  loc_6672B4: FLdRfVar var_B8
  loc_6672B7: ImpAdLdRf MemVar_74C760
  loc_6672BA: NewIfNullPr Formx
  loc_6672BD: from_stack_1v = Formx.global_4589716Get()
  loc_6672C2: FLdPr var_B8
  loc_6672C5: Formx.ValidateControls
  loc_6672CA: FLdI2 var_BE
  loc_6672CD: NotI4
  loc_6672CE: FFree1Ad var_B8
  loc_6672D1: BranchF loc_667300
  loc_6672D4: FLdRfVar var_D4
  loc_6672D7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6672DC: FLdRfVar var_D4
  loc_6672DF: CBoolVarNull
  loc_6672E1: FFree1Var var_D4 = ""
  loc_6672E4: BranchF loc_6672FD
  loc_6672E7: ILdRf Me
  loc_6672EA: FStAdNoPop
  loc_6672EE: ImpAdLdRf MemVar_7520D4
  loc_6672F1: NewIfNullPr Global
  loc_6672F4: Global.Unload from_stack_1
  loc_6672F9: FFree1Ad var_B8
  loc_6672FC: ExitProcHresult
  loc_6672FD: Branch loc_6672AE
  loc_667300: from_stack_1v = Proc_111_13_616BA4()
  loc_667305: ExitProcHresult
End Sub

Private Sub Cancelar_Click() '5D0ECC
  'Data Table: 41B454
  loc_5D0EB4: ILdRf Me
  loc_5D0EB7: FStAdNoPop
  loc_5D0EBB: ImpAdLdRf MemVar_7520D4
  loc_5D0EBE: NewIfNullPr Global
  loc_5D0EC1: Global.Unload from_stack_1
  loc_5D0EC6: FFree1Ad var_88
  loc_5D0EC9: ExitProcHresult
End Sub

Private Sub Producto_Click(arg_C) '5E2E2C
  'Data Table: 41B454
  loc_5E2DCC: LitI4 &HFFFFFF
  loc_5E2DD1: FLdRfVar var_8C
  loc_5E2DD4: FLdPr Me
  loc_5E2DD7: MemLdI2 global_62
  loc_5E2DDA: FLdPrThis
  loc_5E2DDB: VCallAd Control_ID_Producto
  loc_5E2DDE: FStAdFunc var_88
  loc_5E2DE1: FLdPr var_88
  loc_5E2DE4: Set from_stack_2 = Me(from_stack_1)
  loc_5E2DE9: FLdPr var_8C
  loc_5E2DEC: Me.BackColor = from_stack_1
  loc_5E2DF1: FFreeAd var_88 = ""
  loc_5E2DF8: ILdI2 arg_C
  loc_5E2DFB: FLdPr Me
  loc_5E2DFE: MemStI2 global_62
  loc_5E2E01: LitI4 &HFFC0C0
  loc_5E2E06: FLdRfVar var_8C
  loc_5E2E09: ILdI2 arg_C
  loc_5E2E0C: FLdPrThis
  loc_5E2E0D: VCallAd Control_ID_Producto
  loc_5E2E10: FStAdFunc var_88
  loc_5E2E13: FLdPr var_88
  loc_5E2E16: Set from_stack_2 = Me(from_stack_1)
  loc_5E2E1B: FLdPr var_8C
  loc_5E2E1E: Me.BackColor = from_stack_1
  loc_5E2E23: FFreeAd var_88 = ""
  loc_5E2E2A: ExitProcHresult
End Sub

Public Function Alta_ConsignadoGet() '41BAA4
  Alta_ConsignadoGet = Alta_Consignado
End Function

Public Sub Alta_ConsignadoPut(Value) '41BAB3
  Alta_Consignado = Value
End Sub

Public Function SetFechaConsig(sValor) '5CFFA8
  'Data Table: 41B454
  loc_5CFF94: ZeroRetValVar
  loc_5CFF96: ILdI4 sValor
  loc_5CFF99: FLdPr Me
  loc_5CFF9C: MemStStrCopy
  loc_5CFFA0: ExitProcCbHresult
End Function

Public Function GetAltaConsig() '5CC634
  'Data Table: 41B454
  loc_5CC624: FLdPr Me
  loc_5CC627: MemLdI2 Alta_Consignado
  loc_5CC62A: FStI2 var_86
  loc_5CC62D: ExitProcCbHresult
End Function

Public Function SetAltaConsig(sValor) '5CFB28
  'Data Table: 41B454
  loc_5CFB14: ZeroRetValVar
  loc_5CFB16: ILdI2 sValor
  loc_5CFB19: FLdPr Me
  loc_5CFB1C: MemStI2 Alta_Consignado
  loc_5CFB1F: ExitProcCbHresult
End Function

Public Function MostrarProd() '616774
  'Data Table: 41B454
  loc_616650: ImpAdCallFPR4 Proc_101_14_6180C4()
  loc_616655: FLdRfVar var_92
  loc_616658: ImpAdLdRf MemVar_74E114
  loc_61665B: NewIfNullPr ConsignadosPendientes
  loc_61665E: from_stack_1v = ConsignadosPendientes.Alta_ConsignadoGet()
  loc_616663: FLdI2 var_92
  loc_616666: BranchF loc_616672
  loc_616669: LitStr "1"
  loc_61666C: FStStrCopy var_90
  loc_61666F: Branch loc_616678
  loc_616672: LitStr "3"
  loc_616675: FStStrCopy var_90
  loc_616678: LitI2_Byte 1
  loc_61667A: FStI2 var_8A
  loc_61667D: LitI2_Byte 0
  loc_61667F: FStI2 var_86
  loc_616682: LitI2_Byte 1
  loc_616684: FLdRfVar var_88
  loc_616687: FLdRfVar var_92
  loc_61668A: ImpAdLdRf MemVar_74A220
  loc_61668D: NewIfNullPr clsProducts
  loc_616690: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_616695: FLdI2 var_92
  loc_616698: ForI2 var_96
  loc_61669E: FLdI2 var_88
  loc_6166A1: CI4UI1
  loc_6166A2: ImpAdLdRf MemVar_74BF94
  loc_6166A5: Ary1LdI4
  loc_6166A6: ILdRf var_90
  loc_6166A9: EqStr
  loc_6166AB: BranchF loc_61671D
  loc_6166AE: FLdRfVar var_9C
  loc_6166B1: FLdI2 var_88
  loc_6166B4: ImpAdLdRf MemVar_74A220
  loc_6166B7: NewIfNullPr clsProducts
  loc_6166BF: ILdRf var_9C
  loc_6166C2: FLdRfVar var_A4
  loc_6166C5: FLdI2 var_8A
  loc_6166C8: FLdPrThis
  loc_6166C9: VCallAd Control_ID_Producto
  loc_6166CC: FStAdFunc var_A0
  loc_6166CF: FLdPr var_A0
  loc_6166D2: Set from_stack_2 = Me(from_stack_1)
  loc_6166D7: FLdPr var_A4
  loc_6166DA: Me.Caption = from_stack_1
  loc_6166DF: FFree1Str var_9C
  loc_6166E2: FFreeAd var_A0 = ""
  loc_6166E9: LitI2_Byte &HFF
  loc_6166EB: FLdRfVar var_A4
  loc_6166EE: FLdI2 var_8A
  loc_6166F1: FLdPrThis
  loc_6166F2: VCallAd Control_ID_Producto
  loc_6166F5: FStAdFunc var_A0
  loc_6166F8: FLdPr var_A0
  loc_6166FB: Set from_stack_2 = Me(from_stack_1)
  loc_616700: FLdPr var_A4
  loc_616703: Me.Visible = from_stack_1b
  loc_616708: FFreeAd var_A0 = ""
  loc_61670F: FLdI2 var_8A
  loc_616712: LitI2_Byte 1
  loc_616714: AddI2
  loc_616715: FStI2 var_8A
  loc_616718: LitI2_Byte &HFF
  loc_61671A: FStI2 var_86
  loc_61671D: FLdRfVar var_88
  loc_616720: NextI2 var_96, loc_61669E
  loc_616725: FLdI2 var_8A
  loc_616728: LitI2_Byte 1
  loc_61672A: SubI2
  loc_61672B: FLdPr Me
  loc_61672E: MemStI2 global_60
  loc_616731: FLdI2 var_8A
  loc_616734: FLdRfVar var_88
  loc_616737: LitI2_Byte &HA
  loc_616739: ForI2 var_A8
  loc_61673F: LitI2_Byte 0
  loc_616741: FLdRfVar var_A4
  loc_616744: FLdI2 var_88
  loc_616747: FLdPrThis
  loc_616748: VCallAd Control_ID_Producto
  loc_61674B: FStAdFunc var_A0
  loc_61674E: FLdPr var_A0
  loc_616751: Set from_stack_2 = Me(from_stack_1)
  loc_616756: FLdPr var_A4
  loc_616759: Me.Visible = from_stack_1b
  loc_61675E: FFreeAd var_A0 = ""
  loc_616765: FLdRfVar var_88
  loc_616768: NextI2 var_A8, loc_61673F
  loc_61676D: ExitProcCbHresult
End Function

Private Function Proc_111_13_616BA4() '616BA4
  'Data Table: 41B454
  loc_616A7C: FLdRfVar var_86
  loc_616A7F: ImpAdLdRf MemVar_74E114
  loc_616A82: NewIfNullPr ConsignadosPendientes
  loc_616A85: from_stack_1v = ConsignadosPendientes.Alta_ConsignadoGet()
  loc_616A8A: FLdI2 var_86
  loc_616A8D: BranchF loc_616AA9
  loc_616A90: LitVarStr var_98, vbNullString
  loc_616A95: FLdPr Me
  loc_616A98: MemStVarCopy
  loc_616A9C: LitStr "alta"
  loc_616A9F: FLdPr Me
  loc_616AA2: MemStStrCopy
  loc_616AA6: Branch loc_616ABF
  loc_616AA9: LitVarStr var_98, "no"
  loc_616AAE: FLdPr Me
  loc_616AB1: MemStVarCopy
  loc_616AB5: LitStr "baja"
  loc_616AB8: FLdPr Me
  loc_616ABB: MemStStrCopy
  loc_616ABF: LitStr "Productos pendientes de "
  loc_616AC2: FLdPr Me
  loc_616AC5: MemLdStr global_80
  loc_616AC8: ConcatStr
  loc_616AC9: FStStrNoPop var_9C
  loc_616ACC: FLdPrThis
  loc_616ACD: VCallAd Control_ID_Label3
  loc_616AD0: FStAdFunc var_A0
  loc_616AD3: FLdPr var_A0
  loc_616AD6: ConsignadosPendientes.Label.Caption = from_stack_1
  loc_616ADB: FFree1Str var_9C
  loc_616ADE: FFree1Ad var_A0
  loc_616AE1: FLdRfVar var_9C
  loc_616AE4: FLdPrThis
  loc_616AE5: VCallAd Control_ID_Label3
  loc_616AE8: FStAdFunc var_A0
  loc_616AEB: FLdPr var_A0
  loc_616AEE:  = Me.Caption
  loc_616AF3: ILdRf var_9C
  loc_616AF6: FLdPr Me
  loc_616AF9: Me.Caption = from_stack_1
  loc_616AFE: FFree1Str var_9C
  loc_616B01: FFree1Ad var_A0
  loc_616B04: FLdRfVar var_86
  loc_616B07: from_stack_1v = MostrarProd()
  loc_616B0C: FLdI2 var_86
  loc_616B0F: NotI4
  loc_616B10: BranchF loc_616B3E
  loc_616B13: LitI2_Byte 0
  loc_616B15: FLdPrThis
  loc_616B16: VCallAd Control_ID_quitar
  loc_616B19: FStAdFunc var_A0
  loc_616B1C: FLdPr var_A0
  loc_616B1F: Me.Enabled = from_stack_1b
  loc_616B24: FFree1Ad var_A0
  loc_616B27: LitI2_Byte 0
  loc_616B29: FLdPrThis
  loc_616B2A: VCallAd Control_ID_Aceptar
  loc_616B2D: FStAdFunc var_A0
  loc_616B30: FLdPr var_A0
  loc_616B33: Me.Enabled = from_stack_1b
  loc_616B38: FFree1Ad var_A0
  loc_616B3B: Branch loc_616BA3
  loc_616B3E: FLdRfVar var_86
  loc_616B41: FLdRfVar var_A4
  loc_616B44: FLdPr Me
  loc_616B47: MemLdI2 global_62
  loc_616B4A: FLdPrThis
  loc_616B4B: VCallAd Control_ID_Producto
  loc_616B4E: FStAdFunc var_A0
  loc_616B51: FLdPr var_A0
  loc_616B54: Set from_stack_2 = Me(from_stack_1)
  loc_616B59: FLdPr var_A4
  loc_616B5C:  = Me.Visible
  loc_616B61: FLdI2 var_86
  loc_616B64: LitI2_Byte 0
  loc_616B66: EqI2
  loc_616B67: FFreeAd var_A0 = ""
  loc_616B6E: BranchF loc_616B7B
  loc_616B71: LitI2_Byte 1
  loc_616B73: PopTmpLdAd2 var_86
  loc_616B76: Call Producto_Click(from_stack_1v)
  loc_616B7B: LitI2_Byte &HFF
  loc_616B7D: FLdPrThis
  loc_616B7E: VCallAd Control_ID_quitar
  loc_616B81: FStAdFunc var_A0
  loc_616B84: FLdPr var_A0
  loc_616B87: Me.Enabled = from_stack_1b
  loc_616B8C: FFree1Ad var_A0
  loc_616B8F: LitI2_Byte &HFF
  loc_616B91: FLdPrThis
  loc_616B92: VCallAd Control_ID_Aceptar
  loc_616B95: FStAdFunc var_A0
  loc_616B98: FLdPr var_A0
  loc_616B9B: Me.Enabled = from_stack_1b
  loc_616BA0: FFree1Ad var_A0
  loc_616BA3: ExitProcHresult
End Function
