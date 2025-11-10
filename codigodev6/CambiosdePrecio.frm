VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form CambiosdePrecio
  Caption = "Cambios de precio"
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
  ClientWidth = 6735
  ClientHeight = 3540
  StartUpPosition = 3 'Windows Default
  Begin VB.Frame fram
    Left = 120
    Top = 120
    Width = 6495
    Height = 2535
    TabIndex = 3
    Begin MSFlexGridLib.MSFlexGrid TF
      Left = 120
      Top = 240
      Width = 6225
      Height = 2055
      TabIndex = 0
      OleObjectBlob = "CambiosdePrecio.frx":0000
    End
  End
  Begin VB.CommandButton Command1
    Caption = "&Ver"
    Left = 3120
    Top = 2880
    Width = 1634
    Height = 555
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command2
    Caption = "&Salir"
    Left = 4800
    Top = 2880
    Width = 1634
    Height = 555
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "CambiosdePrecio"


Private Sub Command2_Click() '5D1A14
  'Data Table: 40CD1C
  loc_5D19FC: ILdRf Me
  loc_5D19FF: FStAdNoPop
  loc_5D1A03: ImpAdLdRf MemVar_7520D4
  loc_5D1A06: NewIfNullPr Global
  loc_5D1A09: Global.Unload from_stack_1
  loc_5D1A0E: FFree1Ad var_88
  loc_5D1A11: ExitProcHresult
  loc_5D1A12: FLdPr var_5BFE
End Sub

Private Sub TF_KeyDown(KeyCode As Integer, Shift As Integer) '5D900C
  'Data Table: 40CD1C
  loc_5D8FDC: FLdPrThis
  loc_5D8FDD: VCallAd Control_ID_TF
  loc_5D8FE0: FStAdFunc var_88
  loc_5D8FE3: FLdPr var_88
  loc_5D8FE6: LateIdLdVar var_98 DispID_10 0
  loc_5D8FED: CI4Var
  loc_5D8FEF: LitI4 0
  loc_5D8FF4: GtI4
  loc_5D8FF5: FFree1Ad var_88
  loc_5D8FF8: FFree1Var var_98 = ""
  loc_5D8FFB: BranchF loc_5D9009
  loc_5D8FFE: FLdRfVar var_98
  loc_5D9001: from_stack_1v = VerCambioPrecios()
  loc_5D9006: FFree1Var var_98 = ""
  loc_5D9009: ExitProcHresult
  loc_5D900A: FLdRfVar var_5C00
End Sub

Private Sub TF_DblClick(arg_C) '5DACDC
  'Data Table: 40CD1C
  loc_5DACA4: ILdI2 arg_C
  loc_5DACA7: LitI2_Byte &HD
  loc_5DACA9: EqI2
  loc_5DACAA: FLdPrThis
  loc_5DACAB: VCallAd Control_ID_TF
  loc_5DACAE: FStAdFunc var_88
  loc_5DACB1: FLdPr var_88
  loc_5DACB4: LateIdLdVar var_98 DispID_10 0
  loc_5DACBB: CI4Var
  loc_5DACBD: LitI4 0
  loc_5DACC2: GtI4
  loc_5DACC3: AndI4
  loc_5DACC4: FFree1Ad var_88
  loc_5DACC7: FFree1Var var_98 = ""
  loc_5DACCA: BranchF loc_5DACD8
  loc_5DACCD: FLdRfVar var_98
  loc_5DACD0: from_stack_1v = VerCambioPrecios()
  loc_5DACD5: FFree1Var var_98 = ""
  loc_5DACD8: ExitProcHresult
End Sub

Private Sub Command1_Click() '5CDAB0
  'Data Table: 40CD1C
  loc_5CDAA4: FLdRfVar var_94
  loc_5CDAA7: from_stack_1v = VerCambioPrecios()
  loc_5CDAAC: FFree1Var var_94 = ""
  loc_5CDAAF: ExitProcHresult
End Sub

Private Sub Form_Load() '63B814
  'Data Table: 40CD1C
  loc_63B5EC: LitVarI4
  loc_63B5F4: PopAdLdVar
  loc_63B5F5: FLdPrThis
  loc_63B5F6: VCallAd Control_ID_TF
  loc_63B5F9: FStAdFunc var_98
  loc_63B5FC: FLdPr var_98
  loc_63B5FF: LateIdSt
  loc_63B604: FFree1Ad var_98
  loc_63B607: LitVarI4
  loc_63B60F: PopAdLdVar
  loc_63B610: FLdPrThis
  loc_63B611: VCallAd Control_ID_TF
  loc_63B614: FStAdFunc var_98
  loc_63B617: FLdPr var_98
  loc_63B61A: LateIdSt
  loc_63B61F: FFree1Ad var_98
  loc_63B622: LitVarI4
  loc_63B62A: PopAdLdVar
  loc_63B62B: LitVarI4
  loc_63B633: PopAdLdVar
  loc_63B634: LitVarStr var_B8, "FECHA"
  loc_63B639: PopAdLdVar
  loc_63B63A: FLdPrThis
  loc_63B63B: VCallAd Control_ID_TF
  loc_63B63E: FStAdFunc var_98
  loc_63B641: FLdPr var_98
  loc_63B644: LateIdCallSt
  loc_63B64C: FFree1Ad var_98
  loc_63B64F: LitVarI4
  loc_63B657: PopAdLdVar
  loc_63B658: LitVarI4
  loc_63B660: PopAdLdVar
  loc_63B661: LitVarStr var_B8, "HORA"
  loc_63B666: PopAdLdVar
  loc_63B667: FLdPrThis
  loc_63B668: VCallAd Control_ID_TF
  loc_63B66B: FStAdFunc var_98
  loc_63B66E: FLdPr var_98
  loc_63B671: LateIdCallSt
  loc_63B679: FFree1Ad var_98
  loc_63B67C: LitVarI4
  loc_63B684: PopAdLdVar
  loc_63B685: LitVarI4
  loc_63B68D: PopAdLdVar
  loc_63B68E: LitVarStr var_B8, "MODO ALTA"
  loc_63B693: PopAdLdVar
  loc_63B694: FLdPrThis
  loc_63B695: VCallAd Control_ID_TF
  loc_63B698: FStAdFunc var_98
  loc_63B69B: FLdPr var_98
  loc_63B69E: LateIdCallSt
  loc_63B6A6: FFree1Ad var_98
  loc_63B6A9: LitVarI4
  loc_63B6B1: PopAdLdVar
  loc_63B6B2: LitVarI4
  loc_63B6BA: PopAdLdVar
  loc_63B6BB: FLdPrThis
  loc_63B6BC: VCallAd Control_ID_TF
  loc_63B6BF: FStAdFunc var_98
  loc_63B6C2: FLdPr var_98
  loc_63B6C5: LateIdCallSt
  loc_63B6CD: FFree1Ad var_98
  loc_63B6D0: LitVarI4
  loc_63B6D8: PopAdLdVar
  loc_63B6D9: LitVarI2 var_A8, 4
  loc_63B6DE: PopAdLdVar
  loc_63B6DF: FLdPrThis
  loc_63B6E0: VCallAd Control_ID_TF
  loc_63B6E3: FStAdFunc var_98
  loc_63B6E6: FLdPr var_98
  loc_63B6E9: LateIdCallSt
  loc_63B6F1: FFree1Ad var_98
  loc_63B6F4: LitVarI4
  loc_63B6FC: PopAdLdVar
  loc_63B6FD: LitVarI4
  loc_63B705: PopAdLdVar
  loc_63B706: FLdPrThis
  loc_63B707: VCallAd Control_ID_TF
  loc_63B70A: FStAdFunc var_98
  loc_63B70D: FLdPr var_98
  loc_63B710: LateIdCallSt
  loc_63B718: FFree1Ad var_98
  loc_63B71B: LitVarI4
  loc_63B723: PopAdLdVar
  loc_63B724: LitVarI2 var_A8, 4
  loc_63B729: PopAdLdVar
  loc_63B72A: FLdPrThis
  loc_63B72B: VCallAd Control_ID_TF
  loc_63B72E: FStAdFunc var_98
  loc_63B731: FLdPr var_98
  loc_63B734: LateIdCallSt
  loc_63B73C: FFree1Ad var_98
  loc_63B73F: LitVarI4
  loc_63B747: PopAdLdVar
  loc_63B748: LitVarI4
  loc_63B750: PopAdLdVar
  loc_63B751: FLdPrThis
  loc_63B752: VCallAd Control_ID_TF
  loc_63B755: FStAdFunc var_98
  loc_63B758: FLdPr var_98
  loc_63B75B: LateIdCallSt
  loc_63B763: FFree1Ad var_98
  loc_63B766: LitVarI4
  loc_63B76E: PopAdLdVar
  loc_63B76F: LitVarI2 var_A8, 4
  loc_63B774: PopAdLdVar
  loc_63B775: FLdPrThis
  loc_63B776: VCallAd Control_ID_TF
  loc_63B779: FStAdFunc var_98
  loc_63B77C: FLdPr var_98
  loc_63B77F: LateIdCallSt
  loc_63B787: FFree1Ad var_98
  loc_63B78A: LitVarI2 var_94, 12
  loc_63B78F: PopAdLdVar
  loc_63B790: FLdPrThis
  loc_63B791: VCallAd Control_ID_TF
  loc_63B794: FStAdFunc var_98
  loc_63B797: FLdPr var_98
  loc_63B79A: LateIdLdVar var_C8 DispID_-512 -1
  loc_63B7A1: CastAdVar Me
  loc_63B7A5: FStAdFunc var_CC
  loc_63B7A8: FLdPr var_CC
  loc_63B7AB: LateIdSt
  loc_63B7B0: FFreeAd var_98 = ""
  loc_63B7B7: FFree1Var var_C8 = ""
  loc_63B7BA: ILdRf Me
  loc_63B7BD: CastAd
  loc_63B7C0: FStAdFunc var_98
  loc_63B7C3: FLdRfVar var_98
  loc_63B7C6: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_63B7CB: FFree1Ad var_98
  loc_63B7CE: FLdRfVar var_CE
  loc_63B7D1: FLdPr Me
  loc_63B7D4: MemLdRfVar from_stack_1.global_56
  loc_63B7D7: NewIfNullRf
  loc_63B7DB: FLdPr Me
  loc_63B7DE: MemLdRfVar from_stack_1.global_52
  loc_63B7E1: NewIfNullPr CMsgPrice
  loc_63B7E9: FLdRfVar var_CE
  loc_63B7EC: FLdPr Me
  loc_63B7EF: MemLdRfVar from_stack_1.global_56
  loc_63B7F2: NewIfNullPr CResumePriceList
  loc_63B7FA: FLdI2 var_CE
  loc_63B7FD: NotI4
  loc_63B7FE: BranchF loc_63B810
  loc_63B801: FLdPr Me
  loc_63B804: MemLdRfVar from_stack_1.global_56
  loc_63B807: NewIfNullRf
  loc_63B80B: Call ArmarGrilla(from_stack_1v)
  loc_63B810: ExitProcHresult
  loc_63B811: PopTmpLdAd2 arg_0
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D6808
  'Data Table: 40CD1C
  loc_5D67E0: LitNothing
  loc_5D67E2: CastAd
  loc_5D67E5: FStAdFuncNoPop
  loc_5D67E8: FLdPr Me
  loc_5D67EB: MemStAd
  loc_5D67EF: FFree1Ad var_88
  loc_5D67F2: LitNothing
  loc_5D67F4: CastAd
  loc_5D67F7: FStAdFuncNoPop
  loc_5D67FA: FLdPr Me
  loc_5D67FD: MemStAd
  loc_5D6801: FFree1Ad var_88
  loc_5D6804: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E4C38
  'Data Table: 40CD1C
  loc_5E4BD8: FLdRfVar var_86
  loc_5E4BDB: FLdPr Me
  loc_5E4BDE: MemLdRfVar from_stack_1.global_56
  loc_5E4BE1: NewIfNullPr CResumePriceList
  loc_5E4BE9: FLdI2 var_86
  loc_5E4BEC: BranchF loc_5E4C35
  loc_5E4BEF: LitVar_Missing var_108
  loc_5E4BF2: LitVar_Missing var_E8
  loc_5E4BF5: LitVarStr var_B8, "Precios Pendientes"
  loc_5E4BFA: FStVarCopyObj var_C8
  loc_5E4BFD: FLdRfVar var_C8
  loc_5E4C00: LitI4 &H40
  loc_5E4C05: LitVarStr var_98, "No existen Precios Pendientes para mostrar."
  loc_5E4C0A: FStVarCopyObj var_A8
  loc_5E4C0D: FLdRfVar var_A8
  loc_5E4C10: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5E4C15: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5E4C20: ILdRf Me
  loc_5E4C23: FStAdNoPop
  loc_5E4C27: ImpAdLdRf MemVar_7520D4
  loc_5E4C2A: NewIfNullPr Global
  loc_5E4C2D: Global.Unload from_stack_1
  loc_5E4C32: FFree1Ad var_10C
  loc_5E4C35: ExitProcHresult
End Sub

Public Sub ArmarGrilla(Obj) '62D808
  'Data Table: 40CD1C
  loc_62D66C: LitVar_FALSE
  loc_62D670: PopAdLdVar
  loc_62D671: FLdPrThis
  loc_62D672: VCallAd Control_ID_TF
  loc_62D675: FStAdFunc var_A0
  loc_62D678: FLdPr var_A0
  loc_62D67B: LateIdSt
  loc_62D680: FFree1Ad var_A0
  loc_62D683: LitI2_Byte 1
  loc_62D685: FLdRfVar var_8A
  loc_62D688: FLdRfVar var_A2
  loc_62D68B: ILdPr
  loc_62D68E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62D693: FLdI2 var_A2
  loc_62D696: ForI2 var_A6
  loc_62D69C: FLdI2 var_8A
  loc_62D69F: LitI2_Byte 1
  loc_62D6A1: AddI2
  loc_62D6A2: CI4UI1
  loc_62D6A3: CVarI4
  loc_62D6A7: PopAdLdVar
  loc_62D6A8: FLdPrThis
  loc_62D6A9: VCallAd Control_ID_TF
  loc_62D6AC: FStAdFunc var_A0
  loc_62D6AF: FLdPr var_A0
  loc_62D6B2: LateIdSt
  loc_62D6B7: FFree1Ad var_A0
  loc_62D6BA: FLdRfVar var_AC
  loc_62D6BD: FLdI2 var_8A
  loc_62D6C0: LitI2_Byte 1
  loc_62D6C2: SubI2
  loc_62D6C3: ILdPr
  loc_62D6CB: FLdI2 var_8A
  loc_62D6CE: CI4UI1
  loc_62D6CF: CVarI4
  loc_62D6D3: PopAdLdVar
  loc_62D6D4: LitVarI4
  loc_62D6DC: PopAdLdVar
  loc_62D6DD: FLdRfVar var_BC
  loc_62D6E0: LitStr "/"
  loc_62D6E3: FStStrCopy var_B8
  loc_62D6E6: FLdRfVar var_B8
  loc_62D6E9: LitStr "DDMMAAAA"
  loc_62D6EC: FStStrCopy var_B4
  loc_62D6EF: FLdRfVar var_B4
  loc_62D6F2: FLdZeroAd var_AC
  loc_62D6F5: PopTmpLdAdStr
  loc_62D6F9: from_stack_4v = ConvertStrDate(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_62D6FE: FLdZeroAd var_BC
  loc_62D701: CVarStr var_DC
  loc_62D704: PopAdLdVar
  loc_62D705: FLdPrThis
  loc_62D706: VCallAd Control_ID_TF
  loc_62D709: FStAdFunc var_A0
  loc_62D70C: FLdPr var_A0
  loc_62D70F: LateIdCallSt
  loc_62D717: FFreeStr var_B0 = "": var_B4 = ""
  loc_62D720: FFree1Ad var_A0
  loc_62D723: FFree1Var var_DC = ""
  loc_62D726: FLdRfVar var_AC
  loc_62D729: FLdI2 var_8A
  loc_62D72C: LitI2_Byte 1
  loc_62D72E: SubI2
  loc_62D72F: ILdPr
  loc_62D737: FLdI2 var_8A
  loc_62D73A: CI4UI1
  loc_62D73B: CVarI4
  loc_62D73F: PopAdLdVar
  loc_62D740: LitVarI4
  loc_62D748: PopAdLdVar
  loc_62D749: FLdRfVar var_BC
  loc_62D74C: LitStr ":"
  loc_62D74F: FStStrCopy var_B8
  loc_62D752: FLdRfVar var_B8
  loc_62D755: LitStr "HHMM"
  loc_62D758: FStStrCopy var_B4
  loc_62D75B: FLdRfVar var_B4
  loc_62D75E: FLdZeroAd var_AC
  loc_62D761: PopTmpLdAdStr
  loc_62D765: from_stack_4v = ConvertStrDate(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_62D76A: FLdZeroAd var_BC
  loc_62D76D: CVarStr var_DC
  loc_62D770: PopAdLdVar
  loc_62D771: FLdPrThis
  loc_62D772: VCallAd Control_ID_TF
  loc_62D775: FStAdFunc var_A0
  loc_62D778: FLdPr var_A0
  loc_62D77B: LateIdCallSt
  loc_62D783: FFreeStr var_B0 = "": var_B4 = ""
  loc_62D78C: FFree1Ad var_A0
  loc_62D78F: FFree1Var var_DC = ""
  loc_62D792: FLdRfVar var_AC
  loc_62D795: FLdI2 var_8A
  loc_62D798: LitI2_Byte 1
  loc_62D79A: SubI2
  loc_62D79B: ILdPr
  loc_62D7A3: FLdI2 var_8A
  loc_62D7A6: CI4UI1
  loc_62D7A7: CVarI4
  loc_62D7AB: PopAdLdVar
  loc_62D7AC: LitVarI4
  loc_62D7B4: PopAdLdVar
  loc_62D7B5: FLdRfVar var_B4
  loc_62D7B8: FLdZeroAd var_AC
  loc_62D7BB: PopTmpLdAdStr
  loc_62D7BF: from_stack_2v = GetModo(from_stack_1v)
  loc_62D7C4: FLdZeroAd var_B4
  loc_62D7C7: CVarStr var_DC
  loc_62D7CA: PopAdLdVar
  loc_62D7CB: FLdPrThis
  loc_62D7CC: VCallAd Control_ID_TF
  loc_62D7CF: FStAdFunc var_A0
  loc_62D7D2: FLdPr var_A0
  loc_62D7D5: LateIdCallSt
  loc_62D7DD: FFree1Str var_B0
  loc_62D7E0: FFree1Ad var_A0
  loc_62D7E3: FFree1Var var_DC = ""
  loc_62D7E6: FLdRfVar var_8A
  loc_62D7E9: NextI2 var_A6, loc_62D69C
  loc_62D7EE: LitVar_TRUE var_9C
  loc_62D7F1: PopAdLdVar
  loc_62D7F2: FLdPrThis
  loc_62D7F3: VCallAd Control_ID_TF
  loc_62D7F6: FStAdFunc var_A0
  loc_62D7F9: FLdPr var_A0
  loc_62D7FC: LateIdSt
  loc_62D801: FFree1Ad var_A0
  loc_62D804: ExitProcHresult
End Sub

Public Function GetModo(sValor) '5DC040
  'Data Table: 40CD1C
  loc_5DBFFC: ZeroRetVal
  loc_5DBFFE: ILdI4 sValor
  loc_5DC001: ImpAdCallI2 Proc_98_0_5D7360()
  loc_5DC006: BranchF loc_5DC012
  loc_5DC009: LitStr "ARCHIVO"
  loc_5DC00C: FStStrCopy var_88
  loc_5DC00F: Branch loc_5DC03A
  loc_5DC012: ILdI4 sValor
  loc_5DC015: ImpAdCallI2 Proc_98_1_5D7300()
  loc_5DC01A: BranchF loc_5DC026
  loc_5DC01D: LitStr "PANTALLA"
  loc_5DC020: FStStrCopy var_88
  loc_5DC023: Branch loc_5DC03A
  loc_5DC026: ILdI4 sValor
  loc_5DC029: ImpAdCallI2 Asc()
  loc_5DC02E: LitI2_Byte &H41
  loc_5DC030: EqI2
  loc_5DC031: BranchF loc_5DC03A
  loc_5DC034: LitStr "PLATINO"
  loc_5DC037: FStStrCopy var_88
  loc_5DC03A: ExitProcCbHresult
End Function

Public Function ConvertStrDate(sValor, formato, Sep) '654EF8
  'Data Table: 40CD1C
  loc_654C48: ZeroRetVal
  loc_654C4A: ILdI4 formato
  loc_654C4D: FStStrCopy var_8C
  loc_654C50: ILdRf var_8C
  loc_654C53: LitStr "DDMMAAAA"
  loc_654C56: EqStr
  loc_654C58: BranchF loc_654CEC
  loc_654C5B: LitVarI2 var_BC, 2
  loc_654C60: LitI4 7
  loc_654C65: ILdRf sValor
  loc_654C68: CVarRef
  loc_654C6D: FLdRfVar var_CC
  loc_654C70: ImpAdCallFPR4  = Mid(, , )
  loc_654C75: FLdRfVar var_CC
  loc_654C78: ILdI4 Sep
  loc_654C7B: CVarStr var_DC
  loc_654C7E: AddVar var_EC
  loc_654C82: LitVarI2 var_11C, 2
  loc_654C87: LitI4 5
  loc_654C8C: ILdRf sValor
  loc_654C8F: CVarRef
  loc_654C94: FLdRfVar var_12C
  loc_654C97: ImpAdCallFPR4  = Mid(, , )
  loc_654C9C: FLdRfVar var_12C
  loc_654C9F: AddVar var_13C
  loc_654CA3: ILdI4 Sep
  loc_654CA6: CVarStr var_14C
  loc_654CA9: AddVar var_15C
  loc_654CAD: LitVarI2 var_18C, 4
  loc_654CB2: LitI4 1
  loc_654CB7: ILdRf sValor
  loc_654CBA: CVarRef
  loc_654CBF: FLdRfVar var_19C
  loc_654CC2: ImpAdCallFPR4  = Mid(, , )
  loc_654CC7: FLdRfVar var_19C
  loc_654CCA: AddVar var_1AC
  loc_654CCE: CStrVarTmp
  loc_654CCF: FStStr var_88
  loc_654CD2: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = "": var_13C = "": var_18C = "": var_15C = "": var_19C = ""
  loc_654CE9: Branch loc_654EF0
  loc_654CEC: ILdRf var_8C
  loc_654CEF: LitStr "HHMM"
  loc_654CF2: EqStr
  loc_654CF4: BranchF loc_654D55
  loc_654CF7: LitVarI2 var_BC, 2
  loc_654CFC: LitI4 9
  loc_654D01: ILdRf sValor
  loc_654D04: CVarRef
  loc_654D09: FLdRfVar var_CC
  loc_654D0C: ImpAdCallFPR4  = Mid(, , )
  loc_654D11: FLdRfVar var_CC
  loc_654D14: ILdI4 Sep
  loc_654D17: CVarStr var_DC
  loc_654D1A: AddVar var_EC
  loc_654D1E: LitVarI2 var_11C, 2
  loc_654D23: LitI4 &HB
  loc_654D28: ILdRf sValor
  loc_654D2B: CVarRef
  loc_654D30: FLdRfVar var_12C
  loc_654D33: ImpAdCallFPR4  = Mid(, , )
  loc_654D38: FLdRfVar var_12C
  loc_654D3B: AddVar var_13C
  loc_654D3F: CStrVarTmp
  loc_654D40: FStStr var_88
  loc_654D43: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = ""
  loc_654D52: Branch loc_654EF0
  loc_654D55: ILdRf var_8C
  loc_654D58: LitStr "DDMMAA"
  loc_654D5B: EqStr
  loc_654D5D: BranchF loc_654DF1
  loc_654D60: LitVarI2 var_BC, 2
  loc_654D65: LitI4 7
  loc_654D6A: ILdRf sValor
  loc_654D6D: CVarRef
  loc_654D72: FLdRfVar var_CC
  loc_654D75: ImpAdCallFPR4  = Mid(, , )
  loc_654D7A: FLdRfVar var_CC
  loc_654D7D: ILdI4 Sep
  loc_654D80: CVarStr var_DC
  loc_654D83: AddVar var_EC
  loc_654D87: LitVarI2 var_11C, 2
  loc_654D8C: LitI4 5
  loc_654D91: ILdRf sValor
  loc_654D94: CVarRef
  loc_654D99: FLdRfVar var_12C
  loc_654D9C: ImpAdCallFPR4  = Mid(, , )
  loc_654DA1: FLdRfVar var_12C
  loc_654DA4: AddVar var_13C
  loc_654DA8: ILdI4 Sep
  loc_654DAB: CVarStr var_14C
  loc_654DAE: AddVar var_15C
  loc_654DB2: LitVarI2 var_18C, 2
  loc_654DB7: LitI4 3
  loc_654DBC: ILdRf sValor
  loc_654DBF: CVarRef
  loc_654DC4: FLdRfVar var_19C
  loc_654DC7: ImpAdCallFPR4  = Mid(, , )
  loc_654DCC: FLdRfVar var_19C
  loc_654DCF: AddVar var_1AC
  loc_654DD3: CStrVarTmp
  loc_654DD4: FStStr var_88
  loc_654DD7: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = "": var_13C = "": var_18C = "": var_15C = "": var_19C = ""
  loc_654DEE: Branch loc_654EF0
  loc_654DF1: ILdRf var_8C
  loc_654DF4: LitStr "AAAAMMDDHHMM"
  loc_654DF7: EqStr
  loc_654DF9: BranchF loc_654EF0
  loc_654DFC: LitVarI2 var_BC, 4
  loc_654E01: LitI4 7
  loc_654E06: ILdRf sValor
  loc_654E09: CVarRef
  loc_654E0E: FLdRfVar var_CC
  loc_654E11: ImpAdCallFPR4  = Mid(, , )
  loc_654E16: FLdRfVar var_CC
  loc_654E19: ILdI4 Sep
  loc_654E1C: CVarStr var_DC
  loc_654E1F: AddVar var_EC
  loc_654E23: LitVarI2 var_11C, 2
  loc_654E28: LitI4 4
  loc_654E2D: ILdRf sValor
  loc_654E30: CVarRef
  loc_654E35: FLdRfVar var_12C
  loc_654E38: ImpAdCallFPR4  = Mid(, , )
  loc_654E3D: FLdRfVar var_12C
  loc_654E40: AddVar var_13C
  loc_654E44: ILdI4 Sep
  loc_654E47: CVarStr var_14C
  loc_654E4A: AddVar var_15C
  loc_654E4E: LitVarI2 var_18C, 2
  loc_654E53: LitI4 1
  loc_654E58: ILdRf sValor
  loc_654E5B: CVarRef
  loc_654E60: FLdRfVar var_19C
  loc_654E63: ImpAdCallFPR4  = Mid(, , )
  loc_654E68: FLdRfVar var_19C
  loc_654E6B: AddVar var_1AC
  loc_654E6F: ILdI4 Sep
  loc_654E72: CVarStr var_1BC
  loc_654E75: AddVar var_1CC
  loc_654E79: LitVarI2 var_1FC, 2
  loc_654E7E: LitI4 &HB
  loc_654E83: ILdRf sValor
  loc_654E86: CVarRef
  loc_654E8B: FLdRfVar var_20C
  loc_654E8E: ImpAdCallFPR4  = Mid(, , )
  loc_654E93: FLdRfVar var_20C
  loc_654E96: AddVar var_21C
  loc_654E9A: ILdI4 Sep
  loc_654E9D: CVarStr var_22C
  loc_654EA0: AddVar var_23C
  loc_654EA4: LitVarI2 var_26C, 2
  loc_654EA9: LitI4 &HE
  loc_654EAE: ILdRf sValor
  loc_654EB1: CVarRef
  loc_654EB6: FLdRfVar var_27C
  loc_654EB9: ImpAdCallFPR4  = Mid(, , )
  loc_654EBE: FLdRfVar var_27C
  loc_654EC1: AddVar var_28C
  loc_654EC5: CStrVarTmp
  loc_654EC6: FStStr var_88
  loc_654EC9: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = "": var_13C = "": var_18C = "": var_15C = "": var_19C = "": var_1AC = "": var_1FC = "": var_1CC = "": var_20C = "": var_21C = "": var_26C = "": var_23C = "": var_27C = ""
  loc_654EF0: ExitProcCbHresult
End Function

Public Function VerCambioPrecios() '6330F4
  'Data Table: 40CD1C
  loc_632F38: ZeroRetValVar
  loc_632F3A: FLdRfVar var_B6
  loc_632F3D: FLdPrThis
  loc_632F3E: VCallAd Control_ID_TF
  loc_632F41: FStAdFunc var_A4
  loc_632F44: FLdPr var_A4
  loc_632F47: LateIdLdVar var_B4 DispID_10 0
  loc_632F4E: CI4Var
  loc_632F50: LitI4 1
  loc_632F55: SubI4
  loc_632F56: CI2I4
  loc_632F57: FLdPr Me
  loc_632F5A: MemLdRfVar from_stack_1.global_56
  loc_632F5D: NewIfNullPr CResumePriceList
  loc_632F60:  = Forms
  loc_632F65: FLdI2 var_B6
  loc_632F68: FStI2 var_96
  loc_632F6B: FFree1Ad var_A4
  loc_632F6E: FFree1Var var_B4 = ""
  loc_632F71: FLdRfVar var_B6
  loc_632F74: FLdRfVar var_A0
  loc_632F77: NewIfNullRf
  loc_632F7B: FLdI2 var_96
  loc_632F7E: FLdPr Me
  loc_632F81: MemLdRfVar from_stack_1.global_52
  loc_632F84: NewIfNullPr CMsgPrice
  loc_632F8C: FLdI2 var_B6
  loc_632F8F: BranchF loc_632FDB
  loc_632F92: FLdRfVar var_B4
  loc_632F95: LitI2_Byte 0
  loc_632F97: PopTmpLdAd2 var_B6
  loc_632F9A: ImpAdLdRf MemVar_74DE1C
  loc_632F9D: NewIfNullPr PreciosConectividad
  loc_632FA0: from_stack_2v = PreciosConectividad.setAdvise(from_stack_1v)
  loc_632FA5: FFree1Var var_B4 = ""
  loc_632FA8: FLdRfVar var_B4
  loc_632FAB: FLdRfVar var_A0
  loc_632FAE: NewIfNullRf
  loc_632FB2: ImpAdLdRf MemVar_74DE1C
  loc_632FB5: NewIfNullPr PreciosConectividad
  loc_632FB8: from_stack_2v = PreciosConectividad.setPrice(from_stack_1v)
  loc_632FBD: FFree1Var var_B4 = ""
  loc_632FC0: LitVar_Missing var_D8
  loc_632FC3: PopAdLdVar
  loc_632FC4: LitVarI4
  loc_632FCC: PopAdLdVar
  loc_632FCD: ImpAdLdRf MemVar_74DE1C
  loc_632FD0: NewIfNullPr PreciosConectividad
  loc_632FD3: PreciosConectividad.Show from_stack_1, from_stack_2
  loc_632FD8: Branch loc_6330EE
  loc_632FDB: LitStr "No se ha encontrado ningun precio pendiente de aplicacion para el "
  loc_632FDE: FStStrCopy var_9C
  loc_632FE1: FLdPrThis
  loc_632FE2: VCallAd Control_ID_TF
  loc_632FE5: FStAdFunc var_A4
  loc_632FE8: FLdPr var_A4
  loc_632FEB: LateIdLdVar var_B4 DispID_10 0
  loc_632FF2: PopAd
  loc_632FF4: FLdRfVar var_DC
  loc_632FF7: FLdRfVar var_B4
  loc_632FFA: CI4Var
  loc_632FFC: LitI4 1
  loc_633001: SubI4
  loc_633002: CI2I4
  loc_633003: FLdPr Me
  loc_633006: MemLdRfVar from_stack_1.global_56
  loc_633009: NewIfNullPr CResumePriceList
  loc_633011: ILdRf var_9C
  loc_633014: FLdRfVar var_EC
  loc_633017: LitStr "/"
  loc_63301A: FStStrCopy var_E8
  loc_63301D: FLdRfVar var_E8
  loc_633020: LitStr "DDMMAAAA"
  loc_633023: FStStrCopy var_E4
  loc_633026: FLdRfVar var_E4
  loc_633029: FLdZeroAd var_DC
  loc_63302C: PopTmpLdAdStr
  loc_633030: from_stack_4v = ConvertStrDate(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_633035: ILdRf var_EC
  loc_633038: ConcatStr
  loc_633039: FStStrNoPop var_F0
  loc_63303C: LitStr " "
  loc_63303F: ConcatStr
  loc_633040: FStStr var_9C
  loc_633043: FFreeStr var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_633050: FFree1Ad var_A4
  loc_633053: FFree1Var var_B4 = ""
  loc_633056: FLdPrThis
  loc_633057: VCallAd Control_ID_TF
  loc_63305A: FStAdFunc var_A4
  loc_63305D: FLdPr var_A4
  loc_633060: LateIdLdVar var_B4 DispID_10 0
  loc_633067: PopAd
  loc_633069: FLdRfVar var_DC
  loc_63306C: FLdRfVar var_B4
  loc_63306F: CI4Var
  loc_633071: LitI4 1
  loc_633076: SubI4
  loc_633077: CI2I4
  loc_633078: FLdPr Me
  loc_63307B: MemLdRfVar from_stack_1.global_56
  loc_63307E: NewIfNullPr CResumePriceList
  loc_633086: ILdRf var_9C
  loc_633089: FLdRfVar var_EC
  loc_63308C: LitStr ":"
  loc_63308F: FStStrCopy var_E8
  loc_633092: FLdRfVar var_E8
  loc_633095: LitStr "HHMM"
  loc_633098: FStStrCopy var_E4
  loc_63309B: FLdRfVar var_E4
  loc_63309E: FLdZeroAd var_DC
  loc_6330A1: PopTmpLdAdStr
  loc_6330A5: from_stack_4v = ConvertStrDate(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6330AA: ILdRf var_EC
  loc_6330AD: ConcatStr
  loc_6330AE: FStStr var_9C
  loc_6330B1: FFreeStr var_E0 = "": var_E4 = "": var_E8 = ""
  loc_6330BC: FFree1Ad var_A4
  loc_6330BF: FFree1Var var_B4 = ""
  loc_6330C2: LitVar_Missing var_130
  loc_6330C5: LitVar_Missing var_110
  loc_6330C8: LitVarStr var_D8, "Precios Pendientes"
  loc_6330CD: FStVarCopyObj var_B4
  loc_6330D0: FLdRfVar var_B4
  loc_6330D3: LitI4 &H40
  loc_6330D8: FLdRfVar var_9C
  loc_6330DB: CVarRef
  loc_6330E0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6330E5: FFreeVar var_B4 = "": var_110 = ""
  loc_6330EE: ExitProcCbHresult
End Function
