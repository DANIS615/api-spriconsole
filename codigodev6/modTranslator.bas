
Private Function Proc_81_0_5FA2C0(arg_C, arg_10, arg_14) '5FA2C0
  'Data Table: 43B664
  loc_5FA1FC: ILdRf arg_14
  loc_5FA1FF: FStStrCopy var_8C
  loc_5FA202: LitI2_Byte 1
  loc_5FA204: FStI2 var_8E
  loc_5FA207: FLdI2 var_8E
  loc_5FA20A: CI4UI1
  loc_5FA20B: ILdI4 arg_C
  loc_5FA20E: ILdRf var_8C
  loc_5FA211: LitI4 0
  loc_5FA216: FnInStr4
  loc_5FA218: CI2I4
  loc_5FA219: FStI2 var_90
  loc_5FA21C: LitI2_Byte 1
  loc_5FA21E: FStI2 var_92
  loc_5FA221: FLdI2 var_92
  loc_5FA224: FLdI2 arg_10
  loc_5FA227: LtI2
  loc_5FA228: FLdI2 var_90
  loc_5FA22B: LitI2_Byte 0
  loc_5FA22D: NeI2
  loc_5FA22E: AndI4
  loc_5FA22F: BranchF loc_5FA260
  loc_5FA232: FLdI2 var_92
  loc_5FA235: LitI2_Byte 1
  loc_5FA237: AddI2
  loc_5FA238: FStI2 var_92
  loc_5FA23B: FLdI2 var_90
  loc_5FA23E: CI4UI1
  loc_5FA23F: ILdRf var_8C
  loc_5FA242: FnLenStr
  loc_5FA243: AddI4
  loc_5FA244: CI2I4
  loc_5FA245: FStI2 var_8E
  loc_5FA248: FLdI2 var_8E
  loc_5FA24B: CI4UI1
  loc_5FA24C: ILdI4 arg_C
  loc_5FA24F: ILdRf var_8C
  loc_5FA252: LitI4 0
  loc_5FA257: FnInStr4
  loc_5FA259: CI2I4
  loc_5FA25A: FStI2 var_90
  loc_5FA25D: Branch loc_5FA221
  loc_5FA260: FLdI2 var_90
  loc_5FA263: LitI2_Byte 0
  loc_5FA265: EqI2
  loc_5FA266: BranchF loc_5FA2A3
  loc_5FA269: FLdI2 var_92
  loc_5FA26C: FLdI2 arg_10
  loc_5FA26F: EqI2
  loc_5FA270: BranchF loc_5FA29A
  loc_5FA273: ILdI4 arg_C
  loc_5FA276: FnLenStr
  loc_5FA277: FLdI2 var_8E
  loc_5FA27A: CI4UI1
  loc_5FA27B: SubI4
  loc_5FA27C: ILdRf var_8C
  loc_5FA27F: FnLenStr
  loc_5FA280: AddI4
  loc_5FA281: CVarI4
  loc_5FA285: FLdI2 var_8E
  loc_5FA288: CI4UI1
  loc_5FA289: ILdI4 arg_C
  loc_5FA28C: ImpAdCallI2 Mid$(, , )
  loc_5FA291: FStStr var_88
  loc_5FA294: FFree1Var var_B4 = ""
  loc_5FA297: Branch loc_5FA2A0
  loc_5FA29A: LitStr vbNullString
  loc_5FA29D: FStStrCopy var_88
  loc_5FA2A0: Branch loc_5FA2BF
  loc_5FA2A3: FLdI2 var_90
  loc_5FA2A6: FLdI2 var_8E
  loc_5FA2A9: SubI2
  loc_5FA2AA: CVarI2 var_B4
  loc_5FA2AD: FLdI2 var_8E
  loc_5FA2B0: CI4UI1
  loc_5FA2B1: ILdI4 arg_C
  loc_5FA2B4: ImpAdCallI2 Mid$(, , )
  loc_5FA2B9: FStStr var_88
  loc_5FA2BC: FFree1Var var_B4 = ""
  loc_5FA2BF: ExitProc
End Function
