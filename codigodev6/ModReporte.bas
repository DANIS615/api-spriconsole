
Private Function Proc_68_0_5F1270(arg_C, arg_10, arg_14) '5F1270
  'Data Table: 43B664
  loc_5F11E4: ILdRf arg_C
  loc_5F11E7: FStStrCopy var_8C
  loc_5F11EA: ILdRf arg_10
  loc_5F11ED: FStStrCopy var_90
  loc_5F11F0: ILdRf arg_14
  loc_5F11F3: FStStrCopy var_94
  loc_5F11F6: ILdRf var_8C
  loc_5F11F9: FStStrCopy var_88
  loc_5F11FC: LitI4 1
  loc_5F1201: ILdRf var_88
  loc_5F1204: ILdRf var_90
  loc_5F1207: LitI4 0
  loc_5F120C: FnInStr4
  loc_5F120E: CI2I4
  loc_5F120F: FStI2 var_96
  loc_5F1212: FLdI2 var_96
  loc_5F1215: LitI2_Byte 0
  loc_5F1217: GtI2
  loc_5F1218: BranchF loc_5F126E
  loc_5F121B: FLdI2 var_96
  loc_5F121E: LitI2_Byte 1
  loc_5F1220: SubI2
  loc_5F1221: CI4UI1
  loc_5F1222: ILdRf var_88
  loc_5F1225: ImpAdCallI2 Left$(, )
  loc_5F122A: FStStrNoPop var_9C
  loc_5F122D: ILdRf var_94
  loc_5F1230: ConcatStr
  loc_5F1231: FStStrNoPop var_A0
  loc_5F1234: ILdRf var_88
  loc_5F1237: FnLenStr
  loc_5F1238: FLdI2 var_96
  loc_5F123B: CI4UI1
  loc_5F123C: SubI4
  loc_5F123D: ILdRf var_88
  loc_5F1240: ImpAdCallI2 Right$(, )
  loc_5F1245: FStStrNoPop var_A4
  loc_5F1248: ConcatStr
  loc_5F1249: FStStr var_88
  loc_5F124C: FFreeStr var_9C = "": var_A0 = ""
  loc_5F1255: LitI4 1
  loc_5F125A: ILdRf var_88
  loc_5F125D: ILdRf var_90
  loc_5F1260: LitI4 0
  loc_5F1265: FnInStr4
  loc_5F1267: CI2I4
  loc_5F1268: FStI2 var_96
  loc_5F126B: Branch loc_5F1212
  loc_5F126E: ExitProc
End Function
