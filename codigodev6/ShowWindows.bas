
Private Function Proc_94_0_5E9340(arg_C) '5E9340
  'Data Table: 409184
  loc_5E92D0: LitI2_Byte 6
  loc_5E92D2: FLdRfVar var_86
  loc_5E92D5: ILdI4 arg_C
  loc_5E92D8: FnLenStr
  loc_5E92D9: CI2I4
  loc_5E92DA: ForI2 var_90
  loc_5E92E0: ILdRf var_8C
  loc_5E92E3: CVarStr var_F4
  loc_5E92E6: LitVarI2 var_C0, 1
  loc_5E92EB: FLdI2 var_86
  loc_5E92EE: CI4UI1
  loc_5E92EF: ILdRf arg_C
  loc_5E92F2: CVarRef
  loc_5E92F7: FLdRfVar var_D0
  loc_5E92FA: ImpAdCallFPR4  = Mid(, , )
  loc_5E92FF: FLdRfVar var_D0
  loc_5E9302: CStrVarVal var_D4
  loc_5E9306: ImpAdCallI2 Asc()
  loc_5E930B: LitI2_Byte 5
  loc_5E930D: SubI2
  loc_5E930E: CI4UI1
  loc_5E930F: FLdRfVar var_E4
  loc_5E9312: ImpAdCallFPR4  = Chr()
  loc_5E9317: FLdRfVar var_E4
  loc_5E931A: AddVar var_104
  loc_5E931E: CStrVarTmp
  loc_5E931F: FStStr var_8C
  loc_5E9322: FFree1Str var_D4
  loc_5E9325: FFreeVar var_C0 = "": var_D0 = "": var_E4 = ""
  loc_5E9330: FLdRfVar var_86
  loc_5E9333: NextI2 var_90, loc_5E92E0
  loc_5E9338: ILdRf var_8C
  loc_5E933B: IStStrCopy arg_C
  loc_5E933F: ExitProc
End Function

Private Function Proc_94_1_610944(arg_C, arg_10) '610944
  'Data Table: 409184
  loc_610858: LitI4 &HC8
  loc_61085D: FLdRfVar var_A4
  loc_610860: ImpAdCallFPR4  = Space()
  loc_610865: FLdRfVar var_A4
  loc_610868: CStrVarTmp
  loc_610869: FStStr var_90
  loc_61086C: FFree1Var var_A4 = ""
  loc_61086F: LitStr "COMANDO"
  loc_610872: ILdI2 arg_C
  loc_610875: CStrUI1
  loc_610877: FStStrNoPop var_A8
  loc_61087A: ConcatStr
  loc_61087B: FStStr var_8C
  loc_61087E: FFree1Str var_A8
  loc_610881: FMemLdR4 arg_8(12)
  loc_610886: FLdRfVar var_B8
  loc_610889: CStr2Ansi
  loc_61088A: ILdRf var_B8
  loc_61088D: LitI4 &HFA0
  loc_610892: ILdRf var_90
  loc_610895: FLdRfVar var_B4
  loc_610898: CStr2Ansi
  loc_610899: ILdRf var_B4
  loc_61089C: LitStr vbNullString
  loc_61089F: FLdRfVar var_B0
  loc_6108A2: CStr2Ansi
  loc_6108A3: ILdRf var_B0
  loc_6108A6: ILdI4 arg_10
  loc_6108A9: FLdRfVar var_AC
  loc_6108AC: CStr2Ansi
  loc_6108AD: ILdRf var_AC
  loc_6108B0: ILdRf var_8C
  loc_6108B3: FLdRfVar var_A8
  loc_6108B6: CStr2Ansi
  loc_6108B7: ILdRf var_A8
  loc_6108BA: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_6108BF: SetLastSystemError
  loc_6108C0: ILdRf var_A8
  loc_6108C3: FLdRfVar var_8C
  loc_6108C6: CStr2Uni
  loc_6108C8: ILdRf var_AC
  loc_6108CB: ILdRf arg_10
  loc_6108CE: CStr2Uni
  loc_6108D0: ILdRf var_B4
  loc_6108D3: FLdRfVar var_90
  loc_6108D6: CStr2Uni
  loc_6108D8: ILdRf var_B8
  loc_6108DB: FMemLdRf Proc_87_14_5F88D8(, , )
  loc_6108E0: CStr2Uni
  loc_6108E2: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_6108EF: FLdRfVar var_90
  loc_6108F2: CVarRef
  loc_6108F7: FLdRfVar var_A4
  loc_6108FA: ImpAdCallFPR4  = Trim()
  loc_6108FF: FLdRfVar var_A4
  loc_610902: CStrVarTmp
  loc_610903: FStStr var_94
  loc_610906: FFree1Var var_A4 = ""
  loc_610909: ILdRf var_94
  loc_61090C: FnLenStr
  loc_61090D: LitI4 1
  loc_610912: SubI4
  loc_610913: CVarI4
  loc_610917: LitI4 1
  loc_61091C: FLdRfVar var_94
  loc_61091F: CVarRef
  loc_610924: FLdRfVar var_E8
  loc_610927: ImpAdCallFPR4  = Mid(, , )
  loc_61092C: FLdRfVar var_E8
  loc_61092F: CStrVarTmp
  loc_610930: FStStr var_94
  loc_610933: FFreeVar var_A4 = ""
  loc_61093A: ILdRf var_94
  loc_61093D: FStStrCopy var_88
  loc_610940: ExitProc
End Function

Private Function Proc_94_2_5E2F64(arg_C, arg_10) '5E2F64
  'Data Table: 43B664
  loc_5E2EFC: ILdUI1 arg_C
  loc_5E2F00: ImpAdLdRf MemVar_74DC58
  loc_5E2F03: NewIfNullPr frmLogin
  loc_5E2F06: Call frmLogin.NivelPut(from_stack_1v)
  loc_5E2F0B: ILdUI1 arg_C
  loc_5E2F0F: CI2UI1
  loc_5E2F11: ImpAdLdRf MemVar_74DC58
  loc_5E2F14: NewIfNullPr frmLogin
  loc_5E2F17: Call frmLogin.ModuloPut(from_stack_1v)
  loc_5E2F1C: ILdI2 arg_10
  loc_5E2F1F: ImpAdLdRf MemVar_74DC58
  loc_5E2F22: NewIfNullPr frmLogin
  loc_5E2F25: Call frmLogin.bNotCompanyPut(from_stack_1v)
  loc_5E2F2A: LitVar_Missing var_A8
  loc_5E2F2D: PopAdLdVar
  loc_5E2F2E: LitVarI2 var_98, 1
  loc_5E2F33: PopAdLdVar
  loc_5E2F34: ImpAdLdRf MemVar_74DC58
  loc_5E2F37: NewIfNullPr frmLogin
  loc_5E2F3A: frmLogin.Show from_stack_1, from_stack_2
  loc_5E2F3F: LitI2_Byte 0
  loc_5E2F41: ImpAdLdRf MemVar_74DC58
  loc_5E2F44: NewIfNullPr frmLogin
  loc_5E2F47: Call frmLogin.bNotCompanyPut(from_stack_1v)
  loc_5E2F4C: FLdRfVar var_AA
  loc_5E2F4F: ImpAdLdRf MemVar_74DC58
  loc_5E2F52: NewIfNullPr frmLogin
  loc_5E2F55: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_5E2F5A: FLdI2 var_AA
  loc_5E2F5D: FStI2 var_86
  loc_5E2F60: ExitProcI2
End Function

Private Function Proc_94_3_650144(arg_C) '650144
  'Data Table: 409184
  loc_64FEAC: ImpAdCallFPR4 Proc_87_23_619080()
  loc_64FEB1: LitStr "seguridad"
  loc_64FEB4: FStStrCopy var_B4
  loc_64FEB7: FLdRfVar var_B4
  loc_64FEBA: ILdRf arg_C
  loc_64FEBD: ImpAdCallI2 Proc_94_1_610944(, )
  loc_64FEC2: FStStr var_8C
  loc_64FEC5: FFree1Str var_B4
  loc_64FEC8: LitStr "Path"
  loc_64FECB: FStStrCopy var_B4
  loc_64FECE: FLdRfVar var_B4
  loc_64FED1: ILdRf arg_C
  loc_64FED4: ImpAdCallI2 Proc_94_1_610944(, )
  loc_64FED9: FStStr var_A0
  loc_64FEDC: FFree1Str var_B4
  loc_64FEDF: LitI4 &HA
  loc_64FEE4: FLdRfVar var_A0
  loc_64FEE7: CVarRef
  loc_64FEEC: FLdRfVar var_D4
  loc_64FEEF: ImpAdCallFPR4  = Right(, )
  loc_64FEF4: FLdRfVar var_D4
  loc_64FEF7: FLdRfVar var_E4
  loc_64FEFA: ImpAdCallFPR4  = Ucase()
  loc_64FEFF: FLdRfVar var_E4
  loc_64FF02: LitVarStr var_F4, "CONVOL.EXE"
  loc_64FF07: HardType
  loc_64FF08: EqVarBool
  loc_64FF0A: FFreeVar var_D4 = ""
  loc_64FF11: BranchF loc_64FF37
  loc_64FF14: ImpAdLdI4 MemVar_74C6E0
  loc_64FF17: LitI4 0
  loc_64FF1C: NeI4
  loc_64FF1D: BranchF loc_64FF37
  loc_64FF20: OnErrorGoto loc_65002C
  loc_64FF23: LitVar_Missing var_D4
  loc_64FF26: ImpAdLdRf MemVar_74C6E0
  loc_64FF29: CVarRef
  loc_64FF2E: ImpAdCallFPR4 AppActivate(, )
  loc_64FF33: FFree1Var var_D4 = ""
  loc_64FF36: ExitProc
  loc_64FF37: ILdRf var_8C
  loc_64FF3A: CUI1Str
  loc_64FF3C: CI2UI1
  loc_64FF3E: LitI2_Byte 0
  loc_64FF40: EqI2
  loc_64FF41: NotI4
  loc_64FF42: BranchF loc_64FF62
  loc_64FF45: LitI2_Byte &HFF
  loc_64FF47: PopTmpLdAd2 var_108
  loc_64FF4A: ILdRf var_8C
  loc_64FF4D: CUI1Str
  loc_64FF4F: PopTmpLdAd1
  loc_64FF53: ImpAdCallI2 Proc_94_2_5E2F64(, )
  loc_64FF58: NotI4
  loc_64FF59: BranchF loc_64FF62
  loc_64FF5C: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_64FF61: ExitProc
  loc_64FF62: LitStr "Path"
  loc_64FF65: FStStrCopy var_B4
  loc_64FF68: FLdRfVar var_B4
  loc_64FF6B: ILdRf arg_C
  loc_64FF6E: ImpAdCallI2 Proc_94_1_610944(, )
  loc_64FF73: FStStr var_8C
  loc_64FF76: FFree1Str var_B4
  loc_64FF79: LitStr "Parametros"
  loc_64FF7C: FStStrCopy var_B4
  loc_64FF7F: FLdRfVar var_B4
  loc_64FF82: ILdRf arg_C
  loc_64FF85: ImpAdCallI2 Proc_94_1_610944(, )
  loc_64FF8A: FStStr var_90
  loc_64FF8D: FFree1Str var_B4
  loc_64FF90: LitStr "Modo"
  loc_64FF93: FStStrCopy var_B4
  loc_64FF96: FLdRfVar var_B4
  loc_64FF99: ILdRf arg_C
  loc_64FF9C: ImpAdCallI2 Proc_94_1_610944(, )
  loc_64FFA1: FStStr var_9C
  loc_64FFA4: FFree1Str var_B4
  loc_64FFA7: LitI4 &HA
  loc_64FFAC: FLdRfVar var_A0
  loc_64FFAF: CVarRef
  loc_64FFB4: FLdRfVar var_D4
  loc_64FFB7: ImpAdCallFPR4  = Right(, )
  loc_64FFBC: FLdRfVar var_D4
  loc_64FFBF: FLdRfVar var_E4
  loc_64FFC2: ImpAdCallFPR4  = Ucase()
  loc_64FFC7: FLdRfVar var_E4
  loc_64FFCA: LitVarStr var_F4, "CONVOL.EXE"
  loc_64FFCF: HardType
  loc_64FFD0: EqVarBool
  loc_64FFD2: FFreeVar var_D4 = ""
  loc_64FFD9: BranchF loc_650003
  loc_64FFDC: ILdRf var_9C
  loc_64FFDF: CI4Str
  loc_64FFE0: ILdRf var_8C
  loc_64FFE3: LitStr " "
  loc_64FFE6: ConcatStr
  loc_64FFE7: FStStrNoPop var_B4
  loc_64FFEA: ILdRf var_90
  loc_64FFED: ConcatStr
  loc_64FFEE: CVarStr var_D4
  loc_64FFF1: ImpAdCallFPR4 push Shell(, )
  loc_64FFF6: CI4R8
  loc_64FFF7: ImpAdStR4 MemVar_74C6E0
  loc_64FFFA: FFree1Str var_B4
  loc_64FFFD: FFree1Var var_D4 = ""
  loc_650000: Branch loc_650026
  loc_650003: ILdRf var_9C
  loc_650006: CI4Str
  loc_650007: ILdRf var_8C
  loc_65000A: LitStr " "
  loc_65000D: ConcatStr
  loc_65000E: FStStrNoPop var_B4
  loc_650011: ILdRf var_90
  loc_650014: ConcatStr
  loc_650015: CVarStr var_D4
  loc_650018: ImpAdCallFPR4 push Shell(, )
  loc_65001D: FStFPR8 var_110
  loc_650020: FFree1Str var_B4
  loc_650023: FFree1Var var_D4 = ""
  loc_650026: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_65002B: ExitProc
  loc_65002C: FLdRfVar var_118
  loc_65002F: ImpAdCallI2 Err 'rtcErrObj
  loc_650034: FStAdFunc var_114
  loc_650037: FLdPr var_114
  loc_65003A:  = Err.Number
  loc_65003F: ILdRf var_118
  loc_650042: CStrI4
  loc_650044: FStStr var_94
  loc_650047: FFree1Ad var_114
  loc_65004A: FLdRfVar var_B4
  loc_65004D: ImpAdCallI2 Err 'rtcErrObj
  loc_650052: FStAdFunc var_114
  loc_650055: FLdPr var_114
  loc_650058:  = Err.Description
  loc_65005D: FLdZeroAd var_B4
  loc_650060: FStStr var_98
  loc_650063: FFree1Ad var_114
  loc_650066: FLdRfVar var_118
  loc_650069: ImpAdCallI2 Err 'rtcErrObj
  loc_65006E: FStAdFunc var_114
  loc_650071: FLdPr var_114
  loc_650074:  = Err.Number
  loc_650079: ILdRf var_118
  loc_65007C: LitI4 &H35
  loc_650081: EqI4
  loc_650082: FFree1Ad var_114
  loc_650085: BranchF loc_6500D0
  loc_650088: LitVar_Missing var_13C
  loc_65008B: LitVar_Missing var_104
  loc_65008E: LitVarStr var_C4, "Error de aplicación"
  loc_650093: FStVarCopyObj var_E4
  loc_650096: FLdRfVar var_E4
  loc_650099: LitI4 &H10
  loc_65009E: LitStr "Error al cargar el path: "
  loc_6500A1: ILdRf var_8C
  loc_6500A4: ConcatStr
  loc_6500A5: FStStrNoPop var_B4
  loc_6500A8: LitStr " "
  loc_6500AB: ConcatStr
  loc_6500AC: FStStrNoPop var_11C
  loc_6500AF: ILdRf var_90
  loc_6500B2: ConcatStr
  loc_6500B3: CVarStr var_D4
  loc_6500B6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6500BB: FFreeStr var_B4 = ""
  loc_6500C2: FFreeVar var_D4 = "": var_E4 = "": var_104 = ""
  loc_6500CD: Branch loc_65013D
  loc_6500D0: FLdRfVar var_118
  loc_6500D3: ImpAdCallI2 Err 'rtcErrObj
  loc_6500D8: FStAdFunc var_114
  loc_6500DB: FLdPr var_114
  loc_6500DE:  = Err.Number
  loc_6500E3: ILdRf var_118
  loc_6500E6: LitI4 5
  loc_6500EB: EqI4
  loc_6500EC: FFree1Ad var_114
  loc_6500EF: BranchF loc_6500F8
  loc_6500F2: Branch loc_64FF37
  loc_6500F5: Branch loc_65013D
  loc_6500F8: LitVar_Missing var_13C
  loc_6500FB: LitVar_Missing var_104
  loc_6500FE: LitVarStr var_C4, "Error de aplicación"
  loc_650103: FStVarCopyObj var_E4
  loc_650106: FLdRfVar var_E4
  loc_650109: LitI4 &H10
  loc_65010E: LitStr "Error: "
  loc_650111: ILdRf var_94
  loc_650114: ConcatStr
  loc_650115: FStStrNoPop var_B4
  loc_650118: LitStr " "
  loc_65011B: ConcatStr
  loc_65011C: FStStrNoPop var_11C
  loc_65011F: ILdRf var_98
  loc_650122: ConcatStr
  loc_650123: CVarStr var_D4
  loc_650126: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65012B: FFreeStr var_B4 = ""
  loc_650132: FFreeVar var_D4 = "": var_E4 = "": var_104 = ""
  loc_65013D: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_650142: ExitProc
End Function

Private Function Proc_94_4_605BC0(arg_C, arg_10, arg_14) '605BC0
  'Data Table: 409184
  loc_605AF8: ILdI4 arg_14
  loc_605AFB: FLdRfVar var_E4
  loc_605AFE: CStr2Ansi
  loc_605AFF: ILdRf var_E4
  loc_605B02: LitI4 &HA
  loc_605B07: FLdRfVar var_C4
  loc_605B0A: LdFixedStr
  loc_605B0D: FStStrNoPop var_D8
  loc_605B10: FLdRfVar var_DC
  loc_605B13: CStr2Ansi
  loc_605B14: ILdRf var_DC
  loc_605B17: LitStr vbNullString
  loc_605B1A: FLdRfVar var_D4
  loc_605B1D: CStr2Ansi
  loc_605B1E: ILdRf var_D4
  loc_605B21: ILdI4 arg_10
  loc_605B24: FLdRfVar var_D0
  loc_605B27: CStr2Ansi
  loc_605B28: ILdRf var_D0
  loc_605B2B: ILdI4 arg_C
  loc_605B2E: FLdRfVar var_CC
  loc_605B31: CStr2Ansi
  loc_605B32: ILdRf var_CC
  loc_605B35: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_605B3A: FStR4 var_E8
  loc_605B3D: SetLastSystemError
  loc_605B3E: ILdRf var_CC
  loc_605B41: ILdRf arg_C
  loc_605B44: CStr2Uni
  loc_605B46: ILdRf var_D0
  loc_605B49: ILdRf arg_10
  loc_605B4C: CStr2Uni
  loc_605B4E: ILdRf var_DC
  loc_605B51: FLdRfVar var_E0
  loc_605B54: CStr2Uni
  loc_605B56: ILdRf var_E0
  loc_605B59: FLdRfVar var_C4
  loc_605B5C: StFixedStr
  loc_605B5F: ILdRf var_E4
  loc_605B62: ILdRf arg_14
  loc_605B65: CStr2Uni
  loc_605B67: ILdRf var_E8
  loc_605B6A: FStR4 var_C8
  loc_605B6D: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_605B7E: ILdRf var_C8
  loc_605B81: FLdRfVar var_C4
  loc_605B84: LdFixedStr
  loc_605B87: PopTmpLdAdStr
  loc_605B8B: CVarRef
  loc_605B90: FLdRfVar var_108
  loc_605B93: ImpAdCallFPR4  = Left(, )
  loc_605B98: ILdRf var_CC
  loc_605B9B: FLdRfVar var_C4
  loc_605B9E: StFixedStr
  loc_605BA1: FLdRfVar var_108
  loc_605BA4: FLdRfVar var_118
  loc_605BA7: ImpAdCallFPR4  = Trim()
  loc_605BAC: FLdRfVar var_118
  loc_605BAF: CStrVarTmp
  loc_605BB0: FStStr var_88
  loc_605BB3: FFree1Str var_CC
  loc_605BB6: FFreeVar var_108 = ""
  loc_605BBD: ExitProc
  loc_605BBE: FFree1Ad Proc_94_4_605BC0C00
End Function

Private Function Proc_94_5_63661C(arg_C) '63661C
  'Data Table: 409184
  loc_636414: OnErrorGoto loc_636615
  loc_636417: ILdRf arg_C
  loc_63641A: CVarRef
  loc_63641F: FLdRfVar var_B4
  loc_636422: ImpAdCallFPR4  = Trim()
  loc_636427: FLdRfVar var_B4
  loc_63642A: CStrVarTmp
  loc_63642B: IStStr
  loc_63642F: FFree1Var var_B4 = ""
  loc_636432: ILdI4 arg_C
  loc_636435: LitStr vbNullString
  loc_636438: EqStr
  loc_63643A: BranchF loc_636440
  loc_63643D: Branch loc_636615
  loc_636440: ILdI4 arg_C
  loc_636443: FnLenStr
  loc_636444: CUI1I4
  loc_636446: FStUI1 var_94
  loc_63644A: LitI2_Byte 1
  loc_63644C: CUI1I2
  loc_63644E: FStUI1 var_92
  loc_636452: LitVarI2 var_B4, 1
  loc_636457: FLdUI1
  loc_63645B: CI4UI1
  loc_63645C: ILdRf arg_C
  loc_63645F: CVarRef
  loc_636464: FLdRfVar var_D4
  loc_636467: ImpAdCallFPR4  = Mid(, , )
  loc_63646C: FLdRfVar var_D4
  loc_63646F: CStrVarTmp
  loc_636470: FStStr var_90
  loc_636473: FFreeVar var_B4 = ""
  loc_63647A: ILdRf var_90
  loc_63647D: ImpAdCallI2 Asc()
  loc_636482: LitStr "0"
  loc_636485: ImpAdCallI2 Asc()
  loc_63648A: LtI2
  loc_63648B: LitStr "9"
  loc_63648E: ImpAdCallI2 Asc()
  loc_636493: ILdRf var_90
  loc_636496: ImpAdCallI2 Asc()
  loc_63649B: LtI2
  loc_63649C: OrI4
  loc_63649D: BranchF loc_6364C9
  loc_6364A0: ILdRf var_90
  loc_6364A3: LitStr "+"
  loc_6364A6: EqStr
  loc_6364A8: ILdRf var_90
  loc_6364AB: LitStr "-"
  loc_6364AE: EqStr
  loc_6364B0: OrI4
  loc_6364B1: BranchF loc_6364C6
  loc_6364B4: FLdUI1
  loc_6364B8: CI2UI1
  loc_6364BA: LitI2_Byte 1
  loc_6364BC: AddI2
  loc_6364BD: CUI1I2
  loc_6364BF: FStUI1 var_92
  loc_6364C3: Branch loc_6364C9
  loc_6364C6: Branch loc_636615
  loc_6364C9: LitVarI2 var_B4, 1
  loc_6364CE: FLdUI1
  loc_6364D2: CI4UI1
  loc_6364D3: ILdRf arg_C
  loc_6364D6: CVarRef
  loc_6364DB: FLdRfVar var_D4
  loc_6364DE: ImpAdCallFPR4  = Mid(, , )
  loc_6364E3: FLdRfVar var_D4
  loc_6364E6: CStrVarTmp
  loc_6364E7: FStStr var_90
  loc_6364EA: FFreeVar var_B4 = ""
  loc_6364F1: ILdRf var_90
  loc_6364F4: LitStr " "
  loc_6364F7: EqStr
  loc_6364F9: BranchF loc_636546
  loc_6364FC: FLdUI1
  loc_636500: CI2UI1
  loc_636502: LitI2_Byte 1
  loc_636504: AddI2
  loc_636505: CUI1I2
  loc_636507: FStUI1 var_92
  loc_63650B: FLdUI1
  loc_63650F: FLdUI1
  loc_636513: LtUI1
  loc_636515: BranchF loc_63651B
  loc_636518: Branch loc_636615
  loc_63651B: LitVarI2 var_B4, 1
  loc_636520: FLdUI1
  loc_636524: CI4UI1
  loc_636525: ILdRf arg_C
  loc_636528: CVarRef
  loc_63652D: FLdRfVar var_D4
  loc_636530: ImpAdCallFPR4  = Mid(, , )
  loc_636535: FLdRfVar var_D4
  loc_636538: CStrVarTmp
  loc_636539: FStStr var_90
  loc_63653C: FFreeVar var_B4 = ""
  loc_636543: Branch loc_6364F1
  loc_636546: ILdRf var_90
  loc_636549: LitStr "."
  loc_63654C: EqStr
  loc_63654E: ILdRf var_90
  loc_636551: LitStr ","
  loc_636554: EqStr
  loc_636556: OrI4
  loc_636557: LitStr "0"
  loc_63655A: ImpAdCallI2 Asc()
  loc_63655F: ILdRf var_90
  loc_636562: ImpAdCallI2 Asc()
  loc_636567: LeI2
  loc_636568: ILdRf var_90
  loc_63656B: ImpAdCallI2 Asc()
  loc_636570: LitStr "9"
  loc_636573: ImpAdCallI2 Asc()
  loc_636578: LeI2
  loc_636579: AndI4
  loc_63657A: OrI4
  loc_63657B: BranchF loc_6365C8
  loc_63657E: FLdUI1
  loc_636582: CI2UI1
  loc_636584: LitI2_Byte 1
  loc_636586: AddI2
  loc_636587: CUI1I2
  loc_636589: FStUI1 var_92
  loc_63658D: FLdUI1
  loc_636591: FLdUI1
  loc_636595: LtUI1
  loc_636597: BranchF loc_63659D
  loc_63659A: Branch loc_6365C8
  loc_63659D: LitVarI2 var_B4, 1
  loc_6365A2: FLdUI1
  loc_6365A6: CI4UI1
  loc_6365A7: ILdRf arg_C
  loc_6365AA: CVarRef
  loc_6365AF: FLdRfVar var_D4
  loc_6365B2: ImpAdCallFPR4  = Mid(, , )
  loc_6365B7: FLdRfVar var_D4
  loc_6365BA: CStrVarTmp
  loc_6365BB: FStStr var_90
  loc_6365BE: FFreeVar var_B4 = ""
  loc_6365C5: Branch loc_636546
  loc_6365C8: FLdUI1
  loc_6365CC: CI2UI1
  loc_6365CE: LitI2_Byte 1
  loc_6365D0: SubI2
  loc_6365D1: CVarI2 var_B4
  loc_6365D4: LitI4 1
  loc_6365D9: ILdRf arg_C
  loc_6365DC: CVarRef
  loc_6365E1: FLdRfVar var_D4
  loc_6365E4: ImpAdCallFPR4  = Mid(, , )
  loc_6365E9: FLdRfVar var_D4
  loc_6365EC: CStrVarTmp
  loc_6365ED: IStStr
  loc_6365F1: FFreeVar var_B4 = ""
  loc_6365F8: ILdRf arg_C
  loc_6365FB: CVarRef
  loc_636600: ImpAdCallI2 IsNumeric()
  loc_636605: NotI4
  loc_636606: BranchF loc_63660C
  loc_636609: Branch loc_636615
  loc_63660C: ILdI4 arg_C
  loc_63660F: CR8Str
  loc_636611: FStFPR8 var_8C
  loc_636614: ExitProcR8
  loc_636615: LitI2_Byte 0
  loc_636617: CR8I2
  loc_636618: FStFPR8 var_8C
  loc_63661B: ExitProcR8
End Function

Private Function Proc_94_6_629E14(arg_C) '629E14
  'Data Table: 409184
  loc_629C94: OnErrorGoto loc_629D52
  loc_629C99: ILdI4 arg_C
  loc_629C9C: LitStr vbNullString
  loc_629C9F: EqStr
  loc_629CA1: BranchF loc_629D01
  loc_629CA6: FLdRfVar var_8C
  loc_629CA9: FLdRfVar var_88
  loc_629CAC: ImpAdLdRf MemVar_7520D4
  loc_629CAF: NewIfNullPr Global
  loc_629CB2:  = Global.App
  loc_629CB7: FLdPr var_88
  loc_629CBA:  = App.Path
  loc_629CBF: ILdRf var_8C
  loc_629CC2: LitStr "\Estado.tmp"
  loc_629CC5: ConcatStr
  loc_629CC6: FStStrNoPop var_A0
  loc_629CC9: LitI2_Byte 5
  loc_629CCB: LitI2_Byte &HFF
  loc_629CCD: OpenFile
  loc_629CD1: FFreeStr var_8C = ""
  loc_629CD8: FFree1Ad var_88
  loc_629CDD: LitI2_Byte 5
  loc_629CDF: ImpAdCallI2 push EOF()
  loc_629CE4: NotI4
  loc_629CE5: BranchF loc_629CF8
  loc_629CEA: LitI2_Byte 5
  loc_629CEC: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_629CF1: LineInputStr
  loc_629CF5: Branch loc_629CDB
  loc_629CFA: LitI2_Byte 5
  loc_629CFC: Close
  loc_629CFE: Branch loc_629D4D
  loc_629D05: FLdRfVar var_8C
  loc_629D08: FLdRfVar var_88
  loc_629D0B: ImpAdLdRf MemVar_7520D4
  loc_629D0E: NewIfNullPr Global
  loc_629D11:  = Global.App
  loc_629D16: FLdPr var_88
  loc_629D19:  = App.Path
  loc_629D1E: ILdRf var_8C
  loc_629D21: LitStr "\Estado.tmp"
  loc_629D24: ConcatStr
  loc_629D25: FStStrNoPop var_A0
  loc_629D28: LitI2_Byte 5
  loc_629D2A: LitI2_Byte &HFF
  loc_629D2C: OpenFile
  loc_629D30: FFreeStr var_8C = ""
  loc_629D37: FFree1Ad var_88
  loc_629D3C: ILdI4 arg_C
  loc_629D3F: LitI2_Byte 5
  loc_629D41: WriteFile
  loc_629D49: LitI2_Byte 5
  loc_629D4B: Close
  loc_629D51: ExitProc
  loc_629D54: FLdRfVar var_A4
  loc_629D57: ImpAdCallI2 Err 'rtcErrObj
  loc_629D5C: FStAdFunc var_88
  loc_629D5F: FLdPr var_88
  loc_629D62:  = Err.Number
  loc_629D67: ILdRf var_A4
  loc_629D6A: LitI4 &H35
  loc_629D6F: EqI4
  loc_629D70: FFree1Ad var_88
  loc_629D73: BranchF loc_629E0F
  loc_629D78: FLdRfVar var_8C
  loc_629D7B: FLdRfVar var_88
  loc_629D7E: ImpAdLdRf MemVar_7520D4
  loc_629D81: NewIfNullPr Global
  loc_629D84:  = Global.App
  loc_629D89: FLdPr var_88
  loc_629D8C:  = App.Path
  loc_629D91: ILdRf var_8C
  loc_629D94: LitStr "\Estado.tmp"
  loc_629D97: ConcatStr
  loc_629D98: FStStrNoPop var_A0
  loc_629D9B: LitI2_Byte 5
  loc_629D9D: LitI2_Byte &HFF
  loc_629D9F: OpenFile
  loc_629DA3: FFreeStr var_8C = ""
  loc_629DAA: FFree1Ad var_88
  loc_629DAF: FLdRfVar var_B4
  loc_629DB2: ImpAdCallFPR4  = Now
  loc_629DB7: FLdRfVar var_B4
  loc_629DBA: FLdRfVar var_C4
  loc_629DBD: ImpAdCallFPR4  = Month()
  loc_629DC2: LitI4 1
  loc_629DC7: LitI4 1
  loc_629DCC: LitVarStr var_9C, "00"
  loc_629DD1: FStVarCopyObj var_D4
  loc_629DD4: FLdRfVar var_D4
  loc_629DD7: FLdRfVar var_C4
  loc_629DDA: FLdRfVar var_E4
  loc_629DDD: ImpAdCallFPR4  = Format(, )
  loc_629DE2: FLdRfVar var_E4
  loc_629DE5: LitVarStr var_F4, "1"
  loc_629DEA: ConcatVar var_104
  loc_629DEE: LitI2_Byte 5
  loc_629DF0: WriteFile
  loc_629DF6: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_E4 = ""
  loc_629E05: LitI2_Byte 5
  loc_629E07: Close
  loc_629E0B: Resume
  loc_629E13: ExitProc
End Function

Private Function Proc_94_7_603DD0(arg_C) '603DD0
  'Data Table: 43B664
  loc_603CFC: LitNothing
  loc_603CFE: CastAd
  loc_603D01: FStAdFunc var_A8
  loc_603D04: FLdRfVar var_A8
  loc_603D07: LitStr "Login del Modulo numero: "
  loc_603D0A: ILdI2 arg_C
  loc_603D0D: CStrUI1
  loc_603D0F: FStStrNoPop var_A0
  loc_603D12: ConcatStr
  loc_603D13: PopTmpLdAdStr
  loc_603D17: FLdRfVar var_B8
  loc_603D1A: ImpAdCallFPR4  = Proc_166_11_66CC58(, )
  loc_603D1F: FFreeStr var_A0 = ""
  loc_603D26: FFree1Ad var_A8
  loc_603D29: FFree1Var var_B8 = ""
  loc_603D2C: FLdRfVar var_BA
  loc_603D2F: ILdRf arg_C
  loc_603D32: ImpAdLdRf MemVar_74A21C
  loc_603D35: NewIfNullPr clsSecurity
  loc_603D3D: FLdUI1
  loc_603D41: CI2UI1
  loc_603D43: LitI2_Byte 0
  loc_603D45: GtI2
  loc_603D46: BranchF loc_603DA6
  loc_603D49: FLdRfVar var_BA
  loc_603D4C: ILdRf arg_C
  loc_603D4F: ImpAdLdRf MemVar_74A21C
  loc_603D52: NewIfNullPr clsSecurity
  loc_603D5A: FLdUI1
  loc_603D5E: ImpAdLdRf MemVar_74DC58
  loc_603D61: NewIfNullPr frmLogin
  loc_603D64: Call frmLogin.NivelPut(from_stack_1v)
  loc_603D69: ILdI2 arg_C
  loc_603D6C: ImpAdLdRf MemVar_74DC58
  loc_603D6F: NewIfNullPr frmLogin
  loc_603D72: Call frmLogin.ModuloPut(from_stack_1v)
  loc_603D77: OnErrorGoto loc_603DAB
  loc_603D7A: LitVar_Missing var_DC
  loc_603D7D: PopAdLdVar
  loc_603D7E: LitVarI2 var_CC, 1
  loc_603D83: PopAdLdVar
  loc_603D84: ImpAdLdRf MemVar_74DC58
  loc_603D87: NewIfNullPr frmLogin
  loc_603D8A: frmLogin.Show from_stack_1, from_stack_2
  loc_603D8F: FLdRfVar var_BA
  loc_603D92: ImpAdLdRf MemVar_74DC58
  loc_603D95: NewIfNullPr frmLogin
  loc_603D98: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_603D9D: FLdI2 var_BA
  loc_603DA0: FStI2 var_86
  loc_603DA3: Branch loc_603DAB
  loc_603DA6: LitI2_Byte &HFF
  loc_603DA8: FStI2 var_86
  loc_603DAB: FLdRfVar var_E0
  loc_603DAE: ImpAdCallI2 Err 'rtcErrObj
  loc_603DB3: FStAdFunc var_A8
  loc_603DB6: FLdPr var_A8
  loc_603DB9:  = frmLogin.Number
  loc_603DBE: ILdRf var_E0
  loc_603DC1: LitI4 &H190
  loc_603DC6: EqI4
  loc_603DC7: FFree1Ad var_A8
  loc_603DCA: BranchF loc_603DCE
  loc_603DCD: ExitProcI2
  loc_603DCE: ExitProcI2
End Function

Private Function Proc_94_8_5DD400(arg_C, arg_10) '5DD400
  'Data Table: 409184
  loc_5DD3BC: LitStr "CEM44.ini"
  loc_5DD3BF: FLdRfVar var_94
  loc_5DD3C2: CStr2Ansi
  loc_5DD3C3: ILdRf var_94
  loc_5DD3C6: ILdI4 arg_10
  loc_5DD3C9: ILdI4 arg_C
  loc_5DD3CC: FLdRfVar var_90
  loc_5DD3CF: CStr2Ansi
  loc_5DD3D0: ILdRf var_90
  loc_5DD3D3: LitStr "GENERAL"
  loc_5DD3D6: FLdRfVar var_8C
  loc_5DD3D9: CStr2Ansi
  loc_5DD3DA: ILdRf var_8C
  loc_5DD3DD: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_5DD3E2: FStR4 var_98
  loc_5DD3E5: SetLastSystemError
  loc_5DD3E6: ILdRf var_90
  loc_5DD3E9: ILdRf arg_C
  loc_5DD3EC: CStr2Uni
  loc_5DD3EE: ILdRf var_98
  loc_5DD3F1: FStR4 var_88
  loc_5DD3F4: FFreeStr var_8C = "": var_90 = ""
  loc_5DD3FD: ExitProc
End Function
