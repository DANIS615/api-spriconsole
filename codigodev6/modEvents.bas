
Private Function Proc_172_0_5F2624() '5F2624
  'Data Table: 43B664
  loc_5F2578: LitI2_Byte 1
  loc_5F257A: FLdRfVar var_86
  loc_5F257D: FMemLdUI1 arg_8(300)
  loc_5F2583: CI2UI1
  loc_5F2585: ForI2 var_8C
  loc_5F258B: LitI2_Byte 1
  loc_5F258D: FLdRfVar var_88
  loc_5F2590: ImpAdLdRf MemVar_74BF0C
  loc_5F2593: LitI2_Byte 1
  loc_5F2595: FnUBound
  loc_5F2597: CI2I4
  loc_5F2598: ForI2 var_90
  loc_5F259E: FLdI2 var_88
  loc_5F25A1: CI4UI1
  loc_5F25A2: ImpAdLdRf MemVar_74BF0C
  loc_5F25A5: Ary1LdPr
  loc_5F25A6: MemLdI2 global_6
  loc_5F25A9: BranchF loc_5F2612
  loc_5F25AC: FLdI2 var_86
  loc_5F25AF: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5F25B4: FLdI2 var_88
  loc_5F25B7: CI4UI1
  loc_5F25B8: ImpAdLdRf MemVar_74BF0C
  loc_5F25BB: Ary1LdPr
  loc_5F25BC: MemLdI2 global_4
  loc_5F25BF: LitI2_Byte 0
  loc_5F25C1: NeI2
  loc_5F25C2: FLdI2 var_88
  loc_5F25C5: CI4UI1
  loc_5F25C6: ImpAdLdRf MemVar_74BF0C
  loc_5F25C9: Ary1LdPr
  loc_5F25CA: MemLdI2 global_4
  loc_5F25CD: LitI2_Byte 3
  loc_5F25CF: NeI2
  loc_5F25D0: AndI4
  loc_5F25D1: AndI4
  loc_5F25D2: NotI4
  loc_5F25D3: BranchF loc_5F2612
  loc_5F25D6: FLdI2 var_86
  loc_5F25D9: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5F25DE: FLdI2 var_86
  loc_5F25E1: CI4UI1
  loc_5F25E2: FMemLdRf unk_43B66D
  loc_5F25E7: Ary1LdUI1
  loc_5F25E9: CI2UI1
  loc_5F25EB: LitI2_Byte 0
  loc_5F25ED: NeI2
  loc_5F25EE: FLdI2 var_86
  loc_5F25F1: CI4UI1
  loc_5F25F2: FMemLdRf unk_43B66D
  loc_5F25F7: Ary1LdUI1
  loc_5F25F9: CI2UI1
  loc_5F25FB: LitI2_Byte 3
  loc_5F25FD: NeI2
  loc_5F25FE: AndI4
  loc_5F25FF: AndI4
  loc_5F2600: BranchF loc_5F2612
  loc_5F2603: LitI2_Byte 0
  loc_5F2605: CUI1I2
  loc_5F2607: FLdI2 var_86
  loc_5F260A: CI4UI1
  loc_5F260B: FMemLdRf unk_43B66D
  loc_5F2610: Ary1StUI1
  loc_5F2612: FLdRfVar var_88
  loc_5F2615: NextI2 var_90, loc_5F259E
  loc_5F261A: FLdRfVar var_86
  loc_5F261D: NextI2 var_8C, loc_5F258B
  loc_5F2622: ExitProc
End Function
