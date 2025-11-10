
Private Function Proc_137_0_63A288(arg_C, arg_10) '63A288
  'Data Table: 40B4F8
  loc_63A070: ILdI4 arg_C
  loc_63A073: FnLenStr
  loc_63A074: CVarI4
  loc_63A078: LitI4 1
  loc_63A07D: ILdI4 arg_C
  loc_63A080: LitStr " "
  loc_63A083: LitI4 0
  loc_63A088: FnInStr4
  loc_63A08A: LitI4 1
  loc_63A08F: SubI4
  loc_63A090: CVarI4
  loc_63A094: LitI4 1
  loc_63A099: ILdI4 arg_C
  loc_63A09C: LitStr " "
  loc_63A09F: LitI4 0
  loc_63A0A4: FnInStr4
  loc_63A0A6: LitI4 0
  loc_63A0AB: GtI4
  loc_63A0AC: CVarBoolI2 var_A0
  loc_63A0B0: FLdRfVar var_F0
  loc_63A0B3: ImpAdCallFPR4  = IIf(, , )
  loc_63A0B8: FLdRfVar var_F0
  loc_63A0BB: LitI4 1
  loc_63A0C0: ILdI4 arg_C
  loc_63A0C3: ImpAdCallI2 Mid$(, , )
  loc_63A0C8: FStStr var_88
  loc_63A0CB: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_63A0D6: ILdI4 arg_C
  loc_63A0D9: FnLenStr
  loc_63A0DA: CVarI4
  loc_63A0DE: LitI4 1
  loc_63A0E3: ILdI4 arg_C
  loc_63A0E6: LitStr " "
  loc_63A0E9: LitI4 0
  loc_63A0EE: FnInStr4
  loc_63A0F0: LitI4 1
  loc_63A0F5: AddI4
  loc_63A0F6: CVarI4
  loc_63A0FA: LitI4 1
  loc_63A0FF: ILdI4 arg_C
  loc_63A102: LitStr " "
  loc_63A105: LitI4 0
  loc_63A10A: FnInStr4
  loc_63A10C: LitI4 0
  loc_63A111: GtI4
  loc_63A112: CVarBoolI2 var_A0
  loc_63A116: FLdRfVar var_F0
  loc_63A119: ImpAdCallFPR4  = IIf(, , )
  loc_63A11E: FLdRfVar var_F0
  loc_63A121: CI2Var
  loc_63A122: FStI2 var_8A
  loc_63A125: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_63A130: ILdRf var_88
  loc_63A133: FnLenStr
  loc_63A134: ILdI4 arg_C
  loc_63A137: FnLenStr
  loc_63A138: EqI4
  loc_63A139: BranchF loc_63A144
  loc_63A13C: LitStr vbNullString
  loc_63A13F: IStStrCopy arg_C
  loc_63A143: ExitProc
  loc_63A144: ILdRf var_88
  loc_63A147: ImpAdCallI2 Proc_137_1_5D844C()
  loc_63A14C: FLdI2 arg_10
  loc_63A14F: LeI2
  loc_63A150: BranchF loc_63A26A
  loc_63A153: ILdI4 arg_C
  loc_63A156: FnLenStr
  loc_63A157: CVarI4
  loc_63A15B: FLdI2 var_8A
  loc_63A15E: LitI2_Byte 1
  loc_63A160: AddI2
  loc_63A161: CI4UI1
  loc_63A162: ILdI4 arg_C
  loc_63A165: LitStr " "
  loc_63A168: LitI4 0
  loc_63A16D: FnInStr4
  loc_63A16F: FLdI2 var_8A
  loc_63A172: CI4UI1
  loc_63A173: SubI4
  loc_63A174: CVarI4
  loc_63A178: FLdI2 var_8A
  loc_63A17B: LitI2_Byte 1
  loc_63A17D: AddI2
  loc_63A17E: CI4UI1
  loc_63A17F: ILdI4 arg_C
  loc_63A182: LitStr " "
  loc_63A185: LitI4 0
  loc_63A18A: FnInStr4
  loc_63A18C: LitI4 0
  loc_63A191: GtI4
  loc_63A192: CVarBoolI2 var_A0
  loc_63A196: FLdRfVar var_F0
  loc_63A199: ImpAdCallFPR4  = IIf(, , )
  loc_63A19E: FLdRfVar var_F0
  loc_63A1A1: FLdI2 var_8A
  loc_63A1A4: CI4UI1
  loc_63A1A5: ILdI4 arg_C
  loc_63A1A8: ImpAdCallI2 Mid$(, , )
  loc_63A1AD: FStStr var_90
  loc_63A1B0: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_63A1BB: ILdRf var_88
  loc_63A1BE: ImpAdCallI2 Proc_137_1_5D844C()
  loc_63A1C3: CI4UI1
  loc_63A1C4: LitStr " "
  loc_63A1C7: ILdRf var_90
  loc_63A1CA: ConcatStr
  loc_63A1CB: FStStrNoPop var_F4
  loc_63A1CE: FnLenStr
  loc_63A1CF: AddI4
  loc_63A1D0: FLdI2 arg_10
  loc_63A1D3: CI4UI1
  loc_63A1D4: GtI4
  loc_63A1D5: FFree1Str var_F4
  loc_63A1D8: BranchF loc_63A1DE
  loc_63A1DB: Branch loc_63A26A
  loc_63A1DE: ILdRf var_88
  loc_63A1E1: LitStr " "
  loc_63A1E4: ConcatStr
  loc_63A1E5: FStStrNoPop var_F4
  loc_63A1E8: ILdRf var_90
  loc_63A1EB: ConcatStr
  loc_63A1EC: FStStr var_88
  loc_63A1EF: FFree1Str var_F4
  loc_63A1F2: ILdRf var_88
  loc_63A1F5: FnLenStr
  loc_63A1F6: ILdI4 arg_C
  loc_63A1F9: FnLenStr
  loc_63A1FA: GeI4
  loc_63A1FB: BranchF loc_63A206
  loc_63A1FE: LitStr vbNullString
  loc_63A201: IStStrCopy arg_C
  loc_63A205: ExitProc
  loc_63A206: FLdI2 var_8A
  loc_63A209: LitI2_Byte 1
  loc_63A20B: AddI2
  loc_63A20C: CI4UI1
  loc_63A20D: ILdI4 arg_C
  loc_63A210: LitStr " "
  loc_63A213: LitI4 0
  loc_63A218: FnInStr4
  loc_63A21A: CVarI4
  loc_63A21E: FLdRfVar var_8A
  loc_63A221: CVarRef
  loc_63A226: FLdI2 var_8A
  loc_63A229: LitI2_Byte 1
  loc_63A22B: AddI2
  loc_63A22C: CI4UI1
  loc_63A22D: ILdI4 arg_C
  loc_63A230: LitStr " "
  loc_63A233: LitI4 0
  loc_63A238: FnInStr4
  loc_63A23A: LitI4 0
  loc_63A23F: EqI4
  loc_63A240: CVarBoolI2 var_A0
  loc_63A244: FLdRfVar var_E0
  loc_63A247: ImpAdCallFPR4  = IIf(, , )
  loc_63A24C: FLdRfVar var_E0
  loc_63A24F: LitVarI2 var_104, 1
  loc_63A254: AddVar var_F0
  loc_63A258: CI2Var
  loc_63A259: FStI2 var_8A
  loc_63A25C: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_63A267: Branch loc_63A144
  loc_63A26A: ILdI4 arg_C
  loc_63A26D: FnLenStr
  loc_63A26E: CVarI4
  loc_63A272: FLdI2 var_8A
  loc_63A275: CI4UI1
  loc_63A276: ILdI4 arg_C
  loc_63A279: ImpAdCallI2 Mid$(, , )
  loc_63A27E: IStStr
  loc_63A282: FFree1Var var_C0 = ""
  loc_63A285: ExitProc
End Function

Private Function Proc_137_1_5D844C(arg_C) '5D844C
  'Data Table: 40B4F8
  loc_5D8424: ILdRf arg_C
  loc_5D8427: FStStrCopy var_8C
  loc_5D842A: LitI2_Byte 0
  loc_5D842C: LitStr "^X"
  loc_5D842F: ILdRf var_8C
  loc_5D8432: FLdRfVar var_9C
  loc_5D8435: ImpAdCallFPR4  = Proc_103_3_624968(, , )
  loc_5D843A: FLdRfVar var_9C
  loc_5D843D: FnLenVar var_AC
  loc_5D8441: CI2Var
  loc_5D8442: FStI2 var_86
  loc_5D8445: FFree1Var var_9C = ""
  loc_5D8448: ExitProcI2
End Function
