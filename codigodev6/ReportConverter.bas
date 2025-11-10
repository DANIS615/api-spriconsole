
Private Function Proc_98_0_5D7360(arg_C) '5D7360
  'Data Table: 409184
  loc_5D7334: ILdRf arg_C
  loc_5D7337: FStStrCopy var_8C
  loc_5D733A: LitI2_Byte 0
  loc_5D733C: FStI2 var_8E
  loc_5D733F: LitI2 240
  loc_5D7342: ILdRf var_8C
  loc_5D7345: ImpAdCallI2 Asc()
  loc_5D734A: AndI4
  loc_5D734B: LitI2_Byte 0
  loc_5D734D: EqI2
  loc_5D734E: BranchF loc_5D7356
  loc_5D7351: LitI2_Byte &HFF
  loc_5D7353: FStI2 var_8E
  loc_5D7356: FLdI2 var_8E
  loc_5D7359: FStI2 var_86
  loc_5D735C: ExitProcI2
End Function

Private Function Proc_98_1_5D7300(arg_C) '5D7300
  'Data Table: 409184
  loc_5D72D4: ILdRf arg_C
  loc_5D72D7: FStStrCopy var_8C
  loc_5D72DA: LitI2_Byte 0
  loc_5D72DC: FStI2 var_8E
  loc_5D72DF: LitI2 240
  loc_5D72E2: ILdRf var_8C
  loc_5D72E5: ImpAdCallI2 Asc()
  loc_5D72EA: AndI4
  loc_5D72EB: LitI2_Byte &H20
  loc_5D72ED: EqI2
  loc_5D72EE: BranchF loc_5D72F6
  loc_5D72F1: LitI2_Byte &HFF
  loc_5D72F3: FStI2 var_8E
  loc_5D72F6: FLdI2 var_8E
  loc_5D72F9: FStI2 var_86
  loc_5D72FC: ExitProcI2
End Function

Private Function Proc_98_2_5E4CF0(arg_C) '5E4CF0
  'Data Table: 43B664
  loc_5E4C7C: LitI2_Byte &HA
  loc_5E4C7E: ImpAdLdPr unk_43B88E
  loc_5E4C81: MemLdI2 global_4
  loc_5E4C84: LeI2
  loc_5E4C85: BranchF loc_5E4C90
  loc_5E4C88: LitI2_Byte &HFF
  loc_5E4C8A: FStI2 var_86
  loc_5E4C8D: Branch loc_5E4CEE
  loc_5E4C90: ILdRf arg_C
  loc_5E4C93: ImpAdCallI2 Proc_101_16_6179AC()
  loc_5E4C98: BranchF loc_5E4CC1
  loc_5E4C9B: FLdRfVar var_8A
  loc_5E4C9E: LitI2_Byte &H5D
  loc_5E4CA0: PopTmpLdAd2 var_88
  loc_5E4CA3: ImpAdLdRf MemVar_74A21C
  loc_5E4CA6: NewIfNullPr clsSecurity
  loc_5E4CAE: FLdUI1
  loc_5E4CB2: CI2UI1
  loc_5E4CB4: ImpAdLdPr unk_43B88E
  loc_5E4CB7: MemLdI2 global_4
  loc_5E4CBA: LtI2
  loc_5E4CBB: FStI2 var_86
  loc_5E4CBE: Branch loc_5E4CEE
  loc_5E4CC1: ImpAdLdPr unk_43B88E
  loc_5E4CC4: MemLdI2 global_4
  loc_5E4CC7: LitI2_Byte 9
  loc_5E4CC9: NeI2
  loc_5E4CCA: FLdRfVar var_8A
  loc_5E4CCD: LitI2_Byte &H5E
  loc_5E4CCF: PopTmpLdAd2 var_88
  loc_5E4CD2: ImpAdLdRf MemVar_74A21C
  loc_5E4CD5: NewIfNullPr clsSecurity
  loc_5E4CDD: FLdUI1
  loc_5E4CE1: CI2UI1
  loc_5E4CE3: ImpAdLdPr unk_43B88E
  loc_5E4CE6: MemLdI2 global_4
  loc_5E4CE9: LtI2
  loc_5E4CEA: AndI4
  loc_5E4CEB: FStI2 var_86
  loc_5E4CEE: ExitProcI2
End Function

Private Function Proc_98_3_5D53A4() '5D53A4
  'Data Table: 409184
  loc_5D5384: LitI2_Byte &H20
  loc_5D5386: ImpAdLdPr unk_409203
  loc_5D5389: MemLdI2 global_4
  loc_5D538C: AddI2
  loc_5D538D: CI4UI1
  loc_5D538E: FLdRfVar var_98
  loc_5D5391: ImpAdCallFPR4  = Chr()
  loc_5D5396: FLdRfVar var_98
  loc_5D5399: CStrVarTmp
  loc_5D539A: FStStr var_88
  loc_5D539D: FFree1Var var_98 = ""
  loc_5D53A0: ExitProc
  loc_5D53A1: ImpAdStCy MemVar_0
End Function

Private Function Proc_98_4_5D52A4(arg_C) '5D52A4
  'Data Table: 402748
  loc_5D527C: LitI4 3
  loc_5D5281: LitI4 0
  loc_5D5286: LitI4 0
  loc_5D528B: LitI4 0
  loc_5D5290: LitI4 0
  loc_5D5295: LitI4 -1
  loc_5D529A: ILdI4 arg_C
  loc_5D529D: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_5D52A2: SetLastSystemError
  loc_5D52A3: ExitProc
End Function
