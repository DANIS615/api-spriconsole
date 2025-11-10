
Private Function Proc_167_0_6240E8(arg_C, arg_10, arg_14) '6240E8
  'Data Table: 402C3C
  loc_623F80: ILdRf arg_10
  loc_623F83: FStStrCopy var_8C
  loc_623F86: OnErrorGoto loc_6240E3
  loc_623F89: FLdRfVar var_90
  loc_623F8C: LitI4 0
  loc_623F91: FLdRfVar var_98
  loc_623F94: LitI4 0
  loc_623F99: ILdRf var_8C
  loc_623F9C: FLdRfVar var_A4
  loc_623F9F: CStr2Ansi
  loc_623FA0: ILdRf var_A4
  loc_623FA3: ILdRf arg_C
  loc_623FA6: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_623FAB: FStR4 var_A8
  loc_623FAE: SetLastSystemError
  loc_623FAF: ILdRf var_A4
  loc_623FB2: FLdRfVar var_8C
  loc_623FB5: CStr2Uni
  loc_623FB7: ILdRf var_A8
  loc_623FBA: FStR4 var_94
  loc_623FBD: FFree1Str var_A4
  loc_623FC0: ILdRf var_94
  loc_623FC3: LitI4 0
  loc_623FC8: NeI4
  loc_623FC9: BranchF loc_623FD2
  loc_623FCC: LitI4 5
  loc_623FD1: Error
  loc_623FD2: ILdRf var_98
  loc_623FD5: FStR4 var_AC
  loc_623FD8: ILdRf var_AC
  loc_623FDB: LitI4 1
  loc_623FE0: EqI4
  loc_623FE1: BranchF loc_62407A
  loc_623FE4: LitVarI2 var_CC, 0
  loc_623FE9: ILdRf var_90
  loc_623FEC: FLdRfVar var_DC
  loc_623FEF: ImpAdCallFPR4  = String(, )
  loc_623FF4: FLdRfVar var_DC
  loc_623FF7: CStrVarTmp
  loc_623FF8: FStStr var_A0
  loc_623FFB: FFreeVar var_CC = ""
  loc_624002: FLdRfVar var_90
  loc_624005: ILdRf var_A0
  loc_624008: FLdRfVar var_E0
  loc_62400B: CStr2Ansi
  loc_62400C: ILdRf var_E0
  loc_62400F: FLdRfVar var_98
  loc_624012: LitI4 0
  loc_624017: ILdRf var_8C
  loc_62401A: FLdRfVar var_A4
  loc_62401D: CStr2Ansi
  loc_62401E: ILdRf var_A4
  loc_624021: ILdRf arg_C
  loc_624024: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_624029: FStR4 var_A8
  loc_62402C: SetLastSystemError
  loc_62402D: ILdRf var_A4
  loc_624030: FLdRfVar var_8C
  loc_624033: CStr2Uni
  loc_624035: ILdRf var_E0
  loc_624038: FLdRfVar var_A0
  loc_62403B: CStr2Uni
  loc_62403D: ILdRf var_A8
  loc_624040: FStR4 var_94
  loc_624043: FFreeStr var_A4 = ""
  loc_62404A: ILdRf var_94
  loc_62404D: LitI4 0
  loc_624052: EqI4
  loc_624053: BranchF loc_624070
  loc_624056: ILdRf var_90
  loc_624059: LitI4 1
  loc_62405E: SubI4
  loc_62405F: ILdRf var_A0
  loc_624062: ImpAdCallI2 Left$(, )
  loc_624067: CVarStr var_CC
  loc_62406A: IStDarg arg_14
  loc_62406D: Branch loc_624077
  loc_624070: LitVar_Empty
  loc_624074: IStDarg arg_14
  loc_624077: Branch loc_6240DC
  loc_62407A: ILdRf var_AC
  loc_62407D: LitI4 4
  loc_624082: EqI4
  loc_624083: BranchF loc_6240D4
  loc_624086: FLdRfVar var_90
  loc_624089: FLdRfVar var_9C
  loc_62408C: FLdRfVar var_98
  loc_62408F: LitI4 0
  loc_624094: ILdRf var_8C
  loc_624097: FLdRfVar var_A4
  loc_62409A: CStr2Ansi
  loc_62409B: ILdRf var_A4
  loc_62409E: ILdRf arg_C
  loc_6240A1: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_6240A6: FStR4 var_A8
  loc_6240A9: SetLastSystemError
  loc_6240AA: ILdRf var_A4
  loc_6240AD: FLdRfVar var_8C
  loc_6240B0: CStr2Uni
  loc_6240B2: ILdRf var_A8
  loc_6240B5: FStR4 var_94
  loc_6240B8: FFree1Str var_A4
  loc_6240BB: ILdRf var_94
  loc_6240BE: LitI4 0
  loc_6240C3: EqI4
  loc_6240C4: BranchF loc_6240D1
  loc_6240C7: ILdRf var_9C
  loc_6240CA: CVarI4
  loc_6240CE: IStDarg arg_14
  loc_6240D1: Branch loc_6240DC
  loc_6240D4: LitI4 -1
  loc_6240D9: FStR4 var_94
  loc_6240DC: ILdRf var_94
  loc_6240DF: FStR4 var_88
  loc_6240E2: ExitProc
  loc_6240E3: Resume
  loc_6240E7: ExitProc
End Function

Private Function Proc_167_1_5F9EB0() '5F9EB0
  'Data Table: 402C3C
  loc_5F9DFC: LitI4 &HA
  loc_5F9E01: FLdRfVar var_B4
  loc_5F9E04: ImpAdCallFPR4  = Space()
  loc_5F9E09: FLdRfVar var_B4
  loc_5F9E0C: CStrVarTmp
  loc_5F9E0D: FLdRfVar var_9A
  loc_5F9E10: StFixedStrFree
  loc_5F9E14: FFree1Var var_B4 = ""
  loc_5F9E17: LitI4 3
  loc_5F9E1C: ImpAdCallI2 Chr$()
  loc_5F9E21: FStStrNoPop var_B8
  loc_5F9E24: LitStr "141"
  loc_5F9E27: ConcatStr
  loc_5F9E28: FStStr var_A4
  loc_5F9E2B: FFree1Str var_B8
  loc_5F9E2E: LitI2 1000
  loc_5F9E31: LitI4 &HA
  loc_5F9E36: FLdRfVar var_9A
  loc_5F9E39: LdFixedStr
  loc_5F9E3C: FStStrNoPop var_C0
  loc_5F9E3F: FLdRfVar var_C4
  loc_5F9E42: CStr2Ansi
  loc_5F9E43: ILdRf var_C4
  loc_5F9E46: ILdRf var_A4
  loc_5F9E49: FLdRfVar var_BC
  loc_5F9E4C: CStr2Ansi
  loc_5F9E4D: ILdRf var_BC
  loc_5F9E50: ImpAdLdI4 MemVar_74BF90
  loc_5F9E53: FLdRfVar var_B8
  loc_5F9E56: CStr2Ansi
  loc_5F9E57: ILdRf var_B8
  loc_5F9E5A: ImpAdCallI2 ()
  loc_5F9E5F: FStI2 var_CA
  loc_5F9E62: SetLastSystemError
  loc_5F9E63: ILdRf var_B8
  loc_5F9E66: ImpAdLdRf MemVar_74BF90
  loc_5F9E69: CStr2Uni
  loc_5F9E6B: ILdRf var_BC
  loc_5F9E6E: FLdRfVar var_A4
  loc_5F9E71: CStr2Uni
  loc_5F9E73: ILdRf var_C4
  loc_5F9E76: FLdRfVar var_C8
  loc_5F9E79: CStr2Uni
  loc_5F9E7B: ILdRf var_C8
  loc_5F9E7E: FLdRfVar var_9A
  loc_5F9E81: StFixedStr
  loc_5F9E84: FLdI2 var_CA
  loc_5F9E87: CI4UI1
  loc_5F9E88: FStR4 var_A0
  loc_5F9E8B: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_5F9E98: FLdRfVar var_9A
  loc_5F9E9B: LdFixedStr
  loc_5F9E9E: IStStr
  loc_5F9EA2: ILdRf var_A0
  loc_5F9EA5: LitI4 0
  loc_5F9EAA: EqI4
  loc_5F9EAB: FStI2 var_86
  loc_5F9EAE: ExitProcI2
End Function

Private Function Proc_167_2_5E0240() '5E0240
  'Data Table: 418E70
  loc_5E01E8: FLdRfVar var_88
  loc_5E01EB: LitI4 1
  loc_5E01F0: LitI4 0
  loc_5E01F5: LitStr "SOFTWARE\Microsoft\Windows NT\CurrentVersion"
  loc_5E01F8: FLdRfVar var_8C
  loc_5E01FB: CStr2Ansi
  loc_5E01FC: ILdRf var_8C
  loc_5E01FF: LitI4 -2147483646
  loc_5E0204: ImpAdCallI2 RegOpenKeyEx(, , , , )
  loc_5E0209: FStR4 var_90
  loc_5E020C: SetLastSystemError
  loc_5E020D: ILdRf var_90
  loc_5E0210: LitI4 0
  loc_5E0215: NeI4
  loc_5E0216: FFree1Str var_8C
  loc_5E0219: BranchF loc_5E0225
  loc_5E021C: LitStr "unknow"
  loc_5E021F: FMemStStrCopy
  loc_5E0224: ExitProc
  loc_5E0225: LitStr "CurrentVersion"
  loc_5E0228: ILdRf var_88
  loc_5E022B: ImpAdCallI2 Proc_167_29_5EEE2C(, )
  loc_5E0230: FMemStStr arg_8(0)
  loc_5E0236: ILdRf var_88
  loc_5E0239: ImpAdCallFPR4 RegCloseKey()
  loc_5E023E: SetLastSystemError
  loc_5E023F: ExitProc
End Function

Private Function Proc_167_3_5E99D0() '5E99D0
  'Data Table: 418E70
  loc_5E9964: LitI2_Byte 0
  loc_5E9966: FStI2 var_86
  loc_5E9969: LitVarI2 var_B8, 3
  loc_5E996E: LitI4 1
  loc_5E9973: ImpAdLdRf MemVar_74BF90
  loc_5E9976: CVarRef
  loc_5E997B: FLdRfVar var_C8
  loc_5E997E: ImpAdCallFPR4  = Mid(, , )
  loc_5E9983: FLdRfVar var_C8
  loc_5E9986: LitVarStr var_D8, "\\."
  loc_5E998B: HardType
  loc_5E998C: EqVar var_E8
  loc_5E9990: NotVar var_F8
  loc_5E9994: ImpAdLdRf MemVar_74BF90
  loc_5E9997: CVarRef
  loc_5E999C: FLdRfVar var_118
  loc_5E999F: ImpAdCallFPR4  = Trim()
  loc_5E99A4: FLdRfVar var_118
  loc_5E99A7: LitVarStr var_128, "\\127.0.0.1"
  loc_5E99AC: HardType
  loc_5E99AD: EqVar var_138
  loc_5E99B1: NotVar var_148
  loc_5E99B5: AndVar var_158
  loc_5E99B9: CBoolVarNull
  loc_5E99BB: FFreeVar var_B8 = "": var_C8 = ""
  loc_5E99C4: BranchF loc_5E99CC
  loc_5E99C7: LitI2_Byte &HFF
  loc_5E99C9: FStI2 var_86
  loc_5E99CC: ExitProcI2
  loc_5E99CD: FnAbsR4
  loc_5E99CE: FStAdFunc arg_3800
End Function

Private Function Proc_167_4_6114E0() '6114E0
  'Data Table: 43B664
  loc_6113FC: LitI2_Byte &HFF
  loc_6113FE: FStI2 var_86
  loc_611401: LitStr "CEM44.INI"
  loc_611404: FLdRfVar var_98
  loc_611407: CStr2Ansi
  loc_611408: ILdRf var_98
  loc_61140B: LitI4 0
  loc_611410: LitStr "PROHIBIR_ACCIONES_OPERADOR"
  loc_611413: FLdRfVar var_94
  loc_611416: CStr2Ansi
  loc_611417: ILdRf var_94
  loc_61141A: LitStr "GENERAL"
  loc_61141D: FLdRfVar var_90
  loc_611420: CStr2Ansi
  loc_611421: ILdRf var_90
  loc_611424: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_611429: FStR4 var_9C
  loc_61142C: SetLastSystemError
  loc_61142D: ILdRf var_9C
  loc_611430: LitI4 1
  loc_611435: EqI4
  loc_611436: FFreeStr var_90 = "": var_94 = ""
  loc_61143F: BranchF loc_6114DE
  loc_611442: FLdRfVar var_94
  loc_611445: LitVar_Missing var_1E0
  loc_611448: LitVar_Missing var_1C0
  loc_61144B: LitVar_Missing var_1A0
  loc_61144E: LitVar_Missing var_180
  loc_611451: LitVar_Missing var_160
  loc_611454: LitVar_Missing var_140
  loc_611457: LitVar_Missing var_120
  loc_61145A: LitVar_Missing var_100
  loc_61145D: LitVar_Missing var_E0
  loc_611460: LitVar_Missing var_C0
  loc_611463: LitStr "Funcionalidad no habilitada."
  loc_611466: FStStrCopy var_90
  loc_611469: FLdRfVar var_90
  loc_61146C: LitI4 &HC0
  loc_611471: PopTmpLdAdStr var_9C
  loc_611474: LitI2_Byte 9
  loc_611476: PopTmpLdAd2 var_9E
  loc_611479: ImpAdLdRf MemVar_74C7D0
  loc_61147C: NewIfNullPr clsMsg
  loc_61147F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_611484: FLdZeroAd var_94
  loc_611487: FStStr var_8C
  loc_61148A: FFree1Str var_90
  loc_61148D: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6114A4: FLdRfVar var_90
  loc_6114A7: ImpAdLdRf MemVar_74C760
  loc_6114AA: NewIfNullPr Formx
  loc_6114AD:  = Formx.Caption
  loc_6114B2: LitVar_Missing var_100
  loc_6114B5: LitVar_Missing var_E0
  loc_6114B8: FLdZeroAd var_90
  loc_6114BB: CVarStr var_C0
  loc_6114BE: LitI4 &H40
  loc_6114C3: FLdRfVar var_8C
  loc_6114C6: CVarRef
  loc_6114CB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6114D0: FFreeVar var_C0 = "": var_E0 = ""
  loc_6114D9: LitI2_Byte 0
  loc_6114DB: FStI2 var_86
  loc_6114DE: ExitProcI2
End Function

Private Function Proc_167_5_5F8FC8(arg_20) '5F8FC8
  'Data Table: 409184
  loc_5F8F14: LitVarI2 var_C0, 3
  loc_5F8F19: LitI4 1
  loc_5F8F1E: ImpAdLdRf MemVar_74BF90
  loc_5F8F21: CVarRef
  loc_5F8F26: FLdRfVar var_D0
  loc_5F8F29: ImpAdCallFPR4  = Mid(, , )
  loc_5F8F2E: FLdRfVar var_D0
  loc_5F8F31: LitVarStr var_E0, "\\."
  loc_5F8F36: HardType
  loc_5F8F37: EqVar var_F0
  loc_5F8F3B: NotVar var_100
  loc_5F8F3F: CBoolVarNull
  loc_5F8F41: FFreeVar var_C0 = ""
  loc_5F8F48: BranchF loc_5F8F78
  loc_5F8F4B: LitI2_Byte 1
  loc_5F8F4D: CUI1I2
  loc_5F8F4F: FLdRfVar var_8E
  loc_5F8F52: ImpAdLdUI1
  loc_5F8F56: ForUI1 var_104
  loc_5F8F5C: FLdUI1
  loc_5F8F60: CI4UI1
  loc_5F8F61: ImpAdLdRf MemVar_74A188
  loc_5F8F64: Ary1LdI2
  loc_5F8F65: NotI4
  loc_5F8F66: BranchF loc_5F8F6F
  loc_5F8F69: LitI2_Byte 0
  loc_5F8F6B: FStI2 var_86
  loc_5F8F6E: ExitProcI2
  loc_5F8F6F: FLdRfVar var_8E
  loc_5F8F72: NextUI1
  loc_5F8F78: FLdRfVar var_C0
  loc_5F8F7B: FLdRfVar var_108
  loc_5F8F7E: ImpAdLdRf MemVar_74C760
  loc_5F8F81: NewIfNullPr Formx
  loc_5F8F84: from_stack_1v = Formx.global_4589716Get()
  loc_5F8F89: FLdPr var_108
  loc_5F8F8C: Call 0.Method_arg_200 ()
  loc_5F8F91: FLdRfVar var_C0
  loc_5F8F94: NotVar var_D0
  loc_5F8F98: CBoolVarNull
  loc_5F8F9A: FFree1Ad var_108
  loc_5F8F9D: FFree1Var var_C0 = ""
  loc_5F8FA0: BranchF loc_5F8FBF
  loc_5F8FA3: FLdRfVar var_C0
  loc_5F8FA6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F8FAB: FLdRfVar var_C0
  loc_5F8FAE: CBoolVarNull
  loc_5F8FB0: FFree1Var var_C0 = ""
  loc_5F8FB3: BranchF loc_5F8FBC
  loc_5F8FB6: LitI2_Byte 0
  loc_5F8FB8: FStI2 var_86
  loc_5F8FBB: ExitProcI2
  loc_5F8FBC: Branch loc_5F8F78
  loc_5F8FBF: LitI2_Byte &HFF
  loc_5F8FC1: FStI2 var_86
  loc_5F8FC4: ExitProcI2
End Function

Private Function Proc_167_6_749858() '749858
  'Data Table: 418E70
  loc_73EA2C: FLdRfVar var_1D4
  loc_73EA2F: LitVar_Missing var_1D0
  loc_73EA32: LitVar_Missing var_1B0
  loc_73EA35: LitVar_Missing var_190
  loc_73EA38: LitVar_Missing var_170
  loc_73EA3B: LitVar_Missing var_150
  loc_73EA3E: LitVar_Missing var_130
  loc_73EA41: LitVar_Missing var_110
  loc_73EA44: LitVar_Missing var_F0
  loc_73EA47: LitVar_Missing var_D0
  loc_73EA4A: LitVar_Missing var_B0
  loc_73EA4D: LitStr "Mensaje del CEM - 44"
  loc_73EA50: FStStrCopy var_90
  loc_73EA53: FLdRfVar var_90
  loc_73EA56: LitI4 1
  loc_73EA5B: PopTmpLdAdStr var_8C
  loc_73EA5E: LitI2_Byte &H21
  loc_73EA60: PopTmpLdAd2 var_86
  loc_73EA63: ImpAdLdRf MemVar_74C7D0
  loc_73EA66: NewIfNullPr clsMsg
  loc_73EA69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EA6E: FLdZeroAd var_1D4
  loc_73EA71: FMemStStr arg_8(7632)
  loc_73EA77: FFree1Str var_90
  loc_73EA7A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EA91: FLdRfVar var_1D4
  loc_73EA94: LitVar_Missing var_1D0
  loc_73EA97: LitVar_Missing var_1B0
  loc_73EA9A: LitVar_Missing var_190
  loc_73EA9D: LitVar_Missing var_170
  loc_73EAA0: LitVar_Missing var_150
  loc_73EAA3: LitVar_Missing var_130
  loc_73EAA6: LitVar_Missing var_110
  loc_73EAA9: LitVar_Missing var_F0
  loc_73EAAC: LitVar_Missing var_D0
  loc_73EAAF: LitVar_Missing var_B0
  loc_73EAB2: LitStr "Servicio CEM - 44 Fuera de Linea ; consulte el manual de operaciones"
  loc_73EAB5: FStStrCopy var_90
  loc_73EAB8: FLdRfVar var_90
  loc_73EABB: LitI4 2
  loc_73EAC0: PopTmpLdAdStr var_8C
  loc_73EAC3: LitI2_Byte &H21
  loc_73EAC5: PopTmpLdAd2 var_86
  loc_73EAC8: ImpAdLdRf MemVar_74C7D0
  loc_73EACB: NewIfNullPr clsMsg
  loc_73EACE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EAD3: FLdZeroAd var_1D4
  loc_73EAD6: FMemStStr arg_8(7636)
  loc_73EADC: FFree1Str var_90
  loc_73EADF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EAF6: LitStr "Gilbarco"
  loc_73EAF9: LitI4 1
  loc_73EAFE: FMemLdRf unk_418E79
  loc_73EB03: Ary1StStrCopy
  loc_73EB04: LitStr "Wayne"
  loc_73EB07: LitI4 2
  loc_73EB0C: FMemLdRf unk_418E79
  loc_73EB11: Ary1StStrCopy
  loc_73EB12: LitStr "Tokheim"
  loc_73EB15: LitI4 3
  loc_73EB1A: FMemLdRf unk_418E79
  loc_73EB1F: Ary1StStrCopy
  loc_73EB20: LitStr "Schlumberger"
  loc_73EB23: LitI4 4
  loc_73EB28: FMemLdRf unk_418E79
  loc_73EB2D: Ary1StStrCopy
  loc_73EB2E: LitStr "GNC"
  loc_73EB31: LitI4 5
  loc_73EB36: FMemLdRf unk_418E79
  loc_73EB3B: Ary1StStrCopy
  loc_73EB3C: LitStr "LPT1"
  loc_73EB3F: LitI4 0
  loc_73EB44: FMemLdRf unk_418E79
  loc_73EB49: Ary1StStrCopy
  loc_73EB4A: LitStr "LPT2"
  loc_73EB4D: LitI4 1
  loc_73EB52: FMemLdRf unk_418E79
  loc_73EB57: Ary1StStrCopy
  loc_73EB58: LitStr "COM1"
  loc_73EB5B: LitI4 2
  loc_73EB60: FMemLdRf unk_418E79
  loc_73EB65: Ary1StStrCopy
  loc_73EB66: LitStr "COM2"
  loc_73EB69: LitI4 3
  loc_73EB6E: FMemLdRf unk_418E79
  loc_73EB73: Ary1StStrCopy
  loc_73EB74: FLdRfVar var_1D4
  loc_73EB77: LitVar_Missing var_1D0
  loc_73EB7A: LitVar_Missing var_1B0
  loc_73EB7D: LitVar_Missing var_190
  loc_73EB80: LitVar_Missing var_170
  loc_73EB83: LitVar_Missing var_150
  loc_73EB86: LitVar_Missing var_130
  loc_73EB89: LitVar_Missing var_110
  loc_73EB8C: LitVar_Missing var_F0
  loc_73EB8F: LitVar_Missing var_D0
  loc_73EB92: LitVar_Missing var_B0
  loc_73EB95: LitStr "Simple"
  loc_73EB98: FStStrCopy var_90
  loc_73EB9B: FLdRfVar var_90
  loc_73EB9E: LitI4 3
  loc_73EBA3: PopTmpLdAdStr var_8C
  loc_73EBA6: LitI2_Byte &H21
  loc_73EBA8: PopTmpLdAd2 var_86
  loc_73EBAB: ImpAdLdRf MemVar_74C7D0
  loc_73EBAE: NewIfNullPr clsMsg
  loc_73EBB1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EBB6: ILdRf var_1D4
  loc_73EBB9: LitI4 1
  loc_73EBBE: FMemLdRf unk_418E79
  loc_73EBC3: Ary1StStrCopy
  loc_73EBC4: FFreeStr var_90 = ""
  loc_73EBCB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EBE2: FLdRfVar var_1D4
  loc_73EBE5: LitVar_Missing var_1D0
  loc_73EBE8: LitVar_Missing var_1B0
  loc_73EBEB: LitVar_Missing var_190
  loc_73EBEE: LitVar_Missing var_170
  loc_73EBF1: LitVar_Missing var_150
  loc_73EBF4: LitVar_Missing var_130
  loc_73EBF7: LitVar_Missing var_110
  loc_73EBFA: LitVar_Missing var_F0
  loc_73EBFD: LitVar_Missing var_D0
  loc_73EC00: LitVar_Missing var_B0
  loc_73EC03: LitStr "Doble"
  loc_73EC06: FStStrCopy var_90
  loc_73EC09: FLdRfVar var_90
  loc_73EC0C: LitI4 4
  loc_73EC11: PopTmpLdAdStr var_8C
  loc_73EC14: LitI2_Byte &H21
  loc_73EC16: PopTmpLdAd2 var_86
  loc_73EC19: ImpAdLdRf MemVar_74C7D0
  loc_73EC1C: NewIfNullPr clsMsg
  loc_73EC1F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EC24: ILdRf var_1D4
  loc_73EC27: LitI4 2
  loc_73EC2C: FMemLdRf unk_418E79
  loc_73EC31: Ary1StStrCopy
  loc_73EC32: FFreeStr var_90 = ""
  loc_73EC39: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EC50: FLdRfVar var_1D4
  loc_73EC53: LitVar_Missing var_1D0
  loc_73EC56: LitVar_Missing var_1B0
  loc_73EC59: LitVar_Missing var_190
  loc_73EC5C: LitVar_Missing var_170
  loc_73EC5F: LitVar_Missing var_150
  loc_73EC62: LitVar_Missing var_130
  loc_73EC65: LitVar_Missing var_110
  loc_73EC68: LitVar_Missing var_F0
  loc_73EC6B: LitVar_Missing var_D0
  loc_73EC6E: LitVar_Missing var_B0
  loc_73EC71: LitStr "Maestro Satelite"
  loc_73EC74: FStStrCopy var_90
  loc_73EC77: FLdRfVar var_90
  loc_73EC7A: LitI4 5
  loc_73EC7F: PopTmpLdAdStr var_8C
  loc_73EC82: LitI2_Byte &H21
  loc_73EC84: PopTmpLdAd2 var_86
  loc_73EC87: ImpAdLdRf MemVar_74C7D0
  loc_73EC8A: NewIfNullPr clsMsg
  loc_73EC8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EC92: ILdRf var_1D4
  loc_73EC95: LitI4 3
  loc_73EC9A: FMemLdRf unk_418E79
  loc_73EC9F: Ary1StStrCopy
  loc_73ECA0: FFreeStr var_90 = ""
  loc_73ECA7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73ECBE: FLdRfVar var_1D4
  loc_73ECC1: LitVar_Missing var_1D0
  loc_73ECC4: LitVar_Missing var_1B0
  loc_73ECC7: LitVar_Missing var_190
  loc_73ECCA: LitVar_Missing var_170
  loc_73ECCD: LitVar_Missing var_150
  loc_73ECD0: LitVar_Missing var_130
  loc_73ECD3: LitVar_Missing var_110
  loc_73ECD6: LitVar_Missing var_F0
  loc_73ECD9: LitVar_Missing var_D0
  loc_73ECDC: LitVar_Missing var_B0
  loc_73ECDF: LitStr "MPD-4"
  loc_73ECE2: FStStrCopy var_90
  loc_73ECE5: FLdRfVar var_90
  loc_73ECE8: LitI4 6
  loc_73ECED: PopTmpLdAdStr var_8C
  loc_73ECF0: LitI2_Byte &H21
  loc_73ECF2: PopTmpLdAd2 var_86
  loc_73ECF5: ImpAdLdRf MemVar_74C7D0
  loc_73ECF8: NewIfNullPr clsMsg
  loc_73ECFB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73ED00: ILdRf var_1D4
  loc_73ED03: LitI4 4
  loc_73ED08: FMemLdRf unk_418E79
  loc_73ED0D: Ary1StStrCopy
  loc_73ED0E: FFreeStr var_90 = ""
  loc_73ED15: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73ED2C: FLdRfVar var_1D4
  loc_73ED2F: LitVar_Missing var_1D0
  loc_73ED32: LitVar_Missing var_1B0
  loc_73ED35: LitVar_Missing var_190
  loc_73ED38: LitVar_Missing var_170
  loc_73ED3B: LitVar_Missing var_150
  loc_73ED3E: LitVar_Missing var_130
  loc_73ED41: LitVar_Missing var_110
  loc_73ED44: LitVar_Missing var_F0
  loc_73ED47: LitVar_Missing var_D0
  loc_73ED4A: LitVar_Missing var_B0
  loc_73ED4D: LitStr "MPD-6"
  loc_73ED50: FStStrCopy var_90
  loc_73ED53: FLdRfVar var_90
  loc_73ED56: LitI4 7
  loc_73ED5B: PopTmpLdAdStr var_8C
  loc_73ED5E: LitI2_Byte &H21
  loc_73ED60: PopTmpLdAd2 var_86
  loc_73ED63: ImpAdLdRf MemVar_74C7D0
  loc_73ED66: NewIfNullPr clsMsg
  loc_73ED69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73ED6E: ILdRf var_1D4
  loc_73ED71: LitI4 5
  loc_73ED76: FMemLdRf unk_418E79
  loc_73ED7B: Ary1StStrCopy
  loc_73ED7C: FFreeStr var_90 = ""
  loc_73ED83: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73ED9A: FLdRfVar var_1D4
  loc_73ED9D: LitVar_Missing var_1D0
  loc_73EDA0: LitVar_Missing var_1B0
  loc_73EDA3: LitVar_Missing var_190
  loc_73EDA6: LitVar_Missing var_170
  loc_73EDA9: LitVar_Missing var_150
  loc_73EDAC: LitVar_Missing var_130
  loc_73EDAF: LitVar_Missing var_110
  loc_73EDB2: LitVar_Missing var_F0
  loc_73EDB5: LitVar_Missing var_D0
  loc_73EDB8: LitVar_Missing var_B0
  loc_73EDBB: LitStr "MPD-8"
  loc_73EDBE: FStStrCopy var_90
  loc_73EDC1: FLdRfVar var_90
  loc_73EDC4: LitI4 8
  loc_73EDC9: PopTmpLdAdStr var_8C
  loc_73EDCC: LitI2_Byte &H21
  loc_73EDCE: PopTmpLdAd2 var_86
  loc_73EDD1: ImpAdLdRf MemVar_74C7D0
  loc_73EDD4: NewIfNullPr clsMsg
  loc_73EDD7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EDDC: ILdRf var_1D4
  loc_73EDDF: LitI4 6
  loc_73EDE4: FMemLdRf unk_418E79
  loc_73EDE9: Ary1StStrCopy
  loc_73EDEA: FFreeStr var_90 = ""
  loc_73EDF1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EE08: LitStr "Blender Three Grade"
  loc_73EE0B: LitI4 7
  loc_73EE10: FMemLdRf unk_418E79
  loc_73EE15: Ary1StStrCopy
  loc_73EE16: LitStr "Blender Single Hose 3 + 0"
  loc_73EE19: LitI4 8
  loc_73EE1E: FMemLdRf unk_418E79
  loc_73EE23: Ary1StStrCopy
  loc_73EE24: LitStr "Blender Single Hose 3 + 1"
  loc_73EE27: LitI4 9
  loc_73EE2C: FMemLdRf unk_418E79
  loc_73EE31: Ary1StStrCopy
  loc_73EE32: LitStr "Blender Single Hose 4 + 0"
  loc_73EE35: LitI4 &HA
  loc_73EE3A: FMemLdRf unk_418E79
  loc_73EE3F: Ary1StStrCopy
  loc_73EE40: FLdRfVar var_1D4
  loc_73EE43: LitVar_Missing var_1D0
  loc_73EE46: LitVar_Missing var_1B0
  loc_73EE49: LitVar_Missing var_190
  loc_73EE4C: LitVar_Missing var_170
  loc_73EE4F: LitVar_Missing var_150
  loc_73EE52: LitVar_Missing var_130
  loc_73EE55: LitVar_Missing var_110
  loc_73EE58: LitVar_Missing var_F0
  loc_73EE5B: LitVar_Missing var_D0
  loc_73EE5E: LitVar_Missing var_B0
  loc_73EE61: LitStr "Automatico"
  loc_73EE64: FStStrCopy var_90
  loc_73EE67: FLdRfVar var_90
  loc_73EE6A: LitI4 9
  loc_73EE6F: PopTmpLdAdStr var_8C
  loc_73EE72: LitI2_Byte &H21
  loc_73EE74: PopTmpLdAd2 var_86
  loc_73EE77: ImpAdLdRf MemVar_74C7D0
  loc_73EE7A: NewIfNullPr clsMsg
  loc_73EE7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EE82: ILdRf var_1D4
  loc_73EE85: LitI4 1
  loc_73EE8A: FMemLdRf unk_418E79
  loc_73EE8F: Ary1StStrCopy
  loc_73EE90: FFreeStr var_90 = ""
  loc_73EE97: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EEAE: FLdRfVar var_1D4
  loc_73EEB1: LitVar_Missing var_1D0
  loc_73EEB4: LitVar_Missing var_1B0
  loc_73EEB7: LitVar_Missing var_190
  loc_73EEBA: LitVar_Missing var_170
  loc_73EEBD: LitVar_Missing var_150
  loc_73EEC0: LitVar_Missing var_130
  loc_73EEC3: LitVar_Missing var_110
  loc_73EEC6: LitVar_Missing var_F0
  loc_73EEC9: LitVar_Missing var_D0
  loc_73EECC: LitVar_Missing var_B0
  loc_73EECF: LitStr "Semi-Automatico"
  loc_73EED2: FStStrCopy var_90
  loc_73EED5: FLdRfVar var_90
  loc_73EED8: LitI4 &HA
  loc_73EEDD: PopTmpLdAdStr var_8C
  loc_73EEE0: LitI2_Byte &H21
  loc_73EEE2: PopTmpLdAd2 var_86
  loc_73EEE5: ImpAdLdRf MemVar_74C7D0
  loc_73EEE8: NewIfNullPr clsMsg
  loc_73EEEB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EEF0: ILdRf var_1D4
  loc_73EEF3: LitI4 2
  loc_73EEF8: FMemLdRf unk_418E79
  loc_73EEFD: Ary1StStrCopy
  loc_73EEFE: FFreeStr var_90 = ""
  loc_73EF05: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EF1C: FLdRfVar var_1D4
  loc_73EF1F: LitVar_Missing var_1D0
  loc_73EF22: LitVar_Missing var_1B0
  loc_73EF25: LitVar_Missing var_190
  loc_73EF28: LitVar_Missing var_170
  loc_73EF2B: LitVar_Missing var_150
  loc_73EF2E: LitVar_Missing var_130
  loc_73EF31: LitVar_Missing var_110
  loc_73EF34: LitVar_Missing var_F0
  loc_73EF37: LitVar_Missing var_D0
  loc_73EF3A: LitVar_Missing var_B0
  loc_73EF3D: LitStr "Operador"
  loc_73EF40: FStStrCopy var_90
  loc_73EF43: FLdRfVar var_90
  loc_73EF46: LitI4 &HB
  loc_73EF4B: PopTmpLdAdStr var_8C
  loc_73EF4E: LitI2_Byte &H21
  loc_73EF50: PopTmpLdAd2 var_86
  loc_73EF53: ImpAdLdRf MemVar_74C7D0
  loc_73EF56: NewIfNullPr clsMsg
  loc_73EF59: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EF5E: ILdRf var_1D4
  loc_73EF61: LitI4 3
  loc_73EF66: FMemLdRf unk_418E79
  loc_73EF6B: Ary1StStrCopy
  loc_73EF6C: FFreeStr var_90 = ""
  loc_73EF73: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EF8A: FLdRfVar var_1D4
  loc_73EF8D: LitVar_Missing var_1D0
  loc_73EF90: LitVar_Missing var_1B0
  loc_73EF93: LitVar_Missing var_190
  loc_73EF96: LitVar_Missing var_170
  loc_73EF99: LitVar_Missing var_150
  loc_73EF9C: LitVar_Missing var_130
  loc_73EF9F: LitVar_Missing var_110
  loc_73EFA2: LitVar_Missing var_F0
  loc_73EFA5: LitVar_Missing var_D0
  loc_73EFA8: LitVar_Missing var_B0
  loc_73EFAB: LitStr "Auto-Pos"
  loc_73EFAE: FStStrCopy var_90
  loc_73EFB1: FLdRfVar var_90
  loc_73EFB4: LitI4 &HC
  loc_73EFB9: PopTmpLdAdStr var_8C
  loc_73EFBC: LitI2_Byte &H21
  loc_73EFBE: PopTmpLdAd2 var_86
  loc_73EFC1: ImpAdLdRf MemVar_74C7D0
  loc_73EFC4: NewIfNullPr clsMsg
  loc_73EFC7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73EFCC: ILdRf var_1D4
  loc_73EFCF: LitI4 4
  loc_73EFD4: FMemLdRf unk_418E79
  loc_73EFD9: Ary1StStrCopy
  loc_73EFDA: FFreeStr var_90 = ""
  loc_73EFE1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73EFF8: FLdRfVar var_1D4
  loc_73EFFB: LitVar_Missing var_1D0
  loc_73EFFE: LitVar_Missing var_1B0
  loc_73F001: LitVar_Missing var_190
  loc_73F004: LitVar_Missing var_170
  loc_73F007: LitVar_Missing var_150
  loc_73F00A: LitVar_Missing var_130
  loc_73F00D: LitVar_Missing var_110
  loc_73F010: LitVar_Missing var_F0
  loc_73F013: LitVar_Missing var_D0
  loc_73F016: LitVar_Missing var_B0
  loc_73F019: LitStr "Dispositivo Externo"
  loc_73F01C: FStStrCopy var_90
  loc_73F01F: FLdRfVar var_90
  loc_73F022: LitI4 &HD
  loc_73F027: PopTmpLdAdStr var_8C
  loc_73F02A: LitI2_Byte &H21
  loc_73F02C: PopTmpLdAd2 var_86
  loc_73F02F: ImpAdLdRf MemVar_74C7D0
  loc_73F032: NewIfNullPr clsMsg
  loc_73F035: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F03A: ILdRf var_1D4
  loc_73F03D: LitI4 5
  loc_73F042: FMemLdRf unk_418E79
  loc_73F047: Ary1StStrCopy
  loc_73F048: FFreeStr var_90 = ""
  loc_73F04F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F066: FLdRfVar var_1D4
  loc_73F069: LitVar_Missing var_1D0
  loc_73F06C: LitVar_Missing var_1B0
  loc_73F06F: LitVar_Missing var_190
  loc_73F072: LitVar_Missing var_170
  loc_73F075: LitVar_Missing var_150
  loc_73F078: LitVar_Missing var_130
  loc_73F07B: LitVar_Missing var_110
  loc_73F07E: LitVar_Missing var_F0
  loc_73F081: LitVar_Missing var_D0
  loc_73F084: LitVar_Missing var_B0
  loc_73F087: LitStr "Express"
  loc_73F08A: FStStrCopy var_90
  loc_73F08D: FLdRfVar var_90
  loc_73F090: LitI4 &HE
  loc_73F095: PopTmpLdAdStr var_8C
  loc_73F098: LitI2_Byte &H21
  loc_73F09A: PopTmpLdAd2 var_86
  loc_73F09D: ImpAdLdRf MemVar_74C7D0
  loc_73F0A0: NewIfNullPr clsMsg
  loc_73F0A3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F0A8: ILdRf var_1D4
  loc_73F0AB: LitI4 6
  loc_73F0B0: FMemLdRf unk_418E79
  loc_73F0B5: Ary1StStrCopy
  loc_73F0B6: FFreeStr var_90 = ""
  loc_73F0BD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F0D4: LitVarI2 var_B0, 1
  loc_73F0D9: LitI4 4
  loc_73F0DE: FMemLdR4 arg_8(7512)
  loc_73F0E3: ImpAdCallI2 Mid$(, , )
  loc_73F0E8: FStStrNoPop var_90
  loc_73F0EB: LitStr "1"
  loc_73F0EE: EqStr
  loc_73F0F0: FFree1Str var_90
  loc_73F0F3: FFree1Var var_B0 = ""
  loc_73F0F6: BranchF loc_73F3D2
  loc_73F0F9: FLdRfVar var_1D4
  loc_73F0FC: LitVar_Missing var_1D0
  loc_73F0FF: LitVar_Missing var_1B0
  loc_73F102: LitVar_Missing var_190
  loc_73F105: LitVar_Missing var_170
  loc_73F108: LitVar_Missing var_150
  loc_73F10B: LitVar_Missing var_130
  loc_73F10E: LitVar_Missing var_110
  loc_73F111: LitVar_Missing var_F0
  loc_73F114: LitVar_Missing var_D0
  loc_73F117: LitVar_Missing var_B0
  loc_73F11A: LitStr "Playero"
  loc_73F11D: FStStrCopy var_90
  loc_73F120: FLdRfVar var_90
  loc_73F123: LitI4 &H19
  loc_73F128: PopTmpLdAdStr var_8C
  loc_73F12B: LitI2_Byte &H21
  loc_73F12D: PopTmpLdAd2 var_86
  loc_73F130: ImpAdLdRf MemVar_74C7D0
  loc_73F133: NewIfNullPr clsMsg
  loc_73F136: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F13B: FLdZeroAd var_1D4
  loc_73F13E: PopTmpLdAdStr
  loc_73F142: LitI2_Byte 1
  loc_73F144: PopTmpLdAd2 var_1D6
  loc_73F147: FMemLdRf unk_418E79
  loc_73F14C: NewIfNullPr clsUsers
  loc_73F14F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F154: FFreeStr var_90 = ""
  loc_73F15B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F172: FLdRfVar var_1D4
  loc_73F175: LitVar_Missing var_1D0
  loc_73F178: LitVar_Missing var_1B0
  loc_73F17B: LitVar_Missing var_190
  loc_73F17E: LitVar_Missing var_170
  loc_73F181: LitVar_Missing var_150
  loc_73F184: LitVar_Missing var_130
  loc_73F187: LitVar_Missing var_110
  loc_73F18A: LitVar_Missing var_F0
  loc_73F18D: LitVar_Missing var_D0
  loc_73F190: LitVar_Missing var_B0
  loc_73F193: LitStr "Supervisor de Turno"
  loc_73F196: FStStrCopy var_90
  loc_73F199: FLdRfVar var_90
  loc_73F19C: LitI4 &H1A
  loc_73F1A1: PopTmpLdAdStr var_8C
  loc_73F1A4: LitI2_Byte &H21
  loc_73F1A6: PopTmpLdAd2 var_86
  loc_73F1A9: ImpAdLdRf MemVar_74C7D0
  loc_73F1AC: NewIfNullPr clsMsg
  loc_73F1AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F1B4: FLdZeroAd var_1D4
  loc_73F1B7: PopTmpLdAdStr
  loc_73F1BB: LitI2_Byte 2
  loc_73F1BD: PopTmpLdAd2 var_1D6
  loc_73F1C0: FMemLdRf unk_418E79
  loc_73F1C5: NewIfNullPr clsUsers
  loc_73F1C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F1CD: FFreeStr var_90 = ""
  loc_73F1D4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F1EB: FLdRfVar var_1D4
  loc_73F1EE: LitVar_Missing var_1D0
  loc_73F1F1: LitVar_Missing var_1B0
  loc_73F1F4: LitVar_Missing var_190
  loc_73F1F7: LitVar_Missing var_170
  loc_73F1FA: LitVar_Missing var_150
  loc_73F1FD: LitVar_Missing var_130
  loc_73F200: LitVar_Missing var_110
  loc_73F203: LitVar_Missing var_F0
  loc_73F206: LitVar_Missing var_D0
  loc_73F209: LitVar_Missing var_B0
  loc_73F20C: LitStr "Jefe de Estación"
  loc_73F20F: FStStrCopy var_90
  loc_73F212: FLdRfVar var_90
  loc_73F215: LitI4 &H13
  loc_73F21A: PopTmpLdAdStr var_8C
  loc_73F21D: LitI2_Byte &H21
  loc_73F21F: PopTmpLdAd2 var_86
  loc_73F222: ImpAdLdRf MemVar_74C7D0
  loc_73F225: NewIfNullPr clsMsg
  loc_73F228: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F22D: FLdZeroAd var_1D4
  loc_73F230: PopTmpLdAdStr
  loc_73F234: LitI2_Byte 3
  loc_73F236: PopTmpLdAd2 var_1D6
  loc_73F239: FMemLdRf unk_418E79
  loc_73F23E: NewIfNullPr clsUsers
  loc_73F241: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F246: FFreeStr var_90 = ""
  loc_73F24D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F264: FLdRfVar var_1D4
  loc_73F267: LitVar_Missing var_1D0
  loc_73F26A: LitVar_Missing var_1B0
  loc_73F26D: LitVar_Missing var_190
  loc_73F270: LitVar_Missing var_170
  loc_73F273: LitVar_Missing var_150
  loc_73F276: LitVar_Missing var_130
  loc_73F279: LitVar_Missing var_110
  loc_73F27C: LitVar_Missing var_F0
  loc_73F27F: LitVar_Missing var_D0
  loc_73F282: LitVar_Missing var_B0
  loc_73F285: LitStr "Operador"
  loc_73F288: FStStrCopy var_90
  loc_73F28B: FLdRfVar var_90
  loc_73F28E: LitI4 &H14
  loc_73F293: PopTmpLdAdStr var_8C
  loc_73F296: LitI2_Byte &H21
  loc_73F298: PopTmpLdAd2 var_86
  loc_73F29B: ImpAdLdRf MemVar_74C7D0
  loc_73F29E: NewIfNullPr clsMsg
  loc_73F2A1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F2A6: FLdZeroAd var_1D4
  loc_73F2A9: PopTmpLdAdStr
  loc_73F2AD: LitI2_Byte 4
  loc_73F2AF: PopTmpLdAd2 var_1D6
  loc_73F2B2: FMemLdRf unk_418E79
  loc_73F2B7: NewIfNullPr clsUsers
  loc_73F2BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F2BF: FFreeStr var_90 = ""
  loc_73F2C6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F2DD: FLdRfVar var_1D4
  loc_73F2E0: LitVar_Missing var_1D0
  loc_73F2E3: LitVar_Missing var_1B0
  loc_73F2E6: LitVar_Missing var_190
  loc_73F2E9: LitVar_Missing var_170
  loc_73F2EC: LitVar_Missing var_150
  loc_73F2EF: LitVar_Missing var_130
  loc_73F2F2: LitVar_Missing var_110
  loc_73F2F5: LitVar_Missing var_F0
  loc_73F2F8: LitVar_Missing var_D0
  loc_73F2FB: LitVar_Missing var_B0
  loc_73F2FE: LitStr "Mantenimiento"
  loc_73F301: FStStrCopy var_90
  loc_73F304: FLdRfVar var_90
  loc_73F307: LitI4 &H1B
  loc_73F30C: PopTmpLdAdStr var_8C
  loc_73F30F: LitI2_Byte &H21
  loc_73F311: PopTmpLdAd2 var_86
  loc_73F314: ImpAdLdRf MemVar_74C7D0
  loc_73F317: NewIfNullPr clsMsg
  loc_73F31A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F31F: FLdZeroAd var_1D4
  loc_73F322: PopTmpLdAdStr
  loc_73F326: LitI2_Byte 5
  loc_73F328: PopTmpLdAd2 var_1D6
  loc_73F32B: FMemLdRf unk_418E79
  loc_73F330: NewIfNullPr clsUsers
  loc_73F333: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F338: FFreeStr var_90 = ""
  loc_73F33F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F356: FLdRfVar var_1D4
  loc_73F359: LitVar_Missing var_1D0
  loc_73F35C: LitVar_Missing var_1B0
  loc_73F35F: LitVar_Missing var_190
  loc_73F362: LitVar_Missing var_170
  loc_73F365: LitVar_Missing var_150
  loc_73F368: LitVar_Missing var_130
  loc_73F36B: LitVar_Missing var_110
  loc_73F36E: LitVar_Missing var_F0
  loc_73F371: LitVar_Missing var_D0
  loc_73F374: LitVar_Missing var_B0
  loc_73F377: LitStr "Compañía"
  loc_73F37A: FStStrCopy var_90
  loc_73F37D: FLdRfVar var_90
  loc_73F380: LitI4 &H16
  loc_73F385: PopTmpLdAdStr var_8C
  loc_73F388: LitI2_Byte &H21
  loc_73F38A: PopTmpLdAd2 var_86
  loc_73F38D: ImpAdLdRf MemVar_74C7D0
  loc_73F390: NewIfNullPr clsMsg
  loc_73F393: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F398: FLdZeroAd var_1D4
  loc_73F39B: PopTmpLdAdStr
  loc_73F39F: LitI2_Byte 6
  loc_73F3A1: PopTmpLdAd2 var_1D6
  loc_73F3A4: FMemLdRf unk_418E79
  loc_73F3A9: NewIfNullPr clsUsers
  loc_73F3AC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F3B1: FFreeStr var_90 = ""
  loc_73F3B8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F3CF: Branch loc_73F91A
  loc_73F3D2: FLdRfVar var_86
  loc_73F3D5: ImpAdLdRf MemVar_74C760
  loc_73F3D8: NewIfNullPr Formx
  loc_73F3DB: from_stack_2v = Formx.CargarUsuarios(from_stack_1v)
  loc_73F3E0: FLdI2 var_86
  loc_73F3E3: NotI4
  loc_73F3E4: BranchF loc_73F91A
  loc_73F3E7: FLdRfVar var_1D4
  loc_73F3EA: LitVar_Missing var_1D0
  loc_73F3ED: LitVar_Missing var_1B0
  loc_73F3F0: LitVar_Missing var_190
  loc_73F3F3: LitVar_Missing var_170
  loc_73F3F6: LitVar_Missing var_150
  loc_73F3F9: LitVar_Missing var_130
  loc_73F3FC: LitVar_Missing var_110
  loc_73F3FF: LitVar_Missing var_F0
  loc_73F402: LitVar_Missing var_D0
  loc_73F405: LitVar_Missing var_B0
  loc_73F408: LitStr "Operario playa"
  loc_73F40B: FStStrCopy var_90
  loc_73F40E: FLdRfVar var_90
  loc_73F411: LitI4 &HE
  loc_73F416: PopTmpLdAdStr var_8C
  loc_73F419: LitI2_Byte &H21
  loc_73F41B: PopTmpLdAd2 var_86
  loc_73F41E: ImpAdLdRf MemVar_74C7D0
  loc_73F421: NewIfNullPr clsMsg
  loc_73F424: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F429: FLdZeroAd var_1D4
  loc_73F42C: PopTmpLdAdStr
  loc_73F430: LitI2_Byte 1
  loc_73F432: PopTmpLdAd2 var_1D6
  loc_73F435: FMemLdRf unk_418E79
  loc_73F43A: NewIfNullPr clsUsers
  loc_73F43D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F442: FFreeStr var_90 = ""
  loc_73F449: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F460: FLdRfVar var_1D4
  loc_73F463: LitVar_Missing var_1D0
  loc_73F466: LitVar_Missing var_1B0
  loc_73F469: LitVar_Missing var_190
  loc_73F46C: LitVar_Missing var_170
  loc_73F46F: LitVar_Missing var_150
  loc_73F472: LitVar_Missing var_130
  loc_73F475: LitVar_Missing var_110
  loc_73F478: LitVar_Missing var_F0
  loc_73F47B: LitVar_Missing var_D0
  loc_73F47E: LitVar_Missing var_B0
  loc_73F481: LitStr "Operario Shop"
  loc_73F484: FStStrCopy var_90
  loc_73F487: FLdRfVar var_90
  loc_73F48A: LitI4 &HF
  loc_73F48F: PopTmpLdAdStr var_8C
  loc_73F492: LitI2_Byte &H21
  loc_73F494: PopTmpLdAd2 var_86
  loc_73F497: ImpAdLdRf MemVar_74C7D0
  loc_73F49A: NewIfNullPr clsMsg
  loc_73F49D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F4A2: FLdZeroAd var_1D4
  loc_73F4A5: PopTmpLdAdStr
  loc_73F4A9: LitI2_Byte 2
  loc_73F4AB: PopTmpLdAd2 var_1D6
  loc_73F4AE: FMemLdRf unk_418E79
  loc_73F4B3: NewIfNullPr clsUsers
  loc_73F4B6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F4BB: FFreeStr var_90 = ""
  loc_73F4C2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F4D9: FLdRfVar var_1D4
  loc_73F4DC: LitVar_Missing var_1D0
  loc_73F4DF: LitVar_Missing var_1B0
  loc_73F4E2: LitVar_Missing var_190
  loc_73F4E5: LitVar_Missing var_170
  loc_73F4E8: LitVar_Missing var_150
  loc_73F4EB: LitVar_Missing var_130
  loc_73F4EE: LitVar_Missing var_110
  loc_73F4F1: LitVar_Missing var_F0
  loc_73F4F4: LitVar_Missing var_D0
  loc_73F4F7: LitVar_Missing var_B0
  loc_73F4FA: LitStr "Cajero"
  loc_73F4FD: FStStrCopy var_90
  loc_73F500: FLdRfVar var_90
  loc_73F503: LitI4 &H10
  loc_73F508: PopTmpLdAdStr var_8C
  loc_73F50B: LitI2_Byte &H21
  loc_73F50D: PopTmpLdAd2 var_86
  loc_73F510: ImpAdLdRf MemVar_74C7D0
  loc_73F513: NewIfNullPr clsMsg
  loc_73F516: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F51B: FLdZeroAd var_1D4
  loc_73F51E: PopTmpLdAdStr
  loc_73F522: LitI2_Byte 3
  loc_73F524: PopTmpLdAd2 var_1D6
  loc_73F527: FMemLdRf unk_418E79
  loc_73F52C: NewIfNullPr clsUsers
  loc_73F52F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F534: FFreeStr var_90 = ""
  loc_73F53B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F552: FLdRfVar var_1D4
  loc_73F555: LitVar_Missing var_1D0
  loc_73F558: LitVar_Missing var_1B0
  loc_73F55B: LitVar_Missing var_190
  loc_73F55E: LitVar_Missing var_170
  loc_73F561: LitVar_Missing var_150
  loc_73F564: LitVar_Missing var_130
  loc_73F567: LitVar_Missing var_110
  loc_73F56A: LitVar_Missing var_F0
  loc_73F56D: LitVar_Missing var_D0
  loc_73F570: LitVar_Missing var_B0
  loc_73F573: LitStr "Supervisor"
  loc_73F576: FStStrCopy var_90
  loc_73F579: FLdRfVar var_90
  loc_73F57C: LitI4 &H11
  loc_73F581: PopTmpLdAdStr var_8C
  loc_73F584: LitI2_Byte &H21
  loc_73F586: PopTmpLdAd2 var_86
  loc_73F589: ImpAdLdRf MemVar_74C7D0
  loc_73F58C: NewIfNullPr clsMsg
  loc_73F58F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F594: FLdZeroAd var_1D4
  loc_73F597: PopTmpLdAdStr
  loc_73F59B: LitI2_Byte 4
  loc_73F59D: PopTmpLdAd2 var_1D6
  loc_73F5A0: FMemLdRf unk_418E79
  loc_73F5A5: NewIfNullPr clsUsers
  loc_73F5A8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F5AD: FFreeStr var_90 = ""
  loc_73F5B4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F5CB: FLdRfVar var_1D4
  loc_73F5CE: LitVar_Missing var_1D0
  loc_73F5D1: LitVar_Missing var_1B0
  loc_73F5D4: LitVar_Missing var_190
  loc_73F5D7: LitVar_Missing var_170
  loc_73F5DA: LitVar_Missing var_150
  loc_73F5DD: LitVar_Missing var_130
  loc_73F5E0: LitVar_Missing var_110
  loc_73F5E3: LitVar_Missing var_F0
  loc_73F5E6: LitVar_Missing var_D0
  loc_73F5E9: LitVar_Missing var_B0
  loc_73F5EC: LitStr "Encargado"
  loc_73F5EF: FStStrCopy var_90
  loc_73F5F2: FLdRfVar var_90
  loc_73F5F5: LitI4 &H12
  loc_73F5FA: PopTmpLdAdStr var_8C
  loc_73F5FD: LitI2_Byte &H21
  loc_73F5FF: PopTmpLdAd2 var_86
  loc_73F602: ImpAdLdRf MemVar_74C7D0
  loc_73F605: NewIfNullPr clsMsg
  loc_73F608: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F60D: FLdZeroAd var_1D4
  loc_73F610: PopTmpLdAdStr
  loc_73F614: LitI2_Byte 5
  loc_73F616: PopTmpLdAd2 var_1D6
  loc_73F619: FMemLdRf unk_418E79
  loc_73F61E: NewIfNullPr clsUsers
  loc_73F621: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F626: FFreeStr var_90 = ""
  loc_73F62D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F644: FLdRfVar var_1D4
  loc_73F647: LitVar_Missing var_1D0
  loc_73F64A: LitVar_Missing var_1B0
  loc_73F64D: LitVar_Missing var_190
  loc_73F650: LitVar_Missing var_170
  loc_73F653: LitVar_Missing var_150
  loc_73F656: LitVar_Missing var_130
  loc_73F659: LitVar_Missing var_110
  loc_73F65C: LitVar_Missing var_F0
  loc_73F65F: LitVar_Missing var_D0
  loc_73F662: LitVar_Missing var_B0
  loc_73F665: LitStr "Jefe de Estacion"
  loc_73F668: FStStrCopy var_90
  loc_73F66B: FLdRfVar var_90
  loc_73F66E: LitI4 &H13
  loc_73F673: PopTmpLdAdStr var_8C
  loc_73F676: LitI2_Byte &H21
  loc_73F678: PopTmpLdAd2 var_86
  loc_73F67B: ImpAdLdRf MemVar_74C7D0
  loc_73F67E: NewIfNullPr clsMsg
  loc_73F681: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F686: FLdZeroAd var_1D4
  loc_73F689: PopTmpLdAdStr
  loc_73F68D: LitI2_Byte 6
  loc_73F68F: PopTmpLdAd2 var_1D6
  loc_73F692: FMemLdRf unk_418E79
  loc_73F697: NewIfNullPr clsUsers
  loc_73F69A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F69F: FFreeStr var_90 = ""
  loc_73F6A6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F6BD: FLdRfVar var_1D4
  loc_73F6C0: LitVar_Missing var_1D0
  loc_73F6C3: LitVar_Missing var_1B0
  loc_73F6C6: LitVar_Missing var_190
  loc_73F6C9: LitVar_Missing var_170
  loc_73F6CC: LitVar_Missing var_150
  loc_73F6CF: LitVar_Missing var_130
  loc_73F6D2: LitVar_Missing var_110
  loc_73F6D5: LitVar_Missing var_F0
  loc_73F6D8: LitVar_Missing var_D0
  loc_73F6DB: LitVar_Missing var_B0
  loc_73F6DE: LitStr "Administrador"
  loc_73F6E1: FStStrCopy var_90
  loc_73F6E4: FLdRfVar var_90
  loc_73F6E7: LitI4 &H14
  loc_73F6EC: PopTmpLdAdStr var_8C
  loc_73F6EF: LitI2_Byte &H21
  loc_73F6F1: PopTmpLdAd2 var_86
  loc_73F6F4: ImpAdLdRf MemVar_74C7D0
  loc_73F6F7: NewIfNullPr clsMsg
  loc_73F6FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F6FF: FLdZeroAd var_1D4
  loc_73F702: PopTmpLdAdStr
  loc_73F706: LitI2_Byte 7
  loc_73F708: PopTmpLdAd2 var_1D6
  loc_73F70B: FMemLdRf unk_418E79
  loc_73F710: NewIfNullPr clsUsers
  loc_73F713: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F718: FFreeStr var_90 = ""
  loc_73F71F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F736: FLdRfVar var_1D4
  loc_73F739: LitVar_Missing var_1D0
  loc_73F73C: LitVar_Missing var_1B0
  loc_73F73F: LitVar_Missing var_190
  loc_73F742: LitVar_Missing var_170
  loc_73F745: LitVar_Missing var_150
  loc_73F748: LitVar_Missing var_130
  loc_73F74B: LitVar_Missing var_110
  loc_73F74E: LitVar_Missing var_F0
  loc_73F751: LitVar_Missing var_D0
  loc_73F754: LitVar_Missing var_B0
  loc_73F757: LitStr "Operador"
  loc_73F75A: FStStrCopy var_90
  loc_73F75D: FLdRfVar var_90
  loc_73F760: LitI4 &H15
  loc_73F765: PopTmpLdAdStr var_8C
  loc_73F768: LitI2_Byte &H21
  loc_73F76A: PopTmpLdAd2 var_86
  loc_73F76D: ImpAdLdRf MemVar_74C7D0
  loc_73F770: NewIfNullPr clsMsg
  loc_73F773: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F778: FLdZeroAd var_1D4
  loc_73F77B: PopTmpLdAdStr
  loc_73F77F: LitI2_Byte 8
  loc_73F781: PopTmpLdAd2 var_1D6
  loc_73F784: FMemLdRf unk_418E79
  loc_73F789: NewIfNullPr clsUsers
  loc_73F78C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F791: FFreeStr var_90 = ""
  loc_73F798: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F7AF: FLdRfVar var_1D4
  loc_73F7B2: LitVar_Missing var_1D0
  loc_73F7B5: LitVar_Missing var_1B0
  loc_73F7B8: LitVar_Missing var_190
  loc_73F7BB: LitVar_Missing var_170
  loc_73F7BE: LitVar_Missing var_150
  loc_73F7C1: LitVar_Missing var_130
  loc_73F7C4: LitVar_Missing var_110
  loc_73F7C7: LitVar_Missing var_F0
  loc_73F7CA: LitVar_Missing var_D0
  loc_73F7CD: LitVar_Missing var_B0
  loc_73F7D0: LitStr "Compañia"
  loc_73F7D3: FStStrCopy var_90
  loc_73F7D6: FLdRfVar var_90
  loc_73F7D9: LitI4 &H16
  loc_73F7DE: PopTmpLdAdStr var_8C
  loc_73F7E1: LitI2_Byte &H21
  loc_73F7E3: PopTmpLdAd2 var_86
  loc_73F7E6: ImpAdLdRf MemVar_74C7D0
  loc_73F7E9: NewIfNullPr clsMsg
  loc_73F7EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F7F1: FLdZeroAd var_1D4
  loc_73F7F4: PopTmpLdAdStr
  loc_73F7F8: LitI2_Byte 9
  loc_73F7FA: PopTmpLdAd2 var_1D6
  loc_73F7FD: FMemLdRf unk_418E79
  loc_73F802: NewIfNullPr clsUsers
  loc_73F805: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F80A: FFreeStr var_90 = ""
  loc_73F811: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F828: FLdRfVar var_1D4
  loc_73F82B: LitVar_Missing var_1D0
  loc_73F82E: LitVar_Missing var_1B0
  loc_73F831: LitVar_Missing var_190
  loc_73F834: LitVar_Missing var_170
  loc_73F837: LitVar_Missing var_150
  loc_73F83A: LitVar_Missing var_130
  loc_73F83D: LitVar_Missing var_110
  loc_73F840: LitVar_Missing var_F0
  loc_73F843: LitVar_Missing var_D0
  loc_73F846: LitVar_Missing var_B0
  loc_73F849: LitStr "Gilbarco"
  loc_73F84C: FStStrCopy var_90
  loc_73F84F: FLdRfVar var_90
  loc_73F852: LitI4 &H17
  loc_73F857: PopTmpLdAdStr var_8C
  loc_73F85A: LitI2_Byte &H21
  loc_73F85C: PopTmpLdAd2 var_86
  loc_73F85F: ImpAdLdRf MemVar_74C7D0
  loc_73F862: NewIfNullPr clsMsg
  loc_73F865: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F86A: FLdZeroAd var_1D4
  loc_73F86D: PopTmpLdAdStr
  loc_73F871: LitI2_Byte &HA
  loc_73F873: PopTmpLdAd2 var_1D6
  loc_73F876: FMemLdRf unk_418E79
  loc_73F87B: NewIfNullPr clsUsers
  loc_73F87E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F883: FFreeStr var_90 = ""
  loc_73F88A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F8A1: FLdRfVar var_1D4
  loc_73F8A4: LitVar_Missing var_1D0
  loc_73F8A7: LitVar_Missing var_1B0
  loc_73F8AA: LitVar_Missing var_190
  loc_73F8AD: LitVar_Missing var_170
  loc_73F8B0: LitVar_Missing var_150
  loc_73F8B3: LitVar_Missing var_130
  loc_73F8B6: LitVar_Missing var_110
  loc_73F8B9: LitVar_Missing var_F0
  loc_73F8BC: LitVar_Missing var_D0
  loc_73F8BF: LitVar_Missing var_B0
  loc_73F8C2: LitStr "Clave Dinamica"
  loc_73F8C5: FStStrCopy var_90
  loc_73F8C8: FLdRfVar var_90
  loc_73F8CB: LitI4 &H18
  loc_73F8D0: PopTmpLdAdStr var_8C
  loc_73F8D3: LitI2_Byte &H21
  loc_73F8D5: PopTmpLdAd2 var_86
  loc_73F8D8: ImpAdLdRf MemVar_74C7D0
  loc_73F8DB: NewIfNullPr clsMsg
  loc_73F8DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F8E3: FLdZeroAd var_1D4
  loc_73F8E6: PopTmpLdAdStr
  loc_73F8EA: LitI2_Byte &HB
  loc_73F8EC: PopTmpLdAd2 var_1D6
  loc_73F8EF: FMemLdRf unk_418E79
  loc_73F8F4: NewIfNullPr clsUsers
  loc_73F8F7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F8FC: FFreeStr var_90 = ""
  loc_73F903: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F91A: FLdRfVar var_1D4
  loc_73F91D: LitVar_Missing var_1D0
  loc_73F920: LitVar_Missing var_1B0
  loc_73F923: LitVar_Missing var_190
  loc_73F926: LitVar_Missing var_170
  loc_73F929: LitVar_Missing var_150
  loc_73F92C: LitVar_Missing var_130
  loc_73F92F: LitVar_Missing var_110
  loc_73F932: LitVar_Missing var_F0
  loc_73F935: LitVar_Missing var_D0
  loc_73F938: LitVar_Missing var_B0
  loc_73F93B: LitStr "Operaciones de playa"
  loc_73F93E: FStStrCopy var_90
  loc_73F941: FLdRfVar var_90
  loc_73F944: LitI4 &H1C
  loc_73F949: PopTmpLdAdStr var_8C
  loc_73F94C: LitI2_Byte &H21
  loc_73F94E: PopTmpLdAd2 var_86
  loc_73F951: ImpAdLdRf MemVar_74C7D0
  loc_73F954: NewIfNullPr clsMsg
  loc_73F957: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F95C: FLdZeroAd var_1D4
  loc_73F95F: PopTmpLdAdStr
  loc_73F963: LitI2_Byte 1
  loc_73F965: PopTmpLdAd2 var_1D6
  loc_73F968: FMemLdRf unk_418E79
  loc_73F96D: NewIfNullPr clsSecurity
  loc_73F970: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F975: FFreeStr var_90 = ""
  loc_73F97C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73F993: FLdRfVar var_1D4
  loc_73F996: LitVar_Missing var_1D0
  loc_73F999: LitVar_Missing var_1B0
  loc_73F99C: LitVar_Missing var_190
  loc_73F99F: LitVar_Missing var_170
  loc_73F9A2: LitVar_Missing var_150
  loc_73F9A5: LitVar_Missing var_130
  loc_73F9A8: LitVar_Missing var_110
  loc_73F9AB: LitVar_Missing var_F0
  loc_73F9AE: LitVar_Missing var_D0
  loc_73F9B1: LitVar_Missing var_B0
  loc_73F9B4: LitStr "Cierre de Turno"
  loc_73F9B7: FStStrCopy var_90
  loc_73F9BA: FLdRfVar var_90
  loc_73F9BD: LitI4 &H1D
  loc_73F9C2: PopTmpLdAdStr var_8C
  loc_73F9C5: LitI2_Byte &H21
  loc_73F9C7: PopTmpLdAd2 var_86
  loc_73F9CA: ImpAdLdRf MemVar_74C7D0
  loc_73F9CD: NewIfNullPr clsMsg
  loc_73F9D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F9D5: FLdZeroAd var_1D4
  loc_73F9D8: PopTmpLdAdStr
  loc_73F9DC: LitI2_Byte 2
  loc_73F9DE: PopTmpLdAd2 var_1D6
  loc_73F9E1: FMemLdRf unk_418E79
  loc_73F9E6: NewIfNullPr clsSecurity
  loc_73F9E9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73F9EE: FFreeStr var_90 = ""
  loc_73F9F5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FA0C: FLdRfVar var_1D4
  loc_73FA0F: LitVar_Missing var_1D0
  loc_73FA12: LitVar_Missing var_1B0
  loc_73FA15: LitVar_Missing var_190
  loc_73FA18: LitVar_Missing var_170
  loc_73FA1B: LitVar_Missing var_150
  loc_73FA1E: LitVar_Missing var_130
  loc_73FA21: LitVar_Missing var_110
  loc_73FA24: LitVar_Missing var_F0
  loc_73FA27: LitVar_Missing var_D0
  loc_73FA2A: LitVar_Missing var_B0
  loc_73FA2D: LitStr "Cierre Diario"
  loc_73FA30: FStStrCopy var_90
  loc_73FA33: FLdRfVar var_90
  loc_73FA36: LitI4 &H1E
  loc_73FA3B: PopTmpLdAdStr var_8C
  loc_73FA3E: LitI2_Byte &H21
  loc_73FA40: PopTmpLdAd2 var_86
  loc_73FA43: ImpAdLdRf MemVar_74C7D0
  loc_73FA46: NewIfNullPr clsMsg
  loc_73FA49: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FA4E: FLdZeroAd var_1D4
  loc_73FA51: PopTmpLdAdStr
  loc_73FA55: LitI2_Byte 3
  loc_73FA57: PopTmpLdAd2 var_1D6
  loc_73FA5A: FMemLdRf unk_418E79
  loc_73FA5F: NewIfNullPr clsSecurity
  loc_73FA62: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FA67: FFreeStr var_90 = ""
  loc_73FA6E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FA85: FLdRfVar var_1D4
  loc_73FA88: LitVar_Missing var_1D0
  loc_73FA8B: LitVar_Missing var_1B0
  loc_73FA8E: LitVar_Missing var_190
  loc_73FA91: LitVar_Missing var_170
  loc_73FA94: LitVar_Missing var_150
  loc_73FA97: LitVar_Missing var_130
  loc_73FA9A: LitVar_Missing var_110
  loc_73FA9D: LitVar_Missing var_F0
  loc_73FAA0: LitVar_Missing var_D0
  loc_73FAA3: LitVar_Missing var_B0
  loc_73FAA6: LitStr "Cierre Mensual"
  loc_73FAA9: FStStrCopy var_90
  loc_73FAAC: FLdRfVar var_90
  loc_73FAAF: LitI4 &H1F
  loc_73FAB4: PopTmpLdAdStr var_8C
  loc_73FAB7: LitI2_Byte &H21
  loc_73FAB9: PopTmpLdAd2 var_86
  loc_73FABC: ImpAdLdRf MemVar_74C7D0
  loc_73FABF: NewIfNullPr clsMsg
  loc_73FAC2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FAC7: FLdZeroAd var_1D4
  loc_73FACA: PopTmpLdAdStr
  loc_73FACE: LitI2_Byte 4
  loc_73FAD0: PopTmpLdAd2 var_1D6
  loc_73FAD3: FMemLdRf unk_418E79
  loc_73FAD8: NewIfNullPr clsSecurity
  loc_73FADB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FAE0: FFreeStr var_90 = ""
  loc_73FAE7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FAFE: FLdRfVar var_1D4
  loc_73FB01: LitVar_Missing var_1D0
  loc_73FB04: LitVar_Missing var_1B0
  loc_73FB07: LitVar_Missing var_190
  loc_73FB0A: LitVar_Missing var_170
  loc_73FB0D: LitVar_Missing var_150
  loc_73FB10: LitVar_Missing var_130
  loc_73FB13: LitVar_Missing var_110
  loc_73FB16: LitVar_Missing var_F0
  loc_73FB19: LitVar_Missing var_D0
  loc_73FB1C: LitVar_Missing var_B0
  loc_73FB1F: LitStr "Turno en Curso"
  loc_73FB22: FStStrCopy var_90
  loc_73FB25: FLdRfVar var_90
  loc_73FB28: LitI4 &H20
  loc_73FB2D: PopTmpLdAdStr var_8C
  loc_73FB30: LitI2_Byte &H21
  loc_73FB32: PopTmpLdAd2 var_86
  loc_73FB35: ImpAdLdRf MemVar_74C7D0
  loc_73FB38: NewIfNullPr clsMsg
  loc_73FB3B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FB40: FLdZeroAd var_1D4
  loc_73FB43: PopTmpLdAdStr
  loc_73FB47: LitI2_Byte 5
  loc_73FB49: PopTmpLdAd2 var_1D6
  loc_73FB4C: FMemLdRf unk_418E79
  loc_73FB51: NewIfNullPr clsSecurity
  loc_73FB54: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FB59: FFreeStr var_90 = ""
  loc_73FB60: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FB77: FLdRfVar var_1D4
  loc_73FB7A: LitVar_Missing var_1D0
  loc_73FB7D: LitVar_Missing var_1B0
  loc_73FB80: LitVar_Missing var_190
  loc_73FB83: LitVar_Missing var_170
  loc_73FB86: LitVar_Missing var_150
  loc_73FB89: LitVar_Missing var_130
  loc_73FB8C: LitVar_Missing var_110
  loc_73FB8F: LitVar_Missing var_F0
  loc_73FB92: LitVar_Missing var_D0
  loc_73FB95: LitVar_Missing var_B0
  loc_73FB98: LitStr "Dia en Curso"
  loc_73FB9B: FStStrCopy var_90
  loc_73FB9E: FLdRfVar var_90
  loc_73FBA1: LitI4 &H21
  loc_73FBA6: PopTmpLdAdStr var_8C
  loc_73FBA9: LitI2_Byte &H21
  loc_73FBAB: PopTmpLdAd2 var_86
  loc_73FBAE: ImpAdLdRf MemVar_74C7D0
  loc_73FBB1: NewIfNullPr clsMsg
  loc_73FBB4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FBB9: FLdZeroAd var_1D4
  loc_73FBBC: PopTmpLdAdStr
  loc_73FBC0: LitI2_Byte 6
  loc_73FBC2: PopTmpLdAd2 var_1D6
  loc_73FBC5: FMemLdRf unk_418E79
  loc_73FBCA: NewIfNullPr clsSecurity
  loc_73FBCD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FBD2: FFreeStr var_90 = ""
  loc_73FBD9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FBF0: FLdRfVar var_1D4
  loc_73FBF3: LitVar_Missing var_1D0
  loc_73FBF6: LitVar_Missing var_1B0
  loc_73FBF9: LitVar_Missing var_190
  loc_73FBFC: LitVar_Missing var_170
  loc_73FBFF: LitVar_Missing var_150
  loc_73FC02: LitVar_Missing var_130
  loc_73FC05: LitVar_Missing var_110
  loc_73FC08: LitVar_Missing var_F0
  loc_73FC0B: LitVar_Missing var_D0
  loc_73FC0E: LitVar_Missing var_B0
  loc_73FC11: LitStr "Mes en Curso"
  loc_73FC14: FStStrCopy var_90
  loc_73FC17: FLdRfVar var_90
  loc_73FC1A: LitI4 &H22
  loc_73FC1F: PopTmpLdAdStr var_8C
  loc_73FC22: LitI2_Byte &H21
  loc_73FC24: PopTmpLdAd2 var_86
  loc_73FC27: ImpAdLdRf MemVar_74C7D0
  loc_73FC2A: NewIfNullPr clsMsg
  loc_73FC2D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FC32: FLdZeroAd var_1D4
  loc_73FC35: PopTmpLdAdStr
  loc_73FC39: LitI2_Byte 7
  loc_73FC3B: PopTmpLdAd2 var_1D6
  loc_73FC3E: FMemLdRf unk_418E79
  loc_73FC43: NewIfNullPr clsSecurity
  loc_73FC46: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FC4B: FFreeStr var_90 = ""
  loc_73FC52: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FC69: FLdRfVar var_1D4
  loc_73FC6C: LitVar_Missing var_1D0
  loc_73FC6F: LitVar_Missing var_1B0
  loc_73FC72: LitVar_Missing var_190
  loc_73FC75: LitVar_Missing var_170
  loc_73FC78: LitVar_Missing var_150
  loc_73FC7B: LitVar_Missing var_130
  loc_73FC7E: LitVar_Missing var_110
  loc_73FC81: LitVar_Missing var_F0
  loc_73FC84: LitVar_Missing var_D0
  loc_73FC87: LitVar_Missing var_B0
  loc_73FC8A: LitStr "Turnos Anteriores"
  loc_73FC8D: FStStrCopy var_90
  loc_73FC90: FLdRfVar var_90
  loc_73FC93: LitI4 &H23
  loc_73FC98: PopTmpLdAdStr var_8C
  loc_73FC9B: LitI2_Byte &H21
  loc_73FC9D: PopTmpLdAd2 var_86
  loc_73FCA0: ImpAdLdRf MemVar_74C7D0
  loc_73FCA3: NewIfNullPr clsMsg
  loc_73FCA6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FCAB: FLdZeroAd var_1D4
  loc_73FCAE: PopTmpLdAdStr
  loc_73FCB2: LitI2_Byte 8
  loc_73FCB4: PopTmpLdAd2 var_1D6
  loc_73FCB7: FMemLdRf unk_418E79
  loc_73FCBC: NewIfNullPr clsSecurity
  loc_73FCBF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FCC4: FFreeStr var_90 = ""
  loc_73FCCB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FCE2: FLdRfVar var_1D4
  loc_73FCE5: LitVar_Missing var_1D0
  loc_73FCE8: LitVar_Missing var_1B0
  loc_73FCEB: LitVar_Missing var_190
  loc_73FCEE: LitVar_Missing var_170
  loc_73FCF1: LitVar_Missing var_150
  loc_73FCF4: LitVar_Missing var_130
  loc_73FCF7: LitVar_Missing var_110
  loc_73FCFA: LitVar_Missing var_F0
  loc_73FCFD: LitVar_Missing var_D0
  loc_73FD00: LitVar_Missing var_B0
  loc_73FD03: LitStr "Dias Anteriores"
  loc_73FD06: FStStrCopy var_90
  loc_73FD09: FLdRfVar var_90
  loc_73FD0C: LitI4 &H24
  loc_73FD11: PopTmpLdAdStr var_8C
  loc_73FD14: LitI2_Byte &H21
  loc_73FD16: PopTmpLdAd2 var_86
  loc_73FD19: ImpAdLdRf MemVar_74C7D0
  loc_73FD1C: NewIfNullPr clsMsg
  loc_73FD1F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FD24: FLdZeroAd var_1D4
  loc_73FD27: PopTmpLdAdStr
  loc_73FD2B: LitI2_Byte 9
  loc_73FD2D: PopTmpLdAd2 var_1D6
  loc_73FD30: FMemLdRf unk_418E79
  loc_73FD35: NewIfNullPr clsSecurity
  loc_73FD38: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FD3D: FFreeStr var_90 = ""
  loc_73FD44: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FD5B: FLdRfVar var_1D4
  loc_73FD5E: LitVar_Missing var_1D0
  loc_73FD61: LitVar_Missing var_1B0
  loc_73FD64: LitVar_Missing var_190
  loc_73FD67: LitVar_Missing var_170
  loc_73FD6A: LitVar_Missing var_150
  loc_73FD6D: LitVar_Missing var_130
  loc_73FD70: LitVar_Missing var_110
  loc_73FD73: LitVar_Missing var_F0
  loc_73FD76: LitVar_Missing var_D0
  loc_73FD79: LitVar_Missing var_B0
  loc_73FD7C: LitStr "Meses Anteriores"
  loc_73FD7F: FStStrCopy var_90
  loc_73FD82: FLdRfVar var_90
  loc_73FD85: LitI4 &H25
  loc_73FD8A: PopTmpLdAdStr var_8C
  loc_73FD8D: LitI2_Byte &H21
  loc_73FD8F: PopTmpLdAd2 var_86
  loc_73FD92: ImpAdLdRf MemVar_74C7D0
  loc_73FD95: NewIfNullPr clsMsg
  loc_73FD98: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FD9D: FLdZeroAd var_1D4
  loc_73FDA0: PopTmpLdAdStr
  loc_73FDA4: LitI2_Byte &HA
  loc_73FDA6: PopTmpLdAd2 var_1D6
  loc_73FDA9: FMemLdRf unk_418E79
  loc_73FDAE: NewIfNullPr clsSecurity
  loc_73FDB1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FDB6: FFreeStr var_90 = ""
  loc_73FDBD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FDD4: FLdRfVar var_1D4
  loc_73FDD7: LitVar_Missing var_1D0
  loc_73FDDA: LitVar_Missing var_1B0
  loc_73FDDD: LitVar_Missing var_190
  loc_73FDE0: LitVar_Missing var_170
  loc_73FDE3: LitVar_Missing var_150
  loc_73FDE6: LitVar_Missing var_130
  loc_73FDE9: LitVar_Missing var_110
  loc_73FDEC: LitVar_Missing var_F0
  loc_73FDEF: LitVar_Missing var_D0
  loc_73FDF2: LitVar_Missing var_B0
  loc_73FDF5: LitStr "Gráficos"
  loc_73FDF8: FStStrCopy var_90
  loc_73FDFB: FLdRfVar var_90
  loc_73FDFE: LitI4 &H26
  loc_73FE03: PopTmpLdAdStr var_8C
  loc_73FE06: LitI2_Byte &H21
  loc_73FE08: PopTmpLdAd2 var_86
  loc_73FE0B: ImpAdLdRf MemVar_74C7D0
  loc_73FE0E: NewIfNullPr clsMsg
  loc_73FE11: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FE16: FLdZeroAd var_1D4
  loc_73FE19: PopTmpLdAdStr
  loc_73FE1D: LitI2_Byte &HB
  loc_73FE1F: PopTmpLdAd2 var_1D6
  loc_73FE22: FMemLdRf unk_418E79
  loc_73FE27: NewIfNullPr clsSecurity
  loc_73FE2A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FE2F: FFreeStr var_90 = ""
  loc_73FE36: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FE4D: FLdRfVar var_1D4
  loc_73FE50: LitVar_Missing var_1D0
  loc_73FE53: LitVar_Missing var_1B0
  loc_73FE56: LitVar_Missing var_190
  loc_73FE59: LitVar_Missing var_170
  loc_73FE5C: LitVar_Missing var_150
  loc_73FE5F: LitVar_Missing var_130
  loc_73FE62: LitVar_Missing var_110
  loc_73FE65: LitVar_Missing var_F0
  loc_73FE68: LitVar_Missing var_D0
  loc_73FE6B: LitVar_Missing var_B0
  loc_73FE6E: LitStr "Documento Legal"
  loc_73FE71: FStStrCopy var_90
  loc_73FE74: FLdRfVar var_90
  loc_73FE77: LitI4 &H27
  loc_73FE7C: PopTmpLdAdStr var_8C
  loc_73FE7F: LitI2_Byte &H21
  loc_73FE81: PopTmpLdAd2 var_86
  loc_73FE84: ImpAdLdRf MemVar_74C7D0
  loc_73FE87: NewIfNullPr clsMsg
  loc_73FE8A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FE8F: FLdZeroAd var_1D4
  loc_73FE92: PopTmpLdAdStr
  loc_73FE96: LitI2_Byte &HC
  loc_73FE98: PopTmpLdAd2 var_1D6
  loc_73FE9B: FMemLdRf unk_418E79
  loc_73FEA0: NewIfNullPr clsSecurity
  loc_73FEA3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FEA8: FFreeStr var_90 = ""
  loc_73FEAF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FEC6: FLdRfVar var_1D4
  loc_73FEC9: LitVar_Missing var_1D0
  loc_73FECC: LitVar_Missing var_1B0
  loc_73FECF: LitVar_Missing var_190
  loc_73FED2: LitVar_Missing var_170
  loc_73FED5: LitVar_Missing var_150
  loc_73FED8: LitVar_Missing var_130
  loc_73FEDB: LitVar_Missing var_110
  loc_73FEDE: LitVar_Missing var_F0
  loc_73FEE1: LitVar_Missing var_D0
  loc_73FEE4: LitVar_Missing var_B0
  loc_73FEE7: LitStr "Tanques"
  loc_73FEEA: FStStrCopy var_90
  loc_73FEED: FLdRfVar var_90
  loc_73FEF0: LitI4 &H28
  loc_73FEF5: PopTmpLdAdStr var_8C
  loc_73FEF8: LitI2_Byte &H21
  loc_73FEFA: PopTmpLdAd2 var_86
  loc_73FEFD: ImpAdLdRf MemVar_74C7D0
  loc_73FF00: NewIfNullPr clsMsg
  loc_73FF03: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FF08: FLdZeroAd var_1D4
  loc_73FF0B: PopTmpLdAdStr
  loc_73FF0F: LitI2_Byte &HD
  loc_73FF11: PopTmpLdAd2 var_1D6
  loc_73FF14: FMemLdRf unk_418E79
  loc_73FF19: NewIfNullPr clsSecurity
  loc_73FF1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FF21: FFreeStr var_90 = ""
  loc_73FF28: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FF3F: FLdRfVar var_1D4
  loc_73FF42: LitVar_Missing var_1D0
  loc_73FF45: LitVar_Missing var_1B0
  loc_73FF48: LitVar_Missing var_190
  loc_73FF4B: LitVar_Missing var_170
  loc_73FF4E: LitVar_Missing var_150
  loc_73FF51: LitVar_Missing var_130
  loc_73FF54: LitVar_Missing var_110
  loc_73FF57: LitVar_Missing var_F0
  loc_73FF5A: LitVar_Missing var_D0
  loc_73FF5D: LitVar_Missing var_B0
  loc_73FF60: LitStr "Ingreso a Tanques"
  loc_73FF63: FStStrCopy var_90
  loc_73FF66: FLdRfVar var_90
  loc_73FF69: LitI4 &H29
  loc_73FF6E: PopTmpLdAdStr var_8C
  loc_73FF71: LitI2_Byte &H21
  loc_73FF73: PopTmpLdAd2 var_86
  loc_73FF76: ImpAdLdRf MemVar_74C7D0
  loc_73FF79: NewIfNullPr clsMsg
  loc_73FF7C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FF81: FLdZeroAd var_1D4
  loc_73FF84: PopTmpLdAdStr
  loc_73FF88: LitI2_Byte &HE
  loc_73FF8A: PopTmpLdAd2 var_1D6
  loc_73FF8D: FMemLdRf unk_418E79
  loc_73FF92: NewIfNullPr clsSecurity
  loc_73FF95: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FF9A: FFreeStr var_90 = ""
  loc_73FFA1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_73FFB8: FLdRfVar var_1D4
  loc_73FFBB: LitVar_Missing var_1D0
  loc_73FFBE: LitVar_Missing var_1B0
  loc_73FFC1: LitVar_Missing var_190
  loc_73FFC4: LitVar_Missing var_170
  loc_73FFC7: LitVar_Missing var_150
  loc_73FFCA: LitVar_Missing var_130
  loc_73FFCD: LitVar_Missing var_110
  loc_73FFD0: LitVar_Missing var_F0
  loc_73FFD3: LitVar_Missing var_D0
  loc_73FFD6: LitVar_Missing var_B0
  loc_73FFD9: LitStr "Egreso de Tanques"
  loc_73FFDC: FStStrCopy var_90
  loc_73FFDF: FLdRfVar var_90
  loc_73FFE2: LitI4 &H2A
  loc_73FFE7: PopTmpLdAdStr var_8C
  loc_73FFEA: LitI2_Byte &H21
  loc_73FFEC: PopTmpLdAd2 var_86
  loc_73FFEF: ImpAdLdRf MemVar_74C7D0
  loc_73FFF2: NewIfNullPr clsMsg
  loc_73FFF5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73FFFA: FLdZeroAd var_1D4
  loc_73FFFD: PopTmpLdAdStr
  loc_740001: LitI2_Byte &HF
  loc_740003: PopTmpLdAd2 var_1D6
  loc_740006: FMemLdRf unk_418E79
  loc_74000B: NewIfNullPr clsSecurity
  loc_74000E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740013: FFreeStr var_90 = ""
  loc_74001A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740031: FLdRfVar var_1D4
  loc_740034: LitVar_Missing var_1D0
  loc_740037: LitVar_Missing var_1B0
  loc_74003A: LitVar_Missing var_190
  loc_74003D: LitVar_Missing var_170
  loc_740040: LitVar_Missing var_150
  loc_740043: LitVar_Missing var_130
  loc_740046: LitVar_Missing var_110
  loc_740049: LitVar_Missing var_F0
  loc_74004C: LitVar_Missing var_D0
  loc_74004F: LitVar_Missing var_B0
  loc_740052: LitStr "Mediciones de Tanques"
  loc_740055: FStStrCopy var_90
  loc_740058: FLdRfVar var_90
  loc_74005B: LitI4 &H2B
  loc_740060: PopTmpLdAdStr var_8C
  loc_740063: LitI2_Byte &H21
  loc_740065: PopTmpLdAd2 var_86
  loc_740068: ImpAdLdRf MemVar_74C7D0
  loc_74006B: NewIfNullPr clsMsg
  loc_74006E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740073: FLdZeroAd var_1D4
  loc_740076: PopTmpLdAdStr
  loc_74007A: LitI2_Byte &H10
  loc_74007C: PopTmpLdAd2 var_1D6
  loc_74007F: FMemLdRf unk_418E79
  loc_740084: NewIfNullPr clsSecurity
  loc_740087: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74008C: FFreeStr var_90 = ""
  loc_740093: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7400AA: FLdRfVar var_1D4
  loc_7400AD: LitVar_Missing var_1D0
  loc_7400B0: LitVar_Missing var_1B0
  loc_7400B3: LitVar_Missing var_190
  loc_7400B6: LitVar_Missing var_170
  loc_7400B9: LitVar_Missing var_150
  loc_7400BC: LitVar_Missing var_130
  loc_7400BF: LitVar_Missing var_110
  loc_7400C2: LitVar_Missing var_F0
  loc_7400C5: LitVar_Missing var_D0
  loc_7400C8: LitVar_Missing var_B0
  loc_7400CB: LitStr "Libro de IVA"
  loc_7400CE: FStStrCopy var_90
  loc_7400D1: FLdRfVar var_90
  loc_7400D4: LitI4 &H2C
  loc_7400D9: PopTmpLdAdStr var_8C
  loc_7400DC: LitI2_Byte &H21
  loc_7400DE: PopTmpLdAd2 var_86
  loc_7400E1: ImpAdLdRf MemVar_74C7D0
  loc_7400E4: NewIfNullPr clsMsg
  loc_7400E7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7400EC: FLdZeroAd var_1D4
  loc_7400EF: PopTmpLdAdStr
  loc_7400F3: LitI2_Byte &H11
  loc_7400F5: PopTmpLdAd2 var_1D6
  loc_7400F8: FMemLdRf unk_418E79
  loc_7400FD: NewIfNullPr clsSecurity
  loc_740100: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740105: FFreeStr var_90 = ""
  loc_74010C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740123: FLdRfVar var_1D4
  loc_740126: LitVar_Missing var_1D0
  loc_740129: LitVar_Missing var_1B0
  loc_74012C: LitVar_Missing var_190
  loc_74012F: LitVar_Missing var_170
  loc_740132: LitVar_Missing var_150
  loc_740135: LitVar_Missing var_130
  loc_740138: LitVar_Missing var_110
  loc_74013B: LitVar_Missing var_F0
  loc_74013E: LitVar_Missing var_D0
  loc_740141: LitVar_Missing var_B0
  loc_740144: LitStr "Resumen de Cuenta"
  loc_740147: FStStrCopy var_90
  loc_74014A: FLdRfVar var_90
  loc_74014D: LitI4 &H2D
  loc_740152: PopTmpLdAdStr var_8C
  loc_740155: LitI2_Byte &H21
  loc_740157: PopTmpLdAd2 var_86
  loc_74015A: ImpAdLdRf MemVar_74C7D0
  loc_74015D: NewIfNullPr clsMsg
  loc_740160: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740165: FLdZeroAd var_1D4
  loc_740168: PopTmpLdAdStr
  loc_74016C: LitI2_Byte &H12
  loc_74016E: PopTmpLdAd2 var_1D6
  loc_740171: FMemLdRf unk_418E79
  loc_740176: NewIfNullPr clsSecurity
  loc_740179: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74017E: FFreeStr var_90 = ""
  loc_740185: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74019C: FLdRfVar var_1D4
  loc_74019F: LitVar_Missing var_1D0
  loc_7401A2: LitVar_Missing var_1B0
  loc_7401A5: LitVar_Missing var_190
  loc_7401A8: LitVar_Missing var_170
  loc_7401AB: LitVar_Missing var_150
  loc_7401AE: LitVar_Missing var_130
  loc_7401B1: LitVar_Missing var_110
  loc_7401B4: LitVar_Missing var_F0
  loc_7401B7: LitVar_Missing var_D0
  loc_7401BA: LitVar_Missing var_B0
  loc_7401BD: LitStr "Emisión de Recibos"
  loc_7401C0: FStStrCopy var_90
  loc_7401C3: FLdRfVar var_90
  loc_7401C6: LitI4 &H2E
  loc_7401CB: PopTmpLdAdStr var_8C
  loc_7401CE: LitI2_Byte &H21
  loc_7401D0: PopTmpLdAd2 var_86
  loc_7401D3: ImpAdLdRf MemVar_74C7D0
  loc_7401D6: NewIfNullPr clsMsg
  loc_7401D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7401DE: FLdZeroAd var_1D4
  loc_7401E1: PopTmpLdAdStr
  loc_7401E5: LitI2_Byte &H13
  loc_7401E7: PopTmpLdAd2 var_1D6
  loc_7401EA: FMemLdRf unk_418E79
  loc_7401EF: NewIfNullPr clsSecurity
  loc_7401F2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7401F7: FFreeStr var_90 = ""
  loc_7401FE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740215: FLdRfVar var_1D4
  loc_740218: LitVar_Missing var_1D0
  loc_74021B: LitVar_Missing var_1B0
  loc_74021E: LitVar_Missing var_190
  loc_740221: LitVar_Missing var_170
  loc_740224: LitVar_Missing var_150
  loc_740227: LitVar_Missing var_130
  loc_74022A: LitVar_Missing var_110
  loc_74022D: LitVar_Missing var_F0
  loc_740230: LitVar_Missing var_D0
  loc_740233: LitVar_Missing var_B0
  loc_740236: LitStr "Configuración de la playa"
  loc_740239: FStStrCopy var_90
  loc_74023C: FLdRfVar var_90
  loc_74023F: LitI4 &H2F
  loc_740244: PopTmpLdAdStr var_8C
  loc_740247: LitI2_Byte &H21
  loc_740249: PopTmpLdAd2 var_86
  loc_74024C: ImpAdLdRf MemVar_74C7D0
  loc_74024F: NewIfNullPr clsMsg
  loc_740252: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740257: FLdZeroAd var_1D4
  loc_74025A: PopTmpLdAdStr
  loc_74025E: LitI2_Byte &H14
  loc_740260: PopTmpLdAd2 var_1D6
  loc_740263: FMemLdRf unk_418E79
  loc_740268: NewIfNullPr clsSecurity
  loc_74026B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740270: FFreeStr var_90 = ""
  loc_740277: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74028E: FLdRfVar var_1D4
  loc_740291: LitVar_Missing var_1D0
  loc_740294: LitVar_Missing var_1B0
  loc_740297: LitVar_Missing var_190
  loc_74029A: LitVar_Missing var_170
  loc_74029D: LitVar_Missing var_150
  loc_7402A0: LitVar_Missing var_130
  loc_7402A3: LitVar_Missing var_110
  loc_7402A6: LitVar_Missing var_F0
  loc_7402A9: LitVar_Missing var_D0
  loc_7402AC: LitVar_Missing var_B0
  loc_7402AF: LitStr "Configuración de la Consola"
  loc_7402B2: FStStrCopy var_90
  loc_7402B5: FLdRfVar var_90
  loc_7402B8: LitI4 &H30
  loc_7402BD: PopTmpLdAdStr var_8C
  loc_7402C0: LitI2_Byte &H21
  loc_7402C2: PopTmpLdAd2 var_86
  loc_7402C5: ImpAdLdRf MemVar_74C7D0
  loc_7402C8: NewIfNullPr clsMsg
  loc_7402CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7402D0: FLdZeroAd var_1D4
  loc_7402D3: PopTmpLdAdStr
  loc_7402D7: LitI2_Byte &H15
  loc_7402D9: PopTmpLdAd2 var_1D6
  loc_7402DC: FMemLdRf unk_418E79
  loc_7402E1: NewIfNullPr clsSecurity
  loc_7402E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7402E9: FFreeStr var_90 = ""
  loc_7402F0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740307: FLdRfVar var_1D4
  loc_74030A: LitVar_Missing var_1D0
  loc_74030D: LitVar_Missing var_1B0
  loc_740310: LitVar_Missing var_190
  loc_740313: LitVar_Missing var_170
  loc_740316: LitVar_Missing var_150
  loc_740319: LitVar_Missing var_130
  loc_74031C: LitVar_Missing var_110
  loc_74031F: LitVar_Missing var_F0
  loc_740322: LitVar_Missing var_D0
  loc_740325: LitVar_Missing var_B0
  loc_740328: LitStr "Clientes"
  loc_74032B: FStStrCopy var_90
  loc_74032E: FLdRfVar var_90
  loc_740331: LitI4 &H31
  loc_740336: PopTmpLdAdStr var_8C
  loc_740339: LitI2_Byte &H21
  loc_74033B: PopTmpLdAd2 var_86
  loc_74033E: ImpAdLdRf MemVar_74C7D0
  loc_740341: NewIfNullPr clsMsg
  loc_740344: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740349: FLdZeroAd var_1D4
  loc_74034C: PopTmpLdAdStr
  loc_740350: LitI2_Byte &H16
  loc_740352: PopTmpLdAd2 var_1D6
  loc_740355: FMemLdRf unk_418E79
  loc_74035A: NewIfNullPr clsSecurity
  loc_74035D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740362: FFreeStr var_90 = ""
  loc_740369: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740380: FLdRfVar var_1D4
  loc_740383: LitVar_Missing var_1D0
  loc_740386: LitVar_Missing var_1B0
  loc_740389: LitVar_Missing var_190
  loc_74038C: LitVar_Missing var_170
  loc_74038F: LitVar_Missing var_150
  loc_740392: LitVar_Missing var_130
  loc_740395: LitVar_Missing var_110
  loc_740398: LitVar_Missing var_F0
  loc_74039B: LitVar_Missing var_D0
  loc_74039E: LitVar_Missing var_B0
  loc_7403A1: LitStr "Número de Comprobante"
  loc_7403A4: FStStrCopy var_90
  loc_7403A7: FLdRfVar var_90
  loc_7403AA: LitI4 &H32
  loc_7403AF: PopTmpLdAdStr var_8C
  loc_7403B2: LitI2_Byte &H21
  loc_7403B4: PopTmpLdAd2 var_86
  loc_7403B7: ImpAdLdRf MemVar_74C7D0
  loc_7403BA: NewIfNullPr clsMsg
  loc_7403BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7403C2: FLdZeroAd var_1D4
  loc_7403C5: PopTmpLdAdStr
  loc_7403C9: LitI2_Byte &H17
  loc_7403CB: PopTmpLdAd2 var_1D6
  loc_7403CE: FMemLdRf unk_418E79
  loc_7403D3: NewIfNullPr clsSecurity
  loc_7403D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7403DB: FFreeStr var_90 = ""
  loc_7403E2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7403F9: FLdRfVar var_1D4
  loc_7403FC: LitVar_Missing var_1D0
  loc_7403FF: LitVar_Missing var_1B0
  loc_740402: LitVar_Missing var_190
  loc_740405: LitVar_Missing var_170
  loc_740408: LitVar_Missing var_150
  loc_74040B: LitVar_Missing var_130
  loc_74040E: LitVar_Missing var_110
  loc_740411: LitVar_Missing var_F0
  loc_740414: LitVar_Missing var_D0
  loc_740417: LitVar_Missing var_B0
  loc_74041A: LitStr "Programación de Precios"
  loc_74041D: FStStrCopy var_90
  loc_740420: FLdRfVar var_90
  loc_740423: LitI4 &H33
  loc_740428: PopTmpLdAdStr var_8C
  loc_74042B: LitI2_Byte &H21
  loc_74042D: PopTmpLdAd2 var_86
  loc_740430: ImpAdLdRf MemVar_74C7D0
  loc_740433: NewIfNullPr clsMsg
  loc_740436: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74043B: FLdZeroAd var_1D4
  loc_74043E: PopTmpLdAdStr
  loc_740442: LitI2_Byte &H18
  loc_740444: PopTmpLdAd2 var_1D6
  loc_740447: FMemLdRf unk_418E79
  loc_74044C: NewIfNullPr clsSecurity
  loc_74044F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740454: FFreeStr var_90 = ""
  loc_74045B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740472: FLdRfVar var_1D4
  loc_740475: LitVar_Missing var_1D0
  loc_740478: LitVar_Missing var_1B0
  loc_74047B: LitVar_Missing var_190
  loc_74047E: LitVar_Missing var_170
  loc_740481: LitVar_Missing var_150
  loc_740484: LitVar_Missing var_130
  loc_740487: LitVar_Missing var_110
  loc_74048A: LitVar_Missing var_F0
  loc_74048D: LitVar_Missing var_D0
  loc_740490: LitVar_Missing var_B0
  loc_740493: LitStr "Opción Decimal"
  loc_740496: FStStrCopy var_90
  loc_740499: FLdRfVar var_90
  loc_74049C: LitI4 &H34
  loc_7404A1: PopTmpLdAdStr var_8C
  loc_7404A4: LitI2_Byte &H21
  loc_7404A6: PopTmpLdAd2 var_86
  loc_7404A9: ImpAdLdRf MemVar_74C7D0
  loc_7404AC: NewIfNullPr clsMsg
  loc_7404AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7404B4: FLdZeroAd var_1D4
  loc_7404B7: PopTmpLdAdStr
  loc_7404BB: LitI2_Byte &H19
  loc_7404BD: PopTmpLdAd2 var_1D6
  loc_7404C0: FMemLdRf unk_418E79
  loc_7404C5: NewIfNullPr clsSecurity
  loc_7404C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7404CD: FFreeStr var_90 = ""
  loc_7404D4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7404EB: FLdRfVar var_1D4
  loc_7404EE: LitVar_Missing var_1D0
  loc_7404F1: LitVar_Missing var_1B0
  loc_7404F4: LitVar_Missing var_190
  loc_7404F7: LitVar_Missing var_170
  loc_7404FA: LitVar_Missing var_150
  loc_7404FD: LitVar_Missing var_130
  loc_740500: LitVar_Missing var_110
  loc_740503: LitVar_Missing var_F0
  loc_740506: LitVar_Missing var_D0
  loc_740509: LitVar_Missing var_B0
  loc_74050C: LitStr "Autorización del Despacho"
  loc_74050F: FStStrCopy var_90
  loc_740512: FLdRfVar var_90
  loc_740515: LitI4 &H35
  loc_74051A: PopTmpLdAdStr var_8C
  loc_74051D: LitI2_Byte &H21
  loc_74051F: PopTmpLdAd2 var_86
  loc_740522: ImpAdLdRf MemVar_74C7D0
  loc_740525: NewIfNullPr clsMsg
  loc_740528: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74052D: FLdZeroAd var_1D4
  loc_740530: PopTmpLdAdStr
  loc_740534: LitI2_Byte &H1A
  loc_740536: PopTmpLdAd2 var_1D6
  loc_740539: FMemLdRf unk_418E79
  loc_74053E: NewIfNullPr clsSecurity
  loc_740541: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740546: FFreeStr var_90 = ""
  loc_74054D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740564: FLdRfVar var_1D4
  loc_740567: LitVar_Missing var_1D0
  loc_74056A: LitVar_Missing var_1B0
  loc_74056D: LitVar_Missing var_190
  loc_740570: LitVar_Missing var_170
  loc_740573: LitVar_Missing var_150
  loc_740576: LitVar_Missing var_130
  loc_740579: LitVar_Missing var_110
  loc_74057C: LitVar_Missing var_F0
  loc_74057F: LitVar_Missing var_D0
  loc_740582: LitVar_Missing var_B0
  loc_740585: LitStr "Cambios de Precio Pendiente"
  loc_740588: FStStrCopy var_90
  loc_74058B: FLdRfVar var_90
  loc_74058E: LitI4 &H36
  loc_740593: PopTmpLdAdStr var_8C
  loc_740596: LitI2_Byte &H21
  loc_740598: PopTmpLdAd2 var_86
  loc_74059B: ImpAdLdRf MemVar_74C7D0
  loc_74059E: NewIfNullPr clsMsg
  loc_7405A1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7405A6: FLdZeroAd var_1D4
  loc_7405A9: PopTmpLdAdStr
  loc_7405AD: LitI2_Byte &H1B
  loc_7405AF: PopTmpLdAd2 var_1D6
  loc_7405B2: FMemLdRf unk_418E79
  loc_7405B7: NewIfNullPr clsSecurity
  loc_7405BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7405BF: FFreeStr var_90 = ""
  loc_7405C6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7405DD: FLdRfVar var_1D4
  loc_7405E0: LitVar_Missing var_1D0
  loc_7405E3: LitVar_Missing var_1B0
  loc_7405E6: LitVar_Missing var_190
  loc_7405E9: LitVar_Missing var_170
  loc_7405EC: LitVar_Missing var_150
  loc_7405EF: LitVar_Missing var_130
  loc_7405F2: LitVar_Missing var_110
  loc_7405F5: LitVar_Missing var_F0
  loc_7405F8: LitVar_Missing var_D0
  loc_7405FB: LitVar_Missing var_B0
  loc_7405FE: LitStr "Importación de Datos"
  loc_740601: FStStrCopy var_90
  loc_740604: FLdRfVar var_90
  loc_740607: LitI4 &H37
  loc_74060C: PopTmpLdAdStr var_8C
  loc_74060F: LitI2_Byte &H21
  loc_740611: PopTmpLdAd2 var_86
  loc_740614: ImpAdLdRf MemVar_74C7D0
  loc_740617: NewIfNullPr clsMsg
  loc_74061A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74061F: FLdZeroAd var_1D4
  loc_740622: PopTmpLdAdStr
  loc_740626: LitI2_Byte &H1C
  loc_740628: PopTmpLdAd2 var_1D6
  loc_74062B: FMemLdRf unk_418E79
  loc_740630: NewIfNullPr clsSecurity
  loc_740633: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740638: FFreeStr var_90 = ""
  loc_74063F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740656: FLdRfVar var_1D4
  loc_740659: LitVar_Missing var_1D0
  loc_74065C: LitVar_Missing var_1B0
  loc_74065F: LitVar_Missing var_190
  loc_740662: LitVar_Missing var_170
  loc_740665: LitVar_Missing var_150
  loc_740668: LitVar_Missing var_130
  loc_74066B: LitVar_Missing var_110
  loc_74066E: LitVar_Missing var_F0
  loc_740671: LitVar_Missing var_D0
  loc_740674: LitVar_Missing var_B0
  loc_740677: LitStr "Backup Configuración"
  loc_74067A: FStStrCopy var_90
  loc_74067D: FLdRfVar var_90
  loc_740680: LitI4 &H38
  loc_740685: PopTmpLdAdStr var_8C
  loc_740688: LitI2_Byte &H21
  loc_74068A: PopTmpLdAd2 var_86
  loc_74068D: ImpAdLdRf MemVar_74C7D0
  loc_740690: NewIfNullPr clsMsg
  loc_740693: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740698: FLdZeroAd var_1D4
  loc_74069B: PopTmpLdAdStr
  loc_74069F: LitI2_Byte &H1D
  loc_7406A1: PopTmpLdAd2 var_1D6
  loc_7406A4: FMemLdRf unk_418E79
  loc_7406A9: NewIfNullPr clsSecurity
  loc_7406AC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7406B1: FFreeStr var_90 = ""
  loc_7406B8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7406CF: FLdRfVar var_1D4
  loc_7406D2: LitVar_Missing var_1D0
  loc_7406D5: LitVar_Missing var_1B0
  loc_7406D8: LitVar_Missing var_190
  loc_7406DB: LitVar_Missing var_170
  loc_7406DE: LitVar_Missing var_150
  loc_7406E1: LitVar_Missing var_130
  loc_7406E4: LitVar_Missing var_110
  loc_7406E7: LitVar_Missing var_F0
  loc_7406EA: LitVar_Missing var_D0
  loc_7406ED: LitVar_Missing var_B0
  loc_7406F0: LitStr "Restore Configuración"
  loc_7406F3: FStStrCopy var_90
  loc_7406F6: FLdRfVar var_90
  loc_7406F9: LitI4 &H39
  loc_7406FE: PopTmpLdAdStr var_8C
  loc_740701: LitI2_Byte &H21
  loc_740703: PopTmpLdAd2 var_86
  loc_740706: ImpAdLdRf MemVar_74C7D0
  loc_740709: NewIfNullPr clsMsg
  loc_74070C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740711: FLdZeroAd var_1D4
  loc_740714: PopTmpLdAdStr
  loc_740718: LitI2_Byte &H1E
  loc_74071A: PopTmpLdAd2 var_1D6
  loc_74071D: FMemLdRf unk_418E79
  loc_740722: NewIfNullPr clsSecurity
  loc_740725: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74072A: FFreeStr var_90 = ""
  loc_740731: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740748: FLdRfVar var_1D4
  loc_74074B: LitVar_Missing var_1D0
  loc_74074E: LitVar_Missing var_1B0
  loc_740751: LitVar_Missing var_190
  loc_740754: LitVar_Missing var_170
  loc_740757: LitVar_Missing var_150
  loc_74075A: LitVar_Missing var_130
  loc_74075D: LitVar_Missing var_110
  loc_740760: LitVar_Missing var_F0
  loc_740763: LitVar_Missing var_D0
  loc_740766: LitVar_Missing var_B0
  loc_740769: LitStr "Comisiones"
  loc_74076C: FStStrCopy var_90
  loc_74076F: FLdRfVar var_90
  loc_740772: LitI4 &H3A
  loc_740777: PopTmpLdAdStr var_8C
  loc_74077A: LitI2_Byte &H21
  loc_74077C: PopTmpLdAd2 var_86
  loc_74077F: ImpAdLdRf MemVar_74C7D0
  loc_740782: NewIfNullPr clsMsg
  loc_740785: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74078A: FLdZeroAd var_1D4
  loc_74078D: PopTmpLdAdStr
  loc_740791: LitI2_Byte &H1F
  loc_740793: PopTmpLdAd2 var_1D6
  loc_740796: FMemLdRf unk_418E79
  loc_74079B: NewIfNullPr clsSecurity
  loc_74079E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7407A3: FFreeStr var_90 = ""
  loc_7407AA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7407C1: FLdRfVar var_1D4
  loc_7407C4: LitVar_Missing var_1D0
  loc_7407C7: LitVar_Missing var_1B0
  loc_7407CA: LitVar_Missing var_190
  loc_7407CD: LitVar_Missing var_170
  loc_7407D0: LitVar_Missing var_150
  loc_7407D3: LitVar_Missing var_130
  loc_7407D6: LitVar_Missing var_110
  loc_7407D9: LitVar_Missing var_F0
  loc_7407DC: LitVar_Missing var_D0
  loc_7407DF: LitVar_Missing var_B0
  loc_7407E2: LitStr "Seguridad"
  loc_7407E5: FStStrCopy var_90
  loc_7407E8: FLdRfVar var_90
  loc_7407EB: LitI4 &H3B
  loc_7407F0: PopTmpLdAdStr var_8C
  loc_7407F3: LitI2_Byte &H21
  loc_7407F5: PopTmpLdAd2 var_86
  loc_7407F8: ImpAdLdRf MemVar_74C7D0
  loc_7407FB: NewIfNullPr clsMsg
  loc_7407FE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740803: FLdZeroAd var_1D4
  loc_740806: PopTmpLdAdStr
  loc_74080A: LitI2_Byte &H20
  loc_74080C: PopTmpLdAd2 var_1D6
  loc_74080F: FMemLdRf unk_418E79
  loc_740814: NewIfNullPr clsSecurity
  loc_740817: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74081C: FFreeStr var_90 = ""
  loc_740823: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74083A: FLdRfVar var_1D4
  loc_74083D: LitVar_Missing var_1D0
  loc_740840: LitVar_Missing var_1B0
  loc_740843: LitVar_Missing var_190
  loc_740846: LitVar_Missing var_170
  loc_740849: LitVar_Missing var_150
  loc_74084C: LitVar_Missing var_130
  loc_74084F: LitVar_Missing var_110
  loc_740852: LitVar_Missing var_F0
  loc_740855: LitVar_Missing var_D0
  loc_740858: LitVar_Missing var_B0
  loc_74085B: LitStr "Datos Regionales"
  loc_74085E: FStStrCopy var_90
  loc_740861: FLdRfVar var_90
  loc_740864: LitI4 &H3C
  loc_740869: PopTmpLdAdStr var_8C
  loc_74086C: LitI2_Byte &H21
  loc_74086E: PopTmpLdAd2 var_86
  loc_740871: ImpAdLdRf MemVar_74C7D0
  loc_740874: NewIfNullPr clsMsg
  loc_740877: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74087C: FLdZeroAd var_1D4
  loc_74087F: PopTmpLdAdStr
  loc_740883: LitI2_Byte &H21
  loc_740885: PopTmpLdAd2 var_1D6
  loc_740888: FMemLdRf unk_418E79
  loc_74088D: NewIfNullPr clsSecurity
  loc_740890: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740895: FFreeStr var_90 = ""
  loc_74089C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7408B3: FLdRfVar var_1D4
  loc_7408B6: LitVar_Missing var_1D0
  loc_7408B9: LitVar_Missing var_1B0
  loc_7408BC: LitVar_Missing var_190
  loc_7408BF: LitVar_Missing var_170
  loc_7408C2: LitVar_Missing var_150
  loc_7408C5: LitVar_Missing var_130
  loc_7408C8: LitVar_Missing var_110
  loc_7408CB: LitVar_Missing var_F0
  loc_7408CE: LitVar_Missing var_D0
  loc_7408D1: LitVar_Missing var_B0
  loc_7408D4: LitStr "Configuración Datos Estación"
  loc_7408D7: FStStrCopy var_90
  loc_7408DA: FLdRfVar var_90
  loc_7408DD: LitI4 &H3D
  loc_7408E2: PopTmpLdAdStr var_8C
  loc_7408E5: LitI2_Byte &H21
  loc_7408E7: PopTmpLdAd2 var_86
  loc_7408EA: ImpAdLdRf MemVar_74C7D0
  loc_7408ED: NewIfNullPr clsMsg
  loc_7408F0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7408F5: FLdZeroAd var_1D4
  loc_7408F8: PopTmpLdAdStr
  loc_7408FC: LitI2_Byte &H22
  loc_7408FE: PopTmpLdAd2 var_1D6
  loc_740901: FMemLdRf unk_418E79
  loc_740906: NewIfNullPr clsSecurity
  loc_740909: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74090E: FFreeStr var_90 = ""
  loc_740915: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74092C: FLdRfVar var_1D4
  loc_74092F: LitVar_Missing var_1D0
  loc_740932: LitVar_Missing var_1B0
  loc_740935: LitVar_Missing var_190
  loc_740938: LitVar_Missing var_170
  loc_74093B: LitVar_Missing var_150
  loc_74093E: LitVar_Missing var_130
  loc_740941: LitVar_Missing var_110
  loc_740944: LitVar_Missing var_F0
  loc_740947: LitVar_Missing var_D0
  loc_74094A: LitVar_Missing var_B0
  loc_74094D: LitStr "Cambio de Nivel de Precios por"
  loc_740950: FStStrCopy var_90
  loc_740953: FLdRfVar var_90
  loc_740956: LitI4 &H3E
  loc_74095B: PopTmpLdAdStr var_8C
  loc_74095E: LitI2_Byte &H21
  loc_740960: PopTmpLdAd2 var_86
  loc_740963: ImpAdLdRf MemVar_74C7D0
  loc_740966: NewIfNullPr clsMsg
  loc_740969: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74096E: ILdRf var_1D4
  loc_740971: LitStr " "
  loc_740974: ConcatStr
  loc_740975: FStStrNoPop var_1DC
  loc_740978: FMemLdR4 arg_8(7552)
  loc_74097D: ConcatStr
  loc_74097E: PopTmpLdAdStr
  loc_740982: LitI2_Byte &H23
  loc_740984: PopTmpLdAd2 var_1D6
  loc_740987: FMemLdRf unk_418E79
  loc_74098C: NewIfNullPr clsSecurity
  loc_74098F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740994: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_74099F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7409B6: FLdRfVar var_1D4
  loc_7409B9: LitVar_Missing var_1D0
  loc_7409BC: LitVar_Missing var_1B0
  loc_7409BF: LitVar_Missing var_190
  loc_7409C2: LitVar_Missing var_170
  loc_7409C5: LitVar_Missing var_150
  loc_7409C8: LitVar_Missing var_130
  loc_7409CB: LitVar_Missing var_110
  loc_7409CE: LitVar_Missing var_F0
  loc_7409D1: LitVar_Missing var_D0
  loc_7409D4: LitVar_Missing var_B0
  loc_7409D7: LitStr "Precios de la Competencia"
  loc_7409DA: FStStrCopy var_90
  loc_7409DD: FLdRfVar var_90
  loc_7409E0: LitI4 &H3F
  loc_7409E5: PopTmpLdAdStr var_8C
  loc_7409E8: LitI2_Byte &H21
  loc_7409EA: PopTmpLdAd2 var_86
  loc_7409ED: ImpAdLdRf MemVar_74C7D0
  loc_7409F0: NewIfNullPr clsMsg
  loc_7409F3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7409F8: FLdZeroAd var_1D4
  loc_7409FB: PopTmpLdAdStr
  loc_7409FF: LitI2_Byte &H24
  loc_740A01: PopTmpLdAd2 var_1D6
  loc_740A04: FMemLdRf unk_418E79
  loc_740A09: NewIfNullPr clsSecurity
  loc_740A0C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740A11: FFreeStr var_90 = ""
  loc_740A18: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740A2F: LitVarI2 var_B0, 1
  loc_740A34: LitI4 4
  loc_740A39: FMemLdR4 arg_8(7512)
  loc_740A3E: ImpAdCallI2 Mid$(, , )
  loc_740A43: FStStr var_394
  loc_740A46: FLdRfVar var_1DC
  loc_740A49: LitVar_Missing var_200
  loc_740A4C: LitVar_Missing var_1D0
  loc_740A4F: LitVar_Missing var_1B0
  loc_740A52: LitVar_Missing var_190
  loc_740A55: LitVar_Missing var_170
  loc_740A58: LitVar_Missing var_150
  loc_740A5B: LitVar_Missing var_130
  loc_740A5E: LitVar_Missing var_110
  loc_740A61: LitVar_Missing var_F0
  loc_740A64: LitVar_Missing var_D0
  loc_740A67: LitStr "Cierre Red XXI"
  loc_740A6A: FStStrCopy var_1D4
  loc_740A6D: FLdRfVar var_1D4
  loc_740A70: LitI4 &H40
  loc_740A75: PopTmpLdAdStr var_8C
  loc_740A78: LitI2_Byte &H21
  loc_740A7A: PopTmpLdAd2 var_86
  loc_740A7D: ImpAdLdRf MemVar_74C7D0
  loc_740A80: NewIfNullPr clsMsg
  loc_740A83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740A88: FLdRfVar var_348
  loc_740A8B: LitVar_Missing var_344
  loc_740A8E: LitVar_Missing var_324
  loc_740A91: LitVar_Missing var_304
  loc_740A94: LitVar_Missing var_2E4
  loc_740A97: LitVar_Missing var_2C4
  loc_740A9A: LitVar_Missing var_2A4
  loc_740A9D: LitVar_Missing var_284
  loc_740AA0: LitVar_Missing var_264
  loc_740AA3: LitVar_Missing var_244
  loc_740AA6: LitVar_Missing var_224
  loc_740AA9: LitStr "Cierre de Consignado"
  loc_740AAC: FStStrCopy var_1E0
  loc_740AAF: FLdRfVar var_1E0
  loc_740AB2: LitI4 &H40
  loc_740AB7: PopTmpLdAdStr var_204
  loc_740ABA: LitI2_Byte &H21
  loc_740ABC: PopTmpLdAd2 var_1D6
  loc_740ABF: ImpAdLdRf MemVar_74C7D0
  loc_740AC2: NewIfNullPr clsMsg
  loc_740AC5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740ACA: FLdZeroAd var_348
  loc_740ACD: CVarStr var_378
  loc_740AD0: FLdZeroAd var_1DC
  loc_740AD3: CVarStr var_368
  loc_740AD6: FLdZeroAd var_394
  loc_740AD9: FStStrNoPop var_90
  loc_740ADC: LitStr "1"
  loc_740ADF: EqStr
  loc_740AE1: CVarBoolI2 var_358
  loc_740AE5: FLdRfVar var_388
  loc_740AE8: ImpAdCallFPR4  = IIf(, , )
  loc_740AED: FLdRfVar var_388
  loc_740AF0: CStrVarTmp
  loc_740AF1: PopTmpLdAdStr
  loc_740AF5: LitI2_Byte &H25
  loc_740AF7: PopTmpLdAd2 var_38A
  loc_740AFA: FMemLdRf unk_418E79
  loc_740AFF: NewIfNullPr clsSecurity
  loc_740B02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740B07: FFreeStr var_90 = "": var_1D4 = "": var_1E0 = "": var_390 = ""
  loc_740B14: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_358 = "": var_368 = "": var_378 = ""
  loc_740B49: FLdRfVar var_1D4
  loc_740B4C: LitVar_Missing var_1D0
  loc_740B4F: LitVar_Missing var_1B0
  loc_740B52: LitVar_Missing var_190
  loc_740B55: LitVar_Missing var_170
  loc_740B58: LitVar_Missing var_150
  loc_740B5B: LitVar_Missing var_130
  loc_740B5E: LitVar_Missing var_110
  loc_740B61: LitVar_Missing var_F0
  loc_740B64: LitVar_Missing var_D0
  loc_740B67: LitVar_Missing var_B0
  loc_740B6A: LitStr "Operaciones Diferenciales (Oper. Man.)"
  loc_740B6D: FStStrCopy var_90
  loc_740B70: FLdRfVar var_90
  loc_740B73: LitI4 &H41
  loc_740B78: PopTmpLdAdStr var_8C
  loc_740B7B: LitI2_Byte &H21
  loc_740B7D: PopTmpLdAd2 var_86
  loc_740B80: ImpAdLdRf MemVar_74C7D0
  loc_740B83: NewIfNullPr clsMsg
  loc_740B86: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740B8B: FLdZeroAd var_1D4
  loc_740B8E: PopTmpLdAdStr
  loc_740B92: LitI2_Byte &H26
  loc_740B94: PopTmpLdAd2 var_1D6
  loc_740B97: FMemLdRf unk_418E79
  loc_740B9C: NewIfNullPr clsSecurity
  loc_740B9F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740BA4: FFreeStr var_90 = ""
  loc_740BAB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740BC2: FLdRfVar var_1D4
  loc_740BC5: LitVar_Missing var_1D0
  loc_740BC8: LitVar_Missing var_1B0
  loc_740BCB: LitVar_Missing var_190
  loc_740BCE: LitVar_Missing var_170
  loc_740BD1: LitVar_Missing var_150
  loc_740BD4: LitVar_Missing var_130
  loc_740BD7: LitVar_Missing var_110
  loc_740BDA: LitVar_Missing var_F0
  loc_740BDD: LitVar_Missing var_D0
  loc_740BE0: LitVar_Missing var_B0
  loc_740BE3: LitStr "Nota Liquidación Combustible"
  loc_740BE6: FStStrCopy var_90
  loc_740BE9: FLdRfVar var_90
  loc_740BEC: LitI4 &H42
  loc_740BF1: PopTmpLdAdStr var_8C
  loc_740BF4: LitI2_Byte &H21
  loc_740BF6: PopTmpLdAd2 var_86
  loc_740BF9: ImpAdLdRf MemVar_74C7D0
  loc_740BFC: NewIfNullPr clsMsg
  loc_740BFF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740C04: FLdZeroAd var_1D4
  loc_740C07: PopTmpLdAdStr
  loc_740C0B: LitI2_Byte &H27
  loc_740C0D: PopTmpLdAd2 var_1D6
  loc_740C10: FMemLdRf unk_418E79
  loc_740C15: NewIfNullPr clsSecurity
  loc_740C18: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740C1D: FFreeStr var_90 = ""
  loc_740C24: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740C3B: FLdRfVar var_1D4
  loc_740C3E: LitVar_Missing var_1D0
  loc_740C41: LitVar_Missing var_1B0
  loc_740C44: LitVar_Missing var_190
  loc_740C47: LitVar_Missing var_170
  loc_740C4A: LitVar_Missing var_150
  loc_740C4D: LitVar_Missing var_130
  loc_740C50: LitVar_Missing var_110
  loc_740C53: LitVar_Missing var_F0
  loc_740C56: LitVar_Missing var_D0
  loc_740C59: LitVar_Missing var_B0
  loc_740C5C: LitStr "Aplicar Nueva Codificación"
  loc_740C5F: FStStrCopy var_90
  loc_740C62: FLdRfVar var_90
  loc_740C65: LitI4 &H43
  loc_740C6A: PopTmpLdAdStr var_8C
  loc_740C6D: LitI2_Byte &H21
  loc_740C6F: PopTmpLdAd2 var_86
  loc_740C72: ImpAdLdRf MemVar_74C7D0
  loc_740C75: NewIfNullPr clsMsg
  loc_740C78: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740C7D: FLdZeroAd var_1D4
  loc_740C80: PopTmpLdAdStr
  loc_740C84: LitI2_Byte &H28
  loc_740C86: PopTmpLdAd2 var_1D6
  loc_740C89: FMemLdRf unk_418E79
  loc_740C8E: NewIfNullPr clsSecurity
  loc_740C91: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740C96: FFreeStr var_90 = ""
  loc_740C9D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740CB4: FLdRfVar var_1D4
  loc_740CB7: LitVar_Missing var_1D0
  loc_740CBA: LitVar_Missing var_1B0
  loc_740CBD: LitVar_Missing var_190
  loc_740CC0: LitVar_Missing var_170
  loc_740CC3: LitVar_Missing var_150
  loc_740CC6: LitVar_Missing var_130
  loc_740CC9: LitVar_Missing var_110
  loc_740CCC: LitVar_Missing var_F0
  loc_740CCF: LitVar_Missing var_D0
  loc_740CD2: LitVar_Missing var_B0
  loc_740CD5: LitStr "Anexo III"
  loc_740CD8: FStStrCopy var_90
  loc_740CDB: FLdRfVar var_90
  loc_740CDE: LitI4 &H44
  loc_740CE3: PopTmpLdAdStr var_8C
  loc_740CE6: LitI2_Byte &H21
  loc_740CE8: PopTmpLdAd2 var_86
  loc_740CEB: ImpAdLdRf MemVar_74C7D0
  loc_740CEE: NewIfNullPr clsMsg
  loc_740CF1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740CF6: FLdZeroAd var_1D4
  loc_740CF9: PopTmpLdAdStr
  loc_740CFD: LitI2_Byte &H29
  loc_740CFF: PopTmpLdAd2 var_1D6
  loc_740D02: FMemLdRf unk_418E79
  loc_740D07: NewIfNullPr clsSecurity
  loc_740D0A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740D0F: FFreeStr var_90 = ""
  loc_740D16: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740D2D: FLdRfVar var_1D4
  loc_740D30: LitVar_Missing var_1D0
  loc_740D33: LitVar_Missing var_1B0
  loc_740D36: LitVar_Missing var_190
  loc_740D39: LitVar_Missing var_170
  loc_740D3C: LitVar_Missing var_150
  loc_740D3F: LitVar_Missing var_130
  loc_740D42: LitVar_Missing var_110
  loc_740D45: LitVar_Missing var_F0
  loc_740D48: LitVar_Missing var_D0
  loc_740D4B: LitVar_Missing var_B0
  loc_740D4E: LitStr "Eventos de Log"
  loc_740D51: FStStrCopy var_90
  loc_740D54: FLdRfVar var_90
  loc_740D57: LitI4 &H45
  loc_740D5C: PopTmpLdAdStr var_8C
  loc_740D5F: LitI2_Byte &H21
  loc_740D61: PopTmpLdAd2 var_86
  loc_740D64: ImpAdLdRf MemVar_74C7D0
  loc_740D67: NewIfNullPr clsMsg
  loc_740D6A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740D6F: FLdZeroAd var_1D4
  loc_740D72: PopTmpLdAdStr
  loc_740D76: LitI2_Byte &H2A
  loc_740D78: PopTmpLdAd2 var_1D6
  loc_740D7B: FMemLdRf unk_418E79
  loc_740D80: NewIfNullPr clsSecurity
  loc_740D83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740D88: FFreeStr var_90 = ""
  loc_740D8F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740DA6: FLdRfVar var_1D4
  loc_740DA9: LitVar_Missing var_1D0
  loc_740DAC: LitVar_Missing var_1B0
  loc_740DAF: LitVar_Missing var_190
  loc_740DB2: LitVar_Missing var_170
  loc_740DB5: LitVar_Missing var_150
  loc_740DB8: LitVar_Missing var_130
  loc_740DBB: LitVar_Missing var_110
  loc_740DBE: LitVar_Missing var_F0
  loc_740DC1: LitVar_Missing var_D0
  loc_740DC4: LitVar_Missing var_B0
  loc_740DC7: LitStr "Cambiar Claves"
  loc_740DCA: FStStrCopy var_90
  loc_740DCD: FLdRfVar var_90
  loc_740DD0: LitI4 &H46
  loc_740DD5: PopTmpLdAdStr var_8C
  loc_740DD8: LitI2_Byte &H21
  loc_740DDA: PopTmpLdAd2 var_86
  loc_740DDD: ImpAdLdRf MemVar_74C7D0
  loc_740DE0: NewIfNullPr clsMsg
  loc_740DE3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740DE8: FLdZeroAd var_1D4
  loc_740DEB: PopTmpLdAdStr
  loc_740DEF: LitI2_Byte &H2B
  loc_740DF1: PopTmpLdAd2 var_1D6
  loc_740DF4: FMemLdRf unk_418E79
  loc_740DF9: NewIfNullPr clsSecurity
  loc_740DFC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740E01: FFreeStr var_90 = ""
  loc_740E08: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740E1F: FLdRfVar var_1D4
  loc_740E22: LitVar_Missing var_1D0
  loc_740E25: LitVar_Missing var_1B0
  loc_740E28: LitVar_Missing var_190
  loc_740E2B: LitVar_Missing var_170
  loc_740E2E: LitVar_Missing var_150
  loc_740E31: LitVar_Missing var_130
  loc_740E34: LitVar_Missing var_110
  loc_740E37: LitVar_Missing var_F0
  loc_740E3A: LitVar_Missing var_D0
  loc_740E3D: LitVar_Missing var_B0
  loc_740E40: LitStr "Control de Tanques"
  loc_740E43: FStStrCopy var_90
  loc_740E46: FLdRfVar var_90
  loc_740E49: LitI4 &H47
  loc_740E4E: PopTmpLdAdStr var_8C
  loc_740E51: LitI2_Byte &H21
  loc_740E53: PopTmpLdAd2 var_86
  loc_740E56: ImpAdLdRf MemVar_74C7D0
  loc_740E59: NewIfNullPr clsMsg
  loc_740E5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740E61: FLdZeroAd var_1D4
  loc_740E64: PopTmpLdAdStr
  loc_740E68: LitI2_Byte &H2C
  loc_740E6A: PopTmpLdAd2 var_1D6
  loc_740E6D: FMemLdRf unk_418E79
  loc_740E72: NewIfNullPr clsSecurity
  loc_740E75: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740E7A: FFreeStr var_90 = ""
  loc_740E81: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740E98: FLdRfVar var_1D4
  loc_740E9B: LitVar_Missing var_1D0
  loc_740E9E: LitVar_Missing var_1B0
  loc_740EA1: LitVar_Missing var_190
  loc_740EA4: LitVar_Missing var_170
  loc_740EA7: LitVar_Missing var_150
  loc_740EAA: LitVar_Missing var_130
  loc_740EAD: LitVar_Missing var_110
  loc_740EB0: LitVar_Missing var_F0
  loc_740EB3: LitVar_Missing var_D0
  loc_740EB6: LitVar_Missing var_B0
  loc_740EB9: LitStr "Gestión de Puertos"
  loc_740EBC: FStStrCopy var_90
  loc_740EBF: FLdRfVar var_90
  loc_740EC2: LitI4 &H48
  loc_740EC7: PopTmpLdAdStr var_8C
  loc_740ECA: LitI2_Byte &H21
  loc_740ECC: PopTmpLdAd2 var_86
  loc_740ECF: ImpAdLdRf MemVar_74C7D0
  loc_740ED2: NewIfNullPr clsMsg
  loc_740ED5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740EDA: FLdZeroAd var_1D4
  loc_740EDD: PopTmpLdAdStr
  loc_740EE1: LitI2_Byte &H2D
  loc_740EE3: PopTmpLdAd2 var_1D6
  loc_740EE6: FMemLdRf unk_418E79
  loc_740EEB: NewIfNullPr clsSecurity
  loc_740EEE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740EF3: FFreeStr var_90 = ""
  loc_740EFA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740F11: FLdRfVar var_1D4
  loc_740F14: LitVar_Missing var_1D0
  loc_740F17: LitVar_Missing var_1B0
  loc_740F1A: LitVar_Missing var_190
  loc_740F1D: LitVar_Missing var_170
  loc_740F20: LitVar_Missing var_150
  loc_740F23: LitVar_Missing var_130
  loc_740F26: LitVar_Missing var_110
  loc_740F29: LitVar_Missing var_F0
  loc_740F2C: LitVar_Missing var_D0
  loc_740F2F: LitVar_Missing var_B0
  loc_740F32: LitStr "Tarjetas de Crédito"
  loc_740F35: FStStrCopy var_90
  loc_740F38: FLdRfVar var_90
  loc_740F3B: LitI4 &H49
  loc_740F40: PopTmpLdAdStr var_8C
  loc_740F43: LitI2_Byte &H21
  loc_740F45: PopTmpLdAd2 var_86
  loc_740F48: ImpAdLdRf MemVar_74C7D0
  loc_740F4B: NewIfNullPr clsMsg
  loc_740F4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740F53: FLdZeroAd var_1D4
  loc_740F56: PopTmpLdAdStr
  loc_740F5A: LitI2_Byte &H2E
  loc_740F5C: PopTmpLdAd2 var_1D6
  loc_740F5F: FMemLdRf unk_418E79
  loc_740F64: NewIfNullPr clsSecurity
  loc_740F67: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740F6C: FFreeStr var_90 = ""
  loc_740F73: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_740F8A: FLdRfVar var_1D4
  loc_740F8D: LitVar_Missing var_1D0
  loc_740F90: LitVar_Missing var_1B0
  loc_740F93: LitVar_Missing var_190
  loc_740F96: LitVar_Missing var_170
  loc_740F99: LitVar_Missing var_150
  loc_740F9C: LitVar_Missing var_130
  loc_740F9F: LitVar_Missing var_110
  loc_740FA2: LitVar_Missing var_F0
  loc_740FA5: LitVar_Missing var_D0
  loc_740FA8: LitVar_Missing var_B0
  loc_740FAB: LitStr "Control de Existencias de Productos"
  loc_740FAE: FStStrCopy var_90
  loc_740FB1: FLdRfVar var_90
  loc_740FB4: LitI4 &H4A
  loc_740FB9: PopTmpLdAdStr var_8C
  loc_740FBC: LitI2_Byte &H21
  loc_740FBE: PopTmpLdAd2 var_86
  loc_740FC1: ImpAdLdRf MemVar_74C7D0
  loc_740FC4: NewIfNullPr clsMsg
  loc_740FC7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740FCC: FLdZeroAd var_1D4
  loc_740FCF: PopTmpLdAdStr
  loc_740FD3: LitI2_Byte &H2F
  loc_740FD5: PopTmpLdAd2 var_1D6
  loc_740FD8: FMemLdRf unk_418E79
  loc_740FDD: NewIfNullPr clsSecurity
  loc_740FE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_740FE5: FFreeStr var_90 = ""
  loc_740FEC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741003: LitVarI2 var_B0, 1
  loc_741008: LitI4 4
  loc_74100D: FMemLdR4 arg_8(7512)
  loc_741012: ImpAdCallI2 Mid$(, , )
  loc_741017: FStStr var_394
  loc_74101A: FLdRfVar var_1DC
  loc_74101D: LitVar_Missing var_200
  loc_741020: LitVar_Missing var_1D0
  loc_741023: LitVar_Missing var_1B0
  loc_741026: LitVar_Missing var_190
  loc_741029: LitVar_Missing var_170
  loc_74102C: LitVar_Missing var_150
  loc_74102F: LitVar_Missing var_130
  loc_741032: LitVar_Missing var_110
  loc_741035: LitVar_Missing var_F0
  loc_741038: LitVar_Missing var_D0
  loc_74103B: LitStr "Forzar Cierre Red XXI"
  loc_74103E: FStStrCopy var_1D4
  loc_741041: FLdRfVar var_1D4
  loc_741044: LitI4 &H4B
  loc_741049: PopTmpLdAdStr var_8C
  loc_74104C: LitI2_Byte &H21
  loc_74104E: PopTmpLdAd2 var_86
  loc_741051: ImpAdLdRf MemVar_74C7D0
  loc_741054: NewIfNullPr clsMsg
  loc_741057: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74105C: FLdRfVar var_348
  loc_74105F: LitVar_Missing var_344
  loc_741062: LitVar_Missing var_324
  loc_741065: LitVar_Missing var_304
  loc_741068: LitVar_Missing var_2E4
  loc_74106B: LitVar_Missing var_2C4
  loc_74106E: LitVar_Missing var_2A4
  loc_741071: LitVar_Missing var_284
  loc_741074: LitVar_Missing var_264
  loc_741077: LitVar_Missing var_244
  loc_74107A: LitVar_Missing var_224
  loc_74107D: LitStr "Forzar Cierre de Consignado"
  loc_741080: FStStrCopy var_1E0
  loc_741083: FLdRfVar var_1E0
  loc_741086: LitI4 &H4B
  loc_74108B: PopTmpLdAdStr var_204
  loc_74108E: LitI2_Byte &H21
  loc_741090: PopTmpLdAd2 var_1D6
  loc_741093: ImpAdLdRf MemVar_74C7D0
  loc_741096: NewIfNullPr clsMsg
  loc_741099: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74109E: FLdZeroAd var_348
  loc_7410A1: CVarStr var_378
  loc_7410A4: FLdZeroAd var_1DC
  loc_7410A7: CVarStr var_368
  loc_7410AA: FLdZeroAd var_394
  loc_7410AD: FStStrNoPop var_90
  loc_7410B0: LitStr "1"
  loc_7410B3: EqStr
  loc_7410B5: CVarBoolI2 var_358
  loc_7410B9: FLdRfVar var_388
  loc_7410BC: ImpAdCallFPR4  = IIf(, , )
  loc_7410C1: FLdRfVar var_388
  loc_7410C4: CStrVarTmp
  loc_7410C5: PopTmpLdAdStr
  loc_7410C9: LitI2_Byte &H30
  loc_7410CB: PopTmpLdAd2 var_38A
  loc_7410CE: FMemLdRf unk_418E79
  loc_7410D3: NewIfNullPr clsSecurity
  loc_7410D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7410DB: FFreeStr var_90 = "": var_1D4 = "": var_1E0 = "": var_390 = ""
  loc_7410E8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_358 = "": var_368 = "": var_378 = ""
  loc_74111D: FLdRfVar var_1D4
  loc_741120: LitVar_Missing var_1D0
  loc_741123: LitVar_Missing var_1B0
  loc_741126: LitVar_Missing var_190
  loc_741129: LitVar_Missing var_170
  loc_74112C: LitVar_Missing var_150
  loc_74112F: LitVar_Missing var_130
  loc_741132: LitVar_Missing var_110
  loc_741135: LitVar_Missing var_F0
  loc_741138: LitVar_Missing var_D0
  loc_74113B: LitVar_Missing var_B0
  loc_74113E: LitStr "Despachos Anteriores"
  loc_741141: FStStrCopy var_90
  loc_741144: FLdRfVar var_90
  loc_741147: LitI4 &H4C
  loc_74114C: PopTmpLdAdStr var_8C
  loc_74114F: LitI2_Byte &H21
  loc_741151: PopTmpLdAd2 var_86
  loc_741154: ImpAdLdRf MemVar_74C7D0
  loc_741157: NewIfNullPr clsMsg
  loc_74115A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74115F: FLdZeroAd var_1D4
  loc_741162: PopTmpLdAdStr
  loc_741166: LitI2_Byte &H31
  loc_741168: PopTmpLdAd2 var_1D6
  loc_74116B: FMemLdRf unk_418E79
  loc_741170: NewIfNullPr clsSecurity
  loc_741173: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741178: FFreeStr var_90 = ""
  loc_74117F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741196: FLdRfVar var_1D4
  loc_741199: LitVar_Missing var_1D0
  loc_74119C: LitVar_Missing var_1B0
  loc_74119F: LitVar_Missing var_190
  loc_7411A2: LitVar_Missing var_170
  loc_7411A5: LitVar_Missing var_150
  loc_7411A8: LitVar_Missing var_130
  loc_7411AB: LitVar_Missing var_110
  loc_7411AE: LitVar_Missing var_F0
  loc_7411B1: LitVar_Missing var_D0
  loc_7411B4: LitVar_Missing var_B0
  loc_7411B7: LitStr "Configuración Ticket"
  loc_7411BA: FStStrCopy var_90
  loc_7411BD: FLdRfVar var_90
  loc_7411C0: LitI4 &H4D
  loc_7411C5: PopTmpLdAdStr var_8C
  loc_7411C8: LitI2_Byte &H21
  loc_7411CA: PopTmpLdAd2 var_86
  loc_7411CD: ImpAdLdRf MemVar_74C7D0
  loc_7411D0: NewIfNullPr clsMsg
  loc_7411D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7411D8: FLdZeroAd var_1D4
  loc_7411DB: PopTmpLdAdStr
  loc_7411DF: LitI2_Byte &H32
  loc_7411E1: PopTmpLdAd2 var_1D6
  loc_7411E4: FMemLdRf unk_418E79
  loc_7411E9: NewIfNullPr clsSecurity
  loc_7411EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7411F1: FFreeStr var_90 = ""
  loc_7411F8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74120F: FLdRfVar var_1D4
  loc_741212: LitVar_Missing var_1D0
  loc_741215: LitVar_Missing var_1B0
  loc_741218: LitVar_Missing var_190
  loc_74121B: LitVar_Missing var_170
  loc_74121E: LitVar_Missing var_150
  loc_741221: LitVar_Missing var_130
  loc_741224: LitVar_Missing var_110
  loc_741227: LitVar_Missing var_F0
  loc_74122A: LitVar_Missing var_D0
  loc_74122D: LitVar_Missing var_B0
  loc_741230: LitStr "Tiempo de Espera"
  loc_741233: FStStrCopy var_90
  loc_741236: FLdRfVar var_90
  loc_741239: LitI4 &H4E
  loc_74123E: PopTmpLdAdStr var_8C
  loc_741241: LitI2_Byte &H21
  loc_741243: PopTmpLdAd2 var_86
  loc_741246: ImpAdLdRf MemVar_74C7D0
  loc_741249: NewIfNullPr clsMsg
  loc_74124C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741251: FLdZeroAd var_1D4
  loc_741254: PopTmpLdAdStr
  loc_741258: LitI2_Byte &H33
  loc_74125A: PopTmpLdAd2 var_1D6
  loc_74125D: FMemLdRf unk_418E79
  loc_741262: NewIfNullPr clsSecurity
  loc_741265: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74126A: FFreeStr var_90 = ""
  loc_741271: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741288: FLdRfVar var_1D4
  loc_74128B: LitVar_Missing var_1D0
  loc_74128E: LitVar_Missing var_1B0
  loc_741291: LitVar_Missing var_190
  loc_741294: LitVar_Missing var_170
  loc_741297: LitVar_Missing var_150
  loc_74129A: LitVar_Missing var_130
  loc_74129D: LitVar_Missing var_110
  loc_7412A0: LitVar_Missing var_F0
  loc_7412A3: LitVar_Missing var_D0
  loc_7412A6: LitVar_Missing var_B0
  loc_7412A9: LitStr "Impresión de Configuración"
  loc_7412AC: FStStrCopy var_90
  loc_7412AF: FLdRfVar var_90
  loc_7412B2: LitI4 &H4F
  loc_7412B7: PopTmpLdAdStr var_8C
  loc_7412BA: LitI2_Byte &H21
  loc_7412BC: PopTmpLdAd2 var_86
  loc_7412BF: ImpAdLdRf MemVar_74C7D0
  loc_7412C2: NewIfNullPr clsMsg
  loc_7412C5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7412CA: FLdZeroAd var_1D4
  loc_7412CD: PopTmpLdAdStr
  loc_7412D1: LitI2_Byte &H34
  loc_7412D3: PopTmpLdAd2 var_1D6
  loc_7412D6: FMemLdRf unk_418E79
  loc_7412DB: NewIfNullPr clsSecurity
  loc_7412DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7412E3: FFreeStr var_90 = ""
  loc_7412EA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741301: FLdRfVar var_1D4
  loc_741304: LitVar_Missing var_1D0
  loc_741307: LitVar_Missing var_1B0
  loc_74130A: LitVar_Missing var_190
  loc_74130D: LitVar_Missing var_170
  loc_741310: LitVar_Missing var_150
  loc_741313: LitVar_Missing var_130
  loc_741316: LitVar_Missing var_110
  loc_741319: LitVar_Missing var_F0
  loc_74131C: LitVar_Missing var_D0
  loc_74131F: LitVar_Missing var_B0
  loc_741322: LitStr "Montos de Ventas (Oper. Man.)"
  loc_741325: FStStrCopy var_90
  loc_741328: FLdRfVar var_90
  loc_74132B: LitI4 &H50
  loc_741330: PopTmpLdAdStr var_8C
  loc_741333: LitI2_Byte &H21
  loc_741335: PopTmpLdAd2 var_86
  loc_741338: ImpAdLdRf MemVar_74C7D0
  loc_74133B: NewIfNullPr clsMsg
  loc_74133E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741343: FLdZeroAd var_1D4
  loc_741346: PopTmpLdAdStr
  loc_74134A: LitI2_Byte &H35
  loc_74134C: PopTmpLdAd2 var_1D6
  loc_74134F: FMemLdRf unk_418E79
  loc_741354: NewIfNullPr clsSecurity
  loc_741357: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74135C: FFreeStr var_90 = ""
  loc_741363: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74137A: FLdRfVar var_1D4
  loc_74137D: LitVar_Missing var_1D0
  loc_741380: LitVar_Missing var_1B0
  loc_741383: LitVar_Missing var_190
  loc_741386: LitVar_Missing var_170
  loc_741389: LitVar_Missing var_150
  loc_74138C: LitVar_Missing var_130
  loc_74138F: LitVar_Missing var_110
  loc_741392: LitVar_Missing var_F0
  loc_741395: LitVar_Missing var_D0
  loc_741398: LitVar_Missing var_B0
  loc_74139B: LitStr "Reporte Camión Cisterna"
  loc_74139E: FStStrCopy var_90
  loc_7413A1: FLdRfVar var_90
  loc_7413A4: LitI4 &H51
  loc_7413A9: PopTmpLdAdStr var_8C
  loc_7413AC: LitI2_Byte &H21
  loc_7413AE: PopTmpLdAd2 var_86
  loc_7413B1: ImpAdLdRf MemVar_74C7D0
  loc_7413B4: NewIfNullPr clsMsg
  loc_7413B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7413BC: FLdZeroAd var_1D4
  loc_7413BF: PopTmpLdAdStr
  loc_7413C3: LitI2_Byte &H36
  loc_7413C5: PopTmpLdAd2 var_1D6
  loc_7413C8: FMemLdRf unk_418E79
  loc_7413CD: NewIfNullPr clsSecurity
  loc_7413D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7413D5: FFreeStr var_90 = ""
  loc_7413DC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7413F3: FLdRfVar var_1D4
  loc_7413F6: LitVar_Missing var_1D0
  loc_7413F9: LitVar_Missing var_1B0
  loc_7413FC: LitVar_Missing var_190
  loc_7413FF: LitVar_Missing var_170
  loc_741402: LitVar_Missing var_150
  loc_741405: LitVar_Missing var_130
  loc_741408: LitVar_Missing var_110
  loc_74140B: LitVar_Missing var_F0
  loc_74140E: LitVar_Missing var_D0
  loc_741411: LitVar_Missing var_B0
  loc_741414: LitStr "Impresión de Tickets"
  loc_741417: FStStrCopy var_90
  loc_74141A: FLdRfVar var_90
  loc_74141D: LitI4 &H52
  loc_741422: PopTmpLdAdStr var_8C
  loc_741425: LitI2_Byte &H21
  loc_741427: PopTmpLdAd2 var_86
  loc_74142A: ImpAdLdRf MemVar_74C7D0
  loc_74142D: NewIfNullPr clsMsg
  loc_741430: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741435: FLdZeroAd var_1D4
  loc_741438: PopTmpLdAdStr
  loc_74143C: LitI2_Byte &H37
  loc_74143E: PopTmpLdAd2 var_1D6
  loc_741441: FMemLdRf unk_418E79
  loc_741446: NewIfNullPr clsSecurity
  loc_741449: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74144E: FFreeStr var_90 = ""
  loc_741455: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74146C: FLdRfVar var_1D4
  loc_74146F: LitVar_Missing var_1D0
  loc_741472: LitVar_Missing var_1B0
  loc_741475: LitVar_Missing var_190
  loc_741478: LitVar_Missing var_170
  loc_74147B: LitVar_Missing var_150
  loc_74147E: LitVar_Missing var_130
  loc_741481: LitVar_Missing var_110
  loc_741484: LitVar_Missing var_F0
  loc_741487: LitVar_Missing var_D0
  loc_74148A: LitVar_Missing var_B0
  loc_74148D: LitStr "Reimpresión de Tickets"
  loc_741490: FStStrCopy var_90
  loc_741493: FLdRfVar var_90
  loc_741496: LitI4 &H53
  loc_74149B: PopTmpLdAdStr var_8C
  loc_74149E: LitI2_Byte &H21
  loc_7414A0: PopTmpLdAd2 var_86
  loc_7414A3: ImpAdLdRf MemVar_74C7D0
  loc_7414A6: NewIfNullPr clsMsg
  loc_7414A9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7414AE: FLdZeroAd var_1D4
  loc_7414B1: PopTmpLdAdStr
  loc_7414B5: LitI2_Byte &H38
  loc_7414B7: PopTmpLdAd2 var_1D6
  loc_7414BA: FMemLdRf unk_418E79
  loc_7414BF: NewIfNullPr clsSecurity
  loc_7414C2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7414C7: FFreeStr var_90 = ""
  loc_7414CE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7414E5: FLdRfVar var_1D4
  loc_7414E8: LitVar_Missing var_1D0
  loc_7414EB: LitVar_Missing var_1B0
  loc_7414EE: LitVar_Missing var_190
  loc_7414F1: LitVar_Missing var_170
  loc_7414F4: LitVar_Missing var_150
  loc_7414F7: LitVar_Missing var_130
  loc_7414FA: LitVar_Missing var_110
  loc_7414FD: LitVar_Missing var_F0
  loc_741500: LitVar_Missing var_D0
  loc_741503: LitVar_Missing var_B0
  loc_741506: LitStr "Programación (Eventos)"
  loc_741509: FStStrCopy var_90
  loc_74150C: FLdRfVar var_90
  loc_74150F: LitI4 &H54
  loc_741514: PopTmpLdAdStr var_8C
  loc_741517: LitI2_Byte &H21
  loc_741519: PopTmpLdAd2 var_86
  loc_74151C: ImpAdLdRf MemVar_74C7D0
  loc_74151F: NewIfNullPr clsMsg
  loc_741522: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741527: FLdZeroAd var_1D4
  loc_74152A: PopTmpLdAdStr
  loc_74152E: LitI2_Byte &H39
  loc_741530: PopTmpLdAd2 var_1D6
  loc_741533: FMemLdRf unk_418E79
  loc_741538: NewIfNullPr clsSecurity
  loc_74153B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741540: FFreeStr var_90 = ""
  loc_741547: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74155E: FLdRfVar var_1D4
  loc_741561: LitVar_Missing var_1D0
  loc_741564: LitVar_Missing var_1B0
  loc_741567: LitVar_Missing var_190
  loc_74156A: LitVar_Missing var_170
  loc_74156D: LitVar_Missing var_150
  loc_741570: LitVar_Missing var_130
  loc_741573: LitVar_Missing var_110
  loc_741576: LitVar_Missing var_F0
  loc_741579: LitVar_Missing var_D0
  loc_74157C: LitVar_Missing var_B0
  loc_74157F: LitStr "Alarmas (Eventos)"
  loc_741582: FStStrCopy var_90
  loc_741585: FLdRfVar var_90
  loc_741588: LitI4 &H55
  loc_74158D: PopTmpLdAdStr var_8C
  loc_741590: LitI2_Byte &H21
  loc_741592: PopTmpLdAd2 var_86
  loc_741595: ImpAdLdRf MemVar_74C7D0
  loc_741598: NewIfNullPr clsMsg
  loc_74159B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7415A0: FLdZeroAd var_1D4
  loc_7415A3: PopTmpLdAdStr
  loc_7415A7: LitI2_Byte &H3A
  loc_7415A9: PopTmpLdAd2 var_1D6
  loc_7415AC: FMemLdRf unk_418E79
  loc_7415B1: NewIfNullPr clsSecurity
  loc_7415B4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7415B9: FFreeStr var_90 = ""
  loc_7415C0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7415D7: FLdRfVar var_1D4
  loc_7415DA: LitVar_Missing var_1D0
  loc_7415DD: LitVar_Missing var_1B0
  loc_7415E0: LitVar_Missing var_190
  loc_7415E3: LitVar_Missing var_170
  loc_7415E6: LitVar_Missing var_150
  loc_7415E9: LitVar_Missing var_130
  loc_7415EC: LitVar_Missing var_110
  loc_7415EF: LitVar_Missing var_F0
  loc_7415F2: LitVar_Missing var_D0
  loc_7415F5: LitVar_Missing var_B0
  loc_7415F8: LitStr "Cambiar Número Máximo de Tickets"
  loc_7415FB: FStStrCopy var_90
  loc_7415FE: FLdRfVar var_90
  loc_741601: LitI4 &H56
  loc_741606: PopTmpLdAdStr var_8C
  loc_741609: LitI2_Byte &H21
  loc_74160B: PopTmpLdAd2 var_86
  loc_74160E: ImpAdLdRf MemVar_74C7D0
  loc_741611: NewIfNullPr clsMsg
  loc_741614: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741619: FLdZeroAd var_1D4
  loc_74161C: PopTmpLdAdStr
  loc_741620: LitI2_Byte &H3B
  loc_741622: PopTmpLdAd2 var_1D6
  loc_741625: FMemLdRf unk_418E79
  loc_74162A: NewIfNullPr clsSecurity
  loc_74162D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741632: FFreeStr var_90 = ""
  loc_741639: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741650: FLdRfVar var_1D4
  loc_741653: LitVar_Missing var_1D0
  loc_741656: LitVar_Missing var_1B0
  loc_741659: LitVar_Missing var_190
  loc_74165C: LitVar_Missing var_170
  loc_74165F: LitVar_Missing var_150
  loc_741662: LitVar_Missing var_130
  loc_741665: LitVar_Missing var_110
  loc_741668: LitVar_Missing var_F0
  loc_74166B: LitVar_Missing var_D0
  loc_74166E: LitVar_Missing var_B0
  loc_741671: LitStr "Debito Bancario"
  loc_741674: FStStrCopy var_90
  loc_741677: FLdRfVar var_90
  loc_74167A: LitI4 &H57
  loc_74167F: PopTmpLdAdStr var_8C
  loc_741682: LitI2_Byte &H21
  loc_741684: PopTmpLdAd2 var_86
  loc_741687: ImpAdLdRf MemVar_74C7D0
  loc_74168A: NewIfNullPr clsMsg
  loc_74168D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741692: FLdZeroAd var_1D4
  loc_741695: PopTmpLdAdStr
  loc_741699: LitI2_Byte &H3C
  loc_74169B: PopTmpLdAd2 var_1D6
  loc_74169E: FMemLdRf unk_418E79
  loc_7416A3: NewIfNullPr clsSecurity
  loc_7416A6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7416AB: FFreeStr var_90 = ""
  loc_7416B2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7416C9: FLdRfVar var_1D4
  loc_7416CC: LitVar_Missing var_1D0
  loc_7416CF: LitVar_Missing var_1B0
  loc_7416D2: LitVar_Missing var_190
  loc_7416D5: LitVar_Missing var_170
  loc_7416D8: LitVar_Missing var_150
  loc_7416DB: LitVar_Missing var_130
  loc_7416DE: LitVar_Missing var_110
  loc_7416E1: LitVar_Missing var_F0
  loc_7416E4: LitVar_Missing var_D0
  loc_7416E7: LitVar_Missing var_B0
  loc_7416EA: LitStr "Control de Playeros"
  loc_7416ED: FStStrCopy var_90
  loc_7416F0: FLdRfVar var_90
  loc_7416F3: LitI4 &H58
  loc_7416F8: PopTmpLdAdStr var_8C
  loc_7416FB: LitI2_Byte &H21
  loc_7416FD: PopTmpLdAd2 var_86
  loc_741700: ImpAdLdRf MemVar_74C7D0
  loc_741703: NewIfNullPr clsMsg
  loc_741706: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74170B: FLdZeroAd var_1D4
  loc_74170E: PopTmpLdAdStr
  loc_741712: LitI2_Byte &H3D
  loc_741714: PopTmpLdAd2 var_1D6
  loc_741717: FMemLdRf unk_418E79
  loc_74171C: NewIfNullPr clsSecurity
  loc_74171F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741724: FFreeStr var_90 = ""
  loc_74172B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741742: FLdRfVar var_1D4
  loc_741745: LitVar_Missing var_1D0
  loc_741748: LitVar_Missing var_1B0
  loc_74174B: LitVar_Missing var_190
  loc_74174E: LitVar_Missing var_170
  loc_741751: LitVar_Missing var_150
  loc_741754: LitVar_Missing var_130
  loc_741757: LitVar_Missing var_110
  loc_74175A: LitVar_Missing var_F0
  loc_74175D: LitVar_Missing var_D0
  loc_741760: LitVar_Missing var_B0
  loc_741763: LitStr "Listado CTF"
  loc_741766: FStStrCopy var_90
  loc_741769: FLdRfVar var_90
  loc_74176C: LitI4 &H59
  loc_741771: PopTmpLdAdStr var_8C
  loc_741774: LitI2_Byte &H21
  loc_741776: PopTmpLdAd2 var_86
  loc_741779: ImpAdLdRf MemVar_74C7D0
  loc_74177C: NewIfNullPr clsMsg
  loc_74177F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741784: FLdZeroAd var_1D4
  loc_741787: PopTmpLdAdStr
  loc_74178B: LitI2_Byte &H3E
  loc_74178D: PopTmpLdAd2 var_1D6
  loc_741790: FMemLdRf unk_418E79
  loc_741795: NewIfNullPr clsSecurity
  loc_741798: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74179D: FFreeStr var_90 = ""
  loc_7417A4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7417BB: FLdRfVar var_1D4
  loc_7417BE: LitVar_Missing var_1D0
  loc_7417C1: LitVar_Missing var_1B0
  loc_7417C4: LitVar_Missing var_190
  loc_7417C7: LitVar_Missing var_170
  loc_7417CA: LitVar_Missing var_150
  loc_7417CD: LitVar_Missing var_130
  loc_7417D0: LitVar_Missing var_110
  loc_7417D3: LitVar_Missing var_F0
  loc_7417D6: LitVar_Missing var_D0
  loc_7417D9: LitVar_Missing var_B0
  loc_7417DC: LitStr "Prog. Precios Nivel 1"
  loc_7417DF: FStStrCopy var_90
  loc_7417E2: FLdRfVar var_90
  loc_7417E5: LitI4 &H5A
  loc_7417EA: PopTmpLdAdStr var_8C
  loc_7417ED: LitI2_Byte &H21
  loc_7417EF: PopTmpLdAd2 var_86
  loc_7417F2: ImpAdLdRf MemVar_74C7D0
  loc_7417F5: NewIfNullPr clsMsg
  loc_7417F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7417FD: FLdZeroAd var_1D4
  loc_741800: PopTmpLdAdStr
  loc_741804: LitI2_Byte &H3F
  loc_741806: PopTmpLdAd2 var_1D6
  loc_741809: FMemLdRf unk_418E79
  loc_74180E: NewIfNullPr clsSecurity
  loc_741811: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741816: FFreeStr var_90 = ""
  loc_74181D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741834: FLdRfVar var_1D4
  loc_741837: LitVar_Missing var_1D0
  loc_74183A: LitVar_Missing var_1B0
  loc_74183D: LitVar_Missing var_190
  loc_741840: LitVar_Missing var_170
  loc_741843: LitVar_Missing var_150
  loc_741846: LitVar_Missing var_130
  loc_741849: LitVar_Missing var_110
  loc_74184C: LitVar_Missing var_F0
  loc_74184F: LitVar_Missing var_D0
  loc_741852: LitVar_Missing var_B0
  loc_741855: LitStr "Prog. Precios Nivel 2"
  loc_741858: FStStrCopy var_90
  loc_74185B: FLdRfVar var_90
  loc_74185E: LitI4 &H5B
  loc_741863: PopTmpLdAdStr var_8C
  loc_741866: LitI2_Byte &H21
  loc_741868: PopTmpLdAd2 var_86
  loc_74186B: ImpAdLdRf MemVar_74C7D0
  loc_74186E: NewIfNullPr clsMsg
  loc_741871: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741876: FLdZeroAd var_1D4
  loc_741879: PopTmpLdAdStr
  loc_74187D: LitI2_Byte &H40
  loc_74187F: PopTmpLdAd2 var_1D6
  loc_741882: FMemLdRf unk_418E79
  loc_741887: NewIfNullPr clsSecurity
  loc_74188A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74188F: FFreeStr var_90 = ""
  loc_741896: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7418AD: FLdRfVar var_1D4
  loc_7418B0: LitVar_Missing var_1D0
  loc_7418B3: LitVar_Missing var_1B0
  loc_7418B6: LitVar_Missing var_190
  loc_7418B9: LitVar_Missing var_170
  loc_7418BC: LitVar_Missing var_150
  loc_7418BF: LitVar_Missing var_130
  loc_7418C2: LitVar_Missing var_110
  loc_7418C5: LitVar_Missing var_F0
  loc_7418C8: LitVar_Missing var_D0
  loc_7418CB: LitVar_Missing var_B0
  loc_7418CE: LitStr "Prog. Precios Nivel 3"
  loc_7418D1: FStStrCopy var_90
  loc_7418D4: FLdRfVar var_90
  loc_7418D7: LitI4 &H5C
  loc_7418DC: PopTmpLdAdStr var_8C
  loc_7418DF: LitI2_Byte &H21
  loc_7418E1: PopTmpLdAd2 var_86
  loc_7418E4: ImpAdLdRf MemVar_74C7D0
  loc_7418E7: NewIfNullPr clsMsg
  loc_7418EA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7418EF: FLdZeroAd var_1D4
  loc_7418F2: PopTmpLdAdStr
  loc_7418F6: LitI2_Byte &H41
  loc_7418F8: PopTmpLdAd2 var_1D6
  loc_7418FB: FMemLdRf unk_418E79
  loc_741900: NewIfNullPr clsSecurity
  loc_741903: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741908: FFreeStr var_90 = ""
  loc_74190F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741926: FLdRfVar var_1D4
  loc_741929: LitVar_Missing var_1D0
  loc_74192C: LitVar_Missing var_1B0
  loc_74192F: LitVar_Missing var_190
  loc_741932: LitVar_Missing var_170
  loc_741935: LitVar_Missing var_150
  loc_741938: LitVar_Missing var_130
  loc_74193B: LitVar_Missing var_110
  loc_74193E: LitVar_Missing var_F0
  loc_741941: LitVar_Missing var_D0
  loc_741944: LitVar_Missing var_B0
  loc_741947: LitStr "Prog. Precios Nivel 4"
  loc_74194A: FStStrCopy var_90
  loc_74194D: FLdRfVar var_90
  loc_741950: LitI4 &H5D
  loc_741955: PopTmpLdAdStr var_8C
  loc_741958: LitI2_Byte &H21
  loc_74195A: PopTmpLdAd2 var_86
  loc_74195D: ImpAdLdRf MemVar_74C7D0
  loc_741960: NewIfNullPr clsMsg
  loc_741963: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741968: FLdZeroAd var_1D4
  loc_74196B: PopTmpLdAdStr
  loc_74196F: LitI2_Byte &H42
  loc_741971: PopTmpLdAd2 var_1D6
  loc_741974: FMemLdRf unk_418E79
  loc_741979: NewIfNullPr clsSecurity
  loc_74197C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741981: FFreeStr var_90 = ""
  loc_741988: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74199F: FLdRfVar var_1D4
  loc_7419A2: LitVar_Missing var_1D0
  loc_7419A5: LitVar_Missing var_1B0
  loc_7419A8: LitVar_Missing var_190
  loc_7419AB: LitVar_Missing var_170
  loc_7419AE: LitVar_Missing var_150
  loc_7419B1: LitVar_Missing var_130
  loc_7419B4: LitVar_Missing var_110
  loc_7419B7: LitVar_Missing var_F0
  loc_7419BA: LitVar_Missing var_D0
  loc_7419BD: LitVar_Missing var_B0
  loc_7419C0: LitStr "Prog. Precios Nivel 5"
  loc_7419C3: FStStrCopy var_90
  loc_7419C6: FLdRfVar var_90
  loc_7419C9: LitI4 &H5E
  loc_7419CE: PopTmpLdAdStr var_8C
  loc_7419D1: LitI2_Byte &H21
  loc_7419D3: PopTmpLdAd2 var_86
  loc_7419D6: ImpAdLdRf MemVar_74C7D0
  loc_7419D9: NewIfNullPr clsMsg
  loc_7419DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7419E1: FLdZeroAd var_1D4
  loc_7419E4: PopTmpLdAdStr
  loc_7419E8: LitI2_Byte &H43
  loc_7419EA: PopTmpLdAd2 var_1D6
  loc_7419ED: FMemLdRf unk_418E79
  loc_7419F2: NewIfNullPr clsSecurity
  loc_7419F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7419FA: FFreeStr var_90 = ""
  loc_741A01: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741A18: FLdRfVar var_1D4
  loc_741A1B: LitVar_Missing var_1D0
  loc_741A1E: LitVar_Missing var_1B0
  loc_741A21: LitVar_Missing var_190
  loc_741A24: LitVar_Missing var_170
  loc_741A27: LitVar_Missing var_150
  loc_741A2A: LitVar_Missing var_130
  loc_741A2D: LitVar_Missing var_110
  loc_741A30: LitVar_Missing var_F0
  loc_741A33: LitVar_Missing var_D0
  loc_741A36: LitVar_Missing var_B0
  loc_741A39: LitStr "Totales CTF"
  loc_741A3C: FStStrCopy var_90
  loc_741A3F: FLdRfVar var_90
  loc_741A42: LitI4 &H5F
  loc_741A47: PopTmpLdAdStr var_8C
  loc_741A4A: LitI2_Byte &H21
  loc_741A4C: PopTmpLdAd2 var_86
  loc_741A4F: ImpAdLdRf MemVar_74C7D0
  loc_741A52: NewIfNullPr clsMsg
  loc_741A55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741A5A: FLdZeroAd var_1D4
  loc_741A5D: PopTmpLdAdStr
  loc_741A61: LitI2_Byte &H44
  loc_741A63: PopTmpLdAd2 var_1D6
  loc_741A66: FMemLdRf unk_418E79
  loc_741A6B: NewIfNullPr clsSecurity
  loc_741A6E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741A73: FFreeStr var_90 = ""
  loc_741A7A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741A91: FLdRfVar var_1D4
  loc_741A94: LitVar_Missing var_1D0
  loc_741A97: LitVar_Missing var_1B0
  loc_741A9A: LitVar_Missing var_190
  loc_741A9D: LitVar_Missing var_170
  loc_741AA0: LitVar_Missing var_150
  loc_741AA3: LitVar_Missing var_130
  loc_741AA6: LitVar_Missing var_110
  loc_741AA9: LitVar_Missing var_F0
  loc_741AAC: LitVar_Missing var_D0
  loc_741AAF: LitVar_Missing var_B0
  loc_741AB2: LitStr "Estadísticas CTF"
  loc_741AB5: FStStrCopy var_90
  loc_741AB8: FLdRfVar var_90
  loc_741ABB: LitI4 &H60
  loc_741AC0: PopTmpLdAdStr var_8C
  loc_741AC3: LitI2_Byte &H21
  loc_741AC5: PopTmpLdAd2 var_86
  loc_741AC8: ImpAdLdRf MemVar_74C7D0
  loc_741ACB: NewIfNullPr clsMsg
  loc_741ACE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741AD3: FLdZeroAd var_1D4
  loc_741AD6: PopTmpLdAdStr
  loc_741ADA: LitI2_Byte &H45
  loc_741ADC: PopTmpLdAd2 var_1D6
  loc_741ADF: FMemLdRf unk_418E79
  loc_741AE4: NewIfNullPr clsSecurity
  loc_741AE7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741AEC: FFreeStr var_90 = ""
  loc_741AF3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741B0A: FLdRfVar var_1D4
  loc_741B0D: LitVar_Missing var_1D0
  loc_741B10: LitVar_Missing var_1B0
  loc_741B13: LitVar_Missing var_190
  loc_741B16: LitVar_Missing var_170
  loc_741B19: LitVar_Missing var_150
  loc_741B1C: LitVar_Missing var_130
  loc_741B1F: LitVar_Missing var_110
  loc_741B22: LitVar_Missing var_F0
  loc_741B25: LitVar_Missing var_D0
  loc_741B28: LitVar_Missing var_B0
  loc_741B2B: LitStr "Secciones Reporte"
  loc_741B2E: FStStrCopy var_90
  loc_741B31: FLdRfVar var_90
  loc_741B34: LitI4 &H61
  loc_741B39: PopTmpLdAdStr var_8C
  loc_741B3C: LitI2_Byte &H21
  loc_741B3E: PopTmpLdAd2 var_86
  loc_741B41: ImpAdLdRf MemVar_74C7D0
  loc_741B44: NewIfNullPr clsMsg
  loc_741B47: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741B4C: FLdZeroAd var_1D4
  loc_741B4F: PopTmpLdAdStr
  loc_741B53: LitI2_Byte &H46
  loc_741B55: PopTmpLdAd2 var_1D6
  loc_741B58: FMemLdRf unk_418E79
  loc_741B5D: NewIfNullPr clsSecurity
  loc_741B60: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741B65: FFreeStr var_90 = ""
  loc_741B6C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741B83: FLdRfVar var_1D4
  loc_741B86: LitVar_Missing var_1D0
  loc_741B89: LitVar_Missing var_1B0
  loc_741B8C: LitVar_Missing var_190
  loc_741B8F: LitVar_Missing var_170
  loc_741B92: LitVar_Missing var_150
  loc_741B95: LitVar_Missing var_130
  loc_741B98: LitVar_Missing var_110
  loc_741B9B: LitVar_Missing var_F0
  loc_741B9E: LitVar_Missing var_D0
  loc_741BA1: LitVar_Missing var_B0
  loc_741BA4: LitStr "Datos de Comunicación"
  loc_741BA7: FStStrCopy var_90
  loc_741BAA: FLdRfVar var_90
  loc_741BAD: LitI4 &H62
  loc_741BB2: PopTmpLdAdStr var_8C
  loc_741BB5: LitI2_Byte &H21
  loc_741BB7: PopTmpLdAd2 var_86
  loc_741BBA: ImpAdLdRf MemVar_74C7D0
  loc_741BBD: NewIfNullPr clsMsg
  loc_741BC0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741BC5: FLdZeroAd var_1D4
  loc_741BC8: PopTmpLdAdStr
  loc_741BCC: LitI2_Byte &H47
  loc_741BCE: PopTmpLdAd2 var_1D6
  loc_741BD1: FMemLdRf unk_418E79
  loc_741BD6: NewIfNullPr clsSecurity
  loc_741BD9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741BDE: FFreeStr var_90 = ""
  loc_741BE5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741BFC: FLdRfVar var_1D4
  loc_741BFF: LitVar_Missing var_1D0
  loc_741C02: LitVar_Missing var_1B0
  loc_741C05: LitVar_Missing var_190
  loc_741C08: LitVar_Missing var_170
  loc_741C0B: LitVar_Missing var_150
  loc_741C0E: LitVar_Missing var_130
  loc_741C11: LitVar_Missing var_110
  loc_741C14: LitVar_Missing var_F0
  loc_741C17: LitVar_Missing var_D0
  loc_741C1A: LitVar_Missing var_B0
  loc_741C1D: LitStr "Listado de Clientes"
  loc_741C20: FStStrCopy var_90
  loc_741C23: FLdRfVar var_90
  loc_741C26: LitI4 &H63
  loc_741C2B: PopTmpLdAdStr var_8C
  loc_741C2E: LitI2_Byte &H21
  loc_741C30: PopTmpLdAd2 var_86
  loc_741C33: ImpAdLdRf MemVar_74C7D0
  loc_741C36: NewIfNullPr clsMsg
  loc_741C39: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741C3E: FLdZeroAd var_1D4
  loc_741C41: PopTmpLdAdStr
  loc_741C45: LitI2_Byte &H48
  loc_741C47: PopTmpLdAd2 var_1D6
  loc_741C4A: FMemLdRf unk_418E79
  loc_741C4F: NewIfNullPr clsSecurity
  loc_741C52: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741C57: FFreeStr var_90 = ""
  loc_741C5E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741C75: FLdRfVar var_1D4
  loc_741C78: LitVar_Missing var_1D0
  loc_741C7B: LitVar_Missing var_1B0
  loc_741C7E: LitVar_Missing var_190
  loc_741C81: LitVar_Missing var_170
  loc_741C84: LitVar_Missing var_150
  loc_741C87: LitVar_Missing var_130
  loc_741C8A: LitVar_Missing var_110
  loc_741C8D: LitVar_Missing var_F0
  loc_741C90: LitVar_Missing var_D0
  loc_741C93: LitVar_Missing var_B0
  loc_741C96: LitStr "Grupo de Surtidores"
  loc_741C99: FStStrCopy var_90
  loc_741C9C: FLdRfVar var_90
  loc_741C9F: LitI4 &H64
  loc_741CA4: PopTmpLdAdStr var_8C
  loc_741CA7: LitI2_Byte &H21
  loc_741CA9: PopTmpLdAd2 var_86
  loc_741CAC: ImpAdLdRf MemVar_74C7D0
  loc_741CAF: NewIfNullPr clsMsg
  loc_741CB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741CB7: FLdZeroAd var_1D4
  loc_741CBA: PopTmpLdAdStr
  loc_741CBE: LitI2_Byte &H49
  loc_741CC0: PopTmpLdAd2 var_1D6
  loc_741CC3: FMemLdRf unk_418E79
  loc_741CC8: NewIfNullPr clsSecurity
  loc_741CCB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741CD0: FFreeStr var_90 = ""
  loc_741CD7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741CEE: FLdRfVar var_1D4
  loc_741CF1: LitVar_Missing var_1D0
  loc_741CF4: LitVar_Missing var_1B0
  loc_741CF7: LitVar_Missing var_190
  loc_741CFA: LitVar_Missing var_170
  loc_741CFD: LitVar_Missing var_150
  loc_741D00: LitVar_Missing var_130
  loc_741D03: LitVar_Missing var_110
  loc_741D06: LitVar_Missing var_F0
  loc_741D09: LitVar_Missing var_D0
  loc_741D0C: LitVar_Missing var_B0
  loc_741D0F: LitStr "Reporte de Grupo de Surtidores"
  loc_741D12: FStStrCopy var_90
  loc_741D15: FLdRfVar var_90
  loc_741D18: LitI4 &H65
  loc_741D1D: PopTmpLdAdStr var_8C
  loc_741D20: LitI2_Byte &H21
  loc_741D22: PopTmpLdAd2 var_86
  loc_741D25: ImpAdLdRf MemVar_74C7D0
  loc_741D28: NewIfNullPr clsMsg
  loc_741D2B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741D30: FLdZeroAd var_1D4
  loc_741D33: PopTmpLdAdStr
  loc_741D37: LitI2_Byte &H4A
  loc_741D39: PopTmpLdAd2 var_1D6
  loc_741D3C: FMemLdRf unk_418E79
  loc_741D41: NewIfNullPr clsSecurity
  loc_741D44: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741D49: FFreeStr var_90 = ""
  loc_741D50: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741D67: LitVarI2 var_B0, 1
  loc_741D6C: LitI4 4
  loc_741D71: FMemLdR4 arg_8(7512)
  loc_741D76: ImpAdCallI2 Mid$(, , )
  loc_741D7B: FStStr var_394
  loc_741D7E: FLdRfVar var_1DC
  loc_741D81: LitVar_Missing var_200
  loc_741D84: LitVar_Missing var_1D0
  loc_741D87: LitVar_Missing var_1B0
  loc_741D8A: LitVar_Missing var_190
  loc_741D8D: LitVar_Missing var_170
  loc_741D90: LitVar_Missing var_150
  loc_741D93: LitVar_Missing var_130
  loc_741D96: LitVar_Missing var_110
  loc_741D99: LitVar_Missing var_F0
  loc_741D9C: LitVar_Missing var_D0
  loc_741D9F: LitStr "Reporte Mensual de Red XXI"
  loc_741DA2: FStStrCopy var_1D4
  loc_741DA5: FLdRfVar var_1D4
  loc_741DA8: LitI4 &H66
  loc_741DAD: PopTmpLdAdStr var_8C
  loc_741DB0: LitI2_Byte &H21
  loc_741DB2: PopTmpLdAd2 var_86
  loc_741DB5: ImpAdLdRf MemVar_74C7D0
  loc_741DB8: NewIfNullPr clsMsg
  loc_741DBB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741DC0: FLdRfVar var_348
  loc_741DC3: LitVar_Missing var_344
  loc_741DC6: LitVar_Missing var_324
  loc_741DC9: LitVar_Missing var_304
  loc_741DCC: LitVar_Missing var_2E4
  loc_741DCF: LitVar_Missing var_2C4
  loc_741DD2: LitVar_Missing var_2A4
  loc_741DD5: LitVar_Missing var_284
  loc_741DD8: LitVar_Missing var_264
  loc_741DDB: LitVar_Missing var_244
  loc_741DDE: LitVar_Missing var_224
  loc_741DE1: LitStr "Reporte Mensual de Consignado"
  loc_741DE4: FStStrCopy var_1E0
  loc_741DE7: FLdRfVar var_1E0
  loc_741DEA: LitI4 &H66
  loc_741DEF: PopTmpLdAdStr var_204
  loc_741DF2: LitI2_Byte &H21
  loc_741DF4: PopTmpLdAd2 var_1D6
  loc_741DF7: ImpAdLdRf MemVar_74C7D0
  loc_741DFA: NewIfNullPr clsMsg
  loc_741DFD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741E02: FLdZeroAd var_348
  loc_741E05: CVarStr var_378
  loc_741E08: FLdZeroAd var_1DC
  loc_741E0B: CVarStr var_368
  loc_741E0E: FLdZeroAd var_394
  loc_741E11: FStStrNoPop var_90
  loc_741E14: LitStr "1"
  loc_741E17: EqStr
  loc_741E19: CVarBoolI2 var_358
  loc_741E1D: FLdRfVar var_388
  loc_741E20: ImpAdCallFPR4  = IIf(, , )
  loc_741E25: FLdRfVar var_388
  loc_741E28: CStrVarTmp
  loc_741E29: PopTmpLdAdStr
  loc_741E2D: LitI2_Byte &H4B
  loc_741E2F: PopTmpLdAd2 var_38A
  loc_741E32: FMemLdRf unk_418E79
  loc_741E37: NewIfNullPr clsSecurity
  loc_741E3A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741E3F: FFreeStr var_90 = "": var_1D4 = "": var_1E0 = "": var_390 = ""
  loc_741E4C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_358 = "": var_368 = "": var_378 = ""
  loc_741E81: FLdRfVar var_1D4
  loc_741E84: LitVar_Missing var_1D0
  loc_741E87: LitVar_Missing var_1B0
  loc_741E8A: LitVar_Missing var_190
  loc_741E8D: LitVar_Missing var_170
  loc_741E90: LitVar_Missing var_150
  loc_741E93: LitVar_Missing var_130
  loc_741E96: LitVar_Missing var_110
  loc_741E99: LitVar_Missing var_F0
  loc_741E9C: LitVar_Missing var_D0
  loc_741E9F: LitVar_Missing var_B0
  loc_741EA2: LitStr "Reporte de Tickets"
  loc_741EA5: FStStrCopy var_90
  loc_741EA8: FLdRfVar var_90
  loc_741EAB: LitI4 &HD2
  loc_741EB0: PopTmpLdAdStr var_8C
  loc_741EB3: LitI2_Byte &H21
  loc_741EB5: PopTmpLdAd2 var_86
  loc_741EB8: ImpAdLdRf MemVar_74C7D0
  loc_741EBB: NewIfNullPr clsMsg
  loc_741EBE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741EC3: FLdZeroAd var_1D4
  loc_741EC6: PopTmpLdAdStr
  loc_741ECA: LitI2_Byte &H4C
  loc_741ECC: PopTmpLdAd2 var_1D6
  loc_741ECF: FMemLdRf unk_418E79
  loc_741ED4: NewIfNullPr clsSecurity
  loc_741ED7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741EDC: FFreeStr var_90 = ""
  loc_741EE3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741EFA: FLdRfVar var_1D4
  loc_741EFD: LitVar_Missing var_1D0
  loc_741F00: LitVar_Missing var_1B0
  loc_741F03: LitVar_Missing var_190
  loc_741F06: LitVar_Missing var_170
  loc_741F09: LitVar_Missing var_150
  loc_741F0C: LitVar_Missing var_130
  loc_741F0F: LitVar_Missing var_110
  loc_741F12: LitVar_Missing var_F0
  loc_741F15: LitVar_Missing var_D0
  loc_741F18: LitVar_Missing var_B0
  loc_741F1B: LitStr "YPF en Ruta"
  loc_741F1E: FStStrCopy var_90
  loc_741F21: FLdRfVar var_90
  loc_741F24: LitI4 &HD3
  loc_741F29: PopTmpLdAdStr var_8C
  loc_741F2C: LitI2_Byte &H21
  loc_741F2E: PopTmpLdAd2 var_86
  loc_741F31: ImpAdLdRf MemVar_74C7D0
  loc_741F34: NewIfNullPr clsMsg
  loc_741F37: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741F3C: FLdZeroAd var_1D4
  loc_741F3F: PopTmpLdAdStr
  loc_741F43: LitI2_Byte &H4D
  loc_741F45: PopTmpLdAd2 var_1D6
  loc_741F48: FMemLdRf unk_418E79
  loc_741F4D: NewIfNullPr clsSecurity
  loc_741F50: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741F55: FFreeStr var_90 = ""
  loc_741F5C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741F73: FLdRfVar var_1D4
  loc_741F76: LitVar_Missing var_1D0
  loc_741F79: LitVar_Missing var_1B0
  loc_741F7C: LitVar_Missing var_190
  loc_741F7F: LitVar_Missing var_170
  loc_741F82: LitVar_Missing var_150
  loc_741F85: LitVar_Missing var_130
  loc_741F88: LitVar_Missing var_110
  loc_741F8B: LitVar_Missing var_F0
  loc_741F8E: LitVar_Missing var_D0
  loc_741F91: LitVar_Missing var_B0
  loc_741F94: LitStr "Serviclub"
  loc_741F97: FStStrCopy var_90
  loc_741F9A: FLdRfVar var_90
  loc_741F9D: LitI4 &HD4
  loc_741FA2: PopTmpLdAdStr var_8C
  loc_741FA5: LitI2_Byte &H21
  loc_741FA7: PopTmpLdAd2 var_86
  loc_741FAA: ImpAdLdRf MemVar_74C7D0
  loc_741FAD: NewIfNullPr clsMsg
  loc_741FB0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741FB5: FLdZeroAd var_1D4
  loc_741FB8: PopTmpLdAdStr
  loc_741FBC: LitI2_Byte &H4E
  loc_741FBE: PopTmpLdAd2 var_1D6
  loc_741FC1: FMemLdRf unk_418E79
  loc_741FC6: NewIfNullPr clsSecurity
  loc_741FC9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_741FCE: FFreeStr var_90 = ""
  loc_741FD5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_741FEC: FLdRfVar var_1D4
  loc_741FEF: LitVar_Missing var_1D0
  loc_741FF2: LitVar_Missing var_1B0
  loc_741FF5: LitVar_Missing var_190
  loc_741FF8: LitVar_Missing var_170
  loc_741FFB: LitVar_Missing var_150
  loc_741FFE: LitVar_Missing var_130
  loc_742001: LitVar_Missing var_110
  loc_742004: LitVar_Missing var_F0
  loc_742007: LitVar_Missing var_D0
  loc_74200A: LitVar_Missing var_B0
  loc_74200D: LitStr "Administración Remota"
  loc_742010: FStStrCopy var_90
  loc_742013: FLdRfVar var_90
  loc_742016: LitI4 &HD5
  loc_74201B: PopTmpLdAdStr var_8C
  loc_74201E: LitI2_Byte &H21
  loc_742020: PopTmpLdAd2 var_86
  loc_742023: ImpAdLdRf MemVar_74C7D0
  loc_742026: NewIfNullPr clsMsg
  loc_742029: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74202E: FLdZeroAd var_1D4
  loc_742031: PopTmpLdAdStr
  loc_742035: LitI2_Byte &H4F
  loc_742037: PopTmpLdAd2 var_1D6
  loc_74203A: FMemLdRf unk_418E79
  loc_74203F: NewIfNullPr clsSecurity
  loc_742042: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742047: FFreeStr var_90 = ""
  loc_74204E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742065: FLdRfVar var_1D4
  loc_742068: LitVar_Missing var_1D0
  loc_74206B: LitVar_Missing var_1B0
  loc_74206E: LitVar_Missing var_190
  loc_742071: LitVar_Missing var_170
  loc_742074: LitVar_Missing var_150
  loc_742077: LitVar_Missing var_130
  loc_74207A: LitVar_Missing var_110
  loc_74207D: LitVar_Missing var_F0
  loc_742080: LitVar_Missing var_D0
  loc_742083: LitVar_Missing var_B0
  loc_742086: LitStr "Salir al explorer"
  loc_742089: FStStrCopy var_90
  loc_74208C: FLdRfVar var_90
  loc_74208F: LitI4 &HD6
  loc_742094: PopTmpLdAdStr var_8C
  loc_742097: LitI2_Byte &H21
  loc_742099: PopTmpLdAd2 var_86
  loc_74209C: ImpAdLdRf MemVar_74C7D0
  loc_74209F: NewIfNullPr clsMsg
  loc_7420A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7420A7: FLdZeroAd var_1D4
  loc_7420AA: PopTmpLdAdStr
  loc_7420AE: LitI2_Byte &H50
  loc_7420B0: PopTmpLdAd2 var_1D6
  loc_7420B3: FMemLdRf unk_418E79
  loc_7420B8: NewIfNullPr clsSecurity
  loc_7420BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7420C0: FFreeStr var_90 = ""
  loc_7420C7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7420DE: FLdRfVar var_1D4
  loc_7420E1: LitVar_Missing var_1D0
  loc_7420E4: LitVar_Missing var_1B0
  loc_7420E7: LitVar_Missing var_190
  loc_7420EA: LitVar_Missing var_170
  loc_7420ED: LitVar_Missing var_150
  loc_7420F0: LitVar_Missing var_130
  loc_7420F3: LitVar_Missing var_110
  loc_7420F6: LitVar_Missing var_F0
  loc_7420F9: LitVar_Missing var_D0
  loc_7420FC: LitVar_Missing var_B0
  loc_7420FF: LitStr "Cerrar consola"
  loc_742102: FStStrCopy var_90
  loc_742105: FLdRfVar var_90
  loc_742108: LitI4 &HD7
  loc_74210D: PopTmpLdAdStr var_8C
  loc_742110: LitI2_Byte &H21
  loc_742112: PopTmpLdAd2 var_86
  loc_742115: ImpAdLdRf MemVar_74C7D0
  loc_742118: NewIfNullPr clsMsg
  loc_74211B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742120: FLdZeroAd var_1D4
  loc_742123: PopTmpLdAdStr
  loc_742127: LitI2_Byte &H51
  loc_742129: PopTmpLdAd2 var_1D6
  loc_74212C: FMemLdRf unk_418E79
  loc_742131: NewIfNullPr clsSecurity
  loc_742134: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742139: FFreeStr var_90 = ""
  loc_742140: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742157: FLdRfVar var_1D4
  loc_74215A: LitVar_Missing var_1D0
  loc_74215D: LitVar_Missing var_1B0
  loc_742160: LitVar_Missing var_190
  loc_742163: LitVar_Missing var_170
  loc_742166: LitVar_Missing var_150
  loc_742169: LitVar_Missing var_130
  loc_74216C: LitVar_Missing var_110
  loc_74216F: LitVar_Missing var_F0
  loc_742172: LitVar_Missing var_D0
  loc_742175: LitVar_Missing var_B0
  loc_742178: LitStr "Administración de servicios"
  loc_74217B: FStStrCopy var_90
  loc_74217E: FLdRfVar var_90
  loc_742181: LitI4 &HD8
  loc_742186: PopTmpLdAdStr var_8C
  loc_742189: LitI2_Byte &H21
  loc_74218B: PopTmpLdAd2 var_86
  loc_74218E: ImpAdLdRf MemVar_74C7D0
  loc_742191: NewIfNullPr clsMsg
  loc_742194: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742199: FLdZeroAd var_1D4
  loc_74219C: PopTmpLdAdStr
  loc_7421A0: LitI2_Byte &H52
  loc_7421A2: PopTmpLdAd2 var_1D6
  loc_7421A5: FMemLdRf unk_418E79
  loc_7421AA: NewIfNullPr clsSecurity
  loc_7421AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7421B2: FFreeStr var_90 = ""
  loc_7421B9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7421D0: FLdRfVar var_1D4
  loc_7421D3: LitVar_Missing var_1D0
  loc_7421D6: LitVar_Missing var_1B0
  loc_7421D9: LitVar_Missing var_190
  loc_7421DC: LitVar_Missing var_170
  loc_7421DF: LitVar_Missing var_150
  loc_7421E2: LitVar_Missing var_130
  loc_7421E5: LitVar_Missing var_110
  loc_7421E8: LitVar_Missing var_F0
  loc_7421EB: LitVar_Missing var_D0
  loc_7421EE: LitVar_Missing var_B0
  loc_7421F1: LitStr "Reporte de REDXXI por período"
  loc_7421F4: FStStrCopy var_90
  loc_7421F7: FLdRfVar var_90
  loc_7421FA: LitI4 &HD9
  loc_7421FF: PopTmpLdAdStr var_8C
  loc_742202: LitI2_Byte &H21
  loc_742204: PopTmpLdAd2 var_86
  loc_742207: ImpAdLdRf MemVar_74C7D0
  loc_74220A: NewIfNullPr clsMsg
  loc_74220D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742212: FLdZeroAd var_1D4
  loc_742215: PopTmpLdAdStr
  loc_742219: LitI2_Byte &H53
  loc_74221B: PopTmpLdAd2 var_1D6
  loc_74221E: FMemLdRf unk_418E79
  loc_742223: NewIfNullPr clsSecurity
  loc_742226: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74222B: FFreeStr var_90 = ""
  loc_742232: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742249: FLdRfVar var_1D4
  loc_74224C: LitVar_Missing var_1D0
  loc_74224F: LitVar_Missing var_1B0
  loc_742252: LitVar_Missing var_190
  loc_742255: LitVar_Missing var_170
  loc_742258: LitVar_Missing var_150
  loc_74225B: LitVar_Missing var_130
  loc_74225E: LitVar_Missing var_110
  loc_742261: LitVar_Missing var_F0
  loc_742264: LitVar_Missing var_D0
  loc_742267: LitVar_Missing var_B0
  loc_74226A: LitStr "Pruebas de"
  loc_74226D: FStStrCopy var_90
  loc_742270: FLdRfVar var_90
  loc_742273: LitI4 &HDA
  loc_742278: PopTmpLdAdStr var_8C
  loc_74227B: LitI2_Byte &H21
  loc_74227D: PopTmpLdAd2 var_86
  loc_742280: ImpAdLdRf MemVar_74C7D0
  loc_742283: NewIfNullPr clsMsg
  loc_742286: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74228B: ILdRf var_1D4
  loc_74228E: LitStr " "
  loc_742291: ConcatStr
  loc_742292: FStStrNoPop var_1DC
  loc_742295: FMemLdR4 arg_8(7552)
  loc_74229A: ConcatStr
  loc_74229B: FStStrNoPop var_1E0
  loc_74229E: LitStr " "
  loc_7422A1: ConcatStr
  loc_7422A2: FStStrNoPop var_394
  loc_7422A5: FLdRfVar var_390
  loc_7422A8: LitVar_Missing var_324
  loc_7422AB: LitVar_Missing var_304
  loc_7422AE: LitVar_Missing var_2E4
  loc_7422B1: LitVar_Missing var_2C4
  loc_7422B4: LitVar_Missing var_2A4
  loc_7422B7: LitVar_Missing var_284
  loc_7422BA: LitVar_Missing var_264
  loc_7422BD: LitVar_Missing var_244
  loc_7422C0: LitVar_Missing var_224
  loc_7422C3: LitVar_Missing var_200
  loc_7422C6: LitStr "sin retorno"
  loc_7422C9: FStStrCopy var_348
  loc_7422CC: FLdRfVar var_348
  loc_7422CF: LitI4 &HDB
  loc_7422D4: PopTmpLdAdStr var_204
  loc_7422D7: LitI2_Byte &H21
  loc_7422D9: PopTmpLdAd2 var_1D6
  loc_7422DC: ImpAdLdRf MemVar_74C7D0
  loc_7422DF: NewIfNullPr clsMsg
  loc_7422E2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7422E7: ILdRf var_390
  loc_7422EA: ConcatStr
  loc_7422EB: PopTmpLdAdStr
  loc_7422EF: LitI2_Byte &H54
  loc_7422F1: PopTmpLdAd2 var_38A
  loc_7422F4: FMemLdRf unk_418E79
  loc_7422F9: NewIfNullPr clsSecurity
  loc_7422FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742301: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_348 = "": var_394 = "": var_390 = ""
  loc_742314: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_74233F: FLdRfVar var_1D4
  loc_742342: LitVar_Missing var_1D0
  loc_742345: LitVar_Missing var_1B0
  loc_742348: LitVar_Missing var_190
  loc_74234B: LitVar_Missing var_170
  loc_74234E: LitVar_Missing var_150
  loc_742351: LitVar_Missing var_130
  loc_742354: LitVar_Missing var_110
  loc_742357: LitVar_Missing var_F0
  loc_74235A: LitVar_Missing var_D0
  loc_74235D: LitVar_Missing var_B0
  loc_742360: LitStr "Pruebas de"
  loc_742363: FStStrCopy var_90
  loc_742366: FLdRfVar var_90
  loc_742369: LitI4 &HDC
  loc_74236E: PopTmpLdAdStr var_8C
  loc_742371: LitI2_Byte &H21
  loc_742373: PopTmpLdAd2 var_86
  loc_742376: ImpAdLdRf MemVar_74C7D0
  loc_742379: NewIfNullPr clsMsg
  loc_74237C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742381: ILdRf var_1D4
  loc_742384: LitStr " "
  loc_742387: ConcatStr
  loc_742388: FStStrNoPop var_1DC
  loc_74238B: FMemLdR4 arg_8(7552)
  loc_742390: ConcatStr
  loc_742391: FStStrNoPop var_1E0
  loc_742394: LitStr " "
  loc_742397: ConcatStr
  loc_742398: FStStrNoPop var_394
  loc_74239B: FLdRfVar var_390
  loc_74239E: LitVar_Missing var_324
  loc_7423A1: LitVar_Missing var_304
  loc_7423A4: LitVar_Missing var_2E4
  loc_7423A7: LitVar_Missing var_2C4
  loc_7423AA: LitVar_Missing var_2A4
  loc_7423AD: LitVar_Missing var_284
  loc_7423B0: LitVar_Missing var_264
  loc_7423B3: LitVar_Missing var_244
  loc_7423B6: LitVar_Missing var_224
  loc_7423B9: LitVar_Missing var_200
  loc_7423BC: LitStr "con retorno"
  loc_7423BF: FStStrCopy var_348
  loc_7423C2: FLdRfVar var_348
  loc_7423C5: LitI4 &HDD
  loc_7423CA: PopTmpLdAdStr var_204
  loc_7423CD: LitI2_Byte &H21
  loc_7423CF: PopTmpLdAd2 var_1D6
  loc_7423D2: ImpAdLdRf MemVar_74C7D0
  loc_7423D5: NewIfNullPr clsMsg
  loc_7423D8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7423DD: ILdRf var_390
  loc_7423E0: ConcatStr
  loc_7423E1: PopTmpLdAdStr
  loc_7423E5: LitI2_Byte &H55
  loc_7423E7: PopTmpLdAd2 var_38A
  loc_7423EA: FMemLdRf unk_418E79
  loc_7423EF: NewIfNullPr clsSecurity
  loc_7423F2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7423F7: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_348 = "": var_394 = "": var_390 = ""
  loc_74240A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_742435: FLdRfVar var_1D4
  loc_742438: LitVar_Missing var_1D0
  loc_74243B: LitVar_Missing var_1B0
  loc_74243E: LitVar_Missing var_190
  loc_742441: LitVar_Missing var_170
  loc_742444: LitVar_Missing var_150
  loc_742447: LitVar_Missing var_130
  loc_74244A: LitVar_Missing var_110
  loc_74244D: LitVar_Missing var_F0
  loc_742450: LitVar_Missing var_D0
  loc_742453: LitVar_Missing var_B0
  loc_742456: LitStr "Productos consignados"
  loc_742459: FStStrCopy var_90
  loc_74245C: FLdRfVar var_90
  loc_74245F: LitI4 &HDE
  loc_742464: PopTmpLdAdStr var_8C
  loc_742467: LitI2_Byte &H21
  loc_742469: PopTmpLdAd2 var_86
  loc_74246C: ImpAdLdRf MemVar_74C7D0
  loc_74246F: NewIfNullPr clsMsg
  loc_742472: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742477: FLdZeroAd var_1D4
  loc_74247A: PopTmpLdAdStr
  loc_74247E: LitI2_Byte &H56
  loc_742480: PopTmpLdAd2 var_1D6
  loc_742483: FMemLdRf unk_418E79
  loc_742488: NewIfNullPr clsSecurity
  loc_74248B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742490: FFreeStr var_90 = ""
  loc_742497: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7424AE: FLdRfVar var_1D4
  loc_7424B1: LitVar_Missing var_1D0
  loc_7424B4: LitVar_Missing var_1B0
  loc_7424B7: LitVar_Missing var_190
  loc_7424BA: LitVar_Missing var_170
  loc_7424BD: LitVar_Missing var_150
  loc_7424C0: LitVar_Missing var_130
  loc_7424C3: LitVar_Missing var_110
  loc_7424C6: LitVar_Missing var_F0
  loc_7424C9: LitVar_Missing var_D0
  loc_7424CC: LitVar_Missing var_B0
  loc_7424CF: LitStr "Totalizadores"
  loc_7424D2: FStStrCopy var_90
  loc_7424D5: FLdRfVar var_90
  loc_7424D8: LitI4 &HDF
  loc_7424DD: PopTmpLdAdStr var_8C
  loc_7424E0: LitI2_Byte &H21
  loc_7424E2: PopTmpLdAd2 var_86
  loc_7424E5: ImpAdLdRf MemVar_74C7D0
  loc_7424E8: NewIfNullPr clsMsg
  loc_7424EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7424F0: FLdZeroAd var_1D4
  loc_7424F3: PopTmpLdAdStr
  loc_7424F7: LitI2_Byte &H57
  loc_7424F9: PopTmpLdAd2 var_1D6
  loc_7424FC: FMemLdRf unk_418E79
  loc_742501: NewIfNullPr clsSecurity
  loc_742504: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742509: FFreeStr var_90 = ""
  loc_742510: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742527: FLdRfVar var_1D4
  loc_74252A: LitVar_Missing var_1D0
  loc_74252D: LitVar_Missing var_1B0
  loc_742530: LitVar_Missing var_190
  loc_742533: LitVar_Missing var_170
  loc_742536: LitVar_Missing var_150
  loc_742539: LitVar_Missing var_130
  loc_74253C: LitVar_Missing var_110
  loc_74253F: LitVar_Missing var_F0
  loc_742542: LitVar_Missing var_D0
  loc_742545: LitVar_Missing var_B0
  loc_742548: LitStr "Medición mensual de Tanques"
  loc_74254B: FStStrCopy var_90
  loc_74254E: FLdRfVar var_90
  loc_742551: LitI4 &HE0
  loc_742556: PopTmpLdAdStr var_8C
  loc_742559: LitI2_Byte &H21
  loc_74255B: PopTmpLdAd2 var_86
  loc_74255E: ImpAdLdRf MemVar_74C7D0
  loc_742561: NewIfNullPr clsMsg
  loc_742564: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742569: FLdZeroAd var_1D4
  loc_74256C: PopTmpLdAdStr
  loc_742570: LitI2_Byte &H58
  loc_742572: PopTmpLdAd2 var_1D6
  loc_742575: FMemLdRf unk_418E79
  loc_74257A: NewIfNullPr clsSecurity
  loc_74257D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742582: FFreeStr var_90 = ""
  loc_742589: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7425A0: FLdRfVar var_1D4
  loc_7425A3: LitVar_Missing var_1D0
  loc_7425A6: LitVar_Missing var_1B0
  loc_7425A9: LitVar_Missing var_190
  loc_7425AC: LitVar_Missing var_170
  loc_7425AF: LitVar_Missing var_150
  loc_7425B2: LitVar_Missing var_130
  loc_7425B5: LitVar_Missing var_110
  loc_7425B8: LitVar_Missing var_F0
  loc_7425BB: LitVar_Missing var_D0
  loc_7425BE: LitVar_Missing var_B0
  loc_7425C1: LitStr "Log de Usuarios"
  loc_7425C4: FStStrCopy var_90
  loc_7425C7: FLdRfVar var_90
  loc_7425CA: LitI4 &HE1
  loc_7425CF: PopTmpLdAdStr var_8C
  loc_7425D2: LitI2_Byte &H21
  loc_7425D4: PopTmpLdAd2 var_86
  loc_7425D7: ImpAdLdRf MemVar_74C7D0
  loc_7425DA: NewIfNullPr clsMsg
  loc_7425DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7425E2: FLdZeroAd var_1D4
  loc_7425E5: PopTmpLdAdStr
  loc_7425E9: LitI2_Byte &H59
  loc_7425EB: PopTmpLdAd2 var_1D6
  loc_7425EE: FMemLdRf unk_418E79
  loc_7425F3: NewIfNullPr clsSecurity
  loc_7425F6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7425FB: FFreeStr var_90 = ""
  loc_742602: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742619: FLdRfVar var_1D4
  loc_74261C: LitVar_Missing var_1D0
  loc_74261F: LitVar_Missing var_1B0
  loc_742622: LitVar_Missing var_190
  loc_742625: LitVar_Missing var_170
  loc_742628: LitVar_Missing var_150
  loc_74262B: LitVar_Missing var_130
  loc_74262E: LitVar_Missing var_110
  loc_742631: LitVar_Missing var_F0
  loc_742634: LitVar_Missing var_D0
  loc_742637: LitVar_Missing var_B0
  loc_74263A: LitStr "Inicializar"
  loc_74263D: FStStrCopy var_90
  loc_742640: FLdRfVar var_90
  loc_742643: LitI4 &HE2
  loc_742648: PopTmpLdAdStr var_8C
  loc_74264B: LitI2_Byte &H21
  loc_74264D: PopTmpLdAd2 var_86
  loc_742650: ImpAdLdRf MemVar_74C7D0
  loc_742653: NewIfNullPr clsMsg
  loc_742656: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74265B: ILdRf var_1D4
  loc_74265E: LitStr " "
  loc_742661: ConcatStr
  loc_742662: FStStrNoPop var_1DC
  loc_742665: FMemLdR4 arg_8(7568)
  loc_74266A: ConcatStr
  loc_74266B: PopTmpLdAdStr
  loc_74266F: LitI2_Byte &H5A
  loc_742671: PopTmpLdAd2 var_1D6
  loc_742674: FMemLdRf unk_418E79
  loc_742679: NewIfNullPr clsSecurity
  loc_74267C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742681: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_74268C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7426A3: FLdRfVar var_1D4
  loc_7426A6: LitVar_Missing var_1D0
  loc_7426A9: LitVar_Missing var_1B0
  loc_7426AC: LitVar_Missing var_190
  loc_7426AF: LitVar_Missing var_170
  loc_7426B2: LitVar_Missing var_150
  loc_7426B5: LitVar_Missing var_130
  loc_7426B8: LitVar_Missing var_110
  loc_7426BB: LitVar_Missing var_F0
  loc_7426BE: LitVar_Missing var_D0
  loc_7426C1: LitVar_Missing var_B0
  loc_7426C4: LitStr "Agregar Productos Consignados"
  loc_7426C7: FStStrCopy var_90
  loc_7426CA: FLdRfVar var_90
  loc_7426CD: LitI4 &HE3
  loc_7426D2: PopTmpLdAdStr var_8C
  loc_7426D5: LitI2_Byte &H21
  loc_7426D7: PopTmpLdAd2 var_86
  loc_7426DA: ImpAdLdRf MemVar_74C7D0
  loc_7426DD: NewIfNullPr clsMsg
  loc_7426E0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7426E5: FLdZeroAd var_1D4
  loc_7426E8: PopTmpLdAdStr
  loc_7426EC: LitI2_Byte &H5B
  loc_7426EE: PopTmpLdAd2 var_1D6
  loc_7426F1: FMemLdRf unk_418E79
  loc_7426F6: NewIfNullPr clsSecurity
  loc_7426F9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7426FE: FFreeStr var_90 = ""
  loc_742705: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74271C: FLdRfVar var_1D4
  loc_74271F: LitVar_Missing var_1D0
  loc_742722: LitVar_Missing var_1B0
  loc_742725: LitVar_Missing var_190
  loc_742728: LitVar_Missing var_170
  loc_74272B: LitVar_Missing var_150
  loc_74272E: LitVar_Missing var_130
  loc_742731: LitVar_Missing var_110
  loc_742734: LitVar_Missing var_F0
  loc_742737: LitVar_Missing var_D0
  loc_74273A: LitVar_Missing var_B0
  loc_74273D: LitStr "Quitar Productos Consignados"
  loc_742740: FStStrCopy var_90
  loc_742743: FLdRfVar var_90
  loc_742746: LitI4 &HE4
  loc_74274B: PopTmpLdAdStr var_8C
  loc_74274E: LitI2_Byte &H21
  loc_742750: PopTmpLdAd2 var_86
  loc_742753: ImpAdLdRf MemVar_74C7D0
  loc_742756: NewIfNullPr clsMsg
  loc_742759: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74275E: FLdZeroAd var_1D4
  loc_742761: PopTmpLdAdStr
  loc_742765: LitI2_Byte &H5C
  loc_742767: PopTmpLdAd2 var_1D6
  loc_74276A: FMemLdRf unk_418E79
  loc_74276F: NewIfNullPr clsSecurity
  loc_742772: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742777: FFreeStr var_90 = ""
  loc_74277E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742795: FLdRfVar var_1D4
  loc_742798: LitVar_Missing var_1D0
  loc_74279B: LitVar_Missing var_1B0
  loc_74279E: LitVar_Missing var_190
  loc_7427A1: LitVar_Missing var_170
  loc_7427A4: LitVar_Missing var_150
  loc_7427A7: LitVar_Missing var_130
  loc_7427AA: LitVar_Missing var_110
  loc_7427AD: LitVar_Missing var_F0
  loc_7427B0: LitVar_Missing var_D0
  loc_7427B3: LitVar_Missing var_B0
  loc_7427B6: LitStr "Prog. Precios Consignados"
  loc_7427B9: FStStrCopy var_90
  loc_7427BC: FLdRfVar var_90
  loc_7427BF: LitI4 &HE5
  loc_7427C4: PopTmpLdAdStr var_8C
  loc_7427C7: LitI2_Byte &H21
  loc_7427C9: PopTmpLdAd2 var_86
  loc_7427CC: ImpAdLdRf MemVar_74C7D0
  loc_7427CF: NewIfNullPr clsMsg
  loc_7427D2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7427D7: FLdZeroAd var_1D4
  loc_7427DA: PopTmpLdAdStr
  loc_7427DE: LitI2_Byte &H5D
  loc_7427E0: PopTmpLdAd2 var_1D6
  loc_7427E3: FMemLdRf unk_418E79
  loc_7427E8: NewIfNullPr clsSecurity
  loc_7427EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7427F0: FFreeStr var_90 = ""
  loc_7427F7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74280E: FLdRfVar var_1D4
  loc_742811: LitVar_Missing var_1D0
  loc_742814: LitVar_Missing var_1B0
  loc_742817: LitVar_Missing var_190
  loc_74281A: LitVar_Missing var_170
  loc_74281D: LitVar_Missing var_150
  loc_742820: LitVar_Missing var_130
  loc_742823: LitVar_Missing var_110
  loc_742826: LitVar_Missing var_F0
  loc_742829: LitVar_Missing var_D0
  loc_74282C: LitVar_Missing var_B0
  loc_74282F: LitStr "Prog. Precios No Consignados"
  loc_742832: FStStrCopy var_90
  loc_742835: FLdRfVar var_90
  loc_742838: LitI4 &HE6
  loc_74283D: PopTmpLdAdStr var_8C
  loc_742840: LitI2_Byte &H21
  loc_742842: PopTmpLdAd2 var_86
  loc_742845: ImpAdLdRf MemVar_74C7D0
  loc_742848: NewIfNullPr clsMsg
  loc_74284B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742850: FLdZeroAd var_1D4
  loc_742853: PopTmpLdAdStr
  loc_742857: LitI2_Byte &H5E
  loc_742859: PopTmpLdAd2 var_1D6
  loc_74285C: FMemLdRf unk_418E79
  loc_742861: NewIfNullPr clsSecurity
  loc_742864: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742869: FFreeStr var_90 = ""
  loc_742870: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742887: FLdRfVar var_1D4
  loc_74288A: LitVar_Missing var_1D0
  loc_74288D: LitVar_Missing var_1B0
  loc_742890: LitVar_Missing var_190
  loc_742893: LitVar_Missing var_170
  loc_742896: LitVar_Missing var_150
  loc_742899: LitVar_Missing var_130
  loc_74289C: LitVar_Missing var_110
  loc_74289F: LitVar_Missing var_F0
  loc_7428A2: LitVar_Missing var_D0
  loc_7428A5: LitVar_Missing var_B0
  loc_7428A8: LitStr "Aplicaciones"
  loc_7428AB: FStStrCopy var_90
  loc_7428AE: FLdRfVar var_90
  loc_7428B1: LitI4 &HE7
  loc_7428B6: PopTmpLdAdStr var_8C
  loc_7428B9: LitI2_Byte &H21
  loc_7428BB: PopTmpLdAd2 var_86
  loc_7428BE: ImpAdLdRf MemVar_74C7D0
  loc_7428C1: NewIfNullPr clsMsg
  loc_7428C4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7428C9: FLdZeroAd var_1D4
  loc_7428CC: PopTmpLdAdStr
  loc_7428D0: LitI2_Byte &H5F
  loc_7428D2: PopTmpLdAd2 var_1D6
  loc_7428D5: FMemLdRf unk_418E79
  loc_7428DA: NewIfNullPr clsSecurity
  loc_7428DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7428E2: FFreeStr var_90 = ""
  loc_7428E9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742900: FLdRfVar var_1D4
  loc_742903: LitVar_Missing var_1D0
  loc_742906: LitVar_Missing var_1B0
  loc_742909: LitVar_Missing var_190
  loc_74290C: LitVar_Missing var_170
  loc_74290F: LitVar_Missing var_150
  loc_742912: LitVar_Missing var_130
  loc_742915: LitVar_Missing var_110
  loc_742918: LitVar_Missing var_F0
  loc_74291B: LitVar_Missing var_D0
  loc_74291E: LitVar_Missing var_B0
  loc_742921: LitStr "Colores de Productos"
  loc_742924: FStStrCopy var_90
  loc_742927: FLdRfVar var_90
  loc_74292A: LitI4 &H115
  loc_74292F: PopTmpLdAdStr var_8C
  loc_742932: LitI2_Byte &H21
  loc_742934: PopTmpLdAd2 var_86
  loc_742937: ImpAdLdRf MemVar_74C7D0
  loc_74293A: NewIfNullPr clsMsg
  loc_74293D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742942: FLdZeroAd var_1D4
  loc_742945: PopTmpLdAdStr
  loc_742949: LitI2_Byte &H60
  loc_74294B: PopTmpLdAd2 var_1D6
  loc_74294E: FMemLdRf unk_418E79
  loc_742953: NewIfNullPr clsSecurity
  loc_742956: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74295B: FFreeStr var_90 = ""
  loc_742962: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742979: FLdRfVar var_1D4
  loc_74297C: LitVar_Missing var_1D0
  loc_74297F: LitVar_Missing var_1B0
  loc_742982: LitVar_Missing var_190
  loc_742985: LitVar_Missing var_170
  loc_742988: LitVar_Missing var_150
  loc_74298B: LitVar_Missing var_130
  loc_74298E: LitVar_Missing var_110
  loc_742991: LitVar_Missing var_F0
  loc_742994: LitVar_Missing var_D0
  loc_742997: LitVar_Missing var_B0
  loc_74299A: LitStr "Cambio de Hora"
  loc_74299D: FStStrCopy var_90
  loc_7429A0: FLdRfVar var_90
  loc_7429A3: LitI4 &H116
  loc_7429A8: PopTmpLdAdStr var_8C
  loc_7429AB: LitI2_Byte &H21
  loc_7429AD: PopTmpLdAd2 var_86
  loc_7429B0: ImpAdLdRf MemVar_74C7D0
  loc_7429B3: NewIfNullPr clsMsg
  loc_7429B6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7429BB: FLdZeroAd var_1D4
  loc_7429BE: PopTmpLdAdStr
  loc_7429C2: LitI2_Byte &H61
  loc_7429C4: PopTmpLdAd2 var_1D6
  loc_7429C7: FMemLdRf unk_418E79
  loc_7429CC: NewIfNullPr clsSecurity
  loc_7429CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7429D4: FFreeStr var_90 = ""
  loc_7429DB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7429F2: FLdRfVar var_1D4
  loc_7429F5: LitVar_Missing var_1D0
  loc_7429F8: LitVar_Missing var_1B0
  loc_7429FB: LitVar_Missing var_190
  loc_7429FE: LitVar_Missing var_170
  loc_742A01: LitVar_Missing var_150
  loc_742A04: LitVar_Missing var_130
  loc_742A07: LitVar_Missing var_110
  loc_742A0A: LitVar_Missing var_F0
  loc_742A0D: LitVar_Missing var_D0
  loc_742A10: LitVar_Missing var_B0
  loc_742A13: LitStr "Configuración de Módulos"
  loc_742A16: FStStrCopy var_90
  loc_742A19: FLdRfVar var_90
  loc_742A1C: LitI4 &H117
  loc_742A21: PopTmpLdAdStr var_8C
  loc_742A24: LitI2_Byte &H21
  loc_742A26: PopTmpLdAd2 var_86
  loc_742A29: ImpAdLdRf MemVar_74C7D0
  loc_742A2C: NewIfNullPr clsMsg
  loc_742A2F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742A34: FLdZeroAd var_1D4
  loc_742A37: PopTmpLdAdStr
  loc_742A3B: LitI2_Byte &H62
  loc_742A3D: PopTmpLdAd2 var_1D6
  loc_742A40: FMemLdRf unk_418E79
  loc_742A45: NewIfNullPr clsSecurity
  loc_742A48: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742A4D: FFreeStr var_90 = ""
  loc_742A54: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742A6B: FLdRfVar var_1D4
  loc_742A6E: LitVar_Missing var_1D0
  loc_742A71: LitVar_Missing var_1B0
  loc_742A74: LitVar_Missing var_190
  loc_742A77: LitVar_Missing var_170
  loc_742A7A: LitVar_Missing var_150
  loc_742A7D: LitVar_Missing var_130
  loc_742A80: LitVar_Missing var_110
  loc_742A83: LitVar_Missing var_F0
  loc_742A86: LitVar_Missing var_D0
  loc_742A89: LitVar_Missing var_B0
  loc_742A8C: LitStr "Tarjeta Contado"
  loc_742A8F: FStStrCopy var_90
  loc_742A92: FLdRfVar var_90
  loc_742A95: LitI4 &HD6
  loc_742A9A: PopTmpLdAdStr var_8C
  loc_742A9D: LitI2_Byte &H21
  loc_742A9F: PopTmpLdAd2 var_86
  loc_742AA2: ImpAdLdRf MemVar_74C7D0
  loc_742AA5: NewIfNullPr clsMsg
  loc_742AA8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742AAD: FLdZeroAd var_1D4
  loc_742AB0: PopTmpLdAdStr
  loc_742AB4: LitI2_Byte &H63
  loc_742AB6: PopTmpLdAd2 var_1D6
  loc_742AB9: FMemLdRf unk_418E79
  loc_742ABE: NewIfNullPr clsSecurity
  loc_742AC1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742AC6: FFreeStr var_90 = ""
  loc_742ACD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742AE4: FLdRfVar var_1D4
  loc_742AE7: LitVar_Missing var_1D0
  loc_742AEA: LitVar_Missing var_1B0
  loc_742AED: LitVar_Missing var_190
  loc_742AF0: LitVar_Missing var_170
  loc_742AF3: LitVar_Missing var_150
  loc_742AF6: LitVar_Missing var_130
  loc_742AF9: LitVar_Missing var_110
  loc_742AFC: LitVar_Missing var_F0
  loc_742AFF: LitVar_Missing var_D0
  loc_742B02: LitVar_Missing var_B0
  loc_742B05: LitStr "Cierre de Stock programado"
  loc_742B08: FStStrCopy var_90
  loc_742B0B: FLdRfVar var_90
  loc_742B0E: LitI4 &HD7
  loc_742B13: PopTmpLdAdStr var_8C
  loc_742B16: LitI2_Byte &H21
  loc_742B18: PopTmpLdAd2 var_86
  loc_742B1B: ImpAdLdRf MemVar_74C7D0
  loc_742B1E: NewIfNullPr clsMsg
  loc_742B21: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742B26: FLdZeroAd var_1D4
  loc_742B29: PopTmpLdAdStr
  loc_742B2D: LitI2_Byte &H64
  loc_742B2F: PopTmpLdAd2 var_1D6
  loc_742B32: FMemLdRf unk_418E79
  loc_742B37: NewIfNullPr clsSecurity
  loc_742B3A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742B3F: FFreeStr var_90 = ""
  loc_742B46: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742B5D: FLdRfVar var_1D4
  loc_742B60: LitVar_Missing var_1D0
  loc_742B63: LitVar_Missing var_1B0
  loc_742B66: LitVar_Missing var_190
  loc_742B69: LitVar_Missing var_170
  loc_742B6C: LitVar_Missing var_150
  loc_742B6F: LitVar_Missing var_130
  loc_742B72: LitVar_Missing var_110
  loc_742B75: LitVar_Missing var_F0
  loc_742B78: LitVar_Missing var_D0
  loc_742B7B: LitVar_Missing var_B0
  loc_742B7E: LitStr "Cierre de Stock por excepción"
  loc_742B81: FStStrCopy var_90
  loc_742B84: FLdRfVar var_90
  loc_742B87: LitI4 &HD8
  loc_742B8C: PopTmpLdAdStr var_8C
  loc_742B8F: LitI2_Byte &H21
  loc_742B91: PopTmpLdAd2 var_86
  loc_742B94: ImpAdLdRf MemVar_74C7D0
  loc_742B97: NewIfNullPr clsMsg
  loc_742B9A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742B9F: FLdZeroAd var_1D4
  loc_742BA2: PopTmpLdAdStr
  loc_742BA6: LitI2_Byte &H65
  loc_742BA8: PopTmpLdAd2 var_1D6
  loc_742BAB: FMemLdRf unk_418E79
  loc_742BB0: NewIfNullPr clsSecurity
  loc_742BB3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742BB8: FFreeStr var_90 = ""
  loc_742BBF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742BD6: FLdRfVar var_1D4
  loc_742BD9: LitVar_Missing var_1D0
  loc_742BDC: LitVar_Missing var_1B0
  loc_742BDF: LitVar_Missing var_190
  loc_742BE2: LitVar_Missing var_170
  loc_742BE5: LitVar_Missing var_150
  loc_742BE8: LitVar_Missing var_130
  loc_742BEB: LitVar_Missing var_110
  loc_742BEE: LitVar_Missing var_F0
  loc_742BF1: LitVar_Missing var_D0
  loc_742BF4: LitVar_Missing var_B0
  loc_742BF7: LitStr "Utilizar el Explorer para Intranet"
  loc_742BFA: FStStrCopy var_90
  loc_742BFD: FLdRfVar var_90
  loc_742C00: LitI4 &HD9
  loc_742C05: PopTmpLdAdStr var_8C
  loc_742C08: LitI2_Byte &H21
  loc_742C0A: PopTmpLdAd2 var_86
  loc_742C0D: ImpAdLdRf MemVar_74C7D0
  loc_742C10: NewIfNullPr clsMsg
  loc_742C13: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742C18: FLdZeroAd var_1D4
  loc_742C1B: PopTmpLdAdStr
  loc_742C1F: LitI2_Byte &H66
  loc_742C21: PopTmpLdAd2 var_1D6
  loc_742C24: FMemLdRf unk_418E79
  loc_742C29: NewIfNullPr clsSecurity
  loc_742C2C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742C31: FFreeStr var_90 = ""
  loc_742C38: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742C4F: FLdRfVar var_1D4
  loc_742C52: LitVar_Missing var_1D0
  loc_742C55: LitVar_Missing var_1B0
  loc_742C58: LitVar_Missing var_190
  loc_742C5B: LitVar_Missing var_170
  loc_742C5E: LitVar_Missing var_150
  loc_742C61: LitVar_Missing var_130
  loc_742C64: LitVar_Missing var_110
  loc_742C67: LitVar_Missing var_F0
  loc_742C6A: LitVar_Missing var_D0
  loc_742C6D: LitVar_Missing var_B0
  loc_742C70: LitStr "FASE II"
  loc_742C73: FStStrCopy var_90
  loc_742C76: FLdRfVar var_90
  loc_742C79: LitI4 &HDE
  loc_742C7E: PopTmpLdAdStr var_8C
  loc_742C81: LitI2_Byte &H21
  loc_742C83: PopTmpLdAd2 var_86
  loc_742C86: ImpAdLdRf MemVar_74C7D0
  loc_742C89: NewIfNullPr clsMsg
  loc_742C8C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742C91: FLdZeroAd var_1D4
  loc_742C94: PopTmpLdAdStr
  loc_742C98: LitI2_Byte &H67
  loc_742C9A: PopTmpLdAd2 var_1D6
  loc_742C9D: FMemLdRf unk_418E79
  loc_742CA2: NewIfNullPr clsSecurity
  loc_742CA5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742CAA: FFreeStr var_90 = ""
  loc_742CB1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742CC8: FLdRfVar var_1D4
  loc_742CCB: LitVar_Missing var_1D0
  loc_742CCE: LitVar_Missing var_1B0
  loc_742CD1: LitVar_Missing var_190
  loc_742CD4: LitVar_Missing var_170
  loc_742CD7: LitVar_Missing var_150
  loc_742CDA: LitVar_Missing var_130
  loc_742CDD: LitVar_Missing var_110
  loc_742CE0: LitVar_Missing var_F0
  loc_742CE3: LitVar_Missing var_D0
  loc_742CE6: LitVar_Missing var_B0
  loc_742CE9: LitStr "Traspaso entre tanques"
  loc_742CEC: FStStrCopy var_90
  loc_742CEF: FLdRfVar var_90
  loc_742CF2: LitI4 &HDF
  loc_742CF7: PopTmpLdAdStr var_8C
  loc_742CFA: LitI2_Byte &H21
  loc_742CFC: PopTmpLdAd2 var_86
  loc_742CFF: ImpAdLdRf MemVar_74C7D0
  loc_742D02: NewIfNullPr clsMsg
  loc_742D05: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742D0A: FLdZeroAd var_1D4
  loc_742D0D: PopTmpLdAdStr
  loc_742D11: LitI2_Byte &H68
  loc_742D13: PopTmpLdAd2 var_1D6
  loc_742D16: FMemLdRf unk_418E79
  loc_742D1B: NewIfNullPr clsSecurity
  loc_742D1E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742D23: FFreeStr var_90 = ""
  loc_742D2A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742D41: LitStr "Densidad"
  loc_742D44: FStStrCopy var_90
  loc_742D47: FLdRfVar var_90
  loc_742D4A: LitI2_Byte &H6A
  loc_742D4C: PopTmpLdAd2 var_86
  loc_742D4F: FMemLdRf unk_418E79
  loc_742D54: NewIfNullPr clsSecurity
  loc_742D57: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742D5C: FFree1Str var_90
  loc_742D5F: LitStr "Operaciones de playa - España"
  loc_742D62: FStStrCopy var_90
  loc_742D65: FLdRfVar var_90
  loc_742D68: LitI2_Byte &H6B
  loc_742D6A: PopTmpLdAd2 var_86
  loc_742D6D: FMemLdRf unk_418E79
  loc_742D72: NewIfNullPr clsSecurity
  loc_742D75: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742D7A: FFree1Str var_90
  loc_742D7D: FLdRfVar var_1D4
  loc_742D80: LitVar_Missing var_1D0
  loc_742D83: LitVar_Missing var_1B0
  loc_742D86: LitVar_Missing var_190
  loc_742D89: LitVar_Missing var_170
  loc_742D8C: LitVar_Missing var_150
  loc_742D8F: LitVar_Missing var_130
  loc_742D92: LitVar_Missing var_110
  loc_742D95: LitVar_Missing var_F0
  loc_742D98: LitVar_Missing var_D0
  loc_742D9B: LitVar_Missing var_B0
  loc_742D9E: LitStr "Delta en Curso"
  loc_742DA1: FStStrCopy var_90
  loc_742DA4: FLdRfVar var_90
  loc_742DA7: LitI4 &H118
  loc_742DAC: PopTmpLdAdStr var_8C
  loc_742DAF: LitI2_Byte &H21
  loc_742DB1: PopTmpLdAd2 var_86
  loc_742DB4: ImpAdLdRf MemVar_74C7D0
  loc_742DB7: NewIfNullPr clsMsg
  loc_742DBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742DBF: FLdZeroAd var_1D4
  loc_742DC2: PopTmpLdAdStr
  loc_742DC6: LitI2_Byte &H6C
  loc_742DC8: PopTmpLdAd2 var_1D6
  loc_742DCB: FMemLdRf unk_418E79
  loc_742DD0: NewIfNullPr clsSecurity
  loc_742DD3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742DD8: FFreeStr var_90 = ""
  loc_742DDF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742DF6: FLdRfVar var_1D4
  loc_742DF9: LitVar_Missing var_1D0
  loc_742DFC: LitVar_Missing var_1B0
  loc_742DFF: LitVar_Missing var_190
  loc_742E02: LitVar_Missing var_170
  loc_742E05: LitVar_Missing var_150
  loc_742E08: LitVar_Missing var_130
  loc_742E0B: LitVar_Missing var_110
  loc_742E0E: LitVar_Missing var_F0
  loc_742E11: LitVar_Missing var_D0
  loc_742E14: LitVar_Missing var_B0
  loc_742E17: LitStr "Delta anteriores"
  loc_742E1A: FStStrCopy var_90
  loc_742E1D: FLdRfVar var_90
  loc_742E20: LitI4 &H119
  loc_742E25: PopTmpLdAdStr var_8C
  loc_742E28: LitI2_Byte &H21
  loc_742E2A: PopTmpLdAd2 var_86
  loc_742E2D: ImpAdLdRf MemVar_74C7D0
  loc_742E30: NewIfNullPr clsMsg
  loc_742E33: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742E38: FLdZeroAd var_1D4
  loc_742E3B: PopTmpLdAdStr
  loc_742E3F: LitI2_Byte &H6D
  loc_742E41: PopTmpLdAd2 var_1D6
  loc_742E44: FMemLdRf unk_418E79
  loc_742E49: NewIfNullPr clsSecurity
  loc_742E4C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742E51: FFreeStr var_90 = ""
  loc_742E58: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742E6F: LitStr "Dominicana"
  loc_742E72: FStStrCopy var_90
  loc_742E75: FLdRfVar var_90
  loc_742E78: LitI2_Byte &H6E
  loc_742E7A: PopTmpLdAd2 var_86
  loc_742E7D: FMemLdRf unk_418E79
  loc_742E82: NewIfNullPr clsSecurity
  loc_742E85: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742E8A: FFree1Str var_90
  loc_742E8D: FLdRfVar var_1D4
  loc_742E90: LitVar_Missing var_1D0
  loc_742E93: LitVar_Missing var_1B0
  loc_742E96: LitVar_Missing var_190
  loc_742E99: LitVar_Missing var_170
  loc_742E9C: LitVar_Missing var_150
  loc_742E9F: LitVar_Missing var_130
  loc_742EA2: LitVar_Missing var_110
  loc_742EA5: LitVar_Missing var_F0
  loc_742EA8: LitVar_Missing var_D0
  loc_742EAB: LitVar_Missing var_B0
  loc_742EAE: LitStr "Salida de un"
  loc_742EB1: FStStrCopy var_90
  loc_742EB4: FLdRfVar var_90
  loc_742EB7: LitI4 &H67
  loc_742EBC: PopTmpLdAdStr var_8C
  loc_742EBF: LitI2_Byte &H21
  loc_742EC1: PopTmpLdAd2 var_86
  loc_742EC4: ImpAdLdRf MemVar_74C7D0
  loc_742EC7: NewIfNullPr clsMsg
  loc_742ECA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742ECF: ILdRf var_1D4
  loc_742ED2: LitStr " "
  loc_742ED5: ConcatStr
  loc_742ED6: FStStrNoPop var_1DC
  loc_742ED9: FMemLdR4 arg_8(7552)
  loc_742EDE: ConcatStr
  loc_742EDF: FStStrNoPop var_1E0
  loc_742EE2: LitStr " "
  loc_742EE5: ConcatStr
  loc_742EE6: FStStrNoPop var_394
  loc_742EE9: FLdRfVar var_390
  loc_742EEC: LitVar_Missing var_324
  loc_742EEF: LitVar_Missing var_304
  loc_742EF2: LitVar_Missing var_2E4
  loc_742EF5: LitVar_Missing var_2C4
  loc_742EF8: LitVar_Missing var_2A4
  loc_742EFB: LitVar_Missing var_284
  loc_742EFE: LitVar_Missing var_264
  loc_742F01: LitVar_Missing var_244
  loc_742F04: LitVar_Missing var_224
  loc_742F07: LitVar_Missing var_200
  loc_742F0A: LitStr "de la linea de comunicaciones"
  loc_742F0D: FStStrCopy var_348
  loc_742F10: FLdRfVar var_348
  loc_742F13: LitI4 &H68
  loc_742F18: PopTmpLdAdStr var_204
  loc_742F1B: LitI2_Byte &H21
  loc_742F1D: PopTmpLdAd2 var_1D6
  loc_742F20: ImpAdLdRf MemVar_74C7D0
  loc_742F23: NewIfNullPr clsMsg
  loc_742F26: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742F2B: ILdRf var_390
  loc_742F2E: ConcatStr
  loc_742F2F: FStStrNoPop var_398
  loc_742F32: LitI4 1
  loc_742F37: FMemLdRf unk_418E79
  loc_742F3C: AryInRecLdPr
  loc_742F42: MemStStrCopy
  loc_742F46: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_348 = "": var_394 = "": var_390 = ""
  loc_742F59: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_742F84: FLdRfVar var_1D4
  loc_742F87: LitVar_Missing var_1D0
  loc_742F8A: LitVar_Missing var_1B0
  loc_742F8D: LitVar_Missing var_190
  loc_742F90: LitVar_Missing var_170
  loc_742F93: LitVar_Missing var_150
  loc_742F96: LitVar_Missing var_130
  loc_742F99: LitVar_Missing var_110
  loc_742F9C: LitVar_Missing var_F0
  loc_742F9F: LitVar_Missing var_D0
  loc_742FA2: LitVar_Missing var_B0
  loc_742FA5: LitStr "Entrada de un Pump a la linea de comunicaciones"
  loc_742FA8: FStStrCopy var_90
  loc_742FAB: FLdRfVar var_90
  loc_742FAE: LitI4 &H69
  loc_742FB3: PopTmpLdAdStr var_8C
  loc_742FB6: LitI2_Byte &H21
  loc_742FB8: PopTmpLdAd2 var_86
  loc_742FBB: ImpAdLdRf MemVar_74C7D0
  loc_742FBE: NewIfNullPr clsMsg
  loc_742FC1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_742FC6: ILdRf var_1D4
  loc_742FC9: LitI4 2
  loc_742FCE: FMemLdRf unk_418E79
  loc_742FD3: AryInRecLdPr
  loc_742FD9: MemStStrCopy
  loc_742FDD: FFreeStr var_90 = ""
  loc_742FE4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_742FFB: FLdRfVar var_1D4
  loc_742FFE: LitVar_Missing var_1D0
  loc_743001: LitVar_Missing var_1B0
  loc_743004: LitVar_Missing var_190
  loc_743007: LitVar_Missing var_170
  loc_74300A: LitVar_Missing var_150
  loc_74300D: LitVar_Missing var_130
  loc_743010: LitVar_Missing var_110
  loc_743013: LitVar_Missing var_F0
  loc_743016: LitVar_Missing var_D0
  loc_743019: LitVar_Missing var_B0
  loc_74301C: LitStr "Inico del servicio de controlador"
  loc_74301F: FStStrCopy var_90
  loc_743022: FLdRfVar var_90
  loc_743025: LitI4 &H6A
  loc_74302A: PopTmpLdAdStr var_8C
  loc_74302D: LitI2_Byte &H21
  loc_74302F: PopTmpLdAd2 var_86
  loc_743032: ImpAdLdRf MemVar_74C7D0
  loc_743035: NewIfNullPr clsMsg
  loc_743038: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74303D: ILdRf var_1D4
  loc_743040: LitI4 3
  loc_743045: FMemLdRf unk_418E79
  loc_74304A: AryInRecLdPr
  loc_743050: MemStStrCopy
  loc_743054: FFreeStr var_90 = ""
  loc_74305B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743072: FLdRfVar var_1D4
  loc_743075: LitVar_Missing var_1D0
  loc_743078: LitVar_Missing var_1B0
  loc_74307B: LitVar_Missing var_190
  loc_74307E: LitVar_Missing var_170
  loc_743081: LitVar_Missing var_150
  loc_743084: LitVar_Missing var_130
  loc_743087: LitVar_Missing var_110
  loc_74308A: LitVar_Missing var_F0
  loc_74308D: LitVar_Missing var_D0
  loc_743090: LitVar_Missing var_B0
  loc_743093: LitStr "Finalización del servicio de controlador"
  loc_743096: FStStrCopy var_90
  loc_743099: FLdRfVar var_90
  loc_74309C: LitI4 &H6B
  loc_7430A1: PopTmpLdAdStr var_8C
  loc_7430A4: LitI2_Byte &H21
  loc_7430A6: PopTmpLdAd2 var_86
  loc_7430A9: ImpAdLdRf MemVar_74C7D0
  loc_7430AC: NewIfNullPr clsMsg
  loc_7430AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7430B4: ILdRf var_1D4
  loc_7430B7: LitI4 4
  loc_7430BC: FMemLdRf unk_418E79
  loc_7430C1: AryInRecLdPr
  loc_7430C7: MemStStrCopy
  loc_7430CB: FFreeStr var_90 = ""
  loc_7430D2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7430E9: FLdRfVar var_1D4
  loc_7430EC: LitVar_Missing var_1D0
  loc_7430EF: LitVar_Missing var_1B0
  loc_7430F2: LitVar_Missing var_190
  loc_7430F5: LitVar_Missing var_170
  loc_7430F8: LitVar_Missing var_150
  loc_7430FB: LitVar_Missing var_130
  loc_7430FE: LitVar_Missing var_110
  loc_743101: LitVar_Missing var_F0
  loc_743104: LitVar_Missing var_D0
  loc_743107: LitVar_Missing var_B0
  loc_74310A: LitStr "Cierre de turno"
  loc_74310D: FStStrCopy var_90
  loc_743110: FLdRfVar var_90
  loc_743113: LitI4 &H1D
  loc_743118: PopTmpLdAdStr var_8C
  loc_74311B: LitI2_Byte &H21
  loc_74311D: PopTmpLdAd2 var_86
  loc_743120: ImpAdLdRf MemVar_74C7D0
  loc_743123: NewIfNullPr clsMsg
  loc_743126: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74312B: ILdRf var_1D4
  loc_74312E: LitI4 5
  loc_743133: FMemLdRf unk_418E79
  loc_743138: AryInRecLdPr
  loc_74313E: MemStStrCopy
  loc_743142: FFreeStr var_90 = ""
  loc_743149: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743160: FLdRfVar var_1D4
  loc_743163: LitVar_Missing var_1D0
  loc_743166: LitVar_Missing var_1B0
  loc_743169: LitVar_Missing var_190
  loc_74316C: LitVar_Missing var_170
  loc_74316F: LitVar_Missing var_150
  loc_743172: LitVar_Missing var_130
  loc_743175: LitVar_Missing var_110
  loc_743178: LitVar_Missing var_F0
  loc_74317B: LitVar_Missing var_D0
  loc_74317E: LitVar_Missing var_B0
  loc_743181: LitStr "Cierre de día"
  loc_743184: FStStrCopy var_90
  loc_743187: FLdRfVar var_90
  loc_74318A: LitI4 &H1E
  loc_74318F: PopTmpLdAdStr var_8C
  loc_743192: LitI2_Byte &H21
  loc_743194: PopTmpLdAd2 var_86
  loc_743197: ImpAdLdRf MemVar_74C7D0
  loc_74319A: NewIfNullPr clsMsg
  loc_74319D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7431A2: ILdRf var_1D4
  loc_7431A5: LitI4 6
  loc_7431AA: FMemLdRf unk_418E79
  loc_7431AF: AryInRecLdPr
  loc_7431B5: MemStStrCopy
  loc_7431B9: FFreeStr var_90 = ""
  loc_7431C0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7431D7: FLdRfVar var_1D4
  loc_7431DA: LitVar_Missing var_1D0
  loc_7431DD: LitVar_Missing var_1B0
  loc_7431E0: LitVar_Missing var_190
  loc_7431E3: LitVar_Missing var_170
  loc_7431E6: LitVar_Missing var_150
  loc_7431E9: LitVar_Missing var_130
  loc_7431EC: LitVar_Missing var_110
  loc_7431EF: LitVar_Missing var_F0
  loc_7431F2: LitVar_Missing var_D0
  loc_7431F5: LitVar_Missing var_B0
  loc_7431F8: LitStr "Cierre de mes"
  loc_7431FB: FStStrCopy var_90
  loc_7431FE: FLdRfVar var_90
  loc_743201: LitI4 &H1F
  loc_743206: PopTmpLdAdStr var_8C
  loc_743209: LitI2_Byte &H21
  loc_74320B: PopTmpLdAd2 var_86
  loc_74320E: ImpAdLdRf MemVar_74C7D0
  loc_743211: NewIfNullPr clsMsg
  loc_743214: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743219: ILdRf var_1D4
  loc_74321C: LitI4 7
  loc_743221: FMemLdRf unk_418E79
  loc_743226: AryInRecLdPr
  loc_74322C: MemStStrCopy
  loc_743230: FFreeStr var_90 = ""
  loc_743237: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74324E: FLdRfVar var_1D4
  loc_743251: LitVar_Missing var_1D0
  loc_743254: LitVar_Missing var_1B0
  loc_743257: LitVar_Missing var_190
  loc_74325A: LitVar_Missing var_170
  loc_74325D: LitVar_Missing var_150
  loc_743260: LitVar_Missing var_130
  loc_743263: LitVar_Missing var_110
  loc_743266: LitVar_Missing var_F0
  loc_743269: LitVar_Missing var_D0
  loc_74326C: LitVar_Missing var_B0
  loc_74326F: LitStr "Cierre de turno sin ventas"
  loc_743272: FStStrCopy var_90
  loc_743275: FLdRfVar var_90
  loc_743278: LitI4 &H6C
  loc_74327D: PopTmpLdAdStr var_8C
  loc_743280: LitI2_Byte &H21
  loc_743282: PopTmpLdAd2 var_86
  loc_743285: ImpAdLdRf MemVar_74C7D0
  loc_743288: NewIfNullPr clsMsg
  loc_74328B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743290: ILdRf var_1D4
  loc_743293: LitI4 8
  loc_743298: FMemLdRf unk_418E79
  loc_74329D: AryInRecLdPr
  loc_7432A3: MemStStrCopy
  loc_7432A7: FFreeStr var_90 = ""
  loc_7432AE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7432C5: FLdRfVar var_1D4
  loc_7432C8: LitVar_Missing var_1D0
  loc_7432CB: LitVar_Missing var_1B0
  loc_7432CE: LitVar_Missing var_190
  loc_7432D1: LitVar_Missing var_170
  loc_7432D4: LitVar_Missing var_150
  loc_7432D7: LitVar_Missing var_130
  loc_7432DA: LitVar_Missing var_110
  loc_7432DD: LitVar_Missing var_F0
  loc_7432E0: LitVar_Missing var_D0
  loc_7432E3: LitVar_Missing var_B0
  loc_7432E6: LitStr "Cierre de dia sin ventas"
  loc_7432E9: FStStrCopy var_90
  loc_7432EC: FLdRfVar var_90
  loc_7432EF: LitI4 &H6D
  loc_7432F4: PopTmpLdAdStr var_8C
  loc_7432F7: LitI2_Byte &H21
  loc_7432F9: PopTmpLdAd2 var_86
  loc_7432FC: ImpAdLdRf MemVar_74C7D0
  loc_7432FF: NewIfNullPr clsMsg
  loc_743302: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743307: ILdRf var_1D4
  loc_74330A: LitI4 9
  loc_74330F: FMemLdRf unk_418E79
  loc_743314: AryInRecLdPr
  loc_74331A: MemStStrCopy
  loc_74331E: FFreeStr var_90 = ""
  loc_743325: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74333C: FLdRfVar var_1D4
  loc_74333F: LitVar_Missing var_1D0
  loc_743342: LitVar_Missing var_1B0
  loc_743345: LitVar_Missing var_190
  loc_743348: LitVar_Missing var_170
  loc_74334B: LitVar_Missing var_150
  loc_74334E: LitVar_Missing var_130
  loc_743351: LitVar_Missing var_110
  loc_743354: LitVar_Missing var_F0
  loc_743357: LitVar_Missing var_D0
  loc_74335A: LitVar_Missing var_B0
  loc_74335D: LitStr "Cierre de mes sin ventas"
  loc_743360: FStStrCopy var_90
  loc_743363: FLdRfVar var_90
  loc_743366: LitI4 &H6E
  loc_74336B: PopTmpLdAdStr var_8C
  loc_74336E: LitI2_Byte &H21
  loc_743370: PopTmpLdAd2 var_86
  loc_743373: ImpAdLdRf MemVar_74C7D0
  loc_743376: NewIfNullPr clsMsg
  loc_743379: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74337E: ILdRf var_1D4
  loc_743381: LitI4 &HA
  loc_743386: FMemLdRf unk_418E79
  loc_74338B: AryInRecLdPr
  loc_743391: MemStStrCopy
  loc_743395: FFreeStr var_90 = ""
  loc_74339C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7433B3: FLdRfVar var_1D4
  loc_7433B6: LitVar_Missing var_1D0
  loc_7433B9: LitVar_Missing var_1B0
  loc_7433BC: LitVar_Missing var_190
  loc_7433BF: LitVar_Missing var_170
  loc_7433C2: LitVar_Missing var_150
  loc_7433C5: LitVar_Missing var_130
  loc_7433C8: LitVar_Missing var_110
  loc_7433CB: LitVar_Missing var_F0
  loc_7433CE: LitVar_Missing var_D0
  loc_7433D1: LitVar_Missing var_B0
  loc_7433D4: LitStr "Impresión de cierre de turno"
  loc_7433D7: FStStrCopy var_90
  loc_7433DA: FLdRfVar var_90
  loc_7433DD: LitI4 &H6F
  loc_7433E2: PopTmpLdAdStr var_8C
  loc_7433E5: LitI2_Byte &H21
  loc_7433E7: PopTmpLdAd2 var_86
  loc_7433EA: ImpAdLdRf MemVar_74C7D0
  loc_7433ED: NewIfNullPr clsMsg
  loc_7433F0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7433F5: ILdRf var_1D4
  loc_7433F8: LitI4 &HB
  loc_7433FD: FMemLdRf unk_418E79
  loc_743402: AryInRecLdPr
  loc_743408: MemStStrCopy
  loc_74340C: FFreeStr var_90 = ""
  loc_743413: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74342A: FLdRfVar var_1D4
  loc_74342D: LitVar_Missing var_1D0
  loc_743430: LitVar_Missing var_1B0
  loc_743433: LitVar_Missing var_190
  loc_743436: LitVar_Missing var_170
  loc_743439: LitVar_Missing var_150
  loc_74343C: LitVar_Missing var_130
  loc_74343F: LitVar_Missing var_110
  loc_743442: LitVar_Missing var_F0
  loc_743445: LitVar_Missing var_D0
  loc_743448: LitVar_Missing var_B0
  loc_74344B: LitStr "Impresión de cierre de día"
  loc_74344E: FStStrCopy var_90
  loc_743451: FLdRfVar var_90
  loc_743454: LitI4 &H70
  loc_743459: PopTmpLdAdStr var_8C
  loc_74345C: LitI2_Byte &H21
  loc_74345E: PopTmpLdAd2 var_86
  loc_743461: ImpAdLdRf MemVar_74C7D0
  loc_743464: NewIfNullPr clsMsg
  loc_743467: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74346C: ILdRf var_1D4
  loc_74346F: LitI4 &HC
  loc_743474: FMemLdRf unk_418E79
  loc_743479: AryInRecLdPr
  loc_74347F: MemStStrCopy
  loc_743483: FFreeStr var_90 = ""
  loc_74348A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7434A1: FLdRfVar var_1D4
  loc_7434A4: LitVar_Missing var_1D0
  loc_7434A7: LitVar_Missing var_1B0
  loc_7434AA: LitVar_Missing var_190
  loc_7434AD: LitVar_Missing var_170
  loc_7434B0: LitVar_Missing var_150
  loc_7434B3: LitVar_Missing var_130
  loc_7434B6: LitVar_Missing var_110
  loc_7434B9: LitVar_Missing var_F0
  loc_7434BC: LitVar_Missing var_D0
  loc_7434BF: LitVar_Missing var_B0
  loc_7434C2: LitStr "Impresión de cierre de mes"
  loc_7434C5: FStStrCopy var_90
  loc_7434C8: FLdRfVar var_90
  loc_7434CB: LitI4 &H71
  loc_7434D0: PopTmpLdAdStr var_8C
  loc_7434D3: LitI2_Byte &H21
  loc_7434D5: PopTmpLdAd2 var_86
  loc_7434D8: ImpAdLdRf MemVar_74C7D0
  loc_7434DB: NewIfNullPr clsMsg
  loc_7434DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7434E3: ILdRf var_1D4
  loc_7434E6: LitI4 &HD
  loc_7434EB: FMemLdRf unk_418E79
  loc_7434F0: AryInRecLdPr
  loc_7434F6: MemStStrCopy
  loc_7434FA: FFreeStr var_90 = ""
  loc_743501: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743518: FLdRfVar var_1D4
  loc_74351B: LitVar_Missing var_1D0
  loc_74351E: LitVar_Missing var_1B0
  loc_743521: LitVar_Missing var_190
  loc_743524: LitVar_Missing var_170
  loc_743527: LitVar_Missing var_150
  loc_74352A: LitVar_Missing var_130
  loc_74352D: LitVar_Missing var_110
  loc_743530: LitVar_Missing var_F0
  loc_743533: LitVar_Missing var_D0
  loc_743536: LitVar_Missing var_B0
  loc_743539: LitStr "Recepción de un cambio de precios"
  loc_74353C: FStStrCopy var_90
  loc_74353F: FLdRfVar var_90
  loc_743542: LitI4 &H72
  loc_743547: PopTmpLdAdStr var_8C
  loc_74354A: LitI2_Byte &H21
  loc_74354C: PopTmpLdAd2 var_86
  loc_74354F: ImpAdLdRf MemVar_74C7D0
  loc_743552: NewIfNullPr clsMsg
  loc_743555: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74355A: ILdRf var_1D4
  loc_74355D: LitI4 &HE
  loc_743562: FMemLdRf unk_418E79
  loc_743567: AryInRecLdPr
  loc_74356D: MemStStrCopy
  loc_743571: FFreeStr var_90 = ""
  loc_743578: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74358F: FLdRfVar var_1D4
  loc_743592: LitVar_Missing var_1D0
  loc_743595: LitVar_Missing var_1B0
  loc_743598: LitVar_Missing var_190
  loc_74359B: LitVar_Missing var_170
  loc_74359E: LitVar_Missing var_150
  loc_7435A1: LitVar_Missing var_130
  loc_7435A4: LitVar_Missing var_110
  loc_7435A7: LitVar_Missing var_F0
  loc_7435AA: LitVar_Missing var_D0
  loc_7435AD: LitVar_Missing var_B0
  loc_7435B0: LitStr "Ejecución de cambio de precios"
  loc_7435B3: FStStrCopy var_90
  loc_7435B6: FLdRfVar var_90
  loc_7435B9: LitI4 &H73
  loc_7435BE: PopTmpLdAdStr var_8C
  loc_7435C1: LitI2_Byte &H21
  loc_7435C3: PopTmpLdAd2 var_86
  loc_7435C6: ImpAdLdRf MemVar_74C7D0
  loc_7435C9: NewIfNullPr clsMsg
  loc_7435CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7435D1: ILdRf var_1D4
  loc_7435D4: LitI4 &HF
  loc_7435D9: FMemLdRf unk_418E79
  loc_7435DE: AryInRecLdPr
  loc_7435E4: MemStStrCopy
  loc_7435E8: FFreeStr var_90 = ""
  loc_7435EF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743606: FLdRfVar var_1D4
  loc_743609: LitVar_Missing var_1D0
  loc_74360C: LitVar_Missing var_1B0
  loc_74360F: LitVar_Missing var_190
  loc_743612: LitVar_Missing var_170
  loc_743615: LitVar_Missing var_150
  loc_743618: LitVar_Missing var_130
  loc_74361B: LitVar_Missing var_110
  loc_74361E: LitVar_Missing var_F0
  loc_743621: LitVar_Missing var_D0
  loc_743624: LitVar_Missing var_B0
  loc_743627: LitStr "Anulación de un cambio de precios"
  loc_74362A: FStStrCopy var_90
  loc_74362D: FLdRfVar var_90
  loc_743630: LitI4 &H74
  loc_743635: PopTmpLdAdStr var_8C
  loc_743638: LitI2_Byte &H21
  loc_74363A: PopTmpLdAd2 var_86
  loc_74363D: ImpAdLdRf MemVar_74C7D0
  loc_743640: NewIfNullPr clsMsg
  loc_743643: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743648: ILdRf var_1D4
  loc_74364B: LitI4 &H10
  loc_743650: FMemLdRf unk_418E79
  loc_743655: AryInRecLdPr
  loc_74365B: MemStStrCopy
  loc_74365F: FFreeStr var_90 = ""
  loc_743666: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74367D: FLdRfVar var_1D4
  loc_743680: LitVar_Missing var_1D0
  loc_743683: LitVar_Missing var_1B0
  loc_743686: LitVar_Missing var_190
  loc_743689: LitVar_Missing var_170
  loc_74368C: LitVar_Missing var_150
  loc_74368F: LitVar_Missing var_130
  loc_743692: LitVar_Missing var_110
  loc_743695: LitVar_Missing var_F0
  loc_743698: LitVar_Missing var_D0
  loc_74369B: LitVar_Missing var_B0
  loc_74369E: LitStr "Detección de ventas sin control"
  loc_7436A1: FStStrCopy var_90
  loc_7436A4: FLdRfVar var_90
  loc_7436A7: LitI4 &H75
  loc_7436AC: PopTmpLdAdStr var_8C
  loc_7436AF: LitI2_Byte &H21
  loc_7436B1: PopTmpLdAd2 var_86
  loc_7436B4: ImpAdLdRf MemVar_74C7D0
  loc_7436B7: NewIfNullPr clsMsg
  loc_7436BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7436BF: ILdRf var_1D4
  loc_7436C2: LitI4 &H11
  loc_7436C7: FMemLdRf unk_418E79
  loc_7436CC: AryInRecLdPr
  loc_7436D2: MemStStrCopy
  loc_7436D6: FFreeStr var_90 = ""
  loc_7436DD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7436F4: FLdRfVar var_1D4
  loc_7436F7: LitVar_Missing var_1D0
  loc_7436FA: LitVar_Missing var_1B0
  loc_7436FD: LitVar_Missing var_190
  loc_743700: LitVar_Missing var_170
  loc_743703: LitVar_Missing var_150
  loc_743706: LitVar_Missing var_130
  loc_743709: LitVar_Missing var_110
  loc_74370C: LitVar_Missing var_F0
  loc_74370F: LitVar_Missing var_D0
  loc_743712: LitVar_Missing var_B0
  loc_743715: LitStr "Detección de"
  loc_743718: FStStrCopy var_90
  loc_74371B: FLdRfVar var_90
  loc_74371E: LitI4 &H76
  loc_743723: PopTmpLdAdStr var_8C
  loc_743726: LitI2_Byte &H21
  loc_743728: PopTmpLdAd2 var_86
  loc_74372B: ImpAdLdRf MemVar_74C7D0
  loc_74372E: NewIfNullPr clsMsg
  loc_743731: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743736: ILdRf var_1D4
  loc_743739: LitStr " "
  loc_74373C: ConcatStr
  loc_74373D: FStStrNoPop var_1DC
  loc_743740: FMemLdR4 arg_8(7552)
  loc_743745: ConcatStr
  loc_743746: FStStrNoPop var_1E0
  loc_743749: LitStr " "
  loc_74374C: ConcatStr
  loc_74374D: FStStrNoPop var_394
  loc_743750: FLdRfVar var_390
  loc_743753: LitVar_Missing var_324
  loc_743756: LitVar_Missing var_304
  loc_743759: LitVar_Missing var_2E4
  loc_74375C: LitVar_Missing var_2C4
  loc_74375F: LitVar_Missing var_2A4
  loc_743762: LitVar_Missing var_284
  loc_743765: LitVar_Missing var_264
  loc_743768: LitVar_Missing var_244
  loc_74376B: LitVar_Missing var_224
  loc_74376E: LitVar_Missing var_200
  loc_743771: LitStr "con precio distinto"
  loc_743774: FStStrCopy var_348
  loc_743777: FLdRfVar var_348
  loc_74377A: LitI4 &H77
  loc_74377F: PopTmpLdAdStr var_204
  loc_743782: LitI2_Byte &H21
  loc_743784: PopTmpLdAd2 var_1D6
  loc_743787: ImpAdLdRf MemVar_74C7D0
  loc_74378A: NewIfNullPr clsMsg
  loc_74378D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743792: ILdRf var_390
  loc_743795: ConcatStr
  loc_743796: FStStrNoPop var_398
  loc_743799: LitI4 &H12
  loc_74379E: FMemLdRf unk_418E79
  loc_7437A3: AryInRecLdPr
  loc_7437A9: MemStStrCopy
  loc_7437AD: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_348 = "": var_394 = "": var_390 = ""
  loc_7437C0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_7437EB: FLdRfVar var_1D4
  loc_7437EE: LitVar_Missing var_1D0
  loc_7437F1: LitVar_Missing var_1B0
  loc_7437F4: LitVar_Missing var_190
  loc_7437F7: LitVar_Missing var_170
  loc_7437FA: LitVar_Missing var_150
  loc_7437FD: LitVar_Missing var_130
  loc_743800: LitVar_Missing var_110
  loc_743803: LitVar_Missing var_F0
  loc_743806: LitVar_Missing var_D0
  loc_743809: LitVar_Missing var_B0
  loc_74380C: LitStr "Modificación de configuración"
  loc_74380F: FStStrCopy var_90
  loc_743812: FLdRfVar var_90
  loc_743815: LitI4 &H78
  loc_74381A: PopTmpLdAdStr var_8C
  loc_74381D: LitI2_Byte &H21
  loc_74381F: PopTmpLdAd2 var_86
  loc_743822: ImpAdLdRf MemVar_74C7D0
  loc_743825: NewIfNullPr clsMsg
  loc_743828: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74382D: ILdRf var_1D4
  loc_743830: LitI4 &H13
  loc_743835: FMemLdRf unk_418E79
  loc_74383A: AryInRecLdPr
  loc_743840: MemStStrCopy
  loc_743844: FFreeStr var_90 = ""
  loc_74384B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743862: FLdRfVar var_1D4
  loc_743865: LitVar_Missing var_1D0
  loc_743868: LitVar_Missing var_1B0
  loc_74386B: LitVar_Missing var_190
  loc_74386E: LitVar_Missing var_170
  loc_743871: LitVar_Missing var_150
  loc_743874: LitVar_Missing var_130
  loc_743877: LitVar_Missing var_110
  loc_74387A: LitVar_Missing var_F0
  loc_74387D: LitVar_Missing var_D0
  loc_743880: LitVar_Missing var_B0
  loc_743883: LitStr "Emisión de factura diferencia"
  loc_743886: FStStrCopy var_90
  loc_743889: FLdRfVar var_90
  loc_74388C: LitI4 &H79
  loc_743891: PopTmpLdAdStr var_8C
  loc_743894: LitI2_Byte &H21
  loc_743896: PopTmpLdAd2 var_86
  loc_743899: ImpAdLdRf MemVar_74C7D0
  loc_74389C: NewIfNullPr clsMsg
  loc_74389F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7438A4: ILdRf var_1D4
  loc_7438A7: LitI4 &H14
  loc_7438AC: FMemLdRf unk_418E79
  loc_7438B1: AryInRecLdPr
  loc_7438B7: MemStStrCopy
  loc_7438BB: FFreeStr var_90 = ""
  loc_7438C2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7438D9: FLdRfVar var_1D4
  loc_7438DC: LitVar_Missing var_1D0
  loc_7438DF: LitVar_Missing var_1B0
  loc_7438E2: LitVar_Missing var_190
  loc_7438E5: LitVar_Missing var_170
  loc_7438E8: LitVar_Missing var_150
  loc_7438EB: LitVar_Missing var_130
  loc_7438EE: LitVar_Missing var_110
  loc_7438F1: LitVar_Missing var_F0
  loc_7438F4: LitVar_Missing var_D0
  loc_7438F7: LitVar_Missing var_B0
  loc_7438FA: LitStr "Emisión de reportes estadísticos"
  loc_7438FD: FStStrCopy var_90
  loc_743900: FLdRfVar var_90
  loc_743903: LitI4 &H7A
  loc_743908: PopTmpLdAdStr var_8C
  loc_74390B: LitI2_Byte &H21
  loc_74390D: PopTmpLdAd2 var_86
  loc_743910: ImpAdLdRf MemVar_74C7D0
  loc_743913: NewIfNullPr clsMsg
  loc_743916: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74391B: ILdRf var_1D4
  loc_74391E: LitI4 &H15
  loc_743923: FMemLdRf unk_418E79
  loc_743928: AryInRecLdPr
  loc_74392E: MemStStrCopy
  loc_743932: FFreeStr var_90 = ""
  loc_743939: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743950: FLdRfVar var_1D4
  loc_743953: LitVar_Missing var_1D0
  loc_743956: LitVar_Missing var_1B0
  loc_743959: LitVar_Missing var_190
  loc_74395C: LitVar_Missing var_170
  loc_74395F: LitVar_Missing var_150
  loc_743962: LitVar_Missing var_130
  loc_743965: LitVar_Missing var_110
  loc_743968: LitVar_Missing var_F0
  loc_74396B: LitVar_Missing var_D0
  loc_74396E: LitVar_Missing var_B0
  loc_743971: LitStr "Emisión del Documento Legal"
  loc_743974: FStStrCopy var_90
  loc_743977: FLdRfVar var_90
  loc_74397A: LitI4 &H7B
  loc_74397F: PopTmpLdAdStr var_8C
  loc_743982: LitI2_Byte &H21
  loc_743984: PopTmpLdAd2 var_86
  loc_743987: ImpAdLdRf MemVar_74C7D0
  loc_74398A: NewIfNullPr clsMsg
  loc_74398D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743992: ILdRf var_1D4
  loc_743995: LitI4 &H16
  loc_74399A: FMemLdRf unk_418E79
  loc_74399F: AryInRecLdPr
  loc_7439A5: MemStStrCopy
  loc_7439A9: FFreeStr var_90 = ""
  loc_7439B0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7439C7: FLdRfVar var_1D4
  loc_7439CA: LitVar_Missing var_1D0
  loc_7439CD: LitVar_Missing var_1B0
  loc_7439D0: LitVar_Missing var_190
  loc_7439D3: LitVar_Missing var_170
  loc_7439D6: LitVar_Missing var_150
  loc_7439D9: LitVar_Missing var_130
  loc_7439DC: LitVar_Missing var_110
  loc_7439DF: LitVar_Missing var_F0
  loc_7439E2: LitVar_Missing var_D0
  loc_7439E5: LitVar_Missing var_B0
  loc_7439E8: LitStr "Emisión de reporte anexo III"
  loc_7439EB: FStStrCopy var_90
  loc_7439EE: FLdRfVar var_90
  loc_7439F1: LitI4 &H7C
  loc_7439F6: PopTmpLdAdStr var_8C
  loc_7439F9: LitI2_Byte &H21
  loc_7439FB: PopTmpLdAd2 var_86
  loc_7439FE: ImpAdLdRf MemVar_74C7D0
  loc_743A01: NewIfNullPr clsMsg
  loc_743A04: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743A09: ILdRf var_1D4
  loc_743A0C: LitI4 &H17
  loc_743A11: FMemLdRf unk_418E79
  loc_743A16: AryInRecLdPr
  loc_743A1C: MemStStrCopy
  loc_743A20: FFreeStr var_90 = ""
  loc_743A27: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743A3E: FLdRfVar var_1D4
  loc_743A41: LitVar_Missing var_1D0
  loc_743A44: LitVar_Missing var_1B0
  loc_743A47: LitVar_Missing var_190
  loc_743A4A: LitVar_Missing var_170
  loc_743A4D: LitVar_Missing var_150
  loc_743A50: LitVar_Missing var_130
  loc_743A53: LitVar_Missing var_110
  loc_743A56: LitVar_Missing var_F0
  loc_743A59: LitVar_Missing var_D0
  loc_743A5C: LitVar_Missing var_B0
  loc_743A5F: LitStr "Pulsado de tecla emergencia general"
  loc_743A62: FStStrCopy var_90
  loc_743A65: FLdRfVar var_90
  loc_743A68: LitI4 &H7D
  loc_743A6D: PopTmpLdAdStr var_8C
  loc_743A70: LitI2_Byte &H21
  loc_743A72: PopTmpLdAd2 var_86
  loc_743A75: ImpAdLdRf MemVar_74C7D0
  loc_743A78: NewIfNullPr clsMsg
  loc_743A7B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743A80: ILdRf var_1D4
  loc_743A83: LitI4 &H18
  loc_743A88: FMemLdRf unk_418E79
  loc_743A8D: AryInRecLdPr
  loc_743A93: MemStStrCopy
  loc_743A97: FFreeStr var_90 = ""
  loc_743A9E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743AB5: FLdRfVar var_1D4
  loc_743AB8: LitVar_Missing var_1D0
  loc_743ABB: LitVar_Missing var_1B0
  loc_743ABE: LitVar_Missing var_190
  loc_743AC1: LitVar_Missing var_170
  loc_743AC4: LitVar_Missing var_150
  loc_743AC7: LitVar_Missing var_130
  loc_743ACA: LitVar_Missing var_110
  loc_743ACD: LitVar_Missing var_F0
  loc_743AD0: LitVar_Missing var_D0
  loc_743AD3: LitVar_Missing var_B0
  loc_743AD6: LitStr "Pulsado de tecla cancelación de emergencia general"
  loc_743AD9: FStStrCopy var_90
  loc_743ADC: FLdRfVar var_90
  loc_743ADF: LitI4 &H7E
  loc_743AE4: PopTmpLdAdStr var_8C
  loc_743AE7: LitI2_Byte &H21
  loc_743AE9: PopTmpLdAd2 var_86
  loc_743AEC: ImpAdLdRf MemVar_74C7D0
  loc_743AEF: NewIfNullPr clsMsg
  loc_743AF2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743AF7: ILdRf var_1D4
  loc_743AFA: LitI4 &H19
  loc_743AFF: FMemLdRf unk_418E79
  loc_743B04: AryInRecLdPr
  loc_743B0A: MemStStrCopy
  loc_743B0E: FFreeStr var_90 = ""
  loc_743B15: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743B2C: FLdRfVar var_1D4
  loc_743B2F: LitVar_Missing var_1D0
  loc_743B32: LitVar_Missing var_1B0
  loc_743B35: LitVar_Missing var_190
  loc_743B38: LitVar_Missing var_170
  loc_743B3B: LitVar_Missing var_150
  loc_743B3E: LitVar_Missing var_130
  loc_743B41: LitVar_Missing var_110
  loc_743B44: LitVar_Missing var_F0
  loc_743B47: LitVar_Missing var_D0
  loc_743B4A: LitVar_Missing var_B0
  loc_743B4D: LitStr "Pulsado de tecla parada de un surtidor"
  loc_743B50: FStStrCopy var_90
  loc_743B53: FLdRfVar var_90
  loc_743B56: LitI4 &H7F
  loc_743B5B: PopTmpLdAdStr var_8C
  loc_743B5E: LitI2_Byte &H21
  loc_743B60: PopTmpLdAd2 var_86
  loc_743B63: ImpAdLdRf MemVar_74C7D0
  loc_743B66: NewIfNullPr clsMsg
  loc_743B69: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743B6E: ILdRf var_1D4
  loc_743B71: LitI4 &H1A
  loc_743B76: FMemLdRf unk_418E79
  loc_743B7B: AryInRecLdPr
  loc_743B81: MemStStrCopy
  loc_743B85: FFreeStr var_90 = ""
  loc_743B8C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743BA3: FLdRfVar var_1D4
  loc_743BA6: LitVar_Missing var_1D0
  loc_743BA9: LitVar_Missing var_1B0
  loc_743BAC: LitVar_Missing var_190
  loc_743BAF: LitVar_Missing var_170
  loc_743BB2: LitVar_Missing var_150
  loc_743BB5: LitVar_Missing var_130
  loc_743BB8: LitVar_Missing var_110
  loc_743BBB: LitVar_Missing var_F0
  loc_743BBE: LitVar_Missing var_D0
  loc_743BC1: LitVar_Missing var_B0
  loc_743BC4: LitStr "Cambio de opción decimal en precios unitarios"
  loc_743BC7: FStStrCopy var_90
  loc_743BCA: FLdRfVar var_90
  loc_743BCD: LitI4 &H80
  loc_743BD2: PopTmpLdAdStr var_8C
  loc_743BD5: LitI2_Byte &H21
  loc_743BD7: PopTmpLdAd2 var_86
  loc_743BDA: ImpAdLdRf MemVar_74C7D0
  loc_743BDD: NewIfNullPr clsMsg
  loc_743BE0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743BE5: ILdRf var_1D4
  loc_743BE8: LitI4 &H1B
  loc_743BED: FMemLdRf unk_418E79
  loc_743BF2: AryInRecLdPr
  loc_743BF8: MemStStrCopy
  loc_743BFC: FFreeStr var_90 = ""
  loc_743C03: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743C1A: FLdRfVar var_1D4
  loc_743C1D: LitVar_Missing var_1D0
  loc_743C20: LitVar_Missing var_1B0
  loc_743C23: LitVar_Missing var_190
  loc_743C26: LitVar_Missing var_170
  loc_743C29: LitVar_Missing var_150
  loc_743C2C: LitVar_Missing var_130
  loc_743C2F: LitVar_Missing var_110
  loc_743C32: LitVar_Missing var_F0
  loc_743C35: LitVar_Missing var_D0
  loc_743C38: LitVar_Missing var_B0
  loc_743C3B: LitStr "Recepción de comandos ilegales en el controlador"
  loc_743C3E: FStStrCopy var_90
  loc_743C41: FLdRfVar var_90
  loc_743C44: LitI4 &H81
  loc_743C49: PopTmpLdAdStr var_8C
  loc_743C4C: LitI2_Byte &H21
  loc_743C4E: PopTmpLdAd2 var_86
  loc_743C51: ImpAdLdRf MemVar_74C7D0
  loc_743C54: NewIfNullPr clsMsg
  loc_743C57: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743C5C: ILdRf var_1D4
  loc_743C5F: LitI4 &H1C
  loc_743C64: FMemLdRf unk_418E79
  loc_743C69: AryInRecLdPr
  loc_743C6F: MemStStrCopy
  loc_743C73: FFreeStr var_90 = ""
  loc_743C7A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743C91: FLdRfVar var_1D4
  loc_743C94: LitVar_Missing var_1D0
  loc_743C97: LitVar_Missing var_1B0
  loc_743C9A: LitVar_Missing var_190
  loc_743C9D: LitVar_Missing var_170
  loc_743CA0: LitVar_Missing var_150
  loc_743CA3: LitVar_Missing var_130
  loc_743CA6: LitVar_Missing var_110
  loc_743CA9: LitVar_Missing var_F0
  loc_743CAC: LitVar_Missing var_D0
  loc_743CAF: LitVar_Missing var_B0
  loc_743CB2: LitStr "Cambio de manifold de un tanque"
  loc_743CB5: FStStrCopy var_90
  loc_743CB8: FLdRfVar var_90
  loc_743CBB: LitI4 &H82
  loc_743CC0: PopTmpLdAdStr var_8C
  loc_743CC3: LitI2_Byte &H21
  loc_743CC5: PopTmpLdAd2 var_86
  loc_743CC8: ImpAdLdRf MemVar_74C7D0
  loc_743CCB: NewIfNullPr clsMsg
  loc_743CCE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743CD3: ILdRf var_1D4
  loc_743CD6: LitI4 &H1D
  loc_743CDB: FMemLdRf unk_418E79
  loc_743CE0: AryInRecLdPr
  loc_743CE6: MemStStrCopy
  loc_743CEA: FFreeStr var_90 = ""
  loc_743CF1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743D08: FLdRfVar var_1D4
  loc_743D0B: LitVar_Missing var_1D0
  loc_743D0E: LitVar_Missing var_1B0
  loc_743D11: LitVar_Missing var_190
  loc_743D14: LitVar_Missing var_170
  loc_743D17: LitVar_Missing var_150
  loc_743D1A: LitVar_Missing var_130
  loc_743D1D: LitVar_Missing var_110
  loc_743D20: LitVar_Missing var_F0
  loc_743D23: LitVar_Missing var_D0
  loc_743D26: LitVar_Missing var_B0
  loc_743D29: LitStr "Ingreso de combustible a un tanque"
  loc_743D2C: FStStrCopy var_90
  loc_743D2F: FLdRfVar var_90
  loc_743D32: LitI4 &H83
  loc_743D37: PopTmpLdAdStr var_8C
  loc_743D3A: LitI2_Byte &H21
  loc_743D3C: PopTmpLdAd2 var_86
  loc_743D3F: ImpAdLdRf MemVar_74C7D0
  loc_743D42: NewIfNullPr clsMsg
  loc_743D45: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743D4A: ILdRf var_1D4
  loc_743D4D: LitI4 &H1E
  loc_743D52: FMemLdRf unk_418E79
  loc_743D57: AryInRecLdPr
  loc_743D5D: MemStStrCopy
  loc_743D61: FFreeStr var_90 = ""
  loc_743D68: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743D7F: FLdRfVar var_1D4
  loc_743D82: LitVar_Missing var_1D0
  loc_743D85: LitVar_Missing var_1B0
  loc_743D88: LitVar_Missing var_190
  loc_743D8B: LitVar_Missing var_170
  loc_743D8E: LitVar_Missing var_150
  loc_743D91: LitVar_Missing var_130
  loc_743D94: LitVar_Missing var_110
  loc_743D97: LitVar_Missing var_F0
  loc_743D9A: LitVar_Missing var_D0
  loc_743D9D: LitVar_Missing var_B0
  loc_743DA0: LitStr "Egreso de combustible a un tanque"
  loc_743DA3: FStStrCopy var_90
  loc_743DA6: FLdRfVar var_90
  loc_743DA9: LitI4 &H84
  loc_743DAE: PopTmpLdAdStr var_8C
  loc_743DB1: LitI2_Byte &H21
  loc_743DB3: PopTmpLdAd2 var_86
  loc_743DB6: ImpAdLdRf MemVar_74C7D0
  loc_743DB9: NewIfNullPr clsMsg
  loc_743DBC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743DC1: ILdRf var_1D4
  loc_743DC4: LitI4 &H1F
  loc_743DC9: FMemLdRf unk_418E79
  loc_743DCE: AryInRecLdPr
  loc_743DD4: MemStStrCopy
  loc_743DD8: FFreeStr var_90 = ""
  loc_743DDF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743DF6: FLdRfVar var_1D4
  loc_743DF9: LitVar_Missing var_1D0
  loc_743DFC: LitVar_Missing var_1B0
  loc_743DFF: LitVar_Missing var_190
  loc_743E02: LitVar_Missing var_170
  loc_743E05: LitVar_Missing var_150
  loc_743E08: LitVar_Missing var_130
  loc_743E0B: LitVar_Missing var_110
  loc_743E0E: LitVar_Missing var_F0
  loc_743E11: LitVar_Missing var_D0
  loc_743E14: LitVar_Missing var_B0
  loc_743E17: LitStr "Ingreso de mediciones a un tanque"
  loc_743E1A: FStStrCopy var_90
  loc_743E1D: FLdRfVar var_90
  loc_743E20: LitI4 &H85
  loc_743E25: PopTmpLdAdStr var_8C
  loc_743E28: LitI2_Byte &H21
  loc_743E2A: PopTmpLdAd2 var_86
  loc_743E2D: ImpAdLdRf MemVar_74C7D0
  loc_743E30: NewIfNullPr clsMsg
  loc_743E33: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743E38: ILdRf var_1D4
  loc_743E3B: LitI4 &H20
  loc_743E40: FMemLdRf unk_418E79
  loc_743E45: AryInRecLdPr
  loc_743E4B: MemStStrCopy
  loc_743E4F: FFreeStr var_90 = ""
  loc_743E56: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743E6D: FLdRfVar var_1D4
  loc_743E70: LitVar_Missing var_1D0
  loc_743E73: LitVar_Missing var_1B0
  loc_743E76: LitVar_Missing var_190
  loc_743E79: LitVar_Missing var_170
  loc_743E7C: LitVar_Missing var_150
  loc_743E7F: LitVar_Missing var_130
  loc_743E82: LitVar_Missing var_110
  loc_743E85: LitVar_Missing var_F0
  loc_743E88: LitVar_Missing var_D0
  loc_743E8B: LitVar_Missing var_B0
  loc_743E8E: LitStr "Emisión de libro de iva"
  loc_743E91: FStStrCopy var_90
  loc_743E94: FLdRfVar var_90
  loc_743E97: LitI4 &H86
  loc_743E9C: PopTmpLdAdStr var_8C
  loc_743E9F: LitI2_Byte &H21
  loc_743EA1: PopTmpLdAd2 var_86
  loc_743EA4: ImpAdLdRf MemVar_74C7D0
  loc_743EA7: NewIfNullPr clsMsg
  loc_743EAA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743EAF: ILdRf var_1D4
  loc_743EB2: LitI4 &H21
  loc_743EB7: FMemLdRf unk_418E79
  loc_743EBC: AryInRecLdPr
  loc_743EC2: MemStStrCopy
  loc_743EC6: FFreeStr var_90 = ""
  loc_743ECD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743EE4: FLdRfVar var_1D4
  loc_743EE7: LitVar_Missing var_1D0
  loc_743EEA: LitVar_Missing var_1B0
  loc_743EED: LitVar_Missing var_190
  loc_743EF0: LitVar_Missing var_170
  loc_743EF3: LitVar_Missing var_150
  loc_743EF6: LitVar_Missing var_130
  loc_743EF9: LitVar_Missing var_110
  loc_743EFC: LitVar_Missing var_F0
  loc_743EFF: LitVar_Missing var_D0
  loc_743F02: LitVar_Missing var_B0
  loc_743F05: LitStr "Alta de clientes"
  loc_743F08: FStStrCopy var_90
  loc_743F0B: FLdRfVar var_90
  loc_743F0E: LitI4 &H87
  loc_743F13: PopTmpLdAdStr var_8C
  loc_743F16: LitI2_Byte &H21
  loc_743F18: PopTmpLdAd2 var_86
  loc_743F1B: ImpAdLdRf MemVar_74C7D0
  loc_743F1E: NewIfNullPr clsMsg
  loc_743F21: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743F26: ILdRf var_1D4
  loc_743F29: LitI4 &H22
  loc_743F2E: FMemLdRf unk_418E79
  loc_743F33: AryInRecLdPr
  loc_743F39: MemStStrCopy
  loc_743F3D: FFreeStr var_90 = ""
  loc_743F44: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743F5B: FLdRfVar var_1D4
  loc_743F5E: LitVar_Missing var_1D0
  loc_743F61: LitVar_Missing var_1B0
  loc_743F64: LitVar_Missing var_190
  loc_743F67: LitVar_Missing var_170
  loc_743F6A: LitVar_Missing var_150
  loc_743F6D: LitVar_Missing var_130
  loc_743F70: LitVar_Missing var_110
  loc_743F73: LitVar_Missing var_F0
  loc_743F76: LitVar_Missing var_D0
  loc_743F79: LitVar_Missing var_B0
  loc_743F7C: LitStr "Alta de cuentas corrientes"
  loc_743F7F: FStStrCopy var_90
  loc_743F82: FLdRfVar var_90
  loc_743F85: LitI4 &H88
  loc_743F8A: PopTmpLdAdStr var_8C
  loc_743F8D: LitI2_Byte &H21
  loc_743F8F: PopTmpLdAd2 var_86
  loc_743F92: ImpAdLdRf MemVar_74C7D0
  loc_743F95: NewIfNullPr clsMsg
  loc_743F98: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_743F9D: ILdRf var_1D4
  loc_743FA0: LitI4 &H23
  loc_743FA5: FMemLdRf unk_418E79
  loc_743FAA: AryInRecLdPr
  loc_743FB0: MemStStrCopy
  loc_743FB4: FFreeStr var_90 = ""
  loc_743FBB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_743FD2: FLdRfVar var_1D4
  loc_743FD5: LitVar_Missing var_1D0
  loc_743FD8: LitVar_Missing var_1B0
  loc_743FDB: LitVar_Missing var_190
  loc_743FDE: LitVar_Missing var_170
  loc_743FE1: LitVar_Missing var_150
  loc_743FE4: LitVar_Missing var_130
  loc_743FE7: LitVar_Missing var_110
  loc_743FEA: LitVar_Missing var_F0
  loc_743FED: LitVar_Missing var_D0
  loc_743FF0: LitVar_Missing var_B0
  loc_743FF3: LitStr "Baja de clientes"
  loc_743FF6: FStStrCopy var_90
  loc_743FF9: FLdRfVar var_90
  loc_743FFC: LitI4 &H89
  loc_744001: PopTmpLdAdStr var_8C
  loc_744004: LitI2_Byte &H21
  loc_744006: PopTmpLdAd2 var_86
  loc_744009: ImpAdLdRf MemVar_74C7D0
  loc_74400C: NewIfNullPr clsMsg
  loc_74400F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744014: ILdRf var_1D4
  loc_744017: LitI4 &H24
  loc_74401C: FMemLdRf unk_418E79
  loc_744021: AryInRecLdPr
  loc_744027: MemStStrCopy
  loc_74402B: FFreeStr var_90 = ""
  loc_744032: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744049: FLdRfVar var_1D4
  loc_74404C: LitVar_Missing var_1D0
  loc_74404F: LitVar_Missing var_1B0
  loc_744052: LitVar_Missing var_190
  loc_744055: LitVar_Missing var_170
  loc_744058: LitVar_Missing var_150
  loc_74405B: LitVar_Missing var_130
  loc_74405E: LitVar_Missing var_110
  loc_744061: LitVar_Missing var_F0
  loc_744064: LitVar_Missing var_D0
  loc_744067: LitVar_Missing var_B0
  loc_74406A: LitStr "Baja de cuentas corrientes"
  loc_74406D: FStStrCopy var_90
  loc_744070: FLdRfVar var_90
  loc_744073: LitI4 &H8A
  loc_744078: PopTmpLdAdStr var_8C
  loc_74407B: LitI2_Byte &H21
  loc_74407D: PopTmpLdAd2 var_86
  loc_744080: ImpAdLdRf MemVar_74C7D0
  loc_744083: NewIfNullPr clsMsg
  loc_744086: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74408B: ILdRf var_1D4
  loc_74408E: LitI4 &H25
  loc_744093: FMemLdRf unk_418E79
  loc_744098: AryInRecLdPr
  loc_74409E: MemStStrCopy
  loc_7440A2: FFreeStr var_90 = ""
  loc_7440A9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7440C0: FLdRfVar var_1D4
  loc_7440C3: LitVar_Missing var_1D0
  loc_7440C6: LitVar_Missing var_1B0
  loc_7440C9: LitVar_Missing var_190
  loc_7440CC: LitVar_Missing var_170
  loc_7440CF: LitVar_Missing var_150
  loc_7440D2: LitVar_Missing var_130
  loc_7440D5: LitVar_Missing var_110
  loc_7440D8: LitVar_Missing var_F0
  loc_7440DB: LitVar_Missing var_D0
  loc_7440DE: LitVar_Missing var_B0
  loc_7440E1: LitStr "Desactivación del servicio de RAS"
  loc_7440E4: FStStrCopy var_90
  loc_7440E7: FLdRfVar var_90
  loc_7440EA: LitI4 &H8B
  loc_7440EF: PopTmpLdAdStr var_8C
  loc_7440F2: LitI2_Byte &H21
  loc_7440F4: PopTmpLdAd2 var_86
  loc_7440F7: ImpAdLdRf MemVar_74C7D0
  loc_7440FA: NewIfNullPr clsMsg
  loc_7440FD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744102: ILdRf var_1D4
  loc_744105: LitI4 &H26
  loc_74410A: FMemLdRf unk_418E79
  loc_74410F: AryInRecLdPr
  loc_744115: MemStStrCopy
  loc_744119: FFreeStr var_90 = ""
  loc_744120: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744137: FLdRfVar var_1D4
  loc_74413A: LitVar_Missing var_1D0
  loc_74413D: LitVar_Missing var_1B0
  loc_744140: LitVar_Missing var_190
  loc_744143: LitVar_Missing var_170
  loc_744146: LitVar_Missing var_150
  loc_744149: LitVar_Missing var_130
  loc_74414C: LitVar_Missing var_110
  loc_74414F: LitVar_Missing var_F0
  loc_744152: LitVar_Missing var_D0
  loc_744155: LitVar_Missing var_B0
  loc_744158: LitStr "Activación del servicio de RAS"
  loc_74415B: FStStrCopy var_90
  loc_74415E: FLdRfVar var_90
  loc_744161: LitI4 &H8C
  loc_744166: PopTmpLdAdStr var_8C
  loc_744169: LitI2_Byte &H21
  loc_74416B: PopTmpLdAd2 var_86
  loc_74416E: ImpAdLdRf MemVar_74C7D0
  loc_744171: NewIfNullPr clsMsg
  loc_744174: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744179: ILdRf var_1D4
  loc_74417C: LitI4 &H27
  loc_744181: FMemLdRf unk_418E79
  loc_744186: AryInRecLdPr
  loc_74418C: MemStStrCopy
  loc_744190: FFreeStr var_90 = ""
  loc_744197: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7441AE: FLdRfVar var_1D4
  loc_7441B1: LitVar_Missing var_1D0
  loc_7441B4: LitVar_Missing var_1B0
  loc_7441B7: LitVar_Missing var_190
  loc_7441BA: LitVar_Missing var_170
  loc_7441BD: LitVar_Missing var_150
  loc_7441C0: LitVar_Missing var_130
  loc_7441C3: LitVar_Missing var_110
  loc_7441C6: LitVar_Missing var_F0
  loc_7441C9: LitVar_Missing var_D0
  loc_7441CC: LitVar_Missing var_B0
  loc_7441CF: LitStr "Activación del servicio de Mail Transport"
  loc_7441D2: FStStrCopy var_90
  loc_7441D5: FLdRfVar var_90
  loc_7441D8: LitI4 &H8D
  loc_7441DD: PopTmpLdAdStr var_8C
  loc_7441E0: LitI2_Byte &H21
  loc_7441E2: PopTmpLdAd2 var_86
  loc_7441E5: ImpAdLdRf MemVar_74C7D0
  loc_7441E8: NewIfNullPr clsMsg
  loc_7441EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7441F0: ILdRf var_1D4
  loc_7441F3: LitI4 &H28
  loc_7441F8: FMemLdRf unk_418E79
  loc_7441FD: AryInRecLdPr
  loc_744203: MemStStrCopy
  loc_744207: FFreeStr var_90 = ""
  loc_74420E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744225: FLdRfVar var_1D4
  loc_744228: LitVar_Missing var_1D0
  loc_74422B: LitVar_Missing var_1B0
  loc_74422E: LitVar_Missing var_190
  loc_744231: LitVar_Missing var_170
  loc_744234: LitVar_Missing var_150
  loc_744237: LitVar_Missing var_130
  loc_74423A: LitVar_Missing var_110
  loc_74423D: LitVar_Missing var_F0
  loc_744240: LitVar_Missing var_D0
  loc_744243: LitVar_Missing var_B0
  loc_744246: LitStr "Desactivación del servicio de Mail Transport"
  loc_744249: FStStrCopy var_90
  loc_74424C: FLdRfVar var_90
  loc_74424F: LitI4 &H8E
  loc_744254: PopTmpLdAdStr var_8C
  loc_744257: LitI2_Byte &H21
  loc_744259: PopTmpLdAd2 var_86
  loc_74425C: ImpAdLdRf MemVar_74C7D0
  loc_74425F: NewIfNullPr clsMsg
  loc_744262: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744267: ILdRf var_1D4
  loc_74426A: LitI4 &H29
  loc_74426F: FMemLdRf unk_418E79
  loc_744274: AryInRecLdPr
  loc_74427A: MemStStrCopy
  loc_74427E: FFreeStr var_90 = ""
  loc_744285: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74429C: FLdRfVar var_1D4
  loc_74429F: LitVar_Missing var_1D0
  loc_7442A2: LitVar_Missing var_1B0
  loc_7442A5: LitVar_Missing var_190
  loc_7442A8: LitVar_Missing var_170
  loc_7442AB: LitVar_Missing var_150
  loc_7442AE: LitVar_Missing var_130
  loc_7442B1: LitVar_Missing var_110
  loc_7442B4: LitVar_Missing var_F0
  loc_7442B7: LitVar_Missing var_D0
  loc_7442BA: LitVar_Missing var_B0
  loc_7442BD: LitStr "Informe de estado de finalizacion del Mail Transport"
  loc_7442C0: FStStrCopy var_90
  loc_7442C3: FLdRfVar var_90
  loc_7442C6: LitI4 &H8F
  loc_7442CB: PopTmpLdAdStr var_8C
  loc_7442CE: LitI2_Byte &H21
  loc_7442D0: PopTmpLdAd2 var_86
  loc_7442D3: ImpAdLdRf MemVar_74C7D0
  loc_7442D6: NewIfNullPr clsMsg
  loc_7442D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7442DE: ILdRf var_1D4
  loc_7442E1: LitI4 &H2A
  loc_7442E6: FMemLdRf unk_418E79
  loc_7442EB: AryInRecLdPr
  loc_7442F1: MemStStrCopy
  loc_7442F5: FFreeStr var_90 = ""
  loc_7442FC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744313: FLdRfVar var_1D4
  loc_744316: LitVar_Missing var_1D0
  loc_744319: LitVar_Missing var_1B0
  loc_74431C: LitVar_Missing var_190
  loc_74431F: LitVar_Missing var_170
  loc_744322: LitVar_Missing var_150
  loc_744325: LitVar_Missing var_130
  loc_744328: LitVar_Missing var_110
  loc_74432B: LitVar_Missing var_F0
  loc_74432E: LitVar_Missing var_D0
  loc_744331: LitVar_Missing var_B0
  loc_744334: LitStr "Modificación del número de factura"
  loc_744337: FStStrCopy var_90
  loc_74433A: FLdRfVar var_90
  loc_74433D: LitI4 &H90
  loc_744342: PopTmpLdAdStr var_8C
  loc_744345: LitI2_Byte &H21
  loc_744347: PopTmpLdAd2 var_86
  loc_74434A: ImpAdLdRf MemVar_74C7D0
  loc_74434D: NewIfNullPr clsMsg
  loc_744350: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744355: ILdRf var_1D4
  loc_744358: LitI4 &H2B
  loc_74435D: FMemLdRf unk_418E79
  loc_744362: AryInRecLdPr
  loc_744368: MemStStrCopy
  loc_74436C: FFreeStr var_90 = ""
  loc_744373: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74438A: FLdRfVar var_1D4
  loc_74438D: LitVar_Missing var_1D0
  loc_744390: LitVar_Missing var_1B0
  loc_744393: LitVar_Missing var_190
  loc_744396: LitVar_Missing var_170
  loc_744399: LitVar_Missing var_150
  loc_74439C: LitVar_Missing var_130
  loc_74439F: LitVar_Missing var_110
  loc_7443A2: LitVar_Missing var_F0
  loc_7443A5: LitVar_Missing var_D0
  loc_7443A8: LitVar_Missing var_B0
  loc_7443AB: LitStr "Modificación de datos para facturación"
  loc_7443AE: FStStrCopy var_90
  loc_7443B1: FLdRfVar var_90
  loc_7443B4: LitI4 &H91
  loc_7443B9: PopTmpLdAdStr var_8C
  loc_7443BC: LitI2_Byte &H21
  loc_7443BE: PopTmpLdAd2 var_86
  loc_7443C1: ImpAdLdRf MemVar_74C7D0
  loc_7443C4: NewIfNullPr clsMsg
  loc_7443C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7443CC: ILdRf var_1D4
  loc_7443CF: LitI4 &H2C
  loc_7443D4: FMemLdRf unk_418E79
  loc_7443D9: AryInRecLdPr
  loc_7443DF: MemStStrCopy
  loc_7443E3: FFreeStr var_90 = ""
  loc_7443EA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744401: FLdRfVar var_1D4
  loc_744404: LitVar_Missing var_1D0
  loc_744407: LitVar_Missing var_1B0
  loc_74440A: LitVar_Missing var_190
  loc_74440D: LitVar_Missing var_170
  loc_744410: LitVar_Missing var_150
  loc_744413: LitVar_Missing var_130
  loc_744416: LitVar_Missing var_110
  loc_744419: LitVar_Missing var_F0
  loc_74441C: LitVar_Missing var_D0
  loc_74441F: LitVar_Missing var_B0
  loc_744422: LitStr "Prueba de"
  loc_744425: FStStrCopy var_90
  loc_744428: FLdRfVar var_90
  loc_74442B: LitI4 &H92
  loc_744430: PopTmpLdAdStr var_8C
  loc_744433: LitI2_Byte &H21
  loc_744435: PopTmpLdAd2 var_86
  loc_744438: ImpAdLdRf MemVar_74C7D0
  loc_74443B: NewIfNullPr clsMsg
  loc_74443E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744443: ILdRf var_1D4
  loc_744446: LitStr " "
  loc_744449: ConcatStr
  loc_74444A: FStStrNoPop var_1DC
  loc_74444D: FMemLdR4 arg_8(7552)
  loc_744452: ConcatStr
  loc_744453: FStStrNoPop var_1E0
  loc_744456: LitI4 &H2D
  loc_74445B: FMemLdRf unk_418E79
  loc_744460: AryInRecLdPr
  loc_744466: MemStStrCopy
  loc_74446A: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_744475: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74448C: FLdRfVar var_1D4
  loc_74448F: LitVar_Missing var_1D0
  loc_744492: LitVar_Missing var_1B0
  loc_744495: LitVar_Missing var_190
  loc_744498: LitVar_Missing var_170
  loc_74449B: LitVar_Missing var_150
  loc_74449E: LitVar_Missing var_130
  loc_7444A1: LitVar_Missing var_110
  loc_7444A4: LitVar_Missing var_F0
  loc_7444A7: LitVar_Missing var_D0
  loc_7444AA: LitVar_Missing var_B0
  loc_7444AD: LitStr "Inicialización de"
  loc_7444B0: FStStrCopy var_90
  loc_7444B3: FLdRfVar var_90
  loc_7444B6: LitI4 &H93
  loc_7444BB: PopTmpLdAdStr var_8C
  loc_7444BE: LitI2_Byte &H21
  loc_7444C0: PopTmpLdAd2 var_86
  loc_7444C3: ImpAdLdRf MemVar_74C7D0
  loc_7444C6: NewIfNullPr clsMsg
  loc_7444C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7444CE: ILdRf var_1D4
  loc_7444D1: LitStr " "
  loc_7444D4: ConcatStr
  loc_7444D5: FStStrNoPop var_1DC
  loc_7444D8: FMemLdR4 arg_8(7552)
  loc_7444DD: ConcatStr
  loc_7444DE: FStStrNoPop var_1E0
  loc_7444E1: LitI4 &H2E
  loc_7444E6: FMemLdRf unk_418E79
  loc_7444EB: AryInRecLdPr
  loc_7444F1: MemStStrCopy
  loc_7444F5: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_744500: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744517: FLdRfVar var_1D4
  loc_74451A: LitVar_Missing var_1D0
  loc_74451D: LitVar_Missing var_1B0
  loc_744520: LitVar_Missing var_190
  loc_744523: LitVar_Missing var_170
  loc_744526: LitVar_Missing var_150
  loc_744529: LitVar_Missing var_130
  loc_74452C: LitVar_Missing var_110
  loc_74452F: LitVar_Missing var_F0
  loc_744532: LitVar_Missing var_D0
  loc_744535: LitVar_Missing var_B0
  loc_744538: LitStr "Retorno incorrecto de combustible"
  loc_74453B: FStStrCopy var_90
  loc_74453E: FLdRfVar var_90
  loc_744541: LitI4 &H94
  loc_744546: PopTmpLdAdStr var_8C
  loc_744549: LitI2_Byte &H21
  loc_74454B: PopTmpLdAd2 var_86
  loc_74454E: ImpAdLdRf MemVar_74C7D0
  loc_744551: NewIfNullPr clsMsg
  loc_744554: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744559: ILdRf var_1D4
  loc_74455C: LitI4 &H2F
  loc_744561: FMemLdRf unk_418E79
  loc_744566: AryInRecLdPr
  loc_74456C: MemStStrCopy
  loc_744570: FFreeStr var_90 = ""
  loc_744577: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74458E: FLdRfVar var_1D4
  loc_744591: LitVar_Missing var_1D0
  loc_744594: LitVar_Missing var_1B0
  loc_744597: LitVar_Missing var_190
  loc_74459A: LitVar_Missing var_170
  loc_74459D: LitVar_Missing var_150
  loc_7445A0: LitVar_Missing var_130
  loc_7445A3: LitVar_Missing var_110
  loc_7445A6: LitVar_Missing var_F0
  loc_7445A9: LitVar_Missing var_D0
  loc_7445AC: LitVar_Missing var_B0
  loc_7445AF: LitStr "Venta sin control excedida"
  loc_7445B2: FStStrCopy var_90
  loc_7445B5: FLdRfVar var_90
  loc_7445B8: LitI4 &H95
  loc_7445BD: PopTmpLdAdStr var_8C
  loc_7445C0: LitI2_Byte &H21
  loc_7445C2: PopTmpLdAd2 var_86
  loc_7445C5: ImpAdLdRf MemVar_74C7D0
  loc_7445C8: NewIfNullPr clsMsg
  loc_7445CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7445D0: ILdRf var_1D4
  loc_7445D3: LitI4 &H30
  loc_7445D8: FMemLdRf unk_418E79
  loc_7445DD: AryInRecLdPr
  loc_7445E3: MemStStrCopy
  loc_7445E7: FFreeStr var_90 = ""
  loc_7445EE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744605: FLdRfVar var_1D4
  loc_744608: LitVar_Missing var_1D0
  loc_74460B: LitVar_Missing var_1B0
  loc_74460E: LitVar_Missing var_190
  loc_744611: LitVar_Missing var_170
  loc_744614: LitVar_Missing var_150
  loc_744617: LitVar_Missing var_130
  loc_74461A: LitVar_Missing var_110
  loc_74461D: LitVar_Missing var_F0
  loc_744620: LitVar_Missing var_D0
  loc_744623: LitVar_Missing var_B0
  loc_744626: LitStr "PPU diferente NCS"
  loc_744629: FStStrCopy var_90
  loc_74462C: FLdRfVar var_90
  loc_74462F: LitI4 &H96
  loc_744634: PopTmpLdAdStr var_8C
  loc_744637: LitI2_Byte &H21
  loc_744639: PopTmpLdAd2 var_86
  loc_74463C: ImpAdLdRf MemVar_74C7D0
  loc_74463F: NewIfNullPr clsMsg
  loc_744642: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744647: ILdRf var_1D4
  loc_74464A: LitI4 &H31
  loc_74464F: FMemLdRf unk_418E79
  loc_744654: AryInRecLdPr
  loc_74465A: MemStStrCopy
  loc_74465E: FFreeStr var_90 = ""
  loc_744665: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74467C: FLdRfVar var_1D4
  loc_74467F: LitVar_Missing var_1D0
  loc_744682: LitVar_Missing var_1B0
  loc_744685: LitVar_Missing var_190
  loc_744688: LitVar_Missing var_170
  loc_74468B: LitVar_Missing var_150
  loc_74468E: LitVar_Missing var_130
  loc_744691: LitVar_Missing var_110
  loc_744694: LitVar_Missing var_F0
  loc_744697: LitVar_Missing var_D0
  loc_74469A: LitVar_Missing var_B0
  loc_74469D: LitStr "Logeo de usuario aceptado"
  loc_7446A0: FStStrCopy var_90
  loc_7446A3: FLdRfVar var_90
  loc_7446A6: LitI4 &H97
  loc_7446AB: PopTmpLdAdStr var_8C
  loc_7446AE: LitI2_Byte &H21
  loc_7446B0: PopTmpLdAd2 var_86
  loc_7446B3: ImpAdLdRf MemVar_74C7D0
  loc_7446B6: NewIfNullPr clsMsg
  loc_7446B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7446BE: ILdRf var_1D4
  loc_7446C1: LitI4 &H32
  loc_7446C6: FMemLdRf unk_418E79
  loc_7446CB: AryInRecLdPr
  loc_7446D1: MemStStrCopy
  loc_7446D5: FFreeStr var_90 = ""
  loc_7446DC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7446F3: FLdRfVar var_1D4
  loc_7446F6: LitVar_Missing var_1D0
  loc_7446F9: LitVar_Missing var_1B0
  loc_7446FC: LitVar_Missing var_190
  loc_7446FF: LitVar_Missing var_170
  loc_744702: LitVar_Missing var_150
  loc_744705: LitVar_Missing var_130
  loc_744708: LitVar_Missing var_110
  loc_74470B: LitVar_Missing var_F0
  loc_74470E: LitVar_Missing var_D0
  loc_744711: LitVar_Missing var_B0
  loc_744714: LitStr "Fallo logeo de usuario"
  loc_744717: FStStrCopy var_90
  loc_74471A: FLdRfVar var_90
  loc_74471D: LitI4 &H98
  loc_744722: PopTmpLdAdStr var_8C
  loc_744725: LitI2_Byte &H21
  loc_744727: PopTmpLdAd2 var_86
  loc_74472A: ImpAdLdRf MemVar_74C7D0
  loc_74472D: NewIfNullPr clsMsg
  loc_744730: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744735: ILdRf var_1D4
  loc_744738: LitI4 &H33
  loc_74473D: FMemLdRf unk_418E79
  loc_744742: AryInRecLdPr
  loc_744748: MemStStrCopy
  loc_74474C: FFreeStr var_90 = ""
  loc_744753: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74476A: FLdRfVar var_1D4
  loc_74476D: LitVar_Missing var_1D0
  loc_744770: LitVar_Missing var_1B0
  loc_744773: LitVar_Missing var_190
  loc_744776: LitVar_Missing var_170
  loc_744779: LitVar_Missing var_150
  loc_74477C: LitVar_Missing var_130
  loc_74477F: LitVar_Missing var_110
  loc_744782: LitVar_Missing var_F0
  loc_744785: LitVar_Missing var_D0
  loc_744788: LitVar_Missing var_B0
  loc_74478B: LitStr "Nuevo monto menor que monto anterior"
  loc_74478E: FStStrCopy var_90
  loc_744791: FLdRfVar var_90
  loc_744794: LitI4 &H99
  loc_744799: PopTmpLdAdStr var_8C
  loc_74479C: LitI2_Byte &H21
  loc_74479E: PopTmpLdAd2 var_86
  loc_7447A1: ImpAdLdRf MemVar_74C7D0
  loc_7447A4: NewIfNullPr clsMsg
  loc_7447A7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7447AC: ILdRf var_1D4
  loc_7447AF: LitI4 &H34
  loc_7447B4: FMemLdRf unk_418E79
  loc_7447B9: AryInRecLdPr
  loc_7447BF: MemStStrCopy
  loc_7447C3: FFreeStr var_90 = ""
  loc_7447CA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7447E1: FLdRfVar var_1D4
  loc_7447E4: LitVar_Missing var_1D0
  loc_7447E7: LitVar_Missing var_1B0
  loc_7447EA: LitVar_Missing var_190
  loc_7447ED: LitVar_Missing var_170
  loc_7447F0: LitVar_Missing var_150
  loc_7447F3: LitVar_Missing var_130
  loc_7447F6: LitVar_Missing var_110
  loc_7447F9: LitVar_Missing var_F0
  loc_7447FC: LitVar_Missing var_D0
  loc_7447FF: LitVar_Missing var_B0
  loc_744802: LitStr "Nuevo volumen menor que volumen anterior"
  loc_744805: FStStrCopy var_90
  loc_744808: FLdRfVar var_90
  loc_74480B: LitI4 &H9A
  loc_744810: PopTmpLdAdStr var_8C
  loc_744813: LitI2_Byte &H21
  loc_744815: PopTmpLdAd2 var_86
  loc_744818: ImpAdLdRf MemVar_74C7D0
  loc_74481B: NewIfNullPr clsMsg
  loc_74481E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744823: ILdRf var_1D4
  loc_744826: LitI4 &H35
  loc_74482B: FMemLdRf unk_418E79
  loc_744830: AryInRecLdPr
  loc_744836: MemStStrCopy
  loc_74483A: FFreeStr var_90 = ""
  loc_744841: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744858: FLdRfVar var_1D4
  loc_74485B: LitVar_Missing var_1D0
  loc_74485E: LitVar_Missing var_1B0
  loc_744861: LitVar_Missing var_190
  loc_744864: LitVar_Missing var_170
  loc_744867: LitVar_Missing var_150
  loc_74486A: LitVar_Missing var_130
  loc_74486D: LitVar_Missing var_110
  loc_744870: LitVar_Missing var_F0
  loc_744873: LitVar_Missing var_D0
  loc_744876: LitVar_Missing var_B0
  loc_744879: LitStr "Venta sin control reducida"
  loc_74487C: FStStrCopy var_90
  loc_74487F: FLdRfVar var_90
  loc_744882: LitI4 &H9B
  loc_744887: PopTmpLdAdStr var_8C
  loc_74488A: LitI2_Byte &H21
  loc_74488C: PopTmpLdAd2 var_86
  loc_74488F: ImpAdLdRf MemVar_74C7D0
  loc_744892: NewIfNullPr clsMsg
  loc_744895: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74489A: ILdRf var_1D4
  loc_74489D: LitI4 &H36
  loc_7448A2: FMemLdRf unk_418E79
  loc_7448A7: AryInRecLdPr
  loc_7448AD: MemStStrCopy
  loc_7448B1: FFreeStr var_90 = ""
  loc_7448B8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7448CF: FLdRfVar var_1D4
  loc_7448D2: LitVar_Missing var_1D0
  loc_7448D5: LitVar_Missing var_1B0
  loc_7448D8: LitVar_Missing var_190
  loc_7448DB: LitVar_Missing var_170
  loc_7448DE: LitVar_Missing var_150
  loc_7448E1: LitVar_Missing var_130
  loc_7448E4: LitVar_Missing var_110
  loc_7448E7: LitVar_Missing var_F0
  loc_7448EA: LitVar_Missing var_D0
  loc_7448ED: LitVar_Missing var_B0
  loc_7448F0: LitStr "Cambio de densidad recibido"
  loc_7448F3: FStStrCopy var_90
  loc_7448F6: FLdRfVar var_90
  loc_7448F9: LitI4 &H9C
  loc_7448FE: PopTmpLdAdStr var_8C
  loc_744901: LitI2_Byte &H21
  loc_744903: PopTmpLdAd2 var_86
  loc_744906: ImpAdLdRf MemVar_74C7D0
  loc_744909: NewIfNullPr clsMsg
  loc_74490C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744911: ILdRf var_1D4
  loc_744914: LitI4 &H37
  loc_744919: FMemLdRf unk_418E79
  loc_74491E: AryInRecLdPr
  loc_744924: MemStStrCopy
  loc_744928: FFreeStr var_90 = ""
  loc_74492F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744946: FLdRfVar var_1D4
  loc_744949: LitVar_Missing var_1D0
  loc_74494C: LitVar_Missing var_1B0
  loc_74494F: LitVar_Missing var_190
  loc_744952: LitVar_Missing var_170
  loc_744955: LitVar_Missing var_150
  loc_744958: LitVar_Missing var_130
  loc_74495B: LitVar_Missing var_110
  loc_74495E: LitVar_Missing var_F0
  loc_744961: LitVar_Missing var_D0
  loc_744964: LitVar_Missing var_B0
  loc_744967: LitStr "Cambio de densidad ejecutado"
  loc_74496A: FStStrCopy var_90
  loc_74496D: FLdRfVar var_90
  loc_744970: LitI4 &H9D
  loc_744975: PopTmpLdAdStr var_8C
  loc_744978: LitI2_Byte &H21
  loc_74497A: PopTmpLdAd2 var_86
  loc_74497D: ImpAdLdRf MemVar_74C7D0
  loc_744980: NewIfNullPr clsMsg
  loc_744983: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744988: ILdRf var_1D4
  loc_74498B: LitI4 &H38
  loc_744990: FMemLdRf unk_418E79
  loc_744995: AryInRecLdPr
  loc_74499B: MemStStrCopy
  loc_74499F: FFreeStr var_90 = ""
  loc_7449A6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7449BD: FLdRfVar var_1D4
  loc_7449C0: LitVar_Missing var_1D0
  loc_7449C3: LitVar_Missing var_1B0
  loc_7449C6: LitVar_Missing var_190
  loc_7449C9: LitVar_Missing var_170
  loc_7449CC: LitVar_Missing var_150
  loc_7449CF: LitVar_Missing var_130
  loc_7449D2: LitVar_Missing var_110
  loc_7449D5: LitVar_Missing var_F0
  loc_7449D8: LitVar_Missing var_D0
  loc_7449DB: LitVar_Missing var_B0
  loc_7449DE: LitStr "Densidad diferente detectada"
  loc_7449E1: FStStrCopy var_90
  loc_7449E4: FLdRfVar var_90
  loc_7449E7: LitI4 &H9E
  loc_7449EC: PopTmpLdAdStr var_8C
  loc_7449EF: LitI2_Byte &H21
  loc_7449F1: PopTmpLdAd2 var_86
  loc_7449F4: ImpAdLdRf MemVar_74C7D0
  loc_7449F7: NewIfNullPr clsMsg
  loc_7449FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7449FF: ILdRf var_1D4
  loc_744A02: LitI4 &H39
  loc_744A07: FMemLdRf unk_418E79
  loc_744A0C: AryInRecLdPr
  loc_744A12: MemStStrCopy
  loc_744A16: FFreeStr var_90 = ""
  loc_744A1D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744A34: FLdRfVar var_1D4
  loc_744A37: LitVar_Missing var_1D0
  loc_744A3A: LitVar_Missing var_1B0
  loc_744A3D: LitVar_Missing var_190
  loc_744A40: LitVar_Missing var_170
  loc_744A43: LitVar_Missing var_150
  loc_744A46: LitVar_Missing var_130
  loc_744A49: LitVar_Missing var_110
  loc_744A4C: LitVar_Missing var_F0
  loc_744A4F: LitVar_Missing var_D0
  loc_744A52: LitVar_Missing var_B0
  loc_744A55: LitStr "Se encontró una Nueva Versión en el directorio de entrada"
  loc_744A58: FStStrCopy var_90
  loc_744A5B: FLdRfVar var_90
  loc_744A5E: LitI4 &H12D
  loc_744A63: PopTmpLdAdStr var_8C
  loc_744A66: LitI2_Byte &H21
  loc_744A68: PopTmpLdAd2 var_86
  loc_744A6B: ImpAdLdRf MemVar_74C7D0
  loc_744A6E: NewIfNullPr clsMsg
  loc_744A71: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744A76: ILdRf var_1D4
  loc_744A79: LitI4 &H12C
  loc_744A7E: FMemLdRf unk_418E79
  loc_744A83: AryInRecLdPr
  loc_744A89: MemStStrCopy
  loc_744A8D: FFreeStr var_90 = ""
  loc_744A94: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744AAB: FLdRfVar var_1D4
  loc_744AAE: LitVar_Missing var_1D0
  loc_744AB1: LitVar_Missing var_1B0
  loc_744AB4: LitVar_Missing var_190
  loc_744AB7: LitVar_Missing var_170
  loc_744ABA: LitVar_Missing var_150
  loc_744ABD: LitVar_Missing var_130
  loc_744AC0: LitVar_Missing var_110
  loc_744AC3: LitVar_Missing var_F0
  loc_744AC6: LitVar_Missing var_D0
  loc_744AC9: LitVar_Missing var_B0
  loc_744ACC: LitStr "Error al procesar la Nueva Versión encontrada"
  loc_744ACF: FStStrCopy var_90
  loc_744AD2: FLdRfVar var_90
  loc_744AD5: LitI4 &H12E
  loc_744ADA: PopTmpLdAdStr var_8C
  loc_744ADD: LitI2_Byte &H21
  loc_744ADF: PopTmpLdAd2 var_86
  loc_744AE2: ImpAdLdRf MemVar_74C7D0
  loc_744AE5: NewIfNullPr clsMsg
  loc_744AE8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744AED: ILdRf var_1D4
  loc_744AF0: LitI4 &H12D
  loc_744AF5: FMemLdRf unk_418E79
  loc_744AFA: AryInRecLdPr
  loc_744B00: MemStStrCopy
  loc_744B04: FFreeStr var_90 = ""
  loc_744B0B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744B22: FLdRfVar var_1D4
  loc_744B25: LitVar_Missing var_1D0
  loc_744B28: LitVar_Missing var_1B0
  loc_744B2B: LitVar_Missing var_190
  loc_744B2E: LitVar_Missing var_170
  loc_744B31: LitVar_Missing var_150
  loc_744B34: LitVar_Missing var_130
  loc_744B37: LitVar_Missing var_110
  loc_744B3A: LitVar_Missing var_F0
  loc_744B3D: LitVar_Missing var_D0
  loc_744B40: LitVar_Missing var_B0
  loc_744B43: LitStr "La nueva versión se procesó sin errores y espera a ser activada"
  loc_744B46: FStStrCopy var_90
  loc_744B49: FLdRfVar var_90
  loc_744B4C: LitI4 &H12F
  loc_744B51: PopTmpLdAdStr var_8C
  loc_744B54: LitI2_Byte &H21
  loc_744B56: PopTmpLdAd2 var_86
  loc_744B59: ImpAdLdRf MemVar_74C7D0
  loc_744B5C: NewIfNullPr clsMsg
  loc_744B5F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744B64: ILdRf var_1D4
  loc_744B67: LitI4 &H12E
  loc_744B6C: FMemLdRf unk_418E79
  loc_744B71: AryInRecLdPr
  loc_744B77: MemStStrCopy
  loc_744B7B: FFreeStr var_90 = ""
  loc_744B82: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744B99: FLdRfVar var_1D4
  loc_744B9C: LitVar_Missing var_1D0
  loc_744B9F: LitVar_Missing var_1B0
  loc_744BA2: LitVar_Missing var_190
  loc_744BA5: LitVar_Missing var_170
  loc_744BA8: LitVar_Missing var_150
  loc_744BAB: LitVar_Missing var_130
  loc_744BAE: LitVar_Missing var_110
  loc_744BB1: LitVar_Missing var_F0
  loc_744BB4: LitVar_Missing var_D0
  loc_744BB7: LitVar_Missing var_B0
  loc_744BBA: LitStr "Se comenzó la activación de una nueva versión"
  loc_744BBD: FStStrCopy var_90
  loc_744BC0: FLdRfVar var_90
  loc_744BC3: LitI4 &H130
  loc_744BC8: PopTmpLdAdStr var_8C
  loc_744BCB: LitI2_Byte &H21
  loc_744BCD: PopTmpLdAd2 var_86
  loc_744BD0: ImpAdLdRf MemVar_74C7D0
  loc_744BD3: NewIfNullPr clsMsg
  loc_744BD6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744BDB: ILdRf var_1D4
  loc_744BDE: LitI4 &H12F
  loc_744BE3: FMemLdRf unk_418E79
  loc_744BE8: AryInRecLdPr
  loc_744BEE: MemStStrCopy
  loc_744BF2: FFreeStr var_90 = ""
  loc_744BF9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744C10: FLdRfVar var_1D4
  loc_744C13: LitVar_Missing var_1D0
  loc_744C16: LitVar_Missing var_1B0
  loc_744C19: LitVar_Missing var_190
  loc_744C1C: LitVar_Missing var_170
  loc_744C1F: LitVar_Missing var_150
  loc_744C22: LitVar_Missing var_130
  loc_744C25: LitVar_Missing var_110
  loc_744C28: LitVar_Missing var_F0
  loc_744C2B: LitVar_Missing var_D0
  loc_744C2E: LitVar_Missing var_B0
  loc_744C31: LitStr "Error en la activación de la nueva versión"
  loc_744C34: FStStrCopy var_90
  loc_744C37: FLdRfVar var_90
  loc_744C3A: LitI4 &H131
  loc_744C3F: PopTmpLdAdStr var_8C
  loc_744C42: LitI2_Byte &H21
  loc_744C44: PopTmpLdAd2 var_86
  loc_744C47: ImpAdLdRf MemVar_74C7D0
  loc_744C4A: NewIfNullPr clsMsg
  loc_744C4D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744C52: ILdRf var_1D4
  loc_744C55: LitI4 &H130
  loc_744C5A: FMemLdRf unk_418E79
  loc_744C5F: AryInRecLdPr
  loc_744C65: MemStStrCopy
  loc_744C69: FFreeStr var_90 = ""
  loc_744C70: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744C87: FLdRfVar var_1D4
  loc_744C8A: LitVar_Missing var_1D0
  loc_744C8D: LitVar_Missing var_1B0
  loc_744C90: LitVar_Missing var_190
  loc_744C93: LitVar_Missing var_170
  loc_744C96: LitVar_Missing var_150
  loc_744C99: LitVar_Missing var_130
  loc_744C9C: LitVar_Missing var_110
  loc_744C9F: LitVar_Missing var_F0
  loc_744CA2: LitVar_Missing var_D0
  loc_744CA5: LitVar_Missing var_B0
  loc_744CA8: LitStr "La activación del SMS para procesar la nueva versión se realizó exitósamente"
  loc_744CAB: FStStrCopy var_90
  loc_744CAE: FLdRfVar var_90
  loc_744CB1: LitI4 &H132
  loc_744CB6: PopTmpLdAdStr var_8C
  loc_744CB9: LitI2_Byte &H21
  loc_744CBB: PopTmpLdAd2 var_86
  loc_744CBE: ImpAdLdRf MemVar_74C7D0
  loc_744CC1: NewIfNullPr clsMsg
  loc_744CC4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744CC9: ILdRf var_1D4
  loc_744CCC: LitI4 &H131
  loc_744CD1: FMemLdRf unk_418E79
  loc_744CD6: AryInRecLdPr
  loc_744CDC: MemStStrCopy
  loc_744CE0: FFreeStr var_90 = ""
  loc_744CE7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744CFE: FLdRfVar var_1D4
  loc_744D01: LitVar_Missing var_1D0
  loc_744D04: LitVar_Missing var_1B0
  loc_744D07: LitVar_Missing var_190
  loc_744D0A: LitVar_Missing var_170
  loc_744D0D: LitVar_Missing var_150
  loc_744D10: LitVar_Missing var_130
  loc_744D13: LitVar_Missing var_110
  loc_744D16: LitVar_Missing var_F0
  loc_744D19: LitVar_Missing var_D0
  loc_744D1C: LitVar_Missing var_B0
  loc_744D1F: LitStr "Se inició el servicio de System Management"
  loc_744D22: FStStrCopy var_90
  loc_744D25: FLdRfVar var_90
  loc_744D28: LitI4 &H15F
  loc_744D2D: PopTmpLdAdStr var_8C
  loc_744D30: LitI2_Byte &H21
  loc_744D32: PopTmpLdAd2 var_86
  loc_744D35: ImpAdLdRf MemVar_74C7D0
  loc_744D38: NewIfNullPr clsMsg
  loc_744D3B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744D40: ILdRf var_1D4
  loc_744D43: LitI4 &H15E
  loc_744D48: FMemLdRf unk_418E79
  loc_744D4D: AryInRecLdPr
  loc_744D53: MemStStrCopy
  loc_744D57: FFreeStr var_90 = ""
  loc_744D5E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744D75: FLdRfVar var_1D4
  loc_744D78: LitVar_Missing var_1D0
  loc_744D7B: LitVar_Missing var_1B0
  loc_744D7E: LitVar_Missing var_190
  loc_744D81: LitVar_Missing var_170
  loc_744D84: LitVar_Missing var_150
  loc_744D87: LitVar_Missing var_130
  loc_744D8A: LitVar_Missing var_110
  loc_744D8D: LitVar_Missing var_F0
  loc_744D90: LitVar_Missing var_D0
  loc_744D93: LitVar_Missing var_B0
  loc_744D96: LitStr "Finalizó el servicio de System Management"
  loc_744D99: FStStrCopy var_90
  loc_744D9C: FLdRfVar var_90
  loc_744D9F: LitI4 &H160
  loc_744DA4: PopTmpLdAdStr var_8C
  loc_744DA7: LitI2_Byte &H21
  loc_744DA9: PopTmpLdAd2 var_86
  loc_744DAC: ImpAdLdRf MemVar_74C7D0
  loc_744DAF: NewIfNullPr clsMsg
  loc_744DB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744DB7: ILdRf var_1D4
  loc_744DBA: LitI4 &H15F
  loc_744DBF: FMemLdRf unk_418E79
  loc_744DC4: AryInRecLdPr
  loc_744DCA: MemStStrCopy
  loc_744DCE: FFreeStr var_90 = ""
  loc_744DD5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744DEC: FLdRfVar var_1D4
  loc_744DEF: LitVar_Missing var_1D0
  loc_744DF2: LitVar_Missing var_1B0
  loc_744DF5: LitVar_Missing var_190
  loc_744DF8: LitVar_Missing var_170
  loc_744DFB: LitVar_Missing var_150
  loc_744DFE: LitVar_Missing var_130
  loc_744E01: LitVar_Missing var_110
  loc_744E04: LitVar_Missing var_F0
  loc_744E07: LitVar_Missing var_D0
  loc_744E0A: LitVar_Missing var_B0
  loc_744E0D: LitStr "Error durante la ejecución del SystemManagement"
  loc_744E10: FStStrCopy var_90
  loc_744E13: FLdRfVar var_90
  loc_744E16: LitI4 &H161
  loc_744E1B: PopTmpLdAdStr var_8C
  loc_744E1E: LitI2_Byte &H21
  loc_744E20: PopTmpLdAd2 var_86
  loc_744E23: ImpAdLdRf MemVar_74C7D0
  loc_744E26: NewIfNullPr clsMsg
  loc_744E29: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744E2E: ILdRf var_1D4
  loc_744E31: LitI4 &H160
  loc_744E36: FMemLdRf unk_418E79
  loc_744E3B: AryInRecLdPr
  loc_744E41: MemStStrCopy
  loc_744E45: FFreeStr var_90 = ""
  loc_744E4C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744E63: FLdRfVar var_1D4
  loc_744E66: LitVar_Missing var_1D0
  loc_744E69: LitVar_Missing var_1B0
  loc_744E6C: LitVar_Missing var_190
  loc_744E6F: LitVar_Missing var_170
  loc_744E72: LitVar_Missing var_150
  loc_744E75: LitVar_Missing var_130
  loc_744E78: LitVar_Missing var_110
  loc_744E7B: LitVar_Missing var_F0
  loc_744E7E: LitVar_Missing var_D0
  loc_744E81: LitVar_Missing var_B0
  loc_744E84: LitStr "Error intentando bajar un servicio"
  loc_744E87: FStStrCopy var_90
  loc_744E8A: FLdRfVar var_90
  loc_744E8D: LitI4 &H162
  loc_744E92: PopTmpLdAdStr var_8C
  loc_744E95: LitI2_Byte &H21
  loc_744E97: PopTmpLdAd2 var_86
  loc_744E9A: ImpAdLdRf MemVar_74C7D0
  loc_744E9D: NewIfNullPr clsMsg
  loc_744EA0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744EA5: ILdRf var_1D4
  loc_744EA8: LitI4 &H161
  loc_744EAD: FMemLdRf unk_418E79
  loc_744EB2: AryInRecLdPr
  loc_744EB8: MemStStrCopy
  loc_744EBC: FFreeStr var_90 = ""
  loc_744EC3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744EDA: FLdRfVar var_1D4
  loc_744EDD: LitVar_Missing var_1D0
  loc_744EE0: LitVar_Missing var_1B0
  loc_744EE3: LitVar_Missing var_190
  loc_744EE6: LitVar_Missing var_170
  loc_744EE9: LitVar_Missing var_150
  loc_744EEC: LitVar_Missing var_130
  loc_744EEF: LitVar_Missing var_110
  loc_744EF2: LitVar_Missing var_F0
  loc_744EF5: LitVar_Missing var_D0
  loc_744EF8: LitVar_Missing var_B0
  loc_744EFB: LitStr "La baja de servicios finalizó correctamente"
  loc_744EFE: FStStrCopy var_90
  loc_744F01: FLdRfVar var_90
  loc_744F04: LitI4 &H163
  loc_744F09: PopTmpLdAdStr var_8C
  loc_744F0C: LitI2_Byte &H21
  loc_744F0E: PopTmpLdAd2 var_86
  loc_744F11: ImpAdLdRf MemVar_74C7D0
  loc_744F14: NewIfNullPr clsMsg
  loc_744F17: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744F1C: ILdRf var_1D4
  loc_744F1F: LitI4 &H162
  loc_744F24: FMemLdRf unk_418E79
  loc_744F29: AryInRecLdPr
  loc_744F2F: MemStStrCopy
  loc_744F33: FFreeStr var_90 = ""
  loc_744F3A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744F51: FLdRfVar var_1D4
  loc_744F54: LitVar_Missing var_1D0
  loc_744F57: LitVar_Missing var_1B0
  loc_744F5A: LitVar_Missing var_190
  loc_744F5D: LitVar_Missing var_170
  loc_744F60: LitVar_Missing var_150
  loc_744F63: LitVar_Missing var_130
  loc_744F66: LitVar_Missing var_110
  loc_744F69: LitVar_Missing var_F0
  loc_744F6C: LitVar_Missing var_D0
  loc_744F6F: LitVar_Missing var_B0
  loc_744F72: LitStr "Error intentando levantar un servicio"
  loc_744F75: FStStrCopy var_90
  loc_744F78: FLdRfVar var_90
  loc_744F7B: LitI4 &H164
  loc_744F80: PopTmpLdAdStr var_8C
  loc_744F83: LitI2_Byte &H21
  loc_744F85: PopTmpLdAd2 var_86
  loc_744F88: ImpAdLdRf MemVar_74C7D0
  loc_744F8B: NewIfNullPr clsMsg
  loc_744F8E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_744F93: ILdRf var_1D4
  loc_744F96: LitI4 &H163
  loc_744F9B: FMemLdRf unk_418E79
  loc_744FA0: AryInRecLdPr
  loc_744FA6: MemStStrCopy
  loc_744FAA: FFreeStr var_90 = ""
  loc_744FB1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_744FC8: FLdRfVar var_1D4
  loc_744FCB: LitVar_Missing var_1D0
  loc_744FCE: LitVar_Missing var_1B0
  loc_744FD1: LitVar_Missing var_190
  loc_744FD4: LitVar_Missing var_170
  loc_744FD7: LitVar_Missing var_150
  loc_744FDA: LitVar_Missing var_130
  loc_744FDD: LitVar_Missing var_110
  loc_744FE0: LitVar_Missing var_F0
  loc_744FE3: LitVar_Missing var_D0
  loc_744FE6: LitVar_Missing var_B0
  loc_744FE9: LitStr "El inicio de los servicio finalizó correctamente"
  loc_744FEC: FStStrCopy var_90
  loc_744FEF: FLdRfVar var_90
  loc_744FF2: LitI4 &H165
  loc_744FF7: PopTmpLdAdStr var_8C
  loc_744FFA: LitI2_Byte &H21
  loc_744FFC: PopTmpLdAd2 var_86
  loc_744FFF: ImpAdLdRf MemVar_74C7D0
  loc_745002: NewIfNullPr clsMsg
  loc_745005: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74500A: ILdRf var_1D4
  loc_74500D: LitI4 &H164
  loc_745012: FMemLdRf unk_418E79
  loc_745017: AryInRecLdPr
  loc_74501D: MemStStrCopy
  loc_745021: FFreeStr var_90 = ""
  loc_745028: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74503F: FLdRfVar var_1D4
  loc_745042: LitVar_Missing var_1D0
  loc_745045: LitVar_Missing var_1B0
  loc_745048: LitVar_Missing var_190
  loc_74504B: LitVar_Missing var_170
  loc_74504E: LitVar_Missing var_150
  loc_745051: LitVar_Missing var_130
  loc_745054: LitVar_Missing var_110
  loc_745057: LitVar_Missing var_F0
  loc_74505A: LitVar_Missing var_D0
  loc_74505D: LitVar_Missing var_B0
  loc_745060: LitStr "Error durante la aplicacion de la nueva versión de PumpService"
  loc_745063: FStStrCopy var_90
  loc_745066: FLdRfVar var_90
  loc_745069: LitI4 &H166
  loc_74506E: PopTmpLdAdStr var_8C
  loc_745071: LitI2_Byte &H21
  loc_745073: PopTmpLdAd2 var_86
  loc_745076: ImpAdLdRf MemVar_74C7D0
  loc_745079: NewIfNullPr clsMsg
  loc_74507C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745081: ILdRf var_1D4
  loc_745084: LitI4 &H165
  loc_745089: FMemLdRf unk_418E79
  loc_74508E: AryInRecLdPr
  loc_745094: MemStStrCopy
  loc_745098: FFreeStr var_90 = ""
  loc_74509F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7450B6: FLdRfVar var_1D4
  loc_7450B9: LitVar_Missing var_1D0
  loc_7450BC: LitVar_Missing var_1B0
  loc_7450BF: LitVar_Missing var_190
  loc_7450C2: LitVar_Missing var_170
  loc_7450C5: LitVar_Missing var_150
  loc_7450C8: LitVar_Missing var_130
  loc_7450CB: LitVar_Missing var_110
  loc_7450CE: LitVar_Missing var_F0
  loc_7450D1: LitVar_Missing var_D0
  loc_7450D4: LitVar_Missing var_B0
  loc_7450D7: LitStr "La nueva versión de PumpService funciono correctamente"
  loc_7450DA: FStStrCopy var_90
  loc_7450DD: FLdRfVar var_90
  loc_7450E0: LitI4 &H167
  loc_7450E5: PopTmpLdAdStr var_8C
  loc_7450E8: LitI2_Byte &H21
  loc_7450EA: PopTmpLdAd2 var_86
  loc_7450ED: ImpAdLdRf MemVar_74C7D0
  loc_7450F0: NewIfNullPr clsMsg
  loc_7450F3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7450F8: ILdRf var_1D4
  loc_7450FB: LitI4 &H166
  loc_745100: FMemLdRf unk_418E79
  loc_745105: AryInRecLdPr
  loc_74510B: MemStStrCopy
  loc_74510F: FFreeStr var_90 = ""
  loc_745116: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74512D: FLdRfVar var_1D4
  loc_745130: LitVar_Missing var_1D0
  loc_745133: LitVar_Missing var_1B0
  loc_745136: LitVar_Missing var_190
  loc_745139: LitVar_Missing var_170
  loc_74513C: LitVar_Missing var_150
  loc_74513F: LitVar_Missing var_130
  loc_745142: LitVar_Missing var_110
  loc_745145: LitVar_Missing var_F0
  loc_745148: LitVar_Missing var_D0
  loc_74514B: LitVar_Missing var_B0
  loc_74514E: LitStr "Apagado del equipo detectado durante un cambio de versión"
  loc_745151: FStStrCopy var_90
  loc_745154: FLdRfVar var_90
  loc_745157: LitI4 &H168
  loc_74515C: PopTmpLdAdStr var_8C
  loc_74515F: LitI2_Byte &H21
  loc_745161: PopTmpLdAd2 var_86
  loc_745164: ImpAdLdRf MemVar_74C7D0
  loc_745167: NewIfNullPr clsMsg
  loc_74516A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74516F: ILdRf var_1D4
  loc_745172: LitI4 &H167
  loc_745177: FMemLdRf unk_418E79
  loc_74517C: AryInRecLdPr
  loc_745182: MemStStrCopy
  loc_745186: FFreeStr var_90 = ""
  loc_74518D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7451A4: FLdRfVar var_1D4
  loc_7451A7: LitVar_Missing var_1D0
  loc_7451AA: LitVar_Missing var_1B0
  loc_7451AD: LitVar_Missing var_190
  loc_7451B0: LitVar_Missing var_170
  loc_7451B3: LitVar_Missing var_150
  loc_7451B6: LitVar_Missing var_130
  loc_7451B9: LitVar_Missing var_110
  loc_7451BC: LitVar_Missing var_F0
  loc_7451BF: LitVar_Missing var_D0
  loc_7451C2: LitVar_Missing var_B0
  loc_7451C5: LitStr "Se procederá a ejecutar el proceso de Rollback"
  loc_7451C8: FStStrCopy var_90
  loc_7451CB: FLdRfVar var_90
  loc_7451CE: LitI4 &H169
  loc_7451D3: PopTmpLdAdStr var_8C
  loc_7451D6: LitI2_Byte &H21
  loc_7451D8: PopTmpLdAd2 var_86
  loc_7451DB: ImpAdLdRf MemVar_74C7D0
  loc_7451DE: NewIfNullPr clsMsg
  loc_7451E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7451E6: ILdRf var_1D4
  loc_7451E9: LitI4 &H168
  loc_7451EE: FMemLdRf unk_418E79
  loc_7451F3: AryInRecLdPr
  loc_7451F9: MemStStrCopy
  loc_7451FD: FFreeStr var_90 = ""
  loc_745204: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74521B: FLdRfVar var_1D4
  loc_74521E: LitVar_Missing var_1D0
  loc_745221: LitVar_Missing var_1B0
  loc_745224: LitVar_Missing var_190
  loc_745227: LitVar_Missing var_170
  loc_74522A: LitVar_Missing var_150
  loc_74522D: LitVar_Missing var_130
  loc_745230: LitVar_Missing var_110
  loc_745233: LitVar_Missing var_F0
  loc_745236: LitVar_Missing var_D0
  loc_745239: LitVar_Missing var_B0
  loc_74523C: LitStr "Se procederá a realizar un Log-Off"
  loc_74523F: FStStrCopy var_90
  loc_745242: FLdRfVar var_90
  loc_745245: LitI4 &H16A
  loc_74524A: PopTmpLdAdStr var_8C
  loc_74524D: LitI2_Byte &H21
  loc_74524F: PopTmpLdAd2 var_86
  loc_745252: ImpAdLdRf MemVar_74C7D0
  loc_745255: NewIfNullPr clsMsg
  loc_745258: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74525D: ILdRf var_1D4
  loc_745260: LitI4 &H169
  loc_745265: FMemLdRf unk_418E79
  loc_74526A: AryInRecLdPr
  loc_745270: MemStStrCopy
  loc_745274: FFreeStr var_90 = ""
  loc_74527B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745292: FLdRfVar var_1D4
  loc_745295: LitVar_Missing var_1D0
  loc_745298: LitVar_Missing var_1B0
  loc_74529B: LitVar_Missing var_190
  loc_74529E: LitVar_Missing var_170
  loc_7452A1: LitVar_Missing var_150
  loc_7452A4: LitVar_Missing var_130
  loc_7452A7: LitVar_Missing var_110
  loc_7452AA: LitVar_Missing var_F0
  loc_7452AD: LitVar_Missing var_D0
  loc_7452B0: LitVar_Missing var_B0
  loc_7452B3: LitStr "Error durante el testeo de la nueva versión"
  loc_7452B6: FStStrCopy var_90
  loc_7452B9: FLdRfVar var_90
  loc_7452BC: LitI4 &H16B
  loc_7452C1: PopTmpLdAdStr var_8C
  loc_7452C4: LitI2_Byte &H21
  loc_7452C6: PopTmpLdAd2 var_86
  loc_7452C9: ImpAdLdRf MemVar_74C7D0
  loc_7452CC: NewIfNullPr clsMsg
  loc_7452CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7452D4: ILdRf var_1D4
  loc_7452D7: LitI4 &H16A
  loc_7452DC: FMemLdRf unk_418E79
  loc_7452E1: AryInRecLdPr
  loc_7452E7: MemStStrCopy
  loc_7452EB: FFreeStr var_90 = ""
  loc_7452F2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745309: FLdRfVar var_1D4
  loc_74530C: LitVar_Missing var_1D0
  loc_74530F: LitVar_Missing var_1B0
  loc_745312: LitVar_Missing var_190
  loc_745315: LitVar_Missing var_170
  loc_745318: LitVar_Missing var_150
  loc_74531B: LitVar_Missing var_130
  loc_74531E: LitVar_Missing var_110
  loc_745321: LitVar_Missing var_F0
  loc_745324: LitVar_Missing var_D0
  loc_745327: LitVar_Missing var_B0
  loc_74532A: LitStr "Testeo de la nueva versión exitoso"
  loc_74532D: FStStrCopy var_90
  loc_745330: FLdRfVar var_90
  loc_745333: LitI4 &H16C
  loc_745338: PopTmpLdAdStr var_8C
  loc_74533B: LitI2_Byte &H21
  loc_74533D: PopTmpLdAd2 var_86
  loc_745340: ImpAdLdRf MemVar_74C7D0
  loc_745343: NewIfNullPr clsMsg
  loc_745346: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74534B: ILdRf var_1D4
  loc_74534E: LitI4 &H16B
  loc_745353: FMemLdRf unk_418E79
  loc_745358: AryInRecLdPr
  loc_74535E: MemStStrCopy
  loc_745362: FFreeStr var_90 = ""
  loc_745369: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745380: FLdRfVar var_1D4
  loc_745383: LitVar_Missing var_1D0
  loc_745386: LitVar_Missing var_1B0
  loc_745389: LitVar_Missing var_190
  loc_74538C: LitVar_Missing var_170
  loc_74538F: LitVar_Missing var_150
  loc_745392: LitVar_Missing var_130
  loc_745395: LitVar_Missing var_110
  loc_745398: LitVar_Missing var_F0
  loc_74539B: LitVar_Missing var_D0
  loc_74539E: LitVar_Missing var_B0
  loc_7453A1: LitStr "Chequeo de los archivos actualizados - OK"
  loc_7453A4: FStStrCopy var_90
  loc_7453A7: FLdRfVar var_90
  loc_7453AA: LitI4 &H16D
  loc_7453AF: PopTmpLdAdStr var_8C
  loc_7453B2: LitI2_Byte &H21
  loc_7453B4: PopTmpLdAd2 var_86
  loc_7453B7: ImpAdLdRf MemVar_74C7D0
  loc_7453BA: NewIfNullPr clsMsg
  loc_7453BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7453C2: ILdRf var_1D4
  loc_7453C5: LitI4 &H16C
  loc_7453CA: FMemLdRf unk_418E79
  loc_7453CF: AryInRecLdPr
  loc_7453D5: MemStStrCopy
  loc_7453D9: FFreeStr var_90 = ""
  loc_7453E0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7453F7: FLdRfVar var_1D4
  loc_7453FA: LitVar_Missing var_1D0
  loc_7453FD: LitVar_Missing var_1B0
  loc_745400: LitVar_Missing var_190
  loc_745403: LitVar_Missing var_170
  loc_745406: LitVar_Missing var_150
  loc_745409: LitVar_Missing var_130
  loc_74540C: LitVar_Missing var_110
  loc_74540F: LitVar_Missing var_F0
  loc_745412: LitVar_Missing var_D0
  loc_745415: LitVar_Missing var_B0
  loc_745418: LitStr "Chequeo de los archivos actualizados - ERROR en ruta"
  loc_74541B: FStStrCopy var_90
  loc_74541E: FLdRfVar var_90
  loc_745421: LitI4 &H16E
  loc_745426: PopTmpLdAdStr var_8C
  loc_745429: LitI2_Byte &H21
  loc_74542B: PopTmpLdAd2 var_86
  loc_74542E: ImpAdLdRf MemVar_74C7D0
  loc_745431: NewIfNullPr clsMsg
  loc_745434: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745439: ILdRf var_1D4
  loc_74543C: LitI4 &H16D
  loc_745441: FMemLdRf unk_418E79
  loc_745446: AryInRecLdPr
  loc_74544C: MemStStrCopy
  loc_745450: FFreeStr var_90 = ""
  loc_745457: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74546E: FLdRfVar var_1D4
  loc_745471: LitVar_Missing var_1D0
  loc_745474: LitVar_Missing var_1B0
  loc_745477: LitVar_Missing var_190
  loc_74547A: LitVar_Missing var_170
  loc_74547D: LitVar_Missing var_150
  loc_745480: LitVar_Missing var_130
  loc_745483: LitVar_Missing var_110
  loc_745486: LitVar_Missing var_F0
  loc_745489: LitVar_Missing var_D0
  loc_74548C: LitVar_Missing var_B0
  loc_74548F: LitStr "Chequeo de los archivos actualizados - ERROR en tamaño"
  loc_745492: FStStrCopy var_90
  loc_745495: FLdRfVar var_90
  loc_745498: LitI4 &H16F
  loc_74549D: PopTmpLdAdStr var_8C
  loc_7454A0: LitI2_Byte &H21
  loc_7454A2: PopTmpLdAd2 var_86
  loc_7454A5: ImpAdLdRf MemVar_74C7D0
  loc_7454A8: NewIfNullPr clsMsg
  loc_7454AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7454B0: ILdRf var_1D4
  loc_7454B3: LitI4 &H16E
  loc_7454B8: FMemLdRf unk_418E79
  loc_7454BD: AryInRecLdPr
  loc_7454C3: MemStStrCopy
  loc_7454C7: FFreeStr var_90 = ""
  loc_7454CE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7454E5: FLdRfVar var_1D4
  loc_7454E8: LitVar_Missing var_1D0
  loc_7454EB: LitVar_Missing var_1B0
  loc_7454EE: LitVar_Missing var_190
  loc_7454F1: LitVar_Missing var_170
  loc_7454F4: LitVar_Missing var_150
  loc_7454F7: LitVar_Missing var_130
  loc_7454FA: LitVar_Missing var_110
  loc_7454FD: LitVar_Missing var_F0
  loc_745500: LitVar_Missing var_D0
  loc_745503: LitVar_Missing var_B0
  loc_745506: LitStr "Chequeo de los archivos actualizados - ERROR en hora"
  loc_745509: FStStrCopy var_90
  loc_74550C: FLdRfVar var_90
  loc_74550F: LitI4 &H170
  loc_745514: PopTmpLdAdStr var_8C
  loc_745517: LitI2_Byte &H21
  loc_745519: PopTmpLdAd2 var_86
  loc_74551C: ImpAdLdRf MemVar_74C7D0
  loc_74551F: NewIfNullPr clsMsg
  loc_745522: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745527: ILdRf var_1D4
  loc_74552A: LitI4 &H16F
  loc_74552F: FMemLdRf unk_418E79
  loc_745534: AryInRecLdPr
  loc_74553A: MemStStrCopy
  loc_74553E: FFreeStr var_90 = ""
  loc_745545: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74555C: FLdRfVar var_1D4
  loc_74555F: LitVar_Missing var_1D0
  loc_745562: LitVar_Missing var_1B0
  loc_745565: LitVar_Missing var_190
  loc_745568: LitVar_Missing var_170
  loc_74556B: LitVar_Missing var_150
  loc_74556E: LitVar_Missing var_130
  loc_745571: LitVar_Missing var_110
  loc_745574: LitVar_Missing var_F0
  loc_745577: LitVar_Missing var_D0
  loc_74557A: LitVar_Missing var_B0
  loc_74557D: LitStr "Chequeo de los archivos actualizados - ERROR en fecha"
  loc_745580: FStStrCopy var_90
  loc_745583: FLdRfVar var_90
  loc_745586: LitI4 &H171
  loc_74558B: PopTmpLdAdStr var_8C
  loc_74558E: LitI2_Byte &H21
  loc_745590: PopTmpLdAd2 var_86
  loc_745593: ImpAdLdRf MemVar_74C7D0
  loc_745596: NewIfNullPr clsMsg
  loc_745599: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74559E: ILdRf var_1D4
  loc_7455A1: LitI4 &H170
  loc_7455A6: FMemLdRf unk_418E79
  loc_7455AB: AryInRecLdPr
  loc_7455B1: MemStStrCopy
  loc_7455B5: FFreeStr var_90 = ""
  loc_7455BC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7455D3: FLdRfVar var_1D4
  loc_7455D6: LitVar_Missing var_1D0
  loc_7455D9: LitVar_Missing var_1B0
  loc_7455DC: LitVar_Missing var_190
  loc_7455DF: LitVar_Missing var_170
  loc_7455E2: LitVar_Missing var_150
  loc_7455E5: LitVar_Missing var_130
  loc_7455E8: LitVar_Missing var_110
  loc_7455EB: LitVar_Missing var_F0
  loc_7455EE: LitVar_Missing var_D0
  loc_7455F1: LitVar_Missing var_B0
  loc_7455F4: LitStr "Estaciones de la Competencia  -  OK"
  loc_7455F7: FStStrCopy var_90
  loc_7455FA: FLdRfVar var_90
  loc_7455FD: LitI4 &H191
  loc_745602: PopTmpLdAdStr var_8C
  loc_745605: LitI2_Byte &H21
  loc_745607: PopTmpLdAd2 var_86
  loc_74560A: ImpAdLdRf MemVar_74C7D0
  loc_74560D: NewIfNullPr clsMsg
  loc_745610: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745615: ILdRf var_1D4
  loc_745618: LitI4 &H190
  loc_74561D: FMemLdRf unk_418E79
  loc_745622: AryInRecLdPr
  loc_745628: MemStStrCopy
  loc_74562C: FFreeStr var_90 = ""
  loc_745633: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74564A: FLdRfVar var_1D4
  loc_74564D: LitVar_Missing var_1D0
  loc_745650: LitVar_Missing var_1B0
  loc_745653: LitVar_Missing var_190
  loc_745656: LitVar_Missing var_170
  loc_745659: LitVar_Missing var_150
  loc_74565C: LitVar_Missing var_130
  loc_74565F: LitVar_Missing var_110
  loc_745662: LitVar_Missing var_F0
  loc_745665: LitVar_Missing var_D0
  loc_745668: LitVar_Missing var_B0
  loc_74566B: LitStr "Estaciones de la Competencia  -  ERROR"
  loc_74566E: FStStrCopy var_90
  loc_745671: FLdRfVar var_90
  loc_745674: LitI4 &H192
  loc_745679: PopTmpLdAdStr var_8C
  loc_74567C: LitI2_Byte &H21
  loc_74567E: PopTmpLdAd2 var_86
  loc_745681: ImpAdLdRf MemVar_74C7D0
  loc_745684: NewIfNullPr clsMsg
  loc_745687: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74568C: ILdRf var_1D4
  loc_74568F: LitI4 &H191
  loc_745694: FMemLdRf unk_418E79
  loc_745699: AryInRecLdPr
  loc_74569F: MemStStrCopy
  loc_7456A3: FFreeStr var_90 = ""
  loc_7456AA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7456C1: FLdRfVar var_1D4
  loc_7456C4: LitVar_Missing var_1D0
  loc_7456C7: LitVar_Missing var_1B0
  loc_7456CA: LitVar_Missing var_190
  loc_7456CD: LitVar_Missing var_170
  loc_7456D0: LitVar_Missing var_150
  loc_7456D3: LitVar_Missing var_130
  loc_7456D6: LitVar_Missing var_110
  loc_7456D9: LitVar_Missing var_F0
  loc_7456DC: LitVar_Missing var_D0
  loc_7456DF: LitVar_Missing var_B0
  loc_7456E2: LitStr "Maestro de Productos  -  OK"
  loc_7456E5: FStStrCopy var_90
  loc_7456E8: FLdRfVar var_90
  loc_7456EB: LitI4 &H193
  loc_7456F0: PopTmpLdAdStr var_8C
  loc_7456F3: LitI2_Byte &H21
  loc_7456F5: PopTmpLdAd2 var_86
  loc_7456F8: ImpAdLdRf MemVar_74C7D0
  loc_7456FB: NewIfNullPr clsMsg
  loc_7456FE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745703: ILdRf var_1D4
  loc_745706: LitI4 &H192
  loc_74570B: FMemLdRf unk_418E79
  loc_745710: AryInRecLdPr
  loc_745716: MemStStrCopy
  loc_74571A: FFreeStr var_90 = ""
  loc_745721: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745738: FLdRfVar var_1D4
  loc_74573B: LitVar_Missing var_1D0
  loc_74573E: LitVar_Missing var_1B0
  loc_745741: LitVar_Missing var_190
  loc_745744: LitVar_Missing var_170
  loc_745747: LitVar_Missing var_150
  loc_74574A: LitVar_Missing var_130
  loc_74574D: LitVar_Missing var_110
  loc_745750: LitVar_Missing var_F0
  loc_745753: LitVar_Missing var_D0
  loc_745756: LitVar_Missing var_B0
  loc_745759: LitStr "Maestro de Productos  -  ERROR"
  loc_74575C: FStStrCopy var_90
  loc_74575F: FLdRfVar var_90
  loc_745762: LitI4 &H194
  loc_745767: PopTmpLdAdStr var_8C
  loc_74576A: LitI2_Byte &H21
  loc_74576C: PopTmpLdAd2 var_86
  loc_74576F: ImpAdLdRf MemVar_74C7D0
  loc_745772: NewIfNullPr clsMsg
  loc_745775: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74577A: ILdRf var_1D4
  loc_74577D: LitI4 &H193
  loc_745782: FMemLdRf unk_418E79
  loc_745787: AryInRecLdPr
  loc_74578D: MemStStrCopy
  loc_745791: FFreeStr var_90 = ""
  loc_745798: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7457AF: FLdRfVar var_1D4
  loc_7457B2: LitVar_Missing var_1D0
  loc_7457B5: LitVar_Missing var_1B0
  loc_7457B8: LitVar_Missing var_190
  loc_7457BB: LitVar_Missing var_170
  loc_7457BE: LitVar_Missing var_150
  loc_7457C1: LitVar_Missing var_130
  loc_7457C4: LitVar_Missing var_110
  loc_7457C7: LitVar_Missing var_F0
  loc_7457CA: LitVar_Missing var_D0
  loc_7457CD: LitVar_Missing var_B0
  loc_7457D0: LitStr "Maestro de Eventos  -  OK"
  loc_7457D3: FStStrCopy var_90
  loc_7457D6: FLdRfVar var_90
  loc_7457D9: LitI4 &H195
  loc_7457DE: PopTmpLdAdStr var_8C
  loc_7457E1: LitI2_Byte &H21
  loc_7457E3: PopTmpLdAd2 var_86
  loc_7457E6: ImpAdLdRf MemVar_74C7D0
  loc_7457E9: NewIfNullPr clsMsg
  loc_7457EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7457F1: ILdRf var_1D4
  loc_7457F4: LitI4 &H194
  loc_7457F9: FMemLdRf unk_418E79
  loc_7457FE: AryInRecLdPr
  loc_745804: MemStStrCopy
  loc_745808: FFreeStr var_90 = ""
  loc_74580F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745826: FLdRfVar var_1D4
  loc_745829: LitVar_Missing var_1D0
  loc_74582C: LitVar_Missing var_1B0
  loc_74582F: LitVar_Missing var_190
  loc_745832: LitVar_Missing var_170
  loc_745835: LitVar_Missing var_150
  loc_745838: LitVar_Missing var_130
  loc_74583B: LitVar_Missing var_110
  loc_74583E: LitVar_Missing var_F0
  loc_745841: LitVar_Missing var_D0
  loc_745844: LitVar_Missing var_B0
  loc_745847: LitStr "Maestro de Eventos  -  ERROR"
  loc_74584A: FStStrCopy var_90
  loc_74584D: FLdRfVar var_90
  loc_745850: LitI4 &H196
  loc_745855: PopTmpLdAdStr var_8C
  loc_745858: LitI2_Byte &H21
  loc_74585A: PopTmpLdAd2 var_86
  loc_74585D: ImpAdLdRf MemVar_74C7D0
  loc_745860: NewIfNullPr clsMsg
  loc_745863: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745868: ILdRf var_1D4
  loc_74586B: LitI4 &H195
  loc_745870: FMemLdRf unk_418E79
  loc_745875: AryInRecLdPr
  loc_74587B: MemStStrCopy
  loc_74587F: FFreeStr var_90 = ""
  loc_745886: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74589D: FLdRfVar var_1D4
  loc_7458A0: LitVar_Missing var_1D0
  loc_7458A3: LitVar_Missing var_1B0
  loc_7458A6: LitVar_Missing var_190
  loc_7458A9: LitVar_Missing var_170
  loc_7458AC: LitVar_Missing var_150
  loc_7458AF: LitVar_Missing var_130
  loc_7458B2: LitVar_Missing var_110
  loc_7458B5: LitVar_Missing var_F0
  loc_7458B8: LitVar_Missing var_D0
  loc_7458BB: LitVar_Missing var_B0
  loc_7458BE: LitStr "Maestro de Parámetros  -  OK"
  loc_7458C1: FStStrCopy var_90
  loc_7458C4: FLdRfVar var_90
  loc_7458C7: LitI4 &H197
  loc_7458CC: PopTmpLdAdStr var_8C
  loc_7458CF: LitI2_Byte &H21
  loc_7458D1: PopTmpLdAd2 var_86
  loc_7458D4: ImpAdLdRf MemVar_74C7D0
  loc_7458D7: NewIfNullPr clsMsg
  loc_7458DA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7458DF: ILdRf var_1D4
  loc_7458E2: LitI4 &H196
  loc_7458E7: FMemLdRf unk_418E79
  loc_7458EC: AryInRecLdPr
  loc_7458F2: MemStStrCopy
  loc_7458F6: FFreeStr var_90 = ""
  loc_7458FD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745914: FLdRfVar var_1D4
  loc_745917: LitVar_Missing var_1D0
  loc_74591A: LitVar_Missing var_1B0
  loc_74591D: LitVar_Missing var_190
  loc_745920: LitVar_Missing var_170
  loc_745923: LitVar_Missing var_150
  loc_745926: LitVar_Missing var_130
  loc_745929: LitVar_Missing var_110
  loc_74592C: LitVar_Missing var_F0
  loc_74592F: LitVar_Missing var_D0
  loc_745932: LitVar_Missing var_B0
  loc_745935: LitStr "Maestro de Parámetros  -  ERROR"
  loc_745938: FStStrCopy var_90
  loc_74593B: FLdRfVar var_90
  loc_74593E: LitI4 &H198
  loc_745943: PopTmpLdAdStr var_8C
  loc_745946: LitI2_Byte &H21
  loc_745948: PopTmpLdAd2 var_86
  loc_74594B: ImpAdLdRf MemVar_74C7D0
  loc_74594E: NewIfNullPr clsMsg
  loc_745951: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745956: ILdRf var_1D4
  loc_745959: LitI4 &H197
  loc_74595E: FMemLdRf unk_418E79
  loc_745963: AryInRecLdPr
  loc_745969: MemStStrCopy
  loc_74596D: FFreeStr var_90 = ""
  loc_745974: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74598B: FLdRfVar var_1D4
  loc_74598E: LitVar_Missing var_1D0
  loc_745991: LitVar_Missing var_1B0
  loc_745994: LitVar_Missing var_190
  loc_745997: LitVar_Missing var_170
  loc_74599A: LitVar_Missing var_150
  loc_74599D: LitVar_Missing var_130
  loc_7459A0: LitVar_Missing var_110
  loc_7459A3: LitVar_Missing var_F0
  loc_7459A6: LitVar_Missing var_D0
  loc_7459A9: LitVar_Missing var_B0
  loc_7459AC: LitStr "Código de Operaciones  -  OK"
  loc_7459AF: FStStrCopy var_90
  loc_7459B2: FLdRfVar var_90
  loc_7459B5: LitI4 &H199
  loc_7459BA: PopTmpLdAdStr var_8C
  loc_7459BD: LitI2_Byte &H21
  loc_7459BF: PopTmpLdAd2 var_86
  loc_7459C2: ImpAdLdRf MemVar_74C7D0
  loc_7459C5: NewIfNullPr clsMsg
  loc_7459C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7459CD: ILdRf var_1D4
  loc_7459D0: LitI4 &H198
  loc_7459D5: FMemLdRf unk_418E79
  loc_7459DA: AryInRecLdPr
  loc_7459E0: MemStStrCopy
  loc_7459E4: FFreeStr var_90 = ""
  loc_7459EB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745A02: FLdRfVar var_1D4
  loc_745A05: LitVar_Missing var_1D0
  loc_745A08: LitVar_Missing var_1B0
  loc_745A0B: LitVar_Missing var_190
  loc_745A0E: LitVar_Missing var_170
  loc_745A11: LitVar_Missing var_150
  loc_745A14: LitVar_Missing var_130
  loc_745A17: LitVar_Missing var_110
  loc_745A1A: LitVar_Missing var_F0
  loc_745A1D: LitVar_Missing var_D0
  loc_745A20: LitVar_Missing var_B0
  loc_745A23: LitStr "Código de Operaciones  -  ERROR"
  loc_745A26: FStStrCopy var_90
  loc_745A29: FLdRfVar var_90
  loc_745A2C: LitI4 &H19A
  loc_745A31: PopTmpLdAdStr var_8C
  loc_745A34: LitI2_Byte &H21
  loc_745A36: PopTmpLdAd2 var_86
  loc_745A39: ImpAdLdRf MemVar_74C7D0
  loc_745A3C: NewIfNullPr clsMsg
  loc_745A3F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745A44: ILdRf var_1D4
  loc_745A47: LitI4 &H199
  loc_745A4C: FMemLdRf unk_418E79
  loc_745A51: AryInRecLdPr
  loc_745A57: MemStStrCopy
  loc_745A5B: FFreeStr var_90 = ""
  loc_745A62: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745A79: FLdRfVar var_1D4
  loc_745A7C: LitVar_Missing var_1D0
  loc_745A7F: LitVar_Missing var_1B0
  loc_745A82: LitVar_Missing var_190
  loc_745A85: LitVar_Missing var_170
  loc_745A88: LitVar_Missing var_150
  loc_745A8B: LitVar_Missing var_130
  loc_745A8E: LitVar_Missing var_110
  loc_745A91: LitVar_Missing var_F0
  loc_745A94: LitVar_Missing var_D0
  loc_745A97: LitVar_Missing var_B0
  loc_745A9A: LitStr "Grabar Cambios de Precios  -  OK"
  loc_745A9D: FStStrCopy var_90
  loc_745AA0: FLdRfVar var_90
  loc_745AA3: LitI4 &H19B
  loc_745AA8: PopTmpLdAdStr var_8C
  loc_745AAB: LitI2_Byte &H21
  loc_745AAD: PopTmpLdAd2 var_86
  loc_745AB0: ImpAdLdRf MemVar_74C7D0
  loc_745AB3: NewIfNullPr clsMsg
  loc_745AB6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745ABB: ILdRf var_1D4
  loc_745ABE: LitI4 &H19A
  loc_745AC3: FMemLdRf unk_418E79
  loc_745AC8: AryInRecLdPr
  loc_745ACE: MemStStrCopy
  loc_745AD2: FFreeStr var_90 = ""
  loc_745AD9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745AF0: FLdRfVar var_1D4
  loc_745AF3: LitVar_Missing var_1D0
  loc_745AF6: LitVar_Missing var_1B0
  loc_745AF9: LitVar_Missing var_190
  loc_745AFC: LitVar_Missing var_170
  loc_745AFF: LitVar_Missing var_150
  loc_745B02: LitVar_Missing var_130
  loc_745B05: LitVar_Missing var_110
  loc_745B08: LitVar_Missing var_F0
  loc_745B0B: LitVar_Missing var_D0
  loc_745B0E: LitVar_Missing var_B0
  loc_745B11: LitStr "Grabar Cambios de Precios  -  ERROR"
  loc_745B14: FStStrCopy var_90
  loc_745B17: FLdRfVar var_90
  loc_745B1A: LitI4 &H19C
  loc_745B1F: PopTmpLdAdStr var_8C
  loc_745B22: LitI2_Byte &H21
  loc_745B24: PopTmpLdAd2 var_86
  loc_745B27: ImpAdLdRf MemVar_74C7D0
  loc_745B2A: NewIfNullPr clsMsg
  loc_745B2D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745B32: ILdRf var_1D4
  loc_745B35: LitI4 &H19B
  loc_745B3A: FMemLdRf unk_418E79
  loc_745B3F: AryInRecLdPr
  loc_745B45: MemStStrCopy
  loc_745B49: FFreeStr var_90 = ""
  loc_745B50: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745B67: FLdRfVar var_1D4
  loc_745B6A: LitVar_Missing var_1D0
  loc_745B6D: LitVar_Missing var_1B0
  loc_745B70: LitVar_Missing var_190
  loc_745B73: LitVar_Missing var_170
  loc_745B76: LitVar_Missing var_150
  loc_745B79: LitVar_Missing var_130
  loc_745B7C: LitVar_Missing var_110
  loc_745B7F: LitVar_Missing var_F0
  loc_745B82: LitVar_Missing var_D0
  loc_745B85: LitVar_Missing var_B0
  loc_745B88: LitStr "Notificación de Cambios de Precios"
  loc_745B8B: FStStrCopy var_90
  loc_745B8E: FLdRfVar var_90
  loc_745B91: LitI4 &H19D
  loc_745B96: PopTmpLdAdStr var_8C
  loc_745B99: LitI2_Byte &H21
  loc_745B9B: PopTmpLdAd2 var_86
  loc_745B9E: ImpAdLdRf MemVar_74C7D0
  loc_745BA1: NewIfNullPr clsMsg
  loc_745BA4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745BA9: ILdRf var_1D4
  loc_745BAC: LitI4 &H19C
  loc_745BB1: FMemLdRf unk_418E79
  loc_745BB6: AryInRecLdPr
  loc_745BBC: MemStStrCopy
  loc_745BC0: FFreeStr var_90 = ""
  loc_745BC7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745BDE: FLdRfVar var_1D4
  loc_745BE1: LitVar_Missing var_1D0
  loc_745BE4: LitVar_Missing var_1B0
  loc_745BE7: LitVar_Missing var_190
  loc_745BEA: LitVar_Missing var_170
  loc_745BED: LitVar_Missing var_150
  loc_745BF0: LitVar_Missing var_130
  loc_745BF3: LitVar_Missing var_110
  loc_745BF6: LitVar_Missing var_F0
  loc_745BF9: LitVar_Missing var_D0
  loc_745BFC: LitVar_Missing var_B0
  loc_745BFF: LitStr "Cancelación de Cambios de Precios"
  loc_745C02: FStStrCopy var_90
  loc_745C05: FLdRfVar var_90
  loc_745C08: LitI4 &H19E
  loc_745C0D: PopTmpLdAdStr var_8C
  loc_745C10: LitI2_Byte &H21
  loc_745C12: PopTmpLdAd2 var_86
  loc_745C15: ImpAdLdRf MemVar_74C7D0
  loc_745C18: NewIfNullPr clsMsg
  loc_745C1B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745C20: ILdRf var_1D4
  loc_745C23: LitI4 &H19D
  loc_745C28: FMemLdRf unk_418E79
  loc_745C2D: AryInRecLdPr
  loc_745C33: MemStStrCopy
  loc_745C37: FFreeStr var_90 = ""
  loc_745C3E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745C55: FLdRfVar var_1D4
  loc_745C58: LitVar_Missing var_1D0
  loc_745C5B: LitVar_Missing var_1B0
  loc_745C5E: LitVar_Missing var_190
  loc_745C61: LitVar_Missing var_170
  loc_745C64: LitVar_Missing var_150
  loc_745C67: LitVar_Missing var_130
  loc_745C6A: LitVar_Missing var_110
  loc_745C6D: LitVar_Missing var_F0
  loc_745C70: LitVar_Missing var_D0
  loc_745C73: LitVar_Missing var_B0
  loc_745C76: LitStr "Recepción de Nota Líquido Producto  -  OK"
  loc_745C79: FStStrCopy var_90
  loc_745C7C: FLdRfVar var_90
  loc_745C7F: LitI4 &H19F
  loc_745C84: PopTmpLdAdStr var_8C
  loc_745C87: LitI2_Byte &H21
  loc_745C89: PopTmpLdAd2 var_86
  loc_745C8C: ImpAdLdRf MemVar_74C7D0
  loc_745C8F: NewIfNullPr clsMsg
  loc_745C92: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745C97: ILdRf var_1D4
  loc_745C9A: LitI4 &H19E
  loc_745C9F: FMemLdRf unk_418E79
  loc_745CA4: AryInRecLdPr
  loc_745CAA: MemStStrCopy
  loc_745CAE: FFreeStr var_90 = ""
  loc_745CB5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745CCC: FLdRfVar var_1D4
  loc_745CCF: LitVar_Missing var_1D0
  loc_745CD2: LitVar_Missing var_1B0
  loc_745CD5: LitVar_Missing var_190
  loc_745CD8: LitVar_Missing var_170
  loc_745CDB: LitVar_Missing var_150
  loc_745CDE: LitVar_Missing var_130
  loc_745CE1: LitVar_Missing var_110
  loc_745CE4: LitVar_Missing var_F0
  loc_745CE7: LitVar_Missing var_D0
  loc_745CEA: LitVar_Missing var_B0
  loc_745CED: LitStr "Recepción de Nota Líquido Producto  -  ERROR"
  loc_745CF0: FStStrCopy var_90
  loc_745CF3: FLdRfVar var_90
  loc_745CF6: LitI4 &H1A0
  loc_745CFB: PopTmpLdAdStr var_8C
  loc_745CFE: LitI2_Byte &H21
  loc_745D00: PopTmpLdAd2 var_86
  loc_745D03: ImpAdLdRf MemVar_74C7D0
  loc_745D06: NewIfNullPr clsMsg
  loc_745D09: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745D0E: ILdRf var_1D4
  loc_745D11: LitI4 &H19F
  loc_745D16: FMemLdRf unk_418E79
  loc_745D1B: AryInRecLdPr
  loc_745D21: MemStStrCopy
  loc_745D25: FFreeStr var_90 = ""
  loc_745D2C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745D43: FLdRfVar var_1D4
  loc_745D46: LitVar_Missing var_1D0
  loc_745D49: LitVar_Missing var_1B0
  loc_745D4C: LitVar_Missing var_190
  loc_745D4F: LitVar_Missing var_170
  loc_745D52: LitVar_Missing var_150
  loc_745D55: LitVar_Missing var_130
  loc_745D58: LitVar_Missing var_110
  loc_745D5B: LitVar_Missing var_F0
  loc_745D5E: LitVar_Missing var_D0
  loc_745D61: LitVar_Missing var_B0
  loc_745D64: LitStr "Cierre de Red XXI  -  OK"
  loc_745D67: FStStrCopy var_90
  loc_745D6A: FLdRfVar var_90
  loc_745D6D: LitI4 &H1A1
  loc_745D72: PopTmpLdAdStr var_8C
  loc_745D75: LitI2_Byte &H21
  loc_745D77: PopTmpLdAd2 var_86
  loc_745D7A: ImpAdLdRf MemVar_74C7D0
  loc_745D7D: NewIfNullPr clsMsg
  loc_745D80: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745D85: ILdRf var_1D4
  loc_745D88: LitI4 &H1A0
  loc_745D8D: FMemLdRf unk_418E79
  loc_745D92: AryInRecLdPr
  loc_745D98: MemStStrCopy
  loc_745D9C: FFreeStr var_90 = ""
  loc_745DA3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745DBA: FLdRfVar var_1D4
  loc_745DBD: LitVar_Missing var_1D0
  loc_745DC0: LitVar_Missing var_1B0
  loc_745DC3: LitVar_Missing var_190
  loc_745DC6: LitVar_Missing var_170
  loc_745DC9: LitVar_Missing var_150
  loc_745DCC: LitVar_Missing var_130
  loc_745DCF: LitVar_Missing var_110
  loc_745DD2: LitVar_Missing var_F0
  loc_745DD5: LitVar_Missing var_D0
  loc_745DD8: LitVar_Missing var_B0
  loc_745DDB: LitStr "Cierre de Red XXI  -  ERROR"
  loc_745DDE: FStStrCopy var_90
  loc_745DE1: FLdRfVar var_90
  loc_745DE4: LitI4 &H1A2
  loc_745DE9: PopTmpLdAdStr var_8C
  loc_745DEC: LitI2_Byte &H21
  loc_745DEE: PopTmpLdAd2 var_86
  loc_745DF1: ImpAdLdRf MemVar_74C7D0
  loc_745DF4: NewIfNullPr clsMsg
  loc_745DF7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745DFC: ILdRf var_1D4
  loc_745DFF: LitI4 &H1A1
  loc_745E04: FMemLdRf unk_418E79
  loc_745E09: AryInRecLdPr
  loc_745E0F: MemStStrCopy
  loc_745E13: FFreeStr var_90 = ""
  loc_745E1A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745E31: FLdRfVar var_1D4
  loc_745E34: LitVar_Missing var_1D0
  loc_745E37: LitVar_Missing var_1B0
  loc_745E3A: LitVar_Missing var_190
  loc_745E3D: LitVar_Missing var_170
  loc_745E40: LitVar_Missing var_150
  loc_745E43: LitVar_Missing var_130
  loc_745E46: LitVar_Missing var_110
  loc_745E49: LitVar_Missing var_F0
  loc_745E4C: LitVar_Missing var_D0
  loc_745E4F: LitVar_Missing var_B0
  loc_745E52: LitStr "Actualización de Precio de la Competencia"
  loc_745E55: FStStrCopy var_90
  loc_745E58: FLdRfVar var_90
  loc_745E5B: LitI4 &H1A3
  loc_745E60: PopTmpLdAdStr var_8C
  loc_745E63: LitI2_Byte &H21
  loc_745E65: PopTmpLdAd2 var_86
  loc_745E68: ImpAdLdRf MemVar_74C7D0
  loc_745E6B: NewIfNullPr clsMsg
  loc_745E6E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745E73: ILdRf var_1D4
  loc_745E76: LitI4 &H1A2
  loc_745E7B: FMemLdRf unk_418E79
  loc_745E80: AryInRecLdPr
  loc_745E86: MemStStrCopy
  loc_745E8A: FFreeStr var_90 = ""
  loc_745E91: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745EA8: FLdRfVar var_1D4
  loc_745EAB: LitVar_Missing var_1D0
  loc_745EAE: LitVar_Missing var_1B0
  loc_745EB1: LitVar_Missing var_190
  loc_745EB4: LitVar_Missing var_170
  loc_745EB7: LitVar_Missing var_150
  loc_745EBA: LitVar_Missing var_130
  loc_745EBD: LitVar_Missing var_110
  loc_745EC0: LitVar_Missing var_F0
  loc_745EC3: LitVar_Missing var_D0
  loc_745EC6: LitVar_Missing var_B0
  loc_745EC9: LitStr "Notificación de llegada de archivos"
  loc_745ECC: FStStrCopy var_90
  loc_745ECF: FLdRfVar var_90
  loc_745ED2: LitI4 &H1A4
  loc_745ED7: PopTmpLdAdStr var_8C
  loc_745EDA: LitI2_Byte &H21
  loc_745EDC: PopTmpLdAd2 var_86
  loc_745EDF: ImpAdLdRf MemVar_74C7D0
  loc_745EE2: NewIfNullPr clsMsg
  loc_745EE5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745EEA: ILdRf var_1D4
  loc_745EED: LitI4 &H1A3
  loc_745EF2: FMemLdRf unk_418E79
  loc_745EF7: AryInRecLdPr
  loc_745EFD: MemStStrCopy
  loc_745F01: FFreeStr var_90 = ""
  loc_745F08: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745F1F: FLdRfVar var_1D4
  loc_745F22: LitVar_Missing var_1D0
  loc_745F25: LitVar_Missing var_1B0
  loc_745F28: LitVar_Missing var_190
  loc_745F2B: LitVar_Missing var_170
  loc_745F2E: LitVar_Missing var_150
  loc_745F31: LitVar_Missing var_130
  loc_745F34: LitVar_Missing var_110
  loc_745F37: LitVar_Missing var_F0
  loc_745F3A: LitVar_Missing var_D0
  loc_745F3D: LitVar_Missing var_B0
  loc_745F40: LitStr "Maestro de Clientes  -  OK"
  loc_745F43: FStStrCopy var_90
  loc_745F46: FLdRfVar var_90
  loc_745F49: LitI4 &H1A5
  loc_745F4E: PopTmpLdAdStr var_8C
  loc_745F51: LitI2_Byte &H21
  loc_745F53: PopTmpLdAd2 var_86
  loc_745F56: ImpAdLdRf MemVar_74C7D0
  loc_745F59: NewIfNullPr clsMsg
  loc_745F5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745F61: ILdRf var_1D4
  loc_745F64: LitI4 &H1A4
  loc_745F69: FMemLdRf unk_418E79
  loc_745F6E: AryInRecLdPr
  loc_745F74: MemStStrCopy
  loc_745F78: FFreeStr var_90 = ""
  loc_745F7F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_745F96: FLdRfVar var_1D4
  loc_745F99: LitVar_Missing var_1D0
  loc_745F9C: LitVar_Missing var_1B0
  loc_745F9F: LitVar_Missing var_190
  loc_745FA2: LitVar_Missing var_170
  loc_745FA5: LitVar_Missing var_150
  loc_745FA8: LitVar_Missing var_130
  loc_745FAB: LitVar_Missing var_110
  loc_745FAE: LitVar_Missing var_F0
  loc_745FB1: LitVar_Missing var_D0
  loc_745FB4: LitVar_Missing var_B0
  loc_745FB7: LitStr "Maestro de Clientes  -  ERROR"
  loc_745FBA: FStStrCopy var_90
  loc_745FBD: FLdRfVar var_90
  loc_745FC0: LitI4 &H1A6
  loc_745FC5: PopTmpLdAdStr var_8C
  loc_745FC8: LitI2_Byte &H21
  loc_745FCA: PopTmpLdAd2 var_86
  loc_745FCD: ImpAdLdRf MemVar_74C7D0
  loc_745FD0: NewIfNullPr clsMsg
  loc_745FD3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_745FD8: ILdRf var_1D4
  loc_745FDB: LitI4 &H1A5
  loc_745FE0: FMemLdRf unk_418E79
  loc_745FE5: AryInRecLdPr
  loc_745FEB: MemStStrCopy
  loc_745FEF: FFreeStr var_90 = ""
  loc_745FF6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74600D: FLdRfVar var_1D4
  loc_746010: LitVar_Missing var_1D0
  loc_746013: LitVar_Missing var_1B0
  loc_746016: LitVar_Missing var_190
  loc_746019: LitVar_Missing var_170
  loc_74601C: LitVar_Missing var_150
  loc_74601F: LitVar_Missing var_130
  loc_746022: LitVar_Missing var_110
  loc_746025: LitVar_Missing var_F0
  loc_746028: LitVar_Missing var_D0
  loc_74602B: LitVar_Missing var_B0
  loc_74602E: LitStr "Cambio de Precio Pospuesto"
  loc_746031: FStStrCopy var_90
  loc_746034: FLdRfVar var_90
  loc_746037: LitI4 &H1A7
  loc_74603C: PopTmpLdAdStr var_8C
  loc_74603F: LitI2_Byte &H21
  loc_746041: PopTmpLdAd2 var_86
  loc_746044: ImpAdLdRf MemVar_74C7D0
  loc_746047: NewIfNullPr clsMsg
  loc_74604A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74604F: ILdRf var_1D4
  loc_746052: LitI4 &H1A6
  loc_746057: FMemLdRf unk_418E79
  loc_74605C: AryInRecLdPr
  loc_746062: MemStStrCopy
  loc_746066: FFreeStr var_90 = ""
  loc_74606D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746084: FLdRfVar var_1D4
  loc_746087: LitVar_Missing var_1D0
  loc_74608A: LitVar_Missing var_1B0
  loc_74608D: LitVar_Missing var_190
  loc_746090: LitVar_Missing var_170
  loc_746093: LitVar_Missing var_150
  loc_746096: LitVar_Missing var_130
  loc_746099: LitVar_Missing var_110
  loc_74609C: LitVar_Missing var_F0
  loc_74609F: LitVar_Missing var_D0
  loc_7460A2: LitVar_Missing var_B0
  loc_7460A5: LitStr "Aplicar Nueva Codificación  -  OK"
  loc_7460A8: FStStrCopy var_90
  loc_7460AB: FLdRfVar var_90
  loc_7460AE: LitI4 &H1A8
  loc_7460B3: PopTmpLdAdStr var_8C
  loc_7460B6: LitI2_Byte &H21
  loc_7460B8: PopTmpLdAd2 var_86
  loc_7460BB: ImpAdLdRf MemVar_74C7D0
  loc_7460BE: NewIfNullPr clsMsg
  loc_7460C1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7460C6: ILdRf var_1D4
  loc_7460C9: LitI4 &H1A7
  loc_7460CE: FMemLdRf unk_418E79
  loc_7460D3: AryInRecLdPr
  loc_7460D9: MemStStrCopy
  loc_7460DD: FFreeStr var_90 = ""
  loc_7460E4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7460FB: FLdRfVar var_1D4
  loc_7460FE: LitVar_Missing var_1D0
  loc_746101: LitVar_Missing var_1B0
  loc_746104: LitVar_Missing var_190
  loc_746107: LitVar_Missing var_170
  loc_74610A: LitVar_Missing var_150
  loc_74610D: LitVar_Missing var_130
  loc_746110: LitVar_Missing var_110
  loc_746113: LitVar_Missing var_F0
  loc_746116: LitVar_Missing var_D0
  loc_746119: LitVar_Missing var_B0
  loc_74611C: LitStr "Aplicar Nueva Codificación  -  ERROR"
  loc_74611F: FStStrCopy var_90
  loc_746122: FLdRfVar var_90
  loc_746125: LitI4 &H1A9
  loc_74612A: PopTmpLdAdStr var_8C
  loc_74612D: LitI2_Byte &H21
  loc_74612F: PopTmpLdAd2 var_86
  loc_746132: ImpAdLdRf MemVar_74C7D0
  loc_746135: NewIfNullPr clsMsg
  loc_746138: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74613D: ILdRf var_1D4
  loc_746140: LitI4 &H1A8
  loc_746145: FMemLdRf unk_418E79
  loc_74614A: AryInRecLdPr
  loc_746150: MemStStrCopy
  loc_746154: FFreeStr var_90 = ""
  loc_74615B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746172: FLdRfVar var_1D4
  loc_746175: LitVar_Missing var_1D0
  loc_746178: LitVar_Missing var_1B0
  loc_74617B: LitVar_Missing var_190
  loc_74617E: LitVar_Missing var_170
  loc_746181: LitVar_Missing var_150
  loc_746184: LitVar_Missing var_130
  loc_746187: LitVar_Missing var_110
  loc_74618A: LitVar_Missing var_F0
  loc_74618D: LitVar_Missing var_D0
  loc_746190: LitVar_Missing var_B0
  loc_746193: LitStr "Pedido de Clave dinamica"
  loc_746196: FStStrCopy var_90
  loc_746199: FLdRfVar var_90
  loc_74619C: LitI4 &H1AA
  loc_7461A1: PopTmpLdAdStr var_8C
  loc_7461A4: LitI2_Byte &H21
  loc_7461A6: PopTmpLdAd2 var_86
  loc_7461A9: ImpAdLdRf MemVar_74C7D0
  loc_7461AC: NewIfNullPr clsMsg
  loc_7461AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7461B4: ILdRf var_1D4
  loc_7461B7: LitI4 &H1A9
  loc_7461BC: FMemLdRf unk_418E79
  loc_7461C1: AryInRecLdPr
  loc_7461C7: MemStStrCopy
  loc_7461CB: FFreeStr var_90 = ""
  loc_7461D2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7461E9: FLdRfVar var_1D4
  loc_7461EC: LitVar_Missing var_1D0
  loc_7461EF: LitVar_Missing var_1B0
  loc_7461F2: LitVar_Missing var_190
  loc_7461F5: LitVar_Missing var_170
  loc_7461F8: LitVar_Missing var_150
  loc_7461FB: LitVar_Missing var_130
  loc_7461FE: LitVar_Missing var_110
  loc_746201: LitVar_Missing var_F0
  loc_746204: LitVar_Missing var_D0
  loc_746207: LitVar_Missing var_B0
  loc_74620A: LitStr "Archivo de entrada Procesado"
  loc_74620D: FStStrCopy var_90
  loc_746210: FLdRfVar var_90
  loc_746213: LitI4 &H1AB
  loc_746218: PopTmpLdAdStr var_8C
  loc_74621B: LitI2_Byte &H21
  loc_74621D: PopTmpLdAd2 var_86
  loc_746220: ImpAdLdRf MemVar_74C7D0
  loc_746223: NewIfNullPr clsMsg
  loc_746226: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74622B: ILdRf var_1D4
  loc_74622E: LitI4 &H1AA
  loc_746233: FMemLdRf unk_418E79
  loc_746238: AryInRecLdPr
  loc_74623E: MemStStrCopy
  loc_746242: FFreeStr var_90 = ""
  loc_746249: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746260: FLdRfVar var_1D4
  loc_746263: LitVar_Missing var_1D0
  loc_746266: LitVar_Missing var_1B0
  loc_746269: LitVar_Missing var_190
  loc_74626C: LitVar_Missing var_170
  loc_74626F: LitVar_Missing var_150
  loc_746272: LitVar_Missing var_130
  loc_746275: LitVar_Missing var_110
  loc_746278: LitVar_Missing var_F0
  loc_74627B: LitVar_Missing var_D0
  loc_74627E: LitVar_Missing var_B0
  loc_746281: LitStr "Alta de Cliente  -  OK"
  loc_746284: FStStrCopy var_90
  loc_746287: FLdRfVar var_90
  loc_74628A: LitI4 &H1AC
  loc_74628F: PopTmpLdAdStr var_8C
  loc_746292: LitI2_Byte &H21
  loc_746294: PopTmpLdAd2 var_86
  loc_746297: ImpAdLdRf MemVar_74C7D0
  loc_74629A: NewIfNullPr clsMsg
  loc_74629D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7462A2: ILdRf var_1D4
  loc_7462A5: LitI4 &H1AB
  loc_7462AA: FMemLdRf unk_418E79
  loc_7462AF: AryInRecLdPr
  loc_7462B5: MemStStrCopy
  loc_7462B9: FFreeStr var_90 = ""
  loc_7462C0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7462D7: FLdRfVar var_1D4
  loc_7462DA: LitVar_Missing var_1D0
  loc_7462DD: LitVar_Missing var_1B0
  loc_7462E0: LitVar_Missing var_190
  loc_7462E3: LitVar_Missing var_170
  loc_7462E6: LitVar_Missing var_150
  loc_7462E9: LitVar_Missing var_130
  loc_7462EC: LitVar_Missing var_110
  loc_7462EF: LitVar_Missing var_F0
  loc_7462F2: LitVar_Missing var_D0
  loc_7462F5: LitVar_Missing var_B0
  loc_7462F8: LitStr "Alta de Cliente  -  ERROR"
  loc_7462FB: FStStrCopy var_90
  loc_7462FE: FLdRfVar var_90
  loc_746301: LitI4 &H1AD
  loc_746306: PopTmpLdAdStr var_8C
  loc_746309: LitI2_Byte &H21
  loc_74630B: PopTmpLdAd2 var_86
  loc_74630E: ImpAdLdRf MemVar_74C7D0
  loc_746311: NewIfNullPr clsMsg
  loc_746314: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746319: ILdRf var_1D4
  loc_74631C: LitI4 &H1AC
  loc_746321: FMemLdRf unk_418E79
  loc_746326: AryInRecLdPr
  loc_74632C: MemStStrCopy
  loc_746330: FFreeStr var_90 = ""
  loc_746337: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74634E: FLdRfVar var_1D4
  loc_746351: LitVar_Missing var_1D0
  loc_746354: LitVar_Missing var_1B0
  loc_746357: LitVar_Missing var_190
  loc_74635A: LitVar_Missing var_170
  loc_74635D: LitVar_Missing var_150
  loc_746360: LitVar_Missing var_130
  loc_746363: LitVar_Missing var_110
  loc_746366: LitVar_Missing var_F0
  loc_746369: LitVar_Missing var_D0
  loc_74636C: LitVar_Missing var_B0
  loc_74636F: LitStr "Baja de Cliente  -  OK"
  loc_746372: FStStrCopy var_90
  loc_746375: FLdRfVar var_90
  loc_746378: LitI4 &H1AE
  loc_74637D: PopTmpLdAdStr var_8C
  loc_746380: LitI2_Byte &H21
  loc_746382: PopTmpLdAd2 var_86
  loc_746385: ImpAdLdRf MemVar_74C7D0
  loc_746388: NewIfNullPr clsMsg
  loc_74638B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746390: ILdRf var_1D4
  loc_746393: LitI4 &H1AD
  loc_746398: FMemLdRf unk_418E79
  loc_74639D: AryInRecLdPr
  loc_7463A3: MemStStrCopy
  loc_7463A7: FFreeStr var_90 = ""
  loc_7463AE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7463C5: FLdRfVar var_1D4
  loc_7463C8: LitVar_Missing var_1D0
  loc_7463CB: LitVar_Missing var_1B0
  loc_7463CE: LitVar_Missing var_190
  loc_7463D1: LitVar_Missing var_170
  loc_7463D4: LitVar_Missing var_150
  loc_7463D7: LitVar_Missing var_130
  loc_7463DA: LitVar_Missing var_110
  loc_7463DD: LitVar_Missing var_F0
  loc_7463E0: LitVar_Missing var_D0
  loc_7463E3: LitVar_Missing var_B0
  loc_7463E6: LitStr "Baja de Cliente  -  ERROR"
  loc_7463E9: FStStrCopy var_90
  loc_7463EC: FLdRfVar var_90
  loc_7463EF: LitI4 &H1AF
  loc_7463F4: PopTmpLdAdStr var_8C
  loc_7463F7: LitI2_Byte &H21
  loc_7463F9: PopTmpLdAd2 var_86
  loc_7463FC: ImpAdLdRf MemVar_74C7D0
  loc_7463FF: NewIfNullPr clsMsg
  loc_746402: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746407: ILdRf var_1D4
  loc_74640A: LitI4 &H1AE
  loc_74640F: FMemLdRf unk_418E79
  loc_746414: AryInRecLdPr
  loc_74641A: MemStStrCopy
  loc_74641E: FFreeStr var_90 = ""
  loc_746425: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74643C: FLdRfVar var_1D4
  loc_74643F: LitVar_Missing var_1D0
  loc_746442: LitVar_Missing var_1B0
  loc_746445: LitVar_Missing var_190
  loc_746448: LitVar_Missing var_170
  loc_74644B: LitVar_Missing var_150
  loc_74644E: LitVar_Missing var_130
  loc_746451: LitVar_Missing var_110
  loc_746454: LitVar_Missing var_F0
  loc_746457: LitVar_Missing var_D0
  loc_74645A: LitVar_Missing var_B0
  loc_74645D: LitStr "Modificación de Cliente  -  OK"
  loc_746460: FStStrCopy var_90
  loc_746463: FLdRfVar var_90
  loc_746466: LitI4 &H1B0
  loc_74646B: PopTmpLdAdStr var_8C
  loc_74646E: LitI2_Byte &H21
  loc_746470: PopTmpLdAd2 var_86
  loc_746473: ImpAdLdRf MemVar_74C7D0
  loc_746476: NewIfNullPr clsMsg
  loc_746479: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74647E: ILdRf var_1D4
  loc_746481: LitI4 &H1AF
  loc_746486: FMemLdRf unk_418E79
  loc_74648B: AryInRecLdPr
  loc_746491: MemStStrCopy
  loc_746495: FFreeStr var_90 = ""
  loc_74649C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7464B3: FLdRfVar var_1D4
  loc_7464B6: LitVar_Missing var_1D0
  loc_7464B9: LitVar_Missing var_1B0
  loc_7464BC: LitVar_Missing var_190
  loc_7464BF: LitVar_Missing var_170
  loc_7464C2: LitVar_Missing var_150
  loc_7464C5: LitVar_Missing var_130
  loc_7464C8: LitVar_Missing var_110
  loc_7464CB: LitVar_Missing var_F0
  loc_7464CE: LitVar_Missing var_D0
  loc_7464D1: LitVar_Missing var_B0
  loc_7464D4: LitStr "Modificación de Cliente  -  ERROR"
  loc_7464D7: FStStrCopy var_90
  loc_7464DA: FLdRfVar var_90
  loc_7464DD: LitI4 &H1B1
  loc_7464E2: PopTmpLdAdStr var_8C
  loc_7464E5: LitI2_Byte &H21
  loc_7464E7: PopTmpLdAd2 var_86
  loc_7464EA: ImpAdLdRf MemVar_74C7D0
  loc_7464ED: NewIfNullPr clsMsg
  loc_7464F0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7464F5: ILdRf var_1D4
  loc_7464F8: LitI4 &H1B0
  loc_7464FD: FMemLdRf unk_418E79
  loc_746502: AryInRecLdPr
  loc_746508: MemStStrCopy
  loc_74650C: FFreeStr var_90 = ""
  loc_746513: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74652A: FLdRfVar var_1D4
  loc_74652D: LitVar_Missing var_1D0
  loc_746530: LitVar_Missing var_1B0
  loc_746533: LitVar_Missing var_190
  loc_746536: LitVar_Missing var_170
  loc_746539: LitVar_Missing var_150
  loc_74653C: LitVar_Missing var_130
  loc_74653F: LitVar_Missing var_110
  loc_746542: LitVar_Missing var_F0
  loc_746545: LitVar_Missing var_D0
  loc_746548: LitVar_Missing var_B0
  loc_74654B: LitStr "Cambios PPP aceptados"
  loc_74654E: FStStrCopy var_90
  loc_746551: FLdRfVar var_90
  loc_746554: LitI4 &H1B2
  loc_746559: PopTmpLdAdStr var_8C
  loc_74655C: LitI2_Byte &H21
  loc_74655E: PopTmpLdAd2 var_86
  loc_746561: ImpAdLdRf MemVar_74C7D0
  loc_746564: NewIfNullPr clsMsg
  loc_746567: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74656C: ILdRf var_1D4
  loc_74656F: LitI4 &H1B1
  loc_746574: FMemLdRf unk_418E79
  loc_746579: AryInRecLdPr
  loc_74657F: MemStStrCopy
  loc_746583: FFreeStr var_90 = ""
  loc_74658A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7465A1: FLdRfVar var_1D4
  loc_7465A4: LitVar_Missing var_1D0
  loc_7465A7: LitVar_Missing var_1B0
  loc_7465AA: LitVar_Missing var_190
  loc_7465AD: LitVar_Missing var_170
  loc_7465B0: LitVar_Missing var_150
  loc_7465B3: LitVar_Missing var_130
  loc_7465B6: LitVar_Missing var_110
  loc_7465B9: LitVar_Missing var_F0
  loc_7465BC: LitVar_Missing var_D0
  loc_7465BF: LitVar_Missing var_B0
  loc_7465C2: LitStr "Error en cambios de PPP"
  loc_7465C5: FStStrCopy var_90
  loc_7465C8: FLdRfVar var_90
  loc_7465CB: LitI4 &H1B3
  loc_7465D0: PopTmpLdAdStr var_8C
  loc_7465D3: LitI2_Byte &H21
  loc_7465D5: PopTmpLdAd2 var_86
  loc_7465D8: ImpAdLdRf MemVar_74C7D0
  loc_7465DB: NewIfNullPr clsMsg
  loc_7465DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7465E3: ILdRf var_1D4
  loc_7465E6: LitI4 &H1B2
  loc_7465EB: FMemLdRf unk_418E79
  loc_7465F0: AryInRecLdPr
  loc_7465F6: MemStStrCopy
  loc_7465FA: FFreeStr var_90 = ""
  loc_746601: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746618: FLdRfVar var_1D4
  loc_74661B: LitVar_Missing var_1D0
  loc_74661E: LitVar_Missing var_1B0
  loc_746621: LitVar_Missing var_190
  loc_746624: LitVar_Missing var_170
  loc_746627: LitVar_Missing var_150
  loc_74662A: LitVar_Missing var_130
  loc_74662D: LitVar_Missing var_110
  loc_746630: LitVar_Missing var_F0
  loc_746633: LitVar_Missing var_D0
  loc_746636: LitVar_Missing var_B0
  loc_746639: LitStr "Salida de PPP aceptado"
  loc_74663C: FStStrCopy var_90
  loc_74663F: FLdRfVar var_90
  loc_746642: LitI4 &H1B4
  loc_746647: PopTmpLdAdStr var_8C
  loc_74664A: LitI2_Byte &H21
  loc_74664C: PopTmpLdAd2 var_86
  loc_74664F: ImpAdLdRf MemVar_74C7D0
  loc_746652: NewIfNullPr clsMsg
  loc_746655: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74665A: ILdRf var_1D4
  loc_74665D: LitI4 &H1B3
  loc_746662: FMemLdRf unk_418E79
  loc_746667: AryInRecLdPr
  loc_74666D: MemStStrCopy
  loc_746671: FFreeStr var_90 = ""
  loc_746678: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74668F: FLdRfVar var_1D4
  loc_746692: LitVar_Missing var_1D0
  loc_746695: LitVar_Missing var_1B0
  loc_746698: LitVar_Missing var_190
  loc_74669B: LitVar_Missing var_170
  loc_74669E: LitVar_Missing var_150
  loc_7466A1: LitVar_Missing var_130
  loc_7466A4: LitVar_Missing var_110
  loc_7466A7: LitVar_Missing var_F0
  loc_7466AA: LitVar_Missing var_D0
  loc_7466AD: LitVar_Missing var_B0
  loc_7466B0: LitStr "Error en salida de PPP"
  loc_7466B3: FStStrCopy var_90
  loc_7466B6: FLdRfVar var_90
  loc_7466B9: LitI4 &H1B5
  loc_7466BE: PopTmpLdAdStr var_8C
  loc_7466C1: LitI2_Byte &H21
  loc_7466C3: PopTmpLdAd2 var_86
  loc_7466C6: ImpAdLdRf MemVar_74C7D0
  loc_7466C9: NewIfNullPr clsMsg
  loc_7466CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7466D1: ILdRf var_1D4
  loc_7466D4: LitI4 &H1B4
  loc_7466D9: FMemLdRf unk_418E79
  loc_7466DE: AryInRecLdPr
  loc_7466E4: MemStStrCopy
  loc_7466E8: FFreeStr var_90 = ""
  loc_7466EF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746706: FLdRfVar var_1D4
  loc_746709: LitVar_Missing var_1D0
  loc_74670C: LitVar_Missing var_1B0
  loc_74670F: LitVar_Missing var_190
  loc_746712: LitVar_Missing var_170
  loc_746715: LitVar_Missing var_150
  loc_746718: LitVar_Missing var_130
  loc_74671B: LitVar_Missing var_110
  loc_74671E: LitVar_Missing var_F0
  loc_746721: LitVar_Missing var_D0
  loc_746724: LitVar_Missing var_B0
  loc_746727: LitStr "Abriendo PPP"
  loc_74672A: FStStrCopy var_90
  loc_74672D: FLdRfVar var_90
  loc_746730: LitI4 &H1B6
  loc_746735: PopTmpLdAdStr var_8C
  loc_746738: LitI2_Byte &H21
  loc_74673A: PopTmpLdAd2 var_86
  loc_74673D: ImpAdLdRf MemVar_74C7D0
  loc_746740: NewIfNullPr clsMsg
  loc_746743: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746748: ILdRf var_1D4
  loc_74674B: LitI4 &H1B5
  loc_746750: FMemLdRf unk_418E79
  loc_746755: AryInRecLdPr
  loc_74675B: MemStStrCopy
  loc_74675F: FFreeStr var_90 = ""
  loc_746766: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74677D: FLdRfVar var_1D4
  loc_746780: LitVar_Missing var_1D0
  loc_746783: LitVar_Missing var_1B0
  loc_746786: LitVar_Missing var_190
  loc_746789: LitVar_Missing var_170
  loc_74678C: LitVar_Missing var_150
  loc_74678F: LitVar_Missing var_130
  loc_746792: LitVar_Missing var_110
  loc_746795: LitVar_Missing var_F0
  loc_746798: LitVar_Missing var_D0
  loc_74679B: LitVar_Missing var_B0
  loc_74679E: LitStr "Cerrando PPP"
  loc_7467A1: FStStrCopy var_90
  loc_7467A4: FLdRfVar var_90
  loc_7467A7: LitI4 &H1B7
  loc_7467AC: PopTmpLdAdStr var_8C
  loc_7467AF: LitI2_Byte &H21
  loc_7467B1: PopTmpLdAd2 var_86
  loc_7467B4: ImpAdLdRf MemVar_74C7D0
  loc_7467B7: NewIfNullPr clsMsg
  loc_7467BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7467BF: ILdRf var_1D4
  loc_7467C2: LitI4 &H1B6
  loc_7467C7: FMemLdRf unk_418E79
  loc_7467CC: AryInRecLdPr
  loc_7467D2: MemStStrCopy
  loc_7467D6: FFreeStr var_90 = ""
  loc_7467DD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7467F4: FLdRfVar var_1D4
  loc_7467F7: LitVar_Missing var_1D0
  loc_7467FA: LitVar_Missing var_1B0
  loc_7467FD: LitVar_Missing var_190
  loc_746800: LitVar_Missing var_170
  loc_746803: LitVar_Missing var_150
  loc_746806: LitVar_Missing var_130
  loc_746809: LitVar_Missing var_110
  loc_74680C: LitVar_Missing var_F0
  loc_74680F: LitVar_Missing var_D0
  loc_746812: LitVar_Missing var_B0
  loc_746815: LitStr "Versión de AC Incorrecta"
  loc_746818: FStStrCopy var_90
  loc_74681B: FLdRfVar var_90
  loc_74681E: LitI4 &H1B8
  loc_746823: PopTmpLdAdStr var_8C
  loc_746826: LitI2_Byte &H21
  loc_746828: PopTmpLdAd2 var_86
  loc_74682B: ImpAdLdRf MemVar_74C7D0
  loc_74682E: NewIfNullPr clsMsg
  loc_746831: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746836: ILdRf var_1D4
  loc_746839: LitI4 &H1B7
  loc_74683E: FMemLdRf unk_418E79
  loc_746843: AryInRecLdPr
  loc_746849: MemStStrCopy
  loc_74684D: FFreeStr var_90 = ""
  loc_746854: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74686B: FLdRfVar var_1D4
  loc_74686E: LitVar_Missing var_1D0
  loc_746871: LitVar_Missing var_1B0
  loc_746874: LitVar_Missing var_190
  loc_746877: LitVar_Missing var_170
  loc_74687A: LitVar_Missing var_150
  loc_74687D: LitVar_Missing var_130
  loc_746880: LitVar_Missing var_110
  loc_746883: LitVar_Missing var_F0
  loc_746886: LitVar_Missing var_D0
  loc_746889: LitVar_Missing var_B0
  loc_74688C: LitStr "Debitos Bancarios - OK"
  loc_74688F: FStStrCopy var_90
  loc_746892: FLdRfVar var_90
  loc_746895: LitI4 &H1B9
  loc_74689A: PopTmpLdAdStr var_8C
  loc_74689D: LitI2_Byte &H21
  loc_74689F: PopTmpLdAd2 var_86
  loc_7468A2: ImpAdLdRf MemVar_74C7D0
  loc_7468A5: NewIfNullPr clsMsg
  loc_7468A8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7468AD: ILdRf var_1D4
  loc_7468B0: LitI4 &H1B8
  loc_7468B5: FMemLdRf unk_418E79
  loc_7468BA: AryInRecLdPr
  loc_7468C0: MemStStrCopy
  loc_7468C4: FFreeStr var_90 = ""
  loc_7468CB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7468E2: FLdRfVar var_1D4
  loc_7468E5: LitVar_Missing var_1D0
  loc_7468E8: LitVar_Missing var_1B0
  loc_7468EB: LitVar_Missing var_190
  loc_7468EE: LitVar_Missing var_170
  loc_7468F1: LitVar_Missing var_150
  loc_7468F4: LitVar_Missing var_130
  loc_7468F7: LitVar_Missing var_110
  loc_7468FA: LitVar_Missing var_F0
  loc_7468FD: LitVar_Missing var_D0
  loc_746900: LitVar_Missing var_B0
  loc_746903: LitStr "Debitos Bancarios - ERROR"
  loc_746906: FStStrCopy var_90
  loc_746909: FLdRfVar var_90
  loc_74690C: LitI4 &H1BA
  loc_746911: PopTmpLdAdStr var_8C
  loc_746914: LitI2_Byte &H21
  loc_746916: PopTmpLdAd2 var_86
  loc_746919: ImpAdLdRf MemVar_74C7D0
  loc_74691C: NewIfNullPr clsMsg
  loc_74691F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746924: ILdRf var_1D4
  loc_746927: LitI4 &H1B9
  loc_74692C: FMemLdRf unk_418E79
  loc_746931: AryInRecLdPr
  loc_746937: MemStStrCopy
  loc_74693B: FFreeStr var_90 = ""
  loc_746942: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746959: FLdRfVar var_1D4
  loc_74695C: LitVar_Missing var_1D0
  loc_74695F: LitVar_Missing var_1B0
  loc_746962: LitVar_Missing var_190
  loc_746965: LitVar_Missing var_170
  loc_746968: LitVar_Missing var_150
  loc_74696B: LitVar_Missing var_130
  loc_74696E: LitVar_Missing var_110
  loc_746971: LitVar_Missing var_F0
  loc_746974: LitVar_Missing var_D0
  loc_746977: LitVar_Missing var_B0
  loc_74697A: LitStr "Cambio de Nivel de Precios"
  loc_74697D: FStStrCopy var_90
  loc_746980: FLdRfVar var_90
  loc_746983: LitI4 &H1BB
  loc_746988: PopTmpLdAdStr var_8C
  loc_74698B: LitI2_Byte &H21
  loc_74698D: PopTmpLdAd2 var_86
  loc_746990: ImpAdLdRf MemVar_74C7D0
  loc_746993: NewIfNullPr clsMsg
  loc_746996: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74699B: ILdRf var_1D4
  loc_74699E: LitI4 &H1BA
  loc_7469A3: FMemLdRf unk_418E79
  loc_7469A8: AryInRecLdPr
  loc_7469AE: MemStStrCopy
  loc_7469B2: FFreeStr var_90 = ""
  loc_7469B9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7469D0: FLdRfVar var_1D4
  loc_7469D3: LitVar_Missing var_1D0
  loc_7469D6: LitVar_Missing var_1B0
  loc_7469D9: LitVar_Missing var_190
  loc_7469DC: LitVar_Missing var_170
  loc_7469DF: LitVar_Missing var_150
  loc_7469E2: LitVar_Missing var_130
  loc_7469E5: LitVar_Missing var_110
  loc_7469E8: LitVar_Missing var_F0
  loc_7469EB: LitVar_Missing var_D0
  loc_7469EE: LitVar_Missing var_B0
  loc_7469F1: LitStr "Agrego de Nivel de Precios"
  loc_7469F4: FStStrCopy var_90
  loc_7469F7: FLdRfVar var_90
  loc_7469FA: LitI4 &H1BC
  loc_7469FF: PopTmpLdAdStr var_8C
  loc_746A02: LitI2_Byte &H21
  loc_746A04: PopTmpLdAd2 var_86
  loc_746A07: ImpAdLdRf MemVar_74C7D0
  loc_746A0A: NewIfNullPr clsMsg
  loc_746A0D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746A12: ILdRf var_1D4
  loc_746A15: LitI4 &H1BB
  loc_746A1A: FMemLdRf unk_418E79
  loc_746A1F: AryInRecLdPr
  loc_746A25: MemStStrCopy
  loc_746A29: FFreeStr var_90 = ""
  loc_746A30: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746A47: FLdRfVar var_1D4
  loc_746A4A: LitVar_Missing var_1D0
  loc_746A4D: LitVar_Missing var_1B0
  loc_746A50: LitVar_Missing var_190
  loc_746A53: LitVar_Missing var_170
  loc_746A56: LitVar_Missing var_150
  loc_746A59: LitVar_Missing var_130
  loc_746A5C: LitVar_Missing var_110
  loc_746A5F: LitVar_Missing var_F0
  loc_746A62: LitVar_Missing var_D0
  loc_746A65: LitVar_Missing var_B0
  loc_746A68: LitStr "Eliminación de Nivel de Precios"
  loc_746A6B: FStStrCopy var_90
  loc_746A6E: FLdRfVar var_90
  loc_746A71: LitI4 &H1BD
  loc_746A76: PopTmpLdAdStr var_8C
  loc_746A79: LitI2_Byte &H21
  loc_746A7B: PopTmpLdAd2 var_86
  loc_746A7E: ImpAdLdRf MemVar_74C7D0
  loc_746A81: NewIfNullPr clsMsg
  loc_746A84: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746A89: ILdRf var_1D4
  loc_746A8C: LitI4 &H1BC
  loc_746A91: FMemLdRf unk_418E79
  loc_746A96: AryInRecLdPr
  loc_746A9C: MemStStrCopy
  loc_746AA0: FFreeStr var_90 = ""
  loc_746AA7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746ABE: FLdRfVar var_1D4
  loc_746AC1: LitVar_Missing var_1D0
  loc_746AC4: LitVar_Missing var_1B0
  loc_746AC7: LitVar_Missing var_190
  loc_746ACA: LitVar_Missing var_170
  loc_746ACD: LitVar_Missing var_150
  loc_746AD0: LitVar_Missing var_130
  loc_746AD3: LitVar_Missing var_110
  loc_746AD6: LitVar_Missing var_F0
  loc_746AD9: LitVar_Missing var_D0
  loc_746ADC: LitVar_Missing var_B0
  loc_746ADF: LitStr "Espera por aplicacion de cambio de Precios"
  loc_746AE2: FStStrCopy var_90
  loc_746AE5: FLdRfVar var_90
  loc_746AE8: LitI4 &H1BE
  loc_746AED: PopTmpLdAdStr var_8C
  loc_746AF0: LitI2_Byte &H21
  loc_746AF2: PopTmpLdAd2 var_86
  loc_746AF5: ImpAdLdRf MemVar_74C7D0
  loc_746AF8: NewIfNullPr clsMsg
  loc_746AFB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746B00: ILdRf var_1D4
  loc_746B03: LitI4 &H1BD
  loc_746B08: FMemLdRf unk_418E79
  loc_746B0D: AryInRecLdPr
  loc_746B13: MemStStrCopy
  loc_746B17: FFreeStr var_90 = ""
  loc_746B1E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746B35: FLdRfVar var_1D4
  loc_746B38: LitVar_Missing var_1D0
  loc_746B3B: LitVar_Missing var_1B0
  loc_746B3E: LitVar_Missing var_190
  loc_746B41: LitVar_Missing var_170
  loc_746B44: LitVar_Missing var_150
  loc_746B47: LitVar_Missing var_130
  loc_746B4A: LitVar_Missing var_110
  loc_746B4D: LitVar_Missing var_F0
  loc_746B50: LitVar_Missing var_D0
  loc_746B53: LitVar_Missing var_B0
  loc_746B56: LitStr "Cambio en la seguridad"
  loc_746B59: FStStrCopy var_90
  loc_746B5C: FLdRfVar var_90
  loc_746B5F: LitI4 &H1BF
  loc_746B64: PopTmpLdAdStr var_8C
  loc_746B67: LitI2_Byte &H21
  loc_746B69: PopTmpLdAd2 var_86
  loc_746B6C: ImpAdLdRf MemVar_74C7D0
  loc_746B6F: NewIfNullPr clsMsg
  loc_746B72: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746B77: ILdRf var_1D4
  loc_746B7A: LitI4 &H1BE
  loc_746B7F: FMemLdRf unk_418E79
  loc_746B84: AryInRecLdPr
  loc_746B8A: MemStStrCopy
  loc_746B8E: FFreeStr var_90 = ""
  loc_746B95: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746BAC: FLdRfVar var_1D4
  loc_746BAF: LitVar_Missing var_1D0
  loc_746BB2: LitVar_Missing var_1B0
  loc_746BB5: LitVar_Missing var_190
  loc_746BB8: LitVar_Missing var_170
  loc_746BBB: LitVar_Missing var_150
  loc_746BBE: LitVar_Missing var_130
  loc_746BC1: LitVar_Missing var_110
  loc_746BC4: LitVar_Missing var_F0
  loc_746BC7: LitVar_Missing var_D0
  loc_746BCA: LitVar_Missing var_B0
  loc_746BCD: LitStr "Generación incorrecta de archivos"
  loc_746BD0: FStStrCopy var_90
  loc_746BD3: FLdRfVar var_90
  loc_746BD6: LitI4 &H1C0
  loc_746BDB: PopTmpLdAdStr var_8C
  loc_746BDE: LitI2_Byte &H21
  loc_746BE0: PopTmpLdAd2 var_86
  loc_746BE3: ImpAdLdRf MemVar_74C7D0
  loc_746BE6: NewIfNullPr clsMsg
  loc_746BE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746BEE: ILdRf var_1D4
  loc_746BF1: LitI4 &H1BF
  loc_746BF6: FMemLdRf unk_418E79
  loc_746BFB: AryInRecLdPr
  loc_746C01: MemStStrCopy
  loc_746C05: FFreeStr var_90 = ""
  loc_746C0C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746C23: FLdRfVar var_1D4
  loc_746C26: LitVar_Missing var_1D0
  loc_746C29: LitVar_Missing var_1B0
  loc_746C2C: LitVar_Missing var_190
  loc_746C2F: LitVar_Missing var_170
  loc_746C32: LitVar_Missing var_150
  loc_746C35: LitVar_Missing var_130
  loc_746C38: LitVar_Missing var_110
  loc_746C3B: LitVar_Missing var_F0
  loc_746C3E: LitVar_Missing var_D0
  loc_746C41: LitVar_Missing var_B0
  loc_746C44: LitStr "Error en el totalizador de monto"
  loc_746C47: FStStrCopy var_90
  loc_746C4A: FLdRfVar var_90
  loc_746C4D: LitI4 &H1C1
  loc_746C52: PopTmpLdAdStr var_8C
  loc_746C55: LitI2_Byte &H21
  loc_746C57: PopTmpLdAd2 var_86
  loc_746C5A: ImpAdLdRf MemVar_74C7D0
  loc_746C5D: NewIfNullPr clsMsg
  loc_746C60: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746C65: ILdRf var_1D4
  loc_746C68: LitI4 &H1C0
  loc_746C6D: FMemLdRf unk_418E79
  loc_746C72: AryInRecLdPr
  loc_746C78: MemStStrCopy
  loc_746C7C: FFreeStr var_90 = ""
  loc_746C83: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746C9A: FLdRfVar var_1D4
  loc_746C9D: LitVar_Missing var_1D0
  loc_746CA0: LitVar_Missing var_1B0
  loc_746CA3: LitVar_Missing var_190
  loc_746CA6: LitVar_Missing var_170
  loc_746CA9: LitVar_Missing var_150
  loc_746CAC: LitVar_Missing var_130
  loc_746CAF: LitVar_Missing var_110
  loc_746CB2: LitVar_Missing var_F0
  loc_746CB5: LitVar_Missing var_D0
  loc_746CB8: LitVar_Missing var_B0
  loc_746CBB: LitStr "Error en el totalizador de volumen"
  loc_746CBE: FStStrCopy var_90
  loc_746CC1: FLdRfVar var_90
  loc_746CC4: LitI4 &H1C2
  loc_746CC9: PopTmpLdAdStr var_8C
  loc_746CCC: LitI2_Byte &H21
  loc_746CCE: PopTmpLdAd2 var_86
  loc_746CD1: ImpAdLdRf MemVar_74C7D0
  loc_746CD4: NewIfNullPr clsMsg
  loc_746CD7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746CDC: ILdRf var_1D4
  loc_746CDF: LitI4 &H1C1
  loc_746CE4: FMemLdRf unk_418E79
  loc_746CE9: AryInRecLdPr
  loc_746CEF: MemStStrCopy
  loc_746CF3: FFreeStr var_90 = ""
  loc_746CFA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746D11: FLdRfVar var_1D4
  loc_746D14: LitVar_Missing var_1D0
  loc_746D17: LitVar_Missing var_1B0
  loc_746D1A: LitVar_Missing var_190
  loc_746D1D: LitVar_Missing var_170
  loc_746D20: LitVar_Missing var_150
  loc_746D23: LitVar_Missing var_130
  loc_746D26: LitVar_Missing var_110
  loc_746D29: LitVar_Missing var_F0
  loc_746D2C: LitVar_Missing var_D0
  loc_746D2F: LitVar_Missing var_B0
  loc_746D32: LitStr "Error en el totalizador de monto sin control"
  loc_746D35: FStStrCopy var_90
  loc_746D38: FLdRfVar var_90
  loc_746D3B: LitI4 &H1C3
  loc_746D40: PopTmpLdAdStr var_8C
  loc_746D43: LitI2_Byte &H21
  loc_746D45: PopTmpLdAd2 var_86
  loc_746D48: ImpAdLdRf MemVar_74C7D0
  loc_746D4B: NewIfNullPr clsMsg
  loc_746D4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746D53: ILdRf var_1D4
  loc_746D56: LitI4 &H1C2
  loc_746D5B: FMemLdRf unk_418E79
  loc_746D60: AryInRecLdPr
  loc_746D66: MemStStrCopy
  loc_746D6A: FFreeStr var_90 = ""
  loc_746D71: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746D88: FLdRfVar var_1D4
  loc_746D8B: LitVar_Missing var_1D0
  loc_746D8E: LitVar_Missing var_1B0
  loc_746D91: LitVar_Missing var_190
  loc_746D94: LitVar_Missing var_170
  loc_746D97: LitVar_Missing var_150
  loc_746D9A: LitVar_Missing var_130
  loc_746D9D: LitVar_Missing var_110
  loc_746DA0: LitVar_Missing var_F0
  loc_746DA3: LitVar_Missing var_D0
  loc_746DA6: LitVar_Missing var_B0
  loc_746DA9: LitStr "Error en el totalizador de volumen sin control"
  loc_746DAC: FStStrCopy var_90
  loc_746DAF: FLdRfVar var_90
  loc_746DB2: LitI4 &H1C4
  loc_746DB7: PopTmpLdAdStr var_8C
  loc_746DBA: LitI2_Byte &H21
  loc_746DBC: PopTmpLdAd2 var_86
  loc_746DBF: ImpAdLdRf MemVar_74C7D0
  loc_746DC2: NewIfNullPr clsMsg
  loc_746DC5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746DCA: ILdRf var_1D4
  loc_746DCD: LitI4 &H1C3
  loc_746DD2: FMemLdRf unk_418E79
  loc_746DD7: AryInRecLdPr
  loc_746DDD: MemStStrCopy
  loc_746DE1: FFreeStr var_90 = ""
  loc_746DE8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746DFF: FLdRfVar var_1D4
  loc_746E02: LitVar_Missing var_1D0
  loc_746E05: LitVar_Missing var_1B0
  loc_746E08: LitVar_Missing var_190
  loc_746E0B: LitVar_Missing var_170
  loc_746E0E: LitVar_Missing var_150
  loc_746E11: LitVar_Missing var_130
  loc_746E14: LitVar_Missing var_110
  loc_746E17: LitVar_Missing var_F0
  loc_746E1A: LitVar_Missing var_D0
  loc_746E1D: LitVar_Missing var_B0
  loc_746E20: LitStr "Maestro de cierre aceptado"
  loc_746E23: FStStrCopy var_90
  loc_746E26: FLdRfVar var_90
  loc_746E29: LitI4 &H1C5
  loc_746E2E: PopTmpLdAdStr var_8C
  loc_746E31: LitI2_Byte &H21
  loc_746E33: PopTmpLdAd2 var_86
  loc_746E36: ImpAdLdRf MemVar_74C7D0
  loc_746E39: NewIfNullPr clsMsg
  loc_746E3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746E41: ILdRf var_1D4
  loc_746E44: LitI4 &H1C4
  loc_746E49: FMemLdRf unk_418E79
  loc_746E4E: AryInRecLdPr
  loc_746E54: MemStStrCopy
  loc_746E58: FFreeStr var_90 = ""
  loc_746E5F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746E76: FLdRfVar var_1D4
  loc_746E79: LitVar_Missing var_1D0
  loc_746E7C: LitVar_Missing var_1B0
  loc_746E7F: LitVar_Missing var_190
  loc_746E82: LitVar_Missing var_170
  loc_746E85: LitVar_Missing var_150
  loc_746E88: LitVar_Missing var_130
  loc_746E8B: LitVar_Missing var_110
  loc_746E8E: LitVar_Missing var_F0
  loc_746E91: LitVar_Missing var_D0
  loc_746E94: LitVar_Missing var_B0
  loc_746E97: LitStr "Maestro de cierre en error"
  loc_746E9A: FStStrCopy var_90
  loc_746E9D: FLdRfVar var_90
  loc_746EA0: LitI4 &H1C6
  loc_746EA5: PopTmpLdAdStr var_8C
  loc_746EA8: LitI2_Byte &H21
  loc_746EAA: PopTmpLdAd2 var_86
  loc_746EAD: ImpAdLdRf MemVar_74C7D0
  loc_746EB0: NewIfNullPr clsMsg
  loc_746EB3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746EB8: ILdRf var_1D4
  loc_746EBB: LitI4 &H1C5
  loc_746EC0: FMemLdRf unk_418E79
  loc_746EC5: AryInRecLdPr
  loc_746ECB: MemStStrCopy
  loc_746ECF: FFreeStr var_90 = ""
  loc_746ED6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746EED: FLdRfVar var_1D4
  loc_746EF0: LitVar_Missing var_1D0
  loc_746EF3: LitVar_Missing var_1B0
  loc_746EF6: LitVar_Missing var_190
  loc_746EF9: LitVar_Missing var_170
  loc_746EFC: LitVar_Missing var_150
  loc_746EFF: LitVar_Missing var_130
  loc_746F02: LitVar_Missing var_110
  loc_746F05: LitVar_Missing var_F0
  loc_746F08: LitVar_Missing var_D0
  loc_746F0B: LitVar_Missing var_B0
  loc_746F0E: LitStr "Producto consignado - OK"
  loc_746F11: FStStrCopy var_90
  loc_746F14: FLdRfVar var_90
  loc_746F17: LitI4 &H1C7
  loc_746F1C: PopTmpLdAdStr var_8C
  loc_746F1F: LitI2_Byte &H21
  loc_746F21: PopTmpLdAd2 var_86
  loc_746F24: ImpAdLdRf MemVar_74C7D0
  loc_746F27: NewIfNullPr clsMsg
  loc_746F2A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746F2F: ILdRf var_1D4
  loc_746F32: LitI4 &H1C6
  loc_746F37: FMemLdRf unk_418E79
  loc_746F3C: AryInRecLdPr
  loc_746F42: MemStStrCopy
  loc_746F46: FFreeStr var_90 = ""
  loc_746F4D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746F64: FLdRfVar var_1D4
  loc_746F67: LitVar_Missing var_1D0
  loc_746F6A: LitVar_Missing var_1B0
  loc_746F6D: LitVar_Missing var_190
  loc_746F70: LitVar_Missing var_170
  loc_746F73: LitVar_Missing var_150
  loc_746F76: LitVar_Missing var_130
  loc_746F79: LitVar_Missing var_110
  loc_746F7C: LitVar_Missing var_F0
  loc_746F7F: LitVar_Missing var_D0
  loc_746F82: LitVar_Missing var_B0
  loc_746F85: LitStr "Producto consignado - ERROR"
  loc_746F88: FStStrCopy var_90
  loc_746F8B: FLdRfVar var_90
  loc_746F8E: LitI4 &H1C8
  loc_746F93: PopTmpLdAdStr var_8C
  loc_746F96: LitI2_Byte &H21
  loc_746F98: PopTmpLdAd2 var_86
  loc_746F9B: ImpAdLdRf MemVar_74C7D0
  loc_746F9E: NewIfNullPr clsMsg
  loc_746FA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_746FA6: ILdRf var_1D4
  loc_746FA9: LitI4 &H1C7
  loc_746FAE: FMemLdRf unk_418E79
  loc_746FB3: AryInRecLdPr
  loc_746FB9: MemStStrCopy
  loc_746FBD: FFreeStr var_90 = ""
  loc_746FC4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_746FDB: FLdRfVar var_1D4
  loc_746FDE: LitVar_Missing var_1D0
  loc_746FE1: LitVar_Missing var_1B0
  loc_746FE4: LitVar_Missing var_190
  loc_746FE7: LitVar_Missing var_170
  loc_746FEA: LitVar_Missing var_150
  loc_746FED: LitVar_Missing var_130
  loc_746FF0: LitVar_Missing var_110
  loc_746FF3: LitVar_Missing var_F0
  loc_746FF6: LitVar_Missing var_D0
  loc_746FF9: LitVar_Missing var_B0
  loc_746FFC: LitStr "CLP recibida - OK "
  loc_746FFF: FStStrCopy var_90
  loc_747002: FLdRfVar var_90
  loc_747005: LitI4 &H1C9
  loc_74700A: PopTmpLdAdStr var_8C
  loc_74700D: LitI2_Byte &H21
  loc_74700F: PopTmpLdAd2 var_86
  loc_747012: ImpAdLdRf MemVar_74C7D0
  loc_747015: NewIfNullPr clsMsg
  loc_747018: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74701D: ILdRf var_1D4
  loc_747020: LitI4 &H1C8
  loc_747025: FMemLdRf unk_418E79
  loc_74702A: AryInRecLdPr
  loc_747030: MemStStrCopy
  loc_747034: FFreeStr var_90 = ""
  loc_74703B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747052: FLdRfVar var_1D4
  loc_747055: LitVar_Missing var_1D0
  loc_747058: LitVar_Missing var_1B0
  loc_74705B: LitVar_Missing var_190
  loc_74705E: LitVar_Missing var_170
  loc_747061: LitVar_Missing var_150
  loc_747064: LitVar_Missing var_130
  loc_747067: LitVar_Missing var_110
  loc_74706A: LitVar_Missing var_F0
  loc_74706D: LitVar_Missing var_D0
  loc_747070: LitVar_Missing var_B0
  loc_747073: LitStr "CLP recibida - ERROR"
  loc_747076: FStStrCopy var_90
  loc_747079: FLdRfVar var_90
  loc_74707C: LitI4 &H1CA
  loc_747081: PopTmpLdAdStr var_8C
  loc_747084: LitI2_Byte &H21
  loc_747086: PopTmpLdAd2 var_86
  loc_747089: ImpAdLdRf MemVar_74C7D0
  loc_74708C: NewIfNullPr clsMsg
  loc_74708F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747094: ILdRf var_1D4
  loc_747097: LitI4 &H1C9
  loc_74709C: FMemLdRf unk_418E79
  loc_7470A1: AryInRecLdPr
  loc_7470A7: MemStStrCopy
  loc_7470AB: FFreeStr var_90 = ""
  loc_7470B2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7470C9: FLdRfVar var_1D4
  loc_7470CC: LitVar_Missing var_1D0
  loc_7470CF: LitVar_Missing var_1B0
  loc_7470D2: LitVar_Missing var_190
  loc_7470D5: LitVar_Missing var_170
  loc_7470D8: LitVar_Missing var_150
  loc_7470DB: LitVar_Missing var_130
  loc_7470DE: LitVar_Missing var_110
  loc_7470E1: LitVar_Missing var_F0
  loc_7470E4: LitVar_Missing var_D0
  loc_7470E7: LitVar_Missing var_B0
  loc_7470EA: LitStr "Cambios de producto consignado"
  loc_7470ED: FStStrCopy var_90
  loc_7470F0: FLdRfVar var_90
  loc_7470F3: LitI4 &H1CB
  loc_7470F8: PopTmpLdAdStr var_8C
  loc_7470FB: LitI2_Byte &H21
  loc_7470FD: PopTmpLdAd2 var_86
  loc_747100: ImpAdLdRf MemVar_74C7D0
  loc_747103: NewIfNullPr clsMsg
  loc_747106: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74710B: ILdRf var_1D4
  loc_74710E: LitI4 &H1CA
  loc_747113: FMemLdRf unk_418E79
  loc_747118: AryInRecLdPr
  loc_74711E: MemStStrCopy
  loc_747122: FFreeStr var_90 = ""
  loc_747129: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747140: FLdRfVar var_1D4
  loc_747143: LitVar_Missing var_1D0
  loc_747146: LitVar_Missing var_1B0
  loc_747149: LitVar_Missing var_190
  loc_74714C: LitVar_Missing var_170
  loc_74714F: LitVar_Missing var_150
  loc_747152: LitVar_Missing var_130
  loc_747155: LitVar_Missing var_110
  loc_747158: LitVar_Missing var_F0
  loc_74715B: LitVar_Missing var_D0
  loc_74715E: LitVar_Missing var_B0
  loc_747161: LitStr "Maestro de op. diferenciales - OK"
  loc_747164: FStStrCopy var_90
  loc_747167: FLdRfVar var_90
  loc_74716A: LitI4 &H1CC
  loc_74716F: PopTmpLdAdStr var_8C
  loc_747172: LitI2_Byte &H21
  loc_747174: PopTmpLdAd2 var_86
  loc_747177: ImpAdLdRf MemVar_74C7D0
  loc_74717A: NewIfNullPr clsMsg
  loc_74717D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747182: ILdRf var_1D4
  loc_747185: LitI4 &H1CB
  loc_74718A: FMemLdRf unk_418E79
  loc_74718F: AryInRecLdPr
  loc_747195: MemStStrCopy
  loc_747199: FFreeStr var_90 = ""
  loc_7471A0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7471B7: FLdRfVar var_1D4
  loc_7471BA: LitVar_Missing var_1D0
  loc_7471BD: LitVar_Missing var_1B0
  loc_7471C0: LitVar_Missing var_190
  loc_7471C3: LitVar_Missing var_170
  loc_7471C6: LitVar_Missing var_150
  loc_7471C9: LitVar_Missing var_130
  loc_7471CC: LitVar_Missing var_110
  loc_7471CF: LitVar_Missing var_F0
  loc_7471D2: LitVar_Missing var_D0
  loc_7471D5: LitVar_Missing var_B0
  loc_7471D8: LitStr "Maestro de op. diferenciales - ERROR"
  loc_7471DB: FStStrCopy var_90
  loc_7471DE: FLdRfVar var_90
  loc_7471E1: LitI4 &H1CD
  loc_7471E6: PopTmpLdAdStr var_8C
  loc_7471E9: LitI2_Byte &H21
  loc_7471EB: PopTmpLdAd2 var_86
  loc_7471EE: ImpAdLdRf MemVar_74C7D0
  loc_7471F1: NewIfNullPr clsMsg
  loc_7471F4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7471F9: ILdRf var_1D4
  loc_7471FC: LitI4 &H1CC
  loc_747201: FMemLdRf unk_418E79
  loc_747206: AryInRecLdPr
  loc_74720C: MemStStrCopy
  loc_747210: FFreeStr var_90 = ""
  loc_747217: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74722E: FLdRfVar var_1D4
  loc_747231: LitVar_Missing var_1D0
  loc_747234: LitVar_Missing var_1B0
  loc_747237: LitVar_Missing var_190
  loc_74723A: LitVar_Missing var_170
  loc_74723D: LitVar_Missing var_150
  loc_747240: LitVar_Missing var_130
  loc_747243: LitVar_Missing var_110
  loc_747246: LitVar_Missing var_F0
  loc_747249: LitVar_Missing var_D0
  loc_74724C: LitVar_Missing var_B0
  loc_74724F: LitStr "Venta sin control teorica"
  loc_747252: FStStrCopy var_90
  loc_747255: FLdRfVar var_90
  loc_747258: LitI4 &H1CE
  loc_74725D: PopTmpLdAdStr var_8C
  loc_747260: LitI2_Byte &H21
  loc_747262: PopTmpLdAd2 var_86
  loc_747265: ImpAdLdRf MemVar_74C7D0
  loc_747268: NewIfNullPr clsMsg
  loc_74726B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747270: ILdRf var_1D4
  loc_747273: LitI4 &H1CD
  loc_747278: FMemLdRf unk_418E79
  loc_74727D: AryInRecLdPr
  loc_747283: MemStStrCopy
  loc_747287: FFreeStr var_90 = ""
  loc_74728E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7472A5: FLdRfVar var_1D4
  loc_7472A8: LitVar_Missing var_1D0
  loc_7472AB: LitVar_Missing var_1B0
  loc_7472AE: LitVar_Missing var_190
  loc_7472B1: LitVar_Missing var_170
  loc_7472B4: LitVar_Missing var_150
  loc_7472B7: LitVar_Missing var_130
  loc_7472BA: LitVar_Missing var_110
  loc_7472BD: LitVar_Missing var_F0
  loc_7472C0: LitVar_Missing var_D0
  loc_7472C3: LitVar_Missing var_B0
  loc_7472C6: LitStr "Venta sin control teorica acumulada"
  loc_7472C9: FStStrCopy var_90
  loc_7472CC: FLdRfVar var_90
  loc_7472CF: LitI4 &H1CF
  loc_7472D4: PopTmpLdAdStr var_8C
  loc_7472D7: LitI2_Byte &H21
  loc_7472D9: PopTmpLdAd2 var_86
  loc_7472DC: ImpAdLdRf MemVar_74C7D0
  loc_7472DF: NewIfNullPr clsMsg
  loc_7472E2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7472E7: ILdRf var_1D4
  loc_7472EA: LitI4 &H1CE
  loc_7472EF: FMemLdRf unk_418E79
  loc_7472F4: AryInRecLdPr
  loc_7472FA: MemStStrCopy
  loc_7472FE: FFreeStr var_90 = ""
  loc_747305: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74731C: FLdRfVar var_1D4
  loc_74731F: LitVar_Missing var_1D0
  loc_747322: LitVar_Missing var_1B0
  loc_747325: LitVar_Missing var_190
  loc_747328: LitVar_Missing var_170
  loc_74732B: LitVar_Missing var_150
  loc_74732E: LitVar_Missing var_130
  loc_747331: LitVar_Missing var_110
  loc_747334: LitVar_Missing var_F0
  loc_747337: LitVar_Missing var_D0
  loc_74733A: LitVar_Missing var_B0
  loc_74733D: LitStr "CLR aforadores manuales"
  loc_747340: FStStrCopy var_90
  loc_747343: FLdRfVar var_90
  loc_747346: LitI4 &H1D0
  loc_74734B: PopTmpLdAdStr var_8C
  loc_74734E: LitI2_Byte &H21
  loc_747350: PopTmpLdAd2 var_86
  loc_747353: ImpAdLdRf MemVar_74C7D0
  loc_747356: NewIfNullPr clsMsg
  loc_747359: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74735E: ILdRf var_1D4
  loc_747361: LitI4 &H1CF
  loc_747366: FMemLdRf unk_418E79
  loc_74736B: AryInRecLdPr
  loc_747371: MemStStrCopy
  loc_747375: FFreeStr var_90 = ""
  loc_74737C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747393: FLdRfVar var_1D4
  loc_747396: LitVar_Missing var_1D0
  loc_747399: LitVar_Missing var_1B0
  loc_74739C: LitVar_Missing var_190
  loc_74739F: LitVar_Missing var_170
  loc_7473A2: LitVar_Missing var_150
  loc_7473A5: LitVar_Missing var_130
  loc_7473A8: LitVar_Missing var_110
  loc_7473AB: LitVar_Missing var_F0
  loc_7473AE: LitVar_Missing var_D0
  loc_7473B1: LitVar_Missing var_B0
  loc_7473B4: LitStr "RISKY VSCT"
  loc_7473B7: FStStrCopy var_90
  loc_7473BA: FLdRfVar var_90
  loc_7473BD: LitI4 &H1D1
  loc_7473C2: PopTmpLdAdStr var_8C
  loc_7473C5: LitI2_Byte &H21
  loc_7473C7: PopTmpLdAd2 var_86
  loc_7473CA: ImpAdLdRf MemVar_74C7D0
  loc_7473CD: NewIfNullPr clsMsg
  loc_7473D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7473D5: ILdRf var_1D4
  loc_7473D8: LitI4 &H1D0
  loc_7473DD: FMemLdRf unk_418E79
  loc_7473E2: AryInRecLdPr
  loc_7473E8: MemStStrCopy
  loc_7473EC: FFreeStr var_90 = ""
  loc_7473F3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74740A: FLdRfVar var_1D4
  loc_74740D: LitVar_Missing var_1D0
  loc_747410: LitVar_Missing var_1B0
  loc_747413: LitVar_Missing var_190
  loc_747416: LitVar_Missing var_170
  loc_747419: LitVar_Missing var_150
  loc_74741C: LitVar_Missing var_130
  loc_74741F: LitVar_Missing var_110
  loc_747422: LitVar_Missing var_F0
  loc_747425: LitVar_Missing var_D0
  loc_747428: LitVar_Missing var_B0
  loc_74742B: LitStr "Producto consignado en defecto"
  loc_74742E: FStStrCopy var_90
  loc_747431: FLdRfVar var_90
  loc_747434: LitI4 &H1D2
  loc_747439: PopTmpLdAdStr var_8C
  loc_74743C: LitI2_Byte &H21
  loc_74743E: PopTmpLdAd2 var_86
  loc_747441: ImpAdLdRf MemVar_74C7D0
  loc_747444: NewIfNullPr clsMsg
  loc_747447: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74744C: ILdRf var_1D4
  loc_74744F: LitI4 &H1D1
  loc_747454: FMemLdRf unk_418E79
  loc_747459: AryInRecLdPr
  loc_74745F: MemStStrCopy
  loc_747463: FFreeStr var_90 = ""
  loc_74746A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747481: FLdRfVar var_1D4
  loc_747484: LitVar_Missing var_1D0
  loc_747487: LitVar_Missing var_1B0
  loc_74748A: LitVar_Missing var_190
  loc_74748D: LitVar_Missing var_170
  loc_747490: LitVar_Missing var_150
  loc_747493: LitVar_Missing var_130
  loc_747496: LitVar_Missing var_110
  loc_747499: LitVar_Missing var_F0
  loc_74749C: LitVar_Missing var_D0
  loc_74749F: LitVar_Missing var_B0
  loc_7474A2: LitStr "Debito bancacio - OK"
  loc_7474A5: FStStrCopy var_90
  loc_7474A8: FLdRfVar var_90
  loc_7474AB: LitI4 &H1D3
  loc_7474B0: PopTmpLdAdStr var_8C
  loc_7474B3: LitI2_Byte &H21
  loc_7474B5: PopTmpLdAd2 var_86
  loc_7474B8: ImpAdLdRf MemVar_74C7D0
  loc_7474BB: NewIfNullPr clsMsg
  loc_7474BE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7474C3: ILdRf var_1D4
  loc_7474C6: LitI4 &H1D2
  loc_7474CB: FMemLdRf unk_418E79
  loc_7474D0: AryInRecLdPr
  loc_7474D6: MemStStrCopy
  loc_7474DA: FFreeStr var_90 = ""
  loc_7474E1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7474F8: FLdRfVar var_1D4
  loc_7474FB: LitVar_Missing var_1D0
  loc_7474FE: LitVar_Missing var_1B0
  loc_747501: LitVar_Missing var_190
  loc_747504: LitVar_Missing var_170
  loc_747507: LitVar_Missing var_150
  loc_74750A: LitVar_Missing var_130
  loc_74750D: LitVar_Missing var_110
  loc_747510: LitVar_Missing var_F0
  loc_747513: LitVar_Missing var_D0
  loc_747516: LitVar_Missing var_B0
  loc_747519: LitStr "Debito bancacio - ERROR"
  loc_74751C: FStStrCopy var_90
  loc_74751F: FLdRfVar var_90
  loc_747522: LitI4 &H1D4
  loc_747527: PopTmpLdAdStr var_8C
  loc_74752A: LitI2_Byte &H21
  loc_74752C: PopTmpLdAd2 var_86
  loc_74752F: ImpAdLdRf MemVar_74C7D0
  loc_747532: NewIfNullPr clsMsg
  loc_747535: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74753A: ILdRf var_1D4
  loc_74753D: LitI4 &H1D3
  loc_747542: FMemLdRf unk_418E79
  loc_747547: AryInRecLdPr
  loc_74754D: MemStStrCopy
  loc_747551: FFreeStr var_90 = ""
  loc_747558: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74756F: FLdRfVar var_1D4
  loc_747572: LitVar_Missing var_1D0
  loc_747575: LitVar_Missing var_1B0
  loc_747578: LitVar_Missing var_190
  loc_74757B: LitVar_Missing var_170
  loc_74757E: LitVar_Missing var_150
  loc_747581: LitVar_Missing var_130
  loc_747584: LitVar_Missing var_110
  loc_747587: LitVar_Missing var_F0
  loc_74758A: LitVar_Missing var_D0
  loc_74758D: LitVar_Missing var_B0
  loc_747590: LitStr "Rendicion - OK"
  loc_747593: FStStrCopy var_90
  loc_747596: FLdRfVar var_90
  loc_747599: LitI4 &H1D5
  loc_74759E: PopTmpLdAdStr var_8C
  loc_7475A1: LitI2_Byte &H21
  loc_7475A3: PopTmpLdAd2 var_86
  loc_7475A6: ImpAdLdRf MemVar_74C7D0
  loc_7475A9: NewIfNullPr clsMsg
  loc_7475AC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7475B1: ILdRf var_1D4
  loc_7475B4: LitI4 &H1D4
  loc_7475B9: FMemLdRf unk_418E79
  loc_7475BE: AryInRecLdPr
  loc_7475C4: MemStStrCopy
  loc_7475C8: FFreeStr var_90 = ""
  loc_7475CF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7475E6: FLdRfVar var_1D4
  loc_7475E9: LitVar_Missing var_1D0
  loc_7475EC: LitVar_Missing var_1B0
  loc_7475EF: LitVar_Missing var_190
  loc_7475F2: LitVar_Missing var_170
  loc_7475F5: LitVar_Missing var_150
  loc_7475F8: LitVar_Missing var_130
  loc_7475FB: LitVar_Missing var_110
  loc_7475FE: LitVar_Missing var_F0
  loc_747601: LitVar_Missing var_D0
  loc_747604: LitVar_Missing var_B0
  loc_747607: LitStr "Rendicion - Error"
  loc_74760A: FStStrCopy var_90
  loc_74760D: FLdRfVar var_90
  loc_747610: LitI4 &H1D6
  loc_747615: PopTmpLdAdStr var_8C
  loc_747618: LitI2_Byte &H21
  loc_74761A: PopTmpLdAd2 var_86
  loc_74761D: ImpAdLdRf MemVar_74C7D0
  loc_747620: NewIfNullPr clsMsg
  loc_747623: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747628: ILdRf var_1D4
  loc_74762B: LitI4 &H1D5
  loc_747630: FMemLdRf unk_418E79
  loc_747635: AryInRecLdPr
  loc_74763B: MemStStrCopy
  loc_74763F: FFreeStr var_90 = ""
  loc_747646: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74765D: FLdRfVar var_1D4
  loc_747660: LitVar_Missing var_1D0
  loc_747663: LitVar_Missing var_1B0
  loc_747666: LitVar_Missing var_190
  loc_747669: LitVar_Missing var_170
  loc_74766C: LitVar_Missing var_150
  loc_74766F: LitVar_Missing var_130
  loc_747672: LitVar_Missing var_110
  loc_747675: LitVar_Missing var_F0
  loc_747678: LitVar_Missing var_D0
  loc_74767B: LitVar_Missing var_B0
  loc_74767E: LitStr "Adj - OK"
  loc_747681: FStStrCopy var_90
  loc_747684: FLdRfVar var_90
  loc_747687: LitI4 &H1D7
  loc_74768C: PopTmpLdAdStr var_8C
  loc_74768F: LitI2_Byte &H21
  loc_747691: PopTmpLdAd2 var_86
  loc_747694: ImpAdLdRf MemVar_74C7D0
  loc_747697: NewIfNullPr clsMsg
  loc_74769A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74769F: ILdRf var_1D4
  loc_7476A2: LitI4 &H1D6
  loc_7476A7: FMemLdRf unk_418E79
  loc_7476AC: AryInRecLdPr
  loc_7476B2: MemStStrCopy
  loc_7476B6: FFreeStr var_90 = ""
  loc_7476BD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7476D4: FLdRfVar var_1D4
  loc_7476D7: LitVar_Missing var_1D0
  loc_7476DA: LitVar_Missing var_1B0
  loc_7476DD: LitVar_Missing var_190
  loc_7476E0: LitVar_Missing var_170
  loc_7476E3: LitVar_Missing var_150
  loc_7476E6: LitVar_Missing var_130
  loc_7476E9: LitVar_Missing var_110
  loc_7476EC: LitVar_Missing var_F0
  loc_7476EF: LitVar_Missing var_D0
  loc_7476F2: LitVar_Missing var_B0
  loc_7476F5: LitStr "Adj - Error"
  loc_7476F8: FStStrCopy var_90
  loc_7476FB: FLdRfVar var_90
  loc_7476FE: LitI4 &H1D8
  loc_747703: PopTmpLdAdStr var_8C
  loc_747706: LitI2_Byte &H21
  loc_747708: PopTmpLdAd2 var_86
  loc_74770B: ImpAdLdRf MemVar_74C7D0
  loc_74770E: NewIfNullPr clsMsg
  loc_747711: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747716: ILdRf var_1D4
  loc_747719: LitI4 &H1D7
  loc_74771E: FMemLdRf unk_418E79
  loc_747723: AryInRecLdPr
  loc_747729: MemStStrCopy
  loc_74772D: FFreeStr var_90 = ""
  loc_747734: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74774B: FLdRfVar var_1D4
  loc_74774E: LitVar_Missing var_1D0
  loc_747751: LitVar_Missing var_1B0
  loc_747754: LitVar_Missing var_190
  loc_747757: LitVar_Missing var_170
  loc_74775A: LitVar_Missing var_150
  loc_74775D: LitVar_Missing var_130
  loc_747760: LitVar_Missing var_110
  loc_747763: LitVar_Missing var_F0
  loc_747766: LitVar_Missing var_D0
  loc_747769: LitVar_Missing var_B0
  loc_74776C: LitStr "Maestro de producto - OK"
  loc_74776F: FStStrCopy var_90
  loc_747772: FLdRfVar var_90
  loc_747775: LitI4 &H1D9
  loc_74777A: PopTmpLdAdStr var_8C
  loc_74777D: LitI2_Byte &H21
  loc_74777F: PopTmpLdAd2 var_86
  loc_747782: ImpAdLdRf MemVar_74C7D0
  loc_747785: NewIfNullPr clsMsg
  loc_747788: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74778D: ILdRf var_1D4
  loc_747790: LitI4 &H1D8
  loc_747795: FMemLdRf unk_418E79
  loc_74779A: AryInRecLdPr
  loc_7477A0: MemStStrCopy
  loc_7477A4: FFreeStr var_90 = ""
  loc_7477AB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7477C2: FLdRfVar var_1D4
  loc_7477C5: LitVar_Missing var_1D0
  loc_7477C8: LitVar_Missing var_1B0
  loc_7477CB: LitVar_Missing var_190
  loc_7477CE: LitVar_Missing var_170
  loc_7477D1: LitVar_Missing var_150
  loc_7477D4: LitVar_Missing var_130
  loc_7477D7: LitVar_Missing var_110
  loc_7477DA: LitVar_Missing var_F0
  loc_7477DD: LitVar_Missing var_D0
  loc_7477E0: LitVar_Missing var_B0
  loc_7477E3: LitStr "Maestro de producto - ERROR"
  loc_7477E6: FStStrCopy var_90
  loc_7477E9: FLdRfVar var_90
  loc_7477EC: LitI4 &H1DA
  loc_7477F1: PopTmpLdAdStr var_8C
  loc_7477F4: LitI2_Byte &H21
  loc_7477F6: PopTmpLdAd2 var_86
  loc_7477F9: ImpAdLdRf MemVar_74C7D0
  loc_7477FC: NewIfNullPr clsMsg
  loc_7477FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747804: ILdRf var_1D4
  loc_747807: LitI4 &H1D9
  loc_74780C: FMemLdRf unk_418E79
  loc_747811: AryInRecLdPr
  loc_747817: MemStStrCopy
  loc_74781B: FFreeStr var_90 = ""
  loc_747822: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747839: FLdRfVar var_1D4
  loc_74783C: LitVar_Missing var_1D0
  loc_74783F: LitVar_Missing var_1B0
  loc_747842: LitVar_Missing var_190
  loc_747845: LitVar_Missing var_170
  loc_747848: LitVar_Missing var_150
  loc_74784B: LitVar_Missing var_130
  loc_74784E: LitVar_Missing var_110
  loc_747851: LitVar_Missing var_F0
  loc_747854: LitVar_Missing var_D0
  loc_747857: LitVar_Missing var_B0
  loc_74785A: LitStr "Maestro de producto - Registro Error"
  loc_74785D: FStStrCopy var_90
  loc_747860: FLdRfVar var_90
  loc_747863: LitI4 &H1DB
  loc_747868: PopTmpLdAdStr var_8C
  loc_74786B: LitI2_Byte &H21
  loc_74786D: PopTmpLdAd2 var_86
  loc_747870: ImpAdLdRf MemVar_74C7D0
  loc_747873: NewIfNullPr clsMsg
  loc_747876: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74787B: ILdRf var_1D4
  loc_74787E: LitI4 &H1DA
  loc_747883: FMemLdRf unk_418E79
  loc_747888: AryInRecLdPr
  loc_74788E: MemStStrCopy
  loc_747892: FFreeStr var_90 = ""
  loc_747899: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7478B0: FLdRfVar var_1D4
  loc_7478B3: LitVar_Missing var_1D0
  loc_7478B6: LitVar_Missing var_1B0
  loc_7478B9: LitVar_Missing var_190
  loc_7478BC: LitVar_Missing var_170
  loc_7478BF: LitVar_Missing var_150
  loc_7478C2: LitVar_Missing var_130
  loc_7478C5: LitVar_Missing var_110
  loc_7478C8: LitVar_Missing var_F0
  loc_7478CB: LitVar_Missing var_D0
  loc_7478CE: LitVar_Missing var_B0
  loc_7478D1: LitStr "Conectividad activado"
  loc_7478D4: FStStrCopy var_90
  loc_7478D7: FLdRfVar var_90
  loc_7478DA: LitI4 &H1DC
  loc_7478DF: PopTmpLdAdStr var_8C
  loc_7478E2: LitI2_Byte &H21
  loc_7478E4: PopTmpLdAd2 var_86
  loc_7478E7: ImpAdLdRf MemVar_74C7D0
  loc_7478EA: NewIfNullPr clsMsg
  loc_7478ED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7478F2: ILdRf var_1D4
  loc_7478F5: LitI4 &H1DB
  loc_7478FA: FMemLdRf unk_418E79
  loc_7478FF: AryInRecLdPr
  loc_747905: MemStStrCopy
  loc_747909: FFreeStr var_90 = ""
  loc_747910: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747927: FLdRfVar var_1D4
  loc_74792A: LitVar_Missing var_1D0
  loc_74792D: LitVar_Missing var_1B0
  loc_747930: LitVar_Missing var_190
  loc_747933: LitVar_Missing var_170
  loc_747936: LitVar_Missing var_150
  loc_747939: LitVar_Missing var_130
  loc_74793C: LitVar_Missing var_110
  loc_74793F: LitVar_Missing var_F0
  loc_747942: LitVar_Missing var_D0
  loc_747945: LitVar_Missing var_B0
  loc_747948: LitStr "Conectividad desactivado"
  loc_74794B: FStStrCopy var_90
  loc_74794E: FLdRfVar var_90
  loc_747951: LitI4 &H1DD
  loc_747956: PopTmpLdAdStr var_8C
  loc_747959: LitI2_Byte &H21
  loc_74795B: PopTmpLdAd2 var_86
  loc_74795E: ImpAdLdRf MemVar_74C7D0
  loc_747961: NewIfNullPr clsMsg
  loc_747964: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747969: ILdRf var_1D4
  loc_74796C: LitI4 &H1DC
  loc_747971: FMemLdRf unk_418E79
  loc_747976: AryInRecLdPr
  loc_74797C: MemStStrCopy
  loc_747980: FFreeStr var_90 = ""
  loc_747987: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74799E: FLdRfVar var_1D4
  loc_7479A1: LitVar_Missing var_1D0
  loc_7479A4: LitVar_Missing var_1B0
  loc_7479A7: LitVar_Missing var_190
  loc_7479AA: LitVar_Missing var_170
  loc_7479AD: LitVar_Missing var_150
  loc_7479B0: LitVar_Missing var_130
  loc_7479B3: LitVar_Missing var_110
  loc_7479B6: LitVar_Missing var_F0
  loc_7479B9: LitVar_Missing var_D0
  loc_7479BC: LitVar_Missing var_B0
  loc_7479BF: LitStr "Maestro de seguridad - OK"
  loc_7479C2: FStStrCopy var_90
  loc_7479C5: FLdRfVar var_90
  loc_7479C8: LitI4 &H1DE
  loc_7479CD: PopTmpLdAdStr var_8C
  loc_7479D0: LitI2_Byte &H21
  loc_7479D2: PopTmpLdAd2 var_86
  loc_7479D5: ImpAdLdRf MemVar_74C7D0
  loc_7479D8: NewIfNullPr clsMsg
  loc_7479DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7479E0: ILdRf var_1D4
  loc_7479E3: LitI4 &H1DD
  loc_7479E8: FMemLdRf unk_418E79
  loc_7479ED: AryInRecLdPr
  loc_7479F3: MemStStrCopy
  loc_7479F7: FFreeStr var_90 = ""
  loc_7479FE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747A15: FLdRfVar var_1D4
  loc_747A18: LitVar_Missing var_1D0
  loc_747A1B: LitVar_Missing var_1B0
  loc_747A1E: LitVar_Missing var_190
  loc_747A21: LitVar_Missing var_170
  loc_747A24: LitVar_Missing var_150
  loc_747A27: LitVar_Missing var_130
  loc_747A2A: LitVar_Missing var_110
  loc_747A2D: LitVar_Missing var_F0
  loc_747A30: LitVar_Missing var_D0
  loc_747A33: LitVar_Missing var_B0
  loc_747A36: LitStr "Maestro de seguridad - ERROR"
  loc_747A39: FStStrCopy var_90
  loc_747A3C: FLdRfVar var_90
  loc_747A3F: LitI4 &H1DF
  loc_747A44: PopTmpLdAdStr var_8C
  loc_747A47: LitI2_Byte &H21
  loc_747A49: PopTmpLdAd2 var_86
  loc_747A4C: ImpAdLdRf MemVar_74C7D0
  loc_747A4F: NewIfNullPr clsMsg
  loc_747A52: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747A57: ILdRf var_1D4
  loc_747A5A: LitI4 &H1DE
  loc_747A5F: FMemLdRf unk_418E79
  loc_747A64: AryInRecLdPr
  loc_747A6A: MemStStrCopy
  loc_747A6E: FFreeStr var_90 = ""
  loc_747A75: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747A8C: FLdRfVar var_1D4
  loc_747A8F: LitVar_Missing var_1D0
  loc_747A92: LitVar_Missing var_1B0
  loc_747A95: LitVar_Missing var_190
  loc_747A98: LitVar_Missing var_170
  loc_747A9B: LitVar_Missing var_150
  loc_747A9E: LitVar_Missing var_130
  loc_747AA1: LitVar_Missing var_110
  loc_747AA4: LitVar_Missing var_F0
  loc_747AA7: LitVar_Missing var_D0
  loc_747AAA: LitVar_Missing var_B0
  loc_747AAD: LitStr "Maestro de seguridad - Registro ERROR"
  loc_747AB0: FStStrCopy var_90
  loc_747AB3: FLdRfVar var_90
  loc_747AB6: LitI4 &H1E0
  loc_747ABB: PopTmpLdAdStr var_8C
  loc_747ABE: LitI2_Byte &H21
  loc_747AC0: PopTmpLdAd2 var_86
  loc_747AC3: ImpAdLdRf MemVar_74C7D0
  loc_747AC6: NewIfNullPr clsMsg
  loc_747AC9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747ACE: ILdRf var_1D4
  loc_747AD1: LitI4 &H1DF
  loc_747AD6: FMemLdRf unk_418E79
  loc_747ADB: AryInRecLdPr
  loc_747AE1: MemStStrCopy
  loc_747AE5: FFreeStr var_90 = ""
  loc_747AEC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747B03: FLdRfVar var_1D4
  loc_747B06: LitVar_Missing var_1D0
  loc_747B09: LitVar_Missing var_1B0
  loc_747B0C: LitVar_Missing var_190
  loc_747B0F: LitVar_Missing var_170
  loc_747B12: LitVar_Missing var_150
  loc_747B15: LitVar_Missing var_130
  loc_747B18: LitVar_Missing var_110
  loc_747B1B: LitVar_Missing var_F0
  loc_747B1E: LitVar_Missing var_D0
  loc_747B21: LitVar_Missing var_B0
  loc_747B24: LitStr "Diferencias entre el surtidor y pulser"
  loc_747B27: FStStrCopy var_90
  loc_747B2A: FLdRfVar var_90
  loc_747B2D: LitI4 &H1E1
  loc_747B32: PopTmpLdAdStr var_8C
  loc_747B35: LitI2_Byte &H21
  loc_747B37: PopTmpLdAd2 var_86
  loc_747B3A: ImpAdLdRf MemVar_74C7D0
  loc_747B3D: NewIfNullPr clsMsg
  loc_747B40: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747B45: ILdRf var_1D4
  loc_747B48: LitI4 &H1E0
  loc_747B4D: FMemLdRf unk_418E79
  loc_747B52: AryInRecLdPr
  loc_747B58: MemStStrCopy
  loc_747B5C: FFreeStr var_90 = ""
  loc_747B63: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747B7A: FLdRfVar var_1D4
  loc_747B7D: LitVar_Missing var_1D0
  loc_747B80: LitVar_Missing var_1B0
  loc_747B83: LitVar_Missing var_190
  loc_747B86: LitVar_Missing var_170
  loc_747B89: LitVar_Missing var_150
  loc_747B8C: LitVar_Missing var_130
  loc_747B8F: LitVar_Missing var_110
  loc_747B92: LitVar_Missing var_F0
  loc_747B95: LitVar_Missing var_D0
  loc_747B98: LitVar_Missing var_B0
  loc_747B9B: LitStr "Maestro - Error"
  loc_747B9E: FStStrCopy var_90
  loc_747BA1: FLdRfVar var_90
  loc_747BA4: LitI4 &H1E2
  loc_747BA9: PopTmpLdAdStr var_8C
  loc_747BAC: LitI2_Byte &H21
  loc_747BAE: PopTmpLdAd2 var_86
  loc_747BB1: ImpAdLdRf MemVar_74C7D0
  loc_747BB4: NewIfNullPr clsMsg
  loc_747BB7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747BBC: ILdRf var_1D4
  loc_747BBF: LitI4 &H1E1
  loc_747BC4: FMemLdRf unk_418E79
  loc_747BC9: AryInRecLdPr
  loc_747BCF: MemStStrCopy
  loc_747BD3: FFreeStr var_90 = ""
  loc_747BDA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747BF1: FLdRfVar var_1D4
  loc_747BF4: LitVar_Missing var_1D0
  loc_747BF7: LitVar_Missing var_1B0
  loc_747BFA: LitVar_Missing var_190
  loc_747BFD: LitVar_Missing var_170
  loc_747C00: LitVar_Missing var_150
  loc_747C03: LitVar_Missing var_130
  loc_747C06: LitVar_Missing var_110
  loc_747C09: LitVar_Missing var_F0
  loc_747C0C: LitVar_Missing var_D0
  loc_747C0F: LitVar_Missing var_B0
  loc_747C12: LitStr "PMS - Error"
  loc_747C15: FStStrCopy var_90
  loc_747C18: FLdRfVar var_90
  loc_747C1B: LitI4 &H1E3
  loc_747C20: PopTmpLdAdStr var_8C
  loc_747C23: LitI2_Byte &H21
  loc_747C25: PopTmpLdAd2 var_86
  loc_747C28: ImpAdLdRf MemVar_74C7D0
  loc_747C2B: NewIfNullPr clsMsg
  loc_747C2E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747C33: ILdRf var_1D4
  loc_747C36: LitI4 &H1E2
  loc_747C3B: FMemLdRf unk_418E79
  loc_747C40: AryInRecLdPr
  loc_747C46: MemStStrCopy
  loc_747C4A: FFreeStr var_90 = ""
  loc_747C51: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747C68: FLdRfVar var_1D4
  loc_747C6B: LitVar_Missing var_1D0
  loc_747C6E: LitVar_Missing var_1B0
  loc_747C71: LitVar_Missing var_190
  loc_747C74: LitVar_Missing var_170
  loc_747C77: LitVar_Missing var_150
  loc_747C7A: LitVar_Missing var_130
  loc_747C7D: LitVar_Missing var_110
  loc_747C80: LitVar_Missing var_F0
  loc_747C83: LitVar_Missing var_D0
  loc_747C86: LitVar_Missing var_B0
  loc_747C89: LitStr "PMS - OK"
  loc_747C8C: FStStrCopy var_90
  loc_747C8F: FLdRfVar var_90
  loc_747C92: LitI4 &H1E4
  loc_747C97: PopTmpLdAdStr var_8C
  loc_747C9A: LitI2_Byte &H21
  loc_747C9C: PopTmpLdAd2 var_86
  loc_747C9F: ImpAdLdRf MemVar_74C7D0
  loc_747CA2: NewIfNullPr clsMsg
  loc_747CA5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747CAA: ILdRf var_1D4
  loc_747CAD: LitI4 &H1E3
  loc_747CB2: FMemLdRf unk_418E79
  loc_747CB7: AryInRecLdPr
  loc_747CBD: MemStStrCopy
  loc_747CC1: FFreeStr var_90 = ""
  loc_747CC8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747CDF: FLdRfVar var_1D4
  loc_747CE2: LitVar_Missing var_1D0
  loc_747CE5: LitVar_Missing var_1B0
  loc_747CE8: LitVar_Missing var_190
  loc_747CEB: LitVar_Missing var_170
  loc_747CEE: LitVar_Missing var_150
  loc_747CF1: LitVar_Missing var_130
  loc_747CF4: LitVar_Missing var_110
  loc_747CF7: LitVar_Missing var_F0
  loc_747CFA: LitVar_Missing var_D0
  loc_747CFD: LitVar_Missing var_B0
  loc_747D00: LitStr "ATG - Error"
  loc_747D03: FStStrCopy var_90
  loc_747D06: FLdRfVar var_90
  loc_747D09: LitI4 &H1E5
  loc_747D0E: PopTmpLdAdStr var_8C
  loc_747D11: LitI2_Byte &H21
  loc_747D13: PopTmpLdAd2 var_86
  loc_747D16: ImpAdLdRf MemVar_74C7D0
  loc_747D19: NewIfNullPr clsMsg
  loc_747D1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747D21: ILdRf var_1D4
  loc_747D24: LitI4 &H1E4
  loc_747D29: FMemLdRf unk_418E79
  loc_747D2E: AryInRecLdPr
  loc_747D34: MemStStrCopy
  loc_747D38: FFreeStr var_90 = ""
  loc_747D3F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747D56: FLdRfVar var_1D4
  loc_747D59: LitVar_Missing var_1D0
  loc_747D5C: LitVar_Missing var_1B0
  loc_747D5F: LitVar_Missing var_190
  loc_747D62: LitVar_Missing var_170
  loc_747D65: LitVar_Missing var_150
  loc_747D68: LitVar_Missing var_130
  loc_747D6B: LitVar_Missing var_110
  loc_747D6E: LitVar_Missing var_F0
  loc_747D71: LitVar_Missing var_D0
  loc_747D74: LitVar_Missing var_B0
  loc_747D77: LitStr "Logeo de password compañia - OK"
  loc_747D7A: FStStrCopy var_90
  loc_747D7D: FLdRfVar var_90
  loc_747D80: LitI4 &H1F5
  loc_747D85: PopTmpLdAdStr var_8C
  loc_747D88: LitI2_Byte &H21
  loc_747D8A: PopTmpLdAd2 var_86
  loc_747D8D: ImpAdLdRf MemVar_74C7D0
  loc_747D90: NewIfNullPr clsMsg
  loc_747D93: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747D98: ILdRf var_1D4
  loc_747D9B: LitI4 &H1F4
  loc_747DA0: FMemLdRf unk_418E79
  loc_747DA5: AryInRecLdPr
  loc_747DAB: MemStStrCopy
  loc_747DAF: FFreeStr var_90 = ""
  loc_747DB6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747DCD: FLdRfVar var_1D4
  loc_747DD0: LitVar_Missing var_1D0
  loc_747DD3: LitVar_Missing var_1B0
  loc_747DD6: LitVar_Missing var_190
  loc_747DD9: LitVar_Missing var_170
  loc_747DDC: LitVar_Missing var_150
  loc_747DDF: LitVar_Missing var_130
  loc_747DE2: LitVar_Missing var_110
  loc_747DE5: LitVar_Missing var_F0
  loc_747DE8: LitVar_Missing var_D0
  loc_747DEB: LitVar_Missing var_B0
  loc_747DEE: LitStr "Logeo de password compañia - ERROR"
  loc_747DF1: FStStrCopy var_90
  loc_747DF4: FLdRfVar var_90
  loc_747DF7: LitI4 &H1F6
  loc_747DFC: PopTmpLdAdStr var_8C
  loc_747DFF: LitI2_Byte &H21
  loc_747E01: PopTmpLdAd2 var_86
  loc_747E04: ImpAdLdRf MemVar_74C7D0
  loc_747E07: NewIfNullPr clsMsg
  loc_747E0A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747E0F: ILdRf var_1D4
  loc_747E12: LitI4 &H1F5
  loc_747E17: FMemLdRf unk_418E79
  loc_747E1C: AryInRecLdPr
  loc_747E22: MemStStrCopy
  loc_747E26: FFreeStr var_90 = ""
  loc_747E2D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747E44: FLdRfVar var_1D4
  loc_747E47: LitVar_Missing var_1D0
  loc_747E4A: LitVar_Missing var_1B0
  loc_747E4D: LitVar_Missing var_190
  loc_747E50: LitVar_Missing var_170
  loc_747E53: LitVar_Missing var_150
  loc_747E56: LitVar_Missing var_130
  loc_747E59: LitVar_Missing var_110
  loc_747E5C: LitVar_Missing var_F0
  loc_747E5F: LitVar_Missing var_D0
  loc_747E62: LitVar_Missing var_B0
  loc_747E65: LitStr "Consola cargada"
  loc_747E68: FStStrCopy var_90
  loc_747E6B: FLdRfVar var_90
  loc_747E6E: LitI4 &H1F7
  loc_747E73: PopTmpLdAdStr var_8C
  loc_747E76: LitI2_Byte &H21
  loc_747E78: PopTmpLdAd2 var_86
  loc_747E7B: ImpAdLdRf MemVar_74C7D0
  loc_747E7E: NewIfNullPr clsMsg
  loc_747E81: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747E86: ILdRf var_1D4
  loc_747E89: LitI4 &H1F6
  loc_747E8E: FMemLdRf unk_418E79
  loc_747E93: AryInRecLdPr
  loc_747E99: MemStStrCopy
  loc_747E9D: FFreeStr var_90 = ""
  loc_747EA4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747EBB: FLdRfVar var_1D4
  loc_747EBE: LitVar_Missing var_1D0
  loc_747EC1: LitVar_Missing var_1B0
  loc_747EC4: LitVar_Missing var_190
  loc_747EC7: LitVar_Missing var_170
  loc_747ECA: LitVar_Missing var_150
  loc_747ECD: LitVar_Missing var_130
  loc_747ED0: LitVar_Missing var_110
  loc_747ED3: LitVar_Missing var_F0
  loc_747ED6: LitVar_Missing var_D0
  loc_747ED9: LitVar_Missing var_B0
  loc_747EDC: LitStr "Consola cerrada"
  loc_747EDF: FStStrCopy var_90
  loc_747EE2: FLdRfVar var_90
  loc_747EE5: LitI4 &H1F8
  loc_747EEA: PopTmpLdAdStr var_8C
  loc_747EED: LitI2_Byte &H21
  loc_747EEF: PopTmpLdAd2 var_86
  loc_747EF2: ImpAdLdRf MemVar_74C7D0
  loc_747EF5: NewIfNullPr clsMsg
  loc_747EF8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747EFD: ILdRf var_1D4
  loc_747F00: LitI4 &H1F7
  loc_747F05: FMemLdRf unk_418E79
  loc_747F0A: AryInRecLdPr
  loc_747F10: MemStStrCopy
  loc_747F14: FFreeStr var_90 = ""
  loc_747F1B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747F32: FLdRfVar var_1D4
  loc_747F35: LitVar_Missing var_1D0
  loc_747F38: LitVar_Missing var_1B0
  loc_747F3B: LitVar_Missing var_190
  loc_747F3E: LitVar_Missing var_170
  loc_747F41: LitVar_Missing var_150
  loc_747F44: LitVar_Missing var_130
  loc_747F47: LitVar_Missing var_110
  loc_747F4A: LitVar_Missing var_F0
  loc_747F4D: LitVar_Missing var_D0
  loc_747F50: LitVar_Missing var_B0
  loc_747F53: LitStr "Almacenar Copia en Diskette"
  loc_747F56: FStStrCopy var_90
  loc_747F59: FLdRfVar var_90
  loc_747F5C: LitI4 &HED
  loc_747F61: PopTmpLdAdStr var_8C
  loc_747F64: LitI2_Byte &H21
  loc_747F66: PopTmpLdAd2 var_86
  loc_747F69: ImpAdLdRf MemVar_74C7D0
  loc_747F6C: NewIfNullPr clsMsg
  loc_747F6F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747F74: ILdRf var_1D4
  loc_747F77: LitI4 1
  loc_747F7C: FMemLdRf unk_418E79
  loc_747F81: Ary1StStrCopy
  loc_747F82: FFreeStr var_90 = ""
  loc_747F89: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_747FA0: FLdRfVar var_1D4
  loc_747FA3: LitVar_Missing var_1D0
  loc_747FA6: LitVar_Missing var_1B0
  loc_747FA9: LitVar_Missing var_190
  loc_747FAC: LitVar_Missing var_170
  loc_747FAF: LitVar_Missing var_150
  loc_747FB2: LitVar_Missing var_130
  loc_747FB5: LitVar_Missing var_110
  loc_747FB8: LitVar_Missing var_F0
  loc_747FBB: LitVar_Missing var_D0
  loc_747FBE: LitVar_Missing var_B0
  loc_747FC1: LitStr "Alta de Consignados"
  loc_747FC4: FStStrCopy var_90
  loc_747FC7: FLdRfVar var_90
  loc_747FCA: LitI4 &HEE
  loc_747FCF: PopTmpLdAdStr var_8C
  loc_747FD2: LitI2_Byte &H21
  loc_747FD4: PopTmpLdAd2 var_86
  loc_747FD7: ImpAdLdRf MemVar_74C7D0
  loc_747FDA: NewIfNullPr clsMsg
  loc_747FDD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_747FE2: ILdRf var_1D4
  loc_747FE5: LitI4 2
  loc_747FEA: FMemLdRf unk_418E79
  loc_747FEF: Ary1StStrCopy
  loc_747FF0: FFreeStr var_90 = ""
  loc_747FF7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74800E: FLdRfVar var_1D4
  loc_748011: LitVar_Missing var_1D0
  loc_748014: LitVar_Missing var_1B0
  loc_748017: LitVar_Missing var_190
  loc_74801A: LitVar_Missing var_170
  loc_74801D: LitVar_Missing var_150
  loc_748020: LitVar_Missing var_130
  loc_748023: LitVar_Missing var_110
  loc_748026: LitVar_Missing var_F0
  loc_748029: LitVar_Missing var_D0
  loc_74802C: LitVar_Missing var_B0
  loc_74802F: LitStr "Altas de Tanque"
  loc_748032: FStStrCopy var_90
  loc_748035: FLdRfVar var_90
  loc_748038: LitI4 &HEF
  loc_74803D: PopTmpLdAdStr var_8C
  loc_748040: LitI2_Byte &H21
  loc_748042: PopTmpLdAd2 var_86
  loc_748045: ImpAdLdRf MemVar_74C7D0
  loc_748048: NewIfNullPr clsMsg
  loc_74804B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748050: ILdRf var_1D4
  loc_748053: LitI4 3
  loc_748058: FMemLdRf unk_418E79
  loc_74805D: Ary1StStrCopy
  loc_74805E: FFreeStr var_90 = ""
  loc_748065: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74807C: FLdRfVar var_1D4
  loc_74807F: LitVar_Missing var_1D0
  loc_748082: LitVar_Missing var_1B0
  loc_748085: LitVar_Missing var_190
  loc_748088: LitVar_Missing var_170
  loc_74808B: LitVar_Missing var_150
  loc_74808E: LitVar_Missing var_130
  loc_748091: LitVar_Missing var_110
  loc_748094: LitVar_Missing var_F0
  loc_748097: LitVar_Missing var_D0
  loc_74809A: LitVar_Missing var_B0
  loc_74809D: LitStr "Autorización de Despacho"
  loc_7480A0: FStStrCopy var_90
  loc_7480A3: FLdRfVar var_90
  loc_7480A6: LitI4 &HF0
  loc_7480AB: PopTmpLdAdStr var_8C
  loc_7480AE: LitI2_Byte &H21
  loc_7480B0: PopTmpLdAd2 var_86
  loc_7480B3: ImpAdLdRf MemVar_74C7D0
  loc_7480B6: NewIfNullPr clsMsg
  loc_7480B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7480BE: ILdRf var_1D4
  loc_7480C1: LitI4 4
  loc_7480C6: FMemLdRf unk_418E79
  loc_7480CB: Ary1StStrCopy
  loc_7480CC: FFreeStr var_90 = ""
  loc_7480D3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7480EA: FLdRfVar var_1D4
  loc_7480ED: LitVar_Missing var_1D0
  loc_7480F0: LitVar_Missing var_1B0
  loc_7480F3: LitVar_Missing var_190
  loc_7480F6: LitVar_Missing var_170
  loc_7480F9: LitVar_Missing var_150
  loc_7480FC: LitVar_Missing var_130
  loc_7480FF: LitVar_Missing var_110
  loc_748102: LitVar_Missing var_F0
  loc_748105: LitVar_Missing var_D0
  loc_748108: LitVar_Missing var_B0
  loc_74810B: LitStr "Autorización General"
  loc_74810E: FStStrCopy var_90
  loc_748111: FLdRfVar var_90
  loc_748114: LitI4 &HF1
  loc_748119: PopTmpLdAdStr var_8C
  loc_74811C: LitI2_Byte &H21
  loc_74811E: PopTmpLdAd2 var_86
  loc_748121: ImpAdLdRf MemVar_74C7D0
  loc_748124: NewIfNullPr clsMsg
  loc_748127: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74812C: ILdRf var_1D4
  loc_74812F: LitI4 5
  loc_748134: FMemLdRf unk_418E79
  loc_748139: Ary1StStrCopy
  loc_74813A: FFreeStr var_90 = ""
  loc_748141: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748158: FLdRfVar var_1D4
  loc_74815B: LitVar_Missing var_1D0
  loc_74815E: LitVar_Missing var_1B0
  loc_748161: LitVar_Missing var_190
  loc_748164: LitVar_Missing var_170
  loc_748167: LitVar_Missing var_150
  loc_74816A: LitVar_Missing var_130
  loc_74816D: LitVar_Missing var_110
  loc_748170: LitVar_Missing var_F0
  loc_748173: LitVar_Missing var_D0
  loc_748176: LitVar_Missing var_B0
  loc_748179: LitStr "Baja de Consignados"
  loc_74817C: FStStrCopy var_90
  loc_74817F: FLdRfVar var_90
  loc_748182: LitI4 &HF2
  loc_748187: PopTmpLdAdStr var_8C
  loc_74818A: LitI2_Byte &H21
  loc_74818C: PopTmpLdAd2 var_86
  loc_74818F: ImpAdLdRf MemVar_74C7D0
  loc_748192: NewIfNullPr clsMsg
  loc_748195: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74819A: ILdRf var_1D4
  loc_74819D: LitI4 6
  loc_7481A2: FMemLdRf unk_418E79
  loc_7481A7: Ary1StStrCopy
  loc_7481A8: FFreeStr var_90 = ""
  loc_7481AF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7481C6: FLdRfVar var_1D4
  loc_7481C9: LitVar_Missing var_1D0
  loc_7481CC: LitVar_Missing var_1B0
  loc_7481CF: LitVar_Missing var_190
  loc_7481D2: LitVar_Missing var_170
  loc_7481D5: LitVar_Missing var_150
  loc_7481D8: LitVar_Missing var_130
  loc_7481DB: LitVar_Missing var_110
  loc_7481DE: LitVar_Missing var_F0
  loc_7481E1: LitVar_Missing var_D0
  loc_7481E4: LitVar_Missing var_B0
  loc_7481E7: LitStr "Bajas de Tanque"
  loc_7481EA: FStStrCopy var_90
  loc_7481ED: FLdRfVar var_90
  loc_7481F0: LitI4 &HF3
  loc_7481F5: PopTmpLdAdStr var_8C
  loc_7481F8: LitI2_Byte &H21
  loc_7481FA: PopTmpLdAd2 var_86
  loc_7481FD: ImpAdLdRf MemVar_74C7D0
  loc_748200: NewIfNullPr clsMsg
  loc_748203: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748208: ILdRf var_1D4
  loc_74820B: LitI4 7
  loc_748210: FMemLdRf unk_418E79
  loc_748215: Ary1StStrCopy
  loc_748216: FFreeStr var_90 = ""
  loc_74821D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748234: FLdRfVar var_1D4
  loc_748237: LitVar_Missing var_1D0
  loc_74823A: LitVar_Missing var_1B0
  loc_74823D: LitVar_Missing var_190
  loc_748240: LitVar_Missing var_170
  loc_748243: LitVar_Missing var_150
  loc_748246: LitVar_Missing var_130
  loc_748249: LitVar_Missing var_110
  loc_74824C: LitVar_Missing var_F0
  loc_74824F: LitVar_Missing var_D0
  loc_748252: LitVar_Missing var_B0
  loc_748255: LitStr "Cambio de Claves"
  loc_748258: FStStrCopy var_90
  loc_74825B: FLdRfVar var_90
  loc_74825E: LitI4 &HF4
  loc_748263: PopTmpLdAdStr var_8C
  loc_748266: LitI2_Byte &H21
  loc_748268: PopTmpLdAd2 var_86
  loc_74826B: ImpAdLdRf MemVar_74C7D0
  loc_74826E: NewIfNullPr clsMsg
  loc_748271: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748276: ILdRf var_1D4
  loc_748279: LitI4 8
  loc_74827E: FMemLdRf unk_418E79
  loc_748283: Ary1StStrCopy
  loc_748284: FFreeStr var_90 = ""
  loc_74828B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7482A2: FLdRfVar var_1D4
  loc_7482A5: LitVar_Missing var_1D0
  loc_7482A8: LitVar_Missing var_1B0
  loc_7482AB: LitVar_Missing var_190
  loc_7482AE: LitVar_Missing var_170
  loc_7482B1: LitVar_Missing var_150
  loc_7482B4: LitVar_Missing var_130
  loc_7482B7: LitVar_Missing var_110
  loc_7482BA: LitVar_Missing var_F0
  loc_7482BD: LitVar_Missing var_D0
  loc_7482C0: LitVar_Missing var_B0
  loc_7482C3: LitStr "Cambio de Manifold"
  loc_7482C6: FStStrCopy var_90
  loc_7482C9: FLdRfVar var_90
  loc_7482CC: LitI4 &HF5
  loc_7482D1: PopTmpLdAdStr var_8C
  loc_7482D4: LitI2_Byte &H21
  loc_7482D6: PopTmpLdAd2 var_86
  loc_7482D9: ImpAdLdRf MemVar_74C7D0
  loc_7482DC: NewIfNullPr clsMsg
  loc_7482DF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7482E4: ILdRf var_1D4
  loc_7482E7: LitI4 9
  loc_7482EC: FMemLdRf unk_418E79
  loc_7482F1: Ary1StStrCopy
  loc_7482F2: FFreeStr var_90 = ""
  loc_7482F9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748310: FLdRfVar var_1D4
  loc_748313: LitVar_Missing var_1D0
  loc_748316: LitVar_Missing var_1B0
  loc_748319: LitVar_Missing var_190
  loc_74831C: LitVar_Missing var_170
  loc_74831F: LitVar_Missing var_150
  loc_748322: LitVar_Missing var_130
  loc_748325: LitVar_Missing var_110
  loc_748328: LitVar_Missing var_F0
  loc_74832B: LitVar_Missing var_D0
  loc_74832E: LitVar_Missing var_B0
  loc_748331: LitStr "Cambios Diferidos"
  loc_748334: FStStrCopy var_90
  loc_748337: FLdRfVar var_90
  loc_74833A: LitI4 &HF6
  loc_74833F: PopTmpLdAdStr var_8C
  loc_748342: LitI2_Byte &H21
  loc_748344: PopTmpLdAd2 var_86
  loc_748347: ImpAdLdRf MemVar_74C7D0
  loc_74834A: NewIfNullPr clsMsg
  loc_74834D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748352: ILdRf var_1D4
  loc_748355: LitI4 &HA
  loc_74835A: FMemLdRf unk_418E79
  loc_74835F: Ary1StStrCopy
  loc_748360: FFreeStr var_90 = ""
  loc_748367: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74837E: FLdRfVar var_1D4
  loc_748381: LitVar_Missing var_1D0
  loc_748384: LitVar_Missing var_1B0
  loc_748387: LitVar_Missing var_190
  loc_74838A: LitVar_Missing var_170
  loc_74838D: LitVar_Missing var_150
  loc_748390: LitVar_Missing var_130
  loc_748393: LitVar_Missing var_110
  loc_748396: LitVar_Missing var_F0
  loc_748399: LitVar_Missing var_D0
  loc_74839C: LitVar_Missing var_B0
  loc_74839F: LitStr "Cerrar consola"
  loc_7483A2: FStStrCopy var_90
  loc_7483A5: FLdRfVar var_90
  loc_7483A8: LitI4 &HD7
  loc_7483AD: PopTmpLdAdStr var_8C
  loc_7483B0: LitI2_Byte &H21
  loc_7483B2: PopTmpLdAd2 var_86
  loc_7483B5: ImpAdLdRf MemVar_74C7D0
  loc_7483B8: NewIfNullPr clsMsg
  loc_7483BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7483C0: ILdRf var_1D4
  loc_7483C3: LitI4 &HB
  loc_7483C8: FMemLdRf unk_418E79
  loc_7483CD: Ary1StStrCopy
  loc_7483CE: FFreeStr var_90 = ""
  loc_7483D5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7483EC: FLdRfVar var_1D4
  loc_7483EF: LitVar_Missing var_1D0
  loc_7483F2: LitVar_Missing var_1B0
  loc_7483F5: LitVar_Missing var_190
  loc_7483F8: LitVar_Missing var_170
  loc_7483FB: LitVar_Missing var_150
  loc_7483FE: LitVar_Missing var_130
  loc_748401: LitVar_Missing var_110
  loc_748404: LitVar_Missing var_F0
  loc_748407: LitVar_Missing var_D0
  loc_74840A: LitVar_Missing var_B0
  loc_74840D: LitStr "Cierre de día"
  loc_748410: FStStrCopy var_90
  loc_748413: FLdRfVar var_90
  loc_748416: LitI4 &H1E
  loc_74841B: PopTmpLdAdStr var_8C
  loc_74841E: LitI2_Byte &H21
  loc_748420: PopTmpLdAd2 var_86
  loc_748423: ImpAdLdRf MemVar_74C7D0
  loc_748426: NewIfNullPr clsMsg
  loc_748429: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74842E: ILdRf var_1D4
  loc_748431: LitI4 &HC
  loc_748436: FMemLdRf unk_418E79
  loc_74843B: Ary1StStrCopy
  loc_74843C: FFreeStr var_90 = ""
  loc_748443: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74845A: FLdRfVar var_1D4
  loc_74845D: LitVar_Missing var_1D0
  loc_748460: LitVar_Missing var_1B0
  loc_748463: LitVar_Missing var_190
  loc_748466: LitVar_Missing var_170
  loc_748469: LitVar_Missing var_150
  loc_74846C: LitVar_Missing var_130
  loc_74846F: LitVar_Missing var_110
  loc_748472: LitVar_Missing var_F0
  loc_748475: LitVar_Missing var_D0
  loc_748478: LitVar_Missing var_B0
  loc_74847B: LitStr "Cierre de mes"
  loc_74847E: FStStrCopy var_90
  loc_748481: FLdRfVar var_90
  loc_748484: LitI4 &H1F
  loc_748489: PopTmpLdAdStr var_8C
  loc_74848C: LitI2_Byte &H21
  loc_74848E: PopTmpLdAd2 var_86
  loc_748491: ImpAdLdRf MemVar_74C7D0
  loc_748494: NewIfNullPr clsMsg
  loc_748497: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74849C: ILdRf var_1D4
  loc_74849F: LitI4 &HD
  loc_7484A4: FMemLdRf unk_418E79
  loc_7484A9: Ary1StStrCopy
  loc_7484AA: FFreeStr var_90 = ""
  loc_7484B1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7484C8: FLdRfVar var_1D4
  loc_7484CB: LitVar_Missing var_1D0
  loc_7484CE: LitVar_Missing var_1B0
  loc_7484D1: LitVar_Missing var_190
  loc_7484D4: LitVar_Missing var_170
  loc_7484D7: LitVar_Missing var_150
  loc_7484DA: LitVar_Missing var_130
  loc_7484DD: LitVar_Missing var_110
  loc_7484E0: LitVar_Missing var_F0
  loc_7484E3: LitVar_Missing var_D0
  loc_7484E6: LitVar_Missing var_B0
  loc_7484E9: LitStr "Cierre de Turno"
  loc_7484EC: FStStrCopy var_90
  loc_7484EF: FLdRfVar var_90
  loc_7484F2: LitI4 &H1D
  loc_7484F7: PopTmpLdAdStr var_8C
  loc_7484FA: LitI2_Byte &H21
  loc_7484FC: PopTmpLdAd2 var_86
  loc_7484FF: ImpAdLdRf MemVar_74C7D0
  loc_748502: NewIfNullPr clsMsg
  loc_748505: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74850A: ILdRf var_1D4
  loc_74850D: LitI4 &HE
  loc_748512: FMemLdRf unk_418E79
  loc_748517: Ary1StStrCopy
  loc_748518: FFreeStr var_90 = ""
  loc_74851F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748536: FLdRfVar var_1D4
  loc_748539: LitVar_Missing var_1D0
  loc_74853C: LitVar_Missing var_1B0
  loc_74853F: LitVar_Missing var_190
  loc_748542: LitVar_Missing var_170
  loc_748545: LitVar_Missing var_150
  loc_748548: LitVar_Missing var_130
  loc_74854B: LitVar_Missing var_110
  loc_74854E: LitVar_Missing var_F0
  loc_748551: LitVar_Missing var_D0
  loc_748554: LitVar_Missing var_B0
  loc_748557: LitStr "Comisiones"
  loc_74855A: FStStrCopy var_90
  loc_74855D: FLdRfVar var_90
  loc_748560: LitI4 &H3A
  loc_748565: PopTmpLdAdStr var_8C
  loc_748568: LitI2_Byte &H21
  loc_74856A: PopTmpLdAd2 var_86
  loc_74856D: ImpAdLdRf MemVar_74C7D0
  loc_748570: NewIfNullPr clsMsg
  loc_748573: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748578: ILdRf var_1D4
  loc_74857B: LitI4 &HF
  loc_748580: FMemLdRf unk_418E79
  loc_748585: Ary1StStrCopy
  loc_748586: FFreeStr var_90 = ""
  loc_74858D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7485A4: FLdRfVar var_1D4
  loc_7485A7: LitVar_Missing var_1D0
  loc_7485AA: LitVar_Missing var_1B0
  loc_7485AD: LitVar_Missing var_190
  loc_7485B0: LitVar_Missing var_170
  loc_7485B3: LitVar_Missing var_150
  loc_7485B6: LitVar_Missing var_130
  loc_7485B9: LitVar_Missing var_110
  loc_7485BC: LitVar_Missing var_F0
  loc_7485BF: LitVar_Missing var_D0
  loc_7485C2: LitVar_Missing var_B0
  loc_7485C5: LitStr "Control de Tanques"
  loc_7485C8: FStStrCopy var_90
  loc_7485CB: FLdRfVar var_90
  loc_7485CE: LitI4 &H47
  loc_7485D3: PopTmpLdAdStr var_8C
  loc_7485D6: LitI2_Byte &H21
  loc_7485D8: PopTmpLdAd2 var_86
  loc_7485DB: ImpAdLdRf MemVar_74C7D0
  loc_7485DE: NewIfNullPr clsMsg
  loc_7485E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7485E6: ILdRf var_1D4
  loc_7485E9: LitI4 &H10
  loc_7485EE: FMemLdRf unk_418E79
  loc_7485F3: Ary1StStrCopy
  loc_7485F4: FFreeStr var_90 = ""
  loc_7485FB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748612: FLdRfVar var_1D4
  loc_748615: LitVar_Missing var_1D0
  loc_748618: LitVar_Missing var_1B0
  loc_74861B: LitVar_Missing var_190
  loc_74861E: LitVar_Missing var_170
  loc_748621: LitVar_Missing var_150
  loc_748624: LitVar_Missing var_130
  loc_748627: LitVar_Missing var_110
  loc_74862A: LitVar_Missing var_F0
  loc_74862D: LitVar_Missing var_D0
  loc_748630: LitVar_Missing var_B0
  loc_748633: LitStr "Convertir"
  loc_748636: FStStrCopy var_90
  loc_748639: FLdRfVar var_90
  loc_74863C: LitI4 &HF7
  loc_748641: PopTmpLdAdStr var_8C
  loc_748644: LitI2_Byte &H21
  loc_748646: PopTmpLdAd2 var_86
  loc_748649: ImpAdLdRf MemVar_74C7D0
  loc_74864C: NewIfNullPr clsMsg
  loc_74864F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748654: ILdRf var_1D4
  loc_748657: LitStr " "
  loc_74865A: ConcatStr
  loc_74865B: FStStrNoPop var_1DC
  loc_74865E: FMemLdR4 arg_8(7528)
  loc_748663: ConcatStr
  loc_748664: FStStrNoPop var_1E0
  loc_748667: LitStr " "
  loc_74866A: ConcatStr
  loc_74866B: FStStrNoPop var_394
  loc_74866E: FLdRfVar var_390
  loc_748671: LitVar_Missing var_324
  loc_748674: LitVar_Missing var_304
  loc_748677: LitVar_Missing var_2E4
  loc_74867A: LitVar_Missing var_2C4
  loc_74867D: LitVar_Missing var_2A4
  loc_748680: LitVar_Missing var_284
  loc_748683: LitVar_Missing var_264
  loc_748686: LitVar_Missing var_244
  loc_748689: LitVar_Missing var_224
  loc_74868C: LitVar_Missing var_200
  loc_74868F: LitStr "en mililitros"
  loc_748692: FStStrCopy var_348
  loc_748695: FLdRfVar var_348
  loc_748698: LitI4 &HF8
  loc_74869D: PopTmpLdAdStr var_204
  loc_7486A0: LitI2_Byte &H21
  loc_7486A2: PopTmpLdAd2 var_1D6
  loc_7486A5: ImpAdLdRf MemVar_74C7D0
  loc_7486A8: NewIfNullPr clsMsg
  loc_7486AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7486B0: ILdRf var_390
  loc_7486B3: ConcatStr
  loc_7486B4: FStStrNoPop var_398
  loc_7486B7: LitI4 &H11
  loc_7486BC: FMemLdRf unk_418E79
  loc_7486C1: Ary1StStrCopy
  loc_7486C2: FFreeStr var_90 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_348 = "": var_394 = "": var_390 = ""
  loc_7486D5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_200 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_748700: FLdRfVar var_1D4
  loc_748703: LitVar_Missing var_1D0
  loc_748706: LitVar_Missing var_1B0
  loc_748709: LitVar_Missing var_190
  loc_74870C: LitVar_Missing var_170
  loc_74870F: LitVar_Missing var_150
  loc_748712: LitVar_Missing var_130
  loc_748715: LitVar_Missing var_110
  loc_748718: LitVar_Missing var_F0
  loc_74871B: LitVar_Missing var_D0
  loc_74871E: LitVar_Missing var_B0
  loc_748721: LitStr "Datos Estación"
  loc_748724: FStStrCopy var_90
  loc_748727: FLdRfVar var_90
  loc_74872A: LitI4 &HF9
  loc_74872F: PopTmpLdAdStr var_8C
  loc_748732: LitI2_Byte &H21
  loc_748734: PopTmpLdAd2 var_86
  loc_748737: ImpAdLdRf MemVar_74C7D0
  loc_74873A: NewIfNullPr clsMsg
  loc_74873D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748742: ILdRf var_1D4
  loc_748745: LitI4 &H12
  loc_74874A: FMemLdRf unk_418E79
  loc_74874F: Ary1StStrCopy
  loc_748750: FFreeStr var_90 = ""
  loc_748757: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74876E: FLdRfVar var_1D4
  loc_748771: LitVar_Missing var_1D0
  loc_748774: LitVar_Missing var_1B0
  loc_748777: LitVar_Missing var_190
  loc_74877A: LitVar_Missing var_170
  loc_74877D: LitVar_Missing var_150
  loc_748780: LitVar_Missing var_130
  loc_748783: LitVar_Missing var_110
  loc_748786: LitVar_Missing var_F0
  loc_748789: LitVar_Missing var_D0
  loc_74878C: LitVar_Missing var_B0
  loc_74878F: LitStr "Datos Regionales"
  loc_748792: FStStrCopy var_90
  loc_748795: FLdRfVar var_90
  loc_748798: LitI4 &H3C
  loc_74879D: PopTmpLdAdStr var_8C
  loc_7487A0: LitI2_Byte &H21
  loc_7487A2: PopTmpLdAd2 var_86
  loc_7487A5: ImpAdLdRf MemVar_74C7D0
  loc_7487A8: NewIfNullPr clsMsg
  loc_7487AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7487B0: ILdRf var_1D4
  loc_7487B3: LitI4 &H13
  loc_7487B8: FMemLdRf unk_418E79
  loc_7487BD: Ary1StStrCopy
  loc_7487BE: FFreeStr var_90 = ""
  loc_7487C5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7487DC: FLdRfVar var_1D4
  loc_7487DF: LitVar_Missing var_1D0
  loc_7487E2: LitVar_Missing var_1B0
  loc_7487E5: LitVar_Missing var_190
  loc_7487E8: LitVar_Missing var_170
  loc_7487EB: LitVar_Missing var_150
  loc_7487EE: LitVar_Missing var_130
  loc_7487F1: LitVar_Missing var_110
  loc_7487F4: LitVar_Missing var_F0
  loc_7487F7: LitVar_Missing var_D0
  loc_7487FA: LitVar_Missing var_B0
  loc_7487FD: LitStr "Emergencia General"
  loc_748800: FStStrCopy var_90
  loc_748803: FLdRfVar var_90
  loc_748806: LitI4 &HFA
  loc_74880B: PopTmpLdAdStr var_8C
  loc_74880E: LitI2_Byte &H21
  loc_748810: PopTmpLdAd2 var_86
  loc_748813: ImpAdLdRf MemVar_74C7D0
  loc_748816: NewIfNullPr clsMsg
  loc_748819: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74881E: ILdRf var_1D4
  loc_748821: LitI4 &H14
  loc_748826: FMemLdRf unk_418E79
  loc_74882B: Ary1StStrCopy
  loc_74882C: FFreeStr var_90 = ""
  loc_748833: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74884A: FLdRfVar var_1D4
  loc_74884D: LitVar_Missing var_1D0
  loc_748850: LitVar_Missing var_1B0
  loc_748853: LitVar_Missing var_190
  loc_748856: LitVar_Missing var_170
  loc_748859: LitVar_Missing var_150
  loc_74885C: LitVar_Missing var_130
  loc_74885F: LitVar_Missing var_110
  loc_748862: LitVar_Missing var_F0
  loc_748865: LitVar_Missing var_D0
  loc_748868: LitVar_Missing var_B0
  loc_74886B: LitStr "Emisión Factura"
  loc_74886E: FStStrCopy var_90
  loc_748871: FLdRfVar var_90
  loc_748874: LitI4 &HFB
  loc_748879: PopTmpLdAdStr var_8C
  loc_74887C: LitI2_Byte &H21
  loc_74887E: PopTmpLdAd2 var_86
  loc_748881: ImpAdLdRf MemVar_74C7D0
  loc_748884: NewIfNullPr clsMsg
  loc_748887: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74888C: ILdRf var_1D4
  loc_74888F: LitI4 &H15
  loc_748894: FMemLdRf unk_418E79
  loc_748899: Ary1StStrCopy
  loc_74889A: FFreeStr var_90 = ""
  loc_7488A1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7488B8: FLdRfVar var_1D4
  loc_7488BB: LitVar_Missing var_1D0
  loc_7488BE: LitVar_Missing var_1B0
  loc_7488C1: LitVar_Missing var_190
  loc_7488C4: LitVar_Missing var_170
  loc_7488C7: LitVar_Missing var_150
  loc_7488CA: LitVar_Missing var_130
  loc_7488CD: LitVar_Missing var_110
  loc_7488D0: LitVar_Missing var_F0
  loc_7488D3: LitVar_Missing var_D0
  loc_7488D6: LitVar_Missing var_B0
  loc_7488D9: LitStr "Eventos de Log"
  loc_7488DC: FStStrCopy var_90
  loc_7488DF: FLdRfVar var_90
  loc_7488E2: LitI4 &H45
  loc_7488E7: PopTmpLdAdStr var_8C
  loc_7488EA: LitI2_Byte &H21
  loc_7488EC: PopTmpLdAd2 var_86
  loc_7488EF: ImpAdLdRf MemVar_74C7D0
  loc_7488F2: NewIfNullPr clsMsg
  loc_7488F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7488FA: ILdRf var_1D4
  loc_7488FD: LitI4 &H16
  loc_748902: FMemLdRf unk_418E79
  loc_748907: Ary1StStrCopy
  loc_748908: FFreeStr var_90 = ""
  loc_74890F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748926: FLdRfVar var_1D4
  loc_748929: LitVar_Missing var_1D0
  loc_74892C: LitVar_Missing var_1B0
  loc_74892F: LitVar_Missing var_190
  loc_748932: LitVar_Missing var_170
  loc_748935: LitVar_Missing var_150
  loc_748938: LitVar_Missing var_130
  loc_74893B: LitVar_Missing var_110
  loc_74893E: LitVar_Missing var_F0
  loc_748941: LitVar_Missing var_D0
  loc_748944: LitVar_Missing var_B0
  loc_748947: LitStr "Existencias Volumétricas Mensuales"
  loc_74894A: FStStrCopy var_90
  loc_74894D: FLdRfVar var_90
  loc_748950: LitI4 &HFC
  loc_748955: PopTmpLdAdStr var_8C
  loc_748958: LitI2_Byte &H21
  loc_74895A: PopTmpLdAd2 var_86
  loc_74895D: ImpAdLdRf MemVar_74C7D0
  loc_748960: NewIfNullPr clsMsg
  loc_748963: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748968: ILdRf var_1D4
  loc_74896B: LitI4 &H17
  loc_748970: FMemLdRf unk_418E79
  loc_748975: Ary1StStrCopy
  loc_748976: FFreeStr var_90 = ""
  loc_74897D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748994: FLdRfVar var_1D4
  loc_748997: LitVar_Missing var_1D0
  loc_74899A: LitVar_Missing var_1B0
  loc_74899D: LitVar_Missing var_190
  loc_7489A0: LitVar_Missing var_170
  loc_7489A3: LitVar_Missing var_150
  loc_7489A6: LitVar_Missing var_130
  loc_7489A9: LitVar_Missing var_110
  loc_7489AC: LitVar_Missing var_F0
  loc_7489AF: LitVar_Missing var_D0
  loc_7489B2: LitVar_Missing var_B0
  loc_7489B5: LitStr "Forzar Cierre de Conectividad"
  loc_7489B8: FStStrCopy var_90
  loc_7489BB: FLdRfVar var_90
  loc_7489BE: LitI4 &HFD
  loc_7489C3: PopTmpLdAdStr var_8C
  loc_7489C6: LitI2_Byte &H21
  loc_7489C8: PopTmpLdAd2 var_86
  loc_7489CB: ImpAdLdRf MemVar_74C7D0
  loc_7489CE: NewIfNullPr clsMsg
  loc_7489D1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7489D6: ILdRf var_1D4
  loc_7489D9: LitI4 &H18
  loc_7489DE: FMemLdRf unk_418E79
  loc_7489E3: Ary1StStrCopy
  loc_7489E4: FFreeStr var_90 = ""
  loc_7489EB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748A02: FLdRfVar var_1D4
  loc_748A05: LitVar_Missing var_1D0
  loc_748A08: LitVar_Missing var_1B0
  loc_748A0B: LitVar_Missing var_190
  loc_748A0E: LitVar_Missing var_170
  loc_748A11: LitVar_Missing var_150
  loc_748A14: LitVar_Missing var_130
  loc_748A17: LitVar_Missing var_110
  loc_748A1A: LitVar_Missing var_F0
  loc_748A1D: LitVar_Missing var_D0
  loc_748A20: LitVar_Missing var_B0
  loc_748A23: LitStr "Gestión de Puertos"
  loc_748A26: FStStrCopy var_90
  loc_748A29: FLdRfVar var_90
  loc_748A2C: LitI4 &H48
  loc_748A31: PopTmpLdAdStr var_8C
  loc_748A34: LitI2_Byte &H21
  loc_748A36: PopTmpLdAd2 var_86
  loc_748A39: ImpAdLdRf MemVar_74C7D0
  loc_748A3C: NewIfNullPr clsMsg
  loc_748A3F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748A44: ILdRf var_1D4
  loc_748A47: LitI4 &H19
  loc_748A4C: FMemLdRf unk_418E79
  loc_748A51: Ary1StStrCopy
  loc_748A52: FFreeStr var_90 = ""
  loc_748A59: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748A70: FLdRfVar var_1D4
  loc_748A73: LitVar_Missing var_1D0
  loc_748A76: LitVar_Missing var_1B0
  loc_748A79: LitVar_Missing var_190
  loc_748A7C: LitVar_Missing var_170
  loc_748A7F: LitVar_Missing var_150
  loc_748A82: LitVar_Missing var_130
  loc_748A85: LitVar_Missing var_110
  loc_748A88: LitVar_Missing var_F0
  loc_748A8B: LitVar_Missing var_D0
  loc_748A8E: LitVar_Missing var_B0
  loc_748A91: LitStr "Grupo de"
  loc_748A94: FStStrCopy var_90
  loc_748A97: FLdRfVar var_90
  loc_748A9A: LitI4 &HFE
  loc_748A9F: PopTmpLdAdStr var_8C
  loc_748AA2: LitI2_Byte &H21
  loc_748AA4: PopTmpLdAd2 var_86
  loc_748AA7: ImpAdLdRf MemVar_74C7D0
  loc_748AAA: NewIfNullPr clsMsg
  loc_748AAD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748AB2: ILdRf var_1D4
  loc_748AB5: LitStr " "
  loc_748AB8: ConcatStr
  loc_748AB9: FStStrNoPop var_1DC
  loc_748ABC: FMemLdR4 arg_8(7568)
  loc_748AC1: ConcatStr
  loc_748AC2: FStStrNoPop var_1E0
  loc_748AC5: LitI4 &H1A
  loc_748ACA: FMemLdRf unk_418E79
  loc_748ACF: Ary1StStrCopy
  loc_748AD0: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_748ADB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748AF2: FLdRfVar var_1D4
  loc_748AF5: LitVar_Missing var_1D0
  loc_748AF8: LitVar_Missing var_1B0
  loc_748AFB: LitVar_Missing var_190
  loc_748AFE: LitVar_Missing var_170
  loc_748B01: LitVar_Missing var_150
  loc_748B04: LitVar_Missing var_130
  loc_748B07: LitVar_Missing var_110
  loc_748B0A: LitVar_Missing var_F0
  loc_748B0D: LitVar_Missing var_D0
  loc_748B10: LitVar_Missing var_B0
  loc_748B13: LitStr "Importa datos del CEM-37"
  loc_748B16: FStStrCopy var_90
  loc_748B19: FLdRfVar var_90
  loc_748B1C: LitI4 &HFF
  loc_748B21: PopTmpLdAdStr var_8C
  loc_748B24: LitI2_Byte &H21
  loc_748B26: PopTmpLdAd2 var_86
  loc_748B29: ImpAdLdRf MemVar_74C7D0
  loc_748B2C: NewIfNullPr clsMsg
  loc_748B2F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748B34: ILdRf var_1D4
  loc_748B37: LitI4 &H1B
  loc_748B3C: FMemLdRf unk_418E79
  loc_748B41: Ary1StStrCopy
  loc_748B42: FFreeStr var_90 = ""
  loc_748B49: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748B60: FLdRfVar var_1D4
  loc_748B63: LitVar_Missing var_1D0
  loc_748B66: LitVar_Missing var_1B0
  loc_748B69: LitVar_Missing var_190
  loc_748B6C: LitVar_Missing var_170
  loc_748B6F: LitVar_Missing var_150
  loc_748B72: LitVar_Missing var_130
  loc_748B75: LitVar_Missing var_110
  loc_748B78: LitVar_Missing var_F0
  loc_748B7B: LitVar_Missing var_D0
  loc_748B7E: LitVar_Missing var_B0
  loc_748B81: LitStr "Impresión Automática de Reportes"
  loc_748B84: FStStrCopy var_90
  loc_748B87: FLdRfVar var_90
  loc_748B8A: LitI4 &H100
  loc_748B8F: PopTmpLdAdStr var_8C
  loc_748B92: LitI2_Byte &H21
  loc_748B94: PopTmpLdAd2 var_86
  loc_748B97: ImpAdLdRf MemVar_74C7D0
  loc_748B9A: NewIfNullPr clsMsg
  loc_748B9D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748BA2: ILdRf var_1D4
  loc_748BA5: LitI4 &H1C
  loc_748BAA: FMemLdRf unk_418E79
  loc_748BAF: Ary1StStrCopy
  loc_748BB0: FFreeStr var_90 = ""
  loc_748BB7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748BCE: FLdRfVar var_1D4
  loc_748BD1: LitVar_Missing var_1D0
  loc_748BD4: LitVar_Missing var_1B0
  loc_748BD7: LitVar_Missing var_190
  loc_748BDA: LitVar_Missing var_170
  loc_748BDD: LitVar_Missing var_150
  loc_748BE0: LitVar_Missing var_130
  loc_748BE3: LitVar_Missing var_110
  loc_748BE6: LitVar_Missing var_F0
  loc_748BE9: LitVar_Missing var_D0
  loc_748BEC: LitVar_Missing var_B0
  loc_748BEF: LitStr "Impresión de Reportes"
  loc_748BF2: FStStrCopy var_90
  loc_748BF5: FLdRfVar var_90
  loc_748BF8: LitI4 &H101
  loc_748BFD: PopTmpLdAdStr var_8C
  loc_748C00: LitI2_Byte &H21
  loc_748C02: PopTmpLdAd2 var_86
  loc_748C05: ImpAdLdRf MemVar_74C7D0
  loc_748C08: NewIfNullPr clsMsg
  loc_748C0B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748C10: ILdRf var_1D4
  loc_748C13: LitI4 &H1D
  loc_748C18: FMemLdRf unk_418E79
  loc_748C1D: Ary1StStrCopy
  loc_748C1E: FFreeStr var_90 = ""
  loc_748C25: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748C3C: FLdRfVar var_1D4
  loc_748C3F: LitVar_Missing var_1D0
  loc_748C42: LitVar_Missing var_1B0
  loc_748C45: LitVar_Missing var_190
  loc_748C48: LitVar_Missing var_170
  loc_748C4B: LitVar_Missing var_150
  loc_748C4E: LitVar_Missing var_130
  loc_748C51: LitVar_Missing var_110
  loc_748C54: LitVar_Missing var_F0
  loc_748C57: LitVar_Missing var_D0
  loc_748C5A: LitVar_Missing var_B0
  loc_748C5D: LitStr "Imprimir Configuración"
  loc_748C60: FStStrCopy var_90
  loc_748C63: FLdRfVar var_90
  loc_748C66: LitI4 &H102
  loc_748C6B: PopTmpLdAdStr var_8C
  loc_748C6E: LitI2_Byte &H21
  loc_748C70: PopTmpLdAd2 var_86
  loc_748C73: ImpAdLdRf MemVar_74C7D0
  loc_748C76: NewIfNullPr clsMsg
  loc_748C79: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748C7E: ILdRf var_1D4
  loc_748C81: LitI4 &H1E
  loc_748C86: FMemLdRf unk_418E79
  loc_748C8B: Ary1StStrCopy
  loc_748C8C: FFreeStr var_90 = ""
  loc_748C93: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748CAA: FLdRfVar var_1D4
  loc_748CAD: LitVar_Missing var_1D0
  loc_748CB0: LitVar_Missing var_1B0
  loc_748CB3: LitVar_Missing var_190
  loc_748CB6: LitVar_Missing var_170
  loc_748CB9: LitVar_Missing var_150
  loc_748CBC: LitVar_Missing var_130
  loc_748CBF: LitVar_Missing var_110
  loc_748CC2: LitVar_Missing var_F0
  loc_748CC5: LitVar_Missing var_D0
  loc_748CC8: LitVar_Missing var_B0
  loc_748CCB: LitStr "Ingreso de Totalizadores"
  loc_748CCE: FStStrCopy var_90
  loc_748CD1: FLdRfVar var_90
  loc_748CD4: LitI4 &H103
  loc_748CD9: PopTmpLdAdStr var_8C
  loc_748CDC: LitI2_Byte &H21
  loc_748CDE: PopTmpLdAd2 var_86
  loc_748CE1: ImpAdLdRf MemVar_74C7D0
  loc_748CE4: NewIfNullPr clsMsg
  loc_748CE7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748CEC: ILdRf var_1D4
  loc_748CEF: LitI4 &H1F
  loc_748CF4: FMemLdRf unk_418E79
  loc_748CF9: Ary1StStrCopy
  loc_748CFA: FFreeStr var_90 = ""
  loc_748D01: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748D18: FLdRfVar var_1D4
  loc_748D1B: LitVar_Missing var_1D0
  loc_748D1E: LitVar_Missing var_1B0
  loc_748D21: LitVar_Missing var_190
  loc_748D24: LitVar_Missing var_170
  loc_748D27: LitVar_Missing var_150
  loc_748D2A: LitVar_Missing var_130
  loc_748D2D: LitVar_Missing var_110
  loc_748D30: LitVar_Missing var_F0
  loc_748D33: LitVar_Missing var_D0
  loc_748D36: LitVar_Missing var_B0
  loc_748D39: LitStr "Inicializar"
  loc_748D3C: FStStrCopy var_90
  loc_748D3F: FLdRfVar var_90
  loc_748D42: LitI4 &HE2
  loc_748D47: PopTmpLdAdStr var_8C
  loc_748D4A: LitI2_Byte &H21
  loc_748D4C: PopTmpLdAd2 var_86
  loc_748D4F: ImpAdLdRf MemVar_74C7D0
  loc_748D52: NewIfNullPr clsMsg
  loc_748D55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748D5A: ILdRf var_1D4
  loc_748D5D: LitStr " "
  loc_748D60: ConcatStr
  loc_748D61: FStStrNoPop var_1DC
  loc_748D64: FMemLdR4 arg_8(7568)
  loc_748D69: ConcatStr
  loc_748D6A: FStStrNoPop var_1E0
  loc_748D6D: LitI4 &H20
  loc_748D72: FMemLdRf unk_418E79
  loc_748D77: Ary1StStrCopy
  loc_748D78: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_748D83: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748D9A: FLdRfVar var_1D4
  loc_748D9D: LitVar_Missing var_1D0
  loc_748DA0: LitVar_Missing var_1B0
  loc_748DA3: LitVar_Missing var_190
  loc_748DA6: LitVar_Missing var_170
  loc_748DA9: LitVar_Missing var_150
  loc_748DAC: LitVar_Missing var_130
  loc_748DAF: LitVar_Missing var_110
  loc_748DB2: LitVar_Missing var_F0
  loc_748DB5: LitVar_Missing var_D0
  loc_748DB8: LitVar_Missing var_B0
  loc_748DBB: LitStr "Log de Usuarios"
  loc_748DBE: FStStrCopy var_90
  loc_748DC1: FLdRfVar var_90
  loc_748DC4: LitI4 &HE1
  loc_748DC9: PopTmpLdAdStr var_8C
  loc_748DCC: LitI2_Byte &H21
  loc_748DCE: PopTmpLdAd2 var_86
  loc_748DD1: ImpAdLdRf MemVar_74C7D0
  loc_748DD4: NewIfNullPr clsMsg
  loc_748DD7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748DDC: ILdRf var_1D4
  loc_748DDF: LitI4 &H21
  loc_748DE4: FMemLdRf unk_418E79
  loc_748DE9: Ary1StStrCopy
  loc_748DEA: FFreeStr var_90 = ""
  loc_748DF1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748E08: FLdRfVar var_1D4
  loc_748E0B: LitVar_Missing var_1D0
  loc_748E0E: LitVar_Missing var_1B0
  loc_748E11: LitVar_Missing var_190
  loc_748E14: LitVar_Missing var_170
  loc_748E17: LitVar_Missing var_150
  loc_748E1A: LitVar_Missing var_130
  loc_748E1D: LitVar_Missing var_110
  loc_748E20: LitVar_Missing var_F0
  loc_748E23: LitVar_Missing var_D0
  loc_748E26: LitVar_Missing var_B0
  loc_748E29: LitStr "Medición de Tanque"
  loc_748E2C: FStStrCopy var_90
  loc_748E2F: FLdRfVar var_90
  loc_748E32: LitI4 &H104
  loc_748E37: PopTmpLdAdStr var_8C
  loc_748E3A: LitI2_Byte &H21
  loc_748E3C: PopTmpLdAd2 var_86
  loc_748E3F: ImpAdLdRf MemVar_74C7D0
  loc_748E42: NewIfNullPr clsMsg
  loc_748E45: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748E4A: ILdRf var_1D4
  loc_748E4D: LitI4 &H22
  loc_748E52: FMemLdRf unk_418E79
  loc_748E57: Ary1StStrCopy
  loc_748E58: FFreeStr var_90 = ""
  loc_748E5F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748E76: FLdRfVar var_1D4
  loc_748E79: LitVar_Missing var_1D0
  loc_748E7C: LitVar_Missing var_1B0
  loc_748E7F: LitVar_Missing var_190
  loc_748E82: LitVar_Missing var_170
  loc_748E85: LitVar_Missing var_150
  loc_748E88: LitVar_Missing var_130
  loc_748E8B: LitVar_Missing var_110
  loc_748E8E: LitVar_Missing var_F0
  loc_748E91: LitVar_Missing var_D0
  loc_748E94: LitVar_Missing var_B0
  loc_748E97: LitStr "Menú Editor"
  loc_748E9A: FStStrCopy var_90
  loc_748E9D: FLdRfVar var_90
  loc_748EA0: LitI4 &H105
  loc_748EA5: PopTmpLdAdStr var_8C
  loc_748EA8: LitI2_Byte &H21
  loc_748EAA: PopTmpLdAd2 var_86
  loc_748EAD: ImpAdLdRf MemVar_74C7D0
  loc_748EB0: NewIfNullPr clsMsg
  loc_748EB3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748EB8: ILdRf var_1D4
  loc_748EBB: LitI4 &H23
  loc_748EC0: FMemLdRf unk_418E79
  loc_748EC5: Ary1StStrCopy
  loc_748EC6: FFreeStr var_90 = ""
  loc_748ECD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748EE4: FLdRfVar var_1D4
  loc_748EE7: LitVar_Missing var_1D0
  loc_748EEA: LitVar_Missing var_1B0
  loc_748EED: LitVar_Missing var_190
  loc_748EF0: LitVar_Missing var_170
  loc_748EF3: LitVar_Missing var_150
  loc_748EF6: LitVar_Missing var_130
  loc_748EF9: LitVar_Missing var_110
  loc_748EFC: LitVar_Missing var_F0
  loc_748EFF: LitVar_Missing var_D0
  loc_748F02: LitVar_Missing var_B0
  loc_748F05: LitStr "Niveles de Precios"
  loc_748F08: FStStrCopy var_90
  loc_748F0B: FLdRfVar var_90
  loc_748F0E: LitI4 &H106
  loc_748F13: PopTmpLdAdStr var_8C
  loc_748F16: LitI2_Byte &H21
  loc_748F18: PopTmpLdAd2 var_86
  loc_748F1B: ImpAdLdRf MemVar_74C7D0
  loc_748F1E: NewIfNullPr clsMsg
  loc_748F21: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748F26: ILdRf var_1D4
  loc_748F29: LitI4 &H24
  loc_748F2E: FMemLdRf unk_418E79
  loc_748F33: Ary1StStrCopy
  loc_748F34: FFreeStr var_90 = ""
  loc_748F3B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748F52: FLdRfVar var_1D4
  loc_748F55: LitVar_Missing var_1D0
  loc_748F58: LitVar_Missing var_1B0
  loc_748F5B: LitVar_Missing var_190
  loc_748F5E: LitVar_Missing var_170
  loc_748F61: LitVar_Missing var_150
  loc_748F64: LitVar_Missing var_130
  loc_748F67: LitVar_Missing var_110
  loc_748F6A: LitVar_Missing var_F0
  loc_748F6D: LitVar_Missing var_D0
  loc_748F70: LitVar_Missing var_B0
  loc_748F73: LitStr "Número de Comprobante"
  loc_748F76: FStStrCopy var_90
  loc_748F79: FLdRfVar var_90
  loc_748F7C: LitI4 &H32
  loc_748F81: PopTmpLdAdStr var_8C
  loc_748F84: LitI2_Byte &H21
  loc_748F86: PopTmpLdAd2 var_86
  loc_748F89: ImpAdLdRf MemVar_74C7D0
  loc_748F8C: NewIfNullPr clsMsg
  loc_748F8F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_748F94: ILdRf var_1D4
  loc_748F97: LitI4 &H25
  loc_748F9C: FMemLdRf unk_418E79
  loc_748FA1: Ary1StStrCopy
  loc_748FA2: FFreeStr var_90 = ""
  loc_748FA9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_748FC0: FLdRfVar var_1D4
  loc_748FC3: LitVar_Missing var_1D0
  loc_748FC6: LitVar_Missing var_1B0
  loc_748FC9: LitVar_Missing var_190
  loc_748FCC: LitVar_Missing var_170
  loc_748FCF: LitVar_Missing var_150
  loc_748FD2: LitVar_Missing var_130
  loc_748FD5: LitVar_Missing var_110
  loc_748FD8: LitVar_Missing var_F0
  loc_748FDB: LitVar_Missing var_D0
  loc_748FDE: LitVar_Missing var_B0
  loc_748FE1: LitStr "Opción Decimal"
  loc_748FE4: FStStrCopy var_90
  loc_748FE7: FLdRfVar var_90
  loc_748FEA: LitI4 &H34
  loc_748FEF: PopTmpLdAdStr var_8C
  loc_748FF2: LitI2_Byte &H21
  loc_748FF4: PopTmpLdAd2 var_86
  loc_748FF7: ImpAdLdRf MemVar_74C7D0
  loc_748FFA: NewIfNullPr clsMsg
  loc_748FFD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749002: ILdRf var_1D4
  loc_749005: LitI4 &H26
  loc_74900A: FMemLdRf unk_418E79
  loc_74900F: Ary1StStrCopy
  loc_749010: FFreeStr var_90 = ""
  loc_749017: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74902E: FLdRfVar var_1D4
  loc_749031: LitVar_Missing var_1D0
  loc_749034: LitVar_Missing var_1B0
  loc_749037: LitVar_Missing var_190
  loc_74903A: LitVar_Missing var_170
  loc_74903D: LitVar_Missing var_150
  loc_749040: LitVar_Missing var_130
  loc_749043: LitVar_Missing var_110
  loc_749046: LitVar_Missing var_F0
  loc_749049: LitVar_Missing var_D0
  loc_74904C: LitVar_Missing var_B0
  loc_74904F: LitStr "Preautorización General"
  loc_749052: FStStrCopy var_90
  loc_749055: FLdRfVar var_90
  loc_749058: LitI4 &H107
  loc_74905D: PopTmpLdAdStr var_8C
  loc_749060: LitI2_Byte &H21
  loc_749062: PopTmpLdAd2 var_86
  loc_749065: ImpAdLdRf MemVar_74C7D0
  loc_749068: NewIfNullPr clsMsg
  loc_74906B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749070: ILdRf var_1D4
  loc_749073: LitI4 &H27
  loc_749078: FMemLdRf unk_418E79
  loc_74907D: Ary1StStrCopy
  loc_74907E: FFreeStr var_90 = ""
  loc_749085: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74909C: FLdRfVar var_1D4
  loc_74909F: LitVar_Missing var_1D0
  loc_7490A2: LitVar_Missing var_1B0
  loc_7490A5: LitVar_Missing var_190
  loc_7490A8: LitVar_Missing var_170
  loc_7490AB: LitVar_Missing var_150
  loc_7490AE: LitVar_Missing var_130
  loc_7490B1: LitVar_Missing var_110
  loc_7490B4: LitVar_Missing var_F0
  loc_7490B7: LitVar_Missing var_D0
  loc_7490BA: LitVar_Missing var_B0
  loc_7490BD: LitStr "Precios Pendientes"
  loc_7490C0: FStStrCopy var_90
  loc_7490C3: FLdRfVar var_90
  loc_7490C6: LitI4 &H108
  loc_7490CB: PopTmpLdAdStr var_8C
  loc_7490CE: LitI2_Byte &H21
  loc_7490D0: PopTmpLdAd2 var_86
  loc_7490D3: ImpAdLdRf MemVar_74C7D0
  loc_7490D6: NewIfNullPr clsMsg
  loc_7490D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7490DE: ILdRf var_1D4
  loc_7490E1: LitI4 &H28
  loc_7490E6: FMemLdRf unk_418E79
  loc_7490EB: Ary1StStrCopy
  loc_7490EC: FFreeStr var_90 = ""
  loc_7490F3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74910A: FLdRfVar var_1D4
  loc_74910D: LitVar_Missing var_1D0
  loc_749110: LitVar_Missing var_1B0
  loc_749113: LitVar_Missing var_190
  loc_749116: LitVar_Missing var_170
  loc_749119: LitVar_Missing var_150
  loc_74911C: LitVar_Missing var_130
  loc_74911F: LitVar_Missing var_110
  loc_749122: LitVar_Missing var_F0
  loc_749125: LitVar_Missing var_D0
  loc_749128: LitVar_Missing var_B0
  loc_74912B: LitStr "Precios Temporizados"
  loc_74912E: FStStrCopy var_90
  loc_749131: FLdRfVar var_90
  loc_749134: LitI4 &H109
  loc_749139: PopTmpLdAdStr var_8C
  loc_74913C: LitI2_Byte &H21
  loc_74913E: PopTmpLdAd2 var_86
  loc_749141: ImpAdLdRf MemVar_74C7D0
  loc_749144: NewIfNullPr clsMsg
  loc_749147: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74914C: ILdRf var_1D4
  loc_74914F: LitI4 &H29
  loc_749154: FMemLdRf unk_418E79
  loc_749159: Ary1StStrCopy
  loc_74915A: FFreeStr var_90 = ""
  loc_749161: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_749178: FLdRfVar var_1D4
  loc_74917B: LitVar_Missing var_1D0
  loc_74917E: LitVar_Missing var_1B0
  loc_749181: LitVar_Missing var_190
  loc_749184: LitVar_Missing var_170
  loc_749187: LitVar_Missing var_150
  loc_74918A: LitVar_Missing var_130
  loc_74918D: LitVar_Missing var_110
  loc_749190: LitVar_Missing var_F0
  loc_749193: LitVar_Missing var_D0
  loc_749196: LitVar_Missing var_B0
  loc_749199: LitStr "Programación de Eventos"
  loc_74919C: FStStrCopy var_90
  loc_74919F: FLdRfVar var_90
  loc_7491A2: LitI4 &H10A
  loc_7491A7: PopTmpLdAdStr var_8C
  loc_7491AA: LitI2_Byte &H21
  loc_7491AC: PopTmpLdAd2 var_86
  loc_7491AF: ImpAdLdRf MemVar_74C7D0
  loc_7491B2: NewIfNullPr clsMsg
  loc_7491B5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7491BA: ILdRf var_1D4
  loc_7491BD: LitI4 &H2A
  loc_7491C2: FMemLdRf unk_418E79
  loc_7491C7: Ary1StStrCopy
  loc_7491C8: FFreeStr var_90 = ""
  loc_7491CF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7491E6: FLdRfVar var_1D4
  loc_7491E9: LitVar_Missing var_1D0
  loc_7491EC: LitVar_Missing var_1B0
  loc_7491EF: LitVar_Missing var_190
  loc_7491F2: LitVar_Missing var_170
  loc_7491F5: LitVar_Missing var_150
  loc_7491F8: LitVar_Missing var_130
  loc_7491FB: LitVar_Missing var_110
  loc_7491FE: LitVar_Missing var_F0
  loc_749201: LitVar_Missing var_D0
  loc_749204: LitVar_Missing var_B0
  loc_749207: LitStr "Programación de Precios"
  loc_74920A: FStStrCopy var_90
  loc_74920D: FLdRfVar var_90
  loc_749210: LitI4 &H33
  loc_749215: PopTmpLdAdStr var_8C
  loc_749218: LitI2_Byte &H21
  loc_74921A: PopTmpLdAd2 var_86
  loc_74921D: ImpAdLdRf MemVar_74C7D0
  loc_749220: NewIfNullPr clsMsg
  loc_749223: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749228: ILdRf var_1D4
  loc_74922B: LitI4 &H2B
  loc_749230: FMemLdRf unk_418E79
  loc_749235: Ary1StStrCopy
  loc_749236: FFreeStr var_90 = ""
  loc_74923D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_749254: FLdRfVar var_1D4
  loc_749257: LitVar_Missing var_1D0
  loc_74925A: LitVar_Missing var_1B0
  loc_74925D: LitVar_Missing var_190
  loc_749260: LitVar_Missing var_170
  loc_749263: LitVar_Missing var_150
  loc_749266: LitVar_Missing var_130
  loc_749269: LitVar_Missing var_110
  loc_74926C: LitVar_Missing var_F0
  loc_74926F: LitVar_Missing var_D0
  loc_749272: LitVar_Missing var_B0
  loc_749275: LitStr "Recuperar Copia en Diskette"
  loc_749278: FStStrCopy var_90
  loc_74927B: FLdRfVar var_90
  loc_74927E: LitI4 &H10B
  loc_749283: PopTmpLdAdStr var_8C
  loc_749286: LitI2_Byte &H21
  loc_749288: PopTmpLdAd2 var_86
  loc_74928B: ImpAdLdRf MemVar_74C7D0
  loc_74928E: NewIfNullPr clsMsg
  loc_749291: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749296: ILdRf var_1D4
  loc_749299: LitI4 &H2C
  loc_74929E: FMemLdRf unk_418E79
  loc_7492A3: Ary1StStrCopy
  loc_7492A4: FFreeStr var_90 = ""
  loc_7492AB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7492C2: FLdRfVar var_1D4
  loc_7492C5: LitVar_Missing var_1D0
  loc_7492C8: LitVar_Missing var_1B0
  loc_7492CB: LitVar_Missing var_190
  loc_7492CE: LitVar_Missing var_170
  loc_7492D1: LitVar_Missing var_150
  loc_7492D4: LitVar_Missing var_130
  loc_7492D7: LitVar_Missing var_110
  loc_7492DA: LitVar_Missing var_F0
  loc_7492DD: LitVar_Missing var_D0
  loc_7492E0: LitVar_Missing var_B0
  loc_7492E3: LitStr "Reportes"
  loc_7492E6: FStStrCopy var_90
  loc_7492E9: FLdRfVar var_90
  loc_7492EC: LitI4 &H10C
  loc_7492F1: PopTmpLdAdStr var_8C
  loc_7492F4: LitI2_Byte &H21
  loc_7492F6: PopTmpLdAd2 var_86
  loc_7492F9: ImpAdLdRf MemVar_74C7D0
  loc_7492FC: NewIfNullPr clsMsg
  loc_7492FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749304: ILdRf var_1D4
  loc_749307: LitI4 &H2D
  loc_74930C: FMemLdRf unk_418E79
  loc_749311: Ary1StStrCopy
  loc_749312: FFreeStr var_90 = ""
  loc_749319: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_749330: FLdRfVar var_1D4
  loc_749333: LitVar_Missing var_1D0
  loc_749336: LitVar_Missing var_1B0
  loc_749339: LitVar_Missing var_190
  loc_74933C: LitVar_Missing var_170
  loc_74933F: LitVar_Missing var_150
  loc_749342: LitVar_Missing var_130
  loc_749345: LitVar_Missing var_110
  loc_749348: LitVar_Missing var_F0
  loc_74934B: LitVar_Missing var_D0
  loc_74934E: LitVar_Missing var_B0
  loc_749351: LitStr "Secciones de Reportes"
  loc_749354: FStStrCopy var_90
  loc_749357: FLdRfVar var_90
  loc_74935A: LitI4 &H10D
  loc_74935F: PopTmpLdAdStr var_8C
  loc_749362: LitI2_Byte &H21
  loc_749364: PopTmpLdAd2 var_86
  loc_749367: ImpAdLdRf MemVar_74C7D0
  loc_74936A: NewIfNullPr clsMsg
  loc_74936D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749372: ILdRf var_1D4
  loc_749375: LitI4 &H2E
  loc_74937A: FMemLdRf unk_418E79
  loc_74937F: Ary1StStrCopy
  loc_749380: FFreeStr var_90 = ""
  loc_749387: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74939E: FLdRfVar var_1D4
  loc_7493A1: LitVar_Missing var_1D0
  loc_7493A4: LitVar_Missing var_1B0
  loc_7493A7: LitVar_Missing var_190
  loc_7493AA: LitVar_Missing var_170
  loc_7493AD: LitVar_Missing var_150
  loc_7493B0: LitVar_Missing var_130
  loc_7493B3: LitVar_Missing var_110
  loc_7493B6: LitVar_Missing var_F0
  loc_7493B9: LitVar_Missing var_D0
  loc_7493BC: LitVar_Missing var_B0
  loc_7493BF: LitStr "Seguridad"
  loc_7493C2: FStStrCopy var_90
  loc_7493C5: FLdRfVar var_90
  loc_7493C8: LitI4 &H3B
  loc_7493CD: PopTmpLdAdStr var_8C
  loc_7493D0: LitI2_Byte &H21
  loc_7493D2: PopTmpLdAd2 var_86
  loc_7493D5: ImpAdLdRf MemVar_74C7D0
  loc_7493D8: NewIfNullPr clsMsg
  loc_7493DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7493E0: ILdRf var_1D4
  loc_7493E3: LitI4 &H2F
  loc_7493E8: FMemLdRf unk_418E79
  loc_7493ED: Ary1StStrCopy
  loc_7493EE: FFreeStr var_90 = ""
  loc_7493F5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74940C: FLdRfVar var_1D4
  loc_74940F: LitVar_Missing var_1D0
  loc_749412: LitVar_Missing var_1B0
  loc_749415: LitVar_Missing var_190
  loc_749418: LitVar_Missing var_170
  loc_74941B: LitVar_Missing var_150
  loc_74941E: LitVar_Missing var_130
  loc_749421: LitVar_Missing var_110
  loc_749424: LitVar_Missing var_F0
  loc_749427: LitVar_Missing var_D0
  loc_74942A: LitVar_Missing var_B0
  loc_74942D: LitStr "Tiempo de Espera de cambio de precios"
  loc_749430: FStStrCopy var_90
  loc_749433: FLdRfVar var_90
  loc_749436: LitI4 &H10E
  loc_74943B: PopTmpLdAdStr var_8C
  loc_74943E: LitI2_Byte &H21
  loc_749440: PopTmpLdAd2 var_86
  loc_749443: ImpAdLdRf MemVar_74C7D0
  loc_749446: NewIfNullPr clsMsg
  loc_749449: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74944E: ILdRf var_1D4
  loc_749451: LitI4 &H30
  loc_749456: FMemLdRf unk_418E79
  loc_74945B: Ary1StStrCopy
  loc_74945C: FFreeStr var_90 = ""
  loc_749463: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74947A: LitVarStr var_A0, vbNullString
  loc_74947F: PopAdLdVar
  loc_749480: LitStr "Turno"
  loc_749483: LitStr "Startup"
  loc_749486: LitStr "CEM44"
  loc_749489: ImpAdCallI2 GetSetting(, , , )
  loc_74948E: FMemStStr arg_8(7516)
  loc_749494: LitVarStr var_A0, vbNullString
  loc_749499: PopAdLdVar
  loc_74949A: LitStr "Dia"
  loc_74949D: LitStr "Startup"
  loc_7494A0: LitStr "CEM44"
  loc_7494A3: ImpAdCallI2 GetSetting(, , , )
  loc_7494A8: FMemStStr arg_8(7520)
  loc_7494AE: LitVarStr var_A0, vbNullString
  loc_7494B3: PopAdLdVar
  loc_7494B4: LitStr "Mes"
  loc_7494B7: LitStr "Startup"
  loc_7494BA: LitStr "CEM44"
  loc_7494BD: ImpAdCallI2 GetSetting(, , , )
  loc_7494C2: FMemStStr arg_8(7524)
  loc_7494C8: FLdRfVar var_1D4
  loc_7494CB: LitVar_Missing var_1D0
  loc_7494CE: LitVar_Missing var_1B0
  loc_7494D1: LitVar_Missing var_190
  loc_7494D4: LitVar_Missing var_170
  loc_7494D7: LitVar_Missing var_150
  loc_7494DA: LitVar_Missing var_130
  loc_7494DD: LitVar_Missing var_110
  loc_7494E0: LitVar_Missing var_F0
  loc_7494E3: LitVar_Missing var_D0
  loc_7494E6: LitVar_Missing var_B0
  loc_7494E9: LitStr "Automatica"
  loc_7494EC: FStStrCopy var_90
  loc_7494EF: FLdRfVar var_90
  loc_7494F2: LitI4 &H10F
  loc_7494F7: PopTmpLdAdStr var_8C
  loc_7494FA: LitI2_Byte &H21
  loc_7494FC: PopTmpLdAd2 var_86
  loc_7494FF: ImpAdLdRf MemVar_74C7D0
  loc_749502: NewIfNullPr clsMsg
  loc_749505: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74950A: ILdRf var_1D4
  loc_74950D: LitI4 0
  loc_749512: FMemLdRf unk_418E79
  loc_749517: Ary1LdPr
  loc_749518: MemStStrCopy
  loc_74951C: FFreeStr var_90 = ""
  loc_749523: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74953A: LitI2_Byte &HFF
  loc_74953C: LitI4 0
  loc_749541: FMemLdRf unk_418E79
  loc_749546: Ary1LdPr
  loc_749547: MemStI2 global_6
  loc_74954A: LitI2_Byte 0
  loc_74954C: LitI4 0
  loc_749551: FMemLdRf unk_418E79
  loc_749556: Ary1LdPr
  loc_749557: MemStI2 global_4
  loc_74955A: FLdRfVar var_1D4
  loc_74955D: LitVar_Missing var_1D0
  loc_749560: LitVar_Missing var_1B0
  loc_749563: LitVar_Missing var_190
  loc_749566: LitVar_Missing var_170
  loc_749569: LitVar_Missing var_150
  loc_74956C: LitVar_Missing var_130
  loc_74956F: LitVar_Missing var_110
  loc_749572: LitVar_Missing var_F0
  loc_749575: LitVar_Missing var_D0
  loc_749578: LitVar_Missing var_B0
  loc_74957B: LitStr "Semi-Automatica"
  loc_74957E: FStStrCopy var_90
  loc_749581: FLdRfVar var_90
  loc_749584: LitI4 &H110
  loc_749589: PopTmpLdAdStr var_8C
  loc_74958C: LitI2_Byte &H21
  loc_74958E: PopTmpLdAd2 var_86
  loc_749591: ImpAdLdRf MemVar_74C7D0
  loc_749594: NewIfNullPr clsMsg
  loc_749597: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74959C: ILdRf var_1D4
  loc_74959F: LitI4 1
  loc_7495A4: FMemLdRf unk_418E79
  loc_7495A9: Ary1LdPr
  loc_7495AA: MemStStrCopy
  loc_7495AE: FFreeStr var_90 = ""
  loc_7495B5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7495CC: LitI2_Byte &HFF
  loc_7495CE: LitI4 1
  loc_7495D3: FMemLdRf unk_418E79
  loc_7495D8: Ary1LdPr
  loc_7495D9: MemStI2 global_6
  loc_7495DC: LitI2_Byte 1
  loc_7495DE: LitI4 1
  loc_7495E3: FMemLdRf unk_418E79
  loc_7495E8: Ary1LdPr
  loc_7495E9: MemStI2 global_4
  loc_7495EC: FLdRfVar var_1D4
  loc_7495EF: LitVar_Missing var_1D0
  loc_7495F2: LitVar_Missing var_1B0
  loc_7495F5: LitVar_Missing var_190
  loc_7495F8: LitVar_Missing var_170
  loc_7495FB: LitVar_Missing var_150
  loc_7495FE: LitVar_Missing var_130
  loc_749601: LitVar_Missing var_110
  loc_749604: LitVar_Missing var_F0
  loc_749607: LitVar_Missing var_D0
  loc_74960A: LitVar_Missing var_B0
  loc_74960D: LitStr "Operador"
  loc_749610: FStStrCopy var_90
  loc_749613: FLdRfVar var_90
  loc_749616: LitI4 &H111
  loc_74961B: PopTmpLdAdStr var_8C
  loc_74961E: LitI2_Byte &H21
  loc_749620: PopTmpLdAd2 var_86
  loc_749623: ImpAdLdRf MemVar_74C7D0
  loc_749626: NewIfNullPr clsMsg
  loc_749629: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_74962E: ILdRf var_1D4
  loc_749631: LitI4 2
  loc_749636: FMemLdRf unk_418E79
  loc_74963B: Ary1LdPr
  loc_74963C: MemStStrCopy
  loc_749640: FFreeStr var_90 = ""
  loc_749647: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_74965E: LitI2_Byte &HFF
  loc_749660: LitI4 2
  loc_749665: FMemLdRf unk_418E79
  loc_74966A: Ary1LdPr
  loc_74966B: MemStI2 global_6
  loc_74966E: LitI2_Byte 2
  loc_749670: LitI4 2
  loc_749675: FMemLdRf unk_418E79
  loc_74967A: Ary1LdPr
  loc_74967B: MemStI2 global_4
  loc_74967E: FLdRfVar var_1D4
  loc_749681: LitVar_Missing var_1D0
  loc_749684: LitVar_Missing var_1B0
  loc_749687: LitVar_Missing var_190
  loc_74968A: LitVar_Missing var_170
  loc_74968D: LitVar_Missing var_150
  loc_749690: LitVar_Missing var_130
  loc_749693: LitVar_Missing var_110
  loc_749696: LitVar_Missing var_F0
  loc_749699: LitVar_Missing var_D0
  loc_74969C: LitVar_Missing var_B0
  loc_74969F: LitStr "Auto-Post"
  loc_7496A2: FStStrCopy var_90
  loc_7496A5: FLdRfVar var_90
  loc_7496A8: LitI4 &H112
  loc_7496AD: PopTmpLdAdStr var_8C
  loc_7496B0: LitI2_Byte &H21
  loc_7496B2: PopTmpLdAd2 var_86
  loc_7496B5: ImpAdLdRf MemVar_74C7D0
  loc_7496B8: NewIfNullPr clsMsg
  loc_7496BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7496C0: ILdRf var_1D4
  loc_7496C3: LitI4 3
  loc_7496C8: FMemLdRf unk_418E79
  loc_7496CD: Ary1LdPr
  loc_7496CE: MemStStrCopy
  loc_7496D2: FFreeStr var_90 = ""
  loc_7496D9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_7496F0: LitI2_Byte &HFF
  loc_7496F2: LitI4 3
  loc_7496F7: FMemLdRf unk_418E79
  loc_7496FC: Ary1LdPr
  loc_7496FD: MemStI2 global_6
  loc_749700: LitI2_Byte 3
  loc_749702: LitI4 3
  loc_749707: FMemLdRf unk_418E79
  loc_74970C: Ary1LdPr
  loc_74970D: MemStI2 global_4
  loc_749710: FLdRfVar var_1D4
  loc_749713: LitVar_Missing var_1D0
  loc_749716: LitVar_Missing var_1B0
  loc_749719: LitVar_Missing var_190
  loc_74971C: LitVar_Missing var_170
  loc_74971F: LitVar_Missing var_150
  loc_749722: LitVar_Missing var_130
  loc_749725: LitVar_Missing var_110
  loc_749728: LitVar_Missing var_F0
  loc_74972B: LitVar_Missing var_D0
  loc_74972E: LitVar_Missing var_B0
  loc_749731: LitStr "Dispositivo Externo"
  loc_749734: FStStrCopy var_90
  loc_749737: FLdRfVar var_90
  loc_74973A: LitI4 &H113
  loc_74973F: PopTmpLdAdStr var_8C
  loc_749742: LitI2_Byte &H21
  loc_749744: PopTmpLdAd2 var_86
  loc_749747: ImpAdLdRf MemVar_74C7D0
  loc_74974A: NewIfNullPr clsMsg
  loc_74974D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_749752: ILdRf var_1D4
  loc_749755: LitI4 4
  loc_74975A: FMemLdRf unk_418E79
  loc_74975F: Ary1LdPr
  loc_749760: MemStStrCopy
  loc_749764: FFreeStr var_90 = ""
  loc_74976B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_749782: LitI2_Byte 0
  loc_749784: LitI4 4
  loc_749789: FMemLdRf unk_418E79
  loc_74978E: Ary1LdPr
  loc_74978F: MemStI2 global_6
  loc_749792: LitI2_Byte &HB
  loc_749794: LitI4 4
  loc_749799: FMemLdRf unk_418E79
  loc_74979E: Ary1LdPr
  loc_74979F: MemStI2 global_8
  loc_7497A2: LitI2_Byte 4
  loc_7497A4: LitI4 4
  loc_7497A9: FMemLdRf unk_418E79
  loc_7497AE: Ary1LdPr
  loc_7497AF: MemStI2 global_4
  loc_7497B2: FLdRfVar var_1D4
  loc_7497B5: LitVar_Missing var_1D0
  loc_7497B8: LitVar_Missing var_1B0
  loc_7497BB: LitVar_Missing var_190
  loc_7497BE: LitVar_Missing var_170
  loc_7497C1: LitVar_Missing var_150
  loc_7497C4: LitVar_Missing var_130
  loc_7497C7: LitVar_Missing var_110
  loc_7497CA: LitVar_Missing var_F0
  loc_7497CD: LitVar_Missing var_D0
  loc_7497D0: LitVar_Missing var_B0
  loc_7497D3: LitStr "Express"
  loc_7497D6: FStStrCopy var_90
  loc_7497D9: FLdRfVar var_90
  loc_7497DC: LitI4 &H114
  loc_7497E1: PopTmpLdAdStr var_8C
  loc_7497E4: LitI2_Byte &H21
  loc_7497E6: PopTmpLdAd2 var_86
  loc_7497E9: ImpAdLdRf MemVar_74C7D0
  loc_7497EC: NewIfNullPr clsMsg
  loc_7497EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7497F4: ILdRf var_1D4
  loc_7497F7: LitI4 5
  loc_7497FC: FMemLdRf unk_418E79
  loc_749801: Ary1LdPr
  loc_749802: MemStStrCopy
  loc_749806: FFreeStr var_90 = ""
  loc_74980D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_749824: LitI2_Byte 0
  loc_749826: LitI4 5
  loc_74982B: FMemLdRf unk_418E79
  loc_749830: Ary1LdPr
  loc_749831: MemStI2 global_6
  loc_749834: LitI2_Byte &HE
  loc_749836: LitI4 5
  loc_74983B: FMemLdRf unk_418E79
  loc_749840: Ary1LdPr
  loc_749841: MemStI2 global_8
  loc_749844: LitI2_Byte 5
  loc_749846: LitI4 5
  loc_74984B: FMemLdRf unk_418E79
  loc_749850: Ary1LdPr
  loc_749851: MemStI2 global_4
  loc_749854: ExitProc
End Function

Private Function Proc_167_7_5C8524() '5C8524
  'Data Table: 43B664
  loc_5C8520: ExitProc
  loc_5C8521: FStI2 var_A03
End Function

Private Function Proc_167_8_60CBC8() '60CBC8
  'Data Table: 43B664
  loc_60CAC0: FLdUI1
  loc_60CAC4: CI4UI1
  loc_60CAC5: FMemLdRf unk_43B66D
  loc_60CACA: Ary1LdUI1
  loc_60CACC: FStUI1 var_8A
  loc_60CAD0: FLdUI1
  loc_60CAD4: LitI2_Byte 1
  loc_60CAD6: CUI1I2
  loc_60CAD8: EqI2
  loc_60CAD9: BranchF loc_60CAE7
  loc_60CADC: LitI2_Byte 1
  loc_60CADE: CUI1I2
  loc_60CAE0: FStUI1 var_88
  loc_60CAE4: Branch loc_60CBBE
  loc_60CAE7: FLdUI1
  loc_60CAEB: LitI2_Byte 2
  loc_60CAED: CUI1I2
  loc_60CAEF: EqI2
  loc_60CAF0: BranchF loc_60CAFE
  loc_60CAF3: LitI2_Byte 1
  loc_60CAF5: CUI1I2
  loc_60CAF7: FStUI1 var_88
  loc_60CAFB: Branch loc_60CBBE
  loc_60CAFE: FLdUI1
  loc_60CB02: LitI2_Byte 3
  loc_60CB04: CUI1I2
  loc_60CB06: EqI2
  loc_60CB07: BranchF loc_60CB15
  loc_60CB0A: LitI2_Byte 1
  loc_60CB0C: CUI1I2
  loc_60CB0E: FStUI1 var_88
  loc_60CB12: Branch loc_60CBBE
  loc_60CB15: FLdUI1
  loc_60CB19: LitI2_Byte 4
  loc_60CB1B: CUI1I2
  loc_60CB1D: EqI2
  loc_60CB1E: BranchF loc_60CB2C
  loc_60CB21: LitI2_Byte 2
  loc_60CB23: CUI1I2
  loc_60CB25: FStUI1 var_88
  loc_60CB29: Branch loc_60CBBE
  loc_60CB2C: FLdUI1
  loc_60CB30: LitI2_Byte 5
  loc_60CB32: CUI1I2
  loc_60CB34: EqI2
  loc_60CB35: BranchF loc_60CB43
  loc_60CB38: LitI2_Byte 3
  loc_60CB3A: CUI1I2
  loc_60CB3C: FStUI1 var_88
  loc_60CB40: Branch loc_60CBBE
  loc_60CB43: FLdUI1
  loc_60CB47: LitI2_Byte 6
  loc_60CB49: CUI1I2
  loc_60CB4B: EqI2
  loc_60CB4C: BranchF loc_60CB5A
  loc_60CB4F: LitI2_Byte 4
  loc_60CB51: CUI1I2
  loc_60CB53: FStUI1 var_88
  loc_60CB57: Branch loc_60CBBE
  loc_60CB5A: FLdUI1
  loc_60CB5E: LitI2_Byte 7
  loc_60CB60: CUI1I2
  loc_60CB62: EqI2
  loc_60CB63: BranchF loc_60CB71
  loc_60CB66: LitI2_Byte 3
  loc_60CB68: CUI1I2
  loc_60CB6A: FStUI1 var_88
  loc_60CB6E: Branch loc_60CBBE
  loc_60CB71: FLdUI1
  loc_60CB75: LitI2_Byte 8
  loc_60CB77: CUI1I2
  loc_60CB79: EqI2
  loc_60CB7A: BranchF loc_60CB88
  loc_60CB7D: LitI2_Byte 3
  loc_60CB7F: CUI1I2
  loc_60CB81: FStUI1 var_88
  loc_60CB85: Branch loc_60CBBE
  loc_60CB88: FLdUI1
  loc_60CB8C: LitI2_Byte 9
  loc_60CB8E: CUI1I2
  loc_60CB90: EqI2
  loc_60CB91: BranchF loc_60CB9F
  loc_60CB94: LitI2_Byte 4
  loc_60CB96: CUI1I2
  loc_60CB98: FStUI1 var_88
  loc_60CB9C: Branch loc_60CBBE
  loc_60CB9F: FLdUI1
  loc_60CBA3: LitI2_Byte &HA
  loc_60CBA5: CUI1I2
  loc_60CBA7: EqI2
  loc_60CBA8: BranchF loc_60CBB6
  loc_60CBAB: LitI2_Byte 4
  loc_60CBAD: CUI1I2
  loc_60CBAF: FStUI1 var_88
  loc_60CBB3: Branch loc_60CBBE
  loc_60CBB6: LitI2_Byte 0
  loc_60CBB8: CUI1I2
  loc_60CBBA: FStUI1 var_88
  loc_60CBBE: FLdUI1
  loc_60CBC2: FStUI1 var_86
  loc_60CBC6: ExitProcUI1
End Function

Private Function Proc_167_9_5F16B0() '5F16B0
  'Data Table: 402FF4
  loc_5F161C: LitI2_Byte 0
  loc_5F161E: FStI2 var_86
  loc_5F1621: FLdRfVar var_A4
  loc_5F1624: FLdRfVar var_8C
  loc_5F1627: FLdRfVar var_94
  loc_5F162A: ImpAdLdRf MemVar_74C760
  loc_5F162D: NewIfNullPr Formx
  loc_5F1630: from_stack_1v = Formx.global_4589716Get()
  loc_5F1635: FLdPr var_94
  loc_5F1638:  = Forms
  loc_5F163D: FLdRfVar var_A4
  loc_5F1640: NotVar var_B4
  loc_5F1644: CBoolVarNull
  loc_5F1646: FFree1Ad var_94
  loc_5F1649: FFree1Var var_A4 = ""
  loc_5F164C: BranchF loc_5F1650
  loc_5F164F: ExitProcI2
  loc_5F1650: ILdRf var_8C
  loc_5F1653: FnLenStr
  loc_5F1654: ImpAdLdUI1
  loc_5F1658: CI4UI1
  loc_5F1659: LtI4
  loc_5F165A: BranchF loc_5F165E
  loc_5F165D: ExitProcI2
  loc_5F165E: LitI2_Byte 1
  loc_5F1660: CUI1I2
  loc_5F1662: FLdRfVar var_8E
  loc_5F1665: ImpAdLdUI1
  loc_5F1669: ForUI1 var_B8
  loc_5F166F: LitVarI2 var_A4, 1
  loc_5F1674: FLdUI1
  loc_5F1678: CI4UI1
  loc_5F1679: FLdRfVar var_8C
  loc_5F167C: CVarRef
  loc_5F1681: FLdRfVar var_B4
  loc_5F1684: ImpAdCallFPR4  = Mid(, , )
  loc_5F1689: FLdRfVar var_B4
  loc_5F168C: LitVarStr var_E8, "0"
  loc_5F1691: HardType
  loc_5F1692: NeVarBool
  loc_5F1694: FFreeVar var_A4 = ""
  loc_5F169B: BranchF loc_5F16A6
  loc_5F169E: LitI2_Byte &HFF
  loc_5F16A0: FStI2 var_86
  loc_5F16A3: Branch loc_5F16AF
  loc_5F16A6: FLdRfVar var_8E
  loc_5F16A9: NextUI1
  loc_5F16AF: ExitProcI2
End Function

Private Function Proc_167_10_6B89EC() '6B89EC
  'Data Table: 409184
  loc_6B8210: OnErrorGoto loc_6B899E
  loc_6B8215: LitI2_Byte 0
  loc_6B8217: PopTmpLdAd2 var_90
  loc_6B821A: ImpAdCallI2 Proc_6_5_623BB4()
  loc_6B821F: BranchF loc_6B8225
  loc_6B8224: ExitProc
  loc_6B8229: FLdRfVar var_98
  loc_6B822C: FLdRfVar var_94
  loc_6B822F: ImpAdLdRf MemVar_7520D4
  loc_6B8232: NewIfNullPr Global
  loc_6B8235:  = Global.App
  loc_6B823A: FLdPr var_94
  loc_6B823D:  = App.Path
  loc_6B8242: ILdRf var_98
  loc_6B8245: LitStr "\conectividad.bin"
  loc_6B8248: ConcatStr
  loc_6B8249: PopTmpLdAdStr
  loc_6B824D: LitStr "DIA"
  loc_6B8250: FStStrCopy var_A0
  loc_6B8253: FLdRfVar var_A0
  loc_6B8256: LitStr "Totalizadores"
  loc_6B8259: FStStrCopy var_9C
  loc_6B825C: FLdRfVar var_9C
  loc_6B825F: ImpAdCallI2 Proc_94_4_605BC0(, , )
  loc_6B8264: ImpAdStStr MemVar_74BF04
  loc_6B8268: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_6B8273: FFree1Ad var_94
  loc_6B8278: FLdRfVar var_98
  loc_6B827B: FLdRfVar var_94
  loc_6B827E: ImpAdLdRf MemVar_7520D4
  loc_6B8281: NewIfNullPr Global
  loc_6B8284:  = Global.App
  loc_6B8289: FLdPr var_94
  loc_6B828C:  = App.Path
  loc_6B8291: ILdRf var_98
  loc_6B8294: LitStr "\conectividad.bin"
  loc_6B8297: ConcatStr
  loc_6B8298: PopTmpLdAdStr
  loc_6B829C: LitStr "HORA"
  loc_6B829F: FStStrCopy var_A0
  loc_6B82A2: FLdRfVar var_A0
  loc_6B82A5: LitStr "Totalizadores"
  loc_6B82A8: FStStrCopy var_9C
  loc_6B82AB: FLdRfVar var_9C
  loc_6B82AE: ImpAdCallI2 Proc_94_4_605BC0(, , )
  loc_6B82B3: ImpAdStStr MemVar_74BF08
  loc_6B82B7: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_6B82C2: FFree1Ad var_94
  loc_6B82C7: ImpAdLdRf MemVar_74BF04
  loc_6B82CA: ImpAdCallFPR4 Proc_94_5_63661C()
  loc_6B82CF: CR8R8
  loc_6B82D0: LitI2_Byte 0
  loc_6B82D2: CR8I2
  loc_6B82D3: EqR4
  loc_6B82D4: BranchF loc_6B82DA
  loc_6B82D9: ExitProc
  loc_6B82DC: FLdRfVar var_B4
  loc_6B82DF: ImpAdCallFPR4  = Date
  loc_6B82E4: FLdRfVar var_B4
  loc_6B82E7: FLdRfVar var_C4
  loc_6B82EA: ImpAdCallFPR4  = Day()
  loc_6B82EF: FLdRfVar var_C4
  loc_6B82F2: ImpAdLdI4 MemVar_74BF04
  loc_6B82F5: CVarStr var_D4
  loc_6B82F8: HardType
  loc_6B82F9: NeVarBool
  loc_6B82FB: FFreeVar var_B4 = ""
  loc_6B8302: BranchF loc_6B830E
  loc_6B8307: LitI2_Byte 0
  loc_6B8309: FMemStI2 arg_8(2)
  loc_6B8312: FLdRfVar var_B4
  loc_6B8315: ImpAdCallFPR4  = Date
  loc_6B831A: FLdRfVar var_B4
  loc_6B831D: FLdRfVar var_C4
  loc_6B8320: ImpAdCallFPR4  = Month()
  loc_6B8325: FLdRfVar var_C4
  loc_6B8328: LitVarI2 var_E4, 2
  loc_6B832D: LitI4 2
  loc_6B8332: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_6B8337: CVarRef
  loc_6B833C: FLdRfVar var_104
  loc_6B833F: ImpAdCallFPR4  = Mid(, , )
  loc_6B8344: FLdRfVar var_104
  loc_6B8347: CStrVarVal var_98
  loc_6B834B: ImpAdCallFPR4 push Val()
  loc_6B8350: CVarR8
  loc_6B8354: HardType
  loc_6B8355: NeVarBool
  loc_6B8357: FFree1Str var_98
  loc_6B835A: FFreeVar var_B4 = "": var_E4 = "": var_104 = ""
  loc_6B8365: BranchF loc_6B846D
  loc_6B836A: FLdRfVar var_B4
  loc_6B836D: ImpAdCallFPR4  = Date
  loc_6B8372: FLdRfVar var_B4
  loc_6B8375: FLdRfVar var_C4
  loc_6B8378: ImpAdCallFPR4  = Month()
  loc_6B837D: FLdRfVar var_C4
  loc_6B8380: FnCStrVar
  loc_6B8382: CVarStr var_E4
  loc_6B8385: FLdRfVar var_104
  loc_6B8388: ImpAdCallFPR4  = Trim()
  loc_6B838D: FLdRfVar var_104
  loc_6B8390: FnLenVar var_124
  loc_6B8394: LitVarI2 var_D4, 1
  loc_6B8399: HardType
  loc_6B839A: EqVarBool
  loc_6B839C: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = ""
  loc_6B83A9: BranchF loc_6B8407
  loc_6B83AE: LitVarStr var_D4, "0"
  loc_6B83B3: FLdRfVar var_B4
  loc_6B83B6: ImpAdCallFPR4  = Date
  loc_6B83BB: FLdRfVar var_B4
  loc_6B83BE: FLdRfVar var_C4
  loc_6B83C1: ImpAdCallFPR4  = Month()
  loc_6B83C6: FLdRfVar var_C4
  loc_6B83C9: FnCStrVar
  loc_6B83CB: CVarStr var_E4
  loc_6B83CE: FLdRfVar var_104
  loc_6B83D1: ImpAdCallFPR4  = Trim()
  loc_6B83D6: FLdRfVar var_104
  loc_6B83D9: ConcatVar var_124
  loc_6B83DD: LitVarStr var_F4, "0"
  loc_6B83E2: ConcatVar var_134
  loc_6B83E6: CStrVarTmp
  loc_6B83E7: PopTmpLdAdStr
  loc_6B83EB: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B83F0: FFree1Str var_98
  loc_6B83F3: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_124 = ""
  loc_6B8404: Branch loc_6B8456
  loc_6B840B: FLdRfVar var_B4
  loc_6B840E: ImpAdCallFPR4  = Date
  loc_6B8413: FLdRfVar var_B4
  loc_6B8416: FLdRfVar var_C4
  loc_6B8419: ImpAdCallFPR4  = Month()
  loc_6B841E: FLdRfVar var_C4
  loc_6B8421: FnCStrVar
  loc_6B8423: CVarStr var_E4
  loc_6B8426: FLdRfVar var_104
  loc_6B8429: ImpAdCallFPR4  = Trim()
  loc_6B842E: FLdRfVar var_104
  loc_6B8431: LitVarStr var_D4, "0"
  loc_6B8436: ConcatVar var_124
  loc_6B843A: CStrVarTmp
  loc_6B843B: PopTmpLdAdStr
  loc_6B843F: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B8444: FFree1Str var_98
  loc_6B8447: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = "": var_104 = ""
  loc_6B845A: LitI4 0
  loc_6B845F: FStStrCopy var_98
  loc_6B8462: FLdRfVar var_98
  loc_6B8465: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B846A: FFree1Str var_98
  loc_6B8471: FLdRfVar var_B4
  loc_6B8474: ImpAdCallFPR4  = Date
  loc_6B8479: FLdRfVar var_B4
  loc_6B847C: FLdRfVar var_C4
  loc_6B847F: ImpAdCallFPR4  = Month()
  loc_6B8484: FLdRfVar var_C4
  loc_6B8487: FStVar var_144
  loc_6B848B: FFree1Var var_B4 = ""
  loc_6B8490: FLdRfVar var_144
  loc_6B8493: LitVarI2 var_D4, 1
  loc_6B8498: HardType
  loc_6B8499: EqVarBool
  loc_6B849B: BranchT loc_6B84F2
  loc_6B849E: FLdRfVar var_144
  loc_6B84A1: LitVarI2 var_F4, 4
  loc_6B84A6: HardType
  loc_6B84A7: EqVarBool
  loc_6B84A9: BranchT loc_6B84F2
  loc_6B84AC: FLdRfVar var_144
  loc_6B84AF: LitVarI2 var_114, 6
  loc_6B84B4: HardType
  loc_6B84B5: EqVarBool
  loc_6B84B7: BranchT loc_6B84F2
  loc_6B84BA: FLdRfVar var_144
  loc_6B84BD: LitVarI2 var_154, 7
  loc_6B84C2: HardType
  loc_6B84C3: EqVarBool
  loc_6B84C5: BranchT loc_6B84F2
  loc_6B84C8: FLdRfVar var_144
  loc_6B84CB: LitVarI2 var_164, 9
  loc_6B84D0: HardType
  loc_6B84D1: EqVarBool
  loc_6B84D3: BranchT loc_6B84F2
  loc_6B84D6: FLdRfVar var_144
  loc_6B84D9: LitVarI2 var_174, 11
  loc_6B84DE: HardType
  loc_6B84DF: EqVarBool
  loc_6B84E1: BranchT loc_6B84F2
  loc_6B84E4: FLdRfVar var_144
  loc_6B84E7: LitVarI2 var_184, 12
  loc_6B84EC: HardType
  loc_6B84ED: EqVarBool
  loc_6B84EF: BranchF loc_6B851E
  loc_6B84F4: LitStr "30"
  loc_6B84F7: ImpAdCallFPR4 push Val()
  loc_6B84FC: FStFPR8 var_18C
  loc_6B84FF: ImpAdLdI4 MemVar_74BF04
  loc_6B8502: ImpAdCallFPR4 push Val()
  loc_6B8507: CR8R8
  loc_6B8508: FLdFPR8 var_18C
  loc_6B850B: CR8R8
  loc_6B850C: GtR4
  loc_6B850D: BranchF loc_6B8519
  loc_6B8512: LitStr "30"
  loc_6B8515: ImpAdStStrCopy MemVar_74BF04
  loc_6B851B: Branch loc_6B85BD
  loc_6B8520: FLdRfVar var_144
  loc_6B8523: LitVarI2 var_D4, 2
  loc_6B8528: HardType
  loc_6B8529: EqVarBool
  loc_6B852B: BranchF loc_6B855A
  loc_6B8530: LitStr "28"
  loc_6B8533: ImpAdCallFPR4 push Val()
  loc_6B8538: FStFPR8 var_18C
  loc_6B853B: ImpAdLdI4 MemVar_74BF04
  loc_6B853E: ImpAdCallFPR4 push Val()
  loc_6B8543: CR8R8
  loc_6B8544: FLdFPR8 var_18C
  loc_6B8547: CR8R8
  loc_6B8548: GtR4
  loc_6B8549: BranchF loc_6B8555
  loc_6B854E: LitStr "28"
  loc_6B8551: ImpAdStStrCopy MemVar_74BF04
  loc_6B8557: Branch loc_6B85BD
  loc_6B855C: FLdRfVar var_144
  loc_6B855F: LitVarI2 var_D4, 3
  loc_6B8564: HardType
  loc_6B8565: EqVarBool
  loc_6B8567: BranchT loc_6B8594
  loc_6B856A: FLdRfVar var_144
  loc_6B856D: LitVarI2 var_F4, 5
  loc_6B8572: HardType
  loc_6B8573: EqVarBool
  loc_6B8575: BranchT loc_6B8594
  loc_6B8578: FLdRfVar var_144
  loc_6B857B: LitVarI2 var_114, 8
  loc_6B8580: HardType
  loc_6B8581: EqVarBool
  loc_6B8583: BranchT loc_6B8594
  loc_6B8586: FLdRfVar var_144
  loc_6B8589: LitVarI2 var_154, 10
  loc_6B858E: HardType
  loc_6B858F: EqVarBool
  loc_6B8591: BranchF loc_6B85BD
  loc_6B8596: LitStr "31"
  loc_6B8599: ImpAdCallFPR4 push Val()
  loc_6B859E: FStFPR8 var_18C
  loc_6B85A1: ImpAdLdI4 MemVar_74BF04
  loc_6B85A4: ImpAdCallFPR4 push Val()
  loc_6B85A9: CR8R8
  loc_6B85AA: FLdFPR8 var_18C
  loc_6B85AD: CR8R8
  loc_6B85AE: GtR4
  loc_6B85AF: BranchF loc_6B85BB
  loc_6B85B4: LitStr "31"
  loc_6B85B7: ImpAdStStrCopy MemVar_74BF04
  loc_6B85C1: ImpAdLdI4 MemVar_74BF04
  loc_6B85C4: CDateStr
  loc_6B85C6: CVarDate var_D4
  loc_6B85CA: HardType
  loc_6B85CB: FLdRfVar var_B4
  loc_6B85CE: ImpAdCallFPR4  = Date
  loc_6B85D3: FLdRfVar var_B4
  loc_6B85D6: FLdRfVar var_C4
  loc_6B85D9: ImpAdCallFPR4  = Day()
  loc_6B85DE: FLdRfVar var_C4
  loc_6B85E1: EqVar var_E4
  loc_6B85E5: LitVarI2 var_104, 1
  loc_6B85EA: LitI4 4
  loc_6B85EF: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_6B85F4: CVarRef
  loc_6B85F9: FLdRfVar var_124
  loc_6B85FC: ImpAdCallFPR4  = Mid(, , )
  loc_6B8601: FLdRfVar var_124
  loc_6B8604: CStrVarVal var_98
  loc_6B8608: ImpAdCallFPR4 push Val()
  loc_6B860D: CR8R8
  loc_6B860E: LitI2_Byte 0
  loc_6B8610: CR8I2
  loc_6B8611: EqR4
  loc_6B8612: CVarBoolI2 var_164
  loc_6B8616: ImpAdLdI4 MemVar_74BF04
  loc_6B8619: CDateStr
  loc_6B861B: CVarDate var_154
  loc_6B861F: HardType
  loc_6B8620: FLdRfVar var_134
  loc_6B8623: ImpAdCallFPR4  = Date
  loc_6B8628: FLdRfVar var_134
  loc_6B862B: FLdRfVar var_19C
  loc_6B862E: ImpAdCallFPR4  = Day()
  loc_6B8633: FLdRfVar var_19C
  loc_6B8636: LeVar var_1AC
  loc_6B863A: AndVar var_1BC
  loc_6B863E: OrVar var_1CC
  loc_6B8642: CBoolVarNull
  loc_6B8644: FFree1Str var_98
  loc_6B8647: FFreeVar var_B4 = "": var_C4 = "": var_104 = "": var_124 = "": var_134 = "": var_19C = ""
  loc_6B8658: BranchF loc_6B8999
  loc_6B865D: FLdRfVar var_B4
  loc_6B8660: ImpAdCallFPR4  = Time
  loc_6B8665: FLdRfVar var_E4
  loc_6B8668: ImpAdCallFPR4  = Time
  loc_6B866D: FLdRfVar var_124
  loc_6B8670: ImpAdCallFPR4  = Time
  loc_6B8675: ImpAdLdI4 MemVar_74BF08
  loc_6B8678: CDateStr
  loc_6B867A: FLdRfVar var_B4
  loc_6B867D: LitVarDate
  loc_6B8689: SubVar var_C4
  loc_6B868D: FnCDateVar
  loc_6B868F: GeR8
  loc_6B8690: ImpAdLdI4 MemVar_74BF08
  loc_6B8693: CDateStr
  loc_6B8695: FLdRfVar var_E4
  loc_6B8698: LitVarDate
  loc_6B86A4: AddVar var_104
  loc_6B86A8: FnCDateVar
  loc_6B86AA: LeR8
  loc_6B86AB: AndI4
  loc_6B86AC: CVarBoolI2 var_2AC
  loc_6B86B0: ImpAdLdI4 MemVar_74BF08
  loc_6B86B3: CDateStr
  loc_6B86B5: FLdRfVar var_124
  loc_6B86B8: LitVarDate
  loc_6B86C4: SubVar var_134
  loc_6B86C8: FnCDateVar
  loc_6B86CA: LtR8
  loc_6B86CB: CVarBoolI2 var_164
  loc_6B86CF: ImpAdLdI4 MemVar_74BF04
  loc_6B86D2: CDateStr
  loc_6B86D4: CVarDate var_154
  loc_6B86D8: HardType
  loc_6B86D9: FLdRfVar var_19C
  loc_6B86DC: ImpAdCallFPR4  = Date
  loc_6B86E1: FLdRfVar var_19C
  loc_6B86E4: FLdRfVar var_1AC
  loc_6B86E7: ImpAdCallFPR4  = Day()
  loc_6B86EC: FLdRfVar var_1AC
  loc_6B86EF: LeVar var_1BC
  loc_6B86F3: AndVar var_1CC
  loc_6B86F7: FLdRfVar var_1DC
  loc_6B86FA: ImpAdCallFPR4  = Date
  loc_6B86FF: FLdRfVar var_1DC
  loc_6B8702: FLdRfVar var_1EC
  loc_6B8705: ImpAdCallFPR4  = Month()
  loc_6B870A: FLdRfVar var_1EC
  loc_6B870D: LitVarI2 var_1FC, 2
  loc_6B8712: LitI4 2
  loc_6B8717: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_6B871C: CVarRef
  loc_6B8721: FLdRfVar var_20C
  loc_6B8724: ImpAdCallFPR4  = Mid(, , )
  loc_6B8729: FLdRfVar var_20C
  loc_6B872C: CStrVarVal var_98
  loc_6B8730: ImpAdCallFPR4 push Val()
  loc_6B8735: CVarR8
  loc_6B8739: HardType
  loc_6B873A: EqVar var_22C
  loc_6B873E: AndVar var_23C
  loc_6B8742: LitVarI2 var_26C, 1
  loc_6B8747: LitI4 4
  loc_6B874C: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_6B8751: CVarRef
  loc_6B8756: FLdRfVar var_27C
  loc_6B8759: ImpAdCallFPR4  = Mid(, , )
  loc_6B875E: FLdRfVar var_27C
  loc_6B8761: CStrVarVal var_9C
  loc_6B8765: ImpAdCallFPR4 push Val()
  loc_6B876A: CR8R8
  loc_6B876B: LitI2_Byte 0
  loc_6B876D: CR8I2
  loc_6B876E: EqR4
  loc_6B876F: CVarBoolI2 var_28C
  loc_6B8773: AndVar var_29C
  loc_6B8777: OrVar var_2BC
  loc_6B877B: CBoolVarNull
  loc_6B877D: FFreeStr var_98 = ""
  loc_6B8784: FFreeVar var_B4 = "": var_E4 = "": var_104 = "": var_104 = "": var_124 = "": var_19C = "": var_1AC = "": var_164 = "": var_1DC = "": var_1FC = "": var_20C = "": var_1EC = "": var_26C = "": var_27C = "": var_28C = ""
  loc_6B87A7: BranchF loc_6B8997
  loc_6B87AC: LitI4 &HD
  loc_6B87B1: FLdRfVar var_B4
  loc_6B87B4: ImpAdCallFPR4  = Chr()
  loc_6B87B9: LitI4 &HD
  loc_6B87BE: FLdRfVar var_E4
  loc_6B87C1: ImpAdCallFPR4  = Chr()
  loc_6B87C6: LitVar_Missing var_1DC
  loc_6B87C9: LitVar_Missing var_1CC
  loc_6B87CC: LitVarStr var_154, "Solicitud de ingreso de existencias volumétricas de productos Consignados"
  loc_6B87D1: FStVarCopyObj var_1BC
  loc_6B87D4: FLdRfVar var_1BC
  loc_6B87D7: LitI4 &H44
  loc_6B87DC: LitStr "Se recuerda que de acuerdo a lo estipulado en la Descripción General"
  loc_6B87DF: LitStr " de la operatoria y  Obligaciones Generales del Consignatario de vuestra"
  loc_6B87E2: ConcatStr
  loc_6B87E3: FStStrNoPop var_98
  loc_6B87E6: LitStr " carta oferta, es obligatorio el ingreso de las existencias volumétricas"
  loc_6B87E9: ConcatStr
  loc_6B87EA: FStStrNoPop var_9C
  loc_6B87ED: LitStr " de cada tanque a la fecha del Cierre de mes de Consignación en el"
  loc_6B87F0: ConcatStr
  loc_6B87F1: CVarStr var_134
  loc_6B87F4: LitVarStr var_D4, " equipo controlador de playa."
  loc_6B87F9: FLdRfVar var_B4
  loc_6B87FC: AddVar var_C4
  loc_6B8800: FLdRfVar var_E4
  loc_6B8803: AddVar var_104
  loc_6B8807: LitVarStr var_F4, "¿Desea Ingresar los Valores"
  loc_6B880C: AddVar var_124
  loc_6B8810: ConcatVar var_19C
  loc_6B8814: LitVarStr var_114, " en este momento?"
  loc_6B8819: ConcatVar var_1AC
  loc_6B881D: ImpAdCallI2 MsgBox(, , , , )
  loc_6B8822: CStrI4
  loc_6B8824: FStStr var_88
  loc_6B8827: FFreeStr var_98 = ""
  loc_6B882E: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_134 = "": var_124 = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = ""
  loc_6B8849: LitI2_Byte &HFF
  loc_6B884B: FMemStI2 arg_8(2)
  loc_6B8852: FLdRfVar var_B4
  loc_6B8855: ImpAdCallFPR4  = Date
  loc_6B885A: FLdRfVar var_B4
  loc_6B885D: FLdRfVar var_C4
  loc_6B8860: ImpAdCallFPR4  = Month()
  loc_6B8865: FLdRfVar var_C4
  loc_6B8868: FnCStrVar
  loc_6B886A: CVarStr var_E4
  loc_6B886D: FLdRfVar var_104
  loc_6B8870: ImpAdCallFPR4  = Trim()
  loc_6B8875: FLdRfVar var_104
  loc_6B8878: FnLenVar var_124
  loc_6B887C: LitVarI2 var_D4, 1
  loc_6B8881: HardType
  loc_6B8882: EqVarBool
  loc_6B8884: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = ""
  loc_6B8891: BranchF loc_6B88EF
  loc_6B8896: LitVarStr var_D4, "0"
  loc_6B889B: FLdRfVar var_B4
  loc_6B889E: ImpAdCallFPR4  = Date
  loc_6B88A3: FLdRfVar var_B4
  loc_6B88A6: FLdRfVar var_C4
  loc_6B88A9: ImpAdCallFPR4  = Month()
  loc_6B88AE: FLdRfVar var_C4
  loc_6B88B1: FnCStrVar
  loc_6B88B3: CVarStr var_E4
  loc_6B88B6: FLdRfVar var_104
  loc_6B88B9: ImpAdCallFPR4  = Trim()
  loc_6B88BE: FLdRfVar var_104
  loc_6B88C1: ConcatVar var_124
  loc_6B88C5: LitVarStr var_F4, "1"
  loc_6B88CA: ConcatVar var_134
  loc_6B88CE: CStrVarTmp
  loc_6B88CF: PopTmpLdAdStr
  loc_6B88D3: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B88D8: FFree1Str var_98
  loc_6B88DB: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_124 = ""
  loc_6B88EC: Branch loc_6B893E
  loc_6B88F3: FLdRfVar var_B4
  loc_6B88F6: ImpAdCallFPR4  = Date
  loc_6B88FB: FLdRfVar var_B4
  loc_6B88FE: FLdRfVar var_C4
  loc_6B8901: ImpAdCallFPR4  = Month()
  loc_6B8906: FLdRfVar var_C4
  loc_6B8909: FnCStrVar
  loc_6B890B: CVarStr var_E4
  loc_6B890E: FLdRfVar var_104
  loc_6B8911: ImpAdCallFPR4  = Trim()
  loc_6B8916: FLdRfVar var_104
  loc_6B8919: LitVarStr var_D4, "1"
  loc_6B891E: ConcatVar var_124
  loc_6B8922: CStrVarTmp
  loc_6B8923: PopTmpLdAdStr
  loc_6B8927: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B892C: FFree1Str var_98
  loc_6B892F: FFreeVar var_B4 = "": var_C4 = "": var_C4 = "": var_E4 = "": var_104 = ""
  loc_6B8942: LitI4 0
  loc_6B8947: FStStrCopy var_98
  loc_6B894A: FLdRfVar var_98
  loc_6B894D: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6B8952: FFree1Str var_98
  loc_6B8957: ILdRf var_88
  loc_6B895A: CR8Str
  loc_6B895C: LitI4 6
  loc_6B8961: CR8I4
  loc_6B8962: EqR4
  loc_6B8963: BranchF loc_6B8995
  loc_6B8968: LitI2_Byte &H58
  loc_6B896A: PopTmpLdAd2 var_90
  loc_6B896D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6B8972: NotI4
  loc_6B8973: BranchF loc_6B8979
  loc_6B8978: ExitProc
  loc_6B897D: LitVar_Missing var_F4
  loc_6B8980: PopAdLdVar
  loc_6B8981: LitVarI4
  loc_6B8989: PopAdLdVar
  loc_6B898A: ImpAdLdRf MemVar_74C7E0
  loc_6B898D: NewIfNullPr frmTanquesInf
  loc_6B8990: frmTanquesInf.Show from_stack_1, from_stack_2
  loc_6B899D: ExitProc
  loc_6B89A0: FLdRfVar var_98
  loc_6B89A3: ImpAdCallI2 Err 'rtcErrObj
  loc_6B89A8: FStAdFunc var_94
  loc_6B89AB: FLdPr var_94
  loc_6B89AE:  = Err.Description
  loc_6B89B3: LitVar_Missing var_104
  loc_6B89B6: LitVar_Missing var_E4
  loc_6B89B9: LitVarStr var_D4, "Error"
  loc_6B89BE: FStVarCopyObj var_C4
  loc_6B89C1: FLdRfVar var_C4
  loc_6B89C4: LitI4 &H10
  loc_6B89C9: FLdZeroAd var_98
  loc_6B89CC: CVarStr var_B4
  loc_6B89CF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B89D4: FFree1Ad var_94
  loc_6B89D7: FFreeVar var_B4 = "": var_C4 = "": var_E4 = ""
  loc_6B89E4: Resume
  loc_6B89EA: ExitProc
End Function

Private Function Proc_167_11_632680() '632680
  'Data Table: 43B664
  loc_6324A8: FLdRfVar var_96
  loc_6324AB: FLdRfVar var_90
  loc_6324AE: FLdRfVar var_94
  loc_6324B1: ImpAdLdRf MemVar_74C760
  loc_6324B4: NewIfNullPr Formx
  loc_6324B7: from_stack_1v = Formx.global_4589716Get()
  loc_6324BC: FLdPr var_94
  loc_6324BF: Call 0.Method_arg_5C ()
  loc_6324C4: FLdI2 var_96
  loc_6324C7: NotI4
  loc_6324C8: FFree1Ad var_94
  loc_6324CB: BranchF loc_632509
  loc_6324CE: LitVar_Missing var_F8
  loc_6324D1: LitVar_Missing var_D8
  loc_6324D4: ImpAdLdRf MemVar_74BF24
  loc_6324D7: CVarRef
  loc_6324DC: LitI4 5
  loc_6324E1: FMemLdRf unk_43B66D
  loc_6324E6: CVarRef
  loc_6324EB: ImpAdCallI2 MsgBox(, , , , )
  loc_6324F0: LitI4 2
  loc_6324F5: EqI4
  loc_6324F6: FFreeVar var_D8 = ""
  loc_6324FD: BranchF loc_632506
  loc_632500: LitI2_Byte 0
  loc_632502: FStI2 var_86
  loc_632505: ExitProcI2
  loc_632506: Branch loc_6324A8
  loc_632509: LitI2_Byte 1
  loc_63250B: FStI2 var_88
  loc_63250E: LitVarI2 var_D8, 1
  loc_632513: FLdI2 var_88
  loc_632516: CI4UI1
  loc_632517: FLdRfVar var_90
  loc_63251A: CVarRef
  loc_63251F: FLdRfVar var_F8
  loc_632522: ImpAdCallFPR4  = Mid(, , )
  loc_632527: FLdRfVar var_F8
  loc_63252A: LitVarStr var_C8, "|"
  loc_63252F: HardType
  loc_632530: NeVarBool
  loc_632532: FFreeVar var_D8 = ""
  loc_632539: BranchF loc_632678
  loc_63253C: LitVarI2 var_D8, 2
  loc_632541: FLdI2 var_88
  loc_632544: CI4UI1
  loc_632545: FLdRfVar var_90
  loc_632548: CVarRef
  loc_63254D: FLdRfVar var_F8
  loc_632550: ImpAdCallFPR4  = Mid(, , )
  loc_632555: FLdRfVar var_F8
  loc_632558: FnCByteVar
  loc_63255A: CI2UI1
  loc_63255C: FStI2 var_8A
  loc_63255F: FFreeVar var_D8 = "": var_F8 = ""
  loc_632568: FLdI2 var_88
  loc_63256B: LitI2_Byte 2
  loc_63256D: AddI2
  loc_63256E: FStI2 var_88
  loc_632571: LitVarI2 var_D8, 2
  loc_632576: FLdI2 var_88
  loc_632579: CI4UI1
  loc_63257A: FLdRfVar var_90
  loc_63257D: CVarRef
  loc_632582: FLdRfVar var_F8
  loc_632585: ImpAdCallFPR4  = Mid(, , )
  loc_63258A: FLdRfVar var_F8
  loc_63258D: FnCIntVar
  loc_63258F: PopTmpLdAd2 var_96
  loc_632592: FLdI2 var_8A
  loc_632595: ImpAdLdRf MemVar_74A220
  loc_632598: NewIfNullPr clsProducts
  loc_63259B: Call 0.Method_arg_5C ()
  loc_6325A0: FFreeVar var_D8 = "": var_F8 = ""
  loc_6325A9: FLdI2 var_88
  loc_6325AC: LitI2_Byte 2
  loc_6325AE: AddI2
  loc_6325AF: FStI2 var_88
  loc_6325B2: LitVarI2 var_D8, 3
  loc_6325B7: FLdI2 var_88
  loc_6325BA: CI4UI1
  loc_6325BB: FLdRfVar var_90
  loc_6325BE: CVarRef
  loc_6325C3: FLdRfVar var_F8
  loc_6325C6: ImpAdCallFPR4  = Mid(, , )
  loc_6325CB: FLdRfVar var_F8
  loc_6325CE: FnCIntVar
  loc_6325D0: PopTmpLdAd2 var_96
  loc_6325D3: FLdI2 var_8A
  loc_6325D6: ImpAdLdRf MemVar_74A220
  loc_6325D9: NewIfNullPr clsProducts
  loc_6325DC: clsProducts.BackColor = from_stack_1
  loc_6325E1: FFreeVar var_D8 = "": var_F8 = ""
  loc_6325EA: FLdI2 var_88
  loc_6325ED: LitI2_Byte 3
  loc_6325EF: AddI2
  loc_6325F0: FStI2 var_88
  loc_6325F3: LitVarI2 var_D8, 2
  loc_6325F8: FLdI2 var_88
  loc_6325FB: CI4UI1
  loc_6325FC: FLdRfVar var_90
  loc_6325FF: CVarRef
  loc_632604: FLdRfVar var_F8
  loc_632607: ImpAdCallFPR4  = Mid(, , )
  loc_63260C: FLdRfVar var_F8
  loc_63260F: FnCIntVar
  loc_632611: PopTmpLdAd2 var_96
  loc_632614: FLdI2 var_8A
  loc_632617: ImpAdLdRf MemVar_74A220
  loc_63261A: NewIfNullPr clsProducts
  loc_63261D: clsProducts.ForeColor = from_stack_1
  loc_632622: FFreeVar var_D8 = "": var_F8 = ""
  loc_63262B: FLdI2 var_88
  loc_63262E: LitI2_Byte 2
  loc_632630: AddI2
  loc_632631: FStI2 var_88
  loc_632634: LitVarI2 var_D8, 3
  loc_632639: FLdI2 var_88
  loc_63263C: CI4UI1
  loc_63263D: FLdRfVar var_90
  loc_632640: CVarRef
  loc_632645: FLdRfVar var_F8
  loc_632648: ImpAdCallFPR4  = Mid(, , )
  loc_63264D: FLdRfVar var_F8
  loc_632650: FnCIntVar
  loc_632652: PopTmpLdAd2 var_96
  loc_632655: FLdI2 var_8A
  loc_632658: ImpAdLdRf MemVar_74A220
  loc_63265B: NewIfNullPr clsProducts
  loc_63265E: clsProducts.Left = from_stack_1s
  loc_632663: FFreeVar var_D8 = "": var_F8 = ""
  loc_63266C: FLdI2 var_88
  loc_63266F: LitI2_Byte 3
  loc_632671: AddI2
  loc_632672: FStI2 var_88
  loc_632675: Branch loc_63250E
  loc_632678: LitI2_Byte &HFF
  loc_63267A: FStI2 var_86
  loc_63267D: ExitProcI2
  loc_63267E: AddI2
End Function

Private Function Proc_167_12_5DCCA4() '5DCCA4
  'Data Table: 4023F8
  loc_5DCC5C: New Me
  loc_5DCC60: FMemStAdFunc arg_8(0)
  loc_5DCC66: New Me
  loc_5DCC6A: FMemStAdFunc arg_8(4)
  loc_5DCC70: FMemLdR4 arg_8(4)
  loc_5DCC75: FStAdNoPop
  loc_5DCC79: FMemLdPr
  loc_5DCC83: FFree1Ad var_88
  loc_5DCC86: ImpAdLdRf MemVar_74D838
  loc_5DCC89: FMemLdPr
  loc_5DCC8E:  = Forms
  loc_5DCC93: ImpAdLdRf MemVar_74D838
  loc_5DCC96: FMemLdPr
  loc_5DCC9B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_5DCCA0: ExitProc
End Function

Private Function Proc_167_13_6138BC() '6138BC
  'Data Table: 43B664
  loc_613798: ImpAdLdRf MemVar_74E330
  loc_61379B: NewIfNullAd
  loc_61379E: FStAdNoPop
  loc_6137A2: ImpAdLdRf MemVar_7520D4
  loc_6137A5: NewIfNullPr Global
  loc_6137A8: Global.Unload from_stack_1
  loc_6137AD: FFree1Ad var_88
  loc_6137B0: ImpAdLdRf MemVar_74E344
  loc_6137B3: NewIfNullAd
  loc_6137B6: FStAdNoPop
  loc_6137BA: ImpAdLdRf MemVar_7520D4
  loc_6137BD: NewIfNullPr Global
  loc_6137C0: Global.Unload from_stack_1
  loc_6137C5: FFree1Ad var_88
  loc_6137C8: ImpAdLdRf MemVar_74E3E0
  loc_6137CB: NewIfNullAd
  loc_6137CE: FStAdNoPop
  loc_6137D2: ImpAdLdRf MemVar_7520D4
  loc_6137D5: NewIfNullPr Global
  loc_6137D8: Global.Unload from_stack_1
  loc_6137DD: FFree1Ad var_88
  loc_6137E0: ImpAdLdRf MemVar_74E150
  loc_6137E3: NewIfNullAd
  loc_6137E6: FStAdNoPop
  loc_6137EA: ImpAdLdRf MemVar_7520D4
  loc_6137ED: NewIfNullPr Global
  loc_6137F0: Global.Unload from_stack_1
  loc_6137F5: FFree1Ad var_88
  loc_6137F8: ImpAdLdRf MemVar_74C900
  loc_6137FB: NewIfNullAd
  loc_6137FE: FStAdNoPop
  loc_613802: ImpAdLdRf MemVar_7520D4
  loc_613805: NewIfNullPr Global
  loc_613808: Global.Unload from_stack_1
  loc_61380D: FFree1Ad var_88
  loc_613810: ImpAdLdRf MemVar_74C8EC
  loc_613813: NewIfNullAd
  loc_613816: FStAdNoPop
  loc_61381A: ImpAdLdRf MemVar_7520D4
  loc_61381D: NewIfNullPr Global
  loc_613820: Global.Unload from_stack_1
  loc_613825: FFree1Ad var_88
  loc_613828: ImpAdLdRf MemVar_74C914
  loc_61382B: NewIfNullAd
  loc_61382E: FStAdNoPop
  loc_613832: ImpAdLdRf MemVar_7520D4
  loc_613835: NewIfNullPr Global
  loc_613838: Global.Unload from_stack_1
  loc_61383D: FFree1Ad var_88
  loc_613840: ImpAdLdRf MemVar_74C928
  loc_613843: NewIfNullAd
  loc_613846: FStAdNoPop
  loc_61384A: ImpAdLdRf MemVar_7520D4
  loc_61384D: NewIfNullPr Global
  loc_613850: Global.Unload from_stack_1
  loc_613855: FFree1Ad var_88
  loc_613858: ImpAdLdRf MemVar_74C93C
  loc_61385B: NewIfNullAd
  loc_61385E: FStAdNoPop
  loc_613862: ImpAdLdRf MemVar_7520D4
  loc_613865: NewIfNullPr Global
  loc_613868: Global.Unload from_stack_1
  loc_61386D: FFree1Ad var_88
  loc_613870: ImpAdLdRf MemVar_74C950
  loc_613873: NewIfNullAd
  loc_613876: FStAdNoPop
  loc_61387A: ImpAdLdRf MemVar_7520D4
  loc_61387D: NewIfNullPr Global
  loc_613880: Global.Unload from_stack_1
  loc_613885: FFree1Ad var_88
  loc_613888: ImpAdLdRf MemVar_74DB90
  loc_61388B: NewIfNullAd
  loc_61388E: FStAdNoPop
  loc_613892: ImpAdLdRf MemVar_7520D4
  loc_613895: NewIfNullPr Global
  loc_613898: Global.Unload from_stack_1
  loc_61389D: FFree1Ad var_88
  loc_6138A0: ImpAdLdRf MemVar_74DB7C
  loc_6138A3: NewIfNullAd
  loc_6138A6: FStAdNoPop
  loc_6138AA: ImpAdLdRf MemVar_7520D4
  loc_6138AD: NewIfNullPr Global
  loc_6138B0: Global.Unload from_stack_1
  loc_6138B5: FFree1Ad var_88
  loc_6138B8: ExitProc
  loc_6138B9: CVarCy arg_0
End Function

Private Function Proc_167_14_6AB0C4() '6AB0C4
  'Data Table: 43B664
  loc_6AA960: OnErrorGoto loc_6AB0BE
  loc_6AA963: FMemLdUI1 arg_8(632)
  loc_6AA969: CI2UI1
  loc_6AA96B: LitI4 1
  loc_6AA970: FMemLdRf unk_43B66D
  loc_6AA975: GetRecOwn4
  loc_6AA979: FMemLdUI1 arg_8(632)
  loc_6AA97F: CI2UI1
  loc_6AA981: FMemLdRf unk_43B66D
  loc_6AA986: LitI4 1
  loc_6AA98B: GetRec3
  loc_6AA98D: FMemLdUI1 arg_8(632)
  loc_6AA993: CI2UI1
  loc_6AA995: FLdRfVar var_C2
  loc_6AA998: LitI4 1
  loc_6AA99D: GetRec3
  loc_6AA99F: FLdUI1
  loc_6AA9A3: CI2UI1
  loc_6AA9A5: PopTmpLdAd2 var_D6
  loc_6AA9A8: ImpAdLdRf MemVar_74A220
  loc_6AA9AB: NewIfNullPr clsProducts
  loc_6AA9AE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA9B3: FMemLdUI1 arg_8(632)
  loc_6AA9B9: CI2UI1
  loc_6AA9BB: FMemLdRf unk_43B66D
  loc_6AA9C0: LitI4 1
  loc_6AA9C5: GetRec3
  loc_6AA9C7: FMemLdUI1 arg_8(632)
  loc_6AA9CD: CI2UI1
  loc_6AA9CF: FMemLdRf unk_43B66D
  loc_6AA9D4: LitI4 1
  loc_6AA9D9: GetRec3
  loc_6AA9DB: FMemLdUI1 arg_8(632)
  loc_6AA9E1: CI2UI1
  loc_6AA9E3: FMemLdRf unk_43B66D
  loc_6AA9E8: LitI4 1
  loc_6AA9ED: GetRec3
  loc_6AA9EF: FMemLdUI1 arg_8(632)
  loc_6AA9F5: CI2UI1
  loc_6AA9F7: FMemLdRf unk_43B66D
  loc_6AA9FC: LitI4 1
  loc_6AAA01: GetRec3
  loc_6AAA03: FMemLdUI1 arg_8(632)
  loc_6AAA09: CI2UI1
  loc_6AAA0B: FMemLdRf unk_43B66D
  loc_6AAA10: LitI4 1
  loc_6AAA15: GetRec3
  loc_6AAA17: FMemLdUI1 arg_8(632)
  loc_6AAA1D: CI2UI1
  loc_6AAA1F: FMemLdRf unk_43B66D
  loc_6AAA24: LitI4 1
  loc_6AAA29: GetRec3
  loc_6AAA2B: LitI2_Byte 1
  loc_6AAA2D: FLdRfVar var_C0
  loc_6AAA30: LitI2_Byte &H20
  loc_6AAA32: ForI2 var_DA
  loc_6AAA38: FMemLdUI1 arg_8(632)
  loc_6AAA3E: CI2UI1
  loc_6AAA40: FLdI2 var_C0
  loc_6AAA43: CI4UI1
  loc_6AAA44: FMemLdRf unk_43B66D
  loc_6AAA49: Ary1LdRf
  loc_6AAA4A: LitI4 1
  loc_6AAA4F: GetRec3
  loc_6AAA51: FLdRfVar var_C0
  loc_6AAA54: NextI2 var_DA, loc_6AAA38
  loc_6AAA59: LitI2_Byte 1
  loc_6AAA5B: FLdRfVar var_C0
  loc_6AAA5E: LitI2_Byte &H10
  loc_6AAA60: ForI2 var_DE
  loc_6AAA66: FMemLdUI1 arg_8(632)
  loc_6AAA6C: CI2UI1
  loc_6AAA6E: FLdI2 var_C0
  loc_6AAA71: CI4UI1
  loc_6AAA72: FMemLdRf unk_43B66D
  loc_6AAA77: Ary1LdRf
  loc_6AAA78: LitI4 1
  loc_6AAA7D: GetRec3
  loc_6AAA7F: FMemLdUI1 arg_8(632)
  loc_6AAA85: CI2UI1
  loc_6AAA87: FLdI2 var_C0
  loc_6AAA8A: CI4UI1
  loc_6AAA8B: FMemLdRf unk_43B66D
  loc_6AAA90: Ary1LdRf
  loc_6AAA91: LitI4 1
  loc_6AAA96: GetRec3
  loc_6AAA98: FLdRfVar var_C0
  loc_6AAA9B: NextI2 var_DE, loc_6AAA66
  loc_6AAAA0: LitI2_Byte 1
  loc_6AAAA2: FLdRfVar var_C0
  loc_6AAAA5: LitI2_Byte &HA
  loc_6AAAA7: ForI2 var_E2
  loc_6AAAAD: FMemLdUI1 arg_8(632)
  loc_6AAAB3: CI2UI1
  loc_6AAAB5: FLdRfVar var_BE
  loc_6AAAB8: LitI4 &H19
  loc_6AAABD: GetRecFxStr3
  loc_6AAABF: FLdRfVar var_BE
  loc_6AAAC2: LdFixedStr
  loc_6AAAC5: PopTmpLdAdStr
  loc_6AAAC9: FLdI2 var_C0
  loc_6AAACC: ImpAdLdRf MemVar_74A220
  loc_6AAACF: NewIfNullPr clsProducts
  loc_6AAAD7: FFree1Str var_E8
  loc_6AAADA: FLdRfVar var_C0
  loc_6AAADD: NextI2 var_E2, loc_6AAAAD
  loc_6AAAE2: LitI2_Byte 1
  loc_6AAAE4: FLdRfVar var_C0
  loc_6AAAE7: LitI2_Byte &HA
  loc_6AAAE9: ForI2 var_EC
  loc_6AAAEF: FMemLdUI1 arg_8(632)
  loc_6AAAF5: CI2UI1
  loc_6AAAF7: FLdRfVar var_C4
  loc_6AAAFA: LitI4 1
  loc_6AAAFF: GetRec3
  loc_6AAB01: FLdUI1
  loc_6AAB05: CI2UI1
  loc_6AAB07: PopTmpLdAd2 var_D6
  loc_6AAB0A: FLdI2 var_C0
  loc_6AAB0D: ImpAdLdRf MemVar_74A220
  loc_6AAB10: NewIfNullPr clsProducts
  loc_6AAB13: clsProducts = from_stack_1
  loc_6AAB18: FLdRfVar var_C0
  loc_6AAB1B: NextI2 var_EC, loc_6AAAEF
  loc_6AAB20: LitI2_Byte 1
  loc_6AAB22: FLdRfVar var_C0
  loc_6AAB25: LitI2_Byte &H10
  loc_6AAB27: ForI2 var_F0
  loc_6AAB2D: FMemLdUI1 arg_8(632)
  loc_6AAB33: CI2UI1
  loc_6AAB35: FLdI2 var_C0
  loc_6AAB38: CI4UI1
  loc_6AAB39: FMemLdRf unk_43B66D
  loc_6AAB3E: Ary1LdRf
  loc_6AAB3F: LitI4 8
  loc_6AAB44: GetRec3
  loc_6AAB46: FLdRfVar var_C0
  loc_6AAB49: NextI2 var_F0, loc_6AAB2D
  loc_6AAB4E: LitI2_Byte 1
  loc_6AAB50: FLdRfVar var_C0
  loc_6AAB53: LitI2_Byte &H10
  loc_6AAB55: ForI2 var_F4
  loc_6AAB5B: FMemLdUI1 arg_8(632)
  loc_6AAB61: CI2UI1
  loc_6AAB63: FLdI2 var_C0
  loc_6AAB66: CI4UI1
  loc_6AAB67: FMemLdRf unk_43B66D
  loc_6AAB6C: Ary1LdRf
  loc_6AAB6D: LitI4 1
  loc_6AAB72: GetRec3
  loc_6AAB74: FLdRfVar var_C0
  loc_6AAB77: NextI2 var_F4, loc_6AAB5B
  loc_6AAB7C: LitI2_Byte 1
  loc_6AAB7E: FLdRfVar var_C0
  loc_6AAB81: LitI2_Byte &H20
  loc_6AAB83: ForI2 var_F8
  loc_6AAB89: FMemLdUI1 arg_8(632)
  loc_6AAB8F: CI2UI1
  loc_6AAB91: FLdI2 var_C0
  loc_6AAB94: CI4UI1
  loc_6AAB95: FMemLdRf unk_43B66D
  loc_6AAB9A: Ary1LdRf
  loc_6AAB9B: LitI4 1
  loc_6AABA0: GetRec3
  loc_6AABA2: FLdRfVar var_C0
  loc_6AABA5: NextI2 var_F8, loc_6AAB89
  loc_6AABAA: LitI2_Byte 1
  loc_6AABAC: FLdRfVar var_C0
  loc_6AABAF: LitI2_Byte &H10
  loc_6AABB1: ForI2 var_FC
  loc_6AABB7: FMemLdUI1 arg_8(632)
  loc_6AABBD: CI2UI1
  loc_6AABBF: FLdI2 var_C0
  loc_6AABC2: CI4UI1
  loc_6AABC3: FMemLdRf unk_43B66D
  loc_6AABC8: Ary1LdRf
  loc_6AABC9: LitI4 1
  loc_6AABCE: GetRec3
  loc_6AABD0: FLdRfVar var_C0
  loc_6AABD3: NextI2 var_FC, loc_6AABB7
  loc_6AABD8: LitI2_Byte 1
  loc_6AABDA: FLdRfVar var_C0
  loc_6AABDD: LitI2_Byte &H20
  loc_6AABDF: ForI2 var_100
  loc_6AABE5: FMemLdUI1 arg_8(632)
  loc_6AABEB: CI2UI1
  loc_6AABED: FLdI2 var_C0
  loc_6AABF0: CI4UI1
  loc_6AABF1: FMemLdRf unk_43B66D
  loc_6AABF6: Ary1LdRf
  loc_6AABF7: LitI4 1
  loc_6AABFC: GetRec3
  loc_6AABFE: FLdRfVar var_C0
  loc_6AAC01: NextI2 var_100, loc_6AABE5
  loc_6AAC06: LitI2_Byte 1
  loc_6AAC08: FLdRfVar var_C0
  loc_6AAC0B: LitI2_Byte &H20
  loc_6AAC0D: ForI2 var_104
  loc_6AAC13: LitI2_Byte 0
  loc_6AAC15: CUI1I2
  loc_6AAC17: FLdRfVar var_86
  loc_6AAC1A: LitI2_Byte 3
  loc_6AAC1C: CUI1I2
  loc_6AAC1E: ForUI1 var_108
  loc_6AAC24: LitI2_Byte 0
  loc_6AAC26: CUI1I2
  loc_6AAC28: FLdRfVar var_88
  loc_6AAC2B: LitI2_Byte 2
  loc_6AAC2D: CUI1I2
  loc_6AAC2F: ForUI1 var_10C
  loc_6AAC35: FMemLdUI1 arg_8(632)
  loc_6AAC3B: CI2UI1
  loc_6AAC3D: FLdI2 var_C0
  loc_6AAC40: CI4UI1
  loc_6AAC41: FLdUI1
  loc_6AAC45: CI4UI1
  loc_6AAC46: FLdUI1
  loc_6AAC4A: CI4UI1
  loc_6AAC4B: FMemLdRf unk_43B66D
  loc_6AAC50: AryLdRf
  loc_6AAC53: LitI4 1
  loc_6AAC58: GetRec3
  loc_6AAC5A: FLdRfVar var_88
  loc_6AAC5D: NextUI1
  loc_6AAC63: FLdRfVar var_86
  loc_6AAC66: NextUI1
  loc_6AAC6C: FLdRfVar var_C0
  loc_6AAC6F: NextI2 var_104, loc_6AAC13
  loc_6AAC74: LitI2_Byte 1
  loc_6AAC76: FLdRfVar var_C0
  loc_6AAC79: LitI2_Byte &H20
  loc_6AAC7B: ForI2 var_110
  loc_6AAC81: LitI2_Byte 0
  loc_6AAC83: CUI1I2
  loc_6AAC85: FLdRfVar var_86
  loc_6AAC88: LitI2_Byte 3
  loc_6AAC8A: CUI1I2
  loc_6AAC8C: ForUI1 var_114
  loc_6AAC92: FMemLdUI1 arg_8(632)
  loc_6AAC98: CI2UI1
  loc_6AAC9A: FLdI2 var_C0
  loc_6AAC9D: CI4UI1
  loc_6AAC9E: FLdUI1
  loc_6AACA2: CI4UI1
  loc_6AACA3: FMemLdRf unk_43B66D
  loc_6AACA8: AryLdRf
  loc_6AACAB: LitI4 1
  loc_6AACB0: GetRec3
  loc_6AACB2: FLdRfVar var_86
  loc_6AACB5: NextUI1
  loc_6AACBB: FLdRfVar var_C0
  loc_6AACBE: NextI2 var_110, loc_6AAC81
  loc_6AACC3: LitI2_Byte 1
  loc_6AACC5: FLdRfVar var_C0
  loc_6AACC8: LitI2_Byte &H10
  loc_6AACCA: ForI2 var_118
  loc_6AACD0: LitI2_Byte 0
  loc_6AACD2: CUI1I2
  loc_6AACD4: FLdRfVar var_88
  loc_6AACD7: LitI2_Byte 2
  loc_6AACD9: CUI1I2
  loc_6AACDB: ForUI1 var_11C
  loc_6AACE1: FMemLdUI1 arg_8(632)
  loc_6AACE7: CI2UI1
  loc_6AACE9: FLdI2 var_C0
  loc_6AACEC: CI4UI1
  loc_6AACED: FLdUI1
  loc_6AACF1: CI4UI1
  loc_6AACF2: FMemLdRf unk_43B66D
  loc_6AACF7: AryLdRf
  loc_6AACFA: LitI4 1
  loc_6AACFF: GetRec3
  loc_6AAD01: FLdRfVar var_88
  loc_6AAD04: NextUI1
  loc_6AAD0A: FLdRfVar var_C0
  loc_6AAD0D: NextI2 var_118, loc_6AACD0
  loc_6AAD12: LitI2_Byte 1
  loc_6AAD14: FLdRfVar var_C0
  loc_6AAD17: LitI2_Byte &H20
  loc_6AAD19: ForI2 var_120
  loc_6AAD1F: FMemLdUI1 arg_8(632)
  loc_6AAD25: CI2UI1
  loc_6AAD27: FLdI2 var_C0
  loc_6AAD2A: CI4UI1
  loc_6AAD2B: FMemLdRf unk_43B66D
  loc_6AAD30: Ary1LdRf
  loc_6AAD31: LitI4 1
  loc_6AAD36: GetRec3
  loc_6AAD38: FLdRfVar var_C0
  loc_6AAD3B: NextI2 var_120, loc_6AAD1F
  loc_6AAD40: LitI2_Byte 1
  loc_6AAD42: FLdRfVar var_C0
  loc_6AAD45: LitI2_Byte &H10
  loc_6AAD47: ForI2 var_124
  loc_6AAD4D: FMemLdUI1 arg_8(632)
  loc_6AAD53: CI2UI1
  loc_6AAD55: FLdI2 var_C0
  loc_6AAD58: CI4UI1
  loc_6AAD59: FMemLdRf unk_43B66D
  loc_6AAD5E: Ary1LdRf
  loc_6AAD5F: LitI4 1
  loc_6AAD64: GetRec3
  loc_6AAD66: FLdRfVar var_C0
  loc_6AAD69: NextI2 var_124, loc_6AAD4D
  loc_6AAD6E: LitI2_Byte 1
  loc_6AAD70: FLdRfVar var_C0
  loc_6AAD73: LitI2_Byte &H10
  loc_6AAD75: ForI2 var_128
  loc_6AAD7B: FMemLdUI1 arg_8(632)
  loc_6AAD81: CI2UI1
  loc_6AAD83: FLdI2 var_C0
  loc_6AAD86: CI4UI1
  loc_6AAD87: FMemLdRf unk_43B66D
  loc_6AAD8C: Ary1LdRf
  loc_6AAD8D: LitI4 2
  loc_6AAD92: GetRec3
  loc_6AAD94: FLdRfVar var_C0
  loc_6AAD97: NextI2 var_128, loc_6AAD7B
  loc_6AAD9C: LitI2_Byte 1
  loc_6AAD9E: FLdRfVar var_C0
  loc_6AADA1: LitI2_Byte &H10
  loc_6AADA3: ForI2 var_12C
  loc_6AADA9: FMemLdUI1 arg_8(632)
  loc_6AADAF: CI2UI1
  loc_6AADB1: FLdI2 var_C0
  loc_6AADB4: CI4UI1
  loc_6AADB5: FMemLdRf unk_43B66D
  loc_6AADBA: Ary1LdRf
  loc_6AADBB: LitI4 2
  loc_6AADC0: GetRec3
  loc_6AADC2: FLdRfVar var_C0
  loc_6AADC5: NextI2 var_12C, loc_6AADA9
  loc_6AADCA: LitI2_Byte 1
  loc_6AADCC: FLdRfVar var_C0
  loc_6AADCF: LitI2_Byte &H10
  loc_6AADD1: ForI2 var_130
  loc_6AADD7: FMemLdUI1 arg_8(632)
  loc_6AADDD: CI2UI1
  loc_6AADDF: FLdI2 var_C0
  loc_6AADE2: CI4UI1
  loc_6AADE3: FMemLdRf unk_43B66D
  loc_6AADE8: Ary1LdRf
  loc_6AADE9: LitI4 2
  loc_6AADEE: GetRec3
  loc_6AADF0: FLdRfVar var_C0
  loc_6AADF3: NextI2 var_130, loc_6AADD7
  loc_6AADF8: LitI2_Byte 1
  loc_6AADFA: FLdRfVar var_C0
  loc_6AADFD: LitI2_Byte &H10
  loc_6AADFF: ForI2 var_134
  loc_6AAE05: FMemLdUI1 arg_8(632)
  loc_6AAE0B: CI2UI1
  loc_6AAE0D: FLdI2 var_C0
  loc_6AAE10: CI4UI1
  loc_6AAE11: FMemLdRf unk_43B66D
  loc_6AAE16: Ary1LdRf
  loc_6AAE17: LitI4 2
  loc_6AAE1C: GetRec3
  loc_6AAE1E: FLdRfVar var_C0
  loc_6AAE21: NextI2 var_134, loc_6AAE05
  loc_6AAE26: LitI2_Byte 1
  loc_6AAE28: FLdRfVar var_C0
  loc_6AAE2B: LitI2_Byte 4
  loc_6AAE2D: ForI2 var_138
  loc_6AAE33: FMemLdUI1 arg_8(632)
  loc_6AAE39: CI2UI1
  loc_6AAE3B: FLdI2 var_C0
  loc_6AAE3E: CI4UI1
  loc_6AAE3F: FMemLdRf unk_43B66D
  loc_6AAE44: Ary1LdRf
  loc_6AAE45: LitI4 2
  loc_6AAE4A: GetRec3
  loc_6AAE4C: FLdRfVar var_C0
  loc_6AAE4F: NextI2 var_138, loc_6AAE33
  loc_6AAE54: LitI2_Byte 1
  loc_6AAE56: CUI1I2
  loc_6AAE58: FLdRfVar var_86
  loc_6AAE5B: LitI2_Byte 5
  loc_6AAE5D: CUI1I2
  loc_6AAE5F: ForUI1 var_13C
  loc_6AAE65: LitI2_Byte 1
  loc_6AAE67: FLdRfVar var_C0
  loc_6AAE6A: LitI2_Byte &HA
  loc_6AAE6C: ForI2 var_140
  loc_6AAE72: FMemLdUI1 arg_8(632)
  loc_6AAE78: CI2UI1
  loc_6AAE7A: FLdUI1
  loc_6AAE7E: CI4UI1
  loc_6AAE7F: FLdI2 var_C0
  loc_6AAE82: CI4UI1
  loc_6AAE83: FMemLdRf unk_43B66D
  loc_6AAE88: AryLdRf
  loc_6AAE8B: LitI4 8
  loc_6AAE90: GetRec3
  loc_6AAE92: FLdRfVar var_C0
  loc_6AAE95: NextI2 var_140, loc_6AAE72
  loc_6AAE9A: FLdRfVar var_86
  loc_6AAE9D: NextUI1
  loc_6AAEA3: LitI2_Byte 1
  loc_6AAEA5: FLdRfVar var_C0
  loc_6AAEA8: LitI2_Byte &H20
  loc_6AAEAA: ForI2 var_144
  loc_6AAEB0: FMemLdUI1 arg_8(632)
  loc_6AAEB6: CI2UI1
  loc_6AAEB8: FLdI2 var_C0
  loc_6AAEBB: CI4UI1
  loc_6AAEBC: FMemLdRf unk_43B66D
  loc_6AAEC1: Ary1LdRf
  loc_6AAEC2: LitI4 1
  loc_6AAEC7: GetRec3
  loc_6AAEC9: FLdRfVar var_C0
  loc_6AAECC: NextI2 var_144, loc_6AAEB0
  loc_6AAED1: LitI2_Byte 1
  loc_6AAED3: FLdRfVar var_C0
  loc_6AAED6: LitI2_Byte &H20
  loc_6AAED8: ForI2 var_148
  loc_6AAEDE: FMemLdUI1 arg_8(632)
  loc_6AAEE4: CI2UI1
  loc_6AAEE6: FLdI2 var_C0
  loc_6AAEE9: CI4UI1
  loc_6AAEEA: FMemLdRf unk_43B66D
  loc_6AAEEF: Ary1LdRf
  loc_6AAEF0: LitI4 1
  loc_6AAEF5: GetRec3
  loc_6AAEF7: FLdRfVar var_C0
  loc_6AAEFA: NextI2 var_148, loc_6AAEDE
  loc_6AAEFF: FMemLdUI1 arg_8(632)
  loc_6AAF05: CI2UI1
  loc_6AAF07: FLdRfVar var_8A
  loc_6AAF0A: LitI4 1
  loc_6AAF0F: GetRec3
  loc_6AAF11: FLdUI1
  loc_6AAF15: CI2UI1
  loc_6AAF17: LitI2_Byte &HF
  loc_6AAF19: AndI4
  loc_6AAF1A: CUI1I2
  loc_6AAF1C: FMemStUI1 arg_8(1041)
  loc_6AAF22: FLdUI1
  loc_6AAF26: CR8I2
  loc_6AAF27: LitI2_Byte &H10
  loc_6AAF29: CR8I2
  loc_6AAF2A: DivR8
  loc_6AAF2B: CUI1R4
  loc_6AAF2D: FMemStUI1 arg_8(1040)
  loc_6AAF33: FMemLdUI1 arg_8(1040)
  loc_6AAF39: CI2UI1
  loc_6AAF3B: LitI2_Byte 0
  loc_6AAF3D: EqI2
  loc_6AAF3E: BranchF loc_6AAF83
  loc_6AAF41: LitStr "CEM44.INI"
  loc_6AAF44: FLdRfVar var_150
  loc_6AAF47: CStr2Ansi
  loc_6AAF48: ILdRf var_150
  loc_6AAF4B: FMemLdUI1 arg_8(1041)
  loc_6AAF51: CI4UI1
  loc_6AAF52: LitStr "DECIMAL_PPU"
  loc_6AAF55: FLdRfVar var_14C
  loc_6AAF58: CStr2Ansi
  loc_6AAF59: ILdRf var_14C
  loc_6AAF5C: LitStr "GENERAL"
  loc_6AAF5F: FLdRfVar var_E8
  loc_6AAF62: CStr2Ansi
  loc_6AAF63: ILdRf var_E8
  loc_6AAF66: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6AAF6B: FStR4 var_154
  loc_6AAF6E: SetLastSystemError
  loc_6AAF6F: ILdRf var_154
  loc_6AAF72: CUI1I4
  loc_6AAF74: FMemStUI1 arg_8(1040)
  loc_6AAF7A: FFreeStr var_E8 = "": var_14C = ""
  loc_6AAF83: FMemLdUI1 arg_8(1040)
  loc_6AAF89: FStUI1 var_156
  loc_6AAF8D: FLdUI1
  loc_6AAF91: LitI2_Byte 1
  loc_6AAF93: CUI1I2
  loc_6AAF95: EqI2
  loc_6AAF96: BranchF loc_6AAFA4
  loc_6AAF99: LitStr "0.000"
  loc_6AAF9C: FMemStStrCopy
  loc_6AAFA1: Branch loc_6AB008
  loc_6AAFA4: FLdUI1
  loc_6AAFA8: LitI2_Byte 2
  loc_6AAFAA: CUI1I2
  loc_6AAFAC: EqI2
  loc_6AAFAD: BranchF loc_6AAFBB
  loc_6AAFB0: LitStr "#0.00"
  loc_6AAFB3: FMemStStrCopy
  loc_6AAFB8: Branch loc_6AB008
  loc_6AAFBB: FLdUI1
  loc_6AAFBF: LitI2_Byte 3
  loc_6AAFC1: CUI1I2
  loc_6AAFC3: EqI2
  loc_6AAFC4: BranchF loc_6AAFD2
  loc_6AAFC7: LitStr "##0.00"
  loc_6AAFCA: FMemStStrCopy
  loc_6AAFCF: Branch loc_6AB008
  loc_6AAFD2: FLdUI1
  loc_6AAFD6: LitI2_Byte 4
  loc_6AAFD8: CUI1I2
  loc_6AAFDA: EqI2
  loc_6AAFDB: BranchF loc_6AAFE9
  loc_6AAFDE: LitStr "#,##0"
  loc_6AAFE1: FMemStStrCopy
  loc_6AAFE6: Branch loc_6AB008
  loc_6AAFE9: FLdUI1
  loc_6AAFED: LitI2_Byte 5
  loc_6AAFEF: CUI1I2
  loc_6AAFF1: EqI2
  loc_6AAFF2: BranchF loc_6AB000
  loc_6AAFF5: LitStr "##,##0"
  loc_6AAFF8: FMemStStrCopy
  loc_6AAFFD: Branch loc_6AB008
  loc_6AB000: LitStr "###,#00"
  loc_6AB003: FMemStStrCopy
  loc_6AB008: FMemLdUI1 arg_8(1041)
  loc_6AB00E: FStUI1 var_158
  loc_6AB012: FLdUI1
  loc_6AB016: LitI2_Byte 1
  loc_6AB018: CUI1I2
  loc_6AB01A: EqI2
  loc_6AB01B: BranchF loc_6AB031
  loc_6AB01E: LitStr "##0.00"
  loc_6AB021: FMemStStrCopy
  loc_6AB026: LitStr "###0.00"
  loc_6AB029: FMemStStrCopy
  loc_6AB02E: Branch loc_6AB0BD
  loc_6AB031: FLdUI1
  loc_6AB035: LitI2_Byte 2
  loc_6AB037: CUI1I2
  loc_6AB039: EqI2
  loc_6AB03A: BranchF loc_6AB050
  loc_6AB03D: LitStr "#,##0.00"
  loc_6AB040: FMemStStrCopy
  loc_6AB045: LitStr "####0.0"
  loc_6AB048: FMemStStrCopy
  loc_6AB04D: Branch loc_6AB0BD
  loc_6AB050: FLdUI1
  loc_6AB054: LitI2_Byte 3
  loc_6AB056: CUI1I2
  loc_6AB058: EqI2
  loc_6AB059: BranchF loc_6AB06F
  loc_6AB05C: LitStr "##,##0.00"
  loc_6AB05F: FMemStStrCopy
  loc_6AB064: LitStr "#####0"
  loc_6AB067: FMemStStrCopy
  loc_6AB06C: Branch loc_6AB0BD
  loc_6AB06F: FLdUI1
  loc_6AB073: LitI2_Byte 4
  loc_6AB075: CUI1I2
  loc_6AB077: EqI2
  loc_6AB078: BranchF loc_6AB08E
  loc_6AB07B: LitStr "###,##0"
  loc_6AB07E: FMemStStrCopy
  loc_6AB083: LitStr "#####0"
  loc_6AB086: FMemStStrCopy
  loc_6AB08B: Branch loc_6AB0BD
  loc_6AB08E: FLdUI1
  loc_6AB092: LitI2_Byte 5
  loc_6AB094: CUI1I2
  loc_6AB096: EqI2
  loc_6AB097: BranchF loc_6AB0AD
  loc_6AB09A: LitStr "#,###,#00"
  loc_6AB09D: FMemStStrCopy
  loc_6AB0A2: LitStr "#####0"
  loc_6AB0A5: FMemStStrCopy
  loc_6AB0AA: Branch loc_6AB0BD
  loc_6AB0AD: LitStr "##,###,000"
  loc_6AB0B0: FMemStStrCopy
  loc_6AB0B5: LitStr "#####0"
  loc_6AB0B8: FMemStStrCopy
  loc_6AB0BD: ExitProc
  loc_6AB0BE: ImpAdCallFPR4 Proc_167_25_6703EC()
  loc_6AB0C3: ExitProc
End Function

Private Function Proc_167_15_5DAA44() '5DAA44
  'Data Table: 4028D8
  loc_5DAA04: ImpAdLdUI1
  loc_5DAA08: CI2UI1
  loc_5DAA0A: LitI2_Byte 4
  loc_5DAA0C: EqI2
  loc_5DAA0D: ImpAdLdUI1
  loc_5DAA11: CI2UI1
  loc_5DAA13: LitI2_Byte 5
  loc_5DAA15: EqI2
  loc_5DAA16: OrI4
  loc_5DAA17: BranchF loc_5DAA40
  loc_5DAA1A: ImpAdCallUI1 Proc_155_3_5EE224()
  loc_5DAA20: LitI2_Byte &HC
  loc_5DAA22: EqI2
  loc_5DAA23: BranchF loc_5DAA40
  loc_5DAA26: LitI2_Byte &HFF
  loc_5DAA28: ImpAdStI2 MemVar_74C382
  loc_5DAA2B: LitVar_Missing var_A4
  loc_5DAA2E: PopAdLdVar
  loc_5DAA2F: LitVarI2 var_94, 1
  loc_5DAA34: PopAdLdVar
  loc_5DAA35: ImpAdLdRf MemVar_74D8B0
  loc_5DAA38: NewIfNullPr Consola
  loc_5DAA3B: Consola.Show from_stack_1, from_stack_2
  loc_5DAA40: ExitProc
End Function

Private Function Proc_167_16_691AB4() '691AB4
  'Data Table: 4027E4
  loc_6914D4: FLdRfVar var_92
  loc_6914D7: FLdRfVar var_8C
  loc_6914DA: FLdRfVar var_90
  loc_6914DD: ImpAdLdRf MemVar_74C760
  loc_6914E0: NewIfNullPr Formx
  loc_6914E3: from_stack_1v = Formx.global_4589716Get()
  loc_6914E8: FLdPr var_90
  loc_6914EB:  = Formx.DrawMode
  loc_6914F0: FLdI2 var_92
  loc_6914F3: NotI4
  loc_6914F4: FFree1Ad var_90
  loc_6914F7: BranchF loc_691516
  loc_6914FA: FLdRfVar var_A4
  loc_6914FD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_691502: FLdRfVar var_A4
  loc_691505: CBoolVarNull
  loc_691507: FFree1Var var_A4 = ""
  loc_69150A: BranchF loc_691513
  loc_69150D: LitI2_Byte 0
  loc_69150F: FStI2 var_86
  loc_691512: ExitProcI2
  loc_691513: Branch loc_6914D4
  loc_691516: FLdRfVar var_8C
  loc_691519: CVarRef
  loc_69151E: FLdRfVar var_A4
  loc_691521: ImpAdCallFPR4  = Trim()
  loc_691526: FLdRfVar var_A4
  loc_691529: CStrVarTmp
  loc_69152A: FStStr var_8C
  loc_69152D: FFree1Var var_A4 = ""
  loc_691530: LitVarI2 var_A4, 15
  loc_691535: LitI4 1
  loc_69153A: FLdRfVar var_8C
  loc_69153D: CVarRef
  loc_691542: FLdRfVar var_D4
  loc_691545: ImpAdCallFPR4  = Mid(, , )
  loc_69154A: FLdRfVar var_D4
  loc_69154D: FLdRfVar var_E4
  loc_691550: ImpAdCallFPR4  = Trim()
  loc_691555: FLdRfVar var_E4
  loc_691558: CStrVarTmp
  loc_691559: ImpAdStStr MemVar_74BEBC
  loc_69155D: FFreeVar var_A4 = "": var_D4 = ""
  loc_691566: LitVarI2 var_A4, 15
  loc_69156B: LitI4 &H10
  loc_691570: FLdRfVar var_8C
  loc_691573: CVarRef
  loc_691578: FLdRfVar var_D4
  loc_69157B: ImpAdCallFPR4  = Mid(, , )
  loc_691580: FLdRfVar var_D4
  loc_691583: FLdRfVar var_E4
  loc_691586: ImpAdCallFPR4  = Trim()
  loc_69158B: FLdRfVar var_E4
  loc_69158E: CStrVarTmp
  loc_69158F: ImpAdStStr MemVar_74BECC
  loc_691593: FFreeVar var_A4 = "": var_D4 = ""
  loc_69159C: LitVarI2 var_A4, 5
  loc_6915A1: LitI4 &H1F
  loc_6915A6: FLdRfVar var_8C
  loc_6915A9: CVarRef
  loc_6915AE: FLdRfVar var_D4
  loc_6915B1: ImpAdCallFPR4  = Mid(, , )
  loc_6915B6: FLdRfVar var_D4
  loc_6915B9: FLdRfVar var_E4
  loc_6915BC: ImpAdCallFPR4  = Trim()
  loc_6915C1: FLdRfVar var_E4
  loc_6915C4: CStrVarTmp
  loc_6915C5: ImpAdStStr MemVar_74BEC0
  loc_6915C9: FFreeVar var_A4 = "": var_D4 = ""
  loc_6915D2: LitVarI2 var_A4, 5
  loc_6915D7: LitI4 &H24
  loc_6915DC: FLdRfVar var_8C
  loc_6915DF: CVarRef
  loc_6915E4: FLdRfVar var_D4
  loc_6915E7: ImpAdCallFPR4  = Mid(, , )
  loc_6915EC: FLdRfVar var_D4
  loc_6915EF: FLdRfVar var_E4
  loc_6915F2: ImpAdCallFPR4  = Trim()
  loc_6915F7: FLdRfVar var_E4
  loc_6915FA: CStrVarTmp
  loc_6915FB: ImpAdStStr MemVar_74BED0
  loc_6915FF: FFreeVar var_A4 = "": var_D4 = ""
  loc_691608: LitVarI2 var_A4, 20
  loc_69160D: LitI4 &H29
  loc_691612: FLdRfVar var_8C
  loc_691615: CVarRef
  loc_69161A: FLdRfVar var_D4
  loc_69161D: ImpAdCallFPR4  = Mid(, , )
  loc_691622: FLdRfVar var_D4
  loc_691625: FLdRfVar var_E4
  loc_691628: ImpAdCallFPR4  = Trim()
  loc_69162D: FLdRfVar var_E4
  loc_691630: CStrVarTmp
  loc_691631: ImpAdStStr MemVar_74BED4
  loc_691635: FFreeVar var_A4 = "": var_D4 = ""
  loc_69163E: LitVarI2 var_A4, 20
  loc_691643: LitI4 &H3D
  loc_691648: FLdRfVar var_8C
  loc_69164B: CVarRef
  loc_691650: FLdRfVar var_D4
  loc_691653: ImpAdCallFPR4  = Mid(, , )
  loc_691658: FLdRfVar var_D4
  loc_69165B: FLdRfVar var_E4
  loc_69165E: ImpAdCallFPR4  = Trim()
  loc_691663: FLdRfVar var_E4
  loc_691666: CStrVarTmp
  loc_691667: ImpAdStStr MemVar_74BEDC
  loc_69166B: FFreeVar var_A4 = "": var_D4 = ""
  loc_691674: LitVarI2 var_A4, 5
  loc_691679: LitI4 &H51
  loc_69167E: FLdRfVar var_8C
  loc_691681: CVarRef
  loc_691686: FLdRfVar var_D4
  loc_691689: ImpAdCallFPR4  = Mid(, , )
  loc_69168E: FLdRfVar var_D4
  loc_691691: FLdRfVar var_E4
  loc_691694: ImpAdCallFPR4  = Trim()
  loc_691699: FLdRfVar var_E4
  loc_69169C: CStrVarTmp
  loc_69169D: ImpAdStStr MemVar_74BED8
  loc_6916A1: FFreeVar var_A4 = "": var_D4 = ""
  loc_6916AA: LitVarI2 var_A4, 5
  loc_6916AF: LitI4 &H56
  loc_6916B4: FLdRfVar var_8C
  loc_6916B7: CVarRef
  loc_6916BC: FLdRfVar var_D4
  loc_6916BF: ImpAdCallFPR4  = Mid(, , )
  loc_6916C4: FLdRfVar var_D4
  loc_6916C7: FLdRfVar var_E4
  loc_6916CA: ImpAdCallFPR4  = Trim()
  loc_6916CF: FLdRfVar var_E4
  loc_6916D2: CStrVarTmp
  loc_6916D3: ImpAdStStr MemVar_74BEE0
  loc_6916D7: FFreeVar var_A4 = "": var_D4 = ""
  loc_6916E0: LitVarI2 var_A4, 20
  loc_6916E5: LitI4 &H5B
  loc_6916EA: FLdRfVar var_8C
  loc_6916ED: CVarRef
  loc_6916F2: FLdRfVar var_D4
  loc_6916F5: ImpAdCallFPR4  = Mid(, , )
  loc_6916FA: FLdRfVar var_D4
  loc_6916FD: FLdRfVar var_E4
  loc_691700: ImpAdCallFPR4  = Trim()
  loc_691705: LitVarI2 var_134, 20
  loc_69170A: LitI4 &H5B
  loc_69170F: FLdRfVar var_8C
  loc_691712: CVarRef
  loc_691717: FLdRfVar var_144
  loc_69171A: ImpAdCallFPR4  = Mid(, , )
  loc_69171F: FLdRfVar var_144
  loc_691722: FLdRfVar var_154
  loc_691725: ImpAdCallFPR4  = Trim()
  loc_69172A: FLdRfVar var_154
  loc_69172D: ImpAdLdI4 MemVar_74BED4
  loc_691730: LitStr "es"
  loc_691733: ConcatStr
  loc_691734: CVarStr var_174
  loc_691737: FLdRfVar var_E4
  loc_69173A: LitVarStr var_F4, vbNullString
  loc_69173F: HardType
  loc_691740: EqVar var_104
  loc_691744: FStVar var_164
  loc_691748: FLdRfVar var_164
  loc_69174B: FLdRfVar var_184
  loc_69174E: ImpAdCallFPR4  = IIf(, , )
  loc_691753: FLdRfVar var_184
  loc_691756: CStrVarTmp
  loc_691757: ImpAdStStr MemVar_74BEE4
  loc_69175B: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = ""
  loc_691770: LitVarI2 var_A4, 20
  loc_691775: LitI4 &H6F
  loc_69177A: FLdRfVar var_8C
  loc_69177D: CVarRef
  loc_691782: FLdRfVar var_D4
  loc_691785: ImpAdCallFPR4  = Mid(, , )
  loc_69178A: FLdRfVar var_D4
  loc_69178D: FLdRfVar var_E4
  loc_691790: ImpAdCallFPR4  = Trim()
  loc_691795: LitVarI2 var_134, 20
  loc_69179A: LitI4 &H6F
  loc_69179F: FLdRfVar var_8C
  loc_6917A2: CVarRef
  loc_6917A7: FLdRfVar var_144
  loc_6917AA: ImpAdCallFPR4  = Mid(, , )
  loc_6917AF: FLdRfVar var_144
  loc_6917B2: FLdRfVar var_154
  loc_6917B5: ImpAdCallFPR4  = Trim()
  loc_6917BA: FLdRfVar var_154
  loc_6917BD: LitVarStr var_194, "Gas Natural Comp."
  loc_6917C2: FStVarCopyObj var_174
  loc_6917C5: FLdRfVar var_174
  loc_6917C8: FLdRfVar var_E4
  loc_6917CB: LitVarStr var_F4, vbNullString
  loc_6917D0: HardType
  loc_6917D1: EqVar var_104
  loc_6917D5: FStVar var_164
  loc_6917D9: FLdRfVar var_164
  loc_6917DC: FLdRfVar var_184
  loc_6917DF: ImpAdCallFPR4  = IIf(, , )
  loc_6917E4: FLdRfVar var_184
  loc_6917E7: CStrVarTmp
  loc_6917E8: ImpAdStStr MemVar_74BEEC
  loc_6917EC: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = ""
  loc_691801: LitVarI2 var_A4, 5
  loc_691806: LitI4 &H83
  loc_69180B: FLdRfVar var_8C
  loc_69180E: CVarRef
  loc_691813: FLdRfVar var_D4
  loc_691816: ImpAdCallFPR4  = Mid(, , )
  loc_69181B: FLdRfVar var_D4
  loc_69181E: FLdRfVar var_E4
  loc_691821: ImpAdCallFPR4  = Trim()
  loc_691826: LitVarI2 var_134, 5
  loc_69182B: LitI4 &H83
  loc_691830: FLdRfVar var_8C
  loc_691833: CVarRef
  loc_691838: FLdRfVar var_144
  loc_69183B: ImpAdCallFPR4  = Mid(, , )
  loc_691840: FLdRfVar var_144
  loc_691843: FLdRfVar var_154
  loc_691846: ImpAdCallFPR4  = Trim()
  loc_69184B: FLdRfVar var_154
  loc_69184E: ImpAdLdRf MemVar_74BED8
  loc_691851: CVarRef
  loc_691856: FLdRfVar var_E4
  loc_691859: LitVarStr var_F4, vbNullString
  loc_69185E: HardType
  loc_69185F: EqVar var_104
  loc_691863: FStVar var_164
  loc_691867: FLdRfVar var_164
  loc_69186A: FLdRfVar var_174
  loc_69186D: ImpAdCallFPR4  = IIf(, , )
  loc_691872: FLdRfVar var_174
  loc_691875: CStrVarTmp
  loc_691876: ImpAdStStr MemVar_74BEE8
  loc_69187A: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_154 = ""
  loc_69188D: LitVarI2 var_A4, 5
  loc_691892: LitI4 &H88
  loc_691897: FLdRfVar var_8C
  loc_69189A: CVarRef
  loc_69189F: FLdRfVar var_D4
  loc_6918A2: ImpAdCallFPR4  = Mid(, , )
  loc_6918A7: FLdRfVar var_D4
  loc_6918AA: FLdRfVar var_E4
  loc_6918AD: ImpAdCallFPR4  = Trim()
  loc_6918B2: LitVarI2 var_134, 5
  loc_6918B7: LitI4 &H88
  loc_6918BC: FLdRfVar var_8C
  loc_6918BF: CVarRef
  loc_6918C4: FLdRfVar var_144
  loc_6918C7: ImpAdCallFPR4  = Mid(, , )
  loc_6918CC: FLdRfVar var_144
  loc_6918CF: FLdRfVar var_154
  loc_6918D2: ImpAdCallFPR4  = Trim()
  loc_6918D7: FLdRfVar var_154
  loc_6918DA: LitVarStr var_194, "M3"
  loc_6918DF: FStVarCopyObj var_174
  loc_6918E2: FLdRfVar var_174
  loc_6918E5: FLdRfVar var_E4
  loc_6918E8: LitVarStr var_F4, vbNullString
  loc_6918ED: HardType
  loc_6918EE: EqVar var_104
  loc_6918F2: FStVar var_164
  loc_6918F6: FLdRfVar var_164
  loc_6918F9: FLdRfVar var_184
  loc_6918FC: ImpAdCallFPR4  = IIf(, , )
  loc_691901: FLdRfVar var_184
  loc_691904: CStrVarTmp
  loc_691905: ImpAdStStr MemVar_74BEF0
  loc_691909: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = ""
  loc_69191E: LitVarI2 var_A4, 20
  loc_691923: LitI4 &H8D
  loc_691928: FLdRfVar var_8C
  loc_69192B: CVarRef
  loc_691930: FLdRfVar var_D4
  loc_691933: ImpAdCallFPR4  = Mid(, , )
  loc_691938: FLdRfVar var_D4
  loc_69193B: FLdRfVar var_E4
  loc_69193E: ImpAdCallFPR4  = Trim()
  loc_691943: LitVarI2 var_134, 20
  loc_691948: LitI4 &H8D
  loc_69194D: FLdRfVar var_8C
  loc_691950: CVarRef
  loc_691955: FLdRfVar var_144
  loc_691958: ImpAdCallFPR4  = Mid(, , )
  loc_69195D: FLdRfVar var_144
  loc_691960: FLdRfVar var_154
  loc_691963: ImpAdCallFPR4  = Trim()
  loc_691968: FLdRfVar var_154
  loc_69196B: LitVarStr var_194, "CUIT"
  loc_691970: FStVarCopyObj var_174
  loc_691973: FLdRfVar var_174
  loc_691976: FLdRfVar var_E4
  loc_691979: LitVarStr var_F4, vbNullString
  loc_69197E: HardType
  loc_69197F: EqVar var_104
  loc_691983: FStVar var_164
  loc_691987: FLdRfVar var_164
  loc_69198A: FLdRfVar var_184
  loc_69198D: ImpAdCallFPR4  = IIf(, , )
  loc_691992: FLdRfVar var_184
  loc_691995: CStrVarTmp
  loc_691996: ImpAdStStr MemVar_74BEF4
  loc_69199A: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = ""
  loc_6919AF: LitVarI2 var_A4, 5
  loc_6919B4: LitI4 &HA1
  loc_6919B9: FLdRfVar var_8C
  loc_6919BC: CVarRef
  loc_6919C1: FLdRfVar var_D4
  loc_6919C4: ImpAdCallFPR4  = Mid(, , )
  loc_6919C9: FLdRfVar var_D4
  loc_6919CC: FLdRfVar var_E4
  loc_6919CF: ImpAdCallFPR4  = Trim()
  loc_6919D4: LitVarI2 var_134, 5
  loc_6919D9: LitI4 &HA1
  loc_6919DE: FLdRfVar var_8C
  loc_6919E1: CVarRef
  loc_6919E6: FLdRfVar var_144
  loc_6919E9: ImpAdCallFPR4  = Mid(, , )
  loc_6919EE: FLdRfVar var_144
  loc_6919F1: FLdRfVar var_154
  loc_6919F4: ImpAdCallFPR4  = Trim()
  loc_6919F9: FLdRfVar var_154
  loc_6919FC: LitVarStr var_194, "CUIT"
  loc_691A01: FStVarCopyObj var_174
  loc_691A04: FLdRfVar var_174
  loc_691A07: FLdRfVar var_E4
  loc_691A0A: LitVarStr var_F4, vbNullString
  loc_691A0F: HardType
  loc_691A10: EqVar var_104
  loc_691A14: FStVar var_164
  loc_691A18: FLdRfVar var_164
  loc_691A1B: FLdRfVar var_184
  loc_691A1E: ImpAdCallFPR4  = IIf(, , )
  loc_691A23: FLdRfVar var_184
  loc_691A26: CStrVarTmp
  loc_691A27: ImpAdStStr MemVar_74BEF8
  loc_691A2B: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_134 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = ""
  loc_691A40: LitVarI2 var_A4, 20
  loc_691A45: LitI4 &HA6
  loc_691A4A: FLdRfVar var_8C
  loc_691A4D: CVarRef
  loc_691A52: FLdRfVar var_D4
  loc_691A55: ImpAdCallFPR4  = Mid(, , )
  loc_691A5A: FLdRfVar var_D4
  loc_691A5D: FLdRfVar var_E4
  loc_691A60: ImpAdCallFPR4  = Trim()
  loc_691A65: FLdRfVar var_E4
  loc_691A68: CStrVarTmp
  loc_691A69: ImpAdStStr MemVar_74BEC4
  loc_691A6D: FFreeVar var_A4 = "": var_D4 = ""
  loc_691A76: LitVarI2 var_A4, 5
  loc_691A7B: LitI4 &HBA
  loc_691A80: FLdRfVar var_8C
  loc_691A83: CVarRef
  loc_691A88: FLdRfVar var_D4
  loc_691A8B: ImpAdCallFPR4  = Mid(, , )
  loc_691A90: FLdRfVar var_D4
  loc_691A93: FLdRfVar var_E4
  loc_691A96: ImpAdCallFPR4  = Trim()
  loc_691A9B: FLdRfVar var_E4
  loc_691A9E: CStrVarTmp
  loc_691A9F: ImpAdStStr MemVar_74BEC8
  loc_691AA3: FFreeVar var_A4 = "": var_D4 = ""
  loc_691AAC: LitI2_Byte &HFF
  loc_691AAE: FStI2 var_86
  loc_691AB1: ExitProcI2
End Function

Private Function Proc_167_17_607020() '607020
  'Data Table: 402C3C
  loc_606F38: LitI2_Byte &HFF
  loc_606F3A: FStI2 var_86
  loc_606F3D: LitStr "SystemCK"
  loc_606F40: FStStrCopy var_90
  loc_606F43: FLdRfVar var_90
  loc_606F46: LitStr "HARDWARE\DESCRIPTION\System"
  loc_606F49: FStStrCopy var_8C
  loc_606F4C: FLdRfVar var_8C
  loc_606F4F: ImpAdCallI2 Proc_166_21_5E3380(, )
  loc_606F54: FStStrNoPop var_94
  loc_606F57: LitStr "Standard"
  loc_606F5A: EqStr
  loc_606F5C: FFreeStr var_8C = "": var_90 = ""
  loc_606F65: BranchF loc_606F69
  loc_606F68: ExitProcI2
  loc_606F69: LitStr "CurrentCK"
  loc_606F6C: FStStrCopy var_90
  loc_606F6F: FLdRfVar var_90
  loc_606F72: LitStr "SOFTWARE\Microsoft\Windows NT\CurrentVersion"
  loc_606F75: FStStrCopy var_8C
  loc_606F78: FLdRfVar var_8C
  loc_606F7B: ImpAdCallI2 Proc_166_21_5E3380(, )
  loc_606F80: FStStrNoPop var_94
  loc_606F83: LitStr "4.0"
  loc_606F86: EqStr
  loc_606F88: FFreeStr var_8C = "": var_90 = ""
  loc_606F91: BranchF loc_606F95
  loc_606F94: ExitProcI2
  loc_606F95: LitStr "WaitForRPM"
  loc_606F98: FStStrCopy var_90
  loc_606F9B: FLdRfVar var_90
  loc_606F9E: LitStr "SYSTEM\CurrentControlSet\Control"
  loc_606FA1: FStStrCopy var_8C
  loc_606FA4: FLdRfVar var_8C
  loc_606FA7: ImpAdCallI2 Proc_166_21_5E3380(, )
  loc_606FAC: FStStrNoPop var_94
  loc_606FAF: LitStr "Yes"
  loc_606FB2: EqStr
  loc_606FB4: FFreeStr var_8C = "": var_90 = ""
  loc_606FBD: BranchF loc_606FC1
  loc_606FC0: ExitProcI2
  loc_606FC1: LitStr "CheckAM"
  loc_606FC4: FStStrCopy var_90
  loc_606FC7: FLdRfVar var_90
  loc_606FCA: LitStr "SYSTEM\CurrentControlSet\Hardware Profiles\Current\Software"
  loc_606FCD: FStStrCopy var_8C
  loc_606FD0: FLdRfVar var_8C
  loc_606FD3: ImpAdCallI2 Proc_166_21_5E3380(, )
  loc_606FD8: FStStrNoPop var_94
  loc_606FDB: LitStr "Yes"
  loc_606FDE: EqStr
  loc_606FE0: FFreeStr var_8C = "": var_90 = ""
  loc_606FE9: BranchF loc_606FED
  loc_606FEC: ExitProcI2
  loc_606FED: LitStr "CheckMDW"
  loc_606FF0: FStStrCopy var_90
  loc_606FF3: FLdRfVar var_90
  loc_606FF6: LitStr "SYSTEM\CurrentControlSet\Hardware Profiles\Current\Software"
  loc_606FF9: FStStrCopy var_8C
  loc_606FFC: FLdRfVar var_8C
  loc_606FFF: ImpAdCallI2 Proc_166_21_5E3380(, )
  loc_607004: FStStrNoPop var_94
  loc_607007: LitStr "Yes"
  loc_60700A: EqStr
  loc_60700C: FFreeStr var_8C = "": var_90 = ""
  loc_607015: BranchF loc_607019
  loc_607018: ExitProcI2
  loc_607019: LitI2_Byte 0
  loc_60701B: FStI2 var_86
  loc_60701E: ExitProcI2
End Function

Private Function Proc_167_18_5E16E4() '5E16E4
  'Data Table: 43B664
  loc_5E1698: FLdRfVar var_A4
  loc_5E169B: FLdRfVar var_8C
  loc_5E169E: FLdRfVar var_94
  loc_5E16A1: ImpAdLdRf MemVar_74C760
  loc_5E16A4: NewIfNullPr Formx
  loc_5E16A7: from_stack_1v = Formx.global_4589716Get()
  loc_5E16AC: FLdPr var_94
  loc_5E16AF:  = Formx.LinkTopic
  loc_5E16B4: FLdRfVar var_A4
  loc_5E16B7: NotVar var_B4
  loc_5E16BB: CBoolVarNull
  loc_5E16BD: FFree1Ad var_94
  loc_5E16C0: FFree1Var var_A4 = ""
  loc_5E16C3: BranchF loc_5E16DD
  loc_5E16C6: FLdRfVar var_A4
  loc_5E16C9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E16CE: FLdRfVar var_A4
  loc_5E16D1: CBoolVarNull
  loc_5E16D3: FFree1Var var_A4 = ""
  loc_5E16D6: BranchF loc_5E16DA
  loc_5E16D9: ExitProc
  loc_5E16DA: Branch loc_5E1698
  loc_5E16DD: ILdRf var_8C
  loc_5E16E0: FStStrCopy var_88
  loc_5E16E3: ExitProc
End Function

Private Function Proc_167_19_5DD504() '5DD504
  'Data Table: 43B664
  loc_5DD4BC: LitI2_Byte 0
  loc_5DD4BE: FMemStI2 arg_8(54)
  loc_5DD4C3: FLdRfVar var_8A
  loc_5DD4C6: FMemLdRf unk_43B66D
  loc_5DD4CB: FLdRfVar var_88
  loc_5DD4CE: ImpAdLdRf MemVar_74C760
  loc_5DD4D1: NewIfNullPr Formx
  loc_5DD4D4: from_stack_1v = Formx.global_4589716Get()
  loc_5DD4D9: FLdPr var_88
  loc_5DD4DC: Formx.Circle (#x1from_stack_2s, from_stack_3s), from_stack_4s, from_stack_5, from_stack_6s, from_stack_7s, from_stack_8s
  loc_5DD4E1: FLdI2 var_8A
  loc_5DD4E4: NotI4
  loc_5DD4E5: FFree1Ad var_88
  loc_5DD4E8: BranchF loc_5DD502
  loc_5DD4EB: FLdRfVar var_9C
  loc_5DD4EE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DD4F3: FLdRfVar var_9C
  loc_5DD4F6: CBoolVarNull
  loc_5DD4F8: FFree1Var var_9C = ""
  loc_5DD4FB: BranchF loc_5DD4FF
  loc_5DD4FE: ExitProc
  loc_5DD4FF: Branch loc_5DD4C3
  loc_5DD502: ExitProc
End Function

Private Function Proc_167_20_65BCF0() '65BCF0
  'Data Table: 409184
  loc_65B9F8: LitVarStr var_B0, "WINDIR"
  loc_65B9FD: FStVarCopyObj var_C0
  loc_65BA00: FLdRfVar var_C0
  loc_65BA03: FLdRfVar var_D0
  loc_65BA06: ImpAdCallFPR4  = Environ()
  loc_65BA0B: FLdRfVar var_D0
  loc_65BA0E: LitVarStr var_E0, "\aplicationstemp"
  loc_65BA13: ConcatVar var_F0
  loc_65BA17: CStrVarTmp
  loc_65BA18: FMemStStr arg_8(12)
  loc_65BA1E: FFreeVar var_C0 = "": var_D0 = ""
  loc_65BA27: LitVarStr var_B0, "WINDIR"
  loc_65BA2C: FStVarCopyObj var_C0
  loc_65BA2F: FLdRfVar var_C0
  loc_65BA32: FLdRfVar var_D0
  loc_65BA35: ImpAdCallFPR4  = Environ()
  loc_65BA3A: FLdRfVar var_D0
  loc_65BA3D: LitVarStr var_E0, "\aplications.ini"
  loc_65BA42: ConcatVar var_F0
  loc_65BA46: CStrVarTmp
  loc_65BA47: FMemStStr arg_8(16)
  loc_65BA4D: FFreeVar var_C0 = "": var_D0 = ""
  loc_65BA56: ImpAdCallFPR4 Proc_87_23_619080()
  loc_65BA5B: LitI4 &H1E
  loc_65BA60: FLdRfVar var_C0
  loc_65BA63: ImpAdCallFPR4  = Space()
  loc_65BA68: FLdRfVar var_C0
  loc_65BA6B: FStVar var_98
  loc_65BA6F: FMemLdRf Proc_87_14_5F88D8(, , )
  loc_65BA74: LitStr "Maxaplic"
  loc_65BA77: FStStrCopy var_F8
  loc_65BA7A: FLdRfVar var_F8
  loc_65BA7D: LitStr "General"
  loc_65BA80: FStStrCopy var_F4
  loc_65BA83: FLdRfVar var_F4
  loc_65BA86: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_65BA8B: CVarStr var_C0
  loc_65BA8E: FStVar var_98
  loc_65BA92: FFreeStr var_F4 = ""
  loc_65BA99: FLdRfVar var_98
  loc_65BA9C: CStrVarVal var_F4
  loc_65BAA0: ImpAdCallFPR4 push Val()
  loc_65BAA5: CI2R8
  loc_65BAA6: FMemStI2 arg_8(0)
  loc_65BAAB: FFree1Str var_F4
  loc_65BAAE: FMemLdI2 arg_8(0)
  loc_65BAB3: BranchF loc_65BB4E
  loc_65BAB6: LitI2_Byte &HFF
  loc_65BAB8: ImpAdLdRf MemVar_74C760
  loc_65BABB: NewIfNullPr Formx
  loc_65BABE: VCallAd Control_ID_mnuAplic
  loc_65BAC1: FStAdFunc var_FC
  loc_65BAC4: FLdPr var_FC
  loc_65BAC7: Formx.Menu.Visible = from_stack_1b
  loc_65BACC: FFree1Ad var_FC
  loc_65BACF: FLdRfVar var_F8
  loc_65BAD2: LitVar_Missing var_1F4
  loc_65BAD5: LitVar_Missing var_1D4
  loc_65BAD8: LitVar_Missing var_1B4
  loc_65BADB: LitVar_Missing var_194
  loc_65BADE: LitVar_Missing var_174
  loc_65BAE1: LitVar_Missing var_154
  loc_65BAE4: LitVar_Missing var_134
  loc_65BAE7: LitVar_Missing var_F0
  loc_65BAEA: LitVar_Missing var_D0
  loc_65BAED: LitVar_Missing var_C0
  loc_65BAF0: LitStr "Aplicaciones"
  loc_65BAF3: FStStrCopy var_F4
  loc_65BAF6: FLdRfVar var_F4
  loc_65BAF9: LitI4 &HAE
  loc_65BAFE: PopTmpLdAdStr var_104
  loc_65BB01: LitI2_Byte &HA
  loc_65BB03: PopTmpLdAd2 var_FE
  loc_65BB06: FMemLdRf  = Proc_87_14_5F88D8(, , )
  loc_65BB0B: NewIfNullPr clsMsg
  loc_65BB0E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65BB13: ILdRf var_F8
  loc_65BB16: ImpAdLdRf MemVar_74C760
  loc_65BB19: NewIfNullPr Formx
  loc_65BB1C: VCallAd Control_ID_mnuAplic
  loc_65BB1F: FStAdFunc var_FC
  loc_65BB22: FLdPr var_FC
  loc_65BB25: Formx.Menu.Caption = from_stack_1
  loc_65BB2A: FFreeStr var_F4 = ""
  loc_65BB31: FFree1Ad var_FC
  loc_65BB34: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_65BB4B: Branch loc_65BB68
  loc_65BB4E: LitI2_Byte 0
  loc_65BB50: ImpAdLdRf MemVar_74C760
  loc_65BB53: NewIfNullPr Formx
  loc_65BB56: VCallAd Control_ID_mnuAplic
  loc_65BB59: FStAdFunc var_FC
  loc_65BB5C: FLdPr var_FC
  loc_65BB5F: Formx.Menu.Visible = from_stack_1b
  loc_65BB64: FFree1Ad var_FC
  loc_65BB67: ExitProc
  loc_65BB68: LitI2_Byte 1
  loc_65BB6A: FLdRfVar var_86
  loc_65BB6D: LitI2 250
  loc_65BB70: ForI2 var_1F8
  loc_65BB76: FMemLdRf Proc_87_14_5F88D8(, , )
  loc_65BB7B: LitStr "path"
  loc_65BB7E: FStStrCopy var_1FC
  loc_65BB81: FLdRfVar var_1FC
  loc_65BB84: LitStr "Comando"
  loc_65BB87: FLdI2 var_86
  loc_65BB8A: CStrUI1
  loc_65BB8C: FStStrNoPop var_F4
  loc_65BB8F: ConcatStr
  loc_65BB90: PopTmpLdAdStr
  loc_65BB94: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_65BB99: FStStrNoPop var_200
  loc_65BB9C: LitStr vbNullString
  loc_65BB9F: EqStr
  loc_65BBA1: NotI4
  loc_65BBA2: FFreeStr var_F4 = "": var_F8 = "": var_1FC = ""
  loc_65BBAD: BranchF loc_65BCBD
  loc_65BBB0: FLdI2 var_88
  loc_65BBB3: LitI2_Byte 1
  loc_65BBB5: AddI2
  loc_65BBB6: FStI2 var_88
  loc_65BBB9: LitStr "Comando"
  loc_65BBBC: FLdI2 var_86
  loc_65BBBF: CStrUI1
  loc_65BBC1: FStStrNoPop var_F4
  loc_65BBC4: ConcatStr
  loc_65BBC5: FStStr var_A0
  loc_65BBC8: FFree1Str var_F4
  loc_65BBCB: FMemLdRf Proc_87_14_5F88D8(, , )
  loc_65BBD0: LitStr "Titulo"
  loc_65BBD3: FStStrCopy var_F4
  loc_65BBD6: FLdRfVar var_F4
  loc_65BBD9: FLdRfVar var_A0
  loc_65BBDC: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_65BBE1: CVarStr var_C0
  loc_65BBE4: FStVar var_98
  loc_65BBE8: FFree1Str var_F4
  loc_65BBEB: FLdRfVar var_98
  loc_65BBEE: LitVarStr var_B0, "0"
  loc_65BBF3: HardType
  loc_65BBF4: NeVarBool
  loc_65BBF6: BranchF loc_65BC57
  loc_65BBF9: LitI2_Byte &HFF
  loc_65BBFB: FLdRfVar var_204
  loc_65BBFE: FLdI2 var_88
  loc_65BC01: ImpAdLdRf MemVar_74C760
  loc_65BC04: NewIfNullPr Formx
  loc_65BC07: VCallAd Control_ID_MnuLevel1
  loc_65BC0A: FStAdFunc var_FC
  loc_65BC0D: FLdPr var_FC
  loc_65BC10: Set from_stack_2 = Formx(from_stack_1)
  loc_65BC15: FLdPr var_204
  loc_65BC18: Me.Visible = from_stack_1b
  loc_65BC1D: FFreeAd var_FC = ""
  loc_65BC24: FLdRfVar var_98
  loc_65BC27: CStrVarVal var_F4
  loc_65BC2B: FLdRfVar var_204
  loc_65BC2E: FLdI2 var_88
  loc_65BC31: ImpAdLdRf MemVar_74C760
  loc_65BC34: NewIfNullPr Formx
  loc_65BC37: VCallAd Control_ID_MnuLevel1
  loc_65BC3A: FStAdFunc var_FC
  loc_65BC3D: FLdPr var_FC
  loc_65BC40: Set from_stack_2 = Formx(from_stack_1)
  loc_65BC45: FLdPr var_204
  loc_65BC48: Me.Caption = from_stack_1
  loc_65BC4D: FFree1Str var_F4
  loc_65BC50: FFreeAd var_FC = ""
  loc_65BC57: FLdRfVar var_204
  loc_65BC5A: FLdI2 var_88
  loc_65BC5D: LitI2_Byte 1
  loc_65BC5F: AddI2
  loc_65BC60: ImpAdLdRf MemVar_74C760
  loc_65BC63: NewIfNullPr Formx
  loc_65BC66: VCallAd Control_ID_MnuLevel1
  loc_65BC69: FStAdFunc var_FC
  loc_65BC6C: FLdPr var_FC
  loc_65BC6F: Set from_stack_2 = Formx(from_stack_1)
  loc_65BC74: FLdZeroAd var_204
  loc_65BC77: FStAdFuncNoPop
  loc_65BC7A: ImpAdLdRf MemVar_7520D4
  loc_65BC7D: NewIfNullPr Global
  loc_65BC80: Global.Load from_stack_1
  loc_65BC85: FFreeAd var_FC = ""
  loc_65BC8C: LitI2_Byte 0
  loc_65BC8E: FLdRfVar var_204
  loc_65BC91: FLdI2 var_88
  loc_65BC94: LitI2_Byte 1
  loc_65BC96: AddI2
  loc_65BC97: ImpAdLdRf MemVar_74C760
  loc_65BC9A: NewIfNullPr Formx
  loc_65BC9D: VCallAd Control_ID_MnuLevel1
  loc_65BCA0: FStAdFunc var_FC
  loc_65BCA3: FLdPr var_FC
  loc_65BCA6: Set from_stack_2 = Formx(from_stack_1)
  loc_65BCAB: FLdPr var_204
  loc_65BCAE: Me.Visible = from_stack_1b
  loc_65BCB3: FFreeAd var_FC = ""
  loc_65BCBA: Branch loc_65BCE2
  loc_65BCBD: FLdI2 var_88
  loc_65BCC0: LitI2_Byte 0
  loc_65BCC2: EqI2
  loc_65BCC3: BranchF loc_65BCDF
  loc_65BCC6: LitI2_Byte 0
  loc_65BCC8: ImpAdLdRf MemVar_74C760
  loc_65BCCB: NewIfNullPr Formx
  loc_65BCCE: VCallAd Control_ID_mnuAplic
  loc_65BCD1: FStAdFunc var_FC
  loc_65BCD4: FLdPr var_FC
  loc_65BCD7: Formx.Menu.Visible = from_stack_1b
  loc_65BCDC: FFree1Ad var_FC
  loc_65BCDF: Branch loc_65BCEA
  loc_65BCE2: FLdRfVar var_86
  loc_65BCE5: NextI2 var_1F8, loc_65BB76
  loc_65BCEA: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_65BCEF: ExitProc
End Function

Private Function Proc_167_21_5D31A4() '5D31A4
  'Data Table: 4025A8
  loc_5D3184: New Me
  loc_5D3188: FMemStAdFunc arg_8(3388)
  loc_5D318E: New Me
  loc_5D3192: FMemStAdFunc arg_8(3384)
  loc_5D3198: FMemLdPr
  loc_5D319D: Set from_stack_2 = Me(from_stack_1)
  loc_5D31A2: ExitProc
End Function

Private Function Proc_167_22_5DC21C(arg_C) '5DC21C
  'Data Table: 43B664
  loc_5DC1DC: FLdRfVar var_8A
  loc_5DC1DF: ILdRf arg_C
  loc_5DC1E2: FLdRfVar var_88
  loc_5DC1E5: ImpAdLdRf MemVar_74C760
  loc_5DC1E8: NewIfNullPr Formx
  loc_5DC1EB: from_stack_1v = Formx.global_4589716Get()
  loc_5DC1F0: FLdPr var_88
  loc_5DC1F3: Call 0.Method_arg_23C ()
  loc_5DC1F8: FLdI2 var_8A
  loc_5DC1FB: NotI4
  loc_5DC1FC: FFree1Ad var_88
  loc_5DC1FF: BranchF loc_5DC219
  loc_5DC202: FLdRfVar var_9C
  loc_5DC205: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DC20A: FLdRfVar var_9C
  loc_5DC20D: CBoolVarNull
  loc_5DC20F: FFree1Var var_9C = ""
  loc_5DC212: BranchF loc_5DC216
  loc_5DC215: ExitProc
  loc_5DC216: Branch loc_5DC1DC
  loc_5DC219: ExitProc
  loc_5DC21A: BranchFVar
End Function

Private Function Proc_167_23_698938() '698938
  'Data Table: 43B664
  loc_6982D0: OnErrorGoto loc_698930
  loc_6982D3: FMemLdUI1 arg_8(632)
  loc_6982D9: CI2UI1
  loc_6982DB: LitI4 1
  loc_6982E0: FMemLdRf unk_43B66D
  loc_6982E5: PutRecOwn4
  loc_6982E9: FMemLdUI1 arg_8(632)
  loc_6982EF: CI2UI1
  loc_6982F1: FMemLdRf unk_43B66D
  loc_6982F6: LitI4 1
  loc_6982FB: PutRec3
  loc_6982FD: FMemLdUI1 arg_8(632)
  loc_698303: CI2UI1
  loc_698305: FLdRfVar var_A2
  loc_698308: ImpAdLdRf MemVar_74A220
  loc_69830B: NewIfNullPr clsProducts
  loc_69830E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_698313: FLdI2 var_A2
  loc_698316: PopTmpLdAd2 var_A4
  loc_698319: LitI4 2
  loc_69831E: PutRec3
  loc_698320: FMemLdUI1 arg_8(632)
  loc_698326: CI2UI1
  loc_698328: FMemLdRf unk_43B66D
  loc_69832D: LitI4 1
  loc_698332: PutRec3
  loc_698334: FMemLdUI1 arg_8(632)
  loc_69833A: CI2UI1
  loc_69833C: FMemLdRf unk_43B66D
  loc_698341: LitI4 1
  loc_698346: PutRec3
  loc_698348: FMemLdUI1 arg_8(632)
  loc_69834E: CI2UI1
  loc_698350: FMemLdRf unk_43B66D
  loc_698355: LitI4 1
  loc_69835A: PutRec3
  loc_69835C: FMemLdUI1 arg_8(632)
  loc_698362: CI2UI1
  loc_698364: FMemLdRf unk_43B66D
  loc_698369: LitI4 1
  loc_69836E: PutRec3
  loc_698370: FMemLdUI1 arg_8(632)
  loc_698376: CI2UI1
  loc_698378: FMemLdRf unk_43B66D
  loc_69837D: LitI4 1
  loc_698382: PutRec3
  loc_698384: FMemLdUI1 arg_8(632)
  loc_69838A: CI2UI1
  loc_69838C: FMemLdRf unk_43B66D
  loc_698391: LitI4 1
  loc_698396: PutRec3
  loc_698398: LitI2_Byte 1
  loc_69839A: FLdRfVar var_8E
  loc_69839D: LitI2_Byte &H20
  loc_69839F: ForI2 var_A8
  loc_6983A5: FMemLdUI1 arg_8(632)
  loc_6983AB: CI2UI1
  loc_6983AD: FLdI2 var_8E
  loc_6983B0: CI4UI1
  loc_6983B1: FMemLdRf unk_43B66D
  loc_6983B6: Ary1LdRf
  loc_6983B7: LitI4 1
  loc_6983BC: PutRec3
  loc_6983BE: FLdRfVar var_8E
  loc_6983C1: NextI2 var_A8, loc_6983A5
  loc_6983C6: LitI2_Byte 1
  loc_6983C8: FLdRfVar var_8E
  loc_6983CB: LitI2_Byte &H10
  loc_6983CD: ForI2 var_AC
  loc_6983D3: FMemLdUI1 arg_8(632)
  loc_6983D9: CI2UI1
  loc_6983DB: FLdI2 var_8E
  loc_6983DE: CI4UI1
  loc_6983DF: FMemLdRf unk_43B66D
  loc_6983E4: Ary1LdRf
  loc_6983E5: LitI4 1
  loc_6983EA: PutRec3
  loc_6983EC: FMemLdUI1 arg_8(632)
  loc_6983F2: CI2UI1
  loc_6983F4: FLdI2 var_8E
  loc_6983F7: CI4UI1
  loc_6983F8: FMemLdRf unk_43B66D
  loc_6983FD: Ary1LdRf
  loc_6983FE: LitI4 1
  loc_698403: PutRec3
  loc_698405: FLdRfVar var_8E
  loc_698408: NextI2 var_AC, loc_6983D3
  loc_69840D: LitI2_Byte 1
  loc_69840F: FLdRfVar var_8E
  loc_698412: LitI2_Byte &HA
  loc_698414: ForI2 var_B0
  loc_69841A: FLdRfVar var_B4
  loc_69841D: FLdI2 var_8E
  loc_698420: ImpAdLdRf MemVar_74A220
  loc_698423: NewIfNullPr clsProducts
  loc_69842B: LitVarI2 var_D4, 25
  loc_698430: LitI4 1
  loc_698435: ILdRf var_B4
  loc_698438: ImpAdCallI2 Mid$(, , )
  loc_69843D: FStStr var_E4
  loc_698440: LitI2_Byte &HFF
  loc_698442: PopTmpLdAd2 var_A4
  loc_698445: LitI2_Byte &H19
  loc_698447: PopTmpLdAd2 var_A2
  loc_69844A: LitStr " "
  loc_69844D: FStStrCopy var_DC
  loc_698450: FLdRfVar var_DC
  loc_698453: FLdZeroAd var_E4
  loc_698456: PopTmpLdAdStr
  loc_69845A: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_69845F: FStStr var_E8
  loc_698462: FMemLdUI1 arg_8(632)
  loc_698468: CI2UI1
  loc_69846A: FLdZeroAd var_E8
  loc_69846D: PopTmpLdAdStr
  loc_698471: LitI4 0
  loc_698476: PutRec3
  loc_698478: FFreeStr var_B4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_698487: FFree1Var var_D4 = ""
  loc_69848A: FLdRfVar var_8E
  loc_69848D: NextI2 var_B0, loc_69841A
  loc_698492: LitI2_Byte 1
  loc_698494: FLdRfVar var_8E
  loc_698497: LitI2_Byte &HA
  loc_698499: ForI2 var_EC
  loc_69849F: FMemLdUI1 arg_8(632)
  loc_6984A5: CI2UI1
  loc_6984A7: FLdRfVar var_A2
  loc_6984AA: FLdI2 var_8E
  loc_6984AD: ImpAdLdRf MemVar_74A220
  loc_6984B0: NewIfNullPr clsProducts
  loc_6984B3:  = clsProducts.Name
  loc_6984B8: FLdI2 var_A2
  loc_6984BB: PopTmpLdAd2 var_A4
  loc_6984BE: LitI4 2
  loc_6984C3: PutRec3
  loc_6984C5: FLdRfVar var_8E
  loc_6984C8: NextI2 var_EC, loc_69849F
  loc_6984CD: LitI2_Byte 1
  loc_6984CF: FLdRfVar var_8E
  loc_6984D2: LitI2_Byte &H10
  loc_6984D4: ForI2 var_F0
  loc_6984DA: FMemLdUI1 arg_8(632)
  loc_6984E0: CI2UI1
  loc_6984E2: FLdI2 var_8E
  loc_6984E5: CI4UI1
  loc_6984E6: FMemLdRf unk_43B66D
  loc_6984EB: Ary1LdRf
  loc_6984EC: LitI4 8
  loc_6984F1: PutRec3
  loc_6984F3: FLdRfVar var_8E
  loc_6984F6: NextI2 var_F0, loc_6984DA
  loc_6984FB: LitI2_Byte 1
  loc_6984FD: FLdRfVar var_8E
  loc_698500: LitI2_Byte &H10
  loc_698502: ForI2 var_F4
  loc_698508: FMemLdUI1 arg_8(632)
  loc_69850E: CI2UI1
  loc_698510: FLdI2 var_8E
  loc_698513: CI4UI1
  loc_698514: FMemLdRf unk_43B66D
  loc_698519: Ary1LdRf
  loc_69851A: LitI4 1
  loc_69851F: PutRec3
  loc_698521: FLdRfVar var_8E
  loc_698524: NextI2 var_F4, loc_698508
  loc_698529: LitI2_Byte 1
  loc_69852B: FLdRfVar var_8E
  loc_69852E: LitI2_Byte &H20
  loc_698530: ForI2 var_F8
  loc_698536: FMemLdUI1 arg_8(632)
  loc_69853C: CI2UI1
  loc_69853E: FLdI2 var_8E
  loc_698541: CI4UI1
  loc_698542: FMemLdRf unk_43B66D
  loc_698547: Ary1LdRf
  loc_698548: LitI4 1
  loc_69854D: PutRec3
  loc_69854F: FLdRfVar var_8E
  loc_698552: NextI2 var_F8, loc_698536
  loc_698557: LitI2_Byte 1
  loc_698559: FLdRfVar var_8E
  loc_69855C: LitI2_Byte &H10
  loc_69855E: ForI2 var_FC
  loc_698564: FMemLdUI1 arg_8(632)
  loc_69856A: CI2UI1
  loc_69856C: FLdI2 var_8E
  loc_69856F: CI4UI1
  loc_698570: FMemLdRf unk_43B66D
  loc_698575: Ary1LdRf
  loc_698576: LitI4 1
  loc_69857B: PutRec3
  loc_69857D: FLdRfVar var_8E
  loc_698580: NextI2 var_FC, loc_698564
  loc_698585: LitI2_Byte 1
  loc_698587: FLdRfVar var_8E
  loc_69858A: LitI2_Byte &H20
  loc_69858C: ForI2 var_100
  loc_698592: FMemLdUI1 arg_8(632)
  loc_698598: CI2UI1
  loc_69859A: FLdI2 var_8E
  loc_69859D: CI4UI1
  loc_69859E: FMemLdRf unk_43B66D
  loc_6985A3: Ary1LdRf
  loc_6985A4: LitI4 1
  loc_6985A9: PutRec3
  loc_6985AB: FLdRfVar var_8E
  loc_6985AE: NextI2 var_100, loc_698592
  loc_6985B3: LitI2_Byte 1
  loc_6985B5: FLdRfVar var_8E
  loc_6985B8: LitI2_Byte &H20
  loc_6985BA: ForI2 var_104
  loc_6985C0: LitI2_Byte 0
  loc_6985C2: CUI1I2
  loc_6985C4: FLdRfVar var_86
  loc_6985C7: LitI2_Byte 3
  loc_6985C9: CUI1I2
  loc_6985CB: ForUI1 var_108
  loc_6985D1: LitI2_Byte 0
  loc_6985D3: CUI1I2
  loc_6985D5: FLdRfVar var_88
  loc_6985D8: LitI2_Byte 2
  loc_6985DA: CUI1I2
  loc_6985DC: ForUI1 var_10C
  loc_6985E2: FMemLdUI1 arg_8(632)
  loc_6985E8: CI2UI1
  loc_6985EA: FLdI2 var_8E
  loc_6985ED: CI4UI1
  loc_6985EE: FLdUI1
  loc_6985F2: CI4UI1
  loc_6985F3: FLdUI1
  loc_6985F7: CI4UI1
  loc_6985F8: FMemLdRf unk_43B66D
  loc_6985FD: AryLdRf
  loc_698600: LitI4 1
  loc_698605: PutRec3
  loc_698607: FLdRfVar var_88
  loc_69860A: NextUI1
  loc_698610: FLdRfVar var_86
  loc_698613: NextUI1
  loc_698619: FLdRfVar var_8E
  loc_69861C: NextI2 var_104, loc_6985C0
  loc_698621: LitI2_Byte 1
  loc_698623: FLdRfVar var_8E
  loc_698626: LitI2_Byte &H20
  loc_698628: ForI2 var_110
  loc_69862E: LitI2_Byte 0
  loc_698630: CUI1I2
  loc_698632: FLdRfVar var_86
  loc_698635: LitI2_Byte 3
  loc_698637: CUI1I2
  loc_698639: ForUI1 var_114
  loc_69863F: FMemLdUI1 arg_8(632)
  loc_698645: CI2UI1
  loc_698647: FLdI2 var_8E
  loc_69864A: CI4UI1
  loc_69864B: FLdUI1
  loc_69864F: CI4UI1
  loc_698650: FMemLdRf unk_43B66D
  loc_698655: AryLdRf
  loc_698658: LitI4 1
  loc_69865D: PutRec3
  loc_69865F: FLdRfVar var_86
  loc_698662: NextUI1
  loc_698668: FLdRfVar var_8E
  loc_69866B: NextI2 var_110, loc_69862E
  loc_698670: LitI2_Byte 1
  loc_698672: FLdRfVar var_8E
  loc_698675: LitI2_Byte &H10
  loc_698677: ForI2 var_118
  loc_69867D: LitI2_Byte 0
  loc_69867F: CUI1I2
  loc_698681: FLdRfVar var_88
  loc_698684: LitI2_Byte 2
  loc_698686: CUI1I2
  loc_698688: ForUI1 var_11C
  loc_69868E: FMemLdUI1 arg_8(632)
  loc_698694: CI2UI1
  loc_698696: FLdI2 var_8E
  loc_698699: CI4UI1
  loc_69869A: FLdUI1
  loc_69869E: CI4UI1
  loc_69869F: FMemLdRf unk_43B66D
  loc_6986A4: AryLdRf
  loc_6986A7: LitI4 1
  loc_6986AC: PutRec3
  loc_6986AE: FLdRfVar var_88
  loc_6986B1: NextUI1
  loc_6986B7: FLdRfVar var_8E
  loc_6986BA: NextI2 var_118, loc_69867D
  loc_6986BF: LitI2_Byte 1
  loc_6986C1: FLdRfVar var_8E
  loc_6986C4: LitI2_Byte &H20
  loc_6986C6: ForI2 var_120
  loc_6986CC: FMemLdUI1 arg_8(632)
  loc_6986D2: CI2UI1
  loc_6986D4: FLdI2 var_8E
  loc_6986D7: CI4UI1
  loc_6986D8: FMemLdRf unk_43B66D
  loc_6986DD: Ary1LdRf
  loc_6986DE: LitI4 1
  loc_6986E3: PutRec3
  loc_6986E5: FLdRfVar var_8E
  loc_6986E8: NextI2 var_120, loc_6986CC
  loc_6986ED: LitI2_Byte 1
  loc_6986EF: FLdRfVar var_8E
  loc_6986F2: LitI2_Byte &H10
  loc_6986F4: ForI2 var_124
  loc_6986FA: FMemLdUI1 arg_8(632)
  loc_698700: CI2UI1
  loc_698702: FLdI2 var_8E
  loc_698705: CI4UI1
  loc_698706: FMemLdRf unk_43B66D
  loc_69870B: Ary1LdRf
  loc_69870C: LitI4 1
  loc_698711: PutRec3
  loc_698713: FLdRfVar var_8E
  loc_698716: NextI2 var_124, loc_6986FA
  loc_69871B: LitI2_Byte 1
  loc_69871D: FLdRfVar var_8E
  loc_698720: LitI2_Byte &H10
  loc_698722: ForI2 var_128
  loc_698728: FMemLdUI1 arg_8(632)
  loc_69872E: CI2UI1
  loc_698730: FLdI2 var_8E
  loc_698733: CI4UI1
  loc_698734: FMemLdRf unk_43B66D
  loc_698739: Ary1LdRf
  loc_69873A: LitI4 2
  loc_69873F: PutRec3
  loc_698741: FLdRfVar var_8E
  loc_698744: NextI2 var_128, loc_698728
  loc_698749: LitI2_Byte 1
  loc_69874B: FLdRfVar var_8E
  loc_69874E: LitI2_Byte &H10
  loc_698750: ForI2 var_12C
  loc_698756: FMemLdUI1 arg_8(632)
  loc_69875C: CI2UI1
  loc_69875E: FLdI2 var_8E
  loc_698761: CI4UI1
  loc_698762: FMemLdRf unk_43B66D
  loc_698767: Ary1LdRf
  loc_698768: LitI4 2
  loc_69876D: PutRec3
  loc_69876F: FLdRfVar var_8E
  loc_698772: NextI2 var_12C, loc_698756
  loc_698777: LitI2_Byte 1
  loc_698779: FLdRfVar var_8E
  loc_69877C: LitI2_Byte &H10
  loc_69877E: ForI2 var_130
  loc_698784: FMemLdUI1 arg_8(632)
  loc_69878A: CI2UI1
  loc_69878C: FLdI2 var_8E
  loc_69878F: CI4UI1
  loc_698790: FMemLdRf unk_43B66D
  loc_698795: Ary1LdRf
  loc_698796: LitI4 2
  loc_69879B: PutRec3
  loc_69879D: FLdRfVar var_8E
  loc_6987A0: NextI2 var_130, loc_698784
  loc_6987A5: LitI2_Byte 1
  loc_6987A7: FLdRfVar var_8E
  loc_6987AA: LitI2_Byte &H10
  loc_6987AC: ForI2 var_134
  loc_6987B2: FMemLdUI1 arg_8(632)
  loc_6987B8: CI2UI1
  loc_6987BA: FLdI2 var_8E
  loc_6987BD: CI4UI1
  loc_6987BE: FMemLdRf unk_43B66D
  loc_6987C3: Ary1LdRf
  loc_6987C4: LitI4 2
  loc_6987C9: PutRec3
  loc_6987CB: FLdRfVar var_8E
  loc_6987CE: NextI2 var_134, loc_6987B2
  loc_6987D3: LitI2_Byte 1
  loc_6987D5: FLdRfVar var_8E
  loc_6987D8: LitI2_Byte 4
  loc_6987DA: ForI2 var_138
  loc_6987E0: FMemLdUI1 arg_8(632)
  loc_6987E6: CI2UI1
  loc_6987E8: FLdI2 var_8E
  loc_6987EB: CI4UI1
  loc_6987EC: FMemLdRf unk_43B66D
  loc_6987F1: Ary1LdRf
  loc_6987F2: LitI4 2
  loc_6987F7: PutRec3
  loc_6987F9: FLdRfVar var_8E
  loc_6987FC: NextI2 var_138, loc_6987E0
  loc_698801: LitI2_Byte 1
  loc_698803: CUI1I2
  loc_698805: FLdRfVar var_86
  loc_698808: LitI2_Byte 5
  loc_69880A: CUI1I2
  loc_69880C: ForUI1 var_13C
  loc_698812: LitI2_Byte 1
  loc_698814: FLdRfVar var_8E
  loc_698817: LitI2_Byte &HA
  loc_698819: ForI2 var_140
  loc_69881F: FMemLdUI1 arg_8(632)
  loc_698825: CI2UI1
  loc_698827: FLdUI1
  loc_69882B: CI4UI1
  loc_69882C: FLdI2 var_8E
  loc_69882F: CI4UI1
  loc_698830: FMemLdRf unk_43B66D
  loc_698835: AryLdRf
  loc_698838: LitI4 8
  loc_69883D: PutRec3
  loc_69883F: FLdRfVar var_8E
  loc_698842: NextI2 var_140, loc_69881F
  loc_698847: FLdRfVar var_86
  loc_69884A: NextUI1
  loc_698850: LitI2_Byte 1
  loc_698852: FLdRfVar var_8E
  loc_698855: LitI2_Byte &H20
  loc_698857: ForI2 var_144
  loc_69885D: FMemLdUI1 arg_8(632)
  loc_698863: CI2UI1
  loc_698865: FLdI2 var_8E
  loc_698868: CI4UI1
  loc_698869: FMemLdRf unk_43B66D
  loc_69886E: Ary1LdRf
  loc_69886F: LitI4 1
  loc_698874: PutRec3
  loc_698876: FLdRfVar var_8E
  loc_698879: NextI2 var_144, loc_69885D
  loc_69887E: LitI2_Byte 1
  loc_698880: FLdRfVar var_8E
  loc_698883: LitI2_Byte &H20
  loc_698885: ForI2 var_148
  loc_69888B: FMemLdUI1 arg_8(632)
  loc_698891: CI2UI1
  loc_698893: FLdI2 var_8E
  loc_698896: CI4UI1
  loc_698897: FMemLdRf unk_43B66D
  loc_69889C: Ary1LdRf
  loc_69889D: LitI4 1
  loc_6988A2: PutRec3
  loc_6988A4: FLdRfVar var_8E
  loc_6988A7: NextI2 var_148, loc_69888B
  loc_6988AC: LitStr "CEM44.INI"
  loc_6988AF: FLdRfVar var_DC
  loc_6988B2: CStr2Ansi
  loc_6988B3: ILdRf var_DC
  loc_6988B6: LitI4 1
  loc_6988BB: LitStr "ACTIVE_OLD_DECIMAL_OPTION"
  loc_6988BE: FLdRfVar var_D8
  loc_6988C1: CStr2Ansi
  loc_6988C2: ILdRf var_D8
  loc_6988C5: LitStr "GENERAL"
  loc_6988C8: FLdRfVar var_B4
  loc_6988CB: CStr2Ansi
  loc_6988CC: ILdRf var_B4
  loc_6988CF: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6988D4: FStR4 var_14C
  loc_6988D7: SetLastSystemError
  loc_6988D8: ILdRf var_14C
  loc_6988DB: CUI1I4
  loc_6988DD: FStUI1 var_8C
  loc_6988E1: FFreeStr var_B4 = "": var_D8 = ""
  loc_6988EA: FLdUI1
  loc_6988EE: CI2UI1
  loc_6988F0: LitI2_Byte 0
  loc_6988F2: NeI2
  loc_6988F3: BranchF loc_698903
  loc_6988F6: FMemLdUI1 arg_8(1041)
  loc_6988FC: FStUI1 var_8A
  loc_698900: Branch loc_69891D
  loc_698903: FMemLdUI1 arg_8(1040)
  loc_698909: CI2UI1
  loc_69890B: LitI2_Byte &H10
  loc_69890D: MulI2
  loc_69890E: FMemLdUI1 arg_8(1041)
  loc_698914: CI2UI1
  loc_698916: OrI4
  loc_698917: CUI1I2
  loc_698919: FStUI1 var_8A
  loc_69891D: FMemLdUI1 arg_8(632)
  loc_698923: CI2UI1
  loc_698925: FLdRfVar var_8A
  loc_698928: LitI4 1
  loc_69892D: PutRec3
  loc_69892F: ExitProc
  loc_698930: ImpAdCallFPR4 Proc_167_24_6719D8()
  loc_698935: ExitProc
End Function

Private Function Proc_167_24_6719D8() '6719D8
  'Data Table: 43B664
  loc_6715D4: CloseAll
  loc_6715D6: ImpAdCallFPR4 Beep()
  loc_6715DB: FLdRfVar var_1D4
  loc_6715DE: LitVar_Missing var_1D0
  loc_6715E1: LitVar_Missing var_1B0
  loc_6715E4: LitVar_Missing var_190
  loc_6715E7: LitVar_Missing var_170
  loc_6715EA: LitVar_Missing var_150
  loc_6715ED: LitVar_Missing var_130
  loc_6715F0: LitVar_Missing var_110
  loc_6715F3: LitVar_Missing var_F0
  loc_6715F6: LitVar_Missing var_D0
  loc_6715F9: LitVar_Missing var_B0
  loc_6715FC: LitStr "ERROR  EN  LA  GRABACION  DEL  ARCHIVO"
  loc_6715FF: FStStrCopy var_90
  loc_671602: FLdRfVar var_90
  loc_671605: LitI4 &H6E
  loc_67160A: PopTmpLdAdStr var_8C
  loc_67160D: LitI2_Byte 9
  loc_67160F: PopTmpLdAd2 var_86
  loc_671612: ImpAdLdRf MemVar_74C7D0
  loc_671615: NewIfNullPr clsMsg
  loc_671618: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67161D: FLdZeroAd var_1D4
  loc_671620: FMemStStr arg_8(1572)
  loc_671626: FFree1Str var_90
  loc_671629: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_671640: FLdRfVar var_1D4
  loc_671643: LitVar_Missing var_1D0
  loc_671646: LitVar_Missing var_1B0
  loc_671649: LitVar_Missing var_190
  loc_67164C: LitVar_Missing var_170
  loc_67164F: LitVar_Missing var_150
  loc_671652: LitVar_Missing var_130
  loc_671655: LitVar_Missing var_110
  loc_671658: LitVar_Missing var_F0
  loc_67165B: LitVar_Missing var_D0
  loc_67165E: LitVar_Missing var_B0
  loc_671661: LitStr "El Diskette no tiene espacio para más Archivos."
  loc_671664: FStStrCopy var_90
  loc_671667: FLdRfVar var_90
  loc_67166A: LitI4 &H6F
  loc_67166F: PopTmpLdAdStr var_8C
  loc_671672: LitI2_Byte 9
  loc_671674: PopTmpLdAd2 var_86
  loc_671677: ImpAdLdRf MemVar_74C7D0
  loc_67167A: NewIfNullPr clsMsg
  loc_67167D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_671682: FLdZeroAd var_1D4
  loc_671685: FMemStStr arg_8(1576)
  loc_67168B: FFree1Str var_90
  loc_67168E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6716A5: FLdRfVar var_1D4
  loc_6716A8: LitVar_Missing var_1D0
  loc_6716AB: LitVar_Missing var_1B0
  loc_6716AE: LitVar_Missing var_190
  loc_6716B1: LitVar_Missing var_170
  loc_6716B4: LitVar_Missing var_150
  loc_6716B7: LitVar_Missing var_130
  loc_6716BA: LitVar_Missing var_110
  loc_6716BD: LitVar_Missing var_F0
  loc_6716C0: LitVar_Missing var_D0
  loc_6716C3: LitVar_Missing var_B0
  loc_6716C6: LitStr "El Diskette está protegido contra Escritura."
  loc_6716C9: FStStrCopy var_90
  loc_6716CC: FLdRfVar var_90
  loc_6716CF: LitI4 &H70
  loc_6716D4: PopTmpLdAdStr var_8C
  loc_6716D7: LitI2_Byte 9
  loc_6716D9: PopTmpLdAd2 var_86
  loc_6716DC: ImpAdLdRf MemVar_74C7D0
  loc_6716DF: NewIfNullPr clsMsg
  loc_6716E2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6716E7: FLdZeroAd var_1D4
  loc_6716EA: FMemStStr arg_8(1580)
  loc_6716F0: FFree1Str var_90
  loc_6716F3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_67170A: FLdRfVar var_8C
  loc_67170D: ImpAdCallI2 Err 'rtcErrObj
  loc_671712: FStAdFunc var_1D8
  loc_671715: FLdPr var_1D8
  loc_671718:  = Err.Number
  loc_67171D: ILdRf var_8C
  loc_671720: FStR4 var_1DC
  loc_671723: FFree1Ad var_1D8
  loc_671726: ILdRf var_1DC
  loc_671729: LitI4 &H34
  loc_67172E: EqI4
  loc_67172F: BranchF loc_67178E
  loc_671732: LitI4 &HD
  loc_671737: FLdRfVar var_B0
  loc_67173A: ImpAdCallFPR4  = Chr()
  loc_67173F: LitI4 &HA
  loc_671744: FLdRfVar var_F0
  loc_671747: ImpAdCallFPR4  = Chr()
  loc_67174C: LitVar_Missing var_150
  loc_67174F: LitVar_Missing var_130
  loc_671752: FMemLdRf unk_43B66D
  loc_671757: CVarRef
  loc_67175C: LitI4 &H10
  loc_671761: FMemLdR4 arg_8(1552)
  loc_671766: CVarStr var_A0
  loc_671769: FLdRfVar var_B0
  loc_67176C: ConcatVar var_D0
  loc_671770: FLdRfVar var_F0
  loc_671773: ConcatVar var_110
  loc_671777: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67177C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_67178B: Branch loc_6719D4
  loc_67178E: ILdRf var_1DC
  loc_671791: LitI4 &H39
  loc_671796: EqI4
  loc_671797: BranchT loc_6717A6
  loc_67179A: ILdRf var_1DC
  loc_67179D: LitI4 &H44
  loc_6717A2: EqI4
  loc_6717A3: BranchF loc_671802
  loc_6717A6: LitI4 &HD
  loc_6717AB: FLdRfVar var_B0
  loc_6717AE: ImpAdCallFPR4  = Chr()
  loc_6717B3: LitI4 &HA
  loc_6717B8: FLdRfVar var_F0
  loc_6717BB: ImpAdCallFPR4  = Chr()
  loc_6717C0: LitVar_Missing var_150
  loc_6717C3: LitVar_Missing var_130
  loc_6717C6: FMemLdRf unk_43B66D
  loc_6717CB: CVarRef
  loc_6717D0: LitI4 &H10
  loc_6717D5: FMemLdR4 arg_8(1564)
  loc_6717DA: CVarStr var_A0
  loc_6717DD: FLdRfVar var_B0
  loc_6717E0: ConcatVar var_D0
  loc_6717E4: FLdRfVar var_F0
  loc_6717E7: ConcatVar var_110
  loc_6717EB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6717F0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_6717FF: Branch loc_6719D4
  loc_671802: ILdRf var_1DC
  loc_671805: LitI4 &H37
  loc_67180A: EqI4
  loc_67180B: BranchT loc_671826
  loc_67180E: ILdRf var_1DC
  loc_671811: LitI4 &H3D
  loc_671816: EqI4
  loc_671817: BranchT loc_671826
  loc_67181A: ILdRf var_1DC
  loc_67181D: LitI4 &H43
  loc_671822: EqI4
  loc_671823: BranchF loc_6718B9
  loc_671826: LitI4 &HD
  loc_67182B: FLdRfVar var_B0
  loc_67182E: ImpAdCallFPR4  = Chr()
  loc_671833: LitI4 &HA
  loc_671838: FLdRfVar var_F0
  loc_67183B: ImpAdCallFPR4  = Chr()
  loc_671840: LitVar_Missing var_150
  loc_671843: LitVar_Missing var_130
  loc_671846: FMemLdRf unk_43B66D
  loc_67184B: CVarRef
  loc_671850: LitI4 &H10
  loc_671855: FMemLdR4 arg_8(1576)
  loc_67185A: CVarStr var_A0
  loc_67185D: FLdRfVar var_B0
  loc_671860: ConcatVar var_D0
  loc_671864: FLdRfVar var_F0
  loc_671867: ConcatVar var_110
  loc_67186B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_671870: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_67187F: LitI4 0
  loc_671884: LitVarStr var_A0, "A:\SETUP.CFG"
  loc_671889: FStVarCopyObj var_B0
  loc_67188C: FLdRfVar var_B0
  loc_67188F: ImpAdCallI2 push Dir(, )
  loc_671894: FStStrNoPop var_90
  loc_671897: FnLenStr
  loc_671898: CBoolI4
  loc_67189A: FFree1Str var_90
  loc_67189D: FFree1Var var_B0 = ""
  loc_6718A0: BranchF loc_6718B6
  loc_6718A3: LitVarStr var_A0, "A:\SETUP.CFG"
  loc_6718A8: FStVarCopyObj var_B0
  loc_6718AB: FLdRfVar var_B0
  loc_6718AE: ImpAdCallFPR4 Kill 
  loc_6718B3: FFree1Var var_B0 = ""
  loc_6718B6: Branch loc_6719D4
  loc_6718B9: ILdRf var_1DC
  loc_6718BC: LitI4 &H46
  loc_6718C1: EqI4
  loc_6718C2: BranchF loc_671921
  loc_6718C5: LitI4 &HD
  loc_6718CA: FLdRfVar var_B0
  loc_6718CD: ImpAdCallFPR4  = Chr()
  loc_6718D2: LitI4 &HA
  loc_6718D7: FLdRfVar var_F0
  loc_6718DA: ImpAdCallFPR4  = Chr()
  loc_6718DF: LitVar_Missing var_150
  loc_6718E2: LitVar_Missing var_130
  loc_6718E5: FMemLdRf unk_43B66D
  loc_6718EA: CVarRef
  loc_6718EF: LitI4 &H10
  loc_6718F4: FMemLdR4 arg_8(1580)
  loc_6718F9: CVarStr var_A0
  loc_6718FC: FLdRfVar var_B0
  loc_6718FF: ConcatVar var_D0
  loc_671903: FLdRfVar var_F0
  loc_671906: ConcatVar var_110
  loc_67190A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67190F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_67191E: Branch loc_6719D4
  loc_671921: ILdRf var_1DC
  loc_671924: LitI4 &H47
  loc_671929: EqI4
  loc_67192A: BranchF loc_671989
  loc_67192D: LitI4 &HD
  loc_671932: FLdRfVar var_B0
  loc_671935: ImpAdCallFPR4  = Chr()
  loc_67193A: LitI4 &HA
  loc_67193F: FLdRfVar var_F0
  loc_671942: ImpAdCallFPR4  = Chr()
  loc_671947: LitVar_Missing var_150
  loc_67194A: LitVar_Missing var_130
  loc_67194D: FMemLdRf unk_43B66D
  loc_671952: CVarRef
  loc_671957: LitI4 &H10
  loc_67195C: FMemLdR4 arg_8(1568)
  loc_671961: CVarStr var_A0
  loc_671964: FLdRfVar var_B0
  loc_671967: ConcatVar var_D0
  loc_67196B: FLdRfVar var_F0
  loc_67196E: ConcatVar var_110
  loc_671972: ImpAdCallFPR4 MsgBox(, , , , )
  loc_671977: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_671986: Branch loc_6719D4
  loc_671989: ILdRf var_1DC
  loc_67198C: LitI4 &H35
  loc_671991: EqI4
  loc_671992: BranchF loc_671998
  loc_671995: Branch loc_6719D4
  loc_671998: ILdRf var_1DC
  loc_67199B: LitI4 &H3A
  loc_6719A0: EqI4
  loc_6719A1: BranchF loc_6719A7
  loc_6719A4: Branch loc_6719D4
  loc_6719A7: ILdRf var_1DC
  loc_6719AA: LitI4 &H3E
  loc_6719AF: EqI4
  loc_6719B0: BranchF loc_6719B6
  loc_6719B3: Branch loc_6719D4
  loc_6719B6: ILdRf var_1DC
  loc_6719B9: LitI4 &H4B
  loc_6719BE: EqI4
  loc_6719BF: BranchF loc_6719C5
  loc_6719C2: Branch loc_6719D4
  loc_6719C5: ILdRf var_1DC
  loc_6719C8: LitI4 &H4C
  loc_6719CD: EqI4
  loc_6719CE: BranchF loc_6719D4
  loc_6719D1: Branch loc_6719D4
  loc_6719D4: ExitProc
End Function

Private Function Proc_167_25_6703EC() '6703EC
  'Data Table: 43B664
  loc_66FFF4: CloseAll
  loc_66FFF6: ImpAdCallFPR4 Beep()
  loc_66FFFB: FLdRfVar var_1D4
  loc_66FFFE: LitVar_Missing var_1D0
  loc_670001: LitVar_Missing var_1B0
  loc_670004: LitVar_Missing var_190
  loc_670007: LitVar_Missing var_170
  loc_67000A: LitVar_Missing var_150
  loc_67000D: LitVar_Missing var_130
  loc_670010: LitVar_Missing var_110
  loc_670013: LitVar_Missing var_F0
  loc_670016: LitVar_Missing var_D0
  loc_670019: LitVar_Missing var_B0
  loc_67001C: LitStr "ERROR  EN  LA  CARGA  DEL  ARCHIVO"
  loc_67001F: FStStrCopy var_90
  loc_670022: FLdRfVar var_90
  loc_670025: LitI4 &H69
  loc_67002A: PopTmpLdAdStr var_8C
  loc_67002D: LitI2_Byte 9
  loc_67002F: PopTmpLdAd2 var_86
  loc_670032: ImpAdLdRf MemVar_74C7D0
  loc_670035: NewIfNullPr clsMsg
  loc_670038: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67003D: FLdZeroAd var_1D4
  loc_670040: FMemStStr arg_8(1560)
  loc_670046: FFree1Str var_90
  loc_670049: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_670060: FLdRfVar var_1D4
  loc_670063: LitVar_Missing var_1D0
  loc_670066: LitVar_Missing var_1B0
  loc_670069: LitVar_Missing var_190
  loc_67006C: LitVar_Missing var_170
  loc_67006F: LitVar_Missing var_150
  loc_670072: LitVar_Missing var_130
  loc_670075: LitVar_Missing var_110
  loc_670078: LitVar_Missing var_F0
  loc_67007B: LitVar_Missing var_D0
  loc_67007E: LitVar_Missing var_B0
  loc_670081: LitStr "El Formateo del Diskette presenta fallas."
  loc_670084: FStStrCopy var_90
  loc_670087: FLdRfVar var_90
  loc_67008A: LitI4 &H6A
  loc_67008F: PopTmpLdAdStr var_8C
  loc_670092: LitI2_Byte 9
  loc_670094: PopTmpLdAd2 var_86
  loc_670097: ImpAdLdRf MemVar_74C7D0
  loc_67009A: NewIfNullPr clsMsg
  loc_67009D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6700A2: FLdZeroAd var_1D4
  loc_6700A5: FMemStStr arg_8(1552)
  loc_6700AB: FFree1Str var_90
  loc_6700AE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6700C5: FLdRfVar var_1D4
  loc_6700C8: LitVar_Missing var_1D0
  loc_6700CB: LitVar_Missing var_1B0
  loc_6700CE: LitVar_Missing var_190
  loc_6700D1: LitVar_Missing var_170
  loc_6700D4: LitVar_Missing var_150
  loc_6700D7: LitVar_Missing var_130
  loc_6700DA: LitVar_Missing var_110
  loc_6700DD: LitVar_Missing var_F0
  loc_6700E0: LitVar_Missing var_D0
  loc_6700E3: LitVar_Missing var_B0
  loc_6700E6: LitStr "El Archivo de Configuración no se encuentra en el Diskette."
  loc_6700E9: FStStrCopy var_90
  loc_6700EC: FLdRfVar var_90
  loc_6700EF: LitI4 &H6B
  loc_6700F4: PopTmpLdAdStr var_8C
  loc_6700F7: LitI2_Byte 9
  loc_6700F9: PopTmpLdAd2 var_86
  loc_6700FC: ImpAdLdRf MemVar_74C7D0
  loc_6700FF: NewIfNullPr clsMsg
  loc_670102: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_670107: FLdZeroAd var_1D4
  loc_67010A: FMemStStr arg_8(1556)
  loc_670110: FFree1Str var_90
  loc_670113: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_67012A: FLdRfVar var_1D4
  loc_67012D: LitVar_Missing var_1D0
  loc_670130: LitVar_Missing var_1B0
  loc_670133: LitVar_Missing var_190
  loc_670136: LitVar_Missing var_170
  loc_670139: LitVar_Missing var_150
  loc_67013C: LitVar_Missing var_130
  loc_67013F: LitVar_Missing var_110
  loc_670142: LitVar_Missing var_F0
  loc_670145: LitVar_Missing var_D0
  loc_670148: LitVar_Missing var_B0
  loc_67014B: LitStr "El Diskette Drive presenta fallas mecánicas."
  loc_67014E: FStStrCopy var_90
  loc_670151: FLdRfVar var_90
  loc_670154: LitI4 &H6C
  loc_670159: PopTmpLdAdStr var_8C
  loc_67015C: LitI2_Byte 9
  loc_67015E: PopTmpLdAd2 var_86
  loc_670161: ImpAdLdRf MemVar_74C7D0
  loc_670164: NewIfNullPr clsMsg
  loc_670167: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67016C: FLdZeroAd var_1D4
  loc_67016F: FMemStStr arg_8(1564)
  loc_670175: FFree1Str var_90
  loc_670178: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_67018F: FLdRfVar var_1D4
  loc_670192: LitVar_Missing var_1D0
  loc_670195: LitVar_Missing var_1B0
  loc_670198: LitVar_Missing var_190
  loc_67019B: LitVar_Missing var_170
  loc_67019E: LitVar_Missing var_150
  loc_6701A1: LitVar_Missing var_130
  loc_6701A4: LitVar_Missing var_110
  loc_6701A7: LitVar_Missing var_F0
  loc_6701AA: LitVar_Missing var_D0
  loc_6701AD: LitVar_Missing var_B0
  loc_6701B0: LitStr "Insertar el Diskette en el Drive."
  loc_6701B3: FStStrCopy var_90
  loc_6701B6: FLdRfVar var_90
  loc_6701B9: LitI4 &H6D
  loc_6701BE: PopTmpLdAdStr var_8C
  loc_6701C1: LitI2_Byte 9
  loc_6701C3: PopTmpLdAd2 var_86
  loc_6701C6: ImpAdLdRf MemVar_74C7D0
  loc_6701C9: NewIfNullPr clsMsg
  loc_6701CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6701D1: FLdZeroAd var_1D4
  loc_6701D4: FMemStStr arg_8(1568)
  loc_6701DA: FFree1Str var_90
  loc_6701DD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6701F4: FLdRfVar var_8C
  loc_6701F7: ImpAdCallI2 Err 'rtcErrObj
  loc_6701FC: FStAdFunc var_1D8
  loc_6701FF: FLdPr var_1D8
  loc_670202:  = Err.Number
  loc_670207: ILdRf var_8C
  loc_67020A: FStR4 var_1DC
  loc_67020D: FFree1Ad var_1D8
  loc_670210: ILdRf var_1DC
  loc_670213: LitI4 &H34
  loc_670218: EqI4
  loc_670219: BranchF loc_670278
  loc_67021C: LitI4 &HD
  loc_670221: FLdRfVar var_B0
  loc_670224: ImpAdCallFPR4  = Chr()
  loc_670229: LitI4 &HA
  loc_67022E: FLdRfVar var_F0
  loc_670231: ImpAdCallFPR4  = Chr()
  loc_670236: LitVar_Missing var_150
  loc_670239: LitVar_Missing var_130
  loc_67023C: FMemLdRf unk_43B66D
  loc_670241: CVarRef
  loc_670246: LitI4 &H10
  loc_67024B: FMemLdR4 arg_8(1552)
  loc_670250: CVarStr var_A0
  loc_670253: FLdRfVar var_B0
  loc_670256: ConcatVar var_D0
  loc_67025A: FLdRfVar var_F0
  loc_67025D: ConcatVar var_110
  loc_670261: ImpAdCallFPR4 MsgBox(, , , , )
  loc_670266: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_670275: Branch loc_6703E9
  loc_670278: ILdRf var_1DC
  loc_67027B: LitI4 &H35
  loc_670280: EqI4
  loc_670281: BranchF loc_6702E0
  loc_670284: LitI4 &HD
  loc_670289: FLdRfVar var_B0
  loc_67028C: ImpAdCallFPR4  = Chr()
  loc_670291: LitI4 &HA
  loc_670296: FLdRfVar var_F0
  loc_670299: ImpAdCallFPR4  = Chr()
  loc_67029E: LitVar_Missing var_150
  loc_6702A1: LitVar_Missing var_130
  loc_6702A4: FMemLdRf unk_43B66D
  loc_6702A9: CVarRef
  loc_6702AE: LitI4 &H10
  loc_6702B3: FMemLdR4 arg_8(1556)
  loc_6702B8: CVarStr var_A0
  loc_6702BB: FLdRfVar var_B0
  loc_6702BE: ConcatVar var_D0
  loc_6702C2: FLdRfVar var_F0
  loc_6702C5: ConcatVar var_110
  loc_6702C9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6702CE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_6702DD: Branch loc_6703E9
  loc_6702E0: ILdRf var_1DC
  loc_6702E3: LitI4 &H39
  loc_6702E8: EqI4
  loc_6702E9: BranchT loc_6702F8
  loc_6702EC: ILdRf var_1DC
  loc_6702EF: LitI4 &H44
  loc_6702F4: EqI4
  loc_6702F5: BranchF loc_670354
  loc_6702F8: LitI4 &HD
  loc_6702FD: FLdRfVar var_B0
  loc_670300: ImpAdCallFPR4  = Chr()
  loc_670305: LitI4 &HA
  loc_67030A: FLdRfVar var_F0
  loc_67030D: ImpAdCallFPR4  = Chr()
  loc_670312: LitVar_Missing var_150
  loc_670315: LitVar_Missing var_130
  loc_670318: FMemLdRf unk_43B66D
  loc_67031D: CVarRef
  loc_670322: LitI4 &H10
  loc_670327: FMemLdR4 arg_8(1564)
  loc_67032C: CVarStr var_A0
  loc_67032F: FLdRfVar var_B0
  loc_670332: ConcatVar var_D0
  loc_670336: FLdRfVar var_F0
  loc_670339: ConcatVar var_110
  loc_67033D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_670342: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_670351: Branch loc_6703E9
  loc_670354: ILdRf var_1DC
  loc_670357: LitI4 &H47
  loc_67035C: EqI4
  loc_67035D: BranchF loc_6703BC
  loc_670360: LitI4 &HD
  loc_670365: FLdRfVar var_B0
  loc_670368: ImpAdCallFPR4  = Chr()
  loc_67036D: LitI4 &HA
  loc_670372: FLdRfVar var_F0
  loc_670375: ImpAdCallFPR4  = Chr()
  loc_67037A: LitVar_Missing var_150
  loc_67037D: LitVar_Missing var_130
  loc_670380: FMemLdRf unk_43B66D
  loc_670385: CVarRef
  loc_67038A: LitI4 &H10
  loc_67038F: FMemLdR4 arg_8(1568)
  loc_670394: CVarStr var_A0
  loc_670397: FLdRfVar var_B0
  loc_67039A: ConcatVar var_D0
  loc_67039E: FLdRfVar var_F0
  loc_6703A1: ConcatVar var_110
  loc_6703A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6703AA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_6703B9: Branch loc_6703E9
  loc_6703BC: ILdRf var_1DC
  loc_6703BF: LitI4 &H3E
  loc_6703C4: EqI4
  loc_6703C5: BranchF loc_6703CB
  loc_6703C8: Branch loc_6703E9
  loc_6703CB: ILdRf var_1DC
  loc_6703CE: LitI4 &H4B
  loc_6703D3: EqI4
  loc_6703D4: BranchF loc_6703DA
  loc_6703D7: Branch loc_6703E9
  loc_6703DA: ILdRf var_1DC
  loc_6703DD: LitI4 &H4C
  loc_6703E2: EqI4
  loc_6703E3: BranchF loc_6703E9
  loc_6703E6: Branch loc_6703E9
  loc_6703E9: ExitProc
End Function

Private Function Proc_167_26_62E538() '62E538
  'Data Table: 402C3C
  loc_62E3FC: ImpAdCallI2 HLAvail()
  loc_62E401: FStI2 var_86
  loc_62E404: SetLastSystemError
  loc_62E405: FLdI2 var_86
  loc_62E408: LitI2_Byte 0
  loc_62E40A: NeI2
  loc_62E40B: BranchF loc_62E536
  loc_62E40E: FLdRfVar var_1D4
  loc_62E411: LitVar_Missing var_1D0
  loc_62E414: LitVar_Missing var_1B0
  loc_62E417: LitVar_Missing var_190
  loc_62E41A: LitVar_Missing var_170
  loc_62E41D: LitVar_Missing var_150
  loc_62E420: LitVar_Missing var_130
  loc_62E423: LitVar_Missing var_110
  loc_62E426: LitVar_Missing var_F0
  loc_62E429: LitVar_Missing var_D0
  loc_62E42C: LitVar_Missing var_B0
  loc_62E42F: LitStr "No es posible encontrar el HardLock."
  loc_62E432: FStStrCopy var_90
  loc_62E435: FLdRfVar var_90
  loc_62E438: LitI4 1
  loc_62E43D: PopTmpLdAdStr var_8C
  loc_62E440: LitI2_Byte &H22
  loc_62E442: PopTmpLdAd2 var_86
  loc_62E445: ImpAdLdRf MemVar_74C7D0
  loc_62E448: NewIfNullPr clsMsg
  loc_62E44B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62E450: LitI4 &HD
  loc_62E455: ImpAdCallI2 Chr$()
  loc_62E45A: FStStr var_3A8
  loc_62E45D: LitI4 &HA
  loc_62E462: ImpAdCallI2 Chr$()
  loc_62E467: FStStr var_3AC
  loc_62E46A: FLdRfVar var_330
  loc_62E46D: LitVar_Missing var_32C
  loc_62E470: LitVar_Missing var_30C
  loc_62E473: LitVar_Missing var_2EC
  loc_62E476: LitVar_Missing var_2CC
  loc_62E479: LitVar_Missing var_2AC
  loc_62E47C: LitVar_Missing var_28C
  loc_62E47F: LitVar_Missing var_26C
  loc_62E482: LitVar_Missing var_24C
  loc_62E485: LitVar_Missing var_22C
  loc_62E488: LitVar_Missing var_20C
  loc_62E48B: LitStr "Verifique la conexión del HardLock al puerto de la impresora."
  loc_62E48E: FStStrCopy var_1EC
  loc_62E491: FLdRfVar var_1EC
  loc_62E494: LitI4 2
  loc_62E499: PopTmpLdAdStr var_1E8
  loc_62E49C: LitI2_Byte &H22
  loc_62E49E: PopTmpLdAd2 var_1E2
  loc_62E4A1: ImpAdLdRf MemVar_74C7D0
  loc_62E4A4: NewIfNullPr clsMsg
  loc_62E4A7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62E4AC: LitVar_Missing var_3A4
  loc_62E4AF: LitVar_Missing var_384
  loc_62E4B2: LitVar_Missing var_364
  loc_62E4B5: LitI4 &H40
  loc_62E4BA: ILdRf var_1D4
  loc_62E4BD: FLdZeroAd var_3A8
  loc_62E4C0: FStStrNoPop var_1D8
  loc_62E4C3: ConcatStr
  loc_62E4C4: FStStrNoPop var_1DC
  loc_62E4C7: FLdZeroAd var_3AC
  loc_62E4CA: FStStrNoPop var_1E0
  loc_62E4CD: ConcatStr
  loc_62E4CE: FStStrNoPop var_334
  loc_62E4D1: ILdRf var_330
  loc_62E4D4: ConcatStr
  loc_62E4D5: CVarStr var_344
  loc_62E4D8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62E4DD: FFreeStr var_90 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1EC = "": var_334 = "": var_330 = "": var_3A8 = ""
  loc_62E4F4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_344 = "": var_364 = "": var_384 = ""
  loc_62E527: ImpAdCallFPR4 HLLogout()
  loc_62E52C: SetLastSystemError
  loc_62E52D: ImpAdCallFPR4 HLLogin()
  loc_62E532: SetLastSystemError
  loc_62E533: Branch loc_62E3FC
  loc_62E536: ExitProc
End Function

Private Function Proc_167_27_69B6AC() '69B6AC
  'Data Table: 402C3C
  loc_69B214: FLdRfVar var_88
  loc_69B217: ImpAdCallI2  = Proc_167_1_5F9EB0()
  loc_69B21C: NotI4
  loc_69B21D: BranchF loc_69B237
  loc_69B220: FLdRfVar var_98
  loc_69B223: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69B228: FLdRfVar var_98
  loc_69B22B: CBoolVarNull
  loc_69B22D: FFree1Var var_98 = ""
  loc_69B230: BranchF loc_69B234
  loc_69B233: ExitProc
  loc_69B234: Branch loc_69B214
  loc_69B237: FLdRfVar var_88
  loc_69B23A: CVarRef
  loc_69B23F: FLdRfVar var_98
  loc_69B242: ImpAdCallFPR4  = Trim()
  loc_69B247: FLdRfVar var_98
  loc_69B24A: CStrVarTmp
  loc_69B24B: FStStr var_88
  loc_69B24E: FFree1Var var_98 = ""
  loc_69B251: ILdRf var_88
  loc_69B254: FnLenStr
  loc_69B255: LitI4 1
  loc_69B25A: GtI4
  loc_69B25B: BranchF loc_69B6A9
  loc_69B25E: LitI4 1
  loc_69B263: ILdRf var_88
  loc_69B266: ImpAdCallI2 Right$(, )
  loc_69B26B: FStStrNoPop var_AC
  loc_69B26E: CR8Str
  loc_69B270: LitI2_Byte 0
  loc_69B272: CR8I2
  loc_69B273: GtR4
  loc_69B274: FFree1Str var_AC
  loc_69B277: BranchF loc_69B6A9
  loc_69B27A: FLdRfVar var_1D8
  loc_69B27D: LitVar_Missing var_1D4
  loc_69B280: LitVar_Missing var_1B4
  loc_69B283: LitVar_Missing var_194
  loc_69B286: LitVar_Missing var_174
  loc_69B289: LitVar_Missing var_154
  loc_69B28C: LitVar_Missing var_134
  loc_69B28F: LitVar_Missing var_114
  loc_69B292: LitVar_Missing var_F4
  loc_69B295: LitVar_Missing var_D4
  loc_69B298: LitVar_Missing var_98
  loc_69B29B: LitStr "Atención:"
  loc_69B29E: FStStrCopy var_AC
  loc_69B2A1: FLdRfVar var_AC
  loc_69B2A4: LitI4 3
  loc_69B2A9: PopTmpLdAdStr var_B4
  loc_69B2AC: LitI2_Byte &H22
  loc_69B2AE: PopTmpLdAd2 var_AE
  loc_69B2B1: ImpAdLdRf MemVar_74C7D0
  loc_69B2B4: NewIfNullPr clsMsg
  loc_69B2B7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B2BC: LitI4 &HD
  loc_69B2C1: ImpAdCallI2 Chr$()
  loc_69B2C6: FStStr var_AAC
  loc_69B2C9: LitI4 &HA
  loc_69B2CE: ImpAdCallI2 Chr$()
  loc_69B2D3: FStStr var_AB0
  loc_69B2D6: FLdRfVar var_338
  loc_69B2D9: LitVar_Missing var_334
  loc_69B2DC: LitVar_Missing var_314
  loc_69B2DF: LitVar_Missing var_2F4
  loc_69B2E2: LitVar_Missing var_2D4
  loc_69B2E5: LitVar_Missing var_2B4
  loc_69B2E8: LitVar_Missing var_294
  loc_69B2EB: LitVar_Missing var_274
  loc_69B2EE: LitVar_Missing var_254
  loc_69B2F1: LitVar_Missing var_234
  loc_69B2F4: LitVar_Missing var_214
  loc_69B2F7: LitStr "Se ha desconectado el HardLock del puerto de la impresora"
  loc_69B2FA: FStStrCopy var_1F4
  loc_69B2FD: FLdRfVar var_1F4
  loc_69B300: LitI4 4
  loc_69B305: PopTmpLdAdStr var_1F0
  loc_69B308: LitI2_Byte &H22
  loc_69B30A: PopTmpLdAd2 var_1EA
  loc_69B30D: ImpAdLdRf MemVar_74C7D0
  loc_69B310: NewIfNullPr clsMsg
  loc_69B313: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B318: LitI4 &HD
  loc_69B31D: ImpAdCallI2 Chr$()
  loc_69B322: FStStr var_AB4
  loc_69B325: LitI4 &HA
  loc_69B32A: ImpAdCallI2 Chr$()
  loc_69B32F: FStStr var_AB8
  loc_69B332: FLdRfVar var_4A0
  loc_69B335: LitVar_Missing var_49C
  loc_69B338: LitVar_Missing var_47C
  loc_69B33B: LitVar_Missing var_45C
  loc_69B33E: LitVar_Missing var_43C
  loc_69B341: LitVar_Missing var_41C
  loc_69B344: LitVar_Missing var_3FC
  loc_69B347: LitVar_Missing var_3DC
  loc_69B34A: LitVar_Missing var_3BC
  loc_69B34D: LitVar_Missing var_39C
  loc_69B350: LitVar_Missing var_37C
  loc_69B353: LitStr "del equipo Controlador de"
  loc_69B356: FStStrCopy var_35C
  loc_69B359: FLdRfVar var_35C
  loc_69B35C: LitI4 5
  loc_69B361: PopTmpLdAdStr var_358
  loc_69B364: LitI2_Byte &H22
  loc_69B366: PopTmpLdAd2 var_352
  loc_69B369: ImpAdLdRf MemVar_74C7D0
  loc_69B36C: NewIfNullPr clsMsg
  loc_69B36F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B374: FLdRfVar var_5FC
  loc_69B377: LitVar_Missing var_5F8
  loc_69B37A: LitVar_Missing var_5D8
  loc_69B37D: LitVar_Missing var_5B8
  loc_69B380: LitVar_Missing var_598
  loc_69B383: LitVar_Missing var_578
  loc_69B386: LitVar_Missing var_558
  loc_69B389: LitVar_Missing var_538
  loc_69B38C: LitVar_Missing var_518
  loc_69B38F: LitVar_Missing var_4F8
  loc_69B392: LitVar_Missing var_4D8
  loc_69B395: LitStr ". Por favor verifique"
  loc_69B398: FStStrCopy var_4B8
  loc_69B39B: FLdRfVar var_4B8
  loc_69B39E: LitI4 9
  loc_69B3A3: PopTmpLdAdStr var_4B4
  loc_69B3A6: LitI2_Byte &H22
  loc_69B3A8: PopTmpLdAd2 var_4AE
  loc_69B3AB: ImpAdLdRf MemVar_74C7D0
  loc_69B3AE: NewIfNullPr clsMsg
  loc_69B3B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B3B6: LitI4 &HD
  loc_69B3BB: ImpAdCallI2 Chr$()
  loc_69B3C0: FStStr var_ABC
  loc_69B3C3: LitI4 &HA
  loc_69B3C8: ImpAdCallI2 Chr$()
  loc_69B3CD: FStStr var_AC0
  loc_69B3D0: FLdRfVar var_764
  loc_69B3D3: LitVar_Missing var_760
  loc_69B3D6: LitVar_Missing var_740
  loc_69B3D9: LitVar_Missing var_720
  loc_69B3DC: LitVar_Missing var_700
  loc_69B3DF: LitVar_Missing var_6E0
  loc_69B3E2: LitVar_Missing var_6C0
  loc_69B3E5: LitVar_Missing var_6A0
  loc_69B3E8: LitVar_Missing var_680
  loc_69B3EB: LitVar_Missing var_660
  loc_69B3EE: LitVar_Missing var_640
  loc_69B3F1: LitStr "la correcta conexión del mismo o el equipo dejara de funcionar"
  loc_69B3F4: FStStrCopy var_620
  loc_69B3F7: FLdRfVar var_620
  loc_69B3FA: LitI4 6
  loc_69B3FF: PopTmpLdAdStr var_61C
  loc_69B402: LitI2_Byte &H22
  loc_69B404: PopTmpLdAd2 var_616
  loc_69B407: ImpAdLdRf MemVar_74C7D0
  loc_69B40A: NewIfNullPr clsMsg
  loc_69B40D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B412: LitI4 &HD
  loc_69B417: ImpAdCallI2 Chr$()
  loc_69B41C: FStStr var_AC4
  loc_69B41F: LitI4 &HA
  loc_69B424: ImpAdCallI2 Chr$()
  loc_69B429: FStStr var_AC8
  loc_69B42C: FLdRfVar var_8CC
  loc_69B42F: LitVar_Missing var_8C8
  loc_69B432: LitVar_Missing var_8A8
  loc_69B435: LitVar_Missing var_888
  loc_69B438: LitVar_Missing var_868
  loc_69B43B: LitVar_Missing var_848
  loc_69B43E: LitVar_Missing var_828
  loc_69B441: LitVar_Missing var_808
  loc_69B444: LitVar_Missing var_7E8
  loc_69B447: LitVar_Missing var_7C8
  loc_69B44A: LitVar_Missing var_7A8
  loc_69B44D: LitStr "en"
  loc_69B450: FStStrCopy var_788
  loc_69B453: FLdRfVar var_788
  loc_69B456: LitI4 7
  loc_69B45B: PopTmpLdAdStr var_784
  loc_69B45E: LitI2_Byte &H22
  loc_69B460: PopTmpLdAd2 var_77E
  loc_69B463: ImpAdLdRf MemVar_74C7D0
  loc_69B466: NewIfNullPr clsMsg
  loc_69B469: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B46E: LitI4 1
  loc_69B473: ILdRf var_88
  loc_69B476: ImpAdCallI2 Right$(, )
  loc_69B47B: FStStr var_ACC
  loc_69B47E: FLdRfVar var_A34
  loc_69B481: LitVar_Missing var_A30
  loc_69B484: LitVar_Missing var_A10
  loc_69B487: LitVar_Missing var_9F0
  loc_69B48A: LitVar_Missing var_9D0
  loc_69B48D: LitVar_Missing var_9B0
  loc_69B490: LitVar_Missing var_990
  loc_69B493: LitVar_Missing var_970
  loc_69B496: LitVar_Missing var_950
  loc_69B499: LitVar_Missing var_930
  loc_69B49C: LitVar_Missing var_910
  loc_69B49F: LitStr "minutos."
  loc_69B4A2: FStStrCopy var_8F0
  loc_69B4A5: FLdRfVar var_8F0
  loc_69B4A8: LitI4 8
  loc_69B4AD: PopTmpLdAdStr var_8EC
  loc_69B4B0: LitI2_Byte &H22
  loc_69B4B2: PopTmpLdAd2 var_8E6
  loc_69B4B5: ImpAdLdRf MemVar_74C7D0
  loc_69B4B8: NewIfNullPr clsMsg
  loc_69B4BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69B4C0: LitVar_Missing var_AA8
  loc_69B4C3: LitVar_Missing var_A88
  loc_69B4C6: LitVar_Missing var_A68
  loc_69B4C9: LitI4 &H40
  loc_69B4CE: ILdRf var_1D8
  loc_69B4D1: FLdZeroAd var_AAC
  loc_69B4D4: FStStrNoPop var_1DC
  loc_69B4D7: ConcatStr
  loc_69B4D8: FStStrNoPop var_1E0
  loc_69B4DB: FLdZeroAd var_AB0
  loc_69B4DE: FStStrNoPop var_1E4
  loc_69B4E1: ConcatStr
  loc_69B4E2: FStStrNoPop var_1E8
  loc_69B4E5: LitStr "          "
  loc_69B4E8: ConcatStr
  loc_69B4E9: FStStrNoPop var_33C
  loc_69B4EC: ILdRf var_338
  loc_69B4EF: ConcatStr
  loc_69B4F0: FStStrNoPop var_340
  loc_69B4F3: FLdZeroAd var_AB4
  loc_69B4F6: FStStrNoPop var_344
  loc_69B4F9: ConcatStr
  loc_69B4FA: FStStrNoPop var_348
  loc_69B4FD: FLdZeroAd var_AB8
  loc_69B500: FStStrNoPop var_34C
  loc_69B503: ConcatStr
  loc_69B504: FStStrNoPop var_350
  loc_69B507: LitStr "          "
  loc_69B50A: ConcatStr
  loc_69B50B: FStStrNoPop var_4A4
  loc_69B50E: ILdRf var_4A0
  loc_69B511: ConcatStr
  loc_69B512: FStStrNoPop var_4A8
  loc_69B515: LitStr " "
  loc_69B518: ConcatStr
  loc_69B519: FStStrNoPop var_4AC
  loc_69B51C: ImpAdLdI4 MemVar_74BEE4
  loc_69B51F: ConcatStr
  loc_69B520: FStStrNoPop var_600
  loc_69B523: ILdRf var_5FC
  loc_69B526: ConcatStr
  loc_69B527: FStStrNoPop var_604
  loc_69B52A: FLdZeroAd var_ABC
  loc_69B52D: FStStrNoPop var_608
  loc_69B530: ConcatStr
  loc_69B531: FStStrNoPop var_60C
  loc_69B534: FLdZeroAd var_AC0
  loc_69B537: FStStrNoPop var_610
  loc_69B53A: ConcatStr
  loc_69B53B: FStStrNoPop var_614
  loc_69B53E: LitStr "          "
  loc_69B541: ConcatStr
  loc_69B542: FStStrNoPop var_768
  loc_69B545: ILdRf var_764
  loc_69B548: ConcatStr
  loc_69B549: FStStrNoPop var_76C
  loc_69B54C: FLdZeroAd var_AC4
  loc_69B54F: FStStrNoPop var_770
  loc_69B552: ConcatStr
  loc_69B553: FStStrNoPop var_774
  loc_69B556: FLdZeroAd var_AC8
  loc_69B559: FStStrNoPop var_778
  loc_69B55C: ConcatStr
  loc_69B55D: FStStrNoPop var_77C
  loc_69B560: LitStr "          "
  loc_69B563: ConcatStr
  loc_69B564: FStStrNoPop var_8D0
  loc_69B567: ILdRf var_8CC
  loc_69B56A: ConcatStr
  loc_69B56B: FStStrNoPop var_8D4
  loc_69B56E: LitStr " "
  loc_69B571: ConcatStr
  loc_69B572: FStStrNoPop var_8DC
  loc_69B575: LitI2_Byte &H1E
  loc_69B577: CR8I2
  loc_69B578: FLdZeroAd var_ACC
  loc_69B57B: FStStrNoPop var_8D8
  loc_69B57E: CR8Str
  loc_69B580: LitI2_Byte 5
  loc_69B582: CR8I2
  loc_69B583: MulR8
  loc_69B584: SubR4
  loc_69B585: CStrR8
  loc_69B587: FStStrNoPop var_8E0
  loc_69B58A: ConcatStr
  loc_69B58B: FStStrNoPop var_8E4
  loc_69B58E: LitStr " "
  loc_69B591: ConcatStr
  loc_69B592: FStStrNoPop var_A38
  loc_69B595: ILdRf var_A34
  loc_69B598: ConcatStr
  loc_69B599: CVarStr var_A48
  loc_69B59C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69B5A1: FFreeStr var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_788 = "": var_8D0 = "": var_8CC = "": var_8D4 = "": var_8D8 = "": var_8DC = "": var_8E0 = "": var_8E4 = "": var_8F0 = "": var_A38 = "": var_A34 = "": var_AAC = "": var_AB0 = "": var_AB4 = "": var_AB8 = "": var_ABC = "": var_AC0 = "": var_AC4 = "": var_AC8 = "": var_ACC = "": var_AC = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1F4 = "": var_33C = "": var_338 = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_35C = "": var_4A4 = "": var_4A0 = "": var_4A8 = "": var_4AC = "": var_4B8 = "": var_600 = "": var_5FC = "": var_604 = "": var_608 = "": var_60C = "": var_610 = "": var_614 = "": var_620 = "": var_768 = ""
  loc_69B612: FFreeVar var_910 = "": var_930 = "": var_950 = "": var_970 = "": var_990 = "": var_9B0 = "": var_9D0 = "": var_9F0 = "": var_A10 = "": var_A30 = "": var_A48 = "": var_A68 = "": var_A88 = "": var_AA8 = "": var_4D8 = "": var_4F8 = "": var_518 = "": var_538 = "": var_558 = "": var_578 = "": var_598 = "": var_5B8 = "": var_5D8 = "": var_5F8 = "": var_640 = "": var_660 = "": var_680 = "": var_6A0 = "": var_6C0 = "": var_6E0 = "": var_700 = "": var_720 = "": var_740 = "": var_760 = "": var_7A8 = "": var_7C8 = "": var_7E8 = "": var_808 = "": var_828 = "": var_848 = "": var_868 = "": var_888 = "": var_8A8 = "": var_8C8 = "": var_98 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_214 = "": var_234 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = ""
  loc_69B6A9: ExitProc
  loc_69B6AA: CR8I4
End Function

Private Function Proc_167_28_6636AC(arg_C) '6636AC
  'Data Table: 4028D8
  loc_66335C: ILdI4 arg_C
  loc_66335F: FStStrCopy var_8C
  loc_663362: ILdRf var_8C
  loc_663365: FLdRfVar var_1DC
  loc_663368: LitVar_Missing var_1D8
  loc_66336B: LitVar_Missing var_1B8
  loc_66336E: LitVar_Missing var_198
  loc_663371: LitVar_Missing var_178
  loc_663374: LitVar_Missing var_158
  loc_663377: LitVar_Missing var_138
  loc_66337A: LitVar_Missing var_118
  loc_66337D: LitVar_Missing var_F8
  loc_663380: LitVar_Missing var_D8
  loc_663383: LitVar_Missing var_B8
  loc_663386: LitStr "Alto Octanaje Sin Plomo"
  loc_663389: FStStrCopy var_98
  loc_66338C: FLdRfVar var_98
  loc_66338F: LitI4 &H10
  loc_663394: PopTmpLdAdStr var_94
  loc_663397: LitI2_Byte &H3F
  loc_663399: PopTmpLdAd2 var_8E
  loc_66339C: ImpAdLdRf MemVar_74C7D0
  loc_66339F: NewIfNullPr clsMsg
  loc_6633A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6633A7: ILdRf var_1DC
  loc_6633AA: EqStr
  loc_6633AC: FFreeStr var_98 = ""
  loc_6633B3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6633CA: BranchF loc_6633D5
  loc_6633CD: LitI2_Byte 1
  loc_6633CF: FStI2 var_86
  loc_6633D2: Branch loc_6636AA
  loc_6633D5: ILdRf var_8C
  loc_6633D8: FLdRfVar var_1DC
  loc_6633DB: LitVar_Missing var_1D8
  loc_6633DE: LitVar_Missing var_1B8
  loc_6633E1: LitVar_Missing var_198
  loc_6633E4: LitVar_Missing var_178
  loc_6633E7: LitVar_Missing var_158
  loc_6633EA: LitVar_Missing var_138
  loc_6633ED: LitVar_Missing var_118
  loc_6633F0: LitVar_Missing var_F8
  loc_6633F3: LitVar_Missing var_D8
  loc_6633F6: LitVar_Missing var_B8
  loc_6633F9: LitStr "Alto Octanaje Con Plomo"
  loc_6633FC: FStStrCopy var_98
  loc_6633FF: FLdRfVar var_98
  loc_663402: LitI4 &H11
  loc_663407: PopTmpLdAdStr var_94
  loc_66340A: LitI2_Byte &H3F
  loc_66340C: PopTmpLdAd2 var_8E
  loc_66340F: ImpAdLdRf MemVar_74C7D0
  loc_663412: NewIfNullPr clsMsg
  loc_663415: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66341A: ILdRf var_1DC
  loc_66341D: EqStr
  loc_66341F: FFreeStr var_98 = ""
  loc_663426: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_66343D: BranchF loc_663448
  loc_663440: LitI2_Byte 2
  loc_663442: FStI2 var_86
  loc_663445: Branch loc_6636AA
  loc_663448: ILdRf var_8C
  loc_66344B: FLdRfVar var_1DC
  loc_66344E: LitVar_Missing var_1D8
  loc_663451: LitVar_Missing var_1B8
  loc_663454: LitVar_Missing var_198
  loc_663457: LitVar_Missing var_178
  loc_66345A: LitVar_Missing var_158
  loc_66345D: LitVar_Missing var_138
  loc_663460: LitVar_Missing var_118
  loc_663463: LitVar_Missing var_F8
  loc_663466: LitVar_Missing var_D8
  loc_663469: LitVar_Missing var_B8
  loc_66346C: LitStr "Bajo Octanaje Sin Plomo"
  loc_66346F: FStStrCopy var_98
  loc_663472: FLdRfVar var_98
  loc_663475: LitI4 &H12
  loc_66347A: PopTmpLdAdStr var_94
  loc_66347D: LitI2_Byte &H3F
  loc_66347F: PopTmpLdAd2 var_8E
  loc_663482: ImpAdLdRf MemVar_74C7D0
  loc_663485: NewIfNullPr clsMsg
  loc_663488: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66348D: ILdRf var_1DC
  loc_663490: EqStr
  loc_663492: FFreeStr var_98 = ""
  loc_663499: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6634B0: BranchF loc_6634BB
  loc_6634B3: LitI2_Byte 3
  loc_6634B5: FStI2 var_86
  loc_6634B8: Branch loc_6636AA
  loc_6634BB: ILdRf var_8C
  loc_6634BE: FLdRfVar var_1DC
  loc_6634C1: LitVar_Missing var_1D8
  loc_6634C4: LitVar_Missing var_1B8
  loc_6634C7: LitVar_Missing var_198
  loc_6634CA: LitVar_Missing var_178
  loc_6634CD: LitVar_Missing var_158
  loc_6634D0: LitVar_Missing var_138
  loc_6634D3: LitVar_Missing var_118
  loc_6634D6: LitVar_Missing var_F8
  loc_6634D9: LitVar_Missing var_D8
  loc_6634DC: LitVar_Missing var_B8
  loc_6634DF: LitStr "Bajo Octanaje Con Plomo"
  loc_6634E2: FStStrCopy var_98
  loc_6634E5: FLdRfVar var_98
  loc_6634E8: LitI4 &H13
  loc_6634ED: PopTmpLdAdStr var_94
  loc_6634F0: LitI2_Byte &H3F
  loc_6634F2: PopTmpLdAd2 var_8E
  loc_6634F5: ImpAdLdRf MemVar_74C7D0
  loc_6634F8: NewIfNullPr clsMsg
  loc_6634FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_663500: ILdRf var_1DC
  loc_663503: EqStr
  loc_663505: FFreeStr var_98 = ""
  loc_66350C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_663523: BranchF loc_66352E
  loc_663526: LitI2_Byte 4
  loc_663528: FStI2 var_86
  loc_66352B: Branch loc_6636AA
  loc_66352E: ILdRf var_8C
  loc_663531: FLdRfVar var_1DC
  loc_663534: LitVar_Missing var_1D8
  loc_663537: LitVar_Missing var_1B8
  loc_66353A: LitVar_Missing var_198
  loc_66353D: LitVar_Missing var_178
  loc_663540: LitVar_Missing var_158
  loc_663543: LitVar_Missing var_138
  loc_663546: LitVar_Missing var_118
  loc_663549: LitVar_Missing var_F8
  loc_66354C: LitVar_Missing var_D8
  loc_66354F: LitVar_Missing var_B8
  loc_663552: LitStr "Gas Oil - Fuel Oil"
  loc_663555: FStStrCopy var_98
  loc_663558: FLdRfVar var_98
  loc_66355B: LitI4 &H14
  loc_663560: PopTmpLdAdStr var_94
  loc_663563: LitI2_Byte &H3F
  loc_663565: PopTmpLdAd2 var_8E
  loc_663568: ImpAdLdRf MemVar_74C7D0
  loc_66356B: NewIfNullPr clsMsg
  loc_66356E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_663573: ILdRf var_1DC
  loc_663576: EqStr
  loc_663578: FFreeStr var_98 = ""
  loc_66357F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_663596: BranchF loc_6635A1
  loc_663599: LitI2_Byte 5
  loc_66359B: FStI2 var_86
  loc_66359E: Branch loc_6636AA
  loc_6635A1: ILdRf var_8C
  loc_6635A4: FLdRfVar var_1DC
  loc_6635A7: LitVar_Missing var_1D8
  loc_6635AA: LitVar_Missing var_1B8
  loc_6635AD: LitVar_Missing var_198
  loc_6635B0: LitVar_Missing var_178
  loc_6635B3: LitVar_Missing var_158
  loc_6635B6: LitVar_Missing var_138
  loc_6635B9: LitVar_Missing var_118
  loc_6635BC: LitVar_Missing var_F8
  loc_6635BF: LitVar_Missing var_D8
  loc_6635C2: LitVar_Missing var_B8
  loc_6635C5: LitStr "Kerosene"
  loc_6635C8: FStStrCopy var_98
  loc_6635CB: FLdRfVar var_98
  loc_6635CE: LitI4 &H15
  loc_6635D3: PopTmpLdAdStr var_94
  loc_6635D6: LitI2_Byte &H3F
  loc_6635D8: PopTmpLdAd2 var_8E
  loc_6635DB: ImpAdLdRf MemVar_74C7D0
  loc_6635DE: NewIfNullPr clsMsg
  loc_6635E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6635E6: ILdRf var_1DC
  loc_6635E9: EqStr
  loc_6635EB: FFreeStr var_98 = ""
  loc_6635F2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_663609: BranchF loc_663614
  loc_66360C: LitI2_Byte 6
  loc_66360E: FStI2 var_86
  loc_663611: Branch loc_6636AA
  loc_663614: ILdRf var_8C
  loc_663617: LitStr "Mezcla con plomo"
  loc_66361A: EqStr
  loc_66361C: BranchF loc_663627
  loc_66361F: LitI2_Byte 7
  loc_663621: FStI2 var_86
  loc_663624: Branch loc_6636AA
  loc_663627: ILdRf var_8C
  loc_66362A: LitStr "Mezcla sin plomo"
  loc_66362D: EqStr
  loc_66362F: BranchF loc_66363A
  loc_663632: LitI2_Byte 8
  loc_663634: FStI2 var_86
  loc_663637: Branch loc_6636AA
  loc_66363A: ILdRf var_8C
  loc_66363D: FLdRfVar var_1DC
  loc_663640: LitVar_Missing var_1D8
  loc_663643: LitVar_Missing var_1B8
  loc_663646: LitVar_Missing var_198
  loc_663649: LitVar_Missing var_178
  loc_66364C: LitVar_Missing var_158
  loc_66364F: LitVar_Missing var_138
  loc_663652: LitVar_Missing var_118
  loc_663655: LitVar_Missing var_F8
  loc_663658: LitVar_Missing var_D8
  loc_66365B: LitVar_Missing var_B8
  loc_66365E: LitStr "GNC"
  loc_663661: FStStrCopy var_98
  loc_663664: FLdRfVar var_98
  loc_663667: LitI4 &H1C
  loc_66366C: PopTmpLdAdStr var_94
  loc_66366F: LitI2_Byte &H3F
  loc_663671: PopTmpLdAd2 var_8E
  loc_663674: ImpAdLdRf MemVar_74C7D0
  loc_663677: NewIfNullPr clsMsg
  loc_66367A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66367F: ILdRf var_1DC
  loc_663682: EqStr
  loc_663684: FFreeStr var_98 = ""
  loc_66368B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6636A2: BranchF loc_6636AA
  loc_6636A5: LitI2_Byte 9
  loc_6636A7: FStI2 var_86
  loc_6636AA: ExitProcI2
End Function

Private Function Proc_167_29_5EEE2C(arg_C, arg_10) '5EEE2C
  'Data Table: 418E70
  loc_5EEDA0: ILdRf arg_10
  loc_5EEDA3: FStStrCopy var_8C
  loc_5EEDA6: LitI4 &H100
  loc_5EEDAB: FStR4 var_94
  loc_5EEDAE: ILdRf var_94
  loc_5EEDB1: ImpAdCallI2 Space$()
  loc_5EEDB6: FStStr var_90
  loc_5EEDB9: FLdRfVar var_94
  loc_5EEDBC: ILdRf var_90
  loc_5EEDBF: FLdRfVar var_A0
  loc_5EEDC2: CStr2Ansi
  loc_5EEDC3: ILdRf var_A0
  loc_5EEDC6: FLdRfVar var_98
  loc_5EEDC9: LitI4 0
  loc_5EEDCE: ILdRf var_8C
  loc_5EEDD1: FLdRfVar var_9C
  loc_5EEDD4: CStr2Ansi
  loc_5EEDD5: ILdRf var_9C
  loc_5EEDD8: ILdRf arg_C
  loc_5EEDDB: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_5EEDE0: FStR4 var_A4
  loc_5EEDE3: SetLastSystemError
  loc_5EEDE4: ILdRf var_9C
  loc_5EEDE7: FLdRfVar var_8C
  loc_5EEDEA: CStr2Uni
  loc_5EEDEC: ILdRf var_A0
  loc_5EEDEF: FLdRfVar var_90
  loc_5EEDF2: CStr2Uni
  loc_5EEDF4: ILdRf var_A4
  loc_5EEDF7: LitI4 0
  loc_5EEDFC: NeI4
  loc_5EEDFD: FFreeStr var_9C = ""
  loc_5EEE04: BranchF loc_5EEE10
  loc_5EEE07: LitStr "<Error>"
  loc_5EEE0A: FStStrCopy var_90
  loc_5EEE0D: Branch loc_5EEE24
  loc_5EEE10: ILdRf var_94
  loc_5EEE13: LitI4 1
  loc_5EEE18: SubI4
  loc_5EEE19: ILdRf var_90
  loc_5EEE1C: ImpAdCallI2 Left$(, )
  loc_5EEE21: FStStr var_90
  loc_5EEE24: ILdRf var_90
  loc_5EEE27: FStStrCopy var_88
  loc_5EEE2A: ExitProc
End Function
