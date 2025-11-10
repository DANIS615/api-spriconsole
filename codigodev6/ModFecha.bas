
Private Function Proc_53_0_5D6F98(arg_10) '5D6F98
  'Data Table: 43B664
  loc_5D6F74: ILdRfDarg arg_10
  loc_5D6F7A: FnCDateVar
  loc_5D6F7C: CVarDate var_C4
  loc_5D6F80: FLdRfVar var_D4
  loc_5D6F83: ImpAdCallFPR4  = Month()
  loc_5D6F88: FLdRfVar var_D4
  loc_5D6F8B: FStVar var_94
  loc_5D6F8F: FFree1Var var_C4 = ""
  loc_5D6F92: ExitProcCb
End Function

Private Function Proc_53_1_5D6ED8(arg_10) '5D6ED8
  'Data Table: 43B664
  loc_5D6EB4: ILdRfDarg arg_10
  loc_5D6EBA: FnCDateVar
  loc_5D6EBC: CVarDate var_C4
  loc_5D6EC0: FLdRfVar var_D4
  loc_5D6EC3: ImpAdCallFPR4  = Year()
  loc_5D6EC8: FLdRfVar var_D4
  loc_5D6ECB: FStVar var_94
  loc_5D6ECF: FFree1Var var_C4 = ""
  loc_5D6ED2: ExitProcCb
  loc_5D6ED6: FStFPR8 arg_2CFF
End Function

Private Function Proc_53_2_5F2978(arg_C, arg_10) '5F2978
  'Data Table: 404D20
  loc_5F28E8: ILdI4 arg_C
  loc_5F28EB: ImpAdCallFPR4 push Val()
  loc_5F28F0: FStFPR8 var_E4
  loc_5F28F3: LitI4 1
  loc_5F28F8: LitI4 1
  loc_5F28FD: LitVarStr var_BC, "#######0.00"
  loc_5F2902: FStVarCopyObj var_CC
  loc_5F2905: FLdRfVar var_CC
  loc_5F2908: FLdFPR8 var_E4
  loc_5F290B: LitI2 1000
  loc_5F290E: CR8I2
  loc_5F290F: DivR8
  loc_5F2910: ILdUI1 arg_10
  loc_5F2914: CR8I2
  loc_5F2915: MulR8
  loc_5F2916: CVarR8
  loc_5F291A: FLdRfVar var_DC
  loc_5F291D: ImpAdCallFPR4  = Format(, )
  loc_5F2922: FLdRfVar var_DC
  loc_5F2925: CStrVarTmp
  loc_5F2926: FStStr var_8C
  loc_5F2929: FFreeVar var_AC = "": var_CC = ""
  loc_5F2932: LitVarI2 var_BC, 11
  loc_5F2937: FLdRfVar var_8C
  loc_5F293A: CVarRef
  loc_5F293F: FLdRfVar var_AC
  loc_5F2942: ImpAdCallFPR4  = Trim()
  loc_5F2947: FLdRfVar var_AC
  loc_5F294A: FnLenVar var_CC
  loc_5F294E: SubVar var_DC
  loc_5F2952: CI4Var
  loc_5F2954: FLdRfVar var_F4
  loc_5F2957: ImpAdCallFPR4  = Space()
  loc_5F295C: FLdRfVar var_F4
  loc_5F295F: ILdRf var_8C
  loc_5F2962: CVarStr var_104
  loc_5F2965: ConcatVar var_114
  loc_5F2969: CStrVarTmp
  loc_5F296A: FStStr var_88
  loc_5F296D: FFreeVar var_AC = "": var_F4 = ""
  loc_5F2976: ExitProc
End Function

Private Function Proc_53_3_69D408(arg_C, arg_10) '69D408
  'Data Table: 404D20
  loc_69CD6C: LitI4 1
  loc_69CD71: FStR4 var_88
  loc_69CD74: LitI4 &H2710
  loc_69CD79: FStR4 var_90
  loc_69CD7C: LitI2_Byte 1
  loc_69CD7E: CUI1I2
  loc_69CD80: FLdRfVar var_8A
  loc_69CD83: LitI2_Byte &HA
  loc_69CD85: CUI1I2
  loc_69CD87: ForUI1 var_94
  loc_69CD8D: LitVarI2 var_C4, 2
  loc_69CD92: ILdRf var_88
  loc_69CD95: LitI4 2
  loc_69CD9A: AddI4
  loc_69CD9B: ILdRf arg_10
  loc_69CD9E: CVarRef
  loc_69CDA3: FLdRfVar var_D4
  loc_69CDA6: ImpAdCallFPR4  = Mid(, , )
  loc_69CDAB: FLdRfVar var_D4
  loc_69CDAE: LitVarStr var_E4, "11"
  loc_69CDB3: HardType
  loc_69CDB4: EqVarBool
  loc_69CDB6: FFreeVar var_C4 = ""
  loc_69CDBD: BranchF loc_69CDC3
  loc_69CDC0: Branch loc_69CF1B
  loc_69CDC3: ILdRf var_88
  loc_69CDC6: LitI4 4
  loc_69CDCB: AddI4
  loc_69CDCC: FStR4 var_88
  loc_69CDCF: LitVarI2 var_C4, 25
  loc_69CDD4: ILdRf var_88
  loc_69CDD7: ILdRf arg_10
  loc_69CDDA: CVarRef
  loc_69CDDF: FLdRfVar var_D4
  loc_69CDE2: ImpAdCallFPR4  = Mid(, , )
  loc_69CDE7: FLdRfVar var_D4
  loc_69CDEA: CStrVarTmp
  loc_69CDEB: FStStrNoPop var_F8
  loc_69CDEE: FLdUI1
  loc_69CDF2: CI4UI1
  loc_69CDF3: FMemLdRf unk_404D2D
  loc_69CDF8: AryInRecLdPr
  loc_69CDFE: MemStStrCopy
  loc_69CE02: FFree1Str var_F8
  loc_69CE05: FFreeVar var_C4 = ""
  loc_69CE0C: ILdRf var_88
  loc_69CE0F: LitI4 &H19
  loc_69CE14: AddI4
  loc_69CE15: LitI4 1
  loc_69CE1A: AddI4
  loc_69CE1B: FStR4 var_88
  loc_69CE1E: LitVarI2 var_C4, 9
  loc_69CE23: ILdRf var_88
  loc_69CE26: ILdRf arg_10
  loc_69CE29: CVarRef
  loc_69CE2E: FLdRfVar var_D4
  loc_69CE31: ImpAdCallFPR4  = Mid(, , )
  loc_69CE36: FLdRfVar var_D4
  loc_69CE39: FnCCurVar
  loc_69CE3B: CR8Cy
  loc_69CE3C: LitI2_Byte &H64
  loc_69CE3E: CR8I2
  loc_69CE3F: DivR8
  loc_69CE40: CCyR4
  loc_69CE41: FLdUI1
  loc_69CE45: CI4UI1
  loc_69CE46: FMemLdRf unk_404D2D
  loc_69CE4B: AryInRecLdPr
  loc_69CE51: MemStR8 global_4
  loc_69CE54: FFreeVar var_C4 = "": var_D4 = ""
  loc_69CE5D: ILdRf var_88
  loc_69CE60: LitI4 9
  loc_69CE65: AddI4
  loc_69CE66: LitI4 1
  loc_69CE6B: AddI4
  loc_69CE6C: FStR4 var_88
  loc_69CE6F: LitVarI2 var_C4, 8
  loc_69CE74: ILdRf var_88
  loc_69CE77: ILdRf arg_10
  loc_69CE7A: CVarRef
  loc_69CE7F: FLdRfVar var_D4
  loc_69CE82: ImpAdCallFPR4  = Mid(, , )
  loc_69CE87: FLdRfVar var_D4
  loc_69CE8A: FnCCurVar
  loc_69CE8C: CR8Cy
  loc_69CE8D: ILdRf var_90
  loc_69CE90: CR8I4
  loc_69CE91: DivR8
  loc_69CE92: CCyR4
  loc_69CE93: FLdUI1
  loc_69CE97: CI4UI1
  loc_69CE98: FMemLdRf unk_404D2D
  loc_69CE9D: AryInRecLdPr
  loc_69CEA3: MemStR8 global_12
  loc_69CEA6: FFreeVar var_C4 = "": var_D4 = ""
  loc_69CEAF: ILdRf var_88
  loc_69CEB2: LitI4 8
  loc_69CEB7: AddI4
  loc_69CEB8: LitI4 1
  loc_69CEBD: AddI4
  loc_69CEBE: FStR4 var_88
  loc_69CEC1: LitVarI2 var_C4, 9
  loc_69CEC6: ILdRf var_88
  loc_69CEC9: ILdRf arg_10
  loc_69CECC: CVarRef
  loc_69CED1: FLdRfVar var_D4
  loc_69CED4: ImpAdCallFPR4  = Mid(, , )
  loc_69CED9: FLdRfVar var_D4
  loc_69CEDC: FnCCurVar
  loc_69CEDE: CR8Cy
  loc_69CEDF: LitI2_Byte &H64
  loc_69CEE1: CR8I2
  loc_69CEE2: DivR8
  loc_69CEE3: CCyR4
  loc_69CEE4: FLdUI1
  loc_69CEE8: CI4UI1
  loc_69CEE9: FMemLdRf unk_404D2D
  loc_69CEEE: AryInRecLdPr
  loc_69CEF4: MemStR8 global_20
  loc_69CEF7: FFreeVar var_C4 = "": var_D4 = ""
  loc_69CF00: ILdRf var_88
  loc_69CF03: LitI4 2
  loc_69CF08: AddI4
  loc_69CF09: LitI4 9
  loc_69CF0E: AddI4
  loc_69CF0F: FStR4 var_88
  loc_69CF12: FLdRfVar var_8A
  loc_69CF15: NextUI1
  loc_69CF1B: ILdRf var_88
  loc_69CF1E: LitI4 5
  loc_69CF23: AddI4
  loc_69CF24: LitI4 &H1A
  loc_69CF29: AddI4
  loc_69CF2A: FStR4 var_88
  loc_69CF2D: LitVarI2 var_C4, 9
  loc_69CF32: ILdRf var_88
  loc_69CF35: ILdRf arg_10
  loc_69CF38: CVarRef
  loc_69CF3D: FLdRfVar var_D4
  loc_69CF40: ImpAdCallFPR4  = Mid(, , )
  loc_69CF45: FLdRfVar var_D4
  loc_69CF48: FnCCurVar
  loc_69CF4A: CR8Cy
  loc_69CF4B: LitI2_Byte &H64
  loc_69CF4D: CR8I2
  loc_69CF4E: DivR8
  loc_69CF4F: CCyR4
  loc_69CF50: FMemStR8 arg_C(280)
  loc_69CF55: FFreeVar var_C4 = "": var_D4 = ""
  loc_69CF5E: ILdRf var_88
  loc_69CF61: LitI4 2
  loc_69CF66: AddI4
  loc_69CF67: LitI4 9
  loc_69CF6C: AddI4
  loc_69CF6D: FStR4 var_88
  loc_69CF70: LitI2_Byte 1
  loc_69CF72: CUI1I2
  loc_69CF74: FLdRfVar var_8A
  loc_69CF77: LitI2_Byte &HA
  loc_69CF79: CUI1I2
  loc_69CF7B: ForUI1 var_FC
  loc_69CF81: LitVarI2 var_C4, 2
  loc_69CF86: ILdRf var_88
  loc_69CF89: LitI4 2
  loc_69CF8E: AddI4
  loc_69CF8F: ILdRf arg_10
  loc_69CF92: CVarRef
  loc_69CF97: FLdRfVar var_D4
  loc_69CF9A: ImpAdCallFPR4  = Mid(, , )
  loc_69CF9F: FLdRfVar var_D4
  loc_69CFA2: LitVarStr var_E4, "11"
  loc_69CFA7: HardType
  loc_69CFA8: EqVarBool
  loc_69CFAA: FFreeVar var_C4 = ""
  loc_69CFB1: BranchF loc_69CFB7
  loc_69CFB4: Branch loc_69D0BE
  loc_69CFB7: ILdRf var_88
  loc_69CFBA: LitI4 4
  loc_69CFBF: AddI4
  loc_69CFC0: FStR4 var_88
  loc_69CFC3: LitVarI2 var_C4, 25
  loc_69CFC8: ILdRf var_88
  loc_69CFCB: ILdRf arg_10
  loc_69CFCE: CVarRef
  loc_69CFD3: FLdRfVar var_D4
  loc_69CFD6: ImpAdCallFPR4  = Mid(, , )
  loc_69CFDB: FLdRfVar var_D4
  loc_69CFDE: CStrVarTmp
  loc_69CFDF: FStStrNoPop var_F8
  loc_69CFE2: FLdUI1
  loc_69CFE6: CI4UI1
  loc_69CFE7: FMemLdRf unk_404D2D
  loc_69CFEC: AryInRecLdPr
  loc_69CFF2: MemStStrCopy
  loc_69CFF6: FFree1Str var_F8
  loc_69CFF9: FFreeVar var_C4 = ""
  loc_69D000: ILdRf var_88
  loc_69D003: LitI4 &H19
  loc_69D008: AddI4
  loc_69D009: LitI4 1
  loc_69D00E: AddI4
  loc_69D00F: FStR4 var_88
  loc_69D012: LitVarI2 var_C4, 8
  loc_69D017: ILdRf var_88
  loc_69D01A: ILdRf arg_10
  loc_69D01D: CVarRef
  loc_69D022: FLdRfVar var_D4
  loc_69D025: ImpAdCallFPR4  = Mid(, , )
  loc_69D02A: FLdRfVar var_D4
  loc_69D02D: FnCCurVar
  loc_69D02F: CR8Cy
  loc_69D030: ILdRf var_90
  loc_69D033: CR8I4
  loc_69D034: DivR8
  loc_69D035: CCyR4
  loc_69D036: FLdUI1
  loc_69D03A: CI4UI1
  loc_69D03B: FMemLdRf unk_404D2D
  loc_69D040: AryInRecLdPr
  loc_69D046: MemStR8 global_4
  loc_69D049: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D052: ILdRf var_88
  loc_69D055: LitI4 8
  loc_69D05A: AddI4
  loc_69D05B: LitI4 1
  loc_69D060: AddI4
  loc_69D061: FStR4 var_88
  loc_69D064: LitVarI2 var_C4, 9
  loc_69D069: ILdRf var_88
  loc_69D06C: ILdRf arg_10
  loc_69D06F: CVarRef
  loc_69D074: FLdRfVar var_D4
  loc_69D077: ImpAdCallFPR4  = Mid(, , )
  loc_69D07C: FLdRfVar var_D4
  loc_69D07F: FnCCurVar
  loc_69D081: CR8Cy
  loc_69D082: LitI2_Byte &H64
  loc_69D084: CR8I2
  loc_69D085: DivR8
  loc_69D086: CCyR4
  loc_69D087: FLdUI1
  loc_69D08B: CI4UI1
  loc_69D08C: FMemLdRf unk_404D2D
  loc_69D091: AryInRecLdPr
  loc_69D097: MemStR8 global_12
  loc_69D09A: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D0A3: ILdRf var_88
  loc_69D0A6: LitI4 2
  loc_69D0AB: AddI4
  loc_69D0AC: LitI4 9
  loc_69D0B1: AddI4
  loc_69D0B2: FStR4 var_88
  loc_69D0B5: FLdRfVar var_8A
  loc_69D0B8: NextUI1
  loc_69D0BE: ILdRf var_88
  loc_69D0C1: LitI4 4
  loc_69D0C6: AddI4
  loc_69D0C7: LitI4 &H1B
  loc_69D0CC: AddI4
  loc_69D0CD: FStR4 var_88
  loc_69D0D0: LitVarI2 var_C4, 9
  loc_69D0D5: ILdRf var_88
  loc_69D0D8: ILdRf arg_10
  loc_69D0DB: CVarRef
  loc_69D0E0: FLdRfVar var_D4
  loc_69D0E3: ImpAdCallFPR4  = Mid(, , )
  loc_69D0E8: FLdRfVar var_D4
  loc_69D0EB: FnCCurVar
  loc_69D0ED: CR8Cy
  loc_69D0EE: LitI2_Byte &H64
  loc_69D0F0: CR8I2
  loc_69D0F1: DivR8
  loc_69D0F2: CCyR4
  loc_69D0F3: FMemStR8 arg_C(488)
  loc_69D0F8: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D101: ILdRf var_88
  loc_69D104: LitI4 2
  loc_69D109: AddI4
  loc_69D10A: LitI4 9
  loc_69D10F: AddI4
  loc_69D110: FStR4 var_88
  loc_69D113: ILdRf var_88
  loc_69D116: LitI4 2
  loc_69D11B: AddI4
  loc_69D11C: LitI4 9
  loc_69D121: AddI4
  loc_69D122: FStR4 var_88
  loc_69D125: LitVarI2 var_C4, 9
  loc_69D12A: ILdRf var_88
  loc_69D12D: ILdRf arg_10
  loc_69D130: CVarRef
  loc_69D135: FLdRfVar var_D4
  loc_69D138: ImpAdCallFPR4  = Mid(, , )
  loc_69D13D: FLdRfVar var_D4
  loc_69D140: FnCCurVar
  loc_69D142: CR8Cy
  loc_69D143: LitI2_Byte &H64
  loc_69D145: CR8I2
  loc_69D146: DivR8
  loc_69D147: CCyR4
  loc_69D148: FMemStR8 arg_C(496)
  loc_69D14D: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D156: ILdRf var_88
  loc_69D159: LitI4 2
  loc_69D15E: AddI4
  loc_69D15F: LitI4 9
  loc_69D164: AddI4
  loc_69D165: FStR4 var_88
  loc_69D168: LitI2_Byte 1
  loc_69D16A: CUI1I2
  loc_69D16C: FLdRfVar var_8A
  loc_69D16F: LitI2_Byte &HA
  loc_69D171: CUI1I2
  loc_69D173: ForUI1 var_100
  loc_69D179: LitVarI2 var_C4, 2
  loc_69D17E: ILdRf var_88
  loc_69D181: LitI4 2
  loc_69D186: AddI4
  loc_69D187: ILdRf arg_10
  loc_69D18A: CVarRef
  loc_69D18F: FLdRfVar var_D4
  loc_69D192: ImpAdCallFPR4  = Mid(, , )
  loc_69D197: FLdRfVar var_D4
  loc_69D19A: LitVarStr var_E4, "11"
  loc_69D19F: HardType
  loc_69D1A0: EqVarBool
  loc_69D1A2: FFreeVar var_C4 = ""
  loc_69D1A9: BranchF loc_69D1AF
  loc_69D1AC: Branch loc_69D2B6
  loc_69D1AF: ILdRf var_88
  loc_69D1B2: LitI4 4
  loc_69D1B7: AddI4
  loc_69D1B8: FStR4 var_88
  loc_69D1BB: LitVarI2 var_C4, 36
  loc_69D1C0: ILdRf var_88
  loc_69D1C3: ILdRf arg_10
  loc_69D1C6: CVarRef
  loc_69D1CB: FLdRfVar var_D4
  loc_69D1CE: ImpAdCallFPR4  = Mid(, , )
  loc_69D1D3: FLdRfVar var_D4
  loc_69D1D6: CStrVarTmp
  loc_69D1D7: FStStrNoPop var_F8
  loc_69D1DA: FLdUI1
  loc_69D1DE: CI4UI1
  loc_69D1DF: FMemLdRf unk_404D2D
  loc_69D1E4: AryInRecLdPr
  loc_69D1EA: MemStStrCopy
  loc_69D1EE: FFree1Str var_F8
  loc_69D1F1: FFreeVar var_C4 = ""
  loc_69D1F8: ILdRf var_88
  loc_69D1FB: LitI4 &H24
  loc_69D200: AddI4
  loc_69D201: LitI4 1
  loc_69D206: AddI4
  loc_69D207: FStR4 var_88
  loc_69D20A: LitVarI2 var_C4, 8
  loc_69D20F: ILdRf var_88
  loc_69D212: ILdRf arg_10
  loc_69D215: CVarRef
  loc_69D21A: FLdRfVar var_D4
  loc_69D21D: ImpAdCallFPR4  = Mid(, , )
  loc_69D222: FLdRfVar var_D4
  loc_69D225: FnCCurVar
  loc_69D227: CR8Cy
  loc_69D228: ILdRf var_90
  loc_69D22B: CR8I4
  loc_69D22C: DivR8
  loc_69D22D: CCyR4
  loc_69D22E: FLdUI1
  loc_69D232: CI4UI1
  loc_69D233: FMemLdRf unk_404D2D
  loc_69D238: AryInRecLdPr
  loc_69D23E: MemStR8 global_4
  loc_69D241: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D24A: ILdRf var_88
  loc_69D24D: LitI4 8
  loc_69D252: AddI4
  loc_69D253: LitI4 1
  loc_69D258: AddI4
  loc_69D259: FStR4 var_88
  loc_69D25C: LitVarI2 var_C4, 9
  loc_69D261: ILdRf var_88
  loc_69D264: ILdRf arg_10
  loc_69D267: CVarRef
  loc_69D26C: FLdRfVar var_D4
  loc_69D26F: ImpAdCallFPR4  = Mid(, , )
  loc_69D274: FLdRfVar var_D4
  loc_69D277: FnCCurVar
  loc_69D279: CR8Cy
  loc_69D27A: LitI2_Byte &H64
  loc_69D27C: CR8I2
  loc_69D27D: DivR8
  loc_69D27E: CCyR4
  loc_69D27F: FLdUI1
  loc_69D283: CI4UI1
  loc_69D284: FMemLdRf unk_404D2D
  loc_69D289: AryInRecLdPr
  loc_69D28F: MemStR8 global_12
  loc_69D292: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D29B: ILdRf var_88
  loc_69D29E: LitI4 2
  loc_69D2A3: AddI4
  loc_69D2A4: LitI4 9
  loc_69D2A9: AddI4
  loc_69D2AA: FStR4 var_88
  loc_69D2AD: FLdRfVar var_8A
  loc_69D2B0: NextUI1
  loc_69D2B6: ILdRf var_88
  loc_69D2B9: LitI4 4
  loc_69D2BE: AddI4
  loc_69D2BF: LitI4 &H12
  loc_69D2C4: AddI4
  loc_69D2C5: FStR4 var_88
  loc_69D2C8: LitVarI2 var_C4, 9
  loc_69D2CD: ILdRf var_88
  loc_69D2D0: ILdRf arg_10
  loc_69D2D3: CVarRef
  loc_69D2D8: FLdRfVar var_D4
  loc_69D2DB: ImpAdCallFPR4  = Mid(, , )
  loc_69D2E0: FLdRfVar var_D4
  loc_69D2E3: FnCCurVar
  loc_69D2E5: CR8Cy
  loc_69D2E6: LitI2_Byte &H64
  loc_69D2E8: CR8I2
  loc_69D2E9: DivR8
  loc_69D2EA: CCyR4
  loc_69D2EB: FMemStR8 arg_C(724)
  loc_69D2F0: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D2F9: ILdRf var_88
  loc_69D2FC: LitI4 2
  loc_69D301: AddI4
  loc_69D302: LitI4 9
  loc_69D307: AddI4
  loc_69D308: FStR4 var_88
  loc_69D30B: ILdRf var_88
  loc_69D30E: LitI4 2
  loc_69D313: AddI4
  loc_69D314: LitI4 &HE
  loc_69D319: AddI4
  loc_69D31A: FStR4 var_88
  loc_69D31D: LitVarI2 var_C4, 9
  loc_69D322: ILdRf var_88
  loc_69D325: ILdRf arg_10
  loc_69D328: CVarRef
  loc_69D32D: FLdRfVar var_D4
  loc_69D330: ImpAdCallFPR4  = Mid(, , )
  loc_69D335: FLdRfVar var_D4
  loc_69D338: FnCCurVar
  loc_69D33A: CR8Cy
  loc_69D33B: LitI2_Byte &H64
  loc_69D33D: CR8I2
  loc_69D33E: DivR8
  loc_69D33F: CCyR4
  loc_69D340: FMemStR8 arg_C(732)
  loc_69D345: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D34E: ILdRf var_88
  loc_69D351: LitI4 2
  loc_69D356: AddI4
  loc_69D357: LitI4 9
  loc_69D35C: AddI4
  loc_69D35D: FStR4 var_88
  loc_69D360: ILdRf var_88
  loc_69D363: LitI4 2
  loc_69D368: AddI4
  loc_69D369: LitI4 &HE
  loc_69D36E: AddI4
  loc_69D36F: FStR4 var_88
  loc_69D372: LitVarI2 var_C4, 9
  loc_69D377: ILdRf var_88
  loc_69D37A: ILdRf arg_10
  loc_69D37D: CVarRef
  loc_69D382: FLdRfVar var_D4
  loc_69D385: ImpAdCallFPR4  = Mid(, , )
  loc_69D38A: FLdRfVar var_D4
  loc_69D38D: FnCCurVar
  loc_69D38F: CR8Cy
  loc_69D390: LitI2_Byte &H64
  loc_69D392: CR8I2
  loc_69D393: DivR8
  loc_69D394: CCyR4
  loc_69D395: FMemStR8 arg_C(740)
  loc_69D39A: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D3A3: ILdRf var_88
  loc_69D3A6: LitI4 2
  loc_69D3AB: AddI4
  loc_69D3AC: LitI4 9
  loc_69D3B1: AddI4
  loc_69D3B2: FStR4 var_88
  loc_69D3B5: ILdRf var_88
  loc_69D3B8: LitI4 2
  loc_69D3BD: AddI4
  loc_69D3BE: LitI4 &H18
  loc_69D3C3: AddI4
  loc_69D3C4: FStR4 var_88
  loc_69D3C7: LitVarI2 var_C4, 9
  loc_69D3CC: ILdRf var_88
  loc_69D3CF: ILdRf arg_10
  loc_69D3D2: CVarRef
  loc_69D3D7: FLdRfVar var_D4
  loc_69D3DA: ImpAdCallFPR4  = Mid(, , )
  loc_69D3DF: FLdRfVar var_D4
  loc_69D3E2: FnCCurVar
  loc_69D3E4: CR8Cy
  loc_69D3E5: LitI2_Byte &H64
  loc_69D3E7: CR8I2
  loc_69D3E8: DivR8
  loc_69D3E9: CCyR4
  loc_69D3EA: FMemStR8 arg_C(748)
  loc_69D3EF: FFreeVar var_C4 = "": var_D4 = ""
  loc_69D3F8: ILdRf var_88
  loc_69D3FB: LitI4 9
  loc_69D400: AddI4
  loc_69D401: FStR4 var_88
  loc_69D404: ExitProc
  loc_69D405: NotI4
  loc_69D406: ExitProcR4
End Function

Private Function Proc_53_4_718EF4(arg_C) '718EF4
  'Data Table: 43B664
  loc_7172F8: OnErrorGoto loc_718EEC
  loc_7172FB: LitVarI2 var_274, 1
  loc_717300: FStVar var_A0
  loc_717304: FLdRfVar var_A0
  loc_717307: LitVarI2 var_274, 10
  loc_71730C: AddVar var_284
  loc_717310: FStVar var_B0
  loc_717314: FLdRfVar var_B0
  loc_717317: LitVarI2 var_274, 2
  loc_71731C: AddVar var_284
  loc_717320: FStVar var_C0
  loc_717324: FLdRfVar var_C0
  loc_717327: LitVarI2 var_274, 2
  loc_71732C: AddVar var_284
  loc_717330: FStVar var_D4
  loc_717334: FLdRfVar var_D4
  loc_717337: LitVarI2 var_274, 2
  loc_71733C: AddVar var_284
  loc_717340: FStVar var_220
  loc_717344: FLdRfVar var_220
  loc_717347: LitVarI2 var_274, 2
  loc_71734C: AddVar var_284
  loc_717350: FStVar var_E4
  loc_717354: FLdRfVar var_E4
  loc_717357: LitVarI2 var_274, 2
  loc_71735C: AddVar var_284
  loc_717360: CI2Var
  loc_717361: FStI2 var_E6
  loc_717364: FFree1Var var_284 = ""
  loc_717367: FLdI2 var_E6
  loc_71736A: LitI2 768
  loc_71736D: AddI2
  loc_71736E: CVarI2 var_274
  loc_717371: FStVar var_F8
  loc_717375: FLdRfVar var_F8
  loc_717378: LitVarI2 var_274, 64
  loc_71737D: AddVar var_284
  loc_717381: FStVar var_108
  loc_717385: FLdRfVar var_108
  loc_717388: LitVarI2 var_274, 96
  loc_71738D: AddVar var_284
  loc_717391: FStVar var_190
  loc_717395: FLdRfVar var_190
  loc_717398: LitVarI2 var_274, 256
  loc_71739D: AddVar var_284
  loc_7173A1: FStVar var_118
  loc_7173A5: FLdRfVar var_118
  loc_7173A8: LitVarI2 var_274, 1
  loc_7173AD: AddVar var_284
  loc_7173B1: FStVar var_128
  loc_7173B5: FLdRfVar var_128
  loc_7173B8: LitVarI2 var_274, 1
  loc_7173BD: AddVar var_284
  loc_7173C1: CI2Var
  loc_7173C2: FStI2 var_12A
  loc_7173C5: FFree1Var var_284 = ""
  loc_7173C8: FLdI2 var_12A
  loc_7173CB: LitI2_Byte 1
  loc_7173CD: AddI2
  loc_7173CE: CVarI2 var_274
  loc_7173D1: FStVar var_13C
  loc_7173D5: FLdRfVar var_13C
  loc_7173D8: LitVarI2 var_274, 32
  loc_7173DD: AddVar var_284
  loc_7173E1: FStVar var_14C
  loc_7173E5: FLdRfVar var_14C
  loc_7173E8: LitVarI2 var_274, 16
  loc_7173ED: AddVar var_284
  loc_7173F1: FStVar var_15C
  loc_7173F5: FLdRfVar var_15C
  loc_7173F8: LitVarI2 var_274, 16
  loc_7173FD: AddVar var_284
  loc_717401: FStVar var_234
  loc_717405: FLdRfVar var_234
  loc_717408: LitVarI2 var_274, 250
  loc_71740D: AddVar var_284
  loc_717411: CI2Var
  loc_717412: FStI2 var_15E
  loc_717415: FFree1Var var_284 = ""
  loc_717418: FLdI2 var_15E
  loc_71741B: LitI2_Byte &HA
  loc_71741D: AddI2
  loc_71741E: FStI2 var_C2
  loc_717421: FLdI2 var_C2
  loc_717424: LitI2_Byte &H10
  loc_717426: AddI2
  loc_717427: CVarI2 var_274
  loc_71742A: FStVar var_170
  loc_71742E: FLdRfVar var_170
  loc_717431: LitVarI2 var_274, 32
  loc_717436: AddVar var_284
  loc_71743A: FStVar var_244
  loc_71743E: FLdRfVar var_244
  loc_717441: LitVarI2 var_274, 16
  loc_717446: AddVar var_284
  loc_71744A: FStVar var_180
  loc_71744E: FLdRfVar var_180
  loc_717451: LitVarI2 var_274, 32
  loc_717456: AddVar var_284
  loc_71745A: CI2Var
  loc_71745B: FStI2 var_192
  loc_71745E: FFree1Var var_284 = ""
  loc_717461: FLdI2 var_192
  loc_717464: LitI2_Byte &H10
  loc_717466: AddI2
  loc_717467: CVarI2 var_274
  loc_71746A: FStVar var_1A4
  loc_71746E: FLdRfVar var_1A4
  loc_717471: LitVarI2 var_274, 32
  loc_717476: AddVar var_284
  loc_71747A: CI2Var
  loc_71747B: FStI2 var_20E
  loc_71747E: FFree1Var var_284 = ""
  loc_717481: FLdI2 var_20E
  loc_717484: LitI2_Byte &H20
  loc_717486: AddI2
  loc_717487: CVarI2 var_274
  loc_71748A: FStVar var_1B4
  loc_71748E: FLdRfVar var_1B4
  loc_717491: LitVarI2 var_274, 1
  loc_717496: AddVar var_284
  loc_71749A: CI2Var
  loc_71749B: FStI2 var_246
  loc_71749E: FFree1Var var_284 = ""
  loc_7174A1: FLdI2 var_246
  loc_7174A4: LitI2_Byte 1
  loc_7174A6: AddI2
  loc_7174A7: CVarI2 var_274
  loc_7174AA: FStVar var_1C4
  loc_7174AE: FMemLdI2 arg_8(16)
  loc_7174B3: BranchF loc_7174EC
  loc_7174B6: FLdRfVar var_1C4
  loc_7174B9: LitVarI2 var_274, 112
  loc_7174BE: AddVar var_284
  loc_7174C2: CI2Var
  loc_7174C3: FStI2 var_1C6
  loc_7174C6: FFree1Var var_284 = ""
  loc_7174C9: FLdI2 var_1C6
  loc_7174CC: LitI2_Byte &H70
  loc_7174CE: AddI2
  loc_7174CF: CVarI2 var_274
  loc_7174D2: FStVar var_1D8
  loc_7174D6: FLdRfVar var_1D8
  loc_7174D9: LitVarI2 var_274, 112
  loc_7174DE: AddVar var_284
  loc_7174E2: CI2Var
  loc_7174E3: FStI2 var_248
  loc_7174E6: FFree1Var var_284 = ""
  loc_7174E9: Branch loc_717520
  loc_7174EC: FLdRfVar var_1C4
  loc_7174EF: LitVarI2 var_274, 128
  loc_7174F4: AddVar var_284
  loc_7174F8: CI2Var
  loc_7174F9: FStI2 var_1C6
  loc_7174FC: FFree1Var var_284 = ""
  loc_7174FF: FLdI2 var_1C6
  loc_717502: LitI2 128
  loc_717505: AddI2
  loc_717506: CVarI2 var_274
  loc_717509: FStVar var_1D8
  loc_71750D: FLdRfVar var_1D8
  loc_717510: LitVarI2 var_274, 128
  loc_717515: AddVar var_284
  loc_717519: CI2Var
  loc_71751A: FStI2 var_248
  loc_71751D: FFree1Var var_284 = ""
  loc_717520: FLdI2 var_248
  loc_717523: LitI2_Byte &H3C
  loc_717525: AddI2
  loc_717526: CVarI2 var_274
  loc_717529: FStVar var_1E8
  loc_71752D: FLdRfVar var_1E8
  loc_717530: LitVarI2 var_274, 5
  loc_717535: AddVar var_284
  loc_717539: CI2Var
  loc_71753A: FStI2 var_1EA
  loc_71753D: FFree1Var var_284 = ""
  loc_717540: FLdI2 var_1EA
  loc_717543: LitI2_Byte &H50
  loc_717545: AddI2
  loc_717546: CVarI2 var_274
  loc_717549: FStVar var_1FC
  loc_71754D: FLdRfVar var_1FC
  loc_717550: LitVarI2 var_274, 64
  loc_717555: AddVar var_284
  loc_717559: FStVar var_20C
  loc_71755D: FLdRfVar var_20C
  loc_717560: LitVarI2 var_274, 64
  loc_717565: AddVar var_284
  loc_717569: FStVar var_258
  loc_71756D: FLdRfVar var_258
  loc_717570: LitVarI2 var_274, 64
  loc_717575: AddVar var_284
  loc_717579: CI2Var
  loc_71757A: FStI2 var_222
  loc_71757D: FFree1Var var_284 = ""
  loc_717580: FLdI2 var_222
  loc_717583: LitI2_Byte &H14
  loc_717585: AddI2
  loc_717586: FStI2 var_25A
  loc_717589: FLdRfVar var_3B4
  loc_71758C: LitVar_Missing var_3B0
  loc_71758F: LitVar_Missing var_390
  loc_717592: LitVar_Missing var_370
  loc_717595: LitVar_Missing var_350
  loc_717598: LitVar_Missing var_330
  loc_71759B: LitVar_Missing var_310
  loc_71759E: LitVar_Missing var_2F0
  loc_7175A1: LitVar_Missing var_2D0
  loc_7175A4: LitVar_Missing var_2B0
  loc_7175A7: LitVar_Missing var_284
  loc_7175AA: LitStr "El servicio CEM - 44 no se encuentra en servicio, la configuracion no puede ser leida"
  loc_7175AD: FStStrCopy var_290
  loc_7175B0: FLdRfVar var_290
  loc_7175B3: LitI4 &H78
  loc_7175B8: PopTmpLdAdStr var_28C
  loc_7175BB: LitI2_Byte 9
  loc_7175BD: PopTmpLdAd2 var_286
  loc_7175C0: ImpAdLdRf MemVar_74C7D0
  loc_7175C3: NewIfNullPr clsMsg
  loc_7175C6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7175CB: FLdZeroAd var_3B4
  loc_7175CE: FMemStStr arg_8(1616)
  loc_7175D4: FFree1Str var_290
  loc_7175D7: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = ""
  loc_7175EE: FLdRfVar var_286
  loc_7175F1: FMemLdPr
  loc_7175F6: MemLdStr global_4
  loc_7175F9: FStStrCopy var_290
  loc_7175FC: FLdRfVar var_290
  loc_7175FF: ILdRf arg_C
  loc_717602: FLdRfVar var_3B8
  loc_717605: ImpAdLdRf MemVar_74C760
  loc_717608: NewIfNullPr Formx
  loc_71760B: from_stack_1v = Formx.global_4589716Get()
  loc_717610: FLdPr var_3B8
  loc_717613:  = Formx.Name
  loc_717618: ILdRf var_290
  loc_71761B: FMemLdPr
  loc_717620: MemLdStr global_4
  loc_717623: StFixedStr
  loc_717626: FLdI2 var_286
  loc_717629: NotI4
  loc_71762A: FFree1Str var_290
  loc_71762D: FFree1Ad var_3B8
  loc_717630: BranchF loc_71766E
  loc_717633: LitVar_Missing var_2B0
  loc_717636: LitVar_Missing var_284
  loc_717639: ImpAdLdRf MemVar_74BF24
  loc_71763C: CVarRef
  loc_717641: LitI4 5
  loc_717646: FMemLdRf unk_43B66D
  loc_71764B: CVarRef
  loc_717650: ImpAdCallI2 MsgBox(, , , , )
  loc_717655: LitI4 2
  loc_71765A: EqI4
  loc_71765B: FFreeVar var_284 = ""
  loc_717662: BranchF loc_71766B
  loc_717665: LitI2_Byte 0
  loc_717667: FStI2 var_86
  loc_71766A: ExitProcI2
  loc_71766B: Branch loc_7175EE
  loc_71766E: ImpAdCallI2 Proc_167_11_632680()
  loc_717673: NotI4
  loc_717674: BranchF loc_71767D
  loc_717677: LitI2_Byte 0
  loc_717679: FStI2 var_86
  loc_71767C: ExitProcI2
  loc_71767D: LitI4 1
  loc_717682: FMemLdPr
  loc_717687: MemLdStr global_4
  loc_71768A: FStStrCopy var_290
  loc_71768D: FLdRfVar var_290
  loc_717690: CVarRef
  loc_717695: FLdRfVar var_284
  loc_717698: ImpAdCallFPR4  = Left(, )
  loc_71769D: ILdRf var_290
  loc_7176A0: FMemLdPr
  loc_7176A5: MemLdStr global_4
  loc_7176A8: StFixedStr
  loc_7176AB: FLdRfVar var_284
  loc_7176AE: LitI4 0
  loc_7176B3: FLdRfVar var_2B0
  loc_7176B6: ImpAdCallFPR4  = Chr()
  loc_7176BB: FLdRfVar var_2B0
  loc_7176BE: EqVarBool
  loc_7176C0: FFree1Str var_290
  loc_7176C3: FFreeVar var_284 = ""
  loc_7176CA: BranchF loc_7176D3
  loc_7176CD: LitI2_Byte &HFF
  loc_7176CF: FStI2 var_86
  loc_7176D2: ExitProcI2
  loc_7176D3: LitVarI2 var_284, 1
  loc_7176D8: FLdRfVar var_A0
  loc_7176DB: CI4Var
  loc_7176DD: FMemLdPr
  loc_7176E2: MemLdStr global_4
  loc_7176E5: FStStrCopy var_290
  loc_7176E8: FLdRfVar var_290
  loc_7176EB: CVarRef
  loc_7176F0: FLdRfVar var_2B0
  loc_7176F3: ImpAdCallFPR4  = Mid(, , )
  loc_7176F8: ILdRf var_290
  loc_7176FB: FMemLdPr
  loc_717700: MemLdStr global_4
  loc_717703: StFixedStr
  loc_717706: FLdRfVar var_2B0
  loc_717709: CStrVarVal var_3B4
  loc_71770D: ImpAdCallI2 Asc()
  loc_717712: LitI2_Byte 0
  loc_717714: EqI2
  loc_717715: FFreeStr var_290 = ""
  loc_71771C: FFreeVar var_284 = ""
  loc_717723: BranchF loc_717727
  loc_717726: ExitProcI2
  loc_717727: LitVarI2 var_284, 2
  loc_71772C: FLdRfVar var_A0
  loc_71772F: CI4Var
  loc_717731: FMemLdPr
  loc_717736: MemLdStr global_4
  loc_717739: FStStrCopy var_290
  loc_71773C: FLdRfVar var_290
  loc_71773F: CVarRef
  loc_717744: FLdRfVar var_2B0
  loc_717747: ImpAdCallFPR4  = Mid(, , )
  loc_71774C: ILdRf var_290
  loc_71774F: FMemLdPr
  loc_717754: MemLdStr global_4
  loc_717757: StFixedStr
  loc_71775A: FLdRfVar var_2B0
  loc_71775D: FnCByteVar
  loc_71775F: LitI4 1
  loc_717764: FMemLdRf unk_43B66D
  loc_717769: Ary1StUI1
  loc_71776B: FFree1Str var_290
  loc_71776E: FFreeVar var_284 = "": var_2B0 = ""
  loc_717777: LitVarI2 var_2B0, 2
  loc_71777C: FLdRfVar var_A0
  loc_71777F: LitVarI2 var_274, 2
  loc_717784: AddVar var_284
  loc_717788: CI4Var
  loc_71778A: FMemLdPr
  loc_71778F: MemLdStr global_4
  loc_717792: FStStrCopy var_290
  loc_717795: FLdRfVar var_290
  loc_717798: CVarRef
  loc_71779D: FLdRfVar var_2D0
  loc_7177A0: ImpAdCallFPR4  = Mid(, , )
  loc_7177A5: ILdRf var_290
  loc_7177A8: FMemLdPr
  loc_7177AD: MemLdStr global_4
  loc_7177B0: StFixedStr
  loc_7177B3: FLdRfVar var_2D0
  loc_7177B6: FnCByteVar
  loc_7177B8: LitI4 2
  loc_7177BD: FMemLdRf unk_43B66D
  loc_7177C2: Ary1StUI1
  loc_7177C4: FFree1Str var_290
  loc_7177C7: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7177D2: LitVarI2 var_2B0, 2
  loc_7177D7: FLdRfVar var_A0
  loc_7177DA: LitVarI2 var_274, 4
  loc_7177DF: AddVar var_284
  loc_7177E3: CI4Var
  loc_7177E5: FMemLdPr
  loc_7177EA: MemLdStr global_4
  loc_7177ED: FStStrCopy var_290
  loc_7177F0: FLdRfVar var_290
  loc_7177F3: CVarRef
  loc_7177F8: FLdRfVar var_2D0
  loc_7177FB: ImpAdCallFPR4  = Mid(, , )
  loc_717800: ILdRf var_290
  loc_717803: FMemLdPr
  loc_717808: MemLdStr global_4
  loc_71780B: StFixedStr
  loc_71780E: FLdRfVar var_2D0
  loc_717811: FnCByteVar
  loc_717813: LitI4 3
  loc_717818: FMemLdRf unk_43B66D
  loc_71781D: Ary1StUI1
  loc_71781F: FFree1Str var_290
  loc_717822: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_71782D: LitVarI2 var_2B0, 2
  loc_717832: FLdRfVar var_A0
  loc_717835: LitVarI2 var_274, 6
  loc_71783A: AddVar var_284
  loc_71783E: CI4Var
  loc_717840: FMemLdPr
  loc_717845: MemLdStr global_4
  loc_717848: FStStrCopy var_290
  loc_71784B: FLdRfVar var_290
  loc_71784E: CVarRef
  loc_717853: FLdRfVar var_2D0
  loc_717856: ImpAdCallFPR4  = Mid(, , )
  loc_71785B: ILdRf var_290
  loc_71785E: FMemLdPr
  loc_717863: MemLdStr global_4
  loc_717866: StFixedStr
  loc_717869: FLdRfVar var_2D0
  loc_71786C: FnCByteVar
  loc_71786E: LitI4 4
  loc_717873: FMemLdRf unk_43B66D
  loc_717878: Ary1StUI1
  loc_71787A: FFree1Str var_290
  loc_71787D: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_717888: LitVarI2 var_2B0, 2
  loc_71788D: FLdRfVar var_A0
  loc_717890: LitVarI2 var_274, 8
  loc_717895: AddVar var_284
  loc_717899: CI4Var
  loc_71789B: FMemLdPr
  loc_7178A0: MemLdStr global_4
  loc_7178A3: FStStrCopy var_290
  loc_7178A6: FLdRfVar var_290
  loc_7178A9: CVarRef
  loc_7178AE: FLdRfVar var_2D0
  loc_7178B1: ImpAdCallFPR4  = Mid(, , )
  loc_7178B6: ILdRf var_290
  loc_7178B9: FMemLdPr
  loc_7178BE: MemLdStr global_4
  loc_7178C1: StFixedStr
  loc_7178C4: FLdRfVar var_2D0
  loc_7178C7: FnCByteVar
  loc_7178C9: LitI4 5
  loc_7178CE: FMemLdRf unk_43B66D
  loc_7178D3: Ary1StUI1
  loc_7178D5: FFree1Str var_290
  loc_7178D8: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7178E3: LitI4 1
  loc_7178E8: FMemLdRf unk_43B66D
  loc_7178ED: Ary1LdUI1
  loc_7178EF: LitI4 2
  loc_7178F4: FMemLdRf unk_43B66D
  loc_7178F9: Ary1LdUI1
  loc_7178FB: AddUI1
  loc_7178FD: LitI4 3
  loc_717902: FMemLdRf unk_43B66D
  loc_717907: Ary1LdUI1
  loc_717909: AddUI1
  loc_71790B: LitI4 4
  loc_717910: FMemLdRf unk_43B66D
  loc_717915: Ary1LdUI1
  loc_717917: AddUI1
  loc_717919: LitI4 5
  loc_71791E: FMemLdRf unk_43B66D
  loc_717923: Ary1LdUI1
  loc_717925: AddUI1
  loc_717927: FMemStUI1 arg_8(300)
  loc_71792D: LitVarI2 var_284, 2
  loc_717932: FLdRfVar var_B0
  loc_717935: CI4Var
  loc_717937: FMemLdPr
  loc_71793C: MemLdStr global_4
  loc_71793F: FStStrCopy var_290
  loc_717942: FLdRfVar var_290
  loc_717945: CVarRef
  loc_71794A: FLdRfVar var_2B0
  loc_71794D: ImpAdCallFPR4  = Mid(, , )
  loc_717952: ILdRf var_290
  loc_717955: FMemLdPr
  loc_71795A: MemLdStr global_4
  loc_71795D: StFixedStr
  loc_717960: FLdRfVar var_2B0
  loc_717963: FnCByteVar
  loc_717965: FMemStUI1 arg_8(447)
  loc_71796B: FFree1Str var_290
  loc_71796E: FFreeVar var_284 = "": var_2B0 = ""
  loc_717977: FLdRfVar var_286
  loc_71797A: FMemLdUI1 arg_8(447)
  loc_717980: CI2UI1
  loc_717982: LitI2_Byte 1
  loc_717984: SubI2
  loc_717985: ImpAdLdRf MemVar_74A220
  loc_717988: NewIfNullPr clsProducts
  loc_71798B:  = clsProducts.hWnd
  loc_717990: FLdI2 var_286
  loc_717993: FMemLdI2 arg_8(56)
  loc_717998: LitI2_Byte &HFF
  loc_71799A: EqI2
  loc_71799B: AndI4
  loc_71799C: BranchF loc_7179B9
  loc_71799F: FMemLdUI1 arg_8(447)
  loc_7179A5: CI2UI1
  loc_7179A7: LitI2_Byte 1
  loc_7179A9: SubI2
  loc_7179AA: CUI1I2
  loc_7179AC: FMemStUI1 arg_8(447)
  loc_7179B2: LitI2_Byte 0
  loc_7179B4: FMemStI2 arg_8(56)
  loc_7179B9: LitVarI2 var_284, 2
  loc_7179BE: FLdRfVar var_C0
  loc_7179C1: CI4Var
  loc_7179C3: FMemLdPr
  loc_7179C8: MemLdStr global_4
  loc_7179CB: FStStrCopy var_290
  loc_7179CE: FLdRfVar var_290
  loc_7179D1: CVarRef
  loc_7179D6: FLdRfVar var_2B0
  loc_7179D9: ImpAdCallFPR4  = Mid(, , )
  loc_7179DE: ILdRf var_290
  loc_7179E1: FMemLdPr
  loc_7179E6: MemLdStr global_4
  loc_7179E9: StFixedStr
  loc_7179EC: FLdRfVar var_2B0
  loc_7179EF: FnCByteVar
  loc_7179F1: CI2UI1
  loc_7179F3: PopTmpLdAd2 var_286
  loc_7179F6: ImpAdLdRf MemVar_74A220
  loc_7179F9: NewIfNullPr clsProducts
  loc_7179FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_717A01: FFree1Str var_290
  loc_717A04: FFreeVar var_284 = "": var_2B0 = ""
  loc_717A0D: LitVarI2 var_284, 2
  loc_717A12: FLdRfVar var_D4
  loc_717A15: CI4Var
  loc_717A17: FMemLdPr
  loc_717A1C: MemLdStr global_4
  loc_717A1F: FStStrCopy var_290
  loc_717A22: FLdRfVar var_290
  loc_717A25: CVarRef
  loc_717A2A: FLdRfVar var_2B0
  loc_717A2D: ImpAdCallFPR4  = Mid(, , )
  loc_717A32: ILdRf var_290
  loc_717A35: FMemLdPr
  loc_717A3A: MemLdStr global_4
  loc_717A3D: StFixedStr
  loc_717A40: FLdRfVar var_2B0
  loc_717A43: FnCByteVar
  loc_717A45: FMemStUI1 arg_8(446)
  loc_717A4B: FFree1Str var_290
  loc_717A4E: FFreeVar var_284 = "": var_2B0 = ""
  loc_717A57: LitVarI2 var_284, 2
  loc_717A5C: FLdRfVar var_220
  loc_717A5F: CI4Var
  loc_717A61: FMemLdPr
  loc_717A66: MemLdStr global_4
  loc_717A69: FStStrCopy var_290
  loc_717A6C: FLdRfVar var_290
  loc_717A6F: CVarRef
  loc_717A74: FLdRfVar var_2B0
  loc_717A77: ImpAdCallFPR4  = Mid(, , )
  loc_717A7C: ILdRf var_290
  loc_717A7F: FMemLdPr
  loc_717A84: MemLdStr global_4
  loc_717A87: StFixedStr
  loc_717A8A: FLdRfVar var_2B0
  loc_717A8D: FnCByteVar
  loc_717A8F: FMemStUI1 arg_8(301)
  loc_717A95: FFree1Str var_290
  loc_717A98: FFreeVar var_284 = "": var_2B0 = ""
  loc_717AA1: LitVarI2 var_284, 2
  loc_717AA6: FLdRfVar var_E4
  loc_717AA9: CI4Var
  loc_717AAB: FMemLdPr
  loc_717AB0: MemLdStr global_4
  loc_717AB3: FStStrCopy var_290
  loc_717AB6: FLdRfVar var_290
  loc_717AB9: CVarRef
  loc_717ABE: FLdRfVar var_2B0
  loc_717AC1: ImpAdCallFPR4  = Mid(, , )
  loc_717AC6: ILdRf var_290
  loc_717AC9: FMemLdPr
  loc_717ACE: MemLdStr global_4
  loc_717AD1: StFixedStr
  loc_717AD4: FLdRfVar var_2B0
  loc_717AD7: FnCByteVar
  loc_717AD9: FMemStUI1 arg_8(416)
  loc_717ADF: FFree1Str var_290
  loc_717AE2: FFreeVar var_284 = "": var_2B0 = ""
  loc_717AEB: LitI2_Byte 0
  loc_717AED: FStI2 var_25C
  loc_717AF0: LitI2_Byte 1
  loc_717AF2: FLdRfVar var_88
  loc_717AF5: LitI2_Byte &H20
  loc_717AF7: ForI2 var_3BC
  loc_717AFD: LitI2_Byte 0
  loc_717AFF: CUI1I2
  loc_717B01: FLdRfVar var_8C
  loc_717B04: LitI2_Byte 3
  loc_717B06: CUI1I2
  loc_717B08: ForUI1 var_3C0
  loc_717B0E: LitI2_Byte 0
  loc_717B10: CUI1I2
  loc_717B12: FLdRfVar var_8A
  loc_717B15: LitI2_Byte 2
  loc_717B17: CUI1I2
  loc_717B19: ForUI1 var_3C4
  loc_717B1F: LitVarI2 var_284, 2
  loc_717B24: FLdI2 var_E6
  loc_717B27: FLdI2 var_25C
  loc_717B2A: AddI2
  loc_717B2B: CI4UI1
  loc_717B2C: FMemLdPr
  loc_717B31: MemLdStr global_4
  loc_717B34: FStStrCopy var_290
  loc_717B37: FLdRfVar var_290
  loc_717B3A: CVarRef
  loc_717B3F: FLdRfVar var_2B0
  loc_717B42: ImpAdCallFPR4  = Mid(, , )
  loc_717B47: ILdRf var_290
  loc_717B4A: FMemLdPr
  loc_717B4F: MemLdStr global_4
  loc_717B52: StFixedStr
  loc_717B55: FLdRfVar var_2B0
  loc_717B58: FnCByteVar
  loc_717B5A: FLdI2 var_88
  loc_717B5D: CI4UI1
  loc_717B5E: FLdUI1
  loc_717B62: CI4UI1
  loc_717B63: FLdUI1
  loc_717B67: CI4UI1
  loc_717B68: FMemLdRf unk_43B66D
  loc_717B6D: AryLdPr
  loc_717B70: MemStUI1
  loc_717B74: FFree1Str var_290
  loc_717B77: FFreeVar var_284 = "": var_2B0 = ""
  loc_717B80: FLdI2 var_25C
  loc_717B83: LitI2_Byte 2
  loc_717B85: AddI2
  loc_717B86: FStI2 var_25C
  loc_717B89: FLdRfVar var_8A
  loc_717B8C: NextUI1
  loc_717B92: FLdRfVar var_8C
  loc_717B95: NextUI1
  loc_717B9B: FLdRfVar var_88
  loc_717B9E: NextI2 var_3BC, loc_717AFD
  loc_717BA3: LitI2_Byte 1
  loc_717BA5: FLdRfVar var_88
  loc_717BA8: LitI2_Byte &H20
  loc_717BAA: ForI2 var_3C8
  loc_717BB0: LitVarI2 var_2B0, 2
  loc_717BB5: FLdRfVar var_F8
  loc_717BB8: FLdI2 var_88
  loc_717BBB: LitI2_Byte 1
  loc_717BBD: SubI2
  loc_717BBE: LitI2_Byte 2
  loc_717BC0: MulI2
  loc_717BC1: CVarI2 var_274
  loc_717BC4: AddVar var_284
  loc_717BC8: CI4Var
  loc_717BCA: FMemLdPr
  loc_717BCF: MemLdStr global_4
  loc_717BD2: FStStrCopy var_290
  loc_717BD5: FLdRfVar var_290
  loc_717BD8: CVarRef
  loc_717BDD: FLdRfVar var_2D0
  loc_717BE0: ImpAdCallFPR4  = Mid(, , )
  loc_717BE5: ILdRf var_290
  loc_717BE8: FMemLdPr
  loc_717BED: MemLdStr global_4
  loc_717BF0: StFixedStr
  loc_717BF3: FLdRfVar var_2D0
  loc_717BF6: FnCByteVar
  loc_717BF8: FLdI2 var_88
  loc_717BFB: CI4UI1
  loc_717BFC: FMemLdRf unk_43B66D
  loc_717C01: Ary1StUI1
  loc_717C03: FFree1Str var_290
  loc_717C06: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_717C11: FLdRfVar var_88
  loc_717C14: NextI2 var_3C8, loc_717BB0
  loc_717C19: LitI2_Byte 0
  loc_717C1B: FStI2 var_25C
  loc_717C1E: LitI2_Byte 1
  loc_717C20: FLdRfVar var_88
  loc_717C23: LitI2_Byte &H10
  loc_717C25: ForI2 var_3CC
  loc_717C2B: LitI2_Byte 0
  loc_717C2D: CUI1I2
  loc_717C2F: FLdRfVar var_8A
  loc_717C32: LitI2_Byte 2
  loc_717C34: CUI1I2
  loc_717C36: ForUI1 var_3D0
  loc_717C3C: LitVarI2 var_2B0, 2
  loc_717C41: FLdRfVar var_108
  loc_717C44: FLdI2 var_25C
  loc_717C47: CVarI2 var_274
  loc_717C4A: AddVar var_284
  loc_717C4E: CI4Var
  loc_717C50: FMemLdPr
  loc_717C55: MemLdStr global_4
  loc_717C58: FStStrCopy var_290
  loc_717C5B: FLdRfVar var_290
  loc_717C5E: CVarRef
  loc_717C63: FLdRfVar var_2D0
  loc_717C66: ImpAdCallFPR4  = Mid(, , )
  loc_717C6B: ILdRf var_290
  loc_717C6E: FMemLdPr
  loc_717C73: MemLdStr global_4
  loc_717C76: StFixedStr
  loc_717C79: FLdRfVar var_2D0
  loc_717C7C: FnCByteVar
  loc_717C7E: FLdI2 var_88
  loc_717C81: CI4UI1
  loc_717C82: FLdUI1
  loc_717C86: CI4UI1
  loc_717C87: FMemLdRf unk_43B66D
  loc_717C8C: AryLdPr
  loc_717C8F: MemStUI1
  loc_717C93: FFree1Str var_290
  loc_717C96: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_717CA1: FLdI2 var_25C
  loc_717CA4: LitI2_Byte 2
  loc_717CA6: AddI2
  loc_717CA7: FStI2 var_25C
  loc_717CAA: FLdRfVar var_8A
  loc_717CAD: NextUI1
  loc_717CB3: FLdRfVar var_88
  loc_717CB6: NextI2 var_3CC, loc_717C2B
  loc_717CBB: LitI2_Byte 0
  loc_717CBD: FStI2 var_25C
  loc_717CC0: LitI2_Byte 1
  loc_717CC2: FLdRfVar var_88
  loc_717CC5: LitI2_Byte &H20
  loc_717CC7: ForI2 var_3D4
  loc_717CCD: LitI2_Byte 0
  loc_717CCF: CUI1I2
  loc_717CD1: FLdRfVar var_8C
  loc_717CD4: LitI2_Byte 3
  loc_717CD6: CUI1I2
  loc_717CD8: ForUI1 var_3D8
  loc_717CDE: LitVarI2 var_2B0, 2
  loc_717CE3: FLdRfVar var_190
  loc_717CE6: FLdI2 var_25C
  loc_717CE9: CVarI2 var_274
  loc_717CEC: AddVar var_284
  loc_717CF0: CI4Var
  loc_717CF2: FMemLdPr
  loc_717CF7: MemLdStr global_4
  loc_717CFA: FStStrCopy var_290
  loc_717CFD: FLdRfVar var_290
  loc_717D00: CVarRef
  loc_717D05: FLdRfVar var_2D0
  loc_717D08: ImpAdCallFPR4  = Mid(, , )
  loc_717D0D: ILdRf var_290
  loc_717D10: FMemLdPr
  loc_717D15: MemLdStr global_4
  loc_717D18: StFixedStr
  loc_717D1B: FLdRfVar var_2D0
  loc_717D1E: FnCByteVar
  loc_717D20: FLdI2 var_88
  loc_717D23: CI4UI1
  loc_717D24: FLdUI1
  loc_717D28: CI4UI1
  loc_717D29: FMemLdRf unk_43B66D
  loc_717D2E: AryLdPr
  loc_717D31: MemStUI1
  loc_717D35: FFree1Str var_290
  loc_717D38: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_717D43: FLdI2 var_25C
  loc_717D46: LitI2_Byte 2
  loc_717D48: AddI2
  loc_717D49: FStI2 var_25C
  loc_717D4C: FLdRfVar var_8C
  loc_717D4F: NextUI1
  loc_717D55: FLdRfVar var_88
  loc_717D58: NextI2 var_3D4, loc_717CCD
  loc_717D5D: LitVarI2 var_284, 1
  loc_717D62: FLdRfVar var_118
  loc_717D65: CI4Var
  loc_717D67: FMemLdPr
  loc_717D6C: MemLdStr global_4
  loc_717D6F: FStStrCopy var_290
  loc_717D72: FLdRfVar var_290
  loc_717D75: CVarRef
  loc_717D7A: FLdRfVar var_2B0
  loc_717D7D: ImpAdCallFPR4  = Mid(, , )
  loc_717D82: ILdRf var_290
  loc_717D85: FMemLdPr
  loc_717D8A: MemLdStr global_4
  loc_717D8D: StFixedStr
  loc_717D90: FLdRfVar var_2B0
  loc_717D93: FnCByteVar
  loc_717D95: FMemStUI1 arg_8(444)
  loc_717D9B: FFree1Str var_290
  loc_717D9E: FFreeVar var_284 = "": var_2B0 = ""
  loc_717DA7: LitVarI2 var_284, 1
  loc_717DAC: FLdRfVar var_128
  loc_717DAF: CI4Var
  loc_717DB1: FMemLdPr
  loc_717DB6: MemLdStr global_4
  loc_717DB9: FStStrCopy var_290
  loc_717DBC: FLdRfVar var_290
  loc_717DBF: CVarRef
  loc_717DC4: FLdRfVar var_2B0
  loc_717DC7: ImpAdCallFPR4  = Mid(, , )
  loc_717DCC: ILdRf var_290
  loc_717DCF: FMemLdPr
  loc_717DD4: MemLdStr global_4
  loc_717DD7: StFixedStr
  loc_717DDA: FLdRfVar var_2B0
  loc_717DDD: FnCByteVar
  loc_717DDF: FMemStUI1 arg_8(445)
  loc_717DE5: FFree1Str var_290
  loc_717DE8: FFreeVar var_284 = "": var_2B0 = ""
  loc_717DF1: LitVarI2 var_284, 1
  loc_717DF6: FLdI2 var_12A
  loc_717DF9: CI4UI1
  loc_717DFA: FMemLdPr
  loc_717DFF: MemLdStr global_4
  loc_717E02: FStStrCopy var_290
  loc_717E05: FLdRfVar var_290
  loc_717E08: CVarRef
  loc_717E0D: FLdRfVar var_2B0
  loc_717E10: ImpAdCallFPR4  = Mid(, , )
  loc_717E15: ILdRf var_290
  loc_717E18: FMemLdPr
  loc_717E1D: MemLdStr global_4
  loc_717E20: StFixedStr
  loc_717E23: FLdRfVar var_2B0
  loc_717E26: FnCByteVar
  loc_717E28: FMemStUI1 arg_8(692)
  loc_717E2E: FFree1Str var_290
  loc_717E31: FFreeVar var_284 = "": var_2B0 = ""
  loc_717E3A: LitI2_Byte 1
  loc_717E3C: FLdRfVar var_88
  loc_717E3F: LitI2_Byte &H20
  loc_717E41: ForI2 var_3E0
  loc_717E47: LitVarI2 var_2B0, 1
  loc_717E4C: FLdRfVar var_13C
  loc_717E4F: FLdI2 var_88
  loc_717E52: LitI2_Byte 1
  loc_717E54: SubI2
  loc_717E55: CVarI2 var_274
  loc_717E58: AddVar var_284
  loc_717E5C: CI4Var
  loc_717E5E: FMemLdPr
  loc_717E63: MemLdStr global_4
  loc_717E66: FStStrCopy var_290
  loc_717E69: FLdRfVar var_290
  loc_717E6C: CVarRef
  loc_717E71: FLdRfVar var_2D0
  loc_717E74: ImpAdCallFPR4  = Mid(, , )
  loc_717E79: ILdRf var_290
  loc_717E7C: FMemLdPr
  loc_717E81: MemLdStr global_4
  loc_717E84: StFixedStr
  loc_717E87: FLdRfVar var_2D0
  loc_717E8A: CStrVarTmp
  loc_717E8B: FStStr var_3DC
  loc_717E8E: FFree1Str var_290
  loc_717E91: FFreeVar var_284 = "": var_2B0 = ""
  loc_717E9A: LitVarI2 var_2B0, 1
  loc_717E9F: FLdRfVar var_13C
  loc_717EA2: FLdI2 var_88
  loc_717EA5: LitI2_Byte 1
  loc_717EA7: SubI2
  loc_717EA8: CVarI2 var_274
  loc_717EAB: AddVar var_284
  loc_717EAF: CI4Var
  loc_717EB1: FMemLdPr
  loc_717EB6: MemLdStr global_4
  loc_717EB9: FStStrCopy var_290
  loc_717EBC: FLdRfVar var_290
  loc_717EBF: CVarRef
  loc_717EC4: FLdRfVar var_2D0
  loc_717EC7: ImpAdCallFPR4  = Mid(, , )
  loc_717ECC: ILdRf var_290
  loc_717ECF: FMemLdPr
  loc_717ED4: MemLdStr global_4
  loc_717ED7: StFixedStr
  loc_717EDA: FLdRfVar var_2D0
  loc_717EDD: CStrVarTmp
  loc_717EDE: PopTmpLdAdStr
  loc_717EE2: ImpAdCallI2 Unknown_5D00C8()
  loc_717EE7: FStStrNoPop var_3E4
  loc_717EEA: CUI1Str
  loc_717EEC: FLdI2 var_88
  loc_717EEF: CI4UI1
  loc_717EF0: FMemLdRf unk_43B66D
  loc_717EF5: Ary1StUI1
  loc_717EF7: FFreeStr var_290 = "": var_3B4 = ""
  loc_717F00: FFreeVar var_284 = "": var_2B0 = ""
  loc_717F09: FLdRfVar var_88
  loc_717F0C: NextI2 var_3E0, loc_717E47
  loc_717F11: LitI2_Byte 1
  loc_717F13: FLdRfVar var_88
  loc_717F16: LitI2_Byte &H10
  loc_717F18: ForI2 var_3E8
  loc_717F1E: LitVarI2 var_2B0, 1
  loc_717F23: FLdRfVar var_14C
  loc_717F26: FLdI2 var_88
  loc_717F29: LitI2_Byte 1
  loc_717F2B: SubI2
  loc_717F2C: CVarI2 var_274
  loc_717F2F: AddVar var_284
  loc_717F33: CI4Var
  loc_717F35: FMemLdPr
  loc_717F3A: MemLdStr global_4
  loc_717F3D: FStStrCopy var_290
  loc_717F40: FLdRfVar var_290
  loc_717F43: CVarRef
  loc_717F48: FLdRfVar var_2D0
  loc_717F4B: ImpAdCallFPR4  = Mid(, , )
  loc_717F50: ILdRf var_290
  loc_717F53: FMemLdPr
  loc_717F58: MemLdStr global_4
  loc_717F5B: StFixedStr
  loc_717F5E: FLdRfVar var_2D0
  loc_717F61: CStrVarTmp
  loc_717F62: PopTmpLdAdStr
  loc_717F66: ImpAdCallI2 Unknown_5D00C8()
  loc_717F6B: FStStrNoPop var_3E4
  loc_717F6E: CUI1Str
  loc_717F70: FLdI2 var_88
  loc_717F73: CI4UI1
  loc_717F74: FMemLdRf unk_43B66D
  loc_717F79: Ary1StUI1
  loc_717F7B: FFreeStr var_290 = "": var_3B4 = ""
  loc_717F84: FFreeVar var_284 = "": var_2B0 = ""
  loc_717F8D: FLdRfVar var_88
  loc_717F90: NextI2 var_3E8, loc_717F1E
  loc_717F95: LitI2_Byte 1
  loc_717F97: FLdRfVar var_88
  loc_717F9A: LitI2_Byte &H10
  loc_717F9C: ForI2 var_3EC
  loc_717FA2: LitVarI2 var_2B0, 1
  loc_717FA7: FLdRfVar var_15C
  loc_717FAA: FLdI2 var_88
  loc_717FAD: LitI2_Byte 1
  loc_717FAF: SubI2
  loc_717FB0: CVarI2 var_274
  loc_717FB3: AddVar var_284
  loc_717FB7: CI4Var
  loc_717FB9: FMemLdPr
  loc_717FBE: MemLdStr global_4
  loc_717FC1: FStStrCopy var_290
  loc_717FC4: FLdRfVar var_290
  loc_717FC7: CVarRef
  loc_717FCC: FLdRfVar var_2D0
  loc_717FCF: ImpAdCallFPR4  = Mid(, , )
  loc_717FD4: ILdRf var_290
  loc_717FD7: FMemLdPr
  loc_717FDC: MemLdStr global_4
  loc_717FDF: StFixedStr
  loc_717FE2: FLdRfVar var_2D0
  loc_717FE5: CStrVarTmp
  loc_717FE6: PopTmpLdAdStr
  loc_717FEA: ImpAdCallI2 Unknown_5D00C8()
  loc_717FEF: FStStrNoPop var_3E4
  loc_717FF2: CUI1Str
  loc_717FF4: FLdI2 var_88
  loc_717FF7: CI4UI1
  loc_717FF8: FMemLdRf unk_43B66D
  loc_717FFD: Ary1StUI1
  loc_717FFF: FFreeStr var_290 = "": var_3B4 = ""
  loc_718008: FFreeVar var_284 = "": var_2B0 = ""
  loc_718011: FLdRfVar var_88
  loc_718014: NextI2 var_3EC, loc_717FA2
  loc_718019: LitI2_Byte 1
  loc_71801B: FLdRfVar var_88
  loc_71801E: LitI2_Byte &HA
  loc_718020: ForI2 var_3F0
  loc_718026: LitVarI2 var_2B0, 25
  loc_71802B: FLdRfVar var_234
  loc_71802E: FLdI2 var_88
  loc_718031: LitI2_Byte 1
  loc_718033: SubI2
  loc_718034: LitI2_Byte &H19
  loc_718036: MulI2
  loc_718037: CVarI2 var_274
  loc_71803A: AddVar var_284
  loc_71803E: CI4Var
  loc_718040: FMemLdPr
  loc_718045: MemLdStr global_4
  loc_718048: FStStrCopy var_290
  loc_71804B: FLdRfVar var_290
  loc_71804E: CVarRef
  loc_718053: FLdRfVar var_2D0
  loc_718056: ImpAdCallFPR4  = Mid(, , )
  loc_71805B: ILdRf var_290
  loc_71805E: FMemLdPr
  loc_718063: MemLdStr global_4
  loc_718066: StFixedStr
  loc_718069: FLdRfVar var_2D0
  loc_71806C: CStrVarTmp
  loc_71806D: PopTmpLdAdStr
  loc_718071: FLdI2 var_88
  loc_718074: ImpAdLdRf MemVar_74A220
  loc_718077: NewIfNullPr clsProducts
  loc_71807F: FFreeStr var_290 = ""
  loc_718086: FFreeVar var_284 = "": var_2B0 = ""
  loc_71808F: FLdRfVar var_88
  loc_718092: NextI2 var_3F0, loc_718026
  loc_718097: LitI2_Byte 1
  loc_718099: FLdRfVar var_88
  loc_71809C: LitI2_Byte &HA
  loc_71809E: ForI2 var_3F4
  loc_7180A4: LitVarI2 var_284, 1
  loc_7180A9: FLdI2 var_15E
  loc_7180AC: FLdI2 var_88
  loc_7180AF: LitI2_Byte 1
  loc_7180B1: SubI2
  loc_7180B2: AddI2
  loc_7180B3: CI4UI1
  loc_7180B4: FMemLdPr
  loc_7180B9: MemLdStr global_4
  loc_7180BC: FStStrCopy var_290
  loc_7180BF: FLdRfVar var_290
  loc_7180C2: CVarRef
  loc_7180C7: FLdRfVar var_2B0
  loc_7180CA: ImpAdCallFPR4  = Mid(, , )
  loc_7180CF: ILdRf var_290
  loc_7180D2: FMemLdPr
  loc_7180D7: MemLdStr global_4
  loc_7180DA: StFixedStr
  loc_7180DD: FLdRfVar var_2B0
  loc_7180E0: FnCByteVar
  loc_7180E2: CI2UI1
  loc_7180E4: PopTmpLdAd2 var_286
  loc_7180E7: FLdI2 var_88
  loc_7180EA: ImpAdLdRf MemVar_74A220
  loc_7180ED: NewIfNullPr clsProducts
  loc_7180F0: clsProducts = from_stack_1
  loc_7180F5: FFree1Str var_290
  loc_7180F8: FFreeVar var_284 = "": var_2B0 = ""
  loc_718101: FLdRfVar var_88
  loc_718104: NextI2 var_3F4, loc_7180A4
  loc_718109: LitI2_Byte 1
  loc_71810B: FLdRfVar var_88
  loc_71810E: LitI2_Byte &H10
  loc_718110: ForI2 var_3F8
  loc_718116: LitVarI2 var_284, 1
  loc_71811B: FLdI2 var_C2
  loc_71811E: FLdI2 var_88
  loc_718121: LitI2_Byte 1
  loc_718123: SubI2
  loc_718124: AddI2
  loc_718125: CI4UI1
  loc_718126: FMemLdPr
  loc_71812B: MemLdStr global_4
  loc_71812E: FStStrCopy var_290
  loc_718131: FLdRfVar var_290
  loc_718134: CVarRef
  loc_718139: FLdRfVar var_2B0
  loc_71813C: ImpAdCallFPR4  = Mid(, , )
  loc_718141: ILdRf var_290
  loc_718144: FMemLdPr
  loc_718149: MemLdStr global_4
  loc_71814C: StFixedStr
  loc_71814F: FLdRfVar var_2B0
  loc_718152: FnCByteVar
  loc_718154: FLdI2 var_88
  loc_718157: CI4UI1
  loc_718158: FMemLdRf unk_43B66D
  loc_71815D: Ary1StUI1
  loc_71815F: FFree1Str var_290
  loc_718162: FFreeVar var_284 = "": var_2B0 = ""
  loc_71816B: FLdRfVar var_88
  loc_71816E: NextI2 var_3F8, loc_718116
  loc_718173: LitI2_Byte 1
  loc_718175: FLdRfVar var_88
  loc_718178: LitI2_Byte &H20
  loc_71817A: ForI2 var_3FC
  loc_718180: LitVarI2 var_2B0, 1
  loc_718185: FLdRfVar var_170
  loc_718188: FLdI2 var_88
  loc_71818B: LitI2_Byte 1
  loc_71818D: SubI2
  loc_71818E: CVarI2 var_274
  loc_718191: AddVar var_284
  loc_718195: CI4Var
  loc_718197: FMemLdPr
  loc_71819C: MemLdStr global_4
  loc_71819F: FStStrCopy var_290
  loc_7181A2: FLdRfVar var_290
  loc_7181A5: CVarRef
  loc_7181AA: FLdRfVar var_2D0
  loc_7181AD: ImpAdCallFPR4  = Mid(, , )
  loc_7181B2: ILdRf var_290
  loc_7181B5: FMemLdPr
  loc_7181BA: MemLdStr global_4
  loc_7181BD: StFixedStr
  loc_7181C0: FLdRfVar var_2D0
  loc_7181C3: FnCByteVar
  loc_7181C5: FLdI2 var_88
  loc_7181C8: CI4UI1
  loc_7181C9: FMemLdRf unk_43B66D
  loc_7181CE: Ary1StUI1
  loc_7181D0: FFree1Str var_290
  loc_7181D3: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7181DE: FLdRfVar var_88
  loc_7181E1: NextI2 var_3FC, loc_718180
  loc_7181E6: LitI2_Byte 1
  loc_7181E8: FLdRfVar var_88
  loc_7181EB: LitI2_Byte &H10
  loc_7181ED: ForI2 var_400
  loc_7181F3: LitVarI2 var_2B0, 1
  loc_7181F8: FLdRfVar var_244
  loc_7181FB: FLdI2 var_88
  loc_7181FE: LitI2_Byte 1
  loc_718200: SubI2
  loc_718201: CVarI2 var_274
  loc_718204: AddVar var_284
  loc_718208: CI4Var
  loc_71820A: FMemLdPr
  loc_71820F: MemLdStr global_4
  loc_718212: FStStrCopy var_290
  loc_718215: FLdRfVar var_290
  loc_718218: CVarRef
  loc_71821D: FLdRfVar var_2D0
  loc_718220: ImpAdCallFPR4  = Mid(, , )
  loc_718225: ILdRf var_290
  loc_718228: FMemLdPr
  loc_71822D: MemLdStr global_4
  loc_718230: StFixedStr
  loc_718233: FLdRfVar var_2D0
  loc_718236: FnCByteVar
  loc_718238: FLdI2 var_88
  loc_71823B: CI4UI1
  loc_71823C: FMemLdRf unk_43B66D
  loc_718241: Ary1StUI1
  loc_718243: FFree1Str var_290
  loc_718246: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_718251: FLdRfVar var_88
  loc_718254: NextI2 var_400, loc_7181F3
  loc_718259: LitI2_Byte 1
  loc_71825B: FLdRfVar var_88
  loc_71825E: LitI2_Byte &H20
  loc_718260: ForI2 var_404
  loc_718266: LitVarI2 var_2B0, 1
  loc_71826B: FLdRfVar var_180
  loc_71826E: FLdI2 var_88
  loc_718271: LitI2_Byte 1
  loc_718273: SubI2
  loc_718274: CVarI2 var_274
  loc_718277: AddVar var_284
  loc_71827B: CI4Var
  loc_71827D: FMemLdPr
  loc_718282: MemLdStr global_4
  loc_718285: FStStrCopy var_290
  loc_718288: FLdRfVar var_290
  loc_71828B: CVarRef
  loc_718290: FLdRfVar var_2D0
  loc_718293: ImpAdCallFPR4  = Mid(, , )
  loc_718298: ILdRf var_290
  loc_71829B: FMemLdPr
  loc_7182A0: MemLdStr global_4
  loc_7182A3: StFixedStr
  loc_7182A6: FLdRfVar var_2D0
  loc_7182A9: FnCByteVar
  loc_7182AB: FLdI2 var_88
  loc_7182AE: CI4UI1
  loc_7182AF: FMemLdRf unk_43B66D
  loc_7182B4: Ary1StUI1
  loc_7182B6: FFree1Str var_290
  loc_7182B9: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7182C4: FLdRfVar var_88
  loc_7182C7: NextI2 var_404, loc_718266
  loc_7182CC: LitI2_Byte 1
  loc_7182CE: FLdRfVar var_88
  loc_7182D1: LitI2_Byte &H10
  loc_7182D3: ForI2 var_408
  loc_7182D9: LitVarI2 var_284, 1
  loc_7182DE: FLdI2 var_192
  loc_7182E1: FLdI2 var_88
  loc_7182E4: LitI2_Byte 1
  loc_7182E6: SubI2
  loc_7182E7: AddI2
  loc_7182E8: CI4UI1
  loc_7182E9: FMemLdPr
  loc_7182EE: MemLdStr global_4
  loc_7182F1: FStStrCopy var_290
  loc_7182F4: FLdRfVar var_290
  loc_7182F7: CVarRef
  loc_7182FC: FLdRfVar var_2B0
  loc_7182FF: ImpAdCallFPR4  = Mid(, , )
  loc_718304: ILdRf var_290
  loc_718307: FMemLdPr
  loc_71830C: MemLdStr global_4
  loc_71830F: StFixedStr
  loc_718312: FLdRfVar var_2B0
  loc_718315: FnCByteVar
  loc_718317: FLdI2 var_88
  loc_71831A: CI4UI1
  loc_71831B: FMemLdRf unk_43B66D
  loc_718320: Ary1StUI1
  loc_718322: FFree1Str var_290
  loc_718325: FFreeVar var_284 = "": var_2B0 = ""
  loc_71832E: FLdRfVar var_88
  loc_718331: NextI2 var_408, loc_7182D9
  loc_718336: LitI2_Byte 1
  loc_718338: FLdRfVar var_88
  loc_71833B: LitI2_Byte &H20
  loc_71833D: ForI2 var_40C
  loc_718343: LitVarI2 var_2B0, 1
  loc_718348: FLdRfVar var_1A4
  loc_71834B: FLdI2 var_88
  loc_71834E: LitI2_Byte 1
  loc_718350: AddI2
  loc_718351: CVarI2 var_274
  loc_718354: AddVar var_284
  loc_718358: CI4Var
  loc_71835A: FMemLdPr
  loc_71835F: MemLdStr global_4
  loc_718362: FStStrCopy var_290
  loc_718365: FLdRfVar var_290
  loc_718368: CVarRef
  loc_71836D: FLdRfVar var_2D0
  loc_718370: ImpAdCallFPR4  = Mid(, , )
  loc_718375: ILdRf var_290
  loc_718378: FMemLdPr
  loc_71837D: MemLdStr global_4
  loc_718380: StFixedStr
  loc_718383: FLdRfVar var_2D0
  loc_718386: FnCByteVar
  loc_718388: FLdI2 var_88
  loc_71838B: CI4UI1
  loc_71838C: FMemLdRf unk_43B66D
  loc_718391: Ary1StUI1
  loc_718393: FFree1Str var_290
  loc_718396: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7183A1: FLdRfVar var_88
  loc_7183A4: NextI2 var_40C, loc_718343
  loc_7183A9: LitI2_Byte 1
  loc_7183AB: FLdRfVar var_88
  loc_7183AE: LitI2_Byte &H20
  loc_7183B0: ForI2 var_410
  loc_7183B6: LitVarI2 var_284, 1
  loc_7183BB: FLdI2 var_20E
  loc_7183BE: FLdI2 var_88
  loc_7183C1: LitI2_Byte 1
  loc_7183C3: SubI2
  loc_7183C4: AddI2
  loc_7183C5: CI4UI1
  loc_7183C6: FMemLdPr
  loc_7183CB: MemLdStr global_4
  loc_7183CE: FStStrCopy var_290
  loc_7183D1: FLdRfVar var_290
  loc_7183D4: CVarRef
  loc_7183D9: FLdRfVar var_2B0
  loc_7183DC: ImpAdCallFPR4  = Mid(, , )
  loc_7183E1: ILdRf var_290
  loc_7183E4: FMemLdPr
  loc_7183E9: MemLdStr global_4
  loc_7183EC: StFixedStr
  loc_7183EF: FLdRfVar var_2B0
  loc_7183F2: FnCByteVar
  loc_7183F4: FLdI2 var_88
  loc_7183F7: CI4UI1
  loc_7183F8: FMemLdRf unk_43B66D
  loc_7183FD: Ary1StUI1
  loc_7183FF: FFree1Str var_290
  loc_718402: FFreeVar var_284 = "": var_2B0 = ""
  loc_71840B: FLdRfVar var_88
  loc_71840E: NextI2 var_410, loc_7183B6
  loc_718413: LitVarI2 var_284, 1
  loc_718418: FLdRfVar var_1B4
  loc_71841B: CI4Var
  loc_71841D: FMemLdPr
  loc_718422: MemLdStr global_4
  loc_718425: FStStrCopy var_290
  loc_718428: FLdRfVar var_290
  loc_71842B: CVarRef
  loc_718430: FLdRfVar var_2B0
  loc_718433: ImpAdCallFPR4  = Mid(, , )
  loc_718438: ILdRf var_290
  loc_71843B: FMemLdPr
  loc_718440: MemLdStr global_4
  loc_718443: StFixedStr
  loc_718446: FLdRfVar var_2B0
  loc_718449: CStrVarVal var_3B4
  loc_71844D: ImpAdCallI2 Asc()
  loc_718452: CUI1I2
  loc_718454: FStUI1 var_25E
  loc_718458: FFreeStr var_290 = ""
  loc_71845F: FFreeVar var_284 = ""
  loc_718466: FLdUI1
  loc_71846A: CI2UI1
  loc_71846C: LitI2_Byte &HF
  loc_71846E: AndI4
  loc_71846F: CUI1I2
  loc_718471: FMemStUI1 arg_8(1041)
  loc_718477: FLdUI1
  loc_71847B: CR8I2
  loc_71847C: LitI2_Byte &H10
  loc_71847E: CR8I2
  loc_71847F: DivR8
  loc_718480: LitI2_Byte 3
  loc_718482: CR8I2
  loc_718483: SubR4
  loc_718484: CUI1R4
  loc_718486: FMemStUI1 arg_8(1040)
  loc_71848C: FMemLdUI1 arg_8(1040)
  loc_718492: CI2UI1
  loc_718494: LitI2_Byte 0
  loc_718496: EqI2
  loc_718497: BranchF loc_7184DC
  loc_71849A: LitStr "CEM44.INI"
  loc_71849D: FLdRfVar var_3E4
  loc_7184A0: CStr2Ansi
  loc_7184A1: ILdRf var_3E4
  loc_7184A4: FMemLdUI1 arg_8(1041)
  loc_7184AA: CI4UI1
  loc_7184AB: LitStr "DECIMAL_PPU"
  loc_7184AE: FLdRfVar var_3B4
  loc_7184B1: CStr2Ansi
  loc_7184B2: ILdRf var_3B4
  loc_7184B5: LitStr "GENERAL"
  loc_7184B8: FLdRfVar var_290
  loc_7184BB: CStr2Ansi
  loc_7184BC: ILdRf var_290
  loc_7184BF: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_7184C4: FStR4 var_28C
  loc_7184C7: SetLastSystemError
  loc_7184C8: ILdRf var_28C
  loc_7184CB: CUI1I4
  loc_7184CD: FMemStUI1 arg_8(1040)
  loc_7184D3: FFreeStr var_290 = "": var_3B4 = ""
  loc_7184DC: FMemLdPr
  loc_7184E1: MemLdStr global_4
  loc_7184E4: CVarStr var_2C0
  loc_7184E7: LitI4 1
  loc_7184EC: LitI4 1
  loc_7184F1: LitVarStr var_2A0, "0"
  loc_7184F6: FStVarCopyObj var_2B0
  loc_7184F9: FLdRfVar var_2B0
  loc_7184FC: LitVarI2 var_284, 0
  loc_718501: FLdRfVar var_2D0
  loc_718504: ImpAdCallFPR4  = Format(, )
  loc_718509: FLdRfVar var_2D0
  loc_71850C: ConcatVar var_2F0
  loc_718510: CStrVarTmp
  loc_718511: FStStrNoPop var_290
  loc_718514: FMemLdPr
  loc_718519: MemLdStr global_4
  loc_71851C: StFixedStr
  loc_71851F: FFree1Str var_290
  loc_718522: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_71852D: FMemLdI2 arg_8(16)
  loc_718532: BranchF loc_7185B3
  loc_718535: LitI2_Byte 1
  loc_718537: FLdRfVar var_88
  loc_71853A: LitI2_Byte &H10
  loc_71853C: ForI2 var_414
  loc_718542: LitVarI2 var_2B0, 7
  loc_718547: FLdRfVar var_1C4
  loc_71854A: FLdI2 var_88
  loc_71854D: LitI2_Byte 1
  loc_71854F: SubI2
  loc_718550: LitI2_Byte 7
  loc_718552: MulI2
  loc_718553: CVarI2 var_274
  loc_718556: AddVar var_284
  loc_71855A: CI4Var
  loc_71855C: FMemLdPr
  loc_718561: MemLdStr global_4
  loc_718564: FStStrCopy var_290
  loc_718567: FLdRfVar var_290
  loc_71856A: CVarRef
  loc_71856F: FLdRfVar var_2D0
  loc_718572: ImpAdCallFPR4  = Mid(, , )
  loc_718577: ILdRf var_290
  loc_71857A: FMemLdPr
  loc_71857F: MemLdStr global_4
  loc_718582: StFixedStr
  loc_718585: FLdRfVar var_2D0
  loc_718588: FnCCurVar
  loc_71858A: CR8Cy
  loc_71858B: LitI2_Byte &H64
  loc_71858D: CR8I2
  loc_71858E: DivR8
  loc_71858F: CCyR4
  loc_718590: FLdI2 var_88
  loc_718593: CI4UI1
  loc_718594: FMemLdRf unk_43B66D
  loc_718599: Ary1StCy
  loc_71859A: FFree1Str var_290
  loc_71859D: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7185A8: FLdRfVar var_88
  loc_7185AB: NextI2 var_414, loc_718542
  loc_7185B0: Branch loc_71862E
  loc_7185B3: LitI2_Byte 1
  loc_7185B5: FLdRfVar var_88
  loc_7185B8: LitI2_Byte &H10
  loc_7185BA: ForI2 var_418
  loc_7185C0: LitVarI2 var_2B0, 8
  loc_7185C5: FLdRfVar var_1C4
  loc_7185C8: FLdI2 var_88
  loc_7185CB: LitI2_Byte 1
  loc_7185CD: SubI2
  loc_7185CE: LitI2_Byte 8
  loc_7185D0: MulI2
  loc_7185D1: CVarI2 var_274
  loc_7185D4: AddVar var_284
  loc_7185D8: CI4Var
  loc_7185DA: FMemLdPr
  loc_7185DF: MemLdStr global_4
  loc_7185E2: FStStrCopy var_290
  loc_7185E5: FLdRfVar var_290
  loc_7185E8: CVarRef
  loc_7185ED: FLdRfVar var_2D0
  loc_7185F0: ImpAdCallFPR4  = Mid(, , )
  loc_7185F5: ILdRf var_290
  loc_7185F8: FMemLdPr
  loc_7185FD: MemLdStr global_4
  loc_718600: StFixedStr
  loc_718603: FLdRfVar var_2D0
  loc_718606: FnCCurVar
  loc_718608: CR8Cy
  loc_718609: LitI2_Byte &H64
  loc_71860B: CR8I2
  loc_71860C: DivR8
  loc_71860D: CCyR4
  loc_71860E: FLdI2 var_88
  loc_718611: CI4UI1
  loc_718612: FMemLdRf unk_43B66D
  loc_718617: Ary1StCy
  loc_718618: FFree1Str var_290
  loc_71861B: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_718626: FLdRfVar var_88
  loc_718629: NextI2 var_418, loc_7185C0
  loc_71862E: LitI2_Byte 1
  loc_718630: FLdRfVar var_88
  loc_718633: LitI2_Byte &HA
  loc_718635: ForI2 var_41C
  loc_71863B: LitVarI2 var_284, 6
  loc_718640: FLdI2 var_248
  loc_718643: FLdI2 var_88
  loc_718646: LitI2_Byte 1
  loc_718648: SubI2
  loc_718649: LitI2_Byte 6
  loc_71864B: MulI2
  loc_71864C: AddI2
  loc_71864D: CI4UI1
  loc_71864E: FMemLdPr
  loc_718653: MemLdStr global_4
  loc_718656: FStStrCopy var_290
  loc_718659: FLdRfVar var_290
  loc_71865C: CVarRef
  loc_718661: FLdRfVar var_2B0
  loc_718664: ImpAdCallFPR4  = Mid(, , )
  loc_718669: ILdRf var_290
  loc_71866C: FMemLdPr
  loc_718671: MemLdStr global_4
  loc_718674: StFixedStr
  loc_718677: FLdRfVar var_2B0
  loc_71867A: FnCCurVar
  loc_71867C: LitI2_Byte 0
  loc_71867E: CR8I2
  loc_71867F: NeCyR8
  loc_718680: FFree1Str var_290
  loc_718683: FFreeVar var_284 = "": var_2B0 = ""
  loc_71868C: BranchF loc_7186F3
  loc_71868F: LitVarI2 var_284, 6
  loc_718694: FLdI2 var_248
  loc_718697: FLdI2 var_88
  loc_71869A: LitI2_Byte 1
  loc_71869C: SubI2
  loc_71869D: LitI2_Byte 6
  loc_71869F: MulI2
  loc_7186A0: AddI2
  loc_7186A1: CI4UI1
  loc_7186A2: FMemLdPr
  loc_7186A7: MemLdStr global_4
  loc_7186AA: FStStrCopy var_290
  loc_7186AD: FLdRfVar var_290
  loc_7186B0: CVarRef
  loc_7186B5: FLdRfVar var_2B0
  loc_7186B8: ImpAdCallFPR4  = Mid(, , )
  loc_7186BD: ILdRf var_290
  loc_7186C0: FMemLdPr
  loc_7186C5: MemLdStr global_4
  loc_7186C8: StFixedStr
  loc_7186CB: FLdRfVar var_2B0
  loc_7186CE: FnCCurVar
  loc_7186D0: LitI4 1
  loc_7186D5: FLdI2 var_88
  loc_7186D8: CI4UI1
  loc_7186D9: FMemLdRf unk_43B66D
  loc_7186DE: AryLdPr
  loc_7186E1: MemStR8 global_0
  loc_7186E4: FFree1Str var_290
  loc_7186E7: FFreeVar var_284 = "": var_2B0 = ""
  loc_7186F0: Branch loc_71870A
  loc_7186F3: LitI2_Byte 0
  loc_7186F5: CCyI2
  loc_7186F6: LitI4 1
  loc_7186FB: FLdI2 var_88
  loc_7186FE: CI4UI1
  loc_7186FF: FMemLdRf unk_43B66D
  loc_718704: AryLdPr
  loc_718707: MemStR8 global_0
  loc_71870A: FLdRfVar var_88
  loc_71870D: NextI2 var_41C, loc_71863B
  loc_718712: LitVarI2 var_284, 5
  loc_718717: FLdRfVar var_1E8
  loc_71871A: CI4Var
  loc_71871C: FMemLdPr
  loc_718721: MemLdStr global_4
  loc_718724: FStStrCopy var_290
  loc_718727: FLdRfVar var_290
  loc_71872A: CVarRef
  loc_71872F: FLdRfVar var_2B0
  loc_718732: ImpAdCallFPR4  = Mid(, , )
  loc_718737: ILdRf var_290
  loc_71873A: FMemLdPr
  loc_71873F: MemLdStr global_4
  loc_718742: StFixedStr
  loc_718745: FLdRfVar var_2B0
  loc_718748: CStrVarTmp
  loc_718749: FMemStStr arg_8(800)
  loc_71874F: FFree1Str var_290
  loc_718752: FFreeVar var_284 = ""
  loc_718759: LitI2_Byte 1
  loc_71875B: FLdRfVar var_88
  loc_71875E: LitI2_Byte &H10
  loc_718760: ForI2 var_420
  loc_718766: LitVarI2 var_284, 5
  loc_71876B: FLdI2 var_1EA
  loc_71876E: FLdI2 var_88
  loc_718771: LitI2_Byte 1
  loc_718773: SubI2
  loc_718774: LitI2_Byte 5
  loc_718776: MulI2
  loc_718777: AddI2
  loc_718778: CI4UI1
  loc_718779: FMemLdPr
  loc_71877E: MemLdStr global_4
  loc_718781: FStStrCopy var_290
  loc_718784: FLdRfVar var_290
  loc_718787: CVarRef
  loc_71878C: FLdRfVar var_2B0
  loc_71878F: ImpAdCallFPR4  = Mid(, , )
  loc_718794: ILdRf var_290
  loc_718797: FMemLdPr
  loc_71879C: MemLdStr global_4
  loc_71879F: StFixedStr
  loc_7187A2: FLdRfVar var_2B0
  loc_7187A5: FnCIntVar
  loc_7187A7: FLdI2 var_88
  loc_7187AA: CI4UI1
  loc_7187AB: FMemLdRf unk_43B66D
  loc_7187B0: Ary1StI2
  loc_7187B1: FFree1Str var_290
  loc_7187B4: FFreeVar var_284 = "": var_2B0 = ""
  loc_7187BD: FLdRfVar var_88
  loc_7187C0: NextI2 var_420, loc_718766
  loc_7187C5: LitI2_Byte 1
  loc_7187C7: FLdRfVar var_88
  loc_7187CA: LitI2_Byte &H10
  loc_7187CC: ForI2 var_424
  loc_7187D2: LitVarI2 var_2B0, 4
  loc_7187D7: FLdRfVar var_1FC
  loc_7187DA: FLdI2 var_88
  loc_7187DD: LitI2_Byte 1
  loc_7187DF: SubI2
  loc_7187E0: LitI2_Byte 4
  loc_7187E2: MulI2
  loc_7187E3: CVarI2 var_274
  loc_7187E6: AddVar var_284
  loc_7187EA: CI4Var
  loc_7187EC: FMemLdPr
  loc_7187F1: MemLdStr global_4
  loc_7187F4: FStStrCopy var_290
  loc_7187F7: FLdRfVar var_290
  loc_7187FA: CVarRef
  loc_7187FF: FLdRfVar var_2D0
  loc_718802: ImpAdCallFPR4  = Mid(, , )
  loc_718807: ILdRf var_290
  loc_71880A: FMemLdPr
  loc_71880F: MemLdStr global_4
  loc_718812: StFixedStr
  loc_718815: FLdRfVar var_2D0
  loc_718818: FnCIntVar
  loc_71881A: FLdI2 var_88
  loc_71881D: CI4UI1
  loc_71881E: FMemLdRf unk_43B66D
  loc_718823: Ary1StI2
  loc_718824: FFree1Str var_290
  loc_718827: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_718832: FLdRfVar var_88
  loc_718835: NextI2 var_424, loc_7187D2
  loc_71883A: LitI2_Byte 1
  loc_71883C: FLdRfVar var_88
  loc_71883F: LitI2_Byte &H10
  loc_718841: ForI2 var_428
  loc_718847: LitVarI2 var_2B0, 4
  loc_71884C: FLdRfVar var_20C
  loc_71884F: FLdI2 var_88
  loc_718852: LitI2_Byte 1
  loc_718854: SubI2
  loc_718855: LitI2_Byte 4
  loc_718857: MulI2
  loc_718858: CVarI2 var_274
  loc_71885B: AddVar var_284
  loc_71885F: CI4Var
  loc_718861: FMemLdPr
  loc_718866: MemLdStr global_4
  loc_718869: FStStrCopy var_290
  loc_71886C: FLdRfVar var_290
  loc_71886F: CVarRef
  loc_718874: FLdRfVar var_2D0
  loc_718877: ImpAdCallFPR4  = Mid(, , )
  loc_71887C: ILdRf var_290
  loc_71887F: FMemLdPr
  loc_718884: MemLdStr global_4
  loc_718887: StFixedStr
  loc_71888A: FLdRfVar var_2D0
  loc_71888D: FnCIntVar
  loc_71888F: FLdI2 var_88
  loc_718892: CI4UI1
  loc_718893: FMemLdRf unk_43B66D
  loc_718898: Ary1StI2
  loc_718899: FFree1Str var_290
  loc_71889C: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_7188A7: FLdRfVar var_88
  loc_7188AA: NextI2 var_428, loc_718847
  loc_7188AF: LitI2_Byte 1
  loc_7188B1: FLdRfVar var_88
  loc_7188B4: LitI2_Byte &H10
  loc_7188B6: ForI2 var_42C
  loc_7188BC: LitVarI2 var_2B0, 4
  loc_7188C1: FLdRfVar var_258
  loc_7188C4: FLdI2 var_88
  loc_7188C7: LitI2_Byte 1
  loc_7188C9: SubI2
  loc_7188CA: LitI2_Byte 4
  loc_7188CC: MulI2
  loc_7188CD: CVarI2 var_274
  loc_7188D0: AddVar var_284
  loc_7188D4: CI4Var
  loc_7188D6: FMemLdPr
  loc_7188DB: MemLdStr global_4
  loc_7188DE: FStStrCopy var_290
  loc_7188E1: FLdRfVar var_290
  loc_7188E4: CVarRef
  loc_7188E9: FLdRfVar var_2D0
  loc_7188EC: ImpAdCallFPR4  = Mid(, , )
  loc_7188F1: ILdRf var_290
  loc_7188F4: FMemLdPr
  loc_7188F9: MemLdStr global_4
  loc_7188FC: StFixedStr
  loc_7188FF: FLdRfVar var_2D0
  loc_718902: FnCIntVar
  loc_718904: FLdI2 var_88
  loc_718907: CI4UI1
  loc_718908: FMemLdRf unk_43B66D
  loc_71890D: Ary1StI2
  loc_71890E: FFree1Str var_290
  loc_718911: FFreeVar var_284 = "": var_2B0 = "": var_2D0 = ""
  loc_71891C: FLdRfVar var_88
  loc_71891F: NextI2 var_42C, loc_7188BC
  loc_718924: LitI2_Byte 1
  loc_718926: FLdRfVar var_88
  loc_718929: LitI2_Byte 5
  loc_71892B: ForI2 var_430
  loc_718931: LitVarI2 var_284, 4
  loc_718936: FLdI2 var_222
  loc_718939: FLdI2 var_88
  loc_71893C: LitI2_Byte 1
  loc_71893E: SubI2
  loc_71893F: LitI2_Byte 4
  loc_718941: MulI2
  loc_718942: AddI2
  loc_718943: CI4UI1
  loc_718944: FMemLdPr
  loc_718949: MemLdStr global_4
  loc_71894C: FStStrCopy var_290
  loc_71894F: FLdRfVar var_290
  loc_718952: CVarRef
  loc_718957: FLdRfVar var_2B0
  loc_71895A: ImpAdCallFPR4  = Mid(, , )
  loc_71895F: ILdRf var_290
  loc_718962: FMemLdPr
  loc_718967: MemLdStr global_4
  loc_71896A: StFixedStr
  loc_71896D: FLdRfVar var_2B0
  loc_718970: FnCIntVar
  loc_718972: FLdI2 var_88
  loc_718975: CI4UI1
  loc_718976: FMemLdRf unk_43B66D
  loc_71897B: Ary1StI2
  loc_71897C: FFree1Str var_290
  loc_71897F: FFreeVar var_284 = "": var_2B0 = ""
  loc_718988: FLdRfVar var_88
  loc_71898B: NextI2 var_430, loc_718931
  loc_718990: LitVarI2 var_284, 3
  loc_718995: FLdI2 var_25A
  loc_718998: CI4UI1
  loc_718999: FMemLdPr
  loc_71899E: MemLdStr global_4
  loc_7189A1: FStStrCopy var_290
  loc_7189A4: FLdRfVar var_290
  loc_7189A7: CVarRef
  loc_7189AC: FLdRfVar var_2B0
  loc_7189AF: ImpAdCallFPR4  = Mid(, , )
  loc_7189B4: ILdRf var_290
  loc_7189B7: FMemLdPr
  loc_7189BC: MemLdStr global_4
  loc_7189BF: StFixedStr
  loc_7189C2: FLdRfVar var_2B0
  loc_7189C5: FnCLngVar
  loc_7189C7: FMemStI4 arg_8(936)
  loc_7189CC: FFree1Str var_290
  loc_7189CF: FFreeVar var_284 = "": var_2B0 = ""
  loc_7189D8: FMemLdRf unk_43B66D
  loc_7189DD: ImpAdCallFPR4 Proc_87_16_603978()
  loc_7189E2: FMemLdUI1 arg_8(1040)
  loc_7189E8: FStUI1 var_432
  loc_7189EC: FLdUI1
  loc_7189F0: LitI2_Byte 1
  loc_7189F2: CUI1I2
  loc_7189F4: EqI2
  loc_7189F5: BranchF loc_718A0C
  loc_7189F8: LitStr "0.000"
  loc_7189FB: FMemStStrCopy
  loc_718A00: LitI2 1000
  loc_718A03: CR8I2
  loc_718A04: FMemStFPR4 arg_8(928)
  loc_718A09: Branch loc_718AA4
  loc_718A0C: FLdUI1
  loc_718A10: LitI2_Byte 2
  loc_718A12: CUI1I2
  loc_718A14: EqI2
  loc_718A15: BranchF loc_718A2B
  loc_718A18: LitStr "#0.00"
  loc_718A1B: FMemStStrCopy
  loc_718A20: LitI2_Byte &H64
  loc_718A22: CR8I2
  loc_718A23: FMemStFPR4 arg_8(928)
  loc_718A28: Branch loc_718AA4
  loc_718A2B: FLdUI1
  loc_718A2F: LitI2_Byte 3
  loc_718A31: CUI1I2
  loc_718A33: EqI2
  loc_718A34: BranchF loc_718A4A
  loc_718A37: LitStr "##0.00"
  loc_718A3A: FMemStStrCopy
  loc_718A3F: LitI2_Byte &HA
  loc_718A41: CR8I2
  loc_718A42: FMemStFPR4 arg_8(928)
  loc_718A47: Branch loc_718AA4
  loc_718A4A: FLdUI1
  loc_718A4E: LitI2_Byte 4
  loc_718A50: CUI1I2
  loc_718A52: EqI2
  loc_718A53: BranchF loc_718A69
  loc_718A56: LitStr "#,##0.\-"
  loc_718A59: FMemStStrCopy
  loc_718A5E: LitI2_Byte 1
  loc_718A60: CR8I2
  loc_718A61: FMemStFPR4 arg_8(928)
  loc_718A66: Branch loc_718AA4
  loc_718A69: FLdUI1
  loc_718A6D: LitI2_Byte 5
  loc_718A6F: CUI1I2
  loc_718A71: EqI2
  loc_718A72: BranchF loc_718A8E
  loc_718A75: LitStr "##,##0.\-"
  loc_718A78: FMemStStrCopy
  loc_718A7D: LitDate 0.1
  loc_718A86: FMemStFPR4 arg_8(928)
  loc_718A8B: Branch loc_718AA4
  loc_718A8E: LitStr "###,#00.\-"
  loc_718A91: FMemStStrCopy
  loc_718A96: LitDate 0.01
  loc_718A9F: FMemStFPR4 arg_8(928)
  loc_718AA4: FMemLdUI1 arg_8(1041)
  loc_718AAA: FStUI1 var_434
  loc_718AAE: FLdUI1
  loc_718AB2: LitI2_Byte 1
  loc_718AB4: CUI1I2
  loc_718AB6: EqI2
  loc_718AB7: BranchF loc_718AD5
  loc_718ABA: LitStr "##0.00"
  loc_718ABD: FMemStStrCopy
  loc_718AC2: LitStr "###0.00"
  loc_718AC5: FMemStStrCopy
  loc_718ACA: LitI2_Byte &H64
  loc_718ACC: CR8I2
  loc_718ACD: FMemStFPR4 arg_8(932)
  loc_718AD2: Branch loc_718B9B
  loc_718AD5: FLdUI1
  loc_718AD9: LitI2_Byte 2
  loc_718ADB: CUI1I2
  loc_718ADD: EqI2
  loc_718ADE: BranchF loc_718AFC
  loc_718AE1: LitStr "#,##0.00"
  loc_718AE4: FMemStStrCopy
  loc_718AE9: LitStr "####0.0"
  loc_718AEC: FMemStStrCopy
  loc_718AF1: LitI2_Byte &HA
  loc_718AF3: CR8I2
  loc_718AF4: FMemStFPR4 arg_8(932)
  loc_718AF9: Branch loc_718B9B
  loc_718AFC: FLdUI1
  loc_718B00: LitI2_Byte 3
  loc_718B02: CUI1I2
  loc_718B04: EqI2
  loc_718B05: BranchF loc_718B23
  loc_718B08: LitStr "##,##0.00"
  loc_718B0B: FMemStStrCopy
  loc_718B10: LitStr "#####0.\-"
  loc_718B13: FMemStStrCopy
  loc_718B18: LitI2_Byte 1
  loc_718B1A: CR8I2
  loc_718B1B: FMemStFPR4 arg_8(932)
  loc_718B20: Branch loc_718B9B
  loc_718B23: FLdUI1
  loc_718B27: LitI2_Byte 4
  loc_718B29: CUI1I2
  loc_718B2B: EqI2
  loc_718B2C: BranchF loc_718B50
  loc_718B2F: LitStr "###,##0.\-"
  loc_718B32: FMemStStrCopy
  loc_718B37: LitStr "#####0.\-"
  loc_718B3A: FMemStStrCopy
  loc_718B3F: LitDate 0.1
  loc_718B48: FMemStFPR4 arg_8(932)
  loc_718B4D: Branch loc_718B9B
  loc_718B50: FLdUI1
  loc_718B54: LitI2_Byte 5
  loc_718B56: CUI1I2
  loc_718B58: EqI2
  loc_718B59: BranchF loc_718B7D
  loc_718B5C: LitStr "#,###,#00.\-"
  loc_718B5F: FMemStStrCopy
  loc_718B64: LitStr "#####0.\-"
  loc_718B67: FMemStStrCopy
  loc_718B6C: LitDate 0.01
  loc_718B75: FMemStFPR4 arg_8(932)
  loc_718B7A: Branch loc_718B9B
  loc_718B7D: LitStr "##,###,000.\-"
  loc_718B80: FMemStStrCopy
  loc_718B85: LitStr "#####0.\-"
  loc_718B88: FMemStStrCopy
  loc_718B8D: LitDate 0.001
  loc_718B96: FMemStFPR4 arg_8(932)
  loc_718B9B: FLdRfVar var_286
  loc_718B9E: FLdRfVar var_264
  loc_718BA1: FLdRfVar var_3B8
  loc_718BA4: ImpAdLdRf MemVar_74C760
  loc_718BA7: NewIfNullPr Formx
  loc_718BAA: from_stack_1v = Formx.global_4589716Get()
  loc_718BAF: FLdPr var_3B8
  loc_718BB2:  = Formx.FontUnderline
  loc_718BB7: FLdI2 var_286
  loc_718BBA: NotI4
  loc_718BBB: FFree1Ad var_3B8
  loc_718BBE: BranchF loc_718BD8
  loc_718BC1: FLdRfVar var_284
  loc_718BC4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_718BC9: FLdRfVar var_284
  loc_718BCC: CBoolVarNull
  loc_718BCE: FFree1Var var_284 = ""
  loc_718BD1: BranchF loc_718BD5
  loc_718BD4: ExitProcI2
  loc_718BD5: Branch loc_718B9B
  loc_718BD8: LitI2_Byte 1
  loc_718BDA: FStI2 var_25C
  loc_718BDD: LitI2_Byte 1
  loc_718BDF: CUI1I2
  loc_718BE1: FLdRfVar var_8A
  loc_718BE4: LitI2_Byte 5
  loc_718BE6: CUI1I2
  loc_718BE8: ForUI1 var_438
  loc_718BEE: LitI2_Byte 1
  loc_718BF0: FLdRfVar var_88
  loc_718BF3: LitI2_Byte &HA
  loc_718BF5: ForI2 var_43C
  loc_718BFB: LitVarI2 var_284, 6
  loc_718C00: FLdI2 var_25C
  loc_718C03: CI4UI1
  loc_718C04: FLdRfVar var_264
  loc_718C07: CVarRef
  loc_718C0C: FLdRfVar var_2B0
  loc_718C0F: ImpAdCallFPR4  = Mid(, , )
  loc_718C14: FLdRfVar var_2B0
  loc_718C17: FnCCurVar
  loc_718C19: CR8Cy
  loc_718C1A: FMemLdFPR4 arg_8(928)
  loc_718C1F: DivR8
  loc_718C20: CCyR4
  loc_718C21: FLdUI1
  loc_718C25: CI4UI1
  loc_718C26: FLdI2 var_88
  loc_718C29: CI4UI1
  loc_718C2A: FMemLdRf unk_43B66D
  loc_718C2F: AryLdPr
  loc_718C32: MemStR8 global_0
  loc_718C35: FFreeVar var_284 = "": var_2B0 = ""
  loc_718C3E: FLdI2 var_25C
  loc_718C41: LitI2_Byte 6
  loc_718C43: AddI2
  loc_718C44: FStI2 var_25C
  loc_718C47: FLdRfVar var_88
  loc_718C4A: NextI2 var_43C, loc_718BFB
  loc_718C4F: FLdRfVar var_8A
  loc_718C52: NextUI1
  loc_718C58: LitI2_Byte 1
  loc_718C5A: FLdRfVar var_88
  loc_718C5D: LitI2_Byte &HA
  loc_718C5F: ForI2 var_440
  loc_718C65: LitVarI2 var_284, 8
  loc_718C6A: FLdI2 var_25C
  loc_718C6D: CI4UI1
  loc_718C6E: FLdRfVar var_264
  loc_718C71: CVarRef
  loc_718C76: FLdRfVar var_2B0
  loc_718C79: ImpAdCallFPR4  = Mid(, , )
  loc_718C7E: FLdRfVar var_2B0
  loc_718C81: FnCCurVar
  loc_718C83: CR8Cy
  loc_718C84: LitI2 10000
  loc_718C87: CR8I2
  loc_718C88: DivR8
  loc_718C89: CCyR4
  loc_718C8A: FLdI2 var_88
  loc_718C8D: CI4UI1
  loc_718C8E: FMemLdRf unk_43B66D
  loc_718C93: Ary1StCy
  loc_718C94: FFreeVar var_284 = "": var_2B0 = ""
  loc_718C9D: FLdI2 var_25C
  loc_718CA0: LitI2_Byte 8
  loc_718CA2: AddI2
  loc_718CA3: FStI2 var_25C
  loc_718CA6: FLdRfVar var_88
  loc_718CA9: NextI2 var_440, loc_718C65
  loc_718CAE: LitStr vbNullString
  loc_718CB1: FMemLdPr
  loc_718CB6: MemLdStr global_4
  loc_718CB9: StFixedStr
  loc_718CBC: FLdRfVar var_286
  loc_718CBF: FMemLdPr
  loc_718CC4: MemLdStr global_4
  loc_718CC7: FStStrCopy var_290
  loc_718CCA: FLdRfVar var_290
  loc_718CCD: FLdRfVar var_3B8
  loc_718CD0: ImpAdLdRf MemVar_74C760
  loc_718CD3: NewIfNullPr Formx
  loc_718CD6: from_stack_1v = Formx.global_4589716Get()
  loc_718CDB: FLdPr var_3B8
  loc_718CDE: Formx.Caption = from_stack_1
  loc_718CE3: ILdRf var_290
  loc_718CE6: FMemLdPr
  loc_718CEB: MemLdStr global_4
  loc_718CEE: StFixedStr
  loc_718CF1: FLdI2 var_286
  loc_718CF4: NotI4
  loc_718CF5: FFree1Str var_290
  loc_718CF8: FFree1Ad var_3B8
  loc_718CFB: BranchF loc_718D39
  loc_718CFE: LitVar_Missing var_2B0
  loc_718D01: LitVar_Missing var_284
  loc_718D04: ImpAdLdRf MemVar_74BF24
  loc_718D07: CVarRef
  loc_718D0C: LitI4 5
  loc_718D11: FMemLdRf unk_43B66D
  loc_718D16: CVarRef
  loc_718D1B: ImpAdCallI2 MsgBox(, , , , )
  loc_718D20: LitI4 2
  loc_718D25: EqI4
  loc_718D26: FFreeVar var_284 = ""
  loc_718D2D: BranchF loc_718D36
  loc_718D30: LitI2_Byte 0
  loc_718D32: FStI2 var_86
  loc_718D35: ExitProcI2
  loc_718D36: Branch loc_718CBC
  loc_718D39: LitI2_Byte 1
  loc_718D3B: FLdRfVar var_88
  loc_718D3E: LitI2_Byte &H20
  loc_718D40: ForI2 var_444
  loc_718D46: LitI2_Byte 0
  loc_718D48: CUI1I2
  loc_718D4A: FLdRfVar var_8C
  loc_718D4D: LitI2_Byte 3
  loc_718D4F: CUI1I2
  loc_718D51: ForUI1 var_448
  loc_718D57: LitI2_Byte 0
  loc_718D59: CUI1I2
  loc_718D5B: FLdRfVar var_8A
  loc_718D5E: LitI2_Byte 2
  loc_718D60: CUI1I2
  loc_718D62: ForUI1 var_44C
  loc_718D68: LitI2_Byte 0
  loc_718D6A: CUI1I2
  loc_718D6C: FLdI2 var_88
  loc_718D6F: CI4UI1
  loc_718D70: FLdUI1
  loc_718D74: CI4UI1
  loc_718D75: FLdUI1
  loc_718D79: CI4UI1
  loc_718D7A: FMemLdRf unk_43B66D
  loc_718D7F: AryLdPr
  loc_718D82: MemStUI1
  loc_718D86: FLdRfVar var_8A
  loc_718D89: NextUI1
  loc_718D8F: FLdRfVar var_8C
  loc_718D92: NextUI1
  loc_718D98: FLdRfVar var_88
  loc_718D9B: NextI2 var_444, loc_718D46
  loc_718DA0: LitI2_Byte 1
  loc_718DA2: FStI2 var_25C
  loc_718DA5: LitVarI2 var_284, 1
  loc_718DAA: FLdI2 var_25C
  loc_718DAD: CI4UI1
  loc_718DAE: FMemLdPr
  loc_718DB3: MemLdStr global_4
  loc_718DB6: FStStrCopy var_290
  loc_718DB9: FLdRfVar var_290
  loc_718DBC: CVarRef
  loc_718DC1: FLdRfVar var_2B0
  loc_718DC4: ImpAdCallFPR4  = Mid(, , )
  loc_718DC9: ILdRf var_290
  loc_718DCC: FMemLdPr
  loc_718DD1: MemLdStr global_4
  loc_718DD4: StFixedStr
  loc_718DD7: FLdRfVar var_2B0
  loc_718DDA: LitVarStr var_2C0, "|"
  loc_718DDF: HardType
  loc_718DE0: NeVarBool
  loc_718DE2: FFree1Str var_290
  loc_718DE5: FFreeVar var_284 = ""
  loc_718DEC: BranchF loc_718EE6
  loc_718DEF: LitVarI2 var_284, 2
  loc_718DF4: FLdI2 var_25C
  loc_718DF7: CI4UI1
  loc_718DF8: FMemLdPr
  loc_718DFD: MemLdStr global_4
  loc_718E00: FStStrCopy var_290
  loc_718E03: FLdRfVar var_290
  loc_718E06: CVarRef
  loc_718E0B: FLdRfVar var_2B0
  loc_718E0E: ImpAdCallFPR4  = Mid(, , )
  loc_718E13: ILdRf var_290
  loc_718E16: FMemLdPr
  loc_718E1B: MemLdStr global_4
  loc_718E1E: StFixedStr
  loc_718E21: FLdRfVar var_2B0
  loc_718E24: FnCByteVar
  loc_718E26: CI2UI1
  loc_718E28: FStI2 var_88
  loc_718E2B: FFree1Str var_290
  loc_718E2E: FFreeVar var_284 = "": var_2B0 = ""
  loc_718E37: FLdI2 var_25C
  loc_718E3A: LitI2_Byte 2
  loc_718E3C: AddI2
  loc_718E3D: FStI2 var_25C
  loc_718E40: LitI2_Byte 0
  loc_718E42: CUI1I2
  loc_718E44: FLdRfVar var_8C
  loc_718E47: LitI2_Byte 3
  loc_718E49: CUI1I2
  loc_718E4B: ForUI1 var_450
  loc_718E51: FLdI2 var_25C
  loc_718E54: LitI2_Byte 6
  loc_718E56: AddI2
  loc_718E57: FStI2 var_25C
  loc_718E5A: LitI2_Byte 0
  loc_718E5C: CUI1I2
  loc_718E5E: FLdRfVar var_8A
  loc_718E61: LitI2_Byte 2
  loc_718E63: CUI1I2
  loc_718E65: ForUI1 var_454
  loc_718E6B: LitVarI2 var_284, 2
  loc_718E70: FLdI2 var_25C
  loc_718E73: CI4UI1
  loc_718E74: FMemLdPr
  loc_718E79: MemLdStr global_4
  loc_718E7C: FStStrCopy var_290
  loc_718E7F: FLdRfVar var_290
  loc_718E82: CVarRef
  loc_718E87: FLdRfVar var_2B0
  loc_718E8A: ImpAdCallFPR4  = Mid(, , )
  loc_718E8F: ILdRf var_290
  loc_718E92: FMemLdPr
  loc_718E97: MemLdStr global_4
  loc_718E9A: StFixedStr
  loc_718E9D: FLdRfVar var_2B0
  loc_718EA0: FnCByteVar
  loc_718EA2: FLdI2 var_88
  loc_718EA5: CI4UI1
  loc_718EA6: FLdUI1
  loc_718EAA: CI4UI1
  loc_718EAB: FLdUI1
  loc_718EAF: CI4UI1
  loc_718EB0: FMemLdRf unk_43B66D
  loc_718EB5: AryLdPr
  loc_718EB8: MemStUI1
  loc_718EBC: FFree1Str var_290
  loc_718EBF: FFreeVar var_284 = "": var_2B0 = ""
  loc_718EC8: FLdI2 var_25C
  loc_718ECB: LitI2_Byte 2
  loc_718ECD: AddI2
  loc_718ECE: FStI2 var_25C
  loc_718ED1: FLdRfVar var_8A
  loc_718ED4: NextUI1
  loc_718EDA: FLdRfVar var_8C
  loc_718EDD: NextUI1
  loc_718EE3: Branch loc_718DA5
  loc_718EE6: LitI2_Byte &HFF
  loc_718EE8: FStI2 var_86
  loc_718EEB: ExitProcI2
  loc_718EEC: LitI2_Byte 0
  loc_718EEE: FStI2 var_86
  loc_718EF1: ExitProcI2
  loc_718EF2: ExitProcI2
End Function

Private Function Proc_53_5_5DE184() '5DE184
  'Data Table: 43B664
  loc_5DE140: LitStr "CEM44.INI"
  loc_5DE143: FStStrCopy var_94
  loc_5DE146: FLdRfVar var_94
  loc_5DE149: LitStr "NOT_DUAL"
  loc_5DE14C: FStStrCopy var_90
  loc_5DE14F: FLdRfVar var_90
  loc_5DE152: LitStr "GENERAL"
  loc_5DE155: FStStrCopy var_8C
  loc_5DE158: FLdRfVar var_8C
  loc_5DE15B: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5DE160: FStStrNoPop var_98
  loc_5DE163: LitStr "1"
  loc_5DE166: EqStr
  loc_5DE168: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_5DE173: BranchF loc_5DE17E
  loc_5DE176: LitI2_Byte &HFF
  loc_5DE178: FStI2 var_86
  loc_5DE17B: Branch loc_5DE183
  loc_5DE17E: LitI2_Byte 0
  loc_5DE180: FStI2 var_86
  loc_5DE183: ExitProcI2
End Function

Private Function Proc_53_6_5EDBD0(arg_10) '5EDBD0
  'Data Table: 43B664
  loc_5EDB4C: ILdRf arg_10
  loc_5EDB4F: FStStrCopy var_88
  loc_5EDB52: LitI4 1
  loc_5EDB57: ILdRf var_88
  loc_5EDB5A: LitI4 0
  loc_5EDB5F: FLdRfVar var_88
  loc_5EDB62: CVarRef
  loc_5EDB67: ImpAdCallI2 push Dir(, )
  loc_5EDB6C: FStStrNoPop var_9C
  loc_5EDB6F: LitI4 0
  loc_5EDB74: FnInStr4
  loc_5EDB76: CStrI4
  loc_5EDB78: FStStrNoPop var_A0
  loc_5EDB7B: ImpAdCallFPR4 push Val()
  loc_5EDB80: CR8R8
  loc_5EDB81: LitI2_Byte 1
  loc_5EDB83: CR8I2
  loc_5EDB84: GtR4
  loc_5EDB85: FFreeStr var_9C = ""
  loc_5EDB8C: BranchF loc_5EDBC2
  loc_5EDB8F: LitI2_Byte &HFF
  loc_5EDB91: ILdPr
  loc_5EDB94: Me.Visible = from_stack_1b
  loc_5EDB99: FLdRfVar var_A4
  loc_5EDB9C: ILdRf var_88
  loc_5EDB9F: CVarStr var_98
  loc_5EDBA2: PopAdLdVar
  loc_5EDBA3: ImpAdLdRf MemVar_7520D4
  loc_5EDBA6: NewIfNullPr Global
  loc_5EDBA9: Global.LoadPictureOld from_stack_1
  loc_5EDBAE: FLdZeroAd var_A4
  loc_5EDBB1: FStAdFuncNoPop
  loc_5EDBB4: ILdPr
  loc_5EDBB7: Me.Picture = from_stack_1
  loc_5EDBBC: FFree1Ad var_A8
  loc_5EDBBF: Branch loc_5EDBCC
  loc_5EDBC2: LitI2_Byte 0
  loc_5EDBC4: ILdPr
  loc_5EDBC7: Me.Visible = from_stack_1b
  loc_5EDBCC: ExitProc
  loc_5EDBCD: FLdI2 var_C2
End Function

Private Function Proc_53_7_736A84(arg_C, arg_10) '736A84
  'Data Table: 403144
  loc_733F0C: ILdRf arg_C
  loc_733F0F: FStStrCopy var_88
  loc_733F12: LitVarI2 var_110, 1
  loc_733F17: LitI4 4
  loc_733F1C: ImpAdLdRf MemVar_74BEAC
  loc_733F1F: CVarRef
  loc_733F24: FLdRfVar var_120
  loc_733F27: ImpAdCallFPR4  = Mid(, , )
  loc_733F2C: FLdRfVar var_120
  loc_733F2F: LitVarStr var_130, "1"
  loc_733F34: HardType
  loc_733F35: EqVar var_140
  loc_733F39: NotVar var_150
  loc_733F3D: CBoolVarNull
  loc_733F3F: FFreeVar var_110 = ""
  loc_733F46: BranchF loc_733F53
  loc_733F49: ILdRf var_88
  loc_733F4C: LitStr "N"
  loc_733F4F: ConcatStr
  loc_733F50: FStStr var_88
  loc_733F53: FLdRfVar var_90
  loc_733F56: ILdRf var_88
  loc_733F59: ImpAdCallI2 Proc_155_0_5F714C(, )
  loc_733F5E: NotI4
  loc_733F5F: BranchF loc_733F79
  loc_733F62: FLdRfVar var_110
  loc_733F65: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_733F6A: FLdRfVar var_110
  loc_733F6D: CBoolVarNull
  loc_733F6F: FFree1Var var_110 = ""
  loc_733F72: BranchF loc_733F76
  loc_733F75: ExitProc
  loc_733F76: Branch loc_733F53
  loc_733F79: FLdRfVar var_90
  loc_733F7C: CVarRef
  loc_733F81: FLdRfVar var_110
  loc_733F84: ImpAdCallFPR4  = Trim()
  loc_733F89: FLdRfVar var_110
  loc_733F8C: CStrVarTmp
  loc_733F8D: FStStr var_90
  loc_733F90: FFree1Var var_110 = ""
  loc_733F93: ILdRf var_90
  loc_733F96: FnLenStr
  loc_733F97: LitI4 1
  loc_733F9C: EqI4
  loc_733F9D: BranchF loc_733FA1
  loc_733FA0: ExitProc
  loc_733FA1: LitI2_Byte 1
  loc_733FA3: FLdRfVar var_8A
  loc_733FA6: LitI2_Byte &HA
  loc_733FA8: ForI2 var_154
  loc_733FAE: LitI2_Byte 1
  loc_733FB0: FLdRfVar var_8C
  loc_733FB3: LitI2_Byte 6
  loc_733FB5: ForI2 var_158
  loc_733FBB: LitI2_Byte 0
  loc_733FBD: CR8I2
  loc_733FBE: FLdI2 var_8A
  loc_733FC1: CI4UI1
  loc_733FC2: FLdI2 var_8C
  loc_733FC5: CI4UI1
  loc_733FC6: FLdRfVar var_DC
  loc_733FC9: AryLdPr
  loc_733FCC: MemStFPR4 global_0
  loc_733FCF: FLdRfVar var_8C
  loc_733FD2: NextI2 var_158, loc_733FBB
  loc_733FD7: FLdRfVar var_8A
  loc_733FDA: NextI2 var_154, loc_733FAE
  loc_733FDF: LitVarI2 var_110, 1
  loc_733FE4: LitI4 1
  loc_733FE9: FLdRfVar var_90
  loc_733FEC: CVarRef
  loc_733FF1: FLdRfVar var_120
  loc_733FF4: ImpAdCallFPR4  = Mid(, , )
  loc_733FF9: FLdRfVar var_120
  loc_733FFC: LitVarStr var_130, "N"
  loc_734001: HardType
  loc_734002: EqVarBool
  loc_734004: FFreeVar var_110 = ""
  loc_73400B: BranchF loc_7359DE
  loc_73400E: LitI4 1
  loc_734013: ILdRf var_90
  loc_734016: LitStr "F"
  loc_734019: LitI4 0
  loc_73401E: FnInStr4
  loc_734020: FStR4 var_E0
  loc_734023: ILdRf var_E0
  loc_734026: LitI4 0
  loc_73402B: NeI4
  loc_73402C: BranchF loc_7343DF
  loc_73402F: ILdRf var_E0
  loc_734032: LitI4 1
  loc_734037: AddI4
  loc_734038: FStR4 var_E0
  loc_73403B: FLdRfVar var_238
  loc_73403E: LitVar_Missing var_234
  loc_734041: LitVar_Missing var_214
  loc_734044: LitVar_Missing var_1F4
  loc_734047: LitVar_Missing var_1D4
  loc_73404A: LitVar_Missing var_1B4
  loc_73404D: LitVar_Missing var_194
  loc_734050: LitVar_Missing var_150
  loc_734053: LitVar_Missing var_140
  loc_734056: LitVar_Missing var_120
  loc_734059: LitVar_Missing var_110
  loc_73405C: LitStr "Inicio Descarga"
  loc_73405F: FStStrCopy var_164
  loc_734062: FLdRfVar var_164
  loc_734065: LitI4 5
  loc_73406A: PopTmpLdAdStr var_160
  loc_73406D: LitI2_Byte 7
  loc_73406F: PopTmpLdAd2 var_15A
  loc_734072: ImpAdLdRf MemVar_74C7D0
  loc_734075: NewIfNullPr clsMsg
  loc_734078: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73407D: ILdRf var_238
  loc_734080: LitStr " :"
  loc_734083: ConcatStr
  loc_734084: CVarStr var_258
  loc_734087: LitI4 3
  loc_73408C: FLdRfVar var_248
  loc_73408F: ImpAdCallFPR4  = Space()
  loc_734094: FLdRfVar var_248
  loc_734097: ConcatVar var_268
  loc_73409B: LitVarI2 var_298, 2
  loc_7340A0: ILdRf var_E0
  loc_7340A3: LitI4 6
  loc_7340A8: AddI4
  loc_7340A9: FLdRfVar var_90
  loc_7340AC: CVarRef
  loc_7340B1: FLdRfVar var_2A8
  loc_7340B4: ImpAdCallFPR4  = Mid(, , )
  loc_7340B9: FLdRfVar var_2A8
  loc_7340BC: ConcatVar var_2B8
  loc_7340C0: LitVarStr var_2C8, "/"
  loc_7340C5: ConcatVar var_2D8
  loc_7340C9: LitVarI2 var_308, 2
  loc_7340CE: ILdRf var_E0
  loc_7340D1: LitI4 4
  loc_7340D6: AddI4
  loc_7340D7: FLdRfVar var_90
  loc_7340DA: CVarRef
  loc_7340DF: FLdRfVar var_318
  loc_7340E2: ImpAdCallFPR4  = Mid(, , )
  loc_7340E7: FLdRfVar var_318
  loc_7340EA: ConcatVar var_328
  loc_7340EE: LitVarStr var_338, "/"
  loc_7340F3: ConcatVar var_348
  loc_7340F7: LitVarI2 var_378, 4
  loc_7340FC: ILdRf var_E0
  loc_7340FF: FLdRfVar var_90
  loc_734102: CVarRef
  loc_734107: FLdRfVar var_388
  loc_73410A: ImpAdCallFPR4  = Mid(, , )
  loc_73410F: FLdRfVar var_388
  loc_734112: ConcatVar var_398
  loc_734116: LitI4 4
  loc_73411B: FLdRfVar var_3A8
  loc_73411E: ImpAdCallFPR4  = Space()
  loc_734123: FLdRfVar var_3A8
  loc_734126: ConcatVar var_3B8
  loc_73412A: LitVarI2 var_3E8, 2
  loc_73412F: ILdRf var_E0
  loc_734132: LitI4 8
  loc_734137: AddI4
  loc_734138: FLdRfVar var_90
  loc_73413B: CVarRef
  loc_734140: FLdRfVar var_3F8
  loc_734143: ImpAdCallFPR4  = Mid(, , )
  loc_734148: FLdRfVar var_3F8
  loc_73414B: ConcatVar var_408
  loc_73414F: LitVarStr var_418, ":"
  loc_734154: ConcatVar var_428
  loc_734158: LitVarI2 var_458, 2
  loc_73415D: ILdRf var_E0
  loc_734160: LitI4 &HA
  loc_734165: AddI4
  loc_734166: FLdRfVar var_90
  loc_734169: CVarRef
  loc_73416E: FLdRfVar var_468
  loc_734171: ImpAdCallFPR4  = Mid(, , )
  loc_734176: FLdRfVar var_468
  loc_734179: ConcatVar var_478
  loc_73417D: LitVarStr var_488, ":"
  loc_734182: ConcatVar var_498
  loc_734186: LitVarI2 var_4C8, 2
  loc_73418B: ILdRf var_E0
  loc_73418E: LitI4 &HC
  loc_734193: AddI4
  loc_734194: FLdRfVar var_90
  loc_734197: CVarRef
  loc_73419C: FLdRfVar var_4D8
  loc_73419F: ImpAdCallFPR4  = Mid(, , )
  loc_7341A4: FLdRfVar var_4D8
  loc_7341A7: ConcatVar var_4E8
  loc_7341AB: CStrVarVal var_4EC
  loc_7341AF: ILdRf arg_10
  loc_7341B2: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7341B7: FFreeStr var_164 = "": var_238 = ""
  loc_7341C0: FFreeVar var_428 = "": var_468 = "": var_478 = "": var_4C8 = "": var_498 = "": var_4D8 = "": var_4E8 = "": var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_258 = "": var_248 = "": var_298 = "": var_268 = "": var_2A8 = "": var_2B8 = "": var_308 = "": var_2D8 = "": var_318 = "": var_328 = "": var_378 = "": var_348 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3E8 = "": var_3B8 = "": var_3F8 = "": var_408 = ""
  loc_73420D: FLdRfVar var_238
  loc_734210: LitVar_Missing var_234
  loc_734213: LitVar_Missing var_214
  loc_734216: LitVar_Missing var_1F4
  loc_734219: LitVar_Missing var_1D4
  loc_73421C: LitVar_Missing var_1B4
  loc_73421F: LitVar_Missing var_194
  loc_734222: LitVar_Missing var_150
  loc_734225: LitVar_Missing var_140
  loc_734228: LitVar_Missing var_120
  loc_73422B: LitVar_Missing var_110
  loc_73422E: LitStr "Fin de Descarga"
  loc_734231: FStStrCopy var_164
  loc_734234: FLdRfVar var_164
  loc_734237: LitI4 6
  loc_73423C: PopTmpLdAdStr var_160
  loc_73423F: LitI2_Byte 7
  loc_734241: PopTmpLdAd2 var_15A
  loc_734244: ImpAdLdRf MemVar_74C7D0
  loc_734247: NewIfNullPr clsMsg
  loc_73424A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73424F: ILdRf var_238
  loc_734252: LitStr " :"
  loc_734255: ConcatStr
  loc_734256: CVarStr var_258
  loc_734259: LitI4 3
  loc_73425E: FLdRfVar var_248
  loc_734261: ImpAdCallFPR4  = Space()
  loc_734266: FLdRfVar var_248
  loc_734269: ConcatVar var_268
  loc_73426D: LitVarI2 var_298, 2
  loc_734272: ILdRf var_E0
  loc_734275: LitI4 6
  loc_73427A: AddI4
  loc_73427B: FLdRfVar var_90
  loc_73427E: CVarRef
  loc_734283: FLdRfVar var_2A8
  loc_734286: ImpAdCallFPR4  = Mid(, , )
  loc_73428B: FLdRfVar var_2A8
  loc_73428E: ConcatVar var_2B8
  loc_734292: LitVarStr var_2C8, "/"
  loc_734297: ConcatVar var_2D8
  loc_73429B: LitVarI2 var_308, 2
  loc_7342A0: ILdRf var_E0
  loc_7342A3: LitI4 4
  loc_7342A8: AddI4
  loc_7342A9: FLdRfVar var_90
  loc_7342AC: CVarRef
  loc_7342B1: FLdRfVar var_318
  loc_7342B4: ImpAdCallFPR4  = Mid(, , )
  loc_7342B9: FLdRfVar var_318
  loc_7342BC: ConcatVar var_328
  loc_7342C0: LitVarStr var_338, "/"
  loc_7342C5: ConcatVar var_348
  loc_7342C9: LitVarI2 var_378, 4
  loc_7342CE: ILdRf var_E0
  loc_7342D1: FLdRfVar var_90
  loc_7342D4: CVarRef
  loc_7342D9: FLdRfVar var_388
  loc_7342DC: ImpAdCallFPR4  = Mid(, , )
  loc_7342E1: FLdRfVar var_388
  loc_7342E4: ConcatVar var_398
  loc_7342E8: LitI4 4
  loc_7342ED: FLdRfVar var_3A8
  loc_7342F0: ImpAdCallFPR4  = Space()
  loc_7342F5: FLdRfVar var_3A8
  loc_7342F8: ConcatVar var_3B8
  loc_7342FC: LitVarI2 var_3E8, 2
  loc_734301: ILdRf var_E0
  loc_734304: LitI4 8
  loc_734309: AddI4
  loc_73430A: FLdRfVar var_90
  loc_73430D: CVarRef
  loc_734312: FLdRfVar var_3F8
  loc_734315: ImpAdCallFPR4  = Mid(, , )
  loc_73431A: FLdRfVar var_3F8
  loc_73431D: ConcatVar var_408
  loc_734321: LitVarStr var_418, ":"
  loc_734326: ConcatVar var_428
  loc_73432A: LitVarI2 var_458, 2
  loc_73432F: ILdRf var_E0
  loc_734332: LitI4 &HA
  loc_734337: AddI4
  loc_734338: FLdRfVar var_90
  loc_73433B: CVarRef
  loc_734340: FLdRfVar var_468
  loc_734343: ImpAdCallFPR4  = Mid(, , )
  loc_734348: FLdRfVar var_468
  loc_73434B: ConcatVar var_478
  loc_73434F: LitVarStr var_488, ":"
  loc_734354: ConcatVar var_498
  loc_734358: LitVarI2 var_4C8, 2
  loc_73435D: ILdRf var_E0
  loc_734360: LitI4 &HC
  loc_734365: AddI4
  loc_734366: FLdRfVar var_90
  loc_734369: CVarRef
  loc_73436E: FLdRfVar var_4D8
  loc_734371: ImpAdCallFPR4  = Mid(, , )
  loc_734376: FLdRfVar var_4D8
  loc_734379: ConcatVar var_4E8
  loc_73437D: CStrVarVal var_4EC
  loc_734381: ILdRf arg_10
  loc_734384: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_734389: FFreeStr var_164 = "": var_238 = ""
  loc_734392: FFreeVar var_428 = "": var_468 = "": var_478 = "": var_4C8 = "": var_498 = "": var_4D8 = "": var_4E8 = "": var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_258 = "": var_248 = "": var_298 = "": var_268 = "": var_2A8 = "": var_2B8 = "": var_308 = "": var_2D8 = "": var_318 = "": var_328 = "": var_378 = "": var_348 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3E8 = "": var_3B8 = "": var_3F8 = "": var_408 = ""
  loc_7343DF: LitStr vbNullString
  loc_7343E2: ILdRf arg_10
  loc_7343E5: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7343EA: LitStr vbNullString
  loc_7343ED: ILdRf arg_10
  loc_7343F0: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7343F5: LitI4 &H10
  loc_7343FA: FLdRfVar var_110
  loc_7343FD: ImpAdCallFPR4  = Space()
  loc_734402: FLdRfVar var_110
  loc_734405: FLdRfVar var_238
  loc_734408: LitVar_Missing var_248
  loc_73440B: LitVar_Missing var_234
  loc_73440E: LitVar_Missing var_214
  loc_734411: LitVar_Missing var_1F4
  loc_734414: LitVar_Missing var_1D4
  loc_734417: LitVar_Missing var_1B4
  loc_73441A: LitVar_Missing var_194
  loc_73441D: LitVar_Missing var_150
  loc_734420: LitVar_Missing var_140
  loc_734423: LitVar_Missing var_120
  loc_734426: LitStr "Volumen"
  loc_734429: FStStrCopy var_164
  loc_73442C: FLdRfVar var_164
  loc_73442F: LitI4 7
  loc_734434: PopTmpLdAdStr var_160
  loc_734437: LitI2_Byte 7
  loc_734439: PopTmpLdAd2 var_15A
  loc_73443C: ImpAdLdRf MemVar_74C7D0
  loc_73443F: NewIfNullPr clsMsg
  loc_734442: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_734447: FLdZeroAd var_238
  loc_73444A: CVarStr var_258
  loc_73444D: ConcatVar var_268
  loc_734451: LitI4 5
  loc_734456: FLdRfVar var_298
  loc_734459: ImpAdCallFPR4  = Space()
  loc_73445E: FLdRfVar var_298
  loc_734461: ConcatVar var_2A8
  loc_734465: FLdRfVar var_4F8
  loc_734468: LitVar_Missing var_3A8
  loc_73446B: LitVar_Missing var_398
  loc_73446E: LitVar_Missing var_388
  loc_734471: LitVar_Missing var_378
  loc_734474: LitVar_Missing var_348
  loc_734477: LitVar_Missing var_328
  loc_73447A: LitVar_Missing var_318
  loc_73447D: LitVar_Missing var_308
  loc_734480: LitVar_Missing var_2D8
  loc_734483: LitVar_Missing var_2B8
  loc_734486: LitStr "Volumen"
  loc_734489: FStStrCopy var_4EC
  loc_73448C: FLdRfVar var_4EC
  loc_73448F: LitI4 7
  loc_734494: PopTmpLdAdStr var_4F4
  loc_734497: LitI2_Byte 7
  loc_734499: PopTmpLdAd2 var_4EE
  loc_73449C: ImpAdLdRf MemVar_74C7D0
  loc_73449F: NewIfNullPr clsMsg
  loc_7344A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7344A7: FLdZeroAd var_4F8
  loc_7344AA: CVarStr var_3B8
  loc_7344AD: ConcatVar var_3E8
  loc_7344B1: LitI4 3
  loc_7344B6: FLdRfVar var_3F8
  loc_7344B9: ImpAdCallFPR4  = Space()
  loc_7344BE: FLdRfVar var_3F8
  loc_7344C1: ConcatVar var_408
  loc_7344C5: FLdRfVar var_568
  loc_7344C8: LitVar_Missing var_564
  loc_7344CB: LitVar_Missing var_544
  loc_7344CE: LitVar_Missing var_4E8
  loc_7344D1: LitVar_Missing var_4D8
  loc_7344D4: LitVar_Missing var_4C8
  loc_7344D7: LitVar_Missing var_498
  loc_7344DA: LitVar_Missing var_478
  loc_7344DD: LitVar_Missing var_468
  loc_7344E0: LitVar_Missing var_458
  loc_7344E3: LitVar_Missing var_428
  loc_7344E6: LitStr "Volumen"
  loc_7344E9: FStStrCopy var_504
  loc_7344EC: FLdRfVar var_504
  loc_7344EF: LitI4 7
  loc_7344F4: PopTmpLdAdStr var_500
  loc_7344F7: LitI2_Byte 7
  loc_7344F9: PopTmpLdAd2 var_4FA
  loc_7344FC: ImpAdLdRf MemVar_74C7D0
  loc_7344FF: NewIfNullPr clsMsg
  loc_734502: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_734507: FLdZeroAd var_568
  loc_73450A: CVarStr var_578
  loc_73450D: ConcatVar var_588
  loc_734511: LitVarStr var_598, " Est."
  loc_734516: ConcatVar var_5A8
  loc_73451A: LitI4 2
  loc_73451F: FLdRfVar var_5B8
  loc_734522: ImpAdCallFPR4  = Space()
  loc_734527: FLdRfVar var_5B8
  loc_73452A: ConcatVar var_5C8
  loc_73452E: FLdRfVar var_718
  loc_734531: LitVar_Missing var_714
  loc_734534: LitVar_Missing var_6F4
  loc_734537: LitVar_Missing var_6D4
  loc_73453A: LitVar_Missing var_6B4
  loc_73453D: LitVar_Missing var_694
  loc_734540: LitVar_Missing var_674
  loc_734543: LitVar_Missing var_654
  loc_734546: LitVar_Missing var_634
  loc_734549: LitVar_Missing var_614
  loc_73454C: LitVar_Missing var_5F4
  loc_73454F: LitStr "Volumen"
  loc_734552: FStStrCopy var_5D4
  loc_734555: FLdRfVar var_5D4
  loc_734558: LitI4 7
  loc_73455D: PopTmpLdAdStr var_5D0
  loc_734560: LitI2_Byte 7
  loc_734562: PopTmpLdAd2 var_5CA
  loc_734565: ImpAdLdRf MemVar_74C7D0
  loc_734568: NewIfNullPr clsMsg
  loc_73456B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_734570: FLdZeroAd var_718
  loc_734573: CVarStr var_728
  loc_734576: ConcatVar var_738
  loc_73457A: LitI4 4
  loc_73457F: FLdRfVar var_748
  loc_734582: ImpAdCallFPR4  = Space()
  loc_734587: FLdRfVar var_748
  loc_73458A: ConcatVar var_758
  loc_73458E: FLdRfVar var_8A8
  loc_734591: LitVar_Missing var_8A4
  loc_734594: LitVar_Missing var_884
  loc_734597: LitVar_Missing var_864
  loc_73459A: LitVar_Missing var_844
  loc_73459D: LitVar_Missing var_824
  loc_7345A0: LitVar_Missing var_804
  loc_7345A3: LitVar_Missing var_7E4
  loc_7345A6: LitVar_Missing var_7C4
  loc_7345A9: LitVar_Missing var_7A4
  loc_7345AC: LitVar_Missing var_784
  loc_7345AF: LitStr "Recepcion"
  loc_7345B2: FStStrCopy var_764
  loc_7345B5: FLdRfVar var_764
  loc_7345B8: LitI4 8
  loc_7345BD: PopTmpLdAdStr var_760
  loc_7345C0: LitI2_Byte 7
  loc_7345C2: PopTmpLdAd2 var_75A
  loc_7345C5: ImpAdLdRf MemVar_74C7D0
  loc_7345C8: NewIfNullPr clsMsg
  loc_7345CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7345D0: FLdZeroAd var_8A8
  loc_7345D3: CVarStr var_8B8
  loc_7345D6: ConcatVar var_8C8
  loc_7345DA: LitI4 6
  loc_7345DF: FLdRfVar var_8D8
  loc_7345E2: ImpAdCallFPR4  = Space()
  loc_7345E7: FLdRfVar var_8D8
  loc_7345EA: ConcatVar var_8E8
  loc_7345EE: FLdRfVar var_A38
  loc_7345F1: LitVar_Missing var_A34
  loc_7345F4: LitVar_Missing var_A14
  loc_7345F7: LitVar_Missing var_9F4
  loc_7345FA: LitVar_Missing var_9D4
  loc_7345FD: LitVar_Missing var_9B4
  loc_734600: LitVar_Missing var_994
  loc_734603: LitVar_Missing var_974
  loc_734606: LitVar_Missing var_954
  loc_734609: LitVar_Missing var_934
  loc_73460C: LitVar_Missing var_914
  loc_73460F: LitStr "Agua"
  loc_734612: FStStrCopy var_8F4
  loc_734615: FLdRfVar var_8F4
  loc_734618: LitI4 9
  loc_73461D: PopTmpLdAdStr var_8F0
  loc_734620: LitI2_Byte 7
  loc_734622: PopTmpLdAd2 var_8EA
  loc_734625: ImpAdLdRf MemVar_74C7D0
  loc_734628: NewIfNullPr clsMsg
  loc_73462B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_734630: FLdZeroAd var_A38
  loc_734633: CVarStr var_A48
  loc_734636: ConcatVar var_A58
  loc_73463A: CStrVarVal var_A5C
  loc_73463E: ILdRf arg_10
  loc_734641: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_734646: FFreeStr var_164 = "": var_4EC = "": var_504 = "": var_5D4 = "": var_764 = "": var_8F4 = ""
  loc_734657: FFreeVar var_7E4 = "": var_804 = "": var_824 = "": var_844 = "": var_864 = "": var_884 = "": var_8A4 = "": var_758 = "": var_8B8 = "": var_8C8 = "": var_8D8 = "": var_914 = "": var_934 = "": var_954 = "": var_974 = "": var_994 = "": var_9B4 = "": var_9D4 = "": var_9F4 = "": var_A14 = "": var_A34 = "": var_8E8 = "": var_A48 = "": var_A58 = "": var_468 = "": var_478 = "": var_498 = "": var_4C8 = "": var_4D8 = "": var_4E8 = "": var_544 = "": var_564 = "": var_408 = "": var_578 = "": var_588 = "": var_5A8 = "": var_5B8 = "": var_5F4 = "": var_614 = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6D4 = "": var_6F4 = "": var_714 = "": var_5C8 = "": var_728 = "": var_738 = "": var_748 = "": var_784 = "": var_7A4 = "": var_7C4 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_110 = "": var_258 = "": var_268 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_2A8 = "": var_3B8 = "": var_3E8 = "": var_3F8 = "": var_428 = ""
  loc_734702: LitI4 2
  loc_734707: FLdRfVar var_110
  loc_73470A: ImpAdCallFPR4  = Space()
  loc_73470F: FLdRfVar var_110
  loc_734712: LitVarStr var_F0, "Tanque"
  loc_734717: ConcatVar var_120
  loc_73471B: LitI4 8
  loc_734720: FLdRfVar var_140
  loc_734723: ImpAdCallFPR4  = Space()
  loc_734728: FLdRfVar var_140
  loc_73472B: ConcatVar var_150
  loc_73472F: LitVarStr var_100, "Inicial"
  loc_734734: ConcatVar var_194
  loc_734738: LitI4 6
  loc_73473D: FLdRfVar var_1B4
  loc_734740: ImpAdCallFPR4  = Space()
  loc_734745: FLdRfVar var_1B4
  loc_734748: ConcatVar var_1D4
  loc_73474C: LitVarStr var_130, "Final"
  loc_734751: ConcatVar var_1F4
  loc_734755: LitI4 5
  loc_73475A: FLdRfVar var_214
  loc_73475D: ImpAdCallFPR4  = Space()
  loc_734762: FLdRfVar var_214
  loc_734765: ConcatVar var_234
  loc_734769: LitVarStr var_174, "Evaporado"
  loc_73476E: ConcatVar var_248
  loc_734772: LitI4 3
  loc_734777: FLdRfVar var_258
  loc_73477A: ImpAdCallFPR4  = Space()
  loc_73477F: FLdRfVar var_258
  loc_734782: ConcatVar var_268
  loc_734786: FLdRfVar var_238
  loc_734789: LitVar_Missing var_388
  loc_73478C: LitVar_Missing var_378
  loc_73478F: LitVar_Missing var_348
  loc_734792: LitVar_Missing var_328
  loc_734795: LitVar_Missing var_318
  loc_734798: LitVar_Missing var_308
  loc_73479B: LitVar_Missing var_2D8
  loc_73479E: LitVar_Missing var_2B8
  loc_7347A1: LitVar_Missing var_2A8
  loc_7347A4: LitVar_Missing var_298
  loc_7347A7: LitStr "Despachado"
  loc_7347AA: FStStrCopy var_164
  loc_7347AD: FLdRfVar var_164
  loc_7347B0: LitI4 &HC
  loc_7347B5: PopTmpLdAdStr var_160
  loc_7347B8: LitI2_Byte 7
  loc_7347BA: PopTmpLdAd2 var_15A
  loc_7347BD: ImpAdLdRf MemVar_74C7D0
  loc_7347C0: NewIfNullPr clsMsg
  loc_7347C3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7347C8: FLdZeroAd var_238
  loc_7347CB: CVarStr var_398
  loc_7347CE: ConcatVar var_3A8
  loc_7347D2: CStrVarVal var_4EC
  loc_7347D6: ILdRf arg_10
  loc_7347D9: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7347DE: FFreeStr var_164 = ""
  loc_7347E5: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_378 = "": var_388 = "": var_268 = "": var_398 = ""
  loc_73481A: LitStr vbNullString
  loc_73481D: ILdRf arg_10
  loc_734820: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_734825: LitI2_Byte 2
  loc_734827: FStI2 var_8A
  loc_73482A: FLdI2 var_8A
  loc_73482D: CI4UI1
  loc_73482E: ILdRf var_90
  loc_734831: FnLenStr
  loc_734832: LtI4
  loc_734833: BranchF loc_73501E
  loc_734836: LitVarI2 var_110, 2
  loc_73483B: FLdI2 var_8A
  loc_73483E: CI4UI1
  loc_73483F: ILdRf var_90
  loc_734842: ImpAdCallI2 Mid$(, , )
  loc_734847: FStStrNoPop var_164
  loc_73484A: ImpAdCallFPR4 push Val()
  loc_73484F: FStFPR8 var_A64
  loc_734852: LitI4 1
  loc_734857: LitI4 1
  loc_73485C: LitVarStr var_130, "@@"
  loc_734861: FStVarCopyObj var_140
  loc_734864: FLdRfVar var_140
  loc_734867: FLdFPR8 var_A64
  loc_73486A: CVarR8
  loc_73486E: ImpAdCallI2 Format$(, )
  loc_734873: FStStr var_94
  loc_734876: FFree1Str var_164
  loc_734879: FFreeVar var_110 = "": var_120 = ""
  loc_734882: FLdI2 var_8A
  loc_734885: LitI2_Byte 2
  loc_734887: AddI2
  loc_734888: FStI2 var_8A
  loc_73488B: LitVarI2 var_110, 9
  loc_734890: FLdI2 var_8A
  loc_734893: CI4UI1
  loc_734894: ILdRf var_90
  loc_734897: ImpAdCallI2 Mid$(, , )
  loc_73489C: FStStrNoPop var_164
  loc_73489F: ImpAdCallFPR4 push Val()
  loc_7348A4: FStFPR8 var_A64
  loc_7348A7: LitI4 1
  loc_7348AC: LitI4 1
  loc_7348B1: LitVarStr var_130, "######0.00"
  loc_7348B6: FStVarCopyObj var_140
  loc_7348B9: FLdRfVar var_140
  loc_7348BC: FLdFPR8 var_A64
  loc_7348BF: LitI2_Byte &H64
  loc_7348C1: CR8I2
  loc_7348C2: DivR8
  loc_7348C3: CVarR8
  loc_7348C7: ImpAdCallI2 Format$(, )
  loc_7348CC: FStStr var_238
  loc_7348CF: LitI4 1
  loc_7348D4: LitI4 1
  loc_7348D9: LitVarStr var_174, "@@@@@@@@@@"
  loc_7348DE: FStVarCopyObj var_194
  loc_7348E1: FLdRfVar var_194
  loc_7348E4: FLdZeroAd var_238
  loc_7348E7: CVarStr var_150
  loc_7348EA: ImpAdCallI2 Format$(, )
  loc_7348EF: FStStr var_98
  loc_7348F2: FFreeStr var_164 = ""
  loc_7348F9: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734906: FLdI2 var_8A
  loc_734909: LitI2_Byte 9
  loc_73490B: AddI2
  loc_73490C: FStI2 var_8A
  loc_73490F: LitVarI2 var_110, 9
  loc_734914: FLdI2 var_8A
  loc_734917: CI4UI1
  loc_734918: ILdRf var_90
  loc_73491B: ImpAdCallI2 Mid$(, , )
  loc_734920: FStStrNoPop var_164
  loc_734923: ImpAdCallFPR4 push Val()
  loc_734928: FStFPR8 var_A64
  loc_73492B: LitI4 1
  loc_734930: LitI4 1
  loc_734935: LitVarStr var_130, "######0.00"
  loc_73493A: FStVarCopyObj var_140
  loc_73493D: FLdRfVar var_140
  loc_734940: FLdFPR8 var_A64
  loc_734943: LitI2_Byte &H64
  loc_734945: CR8I2
  loc_734946: DivR8
  loc_734947: CVarR8
  loc_73494B: ImpAdCallI2 Format$(, )
  loc_734950: FStStr var_238
  loc_734953: LitI4 1
  loc_734958: LitI4 1
  loc_73495D: LitVarStr var_174, "@@@@@@@@@@"
  loc_734962: FStVarCopyObj var_194
  loc_734965: FLdRfVar var_194
  loc_734968: FLdZeroAd var_238
  loc_73496B: CVarStr var_150
  loc_73496E: ImpAdCallI2 Format$(, )
  loc_734973: FStStr var_9C
  loc_734976: FFreeStr var_164 = ""
  loc_73497D: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_73498A: FLdI2 var_8A
  loc_73498D: LitI2_Byte 9
  loc_73498F: AddI2
  loc_734990: FStI2 var_8A
  loc_734993: LitVarI2 var_110, 9
  loc_734998: FLdI2 var_8A
  loc_73499B: CI4UI1
  loc_73499C: ILdRf var_90
  loc_73499F: ImpAdCallI2 Mid$(, , )
  loc_7349A4: FStStrNoPop var_164
  loc_7349A7: ImpAdCallFPR4 push Val()
  loc_7349AC: FStFPR8 var_A64
  loc_7349AF: LitI4 1
  loc_7349B4: LitI4 1
  loc_7349B9: LitVarStr var_130, "######0.00"
  loc_7349BE: FStVarCopyObj var_140
  loc_7349C1: FLdRfVar var_140
  loc_7349C4: FLdFPR8 var_A64
  loc_7349C7: LitI2_Byte &H64
  loc_7349C9: CR8I2
  loc_7349CA: DivR8
  loc_7349CB: CVarR8
  loc_7349CF: ImpAdCallI2 Format$(, )
  loc_7349D4: FStStr var_238
  loc_7349D7: LitI4 1
  loc_7349DC: LitI4 1
  loc_7349E1: LitVarStr var_174, "@@@@@@@@@@"
  loc_7349E6: FStVarCopyObj var_194
  loc_7349E9: FLdRfVar var_194
  loc_7349EC: FLdZeroAd var_238
  loc_7349EF: CVarStr var_150
  loc_7349F2: ImpAdCallI2 Format$(, )
  loc_7349F7: FStStr var_BC
  loc_7349FA: FFreeStr var_164 = ""
  loc_734A01: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734A0E: FLdI2 var_8A
  loc_734A11: LitI2_Byte 9
  loc_734A13: AddI2
  loc_734A14: FStI2 var_8A
  loc_734A17: LitVarI2 var_110, 9
  loc_734A1C: FLdI2 var_8A
  loc_734A1F: CI4UI1
  loc_734A20: ILdRf var_90
  loc_734A23: ImpAdCallI2 Mid$(, , )
  loc_734A28: FStStrNoPop var_164
  loc_734A2B: ImpAdCallFPR4 push Val()
  loc_734A30: FStFPR8 var_A64
  loc_734A33: LitI4 1
  loc_734A38: LitI4 1
  loc_734A3D: LitVarStr var_130, "######0.00"
  loc_734A42: FStVarCopyObj var_140
  loc_734A45: FLdRfVar var_140
  loc_734A48: FLdFPR8 var_A64
  loc_734A4B: LitI2_Byte &H64
  loc_734A4D: CR8I2
  loc_734A4E: DivR8
  loc_734A4F: CVarR8
  loc_734A53: ImpAdCallI2 Format$(, )
  loc_734A58: FStStr var_238
  loc_734A5B: LitI4 1
  loc_734A60: LitI4 1
  loc_734A65: LitVarStr var_174, "@@@@@@@@@@"
  loc_734A6A: FStVarCopyObj var_194
  loc_734A6D: FLdRfVar var_194
  loc_734A70: FLdZeroAd var_238
  loc_734A73: CVarStr var_150
  loc_734A76: ImpAdCallI2 Format$(, )
  loc_734A7B: FStStr var_AC
  loc_734A7E: FFreeStr var_164 = ""
  loc_734A85: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734A92: FLdI2 var_8A
  loc_734A95: LitI2_Byte 9
  loc_734A97: AddI2
  loc_734A98: FStI2 var_8A
  loc_734A9B: LitVarI2 var_110, 9
  loc_734AA0: FLdI2 var_8A
  loc_734AA3: CI4UI1
  loc_734AA4: ILdRf var_90
  loc_734AA7: ImpAdCallI2 Mid$(, , )
  loc_734AAC: FStStrNoPop var_164
  loc_734AAF: ImpAdCallFPR4 push Val()
  loc_734AB4: FStFPR8 var_A64
  loc_734AB7: LitI4 1
  loc_734ABC: LitI4 1
  loc_734AC1: LitVarStr var_130, "######0.00"
  loc_734AC6: FStVarCopyObj var_140
  loc_734AC9: FLdRfVar var_140
  loc_734ACC: FLdFPR8 var_A64
  loc_734ACF: LitI2_Byte &H64
  loc_734AD1: CR8I2
  loc_734AD2: DivR8
  loc_734AD3: CVarR8
  loc_734AD7: ImpAdCallI2 Format$(, )
  loc_734ADC: FStStr var_238
  loc_734ADF: LitI4 1
  loc_734AE4: LitI4 1
  loc_734AE9: LitVarStr var_174, "@@@@@@@@@@"
  loc_734AEE: FStVarCopyObj var_194
  loc_734AF1: FLdRfVar var_194
  loc_734AF4: FLdZeroAd var_238
  loc_734AF7: CVarStr var_150
  loc_734AFA: ImpAdCallI2 Format$(, )
  loc_734AFF: FStStr var_B0
  loc_734B02: FFreeStr var_164 = ""
  loc_734B09: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734B16: FLdI2 var_8A
  loc_734B19: LitI2_Byte 9
  loc_734B1B: AddI2
  loc_734B1C: FStI2 var_8A
  loc_734B1F: LitVarI2 var_110, 9
  loc_734B24: FLdI2 var_8A
  loc_734B27: CI4UI1
  loc_734B28: ILdRf var_90
  loc_734B2B: ImpAdCallI2 Mid$(, , )
  loc_734B30: FStStrNoPop var_164
  loc_734B33: ImpAdCallFPR4 push Val()
  loc_734B38: FStFPR8 var_A64
  loc_734B3B: LitI4 1
  loc_734B40: LitI4 1
  loc_734B45: LitVarStr var_130, "######0.00"
  loc_734B4A: FStVarCopyObj var_140
  loc_734B4D: FLdRfVar var_140
  loc_734B50: FLdFPR8 var_A64
  loc_734B53: LitI2_Byte &H64
  loc_734B55: CR8I2
  loc_734B56: DivR8
  loc_734B57: CVarR8
  loc_734B5B: ImpAdCallI2 Format$(, )
  loc_734B60: FStStr var_238
  loc_734B63: LitI4 1
  loc_734B68: LitI4 1
  loc_734B6D: LitVarStr var_174, "@@@@@@@@@@"
  loc_734B72: FStVarCopyObj var_194
  loc_734B75: FLdRfVar var_194
  loc_734B78: FLdZeroAd var_238
  loc_734B7B: CVarStr var_150
  loc_734B7E: ImpAdCallI2 Format$(, )
  loc_734B83: FStStr var_B8
  loc_734B86: FFreeStr var_164 = ""
  loc_734B8D: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734B9A: FLdI2 var_8A
  loc_734B9D: LitI2_Byte 9
  loc_734B9F: AddI2
  loc_734BA0: FStI2 var_8A
  loc_734BA3: LitVarI2 var_110, 9
  loc_734BA8: FLdI2 var_8A
  loc_734BAB: CI4UI1
  loc_734BAC: ILdRf var_90
  loc_734BAF: ImpAdCallI2 Mid$(, , )
  loc_734BB4: FStStrNoPop var_164
  loc_734BB7: ImpAdCallFPR4 push Val()
  loc_734BBC: FStFPR8 var_A64
  loc_734BBF: LitI4 1
  loc_734BC4: LitI4 1
  loc_734BC9: LitVarStr var_130, "######0.00"
  loc_734BCE: FStVarCopyObj var_140
  loc_734BD1: FLdRfVar var_140
  loc_734BD4: FLdFPR8 var_A64
  loc_734BD7: LitI2_Byte &H64
  loc_734BD9: CR8I2
  loc_734BDA: DivR8
  loc_734BDB: CVarR8
  loc_734BDF: ImpAdCallI2 Format$(, )
  loc_734BE4: FStStr var_238
  loc_734BE7: LitI4 1
  loc_734BEC: LitI4 1
  loc_734BF1: LitVarStr var_174, "@@@@@@@@@@"
  loc_734BF6: FStVarCopyObj var_194
  loc_734BF9: FLdRfVar var_194
  loc_734BFC: FLdZeroAd var_238
  loc_734BFF: CVarStr var_150
  loc_734C02: ImpAdCallI2 Format$(, )
  loc_734C07: FStStr var_A8
  loc_734C0A: FFreeStr var_164 = ""
  loc_734C11: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734C1E: FLdI2 var_8A
  loc_734C21: LitI2_Byte 9
  loc_734C23: AddI2
  loc_734C24: FStI2 var_8A
  loc_734C27: LitVarI2 var_110, 9
  loc_734C2C: FLdI2 var_8A
  loc_734C2F: CI4UI1
  loc_734C30: ILdRf var_90
  loc_734C33: ImpAdCallI2 Mid$(, , )
  loc_734C38: FStStrNoPop var_164
  loc_734C3B: ImpAdCallFPR4 push Val()
  loc_734C40: FStFPR8 var_A64
  loc_734C43: LitI4 1
  loc_734C48: LitI4 1
  loc_734C4D: LitVarStr var_130, "######0.00"
  loc_734C52: FStVarCopyObj var_140
  loc_734C55: FLdRfVar var_140
  loc_734C58: FLdFPR8 var_A64
  loc_734C5B: LitI2_Byte &H64
  loc_734C5D: CR8I2
  loc_734C5E: DivR8
  loc_734C5F: CVarR8
  loc_734C63: ImpAdCallI2 Format$(, )
  loc_734C68: FStStr var_238
  loc_734C6B: LitI4 1
  loc_734C70: LitI4 1
  loc_734C75: LitVarStr var_174, "@@@@@@@@@@"
  loc_734C7A: FStVarCopyObj var_194
  loc_734C7D: FLdRfVar var_194
  loc_734C80: FLdZeroAd var_238
  loc_734C83: CVarStr var_150
  loc_734C86: ImpAdCallI2 Format$(, )
  loc_734C8B: FStStr var_A4
  loc_734C8E: FFreeStr var_164 = ""
  loc_734C95: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_734CA2: FLdI2 var_8A
  loc_734CA5: LitI2_Byte 9
  loc_734CA7: AddI2
  loc_734CA8: FStI2 var_8A
  loc_734CAB: ILdRf var_94
  loc_734CAE: ImpAdCallFPR4 push Val()
  loc_734CB3: FStFPR8 var_A64
  loc_734CB6: ILdRf var_94
  loc_734CB9: ImpAdCallFPR4 push Val()
  loc_734CBE: CI4R8
  loc_734CBF: ImpAdLdRf MemVar_74C1D8
  loc_734CC2: Ary1LdUI1
  loc_734CC4: CI4UI1
  loc_734CC5: LitI4 1
  loc_734CCA: FLdRfVar var_DC
  loc_734CCD: AryLdPr
  loc_734CD0: MemLdFPR4 global_0
  loc_734CD3: CVarR4
  loc_734CD7: FLdRfVar var_98
  loc_734CDA: FLdRfVar var_110
  loc_734CDD: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734CE2: FLdRfVar var_110
  loc_734CE5: AddVar var_120
  loc_734CE9: CR8Var
  loc_734CEB: FLdFPR8 var_A64
  loc_734CEE: CI4R8
  loc_734CEF: ImpAdLdRf MemVar_74C1D8
  loc_734CF2: Ary1LdUI1
  loc_734CF4: CI4UI1
  loc_734CF5: LitI4 1
  loc_734CFA: FLdRfVar var_DC
  loc_734CFD: AryLdPr
  loc_734D00: MemStFPR4 global_0
  loc_734D03: FFreeVar var_110 = ""
  loc_734D0A: ILdRf var_94
  loc_734D0D: ImpAdCallFPR4 push Val()
  loc_734D12: FStFPR8 var_A64
  loc_734D15: ILdRf var_94
  loc_734D18: ImpAdCallFPR4 push Val()
  loc_734D1D: CI4R8
  loc_734D1E: ImpAdLdRf MemVar_74C1D8
  loc_734D21: Ary1LdUI1
  loc_734D23: CI4UI1
  loc_734D24: LitI4 2
  loc_734D29: FLdRfVar var_DC
  loc_734D2C: AryLdPr
  loc_734D2F: MemLdFPR4 global_0
  loc_734D32: CVarR4
  loc_734D36: FLdRfVar var_9C
  loc_734D39: FLdRfVar var_110
  loc_734D3C: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734D41: FLdRfVar var_110
  loc_734D44: AddVar var_120
  loc_734D48: CR8Var
  loc_734D4A: FLdFPR8 var_A64
  loc_734D4D: CI4R8
  loc_734D4E: ImpAdLdRf MemVar_74C1D8
  loc_734D51: Ary1LdUI1
  loc_734D53: CI4UI1
  loc_734D54: LitI4 2
  loc_734D59: FLdRfVar var_DC
  loc_734D5C: AryLdPr
  loc_734D5F: MemStFPR4 global_0
  loc_734D62: FFreeVar var_110 = ""
  loc_734D69: ILdRf var_94
  loc_734D6C: ImpAdCallFPR4 push Val()
  loc_734D71: FStFPR8 var_A64
  loc_734D74: ILdRf var_94
  loc_734D77: ImpAdCallFPR4 push Val()
  loc_734D7C: CI4R8
  loc_734D7D: ImpAdLdRf MemVar_74C1D8
  loc_734D80: Ary1LdUI1
  loc_734D82: CI4UI1
  loc_734D83: LitI4 3
  loc_734D88: FLdRfVar var_DC
  loc_734D8B: AryLdPr
  loc_734D8E: MemLdFPR4 global_0
  loc_734D91: CVarR4
  loc_734D95: FLdRfVar var_A4
  loc_734D98: FLdRfVar var_110
  loc_734D9B: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734DA0: FLdRfVar var_110
  loc_734DA3: AddVar var_120
  loc_734DA7: CR8Var
  loc_734DA9: FLdFPR8 var_A64
  loc_734DAC: CI4R8
  loc_734DAD: ImpAdLdRf MemVar_74C1D8
  loc_734DB0: Ary1LdUI1
  loc_734DB2: CI4UI1
  loc_734DB3: LitI4 3
  loc_734DB8: FLdRfVar var_DC
  loc_734DBB: AryLdPr
  loc_734DBE: MemStFPR4 global_0
  loc_734DC1: FFreeVar var_110 = ""
  loc_734DC8: ILdRf var_94
  loc_734DCB: ImpAdCallFPR4 push Val()
  loc_734DD0: FStFPR8 var_A64
  loc_734DD3: ILdRf var_94
  loc_734DD6: ImpAdCallFPR4 push Val()
  loc_734DDB: CI4R8
  loc_734DDC: ImpAdLdRf MemVar_74C1D8
  loc_734DDF: Ary1LdUI1
  loc_734DE1: CI4UI1
  loc_734DE2: LitI4 4
  loc_734DE7: FLdRfVar var_DC
  loc_734DEA: AryLdPr
  loc_734DED: MemLdFPR4 global_0
  loc_734DF0: CVarR4
  loc_734DF4: FLdRfVar var_A8
  loc_734DF7: FLdRfVar var_110
  loc_734DFA: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734DFF: FLdRfVar var_110
  loc_734E02: AddVar var_120
  loc_734E06: CR8Var
  loc_734E08: FLdFPR8 var_A64
  loc_734E0B: CI4R8
  loc_734E0C: ImpAdLdRf MemVar_74C1D8
  loc_734E0F: Ary1LdUI1
  loc_734E11: CI4UI1
  loc_734E12: LitI4 4
  loc_734E17: FLdRfVar var_DC
  loc_734E1A: AryLdPr
  loc_734E1D: MemStFPR4 global_0
  loc_734E20: FFreeVar var_110 = ""
  loc_734E27: ILdRf var_94
  loc_734E2A: ImpAdCallFPR4 push Val()
  loc_734E2F: FStFPR8 var_A64
  loc_734E32: ILdRf var_94
  loc_734E35: ImpAdCallFPR4 push Val()
  loc_734E3A: CI4R8
  loc_734E3B: ImpAdLdRf MemVar_74C1D8
  loc_734E3E: Ary1LdUI1
  loc_734E40: CI4UI1
  loc_734E41: LitI4 5
  loc_734E46: FLdRfVar var_DC
  loc_734E49: AryLdPr
  loc_734E4C: MemLdFPR4 global_0
  loc_734E4F: CVarR4
  loc_734E53: FLdRfVar var_BC
  loc_734E56: FLdRfVar var_110
  loc_734E59: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734E5E: FLdRfVar var_110
  loc_734E61: AddVar var_120
  loc_734E65: CR8Var
  loc_734E67: FLdFPR8 var_A64
  loc_734E6A: CI4R8
  loc_734E6B: ImpAdLdRf MemVar_74C1D8
  loc_734E6E: Ary1LdUI1
  loc_734E70: CI4UI1
  loc_734E71: LitI4 5
  loc_734E76: FLdRfVar var_DC
  loc_734E79: AryLdPr
  loc_734E7C: MemStFPR4 global_0
  loc_734E7F: FFreeVar var_110 = ""
  loc_734E86: ILdRf var_94
  loc_734E89: ImpAdCallFPR4 push Val()
  loc_734E8E: FStFPR8 var_A64
  loc_734E91: ILdRf var_94
  loc_734E94: ImpAdCallFPR4 push Val()
  loc_734E99: CI4R8
  loc_734E9A: ImpAdLdRf MemVar_74C1D8
  loc_734E9D: Ary1LdUI1
  loc_734E9F: CI4UI1
  loc_734EA0: LitI4 6
  loc_734EA5: FLdRfVar var_DC
  loc_734EA8: AryLdPr
  loc_734EAB: MemLdFPR4 global_0
  loc_734EAE: CVarR4
  loc_734EB2: FLdRfVar var_B8
  loc_734EB5: FLdRfVar var_110
  loc_734EB8: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_734EBD: FLdRfVar var_110
  loc_734EC0: AddVar var_120
  loc_734EC4: CR8Var
  loc_734EC6: FLdFPR8 var_A64
  loc_734EC9: CI4R8
  loc_734ECA: ImpAdLdRf MemVar_74C1D8
  loc_734ECD: Ary1LdUI1
  loc_734ECF: CI4UI1
  loc_734ED0: LitI4 6
  loc_734ED5: FLdRfVar var_DC
  loc_734ED8: AryLdPr
  loc_734EDB: MemStFPR4 global_0
  loc_734EDE: FFreeVar var_110 = ""
  loc_734EE5: LitI4 2
  loc_734EEA: FLdRfVar var_110
  loc_734EED: ImpAdCallFPR4  = Space()
  loc_734EF2: FLdRfVar var_110
  loc_734EF5: ILdRf var_94
  loc_734EF8: CVarStr var_F0
  loc_734EFB: ConcatVar var_120
  loc_734EFF: LitI4 8
  loc_734F04: FLdRfVar var_140
  loc_734F07: ImpAdCallFPR4  = Space()
  loc_734F0C: FLdRfVar var_140
  loc_734F0F: ConcatVar var_150
  loc_734F13: ILdRf var_98
  loc_734F16: CVarStr var_100
  loc_734F19: ConcatVar var_194
  loc_734F1D: LitI4 2
  loc_734F22: FLdRfVar var_1B4
  loc_734F25: ImpAdCallFPR4  = Space()
  loc_734F2A: FLdRfVar var_1B4
  loc_734F2D: ConcatVar var_1D4
  loc_734F31: ILdRf var_9C
  loc_734F34: CVarStr var_130
  loc_734F37: ConcatVar var_1F4
  loc_734F3B: LitI4 2
  loc_734F40: FLdRfVar var_214
  loc_734F43: ImpAdCallFPR4  = Space()
  loc_734F48: FLdRfVar var_214
  loc_734F4B: ConcatVar var_234
  loc_734F4F: ILdRf var_A4
  loc_734F52: CVarStr var_174
  loc_734F55: ConcatVar var_248
  loc_734F59: LitI4 2
  loc_734F5E: FLdRfVar var_258
  loc_734F61: ImpAdCallFPR4  = Space()
  loc_734F66: FLdRfVar var_258
  loc_734F69: ConcatVar var_268
  loc_734F6D: ILdRf var_A8
  loc_734F70: CVarStr var_184
  loc_734F73: ConcatVar var_298
  loc_734F77: LitI4 2
  loc_734F7C: FLdRfVar var_2A8
  loc_734F7F: ImpAdCallFPR4  = Space()
  loc_734F84: FLdRfVar var_2A8
  loc_734F87: ConcatVar var_2B8
  loc_734F8B: ILdRf var_BC
  loc_734F8E: CVarStr var_1A4
  loc_734F91: ConcatVar var_2D8
  loc_734F95: LitI4 2
  loc_734F9A: FLdRfVar var_308
  loc_734F9D: ImpAdCallFPR4  = Space()
  loc_734FA2: FLdRfVar var_308
  loc_734FA5: ConcatVar var_318
  loc_734FA9: ILdRf var_B8
  loc_734FAC: CVarStr var_1C4
  loc_734FAF: ConcatVar var_328
  loc_734FB3: CStrVarVal var_164
  loc_734FB7: ILdRf arg_10
  loc_734FBA: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_734FBF: FFree1Str var_164
  loc_734FC2: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = ""
  loc_734FED: LitVarI2 var_110, 1
  loc_734FF2: FLdI2 var_8A
  loc_734FF5: CI4UI1
  loc_734FF6: ILdRf var_90
  loc_734FF9: ImpAdCallI2 Mid$(, , )
  loc_734FFE: FStStrNoPop var_164
  loc_735001: LitStr "F"
  loc_735004: EqStr
  loc_735006: FFree1Str var_164
  loc_735009: FFree1Var var_110 = ""
  loc_73500C: BranchF loc_735012
  loc_73500F: Branch loc_73501E
  loc_735012: FLdI2 var_8A
  loc_735015: LitI2_Byte 1
  loc_735017: AddI2
  loc_735018: FStI2 var_8A
  loc_73501B: Branch loc_73482A
  loc_73501E: LitStr vbNullString
  loc_735021: ILdRf arg_10
  loc_735024: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735029: LitStr vbNullString
  loc_73502C: ILdRf arg_10
  loc_73502F: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735034: FLdRfVar var_238
  loc_735037: LitVar_Missing var_234
  loc_73503A: LitVar_Missing var_214
  loc_73503D: LitVar_Missing var_1F4
  loc_735040: LitVar_Missing var_1D4
  loc_735043: LitVar_Missing var_1B4
  loc_735046: LitVar_Missing var_194
  loc_735049: LitVar_Missing var_150
  loc_73504C: LitVar_Missing var_140
  loc_73504F: LitVar_Missing var_120
  loc_735052: LitVar_Missing var_110
  loc_735055: LitStr "Totales por Producto"
  loc_735058: FStStrCopy var_164
  loc_73505B: FLdRfVar var_164
  loc_73505E: LitI4 &HB
  loc_735063: PopTmpLdAdStr var_160
  loc_735066: LitI2_Byte 7
  loc_735068: PopTmpLdAd2 var_15A
  loc_73506B: ImpAdLdRf MemVar_74C7D0
  loc_73506E: NewIfNullPr clsMsg
  loc_735071: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_735076: LitI2_Byte &H50
  loc_735078: ILdRf var_238
  loc_73507B: FLdRfVar var_248
  loc_73507E: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_735083: FLdRfVar var_248
  loc_735086: CStrVarVal var_4EC
  loc_73508A: ILdRf arg_10
  loc_73508D: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735092: FFreeStr var_164 = "": var_238 = ""
  loc_73509B: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_7350B4: LitStr vbNullString
  loc_7350B7: ILdRf arg_10
  loc_7350BA: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7350BF: LitI4 &H10
  loc_7350C4: FLdRfVar var_110
  loc_7350C7: ImpAdCallFPR4  = Space()
  loc_7350CC: FLdRfVar var_110
  loc_7350CF: FLdRfVar var_238
  loc_7350D2: LitVar_Missing var_248
  loc_7350D5: LitVar_Missing var_234
  loc_7350D8: LitVar_Missing var_214
  loc_7350DB: LitVar_Missing var_1F4
  loc_7350DE: LitVar_Missing var_1D4
  loc_7350E1: LitVar_Missing var_1B4
  loc_7350E4: LitVar_Missing var_194
  loc_7350E7: LitVar_Missing var_150
  loc_7350EA: LitVar_Missing var_140
  loc_7350ED: LitVar_Missing var_120
  loc_7350F0: LitStr "Volumen"
  loc_7350F3: FStStrCopy var_164
  loc_7350F6: FLdRfVar var_164
  loc_7350F9: LitI4 7
  loc_7350FE: PopTmpLdAdStr var_160
  loc_735101: LitI2_Byte 7
  loc_735103: PopTmpLdAd2 var_15A
  loc_735106: ImpAdLdRf MemVar_74C7D0
  loc_735109: NewIfNullPr clsMsg
  loc_73510C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_735111: FLdZeroAd var_238
  loc_735114: CVarStr var_258
  loc_735117: ConcatVar var_268
  loc_73511B: LitI4 5
  loc_735120: FLdRfVar var_298
  loc_735123: ImpAdCallFPR4  = Space()
  loc_735128: FLdRfVar var_298
  loc_73512B: ConcatVar var_2A8
  loc_73512F: FLdRfVar var_4F8
  loc_735132: LitVar_Missing var_3A8
  loc_735135: LitVar_Missing var_398
  loc_735138: LitVar_Missing var_388
  loc_73513B: LitVar_Missing var_378
  loc_73513E: LitVar_Missing var_348
  loc_735141: LitVar_Missing var_328
  loc_735144: LitVar_Missing var_318
  loc_735147: LitVar_Missing var_308
  loc_73514A: LitVar_Missing var_2D8
  loc_73514D: LitVar_Missing var_2B8
  loc_735150: LitStr "Volumen"
  loc_735153: FStStrCopy var_4EC
  loc_735156: FLdRfVar var_4EC
  loc_735159: LitI4 7
  loc_73515E: PopTmpLdAdStr var_4F4
  loc_735161: LitI2_Byte 7
  loc_735163: PopTmpLdAd2 var_4EE
  loc_735166: ImpAdLdRf MemVar_74C7D0
  loc_735169: NewIfNullPr clsMsg
  loc_73516C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_735171: FLdZeroAd var_4F8
  loc_735174: CVarStr var_3B8
  loc_735177: ConcatVar var_3E8
  loc_73517B: LitI4 3
  loc_735180: FLdRfVar var_3F8
  loc_735183: ImpAdCallFPR4  = Space()
  loc_735188: FLdRfVar var_3F8
  loc_73518B: ConcatVar var_408
  loc_73518F: FLdRfVar var_568
  loc_735192: LitVar_Missing var_564
  loc_735195: LitVar_Missing var_544
  loc_735198: LitVar_Missing var_4E8
  loc_73519B: LitVar_Missing var_4D8
  loc_73519E: LitVar_Missing var_4C8
  loc_7351A1: LitVar_Missing var_498
  loc_7351A4: LitVar_Missing var_478
  loc_7351A7: LitVar_Missing var_468
  loc_7351AA: LitVar_Missing var_458
  loc_7351AD: LitVar_Missing var_428
  loc_7351B0: LitStr "Volumen"
  loc_7351B3: FStStrCopy var_504
  loc_7351B6: FLdRfVar var_504
  loc_7351B9: LitI4 7
  loc_7351BE: PopTmpLdAdStr var_500
  loc_7351C1: LitI2_Byte 7
  loc_7351C3: PopTmpLdAd2 var_4FA
  loc_7351C6: ImpAdLdRf MemVar_74C7D0
  loc_7351C9: NewIfNullPr clsMsg
  loc_7351CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7351D1: FLdZeroAd var_568
  loc_7351D4: CVarStr var_578
  loc_7351D7: ConcatVar var_588
  loc_7351DB: LitVarStr var_598, " Est."
  loc_7351E0: ConcatVar var_5A8
  loc_7351E4: LitI4 2
  loc_7351E9: FLdRfVar var_5B8
  loc_7351EC: ImpAdCallFPR4  = Space()
  loc_7351F1: FLdRfVar var_5B8
  loc_7351F4: ConcatVar var_5C8
  loc_7351F8: FLdRfVar var_718
  loc_7351FB: LitVar_Missing var_714
  loc_7351FE: LitVar_Missing var_6F4
  loc_735201: LitVar_Missing var_6D4
  loc_735204: LitVar_Missing var_6B4
  loc_735207: LitVar_Missing var_694
  loc_73520A: LitVar_Missing var_674
  loc_73520D: LitVar_Missing var_654
  loc_735210: LitVar_Missing var_634
  loc_735213: LitVar_Missing var_614
  loc_735216: LitVar_Missing var_5F4
  loc_735219: LitStr "Volumen"
  loc_73521C: FStStrCopy var_5D4
  loc_73521F: FLdRfVar var_5D4
  loc_735222: LitI4 7
  loc_735227: PopTmpLdAdStr var_5D0
  loc_73522A: LitI2_Byte 7
  loc_73522C: PopTmpLdAd2 var_5CA
  loc_73522F: ImpAdLdRf MemVar_74C7D0
  loc_735232: NewIfNullPr clsMsg
  loc_735235: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73523A: FLdZeroAd var_718
  loc_73523D: CVarStr var_728
  loc_735240: ConcatVar var_738
  loc_735244: LitI4 4
  loc_735249: FLdRfVar var_748
  loc_73524C: ImpAdCallFPR4  = Space()
  loc_735251: FLdRfVar var_748
  loc_735254: ConcatVar var_758
  loc_735258: FLdRfVar var_8A8
  loc_73525B: LitVar_Missing var_8A4
  loc_73525E: LitVar_Missing var_884
  loc_735261: LitVar_Missing var_864
  loc_735264: LitVar_Missing var_844
  loc_735267: LitVar_Missing var_824
  loc_73526A: LitVar_Missing var_804
  loc_73526D: LitVar_Missing var_7E4
  loc_735270: LitVar_Missing var_7C4
  loc_735273: LitVar_Missing var_7A4
  loc_735276: LitVar_Missing var_784
  loc_735279: LitStr "Recepcion"
  loc_73527C: FStStrCopy var_764
  loc_73527F: FLdRfVar var_764
  loc_735282: LitI4 8
  loc_735287: PopTmpLdAdStr var_760
  loc_73528A: LitI2_Byte 7
  loc_73528C: PopTmpLdAd2 var_75A
  loc_73528F: ImpAdLdRf MemVar_74C7D0
  loc_735292: NewIfNullPr clsMsg
  loc_735295: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73529A: FLdZeroAd var_8A8
  loc_73529D: CVarStr var_8B8
  loc_7352A0: ConcatVar var_8C8
  loc_7352A4: LitI4 6
  loc_7352A9: FLdRfVar var_8D8
  loc_7352AC: ImpAdCallFPR4  = Space()
  loc_7352B1: FLdRfVar var_8D8
  loc_7352B4: ConcatVar var_8E8
  loc_7352B8: FLdRfVar var_A38
  loc_7352BB: LitVar_Missing var_A34
  loc_7352BE: LitVar_Missing var_A14
  loc_7352C1: LitVar_Missing var_9F4
  loc_7352C4: LitVar_Missing var_9D4
  loc_7352C7: LitVar_Missing var_9B4
  loc_7352CA: LitVar_Missing var_994
  loc_7352CD: LitVar_Missing var_974
  loc_7352D0: LitVar_Missing var_954
  loc_7352D3: LitVar_Missing var_934
  loc_7352D6: LitVar_Missing var_914
  loc_7352D9: LitStr "Agua"
  loc_7352DC: FStStrCopy var_8F4
  loc_7352DF: FLdRfVar var_8F4
  loc_7352E2: LitI4 9
  loc_7352E7: PopTmpLdAdStr var_8F0
  loc_7352EA: LitI2_Byte 7
  loc_7352EC: PopTmpLdAd2 var_8EA
  loc_7352EF: ImpAdLdRf MemVar_74C7D0
  loc_7352F2: NewIfNullPr clsMsg
  loc_7352F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7352FA: FLdZeroAd var_A38
  loc_7352FD: CVarStr var_A48
  loc_735300: ConcatVar var_A58
  loc_735304: CStrVarVal var_A5C
  loc_735308: ILdRf arg_10
  loc_73530B: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735310: FFreeStr var_164 = "": var_4EC = "": var_504 = "": var_5D4 = "": var_764 = "": var_8F4 = ""
  loc_735321: FFreeVar var_7E4 = "": var_804 = "": var_824 = "": var_844 = "": var_864 = "": var_884 = "": var_8A4 = "": var_758 = "": var_8B8 = "": var_8C8 = "": var_8D8 = "": var_914 = "": var_934 = "": var_954 = "": var_974 = "": var_994 = "": var_9B4 = "": var_9D4 = "": var_9F4 = "": var_A14 = "": var_A34 = "": var_8E8 = "": var_A48 = "": var_A58 = "": var_468 = "": var_478 = "": var_498 = "": var_4C8 = "": var_4D8 = "": var_4E8 = "": var_544 = "": var_564 = "": var_408 = "": var_578 = "": var_588 = "": var_5A8 = "": var_5B8 = "": var_5F4 = "": var_614 = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6D4 = "": var_6F4 = "": var_714 = "": var_5C8 = "": var_728 = "": var_738 = "": var_748 = "": var_784 = "": var_7A4 = "": var_7C4 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_110 = "": var_258 = "": var_268 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_2A8 = "": var_3B8 = "": var_3E8 = "": var_3F8 = "": var_428 = ""
  loc_7353CC: LitI4 2
  loc_7353D1: FLdRfVar var_110
  loc_7353D4: ImpAdCallFPR4  = Space()
  loc_7353D9: FLdRfVar var_110
  loc_7353DC: FLdRfVar var_238
  loc_7353DF: LitVar_Missing var_248
  loc_7353E2: LitVar_Missing var_234
  loc_7353E5: LitVar_Missing var_214
  loc_7353E8: LitVar_Missing var_1F4
  loc_7353EB: LitVar_Missing var_1D4
  loc_7353EE: LitVar_Missing var_1B4
  loc_7353F1: LitVar_Missing var_194
  loc_7353F4: LitVar_Missing var_150
  loc_7353F7: LitVar_Missing var_140
  loc_7353FA: LitVar_Missing var_120
  loc_7353FD: LitStr "Producto"
  loc_735400: FStStrCopy var_164
  loc_735403: FLdRfVar var_164
  loc_735406: LitI4 &HA
  loc_73540B: PopTmpLdAdStr var_160
  loc_73540E: LitI2_Byte 7
  loc_735410: PopTmpLdAd2 var_15A
  loc_735413: ImpAdLdRf MemVar_74C7D0
  loc_735416: NewIfNullPr clsMsg
  loc_735419: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73541E: FLdZeroAd var_238
  loc_735421: CVarStr var_258
  loc_735424: ConcatVar var_268
  loc_735428: LitI4 6
  loc_73542D: FLdRfVar var_298
  loc_735430: ImpAdCallFPR4  = Space()
  loc_735435: FLdRfVar var_298
  loc_735438: ConcatVar var_2A8
  loc_73543C: LitVarStr var_278, "Inicial"
  loc_735441: ConcatVar var_2B8
  loc_735445: LitI4 6
  loc_73544A: FLdRfVar var_2D8
  loc_73544D: ImpAdCallFPR4  = Space()
  loc_735452: FLdRfVar var_2D8
  loc_735455: ConcatVar var_308
  loc_735459: LitVarStr var_288, "Final"
  loc_73545E: ConcatVar var_318
  loc_735462: LitI4 5
  loc_735467: FLdRfVar var_328
  loc_73546A: ImpAdCallFPR4  = Space()
  loc_73546F: FLdRfVar var_328
  loc_735472: ConcatVar var_348
  loc_735476: LitVarStr var_2C8, "Evaporado"
  loc_73547B: ConcatVar var_378
  loc_73547F: LitI4 3
  loc_735484: FLdRfVar var_388
  loc_735487: ImpAdCallFPR4  = Space()
  loc_73548C: FLdRfVar var_388
  loc_73548F: ConcatVar var_398
  loc_735493: FLdRfVar var_4F8
  loc_735496: LitVar_Missing var_498
  loc_735499: LitVar_Missing var_478
  loc_73549C: LitVar_Missing var_468
  loc_73549F: LitVar_Missing var_458
  loc_7354A2: LitVar_Missing var_428
  loc_7354A5: LitVar_Missing var_408
  loc_7354A8: LitVar_Missing var_3F8
  loc_7354AB: LitVar_Missing var_3E8
  loc_7354AE: LitVar_Missing var_3B8
  loc_7354B1: LitVar_Missing var_3A8
  loc_7354B4: LitStr "Despachado"
  loc_7354B7: FStStrCopy var_4EC
  loc_7354BA: FLdRfVar var_4EC
  loc_7354BD: LitI4 &HC
  loc_7354C2: PopTmpLdAdStr var_4F4
  loc_7354C5: LitI2_Byte 7
  loc_7354C7: PopTmpLdAd2 var_4EE
  loc_7354CA: ImpAdLdRf MemVar_74C7D0
  loc_7354CD: NewIfNullPr clsMsg
  loc_7354D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7354D5: FLdZeroAd var_4F8
  loc_7354D8: CVarStr var_4C8
  loc_7354DB: ConcatVar var_4D8
  loc_7354DF: CStrVarVal var_504
  loc_7354E3: ILdRf arg_10
  loc_7354E6: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7354EB: FFreeStr var_164 = "": var_4EC = ""
  loc_7354F4: FFreeVar var_468 = "": var_478 = "": var_498 = "": var_398 = "": var_4C8 = "": var_4D8 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_110 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_378 = "": var_388 = "": var_3A8 = "": var_3B8 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_428 = ""
  loc_73553F: LitStr vbNullString
  loc_735542: ILdRf arg_10
  loc_735545: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_73554A: LitI2_Byte 1
  loc_73554C: FLdRfVar var_8A
  loc_73554F: FLdRfVar var_15A
  loc_735552: ImpAdLdRf MemVar_74A220
  loc_735555: NewIfNullPr clsProducts
  loc_735558: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_73555D: FLdI2 var_15A
  loc_735560: ForI2 var_A68
  loc_735566: FLdRfVar var_15A
  loc_735569: FLdI2 var_8A
  loc_73556C: ImpAdLdRf MemVar_74A220
  loc_73556F: NewIfNullPr clsProducts
  loc_735572:  = clsProducts.hWnd
  loc_735577: FLdI2 var_15A
  loc_73557A: NotI4
  loc_73557B: BranchF loc_7358D4
  loc_73557E: FLdRfVar var_164
  loc_735581: FLdI2 var_8A
  loc_735584: ImpAdLdRf MemVar_74A220
  loc_735587: NewIfNullPr clsProducts
  loc_73558F: LitVarI2 var_110, 12
  loc_735594: LitI4 1
  loc_735599: ILdRf var_164
  loc_73559C: ImpAdCallI2 Mid$(, , )
  loc_7355A1: CVarStr var_120
  loc_7355A4: FLdRfVar var_140
  loc_7355A7: ImpAdCallFPR4  = Trim()
  loc_7355AC: LitI4 1
  loc_7355B1: LitI4 1
  loc_7355B6: LitVarStr var_174, "######0.00"
  loc_7355BB: FStVarCopyObj var_194
  loc_7355BE: FLdRfVar var_194
  loc_7355C1: FLdI2 var_8A
  loc_7355C4: CI4UI1
  loc_7355C5: LitI4 1
  loc_7355CA: FLdRfVar var_DC
  loc_7355CD: AryLdRf
  loc_7355D0: CVarRef
  loc_7355D5: ImpAdCallI2 Format$(, )
  loc_7355DA: FStStr var_504
  loc_7355DD: LitI4 1
  loc_7355E2: LitI4 1
  loc_7355E7: LitVarStr var_1C4, "######0.00"
  loc_7355EC: FStVarCopyObj var_248
  loc_7355EF: FLdRfVar var_248
  loc_7355F2: FLdI2 var_8A
  loc_7355F5: CI4UI1
  loc_7355F6: LitI4 2
  loc_7355FB: FLdRfVar var_DC
  loc_7355FE: AryLdRf
  loc_735601: CVarRef
  loc_735606: ImpAdCallI2 Format$(, )
  loc_73560B: FStStr var_568
  loc_73560E: LitI4 1
  loc_735613: LitI4 1
  loc_735618: LitVarStr var_224, "######0.00"
  loc_73561D: FStVarCopyObj var_308
  loc_735620: FLdRfVar var_308
  loc_735623: FLdI2 var_8A
  loc_735626: CI4UI1
  loc_735627: LitI4 3
  loc_73562C: FLdRfVar var_DC
  loc_73562F: AryLdRf
  loc_735632: CVarRef
  loc_735637: ImpAdCallI2 Format$(, )
  loc_73563C: FStStr var_5D4
  loc_73563F: LitI4 1
  loc_735644: LitI4 1
  loc_735649: LitVarStr var_2C8, "######0.00"
  loc_73564E: FStVarCopyObj var_3A8
  loc_735651: FLdRfVar var_3A8
  loc_735654: FLdI2 var_8A
  loc_735657: CI4UI1
  loc_735658: LitI4 4
  loc_73565D: FLdRfVar var_DC
  loc_735660: AryLdRf
  loc_735663: CVarRef
  loc_735668: ImpAdCallI2 Format$(, )
  loc_73566D: FStStr var_718
  loc_735670: LitI4 1
  loc_735675: LitI4 1
  loc_73567A: LitVarStr var_338, "######0.00"
  loc_73567F: FStVarCopyObj var_468
  loc_735682: FLdRfVar var_468
  loc_735685: FLdI2 var_8A
  loc_735688: CI4UI1
  loc_735689: LitI4 5
  loc_73568E: FLdRfVar var_DC
  loc_735691: AryLdRf
  loc_735694: CVarRef
  loc_735699: ImpAdCallI2 Format$(, )
  loc_73569E: FStStr var_764
  loc_7356A1: LitI4 1
  loc_7356A6: LitI4 1
  loc_7356AB: LitVarStr var_3C8, "######0.00"
  loc_7356B0: FStVarCopyObj var_564
  loc_7356B3: FLdRfVar var_564
  loc_7356B6: FLdI2 var_8A
  loc_7356B9: CI4UI1
  loc_7356BA: LitI4 6
  loc_7356BF: FLdRfVar var_DC
  loc_7356C2: AryLdRf
  loc_7356C5: CVarRef
  loc_7356CA: ImpAdCallI2 Format$(, )
  loc_7356CF: FStStr var_8A8
  loc_7356D2: LitI4 1
  loc_7356D7: LitI4 1
  loc_7356DC: LitVarStr var_100, "!@@@@@@@@@@@@"
  loc_7356E1: FStVarCopyObj var_150
  loc_7356E4: FLdRfVar var_150
  loc_7356E7: FLdRfVar var_140
  loc_7356EA: ImpAdCallI2 Format$(, )
  loc_7356EF: FStStrNoPop var_238
  loc_7356F2: LitI4 1
  loc_7356F7: LitI4 1
  loc_7356FC: LitVarStr var_184, "@@@@@@@@@@"
  loc_735701: FStVarCopyObj var_1D4
  loc_735704: FLdRfVar var_1D4
  loc_735707: FLdZeroAd var_504
  loc_73570A: CVarStr var_1B4
  loc_73570D: ImpAdCallI2 Format$(, )
  loc_735712: FStStrNoPop var_4EC
  loc_735715: ConcatStr
  loc_735716: CVarStr var_214
  loc_735719: LitI4 2
  loc_73571E: FLdRfVar var_1F4
  loc_735721: ImpAdCallFPR4  = Space()
  loc_735726: FLdRfVar var_1F4
  loc_735729: ConcatVar var_234
  loc_73572D: LitI4 1
  loc_735732: LitI4 1
  loc_735737: LitVarStr var_1E4, "@@@@@@@@@@"
  loc_73573C: FStVarCopyObj var_268
  loc_73573F: FLdRfVar var_268
  loc_735742: FLdZeroAd var_568
  loc_735745: CVarStr var_258
  loc_735748: ImpAdCallI2 Format$(, )
  loc_73574D: CVarStr var_298
  loc_735750: ConcatVar var_2A8
  loc_735754: LitI4 2
  loc_735759: FLdRfVar var_2B8
  loc_73575C: ImpAdCallFPR4  = Space()
  loc_735761: FLdRfVar var_2B8
  loc_735764: ConcatVar var_2D8
  loc_735768: LitI4 1
  loc_73576D: LitI4 1
  loc_735772: LitVarStr var_278, "@@@@@@@@@@"
  loc_735777: FStVarCopyObj var_328
  loc_73577A: FLdRfVar var_328
  loc_73577D: FLdZeroAd var_5D4
  loc_735780: CVarStr var_318
  loc_735783: ImpAdCallI2 Format$(, )
  loc_735788: CVarStr var_348
  loc_73578B: ConcatVar var_378
  loc_73578F: LitI4 2
  loc_735794: FLdRfVar var_388
  loc_735797: ImpAdCallFPR4  = Space()
  loc_73579C: FLdRfVar var_388
  loc_73579F: ConcatVar var_398
  loc_7357A3: LitI4 1
  loc_7357A8: LitI4 1
  loc_7357AD: LitVarStr var_2E8, "@@@@@@@@@@"
  loc_7357B2: FStVarCopyObj var_3E8
  loc_7357B5: FLdRfVar var_3E8
  loc_7357B8: FLdZeroAd var_718
  loc_7357BB: CVarStr var_3B8
  loc_7357BE: ImpAdCallI2 Format$(, )
  loc_7357C3: CVarStr var_3F8
  loc_7357C6: ConcatVar var_408
  loc_7357CA: LitI4 2
  loc_7357CF: FLdRfVar var_428
  loc_7357D2: ImpAdCallFPR4  = Space()
  loc_7357D7: FLdRfVar var_428
  loc_7357DA: ConcatVar var_458
  loc_7357DE: LitI4 1
  loc_7357E3: LitI4 1
  loc_7357E8: LitVarStr var_358, "@@@@@@@@@@"
  loc_7357ED: FStVarCopyObj var_498
  loc_7357F0: FLdRfVar var_498
  loc_7357F3: FLdZeroAd var_764
  loc_7357F6: CVarStr var_478
  loc_7357F9: ImpAdCallI2 Format$(, )
  loc_7357FE: CVarStr var_4C8
  loc_735801: ConcatVar var_4D8
  loc_735805: LitI4 2
  loc_73580A: FLdRfVar var_4E8
  loc_73580D: ImpAdCallFPR4  = Space()
  loc_735812: FLdRfVar var_4E8
  loc_735815: ConcatVar var_544
  loc_735819: LitI4 1
  loc_73581E: LitI4 1
  loc_735823: LitVarStr var_3D8, "@@@@@@@@@@"
  loc_735828: FStVarCopyObj var_588
  loc_73582B: FLdRfVar var_588
  loc_73582E: FLdZeroAd var_8A8
  loc_735831: CVarStr var_578
  loc_735834: ImpAdCallI2 Format$(, )
  loc_735839: CVarStr var_5A8
  loc_73583C: ConcatVar var_5B8
  loc_735840: LitI4 2
  loc_735845: FLdRfVar var_5C8
  loc_735848: ImpAdCallFPR4  = Space()
  loc_73584D: FLdRfVar var_5C8
  loc_735850: ConcatVar var_5F4
  loc_735854: CStrVarVal var_4F8
  loc_735858: ILdRf arg_10
  loc_73585B: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735860: FFreeStr var_164 = "": var_238 = "": var_4EC = "": var_4F8 = "": var_504 = "": var_568 = "": var_5D4 = "": var_718 = "": var_764 = ""
  loc_735877: FFreeVar var_468 = "": var_478 = "": var_498 = "": var_458 = "": var_4C8 = "": var_4D8 = "": var_4E8 = "": var_564 = "": var_578 = "": var_588 = "": var_544 = "": var_5A8 = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_214 = "": var_1F4 = "": var_248 = "": var_258 = "": var_268 = "": var_234 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_308 = "": var_318 = "": var_328 = "": var_2D8 = "": var_348 = "": var_378 = "": var_388 = "": var_3A8 = "": var_3B8 = "": var_3E8 = "": var_398 = "": var_3F8 = "": var_408 = ""
  loc_7358D4: FLdRfVar var_8A
  loc_7358D7: NextI2 var_A68, loc_735566
  loc_7358DC: LitStr vbNullString
  loc_7358DF: ILdRf arg_10
  loc_7358E2: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7358E7: LitStr vbNullString
  loc_7358EA: ILdRf arg_10
  loc_7358ED: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7358F2: FLdRfVar var_238
  loc_7358F5: LitVar_Missing var_234
  loc_7358F8: LitVar_Missing var_214
  loc_7358FB: LitVar_Missing var_1F4
  loc_7358FE: LitVar_Missing var_1D4
  loc_735901: LitVar_Missing var_1B4
  loc_735904: LitVar_Missing var_194
  loc_735907: LitVar_Missing var_150
  loc_73590A: LitVar_Missing var_140
  loc_73590D: LitVar_Missing var_120
  loc_735910: LitVar_Missing var_110
  loc_735913: LitStr "Nota : Todos los volumenes estan expresados en"
  loc_735916: FStStrCopy var_164
  loc_735919: FLdRfVar var_164
  loc_73591C: LitI4 &HD
  loc_735921: PopTmpLdAdStr var_160
  loc_735924: LitI2_Byte 7
  loc_735926: PopTmpLdAd2 var_15A
  loc_735929: ImpAdLdRf MemVar_74C7D0
  loc_73592C: NewIfNullPr clsMsg
  loc_73592F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_735934: ILdRf var_238
  loc_735937: LitStr " "
  loc_73593A: ConcatStr
  loc_73593B: FStStrNoPop var_4EC
  loc_73593E: ImpAdLdI4 MemVar_74BEBC
  loc_735941: ConcatStr
  loc_735942: FStStrNoPop var_4F8
  loc_735945: LitStr " "
  loc_735948: ConcatStr
  loc_735949: FStStrNoPop var_5D4
  loc_73594C: FLdRfVar var_568
  loc_73594F: LitVar_Missing var_328
  loc_735952: LitVar_Missing var_318
  loc_735955: LitVar_Missing var_308
  loc_735958: LitVar_Missing var_2D8
  loc_73595B: LitVar_Missing var_2B8
  loc_73595E: LitVar_Missing var_2A8
  loc_735961: LitVar_Missing var_298
  loc_735964: LitVar_Missing var_268
  loc_735967: LitVar_Missing var_258
  loc_73596A: LitVar_Missing var_248
  loc_73596D: LitStr "naturales"
  loc_735970: FStStrCopy var_504
  loc_735973: FLdRfVar var_504
  loc_735976: LitI4 &HE
  loc_73597B: PopTmpLdAdStr var_4F4
  loc_73597E: LitI2_Byte 7
  loc_735980: PopTmpLdAd2 var_4EE
  loc_735983: ImpAdLdRf MemVar_74C7D0
  loc_735986: NewIfNullPr clsMsg
  loc_735989: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73598E: ILdRf var_568
  loc_735991: ConcatStr
  loc_735992: FStStrNoPop var_718
  loc_735995: ILdRf arg_10
  loc_735998: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_73599D: FFreeStr var_164 = "": var_238 = "": var_4EC = "": var_4F8 = "": var_504 = "": var_5D4 = "": var_568 = ""
  loc_7359B0: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = ""
  loc_7359DB: Branch loc_736A83
  loc_7359DE: ILdRf var_88
  loc_7359E1: LitStr "00000000"
  loc_7359E4: NeStr
  loc_7359E6: BranchF loc_735B5C
  loc_7359E9: LitVarStr var_F0, "Fecha Reporte :"
  loc_7359EE: LitI4 3
  loc_7359F3: FLdRfVar var_110
  loc_7359F6: ImpAdCallFPR4  = Space()
  loc_7359FB: FLdRfVar var_110
  loc_7359FE: ConcatVar var_120
  loc_735A02: LitVarI2 var_140, 2
  loc_735A07: LitI4 7
  loc_735A0C: FLdRfVar var_88
  loc_735A0F: CVarRef
  loc_735A14: FLdRfVar var_150
  loc_735A17: ImpAdCallFPR4  = Mid(, , )
  loc_735A1C: FLdRfVar var_150
  loc_735A1F: ConcatVar var_194
  loc_735A23: LitVarStr var_174, "/"
  loc_735A28: ConcatVar var_1B4
  loc_735A2C: LitVarI2 var_1D4, 2
  loc_735A31: LitI4 5
  loc_735A36: FLdRfVar var_88
  loc_735A39: CVarRef
  loc_735A3E: FLdRfVar var_1F4
  loc_735A41: ImpAdCallFPR4  = Mid(, , )
  loc_735A46: FLdRfVar var_1F4
  loc_735A49: ConcatVar var_214
  loc_735A4D: LitVarStr var_1C4, "/"
  loc_735A52: ConcatVar var_234
  loc_735A56: LitVarI2 var_248, 4
  loc_735A5B: LitI4 1
  loc_735A60: FLdRfVar var_88
  loc_735A63: CVarRef
  loc_735A68: FLdRfVar var_258
  loc_735A6B: ImpAdCallFPR4  = Mid(, , )
  loc_735A70: FLdRfVar var_258
  loc_735A73: ConcatVar var_268
  loc_735A77: LitI4 4
  loc_735A7C: FLdRfVar var_298
  loc_735A7F: ImpAdCallFPR4  = Space()
  loc_735A84: FLdRfVar var_298
  loc_735A87: ConcatVar var_2A8
  loc_735A8B: LitVarI2 var_2B8, 2
  loc_735A90: LitI4 9
  loc_735A95: FLdRfVar var_88
  loc_735A98: CVarRef
  loc_735A9D: FLdRfVar var_2D8
  loc_735AA0: ImpAdCallFPR4  = Mid(, , )
  loc_735AA5: FLdRfVar var_2D8
  loc_735AA8: ConcatVar var_308
  loc_735AAC: LitVarStr var_288, ":"
  loc_735AB1: ConcatVar var_318
  loc_735AB5: LitVarI2 var_328, 2
  loc_735ABA: LitI4 &HB
  loc_735ABF: FLdRfVar var_88
  loc_735AC2: CVarRef
  loc_735AC7: FLdRfVar var_348
  loc_735ACA: ImpAdCallFPR4  = Mid(, , )
  loc_735ACF: FLdRfVar var_348
  loc_735AD2: ConcatVar var_378
  loc_735AD6: LitVarStr var_2F8, ":"
  loc_735ADB: ConcatVar var_388
  loc_735ADF: LitVarI2 var_398, 2
  loc_735AE4: LitI4 &HD
  loc_735AE9: FLdRfVar var_88
  loc_735AEC: CVarRef
  loc_735AF1: FLdRfVar var_3A8
  loc_735AF4: ImpAdCallFPR4  = Mid(, , )
  loc_735AF9: FLdRfVar var_3A8
  loc_735AFC: ConcatVar var_3B8
  loc_735B00: CStrVarVal var_164
  loc_735B04: ILdRf arg_10
  loc_735B07: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735B0C: FFree1Str var_164
  loc_735B0F: FFreeVar var_110 = "": var_140 = "": var_120 = "": var_150 = "": var_194 = "": var_1D4 = "": var_1B4 = "": var_1F4 = "": var_214 = "": var_248 = "": var_234 = "": var_258 = "": var_268 = "": var_298 = "": var_2B8 = "": var_2A8 = "": var_2D8 = "": var_308 = "": var_328 = "": var_318 = "": var_348 = "": var_378 = "": var_398 = "": var_388 = "": var_3A8 = ""
  loc_735B46: LitStr vbNullString
  loc_735B49: ILdRf arg_10
  loc_735B4C: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735B51: LitStr vbNullString
  loc_735B54: ILdRf arg_10
  loc_735B57: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735B5C: LitI4 &H10
  loc_735B61: FLdRfVar var_110
  loc_735B64: ImpAdCallFPR4  = Space()
  loc_735B69: FLdRfVar var_110
  loc_735B6C: LitVarStr var_F0, "Volumen"
  loc_735B71: ConcatVar var_120
  loc_735B75: LitI4 5
  loc_735B7A: FLdRfVar var_140
  loc_735B7D: ImpAdCallFPR4  = Space()
  loc_735B82: FLdRfVar var_140
  loc_735B85: ConcatVar var_150
  loc_735B89: LitVarStr var_100, "Volumen"
  loc_735B8E: ConcatVar var_194
  loc_735B92: LitI4 5
  loc_735B97: FLdRfVar var_1B4
  loc_735B9A: ImpAdCallFPR4  = Space()
  loc_735B9F: FLdRfVar var_1B4
  loc_735BA2: ConcatVar var_1D4
  loc_735BA6: LitVarStr var_130, "Volumen"
  loc_735BAB: ConcatVar var_1F4
  loc_735BAF: LitI4 6
  loc_735BB4: FLdRfVar var_214
  loc_735BB7: ImpAdCallFPR4  = Space()
  loc_735BBC: FLdRfVar var_214
  loc_735BBF: ConcatVar var_234
  loc_735BC3: LitVarStr var_174, "Agua"
  loc_735BC8: ConcatVar var_248
  loc_735BCC: LitI4 8
  loc_735BD1: FLdRfVar var_258
  loc_735BD4: ImpAdCallFPR4  = Space()
  loc_735BD9: FLdRfVar var_258
  loc_735BDC: ConcatVar var_268
  loc_735BE0: LitVarStr var_184, "Agua"
  loc_735BE5: ConcatVar var_298
  loc_735BE9: LitI4 8
  loc_735BEE: FLdRfVar var_2A8
  loc_735BF1: ImpAdCallFPR4  = Space()
  loc_735BF6: FLdRfVar var_2A8
  loc_735BF9: ConcatVar var_2B8
  loc_735BFD: LitVarStr var_1A4, "Agua"
  loc_735C02: ConcatVar var_2D8
  loc_735C06: CStrVarVal var_164
  loc_735C0A: ILdRf arg_10
  loc_735C0D: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735C12: FFree1Str var_164
  loc_735C15: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = ""
  loc_735C3A: LitI4 2
  loc_735C3F: FLdRfVar var_110
  loc_735C42: ImpAdCallFPR4  = Space()
  loc_735C47: FLdRfVar var_110
  loc_735C4A: LitVarStr var_F0, "Tanque"
  loc_735C4F: ConcatVar var_120
  loc_735C53: LitI4 8
  loc_735C58: FLdRfVar var_140
  loc_735C5B: ImpAdCallFPR4  = Space()
  loc_735C60: FLdRfVar var_140
  loc_735C63: ConcatVar var_150
  loc_735C67: LitVarStr var_100, "Inicial"
  loc_735C6C: ConcatVar var_194
  loc_735C70: LitI4 6
  loc_735C75: FLdRfVar var_1B4
  loc_735C78: ImpAdCallFPR4  = Space()
  loc_735C7D: FLdRfVar var_1B4
  loc_735C80: ConcatVar var_1D4
  loc_735C84: LitVarStr var_130, "Final"
  loc_735C89: ConcatVar var_1F4
  loc_735C8D: LitI4 7
  loc_735C92: FLdRfVar var_214
  loc_735C95: ImpAdCallFPR4  = Space()
  loc_735C9A: FLdRfVar var_214
  loc_735C9D: ConcatVar var_234
  loc_735CA1: LitVarStr var_174, "Total"
  loc_735CA6: ConcatVar var_248
  loc_735CAA: LitI4 5
  loc_735CAF: FLdRfVar var_258
  loc_735CB2: ImpAdCallFPR4  = Space()
  loc_735CB7: FLdRfVar var_258
  loc_735CBA: ConcatVar var_268
  loc_735CBE: LitVarStr var_184, "Inicial"
  loc_735CC3: ConcatVar var_298
  loc_735CC7: LitI4 7
  loc_735CCC: FLdRfVar var_2A8
  loc_735CCF: ImpAdCallFPR4  = Space()
  loc_735CD4: FLdRfVar var_2A8
  loc_735CD7: ConcatVar var_2B8
  loc_735CDB: LitVarStr var_1A4, "Final"
  loc_735CE0: ConcatVar var_2D8
  loc_735CE4: LitI4 7
  loc_735CE9: FLdRfVar var_308
  loc_735CEC: ImpAdCallFPR4  = Space()
  loc_735CF1: FLdRfVar var_308
  loc_735CF4: ConcatVar var_318
  loc_735CF8: LitVarStr var_1C4, "Total"
  loc_735CFD: ConcatVar var_328
  loc_735D01: CStrVarVal var_164
  loc_735D05: ILdRf arg_10
  loc_735D08: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735D0D: FFree1Str var_164
  loc_735D10: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = ""
  loc_735D3B: LitStr vbNullString
  loc_735D3E: ILdRf arg_10
  loc_735D41: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_735D46: LitI2_Byte 1
  loc_735D48: FStI2 var_8A
  loc_735D4B: FLdI2 var_8A
  loc_735D4E: CI4UI1
  loc_735D4F: ILdRf var_90
  loc_735D52: FnLenStr
  loc_735D53: LtI4
  loc_735D54: BranchF loc_736409
  loc_735D57: LitVarI2 var_110, 2
  loc_735D5C: FLdI2 var_8A
  loc_735D5F: CI4UI1
  loc_735D60: ILdRf var_90
  loc_735D63: ImpAdCallI2 Mid$(, , )
  loc_735D68: FStStrNoPop var_164
  loc_735D6B: ImpAdCallFPR4 push Val()
  loc_735D70: FStFPR8 var_A64
  loc_735D73: LitI4 1
  loc_735D78: LitI4 1
  loc_735D7D: LitVarStr var_130, "@@"
  loc_735D82: FStVarCopyObj var_140
  loc_735D85: FLdRfVar var_140
  loc_735D88: FLdFPR8 var_A64
  loc_735D8B: CVarR8
  loc_735D8F: ImpAdCallI2 Format$(, )
  loc_735D94: FStStr var_94
  loc_735D97: FFree1Str var_164
  loc_735D9A: FFreeVar var_110 = "": var_120 = ""
  loc_735DA3: FLdI2 var_8A
  loc_735DA6: LitI2_Byte 2
  loc_735DA8: AddI2
  loc_735DA9: FStI2 var_8A
  loc_735DAC: LitVarI2 var_110, 9
  loc_735DB1: FLdI2 var_8A
  loc_735DB4: CI4UI1
  loc_735DB5: ILdRf var_90
  loc_735DB8: ImpAdCallI2 Mid$(, , )
  loc_735DBD: FStStrNoPop var_164
  loc_735DC0: ImpAdCallFPR4 push Val()
  loc_735DC5: FStFPR8 var_A64
  loc_735DC8: LitI4 1
  loc_735DCD: LitI4 1
  loc_735DD2: LitVarStr var_130, "######0.00"
  loc_735DD7: FStVarCopyObj var_140
  loc_735DDA: FLdRfVar var_140
  loc_735DDD: FLdFPR8 var_A64
  loc_735DE0: LitI2_Byte &H64
  loc_735DE2: CR8I2
  loc_735DE3: DivR8
  loc_735DE4: CVarR8
  loc_735DE8: ImpAdCallI2 Format$(, )
  loc_735DED: FStStr var_238
  loc_735DF0: LitI4 1
  loc_735DF5: LitI4 1
  loc_735DFA: LitVarStr var_174, "@@@@@@@@@@"
  loc_735DFF: FStVarCopyObj var_194
  loc_735E02: FLdRfVar var_194
  loc_735E05: FLdZeroAd var_238
  loc_735E08: CVarStr var_150
  loc_735E0B: ImpAdCallI2 Format$(, )
  loc_735E10: FStStr var_98
  loc_735E13: FFreeStr var_164 = ""
  loc_735E1A: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_735E27: FLdI2 var_8A
  loc_735E2A: LitI2_Byte 9
  loc_735E2C: AddI2
  loc_735E2D: FStI2 var_8A
  loc_735E30: LitVarI2 var_110, 9
  loc_735E35: FLdI2 var_8A
  loc_735E38: CI4UI1
  loc_735E39: ILdRf var_90
  loc_735E3C: ImpAdCallI2 Mid$(, , )
  loc_735E41: FStStrNoPop var_164
  loc_735E44: ImpAdCallFPR4 push Val()
  loc_735E49: FStFPR8 var_A64
  loc_735E4C: LitI4 1
  loc_735E51: LitI4 1
  loc_735E56: LitVarStr var_130, "######0.00"
  loc_735E5B: FStVarCopyObj var_140
  loc_735E5E: FLdRfVar var_140
  loc_735E61: FLdFPR8 var_A64
  loc_735E64: LitI2_Byte &H64
  loc_735E66: CR8I2
  loc_735E67: DivR8
  loc_735E68: CVarR8
  loc_735E6C: ImpAdCallI2 Format$(, )
  loc_735E71: FStStr var_238
  loc_735E74: LitI4 1
  loc_735E79: LitI4 1
  loc_735E7E: LitVarStr var_174, "@@@@@@@@@@"
  loc_735E83: FStVarCopyObj var_194
  loc_735E86: FLdRfVar var_194
  loc_735E89: FLdZeroAd var_238
  loc_735E8C: CVarStr var_150
  loc_735E8F: ImpAdCallI2 Format$(, )
  loc_735E94: FStStr var_9C
  loc_735E97: FFreeStr var_164 = ""
  loc_735E9E: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_735EAB: FLdI2 var_8A
  loc_735EAE: LitI2_Byte 9
  loc_735EB0: AddI2
  loc_735EB1: FStI2 var_8A
  loc_735EB4: LitVarI2 var_110, 9
  loc_735EB9: FLdI2 var_8A
  loc_735EBC: CI4UI1
  loc_735EBD: ILdRf var_90
  loc_735EC0: ImpAdCallI2 Mid$(, , )
  loc_735EC5: FStStrNoPop var_164
  loc_735EC8: ImpAdCallFPR4 push Val()
  loc_735ECD: FStFPR8 var_A64
  loc_735ED0: LitI4 1
  loc_735ED5: LitI4 1
  loc_735EDA: LitVarStr var_130, "######0.00"
  loc_735EDF: FStVarCopyObj var_140
  loc_735EE2: FLdRfVar var_140
  loc_735EE5: FLdFPR8 var_A64
  loc_735EE8: LitI2_Byte &H64
  loc_735EEA: CR8I2
  loc_735EEB: DivR8
  loc_735EEC: CVarR8
  loc_735EF0: ImpAdCallI2 Format$(, )
  loc_735EF5: FStStr var_238
  loc_735EF8: LitI4 1
  loc_735EFD: LitI4 1
  loc_735F02: LitVarStr var_174, "@@@@@@@@@@"
  loc_735F07: FStVarCopyObj var_194
  loc_735F0A: FLdRfVar var_194
  loc_735F0D: FLdZeroAd var_238
  loc_735F10: CVarStr var_150
  loc_735F13: ImpAdCallI2 Format$(, )
  loc_735F18: FStStr var_A0
  loc_735F1B: FFreeStr var_164 = ""
  loc_735F22: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_735F2F: FLdI2 var_8A
  loc_735F32: LitI2_Byte 9
  loc_735F34: AddI2
  loc_735F35: FStI2 var_8A
  loc_735F38: LitVarI2 var_110, 9
  loc_735F3D: FLdI2 var_8A
  loc_735F40: CI4UI1
  loc_735F41: ILdRf var_90
  loc_735F44: ImpAdCallI2 Mid$(, , )
  loc_735F49: FStStrNoPop var_164
  loc_735F4C: ImpAdCallFPR4 push Val()
  loc_735F51: FStFPR8 var_A64
  loc_735F54: LitI4 1
  loc_735F59: LitI4 1
  loc_735F5E: LitVarStr var_130, "######0.00"
  loc_735F63: FStVarCopyObj var_140
  loc_735F66: FLdRfVar var_140
  loc_735F69: FLdFPR8 var_A64
  loc_735F6C: LitI2_Byte &H64
  loc_735F6E: CR8I2
  loc_735F6F: DivR8
  loc_735F70: CVarR8
  loc_735F74: ImpAdCallI2 Format$(, )
  loc_735F79: FStStr var_238
  loc_735F7C: LitI4 1
  loc_735F81: LitI4 1
  loc_735F86: LitVarStr var_174, "@@@@@@@@@@"
  loc_735F8B: FStVarCopyObj var_194
  loc_735F8E: FLdRfVar var_194
  loc_735F91: FLdZeroAd var_238
  loc_735F94: CVarStr var_150
  loc_735F97: ImpAdCallI2 Format$(, )
  loc_735F9C: FStStr var_AC
  loc_735F9F: FFreeStr var_164 = ""
  loc_735FA6: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_735FB3: FLdI2 var_8A
  loc_735FB6: LitI2_Byte 9
  loc_735FB8: AddI2
  loc_735FB9: FStI2 var_8A
  loc_735FBC: LitVarI2 var_110, 9
  loc_735FC1: FLdI2 var_8A
  loc_735FC4: CI4UI1
  loc_735FC5: ILdRf var_90
  loc_735FC8: ImpAdCallI2 Mid$(, , )
  loc_735FCD: FStStrNoPop var_164
  loc_735FD0: ImpAdCallFPR4 push Val()
  loc_735FD5: FStFPR8 var_A64
  loc_735FD8: LitI4 1
  loc_735FDD: LitI4 1
  loc_735FE2: LitVarStr var_130, "######0.00"
  loc_735FE7: FStVarCopyObj var_140
  loc_735FEA: FLdRfVar var_140
  loc_735FED: FLdFPR8 var_A64
  loc_735FF0: LitI2_Byte &H64
  loc_735FF2: CR8I2
  loc_735FF3: DivR8
  loc_735FF4: CVarR8
  loc_735FF8: ImpAdCallI2 Format$(, )
  loc_735FFD: FStStr var_238
  loc_736000: LitI4 1
  loc_736005: LitI4 1
  loc_73600A: LitVarStr var_174, "@@@@@@@@@@"
  loc_73600F: FStVarCopyObj var_194
  loc_736012: FLdRfVar var_194
  loc_736015: FLdZeroAd var_238
  loc_736018: CVarStr var_150
  loc_73601B: ImpAdCallI2 Format$(, )
  loc_736020: FStStr var_B0
  loc_736023: FFreeStr var_164 = ""
  loc_73602A: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_736037: FLdI2 var_8A
  loc_73603A: LitI2_Byte 9
  loc_73603C: AddI2
  loc_73603D: FStI2 var_8A
  loc_736040: LitVarI2 var_110, 9
  loc_736045: FLdI2 var_8A
  loc_736048: CI4UI1
  loc_736049: ILdRf var_90
  loc_73604C: ImpAdCallI2 Mid$(, , )
  loc_736051: FStStrNoPop var_164
  loc_736054: ImpAdCallFPR4 push Val()
  loc_736059: FStFPR8 var_A64
  loc_73605C: LitI4 1
  loc_736061: LitI4 1
  loc_736066: LitVarStr var_130, "######0.00"
  loc_73606B: FStVarCopyObj var_140
  loc_73606E: FLdRfVar var_140
  loc_736071: FLdFPR8 var_A64
  loc_736074: LitI2_Byte &H64
  loc_736076: CR8I2
  loc_736077: DivR8
  loc_736078: CVarR8
  loc_73607C: ImpAdCallI2 Format$(, )
  loc_736081: FStStr var_238
  loc_736084: LitI4 1
  loc_736089: LitI4 1
  loc_73608E: LitVarStr var_174, "@@@@@@@@@@"
  loc_736093: FStVarCopyObj var_194
  loc_736096: FLdRfVar var_194
  loc_736099: FLdZeroAd var_238
  loc_73609C: CVarStr var_150
  loc_73609F: ImpAdCallI2 Format$(, )
  loc_7360A4: FStStr var_B4
  loc_7360A7: FFreeStr var_164 = ""
  loc_7360AE: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = ""
  loc_7360BB: FLdI2 var_8A
  loc_7360BE: LitI2_Byte 9
  loc_7360C0: AddI2
  loc_7360C1: FStI2 var_8A
  loc_7360C4: ILdRf var_94
  loc_7360C7: ImpAdCallFPR4 push Val()
  loc_7360CC: FStFPR8 var_A64
  loc_7360CF: ILdRf var_94
  loc_7360D2: ImpAdCallFPR4 push Val()
  loc_7360D7: CI4R8
  loc_7360D8: ImpAdLdRf MemVar_74C1D8
  loc_7360DB: Ary1LdUI1
  loc_7360DD: CI4UI1
  loc_7360DE: LitI4 1
  loc_7360E3: FLdRfVar var_DC
  loc_7360E6: AryLdPr
  loc_7360E9: MemLdFPR4 global_0
  loc_7360EC: CVarR4
  loc_7360F0: FLdRfVar var_98
  loc_7360F3: FLdRfVar var_110
  loc_7360F6: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_7360FB: FLdRfVar var_110
  loc_7360FE: AddVar var_120
  loc_736102: CR8Var
  loc_736104: FLdFPR8 var_A64
  loc_736107: CI4R8
  loc_736108: ImpAdLdRf MemVar_74C1D8
  loc_73610B: Ary1LdUI1
  loc_73610D: CI4UI1
  loc_73610E: LitI4 1
  loc_736113: FLdRfVar var_DC
  loc_736116: AryLdPr
  loc_736119: MemStFPR4 global_0
  loc_73611C: FFreeVar var_110 = ""
  loc_736123: ILdRf var_94
  loc_736126: ImpAdCallFPR4 push Val()
  loc_73612B: FStFPR8 var_A64
  loc_73612E: ILdRf var_94
  loc_736131: ImpAdCallFPR4 push Val()
  loc_736136: CI4R8
  loc_736137: ImpAdLdRf MemVar_74C1D8
  loc_73613A: Ary1LdUI1
  loc_73613C: CI4UI1
  loc_73613D: LitI4 2
  loc_736142: FLdRfVar var_DC
  loc_736145: AryLdPr
  loc_736148: MemLdFPR4 global_0
  loc_73614B: CVarR4
  loc_73614F: FLdRfVar var_9C
  loc_736152: FLdRfVar var_110
  loc_736155: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_73615A: FLdRfVar var_110
  loc_73615D: AddVar var_120
  loc_736161: CR8Var
  loc_736163: FLdFPR8 var_A64
  loc_736166: CI4R8
  loc_736167: ImpAdLdRf MemVar_74C1D8
  loc_73616A: Ary1LdUI1
  loc_73616C: CI4UI1
  loc_73616D: LitI4 2
  loc_736172: FLdRfVar var_DC
  loc_736175: AryLdPr
  loc_736178: MemStFPR4 global_0
  loc_73617B: FFreeVar var_110 = ""
  loc_736182: ILdRf var_94
  loc_736185: ImpAdCallFPR4 push Val()
  loc_73618A: FStFPR8 var_A64
  loc_73618D: ILdRf var_94
  loc_736190: ImpAdCallFPR4 push Val()
  loc_736195: CI4R8
  loc_736196: ImpAdLdRf MemVar_74C1D8
  loc_736199: Ary1LdUI1
  loc_73619B: CI4UI1
  loc_73619C: LitI4 3
  loc_7361A1: FLdRfVar var_DC
  loc_7361A4: AryLdPr
  loc_7361A7: MemLdFPR4 global_0
  loc_7361AA: CVarR4
  loc_7361AE: FLdRfVar var_A0
  loc_7361B1: FLdRfVar var_110
  loc_7361B4: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_7361B9: FLdRfVar var_110
  loc_7361BC: AddVar var_120
  loc_7361C0: CR8Var
  loc_7361C2: FLdFPR8 var_A64
  loc_7361C5: CI4R8
  loc_7361C6: ImpAdLdRf MemVar_74C1D8
  loc_7361C9: Ary1LdUI1
  loc_7361CB: CI4UI1
  loc_7361CC: LitI4 3
  loc_7361D1: FLdRfVar var_DC
  loc_7361D4: AryLdPr
  loc_7361D7: MemStFPR4 global_0
  loc_7361DA: FFreeVar var_110 = ""
  loc_7361E1: ILdRf var_94
  loc_7361E4: ImpAdCallFPR4 push Val()
  loc_7361E9: FStFPR8 var_A64
  loc_7361EC: ILdRf var_94
  loc_7361EF: ImpAdCallFPR4 push Val()
  loc_7361F4: CI4R8
  loc_7361F5: ImpAdLdRf MemVar_74C1D8
  loc_7361F8: Ary1LdUI1
  loc_7361FA: CI4UI1
  loc_7361FB: LitI4 4
  loc_736200: FLdRfVar var_DC
  loc_736203: AryLdPr
  loc_736206: MemLdFPR4 global_0
  loc_736209: CVarR4
  loc_73620D: FLdRfVar var_AC
  loc_736210: FLdRfVar var_110
  loc_736213: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_736218: FLdRfVar var_110
  loc_73621B: AddVar var_120
  loc_73621F: CR8Var
  loc_736221: FLdFPR8 var_A64
  loc_736224: CI4R8
  loc_736225: ImpAdLdRf MemVar_74C1D8
  loc_736228: Ary1LdUI1
  loc_73622A: CI4UI1
  loc_73622B: LitI4 4
  loc_736230: FLdRfVar var_DC
  loc_736233: AryLdPr
  loc_736236: MemStFPR4 global_0
  loc_736239: FFreeVar var_110 = ""
  loc_736240: ILdRf var_94
  loc_736243: ImpAdCallFPR4 push Val()
  loc_736248: FStFPR8 var_A64
  loc_73624B: ILdRf var_94
  loc_73624E: ImpAdCallFPR4 push Val()
  loc_736253: CI4R8
  loc_736254: ImpAdLdRf MemVar_74C1D8
  loc_736257: Ary1LdUI1
  loc_736259: CI4UI1
  loc_73625A: LitI4 5
  loc_73625F: FLdRfVar var_DC
  loc_736262: AryLdPr
  loc_736265: MemLdFPR4 global_0
  loc_736268: CVarR4
  loc_73626C: FLdRfVar var_B0
  loc_73626F: FLdRfVar var_110
  loc_736272: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_736277: FLdRfVar var_110
  loc_73627A: AddVar var_120
  loc_73627E: CR8Var
  loc_736280: FLdFPR8 var_A64
  loc_736283: CI4R8
  loc_736284: ImpAdLdRf MemVar_74C1D8
  loc_736287: Ary1LdUI1
  loc_736289: CI4UI1
  loc_73628A: LitI4 5
  loc_73628F: FLdRfVar var_DC
  loc_736292: AryLdPr
  loc_736295: MemStFPR4 global_0
  loc_736298: FFreeVar var_110 = ""
  loc_73629F: ILdRf var_94
  loc_7362A2: ImpAdCallFPR4 push Val()
  loc_7362A7: FStFPR8 var_A64
  loc_7362AA: ILdRf var_94
  loc_7362AD: ImpAdCallFPR4 push Val()
  loc_7362B2: CI4R8
  loc_7362B3: ImpAdLdRf MemVar_74C1D8
  loc_7362B6: Ary1LdUI1
  loc_7362B8: CI4UI1
  loc_7362B9: LitI4 6
  loc_7362BE: FLdRfVar var_DC
  loc_7362C1: AryLdPr
  loc_7362C4: MemLdFPR4 global_0
  loc_7362C7: CVarR4
  loc_7362CB: FLdRfVar var_B4
  loc_7362CE: FLdRfVar var_110
  loc_7362D1: ImpAdCallFPR4  = Proc_155_2_5FA6B8()
  loc_7362D6: FLdRfVar var_110
  loc_7362D9: AddVar var_120
  loc_7362DD: CR8Var
  loc_7362DF: FLdFPR8 var_A64
  loc_7362E2: CI4R8
  loc_7362E3: ImpAdLdRf MemVar_74C1D8
  loc_7362E6: Ary1LdUI1
  loc_7362E8: CI4UI1
  loc_7362E9: LitI4 6
  loc_7362EE: FLdRfVar var_DC
  loc_7362F1: AryLdPr
  loc_7362F4: MemStFPR4 global_0
  loc_7362F7: FFreeVar var_110 = ""
  loc_7362FE: LitI4 4
  loc_736303: FLdRfVar var_110
  loc_736306: ImpAdCallFPR4  = Space()
  loc_73630B: FLdRfVar var_110
  loc_73630E: ILdRf var_94
  loc_736311: CVarStr var_F0
  loc_736314: ConcatVar var_120
  loc_736318: LitI4 8
  loc_73631D: FLdRfVar var_140
  loc_736320: ImpAdCallFPR4  = Space()
  loc_736325: FLdRfVar var_140
  loc_736328: ConcatVar var_150
  loc_73632C: ILdRf var_98
  loc_73632F: CVarStr var_100
  loc_736332: ConcatVar var_194
  loc_736336: LitI4 2
  loc_73633B: FLdRfVar var_1B4
  loc_73633E: ImpAdCallFPR4  = Space()
  loc_736343: FLdRfVar var_1B4
  loc_736346: ConcatVar var_1D4
  loc_73634A: ILdRf var_9C
  loc_73634D: CVarStr var_130
  loc_736350: ConcatVar var_1F4
  loc_736354: LitI4 2
  loc_736359: FLdRfVar var_214
  loc_73635C: ImpAdCallFPR4  = Space()
  loc_736361: FLdRfVar var_214
  loc_736364: ConcatVar var_234
  loc_736368: ILdRf var_A0
  loc_73636B: CVarStr var_174
  loc_73636E: ConcatVar var_248
  loc_736372: LitI4 2
  loc_736377: FLdRfVar var_258
  loc_73637A: ImpAdCallFPR4  = Space()
  loc_73637F: FLdRfVar var_258
  loc_736382: ConcatVar var_268
  loc_736386: ILdRf var_AC
  loc_736389: CVarStr var_184
  loc_73638C: ConcatVar var_298
  loc_736390: LitI4 2
  loc_736395: FLdRfVar var_2A8
  loc_736398: ImpAdCallFPR4  = Space()
  loc_73639D: FLdRfVar var_2A8
  loc_7363A0: ConcatVar var_2B8
  loc_7363A4: ILdRf var_B0
  loc_7363A7: CVarStr var_1A4
  loc_7363AA: ConcatVar var_2D8
  loc_7363AE: LitI4 2
  loc_7363B3: FLdRfVar var_308
  loc_7363B6: ImpAdCallFPR4  = Space()
  loc_7363BB: FLdRfVar var_308
  loc_7363BE: ConcatVar var_318
  loc_7363C2: ILdRf var_B4
  loc_7363C5: CVarStr var_1C4
  loc_7363C8: ConcatVar var_328
  loc_7363CC: CStrVarVal var_164
  loc_7363D0: ILdRf arg_10
  loc_7363D3: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7363D8: FFree1Str var_164
  loc_7363DB: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = ""
  loc_736406: Branch loc_735D4B
  loc_736409: LitStr vbNullString
  loc_73640C: ILdRf arg_10
  loc_73640F: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_736414: LitStr vbNullString
  loc_736417: ILdRf arg_10
  loc_73641A: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_73641F: FLdRfVar var_238
  loc_736422: LitVar_Missing var_234
  loc_736425: LitVar_Missing var_214
  loc_736428: LitVar_Missing var_1F4
  loc_73642B: LitVar_Missing var_1D4
  loc_73642E: LitVar_Missing var_1B4
  loc_736431: LitVar_Missing var_194
  loc_736434: LitVar_Missing var_150
  loc_736437: LitVar_Missing var_140
  loc_73643A: LitVar_Missing var_120
  loc_73643D: LitVar_Missing var_110
  loc_736440: LitStr "Totales por Producto"
  loc_736443: FStStrCopy var_164
  loc_736446: FLdRfVar var_164
  loc_736449: LitI4 &HB
  loc_73644E: PopTmpLdAdStr var_160
  loc_736451: LitI2_Byte 7
  loc_736453: PopTmpLdAd2 var_15A
  loc_736456: ImpAdLdRf MemVar_74C7D0
  loc_736459: NewIfNullPr clsMsg
  loc_73645C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736461: LitI2_Byte &H50
  loc_736463: ILdRf var_238
  loc_736466: FLdRfVar var_248
  loc_736469: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73646E: FLdRfVar var_248
  loc_736471: CStrVarVal var_4EC
  loc_736475: ILdRf arg_10
  loc_736478: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_73647D: FFreeStr var_164 = "": var_238 = ""
  loc_736486: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_73649F: LitStr vbNullString
  loc_7364A2: ILdRf arg_10
  loc_7364A5: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7364AA: LitI4 &H10
  loc_7364AF: FLdRfVar var_110
  loc_7364B2: ImpAdCallFPR4  = Space()
  loc_7364B7: FLdRfVar var_110
  loc_7364BA: LitVarStr var_F0, "Volumen"
  loc_7364BF: ConcatVar var_120
  loc_7364C3: LitI4 5
  loc_7364C8: FLdRfVar var_140
  loc_7364CB: ImpAdCallFPR4  = Space()
  loc_7364D0: FLdRfVar var_140
  loc_7364D3: ConcatVar var_150
  loc_7364D7: LitVarStr var_100, "Volumen"
  loc_7364DC: ConcatVar var_194
  loc_7364E0: LitI4 5
  loc_7364E5: FLdRfVar var_1B4
  loc_7364E8: ImpAdCallFPR4  = Space()
  loc_7364ED: FLdRfVar var_1B4
  loc_7364F0: ConcatVar var_1D4
  loc_7364F4: LitVarStr var_130, "Volumen"
  loc_7364F9: ConcatVar var_1F4
  loc_7364FD: LitI4 6
  loc_736502: FLdRfVar var_214
  loc_736505: ImpAdCallFPR4  = Space()
  loc_73650A: FLdRfVar var_214
  loc_73650D: ConcatVar var_234
  loc_736511: LitVarStr var_174, "Agua"
  loc_736516: ConcatVar var_248
  loc_73651A: LitI4 8
  loc_73651F: FLdRfVar var_258
  loc_736522: ImpAdCallFPR4  = Space()
  loc_736527: FLdRfVar var_258
  loc_73652A: ConcatVar var_268
  loc_73652E: LitVarStr var_184, "Agua"
  loc_736533: ConcatVar var_298
  loc_736537: LitI4 8
  loc_73653C: FLdRfVar var_2A8
  loc_73653F: ImpAdCallFPR4  = Space()
  loc_736544: FLdRfVar var_2A8
  loc_736547: ConcatVar var_2B8
  loc_73654B: LitVarStr var_1A4, "Agua"
  loc_736550: ConcatVar var_2D8
  loc_736554: CStrVarVal var_164
  loc_736558: ILdRf arg_10
  loc_73655B: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_736560: FFree1Str var_164
  loc_736563: FFreeVar var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = ""
  loc_736588: LitI4 2
  loc_73658D: FLdRfVar var_110
  loc_736590: ImpAdCallFPR4  = Space()
  loc_736595: FLdRfVar var_110
  loc_736598: FLdRfVar var_238
  loc_73659B: LitVar_Missing var_248
  loc_73659E: LitVar_Missing var_234
  loc_7365A1: LitVar_Missing var_214
  loc_7365A4: LitVar_Missing var_1F4
  loc_7365A7: LitVar_Missing var_1D4
  loc_7365AA: LitVar_Missing var_1B4
  loc_7365AD: LitVar_Missing var_194
  loc_7365B0: LitVar_Missing var_150
  loc_7365B3: LitVar_Missing var_140
  loc_7365B6: LitVar_Missing var_120
  loc_7365B9: LitStr "Producto"
  loc_7365BC: FStStrCopy var_164
  loc_7365BF: FLdRfVar var_164
  loc_7365C2: LitI4 &HA
  loc_7365C7: PopTmpLdAdStr var_160
  loc_7365CA: LitI2_Byte 7
  loc_7365CC: PopTmpLdAd2 var_15A
  loc_7365CF: ImpAdLdRf MemVar_74C7D0
  loc_7365D2: NewIfNullPr clsMsg
  loc_7365D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7365DA: FLdZeroAd var_238
  loc_7365DD: CVarStr var_258
  loc_7365E0: ConcatVar var_268
  loc_7365E4: LitI4 6
  loc_7365E9: FLdRfVar var_298
  loc_7365EC: ImpAdCallFPR4  = Space()
  loc_7365F1: FLdRfVar var_298
  loc_7365F4: ConcatVar var_2A8
  loc_7365F8: LitVarStr var_278, "Inicial"
  loc_7365FD: ConcatVar var_2B8
  loc_736601: LitI4 6
  loc_736606: FLdRfVar var_2D8
  loc_736609: ImpAdCallFPR4  = Space()
  loc_73660E: FLdRfVar var_2D8
  loc_736611: ConcatVar var_308
  loc_736615: LitVarStr var_288, "Final"
  loc_73661A: ConcatVar var_318
  loc_73661E: LitI4 7
  loc_736623: FLdRfVar var_328
  loc_736626: ImpAdCallFPR4  = Space()
  loc_73662B: FLdRfVar var_328
  loc_73662E: ConcatVar var_348
  loc_736632: LitVarStr var_2C8, "Total"
  loc_736637: ConcatVar var_378
  loc_73663B: LitI4 5
  loc_736640: FLdRfVar var_388
  loc_736643: ImpAdCallFPR4  = Space()
  loc_736648: FLdRfVar var_388
  loc_73664B: ConcatVar var_398
  loc_73664F: LitVarStr var_2E8, "Inicial"
  loc_736654: ConcatVar var_3A8
  loc_736658: LitI4 7
  loc_73665D: FLdRfVar var_3B8
  loc_736660: ImpAdCallFPR4  = Space()
  loc_736665: FLdRfVar var_3B8
  loc_736668: ConcatVar var_3E8
  loc_73666C: LitVarStr var_2F8, "Final"
  loc_736671: ConcatVar var_3F8
  loc_736675: LitI4 7
  loc_73667A: FLdRfVar var_408
  loc_73667D: ImpAdCallFPR4  = Space()
  loc_736682: FLdRfVar var_408
  loc_736685: ConcatVar var_428
  loc_736689: LitVarStr var_338, "Total"
  loc_73668E: ConcatVar var_458
  loc_736692: CStrVarVal var_4EC
  loc_736696: ILdRf arg_10
  loc_736699: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_73669E: FFreeStr var_164 = ""
  loc_7366A5: FFreeVar var_458 = "": var_120 = "": var_140 = "": var_150 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_248 = "": var_110 = "": var_258 = "": var_268 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3E8 = "": var_3F8 = "": var_408 = ""
  loc_7366E6: LitStr vbNullString
  loc_7366E9: ILdRf arg_10
  loc_7366EC: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_7366F1: LitI2_Byte 1
  loc_7366F3: FLdRfVar var_8A
  loc_7366F6: FLdRfVar var_15A
  loc_7366F9: ImpAdLdRf MemVar_74A220
  loc_7366FC: NewIfNullPr clsProducts
  loc_7366FF: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_736704: FLdI2 var_15A
  loc_736707: ForI2 var_A6C
  loc_73670D: FLdRfVar var_15A
  loc_736710: FLdI2 var_8A
  loc_736713: ImpAdLdRf MemVar_74A220
  loc_736716: NewIfNullPr clsProducts
  loc_736719:  = clsProducts.hWnd
  loc_73671E: FLdI2 var_15A
  loc_736721: NotI4
  loc_736722: BranchF loc_736A7B
  loc_736725: FLdRfVar var_164
  loc_736728: FLdI2 var_8A
  loc_73672B: ImpAdLdRf MemVar_74A220
  loc_73672E: NewIfNullPr clsProducts
  loc_736736: LitVarI2 var_110, 12
  loc_73673B: LitI4 1
  loc_736740: ILdRf var_164
  loc_736743: ImpAdCallI2 Mid$(, , )
  loc_736748: CVarStr var_120
  loc_73674B: FLdRfVar var_140
  loc_73674E: ImpAdCallFPR4  = Trim()
  loc_736753: LitI4 1
  loc_736758: LitI4 1
  loc_73675D: LitVarStr var_174, "######0.00"
  loc_736762: FStVarCopyObj var_1F4
  loc_736765: FLdRfVar var_1F4
  loc_736768: FLdI2 var_8A
  loc_73676B: CI4UI1
  loc_73676C: LitI4 1
  loc_736771: FLdRfVar var_DC
  loc_736774: AryLdRf
  loc_736777: CVarRef
  loc_73677C: ImpAdCallI2 Format$(, )
  loc_736781: FStStr var_4EC
  loc_736784: LitI4 1
  loc_736789: LitI4 1
  loc_73678E: LitVarStr var_1C4, "######0.00"
  loc_736793: FStVarCopyObj var_2A8
  loc_736796: FLdRfVar var_2A8
  loc_736799: FLdI2 var_8A
  loc_73679C: CI4UI1
  loc_73679D: LitI4 2
  loc_7367A2: FLdRfVar var_DC
  loc_7367A5: AryLdRf
  loc_7367A8: CVarRef
  loc_7367AD: ImpAdCallI2 Format$(, )
  loc_7367B2: FStStr var_4F8
  loc_7367B5: LitI4 1
  loc_7367BA: LitI4 1
  loc_7367BF: LitVarStr var_224, "######0.00"
  loc_7367C4: FStVarCopyObj var_378
  loc_7367C7: FLdRfVar var_378
  loc_7367CA: FLdI2 var_8A
  loc_7367CD: CI4UI1
  loc_7367CE: LitI4 3
  loc_7367D3: FLdRfVar var_DC
  loc_7367D6: AryLdRf
  loc_7367D9: CVarRef
  loc_7367DE: ImpAdCallI2 Format$(, )
  loc_7367E3: FStStr var_504
  loc_7367E6: LitI4 1
  loc_7367EB: LitI4 1
  loc_7367F0: LitVarStr var_2C8, "######0.00"
  loc_7367F5: FStVarCopyObj var_408
  loc_7367F8: FLdRfVar var_408
  loc_7367FB: FLdI2 var_8A
  loc_7367FE: CI4UI1
  loc_7367FF: LitI4 4
  loc_736804: FLdRfVar var_DC
  loc_736807: AryLdRf
  loc_73680A: CVarRef
  loc_73680F: ImpAdCallI2 Format$(, )
  loc_736814: FStStr var_568
  loc_736817: LitI4 1
  loc_73681C: LitI4 1
  loc_736821: LitVarStr var_338, "######0.00"
  loc_736826: FStVarCopyObj var_4D8
  loc_736829: FLdRfVar var_4D8
  loc_73682C: FLdI2 var_8A
  loc_73682F: CI4UI1
  loc_736830: LitI4 5
  loc_736835: FLdRfVar var_DC
  loc_736838: AryLdRf
  loc_73683B: CVarRef
  loc_736840: ImpAdCallI2 Format$(, )
  loc_736845: FStStr var_5D4
  loc_736848: LitI4 1
  loc_73684D: LitI4 1
  loc_736852: LitVarStr var_3C8, "######0.00"
  loc_736857: FStVarCopyObj var_5B8
  loc_73685A: FLdRfVar var_5B8
  loc_73685D: FLdI2 var_8A
  loc_736860: CI4UI1
  loc_736861: LitI4 6
  loc_736866: FLdRfVar var_DC
  loc_736869: AryLdRf
  loc_73686C: CVarRef
  loc_736871: ImpAdCallI2 Format$(, )
  loc_736876: FStStr var_718
  loc_736879: LitI4 1
  loc_73687E: LitI4 1
  loc_736883: LitVarStr var_100, "!@@@@@@@@@@@@"
  loc_736888: FStVarCopyObj var_150
  loc_73688B: FLdRfVar var_150
  loc_73688E: FLdRfVar var_140
  loc_736891: ImpAdCallI2 Format$(, )
  loc_736896: CVarStr var_1B4
  loc_736899: LitI4 2
  loc_73689E: FLdRfVar var_194
  loc_7368A1: ImpAdCallFPR4  = Space()
  loc_7368A6: FLdRfVar var_194
  loc_7368A9: ConcatVar var_1D4
  loc_7368AD: LitI4 1
  loc_7368B2: LitI4 1
  loc_7368B7: LitVarStr var_184, "@@@@@@@@@@"
  loc_7368BC: FStVarCopyObj var_234
  loc_7368BF: FLdRfVar var_234
  loc_7368C2: FLdZeroAd var_4EC
  loc_7368C5: CVarStr var_214
  loc_7368C8: ImpAdCallI2 Format$(, )
  loc_7368CD: CVarStr var_248
  loc_7368D0: ConcatVar var_258
  loc_7368D4: LitI4 2
  loc_7368D9: FLdRfVar var_268
  loc_7368DC: ImpAdCallFPR4  = Space()
  loc_7368E1: FLdRfVar var_268
  loc_7368E4: ConcatVar var_298
  loc_7368E8: LitI4 1
  loc_7368ED: LitI4 1
  loc_7368F2: LitVarStr var_1E4, "@@@@@@@@@@"
  loc_7368F7: FStVarCopyObj var_2D8
  loc_7368FA: FLdRfVar var_2D8
  loc_7368FD: FLdZeroAd var_4F8
  loc_736900: CVarStr var_2B8
  loc_736903: ImpAdCallI2 Format$(, )
  loc_736908: CVarStr var_308
  loc_73690B: ConcatVar var_318
  loc_73690F: LitI4 2
  loc_736914: FLdRfVar var_328
  loc_736917: ImpAdCallFPR4  = Space()
  loc_73691C: FLdRfVar var_328
  loc_73691F: ConcatVar var_348
  loc_736923: LitI4 1
  loc_736928: LitI4 1
  loc_73692D: LitVarStr var_278, "@@@@@@@@@@"
  loc_736932: FStVarCopyObj var_398
  loc_736935: FLdRfVar var_398
  loc_736938: FLdZeroAd var_504
  loc_73693B: CVarStr var_388
  loc_73693E: ImpAdCallI2 Format$(, )
  loc_736943: CVarStr var_3A8
  loc_736946: ConcatVar var_3B8
  loc_73694A: LitI4 2
  loc_73694F: FLdRfVar var_3E8
  loc_736952: ImpAdCallFPR4  = Space()
  loc_736957: FLdRfVar var_3E8
  loc_73695A: ConcatVar var_3F8
  loc_73695E: LitI4 1
  loc_736963: LitI4 1
  loc_736968: LitVarStr var_2E8, "@@@@@@@@@@"
  loc_73696D: FStVarCopyObj var_458
  loc_736970: FLdRfVar var_458
  loc_736973: FLdZeroAd var_568
  loc_736976: CVarStr var_428
  loc_736979: ImpAdCallI2 Format$(, )
  loc_73697E: CVarStr var_468
  loc_736981: ConcatVar var_478
  loc_736985: LitI4 2
  loc_73698A: FLdRfVar var_498
  loc_73698D: ImpAdCallFPR4  = Space()
  loc_736992: FLdRfVar var_498
  loc_736995: ConcatVar var_4C8
  loc_736999: LitI4 1
  loc_73699E: LitI4 1
  loc_7369A3: LitVarStr var_358, "@@@@@@@@@@"
  loc_7369A8: FStVarCopyObj var_544
  loc_7369AB: FLdRfVar var_544
  loc_7369AE: FLdZeroAd var_5D4
  loc_7369B1: CVarStr var_4E8
  loc_7369B4: ImpAdCallI2 Format$(, )
  loc_7369B9: CVarStr var_564
  loc_7369BC: ConcatVar var_578
  loc_7369C0: LitI4 2
  loc_7369C5: FLdRfVar var_588
  loc_7369C8: ImpAdCallFPR4  = Space()
  loc_7369CD: FLdRfVar var_588
  loc_7369D0: ConcatVar var_5A8
  loc_7369D4: LitI4 1
  loc_7369D9: LitI4 1
  loc_7369DE: LitVarStr var_3D8, "@@@@@@@@@@"
  loc_7369E3: FStVarCopyObj var_5F4
  loc_7369E6: FLdRfVar var_5F4
  loc_7369E9: FLdZeroAd var_718
  loc_7369EC: CVarStr var_5C8
  loc_7369EF: ImpAdCallI2 Format$(, )
  loc_7369F4: CVarStr var_614
  loc_7369F7: ConcatVar var_634
  loc_7369FB: CStrVarVal var_238
  loc_7369FF: ILdRf arg_10
  loc_736A02: ImpAdCallFPR4 Proc_155_1_5DEFFC(, )
  loc_736A07: FFreeStr var_164 = "": var_238 = "": var_4EC = "": var_4F8 = "": var_504 = "": var_568 = "": var_5D4 = ""
  loc_736A1A: FFreeVar var_3F8 = "": var_468 = "": var_478 = "": var_498 = "": var_4D8 = "": var_4E8 = "": var_544 = "": var_4C8 = "": var_564 = "": var_578 = "": var_588 = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_5A8 = "": var_614 = "": var_634 = "": var_110 = "": var_120 = "": var_140 = "": var_150 = "": var_1B4 = "": var_194 = "": var_1F4 = "": var_214 = "": var_234 = "": var_1D4 = "": var_248 = "": var_258 = "": var_268 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_298 = "": var_308 = "": var_318 = "": var_328 = "": var_378 = "": var_388 = "": var_398 = "": var_348 = "": var_3A8 = "": var_3B8 = "": var_3E8 = "": var_408 = "": var_428 = ""
  loc_736A7B: FLdRfVar var_8A
  loc_736A7E: NextI2 var_A6C, loc_73670D
  loc_736A83: ExitProc
End Function

Private Function Proc_53_8_709AA4(arg_C, arg_10) '709AA4
  'Data Table: 40898C
  loc_7087D4: ImpAdLdI2 MemVar_74C6E4
  loc_7087D7: LitI2_Byte &HFF
  loc_7087D9: EqI2
  loc_7087DA: BranchF loc_7087DE
  loc_7087DD: ExitProc
  loc_7087DE: OnErrorGoto loc_709AA0
  loc_7087E1: ImpAdLdI2 MemVar_74C7C2
  loc_7087E4: BranchF loc_7087E8
  loc_7087E7: ExitProc
  loc_7087E8: ImpAdCallFPR4 Proc_166_4_668698()
  loc_7087ED: LitVarI2 var_D8, 1
  loc_7087F2: LitI4 &HC
  loc_7087F7: ImpAdLdRf MemVar_74BEAC
  loc_7087FA: CVarRef
  loc_7087FF: FLdRfVar var_E8
  loc_708802: ImpAdCallFPR4  = Mid(, , )
  loc_708807: FLdRfVar var_E8
  loc_70880A: LitVarStr var_F8, "1"
  loc_70880F: HardType
  loc_708810: EqVarBool
  loc_708812: FFreeVar var_D8 = ""
  loc_708819: BranchF loc_708827
  loc_70881C: ILdRf arg_10
  loc_70881F: ILdRf arg_C
  loc_708822: ImpAdCallFPR4 Proc_166_5_5FE748(, )
  loc_708827: FLdRfVar var_10E
  loc_70882A: FLdRfVar var_88
  loc_70882D: FLdRfVar var_10C
  loc_708830: ImpAdLdRf MemVar_74C760
  loc_708833: NewIfNullPr Formx
  loc_708836: from_stack_1v = Formx.global_4589716Get()
  loc_70883B: FLdPr var_10C
  loc_70883E:  = Formx.MousePointer
  loc_708843: FLdI2 var_10E
  loc_708846: NotI4
  loc_708847: FFree1Ad var_10C
  loc_70884A: BranchF loc_708883
  loc_70884D: FLdRfVar var_D8
  loc_708850: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_708855: FLdRfVar var_D8
  loc_708858: CBoolVarNull
  loc_70885A: FFree1Var var_D8 = ""
  loc_70885D: BranchF loc_708880
  loc_708860: LitI2_Byte 0
  loc_708862: ILdPr
  loc_708865: Me.Enabled = from_stack_1b
  loc_70886A: ILdI4 arg_10
  loc_70886D: FStAdNoPop
  loc_708871: ImpAdLdRf MemVar_7520D4
  loc_708874: NewIfNullPr Global
  loc_708877: Global.Unload from_stack_1
  loc_70887C: FFree1Ad var_10C
  loc_70887F: ExitProc
  loc_708880: Branch loc_708827
  loc_708883: FLdRfVar var_88
  loc_708886: ImpAdCallFPR4 Proc_166_6_5E3E60()
  loc_70888B: LitI4 1
  loc_708890: ILdRf var_88
  loc_708893: LitStr "T"
  loc_708896: LitI4 0
  loc_70889B: FnInStr4
  loc_70889D: LitI4 0
  loc_7088A2: NeI4
  loc_7088A3: BranchF loc_708977
  loc_7088A6: LitI2_Byte 0
  loc_7088A8: ILdPr
  loc_7088AB: Me.Enabled = from_stack_1b
  loc_7088B0: ImpAdCallI2 Proc_166_7_5EE3BC()
  loc_7088B5: BranchF loc_708902
  loc_7088B8: LitVarI2 var_D8, 1
  loc_7088BD: LitI4 1
  loc_7088C2: ImpAdLdI4 MemVar_74BEAC
  loc_7088C5: ImpAdCallI2 Mid$(, , )
  loc_7088CA: FStStrNoPop var_114
  loc_7088CD: LitStr "1"
  loc_7088D0: EqStr
  loc_7088D2: FFree1Str var_114
  loc_7088D5: FFree1Var var_D8 = ""
  loc_7088D8: BranchF loc_7088E8
  loc_7088DB: LitI2_Byte &HFF
  loc_7088DD: ImpAdLdRf MemVar_74C760
  loc_7088E0: NewIfNullPr Formx
  loc_7088E3: Call Formx.ImpresionFacturaDiferencia(from_stack_1v)
  loc_7088E8: LitStr "T"
  loc_7088EB: FStStrCopy var_114
  loc_7088EE: FLdRfVar var_114
  loc_7088F1: ImpAdLdRf MemVar_74C760
  loc_7088F4: NewIfNullPr Formx
  loc_7088F7: Call Formx.ImpresionReporte(from_stack_1v)
  loc_7088FC: FFree1Str var_114
  loc_7088FF: Branch loc_70896C
  loc_708902: FLdRfVar var_116
  loc_708905: FLdRfVar var_90
  loc_708908: CVarRef
  loc_70890D: LitI2_Byte &HFF
  loc_70890F: PopTmpLdAd2 var_10E
  loc_708912: LitStr "T"
  loc_708915: FStStrCopy var_114
  loc_708918: FLdRfVar var_114
  loc_70891B: FLdRfVar var_10C
  loc_70891E: ImpAdLdRf MemVar_74C760
  loc_708921: NewIfNullPr Formx
  loc_708924: from_stack_1v = Formx.global_4589716Get()
  loc_708929: FLdPr var_10C
  loc_70892C: Formx.WindowState = from_stack_1
  loc_708931: FFree1Str var_114
  loc_708934: FFree1Ad var_10C
  loc_708937: FLdRfVar var_116
  loc_70893A: FLdRfVar var_90
  loc_70893D: CVarRef
  loc_708942: LitI2_Byte 0
  loc_708944: PopTmpLdAd2 var_10E
  loc_708947: LitStr "T"
  loc_70894A: FStStrCopy var_114
  loc_70894D: FLdRfVar var_114
  loc_708950: FLdRfVar var_10C
  loc_708953: ImpAdLdRf MemVar_74C760
  loc_708956: NewIfNullPr Formx
  loc_708959: from_stack_1v = Formx.global_4589716Get()
  loc_70895E: FLdPr var_10C
  loc_708961: Formx.WindowState = from_stack_1
  loc_708966: FFree1Str var_114
  loc_708969: FFree1Ad var_10C
  loc_70896C: LitI2_Byte &HFF
  loc_70896E: ILdPr
  loc_708971: Me.Enabled = from_stack_1b
  loc_708976: ExitProc
  loc_708977: LitI4 1
  loc_70897C: ILdRf var_88
  loc_70897F: LitStr "D"
  loc_708982: LitI4 0
  loc_708987: FnInStr4
  loc_708989: LitI4 0
  loc_70898E: NeI4
  loc_70898F: BranchF loc_708A33
  loc_708992: LitI2_Byte 0
  loc_708994: ILdPr
  loc_708997: Me.Enabled = from_stack_1b
  loc_70899C: ImpAdCallI2 Proc_166_8_5EE620()
  loc_7089A1: BranchF loc_7089BE
  loc_7089A4: LitStr "D"
  loc_7089A7: FStStrCopy var_114
  loc_7089AA: FLdRfVar var_114
  loc_7089AD: ImpAdLdRf MemVar_74C760
  loc_7089B0: NewIfNullPr Formx
  loc_7089B3: Call Formx.ImpresionReporte(from_stack_1v)
  loc_7089B8: FFree1Str var_114
  loc_7089BB: Branch loc_708A28
  loc_7089BE: FLdRfVar var_116
  loc_7089C1: FLdRfVar var_90
  loc_7089C4: CVarRef
  loc_7089C9: LitI2_Byte &HFF
  loc_7089CB: PopTmpLdAd2 var_10E
  loc_7089CE: LitStr "D"
  loc_7089D1: FStStrCopy var_114
  loc_7089D4: FLdRfVar var_114
  loc_7089D7: FLdRfVar var_10C
  loc_7089DA: ImpAdLdRf MemVar_74C760
  loc_7089DD: NewIfNullPr Formx
  loc_7089E0: from_stack_1v = Formx.global_4589716Get()
  loc_7089E5: FLdPr var_10C
  loc_7089E8: Formx.WindowState = from_stack_1
  loc_7089ED: FFree1Str var_114
  loc_7089F0: FFree1Ad var_10C
  loc_7089F3: FLdRfVar var_116
  loc_7089F6: FLdRfVar var_90
  loc_7089F9: CVarRef
  loc_7089FE: LitI2_Byte 0
  loc_708A00: PopTmpLdAd2 var_10E
  loc_708A03: LitStr "D"
  loc_708A06: FStStrCopy var_114
  loc_708A09: FLdRfVar var_114
  loc_708A0C: FLdRfVar var_10C
  loc_708A0F: ImpAdLdRf MemVar_74C760
  loc_708A12: NewIfNullPr Formx
  loc_708A15: from_stack_1v = Formx.global_4589716Get()
  loc_708A1A: FLdPr var_10C
  loc_708A1D: Formx.WindowState = from_stack_1
  loc_708A22: FFree1Str var_114
  loc_708A25: FFree1Ad var_10C
  loc_708A28: LitI2_Byte &HFF
  loc_708A2A: ILdPr
  loc_708A2D: Me.Enabled = from_stack_1b
  loc_708A32: ExitProc
  loc_708A33: LitI4 1
  loc_708A38: ILdRf var_88
  loc_708A3B: LitStr "M"
  loc_708A3E: LitI4 0
  loc_708A43: FnInStr4
  loc_708A45: LitI4 0
  loc_708A4A: NeI4
  loc_708A4B: BranchF loc_708AEF
  loc_708A4E: LitI2_Byte 0
  loc_708A50: ILdPr
  loc_708A53: Me.Enabled = from_stack_1b
  loc_708A58: ImpAdCallI2 Proc_166_9_5EE158()
  loc_708A5D: BranchF loc_708A7A
  loc_708A60: LitStr "M"
  loc_708A63: FStStrCopy var_114
  loc_708A66: FLdRfVar var_114
  loc_708A69: ImpAdLdRf MemVar_74C760
  loc_708A6C: NewIfNullPr Formx
  loc_708A6F: Call Formx.ImpresionReporte(from_stack_1v)
  loc_708A74: FFree1Str var_114
  loc_708A77: Branch loc_708AE4
  loc_708A7A: FLdRfVar var_116
  loc_708A7D: FLdRfVar var_90
  loc_708A80: CVarRef
  loc_708A85: LitI2_Byte &HFF
  loc_708A87: PopTmpLdAd2 var_10E
  loc_708A8A: LitStr "M"
  loc_708A8D: FStStrCopy var_114
  loc_708A90: FLdRfVar var_114
  loc_708A93: FLdRfVar var_10C
  loc_708A96: ImpAdLdRf MemVar_74C760
  loc_708A99: NewIfNullPr Formx
  loc_708A9C: from_stack_1v = Formx.global_4589716Get()
  loc_708AA1: FLdPr var_10C
  loc_708AA4: Formx.WindowState = from_stack_1
  loc_708AA9: FFree1Str var_114
  loc_708AAC: FFree1Ad var_10C
  loc_708AAF: FLdRfVar var_116
  loc_708AB2: FLdRfVar var_90
  loc_708AB5: CVarRef
  loc_708ABA: LitI2_Byte 0
  loc_708ABC: PopTmpLdAd2 var_10E
  loc_708ABF: LitStr "M"
  loc_708AC2: FStStrCopy var_114
  loc_708AC5: FLdRfVar var_114
  loc_708AC8: FLdRfVar var_10C
  loc_708ACB: ImpAdLdRf MemVar_74C760
  loc_708ACE: NewIfNullPr Formx
  loc_708AD1: from_stack_1v = Formx.global_4589716Get()
  loc_708AD6: FLdPr var_10C
  loc_708AD9: Formx.WindowState = from_stack_1
  loc_708ADE: FFree1Str var_114
  loc_708AE1: FFree1Ad var_10C
  loc_708AE4: LitI2_Byte &HFF
  loc_708AE6: ILdPr
  loc_708AE9: Me.Enabled = from_stack_1b
  loc_708AEE: ExitProc
  loc_708AEF: LitI4 1
  loc_708AF4: ILdRf var_88
  loc_708AF7: LitStr "G"
  loc_708AFA: LitI4 0
  loc_708AFF: FnInStr4
  loc_708B01: LitI4 0
  loc_708B06: NeI4
  loc_708B07: BranchF loc_708C31
  loc_708B0A: LitI2_Byte 0
  loc_708B0C: ILdPr
  loc_708B0F: Me.Enabled = from_stack_1b
  loc_708B14: FLdRfVar var_10E
  loc_708B17: FLdRfVar var_9C
  loc_708B1A: FLdRfVar var_10C
  loc_708B1D: ImpAdLdRf MemVar_74C760
  loc_708B20: NewIfNullPr Formx
  loc_708B23: from_stack_1v = Formx.global_4589716Get()
  loc_708B28: FLdPr var_10C
  loc_708B2B: Call 0.Method_arg_31C ()
  loc_708B30: FLdI2 var_10E
  loc_708B33: NotI4
  loc_708B34: FFree1Ad var_10C
  loc_708B37: BranchF loc_708B70
  loc_708B3A: FLdRfVar var_D8
  loc_708B3D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_708B42: FLdRfVar var_D8
  loc_708B45: CBoolVarNull
  loc_708B47: FFree1Var var_D8 = ""
  loc_708B4A: BranchF loc_708B6D
  loc_708B4D: LitI2_Byte 0
  loc_708B4F: ILdPr
  loc_708B52: Formx.Timer.Enabled = from_stack_1b
  loc_708B57: ILdI4 arg_10
  loc_708B5A: FStAdNoPop
  loc_708B5E: ImpAdLdRf MemVar_7520D4
  loc_708B61: NewIfNullPr Global
  loc_708B64: Global.Unload from_stack_1
  loc_708B69: FFree1Ad var_10C
  loc_708B6C: ExitProc
  loc_708B6D: Branch loc_708B14
  loc_708B70: LitI2_Byte &HFF
  loc_708B72: ImpAdLdRf MemVar_74DC6C
  loc_708B75: NewIfNullPr Reportes_Anteriores
  loc_708B78: Call Reportes_Anteriores.ImprimirPut(from_stack_1v)
  loc_708B7D: FLdRfVar var_D8
  loc_708B80: ImpAdLdRf MemVar_74DC6C
  loc_708B83: NewIfNullPr Reportes_Anteriores
  loc_708B86: from_stack_1v = Reportes_Anteriores.CargarMotivosCierre()
  loc_708B8B: FFree1Var var_D8 = ""
  loc_708B8E: LitVarI2 var_D8, 3
  loc_708B93: LitI4 1
  loc_708B98: FLdRfVar var_9C
  loc_708B9B: CVarRef
  loc_708BA0: FLdRfVar var_E8
  loc_708BA3: ImpAdCallFPR4  = Mid(, , )
  loc_708BA8: LitVar_Missing var_108
  loc_708BAB: LitI4 4
  loc_708BB0: FLdRfVar var_9C
  loc_708BB3: CVarRef
  loc_708BB8: FLdRfVar var_138
  loc_708BBB: ImpAdCallFPR4  = Mid(, , )
  loc_708BC0: FLdRfVar var_14C
  loc_708BC3: FLdRfVar var_138
  loc_708BC6: CStrVarTmp
  loc_708BC7: PopTmpLdAdStr
  loc_708BCB: FLdRfVar var_E8
  loc_708BCE: CStrVarTmp
  loc_708BCF: PopTmpLdAdStr
  loc_708BD3: ImpAdLdRf MemVar_74DCA8
  loc_708BD6: NewIfNullPr TiposCierres
  loc_708BD9: from_stack_3v = TiposCierres.ImprimirCierreStartUp(from_stack_1v, from_stack_2v)
  loc_708BDE: FFreeStr var_114 = ""
  loc_708BE5: FFreeVar var_D8 = "": var_108 = "": var_E8 = "": var_138 = ""
  loc_708BF2: LitVarI2 var_D8, 3
  loc_708BF7: LitI4 1
  loc_708BFC: FLdRfVar var_9C
  loc_708BFF: CVarRef
  loc_708C04: FLdRfVar var_E8
  loc_708C07: ImpAdCallFPR4  = Mid(, , )
  loc_708C0C: FLdRfVar var_E8
  loc_708C0F: LitVarStr var_F8, "001"
  loc_708C14: HardType
  loc_708C15: EqVarBool
  loc_708C17: FFreeVar var_D8 = ""
  loc_708C1E: BranchF loc_708C26
  loc_708C21: ImpAdCallFPR4 Proc_166_10_693A48()
  loc_708C26: LitI2_Byte &HFF
  loc_708C28: ILdPr
  loc_708C2B: TiposCierres.Timer.Enabled = from_stack_1b
  loc_708C30: ExitProc
  loc_708C31: LitI4 1
  loc_708C36: ILdRf var_88
  loc_708C39: LitStr "P"
  loc_708C3C: LitI4 0
  loc_708C41: FnInStr4
  loc_708C43: LitI4 0
  loc_708C48: NeI4
  loc_708C49: BranchF loc_708EE2
  loc_708C4C: LitVarI2 var_D8, 1
  loc_708C51: LitI4 &HC
  loc_708C56: ImpAdLdI4 MemVar_74BEAC
  loc_708C59: ImpAdCallI2 Mid$(, , )
  loc_708C5E: FStStrNoPop var_114
  loc_708C61: LitStr "1"
  loc_708C64: EqStr
  loc_708C66: FFree1Str var_114
  loc_708C69: FFree1Var var_D8 = ""
  loc_708C6C: BranchF loc_708DB1
  loc_708C6F: LitI2_Byte 0
  loc_708C71: ILdPr
  loc_708C74: Me.Enabled = from_stack_1b
  loc_708C79: FLdRfVar var_10E
  loc_708C7C: FLdRfVar var_A4
  loc_708C7F: NewIfNullRf
  loc_708C83: FLdRfVar var_A0
  loc_708C86: NewIfNullPr CMsgPrice
  loc_708C8E: FLdI2 var_10E
  loc_708C91: BranchF loc_708D0C
  loc_708C94: FLdRfVar var_D8
  loc_708C97: LitI2_Byte &HFF
  loc_708C99: PopTmpLdAd2 var_10E
  loc_708C9C: FLdRfVar var_150
  loc_708C9F: NewIfNullPr PreciosConectividad
  loc_708CA2: from_stack_2v = PreciosConectividad.setAdvise(from_stack_1v)
  loc_708CA7: FFree1Var var_D8 = ""
  loc_708CAA: FLdRfVar var_D8
  loc_708CAD: FLdRfVar var_A4
  loc_708CB0: NewIfNullRf
  loc_708CB4: FLdRfVar var_150
  loc_708CB7: NewIfNullPr PreciosConectividad
  loc_708CBA: from_stack_2v = PreciosConectividad.setPrice(from_stack_1v)
  loc_708CBF: FFree1Var var_D8 = ""
  loc_708CC2: LitVarI2 var_D8, 3
  loc_708CC7: LitI4 1
  loc_708CCC: ImpAdLdRf MemVar_74BF90
  loc_708CCF: CVarRef
  loc_708CD4: FLdRfVar var_E8
  loc_708CD7: ImpAdCallFPR4  = Mid(, , )
  loc_708CDC: FLdRfVar var_E8
  loc_708CDF: LitVarStr var_F8, "\\."
  loc_708CE4: HardType
  loc_708CE5: EqVarBool
  loc_708CE7: FFreeVar var_D8 = ""
  loc_708CEE: BranchF loc_708D09
  loc_708CF1: LitVar_Missing var_C8
  loc_708CF4: PopAdLdVar
  loc_708CF5: LitVarI4
  loc_708CFD: PopAdLdVar
  loc_708CFE: FLdRfVar var_150
  loc_708D01: NewIfNullPr PreciosConectividad
  loc_708D04: PreciosConectividad.Show from_stack_1, from_stack_2
  loc_708D09: Branch loc_708D8C
  loc_708D0C: FLdRfVar var_13C
  loc_708D0F: LitVar_Missing var_204
  loc_708D12: LitVar_Missing var_1E4
  loc_708D15: LitVar_Missing var_1C4
  loc_708D18: LitVar_Missing var_1A4
  loc_708D1B: LitVar_Missing var_184
  loc_708D1E: LitVar_Missing var_14C
  loc_708D21: LitVar_Missing var_138
  loc_708D24: LitVar_Missing var_108
  loc_708D27: LitVar_Missing var_E8
  loc_708D2A: LitVar_Missing var_D8
  loc_708D2D: LitStr "Se produjo un error al intentar mostrar el cambio de precios."
  loc_708D30: FStStrCopy var_114
  loc_708D33: FLdRfVar var_114
  loc_708D36: LitI4 &HA
  loc_708D3B: PopTmpLdAdStr var_154
  loc_708D3E: LitI2_Byte &H23
  loc_708D40: PopTmpLdAd2 var_10E
  loc_708D43: ImpAdLdRf MemVar_74C7D0
  loc_708D46: NewIfNullPr clsMsg
  loc_708D49: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_708D4E: LitVar_Missing var_264
  loc_708D51: LitVar_Missing var_244
  loc_708D54: ImpAdLdRf MemVar_74BF24
  loc_708D57: CVarRef
  loc_708D5C: LitI4 &H40
  loc_708D61: FLdZeroAd var_13C
  loc_708D64: CVarStr var_214
  loc_708D67: ImpAdCallFPR4 MsgBox(, , , , )
  loc_708D6C: FFree1Str var_114
  loc_708D6F: FFreeVar var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_14C = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_244 = ""
  loc_708D8C: LitNothing
  loc_708D8E: CastAd
  loc_708D91: FStAdFunc var_A0
  loc_708D94: LitNothing
  loc_708D96: CastAd
  loc_708D99: FStAdFunc var_A4
  loc_708D9C: LitNothing
  loc_708D9E: CastAd
  loc_708DA1: FStAdFunc var_150
  loc_708DA4: LitI2_Byte &HFF
  loc_708DA6: ILdPr
  loc_708DA9: Me.Enabled = from_stack_1b
  loc_708DAE: Branch loc_708EE2
  loc_708DB1: LitVarI2 var_D8, 1
  loc_708DB6: LitI4 4
  loc_708DBB: ImpAdLdI4 MemVar_74BEAC
  loc_708DBE: ImpAdCallI2 Mid$(, , )
  loc_708DC3: FStStrNoPop var_114
  loc_708DC6: LitStr "1"
  loc_708DC9: EqStr
  loc_708DCB: FFree1Str var_114
  loc_708DCE: FFree1Var var_D8 = ""
  loc_708DD1: BranchF loc_708EAB
  loc_708DD4: LitI2_Byte 0
  loc_708DD6: ILdPr
  loc_708DD9: Me.Enabled = from_stack_1b
  loc_708DDE: FLdRfVar var_D8
  loc_708DE1: FLdRfVar var_26C
  loc_708DE4: FLdRfVar var_10C
  loc_708DE7: ImpAdLdRf MemVar_74C760
  loc_708DEA: NewIfNullPr Formx
  loc_708DED: from_stack_1v = Formx.global_4589716Get()
  loc_708DF2: FLdPr var_10C
  loc_708DF5: Call 0.Method_arg_184 ()
  loc_708DFA: FLdRfVar var_D8
  loc_708DFD: NotVar var_E8
  loc_708E01: CBoolVarNull
  loc_708E03: FFree1Ad var_10C
  loc_708E06: FFree1Var var_D8 = ""
  loc_708E09: BranchF loc_708E35
  loc_708E0C: FLdRfVar var_D8
  loc_708E0F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_708E14: FLdRfVar var_D8
  loc_708E17: CBoolVarNull
  loc_708E19: FFree1Var var_D8 = ""
  loc_708E1C: BranchF loc_708E32
  loc_708E1F: LitNothing
  loc_708E21: CastAd
  loc_708E24: FStAdFunc var_268
  loc_708E27: LitI2_Byte &HFF
  loc_708E29: ILdPr
  loc_708E2C: Formx.Timer.Enabled = from_stack_1b
  loc_708E31: ExitProc
  loc_708E32: Branch loc_708DDE
  loc_708E35: FLdRfVar var_26C
  loc_708E38: CVarRef
  loc_708E3D: FLdRfVar var_D8
  loc_708E40: ImpAdCallFPR4  = Trim()
  loc_708E45: FLdRfVar var_D8
  loc_708E48: CStrVarTmp
  loc_708E49: FStStr var_26C
  loc_708E4C: FFree1Var var_D8 = ""
  loc_708E4F: ILdRf var_26C
  loc_708E52: FnLenStr
  loc_708E53: LitI4 &HA
  loc_708E58: LtI4
  loc_708E59: BranchF loc_708E6F
  loc_708E5C: LitNothing
  loc_708E5E: CastAd
  loc_708E61: FStAdFunc var_268
  loc_708E64: LitI2_Byte &HFF
  loc_708E66: ILdPr
  loc_708E69: Me.Enabled = from_stack_1b
  loc_708E6E: ExitProc
  loc_708E6F: ILdRf var_26C
  loc_708E72: FLdRfVar var_268
  loc_708E75: NewIfNullPr NotiCamPrecio
  loc_708E78: Call NotiCamPrecio.cadenaPut(from_stack_1v)
  loc_708E7D: LitVar_Missing var_C8
  loc_708E80: PopAdLdVar
  loc_708E81: LitVarI4
  loc_708E89: PopAdLdVar
  loc_708E8A: FLdRfVar var_268
  loc_708E8D: NewIfNullPr NotiCamPrecio
  loc_708E90: NotiCamPrecio.Show from_stack_1, from_stack_2
  loc_708E95: LitNothing
  loc_708E97: CastAd
  loc_708E9A: FStAdFunc var_268
  loc_708E9D: LitI2_Byte &HFF
  loc_708E9F: ILdPr
  loc_708EA2: Me.Enabled = from_stack_1b
  loc_708EA7: ExitProc
  loc_708EA8: Branch loc_708EE2
  loc_708EAB: FLdRfVar var_10E
  loc_708EAE: FLdRfVar var_A4
  loc_708EB1: NewIfNullRf
  loc_708EB5: FLdRfVar var_A0
  loc_708EB8: NewIfNullPr CMsgPrice
  loc_708EC0: FLdI2 var_10E
  loc_708EC3: BranchF loc_708EE2
  loc_708EC6: New Me
  loc_708ECA: FStAdFunc var_A8
  loc_708ECD: FLdRfVar var_A4
  loc_708ED0: NewIfNullAd
  loc_708ED3: FStAdNoPop
  loc_708ED7: FLdPr var_A8
  loc_708EDA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_708EDF: FFree1Ad var_10C
  loc_708EE2: LitVarI2 var_D8, 1
  loc_708EE7: LitI4 4
  loc_708EEC: ImpAdLdRf MemVar_74BEAC
  loc_708EEF: CVarRef
  loc_708EF4: FLdRfVar var_E8
  loc_708EF7: ImpAdCallFPR4  = Mid(, , )
  loc_708EFC: FLdRfVar var_E8
  loc_708EFF: LitVarStr var_F8, "1"
  loc_708F04: HardType
  loc_708F05: EqVarBool
  loc_708F07: FFreeVar var_D8 = ""
  loc_708F0E: BranchF loc_708FA2
  loc_708F11: LitI4 1
  loc_708F16: ILdRf var_88
  loc_708F19: LitStr "B"
  loc_708F1C: LitI4 0
  loc_708F21: FnInStr4
  loc_708F23: LitI4 0
  loc_708F28: NeI4
  loc_708F29: BranchF loc_708F69
  loc_708F2C: FLdRfVar var_10E
  loc_708F2F: ImpAdLdRf MemVar_74C760
  loc_708F32: NewIfNullPr Formx
  loc_708F35: VCallAd Control_ID_MnuDebitosN
  loc_708F38: FStAdFunc var_10C
  loc_708F3B: FLdPr var_10C
  loc_708F3E:  = Formx.Menu.Visible
  loc_708F43: FLdI2 var_10E
  loc_708F46: NotI4
  loc_708F47: FFree1Ad var_10C
  loc_708F4A: BranchF loc_708F66
  loc_708F4D: LitI2_Byte &HFF
  loc_708F4F: ImpAdLdRf MemVar_74C760
  loc_708F52: NewIfNullPr Formx
  loc_708F55: VCallAd Control_ID_MnuDebitosN
  loc_708F58: FStAdFunc var_10C
  loc_708F5B: FLdPr var_10C
  loc_708F5E: Formx.Menu.Visible = from_stack_1b
  loc_708F63: FFree1Ad var_10C
  loc_708F66: Branch loc_708FA2
  loc_708F69: FLdRfVar var_10E
  loc_708F6C: ImpAdLdRf MemVar_74C760
  loc_708F6F: NewIfNullPr Formx
  loc_708F72: VCallAd Control_ID_MnuDebitosN
  loc_708F75: FStAdFunc var_10C
  loc_708F78: FLdPr var_10C
  loc_708F7B:  = Formx.Menu.Visible
  loc_708F80: FLdI2 var_10E
  loc_708F83: FFree1Ad var_10C
  loc_708F86: BranchF loc_708FA2
  loc_708F89: LitI2_Byte 0
  loc_708F8B: ImpAdLdRf MemVar_74C760
  loc_708F8E: NewIfNullPr Formx
  loc_708F91: VCallAd Control_ID_MnuDebitosN
  loc_708F94: FStAdFunc var_10C
  loc_708F97: FLdPr var_10C
  loc_708F9A: Formx.Menu.Visible = from_stack_1b
  loc_708F9F: FFree1Ad var_10C
  loc_708FA2: LitI4 1
  loc_708FA7: ILdRf var_88
  loc_708FAA: LitStr "F"
  loc_708FAD: LitI4 0
  loc_708FB2: FnInStr4
  loc_708FB4: LitI4 0
  loc_708FB9: NeI4
  loc_708FBA: BranchF loc_7091EC
  loc_708FBD: FLdRfVar var_10E
  loc_708FC0: FLdRfVar var_10C
  loc_708FC3: ImpAdLdRf MemVar_74C760
  loc_708FC6: NewIfNullPr Formx
  loc_708FC9: from_stack_1v = Formx.global_4589716Get()
  loc_708FCE: FLdPr var_10C
  loc_708FD1: Formx.RightToLeft = from_stack_1b
  loc_708FD6: FFree1Ad var_10C
  loc_708FD9: LitVarI2 var_D8, 1
  loc_708FDE: LitI4 &HC
  loc_708FE3: ImpAdLdI4 MemVar_74BEAC
  loc_708FE6: ImpAdCallI2 Mid$(, , )
  loc_708FEB: FStStrNoPop var_114
  loc_708FEE: LitStr "1"
  loc_708FF1: NeStr
  loc_708FF3: LitVarI2 var_E8, 1
  loc_708FF8: LitI4 4
  loc_708FFD: ImpAdLdI4 MemVar_74BEAC
  loc_709000: ImpAdCallI2 Mid$(, , )
  loc_709005: FStStrNoPop var_13C
  loc_709008: LitStr "1"
  loc_70900B: NeStr
  loc_70900D: OrI4
  loc_70900E: FFreeStr var_114 = ""
  loc_709015: FFreeVar var_D8 = ""
  loc_70901C: BranchF loc_7091D5
  loc_70901F: LitStr "CEM44.INI"
  loc_709022: FLdRfVar var_270
  loc_709025: CStr2Ansi
  loc_709026: ILdRf var_270
  loc_709029: LitI4 0
  loc_70902E: LitStr "HIDE_PRICE_MSG"
  loc_709031: FLdRfVar var_13C
  loc_709034: CStr2Ansi
  loc_709035: ILdRf var_13C
  loc_709038: LitStr "GENERAL"
  loc_70903B: FLdRfVar var_114
  loc_70903E: CStr2Ansi
  loc_70903F: ILdRf var_114
  loc_709042: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_709047: FStR4 var_154
  loc_70904A: SetLastSystemError
  loc_70904B: ILdRf var_154
  loc_70904E: LitI4 0
  loc_709053: EqI4
  loc_709054: FFreeStr var_114 = "": var_13C = ""
  loc_70905D: BranchF loc_7091D5
  loc_709060: FLdRfVar var_13C
  loc_709063: LitVar_Missing var_204
  loc_709066: LitVar_Missing var_1E4
  loc_709069: LitVar_Missing var_1C4
  loc_70906C: LitVar_Missing var_1A4
  loc_70906F: LitVar_Missing var_184
  loc_709072: LitVar_Missing var_14C
  loc_709075: LitVar_Missing var_138
  loc_709078: LitVar_Missing var_108
  loc_70907B: LitVar_Missing var_E8
  loc_70907E: LitVar_Missing var_D8
  loc_709081: LitStr "Cambio de Precios Finalizado"
  loc_709084: FStStrCopy var_114
  loc_709087: FLdRfVar var_114
  loc_70908A: LitI4 1
  loc_70908F: PopTmpLdAdStr var_154
  loc_709092: LitI2_Byte &H23
  loc_709094: PopTmpLdAd2 var_10E
  loc_709097: ImpAdLdRf MemVar_74C7D0
  loc_70909A: NewIfNullPr clsMsg
  loc_70909D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7090A2: ILdRf var_13C
  loc_7090A5: ImpAdLdRf MemVar_74CAB0
  loc_7090A8: NewIfNullPr frmNotificacion
  loc_7090AB: Call frmNotificacion.sTitlePut(from_stack_1v)
  loc_7090B0: FFreeStr var_114 = ""
  loc_7090B7: FFreeVar var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_14C = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_7090CE: FLdRfVar var_13C
  loc_7090D1: LitVar_Missing var_204
  loc_7090D4: LitVar_Missing var_1E4
  loc_7090D7: LitVar_Missing var_1C4
  loc_7090DA: LitVar_Missing var_1A4
  loc_7090DD: LitVar_Missing var_184
  loc_7090E0: LitVar_Missing var_14C
  loc_7090E3: LitVar_Missing var_138
  loc_7090E6: LitVar_Missing var_108
  loc_7090E9: LitVar_Missing var_E8
  loc_7090EC: LitVar_Missing var_D8
  loc_7090EF: LitStr "Sr. Operador:"
  loc_7090F2: FStStrCopy var_114
  loc_7090F5: FLdRfVar var_114
  loc_7090F8: LitI4 2
  loc_7090FD: PopTmpLdAdStr var_154
  loc_709100: LitI2_Byte &H23
  loc_709102: PopTmpLdAd2 var_10E
  loc_709105: ImpAdLdRf MemVar_74C7D0
  loc_709108: NewIfNullPr clsMsg
  loc_70910B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709110: ILdRf var_13C
  loc_709113: LitI4 &HD
  loc_709118: ImpAdCallI2 Chr$()
  loc_70911D: FStStrNoPop var_270
  loc_709120: ConcatStr
  loc_709121: FStStrNoPop var_274
  loc_709124: LitStr "          "
  loc_709127: ConcatStr
  loc_709128: FStStrNoPop var_364
  loc_70912B: FLdRfVar var_360
  loc_70912E: LitVar_Missing var_35C
  loc_709131: LitVar_Missing var_33C
  loc_709134: LitVar_Missing var_31C
  loc_709137: LitVar_Missing var_2FC
  loc_70913A: LitVar_Missing var_2DC
  loc_70913D: LitVar_Missing var_2BC
  loc_709140: LitVar_Missing var_29C
  loc_709143: LitVar_Missing var_264
  loc_709146: LitVar_Missing var_244
  loc_709149: LitVar_Missing var_214
  loc_70914C: LitStr "El cambio de precios ha concluido exitosamente."
  loc_70914F: FStStrCopy var_27C
  loc_709152: FLdRfVar var_27C
  loc_709155: LitI4 3
  loc_70915A: PopTmpLdAdStr var_278
  loc_70915D: LitI2_Byte &H23
  loc_70915F: PopTmpLdAd2 var_116
  loc_709162: ImpAdLdRf MemVar_74C7D0
  loc_709165: NewIfNullPr clsMsg
  loc_709168: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70916D: ILdRf var_360
  loc_709170: ConcatStr
  loc_709171: FStStrNoPop var_368
  loc_709174: ImpAdLdRf MemVar_74CAB0
  loc_709177: NewIfNullPr frmNotificacion
  loc_70917A: Call frmNotificacion.sMessagePut(from_stack_1v)
  loc_70917F: FFreeStr var_114 = "": var_13C = "": var_270 = "": var_274 = "": var_27C = "": var_364 = "": var_360 = ""
  loc_709192: FFreeVar var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_14C = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_244 = "": var_264 = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_7091BD: LitVar_Missing var_C8
  loc_7091C0: PopAdLdVar
  loc_7091C1: LitVarI4
  loc_7091C9: PopAdLdVar
  loc_7091CA: ImpAdLdRf MemVar_74CAB0
  loc_7091CD: NewIfNullPr frmNotificacion
  loc_7091D0: frmNotificacion.Show from_stack_1, from_stack_2
  loc_7091D5: ImpAdLdRf MemVar_74D8B0
  loc_7091D8: NewIfNullPr Consola
  loc_7091DB: Call Consola.RefreshAllTotals()
  loc_7091E0: ImpAdLdRf MemVar_74D8B0
  loc_7091E3: NewIfNullPr Consola
  loc_7091E6: Call Consola.ActualizarDatosPump()
  loc_7091EB: ExitProc
  loc_7091EC: LitI4 1
  loc_7091F1: ILdRf var_88
  loc_7091F4: LitStr "R"
  loc_7091F7: LitI4 0
  loc_7091FC: FnInStr4
  loc_7091FE: LitI4 0
  loc_709203: NeI4
  loc_709204: BranchF loc_709472
  loc_709207: FLdRfVar var_D8
  loc_70920A: FLdRfVar var_8C
  loc_70920D: FLdRfVar var_10C
  loc_709210: ImpAdLdRf MemVar_74C760
  loc_709213: NewIfNullPr Formx
  loc_709216: from_stack_1v = Formx.global_4589716Get()
  loc_70921B: FLdPr var_10C
  loc_70921E:  = Formx.HelpContextID
  loc_709223: FLdRfVar var_D8
  loc_709226: NotVar var_E8
  loc_70922A: CBoolVarNull
  loc_70922C: FFree1Ad var_10C
  loc_70922F: FFree1Var var_D8 = ""
  loc_709232: BranchF loc_70926B
  loc_709235: FLdRfVar var_D8
  loc_709238: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70923D: FLdRfVar var_D8
  loc_709240: CBoolVarNull
  loc_709242: FFree1Var var_D8 = ""
  loc_709245: BranchF loc_709268
  loc_709248: LitI2_Byte 0
  loc_70924A: ILdPr
  loc_70924D: Me.Enabled = from_stack_1b
  loc_709252: ILdI4 arg_10
  loc_709255: FStAdNoPop
  loc_709259: ImpAdLdRf MemVar_7520D4
  loc_70925C: NewIfNullPr Global
  loc_70925F: Global.Unload from_stack_1
  loc_709264: FFree1Ad var_10C
  loc_709267: ExitProc
  loc_709268: Branch loc_709207
  loc_70926B: LitI2_Byte 0
  loc_70926D: ILdPr
  loc_709270: Me.Enabled = from_stack_1b
  loc_709275: LitVarI2 var_D8, 1
  loc_70927A: LitI4 4
  loc_70927F: ImpAdLdRf MemVar_74BEAC
  loc_709282: CVarRef
  loc_709287: FLdRfVar var_E8
  loc_70928A: ImpAdCallFPR4  = Mid(, , )
  loc_70928F: FLdRfVar var_E8
  loc_709292: LitVarStr var_F8, "1"
  loc_709297: HardType
  loc_709298: EqVarBool
  loc_70929A: FFreeVar var_D8 = ""
  loc_7092A1: BranchF loc_7092E3
  loc_7092A4: LitVarI2 var_D8, 1
  loc_7092A9: LitI4 4
  loc_7092AE: ImpAdLdI4 MemVar_74BEAC
  loc_7092B1: ImpAdCallI2 Mid$(, , )
  loc_7092B6: FStStrNoPop var_114
  loc_7092B9: LitStr "1"
  loc_7092BC: EqStr
  loc_7092BE: FFree1Str var_114
  loc_7092C1: FFree1Var var_D8 = ""
  loc_7092C4: BranchF loc_7092D8
  loc_7092C7: LitVar_Missing var_D8
  loc_7092CA: ILdRf var_8C
  loc_7092CD: LitStr "R"
  loc_7092D0: ImpAdCallFPR4 Proc_87_5_73E7D8(, , )
  loc_7092D5: FFree1Var var_D8 = ""
  loc_7092D8: LitI2_Byte &HFF
  loc_7092DA: ILdPr
  loc_7092DD: Me.Enabled = from_stack_1b
  loc_7092E2: ExitProc
  loc_7092E3: FLdRfVar var_D8
  loc_7092E6: FLdRfVar var_98
  loc_7092E9: FLdRfVar var_8C
  loc_7092EC: LitStr "1"
  loc_7092EF: FStStrCopy var_13C
  loc_7092F2: FLdRfVar var_13C
  loc_7092F5: LitStr "R"
  loc_7092F8: FStStrCopy var_114
  loc_7092FB: FLdRfVar var_114
  loc_7092FE: FLdRfVar var_10C
  loc_709301: ImpAdLdRf MemVar_74C760
  loc_709304: NewIfNullPr Formx
  loc_709307: from_stack_1v = Formx.global_4589716Get()
  loc_70930C: FLdPr var_10C
  loc_70930F:  = Formx.FontBold
  loc_709314: FLdRfVar var_D8
  loc_709317: NotVar var_E8
  loc_70931B: CBoolVarNull
  loc_70931D: FFreeStr var_114 = ""
  loc_709324: FFree1Ad var_10C
  loc_709327: FFree1Var var_D8 = ""
  loc_70932A: BranchF loc_709344
  loc_70932D: FLdRfVar var_D8
  loc_709330: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_709335: FLdRfVar var_D8
  loc_709338: CBoolVarNull
  loc_70933A: FFree1Var var_D8 = ""
  loc_70933D: BranchF loc_709341
  loc_709340: ExitProc
  loc_709341: Branch loc_7092E3
  loc_709344: FLdRfVar var_98
  loc_709347: CVarRef
  loc_70934C: FLdRfVar var_D8
  loc_70934F: ImpAdCallFPR4  = Trim()
  loc_709354: FLdRfVar var_D8
  loc_709357: CStrVarTmp
  loc_709358: FStStr var_98
  loc_70935B: FFree1Var var_D8 = ""
  loc_70935E: LitI2_Byte &HFF
  loc_709360: ImpAdLdRf MemVar_74DC6C
  loc_709363: NewIfNullPr Reportes_Anteriores
  loc_709366: Call Reportes_Anteriores.ImprimirPut(from_stack_1v)
  loc_70936B: FLdRfVar var_10E
  loc_70936E: FLdRfVar var_98
  loc_709371: ImpAdLdRf MemVar_74DC6C
  loc_709374: NewIfNullPr Reportes_Anteriores
  loc_709377: from_stack_2v = Reportes_Anteriores.ArmarReporteConectividad(from_stack_1v)
  loc_70937C: FLdI2 var_10E
  loc_70937F: BranchF loc_709433
  loc_709382: FLdRfVar var_D8
  loc_709385: FLdRfVar var_98
  loc_709388: FLdRfVar var_8C
  loc_70938B: LitStr "A"
  loc_70938E: FStStrCopy var_13C
  loc_709391: FLdRfVar var_13C
  loc_709394: LitStr "R"
  loc_709397: FStStrCopy var_114
  loc_70939A: FLdRfVar var_114
  loc_70939D: FLdRfVar var_10C
  loc_7093A0: ImpAdLdRf MemVar_74C760
  loc_7093A3: NewIfNullPr Formx
  loc_7093A6: from_stack_1v = Formx.global_4589716Get()
  loc_7093AB: FLdPr var_10C
  loc_7093AE:  = Formx.FontBold
  loc_7093B3: FLdRfVar var_D8
  loc_7093B6: NotVar var_E8
  loc_7093BA: CBoolVarNull
  loc_7093BC: FFreeStr var_114 = ""
  loc_7093C3: FFree1Ad var_10C
  loc_7093C6: FFree1Var var_D8 = ""
  loc_7093C9: BranchF loc_7093E3
  loc_7093CC: FLdRfVar var_D8
  loc_7093CF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7093D4: FLdRfVar var_D8
  loc_7093D7: CBoolVarNull
  loc_7093D9: FFree1Var var_D8 = ""
  loc_7093DC: BranchF loc_7093E0
  loc_7093DF: ExitProc
  loc_7093E0: Branch loc_709382
  loc_7093E3: ILdRf var_98
  loc_7093E6: FnLenStr
  loc_7093E7: LitI4 5
  loc_7093EC: GtI4
  loc_7093ED: BranchF loc_70940A
  loc_7093F0: FLdRfVar var_10E
  loc_7093F3: ILdRf var_98
  loc_7093F6: FStStrCopy var_114
  loc_7093F9: FLdRfVar var_114
  loc_7093FC: ImpAdLdRf MemVar_74DC6C
  loc_7093FF: NewIfNullPr Reportes_Anteriores
  loc_709402: from_stack_2v = Reportes_Anteriores.ArmarReporteAnexoIII(from_stack_1v)
  loc_709407: FFree1Str var_114
  loc_70940A: FLdRfVar var_270
  loc_70940D: LitStr "Reporte de Cierre"
  loc_709410: FStStrCopy var_13C
  loc_709413: FLdRfVar var_13C
  loc_709416: LitStr "\cierreAgrup.rpt"
  loc_709419: FStStrCopy var_114
  loc_70941C: FLdRfVar var_114
  loc_70941F: ImpAdLdRf MemVar_74DC6C
  loc_709422: NewIfNullPr Reportes_Anteriores
  loc_709425: from_stack_3v = Reportes_Anteriores.MostrarReporte(from_stack_1v, from_stack_2v)
  loc_70942A: FFreeStr var_114 = "": var_13C = ""
  loc_709433: LitVarI2 var_D8, 1
  loc_709438: LitI4 4
  loc_70943D: ImpAdLdI4 MemVar_74BEAC
  loc_709440: ImpAdCallI2 Mid$(, , )
  loc_709445: FStStrNoPop var_114
  loc_709448: LitStr "1"
  loc_70944B: EqStr
  loc_70944D: FFree1Str var_114
  loc_709450: FFree1Var var_D8 = ""
  loc_709453: BranchF loc_709467
  loc_709456: LitVar_Missing var_D8
  loc_709459: ILdRf var_8C
  loc_70945C: LitStr "R"
  loc_70945F: ImpAdCallFPR4 Proc_87_5_73E7D8(, , )
  loc_709464: FFree1Var var_D8 = ""
  loc_709467: LitI2_Byte &HFF
  loc_709469: ILdPr
  loc_70946C: Reportes_Anteriores.Timer.Enabled = from_stack_1b
  loc_709471: ExitProc
  loc_709472: LitI4 1
  loc_709477: ILdRf var_88
  loc_70947A: LitStr "Z"
  loc_70947D: LitI4 0
  loc_709482: FnInStr4
  loc_709484: LitI4 0
  loc_709489: NeI4
  loc_70948A: BranchF loc_70950A
  loc_70948D: LitI2_Byte 0
  loc_70948F: ILdPr
  loc_709492: Me.Enabled = from_stack_1b
  loc_709497: LitVarI2 var_D8, 1
  loc_70949C: LitI4 4
  loc_7094A1: ImpAdLdI4 MemVar_74BEAC
  loc_7094A4: ImpAdCallI2 Mid$(, , )
  loc_7094A9: FStStrNoPop var_114
  loc_7094AC: LitStr "1"
  loc_7094AF: EqStr
  loc_7094B1: FFree1Str var_114
  loc_7094B4: FFree1Var var_D8 = ""
  loc_7094B7: BranchF loc_7094D5
  loc_7094BA: LitVar_Missing var_C8
  loc_7094BD: PopAdLdVar
  loc_7094BE: LitVarI4
  loc_7094C6: PopAdLdVar
  loc_7094C7: FLdRfVar var_36C
  loc_7094CA: NewIfNullPr CambioCodificacionProducto
  loc_7094CD: CambioCodificacionProducto.Show from_stack_1, from_stack_2
  loc_7094D2: Branch loc_7094F7
  loc_7094D5: FLdRfVar var_D8
  loc_7094D8: FLdRfVar var_90
  loc_7094DB: FLdRfVar var_10C
  loc_7094DE: ImpAdLdRf MemVar_74C760
  loc_7094E1: NewIfNullPr Formx
  loc_7094E4: from_stack_1v = Formx.global_4589716Get()
  loc_7094E9: FLdPr var_10C
  loc_7094EC: Call 0.Method_arg_1A0 ()
  loc_7094F1: FFree1Ad var_10C
  loc_7094F4: FFree1Var var_D8 = ""
  loc_7094F7: LitNothing
  loc_7094F9: CastAd
  loc_7094FC: FStAdFunc var_36C
  loc_7094FF: LitI2_Byte &HFF
  loc_709501: ILdPr
  loc_709504: Formx.Timer.Enabled = from_stack_1b
  loc_709509: ExitProc
  loc_70950A: LitI4 1
  loc_70950F: ILdRf var_88
  loc_709512: LitStr "S"
  loc_709515: LitI4 0
  loc_70951A: FnInStr4
  loc_70951C: LitI4 0
  loc_709521: NeI4
  loc_709522: BranchF loc_70955A
  loc_709525: LitI2_Byte 0
  loc_709527: ILdPr
  loc_70952A: Me.Enabled = from_stack_1b
  loc_70952F: LitVar_Missing var_C8
  loc_709532: PopAdLdVar
  loc_709533: LitVarI4
  loc_70953B: PopAdLdVar
  loc_70953C: FLdRfVar var_370
  loc_70953F: NewIfNullPr frmCambioVersion
  loc_709542: frmCambioVersion.Show from_stack_1, from_stack_2
  loc_709547: LitNothing
  loc_709549: CastAd
  loc_70954C: FStAdFunc var_370
  loc_70954F: LitI2_Byte &HFF
  loc_709551: ILdPr
  loc_709554: Me.Enabled = from_stack_1b
  loc_709559: ExitProc
  loc_70955A: LitI4 1
  loc_70955F: ILdRf var_88
  loc_709562: LitStr "W"
  loc_709565: LitI4 0
  loc_70956A: FnInStr4
  loc_70956C: LitI4 0
  loc_709571: NeI4
  loc_709572: BranchF loc_709591
  loc_709575: LitI2_Byte &HFF
  loc_709577: ImpAdLdRf MemVar_74C760
  loc_70957A: NewIfNullPr Formx
  loc_70957D: VCallAd Control_ID_txtAviso
  loc_709580: FStAdFunc var_10C
  loc_709583: FLdPr var_10C
  loc_709586: Formx.TextBox.Visible = from_stack_1b
  loc_70958B: FFree1Ad var_10C
  loc_70958E: Branch loc_7095AA
  loc_709591: LitI2_Byte 0
  loc_709593: ImpAdLdRf MemVar_74C760
  loc_709596: NewIfNullPr Formx
  loc_709599: VCallAd Control_ID_txtAviso
  loc_70959C: FStAdFunc var_10C
  loc_70959F: FLdPr var_10C
  loc_7095A2: Formx.TextBox.Visible = from_stack_1b
  loc_7095A7: FFree1Ad var_10C
  loc_7095AA: LitStr "ConVolTicket"
  loc_7095AD: FStStrCopy var_114
  loc_7095B0: FLdRfVar var_114
  loc_7095B3: ImpAdCallI2 Proc_158_2_607130()
  loc_7095B8: NotI4
  loc_7095B9: FFree1Str var_114
  loc_7095BC: BranchF loc_709658
  loc_7095BF: LitI4 1
  loc_7095C4: ILdRf var_88
  loc_7095C7: LitStr "C"
  loc_7095CA: LitI4 0
  loc_7095CF: FnInStr4
  loc_7095D1: LitI4 0
  loc_7095D6: NeI4
  loc_7095D7: BranchF loc_709658
  loc_7095DA: LitI2_Byte 0
  loc_7095DC: ILdPr
  loc_7095DF: Me.Enabled = from_stack_1b
  loc_7095E4: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_7095E9: BranchF loc_70962F
  loc_7095EC: LitI2_Byte 1
  loc_7095EE: CUI1I2
  loc_7095F0: PopTmpLdAd1
  loc_7095F4: LitI2_Byte 0
  loc_7095F6: PopTmpLdAd1
  loc_7095FA: LitI4 0
  loc_7095FF: FStStrCopy var_270
  loc_709602: FLdRfVar var_270
  loc_709605: LitI4 0
  loc_70960A: FStStrCopy var_13C
  loc_70960D: FLdRfVar var_13C
  loc_709610: LitStr vbNullString
  loc_709613: FStStrCopy var_114
  loc_709616: FLdRfVar var_114
  loc_709619: LitI2_Byte &HFF
  loc_70961B: PopTmpLdAd2 var_10E
  loc_70961E: ImpAdCallFPR4 Proc_158_3_68A238(, , , , , )
  loc_709623: FFreeStr var_114 = "": var_13C = ""
  loc_70962C: Branch loc_70964E
  loc_70962F: FLdRfVar var_10E
  loc_709632: FLdRfVar var_90
  loc_709635: FLdRfVar var_10C
  loc_709638: ImpAdLdRf MemVar_74C760
  loc_70963B: NewIfNullPr Formx
  loc_70963E: from_stack_1v = Formx.global_4589716Get()
  loc_709643: FLdPr var_10C
  loc_709646: Call 0.Method_arg_22C ()
  loc_70964B: FFree1Ad var_10C
  loc_70964E: LitI2_Byte &HFF
  loc_709650: ILdPr
  loc_709653: Formx.Timer.Enabled = from_stack_1b
  loc_709658: LitI4 1
  loc_70965D: ILdRf var_88
  loc_709660: LitStr "A"
  loc_709663: LitI4 0
  loc_709668: FnInStr4
  loc_70966A: LitI4 0
  loc_70966F: NeI4
  loc_709670: BranchF loc_709700
  loc_709673: LitI2_Byte 0
  loc_709675: ILdPr
  loc_709678: Me.Enabled = from_stack_1b
  loc_70967D: LitVarI2 var_D8, 1
  loc_709682: LitI4 &HD
  loc_709687: ImpAdLdI4 MemVar_74BEAC
  loc_70968A: ImpAdCallI2 Mid$(, , )
  loc_70968F: FStStrNoPop var_114
  loc_709692: CUI1Str
  loc_709694: CI2UI1
  loc_709696: LitI2_Byte 1
  loc_709698: EqI2
  loc_709699: FFree1Str var_114
  loc_70969C: FFree1Var var_D8 = ""
  loc_70969F: BranchF loc_7096C7
  loc_7096A2: LitI2_Byte 0
  loc_7096A4: ImpAdLdRf MemVar_74DE58
  loc_7096A7: NewIfNullPr Remito
  loc_7096AA: Call Remito.FlagPut(from_stack_1v)
  loc_7096AF: LitVar_Missing var_C8
  loc_7096B2: PopAdLdVar
  loc_7096B3: LitVarI4
  loc_7096BB: PopAdLdVar
  loc_7096BC: ImpAdLdRf MemVar_74DE58
  loc_7096BF: NewIfNullPr Remito
  loc_7096C2: Remito.Show from_stack_1, from_stack_2
  loc_7096C7: LitStr "00000000"
  loc_7096CA: FLdRfVar var_378
  loc_7096CD: NewIfNullPr frmReporteCisterna
  loc_7096D0: Call frmReporteCisterna.fechaPut(from_stack_1v)
  loc_7096D5: LitVar_Missing var_C8
  loc_7096D8: PopAdLdVar
  loc_7096D9: LitVarI4
  loc_7096E1: PopAdLdVar
  loc_7096E2: FLdRfVar var_378
  loc_7096E5: NewIfNullPr frmReporteCisterna
  loc_7096E8: frmReporteCisterna.Show from_stack_1, from_stack_2
  loc_7096ED: LitNothing
  loc_7096EF: CastAd
  loc_7096F2: FStAdFunc var_378
  loc_7096F5: LitI2_Byte &HFF
  loc_7096F7: ILdPr
  loc_7096FA: Me.Enabled = from_stack_1b
  loc_7096FF: ExitProc
  loc_709700: ImpAdLdI2 MemVar_74C7B0
  loc_709703: NotI4
  loc_709704: BranchF loc_7098A3
  loc_709707: LitI4 1
  loc_70970C: ILdRf var_88
  loc_70970F: LitStr "N"
  loc_709712: LitI4 0
  loc_709717: FnInStr4
  loc_709719: LitI4 0
  loc_70971E: NeI4
  loc_70971F: CVarBoolI2 var_128
  loc_709723: LitVarI2 var_D8, 1
  loc_709728: LitI4 4
  loc_70972D: ImpAdLdRf MemVar_74BEAC
  loc_709730: CVarRef
  loc_709735: FLdRfVar var_E8
  loc_709738: ImpAdCallFPR4  = Mid(, , )
  loc_70973D: FLdRfVar var_E8
  loc_709740: LitVarStr var_F8, "1"
  loc_709745: HardType
  loc_709746: EqVar var_108
  loc_70974A: AndVar var_138
  loc_70974E: CBoolVarNull
  loc_709750: FFreeVar var_D8 = "": var_E8 = ""
  loc_709759: BranchF loc_7098A3
  loc_70975C: FLdRfVar var_10E
  loc_70975F: FLdRfVar var_10C
  loc_709762: ImpAdLdRf MemVar_74C760
  loc_709765: NewIfNullPr Formx
  loc_709768: from_stack_1v = Formx.global_4589716Get()
  loc_70976D: FLdPr var_10C
  loc_709770:  = Formx.Moveable
  loc_709775: FFree1Ad var_10C
  loc_709778: LitStr "NLP"
  loc_70977B: ImpAdLdRf MemVar_74CAB0
  loc_70977E: NewIfNullPr frmNotificacion
  loc_709781: Call frmNotificacion.sTitlePut(from_stack_1v)
  loc_709786: FLdRfVar var_13C
  loc_709789: LitVar_Missing var_204
  loc_70978C: LitVar_Missing var_1E4
  loc_70978F: LitVar_Missing var_1C4
  loc_709792: LitVar_Missing var_1A4
  loc_709795: LitVar_Missing var_184
  loc_709798: LitVar_Missing var_14C
  loc_70979B: LitVar_Missing var_138
  loc_70979E: LitVar_Missing var_108
  loc_7097A1: LitVar_Missing var_E8
  loc_7097A4: LitVar_Missing var_D8
  loc_7097A7: LitStr "Sr. Operador:"
  loc_7097AA: FStStrCopy var_114
  loc_7097AD: FLdRfVar var_114
  loc_7097B0: LitI4 2
  loc_7097B5: PopTmpLdAdStr var_154
  loc_7097B8: LitI2_Byte &H23
  loc_7097BA: PopTmpLdAd2 var_10E
  loc_7097BD: ImpAdLdRf MemVar_74C7D0
  loc_7097C0: NewIfNullPr clsMsg
  loc_7097C3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7097C8: ILdRf var_13C
  loc_7097CB: LitI4 &HD
  loc_7097D0: ImpAdCallI2 Chr$()
  loc_7097D5: FStStrNoPop var_270
  loc_7097D8: ConcatStr
  loc_7097D9: FStStrNoPop var_274
  loc_7097DC: LitI4 &HD
  loc_7097E1: ImpAdCallI2 Chr$()
  loc_7097E6: FStStrNoPop var_27C
  loc_7097E9: ConcatStr
  loc_7097EA: FStStrNoPop var_360
  loc_7097ED: LitStr "          "
  loc_7097F0: ConcatStr
  loc_7097F1: FStStrNoPop var_37C
  loc_7097F4: FLdRfVar var_368
  loc_7097F7: LitVar_Missing var_35C
  loc_7097FA: LitVar_Missing var_33C
  loc_7097FD: LitVar_Missing var_31C
  loc_709800: LitVar_Missing var_2FC
  loc_709803: LitVar_Missing var_2DC
  loc_709806: LitVar_Missing var_2BC
  loc_709809: LitVar_Missing var_29C
  loc_70980C: LitVar_Missing var_264
  loc_70980F: LitVar_Missing var_244
  loc_709812: LitVar_Missing var_214
  loc_709815: LitStr "Ha llegado una nueva NLP."
  loc_709818: FStStrCopy var_364
  loc_70981B: FLdRfVar var_364
  loc_70981E: LitI4 4
  loc_709823: PopTmpLdAdStr var_278
  loc_709826: LitI2_Byte &H23
  loc_709828: PopTmpLdAd2 var_116
  loc_70982B: ImpAdLdRf MemVar_74C7D0
  loc_70982E: NewIfNullPr clsMsg
  loc_709831: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709836: ILdRf var_368
  loc_709839: ConcatStr
  loc_70983A: FStStrNoPop var_380
  loc_70983D: ImpAdLdRf MemVar_74CAB0
  loc_709840: NewIfNullPr frmNotificacion
  loc_709843: Call frmNotificacion.sMessagePut(from_stack_1v)
  loc_709848: FFreeStr var_114 = "": var_13C = "": var_270 = "": var_274 = "": var_27C = "": var_360 = "": var_364 = "": var_37C = "": var_368 = ""
  loc_70985F: FFreeVar var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_14C = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_244 = "": var_264 = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_70988A: LitVar_Missing var_C8
  loc_70988D: PopAdLdVar
  loc_70988E: LitVarI4
  loc_709896: PopAdLdVar
  loc_709897: ImpAdLdRf MemVar_74CAB0
  loc_70989A: NewIfNullPr frmNotificacion
  loc_70989D: frmNotificacion.Show from_stack_1, from_stack_2
  loc_7098A2: ExitProc
  loc_7098A3: LitI4 1
  loc_7098A8: ILdRf var_88
  loc_7098AB: LitStr "H"
  loc_7098AE: LitI4 0
  loc_7098B3: FnInStr4
  loc_7098B5: LitI4 0
  loc_7098BA: NeI4
  loc_7098BB: BranchF loc_709A23
  loc_7098BE: FLdRfVar var_13C
  loc_7098C1: LitVar_Missing var_204
  loc_7098C4: LitVar_Missing var_1E4
  loc_7098C7: LitVar_Missing var_1C4
  loc_7098CA: LitVar_Missing var_1A4
  loc_7098CD: LitVar_Missing var_184
  loc_7098D0: LitVar_Missing var_14C
  loc_7098D3: LitVar_Missing var_138
  loc_7098D6: LitVar_Missing var_108
  loc_7098D9: LitVar_Missing var_E8
  loc_7098DC: LitVar_Missing var_D8
  loc_7098DF: LitStr "Un archivo de novedades de seguridad ha sido recepcionado."
  loc_7098E2: FStStrCopy var_114
  loc_7098E5: FLdRfVar var_114
  loc_7098E8: LitI4 &H12
  loc_7098ED: PopTmpLdAdStr var_154
  loc_7098F0: LitI2_Byte &H23
  loc_7098F2: PopTmpLdAd2 var_10E
  loc_7098F5: ImpAdLdRf MemVar_74C7D0
  loc_7098F8: NewIfNullPr clsMsg
  loc_7098FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709900: LitI4 &HD
  loc_709905: ImpAdCallI2 Chr$()
  loc_70990A: FStStr var_37C
  loc_70990D: FLdRfVar var_27C
  loc_709910: LitVar_Missing var_35C
  loc_709913: LitVar_Missing var_33C
  loc_709916: LitVar_Missing var_31C
  loc_709919: LitVar_Missing var_2FC
  loc_70991C: LitVar_Missing var_2DC
  loc_70991F: LitVar_Missing var_2BC
  loc_709922: LitVar_Missing var_29C
  loc_709925: LitVar_Missing var_264
  loc_709928: LitVar_Missing var_244
  loc_70992B: LitVar_Missing var_214
  loc_70992E: LitStr "Algunos niveles de seguridad han cambiado."
  loc_709931: FStStrCopy var_274
  loc_709934: FLdRfVar var_274
  loc_709937: LitI4 &H13
  loc_70993C: PopTmpLdAdStr var_278
  loc_70993F: LitI2_Byte &H23
  loc_709941: PopTmpLdAd2 var_116
  loc_709944: ImpAdLdRf MemVar_74C7D0
  loc_709947: NewIfNullPr clsMsg
  loc_70994A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70994F: FLdRfVar var_368
  loc_709952: LitVar_Missing var_4C4
  loc_709955: LitVar_Missing var_4A4
  loc_709958: LitVar_Missing var_484
  loc_70995B: LitVar_Missing var_464
  loc_70995E: LitVar_Missing var_444
  loc_709961: LitVar_Missing var_424
  loc_709964: LitVar_Missing var_404
  loc_709967: LitVar_Missing var_3E4
  loc_70996A: LitVar_Missing var_3C4
  loc_70996D: LitVar_Missing var_3A4
  loc_709970: LitStr "Aviso de Cambio de Seguridad"
  loc_709973: FStStrCopy var_364
  loc_709976: FLdRfVar var_364
  loc_709979: LitI4 &H14
  loc_70997E: PopTmpLdAdStr var_384
  loc_709981: LitI2_Byte &H23
  loc_709983: PopTmpLdAd2 var_372
  loc_709986: ImpAdLdRf MemVar_74C7D0
  loc_709989: NewIfNullPr clsMsg
  loc_70998C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_709991: LitVar_Missing var_524
  loc_709994: LitVar_Missing var_504
  loc_709997: FLdZeroAd var_368
  loc_70999A: CVarStr var_4E4
  loc_70999D: LitI4 &H40
  loc_7099A2: ILdRf var_13C
  loc_7099A5: FLdZeroAd var_37C
  loc_7099A8: FStStrNoPop var_270
  loc_7099AB: ConcatStr
  loc_7099AC: FStStrNoPop var_360
  loc_7099AF: ILdRf var_27C
  loc_7099B2: ConcatStr
  loc_7099B3: CVarStr var_4D4
  loc_7099B6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_7099BB: FFreeStr var_114 = "": var_13C = "": var_270 = "": var_274 = "": var_360 = "": var_27C = "": var_364 = ""
  loc_7099CE: FFreeVar var_4D4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_D8 = "": var_E8 = "": var_108 = "": var_138 = "": var_14C = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_244 = "": var_264 = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = "": var_484 = "": var_4A4 = ""
  loc_709A15: FLdRfVar var_10E
  loc_709A18: ImpAdLdRf MemVar_74A21C
  loc_709A1B: NewIfNullPr clsSecurity
  loc_709A23: LitI4 1
  loc_709A28: ILdRf var_88
  loc_709A2B: LitStr "B"
  loc_709A2E: LitI4 0
  loc_709A33: FnInStr4
  loc_709A35: LitI4 0
  loc_709A3A: NeI4
  loc_709A3B: BranchF loc_709A9F
  loc_709A3E: LitVarI2 var_D8, 1
  loc_709A43: LitI4 4
  loc_709A48: ImpAdLdRf MemVar_74BEAC
  loc_709A4B: CVarRef
  loc_709A50: FLdRfVar var_E8
  loc_709A53: ImpAdCallFPR4  = Mid(, , )
  loc_709A58: FLdRfVar var_E8
  loc_709A5B: LitVarStr var_F8, "1"
  loc_709A60: HardType
  loc_709A61: EqVarBool
  loc_709A63: FFreeVar var_D8 = ""
  loc_709A6A: BranchF loc_709A9F
  loc_709A6D: LitI2_Byte &HFF
  loc_709A6F: ImpAdLdRf MemVar_74C760
  loc_709A72: NewIfNullPr Formx
  loc_709A75: VCallAd Control_ID_Debitos
  loc_709A78: FStAdFunc var_10C
  loc_709A7B: FLdPr var_10C
  loc_709A7E: Formx.Menu.Visible = from_stack_1b
  loc_709A83: FFree1Ad var_10C
  loc_709A86: LitI2_Byte &HFF
  loc_709A88: ImpAdLdRf MemVar_74C760
  loc_709A8B: NewIfNullPr Formx
  loc_709A8E: VCallAd Control_ID_Debitos
  loc_709A91: FStAdFunc var_10C
  loc_709A94: FLdPr var_10C
  loc_709A97: Formx.Menu.Enabled = from_stack_1b
  loc_709A9C: FFree1Ad var_10C
  loc_709A9F: ExitProc
  loc_709AA0: ExitProc
  loc_709AA1: ExitProc
End Function

Private Function Proc_53_9_613F58(arg_C, arg_10) '613F58
  'Data Table: 409184
  loc_613E5C: LitI4 &H7D0
  loc_613E61: FLdRfVar var_A4
  loc_613E64: ImpAdCallFPR4  = Space()
  loc_613E69: FLdRfVar var_A4
  loc_613E6C: CStrVarTmp
  loc_613E6D: ILdRf var_8C
  loc_613E70: StFixedStrFree
  loc_613E74: FFree1Var var_A4 = ""
  loc_613E77: LitStr "CEM44.ini"
  loc_613E7A: FLdRfVar var_BC
  loc_613E7D: CStr2Ansi
  loc_613E7E: ILdRf var_BC
  loc_613E81: LitI4 &H7D0
  loc_613E86: ILdRf var_8C
  loc_613E89: FLdRfVar var_B4
  loc_613E8C: CStr2Ansi
  loc_613E8D: ILdRf var_B4
  loc_613E90: ILdI4 arg_10
  loc_613E93: FLdRfVar var_B0
  loc_613E96: CStr2Ansi
  loc_613E97: ILdRf var_B0
  loc_613E9A: ILdI4 arg_C
  loc_613E9D: FLdRfVar var_AC
  loc_613EA0: CStr2Ansi
  loc_613EA1: ILdRf var_AC
  loc_613EA4: LitStr "GENERAL"
  loc_613EA7: FLdRfVar var_A8
  loc_613EAA: CStr2Ansi
  loc_613EAB: ILdRf var_A8
  loc_613EAE: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_613EB3: FStR4 var_C0
  loc_613EB6: SetLastSystemError
  loc_613EB7: ILdRf var_AC
  loc_613EBA: ILdRf arg_C
  loc_613EBD: CStr2Uni
  loc_613EBF: ILdRf var_B0
  loc_613EC2: ILdRf arg_10
  loc_613EC5: CStr2Uni
  loc_613EC7: ILdRf var_B4
  loc_613ECA: FLdRfVar var_B8
  loc_613ECD: CStr2Uni
  loc_613ECF: ILdRf var_B8
  loc_613ED2: ILdRf var_8C
  loc_613ED5: StFixedStr
  loc_613ED8: ILdRf var_C0
  loc_613EDB: FStR4 var_94
  loc_613EDE: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_613EED: ILdRf var_8C
  loc_613EF0: FStStrCopy var_A8
  loc_613EF3: FLdRfVar var_A8
  loc_613EF6: CVarRef
  loc_613EFB: FLdRfVar var_A4
  loc_613EFE: ImpAdCallFPR4  = RTrim()
  loc_613F03: ILdRf var_A8
  loc_613F06: ILdRf var_8C
  loc_613F09: StFixedStr
  loc_613F0C: FLdRfVar var_A4
  loc_613F0F: CStrVarTmp
  loc_613F10: FStStr var_90
  loc_613F13: FFree1Str var_A8
  loc_613F16: FFree1Var var_A4 = ""
  loc_613F19: ILdRf var_90
  loc_613F1C: FnLenStr
  loc_613F1D: LitI4 1
  loc_613F22: SubI4
  loc_613F23: ILdRf var_8C
  loc_613F26: FStStrCopy var_A8
  loc_613F29: FLdRfVar var_A8
  loc_613F2C: CVarRef
  loc_613F31: FLdRfVar var_A4
  loc_613F34: ImpAdCallFPR4  = Left(, )
  loc_613F39: ILdRf var_A8
  loc_613F3C: ILdRf var_8C
  loc_613F3F: StFixedStr
  loc_613F42: FLdRfVar var_A4
  loc_613F45: CStrVarTmp
  loc_613F46: FStStr var_90
  loc_613F49: FFree1Str var_A8
  loc_613F4C: FFree1Var var_A4 = ""
  loc_613F4F: ILdRf var_90
  loc_613F52: FStStrCopy var_88
  loc_613F55: ExitProc
End Function

Private Function Proc_53_10_5FDFE8(arg_C) '5FDFE8
  'Data Table: 402450
  loc_5FDF2C: ILdRf arg_C
  loc_5FDF2F: FStStrCopy var_8C
  loc_5FDF32: LitI4 3
  loc_5FDF37: FLdRfVar var_AC
  loc_5FDF3A: ImpAdCallFPR4  = Space()
  loc_5FDF3F: FLdRfVar var_AC
  loc_5FDF42: CStrVarTmp
  loc_5FDF43: FLdRfVar var_9A
  loc_5FDF46: StFixedStrFree
  loc_5FDF4A: FFree1Var var_AC = ""
  loc_5FDF4D: LitI4 3
  loc_5FDF52: ImpAdCallI2 Chr$()
  loc_5FDF57: FStStrNoPop var_B0
  loc_5FDF5A: LitStr "144"
  loc_5FDF5D: ConcatStr
  loc_5FDF5E: FStStrNoPop var_B4
  loc_5FDF61: ILdRf var_8C
  loc_5FDF64: ConcatStr
  loc_5FDF65: FStStr var_94
  loc_5FDF68: FFreeStr var_B0 = ""
  loc_5FDF6F: LitI2 1000
  loc_5FDF72: LitI4 3
  loc_5FDF77: FLdRfVar var_9A
  loc_5FDF7A: LdFixedStr
  loc_5FDF7D: FStStrNoPop var_B8
  loc_5FDF80: FLdRfVar var_BC
  loc_5FDF83: CStr2Ansi
  loc_5FDF84: ILdRf var_BC
  loc_5FDF87: ILdRf var_94
  loc_5FDF8A: FLdRfVar var_B4
  loc_5FDF8D: CStr2Ansi
  loc_5FDF8E: ILdRf var_B4
  loc_5FDF91: ImpAdLdI4 MemVar_74BF90
  loc_5FDF94: FLdRfVar var_B0
  loc_5FDF97: CStr2Ansi
  loc_5FDF98: ILdRf var_B0
  loc_5FDF9B: ImpAdCallI2 ()
  loc_5FDFA0: FStI2 var_C2
  loc_5FDFA3: SetLastSystemError
  loc_5FDFA4: ILdRf var_B0
  loc_5FDFA7: ImpAdLdRf MemVar_74BF90
  loc_5FDFAA: CStr2Uni
  loc_5FDFAC: ILdRf var_B4
  loc_5FDFAF: FLdRfVar var_94
  loc_5FDFB2: CStr2Uni
  loc_5FDFB4: ILdRf var_BC
  loc_5FDFB7: FLdRfVar var_C0
  loc_5FDFBA: CStr2Uni
  loc_5FDFBC: ILdRf var_C0
  loc_5FDFBF: FLdRfVar var_9A
  loc_5FDFC2: StFixedStr
  loc_5FDFC5: FLdI2 var_C2
  loc_5FDFC8: CUI1I2
  loc_5FDFCA: FStUI1 var_8E
  loc_5FDFCE: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_5FDFDB: FLdUI1
  loc_5FDFDF: CI2UI1
  loc_5FDFE1: LitI2_Byte 0
  loc_5FDFE3: EqI2
  loc_5FDFE4: FStI2 var_86
  loc_5FDFE7: ExitProcI2
End Function

Private Function Proc_53_11_5F99A8(arg_C) '5F99A8
  'Data Table: 402450
  loc_5F98FC: LitI4 &H7530
  loc_5F9901: FLdRfVar var_A0
  loc_5F9904: ImpAdCallFPR4  = Space()
  loc_5F9909: FLdRfVar var_A0
  loc_5F990C: CStrVarTmp
  loc_5F990D: ILdRf var_90
  loc_5F9910: StFixedStrFree
  loc_5F9914: FFree1Var var_A0 = ""
  loc_5F9917: LitI4 3
  loc_5F991C: ImpAdCallI2 Chr$()
  loc_5F9921: FStStrNoPop var_A4
  loc_5F9924: LitStr "145"
  loc_5F9927: ConcatStr
  loc_5F9928: FStStr var_8C
  loc_5F992B: FFree1Str var_A4
  loc_5F992E: LitI2 1000
  loc_5F9931: LitI4 &H7530
  loc_5F9936: ILdRf var_90
  loc_5F9939: FLdRfVar var_AC
  loc_5F993C: CStr2Ansi
  loc_5F993D: ILdRf var_AC
  loc_5F9940: ILdRf var_8C
  loc_5F9943: FLdRfVar var_A8
  loc_5F9946: CStr2Ansi
  loc_5F9947: ILdRf var_A8
  loc_5F994A: ImpAdLdI4 MemVar_74BF90
  loc_5F994D: FLdRfVar var_A4
  loc_5F9950: CStr2Ansi
  loc_5F9951: ILdRf var_A4
  loc_5F9954: ImpAdCallI2 ()
  loc_5F9959: FStI2 var_B2
  loc_5F995C: SetLastSystemError
  loc_5F995D: ILdRf var_A4
  loc_5F9960: ImpAdLdRf MemVar_74BF90
  loc_5F9963: CStr2Uni
  loc_5F9965: ILdRf var_A8
  loc_5F9968: FLdRfVar var_8C
  loc_5F996B: CStr2Uni
  loc_5F996D: ILdRf var_AC
  loc_5F9970: FLdRfVar var_B0
  loc_5F9973: CStr2Uni
  loc_5F9975: ILdRf var_B0
  loc_5F9978: ILdRf var_90
  loc_5F997B: StFixedStr
  loc_5F997E: FLdI2 var_B2
  loc_5F9981: CUI1I2
  loc_5F9983: FStUI1 var_88
  loc_5F9987: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_5F9992: ILdRf var_90
  loc_5F9995: IStStrCopy arg_C
  loc_5F9999: FLdUI1
  loc_5F999D: CI2UI1
  loc_5F999F: LitI2_Byte 0
  loc_5F99A1: EqI2
  loc_5F99A2: FStI2 var_86
  loc_5F99A5: ExitProcI2
End Function

Private Function Proc_53_12_5EB88C(arg_C) '5EB88C
  'Data Table: 4028D8
  loc_5EB7FC: ImpAdCallI2 Proc_166_14_5D4888()
  loc_5EB801: NotI4
  loc_5EB802: BranchF loc_5EB80B
  loc_5EB805: LitI2_Byte 0
  loc_5EB807: FStI2 var_86
  loc_5EB80A: ExitProcI2
  loc_5EB80B: ImpAdLdUI1
  loc_5EB80F: CI2UI1
  loc_5EB811: LitI2_Byte 4
  loc_5EB813: EqI2
  loc_5EB814: ImpAdLdUI1
  loc_5EB818: CI2UI1
  loc_5EB81A: LitI2_Byte 5
  loc_5EB81C: EqI2
  loc_5EB81D: AndI4
  loc_5EB81E: BranchF loc_5EB832
  loc_5EB821: LitI2_Byte 1
  loc_5EB823: FStI2 var_88
  loc_5EB826: ImpAdLdUI1
  loc_5EB82A: CI2UI1
  loc_5EB82C: FStI2 var_8A
  loc_5EB82F: Branch loc_5EB86D
  loc_5EB832: ImpAdLdUI1
  loc_5EB836: CI2UI1
  loc_5EB838: LitI2_Byte 4
  loc_5EB83A: EqI2
  loc_5EB83B: BranchF loc_5EB84F
  loc_5EB83E: LitI2_Byte 1
  loc_5EB840: FStI2 var_88
  loc_5EB843: ImpAdLdUI1
  loc_5EB847: CI2UI1
  loc_5EB849: FStI2 var_8A
  loc_5EB84C: Branch loc_5EB86D
  loc_5EB84F: ImpAdLdUI1
  loc_5EB853: CI2UI1
  loc_5EB855: LitI2_Byte 5
  loc_5EB857: EqI2
  loc_5EB858: BranchF loc_5EB86D
  loc_5EB85B: ImpAdLdUI1
  loc_5EB85F: CI2UI1
  loc_5EB861: FStI2 var_88
  loc_5EB864: ImpAdLdUI1
  loc_5EB868: CI2UI1
  loc_5EB86A: FStI2 var_8A
  loc_5EB86D: LitI2_Byte 0
  loc_5EB86F: FStI2 var_86
  loc_5EB872: FLdI2 arg_C
  loc_5EB875: FLdI2 var_88
  loc_5EB878: GeI2
  loc_5EB879: FLdI2 arg_C
  loc_5EB87C: FLdI2 var_8A
  loc_5EB87F: LeI2
  loc_5EB880: AndI4
  loc_5EB881: BranchF loc_5EB889
  loc_5EB884: LitI2_Byte &HFF
  loc_5EB886: FStI2 var_86
  loc_5EB889: ExitProcI2
End Function

Private Function Proc_53_13_638184(arg_C) '638184
  'Data Table: 43B664
  loc_637F8C: LitI2_Byte 0
  loc_637F8E: FStI2 var_86
  loc_637F91: LitVarI2 var_E0, 2
  loc_637F96: LitI4 1
  loc_637F9B: ILdRfDarg arg_C
  loc_637FA1: CStrVarVal var_C0
  loc_637FA5: ImpAdCallI2 Mid$(, , )
  loc_637FAA: CVarStr var_F0
  loc_637FAD: ImpAdCallI2 IsNumeric()
  loc_637FB2: FStI2 var_186
  loc_637FB5: LitVarI2 var_110, 2
  loc_637FBA: LitI4 1
  loc_637FBF: ILdRf arg_C
  loc_637FC2: FLdRfVar var_120
  loc_637FC5: ImpAdCallFPR4  = Mid(, , )
  loc_637FCA: FLdRfVar var_120
  loc_637FCD: CStrVarVal var_124
  loc_637FD1: ImpAdCallFPR4 push Val()
  loc_637FD6: FStFPR8 var_190
  loc_637FD9: LitVarI2 var_174, -1
  loc_637FDE: FLdFPR8 var_190
  loc_637FE1: CVarR8
  loc_637FE5: FLdI2 var_186
  loc_637FE8: CVarBoolI2 var_134
  loc_637FEC: FLdRfVar var_184
  loc_637FEF: ImpAdCallFPR4  = IIf(, , )
  loc_637FF4: FLdRfVar var_184
  loc_637FF7: CI2Var
  loc_637FF8: FStI2 var_AA
  loc_637FFB: FFreeStr var_C0 = ""
  loc_638002: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_134 = "": var_154 = "": var_174 = ""
  loc_638015: LitVarI2 var_E0, 2
  loc_63801A: LitI4 4
  loc_63801F: ILdRfDarg arg_C
  loc_638025: CStrVarVal var_C0
  loc_638029: ImpAdCallI2 Mid$(, , )
  loc_63802E: CVarStr var_F0
  loc_638031: ImpAdCallI2 IsNumeric()
  loc_638036: FStI2 var_186
  loc_638039: LitVarI2 var_110, 2
  loc_63803E: LitI4 4
  loc_638043: ILdRf arg_C
  loc_638046: FLdRfVar var_120
  loc_638049: ImpAdCallFPR4  = Mid(, , )
  loc_63804E: FLdRfVar var_120
  loc_638051: CStrVarVal var_124
  loc_638055: ImpAdCallFPR4 push Val()
  loc_63805A: FStFPR8 var_190
  loc_63805D: LitVarI2 var_174, -1
  loc_638062: FLdFPR8 var_190
  loc_638065: CVarR8
  loc_638069: FLdI2 var_186
  loc_63806C: CVarBoolI2 var_134
  loc_638070: FLdRfVar var_184
  loc_638073: ImpAdCallFPR4  = IIf(, , )
  loc_638078: FLdRfVar var_184
  loc_63807B: FStVar var_A8
  loc_63807F: FFreeStr var_C0 = ""
  loc_638086: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_134 = "": var_154 = ""
  loc_638097: LitVarI2 var_E0, 2
  loc_63809C: LitI4 7
  loc_6380A1: ILdRfDarg arg_C
  loc_6380A7: CStrVarVal var_C0
  loc_6380AB: ImpAdCallI2 Mid$(, , )
  loc_6380B0: CVarStr var_F0
  loc_6380B3: ImpAdCallI2 IsNumeric()
  loc_6380B8: FStI2 var_186
  loc_6380BB: LitVarI2 var_110, 2
  loc_6380C0: LitI4 7
  loc_6380C5: ILdRf arg_C
  loc_6380C8: FLdRfVar var_120
  loc_6380CB: ImpAdCallFPR4  = Mid(, , )
  loc_6380D0: FLdRfVar var_120
  loc_6380D3: CStrVarVal var_124
  loc_6380D7: ImpAdCallFPR4 push Val()
  loc_6380DC: FStFPR8 var_190
  loc_6380DF: LitVarI2 var_174, -1
  loc_6380E4: FLdFPR8 var_190
  loc_6380E7: CVarR8
  loc_6380EB: FLdI2 var_186
  loc_6380EE: CVarBoolI2 var_134
  loc_6380F2: FLdRfVar var_184
  loc_6380F5: ImpAdCallFPR4  = IIf(, , )
  loc_6380FA: FLdRfVar var_184
  loc_6380FD: FStVar var_98
  loc_638101: FFreeStr var_C0 = ""
  loc_638108: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_134 = "": var_154 = ""
  loc_638119: LitI2_Byte 0
  loc_63811B: FLdI2 var_AA
  loc_63811E: LeI2
  loc_63811F: FLdI2 var_AA
  loc_638122: LitI2_Byte &H17
  loc_638124: LeI2
  loc_638125: AndI4
  loc_638126: NotI4
  loc_638127: BranchF loc_63812B
  loc_63812A: ExitProcI2
  loc_63812B: LitVarI2 var_BC, 0
  loc_638130: HardType
  loc_638131: FLdRfVar var_A8
  loc_638134: LeVar var_E0
  loc_638138: FLdRfVar var_A8
  loc_63813B: LitVarI2 var_D0, 59
  loc_638140: HardType
  loc_638141: LeVar var_F0
  loc_638145: AndVar var_110
  loc_638149: NotVar var_120
  loc_63814D: CBoolVarNull
  loc_63814F: BranchF loc_638153
  loc_638152: ExitProcI2
  loc_638153: LitVarI2 var_BC, 0
  loc_638158: HardType
  loc_638159: FLdRfVar var_98
  loc_63815C: LeVar var_E0
  loc_638160: FLdRfVar var_98
  loc_638163: LitVarI2 var_D0, 59
  loc_638168: HardType
  loc_638169: LeVar var_F0
  loc_63816D: AndVar var_110
  loc_638171: NotVar var_120
  loc_638175: CBoolVarNull
  loc_638177: BranchF loc_63817B
  loc_63817A: ExitProcI2
  loc_63817B: LitI2_Byte &HFF
  loc_63817D: FStI2 var_86
  loc_638180: ExitProcI2
  loc_638181: FStI2 arg_36FD
End Function

Private Function Proc_53_14_5FE848(arg_C) '5FE848
  'Data Table: 402524
  loc_5FE78C: ILdRf arg_C
  loc_5FE78F: FStStrCopy var_8C
  loc_5FE792: LitI4 5
  loc_5FE797: FLdRfVar var_B0
  loc_5FE79A: ImpAdCallFPR4  = Space()
  loc_5FE79F: FLdRfVar var_B0
  loc_5FE7A2: CStrVarTmp
  loc_5FE7A3: FLdRfVar var_9E
  loc_5FE7A6: StFixedStrFree
  loc_5FE7AA: FFree1Var var_B0 = ""
  loc_5FE7AD: LitI4 3
  loc_5FE7B2: ImpAdCallI2 Chr$()
  loc_5FE7B7: FStStrNoPop var_B4
  loc_5FE7BA: LitStr "147"
  loc_5FE7BD: ConcatStr
  loc_5FE7BE: FStStrNoPop var_B8
  loc_5FE7C1: ILdRf var_8C
  loc_5FE7C4: ConcatStr
  loc_5FE7C5: FStStr var_94
  loc_5FE7C8: FFreeStr var_B4 = ""
  loc_5FE7CF: LitI2 1000
  loc_5FE7D2: LitI4 5
  loc_5FE7D7: FLdRfVar var_9E
  loc_5FE7DA: LdFixedStr
  loc_5FE7DD: FStStrNoPop var_BC
  loc_5FE7E0: FLdRfVar var_C0
  loc_5FE7E3: CStr2Ansi
  loc_5FE7E4: ILdRf var_C0
  loc_5FE7E7: ILdRf var_94
  loc_5FE7EA: FLdRfVar var_B8
  loc_5FE7ED: CStr2Ansi
  loc_5FE7EE: ILdRf var_B8
  loc_5FE7F1: ImpAdLdI4 MemVar_74BF90
  loc_5FE7F4: FLdRfVar var_B4
  loc_5FE7F7: CStr2Ansi
  loc_5FE7F8: ILdRf var_B4
  loc_5FE7FB: ImpAdCallI2 ()
  loc_5FE800: FStI2 var_C6
  loc_5FE803: SetLastSystemError
  loc_5FE804: ILdRf var_B4
  loc_5FE807: ImpAdLdRf MemVar_74BF90
  loc_5FE80A: CStr2Uni
  loc_5FE80C: ILdRf var_B8
  loc_5FE80F: FLdRfVar var_94
  loc_5FE812: CStr2Uni
  loc_5FE814: ILdRf var_C0
  loc_5FE817: FLdRfVar var_C4
  loc_5FE81A: CStr2Uni
  loc_5FE81C: ILdRf var_C4
  loc_5FE81F: FLdRfVar var_9E
  loc_5FE822: StFixedStr
  loc_5FE825: FLdI2 var_C6
  loc_5FE828: CUI1I2
  loc_5FE82A: FStUI1 var_8E
  loc_5FE82E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_5FE83B: FLdUI1
  loc_5FE83F: CI2UI1
  loc_5FE841: LitI2_Byte 0
  loc_5FE843: EqI2
  loc_5FE844: FStI2 var_86
  loc_5FE847: ExitProcI2
End Function

Private Function Proc_53_15_5FEC78(arg_C) '5FEC78
  'Data Table: 402524
  loc_5FEBBC: ILdRf arg_C
  loc_5FEBBF: FStStrCopy var_8C
  loc_5FEBC2: LitI4 5
  loc_5FEBC7: FLdRfVar var_B0
  loc_5FEBCA: ImpAdCallFPR4  = Space()
  loc_5FEBCF: FLdRfVar var_B0
  loc_5FEBD2: CStrVarTmp
  loc_5FEBD3: FLdRfVar var_9E
  loc_5FEBD6: StFixedStrFree
  loc_5FEBDA: FFree1Var var_B0 = ""
  loc_5FEBDD: LitI4 3
  loc_5FEBE2: ImpAdCallI2 Chr$()
  loc_5FEBE7: FStStrNoPop var_B4
  loc_5FEBEA: LitStr "148"
  loc_5FEBED: ConcatStr
  loc_5FEBEE: FStStrNoPop var_B8
  loc_5FEBF1: ILdRf var_8C
  loc_5FEBF4: ConcatStr
  loc_5FEBF5: FStStr var_94
  loc_5FEBF8: FFreeStr var_B4 = ""
  loc_5FEBFF: LitI2 1000
  loc_5FEC02: LitI4 5
  loc_5FEC07: FLdRfVar var_9E
  loc_5FEC0A: LdFixedStr
  loc_5FEC0D: FStStrNoPop var_BC
  loc_5FEC10: FLdRfVar var_C0
  loc_5FEC13: CStr2Ansi
  loc_5FEC14: ILdRf var_C0
  loc_5FEC17: ILdRf var_94
  loc_5FEC1A: FLdRfVar var_B8
  loc_5FEC1D: CStr2Ansi
  loc_5FEC1E: ILdRf var_B8
  loc_5FEC21: ImpAdLdI4 MemVar_74BF90
  loc_5FEC24: FLdRfVar var_B4
  loc_5FEC27: CStr2Ansi
  loc_5FEC28: ILdRf var_B4
  loc_5FEC2B: ImpAdCallI2 ()
  loc_5FEC30: FStI2 var_C6
  loc_5FEC33: SetLastSystemError
  loc_5FEC34: ILdRf var_B4
  loc_5FEC37: ImpAdLdRf MemVar_74BF90
  loc_5FEC3A: CStr2Uni
  loc_5FEC3C: ILdRf var_B8
  loc_5FEC3F: FLdRfVar var_94
  loc_5FEC42: CStr2Uni
  loc_5FEC44: ILdRf var_C0
  loc_5FEC47: FLdRfVar var_C4
  loc_5FEC4A: CStr2Uni
  loc_5FEC4C: ILdRf var_C4
  loc_5FEC4F: FLdRfVar var_9E
  loc_5FEC52: StFixedStr
  loc_5FEC55: FLdI2 var_C6
  loc_5FEC58: CUI1I2
  loc_5FEC5A: FStUI1 var_8E
  loc_5FEC5E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_5FEC6B: FLdUI1
  loc_5FEC6F: CI2UI1
  loc_5FEC71: LitI2_Byte 0
  loc_5FEC73: EqI2
  loc_5FEC74: FStI2 var_86
  loc_5FEC77: ExitProcI2
End Function

Private Function Proc_53_16_5F97A8(arg_C) '5F97A8
  'Data Table: 402524
  loc_5F96FC: LitI4 &H64
  loc_5F9701: FLdRfVar var_A0
  loc_5F9704: ImpAdCallFPR4  = Space()
  loc_5F9709: FLdRfVar var_A0
  loc_5F970C: CStrVarTmp
  loc_5F970D: ILdRf var_90
  loc_5F9710: StFixedStrFree
  loc_5F9714: FFree1Var var_A0 = ""
  loc_5F9717: LitI4 3
  loc_5F971C: ImpAdCallI2 Chr$()
  loc_5F9721: FStStrNoPop var_A4
  loc_5F9724: LitStr "146"
  loc_5F9727: ConcatStr
  loc_5F9728: FStStr var_8C
  loc_5F972B: FFree1Str var_A4
  loc_5F972E: LitI2 1000
  loc_5F9731: LitI4 &H64
  loc_5F9736: ILdRf var_90
  loc_5F9739: FLdRfVar var_AC
  loc_5F973C: CStr2Ansi
  loc_5F973D: ILdRf var_AC
  loc_5F9740: ILdRf var_8C
  loc_5F9743: FLdRfVar var_A8
  loc_5F9746: CStr2Ansi
  loc_5F9747: ILdRf var_A8
  loc_5F974A: ImpAdLdI4 MemVar_74BF90
  loc_5F974D: FLdRfVar var_A4
  loc_5F9750: CStr2Ansi
  loc_5F9751: ILdRf var_A4
  loc_5F9754: ImpAdCallI2 ()
  loc_5F9759: FStI2 var_B2
  loc_5F975C: SetLastSystemError
  loc_5F975D: ILdRf var_A4
  loc_5F9760: ImpAdLdRf MemVar_74BF90
  loc_5F9763: CStr2Uni
  loc_5F9765: ILdRf var_A8
  loc_5F9768: FLdRfVar var_8C
  loc_5F976B: CStr2Uni
  loc_5F976D: ILdRf var_AC
  loc_5F9770: FLdRfVar var_B0
  loc_5F9773: CStr2Uni
  loc_5F9775: ILdRf var_B0
  loc_5F9778: ILdRf var_90
  loc_5F977B: StFixedStr
  loc_5F977E: FLdI2 var_B2
  loc_5F9781: CUI1I2
  loc_5F9783: FStUI1 var_88
  loc_5F9787: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_5F9792: ILdRf var_90
  loc_5F9795: IStStrCopy arg_C
  loc_5F9799: FLdUI1
  loc_5F979D: CI2UI1
  loc_5F979F: LitI2_Byte 0
  loc_5F97A1: EqI2
  loc_5F97A2: FStI2 var_86
  loc_5F97A5: ExitProcI2
End Function

Private Function Proc_53_17_5DA4B8(arg_C) '5DA4B8
  'Data Table: 402524
  loc_5DA47C: FLdI2 arg_C
  loc_5DA47F: FStI2 var_88
  loc_5DA482: FLdI2 var_88
  loc_5DA485: LitI2_Byte &HD
  loc_5DA487: EqI2
  loc_5DA488: BranchT loc_5DA4A8
  loc_5DA48B: FLdI2 var_88
  loc_5DA48E: LitI4 &H30
  loc_5DA493: CI2I4
  loc_5DA494: LitI4 &H39
  loc_5DA499: CI2I4
  loc_5DA49A: BetweenI2
  loc_5DA49C: BranchT loc_5DA4A8
  loc_5DA49F: FLdI2 var_88
  loc_5DA4A2: LitI2_Byte 8
  loc_5DA4A4: EqI2
  loc_5DA4A5: BranchF loc_5DA4B1
  loc_5DA4A8: FLdI2 arg_C
  loc_5DA4AB: FStI2 var_86
  loc_5DA4AE: Branch loc_5DA4B6
  loc_5DA4B1: LitI2_Byte 0
  loc_5DA4B3: FStI2 var_86
  loc_5DA4B6: ExitProcI2
End Function

Private Function Proc_53_18_5F5F10(arg_C, arg_10) '5F5F10
  'Data Table: 43B664
  loc_5F5E54: LitI2_Byte 1
  loc_5F5E56: FStI2 var_8A
  loc_5F5E59: FLdI2 var_8A
  loc_5F5E5C: CI4UI1
  loc_5F5E5D: ILdI4 arg_C
  loc_5F5E60: LitStr ","
  loc_5F5E63: LitI4 0
  loc_5F5E68: FnInStr4
  loc_5F5E6A: CI2I4
  loc_5F5E6B: FStI2 var_8C
  loc_5F5E6E: LitI2_Byte 1
  loc_5F5E70: FStI2 var_8E
  loc_5F5E73: FLdI2 var_8E
  loc_5F5E76: FLdI2 arg_10
  loc_5F5E79: LtI2
  loc_5F5E7A: FLdI2 var_8C
  loc_5F5E7D: LitI2_Byte 0
  loc_5F5E7F: NeI2
  loc_5F5E80: AndI4
  loc_5F5E81: BranchF loc_5F5EAE
  loc_5F5E84: FLdI2 var_8E
  loc_5F5E87: LitI2_Byte 1
  loc_5F5E89: AddI2
  loc_5F5E8A: FStI2 var_8E
  loc_5F5E8D: FLdI2 var_8C
  loc_5F5E90: LitI2_Byte 1
  loc_5F5E92: AddI2
  loc_5F5E93: FStI2 var_8A
  loc_5F5E96: FLdI2 var_8A
  loc_5F5E99: CI4UI1
  loc_5F5E9A: ILdI4 arg_C
  loc_5F5E9D: LitStr ","
  loc_5F5EA0: LitI4 0
  loc_5F5EA5: FnInStr4
  loc_5F5EA7: CI2I4
  loc_5F5EA8: FStI2 var_8C
  loc_5F5EAB: Branch loc_5F5E73
  loc_5F5EAE: FLdI2 var_8C
  loc_5F5EB1: LitI2_Byte 0
  loc_5F5EB3: EqI2
  loc_5F5EB4: BranchF loc_5F5EF2
  loc_5F5EB7: FLdI2 var_8E
  loc_5F5EBA: FLdI2 arg_10
  loc_5F5EBD: EqI2
  loc_5F5EBE: BranchF loc_5F5EE9
  loc_5F5EC1: ILdI4 arg_C
  loc_5F5EC4: FnLenStr
  loc_5F5EC5: FLdI2 var_8A
  loc_5F5EC8: CI4UI1
  loc_5F5EC9: SubI4
  loc_5F5ECA: LitI4 1
  loc_5F5ECF: AddI4
  loc_5F5ED0: CVarI4
  loc_5F5ED4: FLdI2 var_8A
  loc_5F5ED7: CI4UI1
  loc_5F5ED8: ILdI4 arg_C
  loc_5F5EDB: ImpAdCallI2 Mid$(, , )
  loc_5F5EE0: FStStr var_88
  loc_5F5EE3: FFree1Var var_B0 = ""
  loc_5F5EE6: Branch loc_5F5EEF
  loc_5F5EE9: LitStr vbNullString
  loc_5F5EEC: FStStrCopy var_88
  loc_5F5EEF: Branch loc_5F5F0E
  loc_5F5EF2: FLdI2 var_8C
  loc_5F5EF5: FLdI2 var_8A
  loc_5F5EF8: SubI2
  loc_5F5EF9: CVarI2 var_B0
  loc_5F5EFC: FLdI2 var_8A
  loc_5F5EFF: CI4UI1
  loc_5F5F00: ILdI4 arg_C
  loc_5F5F03: ImpAdCallI2 Mid$(, , )
  loc_5F5F08: FStStr var_88
  loc_5F5F0B: FFree1Var var_B0 = ""
  loc_5F5F0E: ExitProc
End Function

Private Function Proc_53_19_5D6DC8() '5D6DC8
  'Data Table: 43B664
  loc_5D6DA0: LitI4 0
  loc_5D6DA5: ILdPr
  loc_5D6DA8: Me.SelStart = from_stack_1
  loc_5D6DAD: FLdRfVar var_88
  loc_5D6DB0: ILdPr
  loc_5D6DB3:  = Me.Text
  loc_5D6DB8: ILdRf var_88
  loc_5D6DBB: FnLenStr
  loc_5D6DBC: ILdPr
  loc_5D6DBF: Me.SelLength = from_stack_1
  loc_5D6DC4: FFree1Str var_88
  loc_5D6DC7: ExitProc
End Function

Private Function Proc_53_20_61F004(arg_C, arg_10, arg_14) '61F004
  'Data Table: 43B664
  loc_61EEC0: ILdRf arg_14
  loc_61EEC3: FStStrCopy var_8C
  loc_61EEC6: LitI4 1
  loc_61EECB: ILdI4 arg_C
  loc_61EECE: LitStr ","
  loc_61EED1: LitI4 0
  loc_61EED6: FnInStr4
  loc_61EED8: CI2I4
  loc_61EED9: FStI2 var_8E
  loc_61EEDC: FLdI2 var_8E
  loc_61EEDF: CI4UI1
  loc_61EEE0: ILdI4 arg_C
  loc_61EEE3: LitStr ","
  loc_61EEE6: LitI4 0
  loc_61EEEB: FnInStr4
  loc_61EEED: CI2I4
  loc_61EEEE: FStI2 var_90
  loc_61EEF1: LitI2_Byte 1
  loc_61EEF3: FStI2 var_92
  loc_61EEF6: FLdI2 var_92
  loc_61EEF9: FLdI2 arg_10
  loc_61EEFC: LtI2
  loc_61EEFD: FLdI2 var_90
  loc_61EF00: LitI2_Byte 0
  loc_61EF02: NeI2
  loc_61EF03: AndI4
  loc_61EF04: BranchF loc_61EF31
  loc_61EF07: FLdI2 var_92
  loc_61EF0A: LitI2_Byte 1
  loc_61EF0C: AddI2
  loc_61EF0D: FStI2 var_92
  loc_61EF10: FLdI2 var_90
  loc_61EF13: LitI2_Byte 1
  loc_61EF15: AddI2
  loc_61EF16: FStI2 var_8E
  loc_61EF19: FLdI2 var_8E
  loc_61EF1C: CI4UI1
  loc_61EF1D: ILdI4 arg_C
  loc_61EF20: LitStr ","
  loc_61EF23: LitI4 0
  loc_61EF28: FnInStr4
  loc_61EF2A: CI2I4
  loc_61EF2B: FStI2 var_90
  loc_61EF2E: Branch loc_61EEF6
  loc_61EF31: FLdI2 var_90
  loc_61EF34: LitI2_Byte 0
  loc_61EF36: EqI2
  loc_61EF37: BranchF loc_61EF7E
  loc_61EF3A: FLdI2 var_8E
  loc_61EF3D: CI4UI1
  loc_61EF3E: ILdI4 arg_C
  loc_61EF41: FnLenStr
  loc_61EF42: LeI4
  loc_61EF43: BranchF loc_61EF70
  loc_61EF46: FLdI2 var_8E
  loc_61EF49: LitI2_Byte 1
  loc_61EF4B: SubI2
  loc_61EF4C: CVarI2 var_B4
  loc_61EF4F: LitI4 1
  loc_61EF54: ILdI4 arg_C
  loc_61EF57: ImpAdCallI2 Mid$(, , )
  loc_61EF5C: FStStrNoPop var_B8
  loc_61EF5F: ILdRf var_8C
  loc_61EF62: ConcatStr
  loc_61EF63: IStStr
  loc_61EF67: FFree1Str var_B8
  loc_61EF6A: FFree1Var var_B4 = ""
  loc_61EF6D: Branch loc_61EF7B
  loc_61EF70: ILdI4 arg_C
  loc_61EF73: ILdRf var_8C
  loc_61EF76: ConcatStr
  loc_61EF77: IStStr
  loc_61EF7B: Branch loc_61EFFB
  loc_61EF7E: FLdI2 arg_10
  loc_61EF81: LitI2_Byte 1
  loc_61EF83: EqI2
  loc_61EF84: BranchF loc_61EFAF
  loc_61EF87: ILdRf var_8C
  loc_61EF8A: ILdI4 arg_C
  loc_61EF8D: FnLenStr
  loc_61EF8E: CVarI4
  loc_61EF92: FLdI2 var_8E
  loc_61EF95: CI4UI1
  loc_61EF96: ILdI4 arg_C
  loc_61EF99: ImpAdCallI2 Mid$(, , )
  loc_61EF9E: FStStrNoPop var_B8
  loc_61EFA1: ConcatStr
  loc_61EFA2: IStStr
  loc_61EFA6: FFree1Str var_B8
  loc_61EFA9: FFree1Var var_B4 = ""
  loc_61EFAC: Branch loc_61EFFB
  loc_61EFAF: FLdI2 var_8E
  loc_61EFB2: LitI2_Byte 1
  loc_61EFB4: SubI2
  loc_61EFB5: CVarI2 var_B4
  loc_61EFB8: LitI4 1
  loc_61EFBD: ILdI4 arg_C
  loc_61EFC0: ImpAdCallI2 Mid$(, , )
  loc_61EFC5: FStStrNoPop var_B8
  loc_61EFC8: ILdRf var_8C
  loc_61EFCB: ConcatStr
  loc_61EFCC: FStStrNoPop var_DC
  loc_61EFCF: ILdI4 arg_C
  loc_61EFD2: FnLenStr
  loc_61EFD3: CVarI4
  loc_61EFD7: FLdI2 var_90
  loc_61EFDA: CI4UI1
  loc_61EFDB: ILdI4 arg_C
  loc_61EFDE: ImpAdCallI2 Mid$(, , )
  loc_61EFE3: FStStrNoPop var_E0
  loc_61EFE6: ConcatStr
  loc_61EFE7: IStStr
  loc_61EFEB: FFreeStr var_B8 = "": var_DC = ""
  loc_61EFF4: FFreeVar var_B4 = ""
  loc_61EFFB: ILdI4 arg_C
  loc_61EFFE: FStStrCopy var_88
  loc_61F001: ExitProc
End Function
