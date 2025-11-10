
Private Function Proc_142_0_62D24C(arg_C, arg_10) '62D24C
  'Data Table: 40B4F8
  loc_62D0B4: ILdRf arg_C
  loc_62D0B7: FStStrCopy var_8C
  loc_62D0BA: LitI4 1
  loc_62D0BF: ILdRf var_8C
  loc_62D0C2: LitStr "."
  loc_62D0C5: LitI4 0
  loc_62D0CA: FnInStr4
  loc_62D0CC: CI2I4
  loc_62D0CD: FStI2 var_8E
  loc_62D0D0: LitI2_Byte 0
  loc_62D0D2: FLdI2 var_8E
  loc_62D0D5: LtI2
  loc_62D0D6: BranchF loc_62D1DF
  loc_62D0D9: FLdI2 var_8E
  loc_62D0DC: LitI2_Byte 1
  loc_62D0DE: AddI2
  loc_62D0DF: CI4UI1
  loc_62D0E0: ILdRf var_8C
  loc_62D0E3: LitStr "."
  loc_62D0E6: LitI4 0
  loc_62D0EB: FnInStr4
  loc_62D0ED: LitI4 0
  loc_62D0F2: GtI4
  loc_62D0F3: BranchF loc_62D12A
  loc_62D0F6: FLdI2 var_8E
  loc_62D0F9: LitI2_Byte 1
  loc_62D0FB: AddI2
  loc_62D0FC: CI4UI1
  loc_62D0FD: ILdRf var_8C
  loc_62D100: LitStr "."
  loc_62D103: LitI4 0
  loc_62D108: FnInStr4
  loc_62D10A: LitI4 1
  loc_62D10F: SubI4
  loc_62D110: CVarI4
  loc_62D114: LitI4 1
  loc_62D119: ILdRf var_8C
  loc_62D11C: ImpAdCallI2 Mid$(, , )
  loc_62D121: FStStr var_88
  loc_62D124: FFree1Var var_B0 = ""
  loc_62D127: Branch loc_62D1DC
  loc_62D12A: FLdI2 arg_10
  loc_62D12D: BranchF loc_62D1D6
  loc_62D130: FLdI2 var_8E
  loc_62D133: LitI2_Byte 1
  loc_62D135: SubI2
  loc_62D136: CVarI2 var_B0
  loc_62D139: LitI4 1
  loc_62D13E: ILdRf var_8C
  loc_62D141: ImpAdCallI2 Mid$(, , )
  loc_62D146: FStStrNoPop var_B4
  loc_62D149: ImpAdCallFPR4 push Val()
  loc_62D14E: CStrR8
  loc_62D150: FStStrNoPop var_B8
  loc_62D153: LitStr "."
  loc_62D156: ConcatStr
  loc_62D157: FStStrNoPop var_DC
  loc_62D15A: LitVarI2 var_D8, 2
  loc_62D15F: FLdI2 var_8E
  loc_62D162: LitI2_Byte 1
  loc_62D164: AddI2
  loc_62D165: CI4UI1
  loc_62D166: ILdRf var_8C
  loc_62D169: ImpAdCallI2 Mid$(, , )
  loc_62D16E: FStStrNoPop var_E0
  loc_62D171: ConcatStr
  loc_62D172: FStStr var_8C
  loc_62D175: FFreeStr var_B4 = "": var_B8 = "": var_DC = ""
  loc_62D180: FFreeVar var_B0 = ""
  loc_62D187: ILdRf var_8C
  loc_62D18A: ImpAdCallFPR4 push Val()
  loc_62D18F: CR8R8
  loc_62D190: LitDate 99.99
  loc_62D199: GtR4
  loc_62D19A: BranchF loc_62D1CD
  loc_62D19D: ILdRf var_8C
  loc_62D1A0: FnLenStr
  loc_62D1A1: LitI4 1
  loc_62D1A6: SubI4
  loc_62D1A7: ILdRf var_8C
  loc_62D1AA: ImpAdCallI2 Left$(, )
  loc_62D1AF: FStStr var_B8
  loc_62D1B2: FLdI2 arg_10
  loc_62D1B5: FLdZeroAd var_B8
  loc_62D1B8: FStStrNoPop var_B4
  loc_62D1BB: ImpAdCallI2 Proc_142_0_62D24C(, )
  loc_62D1C0: FStStr var_88
  loc_62D1C3: FFreeStr var_B4 = ""
  loc_62D1CA: Branch loc_62D1D3
  loc_62D1CD: ILdRf var_8C
  loc_62D1D0: FStStrCopy var_88
  loc_62D1D3: Branch loc_62D1DC
  loc_62D1D6: ILdRf var_8C
  loc_62D1D9: FStStrCopy var_88
  loc_62D1DC: Branch loc_62D248
  loc_62D1DF: FLdI2 arg_10
  loc_62D1E2: BranchF loc_62D23B
  loc_62D1E5: ILdRf var_8C
  loc_62D1E8: ImpAdCallFPR4 push Val()
  loc_62D1ED: CR8R8
  loc_62D1EE: LitDate 99.99
  loc_62D1F7: GtR4
  loc_62D1F8: BranchF loc_62D22B
  loc_62D1FB: ILdRf var_8C
  loc_62D1FE: FnLenStr
  loc_62D1FF: LitI4 1
  loc_62D204: SubI4
  loc_62D205: ILdRf var_8C
  loc_62D208: ImpAdCallI2 Left$(, )
  loc_62D20D: FStStr var_B8
  loc_62D210: FLdI2 arg_10
  loc_62D213: FLdZeroAd var_B8
  loc_62D216: FStStrNoPop var_B4
  loc_62D219: ImpAdCallI2 Proc_142_0_62D24C(, )
  loc_62D21E: FStStr var_88
  loc_62D221: FFreeStr var_B4 = ""
  loc_62D228: Branch loc_62D238
  loc_62D22B: ILdRf var_8C
  loc_62D22E: ImpAdCallFPR4 push Val()
  loc_62D233: CStrR8
  loc_62D235: FStStr var_88
  loc_62D238: Branch loc_62D248
  loc_62D23B: ILdRf var_8C
  loc_62D23E: ImpAdCallFPR4 push Val()
  loc_62D243: CStrR8
  loc_62D245: FStStr var_88
  loc_62D248: ExitProc
End Function

Private Function Proc_142_1_6245FC(arg_C) '6245FC
  'Data Table: 40B4F8
  loc_624490: ILdRf arg_C
  loc_624493: FStStrCopy var_8C
  loc_624496: LitStr vbNullString
  loc_624499: FStStrCopy var_88
  loc_62449C: ILdRf var_8C
  loc_62449F: FnLenStr
  loc_6244A0: LitI4 1
  loc_6244A5: AndI4
  loc_6244A6: LitI4 1
  loc_6244AB: EqI4
  loc_6244AC: BranchF loc_6244B6
  loc_6244AF: LitStr "???"
  loc_6244B2: FStStrCopy var_88
  loc_6244B5: ExitProc
  loc_6244B6: LitI2_Byte 1
  loc_6244B8: FLdRfVar var_8E
  loc_6244BB: ILdRf var_8C
  loc_6244BE: FnLenStr
  loc_6244BF: CI2I4
  loc_6244C0: LitI2_Byte 2
  loc_6244C2: ForStepI2 var_98
  loc_6244C8: LitVarI2 var_B8, 1
  loc_6244CD: FLdI2 var_8E
  loc_6244D0: CI4UI1
  loc_6244D1: ILdRf var_8C
  loc_6244D4: ImpAdCallI2 Mid$(, , )
  loc_6244D9: CVarStr var_C8
  loc_6244DC: FLdRfVar var_D8
  loc_6244DF: ImpAdCallFPR4  = Ucase()
  loc_6244E4: FLdRfVar var_D8
  loc_6244E7: CStrVarVal var_DC
  loc_6244EB: ImpAdCallI2 Asc()
  loc_6244F0: FStI2 var_92
  loc_6244F3: FFree1Str var_DC
  loc_6244F6: FFreeVar var_B8 = "": var_C8 = ""
  loc_6244FF: LitVarI2 var_B8, 1
  loc_624504: FLdI2 var_8E
  loc_624507: LitI2_Byte 1
  loc_624509: AddI2
  loc_62450A: CI4UI1
  loc_62450B: ILdRf var_8C
  loc_62450E: ImpAdCallI2 Mid$(, , )
  loc_624513: CVarStr var_C8
  loc_624516: FLdRfVar var_D8
  loc_624519: ImpAdCallFPR4  = Ucase()
  loc_62451E: FLdRfVar var_D8
  loc_624521: CStrVarVal var_DC
  loc_624525: ImpAdCallI2 Asc()
  loc_62452A: FStI2 var_94
  loc_62452D: FFree1Str var_DC
  loc_624530: FFreeVar var_B8 = "": var_C8 = ""
  loc_624539: LitI2_Byte &H30
  loc_62453B: FLdI2 var_92
  loc_62453E: LeI2
  loc_62453F: FLdI2 var_92
  loc_624542: LitI2_Byte &H39
  loc_624544: LeI2
  loc_624545: AndI4
  loc_624546: LitI2_Byte &H41
  loc_624548: FLdI2 var_92
  loc_62454B: LeI2
  loc_62454C: FLdI2 var_92
  loc_62454F: LitI2_Byte &H46
  loc_624551: LeI2
  loc_624552: AndI4
  loc_624553: OrI4
  loc_624554: LitI2_Byte &H30
  loc_624556: FLdI2 var_94
  loc_624559: LeI2
  loc_62455A: FLdI2 var_94
  loc_62455D: LitI2_Byte &H39
  loc_62455F: LeI2
  loc_624560: AndI4
  loc_624561: LitI2_Byte &H41
  loc_624563: FLdI2 var_94
  loc_624566: LeI2
  loc_624567: FLdI2 var_94
  loc_62456A: LitI2_Byte &H46
  loc_62456C: LeI2
  loc_62456D: AndI4
  loc_62456E: OrI4
  loc_62456F: AndI4
  loc_624570: BranchF loc_6245EA
  loc_624573: LitI2_Byte &H30
  loc_624575: FLdI2 var_92
  loc_624578: LeI2
  loc_624579: FLdI2 var_92
  loc_62457C: LitI2_Byte &H39
  loc_62457E: LeI2
  loc_62457F: AndI4
  loc_624580: BranchF loc_624592
  loc_624583: FLdI2 var_92
  loc_624586: LitI2_Byte &H30
  loc_624588: SubI2
  loc_624589: LitI2_Byte &H10
  loc_62458B: MulI2
  loc_62458C: FStI2 var_90
  loc_62458F: Branch loc_6245A1
  loc_624592: FLdI2 var_92
  loc_624595: LitI2_Byte &H41
  loc_624597: SubI2
  loc_624598: LitI2_Byte &HA
  loc_62459A: AddI2
  loc_62459B: LitI2_Byte &H10
  loc_62459D: MulI2
  loc_62459E: FStI2 var_90
  loc_6245A1: LitI2_Byte &H30
  loc_6245A3: FLdI2 var_94
  loc_6245A6: LeI2
  loc_6245A7: FLdI2 var_94
  loc_6245AA: LitI2_Byte &H39
  loc_6245AC: LeI2
  loc_6245AD: AndI4
  loc_6245AE: BranchF loc_6245C1
  loc_6245B1: FLdI2 var_90
  loc_6245B4: FLdI2 var_94
  loc_6245B7: LitI2_Byte &H30
  loc_6245B9: SubI2
  loc_6245BA: AddI2
  loc_6245BB: FStI2 var_90
  loc_6245BE: Branch loc_6245D1
  loc_6245C1: FLdI2 var_90
  loc_6245C4: FLdI2 var_94
  loc_6245C7: LitI2_Byte &H41
  loc_6245C9: SubI2
  loc_6245CA: LitI2_Byte &HA
  loc_6245CC: AddI2
  loc_6245CD: AddI2
  loc_6245CE: FStI2 var_90
  loc_6245D1: ILdRf var_88
  loc_6245D4: FLdI2 var_90
  loc_6245D7: CI4UI1
  loc_6245D8: ImpAdCallI2 Chr$()
  loc_6245DD: FStStrNoPop var_DC
  loc_6245E0: ConcatStr
  loc_6245E1: FStStr var_88
  loc_6245E4: FFree1Str var_DC
  loc_6245E7: Branch loc_6245F1
  loc_6245EA: LitStr "???"
  loc_6245ED: FStStrCopy var_88
  loc_6245F0: ExitProc
  loc_6245F1: FLdRfVar var_8E
  loc_6245F4: NextStepI2 var_98, loc_6244C8
  loc_6245F9: ExitProc
End Function

Private Function Proc_142_2_5CEBB4() '5CEBB4
  'Data Table: 40B4F8
  loc_5CEBA4: LitI2_Byte &H37
  loc_5CEBA6: PopTmpLdAd2 var_88
  loc_5CEBA9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5CEBAE: FStI2 var_86
  loc_5CEBB1: ExitProcI2
End Function

Private Function Proc_142_3_5D81F8() '5D81F8
  'Data Table: 40B4F8
  loc_5D81CC: LitVarI2 var_A8, 1
  loc_5D81D1: LitI4 8
  loc_5D81D6: ImpAdLdI4 MemVar_74BEAC
  loc_5D81D9: ImpAdCallI2 Mid$(, , )
  loc_5D81DE: FStStrNoPop var_AC
  loc_5D81E1: CUI1Str
  loc_5D81E3: CI2UI1
  loc_5D81E5: LitI2_Byte 1
  loc_5D81E7: AndI4
  loc_5D81E8: LitI2_Byte 1
  loc_5D81EA: EqI2
  loc_5D81EB: FStI2 var_86
  loc_5D81EE: FFree1Str var_AC
  loc_5D81F1: FFree1Var var_A8 = ""
  loc_5D81F4: ExitProcI2
End Function

Private Function Proc_142_4_5D8194() '5D8194
  'Data Table: 40B4F8
  loc_5D8168: LitVarI2 var_A8, 1
  loc_5D816D: LitI4 8
  loc_5D8172: ImpAdLdI4 MemVar_74BEAC
  loc_5D8175: ImpAdCallI2 Mid$(, , )
  loc_5D817A: FStStrNoPop var_AC
  loc_5D817D: CUI1Str
  loc_5D817F: CI2UI1
  loc_5D8181: LitI2_Byte 2
  loc_5D8183: AndI4
  loc_5D8184: LitI2_Byte 2
  loc_5D8186: EqI2
  loc_5D8187: FStI2 var_86
  loc_5D818A: FFree1Str var_AC
  loc_5D818D: FFree1Var var_A8 = ""
  loc_5D8190: ExitProcI2
End Function

Private Function Proc_142_5_5F7928(arg_C) '5F7928
  'Data Table: 40B4F8
  loc_5F7870: LitVarStr var_9C, "1"
  loc_5F7875: PopAdLdVar
  loc_5F7876: LitStr "TicketLayOut"
  loc_5F7879: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_5F787C: LitStr "CEM44"
  loc_5F787F: ImpAdCallI2 GetSetting(, , , )
  loc_5F7884: FStStr var_8C
  loc_5F7887: ILdRf var_8C
  loc_5F788A: FnLenStr
  loc_5F788B: LitI4 1
  loc_5F7890: EqI4
  loc_5F7891: BranchF loc_5F78D4
  loc_5F7894: FLdRfVar var_A2
  loc_5F7897: FLdRfVar var_8C
  loc_5F789A: ILdRf arg_C
  loc_5F789D: FLdRfVar var_A0
  loc_5F78A0: ImpAdLdRf MemVar_74C760
  loc_5F78A3: NewIfNullPr Formx
  loc_5F78A6: from_stack_1v = Formx.global_4589716Get()
  loc_5F78AB: FLdPr var_A0
  loc_5F78AE: Call 0.Method_arg_214 ()
  loc_5F78B3: FLdI2 var_A2
  loc_5F78B6: NotI4
  loc_5F78B7: FFree1Ad var_A0
  loc_5F78BA: BranchF loc_5F78D4
  loc_5F78BD: FLdRfVar var_B4
  loc_5F78C0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F78C5: FLdRfVar var_B4
  loc_5F78C8: CBoolVarNull
  loc_5F78CA: FFree1Var var_B4 = ""
  loc_5F78CD: BranchF loc_5F78D1
  loc_5F78D0: ExitProc
  loc_5F78D1: Branch loc_5F7894
  loc_5F78D4: FLdRfVar var_8C
  loc_5F78D7: CVarRef
  loc_5F78DC: FLdRfVar var_B4
  loc_5F78DF: ImpAdCallFPR4  = Trim()
  loc_5F78E4: FLdRfVar var_B4
  loc_5F78E7: CStrVarTmp
  loc_5F78E8: FStStr var_8C
  loc_5F78EB: FFree1Var var_B4 = ""
  loc_5F78EE: ILdRf var_8C
  loc_5F78F1: FnLenStr
  loc_5F78F2: LitI4 1
  loc_5F78F7: EqI4
  loc_5F78F8: BranchF loc_5F7904
  loc_5F78FB: LitStr vbNullString
  loc_5F78FE: FStStrCopy var_88
  loc_5F7901: Branch loc_5F7925
  loc_5F7904: LitStr ";"
  loc_5F7907: FStStrCopy var_B8
  loc_5F790A: FLdRfVar var_B8
  loc_5F790D: FLdRfVar var_8C
  loc_5F7910: FLdRfVar var_B4
  loc_5F7913: ImpAdCallFPR4  = Proc_103_0_5E3544(, )
  loc_5F7918: FLdRfVar var_B4
  loc_5F791B: CStrVarTmp
  loc_5F791C: FStStr var_88
  loc_5F791F: FFree1Str var_B8
  loc_5F7922: FFree1Var var_B4 = ""
  loc_5F7925: ExitProc
End Function

Private Function Proc_142_6_6093E8(arg_C) '6093E8
  'Data Table: 40B4F8
  loc_6092F0: LitI2_Byte 0
  loc_6092F2: FStI2 var_86
  loc_6092F5: LitI4 1
  loc_6092FA: ILdI4 arg_C
  loc_6092FD: LitStr "^C[N]"
  loc_609300: LitI4 0
  loc_609305: FnInStr4
  loc_609307: LitI4 0
  loc_60930C: GtI4
  loc_60930D: BranchF loc_609318
  loc_609310: LitI2_Byte &HFF
  loc_609312: FStI2 var_86
  loc_609315: Branch loc_6093E7
  loc_609318: LitI4 1
  loc_60931D: ILdI4 arg_C
  loc_609320: LitStr "^C[R]"
  loc_609323: LitI4 0
  loc_609328: FnInStr4
  loc_60932A: LitI4 0
  loc_60932F: GtI4
  loc_609330: BranchF loc_60933B
  loc_609333: LitI2_Byte &HFF
  loc_609335: FStI2 var_86
  loc_609338: Branch loc_6093E7
  loc_60933B: LitI4 1
  loc_609340: ILdI4 arg_C
  loc_609343: LitStr "^C[D]"
  loc_609346: LitI4 0
  loc_60934B: FnInStr4
  loc_60934D: LitI4 0
  loc_609352: GtI4
  loc_609353: BranchF loc_60935E
  loc_609356: LitI2_Byte &HFF
  loc_609358: FStI2 var_86
  loc_60935B: Branch loc_6093E7
  loc_60935E: LitI4 1
  loc_609363: ILdI4 arg_C
  loc_609366: LitStr "^C[T]"
  loc_609369: LitI4 0
  loc_60936E: FnInStr4
  loc_609370: LitI4 0
  loc_609375: GtI4
  loc_609376: BranchF loc_609381
  loc_609379: LitI2_Byte &HFF
  loc_60937B: FStI2 var_86
  loc_60937E: Branch loc_6093E7
  loc_609381: LitI4 1
  loc_609386: ILdI4 arg_C
  loc_609389: LitStr "^C[C]"
  loc_60938C: LitI4 0
  loc_609391: FnInStr4
  loc_609393: LitI4 0
  loc_609398: GtI4
  loc_609399: BranchF loc_6093A4
  loc_60939C: LitI2_Byte &HFF
  loc_60939E: FStI2 var_86
  loc_6093A1: Branch loc_6093E7
  loc_6093A4: LitI4 1
  loc_6093A9: ILdI4 arg_C
  loc_6093AC: LitStr "^C[B]"
  loc_6093AF: LitI4 0
  loc_6093B4: FnInStr4
  loc_6093B6: LitI4 0
  loc_6093BB: GtI4
  loc_6093BC: BranchF loc_6093C7
  loc_6093BF: LitI2_Byte &HFF
  loc_6093C1: FStI2 var_86
  loc_6093C4: Branch loc_6093E7
  loc_6093C7: LitI4 1
  loc_6093CC: ILdI4 arg_C
  loc_6093CF: LitStr "^C[I]"
  loc_6093D2: LitI4 0
  loc_6093D7: FnInStr4
  loc_6093D9: LitI4 0
  loc_6093DE: GtI4
  loc_6093DF: BranchF loc_6093E7
  loc_6093E2: LitI2_Byte &HFF
  loc_6093E4: FStI2 var_86
  loc_6093E7: ExitProcI2
End Function

Private Function Proc_142_7_708724(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '708724
  'Data Table: 40B4F8
  loc_707478: ILdRf arg_C
  loc_70747B: ImpAdCallI2 Proc_142_5_5F7928()
  loc_707480: FStStr var_A8
  loc_707483: FLdRfVar var_A8
  loc_707486: ImpAdCallI2 Proc_142_6_6093E8()
  loc_70748B: FStI2 var_CC
  loc_70748E: FLdI2 var_CC
  loc_707491: BranchF loc_7078CF
  loc_707494: ILdRf arg_14
  loc_707497: ImpAdCallI2 IsMissing()
  loc_70749C: BranchF loc_707527
  loc_70749F: LitI4 4
  loc_7074A4: FLdRfVar var_DC
  loc_7074A7: ImpAdCallFPR4  = Space()
  loc_7074AC: FLdRfVar var_DC
  loc_7074AF: IStDarg arg_14
  loc_7074B2: LitI4 &H14
  loc_7074B7: FLdRfVar var_DC
  loc_7074BA: ImpAdCallFPR4  = Space()
  loc_7074BF: FLdRfVar var_DC
  loc_7074C2: IStDarg arg_18
  loc_7074C5: LitI4 &H1E
  loc_7074CA: FLdRfVar var_DC
  loc_7074CD: ImpAdCallFPR4  = Space()
  loc_7074D2: FLdRfVar var_DC
  loc_7074D5: IStDarg arg_1C
  loc_7074D8: LitI4 &HF
  loc_7074DD: FLdRfVar var_DC
  loc_7074E0: ImpAdCallFPR4  = Space()
  loc_7074E5: FLdRfVar var_DC
  loc_7074E8: IStDarg arg_20
  loc_7074EB: LitI4 &HD
  loc_7074F0: FLdRfVar var_DC
  loc_7074F3: ImpAdCallFPR4  = Space()
  loc_7074F8: FLdRfVar var_DC
  loc_7074FB: IStDarg arg_24
  loc_7074FE: LitI4 2
  loc_707503: FLdRfVar var_DC
  loc_707506: ImpAdCallFPR4  = Space()
  loc_70750B: FLdRfVar var_DC
  loc_70750E: IStDarg arg_28
  loc_707511: LitI4 &H18
  loc_707516: FLdRfVar var_DC
  loc_707519: ImpAdCallFPR4  = Space()
  loc_70751E: FLdRfVar var_DC
  loc_707521: IStDarg arg_2C
  loc_707524: Branch loc_7078CF
  loc_707527: ILdRfDarg arg_14
  loc_70752D: CStrVarVal var_F0
  loc_707531: ImpAdCallFPR4 push Val()
  loc_707536: FStFPR8 var_110
  loc_707539: FLdRfVar var_106
  loc_70753C: FLdRfVar var_CA
  loc_70753F: FLdRfVar var_AC
  loc_707542: FLdFPR8 var_110
  loc_707545: CVarR8
  loc_707549: PopAdLdVar
  loc_70754A: FLdRfVar var_F4
  loc_70754D: ImpAdLdRf MemVar_74C760
  loc_707550: NewIfNullPr Formx
  loc_707553: from_stack_1v = Formx.global_4589716Get()
  loc_707558: FLdPr var_F4
  loc_70755B: Call 0.Method_arg_DC ()
  loc_707560: FLdI2 var_106
  loc_707563: NotI4
  loc_707564: FFree1Str var_F0
  loc_707567: FFree1Ad var_F4
  loc_70756A: BranchF loc_707584
  loc_70756D: FLdRfVar var_DC
  loc_707570: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_707575: FLdRfVar var_DC
  loc_707578: CBoolVarNull
  loc_70757A: FFree1Var var_DC = ""
  loc_70757D: BranchF loc_707581
  loc_707580: ExitProc
  loc_707581: Branch loc_707527
  loc_707584: FLdI2 var_CA
  loc_707587: BranchF loc_707743
  loc_70758A: ILdRfDarg arg_24
  loc_707590: LitVarStr var_EC, vbNullString
  loc_707595: HardType
  loc_707596: NeVar var_DC
  loc_70759A: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_70759F: CVarBoolI2 var_120
  loc_7075A3: AndVar var_130
  loc_7075A7: ImpAdCallI2 Proc_142_4_5D8194()
  loc_7075AC: CVarBoolI2 var_140
  loc_7075B0: AndVar var_150
  loc_7075B4: ImpAdCallI2 Proc_142_8_5D8068()
  loc_7075B9: CVarBoolI2 var_160
  loc_7075BD: AndVar var_170
  loc_7075C1: CBoolVarNull
  loc_7075C3: FFreeVar var_120 = "": var_140 = ""
  loc_7075CC: BranchF loc_707644
  loc_7075CF: LitI4 4
  loc_7075D4: FLdRfVar var_DC
  loc_7075D7: ImpAdCallFPR4  = Space()
  loc_7075DC: FLdRfVar var_DC
  loc_7075DF: IStDarg arg_14
  loc_7075E2: LitI4 &H14
  loc_7075E7: FLdRfVar var_DC
  loc_7075EA: ImpAdCallFPR4  = Space()
  loc_7075EF: FLdRfVar var_DC
  loc_7075F2: IStDarg arg_18
  loc_7075F5: LitI4 &H1E
  loc_7075FA: FLdRfVar var_DC
  loc_7075FD: ImpAdCallFPR4  = Space()
  loc_707602: FLdRfVar var_DC
  loc_707605: IStDarg arg_1C
  loc_707608: LitI4 &HF
  loc_70760D: FLdRfVar var_DC
  loc_707610: ImpAdCallFPR4  = Space()
  loc_707615: FLdRfVar var_DC
  loc_707618: IStDarg arg_20
  loc_70761B: LitI4 2
  loc_707620: FLdRfVar var_DC
  loc_707623: ImpAdCallFPR4  = Space()
  loc_707628: FLdRfVar var_DC
  loc_70762B: IStDarg arg_28
  loc_70762E: LitI4 &H18
  loc_707633: FLdRfVar var_DC
  loc_707636: ImpAdCallFPR4  = Space()
  loc_70763B: FLdRfVar var_DC
  loc_70763E: IStDarg arg_2C
  loc_707641: Branch loc_707740
  loc_707644: ILdRfDarg arg_14
  loc_70764A: LitVarStr var_EC, vbNullString
  loc_70764F: HardType
  loc_707650: EqVarBool
  loc_707652: BranchF loc_707668
  loc_707655: LitI4 4
  loc_70765A: FLdRfVar var_DC
  loc_70765D: ImpAdCallFPR4  = Space()
  loc_707662: FLdRfVar var_DC
  loc_707665: IStDarg arg_14
  loc_707668: ILdRfDarg arg_18
  loc_70766E: LitVarStr var_EC, vbNullString
  loc_707673: HardType
  loc_707674: EqVarBool
  loc_707676: BranchF loc_70768C
  loc_707679: LitI4 &H14
  loc_70767E: FLdRfVar var_DC
  loc_707681: ImpAdCallFPR4  = Space()
  loc_707686: FLdRfVar var_DC
  loc_707689: IStDarg arg_18
  loc_70768C: ILdRfDarg arg_1C
  loc_707692: LitVarStr var_EC, vbNullString
  loc_707697: HardType
  loc_707698: EqVarBool
  loc_70769A: BranchF loc_7076B0
  loc_70769D: LitI4 &H1E
  loc_7076A2: FLdRfVar var_DC
  loc_7076A5: ImpAdCallFPR4  = Space()
  loc_7076AA: FLdRfVar var_DC
  loc_7076AD: IStDarg arg_1C
  loc_7076B0: ILdRfDarg arg_20
  loc_7076B6: LitVarStr var_EC, vbNullString
  loc_7076BB: HardType
  loc_7076BC: EqVarBool
  loc_7076BE: BranchF loc_7076D4
  loc_7076C1: LitI4 &HF
  loc_7076C6: FLdRfVar var_DC
  loc_7076C9: ImpAdCallFPR4  = Space()
  loc_7076CE: FLdRfVar var_DC
  loc_7076D1: IStDarg arg_20
  loc_7076D4: ILdRfDarg arg_24
  loc_7076DA: LitVarStr var_EC, vbNullString
  loc_7076DF: HardType
  loc_7076E0: EqVarBool
  loc_7076E2: BranchF loc_7076F8
  loc_7076E5: LitI4 &HD
  loc_7076EA: FLdRfVar var_DC
  loc_7076ED: ImpAdCallFPR4  = Space()
  loc_7076F2: FLdRfVar var_DC
  loc_7076F5: IStDarg arg_24
  loc_7076F8: ILdRfDarg arg_28
  loc_7076FE: LitVarStr var_EC, vbNullString
  loc_707703: HardType
  loc_707704: EqVarBool
  loc_707706: BranchF loc_70771C
  loc_707709: LitI4 2
  loc_70770E: FLdRfVar var_DC
  loc_707711: ImpAdCallFPR4  = Space()
  loc_707716: FLdRfVar var_DC
  loc_707719: IStDarg arg_28
  loc_70771C: ILdRfDarg arg_2C
  loc_707722: LitVarStr var_EC, vbNullString
  loc_707727: HardType
  loc_707728: EqVarBool
  loc_70772A: BranchF loc_707740
  loc_70772D: LitI4 &H18
  loc_707732: FLdRfVar var_DC
  loc_707735: ImpAdCallFPR4  = Space()
  loc_70773A: FLdRfVar var_DC
  loc_70773D: IStDarg arg_2C
  loc_707740: Branch loc_7078CF
  loc_707743: LitVarI2 var_DC, 20
  loc_707748: LitI4 5
  loc_70774D: FLdRfVar var_AC
  loc_707750: CVarRef
  loc_707755: FLdRfVar var_130
  loc_707758: ImpAdCallFPR4  = Mid(, , )
  loc_70775D: FLdRfVar var_130
  loc_707760: IStDarg arg_18
  loc_707763: FFree1Var var_DC = ""
  loc_707766: LitVarI2 var_DC, 30
  loc_70776B: LitI4 &H1E
  loc_707770: FLdRfVar var_AC
  loc_707773: CVarRef
  loc_707778: FLdRfVar var_130
  loc_70777B: ImpAdCallFPR4  = Mid(, , )
  loc_707780: FLdRfVar var_130
  loc_707783: IStDarg arg_1C
  loc_707786: FFree1Var var_DC = ""
  loc_707789: LitVarI2 var_DC, 15
  loc_70778E: LitI4 &H46
  loc_707793: FLdRfVar var_AC
  loc_707796: CVarRef
  loc_70779B: FLdRfVar var_130
  loc_70779E: ImpAdCallFPR4  = Mid(, , )
  loc_7077A3: FLdRfVar var_130
  loc_7077A6: IStDarg arg_20
  loc_7077A9: FFree1Var var_DC = ""
  loc_7077AC: LitVarI2 var_DC, 13
  loc_7077B1: LitI4 &H55
  loc_7077B6: FLdRfVar var_AC
  loc_7077B9: CVarRef
  loc_7077BE: FLdRfVar var_130
  loc_7077C1: ImpAdCallFPR4  = Mid(, , )
  loc_7077C6: FLdRfVar var_130
  loc_7077C9: IStDarg arg_24
  loc_7077CC: FFree1Var var_DC = ""
  loc_7077CF: LitVarI2 var_DC, 1
  loc_7077D4: LitI4 &H63
  loc_7077D9: FLdRfVar var_AC
  loc_7077DC: CVarRef
  loc_7077E1: FLdRfVar var_130
  loc_7077E4: ImpAdCallFPR4  = Mid(, , )
  loc_7077E9: LitVarStr var_160, "No"
  loc_7077EE: FStVarCopyObj var_190
  loc_7077F1: FLdRfVar var_190
  loc_7077F4: LitVarStr var_140, "Si"
  loc_7077F9: FStVarCopyObj var_180
  loc_7077FC: FLdRfVar var_180
  loc_7077FF: FLdRfVar var_130
  loc_707802: LitVarStr var_120, "1"
  loc_707807: HardType
  loc_707808: EqVar var_150
  loc_70780C: FStVar var_170
  loc_707810: FLdRfVar var_170
  loc_707813: FLdRfVar var_1A0
  loc_707816: ImpAdCallFPR4  = IIf(, , )
  loc_70781B: FLdRfVar var_1A0
  loc_70781E: IStDarg arg_28
  loc_707821: FFreeVar var_DC = "": var_130 = "": var_170 = "": var_180 = ""
  loc_70782E: LitVarI2 var_DC, 1
  loc_707833: LitI4 &H62
  loc_707838: FLdRfVar var_AC
  loc_70783B: CVarRef
  loc_707840: FLdRfVar var_130
  loc_707843: ImpAdCallFPR4  = Mid(, , )
  loc_707848: LitI4 0
  loc_70784D: LitI4 4
  loc_707852: FLdRfVar var_1A4
  loc_707855: Redim
  loc_70785F: LitVarStr var_120, "Consumidor Final"
  loc_707864: LitI4 0
  loc_707869: ILdRf var_1A4
  loc_70786C: Ary1StVarCopy
  loc_70786E: LitVarStr var_140, "Exento"
  loc_707873: LitI4 1
  loc_707878: ILdRf var_1A4
  loc_70787B: Ary1StVarCopy
  loc_70787D: LitVarStr var_160, "No Responsable"
  loc_707882: LitI4 2
  loc_707887: ILdRf var_1A4
  loc_70788A: Ary1StVarCopy
  loc_70788C: LitVarStr var_1B4, "Responsable Inscripto"
  loc_707891: LitI4 3
  loc_707896: ILdRf var_1A4
  loc_707899: Ary1StVarCopy
  loc_70789B: LitVarStr var_1C4, "Responsable No Inscripto"
  loc_7078A0: LitI4 4
  loc_7078A5: ILdRf var_1A4
  loc_7078A8: Ary1StVarCopy
  loc_7078AA: FLdRfVar var_1A4
  loc_7078AD: FLdRfVar var_130
  loc_7078B0: FnCIntVar
  loc_7078B2: CR8I2
  loc_7078B3: PopFPR4
  loc_7078B4: FLdRfVar var_150
  loc_7078B7: ImpAdCallFPR4  = Choose(, )
  loc_7078BC: FLdRfVar var_1A4
  loc_7078BF: Erase
  loc_7078C0: FLdRfVar var_150
  loc_7078C3: IStDarg arg_2C
  loc_7078C6: FFreeVar var_DC = "": var_130 = ""
  loc_7078CF: ILdRf arg_10
  loc_7078D2: ImpAdCallI2 IsMissing()
  loc_7078D7: BranchF loc_707940
  loc_7078DA: ILdUI1 arg_30
  loc_7078DE: CI2UI1
  loc_7078E0: LitI2_Byte 0
  loc_7078E2: EqI2
  loc_7078E3: BranchF loc_707923
  loc_7078E6: FLdRfVar var_106
  loc_7078E9: FLdRfVar var_88
  loc_7078EC: FLdRfVar var_F4
  loc_7078EF: ImpAdLdRf MemVar_74C760
  loc_7078F2: NewIfNullPr Formx
  loc_7078F5: from_stack_1v = Formx.global_4589716Get()
  loc_7078FA: FLdPr var_F4
  loc_7078FD: Call 0.Method_arg_22C ()
  loc_707902: FLdI2 var_106
  loc_707905: NotI4
  loc_707906: FFree1Ad var_F4
  loc_707909: BranchF loc_707923
  loc_70790C: FLdRfVar var_DC
  loc_70790F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_707914: FLdRfVar var_DC
  loc_707917: CBoolVarNull
  loc_707919: FFree1Var var_DC = ""
  loc_70791C: BranchF loc_707920
  loc_70791F: ExitProc
  loc_707920: Branch loc_7078E6
  loc_707923: FLdRfVar var_88
  loc_707926: CVarRef
  loc_70792B: FLdRfVar var_DC
  loc_70792E: ImpAdCallFPR4  = Trim()
  loc_707933: FLdRfVar var_DC
  loc_707936: CStrVarTmp
  loc_707937: FStStr var_88
  loc_70793A: FFree1Var var_DC = ""
  loc_70793D: Branch loc_707A7A
  loc_707940: LitVarI2 var_DC, 3
  loc_707945: LitI4 1
  loc_70794A: ILdI4 arg_C
  loc_70794D: ImpAdCallI2 Mid$(, , )
  loc_707952: FStStrNoPop var_F0
  loc_707955: LitStr "NTV"
  loc_707958: EqStr
  loc_70795A: FFree1Str var_F0
  loc_70795D: FFree1Var var_DC = ""
  loc_707960: BranchF loc_70797A
  loc_707963: LitVar_Missing var_DC
  loc_707966: LitI4 4
  loc_70796B: ILdI4 arg_C
  loc_70796E: ImpAdCallI2 Mid$(, , )
  loc_707973: IStStr
  loc_707977: FFree1Var var_DC = ""
  loc_70797A: ILdUI1 arg_30
  loc_70797E: CI2UI1
  loc_707980: LitI2_Byte 0
  loc_707982: EqI2
  loc_707983: BranchF loc_7079DD
  loc_707986: FLdRfVar var_106
  loc_707989: FLdRfVar var_88
  loc_70798C: ILdRfDarg arg_10
  loc_707992: ILdI4 arg_C
  loc_707995: CVarStr var_EC
  loc_707998: ConcatVar var_DC
  loc_70799C: CStrVarVal var_F0
  loc_7079A0: FLdRfVar var_F4
  loc_7079A3: ImpAdLdRf MemVar_74C760
  loc_7079A6: NewIfNullPr Formx
  loc_7079A9: from_stack_1v = Formx.global_4589716Get()
  loc_7079AE: FLdPr var_F4
  loc_7079B1: Call 0.Method_arg_228 ()
  loc_7079B6: FLdI2 var_106
  loc_7079B9: NotI4
  loc_7079BA: FFree1Str var_F0
  loc_7079BD: FFree1Ad var_F4
  loc_7079C0: FFree1Var var_DC = ""
  loc_7079C3: BranchF loc_7079DD
  loc_7079C6: FLdRfVar var_DC
  loc_7079C9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7079CE: FLdRfVar var_DC
  loc_7079D1: CBoolVarNull
  loc_7079D3: FFree1Var var_DC = ""
  loc_7079D6: BranchF loc_7079DA
  loc_7079D9: ExitProc
  loc_7079DA: Branch loc_707986
  loc_7079DD: FLdRfVar var_88
  loc_7079E0: CVarRef
  loc_7079E5: FLdRfVar var_DC
  loc_7079E8: ImpAdCallFPR4  = Trim()
  loc_7079ED: FLdRfVar var_DC
  loc_7079F0: CStrVarTmp
  loc_7079F1: FStStr var_88
  loc_7079F4: FFree1Var var_DC = ""
  loc_7079F7: LitVarI2 var_DC, 1
  loc_7079FC: LitI4 &H54
  loc_707A01: FLdRfVar var_88
  loc_707A04: CVarRef
  loc_707A09: FLdRfVar var_130
  loc_707A0C: ImpAdCallFPR4  = Mid(, , )
  loc_707A11: FLdRfVar var_130
  loc_707A14: LitVarStr var_120, "1"
  loc_707A19: HardType
  loc_707A1A: EqVarBool
  loc_707A1C: FFreeVar var_DC = ""
  loc_707A23: BranchF loc_707A7A
  loc_707A26: FLdRfVar var_1C6
  loc_707A29: LitI2_Byte &H38
  loc_707A2B: PopTmpLdAd2 var_106
  loc_707A2E: ImpAdLdRf MemVar_74A21C
  loc_707A31: NewIfNullPr clsSecurity
  loc_707A39: FLdUI1
  loc_707A3D: CI2UI1
  loc_707A3F: LitI2_Byte 0
  loc_707A41: GtI2
  loc_707A42: BranchF loc_707A7A
  loc_707A45: ImpAdLdUI1
  loc_707A49: CI2UI1
  loc_707A4B: FLdRfVar var_1C6
  loc_707A4E: LitI2_Byte &H38
  loc_707A50: PopTmpLdAd2 var_106
  loc_707A53: ImpAdLdRf MemVar_74A21C
  loc_707A56: NewIfNullPr clsSecurity
  loc_707A5E: FLdUI1
  loc_707A62: CI2UI1
  loc_707A64: LitI2_Byte 1
  loc_707A66: AddI2
  loc_707A67: LtI2
  loc_707A68: BranchF loc_707A7A
  loc_707A6B: LitI2_Byte &H38
  loc_707A6D: PopTmpLdAd2 var_106
  loc_707A70: ImpAdCallI2 Proc_94_7_603DD0()
  loc_707A75: NotI4
  loc_707A76: BranchF loc_707A7A
  loc_707A79: ExitProc
  loc_707A7A: ILdRf var_88
  loc_707A7D: FnLenStr
  loc_707A7E: LitI4 1
  loc_707A83: EqI4
  loc_707A84: BranchF loc_707A88
  loc_707A87: ExitProc
  loc_707A88: ILdUI1 arg_30
  loc_707A8C: CI2UI1
  loc_707A8E: LitI2_Byte 0
  loc_707A90: EqI2
  loc_707A91: BranchF loc_707D13
  loc_707A94: LitVarI2 var_DC, 2
  loc_707A99: LitI4 1
  loc_707A9E: ILdRf var_88
  loc_707AA1: ImpAdCallI2 Mid$(, , )
  loc_707AA6: FStStrNoPop var_F0
  loc_707AA9: ImpAdCallFPR4 push Val()
  loc_707AAE: FStFPR8 var_110
  loc_707AB1: LitI4 1
  loc_707AB6: LitI4 1
  loc_707ABB: LitVarStr var_120, "@@"
  loc_707AC0: FStVarCopyObj var_150
  loc_707AC3: FLdRfVar var_150
  loc_707AC6: FLdFPR8 var_110
  loc_707AC9: CVarR8
  loc_707ACD: FLdRfVar var_170
  loc_707AD0: ImpAdCallFPR4  = Format(, )
  loc_707AD5: FLdRfVar var_170
  loc_707AD8: CStrVarTmp
  loc_707AD9: FStStr var_8C
  loc_707ADC: FFree1Str var_F0
  loc_707ADF: FFreeVar var_DC = "": var_130 = "": var_150 = ""
  loc_707AEA: LitVarI2 var_DC, 1
  loc_707AEF: LitI4 3
  loc_707AF4: ILdRf var_88
  loc_707AF7: ImpAdCallI2 Mid$(, , )
  loc_707AFC: CVarStr var_130
  loc_707AFF: FLdRfVar var_150
  loc_707B02: ImpAdCallFPR4  = Ucase()
  loc_707B07: FLdRfVar var_150
  loc_707B0A: CStrVarVal var_F0
  loc_707B0E: ImpAdCallI2 Trim$()
  loc_707B13: FStStr var_90
  loc_707B16: FFree1Str var_F0
  loc_707B19: FFreeVar var_DC = "": var_130 = ""
  loc_707B22: LitVarI2 var_DC, 9
  loc_707B27: LitI4 4
  loc_707B2C: ILdRf var_88
  loc_707B2F: ImpAdCallI2 Mid$(, , )
  loc_707B34: FStStrNoPop var_F0
  loc_707B37: ImpAdCallFPR4 push Val()
  loc_707B3C: FStFPR8 var_110
  loc_707B3F: LitI4 1
  loc_707B44: LitI4 1
  loc_707B49: ImpAdLdRf MemVar_74C350
  loc_707B4C: CVarRef
  loc_707B51: FLdFPR8 var_110
  loc_707B54: ImpAdLdFPR4 MemVar_74C2DC
  loc_707B57: DivR8
  loc_707B58: CVarR8
  loc_707B5C: ImpAdCallI2 Format$(, )
  loc_707B61: FStStr var_1CC
  loc_707B64: LitI4 1
  loc_707B69: LitI4 1
  loc_707B6E: LitVarStr var_140, "@@@@@@@@@"
  loc_707B73: FStVarCopyObj var_170
  loc_707B76: FLdRfVar var_170
  loc_707B79: FLdZeroAd var_1CC
  loc_707B7C: CVarStr var_150
  loc_707B7F: ImpAdCallI2 Format$(, )
  loc_707B84: FStStr var_94
  loc_707B87: FFreeStr var_F0 = ""
  loc_707B8E: FFreeVar var_DC = "": var_130 = "": var_150 = ""
  loc_707B99: LitVarI2 var_DC, 9
  loc_707B9E: LitI4 &HD
  loc_707BA3: ILdRf var_88
  loc_707BA6: ImpAdCallI2 Mid$(, , )
  loc_707BAB: FStStrNoPop var_F0
  loc_707BAE: ImpAdCallFPR4 push Val()
  loc_707BB3: FStFPR8 var_110
  loc_707BB6: LitI4 1
  loc_707BBB: LitI4 1
  loc_707BC0: LitVarStr var_120, "#####0.00"
  loc_707BC5: FStVarCopyObj var_150
  loc_707BC8: FLdRfVar var_150
  loc_707BCB: FLdFPR8 var_110
  loc_707BCE: LitI2_Byte &H64
  loc_707BD0: CR8I2
  loc_707BD1: DivR8
  loc_707BD2: CVarR8
  loc_707BD6: ImpAdCallI2 Format$(, )
  loc_707BDB: FStStr var_1CC
  loc_707BDE: LitI4 1
  loc_707BE3: LitI4 1
  loc_707BE8: LitVarStr var_140, "@@@@@@@@@"
  loc_707BED: FStVarCopyObj var_180
  loc_707BF0: FLdRfVar var_180
  loc_707BF3: FLdZeroAd var_1CC
  loc_707BF6: CVarStr var_170
  loc_707BF9: ImpAdCallI2 Format$(, )
  loc_707BFE: FStStr var_9C
  loc_707C01: FFreeStr var_F0 = ""
  loc_707C08: FFreeVar var_DC = "": var_130 = "": var_150 = "": var_170 = ""
  loc_707C15: LitVarI2 var_DC, 9
  loc_707C1A: LitI4 &H16
  loc_707C1F: ILdRf var_88
  loc_707C22: ImpAdCallI2 Mid$(, , )
  loc_707C27: FStStrNoPop var_F0
  loc_707C2A: ImpAdCallFPR4 push Val()
  loc_707C2F: FStFPR8 var_110
  loc_707C32: LitI4 1
  loc_707C37: LitI4 1
  loc_707C3C: ImpAdLdRf MemVar_74C364
  loc_707C3F: CVarRef
  loc_707C44: FLdFPR8 var_110
  loc_707C47: ImpAdLdFPR4 MemVar_74C2E0
  loc_707C4A: DivR8
  loc_707C4B: CVarR8
  loc_707C4F: ImpAdCallI2 Format$(, )
  loc_707C54: FStStr var_1CC
  loc_707C57: LitI4 1
  loc_707C5C: LitI4 1
  loc_707C61: LitVarStr var_140, "@@@@@@@@@"
  loc_707C66: FStVarCopyObj var_170
  loc_707C69: FLdRfVar var_170
  loc_707C6C: FLdZeroAd var_1CC
  loc_707C6F: CVarStr var_150
  loc_707C72: ImpAdCallI2 Format$(, )
  loc_707C77: FStStr var_A4
  loc_707C7A: FFreeStr var_F0 = ""
  loc_707C81: FFreeVar var_DC = "": var_130 = "": var_150 = ""
  loc_707C8C: LitVarI2 var_DC, 13
  loc_707C91: LitI4 &H1F
  loc_707C96: ILdRf var_88
  loc_707C99: ImpAdCallI2 Mid$(, , )
  loc_707C9E: FStStr var_B4
  loc_707CA1: FFree1Var var_DC = ""
  loc_707CA4: LitVarI2 var_DC, 10
  loc_707CA9: LitI4 &H2C
  loc_707CAE: ILdRf var_88
  loc_707CB1: ImpAdCallI2 Mid$(, , )
  loc_707CB6: FStStr var_BC
  loc_707CB9: FFree1Var var_DC = ""
  loc_707CBC: LitVarI2 var_DC, 8
  loc_707CC1: LitI4 &H36
  loc_707CC6: ILdRf var_88
  loc_707CC9: ImpAdCallI2 Mid$(, , )
  loc_707CCE: FStStr var_B8
  loc_707CD1: FFree1Var var_DC = ""
  loc_707CD4: LitVarI2 var_DC, 20
  loc_707CD9: LitI4 &H3E
  loc_707CDE: ILdRf var_88
  loc_707CE1: ImpAdCallI2 Mid$(, , )
  loc_707CE6: FStStr var_A0
  loc_707CE9: FFree1Var var_DC = ""
  loc_707CEC: LitVarI2 var_DC, 2
  loc_707CF1: LitI4 &H52
  loc_707CF6: ILdRf var_88
  loc_707CF9: ImpAdCallI2 Mid$(, , )
  loc_707CFE: FStStrNoPop var_F0
  loc_707D01: ImpAdCallFPR4 push Val()
  loc_707D06: CI2R8
  loc_707D07: FStI2 var_C4
  loc_707D0A: FFree1Str var_F0
  loc_707D0D: FFree1Var var_DC = ""
  loc_707D10: Branch loc_707FF4
  loc_707D13: FLdRfVar var_106
  loc_707D16: ImpAdLdRf MemVar_74D8B0
  loc_707D19: NewIfNullPr Consola
  loc_707D1C: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_707D21: LitI4 1
  loc_707D26: LitI4 1
  loc_707D2B: LitVarStr var_104, "@@"
  loc_707D30: FStVarCopyObj var_130
  loc_707D33: FLdRfVar var_130
  loc_707D36: FLdUI1
  loc_707D3A: CVarUI1
  loc_707D3E: FLdRfVar var_150
  loc_707D41: ImpAdCallFPR4  = Format(, )
  loc_707D46: FLdRfVar var_150
  loc_707D49: CStrVarTmp
  loc_707D4A: FStStr var_8C
  loc_707D4D: FFreeVar var_DC = "": var_130 = ""
  loc_707D56: FLdRfVar var_106
  loc_707D59: ImpAdLdRf MemVar_74D8B0
  loc_707D5C: NewIfNullPr Consola
  loc_707D5F: from_stack_1v = Consola.presetgradeGet()
  loc_707D64: LitI4 0
  loc_707D69: LitI4 3
  loc_707D6E: FLdRfVar var_1A4
  loc_707D71: Redim
  loc_707D7B: LitVarStr var_EC, "a"
  loc_707D80: LitI4 0
  loc_707D85: ILdRf var_1A4
  loc_707D88: Ary1StVarCopy
  loc_707D8A: LitVarStr var_104, "b"
  loc_707D8F: LitI4 1
  loc_707D94: ILdRf var_1A4
  loc_707D97: Ary1StVarCopy
  loc_707D99: LitVarStr var_120, "c"
  loc_707D9E: LitI4 2
  loc_707DA3: ILdRf var_1A4
  loc_707DA6: Ary1StVarCopy
  loc_707DA8: LitVarStr var_140, "d"
  loc_707DAD: LitI4 3
  loc_707DB2: ILdRf var_1A4
  loc_707DB5: Ary1StVarCopy
  loc_707DB7: FLdRfVar var_1A4
  loc_707DBA: FLdUI1
  loc_707DBE: CR8I2
  loc_707DBF: PopFPR4
  loc_707DC0: FLdRfVar var_DC
  loc_707DC3: ImpAdCallFPR4  = Choose(, )
  loc_707DC8: FLdRfVar var_1A4
  loc_707DCB: Erase
  loc_707DCC: FLdRfVar var_DC
  loc_707DCF: FLdRfVar var_130
  loc_707DD2: ImpAdCallFPR4  = Ucase()
  loc_707DD7: FLdRfVar var_130
  loc_707DDA: CStrVarTmp
  loc_707DDB: FStStr var_90
  loc_707DDE: FFreeVar var_DC = ""
  loc_707DE5: FLdRfVar var_1CE
  loc_707DE8: ImpAdLdRf MemVar_74D8B0
  loc_707DEB: NewIfNullPr Consola
  loc_707DEE: from_stack_1v = Consola.presetgradeGet()
  loc_707DF3: FLdRfVar var_1C6
  loc_707DF6: ImpAdLdRf MemVar_74D8B0
  loc_707DF9: NewIfNullPr Consola
  loc_707DFC: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_707E01: FLdRfVar var_106
  loc_707E04: ImpAdLdRf MemVar_74D8B0
  loc_707E07: NewIfNullPr Consola
  loc_707E0A: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_707E0F: LitI4 1
  loc_707E14: LitI4 1
  loc_707E19: LitVarStr var_104, "@@@@@@@@@"
  loc_707E1E: FStVarCopyObj var_DC
  loc_707E21: FLdRfVar var_DC
  loc_707E24: FLdUI1
  loc_707E28: CI4UI1
  loc_707E29: ImpAdLdRf MemVar_74C31C
  loc_707E2C: Ary1LdUI1
  loc_707E2E: CI2UI1
  loc_707E30: LitI2_Byte 1
  loc_707E32: AddI2
  loc_707E33: CI4UI1
  loc_707E34: FLdUI1
  loc_707E38: CI4UI1
  loc_707E39: FLdUI1
  loc_707E3D: CI2UI1
  loc_707E3F: LitI2_Byte 1
  loc_707E41: SubI2
  loc_707E42: CI4UI1
  loc_707E43: ImpAdLdRf MemVar_74C12C
  loc_707E46: AryLdPr
  loc_707E49: MemLdUI1 global_0
  loc_707E4D: CI4UI1
  loc_707E4E: ImpAdLdRf MemVar_74C074
  loc_707E51: AryLdRf
  loc_707E54: CVarRef
  loc_707E59: FLdRfVar var_130
  loc_707E5C: ImpAdCallFPR4  = Format(, )
  loc_707E61: FLdRfVar var_130
  loc_707E64: CStrVarTmp
  loc_707E65: FStStr var_94
  loc_707E68: FFreeVar var_DC = ""
  loc_707E6F: ILdI4 arg_34
  loc_707E72: FStStrCopy var_9C
  loc_707E75: ILdI4 arg_38
  loc_707E78: FStStrCopy var_A4
  loc_707E7B: LitStr "Ticket por despacho"
  loc_707E7E: FStStrCopy var_B4
  loc_707E81: FLdRfVar var_DC
  loc_707E84: ImpAdCallFPR4  = Date
  loc_707E89: FLdRfVar var_DC
  loc_707E8C: FLdRfVar var_130
  loc_707E8F: ImpAdCallFPR4  = Day()
  loc_707E94: FLdRfVar var_130
  loc_707E97: LitVarStr var_EC, "/"
  loc_707E9C: ConcatVar var_150
  loc_707EA0: FLdRfVar var_170
  loc_707EA3: ImpAdCallFPR4  = Date
  loc_707EA8: FLdRfVar var_170
  loc_707EAB: FLdRfVar var_180
  loc_707EAE: ImpAdCallFPR4  = Month()
  loc_707EB3: FLdRfVar var_180
  loc_707EB6: ConcatVar var_190
  loc_707EBA: LitVarStr var_104, "/"
  loc_707EBF: ConcatVar var_1A0
  loc_707EC3: FLdRfVar var_1E0
  loc_707EC6: ImpAdCallFPR4  = Date
  loc_707ECB: FLdRfVar var_1E0
  loc_707ECE: FLdRfVar var_1F0
  loc_707ED1: ImpAdCallFPR4  = Year()
  loc_707ED6: FLdRfVar var_1F0
  loc_707ED9: ConcatVar var_200
  loc_707EDD: CStrVarTmp
  loc_707EDE: FStStr var_BC
  loc_707EE1: FFreeVar var_DC = "": var_130 = "": var_170 = "": var_150 = "": var_180 = "": var_190 = "": var_1E0 = "": var_1A0 = "": var_1F0 = ""
  loc_707EF8: FLdRfVar var_DC
  loc_707EFB: ImpAdCallFPR4  = Time
  loc_707F00: FLdRfVar var_DC
  loc_707F03: FLdRfVar var_130
  loc_707F06: ImpAdCallFPR4  = Hour()
  loc_707F0B: FLdRfVar var_130
  loc_707F0E: LitVarStr var_EC, ":"
  loc_707F13: ConcatVar var_150
  loc_707F17: FLdRfVar var_170
  loc_707F1A: ImpAdCallFPR4  = Time
  loc_707F1F: FLdRfVar var_170
  loc_707F22: FLdRfVar var_180
  loc_707F25: ImpAdCallFPR4  = Minute()
  loc_707F2A: FLdRfVar var_180
  loc_707F2D: ConcatVar var_190
  loc_707F31: LitVarStr var_104, ":"
  loc_707F36: ConcatVar var_1A0
  loc_707F3A: FLdRfVar var_1E0
  loc_707F3D: ImpAdCallFPR4  = Time
  loc_707F42: FLdRfVar var_1E0
  loc_707F45: FLdRfVar var_1F0
  loc_707F48: ImpAdCallFPR4  = Second()
  loc_707F4D: FLdRfVar var_1F0
  loc_707F50: ConcatVar var_200
  loc_707F54: CStrVarTmp
  loc_707F55: FStStr var_B8
  loc_707F58: FFreeVar var_DC = "": var_130 = "": var_170 = "": var_150 = "": var_180 = "": var_190 = "": var_1E0 = "": var_1A0 = "": var_1F0 = ""
  loc_707F6F: FLdRfVar var_F0
  loc_707F72: FLdRfVar var_106
  loc_707F75: ImpAdLdRf MemVar_74D8B0
  loc_707F78: NewIfNullPr Consola
  loc_707F7B: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_707F80: FLdUI1
  loc_707F84: CI4UI1
  loc_707F85: FLdRfVar var_1C6
  loc_707F88: ImpAdLdRf MemVar_74D8B0
  loc_707F8B: NewIfNullPr Consola
  loc_707F8E: from_stack_1v = Consola.presetgradeGet()
  loc_707F93: FLdUI1
  loc_707F97: CI2UI1
  loc_707F99: LitI2_Byte 1
  loc_707F9B: SubI2
  loc_707F9C: CI4UI1
  loc_707F9D: ImpAdLdRf MemVar_74C12C
  loc_707FA0: AryLdPr
  loc_707FA3: MemLdUI1 global_0
  loc_707FA7: CI2UI1
  loc_707FA9: ImpAdLdRf MemVar_74A220
  loc_707FAC: NewIfNullPr clsProducts
  loc_707FB4: FLdZeroAd var_F0
  loc_707FB7: FStStr var_A0
  loc_707FBA: FLdRfVar var_106
  loc_707FBD: ImpAdLdRf MemVar_74D8B0
  loc_707FC0: NewIfNullPr Consola
  loc_707FC3: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_707FC8: FLdUI1
  loc_707FCC: CI4UI1
  loc_707FCD: FLdRfVar var_1C6
  loc_707FD0: ImpAdLdRf MemVar_74D8B0
  loc_707FD3: NewIfNullPr Consola
  loc_707FD6: from_stack_1v = Consola.presetgradeGet()
  loc_707FDB: FLdUI1
  loc_707FDF: CI2UI1
  loc_707FE1: LitI2_Byte 1
  loc_707FE3: SubI2
  loc_707FE4: CI4UI1
  loc_707FE5: ImpAdLdRf MemVar_74C12C
  loc_707FE8: AryLdPr
  loc_707FEB: MemLdUI1 global_0
  loc_707FEF: CI2UI1
  loc_707FF1: FStI2 var_C4
  loc_707FF4: ImpAdLdI2 MemVar_74BF72
  loc_707FF7: BranchF loc_708068
  loc_707FFA: ILdRf var_94
  loc_707FFD: CR8Str
  loc_707FFF: FStFPR8 var_208
  loc_708002: ILdRf var_A4
  loc_708005: CR8Str
  loc_708007: FStFPR8 var_210
  loc_70800A: FLdFPR8 var_210
  loc_70800D: FLdFPR8 var_208
  loc_708010: DivR8
  loc_708011: FStFPR8 var_218
  loc_708014: LitI4 1
  loc_708019: LitI4 1
  loc_70801E: LitVarStr var_104, "#0.000"
  loc_708023: FStVarCopyObj var_DC
  loc_708026: FLdRfVar var_DC
  loc_708029: FLdRfVar var_218
  loc_70802C: CVarRef
  loc_708031: ImpAdCallI2 Format$(, )
  loc_708036: FStStr var_F0
  loc_708039: LitI4 1
  loc_70803E: LitI4 1
  loc_708043: LitVarStr var_120, "@@@@@@@@@"
  loc_708048: FStVarCopyObj var_150
  loc_70804B: FLdRfVar var_150
  loc_70804E: FLdZeroAd var_F0
  loc_708051: CVarStr var_130
  loc_708054: ImpAdCallI2 Format$(, )
  loc_708059: FStStr var_9C
  loc_70805C: FFree1Str var_F0
  loc_70805F: FFreeVar var_DC = "": var_130 = ""
  loc_708068: ILdRf var_8C
  loc_70806B: LitStr "^P"
  loc_70806E: ILdRf var_A8
  loc_708071: FLdRfVar var_DC
  loc_708074: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708079: FLdRfVar var_DC
  loc_70807C: CStrVarTmp
  loc_70807D: FStStr var_A8
  loc_708080: FFree1Var var_DC = ""
  loc_708083: ILdRf var_90
  loc_708086: LitStr "^H"
  loc_708089: ILdRf var_A8
  loc_70808C: FLdRfVar var_DC
  loc_70808F: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708094: FLdRfVar var_DC
  loc_708097: CStrVarTmp
  loc_708098: FStStr var_A8
  loc_70809B: FFree1Var var_DC = ""
  loc_70809E: ILdRf var_94
  loc_7080A1: LitStr "^U"
  loc_7080A4: ILdRf var_A8
  loc_7080A7: FLdRfVar var_DC
  loc_7080AA: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7080AF: FLdRfVar var_DC
  loc_7080B2: CStrVarTmp
  loc_7080B3: FStStr var_A8
  loc_7080B6: FFree1Var var_DC = ""
  loc_7080B9: ILdRf var_9C
  loc_7080BC: LitStr "^V"
  loc_7080BF: ILdRf var_A8
  loc_7080C2: FLdRfVar var_DC
  loc_7080C5: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7080CA: FLdRfVar var_DC
  loc_7080CD: CStrVarTmp
  loc_7080CE: FStStr var_A8
  loc_7080D1: FFree1Var var_DC = ""
  loc_7080D4: ILdRf var_A4
  loc_7080D7: LitStr "^A"
  loc_7080DA: ILdRf var_A8
  loc_7080DD: FLdRfVar var_DC
  loc_7080E0: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7080E5: FLdRfVar var_DC
  loc_7080E8: CStrVarTmp
  loc_7080E9: FStStr var_A8
  loc_7080EC: FFree1Var var_DC = ""
  loc_7080EF: ILdRf var_B4
  loc_7080F2: LitStr "^T"
  loc_7080F5: ILdRf var_A8
  loc_7080F8: FLdRfVar var_DC
  loc_7080FB: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708100: FLdRfVar var_DC
  loc_708103: CStrVarTmp
  loc_708104: FStStr var_A8
  loc_708107: FFree1Var var_DC = ""
  loc_70810A: ILdRf var_BC
  loc_70810D: LitStr "^D"
  loc_708110: ILdRf var_A8
  loc_708113: FLdRfVar var_DC
  loc_708116: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_70811B: FLdRfVar var_DC
  loc_70811E: CStrVarTmp
  loc_70811F: FStStr var_A8
  loc_708122: FFree1Var var_DC = ""
  loc_708125: ILdRf var_B8
  loc_708128: LitStr "^M"
  loc_70812B: ILdRf var_A8
  loc_70812E: FLdRfVar var_DC
  loc_708131: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708136: FLdRfVar var_DC
  loc_708139: CStrVarTmp
  loc_70813A: FStStr var_A8
  loc_70813D: FFree1Var var_DC = ""
  loc_708140: ILdRf var_A0
  loc_708143: LitStr "^R"
  loc_708146: ILdRf var_A8
  loc_708149: FLdRfVar var_DC
  loc_70814C: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708151: FLdRfVar var_DC
  loc_708154: CStrVarTmp
  loc_708155: FStStr var_A8
  loc_708158: FFree1Var var_DC = ""
  loc_70815B: FLdI2 var_CC
  loc_70815E: BranchF loc_708264
  loc_708161: ILdRfDarg arg_14
  loc_708167: CStrVarVal var_F0
  loc_70816B: LitStr "^C[N]"
  loc_70816E: ILdRf var_A8
  loc_708171: FLdRfVar var_DC
  loc_708174: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708179: FLdRfVar var_DC
  loc_70817C: CStrVarTmp
  loc_70817D: FStStr var_A8
  loc_708180: FFree1Str var_F0
  loc_708183: FFree1Var var_DC = ""
  loc_708186: ILdRfDarg arg_18
  loc_70818C: CStrVarVal var_F0
  loc_708190: LitStr "^C[R]"
  loc_708193: ILdRf var_A8
  loc_708196: FLdRfVar var_DC
  loc_708199: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_70819E: FLdRfVar var_DC
  loc_7081A1: CStrVarTmp
  loc_7081A2: FStStr var_A8
  loc_7081A5: FFree1Str var_F0
  loc_7081A8: FFree1Var var_DC = ""
  loc_7081AB: ILdRfDarg arg_1C
  loc_7081B1: CStrVarVal var_F0
  loc_7081B5: LitStr "^C[D]"
  loc_7081B8: ILdRf var_A8
  loc_7081BB: FLdRfVar var_DC
  loc_7081BE: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7081C3: FLdRfVar var_DC
  loc_7081C6: CStrVarTmp
  loc_7081C7: FStStr var_A8
  loc_7081CA: FFree1Str var_F0
  loc_7081CD: FFree1Var var_DC = ""
  loc_7081D0: ILdRfDarg arg_20
  loc_7081D6: CStrVarVal var_F0
  loc_7081DA: LitStr "^C[T]"
  loc_7081DD: ILdRf var_A8
  loc_7081E0: FLdRfVar var_DC
  loc_7081E3: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7081E8: FLdRfVar var_DC
  loc_7081EB: CStrVarTmp
  loc_7081EC: FStStr var_A8
  loc_7081EF: FFree1Str var_F0
  loc_7081F2: FFree1Var var_DC = ""
  loc_7081F5: ILdRfDarg arg_24
  loc_7081FB: CStrVarVal var_F0
  loc_7081FF: LitStr "^C[C]"
  loc_708202: ILdRf var_A8
  loc_708205: FLdRfVar var_DC
  loc_708208: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_70820D: FLdRfVar var_DC
  loc_708210: CStrVarTmp
  loc_708211: FStStr var_A8
  loc_708214: FFree1Str var_F0
  loc_708217: FFree1Var var_DC = ""
  loc_70821A: ILdRfDarg arg_28
  loc_708220: CStrVarVal var_F0
  loc_708224: LitStr "^C[B]"
  loc_708227: ILdRf var_A8
  loc_70822A: FLdRfVar var_DC
  loc_70822D: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708232: FLdRfVar var_DC
  loc_708235: CStrVarTmp
  loc_708236: FStStr var_A8
  loc_708239: FFree1Str var_F0
  loc_70823C: FFree1Var var_DC = ""
  loc_70823F: ILdRfDarg arg_2C
  loc_708245: CStrVarVal var_F0
  loc_708249: LitStr "^C[I]"
  loc_70824C: ILdRf var_A8
  loc_70824F: FLdRfVar var_DC
  loc_708252: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708257: FLdRfVar var_DC
  loc_70825A: CStrVarTmp
  loc_70825B: FStStr var_A8
  loc_70825E: FFree1Str var_F0
  loc_708261: FFree1Var var_DC = ""
  loc_708264: ILdRf var_8C
  loc_708267: CI2Str
  loc_708269: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_70826E: FStI2 var_106
  loc_708271: ImpAdLdRf MemVar_74BEC0
  loc_708274: CVarRef
  loc_708279: ImpAdLdRf MemVar_74BEF0
  loc_70827C: CVarRef
  loc_708281: FLdI2 var_106
  loc_708284: CVarBoolI2 var_EC
  loc_708288: FLdRfVar var_DC
  loc_70828B: ImpAdCallFPR4  = IIf(, , )
  loc_708290: FLdRfVar var_DC
  loc_708293: CStrVarVal var_F0
  loc_708297: LitStr "^C[A]"
  loc_70829A: ILdRf var_A8
  loc_70829D: FLdRfVar var_130
  loc_7082A0: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7082A5: FLdRfVar var_130
  loc_7082A8: CStrVarTmp
  loc_7082A9: FStStr var_A8
  loc_7082AC: FFree1Str var_F0
  loc_7082AF: FFreeVar var_EC = "": var_DC = ""
  loc_7082B8: ImpAdLdI4 MemVar_74BED0
  loc_7082BB: LitStr "^C[M]"
  loc_7082BE: ILdRf var_A8
  loc_7082C1: FLdRfVar var_DC
  loc_7082C4: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7082C9: FLdRfVar var_DC
  loc_7082CC: CStrVarTmp
  loc_7082CD: FStStr var_A8
  loc_7082D0: FFree1Var var_DC = ""
  loc_7082D3: LitVarI2 var_DC, 1
  loc_7082D8: LitI4 &H54
  loc_7082DD: FLdRfVar var_88
  loc_7082E0: CVarRef
  loc_7082E5: FLdRfVar var_130
  loc_7082E8: ImpAdCallFPR4  = Mid(, , )
  loc_7082ED: FLdRfVar var_130
  loc_7082F0: LitVarStr var_120, "1"
  loc_7082F5: HardType
  loc_7082F6: EqVarBool
  loc_7082F8: FFreeVar var_DC = ""
  loc_7082FF: BranchF loc_70830F
  loc_708302: ILdRf var_A8
  loc_708305: LitStr "              -COPIA-"
  loc_708308: ConcatStr
  loc_708309: FStStr var_A8
  loc_70830C: Branch loc_708319
  loc_70830F: ILdRf var_A8
  loc_708312: LitStr "              -ORIGINAL-"
  loc_708315: ConcatStr
  loc_708316: FStStr var_A8
  loc_708319: ILdRf var_A4
  loc_70831C: ImpAdCallFPR4 push Val()
  loc_708321: FStFPR4 var_C8
  loc_708324: LitI2_Byte 1
  loc_708326: FLdRfVar var_C2
  loc_708329: LitI2_Byte 3
  loc_70832B: ForI2 var_21C
  loc_708331: LitI4 1
  loc_708336: ILdRf var_A8
  loc_708339: CVarStr var_140
  loc_70833C: LitI4 0
  loc_708341: LitI4 2
  loc_708346: FLdRfVar var_1A4
  loc_708349: Redim
  loc_708353: LitVarStr var_EC, "^I"
  loc_708358: LitI4 0
  loc_70835D: ILdRf var_1A4
  loc_708360: Ary1StVarCopy
  loc_708362: LitVarStr var_104, "^J"
  loc_708367: LitI4 1
  loc_70836C: ILdRf var_1A4
  loc_70836F: Ary1StVarCopy
  loc_708371: LitVarStr var_120, "^K"
  loc_708376: LitI4 2
  loc_70837B: ILdRf var_1A4
  loc_70837E: Ary1StVarCopy
  loc_708380: FLdRfVar var_1A4
  loc_708383: FLdI2 var_C2
  loc_708386: CR8I2
  loc_708387: PopFPR4
  loc_708388: FLdRfVar var_DC
  loc_70838B: ImpAdCallFPR4  = Choose(, )
  loc_708390: FLdRfVar var_1A4
  loc_708393: Erase
  loc_708394: FLdRfVar var_DC
  loc_708397: LitI4 0
  loc_70839C: FnInStr4Var
  loc_7083A0: LitVarI2 var_160, 0
  loc_7083A5: HardType
  loc_7083A6: GtVarBool
  loc_7083A8: FFreeVar var_DC = ""
  loc_7083AF: BranchF loc_7085EA
  loc_7083B2: LitVarStr var_EC, "0"
  loc_7083B7: FStVarCopyObj var_DC
  loc_7083BA: FLdRfVar var_DC
  loc_7083BD: FLdI2 var_C2
  loc_7083C0: CI4UI1
  loc_7083C1: FMemLdRf Format$(, )
  loc_7083C6: AryInRecLdPr
  loc_7083CC: MemLdI2 global_0
  loc_7083CF: CI4UI1
  loc_7083D0: FLdRfVar var_130
  loc_7083D3: ImpAdCallFPR4  = String(, )
  loc_7083D8: LitVarStr var_160, "########0"
  loc_7083DD: LitVarStr var_140, vbNullString
  loc_7083E2: FStVarCopyObj var_170
  loc_7083E5: FLdRfVar var_170
  loc_7083E8: LitVarStr var_104, "."
  loc_7083ED: FLdRfVar var_130
  loc_7083F0: ConcatVar var_150
  loc_7083F4: FLdI2 var_C2
  loc_7083F7: CI4UI1
  loc_7083F8: FMemLdRf Format$(, )
  loc_7083FD: AryInRecLdPr
  loc_708403: MemLdI2 global_0
  loc_708406: LitI2_Byte 0
  loc_708408: GtI2
  loc_708409: CVarBoolI2 var_120
  loc_70840D: FLdRfVar var_180
  loc_708410: ImpAdCallFPR4  = IIf(, , )
  loc_708415: FLdRfVar var_180
  loc_708418: ConcatVar var_190
  loc_70841C: CStrVarTmp
  loc_70841D: FStStr var_98
  loc_708420: FFreeVar var_DC = "": var_130 = "": var_120 = "": var_150 = "": var_170 = "": var_180 = ""
  loc_708431: FLdI2 var_C2
  loc_708434: CI4UI1
  loc_708435: FMemLdRf Format$(, )
  loc_70843A: AryInRecLdPr
  loc_708440: MemLdI2 global_0
  loc_708443: FStI2 var_21E
  loc_708446: FLdI2 var_21E
  loc_708449: LitI2_Byte 0
  loc_70844B: EqI2
  loc_70844C: BranchF loc_7084C8
  loc_70844F: ILdRf var_A4
  loc_708452: ImpAdCallFPR4 push Val()
  loc_708457: FStFPR8 var_110
  loc_70845A: FLdI2 var_C2
  loc_70845D: CI4UI1
  loc_70845E: FLdI2 var_C4
  loc_708461: CI4UI1
  loc_708462: FMemLdRf Format$(, )
  loc_708467: AryInRecLdPr
  loc_70846D: MemLdStr global_0
  loc_708470: ImpAdCallFPR4 push Val()
  loc_708475: FStFPR8 var_228
  loc_708478: LitI4 1
  loc_70847D: LitI4 1
  loc_708482: FLdRfVar var_98
  loc_708485: CVarRef
  loc_70848A: FLdFPR8 var_228
  loc_70848D: LitI2_Byte &H64
  loc_70848F: CR8I2
  loc_708490: DivR8
  loc_708491: LitI2_Byte 1
  loc_708493: CR8I2
  loc_708494: AddR8
  loc_708495: CVarR8
  loc_708499: ImpAdCallI2 Format$(, )
  loc_70849E: FStStr var_1CC
  loc_7084A1: ILdRf var_A4
  loc_7084A4: ImpAdCallFPR4 push Val()
  loc_7084A9: FLdFPR8 var_110
  loc_7084AC: FLdZeroAd var_1CC
  loc_7084AF: FStStrNoPop var_F0
  loc_7084B2: CR8Str
  loc_7084B4: DivR8
  loc_7084B5: SubR4
  loc_7084B6: CStrR8
  loc_7084B8: FStStr var_C0
  loc_7084BB: FFreeStr var_F0 = ""
  loc_7084C2: FFree1Var var_DC = ""
  loc_7084C5: Branch loc_708512
  loc_7084C8: FLdI2 var_21E
  loc_7084CB: LitI2_Byte 1
  loc_7084CD: EqI2
  loc_7084CE: BranchF loc_708503
  loc_7084D1: ILdRf var_9C
  loc_7084D4: ImpAdCallFPR4 push Val()
  loc_7084D9: FStFPR8 var_110
  loc_7084DC: FLdI2 var_C2
  loc_7084DF: CI4UI1
  loc_7084E0: FLdI2 var_C4
  loc_7084E3: CI4UI1
  loc_7084E4: FMemLdRf Format$(, )
  loc_7084E9: AryInRecLdPr
  loc_7084EF: MemLdStr global_0
  loc_7084F2: ImpAdCallFPR4 push Val()
  loc_7084F7: FLdFPR8 var_110
  loc_7084FA: MulR8
  loc_7084FB: CStrR8
  loc_7084FD: FStStr var_C0
  loc_708500: Branch loc_708512
  loc_708503: FLdI2 var_21E
  loc_708506: LitI2_Byte 2
  loc_708508: EqI2
  loc_708509: BranchF loc_708512
  loc_70850C: LitStr vbNullString
  loc_70850F: FStStrCopy var_C0
  loc_708512: LitI4 1
  loc_708517: LitI4 1
  loc_70851C: FLdRfVar var_98
  loc_70851F: CVarRef
  loc_708524: FLdRfVar var_C0
  loc_708527: CVarRef
  loc_70852C: ImpAdCallI2 Format$(, )
  loc_708531: FStStr var_C0
  loc_708534: ILdRf var_C0
  loc_708537: ImpAdCallFPR4 push Val()
  loc_70853C: FStFPR8 var_110
  loc_70853F: FLdFPR4 var_C8
  loc_708542: FLdFPR8 var_110
  loc_708545: SubR4
  loc_708546: FStFPR4 var_C8
  loc_708549: LitI4 0
  loc_70854E: LitI4 2
  loc_708553: FLdRfVar var_1A4
  loc_708556: Redim
  loc_708560: LitVarStr var_EC, "^I"
  loc_708565: LitI4 0
  loc_70856A: ILdRf var_1A4
  loc_70856D: Ary1StVarCopy
  loc_70856F: LitVarStr var_104, "^J"
  loc_708574: LitI4 1
  loc_708579: ILdRf var_1A4
  loc_70857C: Ary1StVarCopy
  loc_70857E: LitVarStr var_120, "^K"
  loc_708583: LitI4 2
  loc_708588: ILdRf var_1A4
  loc_70858B: Ary1StVarCopy
  loc_70858D: FLdRfVar var_1A4
  loc_708590: FLdI2 var_C2
  loc_708593: CR8I2
  loc_708594: PopFPR4
  loc_708595: FLdRfVar var_DC
  loc_708598: ImpAdCallFPR4  = Choose(, )
  loc_70859D: FLdRfVar var_1A4
  loc_7085A0: Erase
  loc_7085A1: LitI4 1
  loc_7085A6: LitI4 1
  loc_7085AB: FLdRfVar var_98
  loc_7085AE: CVarRef
  loc_7085B3: FLdRfVar var_C0
  loc_7085B6: CVarRef
  loc_7085BB: ImpAdCallI2 Format$(, )
  loc_7085C0: FStStrNoPop var_1CC
  loc_7085C3: FLdRfVar var_DC
  loc_7085C6: CStrVarVal var_F0
  loc_7085CA: ILdRf var_A8
  loc_7085CD: FLdRfVar var_130
  loc_7085D0: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7085D5: FLdRfVar var_130
  loc_7085D8: CStrVarTmp
  loc_7085D9: FStStr var_A8
  loc_7085DC: FFreeStr var_F0 = ""
  loc_7085E3: FFreeVar var_DC = ""
  loc_7085EA: FLdRfVar var_C2
  loc_7085ED: NextI2 var_21C, loc_708331
  loc_7085F2: FLdFPR4 var_C8
  loc_7085F5: CStrR4
  loc_7085F7: FStStrNoPop var_F0
  loc_7085FA: ImpAdCallFPR4 push Val()
  loc_7085FF: FStFPR8 var_110
  loc_708602: LitI4 1
  loc_708607: LitI4 1
  loc_70860C: ImpAdLdRf MemVar_74C364
  loc_70860F: CVarRef
  loc_708614: FLdFPR8 var_110
  loc_708617: CVarR8
  loc_70861B: ImpAdCallI2 Format$(, )
  loc_708620: FStStr var_22C
  loc_708623: LitI4 1
  loc_708628: LitI4 1
  loc_70862D: LitVarStr var_120, "@@@@@@@@@"
  loc_708632: FStVarCopyObj var_150
  loc_708635: FLdRfVar var_150
  loc_708638: FLdZeroAd var_22C
  loc_70863B: CVarStr var_130
  loc_70863E: ImpAdCallI2 Format$(, )
  loc_708643: FStStrNoPop var_1CC
  loc_708646: LitStr "^N"
  loc_708649: ILdRf var_A8
  loc_70864C: FLdRfVar var_170
  loc_70864F: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_708654: FLdRfVar var_170
  loc_708657: CStrVarTmp
  loc_708658: FStStr var_A8
  loc_70865B: FFreeStr var_F0 = "": var_1CC = ""
  loc_708664: FFreeVar var_DC = "": var_130 = "": var_150 = ""
  loc_70866F: ILdRf var_A8
  loc_708672: ImpAdCallI2 Proc_103_2_6294F8()
  loc_708677: FStStr var_A8
  loc_70867A: LitI2_Byte &HFF
  loc_70867C: LitStr "^X"
  loc_70867F: ILdRf var_A8
  loc_708682: FLdRfVar var_DC
  loc_708685: ImpAdCallFPR4  = Proc_103_3_624968(, , )
  loc_70868A: FLdRfVar var_DC
  loc_70868D: CStrVarTmp
  loc_70868E: FStStr var_A8
  loc_708691: FFree1Var var_DC = ""
  loc_708694: LitI4 &HA
  loc_708699: ImpAdCallI2 Chr$()
  loc_70869E: FStStrNoPop var_F0
  loc_7086A1: LitStr "~~"
  loc_7086A4: ILdRf var_A8
  loc_7086A7: FLdRfVar var_DC
  loc_7086AA: ImpAdCallFPR4  = Proc_103_1_607254(, , )
  loc_7086AF: FLdRfVar var_DC
  loc_7086B2: CStrVarTmp
  loc_7086B3: FStStr var_A8
  loc_7086B6: FFree1Str var_F0
  loc_7086B9: FFree1Var var_DC = ""
  loc_7086BC: ILdRf var_8C
  loc_7086BF: CI4Str
  loc_7086C0: FMemLdRf Format$(, )
  loc_7086C5: AryInRecLdRf
  loc_7086CB: CVarRef
  loc_7086D0: FLdRfVar var_DC
  loc_7086D3: ImpAdCallFPR4  = Trim()
  loc_7086D8: FLdRfVar var_DC
  loc_7086DB: CStrVarVal var_F0
  loc_7086DF: ImpAdCallI2 Proc_142_9_5F7B04()
  loc_7086E4: FStStr var_B0
  loc_7086E7: FFree1Str var_F0
  loc_7086EA: FFree1Var var_DC = ""
  loc_7086ED: ILdRf var_A8
  loc_7086F0: FnLenStr
  loc_7086F1: ILdRf var_A8
  loc_7086F4: FLdRfVar var_1CC
  loc_7086F7: CStr2Ansi
  loc_7086F8: ILdRf var_1CC
  loc_7086FB: ILdRf var_B0
  loc_7086FE: FLdRfVar var_F0
  loc_708701: CStr2Ansi
  loc_708702: ILdRf var_F0
  loc_708705: ImpAdCallFPR4 ()
  loc_70870A: SetLastSystemError
  loc_70870B: ILdRf var_F0
  loc_70870E: FLdRfVar var_B0
  loc_708711: CStr2Uni
  loc_708713: ILdRf var_1CC
  loc_708716: FLdRfVar var_A8
  loc_708719: CStr2Uni
  loc_70871B: FFreeStr var_F0 = ""
  loc_708722: ExitProc
End Function

Private Function Proc_142_8_5D8068() '5D8068
  'Data Table: 40B4F8
  loc_5D803C: LitVarI2 var_A8, 1
  loc_5D8041: LitI4 8
  loc_5D8046: ImpAdLdI4 MemVar_74BEAC
  loc_5D8049: ImpAdCallI2 Mid$(, , )
  loc_5D804E: FStStrNoPop var_AC
  loc_5D8051: CUI1Str
  loc_5D8053: CI2UI1
  loc_5D8055: LitI2_Byte 4
  loc_5D8057: AndI4
  loc_5D8058: LitI2_Byte 4
  loc_5D805A: EqI2
  loc_5D805B: FStI2 var_86
  loc_5D805E: FFree1Str var_AC
  loc_5D8061: FFree1Var var_A8 = ""
  loc_5D8064: ExitProcI2
End Function

Private Function Proc_142_9_5F7B04(arg_C) '5F7B04
  'Data Table: 40B4F8
  loc_5F7A68: ILdRf arg_C
  loc_5F7A6B: FStStrCopy var_8C
  loc_5F7A6E: FLdRfVar var_94
  loc_5F7A71: ImpAdLdRf MemVar_7520D4
  loc_5F7A74: NewIfNullPr Global
  loc_5F7A77:  = Global.Printers
  loc_5F7A7C: FLdZeroAd var_94
  loc_5F7A7F: FStAdFuncNoPop
  loc_5F7A82: FLdRfVar var_90
  loc_5F7A85: ForEachCollObj
  loc_5F7A8D: FLdPr var_90
  loc_5F7A90: LateIdLdVar var_AC DispID_28 1
  loc_5F7A97: PopAd
  loc_5F7A99: LitI4 &H32
  loc_5F7A9E: FLdRfVar var_AC
  loc_5F7AA1: CStrVarTmp
  loc_5F7AA2: FStStrNoPop var_B0
  loc_5F7AA5: ImpAdCallI2 Left$(, )
  loc_5F7AAA: CVarStr var_C0
  loc_5F7AAD: FLdRfVar var_D0
  loc_5F7AB0: ImpAdCallFPR4  = Trim()
  loc_5F7AB5: FLdRfVar var_D0
  loc_5F7AB8: FLdRfVar var_8C
  loc_5F7ABB: CVarRef
  loc_5F7AC0: FLdRfVar var_F0
  loc_5F7AC3: ImpAdCallFPR4  = Trim()
  loc_5F7AC8: FLdRfVar var_F0
  loc_5F7ACB: EqVarBool
  loc_5F7ACD: FFree1Str var_B0
  loc_5F7AD0: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_5F7ADB: BranchF loc_5F7AF5
  loc_5F7ADE: FLdPr var_90
  loc_5F7AE1: LateIdLdVar var_AC DispID_28 1
  loc_5F7AE8: CStrVarTmp
  loc_5F7AE9: FStStr var_88
  loc_5F7AEC: FFree1Var var_AC = ""
  loc_5F7AEF: ExitForCollObj
  loc_5F7AF5: FLdRfVar var_90
  loc_5F7AF8: NextEachCollObj
  loc_5F7B00: ExitProc
End Function

Private Function Proc_142_10_5FF2C0(arg_C) '5FF2C0
  'Data Table: 40B4F8
  loc_5FF204: ILdRf arg_C
  loc_5FF207: FStStrCopy var_8C
  loc_5FF20A: LitI4 &HA
  loc_5FF20F: FLdRfVar var_B8
  loc_5FF212: ImpAdCallFPR4  = Space()
  loc_5FF217: FLdRfVar var_B8
  loc_5FF21A: CStrVarTmp
  loc_5FF21B: FLdRfVar var_A0
  loc_5FF21E: StFixedStrFree
  loc_5FF222: FFree1Var var_B8 = ""
  loc_5FF225: LitI4 3
  loc_5FF22A: ImpAdCallI2 Chr$()
  loc_5FF22F: FStStrNoPop var_BC
  loc_5FF232: LitStr "142"
  loc_5FF235: ConcatStr
  loc_5FF236: FStStrNoPop var_C0
  loc_5FF239: ILdRf var_8C
  loc_5FF23C: ConcatStr
  loc_5FF23D: FStStr var_A8
  loc_5FF240: FFreeStr var_BC = ""
  loc_5FF247: LitI2 1000
  loc_5FF24A: LitI4 &HA
  loc_5FF24F: FLdRfVar var_A0
  loc_5FF252: LdFixedStr
  loc_5FF255: FStStrNoPop var_C4
  loc_5FF258: FLdRfVar var_C8
  loc_5FF25B: CStr2Ansi
  loc_5FF25C: ILdRf var_C8
  loc_5FF25F: ILdRf var_A8
  loc_5FF262: FLdRfVar var_C0
  loc_5FF265: CStr2Ansi
  loc_5FF266: ILdRf var_C0
  loc_5FF269: ImpAdLdI4 MemVar_74BF90
  loc_5FF26C: FLdRfVar var_BC
  loc_5FF26F: CStr2Ansi
  loc_5FF270: ILdRf var_BC
  loc_5FF273: ImpAdCallI2 ()
  loc_5FF278: FStI2 var_CE
  loc_5FF27B: SetLastSystemError
  loc_5FF27C: ILdRf var_BC
  loc_5FF27F: ImpAdLdRf MemVar_74BF90
  loc_5FF282: CStr2Uni
  loc_5FF284: ILdRf var_C0
  loc_5FF287: FLdRfVar var_A8
  loc_5FF28A: CStr2Uni
  loc_5FF28C: ILdRf var_C8
  loc_5FF28F: FLdRfVar var_CC
  loc_5FF292: CStr2Uni
  loc_5FF294: ILdRf var_CC
  loc_5FF297: FLdRfVar var_A0
  loc_5FF29A: StFixedStr
  loc_5FF29D: FLdI2 var_CE
  loc_5FF2A0: CI4UI1
  loc_5FF2A1: FStR4 var_A4
  loc_5FF2A4: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_5FF2B1: ILdRf var_A4
  loc_5FF2B4: LitI4 0
  loc_5FF2B9: EqI4
  loc_5FF2BA: FStI2 var_86
  loc_5FF2BD: ExitProcI2
End Function

Private Function Proc_142_11_5FA0B0() '5FA0B0
  'Data Table: 40B4F8
  loc_5F9FFC: LitI4 &H14
  loc_5FA001: FLdRfVar var_C8
  loc_5FA004: ImpAdCallFPR4  = Space()
  loc_5FA009: FLdRfVar var_C8
  loc_5FA00C: CStrVarTmp
  loc_5FA00D: FLdRfVar var_AE
  loc_5FA010: StFixedStrFree
  loc_5FA014: FFree1Var var_C8 = ""
  loc_5FA017: LitI4 3
  loc_5FA01C: ImpAdCallI2 Chr$()
  loc_5FA021: FStStrNoPop var_CC
  loc_5FA024: LitStr "143"
  loc_5FA027: ConcatStr
  loc_5FA028: FStStr var_B8
  loc_5FA02B: FFree1Str var_CC
  loc_5FA02E: LitI2 1000
  loc_5FA031: LitI4 &H14
  loc_5FA036: FLdRfVar var_AE
  loc_5FA039: LdFixedStr
  loc_5FA03C: FStStrNoPop var_D4
  loc_5FA03F: FLdRfVar var_D8
  loc_5FA042: CStr2Ansi
  loc_5FA043: ILdRf var_D8
  loc_5FA046: ILdRf var_B8
  loc_5FA049: FLdRfVar var_D0
  loc_5FA04C: CStr2Ansi
  loc_5FA04D: ILdRf var_D0
  loc_5FA050: ImpAdLdI4 MemVar_74BF90
  loc_5FA053: FLdRfVar var_CC
  loc_5FA056: CStr2Ansi
  loc_5FA057: ILdRf var_CC
  loc_5FA05A: ImpAdCallI2 ()
  loc_5FA05F: FStI2 var_DE
  loc_5FA062: SetLastSystemError
  loc_5FA063: ILdRf var_CC
  loc_5FA066: ImpAdLdRf MemVar_74BF90
  loc_5FA069: CStr2Uni
  loc_5FA06B: ILdRf var_D0
  loc_5FA06E: FLdRfVar var_B8
  loc_5FA071: CStr2Uni
  loc_5FA073: ILdRf var_D8
  loc_5FA076: FLdRfVar var_DC
  loc_5FA079: CStr2Uni
  loc_5FA07B: ILdRf var_DC
  loc_5FA07E: FLdRfVar var_AE
  loc_5FA081: StFixedStr
  loc_5FA084: FLdI2 var_DE
  loc_5FA087: CI4UI1
  loc_5FA088: FStR4 var_B4
  loc_5FA08B: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_5FA098: FLdRfVar var_AE
  loc_5FA09B: LdFixedStr
  loc_5FA09E: IStStr
  loc_5FA0A2: ILdRf var_B4
  loc_5FA0A5: LitI4 0
  loc_5FA0AA: EqI4
  loc_5FA0AB: FStI2 var_86
  loc_5FA0AE: ExitProcI2
End Function
