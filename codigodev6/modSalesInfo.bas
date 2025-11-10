
Private Function Proc_156_0_5F7830() '5F7830
  'Data Table: 40B4F8
  loc_5F7774: LitI2_Byte 1
  loc_5F7776: FLdRfVar var_8A
  loc_5F7779: LitI2_Byte &H20
  loc_5F777B: ForI2 var_8E
  loc_5F7781: ILdRf var_88
  loc_5F7784: FLdI2 var_8A
  loc_5F7787: CI4UI1
  loc_5F7788: FMemLdRf unk_40B505
  loc_5F778D: AryInRecLdPr
  loc_5F7793: MemLdI2 global_0
  loc_5F7796: CStrUI1
  loc_5F7798: FStStrNoPop var_94
  loc_5F779B: ConcatStr
  loc_5F779C: FStStr var_88
  loc_5F779F: FFree1Str var_94
  loc_5F77A2: FLdRfVar var_8A
  loc_5F77A5: NextI2 var_8E, loc_5F7781
  loc_5F77AA: ILdRf var_88
  loc_5F77AD: LitI4 1
  loc_5F77B2: LitI4 1
  loc_5F77B7: LitVarStr var_B4, "00000000"
  loc_5F77BC: FStVarCopyObj var_C4
  loc_5F77BF: FLdRfVar var_C4
  loc_5F77C2: FMemLdRf unk_40B505
  loc_5F77C7: CVarRef
  loc_5F77CC: ImpAdCallI2 Format$(, )
  loc_5F77D1: FStStrNoPop var_94
  loc_5F77D4: ConcatStr
  loc_5F77D5: FStStr var_88
  loc_5F77D8: FFree1Str var_94
  loc_5F77DB: FFree1Var var_C4 = ""
  loc_5F77DE: ILdRf var_88
  loc_5F77E1: LitStr "TypePrinter"
  loc_5F77E4: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_5F77E7: LitStr "CEM44"
  loc_5F77EA: ImpAdCallFPR4 SaveSetting(, , , )
  loc_5F77EF: FLdRfVar var_CA
  loc_5F77F2: ILdRf var_88
  loc_5F77F5: FLdRfVar var_C8
  loc_5F77F8: ImpAdLdRf MemVar_74C760
  loc_5F77FB: NewIfNullPr Formx
  loc_5F77FE: from_stack_1v = Formx.global_4589716Get()
  loc_5F7803: FLdPr var_C8
  loc_5F7806:  = Formx.MouseIcon
  loc_5F780B: FLdI2 var_CA
  loc_5F780E: NotI4
  loc_5F780F: FFree1Ad var_C8
  loc_5F7812: BranchF loc_5F782C
  loc_5F7815: FLdRfVar var_C4
  loc_5F7818: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F781D: FLdRfVar var_C4
  loc_5F7820: CBoolVarNull
  loc_5F7822: FFree1Var var_C4 = ""
  loc_5F7825: BranchF loc_5F7829
  loc_5F7828: ExitProc
  loc_5F7829: Branch loc_5F77EF
  loc_5F782C: ExitProc
End Function

Private Function Proc_156_1_603A7C() '603A7C
  'Data Table: 40B4F8
  loc_6039A8: LitI2_Byte 1
  loc_6039AA: FLdRfVar var_8A
  loc_6039AD: LitI2_Byte 3
  loc_6039AF: ForI2 var_90
  loc_6039B5: ILdRf var_88
  loc_6039B8: FLdI2 var_8A
  loc_6039BB: CI4UI1
  loc_6039BC: FMemLdRf unk_40B505
  loc_6039C1: AryInRecLdPr
  loc_6039C7: MemLdI2 global_0
  loc_6039CA: CStrUI1
  loc_6039CC: FStStrNoPop var_94
  loc_6039CF: ConcatStr
  loc_6039D0: FStStrNoPop var_98
  loc_6039D3: FLdI2 var_8A
  loc_6039D6: CI4UI1
  loc_6039D7: FMemLdRf unk_40B505
  loc_6039DC: AryInRecLdPr
  loc_6039E2: MemLdI2 global_0
  loc_6039E5: CStrUI1
  loc_6039E7: FStStrNoPop var_9C
  loc_6039EA: ConcatStr
  loc_6039EB: FStStr var_88
  loc_6039EE: FFreeStr var_94 = "": var_98 = ""
  loc_6039F7: LitI2_Byte 1
  loc_6039F9: FLdRfVar var_8C
  loc_6039FC: LitI2_Byte &HA
  loc_6039FE: ForI2 var_A0
  loc_603A04: FLdI2 var_8A
  loc_603A07: CI4UI1
  loc_603A08: FLdI2 var_8C
  loc_603A0B: CI4UI1
  loc_603A0C: FMemLdRf unk_40B505
  loc_603A11: AryInRecLdPr
  loc_603A17: MemLdStr global_0
  loc_603A1A: ImpAdCallFPR4 push Val()
  loc_603A1F: FStFPR8 var_E8
  loc_603A22: ILdRf var_88
  loc_603A25: LitI4 1
  loc_603A2A: LitI4 1
  loc_603A2F: LitVarStr var_D0, "@@@@@@@@@@"
  loc_603A34: FStVarCopyObj var_E0
  loc_603A37: FLdRfVar var_E0
  loc_603A3A: FLdFPR8 var_E8
  loc_603A3D: CVarR8
  loc_603A41: ImpAdCallI2 Format$(, )
  loc_603A46: FStStrNoPop var_94
  loc_603A49: ConcatStr
  loc_603A4A: FStStr var_88
  loc_603A4D: FFree1Str var_94
  loc_603A50: FFreeVar var_C0 = ""
  loc_603A57: FLdRfVar var_8C
  loc_603A5A: NextI2 var_A0, loc_603A04
  loc_603A5F: FLdRfVar var_8A
  loc_603A62: NextI2 var_90, loc_6039B5
  loc_603A67: ILdRf var_88
  loc_603A6A: LitStr "TicketTaxes"
  loc_603A6D: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_603A70: LitStr "CEM44"
  loc_603A73: ImpAdCallFPR4 SaveSetting(, , , )
  loc_603A78: ExitProc
  loc_603A79: FLdRfVar var_230
End Function

Private Function Proc_156_2_5DC6C8(arg_C, arg_10) '5DC6C8
  'Data Table: 40B4F8
  loc_5DC68C: ILdRf arg_C
  loc_5DC68F: FStStrCopy var_88
  loc_5DC692: ILdRf arg_10
  loc_5DC695: FStStrCopy var_8C
  loc_5DC698: ILdRf var_8C
  loc_5DC69B: ILdRf var_88
  loc_5DC69E: ConcatStr
  loc_5DC69F: FStStrNoPop var_90
  loc_5DC6A2: ImpAdCallI2 Proc_142_10_5FF2C0()
  loc_5DC6A7: NotI4
  loc_5DC6A8: FFree1Str var_90
  loc_5DC6AB: BranchF loc_5DC6C5
  loc_5DC6AE: FLdRfVar var_A0
  loc_5DC6B1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DC6B6: FLdRfVar var_A0
  loc_5DC6B9: CBoolVarNull
  loc_5DC6BB: FFree1Var var_A0 = ""
  loc_5DC6BE: BranchF loc_5DC6C2
  loc_5DC6C1: ExitProc
  loc_5DC6C2: Branch loc_5DC698
  loc_5DC6C5: ExitProc
End Function

Private Function Proc_156_3_5DC12C() '5DC12C
  'Data Table: 43B664
  loc_5DC0EC: FLdRfVar var_8A
  loc_5DC0EF: FMemLdRf unk_43B66D
  loc_5DC0F4: FLdRfVar var_88
  loc_5DC0F7: ImpAdLdRf MemVar_74C760
  loc_5DC0FA: NewIfNullPr Formx
  loc_5DC0FD: from_stack_1v = Formx.global_4589716Get()
  loc_5DC102: FLdPr var_88
  loc_5DC105: Formx.Cls
  loc_5DC10A: FLdI2 var_8A
  loc_5DC10D: NotI4
  loc_5DC10E: FFree1Ad var_88
  loc_5DC111: BranchF loc_5DC12B
  loc_5DC114: FLdRfVar var_9C
  loc_5DC117: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DC11C: FLdRfVar var_9C
  loc_5DC11F: CBoolVarNull
  loc_5DC121: FFree1Var var_9C = ""
  loc_5DC124: BranchF loc_5DC128
  loc_5DC127: ExitProc
  loc_5DC128: Branch loc_5DC0EC
  loc_5DC12B: ExitProc
End Function

Private Function Proc_156_4_63714C() '63714C
  'Data Table: 40B4F8
  loc_636F68: LitVarStr var_124, "1"
  loc_636F6D: PopAdLdVar
  loc_636F6E: LitStr "TicketTaxes"
  loc_636F71: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_636F74: LitStr "CEM44"
  loc_636F77: ImpAdCallI2 GetSetting(, , , )
  loc_636F7C: FStStr var_10C
  loc_636F7F: ILdRf var_10C
  loc_636F82: FnLenStr
  loc_636F83: LitI4 1
  loc_636F88: EqI4
  loc_636F89: BranchF loc_636FCE
  loc_636F8C: FLdRfVar var_12A
  loc_636F8F: FLdRfVar var_10C
  loc_636F92: FLdRfVar var_128
  loc_636F95: ImpAdLdRf MemVar_74C760
  loc_636F98: NewIfNullPr Formx
  loc_636F9B: from_stack_1v = Formx.global_4589716Get()
  loc_636FA0: FLdPr var_128
  loc_636FA3: Call 0.Method_arg_21C ()
  loc_636FA8: FLdI2 var_12A
  loc_636FAB: NotI4
  loc_636FAC: FFree1Ad var_128
  loc_636FAF: BranchF loc_636FCE
  loc_636FB2: FLdRfVar var_13C
  loc_636FB5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_636FBA: FLdRfVar var_13C
  loc_636FBD: CBoolVarNull
  loc_636FBF: FFree1Var var_13C = ""
  loc_636FC2: BranchF loc_636FCB
  loc_636FC5: ExitProcFrameCb
  loc_636FCB: Branch loc_636F8C
  loc_636FCE: FLdRfVar var_10C
  loc_636FD1: CVarRef
  loc_636FD6: FLdRfVar var_13C
  loc_636FD9: ImpAdCallFPR4  = Trim()
  loc_636FDE: FLdRfVar var_13C
  loc_636FE1: CStrVarTmp
  loc_636FE2: FStStr var_10C
  loc_636FE5: FFree1Var var_13C = ""
  loc_636FE8: ILdRf var_10C
  loc_636FEB: FnLenStr
  loc_636FEC: LitI4 1
  loc_636FF1: NeI4
  loc_636FF2: BranchF loc_6370D7
  loc_636FF5: LitI2_Byte 1
  loc_636FF7: FStI2 var_112
  loc_636FFA: LitI2_Byte 1
  loc_636FFC: FLdRfVar var_10E
  loc_636FFF: LitI2_Byte 3
  loc_637001: ForI2 var_140
  loc_637007: LitVarI2 var_13C, 1
  loc_63700C: FLdI2 var_112
  loc_63700F: CI4UI1
  loc_637010: ILdRf var_10C
  loc_637013: ImpAdCallI2 Mid$(, , )
  loc_637018: FStStrNoPop var_144
  loc_63701B: CI2Str
  loc_63701D: FLdI2 var_10E
  loc_637020: CI4UI1
  loc_637021: FLdRfVar var_108
  loc_637024: AryInRecLdPr
  loc_63702A: MemStI2 global_0
  loc_63702D: FFree1Str var_144
  loc_637030: FFree1Var var_13C = ""
  loc_637033: FLdI2 var_112
  loc_637036: LitI2_Byte 1
  loc_637038: AddI2
  loc_637039: FStI2 var_112
  loc_63703C: LitVarI2 var_13C, 1
  loc_637041: FLdI2 var_112
  loc_637044: CI4UI1
  loc_637045: ILdRf var_10C
  loc_637048: ImpAdCallI2 Mid$(, , )
  loc_63704D: FStStrNoPop var_144
  loc_637050: CI2Str
  loc_637052: FLdI2 var_10E
  loc_637055: CI4UI1
  loc_637056: FLdRfVar var_102
  loc_637059: AryInRecLdPr
  loc_63705F: MemStI2 global_0
  loc_637062: FFree1Str var_144
  loc_637065: FFree1Var var_13C = ""
  loc_637068: FLdI2 var_112
  loc_63706B: LitI2_Byte 1
  loc_63706D: AddI2
  loc_63706E: FStI2 var_112
  loc_637071: LitI2_Byte 1
  loc_637073: FLdRfVar var_110
  loc_637076: LitI2_Byte &HA
  loc_637078: ForI2 var_148
  loc_63707E: LitVarI2 var_13C, 10
  loc_637083: FLdI2 var_112
  loc_637086: CI4UI1
  loc_637087: ILdRf var_10C
  loc_63708A: ImpAdCallI2 Mid$(, , )
  loc_63708F: FStStrNoPop var_144
  loc_637092: ImpAdCallFPR4 push Val()
  loc_637097: CStrR8
  loc_637099: FStStrNoPop var_14C
  loc_63709C: FLdI2 var_10E
  loc_63709F: CI4UI1
  loc_6370A0: FLdI2 var_110
  loc_6370A3: CI4UI1
  loc_6370A4: FLdRfVar var_FC
  loc_6370A7: AryInRecLdPr
  loc_6370AD: MemStStrCopy
  loc_6370B1: FFreeStr var_144 = ""
  loc_6370B8: FFree1Var var_13C = ""
  loc_6370BB: FLdI2 var_112
  loc_6370BE: LitI2_Byte &HA
  loc_6370C0: AddI2
  loc_6370C1: FStI2 var_112
  loc_6370C4: FLdRfVar var_110
  loc_6370C7: NextI2 var_148, loc_63707E
  loc_6370CC: FLdRfVar var_10E
  loc_6370CF: NextI2 var_140, loc_637007
  loc_6370D4: Branch loc_637144
  loc_6370D7: LitI2_Byte 1
  loc_6370D9: FLdRfVar var_10E
  loc_6370DC: LitI2_Byte 3
  loc_6370DE: ForI2 var_150
  loc_6370E4: LitI2_Byte 0
  loc_6370E6: FLdI2 var_10E
  loc_6370E9: CI4UI1
  loc_6370EA: FLdRfVar var_108
  loc_6370ED: AryInRecLdPr
  loc_6370F3: MemStI2 global_0
  loc_6370F6: LitI2_Byte 0
  loc_6370F8: FLdI2 var_10E
  loc_6370FB: CI4UI1
  loc_6370FC: FLdRfVar var_102
  loc_6370FF: AryInRecLdPr
  loc_637105: MemStI2 global_0
  loc_637108: LitI2_Byte 1
  loc_63710A: FLdRfVar var_110
  loc_63710D: LitI2_Byte &HA
  loc_63710F: ForI2 var_154
  loc_637115: LitI2_Byte 0
  loc_637117: CStrUI1
  loc_637119: FStStrNoPop var_144
  loc_63711C: FLdI2 var_10E
  loc_63711F: CI4UI1
  loc_637120: FLdI2 var_110
  loc_637123: CI4UI1
  loc_637124: FLdRfVar var_FC
  loc_637127: AryInRecLdPr
  loc_63712D: MemStStrCopy
  loc_637131: FFree1Str var_144
  loc_637134: FLdRfVar var_110
  loc_637137: NextI2 var_154, loc_637115
  loc_63713C: FLdRfVar var_10E
  loc_63713F: NextI2 var_150, loc_6370E4
  loc_637144: ExitProcFrameCb
  loc_63714A: FFree1Ad var_4000
End Function

Private Function Proc_156_5_631170(arg_20) '631170
  'Data Table: 40B4F8
  loc_630FE0: LitVarStr var_3AC, "1"
  loc_630FE5: PopAdLdVar
  loc_630FE6: LitStr "PumpPrinter"
  loc_630FE9: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_630FEC: LitStr "CEM44"
  loc_630FEF: ImpAdCallI2 GetSetting(, , , )
  loc_630FF4: FStStr var_398
  loc_630FF7: ILdRf var_398
  loc_630FFA: FnLenStr
  loc_630FFB: LitI4 1
  loc_631000: EqI4
  loc_631001: BranchF loc_631046
  loc_631004: FLdRfVar var_3B2
  loc_631007: FLdRfVar var_398
  loc_63100A: FLdRfVar var_3B0
  loc_63100D: ImpAdLdRf MemVar_74C760
  loc_631010: NewIfNullPr Formx
  loc_631013: from_stack_1v = Formx.global_4589716Get()
  loc_631018: FLdPr var_3B0
  loc_63101B: Call 0.Method_arg_20C ()
  loc_631020: FLdI2 var_3B2
  loc_631023: NotI4
  loc_631024: FFree1Ad var_3B0
  loc_631027: BranchF loc_631046
  loc_63102A: FLdRfVar var_3C4
  loc_63102D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_631032: FLdRfVar var_3C4
  loc_631035: CBoolVarNull
  loc_631037: FFree1Var var_3C4 = ""
  loc_63103A: BranchF loc_631043
  loc_63103D: ExitProcFrameCb
  loc_631043: Branch loc_631004
  loc_631046: FLdRfVar var_398
  loc_631049: CVarRef
  loc_63104E: FLdRfVar var_3C4
  loc_631051: ImpAdCallFPR4  = Trim()
  loc_631056: FLdRfVar var_3C4
  loc_631059: CStrVarTmp
  loc_63105A: FStStr var_398
  loc_63105D: FFree1Var var_3C4 = ""
  loc_631060: ILdRf var_398
  loc_631063: FnLenStr
  loc_631064: LitI4 1
  loc_631069: EqI4
  loc_63106A: BranchF loc_6310CC
  loc_63106D: LitI2_Byte 1
  loc_63106F: FLdRfVar var_39A
  loc_631072: LitI2_Byte &H20
  loc_631074: ForI2 var_3C8
  loc_63107A: LitStr vbNullString
  loc_63107D: FLdI2 var_39A
  loc_631080: CI4UI1
  loc_631081: FLdRfVar var_314
  loc_631084: AryInRecLdPr
  loc_63108A: MemStStrCopy
  loc_63108E: LitI2_Byte 0
  loc_631090: FLdI2 var_39A
  loc_631093: CI4UI1
  loc_631094: FLdRfVar var_394
  loc_631097: AryInRecLdPr
  loc_63109D: MemStI2 global_0
  loc_6310A0: FLdI2 var_39A
  loc_6310A3: CStrUI1
  loc_6310A5: FStStrNoPop var_3CC
  loc_6310A8: FLdI2 var_39A
  loc_6310AB: CI4UI1
  loc_6310AC: FLdRfVar var_294
  loc_6310AF: AryInRecLdPr
  loc_6310B5: MemStStrCopy
  loc_6310B9: FFree1Str var_3CC
  loc_6310BC: FLdRfVar var_39A
  loc_6310BF: NextI2 var_3C8, loc_63107A
  loc_6310C4: LitI2_Byte 0
  loc_6310C6: FStI2 var_214
  loc_6310C9: Branch loc_631160
  loc_6310CC: LitI2_Byte 1
  loc_6310CE: FStI2 var_39A
  loc_6310D1: FLdI2 var_39A
  loc_6310D4: CI4UI1
  loc_6310D5: ILdRf var_398
  loc_6310D8: FnLenStr
  loc_6310D9: LtI4
  loc_6310DA: BranchF loc_631160
  loc_6310DD: FLdI2 var_39A
  loc_6310E0: LitI2_Byte &H36
  loc_6310E2: IDvI2
  loc_6310E3: LitI2_Byte 1
  loc_6310E5: AddI2
  loc_6310E6: FStI2 var_214
  loc_6310E9: LitVarI2 var_3C4, 50
  loc_6310EE: FLdI2 var_39A
  loc_6310F1: CI4UI1
  loc_6310F2: ILdRf var_398
  loc_6310F5: ImpAdCallI2 Mid$(, , )
  loc_6310FA: FStStrNoPop var_3CC
  loc_6310FD: FLdI2 var_39A
  loc_631100: LitI2_Byte &H36
  loc_631102: IDvI2
  loc_631103: LitI2_Byte 1
  loc_631105: AddI2
  loc_631106: CI4UI1
  loc_631107: FLdRfVar var_314
  loc_63110A: AryInRecLdPr
  loc_631110: MemStStrCopy
  loc_631114: FFree1Str var_3CC
  loc_631117: FFree1Var var_3C4 = ""
  loc_63111A: FLdI2 var_39A
  loc_63111D: LitI2_Byte &H32
  loc_63111F: AddI2
  loc_631120: FStI2 var_39A
  loc_631123: LitVarI2 var_3C4, 4
  loc_631128: FLdI2 var_39A
  loc_63112B: CI4UI1
  loc_63112C: ILdRf var_398
  loc_63112F: ImpAdCallI2 Mid$(, , )
  loc_631134: FStStrNoPop var_3CC
  loc_631137: FLdI2 var_39A
  loc_63113A: LitI2_Byte &H36
  loc_63113C: IDvI2
  loc_63113D: LitI2_Byte 1
  loc_63113F: AddI2
  loc_631140: CI4UI1
  loc_631141: FLdRfVar var_294
  loc_631144: AryInRecLdPr
  loc_63114A: MemStStrCopy
  loc_63114E: FFree1Str var_3CC
  loc_631151: FFree1Var var_3C4 = ""
  loc_631154: FLdI2 var_39A
  loc_631157: LitI2_Byte 4
  loc_631159: AddI2
  loc_63115A: FStI2 var_39A
  loc_63115D: Branch loc_6310D1
  loc_631160: FLdRfVar var_394
  loc_631163: FLdRfVar var_20C
  loc_631166: AssignRecord
  loc_63116A: ExitProcFrameCb
End Function

Private Function Proc_156_6_620C34(arg_10) '620C34
  'Data Table: 40B4F8
  loc_620AFC: LitVarStr var_224, "1"
  loc_620B01: PopAdLdVar
  loc_620B02: LitStr "TypePrinter"
  loc_620B05: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_620B08: LitStr "CEM44"
  loc_620B0B: ImpAdCallI2 GetSetting(, , , )
  loc_620B10: FStStr var_210
  loc_620B13: ILdRf var_210
  loc_620B16: FnLenStr
  loc_620B17: LitI4 1
  loc_620B1C: EqI4
  loc_620B1D: BranchF loc_620B62
  loc_620B20: FLdRfVar var_22A
  loc_620B23: FLdRfVar var_210
  loc_620B26: FLdRfVar var_228
  loc_620B29: ImpAdLdRf MemVar_74C760
  loc_620B2C: NewIfNullPr Formx
  loc_620B2F: from_stack_1v = Formx.global_4589716Get()
  loc_620B34: FLdPr var_228
  loc_620B37: Formx.MouseIcon = from_stack_1
  loc_620B3C: FLdI2 var_22A
  loc_620B3F: NotI4
  loc_620B40: FFree1Ad var_228
  loc_620B43: BranchF loc_620B62
  loc_620B46: FLdRfVar var_23C
  loc_620B49: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_620B4E: FLdRfVar var_23C
  loc_620B51: CBoolVarNull
  loc_620B53: FFree1Var var_23C = ""
  loc_620B56: BranchF loc_620B5F
  loc_620B59: ExitProcFrameCb
  loc_620B5F: Branch loc_620B20
  loc_620B62: FLdRfVar var_210
  loc_620B65: CVarRef
  loc_620B6A: FLdRfVar var_23C
  loc_620B6D: ImpAdCallFPR4  = Trim()
  loc_620B72: FLdRfVar var_23C
  loc_620B75: CStrVarTmp
  loc_620B76: FStStr var_210
  loc_620B79: FFree1Var var_23C = ""
  loc_620B7C: ILdRf var_210
  loc_620B7F: FnLenStr
  loc_620B80: LitI4 1
  loc_620B85: EqI4
  loc_620B86: BranchF loc_620BBF
  loc_620B89: LitI2_Byte 1
  loc_620B8B: FLdRfVar var_212
  loc_620B8E: LitI2_Byte &H20
  loc_620B90: ForI2 var_240
  loc_620B96: LitI2_Byte 0
  loc_620B98: FLdI2 var_212
  loc_620B9B: CI4UI1
  loc_620B9C: FMemLdRf unk_40B509
  loc_620BA1: AryInRecLdPr
  loc_620BA7: MemStI2 global_0
  loc_620BAA: FLdRfVar var_212
  loc_620BAD: NextI2 var_240, loc_620B96
  loc_620BB2: LitI4 &H5F5E0FF
  loc_620BB7: FMemStI4 arg_10(388)
  loc_620BBC: Branch loc_620C22
  loc_620BBF: LitI2_Byte 1
  loc_620BC1: FLdRfVar var_212
  loc_620BC4: LitI2_Byte &H20
  loc_620BC6: ForI2 var_244
  loc_620BCC: LitVarI2 var_23C, 1
  loc_620BD1: FLdI2 var_212
  loc_620BD4: CI4UI1
  loc_620BD5: ILdRf var_210
  loc_620BD8: ImpAdCallI2 Mid$(, , )
  loc_620BDD: FStStrNoPop var_248
  loc_620BE0: CI2Str
  loc_620BE2: FLdI2 var_212
  loc_620BE5: CI4UI1
  loc_620BE6: FMemLdRf unk_40B509
  loc_620BEB: AryInRecLdPr
  loc_620BF1: MemStI2 global_0
  loc_620BF4: FFree1Str var_248
  loc_620BF7: FFree1Var var_23C = ""
  loc_620BFA: FLdRfVar var_212
  loc_620BFD: NextI2 var_244, loc_620BCC
  loc_620C02: LitVarI2 var_23C, 8
  loc_620C07: FLdI2 var_212
  loc_620C0A: CI4UI1
  loc_620C0B: ILdRf var_210
  loc_620C0E: ImpAdCallI2 Mid$(, , )
  loc_620C13: FStStrNoPop var_248
  loc_620C16: CI4Str
  loc_620C17: FMemStI4 arg_10(388)
  loc_620C1C: FFree1Str var_248
  loc_620C1F: FFree1Var var_23C = ""
  loc_620C22: ILdRf arg_10
  loc_620C25: FLdRfVar var_20C
  loc_620C28: AssignRecord
  loc_620C2C: ExitProcFrameCb
End Function

Private Function Proc_156_7_5D15A0(arg_C) '5D15A0
  'Data Table: 40B4F8
  loc_5D1588: ILdRf arg_C
  loc_5D158B: FStStrCopy var_88
  loc_5D158E: ILdRf var_88
  loc_5D1591: LitStr "TicketLayOut"
  loc_5D1594: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_5D1597: LitStr "CEM44"
  loc_5D159A: ImpAdCallFPR4 SaveSetting(, , , )
  loc_5D159F: ExitProc
End Function

Private Function Proc_156_8_650470(arg_C) '650470
  'Data Table: 40B4F8
  loc_6501B0: ILdRf arg_C
  loc_6501B3: FStStrCopy var_8C
  loc_6501B6: LitStr "99"
  loc_6501B9: LitStr "^P"
  loc_6501BC: ILdRf var_8C
  loc_6501BF: FLdRfVar var_9C
  loc_6501C2: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6501C7: FLdRfVar var_9C
  loc_6501CA: CStrVarTmp
  loc_6501CB: FStStr var_88
  loc_6501CE: FFree1Var var_9C = ""
  loc_6501D1: LitStr "A"
  loc_6501D4: LitStr "^H"
  loc_6501D7: ILdRf var_88
  loc_6501DA: FLdRfVar var_9C
  loc_6501DD: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6501E2: FLdRfVar var_9C
  loc_6501E5: CStrVarTmp
  loc_6501E6: FStStr var_88
  loc_6501E9: FFree1Var var_9C = ""
  loc_6501EC: LitStr "999999.99"
  loc_6501EF: LitStr "^U"
  loc_6501F2: ILdRf var_88
  loc_6501F5: FLdRfVar var_9C
  loc_6501F8: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6501FD: FLdRfVar var_9C
  loc_650200: CStrVarTmp
  loc_650201: FStStr var_88
  loc_650204: FFree1Var var_9C = ""
  loc_650207: LitStr "999999.99"
  loc_65020A: LitStr "^V"
  loc_65020D: ILdRf var_88
  loc_650210: FLdRfVar var_9C
  loc_650213: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650218: FLdRfVar var_9C
  loc_65021B: CStrVarTmp
  loc_65021C: FStStr var_88
  loc_65021F: FFree1Var var_9C = ""
  loc_650222: LitStr "999999.99"
  loc_650225: LitStr "^A"
  loc_650228: ILdRf var_88
  loc_65022B: FLdRfVar var_9C
  loc_65022E: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650233: FLdRfVar var_9C
  loc_650236: CStrVarTmp
  loc_650237: FStStr var_88
  loc_65023A: FFree1Var var_9C = ""
  loc_65023D: LitStr "9999-99999999"
  loc_650240: LitStr "^T"
  loc_650243: ILdRf var_88
  loc_650246: FLdRfVar var_9C
  loc_650249: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_65024E: FLdRfVar var_9C
  loc_650251: CStrVarTmp
  loc_650252: FStStr var_88
  loc_650255: FFree1Var var_9C = ""
  loc_650258: LitStr "99/99/9999"
  loc_65025B: LitStr "^D"
  loc_65025E: ILdRf var_88
  loc_650261: FLdRfVar var_9C
  loc_650264: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650269: FLdRfVar var_9C
  loc_65026C: CStrVarTmp
  loc_65026D: FStStr var_88
  loc_650270: FFree1Var var_9C = ""
  loc_650273: LitStr "99:99:99"
  loc_650276: LitStr "^M"
  loc_650279: ILdRf var_88
  loc_65027C: FLdRfVar var_9C
  loc_65027F: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650284: FLdRfVar var_9C
  loc_650287: CStrVarTmp
  loc_650288: FStStr var_88
  loc_65028B: FFree1Var var_9C = ""
  loc_65028E: LitStr "ABCDEFGHIJKLMNOPQRST"
  loc_650291: LitStr "^R"
  loc_650294: ILdRf var_88
  loc_650297: FLdRfVar var_9C
  loc_65029A: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_65029F: FLdRfVar var_9C
  loc_6502A2: CStrVarTmp
  loc_6502A3: FStStr var_88
  loc_6502A6: FFree1Var var_9C = ""
  loc_6502A9: LitStr "99.99"
  loc_6502AC: LitStr "^I"
  loc_6502AF: ILdRf var_88
  loc_6502B2: FLdRfVar var_9C
  loc_6502B5: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6502BA: FLdRfVar var_9C
  loc_6502BD: CStrVarTmp
  loc_6502BE: FStStr var_88
  loc_6502C1: FFree1Var var_9C = ""
  loc_6502C4: LitStr "99.99"
  loc_6502C7: LitStr "^J"
  loc_6502CA: ILdRf var_88
  loc_6502CD: FLdRfVar var_9C
  loc_6502D0: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6502D5: FLdRfVar var_9C
  loc_6502D8: CStrVarTmp
  loc_6502D9: FStStr var_88
  loc_6502DC: FFree1Var var_9C = ""
  loc_6502DF: LitStr "99.99"
  loc_6502E2: LitStr "^K"
  loc_6502E5: ILdRf var_88
  loc_6502E8: FLdRfVar var_9C
  loc_6502EB: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6502F0: FLdRfVar var_9C
  loc_6502F3: CStrVarTmp
  loc_6502F4: FStStr var_88
  loc_6502F7: FFree1Var var_9C = ""
  loc_6502FA: LitStr "999999.99"
  loc_6502FD: LitStr "^N"
  loc_650300: ILdRf var_88
  loc_650303: FLdRfVar var_9C
  loc_650306: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_65030B: FLdRfVar var_9C
  loc_65030E: CStrVarTmp
  loc_65030F: FStStr var_88
  loc_650312: FFree1Var var_9C = ""
  loc_650315: LitStr "9999"
  loc_650318: LitStr "^C[N]"
  loc_65031B: ILdRf var_88
  loc_65031E: FLdRfVar var_9C
  loc_650321: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650326: FLdRfVar var_9C
  loc_650329: CStrVarTmp
  loc_65032A: FStStr var_88
  loc_65032D: FFree1Var var_9C = ""
  loc_650330: LitStr "ABCDEFGHIJKLMNOPQRST"
  loc_650333: LitStr "^C[R]"
  loc_650336: ILdRf var_88
  loc_650339: FLdRfVar var_9C
  loc_65033C: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650341: FLdRfVar var_9C
  loc_650344: CStrVarTmp
  loc_650345: FStStr var_88
  loc_650348: FFree1Var var_9C = ""
  loc_65034B: LitStr "ABCDEFGHIJKLMNOPQRST1234567890"
  loc_65034E: LitStr "^C[D]"
  loc_650351: ILdRf var_88
  loc_650354: FLdRfVar var_9C
  loc_650357: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_65035C: FLdRfVar var_9C
  loc_65035F: CStrVarTmp
  loc_650360: FStStr var_88
  loc_650363: FFree1Var var_9C = ""
  loc_650366: LitStr "123456789012345"
  loc_650369: LitStr "^C[T]"
  loc_65036C: ILdRf var_88
  loc_65036F: FLdRfVar var_9C
  loc_650372: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650377: FLdRfVar var_9C
  loc_65037A: CStrVarTmp
  loc_65037B: FStStr var_88
  loc_65037E: FFree1Var var_9C = ""
  loc_650381: LitStr "1234567890123"
  loc_650384: LitStr "^C[C]"
  loc_650387: ILdRf var_88
  loc_65038A: FLdRfVar var_9C
  loc_65038D: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650392: FLdRfVar var_9C
  loc_650395: CStrVarTmp
  loc_650396: FStStr var_88
  loc_650399: FFree1Var var_9C = ""
  loc_65039C: LitStr "XX"
  loc_65039F: LitStr "^C[B]"
  loc_6503A2: ILdRf var_88
  loc_6503A5: FLdRfVar var_9C
  loc_6503A8: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6503AD: FLdRfVar var_9C
  loc_6503B0: CStrVarTmp
  loc_6503B1: FStStr var_88
  loc_6503B4: FFree1Var var_9C = ""
  loc_6503B7: LitStr "ABCDEFGHIJKLMNOPQRST1234"
  loc_6503BA: LitStr "^C[I]"
  loc_6503BD: ILdRf var_88
  loc_6503C0: FLdRfVar var_9C
  loc_6503C3: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6503C8: FLdRfVar var_9C
  loc_6503CB: CStrVarTmp
  loc_6503CC: FStStr var_88
  loc_6503CF: FFree1Var var_9C = ""
  loc_6503D2: ImpAdLdI4 MemVar_74BEC0
  loc_6503D5: LitStr "^C[A]"
  loc_6503D8: ILdRf var_88
  loc_6503DB: FLdRfVar var_9C
  loc_6503DE: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6503E3: FLdRfVar var_9C
  loc_6503E6: CStrVarTmp
  loc_6503E7: FStStr var_88
  loc_6503EA: FFree1Var var_9C = ""
  loc_6503ED: ImpAdLdI4 MemVar_74BED0
  loc_6503F0: LitStr "^C[M]"
  loc_6503F3: ILdRf var_88
  loc_6503F6: FLdRfVar var_9C
  loc_6503F9: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_6503FE: FLdRfVar var_9C
  loc_650401: CStrVarTmp
  loc_650402: FStStr var_88
  loc_650405: FFree1Var var_9C = ""
  loc_650408: ILdRf var_88
  loc_65040B: ImpAdCallI2 Proc_103_2_6294F8()
  loc_650410: FStStr var_88
  loc_650413: LitI2_Byte 0
  loc_650415: LitStr "^X"
  loc_650418: ILdRf var_88
  loc_65041B: FLdRfVar var_9C
  loc_65041E: ImpAdCallFPR4  = Proc_103_3_624968(, , )
  loc_650423: FLdRfVar var_9C
  loc_650426: CStrVarTmp
  loc_650427: FStStr var_88
  loc_65042A: FFree1Var var_9C = ""
  loc_65042D: LitI4 &HD
  loc_650432: ImpAdCallI2 Chr$()
  loc_650437: FStStrNoPop var_A0
  loc_65043A: LitI4 &HA
  loc_65043F: ImpAdCallI2 Chr$()
  loc_650444: FStStrNoPop var_A4
  loc_650447: ConcatStr
  loc_650448: FStStrNoPop var_A8
  loc_65044B: LitStr "~~"
  loc_65044E: ILdRf var_88
  loc_650451: FLdRfVar var_9C
  loc_650454: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_650459: FLdRfVar var_9C
  loc_65045C: CStrVarTmp
  loc_65045D: FStStr var_88
  loc_650460: FFreeStr var_A0 = "": var_A4 = ""
  loc_650469: FFree1Var var_9C = ""
  loc_65046C: ExitProc
  loc_65046D: FLdZeroAd arg_19C
End Function
