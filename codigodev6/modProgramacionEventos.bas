
Private Function Proc_17_0_5F4FDC() '5F4FDC
  'Data Table: 43B664
  loc_5F4F50: FLdRfVar var_1D4
  loc_5F4F53: LitVar_Missing var_1D0
  loc_5F4F56: LitVar_Missing var_1B0
  loc_5F4F59: LitVar_Missing var_190
  loc_5F4F5C: LitVar_Missing var_170
  loc_5F4F5F: LitVar_Missing var_150
  loc_5F4F62: LitVar_Missing var_130
  loc_5F4F65: LitVar_Missing var_110
  loc_5F4F68: LitVar_Missing var_F0
  loc_5F4F6B: LitVar_Missing var_D0
  loc_5F4F6E: LitVar_Missing var_B0
  loc_5F4F71: LitStr "Esta funcion no está disponible en las consolas remotas"
  loc_5F4F74: FStStrCopy var_90
  loc_5F4F77: FLdRfVar var_90
  loc_5F4F7A: LitI4 &H7A
  loc_5F4F7F: PopTmpLdAdStr var_8C
  loc_5F4F82: LitI2_Byte 9
  loc_5F4F84: PopTmpLdAd2 var_86
  loc_5F4F87: ImpAdLdRf MemVar_74C7D0
  loc_5F4F8A: NewIfNullPr clsMsg
  loc_5F4F8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_5F4F92: FLdZeroAd var_1D4
  loc_5F4F95: FMemStStr arg_8(1624)
  loc_5F4F9B: FFree1Str var_90
  loc_5F4F9E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_5F4FB5: LitVar_Missing var_F0
  loc_5F4FB8: LitVar_Missing var_D0
  loc_5F4FBB: LitVar_Missing var_B0
  loc_5F4FBE: LitI4 0
  loc_5F4FC3: FMemLdRf unk_43B66D
  loc_5F4FC8: CVarRef
  loc_5F4FCD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F4FD2: FFreeVar var_B0 = "": var_D0 = ""
  loc_5F4FDB: ExitProc
End Function

Private Function Proc_17_1_5E4490(arg_C, arg_10) '5E4490
  'Data Table: 418E70
  loc_5E4428: ILdRf arg_C
  loc_5E442B: FStStrCopy var_88
  loc_5E442E: FMemLdR4 arg_8(0)
  loc_5E4433: LitStr "6.0"
  loc_5E4436: EqStr
  loc_5E4438: FMemLdR4 arg_8(0)
  loc_5E443D: LitStr "6.1"
  loc_5E4440: EqStr
  loc_5E4442: OrI4
  loc_5E4443: BranchF loc_5E447D
  loc_5E4446: LitStr "WScript.Shell"
  loc_5E4449: FLdRfVar var_9C
  loc_5E444C: ImpAdCallFPR4  = CreateObject(, )
  loc_5E4451: FLdRfVar var_9C
  loc_5E4454: CAdVar
  loc_5E4456: FStAd var_8C 
  loc_5E445A: FFree1Var var_9C = ""
  loc_5E445D: FLdRfVar var_88
  loc_5E4460: CDargRef
  loc_5E4464: ILdRf arg_10
  loc_5E4467: CDargRef
  loc_5E446B: FLdPr var_8C
  loc_5E446E: LateMemCall
  loc_5E4474: LitNothing
  loc_5E4476: FStAd var_8C 
  loc_5E447A: Branch loc_5E448D
  loc_5E447D: ILdRf arg_10
  loc_5E4480: CVarRef
  loc_5E4485: ILdRf var_88
  loc_5E4488: ImpAdCallFPR4 SendKeys , 
  loc_5E448D: ExitProc
  loc_5E448E: PopTmpLdAd8 arg_38FE
End Function
