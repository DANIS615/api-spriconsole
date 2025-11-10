
Private Function Proc_155_0_5F714C(arg_C, arg_10) '5F714C
  'Data Table: 403144
  loc_5F70A0: ILdRf arg_C
  loc_5F70A3: FStStrCopy var_8C
  loc_5F70A6: LitI4 &H7530
  loc_5F70AB: FLdRfVar var_A8
  loc_5F70AE: ImpAdCallFPR4  = Space()
  loc_5F70B3: FLdRfVar var_A8
  loc_5F70B6: CStrVarTmp
  loc_5F70B7: FStStr var_90
  loc_5F70BA: FFree1Var var_A8 = ""
  loc_5F70BD: LitI4 3
  loc_5F70C2: ImpAdCallI2 Chr$()
  loc_5F70C7: FStStrNoPop var_AC
  loc_5F70CA: LitStr "135"
  loc_5F70CD: ConcatStr
  loc_5F70CE: FStStrNoPop var_B0
  loc_5F70D1: ILdRf var_8C
  loc_5F70D4: ConcatStr
  loc_5F70D5: FStStr var_98
  loc_5F70D8: FFreeStr var_AC = ""
  loc_5F70DF: LitI2 1000
  loc_5F70E2: LitI4 &H7530
  loc_5F70E7: ILdRf var_90
  loc_5F70EA: FLdRfVar var_B4
  loc_5F70ED: CStr2Ansi
  loc_5F70EE: ILdRf var_B4
  loc_5F70F1: ILdRf var_98
  loc_5F70F4: FLdRfVar var_B0
  loc_5F70F7: CStr2Ansi
  loc_5F70F8: ILdRf var_B0
  loc_5F70FB: ImpAdLdI4 MemVar_74BF90
  loc_5F70FE: FLdRfVar var_AC
  loc_5F7101: CStr2Ansi
  loc_5F7102: ILdRf var_AC
  loc_5F7105: ImpAdCallI2 ()
  loc_5F710A: FStI2 var_B6
  loc_5F710D: SetLastSystemError
  loc_5F710E: ILdRf var_AC
  loc_5F7111: ImpAdLdRf MemVar_74BF90
  loc_5F7114: CStr2Uni
  loc_5F7116: ILdRf var_B0
  loc_5F7119: FLdRfVar var_98
  loc_5F711C: CStr2Uni
  loc_5F711E: ILdRf var_B4
  loc_5F7121: FLdRfVar var_90
  loc_5F7124: CStr2Uni
  loc_5F7126: FLdI2 var_B6
  loc_5F7129: CI4UI1
  loc_5F712A: FStR4 var_94
  loc_5F712D: FFreeStr var_AC = "": var_B0 = ""
  loc_5F7136: ILdRf var_90
  loc_5F7139: IStStrCopy arg_10
  loc_5F713D: ILdRf var_94
  loc_5F7140: LitI4 0
  loc_5F7145: EqI4
  loc_5F7146: FStI2 var_86
  loc_5F7149: ExitProcI2
  loc_5F714A: CRec2Uni arg_CFF
End Function

Private Function Proc_155_1_5DEFFC(arg_C, arg_10) '5DEFFC
  'Data Table: 403144
  loc_5DEFB0: ILdRf arg_10
  loc_5DEFB3: FStStrCopy var_88
  loc_5DEFB6: ILdRf arg_C
  loc_5DEFB9: CVarRef
  loc_5DEFBE: ImpAdCallI2 TypeName()
  loc_5DEFC3: FStStr var_9C
  loc_5DEFC6: ILdRf var_9C
  loc_5DEFC9: LitStr "Printer"
  loc_5DEFCC: EqStr
  loc_5DEFCE: BranchF loc_5DEFE0
  loc_5DEFD1: ILdRf var_88
  loc_5DEFD4: ILdI4 arg_C
  loc_5DEFD7: PrintObject
  loc_5DEFDD: Branch loc_5DEFFB
  loc_5DEFE0: ILdRf var_9C
  loc_5DEFE3: LitStr "ListBox"
  loc_5DEFE6: EqStr
  loc_5DEFE8: BranchF loc_5DEFFB
  loc_5DEFEB: FLdRfVar var_88
  loc_5DEFEE: CDargRef
  loc_5DEFF2: ILdPr
  loc_5DEFF5: LateMemCall
  loc_5DEFFB: ExitProc
End Function

Private Function Proc_155_2_5FA6B8(arg_10) '5FA6B8
  'Data Table: 403144
  loc_5FA5FC: LitI4 1
  loc_5FA601: ILdI4 arg_10
  loc_5FA604: LitStr "."
  loc_5FA607: LitI4 0
  loc_5FA60C: FnInStr4
  loc_5FA60E: CBoolI4
  loc_5FA610: BranchF loc_5FA62A
  loc_5FA613: ILdI4 arg_10
  loc_5FA616: ImpAdCallFPR4 push Val()
  loc_5FA61B: CVarR8
  loc_5FA61F: FStVar var_94
  loc_5FA623: ExitProcCb
  loc_5FA627: Branch loc_5FA6AB
  loc_5FA62A: LitI4 1
  loc_5FA62F: ILdRf arg_10
  loc_5FA632: CVarRef
  loc_5FA637: FLdRfVar var_B8
  loc_5FA63A: ImpAdCallFPR4  = Trim()
  loc_5FA63F: FLdRfVar var_B8
  loc_5FA642: LitVarStr var_C8, ","
  loc_5FA647: LitI4 0
  loc_5FA64C: FnInStr4Var
  loc_5FA650: CI2Var
  loc_5FA651: FStI2 var_96
  loc_5FA654: FFreeVar var_B8 = ""
  loc_5FA65B: FLdI2 var_96
  loc_5FA65E: LitI2_Byte 0
  loc_5FA660: NeI2
  loc_5FA661: BranchF loc_5FA6AB
  loc_5FA664: LitVarI2 var_F8, 10
  loc_5FA669: ILdRf arg_10
  loc_5FA66C: CVarRef
  loc_5FA671: FLdRfVar var_B8
  loc_5FA674: ImpAdCallFPR4  = Trim()
  loc_5FA679: FLdRfVar var_B8
  loc_5FA67C: FnLenVar var_D8
  loc_5FA680: FLdI2 var_96
  loc_5FA683: CVarI2 var_C8
  loc_5FA686: SubVar var_E8
  loc_5FA68A: PwrVar var_108
  loc_5FA68E: CI2Var
  loc_5FA68F: FStI2 var_98
  loc_5FA692: FFree1Var var_B8 = ""
  loc_5FA695: ILdI4 arg_10
  loc_5FA698: CR8Str
  loc_5FA69A: FLdI2 var_98
  loc_5FA69D: CR8I2
  loc_5FA69E: DivR8
  loc_5FA69F: CVarR8
  loc_5FA6A3: FStVar var_94
  loc_5FA6A7: ExitProcCb
  loc_5FA6AB: LitVarI2 var_A8, 0
  loc_5FA6B0: FStVar var_94
  loc_5FA6B4: ExitProcCb
End Function

Private Function Proc_155_3_5EE224() '5EE224
  'Data Table: 43B664
  loc_5EE1A4: FLdRfVar var_9A
  loc_5EE1A7: FLdRfVar var_8C
  loc_5EE1AA: FLdRfVar var_98
  loc_5EE1AD: ImpAdLdRf MemVar_74C760
  loc_5EE1B0: NewIfNullPr Formx
  loc_5EE1B3: from_stack_1v = Formx.global_4589716Get()
  loc_5EE1B8: FLdPr var_98
  loc_5EE1BB:  = Formx.Top
  loc_5EE1C0: FLdI2 var_9A
  loc_5EE1C3: NotI4
  loc_5EE1C4: FFree1Ad var_98
  loc_5EE1C7: BranchF loc_5EE1E2
  loc_5EE1CA: FLdRfVar var_AC
  loc_5EE1CD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5EE1D2: FLdRfVar var_AC
  loc_5EE1D5: CBoolVarNull
  loc_5EE1D7: FFree1Var var_AC = ""
  loc_5EE1DA: BranchF loc_5EE1DF
  loc_5EE1DD: ExitProcUI1
  loc_5EE1DF: Branch loc_5EE1A4
  loc_5EE1E2: LitVarI2 var_AC, 1
  loc_5EE1E7: LitI4 &H21
  loc_5EE1EC: FLdRfVar var_8C
  loc_5EE1EF: CVarRef
  loc_5EE1F4: FLdRfVar var_DC
  loc_5EE1F7: ImpAdCallFPR4  = Mid(, , )
  loc_5EE1FC: FLdRfVar var_DC
  loc_5EE1FF: CStrVarVal var_E0
  loc_5EE203: ImpAdCallI2 Asc()
  loc_5EE208: CStrUI1
  loc_5EE20A: FStStr var_94
  loc_5EE20D: FFree1Str var_E0
  loc_5EE210: FFreeVar var_AC = ""
  loc_5EE217: ILdRf var_94
  loc_5EE21A: CUI1Str
  loc_5EE21C: FStUI1 var_86
  loc_5EE220: ExitProcUI1
End Function

Private Function Proc_155_4_5E3A18(arg_C) '5E3A18
  'Data Table: 402358
  loc_5E39B8: ILdRf arg_C
  loc_5E39BB: FStStrCopy var_8C
  loc_5E39BE: LitI2_Byte 1
  loc_5E39C0: FStI2 var_8E
  loc_5E39C3: FLdI2 var_8E
  loc_5E39C6: CI4UI1
  loc_5E39C7: ILdRf var_8C
  loc_5E39CA: FnLenStr
  loc_5E39CB: LtI4
  loc_5E39CC: FLdI2 var_8E
  loc_5E39CF: LitI2 400
  loc_5E39D2: LtI2
  loc_5E39D3: AndI4
  loc_5E39D4: LitVarI2 var_B0, 8
  loc_5E39D9: FLdI2 var_8E
  loc_5E39DC: CI4UI1
  loc_5E39DD: ILdRf var_8C
  loc_5E39E0: ImpAdCallI2 Mid$(, , )
  loc_5E39E5: FStStrNoPop var_B4
  loc_5E39E8: ImpAdCallFPR4 push Val()
  loc_5E39ED: LitI2_Byte &H64
  loc_5E39EF: CR8I2
  loc_5E39F0: DivR8
  loc_5E39F1: CR8R8
  loc_5E39F2: LitI2_Byte 0
  loc_5E39F4: CR8I2
  loc_5E39F5: EqR4
  loc_5E39F6: AndI4
  loc_5E39F7: FFree1Str var_B4
  loc_5E39FA: FFree1Var var_B0 = ""
  loc_5E39FD: BranchF loc_5E3A0C
  loc_5E3A00: FLdI2 var_8E
  loc_5E3A03: LitI2_Byte 8
  loc_5E3A05: AddI2
  loc_5E3A06: FStI2 var_8E
  loc_5E3A09: Branch loc_5E39C3
  loc_5E3A0C: FLdI2 var_8E
  loc_5E3A0F: LitI2 400
  loc_5E3A12: GtI2
  loc_5E3A13: FStI2 var_86
  loc_5E3A16: ExitProcI2
End Function

Private Function Proc_155_5_610D30(arg_C) '610D30
  'Data Table: 43B664
  loc_610C34: ILdRf arg_C
  loc_610C37: FStStrCopy var_8C
  loc_610C3A: LitI4 &H14
  loc_610C3F: FLdRfVar var_A4
  loc_610C42: ImpAdCallFPR4  = Space()
  loc_610C47: FLdRfVar var_A4
  loc_610C4A: CStrVarTmp
  loc_610C4B: FStStr var_88
  loc_610C4E: FFree1Var var_A4 = ""
  loc_610C51: FLdRfVar var_AA
  loc_610C54: FLdRfVar var_90
  loc_610C57: FLdRfVar var_A8
  loc_610C5A: ImpAdLdRf MemVar_74C760
  loc_610C5D: NewIfNullPr Formx
  loc_610C60: from_stack_1v = Formx.global_4589716Get()
  loc_610C65: FLdPr var_A8
  loc_610C68: Call 0.Method_arg_230 ()
  loc_610C6D: FLdI2 var_AA
  loc_610C70: NotI4
  loc_610C71: FFree1Ad var_A8
  loc_610C74: BranchF loc_610C8E
  loc_610C77: FLdRfVar var_A4
  loc_610C7A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_610C7F: FLdRfVar var_A4
  loc_610C82: CBoolVarNull
  loc_610C84: FFree1Var var_A4 = ""
  loc_610C87: BranchF loc_610C8B
  loc_610C8A: ExitProc
  loc_610C8B: Branch loc_610C51
  loc_610C8E: FLdRfVar var_90
  loc_610C91: CVarRef
  loc_610C96: FLdRfVar var_A4
  loc_610C99: ImpAdCallFPR4  = Trim()
  loc_610C9E: FLdRfVar var_A4
  loc_610CA1: CStrVarTmp
  loc_610CA2: FStStr var_90
  loc_610CA5: FFree1Var var_A4 = ""
  loc_610CA8: LitI2_Byte &HB
  loc_610CAA: FStI2 var_92
  loc_610CAD: FLdI2 var_92
  loc_610CB0: CI4UI1
  loc_610CB1: ILdRf var_90
  loc_610CB4: FnLenStr
  loc_610CB5: LtI4
  loc_610CB6: BranchF loc_610D2E
  loc_610CB9: LitVarI2 var_A4, 3
  loc_610CBE: FLdI2 var_92
  loc_610CC1: CI4UI1
  loc_610CC2: ILdRf var_90
  loc_610CC5: ImpAdCallI2 Mid$(, , )
  loc_610CCA: FStStrNoPop var_C0
  loc_610CCD: ILdRf var_8C
  loc_610CD0: EqStr
  loc_610CD2: FFree1Str var_C0
  loc_610CD5: FFree1Var var_A4 = ""
  loc_610CD8: BranchF loc_610D22
  loc_610CDB: LitVarI2 var_A4, 20
  loc_610CE0: FLdI2 var_92
  loc_610CE3: LitI2_Byte 4
  loc_610CE5: AddI2
  loc_610CE6: CI4UI1
  loc_610CE7: ILdRf var_90
  loc_610CEA: ImpAdCallI2 Mid$(, , )
  loc_610CEF: FStStr var_C0
  loc_610CF2: LitI4 1
  loc_610CF7: LitI4 1
  loc_610CFC: LitVarStr var_E0, "!@@@@@@@@@@@@@@@@@@@@"
  loc_610D01: FStVarCopyObj var_F0
  loc_610D04: FLdRfVar var_F0
  loc_610D07: FLdZeroAd var_C0
  loc_610D0A: CVarStr var_D0
  loc_610D0D: ImpAdCallI2 Format$(, )
  loc_610D12: FStStr var_88
  loc_610D15: FFree1Str var_C0
  loc_610D18: FFreeVar var_A4 = "": var_D0 = ""
  loc_610D21: ExitProc
  loc_610D22: FLdI2 var_92
  loc_610D25: LitI2_Byte &H18
  loc_610D27: AddI2
  loc_610D28: FStI2 var_92
  loc_610D2B: Branch loc_610CAD
  loc_610D2E: ExitProc
End Function

Private Function Proc_155_6_625FBC() '625FBC
  'Data Table: 40B4F8
  loc_625E68: LitI2_Byte 1
  loc_625E6A: FLdRfVar var_8A
  loc_625E6D: ImpAdLdUI1
  loc_625E71: CI2UI1
  loc_625E73: ForI2 var_8E
  loc_625E79: FLdRfVar var_9C
  loc_625E7C: FLdI2 var_8A
  loc_625E7F: CI4UI1
  loc_625E80: FMemLdRf unk_40B505
  loc_625E85: AryInRecLdPr
  loc_625E8B: MemLdI2 global_0
  loc_625E8E: FLdRfVar var_98
  loc_625E91: LitI2_Byte 0
  loc_625E93: ImpAdLdRf MemVar_74E0B0
  loc_625E96: NewIfNullPr frmTicket
  loc_625E99: VCallAd Control_ID_cmbImpresora
  loc_625E9C: FStAdFunc var_94
  loc_625E9F: FLdPr var_94
  loc_625EA2: Set from_stack_2 = frmTicket(from_stack_1)
  loc_625EA7: FLdPr var_98
  loc_625EAA: from_stack_2 = Me.List(from_stack_1)
  loc_625EAF: LitI4 &H32
  loc_625EB4: ILdRf var_9C
  loc_625EB7: ImpAdCallI2 Left$(, )
  loc_625EBC: FStStr var_174
  loc_625EBF: ILdRf var_88
  loc_625EC2: LitI4 1
  loc_625EC7: LitI4 1
  loc_625ECC: LitVarStr var_BC, "!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  loc_625ED1: FStVarCopyObj var_CC
  loc_625ED4: FLdRfVar var_CC
  loc_625ED7: FLdZeroAd var_174
  loc_625EDA: CVarStr var_AC
  loc_625EDD: ImpAdCallI2 Format$(, )
  loc_625EE2: FStStrNoPop var_D0
  loc_625EE5: ConcatStr
  loc_625EE6: CVarStr var_160
  loc_625EE9: LitI4 1
  loc_625EEE: LitI4 1
  loc_625EF3: LitVarStr var_F0, "@@@@"
  loc_625EF8: FStVarCopyObj var_100
  loc_625EFB: FLdRfVar var_100
  loc_625EFE: FLdI2 var_8A
  loc_625F01: CI4UI1
  loc_625F02: FMemLdRf unk_40B505
  loc_625F07: AryInRecLdRf
  loc_625F0D: CVarRef
  loc_625F12: ImpAdCallI2 Format$(, )
  loc_625F17: CVarStr var_140
  loc_625F1A: LitVarStr var_120, "    "
  loc_625F1F: FStVarCopyObj var_130
  loc_625F22: FLdRfVar var_130
  loc_625F25: FLdI2 var_8A
  loc_625F28: CI4UI1
  loc_625F29: FMemLdRf unk_40B505
  loc_625F2E: AryInRecLdPr
  loc_625F34: MemLdStr global_0
  loc_625F37: LitStr vbNullString
  loc_625F3A: EqStr
  loc_625F3C: CVarBoolI2 var_110
  loc_625F40: FLdRfVar var_150
  loc_625F43: ImpAdCallFPR4  = IIf(, , )
  loc_625F48: FLdRfVar var_150
  loc_625F4B: ConcatVar var_170
  loc_625F4F: CStrVarTmp
  loc_625F50: FStStr var_88
  loc_625F53: FFreeStr var_9C = "": var_D0 = ""
  loc_625F5C: FFreeAd var_94 = ""
  loc_625F63: FFreeVar var_AC = "": var_CC = "": var_100 = "": var_110 = "": var_130 = "": var_140 = "": var_160 = "": var_150 = ""
  loc_625F78: FLdRfVar var_8A
  loc_625F7B: NextI2 var_8E, loc_625E79
  loc_625F80: ILdRf var_88
  loc_625F83: CVarStr var_BC
  loc_625F86: LitI4 &H6C0
  loc_625F8B: ILdRf var_88
  loc_625F8E: FnLenStr
  loc_625F8F: SubI4
  loc_625F90: FLdRfVar var_AC
  loc_625F93: ImpAdCallFPR4  = Space()
  loc_625F98: FLdRfVar var_AC
  loc_625F9B: ConcatVar var_CC
  loc_625F9F: CStrVarTmp
  loc_625FA0: FStStr var_88
  loc_625FA3: FFreeVar var_AC = ""
  loc_625FAA: ILdRf var_88
  loc_625FAD: LitStr "PumpPrinter"
  loc_625FB0: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_625FB3: LitStr "CEM44"
  loc_625FB6: ImpAdCallFPR4 SaveSetting(, , , )
  loc_625FBB: ExitProc
End Function
