
Private Function Proc_87_0_5DC658(arg_C) '5DC658
  'Data Table: 43B664
  loc_5DC614: LitI4 1
  loc_5DC619: ILdI4 arg_C
  loc_5DC61C: LitStr ","
  loc_5DC61F: LitI4 0
  loc_5DC624: FnInStr4
  loc_5DC626: LitI4 0
  loc_5DC62B: GtI4
  loc_5DC62C: BranchF loc_5DC64F
  loc_5DC62F: ILdRf arg_C
  loc_5DC632: LitI4 1
  loc_5DC637: ILdI4 arg_C
  loc_5DC63A: LitStr ","
  loc_5DC63D: LitI4 0
  loc_5DC642: FnInStr4
  loc_5DC644: LitI4 1
  loc_5DC649: LitStr "."
  loc_5DC64C: MidStr arg_0
  loc_5DC64F: ILdI4 arg_C
  loc_5DC652: FStStrCopy var_88
  loc_5DC655: ExitProc
End Function

Private Function Proc_87_1_630780(arg_C) '630780
  'Data Table: 402748
  loc_6305C0: LitStr "CEM44.INI"
  loc_6305C3: FLdRfVar var_90
  loc_6305C6: CStr2Ansi
  loc_6305C7: ILdRf var_90
  loc_6305CA: LitI4 0
  loc_6305CF: LitStr "REPORTTOFILE"
  loc_6305D2: FLdRfVar var_8C
  loc_6305D5: CStr2Ansi
  loc_6305D6: ILdRf var_8C
  loc_6305D9: LitStr "GENERAL"
  loc_6305DC: FLdRfVar var_88
  loc_6305DF: CStr2Ansi
  loc_6305E0: ILdRf var_88
  loc_6305E3: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6305E8: FStR4 var_94
  loc_6305EB: SetLastSystemError
  loc_6305EC: ILdRf var_94
  loc_6305EF: LitI4 0
  loc_6305F4: EqI4
  loc_6305F5: FFreeStr var_88 = "": var_8C = ""
  loc_6305FE: BranchF loc_63077C
  loc_630601: ImpAdCallI2 GetActiveWindow()
  loc_630606: FStR4 var_94
  loc_630609: SetLastSystemError
  loc_63060A: ILdRf var_94
  loc_63060D: FStR4 var_98
  loc_630610: ILdI2 arg_C
  loc_630613: BranchF loc_630621
  loc_630616: ILdRf var_98
  loc_630619: PopTmpLdAdStr var_94
  loc_63061C: ImpAdCallFPR4 Proc_98_4_5D52A4()
  loc_630621: ILdRf var_98
  loc_630624: ImpAdCallI2 BringWindowToTop()
  loc_630629: FStR4 var_94
  loc_63062C: SetLastSystemError
  loc_63062D: ILdRf var_94
  loc_630630: CBoolI4
  loc_630632: BranchF loc_630773
  loc_630635: FLdRfVar var_94
  loc_630638: FLdRfVar var_9C
  loc_63063B: ImpAdLdRf MemVar_7520D4
  loc_63063E: NewIfNullPr Global
  loc_630641:  = Global.Screen
  loc_630646: FLdPr var_9C
  loc_630649:  = Screen.Width
  loc_63064E: FLdFPR4 var_94
  loc_630651: FStFPR4 var_A0
  loc_630654: FFree1Ad var_9C
  loc_630657: FLdFPR4 var_A0
  loc_63065A: LitI2 15000
  loc_63065D: CR8I2
  loc_63065E: LitI2 16000
  loc_630661: CR8I2
  loc_630662: BetweenR4
  loc_630664: BranchF loc_63068C
  loc_630667: LitI4 1
  loc_63066C: LitI4 &H300
  loc_630671: LitI4 &H400
  loc_630676: LitI4 0
  loc_63067B: LitI4 0
  loc_630680: ILdRf var_98
  loc_630683: ImpAdCallFPR4 MoveWindow(, , , , , )
  loc_630688: SetLastSystemError
  loc_630689: Branch loc_63074F
  loc_63068C: FLdFPR4 var_A0
  loc_63068F: LitI2 11000
  loc_630692: CR8I2
  loc_630693: LitI2 13000
  loc_630696: CR8I2
  loc_630697: BetweenR4
  loc_630699: BranchF loc_6306C1
  loc_63069C: LitI4 1
  loc_6306A1: LitI4 &H258
  loc_6306A6: LitI4 &H320
  loc_6306AB: LitI4 0
  loc_6306B0: LitI4 0
  loc_6306B5: ILdRf var_98
  loc_6306B8: ImpAdCallFPR4 MoveWindow(, , , , , )
  loc_6306BD: SetLastSystemError
  loc_6306BE: Branch loc_63074F
  loc_6306C1: FLdFPR4 var_A0
  loc_6306C4: LitI2 9000
  loc_6306C7: CR8I2
  loc_6306C8: LitI2 9800
  loc_6306CB: CR8I2
  loc_6306CC: BetweenR4
  loc_6306CE: BranchF loc_6306F6
  loc_6306D1: LitI4 1
  loc_6306D6: LitI4 &H1E0
  loc_6306DB: LitI4 &H280
  loc_6306E0: LitI4 0
  loc_6306E5: LitI4 0
  loc_6306EA: ILdRf var_98
  loc_6306ED: ImpAdCallFPR4 MoveWindow(, , , , , )
  loc_6306F2: SetLastSystemError
  loc_6306F3: Branch loc_63074F
  loc_6306F6: FLdRfVar var_94
  loc_6306F9: FLdRfVar var_9C
  loc_6306FC: ImpAdLdRf MemVar_7520D4
  loc_6306FF: NewIfNullPr Global
  loc_630702:  = Global.Screen
  loc_630707: FLdPr var_9C
  loc_63070A:  = Screen.Width
  loc_63070F: FLdRfVar var_A8
  loc_630712: FLdRfVar var_A4
  loc_630715: ImpAdLdRf MemVar_7520D4
  loc_630718: NewIfNullPr Global
  loc_63071B:  = Global.Screen
  loc_630720: FLdPr var_A4
  loc_630723:  = Screen.Height
  loc_630728: LitI4 1
  loc_63072D: FLdFPR4 var_A8
  loc_630730: CI4R8
  loc_630731: FLdFPR4 var_94
  loc_630734: CI4R8
  loc_630735: LitI4 0
  loc_63073A: LitI4 0
  loc_63073F: ILdRf var_98
  loc_630742: ImpAdCallFPR4 MoveWindow(, , , , , )
  loc_630747: SetLastSystemError
  loc_630748: FFreeAd var_9C = ""
  loc_63074F: ImpAdCallI2 GetActiveWindow()
  loc_630754: FStR4 var_94
  loc_630757: SetLastSystemError
  loc_630758: ILdRf var_94
  loc_63075B: ILdRf var_98
  loc_63075E: NeI4
  loc_63075F: BranchF loc_63076B
  loc_630762: ILdRf var_98
  loc_630765: ImpAdCallFPR4 DestroyWindow()
  loc_63076A: SetLastSystemError
  loc_63076B: ImpAdCallFPR4 DoEvents()
  loc_630770: Branch loc_630621
  loc_630773: ILdRf var_98
  loc_630776: ImpAdCallFPR4 DestroyWindow()
  loc_63077B: SetLastSystemError
  loc_63077C: ExitProc
End Function

Private Function Proc_87_2_6D5770() '6D5770
  'Data Table: 43B664
  loc_6D4D14: LitI4 0
  loc_6D4D19: LitI4 0
  loc_6D4D1E: FLdRfVar var_B8
  loc_6D4D21: Redim
  loc_6D4D2D: LitI4 0
  loc_6D4D32: LitI4 0
  loc_6D4D37: FLdRfVar var_BC
  loc_6D4D3A: Redim
  loc_6D4D46: LitI2_Byte 0
  loc_6D4D48: PopTmpLdAd2 var_BE
  loc_6D4D4B: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6D4D50: NotI4
  loc_6D4D51: BranchF loc_6D4D57
  loc_6D4D56: ExitProc
  loc_6D4D59: FLdRfVar var_BE
  loc_6D4D5C: FLdRfVar var_98
  loc_6D4D5F: FLdRfVar var_C4
  loc_6D4D62: ImpAdLdRf MemVar_74C760
  loc_6D4D65: NewIfNullPr Formx
  loc_6D4D68: from_stack_1v = Formx.global_4589716Get()
  loc_6D4D6D: FLdPr var_C4
  loc_6D4D70:  = Formx.Picture
  loc_6D4D75: FLdI2 var_BE
  loc_6D4D78: NotI4
  loc_6D4D79: FFree1Ad var_C4
  loc_6D4D7C: BranchF loc_6D4D9C
  loc_6D4D81: FLdRfVar var_D4
  loc_6D4D84: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D4D89: FLdRfVar var_D4
  loc_6D4D8C: CBoolVarNull
  loc_6D4D8E: FFree1Var var_D4 = ""
  loc_6D4D91: BranchF loc_6D4D97
  loc_6D4D96: ExitProc
  loc_6D4D99: Branch loc_6D4D57
  loc_6D4D9E: LitVarI2 var_D4, 30
  loc_6D4DA3: LitI4 7
  loc_6D4DA8: FLdRfVar var_98
  loc_6D4DAB: CVarRef
  loc_6D4DB0: FLdRfVar var_104
  loc_6D4DB3: ImpAdCallFPR4  = Mid(, , )
  loc_6D4DB8: FLdRfVar var_104
  loc_6D4DBB: FLdRfVar var_114
  loc_6D4DBE: ImpAdCallFPR4  = Trim()
  loc_6D4DC3: FLdRfVar var_114
  loc_6D4DC6: CStrVarTmp
  loc_6D4DC7: FStStr var_94
  loc_6D4DCA: FFreeVar var_D4 = "": var_104 = ""
  loc_6D4DD5: LitVarI2 var_D4, 6
  loc_6D4DDA: LitI4 1
  loc_6D4DDF: FLdRfVar var_98
  loc_6D4DE2: CVarRef
  loc_6D4DE7: FLdRfVar var_104
  loc_6D4DEA: ImpAdCallFPR4  = Mid(, , )
  loc_6D4DEF: FLdRfVar var_104
  loc_6D4DF2: CStrVarVal var_118
  loc_6D4DF6: ImpAdCallFPR4 push Val()
  loc_6D4DFB: CI2R8
  loc_6D4DFC: FStI2 var_8A
  loc_6D4DFF: FFree1Str var_118
  loc_6D4E02: FFreeVar var_D4 = ""
  loc_6D4E0B: FLdRfVar var_C4
  loc_6D4E0E: ImpAdLdRf MemVar_7520D4
  loc_6D4E11: NewIfNullPr Global
  loc_6D4E14:  = Global.Printer
  loc_6D4E19: FLdZeroAd var_C4
  loc_6D4E1C: FStAdFunc var_A4
  loc_6D4E21: OnErrorGoto loc_6D5650
  loc_6D4E26: LitVarStr var_E4, "Courier New"
  loc_6D4E2B: PopAdLdVar
  loc_6D4E2C: FLdPr var_A4
  loc_6D4E2F: LateIdSt
  loc_6D4E36: LitI2_Byte &HB
  loc_6D4E38: CR8I2
  loc_6D4E39: CVarR4
  loc_6D4E3D: PopAdLdVar
  loc_6D4E3E: FLdPr var_A4
  loc_6D4E41: LateIdSt
  loc_6D4E48: LitI4 6
  loc_6D4E4D: CI2I4
  loc_6D4E4E: CVarI2 var_E4
  loc_6D4E51: PopAdLdVar
  loc_6D4E52: FLdPr var_A4
  loc_6D4E55: LateIdSt
  loc_6D4E5C: LitI4 0
  loc_6D4E61: FLdRfVar var_118
  loc_6D4E64: FLdRfVar var_C4
  loc_6D4E67: ImpAdLdRf MemVar_7520D4
  loc_6D4E6A: NewIfNullPr Global
  loc_6D4E6D:  = Global.App
  loc_6D4E72: FLdPr var_C4
  loc_6D4E75:  = App.Path
  loc_6D4E7A: ILdRf var_118
  loc_6D4E7D: LitStr "\Logo_Compania.bmp"
  loc_6D4E80: ConcatStr
  loc_6D4E81: CVarStr var_D4
  loc_6D4E84: ImpAdCallI2 push Dir(, )
  loc_6D4E89: FStStrNoPop var_11C
  loc_6D4E8C: LitStr vbNullString
  loc_6D4E8F: NeStr
  loc_6D4E91: FFreeStr var_118 = ""
  loc_6D4E98: FFree1Ad var_C4
  loc_6D4E9B: FFree1Var var_D4 = ""
  loc_6D4E9E: BranchF loc_6D4F1F
  loc_6D4EA3: FLdRfVar var_118
  loc_6D4EA6: FLdRfVar var_C4
  loc_6D4EA9: ImpAdLdRf MemVar_7520D4
  loc_6D4EAC: NewIfNullPr Global
  loc_6D4EAF:  = Global.App
  loc_6D4EB4: FLdPr var_C4
  loc_6D4EB7:  = App.Path
  loc_6D4EBC: FLdRfVar var_120
  loc_6D4EBF: ILdRf var_118
  loc_6D4EC2: LitStr "\Logo_Compania.bmp"
  loc_6D4EC5: ConcatStr
  loc_6D4EC6: CVarStr var_D4
  loc_6D4EC9: PopAdLdVar
  loc_6D4ECA: ImpAdLdRf MemVar_7520D4
  loc_6D4ECD: NewIfNullPr Global
  loc_6D4ED0: Global.LoadPictureOld from_stack_1
  loc_6D4ED5: FLdZeroAd var_120
  loc_6D4ED8: CVarAd
  loc_6D4EDC: PopAdLdVar
  loc_6D4EDD: LitI2_Byte 1
  loc_6D4EDF: CR8I2
  loc_6D4EE0: CVarR4
  loc_6D4EE4: PopAdLdVar
  loc_6D4EE5: LitI2_Byte &HA
  loc_6D4EE7: CR8I2
  loc_6D4EE8: CVarR4
  loc_6D4EEC: PopAdLdVar
  loc_6D4EED: LitVarR8
  loc_6D4EF9: PopAdLdVar
  loc_6D4EFA: LitVarR8
  loc_6D4F06: PopAdLdVar
  loc_6D4F07: FLdPr var_A4
  loc_6D4F0A: LateIdCall
  loc_6D4F12: FFree1Str var_118
  loc_6D4F15: FFree1Ad var_C4
  loc_6D4F18: FFreeVar var_D4 = ""
  loc_6D4F23: LitI4 0
  loc_6D4F28: FLdRfVar var_118
  loc_6D4F2B: FLdRfVar var_C4
  loc_6D4F2E: ImpAdLdRf MemVar_7520D4
  loc_6D4F31: NewIfNullPr Global
  loc_6D4F34:  = Global.App
  loc_6D4F39: FLdPr var_C4
  loc_6D4F3C:  = App.Path
  loc_6D4F41: ILdRf var_118
  loc_6D4F44: LitStr "\Logo_Proyecto.bmp"
  loc_6D4F47: ConcatStr
  loc_6D4F48: CVarStr var_D4
  loc_6D4F4B: ImpAdCallI2 push Dir(, )
  loc_6D4F50: FStStrNoPop var_11C
  loc_6D4F53: LitStr vbNullString
  loc_6D4F56: NeStr
  loc_6D4F58: FFreeStr var_118 = ""
  loc_6D4F5F: FFree1Ad var_C4
  loc_6D4F62: FFree1Var var_D4 = ""
  loc_6D4F65: BranchF loc_6D4FE7
  loc_6D4F6A: FLdRfVar var_118
  loc_6D4F6D: FLdRfVar var_C4
  loc_6D4F70: ImpAdLdRf MemVar_7520D4
  loc_6D4F73: NewIfNullPr Global
  loc_6D4F76:  = Global.App
  loc_6D4F7B: FLdPr var_C4
  loc_6D4F7E:  = App.Path
  loc_6D4F83: FLdRfVar var_120
  loc_6D4F86: ILdRf var_118
  loc_6D4F89: LitStr "\Logo_Proyecto.bmp"
  loc_6D4F8C: ConcatStr
  loc_6D4F8D: CVarStr var_D4
  loc_6D4F90: PopAdLdVar
  loc_6D4F91: ImpAdLdRf MemVar_7520D4
  loc_6D4F94: NewIfNullPr Global
  loc_6D4F97: Global.LoadPictureOld from_stack_1
  loc_6D4F9C: FLdZeroAd var_120
  loc_6D4F9F: CVarAd
  loc_6D4FA3: PopAdLdVar
  loc_6D4FA4: LitI2 150
  loc_6D4FA7: CR8I2
  loc_6D4FA8: CVarR4
  loc_6D4FAC: PopAdLdVar
  loc_6D4FAD: LitI2_Byte &HA
  loc_6D4FAF: CR8I2
  loc_6D4FB0: CVarR4
  loc_6D4FB4: PopAdLdVar
  loc_6D4FB5: LitVarR8
  loc_6D4FC1: PopAdLdVar
  loc_6D4FC2: LitVarR8
  loc_6D4FCE: PopAdLdVar
  loc_6D4FCF: FLdPr var_A4
  loc_6D4FD2: LateIdCall
  loc_6D4FDA: FFree1Str var_118
  loc_6D4FDD: FFree1Ad var_C4
  loc_6D4FE0: FFreeVar var_D4 = ""
  loc_6D4FEB: LitI2_Byte 1
  loc_6D4FED: FLdRfVar var_86
  loc_6D4FF0: LitI2_Byte 4
  loc_6D4FF2: ForI2 var_144
  loc_6D4FFA: ILdRf var_A4
  loc_6D4FFD: PrintObject
  loc_6D5005: FLdRfVar var_86
  loc_6D5008: NextI2 var_144, loc_6D4FF8
  loc_6D500F: FLdRfVar var_11C
  loc_6D5012: LitVar_Missing var_218
  loc_6D5015: LitVar_Missing var_1F8
  loc_6D5018: LitVar_Missing var_1D8
  loc_6D501B: LitVar_Missing var_1B8
  loc_6D501E: LitVar_Missing var_198
  loc_6D5021: LitVar_Missing var_178
  loc_6D5024: LitVar_Missing var_158
  loc_6D5027: LitVar_Missing var_114
  loc_6D502A: LitVar_Missing var_104
  loc_6D502D: LitVar_Missing var_D4
  loc_6D5030: LitStr "INFORME DE DEBITO BANCARIO - "
  loc_6D5033: FStStrCopy var_118
  loc_6D5036: FLdRfVar var_118
  loc_6D5039: LitI4 &HAB
  loc_6D503E: PopTmpLdAdStr var_148
  loc_6D5041: LitI2_Byte 9
  loc_6D5043: PopTmpLdAd2 var_BE
  loc_6D5046: ImpAdLdRf MemVar_74C7D0
  loc_6D5049: NewIfNullPr clsMsg
  loc_6D504C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5051: FLdZeroAd var_11C
  loc_6D5054: FMemStStr arg_8(1820)
  loc_6D505A: FFree1Str var_118
  loc_6D505D: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_6D5076: FLdRfVar var_D4
  loc_6D5079: ImpAdCallFPR4  = Now
  loc_6D507E: LitI4 1
  loc_6D5083: LitI4 1
  loc_6D5088: LitVarStr var_E4, "dd/mm/yyyy hh:mm"
  loc_6D508D: FStVarCopyObj var_104
  loc_6D5090: FLdRfVar var_104
  loc_6D5093: FLdRfVar var_D4
  loc_6D5096: FLdRfVar var_114
  loc_6D5099: ImpAdCallFPR4  = Format(, )
  loc_6D509E: LitI2_Byte &H50
  loc_6D50A0: FMemLdR4 arg_8(1820)
  loc_6D50A5: CVarStr var_F4
  loc_6D50A8: FLdRfVar var_114
  loc_6D50AB: ConcatVar var_158
  loc_6D50AF: CStrVarVal var_118
  loc_6D50B3: FLdRfVar var_178
  loc_6D50B6: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_6D50BB: FLdRfVar var_178
  loc_6D50BE: ILdRf var_A4
  loc_6D50C1: PrintObject
  loc_6D50C7: FFree1Str var_118
  loc_6D50CA: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = ""
  loc_6D50D9: ILdRf var_A4
  loc_6D50DC: PrintObject
  loc_6D50E4: ILdRf var_A4
  loc_6D50E7: PrintObject
  loc_6D50EF: LitI4 3
  loc_6D50F4: FLdRfVar var_D4
  loc_6D50F7: ImpAdCallFPR4  = Space()
  loc_6D50FC: FLdRfVar var_D4
  loc_6D50FF: FMemLdR4 arg_8(1152)
  loc_6D5104: CVarStr var_E4
  loc_6D5107: ConcatVar var_104
  loc_6D510B: FLdI2 var_8A
  loc_6D510E: CVarI2 var_F4
  loc_6D5111: ConcatVar var_114
  loc_6D5115: ILdRf var_A4
  loc_6D5118: PrintObject
  loc_6D511E: FFreeVar var_D4 = "": var_104 = ""
  loc_6D5129: LitI4 3
  loc_6D512E: FLdRfVar var_D4
  loc_6D5131: ImpAdCallFPR4  = Space()
  loc_6D5136: FLdRfVar var_D4
  loc_6D5139: FMemLdR4 arg_8(1156)
  loc_6D513E: CVarStr var_E4
  loc_6D5141: ConcatVar var_104
  loc_6D5145: ILdRf var_94
  loc_6D5148: CVarStr var_F4
  loc_6D514B: ConcatVar var_114
  loc_6D514F: ILdRf var_A4
  loc_6D5152: PrintObject
  loc_6D5158: FFreeVar var_D4 = "": var_104 = ""
  loc_6D5163: ILdRf var_A4
  loc_6D5166: PrintObject
  loc_6D516E: ILdRf var_A4
  loc_6D5171: PrintObject
  loc_6D5179: FLdRfVar var_BE
  loc_6D517C: FLdRfVar var_A8
  loc_6D517F: FLdRfVar var_C4
  loc_6D5182: ImpAdLdRf MemVar_74C760
  loc_6D5185: NewIfNullPr Formx
  loc_6D5188: from_stack_1v = Formx.global_4589716Get()
  loc_6D518D: FLdPr var_C4
  loc_6D5190:  = Formx.RightToLeft
  loc_6D5195: FLdI2 var_BE
  loc_6D5198: NotI4
  loc_6D5199: FFree1Ad var_C4
  loc_6D519C: BranchF loc_6D51BE
  loc_6D51A1: FLdRfVar var_D4
  loc_6D51A4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D51A9: FLdRfVar var_D4
  loc_6D51AC: CBoolVarNull
  loc_6D51AE: FFree1Var var_D4 = ""
  loc_6D51B1: BranchF loc_6D51B7
  loc_6D51B6: ExitProc
  loc_6D51BB: Branch loc_6D5177
  loc_6D51C0: FLdRfVar var_A8
  loc_6D51C3: CVarRef
  loc_6D51C8: FLdRfVar var_D4
  loc_6D51CB: ImpAdCallFPR4  = RTrim()
  loc_6D51D0: FLdRfVar var_D4
  loc_6D51D3: CStrVarTmp
  loc_6D51D4: FStStr var_9C
  loc_6D51D7: FFree1Var var_D4 = ""
  loc_6D51DC: FLdRfVar var_11C
  loc_6D51DF: LitVar_Missing var_218
  loc_6D51E2: LitVar_Missing var_1F8
  loc_6D51E5: LitVar_Missing var_1D8
  loc_6D51E8: LitVar_Missing var_1B8
  loc_6D51EB: LitVar_Missing var_198
  loc_6D51EE: LitVar_Missing var_178
  loc_6D51F1: LitVar_Missing var_158
  loc_6D51F4: LitVar_Missing var_114
  loc_6D51F7: LitVar_Missing var_104
  loc_6D51FA: LitVar_Missing var_D4
  loc_6D51FD: LitStr "NUMERO DE CUENTA"
  loc_6D5200: FStStrCopy var_118
  loc_6D5203: FLdRfVar var_118
  loc_6D5206: LitI4 &HAC
  loc_6D520B: PopTmpLdAdStr var_148
  loc_6D520E: LitI2_Byte 9
  loc_6D5210: PopTmpLdAd2 var_BE
  loc_6D5213: ImpAdLdRf MemVar_74C7D0
  loc_6D5216: NewIfNullPr clsMsg
  loc_6D5219: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D521E: FLdZeroAd var_11C
  loc_6D5221: FMemStStr arg_8(1824)
  loc_6D5227: FFree1Str var_118
  loc_6D522A: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_6D5243: FLdRfVar var_11C
  loc_6D5246: LitVar_Missing var_218
  loc_6D5249: LitVar_Missing var_1F8
  loc_6D524C: LitVar_Missing var_1D8
  loc_6D524F: LitVar_Missing var_1B8
  loc_6D5252: LitVar_Missing var_198
  loc_6D5255: LitVar_Missing var_178
  loc_6D5258: LitVar_Missing var_158
  loc_6D525B: LitVar_Missing var_114
  loc_6D525E: LitVar_Missing var_104
  loc_6D5261: LitVar_Missing var_D4
  loc_6D5264: LitStr "IMPORTE"
  loc_6D5267: FStStrCopy var_118
  loc_6D526A: FLdRfVar var_118
  loc_6D526D: LitI4 &HAD
  loc_6D5272: PopTmpLdAdStr var_148
  loc_6D5275: LitI2_Byte 9
  loc_6D5277: PopTmpLdAd2 var_BE
  loc_6D527A: ImpAdLdRf MemVar_74C7D0
  loc_6D527D: NewIfNullPr clsMsg
  loc_6D5280: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5285: FLdZeroAd var_11C
  loc_6D5288: FMemStStr arg_8(1828)
  loc_6D528E: FFree1Str var_118
  loc_6D5291: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_6D52AA: FLdRfVar var_11C
  loc_6D52AD: LitVar_Missing var_218
  loc_6D52B0: LitVar_Missing var_1F8
  loc_6D52B3: LitVar_Missing var_1D8
  loc_6D52B6: LitVar_Missing var_1B8
  loc_6D52B9: LitVar_Missing var_198
  loc_6D52BC: LitVar_Missing var_178
  loc_6D52BF: LitVar_Missing var_158
  loc_6D52C2: LitVar_Missing var_114
  loc_6D52C5: LitVar_Missing var_104
  loc_6D52C8: LitVar_Missing var_D4
  loc_6D52CB: LitStr "FECHA VENC."
  loc_6D52CE: FStStrCopy var_118
  loc_6D52D1: FLdRfVar var_118
  loc_6D52D4: LitI4 &HAE
  loc_6D52D9: PopTmpLdAdStr var_148
  loc_6D52DC: LitI2_Byte 9
  loc_6D52DE: PopTmpLdAd2 var_BE
  loc_6D52E1: ImpAdLdRf MemVar_74C7D0
  loc_6D52E4: NewIfNullPr clsMsg
  loc_6D52E7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D52EC: FLdZeroAd var_11C
  loc_6D52EF: FMemStStr arg_8(1832)
  loc_6D52F5: FFree1Str var_118
  loc_6D52F8: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_6D5311: ILdRf var_9C
  loc_6D5314: FnLenStr
  loc_6D5315: LitI4 1
  loc_6D531A: GtI4
  loc_6D531B: BranchF loc_6D53C2
  loc_6D5320: LitStr vbNullString
  loc_6D5323: ILdRf var_A4
  loc_6D5326: PrintObject
  loc_6D532E: LitI4 4
  loc_6D5333: FLdRfVar var_D4
  loc_6D5336: ImpAdCallFPR4  = Space()
  loc_6D533B: LitI4 &HE
  loc_6D5340: FLdRfVar var_114
  loc_6D5343: ImpAdCallFPR4  = Space()
  loc_6D5348: LitI4 &H10
  loc_6D534D: FLdRfVar var_198
  loc_6D5350: ImpAdCallFPR4  = Space()
  loc_6D5355: FLdRfVar var_D4
  loc_6D5358: FMemLdR4 arg_8(1824)
  loc_6D535D: CVarStr var_E4
  loc_6D5360: ConcatVar var_104
  loc_6D5364: FLdRfVar var_114
  loc_6D5367: ConcatVar var_158
  loc_6D536B: FMemLdR4 arg_8(1828)
  loc_6D5370: CVarStr var_F4
  loc_6D5373: ConcatVar var_178
  loc_6D5377: FLdRfVar var_198
  loc_6D537A: ConcatVar var_1B8
  loc_6D537E: FMemLdR4 arg_8(1832)
  loc_6D5383: CVarStr var_130
  loc_6D5386: ConcatVar var_1D8
  loc_6D538A: ILdRf var_A4
  loc_6D538D: PrintObject
  loc_6D5393: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6D53A8: LitStr vbNullString
  loc_6D53AB: ILdRf var_A4
  loc_6D53AE: PrintObject
  loc_6D53B6: LitStr vbNullString
  loc_6D53B9: ILdRf var_A4
  loc_6D53BC: PrintObject
  loc_6D53C6: LitI2_Byte 1
  loc_6D53C8: FStI2 var_86
  loc_6D53CD: FLdI2 var_86
  loc_6D53D0: CI4UI1
  loc_6D53D1: ILdRf var_9C
  loc_6D53D4: FnLenStr
  loc_6D53D5: LtI4
  loc_6D53D6: BranchF loc_6D5640
  loc_6D53DB: LitVarI2 var_D4, 17
  loc_6D53E0: FLdI2 var_86
  loc_6D53E3: CI4UI1
  loc_6D53E4: ILdRf var_9C
  loc_6D53E7: ImpAdCallI2 Mid$(, , )
  loc_6D53EC: FStStr var_118
  loc_6D53EF: LitI4 1
  loc_6D53F4: LitI4 1
  loc_6D53F9: LitVarStr var_F4, "@@@@@@@@@@@@@@@@@"
  loc_6D53FE: FStVarCopyObj var_114
  loc_6D5401: FLdRfVar var_114
  loc_6D5404: FLdZeroAd var_118
  loc_6D5407: CVarStr var_104
  loc_6D540A: FLdRfVar var_158
  loc_6D540D: ImpAdCallFPR4  = Format(, )
  loc_6D5412: FLdRfVar var_158
  loc_6D5415: CStrVarTmp
  loc_6D5416: FStStr var_AC
  loc_6D5419: FFree1Str var_118
  loc_6D541C: FFreeVar var_D4 = "": var_104 = "": var_114 = ""
  loc_6D5429: FLdI2 var_86
  loc_6D542C: LitI2_Byte &H11
  loc_6D542E: AddI2
  loc_6D542F: FStI2 var_86
  loc_6D5434: LitVarI2 var_D4, 2
  loc_6D5439: FLdI2 var_86
  loc_6D543C: LitI2_Byte 6
  loc_6D543E: AddI2
  loc_6D543F: CI4UI1
  loc_6D5440: ILdRf var_9C
  loc_6D5443: ImpAdCallI2 Mid$(, , )
  loc_6D5448: FStStr var_118
  loc_6D544B: LitVarI2 var_198, 2
  loc_6D5450: FLdI2 var_86
  loc_6D5453: LitI2_Byte 4
  loc_6D5455: AddI2
  loc_6D5456: CI4UI1
  loc_6D5457: ILdRf var_9C
  loc_6D545A: ImpAdCallI2 Mid$(, , )
  loc_6D545F: FStStr var_11C
  loc_6D5462: LitVarI2 var_238, 4
  loc_6D5467: FLdI2 var_86
  loc_6D546A: CI4UI1
  loc_6D546B: ILdRf var_9C
  loc_6D546E: ImpAdCallI2 Mid$(, , )
  loc_6D5473: FStStr var_27C
  loc_6D5476: LitI4 1
  loc_6D547B: LitI4 1
  loc_6D5480: LitVarStr var_F4, "##"
  loc_6D5485: FStVarCopyObj var_114
  loc_6D5488: FLdRfVar var_114
  loc_6D548B: FLdZeroAd var_118
  loc_6D548E: CVarStr var_104
  loc_6D5491: FLdRfVar var_158
  loc_6D5494: ImpAdCallFPR4  = Format(, )
  loc_6D5499: FLdRfVar var_158
  loc_6D549C: LitVarStr var_130, "/"
  loc_6D54A1: ConcatVar var_178
  loc_6D54A5: LitI4 1
  loc_6D54AA: LitI4 1
  loc_6D54AF: LitVarStr var_168, "##"
  loc_6D54B4: FStVarCopyObj var_1D8
  loc_6D54B7: FLdRfVar var_1D8
  loc_6D54BA: FLdZeroAd var_11C
  loc_6D54BD: CVarStr var_1B8
  loc_6D54C0: FLdRfVar var_1F8
  loc_6D54C3: ImpAdCallFPR4  = Format(, )
  loc_6D54C8: FLdRfVar var_1F8
  loc_6D54CB: ConcatVar var_218
  loc_6D54CF: LitVarStr var_188, "/"
  loc_6D54D4: ConcatVar var_228
  loc_6D54D8: LitI4 1
  loc_6D54DD: LitI4 1
  loc_6D54E2: LitVarStr var_1C8, "####"
  loc_6D54E7: FStVarCopyObj var_258
  loc_6D54EA: FLdRfVar var_258
  loc_6D54ED: FLdZeroAd var_27C
  loc_6D54F0: CVarStr var_248
  loc_6D54F3: FLdRfVar var_268
  loc_6D54F6: ImpAdCallFPR4  = Format(, )
  loc_6D54FB: FLdRfVar var_268
  loc_6D54FE: ConcatVar var_278
  loc_6D5502: CStrVarTmp
  loc_6D5503: FStStr var_B0
  loc_6D5506: FFreeStr var_118 = "": var_11C = ""
  loc_6D550F: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_178 = "": var_1F8 = "": var_218 = "": var_238 = "": var_248 = "": var_258 = "": var_228 = "": var_268 = ""
  loc_6D5534: FLdI2 var_86
  loc_6D5537: LitI2_Byte 8
  loc_6D5539: AddI2
  loc_6D553A: FStI2 var_86
  loc_6D553F: LitVarI2 var_D4, 12
  loc_6D5544: FLdI2 var_86
  loc_6D5547: CI4UI1
  loc_6D5548: ILdRf var_9C
  loc_6D554B: ImpAdCallI2 Mid$(, , )
  loc_6D5550: FStStrNoPop var_118
  loc_6D5553: ImpAdCallFPR4 push Val()
  loc_6D5558: FStFPR8 var_284
  loc_6D555B: LitI4 1
  loc_6D5560: LitI4 1
  loc_6D5565: LitVarStr var_130, "#########0.00"
  loc_6D556A: FStVarCopyObj var_114
  loc_6D556D: FLdRfVar var_114
  loc_6D5570: FLdFPR8 var_284
  loc_6D5573: LitI2_Byte &H64
  loc_6D5575: CR8I2
  loc_6D5576: DivR8
  loc_6D5577: CVarR8
  loc_6D557B: FLdRfVar var_158
  loc_6D557E: ImpAdCallFPR4  = Format(, )
  loc_6D5583: LitI4 1
  loc_6D5588: LitI4 1
  loc_6D558D: LitVarStr var_140, "@@@@@@@@@@@@@"
  loc_6D5592: FStVarCopyObj var_178
  loc_6D5595: FLdRfVar var_178
  loc_6D5598: FLdRfVar var_158
  loc_6D559B: FLdRfVar var_198
  loc_6D559E: ImpAdCallFPR4  = Format(, )
  loc_6D55A3: FLdRfVar var_198
  loc_6D55A6: CStrVarTmp
  loc_6D55A7: FStStr var_B4
  loc_6D55AA: FFree1Str var_118
  loc_6D55AD: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = ""
  loc_6D55BE: FLdI2 var_86
  loc_6D55C1: LitI2_Byte &HC
  loc_6D55C3: AddI2
  loc_6D55C4: FStI2 var_86
  loc_6D55C9: LitI4 4
  loc_6D55CE: FLdRfVar var_D4
  loc_6D55D1: ImpAdCallFPR4  = Space()
  loc_6D55D6: LitI4 &HA
  loc_6D55DB: FLdRfVar var_114
  loc_6D55DE: ImpAdCallFPR4  = Space()
  loc_6D55E3: LitI4 &HD
  loc_6D55E8: FLdRfVar var_198
  loc_6D55EB: ImpAdCallFPR4  = Space()
  loc_6D55F0: FLdRfVar var_D4
  loc_6D55F3: ILdRf var_AC
  loc_6D55F6: CVarStr var_E4
  loc_6D55F9: ConcatVar var_104
  loc_6D55FD: FLdRfVar var_114
  loc_6D5600: ConcatVar var_158
  loc_6D5604: ILdRf var_B4
  loc_6D5607: CVarStr var_F4
  loc_6D560A: ConcatVar var_178
  loc_6D560E: FLdRfVar var_198
  loc_6D5611: ConcatVar var_1B8
  loc_6D5615: ILdRf var_B0
  loc_6D5618: CVarStr var_130
  loc_6D561B: ConcatVar var_1D8
  loc_6D561F: ILdRf var_A4
  loc_6D5622: PrintObject
  loc_6D5628: FFreeVar var_D4 = "": var_104 = "": var_114 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6D563D: Branch loc_6D53CB
  loc_6D5642: FLdPr var_A4
  loc_6D5645: LateIdCall
  loc_6D564F: ExitProc
  loc_6D5652: LitI4 &HD
  loc_6D5657: ImpAdCallI2 Chr$()
  loc_6D565C: FStStr var_2A8
  loc_6D565F: LitI4 &HD
  loc_6D5664: ImpAdCallI2 Chr$()
  loc_6D5669: FStStr var_2AC
  loc_6D566C: FLdRfVar var_148
  loc_6D566F: ImpAdCallI2 Err 'rtcErrObj
  loc_6D5674: FStAdFunc var_C4
  loc_6D5677: FLdPr var_C4
  loc_6D567A:  = Err.Number
  loc_6D567F: LitI4 &HD
  loc_6D5684: ImpAdCallI2 Chr$()
  loc_6D5689: FStStr var_2B0
  loc_6D568C: FLdRfVar var_2A0
  loc_6D568F: ImpAdCallI2 Err 'rtcErrObj
  loc_6D5694: FStAdFunc var_120
  loc_6D5697: FLdPr var_120
  loc_6D569A:  = Err.Description
  loc_6D569F: LitVar_Missing var_114
  loc_6D56A2: LitVar_Missing var_104
  loc_6D56A5: FMemLdRf unk_43B66D
  loc_6D56AA: CVarRef
  loc_6D56AF: LitI4 &H45
  loc_6D56B4: FMemLdR4 arg_8(1796)
  loc_6D56B9: FLdZeroAd var_2A8
  loc_6D56BC: FStStrNoPop var_118
  loc_6D56BF: ConcatStr
  loc_6D56C0: FStStrNoPop var_11C
  loc_6D56C3: FLdZeroAd var_2AC
  loc_6D56C6: FStStrNoPop var_27C
  loc_6D56C9: ConcatStr
  loc_6D56CA: FStStrNoPop var_288
  loc_6D56CD: FMemLdR4 arg_8(1800)
  loc_6D56D2: ConcatStr
  loc_6D56D3: FStStrNoPop var_28C
  loc_6D56D6: ILdRf var_148
  loc_6D56D9: CStrI4
  loc_6D56DB: FStStrNoPop var_290
  loc_6D56DE: ConcatStr
  loc_6D56DF: FStStrNoPop var_294
  loc_6D56E2: FLdZeroAd var_2B0
  loc_6D56E5: FStStrNoPop var_298
  loc_6D56E8: ConcatStr
  loc_6D56E9: FStStrNoPop var_29C
  loc_6D56EC: FMemLdR4 arg_8(1804)
  loc_6D56F1: ConcatStr
  loc_6D56F2: FStStrNoPop var_2A4
  loc_6D56F5: ILdRf var_2A0
  loc_6D56F8: ConcatStr
  loc_6D56F9: CVarStr var_D4
  loc_6D56FC: ImpAdCallI2 MsgBox(, , , , )
  loc_6D5701: LitI4 4
  loc_6D5706: EqI4
  loc_6D5707: FFreeStr var_118 = "": var_11C = "": var_27C = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A4 = "": var_2A0 = "": var_2A8 = "": var_2AC = ""
  loc_6D5726: FFreeAd var_C4 = ""
  loc_6D572D: FFreeVar var_D4 = "": var_104 = ""
  loc_6D5736: BranchF loc_6D5742
  loc_6D573B: Resume
  loc_6D573F: Branch loc_6D576B
  loc_6D5746: On Error Resume Next
  loc_6D574B: FLdPr var_A4
  loc_6D574E: LateIdCall
  loc_6D5758: FLdPr var_A4
  loc_6D575B: LateIdCall
  loc_6D5765: On Error GoTo 0
  loc_6D576A: ExitProc
  loc_6D576F: ExitProc
End Function

Private Function Proc_87_3_5DC0AC(arg_10, arg_14) '5DC0AC
  'Data Table: 43B664
  loc_5DC074: ILdRf arg_10
  loc_5DC077: FStStrCopy var_98
  loc_5DC07A: FLdI2 arg_14
  loc_5DC07D: CI4UI1
  loc_5DC07E: ILdRf var_98
  loc_5DC081: FnLenStr
  loc_5DC082: SubI4
  loc_5DC083: LitI4 2
  loc_5DC088: IDvI4
  loc_5DC089: FLdRfVar var_A8
  loc_5DC08C: ImpAdCallFPR4  = Space()
  loc_5DC091: FLdRfVar var_A8
  loc_5DC094: ILdRf var_98
  loc_5DC097: CVarStr var_B8
  loc_5DC09A: ConcatVar var_C8
  loc_5DC09E: FStVar var_94
  loc_5DC0A2: FFree1Var var_A8 = ""
  loc_5DC0A5: ExitProcCb
  loc_5DC0A9: LitVar_Missing var_22C
End Function

Private Function Proc_87_4_5F7240(arg_C, arg_10, arg_14) '5F7240
  'Data Table: 4027E4
  loc_5F7198: ILdI4 arg_C
  loc_5F719B: FStStrCopy var_90
  loc_5F719E: LitI4 1
  loc_5F71A3: ILdRf var_90
  loc_5F71A6: ILdI4 arg_10
  loc_5F71A9: LitI4 0
  loc_5F71AE: FnInStr4
  loc_5F71B0: CI2I4
  loc_5F71B1: FStI2 var_8A
  loc_5F71B4: FLdI2 var_8A
  loc_5F71B7: LitI2_Byte 0
  loc_5F71B9: NeI2
  loc_5F71BA: BranchF loc_5F7237
  loc_5F71BD: FLdI2 var_8A
  loc_5F71C0: LitI2_Byte 1
  loc_5F71C2: SubI2
  loc_5F71C3: CVarI2 var_C0
  loc_5F71C6: LitI4 1
  loc_5F71CB: FLdRfVar var_90
  loc_5F71CE: CVarRef
  loc_5F71D3: FLdRfVar var_D0
  loc_5F71D6: ImpAdCallFPR4  = Mid(, , )
  loc_5F71DB: FLdRfVar var_D0
  loc_5F71DE: ILdI4 arg_14
  loc_5F71E1: CVarStr var_E0
  loc_5F71E4: ConcatVar var_F0
  loc_5F71E8: LitVar_Missing var_120
  loc_5F71EB: FLdI2 var_8A
  loc_5F71EE: CI4UI1
  loc_5F71EF: ILdI4 arg_10
  loc_5F71F2: FnLenStr
  loc_5F71F3: AddI4
  loc_5F71F4: FLdRfVar var_90
  loc_5F71F7: CVarRef
  loc_5F71FC: FLdRfVar var_130
  loc_5F71FF: ImpAdCallFPR4  = Mid(, , )
  loc_5F7204: FLdRfVar var_130
  loc_5F7207: ConcatVar var_140
  loc_5F720B: CStrVarTmp
  loc_5F720C: FStStr var_90
  loc_5F720F: FFreeVar var_C0 = "": var_D0 = "": var_120 = "": var_F0 = "": var_130 = ""
  loc_5F721E: LitI4 1
  loc_5F7223: ILdRf var_90
  loc_5F7226: ILdI4 arg_10
  loc_5F7229: LitI4 0
  loc_5F722E: FnInStr4
  loc_5F7230: CI2I4
  loc_5F7231: FStI2 var_8A
  loc_5F7234: Branch loc_5F71B4
  loc_5F7237: ILdRf var_90
  loc_5F723A: FStStrCopy var_88
  loc_5F723D: ExitProc
End Function

Private Function Proc_87_5_73E7D8(arg_C, arg_10, arg_14) '73E7D8
  'Data Table: 43B664
  loc_736C9E: ILdRf arg_C
  loc_736CA1: FStStrCopy var_8C
  loc_736CA4: ILdRf arg_10
  loc_736CA7: FStStrCopy var_90
  loc_736CAC: LitI4 0
  loc_736CB1: LitI4 0
  loc_736CB6: FLdRfVar var_18C
  loc_736CB9: Redim
  loc_736CC5: LitI4 0
  loc_736CCA: LitI4 0
  loc_736CCF: FLdRfVar var_184
  loc_736CD2: Redim
  loc_736CDE: FLdRfVar var_2F0
  loc_736CE1: LitVar_Missing var_2EC
  loc_736CE4: LitVar_Missing var_2CC
  loc_736CE7: LitVar_Missing var_2AC
  loc_736CEA: LitVar_Missing var_28C
  loc_736CED: LitVar_Missing var_26C
  loc_736CF0: LitVar_Missing var_24C
  loc_736CF3: LitVar_Missing var_22C
  loc_736CF6: LitVar_Missing var_20C
  loc_736CF9: LitVar_Missing var_1EC
  loc_736CFC: LitVar_Missing var_1CC
  loc_736CFF: LitStr "COD."
  loc_736D02: FStStrCopy var_1AC
  loc_736D05: FLdRfVar var_1AC
  loc_736D08: LitI4 &H4A
  loc_736D0D: PopTmpLdAdStr var_1A8
  loc_736D10: LitI2_Byte 9
  loc_736D12: PopTmpLdAd2 var_1A4
  loc_736D15: ImpAdLdRf MemVar_74C7D0
  loc_736D18: NewIfNullPr clsMsg
  loc_736D1B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736D20: FLdZeroAd var_2F0
  loc_736D23: FMemStStr arg_8(1432)
  loc_736D29: FFree1Str var_1AC
  loc_736D2C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736D45: FLdRfVar var_2F0
  loc_736D48: LitVar_Missing var_2EC
  loc_736D4B: LitVar_Missing var_2CC
  loc_736D4E: LitVar_Missing var_2AC
  loc_736D51: LitVar_Missing var_28C
  loc_736D54: LitVar_Missing var_26C
  loc_736D57: LitVar_Missing var_24C
  loc_736D5A: LitVar_Missing var_22C
  loc_736D5D: LitVar_Missing var_20C
  loc_736D60: LitVar_Missing var_1EC
  loc_736D63: LitVar_Missing var_1CC
  loc_736D66: LitStr "CODIGO"
  loc_736D69: FStStrCopy var_1AC
  loc_736D6C: FLdRfVar var_1AC
  loc_736D6F: LitI4 &H4B
  loc_736D74: PopTmpLdAdStr var_1A8
  loc_736D77: LitI2_Byte 9
  loc_736D79: PopTmpLdAd2 var_1A4
  loc_736D7C: ImpAdLdRf MemVar_74C7D0
  loc_736D7F: NewIfNullPr clsMsg
  loc_736D82: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736D87: FLdZeroAd var_2F0
  loc_736D8A: FMemStStr arg_8(1436)
  loc_736D90: FFree1Str var_1AC
  loc_736D93: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736DAC: FLdRfVar var_2F0
  loc_736DAF: LitVar_Missing var_2EC
  loc_736DB2: LitVar_Missing var_2CC
  loc_736DB5: LitVar_Missing var_2AC
  loc_736DB8: LitVar_Missing var_28C
  loc_736DBB: LitVar_Missing var_26C
  loc_736DBE: LitVar_Missing var_24C
  loc_736DC1: LitVar_Missing var_22C
  loc_736DC4: LitVar_Missing var_20C
  loc_736DC7: LitVar_Missing var_1EC
  loc_736DCA: LitVar_Missing var_1CC
  loc_736DCD: LitStr "DESCRIPCION"
  loc_736DD0: FStStrCopy var_1AC
  loc_736DD3: FLdRfVar var_1AC
  loc_736DD6: LitI4 &H4C
  loc_736DDB: PopTmpLdAdStr var_1A8
  loc_736DDE: LitI2_Byte 9
  loc_736DE0: PopTmpLdAd2 var_1A4
  loc_736DE3: ImpAdLdRf MemVar_74C7D0
  loc_736DE6: NewIfNullPr clsMsg
  loc_736DE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736DEE: FLdZeroAd var_2F0
  loc_736DF1: FMemStStr arg_8(1440)
  loc_736DF7: FFree1Str var_1AC
  loc_736DFA: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736E13: FLdRfVar var_2F0
  loc_736E16: LitVar_Missing var_2EC
  loc_736E19: LitVar_Missing var_2CC
  loc_736E1C: LitVar_Missing var_2AC
  loc_736E1F: LitVar_Missing var_28C
  loc_736E22: LitVar_Missing var_26C
  loc_736E25: LitVar_Missing var_24C
  loc_736E28: LitVar_Missing var_22C
  loc_736E2B: LitVar_Missing var_20C
  loc_736E2E: LitVar_Missing var_1EC
  loc_736E31: LitVar_Missing var_1CC
  loc_736E34: LitStr "PRODUCTO"
  loc_736E37: FStStrCopy var_1AC
  loc_736E3A: FLdRfVar var_1AC
  loc_736E3D: LitI4 &H4D
  loc_736E42: PopTmpLdAdStr var_1A8
  loc_736E45: LitI2_Byte 9
  loc_736E47: PopTmpLdAd2 var_1A4
  loc_736E4A: ImpAdLdRf MemVar_74C7D0
  loc_736E4D: NewIfNullPr clsMsg
  loc_736E50: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736E55: FLdZeroAd var_2F0
  loc_736E58: FMemStStr arg_8(1444)
  loc_736E5E: FFree1Str var_1AC
  loc_736E61: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736E7A: FLdRfVar var_2F0
  loc_736E7D: LitVar_Missing var_2EC
  loc_736E80: LitVar_Missing var_2CC
  loc_736E83: LitVar_Missing var_2AC
  loc_736E86: LitVar_Missing var_28C
  loc_736E89: LitVar_Missing var_26C
  loc_736E8C: LitVar_Missing var_24C
  loc_736E8F: LitVar_Missing var_22C
  loc_736E92: LitVar_Missing var_20C
  loc_736E95: LitVar_Missing var_1EC
  loc_736E98: LitVar_Missing var_1CC
  loc_736E9B: LitStr "VOLUMEN TOTAL EXPENDIDO POR PRODUCTO"
  loc_736E9E: FStStrCopy var_1AC
  loc_736EA1: FLdRfVar var_1AC
  loc_736EA4: LitI4 &H8E
  loc_736EA9: PopTmpLdAdStr var_1A8
  loc_736EAC: LitI2_Byte 9
  loc_736EAE: PopTmpLdAd2 var_1A4
  loc_736EB1: ImpAdLdRf MemVar_74C7D0
  loc_736EB4: NewIfNullPr clsMsg
  loc_736EB7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736EBC: FLdZeroAd var_2F0
  loc_736EBF: FMemStStr arg_8(1704)
  loc_736EC5: FFree1Str var_1AC
  loc_736EC8: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736EE1: FLdRfVar var_2F0
  loc_736EE4: LitVar_Missing var_2EC
  loc_736EE7: LitVar_Missing var_2CC
  loc_736EEA: LitVar_Missing var_2AC
  loc_736EED: LitVar_Missing var_28C
  loc_736EF0: LitVar_Missing var_26C
  loc_736EF3: LitVar_Missing var_24C
  loc_736EF6: LitVar_Missing var_22C
  loc_736EF9: LitVar_Missing var_20C
  loc_736EFC: LitVar_Missing var_1EC
  loc_736EFF: LitVar_Missing var_1CC
  loc_736F02: LitStr "VOLUMEN"
  loc_736F05: FStStrCopy var_1AC
  loc_736F08: FLdRfVar var_1AC
  loc_736F0B: LitI4 &H8F
  loc_736F10: PopTmpLdAdStr var_1A8
  loc_736F13: LitI2_Byte 9
  loc_736F15: PopTmpLdAd2 var_1A4
  loc_736F18: ImpAdLdRf MemVar_74C7D0
  loc_736F1B: NewIfNullPr clsMsg
  loc_736F1E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736F23: FLdZeroAd var_2F0
  loc_736F26: FMemStStr arg_8(1708)
  loc_736F2C: FFree1Str var_1AC
  loc_736F2F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736F48: FLdRfVar var_2F0
  loc_736F4B: LitVar_Missing var_2EC
  loc_736F4E: LitVar_Missing var_2CC
  loc_736F51: LitVar_Missing var_2AC
  loc_736F54: LitVar_Missing var_28C
  loc_736F57: LitVar_Missing var_26C
  loc_736F5A: LitVar_Missing var_24C
  loc_736F5D: LitVar_Missing var_22C
  loc_736F60: LitVar_Missing var_20C
  loc_736F63: LitVar_Missing var_1EC
  loc_736F66: LitVar_Missing var_1CC
  loc_736F69: LitStr "MONTO"
  loc_736F6C: FStStrCopy var_1AC
  loc_736F6F: FLdRfVar var_1AC
  loc_736F72: LitI4 &H90
  loc_736F77: PopTmpLdAdStr var_1A8
  loc_736F7A: LitI2_Byte 9
  loc_736F7C: PopTmpLdAd2 var_1A4
  loc_736F7F: ImpAdLdRf MemVar_74C7D0
  loc_736F82: NewIfNullPr clsMsg
  loc_736F85: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736F8A: FLdZeroAd var_2F0
  loc_736F8D: FMemStStr arg_8(1712)
  loc_736F93: FFree1Str var_1AC
  loc_736F96: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_736FAF: FLdRfVar var_2F0
  loc_736FB2: LitVar_Missing var_2EC
  loc_736FB5: LitVar_Missing var_2CC
  loc_736FB8: LitVar_Missing var_2AC
  loc_736FBB: LitVar_Missing var_28C
  loc_736FBE: LitVar_Missing var_26C
  loc_736FC1: LitVar_Missing var_24C
  loc_736FC4: LitVar_Missing var_22C
  loc_736FC7: LitVar_Missing var_20C
  loc_736FCA: LitVar_Missing var_1EC
  loc_736FCD: LitVar_Missing var_1CC
  loc_736FD0: LitStr "TANQUE"
  loc_736FD3: FStStrCopy var_1AC
  loc_736FD6: FLdRfVar var_1AC
  loc_736FD9: LitI4 &H2B
  loc_736FDE: PopTmpLdAdStr var_1A8
  loc_736FE1: LitI2_Byte 9
  loc_736FE3: PopTmpLdAd2 var_1A4
  loc_736FE6: ImpAdLdRf MemVar_74C7D0
  loc_736FE9: NewIfNullPr clsMsg
  loc_736FEC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_736FF1: FLdZeroAd var_2F0
  loc_736FF4: FMemStStr arg_8(1308)
  loc_736FFA: FFree1Str var_1AC
  loc_736FFD: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737016: FLdRfVar var_2F0
  loc_737019: LitVar_Missing var_2EC
  loc_73701C: LitVar_Missing var_2CC
  loc_73701F: LitVar_Missing var_2AC
  loc_737022: LitVar_Missing var_28C
  loc_737025: LitVar_Missing var_26C
  loc_737028: LitVar_Missing var_24C
  loc_73702B: LitVar_Missing var_22C
  loc_73702E: LitVar_Missing var_20C
  loc_737031: LitVar_Missing var_1EC
  loc_737034: LitVar_Missing var_1CC
  loc_737037: LitStr " efectuó el cierre de Red XXI."
  loc_73703A: FStStrCopy var_1AC
  loc_73703D: FLdRfVar var_1AC
  loc_737040: LitI4 &H76
  loc_737045: PopTmpLdAdStr var_1A8
  loc_737048: LitI2_Byte 9
  loc_73704A: PopTmpLdAd2 var_1A4
  loc_73704D: ImpAdLdRf MemVar_74C7D0
  loc_737050: NewIfNullPr clsMsg
  loc_737053: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737058: FLdZeroAd var_2F0
  loc_73705B: FMemStStr arg_8(1604)
  loc_737061: FFree1Str var_1AC
  loc_737064: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73707D: LitI2_Byte 0
  loc_73707F: PopTmpLdAd2 var_1A4
  loc_737082: ImpAdCallI2 Proc_53_4_718EF4()
  loc_737087: NotI4
  loc_737088: BranchF loc_73708E
  loc_73708D: ExitProcI2
  loc_737090: FLdRfVar var_1A4
  loc_737093: FLdRfVar var_A4
  loc_737096: FLdRfVar var_2F4
  loc_737099: ImpAdLdRf MemVar_74C760
  loc_73709C: NewIfNullPr Formx
  loc_73709F: from_stack_1v = Formx.global_4589716Get()
  loc_7370A4: FLdPr var_2F4
  loc_7370A7:  = Formx.Picture
  loc_7370AC: FLdI2 var_1A4
  loc_7370AF: NotI4
  loc_7370B0: FFree1Ad var_2F4
  loc_7370B3: BranchF loc_7370D3
  loc_7370B8: FLdRfVar var_1CC
  loc_7370BB: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7370C0: FLdRfVar var_1CC
  loc_7370C3: CBoolVarNull
  loc_7370C5: FFree1Var var_1CC = ""
  loc_7370C8: BranchF loc_7370CE
  loc_7370CD: ExitProcI2
  loc_7370D0: Branch loc_73708E
  loc_7370D5: LitVarI2 var_1CC, 30
  loc_7370DA: LitI4 7
  loc_7370DF: FLdRfVar var_A4
  loc_7370E2: CVarRef
  loc_7370E7: FLdRfVar var_1EC
  loc_7370EA: ImpAdCallFPR4  = Mid(, , )
  loc_7370EF: FLdRfVar var_1EC
  loc_7370F2: FLdRfVar var_20C
  loc_7370F5: ImpAdCallFPR4  = Trim()
  loc_7370FA: FLdRfVar var_20C
  loc_7370FD: CStrVarTmp
  loc_7370FE: FStStr var_A0
  loc_737101: FFreeVar var_1CC = "": var_1EC = ""
  loc_73710C: LitVarI2 var_1CC, 6
  loc_737111: LitI4 1
  loc_737116: FLdRfVar var_A4
  loc_737119: CVarRef
  loc_73711E: FLdRfVar var_1EC
  loc_737121: ImpAdCallFPR4  = Mid(, , )
  loc_737126: FLdRfVar var_1EC
  loc_737129: CStrVarVal var_1AC
  loc_73712D: ImpAdCallFPR4 push Val()
  loc_737132: CI4R8
  loc_737133: FStR4 var_98
  loc_737136: FFree1Str var_1AC
  loc_737139: FFreeVar var_1CC = ""
  loc_737142: ILdRf arg_14
  loc_737145: ImpAdCallI2 IsMissing()
  loc_73714A: BranchF loc_737163
  loc_73714F: FLdRfVar var_2F4
  loc_737152: ImpAdLdRf MemVar_7520D4
  loc_737155: NewIfNullPr Global
  loc_737158:  = Global.Printer
  loc_73715D: FLdZeroAd var_2F4
  loc_737160: FStAdFunc var_190
  loc_737167: OnErrorGoto loc_73E393
  loc_73716C: ILdRf arg_14
  loc_73716F: ImpAdCallI2 IsMissing()
  loc_737174: BranchF loc_737377
  loc_737179: LitI4 6
  loc_73717E: CI2I4
  loc_73717F: CVarI2 var_1BC
  loc_737182: PopAdLdVar
  loc_737183: FLdPr var_190
  loc_737186: LateIdSt
  loc_73718D: LitI4 9
  loc_737192: CI2I4
  loc_737193: CVarI2 var_1BC
  loc_737196: PopAdLdVar
  loc_737197: FLdPr var_190
  loc_73719A: LateIdSt
  loc_7371A1: LitVarStr var_1BC, "Courier New"
  loc_7371A6: PopAdLdVar
  loc_7371A7: FLdPr var_190
  loc_7371AA: LateIdSt
  loc_7371B1: LitI2_Byte &HB
  loc_7371B3: CR8I2
  loc_7371B4: CVarR4
  loc_7371B8: PopAdLdVar
  loc_7371B9: FLdPr var_190
  loc_7371BC: LateIdSt
  loc_7371C3: LitI4 0
  loc_7371C8: FLdRfVar var_1AC
  loc_7371CB: FLdRfVar var_2F4
  loc_7371CE: ImpAdLdRf MemVar_7520D4
  loc_7371D1: NewIfNullPr Global
  loc_7371D4:  = Global.App
  loc_7371D9: FLdPr var_2F4
  loc_7371DC:  = App.Path
  loc_7371E1: ILdRf var_1AC
  loc_7371E4: LitStr "\Logo_Compania.bmp"
  loc_7371E7: ConcatStr
  loc_7371E8: CVarStr var_1CC
  loc_7371EB: ImpAdCallI2 push Dir(, )
  loc_7371F0: FStStrNoPop var_2F0
  loc_7371F3: LitStr vbNullString
  loc_7371F6: NeStr
  loc_7371F8: FFreeStr var_1AC = ""
  loc_7371FF: FFree1Ad var_2F4
  loc_737202: FFree1Var var_1CC = ""
  loc_737205: BranchF loc_737286
  loc_73720A: FLdRfVar var_1AC
  loc_73720D: FLdRfVar var_2F4
  loc_737210: ImpAdLdRf MemVar_7520D4
  loc_737213: NewIfNullPr Global
  loc_737216:  = Global.App
  loc_73721B: FLdPr var_2F4
  loc_73721E:  = App.Path
  loc_737223: FLdRfVar var_2F8
  loc_737226: ILdRf var_1AC
  loc_737229: LitStr "\Logo_Compania.bmp"
  loc_73722C: ConcatStr
  loc_73722D: CVarStr var_1CC
  loc_737230: PopAdLdVar
  loc_737231: ImpAdLdRf MemVar_7520D4
  loc_737234: NewIfNullPr Global
  loc_737237: Global.LoadPictureOld from_stack_1
  loc_73723C: FLdZeroAd var_2F8
  loc_73723F: CVarAd
  loc_737243: PopAdLdVar
  loc_737244: LitI2_Byte 1
  loc_737246: CR8I2
  loc_737247: CVarR4
  loc_73724B: PopAdLdVar
  loc_73724C: LitI2_Byte &HA
  loc_73724E: CR8I2
  loc_73724F: CVarR4
  loc_737253: PopAdLdVar
  loc_737254: LitVarR8
  loc_737260: PopAdLdVar
  loc_737261: LitVarR8
  loc_73726D: PopAdLdVar
  loc_73726E: FLdPr var_190
  loc_737271: LateIdCall
  loc_737279: FFree1Str var_1AC
  loc_73727C: FFree1Ad var_2F4
  loc_73727F: FFreeVar var_1CC = ""
  loc_73728A: LitI4 0
  loc_73728F: FLdRfVar var_1AC
  loc_737292: FLdRfVar var_2F4
  loc_737295: ImpAdLdRf MemVar_7520D4
  loc_737298: NewIfNullPr Global
  loc_73729B:  = Global.App
  loc_7372A0: FLdPr var_2F4
  loc_7372A3:  = App.Path
  loc_7372A8: ILdRf var_1AC
  loc_7372AB: LitStr "\Logo_Proyecto.bmp"
  loc_7372AE: ConcatStr
  loc_7372AF: CVarStr var_1CC
  loc_7372B2: ImpAdCallI2 push Dir(, )
  loc_7372B7: FStStrNoPop var_2F0
  loc_7372BA: LitStr vbNullString
  loc_7372BD: NeStr
  loc_7372BF: FFreeStr var_1AC = ""
  loc_7372C6: FFree1Ad var_2F4
  loc_7372C9: FFree1Var var_1CC = ""
  loc_7372CC: BranchF loc_73734E
  loc_7372D1: FLdRfVar var_1AC
  loc_7372D4: FLdRfVar var_2F4
  loc_7372D7: ImpAdLdRf MemVar_7520D4
  loc_7372DA: NewIfNullPr Global
  loc_7372DD:  = Global.App
  loc_7372E2: FLdPr var_2F4
  loc_7372E5:  = App.Path
  loc_7372EA: FLdRfVar var_2F8
  loc_7372ED: ILdRf var_1AC
  loc_7372F0: LitStr "\Logo_Proyecto.bmp"
  loc_7372F3: ConcatStr
  loc_7372F4: CVarStr var_1CC
  loc_7372F7: PopAdLdVar
  loc_7372F8: ImpAdLdRf MemVar_7520D4
  loc_7372FB: NewIfNullPr Global
  loc_7372FE: Global.LoadPictureOld from_stack_1
  loc_737303: FLdZeroAd var_2F8
  loc_737306: CVarAd
  loc_73730A: PopAdLdVar
  loc_73730B: LitI2 150
  loc_73730E: CR8I2
  loc_73730F: CVarR4
  loc_737313: PopAdLdVar
  loc_737314: LitI2_Byte &HA
  loc_737316: CR8I2
  loc_737317: CVarR4
  loc_73731B: PopAdLdVar
  loc_73731C: LitVarR8
  loc_737328: PopAdLdVar
  loc_737329: LitVarR8
  loc_737335: PopAdLdVar
  loc_737336: FLdPr var_190
  loc_737339: LateIdCall
  loc_737341: FFree1Str var_1AC
  loc_737344: FFree1Ad var_2F4
  loc_737347: FFreeVar var_1CC = ""
  loc_737352: LitI2_Byte 1
  loc_737354: FLdRfVar var_92
  loc_737357: LitI2_Byte 4
  loc_737359: ForI2 var_2FC
  loc_737361: ILdRf var_190
  loc_737364: PrintObject
  loc_73736C: FLdRfVar var_92
  loc_73736F: NextI2 var_2FC, loc_73735F
  loc_737374: Branch loc_7373B3
  loc_73737B: LitVarStr var_1BC, "Courier New"
  loc_737380: PopAdLdVar
  loc_737381: ILdRfDarg arg_14
  loc_737387: LdPrVar
  loc_737389: LateMemSt
  loc_73738F: LitVarI2 var_1BC, 11
  loc_737394: PopAdLdVar
  loc_737395: ILdRfDarg arg_14
  loc_73739B: LdPrVar
  loc_73739D: LateMemSt
  loc_7373A3: LitVar_TRUE var_1BC
  loc_7373A6: PopAdLdVar
  loc_7373A7: ILdRfDarg arg_14
  loc_7373AD: LdPrVar
  loc_7373AF: LateMemSt
  loc_7373B7: FLdRfVar var_1CC
  loc_7373BA: FLdRfVar var_A8
  loc_7373BD: FLdRfVar var_90
  loc_7373C0: LitStr "7"
  loc_7373C3: FStStrCopy var_1AC
  loc_7373C6: FLdRfVar var_1AC
  loc_7373C9: FLdRfVar var_8C
  loc_7373CC: FLdRfVar var_2F4
  loc_7373CF: ImpAdLdRf MemVar_74C760
  loc_7373D2: NewIfNullPr Formx
  loc_7373D5: from_stack_1v = Formx.global_4589716Get()
  loc_7373DA: FLdPr var_2F4
  loc_7373DD:  = Formx.FontBold
  loc_7373E2: FLdRfVar var_1CC
  loc_7373E5: NotVar var_1EC
  loc_7373E9: CBoolVarNull
  loc_7373EB: FFree1Str var_1AC
  loc_7373EE: FFree1Ad var_2F4
  loc_7373F1: FFree1Var var_1CC = ""
  loc_7373F4: BranchF loc_737416
  loc_7373F9: FLdRfVar var_1CC
  loc_7373FC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_737401: FLdRfVar var_1CC
  loc_737404: CBoolVarNull
  loc_737406: FFree1Var var_1CC = ""
  loc_737409: BranchF loc_73740F
  loc_73740E: ExitProcI2
  loc_737413: Branch loc_7373B5
  loc_737418: ILdRf var_A8
  loc_73741B: CI2Str
  loc_73741D: FStI2 var_1A2
  loc_737422: FLdRfVar var_A8
  loc_737425: CVarRef
  loc_73742A: FLdRfVar var_1CC
  loc_73742D: ImpAdCallFPR4  = Trim()
  loc_737432: FLdRfVar var_1CC
  loc_737435: CStrVarTmp
  loc_737436: FStStr var_A8
  loc_737439: FFree1Var var_1CC = ""
  loc_73743E: ILdRf var_A8
  loc_737441: CI2Str
  loc_737443: ImpAdCallI2 Unknown_659758()
  loc_737448: FStStr var_A8
  loc_73744D: FLdRfVar var_2F0
  loc_737450: LitVar_Missing var_2EC
  loc_737453: LitVar_Missing var_2CC
  loc_737456: LitVar_Missing var_2AC
  loc_737459: LitVar_Missing var_28C
  loc_73745C: LitVar_Missing var_26C
  loc_73745F: LitVar_Missing var_24C
  loc_737462: LitVar_Missing var_22C
  loc_737465: LitVar_Missing var_20C
  loc_737468: LitVar_Missing var_1EC
  loc_73746B: LitVar_Missing var_1CC
  loc_73746E: LitStr "INFORME DE CIERRE RED XXI"
  loc_737471: FStStrCopy var_1AC
  loc_737474: FLdRfVar var_1AC
  loc_737477: LitI4 &H7D
  loc_73747C: PopTmpLdAdStr var_1A8
  loc_73747F: LitI2_Byte 9
  loc_737481: PopTmpLdAd2 var_1A4
  loc_737484: ImpAdLdRf MemVar_74C7D0
  loc_737487: NewIfNullPr clsMsg
  loc_73748A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73748F: FLdZeroAd var_2F0
  loc_737492: FMemStStr arg_8(1636)
  loc_737498: FFree1Str var_1AC
  loc_73749B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_7374B4: FLdRfVar var_2F0
  loc_7374B7: LitVar_Missing var_2EC
  loc_7374BA: LitVar_Missing var_2CC
  loc_7374BD: LitVar_Missing var_2AC
  loc_7374C0: LitVar_Missing var_28C
  loc_7374C3: LitVar_Missing var_26C
  loc_7374C6: LitVar_Missing var_24C
  loc_7374C9: LitVar_Missing var_22C
  loc_7374CC: LitVar_Missing var_20C
  loc_7374CF: LitVar_Missing var_1EC
  loc_7374D2: LitVar_Missing var_1CC
  loc_7374D5: LitStr "MOTIVO DEL CIERRE: "
  loc_7374D8: FStStrCopy var_1AC
  loc_7374DB: FLdRfVar var_1AC
  loc_7374DE: LitI4 &H7E
  loc_7374E3: PopTmpLdAdStr var_1A8
  loc_7374E6: LitI2_Byte 9
  loc_7374E8: PopTmpLdAd2 var_1A4
  loc_7374EB: ImpAdLdRf MemVar_74C7D0
  loc_7374EE: NewIfNullPr clsMsg
  loc_7374F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7374F6: FLdZeroAd var_2F0
  loc_7374F9: FMemStStr arg_8(1640)
  loc_7374FF: FFree1Str var_1AC
  loc_737502: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73751B: FLdRfVar var_2F0
  loc_73751E: LitVar_Missing var_2EC
  loc_737521: LitVar_Missing var_2CC
  loc_737524: LitVar_Missing var_2AC
  loc_737527: LitVar_Missing var_28C
  loc_73752A: LitVar_Missing var_26C
  loc_73752D: LitVar_Missing var_24C
  loc_737530: LitVar_Missing var_22C
  loc_737533: LitVar_Missing var_20C
  loc_737536: LitVar_Missing var_1EC
  loc_737539: LitVar_Missing var_1CC
  loc_73753C: LitStr "INFORME DE CIERRE DIARIO"
  loc_73753F: FStStrCopy var_1AC
  loc_737542: FLdRfVar var_1AC
  loc_737545: LitI4 &H7F
  loc_73754A: PopTmpLdAdStr var_1A8
  loc_73754D: LitI2_Byte 9
  loc_73754F: PopTmpLdAd2 var_1A4
  loc_737552: ImpAdLdRf MemVar_74C7D0
  loc_737555: NewIfNullPr clsMsg
  loc_737558: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73755D: FLdZeroAd var_2F0
  loc_737560: FMemStStr arg_8(1644)
  loc_737566: FFree1Str var_1AC
  loc_737569: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737582: ILdRf arg_14
  loc_737585: ImpAdCallI2 IsMissing()
  loc_73758A: BranchF loc_737766
  loc_73758F: LitI2_Byte 0
  loc_737591: FStI2 var_2FE
  loc_737596: LitI2_Byte &H50
  loc_737598: FMemLdR4 arg_8(1636)
  loc_73759D: FLdRfVar var_1CC
  loc_7375A0: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_7375A5: FLdRfVar var_1CC
  loc_7375A8: ILdRf var_190
  loc_7375AB: PrintObject
  loc_7375B1: FFree1Var var_1CC = ""
  loc_7375B6: ILdRf var_190
  loc_7375B9: PrintObject
  loc_7375C1: ILdRf var_190
  loc_7375C4: PrintObject
  loc_7375CC: LitI4 3
  loc_7375D1: FLdRfVar var_1CC
  loc_7375D4: ImpAdCallFPR4  = Space()
  loc_7375D9: FLdRfVar var_1EC
  loc_7375DC: ImpAdCallFPR4  = Date
  loc_7375E1: LitI4 1
  loc_7375E6: LitI4 1
  loc_7375EB: LitVarStr var_1BC, "dd/mm/yyyy"
  loc_7375F0: FStVarCopyObj var_20C
  loc_7375F3: FLdRfVar var_20C
  loc_7375F6: FLdRfVar var_1EC
  loc_7375F9: ImpAdCallI2 Format$(, )
  loc_7375FE: FStStr var_1AC
  loc_737601: LitI4 &H33
  loc_737606: FLdRfVar var_26C
  loc_737609: ImpAdCallFPR4  = Space()
  loc_73760E: FLdRfVar var_2AC
  loc_737611: ImpAdCallFPR4  = Time
  loc_737616: LitI4 1
  loc_73761B: LitI4 1
  loc_737620: LitVarStr var_1DC, "hh:mm:ss"
  loc_737625: FStVarCopyObj var_2CC
  loc_737628: FLdRfVar var_2CC
  loc_73762B: FLdRfVar var_2AC
  loc_73762E: ImpAdCallI2 Format$(, )
  loc_737633: FStStr var_2F0
  loc_737636: FLdRfVar var_1CC
  loc_737639: FLdZeroAd var_1AC
  loc_73763C: CVarStr var_22C
  loc_73763F: ConcatVar var_24C
  loc_737643: FLdRfVar var_26C
  loc_737646: ConcatVar var_28C
  loc_73764A: FLdZeroAd var_2F0
  loc_73764D: CVarStr var_2EC
  loc_737650: ConcatVar var_310
  loc_737654: ILdRf var_190
  loc_737657: PrintObject
  loc_73765D: FFreeStr var_1AC = ""
  loc_737664: FFreeVar var_1EC = "": var_20C = "": var_1CC = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_2CC = "": var_28C = "": var_2EC = ""
  loc_73767F: ILdRf var_190
  loc_737682: PrintObject
  loc_73768A: ILdRf var_190
  loc_73768D: PrintObject
  loc_737695: LitI4 3
  loc_73769A: FLdRfVar var_1CC
  loc_73769D: ImpAdCallFPR4  = Space()
  loc_7376A2: FLdRfVar var_1CC
  loc_7376A5: FMemLdR4 arg_8(1152)
  loc_7376AA: CVarStr var_1BC
  loc_7376AD: ConcatVar var_1EC
  loc_7376B1: ILdRf var_98
  loc_7376B4: CVarI4
  loc_7376B8: ConcatVar var_20C
  loc_7376BC: ILdRf var_190
  loc_7376BF: PrintObject
  loc_7376C5: FFreeVar var_1CC = "": var_1EC = ""
  loc_7376D0: LitI4 3
  loc_7376D5: FLdRfVar var_1CC
  loc_7376D8: ImpAdCallFPR4  = Space()
  loc_7376DD: FLdRfVar var_1CC
  loc_7376E0: FMemLdR4 arg_8(1156)
  loc_7376E5: CVarStr var_1BC
  loc_7376E8: ConcatVar var_1EC
  loc_7376EC: ILdRf var_A0
  loc_7376EF: CVarStr var_1DC
  loc_7376F2: ConcatVar var_20C
  loc_7376F6: ILdRf var_190
  loc_7376F9: PrintObject
  loc_7376FF: FFreeVar var_1CC = "": var_1EC = ""
  loc_73770A: ILdRf var_190
  loc_73770D: PrintObject
  loc_737715: LitI4 3
  loc_73771A: FLdRfVar var_1CC
  loc_73771D: ImpAdCallFPR4  = Space()
  loc_737722: FLdRfVar var_1CC
  loc_737725: FMemLdR4 arg_8(1640)
  loc_73772A: CVarStr var_1BC
  loc_73772D: ConcatVar var_1EC
  loc_737731: ILdRf var_A8
  loc_737734: CVarStr var_1DC
  loc_737737: ConcatVar var_20C
  loc_73773B: ILdRf var_190
  loc_73773E: PrintObject
  loc_737744: FFreeVar var_1CC = "": var_1EC = ""
  loc_73774F: ILdRf var_190
  loc_737752: PrintObject
  loc_73775A: ILdRf var_190
  loc_73775D: PrintObject
  loc_737763: Branch loc_7379C2
  loc_73776A: LitI2_Byte &HFF
  loc_73776C: FStI2 var_2FE
  loc_737771: LitVarStr var_1BC, vbNullString
  loc_737776: PopAdLdVar
  loc_737777: ILdRfDarg arg_14
  loc_73777D: LdPrVar
  loc_73777F: LateMemCall
  loc_737787: LitVarStr var_1BC, vbNullString
  loc_73778C: PopAdLdVar
  loc_73778D: ILdRfDarg arg_14
  loc_737793: LdPrVar
  loc_737795: LateMemCall
  loc_73779D: LitI2_Byte &H50
  loc_73779F: FMemLdR4 arg_8(1644)
  loc_7377A4: FLdRfVar var_1CC
  loc_7377A7: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_7377AC: FLdVar var_1CC
  loc_7377B0: ILdRfDarg arg_14
  loc_7377B6: LdPrVar
  loc_7377B8: LateMemCall
  loc_7377BE: FFree1Var var_1CC = ""
  loc_7377C3: LitVarStr var_1BC, vbNullString
  loc_7377C8: PopAdLdVar
  loc_7377C9: ILdRfDarg arg_14
  loc_7377CF: LdPrVar
  loc_7377D1: LateMemCall
  loc_7377D9: LitVarStr var_1BC, vbNullString
  loc_7377DE: PopAdLdVar
  loc_7377DF: ILdRfDarg arg_14
  loc_7377E5: LdPrVar
  loc_7377E7: LateMemCall
  loc_7377EF: FLdRfVar var_1EC
  loc_7377F2: ImpAdCallFPR4  = Date
  loc_7377F7: FLdRfVar var_2AC
  loc_7377FA: ImpAdCallFPR4  = Time
  loc_7377FF: LitI4 3
  loc_737804: FLdRfVar var_1CC
  loc_737807: ImpAdCallFPR4  = Space()
  loc_73780C: FLdRfVar var_1CC
  loc_73780F: LitI4 1
  loc_737814: LitI4 1
  loc_737819: LitVarStr var_1BC, "dd/mm/yyyy"
  loc_73781E: FStVarCopyObj var_20C
  loc_737821: FLdRfVar var_20C
  loc_737824: FLdRfVar var_1EC
  loc_737827: ImpAdCallI2 Format$(, )
  loc_73782C: CVarStr var_22C
  loc_73782F: ConcatVar var_24C
  loc_737833: LitI4 &H33
  loc_737838: FLdRfVar var_26C
  loc_73783B: ImpAdCallFPR4  = Space()
  loc_737840: FLdRfVar var_26C
  loc_737843: ConcatVar var_28C
  loc_737847: LitI4 1
  loc_73784C: LitI4 1
  loc_737851: LitVarStr var_1DC, "hh:mm:ss"
  loc_737856: FStVarCopyObj var_2CC
  loc_737859: FLdRfVar var_2CC
  loc_73785C: FLdRfVar var_2AC
  loc_73785F: ImpAdCallI2 Format$(, )
  loc_737864: CVarStr var_2EC
  loc_737867: ConcatVar var_310
  loc_73786B: PopAdLdVar
  loc_73786C: ILdRfDarg arg_14
  loc_737872: LdPrVar
  loc_737874: LateMemCall
  loc_73787A: FFreeVar var_1EC = "": var_20C = "": var_1CC = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_2CC = "": var_28C = "": var_2EC = ""
  loc_737895: LitVarStr var_1BC, vbNullString
  loc_73789A: PopAdLdVar
  loc_73789B: ILdRfDarg arg_14
  loc_7378A1: LdPrVar
  loc_7378A3: LateMemCall
  loc_7378AB: LitVarStr var_1BC, vbNullString
  loc_7378B0: PopAdLdVar
  loc_7378B1: ILdRfDarg arg_14
  loc_7378B7: LdPrVar
  loc_7378B9: LateMemCall
  loc_7378C1: LitI4 3
  loc_7378C6: FLdRfVar var_1CC
  loc_7378C9: ImpAdCallFPR4  = Space()
  loc_7378CE: FLdRfVar var_1CC
  loc_7378D1: FMemLdR4 arg_8(1152)
  loc_7378D6: CVarStr var_1BC
  loc_7378D9: ConcatVar var_1EC
  loc_7378DD: ILdRf var_98
  loc_7378E0: CVarI4
  loc_7378E4: ConcatVar var_20C
  loc_7378E8: PopAdLdVar
  loc_7378E9: ILdRfDarg arg_14
  loc_7378EF: LdPrVar
  loc_7378F1: LateMemCall
  loc_7378F7: FFreeVar var_1CC = "": var_1EC = ""
  loc_737902: LitI4 3
  loc_737907: FLdRfVar var_1CC
  loc_73790A: ImpAdCallFPR4  = Space()
  loc_73790F: FLdRfVar var_1CC
  loc_737912: FMemLdR4 arg_8(1156)
  loc_737917: CVarStr var_1BC
  loc_73791A: ConcatVar var_1EC
  loc_73791E: ILdRf var_A0
  loc_737921: CVarStr var_1DC
  loc_737924: ConcatVar var_20C
  loc_737928: PopAdLdVar
  loc_737929: ILdRfDarg arg_14
  loc_73792F: LdPrVar
  loc_737931: LateMemCall
  loc_737937: FFreeVar var_1CC = "": var_1EC = ""
  loc_737942: LitVarStr var_1BC, vbNullString
  loc_737947: PopAdLdVar
  loc_737948: ILdRfDarg arg_14
  loc_73794E: LdPrVar
  loc_737950: LateMemCall
  loc_737958: LitI4 3
  loc_73795D: FLdRfVar var_1CC
  loc_737960: ImpAdCallFPR4  = Space()
  loc_737965: FLdRfVar var_1CC
  loc_737968: FMemLdR4 arg_8(1640)
  loc_73796D: CVarStr var_1BC
  loc_737970: ConcatVar var_1EC
  loc_737974: ILdRf var_A8
  loc_737977: CVarStr var_1DC
  loc_73797A: ConcatVar var_20C
  loc_73797E: PopAdLdVar
  loc_73797F: ILdRfDarg arg_14
  loc_737985: LdPrVar
  loc_737987: LateMemCall
  loc_73798D: FFreeVar var_1CC = "": var_1EC = ""
  loc_737998: LitVarStr var_1BC, vbNullString
  loc_73799D: PopAdLdVar
  loc_73799E: ILdRfDarg arg_14
  loc_7379A4: LdPrVar
  loc_7379A6: LateMemCall
  loc_7379AE: LitVarStr var_1BC, vbNullString
  loc_7379B3: PopAdLdVar
  loc_7379B4: ILdRfDarg arg_14
  loc_7379BA: LdPrVar
  loc_7379BC: LateMemCall
  loc_7379C6: FLdRfVar var_1CC
  loc_7379C9: FLdRfVar var_A8
  loc_7379CC: FLdRfVar var_90
  loc_7379CF: LitStr "1"
  loc_7379D2: FStStrCopy var_1AC
  loc_7379D5: FLdRfVar var_1AC
  loc_7379D8: FLdRfVar var_8C
  loc_7379DB: FLdRfVar var_2F4
  loc_7379DE: ImpAdLdRf MemVar_74C760
  loc_7379E1: NewIfNullPr Formx
  loc_7379E4: from_stack_1v = Formx.global_4589716Get()
  loc_7379E9: FLdPr var_2F4
  loc_7379EC:  = Formx.FontBold
  loc_7379F1: FLdRfVar var_1CC
  loc_7379F4: NotVar var_1EC
  loc_7379F8: CBoolVarNull
  loc_7379FA: FFree1Str var_1AC
  loc_7379FD: FFree1Ad var_2F4
  loc_737A00: FFree1Var var_1CC = ""
  loc_737A03: BranchF loc_737A23
  loc_737A08: FLdRfVar var_1CC
  loc_737A0B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_737A10: FLdRfVar var_1CC
  loc_737A13: CBoolVarNull
  loc_737A15: FFree1Var var_1CC = ""
  loc_737A18: BranchF loc_737A1E
  loc_737A1D: ExitProcI2
  loc_737A20: Branch loc_7379C4
  loc_737A25: FLdRfVar var_A8
  loc_737A28: CVarRef
  loc_737A2D: FLdRfVar var_1CC
  loc_737A30: ImpAdCallFPR4  = Trim()
  loc_737A35: FLdRfVar var_1CC
  loc_737A38: CStrVarTmp
  loc_737A39: FStStr var_A8
  loc_737A3C: FFree1Var var_1CC = ""
  loc_737A41: LitVarI2 var_1CC, 7
  loc_737A46: LitI4 1
  loc_737A4B: FLdRfVar var_A8
  loc_737A4E: CVarRef
  loc_737A53: FLdRfVar var_1EC
  loc_737A56: ImpAdCallFPR4  = Mid(, , )
  loc_737A5B: FLdRfVar var_1EC
  loc_737A5E: LitVarStr var_1FC, "0000001"
  loc_737A63: HardType
  loc_737A64: GtVar var_20C
  loc_737A68: FLdI2 var_1A2
  loc_737A6B: LitI2_Byte 6
  loc_737A6D: EqI2
  loc_737A6E: FLdI2 var_1A2
  loc_737A71: LitI2_Byte 7
  loc_737A73: EqI2
  loc_737A74: OrI4
  loc_737A75: CVarBoolI2 var_21C
  loc_737A79: AndVar var_22C
  loc_737A7D: CBoolVarNull
  loc_737A7F: FFreeVar var_1CC = "": var_1EC = ""
  loc_737A88: BranchF loc_737B76
  loc_737A8D: LitVarI2 var_1CC, 6
  loc_737A92: LitI4 &H29
  loc_737A97: FLdRfVar var_A8
  loc_737A9A: CVarRef
  loc_737A9F: FLdRfVar var_1EC
  loc_737AA2: ImpAdCallFPR4  = Mid(, , )
  loc_737AA7: FLdRfVar var_1EC
  loc_737AAA: CStrVarTmp
  loc_737AAB: FStStr var_1A0
  loc_737AAE: FFreeVar var_1CC = ""
  loc_737AB7: LitStr "Numero de Legajo: "
  loc_737ABA: ILdRf var_1A0
  loc_737ABD: ConcatStr
  loc_737ABE: FStStr var_1A0
  loc_737AC3: FLdI2 var_2FE
  loc_737AC6: BranchF loc_737B2A
  loc_737ACB: LitI4 3
  loc_737AD0: FLdRfVar var_1CC
  loc_737AD3: ImpAdCallFPR4  = Space()
  loc_737AD8: FLdRfVar var_1CC
  loc_737ADB: ILdRf var_1A0
  loc_737ADE: CVarStr var_1BC
  loc_737AE1: ConcatVar var_1EC
  loc_737AE5: PopAdLdVar
  loc_737AE6: ILdRfDarg arg_14
  loc_737AEC: LdPrVar
  loc_737AEE: LateMemCall
  loc_737AF4: FFreeVar var_1CC = ""
  loc_737AFD: LitVarStr var_1BC, vbNullString
  loc_737B02: PopAdLdVar
  loc_737B03: ILdRfDarg arg_14
  loc_737B09: LdPrVar
  loc_737B0B: LateMemCall
  loc_737B13: LitVarStr var_1BC, vbNullString
  loc_737B18: PopAdLdVar
  loc_737B19: ILdRfDarg arg_14
  loc_737B1F: LdPrVar
  loc_737B21: LateMemCall
  loc_737B27: Branch loc_737B74
  loc_737B2E: LitI4 3
  loc_737B33: FLdRfVar var_1CC
  loc_737B36: ImpAdCallFPR4  = Space()
  loc_737B3B: FLdRfVar var_1CC
  loc_737B3E: ILdRf var_1A0
  loc_737B41: CVarStr var_1BC
  loc_737B44: ConcatVar var_1EC
  loc_737B48: ILdRf var_190
  loc_737B4B: PrintObject
  loc_737B51: FFreeVar var_1CC = ""
  loc_737B5A: LitStr vbNullString
  loc_737B5D: ILdRf var_190
  loc_737B60: PrintObject
  loc_737B68: LitStr vbNullString
  loc_737B6B: ILdRf var_190
  loc_737B6E: PrintObject
  loc_737B7A: ILdRf var_A8
  loc_737B7D: FnLenStr
  loc_737B7E: LitI4 1
  loc_737B83: GtI4
  loc_737B84: BranchF loc_739C66
  loc_737B89: LitVarI2 var_1CC, 1
  loc_737B8E: LitI4 &H62
  loc_737B93: ILdRf var_A8
  loc_737B96: ImpAdCallI2 Mid$(, , )
  loc_737B9B: CVarStr var_20C
  loc_737B9E: HardType
  loc_737B9F: LitI4 &HA
  loc_737BA4: FLdRfVar var_1EC
  loc_737BA7: ImpAdCallFPR4  = Chr()
  loc_737BAC: FLdRfVar var_1EC
  loc_737BAF: EqVarBool
  loc_737BB1: FFreeVar var_1CC = "": var_20C = ""
  loc_737BBA: BranchF loc_737BC7
  loc_737BBF: LitI2_Byte &HFF
  loc_737BC1: FStI2 var_19A
  loc_737BC4: Branch loc_737BD0
  loc_737BCB: LitI2_Byte 0
  loc_737BCD: FStI2 var_19A
  loc_737BD4: LitVarI2 var_1CC, 7
  loc_737BD9: LitI4 1
  loc_737BDE: FLdRfVar var_A8
  loc_737BE1: CVarRef
  loc_737BE6: FLdRfVar var_1EC
  loc_737BE9: ImpAdCallFPR4  = Mid(, , )
  loc_737BEE: FLdRfVar var_1EC
  loc_737BF1: LitVarStr var_1FC, "0000001"
  loc_737BF6: HardType
  loc_737BF7: GtVarBool
  loc_737BF9: FFreeVar var_1CC = ""
  loc_737C00: BranchF loc_737C0A
  loc_737C05: LitI2_Byte &HFF
  loc_737C07: FStI2 var_19A
  loc_737C0E: FLdRfVar var_2F0
  loc_737C11: LitVar_Missing var_2EC
  loc_737C14: LitVar_Missing var_2CC
  loc_737C17: LitVar_Missing var_2AC
  loc_737C1A: LitVar_Missing var_28C
  loc_737C1D: LitVar_Missing var_26C
  loc_737C20: LitVar_Missing var_24C
  loc_737C23: LitVar_Missing var_22C
  loc_737C26: LitVar_Missing var_20C
  loc_737C29: LitVar_Missing var_1EC
  loc_737C2C: LitVar_Missing var_1CC
  loc_737C2F: LitStr "VOLUMEN EXPENDIDO POR SURTIDOR"
  loc_737C32: FStStrCopy var_1AC
  loc_737C35: FLdRfVar var_1AC
  loc_737C38: LitI4 &H80
  loc_737C3D: PopTmpLdAdStr var_1A8
  loc_737C40: LitI2_Byte 9
  loc_737C42: PopTmpLdAd2 var_1A4
  loc_737C45: ImpAdLdRf MemVar_74C7D0
  loc_737C48: NewIfNullPr clsMsg
  loc_737C4B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737C50: FLdZeroAd var_2F0
  loc_737C53: FMemStStr arg_8(1648)
  loc_737C59: FFree1Str var_1AC
  loc_737C5C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737C75: FLdRfVar var_2F0
  loc_737C78: LitVar_Missing var_2EC
  loc_737C7B: LitVar_Missing var_2CC
  loc_737C7E: LitVar_Missing var_2AC
  loc_737C81: LitVar_Missing var_28C
  loc_737C84: LitVar_Missing var_26C
  loc_737C87: LitVar_Missing var_24C
  loc_737C8A: LitVar_Missing var_22C
  loc_737C8D: LitVar_Missing var_20C
  loc_737C90: LitVar_Missing var_1EC
  loc_737C93: LitVar_Missing var_1CC
  loc_737C96: LitStr "PERIODO DESDE / HASTA:"
  loc_737C99: FStStrCopy var_1AC
  loc_737C9C: FLdRfVar var_1AC
  loc_737C9F: LitI4 &H81
  loc_737CA4: PopTmpLdAdStr var_1A8
  loc_737CA7: LitI2_Byte 9
  loc_737CA9: PopTmpLdAd2 var_1A4
  loc_737CAC: ImpAdLdRf MemVar_74C7D0
  loc_737CAF: NewIfNullPr clsMsg
  loc_737CB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737CB7: FLdZeroAd var_2F0
  loc_737CBA: FMemStStr arg_8(1652)
  loc_737CC0: FFree1Str var_1AC
  loc_737CC3: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737CDC: FLdRfVar var_2F0
  loc_737CDF: LitVar_Missing var_2EC
  loc_737CE2: LitVar_Missing var_2CC
  loc_737CE5: LitVar_Missing var_2AC
  loc_737CE8: LitVar_Missing var_28C
  loc_737CEB: LitVar_Missing var_26C
  loc_737CEE: LitVar_Missing var_24C
  loc_737CF1: LitVar_Missing var_22C
  loc_737CF4: LitVar_Missing var_20C
  loc_737CF7: LitVar_Missing var_1EC
  loc_737CFA: LitVar_Missing var_1CC
  loc_737CFD: LitStr "PICO"
  loc_737D00: FStStrCopy var_1AC
  loc_737D03: FLdRfVar var_1AC
  loc_737D06: LitI4 &H82
  loc_737D0B: PopTmpLdAdStr var_1A8
  loc_737D0E: LitI2_Byte 9
  loc_737D10: PopTmpLdAd2 var_1A4
  loc_737D13: ImpAdLdRf MemVar_74C7D0
  loc_737D16: NewIfNullPr clsMsg
  loc_737D19: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737D1E: FLdZeroAd var_2F0
  loc_737D21: FMemStStr arg_8(1656)
  loc_737D27: FFree1Str var_1AC
  loc_737D2A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737D43: FLdRfVar var_2F0
  loc_737D46: LitVar_Missing var_2EC
  loc_737D49: LitVar_Missing var_2CC
  loc_737D4C: LitVar_Missing var_2AC
  loc_737D4F: LitVar_Missing var_28C
  loc_737D52: LitVar_Missing var_26C
  loc_737D55: LitVar_Missing var_24C
  loc_737D58: LitVar_Missing var_22C
  loc_737D5B: LitVar_Missing var_20C
  loc_737D5E: LitVar_Missing var_1EC
  loc_737D61: LitVar_Missing var_1CC
  loc_737D64: LitStr "TOTALIZADOR"
  loc_737D67: FStStrCopy var_1AC
  loc_737D6A: FLdRfVar var_1AC
  loc_737D6D: LitI4 &H83
  loc_737D72: PopTmpLdAdStr var_1A8
  loc_737D75: LitI2_Byte 9
  loc_737D77: PopTmpLdAd2 var_1A4
  loc_737D7A: ImpAdLdRf MemVar_74C7D0
  loc_737D7D: NewIfNullPr clsMsg
  loc_737D80: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737D85: FLdZeroAd var_2F0
  loc_737D88: FMemStStr arg_8(1660)
  loc_737D8E: FFree1Str var_1AC
  loc_737D91: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737DAA: FLdRfVar var_2F0
  loc_737DAD: LitVar_Missing var_2EC
  loc_737DB0: LitVar_Missing var_2CC
  loc_737DB3: LitVar_Missing var_2AC
  loc_737DB6: LitVar_Missing var_28C
  loc_737DB9: LitVar_Missing var_26C
  loc_737DBC: LitVar_Missing var_24C
  loc_737DBF: LitVar_Missing var_22C
  loc_737DC2: LitVar_Missing var_20C
  loc_737DC5: LitVar_Missing var_1EC
  loc_737DC8: LitVar_Missing var_1CC
  loc_737DCB: LitStr "VOL.C/CTL"
  loc_737DCE: FStStrCopy var_1AC
  loc_737DD1: FLdRfVar var_1AC
  loc_737DD4: LitI4 &H84
  loc_737DD9: PopTmpLdAdStr var_1A8
  loc_737DDC: LitI2_Byte 9
  loc_737DDE: PopTmpLdAd2 var_1A4
  loc_737DE1: ImpAdLdRf MemVar_74C7D0
  loc_737DE4: NewIfNullPr clsMsg
  loc_737DE7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737DEC: FLdZeroAd var_2F0
  loc_737DEF: FMemStStr arg_8(1664)
  loc_737DF5: FFree1Str var_1AC
  loc_737DF8: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737E11: FLdRfVar var_2F0
  loc_737E14: LitVar_Missing var_2EC
  loc_737E17: LitVar_Missing var_2CC
  loc_737E1A: LitVar_Missing var_2AC
  loc_737E1D: LitVar_Missing var_28C
  loc_737E20: LitVar_Missing var_26C
  loc_737E23: LitVar_Missing var_24C
  loc_737E26: LitVar_Missing var_22C
  loc_737E29: LitVar_Missing var_20C
  loc_737E2C: LitVar_Missing var_1EC
  loc_737E2F: LitVar_Missing var_1CC
  loc_737E32: LitStr "PRECIO"
  loc_737E35: FStStrCopy var_1AC
  loc_737E38: FLdRfVar var_1AC
  loc_737E3B: LitI4 &H85
  loc_737E40: PopTmpLdAdStr var_1A8
  loc_737E43: LitI2_Byte 9
  loc_737E45: PopTmpLdAd2 var_1A4
  loc_737E48: ImpAdLdRf MemVar_74C7D0
  loc_737E4B: NewIfNullPr clsMsg
  loc_737E4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737E53: FLdZeroAd var_2F0
  loc_737E56: FMemStStr arg_8(1668)
  loc_737E5C: FFree1Str var_1AC
  loc_737E5F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737E78: FLdRfVar var_2F0
  loc_737E7B: LitVar_Missing var_2EC
  loc_737E7E: LitVar_Missing var_2CC
  loc_737E81: LitVar_Missing var_2AC
  loc_737E84: LitVar_Missing var_28C
  loc_737E87: LitVar_Missing var_26C
  loc_737E8A: LitVar_Missing var_24C
  loc_737E8D: LitVar_Missing var_22C
  loc_737E90: LitVar_Missing var_20C
  loc_737E93: LitVar_Missing var_1EC
  loc_737E96: LitVar_Missing var_1CC
  loc_737E99: LitStr "NIVEL"
  loc_737E9C: FStStrCopy var_1AC
  loc_737E9F: FLdRfVar var_1AC
  loc_737EA2: LitI4 &H86
  loc_737EA7: PopTmpLdAdStr var_1A8
  loc_737EAA: LitI2_Byte 9
  loc_737EAC: PopTmpLdAd2 var_1A4
  loc_737EAF: ImpAdLdRf MemVar_74C7D0
  loc_737EB2: NewIfNullPr clsMsg
  loc_737EB5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737EBA: FLdZeroAd var_2F0
  loc_737EBD: FMemStStr arg_8(1672)
  loc_737EC3: FFree1Str var_1AC
  loc_737EC6: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737EDF: FLdRfVar var_2F0
  loc_737EE2: LitVar_Missing var_2EC
  loc_737EE5: LitVar_Missing var_2CC
  loc_737EE8: LitVar_Missing var_2AC
  loc_737EEB: LitVar_Missing var_28C
  loc_737EEE: LitVar_Missing var_26C
  loc_737EF1: LitVar_Missing var_24C
  loc_737EF4: LitVar_Missing var_22C
  loc_737EF7: LitVar_Missing var_20C
  loc_737EFA: LitVar_Missing var_1EC
  loc_737EFD: LitVar_Missing var_1CC
  loc_737F00: LitStr "PROD"
  loc_737F03: FStStrCopy var_1AC
  loc_737F06: FLdRfVar var_1AC
  loc_737F09: LitI4 &H87
  loc_737F0E: PopTmpLdAdStr var_1A8
  loc_737F11: LitI2_Byte 9
  loc_737F13: PopTmpLdAd2 var_1A4
  loc_737F16: ImpAdLdRf MemVar_74C7D0
  loc_737F19: NewIfNullPr clsMsg
  loc_737F1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737F21: FLdZeroAd var_2F0
  loc_737F24: FMemStStr arg_8(1676)
  loc_737F2A: FFree1Str var_1AC
  loc_737F2D: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737F46: FLdRfVar var_2F0
  loc_737F49: LitVar_Missing var_2EC
  loc_737F4C: LitVar_Missing var_2CC
  loc_737F4F: LitVar_Missing var_2AC
  loc_737F52: LitVar_Missing var_28C
  loc_737F55: LitVar_Missing var_26C
  loc_737F58: LitVar_Missing var_24C
  loc_737F5B: LitVar_Missing var_22C
  loc_737F5E: LitVar_Missing var_20C
  loc_737F61: LitVar_Missing var_1EC
  loc_737F64: LitVar_Missing var_1CC
  loc_737F67: LitStr "INI"
  loc_737F6A: FStStrCopy var_1AC
  loc_737F6D: FLdRfVar var_1AC
  loc_737F70: LitI4 &H88
  loc_737F75: PopTmpLdAdStr var_1A8
  loc_737F78: LitI2_Byte 9
  loc_737F7A: PopTmpLdAd2 var_1A4
  loc_737F7D: ImpAdLdRf MemVar_74C7D0
  loc_737F80: NewIfNullPr clsMsg
  loc_737F83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737F88: FLdZeroAd var_2F0
  loc_737F8B: FMemStStr arg_8(1680)
  loc_737F91: FFree1Str var_1AC
  loc_737F94: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_737FAD: FLdRfVar var_2F0
  loc_737FB0: LitVar_Missing var_2EC
  loc_737FB3: LitVar_Missing var_2CC
  loc_737FB6: LitVar_Missing var_2AC
  loc_737FB9: LitVar_Missing var_28C
  loc_737FBC: LitVar_Missing var_26C
  loc_737FBF: LitVar_Missing var_24C
  loc_737FC2: LitVar_Missing var_22C
  loc_737FC5: LitVar_Missing var_20C
  loc_737FC8: LitVar_Missing var_1EC
  loc_737FCB: LitVar_Missing var_1CC
  loc_737FCE: LitStr "(LTS)"
  loc_737FD1: FStStrCopy var_1AC
  loc_737FD4: FLdRfVar var_1AC
  loc_737FD7: LitI4 &H89
  loc_737FDC: PopTmpLdAdStr var_1A8
  loc_737FDF: LitI2_Byte 9
  loc_737FE1: PopTmpLdAd2 var_1A4
  loc_737FE4: ImpAdLdRf MemVar_74C7D0
  loc_737FE7: NewIfNullPr clsMsg
  loc_737FEA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_737FEF: FLdZeroAd var_2F0
  loc_737FF2: FMemStStr arg_8(1684)
  loc_737FF8: FFree1Str var_1AC
  loc_737FFB: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_738014: FLdRfVar var_2F0
  loc_738017: LitVar_Missing var_2EC
  loc_73801A: LitVar_Missing var_2CC
  loc_73801D: LitVar_Missing var_2AC
  loc_738020: LitVar_Missing var_28C
  loc_738023: LitVar_Missing var_26C
  loc_738026: LitVar_Missing var_24C
  loc_738029: LitVar_Missing var_22C
  loc_73802C: LitVar_Missing var_20C
  loc_73802F: LitVar_Missing var_1EC
  loc_738032: LitVar_Missing var_1CC
  loc_738035: LitStr "FIN"
  loc_738038: FStStrCopy var_1AC
  loc_73803B: FLdRfVar var_1AC
  loc_73803E: LitI4 &H8A
  loc_738043: PopTmpLdAdStr var_1A8
  loc_738046: LitI2_Byte 9
  loc_738048: PopTmpLdAd2 var_1A4
  loc_73804B: ImpAdLdRf MemVar_74C7D0
  loc_73804E: NewIfNullPr clsMsg
  loc_738051: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_738056: FLdZeroAd var_2F0
  loc_738059: FMemStStr arg_8(1688)
  loc_73805F: FFree1Str var_1AC
  loc_738062: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73807B: FLdRfVar var_2F0
  loc_73807E: LitVar_Missing var_2EC
  loc_738081: LitVar_Missing var_2CC
  loc_738084: LitVar_Missing var_2AC
  loc_738087: LitVar_Missing var_28C
  loc_73808A: LitVar_Missing var_26C
  loc_73808D: LitVar_Missing var_24C
  loc_738090: LitVar_Missing var_22C
  loc_738093: LitVar_Missing var_20C
  loc_738096: LitVar_Missing var_1EC
  loc_738099: LitVar_Missing var_1CC
  loc_73809C: LitStr "CARTEL"
  loc_73809F: FStStrCopy var_1AC
  loc_7380A2: FLdRfVar var_1AC
  loc_7380A5: LitI4 &H8B
  loc_7380AA: PopTmpLdAdStr var_1A8
  loc_7380AD: LitI2_Byte 9
  loc_7380AF: PopTmpLdAd2 var_1A4
  loc_7380B2: ImpAdLdRf MemVar_74C7D0
  loc_7380B5: NewIfNullPr clsMsg
  loc_7380B8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7380BD: FLdZeroAd var_2F0
  loc_7380C0: FMemStStr arg_8(1692)
  loc_7380C6: FFree1Str var_1AC
  loc_7380C9: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_7380E2: FLdRfVar var_2F0
  loc_7380E5: LitVar_Missing var_2EC
  loc_7380E8: LitVar_Missing var_2CC
  loc_7380EB: LitVar_Missing var_2AC
  loc_7380EE: LitVar_Missing var_28C
  loc_7380F1: LitVar_Missing var_26C
  loc_7380F4: LitVar_Missing var_24C
  loc_7380F7: LitVar_Missing var_22C
  loc_7380FA: LitVar_Missing var_20C
  loc_7380FD: LitVar_Missing var_1EC
  loc_738100: LitVar_Missing var_1CC
  loc_738103: LitStr "PROM.S/CTL"
  loc_738106: FStStrCopy var_1AC
  loc_738109: FLdRfVar var_1AC
  loc_73810C: LitI4 &H8C
  loc_738111: PopTmpLdAdStr var_1A8
  loc_738114: LitI2_Byte 9
  loc_738116: PopTmpLdAd2 var_1A4
  loc_738119: ImpAdLdRf MemVar_74C7D0
  loc_73811C: NewIfNullPr clsMsg
  loc_73811F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_738124: FLdZeroAd var_2F0
  loc_738127: FMemStStr arg_8(1696)
  loc_73812D: FFree1Str var_1AC
  loc_738130: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_738149: FLdRfVar var_2F0
  loc_73814C: LitVar_Missing var_2EC
  loc_73814F: LitVar_Missing var_2CC
  loc_738152: LitVar_Missing var_2AC
  loc_738155: LitVar_Missing var_28C
  loc_738158: LitVar_Missing var_26C
  loc_73815B: LitVar_Missing var_24C
  loc_73815E: LitVar_Missing var_22C
  loc_738161: LitVar_Missing var_20C
  loc_738164: LitVar_Missing var_1EC
  loc_738167: LitVar_Missing var_1CC
  loc_73816A: LitStr "VOL.S/CTL"
  loc_73816D: FStStrCopy var_1AC
  loc_738170: FLdRfVar var_1AC
  loc_738173: LitI4 &H8D
  loc_738178: PopTmpLdAdStr var_1A8
  loc_73817B: LitI2_Byte 9
  loc_73817D: PopTmpLdAd2 var_1A4
  loc_738180: ImpAdLdRf MemVar_74C7D0
  loc_738183: NewIfNullPr clsMsg
  loc_738186: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73818B: FLdZeroAd var_2F0
  loc_73818E: FMemStStr arg_8(1700)
  loc_738194: FFree1Str var_1AC
  loc_738197: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_7381B0: ILdRf arg_14
  loc_7381B3: ImpAdCallI2 IsMissing()
  loc_7381B8: BranchF loc_73861A
  loc_7381BD: LitI2_Byte &H50
  loc_7381BF: FMemLdR4 arg_8(1648)
  loc_7381C4: FLdRfVar var_1CC
  loc_7381C7: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_7381CC: FLdRfVar var_1CC
  loc_7381CF: ILdRf var_190
  loc_7381D2: PrintObject
  loc_7381D8: FFree1Var var_1CC = ""
  loc_7381DD: ILdRf var_190
  loc_7381E0: PrintObject
  loc_7381E8: ILdRf var_190
  loc_7381EB: PrintObject
  loc_7381F3: LitI4 3
  loc_7381F8: FLdRfVar var_1CC
  loc_7381FB: ImpAdCallFPR4  = Space()
  loc_738200: LitI4 1
  loc_738205: FLdRfVar var_20C
  loc_738208: ImpAdCallFPR4  = Space()
  loc_73820D: LitVarI2 var_24C, 10
  loc_738212: LitI4 1
  loc_738217: ILdRf var_90
  loc_73821A: ImpAdCallI2 Mid$(, , )
  loc_73821F: FStStr var_1AC
  loc_738222: LitVarI2 var_2CC, 10
  loc_738227: LitI4 &H13
  loc_73822C: ILdRf var_90
  loc_73822F: ImpAdCallI2 Mid$(, , )
  loc_738234: FStStr var_2F0
  loc_738237: FLdRfVar var_1CC
  loc_73823A: FMemLdR4 arg_8(1652)
  loc_73823F: CVarStr var_1BC
  loc_738242: ConcatVar var_1EC
  loc_738246: FLdRfVar var_20C
  loc_738249: ConcatVar var_22C
  loc_73824D: FLdZeroAd var_1AC
  loc_738250: CVarStr var_26C
  loc_738253: ConcatVar var_28C
  loc_738257: LitVarStr var_1FC, " . "
  loc_73825C: ConcatVar var_2AC
  loc_738260: FLdZeroAd var_2F0
  loc_738263: CVarStr var_2EC
  loc_738266: ConcatVar var_310
  loc_73826A: ILdRf var_190
  loc_73826D: PrintObject
  loc_738273: FFreeStr var_1AC = ""
  loc_73827A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2CC = "": var_2AC = "": var_2EC = ""
  loc_738295: LitI4 &H1A
  loc_73829A: FLdRfVar var_1CC
  loc_73829D: ImpAdCallFPR4  = Space()
  loc_7382A2: LitVarI2 var_1EC, 8
  loc_7382A7: LitI4 &HB
  loc_7382AC: ILdRf var_90
  loc_7382AF: ImpAdCallI2 Mid$(, , )
  loc_7382B4: FStStr var_1AC
  loc_7382B7: LitI4 3
  loc_7382BC: FLdRfVar var_24C
  loc_7382BF: ImpAdCallFPR4  = Space()
  loc_7382C4: LitVarI2 var_2AC, 8
  loc_7382C9: LitI4 &H1D
  loc_7382CE: ILdRf var_90
  loc_7382D1: ImpAdCallI2 Mid$(, , )
  loc_7382D6: FStStr var_2F0
  loc_7382D9: FLdRfVar var_1CC
  loc_7382DC: FLdZeroAd var_1AC
  loc_7382DF: CVarStr var_20C
  loc_7382E2: ConcatVar var_22C
  loc_7382E6: FLdRfVar var_24C
  loc_7382E9: ConcatVar var_26C
  loc_7382ED: LitVarStr var_1DC, ". "
  loc_7382F2: ConcatVar var_28C
  loc_7382F6: FLdZeroAd var_2F0
  loc_7382F9: CVarStr var_2CC
  loc_7382FC: ConcatVar var_2EC
  loc_738300: ILdRf var_190
  loc_738303: PrintObject
  loc_738309: FFreeStr var_1AC = ""
  loc_738310: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = ""
  loc_738329: ILdRf var_190
  loc_73832C: PrintObject
  loc_738334: LitI4 2
  loc_738339: FLdRfVar var_1CC
  loc_73833C: ImpAdCallFPR4  = Space()
  loc_738341: LitI4 1
  loc_738346: FLdRfVar var_20C
  loc_738349: ImpAdCallFPR4  = Space()
  loc_73834E: LitI4 1
  loc_738353: FLdRfVar var_26C
  loc_738356: ImpAdCallFPR4  = Space()
  loc_73835B: LitI4 1
  loc_738360: FLdRfVar var_2CC
  loc_738363: ImpAdCallFPR4  = Space()
  loc_738368: LitI4 1
  loc_73836D: FLdRfVar var_324
  loc_738370: ImpAdCallFPR4  = Space()
  loc_738375: LitI4 3
  loc_73837A: FLdRfVar var_354
  loc_73837D: ImpAdCallFPR4  = Space()
  loc_738382: LitI4 2
  loc_738387: FLdRfVar var_384
  loc_73838A: ImpAdCallFPR4  = Space()
  loc_73838F: LitI4 3
  loc_738394: FLdRfVar var_3B4
  loc_738397: ImpAdCallFPR4  = Space()
  loc_73839C: LitI4 1
  loc_7383A1: FLdRfVar var_3E4
  loc_7383A4: ImpAdCallFPR4  = Space()
  loc_7383A9: LitVarStr var_404, vbNullString
  loc_7383AE: FStVarCopyObj var_414
  loc_7383B1: FLdRfVar var_414
  loc_7383B4: FMemLdRf unk_43B66D
  loc_7383B9: CVarRef
  loc_7383BE: FLdRfVar var_19A
  loc_7383C1: CVarRef
  loc_7383C6: FLdRfVar var_424
  loc_7383C9: ImpAdCallFPR4  = IIf(, , )
  loc_7383CE: FLdRfVar var_1CC
  loc_7383D1: FMemLdR4 arg_8(1656)
  loc_7383D6: CVarStr var_1BC
  loc_7383D9: ConcatVar var_1EC
  loc_7383DD: FLdRfVar var_20C
  loc_7383E0: ConcatVar var_22C
  loc_7383E4: FMemLdR4 arg_8(1432)
  loc_7383E9: CVarStr var_1DC
  loc_7383EC: ConcatVar var_24C
  loc_7383F0: FLdRfVar var_26C
  loc_7383F3: ConcatVar var_28C
  loc_7383F7: FMemLdR4 arg_8(1660)
  loc_7383FC: CVarStr var_1FC
  loc_7383FF: ConcatVar var_2AC
  loc_738403: FLdRfVar var_2CC
  loc_738406: ConcatVar var_2EC
  loc_73840A: FMemLdR4 arg_8(1660)
  loc_73840F: CVarStr var_21C
  loc_738412: ConcatVar var_310
  loc_738416: FLdRfVar var_324
  loc_738419: ConcatVar var_334
  loc_73841D: FMemLdR4 arg_8(1664)
  loc_738422: CVarStr var_23C
  loc_738425: ConcatVar var_344
  loc_738429: FLdRfVar var_354
  loc_73842C: ConcatVar var_364
  loc_738430: FMemLdR4 arg_8(1668)
  loc_738435: CVarStr var_25C
  loc_738438: ConcatVar var_374
  loc_73843C: FLdRfVar var_384
  loc_73843F: ConcatVar var_394
  loc_738443: FMemLdR4 arg_8(1700)
  loc_738448: CVarStr var_27C
  loc_73844B: ConcatVar var_3A4
  loc_73844F: FLdRfVar var_3B4
  loc_738452: ConcatVar var_3C4
  loc_738456: FMemLdR4 arg_8(1668)
  loc_73845B: CVarStr var_29C
  loc_73845E: ConcatVar var_3D4
  loc_738462: FLdRfVar var_3E4
  loc_738465: ConcatVar var_3F4
  loc_738469: FLdRfVar var_424
  loc_73846C: ConcatVar var_434
  loc_738470: ILdRf var_190
  loc_738473: PrintObject
  loc_738479: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_414 = "": var_3F4 = "": var_424 = ""
  loc_7384B6: LitI4 7
  loc_7384BB: FLdRfVar var_1CC
  loc_7384BE: ImpAdCallFPR4  = Space()
  loc_7384C3: LitI4 1
  loc_7384C8: FLdRfVar var_20C
  loc_7384CB: ImpAdCallFPR4  = Space()
  loc_7384D0: LitI4 3
  loc_7384D5: FLdRfVar var_26C
  loc_7384D8: ImpAdCallFPR4  = Space()
  loc_7384DD: LitI4 1
  loc_7384E2: FLdRfVar var_2CC
  loc_7384E5: ImpAdCallFPR4  = Space()
  loc_7384EA: LitI4 3
  loc_7384EF: FLdRfVar var_324
  loc_7384F2: ImpAdCallFPR4  = Space()
  loc_7384F7: LitI4 3
  loc_7384FC: FLdRfVar var_354
  loc_7384FF: ImpAdCallFPR4  = Space()
  loc_738504: LitI4 5
  loc_738509: FLdRfVar var_384
  loc_73850C: ImpAdCallFPR4  = Space()
  loc_738511: LitI4 4
  loc_738516: FLdRfVar var_3B4
  loc_738519: ImpAdCallFPR4  = Space()
  loc_73851E: LitI4 2
  loc_738523: FLdRfVar var_3E4
  loc_738526: ImpAdCallFPR4  = Space()
  loc_73852B: FLdRfVar var_1CC
  loc_73852E: FMemLdR4 arg_8(1676)
  loc_738533: CVarStr var_1BC
  loc_738536: ConcatVar var_1EC
  loc_73853A: FLdRfVar var_20C
  loc_73853D: ConcatVar var_22C
  loc_738541: FMemLdR4 arg_8(1680)
  loc_738546: CVarStr var_1DC
  loc_738549: ConcatVar var_24C
  loc_73854D: FLdRfVar var_26C
  loc_738550: ConcatVar var_28C
  loc_738554: FMemLdR4 arg_8(1684)
  loc_738559: CVarStr var_1FC
  loc_73855C: ConcatVar var_2AC
  loc_738560: FLdRfVar var_2CC
  loc_738563: ConcatVar var_2EC
  loc_738567: LitVarStr var_21C, "FIN"
  loc_73856C: ConcatVar var_310
  loc_738570: FLdRfVar var_324
  loc_738573: ConcatVar var_334
  loc_738577: FMemLdR4 arg_8(1684)
  loc_73857C: CVarStr var_23C
  loc_73857F: ConcatVar var_344
  loc_738583: FLdRfVar var_354
  loc_738586: ConcatVar var_364
  loc_73858A: FMemLdR4 arg_8(1684)
  loc_73858F: CVarStr var_25C
  loc_738592: ConcatVar var_374
  loc_738596: FLdRfVar var_384
  loc_738599: ConcatVar var_394
  loc_73859D: FMemLdR4 arg_8(1692)
  loc_7385A2: CVarStr var_27C
  loc_7385A5: ConcatVar var_3A4
  loc_7385A9: FLdRfVar var_3B4
  loc_7385AC: ConcatVar var_3C4
  loc_7385B0: LitVarStr var_29C, "(LTS)"
  loc_7385B5: ConcatVar var_3D4
  loc_7385B9: FLdRfVar var_3E4
  loc_7385BC: ConcatVar var_3F4
  loc_7385C0: FMemLdR4 arg_8(1696)
  loc_7385C5: CVarStr var_2BC
  loc_7385C8: ConcatVar var_414
  loc_7385CC: ILdRf var_190
  loc_7385CF: PrintObject
  loc_7385D5: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = ""
  loc_73860E: ILdRf var_190
  loc_738611: PrintObject
  loc_738617: Branch loc_738AA2
  loc_73861E: LitI2_Byte &H50
  loc_738620: FMemLdR4 arg_8(1648)
  loc_738625: FLdRfVar var_1CC
  loc_738628: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73862D: FLdVar var_1CC
  loc_738631: ILdRfDarg arg_14
  loc_738637: LdPrVar
  loc_738639: LateMemCall
  loc_73863F: FFree1Var var_1CC = ""
  loc_738644: LitVarStr var_1BC, vbNullString
  loc_738649: PopAdLdVar
  loc_73864A: ILdRfDarg arg_14
  loc_738650: LdPrVar
  loc_738652: LateMemCall
  loc_73865A: LitVarStr var_1BC, vbNullString
  loc_73865F: PopAdLdVar
  loc_738660: ILdRfDarg arg_14
  loc_738666: LdPrVar
  loc_738668: LateMemCall
  loc_738670: LitI4 3
  loc_738675: FLdRfVar var_1CC
  loc_738678: ImpAdCallFPR4  = Space()
  loc_73867D: FLdRfVar var_1CC
  loc_738680: FMemLdR4 arg_8(1652)
  loc_738685: CVarStr var_1BC
  loc_738688: ConcatVar var_1EC
  loc_73868C: LitI4 1
  loc_738691: FLdRfVar var_20C
  loc_738694: ImpAdCallFPR4  = Space()
  loc_738699: FLdRfVar var_20C
  loc_73869C: ConcatVar var_22C
  loc_7386A0: LitVarI2 var_24C, 10
  loc_7386A5: LitI4 1
  loc_7386AA: ILdRf var_90
  loc_7386AD: ImpAdCallI2 Mid$(, , )
  loc_7386B2: CVarStr var_26C
  loc_7386B5: ConcatVar var_28C
  loc_7386B9: LitVarStr var_1FC, " . "
  loc_7386BE: ConcatVar var_2AC
  loc_7386C2: LitVarI2 var_2CC, 10
  loc_7386C7: LitI4 &H13
  loc_7386CC: ILdRf var_90
  loc_7386CF: ImpAdCallI2 Mid$(, , )
  loc_7386D4: CVarStr var_2EC
  loc_7386D7: ConcatVar var_310
  loc_7386DB: PopAdLdVar
  loc_7386DC: ILdRfDarg arg_14
  loc_7386E2: LdPrVar
  loc_7386E4: LateMemCall
  loc_7386EA: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2CC = "": var_2AC = "": var_2EC = ""
  loc_738705: LitI4 &H1A
  loc_73870A: FLdRfVar var_1CC
  loc_73870D: ImpAdCallFPR4  = Space()
  loc_738712: FLdRfVar var_1CC
  loc_738715: LitVarI2 var_1EC, 8
  loc_73871A: LitI4 &HB
  loc_73871F: ILdRf var_90
  loc_738722: ImpAdCallI2 Mid$(, , )
  loc_738727: CVarStr var_20C
  loc_73872A: ConcatVar var_22C
  loc_73872E: LitI4 3
  loc_738733: FLdRfVar var_24C
  loc_738736: ImpAdCallFPR4  = Space()
  loc_73873B: FLdRfVar var_24C
  loc_73873E: ConcatVar var_26C
  loc_738742: LitVarStr var_1DC, ". "
  loc_738747: ConcatVar var_28C
  loc_73874B: LitVarI2 var_2AC, 8
  loc_738750: LitI4 &H1D
  loc_738755: ILdRf var_90
  loc_738758: ImpAdCallI2 Mid$(, , )
  loc_73875D: CVarStr var_2CC
  loc_738760: ConcatVar var_2EC
  loc_738764: PopAdLdVar
  loc_738765: ILdRfDarg arg_14
  loc_73876B: LdPrVar
  loc_73876D: LateMemCall
  loc_738773: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = ""
  loc_73878C: LitVarStr var_1BC, vbNullString
  loc_738791: PopAdLdVar
  loc_738792: ILdRfDarg arg_14
  loc_738798: LdPrVar
  loc_73879A: LateMemCall
  loc_7387A2: LitI4 2
  loc_7387A7: FLdRfVar var_1CC
  loc_7387AA: ImpAdCallFPR4  = Space()
  loc_7387AF: FLdRfVar var_1CC
  loc_7387B2: FMemLdR4 arg_8(1656)
  loc_7387B7: CVarStr var_1BC
  loc_7387BA: ConcatVar var_1EC
  loc_7387BE: LitI4 1
  loc_7387C3: FLdRfVar var_20C
  loc_7387C6: ImpAdCallFPR4  = Space()
  loc_7387CB: FLdRfVar var_20C
  loc_7387CE: ConcatVar var_22C
  loc_7387D2: FMemLdR4 arg_8(1432)
  loc_7387D7: CVarStr var_1DC
  loc_7387DA: ConcatVar var_24C
  loc_7387DE: LitI4 1
  loc_7387E3: FLdRfVar var_26C
  loc_7387E6: ImpAdCallFPR4  = Space()
  loc_7387EB: FLdRfVar var_26C
  loc_7387EE: ConcatVar var_28C
  loc_7387F2: FMemLdR4 arg_8(1660)
  loc_7387F7: CVarStr var_1FC
  loc_7387FA: ConcatVar var_2AC
  loc_7387FE: LitI4 1
  loc_738803: FLdRfVar var_2CC
  loc_738806: ImpAdCallFPR4  = Space()
  loc_73880B: FLdRfVar var_2CC
  loc_73880E: ConcatVar var_2EC
  loc_738812: FMemLdR4 arg_8(1660)
  loc_738817: CVarStr var_21C
  loc_73881A: ConcatVar var_310
  loc_73881E: LitI4 1
  loc_738823: FLdRfVar var_324
  loc_738826: ImpAdCallFPR4  = Space()
  loc_73882B: FLdRfVar var_324
  loc_73882E: ConcatVar var_334
  loc_738832: FMemLdR4 arg_8(1664)
  loc_738837: CVarStr var_23C
  loc_73883A: ConcatVar var_344
  loc_73883E: LitI4 3
  loc_738843: FLdRfVar var_354
  loc_738846: ImpAdCallFPR4  = Space()
  loc_73884B: FLdRfVar var_354
  loc_73884E: ConcatVar var_364
  loc_738852: FMemLdR4 arg_8(1668)
  loc_738857: CVarStr var_25C
  loc_73885A: ConcatVar var_374
  loc_73885E: LitI4 2
  loc_738863: FLdRfVar var_384
  loc_738866: ImpAdCallFPR4  = Space()
  loc_73886B: FLdRfVar var_384
  loc_73886E: ConcatVar var_394
  loc_738872: FMemLdR4 arg_8(1700)
  loc_738877: CVarStr var_27C
  loc_73887A: ConcatVar var_3A4
  loc_73887E: LitI4 3
  loc_738883: FLdRfVar var_3B4
  loc_738886: ImpAdCallFPR4  = Space()
  loc_73888B: FLdRfVar var_3B4
  loc_73888E: ConcatVar var_3C4
  loc_738892: FMemLdR4 arg_8(1668)
  loc_738897: CVarStr var_29C
  loc_73889A: ConcatVar var_3D4
  loc_73889E: LitI4 1
  loc_7388A3: FLdRfVar var_3E4
  loc_7388A6: ImpAdCallFPR4  = Space()
  loc_7388AB: FLdRfVar var_3E4
  loc_7388AE: ConcatVar var_3F4
  loc_7388B2: LitVarStr var_404, vbNullString
  loc_7388B7: FStVarCopyObj var_414
  loc_7388BA: FLdRfVar var_414
  loc_7388BD: FMemLdRf unk_43B66D
  loc_7388C2: CVarRef
  loc_7388C7: FLdRfVar var_19A
  loc_7388CA: CVarRef
  loc_7388CF: FLdRfVar var_424
  loc_7388D2: ImpAdCallFPR4  = IIf(, , )
  loc_7388D7: FLdRfVar var_424
  loc_7388DA: ConcatVar var_434
  loc_7388DE: PopAdLdVar
  loc_7388DF: ILdRfDarg arg_14
  loc_7388E5: LdPrVar
  loc_7388E7: LateMemCall
  loc_7388ED: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_414 = "": var_3F4 = "": var_424 = ""
  loc_73892A: LitI4 7
  loc_73892F: FLdRfVar var_1CC
  loc_738932: ImpAdCallFPR4  = Space()
  loc_738937: FLdRfVar var_1CC
  loc_73893A: FMemLdR4 arg_8(1676)
  loc_73893F: CVarStr var_1BC
  loc_738942: ConcatVar var_1EC
  loc_738946: LitI4 1
  loc_73894B: FLdRfVar var_20C
  loc_73894E: ImpAdCallFPR4  = Space()
  loc_738953: FLdRfVar var_20C
  loc_738956: ConcatVar var_22C
  loc_73895A: FMemLdR4 arg_8(1680)
  loc_73895F: CVarStr var_1DC
  loc_738962: ConcatVar var_24C
  loc_738966: LitI4 3
  loc_73896B: FLdRfVar var_26C
  loc_73896E: ImpAdCallFPR4  = Space()
  loc_738973: FLdRfVar var_26C
  loc_738976: ConcatVar var_28C
  loc_73897A: FMemLdR4 arg_8(1684)
  loc_73897F: CVarStr var_1FC
  loc_738982: ConcatVar var_2AC
  loc_738986: LitI4 1
  loc_73898B: FLdRfVar var_2CC
  loc_73898E: ImpAdCallFPR4  = Space()
  loc_738993: FLdRfVar var_2CC
  loc_738996: ConcatVar var_2EC
  loc_73899A: FMemLdR4 arg_8(1688)
  loc_73899F: CVarStr var_21C
  loc_7389A2: ConcatVar var_310
  loc_7389A6: LitI4 3
  loc_7389AB: FLdRfVar var_324
  loc_7389AE: ImpAdCallFPR4  = Space()
  loc_7389B3: FLdRfVar var_324
  loc_7389B6: ConcatVar var_334
  loc_7389BA: FMemLdR4 arg_8(1684)
  loc_7389BF: CVarStr var_23C
  loc_7389C2: ConcatVar var_344
  loc_7389C6: LitI4 3
  loc_7389CB: FLdRfVar var_354
  loc_7389CE: ImpAdCallFPR4  = Space()
  loc_7389D3: FLdRfVar var_354
  loc_7389D6: ConcatVar var_364
  loc_7389DA: FMemLdR4 arg_8(1684)
  loc_7389DF: CVarStr var_25C
  loc_7389E2: ConcatVar var_374
  loc_7389E6: LitI4 5
  loc_7389EB: FLdRfVar var_384
  loc_7389EE: ImpAdCallFPR4  = Space()
  loc_7389F3: FLdRfVar var_384
  loc_7389F6: ConcatVar var_394
  loc_7389FA: FMemLdR4 arg_8(1692)
  loc_7389FF: CVarStr var_27C
  loc_738A02: ConcatVar var_3A4
  loc_738A06: LitI4 4
  loc_738A0B: FLdRfVar var_3B4
  loc_738A0E: ImpAdCallFPR4  = Space()
  loc_738A13: FLdRfVar var_3B4
  loc_738A16: ConcatVar var_3C4
  loc_738A1A: FMemLdR4 arg_8(1684)
  loc_738A1F: CVarStr var_29C
  loc_738A22: ConcatVar var_3D4
  loc_738A26: LitI4 2
  loc_738A2B: FLdRfVar var_3E4
  loc_738A2E: ImpAdCallFPR4  = Space()
  loc_738A33: FLdRfVar var_3E4
  loc_738A36: ConcatVar var_3F4
  loc_738A3A: FMemLdR4 arg_8(1696)
  loc_738A3F: CVarStr var_2BC
  loc_738A42: ConcatVar var_414
  loc_738A46: PopAdLdVar
  loc_738A47: ILdRfDarg arg_14
  loc_738A4D: LdPrVar
  loc_738A4F: LateMemCall
  loc_738A55: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = ""
  loc_738A8E: LitVarStr var_1BC, vbNullString
  loc_738A93: PopAdLdVar
  loc_738A94: ILdRfDarg arg_14
  loc_738A9A: LdPrVar
  loc_738A9C: LateMemCall
  loc_738AA6: LitI4 1
  loc_738AAB: LitI4 &HA
  loc_738AB0: FLdRfVar var_C8
  loc_738AB3: Redim
  loc_738ABF: LitI4 1
  loc_738AC4: LitI4 &HA
  loc_738AC9: FLdRfVar var_D0
  loc_738ACC: Redim
  loc_738AD8: LitI2_Byte 1
  loc_738ADA: FLdRfVar var_92
  loc_738ADD: LitI2_Byte &HA
  loc_738ADF: ForI2 var_458
  loc_738AE7: LitI2_Byte 0
  loc_738AE9: CR8I2
  loc_738AEA: FLdI2 var_92
  loc_738AED: CI4UI1
  loc_738AEE: ILdRf var_D0
  loc_738AF1: Ary1StFPR4
  loc_738AF4: FLdRfVar var_92
  loc_738AF7: NextI2 var_458, loc_738AE5
  loc_738AFE: LitI2_Byte &H2A
  loc_738B00: FStI2 var_92
  loc_738B05: LitVarI2 var_1CC, 7
  loc_738B0A: LitI4 1
  loc_738B0F: FLdRfVar var_A8
  loc_738B12: CVarRef
  loc_738B17: FLdRfVar var_1EC
  loc_738B1A: ImpAdCallFPR4  = Mid(, , )
  loc_738B1F: FLdRfVar var_1EC
  loc_738B22: LitVarStr var_1FC, "0000001"
  loc_738B27: HardType
  loc_738B28: GtVarBool
  loc_738B2A: FFreeVar var_1CC = ""
  loc_738B31: BranchF loc_738B3B
  loc_738B36: LitI2_Byte &H32
  loc_738B38: FStI2 var_92
  loc_738B3F: FLdI2 var_92
  loc_738B42: CI4UI1
  loc_738B43: ILdRf var_A8
  loc_738B46: FnLenStr
  loc_738B47: LtI4
  loc_738B48: BranchF loc_73933B
  loc_738B4D: LitVarI2 var_1CC, 2
  loc_738B52: FLdI2 var_92
  loc_738B55: CI4UI1
  loc_738B56: ILdRf var_A8
  loc_738B59: ImpAdCallI2 Mid$(, , )
  loc_738B5E: FStStrNoPop var_1AC
  loc_738B61: ImpAdCallFPR4 push Val()
  loc_738B66: FStFPR8 var_460
  loc_738B69: LitI4 1
  loc_738B6E: LitI4 1
  loc_738B73: LitVarStr var_1FC, "#0"
  loc_738B78: FStVarCopyObj var_20C
  loc_738B7B: FLdRfVar var_20C
  loc_738B7E: FLdFPR8 var_460
  loc_738B81: CVarR8
  loc_738B85: FLdRfVar var_22C
  loc_738B88: ImpAdCallFPR4  = Format(, )
  loc_738B8D: LitI4 1
  loc_738B92: LitI4 1
  loc_738B97: LitVarStr var_21C, "@@"
  loc_738B9C: FStVarCopyObj var_24C
  loc_738B9F: FLdRfVar var_24C
  loc_738BA2: FLdRfVar var_22C
  loc_738BA5: FLdRfVar var_26C
  loc_738BA8: ImpAdCallFPR4  = Format(, )
  loc_738BAD: FLdRfVar var_26C
  loc_738BB0: CStrVarTmp
  loc_738BB1: FStStr var_D8
  loc_738BB4: FFree1Str var_1AC
  loc_738BB7: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738BC8: FLdI2 var_92
  loc_738BCB: LitI2_Byte 2
  loc_738BCD: AddI2
  loc_738BCE: FStI2 var_92
  loc_738BD3: LitVarI2 var_1CC, 1
  loc_738BD8: FLdI2 var_92
  loc_738BDB: CI4UI1
  loc_738BDC: ILdRf var_A8
  loc_738BDF: ImpAdCallI2 Mid$(, , )
  loc_738BE4: FStStr var_D4
  loc_738BE7: FFree1Var var_1CC = ""
  loc_738BEC: FLdI2 var_92
  loc_738BEF: LitI2_Byte 1
  loc_738BF1: AddI2
  loc_738BF2: FStI2 var_92
  loc_738BF7: LitVarI2 var_1CC, 8
  loc_738BFC: FLdI2 var_92
  loc_738BFF: CI4UI1
  loc_738C00: ILdRf var_A8
  loc_738C03: ImpAdCallI2 Mid$(, , )
  loc_738C08: FStStrNoPop var_1AC
  loc_738C0B: ImpAdCallFPR4 push Val()
  loc_738C10: FStFPR8 var_460
  loc_738C13: LitI4 1
  loc_738C18: LitI4 1
  loc_738C1D: LitVarStr var_1FC, "######0.00"
  loc_738C22: FStVarCopyObj var_20C
  loc_738C25: FLdRfVar var_20C
  loc_738C28: FLdFPR8 var_460
  loc_738C2B: LitI2_Byte &H64
  loc_738C2D: CR8I2
  loc_738C2E: DivR8
  loc_738C2F: CVarR8
  loc_738C33: FLdRfVar var_22C
  loc_738C36: ImpAdCallFPR4  = Format(, )
  loc_738C3B: LitI4 1
  loc_738C40: LitI4 1
  loc_738C45: LitVarStr var_21C, "@@@@@@@@@"
  loc_738C4A: FStVarCopyObj var_24C
  loc_738C4D: FLdRfVar var_24C
  loc_738C50: FLdRfVar var_22C
  loc_738C53: FLdRfVar var_26C
  loc_738C56: ImpAdCallFPR4  = Format(, )
  loc_738C5B: FLdRfVar var_26C
  loc_738C5E: CStrVarTmp
  loc_738C5F: FStStr var_DC
  loc_738C62: FFree1Str var_1AC
  loc_738C65: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738C76: FLdI2 var_92
  loc_738C79: LitI2_Byte 8
  loc_738C7B: AddI2
  loc_738C7C: FStI2 var_92
  loc_738C81: LitVarI2 var_1CC, 9
  loc_738C86: FLdI2 var_92
  loc_738C89: CI4UI1
  loc_738C8A: ILdRf var_A8
  loc_738C8D: ImpAdCallI2 Mid$(, , )
  loc_738C92: FStStrNoPop var_1AC
  loc_738C95: ImpAdCallFPR4 push Val()
  loc_738C9A: FStFPR8 var_460
  loc_738C9D: LitI4 1
  loc_738CA2: LitI4 1
  loc_738CA7: LitVarStr var_1FC, "#####0.000"
  loc_738CAC: FStVarCopyObj var_20C
  loc_738CAF: FLdRfVar var_20C
  loc_738CB2: FLdFPR8 var_460
  loc_738CB5: LitI2 1000
  loc_738CB8: CR8I2
  loc_738CB9: DivR8
  loc_738CBA: CVarR8
  loc_738CBE: FLdRfVar var_22C
  loc_738CC1: ImpAdCallFPR4  = Format(, )
  loc_738CC6: LitI4 1
  loc_738CCB: LitI4 1
  loc_738CD0: LitVarStr var_21C, "@@@@@@@@@@"
  loc_738CD5: FStVarCopyObj var_24C
  loc_738CD8: FLdRfVar var_24C
  loc_738CDB: FLdRfVar var_22C
  loc_738CDE: FLdRfVar var_26C
  loc_738CE1: ImpAdCallFPR4  = Format(, )
  loc_738CE6: FLdRfVar var_26C
  loc_738CE9: CStrVarTmp
  loc_738CEA: FStStr var_E0
  loc_738CED: FFree1Str var_1AC
  loc_738CF0: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738D01: FLdI2 var_92
  loc_738D04: LitI2_Byte 9
  loc_738D06: AddI2
  loc_738D07: FStI2 var_92
  loc_738D0C: LitVarI2 var_1CC, 8
  loc_738D11: FLdI2 var_92
  loc_738D14: CI4UI1
  loc_738D15: ILdRf var_A8
  loc_738D18: ImpAdCallI2 Mid$(, , )
  loc_738D1D: FStStrNoPop var_1AC
  loc_738D20: ImpAdCallFPR4 push Val()
  loc_738D25: FStFPR8 var_460
  loc_738D28: LitI4 1
  loc_738D2D: LitI4 1
  loc_738D32: LitVarStr var_1FC, "######0.00"
  loc_738D37: FStVarCopyObj var_20C
  loc_738D3A: FLdRfVar var_20C
  loc_738D3D: FLdFPR8 var_460
  loc_738D40: LitI2_Byte &H64
  loc_738D42: CR8I2
  loc_738D43: DivR8
  loc_738D44: CVarR8
  loc_738D48: FLdRfVar var_22C
  loc_738D4B: ImpAdCallFPR4  = Format(, )
  loc_738D50: LitI4 1
  loc_738D55: LitI4 1
  loc_738D5A: LitVarStr var_21C, "@@@@@@@@@"
  loc_738D5F: FStVarCopyObj var_24C
  loc_738D62: FLdRfVar var_24C
  loc_738D65: FLdRfVar var_22C
  loc_738D68: FLdRfVar var_26C
  loc_738D6B: ImpAdCallFPR4  = Format(, )
  loc_738D70: FLdRfVar var_26C
  loc_738D73: CStrVarTmp
  loc_738D74: FStStr var_E4
  loc_738D77: FFree1Str var_1AC
  loc_738D7A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738D8B: FLdI2 var_92
  loc_738D8E: LitI2_Byte 8
  loc_738D90: AddI2
  loc_738D91: FStI2 var_92
  loc_738D96: LitVarI2 var_1CC, 8
  loc_738D9B: FLdI2 var_92
  loc_738D9E: CI4UI1
  loc_738D9F: ILdRf var_A8
  loc_738DA2: ImpAdCallI2 Mid$(, , )
  loc_738DA7: FStStrNoPop var_1AC
  loc_738DAA: ImpAdCallFPR4 push Val()
  loc_738DAF: FStFPR8 var_460
  loc_738DB2: LitI4 1
  loc_738DB7: LitI4 1
  loc_738DBC: LitVarStr var_1FC, "######0.00"
  loc_738DC1: FStVarCopyObj var_20C
  loc_738DC4: FLdRfVar var_20C
  loc_738DC7: FLdFPR8 var_460
  loc_738DCA: LitI2_Byte &H64
  loc_738DCC: CR8I2
  loc_738DCD: DivR8
  loc_738DCE: CVarR8
  loc_738DD2: FLdRfVar var_22C
  loc_738DD5: ImpAdCallFPR4  = Format(, )
  loc_738DDA: LitI4 1
  loc_738DDF: LitI4 1
  loc_738DE4: LitVarStr var_21C, "@@@@@@@@@"
  loc_738DE9: FStVarCopyObj var_24C
  loc_738DEC: FLdRfVar var_24C
  loc_738DEF: FLdRfVar var_22C
  loc_738DF2: FLdRfVar var_26C
  loc_738DF5: ImpAdCallFPR4  = Format(, )
  loc_738DFA: FLdRfVar var_26C
  loc_738DFD: CStrVarTmp
  loc_738DFE: FStStr var_E8
  loc_738E01: FFree1Str var_1AC
  loc_738E04: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738E15: FLdI2 var_92
  loc_738E18: LitI2_Byte 8
  loc_738E1A: AddI2
  loc_738E1B: FStI2 var_92
  loc_738E20: LitVarI2 var_1CC, 8
  loc_738E25: FLdI2 var_92
  loc_738E28: CI4UI1
  loc_738E29: ILdRf var_A8
  loc_738E2C: ImpAdCallI2 Mid$(, , )
  loc_738E31: FStStrNoPop var_1AC
  loc_738E34: ImpAdCallFPR4 push Val()
  loc_738E39: FStFPR8 var_460
  loc_738E3C: LitI4 1
  loc_738E41: LitI4 1
  loc_738E46: LitVarStr var_1FC, "######0.00"
  loc_738E4B: FStVarCopyObj var_20C
  loc_738E4E: FLdRfVar var_20C
  loc_738E51: FLdFPR8 var_460
  loc_738E54: LitI2_Byte &H64
  loc_738E56: CR8I2
  loc_738E57: DivR8
  loc_738E58: CVarR8
  loc_738E5C: FLdRfVar var_22C
  loc_738E5F: ImpAdCallFPR4  = Format(, )
  loc_738E64: LitI4 1
  loc_738E69: LitI4 1
  loc_738E6E: LitVarStr var_21C, "@@@@@@@@@"
  loc_738E73: FStVarCopyObj var_24C
  loc_738E76: FLdRfVar var_24C
  loc_738E79: FLdRfVar var_22C
  loc_738E7C: FLdRfVar var_26C
  loc_738E7F: ImpAdCallFPR4  = Format(, )
  loc_738E84: FLdRfVar var_26C
  loc_738E87: CStrVarTmp
  loc_738E88: FStStr var_EC
  loc_738E8B: FFree1Str var_1AC
  loc_738E8E: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738E9F: FLdI2 var_92
  loc_738EA2: LitI2_Byte 8
  loc_738EA4: AddI2
  loc_738EA5: FStI2 var_92
  loc_738EAA: LitVarI2 var_1CC, 9
  loc_738EAF: FLdI2 var_92
  loc_738EB2: CI4UI1
  loc_738EB3: ILdRf var_A8
  loc_738EB6: ImpAdCallI2 Mid$(, , )
  loc_738EBB: FStStrNoPop var_1AC
  loc_738EBE: ImpAdCallFPR4 push Val()
  loc_738EC3: FStFPR8 var_460
  loc_738EC6: LitI4 1
  loc_738ECB: LitI4 1
  loc_738ED0: LitVarStr var_1FC, "#####0.000"
  loc_738ED5: FStVarCopyObj var_20C
  loc_738ED8: FLdRfVar var_20C
  loc_738EDB: FLdFPR8 var_460
  loc_738EDE: LitI2 1000
  loc_738EE1: CR8I2
  loc_738EE2: DivR8
  loc_738EE3: CVarR8
  loc_738EE7: FLdRfVar var_22C
  loc_738EEA: ImpAdCallFPR4  = Format(, )
  loc_738EEF: LitI4 1
  loc_738EF4: LitI4 1
  loc_738EF9: LitVarStr var_21C, "@@@@@@@@@@"
  loc_738EFE: FStVarCopyObj var_24C
  loc_738F01: FLdRfVar var_24C
  loc_738F04: FLdRfVar var_22C
  loc_738F07: FLdRfVar var_26C
  loc_738F0A: ImpAdCallFPR4  = Format(, )
  loc_738F0F: FLdRfVar var_26C
  loc_738F12: CStrVarTmp
  loc_738F13: FStStr var_168
  loc_738F16: FFree1Str var_1AC
  loc_738F19: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738F2A: FLdI2 var_92
  loc_738F2D: LitI2_Byte 9
  loc_738F2F: AddI2
  loc_738F30: FStI2 var_92
  loc_738F35: LitVarI2 var_1CC, 2
  loc_738F3A: FLdI2 var_92
  loc_738F3D: CI4UI1
  loc_738F3E: ILdRf var_A8
  loc_738F41: ImpAdCallI2 Mid$(, , )
  loc_738F46: FStStr var_1AC
  loc_738F49: LitI4 1
  loc_738F4E: LitI4 1
  loc_738F53: LitVarStr var_1DC, "#0"
  loc_738F58: FStVarCopyObj var_20C
  loc_738F5B: FLdRfVar var_20C
  loc_738F5E: FLdZeroAd var_1AC
  loc_738F61: CVarStr var_1EC
  loc_738F64: FLdRfVar var_22C
  loc_738F67: ImpAdCallFPR4  = Format(, )
  loc_738F6C: LitI4 1
  loc_738F71: LitI4 1
  loc_738F76: LitVarStr var_1FC, "@@"
  loc_738F7B: FStVarCopyObj var_24C
  loc_738F7E: FLdRfVar var_24C
  loc_738F81: FLdRfVar var_22C
  loc_738F84: FLdRfVar var_26C
  loc_738F87: ImpAdCallFPR4  = Format(, )
  loc_738F8C: FLdRfVar var_26C
  loc_738F8F: CStrVarTmp
  loc_738F90: FStStr var_124
  loc_738F93: FFree1Str var_1AC
  loc_738F96: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_738FA7: FLdI2 var_92
  loc_738FAA: LitI2_Byte 2
  loc_738FAC: AddI2
  loc_738FAD: FStI2 var_92
  loc_738FB2: FLdI2 var_19A
  loc_738FB5: BranchF loc_738FDF
  loc_738FBA: LitVarI2 var_1CC, 1
  loc_738FBF: FLdI2 var_92
  loc_738FC2: CI4UI1
  loc_738FC3: ILdRf var_A8
  loc_738FC6: ImpAdCallI2 Mid$(, , )
  loc_738FCB: FStStr var_314
  loc_738FCE: FFree1Var var_1CC = ""
  loc_738FD3: FLdI2 var_92
  loc_738FD6: LitI2_Byte 2
  loc_738FD8: AddI2
  loc_738FD9: FStI2 var_92
  loc_738FDC: Branch loc_738FEC
  loc_738FE3: FLdI2 var_92
  loc_738FE6: LitI2_Byte 1
  loc_738FE8: AddI2
  loc_738FE9: FStI2 var_92
  loc_738FF0: ILdRf arg_14
  loc_738FF3: ImpAdCallI2 IsMissing()
  loc_738FF8: BranchF loc_739156
  loc_738FFD: LitI4 2
  loc_739002: FLdRfVar var_1CC
  loc_739005: ImpAdCallFPR4  = Space()
  loc_73900A: LitI4 2
  loc_73900F: FLdRfVar var_22C
  loc_739012: ImpAdCallFPR4  = Space()
  loc_739017: LitI4 3
  loc_73901C: FLdRfVar var_28C
  loc_73901F: ImpAdCallFPR4  = Space()
  loc_739024: LitI4 3
  loc_739029: FLdRfVar var_2EC
  loc_73902C: ImpAdCallFPR4  = Space()
  loc_739031: LitI4 1
  loc_739036: FLdRfVar var_334
  loc_739039: ImpAdCallFPR4  = Space()
  loc_73903E: LitI4 1
  loc_739043: FLdRfVar var_364
  loc_739046: ImpAdCallFPR4  = Space()
  loc_73904B: LitI4 0
  loc_739050: FLdRfVar var_394
  loc_739053: ImpAdCallFPR4  = Space()
  loc_739058: LitI4 1
  loc_73905D: FLdRfVar var_3C4
  loc_739060: ImpAdCallFPR4  = Space()
  loc_739065: LitI4 3
  loc_73906A: FLdRfVar var_3F4
  loc_73906D: ImpAdCallFPR4  = Space()
  loc_739072: FLdRfVar var_1CC
  loc_739075: ILdRf var_D8
  loc_739078: CVarStr var_1BC
  loc_73907B: ConcatVar var_1EC
  loc_73907F: ILdRf var_D4
  loc_739082: CVarStr var_1DC
  loc_739085: ConcatVar var_20C
  loc_739089: FLdRfVar var_22C
  loc_73908C: ConcatVar var_24C
  loc_739090: ILdRf var_124
  loc_739093: CVarStr var_1FC
  loc_739096: ConcatVar var_26C
  loc_73909A: FLdRfVar var_28C
  loc_73909D: ConcatVar var_2AC
  loc_7390A1: ILdRf var_DC
  loc_7390A4: CVarStr var_21C
  loc_7390A7: ConcatVar var_2CC
  loc_7390AB: FLdRfVar var_2EC
  loc_7390AE: ConcatVar var_310
  loc_7390B2: ILdRf var_E4
  loc_7390B5: CVarStr var_23C
  loc_7390B8: ConcatVar var_324
  loc_7390BC: FLdRfVar var_334
  loc_7390BF: ConcatVar var_344
  loc_7390C3: ILdRf var_E8
  loc_7390C6: CVarStr var_25C
  loc_7390C9: ConcatVar var_354
  loc_7390CD: FLdRfVar var_364
  loc_7390D0: ConcatVar var_374
  loc_7390D4: ILdRf var_E0
  loc_7390D7: CVarStr var_27C
  loc_7390DA: ConcatVar var_384
  loc_7390DE: FLdRfVar var_394
  loc_7390E1: ConcatVar var_3A4
  loc_7390E5: ILdRf var_EC
  loc_7390E8: CVarStr var_29C
  loc_7390EB: ConcatVar var_3B4
  loc_7390EF: FLdRfVar var_3C4
  loc_7390F2: ConcatVar var_3D4
  loc_7390F6: ILdRf var_168
  loc_7390F9: CVarStr var_2BC
  loc_7390FC: ConcatVar var_3E4
  loc_739100: FLdRfVar var_3F4
  loc_739103: ConcatVar var_414
  loc_739107: ILdRf var_314
  loc_73910A: CVarStr var_2DC
  loc_73910D: ConcatVar var_424
  loc_739111: ILdRf var_190
  loc_739114: PrintObject
  loc_73911A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_414 = ""
  loc_739153: Branch loc_7392B6
  loc_73915A: LitI4 2
  loc_73915F: FLdRfVar var_1CC
  loc_739162: ImpAdCallFPR4  = Space()
  loc_739167: FLdRfVar var_1CC
  loc_73916A: ILdRf var_D8
  loc_73916D: CVarStr var_1BC
  loc_739170: ConcatVar var_1EC
  loc_739174: ILdRf var_D4
  loc_739177: CVarStr var_1DC
  loc_73917A: ConcatVar var_20C
  loc_73917E: LitI4 2
  loc_739183: FLdRfVar var_22C
  loc_739186: ImpAdCallFPR4  = Space()
  loc_73918B: FLdRfVar var_22C
  loc_73918E: ConcatVar var_24C
  loc_739192: ILdRf var_124
  loc_739195: CVarStr var_1FC
  loc_739198: ConcatVar var_26C
  loc_73919C: LitI4 3
  loc_7391A1: FLdRfVar var_28C
  loc_7391A4: ImpAdCallFPR4  = Space()
  loc_7391A9: FLdRfVar var_28C
  loc_7391AC: ConcatVar var_2AC
  loc_7391B0: ILdRf var_DC
  loc_7391B3: CVarStr var_21C
  loc_7391B6: ConcatVar var_2CC
  loc_7391BA: LitI4 3
  loc_7391BF: FLdRfVar var_2EC
  loc_7391C2: ImpAdCallFPR4  = Space()
  loc_7391C7: FLdRfVar var_2EC
  loc_7391CA: ConcatVar var_310
  loc_7391CE: ILdRf var_E4
  loc_7391D1: CVarStr var_23C
  loc_7391D4: ConcatVar var_324
  loc_7391D8: LitI4 1
  loc_7391DD: FLdRfVar var_334
  loc_7391E0: ImpAdCallFPR4  = Space()
  loc_7391E5: FLdRfVar var_334
  loc_7391E8: ConcatVar var_344
  loc_7391EC: ILdRf var_E8
  loc_7391EF: CVarStr var_25C
  loc_7391F2: ConcatVar var_354
  loc_7391F6: LitI4 1
  loc_7391FB: FLdRfVar var_364
  loc_7391FE: ImpAdCallFPR4  = Space()
  loc_739203: FLdRfVar var_364
  loc_739206: ConcatVar var_374
  loc_73920A: ILdRf var_E0
  loc_73920D: CVarStr var_27C
  loc_739210: ConcatVar var_384
  loc_739214: LitI4 0
  loc_739219: FLdRfVar var_394
  loc_73921C: ImpAdCallFPR4  = Space()
  loc_739221: FLdRfVar var_394
  loc_739224: ConcatVar var_3A4
  loc_739228: ILdRf var_EC
  loc_73922B: CVarStr var_29C
  loc_73922E: ConcatVar var_3B4
  loc_739232: LitI4 1
  loc_739237: FLdRfVar var_3C4
  loc_73923A: ImpAdCallFPR4  = Space()
  loc_73923F: FLdRfVar var_3C4
  loc_739242: ConcatVar var_3D4
  loc_739246: ILdRf var_168
  loc_739249: CVarStr var_2BC
  loc_73924C: ConcatVar var_3E4
  loc_739250: LitI4 3
  loc_739255: FLdRfVar var_3F4
  loc_739258: ImpAdCallFPR4  = Space()
  loc_73925D: FLdRfVar var_3F4
  loc_739260: ConcatVar var_414
  loc_739264: ILdRf var_314
  loc_739267: CVarStr var_2DC
  loc_73926A: ConcatVar var_424
  loc_73926E: PopAdLdVar
  loc_73926F: ILdRfDarg arg_14
  loc_739275: LdPrVar
  loc_739277: LateMemCall
  loc_73927D: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_414 = ""
  loc_7392BA: ILdRf var_E8
  loc_7392BD: ImpAdCallFPR4 push Val()
  loc_7392C2: FStFPR8 var_460
  loc_7392C5: ILdRf var_EC
  loc_7392C8: ImpAdCallFPR4 push Val()
  loc_7392CD: FStFPR8 var_468
  loc_7392D0: ILdRf var_124
  loc_7392D3: CI4Str
  loc_7392D4: ILdRf var_C8
  loc_7392D7: Ary1LdFPR4
  loc_7392D8: FLdFPR8 var_460
  loc_7392DB: AddR8
  loc_7392DC: FLdFPR8 var_468
  loc_7392DF: AddR8
  loc_7392E0: ILdRf var_124
  loc_7392E3: CI4Str
  loc_7392E4: ILdRf var_C8
  loc_7392E7: Ary1StFPR4
  loc_7392EA: ILdRf var_E8
  loc_7392ED: ImpAdCallFPR4 push Val()
  loc_7392F2: FStFPR8 var_460
  loc_7392F5: ILdRf var_E0
  loc_7392F8: ImpAdCallFPR4 push Val()
  loc_7392FD: FStFPR8 var_468
  loc_739300: ILdRf var_EC
  loc_739303: ImpAdCallFPR4 push Val()
  loc_739308: FStFPR8 var_470
  loc_73930B: ILdRf var_168
  loc_73930E: ImpAdCallFPR4 push Val()
  loc_739313: FStFPR8 var_478
  loc_739316: ILdRf var_124
  loc_739319: CI4Str
  loc_73931A: ILdRf var_D0
  loc_73931D: Ary1LdFPR4
  loc_73931E: FLdFPR8 var_460
  loc_739321: FLdFPR8 var_468
  loc_739324: MulR8
  loc_739325: AddR8
  loc_739326: FLdFPR8 var_470
  loc_739329: FLdFPR8 var_478
  loc_73932C: MulR8
  loc_73932D: AddR8
  loc_73932E: ILdRf var_124
  loc_739331: CI4Str
  loc_739332: ILdRf var_D0
  loc_739335: Ary1StFPR4
  loc_739338: Branch loc_738B3D
  loc_73933D: ILdRf arg_14
  loc_739340: ImpAdCallI2 IsMissing()
  loc_739345: BranchF loc_739361
  loc_73934A: ILdRf var_190
  loc_73934D: PrintObject
  loc_739355: ILdRf var_190
  loc_739358: PrintObject
  loc_73935E: Branch loc_73938F
  loc_739365: LitVarStr var_1BC, vbNullString
  loc_73936A: PopAdLdVar
  loc_73936B: ILdRfDarg arg_14
  loc_739371: LdPrVar
  loc_739373: LateMemCall
  loc_73937B: LitVarStr var_1BC, vbNullString
  loc_739380: PopAdLdVar
  loc_739381: ILdRfDarg arg_14
  loc_739387: LdPrVar
  loc_739389: LateMemCall
  loc_739393: ILdRf arg_14
  loc_739396: ImpAdCallI2 IsMissing()
  loc_73939B: BranchF loc_7395CE
  loc_7393A0: LitI2_Byte &H50
  loc_7393A2: FMemLdR4 arg_8(1704)
  loc_7393A7: FLdRfVar var_1CC
  loc_7393AA: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_7393AF: FLdRfVar var_1CC
  loc_7393B2: ILdRf var_190
  loc_7393B5: PrintObject
  loc_7393BB: FFree1Var var_1CC = ""
  loc_7393C0: ILdRf var_190
  loc_7393C3: PrintObject
  loc_7393CB: LitI4 3
  loc_7393D0: FLdRfVar var_1CC
  loc_7393D3: ImpAdCallFPR4  = Space()
  loc_7393D8: LitVarI2 var_20C, 10
  loc_7393DD: LitI4 1
  loc_7393E2: ILdRf var_90
  loc_7393E5: ImpAdCallI2 Mid$(, , )
  loc_7393EA: FStStr var_1AC
  loc_7393ED: LitVarI2 var_28C, 10
  loc_7393F2: LitI4 &H13
  loc_7393F7: ILdRf var_90
  loc_7393FA: ImpAdCallI2 Mid$(, , )
  loc_7393FF: FStStr var_2F0
  loc_739402: FLdRfVar var_1CC
  loc_739405: FMemLdR4 arg_8(1652)
  loc_73940A: CVarStr var_1BC
  loc_73940D: ConcatVar var_1EC
  loc_739411: FLdZeroAd var_1AC
  loc_739414: CVarStr var_22C
  loc_739417: ConcatVar var_24C
  loc_73941B: LitVarStr var_1FC, " . "
  loc_739420: ConcatVar var_26C
  loc_739424: FLdZeroAd var_2F0
  loc_739427: CVarStr var_2AC
  loc_73942A: ConcatVar var_2CC
  loc_73942E: ILdRf var_190
  loc_739431: PrintObject
  loc_739437: FFreeStr var_1AC = ""
  loc_73943E: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = ""
  loc_739455: LitI4 &H1A
  loc_73945A: FLdRfVar var_1CC
  loc_73945D: ImpAdCallFPR4  = Space()
  loc_739462: LitVarI2 var_1EC, 8
  loc_739467: LitI4 &HB
  loc_73946C: ILdRf var_90
  loc_73946F: ImpAdCallI2 Mid$(, , )
  loc_739474: FStStr var_1AC
  loc_739477: LitI4 3
  loc_73947C: FLdRfVar var_24C
  loc_73947F: ImpAdCallFPR4  = Space()
  loc_739484: LitVarI2 var_2AC, 10
  loc_739489: LitI4 &H1D
  loc_73948E: ILdRf var_90
  loc_739491: ImpAdCallI2 Mid$(, , )
  loc_739496: FStStr var_2F0
  loc_739499: FLdRfVar var_1CC
  loc_73949C: FLdZeroAd var_1AC
  loc_73949F: CVarStr var_20C
  loc_7394A2: ConcatVar var_22C
  loc_7394A6: FLdRfVar var_24C
  loc_7394A9: ConcatVar var_26C
  loc_7394AD: LitVarStr var_1DC, ". "
  loc_7394B2: ConcatVar var_28C
  loc_7394B6: FLdZeroAd var_2F0
  loc_7394B9: CVarStr var_2CC
  loc_7394BC: ConcatVar var_2EC
  loc_7394C0: ILdRf var_190
  loc_7394C3: PrintObject
  loc_7394C9: FFreeStr var_1AC = ""
  loc_7394D0: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = ""
  loc_7394E9: ILdRf var_190
  loc_7394EC: PrintObject
  loc_7394F4: LitI4 4
  loc_7394F9: FLdRfVar var_1CC
  loc_7394FC: ImpAdCallFPR4  = Space()
  loc_739501: FLdRfVar var_1CC
  loc_739504: FMemLdR4 arg_8(1436)
  loc_739509: CVarStr var_1BC
  loc_73950C: ConcatVar var_1EC
  loc_739510: ILdRf var_190
  loc_739513: PrintObject
  loc_739519: FFreeVar var_1CC = ""
  loc_739522: LitI4 4
  loc_739527: FLdRfVar var_1CC
  loc_73952A: ImpAdCallFPR4  = Space()
  loc_73952F: LitI4 4
  loc_739534: FLdRfVar var_20C
  loc_739537: ImpAdCallFPR4  = Space()
  loc_73953C: LitI4 &HE
  loc_739541: FLdRfVar var_26C
  loc_739544: ImpAdCallFPR4  = Space()
  loc_739549: LitI4 &HB
  loc_73954E: FLdRfVar var_2CC
  loc_739551: ImpAdCallFPR4  = Space()
  loc_739556: FLdRfVar var_1CC
  loc_739559: FMemLdR4 arg_8(1676)
  loc_73955E: CVarStr var_1BC
  loc_739561: ConcatVar var_1EC
  loc_739565: FLdRfVar var_20C
  loc_739568: ConcatVar var_22C
  loc_73956C: FMemLdR4 arg_8(1440)
  loc_739571: CVarStr var_1DC
  loc_739574: ConcatVar var_24C
  loc_739578: FLdRfVar var_26C
  loc_73957B: ConcatVar var_28C
  loc_73957F: FMemLdR4 arg_8(1708)
  loc_739584: CVarStr var_1FC
  loc_739587: ConcatVar var_2AC
  loc_73958B: FLdRfVar var_2CC
  loc_73958E: ConcatVar var_2EC
  loc_739592: FMemLdR4 arg_8(1712)
  loc_739597: CVarStr var_21C
  loc_73959A: ConcatVar var_310
  loc_73959E: ILdRf var_190
  loc_7395A1: PrintObject
  loc_7395A7: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_7395C2: ILdRf var_190
  loc_7395C5: PrintObject
  loc_7395CB: Branch loc_739816
  loc_7395D2: LitI2_Byte &H50
  loc_7395D4: FMemLdR4 arg_8(1704)
  loc_7395D9: FLdRfVar var_1CC
  loc_7395DC: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_7395E1: FLdVar var_1CC
  loc_7395E5: ILdRfDarg arg_14
  loc_7395EB: LdPrVar
  loc_7395ED: LateMemCall
  loc_7395F3: FFree1Var var_1CC = ""
  loc_7395F8: LitVarStr var_1BC, vbNullString
  loc_7395FD: PopAdLdVar
  loc_7395FE: ILdRfDarg arg_14
  loc_739604: LdPrVar
  loc_739606: LateMemCall
  loc_73960E: LitI4 3
  loc_739613: FLdRfVar var_1CC
  loc_739616: ImpAdCallFPR4  = Space()
  loc_73961B: FLdRfVar var_1CC
  loc_73961E: FMemLdR4 arg_8(1652)
  loc_739623: CVarStr var_1BC
  loc_739626: ConcatVar var_1EC
  loc_73962A: LitVarI2 var_20C, 10
  loc_73962F: LitI4 1
  loc_739634: ILdRf var_90
  loc_739637: ImpAdCallI2 Mid$(, , )
  loc_73963C: CVarStr var_22C
  loc_73963F: ConcatVar var_24C
  loc_739643: LitVarStr var_1FC, " . "
  loc_739648: ConcatVar var_26C
  loc_73964C: LitVarI2 var_28C, 10
  loc_739651: LitI4 &H13
  loc_739656: ILdRf var_90
  loc_739659: ImpAdCallI2 Mid$(, , )
  loc_73965E: CVarStr var_2AC
  loc_739661: ConcatVar var_2CC
  loc_739665: PopAdLdVar
  loc_739666: ILdRfDarg arg_14
  loc_73966C: LdPrVar
  loc_73966E: LateMemCall
  loc_739674: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = ""
  loc_73968B: LitI4 &H1A
  loc_739690: FLdRfVar var_1CC
  loc_739693: ImpAdCallFPR4  = Space()
  loc_739698: FLdRfVar var_1CC
  loc_73969B: LitVarI2 var_1EC, 8
  loc_7396A0: LitI4 &HB
  loc_7396A5: ILdRf var_90
  loc_7396A8: ImpAdCallI2 Mid$(, , )
  loc_7396AD: CVarStr var_20C
  loc_7396B0: ConcatVar var_22C
  loc_7396B4: LitI4 3
  loc_7396B9: FLdRfVar var_24C
  loc_7396BC: ImpAdCallFPR4  = Space()
  loc_7396C1: FLdRfVar var_24C
  loc_7396C4: ConcatVar var_26C
  loc_7396C8: LitVarStr var_1DC, ". "
  loc_7396CD: ConcatVar var_28C
  loc_7396D1: LitVarI2 var_2AC, 10
  loc_7396D6: LitI4 &H1D
  loc_7396DB: ILdRf var_90
  loc_7396DE: ImpAdCallI2 Mid$(, , )
  loc_7396E3: CVarStr var_2CC
  loc_7396E6: ConcatVar var_2EC
  loc_7396EA: PopAdLdVar
  loc_7396EB: ILdRfDarg arg_14
  loc_7396F1: LdPrVar
  loc_7396F3: LateMemCall
  loc_7396F9: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = ""
  loc_739712: LitVarStr var_1BC, vbNullString
  loc_739717: PopAdLdVar
  loc_739718: ILdRfDarg arg_14
  loc_73971E: LdPrVar
  loc_739720: LateMemCall
  loc_739728: LitI4 4
  loc_73972D: FLdRfVar var_1CC
  loc_739730: ImpAdCallFPR4  = Space()
  loc_739735: FLdRfVar var_1CC
  loc_739738: FMemLdR4 arg_8(1436)
  loc_73973D: CVarStr var_1BC
  loc_739740: ConcatVar var_1EC
  loc_739744: PopAdLdVar
  loc_739745: ILdRfDarg arg_14
  loc_73974B: LdPrVar
  loc_73974D: LateMemCall
  loc_739753: FFreeVar var_1CC = ""
  loc_73975C: LitI4 4
  loc_739761: FLdRfVar var_1CC
  loc_739764: ImpAdCallFPR4  = Space()
  loc_739769: FLdRfVar var_1CC
  loc_73976C: FMemLdR4 arg_8(1676)
  loc_739771: CVarStr var_1BC
  loc_739774: ConcatVar var_1EC
  loc_739778: LitI4 4
  loc_73977D: FLdRfVar var_20C
  loc_739780: ImpAdCallFPR4  = Space()
  loc_739785: FLdRfVar var_20C
  loc_739788: ConcatVar var_22C
  loc_73978C: FMemLdR4 arg_8(1440)
  loc_739791: CVarStr var_1DC
  loc_739794: ConcatVar var_24C
  loc_739798: LitI4 &HE
  loc_73979D: FLdRfVar var_26C
  loc_7397A0: ImpAdCallFPR4  = Space()
  loc_7397A5: FLdRfVar var_26C
  loc_7397A8: ConcatVar var_28C
  loc_7397AC: FMemLdR4 arg_8(1708)
  loc_7397B1: CVarStr var_1FC
  loc_7397B4: ConcatVar var_2AC
  loc_7397B8: LitI4 &HB
  loc_7397BD: FLdRfVar var_2CC
  loc_7397C0: ImpAdCallFPR4  = Space()
  loc_7397C5: FLdRfVar var_2CC
  loc_7397C8: ConcatVar var_2EC
  loc_7397CC: FMemLdR4 arg_8(1712)
  loc_7397D1: CVarStr var_21C
  loc_7397D4: ConcatVar var_310
  loc_7397D8: PopAdLdVar
  loc_7397D9: ILdRfDarg arg_14
  loc_7397DF: LdPrVar
  loc_7397E1: LateMemCall
  loc_7397E7: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_739802: LitVarStr var_1BC, vbNullString
  loc_739807: PopAdLdVar
  loc_739808: ILdRfDarg arg_14
  loc_73980E: LdPrVar
  loc_739810: LateMemCall
  loc_73981A: LitI2_Byte 1
  loc_73981C: FLdRfVar var_9C
  loc_73981F: FLdRfVar var_1A4
  loc_739822: ImpAdLdRf MemVar_74A220
  loc_739825: NewIfNullPr clsProducts
  loc_739828: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_73982D: FLdI2 var_1A4
  loc_739830: ForI2 var_47C
  loc_739838: ILdRf arg_14
  loc_73983B: ImpAdCallI2 IsMissing()
  loc_739840: BranchF loc_739A25
  loc_739845: LitI4 5
  loc_73984A: FLdRfVar var_1CC
  loc_73984D: ImpAdCallFPR4  = Space()
  loc_739852: LitI4 1
  loc_739857: LitI4 1
  loc_73985C: LitVarStr var_1DC, "#0"
  loc_739861: FStVarCopyObj var_1EC
  loc_739864: FLdRfVar var_1EC
  loc_739867: FLdRfVar var_9C
  loc_73986A: CVarRef
  loc_73986F: FLdRfVar var_20C
  loc_739872: ImpAdCallFPR4  = Format(, )
  loc_739877: LitI4 1
  loc_73987C: LitI4 1
  loc_739881: LitVarStr var_1FC, "@@"
  loc_739886: FStVarCopyObj var_22C
  loc_739889: FLdRfVar var_22C
  loc_73988C: FLdRfVar var_20C
  loc_73988F: FLdRfVar var_24C
  loc_739892: ImpAdCallFPR4  = Format(, )
  loc_739897: LitI4 5
  loc_73989C: FLdRfVar var_28C
  loc_73989F: ImpAdCallFPR4  = Space()
  loc_7398A4: FLdRfVar var_1AC
  loc_7398A7: FLdI2 var_9C
  loc_7398AA: ImpAdLdRf MemVar_74A220
  loc_7398AD: NewIfNullPr clsProducts
  loc_7398B5: LitI4 &H14
  loc_7398BA: FLdZeroAd var_1AC
  loc_7398BD: CVarStr var_2CC
  loc_7398C0: FLdRfVar var_2EC
  loc_7398C3: ImpAdCallFPR4  = Left(, )
  loc_7398C8: LitI2_Byte &HFF
  loc_7398CA: PopTmpLdAd2 var_482
  loc_7398CD: LitI2_Byte &H14
  loc_7398CF: PopTmpLdAd2 var_1A4
  loc_7398D2: LitStr " "
  loc_7398D5: FStStrCopy var_480
  loc_7398D8: FLdRfVar var_480
  loc_7398DB: FLdRfVar var_2EC
  loc_7398DE: CStrVarTmp
  loc_7398DF: PopTmpLdAdStr
  loc_7398E3: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_7398E8: FStStr var_490
  loc_7398EB: LitI4 2
  loc_7398F0: FLdRfVar var_334
  loc_7398F3: ImpAdCallFPR4  = Space()
  loc_7398F8: LitI4 1
  loc_7398FD: LitI4 1
  loc_739902: LitVarStr var_23C, "#####0.00"
  loc_739907: FStVarCopyObj var_354
  loc_73990A: FLdRfVar var_354
  loc_73990D: FLdI2 var_9C
  loc_739910: CI4UI1
  loc_739911: ILdRf var_C8
  loc_739914: AryLock
  loc_739917: Ary1LdRf
  loc_739918: CVarRef
  loc_73991D: FLdRfVar var_364
  loc_739920: ImpAdCallFPR4  = Format(, )
  loc_739925: AryUnlock
  loc_739928: LitI4 1
  loc_73992D: LitI4 1
  loc_739932: LitVarStr var_25C, "@@@@@@@@@"
  loc_739937: FStVarCopyObj var_374
  loc_73993A: FLdRfVar var_374
  loc_73993D: FLdRfVar var_364
  loc_739940: FLdRfVar var_384
  loc_739943: ImpAdCallFPR4  = Format(, )
  loc_739948: LitI4 8
  loc_73994D: FLdRfVar var_3A4
  loc_739950: ImpAdCallFPR4  = Space()
  loc_739955: LitI4 1
  loc_73995A: LitI4 1
  loc_73995F: FMemLdRf unk_43B66D
  loc_739964: CVarRef
  loc_739969: FLdI2 var_9C
  loc_73996C: CI4UI1
  loc_73996D: ILdRf var_D0
  loc_739970: AryLock
  loc_739973: Ary1LdRf
  loc_739974: CVarRef
  loc_739979: FLdRfVar var_3C4
  loc_73997C: ImpAdCallFPR4  = Format(, )
  loc_739981: AryUnlock
  loc_739984: LitI4 1
  loc_739989: LitI4 1
  loc_73998E: LitVarStr var_2BC, "@@@@@@@@@"
  loc_739993: FStVarCopyObj var_3D4
  loc_739996: FLdRfVar var_3D4
  loc_739999: FLdRfVar var_3C4
  loc_73999C: FLdRfVar var_3E4
  loc_73999F: ImpAdCallFPR4  = Format(, )
  loc_7399A4: FLdRfVar var_1CC
  loc_7399A7: FLdRfVar var_24C
  loc_7399AA: ConcatVar var_26C
  loc_7399AE: FLdRfVar var_28C
  loc_7399B1: ConcatVar var_2AC
  loc_7399B5: FLdZeroAd var_490
  loc_7399B8: CVarStr var_310
  loc_7399BB: ConcatVar var_324
  loc_7399BF: FLdRfVar var_334
  loc_7399C2: ConcatVar var_344
  loc_7399C6: FLdRfVar var_384
  loc_7399C9: ConcatVar var_394
  loc_7399CD: FLdRfVar var_3A4
  loc_7399D0: ConcatVar var_3B4
  loc_7399D4: FLdRfVar var_3E4
  loc_7399D7: ConcatVar var_3F4
  loc_7399DB: ILdRf var_190
  loc_7399DE: PrintObject
  loc_7399E4: FFreeStr var_2F0 = "": var_480 = ""
  loc_7399ED: FFreeVar var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_2AC = "": var_310 = "": var_324 = "": var_334 = "": var_354 = "": var_364 = "": var_374 = "": var_344 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3B4 = "": var_3E4 = ""
  loc_739A22: Branch loc_739C04
  loc_739A29: LitI4 1
  loc_739A2E: LitI4 1
  loc_739A33: LitVarStr var_1DC, "#0"
  loc_739A38: FStVarCopyObj var_1EC
  loc_739A3B: FLdRfVar var_1EC
  loc_739A3E: FLdRfVar var_9C
  loc_739A41: CVarRef
  loc_739A46: FLdRfVar var_20C
  loc_739A49: ImpAdCallFPR4  = Format(, )
  loc_739A4E: FLdRfVar var_1AC
  loc_739A51: FLdI2 var_9C
  loc_739A54: ImpAdLdRf MemVar_74A220
  loc_739A57: NewIfNullPr clsProducts
  loc_739A5F: LitI4 &H14
  loc_739A64: FLdZeroAd var_1AC
  loc_739A67: CVarStr var_2CC
  loc_739A6A: FLdRfVar var_2EC
  loc_739A6D: ImpAdCallFPR4  = Left(, )
  loc_739A72: LitI4 1
  loc_739A77: LitI4 1
  loc_739A7C: LitVarStr var_23C, "#####0.00"
  loc_739A81: FStVarCopyObj var_354
  loc_739A84: FLdRfVar var_354
  loc_739A87: FLdI2 var_9C
  loc_739A8A: CI4UI1
  loc_739A8B: ILdRf var_C8
  loc_739A8E: AryLock
  loc_739A91: Ary1LdRf
  loc_739A92: CVarRef
  loc_739A97: FLdRfVar var_364
  loc_739A9A: ImpAdCallFPR4  = Format(, )
  loc_739A9F: AryUnlock
  loc_739AA2: LitI4 1
  loc_739AA7: LitI4 1
  loc_739AAC: FMemLdRf unk_43B66D
  loc_739AB1: CVarRef
  loc_739AB6: FLdI2 var_9C
  loc_739AB9: CI4UI1
  loc_739ABA: ILdRf var_D0
  loc_739ABD: AryLock
  loc_739AC0: Ary1LdRf
  loc_739AC1: CVarRef
  loc_739AC6: FLdRfVar var_3C4
  loc_739AC9: ImpAdCallFPR4  = Format(, )
  loc_739ACE: AryUnlock
  loc_739AD1: LitI4 5
  loc_739AD6: FLdRfVar var_1CC
  loc_739AD9: ImpAdCallFPR4  = Space()
  loc_739ADE: FLdRfVar var_1CC
  loc_739AE1: LitI4 1
  loc_739AE6: LitI4 1
  loc_739AEB: LitVarStr var_1FC, "@@"
  loc_739AF0: FStVarCopyObj var_22C
  loc_739AF3: FLdRfVar var_22C
  loc_739AF6: FLdRfVar var_20C
  loc_739AF9: FLdRfVar var_24C
  loc_739AFC: ImpAdCallFPR4  = Format(, )
  loc_739B01: FLdRfVar var_24C
  loc_739B04: ConcatVar var_26C
  loc_739B08: LitI4 5
  loc_739B0D: FLdRfVar var_28C
  loc_739B10: ImpAdCallFPR4  = Space()
  loc_739B15: FLdRfVar var_28C
  loc_739B18: ConcatVar var_2AC
  loc_739B1C: LitI2_Byte &HFF
  loc_739B1E: PopTmpLdAd2 var_482
  loc_739B21: LitI2_Byte &H14
  loc_739B23: PopTmpLdAd2 var_1A4
  loc_739B26: LitStr " "
  loc_739B29: FStStrCopy var_480
  loc_739B2C: FLdRfVar var_480
  loc_739B2F: FLdRfVar var_2EC
  loc_739B32: CStrVarTmp
  loc_739B33: PopTmpLdAdStr
  loc_739B37: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_739B3C: CVarStr var_310
  loc_739B3F: ConcatVar var_324
  loc_739B43: LitI4 2
  loc_739B48: FLdRfVar var_334
  loc_739B4B: ImpAdCallFPR4  = Space()
  loc_739B50: FLdRfVar var_334
  loc_739B53: ConcatVar var_344
  loc_739B57: LitI4 1
  loc_739B5C: LitI4 1
  loc_739B61: LitVarStr var_25C, "@@@@@@@@@"
  loc_739B66: FStVarCopyObj var_374
  loc_739B69: FLdRfVar var_374
  loc_739B6C: FLdRfVar var_364
  loc_739B6F: FLdRfVar var_384
  loc_739B72: ImpAdCallFPR4  = Format(, )
  loc_739B77: FLdRfVar var_384
  loc_739B7A: ConcatVar var_394
  loc_739B7E: LitI4 8
  loc_739B83: FLdRfVar var_3A4
  loc_739B86: ImpAdCallFPR4  = Space()
  loc_739B8B: FLdRfVar var_3A4
  loc_739B8E: ConcatVar var_3B4
  loc_739B92: LitI4 1
  loc_739B97: LitI4 1
  loc_739B9C: LitVarStr var_2BC, "@@@@@@@@@"
  loc_739BA1: FStVarCopyObj var_3D4
  loc_739BA4: FLdRfVar var_3D4
  loc_739BA7: FLdRfVar var_3C4
  loc_739BAA: FLdRfVar var_3E4
  loc_739BAD: ImpAdCallFPR4  = Format(, )
  loc_739BB2: FLdRfVar var_3E4
  loc_739BB5: ConcatVar var_3F4
  loc_739BB9: PopAdLdVar
  loc_739BBA: ILdRfDarg arg_14
  loc_739BC0: LdPrVar
  loc_739BC2: LateMemCall
  loc_739BC8: FFreeStr var_2F0 = ""
  loc_739BCF: FFreeVar var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_2AC = "": var_310 = "": var_324 = "": var_334 = "": var_354 = "": var_364 = "": var_374 = "": var_344 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3B4 = "": var_3E4 = ""
  loc_739C08: FLdRfVar var_9C
  loc_739C0B: NextI2 var_47C, loc_739836
  loc_739C12: ILdRf arg_14
  loc_739C15: ImpAdCallI2 IsMissing()
  loc_739C1A: BranchF loc_739C36
  loc_739C1F: ILdRf var_190
  loc_739C22: PrintObject
  loc_739C2A: ILdRf var_190
  loc_739C2D: PrintObject
  loc_739C33: Branch loc_739C64
  loc_739C3A: LitVarStr var_1BC, vbNullString
  loc_739C3F: PopAdLdVar
  loc_739C40: ILdRfDarg arg_14
  loc_739C46: LdPrVar
  loc_739C48: LateMemCall
  loc_739C50: LitVarStr var_1BC, vbNullString
  loc_739C55: PopAdLdVar
  loc_739C56: ILdRfDarg arg_14
  loc_739C5C: LdPrVar
  loc_739C5E: LateMemCall
  loc_739C6A: FLdRfVar var_1CC
  loc_739C6D: FLdRfVar var_A8
  loc_739C70: FLdRfVar var_90
  loc_739C73: LitStr "2"
  loc_739C76: FStStrCopy var_1AC
  loc_739C79: FLdRfVar var_1AC
  loc_739C7C: FLdRfVar var_8C
  loc_739C7F: FLdRfVar var_2F4
  loc_739C82: ImpAdLdRf MemVar_74C760
  loc_739C85: NewIfNullPr Formx
  loc_739C88: from_stack_1v = Formx.global_4589716Get()
  loc_739C8D: FLdPr var_2F4
  loc_739C90:  = Formx.FontBold
  loc_739C95: FLdRfVar var_1CC
  loc_739C98: NotVar var_1EC
  loc_739C9C: CBoolVarNull
  loc_739C9E: FFree1Str var_1AC
  loc_739CA1: FFree1Ad var_2F4
  loc_739CA4: FFree1Var var_1CC = ""
  loc_739CA7: BranchF loc_739CC7
  loc_739CAC: FLdRfVar var_1CC
  loc_739CAF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_739CB4: FLdRfVar var_1CC
  loc_739CB7: CBoolVarNull
  loc_739CB9: FFree1Var var_1CC = ""
  loc_739CBC: BranchF loc_739CC2
  loc_739CC1: ExitProcI2
  loc_739CC4: Branch loc_739C68
  loc_739CC9: FLdRfVar var_A8
  loc_739CCC: CVarRef
  loc_739CD1: FLdRfVar var_1CC
  loc_739CD4: ImpAdCallFPR4  = Trim()
  loc_739CD9: FLdRfVar var_1CC
  loc_739CDC: CStrVarTmp
  loc_739CDD: FStStr var_A8
  loc_739CE0: FFree1Var var_1CC = ""
  loc_739CE5: FLdRfVar var_2F0
  loc_739CE8: LitVar_Missing var_2EC
  loc_739CEB: LitVar_Missing var_2CC
  loc_739CEE: LitVar_Missing var_2AC
  loc_739CF1: LitVar_Missing var_28C
  loc_739CF4: LitVar_Missing var_26C
  loc_739CF7: LitVar_Missing var_24C
  loc_739CFA: LitVar_Missing var_22C
  loc_739CFD: LitVar_Missing var_20C
  loc_739D00: LitVar_Missing var_1EC
  loc_739D03: LitVar_Missing var_1CC
  loc_739D06: LitStr "FECHA Y HORA"
  loc_739D09: FStStrCopy var_1AC
  loc_739D0C: FLdRfVar var_1AC
  loc_739D0F: LitI4 &H91
  loc_739D14: PopTmpLdAdStr var_1A8
  loc_739D17: LitI2_Byte 9
  loc_739D19: PopTmpLdAd2 var_1A4
  loc_739D1C: ImpAdLdRf MemVar_74C7D0
  loc_739D1F: NewIfNullPr clsMsg
  loc_739D22: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739D27: FLdZeroAd var_2F0
  loc_739D2A: FMemStStr arg_8(1716)
  loc_739D30: FFree1Str var_1AC
  loc_739D33: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739D4C: FLdRfVar var_2F0
  loc_739D4F: LitVar_Missing var_2EC
  loc_739D52: LitVar_Missing var_2CC
  loc_739D55: LitVar_Missing var_2AC
  loc_739D58: LitVar_Missing var_28C
  loc_739D5B: LitVar_Missing var_26C
  loc_739D5E: LitVar_Missing var_24C
  loc_739D61: LitVar_Missing var_22C
  loc_739D64: LitVar_Missing var_20C
  loc_739D67: LitVar_Missing var_1EC
  loc_739D6A: LitVar_Missing var_1CC
  loc_739D6D: LitStr "MEDICIONES FISICAS"
  loc_739D70: FStStrCopy var_1AC
  loc_739D73: FLdRfVar var_1AC
  loc_739D76: LitI4 &H92
  loc_739D7B: PopTmpLdAdStr var_1A8
  loc_739D7E: LitI2_Byte 9
  loc_739D80: PopTmpLdAd2 var_1A4
  loc_739D83: ImpAdLdRf MemVar_74C7D0
  loc_739D86: NewIfNullPr clsMsg
  loc_739D89: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739D8E: FLdZeroAd var_2F0
  loc_739D91: FMemStStr arg_8(1720)
  loc_739D97: FFree1Str var_1AC
  loc_739D9A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739DB3: FLdRfVar var_2F0
  loc_739DB6: LitVar_Missing var_2EC
  loc_739DB9: LitVar_Missing var_2CC
  loc_739DBC: LitVar_Missing var_2AC
  loc_739DBF: LitVar_Missing var_28C
  loc_739DC2: LitVar_Missing var_26C
  loc_739DC5: LitVar_Missing var_24C
  loc_739DC8: LitVar_Missing var_22C
  loc_739DCB: LitVar_Missing var_20C
  loc_739DCE: LitVar_Missing var_1EC
  loc_739DD1: LitVar_Missing var_1CC
  loc_739DD4: LitStr "MEDICION"
  loc_739DD7: FStStrCopy var_1AC
  loc_739DDA: FLdRfVar var_1AC
  loc_739DDD: LitI4 &H93
  loc_739DE2: PopTmpLdAdStr var_1A8
  loc_739DE5: LitI2_Byte 9
  loc_739DE7: PopTmpLdAd2 var_1A4
  loc_739DEA: ImpAdLdRf MemVar_74C7D0
  loc_739DED: NewIfNullPr clsMsg
  loc_739DF0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739DF5: FLdZeroAd var_2F0
  loc_739DF8: FMemStStr arg_8(1724)
  loc_739DFE: FFree1Str var_1AC
  loc_739E01: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739E1A: FLdRfVar var_2F0
  loc_739E1D: LitVar_Missing var_2EC
  loc_739E20: LitVar_Missing var_2CC
  loc_739E23: LitVar_Missing var_2AC
  loc_739E26: LitVar_Missing var_28C
  loc_739E29: LitVar_Missing var_26C
  loc_739E2C: LitVar_Missing var_24C
  loc_739E2F: LitVar_Missing var_22C
  loc_739E32: LitVar_Missing var_20C
  loc_739E35: LitVar_Missing var_1EC
  loc_739E38: LitVar_Missing var_1CC
  loc_739E3B: LitStr "FISICO"
  loc_739E3E: FStStrCopy var_1AC
  loc_739E41: FLdRfVar var_1AC
  loc_739E44: LitI4 &H94
  loc_739E49: PopTmpLdAdStr var_1A8
  loc_739E4C: LitI2_Byte 9
  loc_739E4E: PopTmpLdAd2 var_1A4
  loc_739E51: ImpAdLdRf MemVar_74C7D0
  loc_739E54: NewIfNullPr clsMsg
  loc_739E57: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739E5C: FLdZeroAd var_2F0
  loc_739E5F: FMemStStr arg_8(1728)
  loc_739E65: FFree1Str var_1AC
  loc_739E68: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739E81: FLdRfVar var_2F0
  loc_739E84: LitVar_Missing var_2EC
  loc_739E87: LitVar_Missing var_2CC
  loc_739E8A: LitVar_Missing var_2AC
  loc_739E8D: LitVar_Missing var_28C
  loc_739E90: LitVar_Missing var_26C
  loc_739E93: LitVar_Missing var_24C
  loc_739E96: LitVar_Missing var_22C
  loc_739E99: LitVar_Missing var_20C
  loc_739E9C: LitVar_Missing var_1EC
  loc_739E9F: LitVar_Missing var_1CC
  loc_739EA2: LitStr "DIAS SIN"
  loc_739EA5: FStStrCopy var_1AC
  loc_739EA8: FLdRfVar var_1AC
  loc_739EAB: LitI4 &HB2
  loc_739EB0: PopTmpLdAdStr var_1A8
  loc_739EB3: LitI2_Byte 9
  loc_739EB5: PopTmpLdAd2 var_1A4
  loc_739EB8: ImpAdLdRf MemVar_74C7D0
  loc_739EBB: NewIfNullPr clsMsg
  loc_739EBE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739EC3: FLdZeroAd var_2F0
  loc_739EC6: FMemStStr arg_8(1852)
  loc_739ECC: FFree1Str var_1AC
  loc_739ECF: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739EE8: FLdRfVar var_2F0
  loc_739EEB: LitVar_Missing var_2EC
  loc_739EEE: LitVar_Missing var_2CC
  loc_739EF1: LitVar_Missing var_2AC
  loc_739EF4: LitVar_Missing var_28C
  loc_739EF7: LitVar_Missing var_26C
  loc_739EFA: LitVar_Missing var_24C
  loc_739EFD: LitVar_Missing var_22C
  loc_739F00: LitVar_Missing var_20C
  loc_739F03: LitVar_Missing var_1EC
  loc_739F06: LitVar_Missing var_1CC
  loc_739F09: LitStr "CARGA"
  loc_739F0C: FStStrCopy var_1AC
  loc_739F0F: FLdRfVar var_1AC
  loc_739F12: LitI4 &HB3
  loc_739F17: PopTmpLdAdStr var_1A8
  loc_739F1A: LitI2_Byte 9
  loc_739F1C: PopTmpLdAd2 var_1A4
  loc_739F1F: ImpAdLdRf MemVar_74C7D0
  loc_739F22: NewIfNullPr clsMsg
  loc_739F25: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_739F2A: FLdZeroAd var_2F0
  loc_739F2D: FMemStStr arg_8(1856)
  loc_739F33: FFree1Str var_1AC
  loc_739F36: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_739F4F: ILdRf var_A8
  loc_739F52: FnLenStr
  loc_739F53: LitI4 1
  loc_739F58: GtI4
  loc_739F59: BranchF loc_73AA2E
  loc_739F5E: ILdRf arg_14
  loc_739F61: ImpAdCallI2 IsMissing()
  loc_739F66: BranchF loc_73A12F
  loc_739F6B: LitI2_Byte &H50
  loc_739F6D: FMemLdR4 arg_8(1720)
  loc_739F72: FLdRfVar var_1CC
  loc_739F75: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_739F7A: FLdRfVar var_1CC
  loc_739F7D: ILdRf var_190
  loc_739F80: PrintObject
  loc_739F86: FFree1Var var_1CC = ""
  loc_739F8B: ILdRf var_190
  loc_739F8E: PrintObject
  loc_739F96: ILdRf var_190
  loc_739F99: PrintObject
  loc_739FA1: LitI4 3
  loc_739FA6: FLdRfVar var_1CC
  loc_739FA9: ImpAdCallFPR4  = Space()
  loc_739FAE: LitI4 5
  loc_739FB3: FLdRfVar var_22C
  loc_739FB6: ImpAdCallFPR4  = Space()
  loc_739FBB: LitI4 2
  loc_739FC0: FLdRfVar var_28C
  loc_739FC3: ImpAdCallFPR4  = Space()
  loc_739FC8: LitI4 &H1C
  loc_739FCD: FLdRfVar var_2EC
  loc_739FD0: ImpAdCallFPR4  = Space()
  loc_739FD5: FMemLdR4 arg_8(1852)
  loc_739FDA: CVarStr var_1BC
  loc_739FDD: FLdRfVar var_1CC
  loc_739FE0: ConcatVar var_1EC
  loc_739FE4: FMemLdR4 arg_8(1716)
  loc_739FE9: CVarStr var_1DC
  loc_739FEC: ConcatVar var_20C
  loc_739FF0: FLdRfVar var_22C
  loc_739FF3: ConcatVar var_24C
  loc_739FF7: FMemLdR4 arg_8(1436)
  loc_739FFC: CVarStr var_1FC
  loc_739FFF: ConcatVar var_26C
  loc_73A003: FLdRfVar var_28C
  loc_73A006: ConcatVar var_2AC
  loc_73A00A: LitVarStr var_21C, "CODIGO"
  loc_73A00F: ConcatVar var_2CC
  loc_73A013: FLdRfVar var_2EC
  loc_73A016: ConcatVar var_310
  loc_73A01A: FMemLdR4 arg_8(1708)
  loc_73A01F: CVarStr var_23C
  loc_73A022: ConcatVar var_324
  loc_73A026: ILdRf var_190
  loc_73A029: PrintObject
  loc_73A02F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = ""
  loc_73A04C: LitI4 5
  loc_73A051: FLdRfVar var_1CC
  loc_73A054: ImpAdCallFPR4  = Space()
  loc_73A059: LitI4 9
  loc_73A05E: FLdRfVar var_24C
  loc_73A061: ImpAdCallFPR4  = Space()
  loc_73A066: LitI4 2
  loc_73A06B: FLdRfVar var_2AC
  loc_73A06E: ImpAdCallFPR4  = Space()
  loc_73A073: LitI4 3
  loc_73A078: FLdRfVar var_310
  loc_73A07B: ImpAdCallFPR4  = Space()
  loc_73A080: LitI4 &HC
  loc_73A085: FLdRfVar var_344
  loc_73A088: ImpAdCallFPR4  = Space()
  loc_73A08D: FMemLdR4 arg_8(1856)
  loc_73A092: LitStr " "
  loc_73A095: ConcatStr
  loc_73A096: CVarStr var_1EC
  loc_73A099: FLdRfVar var_1CC
  loc_73A09C: ConcatVar var_20C
  loc_73A0A0: FMemLdR4 arg_8(1724)
  loc_73A0A5: CVarStr var_1BC
  loc_73A0A8: ConcatVar var_22C
  loc_73A0AC: FLdRfVar var_24C
  loc_73A0AF: ConcatVar var_26C
  loc_73A0B3: FMemLdR4 arg_8(1308)
  loc_73A0B8: CVarStr var_1DC
  loc_73A0BB: ConcatVar var_28C
  loc_73A0BF: FLdRfVar var_2AC
  loc_73A0C2: ConcatVar var_2CC
  loc_73A0C6: LitVarStr var_1FC, "PRODUCTO"
  loc_73A0CB: ConcatVar var_2EC
  loc_73A0CF: FLdRfVar var_310
  loc_73A0D2: ConcatVar var_324
  loc_73A0D6: FMemLdR4 arg_8(1440)
  loc_73A0DB: CVarStr var_21C
  loc_73A0DE: ConcatVar var_334
  loc_73A0E2: FLdRfVar var_344
  loc_73A0E5: ConcatVar var_354
  loc_73A0E9: FMemLdR4 arg_8(1728)
  loc_73A0EE: CVarStr var_23C
  loc_73A0F1: ConcatVar var_364
  loc_73A0F5: ILdRf var_190
  loc_73A0F8: PrintObject
  loc_73A0FE: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = ""
  loc_73A123: ILdRf var_190
  loc_73A126: PrintObject
  loc_73A12C: Branch loc_73A32D
  loc_73A133: LitI2_Byte &H50
  loc_73A135: FMemLdR4 arg_8(1720)
  loc_73A13A: FLdRfVar var_1CC
  loc_73A13D: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73A142: FLdVar var_1CC
  loc_73A146: ILdRfDarg arg_14
  loc_73A14C: LdPrVar
  loc_73A14E: LateMemCall
  loc_73A154: FFree1Var var_1CC = ""
  loc_73A159: LitVarStr var_1BC, vbNullString
  loc_73A15E: PopAdLdVar
  loc_73A15F: ILdRfDarg arg_14
  loc_73A165: LdPrVar
  loc_73A167: LateMemCall
  loc_73A16F: LitVarStr var_1BC, vbNullString
  loc_73A174: PopAdLdVar
  loc_73A175: ILdRfDarg arg_14
  loc_73A17B: LdPrVar
  loc_73A17D: LateMemCall
  loc_73A185: FMemLdR4 arg_8(1852)
  loc_73A18A: CVarStr var_1BC
  loc_73A18D: LitI4 3
  loc_73A192: FLdRfVar var_1CC
  loc_73A195: ImpAdCallFPR4  = Space()
  loc_73A19A: FLdRfVar var_1CC
  loc_73A19D: ConcatVar var_1EC
  loc_73A1A1: FMemLdR4 arg_8(1716)
  loc_73A1A6: CVarStr var_1DC
  loc_73A1A9: ConcatVar var_20C
  loc_73A1AD: LitI4 5
  loc_73A1B2: FLdRfVar var_22C
  loc_73A1B5: ImpAdCallFPR4  = Space()
  loc_73A1BA: FLdRfVar var_22C
  loc_73A1BD: ConcatVar var_24C
  loc_73A1C1: FMemLdR4 arg_8(1436)
  loc_73A1C6: CVarStr var_1FC
  loc_73A1C9: ConcatVar var_26C
  loc_73A1CD: LitI4 2
  loc_73A1D2: FLdRfVar var_28C
  loc_73A1D5: ImpAdCallFPR4  = Space()
  loc_73A1DA: FLdRfVar var_28C
  loc_73A1DD: ConcatVar var_2AC
  loc_73A1E1: FMemLdR4 arg_8(1436)
  loc_73A1E6: CVarStr var_21C
  loc_73A1E9: ConcatVar var_2CC
  loc_73A1ED: LitI4 &H1C
  loc_73A1F2: FLdRfVar var_2EC
  loc_73A1F5: ImpAdCallFPR4  = Space()
  loc_73A1FA: FLdRfVar var_2EC
  loc_73A1FD: ConcatVar var_310
  loc_73A201: FMemLdR4 arg_8(1708)
  loc_73A206: CVarStr var_23C
  loc_73A209: ConcatVar var_324
  loc_73A20D: PopAdLdVar
  loc_73A20E: ILdRfDarg arg_14
  loc_73A214: LdPrVar
  loc_73A216: LateMemCall
  loc_73A21C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = ""
  loc_73A239: FMemLdR4 arg_8(1856)
  loc_73A23E: LitStr " "
  loc_73A241: ConcatStr
  loc_73A242: CVarStr var_1EC
  loc_73A245: LitI4 5
  loc_73A24A: FLdRfVar var_1CC
  loc_73A24D: ImpAdCallFPR4  = Space()
  loc_73A252: FLdRfVar var_1CC
  loc_73A255: ConcatVar var_20C
  loc_73A259: FMemLdR4 arg_8(1724)
  loc_73A25E: CVarStr var_1BC
  loc_73A261: ConcatVar var_22C
  loc_73A265: LitI4 9
  loc_73A26A: FLdRfVar var_24C
  loc_73A26D: ImpAdCallFPR4  = Space()
  loc_73A272: FLdRfVar var_24C
  loc_73A275: ConcatVar var_26C
  loc_73A279: FMemLdR4 arg_8(1308)
  loc_73A27E: CVarStr var_1DC
  loc_73A281: ConcatVar var_28C
  loc_73A285: LitI4 2
  loc_73A28A: FLdRfVar var_2AC
  loc_73A28D: ImpAdCallFPR4  = Space()
  loc_73A292: FLdRfVar var_2AC
  loc_73A295: ConcatVar var_2CC
  loc_73A299: FMemLdR4 arg_8(1676)
  loc_73A29E: CVarStr var_1FC
  loc_73A2A1: ConcatVar var_2EC
  loc_73A2A5: LitI4 7
  loc_73A2AA: FLdRfVar var_310
  loc_73A2AD: ImpAdCallFPR4  = Space()
  loc_73A2B2: FLdRfVar var_310
  loc_73A2B5: ConcatVar var_324
  loc_73A2B9: FMemLdR4 arg_8(1440)
  loc_73A2BE: CVarStr var_21C
  loc_73A2C1: ConcatVar var_334
  loc_73A2C5: LitI4 &HC
  loc_73A2CA: FLdRfVar var_344
  loc_73A2CD: ImpAdCallFPR4  = Space()
  loc_73A2D2: FLdRfVar var_344
  loc_73A2D5: ConcatVar var_354
  loc_73A2D9: FMemLdR4 arg_8(1728)
  loc_73A2DE: CVarStr var_23C
  loc_73A2E1: ConcatVar var_364
  loc_73A2E5: PopAdLdVar
  loc_73A2E6: ILdRfDarg arg_14
  loc_73A2EC: LdPrVar
  loc_73A2EE: LateMemCall
  loc_73A2F4: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = ""
  loc_73A319: LitVarStr var_1BC, vbNullString
  loc_73A31E: PopAdLdVar
  loc_73A31F: ILdRfDarg arg_14
  loc_73A325: LdPrVar
  loc_73A327: LateMemCall
  loc_73A331: LitI2_Byte &HE
  loc_73A333: FStI2 var_92
  loc_73A338: FLdI2 var_92
  loc_73A33B: CI4UI1
  loc_73A33C: ILdRf var_A8
  loc_73A33F: FnLenStr
  loc_73A340: LtI4
  loc_73A341: BranchF loc_73A9D8
  loc_73A346: LitVarI2 var_1CC, 2
  loc_73A34B: FLdI2 var_92
  loc_73A34E: LitI2_Byte 6
  loc_73A350: AddI2
  loc_73A351: CI4UI1
  loc_73A352: ILdRf var_A8
  loc_73A355: ImpAdCallI2 Mid$(, , )
  loc_73A35A: FStStrNoPop var_1AC
  loc_73A35D: LitStr "/"
  loc_73A360: ConcatStr
  loc_73A361: FStStrNoPop var_2F0
  loc_73A364: LitVarI2 var_1EC, 2
  loc_73A369: FLdI2 var_92
  loc_73A36C: LitI2_Byte 4
  loc_73A36E: AddI2
  loc_73A36F: CI4UI1
  loc_73A370: ILdRf var_A8
  loc_73A373: ImpAdCallI2 Mid$(, , )
  loc_73A378: FStStrNoPop var_480
  loc_73A37B: ConcatStr
  loc_73A37C: FStStrNoPop var_490
  loc_73A37F: LitStr "/"
  loc_73A382: ConcatStr
  loc_73A383: FStStrNoPop var_498
  loc_73A386: LitVarI2 var_20C, 4
  loc_73A38B: FLdI2 var_92
  loc_73A38E: CI4UI1
  loc_73A38F: ILdRf var_A8
  loc_73A392: ImpAdCallI2 Mid$(, , )
  loc_73A397: FStStrNoPop var_49C
  loc_73A39A: ConcatStr
  loc_73A39B: CVarStr var_22C
  loc_73A39E: FStVar var_FC
  loc_73A3A2: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73A3B1: FFreeVar var_1CC = "": var_1EC = ""
  loc_73A3BC: FLdI2 var_92
  loc_73A3BF: LitI2_Byte 8
  loc_73A3C1: AddI2
  loc_73A3C2: FStI2 var_92
  loc_73A3C7: LitVarI2 var_1CC, 2
  loc_73A3CC: FLdI2 var_92
  loc_73A3CF: CI4UI1
  loc_73A3D0: ILdRf var_A8
  loc_73A3D3: ImpAdCallI2 Mid$(, , )
  loc_73A3D8: FStStrNoPop var_1AC
  loc_73A3DB: LitStr ":"
  loc_73A3DE: ConcatStr
  loc_73A3DF: FStStrNoPop var_2F0
  loc_73A3E2: LitVarI2 var_1EC, 2
  loc_73A3E7: FLdI2 var_92
  loc_73A3EA: LitI2_Byte 2
  loc_73A3EC: AddI2
  loc_73A3ED: CI4UI1
  loc_73A3EE: ILdRf var_A8
  loc_73A3F1: ImpAdCallI2 Mid$(, , )
  loc_73A3F6: FStStrNoPop var_480
  loc_73A3F9: ConcatStr
  loc_73A3FA: FStStrNoPop var_490
  loc_73A3FD: LitStr ":"
  loc_73A400: ConcatStr
  loc_73A401: FStStrNoPop var_498
  loc_73A404: LitVarI2 var_20C, 2
  loc_73A409: FLdI2 var_92
  loc_73A40C: LitI2_Byte 4
  loc_73A40E: AddI2
  loc_73A40F: CI4UI1
  loc_73A410: ILdRf var_A8
  loc_73A413: ImpAdCallI2 Mid$(, , )
  loc_73A418: FStStrNoPop var_49C
  loc_73A41B: ConcatStr
  loc_73A41C: CVarStr var_22C
  loc_73A41F: FStVar var_10C
  loc_73A423: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73A432: FFreeVar var_1CC = "": var_1EC = ""
  loc_73A43D: FLdI2 var_92
  loc_73A440: LitI2_Byte 6
  loc_73A442: AddI2
  loc_73A443: FStI2 var_92
  loc_73A448: LitVarI2 var_1CC, 2
  loc_73A44D: FLdI2 var_92
  loc_73A450: CI4UI1
  loc_73A451: ILdRf var_A8
  loc_73A454: ImpAdCallI2 Mid$(, , )
  loc_73A459: FStStrNoPop var_1AC
  loc_73A45C: ImpAdCallFPR4 push Val()
  loc_73A461: FStFPR8 var_460
  loc_73A464: LitI4 1
  loc_73A469: LitI4 1
  loc_73A46E: LitVarStr var_1FC, "#0"
  loc_73A473: FStVarCopyObj var_20C
  loc_73A476: FLdRfVar var_20C
  loc_73A479: FLdFPR8 var_460
  loc_73A47C: CVarR8
  loc_73A480: FLdRfVar var_22C
  loc_73A483: ImpAdCallFPR4  = Format(, )
  loc_73A488: LitI4 1
  loc_73A48D: LitI4 1
  loc_73A492: LitVarStr var_21C, "@@"
  loc_73A497: FStVarCopyObj var_24C
  loc_73A49A: FLdRfVar var_24C
  loc_73A49D: FLdRfVar var_22C
  loc_73A4A0: FLdRfVar var_26C
  loc_73A4A3: ImpAdCallFPR4  = Format(, )
  loc_73A4A8: FLdRfVar var_26C
  loc_73A4AB: CStrVarTmp
  loc_73A4AC: FStStr var_16C
  loc_73A4AF: FFree1Str var_1AC
  loc_73A4B2: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73A4C3: FLdI2 var_92
  loc_73A4C6: LitI2_Byte 2
  loc_73A4C8: AddI2
  loc_73A4C9: FStI2 var_92
  loc_73A4CE: LitVarI2 var_1CC, 2
  loc_73A4D3: FLdI2 var_92
  loc_73A4D6: CI4UI1
  loc_73A4D7: ILdRf var_A8
  loc_73A4DA: ImpAdCallI2 Mid$(, , )
  loc_73A4DF: FStStrNoPop var_1AC
  loc_73A4E2: ImpAdCallFPR4 push Val()
  loc_73A4E7: FStFPR8 var_460
  loc_73A4EA: LitI4 1
  loc_73A4EF: LitI4 1
  loc_73A4F4: LitVarStr var_1FC, "#0"
  loc_73A4F9: FStVarCopyObj var_20C
  loc_73A4FC: FLdRfVar var_20C
  loc_73A4FF: FLdFPR8 var_460
  loc_73A502: CVarR8
  loc_73A506: FLdRfVar var_22C
  loc_73A509: ImpAdCallFPR4  = Format(, )
  loc_73A50E: LitI4 1
  loc_73A513: LitI4 1
  loc_73A518: LitVarStr var_21C, "@@"
  loc_73A51D: FStVarCopyObj var_24C
  loc_73A520: FLdRfVar var_24C
  loc_73A523: FLdRfVar var_22C
  loc_73A526: FLdRfVar var_26C
  loc_73A529: ImpAdCallFPR4  = Format(, )
  loc_73A52E: FLdRfVar var_26C
  loc_73A531: CStrVarTmp
  loc_73A532: FStStr var_124
  loc_73A535: FFree1Str var_1AC
  loc_73A538: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73A549: FLdI2 var_92
  loc_73A54C: LitI2_Byte 2
  loc_73A54E: AddI2
  loc_73A54F: FStI2 var_92
  loc_73A554: LitVarI2 var_1CC, 8
  loc_73A559: FLdI2 var_92
  loc_73A55C: CI4UI1
  loc_73A55D: ILdRf var_A8
  loc_73A560: ImpAdCallI2 Mid$(, , )
  loc_73A565: FStStrNoPop var_1AC
  loc_73A568: ImpAdCallFPR4 push Val()
  loc_73A56D: FStFPR8 var_460
  loc_73A570: LitI4 1
  loc_73A575: LitI4 1
  loc_73A57A: LitVarStr var_1FC, "######0.00"
  loc_73A57F: FStVarCopyObj var_20C
  loc_73A582: FLdRfVar var_20C
  loc_73A585: FLdFPR8 var_460
  loc_73A588: LitI2_Byte &H64
  loc_73A58A: CR8I2
  loc_73A58B: DivR8
  loc_73A58C: CVarR8
  loc_73A590: FLdRfVar var_22C
  loc_73A593: ImpAdCallFPR4  = Format(, )
  loc_73A598: LitI4 1
  loc_73A59D: LitI4 1
  loc_73A5A2: LitVarStr var_21C, "@@@@@@@@@@@"
  loc_73A5A7: FStVarCopyObj var_24C
  loc_73A5AA: FLdRfVar var_24C
  loc_73A5AD: FLdRfVar var_22C
  loc_73A5B0: FLdRfVar var_26C
  loc_73A5B3: ImpAdCallFPR4  = Format(, )
  loc_73A5B8: FLdRfVar var_26C
  loc_73A5BB: CStrVarTmp
  loc_73A5BC: FStStr var_170
  loc_73A5BF: FFree1Str var_1AC
  loc_73A5C2: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73A5D3: FLdI2 var_92
  loc_73A5D6: LitI2_Byte 8
  loc_73A5D8: AddI2
  loc_73A5D9: FStI2 var_92
  loc_73A5DE: FLdI2 var_92
  loc_73A5E1: LitI2_Byte 1
  loc_73A5E3: AddI2
  loc_73A5E4: FStI2 var_92
  loc_73A5E9: LitVarI2 var_1CC, 2
  loc_73A5EE: LitI4 &H1B
  loc_73A5F3: ILdRf var_90
  loc_73A5F6: ImpAdCallI2 Mid$(, , )
  loc_73A5FB: FStStr var_4B0
  loc_73A5FE: LitVarI2 var_1EC, 2
  loc_73A603: LitI4 &H18
  loc_73A608: ILdRf var_90
  loc_73A60B: ImpAdCallI2 Mid$(, , )
  loc_73A610: FStStr var_4B4
  loc_73A613: LitVarI2 var_20C, 4
  loc_73A618: LitI4 &H13
  loc_73A61D: ILdRf var_90
  loc_73A620: ImpAdCallI2 Mid$(, , )
  loc_73A625: FStStr var_4B8
  loc_73A628: LitVarI2 var_22C, 8
  loc_73A62D: LitI4 &H1D
  loc_73A632: ILdRf var_90
  loc_73A635: ImpAdCallI2 Mid$(, , )
  loc_73A63A: FStStrNoPop var_4AC
  loc_73A63D: FLdZeroAd var_4B0
  loc_73A640: FStStrNoPop var_1AC
  loc_73A643: LitStr "/"
  loc_73A646: ConcatStr
  loc_73A647: FStStrNoPop var_2F0
  loc_73A64A: FLdZeroAd var_4B4
  loc_73A64D: FStStrNoPop var_480
  loc_73A650: ConcatStr
  loc_73A651: FStStrNoPop var_490
  loc_73A654: LitStr "/"
  loc_73A657: ConcatStr
  loc_73A658: FStStrNoPop var_498
  loc_73A65B: FLdZeroAd var_4B8
  loc_73A65E: FStStrNoPop var_49C
  loc_73A661: ConcatStr
  loc_73A662: FStStrNoPop var_4A8
  loc_73A665: FLdRfVar var_10C
  loc_73A668: CStrVarVal var_4A4
  loc_73A66C: FLdRfVar var_FC
  loc_73A66F: CStrVarVal var_4A0
  loc_73A673: ImpAdCallI2 Unknown_621F94(, , , )
  loc_73A678: CStrUI1
  loc_73A67A: FStStr var_494
  loc_73A67D: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4A8 = "": var_4AC = "": var_4B0 = "": var_4B4 = ""
  loc_73A69A: FFreeVar var_1CC = "": var_1EC = "": var_20C = ""
  loc_73A6A7: ILdRf arg_14
  loc_73A6AA: ImpAdCallI2 IsMissing()
  loc_73A6AF: BranchF loc_73A847
  loc_73A6B4: LitI4 1
  loc_73A6B9: LitI4 1
  loc_73A6BE: LitVarStr var_1DC, "#0"
  loc_73A6C3: FStVarCopyObj var_1CC
  loc_73A6C6: FLdRfVar var_1CC
  loc_73A6C9: FLdRfVar var_494
  loc_73A6CC: CVarRef
  loc_73A6D1: ImpAdCallI2 Format$(, )
  loc_73A6D6: FStStr var_490
  loc_73A6D9: LitI4 1
  loc_73A6DE: LitI4 1
  loc_73A6E3: LitVarStr var_1FC, "@@@"
  loc_73A6E8: FStVarCopyObj var_20C
  loc_73A6EB: FLdRfVar var_20C
  loc_73A6EE: FLdZeroAd var_490
  loc_73A6F1: CVarStr var_1EC
  loc_73A6F4: ImpAdCallI2 Format$(, )
  loc_73A6F9: FStStr var_498
  loc_73A6FC: LitI4 3
  loc_73A701: FLdRfVar var_22C
  loc_73A704: ImpAdCallFPR4  = Space()
  loc_73A709: LitI4 2
  loc_73A70E: FLdRfVar var_2AC
  loc_73A711: ImpAdCallFPR4  = Space()
  loc_73A716: LitI4 5
  loc_73A71B: FLdRfVar var_310
  loc_73A71E: ImpAdCallFPR4  = Space()
  loc_73A723: LitI4 4
  loc_73A728: FLdRfVar var_344
  loc_73A72B: ImpAdCallFPR4  = Space()
  loc_73A730: LitI4 4
  loc_73A735: FLdRfVar var_374
  loc_73A738: ImpAdCallFPR4  = Space()
  loc_73A73D: FLdRfVar var_1AC
  loc_73A740: ILdRf var_124
  loc_73A743: CI2Str
  loc_73A745: ImpAdLdRf MemVar_74A220
  loc_73A748: NewIfNullPr clsProducts
  loc_73A750: LitI4 &H14
  loc_73A755: FLdZeroAd var_1AC
  loc_73A758: CVarStr var_394
  loc_73A75B: FLdRfVar var_3A4
  loc_73A75E: ImpAdCallFPR4  = Left(, )
  loc_73A763: LitI2_Byte &HFF
  loc_73A765: PopTmpLdAd2 var_482
  loc_73A768: LitI2_Byte &H14
  loc_73A76A: PopTmpLdAd2 var_1A4
  loc_73A76D: LitStr " "
  loc_73A770: FStStrCopy var_480
  loc_73A773: FLdRfVar var_480
  loc_73A776: FLdRfVar var_3A4
  loc_73A779: CStrVarTmp
  loc_73A77A: PopTmpLdAdStr
  loc_73A77E: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73A783: FStStr var_49C
  loc_73A786: LitI4 2
  loc_73A78B: FLdRfVar var_3D4
  loc_73A78E: ImpAdCallFPR4  = Space()
  loc_73A793: FLdZeroAd var_498
  loc_73A796: CVarStr var_24C
  loc_73A799: FLdRfVar var_22C
  loc_73A79C: ConcatVar var_26C
  loc_73A7A0: FLdRfVar var_FC
  loc_73A7A3: ConcatVar var_28C
  loc_73A7A7: FLdRfVar var_2AC
  loc_73A7AA: ConcatVar var_2CC
  loc_73A7AE: FLdRfVar var_10C
  loc_73A7B1: ConcatVar var_2EC
  loc_73A7B5: FLdRfVar var_310
  loc_73A7B8: ConcatVar var_324
  loc_73A7BC: ILdRf var_16C
  loc_73A7BF: CVarStr var_21C
  loc_73A7C2: ConcatVar var_334
  loc_73A7C6: FLdRfVar var_344
  loc_73A7C9: ConcatVar var_354
  loc_73A7CD: ILdRf var_124
  loc_73A7D0: CVarStr var_23C
  loc_73A7D3: ConcatVar var_364
  loc_73A7D7: FLdRfVar var_374
  loc_73A7DA: ConcatVar var_384
  loc_73A7DE: FLdZeroAd var_49C
  loc_73A7E1: CVarStr var_3B4
  loc_73A7E4: ConcatVar var_3C4
  loc_73A7E8: FLdRfVar var_3D4
  loc_73A7EB: ConcatVar var_3E4
  loc_73A7EF: ILdRf var_170
  loc_73A7F2: CVarStr var_25C
  loc_73A7F5: ConcatVar var_3F4
  loc_73A7F9: ILdRf var_190
  loc_73A7FC: PrintObject
  loc_73A802: FFreeStr var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73A80F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_394 = "": var_3A4 = "": var_384 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = ""
  loc_73A844: Branch loc_73A9D1
  loc_73A84B: LitI4 1
  loc_73A850: LitI4 1
  loc_73A855: LitVarStr var_1DC, "#0"
  loc_73A85A: FStVarCopyObj var_1CC
  loc_73A85D: FLdRfVar var_1CC
  loc_73A860: FLdRfVar var_494
  loc_73A863: CVarRef
  loc_73A868: ImpAdCallI2 Format$(, )
  loc_73A86D: FStStr var_490
  loc_73A870: FLdRfVar var_1AC
  loc_73A873: ILdRf var_124
  loc_73A876: CI2Str
  loc_73A878: ImpAdLdRf MemVar_74A220
  loc_73A87B: NewIfNullPr clsProducts
  loc_73A883: LitI4 &H14
  loc_73A888: FLdZeroAd var_1AC
  loc_73A88B: CVarStr var_394
  loc_73A88E: FLdRfVar var_3A4
  loc_73A891: ImpAdCallFPR4  = Left(, )
  loc_73A896: LitI4 1
  loc_73A89B: LitI4 1
  loc_73A8A0: LitVarStr var_1FC, "@@@"
  loc_73A8A5: FStVarCopyObj var_20C
  loc_73A8A8: FLdRfVar var_20C
  loc_73A8AB: FLdZeroAd var_490
  loc_73A8AE: CVarStr var_1EC
  loc_73A8B1: ImpAdCallI2 Format$(, )
  loc_73A8B6: CVarStr var_24C
  loc_73A8B9: LitI4 3
  loc_73A8BE: FLdRfVar var_22C
  loc_73A8C1: ImpAdCallFPR4  = Space()
  loc_73A8C6: FLdRfVar var_22C
  loc_73A8C9: ConcatVar var_26C
  loc_73A8CD: FLdRfVar var_FC
  loc_73A8D0: ConcatVar var_28C
  loc_73A8D4: LitI4 2
  loc_73A8D9: FLdRfVar var_2AC
  loc_73A8DC: ImpAdCallFPR4  = Space()
  loc_73A8E1: FLdRfVar var_2AC
  loc_73A8E4: ConcatVar var_2CC
  loc_73A8E8: FLdRfVar var_10C
  loc_73A8EB: ConcatVar var_2EC
  loc_73A8EF: LitI4 5
  loc_73A8F4: FLdRfVar var_310
  loc_73A8F7: ImpAdCallFPR4  = Space()
  loc_73A8FC: FLdRfVar var_310
  loc_73A8FF: ConcatVar var_324
  loc_73A903: ILdRf var_16C
  loc_73A906: CVarStr var_21C
  loc_73A909: ConcatVar var_334
  loc_73A90D: LitI4 4
  loc_73A912: FLdRfVar var_344
  loc_73A915: ImpAdCallFPR4  = Space()
  loc_73A91A: FLdRfVar var_344
  loc_73A91D: ConcatVar var_354
  loc_73A921: ILdRf var_124
  loc_73A924: CVarStr var_23C
  loc_73A927: ConcatVar var_364
  loc_73A92B: LitI4 4
  loc_73A930: FLdRfVar var_374
  loc_73A933: ImpAdCallFPR4  = Space()
  loc_73A938: FLdRfVar var_374
  loc_73A93B: ConcatVar var_384
  loc_73A93F: LitI2_Byte &HFF
  loc_73A941: PopTmpLdAd2 var_482
  loc_73A944: LitI2_Byte &H14
  loc_73A946: PopTmpLdAd2 var_1A4
  loc_73A949: LitStr " "
  loc_73A94C: FStStrCopy var_480
  loc_73A94F: FLdRfVar var_480
  loc_73A952: FLdRfVar var_3A4
  loc_73A955: CStrVarTmp
  loc_73A956: PopTmpLdAdStr
  loc_73A95A: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73A95F: CVarStr var_3B4
  loc_73A962: ConcatVar var_3C4
  loc_73A966: LitI4 2
  loc_73A96B: FLdRfVar var_3D4
  loc_73A96E: ImpAdCallFPR4  = Space()
  loc_73A973: FLdRfVar var_3D4
  loc_73A976: ConcatVar var_3E4
  loc_73A97A: ILdRf var_170
  loc_73A97D: CVarStr var_25C
  loc_73A980: ConcatVar var_3F4
  loc_73A984: PopAdLdVar
  loc_73A985: ILdRfDarg arg_14
  loc_73A98B: LdPrVar
  loc_73A98D: LateMemCall
  loc_73A993: FFreeStr var_2F0 = "": var_480 = ""
  loc_73A99C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_394 = "": var_3A4 = "": var_384 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = ""
  loc_73A9D5: Branch loc_73A336
  loc_73A9DA: ILdRf arg_14
  loc_73A9DD: ImpAdCallI2 IsMissing()
  loc_73A9E2: BranchF loc_73A9FE
  loc_73A9E7: ILdRf var_190
  loc_73A9EA: PrintObject
  loc_73A9F2: ILdRf var_190
  loc_73A9F5: PrintObject
  loc_73A9FB: Branch loc_73AA2C
  loc_73AA02: LitVarStr var_1BC, vbNullString
  loc_73AA07: PopAdLdVar
  loc_73AA08: ILdRfDarg arg_14
  loc_73AA0E: LdPrVar
  loc_73AA10: LateMemCall
  loc_73AA18: LitVarStr var_1BC, vbNullString
  loc_73AA1D: PopAdLdVar
  loc_73AA1E: ILdRfDarg arg_14
  loc_73AA24: LdPrVar
  loc_73AA26: LateMemCall
  loc_73AA32: FLdRfVar var_2F0
  loc_73AA35: LitVar_Missing var_2EC
  loc_73AA38: LitVar_Missing var_2CC
  loc_73AA3B: LitVar_Missing var_2AC
  loc_73AA3E: LitVar_Missing var_28C
  loc_73AA41: LitVar_Missing var_26C
  loc_73AA44: LitVar_Missing var_24C
  loc_73AA47: LitVar_Missing var_22C
  loc_73AA4A: LitVar_Missing var_20C
  loc_73AA4D: LitVar_Missing var_1EC
  loc_73AA50: LitVar_Missing var_1CC
  loc_73AA53: LitStr "OPERACIONES DIFERENCIALES"
  loc_73AA56: FStStrCopy var_1AC
  loc_73AA59: FLdRfVar var_1AC
  loc_73AA5C: LitI4 &H99
  loc_73AA61: PopTmpLdAdStr var_1A8
  loc_73AA64: LitI2_Byte 9
  loc_73AA66: PopTmpLdAd2 var_1A4
  loc_73AA69: ImpAdLdRf MemVar_74C7D0
  loc_73AA6C: NewIfNullPr clsMsg
  loc_73AA6F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73AA74: FLdZeroAd var_2F0
  loc_73AA77: FMemStStr arg_8(1748)
  loc_73AA7D: FFree1Str var_1AC
  loc_73AA80: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73AA99: FLdRfVar var_1CC
  loc_73AA9C: FLdRfVar var_A8
  loc_73AA9F: FLdRfVar var_90
  loc_73AAA2: LitStr "3"
  loc_73AAA5: FStStrCopy var_1AC
  loc_73AAA8: FLdRfVar var_1AC
  loc_73AAAB: FLdRfVar var_8C
  loc_73AAAE: FLdRfVar var_2F4
  loc_73AAB1: ImpAdLdRf MemVar_74C760
  loc_73AAB4: NewIfNullPr Formx
  loc_73AAB7: from_stack_1v = Formx.global_4589716Get()
  loc_73AABC: FLdPr var_2F4
  loc_73AABF:  = Formx.FontBold
  loc_73AAC4: FLdRfVar var_1CC
  loc_73AAC7: NotVar var_1EC
  loc_73AACB: CBoolVarNull
  loc_73AACD: FFree1Str var_1AC
  loc_73AAD0: FFree1Ad var_2F4
  loc_73AAD3: FFree1Var var_1CC = ""
  loc_73AAD6: BranchF loc_73AAF6
  loc_73AADB: FLdRfVar var_1CC
  loc_73AADE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_73AAE3: FLdRfVar var_1CC
  loc_73AAE6: CBoolVarNull
  loc_73AAE8: FFree1Var var_1CC = ""
  loc_73AAEB: BranchF loc_73AAF1
  loc_73AAF0: ExitProcI2
  loc_73AAF3: Branch loc_73AA97
  loc_73AAF8: FLdRfVar var_A8
  loc_73AAFB: CVarRef
  loc_73AB00: FLdRfVar var_1CC
  loc_73AB03: ImpAdCallFPR4  = Trim()
  loc_73AB08: FLdRfVar var_1CC
  loc_73AB0B: CStrVarTmp
  loc_73AB0C: FStStr var_A8
  loc_73AB0F: FFree1Var var_1CC = ""
  loc_73AB14: ILdRf var_A8
  loc_73AB17: FnLenStr
  loc_73AB18: LitI4 1
  loc_73AB1D: GtI4
  loc_73AB1E: BranchF loc_73C808
  loc_73AB23: FLdRfVar var_184
  loc_73AB26: FLdRfVar var_178
  loc_73AB29: FLdRfVar var_B0
  loc_73AB2C: ImpAdCallFPR4 Unknown_62B608(, , )
  loc_73AB33: ILdRf var_B0
  loc_73AB36: FLdRfVar var_180
  loc_73AB39: FLdRfVar var_B4
  loc_73AB3C: ImpAdCallI2 Unknown_64D7C0(, , )
  loc_73AB41: FStStr var_1AC
  loc_73AB44: FFree1Str var_1AC
  loc_73AB49: ILdRf arg_14
  loc_73AB4C: ImpAdCallI2 IsMissing()
  loc_73AB51: BranchF loc_73AB85
  loc_73AB56: LitI2_Byte &H50
  loc_73AB58: FMemLdR4 arg_8(1748)
  loc_73AB5D: FLdRfVar var_1CC
  loc_73AB60: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73AB65: FLdRfVar var_1CC
  loc_73AB68: ILdRf var_190
  loc_73AB6B: PrintObject
  loc_73AB71: FFree1Var var_1CC = ""
  loc_73AB76: LitStr " "
  loc_73AB79: ILdRf var_190
  loc_73AB7C: PrintObject
  loc_73AB82: Branch loc_73ABC3
  loc_73AB89: LitI2_Byte &H50
  loc_73AB8B: FMemLdR4 arg_8(1748)
  loc_73AB90: FLdRfVar var_1CC
  loc_73AB93: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73AB98: FLdVar var_1CC
  loc_73AB9C: ILdRfDarg arg_14
  loc_73ABA2: LdPrVar
  loc_73ABA4: LateMemCall
  loc_73ABAA: FFree1Var var_1CC = ""
  loc_73ABAF: LitVarStr var_1BC, " "
  loc_73ABB4: PopAdLdVar
  loc_73ABB5: ILdRfDarg arg_14
  loc_73ABBB: LdPrVar
  loc_73ABBD: LateMemCall
  loc_73ABC7: LitI2_Byte &HE
  loc_73ABC9: FStI2 var_92
  loc_73ABCE: FLdI2 var_92
  loc_73ABD1: CI4UI1
  loc_73ABD2: ILdRf var_A8
  loc_73ABD5: FnLenStr
  loc_73ABD6: LtI4
  loc_73ABD7: BranchF loc_73B5C8
  loc_73ABDC: LitVarI2 var_1CC, 14
  loc_73ABE1: FLdI2 var_92
  loc_73ABE4: CI4UI1
  loc_73ABE5: FLdRfVar var_A8
  loc_73ABE8: CVarRef
  loc_73ABED: FLdRfVar var_1EC
  loc_73ABF0: ImpAdCallFPR4  = Mid(, , )
  loc_73ABF5: FLdRfVar var_1EC
  loc_73ABF8: CStrVarTmp
  loc_73ABF9: FStStr var_C4
  loc_73ABFC: FFreeVar var_1CC = ""
  loc_73AC05: LitVarI2 var_1CC, 2
  loc_73AC0A: LitI4 7
  loc_73AC0F: ILdRf var_C4
  loc_73AC12: ImpAdCallI2 Mid$(, , )
  loc_73AC17: FStStrNoPop var_1AC
  loc_73AC1A: LitStr "/"
  loc_73AC1D: ConcatStr
  loc_73AC1E: FStStrNoPop var_2F0
  loc_73AC21: LitVarI2 var_1EC, 2
  loc_73AC26: LitI4 5
  loc_73AC2B: ILdRf var_C4
  loc_73AC2E: ImpAdCallI2 Mid$(, , )
  loc_73AC33: FStStrNoPop var_480
  loc_73AC36: ConcatStr
  loc_73AC37: FStStrNoPop var_490
  loc_73AC3A: LitStr "/"
  loc_73AC3D: ConcatStr
  loc_73AC3E: FStStrNoPop var_498
  loc_73AC41: LitVarI2 var_20C, 4
  loc_73AC46: LitI4 1
  loc_73AC4B: ILdRf var_C4
  loc_73AC4E: ImpAdCallI2 Mid$(, , )
  loc_73AC53: FStStrNoPop var_49C
  loc_73AC56: ConcatStr
  loc_73AC57: FStStrNoPop var_4A0
  loc_73AC5A: LitStr " "
  loc_73AC5D: ConcatStr
  loc_73AC5E: FStStrNoPop var_4A4
  loc_73AC61: LitVarI2 var_22C, 2
  loc_73AC66: LitI4 9
  loc_73AC6B: ILdRf var_C4
  loc_73AC6E: ImpAdCallI2 Mid$(, , )
  loc_73AC73: FStStrNoPop var_4A8
  loc_73AC76: ConcatStr
  loc_73AC77: FStStrNoPop var_4AC
  loc_73AC7A: LitStr ":"
  loc_73AC7D: ConcatStr
  loc_73AC7E: FStStrNoPop var_4B0
  loc_73AC81: LitVarI2 var_24C, 2
  loc_73AC86: LitI4 &HB
  loc_73AC8B: ILdRf var_C4
  loc_73AC8E: ImpAdCallI2 Mid$(, , )
  loc_73AC93: FStStrNoPop var_4B4
  loc_73AC96: ConcatStr
  loc_73AC97: FStStrNoPop var_4B8
  loc_73AC9A: LitStr ":"
  loc_73AC9D: ConcatStr
  loc_73AC9E: FStStrNoPop var_4BC
  loc_73ACA1: LitVarI2 var_26C, 2
  loc_73ACA6: LitI4 &HD
  loc_73ACAB: ILdRf var_C4
  loc_73ACAE: ImpAdCallI2 Mid$(, , )
  loc_73ACB3: FStStrNoPop var_4C0
  loc_73ACB6: ConcatStr
  loc_73ACB7: FStStr var_C0
  loc_73ACBA: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4A8 = "": var_4AC = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4BC = ""
  loc_73ACDB: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73ACEC: FLdI2 var_92
  loc_73ACEF: LitI2_Byte &HE
  loc_73ACF1: AddI2
  loc_73ACF2: FStI2 var_92
  loc_73ACF7: LitVarI2 var_1CC, 3
  loc_73ACFC: FLdI2 var_92
  loc_73ACFF: CI4UI1
  loc_73AD00: ILdRf var_A8
  loc_73AD03: ImpAdCallI2 Mid$(, , )
  loc_73AD08: FStStrNoPop var_1AC
  loc_73AD0B: ImpAdCallFPR4 push Val()
  loc_73AD10: FStFPR8 var_460
  loc_73AD13: LitI4 1
  loc_73AD18: LitI4 1
  loc_73AD1D: LitVarStr var_1FC, "##0"
  loc_73AD22: FStVarCopyObj var_20C
  loc_73AD25: FLdRfVar var_20C
  loc_73AD28: FLdFPR8 var_460
  loc_73AD2B: CVarR8
  loc_73AD2F: FLdRfVar var_22C
  loc_73AD32: ImpAdCallFPR4  = Format(, )
  loc_73AD37: LitI4 1
  loc_73AD3C: LitI4 1
  loc_73AD41: LitVarStr var_21C, "000"
  loc_73AD46: FStVarCopyObj var_24C
  loc_73AD49: FLdRfVar var_24C
  loc_73AD4C: FLdRfVar var_22C
  loc_73AD4F: FLdRfVar var_26C
  loc_73AD52: ImpAdCallFPR4  = Format(, )
  loc_73AD57: FLdRfVar var_26C
  loc_73AD5A: CStrVarTmp
  loc_73AD5B: FStStr var_B8
  loc_73AD5E: FFree1Str var_1AC
  loc_73AD61: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73AD72: FLdI2 var_92
  loc_73AD75: LitI2_Byte 3
  loc_73AD77: AddI2
  loc_73AD78: FStI2 var_92
  loc_73AD7D: LitVarI2 var_1CC, 2
  loc_73AD82: FLdI2 var_92
  loc_73AD85: CI4UI1
  loc_73AD86: ILdRf var_A8
  loc_73AD89: ImpAdCallI2 Mid$(, , )
  loc_73AD8E: FStStrNoPop var_1AC
  loc_73AD91: ImpAdCallFPR4 push Val()
  loc_73AD96: FStFPR8 var_460
  loc_73AD99: LitI4 1
  loc_73AD9E: LitI4 1
  loc_73ADA3: LitVarStr var_1FC, "#0"
  loc_73ADA8: FStVarCopyObj var_20C
  loc_73ADAB: FLdRfVar var_20C
  loc_73ADAE: FLdFPR8 var_460
  loc_73ADB1: CVarR8
  loc_73ADB5: FLdRfVar var_22C
  loc_73ADB8: ImpAdCallFPR4  = Format(, )
  loc_73ADBD: LitI4 1
  loc_73ADC2: LitI4 1
  loc_73ADC7: LitVarStr var_21C, "@@"
  loc_73ADCC: FStVarCopyObj var_24C
  loc_73ADCF: FLdRfVar var_24C
  loc_73ADD2: FLdRfVar var_22C
  loc_73ADD5: FLdRfVar var_26C
  loc_73ADD8: ImpAdCallFPR4  = Format(, )
  loc_73ADDD: FLdRfVar var_26C
  loc_73ADE0: CStrVarTmp
  loc_73ADE1: FStStr var_124
  loc_73ADE4: FFree1Str var_1AC
  loc_73ADE7: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73ADF8: FLdI2 var_92
  loc_73ADFB: LitI2_Byte 2
  loc_73ADFD: AddI2
  loc_73ADFE: FStI2 var_92
  loc_73AE03: FLdI2 var_19A
  loc_73AE06: BranchF loc_73AE92
  loc_73AE0B: LitVarI2 var_1CC, 1
  loc_73AE10: FLdI2 var_92
  loc_73AE13: CI4UI1
  loc_73AE14: ILdRf var_A8
  loc_73AE17: ImpAdCallI2 Mid$(, , )
  loc_73AE1C: FStStrNoPop var_1AC
  loc_73AE1F: ImpAdCallFPR4 push Val()
  loc_73AE24: FStFPR8 var_460
  loc_73AE27: LitI4 1
  loc_73AE2C: LitI4 1
  loc_73AE31: LitVarStr var_1FC, "#0"
  loc_73AE36: FStVarCopyObj var_20C
  loc_73AE39: FLdRfVar var_20C
  loc_73AE3C: FLdFPR8 var_460
  loc_73AE3F: CVarR8
  loc_73AE43: FLdRfVar var_22C
  loc_73AE46: ImpAdCallFPR4  = Format(, )
  loc_73AE4B: LitI4 1
  loc_73AE50: LitI4 1
  loc_73AE55: LitVarStr var_21C, "@"
  loc_73AE5A: FStVarCopyObj var_24C
  loc_73AE5D: FLdRfVar var_24C
  loc_73AE60: FLdRfVar var_22C
  loc_73AE63: FLdRfVar var_26C
  loc_73AE66: ImpAdCallFPR4  = Format(, )
  loc_73AE6B: FLdRfVar var_26C
  loc_73AE6E: CStrVarTmp
  loc_73AE6F: FStStr var_314
  loc_73AE72: FFree1Str var_1AC
  loc_73AE75: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73AE86: FLdI2 var_92
  loc_73AE89: LitI2_Byte 1
  loc_73AE8B: AddI2
  loc_73AE8C: FStI2 var_92
  loc_73AE8F: Branch loc_73AE9D
  loc_73AE96: LitI2_Byte 1
  loc_73AE98: CStrUI1
  loc_73AE9A: FStStr var_314
  loc_73AEA1: LitVarI2 var_1CC, 8
  loc_73AEA6: FLdI2 var_92
  loc_73AEA9: CI4UI1
  loc_73AEAA: ILdRf var_A8
  loc_73AEAD: ImpAdCallI2 Mid$(, , )
  loc_73AEB2: FStStrNoPop var_1AC
  loc_73AEB5: ImpAdCallFPR4 push Val()
  loc_73AEBA: FStFPR8 var_460
  loc_73AEBD: LitI4 1
  loc_73AEC2: LitI4 1
  loc_73AEC7: LitVarStr var_1FC, "#######0"
  loc_73AECC: FStVarCopyObj var_20C
  loc_73AECF: FLdRfVar var_20C
  loc_73AED2: FLdFPR8 var_460
  loc_73AED5: CVarR8
  loc_73AED9: FLdRfVar var_22C
  loc_73AEDC: ImpAdCallFPR4  = Format(, )
  loc_73AEE1: LitI4 1
  loc_73AEE6: LitI4 1
  loc_73AEEB: LitVarStr var_21C, "@@@@@@@@"
  loc_73AEF0: FStVarCopyObj var_24C
  loc_73AEF3: FLdRfVar var_24C
  loc_73AEF6: FLdRfVar var_22C
  loc_73AEF9: FLdRfVar var_26C
  loc_73AEFC: ImpAdCallFPR4  = Format(, )
  loc_73AF01: FLdRfVar var_26C
  loc_73AF04: FStVar var_11C
  loc_73AF08: FFree1Str var_1AC
  loc_73AF0B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = ""
  loc_73AF1A: FLdI2 var_92
  loc_73AF1D: LitI2_Byte 8
  loc_73AF1F: AddI2
  loc_73AF20: FStI2 var_92
  loc_73AF25: LitVarI2 var_1CC, 3
  loc_73AF2A: FLdI2 var_92
  loc_73AF2D: CI4UI1
  loc_73AF2E: ILdRf var_A8
  loc_73AF31: ImpAdCallI2 Mid$(, , )
  loc_73AF36: FStStr var_1AC
  loc_73AF39: LitI4 1
  loc_73AF3E: LitI4 1
  loc_73AF43: LitVarStr var_1DC, "@@@"
  loc_73AF48: FStVarCopyObj var_20C
  loc_73AF4B: FLdRfVar var_20C
  loc_73AF4E: FLdZeroAd var_1AC
  loc_73AF51: CVarStr var_1EC
  loc_73AF54: FLdRfVar var_22C
  loc_73AF57: ImpAdCallFPR4  = Format(, )
  loc_73AF5C: FLdRfVar var_22C
  loc_73AF5F: CStrVarTmp
  loc_73AF60: FStStr var_120
  loc_73AF63: FFree1Str var_1AC
  loc_73AF66: FFreeVar var_1CC = "": var_1EC = "": var_20C = ""
  loc_73AF73: FLdI2 var_92
  loc_73AF76: LitI2_Byte 3
  loc_73AF78: AddI2
  loc_73AF79: FStI2 var_92
  loc_73AF7E: LitVarI2 var_1CC, 2
  loc_73AF83: FLdI2 var_92
  loc_73AF86: CI4UI1
  loc_73AF87: ILdRf var_A8
  loc_73AF8A: ImpAdCallI2 Mid$(, , )
  loc_73AF8F: FStStrNoPop var_1AC
  loc_73AF92: ImpAdCallFPR4 push Val()
  loc_73AF97: FStFPR8 var_460
  loc_73AF9A: LitI4 1
  loc_73AF9F: LitI4 1
  loc_73AFA4: LitVarStr var_1FC, "#0"
  loc_73AFA9: FStVarCopyObj var_20C
  loc_73AFAC: FLdRfVar var_20C
  loc_73AFAF: FLdFPR8 var_460
  loc_73AFB2: CVarR8
  loc_73AFB6: FLdRfVar var_22C
  loc_73AFB9: ImpAdCallFPR4  = Format(, )
  loc_73AFBE: LitI4 1
  loc_73AFC3: LitI4 1
  loc_73AFC8: LitVarStr var_21C, "@@"
  loc_73AFCD: FStVarCopyObj var_24C
  loc_73AFD0: FLdRfVar var_24C
  loc_73AFD3: FLdRfVar var_22C
  loc_73AFD6: FLdRfVar var_26C
  loc_73AFD9: ImpAdCallFPR4  = Format(, )
  loc_73AFDE: FLdRfVar var_26C
  loc_73AFE1: CStrVarTmp
  loc_73AFE2: FStStr var_16C
  loc_73AFE5: FFree1Str var_1AC
  loc_73AFE8: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73AFF9: FLdI2 var_92
  loc_73AFFC: LitI2_Byte 2
  loc_73AFFE: AddI2
  loc_73AFFF: FStI2 var_92
  loc_73B004: LitVarI2 var_1CC, 8
  loc_73B009: FLdI2 var_92
  loc_73B00C: CI4UI1
  loc_73B00D: ILdRf var_A8
  loc_73B010: ImpAdCallI2 Mid$(, , )
  loc_73B015: FStStrNoPop var_1AC
  loc_73B018: ImpAdCallFPR4 push Val()
  loc_73B01D: FStFPR8 var_460
  loc_73B020: LitI4 1
  loc_73B025: LitI4 1
  loc_73B02A: LitVarStr var_1FC, "#####0.00"
  loc_73B02F: FStVarCopyObj var_20C
  loc_73B032: FLdRfVar var_20C
  loc_73B035: FLdFPR8 var_460
  loc_73B038: LitI2_Byte &H64
  loc_73B03A: CR8I2
  loc_73B03B: DivR8
  loc_73B03C: CVarR8
  loc_73B040: FLdRfVar var_22C
  loc_73B043: ImpAdCallFPR4  = Format(, )
  loc_73B048: LitI4 1
  loc_73B04D: LitI4 1
  loc_73B052: LitVarStr var_21C, "@@@@@@@@@"
  loc_73B057: FStVarCopyObj var_24C
  loc_73B05A: FLdRfVar var_24C
  loc_73B05D: FLdRfVar var_22C
  loc_73B060: FLdRfVar var_26C
  loc_73B063: ImpAdCallFPR4  = Format(, )
  loc_73B068: FLdRfVar var_26C
  loc_73B06B: CStrVarTmp
  loc_73B06C: FStStr var_170
  loc_73B06F: FFree1Str var_1AC
  loc_73B072: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_73B083: FLdI2 var_92
  loc_73B086: LitI2_Byte 8
  loc_73B088: AddI2
  loc_73B089: FStI2 var_92
  loc_73B08E: FLdI2 var_92
  loc_73B091: LitI2_Byte 1
  loc_73B093: AddI2
  loc_73B094: FStI2 var_92
  loc_73B099: ILdRf var_B8
  loc_73B09C: LitStr "460"
  loc_73B09F: EqStr
  loc_73B0A1: ILdRf var_B8
  loc_73B0A4: LitStr "461"
  loc_73B0A7: EqStr
  loc_73B0A9: OrI4
  loc_73B0AA: BranchF loc_73B0D6
  loc_73B0AF: FLdRfVar var_19C
  loc_73B0B2: FLdRfVar var_170
  loc_73B0B5: FLdRfVar var_16C
  loc_73B0B8: FLdRfVar var_124
  loc_73B0BB: FLdRfVar var_B8
  loc_73B0BE: FLdRfVar var_C0
  loc_73B0C1: ILdRf arg_14
  loc_73B0C4: FLdRfVar var_190
  loc_73B0C7: ImpAdCallFPR4 Unknown_68FB64(, , , , , , , )
  loc_73B0CE: LitI2_Byte &HFF
  loc_73B0D0: FStI2 var_19C
  loc_73B0D3: Branch loc_73B5C1
  loc_73B0D8: LitI4 1
  loc_73B0DD: ILdRf var_B0
  loc_73B0E0: ILdRf var_B8
  loc_73B0E3: LitI4 0
  loc_73B0E8: FnInStr4
  loc_73B0EA: LitI4 0
  loc_73B0EF: EqI4
  loc_73B0F0: BranchF loc_73B33C
  loc_73B0F5: ILdRf var_16C
  loc_73B0F8: ImpAdCallFPR4 push Val()
  loc_73B0FD: CR8R8
  loc_73B0FE: LitI2_Byte 0
  loc_73B100: CR8I2
  loc_73B101: EqR4
  loc_73B102: BranchF loc_73B22D
  loc_73B107: ILdRf var_124
  loc_73B10A: ImpAdCallFPR4 push Val()
  loc_73B10F: FStFPR8 var_460
  loc_73B112: LitVarI2 var_1CC, 9
  loc_73B117: LitI4 &H15
  loc_73B11C: FLdFPR8 var_460
  loc_73B11F: CI4R8
  loc_73B120: ILdRf var_314
  loc_73B123: CI4Str
  loc_73B124: FLdRfVar var_164
  loc_73B127: AryLdPr
  loc_73B12A: MemLdStr global_0
  loc_73B12D: ImpAdCallI2 Mid$(, , )
  loc_73B132: FStStrNoPop var_1AC
  loc_73B135: ImpAdCallFPR4 push Val()
  loc_73B13A: FStFPR8 var_468
  loc_73B13D: ILdRf var_170
  loc_73B140: ImpAdCallFPR4 push Val()
  loc_73B145: FLdFPR8 var_468
  loc_73B148: AddR8
  loc_73B149: FStFPR4 var_CC
  loc_73B14C: FFree1Str var_1AC
  loc_73B14F: FFree1Var var_1CC = ""
  loc_73B154: ILdRf var_124
  loc_73B157: ImpAdCallFPR4 push Val()
  loc_73B15C: FStFPR8 var_460
  loc_73B15F: FLdRfVar var_1AC
  loc_73B162: FLdFPR8 var_460
  loc_73B165: CI2R8
  loc_73B166: ImpAdLdRf MemVar_74A220
  loc_73B169: NewIfNullPr clsProducts
  loc_73B171: LitI4 &H14
  loc_73B176: FLdZeroAd var_1AC
  loc_73B179: CVarStr var_1CC
  loc_73B17C: FLdRfVar var_1EC
  loc_73B17F: ImpAdCallFPR4  = Left(, )
  loc_73B184: LitI4 1
  loc_73B189: LitI4 1
  loc_73B18E: LitVarStr var_1DC, "#####0.00"
  loc_73B193: FStVarCopyObj var_20C
  loc_73B196: FLdRfVar var_20C
  loc_73B199: FLdRfVar var_CC
  loc_73B19C: CVarRef
  loc_73B1A1: FLdRfVar var_22C
  loc_73B1A4: ImpAdCallFPR4  = Format(, )
  loc_73B1A9: LitI2_Byte &HFF
  loc_73B1AB: PopTmpLdAd2 var_482
  loc_73B1AE: LitI2_Byte &H14
  loc_73B1B0: PopTmpLdAd2 var_1A4
  loc_73B1B3: LitStr " "
  loc_73B1B6: FStStrCopy var_480
  loc_73B1B9: FLdRfVar var_480
  loc_73B1BC: FLdRfVar var_1EC
  loc_73B1BF: CStrVarTmp
  loc_73B1C0: PopTmpLdAdStr
  loc_73B1C4: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73B1C9: CVarStr var_28C
  loc_73B1CC: LitI4 1
  loc_73B1D1: LitI4 1
  loc_73B1D6: LitVarStr var_1FC, "@@@@@@@@@"
  loc_73B1DB: FStVarCopyObj var_24C
  loc_73B1DE: FLdRfVar var_24C
  loc_73B1E1: FLdRfVar var_22C
  loc_73B1E4: FLdRfVar var_26C
  loc_73B1E7: ImpAdCallFPR4  = Format(, )
  loc_73B1EC: FLdRfVar var_26C
  loc_73B1EF: ConcatVar var_2AC
  loc_73B1F3: CStrVarTmp
  loc_73B1F4: FStStrNoPop var_490
  loc_73B1F7: ILdRf var_124
  loc_73B1FA: ImpAdCallFPR4 push Val()
  loc_73B1FF: CI4R8
  loc_73B200: ILdRf var_314
  loc_73B203: CI4Str
  loc_73B204: FLdRfVar var_164
  loc_73B207: AryLdPr
  loc_73B20A: MemStStrCopy
  loc_73B20E: FFreeStr var_2F0 = "": var_480 = ""
  loc_73B217: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_28C = "": var_26C = ""
  loc_73B22A: Branch loc_73B337
  loc_73B231: ILdRf var_124
  loc_73B234: ImpAdCallFPR4 push Val()
  loc_73B239: FStFPR8 var_460
  loc_73B23C: FLdRfVar var_1AC
  loc_73B23F: FLdFPR8 var_460
  loc_73B242: CI2R8
  loc_73B243: ImpAdLdRf MemVar_74A220
  loc_73B246: NewIfNullPr clsProducts
  loc_73B24E: LitI4 &H14
  loc_73B253: FLdZeroAd var_1AC
  loc_73B256: CVarStr var_1CC
  loc_73B259: FLdRfVar var_1EC
  loc_73B25C: ImpAdCallFPR4  = Left(, )
  loc_73B261: LitI4 1
  loc_73B266: LitI4 1
  loc_73B26B: LitVarStr var_1DC, "#####0.00"
  loc_73B270: FStVarCopyObj var_20C
  loc_73B273: FLdRfVar var_20C
  loc_73B276: FLdRfVar var_170
  loc_73B279: CVarRef
  loc_73B27E: FLdRfVar var_22C
  loc_73B281: ImpAdCallFPR4  = Format(, )
  loc_73B286: ILdRf var_16C
  loc_73B289: ImpAdCallFPR4 push Val()
  loc_73B28E: CI4R8
  loc_73B28F: ILdRf var_314
  loc_73B292: CI4Str
  loc_73B293: FLdRfVar var_144
  loc_73B296: AryLdPr
  loc_73B299: MemLdStr global_0
  loc_73B29C: ILdRf var_124
  loc_73B29F: ConcatStr
  loc_73B2A0: FStStrNoPop var_490
  loc_73B2A3: LitI2_Byte &HFF
  loc_73B2A5: PopTmpLdAd2 var_482
  loc_73B2A8: LitI2_Byte &H14
  loc_73B2AA: PopTmpLdAd2 var_1A4
  loc_73B2AD: LitStr " "
  loc_73B2B0: FStStrCopy var_480
  loc_73B2B3: FLdRfVar var_480
  loc_73B2B6: FLdRfVar var_1EC
  loc_73B2B9: CStrVarTmp
  loc_73B2BA: PopTmpLdAdStr
  loc_73B2BE: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73B2C3: FStStrNoPop var_498
  loc_73B2C6: ConcatStr
  loc_73B2C7: CVarStr var_28C
  loc_73B2CA: LitI4 1
  loc_73B2CF: LitI4 1
  loc_73B2D4: LitVarStr var_1FC, "@@@@@@@@@"
  loc_73B2D9: FStVarCopyObj var_24C
  loc_73B2DC: FLdRfVar var_24C
  loc_73B2DF: FLdRfVar var_22C
  loc_73B2E2: FLdRfVar var_26C
  loc_73B2E5: ImpAdCallFPR4  = Format(, )
  loc_73B2EA: FLdRfVar var_26C
  loc_73B2ED: ConcatVar var_2AC
  loc_73B2F1: LitVarStr var_21C, "~~"
  loc_73B2F6: ConcatVar var_2CC
  loc_73B2FA: CStrVarTmp
  loc_73B2FB: FStStrNoPop var_49C
  loc_73B2FE: ILdRf var_16C
  loc_73B301: ImpAdCallFPR4 push Val()
  loc_73B306: CI4R8
  loc_73B307: ILdRf var_314
  loc_73B30A: CI4Str
  loc_73B30B: FLdRfVar var_144
  loc_73B30E: AryLdPr
  loc_73B311: MemStStrCopy
  loc_73B315: FFreeStr var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73B322: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = ""
  loc_73B339: Branch loc_73B5C1
  loc_73B340: LitI4 1
  loc_73B345: ILdRf var_B0
  loc_73B348: ILdRf var_B8
  loc_73B34B: LitI4 0
  loc_73B350: FnInStr4
  loc_73B352: CI2I4
  loc_73B353: FStI2 var_9A
  loc_73B358: LitVarI2 var_1CC, 1
  loc_73B35D: FLdI2 var_9A
  loc_73B360: LitI2_Byte 4
  loc_73B362: AddI2
  loc_73B363: CI4UI1
  loc_73B364: ILdRf var_B0
  loc_73B367: ImpAdCallI2 Mid$(, , )
  loc_73B36C: FStStrNoPop var_1AC
  loc_73B36F: ImpAdCallI2 Asc()
  loc_73B374: CI4UI1
  loc_73B375: ILdRf var_184
  loc_73B378: Ary1LdI4
  loc_73B379: ILdRf var_B8
  loc_73B37C: ConcatStr
  loc_73B37D: FStStrNoPop var_480
  loc_73B380: LitVarI2 var_1EC, 1
  loc_73B385: FLdI2 var_9A
  loc_73B388: LitI2_Byte 4
  loc_73B38A: AddI2
  loc_73B38B: CI4UI1
  loc_73B38C: ILdRf var_B0
  loc_73B38F: ImpAdCallI2 Mid$(, , )
  loc_73B394: FStStrNoPop var_2F0
  loc_73B397: ImpAdCallI2 Asc()
  loc_73B39C: CI4UI1
  loc_73B39D: ILdRf var_184
  loc_73B3A0: Ary1StStrCopy
  loc_73B3A1: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73B3AA: FFreeVar var_1CC = ""
  loc_73B3B3: LitVarI2 var_1CC, 1
  loc_73B3B8: FLdI2 var_9A
  loc_73B3BB: LitI2_Byte 4
  loc_73B3BD: AddI2
  loc_73B3BE: CI4UI1
  loc_73B3BF: ILdRf var_B0
  loc_73B3C2: ImpAdCallI2 Mid$(, , )
  loc_73B3C7: FStStrNoPop var_1AC
  loc_73B3CA: ImpAdCallI2 Asc()
  loc_73B3CF: CI4UI1
  loc_73B3D0: ILdRf var_184
  loc_73B3D3: Ary1LdI4
  loc_73B3D4: FLdRfVar var_178
  loc_73B3D7: ILdRf var_B0
  loc_73B3DA: ILdRf var_B8
  loc_73B3DD: ImpAdCallI2 Unknown_5DFCB8(, , )
  loc_73B3E2: FStStrNoPop var_2F0
  loc_73B3E5: ConcatStr
  loc_73B3E6: FStStrNoPop var_490
  loc_73B3E9: LitVarI2 var_1EC, 1
  loc_73B3EE: FLdI2 var_9A
  loc_73B3F1: LitI2_Byte 4
  loc_73B3F3: AddI2
  loc_73B3F4: CI4UI1
  loc_73B3F5: ILdRf var_B0
  loc_73B3F8: ImpAdCallI2 Mid$(, , )
  loc_73B3FD: FStStrNoPop var_480
  loc_73B400: ImpAdCallI2 Asc()
  loc_73B405: CI4UI1
  loc_73B406: ILdRf var_184
  loc_73B409: Ary1StStrCopy
  loc_73B40A: FFreeStr var_1AC = "": var_2F0 = "": var_480 = ""
  loc_73B415: FFreeVar var_1CC = ""
  loc_73B41E: LitVarI2 var_1CC, 1
  loc_73B423: FLdI2 var_9A
  loc_73B426: LitI2_Byte 4
  loc_73B428: AddI2
  loc_73B429: CI4UI1
  loc_73B42A: ILdRf var_B0
  loc_73B42D: ImpAdCallI2 Mid$(, , )
  loc_73B432: FStStrNoPop var_1AC
  loc_73B435: ImpAdCallI2 Asc()
  loc_73B43A: CI4UI1
  loc_73B43B: ILdRf var_184
  loc_73B43E: Ary1LdI4
  loc_73B43F: ILdRf var_124
  loc_73B442: ConcatStr
  loc_73B443: FStStrNoPop var_480
  loc_73B446: LitVarI2 var_1EC, 1
  loc_73B44B: FLdI2 var_9A
  loc_73B44E: LitI2_Byte 4
  loc_73B450: AddI2
  loc_73B451: CI4UI1
  loc_73B452: ILdRf var_B0
  loc_73B455: ImpAdCallI2 Mid$(, , )
  loc_73B45A: FStStrNoPop var_2F0
  loc_73B45D: ImpAdCallI2 Asc()
  loc_73B462: CI4UI1
  loc_73B463: ILdRf var_184
  loc_73B466: Ary1StStrCopy
  loc_73B467: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73B470: FFreeVar var_1CC = ""
  loc_73B479: LitVarI2 var_1CC, 1
  loc_73B47E: FLdI2 var_9A
  loc_73B481: LitI2_Byte 4
  loc_73B483: AddI2
  loc_73B484: CI4UI1
  loc_73B485: ILdRf var_B0
  loc_73B488: ImpAdCallI2 Mid$(, , )
  loc_73B48D: FStStrNoPop var_1AC
  loc_73B490: ImpAdCallI2 Asc()
  loc_73B495: CI4UI1
  loc_73B496: ILdRf var_184
  loc_73B499: Ary1LdI4
  loc_73B49A: ILdRf var_314
  loc_73B49D: ConcatStr
  loc_73B49E: FStStrNoPop var_480
  loc_73B4A1: LitVarI2 var_1EC, 1
  loc_73B4A6: FLdI2 var_9A
  loc_73B4A9: LitI2_Byte 4
  loc_73B4AB: AddI2
  loc_73B4AC: CI4UI1
  loc_73B4AD: ILdRf var_B0
  loc_73B4B0: ImpAdCallI2 Mid$(, , )
  loc_73B4B5: FStStrNoPop var_2F0
  loc_73B4B8: ImpAdCallI2 Asc()
  loc_73B4BD: CI4UI1
  loc_73B4BE: ILdRf var_184
  loc_73B4C1: Ary1StStrCopy
  loc_73B4C2: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73B4CB: FFreeVar var_1CC = ""
  loc_73B4D4: LitVarI2 var_1CC, 1
  loc_73B4D9: FLdI2 var_9A
  loc_73B4DC: LitI2_Byte 4
  loc_73B4DE: AddI2
  loc_73B4DF: CI4UI1
  loc_73B4E0: ILdRf var_B0
  loc_73B4E3: ImpAdCallI2 Mid$(, , )
  loc_73B4E8: FStStrNoPop var_1AC
  loc_73B4EB: ImpAdCallI2 Asc()
  loc_73B4F0: CI4UI1
  loc_73B4F1: ILdRf var_184
  loc_73B4F4: Ary1LdI4
  loc_73B4F5: ILdRf var_170
  loc_73B4F8: ConcatStr
  loc_73B4F9: FStStrNoPop var_480
  loc_73B4FC: LitVarI2 var_1EC, 1
  loc_73B501: FLdI2 var_9A
  loc_73B504: LitI2_Byte 4
  loc_73B506: AddI2
  loc_73B507: CI4UI1
  loc_73B508: ILdRf var_B0
  loc_73B50B: ImpAdCallI2 Mid$(, , )
  loc_73B510: FStStrNoPop var_2F0
  loc_73B513: ImpAdCallI2 Asc()
  loc_73B518: CI4UI1
  loc_73B519: ILdRf var_184
  loc_73B51C: Ary1StStrCopy
  loc_73B51D: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73B526: FFreeVar var_1CC = ""
  loc_73B52F: LitI4 1
  loc_73B534: LitI4 1
  loc_73B539: LitVarStr var_1DC, "00000000"
  loc_73B53E: FStVarCopyObj var_1EC
  loc_73B541: FLdRfVar var_1EC
  loc_73B544: FLdRfVar var_11C
  loc_73B547: ImpAdCallI2 Format$(, )
  loc_73B54C: FStStr var_49C
  loc_73B54F: LitVarI2 var_1CC, 1
  loc_73B554: FLdI2 var_9A
  loc_73B557: LitI2_Byte 4
  loc_73B559: AddI2
  loc_73B55A: CI4UI1
  loc_73B55B: ILdRf var_B0
  loc_73B55E: ImpAdCallI2 Mid$(, , )
  loc_73B563: FStStrNoPop var_1AC
  loc_73B566: ImpAdCallI2 Asc()
  loc_73B56B: CI4UI1
  loc_73B56C: ILdRf var_184
  loc_73B56F: Ary1LdI4
  loc_73B570: FLdRfVar var_180
  loc_73B573: ILdRf var_B4
  loc_73B576: FLdZeroAd var_49C
  loc_73B579: FStStrNoPop var_2F0
  loc_73B57C: ImpAdCallI2 Unknown_5F0370(, , )
  loc_73B581: FStStrNoPop var_480
  loc_73B584: ConcatStr
  loc_73B585: FStStrNoPop var_498
  loc_73B588: LitVarI2 var_20C, 1
  loc_73B58D: FLdI2 var_9A
  loc_73B590: LitI2_Byte 4
  loc_73B592: AddI2
  loc_73B593: CI4UI1
  loc_73B594: ILdRf var_B0
  loc_73B597: ImpAdCallI2 Mid$(, , )
  loc_73B59C: FStStrNoPop var_490
  loc_73B59F: ImpAdCallI2 Asc()
  loc_73B5A4: CI4UI1
  loc_73B5A5: ILdRf var_184
  loc_73B5A8: Ary1StStrCopy
  loc_73B5A9: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73B5B8: FFreeVar var_1CC = "": var_1EC = ""
  loc_73B5C5: Branch loc_73ABCC
  loc_73B5CA: FLdRfVar var_2F0
  loc_73B5CD: LitVar_Missing var_2EC
  loc_73B5D0: LitVar_Missing var_2CC
  loc_73B5D3: LitVar_Missing var_2AC
  loc_73B5D6: LitVar_Missing var_28C
  loc_73B5D9: LitVar_Missing var_26C
  loc_73B5DC: LitVar_Missing var_24C
  loc_73B5DF: LitVar_Missing var_22C
  loc_73B5E2: LitVar_Missing var_20C
  loc_73B5E5: LitVar_Missing var_1EC
  loc_73B5E8: LitVar_Missing var_1CC
  loc_73B5EB: LitStr "PRUEBAS DE SURTIDOR"
  loc_73B5EE: FStStrCopy var_1AC
  loc_73B5F1: FLdRfVar var_1AC
  loc_73B5F4: LitI4 &H95
  loc_73B5F9: PopTmpLdAdStr var_1A8
  loc_73B5FC: LitI2_Byte 9
  loc_73B5FE: PopTmpLdAd2 var_1A4
  loc_73B601: ImpAdLdRf MemVar_74C7D0
  loc_73B604: NewIfNullPr clsMsg
  loc_73B607: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73B60C: FLdZeroAd var_2F0
  loc_73B60F: FMemStStr arg_8(1732)
  loc_73B615: FFree1Str var_1AC
  loc_73B618: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73B631: FLdRfVar var_2F0
  loc_73B634: LitVar_Missing var_2EC
  loc_73B637: LitVar_Missing var_2CC
  loc_73B63A: LitVar_Missing var_2AC
  loc_73B63D: LitVar_Missing var_28C
  loc_73B640: LitVar_Missing var_26C
  loc_73B643: LitVar_Missing var_24C
  loc_73B646: LitVar_Missing var_22C
  loc_73B649: LitVar_Missing var_20C
  loc_73B64C: LitVar_Missing var_1EC
  loc_73B64F: LitVar_Missing var_1CC
  loc_73B652: LitStr "FECHA / HORA: "
  loc_73B655: FStStrCopy var_1AC
  loc_73B658: FLdRfVar var_1AC
  loc_73B65B: LitI4 &H96
  loc_73B660: PopTmpLdAdStr var_1A8
  loc_73B663: LitI2_Byte 9
  loc_73B665: PopTmpLdAd2 var_1A4
  loc_73B668: ImpAdLdRf MemVar_74C7D0
  loc_73B66B: NewIfNullPr clsMsg
  loc_73B66E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73B673: FLdZeroAd var_2F0
  loc_73B676: FMemStStr arg_8(1736)
  loc_73B67C: FFree1Str var_1AC
  loc_73B67F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73B698: FLdRfVar var_2F0
  loc_73B69B: LitVar_Missing var_2EC
  loc_73B69E: LitVar_Missing var_2CC
  loc_73B6A1: LitVar_Missing var_2AC
  loc_73B6A4: LitVar_Missing var_28C
  loc_73B6A7: LitVar_Missing var_26C
  loc_73B6AA: LitVar_Missing var_24C
  loc_73B6AD: LitVar_Missing var_22C
  loc_73B6B0: LitVar_Missing var_20C
  loc_73B6B3: LitVar_Missing var_1EC
  loc_73B6B6: LitVar_Missing var_1CC
  loc_73B6B9: LitStr "CON RETORNO"
  loc_73B6BC: FStStrCopy var_1AC
  loc_73B6BF: FLdRfVar var_1AC
  loc_73B6C2: LitI4 &H97
  loc_73B6C7: PopTmpLdAdStr var_1A8
  loc_73B6CA: LitI2_Byte 9
  loc_73B6CC: PopTmpLdAd2 var_1A4
  loc_73B6CF: ImpAdLdRf MemVar_74C7D0
  loc_73B6D2: NewIfNullPr clsMsg
  loc_73B6D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73B6DA: FLdZeroAd var_2F0
  loc_73B6DD: FMemStStr arg_8(1740)
  loc_73B6E3: FFree1Str var_1AC
  loc_73B6E6: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73B6FF: FLdRfVar var_2F0
  loc_73B702: LitVar_Missing var_2EC
  loc_73B705: LitVar_Missing var_2CC
  loc_73B708: LitVar_Missing var_2AC
  loc_73B70B: LitVar_Missing var_28C
  loc_73B70E: LitVar_Missing var_26C
  loc_73B711: LitVar_Missing var_24C
  loc_73B714: LitVar_Missing var_22C
  loc_73B717: LitVar_Missing var_20C
  loc_73B71A: LitVar_Missing var_1EC
  loc_73B71D: LitVar_Missing var_1CC
  loc_73B720: LitStr "SIN RETORNO"
  loc_73B723: FStStrCopy var_1AC
  loc_73B726: FLdRfVar var_1AC
  loc_73B729: LitI4 &H98
  loc_73B72E: PopTmpLdAdStr var_1A8
  loc_73B731: LitI2_Byte 9
  loc_73B733: PopTmpLdAd2 var_1A4
  loc_73B736: ImpAdLdRf MemVar_74C7D0
  loc_73B739: NewIfNullPr clsMsg
  loc_73B73C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73B741: FLdZeroAd var_2F0
  loc_73B744: FMemStStr arg_8(1744)
  loc_73B74A: FFree1Str var_1AC
  loc_73B74D: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73B766: FLdRfVar var_2F0
  loc_73B769: LitVar_Missing var_2EC
  loc_73B76C: LitVar_Missing var_2CC
  loc_73B76F: LitVar_Missing var_2AC
  loc_73B772: LitVar_Missing var_28C
  loc_73B775: LitVar_Missing var_26C
  loc_73B778: LitVar_Missing var_24C
  loc_73B77B: LitVar_Missing var_22C
  loc_73B77E: LitVar_Missing var_20C
  loc_73B781: LitVar_Missing var_1EC
  loc_73B784: LitVar_Missing var_1CC
  loc_73B787: LitStr "SURTIDOR"
  loc_73B78A: FStStrCopy var_1AC
  loc_73B78D: FLdRfVar var_1AC
  loc_73B790: LitI4 &HA9
  loc_73B795: PopTmpLdAdStr var_1A8
  loc_73B798: LitI2_Byte 9
  loc_73B79A: PopTmpLdAd2 var_1A4
  loc_73B79D: ImpAdLdRf MemVar_74C7D0
  loc_73B7A0: NewIfNullPr clsMsg
  loc_73B7A3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73B7A8: FLdZeroAd var_2F0
  loc_73B7AB: FMemStStr arg_8(1812)
  loc_73B7B1: FFree1Str var_1AC
  loc_73B7B4: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73B7CD: FLdRfVar var_164
  loc_73B7D0: PopTmpLdAdStr var_4C4
  loc_73B7D3: FLdRfVar var_144
  loc_73B7D6: PopTmpLdAdStr var_1A8
  loc_73B7D9: ImpAdCallI2 Unknown_5F3B20(, )
  loc_73B7DE: BranchF loc_73C603
  loc_73B7E3: ILdRf arg_14
  loc_73B7E6: ImpAdCallI2 IsMissing()
  loc_73B7EB: BranchF loc_73BA59
  loc_73B7F0: ILdRf var_190
  loc_73B7F3: PrintObject
  loc_73B7FB: LitI2_Byte &H50
  loc_73B7FD: LitStr "PRUEBAS DE SURTIDOR"
  loc_73B800: FLdRfVar var_1CC
  loc_73B803: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73B808: FLdRfVar var_1CC
  loc_73B80B: ILdRf var_190
  loc_73B80E: PrintObject
  loc_73B814: FFree1Var var_1CC = ""
  loc_73B819: ILdRf var_190
  loc_73B81C: PrintObject
  loc_73B824: LitI4 3
  loc_73B829: FLdRfVar var_1CC
  loc_73B82C: ImpAdCallFPR4  = Space()
  loc_73B831: LitVarI2 var_20C, 10
  loc_73B836: LitI4 &H13
  loc_73B83B: ILdRf var_90
  loc_73B83E: ImpAdCallI2 Mid$(, , )
  loc_73B843: FStStr var_1AC
  loc_73B846: LitI4 1
  loc_73B84B: FLdRfVar var_26C
  loc_73B84E: ImpAdCallFPR4  = Space()
  loc_73B853: LitVarI2 var_2AC, 8
  loc_73B858: LitI4 &H1D
  loc_73B85D: ILdRf var_90
  loc_73B860: ImpAdCallI2 Mid$(, , )
  loc_73B865: FStStr var_2F0
  loc_73B868: LitI4 4
  loc_73B86D: FLdRfVar var_310
  loc_73B870: ImpAdCallFPR4  = Space()
  loc_73B875: FLdRfVar var_1CC
  loc_73B878: FMemLdR4 arg_8(1736)
  loc_73B87D: CVarStr var_1BC
  loc_73B880: ConcatVar var_1EC
  loc_73B884: FLdZeroAd var_1AC
  loc_73B887: CVarStr var_22C
  loc_73B88A: ConcatVar var_24C
  loc_73B88E: FLdRfVar var_26C
  loc_73B891: ConcatVar var_28C
  loc_73B895: FLdZeroAd var_2F0
  loc_73B898: CVarStr var_2CC
  loc_73B89B: ConcatVar var_2EC
  loc_73B89F: FLdRfVar var_310
  loc_73B8A2: ConcatVar var_324
  loc_73B8A6: LitVarStr var_21C, "("
  loc_73B8AB: ConcatVar var_334
  loc_73B8AF: FMemLdR4 arg_8(1604)
  loc_73B8B4: CVarStr var_23C
  loc_73B8B7: ConcatVar var_344
  loc_73B8BB: LitVarStr var_25C, ")"
  loc_73B8C0: ConcatVar var_354
  loc_73B8C4: ILdRf var_190
  loc_73B8C7: PrintObject
  loc_73B8CD: FFreeStr var_1AC = ""
  loc_73B8D4: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = ""
  loc_73B8F7: ILdRf var_190
  loc_73B8FA: PrintObject
  loc_73B902: LitI4 3
  loc_73B907: FLdRfVar var_1CC
  loc_73B90A: ImpAdCallFPR4  = Space()
  loc_73B90F: LitI4 2
  loc_73B914: FLdRfVar var_20C
  loc_73B917: ImpAdCallFPR4  = Space()
  loc_73B91C: LitI4 &H19
  loc_73B921: FLdRfVar var_26C
  loc_73B924: ImpAdCallFPR4  = Space()
  loc_73B929: LitI4 &HA
  loc_73B92E: FLdRfVar var_2CC
  loc_73B931: ImpAdCallFPR4  = Space()
  loc_73B936: FLdRfVar var_1CC
  loc_73B939: LitVarStr var_1BC, "CODIGO"
  loc_73B93E: ConcatVar var_1EC
  loc_73B942: FLdRfVar var_20C
  loc_73B945: ConcatVar var_22C
  loc_73B949: LitVarStr var_1DC, "CODIGO"
  loc_73B94E: ConcatVar var_24C
  loc_73B952: FLdRfVar var_26C
  loc_73B955: ConcatVar var_28C
  loc_73B959: LitVarStr var_1FC, "VOLUMEN"
  loc_73B95E: ConcatVar var_2AC
  loc_73B962: FLdRfVar var_2CC
  loc_73B965: ConcatVar var_2EC
  loc_73B969: LitVarStr var_21C, "VOLUMEN"
  loc_73B96E: ConcatVar var_310
  loc_73B972: ILdRf var_190
  loc_73B975: PrintObject
  loc_73B97B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73B996: LitI4 3
  loc_73B99B: FLdRfVar var_1CC
  loc_73B99E: ImpAdCallFPR4  = Space()
  loc_73B9A3: LitI4 2
  loc_73B9A8: FLdRfVar var_20C
  loc_73B9AB: ImpAdCallFPR4  = Space()
  loc_73B9B0: LitI4 2
  loc_73B9B5: FLdRfVar var_26C
  loc_73B9B8: ImpAdCallFPR4  = Space()
  loc_73B9BD: LitI4 &HA
  loc_73B9C2: FLdRfVar var_2CC
  loc_73B9C5: ImpAdCallFPR4  = Space()
  loc_73B9CA: LitI4 6
  loc_73B9CF: FLdRfVar var_324
  loc_73B9D2: ImpAdCallFPR4  = Space()
  loc_73B9D7: FLdRfVar var_1CC
  loc_73B9DA: LitVarStr var_1BC, "TANQUE"
  loc_73B9DF: ConcatVar var_1EC
  loc_73B9E3: FLdRfVar var_20C
  loc_73B9E6: ConcatVar var_22C
  loc_73B9EA: LitVarStr var_1DC, "PRODUCTO"
  loc_73B9EF: ConcatVar var_24C
  loc_73B9F3: FLdRfVar var_26C
  loc_73B9F6: ConcatVar var_28C
  loc_73B9FA: LitVarStr var_1FC, "DESCRIPCION"
  loc_73B9FF: ConcatVar var_2AC
  loc_73BA03: FLdRfVar var_2CC
  loc_73BA06: ConcatVar var_2EC
  loc_73BA0A: LitVarStr var_21C, "CON RETORNO"
  loc_73BA0F: ConcatVar var_310
  loc_73BA13: FLdRfVar var_324
  loc_73BA16: ConcatVar var_334
  loc_73BA1A: LitVarStr var_23C, "SIN RETORNO"
  loc_73BA1F: ConcatVar var_344
  loc_73BA23: ILdRf var_190
  loc_73BA26: PrintObject
  loc_73BA2C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = ""
  loc_73BA4D: ILdRf var_190
  loc_73BA50: PrintObject
  loc_73BA56: Branch loc_73BCF6
  loc_73BA5D: LitVarStr var_1BC, vbNullString
  loc_73BA62: PopAdLdVar
  loc_73BA63: ILdRfDarg arg_14
  loc_73BA69: LdPrVar
  loc_73BA6B: LateMemCall
  loc_73BA73: LitI2_Byte &H50
  loc_73BA75: FMemLdR4 arg_8(1732)
  loc_73BA7A: FLdRfVar var_1CC
  loc_73BA7D: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73BA82: FLdVar var_1CC
  loc_73BA86: ILdRfDarg arg_14
  loc_73BA8C: LdPrVar
  loc_73BA8E: LateMemCall
  loc_73BA94: FFree1Var var_1CC = ""
  loc_73BA99: LitVarStr var_1BC, vbNullString
  loc_73BA9E: PopAdLdVar
  loc_73BA9F: ILdRfDarg arg_14
  loc_73BAA5: LdPrVar
  loc_73BAA7: LateMemCall
  loc_73BAAF: LitI4 3
  loc_73BAB4: FLdRfVar var_1CC
  loc_73BAB7: ImpAdCallFPR4  = Space()
  loc_73BABC: FLdRfVar var_1CC
  loc_73BABF: FMemLdR4 arg_8(1736)
  loc_73BAC4: CVarStr var_1BC
  loc_73BAC7: ConcatVar var_1EC
  loc_73BACB: LitVarI2 var_20C, 10
  loc_73BAD0: LitI4 &H13
  loc_73BAD5: ILdRf var_90
  loc_73BAD8: ImpAdCallI2 Mid$(, , )
  loc_73BADD: CVarStr var_22C
  loc_73BAE0: ConcatVar var_24C
  loc_73BAE4: LitI4 1
  loc_73BAE9: FLdRfVar var_26C
  loc_73BAEC: ImpAdCallFPR4  = Space()
  loc_73BAF1: FLdRfVar var_26C
  loc_73BAF4: ConcatVar var_28C
  loc_73BAF8: LitVarI2 var_2AC, 8
  loc_73BAFD: LitI4 &H1D
  loc_73BB02: ILdRf var_90
  loc_73BB05: ImpAdCallI2 Mid$(, , )
  loc_73BB0A: CVarStr var_2CC
  loc_73BB0D: ConcatVar var_2EC
  loc_73BB11: LitI4 4
  loc_73BB16: FLdRfVar var_310
  loc_73BB19: ImpAdCallFPR4  = Space()
  loc_73BB1E: FLdRfVar var_310
  loc_73BB21: ConcatVar var_324
  loc_73BB25: LitVarStr var_21C, "("
  loc_73BB2A: ConcatVar var_334
  loc_73BB2E: FMemLdR4 arg_8(1604)
  loc_73BB33: CVarStr var_23C
  loc_73BB36: ConcatVar var_344
  loc_73BB3A: LitVarStr var_25C, ")"
  loc_73BB3F: ConcatVar var_354
  loc_73BB43: PopAdLdVar
  loc_73BB44: ILdRfDarg arg_14
  loc_73BB4A: LdPrVar
  loc_73BB4C: LateMemCall
  loc_73BB52: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_26C = "": var_2AC = "": var_28C = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = ""
  loc_73BB75: LitVarStr var_1BC, vbNullString
  loc_73BB7A: PopAdLdVar
  loc_73BB7B: ILdRfDarg arg_14
  loc_73BB81: LdPrVar
  loc_73BB83: LateMemCall
  loc_73BB8B: LitI4 3
  loc_73BB90: FLdRfVar var_1CC
  loc_73BB93: ImpAdCallFPR4  = Space()
  loc_73BB98: FLdRfVar var_1CC
  loc_73BB9B: LitVarStr var_1BC, "CODIGO"
  loc_73BBA0: ConcatVar var_1EC
  loc_73BBA4: LitI4 2
  loc_73BBA9: FLdRfVar var_20C
  loc_73BBAC: ImpAdCallFPR4  = Space()
  loc_73BBB1: FLdRfVar var_20C
  loc_73BBB4: ConcatVar var_22C
  loc_73BBB8: LitVarStr var_1DC, "CODIGO"
  loc_73BBBD: ConcatVar var_24C
  loc_73BBC1: LitI4 &H19
  loc_73BBC6: FLdRfVar var_26C
  loc_73BBC9: ImpAdCallFPR4  = Space()
  loc_73BBCE: FLdRfVar var_26C
  loc_73BBD1: ConcatVar var_28C
  loc_73BBD5: LitVarStr var_1FC, "VOLUMEN"
  loc_73BBDA: ConcatVar var_2AC
  loc_73BBDE: LitI4 &HA
  loc_73BBE3: FLdRfVar var_2CC
  loc_73BBE6: ImpAdCallFPR4  = Space()
  loc_73BBEB: FLdRfVar var_2CC
  loc_73BBEE: ConcatVar var_2EC
  loc_73BBF2: LitVarStr var_21C, "VOLUMEN"
  loc_73BBF7: ConcatVar var_310
  loc_73BBFB: PopAdLdVar
  loc_73BBFC: ILdRfDarg arg_14
  loc_73BC02: LdPrVar
  loc_73BC04: LateMemCall
  loc_73BC0A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73BC25: LitI4 3
  loc_73BC2A: FLdRfVar var_1CC
  loc_73BC2D: ImpAdCallFPR4  = Space()
  loc_73BC32: FLdRfVar var_1CC
  loc_73BC35: LitVarStr var_1BC, "TANQUE"
  loc_73BC3A: ConcatVar var_1EC
  loc_73BC3E: LitI4 2
  loc_73BC43: FLdRfVar var_20C
  loc_73BC46: ImpAdCallFPR4  = Space()
  loc_73BC4B: FLdRfVar var_20C
  loc_73BC4E: ConcatVar var_22C
  loc_73BC52: LitVarStr var_1DC, "PRODUCTO"
  loc_73BC57: ConcatVar var_24C
  loc_73BC5B: LitI4 2
  loc_73BC60: FLdRfVar var_26C
  loc_73BC63: ImpAdCallFPR4  = Space()
  loc_73BC68: FLdRfVar var_26C
  loc_73BC6B: ConcatVar var_28C
  loc_73BC6F: LitVarStr var_1FC, "DESCRIPCION"
  loc_73BC74: ConcatVar var_2AC
  loc_73BC78: LitI4 &HA
  loc_73BC7D: FLdRfVar var_2CC
  loc_73BC80: ImpAdCallFPR4  = Space()
  loc_73BC85: FLdRfVar var_2CC
  loc_73BC88: ConcatVar var_2EC
  loc_73BC8C: LitVarStr var_21C, "CON RETORNO"
  loc_73BC91: ConcatVar var_310
  loc_73BC95: LitI4 6
  loc_73BC9A: FLdRfVar var_324
  loc_73BC9D: ImpAdCallFPR4  = Space()
  loc_73BCA2: FLdRfVar var_324
  loc_73BCA5: ConcatVar var_334
  loc_73BCA9: LitVarStr var_23C, "SIN RETORNO"
  loc_73BCAE: ConcatVar var_344
  loc_73BCB2: PopAdLdVar
  loc_73BCB3: ILdRfDarg arg_14
  loc_73BCB9: LdPrVar
  loc_73BCBB: LateMemCall
  loc_73BCC1: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = ""
  loc_73BCE2: LitVarStr var_1BC, vbNullString
  loc_73BCE7: PopAdLdVar
  loc_73BCE8: ILdRfDarg arg_14
  loc_73BCEE: LdPrVar
  loc_73BCF0: LateMemCall
  loc_73BCFA: LitI2_Byte 1
  loc_73BCFC: FLdRfVar var_9C
  loc_73BCFF: LitI2_Byte &H10
  loc_73BD01: ForI2 var_4C8
  loc_73BD09: LitI2_Byte 1
  loc_73BD0B: FLdRfVar var_192
  loc_73BD0E: LitI2_Byte 5
  loc_73BD10: ForI2 var_4CC
  loc_73BD18: FLdI2 var_9C
  loc_73BD1B: CI4UI1
  loc_73BD1C: FLdI2 var_192
  loc_73BD1F: CI4UI1
  loc_73BD20: FLdRfVar var_144
  loc_73BD23: AryLdPr
  loc_73BD26: MemLdStr global_0
  loc_73BD29: LitStr vbNullString
  loc_73BD2C: NeStr
  loc_73BD2E: BranchF loc_73C214
  loc_73BD33: LitI2_Byte 1
  loc_73BD35: FStI2 var_194
  loc_73BD3A: LitStr "~~"
  loc_73BD3D: FLdI2 var_194
  loc_73BD40: FLdI2 var_9C
  loc_73BD43: CI4UI1
  loc_73BD44: FLdI2 var_192
  loc_73BD47: CI4UI1
  loc_73BD48: FLdRfVar var_144
  loc_73BD4B: AryLdRf
  loc_73BD4E: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_73BD53: FStStr var_198
  loc_73BD58: ILdRf var_198
  loc_73BD5B: ImpAdCallI2 Trim$()
  loc_73BD60: FStStrNoPop var_1AC
  loc_73BD63: LitStr vbNullString
  loc_73BD66: NeStr
  loc_73BD68: FFree1Str var_1AC
  loc_73BD6B: BranchF loc_73C214
  loc_73BD70: ILdRf arg_14
  loc_73BD73: ImpAdCallI2 IsMissing()
  loc_73BD78: BranchF loc_73BFBD
  loc_73BD7D: LitI4 3
  loc_73BD82: FLdRfVar var_1CC
  loc_73BD85: ImpAdCallFPR4  = Space()
  loc_73BD8A: LitI4 1
  loc_73BD8F: LitI4 1
  loc_73BD94: LitVarStr var_1DC, "#0"
  loc_73BD99: FStVarCopyObj var_1EC
  loc_73BD9C: FLdRfVar var_1EC
  loc_73BD9F: FLdRfVar var_9C
  loc_73BDA2: CVarRef
  loc_73BDA7: ImpAdCallI2 Format$(, )
  loc_73BDAC: FStStr var_498
  loc_73BDAF: LitI4 1
  loc_73BDB4: LitI4 1
  loc_73BDB9: LitVarStr var_1FC, "@@"
  loc_73BDBE: FStVarCopyObj var_22C
  loc_73BDC1: FLdRfVar var_22C
  loc_73BDC4: FLdZeroAd var_498
  loc_73BDC7: CVarStr var_20C
  loc_73BDCA: ImpAdCallI2 Format$(, )
  loc_73BDCF: FStStr var_49C
  loc_73BDD2: LitI4 6
  loc_73BDD7: FLdRfVar var_28C
  loc_73BDDA: ImpAdCallFPR4  = Space()
  loc_73BDDF: LitVarI2 var_2CC, 2
  loc_73BDE4: LitI4 1
  loc_73BDE9: ILdRf var_198
  loc_73BDEC: ImpAdCallI2 Mid$(, , )
  loc_73BDF1: FStStr var_4A0
  loc_73BDF4: LitI4 1
  loc_73BDF9: LitI4 1
  loc_73BDFE: LitVarStr var_23C, "#0"
  loc_73BE03: FStVarCopyObj var_310
  loc_73BE06: FLdRfVar var_310
  loc_73BE09: FLdZeroAd var_4A0
  loc_73BE0C: CVarStr var_2EC
  loc_73BE0F: ImpAdCallI2 Format$(, )
  loc_73BE14: FStStr var_4A4
  loc_73BE17: LitI4 1
  loc_73BE1C: LitI4 1
  loc_73BE21: LitVarStr var_25C, "@@"
  loc_73BE26: FStVarCopyObj var_334
  loc_73BE29: FLdRfVar var_334
  loc_73BE2C: FLdZeroAd var_4A4
  loc_73BE2F: CVarStr var_324
  loc_73BE32: ImpAdCallI2 Format$(, )
  loc_73BE37: FStStr var_4A8
  loc_73BE3A: LitI4 8
  loc_73BE3F: FLdRfVar var_364
  loc_73BE42: ImpAdCallFPR4  = Space()
  loc_73BE47: LitVarI2 var_384, 2
  loc_73BE4C: LitI4 1
  loc_73BE51: ILdRf var_198
  loc_73BE54: ImpAdCallI2 Mid$(, , )
  loc_73BE59: FStStr var_4AC
  loc_73BE5C: FLdRfVar var_2F0
  loc_73BE5F: FLdZeroAd var_4AC
  loc_73BE62: FStStrNoPop var_1AC
  loc_73BE65: CI2Str
  loc_73BE67: ImpAdLdRf MemVar_74A220
  loc_73BE6A: NewIfNullPr clsProducts
  loc_73BE72: LitI4 &H14
  loc_73BE77: FLdZeroAd var_2F0
  loc_73BE7A: CVarStr var_394
  loc_73BE7D: FLdRfVar var_3A4
  loc_73BE80: ImpAdCallFPR4  = Left(, )
  loc_73BE85: LitI2_Byte &HFF
  loc_73BE87: PopTmpLdAd2 var_482
  loc_73BE8A: LitI2_Byte &H14
  loc_73BE8C: PopTmpLdAd2 var_1A4
  loc_73BE8F: LitStr " "
  loc_73BE92: FStStrCopy var_490
  loc_73BE95: FLdRfVar var_490
  loc_73BE98: FLdRfVar var_3A4
  loc_73BE9B: CStrVarTmp
  loc_73BE9C: PopTmpLdAdStr
  loc_73BEA0: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73BEA5: FStStr var_4B0
  loc_73BEA8: LitI4 3
  loc_73BEAD: FLdRfVar var_3D4
  loc_73BEB0: ImpAdCallFPR4  = Space()
  loc_73BEB5: LitI4 9
  loc_73BEBA: ILdRf var_198
  loc_73BEBD: ImpAdCallI2 Right$(, )
  loc_73BEC2: FStStr var_4B4
  loc_73BEC5: LitI4 2
  loc_73BECA: FLdRfVar var_424
  loc_73BECD: ImpAdCallFPR4  = Space()
  loc_73BED2: LitVarStr var_444, vbNullString
  loc_73BED7: FStVarCopyObj var_4FC
  loc_73BEDA: FLdRfVar var_4FC
  loc_73BEDD: FLdRfVar var_424
  loc_73BEE0: LitVarStr var_29C, "("
  loc_73BEE5: ConcatVar var_434
  loc_73BEE9: FLdI2 var_192
  loc_73BEEC: CVarI2 var_2BC
  loc_73BEEF: ConcatVar var_4DC
  loc_73BEF3: LitVarStr var_2DC, ")"
  loc_73BEF8: ConcatVar var_4EC
  loc_73BEFC: FLdRfVar var_19A
  loc_73BEFF: CVarRef
  loc_73BF04: FLdRfVar var_50C
  loc_73BF07: ImpAdCallFPR4  = IIf(, , )
  loc_73BF0C: FLdRfVar var_1CC
  loc_73BF0F: FLdZeroAd var_49C
  loc_73BF12: CVarStr var_24C
  loc_73BF15: ConcatVar var_26C
  loc_73BF19: FLdRfVar var_28C
  loc_73BF1C: ConcatVar var_2AC
  loc_73BF20: FLdZeroAd var_4A8
  loc_73BF23: CVarStr var_344
  loc_73BF26: ConcatVar var_354
  loc_73BF2A: FLdRfVar var_364
  loc_73BF2D: ConcatVar var_374
  loc_73BF31: FLdZeroAd var_4B0
  loc_73BF34: CVarStr var_3B4
  loc_73BF37: ConcatVar var_3C4
  loc_73BF3B: FLdRfVar var_3D4
  loc_73BF3E: ConcatVar var_3E4
  loc_73BF42: FLdZeroAd var_4B4
  loc_73BF45: CVarStr var_3F4
  loc_73BF48: ConcatVar var_414
  loc_73BF4C: FLdRfVar var_50C
  loc_73BF4F: ConcatVar var_51C
  loc_73BF53: ILdRf var_190
  loc_73BF56: PrintObject
  loc_73BF5C: FFreeStr var_1AC = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4A8 = "": var_4AC = "": var_4B0 = ""
  loc_73BF75: FFreeVar var_414 = "": var_50C = "": var_51C = "": var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_2AC = "": var_344 = "": var_354 = "": var_364 = "": var_384 = "": var_394 = "": var_3A4 = "": var_374 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_424 = "": var_434 = "": var_4DC = "": var_4EC = ""
  loc_73BFBA: Branch loc_73C1E4
  loc_73BFC1: LitI4 1
  loc_73BFC6: LitI4 1
  loc_73BFCB: LitVarStr var_1DC, "#0"
  loc_73BFD0: FStVarCopyObj var_1EC
  loc_73BFD3: FLdRfVar var_1EC
  loc_73BFD6: FLdRfVar var_9C
  loc_73BFD9: CVarRef
  loc_73BFDE: ImpAdCallI2 Format$(, )
  loc_73BFE3: FStStr var_498
  loc_73BFE6: LitVarI2 var_2CC, 2
  loc_73BFEB: LitI4 1
  loc_73BFF0: ILdRf var_198
  loc_73BFF3: ImpAdCallI2 Mid$(, , )
  loc_73BFF8: FStStr var_49C
  loc_73BFFB: LitI4 1
  loc_73C000: LitI4 1
  loc_73C005: LitVarStr var_23C, "#0"
  loc_73C00A: FStVarCopyObj var_310
  loc_73C00D: FLdRfVar var_310
  loc_73C010: FLdZeroAd var_49C
  loc_73C013: CVarStr var_2EC
  loc_73C016: ImpAdCallI2 Format$(, )
  loc_73C01B: FStStr var_4A0
  loc_73C01E: LitVarI2 var_384, 2
  loc_73C023: LitI4 1
  loc_73C028: ILdRf var_198
  loc_73C02B: ImpAdCallI2 Mid$(, , )
  loc_73C030: FStStr var_4A4
  loc_73C033: FLdRfVar var_2F0
  loc_73C036: FLdZeroAd var_4A4
  loc_73C039: FStStrNoPop var_1AC
  loc_73C03C: CI2Str
  loc_73C03E: ImpAdLdRf MemVar_74A220
  loc_73C041: NewIfNullPr clsProducts
  loc_73C049: LitI4 &H14
  loc_73C04E: FLdZeroAd var_2F0
  loc_73C051: CVarStr var_394
  loc_73C054: FLdRfVar var_3A4
  loc_73C057: ImpAdCallFPR4  = Left(, )
  loc_73C05C: LitI4 2
  loc_73C061: FLdRfVar var_424
  loc_73C064: ImpAdCallFPR4  = Space()
  loc_73C069: LitI4 3
  loc_73C06E: FLdRfVar var_1CC
  loc_73C071: ImpAdCallFPR4  = Space()
  loc_73C076: FLdRfVar var_1CC
  loc_73C079: LitI4 1
  loc_73C07E: LitI4 1
  loc_73C083: LitVarStr var_1FC, "@@"
  loc_73C088: FStVarCopyObj var_22C
  loc_73C08B: FLdRfVar var_22C
  loc_73C08E: FLdZeroAd var_498
  loc_73C091: CVarStr var_20C
  loc_73C094: ImpAdCallI2 Format$(, )
  loc_73C099: CVarStr var_24C
  loc_73C09C: ConcatVar var_26C
  loc_73C0A0: LitI4 6
  loc_73C0A5: FLdRfVar var_28C
  loc_73C0A8: ImpAdCallFPR4  = Space()
  loc_73C0AD: FLdRfVar var_28C
  loc_73C0B0: ConcatVar var_2AC
  loc_73C0B4: LitI4 1
  loc_73C0B9: LitI4 1
  loc_73C0BE: LitVarStr var_25C, "@@"
  loc_73C0C3: FStVarCopyObj var_334
  loc_73C0C6: FLdRfVar var_334
  loc_73C0C9: FLdZeroAd var_4A0
  loc_73C0CC: CVarStr var_324
  loc_73C0CF: ImpAdCallI2 Format$(, )
  loc_73C0D4: CVarStr var_344
  loc_73C0D7: ConcatVar var_354
  loc_73C0DB: LitI4 8
  loc_73C0E0: FLdRfVar var_364
  loc_73C0E3: ImpAdCallFPR4  = Space()
  loc_73C0E8: FLdRfVar var_364
  loc_73C0EB: ConcatVar var_374
  loc_73C0EF: LitI2_Byte &HFF
  loc_73C0F1: PopTmpLdAd2 var_482
  loc_73C0F4: LitI2_Byte &H14
  loc_73C0F6: PopTmpLdAd2 var_1A4
  loc_73C0F9: LitStr " "
  loc_73C0FC: FStStrCopy var_490
  loc_73C0FF: FLdRfVar var_490
  loc_73C102: FLdRfVar var_3A4
  loc_73C105: CStrVarTmp
  loc_73C106: PopTmpLdAdStr
  loc_73C10A: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73C10F: CVarStr var_3B4
  loc_73C112: ConcatVar var_3C4
  loc_73C116: LitI4 3
  loc_73C11B: FLdRfVar var_3D4
  loc_73C11E: ImpAdCallFPR4  = Space()
  loc_73C123: FLdRfVar var_3D4
  loc_73C126: ConcatVar var_3E4
  loc_73C12A: LitI4 9
  loc_73C12F: ILdRf var_198
  loc_73C132: ImpAdCallI2 Right$(, )
  loc_73C137: CVarStr var_3F4
  loc_73C13A: ConcatVar var_414
  loc_73C13E: LitVarStr var_444, vbNullString
  loc_73C143: FStVarCopyObj var_4FC
  loc_73C146: FLdRfVar var_4FC
  loc_73C149: FLdRfVar var_424
  loc_73C14C: LitVarStr var_29C, "("
  loc_73C151: ConcatVar var_434
  loc_73C155: FLdI2 var_192
  loc_73C158: CVarI2 var_2BC
  loc_73C15B: ConcatVar var_4DC
  loc_73C15F: LitVarStr var_2DC, ")"
  loc_73C164: ConcatVar var_4EC
  loc_73C168: FLdRfVar var_19A
  loc_73C16B: CVarRef
  loc_73C170: FLdRfVar var_50C
  loc_73C173: ImpAdCallFPR4  = IIf(, , )
  loc_73C178: FLdRfVar var_50C
  loc_73C17B: ConcatVar var_51C
  loc_73C17F: PopAdLdVar
  loc_73C180: ILdRfDarg arg_14
  loc_73C186: LdPrVar
  loc_73C188: LateMemCall
  loc_73C18E: FFreeStr var_1AC = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = ""
  loc_73C19F: FFreeVar var_414 = "": var_50C = "": var_51C = "": var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_2AC = "": var_344 = "": var_354 = "": var_364 = "": var_384 = "": var_394 = "": var_3A4 = "": var_374 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_424 = "": var_434 = "": var_4DC = "": var_4EC = ""
  loc_73C1E8: FLdI2 var_194
  loc_73C1EB: LitI2_Byte 1
  loc_73C1ED: AddI2
  loc_73C1EE: FStI2 var_194
  loc_73C1F3: LitStr "~~"
  loc_73C1F6: FLdI2 var_194
  loc_73C1F9: FLdI2 var_9C
  loc_73C1FC: CI4UI1
  loc_73C1FD: FLdI2 var_192
  loc_73C200: CI4UI1
  loc_73C201: FLdRfVar var_144
  loc_73C204: AryLdRf
  loc_73C207: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_73C20C: FStStr var_198
  loc_73C211: Branch loc_73BD56
  loc_73C218: FLdRfVar var_192
  loc_73C21B: NextI2 var_4CC, loc_73BD16
  loc_73C222: FLdRfVar var_9C
  loc_73C225: NextI2 var_4C8, loc_73BD07
  loc_73C22C: LitI2_Byte 1
  loc_73C22E: FLdRfVar var_9C
  loc_73C231: LitI2_Byte &HA
  loc_73C233: ForI2 var_530
  loc_73C23B: LitI2_Byte 1
  loc_73C23D: FLdRfVar var_192
  loc_73C240: LitI2_Byte 5
  loc_73C242: ForI2 var_534
  loc_73C24A: FLdI2 var_9C
  loc_73C24D: CI4UI1
  loc_73C24E: FLdI2 var_192
  loc_73C251: CI4UI1
  loc_73C252: FLdRfVar var_164
  loc_73C255: AryLdPr
  loc_73C258: MemLdStr global_0
  loc_73C25B: LitStr vbNullString
  loc_73C25E: NeStr
  loc_73C260: BranchF loc_73C591
  loc_73C265: ILdRf arg_14
  loc_73C268: ImpAdCallI2 IsMissing()
  loc_73C26D: BranchF loc_73C405
  loc_73C272: LitI4 &HB
  loc_73C277: FLdRfVar var_1CC
  loc_73C27A: ImpAdCallFPR4  = Space()
  loc_73C27F: LitI4 1
  loc_73C284: LitI4 1
  loc_73C289: LitVarStr var_1DC, "#0"
  loc_73C28E: FStVarCopyObj var_1EC
  loc_73C291: FLdRfVar var_1EC
  loc_73C294: FLdRfVar var_9C
  loc_73C297: CVarRef
  loc_73C29C: FLdRfVar var_20C
  loc_73C29F: ImpAdCallFPR4  = Format(, )
  loc_73C2A4: LitI4 1
  loc_73C2A9: LitI4 1
  loc_73C2AE: LitVarStr var_1FC, "@@"
  loc_73C2B3: FStVarCopyObj var_22C
  loc_73C2B6: FLdRfVar var_22C
  loc_73C2B9: FLdRfVar var_20C
  loc_73C2BC: FLdRfVar var_24C
  loc_73C2BF: ImpAdCallFPR4  = Format(, )
  loc_73C2C4: LitI4 8
  loc_73C2C9: FLdRfVar var_28C
  loc_73C2CC: ImpAdCallFPR4  = Space()
  loc_73C2D1: FLdRfVar var_1AC
  loc_73C2D4: FLdI2 var_9C
  loc_73C2D7: ImpAdLdRf MemVar_74A220
  loc_73C2DA: NewIfNullPr clsProducts
  loc_73C2E2: LitI4 &H14
  loc_73C2E7: FLdZeroAd var_1AC
  loc_73C2EA: CVarStr var_2CC
  loc_73C2ED: FLdRfVar var_2EC
  loc_73C2F0: ImpAdCallFPR4  = Left(, )
  loc_73C2F5: LitI2_Byte &HFF
  loc_73C2F7: PopTmpLdAd2 var_482
  loc_73C2FA: LitI2_Byte &H14
  loc_73C2FC: PopTmpLdAd2 var_1A4
  loc_73C2FF: LitStr " "
  loc_73C302: FStStrCopy var_480
  loc_73C305: FLdRfVar var_480
  loc_73C308: FLdRfVar var_2EC
  loc_73C30B: CStrVarTmp
  loc_73C30C: PopTmpLdAdStr
  loc_73C310: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73C315: FStStr var_490
  loc_73C318: LitI4 &H14
  loc_73C31D: FLdRfVar var_334
  loc_73C320: ImpAdCallFPR4  = Space()
  loc_73C325: LitI4 9
  loc_73C32A: FLdI2 var_9C
  loc_73C32D: CI4UI1
  loc_73C32E: FLdI2 var_192
  loc_73C331: CI4UI1
  loc_73C332: FLdRfVar var_164
  loc_73C335: AryLdPr
  loc_73C338: MemLdStr global_0
  loc_73C33B: ImpAdCallI2 Right$(, )
  loc_73C340: FStStr var_498
  loc_73C343: LitI4 2
  loc_73C348: FLdRfVar var_374
  loc_73C34B: ImpAdCallFPR4  = Space()
  loc_73C350: LitVarStr var_29C, vbNullString
  loc_73C355: FStVarCopyObj var_3B4
  loc_73C358: FLdRfVar var_3B4
  loc_73C35B: FLdRfVar var_374
  loc_73C35E: LitVarStr var_21C, "("
  loc_73C363: ConcatVar var_384
  loc_73C367: FLdI2 var_192
  loc_73C36A: CVarI2 var_23C
  loc_73C36D: ConcatVar var_394
  loc_73C371: LitVarStr var_25C, ")"
  loc_73C376: ConcatVar var_3A4
  loc_73C37A: FLdRfVar var_19A
  loc_73C37D: CVarRef
  loc_73C382: FLdRfVar var_3C4
  loc_73C385: ImpAdCallFPR4  = IIf(, , )
  loc_73C38A: FLdRfVar var_1CC
  loc_73C38D: FLdRfVar var_24C
  loc_73C390: ConcatVar var_26C
  loc_73C394: FLdRfVar var_28C
  loc_73C397: ConcatVar var_2AC
  loc_73C39B: FLdZeroAd var_490
  loc_73C39E: CVarStr var_310
  loc_73C3A1: ConcatVar var_324
  loc_73C3A5: FLdRfVar var_334
  loc_73C3A8: ConcatVar var_344
  loc_73C3AC: FLdZeroAd var_498
  loc_73C3AF: CVarStr var_354
  loc_73C3B2: ConcatVar var_364
  loc_73C3B6: FLdRfVar var_3C4
  loc_73C3B9: ConcatVar var_3D4
  loc_73C3BD: ILdRf var_190
  loc_73C3C0: PrintObject
  loc_73C3C6: FFreeStr var_2F0 = "": var_480 = "": var_490 = ""
  loc_73C3D1: FFreeVar var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_2AC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_364 = "": var_3C4 = ""
  loc_73C402: Branch loc_73C58F
  loc_73C409: LitI4 1
  loc_73C40E: LitI4 1
  loc_73C413: LitVarStr var_1DC, "#0"
  loc_73C418: FStVarCopyObj var_1EC
  loc_73C41B: FLdRfVar var_1EC
  loc_73C41E: FLdRfVar var_9C
  loc_73C421: CVarRef
  loc_73C426: FLdRfVar var_20C
  loc_73C429: ImpAdCallFPR4  = Format(, )
  loc_73C42E: FLdRfVar var_1AC
  loc_73C431: FLdI2 var_9C
  loc_73C434: ImpAdLdRf MemVar_74A220
  loc_73C437: NewIfNullPr clsProducts
  loc_73C43F: LitI4 &H14
  loc_73C444: FLdZeroAd var_1AC
  loc_73C447: CVarStr var_2CC
  loc_73C44A: FLdRfVar var_2EC
  loc_73C44D: ImpAdCallFPR4  = Left(, )
  loc_73C452: LitI4 2
  loc_73C457: FLdRfVar var_374
  loc_73C45A: ImpAdCallFPR4  = Space()
  loc_73C45F: LitI4 &HB
  loc_73C464: FLdRfVar var_1CC
  loc_73C467: ImpAdCallFPR4  = Space()
  loc_73C46C: FLdRfVar var_1CC
  loc_73C46F: LitI4 1
  loc_73C474: LitI4 1
  loc_73C479: LitVarStr var_1FC, "@@"
  loc_73C47E: FStVarCopyObj var_22C
  loc_73C481: FLdRfVar var_22C
  loc_73C484: FLdRfVar var_20C
  loc_73C487: FLdRfVar var_24C
  loc_73C48A: ImpAdCallFPR4  = Format(, )
  loc_73C48F: FLdRfVar var_24C
  loc_73C492: ConcatVar var_26C
  loc_73C496: LitI4 8
  loc_73C49B: FLdRfVar var_28C
  loc_73C49E: ImpAdCallFPR4  = Space()
  loc_73C4A3: FLdRfVar var_28C
  loc_73C4A6: ConcatVar var_2AC
  loc_73C4AA: LitI2_Byte &HFF
  loc_73C4AC: PopTmpLdAd2 var_482
  loc_73C4AF: LitI2_Byte &H14
  loc_73C4B1: PopTmpLdAd2 var_1A4
  loc_73C4B4: LitStr " "
  loc_73C4B7: FStStrCopy var_480
  loc_73C4BA: FLdRfVar var_480
  loc_73C4BD: FLdRfVar var_2EC
  loc_73C4C0: CStrVarTmp
  loc_73C4C1: PopTmpLdAdStr
  loc_73C4C5: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73C4CA: CVarStr var_310
  loc_73C4CD: ConcatVar var_324
  loc_73C4D1: LitI4 &H14
  loc_73C4D6: FLdRfVar var_334
  loc_73C4D9: ImpAdCallFPR4  = Space()
  loc_73C4DE: FLdRfVar var_334
  loc_73C4E1: ConcatVar var_344
  loc_73C4E5: LitI4 9
  loc_73C4EA: FLdI2 var_9C
  loc_73C4ED: CI4UI1
  loc_73C4EE: FLdI2 var_192
  loc_73C4F1: CI4UI1
  loc_73C4F2: FLdRfVar var_164
  loc_73C4F5: AryLdPr
  loc_73C4F8: MemLdStr global_0
  loc_73C4FB: ImpAdCallI2 Right$(, )
  loc_73C500: CVarStr var_354
  loc_73C503: ConcatVar var_364
  loc_73C507: LitVarStr var_29C, vbNullString
  loc_73C50C: FStVarCopyObj var_3B4
  loc_73C50F: FLdRfVar var_3B4
  loc_73C512: FLdRfVar var_374
  loc_73C515: LitVarStr var_21C, "("
  loc_73C51A: ConcatVar var_384
  loc_73C51E: FLdI2 var_192
  loc_73C521: CVarI2 var_23C
  loc_73C524: ConcatVar var_394
  loc_73C528: LitVarStr var_25C, ")"
  loc_73C52D: ConcatVar var_3A4
  loc_73C531: FLdRfVar var_19A
  loc_73C534: CVarRef
  loc_73C539: FLdRfVar var_3C4
  loc_73C53C: ImpAdCallFPR4  = IIf(, , )
  loc_73C541: FLdRfVar var_3C4
  loc_73C544: ConcatVar var_3D4
  loc_73C548: PopAdLdVar
  loc_73C549: ILdRfDarg arg_14
  loc_73C54F: LdPrVar
  loc_73C551: LateMemCall
  loc_73C557: FFreeStr var_2F0 = ""
  loc_73C55E: FFreeVar var_1EC = "": var_20C = "": var_22C = "": var_1CC = "": var_24C = "": var_26C = "": var_28C = "": var_2CC = "": var_2EC = "": var_2AC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_364 = "": var_3C4 = ""
  loc_73C595: FLdRfVar var_192
  loc_73C598: NextI2 var_534, loc_73C248
  loc_73C59F: FLdRfVar var_9C
  loc_73C5A2: NextI2 var_530, loc_73C239
  loc_73C5A9: ILdRf arg_14
  loc_73C5AC: ImpAdCallI2 IsMissing()
  loc_73C5B1: BranchF loc_73C5D3
  loc_73C5B6: LitStr " "
  loc_73C5B9: ILdRf var_190
  loc_73C5BC: PrintObject
  loc_73C5C4: LitStr " "
  loc_73C5C7: ILdRf var_190
  loc_73C5CA: PrintObject
  loc_73C5D0: Branch loc_73C601
  loc_73C5D7: LitVarStr var_1BC, " "
  loc_73C5DC: PopAdLdVar
  loc_73C5DD: ILdRfDarg arg_14
  loc_73C5E3: LdPrVar
  loc_73C5E5: LateMemCall
  loc_73C5ED: LitVarStr var_1BC, " "
  loc_73C5F2: PopAdLdVar
  loc_73C5F3: ILdRfDarg arg_14
  loc_73C5F9: LdPrVar
  loc_73C5FB: LateMemCall
  loc_73C607: FLdRfVar var_2F0
  loc_73C60A: LitVar_Missing var_2EC
  loc_73C60D: LitVar_Missing var_2CC
  loc_73C610: LitVar_Missing var_2AC
  loc_73C613: LitVar_Missing var_28C
  loc_73C616: LitVar_Missing var_26C
  loc_73C619: LitVar_Missing var_24C
  loc_73C61C: LitVar_Missing var_22C
  loc_73C61F: LitVar_Missing var_20C
  loc_73C622: LitVar_Missing var_1EC
  loc_73C625: LitVar_Missing var_1CC
  loc_73C628: LitStr "AJUSTES DIFERENCIALES"
  loc_73C62B: FStStrCopy var_1AC
  loc_73C62E: FLdRfVar var_1AC
  loc_73C631: LitI4 &H9A
  loc_73C636: PopTmpLdAdStr var_1A8
  loc_73C639: LitI2_Byte 9
  loc_73C63B: PopTmpLdAd2 var_1A4
  loc_73C63E: ImpAdLdRf MemVar_74C7D0
  loc_73C641: NewIfNullPr clsMsg
  loc_73C644: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73C649: FLdZeroAd var_2F0
  loc_73C64C: FMemStStr arg_8(1752)
  loc_73C652: FFree1Str var_1AC
  loc_73C655: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C66E: FLdRfVar var_2F0
  loc_73C671: LitVar_Missing var_2EC
  loc_73C674: LitVar_Missing var_2CC
  loc_73C677: LitVar_Missing var_2AC
  loc_73C67A: LitVar_Missing var_28C
  loc_73C67D: LitVar_Missing var_26C
  loc_73C680: LitVar_Missing var_24C
  loc_73C683: LitVar_Missing var_22C
  loc_73C686: LitVar_Missing var_20C
  loc_73C689: LitVar_Missing var_1EC
  loc_73C68C: LitVar_Missing var_1CC
  loc_73C68F: LitStr "FECHA / HORA: "
  loc_73C692: FStStrCopy var_1AC
  loc_73C695: FLdRfVar var_1AC
  loc_73C698: LitI4 &H9B
  loc_73C69D: PopTmpLdAdStr var_1A8
  loc_73C6A0: LitI2_Byte 9
  loc_73C6A2: PopTmpLdAd2 var_1A4
  loc_73C6A5: ImpAdLdRf MemVar_74C7D0
  loc_73C6A8: NewIfNullPr clsMsg
  loc_73C6AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73C6B0: FLdZeroAd var_2F0
  loc_73C6B3: FMemStStr arg_8(1756)
  loc_73C6B9: FFree1Str var_1AC
  loc_73C6BC: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C6D5: FLdRfVar var_2F0
  loc_73C6D8: LitVar_Missing var_2EC
  loc_73C6DB: LitVar_Missing var_2CC
  loc_73C6DE: LitVar_Missing var_2AC
  loc_73C6E1: LitVar_Missing var_28C
  loc_73C6E4: LitVar_Missing var_26C
  loc_73C6E7: LitVar_Missing var_24C
  loc_73C6EA: LitVar_Missing var_22C
  loc_73C6ED: LitVar_Missing var_20C
  loc_73C6F0: LitVar_Missing var_1EC
  loc_73C6F3: LitVar_Missing var_1CC
  loc_73C6F6: LitStr "CODIGO (NIVEL)"
  loc_73C6F9: FStStrCopy var_1AC
  loc_73C6FC: FLdRfVar var_1AC
  loc_73C6FF: LitI4 &H9C
  loc_73C704: PopTmpLdAdStr var_1A8
  loc_73C707: LitI2_Byte 9
  loc_73C709: PopTmpLdAd2 var_1A4
  loc_73C70C: ImpAdLdRf MemVar_74C7D0
  loc_73C70F: NewIfNullPr clsMsg
  loc_73C712: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73C717: FLdZeroAd var_2F0
  loc_73C71A: FMemStStr arg_8(1760)
  loc_73C720: FFree1Str var_1AC
  loc_73C723: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C73C: FLdRfVar var_2F0
  loc_73C73F: LitVar_Missing var_2EC
  loc_73C742: LitVar_Missing var_2CC
  loc_73C745: LitVar_Missing var_2AC
  loc_73C748: LitVar_Missing var_28C
  loc_73C74B: LitVar_Missing var_26C
  loc_73C74E: LitVar_Missing var_24C
  loc_73C751: LitVar_Missing var_22C
  loc_73C754: LitVar_Missing var_20C
  loc_73C757: LitVar_Missing var_1EC
  loc_73C75A: LitVar_Missing var_1CC
  loc_73C75D: LitStr "VOL.VENTA"
  loc_73C760: FStStrCopy var_1AC
  loc_73C763: FLdRfVar var_1AC
  loc_73C766: LitI4 &H9D
  loc_73C76B: PopTmpLdAdStr var_1A8
  loc_73C76E: LitI2_Byte 9
  loc_73C770: PopTmpLdAd2 var_1A4
  loc_73C773: ImpAdLdRf MemVar_74C7D0
  loc_73C776: NewIfNullPr clsMsg
  loc_73C779: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73C77E: FLdZeroAd var_2F0
  loc_73C781: FMemStStr arg_8(1764)
  loc_73C787: FFree1Str var_1AC
  loc_73C78A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C7A3: FLdRfVar var_2F0
  loc_73C7A6: LitVar_Missing var_2EC
  loc_73C7A9: LitVar_Missing var_2CC
  loc_73C7AC: LitVar_Missing var_2AC
  loc_73C7AF: LitVar_Missing var_28C
  loc_73C7B2: LitVar_Missing var_26C
  loc_73C7B5: LitVar_Missing var_24C
  loc_73C7B8: LitVar_Missing var_22C
  loc_73C7BB: LitVar_Missing var_20C
  loc_73C7BE: LitVar_Missing var_1EC
  loc_73C7C1: LitVar_Missing var_1CC
  loc_73C7C4: LitStr "RAZON SOCIAL CLIENTE"
  loc_73C7C7: FStStrCopy var_1AC
  loc_73C7CA: FLdRfVar var_1AC
  loc_73C7CD: LitI4 &H9E
  loc_73C7D2: PopTmpLdAdStr var_1A8
  loc_73C7D5: LitI2_Byte 9
  loc_73C7D7: PopTmpLdAd2 var_1A4
  loc_73C7DA: ImpAdLdRf MemVar_74C7D0
  loc_73C7DD: NewIfNullPr clsMsg
  loc_73C7E0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73C7E5: FLdZeroAd var_2F0
  loc_73C7E8: FMemStStr arg_8(1768)
  loc_73C7EE: FFree1Str var_1AC
  loc_73C7F1: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C80C: FLdRfVar var_184
  loc_73C80F: ImpAdCallI2 Unknown_5E01B8()
  loc_73C814: BranchF loc_73D2F9
  loc_73C819: ILdRf arg_14
  loc_73C81C: ImpAdCallI2 IsMissing()
  loc_73C821: BranchF loc_73CA52
  loc_73C826: LitStr " "
  loc_73C829: ILdRf var_190
  loc_73C82C: PrintObject
  loc_73C834: LitI2_Byte &H50
  loc_73C836: FMemLdR4 arg_8(1752)
  loc_73C83B: FLdRfVar var_1CC
  loc_73C83E: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73C843: FLdRfVar var_1CC
  loc_73C846: ILdRf var_190
  loc_73C849: PrintObject
  loc_73C84F: FFree1Var var_1CC = ""
  loc_73C854: LitI4 3
  loc_73C859: FLdRfVar var_1CC
  loc_73C85C: ImpAdCallFPR4  = Space()
  loc_73C861: LitVarI2 var_20C, 10
  loc_73C866: LitI4 &H13
  loc_73C86B: ILdRf var_90
  loc_73C86E: ImpAdCallI2 Mid$(, , )
  loc_73C873: FStStr var_1AC
  loc_73C876: LitVarI2 var_28C, 8
  loc_73C87B: LitI4 &H1D
  loc_73C880: ILdRf var_90
  loc_73C883: ImpAdCallI2 Mid$(, , )
  loc_73C888: FStStr var_2F0
  loc_73C88B: FLdRfVar var_1CC
  loc_73C88E: FMemLdR4 arg_8(1756)
  loc_73C893: CVarStr var_1BC
  loc_73C896: ConcatVar var_1EC
  loc_73C89A: FLdZeroAd var_1AC
  loc_73C89D: CVarStr var_22C
  loc_73C8A0: ConcatVar var_24C
  loc_73C8A4: LitVarStr var_1FC, " . "
  loc_73C8A9: ConcatVar var_26C
  loc_73C8AD: FLdZeroAd var_2F0
  loc_73C8B0: CVarStr var_2AC
  loc_73C8B3: ConcatVar var_2CC
  loc_73C8B7: ILdRf var_190
  loc_73C8BA: PrintObject
  loc_73C8C0: FFreeStr var_1AC = ""
  loc_73C8C7: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = ""
  loc_73C8DE: LitStr " "
  loc_73C8E1: ILdRf var_190
  loc_73C8E4: PrintObject
  loc_73C8EC: LitI4 3
  loc_73C8F1: FLdRfVar var_1CC
  loc_73C8F4: ImpAdCallFPR4  = Space()
  loc_73C8F9: LitI4 &H16
  loc_73C8FE: FLdRfVar var_20C
  loc_73C901: ImpAdCallFPR4  = Space()
  loc_73C906: FMemLdR4 arg_8(1436)
  loc_73C90B: LitStr "        "
  loc_73C90E: ConcatStr
  loc_73C90F: CVarStr var_24C
  loc_73C912: FMemLdRf unk_43B66D
  loc_73C917: CVarRef
  loc_73C91C: FLdRfVar var_19A
  loc_73C91F: CVarRef
  loc_73C924: FLdRfVar var_26C
  loc_73C927: ImpAdCallFPR4  = IIf(, , )
  loc_73C92C: LitI4 4
  loc_73C931: FLdRfVar var_2AC
  loc_73C934: ImpAdCallFPR4  = Space()
  loc_73C939: FLdRfVar var_1CC
  loc_73C93C: FMemLdR4 arg_8(1432)
  loc_73C941: CVarStr var_1BC
  loc_73C944: ConcatVar var_1EC
  loc_73C948: FLdRfVar var_20C
  loc_73C94B: ConcatVar var_22C
  loc_73C94F: FLdRfVar var_26C
  loc_73C952: ConcatVar var_28C
  loc_73C956: FLdRfVar var_2AC
  loc_73C959: ConcatVar var_2CC
  loc_73C95D: FMemLdR4 arg_8(1764)
  loc_73C962: CVarStr var_21C
  loc_73C965: ConcatVar var_2EC
  loc_73C969: ILdRf var_190
  loc_73C96C: PrintObject
  loc_73C972: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73C98B: LitI4 3
  loc_73C990: FLdRfVar var_1CC
  loc_73C993: ImpAdCallFPR4  = Space()
  loc_73C998: LitI4 6
  loc_73C99D: FLdRfVar var_20C
  loc_73C9A0: ImpAdCallFPR4  = Space()
  loc_73C9A5: LitI4 6
  loc_73C9AA: FLdRfVar var_26C
  loc_73C9AD: ImpAdCallFPR4  = Space()
  loc_73C9B2: LitI4 &HD
  loc_73C9B7: FLdRfVar var_2CC
  loc_73C9BA: ImpAdCallFPR4  = Space()
  loc_73C9BF: LitI4 4
  loc_73C9C4: FLdRfVar var_324
  loc_73C9C7: ImpAdCallFPR4  = Space()
  loc_73C9CC: FLdRfVar var_1CC
  loc_73C9CF: FMemLdR4 arg_8(1452)
  loc_73C9D4: CVarStr var_1BC
  loc_73C9D7: ConcatVar var_1EC
  loc_73C9DB: FLdRfVar var_20C
  loc_73C9DE: ConcatVar var_22C
  loc_73C9E2: FMemLdR4 arg_8(1440)
  loc_73C9E7: CVarStr var_1DC
  loc_73C9EA: ConcatVar var_24C
  loc_73C9EE: FLdRfVar var_26C
  loc_73C9F1: ConcatVar var_28C
  loc_73C9F5: FMemLdR4 arg_8(1444)
  loc_73C9FA: CVarStr var_1FC
  loc_73C9FD: ConcatVar var_2AC
  loc_73CA01: FLdRfVar var_2CC
  loc_73CA04: ConcatVar var_2EC
  loc_73CA08: FMemLdR4 arg_8(1684)
  loc_73CA0D: CVarStr var_21C
  loc_73CA10: ConcatVar var_310
  loc_73CA14: FLdRfVar var_324
  loc_73CA17: ConcatVar var_334
  loc_73CA1B: FMemLdR4 arg_8(1768)
  loc_73CA20: CVarStr var_23C
  loc_73CA23: ConcatVar var_344
  loc_73CA27: ILdRf var_190
  loc_73CA2A: PrintObject
  loc_73CA30: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = ""
  loc_73CA4F: Branch loc_73CCAA
  loc_73CA56: LitVarStr var_1BC, " "
  loc_73CA5B: PopAdLdVar
  loc_73CA5C: ILdRfDarg arg_14
  loc_73CA62: LdPrVar
  loc_73CA64: LateMemCall
  loc_73CA6C: LitI2_Byte &H50
  loc_73CA6E: FMemLdR4 arg_8(1752)
  loc_73CA73: FLdRfVar var_1CC
  loc_73CA76: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73CA7B: FLdVar var_1CC
  loc_73CA7F: ILdRfDarg arg_14
  loc_73CA85: LdPrVar
  loc_73CA87: LateMemCall
  loc_73CA8D: FFree1Var var_1CC = ""
  loc_73CA92: LitVarStr var_1BC, " "
  loc_73CA97: PopAdLdVar
  loc_73CA98: ILdRfDarg arg_14
  loc_73CA9E: LdPrVar
  loc_73CAA0: LateMemCall
  loc_73CAA8: LitI4 3
  loc_73CAAD: FLdRfVar var_1CC
  loc_73CAB0: ImpAdCallFPR4  = Space()
  loc_73CAB5: FLdRfVar var_1CC
  loc_73CAB8: FMemLdR4 arg_8(1756)
  loc_73CABD: CVarStr var_1BC
  loc_73CAC0: ConcatVar var_1EC
  loc_73CAC4: LitVarI2 var_20C, 10
  loc_73CAC9: LitI4 &H13
  loc_73CACE: ILdRf var_90
  loc_73CAD1: ImpAdCallI2 Mid$(, , )
  loc_73CAD6: CVarStr var_22C
  loc_73CAD9: ConcatVar var_24C
  loc_73CADD: LitVarStr var_1FC, " . "
  loc_73CAE2: ConcatVar var_26C
  loc_73CAE6: LitVarI2 var_28C, 8
  loc_73CAEB: LitI4 &H1D
  loc_73CAF0: ILdRf var_90
  loc_73CAF3: ImpAdCallI2 Mid$(, , )
  loc_73CAF8: CVarStr var_2AC
  loc_73CAFB: ConcatVar var_2CC
  loc_73CAFF: PopAdLdVar
  loc_73CB00: ILdRfDarg arg_14
  loc_73CB06: LdPrVar
  loc_73CB08: LateMemCall
  loc_73CB0E: FFreeVar var_1CC = "": var_20C = "": var_1EC = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = ""
  loc_73CB25: LitVarStr var_1BC, " "
  loc_73CB2A: PopAdLdVar
  loc_73CB2B: ILdRfDarg arg_14
  loc_73CB31: LdPrVar
  loc_73CB33: LateMemCall
  loc_73CB3B: LitI4 3
  loc_73CB40: FLdRfVar var_1CC
  loc_73CB43: ImpAdCallFPR4  = Space()
  loc_73CB48: FLdRfVar var_1CC
  loc_73CB4B: FMemLdR4 arg_8(1432)
  loc_73CB50: CVarStr var_1BC
  loc_73CB53: ConcatVar var_1EC
  loc_73CB57: LitI4 &H16
  loc_73CB5C: FLdRfVar var_20C
  loc_73CB5F: ImpAdCallFPR4  = Space()
  loc_73CB64: FLdRfVar var_20C
  loc_73CB67: ConcatVar var_22C
  loc_73CB6B: FMemLdR4 arg_8(1436)
  loc_73CB70: LitStr "        "
  loc_73CB73: ConcatStr
  loc_73CB74: CVarStr var_24C
  loc_73CB77: FMemLdRf unk_43B66D
  loc_73CB7C: CVarRef
  loc_73CB81: FLdRfVar var_19A
  loc_73CB84: CVarRef
  loc_73CB89: FLdRfVar var_26C
  loc_73CB8C: ImpAdCallFPR4  = IIf(, , )
  loc_73CB91: FLdRfVar var_26C
  loc_73CB94: ConcatVar var_28C
  loc_73CB98: LitI4 4
  loc_73CB9D: FLdRfVar var_2AC
  loc_73CBA0: ImpAdCallFPR4  = Space()
  loc_73CBA5: FLdRfVar var_2AC
  loc_73CBA8: ConcatVar var_2CC
  loc_73CBAC: FMemLdR4 arg_8(1764)
  loc_73CBB1: CVarStr var_21C
  loc_73CBB4: ConcatVar var_2EC
  loc_73CBB8: PopAdLdVar
  loc_73CBB9: ILdRfDarg arg_14
  loc_73CBBF: LdPrVar
  loc_73CBC1: LateMemCall
  loc_73CBC7: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_22C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73CBE0: LitI4 3
  loc_73CBE5: FLdRfVar var_1CC
  loc_73CBE8: ImpAdCallFPR4  = Space()
  loc_73CBED: FLdRfVar var_1CC
  loc_73CBF0: FMemLdR4 arg_8(1452)
  loc_73CBF5: CVarStr var_1BC
  loc_73CBF8: ConcatVar var_1EC
  loc_73CBFC: LitI4 6
  loc_73CC01: FLdRfVar var_20C
  loc_73CC04: ImpAdCallFPR4  = Space()
  loc_73CC09: FLdRfVar var_20C
  loc_73CC0C: ConcatVar var_22C
  loc_73CC10: FMemLdR4 arg_8(1440)
  loc_73CC15: CVarStr var_1DC
  loc_73CC18: ConcatVar var_24C
  loc_73CC1C: LitI4 6
  loc_73CC21: FLdRfVar var_26C
  loc_73CC24: ImpAdCallFPR4  = Space()
  loc_73CC29: FLdRfVar var_26C
  loc_73CC2C: ConcatVar var_28C
  loc_73CC30: FMemLdR4 arg_8(1444)
  loc_73CC35: CVarStr var_1FC
  loc_73CC38: ConcatVar var_2AC
  loc_73CC3C: LitI4 &HD
  loc_73CC41: FLdRfVar var_2CC
  loc_73CC44: ImpAdCallFPR4  = Space()
  loc_73CC49: FLdRfVar var_2CC
  loc_73CC4C: ConcatVar var_2EC
  loc_73CC50: FMemLdR4 arg_8(1684)
  loc_73CC55: CVarStr var_21C
  loc_73CC58: ConcatVar var_310
  loc_73CC5C: LitI4 4
  loc_73CC61: FLdRfVar var_324
  loc_73CC64: ImpAdCallFPR4  = Space()
  loc_73CC69: FLdRfVar var_324
  loc_73CC6C: ConcatVar var_334
  loc_73CC70: FMemLdR4 arg_8(1768)
  loc_73CC75: CVarStr var_23C
  loc_73CC78: ConcatVar var_344
  loc_73CC7C: PopAdLdVar
  loc_73CC7D: ILdRfDarg arg_14
  loc_73CC83: LdPrVar
  loc_73CC85: LateMemCall
  loc_73CC8B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = ""
  loc_73CCAE: LitI2_Byte 1
  loc_73CCB0: FLdRfVar var_9C
  loc_73CCB3: ILdRf var_184
  loc_73CCB6: LitI2_Byte 1
  loc_73CCB8: FnUBound
  loc_73CCBA: CI2I4
  loc_73CCBB: ForI2 var_538
  loc_73CCC3: FLdI2 var_9C
  loc_73CCC6: CI4UI1
  loc_73CCC7: ILdRf var_184
  loc_73CCCA: Ary1LdI4
  loc_73CCCB: LitStr vbNullString
  loc_73CCCE: NeStr
  loc_73CCD0: BranchF loc_73D2ED
  loc_73CCD5: ILdRf arg_14
  loc_73CCD8: ImpAdCallI2 IsMissing()
  loc_73CCDD: BranchF loc_73CEA2
  loc_73CCE2: LitI4 3
  loc_73CCE7: FLdRfVar var_1CC
  loc_73CCEA: ImpAdCallFPR4  = Space()
  loc_73CCEF: LitVarI2 var_1EC, 3
  loc_73CCF4: LitI4 1
  loc_73CCF9: FLdI2 var_9C
  loc_73CCFC: CI4UI1
  loc_73CCFD: ILdRf var_184
  loc_73CD00: Ary1LdI4
  loc_73CD01: ImpAdCallI2 Mid$(, , )
  loc_73CD06: FStStr var_480
  loc_73CD09: LitI4 2
  loc_73CD0E: FLdRfVar var_24C
  loc_73CD11: ImpAdCallFPR4  = Space()
  loc_73CD16: LitVarI2 var_28C, 20
  loc_73CD1B: LitI4 4
  loc_73CD20: FLdI2 var_9C
  loc_73CD23: CI4UI1
  loc_73CD24: ILdRf var_184
  loc_73CD27: Ary1LdI4
  loc_73CD28: ImpAdCallI2 Mid$(, , )
  loc_73CD2D: FStStr var_490
  loc_73CD30: LitI4 4
  loc_73CD35: FLdRfVar var_2EC
  loc_73CD38: ImpAdCallFPR4  = Space()
  loc_73CD3D: LitVarI2 var_324, 2
  loc_73CD42: LitI4 &H18
  loc_73CD47: FLdI2 var_9C
  loc_73CD4A: CI4UI1
  loc_73CD4B: ILdRf var_184
  loc_73CD4E: Ary1LdI4
  loc_73CD4F: ImpAdCallI2 Mid$(, , )
  loc_73CD54: FStStr var_498
  loc_73CD57: LitVarI2 var_354, 1
  loc_73CD5C: LitI4 &H1A
  loc_73CD61: FLdI2 var_9C
  loc_73CD64: CI4UI1
  loc_73CD65: ILdRf var_184
  loc_73CD68: Ary1LdI4
  loc_73CD69: ImpAdCallI2 Mid$(, , )
  loc_73CD6E: FStStr var_49C
  loc_73CD71: LitVarStr var_25C, "    "
  loc_73CD76: FStVarCopyObj var_374
  loc_73CD79: FLdRfVar var_374
  loc_73CD7C: LitStr " ("
  loc_73CD7F: FLdZeroAd var_49C
  loc_73CD82: FStStrNoPop var_1AC
  loc_73CD85: ConcatStr
  loc_73CD86: FStStrNoPop var_2F0
  loc_73CD89: LitStr ")"
  loc_73CD8C: ConcatStr
  loc_73CD8D: CVarStr var_364
  loc_73CD90: FLdRfVar var_19A
  loc_73CD93: CVarRef
  loc_73CD98: FLdRfVar var_384
  loc_73CD9B: ImpAdCallFPR4  = IIf(, , )
  loc_73CDA0: LitI4 &HA
  loc_73CDA5: FLdRfVar var_3A4
  loc_73CDA8: ImpAdCallFPR4  = Space()
  loc_73CDAD: LitVarI2 var_3C4, 9
  loc_73CDB2: LitI4 &H1B
  loc_73CDB7: FLdI2 var_9C
  loc_73CDBA: CI4UI1
  loc_73CDBB: ILdRf var_184
  loc_73CDBE: Ary1LdI4
  loc_73CDBF: ImpAdCallI2 Mid$(, , )
  loc_73CDC4: FStStr var_4A0
  loc_73CDC7: LitI4 2
  loc_73CDCC: FLdRfVar var_3F4
  loc_73CDCF: ImpAdCallFPR4  = Space()
  loc_73CDD4: LitVarI2 var_424, 20
  loc_73CDD9: LitI4 &H24
  loc_73CDDE: FLdI2 var_9C
  loc_73CDE1: CI4UI1
  loc_73CDE2: ILdRf var_184
  loc_73CDE5: Ary1LdI4
  loc_73CDE6: ImpAdCallI2 Mid$(, , )
  loc_73CDEB: FStStr var_4A4
  loc_73CDEE: FLdRfVar var_1CC
  loc_73CDF1: FLdZeroAd var_480
  loc_73CDF4: CVarStr var_20C
  loc_73CDF7: ConcatVar var_22C
  loc_73CDFB: FLdRfVar var_24C
  loc_73CDFE: ConcatVar var_26C
  loc_73CE02: FLdZeroAd var_490
  loc_73CE05: CVarStr var_2AC
  loc_73CE08: ConcatVar var_2CC
  loc_73CE0C: FLdRfVar var_2EC
  loc_73CE0F: ConcatVar var_310
  loc_73CE13: FLdZeroAd var_498
  loc_73CE16: CVarStr var_334
  loc_73CE19: ConcatVar var_344
  loc_73CE1D: FLdRfVar var_384
  loc_73CE20: ConcatVar var_394
  loc_73CE24: FLdRfVar var_3A4
  loc_73CE27: ConcatVar var_3B4
  loc_73CE2B: FLdZeroAd var_4A0
  loc_73CE2E: CVarStr var_3D4
  loc_73CE31: ConcatVar var_3E4
  loc_73CE35: FLdRfVar var_3F4
  loc_73CE38: ConcatVar var_414
  loc_73CE3C: FLdZeroAd var_4A4
  loc_73CE3F: CVarStr var_434
  loc_73CE42: ConcatVar var_4DC
  loc_73CE46: ILdRf var_190
  loc_73CE49: PrintObject
  loc_73CE4F: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = ""
  loc_73CE62: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_324 = "": var_310 = "": var_334 = "": var_354 = "": var_364 = "": var_374 = "": var_344 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3C4 = "": var_3B4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_424 = "": var_414 = "": var_434 = ""
  loc_73CE9F: Branch loc_73D041
  loc_73CEA6: LitVarI2 var_354, 1
  loc_73CEAB: LitI4 &H1A
  loc_73CEB0: FLdI2 var_9C
  loc_73CEB3: CI4UI1
  loc_73CEB4: ILdRf var_184
  loc_73CEB7: Ary1LdI4
  loc_73CEB8: ImpAdCallI2 Mid$(, , )
  loc_73CEBD: FStStr var_480
  loc_73CEC0: LitI4 3
  loc_73CEC5: FLdRfVar var_1CC
  loc_73CEC8: ImpAdCallFPR4  = Space()
  loc_73CECD: FLdRfVar var_1CC
  loc_73CED0: LitVarI2 var_1EC, 3
  loc_73CED5: LitI4 1
  loc_73CEDA: FLdI2 var_9C
  loc_73CEDD: CI4UI1
  loc_73CEDE: ILdRf var_184
  loc_73CEE1: Ary1LdI4
  loc_73CEE2: ImpAdCallI2 Mid$(, , )
  loc_73CEE7: CVarStr var_20C
  loc_73CEEA: ConcatVar var_22C
  loc_73CEEE: LitI4 2
  loc_73CEF3: FLdRfVar var_24C
  loc_73CEF6: ImpAdCallFPR4  = Space()
  loc_73CEFB: FLdRfVar var_24C
  loc_73CEFE: ConcatVar var_26C
  loc_73CF02: LitVarI2 var_28C, 20
  loc_73CF07: LitI4 4
  loc_73CF0C: FLdI2 var_9C
  loc_73CF0F: CI4UI1
  loc_73CF10: ILdRf var_184
  loc_73CF13: Ary1LdI4
  loc_73CF14: ImpAdCallI2 Mid$(, , )
  loc_73CF19: CVarStr var_2AC
  loc_73CF1C: ConcatVar var_2CC
  loc_73CF20: LitI4 4
  loc_73CF25: FLdRfVar var_2EC
  loc_73CF28: ImpAdCallFPR4  = Space()
  loc_73CF2D: FLdRfVar var_2EC
  loc_73CF30: ConcatVar var_310
  loc_73CF34: LitVarI2 var_324, 2
  loc_73CF39: LitI4 &H18
  loc_73CF3E: FLdI2 var_9C
  loc_73CF41: CI4UI1
  loc_73CF42: ILdRf var_184
  loc_73CF45: Ary1LdI4
  loc_73CF46: ImpAdCallI2 Mid$(, , )
  loc_73CF4B: CVarStr var_334
  loc_73CF4E: ConcatVar var_344
  loc_73CF52: LitVarStr var_25C, "    "
  loc_73CF57: FStVarCopyObj var_374
  loc_73CF5A: FLdRfVar var_374
  loc_73CF5D: LitStr " ("
  loc_73CF60: FLdZeroAd var_480
  loc_73CF63: FStStrNoPop var_1AC
  loc_73CF66: ConcatStr
  loc_73CF67: FStStrNoPop var_2F0
  loc_73CF6A: LitStr ")"
  loc_73CF6D: ConcatStr
  loc_73CF6E: CVarStr var_364
  loc_73CF71: FLdRfVar var_19A
  loc_73CF74: CVarRef
  loc_73CF79: FLdRfVar var_384
  loc_73CF7C: ImpAdCallFPR4  = IIf(, , )
  loc_73CF81: FLdRfVar var_384
  loc_73CF84: ConcatVar var_394
  loc_73CF88: LitI4 &HA
  loc_73CF8D: FLdRfVar var_3A4
  loc_73CF90: ImpAdCallFPR4  = Space()
  loc_73CF95: FLdRfVar var_3A4
  loc_73CF98: ConcatVar var_3B4
  loc_73CF9C: LitVarI2 var_3C4, 9
  loc_73CFA1: LitI4 &H1B
  loc_73CFA6: FLdI2 var_9C
  loc_73CFA9: CI4UI1
  loc_73CFAA: ILdRf var_184
  loc_73CFAD: Ary1LdI4
  loc_73CFAE: ImpAdCallI2 Mid$(, , )
  loc_73CFB3: CVarStr var_3D4
  loc_73CFB6: ConcatVar var_3E4
  loc_73CFBA: LitI4 2
  loc_73CFBF: FLdRfVar var_3F4
  loc_73CFC2: ImpAdCallFPR4  = Space()
  loc_73CFC7: FLdRfVar var_3F4
  loc_73CFCA: ConcatVar var_414
  loc_73CFCE: LitVarI2 var_424, 20
  loc_73CFD3: LitI4 &H24
  loc_73CFD8: FLdI2 var_9C
  loc_73CFDB: CI4UI1
  loc_73CFDC: ILdRf var_184
  loc_73CFDF: Ary1LdI4
  loc_73CFE0: ImpAdCallI2 Mid$(, , )
  loc_73CFE5: CVarStr var_434
  loc_73CFE8: ConcatVar var_4DC
  loc_73CFEC: PopAdLdVar
  loc_73CFED: ILdRfDarg arg_14
  loc_73CFF3: LdPrVar
  loc_73CFF5: LateMemCall
  loc_73CFFB: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73D004: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_22C = "": var_24C = "": var_28C = "": var_26C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_324 = "": var_310 = "": var_334 = "": var_354 = "": var_364 = "": var_374 = "": var_344 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3C4 = "": var_3B4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_424 = "": var_414 = "": var_434 = ""
  loc_73D045: LitI2_Byte &H37
  loc_73D047: FStI2 var_92
  loc_73D04C: FLdI2 var_92
  loc_73D04F: CI4UI1
  loc_73D050: FLdI2 var_9C
  loc_73D053: CI4UI1
  loc_73D054: ILdRf var_184
  loc_73D057: Ary1LdI4
  loc_73D058: FnLenStr
  loc_73D059: LtI4
  loc_73D05A: BranchF loc_73D2ED
  loc_73D05F: ILdRf arg_14
  loc_73D062: ImpAdCallI2 IsMissing()
  loc_73D067: BranchF loc_73D1AC
  loc_73D06C: LitI4 &H20
  loc_73D071: FLdRfVar var_1CC
  loc_73D074: ImpAdCallFPR4  = Space()
  loc_73D079: LitVarI2 var_1EC, 2
  loc_73D07E: FLdI2 var_92
  loc_73D081: LitI2_Byte &H18
  loc_73D083: AddI2
  loc_73D084: CI4UI1
  loc_73D085: FLdI2 var_9C
  loc_73D088: CI4UI1
  loc_73D089: ILdRf var_184
  loc_73D08C: Ary1LdI4
  loc_73D08D: ImpAdCallI2 Mid$(, , )
  loc_73D092: FStStr var_480
  loc_73D095: LitVarI2 var_24C, 1
  loc_73D09A: FLdI2 var_92
  loc_73D09D: LitI2_Byte &H1A
  loc_73D09F: AddI2
  loc_73D0A0: CI4UI1
  loc_73D0A1: FLdI2 var_9C
  loc_73D0A4: CI4UI1
  loc_73D0A5: ILdRf var_184
  loc_73D0A8: Ary1LdI4
  loc_73D0A9: ImpAdCallI2 Mid$(, , )
  loc_73D0AE: FStStr var_490
  loc_73D0B1: LitVarStr var_21C, "    "
  loc_73D0B6: FStVarCopyObj var_28C
  loc_73D0B9: FLdRfVar var_28C
  loc_73D0BC: LitStr " ("
  loc_73D0BF: FLdZeroAd var_490
  loc_73D0C2: FStStrNoPop var_1AC
  loc_73D0C5: ConcatStr
  loc_73D0C6: FStStrNoPop var_2F0
  loc_73D0C9: LitStr ")"
  loc_73D0CC: ConcatStr
  loc_73D0CD: CVarStr var_26C
  loc_73D0D0: FLdRfVar var_19A
  loc_73D0D3: CVarRef
  loc_73D0D8: FLdRfVar var_2AC
  loc_73D0DB: ImpAdCallFPR4  = IIf(, , )
  loc_73D0E0: LitI4 &HA
  loc_73D0E5: FLdRfVar var_2EC
  loc_73D0E8: ImpAdCallFPR4  = Space()
  loc_73D0ED: LitVarI2 var_324, 9
  loc_73D0F2: FLdI2 var_92
  loc_73D0F5: LitI2_Byte &H1B
  loc_73D0F7: AddI2
  loc_73D0F8: CI4UI1
  loc_73D0F9: FLdI2 var_9C
  loc_73D0FC: CI4UI1
  loc_73D0FD: ILdRf var_184
  loc_73D100: Ary1LdI4
  loc_73D101: ImpAdCallI2 Mid$(, , )
  loc_73D106: FStStr var_498
  loc_73D109: LitI4 2
  loc_73D10E: FLdRfVar var_354
  loc_73D111: ImpAdCallFPR4  = Space()
  loc_73D116: LitVarI2 var_374, 20
  loc_73D11B: FLdI2 var_92
  loc_73D11E: LitI2_Byte &H24
  loc_73D120: AddI2
  loc_73D121: CI4UI1
  loc_73D122: FLdI2 var_9C
  loc_73D125: CI4UI1
  loc_73D126: ILdRf var_184
  loc_73D129: Ary1LdI4
  loc_73D12A: ImpAdCallI2 Mid$(, , )
  loc_73D12F: FStStr var_49C
  loc_73D132: FLdRfVar var_1CC
  loc_73D135: FLdZeroAd var_480
  loc_73D138: CVarStr var_20C
  loc_73D13B: ConcatVar var_22C
  loc_73D13F: FLdRfVar var_2AC
  loc_73D142: ConcatVar var_2CC
  loc_73D146: FLdRfVar var_2EC
  loc_73D149: ConcatVar var_310
  loc_73D14D: FLdZeroAd var_498
  loc_73D150: CVarStr var_334
  loc_73D153: ConcatVar var_344
  loc_73D157: FLdRfVar var_354
  loc_73D15A: ConcatVar var_364
  loc_73D15E: FLdZeroAd var_49C
  loc_73D161: CVarStr var_384
  loc_73D164: ConcatVar var_394
  loc_73D168: ILdRf var_190
  loc_73D16B: PrintObject
  loc_73D171: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73D180: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_24C = "": var_26C = "": var_28C = "": var_22C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_324 = "": var_310 = "": var_334 = "": var_344 = "": var_354 = "": var_374 = "": var_364 = "": var_384 = ""
  loc_73D1A9: Branch loc_73D2DB
  loc_73D1B0: LitVarI2 var_24C, 1
  loc_73D1B5: FLdI2 var_92
  loc_73D1B8: LitI2_Byte &H1A
  loc_73D1BA: AddI2
  loc_73D1BB: CI4UI1
  loc_73D1BC: FLdI2 var_9C
  loc_73D1BF: CI4UI1
  loc_73D1C0: ILdRf var_184
  loc_73D1C3: Ary1LdI4
  loc_73D1C4: ImpAdCallI2 Mid$(, , )
  loc_73D1C9: FStStr var_480
  loc_73D1CC: LitI4 &H20
  loc_73D1D1: FLdRfVar var_1CC
  loc_73D1D4: ImpAdCallFPR4  = Space()
  loc_73D1D9: FLdRfVar var_1CC
  loc_73D1DC: LitVarI2 var_1EC, 2
  loc_73D1E1: FLdI2 var_92
  loc_73D1E4: LitI2_Byte &H18
  loc_73D1E6: AddI2
  loc_73D1E7: CI4UI1
  loc_73D1E8: FLdI2 var_9C
  loc_73D1EB: CI4UI1
  loc_73D1EC: ILdRf var_184
  loc_73D1EF: Ary1LdI4
  loc_73D1F0: ImpAdCallI2 Mid$(, , )
  loc_73D1F5: CVarStr var_20C
  loc_73D1F8: ConcatVar var_22C
  loc_73D1FC: LitVarStr var_21C, "    "
  loc_73D201: FStVarCopyObj var_28C
  loc_73D204: FLdRfVar var_28C
  loc_73D207: LitStr " ("
  loc_73D20A: FLdZeroAd var_480
  loc_73D20D: FStStrNoPop var_1AC
  loc_73D210: ConcatStr
  loc_73D211: FStStrNoPop var_2F0
  loc_73D214: LitStr ")"
  loc_73D217: ConcatStr
  loc_73D218: CVarStr var_26C
  loc_73D21B: FLdRfVar var_19A
  loc_73D21E: CVarRef
  loc_73D223: FLdRfVar var_2AC
  loc_73D226: ImpAdCallFPR4  = IIf(, , )
  loc_73D22B: FLdRfVar var_2AC
  loc_73D22E: ConcatVar var_2CC
  loc_73D232: LitI4 &HA
  loc_73D237: FLdRfVar var_2EC
  loc_73D23A: ImpAdCallFPR4  = Space()
  loc_73D23F: FLdRfVar var_2EC
  loc_73D242: ConcatVar var_310
  loc_73D246: LitVarI2 var_324, 9
  loc_73D24B: FLdI2 var_92
  loc_73D24E: LitI2_Byte &H1B
  loc_73D250: AddI2
  loc_73D251: CI4UI1
  loc_73D252: FLdI2 var_9C
  loc_73D255: CI4UI1
  loc_73D256: ILdRf var_184
  loc_73D259: Ary1LdI4
  loc_73D25A: ImpAdCallI2 Mid$(, , )
  loc_73D25F: CVarStr var_334
  loc_73D262: ConcatVar var_344
  loc_73D266: LitI4 2
  loc_73D26B: FLdRfVar var_354
  loc_73D26E: ImpAdCallFPR4  = Space()
  loc_73D273: FLdRfVar var_354
  loc_73D276: ConcatVar var_364
  loc_73D27A: LitVarI2 var_374, 20
  loc_73D27F: FLdI2 var_92
  loc_73D282: LitI2_Byte &H24
  loc_73D284: AddI2
  loc_73D285: CI4UI1
  loc_73D286: FLdI2 var_9C
  loc_73D289: CI4UI1
  loc_73D28A: ILdRf var_184
  loc_73D28D: Ary1LdI4
  loc_73D28E: ImpAdCallI2 Mid$(, , )
  loc_73D293: CVarStr var_384
  loc_73D296: ConcatVar var_394
  loc_73D29A: PopAdLdVar
  loc_73D29B: ILdRfDarg arg_14
  loc_73D2A1: LdPrVar
  loc_73D2A3: LateMemCall
  loc_73D2A9: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73D2B2: FFreeVar var_1EC = "": var_1CC = "": var_20C = "": var_24C = "": var_26C = "": var_28C = "": var_22C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_324 = "": var_310 = "": var_334 = "": var_344 = "": var_354 = "": var_374 = "": var_364 = "": var_384 = ""
  loc_73D2DF: FLdI2 var_92
  loc_73D2E2: LitI2_Byte &H37
  loc_73D2E4: AddI2
  loc_73D2E5: FStI2 var_92
  loc_73D2EA: Branch loc_73D04A
  loc_73D2F1: FLdRfVar var_9C
  loc_73D2F4: NextI2 var_538, loc_73CCC1
  loc_73D2FD: ILdRf arg_14
  loc_73D300: ImpAdCallI2 IsMissing()
  loc_73D305: BranchF loc_73D327
  loc_73D30A: LitStr " "
  loc_73D30D: ILdRf var_190
  loc_73D310: PrintObject
  loc_73D318: LitStr " "
  loc_73D31B: ILdRf var_190
  loc_73D31E: PrintObject
  loc_73D324: Branch loc_73D355
  loc_73D32B: LitVarStr var_1BC, " "
  loc_73D330: PopAdLdVar
  loc_73D331: ILdRfDarg arg_14
  loc_73D337: LdPrVar
  loc_73D339: LateMemCall
  loc_73D341: LitVarStr var_1BC, " "
  loc_73D346: PopAdLdVar
  loc_73D347: ILdRfDarg arg_14
  loc_73D34D: LdPrVar
  loc_73D34F: LateMemCall
  loc_73D359: FLdRfVar var_1CC
  loc_73D35C: FLdRfVar var_A8
  loc_73D35F: FLdRfVar var_90
  loc_73D362: LitStr "6"
  loc_73D365: FStStrCopy var_1AC
  loc_73D368: FLdRfVar var_1AC
  loc_73D36B: FLdRfVar var_8C
  loc_73D36E: FLdRfVar var_2F4
  loc_73D371: ImpAdLdRf MemVar_74C760
  loc_73D374: NewIfNullPr Formx
  loc_73D377: from_stack_1v = Formx.global_4589716Get()
  loc_73D37C: FLdPr var_2F4
  loc_73D37F:  = Formx.FontBold
  loc_73D384: FLdRfVar var_1CC
  loc_73D387: NotVar var_1EC
  loc_73D38B: CBoolVarNull
  loc_73D38D: FFree1Str var_1AC
  loc_73D390: FFree1Ad var_2F4
  loc_73D393: FFree1Var var_1CC = ""
  loc_73D396: BranchF loc_73D3B8
  loc_73D39B: FLdRfVar var_1CC
  loc_73D39E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_73D3A3: FLdRfVar var_1CC
  loc_73D3A6: CBoolVarNull
  loc_73D3A8: FFree1Var var_1CC = ""
  loc_73D3AB: BranchF loc_73D3B1
  loc_73D3B0: ExitProcI2
  loc_73D3B5: Branch loc_73D357
  loc_73D3BA: FLdRfVar var_A8
  loc_73D3BD: CVarRef
  loc_73D3C2: FLdRfVar var_1CC
  loc_73D3C5: ImpAdCallFPR4  = Trim()
  loc_73D3CA: FLdRfVar var_1CC
  loc_73D3CD: CStrVarTmp
  loc_73D3CE: FStStr var_A8
  loc_73D3D1: FFree1Var var_1CC = ""
  loc_73D3D6: ILdRf arg_14
  loc_73D3D9: ImpAdCallI2 IsMissing()
  loc_73D3DE: BranchF loc_73D469
  loc_73D3E3: FLdRfVar var_184
  loc_73D3E6: ImpAdCallI2 Unknown_5E01B8()
  loc_73D3EB: NotI4
  loc_73D3EC: ILdRf var_A8
  loc_73D3EF: FnLenStr
  loc_73D3F0: LitI4 1
  loc_73D3F5: GtI4
  loc_73D3F6: AndI4
  loc_73D3F7: BranchF loc_73D41A
  loc_73D3FC: LitI2_Byte &H50
  loc_73D3FE: FMemLdR4 arg_8(1748)
  loc_73D403: FLdRfVar var_1CC
  loc_73D406: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73D40B: FLdRfVar var_1CC
  loc_73D40E: ILdRf var_190
  loc_73D411: PrintObject
  loc_73D417: FFree1Var var_1CC = ""
  loc_73D41C: ILdRf var_A8
  loc_73D41F: ILdRf var_90
  loc_73D422: ILdRf var_8C
  loc_73D425: ILdRf var_190
  loc_73D428: FStAd var_2F4 
  loc_73D42C: FLdRfVar var_2F4
  loc_73D42F: CVarRef
  loc_73D434: ImpAdCallI2 Unknown_6E187C(, , , )
  loc_73D439: FStI2 var_1A4
  loc_73D43C: ILdRf var_2F4
  loc_73D43F: CastAd
  loc_73D442: FStAdFunc var_190
  loc_73D445: FLdI2 var_1A4
  loc_73D448: FFree1Ad var_2F4
  loc_73D44B: BranchF loc_73D464
  loc_73D450: ILdRf var_190
  loc_73D453: PrintObject
  loc_73D45B: ILdRf var_190
  loc_73D45E: PrintObject
  loc_73D466: Branch loc_73D4EE
  loc_73D46D: FLdRfVar var_184
  loc_73D470: ImpAdCallI2 Unknown_5E01B8()
  loc_73D475: NotI4
  loc_73D476: ILdRf var_A8
  loc_73D479: FnLenStr
  loc_73D47A: LitI4 1
  loc_73D47F: GtI4
  loc_73D480: AndI4
  loc_73D481: BranchF loc_73D4AA
  loc_73D486: LitI2_Byte &H50
  loc_73D488: FMemLdR4 arg_8(1748)
  loc_73D48D: FLdRfVar var_1CC
  loc_73D490: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73D495: FLdVar var_1CC
  loc_73D499: ILdRfDarg arg_14
  loc_73D49F: LdPrVar
  loc_73D4A1: LateMemCall
  loc_73D4A7: FFree1Var var_1CC = ""
  loc_73D4AC: ILdRf var_A8
  loc_73D4AF: ILdRf var_90
  loc_73D4B2: ILdRf var_8C
  loc_73D4B5: ILdRf arg_14
  loc_73D4B8: ImpAdCallI2 Unknown_6E187C(, , , )
  loc_73D4BD: BranchF loc_73D4EC
  loc_73D4C2: LitVarStr var_1BC, vbNullString
  loc_73D4C7: PopAdLdVar
  loc_73D4C8: ILdRfDarg arg_14
  loc_73D4CE: LdPrVar
  loc_73D4D0: LateMemCall
  loc_73D4D8: LitVarStr var_1BC, vbNullString
  loc_73D4DD: PopAdLdVar
  loc_73D4DE: ILdRfDarg arg_14
  loc_73D4E4: LdPrVar
  loc_73D4E6: LateMemCall
  loc_73D4F2: FLdRfVar var_1CC
  loc_73D4F5: FLdRfVar var_A8
  loc_73D4F8: FLdRfVar var_90
  loc_73D4FB: LitStr "5"
  loc_73D4FE: FStStrCopy var_1AC
  loc_73D501: FLdRfVar var_1AC
  loc_73D504: FLdRfVar var_8C
  loc_73D507: FLdRfVar var_2F4
  loc_73D50A: ImpAdLdRf MemVar_74C760
  loc_73D50D: NewIfNullPr Formx
  loc_73D510: from_stack_1v = Formx.global_4589716Get()
  loc_73D515: FLdPr var_2F4
  loc_73D518:  = Formx.FontBold
  loc_73D51D: FLdRfVar var_1CC
  loc_73D520: NotVar var_1EC
  loc_73D524: CBoolVarNull
  loc_73D526: FFree1Str var_1AC
  loc_73D529: FFree1Ad var_2F4
  loc_73D52C: FFree1Var var_1CC = ""
  loc_73D52F: BranchF loc_73D551
  loc_73D534: FLdRfVar var_1CC
  loc_73D537: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_73D53C: FLdRfVar var_1CC
  loc_73D53F: CBoolVarNull
  loc_73D541: FFree1Var var_1CC = ""
  loc_73D544: BranchF loc_73D54A
  loc_73D549: ExitProcI2
  loc_73D54E: Branch loc_73D4F0
  loc_73D553: FLdRfVar var_A8
  loc_73D556: CVarRef
  loc_73D55B: FLdRfVar var_1CC
  loc_73D55E: ImpAdCallFPR4  = Trim()
  loc_73D563: FLdRfVar var_1CC
  loc_73D566: CStrVarTmp
  loc_73D567: FStStr var_A8
  loc_73D56A: FFree1Var var_1CC = ""
  loc_73D56F: FLdRfVar var_2F0
  loc_73D572: LitVar_Missing var_2EC
  loc_73D575: LitVar_Missing var_2CC
  loc_73D578: LitVar_Missing var_2AC
  loc_73D57B: LitVar_Missing var_28C
  loc_73D57E: LitVar_Missing var_26C
  loc_73D581: LitVar_Missing var_24C
  loc_73D584: LitVar_Missing var_22C
  loc_73D587: LitVar_Missing var_20C
  loc_73D58A: LitVar_Missing var_1EC
  loc_73D58D: LitVar_Missing var_1CC
  loc_73D590: LitStr "PRECIOS DE LA COMPETENCIA"
  loc_73D593: FStStrCopy var_1AC
  loc_73D596: FLdRfVar var_1AC
  loc_73D599: LitI4 &H9F
  loc_73D59E: PopTmpLdAdStr var_1A8
  loc_73D5A1: LitI2_Byte 9
  loc_73D5A3: PopTmpLdAd2 var_1A4
  loc_73D5A6: ImpAdLdRf MemVar_74C7D0
  loc_73D5A9: NewIfNullPr clsMsg
  loc_73D5AC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D5B1: FLdZeroAd var_2F0
  loc_73D5B4: FMemStStr arg_8(1772)
  loc_73D5BA: FFree1Str var_1AC
  loc_73D5BD: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D5D6: FLdRfVar var_2F0
  loc_73D5D9: LitVar_Missing var_2EC
  loc_73D5DC: LitVar_Missing var_2CC
  loc_73D5DF: LitVar_Missing var_2AC
  loc_73D5E2: LitVar_Missing var_28C
  loc_73D5E5: LitVar_Missing var_26C
  loc_73D5E8: LitVar_Missing var_24C
  loc_73D5EB: LitVar_Missing var_22C
  loc_73D5EE: LitVar_Missing var_20C
  loc_73D5F1: LitVar_Missing var_1EC
  loc_73D5F4: LitVar_Missing var_1CC
  loc_73D5F7: LitStr "COD. EESS"
  loc_73D5FA: FStStrCopy var_1AC
  loc_73D5FD: FLdRfVar var_1AC
  loc_73D600: LitI4 &HA0
  loc_73D605: PopTmpLdAdStr var_1A8
  loc_73D608: LitI2_Byte 9
  loc_73D60A: PopTmpLdAd2 var_1A4
  loc_73D60D: ImpAdLdRf MemVar_74C7D0
  loc_73D610: NewIfNullPr clsMsg
  loc_73D613: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D618: FLdZeroAd var_2F0
  loc_73D61B: FMemStStr arg_8(1776)
  loc_73D621: FFree1Str var_1AC
  loc_73D624: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D63D: FLdRfVar var_2F0
  loc_73D640: LitVar_Missing var_2EC
  loc_73D643: LitVar_Missing var_2CC
  loc_73D646: LitVar_Missing var_2AC
  loc_73D649: LitVar_Missing var_28C
  loc_73D64C: LitVar_Missing var_26C
  loc_73D64F: LitVar_Missing var_24C
  loc_73D652: LitVar_Missing var_22C
  loc_73D655: LitVar_Missing var_20C
  loc_73D658: LitVar_Missing var_1EC
  loc_73D65B: LitVar_Missing var_1CC
  loc_73D65E: LitStr "FECHA/HORA"
  loc_73D661: FStStrCopy var_1AC
  loc_73D664: FLdRfVar var_1AC
  loc_73D667: LitI4 &HA1
  loc_73D66C: PopTmpLdAdStr var_1A8
  loc_73D66F: LitI2_Byte 9
  loc_73D671: PopTmpLdAd2 var_1A4
  loc_73D674: ImpAdLdRf MemVar_74C7D0
  loc_73D677: NewIfNullPr clsMsg
  loc_73D67A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D67F: FLdZeroAd var_2F0
  loc_73D682: FMemStStr arg_8(1780)
  loc_73D688: FFree1Str var_1AC
  loc_73D68B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D6A4: FLdRfVar var_2F0
  loc_73D6A7: LitVar_Missing var_2EC
  loc_73D6AA: LitVar_Missing var_2CC
  loc_73D6AD: LitVar_Missing var_2AC
  loc_73D6B0: LitVar_Missing var_28C
  loc_73D6B3: LitVar_Missing var_26C
  loc_73D6B6: LitVar_Missing var_24C
  loc_73D6B9: LitVar_Missing var_22C
  loc_73D6BC: LitVar_Missing var_20C
  loc_73D6BF: LitVar_Missing var_1EC
  loc_73D6C2: LitVar_Missing var_1CC
  loc_73D6C5: LitStr "COMPET."
  loc_73D6C8: FStStrCopy var_1AC
  loc_73D6CB: FLdRfVar var_1AC
  loc_73D6CE: LitI4 &HA2
  loc_73D6D3: PopTmpLdAdStr var_1A8
  loc_73D6D6: LitI2_Byte 9
  loc_73D6D8: PopTmpLdAd2 var_1A4
  loc_73D6DB: ImpAdLdRf MemVar_74C7D0
  loc_73D6DE: NewIfNullPr clsMsg
  loc_73D6E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D6E6: FLdZeroAd var_2F0
  loc_73D6E9: FMemStStr arg_8(1784)
  loc_73D6EF: FFree1Str var_1AC
  loc_73D6F2: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D70B: FLdRfVar var_2F0
  loc_73D70E: LitVar_Missing var_2EC
  loc_73D711: LitVar_Missing var_2CC
  loc_73D714: LitVar_Missing var_2AC
  loc_73D717: LitVar_Missing var_28C
  loc_73D71A: LitVar_Missing var_26C
  loc_73D71D: LitVar_Missing var_24C
  loc_73D720: LitVar_Missing var_22C
  loc_73D723: LitVar_Missing var_20C
  loc_73D726: LitVar_Missing var_1EC
  loc_73D729: LitVar_Missing var_1CC
  loc_73D72C: LitStr "BANDERA"
  loc_73D72F: FStStrCopy var_1AC
  loc_73D732: FLdRfVar var_1AC
  loc_73D735: LitI4 &HA3
  loc_73D73A: PopTmpLdAdStr var_1A8
  loc_73D73D: LitI2_Byte 9
  loc_73D73F: PopTmpLdAd2 var_1A4
  loc_73D742: ImpAdLdRf MemVar_74C7D0
  loc_73D745: NewIfNullPr clsMsg
  loc_73D748: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D74D: FLdZeroAd var_2F0
  loc_73D750: FMemStStr arg_8(1788)
  loc_73D756: FFree1Str var_1AC
  loc_73D759: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D772: FLdRfVar var_2F0
  loc_73D775: LitVar_Missing var_2EC
  loc_73D778: LitVar_Missing var_2CC
  loc_73D77B: LitVar_Missing var_2AC
  loc_73D77E: LitVar_Missing var_28C
  loc_73D781: LitVar_Missing var_26C
  loc_73D784: LitVar_Missing var_24C
  loc_73D787: LitVar_Missing var_22C
  loc_73D78A: LitVar_Missing var_20C
  loc_73D78D: LitVar_Missing var_1EC
  loc_73D790: LitVar_Missing var_1CC
  loc_73D793: LitStr "RELEVAMIENTO"
  loc_73D796: FStStrCopy var_1AC
  loc_73D799: FLdRfVar var_1AC
  loc_73D79C: LitI4 &HA4
  loc_73D7A1: PopTmpLdAdStr var_1A8
  loc_73D7A4: LitI2_Byte 9
  loc_73D7A6: PopTmpLdAd2 var_1A4
  loc_73D7A9: ImpAdLdRf MemVar_74C7D0
  loc_73D7AC: NewIfNullPr clsMsg
  loc_73D7AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73D7B4: FLdZeroAd var_2F0
  loc_73D7B7: FMemStStr arg_8(1792)
  loc_73D7BD: FFree1Str var_1AC
  loc_73D7C0: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73D7D9: ILdRf var_A8
  loc_73D7DC: FnLenStr
  loc_73D7DD: LitI4 1
  loc_73D7E2: GtI4
  loc_73D7E3: BranchF loc_73E335
  loc_73D7E8: LitStr vbNullString
  loc_73D7EB: FStStrCopy var_17C
  loc_73D7F0: FLdRfVar var_18C
  loc_73D7F3: FLdRfVar var_17C
  loc_73D7F6: ImpAdCallFPR4 Unknown_62F75C(, )
  loc_73D7FD: ILdRf arg_14
  loc_73D800: ImpAdCallI2 IsMissing()
  loc_73D805: BranchF loc_73D9CD
  loc_73D80A: LitI2_Byte &H50
  loc_73D80C: FMemLdR4 arg_8(1772)
  loc_73D811: FLdRfVar var_1CC
  loc_73D814: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73D819: FLdRfVar var_1CC
  loc_73D81C: ILdRf var_190
  loc_73D81F: PrintObject
  loc_73D825: FFree1Var var_1CC = ""
  loc_73D82A: ILdRf var_190
  loc_73D82D: PrintObject
  loc_73D835: LitI4 2
  loc_73D83A: FLdRfVar var_1CC
  loc_73D83D: ImpAdCallFPR4  = Space()
  loc_73D842: LitI4 &H12
  loc_73D847: FLdRfVar var_20C
  loc_73D84A: ImpAdCallFPR4  = Space()
  loc_73D84F: LitI4 5
  loc_73D854: FLdRfVar var_26C
  loc_73D857: ImpAdCallFPR4  = Space()
  loc_73D85C: LitI4 7
  loc_73D861: FLdRfVar var_2CC
  loc_73D864: ImpAdCallFPR4  = Space()
  loc_73D869: FLdRfVar var_1CC
  loc_73D86C: FMemLdR4 arg_8(1776)
  loc_73D871: CVarStr var_1BC
  loc_73D874: ConcatVar var_1EC
  loc_73D878: FLdRfVar var_20C
  loc_73D87B: ConcatVar var_22C
  loc_73D87F: FMemLdR4 arg_8(1780)
  loc_73D884: CVarStr var_1DC
  loc_73D887: ConcatVar var_24C
  loc_73D88B: FLdRfVar var_26C
  loc_73D88E: ConcatVar var_28C
  loc_73D892: FMemLdR4 arg_8(1432)
  loc_73D897: CVarStr var_1FC
  loc_73D89A: ConcatVar var_2AC
  loc_73D89E: FLdRfVar var_2CC
  loc_73D8A1: ConcatVar var_2EC
  loc_73D8A5: FMemLdR4 arg_8(1440)
  loc_73D8AA: CVarStr var_21C
  loc_73D8AD: ConcatVar var_310
  loc_73D8B1: ILdRf var_190
  loc_73D8B4: PrintObject
  loc_73D8BA: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73D8D5: LitI4 3
  loc_73D8DA: FLdRfVar var_1CC
  loc_73D8DD: ImpAdCallFPR4  = Space()
  loc_73D8E2: LitI4 4
  loc_73D8E7: FLdRfVar var_20C
  loc_73D8EA: ImpAdCallFPR4  = Space()
  loc_73D8EF: LitI4 7
  loc_73D8F4: FLdRfVar var_26C
  loc_73D8F7: ImpAdCallFPR4  = Space()
  loc_73D8FC: LitI4 4
  loc_73D901: FLdRfVar var_2CC
  loc_73D904: ImpAdCallFPR4  = Space()
  loc_73D909: LitI4 8
  loc_73D90E: FLdRfVar var_324
  loc_73D911: ImpAdCallFPR4  = Space()
  loc_73D916: LitI4 7
  loc_73D91B: FLdRfVar var_354
  loc_73D91E: ImpAdCallFPR4  = Space()
  loc_73D923: FLdRfVar var_1CC
  loc_73D926: FMemLdR4 arg_8(1784)
  loc_73D92B: CVarStr var_1BC
  loc_73D92E: ConcatVar var_1EC
  loc_73D932: FLdRfVar var_20C
  loc_73D935: ConcatVar var_22C
  loc_73D939: FMemLdR4 arg_8(1788)
  loc_73D93E: CVarStr var_1DC
  loc_73D941: ConcatVar var_24C
  loc_73D945: FLdRfVar var_26C
  loc_73D948: ConcatVar var_28C
  loc_73D94C: FMemLdR4 arg_8(1792)
  loc_73D951: CVarStr var_1FC
  loc_73D954: ConcatVar var_2AC
  loc_73D958: FLdRfVar var_2CC
  loc_73D95B: ConcatVar var_2EC
  loc_73D95F: FMemLdR4 arg_8(1676)
  loc_73D964: CVarStr var_21C
  loc_73D967: ConcatVar var_310
  loc_73D96B: FLdRfVar var_324
  loc_73D96E: ConcatVar var_334
  loc_73D972: FMemLdR4 arg_8(1444)
  loc_73D977: CVarStr var_23C
  loc_73D97A: ConcatVar var_344
  loc_73D97E: FLdRfVar var_354
  loc_73D981: ConcatVar var_364
  loc_73D985: FMemLdR4 arg_8(1668)
  loc_73D98A: CVarStr var_25C
  loc_73D98D: ConcatVar var_374
  loc_73D991: ILdRf var_190
  loc_73D994: PrintObject
  loc_73D99A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = ""
  loc_73D9C1: ILdRf var_190
  loc_73D9C4: PrintObject
  loc_73D9CA: Branch loc_73DBB9
  loc_73D9D1: LitI2_Byte &H50
  loc_73D9D3: FMemLdR4 arg_8(1772)
  loc_73D9D8: FLdRfVar var_1CC
  loc_73D9DB: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_73D9E0: FLdVar var_1CC
  loc_73D9E4: ILdRfDarg arg_14
  loc_73D9EA: LdPrVar
  loc_73D9EC: LateMemCall
  loc_73D9F2: FFree1Var var_1CC = ""
  loc_73D9F7: LitVarStr var_1BC, vbNullString
  loc_73D9FC: PopAdLdVar
  loc_73D9FD: ILdRfDarg arg_14
  loc_73DA03: LdPrVar
  loc_73DA05: LateMemCall
  loc_73DA0D: LitI4 2
  loc_73DA12: FLdRfVar var_1CC
  loc_73DA15: ImpAdCallFPR4  = Space()
  loc_73DA1A: FLdRfVar var_1CC
  loc_73DA1D: FMemLdR4 arg_8(1776)
  loc_73DA22: CVarStr var_1BC
  loc_73DA25: ConcatVar var_1EC
  loc_73DA29: LitI4 &H12
  loc_73DA2E: FLdRfVar var_20C
  loc_73DA31: ImpAdCallFPR4  = Space()
  loc_73DA36: FLdRfVar var_20C
  loc_73DA39: ConcatVar var_22C
  loc_73DA3D: FMemLdR4 arg_8(1780)
  loc_73DA42: CVarStr var_1DC
  loc_73DA45: ConcatVar var_24C
  loc_73DA49: LitI4 5
  loc_73DA4E: FLdRfVar var_26C
  loc_73DA51: ImpAdCallFPR4  = Space()
  loc_73DA56: FLdRfVar var_26C
  loc_73DA59: ConcatVar var_28C
  loc_73DA5D: FMemLdR4 arg_8(1432)
  loc_73DA62: CVarStr var_1FC
  loc_73DA65: ConcatVar var_2AC
  loc_73DA69: LitI4 7
  loc_73DA6E: FLdRfVar var_2CC
  loc_73DA71: ImpAdCallFPR4  = Space()
  loc_73DA76: FLdRfVar var_2CC
  loc_73DA79: ConcatVar var_2EC
  loc_73DA7D: FMemLdR4 arg_8(1440)
  loc_73DA82: CVarStr var_21C
  loc_73DA85: ConcatVar var_310
  loc_73DA89: PopAdLdVar
  loc_73DA8A: ILdRfDarg arg_14
  loc_73DA90: LdPrVar
  loc_73DA92: LateMemCall
  loc_73DA98: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73DAB3: LitI4 3
  loc_73DAB8: FLdRfVar var_1CC
  loc_73DABB: ImpAdCallFPR4  = Space()
  loc_73DAC0: FLdRfVar var_1CC
  loc_73DAC3: FMemLdR4 arg_8(1784)
  loc_73DAC8: CVarStr var_1BC
  loc_73DACB: ConcatVar var_1EC
  loc_73DACF: LitI4 4
  loc_73DAD4: FLdRfVar var_20C
  loc_73DAD7: ImpAdCallFPR4  = Space()
  loc_73DADC: FLdRfVar var_20C
  loc_73DADF: ConcatVar var_22C
  loc_73DAE3: FMemLdR4 arg_8(1788)
  loc_73DAE8: CVarStr var_1DC
  loc_73DAEB: ConcatVar var_24C
  loc_73DAEF: LitI4 7
  loc_73DAF4: FLdRfVar var_26C
  loc_73DAF7: ImpAdCallFPR4  = Space()
  loc_73DAFC: FLdRfVar var_26C
  loc_73DAFF: ConcatVar var_28C
  loc_73DB03: FMemLdR4 arg_8(1792)
  loc_73DB08: CVarStr var_1FC
  loc_73DB0B: ConcatVar var_2AC
  loc_73DB0F: LitI4 4
  loc_73DB14: FLdRfVar var_2CC
  loc_73DB17: ImpAdCallFPR4  = Space()
  loc_73DB1C: FLdRfVar var_2CC
  loc_73DB1F: ConcatVar var_2EC
  loc_73DB23: FMemLdR4 arg_8(1676)
  loc_73DB28: CVarStr var_21C
  loc_73DB2B: ConcatVar var_310
  loc_73DB2F: LitI4 8
  loc_73DB34: FLdRfVar var_324
  loc_73DB37: ImpAdCallFPR4  = Space()
  loc_73DB3C: FLdRfVar var_324
  loc_73DB3F: ConcatVar var_334
  loc_73DB43: FMemLdR4 arg_8(1444)
  loc_73DB48: CVarStr var_23C
  loc_73DB4B: ConcatVar var_344
  loc_73DB4F: LitI4 7
  loc_73DB54: FLdRfVar var_354
  loc_73DB57: ImpAdCallFPR4  = Space()
  loc_73DB5C: FLdRfVar var_354
  loc_73DB5F: ConcatVar var_364
  loc_73DB63: FMemLdR4 arg_8(1668)
  loc_73DB68: CVarStr var_25C
  loc_73DB6B: ConcatVar var_374
  loc_73DB6F: PopAdLdVar
  loc_73DB70: ILdRfDarg arg_14
  loc_73DB76: LdPrVar
  loc_73DB78: LateMemCall
  loc_73DB7E: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = ""
  loc_73DBA5: LitVarStr var_1BC, vbNullString
  loc_73DBAA: PopAdLdVar
  loc_73DBAB: ILdRfDarg arg_14
  loc_73DBB1: LdPrVar
  loc_73DBB3: LateMemCall
  loc_73DBBD: LitStr vbNullString
  loc_73DBC0: FStStrCopy var_BC
  loc_73DBC5: LitI2_Byte &HE
  loc_73DBC7: FStI2 var_92
  loc_73DBCC: FLdI2 var_92
  loc_73DBCF: CI4UI1
  loc_73DBD0: ILdRf var_A8
  loc_73DBD3: FnLenStr
  loc_73DBD4: LtI4
  loc_73DBD5: BranchF loc_73E335
  loc_73DBDA: LitVarI2 var_1CC, 2
  loc_73DBDF: FLdI2 var_92
  loc_73DBE2: LitI2_Byte 6
  loc_73DBE4: AddI2
  loc_73DBE5: CI4UI1
  loc_73DBE6: ILdRf var_A8
  loc_73DBE9: ImpAdCallI2 Mid$(, , )
  loc_73DBEE: FStStrNoPop var_1AC
  loc_73DBF1: LitStr "/"
  loc_73DBF4: ConcatStr
  loc_73DBF5: FStStrNoPop var_2F0
  loc_73DBF8: LitVarI2 var_1EC, 2
  loc_73DBFD: FLdI2 var_92
  loc_73DC00: LitI2_Byte 4
  loc_73DC02: AddI2
  loc_73DC03: CI4UI1
  loc_73DC04: ILdRf var_A8
  loc_73DC07: ImpAdCallI2 Mid$(, , )
  loc_73DC0C: FStStrNoPop var_480
  loc_73DC0F: ConcatStr
  loc_73DC10: FStStrNoPop var_490
  loc_73DC13: LitStr "/"
  loc_73DC16: ConcatStr
  loc_73DC17: FStStrNoPop var_498
  loc_73DC1A: LitVarI2 var_20C, 4
  loc_73DC1F: FLdI2 var_92
  loc_73DC22: CI4UI1
  loc_73DC23: ILdRf var_A8
  loc_73DC26: ImpAdCallI2 Mid$(, , )
  loc_73DC2B: FStStrNoPop var_49C
  loc_73DC2E: ConcatStr
  loc_73DC2F: CVarStr var_22C
  loc_73DC32: FStVar var_FC
  loc_73DC36: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = ""
  loc_73DC45: FFreeVar var_1CC = "": var_1EC = ""
  loc_73DC50: FLdI2 var_92
  loc_73DC53: LitI2_Byte 8
  loc_73DC55: AddI2
  loc_73DC56: FStI2 var_92
  loc_73DC5B: LitVarI2 var_1CC, 2
  loc_73DC60: FLdI2 var_92
  loc_73DC63: CI4UI1
  loc_73DC64: ILdRf var_A8
  loc_73DC67: ImpAdCallI2 Mid$(, , )
  loc_73DC6C: FStStrNoPop var_1AC
  loc_73DC6F: LitStr "/"
  loc_73DC72: ConcatStr
  loc_73DC73: FStStrNoPop var_2F0
  loc_73DC76: LitVarI2 var_1EC, 2
  loc_73DC7B: FLdI2 var_92
  loc_73DC7E: LitI2_Byte 2
  loc_73DC80: AddI2
  loc_73DC81: CI4UI1
  loc_73DC82: ILdRf var_A8
  loc_73DC85: ImpAdCallI2 Mid$(, , )
  loc_73DC8A: FStStrNoPop var_480
  loc_73DC8D: ConcatStr
  loc_73DC8E: CVarStr var_20C
  loc_73DC91: FStVar var_10C
  loc_73DC95: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73DC9E: FFreeVar var_1CC = ""
  loc_73DCA7: FLdI2 var_92
  loc_73DCAA: LitI2_Byte 4
  loc_73DCAC: AddI2
  loc_73DCAD: FStI2 var_92
  loc_73DCB2: LitVarI2 var_1CC, 5
  loc_73DCB7: FLdI2 var_92
  loc_73DCBA: CI4UI1
  loc_73DCBB: ILdRf var_A8
  loc_73DCBE: ImpAdCallI2 Mid$(, , )
  loc_73DCC3: FStStrNoPop var_1AC
  loc_73DCC6: ImpAdCallFPR4 push Val()
  loc_73DCCB: FStFPR8 var_460
  loc_73DCCE: LitI4 1
  loc_73DCD3: LitI4 1
  loc_73DCD8: LitVarStr var_1FC, "@@@@@"
  loc_73DCDD: FStVarCopyObj var_20C
  loc_73DCE0: FLdRfVar var_20C
  loc_73DCE3: FLdFPR8 var_460
  loc_73DCE6: CVarR8
  loc_73DCEA: ImpAdCallI2 Format$(, )
  loc_73DCEF: FStStr var_188
  loc_73DCF2: FFree1Str var_1AC
  loc_73DCF5: FFreeVar var_1CC = "": var_1EC = ""
  loc_73DD00: FLdI2 var_92
  loc_73DD03: LitI2_Byte 5
  loc_73DD05: AddI2
  loc_73DD06: FStI2 var_92
  loc_73DD0B: LitVarI2 var_1CC, 2
  loc_73DD10: FLdI2 var_92
  loc_73DD13: CI4UI1
  loc_73DD14: ILdRf var_A8
  loc_73DD17: ImpAdCallI2 Mid$(, , )
  loc_73DD1C: FStStrNoPop var_1AC
  loc_73DD1F: ImpAdCallFPR4 push Val()
  loc_73DD24: FStFPR8 var_460
  loc_73DD27: LitI4 1
  loc_73DD2C: LitI4 1
  loc_73DD31: LitVarStr var_1FC, "@@"
  loc_73DD36: FStVarCopyObj var_20C
  loc_73DD39: FLdRfVar var_20C
  loc_73DD3C: FLdFPR8 var_460
  loc_73DD3F: CVarR8
  loc_73DD43: ImpAdCallI2 Format$(, )
  loc_73DD48: FStStr var_124
  loc_73DD4B: FFree1Str var_1AC
  loc_73DD4E: FFreeVar var_1CC = "": var_1EC = ""
  loc_73DD59: FLdI2 var_92
  loc_73DD5C: LitI2_Byte 2
  loc_73DD5E: AddI2
  loc_73DD5F: FStI2 var_92
  loc_73DD64: LitVarI2 var_1CC, 9
  loc_73DD69: FLdI2 var_92
  loc_73DD6C: CI4UI1
  loc_73DD6D: ILdRf var_A8
  loc_73DD70: ImpAdCallI2 Mid$(, , )
  loc_73DD75: FStStr var_2F0
  loc_73DD78: LitI4 1
  loc_73DD7D: LitI4 1
  loc_73DD82: LitVarStr var_1FC, "#####0.000"
  loc_73DD87: FStVarCopyObj var_20C
  loc_73DD8A: FLdRfVar var_20C
  loc_73DD8D: FLdZeroAd var_2F0
  loc_73DD90: FStStrNoPop var_1AC
  loc_73DD93: CR8Str
  loc_73DD95: LitI2 1000
  loc_73DD98: CR8I2
  loc_73DD99: DivR8
  loc_73DD9A: CVarR8
  loc_73DD9E: ImpAdCallI2 Format$(, )
  loc_73DDA3: FStStr var_480
  loc_73DDA6: LitI4 1
  loc_73DDAB: LitI4 1
  loc_73DDB0: LitVarStr var_21C, "@@@@@@@@@@"
  loc_73DDB5: FStVarCopyObj var_24C
  loc_73DDB8: FLdRfVar var_24C
  loc_73DDBB: FLdZeroAd var_480
  loc_73DDBE: CVarStr var_22C
  loc_73DDC1: ImpAdCallI2 Format$(, )
  loc_73DDC6: FStStr var_174
  loc_73DDC9: FFreeStr var_1AC = "": var_2F0 = ""
  loc_73DDD2: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = ""
  loc_73DDE1: FLdI2 var_92
  loc_73DDE4: LitI2_Byte 9
  loc_73DDE6: AddI2
  loc_73DDE7: FStI2 var_92
  loc_73DDEC: FLdI2 var_92
  loc_73DDEF: LitI2_Byte 1
  loc_73DDF1: AddI2
  loc_73DDF2: FStI2 var_92
  loc_73DDF7: ILdRf var_BC
  loc_73DDFA: ILdRf var_188
  loc_73DDFD: NeStr
  loc_73DDFF: BranchF loc_73E17A
  loc_73DE04: ILdRf arg_14
  loc_73DE07: ImpAdCallI2 IsMissing()
  loc_73DE0C: BranchF loc_73DFC2
  loc_73DE11: ILdRf var_190
  loc_73DE14: PrintObject
  loc_73DE1C: LitI4 3
  loc_73DE21: FLdRfVar var_1CC
  loc_73DE24: ImpAdCallFPR4  = Space()
  loc_73DE29: LitI4 3
  loc_73DE2E: FLdRfVar var_20C
  loc_73DE31: ImpAdCallFPR4  = Space()
  loc_73DE36: ILdRf var_188
  loc_73DE39: ImpAdCallFPR4 push Val()
  loc_73DE3E: FStFPR8 var_460
  loc_73DE41: LitI4 1
  loc_73DE46: LitI4 1
  loc_73DE4B: LitVarStr var_1FC, "00000"
  loc_73DE50: FStVarCopyObj var_26C
  loc_73DE53: FLdRfVar var_26C
  loc_73DE56: FLdFPR8 var_460
  loc_73DE59: CVarR8
  loc_73DE5D: ImpAdCallI2 Format$(, )
  loc_73DE62: FStStr var_498
  loc_73DE65: FLdRfVar var_18C
  loc_73DE68: ILdRf var_17C
  loc_73DE6B: FLdZeroAd var_498
  loc_73DE6E: FStStrNoPop var_1AC
  loc_73DE71: ImpAdCallI2 Unknown_622CA8(, , )
  loc_73DE76: FStStr var_49C
  loc_73DE79: LitI4 1
  loc_73DE7E: FLdRfVar var_2CC
  loc_73DE81: ImpAdCallFPR4  = Space()
  loc_73DE86: LitI4 1
  loc_73DE8B: FLdRfVar var_324
  loc_73DE8E: ImpAdCallFPR4  = Space()
  loc_73DE93: LitI4 2
  loc_73DE98: FLdRfVar var_354
  loc_73DE9B: ImpAdCallFPR4  = Space()
  loc_73DEA0: LitI4 2
  loc_73DEA5: FLdRfVar var_384
  loc_73DEA8: ImpAdCallFPR4  = Space()
  loc_73DEAD: FLdRfVar var_2F0
  loc_73DEB0: ILdRf var_124
  loc_73DEB3: CI2Str
  loc_73DEB5: ImpAdLdRf MemVar_74A220
  loc_73DEB8: NewIfNullPr clsProducts
  loc_73DEC0: LitI4 &H13
  loc_73DEC5: FLdZeroAd var_2F0
  loc_73DEC8: CVarStr var_3A4
  loc_73DECB: FLdRfVar var_3B4
  loc_73DECE: ImpAdCallFPR4  = Left(, )
  loc_73DED3: LitI2_Byte &HFF
  loc_73DED5: PopTmpLdAd2 var_482
  loc_73DED8: LitI2_Byte &H13
  loc_73DEDA: PopTmpLdAd2 var_1A4
  loc_73DEDD: LitStr " "
  loc_73DEE0: FStStrCopy var_490
  loc_73DEE3: FLdRfVar var_490
  loc_73DEE6: FLdRfVar var_3B4
  loc_73DEE9: CStrVarTmp
  loc_73DEEA: PopTmpLdAdStr
  loc_73DEEE: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73DEF3: FStStr var_4A0
  loc_73DEF6: LitI4 1
  loc_73DEFB: FLdRfVar var_3E4
  loc_73DEFE: ImpAdCallFPR4  = Space()
  loc_73DF03: FLdRfVar var_1CC
  loc_73DF06: ILdRf var_188
  loc_73DF09: CVarStr var_1BC
  loc_73DF0C: ConcatVar var_1EC
  loc_73DF10: FLdRfVar var_20C
  loc_73DF13: ConcatVar var_22C
  loc_73DF17: FLdZeroAd var_49C
  loc_73DF1A: CVarStr var_28C
  loc_73DF1D: ConcatVar var_2AC
  loc_73DF21: FLdRfVar var_2CC
  loc_73DF24: ConcatVar var_2EC
  loc_73DF28: FLdRfVar var_FC
  loc_73DF2B: ConcatVar var_310
  loc_73DF2F: FLdRfVar var_324
  loc_73DF32: ConcatVar var_334
  loc_73DF36: FLdRfVar var_10C
  loc_73DF39: ConcatVar var_344
  loc_73DF3D: FLdRfVar var_354
  loc_73DF40: ConcatVar var_364
  loc_73DF44: ILdRf var_124
  loc_73DF47: CVarStr var_21C
  loc_73DF4A: ConcatVar var_374
  loc_73DF4E: FLdRfVar var_384
  loc_73DF51: ConcatVar var_394
  loc_73DF55: FLdZeroAd var_4A0
  loc_73DF58: CVarStr var_3C4
  loc_73DF5B: ConcatVar var_3D4
  loc_73DF5F: FLdRfVar var_3E4
  loc_73DF62: ConcatVar var_3F4
  loc_73DF66: ILdRf var_174
  loc_73DF69: CVarStr var_23C
  loc_73DF6C: ConcatVar var_414
  loc_73DF70: ILdRf var_190
  loc_73DF73: PrintObject
  loc_73DF79: FFreeStr var_1AC = "": var_480 = "": var_490 = "": var_498 = "": var_49C = ""
  loc_73DF88: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_26C = "": var_22C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_3A4 = "": var_3B4 = "": var_394 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = ""
  loc_73DFBF: Branch loc_73E175
  loc_73DFC6: LitVarStr var_1BC, vbNullString
  loc_73DFCB: PopAdLdVar
  loc_73DFCC: ILdRfDarg arg_14
  loc_73DFD2: LdPrVar
  loc_73DFD4: LateMemCall
  loc_73DFDC: ILdRf var_188
  loc_73DFDF: ImpAdCallFPR4 push Val()
  loc_73DFE4: FStFPR8 var_460
  loc_73DFE7: LitI4 1
  loc_73DFEC: LitI4 1
  loc_73DFF1: LitVarStr var_1FC, "00000"
  loc_73DFF6: FStVarCopyObj var_26C
  loc_73DFF9: FLdRfVar var_26C
  loc_73DFFC: FLdFPR8 var_460
  loc_73DFFF: CVarR8
  loc_73E003: ImpAdCallI2 Format$(, )
  loc_73E008: FStStr var_498
  loc_73E00B: FLdRfVar var_2F0
  loc_73E00E: ILdRf var_124
  loc_73E011: CI2Str
  loc_73E013: ImpAdLdRf MemVar_74A220
  loc_73E016: NewIfNullPr clsProducts
  loc_73E01E: LitI4 &H13
  loc_73E023: FLdZeroAd var_2F0
  loc_73E026: CVarStr var_3A4
  loc_73E029: FLdRfVar var_3B4
  loc_73E02C: ImpAdCallFPR4  = Left(, )
  loc_73E031: LitI4 3
  loc_73E036: FLdRfVar var_1CC
  loc_73E039: ImpAdCallFPR4  = Space()
  loc_73E03E: FLdRfVar var_1CC
  loc_73E041: ILdRf var_188
  loc_73E044: CVarStr var_1BC
  loc_73E047: ConcatVar var_1EC
  loc_73E04B: LitI4 3
  loc_73E050: FLdRfVar var_20C
  loc_73E053: ImpAdCallFPR4  = Space()
  loc_73E058: FLdRfVar var_20C
  loc_73E05B: ConcatVar var_22C
  loc_73E05F: FLdRfVar var_18C
  loc_73E062: ILdRf var_17C
  loc_73E065: FLdZeroAd var_498
  loc_73E068: FStStrNoPop var_1AC
  loc_73E06B: ImpAdCallI2 Unknown_622CA8(, , )
  loc_73E070: CVarStr var_28C
  loc_73E073: ConcatVar var_2AC
  loc_73E077: LitI4 1
  loc_73E07C: FLdRfVar var_2CC
  loc_73E07F: ImpAdCallFPR4  = Space()
  loc_73E084: FLdRfVar var_2CC
  loc_73E087: ConcatVar var_2EC
  loc_73E08B: FLdRfVar var_FC
  loc_73E08E: ConcatVar var_310
  loc_73E092: LitI4 1
  loc_73E097: FLdRfVar var_324
  loc_73E09A: ImpAdCallFPR4  = Space()
  loc_73E09F: FLdRfVar var_324
  loc_73E0A2: ConcatVar var_334
  loc_73E0A6: FLdRfVar var_10C
  loc_73E0A9: ConcatVar var_344
  loc_73E0AD: LitI4 2
  loc_73E0B2: FLdRfVar var_354
  loc_73E0B5: ImpAdCallFPR4  = Space()
  loc_73E0BA: FLdRfVar var_354
  loc_73E0BD: ConcatVar var_364
  loc_73E0C1: ILdRf var_124
  loc_73E0C4: CVarStr var_21C
  loc_73E0C7: ConcatVar var_374
  loc_73E0CB: LitI4 2
  loc_73E0D0: FLdRfVar var_384
  loc_73E0D3: ImpAdCallFPR4  = Space()
  loc_73E0D8: FLdRfVar var_384
  loc_73E0DB: ConcatVar var_394
  loc_73E0DF: LitI2_Byte &HFF
  loc_73E0E1: PopTmpLdAd2 var_482
  loc_73E0E4: LitI2_Byte &H13
  loc_73E0E6: PopTmpLdAd2 var_1A4
  loc_73E0E9: LitStr " "
  loc_73E0EC: FStStrCopy var_490
  loc_73E0EF: FLdRfVar var_490
  loc_73E0F2: FLdRfVar var_3B4
  loc_73E0F5: CStrVarTmp
  loc_73E0F6: PopTmpLdAdStr
  loc_73E0FA: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73E0FF: CVarStr var_3C4
  loc_73E102: ConcatVar var_3D4
  loc_73E106: LitI4 1
  loc_73E10B: FLdRfVar var_3E4
  loc_73E10E: ImpAdCallFPR4  = Space()
  loc_73E113: FLdRfVar var_3E4
  loc_73E116: ConcatVar var_3F4
  loc_73E11A: ILdRf var_174
  loc_73E11D: CVarStr var_23C
  loc_73E120: ConcatVar var_414
  loc_73E124: PopAdLdVar
  loc_73E125: ILdRfDarg arg_14
  loc_73E12B: LdPrVar
  loc_73E12D: LateMemCall
  loc_73E133: FFreeStr var_1AC = "": var_480 = "": var_490 = ""
  loc_73E13E: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_26C = "": var_22C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_310 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_374 = "": var_384 = "": var_3A4 = "": var_3B4 = "": var_394 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = ""
  loc_73E177: Branch loc_73E326
  loc_73E17E: ILdRf arg_14
  loc_73E181: ImpAdCallI2 IsMissing()
  loc_73E186: BranchF loc_73E258
  loc_73E18B: LitI4 &H2D
  loc_73E190: FLdRfVar var_1CC
  loc_73E193: ImpAdCallFPR4  = Space()
  loc_73E198: LitI4 2
  loc_73E19D: FLdRfVar var_20C
  loc_73E1A0: ImpAdCallFPR4  = Space()
  loc_73E1A5: FLdRfVar var_1AC
  loc_73E1A8: ILdRf var_124
  loc_73E1AB: CI2Str
  loc_73E1AD: ImpAdLdRf MemVar_74A220
  loc_73E1B0: NewIfNullPr clsProducts
  loc_73E1B8: LitI4 &H13
  loc_73E1BD: FLdZeroAd var_1AC
  loc_73E1C0: CVarStr var_24C
  loc_73E1C3: FLdRfVar var_26C
  loc_73E1C6: ImpAdCallFPR4  = Left(, )
  loc_73E1CB: LitI2_Byte &HFF
  loc_73E1CD: PopTmpLdAd2 var_482
  loc_73E1D0: LitI2_Byte &H13
  loc_73E1D2: PopTmpLdAd2 var_1A4
  loc_73E1D5: LitStr " "
  loc_73E1D8: FStStrCopy var_480
  loc_73E1DB: FLdRfVar var_480
  loc_73E1DE: FLdRfVar var_26C
  loc_73E1E1: CStrVarTmp
  loc_73E1E2: PopTmpLdAdStr
  loc_73E1E6: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73E1EB: FStStr var_490
  loc_73E1EE: LitI4 1
  loc_73E1F3: FLdRfVar var_2CC
  loc_73E1F6: ImpAdCallFPR4  = Space()
  loc_73E1FB: FLdRfVar var_1CC
  loc_73E1FE: ILdRf var_124
  loc_73E201: CVarStr var_1BC
  loc_73E204: ConcatVar var_1EC
  loc_73E208: FLdRfVar var_20C
  loc_73E20B: ConcatVar var_22C
  loc_73E20F: FLdZeroAd var_490
  loc_73E212: CVarStr var_28C
  loc_73E215: ConcatVar var_2AC
  loc_73E219: FLdRfVar var_2CC
  loc_73E21C: ConcatVar var_2EC
  loc_73E220: ILdRf var_174
  loc_73E223: CVarStr var_1DC
  loc_73E226: ConcatVar var_310
  loc_73E22A: ILdRf var_190
  loc_73E22D: PrintObject
  loc_73E233: FFreeStr var_2F0 = "": var_480 = ""
  loc_73E23C: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_26C = "": var_22C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73E255: Branch loc_73E324
  loc_73E25C: FLdRfVar var_1AC
  loc_73E25F: ILdRf var_124
  loc_73E262: CI2Str
  loc_73E264: ImpAdLdRf MemVar_74A220
  loc_73E267: NewIfNullPr clsProducts
  loc_73E26F: LitI4 &H13
  loc_73E274: FLdZeroAd var_1AC
  loc_73E277: CVarStr var_24C
  loc_73E27A: FLdRfVar var_26C
  loc_73E27D: ImpAdCallFPR4  = Left(, )
  loc_73E282: LitI4 &H2D
  loc_73E287: FLdRfVar var_1CC
  loc_73E28A: ImpAdCallFPR4  = Space()
  loc_73E28F: FLdRfVar var_1CC
  loc_73E292: ILdRf var_124
  loc_73E295: CVarStr var_1BC
  loc_73E298: ConcatVar var_1EC
  loc_73E29C: LitI4 2
  loc_73E2A1: FLdRfVar var_20C
  loc_73E2A4: ImpAdCallFPR4  = Space()
  loc_73E2A9: FLdRfVar var_20C
  loc_73E2AC: ConcatVar var_22C
  loc_73E2B0: LitI2_Byte &HFF
  loc_73E2B2: PopTmpLdAd2 var_482
  loc_73E2B5: LitI2_Byte &H13
  loc_73E2B7: PopTmpLdAd2 var_1A4
  loc_73E2BA: LitStr " "
  loc_73E2BD: FStStrCopy var_480
  loc_73E2C0: FLdRfVar var_480
  loc_73E2C3: FLdRfVar var_26C
  loc_73E2C6: CStrVarTmp
  loc_73E2C7: PopTmpLdAdStr
  loc_73E2CB: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_73E2D0: CVarStr var_28C
  loc_73E2D3: ConcatVar var_2AC
  loc_73E2D7: LitI4 1
  loc_73E2DC: FLdRfVar var_2CC
  loc_73E2DF: ImpAdCallFPR4  = Space()
  loc_73E2E4: FLdRfVar var_2CC
  loc_73E2E7: ConcatVar var_2EC
  loc_73E2EB: ILdRf var_174
  loc_73E2EE: CVarStr var_1DC
  loc_73E2F1: ConcatVar var_310
  loc_73E2F5: PopAdLdVar
  loc_73E2F6: ILdRfDarg arg_14
  loc_73E2FC: LdPrVar
  loc_73E2FE: LateMemCall
  loc_73E304: FFreeStr var_2F0 = ""
  loc_73E30B: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_24C = "": var_26C = "": var_22C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = ""
  loc_73E32A: ILdRf var_188
  loc_73E32D: FStStrCopy var_BC
  loc_73E332: Branch loc_73DBCA
  loc_73E339: ILdRf arg_14
  loc_73E33C: ImpAdCallI2 IsMissing()
  loc_73E341: BranchF loc_73E387
  loc_73E346: LitI4 6
  loc_73E34B: CI2I4
  loc_73E34C: CVarI2 var_1BC
  loc_73E34F: PopAdLdVar
  loc_73E350: FLdPr var_190
  loc_73E353: LateIdSt
  loc_73E35A: LitVarStr var_1BC, "Courier New"
  loc_73E35F: PopAdLdVar
  loc_73E360: FLdPr var_190
  loc_73E363: LateIdSt
  loc_73E36A: LitI2_Byte &HB
  loc_73E36C: CR8I2
  loc_73E36D: CVarR4
  loc_73E371: PopAdLdVar
  loc_73E372: FLdPr var_190
  loc_73E375: LateIdSt
  loc_73E37C: FLdPr var_190
  loc_73E37F: LateIdCall
  loc_73E38B: LitI2_Byte &HFF
  loc_73E38D: FStI2 var_86
  loc_73E392: ExitProcI2
  loc_73E395: FLdRfVar var_2F0
  loc_73E398: LitVar_Missing var_2EC
  loc_73E39B: LitVar_Missing var_2CC
  loc_73E39E: LitVar_Missing var_2AC
  loc_73E3A1: LitVar_Missing var_28C
  loc_73E3A4: LitVar_Missing var_26C
  loc_73E3A7: LitVar_Missing var_24C
  loc_73E3AA: LitVar_Missing var_22C
  loc_73E3AD: LitVar_Missing var_20C
  loc_73E3B0: LitVar_Missing var_1EC
  loc_73E3B3: LitVar_Missing var_1CC
  loc_73E3B6: LitStr "Error en impresora. Verifique por favor que haya papel en la impresora y este en READY."
  loc_73E3B9: FStStrCopy var_1AC
  loc_73E3BC: FLdRfVar var_1AC
  loc_73E3BF: LitI4 &HA5
  loc_73E3C4: PopTmpLdAdStr var_1A8
  loc_73E3C7: LitI2_Byte 9
  loc_73E3C9: PopTmpLdAd2 var_1A4
  loc_73E3CC: ImpAdLdRf MemVar_74C7D0
  loc_73E3CF: NewIfNullPr clsMsg
  loc_73E3D2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73E3D7: FLdZeroAd var_2F0
  loc_73E3DA: FMemStStr arg_8(1796)
  loc_73E3E0: FFree1Str var_1AC
  loc_73E3E3: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73E3FC: FLdRfVar var_2F0
  loc_73E3FF: LitVar_Missing var_2EC
  loc_73E402: LitVar_Missing var_2CC
  loc_73E405: LitVar_Missing var_2AC
  loc_73E408: LitVar_Missing var_28C
  loc_73E40B: LitVar_Missing var_26C
  loc_73E40E: LitVar_Missing var_24C
  loc_73E411: LitVar_Missing var_22C
  loc_73E414: LitVar_Missing var_20C
  loc_73E417: LitVar_Missing var_1EC
  loc_73E41A: LitVar_Missing var_1CC
  loc_73E41D: LitStr "Error Número: "
  loc_73E420: FStStrCopy var_1AC
  loc_73E423: FLdRfVar var_1AC
  loc_73E426: LitI4 &HA6
  loc_73E42B: PopTmpLdAdStr var_1A8
  loc_73E42E: LitI2_Byte 9
  loc_73E430: PopTmpLdAd2 var_1A4
  loc_73E433: ImpAdLdRf MemVar_74C7D0
  loc_73E436: NewIfNullPr clsMsg
  loc_73E439: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73E43E: FLdZeroAd var_2F0
  loc_73E441: FMemStStr arg_8(1800)
  loc_73E447: FFree1Str var_1AC
  loc_73E44A: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73E463: FLdRfVar var_2F0
  loc_73E466: LitVar_Missing var_2EC
  loc_73E469: LitVar_Missing var_2CC
  loc_73E46C: LitVar_Missing var_2AC
  loc_73E46F: LitVar_Missing var_28C
  loc_73E472: LitVar_Missing var_26C
  loc_73E475: LitVar_Missing var_24C
  loc_73E478: LitVar_Missing var_22C
  loc_73E47B: LitVar_Missing var_20C
  loc_73E47E: LitVar_Missing var_1EC
  loc_73E481: LitVar_Missing var_1CC
  loc_73E484: LitStr "Descripción: "
  loc_73E487: FStStrCopy var_1AC
  loc_73E48A: FLdRfVar var_1AC
  loc_73E48D: LitI4 &HA7
  loc_73E492: PopTmpLdAdStr var_1A8
  loc_73E495: LitI2_Byte 9
  loc_73E497: PopTmpLdAd2 var_1A4
  loc_73E49A: ImpAdLdRf MemVar_74C7D0
  loc_73E49D: NewIfNullPr clsMsg
  loc_73E4A0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73E4A5: FLdZeroAd var_2F0
  loc_73E4A8: FMemStStr arg_8(1804)
  loc_73E4AE: FFree1Str var_1AC
  loc_73E4B1: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73E4CA: FLdRfVar var_2F0
  loc_73E4CD: LitVar_Missing var_2EC
  loc_73E4D0: LitVar_Missing var_2CC
  loc_73E4D3: LitVar_Missing var_2AC
  loc_73E4D6: LitVar_Missing var_28C
  loc_73E4D9: LitVar_Missing var_26C
  loc_73E4DC: LitVar_Missing var_24C
  loc_73E4DF: LitVar_Missing var_22C
  loc_73E4E2: LitVar_Missing var_20C
  loc_73E4E5: LitVar_Missing var_1EC
  loc_73E4E8: LitVar_Missing var_1CC
  loc_73E4EB: LitStr "Error en la impresora"
  loc_73E4EE: FStStrCopy var_1AC
  loc_73E4F1: FLdRfVar var_1AC
  loc_73E4F4: LitI4 &HA8
  loc_73E4F9: PopTmpLdAdStr var_1A8
  loc_73E4FC: LitI2_Byte 9
  loc_73E4FE: PopTmpLdAd2 var_1A4
  loc_73E501: ImpAdLdRf MemVar_74C7D0
  loc_73E504: NewIfNullPr clsMsg
  loc_73E507: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73E50C: FLdZeroAd var_2F0
  loc_73E50F: FMemStStr arg_8(1808)
  loc_73E515: FFree1Str var_1AC
  loc_73E518: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73E531: FLdRfVar var_2F0
  loc_73E534: LitVar_Missing var_2EC
  loc_73E537: LitVar_Missing var_2CC
  loc_73E53A: LitVar_Missing var_2AC
  loc_73E53D: LitVar_Missing var_28C
  loc_73E540: LitVar_Missing var_26C
  loc_73E543: LitVar_Missing var_24C
  loc_73E546: LitVar_Missing var_22C
  loc_73E549: LitVar_Missing var_20C
  loc_73E54C: LitVar_Missing var_1EC
  loc_73E54F: LitVar_Missing var_1CC
  loc_73E552: LitStr "Error inesperado!."
  loc_73E555: FStStrCopy var_1AC
  loc_73E558: FLdRfVar var_1AC
  loc_73E55B: LitI4 &HAA
  loc_73E560: PopTmpLdAdStr var_1A8
  loc_73E563: LitI2_Byte 9
  loc_73E565: PopTmpLdAd2 var_1A4
  loc_73E568: ImpAdLdRf MemVar_74C7D0
  loc_73E56B: NewIfNullPr clsMsg
  loc_73E56E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_73E573: FLdZeroAd var_2F0
  loc_73E576: FMemStStr arg_8(1816)
  loc_73E57C: FFree1Str var_1AC
  loc_73E57F: FFreeVar var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = ""
  loc_73E598: ILdRf arg_14
  loc_73E59B: ImpAdCallI2 IsMissing()
  loc_73E5A0: BranchF loc_73E6CA
  loc_73E5A5: LitI4 &HD
  loc_73E5AA: ImpAdCallI2 Chr$()
  loc_73E5AF: FStStr var_4B4
  loc_73E5B2: LitI4 &HD
  loc_73E5B7: ImpAdCallI2 Chr$()
  loc_73E5BC: FStStr var_4B8
  loc_73E5BF: FLdRfVar var_1A8
  loc_73E5C2: ImpAdCallI2 Err 'rtcErrObj
  loc_73E5C7: FStAdFunc var_2F4
  loc_73E5CA: FLdPr var_2F4
  loc_73E5CD:  = Err.Number
  loc_73E5D2: LitI4 &HD
  loc_73E5D7: ImpAdCallI2 Chr$()
  loc_73E5DC: FStStr var_4BC
  loc_73E5DF: FLdRfVar var_4AC
  loc_73E5E2: ImpAdCallI2 Err 'rtcErrObj
  loc_73E5E7: FStAdFunc var_2F8
  loc_73E5EA: FLdPr var_2F8
  loc_73E5ED:  = Err.Description
  loc_73E5F2: LitVar_Missing var_20C
  loc_73E5F5: LitVar_Missing var_1EC
  loc_73E5F8: FMemLdRf unk_43B66D
  loc_73E5FD: CVarRef
  loc_73E602: LitI4 &H45
  loc_73E607: FMemLdR4 arg_8(1796)
  loc_73E60C: FLdZeroAd var_4B4
  loc_73E60F: FStStrNoPop var_1AC
  loc_73E612: ConcatStr
  loc_73E613: FStStrNoPop var_2F0
  loc_73E616: FLdZeroAd var_4B8
  loc_73E619: FStStrNoPop var_480
  loc_73E61C: ConcatStr
  loc_73E61D: FStStrNoPop var_490
  loc_73E620: FMemLdR4 arg_8(1800)
  loc_73E625: ConcatStr
  loc_73E626: FStStrNoPop var_498
  loc_73E629: ILdRf var_1A8
  loc_73E62C: CStrI4
  loc_73E62E: FStStrNoPop var_49C
  loc_73E631: ConcatStr
  loc_73E632: FStStrNoPop var_4A0
  loc_73E635: FLdZeroAd var_4BC
  loc_73E638: FStStrNoPop var_4A4
  loc_73E63B: ConcatStr
  loc_73E63C: FStStrNoPop var_4A8
  loc_73E63F: FMemLdR4 arg_8(1804)
  loc_73E644: ConcatStr
  loc_73E645: FStStrNoPop var_4B0
  loc_73E648: ILdRf var_4AC
  loc_73E64B: ConcatStr
  loc_73E64C: CVarStr var_1CC
  loc_73E64F: ImpAdCallI2 MsgBox(, , , , )
  loc_73E654: LitI4 4
  loc_73E659: EqI4
  loc_73E65A: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4A8 = "": var_4B0 = "": var_4AC = "": var_4B4 = "": var_4B8 = ""
  loc_73E679: FFreeAd var_2F4 = ""
  loc_73E680: FFreeVar var_1CC = "": var_1EC = ""
  loc_73E689: BranchF loc_73E695
  loc_73E68E: Resume
  loc_73E692: Branch loc_73E6C5
  loc_73E699: On Error Resume Next
  loc_73E69E: FLdPr var_190
  loc_73E6A1: LateIdCall
  loc_73E6AB: FLdPr var_190
  loc_73E6AE: LateIdCall
  loc_73E6B8: On Error GoTo 0
  loc_73E6BD: LitI2_Byte 0
  loc_73E6BF: FStI2 var_86
  loc_73E6C4: ExitProcI2
  loc_73E6C7: Branch loc_73E7D1
  loc_73E6CE: LitI4 &HD
  loc_73E6D3: ImpAdCallI2 Chr$()
  loc_73E6D8: FStStr var_4B4
  loc_73E6DB: LitI4 &HD
  loc_73E6E0: ImpAdCallI2 Chr$()
  loc_73E6E5: FStStr var_4B8
  loc_73E6E8: FLdRfVar var_1A8
  loc_73E6EB: ImpAdCallI2 Err 'rtcErrObj
  loc_73E6F0: FStAdFunc var_2F4
  loc_73E6F3: FLdPr var_2F4
  loc_73E6F6:  = Err.Number
  loc_73E6FB: LitI4 &HD
  loc_73E700: ImpAdCallI2 Chr$()
  loc_73E705: FStStr var_4BC
  loc_73E708: FLdRfVar var_4AC
  loc_73E70B: ImpAdCallI2 Err 'rtcErrObj
  loc_73E710: FStAdFunc var_2F8
  loc_73E713: FLdPr var_2F8
  loc_73E716:  = Err.Description
  loc_73E71B: LitVar_Missing var_20C
  loc_73E71E: LitVar_Missing var_1EC
  loc_73E721: FMemLdRf unk_43B66D
  loc_73E726: CVarRef
  loc_73E72B: LitI4 &H45
  loc_73E730: FMemLdR4 arg_8(1816)
  loc_73E735: FLdZeroAd var_4B4
  loc_73E738: FStStrNoPop var_1AC
  loc_73E73B: ConcatStr
  loc_73E73C: FStStrNoPop var_2F0
  loc_73E73F: FLdZeroAd var_4B8
  loc_73E742: FStStrNoPop var_480
  loc_73E745: ConcatStr
  loc_73E746: FStStrNoPop var_490
  loc_73E749: FMemLdR4 arg_8(1800)
  loc_73E74E: ConcatStr
  loc_73E74F: FStStrNoPop var_498
  loc_73E752: ILdRf var_1A8
  loc_73E755: CStrI4
  loc_73E757: FStStrNoPop var_49C
  loc_73E75A: ConcatStr
  loc_73E75B: FStStrNoPop var_4A0
  loc_73E75E: FLdZeroAd var_4BC
  loc_73E761: FStStrNoPop var_4A4
  loc_73E764: ConcatStr
  loc_73E765: FStStrNoPop var_4A8
  loc_73E768: FMemLdR4 arg_8(1804)
  loc_73E76D: ConcatStr
  loc_73E76E: FStStrNoPop var_4B0
  loc_73E771: ILdRf var_4AC
  loc_73E774: ConcatStr
  loc_73E775: CVarStr var_1CC
  loc_73E778: ImpAdCallI2 MsgBox(, , , , )
  loc_73E77D: LitI4 4
  loc_73E782: EqI4
  loc_73E783: FFreeStr var_1AC = "": var_2F0 = "": var_480 = "": var_490 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4A8 = "": var_4B0 = "": var_4AC = "": var_4B4 = "": var_4B8 = ""
  loc_73E7A2: FFreeAd var_2F4 = ""
  loc_73E7A9: FFreeVar var_1CC = "": var_1EC = ""
  loc_73E7B2: BranchF loc_73E7BE
  loc_73E7B7: Resume
  loc_73E7BB: Branch loc_73E7CF
  loc_73E7C2: On Error GoTo 0
  loc_73E7C7: LitI2_Byte 0
  loc_73E7C9: FStI2 var_86
  loc_73E7CE: ExitProcI2
  loc_73E7D5: ExitProcI2
End Function

Private Function Proc_87_6_5DB3F8(arg_C) '5DB3F8
  'Data Table: 40376C
  loc_5DB3B4: ILdI2 arg_C
  loc_5DB3B7: LitI2 400
  loc_5DB3BA: ModI2
  loc_5DB3BB: LitI2_Byte 0
  loc_5DB3BD: EqI2
  loc_5DB3BE: BranchF loc_5DB3C9
  loc_5DB3C1: LitI2_Byte &HFF
  loc_5DB3C3: FStI2 var_86
  loc_5DB3C6: Branch loc_5DB3F6
  loc_5DB3C9: ILdI2 arg_C
  loc_5DB3CC: LitI2_Byte &H64
  loc_5DB3CE: ModI2
  loc_5DB3CF: LitI2_Byte 0
  loc_5DB3D1: EqI2
  loc_5DB3D2: BranchF loc_5DB3DD
  loc_5DB3D5: LitI2_Byte 0
  loc_5DB3D7: FStI2 var_86
  loc_5DB3DA: Branch loc_5DB3F6
  loc_5DB3DD: ILdI2 arg_C
  loc_5DB3E0: LitI2_Byte 4
  loc_5DB3E2: ModI2
  loc_5DB3E3: LitI2_Byte 0
  loc_5DB3E5: EqI2
  loc_5DB3E6: BranchF loc_5DB3F1
  loc_5DB3E9: LitI2_Byte &HFF
  loc_5DB3EB: FStI2 var_86
  loc_5DB3EE: Branch loc_5DB3F6
  loc_5DB3F1: LitI2_Byte 0
  loc_5DB3F3: FStI2 var_86
  loc_5DB3F6: ExitProcI2
End Function

Private Function Proc_87_7_600904(arg_C, arg_10, arg_14) '600904
  'Data Table: 40376C
  loc_600824: LitI2_Byte 0
  loc_600826: FLdI2 arg_14
  loc_600829: LeI2
  loc_60082A: FStI2 var_86
  loc_60082D: FLdI2 var_86
  loc_600830: BranchF loc_600901
  loc_600833: FLdI2 arg_10
  loc_600836: FStI2 var_88
  loc_600839: FLdI2 var_88
  loc_60083C: LitI2_Byte 4
  loc_60083E: EqI2
  loc_60083F: BranchT loc_60085D
  loc_600842: FLdI2 var_88
  loc_600845: LitI2_Byte 6
  loc_600847: EqI2
  loc_600848: BranchT loc_60085D
  loc_60084B: FLdI2 var_88
  loc_60084E: LitI2_Byte 9
  loc_600850: EqI2
  loc_600851: BranchT loc_60085D
  loc_600854: FLdI2 var_88
  loc_600857: LitI2_Byte &HB
  loc_600859: EqI2
  loc_60085A: BranchF loc_600870
  loc_60085D: LitI2_Byte 1
  loc_60085F: FLdI2 arg_C
  loc_600862: LeI2
  loc_600863: FLdI2 arg_C
  loc_600866: LitI2_Byte &H1E
  loc_600868: LeI2
  loc_600869: AndI4
  loc_60086A: FStI2 var_86
  loc_60086D: Branch loc_600901
  loc_600870: FLdI2 var_88
  loc_600873: LitI2_Byte 1
  loc_600875: EqI2
  loc_600876: BranchT loc_6008AF
  loc_600879: FLdI2 var_88
  loc_60087C: LitI2_Byte 3
  loc_60087E: EqI2
  loc_60087F: BranchT loc_6008AF
  loc_600882: FLdI2 var_88
  loc_600885: LitI2_Byte 5
  loc_600887: EqI2
  loc_600888: BranchT loc_6008AF
  loc_60088B: FLdI2 var_88
  loc_60088E: LitI2_Byte 7
  loc_600890: EqI2
  loc_600891: BranchT loc_6008AF
  loc_600894: FLdI2 var_88
  loc_600897: LitI2_Byte 8
  loc_600899: EqI2
  loc_60089A: BranchT loc_6008AF
  loc_60089D: FLdI2 var_88
  loc_6008A0: LitI2_Byte &HA
  loc_6008A2: EqI2
  loc_6008A3: BranchT loc_6008AF
  loc_6008A6: FLdI2 var_88
  loc_6008A9: LitI2_Byte &HC
  loc_6008AB: EqI2
  loc_6008AC: BranchF loc_6008C2
  loc_6008AF: LitI2_Byte 1
  loc_6008B1: FLdI2 arg_C
  loc_6008B4: LeI2
  loc_6008B5: FLdI2 arg_C
  loc_6008B8: LitI2_Byte &H1F
  loc_6008BA: LeI2
  loc_6008BB: AndI4
  loc_6008BC: FStI2 var_86
  loc_6008BF: Branch loc_600901
  loc_6008C2: FLdI2 var_88
  loc_6008C5: LitI2_Byte 2
  loc_6008C7: EqI2
  loc_6008C8: BranchF loc_6008FC
  loc_6008CB: FLdRfVar arg_14
  loc_6008CE: ImpAdCallI2 Proc_87_6_5DB3F8()
  loc_6008D3: BranchF loc_6008E9
  loc_6008D6: LitI2_Byte 1
  loc_6008D8: FLdI2 arg_C
  loc_6008DB: LeI2
  loc_6008DC: FLdI2 arg_C
  loc_6008DF: LitI2_Byte &H1D
  loc_6008E1: LeI2
  loc_6008E2: AndI4
  loc_6008E3: FStI2 var_86
  loc_6008E6: Branch loc_6008F9
  loc_6008E9: LitI2_Byte 1
  loc_6008EB: FLdI2 arg_C
  loc_6008EE: LeI2
  loc_6008EF: FLdI2 arg_C
  loc_6008F2: LitI2_Byte &H1C
  loc_6008F4: LeI2
  loc_6008F5: AndI4
  loc_6008F6: FStI2 var_86
  loc_6008F9: Branch loc_600901
  loc_6008FC: LitI2_Byte 0
  loc_6008FE: FStI2 var_86
  loc_600901: ExitProcI2
  loc_600902: ExitProcR8
End Function

Private Function Proc_87_8_628F70(arg_C) '628F70
  'Data Table: 40376C
  loc_628E18: OnErrorGoto loc_628EF9
  loc_628E1D: LitStr "Intl"
  loc_628E20: FStStrCopy var_8C
  loc_628E25: LitStr vbNullString
  loc_628E28: FStStrCopy var_88
  loc_628E2D: ILdRf var_90
  loc_628E30: FnLenStr
  loc_628E31: ILdRf var_90
  loc_628E34: FLdRfVar var_A4
  loc_628E37: CStr2Ansi
  loc_628E38: ILdRf var_A4
  loc_628E3B: LitStr vbNullString
  loc_628E3E: FLdRfVar var_A0
  loc_628E41: CStr2Ansi
  loc_628E42: ILdRf var_A0
  loc_628E45: ILdI4 arg_C
  loc_628E48: FLdRfVar var_9C
  loc_628E4B: CStr2Ansi
  loc_628E4C: ILdRf var_9C
  loc_628E4F: ILdRf var_8C
  loc_628E52: FLdRfVar var_98
  loc_628E55: CStr2Ansi
  loc_628E56: ILdRf var_98
  loc_628E59: ImpAdCallI2 GetProfileString(, , , , )
  loc_628E5E: FStR4 var_AC
  loc_628E61: SetLastSystemError
  loc_628E62: ILdRf var_98
  loc_628E65: FLdRfVar var_8C
  loc_628E68: CStr2Uni
  loc_628E6A: ILdRf var_9C
  loc_628E6D: ILdRf arg_C
  loc_628E70: CStr2Uni
  loc_628E72: ILdRf var_A4
  loc_628E75: FLdRfVar var_A8
  loc_628E78: CStr2Uni
  loc_628E7A: ILdRf var_A8
  loc_628E7D: ILdRf var_90
  loc_628E80: StFixedStr
  loc_628E83: ILdRf var_AC
  loc_628E86: FStR4 var_94
  loc_628E89: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_628E98: ILdRf var_94
  loc_628E9B: LitI4 0
  loc_628EA0: NeI4
  loc_628EA1: BranchF loc_628EEF
  loc_628EA6: LitI4 1
  loc_628EAB: ILdRf var_90
  loc_628EAE: LitI4 0
  loc_628EB3: ImpAdCallI2 Chr$()
  loc_628EB8: FStStrNoPop var_98
  loc_628EBB: LitI4 0
  loc_628EC0: FnInStr4
  loc_628EC2: LitI4 1
  loc_628EC7: SubI4
  loc_628EC8: ILdRf var_90
  loc_628ECB: FStStrCopy var_9C
  loc_628ECE: ILdRf var_9C
  loc_628ED1: ImpAdCallI2 Left$(, )
  loc_628ED6: FStStr var_A0
  loc_628ED9: ILdRf var_9C
  loc_628EDC: ILdRf var_90
  loc_628EDF: StFixedStr
  loc_628EE2: FLdZeroAd var_A0
  loc_628EE5: FStStr var_88
  loc_628EE8: FFreeStr var_98 = ""
  loc_628EF3: On Error Resume Next
  loc_628EF8: ExitProc
  loc_628EFB: LitVar_Missing var_124
  loc_628EFE: LitVar_Missing var_104
  loc_628F01: LitVar_Missing var_E4
  loc_628F04: LitI4 0
  loc_628F09: FLdRfVar var_AC
  loc_628F0C: ImpAdCallI2 Err 'rtcErrObj
  loc_628F11: FStAdFunc var_B0
  loc_628F14: FLdPr var_B0
  loc_628F17:  = Err.Number
  loc_628F1C: ILdRf var_AC
  loc_628F1F: CStrI4
  loc_628F21: FStStrNoPop var_98
  loc_628F24: LitStr " "
  loc_628F27: ConcatStr
  loc_628F28: FStStrNoPop var_A0
  loc_628F2B: FLdRfVar var_9C
  loc_628F2E: ImpAdCallI2 Err 'rtcErrObj
  loc_628F33: FStAdFunc var_B4
  loc_628F36: FLdPr var_B4
  loc_628F39:  = Err.Description
  loc_628F3E: ILdRf var_9C
  loc_628F41: ConcatStr
  loc_628F42: CVarStr var_C4
  loc_628F45: ImpAdCallFPR4 MsgBox(, , , , )
  loc_628F4A: FFreeStr var_98 = "": var_A0 = ""
  loc_628F53: FFreeAd var_B0 = ""
  loc_628F5A: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_628F67: Resume
  loc_628F6D: ExitProc
  loc_628F6E: PopFPR4
End Function

Private Function Proc_87_9_690704(arg_C, arg_10) '690704
  'Data Table: 40376C
  loc_690228: ILdRf arg_C
  loc_69022B: FStStrCopy var_8C
  loc_69022E: ILdRf var_8C
  loc_690231: FnLenStr
  loc_690232: LitI4 &HA
  loc_690237: NeI4
  loc_690238: BranchF loc_690270
  loc_69023B: FLdI2 arg_10
  loc_69023E: BranchF loc_69026A
  loc_690241: LitVar_Missing var_10C
  loc_690244: LitVar_Missing var_EC
  loc_690247: LitVar_Missing var_CC
  loc_69024A: LitI4 &H30
  loc_69024F: LitVarStr var_9C, "Debe ingresar una fecha válida (dd/mm/aaaa). Verifique por favor."
  loc_690254: FStVarCopyObj var_AC
  loc_690257: FLdRfVar var_AC
  loc_69025A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69025F: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_69026A: LitI2_Byte 0
  loc_69026C: FStI2 var_86
  loc_69026F: ExitProcI2
  loc_690270: LitVarStr var_DC, "0"
  loc_690275: HardType
  loc_690276: LitVarI2 var_AC, 1
  loc_69027B: LitI4 1
  loc_690280: FLdRfVar var_8C
  loc_690283: CVarRef
  loc_690288: FLdRfVar var_CC
  loc_69028B: ImpAdCallFPR4  = Mid(, , )
  loc_690290: FLdRfVar var_CC
  loc_690293: LeVar var_EC
  loc_690297: LitVarI2 var_10C, 1
  loc_69029C: LitI4 1
  loc_6902A1: FLdRfVar var_8C
  loc_6902A4: CVarRef
  loc_6902A9: FLdRfVar var_12C
  loc_6902AC: ImpAdCallFPR4  = Mid(, , )
  loc_6902B1: FLdRfVar var_12C
  loc_6902B4: LitVarStr var_13C, "9"
  loc_6902B9: HardType
  loc_6902BA: LeVar var_14C
  loc_6902BE: AndVar var_15C
  loc_6902C2: NotVar var_16C
  loc_6902C6: LitVarStr var_1BC, "0"
  loc_6902CB: HardType
  loc_6902CC: LitVarI2 var_19C, 1
  loc_6902D1: LitI4 2
  loc_6902D6: FLdRfVar var_8C
  loc_6902D9: CVarRef
  loc_6902DE: FLdRfVar var_1AC
  loc_6902E1: ImpAdCallFPR4  = Mid(, , )
  loc_6902E6: FLdRfVar var_1AC
  loc_6902E9: LeVar var_1CC
  loc_6902ED: LitVarI2 var_1FC, 1
  loc_6902F2: LitI4 2
  loc_6902F7: FLdRfVar var_8C
  loc_6902FA: CVarRef
  loc_6902FF: FLdRfVar var_20C
  loc_690302: ImpAdCallFPR4  = Mid(, , )
  loc_690307: FLdRfVar var_20C
  loc_69030A: LitVarStr var_21C, "9"
  loc_69030F: HardType
  loc_690310: LeVar var_22C
  loc_690314: AndVar var_23C
  loc_690318: NotVar var_24C
  loc_69031C: OrVar var_25C
  loc_690320: LitVarStr var_2AC, "0"
  loc_690325: HardType
  loc_690326: LitVarI2 var_28C, 1
  loc_69032B: LitI4 4
  loc_690330: FLdRfVar var_8C
  loc_690333: CVarRef
  loc_690338: FLdRfVar var_29C
  loc_69033B: ImpAdCallFPR4  = Mid(, , )
  loc_690340: FLdRfVar var_29C
  loc_690343: LeVar var_2BC
  loc_690347: LitVarI2 var_2EC, 1
  loc_69034C: LitI4 4
  loc_690351: FLdRfVar var_8C
  loc_690354: CVarRef
  loc_690359: FLdRfVar var_2FC
  loc_69035C: ImpAdCallFPR4  = Mid(, , )
  loc_690361: FLdRfVar var_2FC
  loc_690364: LitVarStr var_30C, "9"
  loc_690369: HardType
  loc_69036A: LeVar var_31C
  loc_69036E: AndVar var_32C
  loc_690372: NotVar var_33C
  loc_690376: OrVar var_34C
  loc_69037A: LitVarStr var_39C, "0"
  loc_69037F: HardType
  loc_690380: LitVarI2 var_37C, 1
  loc_690385: LitI4 5
  loc_69038A: FLdRfVar var_8C
  loc_69038D: CVarRef
  loc_690392: FLdRfVar var_38C
  loc_690395: ImpAdCallFPR4  = Mid(, , )
  loc_69039A: FLdRfVar var_38C
  loc_69039D: LeVar var_3AC
  loc_6903A1: LitVarI2 var_3DC, 1
  loc_6903A6: LitI4 5
  loc_6903AB: FLdRfVar var_8C
  loc_6903AE: CVarRef
  loc_6903B3: FLdRfVar var_3EC
  loc_6903B6: ImpAdCallFPR4  = Mid(, , )
  loc_6903BB: FLdRfVar var_3EC
  loc_6903BE: LitVarStr var_3FC, "9"
  loc_6903C3: HardType
  loc_6903C4: LeVar var_40C
  loc_6903C8: AndVar var_41C
  loc_6903CC: NotVar var_42C
  loc_6903D0: OrVar var_43C
  loc_6903D4: LitVarStr var_48C, "0"
  loc_6903D9: HardType
  loc_6903DA: LitVarI2 var_46C, 1
  loc_6903DF: LitI4 7
  loc_6903E4: FLdRfVar var_8C
  loc_6903E7: CVarRef
  loc_6903EC: FLdRfVar var_47C
  loc_6903EF: ImpAdCallFPR4  = Mid(, , )
  loc_6903F4: FLdRfVar var_47C
  loc_6903F7: LeVar var_49C
  loc_6903FB: LitVarI2 var_4CC, 1
  loc_690400: LitI4 7
  loc_690405: FLdRfVar var_8C
  loc_690408: CVarRef
  loc_69040D: FLdRfVar var_4DC
  loc_690410: ImpAdCallFPR4  = Mid(, , )
  loc_690415: FLdRfVar var_4DC
  loc_690418: LitVarStr var_4EC, "9"
  loc_69041D: HardType
  loc_69041E: LeVar var_4FC
  loc_690422: AndVar var_50C
  loc_690426: NotVar var_51C
  loc_69042A: OrVar var_52C
  loc_69042E: LitVarStr var_57C, "0"
  loc_690433: HardType
  loc_690434: LitVarI2 var_55C, 1
  loc_690439: LitI4 8
  loc_69043E: FLdRfVar var_8C
  loc_690441: CVarRef
  loc_690446: FLdRfVar var_56C
  loc_690449: ImpAdCallFPR4  = Mid(, , )
  loc_69044E: FLdRfVar var_56C
  loc_690451: LeVar var_58C
  loc_690455: LitVarI2 var_5BC, 1
  loc_69045A: LitI4 8
  loc_69045F: FLdRfVar var_8C
  loc_690462: CVarRef
  loc_690467: FLdRfVar var_5CC
  loc_69046A: ImpAdCallFPR4  = Mid(, , )
  loc_69046F: FLdRfVar var_5CC
  loc_690472: LitVarStr var_5DC, "9"
  loc_690477: HardType
  loc_690478: LeVar var_5EC
  loc_69047C: AndVar var_5FC
  loc_690480: NotVar var_60C
  loc_690484: OrVar var_61C
  loc_690488: LitVarStr var_66C, "0"
  loc_69048D: HardType
  loc_69048E: LitVarI2 var_64C, 1
  loc_690493: LitI4 9
  loc_690498: FLdRfVar var_8C
  loc_69049B: CVarRef
  loc_6904A0: FLdRfVar var_65C
  loc_6904A3: ImpAdCallFPR4  = Mid(, , )
  loc_6904A8: FLdRfVar var_65C
  loc_6904AB: LeVar var_67C
  loc_6904AF: LitVarI2 var_6AC, 1
  loc_6904B4: LitI4 9
  loc_6904B9: FLdRfVar var_8C
  loc_6904BC: CVarRef
  loc_6904C1: FLdRfVar var_6BC
  loc_6904C4: ImpAdCallFPR4  = Mid(, , )
  loc_6904C9: FLdRfVar var_6BC
  loc_6904CC: LitVarStr var_6CC, "9"
  loc_6904D1: HardType
  loc_6904D2: LeVar var_6DC
  loc_6904D6: AndVar var_6EC
  loc_6904DA: NotVar var_6FC
  loc_6904DE: OrVar var_70C
  loc_6904E2: LitVarStr var_75C, "0"
  loc_6904E7: HardType
  loc_6904E8: LitVarI2 var_73C, 1
  loc_6904ED: LitI4 &HA
  loc_6904F2: FLdRfVar var_8C
  loc_6904F5: CVarRef
  loc_6904FA: FLdRfVar var_74C
  loc_6904FD: ImpAdCallFPR4  = Mid(, , )
  loc_690502: FLdRfVar var_74C
  loc_690505: LeVar var_76C
  loc_690509: LitVarI2 var_79C, 1
  loc_69050E: LitI4 &HA
  loc_690513: FLdRfVar var_8C
  loc_690516: CVarRef
  loc_69051B: FLdRfVar var_7AC
  loc_69051E: ImpAdCallFPR4  = Mid(, , )
  loc_690523: FLdRfVar var_7AC
  loc_690526: LitVarStr var_7BC, "9"
  loc_69052B: HardType
  loc_69052C: LeVar var_7CC
  loc_690530: AndVar var_7DC
  loc_690534: NotVar var_7EC
  loc_690538: OrVar var_7FC
  loc_69053C: CBoolVarNull
  loc_69053E: FFreeVar var_79C = "": var_7AC = "": var_AC = "": var_CC = "": var_10C = "": var_12C = "": var_19C = "": var_1AC = "": var_1FC = "": var_20C = "": var_28C = "": var_29C = "": var_2EC = "": var_2FC = "": var_37C = "": var_38C = "": var_3DC = "": var_3EC = "": var_46C = "": var_47C = "": var_4CC = "": var_4DC = "": var_55C = "": var_56C = "": var_5BC = "": var_5CC = "": var_64C = "": var_65C = "": var_6AC = "": var_6BC = "": var_73C = ""
  loc_690581: BranchF loc_6905B9
  loc_690584: FLdI2 arg_10
  loc_690587: BranchF loc_6905B3
  loc_69058A: LitVar_Missing var_10C
  loc_69058D: LitVar_Missing var_EC
  loc_690590: LitVar_Missing var_CC
  loc_690593: LitI4 &H30
  loc_690598: LitVarStr var_9C, "Debe ingresar una fecha válida (dd/mm/aaaa). Verifique por favor."
  loc_69059D: FStVarCopyObj var_AC
  loc_6905A0: FLdRfVar var_AC
  loc_6905A3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6905A8: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_6905B3: LitI2_Byte 0
  loc_6905B5: FStI2 var_86
  loc_6905B8: ExitProcI2
  loc_6905B9: LitVarI2 var_AC, 2
  loc_6905BE: LitI4 1
  loc_6905C3: FLdRfVar var_8C
  loc_6905C6: CVarRef
  loc_6905CB: FLdRfVar var_CC
  loc_6905CE: ImpAdCallFPR4  = Mid(, , )
  loc_6905D3: LitVarI2 var_EC, 2
  loc_6905D8: LitI4 4
  loc_6905DD: FLdRfVar var_8C
  loc_6905E0: CVarRef
  loc_6905E5: FLdRfVar var_10C
  loc_6905E8: ImpAdCallFPR4  = Mid(, , )
  loc_6905ED: LitVarI2 var_12C, 4
  loc_6905F2: LitI4 7
  loc_6905F7: FLdRfVar var_8C
  loc_6905FA: CVarRef
  loc_6905FF: FLdRfVar var_14C
  loc_690602: ImpAdCallFPR4  = Mid(, , )
  loc_690607: FLdRfVar var_14C
  loc_69060A: CI2Var
  loc_69060B: FLdRfVar var_10C
  loc_69060E: CI2Var
  loc_69060F: FLdRfVar var_CC
  loc_690612: CI2Var
  loc_690613: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_690618: NotI4
  loc_690619: FFreeVar var_AC = "": var_EC = "": var_12C = "": var_CC = "": var_10C = ""
  loc_690628: BranchF loc_690660
  loc_69062B: FLdI2 arg_10
  loc_69062E: BranchF loc_69065A
  loc_690631: LitVar_Missing var_10C
  loc_690634: LitVar_Missing var_EC
  loc_690637: LitVar_Missing var_CC
  loc_69063A: LitI4 &H30
  loc_69063F: LitVarStr var_9C, "Debe ingresar una fecha válida (dd/mm/aaaa). Verifique por favor."
  loc_690644: FStVarCopyObj var_AC
  loc_690647: FLdRfVar var_AC
  loc_69064A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_69064F: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_69065A: LitI2_Byte 0
  loc_69065C: FStI2 var_86
  loc_69065F: ExitProcI2
  loc_690660: LitVarI2 var_DC, 1970
  loc_690665: HardType
  loc_690666: LitVarI2 var_AC, 4
  loc_69066B: LitI4 7
  loc_690670: FLdRfVar var_8C
  loc_690673: CVarRef
  loc_690678: FLdRfVar var_CC
  loc_69067B: ImpAdCallFPR4  = Mid(, , )
  loc_690680: FLdRfVar var_CC
  loc_690683: LeVar var_EC
  loc_690687: LitVarI2 var_10C, 4
  loc_69068C: LitI4 7
  loc_690691: FLdRfVar var_8C
  loc_690694: CVarRef
  loc_690699: FLdRfVar var_12C
  loc_69069C: ImpAdCallFPR4  = Mid(, , )
  loc_6906A1: FLdRfVar var_12C
  loc_6906A4: LitVarI2 var_13C, 2024
  loc_6906A9: HardType
  loc_6906AA: LeVar var_14C
  loc_6906AE: AndVar var_15C
  loc_6906B2: NotVar var_16C
  loc_6906B6: CBoolVarNull
  loc_6906B8: FFreeVar var_AC = "": var_CC = "": var_10C = ""
  loc_6906C3: BranchF loc_6906FB
  loc_6906C6: FLdI2 arg_10
  loc_6906C9: BranchF loc_6906F5
  loc_6906CC: LitVar_Missing var_10C
  loc_6906CF: LitVar_Missing var_EC
  loc_6906D2: LitVar_Missing var_CC
  loc_6906D5: LitI4 &H30
  loc_6906DA: LitVarStr var_9C, "Debe ingresar una fecha válida (dd/mm/aaaa) mayor al 01/01/1970 y menor al 31/12/2024. Verifique por favor."
  loc_6906DF: FStVarCopyObj var_AC
  loc_6906E2: FLdRfVar var_AC
  loc_6906E5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6906EA: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_6906F5: LitI2_Byte 0
  loc_6906F7: FStI2 var_86
  loc_6906FA: ExitProcI2
  loc_6906FB: LitI2_Byte &HFF
  loc_6906FD: FStI2 var_86
  loc_690700: ExitProcI2
End Function

Private Function Proc_87_10_68AE2C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '68AE2C
  'Data Table: 43B664
  loc_68A8AC: ILdRf arg_C
  loc_68A8AF: FStStrCopy var_8C
  loc_68A8B2: FLdI2 arg_20
  loc_68A8B5: LitI2_Byte 0
  loc_68A8B7: GtI2
  loc_68A8B8: BranchF loc_68AAE4
  loc_68A8BB: FLdI2 arg_1C
  loc_68A8BE: LitI2_Byte 0
  loc_68A8C0: EqI2
  loc_68A8C1: BranchF loc_68A91B
  loc_68A8C4: FLdI2 arg_10
  loc_68A8C7: LitI2_Byte &H2E
  loc_68A8C9: EqI2
  loc_68A8CA: FLdI2 arg_10
  loc_68A8CD: LitI2_Byte 8
  loc_68A8CF: EqI2
  loc_68A8D0: OrI4
  loc_68A8D1: BranchF loc_68A8EC
  loc_68A8D4: LitVar_Missing var_B8
  loc_68A8D7: FLdI2 arg_20
  loc_68A8DA: CI4UI1
  loc_68A8DB: ILdRf var_8C
  loc_68A8DE: ImpAdCallI2 Mid$(, , )
  loc_68A8E3: FStStr var_8C
  loc_68A8E6: FFree1Var var_B8 = ""
  loc_68A8E9: Branch loc_68A918
  loc_68A8EC: FLdI2 arg_10
  loc_68A8EF: CI4UI1
  loc_68A8F0: ImpAdCallI2 Chr$()
  loc_68A8F5: FStStrNoPop var_BC
  loc_68A8F8: LitVar_Missing var_B8
  loc_68A8FB: FLdI2 arg_20
  loc_68A8FE: CI4UI1
  loc_68A8FF: ILdRf var_8C
  loc_68A902: ImpAdCallI2 Mid$(, , )
  loc_68A907: FStStrNoPop var_C0
  loc_68A90A: ConcatStr
  loc_68A90B: FStStr var_8C
  loc_68A90E: FFreeStr var_BC = ""
  loc_68A915: FFree1Var var_B8 = ""
  loc_68A918: Branch loc_68A9C0
  loc_68A91B: FLdI2 arg_10
  loc_68A91E: LitI2_Byte &H2E
  loc_68A920: EqI2
  loc_68A921: FLdI2 arg_10
  loc_68A924: LitI2_Byte 8
  loc_68A926: EqI2
  loc_68A927: OrI4
  loc_68A928: BranchF loc_68A96D
  loc_68A92B: FLdRfVar arg_1C
  loc_68A92E: CVarRef
  loc_68A933: LitI4 1
  loc_68A938: ILdRf var_8C
  loc_68A93B: ImpAdCallI2 Mid$(, , )
  loc_68A940: FStStrNoPop var_BC
  loc_68A943: LitVar_Missing var_B8
  loc_68A946: FLdI2 arg_1C
  loc_68A949: FLdI2 arg_20
  loc_68A94C: AddI2
  loc_68A94D: LitI2_Byte 1
  loc_68A94F: AddI2
  loc_68A950: CI4UI1
  loc_68A951: ILdRf var_8C
  loc_68A954: ImpAdCallI2 Mid$(, , )
  loc_68A959: FStStrNoPop var_C0
  loc_68A95C: ConcatStr
  loc_68A95D: FStStr var_8C
  loc_68A960: FFreeStr var_BC = ""
  loc_68A967: FFree1Var var_B8 = ""
  loc_68A96A: Branch loc_68A9C0
  loc_68A96D: FLdRfVar arg_1C
  loc_68A970: CVarRef
  loc_68A975: LitI4 1
  loc_68A97A: ILdRf var_8C
  loc_68A97D: ImpAdCallI2 Mid$(, , )
  loc_68A982: FStStrNoPop var_BC
  loc_68A985: FLdI2 arg_10
  loc_68A988: CI4UI1
  loc_68A989: ImpAdCallI2 Chr$()
  loc_68A98E: FStStrNoPop var_C0
  loc_68A991: ConcatStr
  loc_68A992: FStStrNoPop var_D4
  loc_68A995: LitVar_Missing var_B8
  loc_68A998: FLdI2 arg_1C
  loc_68A99B: FLdI2 arg_20
  loc_68A99E: AddI2
  loc_68A99F: LitI2_Byte 1
  loc_68A9A1: AddI2
  loc_68A9A2: CI4UI1
  loc_68A9A3: ILdRf var_8C
  loc_68A9A6: ImpAdCallI2 Mid$(, , )
  loc_68A9AB: FStStrNoPop var_D8
  loc_68A9AE: ConcatStr
  loc_68A9AF: FStStr var_8C
  loc_68A9B2: FFreeStr var_BC = "": var_C0 = "": var_D4 = ""
  loc_68A9BD: FFree1Var var_B8 = ""
  loc_68A9C0: LitStr "0"
  loc_68A9C3: LitI4 1
  loc_68A9C8: ILdRf var_8C
  loc_68A9CB: LitStr "."
  loc_68A9CE: LitI4 0
  loc_68A9D3: FnInStr4
  loc_68A9D5: CStrI4
  loc_68A9D7: FStStrNoPop var_BC
  loc_68A9DA: ConcatStr
  loc_68A9DB: FStStrNoPop var_C0
  loc_68A9DE: CI2Str
  loc_68A9E0: LitI2_Byte 0
  loc_68A9E2: NeI2
  loc_68A9E3: FFreeStr var_BC = ""
  loc_68A9EA: BranchF loc_68AA1A
  loc_68A9ED: LitStr "0"
  loc_68A9F0: LitI4 1
  loc_68A9F5: ILdRf var_8C
  loc_68A9F8: LitStr "."
  loc_68A9FB: LitI4 0
  loc_68AA00: FnInStr4
  loc_68AA02: CStrI4
  loc_68AA04: FStStrNoPop var_BC
  loc_68AA07: ConcatStr
  loc_68AA08: FStStrNoPop var_C0
  loc_68AA0B: CI2Str
  loc_68AA0D: FStI2 var_96
  loc_68AA10: FFreeStr var_BC = ""
  loc_68AA17: Branch loc_68AA7C
  loc_68AA1A: LitStr "0"
  loc_68AA1D: LitI4 1
  loc_68AA22: ILdRf var_8C
  loc_68AA25: LitStr ","
  loc_68AA28: LitI4 0
  loc_68AA2D: FnInStr4
  loc_68AA2F: CStrI4
  loc_68AA31: FStStrNoPop var_BC
  loc_68AA34: ConcatStr
  loc_68AA35: FStStrNoPop var_C0
  loc_68AA38: CI2Str
  loc_68AA3A: LitI2_Byte 0
  loc_68AA3C: NeI2
  loc_68AA3D: FFreeStr var_BC = ""
  loc_68AA44: BranchF loc_68AA74
  loc_68AA47: LitStr "0"
  loc_68AA4A: LitI4 1
  loc_68AA4F: ILdRf var_8C
  loc_68AA52: LitStr ","
  loc_68AA55: LitI4 0
  loc_68AA5A: FnInStr4
  loc_68AA5C: CStrI4
  loc_68AA5E: FStStrNoPop var_BC
  loc_68AA61: ConcatStr
  loc_68AA62: FStStrNoPop var_C0
  loc_68AA65: CI2Str
  loc_68AA67: FStI2 var_96
  loc_68AA6A: FFreeStr var_BC = ""
  loc_68AA71: Branch loc_68AA7C
  loc_68AA74: ILdRf var_8C
  loc_68AA77: FnLenStr
  loc_68AA78: CI2I4
  loc_68AA79: FStI2 var_96
  loc_68AA7C: FLdI2 var_96
  loc_68AA7F: LitI2_Byte 1
  loc_68AA81: EqI2
  loc_68AA82: BranchF loc_68AA8E
  loc_68AA85: LitStr vbNullString
  loc_68AA88: FStStrCopy var_90
  loc_68AA8B: Branch loc_68AABA
  loc_68AA8E: LitStr "0"
  loc_68AA91: FLdRfVar var_96
  loc_68AA94: CVarRef
  loc_68AA99: LitI4 1
  loc_68AA9E: ILdRf var_8C
  loc_68AAA1: ImpAdCallI2 Mid$(, , )
  loc_68AAA6: FStStrNoPop var_BC
  loc_68AAA9: ConcatStr
  loc_68AAAA: FStStrNoPop var_C0
  loc_68AAAD: CI4Str
  loc_68AAAE: CStrI4
  loc_68AAB0: FStStr var_90
  loc_68AAB3: FFreeStr var_BC = ""
  loc_68AABA: ILdRf var_90
  loc_68AABD: FnLenStr
  loc_68AABE: FLdI2 arg_14
  loc_68AAC1: CI4UI1
  loc_68AAC2: GtI4
  loc_68AAC3: ILdRf var_94
  loc_68AAC6: FnLenStr
  loc_68AAC7: FLdI2 arg_18
  loc_68AACA: CI4UI1
  loc_68AACB: GtI4
  loc_68AACC: OrI4
  loc_68AACD: BranchF loc_68AADD
  loc_68AAD0: ImpAdCallFPR4 Beep()
  loc_68AAD5: LitI2_Byte 0
  loc_68AAD7: FStI2 var_86
  loc_68AADA: Branch loc_68AAE3
  loc_68AADD: FLdI2 arg_10
  loc_68AAE0: FStI2 var_86
  loc_68AAE3: ExitProcI2
  loc_68AAE4: LitStr "0"
  loc_68AAE7: LitI4 1
  loc_68AAEC: ILdRf var_8C
  loc_68AAEF: LitStr "."
  loc_68AAF2: LitI4 0
  loc_68AAF7: FnInStr4
  loc_68AAF9: CStrI4
  loc_68AAFB: FStStrNoPop var_BC
  loc_68AAFE: ConcatStr
  loc_68AAFF: FStStrNoPop var_C0
  loc_68AB02: CI2Str
  loc_68AB04: LitI2_Byte 0
  loc_68AB06: NeI2
  loc_68AB07: FFreeStr var_BC = ""
  loc_68AB0E: BranchF loc_68AB3E
  loc_68AB11: LitStr "0"
  loc_68AB14: LitI4 1
  loc_68AB19: ILdRf var_8C
  loc_68AB1C: LitStr "."
  loc_68AB1F: LitI4 0
  loc_68AB24: FnInStr4
  loc_68AB26: CStrI4
  loc_68AB28: FStStrNoPop var_BC
  loc_68AB2B: ConcatStr
  loc_68AB2C: FStStrNoPop var_C0
  loc_68AB2F: CI2Str
  loc_68AB31: FStI2 var_96
  loc_68AB34: FFreeStr var_BC = ""
  loc_68AB3B: Branch loc_68ABA0
  loc_68AB3E: LitStr "0"
  loc_68AB41: LitI4 1
  loc_68AB46: ILdRf var_8C
  loc_68AB49: LitStr ","
  loc_68AB4C: LitI4 0
  loc_68AB51: FnInStr4
  loc_68AB53: CStrI4
  loc_68AB55: FStStrNoPop var_BC
  loc_68AB58: ConcatStr
  loc_68AB59: FStStrNoPop var_C0
  loc_68AB5C: CI2Str
  loc_68AB5E: LitI2_Byte 0
  loc_68AB60: NeI2
  loc_68AB61: FFreeStr var_BC = ""
  loc_68AB68: BranchF loc_68AB98
  loc_68AB6B: LitStr "0"
  loc_68AB6E: LitI4 1
  loc_68AB73: ILdRf var_8C
  loc_68AB76: LitStr ","
  loc_68AB79: LitI4 0
  loc_68AB7E: FnInStr4
  loc_68AB80: CStrI4
  loc_68AB82: FStStrNoPop var_BC
  loc_68AB85: ConcatStr
  loc_68AB86: FStStrNoPop var_C0
  loc_68AB89: CI2Str
  loc_68AB8B: FStI2 var_96
  loc_68AB8E: FFreeStr var_BC = ""
  loc_68AB95: Branch loc_68ABA0
  loc_68AB98: ILdRf var_8C
  loc_68AB9B: FnLenStr
  loc_68AB9C: CI2I4
  loc_68AB9D: FStI2 var_96
  loc_68ABA0: FLdI2 var_96
  loc_68ABA3: LitI2_Byte 1
  loc_68ABA5: EqI2
  loc_68ABA6: BranchF loc_68ABB2
  loc_68ABA9: LitStr vbNullString
  loc_68ABAC: FStStrCopy var_90
  loc_68ABAF: Branch loc_68ABDE
  loc_68ABB2: LitStr "0"
  loc_68ABB5: FLdRfVar var_96
  loc_68ABB8: CVarRef
  loc_68ABBD: LitI4 1
  loc_68ABC2: ILdRf var_8C
  loc_68ABC5: ImpAdCallI2 Mid$(, , )
  loc_68ABCA: FStStrNoPop var_BC
  loc_68ABCD: ConcatStr
  loc_68ABCE: FStStrNoPop var_C0
  loc_68ABD1: CI4Str
  loc_68ABD2: CStrI4
  loc_68ABD4: FStStr var_90
  loc_68ABD7: FFreeStr var_BC = ""
  loc_68ABDE: FLdI2 var_96
  loc_68ABE1: CI4UI1
  loc_68ABE2: ILdRf var_8C
  loc_68ABE5: FnLenStr
  loc_68ABE6: EqI4
  loc_68ABE7: BranchF loc_68ABF3
  loc_68ABEA: LitStr vbNullString
  loc_68ABED: FStStrCopy var_94
  loc_68ABF0: Branch loc_68AC0B
  loc_68ABF3: LitVar_Missing var_B8
  loc_68ABF6: FLdI2 var_96
  loc_68ABF9: LitI2_Byte 1
  loc_68ABFB: AddI2
  loc_68ABFC: CI4UI1
  loc_68ABFD: ILdRf var_8C
  loc_68AC00: ImpAdCallI2 Mid$(, , )
  loc_68AC05: FStStr var_94
  loc_68AC08: FFree1Var var_B8 = ""
  loc_68AC0B: FLdI2 arg_10
  loc_68AC0E: FStI2 var_DA
  loc_68AC11: FLdI2 var_DA
  loc_68AC14: LitI4 &H30
  loc_68AC19: CI2I4
  loc_68AC1A: LitI4 &H39
  loc_68AC1F: CI2I4
  loc_68AC20: BetweenI2
  loc_68AC22: BranchF loc_68ACEB
  loc_68AC25: FLdI2 arg_1C
  loc_68AC28: FLdI2 var_96
  loc_68AC2B: LtI2
  loc_68AC2C: BranchF loc_68AC51
  loc_68AC2F: ILdRf var_90
  loc_68AC32: FnLenStr
  loc_68AC33: FLdI2 arg_14
  loc_68AC36: CI4UI1
  loc_68AC37: LtI4
  loc_68AC38: BranchF loc_68AC44
  loc_68AC3B: FLdI2 arg_10
  loc_68AC3E: FStI2 var_86
  loc_68AC41: Branch loc_68AC4E
  loc_68AC44: ImpAdCallFPR4 Beep()
  loc_68AC49: LitI2_Byte 0
  loc_68AC4B: FStI2 var_86
  loc_68AC4E: Branch loc_68ACE8
  loc_68AC51: FLdI2 var_96
  loc_68AC54: LitI2_Byte 0
  loc_68AC56: EqI2
  loc_68AC57: BranchF loc_68AC63
  loc_68AC5A: FLdI2 arg_10
  loc_68AC5D: FStI2 var_86
  loc_68AC60: Branch loc_68ACE8
  loc_68AC63: LitVarI2 var_B8, 1
  loc_68AC68: FLdI2 var_96
  loc_68AC6B: CI4UI1
  loc_68AC6C: ILdRf var_8C
  loc_68AC6F: ImpAdCallI2 Mid$(, , )
  loc_68AC74: FStStrNoPop var_BC
  loc_68AC77: LitStr "."
  loc_68AC7A: EqStr
  loc_68AC7C: LitVarI2 var_EC, 1
  loc_68AC81: FLdI2 var_96
  loc_68AC84: CI4UI1
  loc_68AC85: ILdRf var_8C
  loc_68AC88: ImpAdCallI2 Mid$(, , )
  loc_68AC8D: FStStrNoPop var_C0
  loc_68AC90: LitStr ","
  loc_68AC93: EqStr
  loc_68AC95: OrI4
  loc_68AC96: FFreeStr var_BC = ""
  loc_68AC9D: FFreeVar var_B8 = ""
  loc_68ACA4: BranchF loc_68ACC9
  loc_68ACA7: ILdRf var_94
  loc_68ACAA: FnLenStr
  loc_68ACAB: FLdI2 arg_18
  loc_68ACAE: CI4UI1
  loc_68ACAF: LtI4
  loc_68ACB0: BranchF loc_68ACBC
  loc_68ACB3: FLdI2 arg_10
  loc_68ACB6: FStI2 var_86
  loc_68ACB9: Branch loc_68ACC6
  loc_68ACBC: ImpAdCallFPR4 Beep()
  loc_68ACC1: LitI2_Byte 0
  loc_68ACC3: FStI2 var_86
  loc_68ACC6: Branch loc_68ACE8
  loc_68ACC9: ILdRf var_90
  loc_68ACCC: FnLenStr
  loc_68ACCD: FLdI2 arg_14
  loc_68ACD0: CI4UI1
  loc_68ACD1: LtI4
  loc_68ACD2: BranchF loc_68ACDE
  loc_68ACD5: FLdI2 arg_10
  loc_68ACD8: FStI2 var_86
  loc_68ACDB: Branch loc_68ACE8
  loc_68ACDE: ImpAdCallFPR4 Beep()
  loc_68ACE3: LitI2_Byte 0
  loc_68ACE5: FStI2 var_86
  loc_68ACE8: Branch loc_68AE29
  loc_68ACEB: FLdI2 var_DA
  loc_68ACEE: LitStr "."
  loc_68ACF1: ImpAdCallI2 Asc()
  loc_68ACF6: EqI2
  loc_68ACF7: BranchT loc_68AD09
  loc_68ACFA: FLdI2 var_DA
  loc_68ACFD: LitStr ","
  loc_68AD00: ImpAdCallI2 Asc()
  loc_68AD05: EqI2
  loc_68AD06: BranchF loc_68AD94
  loc_68AD09: FLdI2 var_96
  loc_68AD0C: LitI2_Byte 0
  loc_68AD0E: EqI2
  loc_68AD0F: BranchF loc_68AD1B
  loc_68AD12: FLdI2 arg_10
  loc_68AD15: FStI2 var_86
  loc_68AD18: Branch loc_68AD91
  loc_68AD1B: LitVarI2 var_B8, 1
  loc_68AD20: FLdI2 var_96
  loc_68AD23: CI4UI1
  loc_68AD24: ILdRf var_8C
  loc_68AD27: ImpAdCallI2 Mid$(, , )
  loc_68AD2C: FStStrNoPop var_BC
  loc_68AD2F: LitStr "."
  loc_68AD32: EqStr
  loc_68AD34: LitVarI2 var_EC, 1
  loc_68AD39: FLdI2 var_96
  loc_68AD3C: CI4UI1
  loc_68AD3D: ILdRf var_8C
  loc_68AD40: ImpAdCallI2 Mid$(, , )
  loc_68AD45: FStStrNoPop var_C0
  loc_68AD48: LitStr ","
  loc_68AD4B: EqStr
  loc_68AD4D: OrI4
  loc_68AD4E: FFreeStr var_BC = ""
  loc_68AD55: FFreeVar var_B8 = ""
  loc_68AD5C: BranchF loc_68AD6C
  loc_68AD5F: ImpAdCallFPR4 Beep()
  loc_68AD64: LitI2_Byte 0
  loc_68AD66: FStI2 var_86
  loc_68AD69: Branch loc_68AD91
  loc_68AD6C: FLdI2 arg_1C
  loc_68AD6F: CI4UI1
  loc_68AD70: ILdRf var_8C
  loc_68AD73: FnLenStr
  loc_68AD74: LitI4 2
  loc_68AD79: SubI4
  loc_68AD7A: GeI4
  loc_68AD7B: BranchF loc_68AD87
  loc_68AD7E: FLdI2 arg_10
  loc_68AD81: FStI2 var_86
  loc_68AD84: Branch loc_68AD91
  loc_68AD87: ImpAdCallFPR4 Beep()
  loc_68AD8C: LitI2_Byte 0
  loc_68AD8E: FStI2 var_86
  loc_68AD91: Branch loc_68AE29
  loc_68AD94: FLdI2 var_DA
  loc_68AD97: LitI2_Byte 8
  loc_68AD99: EqI2
  loc_68AD9A: BranchF loc_68AE29
  loc_68AD9D: FLdI2 arg_1C
  loc_68ADA0: LitI2_Byte 0
  loc_68ADA2: EqI2
  loc_68ADA3: BranchF loc_68ADB3
  loc_68ADA6: ImpAdCallFPR4 Beep()
  loc_68ADAB: LitI2_Byte 0
  loc_68ADAD: FStI2 var_86
  loc_68ADB0: Branch loc_68AE29
  loc_68ADB3: LitVarI2 var_B8, 1
  loc_68ADB8: FLdI2 arg_1C
  loc_68ADBB: CI4UI1
  loc_68ADBC: ILdRf var_8C
  loc_68ADBF: ImpAdCallI2 Mid$(, , )
  loc_68ADC4: FStStrNoPop var_BC
  loc_68ADC7: LitStr "."
  loc_68ADCA: EqStr
  loc_68ADCC: LitVarI2 var_EC, 1
  loc_68ADD1: FLdI2 arg_1C
  loc_68ADD4: CI4UI1
  loc_68ADD5: ILdRf var_8C
  loc_68ADD8: ImpAdCallI2 Mid$(, , )
  loc_68ADDD: FStStrNoPop var_C0
  loc_68ADE0: LitStr ","
  loc_68ADE3: EqStr
  loc_68ADE5: OrI4
  loc_68ADE6: FFreeStr var_BC = ""
  loc_68ADED: FFreeVar var_B8 = ""
  loc_68ADF4: BranchF loc_68AE23
  loc_68ADF7: ILdRf var_90
  loc_68ADFA: ILdRf var_94
  loc_68ADFD: ConcatStr
  loc_68ADFE: FStStrNoPop var_BC
  loc_68AE01: FnLenStr
  loc_68AE02: FLdI2 arg_14
  loc_68AE05: CI4UI1
  loc_68AE06: GtI4
  loc_68AE07: FFree1Str var_BC
  loc_68AE0A: BranchF loc_68AE1A
  loc_68AE0D: ImpAdCallFPR4 Beep()
  loc_68AE12: LitI2_Byte 0
  loc_68AE14: FStI2 var_86
  loc_68AE17: Branch loc_68AE20
  loc_68AE1A: FLdI2 arg_10
  loc_68AE1D: FStI2 var_86
  loc_68AE20: Branch loc_68AE29
  loc_68AE23: FLdI2 arg_10
  loc_68AE26: FStI2 var_86
  loc_68AE29: ExitProcI2
End Function

Private Function Proc_87_11_5EEA34(arg_C) '5EEA34
  'Data Table: 43B664
  loc_5EE99C: ILdI4 arg_C
  loc_5EE99F: LitStr vbNullString
  loc_5EE9A2: EqStr
  loc_5EE9A4: BranchF loc_5EE9B6
  loc_5EE9A7: LitCy 0
  loc_5EE9B0: FStR8 var_8C
  loc_5EE9B3: Branch loc_5EEA30
  loc_5EE9B6: ILdI4 arg_C
  loc_5EE9B9: FStStrCopy var_94
  loc_5EE9BC: LitI4 1
  loc_5EE9C1: ILdI4 arg_C
  loc_5EE9C4: LitStr "."
  loc_5EE9C7: LitI4 0
  loc_5EE9CC: FnInStr4
  loc_5EE9CE: CUI1I4
  loc_5EE9D0: FStUI1 var_8E
  loc_5EE9D4: LitI4 1
  loc_5EE9D9: ILdI4 arg_C
  loc_5EE9DC: LitStr ","
  loc_5EE9DF: LitI4 0
  loc_5EE9E4: FnInStr4
  loc_5EE9E6: CUI1I4
  loc_5EE9E8: FStUI1 var_90
  loc_5EE9EC: FLdUI1
  loc_5EE9F0: CBoolUI1
  loc_5EE9F2: BranchF loc_5EEA08
  loc_5EE9F5: FLdRfVar var_94
  loc_5EE9F8: FLdUI1
  loc_5EE9FC: CI4UI1
  loc_5EE9FD: LitI4 &H3FFFFFFF
  loc_5EEA02: LitStr ","
  loc_5EEA05: MidStr arg_0
  loc_5EEA08: FLdUI1
  loc_5EEA0C: CBoolUI1
  loc_5EEA0E: BranchF loc_5EEA24
  loc_5EEA11: FLdRfVar var_94
  loc_5EEA14: FLdUI1
  loc_5EEA18: CI4UI1
  loc_5EEA19: LitI4 &H3FFFFFFF
  loc_5EEA1E: LitStr "."
  loc_5EEA21: MidStr arg_0
  loc_5EEA24: ILdRf var_94
  loc_5EEA27: ImpAdCallFPR4 push Val()
  loc_5EEA2C: CCyR4
  loc_5EEA2D: FStR8 var_8C
  loc_5EEA30: ExitProcCy
  loc_5EEA31: FStFPR8 var_B01
End Function

Private Function Proc_87_12_636CDC(arg_C, arg_10, arg_14, arg_18) '636CDC
  'Data Table: 43B664
  loc_636AE0: ILdI2 arg_C
  loc_636AE3: FStI2 var_92
  loc_636AE6: FLdI2 var_92
  loc_636AE9: LitI2_Byte 8
  loc_636AEB: EqI2
  loc_636AEC: BranchF loc_636B4F
  loc_636AEF: FLdUI1
  loc_636AF3: CI2UI1
  loc_636AF5: LitI2_Byte 1
  loc_636AF7: LtI2
  loc_636AF8: BranchF loc_636B05
  loc_636AFB: LitStr vbNullString
  loc_636AFE: IStStrCopy arg_10
  loc_636B02: Branch loc_636B4C
  loc_636B05: FLdUI1
  loc_636B09: CI2UI1
  loc_636B0B: LitI2_Byte 1
  loc_636B0D: SubI2
  loc_636B0E: CVarI2 var_B4
  loc_636B11: LitI4 1
  loc_636B16: ILdI4 arg_10
  loc_636B19: ImpAdCallI2 Mid$(, , )
  loc_636B1E: FStStrNoPop var_D8
  loc_636B21: LitVar_Missing var_D4
  loc_636B24: FLdUI1
  loc_636B28: CI2UI1
  loc_636B2A: LitI2_Byte 1
  loc_636B2C: AddI2
  loc_636B2D: CI4UI1
  loc_636B2E: ILdI4 arg_10
  loc_636B31: ImpAdCallI2 Mid$(, , )
  loc_636B36: FStStrNoPop var_DC
  loc_636B39: ConcatStr
  loc_636B3A: IStStr
  loc_636B3E: FFreeStr var_D8 = ""
  loc_636B45: FFreeVar var_B4 = ""
  loc_636B4C: Branch loc_636C52
  loc_636B4F: FLdI2 var_92
  loc_636B52: LitI2_Byte &H2C
  loc_636B54: EqI2
  loc_636B55: BranchT loc_636B61
  loc_636B58: FLdI2 var_92
  loc_636B5B: LitI2_Byte &H2E
  loc_636B5D: EqI2
  loc_636B5E: BranchF loc_636BE5
  loc_636B61: LitI2_Byte &H2C
  loc_636B63: IStI2 arg_C
  loc_636B66: LitI4 1
  loc_636B6B: ILdI4 arg_10
  loc_636B6E: LitStr ","
  loc_636B71: LitI4 0
  loc_636B76: FnInStr4
  loc_636B78: LitI4 0
  loc_636B7D: EqI4
  loc_636B7E: BranchF loc_636BD7
  loc_636B81: FLdRfVar arg_14
  loc_636B84: CVarRef
  loc_636B89: LitI4 1
  loc_636B8E: ILdI4 arg_10
  loc_636B91: ImpAdCallI2 Mid$(, , )
  loc_636B96: FStStrNoPop var_D8
  loc_636B99: ILdI2 arg_C
  loc_636B9C: CI4UI1
  loc_636B9D: ImpAdCallI2 Chr$()
  loc_636BA2: FStStrNoPop var_DC
  loc_636BA5: ConcatStr
  loc_636BA6: FStStrNoPop var_E0
  loc_636BA9: LitVar_Missing var_B4
  loc_636BAC: FLdUI1
  loc_636BB0: CI2UI1
  loc_636BB2: LitI2_Byte 1
  loc_636BB4: AddI2
  loc_636BB5: CI4UI1
  loc_636BB6: ILdI4 arg_10
  loc_636BB9: ImpAdCallI2 Mid$(, , )
  loc_636BBE: FStStrNoPop var_E4
  loc_636BC1: ConcatStr
  loc_636BC2: IStStr
  loc_636BC6: FFreeStr var_D8 = "": var_DC = "": var_E0 = ""
  loc_636BD1: FFree1Var var_B4 = ""
  loc_636BD4: Branch loc_636BE2
  loc_636BD7: ImpAdCallFPR4 Beep()
  loc_636BDC: LitI2_Byte 0
  loc_636BDE: IStI2 arg_C
  loc_636BE1: ExitProc
  loc_636BE2: Branch loc_636C52
  loc_636BE5: FLdI2 var_92
  loc_636BE8: LitI2_Byte &H30
  loc_636BEA: LitI2_Byte &H39
  loc_636BEC: BetweenI2
  loc_636BEE: BranchF loc_636C47
  loc_636BF1: FLdRfVar arg_14
  loc_636BF4: CVarRef
  loc_636BF9: LitI4 1
  loc_636BFE: ILdI4 arg_10
  loc_636C01: ImpAdCallI2 Mid$(, , )
  loc_636C06: FStStrNoPop var_D8
  loc_636C09: ILdI2 arg_C
  loc_636C0C: CI4UI1
  loc_636C0D: ImpAdCallI2 Chr$()
  loc_636C12: FStStrNoPop var_DC
  loc_636C15: ConcatStr
  loc_636C16: FStStrNoPop var_E0
  loc_636C19: LitVar_Missing var_B4
  loc_636C1C: FLdUI1
  loc_636C20: CI2UI1
  loc_636C22: LitI2_Byte 1
  loc_636C24: AddI2
  loc_636C25: CI4UI1
  loc_636C26: ILdI4 arg_10
  loc_636C29: ImpAdCallI2 Mid$(, , )
  loc_636C2E: FStStrNoPop var_E4
  loc_636C31: ConcatStr
  loc_636C32: IStStr
  loc_636C36: FFreeStr var_D8 = "": var_DC = "": var_E0 = ""
  loc_636C41: FFree1Var var_B4 = ""
  loc_636C44: Branch loc_636C52
  loc_636C47: ImpAdCallFPR4 Beep()
  loc_636C4C: LitI2_Byte 0
  loc_636C4E: IStI2 arg_C
  loc_636C51: ExitProc
  loc_636C52: ILdRf arg_10
  loc_636C55: ImpAdCallCy Proc_87_11_5EEA34()
  loc_636C5A: FStR8 var_90
  loc_636C5D: FLdR8 var_90
  loc_636C60: LitCy 0
  loc_636C69: EqCy
  loc_636C6A: BranchF loc_636C77
  loc_636C6D: LitStr vbNullString
  loc_636C70: IStStrCopy arg_10
  loc_636C74: Branch loc_636C8B
  loc_636C77: FLdR8 var_90
  loc_636C7A: CStrCy
  loc_636C7C: FStStrNoPop var_D8
  loc_636C7F: ImpAdCallI2 Trim$()
  loc_636C84: IStStr
  loc_636C88: FFree1Str var_D8
  loc_636C8B: LitI4 1
  loc_636C90: ILdI4 arg_10
  loc_636C93: LitStr ","
  loc_636C96: LitI4 0
  loc_636C9B: FnInStr4
  loc_636C9D: CUI1I4
  loc_636C9F: FStUI1 var_86
  loc_636CA3: FLdR8 var_90
  loc_636CA6: FLdR8 arg_18
  loc_636CA9: LeCy
  loc_636CAA: BranchF loc_636CCE
  loc_636CAD: FLdUI1
  loc_636CB1: CBoolUI1
  loc_636CB3: BranchF loc_636CCD
  loc_636CB6: ILdI4 arg_10
  loc_636CB9: FnLenStr
  loc_636CBA: FLdUI1
  loc_636CBE: CI4UI1
  loc_636CBF: SubI4
  loc_636CC0: FLdUI1
  loc_636CC4: CI4UI1
  loc_636CC5: LeI4
  loc_636CC6: BranchF loc_636CCA
  loc_636CC9: ExitProc
  loc_636CCA: Branch loc_636CCE
  loc_636CCD: ExitProc
  loc_636CCE: ImpAdCallFPR4 Beep()
  loc_636CD3: LitI2_Byte 0
  loc_636CD5: IStI2 arg_C
  loc_636CD8: ExitProc
End Function

Private Function Proc_87_13_5E04EC(arg_C) '5E04EC
  'Data Table: 43B664
  loc_5E04A4: ILdRf arg_C
  loc_5E04A7: FStStrCopy var_8C
  loc_5E04AA: LitI4 1
  loc_5E04AF: LitI4 1
  loc_5E04B4: LitVarStr var_AC, "yyyymmdd"
  loc_5E04B9: FStVarCopyObj var_BC
  loc_5E04BC: FLdRfVar var_BC
  loc_5E04BF: FLdRfVar var_8C
  loc_5E04C2: CVarRef
  loc_5E04C7: FLdRfVar var_CC
  loc_5E04CA: ImpAdCallFPR4  = Format(, )
  loc_5E04CF: FLdRfVar var_CC
  loc_5E04D2: LitVarStr var_DC, vbNullString
  loc_5E04D7: ConcatVar var_EC
  loc_5E04DB: CStrVarTmp
  loc_5E04DC: FStStr var_88
  loc_5E04DF: FFreeVar var_BC = "": var_CC = ""
  loc_5E04E8: ExitProc
  loc_5E04E9: FLdRfVar arg_3F3
End Function

Private Function Proc_87_14_5F88D8(arg_C, arg_10, arg_14) '5F88D8
  'Data Table: 409184
  loc_5F8830: LitI4 0
  loc_5F8835: FLdRfVar var_9C
  loc_5F8838: ImpAdCallFPR4  = Chr()
  loc_5F883D: FLdRfVar var_9C
  loc_5F8840: LitI4 &HFF
  loc_5F8845: FLdRfVar var_AC
  loc_5F8848: ImpAdCallFPR4  = String(, )
  loc_5F884D: FLdRfVar var_AC
  loc_5F8850: CStrVarTmp
  loc_5F8851: FStStr var_8C
  loc_5F8854: FFreeVar var_9C = ""
  loc_5F885B: ILdI4 arg_14
  loc_5F885E: FLdRfVar var_C0
  loc_5F8861: CStr2Ansi
  loc_5F8862: ILdRf var_C0
  loc_5F8865: ILdRf var_8C
  loc_5F8868: FnLenStr
  loc_5F8869: ILdRf var_8C
  loc_5F886C: FLdRfVar var_BC
  loc_5F886F: CStr2Ansi
  loc_5F8870: ILdRf var_BC
  loc_5F8873: LitStr vbNullString
  loc_5F8876: FLdRfVar var_B8
  loc_5F8879: CStr2Ansi
  loc_5F887A: ILdRf var_B8
  loc_5F887D: ILdI4 arg_10
  loc_5F8880: FLdRfVar var_B4
  loc_5F8883: CStr2Ansi
  loc_5F8884: ILdRf var_B4
  loc_5F8887: ILdI4 arg_C
  loc_5F888A: FLdRfVar var_B0
  loc_5F888D: CStr2Ansi
  loc_5F888E: ILdRf var_B0
  loc_5F8891: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_5F8896: FStR4 var_C4
  loc_5F8899: SetLastSystemError
  loc_5F889A: ILdRf var_B0
  loc_5F889D: ILdRf arg_C
  loc_5F88A0: CStr2Uni
  loc_5F88A2: ILdRf var_B4
  loc_5F88A5: ILdRf arg_10
  loc_5F88A8: CStr2Uni
  loc_5F88AA: ILdRf var_BC
  loc_5F88AD: FLdRfVar var_8C
  loc_5F88B0: CStr2Uni
  loc_5F88B2: ILdRf var_C0
  loc_5F88B5: ILdRf arg_14
  loc_5F88B8: CStr2Uni
  loc_5F88BA: ILdRf var_C4
  loc_5F88BD: ILdRf var_8C
  loc_5F88C0: ImpAdCallI2 Left$(, )
  loc_5F88C5: FStStr var_88
  loc_5F88C8: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_5F88D5: ExitProc
End Function

Private Function Proc_87_15_5C8864() '5C8864
  'Data Table: 43B664
  loc_5C8860: ExitProcI2
End Function

Private Function Proc_87_16_603978(arg_C) '603978
  'Data Table: 43B664
  loc_60388C: ILdUI1 arg_C
  loc_603890: FStUI1 var_86
  loc_603894: FLdUI1
  loc_603898: LitI2_Byte 1
  loc_60389A: CUI1I2
  loc_60389C: EqI2
  loc_60389D: BranchF loc_6038C1
  loc_6038A0: LitStr "#.###"
  loc_6038A3: FMemStStrCopy
  loc_6038A8: LitStr "0.000"
  loc_6038AB: FMemStStrCopy
  loc_6038B0: LitDate 0.1
  loc_6038B9: FMemStFPR8 arg_8(1056)
  loc_6038BE: Branch loc_603977
  loc_6038C1: FLdUI1
  loc_6038C5: LitI2_Byte 2
  loc_6038C7: CUI1I2
  loc_6038C9: EqI2
  loc_6038CA: BranchF loc_6038E8
  loc_6038CD: LitStr "##.##"
  loc_6038D0: FMemStStrCopy
  loc_6038D5: LitStr "00.00"
  loc_6038D8: FMemStStrCopy
  loc_6038DD: LitI2_Byte 1
  loc_6038DF: CR8I2
  loc_6038E0: FMemStFPR8 arg_8(1056)
  loc_6038E5: Branch loc_603977
  loc_6038E8: FLdUI1
  loc_6038EC: LitI2_Byte 3
  loc_6038EE: CUI1I2
  loc_6038F0: EqI2
  loc_6038F1: BranchF loc_60390F
  loc_6038F4: LitStr "###.#0"
  loc_6038F7: FMemStStrCopy
  loc_6038FC: LitStr "000.00"
  loc_6038FF: FMemStStrCopy
  loc_603904: LitI2_Byte &HA
  loc_603906: CR8I2
  loc_603907: FMemStFPR8 arg_8(1056)
  loc_60390C: Branch loc_603977
  loc_60390F: FLdUI1
  loc_603913: LitI2_Byte 4
  loc_603915: CUI1I2
  loc_603917: EqI2
  loc_603918: BranchF loc_603936
  loc_60391B: LitStr "#,###.00"
  loc_60391E: FMemStStrCopy
  loc_603923: LitStr "0,000.00"
  loc_603926: FMemStStrCopy
  loc_60392B: LitI2_Byte &H64
  loc_60392D: CR8I2
  loc_60392E: FMemStFPR8 arg_8(1056)
  loc_603933: Branch loc_603977
  loc_603936: FLdUI1
  loc_60393A: LitI2_Byte 5
  loc_60393C: CUI1I2
  loc_60393E: EqI2
  loc_60393F: BranchF loc_60395E
  loc_603942: LitStr "##,##0.00"
  loc_603945: FMemStStrCopy
  loc_60394A: LitStr "00,000.00"
  loc_60394D: FMemStStrCopy
  loc_603952: LitI2 1000
  loc_603955: CR8I2
  loc_603956: FMemStFPR8 arg_8(1056)
  loc_60395B: Branch loc_603977
  loc_60395E: LitStr "###,#00.00"
  loc_603961: FMemStStrCopy
  loc_603966: LitStr "000,000.00"
  loc_603969: FMemStStrCopy
  loc_60396E: LitI2 10000
  loc_603971: CR8I2
  loc_603972: FMemStFPR8 arg_8(1056)
  loc_603977: ExitProc
End Function

Private Function Proc_87_17_729AA4() '729AA4
  'Data Table: 43B664
  loc_7277E0: ImpAdCallFPR4 Proc_168_1_5FA7D0()
  loc_7277E5: LitI4 1
  loc_7277EA: LitI4 1
  loc_7277EF: LitVarStr var_C8, "00"
  loc_7277F4: FStVarCopyObj var_D8
  loc_7277F7: FLdRfVar var_D8
  loc_7277FA: LitI4 1
  loc_7277FF: FMemLdRf unk_43B66D
  loc_727804: Ary1LdRf
  loc_727805: CVarRef
  loc_72780A: FLdRfVar var_E8
  loc_72780D: ImpAdCallFPR4  = Format(, )
  loc_727812: FLdRfVar var_E8
  loc_727815: LitI4 1
  loc_72781A: LitI4 1
  loc_72781F: LitVarStr var_108, "00"
  loc_727824: FStVarCopyObj var_118
  loc_727827: FLdRfVar var_118
  loc_72782A: LitI4 2
  loc_72782F: FMemLdRf unk_43B66D
  loc_727834: Ary1LdRf
  loc_727835: CVarRef
  loc_72783A: FLdRfVar var_128
  loc_72783D: ImpAdCallFPR4  = Format(, )
  loc_727842: FLdRfVar var_128
  loc_727845: ConcatVar var_138
  loc_727849: CStrVarTmp
  loc_72784A: FStStrNoPop var_13C
  loc_72784D: FMemLdPr
  loc_727852: MemStStrCopy
  loc_727856: FFree1Str var_13C
  loc_727859: FFreeVar var_D8 = "": var_118 = "": var_E8 = "": var_128 = ""
  loc_727866: FMemLdPr
  loc_72786B: MemLdStr global_0
  loc_72786E: CVarStr var_F8
  loc_727871: LitI4 1
  loc_727876: LitI4 1
  loc_72787B: LitVarStr var_C8, "00"
  loc_727880: FStVarCopyObj var_D8
  loc_727883: FLdRfVar var_D8
  loc_727886: LitI4 3
  loc_72788B: FMemLdRf unk_43B66D
  loc_727890: Ary1LdRf
  loc_727891: CVarRef
  loc_727896: FLdRfVar var_E8
  loc_727899: ImpAdCallFPR4  = Format(, )
  loc_72789E: FLdRfVar var_E8
  loc_7278A1: ConcatVar var_118
  loc_7278A5: LitI4 1
  loc_7278AA: LitI4 1
  loc_7278AF: LitVarStr var_14C, "00"
  loc_7278B4: FStVarCopyObj var_128
  loc_7278B7: FLdRfVar var_128
  loc_7278BA: LitI4 4
  loc_7278BF: FMemLdRf unk_43B66D
  loc_7278C4: Ary1LdRf
  loc_7278C5: CVarRef
  loc_7278CA: FLdRfVar var_138
  loc_7278CD: ImpAdCallFPR4  = Format(, )
  loc_7278D2: FLdRfVar var_138
  loc_7278D5: ConcatVar var_15C
  loc_7278D9: CStrVarTmp
  loc_7278DA: FStStrNoPop var_13C
  loc_7278DD: FMemLdPr
  loc_7278E2: MemStStrCopy
  loc_7278E6: FFree1Str var_13C
  loc_7278E9: FFreeVar var_D8 = "": var_E8 = "": var_128 = "": var_118 = "": var_138 = ""
  loc_7278F8: FMemLdPr
  loc_7278FD: MemLdStr global_0
  loc_727900: CVarStr var_F8
  loc_727903: LitI4 1
  loc_727908: LitI4 1
  loc_72790D: LitVarStr var_C8, "00"
  loc_727912: FStVarCopyObj var_D8
  loc_727915: FLdRfVar var_D8
  loc_727918: LitI4 5
  loc_72791D: FMemLdRf unk_43B66D
  loc_727922: Ary1LdRf
  loc_727923: CVarRef
  loc_727928: FLdRfVar var_E8
  loc_72792B: ImpAdCallFPR4  = Format(, )
  loc_727930: FLdRfVar var_E8
  loc_727933: ConcatVar var_118
  loc_727937: CStrVarTmp
  loc_727938: FStStrNoPop var_13C
  loc_72793B: FMemLdPr
  loc_727940: MemStStrCopy
  loc_727944: FFree1Str var_13C
  loc_727947: FFreeVar var_D8 = "": var_E8 = ""
  loc_727950: FLdRfVar var_15E
  loc_727953: ImpAdLdRf MemVar_74A220
  loc_727956: NewIfNullPr clsProducts
  loc_727959: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_72795E: FMemLdPr
  loc_727963: MemLdStr global_0
  loc_727966: CVarStr var_F8
  loc_727969: LitI4 1
  loc_72796E: LitI4 1
  loc_727973: LitVarStr var_C8, "00"
  loc_727978: FStVarCopyObj var_D8
  loc_72797B: FLdRfVar var_D8
  loc_72797E: FMemLdRf unk_43B66D
  loc_727983: CVarRef
  loc_727988: FLdRfVar var_E8
  loc_72798B: ImpAdCallFPR4  = Format(, )
  loc_727990: FLdRfVar var_E8
  loc_727993: ConcatVar var_118
  loc_727997: LitI4 1
  loc_72799C: LitI4 1
  loc_7279A1: LitVarStr var_14C, "00"
  loc_7279A6: FStVarCopyObj var_138
  loc_7279A9: FLdRfVar var_138
  loc_7279AC: FLdI2 var_15E
  loc_7279AF: CVarI2 var_128
  loc_7279B2: FLdRfVar var_15C
  loc_7279B5: ImpAdCallFPR4  = Format(, )
  loc_7279BA: FLdRfVar var_15C
  loc_7279BD: ConcatVar var_170
  loc_7279C1: CStrVarTmp
  loc_7279C2: FStStrNoPop var_13C
  loc_7279C5: FMemLdPr
  loc_7279CA: MemStStrCopy
  loc_7279CE: FFree1Str var_13C
  loc_7279D1: FFreeVar var_D8 = "": var_E8 = "": var_128 = "": var_138 = "": var_118 = "": var_15C = ""
  loc_7279E2: FMemLdPr
  loc_7279E7: MemLdStr global_0
  loc_7279EA: CVarStr var_F8
  loc_7279ED: LitI4 1
  loc_7279F2: LitI4 1
  loc_7279F7: LitVarStr var_C8, "00"
  loc_7279FC: FStVarCopyObj var_D8
  loc_7279FF: FLdRfVar var_D8
  loc_727A02: FMemLdRf unk_43B66D
  loc_727A07: CVarRef
  loc_727A0C: FLdRfVar var_E8
  loc_727A0F: ImpAdCallFPR4  = Format(, )
  loc_727A14: FLdRfVar var_E8
  loc_727A17: ConcatVar var_118
  loc_727A1B: LitI4 1
  loc_727A20: LitI4 1
  loc_727A25: LitVarStr var_14C, "00"
  loc_727A2A: FStVarCopyObj var_128
  loc_727A2D: FLdRfVar var_128
  loc_727A30: FMemLdRf unk_43B66D
  loc_727A35: CVarRef
  loc_727A3A: FLdRfVar var_138
  loc_727A3D: ImpAdCallFPR4  = Format(, )
  loc_727A42: FLdRfVar var_138
  loc_727A45: ConcatVar var_15C
  loc_727A49: CStrVarTmp
  loc_727A4A: FStStrNoPop var_13C
  loc_727A4D: FMemLdPr
  loc_727A52: MemStStrCopy
  loc_727A56: FFree1Str var_13C
  loc_727A59: FFreeVar var_D8 = "": var_E8 = "": var_128 = "": var_118 = "": var_138 = ""
  loc_727A68: FMemLdPr
  loc_727A6D: MemLdStr global_0
  loc_727A70: CVarStr var_F8
  loc_727A73: LitI4 1
  loc_727A78: LitI4 1
  loc_727A7D: LitVarStr var_C8, "00"
  loc_727A82: FStVarCopyObj var_D8
  loc_727A85: FLdRfVar var_D8
  loc_727A88: FMemLdRf unk_43B66D
  loc_727A8D: CVarRef
  loc_727A92: FLdRfVar var_E8
  loc_727A95: ImpAdCallFPR4  = Format(, )
  loc_727A9A: FLdRfVar var_E8
  loc_727A9D: ConcatVar var_118
  loc_727AA1: CStrVarTmp
  loc_727AA2: FStStrNoPop var_13C
  loc_727AA5: FMemLdPr
  loc_727AAA: MemStStrCopy
  loc_727AAE: FFree1Str var_13C
  loc_727AB1: FFreeVar var_D8 = "": var_E8 = ""
  loc_727ABA: LitI4 1
  loc_727ABF: FMemLdRf unk_43B66D
  loc_727AC4: Ary1LdUI1
  loc_727AC6: LitI4 2
  loc_727ACB: FMemLdRf unk_43B66D
  loc_727AD0: Ary1LdUI1
  loc_727AD2: AddUI1
  loc_727AD4: LitI4 3
  loc_727AD9: FMemLdRf unk_43B66D
  loc_727ADE: Ary1LdUI1
  loc_727AE0: AddUI1
  loc_727AE2: LitI4 4
  loc_727AE7: FMemLdRf unk_43B66D
  loc_727AEC: Ary1LdUI1
  loc_727AEE: AddUI1
  loc_727AF0: LitI4 5
  loc_727AF5: FMemLdRf unk_43B66D
  loc_727AFA: Ary1LdUI1
  loc_727AFC: AddUI1
  loc_727AFE: FMemStUI1 arg_8(300)
  loc_727B04: LitI2_Byte 1
  loc_727B06: FLdRfVar var_86
  loc_727B09: LitI2_Byte &H20
  loc_727B0B: ForI2 var_174
  loc_727B11: LitI2_Byte 0
  loc_727B13: CUI1I2
  loc_727B15: FLdRfVar var_88
  loc_727B18: LitI2_Byte 3
  loc_727B1A: CUI1I2
  loc_727B1C: ForUI1 var_178
  loc_727B22: LitI2_Byte 0
  loc_727B24: CUI1I2
  loc_727B26: FLdRfVar var_8A
  loc_727B29: LitI2_Byte 2
  loc_727B2B: CUI1I2
  loc_727B2D: ForUI1 var_17C
  loc_727B33: FMemLdPr
  loc_727B38: MemLdStr global_0
  loc_727B3B: CVarStr var_F8
  loc_727B3E: LitI4 1
  loc_727B43: LitI4 1
  loc_727B48: LitVarStr var_C8, "00"
  loc_727B4D: FStVarCopyObj var_D8
  loc_727B50: FLdRfVar var_D8
  loc_727B53: FLdI2 var_86
  loc_727B56: CI4UI1
  loc_727B57: FLdUI1
  loc_727B5B: CI4UI1
  loc_727B5C: FLdUI1
  loc_727B60: CI4UI1
  loc_727B61: FMemLdRf unk_43B66D
  loc_727B66: AryLdRf
  loc_727B69: CVarRef
  loc_727B6E: FLdRfVar var_E8
  loc_727B71: ImpAdCallFPR4  = Format(, )
  loc_727B76: FLdRfVar var_E8
  loc_727B79: ConcatVar var_118
  loc_727B7D: CStrVarTmp
  loc_727B7E: FStStrNoPop var_13C
  loc_727B81: FMemLdPr
  loc_727B86: MemStStrCopy
  loc_727B8A: FFree1Str var_13C
  loc_727B8D: FFreeVar var_D8 = "": var_E8 = ""
  loc_727B96: FLdRfVar var_8A
  loc_727B99: NextUI1
  loc_727B9F: FLdRfVar var_88
  loc_727BA2: NextUI1
  loc_727BA8: FLdRfVar var_86
  loc_727BAB: NextI2 var_174, loc_727B11
  loc_727BB0: LitI2_Byte 1
  loc_727BB2: FLdRfVar var_86
  loc_727BB5: LitI2_Byte &H20
  loc_727BB7: ForI2 var_180
  loc_727BBD: FMemLdPr
  loc_727BC2: MemLdStr global_0
  loc_727BC5: CVarStr var_F8
  loc_727BC8: LitI4 1
  loc_727BCD: LitI4 1
  loc_727BD2: LitVarStr var_C8, "00"
  loc_727BD7: FStVarCopyObj var_D8
  loc_727BDA: FLdRfVar var_D8
  loc_727BDD: FLdI2 var_86
  loc_727BE0: CI4UI1
  loc_727BE1: FMemLdRf unk_43B66D
  loc_727BE6: Ary1LdRf
  loc_727BE7: CVarRef
  loc_727BEC: FLdRfVar var_E8
  loc_727BEF: ImpAdCallFPR4  = Format(, )
  loc_727BF4: FLdRfVar var_E8
  loc_727BF7: ConcatVar var_118
  loc_727BFB: CStrVarTmp
  loc_727BFC: FStStrNoPop var_13C
  loc_727BFF: FMemLdPr
  loc_727C04: MemStStrCopy
  loc_727C08: FFree1Str var_13C
  loc_727C0B: FFreeVar var_D8 = "": var_E8 = ""
  loc_727C14: FLdRfVar var_86
  loc_727C17: NextI2 var_180, loc_727BBD
  loc_727C1C: LitI2_Byte 1
  loc_727C1E: FLdRfVar var_86
  loc_727C21: LitI2_Byte &H10
  loc_727C23: ForI2 var_184
  loc_727C29: LitI2_Byte 0
  loc_727C2B: CUI1I2
  loc_727C2D: FLdRfVar var_8A
  loc_727C30: LitI2_Byte 2
  loc_727C32: CUI1I2
  loc_727C34: ForUI1 var_188
  loc_727C3A: FMemLdPr
  loc_727C3F: MemLdStr global_0
  loc_727C42: CVarStr var_F8
  loc_727C45: LitI4 1
  loc_727C4A: LitI4 1
  loc_727C4F: LitVarStr var_C8, "00"
  loc_727C54: FStVarCopyObj var_D8
  loc_727C57: FLdRfVar var_D8
  loc_727C5A: FLdI2 var_86
  loc_727C5D: CI4UI1
  loc_727C5E: FLdUI1
  loc_727C62: CI4UI1
  loc_727C63: FMemLdRf unk_43B66D
  loc_727C68: AryLdRf
  loc_727C6B: CVarRef
  loc_727C70: FLdRfVar var_E8
  loc_727C73: ImpAdCallFPR4  = Format(, )
  loc_727C78: FLdRfVar var_E8
  loc_727C7B: ConcatVar var_118
  loc_727C7F: CStrVarTmp
  loc_727C80: FStStrNoPop var_13C
  loc_727C83: FMemLdPr
  loc_727C88: MemStStrCopy
  loc_727C8C: FFree1Str var_13C
  loc_727C8F: FFreeVar var_D8 = "": var_E8 = ""
  loc_727C98: FLdRfVar var_8A
  loc_727C9B: NextUI1
  loc_727CA1: FLdRfVar var_86
  loc_727CA4: NextI2 var_184, loc_727C29
  loc_727CA9: LitI2_Byte 1
  loc_727CAB: FLdRfVar var_86
  loc_727CAE: LitI2_Byte &H20
  loc_727CB0: ForI2 var_18C
  loc_727CB6: LitI2_Byte 0
  loc_727CB8: CUI1I2
  loc_727CBA: FLdRfVar var_88
  loc_727CBD: LitI2_Byte 3
  loc_727CBF: CUI1I2
  loc_727CC1: ForUI1 var_190
  loc_727CC7: FMemLdPr
  loc_727CCC: MemLdStr global_0
  loc_727CCF: CVarStr var_F8
  loc_727CD2: LitI4 1
  loc_727CD7: LitI4 1
  loc_727CDC: LitVarStr var_C8, "00"
  loc_727CE1: FStVarCopyObj var_D8
  loc_727CE4: FLdRfVar var_D8
  loc_727CE7: FLdI2 var_86
  loc_727CEA: CI4UI1
  loc_727CEB: FLdUI1
  loc_727CEF: CI4UI1
  loc_727CF0: FMemLdRf unk_43B66D
  loc_727CF5: AryLdRf
  loc_727CF8: CVarRef
  loc_727CFD: FLdRfVar var_E8
  loc_727D00: ImpAdCallFPR4  = Format(, )
  loc_727D05: FLdRfVar var_E8
  loc_727D08: ConcatVar var_118
  loc_727D0C: CStrVarTmp
  loc_727D0D: FStStrNoPop var_13C
  loc_727D10: FMemLdPr
  loc_727D15: MemStStrCopy
  loc_727D19: FFree1Str var_13C
  loc_727D1C: FFreeVar var_D8 = "": var_E8 = ""
  loc_727D25: FLdRfVar var_88
  loc_727D28: NextUI1
  loc_727D2E: FLdRfVar var_86
  loc_727D31: NextI2 var_18C, loc_727CB6
  loc_727D36: FMemLdPr
  loc_727D3B: MemLdStr global_0
  loc_727D3E: CVarStr var_F8
  loc_727D41: LitI4 1
  loc_727D46: LitI4 1
  loc_727D4B: LitVarStr var_C8, "0"
  loc_727D50: FStVarCopyObj var_D8
  loc_727D53: FLdRfVar var_D8
  loc_727D56: FMemLdRf unk_43B66D
  loc_727D5B: CVarRef
  loc_727D60: FLdRfVar var_E8
  loc_727D63: ImpAdCallFPR4  = Format(, )
  loc_727D68: FLdRfVar var_E8
  loc_727D6B: ConcatVar var_118
  loc_727D6F: LitI4 1
  loc_727D74: LitI4 1
  loc_727D79: LitVarStr var_14C, "0"
  loc_727D7E: FStVarCopyObj var_128
  loc_727D81: FLdRfVar var_128
  loc_727D84: FMemLdRf unk_43B66D
  loc_727D89: CVarRef
  loc_727D8E: FLdRfVar var_138
  loc_727D91: ImpAdCallFPR4  = Format(, )
  loc_727D96: FLdRfVar var_138
  loc_727D99: ConcatVar var_15C
  loc_727D9D: CStrVarTmp
  loc_727D9E: FStStrNoPop var_13C
  loc_727DA1: FMemLdPr
  loc_727DA6: MemStStrCopy
  loc_727DAA: FFree1Str var_13C
  loc_727DAD: FFreeVar var_D8 = "": var_E8 = "": var_128 = "": var_118 = "": var_138 = ""
  loc_727DBC: FMemLdPr
  loc_727DC1: MemLdStr global_0
  loc_727DC4: CVarStr var_F8
  loc_727DC7: LitI4 1
  loc_727DCC: LitI4 1
  loc_727DD1: LitVarStr var_C8, "0"
  loc_727DD6: FStVarCopyObj var_D8
  loc_727DD9: FLdRfVar var_D8
  loc_727DDC: FMemLdRf unk_43B66D
  loc_727DE1: CVarRef
  loc_727DE6: FLdRfVar var_E8
  loc_727DE9: ImpAdCallFPR4  = Format(, )
  loc_727DEE: FLdRfVar var_E8
  loc_727DF1: ConcatVar var_118
  loc_727DF5: CStrVarTmp
  loc_727DF6: FStStrNoPop var_13C
  loc_727DF9: FMemLdPr
  loc_727DFE: MemStStrCopy
  loc_727E02: FFree1Str var_13C
  loc_727E05: FFreeVar var_D8 = "": var_E8 = ""
  loc_727E0E: LitI2_Byte 1
  loc_727E10: FLdRfVar var_86
  loc_727E13: LitI2_Byte &H20
  loc_727E15: ForI2 var_194
  loc_727E1B: FLdI2 var_86
  loc_727E1E: CI4UI1
  loc_727E1F: FMemLdRf unk_43B66D
  loc_727E24: Ary1LdUI1
  loc_727E26: CI2UI1
  loc_727E28: PopTmpLdAd2 var_15E
  loc_727E2B: ImpAdCallI2 Proc_168_2_5D4538()
  loc_727E30: FStStr var_198
  loc_727E33: FMemLdPr
  loc_727E38: MemLdStr global_0
  loc_727E3B: CVarStr var_C8
  loc_727E3E: LitI4 1
  loc_727E43: LitI4 1
  loc_727E48: LitVarStr var_B8, "0"
  loc_727E4D: FStVarCopyObj var_E8
  loc_727E50: FLdRfVar var_E8
  loc_727E53: FLdZeroAd var_198
  loc_727E56: CVarStr var_D8
  loc_727E59: FLdRfVar var_118
  loc_727E5C: ImpAdCallFPR4  = Format(, )
  loc_727E61: FLdRfVar var_118
  loc_727E64: AddVar var_128
  loc_727E68: CStrVarTmp
  loc_727E69: FStStrNoPop var_13C
  loc_727E6C: FMemLdPr
  loc_727E71: MemStStrCopy
  loc_727E75: FFreeStr var_13C = ""
  loc_727E7C: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_727E87: FLdRfVar var_86
  loc_727E8A: NextI2 var_194, loc_727E1B
  loc_727E8F: LitI2_Byte 1
  loc_727E91: FLdRfVar var_86
  loc_727E94: LitI2_Byte &H10
  loc_727E96: ForI2 var_19C
  loc_727E9C: FLdI2 var_86
  loc_727E9F: CI4UI1
  loc_727EA0: FMemLdRf unk_43B66D
  loc_727EA5: Ary1LdUI1
  loc_727EA7: CI2UI1
  loc_727EA9: PopTmpLdAd2 var_15E
  loc_727EAC: ImpAdCallI2 Proc_168_2_5D4538()
  loc_727EB1: FStStr var_198
  loc_727EB4: FMemLdPr
  loc_727EB9: MemLdStr global_0
  loc_727EBC: CVarStr var_C8
  loc_727EBF: LitI4 1
  loc_727EC4: LitI4 1
  loc_727EC9: LitVarStr var_B8, "0"
  loc_727ECE: FStVarCopyObj var_E8
  loc_727ED1: FLdRfVar var_E8
  loc_727ED4: FLdZeroAd var_198
  loc_727ED7: CVarStr var_D8
  loc_727EDA: FLdRfVar var_118
  loc_727EDD: ImpAdCallFPR4  = Format(, )
  loc_727EE2: FLdRfVar var_118
  loc_727EE5: AddVar var_128
  loc_727EE9: CStrVarTmp
  loc_727EEA: FStStrNoPop var_13C
  loc_727EED: FMemLdPr
  loc_727EF2: MemStStrCopy
  loc_727EF6: FFreeStr var_13C = ""
  loc_727EFD: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_727F08: FLdRfVar var_86
  loc_727F0B: NextI2 var_19C, loc_727E9C
  loc_727F10: LitI2_Byte 1
  loc_727F12: FLdRfVar var_86
  loc_727F15: LitI2_Byte &H10
  loc_727F17: ForI2 var_1A0
  loc_727F1D: FLdI2 var_86
  loc_727F20: CI4UI1
  loc_727F21: FMemLdRf unk_43B66D
  loc_727F26: Ary1LdUI1
  loc_727F28: CI2UI1
  loc_727F2A: PopTmpLdAd2 var_15E
  loc_727F2D: ImpAdCallI2 Proc_168_2_5D4538()
  loc_727F32: FStStr var_198
  loc_727F35: FMemLdPr
  loc_727F3A: MemLdStr global_0
  loc_727F3D: CVarStr var_C8
  loc_727F40: LitI4 1
  loc_727F45: LitI4 1
  loc_727F4A: LitVarStr var_B8, "0"
  loc_727F4F: FStVarCopyObj var_E8
  loc_727F52: FLdRfVar var_E8
  loc_727F55: FLdZeroAd var_198
  loc_727F58: CVarStr var_D8
  loc_727F5B: FLdRfVar var_118
  loc_727F5E: ImpAdCallFPR4  = Format(, )
  loc_727F63: FLdRfVar var_118
  loc_727F66: AddVar var_128
  loc_727F6A: CStrVarTmp
  loc_727F6B: FStStrNoPop var_13C
  loc_727F6E: FMemLdPr
  loc_727F73: MemStStrCopy
  loc_727F77: FFreeStr var_13C = ""
  loc_727F7E: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_727F89: FLdRfVar var_86
  loc_727F8C: NextI2 var_1A0, loc_727F1D
  loc_727F91: LitI2_Byte 1
  loc_727F93: FLdRfVar var_86
  loc_727F96: LitI2_Byte &HA
  loc_727F98: ForI2 var_1A4
  loc_727F9E: FLdRfVar var_13C
  loc_727FA1: FLdI2 var_86
  loc_727FA4: ImpAdLdRf MemVar_74A220
  loc_727FA7: NewIfNullPr clsProducts
  loc_727FAF: LitVarI2 var_E8, 25
  loc_727FB4: LitI4 1
  loc_727FB9: FLdZeroAd var_13C
  loc_727FBC: CVarStr var_D8
  loc_727FBF: FLdRfVar var_118
  loc_727FC2: ImpAdCallFPR4  = Mid(, , )
  loc_727FC7: FMemLdPr
  loc_727FCC: MemLdStr global_0
  loc_727FCF: LitI2_Byte &HFF
  loc_727FD1: PopTmpLdAd2 var_1AA
  loc_727FD4: LitI2_Byte &H19
  loc_727FD6: PopTmpLdAd2 var_15E
  loc_727FD9: LitStr " "
  loc_727FDC: FStStrCopy var_1A8
  loc_727FDF: FLdRfVar var_1A8
  loc_727FE2: FLdRfVar var_118
  loc_727FE5: CStrVarTmp
  loc_727FE6: PopTmpLdAdStr
  loc_727FEA: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_727FEF: FStStrNoPop var_1B0
  loc_727FF2: ConcatStr
  loc_727FF3: FStStrNoPop var_1B4
  loc_727FF6: FMemLdPr
  loc_727FFB: MemStStrCopy
  loc_727FFF: FFreeStr var_198 = "": var_1A8 = "": var_1B0 = ""
  loc_72800A: FFreeVar var_D8 = "": var_E8 = ""
  loc_728013: FLdRfVar var_86
  loc_728016: NextI2 var_1A4, loc_727F9E
  loc_72801B: LitI2_Byte 1
  loc_72801D: FLdRfVar var_86
  loc_728020: LitI2_Byte &HA
  loc_728022: ForI2 var_1B8
  loc_728028: FLdRfVar var_15E
  loc_72802B: FLdI2 var_86
  loc_72802E: ImpAdLdRf MemVar_74A220
  loc_728031: NewIfNullPr clsProducts
  loc_728034:  = clsProducts.Name
  loc_728039: FMemLdPr
  loc_72803E: MemLdStr global_0
  loc_728041: CVarStr var_F8
  loc_728044: LitI4 1
  loc_728049: LitI4 1
  loc_72804E: LitVarStr var_C8, "0"
  loc_728053: FStVarCopyObj var_E8
  loc_728056: FLdRfVar var_E8
  loc_728059: FLdI2 var_15E
  loc_72805C: CVarI2 var_D8
  loc_72805F: FLdRfVar var_118
  loc_728062: ImpAdCallFPR4  = Format(, )
  loc_728067: FLdRfVar var_118
  loc_72806A: ConcatVar var_128
  loc_72806E: CStrVarTmp
  loc_72806F: FStStrNoPop var_13C
  loc_728072: FMemLdPr
  loc_728077: MemStStrCopy
  loc_72807B: FFree1Str var_13C
  loc_72807E: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_728089: FLdRfVar var_86
  loc_72808C: NextI2 var_1B8, loc_728028
  loc_728091: LitI2_Byte 1
  loc_728093: FLdRfVar var_86
  loc_728096: LitI2_Byte &H10
  loc_728098: ForI2 var_1C0
  loc_72809E: FMemLdPr
  loc_7280A3: MemLdStr global_0
  loc_7280A6: CVarStr var_F8
  loc_7280A9: LitI4 1
  loc_7280AE: LitI4 1
  loc_7280B3: LitVarStr var_C8, "0"
  loc_7280B8: FStVarCopyObj var_D8
  loc_7280BB: FLdRfVar var_D8
  loc_7280BE: FLdI2 var_86
  loc_7280C1: CI4UI1
  loc_7280C2: FMemLdRf unk_43B66D
  loc_7280C7: Ary1LdRf
  loc_7280C8: CVarRef
  loc_7280CD: FLdRfVar var_E8
  loc_7280D0: ImpAdCallFPR4  = Format(, )
  loc_7280D5: FLdRfVar var_E8
  loc_7280D8: ConcatVar var_118
  loc_7280DC: CStrVarTmp
  loc_7280DD: FStStrNoPop var_13C
  loc_7280E0: FMemLdPr
  loc_7280E5: MemStStrCopy
  loc_7280E9: FFree1Str var_13C
  loc_7280EC: FFreeVar var_D8 = "": var_E8 = ""
  loc_7280F5: FLdRfVar var_86
  loc_7280F8: NextI2 var_1C0, loc_72809E
  loc_7280FD: LitI2_Byte 1
  loc_7280FF: FLdRfVar var_86
  loc_728102: LitI2_Byte &H20
  loc_728104: ForI2 var_1C4
  loc_72810A: FMemLdPr
  loc_72810F: MemLdStr global_0
  loc_728112: CVarStr var_F8
  loc_728115: LitI4 1
  loc_72811A: LitI4 1
  loc_72811F: LitVarStr var_C8, "0"
  loc_728124: FStVarCopyObj var_D8
  loc_728127: FLdRfVar var_D8
  loc_72812A: FLdI2 var_86
  loc_72812D: CI4UI1
  loc_72812E: FMemLdRf unk_43B66D
  loc_728133: Ary1LdRf
  loc_728134: CVarRef
  loc_728139: FLdRfVar var_E8
  loc_72813C: ImpAdCallFPR4  = Format(, )
  loc_728141: FLdRfVar var_E8
  loc_728144: ConcatVar var_118
  loc_728148: CStrVarTmp
  loc_728149: FStStrNoPop var_13C
  loc_72814C: FMemLdPr
  loc_728151: MemStStrCopy
  loc_728155: FFree1Str var_13C
  loc_728158: FFreeVar var_D8 = "": var_E8 = ""
  loc_728161: FLdRfVar var_86
  loc_728164: NextI2 var_1C4, loc_72810A
  loc_728169: LitI2_Byte 1
  loc_72816B: FLdRfVar var_86
  loc_72816E: LitI2_Byte &H10
  loc_728170: ForI2 var_1C8
  loc_728176: FMemLdPr
  loc_72817B: MemLdStr global_0
  loc_72817E: CVarStr var_F8
  loc_728181: LitI4 1
  loc_728186: LitI4 1
  loc_72818B: LitVarStr var_C8, "0"
  loc_728190: FStVarCopyObj var_D8
  loc_728193: FLdRfVar var_D8
  loc_728196: FLdI2 var_86
  loc_728199: CI4UI1
  loc_72819A: FMemLdRf unk_43B66D
  loc_72819F: Ary1LdRf
  loc_7281A0: CVarRef
  loc_7281A5: FLdRfVar var_E8
  loc_7281A8: ImpAdCallFPR4  = Format(, )
  loc_7281AD: FLdRfVar var_E8
  loc_7281B0: ConcatVar var_118
  loc_7281B4: CStrVarTmp
  loc_7281B5: FStStrNoPop var_13C
  loc_7281B8: FMemLdPr
  loc_7281BD: MemStStrCopy
  loc_7281C1: FFree1Str var_13C
  loc_7281C4: FFreeVar var_D8 = "": var_E8 = ""
  loc_7281CD: FLdRfVar var_86
  loc_7281D0: NextI2 var_1C8, loc_728176
  loc_7281D5: LitI2_Byte 1
  loc_7281D7: FLdRfVar var_86
  loc_7281DA: LitI2_Byte &H20
  loc_7281DC: ForI2 var_1CC
  loc_7281E2: FMemLdPr
  loc_7281E7: MemLdStr global_0
  loc_7281EA: CVarStr var_F8
  loc_7281ED: LitI4 1
  loc_7281F2: LitI4 1
  loc_7281F7: LitVarStr var_C8, "0"
  loc_7281FC: FStVarCopyObj var_D8
  loc_7281FF: FLdRfVar var_D8
  loc_728202: FLdI2 var_86
  loc_728205: CI4UI1
  loc_728206: FMemLdRf unk_43B66D
  loc_72820B: Ary1LdRf
  loc_72820C: CVarRef
  loc_728211: FLdRfVar var_E8
  loc_728214: ImpAdCallFPR4  = Format(, )
  loc_728219: FLdRfVar var_E8
  loc_72821C: ConcatVar var_118
  loc_728220: CStrVarTmp
  loc_728221: FStStrNoPop var_13C
  loc_728224: FMemLdPr
  loc_728229: MemStStrCopy
  loc_72822D: FFree1Str var_13C
  loc_728230: FFreeVar var_D8 = "": var_E8 = ""
  loc_728239: FLdRfVar var_86
  loc_72823C: NextI2 var_1CC, loc_7281E2
  loc_728241: LitI2_Byte 1
  loc_728243: FLdRfVar var_86
  loc_728246: LitI2_Byte &H10
  loc_728248: ForI2 var_1D0
  loc_72824E: FMemLdPr
  loc_728253: MemLdStr global_0
  loc_728256: CVarStr var_F8
  loc_728259: LitI4 1
  loc_72825E: LitI4 1
  loc_728263: LitVarStr var_C8, "0"
  loc_728268: FStVarCopyObj var_D8
  loc_72826B: FLdRfVar var_D8
  loc_72826E: FLdI2 var_86
  loc_728271: CI4UI1
  loc_728272: FMemLdRf unk_43B66D
  loc_728277: Ary1LdRf
  loc_728278: CVarRef
  loc_72827D: FLdRfVar var_E8
  loc_728280: ImpAdCallFPR4  = Format(, )
  loc_728285: FLdRfVar var_E8
  loc_728288: ConcatVar var_118
  loc_72828C: CStrVarTmp
  loc_72828D: FStStrNoPop var_13C
  loc_728290: FMemLdPr
  loc_728295: MemStStrCopy
  loc_728299: FFree1Str var_13C
  loc_72829C: FFreeVar var_D8 = "": var_E8 = ""
  loc_7282A5: FLdRfVar var_86
  loc_7282A8: NextI2 var_1D0, loc_72824E
  loc_7282AD: LitI2_Byte 1
  loc_7282AF: FLdRfVar var_86
  loc_7282B2: LitI2_Byte &H20
  loc_7282B4: ForI2 var_1D4
  loc_7282BA: FMemLdPr
  loc_7282BF: MemLdStr global_0
  loc_7282C2: CVarStr var_F8
  loc_7282C5: LitI4 1
  loc_7282CA: LitI4 1
  loc_7282CF: LitVarStr var_C8, "0"
  loc_7282D4: FStVarCopyObj var_E8
  loc_7282D7: FLdRfVar var_E8
  loc_7282DA: LitVarI2 var_D8, 0
  loc_7282DF: FLdRfVar var_118
  loc_7282E2: ImpAdCallFPR4  = Format(, )
  loc_7282E7: FLdRfVar var_118
  loc_7282EA: ConcatVar var_128
  loc_7282EE: CStrVarTmp
  loc_7282EF: FStStrNoPop var_13C
  loc_7282F2: FMemLdPr
  loc_7282F7: MemStStrCopy
  loc_7282FB: FFree1Str var_13C
  loc_7282FE: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_728309: FLdRfVar var_86
  loc_72830C: NextI2 var_1D4, loc_7282BA
  loc_728311: LitI2_Byte 1
  loc_728313: FLdRfVar var_86
  loc_728316: LitI2_Byte &H20
  loc_728318: ForI2 var_1D8
  loc_72831E: FMemLdPr
  loc_728323: MemLdStr global_0
  loc_728326: CVarStr var_F8
  loc_728329: LitI4 1
  loc_72832E: LitI4 1
  loc_728333: LitVarStr var_C8, "0"
  loc_728338: FStVarCopyObj var_D8
  loc_72833B: FLdRfVar var_D8
  loc_72833E: FLdI2 var_86
  loc_728341: CI4UI1
  loc_728342: FMemLdRf unk_43B66D
  loc_728347: Ary1LdRf
  loc_728348: CVarRef
  loc_72834D: FLdRfVar var_E8
  loc_728350: ImpAdCallFPR4  = Format(, )
  loc_728355: FLdRfVar var_E8
  loc_728358: ConcatVar var_118
  loc_72835C: CStrVarTmp
  loc_72835D: FStStrNoPop var_13C
  loc_728360: FMemLdPr
  loc_728365: MemStStrCopy
  loc_728369: FFree1Str var_13C
  loc_72836C: FFreeVar var_D8 = "": var_E8 = ""
  loc_728375: FLdRfVar var_86
  loc_728378: NextI2 var_1D8, loc_72831E
  loc_72837D: LitStr "CEM44.INI"
  loc_728380: FLdRfVar var_1A8
  loc_728383: CStr2Ansi
  loc_728384: ILdRf var_1A8
  loc_728387: LitI4 1
  loc_72838C: LitStr "ACTIVE_OLD_DECIMAL_OPTION"
  loc_72838F: FLdRfVar var_198
  loc_728392: CStr2Ansi
  loc_728393: ILdRf var_198
  loc_728396: LitStr "GENERAL"
  loc_728399: FLdRfVar var_13C
  loc_72839C: CStr2Ansi
  loc_72839D: ILdRf var_13C
  loc_7283A0: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_7283A5: FStR4 var_1DC
  loc_7283A8: SetLastSystemError
  loc_7283A9: ILdRf var_1DC
  loc_7283AC: CUI1I4
  loc_7283AE: FStUI1 var_A4
  loc_7283B2: FFreeStr var_13C = "": var_198 = ""
  loc_7283BB: FLdUI1
  loc_7283BF: CI2UI1
  loc_7283C1: LitI2_Byte 0
  loc_7283C3: NeI2
  loc_7283C4: BranchF loc_7283DB
  loc_7283C7: FMemLdUI1 arg_8(1041)
  loc_7283CD: CI2UI1
  loc_7283CF: LitI2_Byte &H30
  loc_7283D1: OrI4
  loc_7283D2: CUI1I2
  loc_7283D4: FStUI1 var_A2
  loc_7283D8: Branch loc_7283F8
  loc_7283DB: FMemLdUI1 arg_8(1040)
  loc_7283E1: CI2UI1
  loc_7283E3: LitI2_Byte 3
  loc_7283E5: AddI2
  loc_7283E6: LitI2_Byte &H10
  loc_7283E8: MulI2
  loc_7283E9: FMemLdUI1 arg_8(1041)
  loc_7283EF: CI2UI1
  loc_7283F1: OrI4
  loc_7283F2: CUI1I2
  loc_7283F4: FStUI1 var_A2
  loc_7283F8: FMemLdPr
  loc_7283FD: MemLdStr global_0
  loc_728400: CVarStr var_B8
  loc_728403: FLdUI1
  loc_728407: CI4UI1
  loc_728408: FLdRfVar var_D8
  loc_72840B: ImpAdCallFPR4  = Chr()
  loc_728410: FLdRfVar var_D8
  loc_728413: ConcatVar var_E8
  loc_728417: CStrVarTmp
  loc_728418: FStStrNoPop var_13C
  loc_72841B: FMemLdPr
  loc_728420: MemStStrCopy
  loc_728424: FFree1Str var_13C
  loc_728427: FFreeVar var_D8 = ""
  loc_72842E: FMemLdPr
  loc_728433: MemLdStr global_0
  loc_728436: CVarStr var_F8
  loc_728439: LitI4 1
  loc_72843E: LitI4 1
  loc_728443: LitVarStr var_C8, "0"
  loc_728448: FStVarCopyObj var_E8
  loc_72844B: FLdRfVar var_E8
  loc_72844E: LitVarI2 var_D8, 1
  loc_728453: FLdRfVar var_118
  loc_728456: ImpAdCallFPR4  = Format(, )
  loc_72845B: FLdRfVar var_118
  loc_72845E: ConcatVar var_128
  loc_728462: CStrVarTmp
  loc_728463: FStStrNoPop var_13C
  loc_728466: FMemLdPr
  loc_72846B: MemStStrCopy
  loc_72846F: FFree1Str var_13C
  loc_728472: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_72847D: FMemLdI2 arg_8(16)
  loc_728482: BranchF loc_7285BF
  loc_728485: LitI2_Byte 1
  loc_728487: FLdRfVar var_86
  loc_72848A: LitI2_Byte &H10
  loc_72848C: ForI2 var_1E0
  loc_728492: FMemLdPr
  loc_728497: MemLdStr global_0
  loc_72849A: CVarStr var_F8
  loc_72849D: LitI4 1
  loc_7284A2: LitI4 1
  loc_7284A7: LitVarStr var_C8, "0000000"
  loc_7284AC: FStVarCopyObj var_E8
  loc_7284AF: FLdRfVar var_E8
  loc_7284B2: FLdI2 var_86
  loc_7284B5: CI4UI1
  loc_7284B6: FMemLdRf unk_43B66D
  loc_7284BB: Ary1LdCy
  loc_7284BC: LitI2_Byte &H64
  loc_7284BE: MulCyI2
  loc_7284BF: CVarCy var_D8
  loc_7284C2: FLdRfVar var_118
  loc_7284C5: ImpAdCallFPR4  = Format(, )
  loc_7284CA: FLdRfVar var_118
  loc_7284CD: ConcatVar var_128
  loc_7284D1: CStrVarTmp
  loc_7284D2: FStStrNoPop var_13C
  loc_7284D5: FMemLdPr
  loc_7284DA: MemStStrCopy
  loc_7284DE: FFree1Str var_13C
  loc_7284E1: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7284EC: FLdRfVar var_86
  loc_7284EF: NextI2 var_1E0, loc_728492
  loc_7284F4: LitI2_Byte 1
  loc_7284F6: FLdRfVar var_86
  loc_7284F9: LitI2_Byte &H10
  loc_7284FB: ForI2 var_1E4
  loc_728501: FMemLdPr
  loc_728506: MemLdStr global_0
  loc_728509: CVarStr var_F8
  loc_72850C: LitI4 1
  loc_728511: LitI4 1
  loc_728516: LitVarStr var_C8, "0000000"
  loc_72851B: FStVarCopyObj var_E8
  loc_72851E: FLdRfVar var_E8
  loc_728521: LitVarI2 var_D8, 0
  loc_728526: FLdRfVar var_118
  loc_728529: ImpAdCallFPR4  = Format(, )
  loc_72852E: FLdRfVar var_118
  loc_728531: ConcatVar var_128
  loc_728535: CStrVarTmp
  loc_728536: FStStrNoPop var_13C
  loc_728539: FMemLdPr
  loc_72853E: MemStStrCopy
  loc_728542: FFree1Str var_13C
  loc_728545: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_728550: FLdRfVar var_86
  loc_728553: NextI2 var_1E4, loc_728501
  loc_728558: LitI2_Byte 1
  loc_72855A: FLdRfVar var_86
  loc_72855D: LitI2_Byte &H10
  loc_72855F: ForI2 var_1E8
  loc_728565: FMemLdPr
  loc_72856A: MemLdStr global_0
  loc_72856D: CVarStr var_F8
  loc_728570: LitI4 1
  loc_728575: LitI4 1
  loc_72857A: LitVarStr var_C8, "0000000"
  loc_72857F: FStVarCopyObj var_E8
  loc_728582: FLdRfVar var_E8
  loc_728585: LitVarI2 var_D8, 0
  loc_72858A: FLdRfVar var_118
  loc_72858D: ImpAdCallFPR4  = Format(, )
  loc_728592: FLdRfVar var_118
  loc_728595: ConcatVar var_128
  loc_728599: CStrVarTmp
  loc_72859A: FStStrNoPop var_13C
  loc_72859D: FMemLdPr
  loc_7285A2: MemStStrCopy
  loc_7285A6: FFree1Str var_13C
  loc_7285A9: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7285B4: FLdRfVar var_86
  loc_7285B7: NextI2 var_1E8, loc_728565
  loc_7285BC: Branch loc_7286F6
  loc_7285BF: LitI2_Byte 1
  loc_7285C1: FLdRfVar var_86
  loc_7285C4: LitI2_Byte &H10
  loc_7285C6: ForI2 var_1EC
  loc_7285CC: FMemLdPr
  loc_7285D1: MemLdStr global_0
  loc_7285D4: CVarStr var_F8
  loc_7285D7: LitI4 1
  loc_7285DC: LitI4 1
  loc_7285E1: LitVarStr var_C8, "00000000"
  loc_7285E6: FStVarCopyObj var_E8
  loc_7285E9: FLdRfVar var_E8
  loc_7285EC: FLdI2 var_86
  loc_7285EF: CI4UI1
  loc_7285F0: FMemLdRf unk_43B66D
  loc_7285F5: Ary1LdCy
  loc_7285F6: LitI2_Byte &H64
  loc_7285F8: MulCyI2
  loc_7285F9: CVarCy var_D8
  loc_7285FC: FLdRfVar var_118
  loc_7285FF: ImpAdCallFPR4  = Format(, )
  loc_728604: FLdRfVar var_118
  loc_728607: ConcatVar var_128
  loc_72860B: CStrVarTmp
  loc_72860C: FStStrNoPop var_13C
  loc_72860F: FMemLdPr
  loc_728614: MemStStrCopy
  loc_728618: FFree1Str var_13C
  loc_72861B: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_728626: FLdRfVar var_86
  loc_728629: NextI2 var_1EC, loc_7285CC
  loc_72862E: LitI2_Byte 1
  loc_728630: FLdRfVar var_86
  loc_728633: LitI2_Byte &H10
  loc_728635: ForI2 var_1F0
  loc_72863B: FMemLdPr
  loc_728640: MemLdStr global_0
  loc_728643: CVarStr var_F8
  loc_728646: LitI4 1
  loc_72864B: LitI4 1
  loc_728650: LitVarStr var_C8, "00000000"
  loc_728655: FStVarCopyObj var_E8
  loc_728658: FLdRfVar var_E8
  loc_72865B: LitVarI2 var_D8, 0
  loc_728660: FLdRfVar var_118
  loc_728663: ImpAdCallFPR4  = Format(, )
  loc_728668: FLdRfVar var_118
  loc_72866B: ConcatVar var_128
  loc_72866F: CStrVarTmp
  loc_728670: FStStrNoPop var_13C
  loc_728673: FMemLdPr
  loc_728678: MemStStrCopy
  loc_72867C: FFree1Str var_13C
  loc_72867F: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_72868A: FLdRfVar var_86
  loc_72868D: NextI2 var_1F0, loc_72863B
  loc_728692: LitI2_Byte 1
  loc_728694: FLdRfVar var_86
  loc_728697: LitI2_Byte &H10
  loc_728699: ForI2 var_1F4
  loc_72869F: FMemLdPr
  loc_7286A4: MemLdStr global_0
  loc_7286A7: CVarStr var_F8
  loc_7286AA: LitI4 1
  loc_7286AF: LitI4 1
  loc_7286B4: LitVarStr var_C8, "00000000"
  loc_7286B9: FStVarCopyObj var_E8
  loc_7286BC: FLdRfVar var_E8
  loc_7286BF: LitVarI2 var_D8, 0
  loc_7286C4: FLdRfVar var_118
  loc_7286C7: ImpAdCallFPR4  = Format(, )
  loc_7286CC: FLdRfVar var_118
  loc_7286CF: ConcatVar var_128
  loc_7286D3: CStrVarTmp
  loc_7286D4: FStStrNoPop var_13C
  loc_7286D7: FMemLdPr
  loc_7286DC: MemStStrCopy
  loc_7286E0: FFree1Str var_13C
  loc_7286E3: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7286EE: FLdRfVar var_86
  loc_7286F1: NextI2 var_1F4, loc_72869F
  loc_7286F6: LitI2_Byte 1
  loc_7286F8: FLdRfVar var_86
  loc_7286FB: LitI2_Byte &HA
  loc_7286FD: ForI2 var_1F8
  loc_728703: LitI4 1
  loc_728708: FLdI2 var_86
  loc_72870B: CI4UI1
  loc_72870C: FMemLdRf unk_43B66D
  loc_728711: AryLdPr
  loc_728714: MemLdR8 global_0
  loc_728717: LitI2_Byte 0
  loc_728719: CR8I2
  loc_72871A: EqCyR8
  loc_72871B: BranchF loc_728770
  loc_72871E: FMemLdPr
  loc_728723: MemLdStr global_0
  loc_728726: CVarStr var_F8
  loc_728729: LitI4 1
  loc_72872E: LitI4 1
  loc_728733: LitVarStr var_C8, "000000"
  loc_728738: FStVarCopyObj var_E8
  loc_72873B: FLdRfVar var_E8
  loc_72873E: LitVarI2 var_D8, 0
  loc_728743: FLdRfVar var_118
  loc_728746: ImpAdCallFPR4  = Format(, )
  loc_72874B: FLdRfVar var_118
  loc_72874E: ConcatVar var_128
  loc_728752: CStrVarTmp
  loc_728753: FStStrNoPop var_13C
  loc_728756: FMemLdPr
  loc_72875B: MemStStrCopy
  loc_72875F: FFree1Str var_13C
  loc_728762: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_72876D: Branch loc_7287D9
  loc_728770: FMemLdPr
  loc_728775: MemLdStr global_0
  loc_728778: CVarStr var_F8
  loc_72877B: LitI4 1
  loc_728780: LitI4 1
  loc_728785: LitVarStr var_C8, "000000"
  loc_72878A: FStVarCopyObj var_E8
  loc_72878D: FLdRfVar var_E8
  loc_728790: LitI4 1
  loc_728795: FLdI2 var_86
  loc_728798: CI4UI1
  loc_728799: FMemLdRf unk_43B66D
  loc_72879E: AryLdPr
  loc_7287A1: MemLdR8 global_0
  loc_7287A4: CR8Cy
  loc_7287A5: FMemLdFPR4 arg_8(928)
  loc_7287AA: MulR8
  loc_7287AB: CVarR8
  loc_7287AF: FLdRfVar var_118
  loc_7287B2: ImpAdCallFPR4  = Format(, )
  loc_7287B7: FLdRfVar var_118
  loc_7287BA: ConcatVar var_128
  loc_7287BE: CStrVarTmp
  loc_7287BF: FStStrNoPop var_13C
  loc_7287C2: FMemLdPr
  loc_7287C7: MemStStrCopy
  loc_7287CB: FFree1Str var_13C
  loc_7287CE: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7287D9: FLdRfVar var_86
  loc_7287DC: NextI2 var_1F8, loc_728703
  loc_7287E1: FMemLdPr
  loc_7287E6: MemLdStr global_0
  loc_7287E9: CVarStr var_F8
  loc_7287EC: LitI4 1
  loc_7287F1: LitI4 1
  loc_7287F6: LitVarStr var_C8, "00000"
  loc_7287FB: FStVarCopyObj var_D8
  loc_7287FE: FLdRfVar var_D8
  loc_728801: FMemLdRf unk_43B66D
  loc_728806: CVarRef
  loc_72880B: FLdRfVar var_E8
  loc_72880E: ImpAdCallFPR4  = Format(, )
  loc_728813: FLdRfVar var_E8
  loc_728816: ConcatVar var_118
  loc_72881A: CStrVarTmp
  loc_72881B: FStStrNoPop var_13C
  loc_72881E: FMemLdPr
  loc_728823: MemStStrCopy
  loc_728827: FFree1Str var_13C
  loc_72882A: FFreeVar var_D8 = "": var_E8 = ""
  loc_728833: LitI2_Byte 1
  loc_728835: FLdRfVar var_86
  loc_728838: LitI2_Byte &H10
  loc_72883A: ForI2 var_1FC
  loc_728840: FMemLdPr
  loc_728845: MemLdStr global_0
  loc_728848: CVarStr var_F8
  loc_72884B: LitI4 1
  loc_728850: LitI4 1
  loc_728855: LitVarStr var_C8, "00000"
  loc_72885A: FStVarCopyObj var_D8
  loc_72885D: FLdRfVar var_D8
  loc_728860: FLdI2 var_86
  loc_728863: CI4UI1
  loc_728864: FMemLdRf unk_43B66D
  loc_728869: Ary1LdRf
  loc_72886A: CVarRef
  loc_72886F: FLdRfVar var_E8
  loc_728872: ImpAdCallFPR4  = Format(, )
  loc_728877: FLdRfVar var_E8
  loc_72887A: ConcatVar var_118
  loc_72887E: CStrVarTmp
  loc_72887F: FStStrNoPop var_13C
  loc_728882: FMemLdPr
  loc_728887: MemStStrCopy
  loc_72888B: FFree1Str var_13C
  loc_72888E: FFreeVar var_D8 = "": var_E8 = ""
  loc_728897: FLdRfVar var_86
  loc_72889A: NextI2 var_1FC, loc_728840
  loc_72889F: LitI2_Byte 1
  loc_7288A1: FLdRfVar var_86
  loc_7288A4: LitI2_Byte &H10
  loc_7288A6: ForI2 var_200
  loc_7288AC: FMemLdPr
  loc_7288B1: MemLdStr global_0
  loc_7288B4: CVarStr var_F8
  loc_7288B7: LitI4 1
  loc_7288BC: LitI4 1
  loc_7288C1: LitVarStr var_C8, "0000"
  loc_7288C6: FStVarCopyObj var_D8
  loc_7288C9: FLdRfVar var_D8
  loc_7288CC: FLdI2 var_86
  loc_7288CF: CI4UI1
  loc_7288D0: FMemLdRf unk_43B66D
  loc_7288D5: Ary1LdRf
  loc_7288D6: CVarRef
  loc_7288DB: FLdRfVar var_E8
  loc_7288DE: ImpAdCallFPR4  = Format(, )
  loc_7288E3: FLdRfVar var_E8
  loc_7288E6: ConcatVar var_118
  loc_7288EA: CStrVarTmp
  loc_7288EB: FStStrNoPop var_13C
  loc_7288EE: FMemLdPr
  loc_7288F3: MemStStrCopy
  loc_7288F7: FFree1Str var_13C
  loc_7288FA: FFreeVar var_D8 = "": var_E8 = ""
  loc_728903: FLdRfVar var_86
  loc_728906: NextI2 var_200, loc_7288AC
  loc_72890B: LitI2_Byte 1
  loc_72890D: FLdRfVar var_86
  loc_728910: LitI2_Byte &H10
  loc_728912: ForI2 var_204
  loc_728918: FMemLdPr
  loc_72891D: MemLdStr global_0
  loc_728920: CVarStr var_F8
  loc_728923: LitI4 1
  loc_728928: LitI4 1
  loc_72892D: LitVarStr var_C8, "0000"
  loc_728932: FStVarCopyObj var_D8
  loc_728935: FLdRfVar var_D8
  loc_728938: FLdI2 var_86
  loc_72893B: CI4UI1
  loc_72893C: FMemLdRf unk_43B66D
  loc_728941: Ary1LdRf
  loc_728942: CVarRef
  loc_728947: FLdRfVar var_E8
  loc_72894A: ImpAdCallFPR4  = Format(, )
  loc_72894F: FLdRfVar var_E8
  loc_728952: ConcatVar var_118
  loc_728956: CStrVarTmp
  loc_728957: FStStrNoPop var_13C
  loc_72895A: FMemLdPr
  loc_72895F: MemStStrCopy
  loc_728963: FFree1Str var_13C
  loc_728966: FFreeVar var_D8 = "": var_E8 = ""
  loc_72896F: FLdRfVar var_86
  loc_728972: NextI2 var_204, loc_728918
  loc_728977: LitI2_Byte 1
  loc_728979: FLdRfVar var_86
  loc_72897C: LitI2_Byte &H10
  loc_72897E: ForI2 var_208
  loc_728984: FMemLdPr
  loc_728989: MemLdStr global_0
  loc_72898C: CVarStr var_F8
  loc_72898F: LitI4 1
  loc_728994: LitI4 1
  loc_728999: LitVarStr var_C8, "0000"
  loc_72899E: FStVarCopyObj var_D8
  loc_7289A1: FLdRfVar var_D8
  loc_7289A4: FLdI2 var_86
  loc_7289A7: CI4UI1
  loc_7289A8: FMemLdRf unk_43B66D
  loc_7289AD: Ary1LdRf
  loc_7289AE: CVarRef
  loc_7289B3: FLdRfVar var_E8
  loc_7289B6: ImpAdCallFPR4  = Format(, )
  loc_7289BB: FLdRfVar var_E8
  loc_7289BE: ConcatVar var_118
  loc_7289C2: CStrVarTmp
  loc_7289C3: FStStrNoPop var_13C
  loc_7289C6: FMemLdPr
  loc_7289CB: MemStStrCopy
  loc_7289CF: FFree1Str var_13C
  loc_7289D2: FFreeVar var_D8 = "": var_E8 = ""
  loc_7289DB: FLdRfVar var_86
  loc_7289DE: NextI2 var_208, loc_728984
  loc_7289E3: LitI2_Byte 1
  loc_7289E5: FLdRfVar var_86
  loc_7289E8: LitI2_Byte 5
  loc_7289EA: ForI2 var_20C
  loc_7289F0: FMemLdPr
  loc_7289F5: MemLdStr global_0
  loc_7289F8: CVarStr var_F8
  loc_7289FB: LitI4 1
  loc_728A00: LitI4 1
  loc_728A05: LitVarStr var_C8, "0000"
  loc_728A0A: FStVarCopyObj var_D8
  loc_728A0D: FLdRfVar var_D8
  loc_728A10: FLdI2 var_86
  loc_728A13: CI4UI1
  loc_728A14: FMemLdRf unk_43B66D
  loc_728A19: Ary1LdRf
  loc_728A1A: CVarRef
  loc_728A1F: FLdRfVar var_E8
  loc_728A22: ImpAdCallFPR4  = Format(, )
  loc_728A27: FLdRfVar var_E8
  loc_728A2A: ConcatVar var_118
  loc_728A2E: CStrVarTmp
  loc_728A2F: FStStrNoPop var_13C
  loc_728A32: FMemLdPr
  loc_728A37: MemStStrCopy
  loc_728A3B: FFree1Str var_13C
  loc_728A3E: FFreeVar var_D8 = "": var_E8 = ""
  loc_728A47: FLdRfVar var_86
  loc_728A4A: NextI2 var_20C, loc_7289F0
  loc_728A4F: FMemLdPr
  loc_728A54: MemLdStr global_0
  loc_728A57: CVarStr var_F8
  loc_728A5A: LitI4 1
  loc_728A5F: LitI4 1
  loc_728A64: LitVarStr var_C8, "000"
  loc_728A69: FStVarCopyObj var_D8
  loc_728A6C: FLdRfVar var_D8
  loc_728A6F: FMemLdRf unk_43B66D
  loc_728A74: CVarRef
  loc_728A79: FLdRfVar var_E8
  loc_728A7C: ImpAdCallFPR4  = Format(, )
  loc_728A81: FLdRfVar var_E8
  loc_728A84: ConcatVar var_118
  loc_728A88: CStrVarTmp
  loc_728A89: FStStrNoPop var_13C
  loc_728A8C: FMemLdPr
  loc_728A91: MemStStrCopy
  loc_728A95: FFree1Str var_13C
  loc_728A98: FFreeVar var_D8 = "": var_E8 = ""
  loc_728AA1: FLdRfVar var_198
  loc_728AA4: LitVar_Missing var_28C
  loc_728AA7: LitVar_Missing var_26C
  loc_728AAA: LitVar_Missing var_24C
  loc_728AAD: LitVar_Missing var_170
  loc_728AB0: LitVar_Missing var_15C
  loc_728AB3: LitVar_Missing var_138
  loc_728AB6: LitVar_Missing var_128
  loc_728AB9: LitVar_Missing var_118
  loc_728ABC: LitVar_Missing var_E8
  loc_728ABF: LitVar_Missing var_D8
  loc_728AC2: LitStr "El servicio CEM - 44 no se encuentra en servicio, la configuracion no puede ser grabada"
  loc_728AC5: FStStrCopy var_13C
  loc_728AC8: FLdRfVar var_13C
  loc_728ACB: LitI4 &H71
  loc_728AD0: PopTmpLdAdStr var_1DC
  loc_728AD3: LitI2_Byte 9
  loc_728AD5: PopTmpLdAd2 var_15E
  loc_728AD8: ImpAdLdRf MemVar_74C7D0
  loc_728ADB: NewIfNullPr clsMsg
  loc_728ADE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728AE3: FLdZeroAd var_198
  loc_728AE6: FMemStStr arg_8(1584)
  loc_728AEC: FFree1Str var_13C
  loc_728AEF: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728B06: FLdRfVar var_198
  loc_728B09: LitVar_Missing var_28C
  loc_728B0C: LitVar_Missing var_26C
  loc_728B0F: LitVar_Missing var_24C
  loc_728B12: LitVar_Missing var_170
  loc_728B15: LitVar_Missing var_15C
  loc_728B18: LitVar_Missing var_138
  loc_728B1B: LitVar_Missing var_128
  loc_728B1E: LitVar_Missing var_118
  loc_728B21: LitVar_Missing var_E8
  loc_728B24: LitVar_Missing var_D8
  loc_728B27: LitStr "efectuaron los cierres de Turno, Día y Mes."
  loc_728B2A: FStStrCopy var_13C
  loc_728B2D: FLdRfVar var_13C
  loc_728B30: LitI4 &H72
  loc_728B35: PopTmpLdAdStr var_1DC
  loc_728B38: LitI2_Byte 9
  loc_728B3A: PopTmpLdAd2 var_15E
  loc_728B3D: ImpAdLdRf MemVar_74C7D0
  loc_728B40: NewIfNullPr clsMsg
  loc_728B43: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728B48: FLdZeroAd var_198
  loc_728B4B: FMemStStr arg_8(1588)
  loc_728B51: FFree1Str var_13C
  loc_728B54: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728B6B: FLdRfVar var_198
  loc_728B6E: LitVar_Missing var_28C
  loc_728B71: LitVar_Missing var_26C
  loc_728B74: LitVar_Missing var_24C
  loc_728B77: LitVar_Missing var_170
  loc_728B7A: LitVar_Missing var_15C
  loc_728B7D: LitVar_Missing var_138
  loc_728B80: LitVar_Missing var_128
  loc_728B83: LitVar_Missing var_118
  loc_728B86: LitVar_Missing var_E8
  loc_728B89: LitVar_Missing var_D8
  loc_728B8C: LitStr "efectuaron los cierres de Día y Mes."
  loc_728B8F: FStStrCopy var_13C
  loc_728B92: FLdRfVar var_13C
  loc_728B95: LitI4 &H73
  loc_728B9A: PopTmpLdAdStr var_1DC
  loc_728B9D: LitI2_Byte 9
  loc_728B9F: PopTmpLdAd2 var_15E
  loc_728BA2: ImpAdLdRf MemVar_74C7D0
  loc_728BA5: NewIfNullPr clsMsg
  loc_728BA8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728BAD: FLdZeroAd var_198
  loc_728BB0: FMemStStr arg_8(1592)
  loc_728BB6: FFree1Str var_13C
  loc_728BB9: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728BD0: FLdRfVar var_198
  loc_728BD3: LitVar_Missing var_28C
  loc_728BD6: LitVar_Missing var_26C
  loc_728BD9: LitVar_Missing var_24C
  loc_728BDC: LitVar_Missing var_170
  loc_728BDF: LitVar_Missing var_15C
  loc_728BE2: LitVar_Missing var_138
  loc_728BE5: LitVar_Missing var_128
  loc_728BE8: LitVar_Missing var_118
  loc_728BEB: LitVar_Missing var_E8
  loc_728BEE: LitVar_Missing var_D8
  loc_728BF1: LitStr " efectuó el cierre de Mes."
  loc_728BF4: FStStrCopy var_13C
  loc_728BF7: FLdRfVar var_13C
  loc_728BFA: LitI4 &H74
  loc_728BFF: PopTmpLdAdStr var_1DC
  loc_728C02: LitI2_Byte 9
  loc_728C04: PopTmpLdAd2 var_15E
  loc_728C07: ImpAdLdRf MemVar_74C7D0
  loc_728C0A: NewIfNullPr clsMsg
  loc_728C0D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728C12: FLdZeroAd var_198
  loc_728C15: FMemStStr arg_8(1596)
  loc_728C1B: FFree1Str var_13C
  loc_728C1E: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728C35: FLdRfVar var_198
  loc_728C38: LitVar_Missing var_28C
  loc_728C3B: LitVar_Missing var_26C
  loc_728C3E: LitVar_Missing var_24C
  loc_728C41: LitVar_Missing var_170
  loc_728C44: LitVar_Missing var_15C
  loc_728C47: LitVar_Missing var_138
  loc_728C4A: LitVar_Missing var_128
  loc_728C4D: LitVar_Missing var_118
  loc_728C50: LitVar_Missing var_E8
  loc_728C53: LitVar_Missing var_D8
  loc_728C56: LitStr " Tampoco se "
  loc_728C59: FStStrCopy var_13C
  loc_728C5C: FLdRfVar var_13C
  loc_728C5F: LitI4 &H75
  loc_728C64: PopTmpLdAdStr var_1DC
  loc_728C67: LitI2_Byte 9
  loc_728C69: PopTmpLdAd2 var_15E
  loc_728C6C: ImpAdLdRf MemVar_74C7D0
  loc_728C6F: NewIfNullPr clsMsg
  loc_728C72: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728C77: FLdZeroAd var_198
  loc_728C7A: FMemStStr arg_8(1600)
  loc_728C80: FFree1Str var_13C
  loc_728C83: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728C9A: FLdRfVar var_198
  loc_728C9D: LitVar_Missing var_28C
  loc_728CA0: LitVar_Missing var_26C
  loc_728CA3: LitVar_Missing var_24C
  loc_728CA6: LitVar_Missing var_170
  loc_728CA9: LitVar_Missing var_15C
  loc_728CAC: LitVar_Missing var_138
  loc_728CAF: LitVar_Missing var_128
  loc_728CB2: LitVar_Missing var_118
  loc_728CB5: LitVar_Missing var_E8
  loc_728CB8: LitVar_Missing var_D8
  loc_728CBB: LitStr " efectuó el cierre de Red XXI."
  loc_728CBE: FStStrCopy var_13C
  loc_728CC1: FLdRfVar var_13C
  loc_728CC4: LitI4 &H76
  loc_728CC9: PopTmpLdAdStr var_1DC
  loc_728CCC: LitI2_Byte 9
  loc_728CCE: PopTmpLdAd2 var_15E
  loc_728CD1: ImpAdLdRf MemVar_74C7D0
  loc_728CD4: NewIfNullPr clsMsg
  loc_728CD7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728CDC: FLdZeroAd var_198
  loc_728CDF: FMemStStr arg_8(1604)
  loc_728CE5: FFree1Str var_13C
  loc_728CE8: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728CFF: FLdRfVar var_198
  loc_728D02: LitVar_Missing var_28C
  loc_728D05: LitVar_Missing var_26C
  loc_728D08: LitVar_Missing var_24C
  loc_728D0B: LitVar_Missing var_170
  loc_728D0E: LitVar_Missing var_15C
  loc_728D11: LitVar_Missing var_138
  loc_728D14: LitVar_Missing var_128
  loc_728D17: LitVar_Missing var_118
  loc_728D1A: LitVar_Missing var_E8
  loc_728D1D: LitVar_Missing var_D8
  loc_728D20: LitStr "La configuracion no fue actualizada porque no se "
  loc_728D23: FStStrCopy var_13C
  loc_728D26: FLdRfVar var_13C
  loc_728D29: LitI4 &H77
  loc_728D2E: PopTmpLdAdStr var_1DC
  loc_728D31: LitI2_Byte 9
  loc_728D33: PopTmpLdAd2 var_15E
  loc_728D36: ImpAdLdRf MemVar_74C7D0
  loc_728D39: NewIfNullPr clsMsg
  loc_728D3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728D41: FLdZeroAd var_198
  loc_728D44: FMemStStr arg_8(1608)
  loc_728D4A: FFree1Str var_13C
  loc_728D4D: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728D64: FLdRfVar var_198
  loc_728D67: LitVar_Missing var_28C
  loc_728D6A: LitVar_Missing var_26C
  loc_728D6D: LitVar_Missing var_24C
  loc_728D70: LitVar_Missing var_170
  loc_728D73: LitVar_Missing var_15C
  loc_728D76: LitVar_Missing var_138
  loc_728D79: LitVar_Missing var_128
  loc_728D7C: LitVar_Missing var_118
  loc_728D7F: LitVar_Missing var_E8
  loc_728D82: LitVar_Missing var_D8
  loc_728D85: LitStr "La configuracion no fue actualizada."
  loc_728D88: FStStrCopy var_13C
  loc_728D8B: FLdRfVar var_13C
  loc_728D8E: LitI4 &HB1
  loc_728D93: PopTmpLdAdStr var_1DC
  loc_728D96: LitI2_Byte 9
  loc_728D98: PopTmpLdAd2 var_15E
  loc_728D9B: ImpAdLdRf MemVar_74C7D0
  loc_728D9E: NewIfNullPr clsMsg
  loc_728DA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_728DA6: FLdZeroAd var_198
  loc_728DA9: FMemStStr arg_8(1612)
  loc_728DAF: FFree1Str var_13C
  loc_728DB2: FFreeVar var_D8 = "": var_E8 = "": var_118 = "": var_128 = "": var_138 = "": var_15C = "": var_170 = "": var_24C = "": var_26C = ""
  loc_728DC9: ImpAdCallFPR4 Proc_172_0_5F2624()
  loc_728DCE: FLdRfVar var_15E
  loc_728DD1: FLdRfVar var_8C
  loc_728DD4: FMemLdPr
  loc_728DD9: MemLdRfVar from_stack_1.global_0
  loc_728DDC: FLdRfVar var_290
  loc_728DDF: ImpAdLdRf MemVar_74C760
  loc_728DE2: NewIfNullPr Formx
  loc_728DE5: from_stack_1v = Formx.global_4589716Get()
  loc_728DEA: FLdPr var_290
  loc_728DED: Call 0.Method_Proc_87_17_729AA4C ()
  loc_728DF2: FLdI2 var_15E
  loc_728DF5: NotI4
  loc_728DF6: FFree1Ad var_290
  loc_728DF9: BranchF loc_728E32
  loc_728DFC: LitVar_Missing var_E8
  loc_728DFF: LitVar_Missing var_D8
  loc_728E02: ImpAdLdRf MemVar_74BF24
  loc_728E05: CVarRef
  loc_728E0A: LitI4 5
  loc_728E0F: FMemLdRf unk_43B66D
  loc_728E14: CVarRef
  loc_728E19: ImpAdCallI2 MsgBox(, , , , )
  loc_728E1E: LitI4 2
  loc_728E23: EqI4
  loc_728E24: FFreeVar var_D8 = ""
  loc_728E2B: BranchF loc_728E2F
  loc_728E2E: ExitProc
  loc_728E2F: Branch loc_728DCE
  loc_728E32: FLdI2 var_8C
  loc_728E35: BranchF loc_7290B3
  loc_728E38: FLdRfVar var_D8
  loc_728E3B: FLdRfVar var_90
  loc_728E3E: FLdRfVar var_290
  loc_728E41: ImpAdLdRf MemVar_74C760
  loc_728E44: NewIfNullPr Formx
  loc_728E47: from_stack_1v = Formx.global_4589716Get()
  loc_728E4C: FLdPr var_290
  loc_728E4F: Call 0.Method_arg_1EC ()
  loc_728E54: FLdRfVar var_D8
  loc_728E57: NotVar var_E8
  loc_728E5B: CBoolVarNull
  loc_728E5D: FFree1Ad var_290
  loc_728E60: FFree1Var var_D8 = ""
  loc_728E63: BranchF loc_728E7D
  loc_728E66: FLdRfVar var_D8
  loc_728E69: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_728E6E: FLdRfVar var_D8
  loc_728E71: CBoolVarNull
  loc_728E73: FFree1Var var_D8 = ""
  loc_728E76: BranchF loc_728E7A
  loc_728E79: ExitProc
  loc_728E7A: Branch loc_728E38
  loc_728E7D: LitVarI2 var_D8, 1
  loc_728E82: LitI4 1
  loc_728E87: FLdRfVar var_90
  loc_728E8A: CVarRef
  loc_728E8F: FLdRfVar var_E8
  loc_728E92: ImpAdCallFPR4  = Mid(, , )
  loc_728E97: FLdRfVar var_E8
  loc_728E9A: LitVarStr var_F8, "1"
  loc_728E9F: HardType
  loc_728EA0: EqVarBool
  loc_728EA2: FFreeVar var_D8 = ""
  loc_728EA9: BranchF loc_728EBB
  loc_728EAC: ILdRf var_94
  loc_728EAF: FMemLdR4 arg_8(1588)
  loc_728EB4: ConcatStr
  loc_728EB5: FStStr var_94
  loc_728EB8: Branch loc_728F34
  loc_728EBB: LitVarI2 var_D8, 1
  loc_728EC0: LitI4 2
  loc_728EC5: FLdRfVar var_90
  loc_728EC8: CVarRef
  loc_728ECD: FLdRfVar var_E8
  loc_728ED0: ImpAdCallFPR4  = Mid(, , )
  loc_728ED5: FLdRfVar var_E8
  loc_728ED8: LitVarStr var_F8, "1"
  loc_728EDD: HardType
  loc_728EDE: EqVarBool
  loc_728EE0: FFreeVar var_D8 = ""
  loc_728EE7: BranchF loc_728EF9
  loc_728EEA: ILdRf var_94
  loc_728EED: FMemLdR4 arg_8(1592)
  loc_728EF2: ConcatStr
  loc_728EF3: FStStr var_94
  loc_728EF6: Branch loc_728F34
  loc_728EF9: LitVarI2 var_D8, 1
  loc_728EFE: LitI4 3
  loc_728F03: FLdRfVar var_90
  loc_728F06: CVarRef
  loc_728F0B: FLdRfVar var_E8
  loc_728F0E: ImpAdCallFPR4  = Mid(, , )
  loc_728F13: FLdRfVar var_E8
  loc_728F16: LitVarStr var_F8, "1"
  loc_728F1B: HardType
  loc_728F1C: EqVarBool
  loc_728F1E: FFreeVar var_D8 = ""
  loc_728F25: BranchF loc_728F34
  loc_728F28: ILdRf var_94
  loc_728F2B: FMemLdR4 arg_8(1596)
  loc_728F30: ConcatStr
  loc_728F31: FStStr var_94
  loc_728F34: ImpAdCallI2 Proc_167_18_5E16E4()
  loc_728F39: FStStr var_98
  loc_728F3C: LitVarI2 var_D8, 1
  loc_728F41: LitI4 4
  loc_728F46: FLdRfVar var_90
  loc_728F49: CVarRef
  loc_728F4E: FLdRfVar var_E8
  loc_728F51: ImpAdCallFPR4  = Mid(, , )
  loc_728F56: FLdRfVar var_E8
  loc_728F59: LitVarStr var_F8, "1"
  loc_728F5E: HardType
  loc_728F5F: EqVar var_118
  loc_728F63: LitVarI2 var_128, 1
  loc_728F68: LitI4 4
  loc_728F6D: ILdRf var_98
  loc_728F70: ImpAdCallI2 Mid$(, , )
  loc_728F75: FStStrNoPop var_13C
  loc_728F78: LitStr "1"
  loc_728F7B: EqStr
  loc_728F7D: CVarBoolI2 var_14C
  loc_728F81: AndVar var_138
  loc_728F85: CBoolVarNull
  loc_728F87: FFree1Str var_13C
  loc_728F8A: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_728F95: BranchF loc_728FBE
  loc_728F98: ILdRf var_94
  loc_728F9B: LitStr vbNullString
  loc_728F9E: NeStr
  loc_728FA0: BranchF loc_728FAF
  loc_728FA3: ILdRf var_94
  loc_728FA6: FMemLdR4 arg_8(1600)
  loc_728FAB: ConcatStr
  loc_728FAC: FStStr var_94
  loc_728FAF: ILdRf var_94
  loc_728FB2: FMemLdR4 arg_8(1604)
  loc_728FB7: ConcatStr
  loc_728FB8: FStStr var_94
  loc_728FBB: Branch loc_72903B
  loc_728FBE: LitVarI2 var_D8, 1
  loc_728FC3: LitI4 4
  loc_728FC8: FLdRfVar var_90
  loc_728FCB: CVarRef
  loc_728FD0: FLdRfVar var_E8
  loc_728FD3: ImpAdCallFPR4  = Mid(, , )
  loc_728FD8: FLdRfVar var_E8
  loc_728FDB: LitVarStr var_F8, "1"
  loc_728FE0: HardType
  loc_728FE1: EqVar var_118
  loc_728FE5: LitVarI2 var_128, 1
  loc_728FEA: LitI4 &HC
  loc_728FEF: ILdRf var_98
  loc_728FF2: ImpAdCallI2 Mid$(, , )
  loc_728FF7: FStStrNoPop var_13C
  loc_728FFA: LitStr "1"
  loc_728FFD: EqStr
  loc_728FFF: CVarBoolI2 var_14C
  loc_729003: AndVar var_138
  loc_729007: CBoolVarNull
  loc_729009: FFree1Str var_13C
  loc_72900C: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_729017: BranchF loc_72903B
  loc_72901A: ILdRf var_94
  loc_72901D: LitStr vbNullString
  loc_729020: NeStr
  loc_729022: BranchF loc_729031
  loc_729025: ILdRf var_94
  loc_729028: FMemLdR4 arg_8(1600)
  loc_72902D: ConcatStr
  loc_72902E: FStStr var_94
  loc_729031: ILdRf var_94
  loc_729034: LitStr " efectuó el cierre de Sell Out"
  loc_729037: ConcatStr
  loc_729038: FStStr var_94
  loc_72903B: ILdRf var_94
  loc_72903E: LitStr vbNullString
  loc_729041: EqStr
  loc_729043: BranchF loc_729073
  loc_729046: LitVar_Missing var_128
  loc_729049: LitVar_Missing var_118
  loc_72904C: LitVar_Missing var_E8
  loc_72904F: LitI4 0
  loc_729054: FMemLdR4 arg_8(1608)
  loc_729059: ILdRf var_94
  loc_72905C: ConcatStr
  loc_72905D: CVarStr var_D8
  loc_729060: ImpAdCallFPR4 MsgBox(, , , , )
  loc_729065: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_729070: Branch loc_7290A8
  loc_729073: LitVar_Missing var_128
  loc_729076: LitVar_Missing var_118
  loc_729079: LitVar_Missing var_E8
  loc_72907C: LitI4 0
  loc_729081: FMemLdR4 arg_8(1608)
  loc_729086: ILdRf var_94
  loc_729089: ConcatStr
  loc_72908A: CVarStr var_D8
  loc_72908D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_729092: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_72909D: ImpAdLdRf MemVar_74A220
  loc_7290A0: NewIfNullPr clsProducts
  loc_7290A3: clsProducts.Height = from_stack_1s
  loc_7290A8: LitI2_Byte &HFF
  loc_7290AA: PopTmpLdAd2 var_15E
  loc_7290AD: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_7290B2: ExitProc
  loc_7290B3: LitStr vbNullString
  loc_7290B6: FMemLdPr
  loc_7290BB: MemStStrCopy
  loc_7290BF: LitI2_Byte 1
  loc_7290C1: FLdRfVar var_86
  loc_7290C4: FLdRfVar var_15E
  loc_7290C7: ImpAdLdRf MemVar_74A220
  loc_7290CA: NewIfNullPr clsProducts
  loc_7290CD: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_7290D2: FLdI2 var_15E
  loc_7290D5: ForI2 var_294
  loc_7290DB: FLdRfVar var_15E
  loc_7290DE: FLdI2 var_86
  loc_7290E1: ImpAdLdRf MemVar_74A220
  loc_7290E4: NewIfNullPr clsProducts
  loc_7290E7: clsProducts.Caption = from_stack_1
  loc_7290EC: FLdI2 var_15E
  loc_7290EF: BranchF loc_7292C6
  loc_7290F2: FMemLdPr
  loc_7290F7: MemLdStr global_0
  loc_7290FA: CVarStr var_F8
  loc_7290FD: LitI4 1
  loc_729102: LitI4 1
  loc_729107: LitVarStr var_C8, "00"
  loc_72910C: FStVarCopyObj var_D8
  loc_72910F: FLdRfVar var_D8
  loc_729112: FLdRfVar var_86
  loc_729115: CVarRef
  loc_72911A: FLdRfVar var_E8
  loc_72911D: ImpAdCallFPR4  = Format(, )
  loc_729122: FLdRfVar var_E8
  loc_729125: ConcatVar var_118
  loc_729129: CStrVarTmp
  loc_72912A: FStStrNoPop var_13C
  loc_72912D: FMemLdPr
  loc_729132: MemStStrCopy
  loc_729136: FFree1Str var_13C
  loc_729139: FFreeVar var_D8 = "": var_E8 = ""
  loc_729142: FLdRfVar var_15E
  loc_729145: FLdI2 var_86
  loc_729148: ImpAdLdRf MemVar_74A220
  loc_72914B: NewIfNullPr clsProducts
  loc_72914E:  = clsProducts.BackColor
  loc_729153: FMemLdPr
  loc_729158: MemLdStr global_0
  loc_72915B: CVarStr var_F8
  loc_72915E: LitI4 1
  loc_729163: LitI4 1
  loc_729168: LitVarStr var_C8, "00"
  loc_72916D: FStVarCopyObj var_E8
  loc_729170: FLdRfVar var_E8
  loc_729173: FLdI2 var_15E
  loc_729176: CVarI2 var_D8
  loc_729179: FLdRfVar var_118
  loc_72917C: ImpAdCallFPR4  = Format(, )
  loc_729181: FLdRfVar var_118
  loc_729184: ConcatVar var_128
  loc_729188: CStrVarTmp
  loc_729189: FStStrNoPop var_13C
  loc_72918C: FMemLdPr
  loc_729191: MemStStrCopy
  loc_729195: FFree1Str var_13C
  loc_729198: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7291A3: FLdRfVar var_15E
  loc_7291A6: FLdI2 var_86
  loc_7291A9: ImpAdLdRf MemVar_74A220
  loc_7291AC: NewIfNullPr clsProducts
  loc_7291AF:  = clsProducts.ForeColor
  loc_7291B4: FMemLdPr
  loc_7291B9: MemLdStr global_0
  loc_7291BC: CVarStr var_F8
  loc_7291BF: LitI4 1
  loc_7291C4: LitI4 1
  loc_7291C9: LitVarStr var_C8, "000"
  loc_7291CE: FStVarCopyObj var_E8
  loc_7291D1: FLdRfVar var_E8
  loc_7291D4: FLdI2 var_15E
  loc_7291D7: CVarI2 var_D8
  loc_7291DA: FLdRfVar var_118
  loc_7291DD: ImpAdCallFPR4  = Format(, )
  loc_7291E2: FLdRfVar var_118
  loc_7291E5: ConcatVar var_128
  loc_7291E9: CStrVarTmp
  loc_7291EA: FStStrNoPop var_13C
  loc_7291ED: FMemLdPr
  loc_7291F2: MemStStrCopy
  loc_7291F6: FFree1Str var_13C
  loc_7291F9: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_729204: FLdRfVar var_15E
  loc_729207: FLdI2 var_86
  loc_72920A: ImpAdLdRf MemVar_74A220
  loc_72920D: NewIfNullPr clsProducts
  loc_729210:  = clsProducts.Left
  loc_729215: FMemLdPr
  loc_72921A: MemLdStr global_0
  loc_72921D: CVarStr var_F8
  loc_729220: LitI4 1
  loc_729225: LitI4 1
  loc_72922A: LitVarStr var_C8, "00"
  loc_72922F: FStVarCopyObj var_E8
  loc_729232: FLdRfVar var_E8
  loc_729235: FLdI2 var_15E
  loc_729238: CVarI2 var_D8
  loc_72923B: FLdRfVar var_118
  loc_72923E: ImpAdCallFPR4  = Format(, )
  loc_729243: FLdRfVar var_118
  loc_729246: ConcatVar var_128
  loc_72924A: CStrVarTmp
  loc_72924B: FStStrNoPop var_13C
  loc_72924E: FMemLdPr
  loc_729253: MemStStrCopy
  loc_729257: FFree1Str var_13C
  loc_72925A: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_729265: FLdRfVar var_15E
  loc_729268: FLdI2 var_86
  loc_72926B: ImpAdLdRf MemVar_74A220
  loc_72926E: NewIfNullPr clsProducts
  loc_729271:  = clsProducts.Top
  loc_729276: FMemLdPr
  loc_72927B: MemLdStr global_0
  loc_72927E: CVarStr var_F8
  loc_729281: LitI4 1
  loc_729286: LitI4 1
  loc_72928B: LitVarStr var_C8, "000"
  loc_729290: FStVarCopyObj var_E8
  loc_729293: FLdRfVar var_E8
  loc_729296: FLdI2 var_15E
  loc_729299: CVarI2 var_D8
  loc_72929C: FLdRfVar var_118
  loc_72929F: ImpAdCallFPR4  = Format(, )
  loc_7292A4: FLdRfVar var_118
  loc_7292A7: ConcatVar var_128
  loc_7292AB: CStrVarTmp
  loc_7292AC: FStStrNoPop var_13C
  loc_7292AF: FMemLdPr
  loc_7292B4: MemStStrCopy
  loc_7292B8: FFree1Str var_13C
  loc_7292BB: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7292C6: FLdRfVar var_86
  loc_7292C9: NextI2 var_294, loc_7290DB
  loc_7292CE: FMemLdPr
  loc_7292D3: MemLdStr global_0
  loc_7292D6: LitStr vbNullString
  loc_7292D9: NeStr
  loc_7292DB: BranchF loc_7299CD
  loc_7292DE: FLdRfVar var_15E
  loc_7292E1: FLdRfVar var_8C
  loc_7292E4: FMemLdPr
  loc_7292E9: MemLdRfVar from_stack_1.global_0
  loc_7292EC: FLdRfVar var_290
  loc_7292EF: ImpAdLdRf MemVar_74C760
  loc_7292F2: NewIfNullPr Formx
  loc_7292F5: from_stack_1v = Formx.global_4589716Get()
  loc_7292FA: FLdPr var_290
  loc_7292FD:  = Formx.hWnd
  loc_729302: FLdI2 var_15E
  loc_729305: NotI4
  loc_729306: FFree1Ad var_290
  loc_729309: BranchF loc_729342
  loc_72930C: LitVar_Missing var_E8
  loc_72930F: LitVar_Missing var_D8
  loc_729312: ImpAdLdRf MemVar_74BF24
  loc_729315: CVarRef
  loc_72931A: LitI4 5
  loc_72931F: FMemLdRf unk_43B66D
  loc_729324: CVarRef
  loc_729329: ImpAdCallI2 MsgBox(, , , , )
  loc_72932E: LitI4 2
  loc_729333: EqI4
  loc_729334: FFreeVar var_D8 = ""
  loc_72933B: BranchF loc_72933F
  loc_72933E: ExitProc
  loc_72933F: Branch loc_7292DE
  loc_729342: FLdI2 var_8C
  loc_729345: BranchF loc_729558
  loc_729348: FLdRfVar var_D8
  loc_72934B: FLdRfVar var_90
  loc_72934E: FLdRfVar var_290
  loc_729351: ImpAdLdRf MemVar_74C760
  loc_729354: NewIfNullPr Formx
  loc_729357: from_stack_1v = Formx.global_4589716Get()
  loc_72935C: FLdPr var_290
  loc_72935F: Call 0.Method_arg_1EC ()
  loc_729364: FLdRfVar var_D8
  loc_729367: NotVar var_E8
  loc_72936B: CBoolVarNull
  loc_72936D: FFree1Ad var_290
  loc_729370: FFree1Var var_D8 = ""
  loc_729373: BranchF loc_72938D
  loc_729376: FLdRfVar var_D8
  loc_729379: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_72937E: FLdRfVar var_D8
  loc_729381: CBoolVarNull
  loc_729383: FFree1Var var_D8 = ""
  loc_729386: BranchF loc_72938A
  loc_729389: ExitProc
  loc_72938A: Branch loc_729348
  loc_72938D: LitVarI2 var_D8, 1
  loc_729392: LitI4 1
  loc_729397: FLdRfVar var_90
  loc_72939A: CVarRef
  loc_72939F: FLdRfVar var_E8
  loc_7293A2: ImpAdCallFPR4  = Mid(, , )
  loc_7293A7: FLdRfVar var_E8
  loc_7293AA: LitVarStr var_F8, "1"
  loc_7293AF: HardType
  loc_7293B0: EqVarBool
  loc_7293B2: FFreeVar var_D8 = ""
  loc_7293B9: BranchF loc_7293CB
  loc_7293BC: ILdRf var_94
  loc_7293BF: FMemLdR4 arg_8(1588)
  loc_7293C4: ConcatStr
  loc_7293C5: FStStr var_94
  loc_7293C8: Branch loc_729444
  loc_7293CB: LitVarI2 var_D8, 1
  loc_7293D0: LitI4 2
  loc_7293D5: FLdRfVar var_90
  loc_7293D8: CVarRef
  loc_7293DD: FLdRfVar var_E8
  loc_7293E0: ImpAdCallFPR4  = Mid(, , )
  loc_7293E5: FLdRfVar var_E8
  loc_7293E8: LitVarStr var_F8, "1"
  loc_7293ED: HardType
  loc_7293EE: EqVarBool
  loc_7293F0: FFreeVar var_D8 = ""
  loc_7293F7: BranchF loc_729409
  loc_7293FA: ILdRf var_94
  loc_7293FD: FMemLdR4 arg_8(1592)
  loc_729402: ConcatStr
  loc_729403: FStStr var_94
  loc_729406: Branch loc_729444
  loc_729409: LitVarI2 var_D8, 1
  loc_72940E: LitI4 3
  loc_729413: FLdRfVar var_90
  loc_729416: CVarRef
  loc_72941B: FLdRfVar var_E8
  loc_72941E: ImpAdCallFPR4  = Mid(, , )
  loc_729423: FLdRfVar var_E8
  loc_729426: LitVarStr var_F8, "1"
  loc_72942B: HardType
  loc_72942C: EqVarBool
  loc_72942E: FFreeVar var_D8 = ""
  loc_729435: BranchF loc_729444
  loc_729438: ILdRf var_94
  loc_72943B: FMemLdR4 arg_8(1596)
  loc_729440: ConcatStr
  loc_729441: FStStr var_94
  loc_729444: ImpAdCallI2 Proc_167_18_5E16E4()
  loc_729449: FStStr var_98
  loc_72944C: LitVarI2 var_D8, 1
  loc_729451: LitI4 4
  loc_729456: FLdRfVar var_90
  loc_729459: CVarRef
  loc_72945E: FLdRfVar var_E8
  loc_729461: ImpAdCallFPR4  = Mid(, , )
  loc_729466: FLdRfVar var_E8
  loc_729469: LitVarStr var_F8, "1"
  loc_72946E: HardType
  loc_72946F: EqVar var_118
  loc_729473: LitVarI2 var_128, 1
  loc_729478: LitI4 4
  loc_72947D: ILdRf var_98
  loc_729480: ImpAdCallI2 Mid$(, , )
  loc_729485: FStStrNoPop var_13C
  loc_729488: LitStr "1"
  loc_72948B: EqStr
  loc_72948D: CVarBoolI2 var_14C
  loc_729491: AndVar var_138
  loc_729495: CBoolVarNull
  loc_729497: FFree1Str var_13C
  loc_72949A: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_7294A5: BranchF loc_7294CE
  loc_7294A8: ILdRf var_94
  loc_7294AB: LitStr vbNullString
  loc_7294AE: NeStr
  loc_7294B0: BranchF loc_7294BF
  loc_7294B3: ILdRf var_94
  loc_7294B6: FMemLdR4 arg_8(1600)
  loc_7294BB: ConcatStr
  loc_7294BC: FStStr var_94
  loc_7294BF: ILdRf var_94
  loc_7294C2: FMemLdR4 arg_8(1604)
  loc_7294C7: ConcatStr
  loc_7294C8: FStStr var_94
  loc_7294CB: Branch loc_72954D
  loc_7294CE: LitVarI2 var_D8, 1
  loc_7294D3: LitI4 4
  loc_7294D8: FLdRfVar var_90
  loc_7294DB: CVarRef
  loc_7294E0: FLdRfVar var_E8
  loc_7294E3: ImpAdCallFPR4  = Mid(, , )
  loc_7294E8: FLdRfVar var_E8
  loc_7294EB: LitVarStr var_F8, "1"
  loc_7294F0: HardType
  loc_7294F1: EqVar var_118
  loc_7294F5: LitVarI2 var_128, 1
  loc_7294FA: LitI4 &HC
  loc_7294FF: ILdRf var_98
  loc_729502: ImpAdCallI2 Mid$(, , )
  loc_729507: FStStrNoPop var_13C
  loc_72950A: LitStr "1"
  loc_72950D: EqStr
  loc_72950F: CVarBoolI2 var_14C
  loc_729513: AndVar var_138
  loc_729517: CBoolVarNull
  loc_729519: FFree1Str var_13C
  loc_72951C: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_729527: BranchF loc_72954D
  loc_72952A: ILdRf var_94
  loc_72952D: LitStr vbNullString
  loc_729530: NeStr
  loc_729532: BranchF loc_729541
  loc_729535: ILdRf var_94
  loc_729538: FMemLdR4 arg_8(1600)
  loc_72953D: ConcatStr
  loc_72953E: FStStr var_94
  loc_729541: ILdRf var_94
  loc_729544: FMemLdR4 arg_8(1604)
  loc_729549: ConcatStr
  loc_72954A: FStStr var_94
  loc_72954D: LitI2_Byte &HFF
  loc_72954F: PopTmpLdAd2 var_15E
  loc_729552: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_729557: ExitProc
  loc_729558: LitStr vbNullString
  loc_72955B: FMemLdPr
  loc_729560: MemStStrCopy
  loc_729564: LitI2_Byte 1
  loc_729566: FLdRfVar var_86
  loc_729569: LitI2_Byte &H20
  loc_72956B: ForI2 var_298
  loc_729571: FLdI2 var_86
  loc_729574: CI4UI1
  loc_729575: FMemLdRf unk_43B66D
  loc_72957A: Ary1LdUI1
  loc_72957C: CI2UI1
  loc_72957E: LitI2_Byte 6
  loc_729580: GtI2
  loc_729581: BranchF loc_7296E8
  loc_729584: FMemLdPr
  loc_729589: MemLdStr global_0
  loc_72958C: CVarStr var_F8
  loc_72958F: LitI4 1
  loc_729594: LitI4 1
  loc_729599: LitVarStr var_C8, "00"
  loc_72959E: FStVarCopyObj var_D8
  loc_7295A1: FLdRfVar var_D8
  loc_7295A4: FLdRfVar var_86
  loc_7295A7: CVarRef
  loc_7295AC: FLdRfVar var_E8
  loc_7295AF: ImpAdCallFPR4  = Format(, )
  loc_7295B4: FLdRfVar var_E8
  loc_7295B7: AddVar var_118
  loc_7295BB: CStrVarTmp
  loc_7295BC: FStStrNoPop var_13C
  loc_7295BF: FMemLdPr
  loc_7295C4: MemStStrCopy
  loc_7295C8: FFree1Str var_13C
  loc_7295CB: FFreeVar var_D8 = "": var_E8 = ""
  loc_7295D4: LitI2_Byte 0
  loc_7295D6: CUI1I2
  loc_7295D8: FLdRfVar var_88
  loc_7295DB: LitI2_Byte 3
  loc_7295DD: CUI1I2
  loc_7295DF: ForUI1 var_29C
  loc_7295E5: LitI2_Byte 0
  loc_7295E7: CUI1I2
  loc_7295E9: FLdRfVar var_8A
  loc_7295EC: LitI2_Byte 2
  loc_7295EE: CUI1I2
  loc_7295F0: ForUI1 var_2A0
  loc_7295F6: FMemLdPr
  loc_7295FB: MemLdStr global_0
  loc_7295FE: CVarStr var_F8
  loc_729601: LitI4 1
  loc_729606: LitI4 1
  loc_72960B: LitVarStr var_C8, "00"
  loc_729610: FStVarCopyObj var_D8
  loc_729613: FLdRfVar var_D8
  loc_729616: FLdI2 var_86
  loc_729619: CI4UI1
  loc_72961A: FLdUI1
  loc_72961E: CI4UI1
  loc_72961F: FLdUI1
  loc_729623: CI4UI1
  loc_729624: FMemLdRf unk_43B66D
  loc_729629: AryLdRf
  loc_72962C: CVarRef
  loc_729631: FLdRfVar var_E8
  loc_729634: ImpAdCallFPR4  = Format(, )
  loc_729639: FLdRfVar var_E8
  loc_72963C: ConcatVar var_118
  loc_729640: CStrVarTmp
  loc_729641: FStStrNoPop var_13C
  loc_729644: FMemLdPr
  loc_729649: MemStStrCopy
  loc_72964D: FFree1Str var_13C
  loc_729650: FFreeVar var_D8 = "": var_E8 = ""
  loc_729659: FLdRfVar var_8A
  loc_72965C: NextUI1
  loc_729662: LitI2_Byte 0
  loc_729664: CUI1I2
  loc_729666: FLdRfVar var_8A
  loc_729669: LitI2_Byte 2
  loc_72966B: CUI1I2
  loc_72966D: ForUI1 var_2A4
  loc_729673: FMemLdPr
  loc_729678: MemLdStr global_0
  loc_72967B: CVarStr var_F8
  loc_72967E: LitI4 1
  loc_729683: LitI4 1
  loc_729688: LitVarStr var_C8, "00"
  loc_72968D: FStVarCopyObj var_D8
  loc_729690: FLdRfVar var_D8
  loc_729693: FLdI2 var_86
  loc_729696: CI4UI1
  loc_729697: FLdUI1
  loc_72969B: CI4UI1
  loc_72969C: FLdUI1
  loc_7296A0: CI4UI1
  loc_7296A1: FMemLdRf unk_43B66D
  loc_7296A6: AryLdRf
  loc_7296A9: CVarRef
  loc_7296AE: FLdRfVar var_E8
  loc_7296B1: ImpAdCallFPR4  = Format(, )
  loc_7296B6: FLdRfVar var_E8
  loc_7296B9: ConcatVar var_118
  loc_7296BD: CStrVarTmp
  loc_7296BE: FStStrNoPop var_13C
  loc_7296C1: FMemLdPr
  loc_7296C6: MemStStrCopy
  loc_7296CA: FFree1Str var_13C
  loc_7296CD: FFreeVar var_D8 = "": var_E8 = ""
  loc_7296D6: FLdRfVar var_8A
  loc_7296D9: NextUI1
  loc_7296DF: FLdRfVar var_88
  loc_7296E2: NextUI1
  loc_7296E8: FLdRfVar var_86
  loc_7296EB: NextI2 var_298, loc_729571
  loc_7296F0: FLdRfVar var_15E
  loc_7296F3: FLdRfVar var_8C
  loc_7296F6: FMemLdPr
  loc_7296FB: MemLdRfVar from_stack_1.global_0
  loc_7296FE: FLdRfVar var_290
  loc_729701: ImpAdLdRf MemVar_74C760
  loc_729704: NewIfNullPr Formx
  loc_729707: from_stack_1v = Formx.global_4589716Get()
  loc_72970C: FLdPr var_290
  loc_72970F:  = Formx.Caption
  loc_729714: FLdI2 var_15E
  loc_729717: NotI4
  loc_729718: FFree1Ad var_290
  loc_72971B: BranchF loc_729754
  loc_72971E: LitVar_Missing var_E8
  loc_729721: LitVar_Missing var_D8
  loc_729724: ImpAdLdRf MemVar_74BF24
  loc_729727: CVarRef
  loc_72972C: LitI4 5
  loc_729731: FMemLdRf unk_43B66D
  loc_729736: CVarRef
  loc_72973B: ImpAdCallI2 MsgBox(, , , , )
  loc_729740: LitI4 2
  loc_729745: EqI4
  loc_729746: FFreeVar var_D8 = ""
  loc_72974D: BranchF loc_729751
  loc_729750: ExitProc
  loc_729751: Branch loc_7296F0
  loc_729754: FLdI2 var_8C
  loc_729757: BranchF loc_7299CA
  loc_72975A: FLdRfVar var_D8
  loc_72975D: FLdRfVar var_90
  loc_729760: FLdRfVar var_290
  loc_729763: ImpAdLdRf MemVar_74C760
  loc_729766: NewIfNullPr Formx
  loc_729769: from_stack_1v = Formx.global_4589716Get()
  loc_72976E: FLdPr var_290
  loc_729771: Call 0.Method_arg_1EC ()
  loc_729776: FLdRfVar var_D8
  loc_729779: NotVar var_E8
  loc_72977D: CBoolVarNull
  loc_72977F: FFree1Ad var_290
  loc_729782: FFree1Var var_D8 = ""
  loc_729785: BranchF loc_72979F
  loc_729788: FLdRfVar var_D8
  loc_72978B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_729790: FLdRfVar var_D8
  loc_729793: CBoolVarNull
  loc_729795: FFree1Var var_D8 = ""
  loc_729798: BranchF loc_72979C
  loc_72979B: ExitProc
  loc_72979C: Branch loc_72975A
  loc_72979F: LitVarI2 var_D8, 1
  loc_7297A4: LitI4 1
  loc_7297A9: FLdRfVar var_90
  loc_7297AC: CVarRef
  loc_7297B1: FLdRfVar var_E8
  loc_7297B4: ImpAdCallFPR4  = Mid(, , )
  loc_7297B9: FLdRfVar var_E8
  loc_7297BC: LitVarStr var_F8, "1"
  loc_7297C1: HardType
  loc_7297C2: EqVarBool
  loc_7297C4: FFreeVar var_D8 = ""
  loc_7297CB: BranchF loc_7297DD
  loc_7297CE: ILdRf var_94
  loc_7297D1: FMemLdR4 arg_8(1588)
  loc_7297D6: ConcatStr
  loc_7297D7: FStStr var_94
  loc_7297DA: Branch loc_729856
  loc_7297DD: LitVarI2 var_D8, 1
  loc_7297E2: LitI4 2
  loc_7297E7: FLdRfVar var_90
  loc_7297EA: CVarRef
  loc_7297EF: FLdRfVar var_E8
  loc_7297F2: ImpAdCallFPR4  = Mid(, , )
  loc_7297F7: FLdRfVar var_E8
  loc_7297FA: LitVarStr var_F8, "1"
  loc_7297FF: HardType
  loc_729800: EqVarBool
  loc_729802: FFreeVar var_D8 = ""
  loc_729809: BranchF loc_72981B
  loc_72980C: ILdRf var_94
  loc_72980F: FMemLdR4 arg_8(1592)
  loc_729814: ConcatStr
  loc_729815: FStStr var_94
  loc_729818: Branch loc_729856
  loc_72981B: LitVarI2 var_D8, 1
  loc_729820: LitI4 3
  loc_729825: FLdRfVar var_90
  loc_729828: CVarRef
  loc_72982D: FLdRfVar var_E8
  loc_729830: ImpAdCallFPR4  = Mid(, , )
  loc_729835: FLdRfVar var_E8
  loc_729838: LitVarStr var_F8, "1"
  loc_72983D: HardType
  loc_72983E: EqVarBool
  loc_729840: FFreeVar var_D8 = ""
  loc_729847: BranchF loc_729856
  loc_72984A: ILdRf var_94
  loc_72984D: FMemLdR4 arg_8(1596)
  loc_729852: ConcatStr
  loc_729853: FStStr var_94
  loc_729856: ImpAdCallI2 Proc_167_18_5E16E4()
  loc_72985B: FStStr var_98
  loc_72985E: LitVarI2 var_D8, 1
  loc_729863: LitI4 4
  loc_729868: FLdRfVar var_90
  loc_72986B: CVarRef
  loc_729870: FLdRfVar var_E8
  loc_729873: ImpAdCallFPR4  = Mid(, , )
  loc_729878: FLdRfVar var_E8
  loc_72987B: LitVarStr var_F8, "1"
  loc_729880: HardType
  loc_729881: EqVar var_118
  loc_729885: LitVarI2 var_128, 1
  loc_72988A: LitI4 4
  loc_72988F: ILdRf var_98
  loc_729892: ImpAdCallI2 Mid$(, , )
  loc_729897: FStStrNoPop var_13C
  loc_72989A: LitStr "1"
  loc_72989D: EqStr
  loc_72989F: CVarBoolI2 var_14C
  loc_7298A3: AndVar var_138
  loc_7298A7: CBoolVarNull
  loc_7298A9: FFree1Str var_13C
  loc_7298AC: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_7298B7: BranchF loc_7298E0
  loc_7298BA: ILdRf var_94
  loc_7298BD: LitStr vbNullString
  loc_7298C0: NeStr
  loc_7298C2: BranchF loc_7298D1
  loc_7298C5: ILdRf var_94
  loc_7298C8: FMemLdR4 arg_8(1600)
  loc_7298CD: ConcatStr
  loc_7298CE: FStStr var_94
  loc_7298D1: ILdRf var_94
  loc_7298D4: FMemLdR4 arg_8(1604)
  loc_7298D9: ConcatStr
  loc_7298DA: FStStr var_94
  loc_7298DD: Branch loc_72995D
  loc_7298E0: LitVarI2 var_D8, 1
  loc_7298E5: LitI4 4
  loc_7298EA: FLdRfVar var_90
  loc_7298ED: CVarRef
  loc_7298F2: FLdRfVar var_E8
  loc_7298F5: ImpAdCallFPR4  = Mid(, , )
  loc_7298FA: FLdRfVar var_E8
  loc_7298FD: LitVarStr var_F8, "1"
  loc_729902: HardType
  loc_729903: EqVar var_118
  loc_729907: LitVarI2 var_128, 1
  loc_72990C: LitI4 &HC
  loc_729911: ILdRf var_98
  loc_729914: ImpAdCallI2 Mid$(, , )
  loc_729919: FStStrNoPop var_13C
  loc_72991C: LitStr "1"
  loc_72991F: EqStr
  loc_729921: CVarBoolI2 var_14C
  loc_729925: AndVar var_138
  loc_729929: CBoolVarNull
  loc_72992B: FFree1Str var_13C
  loc_72992E: FFreeVar var_D8 = "": var_E8 = "": var_128 = ""
  loc_729939: BranchF loc_72995D
  loc_72993C: ILdRf var_94
  loc_72993F: LitStr vbNullString
  loc_729942: NeStr
  loc_729944: BranchF loc_729953
  loc_729947: ILdRf var_94
  loc_72994A: FMemLdR4 arg_8(1600)
  loc_72994F: ConcatStr
  loc_729950: FStStr var_94
  loc_729953: ILdRf var_94
  loc_729956: LitStr vbNullString
  loc_729959: ConcatStr
  loc_72995A: FStStr var_94
  loc_72995D: ILdRf var_94
  loc_729960: LitStr vbNullString
  loc_729963: EqStr
  loc_729965: BranchF loc_729995
  loc_729968: LitVar_Missing var_128
  loc_72996B: LitVar_Missing var_118
  loc_72996E: LitVar_Missing var_E8
  loc_729971: LitI4 0
  loc_729976: FMemLdR4 arg_8(1612)
  loc_72997B: ILdRf var_94
  loc_72997E: ConcatStr
  loc_72997F: CVarStr var_D8
  loc_729982: ImpAdCallFPR4 MsgBox(, , , , )
  loc_729987: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_729992: Branch loc_7299BF
  loc_729995: LitVar_Missing var_128
  loc_729998: LitVar_Missing var_118
  loc_72999B: LitVar_Missing var_E8
  loc_72999E: LitI4 0
  loc_7299A3: FMemLdR4 arg_8(1608)
  loc_7299A8: ILdRf var_94
  loc_7299AB: ConcatStr
  loc_7299AC: CVarStr var_D8
  loc_7299AF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_7299B4: FFreeVar var_D8 = "": var_E8 = "": var_118 = ""
  loc_7299BF: LitI2_Byte &HFF
  loc_7299C1: PopTmpLdAd2 var_15E
  loc_7299C4: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_7299C9: ExitProc
  loc_7299CA: Branch loc_729AA1
  loc_7299CD: LitStr " "
  loc_7299D0: FMemLdPr
  loc_7299D5: MemStStrCopy
  loc_7299D9: FLdRfVar var_15E
  loc_7299DC: FLdRfVar var_8C
  loc_7299DF: FMemLdPr
  loc_7299E4: MemLdRfVar from_stack_1.global_0
  loc_7299E7: FLdRfVar var_290
  loc_7299EA: ImpAdLdRf MemVar_74C760
  loc_7299ED: NewIfNullPr Formx
  loc_7299F0: from_stack_1v = Formx.global_4589716Get()
  loc_7299F5: FLdPr var_290
  loc_7299F8:  = Formx.hWnd
  loc_7299FD: FLdI2 var_15E
  loc_729A00: NotI4
  loc_729A01: FFree1Ad var_290
  loc_729A04: BranchF loc_729A3D
  loc_729A07: LitVar_Missing var_E8
  loc_729A0A: LitVar_Missing var_D8
  loc_729A0D: ImpAdLdRf MemVar_74BF24
  loc_729A10: CVarRef
  loc_729A15: LitI4 5
  loc_729A1A: FMemLdRf unk_43B66D
  loc_729A1F: CVarRef
  loc_729A24: ImpAdCallI2 MsgBox(, , , , )
  loc_729A29: LitI4 2
  loc_729A2E: EqI4
  loc_729A2F: FFreeVar var_D8 = ""
  loc_729A36: BranchF loc_729A3A
  loc_729A39: ExitProc
  loc_729A3A: Branch loc_7299D9
  loc_729A3D: FLdRfVar var_15E
  loc_729A40: FLdRfVar var_8C
  loc_729A43: FMemLdPr
  loc_729A48: MemLdRfVar from_stack_1.global_0
  loc_729A4B: FLdRfVar var_290
  loc_729A4E: ImpAdLdRf MemVar_74C760
  loc_729A51: NewIfNullPr Formx
  loc_729A54: from_stack_1v = Formx.global_4589716Get()
  loc_729A59: FLdPr var_290
  loc_729A5C:  = Formx.Caption
  loc_729A61: FLdI2 var_15E
  loc_729A64: NotI4
  loc_729A65: FFree1Ad var_290
  loc_729A68: BranchF loc_729AA1
  loc_729A6B: LitVar_Missing var_E8
  loc_729A6E: LitVar_Missing var_D8
  loc_729A71: ImpAdLdRf MemVar_74BF24
  loc_729A74: CVarRef
  loc_729A79: LitI4 5
  loc_729A7E: FMemLdRf unk_43B66D
  loc_729A83: CVarRef
  loc_729A88: ImpAdCallI2 MsgBox(, , , , )
  loc_729A8D: LitI4 2
  loc_729A92: EqI4
  loc_729A93: FFreeVar var_D8 = ""
  loc_729A9A: BranchF loc_729A9E
  loc_729A9D: ExitProc
  loc_729A9E: Branch loc_729A3D
  loc_729AA1: ExitProc
End Function

Private Function Proc_87_18_5DFD4C(arg_C, arg_10) '5DFD4C
  'Data Table: 409184
  loc_5DFCFC: LitVarI2 var_DC, 0
  loc_5DFD01: LitVarI2 var_BC, 1
  loc_5DFD06: ILdRf arg_10
  loc_5DFD09: CVarRef
  loc_5DFD0E: FLdRfVar var_EC
  loc_5DFD11: ImpAdCallFPR4  = IIf(, , )
  loc_5DFD16: FLdRfVar var_EC
  loc_5DFD19: CI4Var
  loc_5DFD1B: PopTmpLdAdStr var_F0
  loc_5DFD1E: ILdRf arg_C
  loc_5DFD21: ImpAdCallI2 Proc_94_8_5DD400(, )
  loc_5DFD26: FStR4 var_8C
  loc_5DFD29: FFreeVar var_BC = "": var_DC = ""
  loc_5DFD32: ILdRf var_8C
  loc_5DFD35: LitI4 0
  loc_5DFD3A: EqI4
  loc_5DFD3B: BranchF loc_5DFD46
  loc_5DFD3E: LitI2_Byte 0
  loc_5DFD40: FStI2 var_86
  loc_5DFD43: Branch loc_5DFD4B
  loc_5DFD46: LitI2_Byte &HFF
  loc_5DFD48: FStI2 var_86
  loc_5DFD4B: ExitProcI2
End Function

Private Function Proc_87_19_635F40(arg_C, arg_10, arg_14, arg_18) '635F40
  'Data Table: 4024B8
  loc_635D4C: ILdI4 arg_14
  loc_635D4F: FnLenStr
  loc_635D50: CI2I4
  loc_635D51: FStI2 var_88
  loc_635D54: LitI2_Byte 1
  loc_635D56: FStI2 var_8A
  loc_635D59: LitStr vbNullString
  loc_635D5C: IStStrCopy arg_C
  loc_635D60: LitI2_Byte 0
  loc_635D62: FStI2 var_86
  loc_635D65: ILdI4 arg_14
  loc_635D68: FStStrCopy var_98
  loc_635D6B: ILdRf var_98
  loc_635D6E: LitStr vbNullString
  loc_635D71: NeStr
  loc_635D73: BranchF loc_635F3A
  loc_635D76: LitI4 1
  loc_635D7B: ILdRf var_98
  loc_635D7E: LitStr Chr(37)
  loc_635D81: LitI4 0
  loc_635D86: FnInStr4
  loc_635D88: CI2I4
  loc_635D89: FStI2 var_94
  loc_635D8C: FLdI2 var_94
  loc_635D8F: LitI2_Byte 0
  loc_635D91: EqI2
  loc_635D92: BranchF loc_635DA9
  loc_635D95: ILdI4 arg_C
  loc_635D98: ILdRf var_98
  loc_635D9B: ConcatStr
  loc_635D9C: IStStr
  loc_635DA0: LitStr vbNullString
  loc_635DA3: FStStrCopy var_98
  loc_635DA6: Branch loc_635F37
  loc_635DA9: FLdI2 var_94
  loc_635DAC: CI4UI1
  loc_635DAD: ILdRf var_98
  loc_635DB0: FnLenStr
  loc_635DB1: EqI4
  loc_635DB2: BranchF loc_635DC9
  loc_635DB5: ILdI4 arg_C
  loc_635DB8: ILdRf var_98
  loc_635DBB: ConcatStr
  loc_635DBC: IStStr
  loc_635DC0: LitStr vbNullString
  loc_635DC3: FStStrCopy var_98
  loc_635DC6: Branch loc_635F37
  loc_635DC9: LitVarI2 var_C8, 1
  loc_635DCE: FLdI2 var_94
  loc_635DD1: LitI2_Byte 1
  loc_635DD3: AddI2
  loc_635DD4: CI4UI1
  loc_635DD5: FLdRfVar var_98
  loc_635DD8: CVarRef
  loc_635DDD: FLdRfVar var_D8
  loc_635DE0: ImpAdCallFPR4  = Mid(, , )
  loc_635DE5: FLdRfVar var_D8
  loc_635DE8: CStrVarVal var_DC
  loc_635DEC: ImpAdCallI2 Asc()
  loc_635DF1: CUI1I2
  loc_635DF3: FStUI1 var_8C
  loc_635DF7: FFree1Str var_DC
  loc_635DFA: FFreeVar var_C8 = ""
  loc_635E01: FLdUI1
  loc_635E05: CI2UI1
  loc_635E07: LitStr "0"
  loc_635E0A: ImpAdCallI2 Asc()
  loc_635E0F: EqI2
  loc_635E10: BranchF loc_635E24
  loc_635E13: LitStr "9"
  loc_635E16: ImpAdCallI2 Asc()
  loc_635E1B: LitI2_Byte 1
  loc_635E1D: AddI2
  loc_635E1E: CUI1I2
  loc_635E20: FStUI1 var_8C
  loc_635E24: FLdUI1
  loc_635E28: CI2UI1
  loc_635E2A: LitStr "1"
  loc_635E2D: ImpAdCallI2 Asc()
  loc_635E32: GeI2
  loc_635E33: FLdUI1
  loc_635E37: CI2UI1
  loc_635E39: LitStr "9"
  loc_635E3C: ImpAdCallI2 Asc()
  loc_635E41: LitI2_Byte 1
  loc_635E43: AddI2
  loc_635E44: LeI2
  loc_635E45: AndI4
  loc_635E46: BranchF loc_635EED
  loc_635E49: FLdUI1
  loc_635E4D: CI2UI1
  loc_635E4F: LitStr "0"
  loc_635E52: ImpAdCallI2 Asc()
  loc_635E57: SubI2
  loc_635E58: CUI1I2
  loc_635E5A: FStUI1 var_8C
  loc_635E5E: ILdI2 arg_10
  loc_635E61: FLdUI1
  loc_635E65: CI2UI1
  loc_635E67: LtI2
  loc_635E68: BranchF loc_635E77
  loc_635E6B: ILdI4 arg_C
  loc_635E6E: LitStr "TRANSLATION ERROR"
  loc_635E71: ConcatStr
  loc_635E72: IStStr
  loc_635E76: ExitProcI2
  loc_635E77: ILdI4 arg_C
  loc_635E7A: CVarStr var_EC
  loc_635E7D: FLdI2 var_94
  loc_635E80: LitI2_Byte 1
  loc_635E82: SubI2
  loc_635E83: CVarI2 var_C8
  loc_635E86: LitI4 1
  loc_635E8B: FLdRfVar var_98
  loc_635E8E: CVarRef
  loc_635E93: FLdRfVar var_D8
  loc_635E96: ImpAdCallFPR4  = Mid(, , )
  loc_635E9B: FLdRfVar var_D8
  loc_635E9E: ConcatVar var_FC
  loc_635EA2: FLdUI1
  loc_635EA6: CI4UI1
  loc_635EA7: ILdI4 arg_18
  loc_635EAA: Ary1LdI4
  loc_635EAB: CVarStr var_10C
  loc_635EAE: ConcatVar var_11C
  loc_635EB2: CStrVarTmp
  loc_635EB3: IStStr
  loc_635EB7: FFreeVar var_C8 = "": var_D8 = "": var_FC = ""
  loc_635EC2: LitVar_Missing var_C8
  loc_635EC5: FLdI2 var_94
  loc_635EC8: LitI2_Byte 1
  loc_635ECA: AddI2
  loc_635ECB: CI4UI1
  loc_635ECC: FLdRfVar var_98
  loc_635ECF: CVarRef
  loc_635ED4: FLdRfVar var_D8
  loc_635ED7: ImpAdCallFPR4  = Mid(, , )
  loc_635EDC: FLdRfVar var_D8
  loc_635EDF: CStrVarTmp
  loc_635EE0: FStStr var_98
  loc_635EE3: FFreeVar var_C8 = ""
  loc_635EEA: Branch loc_635F13
  loc_635EED: ILdI4 arg_C
  loc_635EF0: CVarStr var_A8
  loc_635EF3: FLdUI1
  loc_635EF7: CI4UI1
  loc_635EF8: FLdRfVar var_C8
  loc_635EFB: ImpAdCallFPR4  = Chr()
  loc_635F00: FLdRfVar var_C8
  loc_635F03: ConcatVar var_D8
  loc_635F07: CStrVarTmp
  loc_635F08: IStStr
  loc_635F0C: FFreeVar var_C8 = ""
  loc_635F13: ILdRf var_98
  loc_635F16: FnLenStr
  loc_635F17: LitI4 1
  loc_635F1C: SubI4
  loc_635F1D: FLdRfVar var_98
  loc_635F20: CVarRef
  loc_635F25: FLdRfVar var_C8
  loc_635F28: ImpAdCallFPR4  = Right(, )
  loc_635F2D: FLdRfVar var_C8
  loc_635F30: CStrVarTmp
  loc_635F31: FStStr var_98
  loc_635F34: FFree1Var var_C8 = ""
  loc_635F37: Branch loc_635D6B
  loc_635F3A: LitI2_Byte &HFF
  loc_635F3C: FStI2 var_86
  loc_635F3F: ExitProcI2
End Function

Private Function Proc_87_20_602058(arg_C, arg_10, arg_14, arg_18) '602058
  'Data Table: 409184
  loc_601F8C: ILdI4 arg_10
  loc_601F8F: LitStr vbNullString
  loc_601F92: NeStr
  loc_601F94: ILdI4 arg_14
  loc_601F97: LitStr vbNullString
  loc_601F9A: NeStr
  loc_601F9C: AndI4
  loc_601F9D: BranchF loc_602006
  loc_601FA0: ILdI4 arg_18
  loc_601FA3: FLdRfVar var_98
  loc_601FA6: CStr2Ansi
  loc_601FA7: ILdRf var_98
  loc_601FAA: ILdI4 arg_14
  loc_601FAD: FLdRfVar var_94
  loc_601FB0: CStr2Ansi
  loc_601FB1: ILdRf var_94
  loc_601FB4: ILdI4 arg_10
  loc_601FB7: FLdRfVar var_90
  loc_601FBA: CStr2Ansi
  loc_601FBB: ILdRf var_90
  loc_601FBE: ILdI4 arg_C
  loc_601FC1: FLdRfVar var_8C
  loc_601FC4: CStr2Ansi
  loc_601FC5: ILdRf var_8C
  loc_601FC8: ImpAdCallI2 WritePrivateProfileString(, , , )
  loc_601FCD: FStR4 var_9C
  loc_601FD0: SetLastSystemError
  loc_601FD1: ILdRf var_8C
  loc_601FD4: ILdRf arg_C
  loc_601FD7: CStr2Uni
  loc_601FD9: ILdRf var_90
  loc_601FDC: ILdRf arg_10
  loc_601FDF: CStr2Uni
  loc_601FE1: ILdRf var_94
  loc_601FE4: ILdRf arg_14
  loc_601FE7: CStr2Uni
  loc_601FE9: ILdRf var_98
  loc_601FEC: ILdRf arg_18
  loc_601FEF: CStr2Uni
  loc_601FF1: ILdRf var_9C
  loc_601FF4: CI2I4
  loc_601FF5: FStI2 var_86
  loc_601FF8: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_602003: Branch loc_602054
  loc_602006: ILdI4 arg_18
  loc_602009: FLdRfVar var_90
  loc_60200C: CStr2Ansi
  loc_60200D: ILdRf var_90
  loc_602010: LitNothing
  loc_602012: FStAdNoPop
  loc_602016: LitNothing
  loc_602018: FStAdNoPop
  loc_60201C: ILdI4 arg_C
  loc_60201F: FLdRfVar var_8C
  loc_602022: CStr2Ansi
  loc_602023: ILdRf var_8C
  loc_602026: ImpAdCallI2 WritePrivateProfileString(, , , )
  loc_60202B: FStR4 var_9C
  loc_60202E: SetLastSystemError
  loc_60202F: ILdRf var_8C
  loc_602032: ILdRf arg_C
  loc_602035: CStr2Uni
  loc_602037: ILdRf var_90
  loc_60203A: ILdRf arg_18
  loc_60203D: CStr2Uni
  loc_60203F: ILdRf var_9C
  loc_602042: CI2I4
  loc_602043: FStI2 var_86
  loc_602046: FFreeStr var_8C = ""
  loc_60204D: FFreeAd var_A0 = ""
  loc_602054: ExitProcI2
End Function

Private Function Proc_87_21_61B33C(arg_C) '61B33C
  'Data Table: 409184
  loc_61B224: LitI2_Byte 1
  loc_61B226: FLdRfVar var_86
  loc_61B229: ILdI4 arg_C
  loc_61B22C: FnLenStr
  loc_61B22D: CI2I4
  loc_61B22E: ForI2 var_90
  loc_61B234: ILdRf var_8C
  loc_61B237: CVarStr var_F4
  loc_61B23A: LitVarI2 var_C0, 1
  loc_61B23F: FLdI2 var_86
  loc_61B242: CI4UI1
  loc_61B243: ILdRf arg_C
  loc_61B246: CVarRef
  loc_61B24B: FLdRfVar var_D0
  loc_61B24E: ImpAdCallFPR4  = Mid(, , )
  loc_61B253: FLdRfVar var_D0
  loc_61B256: CStrVarVal var_D4
  loc_61B25A: ImpAdCallI2 Asc()
  loc_61B25F: LitI2_Byte 5
  loc_61B261: AddI2
  loc_61B262: CI4UI1
  loc_61B263: FLdRfVar var_E4
  loc_61B266: ImpAdCallFPR4  = Chr()
  loc_61B26B: FLdRfVar var_E4
  loc_61B26E: ConcatVar var_104
  loc_61B272: CStrVarTmp
  loc_61B273: FStStr var_8C
  loc_61B276: FFree1Str var_D4
  loc_61B279: FFreeVar var_C0 = "": var_D0 = "": var_E4 = ""
  loc_61B284: FLdRfVar var_86
  loc_61B287: NextI2 var_90, loc_61B234
  loc_61B28C: LitStr "E"
  loc_61B28F: ImpAdCallI2 Asc()
  loc_61B294: LitI2_Byte 4
  loc_61B296: AddI2
  loc_61B297: CI4UI1
  loc_61B298: FLdRfVar var_C0
  loc_61B29B: ImpAdCallFPR4  = Chr()
  loc_61B2A0: FLdRfVar var_C0
  loc_61B2A3: LitStr "L"
  loc_61B2A6: ImpAdCallI2 Asc()
  loc_61B2AB: LitI2_Byte 4
  loc_61B2AD: AddI2
  loc_61B2AE: CI4UI1
  loc_61B2AF: FLdRfVar var_D0
  loc_61B2B2: ImpAdCallFPR4  = Chr()
  loc_61B2B7: FLdRfVar var_D0
  loc_61B2BA: AddVar var_E4
  loc_61B2BE: LitStr "P"
  loc_61B2C1: ImpAdCallI2 Asc()
  loc_61B2C6: LitI2_Byte 4
  loc_61B2C8: AddI2
  loc_61B2C9: CI4UI1
  loc_61B2CA: FLdRfVar var_104
  loc_61B2CD: ImpAdCallFPR4  = Chr()
  loc_61B2D2: FLdRfVar var_104
  loc_61B2D5: AddVar var_114
  loc_61B2D9: LitStr "E"
  loc_61B2DC: ImpAdCallI2 Asc()
  loc_61B2E1: LitI2_Byte 4
  loc_61B2E3: AddI2
  loc_61B2E4: CI4UI1
  loc_61B2E5: FLdRfVar var_124
  loc_61B2E8: ImpAdCallFPR4  = Chr()
  loc_61B2ED: FLdRfVar var_124
  loc_61B2F0: AddVar var_134
  loc_61B2F4: LitStr "Z"
  loc_61B2F7: ImpAdCallI2 Asc()
  loc_61B2FC: LitI2_Byte 4
  loc_61B2FE: AddI2
  loc_61B2FF: CI4UI1
  loc_61B300: FLdRfVar var_144
  loc_61B303: ImpAdCallFPR4  = Chr()
  loc_61B308: FLdRfVar var_144
  loc_61B30B: AddVar var_154
  loc_61B30F: ILdRf var_8C
  loc_61B312: CVarStr var_A0
  loc_61B315: ConcatVar var_164
  loc_61B319: CStrVarTmp
  loc_61B31A: FStStr var_8C
  loc_61B31D: FFreeVar var_C0 = "": var_D0 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = ""
  loc_61B334: ILdRf var_8C
  loc_61B337: IStStrCopy arg_C
  loc_61B33B: ExitProc
End Function

Private Function Proc_87_22_5DF6D8() '5DF6D8
  'Data Table: 409184
  loc_5DF690: LitVarStr var_94, "WINDIR"
  loc_5DF695: FStVarCopyObj var_A4
  loc_5DF698: FLdRfVar var_A4
  loc_5DF69B: FLdRfVar var_B4
  loc_5DF69E: ImpAdCallFPR4  = Environ()
  loc_5DF6A3: FLdRfVar var_B4
  loc_5DF6A6: LitVarStr var_C4, "\aplicationstemp"
  loc_5DF6AB: ConcatVar var_D4
  loc_5DF6AF: CStrVarTmp
  loc_5DF6B0: FStStrNoPop var_E8
  loc_5DF6B3: LitI2_Byte 1
  loc_5DF6B5: LitI2_Byte &HFF
  loc_5DF6B7: OpenFile
  loc_5DF6BB: FFree1Str var_E8
  loc_5DF6BE: FFreeVar var_A4 = "": var_B4 = ""
  loc_5DF6C7: LitStr " "
  loc_5DF6CA: LitI2_Byte 1
  loc_5DF6CC: PrintFile
  loc_5DF6D2: LitI2_Byte 1
  loc_5DF6D4: Close
  loc_5DF6D6: ExitProc
End Function

Private Function Proc_87_23_619080() '619080
  'Data Table: 409184
  loc_618F5C: OnErrorGoto loc_619012
  loc_618F61: LitVarStr var_98, "WINDIR"
  loc_618F66: FStVarCopyObj var_A8
  loc_618F69: FLdRfVar var_A8
  loc_618F6C: FLdRfVar var_B8
  loc_618F6F: ImpAdCallFPR4  = Environ()
  loc_618F74: FLdRfVar var_B8
  loc_618F77: LitVarStr var_C8, "\aplications.ini"
  loc_618F7C: ConcatVar var_D8
  loc_618F80: CStrVarTmp
  loc_618F81: FStStrNoPop var_EC
  loc_618F84: LitI2_Byte 1
  loc_618F86: LitI2_Byte &HFF
  loc_618F88: OpenFile
  loc_618F8C: FFree1Str var_EC
  loc_618F8F: FFreeVar var_A8 = "": var_B8 = ""
  loc_618F9A: LitVarStr var_98, "WINDIR"
  loc_618F9F: FStVarCopyObj var_A8
  loc_618FA2: FLdRfVar var_A8
  loc_618FA5: FLdRfVar var_B8
  loc_618FA8: ImpAdCallFPR4  = Environ()
  loc_618FAD: FLdRfVar var_B8
  loc_618FB0: LitVarStr var_C8, "\aplicationstemp"
  loc_618FB5: ConcatVar var_D8
  loc_618FB9: CStrVarTmp
  loc_618FBA: FStStrNoPop var_EC
  loc_618FBD: LitI2_Byte 2
  loc_618FBF: LitI2_Byte &HFF
  loc_618FC1: OpenFile
  loc_618FC5: FFree1Str var_EC
  loc_618FC8: FFreeVar var_A8 = "": var_B8 = ""
  loc_618FD3: LitI2_Byte 1
  loc_618FD5: ImpAdCallI2 push EOF()
  loc_618FDA: NotI4
  loc_618FDB: BranchF loc_619003
  loc_618FE0: LitI2_Byte 1
  loc_618FE2: FLdRfVar var_88
  loc_618FE5: LineInputStr
  loc_618FE9: FLdRfVar var_88
  loc_618FEC: ImpAdCallFPR4 Proc_94_0_5E9340()
  loc_618FF3: ILdRf var_88
  loc_618FF6: LitI2_Byte 2
  loc_618FF8: PrintFile
  loc_619000: Branch loc_618FD1
  loc_619005: LitI2_Byte 1
  loc_619007: Close
  loc_61900B: LitI2_Byte 2
  loc_61900D: Close
  loc_619011: ExitProc
  loc_619014: FLdRfVar var_F4
  loc_619017: ImpAdCallI2 Err 'rtcErrObj
  loc_61901C: FStAdFunc var_F0
  loc_61901F: FLdPr var_F0
  loc_619022:  = Err.Number
  loc_619027: ILdRf var_F4
  loc_61902A: LitI4 &H35
  loc_61902F: EqI4
  loc_619030: FFree1Ad var_F0
  loc_619033: BranchF loc_61907B
  loc_619038: LitVarStr var_98, "WINDIR"
  loc_61903D: FStVarCopyObj var_A8
  loc_619040: FLdRfVar var_A8
  loc_619043: FLdRfVar var_B8
  loc_619046: ImpAdCallFPR4  = Environ()
  loc_61904B: FLdRfVar var_B8
  loc_61904E: LitVarStr var_C8, "\aplications.ini"
  loc_619053: ConcatVar var_D8
  loc_619057: CStrVarTmp
  loc_619058: FStStrNoPop var_EC
  loc_61905B: LitI2_Byte 1
  loc_61905D: LitI2_Byte &HFF
  loc_61905F: OpenFile
  loc_619063: FFree1Str var_EC
  loc_619066: FFreeVar var_A8 = "": var_B8 = ""
  loc_619071: LitI2_Byte 1
  loc_619073: Close
  loc_619077: Resume
  loc_61907F: ExitProc
End Function

Private Function Proc_87_24_61B1C0(arg_C, arg_10, arg_14, arg_18) '61B1C0
  'Data Table: 43B664
  loc_61B0AC: OnErrorGoto loc_61B162
  loc_61B0AF: LitVarI2 var_BC, 1
  loc_61B0B4: FStVar var_98
  loc_61B0B8: LitVarI2 var_DC, 1
  loc_61B0BD: FLdRfVar var_A8
  loc_61B0C0: ILdI2 arg_18
  loc_61B0C3: CVarI2 var_CC
  loc_61B0C6: ForVar var_FC
  loc_61B0CC: LitVarI2 var_10C, 1
  loc_61B0D1: FLdRfVar var_A8
  loc_61B0D4: CI4Var
  loc_61B0D6: ILdRf arg_14
  loc_61B0D9: CVarRef
  loc_61B0DE: FLdRfVar var_11C
  loc_61B0E1: ImpAdCallFPR4  = Mid(, , )
  loc_61B0E6: FLdRfVar var_11C
  loc_61B0E9: CStrVarVal var_120
  loc_61B0ED: ImpAdCallI2 Asc()
  loc_61B0F2: FStI2 var_AA
  loc_61B0F5: FFree1Str var_120
  loc_61B0F8: FFreeVar var_10C = ""
  loc_61B0FF: FLdRfVar var_AA
  loc_61B102: CVarRef
  loc_61B107: FLdRfVar var_98
  loc_61B10A: CI4Var
  loc_61B10C: ILdRf arg_C
  loc_61B10F: CVarRef
  loc_61B114: FLdRfVar var_10C
  loc_61B117: ImpAdCallFPR4  = Mid(, , )
  loc_61B11C: FLdRfVar var_10C
  loc_61B11F: FnCStrVar
  loc_61B121: FStStrNoPop var_120
  loc_61B124: FLdRfVar var_A8
  loc_61B127: CI4Var
  loc_61B129: ILdI4 arg_10
  loc_61B12C: Ary1StStrCopy
  loc_61B12D: FFree1Str var_120
  loc_61B130: FFreeVar var_10C = ""
  loc_61B137: FLdRfVar var_98
  loc_61B13A: FLdI2 var_AA
  loc_61B13D: CVarI2 var_BC
  loc_61B140: AddVar var_10C
  loc_61B144: FStVar var_98
  loc_61B148: FLdRfVar var_A8
  loc_61B14B: NextStepVar var_FC
  loc_61B151: FLdRfVar var_98
  loc_61B154: LitVarI2 var_BC, 1
  loc_61B159: SubVar var_10C
  loc_61B15D: CI2Var
  loc_61B15E: FStI2 var_86
  loc_61B161: ExitProcI2
  loc_61B162: LitI4 &HD
  loc_61B167: FLdRfVar var_10C
  loc_61B16A: ImpAdCallFPR4  = Chr()
  loc_61B16F: FLdRfVar var_120
  loc_61B172: ImpAdCallI2 Err 'rtcErrObj
  loc_61B177: FStAdFunc var_124
  loc_61B17A: FLdPr var_124
  loc_61B17D:  = Err.Description
  loc_61B182: LitVar_Missing var_184
  loc_61B185: LitVar_Missing var_164
  loc_61B188: LitVar_Missing var_154
  loc_61B18B: LitI4 &H40
  loc_61B190: LitVarStr var_BC, "Error en la funcion ErrorGuardarEnArray"
  loc_61B195: FLdRfVar var_10C
  loc_61B198: ConcatVar var_11C
  loc_61B19C: FLdZeroAd var_120
  loc_61B19F: CVarStr var_134
  loc_61B1A2: ConcatVar var_144
  loc_61B1A6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61B1AB: FFree1Ad var_124
  loc_61B1AE: FFreeVar var_10C = "": var_11C = "": var_134 = "": var_144 = "": var_154 = "": var_164 = ""
  loc_61B1BF: ExitProcI2
End Function

Private Function Proc_87_25_5EBDCC(arg_C, arg_10) '5EBDCC
  'Data Table: 409184
  loc_5EBD50: ILdRf arg_10
  loc_5EBD53: CVarRef
  loc_5EBD58: LitI4 1
  loc_5EBD5D: ILdRf arg_C
  loc_5EBD60: CVarRef
  loc_5EBD65: FLdRfVar var_C0
  loc_5EBD68: ImpAdCallFPR4  = Mid(, , )
  loc_5EBD6D: FLdRfVar var_C0
  loc_5EBD70: CStrVarTmp
  loc_5EBD71: FStStr var_8C
  loc_5EBD74: FFree1Var var_C0 = ""
  loc_5EBD77: ILdI4 arg_C
  loc_5EBD7A: FnLenStr
  loc_5EBD7B: CVarI4
  loc_5EBD7F: ILdI2 arg_10
  loc_5EBD82: LitI2_Byte 1
  loc_5EBD84: AddI2
  loc_5EBD85: CI4UI1
  loc_5EBD86: ILdRf arg_C
  loc_5EBD89: CVarRef
  loc_5EBD8E: FLdRfVar var_D0
  loc_5EBD91: ImpAdCallFPR4  = Mid(, , )
  loc_5EBD96: FLdRfVar var_D0
  loc_5EBD99: CStrVarTmp
  loc_5EBD9A: FStStr var_90
  loc_5EBD9D: FFreeVar var_C0 = ""
  loc_5EBDA4: ILdRf var_90
  loc_5EBDA7: LitStr vbNullString
  loc_5EBDAA: EqStr
  loc_5EBDAC: BranchF loc_5EBDB5
  loc_5EBDAF: LitStr "000"
  loc_5EBDB2: FStStrCopy var_90
  loc_5EBDB5: ILdRf var_8C
  loc_5EBDB8: LitStr "."
  loc_5EBDBB: ConcatStr
  loc_5EBDBC: FStStrNoPop var_D4
  loc_5EBDBF: ILdRf var_90
  loc_5EBDC2: ConcatStr
  loc_5EBDC3: FStStr var_88
  loc_5EBDC6: FFree1Str var_D4
  loc_5EBDC9: ExitProc
End Function

Private Function Proc_87_26_6253BC(arg_C) '6253BC
  'Data Table: 409184
  loc_62524C: LitVarI2 var_C4, 1
  loc_625251: LitI4 1
  loc_625256: ILdRf arg_C
  loc_625259: CVarRef
  loc_62525E: FLdRfVar var_D4
  loc_625261: ImpAdCallFPR4  = Mid(, , )
  loc_625266: FLdRfVar var_D4
  loc_625269: LitVarStr var_E4, "-"
  loc_62526E: HardType
  loc_62526F: EqVarBool
  loc_625271: FFreeVar var_C4 = ""
  loc_625278: BranchF loc_6252AA
  loc_62527B: LitVar_Missing var_C4
  loc_62527E: LitI4 2
  loc_625283: ILdRf arg_C
  loc_625286: CVarRef
  loc_62528B: FLdRfVar var_D4
  loc_62528E: ImpAdCallFPR4  = Mid(, , )
  loc_625293: FLdRfVar var_D4
  loc_625296: CStrVarTmp
  loc_625297: IStStr
  loc_62529B: FFreeVar var_C4 = ""
  loc_6252A2: LitI2_Byte &HFF
  loc_6252A4: FStI2 var_92
  loc_6252A7: Branch loc_6252AF
  loc_6252AA: LitI2_Byte 0
  loc_6252AC: FStI2 var_92
  loc_6252AF: LitI2_Byte 1
  loc_6252B1: FLdRfVar var_8A
  loc_6252B4: ILdI4 arg_C
  loc_6252B7: FnLenStr
  loc_6252B8: CI2I4
  loc_6252B9: ForI2 var_F8
  loc_6252BF: LitVarI2 var_C4, 1
  loc_6252C4: FLdI2 var_8A
  loc_6252C7: CI4UI1
  loc_6252C8: ILdRf arg_C
  loc_6252CB: CVarRef
  loc_6252D0: FLdRfVar var_D4
  loc_6252D3: ImpAdCallFPR4  = Mid(, , )
  loc_6252D8: FLdRfVar var_D4
  loc_6252DB: LitVarStr var_E4, "0"
  loc_6252E0: HardType
  loc_6252E1: EqVar var_F4
  loc_6252E5: NotVar var_108
  loc_6252E9: CBoolVarNull
  loc_6252EB: FFreeVar var_C4 = ""
  loc_6252F2: BranchF loc_625320
  loc_6252F5: LitVar_Missing var_C4
  loc_6252F8: FLdI2 var_8A
  loc_6252FB: CI4UI1
  loc_6252FC: ILdRf arg_C
  loc_6252FF: CVarRef
  loc_625304: FLdRfVar var_D4
  loc_625307: ImpAdCallFPR4  = Mid(, , )
  loc_62530C: FLdRfVar var_D4
  loc_62530F: CStrVarTmp
  loc_625310: FStStr var_90
  loc_625313: FFreeVar var_C4 = ""
  loc_62531A: Branch loc_625350
  loc_62531D: Branch loc_625348
  loc_625320: LitVar_Missing var_C4
  loc_625323: FLdI2 var_8A
  loc_625326: LitI2_Byte 1
  loc_625328: AddI2
  loc_625329: CI4UI1
  loc_62532A: ILdRf arg_C
  loc_62532D: CVarRef
  loc_625332: FLdRfVar var_D4
  loc_625335: ImpAdCallFPR4  = Mid(, , )
  loc_62533A: FLdRfVar var_D4
  loc_62533D: CStrVarTmp
  loc_62533E: FStStr var_90
  loc_625341: FFreeVar var_C4 = ""
  loc_625348: FLdRfVar var_8A
  loc_62534B: NextI2 var_F8, loc_6252BF
  loc_625350: LitVarI2 var_C4, 1
  loc_625355: LitI4 1
  loc_62535A: FLdRfVar var_90
  loc_62535D: CVarRef
  loc_625362: FLdRfVar var_D4
  loc_625365: ImpAdCallFPR4  = Mid(, , )
  loc_62536A: FLdRfVar var_D4
  loc_62536D: LitVarStr var_E4, "."
  loc_625372: HardType
  loc_625373: EqVarBool
  loc_625375: FFreeVar var_C4 = ""
  loc_62537C: BranchF loc_625389
  loc_62537F: LitStr "0"
  loc_625382: ILdRf var_90
  loc_625385: ConcatStr
  loc_625386: FStStr var_90
  loc_625389: FLdRfVar var_90
  loc_62538C: CVarRef
  loc_625391: LitStr "-"
  loc_625394: ILdRf var_90
  loc_625397: ConcatStr
  loc_625398: CVarStr var_C4
  loc_62539B: FLdRfVar var_92
  loc_62539E: CVarRef
  loc_6253A3: FLdRfVar var_D4
  loc_6253A6: ImpAdCallFPR4  = IIf(, , )
  loc_6253AB: FLdRfVar var_D4
  loc_6253AE: CStrVarTmp
  loc_6253AF: FStStr var_88
  loc_6253B2: FFreeVar var_C4 = ""
  loc_6253B9: ExitProc
End Function

Private Function Proc_87_27_638F78(arg_C) '638F78
  'Data Table: 409184
  loc_638D8C: LitI4 1
  loc_638D91: ILdI4 arg_C
  loc_638D94: LitStr "."
  loc_638D97: LitI4 0
  loc_638D9C: FnInStr4
  loc_638D9E: CI2I4
  loc_638D9F: FStI2 var_9A
  loc_638DA2: FLdI2 var_9A
  loc_638DA5: LitI2_Byte 0
  loc_638DA7: GtI2
  loc_638DA8: BranchF loc_638DFF
  loc_638DAB: FLdI2 var_9A
  loc_638DAE: LitI2_Byte 1
  loc_638DB0: SubI2
  loc_638DB1: CVarI2 var_D0
  loc_638DB4: LitI4 1
  loc_638DB9: ILdRf arg_C
  loc_638DBC: CVarRef
  loc_638DC1: FLdRfVar var_E0
  loc_638DC4: ImpAdCallFPR4  = Mid(, , )
  loc_638DC9: FLdRfVar var_E0
  loc_638DCC: CStrVarTmp
  loc_638DCD: FStStr var_8C
  loc_638DD0: FFreeVar var_D0 = ""
  loc_638DD7: LitVar_Missing var_D0
  loc_638DDA: FLdI2 var_9A
  loc_638DDD: CI4UI1
  loc_638DDE: ILdRf arg_C
  loc_638DE1: CVarRef
  loc_638DE6: FLdRfVar var_E0
  loc_638DE9: ImpAdCallFPR4  = Mid(, , )
  loc_638DEE: FLdRfVar var_E0
  loc_638DF1: CStrVarTmp
  loc_638DF2: FStStr var_98
  loc_638DF5: FFreeVar var_D0 = ""
  loc_638DFC: Branch loc_638E05
  loc_638DFF: ILdI4 arg_C
  loc_638E02: FStStrCopy var_8C
  loc_638E05: ILdRf var_8C
  loc_638E08: FnLenStr
  loc_638E09: CR8I4
  loc_638E0A: LitI2_Byte 3
  loc_638E0C: CR8I2
  loc_638E0D: DivR8
  loc_638E0E: CI2R8
  loc_638E0F: FStI2 var_9C
  loc_638E12: ILdRf var_8C
  loc_638E15: FnLenStr
  loc_638E16: LitI4 3
  loc_638E1B: ModI4
  loc_638E1C: LitI4 0
  loc_638E21: EqI4
  loc_638E22: BranchF loc_638E2E
  loc_638E25: FLdI2 var_9C
  loc_638E28: LitI2_Byte 1
  loc_638E2A: SubI2
  loc_638E2B: FStI2 var_9C
  loc_638E2E: LitI2_Byte 1
  loc_638E30: FStI2 var_9E
  loc_638E33: ILdRf var_8C
  loc_638E36: FnLenStr
  loc_638E37: CVarI4
  loc_638E3B: FLdRfVar var_F0
  loc_638E3E: LitVarI2 var_C0, 1
  loc_638E43: LitVarI2 var_B0, -1
  loc_638E48: ForStepVar var_120
  loc_638E4E: LitVarI2 var_D0, 1
  loc_638E53: FLdRfVar var_F0
  loc_638E56: CI4Var
  loc_638E58: FLdRfVar var_8C
  loc_638E5B: CVarRef
  loc_638E60: FLdRfVar var_E0
  loc_638E63: ImpAdCallFPR4  = Mid(, , )
  loc_638E68: FLdRfVar var_E0
  loc_638E6B: LitVarStr var_100, "-"
  loc_638E70: HardType
  loc_638E71: EqVar var_130
  loc_638E75: LitVarI2 var_160, 1
  loc_638E7A: FLdRfVar var_F0
  loc_638E7D: CI4Var
  loc_638E7F: FLdRfVar var_90
  loc_638E82: CVarRef
  loc_638E87: FLdRfVar var_170
  loc_638E8A: ImpAdCallFPR4  = Mid(, , )
  loc_638E8F: FLdRfVar var_170
  loc_638E92: LitVarStr var_180, ","
  loc_638E97: HardType
  loc_638E98: EqVar var_190
  loc_638E9C: AndVar var_1A0
  loc_638EA0: CBoolVarNull
  loc_638EA2: FFreeVar var_D0 = "": var_E0 = "": var_160 = ""
  loc_638EAD: BranchF loc_638F00
  loc_638EB0: LitVarI2 var_D0, 1
  loc_638EB5: FLdRfVar var_F0
  loc_638EB8: CI4Var
  loc_638EBA: FLdRfVar var_8C
  loc_638EBD: CVarRef
  loc_638EC2: FLdRfVar var_E0
  loc_638EC5: ImpAdCallFPR4  = Mid(, , )
  loc_638ECA: FLdRfVar var_E0
  loc_638ECD: LitVar_Missing var_130
  loc_638ED0: LitI4 2
  loc_638ED5: FLdRfVar var_90
  loc_638ED8: CVarRef
  loc_638EDD: FLdRfVar var_160
  loc_638EE0: ImpAdCallFPR4  = Mid(, , )
  loc_638EE5: FLdRfVar var_160
  loc_638EE8: ConcatVar var_170
  loc_638EEC: CStrVarTmp
  loc_638EED: FStStr var_90
  loc_638EF0: FFreeVar var_D0 = "": var_130 = "": var_E0 = "": var_160 = ""
  loc_638EFD: Branch loc_638F34
  loc_638F00: LitVarI2 var_D0, 1
  loc_638F05: FLdRfVar var_F0
  loc_638F08: CI4Var
  loc_638F0A: FLdRfVar var_8C
  loc_638F0D: CVarRef
  loc_638F12: FLdRfVar var_E0
  loc_638F15: ImpAdCallFPR4  = Mid(, , )
  loc_638F1A: FLdRfVar var_E0
  loc_638F1D: ILdRf var_90
  loc_638F20: CVarStr var_100
  loc_638F23: ConcatVar var_130
  loc_638F27: CStrVarTmp
  loc_638F28: FStStr var_90
  loc_638F2B: FFreeVar var_D0 = "": var_E0 = ""
  loc_638F34: FLdI2 var_9E
  loc_638F37: LitI2_Byte 3
  loc_638F39: ModI2
  loc_638F3A: LitI2_Byte 0
  loc_638F3C: EqI2
  loc_638F3D: FLdI2 var_9C
  loc_638F40: LitI2_Byte 0
  loc_638F42: GtI2
  loc_638F43: AndI4
  loc_638F44: BranchF loc_638F5A
  loc_638F47: LitStr ","
  loc_638F4A: ILdRf var_90
  loc_638F4D: ConcatStr
  loc_638F4E: FStStr var_90
  loc_638F51: FLdI2 var_9C
  loc_638F54: LitI2_Byte 1
  loc_638F56: SubI2
  loc_638F57: FStI2 var_9C
  loc_638F5A: FLdI2 var_9E
  loc_638F5D: LitI2_Byte 1
  loc_638F5F: AddI2
  loc_638F60: FStI2 var_9E
  loc_638F63: FLdRfVar var_F0
  loc_638F66: NextStepVar var_120
  loc_638F6C: ILdRf var_90
  loc_638F6F: ILdRf var_98
  loc_638F72: ConcatStr
  loc_638F73: FStStr var_88
  loc_638F76: ExitProc
End Function

Private Function Proc_87_28_5F3778(arg_C, arg_10, arg_14) '5F3778
  'Data Table: 43B664
  loc_5F36DC: ILdRf arg_10
  loc_5F36DF: CVarRef
  loc_5F36E4: LitI4 1
  loc_5F36E9: ILdRf arg_C
  loc_5F36EC: CVarRef
  loc_5F36F1: FLdRfVar var_C8
  loc_5F36F4: ImpAdCallFPR4  = Mid(, , )
  loc_5F36F9: FLdRfVar var_C8
  loc_5F36FC: CStrVarTmp
  loc_5F36FD: FStStr var_90
  loc_5F3700: FFree1Var var_C8 = ""
  loc_5F3703: ILdI4 arg_C
  loc_5F3706: FnLenStr
  loc_5F3707: CVarI4
  loc_5F370B: ILdI2 arg_10
  loc_5F370E: LitI2_Byte 1
  loc_5F3710: AddI2
  loc_5F3711: CI4UI1
  loc_5F3712: ILdRf arg_C
  loc_5F3715: CVarRef
  loc_5F371A: FLdRfVar var_D8
  loc_5F371D: ImpAdCallFPR4  = Mid(, , )
  loc_5F3722: FLdRfVar var_D8
  loc_5F3725: CStrVarTmp
  loc_5F3726: FStStr var_94
  loc_5F3729: FFreeVar var_C8 = ""
  loc_5F3730: ILdI2 arg_10
  loc_5F3733: LitI2_Byte 0
  loc_5F3735: NeI2
  loc_5F3736: BranchF loc_5F3759
  loc_5F3739: ILdRf var_90
  loc_5F373C: LitStr "."
  loc_5F373F: ConcatStr
  loc_5F3740: FStStrNoPop var_DC
  loc_5F3743: ILdRf var_94
  loc_5F3746: ConcatStr
  loc_5F3747: FStStrNoPop var_E0
  loc_5F374A: CR8Str
  loc_5F374C: FStFPR8 var_8C
  loc_5F374F: FFreeStr var_DC = ""
  loc_5F3756: Branch loc_5F3761
  loc_5F3759: ILdRf var_94
  loc_5F375C: CR8Str
  loc_5F375E: FStFPR8 var_8C
  loc_5F3761: ILdI4 arg_14
  loc_5F3764: LitStr "0"
  loc_5F3767: EqStr
  loc_5F3769: BranchF loc_5F3776
  loc_5F376C: FLdFPR8 var_8C
  loc_5F376F: LitI2_Byte &HFF
  loc_5F3771: CR8I2
  loc_5F3772: MulR8
  loc_5F3773: FStFPR8 var_8C
  loc_5F3776: ExitProcR8
End Function

Private Function Proc_87_29_6028E4(arg_C) '6028E4
  'Data Table: 43B664
  loc_60282C: ILdRf arg_C
  loc_60282F: CVarRef
  loc_602834: FLdRfVar var_A8
  loc_602837: ImpAdCallFPR4  = Trim()
  loc_60283C: FLdRfVar var_A8
  loc_60283F: LitVarStr var_B8, vbNullString
  loc_602844: HardType
  loc_602845: NeVarBool
  loc_602847: FFree1Var var_A8 = ""
  loc_60284A: BranchF loc_6028DC
  loc_60284D: LitVarI2 var_A8, 2
  loc_602852: LitI4 7
  loc_602857: ILdRf arg_C
  loc_60285A: CVarRef
  loc_60285F: FLdRfVar var_C8
  loc_602862: ImpAdCallFPR4  = Mid(, , )
  loc_602867: FLdRfVar var_C8
  loc_60286A: LitVarStr var_D8, "/"
  loc_60286F: ConcatVar var_E8
  loc_602873: LitVarI2 var_118, 2
  loc_602878: LitI4 5
  loc_60287D: ILdRf arg_C
  loc_602880: CVarRef
  loc_602885: FLdRfVar var_128
  loc_602888: ImpAdCallFPR4  = Mid(, , )
  loc_60288D: FLdRfVar var_128
  loc_602890: ConcatVar var_138
  loc_602894: LitVarStr var_148, "/"
  loc_602899: ConcatVar var_158
  loc_60289D: LitVarI2 var_188, 4
  loc_6028A2: LitI4 1
  loc_6028A7: ILdRf arg_C
  loc_6028AA: CVarRef
  loc_6028AF: FLdRfVar var_198
  loc_6028B2: ImpAdCallFPR4  = Mid(, , )
  loc_6028B7: FLdRfVar var_198
  loc_6028BA: ConcatVar var_1A8
  loc_6028BE: CStrVarTmp
  loc_6028BF: FStStr var_88
  loc_6028C2: FFreeVar var_A8 = "": var_C8 = "": var_118 = "": var_E8 = "": var_128 = "": var_138 = "": var_188 = "": var_158 = "": var_198 = ""
  loc_6028D9: Branch loc_6028E2
  loc_6028DC: LitStr " "
  loc_6028DF: FStStrCopy var_88
  loc_6028E2: ExitProc
End Function

Private Function Proc_87_30_602158(arg_C) '602158
  'Data Table: 43B664
  loc_6020A0: ILdRf arg_C
  loc_6020A3: CVarRef
  loc_6020A8: FLdRfVar var_A8
  loc_6020AB: ImpAdCallFPR4  = Trim()
  loc_6020B0: FLdRfVar var_A8
  loc_6020B3: LitVarStr var_B8, vbNullString
  loc_6020B8: HardType
  loc_6020B9: NeVarBool
  loc_6020BB: FFree1Var var_A8 = ""
  loc_6020BE: BranchF loc_602150
  loc_6020C1: LitVarI2 var_A8, 2
  loc_6020C6: LitI4 1
  loc_6020CB: ILdRf arg_C
  loc_6020CE: CVarRef
  loc_6020D3: FLdRfVar var_C8
  loc_6020D6: ImpAdCallFPR4  = Mid(, , )
  loc_6020DB: FLdRfVar var_C8
  loc_6020DE: LitVarStr var_D8, ":"
  loc_6020E3: ConcatVar var_E8
  loc_6020E7: LitVarI2 var_118, 2
  loc_6020EC: LitI4 3
  loc_6020F1: ILdRf arg_C
  loc_6020F4: CVarRef
  loc_6020F9: FLdRfVar var_128
  loc_6020FC: ImpAdCallFPR4  = Mid(, , )
  loc_602101: FLdRfVar var_128
  loc_602104: ConcatVar var_138
  loc_602108: LitVarStr var_148, ":"
  loc_60210D: ConcatVar var_158
  loc_602111: LitVarI2 var_188, 2
  loc_602116: LitI4 5
  loc_60211B: ILdRf arg_C
  loc_60211E: CVarRef
  loc_602123: FLdRfVar var_198
  loc_602126: ImpAdCallFPR4  = Mid(, , )
  loc_60212B: FLdRfVar var_198
  loc_60212E: ConcatVar var_1A8
  loc_602132: CStrVarTmp
  loc_602133: FStStr var_88
  loc_602136: FFreeVar var_A8 = "": var_C8 = "": var_118 = "": var_E8 = "": var_128 = "": var_138 = "": var_188 = "": var_158 = "": var_198 = ""
  loc_60214D: Branch loc_602156
  loc_602150: LitStr " "
  loc_602153: FStStrCopy var_88
  loc_602156: ExitProc
End Function
