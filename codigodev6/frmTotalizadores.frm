VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form frmTotalizadores
  Caption = "Totalizadores de Volúmen"
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
  ClientWidth = 8265
  ClientHeight = 4770
  StartUpPosition = 1 'CenterOwner
  Begin VB.CommandButton Command1
    Caption = "&Aceptar"
    Left = 5520
    Top = 360
    Width = 1695
    Height = 495
    TabIndex = 4
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
  Begin VB.CommandButton Aceptar
    Caption = "&Aceptar"
    Left = 1680
    Top = 4080
    Width = 1634
    Height = 555
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
  Begin VB.CommandButton Cancelar
    Caption = "&Cancelar"
    Left = 4920
    Top = 4080
    Width = 1634
    Height = 555
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
  Begin MSFlexGridLib.MSFlexGrid TablaTot
    Left = 240
    Top = 120
    Width = 7455
    Height = 1200
    TabIndex = 0
    OleObjectBlob = "frmTotalizadores.frx":0000
  End
  Begin VB.Label Label1
    Caption = "No hay surtidores en estado ""Defectuoso"""
    Left = 360
    Top = 120
    Width = 4575
    Height = 975
    TabIndex = 3
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

Attribute VB_Name = "frmTotalizadores"


Private Sub Aceptar_Click() '65B984
  'Data Table: 410F64
  loc_65B680: LitStr vbNullString
  loc_65B683: FStStrCopy var_9C
  loc_65B686: LitStr vbNullString
  loc_65B689: FLdPr Me
  loc_65B68C: MemStStrCopy
  loc_65B690: LitI2_Byte 1
  loc_65B692: FLdRfVar var_96
  loc_65B695: FLdPr Me
  loc_65B698: MemLdI2 global_52
  loc_65B69B: ForI2 var_A8
  loc_65B6A1: FLdI2 var_96
  loc_65B6A4: CI4UI1
  loc_65B6A5: CVarI4
  loc_65B6A9: PopAdLdVar
  loc_65B6AA: LitVarI4
  loc_65B6B2: PopAdLdVar
  loc_65B6B3: FLdPrThis
  loc_65B6B4: VCallAd Control_ID_TablaTot
  loc_65B6B7: FStAdFunc var_CC
  loc_65B6BA: FLdPr var_CC
  loc_65B6BD: LateIdCallLdVar
  loc_65B6C7: PopAd
  loc_65B6C9: ImpAdLdRf MemVar_74BED4
  loc_65B6CC: CVarRef
  loc_65B6D1: ImpAdLdRf MemVar_74BED8
  loc_65B6D4: CVarRef
  loc_65B6D9: ImpAdLdI4 MemVar_74BED4
  loc_65B6DC: FnLenStr
  loc_65B6DD: LitI4 &HC
  loc_65B6E2: GtI4
  loc_65B6E3: CVarBoolI2 var_EC
  loc_65B6E7: FLdRfVar var_11C
  loc_65B6EA: ImpAdCallFPR4  = IIf(, , )
  loc_65B6EF: ILdRf var_9C
  loc_65B6F2: CVarStr var_19C
  loc_65B6F5: HardType
  loc_65B6F6: LitVarI2 var_17C, 3
  loc_65B6FB: FLdRfVar var_11C
  loc_65B6FE: FnLenVar var_12C
  loc_65B702: LitVarI2 var_13C, 1
  loc_65B707: AddVar var_14C
  loc_65B70B: CI4Var
  loc_65B70D: FLdRfVar var_DC
  loc_65B710: CStrVarTmp
  loc_65B711: CVarStr var_15C
  loc_65B714: FLdRfVar var_18C
  loc_65B717: ImpAdCallFPR4  = Mid(, , )
  loc_65B71C: FLdRfVar var_18C
  loc_65B71F: NeVarBool
  loc_65B721: FFree1Ad var_CC
  loc_65B724: FFreeVar var_DC = "": var_EC = "": var_11C = "": var_15C = "": var_14C = "": var_17C = ""
  loc_65B735: BranchF loc_65B860
  loc_65B738: FLdI2 var_96
  loc_65B73B: CI4UI1
  loc_65B73C: CVarI4
  loc_65B740: PopAdLdVar
  loc_65B741: LitVarI4
  loc_65B749: PopAdLdVar
  loc_65B74A: FLdPrThis
  loc_65B74B: VCallAd Control_ID_TablaTot
  loc_65B74E: FStAdFunc var_CC
  loc_65B751: FLdPr var_CC
  loc_65B754: LateIdCallLdVar
  loc_65B75E: PopAd
  loc_65B760: ImpAdLdRf MemVar_74BED4
  loc_65B763: CVarRef
  loc_65B768: ImpAdLdRf MemVar_74BED8
  loc_65B76B: CVarRef
  loc_65B770: ImpAdLdI4 MemVar_74BED4
  loc_65B773: FnLenStr
  loc_65B774: LitI4 &HC
  loc_65B779: GtI4
  loc_65B77A: CVarBoolI2 var_EC
  loc_65B77E: FLdRfVar var_11C
  loc_65B781: ImpAdCallFPR4  = IIf(, , )
  loc_65B786: LitVarI2 var_17C, 3
  loc_65B78B: FLdRfVar var_11C
  loc_65B78E: FnLenVar var_12C
  loc_65B792: LitVarI2 var_13C, 1
  loc_65B797: AddVar var_14C
  loc_65B79B: CI4Var
  loc_65B79D: FLdRfVar var_DC
  loc_65B7A0: CStrVarTmp
  loc_65B7A1: CVarStr var_15C
  loc_65B7A4: FLdRfVar var_18C
  loc_65B7A7: ImpAdCallFPR4  = Mid(, , )
  loc_65B7AC: FLdRfVar var_18C
  loc_65B7AF: CStrVarTmp
  loc_65B7B0: FStStr var_9C
  loc_65B7B3: FFree1Ad var_CC
  loc_65B7B6: FFreeVar var_DC = "": var_EC = "": var_11C = "": var_15C = "": var_14C = "": var_17C = ""
  loc_65B7C7: FLdI2 var_96
  loc_65B7CA: CI4UI1
  loc_65B7CB: CVarI4
  loc_65B7CF: PopAdLdVar
  loc_65B7D0: LitVarI4
  loc_65B7D8: PopAdLdVar
  loc_65B7D9: FLdPrThis
  loc_65B7DA: VCallAd Control_ID_TablaTot
  loc_65B7DD: FStAdFunc var_CC
  loc_65B7E0: FLdPr var_CC
  loc_65B7E3: LateIdCallLdVar
  loc_65B7ED: PopAd
  loc_65B7EF: FLdPr Me
  loc_65B7F2: MemLdStr global_56
  loc_65B7F5: LitStr "|"
  loc_65B7F8: ConcatStr
  loc_65B7F9: CVarStr var_15C
  loc_65B7FC: ILdRf var_9C
  loc_65B7FF: CI2Str
  loc_65B801: CI4UI1
  loc_65B802: FLdRfVar var_DC
  loc_65B805: ImpAdCallFPR4  = Chr()
  loc_65B80A: FLdRfVar var_DC
  loc_65B80D: LitI2_Byte 0
  loc_65B80F: PopTmpLdAd2 var_1B8
  loc_65B812: LitI2_Byte &HD
  loc_65B814: PopTmpLdAd2 var_1B6
  loc_65B817: LitI2_Byte 0
  loc_65B819: CStrUI1
  loc_65B81B: PopTmpLdAdStr
  loc_65B81F: FLdRfVar var_11C
  loc_65B822: CStrVarTmp
  loc_65B823: PopTmpLdAdStr
  loc_65B827: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_65B82C: CVarStr var_12C
  loc_65B82F: AddVar var_14C
  loc_65B833: ConcatVar var_17C
  loc_65B837: CStrVarTmp
  loc_65B838: FStStrNoPop var_1BC
  loc_65B83B: FLdPr Me
  loc_65B83E: MemStStrCopy
  loc_65B842: FFreeStr var_1B0 = "": var_1B4 = ""
  loc_65B84B: FFree1Ad var_CC
  loc_65B84E: FFreeVar var_11C = "": var_DC = "": var_12C = "": var_15C = "": var_14C = ""
  loc_65B85D: Branch loc_65B8CC
  loc_65B860: FLdI2 var_96
  loc_65B863: CI4UI1
  loc_65B864: CVarI4
  loc_65B868: PopAdLdVar
  loc_65B869: LitVarI4
  loc_65B871: PopAdLdVar
  loc_65B872: FLdPrThis
  loc_65B873: VCallAd Control_ID_TablaTot
  loc_65B876: FStAdFunc var_CC
  loc_65B879: FLdPr var_CC
  loc_65B87C: LateIdCallLdVar
  loc_65B886: PopAd
  loc_65B888: FLdPr Me
  loc_65B88B: MemLdStr global_56
  loc_65B88E: LitI2_Byte 0
  loc_65B890: PopTmpLdAd2 var_1B8
  loc_65B893: LitI2_Byte &HD
  loc_65B895: PopTmpLdAd2 var_1B6
  loc_65B898: LitI2_Byte 0
  loc_65B89A: CStrUI1
  loc_65B89C: PopTmpLdAdStr
  loc_65B8A0: FLdRfVar var_DC
  loc_65B8A3: CStrVarTmp
  loc_65B8A4: PopTmpLdAdStr
  loc_65B8A8: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_65B8AD: FStStrNoPop var_1BC
  loc_65B8B0: ConcatStr
  loc_65B8B1: FStStrNoPop var_1C0
  loc_65B8B4: FLdPr Me
  loc_65B8B7: MemStStrCopy
  loc_65B8BB: FFreeStr var_1B0 = "": var_1B4 = "": var_1BC = ""
  loc_65B8C6: FFree1Ad var_CC
  loc_65B8C9: FFree1Var var_DC = ""
  loc_65B8CC: FLdRfVar var_96
  loc_65B8CF: NextI2 var_A8, loc_65B6A1
  loc_65B8D4: ILdRf var_9C
  loc_65B8D7: LitStr "|"
  loc_65B8DA: ConcatStr
  loc_65B8DB: FStStr var_A4
  loc_65B8DE: FLdPr Me
  loc_65B8E1: MemLdStr global_56
  loc_65B8E4: FnLenStr
  loc_65B8E5: CVarI4
  loc_65B8E9: LitI4 2
  loc_65B8EE: FLdPr Me
  loc_65B8F1: MemLdRfVar from_stack_1.global_56
  loc_65B8F4: CVarRef
  loc_65B8F9: FLdRfVar var_11C
  loc_65B8FC: ImpAdCallFPR4  = Mid(, , )
  loc_65B901: FLdRfVar var_11C
  loc_65B904: CStrVarTmp
  loc_65B905: FStStrNoPop var_1B0
  loc_65B908: FLdPr Me
  loc_65B90B: MemStStrCopy
  loc_65B90F: FFree1Str var_1B0
  loc_65B912: FFreeVar var_DC = ""
  loc_65B919: FLdRfVar var_1B6
  loc_65B91C: FLdPr Me
  loc_65B91F: MemLdRfVar from_stack_1.global_56
  loc_65B922: FLdRfVar var_CC
  loc_65B925: ImpAdLdRf MemVar_74C760
  loc_65B928: NewIfNullPr Formx
  loc_65B92B: from_stack_1v = Formx.global_4589716Get()
  loc_65B930: FLdPr var_CC
  loc_65B933:  = Formx.Left
  loc_65B938: FLdI2 var_1B6
  loc_65B93B: NotI4
  loc_65B93C: FFree1Ad var_CC
  loc_65B93F: BranchF loc_65B96E
  loc_65B942: FLdRfVar var_DC
  loc_65B945: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65B94A: FLdRfVar var_DC
  loc_65B94D: CBoolVarNull
  loc_65B94F: FFree1Var var_DC = ""
  loc_65B952: BranchF loc_65B96B
  loc_65B955: ILdRf Me
  loc_65B958: FStAdNoPop
  loc_65B95C: ImpAdLdRf MemVar_7520D4
  loc_65B95F: NewIfNullPr Global
  loc_65B962: Global.Unload from_stack_1
  loc_65B967: FFree1Ad var_CC
  loc_65B96A: ExitProcHresult
  loc_65B96B: Branch loc_65B919
  loc_65B96E: ILdRf Me
  loc_65B971: FStAdNoPop
  loc_65B975: ImpAdLdRf MemVar_7520D4
  loc_65B978: NewIfNullPr Global
  loc_65B97B: Global.Unload from_stack_1
  loc_65B980: FFree1Ad var_CC
  loc_65B983: ExitProcHresult
End Sub

Private Sub Form_Load() '5DCF10
  'Data Table: 410F64
  loc_5DCEC8: ILdRf Me
  loc_5DCECB: CastAd
  loc_5DCECE: FStAdFunc var_88
  loc_5DCED1: FLdRfVar var_88
  loc_5DCED4: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5DCED9: FFree1Ad var_88
  loc_5DCEDC: LitStr vbNullString
  loc_5DCEDF: FLdPr Me
  loc_5DCEE2: MemStStrCopy
  loc_5DCEE6: LitI2_Byte 0
  loc_5DCEE8: FLdPr Me
  loc_5DCEEB: MemStI2 global_52
  loc_5DCEEE: LitI4 0
  loc_5DCEF3: FLdPr Me
  loc_5DCEF6: MemStI4 global_64
  loc_5DCEF9: from_stack_1v = Proc_126_9_64C65C()
  loc_5DCEFE: FLdPr Me
  loc_5DCF01: MemLdI2 global_68
  loc_5DCF04: BranchF loc_5DCF0C
  loc_5DCF07: from_stack_1v = Proc_126_8_685350()
  loc_5DCF0C: ExitProcHresult
End Sub

Private Sub Cancelar_Click() '5D0B3C
  'Data Table: 410F64
  loc_5D0B24: ILdRf Me
  loc_5D0B27: FStAdNoPop
  loc_5D0B2B: ImpAdLdRf MemVar_7520D4
  loc_5D0B2E: NewIfNullPr Global
  loc_5D0B31: Global.Unload from_stack_1
  loc_5D0B36: FFree1Ad var_88
  loc_5D0B39: ExitProcHresult
  loc_5D0B3A: ExitProcR8
End Sub

Private Sub TablaTot_DblClick(arg_C) '6696C4
  'Data Table: 410F64
  loc_669348: FLdPrThis
  loc_669349: VCallAd Control_ID_TablaTot
  loc_66934C: FStAdFunc var_8C
  loc_66934F: FLdPr var_8C
  loc_669352: LateIdLdVar var_9C DispID_10 0
  loc_669359: CI4Var
  loc_66935B: CVarI4
  loc_66935F: PopAdLdVar
  loc_669360: FLdPrThis
  loc_669361: VCallAd Control_ID_TablaTot
  loc_669364: FStAdFunc var_A0
  loc_669367: FLdPr var_A0
  loc_66936A: LateIdLdVar var_B0 DispID_11 0
  loc_669371: CI4Var
  loc_669373: CVarI4
  loc_669377: PopAdLdVar
  loc_669378: FLdPrThis
  loc_669379: VCallAd Control_ID_TablaTot
  loc_66937C: FStAdFunc var_D4
  loc_66937F: FLdPr var_D4
  loc_669382: LateIdCallLdVar
  loc_66938C: CStrVarTmp
  loc_66938D: FStStr var_88
  loc_669390: FFreeAd var_8C = "": var_A0 = ""
  loc_669399: FFreeVar var_9C = "": var_B0 = ""
  loc_6693A2: ILdI2 arg_C
  loc_6693A5: LitI2_Byte 8
  loc_6693A7: EqI2
  loc_6693A8: BranchF loc_669443
  loc_6693AB: ILdRf var_88
  loc_6693AE: LitStr vbNullString
  loc_6693B1: NeStr
  loc_6693B3: BranchF loc_669440
  loc_6693B6: ILdRf var_88
  loc_6693B9: FnLenStr
  loc_6693BA: LitI4 1
  loc_6693BF: SubI4
  loc_6693C0: CVarI4
  loc_6693C4: LitI4 1
  loc_6693C9: FLdRfVar var_88
  loc_6693CC: CVarRef
  loc_6693D1: FLdRfVar var_B0
  loc_6693D4: ImpAdCallFPR4  = Mid(, , )
  loc_6693D9: FLdRfVar var_B0
  loc_6693DC: CStrVarTmp
  loc_6693DD: FStStr var_88
  loc_6693E0: FFreeVar var_9C = ""
  loc_6693E7: FLdPrThis
  loc_6693E8: VCallAd Control_ID_TablaTot
  loc_6693EB: FStAdFunc var_8C
  loc_6693EE: FLdPr var_8C
  loc_6693F1: LateIdLdVar var_9C DispID_10 0
  loc_6693F8: CI4Var
  loc_6693FA: CVarI4
  loc_6693FE: PopAdLdVar
  loc_6693FF: FLdPrThis
  loc_669400: VCallAd Control_ID_TablaTot
  loc_669403: FStAdFunc var_A0
  loc_669406: FLdPr var_A0
  loc_669409: LateIdLdVar var_B0 DispID_11 0
  loc_669410: CI4Var
  loc_669412: CVarI4
  loc_669416: PopAdLdVar
  loc_669417: FLdRfVar var_88
  loc_66941A: CDargRef
  loc_66941E: FLdPrThis
  loc_66941F: VCallAd Control_ID_TablaTot
  loc_669422: FStAdFunc var_D4
  loc_669425: FLdPr var_D4
  loc_669428: LateIdCallSt
  loc_669430: FFreeAd var_8C = "": var_A0 = ""
  loc_669439: FFreeVar var_9C = ""
  loc_669440: Branch loc_669536
  loc_669443: ILdI2 arg_C
  loc_669446: LitI2_Byte &H30
  loc_669448: GeI2
  loc_669449: ILdI2 arg_C
  loc_66944C: LitI2_Byte &H39
  loc_66944E: LeI2
  loc_66944F: AndI4
  loc_669450: ILdRf var_88
  loc_669453: FnLenStr
  loc_669454: LitI4 9
  loc_669459: LeI4
  loc_66945A: AndI4
  loc_66945B: BranchF loc_669531
  loc_66945E: FLdPrThis
  loc_66945F: VCallAd Control_ID_TablaTot
  loc_669462: FStAdFunc var_8C
  loc_669465: FLdPr var_8C
  loc_669468: LateIdLdVar var_9C DispID_10 0
  loc_66946F: CI4Var
  loc_669471: CVarI4
  loc_669475: PopAdLdVar
  loc_669476: FLdPrThis
  loc_669477: VCallAd Control_ID_TablaTot
  loc_66947A: FStAdFunc var_A0
  loc_66947D: FLdPr var_A0
  loc_669480: LateIdLdVar var_B0 DispID_11 0
  loc_669487: CI4Var
  loc_669489: CVarI4
  loc_66948D: PopAdLdVar
  loc_66948E: FLdPrThis
  loc_66948F: VCallAd Control_ID_TablaTot
  loc_669492: FStAdFunc var_D4
  loc_669495: FLdPr var_D4
  loc_669498: LateIdCallLdVar
  loc_6694A2: CStrVarTmp
  loc_6694A3: FStStr var_88
  loc_6694A6: FFreeAd var_8C = "": var_A0 = ""
  loc_6694AF: FFreeVar var_9C = "": var_B0 = ""
  loc_6694B8: FLdPrThis
  loc_6694B9: VCallAd Control_ID_TablaTot
  loc_6694BC: FStAdFunc var_8C
  loc_6694BF: FLdPr var_8C
  loc_6694C2: LateIdLdVar var_E4 DispID_10 0
  loc_6694C9: CI4Var
  loc_6694CB: CVarI4
  loc_6694CF: PopAdLdVar
  loc_6694D0: FLdPrThis
  loc_6694D1: VCallAd Control_ID_TablaTot
  loc_6694D4: FStAdFunc var_A0
  loc_6694D7: FLdPr var_A0
  loc_6694DA: LateIdLdVar var_104 DispID_11 0
  loc_6694E1: CI4Var
  loc_6694E3: CVarI4
  loc_6694E7: PopAdLdVar
  loc_6694E8: ILdRf var_88
  loc_6694EB: CVarStr var_C0
  loc_6694EE: ILdI2 arg_C
  loc_6694F1: CI4UI1
  loc_6694F2: FLdRfVar var_9C
  loc_6694F5: ImpAdCallFPR4  = Chr()
  loc_6694FA: FLdRfVar var_9C
  loc_6694FD: AddVar var_B0
  loc_669501: CStrVarTmp
  loc_669502: CVarStr var_114
  loc_669505: PopAdLdVar
  loc_669506: FLdPrThis
  loc_669507: VCallAd Control_ID_TablaTot
  loc_66950A: FStAdFunc var_D4
  loc_66950D: FLdPr var_D4
  loc_669510: LateIdCallSt
  loc_669518: FFreeAd var_8C = "": var_A0 = ""
  loc_669521: FFreeVar var_9C = "": var_E4 = "": var_104 = "": var_B0 = ""
  loc_66952E: Branch loc_669536
  loc_669531: LitI2_Byte 0
  loc_669533: IStI2 arg_C
  loc_669536: FLdPrThis
  loc_669537: VCallAd Control_ID_TablaTot
  loc_66953A: FStAdFunc var_8C
  loc_66953D: FLdPr var_8C
  loc_669540: LateIdLdVar var_9C DispID_10 0
  loc_669547: CI4Var
  loc_669549: CVarI4
  loc_66954D: PopAdLdVar
  loc_66954E: FLdPrThis
  loc_66954F: VCallAd Control_ID_TablaTot
  loc_669552: FStAdFunc var_A0
  loc_669555: FLdPr var_A0
  loc_669558: LateIdLdVar var_B0 DispID_11 0
  loc_66955F: CI4Var
  loc_669561: CVarI4
  loc_669565: PopAdLdVar
  loc_669566: FLdPrThis
  loc_669567: VCallAd Control_ID_TablaTot
  loc_66956A: FStAdFunc var_D4
  loc_66956D: FLdPr var_D4
  loc_669570: LateIdCallLdVar
  loc_66957A: CStrVarTmp
  loc_66957B: FStStrNoPop var_118
  loc_66957E: FnLenStr
  loc_66957F: LitI4 &HA
  loc_669584: EqI4
  loc_669585: FFree1Str var_118
  loc_669588: FFreeAd var_8C = "": var_A0 = ""
  loc_669591: FFreeVar var_9C = "": var_B0 = ""
  loc_66959A: BranchF loc_6696C1
  loc_66959D: FLdPrThis
  loc_66959E: VCallAd Control_ID_TablaTot
  loc_6695A1: FStAdFunc var_8C
  loc_6695A4: FLdPr var_8C
  loc_6695A7: LateIdLdVar var_9C DispID_10 0
  loc_6695AE: CI4Var
  loc_6695B0: CVarI4
  loc_6695B4: PopAdLdVar
  loc_6695B5: FLdPrThis
  loc_6695B6: VCallAd Control_ID_TablaTot
  loc_6695B9: FStAdFunc var_A0
  loc_6695BC: FLdPr var_A0
  loc_6695BF: LateIdLdVar var_B0 DispID_11 0
  loc_6695C6: CI4Var
  loc_6695C8: CVarI4
  loc_6695CC: PopAdLdVar
  loc_6695CD: FLdPrThis
  loc_6695CE: VCallAd Control_ID_TablaTot
  loc_6695D1: FStAdFunc var_D4
  loc_6695D4: FLdPr var_D4
  loc_6695D7: LateIdCallLdVar
  loc_6695E1: PopAd
  loc_6695E3: FLdPrThis
  loc_6695E4: VCallAd Control_ID_TablaTot
  loc_6695E7: FStAdFunc var_188
  loc_6695EA: FLdPr var_188
  loc_6695ED: LateIdLdVar var_198 DispID_10 0
  loc_6695F4: CI4Var
  loc_6695F6: CVarI4
  loc_6695FA: PopAdLdVar
  loc_6695FB: FLdPrThis
  loc_6695FC: VCallAd Control_ID_TablaTot
  loc_6695FF: FStAdFunc var_19C
  loc_669602: FLdPr var_19C
  loc_669605: LateIdLdVar var_1AC DispID_11 0
  loc_66960C: CI4Var
  loc_66960E: CVarI4
  loc_669612: PopAdLdVar
  loc_669613: FLdPrThis
  loc_669614: VCallAd Control_ID_TablaTot
  loc_669617: FStAdFunc var_11C
  loc_66961A: FLdPr var_11C
  loc_66961D: LateIdLdVar var_104 DispID_10 0
  loc_669624: CI4Var
  loc_669626: CVarI4
  loc_66962A: PopAdLdVar
  loc_66962B: FLdPrThis
  loc_66962C: VCallAd Control_ID_TablaTot
  loc_66962F: FStAdFunc var_120
  loc_669632: FLdPr var_120
  loc_669635: LateIdLdVar var_114 DispID_11 0
  loc_66963C: CI4Var
  loc_66963E: CVarI4
  loc_669642: PopAdLdVar
  loc_669643: FLdPrThis
  loc_669644: VCallAd Control_ID_TablaTot
  loc_669647: FStAdFunc var_134
  loc_66964A: FLdPr var_134
  loc_66964D: LateIdCallLdVar
  loc_669657: CStrVarTmp
  loc_669658: FStStrNoPop var_118
  loc_66965B: FnLenStr
  loc_66965C: CVarI4
  loc_669660: LitI4 2
  loc_669665: FLdRfVar var_E4
  loc_669668: CStrVarTmp
  loc_669669: CVarStr var_154
  loc_66966C: FLdRfVar var_184
  loc_66966F: ImpAdCallFPR4  = Mid(, , )
  loc_669674: FLdRfVar var_184
  loc_669677: CStrVarTmp
  loc_669678: CVarStr var_1DC
  loc_66967B: PopAdLdVar
  loc_66967C: FLdPrThis
  loc_66967D: VCallAd Control_ID_TablaTot
  loc_669680: FStAdFunc var_1E0
  loc_669683: FLdPr var_1E0
  loc_669686: LateIdCallSt
  loc_66968E: FFree1Str var_118
  loc_669691: FFreeAd var_8C = "": var_A0 = "": var_D4 = "": var_11C = "": var_120 = "": var_134 = "": var_188 = "": var_19C = ""
  loc_6696A6: FFreeVar var_9C = "": var_B0 = "": var_E4 = "": var_104 = "": var_114 = "": var_144 = "": var_154 = "": var_174 = "": var_198 = "": var_1AC = "": var_184 = ""
  loc_6696C1: ExitProcHresult
End Sub

Private Sub Command1_Click() '5D0C6C
  'Data Table: 410F64
  loc_5D0C54: ILdRf Me
  loc_5D0C57: FStAdNoPop
  loc_5D0C5B: ImpAdLdRf MemVar_7520D4
  loc_5D0C5E: NewIfNullPr Global
  loc_5D0C61: Global.Unload from_stack_1
  loc_5D0C66: FFree1Ad var_88
  loc_5D0C69: ExitProcHresult
  loc_5D0C6A: ExitProcCy
End Sub

Public Function GetProducto(cara, pico) '5D934C
  'Data Table: 410F64
  loc_5D931C: ZeroRetVal
  loc_5D931E: FLdRfVar var_90
  loc_5D9321: ILdI2 cara
  loc_5D9324: CI4UI1
  loc_5D9325: ILdI2 pico
  loc_5D9328: CI4UI1
  loc_5D9329: ImpAdLdRf MemVar_74C12C
  loc_5D932C: AryLdPr
  loc_5D932F: MemLdUI1 global_0
  loc_5D9333: CI2UI1
  loc_5D9335: ImpAdLdRf MemVar_74A220
  loc_5D9338: NewIfNullPr clsProducts
  loc_5D9340: FLdZeroAd var_90
  loc_5D9343: FStStr var_88
  loc_5D9346: ExitProcCbHresult
End Function

Public Function GetPico(pico) '5E21F0
  'Data Table: 410F64
  loc_5E2194: ZeroRetVal
  loc_5E2196: ILdI2 pico
  loc_5E2199: FStI2 var_8E
  loc_5E219C: FLdI2 var_8E
  loc_5E219F: LitI2_Byte 0
  loc_5E21A1: EqI2
  loc_5E21A2: BranchF loc_5E21AE
  loc_5E21A5: LitStr "A"
  loc_5E21A8: FStStrCopy var_8C
  loc_5E21AB: Branch loc_5E21E1
  loc_5E21AE: FLdI2 var_8E
  loc_5E21B1: LitI2_Byte 1
  loc_5E21B3: EqI2
  loc_5E21B4: BranchF loc_5E21C0
  loc_5E21B7: LitStr "B"
  loc_5E21BA: FStStrCopy var_8C
  loc_5E21BD: Branch loc_5E21E1
  loc_5E21C0: FLdI2 var_8E
  loc_5E21C3: LitI2_Byte 2
  loc_5E21C5: EqI2
  loc_5E21C6: BranchF loc_5E21D2
  loc_5E21C9: LitStr "C"
  loc_5E21CC: FStStrCopy var_8C
  loc_5E21CF: Branch loc_5E21E1
  loc_5E21D2: FLdI2 var_8E
  loc_5E21D5: LitI2_Byte 3
  loc_5E21D7: EqI2
  loc_5E21D8: BranchF loc_5E21E1
  loc_5E21DB: LitStr "D"
  loc_5E21DE: FStStrCopy var_8C
  loc_5E21E1: ILdRf var_8C
  loc_5E21E4: FStStrCopy var_88
  loc_5E21E7: ExitProcCbHresult
End Function

Private Function Proc_126_7_627308(arg_C) '627308
  'Data Table: 410F64
  loc_627190: ZeroRetVal
  loc_627192: LitI2_Byte 1
  loc_627194: FStI2 var_8A
  loc_627197: ILdI4 arg_C
  loc_62719A: CI2Str
  loc_62719C: CI4UI1
  loc_62719D: FLdRfVar var_A0
  loc_6271A0: ImpAdCallFPR4  = Chr()
  loc_6271A5: FLdRfVar var_A0
  loc_6271A8: CStrVarTmp
  loc_6271A9: FStStr var_90
  loc_6271AC: FFree1Var var_A0 = ""
  loc_6271AF: LitVarI2 var_A0, 1
  loc_6271B4: FLdI2 var_8A
  loc_6271B7: CI4UI1
  loc_6271B8: FLdPr Me
  loc_6271BB: MemLdRfVar from_stack_1.global_60
  loc_6271BE: CVarRef
  loc_6271C3: FLdRfVar var_D0
  loc_6271C6: ImpAdCallFPR4  = Mid(, , )
  loc_6271CB: FLdRfVar var_D0
  loc_6271CE: ILdRf var_90
  loc_6271D1: CVarStr var_E0
  loc_6271D4: HardType
  loc_6271D5: NeVar var_F0
  loc_6271D9: FLdI2 var_8A
  loc_6271DC: CI4UI1
  loc_6271DD: FLdPr Me
  loc_6271E0: MemLdStr global_60
  loc_6271E3: FnLenStr
  loc_6271E4: LtI4
  loc_6271E5: CVarBoolI2 var_100
  loc_6271E9: AndVar var_110
  loc_6271ED: CBoolVarNull
  loc_6271EF: FFreeVar var_A0 = "": var_D0 = ""
  loc_6271F8: BranchF loc_62725E
  loc_6271FB: LitVarI2 var_A0, 1
  loc_627200: FLdI2 var_8A
  loc_627203: CI4UI1
  loc_627204: FLdPr Me
  loc_627207: MemLdRfVar from_stack_1.global_60
  loc_62720A: CVarRef
  loc_62720F: FLdRfVar var_D0
  loc_627212: ImpAdCallFPR4  = Mid(, , )
  loc_627217: FLdRfVar var_D0
  loc_62721A: LitVarStr var_E0, "|"
  loc_62721F: HardType
  loc_627220: NeVar var_F0
  loc_627224: FLdPr Me
  loc_627227: MemLdStr global_60
  loc_62722A: FnLenStr
  loc_62722B: FLdI2 var_8A
  loc_62722E: CI4UI1
  loc_62722F: LtI4
  loc_627230: CVarBoolI2 var_100
  loc_627234: AndVar var_110
  loc_627238: CBoolVarNull
  loc_62723A: FFreeVar var_A0 = "": var_D0 = ""
  loc_627243: BranchF loc_627252
  loc_627246: FLdI2 var_8A
  loc_627249: LitI2_Byte 1
  loc_62724B: AddI2
  loc_62724C: FStI2 var_8A
  loc_62724F: Branch loc_6271FB
  loc_627252: FLdI2 var_8A
  loc_627255: LitI2_Byte 1
  loc_627257: AddI2
  loc_627258: FStI2 var_8A
  loc_62725B: Branch loc_6271AF
  loc_62725E: FLdI2 var_8A
  loc_627261: LitI2_Byte 1
  loc_627263: AddI2
  loc_627264: FStI2 var_8A
  loc_627267: LitStr vbNullString
  loc_62726A: FStStrCopy var_90
  loc_62726D: LitVarI2 var_A0, 1
  loc_627272: FLdI2 var_8A
  loc_627275: CI4UI1
  loc_627276: FLdPr Me
  loc_627279: MemLdRfVar from_stack_1.global_60
  loc_62727C: CVarRef
  loc_627281: FLdRfVar var_D0
  loc_627284: ImpAdCallFPR4  = Mid(, , )
  loc_627289: FLdRfVar var_D0
  loc_62728C: LitVarStr var_E0, "|"
  loc_627291: HardType
  loc_627292: NeVar var_F0
  loc_627296: FLdI2 var_8A
  loc_627299: CI4UI1
  loc_62729A: FLdPr Me
  loc_62729D: MemLdStr global_60
  loc_6272A0: FnLenStr
  loc_6272A1: LeI4
  loc_6272A2: CVarBoolI2 var_100
  loc_6272A6: AndVar var_110
  loc_6272AA: CBoolVarNull
  loc_6272AC: FFreeVar var_A0 = "": var_D0 = ""
  loc_6272B5: BranchF loc_6272FA
  loc_6272B8: ILdRf var_90
  loc_6272BB: CVarStr var_E0
  loc_6272BE: LitVarI2 var_A0, 1
  loc_6272C3: FLdI2 var_8A
  loc_6272C6: CI4UI1
  loc_6272C7: FLdPr Me
  loc_6272CA: MemLdRfVar from_stack_1.global_60
  loc_6272CD: CVarRef
  loc_6272D2: FLdRfVar var_D0
  loc_6272D5: ImpAdCallFPR4  = Mid(, , )
  loc_6272DA: FLdRfVar var_D0
  loc_6272DD: AddVar var_F0
  loc_6272E1: CStrVarTmp
  loc_6272E2: FStStr var_90
  loc_6272E5: FFreeVar var_A0 = "": var_D0 = ""
  loc_6272EE: FLdI2 var_8A
  loc_6272F1: LitI2_Byte 1
  loc_6272F3: AddI2
  loc_6272F4: FStI2 var_8A
  loc_6272F7: Branch loc_62726D
  loc_6272FA: ILdRf var_90
  loc_6272FD: FStStrCopy var_88
  loc_627300: ExitProcCbHresult
  loc_627306: Branch loc_635D90
End Function

Private Function Proc_126_8_685350() '685350
  'Data Table: 410F64
  loc_684E28: LitI2_Byte 1
  loc_684E2A: FStI2 var_86
  loc_684E2D: FLdI2 var_86
  loc_684E30: CI4UI1
  loc_684E31: FLdPrThis
  loc_684E32: VCallAd Control_ID_TablaTot
  loc_684E35: FStAdFunc var_94
  loc_684E38: FLdPr var_94
  loc_684E3B: LateIdLdVar var_A4 DispID_4 0
  loc_684E42: CI4Var
  loc_684E44: LtI4
  loc_684E45: FFree1Ad var_94
  loc_684E48: FFree1Var var_A4 = ""
  loc_684E4B: BranchF loc_68534F
  loc_684E4E: FLdI2 var_86
  loc_684E51: CI4UI1
  loc_684E52: CVarI4
  loc_684E56: PopAdLdVar
  loc_684E57: LitVarI4
  loc_684E5F: PopAdLdVar
  loc_684E60: FLdPrThis
  loc_684E61: VCallAd Control_ID_TablaTot
  loc_684E64: FStAdFunc var_94
  loc_684E67: FLdPr var_94
  loc_684E6A: LateIdCallLdVar
  loc_684E74: PopAd
  loc_684E76: ImpAdLdRf MemVar_74BED4
  loc_684E79: CVarRef
  loc_684E7E: ImpAdLdRf MemVar_74BED8
  loc_684E81: CVarRef
  loc_684E86: ImpAdLdI4 MemVar_74BED4
  loc_684E89: FnLenStr
  loc_684E8A: LitI4 &HC
  loc_684E8F: GtI4
  loc_684E90: CVarBoolI2 var_D4
  loc_684E94: FLdRfVar var_104
  loc_684E97: ImpAdCallFPR4  = IIf(, , )
  loc_684E9C: LitVarI2 var_164, 3
  loc_684EA1: FLdRfVar var_104
  loc_684EA4: FnLenVar var_114
  loc_684EA8: LitVarI2 var_124, 1
  loc_684EAD: AddVar var_134
  loc_684EB1: CI4Var
  loc_684EB3: FLdRfVar var_A4
  loc_684EB6: CStrVarTmp
  loc_684EB7: CVarStr var_144
  loc_684EBA: FLdRfVar var_174
  loc_684EBD: ImpAdCallFPR4  = Mid(, , )
  loc_684EC2: FLdRfVar var_174
  loc_684EC5: CStrVarTmp
  loc_684EC6: FStStr var_8C
  loc_684EC9: FFree1Ad var_94
  loc_684ECC: FFreeVar var_A4 = "": var_D4 = "": var_104 = "": var_144 = "": var_134 = "": var_164 = ""
  loc_684EDD: FLdRfVar var_178
  loc_684EE0: FLdRfVar var_8C
  loc_684EE3: from_stack_2v = Proc_126_7_627308(from_stack_1v)
  loc_684EE8: FLdZeroAd var_178
  loc_684EEB: FStStr var_90
  loc_684EEE: ILdRf var_90
  loc_684EF1: FnLenStr
  loc_684EF2: CR8I4
  loc_684EF3: LitI2_Byte &HD
  loc_684EF5: CR8I2
  loc_684EF6: DivR8
  loc_684EF7: FStFPR8 var_180
  loc_684EFA: FLdFPR8 var_180
  loc_684EFD: LitI2_Byte 1
  loc_684EFF: CR8I2
  loc_684F00: EqR4
  loc_684F01: BranchF loc_684F6F
  loc_684F04: FLdI2 var_86
  loc_684F07: CI4UI1
  loc_684F08: CVarI4
  loc_684F0C: PopAdLdVar
  loc_684F0D: LitVarI4
  loc_684F15: PopAdLdVar
  loc_684F16: LitVarI2 var_A4, 9
  loc_684F1B: LitI4 5
  loc_684F20: FLdRfVar var_90
  loc_684F23: CVarRef
  loc_684F28: FLdRfVar var_104
  loc_684F2B: ImpAdCallFPR4  = Mid(, , )
  loc_684F30: FLdRfVar var_104
  loc_684F33: FLdRfVar var_114
  loc_684F36: ImpAdCallFPR4  = Trim()
  loc_684F3B: FLdRfVar var_114
  loc_684F3E: CStrVarTmp
  loc_684F3F: CVarStr var_134
  loc_684F42: PopAdLdVar
  loc_684F43: FLdPrThis
  loc_684F44: VCallAd Control_ID_TablaTot
  loc_684F47: FStAdFunc var_94
  loc_684F4A: FLdPr var_94
  loc_684F4D: LateIdCallSt
  loc_684F55: FFree1Ad var_94
  loc_684F58: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_684F63: FLdI2 var_86
  loc_684F66: LitI2_Byte 1
  loc_684F68: AddI2
  loc_684F69: FStI2 var_86
  loc_684F6C: Branch loc_68534C
  loc_684F6F: FLdFPR8 var_180
  loc_684F72: LitI2_Byte 2
  loc_684F74: CR8I2
  loc_684F75: EqR4
  loc_684F76: BranchF loc_685046
  loc_684F79: FLdI2 var_86
  loc_684F7C: CI4UI1
  loc_684F7D: CVarI4
  loc_684F81: PopAdLdVar
  loc_684F82: LitVarI4
  loc_684F8A: PopAdLdVar
  loc_684F8B: LitVarI2 var_A4, 9
  loc_684F90: LitI4 5
  loc_684F95: FLdRfVar var_90
  loc_684F98: CVarRef
  loc_684F9D: FLdRfVar var_104
  loc_684FA0: ImpAdCallFPR4  = Mid(, , )
  loc_684FA5: FLdRfVar var_104
  loc_684FA8: FLdRfVar var_114
  loc_684FAB: ImpAdCallFPR4  = Trim()
  loc_684FB0: FLdRfVar var_114
  loc_684FB3: CStrVarTmp
  loc_684FB4: CVarStr var_134
  loc_684FB7: PopAdLdVar
  loc_684FB8: FLdPrThis
  loc_684FB9: VCallAd Control_ID_TablaTot
  loc_684FBC: FStAdFunc var_94
  loc_684FBF: FLdPr var_94
  loc_684FC2: LateIdCallSt
  loc_684FCA: FFree1Ad var_94
  loc_684FCD: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_684FD8: FLdI2 var_86
  loc_684FDB: LitI2_Byte 1
  loc_684FDD: AddI2
  loc_684FDE: CI4UI1
  loc_684FDF: CVarI4
  loc_684FE3: PopAdLdVar
  loc_684FE4: LitVarI4
  loc_684FEC: PopAdLdVar
  loc_684FED: LitVarI2 var_A4, 9
  loc_684FF2: LitI4 &H12
  loc_684FF7: FLdRfVar var_90
  loc_684FFA: CVarRef
  loc_684FFF: FLdRfVar var_104
  loc_685002: ImpAdCallFPR4  = Mid(, , )
  loc_685007: FLdRfVar var_104
  loc_68500A: FLdRfVar var_114
  loc_68500D: ImpAdCallFPR4  = Trim()
  loc_685012: FLdRfVar var_114
  loc_685015: CStrVarTmp
  loc_685016: CVarStr var_134
  loc_685019: PopAdLdVar
  loc_68501A: FLdPrThis
  loc_68501B: VCallAd Control_ID_TablaTot
  loc_68501E: FStAdFunc var_94
  loc_685021: FLdPr var_94
  loc_685024: LateIdCallSt
  loc_68502C: FFree1Ad var_94
  loc_68502F: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_68503A: FLdI2 var_86
  loc_68503D: LitI2_Byte 2
  loc_68503F: AddI2
  loc_685040: FStI2 var_86
  loc_685043: Branch loc_68534C
  loc_685046: FLdFPR8 var_180
  loc_685049: LitI2_Byte 3
  loc_68504B: CR8I2
  loc_68504C: EqR4
  loc_68504D: BranchF loc_68517F
  loc_685050: FLdI2 var_86
  loc_685053: CI4UI1
  loc_685054: CVarI4
  loc_685058: PopAdLdVar
  loc_685059: LitVarI4
  loc_685061: PopAdLdVar
  loc_685062: LitVarI2 var_A4, 9
  loc_685067: LitI4 5
  loc_68506C: FLdRfVar var_90
  loc_68506F: CVarRef
  loc_685074: FLdRfVar var_104
  loc_685077: ImpAdCallFPR4  = Mid(, , )
  loc_68507C: FLdRfVar var_104
  loc_68507F: FLdRfVar var_114
  loc_685082: ImpAdCallFPR4  = Trim()
  loc_685087: FLdRfVar var_114
  loc_68508A: CStrVarTmp
  loc_68508B: CVarStr var_134
  loc_68508E: PopAdLdVar
  loc_68508F: FLdPrThis
  loc_685090: VCallAd Control_ID_TablaTot
  loc_685093: FStAdFunc var_94
  loc_685096: FLdPr var_94
  loc_685099: LateIdCallSt
  loc_6850A1: FFree1Ad var_94
  loc_6850A4: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_6850AF: FLdI2 var_86
  loc_6850B2: LitI2_Byte 1
  loc_6850B4: AddI2
  loc_6850B5: CI4UI1
  loc_6850B6: CVarI4
  loc_6850BA: PopAdLdVar
  loc_6850BB: LitVarI4
  loc_6850C3: PopAdLdVar
  loc_6850C4: LitVarI2 var_A4, 9
  loc_6850C9: LitI4 &H12
  loc_6850CE: FLdRfVar var_90
  loc_6850D1: CVarRef
  loc_6850D6: FLdRfVar var_104
  loc_6850D9: ImpAdCallFPR4  = Mid(, , )
  loc_6850DE: FLdRfVar var_104
  loc_6850E1: FLdRfVar var_114
  loc_6850E4: ImpAdCallFPR4  = Trim()
  loc_6850E9: FLdRfVar var_114
  loc_6850EC: CStrVarTmp
  loc_6850ED: CVarStr var_134
  loc_6850F0: PopAdLdVar
  loc_6850F1: FLdPrThis
  loc_6850F2: VCallAd Control_ID_TablaTot
  loc_6850F5: FStAdFunc var_94
  loc_6850F8: FLdPr var_94
  loc_6850FB: LateIdCallSt
  loc_685103: FFree1Ad var_94
  loc_685106: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_685111: FLdI2 var_86
  loc_685114: LitI2_Byte 2
  loc_685116: AddI2
  loc_685117: CI4UI1
  loc_685118: CVarI4
  loc_68511C: PopAdLdVar
  loc_68511D: LitVarI4
  loc_685125: PopAdLdVar
  loc_685126: LitVarI2 var_A4, 9
  loc_68512B: LitI4 &H1F
  loc_685130: FLdRfVar var_90
  loc_685133: CVarRef
  loc_685138: FLdRfVar var_104
  loc_68513B: ImpAdCallFPR4  = Mid(, , )
  loc_685140: FLdRfVar var_104
  loc_685143: FLdRfVar var_114
  loc_685146: ImpAdCallFPR4  = Trim()
  loc_68514B: FLdRfVar var_114
  loc_68514E: CStrVarTmp
  loc_68514F: CVarStr var_134
  loc_685152: PopAdLdVar
  loc_685153: FLdPrThis
  loc_685154: VCallAd Control_ID_TablaTot
  loc_685157: FStAdFunc var_94
  loc_68515A: FLdPr var_94
  loc_68515D: LateIdCallSt
  loc_685165: FFree1Ad var_94
  loc_685168: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_685173: FLdI2 var_86
  loc_685176: LitI2_Byte 3
  loc_685178: AddI2
  loc_685179: FStI2 var_86
  loc_68517C: Branch loc_68534C
  loc_68517F: FLdFPR8 var_180
  loc_685182: LitI2_Byte 4
  loc_685184: CR8I2
  loc_685185: EqR4
  loc_685186: BranchF loc_68531A
  loc_685189: FLdI2 var_86
  loc_68518C: CI4UI1
  loc_68518D: CVarI4
  loc_685191: PopAdLdVar
  loc_685192: LitVarI4
  loc_68519A: PopAdLdVar
  loc_68519B: LitVarI2 var_A4, 9
  loc_6851A0: LitI4 5
  loc_6851A5: FLdRfVar var_90
  loc_6851A8: CVarRef
  loc_6851AD: FLdRfVar var_104
  loc_6851B0: ImpAdCallFPR4  = Mid(, , )
  loc_6851B5: FLdRfVar var_104
  loc_6851B8: FLdRfVar var_114
  loc_6851BB: ImpAdCallFPR4  = Trim()
  loc_6851C0: FLdRfVar var_114
  loc_6851C3: CStrVarTmp
  loc_6851C4: CVarStr var_134
  loc_6851C7: PopAdLdVar
  loc_6851C8: FLdPrThis
  loc_6851C9: VCallAd Control_ID_TablaTot
  loc_6851CC: FStAdFunc var_94
  loc_6851CF: FLdPr var_94
  loc_6851D2: LateIdCallSt
  loc_6851DA: FFree1Ad var_94
  loc_6851DD: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_6851E8: FLdI2 var_86
  loc_6851EB: LitI2_Byte 1
  loc_6851ED: AddI2
  loc_6851EE: CI4UI1
  loc_6851EF: CVarI4
  loc_6851F3: PopAdLdVar
  loc_6851F4: LitVarI4
  loc_6851FC: PopAdLdVar
  loc_6851FD: LitVarI2 var_A4, 9
  loc_685202: LitI4 &H12
  loc_685207: FLdRfVar var_90
  loc_68520A: CVarRef
  loc_68520F: FLdRfVar var_104
  loc_685212: ImpAdCallFPR4  = Mid(, , )
  loc_685217: FLdRfVar var_104
  loc_68521A: FLdRfVar var_114
  loc_68521D: ImpAdCallFPR4  = Trim()
  loc_685222: FLdRfVar var_114
  loc_685225: CStrVarTmp
  loc_685226: CVarStr var_134
  loc_685229: PopAdLdVar
  loc_68522A: FLdPrThis
  loc_68522B: VCallAd Control_ID_TablaTot
  loc_68522E: FStAdFunc var_94
  loc_685231: FLdPr var_94
  loc_685234: LateIdCallSt
  loc_68523C: FFree1Ad var_94
  loc_68523F: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_68524A: FLdI2 var_86
  loc_68524D: LitI2_Byte 2
  loc_68524F: AddI2
  loc_685250: CI4UI1
  loc_685251: CVarI4
  loc_685255: PopAdLdVar
  loc_685256: LitVarI4
  loc_68525E: PopAdLdVar
  loc_68525F: LitVarI2 var_A4, 9
  loc_685264: LitI4 &H1F
  loc_685269: FLdRfVar var_90
  loc_68526C: CVarRef
  loc_685271: FLdRfVar var_104
  loc_685274: ImpAdCallFPR4  = Mid(, , )
  loc_685279: FLdRfVar var_104
  loc_68527C: FLdRfVar var_114
  loc_68527F: ImpAdCallFPR4  = Trim()
  loc_685284: FLdRfVar var_114
  loc_685287: CStrVarTmp
  loc_685288: CVarStr var_134
  loc_68528B: PopAdLdVar
  loc_68528C: FLdPrThis
  loc_68528D: VCallAd Control_ID_TablaTot
  loc_685290: FStAdFunc var_94
  loc_685293: FLdPr var_94
  loc_685296: LateIdCallSt
  loc_68529E: FFree1Ad var_94
  loc_6852A1: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_6852AC: FLdI2 var_86
  loc_6852AF: LitI2_Byte 3
  loc_6852B1: AddI2
  loc_6852B2: CI4UI1
  loc_6852B3: CVarI4
  loc_6852B7: PopAdLdVar
  loc_6852B8: LitVarI4
  loc_6852C0: PopAdLdVar
  loc_6852C1: LitVarI2 var_A4, 9
  loc_6852C6: LitI4 &H2C
  loc_6852CB: FLdRfVar var_90
  loc_6852CE: CVarRef
  loc_6852D3: FLdRfVar var_104
  loc_6852D6: ImpAdCallFPR4  = Mid(, , )
  loc_6852DB: FLdRfVar var_104
  loc_6852DE: FLdRfVar var_114
  loc_6852E1: ImpAdCallFPR4  = Trim()
  loc_6852E6: FLdRfVar var_114
  loc_6852E9: CStrVarTmp
  loc_6852EA: CVarStr var_134
  loc_6852ED: PopAdLdVar
  loc_6852EE: FLdPrThis
  loc_6852EF: VCallAd Control_ID_TablaTot
  loc_6852F2: FStAdFunc var_94
  loc_6852F5: FLdPr var_94
  loc_6852F8: LateIdCallSt
  loc_685300: FFree1Ad var_94
  loc_685303: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_68530E: FLdI2 var_86
  loc_685311: LitI2_Byte 4
  loc_685313: AddI2
  loc_685314: FStI2 var_86
  loc_685317: Branch loc_68534C
  loc_68531A: LitVar_Missing var_134
  loc_68531D: LitVar_Missing var_114
  loc_685320: LitVarStr var_C4, "Error"
  loc_685325: FStVarCopyObj var_104
  loc_685328: FLdRfVar var_104
  loc_68532B: LitI4 &H10
  loc_685330: LitVarStr var_B4, "Error de totalizadores"
  loc_685335: FStVarCopyObj var_A4
  loc_685338: FLdRfVar var_A4
  loc_68533B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_685340: FFreeVar var_A4 = "": var_104 = "": var_114 = ""
  loc_68534B: ExitProcHresult
  loc_68534C: Branch loc_684E2D
  loc_68534F: ExitProcHresult
End Function

Private Function Proc_126_9_64C65C() '64C65C
  'Data Table: 410F64
  loc_64C3E4: LitI2_Byte 0
  loc_64C3E6: FStI2 var_90
  loc_64C3E9: LitVar_FALSE
  loc_64C3ED: FStVar var_A4
  loc_64C3F1: LitVar_FALSE
  loc_64C3F5: PopAdLdVar
  loc_64C3F6: FLdPrThis
  loc_64C3F7: VCallAd Control_ID_TablaTot
  loc_64C3FA: FStAdFunc var_B8
  loc_64C3FD: FLdPr var_B8
  loc_64C400: LateIdSt
  loc_64C405: FFree1Ad var_B8
  loc_64C408: LitI2_Byte 1
  loc_64C40A: FStI2 var_92
  loc_64C40D: FLdRfVar var_BA
  loc_64C410: FLdPr Me
  loc_64C413: MemLdRfVar from_stack_1.global_60
  loc_64C416: FLdRfVar var_B8
  loc_64C419: ImpAdLdRf MemVar_74C760
  loc_64C41C: NewIfNullPr Formx
  loc_64C41F: from_stack_1v = Formx.global_4589716Get()
  loc_64C424: FLdPr var_B8
  loc_64C427: Formx.Point from_stack_1s, from_stack_2s
  loc_64C42C: FLdI2 var_BA
  loc_64C42F: NotI4
  loc_64C430: FFree1Ad var_B8
  loc_64C433: BranchF loc_64C462
  loc_64C436: FLdRfVar var_CC
  loc_64C439: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64C43E: FLdRfVar var_CC
  loc_64C441: CBoolVarNull
  loc_64C443: FFree1Var var_CC = ""
  loc_64C446: BranchF loc_64C45F
  loc_64C449: ILdRf Me
  loc_64C44C: FStAdNoPop
  loc_64C450: ImpAdLdRf MemVar_7520D4
  loc_64C453: NewIfNullPr Global
  loc_64C456: Global.Unload from_stack_1
  loc_64C45B: FFree1Ad var_B8
  loc_64C45E: ExitProcHresult
  loc_64C45F: Branch loc_64C40D
  loc_64C462: FLdRfVar var_BA
  loc_64C465: FLdRfVar var_88
  loc_64C468: FLdRfVar var_B8
  loc_64C46B: ImpAdLdRf MemVar_74C760
  loc_64C46E: NewIfNullPr Formx
  loc_64C471: from_stack_1v = Formx.global_4589716Get()
  loc_64C476: FLdPr var_B8
  loc_64C479:  = Formx.Top
  loc_64C47E: FLdI2 var_BA
  loc_64C481: NotI4
  loc_64C482: FFree1Ad var_B8
  loc_64C485: BranchF loc_64C4B4
  loc_64C488: FLdRfVar var_CC
  loc_64C48B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64C490: FLdRfVar var_CC
  loc_64C493: CBoolVarNull
  loc_64C495: FFree1Var var_CC = ""
  loc_64C498: BranchF loc_64C4B1
  loc_64C49B: ILdRf Me
  loc_64C49E: FStAdNoPop
  loc_64C4A2: ImpAdLdRf MemVar_7520D4
  loc_64C4A5: NewIfNullPr Global
  loc_64C4A8: Global.Unload from_stack_1
  loc_64C4AD: FFree1Ad var_B8
  loc_64C4B0: ExitProcHresult
  loc_64C4B1: Branch loc_64C462
  loc_64C4B4: FLdRfVar var_BA
  loc_64C4B7: FLdRfVar var_8C
  loc_64C4BA: FLdRfVar var_B8
  loc_64C4BD: ImpAdLdRf MemVar_74C760
  loc_64C4C0: NewIfNullPr Formx
  loc_64C4C3: from_stack_1v = Formx.global_4589716Get()
  loc_64C4C8: FLdPr var_B8
  loc_64C4CB: Call 0.Method_arg_320 ()
  loc_64C4D0: FLdI2 var_BA
  loc_64C4D3: NotI4
  loc_64C4D4: FFree1Ad var_B8
  loc_64C4D7: BranchF loc_64C506
  loc_64C4DA: FLdRfVar var_CC
  loc_64C4DD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64C4E2: FLdRfVar var_CC
  loc_64C4E5: CBoolVarNull
  loc_64C4E7: FFree1Var var_CC = ""
  loc_64C4EA: BranchF loc_64C503
  loc_64C4ED: ILdRf Me
  loc_64C4F0: FStAdNoPop
  loc_64C4F4: ImpAdLdRf MemVar_7520D4
  loc_64C4F7: NewIfNullPr Global
  loc_64C4FA: Global.Unload from_stack_1
  loc_64C4FF: FFree1Ad var_B8
  loc_64C502: ExitProcHresult
  loc_64C503: Branch loc_64C4B4
  loc_64C506: LitI2_Byte 0
  loc_64C508: FLdPr Me
  loc_64C50B: MemStI2 global_68
  loc_64C50E: LitI2_Byte 1
  loc_64C510: FLdRfVar var_8E
  loc_64C513: ImpAdLdUI1
  loc_64C517: CI2UI1
  loc_64C519: ForI2 var_D0
  loc_64C51F: LitVarI2 var_CC, 1
  loc_64C524: FLdI2 var_8E
  loc_64C527: CI4UI1
  loc_64C528: FLdRfVar var_88
  loc_64C52B: CVarRef
  loc_64C530: FLdRfVar var_F0
  loc_64C533: ImpAdCallFPR4  = Mid(, , )
  loc_64C538: FLdRfVar var_F0
  loc_64C53B: CStrVarVal var_F4
  loc_64C53F: ImpAdCallI2 Asc()
  loc_64C544: LitI2_Byte 1
  loc_64C546: EqI2
  loc_64C547: LitVarI2 var_124, 1
  loc_64C54C: FLdI2 var_8E
  loc_64C54F: CI4UI1
  loc_64C550: FLdRfVar var_88
  loc_64C553: CVarRef
  loc_64C558: FLdRfVar var_134
  loc_64C55B: ImpAdCallFPR4  = Mid(, , )
  loc_64C560: FLdRfVar var_134
  loc_64C563: CStrVarVal var_138
  loc_64C567: ImpAdCallI2 Asc()
  loc_64C56C: LitI2_Byte &H10
  loc_64C56E: EqI2
  loc_64C56F: OrI4
  loc_64C570: CVarBoolI2 var_1A8
  loc_64C574: LitVarI2 var_168, 1
  loc_64C579: FLdI2 var_92
  loc_64C57C: CI4UI1
  loc_64C57D: FLdRfVar var_8C
  loc_64C580: CVarRef
  loc_64C585: FLdRfVar var_178
  loc_64C588: ImpAdCallFPR4  = Mid(, , )
  loc_64C58D: FLdRfVar var_178
  loc_64C590: LitVarStr var_188, "1"
  loc_64C595: HardType
  loc_64C596: EqVar var_198
  loc_64C59A: AndVar var_1B8
  loc_64C59E: CBoolVarNull
  loc_64C5A0: FFreeStr var_F4 = ""
  loc_64C5A7: FFreeVar var_CC = "": var_F0 = "": var_124 = "": var_134 = "": var_168 = "": var_178 = ""
  loc_64C5B8: BranchF loc_64C5D2
  loc_64C5BB: FLdPr Me
  loc_64C5BE: MemLdI2 global_68
  loc_64C5C1: LitI2_Byte 1
  loc_64C5C3: AddI2
  loc_64C5C4: FLdPr Me
  loc_64C5C7: MemStI2 global_68
  loc_64C5CA: FLdRfVar var_8E
  loc_64C5CD: from_stack_2v = Proc_126_10_634688(from_stack_1v)
  loc_64C5D2: FLdI2 var_92
  loc_64C5D5: LitI2_Byte 1
  loc_64C5D7: AddI2
  loc_64C5D8: FStI2 var_92
  loc_64C5DB: FLdRfVar var_8E
  loc_64C5DE: NextI2 var_D0, loc_64C51F
  loc_64C5E3: FLdPr Me
  loc_64C5E6: MemLdStr global_64
  loc_64C5E9: LitI4 &H85
  loc_64C5EE: MulI4
  loc_64C5EF: FLdPr Me
  loc_64C5F2: MemStI4 global_64
  loc_64C5F5: FLdPr Me
  loc_64C5F8: MemLdI2 global_68
  loc_64C5FB: BranchF loc_64C623
  loc_64C5FE: FLdPr Me
  loc_64C601: MemLdI2 global_68
  loc_64C604: PopTmpLdAd2 var_BA
  loc_64C607: from_stack_1v = Proc_126_11_669B0C()
  loc_64C60C: LitI2_Byte 0
  loc_64C60E: FLdPrThis
  loc_64C60F: VCallAd Control_ID_Command1
  loc_64C612: FStAdFunc var_B8
  loc_64C615: FLdPr var_B8
  loc_64C618: Me.Visible = from_stack_1b
  loc_64C61D: FFree1Ad var_B8
  loc_64C620: Branch loc_64C65B
  loc_64C623: LitI2 2000
  loc_64C626: CR8I2
  loc_64C627: PopFPR4
  loc_64C628: ImpAdLdRf MemVar_74E1DC
  loc_64C62B: NewIfNullPr frmTotalizadores
  loc_64C62E: frmTotalizadores.Height = from_stack_1s
  loc_64C633: LitI2_Byte 0
  loc_64C635: FLdPrThis
  loc_64C636: VCallAd Control_ID_Aceptar
  loc_64C639: FStAdFunc var_B8
  loc_64C63C: FLdPr var_B8
  loc_64C63F: Me.Enabled = from_stack_1b
  loc_64C644: FFree1Ad var_B8
  loc_64C647: LitI2_Byte &HFF
  loc_64C649: FLdPrThis
  loc_64C64A: VCallAd Control_ID_Command1
  loc_64C64D: FStAdFunc var_B8
  loc_64C650: FLdPr var_B8
  loc_64C653: Me.Visible = from_stack_1b
  loc_64C658: FFree1Ad var_B8
  loc_64C65B: ExitProcHresult
End Function

Private Function Proc_126_10_634688(arg_C) '634688
  'Data Table: 410F64
  loc_6344D0: LitI2_Byte 0
  loc_6344D2: FLdRfVar var_86
  loc_6344D5: LitI2_Byte 3
  loc_6344D7: ForI2 var_90
  loc_6344DD: ILdI2 arg_C
  loc_6344E0: CI4UI1
  loc_6344E1: FLdI2 var_86
  loc_6344E4: CI4UI1
  loc_6344E5: ImpAdLdRf MemVar_74C12C
  loc_6344E8: AryLdPr
  loc_6344EB: MemLdUI1 global_0
  loc_6344EF: CI2UI1
  loc_6344F1: LitI2_Byte 0
  loc_6344F3: NeI2
  loc_6344F4: BranchF loc_63467F
  loc_6344F7: FLdPr Me
  loc_6344FA: MemLdI2 global_52
  loc_6344FD: LitI2_Byte 1
  loc_6344FF: AddI2
  loc_634500: FLdPr Me
  loc_634503: MemStI2 global_52
  loc_634506: FLdPr Me
  loc_634509: MemLdI2 global_52
  loc_63450C: LitI2_Byte 1
  loc_63450E: AddI2
  loc_63450F: CI4UI1
  loc_634510: CVarI4
  loc_634514: PopAdLdVar
  loc_634515: FLdPrThis
  loc_634516: VCallAd Control_ID_TablaTot
  loc_634519: FStAdFunc var_A4
  loc_63451C: FLdPr var_A4
  loc_63451F: LateIdSt
  loc_634524: FFree1Ad var_A4
  loc_634527: FLdPr Me
  loc_63452A: MemLdI2 global_52
  loc_63452D: CI4UI1
  loc_63452E: CVarI4
  loc_634532: PopAdLdVar
  loc_634533: LitVarI4
  loc_63453B: PopAdLdVar
  loc_63453C: ImpAdLdRf MemVar_74BED4
  loc_63453F: CVarRef
  loc_634544: ImpAdLdRf MemVar_74BED8
  loc_634547: CVarRef
  loc_63454C: ImpAdLdI4 MemVar_74BED4
  loc_63454F: FnLenStr
  loc_634550: LitI4 &HC
  loc_634555: GtI4
  loc_634556: CVarBoolI2 var_A0
  loc_63455A: FLdRfVar var_D4
  loc_63455D: ImpAdCallFPR4  = IIf(, , )
  loc_634562: FLdRfVar var_D4
  loc_634565: LitVarStr var_E4, " "
  loc_63456A: ConcatVar var_F4
  loc_63456E: ILdI2 arg_C
  loc_634571: CVarI2 var_104
  loc_634574: ConcatVar var_114
  loc_634578: LitVarStr var_124, " - "
  loc_63457D: ConcatVar var_134
  loc_634581: ImpAdLdI4 MemVar_74BEE0
  loc_634584: CVarStr var_144
  loc_634587: ConcatVar var_154
  loc_63458B: LitVarStr var_164, ": "
  loc_634590: ConcatVar var_174
  loc_634594: FLdRfVar var_178
  loc_634597: FLdRfVar var_86
  loc_63459A: from_stack_2v = GetPico(from_stack_1v)
  loc_63459F: FLdZeroAd var_178
  loc_6345A2: CVarStr var_188
  loc_6345A5: ConcatVar var_198
  loc_6345A9: LitVarStr var_1A8, "  "
  loc_6345AE: ConcatVar var_1B8
  loc_6345B2: FLdRfVar var_1BC
  loc_6345B5: FLdRfVar var_86
  loc_6345B8: ILdRf arg_C
  loc_6345BB: from_stack_3v = GetProducto(from_stack_1v, from_stack_2v)
  loc_6345C0: FLdZeroAd var_1BC
  loc_6345C3: CVarStr var_1CC
  loc_6345C6: ConcatVar var_1DC
  loc_6345CA: CStrVarTmp
  loc_6345CB: CVarStr var_20C
  loc_6345CE: PopAdLdVar
  loc_6345CF: FLdPrThis
  loc_6345D0: VCallAd Control_ID_TablaTot
  loc_6345D3: FStAdFunc var_A4
  loc_6345D6: FLdPr var_A4
  loc_6345D9: LateIdCallSt
  loc_6345E1: FFree1Ad var_A4
  loc_6345E4: FFreeVar var_A0 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_188 = "": var_198 = "": var_1B8 = "": var_1CC = "": var_1DC = ""
  loc_634601: FLdPr Me
  loc_634604: MemLdStr global_64
  loc_634607: FLdPr Me
  loc_63460A: MemLdI2 global_52
  loc_63460D: CI4UI1
  loc_63460E: CVarI4
  loc_634612: PopAdLdVar
  loc_634613: LitVarI4
  loc_63461B: PopAdLdVar
  loc_63461C: FLdPrThis
  loc_63461D: VCallAd Control_ID_TablaTot
  loc_634620: FStAdFunc var_A4
  loc_634623: FLdPr var_A4
  loc_634626: LateIdCallLdVar
  loc_634630: CStrVarTmp
  loc_634631: FStStrNoPop var_178
  loc_634634: FnLenStr
  loc_634635: LtI4
  loc_634636: FFree1Str var_178
  loc_634639: FFree1Ad var_A4
  loc_63463C: FFree1Var var_D4 = ""
  loc_63463F: BranchF loc_63467F
  loc_634642: FLdPr Me
  loc_634645: MemLdI2 global_52
  loc_634648: CI4UI1
  loc_634649: CVarI4
  loc_63464D: PopAdLdVar
  loc_63464E: LitVarI4
  loc_634656: PopAdLdVar
  loc_634657: FLdPrThis
  loc_634658: VCallAd Control_ID_TablaTot
  loc_63465B: FStAdFunc var_A4
  loc_63465E: FLdPr var_A4
  loc_634661: LateIdCallLdVar
  loc_63466B: CStrVarTmp
  loc_63466C: FStStrNoPop var_178
  loc_63466F: FnLenStr
  loc_634670: FLdPr Me
  loc_634673: MemStI4 global_64
  loc_634676: FFree1Str var_178
  loc_634679: FFree1Ad var_A4
  loc_63467C: FFree1Var var_D4 = ""
  loc_63467F: FLdRfVar var_86
  loc_634682: NextI2 var_90, loc_6344DD
  loc_634687: ExitProcHresult
End Function

Private Function Proc_126_11_669B0C() '669B0C
  'Data Table: 410F64
  loc_669750: LitI2_Byte &HFF
  loc_669752: FLdPrThis
  loc_669753: VCallAd Control_ID_Aceptar
  loc_669756: FStAdFunc var_88
  loc_669759: FLdPr var_88
  loc_66975C: Me.Enabled = from_stack_1b
  loc_669761: FFree1Ad var_88
  loc_669764: LitVar_TRUE var_98
  loc_669767: PopAdLdVar
  loc_669768: FLdPrThis
  loc_669769: VCallAd Control_ID_TablaTot
  loc_66976C: FStAdFunc var_88
  loc_66976F: FLdPr var_88
  loc_669772: LateIdSt
  loc_669777: FFree1Ad var_88
  loc_66977A: LitVarI4
  loc_669782: PopAdLdVar
  loc_669783: FLdPr Me
  loc_669786: MemLdRfVar from_stack_1.global_64
  loc_669789: CDargRef
  loc_66978D: FLdPrThis
  loc_66978E: VCallAd Control_ID_TablaTot
  loc_669791: FStAdFunc var_88
  loc_669794: FLdPr var_88
  loc_669797: LateIdCallSt
  loc_66979F: FFree1Ad var_88
  loc_6697A2: LitVarI4
  loc_6697AA: PopAdLdVar
  loc_6697AB: LitVarI4
  loc_6697B3: PopAdLdVar
  loc_6697B4: FLdPrThis
  loc_6697B5: VCallAd Control_ID_TablaTot
  loc_6697B8: FStAdFunc var_88
  loc_6697BB: FLdPr var_88
  loc_6697BE: LateIdCallSt
  loc_6697C6: FFree1Ad var_88
  loc_6697C9: LitVarI4
  loc_6697D1: PopAdLdVar
  loc_6697D2: LitVarI4
  loc_6697DA: PopAdLdVar
  loc_6697DB: LitStr "      "
  loc_6697DE: ImpAdLdI4 MemVar_74BED4
  loc_6697E1: ConcatStr
  loc_6697E2: FStStrNoPop var_AC
  loc_6697E5: LitStr " - "
  loc_6697E8: ConcatStr
  loc_6697E9: FStStrNoPop var_B0
  loc_6697EC: ImpAdLdI4 MemVar_74BEDC
  loc_6697EF: ConcatStr
  loc_6697F0: CVarStr var_C0
  loc_6697F3: PopAdLdVar
  loc_6697F4: FLdPrThis
  loc_6697F5: VCallAd Control_ID_TablaTot
  loc_6697F8: FStAdFunc var_88
  loc_6697FB: FLdPr var_88
  loc_6697FE: LateIdCallSt
  loc_669806: FFreeStr var_AC = ""
  loc_66980D: FFree1Ad var_88
  loc_669810: FFree1Var var_C0 = ""
  loc_669813: LitVarI4
  loc_66981B: PopAdLdVar
  loc_66981C: LitVarI4
  loc_669824: PopAdLdVar
  loc_669825: LitVarStr var_D0, "    Totalizador"
  loc_66982A: PopAdLdVar
  loc_66982B: FLdPrThis
  loc_66982C: VCallAd Control_ID_TablaTot
  loc_66982F: FStAdFunc var_88
  loc_669832: FLdPr var_88
  loc_669835: LateIdCallSt
  loc_66983D: FFree1Ad var_88
  loc_669840: LitVarI2 var_98, 12
  loc_669845: PopAdLdVar
  loc_669846: FLdPrThis
  loc_669847: VCallAd Control_ID_TablaTot
  loc_66984A: FStAdFunc var_88
  loc_66984D: FLdPr var_88
  loc_669850: LateIdLdVar var_C0 DispID_-512 -1
  loc_669857: CastAdVar Me
  loc_66985B: FStAdFunc var_D4
  loc_66985E: FLdPr var_D4
  loc_669861: LateIdSt
  loc_669866: FFreeAd var_88 = ""
  loc_66986D: FFree1Var var_C0 = ""
  loc_669870: LitVarI4
  loc_669878: PopAdLdVar
  loc_669879: FLdPrThis
  loc_66987A: VCallAd Control_ID_TablaTot
  loc_66987D: FStAdFunc var_88
  loc_669880: FLdPr var_88
  loc_669883: LateIdCallLdVar
  loc_66988D: CI4Var
  loc_66988F: LitVarI4
  loc_669897: PopAdLdVar
  loc_669898: FLdPrThis
  loc_669899: VCallAd Control_ID_TablaTot
  loc_66989C: FStAdFunc var_D4
  loc_66989F: FLdPr var_D4
  loc_6698A2: LateIdCallLdVar
  loc_6698AC: CI4Var
  loc_6698AE: AddI4
  loc_6698AF: LitI4 &H12C
  loc_6698B4: AddI4
  loc_6698B5: CR8I4
  loc_6698B6: CVarR4
  loc_6698BA: PopAdLdVar
  loc_6698BB: FLdPrThis
  loc_6698BC: VCallAd Control_ID_TablaTot
  loc_6698BF: FStAdFunc var_E8
  loc_6698C2: FLdPr var_E8
  loc_6698C5: LateIdSt
  loc_6698CA: FFreeAd var_88 = "": var_D4 = ""
  loc_6698D3: FFreeVar var_C0 = ""
  loc_6698DA: FLdPrThis
  loc_6698DB: VCallAd Control_ID_TablaTot
  loc_6698DE: FStAdFunc var_88
  loc_6698E1: FLdPr var_88
  loc_6698E4: LateIdLdVar var_C0 DispID_5 -32767
  loc_6698EB: CR8Var
  loc_6698ED: LitI2 300
  loc_6698F0: CR8I2
  loc_6698F1: AddR8
  loc_6698F2: PopFPR4
  loc_6698F3: FLdPr Me
  loc_6698F6: Me.Width = from_stack_1s
  loc_6698FB: FFree1Ad var_88
  loc_6698FE: FFree1Var var_C0 = ""
  loc_669901: FLdRfVar var_EC
  loc_669904: FLdPr Me
  loc_669907:  = Me.Width
  loc_66990C: FLdFPR4 var_EC
  loc_66990F: LitI2 3150
  loc_669912: CR8I2
  loc_669913: SubR4
  loc_669914: LitI2_Byte 3
  loc_669916: CR8I2
  loc_669917: DivR8
  loc_669918: PopFPR4
  loc_669919: FLdPrThis
  loc_66991A: VCallAd Control_ID_Aceptar
  loc_66991D: FStAdFunc var_88
  loc_669920: FLdPr var_88
  loc_669923: Me.Left = from_stack_1s
  loc_669928: FFree1Ad var_88
  loc_66992B: FLdRfVar var_EC
  loc_66992E: FLdPrThis
  loc_66992F: VCallAd Control_ID_Aceptar
  loc_669932: FStAdFunc var_88
  loc_669935: FLdPr var_88
  loc_669938:  = Me.Left
  loc_66993D: FLdFPR4 var_EC
  loc_669940: LitI2_Byte 2
  loc_669942: CR8I2
  loc_669943: MulR8
  loc_669944: LitI2 1575
  loc_669947: CR8I2
  loc_669948: AddR8
  loc_669949: PopFPR4
  loc_66994A: FLdPrThis
  loc_66994B: VCallAd Control_ID_Cancelar
  loc_66994E: FStAdFunc var_D4
  loc_669951: FLdPr var_D4
  loc_669954: Me.Left = from_stack_1s
  loc_669959: FFreeAd var_88 = ""
  loc_669960: FLdPr Me
  loc_669963: MemLdI2 global_52
  loc_669966: LitI2_Byte &H16
  loc_669968: LtI2
  loc_669969: BranchF loc_669A54
  loc_66996C: FLdPrThis
  loc_66996D: VCallAd Control_ID_TablaTot
  loc_669970: FStAdFunc var_88
  loc_669973: FLdPr var_88
  loc_669976: LateIdLdVar var_C0 DispID_4 0
  loc_66997D: CI4Var
  loc_66997F: LitVarI4
  loc_669987: PopAdLdVar
  loc_669988: FLdPrThis
  loc_669989: VCallAd Control_ID_TablaTot
  loc_66998C: FStAdFunc var_D4
  loc_66998F: FLdPr var_D4
  loc_669992: LateIdCallLdVar
  loc_66999C: CI4Var
  loc_66999E: MulI4
  loc_66999F: LitI4 &H50
  loc_6699A4: AddI4
  loc_6699A5: CR8I4
  loc_6699A6: CVarR4
  loc_6699AA: PopAdLdVar
  loc_6699AB: FLdPrThis
  loc_6699AC: VCallAd Control_ID_TablaTot
  loc_6699AF: FStAdFunc var_E8
  loc_6699B2: FLdPr var_E8
  loc_6699B5: LateIdSt
  loc_6699BA: FFreeAd var_88 = "": var_D4 = ""
  loc_6699C3: FFreeVar var_C0 = ""
  loc_6699CA: FLdPrThis
  loc_6699CB: VCallAd Control_ID_TablaTot
  loc_6699CE: FStAdFunc var_88
  loc_6699D1: FLdPr var_88
  loc_6699D4: LateIdLdVar var_C0 DispID_6 -32767
  loc_6699DB: CR8Var
  loc_6699DD: LitI2 1500
  loc_6699E0: CR8I2
  loc_6699E1: AddR8
  loc_6699E2: PopFPR4
  loc_6699E3: ImpAdLdRf MemVar_74E1DC
  loc_6699E6: NewIfNullPr frmTotalizadores
  loc_6699E9: frmTotalizadores.Height = from_stack_1s
  loc_6699EE: FFree1Ad var_88
  loc_6699F1: FFree1Var var_C0 = ""
  loc_6699F4: FLdPrThis
  loc_6699F5: VCallAd Control_ID_TablaTot
  loc_6699F8: FStAdFunc var_88
  loc_6699FB: FLdPr var_88
  loc_6699FE: LateIdLdVar var_C0 DispID_6 -32767
  loc_669A05: CR8Var
  loc_669A07: LitI2 300
  loc_669A0A: CR8I2
  loc_669A0B: AddR8
  loc_669A0C: PopFPR4
  loc_669A0D: FLdPrThis
  loc_669A0E: VCallAd Control_ID_Aceptar
  loc_669A11: FStAdFunc var_D4
  loc_669A14: FLdPr var_D4
  loc_669A17: Me.Top = from_stack_1s
  loc_669A1C: FFreeAd var_88 = ""
  loc_669A23: FFree1Var var_C0 = ""
  loc_669A26: FLdRfVar var_EC
  loc_669A29: FLdPrThis
  loc_669A2A: VCallAd Control_ID_Aceptar
  loc_669A2D: FStAdFunc var_88
  loc_669A30: FLdPr var_88
  loc_669A33:  = Me.Top
  loc_669A38: ILdRf var_EC
  loc_669A3B: FLdPrThis
  loc_669A3C: VCallAd Control_ID_Cancelar
  loc_669A3F: FStAdFunc var_D4
  loc_669A42: FLdPr var_D4
  loc_669A45: Me.Top = from_stack_1s
  loc_669A4A: FFreeAd var_88 = ""
  loc_669A51: Branch loc_669B08
  loc_669A54: FLdRfVar var_EC
  loc_669A57: ImpAdLdRf MemVar_74D8B0
  loc_669A5A: NewIfNullPr Consola
  loc_669A5D:  = Consola.Height
  loc_669A62: FLdFPR4 var_EC
  loc_669A65: LitI2 2000
  loc_669A68: CR8I2
  loc_669A69: SubR4
  loc_669A6A: CVarR4
  loc_669A6E: PopAdLdVar
  loc_669A6F: FLdPrThis
  loc_669A70: VCallAd Control_ID_TablaTot
  loc_669A73: FStAdFunc var_88
  loc_669A76: FLdPr var_88
  loc_669A79: LateIdSt
  loc_669A7E: FFree1Ad var_88
  loc_669A81: FLdPrThis
  loc_669A82: VCallAd Control_ID_TablaTot
  loc_669A85: FStAdFunc var_88
  loc_669A88: FLdPr var_88
  loc_669A8B: LateIdLdVar var_C0 DispID_6 -32767
  loc_669A92: CR8Var
  loc_669A94: LitI2 1500
  loc_669A97: CR8I2
  loc_669A98: AddR8
  loc_669A99: PopFPR4
  loc_669A9A: ImpAdLdRf MemVar_74E1DC
  loc_669A9D: NewIfNullPr frmTotalizadores
  loc_669AA0: frmTotalizadores.Height = from_stack_1s
  loc_669AA5: FFree1Ad var_88
  loc_669AA8: FFree1Var var_C0 = ""
  loc_669AAB: FLdPrThis
  loc_669AAC: VCallAd Control_ID_TablaTot
  loc_669AAF: FStAdFunc var_88
  loc_669AB2: FLdPr var_88
  loc_669AB5: LateIdLdVar var_C0 DispID_6 -32767
  loc_669ABC: CR8Var
  loc_669ABE: LitI2 300
  loc_669AC1: CR8I2
  loc_669AC2: AddR8
  loc_669AC3: PopFPR4
  loc_669AC4: FLdPrThis
  loc_669AC5: VCallAd Control_ID_Aceptar
  loc_669AC8: FStAdFunc var_D4
  loc_669ACB: FLdPr var_D4
  loc_669ACE: Me.Top = from_stack_1s
  loc_669AD3: FFreeAd var_88 = ""
  loc_669ADA: FFree1Var var_C0 = ""
  loc_669ADD: FLdRfVar var_EC
  loc_669AE0: FLdPrThis
  loc_669AE1: VCallAd Control_ID_Aceptar
  loc_669AE4: FStAdFunc var_88
  loc_669AE7: FLdPr var_88
  loc_669AEA:  = Me.Top
  loc_669AEF: ILdRf var_EC
  loc_669AF2: FLdPrThis
  loc_669AF3: VCallAd Control_ID_Cancelar
  loc_669AF6: FStAdFunc var_D4
  loc_669AF9: FLdPr var_D4
  loc_669AFC: Me.Top = from_stack_1s
  loc_669B01: FFreeAd var_88 = ""
  loc_669B08: ExitProcHresult
  loc_669B09: FLdRfVar var_2
End Function
