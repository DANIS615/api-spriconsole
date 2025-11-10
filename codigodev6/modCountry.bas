
Private Function Proc_65_0_5E5404() '5E5404
  'Data Table: 418E70
  loc_5E539C: LitVarI2 var_B0, 1
  loc_5E53A1: LitI4 4
  loc_5E53A6: FMemLdR4 arg_8(7512)
  loc_5E53AB: ImpAdCallI2 Mid$(, , )
  loc_5E53B0: FStStrNoPop var_B4
  loc_5E53B3: LitStr "1"
  loc_5E53B6: EqStr
  loc_5E53B8: FFree1Str var_B4
  loc_5E53BB: FFree1Var var_B0 = ""
  loc_5E53BE: BranchF loc_5E5403
  loc_5E53C1: LitI2_Byte 1
  loc_5E53C3: FLdRfVar var_86
  loc_5E53C6: LitI2_Byte &H20
  loc_5E53C8: ForI2 var_B8
  loc_5E53CE: LitI2_Byte &HFF
  loc_5E53D0: FLdI2 var_86
  loc_5E53D3: CI4UI1
  loc_5E53D4: FMemLdRf unk_418E79
  loc_5E53D9: Ary1StI2
  loc_5E53DA: FLdRfVar var_86
  loc_5E53DD: NextI2 var_B8, loc_5E53CE
  loc_5E53E2: LitI2_Byte 1
  loc_5E53E4: FLdRfVar var_86
  loc_5E53E7: LitI2_Byte &H30
  loc_5E53E9: ForI2 var_BC
  loc_5E53EF: LitI2_Byte &HFF
  loc_5E53F1: FLdI2 var_86
  loc_5E53F4: CI4UI1
  loc_5E53F5: FMemLdRf unk_418E79
  loc_5E53FA: Ary1StI2
  loc_5E53FB: FLdRfVar var_86
  loc_5E53FE: NextI2 var_BC, loc_5E53EF
  loc_5E5403: ExitProc
End Function

Private Function Proc_65_1_5F7340(arg_10, arg_14, arg_18) '5F7340
  'Data Table: 43B664
  loc_5F7290: ILdRf arg_14
  loc_5F7293: FStStrCopy var_98
  loc_5F7296: ILdRf arg_10
  loc_5F7299: CVarRef
  loc_5F729E: ImpAdCallI2 TypeName()
  loc_5F72A3: FStStr var_AC
  loc_5F72A6: ILdRf var_AC
  loc_5F72A9: LitStr "Printer"
  loc_5F72AC: EqStr
  loc_5F72AE: BranchF loc_5F72F4
  loc_5F72B1: ILdRf var_98
  loc_5F72B4: FnLenStr
  loc_5F72B5: LitI4 &H50
  loc_5F72BA: GtI4
  loc_5F72BB: BranchF loc_5F72E5
  loc_5F72BE: FLdI2 arg_18
  loc_5F72C1: FLdRfVar var_98
  loc_5F72C4: ImpAdCallI2 Proc_137_0_63A288(, )
  loc_5F72C9: FStStr var_B4
  loc_5F72CC: FLdZeroAd var_B4
  loc_5F72CF: FStStrNoPop var_B0
  loc_5F72D2: ILdI4 arg_10
  loc_5F72D5: PrintObject
  loc_5F72DB: FFreeStr var_B0 = ""
  loc_5F72E2: Branch loc_5F72B1
  loc_5F72E5: ILdRf var_98
  loc_5F72E8: ILdI4 arg_10
  loc_5F72EB: PrintObject
  loc_5F72F1: Branch loc_5F733A
  loc_5F72F4: ILdRf var_AC
  loc_5F72F7: LitStr "ListBox"
  loc_5F72FA: EqStr
  loc_5F72FC: BranchF loc_5F733A
  loc_5F72FF: ILdRf var_98
  loc_5F7302: FnLenStr
  loc_5F7303: LitI4 &H50
  loc_5F7308: GtI4
  loc_5F7309: BranchF loc_5F732A
  loc_5F730C: FLdI2 arg_18
  loc_5F730F: FLdRfVar var_98
  loc_5F7312: ImpAdCallI2 Proc_137_0_63A288(, )
  loc_5F7317: CVarStr var_C4
  loc_5F731A: PopAdLdVar
  loc_5F731B: ILdPr
  loc_5F731E: LateMemCall
  loc_5F7324: FFree1Var var_C4 = ""
  loc_5F7327: Branch loc_5F72FF
  loc_5F732A: FLdRfVar var_98
  loc_5F732D: CDargRef
  loc_5F7331: ILdPr
  loc_5F7334: LateMemCall
  loc_5F733A: ExitProcCb
  loc_5F733E: FLdRfVar arg_2C54
End Function

Private Function Proc_65_2_5E4BA8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '5E4BA8
  'Data Table: 40376C
  loc_5E4B34: FLdI2 arg_14
  loc_5E4B37: FLdI2 arg_20
  loc_5E4B3A: LtI2
  loc_5E4B3B: BranchF loc_5E4B46
  loc_5E4B3E: LitI2_Byte &HFF
  loc_5E4B40: FStI2 var_86
  loc_5E4B43: Branch loc_5E4BA5
  loc_5E4B46: FLdI2 arg_14
  loc_5E4B49: FLdI2 arg_20
  loc_5E4B4C: EqI2
  loc_5E4B4D: BranchF loc_5E4BA0
  loc_5E4B50: FLdI2 arg_10
  loc_5E4B53: FLdI2 arg_1C
  loc_5E4B56: LtI2
  loc_5E4B57: BranchF loc_5E4B62
  loc_5E4B5A: LitI2_Byte &HFF
  loc_5E4B5C: FStI2 var_86
  loc_5E4B5F: Branch loc_5E4B9D
  loc_5E4B62: FLdI2 arg_10
  loc_5E4B65: FLdI2 arg_1C
  loc_5E4B68: EqI2
  loc_5E4B69: BranchF loc_5E4B98
  loc_5E4B6C: FLdI2 arg_C
  loc_5E4B6F: FLdI2 arg_18
  loc_5E4B72: LtI2
  loc_5E4B73: BranchF loc_5E4B7E
  loc_5E4B76: LitI2_Byte &HFF
  loc_5E4B78: FStI2 var_86
  loc_5E4B7B: Branch loc_5E4B95
  loc_5E4B7E: FLdI2 arg_C
  loc_5E4B81: FLdI2 arg_18
  loc_5E4B84: EqI2
  loc_5E4B85: BranchF loc_5E4B90
  loc_5E4B88: LitI2_Byte 0
  loc_5E4B8A: FStI2 var_86
  loc_5E4B8D: Branch loc_5E4B95
  loc_5E4B90: LitI2_Byte 1
  loc_5E4B92: FStI2 var_86
  loc_5E4B95: Branch loc_5E4B9D
  loc_5E4B98: LitI2_Byte 1
  loc_5E4B9A: FStI2 var_86
  loc_5E4B9D: Branch loc_5E4BA5
  loc_5E4BA0: LitI2_Byte 1
  loc_5E4BA2: FStI2 var_86
  loc_5E4BA5: ExitProcI2
End Function

Private Function Proc_65_3_641944(arg_C, arg_10) '641944
  'Data Table: 40376C
  loc_6416F0: ILdRf arg_C
  loc_6416F3: FStStrCopy var_8C
  loc_6416F6: ILdRf arg_10
  loc_6416F9: FStStrCopy var_90
  loc_6416FC: LitVarI2 var_BC, 1
  loc_641701: LitI4 3
  loc_641706: ILdRf var_8C
  loc_641709: ImpAdCallI2 Mid$(, , )
  loc_64170E: FStStrNoPop var_C0
  loc_641711: LitStr ":"
  loc_641714: EqStr
  loc_641716: FFree1Str var_C0
  loc_641719: FFree1Var var_BC = ""
  loc_64171C: BranchF loc_6417FA
  loc_64171F: LitVarI2 var_BC, 2
  loc_641724: LitI4 1
  loc_641729: ILdRf var_8C
  loc_64172C: ImpAdCallI2 Mid$(, , )
  loc_641731: FStStrNoPop var_C0
  loc_641734: ImpAdCallFPR4 push Val()
  loc_641739: CI2R8
  loc_64173A: FStI2 var_92
  loc_64173D: FFree1Str var_C0
  loc_641740: FFree1Var var_BC = ""
  loc_641743: LitVarI2 var_BC, 2
  loc_641748: LitI4 4
  loc_64174D: ILdRf var_8C
  loc_641750: ImpAdCallI2 Mid$(, , )
  loc_641755: FStStrNoPop var_C0
  loc_641758: ImpAdCallFPR4 push Val()
  loc_64175D: CI2R8
  loc_64175E: FStI2 var_94
  loc_641761: FFree1Str var_C0
  loc_641764: FFree1Var var_BC = ""
  loc_641767: LitVarI2 var_BC, 2
  loc_64176C: LitI4 7
  loc_641771: ILdRf var_8C
  loc_641774: ImpAdCallI2 Mid$(, , )
  loc_641779: FStStrNoPop var_C0
  loc_64177C: ImpAdCallFPR4 push Val()
  loc_641781: CI2R8
  loc_641782: FStI2 var_96
  loc_641785: FFree1Str var_C0
  loc_641788: FFree1Var var_BC = ""
  loc_64178B: LitVarI2 var_BC, 2
  loc_641790: LitI4 1
  loc_641795: ILdRf var_90
  loc_641798: ImpAdCallI2 Mid$(, , )
  loc_64179D: FStStrNoPop var_C0
  loc_6417A0: ImpAdCallFPR4 push Val()
  loc_6417A5: CI2R8
  loc_6417A6: FStI2 var_98
  loc_6417A9: FFree1Str var_C0
  loc_6417AC: FFree1Var var_BC = ""
  loc_6417AF: LitVarI2 var_BC, 2
  loc_6417B4: LitI4 4
  loc_6417B9: ILdRf var_90
  loc_6417BC: ImpAdCallI2 Mid$(, , )
  loc_6417C1: FStStrNoPop var_C0
  loc_6417C4: ImpAdCallFPR4 push Val()
  loc_6417C9: CI2R8
  loc_6417CA: FStI2 var_9A
  loc_6417CD: FFree1Str var_C0
  loc_6417D0: FFree1Var var_BC = ""
  loc_6417D3: LitVarI2 var_BC, 2
  loc_6417D8: LitI4 7
  loc_6417DD: ILdRf var_90
  loc_6417E0: ImpAdCallI2 Mid$(, , )
  loc_6417E5: FStStrNoPop var_C0
  loc_6417E8: ImpAdCallFPR4 push Val()
  loc_6417ED: CI2R8
  loc_6417EE: FStI2 var_9C
  loc_6417F1: FFree1Str var_C0
  loc_6417F4: FFree1Var var_BC = ""
  loc_6417F7: Branch loc_6418D2
  loc_6417FA: LitVarI2 var_BC, 2
  loc_6417FF: LitI4 1
  loc_641804: ILdRf var_8C
  loc_641807: ImpAdCallI2 Mid$(, , )
  loc_64180C: FStStrNoPop var_C0
  loc_64180F: ImpAdCallFPR4 push Val()
  loc_641814: CI2R8
  loc_641815: FStI2 var_92
  loc_641818: FFree1Str var_C0
  loc_64181B: FFree1Var var_BC = ""
  loc_64181E: LitVarI2 var_BC, 2
  loc_641823: LitI4 3
  loc_641828: ILdRf var_8C
  loc_64182B: ImpAdCallI2 Mid$(, , )
  loc_641830: FStStrNoPop var_C0
  loc_641833: ImpAdCallFPR4 push Val()
  loc_641838: CI2R8
  loc_641839: FStI2 var_94
  loc_64183C: FFree1Str var_C0
  loc_64183F: FFree1Var var_BC = ""
  loc_641842: LitVarI2 var_BC, 2
  loc_641847: LitI4 5
  loc_64184C: ILdRf var_8C
  loc_64184F: ImpAdCallI2 Mid$(, , )
  loc_641854: FStStrNoPop var_C0
  loc_641857: ImpAdCallFPR4 push Val()
  loc_64185C: CI2R8
  loc_64185D: FStI2 var_96
  loc_641860: FFree1Str var_C0
  loc_641863: FFree1Var var_BC = ""
  loc_641866: LitVarI2 var_BC, 2
  loc_64186B: LitI4 1
  loc_641870: ILdRf var_90
  loc_641873: ImpAdCallI2 Mid$(, , )
  loc_641878: FStStrNoPop var_C0
  loc_64187B: ImpAdCallFPR4 push Val()
  loc_641880: CI2R8
  loc_641881: FStI2 var_98
  loc_641884: FFree1Str var_C0
  loc_641887: FFree1Var var_BC = ""
  loc_64188A: LitVarI2 var_BC, 2
  loc_64188F: LitI4 3
  loc_641894: ILdRf var_90
  loc_641897: ImpAdCallI2 Mid$(, , )
  loc_64189C: FStStrNoPop var_C0
  loc_64189F: ImpAdCallFPR4 push Val()
  loc_6418A4: CI2R8
  loc_6418A5: FStI2 var_9A
  loc_6418A8: FFree1Str var_C0
  loc_6418AB: FFree1Var var_BC = ""
  loc_6418AE: LitVarI2 var_BC, 2
  loc_6418B3: LitI4 5
  loc_6418B8: ILdRf var_90
  loc_6418BB: ImpAdCallI2 Mid$(, , )
  loc_6418C0: FStStrNoPop var_C0
  loc_6418C3: ImpAdCallFPR4 push Val()
  loc_6418C8: CI2R8
  loc_6418C9: FStI2 var_9C
  loc_6418CC: FFree1Str var_C0
  loc_6418CF: FFree1Var var_BC = ""
  loc_6418D2: FLdI2 var_92
  loc_6418D5: FLdI2 var_98
  loc_6418D8: LtI2
  loc_6418D9: BranchF loc_6418E4
  loc_6418DC: LitI2_Byte &HFF
  loc_6418DE: FStI2 var_86
  loc_6418E1: Branch loc_641943
  loc_6418E4: FLdI2 var_92
  loc_6418E7: FLdI2 var_98
  loc_6418EA: EqI2
  loc_6418EB: BranchF loc_64193E
  loc_6418EE: FLdI2 var_94
  loc_6418F1: FLdI2 var_9A
  loc_6418F4: LtI2
  loc_6418F5: BranchF loc_641900
  loc_6418F8: LitI2_Byte &HFF
  loc_6418FA: FStI2 var_86
  loc_6418FD: Branch loc_64193B
  loc_641900: FLdI2 var_94
  loc_641903: FLdI2 var_9A
  loc_641906: EqI2
  loc_641907: BranchF loc_641936
  loc_64190A: FLdI2 var_96
  loc_64190D: FLdI2 var_9C
  loc_641910: LtI2
  loc_641911: BranchF loc_64191C
  loc_641914: LitI2_Byte &HFF
  loc_641916: FStI2 var_86
  loc_641919: Branch loc_641933
  loc_64191C: FLdI2 var_96
  loc_64191F: FLdI2 var_9C
  loc_641922: EqI2
  loc_641923: BranchF loc_64192E
  loc_641926: LitI2_Byte 0
  loc_641928: FStI2 var_86
  loc_64192B: Branch loc_641933
  loc_64192E: LitI2_Byte 1
  loc_641930: FStI2 var_86
  loc_641933: Branch loc_64193B
  loc_641936: LitI2_Byte 1
  loc_641938: FStI2 var_86
  loc_64193B: Branch loc_641943
  loc_64193E: LitI2_Byte 1
  loc_641940: FStI2 var_86
  loc_641943: ExitProcI2
End Function
