
Private Function Proc_166_0_5D9070() '5D9070
  'Data Table: 409184
  loc_5D9044: FLdRfVar var_90
  loc_5D9047: FLdRfVar var_8C
  loc_5D904A: ImpAdLdRf MemVar_7520D4
  loc_5D904D: NewIfNullPr Global
  loc_5D9050:  = Global.App
  loc_5D9055: FLdPr var_8C
  loc_5D9058:  = App.Path
  loc_5D905D: ILdRf var_90
  loc_5D9060: LitStr "\Conectividad.bin"
  loc_5D9063: ConcatStr
  loc_5D9064: FStStr var_88
  loc_5D9067: FFree1Str var_90
  loc_5D906A: FFree1Ad var_8C
  loc_5D906D: ExitProc
End Function

Private Function Proc_166_1_5E45D4(arg_10) '5E45D4
  'Data Table: 40898C
  loc_5E4570: FLdRfVar var_92
  loc_5E4573: FLdRfVar var_8C
  loc_5E4576: FLdRfVar var_90
  loc_5E4579: ImpAdLdRf MemVar_74C760
  loc_5E457C: NewIfNullPr Formx
  loc_5E457F: from_stack_1v = Formx.global_4589716Get()
  loc_5E4584: FLdPr var_90
  loc_5E4587: Call 0.Method_arg_368 ()
  loc_5E458C: FLdI2 var_92
  loc_5E458F: NotI4
  loc_5E4590: FFree1Ad var_90
  loc_5E4593: BranchF loc_5E45CC
  loc_5E4596: FLdRfVar var_A4
  loc_5E4599: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E459E: FLdRfVar var_A4
  loc_5E45A1: CBoolVarNull
  loc_5E45A3: FFree1Var var_A4 = ""
  loc_5E45A6: BranchF loc_5E45C9
  loc_5E45A9: LitI2_Byte 0
  loc_5E45AB: ILdPr
  loc_5E45AE: Formx.Timer.Enabled = from_stack_1b
  loc_5E45B3: ILdI4 arg_10
  loc_5E45B6: FStAdNoPop
  loc_5E45BA: ImpAdLdRf MemVar_7520D4
  loc_5E45BD: NewIfNullPr Global
  loc_5E45C0: Global.Unload from_stack_1
  loc_5E45C5: FFree1Ad var_90
  loc_5E45C8: ExitProc
  loc_5E45C9: Branch loc_5E4570
  loc_5E45CC: ILdRf var_8C
  loc_5E45CF: FStStrCopy var_88
  loc_5E45D2: ExitProc
End Function

Private Function Proc_166_2_670C20() '670C20
  'Data Table: 40898C
  loc_6708B0: OnErrorGoto loc_670C18
  loc_6708B3: LitI2_Byte &HFF
  loc_6708B5: FStI2 var_86
  loc_6708B8: LitI2_Byte 0
  loc_6708BA: FStI2 var_9E
  loc_6708BD: ImpAdCallI2 Proc_166_0_5D9070()
  loc_6708C2: PopTmpLdAdStr
  loc_6708C6: LitStr "Hora"
  loc_6708C9: FStStrCopy var_A8
  loc_6708CC: FLdRfVar var_A8
  loc_6708CF: LitStr "Debitos"
  loc_6708D2: FStStrCopy var_A4
  loc_6708D5: FLdRfVar var_A4
  loc_6708D8: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6708DD: FStStr var_8C
  loc_6708E0: FFreeStr var_A4 = "": var_A8 = ""
  loc_6708E9: ILdRf var_8C
  loc_6708EC: LitStr vbNullString
  loc_6708EF: EqStr
  loc_6708F1: NotI4
  loc_6708F2: BranchF loc_670902
  loc_6708F5: ILdRf var_8C
  loc_6708F8: CDateStr
  loc_6708FA: FStFPR8 var_94
  loc_6708FD: LitI2_Byte &HFF
  loc_6708FF: FStI2 var_9E
  loc_670902: ImpAdCallI2 Proc_166_0_5D9070()
  loc_670907: PopTmpLdAdStr
  loc_67090B: LitStr "Durante"
  loc_67090E: FStStrCopy var_A8
  loc_670911: FLdRfVar var_A8
  loc_670914: LitStr "Debitos"
  loc_670917: FStStrCopy var_A4
  loc_67091A: FLdRfVar var_A4
  loc_67091D: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_670922: FStStr var_8C
  loc_670925: FFreeStr var_A4 = "": var_A8 = ""
  loc_67092E: ILdRf var_8C
  loc_670931: LitStr vbNullString
  loc_670934: EqStr
  loc_670936: NotI4
  loc_670937: BranchF loc_67098C
  loc_67093A: ILdRf var_8C
  loc_67093D: LitStr "00:00:00"
  loc_670940: EqStr
  loc_670942: BranchF loc_67094B
  loc_670945: LitStr "01:00:00"
  loc_670948: FStStrCopy var_8C
  loc_67094B: LitI4 1
  loc_670950: LitI4 1
  loc_670955: LitVarStr var_DC, "h:m:s"
  loc_67095A: FStVarCopyObj var_EC
  loc_67095D: FLdRfVar var_EC
  loc_670960: FLdFPR8 var_94
  loc_670963: ILdRf var_8C
  loc_670966: CDateStr
  loc_670968: AddR8
  loc_670969: CDateR8
  loc_67096A: CVarDate var_CC
  loc_67096E: FLdRfVar var_FC
  loc_670971: ImpAdCallFPR4  = Format(, )
  loc_670976: FLdRfVar var_FC
  loc_670979: FnCDateVar
  loc_67097B: FStFPR8 var_9C
  loc_67097E: FFreeVar var_CC = "": var_EC = ""
  loc_670987: LitI2_Byte &HFF
  loc_670989: FStI2 var_9E
  loc_67098C: FLdFPR8 var_94
  loc_67098F: FLdFPR8 var_9C
  loc_670992: LeR8
  loc_670993: CVarBoolI2 var_DC
  loc_670997: FLdFPR8 var_94
  loc_67099A: CVarDate var_BC
  loc_67099E: HardType
  loc_67099F: FLdRfVar var_CC
  loc_6709A2: ImpAdCallFPR4  = Time
  loc_6709A7: FLdRfVar var_CC
  loc_6709AA: LeVar var_EC
  loc_6709AE: AndVar var_FC
  loc_6709B2: FLdRfVar var_10C
  loc_6709B5: ImpAdCallFPR4  = Time
  loc_6709BA: FLdRfVar var_10C
  loc_6709BD: FLdFPR8 var_9C
  loc_6709C0: CVarDate var_11C
  loc_6709C4: HardType
  loc_6709C5: LeVar var_12C
  loc_6709C9: AndVar var_13C
  loc_6709CD: FLdFPR8 var_9C
  loc_6709D0: FLdFPR8 var_94
  loc_6709D3: LtR8
  loc_6709D4: CVarBoolI2 var_1BC
  loc_6709D8: FLdFPR8 var_94
  loc_6709DB: CVarDate var_15C
  loc_6709DF: HardType
  loc_6709E0: FLdRfVar var_14C
  loc_6709E3: ImpAdCallFPR4  = Time
  loc_6709E8: FLdRfVar var_14C
  loc_6709EB: LeVar var_16C
  loc_6709EF: FLdRfVar var_17C
  loc_6709F2: ImpAdCallFPR4  = Time
  loc_6709F7: FLdRfVar var_17C
  loc_6709FA: FLdFPR8 var_9C
  loc_6709FD: CVarDate var_18C
  loc_670A01: HardType
  loc_670A02: LeVar var_19C
  loc_670A06: OrVar var_1AC
  loc_670A0A: AndVar var_1CC
  loc_670A0E: OrVar var_1DC
  loc_670A12: FLdI2 var_9E
  loc_670A15: NotI4
  loc_670A16: CVarBoolI2 var_1EC
  loc_670A1A: OrVar var_1FC
  loc_670A1E: CBoolVarNull
  loc_670A20: FFreeVar var_CC = "": var_DC = "": var_10C = "": var_14C = "": var_17C = "": var_1BC = ""
  loc_670A31: BranchF loc_670C17
  loc_670A34: FLdRfVar var_202
  loc_670A37: FLdRfVar var_200
  loc_670A3A: ImpAdLdRf MemVar_74C760
  loc_670A3D: NewIfNullPr Formx
  loc_670A40: from_stack_1v = Formx.global_4589716Get()
  loc_670A45: FLdPr var_200
  loc_670A48: Call 0.Method_arg_370 ()
  loc_670A4D: FFree1Ad var_200
  loc_670A50: FLdRfVar var_A8
  loc_670A53: LitVar_Missing var_19C
  loc_670A56: LitVar_Missing var_17C
  loc_670A59: LitVar_Missing var_16C
  loc_670A5C: LitVar_Missing var_14C
  loc_670A5F: LitVar_Missing var_13C
  loc_670A62: LitVar_Missing var_12C
  loc_670A65: LitVar_Missing var_10C
  loc_670A68: LitVar_Missing var_FC
  loc_670A6B: LitVar_Missing var_EC
  loc_670A6E: LitVar_Missing var_CC
  loc_670A71: LitStr "Un nuevo aviso de débito de saldo de rendición de consignación a debitar ha sido recepcionado."
  loc_670A74: FStStrCopy var_A4
  loc_670A77: FLdRfVar var_A4
  loc_670A7A: LitI4 &HF
  loc_670A7F: PopTmpLdAdStr var_208
  loc_670A82: LitI2_Byte &H23
  loc_670A84: PopTmpLdAd2 var_202
  loc_670A87: ImpAdLdRf MemVar_74C7D0
  loc_670A8A: NewIfNullPr clsMsg
  loc_670A8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_670A92: LitI4 &HD
  loc_670A97: ImpAdCallI2 Chr$()
  loc_670A9C: FStStr var_508
  loc_670A9F: LitI4 &HD
  loc_670AA4: ImpAdCallI2 Chr$()
  loc_670AA9: FStStr var_50C
  loc_670AAC: FLdRfVar var_350
  loc_670AAF: LitVar_Missing var_34C
  loc_670AB2: LitVar_Missing var_32C
  loc_670AB5: LitVar_Missing var_30C
  loc_670AB8: LitVar_Missing var_2EC
  loc_670ABB: LitVar_Missing var_2CC
  loc_670ABE: LitVar_Missing var_2AC
  loc_670AC1: LitVar_Missing var_1FC
  loc_670AC4: LitVar_Missing var_1DC
  loc_670AC7: LitVar_Missing var_1CC
  loc_670ACA: LitVar_Missing var_1AC
  loc_670ACD: LitStr "Desea Ud. visualizarlo en este momento?"
  loc_670AD0: FStStrCopy var_24C
  loc_670AD3: FLdRfVar var_24C
  loc_670AD6: LitI4 &H10
  loc_670ADB: PopTmpLdAdStr var_248
  loc_670ADE: LitI2_Byte &H23
  loc_670AE0: PopTmpLdAd2 var_242
  loc_670AE3: ImpAdLdRf MemVar_74C7D0
  loc_670AE6: NewIfNullPr clsMsg
  loc_670AE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_670AEE: FLdRfVar var_4A4
  loc_670AF1: LitVar_Missing var_4A0
  loc_670AF4: LitVar_Missing var_480
  loc_670AF7: LitVar_Missing var_460
  loc_670AFA: LitVar_Missing var_440
  loc_670AFD: LitVar_Missing var_420
  loc_670B00: LitVar_Missing var_400
  loc_670B03: LitVar_Missing var_3E0
  loc_670B06: LitVar_Missing var_3C0
  loc_670B09: LitVar_Missing var_3A0
  loc_670B0C: LitVar_Missing var_380
  loc_670B0F: LitStr "Aviso de débito de Consignación"
  loc_670B12: FStStrCopy var_360
  loc_670B15: FLdRfVar var_360
  loc_670B18: LitI4 &H11
  loc_670B1D: PopTmpLdAdStr var_35C
  loc_670B20: LitI2_Byte &H23
  loc_670B22: PopTmpLdAd2 var_356
  loc_670B25: ImpAdLdRf MemVar_74C7D0
  loc_670B28: NewIfNullPr clsMsg
  loc_670B2B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_670B30: LitVar_Missing var_504
  loc_670B33: LitVar_Missing var_4E4
  loc_670B36: FLdZeroAd var_4A4
  loc_670B39: CVarStr var_4C4
  loc_670B3C: LitI4 &H44
  loc_670B41: ILdRf var_A8
  loc_670B44: FLdZeroAd var_508
  loc_670B47: FStStrNoPop var_AC
  loc_670B4A: ConcatStr
  loc_670B4B: FStStrNoPop var_23C
  loc_670B4E: FLdZeroAd var_50C
  loc_670B51: FStStrNoPop var_240
  loc_670B54: ConcatStr
  loc_670B55: FStStrNoPop var_354
  loc_670B58: ILdRf var_350
  loc_670B5B: ConcatStr
  loc_670B5C: CVarStr var_4B4
  loc_670B5F: ImpAdCallI2 MsgBox(, , , , )
  loc_670B64: LitI4 6
  loc_670B69: EqI4
  loc_670B6A: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_23C = "": var_240 = "": var_24C = "": var_354 = "": var_350 = "": var_360 = "": var_508 = ""
  loc_670B83: FFreeVar var_4B4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1FC = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_380 = "": var_3A0 = "": var_3C0 = "": var_3E0 = "": var_400 = "": var_420 = "": var_440 = "": var_460 = "": var_480 = ""
  loc_670BCA: BranchF loc_670C16
  loc_670BCD: LitI2_Byte &H3C
  loc_670BCF: PopTmpLdAd2 var_202
  loc_670BD2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_670BD7: NotI4
  loc_670BD8: BranchF loc_670BDC
  loc_670BDB: ExitProcI2
  loc_670BDC: LitI2_Byte 0
  loc_670BDE: ILdPr
  loc_670BE1: Me.Enabled = from_stack_1b
  loc_670BE6: LitStr "B"
  loc_670BE9: ImpAdLdRf MemVar_74DC6C
  loc_670BEC: NewIfNullPr Reportes_Anteriores
  loc_670BEF: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_670BF4: LitVar_Missing var_DC
  loc_670BF7: PopAdLdVar
  loc_670BF8: LitVarI4
  loc_670C00: PopAdLdVar
  loc_670C01: ImpAdLdRf MemVar_74DC6C
  loc_670C04: NewIfNullPr Reportes_Anteriores
  loc_670C07: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_670C0C: LitI2_Byte &HFF
  loc_670C0E: ILdPr
  loc_670C11: Me.Enabled = from_stack_1b
  loc_670C16: ExitProcI2
  loc_670C17: ExitProcI2
  loc_670C18: LitI2_Byte 0
  loc_670C1A: FStI2 var_86
  loc_670C1D: ExitProcI2
End Function

Private Function Proc_166_3_6DA7F0() '6DA7F0
  'Data Table: 40898C
  loc_6D9DB4: OnErrorGoto loc_6DA7E8
  loc_6D9DB7: LitI2_Byte &HFF
  loc_6D9DB9: FStI2 var_86
  loc_6D9DBC: ImpAdLdI2 MemVar_74C7B0
  loc_6D9DBF: NotI4
  loc_6D9DC0: BranchF loc_6DA7E7
  loc_6D9DC3: LitI2_Byte 0
  loc_6D9DC5: FStI2 var_9E
  loc_6D9DC8: ImpAdCallI2 Proc_166_0_5D9070()
  loc_6D9DCD: PopTmpLdAdStr
  loc_6D9DD1: LitStr "Hora"
  loc_6D9DD4: FStStrCopy var_A8
  loc_6D9DD7: FLdRfVar var_A8
  loc_6D9DDA: LitStr "CLP"
  loc_6D9DDD: FStStrCopy var_A4
  loc_6D9DE0: FLdRfVar var_A4
  loc_6D9DE3: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6D9DE8: FStStr var_8C
  loc_6D9DEB: FFreeStr var_A4 = "": var_A8 = ""
  loc_6D9DF4: ILdRf var_8C
  loc_6D9DF7: LitStr vbNullString
  loc_6D9DFA: EqStr
  loc_6D9DFC: NotI4
  loc_6D9DFD: BranchF loc_6D9E0D
  loc_6D9E00: ILdRf var_8C
  loc_6D9E03: CDateStr
  loc_6D9E05: FStFPR8 var_94
  loc_6D9E08: LitI2_Byte &HFF
  loc_6D9E0A: FStI2 var_9E
  loc_6D9E0D: ImpAdCallI2 Proc_166_0_5D9070()
  loc_6D9E12: PopTmpLdAdStr
  loc_6D9E16: LitStr "Durante"
  loc_6D9E19: FStStrCopy var_A8
  loc_6D9E1C: FLdRfVar var_A8
  loc_6D9E1F: LitStr "CLP"
  loc_6D9E22: FStStrCopy var_A4
  loc_6D9E25: FLdRfVar var_A4
  loc_6D9E28: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6D9E2D: FStStr var_8C
  loc_6D9E30: FFreeStr var_A4 = "": var_A8 = ""
  loc_6D9E39: ILdRf var_8C
  loc_6D9E3C: LitStr vbNullString
  loc_6D9E3F: EqStr
  loc_6D9E41: NotI4
  loc_6D9E42: BranchF loc_6D9E97
  loc_6D9E45: ILdRf var_8C
  loc_6D9E48: LitStr "00:00:00"
  loc_6D9E4B: EqStr
  loc_6D9E4D: BranchF loc_6D9E56
  loc_6D9E50: LitStr "01:00:00"
  loc_6D9E53: FStStrCopy var_8C
  loc_6D9E56: LitI4 1
  loc_6D9E5B: LitI4 1
  loc_6D9E60: LitVarStr var_DC, "h:m:s"
  loc_6D9E65: FStVarCopyObj var_EC
  loc_6D9E68: FLdRfVar var_EC
  loc_6D9E6B: FLdFPR8 var_94
  loc_6D9E6E: ILdRf var_8C
  loc_6D9E71: CDateStr
  loc_6D9E73: AddR8
  loc_6D9E74: CDateR8
  loc_6D9E75: CVarDate var_CC
  loc_6D9E79: FLdRfVar var_FC
  loc_6D9E7C: ImpAdCallFPR4  = Format(, )
  loc_6D9E81: FLdRfVar var_FC
  loc_6D9E84: FnCDateVar
  loc_6D9E86: FStFPR8 var_9C
  loc_6D9E89: FFreeVar var_CC = "": var_EC = ""
  loc_6D9E92: LitI2_Byte &HFF
  loc_6D9E94: FStI2 var_9E
  loc_6D9E97: FLdFPR8 var_94
  loc_6D9E9A: FLdFPR8 var_9C
  loc_6D9E9D: LeR8
  loc_6D9E9E: CVarBoolI2 var_DC
  loc_6D9EA2: FLdFPR8 var_94
  loc_6D9EA5: CVarDate var_BC
  loc_6D9EA9: HardType
  loc_6D9EAA: FLdRfVar var_CC
  loc_6D9EAD: ImpAdCallFPR4  = Time
  loc_6D9EB2: FLdRfVar var_CC
  loc_6D9EB5: LeVar var_EC
  loc_6D9EB9: AndVar var_FC
  loc_6D9EBD: FLdRfVar var_10C
  loc_6D9EC0: ImpAdCallFPR4  = Time
  loc_6D9EC5: FLdRfVar var_10C
  loc_6D9EC8: FLdFPR8 var_9C
  loc_6D9ECB: CVarDate var_11C
  loc_6D9ECF: HardType
  loc_6D9ED0: LeVar var_12C
  loc_6D9ED4: AndVar var_13C
  loc_6D9ED8: FLdFPR8 var_9C
  loc_6D9EDB: FLdFPR8 var_94
  loc_6D9EDE: LtR8
  loc_6D9EDF: CVarBoolI2 var_1BC
  loc_6D9EE3: FLdFPR8 var_94
  loc_6D9EE6: CVarDate var_15C
  loc_6D9EEA: HardType
  loc_6D9EEB: FLdRfVar var_14C
  loc_6D9EEE: ImpAdCallFPR4  = Time
  loc_6D9EF3: FLdRfVar var_14C
  loc_6D9EF6: LeVar var_16C
  loc_6D9EFA: FLdRfVar var_17C
  loc_6D9EFD: ImpAdCallFPR4  = Time
  loc_6D9F02: FLdRfVar var_17C
  loc_6D9F05: FLdFPR8 var_9C
  loc_6D9F08: CVarDate var_18C
  loc_6D9F0C: HardType
  loc_6D9F0D: LeVar var_19C
  loc_6D9F11: OrVar var_1AC
  loc_6D9F15: AndVar var_1CC
  loc_6D9F19: OrVar var_1DC
  loc_6D9F1D: FLdI2 var_9E
  loc_6D9F20: NotI4
  loc_6D9F21: CVarBoolI2 var_1EC
  loc_6D9F25: OrVar var_1FC
  loc_6D9F29: CBoolVarNull
  loc_6D9F2B: FFreeVar var_CC = "": var_DC = "": var_10C = "": var_14C = "": var_17C = "": var_1BC = ""
  loc_6D9F3C: BranchF loc_6DA7E7
  loc_6D9F3F: FLdRfVar var_202
  loc_6D9F42: FLdRfVar var_200
  loc_6D9F45: ImpAdLdRf MemVar_74C760
  loc_6D9F48: NewIfNullPr Formx
  loc_6D9F4B: from_stack_1v = Formx.global_4589716Get()
  loc_6D9F50: FLdPr var_200
  loc_6D9F53: Call 0.Method_arg_36C ()
  loc_6D9F58: FFree1Ad var_200
  loc_6D9F5B: LitStr "CEM44.INI"
  loc_6D9F5E: FStStrCopy var_AC
  loc_6D9F61: FLdRfVar var_AC
  loc_6D9F64: LitStr "CURRENCY_ISO_CODE"
  loc_6D9F67: FStStrCopy var_A8
  loc_6D9F6A: FLdRfVar var_A8
  loc_6D9F6D: LitStr "GENERAL"
  loc_6D9F70: FStStrCopy var_A4
  loc_6D9F73: FLdRfVar var_A4
  loc_6D9F76: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6D9F7B: FStStr var_8C
  loc_6D9F7E: FFreeStr var_A4 = "": var_A8 = ""
  loc_6D9F87: ILdRf var_8C
  loc_6D9F8A: FStStrCopy var_208
  loc_6D9F8D: ILdRf var_208
  loc_6D9F90: LitStr "CLP"
  loc_6D9F93: EqStr
  loc_6D9F95: BranchF loc_6DA21A
  loc_6D9F98: FLdRfVar var_A8
  loc_6D9F9B: LitVar_Missing var_19C
  loc_6D9F9E: LitVar_Missing var_17C
  loc_6D9FA1: LitVar_Missing var_16C
  loc_6D9FA4: LitVar_Missing var_14C
  loc_6D9FA7: LitVar_Missing var_13C
  loc_6D9FAA: LitVar_Missing var_12C
  loc_6D9FAD: LitVar_Missing var_10C
  loc_6D9FB0: LitVar_Missing var_FC
  loc_6D9FB3: LitVar_Missing var_EC
  loc_6D9FB6: LitVar_Missing var_CC
  loc_6D9FB9: LitStr "Un/os nuevo/s Documento/s Legal/es ha/n sido recepcionada/s."
  loc_6D9FBC: FStStrCopy var_A4
  loc_6D9FBF: FLdRfVar var_A4
  loc_6D9FC2: LitI4 &HB
  loc_6D9FC7: PopTmpLdAdStr var_20C
  loc_6D9FCA: LitI2_Byte &H23
  loc_6D9FCC: PopTmpLdAd2 var_202
  loc_6D9FCF: ImpAdLdRf MemVar_74C7D0
  loc_6D9FD2: NewIfNullPr clsMsg
  loc_6D9FD5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9FDA: LitI4 &HD
  loc_6D9FDF: ImpAdCallI2 Chr$()
  loc_6D9FE4: FStStr var_7C4
  loc_6D9FE7: LitI4 &HD
  loc_6D9FEC: ImpAdCallI2 Chr$()
  loc_6D9FF1: FStStr var_7C8
  loc_6D9FF4: FLdRfVar var_354
  loc_6D9FF7: LitVar_Missing var_350
  loc_6D9FFA: LitVar_Missing var_330
  loc_6D9FFD: LitVar_Missing var_310
  loc_6DA000: LitVar_Missing var_2F0
  loc_6DA003: LitVar_Missing var_2D0
  loc_6DA006: LitVar_Missing var_2B0
  loc_6DA009: LitVar_Missing var_1FC
  loc_6DA00C: LitVar_Missing var_1DC
  loc_6DA00F: LitVar_Missing var_1CC
  loc_6DA012: LitVar_Missing var_1AC
  loc_6DA015: LitStr "Se recuerda que la diferencia entre las ventas en consignación por Ud. declaradas mediante el/los presente/s Documento/s Legal y los débitos efectuados por producto en consignación a lo largo del período cubierto"
  loc_6DA018: FStStrCopy var_250
  loc_6DA01B: FLdRfVar var_250
  loc_6DA01E: LitI4 &HC
  loc_6DA023: PopTmpLdAdStr var_24C
  loc_6DA026: LitI2_Byte &H23
  loc_6DA028: PopTmpLdAd2 var_246
  loc_6DA02B: ImpAdLdRf MemVar_74C7D0
  loc_6DA02E: NewIfNullPr clsMsg
  loc_6DA031: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA036: FLdRfVar var_4A8
  loc_6DA039: LitVar_Missing var_4A4
  loc_6DA03C: LitVar_Missing var_484
  loc_6DA03F: LitVar_Missing var_464
  loc_6DA042: LitVar_Missing var_444
  loc_6DA045: LitVar_Missing var_424
  loc_6DA048: LitVar_Missing var_404
  loc_6DA04B: LitVar_Missing var_3E4
  loc_6DA04E: LitVar_Missing var_3C4
  loc_6DA051: LitVar_Missing var_3A4
  loc_6DA054: LitVar_Missing var_384
  loc_6DA057: LitStr " por la/s misma/s, será debitada/acreditada de/en su cuenta de gestión con Esso Chile, conforme a lo estipulado en vuestra carta oferta para operar en consignación bajo la modalidad de Ingreso de Recaudaciones por Débito Directo."
  loc_6DA05A: FStStrCopy var_364
  loc_6DA05D: FLdRfVar var_364
  loc_6DA060: LitI4 &H1D
  loc_6DA065: PopTmpLdAdStr var_360
  loc_6DA068: LitI2_Byte &H23
  loc_6DA06A: PopTmpLdAd2 var_35A
  loc_6DA06D: ImpAdLdRf MemVar_74C7D0
  loc_6DA070: NewIfNullPr clsMsg
  loc_6DA073: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA078: LitI4 &HD
  loc_6DA07D: ImpAdCallI2 Chr$()
  loc_6DA082: FStStr var_7CC
  loc_6DA085: LitI4 &HD
  loc_6DA08A: ImpAdCallI2 Chr$()
  loc_6DA08F: FStStr var_7D0
  loc_6DA092: FLdRfVar var_60C
  loc_6DA095: LitVar_Missing var_608
  loc_6DA098: LitVar_Missing var_5E8
  loc_6DA09B: LitVar_Missing var_5C8
  loc_6DA09E: LitVar_Missing var_5A8
  loc_6DA0A1: LitVar_Missing var_588
  loc_6DA0A4: LitVar_Missing var_568
  loc_6DA0A7: LitVar_Missing var_548
  loc_6DA0AA: LitVar_Missing var_528
  loc_6DA0AD: LitVar_Missing var_508
  loc_6DA0B0: LitVar_Missing var_4E8
  loc_6DA0B3: LitStr "Desea Ud. visualizarla/s en este momento?"
  loc_6DA0B6: FStStrCopy var_4C8
  loc_6DA0B9: FLdRfVar var_4C8
  loc_6DA0BC: LitI4 &HC
  loc_6DA0C1: PopTmpLdAdStr var_4C4
  loc_6DA0C4: LitI2_Byte &H23
  loc_6DA0C6: PopTmpLdAd2 var_4BE
  loc_6DA0C9: ImpAdLdRf MemVar_74C7D0
  loc_6DA0CC: NewIfNullPr clsMsg
  loc_6DA0CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA0D4: FLdRfVar var_760
  loc_6DA0D7: LitVar_Missing var_75C
  loc_6DA0DA: LitVar_Missing var_73C
  loc_6DA0DD: LitVar_Missing var_71C
  loc_6DA0E0: LitVar_Missing var_6FC
  loc_6DA0E3: LitVar_Missing var_6DC
  loc_6DA0E6: LitVar_Missing var_6BC
  loc_6DA0E9: LitVar_Missing var_69C
  loc_6DA0EC: LitVar_Missing var_67C
  loc_6DA0EF: LitVar_Missing var_65C
  loc_6DA0F2: LitVar_Missing var_63C
  loc_6DA0F5: LitStr "Aviso de Documento Legal"
  loc_6DA0F8: FStStrCopy var_61C
  loc_6DA0FB: FLdRfVar var_61C
  loc_6DA0FE: LitI4 &HD
  loc_6DA103: PopTmpLdAdStr var_618
  loc_6DA106: LitI2_Byte &H23
  loc_6DA108: PopTmpLdAd2 var_612
  loc_6DA10B: ImpAdLdRf MemVar_74C7D0
  loc_6DA10E: NewIfNullPr clsMsg
  loc_6DA111: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA116: LitVar_Missing var_7C0
  loc_6DA119: LitVar_Missing var_7A0
  loc_6DA11C: FLdZeroAd var_760
  loc_6DA11F: CVarStr var_780
  loc_6DA122: LitI4 &H44
  loc_6DA127: ILdRf var_A8
  loc_6DA12A: FLdZeroAd var_7C4
  loc_6DA12D: FStStrNoPop var_AC
  loc_6DA130: ConcatStr
  loc_6DA131: FStStrNoPop var_240
  loc_6DA134: FLdZeroAd var_7C8
  loc_6DA137: FStStrNoPop var_244
  loc_6DA13A: ConcatStr
  loc_6DA13B: FStStrNoPop var_358
  loc_6DA13E: ILdRf var_354
  loc_6DA141: ConcatStr
  loc_6DA142: FStStrNoPop var_4AC
  loc_6DA145: ILdRf var_4A8
  loc_6DA148: ConcatStr
  loc_6DA149: FStStrNoPop var_4B0
  loc_6DA14C: FLdZeroAd var_7CC
  loc_6DA14F: FStStrNoPop var_4B4
  loc_6DA152: ConcatStr
  loc_6DA153: FStStrNoPop var_4B8
  loc_6DA156: FLdZeroAd var_7D0
  loc_6DA159: FStStrNoPop var_4BC
  loc_6DA15C: ConcatStr
  loc_6DA15D: FStStrNoPop var_610
  loc_6DA160: ILdRf var_60C
  loc_6DA163: ConcatStr
  loc_6DA164: CVarStr var_770
  loc_6DA167: ImpAdCallI2 MsgBox(, , , , )
  loc_6DA16C: LitI4 6
  loc_6DA171: EqI4
  loc_6DA172: NotI4
  loc_6DA173: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_240 = "": var_244 = "": var_250 = "": var_358 = "": var_354 = "": var_364 = "": var_4AC = "": var_4A8 = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_4C8 = "": var_610 = "": var_60C = "": var_61C = "": var_7C4 = "": var_7C8 = "": var_7CC = ""
  loc_6DA1A4: FFreeVar var_4E8 = "": var_508 = "": var_528 = "": var_548 = "": var_568 = "": var_588 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_608 = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_770 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1FC = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6DA213: BranchF loc_6DA217
  loc_6DA216: ExitProcI2
  loc_6DA217: Branch loc_6DA726
  loc_6DA21A: ILdRf var_208
  loc_6DA21D: LitStr "ARS"
  loc_6DA220: EqStr
  loc_6DA222: BranchF loc_6DA4A7
  loc_6DA225: FLdRfVar var_A8
  loc_6DA228: LitVar_Missing var_19C
  loc_6DA22B: LitVar_Missing var_17C
  loc_6DA22E: LitVar_Missing var_16C
  loc_6DA231: LitVar_Missing var_14C
  loc_6DA234: LitVar_Missing var_13C
  loc_6DA237: LitVar_Missing var_12C
  loc_6DA23A: LitVar_Missing var_10C
  loc_6DA23D: LitVar_Missing var_FC
  loc_6DA240: LitVar_Missing var_EC
  loc_6DA243: LitVar_Missing var_CC
  loc_6DA246: LitStr "Una/s nueva/s Cuenta/s de Líquido Producto ha/n sido recepcionada/s."
  loc_6DA249: FStStrCopy var_A4
  loc_6DA24C: FLdRfVar var_A4
  loc_6DA24F: LitI4 &HB
  loc_6DA254: PopTmpLdAdStr var_20C
  loc_6DA257: LitI2_Byte &H23
  loc_6DA259: PopTmpLdAd2 var_202
  loc_6DA25C: ImpAdLdRf MemVar_74C7D0
  loc_6DA25F: NewIfNullPr clsMsg
  loc_6DA262: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA267: LitI4 &HD
  loc_6DA26C: ImpAdCallI2 Chr$()
  loc_6DA271: FStStr var_7C4
  loc_6DA274: LitI4 &HD
  loc_6DA279: ImpAdCallI2 Chr$()
  loc_6DA27E: FStStr var_7C8
  loc_6DA281: FLdRfVar var_354
  loc_6DA284: LitVar_Missing var_350
  loc_6DA287: LitVar_Missing var_330
  loc_6DA28A: LitVar_Missing var_310
  loc_6DA28D: LitVar_Missing var_2F0
  loc_6DA290: LitVar_Missing var_2D0
  loc_6DA293: LitVar_Missing var_2B0
  loc_6DA296: LitVar_Missing var_1FC
  loc_6DA299: LitVar_Missing var_1DC
  loc_6DA29C: LitVar_Missing var_1CC
  loc_6DA29F: LitVar_Missing var_1AC
  loc_6DA2A2: LitStr "Se recuerda que la diferencia entre las ventas en consignación por Ud. declaradas mediante la/s presente/s Cuenta/s líquido producto y los débitos efectuados por producto en consignación a lo largo del período cubierto"
  loc_6DA2A5: FStStrCopy var_250
  loc_6DA2A8: FLdRfVar var_250
  loc_6DA2AB: LitI4 &HC
  loc_6DA2B0: PopTmpLdAdStr var_24C
  loc_6DA2B3: LitI2_Byte &H23
  loc_6DA2B5: PopTmpLdAd2 var_246
  loc_6DA2B8: ImpAdLdRf MemVar_74C7D0
  loc_6DA2BB: NewIfNullPr clsMsg
  loc_6DA2BE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA2C3: FLdRfVar var_4A8
  loc_6DA2C6: LitVar_Missing var_4A4
  loc_6DA2C9: LitVar_Missing var_484
  loc_6DA2CC: LitVar_Missing var_464
  loc_6DA2CF: LitVar_Missing var_444
  loc_6DA2D2: LitVar_Missing var_424
  loc_6DA2D5: LitVar_Missing var_404
  loc_6DA2D8: LitVar_Missing var_3E4
  loc_6DA2DB: LitVar_Missing var_3C4
  loc_6DA2DE: LitVar_Missing var_3A4
  loc_6DA2E1: LitVar_Missing var_384
  loc_6DA2E4: LitStr " por la/s misma/s, será debitada/acreditada de/en su cuenta de gestión con Esso Petrolera Argentina, conforme a lo estipulado en vuestra carta oferta para operar en consignación bajo la modalidad de Ingreso de Recaudaciones por Débito Directo."
  loc_6DA2E7: FStStrCopy var_364
  loc_6DA2EA: FLdRfVar var_364
  loc_6DA2ED: LitI4 &H1D
  loc_6DA2F2: PopTmpLdAdStr var_360
  loc_6DA2F5: LitI2_Byte &H23
  loc_6DA2F7: PopTmpLdAd2 var_35A
  loc_6DA2FA: ImpAdLdRf MemVar_74C7D0
  loc_6DA2FD: NewIfNullPr clsMsg
  loc_6DA300: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA305: LitI4 &HD
  loc_6DA30A: ImpAdCallI2 Chr$()
  loc_6DA30F: FStStr var_7CC
  loc_6DA312: LitI4 &HD
  loc_6DA317: ImpAdCallI2 Chr$()
  loc_6DA31C: FStStr var_7D0
  loc_6DA31F: FLdRfVar var_60C
  loc_6DA322: LitVar_Missing var_608
  loc_6DA325: LitVar_Missing var_5E8
  loc_6DA328: LitVar_Missing var_5C8
  loc_6DA32B: LitVar_Missing var_5A8
  loc_6DA32E: LitVar_Missing var_588
  loc_6DA331: LitVar_Missing var_568
  loc_6DA334: LitVar_Missing var_548
  loc_6DA337: LitVar_Missing var_528
  loc_6DA33A: LitVar_Missing var_508
  loc_6DA33D: LitVar_Missing var_4E8
  loc_6DA340: LitStr "Desea Ud. visualizarla/s en este momento?"
  loc_6DA343: FStStrCopy var_4C8
  loc_6DA346: FLdRfVar var_4C8
  loc_6DA349: LitI4 &HC
  loc_6DA34E: PopTmpLdAdStr var_4C4
  loc_6DA351: LitI2_Byte &H23
  loc_6DA353: PopTmpLdAd2 var_4BE
  loc_6DA356: ImpAdLdRf MemVar_74C7D0
  loc_6DA359: NewIfNullPr clsMsg
  loc_6DA35C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA361: FLdRfVar var_760
  loc_6DA364: LitVar_Missing var_75C
  loc_6DA367: LitVar_Missing var_73C
  loc_6DA36A: LitVar_Missing var_71C
  loc_6DA36D: LitVar_Missing var_6FC
  loc_6DA370: LitVar_Missing var_6DC
  loc_6DA373: LitVar_Missing var_6BC
  loc_6DA376: LitVar_Missing var_69C
  loc_6DA379: LitVar_Missing var_67C
  loc_6DA37C: LitVar_Missing var_65C
  loc_6DA37F: LitVar_Missing var_63C
  loc_6DA382: LitStr "Aviso de Cuenta Líquido Producto"
  loc_6DA385: FStStrCopy var_61C
  loc_6DA388: FLdRfVar var_61C
  loc_6DA38B: LitI4 &HD
  loc_6DA390: PopTmpLdAdStr var_618
  loc_6DA393: LitI2_Byte &H23
  loc_6DA395: PopTmpLdAd2 var_612
  loc_6DA398: ImpAdLdRf MemVar_74C7D0
  loc_6DA39B: NewIfNullPr clsMsg
  loc_6DA39E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA3A3: LitVar_Missing var_7C0
  loc_6DA3A6: LitVar_Missing var_7A0
  loc_6DA3A9: FLdZeroAd var_760
  loc_6DA3AC: CVarStr var_780
  loc_6DA3AF: LitI4 &H44
  loc_6DA3B4: ILdRf var_A8
  loc_6DA3B7: FLdZeroAd var_7C4
  loc_6DA3BA: FStStrNoPop var_AC
  loc_6DA3BD: ConcatStr
  loc_6DA3BE: FStStrNoPop var_240
  loc_6DA3C1: FLdZeroAd var_7C8
  loc_6DA3C4: FStStrNoPop var_244
  loc_6DA3C7: ConcatStr
  loc_6DA3C8: FStStrNoPop var_358
  loc_6DA3CB: ILdRf var_354
  loc_6DA3CE: ConcatStr
  loc_6DA3CF: FStStrNoPop var_4AC
  loc_6DA3D2: ILdRf var_4A8
  loc_6DA3D5: ConcatStr
  loc_6DA3D6: FStStrNoPop var_4B0
  loc_6DA3D9: FLdZeroAd var_7CC
  loc_6DA3DC: FStStrNoPop var_4B4
  loc_6DA3DF: ConcatStr
  loc_6DA3E0: FStStrNoPop var_4B8
  loc_6DA3E3: FLdZeroAd var_7D0
  loc_6DA3E6: FStStrNoPop var_4BC
  loc_6DA3E9: ConcatStr
  loc_6DA3EA: FStStrNoPop var_610
  loc_6DA3ED: ILdRf var_60C
  loc_6DA3F0: ConcatStr
  loc_6DA3F1: CVarStr var_770
  loc_6DA3F4: ImpAdCallI2 MsgBox(, , , , )
  loc_6DA3F9: LitI4 6
  loc_6DA3FE: EqI4
  loc_6DA3FF: NotI4
  loc_6DA400: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_240 = "": var_244 = "": var_250 = "": var_358 = "": var_354 = "": var_364 = "": var_4AC = "": var_4A8 = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_4C8 = "": var_610 = "": var_60C = "": var_61C = "": var_7C4 = "": var_7C8 = "": var_7CC = ""
  loc_6DA431: FFreeVar var_4E8 = "": var_508 = "": var_528 = "": var_548 = "": var_568 = "": var_588 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_608 = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_770 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1FC = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6DA4A0: BranchF loc_6DA4A4
  loc_6DA4A3: ExitProcI2
  loc_6DA4A4: Branch loc_6DA726
  loc_6DA4A7: FLdRfVar var_A8
  loc_6DA4AA: LitVar_Missing var_19C
  loc_6DA4AD: LitVar_Missing var_17C
  loc_6DA4B0: LitVar_Missing var_16C
  loc_6DA4B3: LitVar_Missing var_14C
  loc_6DA4B6: LitVar_Missing var_13C
  loc_6DA4B9: LitVar_Missing var_12C
  loc_6DA4BC: LitVar_Missing var_10C
  loc_6DA4BF: LitVar_Missing var_FC
  loc_6DA4C2: LitVar_Missing var_EC
  loc_6DA4C5: LitVar_Missing var_CC
  loc_6DA4C8: LitStr "Una/s nueva/s Cuenta/s de Líquido Producto ha/n sido recepcionada/s."
  loc_6DA4CB: FStStrCopy var_A4
  loc_6DA4CE: FLdRfVar var_A4
  loc_6DA4D1: LitI4 &HB
  loc_6DA4D6: PopTmpLdAdStr var_20C
  loc_6DA4D9: LitI2_Byte &H23
  loc_6DA4DB: PopTmpLdAd2 var_202
  loc_6DA4DE: ImpAdLdRf MemVar_74C7D0
  loc_6DA4E1: NewIfNullPr clsMsg
  loc_6DA4E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA4E9: LitI4 &HD
  loc_6DA4EE: ImpAdCallI2 Chr$()
  loc_6DA4F3: FStStr var_7C4
  loc_6DA4F6: LitI4 &HD
  loc_6DA4FB: ImpAdCallI2 Chr$()
  loc_6DA500: FStStr var_7C8
  loc_6DA503: FLdRfVar var_354
  loc_6DA506: LitVar_Missing var_350
  loc_6DA509: LitVar_Missing var_330
  loc_6DA50C: LitVar_Missing var_310
  loc_6DA50F: LitVar_Missing var_2F0
  loc_6DA512: LitVar_Missing var_2D0
  loc_6DA515: LitVar_Missing var_2B0
  loc_6DA518: LitVar_Missing var_1FC
  loc_6DA51B: LitVar_Missing var_1DC
  loc_6DA51E: LitVar_Missing var_1CC
  loc_6DA521: LitVar_Missing var_1AC
  loc_6DA524: LitStr "Se recuerda que la diferencia entre las ventas en consignación por Ud. declaradas mediante la/s presente/s Cuenta/s líquido producto y los débitos efectuados por producto en consignación a lo largo del período cubierto"
  loc_6DA527: FStStrCopy var_250
  loc_6DA52A: FLdRfVar var_250
  loc_6DA52D: LitI4 &HC
  loc_6DA532: PopTmpLdAdStr var_24C
  loc_6DA535: LitI2_Byte &H23
  loc_6DA537: PopTmpLdAd2 var_246
  loc_6DA53A: ImpAdLdRf MemVar_74C7D0
  loc_6DA53D: NewIfNullPr clsMsg
  loc_6DA540: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA545: FLdRfVar var_4A8
  loc_6DA548: LitVar_Missing var_4A4
  loc_6DA54B: LitVar_Missing var_484
  loc_6DA54E: LitVar_Missing var_464
  loc_6DA551: LitVar_Missing var_444
  loc_6DA554: LitVar_Missing var_424
  loc_6DA557: LitVar_Missing var_404
  loc_6DA55A: LitVar_Missing var_3E4
  loc_6DA55D: LitVar_Missing var_3C4
  loc_6DA560: LitVar_Missing var_3A4
  loc_6DA563: LitVar_Missing var_384
  loc_6DA566: LitStr " por la/s misma/s, será debitada/acreditada de/en su cuenta de gestión con Esso Petrolera, conforme a lo estipulado en vuestra carta oferta para operar en consignación bajo la modalidad de Ingreso de Recaudaciones por Débito Directo."
  loc_6DA569: FStStrCopy var_364
  loc_6DA56C: FLdRfVar var_364
  loc_6DA56F: LitI4 &H1D
  loc_6DA574: PopTmpLdAdStr var_360
  loc_6DA577: LitI2_Byte &H23
  loc_6DA579: PopTmpLdAd2 var_35A
  loc_6DA57C: ImpAdLdRf MemVar_74C7D0
  loc_6DA57F: NewIfNullPr clsMsg
  loc_6DA582: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA587: LitI4 &HD
  loc_6DA58C: ImpAdCallI2 Chr$()
  loc_6DA591: FStStr var_7CC
  loc_6DA594: LitI4 &HD
  loc_6DA599: ImpAdCallI2 Chr$()
  loc_6DA59E: FStStr var_7D0
  loc_6DA5A1: FLdRfVar var_60C
  loc_6DA5A4: LitVar_Missing var_608
  loc_6DA5A7: LitVar_Missing var_5E8
  loc_6DA5AA: LitVar_Missing var_5C8
  loc_6DA5AD: LitVar_Missing var_5A8
  loc_6DA5B0: LitVar_Missing var_588
  loc_6DA5B3: LitVar_Missing var_568
  loc_6DA5B6: LitVar_Missing var_548
  loc_6DA5B9: LitVar_Missing var_528
  loc_6DA5BC: LitVar_Missing var_508
  loc_6DA5BF: LitVar_Missing var_4E8
  loc_6DA5C2: LitStr "Desea Ud. visualizarla/s en este momento?"
  loc_6DA5C5: FStStrCopy var_4C8
  loc_6DA5C8: FLdRfVar var_4C8
  loc_6DA5CB: LitI4 &HC
  loc_6DA5D0: PopTmpLdAdStr var_4C4
  loc_6DA5D3: LitI2_Byte &H23
  loc_6DA5D5: PopTmpLdAd2 var_4BE
  loc_6DA5D8: ImpAdLdRf MemVar_74C7D0
  loc_6DA5DB: NewIfNullPr clsMsg
  loc_6DA5DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA5E3: FLdRfVar var_760
  loc_6DA5E6: LitVar_Missing var_75C
  loc_6DA5E9: LitVar_Missing var_73C
  loc_6DA5EC: LitVar_Missing var_71C
  loc_6DA5EF: LitVar_Missing var_6FC
  loc_6DA5F2: LitVar_Missing var_6DC
  loc_6DA5F5: LitVar_Missing var_6BC
  loc_6DA5F8: LitVar_Missing var_69C
  loc_6DA5FB: LitVar_Missing var_67C
  loc_6DA5FE: LitVar_Missing var_65C
  loc_6DA601: LitVar_Missing var_63C
  loc_6DA604: LitStr "Aviso de Cuenta Líquido Producto"
  loc_6DA607: FStStrCopy var_61C
  loc_6DA60A: FLdRfVar var_61C
  loc_6DA60D: LitI4 &HD
  loc_6DA612: PopTmpLdAdStr var_618
  loc_6DA615: LitI2_Byte &H23
  loc_6DA617: PopTmpLdAd2 var_612
  loc_6DA61A: ImpAdLdRf MemVar_74C7D0
  loc_6DA61D: NewIfNullPr clsMsg
  loc_6DA620: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA625: LitVar_Missing var_7C0
  loc_6DA628: LitVar_Missing var_7A0
  loc_6DA62B: FLdZeroAd var_760
  loc_6DA62E: CVarStr var_780
  loc_6DA631: LitI4 &H44
  loc_6DA636: ILdRf var_A8
  loc_6DA639: FLdZeroAd var_7C4
  loc_6DA63C: FStStrNoPop var_AC
  loc_6DA63F: ConcatStr
  loc_6DA640: FStStrNoPop var_240
  loc_6DA643: FLdZeroAd var_7C8
  loc_6DA646: FStStrNoPop var_244
  loc_6DA649: ConcatStr
  loc_6DA64A: FStStrNoPop var_358
  loc_6DA64D: ILdRf var_354
  loc_6DA650: ConcatStr
  loc_6DA651: FStStrNoPop var_4AC
  loc_6DA654: ILdRf var_4A8
  loc_6DA657: ConcatStr
  loc_6DA658: FStStrNoPop var_4B0
  loc_6DA65B: FLdZeroAd var_7CC
  loc_6DA65E: FStStrNoPop var_4B4
  loc_6DA661: ConcatStr
  loc_6DA662: FStStrNoPop var_4B8
  loc_6DA665: FLdZeroAd var_7D0
  loc_6DA668: FStStrNoPop var_4BC
  loc_6DA66B: ConcatStr
  loc_6DA66C: FStStrNoPop var_610
  loc_6DA66F: ILdRf var_60C
  loc_6DA672: ConcatStr
  loc_6DA673: CVarStr var_770
  loc_6DA676: ImpAdCallI2 MsgBox(, , , , )
  loc_6DA67B: LitI4 6
  loc_6DA680: EqI4
  loc_6DA681: NotI4
  loc_6DA682: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_240 = "": var_244 = "": var_250 = "": var_358 = "": var_354 = "": var_364 = "": var_4AC = "": var_4A8 = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_4C8 = "": var_610 = "": var_60C = "": var_61C = "": var_7C4 = "": var_7C8 = "": var_7CC = ""
  loc_6DA6B3: FFreeVar var_4E8 = "": var_508 = "": var_528 = "": var_548 = "": var_568 = "": var_588 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_608 = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_770 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1DC = "": var_1FC = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = ""
  loc_6DA722: BranchF loc_6DA726
  loc_6DA725: ExitProcI2
  loc_6DA726: LitI2_Byte &HC
  loc_6DA728: PopTmpLdAd2 var_202
  loc_6DA72B: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6DA730: NotI4
  loc_6DA731: BranchF loc_6DA735
  loc_6DA734: ExitProcI2
  loc_6DA735: LitI2_Byte 0
  loc_6DA737: ILdPr
  loc_6DA73A: Me.Enabled = from_stack_1b
  loc_6DA73F: LitI2_Byte 0
  loc_6DA741: ImpAdLdRf MemVar_74DC6C
  loc_6DA744: NewIfNullPr Reportes_Anteriores
  loc_6DA747: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_6DA74C: LitStr "C"
  loc_6DA74F: ImpAdLdRf MemVar_74DC6C
  loc_6DA752: NewIfNullPr Reportes_Anteriores
  loc_6DA755: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_6DA75A: FLdRfVar var_A8
  loc_6DA75D: LitVar_Missing var_19C
  loc_6DA760: LitVar_Missing var_17C
  loc_6DA763: LitVar_Missing var_16C
  loc_6DA766: LitVar_Missing var_14C
  loc_6DA769: LitVar_Missing var_13C
  loc_6DA76C: LitVar_Missing var_12C
  loc_6DA76F: LitVar_Missing var_10C
  loc_6DA772: LitVar_Missing var_FC
  loc_6DA775: LitVar_Missing var_EC
  loc_6DA778: LitVar_Missing var_CC
  loc_6DA77B: LitStr "Informe de Aviso de Cuenta Líquido Producto"
  loc_6DA77E: FStStrCopy var_A4
  loc_6DA781: FLdRfVar var_A4
  loc_6DA784: LitI4 &HE
  loc_6DA789: PopTmpLdAdStr var_20C
  loc_6DA78C: LitI2_Byte &H23
  loc_6DA78E: PopTmpLdAd2 var_202
  loc_6DA791: ImpAdLdRf MemVar_74C7D0
  loc_6DA794: NewIfNullPr clsMsg
  loc_6DA797: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6DA79C: ILdRf var_A8
  loc_6DA79F: ImpAdLdRf MemVar_74DC6C
  loc_6DA7A2: NewIfNullPr Reportes_Anteriores
  loc_6DA7A5: Reportes_Anteriores.Caption = from_stack_1
  loc_6DA7AA: FFreeStr var_A4 = ""
  loc_6DA7B1: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = "": var_16C = "": var_17C = ""
  loc_6DA7C8: LitVar_Missing var_DC
  loc_6DA7CB: PopAdLdVar
  loc_6DA7CC: LitVarI2 var_BC, 1
  loc_6DA7D1: PopAdLdVar
  loc_6DA7D2: ImpAdLdRf MemVar_74DC6C
  loc_6DA7D5: NewIfNullPr Reportes_Anteriores
  loc_6DA7D8: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_6DA7DD: LitI2_Byte &HFF
  loc_6DA7DF: ILdPr
  loc_6DA7E2: Me.Enabled = from_stack_1b
  loc_6DA7E7: ExitProcI2
  loc_6DA7E8: LitI2_Byte 0
  loc_6DA7EA: FStI2 var_86
  loc_6DA7ED: ExitProcI2
End Function

Private Function Proc_166_4_668698() '668698
  'Data Table: 40898C
  loc_66835C: OnErrorGoto loc_66868D
  loc_668361: FLdRfVar var_92
  loc_668364: FLdRfVar var_88
  loc_668367: FLdRfVar var_90
  loc_66836A: ImpAdLdRf MemVar_74C760
  loc_66836D: NewIfNullPr Formx
  loc_668370: from_stack_1v = Formx.global_4589716Get()
  loc_668375: FLdPr var_90
  loc_668378: Call 0.Method_arg_32C ()
  loc_66837D: FLdI2 var_92
  loc_668380: FFree1Ad var_90
  loc_668383: BranchF loc_668511
  loc_668388: ImpAdLdI4 MemVar_74BF50
  loc_66838B: ILdRf var_88
  loc_66838E: EqStr
  loc_668390: NotI4
  loc_668391: BranchF loc_66850F
  loc_668396: LitNothing
  loc_668398: CastAd
  loc_66839B: FStAdFunc var_90
  loc_66839E: FLdRfVar var_90
  loc_6683A1: LitStr "GetDateConfig - Diferentes, actual: "
  loc_6683A4: ImpAdLdI4 MemVar_74BF50
  loc_6683A7: ConcatStr
  loc_6683A8: FStStrNoPop var_98
  loc_6683AB: LitStr " nuevo: "
  loc_6683AE: ConcatStr
  loc_6683AF: FStStrNoPop var_9C
  loc_6683B2: ILdRf var_88
  loc_6683B5: ConcatStr
  loc_6683B6: PopTmpLdAdStr
  loc_6683BA: FLdRfVar var_B0
  loc_6683BD: ImpAdCallFPR4  = Proc_166_11_66CC58(, )
  loc_6683C2: FFreeStr var_98 = "": var_9C = ""
  loc_6683CB: FFree1Ad var_90
  loc_6683CE: FFree1Var var_B0 = ""
  loc_6683D3: FLdRfVar var_9C
  loc_6683D6: LitVar_Missing var_1E4
  loc_6683D9: LitVar_Missing var_1C4
  loc_6683DC: LitVar_Missing var_1A4
  loc_6683DF: LitVar_Missing var_184
  loc_6683E2: LitVar_Missing var_164
  loc_6683E5: LitVar_Missing var_144
  loc_6683E8: LitVar_Missing var_124
  loc_6683EB: LitVar_Missing var_104
  loc_6683EE: LitVar_Missing var_E4
  loc_6683F1: LitVar_Missing var_B0
  loc_6683F4: LitStr "Se realizo un cambio en la configuración, se reiniciara la consola"
  loc_6683F7: FStStrCopy var_98
  loc_6683FA: FLdRfVar var_98
  loc_6683FD: LitI4 &H1B
  loc_668402: PopTmpLdAdStr var_B4
  loc_668405: LitI2_Byte &H23
  loc_668407: PopTmpLdAd2 var_92
  loc_66840A: ImpAdLdRf MemVar_74C7D0
  loc_66840D: NewIfNullPr clsMsg
  loc_668410: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_668415: LitI4 &HD
  loc_66841A: FLdRfVar var_1F4
  loc_66841D: ImpAdCallFPR4  = Chr()
  loc_668422: FLdRfVar var_380
  loc_668425: LitVar_Missing var_37C
  loc_668428: LitVar_Missing var_35C
  loc_66842B: LitVar_Missing var_33C
  loc_66842E: LitVar_Missing var_31C
  loc_668431: LitVar_Missing var_2FC
  loc_668434: LitVar_Missing var_2DC
  loc_668437: LitVar_Missing var_2BC
  loc_66843A: LitVar_Missing var_29C
  loc_66843D: LitVar_Missing var_27C
  loc_668440: LitVar_Missing var_25C
  loc_668443: LitStr "Cambio de Configuración"
  loc_668446: FStStrCopy var_A0
  loc_668449: FLdRfVar var_A0
  loc_66844C: LitI4 &H1C
  loc_668451: PopTmpLdAdStr var_23C
  loc_668454: LitI2_Byte &H23
  loc_668456: PopTmpLdAd2 var_236
  loc_668459: ImpAdLdRf MemVar_74C7D0
  loc_66845C: NewIfNullPr clsMsg
  loc_66845F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_668464: LitVar_Missing var_3D0
  loc_668467: LitVar_Missing var_3B0
  loc_66846A: FLdZeroAd var_380
  loc_66846D: CVarStr var_390
  loc_668470: LitI4 &H40
  loc_668475: FLdZeroAd var_9C
  loc_668478: CVarStr var_204
  loc_66847B: FLdRfVar var_1F4
  loc_66847E: AddVar var_214
  loc_668482: LitVarStr var_224, "Acepte este mensaje para continuar"
  loc_668487: AddVar var_234
  loc_66848B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_668490: FFreeStr var_98 = ""
  loc_668497: FFreeVar var_B0 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_234 = "": var_390 = "": var_3B0 = ""
  loc_6684D2: LitI4 2
  loc_6684D7: FLdRfVar var_98
  loc_6684DA: FLdRfVar var_90
  loc_6684DD: ImpAdLdRf MemVar_7520D4
  loc_6684E0: NewIfNullPr Global
  loc_6684E3:  = Global.App
  loc_6684E8: FLdPr var_90
  loc_6684EB:  = App.Path
  loc_6684F0: ILdRf var_98
  loc_6684F3: LitStr "\consolaremota.bat"
  loc_6684F6: ConcatStr
  loc_6684F7: CVarStr var_B0
  loc_6684FA: ImpAdCallFPR4 push Shell(, )
  loc_6684FF: FStFPR8 var_3D8
  loc_668502: FFree1Str var_98
  loc_668505: FFree1Ad var_90
  loc_668508: FFree1Var var_B0 = ""
  loc_66850D: End
  loc_668515: FLdRfVar var_92
  loc_668518: FLdRfVar var_8C
  loc_66851B: FLdRfVar var_90
  loc_66851E: ImpAdLdRf MemVar_74C760
  loc_668521: NewIfNullPr Formx
  loc_668524: from_stack_1v = Formx.global_4589716Get()
  loc_668529: FLdPr var_90
  loc_66852C: Call 0.Method_arg_330 ()
  loc_668531: FLdI2 var_92
  loc_668534: FFree1Ad var_90
  loc_668537: BranchF loc_668688
  loc_66853C: ImpAdLdI4 MemVar_74BF54
  loc_66853F: ILdRf var_8C
  loc_668542: EqStr
  loc_668544: NotI4
  loc_668545: BranchF loc_668686
  loc_66854A: FLdRfVar var_9C
  loc_66854D: LitVar_Missing var_1E4
  loc_668550: LitVar_Missing var_1C4
  loc_668553: LitVar_Missing var_1A4
  loc_668556: LitVar_Missing var_184
  loc_668559: LitVar_Missing var_164
  loc_66855C: LitVar_Missing var_144
  loc_66855F: LitVar_Missing var_124
  loc_668562: LitVar_Missing var_104
  loc_668565: LitVar_Missing var_E4
  loc_668568: LitVar_Missing var_B0
  loc_66856B: LitStr "Se realizo un cambio en la configuración, se reiniciara la consola"
  loc_66856E: FStStrCopy var_98
  loc_668571: FLdRfVar var_98
  loc_668574: LitI4 &H1B
  loc_668579: PopTmpLdAdStr var_B4
  loc_66857C: LitI2_Byte &H23
  loc_66857E: PopTmpLdAd2 var_92
  loc_668581: ImpAdLdRf MemVar_74C7D0
  loc_668584: NewIfNullPr clsMsg
  loc_668587: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66858C: LitI4 &HD
  loc_668591: FLdRfVar var_1F4
  loc_668594: ImpAdCallFPR4  = Chr()
  loc_668599: FLdRfVar var_380
  loc_66859C: LitVar_Missing var_37C
  loc_66859F: LitVar_Missing var_35C
  loc_6685A2: LitVar_Missing var_33C
  loc_6685A5: LitVar_Missing var_31C
  loc_6685A8: LitVar_Missing var_2FC
  loc_6685AB: LitVar_Missing var_2DC
  loc_6685AE: LitVar_Missing var_2BC
  loc_6685B1: LitVar_Missing var_29C
  loc_6685B4: LitVar_Missing var_27C
  loc_6685B7: LitVar_Missing var_25C
  loc_6685BA: LitStr "Cambio de Configuración"
  loc_6685BD: FStStrCopy var_A0
  loc_6685C0: FLdRfVar var_A0
  loc_6685C3: LitI4 &H1C
  loc_6685C8: PopTmpLdAdStr var_23C
  loc_6685CB: LitI2_Byte &H23
  loc_6685CD: PopTmpLdAd2 var_236
  loc_6685D0: ImpAdLdRf MemVar_74C7D0
  loc_6685D3: NewIfNullPr clsMsg
  loc_6685D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6685DB: LitVar_Missing var_3D0
  loc_6685DE: LitVar_Missing var_3B0
  loc_6685E1: FLdZeroAd var_380
  loc_6685E4: CVarStr var_390
  loc_6685E7: LitI4 &H40
  loc_6685EC: FLdZeroAd var_9C
  loc_6685EF: CVarStr var_204
  loc_6685F2: FLdRfVar var_1F4
  loc_6685F5: AddVar var_214
  loc_6685F9: LitVarStr var_224, "Acepte este mensaje para continuar"
  loc_6685FE: AddVar var_234
  loc_668602: ImpAdCallFPR4 MsgBox(, , , , )
  loc_668607: FFreeStr var_98 = ""
  loc_66860E: FFreeVar var_B0 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_234 = "": var_390 = "": var_3B0 = ""
  loc_668649: LitI4 2
  loc_66864E: FLdRfVar var_98
  loc_668651: FLdRfVar var_90
  loc_668654: ImpAdLdRf MemVar_7520D4
  loc_668657: NewIfNullPr Global
  loc_66865A:  = Global.App
  loc_66865F: FLdPr var_90
  loc_668662:  = App.Path
  loc_668667: ILdRf var_98
  loc_66866A: LitStr "\consolaremota.bat"
  loc_66866D: ConcatStr
  loc_66866E: CVarStr var_B0
  loc_668671: ImpAdCallFPR4 push Shell(, )
  loc_668676: FStFPR8 var_3D8
  loc_668679: FFree1Str var_98
  loc_66867C: FFree1Ad var_90
  loc_66867F: FFree1Var var_B0 = ""
  loc_668684: End
  loc_66868C: ExitProc
  loc_66868F: Resume
  loc_668695: ExitProc
End Function

Private Function Proc_166_5_5FE748(arg_C, arg_10) '5FE748
  'Data Table: 40898C
  loc_5FE680: ILdRf arg_10
  loc_5FE683: ILdRf arg_C
  loc_5FE686: ImpAdCallI2  = Proc_166_1_5E45D4()
  loc_5FE68B: FStStr var_88
  loc_5FE68E: LitI4 1
  loc_5FE693: ILdRf var_88
  loc_5FE696: LitStr "E"
  loc_5FE699: LitI4 0
  loc_5FE69E: FnInStr4
  loc_5FE6A0: LitI4 0
  loc_5FE6A5: NeI4
  loc_5FE6A6: BranchF loc_5FE6E9
  loc_5FE6A9: ILdRf arg_10
  loc_5FE6AC: ILdRf arg_C
  loc_5FE6AF: ImpAdCallI2  = Proc_166_2_670C20()
  loc_5FE6B4: NotI4
  loc_5FE6B5: BranchF loc_5FE6E9
  loc_5FE6B8: LitVar_Missing var_108
  loc_5FE6BB: LitVar_Missing var_E8
  loc_5FE6BE: LitVarStr var_B8, "Aviso"
  loc_5FE6C3: FStVarCopyObj var_C8
  loc_5FE6C6: FLdRfVar var_C8
  loc_5FE6C9: LitI4 &H40
  loc_5FE6CE: LitVarStr var_98, "No se pudo visualizar el aviso de debitos"
  loc_5FE6D3: FStVarCopyObj var_A8
  loc_5FE6D6: FLdRfVar var_A8
  loc_5FE6D9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FE6DE: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5FE6E9: LitI4 1
  loc_5FE6EE: ILdRf var_88
  loc_5FE6F1: LitStr "N"
  loc_5FE6F4: LitI4 0
  loc_5FE6F9: FnInStr4
  loc_5FE6FB: LitI4 0
  loc_5FE700: NeI4
  loc_5FE701: BranchF loc_5FE744
  loc_5FE704: ILdRf arg_10
  loc_5FE707: ILdRf arg_C
  loc_5FE70A: ImpAdCallI2  = Proc_166_3_6DA7F0()
  loc_5FE70F: NotI4
  loc_5FE710: BranchF loc_5FE744
  loc_5FE713: LitVar_Missing var_108
  loc_5FE716: LitVar_Missing var_E8
  loc_5FE719: LitVarStr var_B8, "Aviso"
  loc_5FE71E: FStVarCopyObj var_C8
  loc_5FE721: FLdRfVar var_C8
  loc_5FE724: LitI4 &H40
  loc_5FE729: LitVarStr var_98, "No se pudo visualizar el Documento Legal"
  loc_5FE72E: FStVarCopyObj var_A8
  loc_5FE731: FLdRfVar var_A8
  loc_5FE734: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FE739: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5FE744: ExitProc
End Function

Private Function Proc_166_6_5E3E60(arg_C) '5E3E60
  'Data Table: 40898C
  loc_5E3DFC: LitI2_Byte 0
  loc_5E3DFE: FStI2 var_86
  loc_5E3E01: FLdI2 var_86
  loc_5E3E04: CI4UI1
  loc_5E3E05: ImpAdLdRf MemVar_74CB00
  loc_5E3E08: Ary1LdI4
  loc_5E3E09: LitStr vbNullString
  loc_5E3E0C: EqStr
  loc_5E3E0E: NotI4
  loc_5E3E0F: BranchF loc_5E3E5C
  loc_5E3E12: ILdRf arg_C
  loc_5E3E15: CDargRef
  loc_5E3E19: FLdRfVar var_AC
  loc_5E3E1C: FLdI2 var_86
  loc_5E3E1F: CI4UI1
  loc_5E3E20: ImpAdLdRf MemVar_74CB00
  loc_5E3E23: Ary1LdRf
  loc_5E3E24: CVarRef
  loc_5E3E29: FLdRfVar var_8C
  loc_5E3E2C: ImpAdLdPr unk_4089CA
  loc_5E3E2F: MemLdPr global_0
  loc_5E3E32:  = Forms
  loc_5E3E37: FLdPr var_8C
  loc_5E3E3A: from_stack_2 = Me.Item(from_stack_1)
  loc_5E3E3F: FLdRfVar var_AC
  loc_5E3E42: LdPrVar
  loc_5E3E44: LateMemCall
  loc_5E3E4A: FFree1Ad var_8C
  loc_5E3E4D: FFree1Var var_AC = ""
  loc_5E3E50: FLdI2 var_86
  loc_5E3E53: LitI2_Byte 1
  loc_5E3E55: AddI2
  loc_5E3E56: FStI2 var_86
  loc_5E3E59: Branch loc_5E3E01
  loc_5E3E5C: ExitProc
End Function

Private Function Proc_166_7_5EE3BC() '5EE3BC
  'Data Table: 40898C
  loc_5EE33C: LitI4 0
  loc_5EE341: LitVarI2 var_A8, 1
  loc_5EE346: LitI4 6
  loc_5EE34B: ImpAdLdI4 MemVar_74BEAC
  loc_5EE34E: ImpAdCallI2 Mid$(, , )
  loc_5EE353: FStStrNoPop var_AC
  loc_5EE356: ImpAdCallFPR4 push Val()
  loc_5EE35B: CI4R8
  loc_5EE35C: LitI4 1
  loc_5EE361: AndI4
  loc_5EE362: NeI4
  loc_5EE363: CVarBoolI2 var_13C
  loc_5EE367: LitI4 &H1C
  loc_5EE36C: ImpAdLdRf MemVar_74A170
  loc_5EE36F: Ary1LdI2
  loc_5EE370: CVarBoolI2 var_11C
  loc_5EE374: LitVarI2 var_DC, 3
  loc_5EE379: LitI4 1
  loc_5EE37E: ImpAdLdRf MemVar_74BF90
  loc_5EE381: CVarRef
  loc_5EE386: FLdRfVar var_EC
  loc_5EE389: ImpAdCallFPR4  = Mid(, , )
  loc_5EE38E: FLdRfVar var_EC
  loc_5EE391: LitVarStr var_FC, "\\."
  loc_5EE396: HardType
  loc_5EE397: EqVar var_10C
  loc_5EE39B: OrVar var_12C
  loc_5EE39F: AndVar var_14C
  loc_5EE3A3: CBoolVar
  loc_5EE3A5: FStI2 var_86
  loc_5EE3A8: FFree1Str var_AC
  loc_5EE3AB: FFreeVar var_A8 = "": var_DC = "": var_EC = "": var_11C = ""
  loc_5EE3B8: ExitProcI2
End Function

Private Function Proc_166_8_5EE620() '5EE620
  'Data Table: 40898C
  loc_5EE5A0: LitI4 0
  loc_5EE5A5: LitVarI2 var_A8, 1
  loc_5EE5AA: LitI4 6
  loc_5EE5AF: ImpAdLdI4 MemVar_74BEAC
  loc_5EE5B2: ImpAdCallI2 Mid$(, , )
  loc_5EE5B7: FStStrNoPop var_AC
  loc_5EE5BA: ImpAdCallFPR4 push Val()
  loc_5EE5BF: CI4R8
  loc_5EE5C0: LitI4 2
  loc_5EE5C5: AndI4
  loc_5EE5C6: NeI4
  loc_5EE5C7: CVarBoolI2 var_13C
  loc_5EE5CB: LitI4 &H1C
  loc_5EE5D0: ImpAdLdRf MemVar_74A170
  loc_5EE5D3: Ary1LdI2
  loc_5EE5D4: CVarBoolI2 var_11C
  loc_5EE5D8: LitVarI2 var_DC, 3
  loc_5EE5DD: LitI4 1
  loc_5EE5E2: ImpAdLdRf MemVar_74BF90
  loc_5EE5E5: CVarRef
  loc_5EE5EA: FLdRfVar var_EC
  loc_5EE5ED: ImpAdCallFPR4  = Mid(, , )
  loc_5EE5F2: FLdRfVar var_EC
  loc_5EE5F5: LitVarStr var_FC, "\\."
  loc_5EE5FA: HardType
  loc_5EE5FB: EqVar var_10C
  loc_5EE5FF: OrVar var_12C
  loc_5EE603: AndVar var_14C
  loc_5EE607: CBoolVar
  loc_5EE609: FStI2 var_86
  loc_5EE60C: FFree1Str var_AC
  loc_5EE60F: FFreeVar var_A8 = "": var_DC = "": var_EC = "": var_11C = ""
  loc_5EE61C: ExitProcI2
End Function

Private Function Proc_166_9_5EE158() '5EE158
  'Data Table: 40898C
  loc_5EE0D8: LitI4 0
  loc_5EE0DD: LitVarI2 var_A8, 1
  loc_5EE0E2: LitI4 6
  loc_5EE0E7: ImpAdLdI4 MemVar_74BEAC
  loc_5EE0EA: ImpAdCallI2 Mid$(, , )
  loc_5EE0EF: FStStrNoPop var_AC
  loc_5EE0F2: ImpAdCallFPR4 push Val()
  loc_5EE0F7: CI4R8
  loc_5EE0F8: LitI4 4
  loc_5EE0FD: AndI4
  loc_5EE0FE: NeI4
  loc_5EE0FF: CVarBoolI2 var_13C
  loc_5EE103: LitI4 &H1C
  loc_5EE108: ImpAdLdRf MemVar_74A170
  loc_5EE10B: Ary1LdI2
  loc_5EE10C: CVarBoolI2 var_11C
  loc_5EE110: LitVarI2 var_DC, 3
  loc_5EE115: LitI4 1
  loc_5EE11A: ImpAdLdRf MemVar_74BF90
  loc_5EE11D: CVarRef
  loc_5EE122: FLdRfVar var_EC
  loc_5EE125: ImpAdCallFPR4  = Mid(, , )
  loc_5EE12A: FLdRfVar var_EC
  loc_5EE12D: LitVarStr var_FC, "\\."
  loc_5EE132: HardType
  loc_5EE133: EqVar var_10C
  loc_5EE137: OrVar var_12C
  loc_5EE13B: AndVar var_14C
  loc_5EE13F: CBoolVar
  loc_5EE141: FStI2 var_86
  loc_5EE144: FFree1Str var_AC
  loc_5EE147: FFreeVar var_A8 = "": var_DC = "": var_EC = "": var_11C = ""
  loc_5EE154: ExitProcI2
End Function

Private Function Proc_166_10_693A48() '693A48
  'Data Table: 43B664
  loc_693464: LitI2_Byte &HFF
  loc_693466: PopTmpLdAd2 var_90
  loc_693469: ImpAdCallI2 Proc_53_4_718EF4()
  loc_69346E: NotI4
  loc_69346F: BranchF loc_693473
  loc_693472: ExitProc
  loc_693473: FLdRfVar var_8C
  loc_693476: NewIfNullAd
  loc_693479: FStAd var_94 
  loc_69347D: LitI2_Byte 0
  loc_69347F: FLdPr var_94
  loc_693487: LitI2_Byte &HFF
  loc_693489: FLdPr var_94
  loc_693491: LitStr "Courier New"
  loc_693494: FLdPr var_94
  loc_693497: Reset
  loc_69349C: LitI2_Byte &HFF
  loc_69349E: FLdPr var_94
  loc_6934A1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6934A6: LitI2_Byte &H14
  loc_6934A8: CR8I2
  loc_6934A9: PopFPR4
  loc_6934AA: FLdPr var_94
  loc_6934B2: LitNothing
  loc_6934B4: FStAd var_94 
  loc_6934B8: FLdRfVar var_1E0
  loc_6934BB: LitVar_Missing var_1DC
  loc_6934BE: LitVar_Missing var_1BC
  loc_6934C1: LitVar_Missing var_19C
  loc_6934C4: LitVar_Missing var_17C
  loc_6934C7: LitVar_Missing var_15C
  loc_6934CA: LitVar_Missing var_13C
  loc_6934CD: LitVar_Missing var_11C
  loc_6934D0: LitVar_Missing var_FC
  loc_6934D3: LitVar_Missing var_DC
  loc_6934D6: LitVar_Missing var_BC
  loc_6934D9: LitStr "DATOS DE CONFIGURACION"
  loc_6934DC: FStStrCopy var_9C
  loc_6934DF: FLdRfVar var_9C
  loc_6934E2: LitI4 1
  loc_6934E7: PopTmpLdAdStr var_98
  loc_6934EA: LitI2_Byte 9
  loc_6934EC: PopTmpLdAd2 var_90
  loc_6934EF: ImpAdLdRf MemVar_74C7D0
  loc_6934F2: NewIfNullPr clsMsg
  loc_6934F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6934FA: FLdZeroAd var_1E0
  loc_6934FD: FMemStStr arg_8(1136)
  loc_693503: FFree1Str var_9C
  loc_693506: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_69351D: FLdRfVar var_90
  loc_693520: FLdRfVar var_88
  loc_693523: NewIfNullPr CReporte
  loc_693526: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69352B: FLdI2 var_90
  loc_69352E: BranchF loc_693532
  loc_693531: ExitProc
  loc_693532: FLdRfVar var_90
  loc_693535: FLdRfVar var_8C
  loc_693538: NewIfNullRf
  loc_69353C: FMemLdRf unk_43B66D
  loc_693541: FLdRfVar var_88
  loc_693544: NewIfNullPr CReporte
  loc_693547:  = CReporte.BackColor
  loc_69354C: FLdI2 var_90
  loc_69354F: NotI4
  loc_693550: BranchF loc_69356F
  loc_693553: FLdRfVar var_88
  loc_693556: NewIfNullPr CReporte
  loc_693559:  = CReporte.Left
  loc_69355E: LitNothing
  loc_693560: CastAd
  loc_693563: FStAdFunc var_8C
  loc_693566: LitNothing
  loc_693568: CastAd
  loc_69356B: FStAdFunc var_88
  loc_69356E: ExitProc
  loc_69356F: FLdRfVar var_90
  loc_693572: FLdRfVar var_8C
  loc_693575: NewIfNullRf
  loc_693579: LitStr vbNullString
  loc_69357C: FStStrCopy var_9C
  loc_69357F: FLdRfVar var_9C
  loc_693582: FLdRfVar var_88
  loc_693585: NewIfNullPr CReporte
  loc_693588:  = CReporte.BackColor
  loc_69358D: FLdI2 var_90
  loc_693590: NotI4
  loc_693591: FFree1Str var_9C
  loc_693594: BranchF loc_6935B3
  loc_693597: FLdRfVar var_88
  loc_69359A: NewIfNullPr CReporte
  loc_69359D:  = CReporte.Left
  loc_6935A2: LitNothing
  loc_6935A4: CastAd
  loc_6935A7: FStAdFunc var_8C
  loc_6935AA: LitNothing
  loc_6935AC: CastAd
  loc_6935AF: FStAdFunc var_88
  loc_6935B2: ExitProc
  loc_6935B3: LitI2_Byte &HFF
  loc_6935B5: FLdRfVar var_8C
  loc_6935B8: NewIfNullPr CFuente
  loc_6935C0: LitI2_Byte 0
  loc_6935C2: FLdRfVar var_8C
  loc_6935C5: NewIfNullPr CFuente
  loc_6935CD: LitI2_Byte 0
  loc_6935CF: FLdRfVar var_8C
  loc_6935D2: NewIfNullPr CFuente
  loc_6935D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6935DA: LitI2_Byte 8
  loc_6935DC: CR8I2
  loc_6935DD: PopFPR4
  loc_6935DE: FLdRfVar var_8C
  loc_6935E1: NewIfNullPr CFuente
  loc_6935E9: FLdRfVar var_90
  loc_6935EC: FLdRfVar var_8C
  loc_6935EF: NewIfNullRf
  loc_6935F3: FMemLdRf unk_43B66D
  loc_6935F8: FLdRfVar var_88
  loc_6935FB: NewIfNullPr CReporte
  loc_6935FE:  = CReporte.hWnd
  loc_693603: FLdI2 var_90
  loc_693606: NotI4
  loc_693607: BranchF loc_693626
  loc_69360A: FLdRfVar var_88
  loc_69360D: NewIfNullPr CReporte
  loc_693610:  = CReporte.Left
  loc_693615: LitNothing
  loc_693617: CastAd
  loc_69361A: FStAdFunc var_8C
  loc_69361D: LitNothing
  loc_69361F: CastAd
  loc_693622: FStAdFunc var_88
  loc_693625: ExitProc
  loc_693626: FLdRfVar var_90
  loc_693629: FLdRfVar var_8C
  loc_69362C: NewIfNullRf
  loc_693630: LitStr vbNullString
  loc_693633: FStStrCopy var_9C
  loc_693636: FLdRfVar var_9C
  loc_693639: FLdRfVar var_88
  loc_69363C: NewIfNullPr CReporte
  loc_69363F:  = CReporte.hWnd
  loc_693644: FLdI2 var_90
  loc_693647: NotI4
  loc_693648: FFree1Str var_9C
  loc_69364B: BranchF loc_69366A
  loc_69364E: FLdRfVar var_88
  loc_693651: NewIfNullPr CReporte
  loc_693654:  = CReporte.Left
  loc_693659: LitNothing
  loc_69365B: CastAd
  loc_69365E: FStAdFunc var_8C
  loc_693661: LitNothing
  loc_693663: CastAd
  loc_693666: FStAdFunc var_88
  loc_693669: ExitProc
  loc_69366A: FLdRfVar var_90
  loc_69366D: FLdRfVar var_8C
  loc_693670: NewIfNullRf
  loc_693674: LitStr vbNullString
  loc_693677: FStStrCopy var_9C
  loc_69367A: FLdRfVar var_9C
  loc_69367D: FLdRfVar var_88
  loc_693680: NewIfNullPr CReporte
  loc_693683: CReporte.Caption = from_stack_1
  loc_693688: FLdI2 var_90
  loc_69368B: NotI4
  loc_69368C: FFree1Str var_9C
  loc_69368F: BranchF loc_6936AE
  loc_693692: FLdRfVar var_88
  loc_693695: NewIfNullPr CReporte
  loc_693698:  = CReporte.Left
  loc_69369D: LitNothing
  loc_69369F: CastAd
  loc_6936A2: FStAdFunc var_8C
  loc_6936A5: LitNothing
  loc_6936A7: CastAd
  loc_6936AA: FStAdFunc var_88
  loc_6936AD: ExitProc
  loc_6936AE: FLdRfVar var_1E0
  loc_6936B1: LitVar_Missing var_1DC
  loc_6936B4: LitVar_Missing var_1BC
  loc_6936B7: LitVar_Missing var_19C
  loc_6936BA: LitVar_Missing var_17C
  loc_6936BD: LitVar_Missing var_15C
  loc_6936C0: LitVar_Missing var_13C
  loc_6936C3: LitVar_Missing var_11C
  loc_6936C6: LitVar_Missing var_FC
  loc_6936C9: LitVar_Missing var_DC
  loc_6936CC: LitVar_Missing var_BC
  loc_6936CF: LitStr "FECHA: "
  loc_6936D2: FStStrCopy var_9C
  loc_6936D5: FLdRfVar var_9C
  loc_6936D8: LitI4 2
  loc_6936DD: PopTmpLdAdStr var_98
  loc_6936E0: LitI2_Byte 9
  loc_6936E2: PopTmpLdAd2 var_90
  loc_6936E5: ImpAdLdRf MemVar_74C7D0
  loc_6936E8: NewIfNullPr clsMsg
  loc_6936EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6936F0: FLdZeroAd var_1E0
  loc_6936F3: FMemStStr arg_8(1140)
  loc_6936F9: FFree1Str var_9C
  loc_6936FC: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_693713: FLdRfVar var_1E0
  loc_693716: LitVar_Missing var_1DC
  loc_693719: LitVar_Missing var_1BC
  loc_69371C: LitVar_Missing var_19C
  loc_69371F: LitVar_Missing var_17C
  loc_693722: LitVar_Missing var_15C
  loc_693725: LitVar_Missing var_13C
  loc_693728: LitVar_Missing var_11C
  loc_69372B: LitVar_Missing var_FC
  loc_69372E: LitVar_Missing var_DC
  loc_693731: LitVar_Missing var_BC
  loc_693734: LitStr "  *  HORA: "
  loc_693737: FStStrCopy var_9C
  loc_69373A: FLdRfVar var_9C
  loc_69373D: LitI4 3
  loc_693742: PopTmpLdAdStr var_98
  loc_693745: LitI2_Byte 9
  loc_693747: PopTmpLdAd2 var_90
  loc_69374A: ImpAdLdRf MemVar_74C7D0
  loc_69374D: NewIfNullPr clsMsg
  loc_693750: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_693755: FLdZeroAd var_1E0
  loc_693758: FMemStStr arg_8(1144)
  loc_69375E: FFree1Str var_9C
  loc_693761: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_693778: FLdRfVar var_BC
  loc_69377B: ImpAdCallFPR4  = Date
  loc_693780: LitI4 1
  loc_693785: LitI4 1
  loc_69378A: LitVarStr var_AC, "dd/mm/yyyy"
  loc_69378F: FStVarCopyObj var_DC
  loc_693792: FLdRfVar var_DC
  loc_693795: FLdRfVar var_BC
  loc_693798: ImpAdCallI2 Format$(, )
  loc_69379D: FStStr var_1F0
  loc_6937A0: FLdRfVar var_FC
  loc_6937A3: ImpAdCallFPR4  = Time
  loc_6937A8: LitI4 1
  loc_6937AD: LitI4 1
  loc_6937B2: LitVarStr var_CC, "HH:MM:SS"
  loc_6937B7: FStVarCopyObj var_11C
  loc_6937BA: FLdRfVar var_11C
  loc_6937BD: FLdRfVar var_FC
  loc_6937C0: ImpAdCallI2 Format$(, )
  loc_6937C5: FStStr var_1F4
  loc_6937C8: FLdRfVar var_90
  loc_6937CB: FLdRfVar var_8C
  loc_6937CE: NewIfNullRf
  loc_6937D2: FMemLdR4 arg_8(1140)
  loc_6937D7: FLdZeroAd var_1F0
  loc_6937DA: FStStrNoPop var_9C
  loc_6937DD: ConcatStr
  loc_6937DE: FStStrNoPop var_1E0
  loc_6937E1: FMemLdR4 arg_8(1144)
  loc_6937E6: ConcatStr
  loc_6937E7: FStStrNoPop var_1E4
  loc_6937EA: FLdZeroAd var_1F4
  loc_6937ED: FStStrNoPop var_1E8
  loc_6937F0: ConcatStr
  loc_6937F1: PopTmpLdAdStr
  loc_6937F5: FLdRfVar var_88
  loc_6937F8: NewIfNullPr CReporte
  loc_6937FB: CReporte.Caption = from_stack_1
  loc_693800: FLdI2 var_90
  loc_693803: NotI4
  loc_693804: FFreeStr var_9C = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_693815: FFreeVar var_BC = "": var_DC = "": var_FC = ""
  loc_693820: BranchF loc_69383F
  loc_693823: FLdRfVar var_88
  loc_693826: NewIfNullPr CReporte
  loc_693829:  = CReporte.Left
  loc_69382E: LitNothing
  loc_693830: CastAd
  loc_693833: FStAdFunc var_8C
  loc_693836: LitNothing
  loc_693838: CastAd
  loc_69383B: FStAdFunc var_88
  loc_69383E: ExitProc
  loc_69383F: FLdRfVar var_88
  loc_693842: NewIfNullRf
  loc_693846: ImpAdCallI2 Unknown_669EF4()
  loc_69384B: NotI4
  loc_69384C: BranchF loc_693850
  loc_69384F: ExitProc
  loc_693850: FLdRfVar var_88
  loc_693853: NewIfNullRf
  loc_693857: ImpAdCallI2 Unknown_674B24()
  loc_69385C: NotI4
  loc_69385D: BranchF loc_693861
  loc_693860: ExitProc
  loc_693861: FLdRfVar var_88
  loc_693864: NewIfNullRf
  loc_693868: ImpAdCallI2 Unknown_6B1E40()
  loc_69386D: NotI4
  loc_69386E: BranchF loc_693872
  loc_693871: ExitProc
  loc_693872: FLdRfVar var_88
  loc_693875: NewIfNullRf
  loc_693879: ImpAdCallI2 Unknown_656C40()
  loc_69387E: NotI4
  loc_69387F: BranchF loc_693883
  loc_693882: ExitProc
  loc_693883: FLdRfVar var_88
  loc_693886: NewIfNullRf
  loc_69388A: ImpAdCallI2 Unknown_6D0C14()
  loc_69388F: NotI4
  loc_693890: BranchF loc_693894
  loc_693893: ExitProc
  loc_693894: FLdRfVar var_88
  loc_693897: NewIfNullRf
  loc_69389B: ImpAdCallI2 Unknown_6DB4D8()
  loc_6938A0: NotI4
  loc_6938A1: BranchF loc_6938A5
  loc_6938A4: ExitProc
  loc_6938A5: FLdRfVar var_88
  loc_6938A8: NewIfNullRf
  loc_6938AC: ImpAdCallI2 Unknown_66FB14()
  loc_6938B1: NotI4
  loc_6938B2: BranchF loc_6938B6
  loc_6938B5: ExitProc
  loc_6938B6: FLdRfVar var_88
  loc_6938B9: NewIfNullRf
  loc_6938BD: ImpAdCallI2 Unknown_697BB0()
  loc_6938C2: NotI4
  loc_6938C3: BranchF loc_6938C7
  loc_6938C6: ExitProc
  loc_6938C7: FLdRfVar var_88
  loc_6938CA: NewIfNullRf
  loc_6938CE: ImpAdCallI2 Unknown_71240C()
  loc_6938D3: NotI4
  loc_6938D4: BranchF loc_6938D8
  loc_6938D7: ExitProc
  loc_6938D8: FLdRfVar var_88
  loc_6938DB: NewIfNullRf
  loc_6938DF: ImpAdCallI2 Unknown_6D85B8()
  loc_6938E4: NotI4
  loc_6938E5: BranchF loc_6938E9
  loc_6938E8: ExitProc
  loc_6938E9: FLdRfVar var_88
  loc_6938EC: NewIfNullRf
  loc_6938F0: ImpAdCallI2 Unknown_6738FC()
  loc_6938F5: NotI4
  loc_6938F6: BranchF loc_6938FA
  loc_6938F9: ExitProc
  loc_6938FA: FLdRfVar var_88
  loc_6938FD: NewIfNullRf
  loc_693901: ImpAdCallI2 Unknown_658D40()
  loc_693906: NotI4
  loc_693907: BranchF loc_69390B
  loc_69390A: ExitProc
  loc_69390B: FLdRfVar var_88
  loc_69390E: NewIfNullRf
  loc_693912: ImpAdCallI2 Unknown_69F6E8()
  loc_693917: NotI4
  loc_693918: BranchF loc_69391C
  loc_69391B: ExitProc
  loc_69391C: FLdRfVar var_88
  loc_69391F: NewIfNullRf
  loc_693923: ImpAdCallI2 Unknown_6D4C98()
  loc_693928: NotI4
  loc_693929: BranchF loc_69392D
  loc_69392C: ExitProc
  loc_69392D: FLdRfVar var_1E0
  loc_693930: LitVar_Missing var_1DC
  loc_693933: LitVar_Missing var_1BC
  loc_693936: LitVar_Missing var_19C
  loc_693939: LitVar_Missing var_17C
  loc_69393C: LitVar_Missing var_15C
  loc_69393F: LitVar_Missing var_13C
  loc_693942: LitVar_Missing var_11C
  loc_693945: LitVar_Missing var_FC
  loc_693948: LitVar_Missing var_DC
  loc_69394B: LitVar_Missing var_BC
  loc_69394E: LitStr "Impresión completa"
  loc_693951: FStStrCopy var_9C
  loc_693954: FLdRfVar var_9C
  loc_693957: LitI4 &HAF
  loc_69395C: PopTmpLdAdStr var_98
  loc_69395F: LitI2_Byte 9
  loc_693961: PopTmpLdAd2 var_90
  loc_693964: ImpAdLdRf MemVar_74C7D0
  loc_693967: NewIfNullPr clsMsg
  loc_69396A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69396F: FLdZeroAd var_1E0
  loc_693972: FMemStStr arg_8(1836)
  loc_693978: FFree1Str var_9C
  loc_69397B: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_693992: FLdRfVar var_1E0
  loc_693995: LitVar_Missing var_1DC
  loc_693998: LitVar_Missing var_1BC
  loc_69399B: LitVar_Missing var_19C
  loc_69399E: LitVar_Missing var_17C
  loc_6939A1: LitVar_Missing var_15C
  loc_6939A4: LitVar_Missing var_13C
  loc_6939A7: LitVar_Missing var_11C
  loc_6939AA: LitVar_Missing var_FC
  loc_6939AD: LitVar_Missing var_DC
  loc_6939B0: LitVar_Missing var_BC
  loc_6939B3: LitStr "Imprimir Configuración"
  loc_6939B6: FStStrCopy var_9C
  loc_6939B9: FLdRfVar var_9C
  loc_6939BC: LitI4 &HB0
  loc_6939C1: PopTmpLdAdStr var_98
  loc_6939C4: LitI2_Byte 9
  loc_6939C6: PopTmpLdAd2 var_90
  loc_6939C9: ImpAdLdRf MemVar_74C7D0
  loc_6939CC: NewIfNullPr clsMsg
  loc_6939CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6939D4: FLdZeroAd var_1E0
  loc_6939D7: FMemStStr arg_8(1840)
  loc_6939DD: FFree1Str var_9C
  loc_6939E0: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6939F7: FLdRfVar var_90
  loc_6939FA: FLdRfVar var_88
  loc_6939FD: NewIfNullPr CReporte
  loc_693A00: CReporte.ForeColor = from_stack_1
  loc_693A05: FLdI2 var_90
  loc_693A08: BranchF loc_693A36
  loc_693A0B: LitVar_Missing var_DC
  loc_693A0E: LitVar_Missing var_BC
  loc_693A11: FMemLdRf unk_43B66D
  loc_693A16: CVarRef
  loc_693A1B: LitI4 &H40
  loc_693A20: FMemLdRf unk_43B66D
  loc_693A25: CVarRef
  loc_693A2A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_693A2F: FFreeVar var_BC = ""
  loc_693A36: LitNothing
  loc_693A38: CastAd
  loc_693A3B: FStAdFunc var_8C
  loc_693A3E: LitNothing
  loc_693A40: CastAd
  loc_693A43: FStAdFunc var_88
  loc_693A46: ExitProc
  loc_693A47: ExitProc
End Function

Private Function Proc_166_11_66CC58(arg_10, arg_14) '66CC58
  'Data Table: 418E70
  loc_66C8AC: FLdRfVar var_C0
  loc_66C8AF: FLdRfVar var_BC
  loc_66C8B2: ImpAdLdRf MemVar_7520D4
  loc_66C8B5: NewIfNullPr Global
  loc_66C8B8:  = Global.App
  loc_66C8BD: FLdPr var_BC
  loc_66C8C0:  = App.Path
  loc_66C8C5: ILdRf var_C0
  loc_66C8C8: LitStr "\"
  loc_66C8CB: ConcatStr
  loc_66C8CC: FStStr var_B8
  loc_66C8CF: FFree1Str var_C0
  loc_66C8D2: FFree1Ad var_BC
  loc_66C8D5: OnErrorGoto loc_66CC1D
  loc_66C8D8: FMemLdPr
  loc_66C8DD: MemLdI2 global_0
  loc_66C8E0: NotI4
  loc_66C8E1: BranchF loc_66C939
  loc_66C8E4: LitI2_Byte 0
  loc_66C8E6: FMemLdPr
  loc_66C8EB: MemStI2 global_2
  loc_66C8EE: LitI2_Byte &HFF
  loc_66C8F0: FMemLdPr
  loc_66C8F5: MemStI2 global_0
  loc_66C8F8: LitStr "CEM44.ini"
  loc_66C8FB: FLdRfVar var_C8
  loc_66C8FE: CStr2Ansi
  loc_66C8FF: ILdRf var_C8
  loc_66C902: LitI4 0
  loc_66C907: LitStr "WRITELOG"
  loc_66C90A: FLdRfVar var_C4
  loc_66C90D: CStr2Ansi
  loc_66C90E: ILdRf var_C4
  loc_66C911: LitStr "GENERAL"
  loc_66C914: FLdRfVar var_C0
  loc_66C917: CStr2Ansi
  loc_66C918: ILdRf var_C0
  loc_66C91B: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_66C920: FStR4 var_CC
  loc_66C923: SetLastSystemError
  loc_66C924: ILdRf var_CC
  loc_66C927: CI2I4
  loc_66C928: FMemLdPr
  loc_66C92D: MemStI2 global_2
  loc_66C930: FFreeStr var_C0 = "": var_C4 = ""
  loc_66C939: FMemLdPr
  loc_66C93E: MemLdI2 global_2
  loc_66C941: LitI2_Byte 0
  loc_66C943: EqI2
  loc_66C944: BranchF loc_66C94B
  loc_66C947: ExitProcCb
  loc_66C94B: ILdI4 arg_14
  loc_66C94E: FStAd var_BC 
  loc_66C952: FLdRfVar var_BC
  loc_66C955: CVarRef
  loc_66C95A: ImpAdCallI2 IsNull()
  loc_66C95F: FStI2 var_DE
  loc_66C962: ILdRf var_BC
  loc_66C965: CastAd
  loc_66C968: IStAdFunc
  loc_66C96C: FLdI2 var_DE
  loc_66C96F: FFree1Ad var_BC
  loc_66C972: BranchF loc_66C9AB
  loc_66C975: FLdRfVar var_C0
  loc_66C978: ILdPr
  loc_66C97B:  = Err.Description
  loc_66C980: FLdZeroAd var_C0
  loc_66C983: FStStr var_AC
  loc_66C986: FLdRfVar var_CC
  loc_66C989: ILdPr
  loc_66C98C:  = Err.Number
  loc_66C991: ILdRf var_CC
  loc_66C994: FStR4 var_B0
  loc_66C997: FLdRfVar var_C0
  loc_66C99A: ILdPr
  loc_66C99D:  = Err.Source
  loc_66C9A2: FLdZeroAd var_C0
  loc_66C9A5: FStStr var_B4
  loc_66C9A8: Branch loc_66C9BF
  loc_66C9AB: LitStr vbNullString
  loc_66C9AE: FStStrCopy var_AC
  loc_66C9B1: LitI4 0
  loc_66C9B6: FStR4 var_B0
  loc_66C9B9: LitStr vbNullString
  loc_66C9BC: FStStrCopy var_B4
  loc_66C9BF: LitStr vbNullString
  loc_66C9C2: FStStrCopy var_A8
  loc_66C9C5: FLdRfVar var_F0
  loc_66C9C8: ImpAdCallFPR4  = Date
  loc_66C9CD: FLdRfVar var_F0
  loc_66C9D0: LitVarStr var_DC, " "
  loc_66C9D5: ConcatVar var_100
  loc_66C9D9: FLdRfVar var_110
  loc_66C9DC: ImpAdCallFPR4  = Time
  loc_66C9E1: FLdRfVar var_110
  loc_66C9E4: ConcatVar var_120
  loc_66C9E8: CStrVarTmp
  loc_66C9E9: FStStr var_A0
  loc_66C9EC: FFreeVar var_F0 = "": var_100 = "": var_110 = ""
  loc_66C9F7: ILdRf var_A0
  loc_66C9FA: LitStr " - "
  loc_66C9FD: ConcatStr
  loc_66C9FE: FStStrNoPop var_C0
  loc_66CA01: ILdI4 arg_10
  loc_66CA04: ConcatStr
  loc_66CA05: FStStrNoPop var_C4
  loc_66CA08: LitStr " "
  loc_66CA0B: ConcatStr
  loc_66CA0C: FStStr var_A0
  loc_66CA0F: FFreeStr var_C0 = ""
  loc_66CA16: ILdRf var_B0
  loc_66CA19: LitI4 0
  loc_66CA1E: NeI4
  loc_66CA1F: BranchF loc_66CA63
  loc_66CA22: ILdRf var_A0
  loc_66CA25: LitStr "- Error: ["
  loc_66CA28: ConcatStr
  loc_66CA29: FStStrNoPop var_C0
  loc_66CA2C: ILdRf var_B0
  loc_66CA2F: CStrI4
  loc_66CA31: FStStrNoPop var_C4
  loc_66CA34: ConcatStr
  loc_66CA35: FStStrNoPop var_C8
  loc_66CA38: LitStr "]  "
  loc_66CA3B: ConcatStr
  loc_66CA3C: FStStrNoPop var_124
  loc_66CA3F: ILdRf var_AC
  loc_66CA42: ConcatStr
  loc_66CA43: FStStrNoPop var_128
  loc_66CA46: LitStr " Source: "
  loc_66CA49: ConcatStr
  loc_66CA4A: FStStrNoPop var_12C
  loc_66CA4D: ILdRf var_B4
  loc_66CA50: ConcatStr
  loc_66CA51: FStStr var_A0
  loc_66CA54: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_124 = "": var_128 = ""
  loc_66CA63: ILdRf var_B8
  loc_66CA66: LitStr "CEM44LOG"
  loc_66CA69: ConcatStr
  loc_66CA6A: FStStr var_9C
  loc_66CA6D: FLdRfVar var_F0
  loc_66CA70: ImpAdCallFPR4  = Date
  loc_66CA75: ILdRf var_9C
  loc_66CA78: ILdRf var_A8
  loc_66CA7B: ConcatStr
  loc_66CA7C: CVarStr var_120
  loc_66CA7F: LitI4 1
  loc_66CA84: LitI4 1
  loc_66CA89: LitVarStr var_DC, "yyyymmdd"
  loc_66CA8E: FStVarCopyObj var_100
  loc_66CA91: FLdRfVar var_100
  loc_66CA94: FLdRfVar var_F0
  loc_66CA97: FLdRfVar var_110
  loc_66CA9A: ImpAdCallFPR4  = Format(, )
  loc_66CA9F: FLdRfVar var_110
  loc_66CAA2: ConcatVar var_13C
  loc_66CAA6: CStrVarTmp
  loc_66CAA7: FStStr var_A8
  loc_66CAAA: FFreeVar var_F0 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_66CAB7: LitI4 0
  loc_66CABC: ILdRf var_A8
  loc_66CABF: LitStr "*.log"
  loc_66CAC2: ConcatStr
  loc_66CAC3: CVarStr var_F0
  loc_66CAC6: ImpAdCallI2 push Dir(, )
  loc_66CACB: FStStr var_9C
  loc_66CACE: FFree1Var var_F0 = ""
  loc_66CAD1: ILdRf var_9C
  loc_66CAD4: LitStr vbNullString
  loc_66CAD7: EqStr
  loc_66CAD9: BranchF loc_66CB5B
  loc_66CADC: FLdRfVar var_F0
  loc_66CADF: ImpAdCallFPR4  = Time
  loc_66CAE4: ILdRf var_A8
  loc_66CAE7: CVarStr var_14C
  loc_66CAEA: LitI4 1
  loc_66CAEF: LitI4 1
  loc_66CAF4: LitVarStr var_DC, "hhmmss"
  loc_66CAF9: FStVarCopyObj var_100
  loc_66CAFC: FLdRfVar var_100
  loc_66CAFF: FLdRfVar var_F0
  loc_66CB02: FLdRfVar var_110
  loc_66CB05: ImpAdCallFPR4  = Format(, )
  loc_66CB0A: FLdRfVar var_110
  loc_66CB0D: ConcatVar var_120
  loc_66CB11: LitVarStr var_15C, ".log"
  loc_66CB16: ConcatVar var_13C
  loc_66CB1A: CStrVarTmp
  loc_66CB1B: FStStr var_A8
  loc_66CB1E: FFreeVar var_F0 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_66CB2B: ILdRf var_A8
  loc_66CB2E: LitI2_Byte 1
  loc_66CB30: LitI2_Byte &HFF
  loc_66CB32: OpenFile
  loc_66CB36: FLdRfVar var_A0
  loc_66CB39: CVarRef
  loc_66CB3E: FLdRfVar var_F0
  loc_66CB41: ImpAdCallFPR4  = Ucase()
  loc_66CB46: FLdRfVar var_F0
  loc_66CB49: LitI2_Byte 1
  loc_66CB4B: PrintFile
  loc_66CB51: FFree1Var var_F0 = ""
  loc_66CB54: LitI2_Byte 1
  loc_66CB56: Close
  loc_66CB58: Branch loc_66CB92
  loc_66CB5B: ILdRf var_B8
  loc_66CB5E: ILdRf var_9C
  loc_66CB61: ConcatStr
  loc_66CB62: FStStr var_A8
  loc_66CB65: ILdRf var_A8
  loc_66CB68: LitI2_Byte 1
  loc_66CB6A: LitI2_Byte &HFF
  loc_66CB6C: OpenFile
  loc_66CB70: FLdRfVar var_A0
  loc_66CB73: CVarRef
  loc_66CB78: FLdRfVar var_F0
  loc_66CB7B: ImpAdCallFPR4  = Ucase()
  loc_66CB80: FLdRfVar var_F0
  loc_66CB83: LitI2_Byte 1
  loc_66CB85: PrintFile
  loc_66CB8B: FFree1Var var_F0 = ""
  loc_66CB8E: LitI2_Byte 1
  loc_66CB90: Close
  loc_66CB92: ILdRf var_A8
  loc_66CB95: ImpAdCallI2 push FileLen()
  loc_66CB9A: LitI4 &H4C4B40
  loc_66CB9F: GtI4
  loc_66CBA0: BranchF loc_66CC19
  loc_66CBA3: LitI4 0
  loc_66CBA8: ILdRf var_A8
  loc_66CBAB: LitStr ".BK"
  loc_66CBAE: ConcatStr
  loc_66CBAF: CVarStr var_F0
  loc_66CBB2: ImpAdCallI2 push Dir(, )
  loc_66CBB7: FStStrNoPop var_C0
  loc_66CBBA: LitStr vbNullString
  loc_66CBBD: NeStr
  loc_66CBBF: FFree1Str var_C0
  loc_66CBC2: FFree1Var var_F0 = ""
  loc_66CBC5: BranchF loc_66CBDA
  loc_66CBC8: ILdRf var_A8
  loc_66CBCB: LitStr ".BK"
  loc_66CBCE: ConcatStr
  loc_66CBCF: CVarStr var_F0
  loc_66CBD2: ImpAdCallFPR4 Kill 
  loc_66CBD7: FFree1Var var_F0 = ""
  loc_66CBDA: ILdRf var_A8
  loc_66CBDD: ILdRf var_A8
  loc_66CBE0: LitStr ".BK"
  loc_66CBE3: ConcatStr
  loc_66CBE4: FStStrNoPop var_C0
  loc_66CBE7: NameFile
  loc_66CBE9: FFree1Str var_C0
  loc_66CBEC: ILdRf var_A8
  loc_66CBEF: LitI2_Byte 1
  loc_66CBF1: LitI2_Byte &HFF
  loc_66CBF3: OpenFile
  loc_66CBF7: FLdRfVar var_A0
  loc_66CBFA: CVarRef
  loc_66CBFF: FLdRfVar var_F0
  loc_66CC02: ImpAdCallFPR4  = Ucase()
  loc_66CC07: FLdRfVar var_F0
  loc_66CC0A: LitI2_Byte 1
  loc_66CC0C: PrintFile
  loc_66CC12: FFree1Var var_F0 = ""
  loc_66CC15: LitI2_Byte 1
  loc_66CC17: Close
  loc_66CC19: ExitProcCb
  loc_66CC1D: FLdRfVar var_C0
  loc_66CC20: ILdPr
  loc_66CC23:  = Err.Description
  loc_66CC28: LitVar_Missing var_120
  loc_66CC2B: LitVar_Missing var_110
  loc_66CC2E: LitVar_Missing var_100
  loc_66CC31: LitI4 &H10
  loc_66CC36: LitStr "Error escribiendo el log. Error: "
  loc_66CC39: ILdRf var_C0
  loc_66CC3C: ConcatStr
  loc_66CC3D: CVarStr var_F0
  loc_66CC40: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66CC45: FFree1Str var_C0
  loc_66CC48: FFreeVar var_F0 = "": var_100 = "": var_110 = ""
  loc_66CC53: ExitProcCb
End Function

Private Function Proc_166_12_63739C(arg_C) '63739C
  'Data Table: 43B664
  loc_6371B0: LitI4 &HFF
  loc_6371B5: PopTmpLdAdStr var_98
  loc_6371B8: ILdRf var_8C
  loc_6371BB: FLdRfVar var_90
  loc_6371BE: CStr2Ansi
  loc_6371BF: ILdRf var_90
  loc_6371C2: ImpAdCallFPR4 GetComputerName(, )
  loc_6371C7: SetLastSystemError
  loc_6371C8: ILdRf var_90
  loc_6371CB: FLdRfVar var_94
  loc_6371CE: CStr2Uni
  loc_6371D0: ILdRf var_94
  loc_6371D3: ILdRf var_8C
  loc_6371D6: StFixedStr
  loc_6371D9: FFreeStr var_90 = ""
  loc_6371E0: LitI4 1
  loc_6371E5: ILdRf var_8C
  loc_6371E8: LitStr vbNullString
  loc_6371EB: LitI4 0
  loc_6371F0: FnInStr4
  loc_6371F2: LitI4 1
  loc_6371F7: SubI4
  loc_6371F8: ILdRf var_8C
  loc_6371FB: FStStrCopy var_90
  loc_6371FE: ILdRf var_90
  loc_637201: ImpAdCallI2 Left$(, )
  loc_637206: FStStr var_94
  loc_637209: ILdRf var_90
  loc_63720C: ILdRf var_8C
  loc_63720F: StFixedStr
  loc_637212: FLdZeroAd var_94
  loc_637215: ILdRf var_8C
  loc_637218: StFixedStrFree
  loc_63721C: FFree1Str var_90
  loc_63721F: LitVarI2 var_CC, 2
  loc_637224: LitI4 1
  loc_637229: ILdI4 arg_C
  loc_63722C: FStAd var_9C 
  loc_637230: FLdRfVar var_9C
  loc_637233: CVarRef
  loc_637238: FLdRfVar var_DC
  loc_63723B: ImpAdCallFPR4  = Mid(, , )
  loc_637240: ILdRf var_9C
  loc_637243: CastAd
  loc_637246: IStAdFunc
  loc_63724A: FLdRfVar var_DC
  loc_63724D: LitVarStr var_EC, "//"
  loc_637252: HardType
  loc_637253: EqVarBool
  loc_637255: FFree1Ad var_9C
  loc_637258: FFreeVar var_CC = ""
  loc_63725F: BranchF loc_6372CB
  loc_637262: LitVarStr var_EC, "\\"
  loc_637267: FLdRfVar var_90
  loc_63726A: ILdPr
  loc_63726D:  = Me.Text
  loc_637272: ILdRf var_90
  loc_637275: FnLenStr
  loc_637276: LitI4 2
  loc_63727B: SubI4
  loc_63727C: CVarI4
  loc_637280: LitI4 3
  loc_637285: ILdI4 arg_C
  loc_637288: FStAd var_9C 
  loc_63728C: FLdRfVar var_9C
  loc_63728F: CVarRef
  loc_637294: FLdRfVar var_DC
  loc_637297: ImpAdCallFPR4  = Mid(, , )
  loc_63729C: ILdRf var_9C
  loc_63729F: CastAd
  loc_6372A2: IStAdFunc
  loc_6372A6: FLdRfVar var_DC
  loc_6372A9: ConcatVar var_FC
  loc_6372AD: CStrVarTmp
  loc_6372AE: FStStr var_88
  loc_6372B1: FFree1Str var_90
  loc_6372B4: FFree1Ad var_9C
  loc_6372B7: FFreeVar var_CC = "": var_DC = ""
  loc_6372C0: ILdRf var_88
  loc_6372C3: ILdPr
  loc_6372C6: Me.Text = from_stack_1
  loc_6372CB: ILdRf var_8C
  loc_6372CE: FStStrCopy var_90
  loc_6372D1: FLdRfVar var_90
  loc_6372D4: CVarRef
  loc_6372D9: FLdRfVar var_CC
  loc_6372DC: ImpAdCallFPR4  = Trim()
  loc_6372E1: ILdRf var_90
  loc_6372E4: ILdRf var_8C
  loc_6372E7: StFixedStr
  loc_6372EA: FLdRfVar var_CC
  loc_6372ED: FLdRfVar var_94
  loc_6372F0: ILdPr
  loc_6372F3:  = Me.Text
  loc_6372F8: ILdRf var_94
  loc_6372FB: FnLenStr
  loc_6372FC: LitI4 2
  loc_637301: SubI4
  loc_637302: CVarI4
  loc_637306: LitI4 3
  loc_63730B: ILdI4 arg_C
  loc_63730E: FStAd var_9C 
  loc_637312: FLdRfVar var_9C
  loc_637315: CVarRef
  loc_63731A: FLdRfVar var_FC
  loc_63731D: ImpAdCallFPR4  = Mid(, , )
  loc_637322: ILdRf var_9C
  loc_637325: CastAd
  loc_637328: IStAdFunc
  loc_63732C: FLdRfVar var_FC
  loc_63732F: FLdRfVar var_10C
  loc_637332: ImpAdCallFPR4  = Ucase()
  loc_637337: FLdRfVar var_10C
  loc_63733A: EqVarBool
  loc_63733C: FFreeStr var_90 = ""
  loc_637343: FFree1Ad var_9C
  loc_637346: FFreeVar var_DC = "": var_FC = "": var_CC = ""
  loc_637351: BranchF loc_63735F
  loc_637354: LitStr "\\."
  loc_637357: ILdPr
  loc_63735A: Me.Text = from_stack_1
  loc_63735F: FLdRfVar var_90
  loc_637362: ILdPr
  loc_637365:  = Me.Text
  loc_63736A: ILdRf var_90
  loc_63736D: LitStr "Pipe"
  loc_637370: LitStr "Startup"
  loc_637373: LitStr "CEM44"
  loc_637376: ImpAdCallFPR4 SaveSetting(, , , )
  loc_63737B: FFree1Str var_90
  loc_63737E: FLdRfVar var_90
  loc_637381: ILdPr
  loc_637384:  = Me.Text
  loc_637389: ILdRf var_90
  loc_63738C: LitStr "\pipe\Cem44Pipe"
  loc_63738F: ConcatStr
  loc_637390: FMemStStr arg_8(84)
  loc_637396: FFree1Str var_90
  loc_637399: ExitProc
End Function

Private Function Proc_166_13_5E8FA8(arg_C) '5E8FA8
  'Data Table: 43B664
  loc_5E8F3C: FLdRfVar var_94
  loc_5E8F3F: FLdRfVar var_90
  loc_5E8F42: FLdRfVar var_8C
  loc_5E8F45: ImpAdLdRf MemVar_7520D4
  loc_5E8F48: NewIfNullPr Global
  loc_5E8F4B:  = Global.Screen
  loc_5E8F50: FLdPr var_8C
  loc_5E8F53:  = Screen.ActiveForm
  loc_5E8F58: FLdPr var_90
  loc_5E8F5B:  = Form.Controls
  loc_5E8F60: FLdZeroAd var_94
  loc_5E8F63: FStAdFuncNoPop
  loc_5E8F66: FLdRfVar var_88
  loc_5E8F69: FFreeAd var_8C = ""
  loc_5E8F70: ForEachCollObj
  loc_5E8F7A: On Error Resume Next
  loc_5E8F7F: ILdI2 arg_C
  loc_5E8F82: CVarBoolI2 var_AC
  loc_5E8F86: PopAdLdVar
  loc_5E8F87: FLdPr var_88
  loc_5E8F8A: LateMemSt
  loc_5E8F8E: FFree1Var var_AC = ""
  loc_5E8F93: FLdRfVar var_88
  loc_5E8F96: NextEachCollObj
  loc_5E8FA0: On Error GoTo 0
  loc_5E8FA5: ExitProc
  loc_5E8FA6: FFree1Str arg_2C3C
End Function

Private Function Proc_166_14_5D4888() '5D4888
  'Data Table: 4028D8
  loc_5D4864: LitI2_Byte 0
  loc_5D4866: FStI2 var_86
  loc_5D4869: ImpAdLdUI1
  loc_5D486D: CI2UI1
  loc_5D486F: LitI2_Byte 4
  loc_5D4871: EqI2
  loc_5D4872: ImpAdLdUI1
  loc_5D4876: CI2UI1
  loc_5D4878: LitI2_Byte 5
  loc_5D487A: EqI2
  loc_5D487B: OrI4
  loc_5D487C: BranchF loc_5D4884
  loc_5D487F: LitI2_Byte &HFF
  loc_5D4881: FStI2 var_86
  loc_5D4884: ExitProcI2
  loc_5D4885: ILdRf arg_16
End Function

Private Function Proc_166_15_5DE00C() '5DE00C
  'Data Table: 402FF4
  loc_5DDFBC: LitI2_Byte 1
  loc_5DDFBE: FLdRfVar var_86
  loc_5DDFC1: LitI2_Byte &HA
  loc_5DDFC3: ForI2 var_8A
  loc_5DDFC9: FLdI2 var_86
  loc_5DDFCC: CI4UI1
  loc_5DDFCD: FMemLdRf unk_402FFD
  loc_5DDFD2: Ary1LdRf
  loc_5DDFD3: FStR4 var_90
  loc_5DDFD6: LitI2_Byte 0
  loc_5DDFD8: CR8I2
  loc_5DDFD9: FMemStFPR8 var_90(0)
  loc_5DDFDE: LitI2_Byte 0
  loc_5DDFE0: CR8I2
  loc_5DDFE1: FMemStFPR8 var_90(8)
  loc_5DDFE6: LitI4 0
  loc_5DDFEB: FMemStI4 var_90(16)
  loc_5DDFF0: LitI2_Byte 0
  loc_5DDFF2: CR8I2
  loc_5DDFF3: FMemStFPR8 var_90(20)
  loc_5DDFF8: LitI4 0
  loc_5DDFFD: FStR4 var_90
  loc_5DE000: FLdRfVar var_86
  loc_5DE003: NextI2 var_8A, loc_5DDFC9
  loc_5DE008: ExitProc
End Function

Private Function Proc_166_16_5E94AC(arg_C) '5E94AC
  'Data Table: 402FF4
  loc_5E9440: LitStr "0000000000"
  loc_5E9443: FStStrCopy var_8C
  loc_5E9446: ILdI2 arg_C
  loc_5E9449: LitI2_Byte 1
  loc_5E944B: SubI2
  loc_5E944C: CVarI2 var_BC
  loc_5E944F: LitI4 1
  loc_5E9454: FLdRfVar var_8C
  loc_5E9457: CVarRef
  loc_5E945C: FLdRfVar var_CC
  loc_5E945F: ImpAdCallFPR4  = Mid(, , )
  loc_5E9464: FLdRfVar var_CC
  loc_5E9467: LitVarStr var_DC, "1"
  loc_5E946C: ConcatVar var_EC
  loc_5E9470: LitVar_Missing var_11C
  loc_5E9473: ILdI2 arg_C
  loc_5E9476: LitI2_Byte 1
  loc_5E9478: AddI2
  loc_5E9479: CI4UI1
  loc_5E947A: FLdRfVar var_8C
  loc_5E947D: CVarRef
  loc_5E9482: FLdRfVar var_12C
  loc_5E9485: ImpAdCallFPR4  = Mid(, , )
  loc_5E948A: FLdRfVar var_12C
  loc_5E948D: ConcatVar var_13C
  loc_5E9491: CStrVarTmp
  loc_5E9492: FStStr var_8C
  loc_5E9495: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_EC = "": var_12C = ""
  loc_5E94A4: ILdRf var_8C
  loc_5E94A7: FStStrCopy var_88
  loc_5E94AA: ExitProc
End Function

Private Function Proc_166_17_5DBC20() '5DBC20
  'Data Table: 402FF4
  loc_5DBBDC: FMemLdRf unk_402FFD
  loc_5DBBE1: FStR4 var_88
  loc_5DBBE4: LitI2_Byte 0
  loc_5DBBE6: CR8I2
  loc_5DBBE7: FMemStFPR8 var_88(0)
  loc_5DBBEC: LitI2_Byte 0
  loc_5DBBEE: CR8I2
  loc_5DBBEF: FMemStFPR8 var_88(8)
  loc_5DBBF4: LitI4 0
  loc_5DBBF9: FMemStI4 var_88(16)
  loc_5DBBFE: LitI2_Byte 0
  loc_5DBC00: CR8I2
  loc_5DBC01: FMemStFPR8 var_88(20)
  loc_5DBC06: LitI2_Byte 0
  loc_5DBC08: CR8I2
  loc_5DBC09: FMemStFPR8 var_88(32)
  loc_5DBC0E: LitI2_Byte 0
  loc_5DBC10: FMemStI2 var_88(28)
  loc_5DBC15: LitI4 0
  loc_5DBC1A: FStR4 var_88
  loc_5DBC1D: ExitProc
End Function

Private Function Proc_166_18_621DF4(arg_C, arg_10) '621DF4
  'Data Table: 402FF4
  loc_621CB8: ILdRf arg_C
  loc_621CBB: FStStrCopy var_8C
  loc_621CBE: LitVarI2 var_C8, 2
  loc_621CC3: LitI4 7
  loc_621CC8: FLdRfVar var_8C
  loc_621CCB: CVarRef
  loc_621CD0: FLdRfVar var_D8
  loc_621CD3: ImpAdCallFPR4  = Mid(, , )
  loc_621CD8: FLdRfVar var_D8
  loc_621CDB: LitVarStr var_E8, "/"
  loc_621CE0: ConcatVar var_F8
  loc_621CE4: LitVarI2 var_128, 2
  loc_621CE9: LitI4 5
  loc_621CEE: FLdRfVar var_8C
  loc_621CF1: CVarRef
  loc_621CF6: FLdRfVar var_138
  loc_621CF9: ImpAdCallFPR4  = Mid(, , )
  loc_621CFE: FLdRfVar var_138
  loc_621D01: ConcatVar var_148
  loc_621D05: LitVarStr var_158, "/"
  loc_621D0A: ConcatVar var_168
  loc_621D0E: LitVarI2 var_198, 4
  loc_621D13: LitI4 1
  loc_621D18: FLdRfVar var_8C
  loc_621D1B: CVarRef
  loc_621D20: FLdRfVar var_1A8
  loc_621D23: ImpAdCallFPR4  = Mid(, , )
  loc_621D28: FLdRfVar var_1A8
  loc_621D2B: ConcatVar var_1B8
  loc_621D2F: FnCDateVar
  loc_621D31: LitI2_Byte 1
  loc_621D33: CR8I2
  loc_621D34: SubR4
  loc_621D35: CDateR8
  loc_621D36: FStFPR8 var_94
  loc_621D39: FFreeVar var_C8 = "": var_D8 = "": var_128 = "": var_F8 = "": var_138 = "": var_148 = "": var_198 = "": var_168 = "": var_1A8 = "": var_1B8 = ""
  loc_621D52: LitI4 1
  loc_621D57: LitI4 1
  loc_621D5C: LitVarStr var_B8, "yyyy"
  loc_621D61: FStVarCopyObj var_C8
  loc_621D64: FLdRfVar var_C8
  loc_621D67: FLdRfVar var_94
  loc_621D6A: CVarRef
  loc_621D6F: FLdRfVar var_D8
  loc_621D72: ImpAdCallFPR4  = Format(, )
  loc_621D77: FLdRfVar var_D8
  loc_621D7A: LitI4 1
  loc_621D7F: LitI4 1
  loc_621D84: LitVarStr var_108, "mm"
  loc_621D89: FStVarCopyObj var_F8
  loc_621D8C: FLdRfVar var_F8
  loc_621D8F: FLdRfVar var_94
  loc_621D92: CVarRef
  loc_621D97: FLdRfVar var_128
  loc_621D9A: ImpAdCallFPR4  = Format(, )
  loc_621D9F: FLdRfVar var_128
  loc_621DA2: ConcatVar var_138
  loc_621DA6: LitI4 1
  loc_621DAB: LitI4 1
  loc_621DB0: LitVarStr var_158, "dd"
  loc_621DB5: FStVarCopyObj var_148
  loc_621DB8: FLdRfVar var_148
  loc_621DBB: FLdRfVar var_94
  loc_621DBE: CVarRef
  loc_621DC3: FLdRfVar var_168
  loc_621DC6: ImpAdCallFPR4  = Format(, )
  loc_621DCB: FLdRfVar var_168
  loc_621DCE: ConcatVar var_198
  loc_621DD2: CStrVarTmp
  loc_621DD3: FStStr var_98
  loc_621DD6: FFreeVar var_C8 = "": var_F8 = "": var_D8 = "": var_128 = "": var_148 = "": var_138 = "": var_168 = ""
  loc_621DE9: ILdRf var_98
  loc_621DEC: ILdI4 arg_10
  loc_621DEF: ConcatStr
  loc_621DF0: FStStr var_88
  loc_621DF3: ExitProc
End Function

Private Function Proc_166_19_67A5A0(arg_C, arg_10, arg_14, arg_18) '67A5A0
  'Data Table: 402FF4
  loc_67A14A: ILdRf arg_14
  loc_67A14D: FStStrCopy var_88
  loc_67A152: OnErrorGoto loc_67A571
  loc_67A157: LitI4 0
  loc_67A15C: FStR4 var_8C
  loc_67A161: ILdRf var_8C
  loc_67A164: ILdI4 arg_C
  loc_67A167: FnLenStr
  loc_67A168: LtI4
  loc_67A169: BranchF loc_67A571
  loc_67A16E: LitI2_Byte 0
  loc_67A170: CR8I2
  loc_67A171: FStFPR8 var_98
  loc_67A176: LitI2_Byte 0
  loc_67A178: CR8I2
  loc_67A179: FStFPR8 var_A0
  loc_67A17E: LitI2_Byte 0
  loc_67A180: FStI2 var_AE
  loc_67A185: LitVarI2 var_F0, 3
  loc_67A18A: ILdRf var_8C
  loc_67A18D: FMemLdUI1 arg_8(0)
  loc_67A193: CI4UI1
  loc_67A194: AddI4
  loc_67A195: LitI4 3
  loc_67A19A: SubI4
  loc_67A19B: ILdRf arg_C
  loc_67A19E: CVarRef
  loc_67A1A3: FLdRfVar var_100
  loc_67A1A6: ImpAdCallFPR4  = Mid(, , )
  loc_67A1AB: FLdRfVar var_100
  loc_67A1AE: CStrVarVal var_104
  loc_67A1B2: ImpAdCallFPR4 push Val()
  loc_67A1B7: CI2R8
  loc_67A1B8: FLdI2 arg_18
  loc_67A1BB: EqI2
  loc_67A1BC: FLdI2 arg_18
  loc_67A1BF: LitI2_Byte 3
  loc_67A1C1: EqI2
  loc_67A1C2: OrI4
  loc_67A1C3: FFree1Str var_104
  loc_67A1C6: FFreeVar var_F0 = ""
  loc_67A1CD: BranchF loc_67A55A
  loc_67A1D2: FLdI2 arg_10
  loc_67A1D5: BranchF loc_67A3F0
  loc_67A1DA: LitVarI2 var_F0, 10
  loc_67A1DF: ILdRf var_8C
  loc_67A1E2: LitI4 1
  loc_67A1E7: AddI4
  loc_67A1E8: ILdRf arg_C
  loc_67A1EB: CVarRef
  loc_67A1F0: FLdRfVar var_100
  loc_67A1F3: ImpAdCallFPR4  = Mid(, , )
  loc_67A1F8: FLdRfVar var_100
  loc_67A1FB: LitVarStr var_114, " "
  loc_67A200: ConcatVar var_124
  loc_67A204: LitVarI2 var_154, 8
  loc_67A209: ILdRf var_8C
  loc_67A20C: LitI4 &HB
  loc_67A211: AddI4
  loc_67A212: ILdRf arg_C
  loc_67A215: CVarRef
  loc_67A21A: FLdRfVar var_164
  loc_67A21D: ImpAdCallFPR4  = Mid(, , )
  loc_67A222: FLdRfVar var_164
  loc_67A225: ConcatVar var_174
  loc_67A229: CStrVarTmp
  loc_67A22A: FStStr var_AC
  loc_67A22D: FFreeVar var_F0 = "": var_100 = "": var_154 = "": var_124 = "": var_164 = ""
  loc_67A23E: ILdRf var_AC
  loc_67A241: CDateStr
  loc_67A243: FStFPR8 var_A8
  loc_67A248: LitVarI2 var_F0, 4
  loc_67A24D: LitI4 1
  loc_67A252: FLdRfVar var_88
  loc_67A255: CVarRef
  loc_67A25A: FLdRfVar var_100
  loc_67A25D: ImpAdCallFPR4  = Mid(, , )
  loc_67A262: FLdRfVar var_100
  loc_67A265: LitVarStr var_114, "/"
  loc_67A26A: ConcatVar var_124
  loc_67A26E: LitVarI2 var_154, 2
  loc_67A273: LitI4 5
  loc_67A278: FLdRfVar var_88
  loc_67A27B: CVarRef
  loc_67A280: FLdRfVar var_164
  loc_67A283: ImpAdCallFPR4  = Mid(, , )
  loc_67A288: FLdRfVar var_164
  loc_67A28B: ConcatVar var_174
  loc_67A28F: LitVarStr var_184, "/"
  loc_67A294: ConcatVar var_194
  loc_67A298: LitVarI2 var_1C4, 2
  loc_67A29D: LitI4 7
  loc_67A2A2: FLdRfVar var_88
  loc_67A2A5: CVarRef
  loc_67A2AA: FLdRfVar var_1D4
  loc_67A2AD: ImpAdCallFPR4  = Mid(, , )
  loc_67A2B2: FLdRfVar var_1D4
  loc_67A2B5: ConcatVar var_1E4
  loc_67A2B9: LitVarStr var_1F4, " "
  loc_67A2BE: ConcatVar var_204
  loc_67A2C2: LitVarI2 var_234, 2
  loc_67A2C7: LitI4 9
  loc_67A2CC: FLdRfVar var_88
  loc_67A2CF: CVarRef
  loc_67A2D4: FLdRfVar var_244
  loc_67A2D7: ImpAdCallFPR4  = Mid(, , )
  loc_67A2DC: FLdRfVar var_244
  loc_67A2DF: ConcatVar var_254
  loc_67A2E3: LitVarStr var_264, ":"
  loc_67A2E8: ConcatVar var_274
  loc_67A2EC: LitVarI2 var_2A4, 2
  loc_67A2F1: LitI4 &HB
  loc_67A2F6: FLdRfVar var_88
  loc_67A2F9: CVarRef
  loc_67A2FE: FLdRfVar var_2B4
  loc_67A301: ImpAdCallFPR4  = Mid(, , )
  loc_67A306: FLdRfVar var_2B4
  loc_67A309: ConcatVar var_2C4
  loc_67A30D: LitVarStr var_2D4, ":"
  loc_67A312: ConcatVar var_2E4
  loc_67A316: LitVarI2 var_314, 2
  loc_67A31B: LitI4 &HD
  loc_67A320: FLdRfVar var_88
  loc_67A323: CVarRef
  loc_67A328: FLdRfVar var_324
  loc_67A32B: ImpAdCallFPR4  = Mid(, , )
  loc_67A330: FLdRfVar var_324
  loc_67A333: ConcatVar var_334
  loc_67A337: CStrVarTmp
  loc_67A338: FStStr var_AC
  loc_67A33B: FFreeVar var_F0 = "": var_100 = "": var_154 = "": var_124 = "": var_164 = "": var_174 = "": var_1C4 = "": var_194 = "": var_1D4 = "": var_1E4 = "": var_234 = "": var_204 = "": var_244 = "": var_254 = "": var_2A4 = "": var_274 = "": var_2B4 = "": var_2C4 = "": var_314 = "": var_2E4 = "": var_324 = ""
  loc_67A36C: FLdFPR8 var_A8
  loc_67A36F: ILdRf var_AC
  loc_67A372: CDateStr
  loc_67A374: LeR8
  loc_67A375: BranchF loc_67A3EB
  loc_67A37A: LitVarI2 var_F0, 8
  loc_67A37F: ILdRf var_8C
  loc_67A382: LitI4 &H18
  loc_67A387: AddI4
  loc_67A388: ILdRf arg_C
  loc_67A38B: CVarRef
  loc_67A390: FLdRfVar var_100
  loc_67A393: ImpAdCallFPR4  = Mid(, , )
  loc_67A398: FLdRfVar var_100
  loc_67A39B: FnCDblVar
  loc_67A39D: ImpAdLdFPR4 MemVar_74C2E0
  loc_67A3A0: DivR8
  loc_67A3A1: FnCDblR8
  loc_67A3A3: FStFPR8 var_98
  loc_67A3A6: FFreeVar var_F0 = "": var_100 = ""
  loc_67A3B1: LitVarI2 var_F0, 8
  loc_67A3B6: ILdRf var_8C
  loc_67A3B9: LitI4 &H20
  loc_67A3BE: AddI4
  loc_67A3BF: ILdRf arg_C
  loc_67A3C2: CVarRef
  loc_67A3C7: FLdRfVar var_100
  loc_67A3CA: ImpAdCallFPR4  = Mid(, , )
  loc_67A3CF: FLdRfVar var_100
  loc_67A3D2: FnCDblVar
  loc_67A3D4: LitI2_Byte &H64
  loc_67A3D6: CR8I2
  loc_67A3D7: DivR8
  loc_67A3D8: FStFPR8 var_A0
  loc_67A3DB: FFreeVar var_F0 = "": var_100 = ""
  loc_67A3E6: LitI2_Byte &HFF
  loc_67A3E8: FStI2 var_AE
  loc_67A3ED: Branch loc_67A465
  loc_67A3F4: LitVarI2 var_F0, 8
  loc_67A3F9: ILdRf var_8C
  loc_67A3FC: LitI4 &H18
  loc_67A401: AddI4
  loc_67A402: ILdRf arg_C
  loc_67A405: CVarRef
  loc_67A40A: FLdRfVar var_100
  loc_67A40D: ImpAdCallFPR4  = Mid(, , )
  loc_67A412: FLdRfVar var_100
  loc_67A415: FnCDblVar
  loc_67A417: ImpAdLdFPR4 MemVar_74C2E0
  loc_67A41A: DivR8
  loc_67A41B: FnCDblR8
  loc_67A41D: FStFPR8 var_98
  loc_67A420: FFreeVar var_F0 = "": var_100 = ""
  loc_67A42B: LitVarI2 var_F0, 8
  loc_67A430: ILdRf var_8C
  loc_67A433: LitI4 &H20
  loc_67A438: AddI4
  loc_67A439: ILdRf arg_C
  loc_67A43C: CVarRef
  loc_67A441: FLdRfVar var_100
  loc_67A444: ImpAdCallFPR4  = Mid(, , )
  loc_67A449: FLdRfVar var_100
  loc_67A44C: FnCDblVar
  loc_67A44E: LitI2_Byte &H64
  loc_67A450: CR8I2
  loc_67A451: DivR8
  loc_67A452: FStFPR8 var_A0
  loc_67A455: FFreeVar var_F0 = "": var_100 = ""
  loc_67A460: LitI2_Byte &HFF
  loc_67A462: FStI2 var_AE
  loc_67A469: FLdI2 var_AE
  loc_67A46C: BranchF loc_67A558
  loc_67A471: FMemLdFPR8 arg_8(28)
  loc_67A476: FLdFPR8 var_98
  loc_67A479: AddR8
  loc_67A47A: FMemStFPR8 arg_8(28)
  loc_67A481: FMemLdFPR8 arg_8(36)
  loc_67A486: FLdFPR8 var_A0
  loc_67A489: AddR8
  loc_67A48A: FMemStFPR8 arg_8(36)
  loc_67A491: ImpAdLdUI1
  loc_67A495: CI2UI1
  loc_67A497: LitI2_Byte 1
  loc_67A499: EqI2
  loc_67A49A: BranchF loc_67A4E2
  loc_67A49F: LitVarI2 var_F0, 2
  loc_67A4A4: ILdRf var_8C
  loc_67A4A7: FMemLdUI1 arg_8(0)
  loc_67A4AD: CI4UI1
  loc_67A4AE: AddI4
  loc_67A4AF: LitI4 2
  loc_67A4B4: SubI4
  loc_67A4B5: ILdRf arg_C
  loc_67A4B8: CVarRef
  loc_67A4BD: FLdRfVar var_100
  loc_67A4C0: ImpAdCallFPR4  = Mid(, , )
  loc_67A4C5: FLdRfVar var_100
  loc_67A4C8: CStrVarVal var_104
  loc_67A4CC: ImpAdCallFPR4 push Val()
  loc_67A4D1: CI2R8
  loc_67A4D2: FStI2 var_8E
  loc_67A4D5: FFree1Str var_104
  loc_67A4D8: FFreeVar var_F0 = ""
  loc_67A4DF: Branch loc_67A526
  loc_67A4E6: LitVarI2 var_F0, 2
  loc_67A4EB: ILdRf var_8C
  loc_67A4EE: FMemLdUI1 arg_8(0)
  loc_67A4F4: CI4UI1
  loc_67A4F5: AddI4
  loc_67A4F6: LitI4 &HA
  loc_67A4FB: SubI4
  loc_67A4FC: ILdRf arg_C
  loc_67A4FF: CVarRef
  loc_67A504: FLdRfVar var_100
  loc_67A507: ImpAdCallFPR4  = Mid(, , )
  loc_67A50C: FLdRfVar var_100
  loc_67A50F: CStrVarVal var_104
  loc_67A513: ImpAdCallFPR4 push Val()
  loc_67A518: CI2R8
  loc_67A519: FStI2 var_8E
  loc_67A51C: FFree1Str var_104
  loc_67A51F: FFreeVar var_F0 = ""
  loc_67A52A: FLdI2 var_8E
  loc_67A52D: LitI2_Byte 5
  loc_67A52F: EqI2
  loc_67A530: BranchF loc_67A546
  loc_67A535: FMemLdFPR8 arg_8(48)
  loc_67A53A: LitI2_Byte 1
  loc_67A53C: CR8I2
  loc_67A53D: AddR8
  loc_67A53E: FMemStFPR8 arg_8(48)
  loc_67A543: Branch loc_67A558
  loc_67A548: FMemLdR4 arg_8(44)
  loc_67A54D: LitI4 1
  loc_67A552: AddI4
  loc_67A553: FMemStI4 arg_8(44)
  loc_67A55E: ILdRf var_8C
  loc_67A561: FMemLdUI1 arg_8(0)
  loc_67A567: CI4UI1
  loc_67A568: AddI4
  loc_67A569: FStR4 var_8C
  loc_67A56E: Branch loc_67A15F
  loc_67A573: FLdRfVar var_33C
  loc_67A576: ImpAdCallI2 Err 'rtcErrObj
  loc_67A57B: FStAdFunc var_338
  loc_67A57E: FLdPr var_338
  loc_67A581:  = Err.Number
  loc_67A586: ILdRf var_33C
  loc_67A589: LitI4 &HD
  loc_67A58E: EqI4
  loc_67A58F: FFree1Ad var_338
  loc_67A592: BranchF loc_67A59B
  loc_67A597: Resume
  loc_67A59D: ExitProc
End Function

Private Function Proc_166_20_632200(arg_C) '632200
  'Data Table: 402FF4
  loc_632078: LitVarI2 var_C4, 2
  loc_63207D: LitI4 7
  loc_632082: ILdRf arg_C
  loc_632085: CVarRef
  loc_63208A: FLdRfVar var_D4
  loc_63208D: ImpAdCallFPR4  = Mid(, , )
  loc_632092: FLdRfVar var_D4
  loc_632095: LitVarStr var_E4, "/"
  loc_63209A: ConcatVar var_F4
  loc_63209E: LitVarI2 var_124, 2
  loc_6320A3: LitI4 5
  loc_6320A8: ILdRf arg_C
  loc_6320AB: CVarRef
  loc_6320B0: FLdRfVar var_134
  loc_6320B3: ImpAdCallFPR4  = Mid(, , )
  loc_6320B8: FLdRfVar var_134
  loc_6320BB: ConcatVar var_144
  loc_6320BF: LitVarStr var_154, "/"
  loc_6320C4: ConcatVar var_164
  loc_6320C8: LitVarI2 var_194, 4
  loc_6320CD: LitI4 1
  loc_6320D2: ILdRf arg_C
  loc_6320D5: CVarRef
  loc_6320DA: FLdRfVar var_1A4
  loc_6320DD: ImpAdCallFPR4  = Mid(, , )
  loc_6320E2: FLdRfVar var_1A4
  loc_6320E5: ConcatVar var_1B4
  loc_6320E9: FnCDateVar
  loc_6320EB: CVarDate var_1C4
  loc_6320EF: LitVarStr var_1D4, " "
  loc_6320F4: ConcatVar var_1E4
  loc_6320F8: LitVarI2 var_214, 2
  loc_6320FD: LitI4 9
  loc_632102: ILdRf arg_C
  loc_632105: CVarRef
  loc_63210A: FLdRfVar var_224
  loc_63210D: ImpAdCallFPR4  = Mid(, , )
  loc_632112: FLdRfVar var_224
  loc_632115: ConcatVar var_234
  loc_632119: LitVarStr var_244, ":"
  loc_63211E: ConcatVar var_254
  loc_632122: LitVarI2 var_284, 2
  loc_632127: LitI4 &HB
  loc_63212C: ILdRf arg_C
  loc_63212F: CVarRef
  loc_632134: FLdRfVar var_294
  loc_632137: ImpAdCallFPR4  = Mid(, , )
  loc_63213C: FLdRfVar var_294
  loc_63213F: ConcatVar var_2A4
  loc_632143: LitVarStr var_2B4, ":"
  loc_632148: ConcatVar var_2C4
  loc_63214C: LitVarI2 var_2F4, 2
  loc_632151: LitI4 &HD
  loc_632156: ILdRf arg_C
  loc_632159: CVarRef
  loc_63215E: FLdRfVar var_304
  loc_632161: ImpAdCallFPR4  = Mid(, , )
  loc_632166: FLdRfVar var_304
  loc_632169: ConcatVar var_314
  loc_63216D: FnCDateVar
  loc_63216F: FStFPR8 var_94
  loc_632172: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_F4 = "": var_134 = "": var_144 = "": var_194 = "": var_164 = "": var_1A4 = "": var_1B4 = "": var_1B4 = "": var_214 = "": var_1E4 = "": var_224 = "": var_234 = "": var_284 = "": var_254 = "": var_294 = "": var_2A4 = "": var_2F4 = "": var_2C4 = "": var_304 = ""
  loc_6321A3: FLdRfVar var_94
  loc_6321A6: CVarRef
  loc_6321AB: LitI2_Byte 1
  loc_6321AD: CR8I2
  loc_6321AE: PopFPR8
  loc_6321AF: LitStr "s"
  loc_6321B2: FLdRfVar var_C4
  loc_6321B5: ImpAdCallFPR4  = DateAdd(, , )
  loc_6321BA: FLdRfVar var_C4
  loc_6321BD: FnCDateVar
  loc_6321BF: FStFPR8 var_94
  loc_6321C2: FFree1Var var_C4 = ""
  loc_6321C5: LitI4 1
  loc_6321CA: LitI4 1
  loc_6321CF: LitVarStr var_B4, "YYYYMMDDHHmmSS"
  loc_6321D4: FStVarCopyObj var_C4
  loc_6321D7: FLdRfVar var_C4
  loc_6321DA: FLdRfVar var_94
  loc_6321DD: CVarRef
  loc_6321E2: FLdRfVar var_D4
  loc_6321E5: ImpAdCallFPR4  = Format(, )
  loc_6321EA: FLdRfVar var_D4
  loc_6321ED: CStrVarTmp
  loc_6321EE: FStStr var_8C
  loc_6321F1: FFreeVar var_C4 = ""
  loc_6321F8: ILdRf var_8C
  loc_6321FB: FStStrCopy var_88
  loc_6321FE: ExitProc
End Function

Private Function Proc_166_21_5E3380(arg_C, arg_10) '5E3380
  'Data Table: 402C3C
  loc_5E3324: FLdRfVar var_90
  loc_5E3327: LitI4 &H3F
  loc_5E332C: LitI4 0
  loc_5E3331: ILdI4 arg_C
  loc_5E3334: FLdRfVar var_A4
  loc_5E3337: CStr2Ansi
  loc_5E3338: ILdRf var_A4
  loc_5E333B: LitI4 -2147483646
  loc_5E3340: ImpAdCallI2 RegOpenKeyEx(, , , , )
  loc_5E3345: FStR4 var_A8
  loc_5E3348: SetLastSystemError
  loc_5E3349: ILdRf var_A4
  loc_5E334C: ILdRf arg_C
  loc_5E334F: CStr2Uni
  loc_5E3351: ILdRf var_A8
  loc_5E3354: FStR4 var_8C
  loc_5E3357: FFree1Str var_A4
  loc_5E335A: FLdRfVar var_A0
  loc_5E335D: ILdI4 arg_10
  loc_5E3360: ILdRf var_90
  loc_5E3363: ImpAdCallI2 Proc_167_0_6240E8(, , )
  loc_5E3368: FStR4 var_8C
  loc_5E336B: FLdRfVar var_A0
  loc_5E336E: FnCStrVar
  loc_5E3370: FStStr var_88
  loc_5E3373: ILdRf var_90
  loc_5E3376: ImpAdCallFPR4 RegCloseKey()
  loc_5E337B: SetLastSystemError
  loc_5E337C: ExitProc
End Function
