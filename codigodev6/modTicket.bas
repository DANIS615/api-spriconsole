
Private Function Proc_101_0_5C9B30(arg_C) '5C9B30
  'Data Table: 4067BC
  loc_5C9B24: ILdI4 arg_C
  loc_5C9B27: FMemStStrCopy
  loc_5C9B2C: ExitProc
End Function

Private Function Proc_101_1_5D2D14(arg_C) '5D2D14
  'Data Table: 4067BC
  loc_5D2CFC: ILdI4 arg_C
  loc_5D2CFF: CStrI4
  loc_5D2D01: FStStrNoPop var_88
  loc_5D2D04: ImpAdCallFPR4 push Val()
  loc_5D2D09: CI4R8
  loc_5D2D0A: FMemStI4 arg_8(28)
  loc_5D2D0F: FFree1Str var_88
  loc_5D2D12: ExitProc
End Function

Private Function Proc_101_2_5D3D30(arg_C) '5D3D30
  'Data Table: 4067BC
  loc_5D3D14: FMemLdR4 arg_8(32)
  loc_5D3D19: ILdRf arg_C
  loc_5D3D1C: ImpAdCallI2 Proc_101_6_605CF0()
  loc_5D3D21: FStStrNoPop var_88
  loc_5D3D24: ConcatStr
  loc_5D3D25: FMemStStr arg_8(32)
  loc_5D3D2B: FFree1Str var_88
  loc_5D3D2E: ExitProc
End Function

Private Function Proc_101_3_662098(arg_C) '662098
  'Data Table: 4067BC
  loc_661D40: LitI2_Byte 1
  loc_661D42: CUI1I2
  loc_661D44: FLdRfVar var_86
  loc_661D47: LitI2_Byte &H14
  loc_661D49: CUI1I2
  loc_661D4B: ForUI1 var_8A
  loc_661D51: LitI2_Byte 0
  loc_661D53: CUI1I2
  loc_661D55: FLdUI1
  loc_661D59: CI4UI1
  loc_661D5A: FMemLdRf unk_4067C5
  loc_661D5F: Ary1StUI1
  loc_661D61: FLdRfVar var_86
  loc_661D64: NextUI1
  loc_661D6A: LitI2_Byte 1
  loc_661D6C: CUI1I2
  loc_661D6E: FLdRfVar var_86
  loc_661D71: LitI2_Byte &H14
  loc_661D73: CUI1I2
  loc_661D75: ForUI1 var_8E
  loc_661D7B: LitI4 1
  loc_661D80: ILdI4 arg_C
  loc_661D83: LitStr "<"
  loc_661D86: FLdUI1
  loc_661D8A: CStrI2
  loc_661D8C: FStStrNoPop var_94
  loc_661D8F: ConcatStr
  loc_661D90: FStStrNoPop var_98
  loc_661D93: LitStr ">"
  loc_661D96: ConcatStr
  loc_661D97: FStStrNoPop var_9C
  loc_661D9A: LitI4 0
  loc_661D9F: FnInStr4
  loc_661DA1: LitI4 0
  loc_661DA6: GtI4
  loc_661DA7: FFreeStr var_94 = "": var_98 = ""
  loc_661DB0: BranchF loc_662070
  loc_661DB3: LitStr "<"
  loc_661DB6: FLdUI1
  loc_661DBA: CStrI2
  loc_661DBC: FStStrNoPop var_A0
  loc_661DBF: ConcatStr
  loc_661DC0: FStStrNoPop var_A4
  loc_661DC3: LitStr ">"
  loc_661DC6: ConcatStr
  loc_661DC7: FStStrNoPop var_A8
  loc_661DCA: FnLenStr
  loc_661DCB: CVarI4
  loc_661DCF: LitI4 1
  loc_661DD4: ILdI4 arg_C
  loc_661DD7: LitStr "<"
  loc_661DDA: FLdUI1
  loc_661DDE: CStrI2
  loc_661DE0: FStStrNoPop var_94
  loc_661DE3: ConcatStr
  loc_661DE4: FStStrNoPop var_98
  loc_661DE7: LitStr ">"
  loc_661DEA: ConcatStr
  loc_661DEB: FStStrNoPop var_9C
  loc_661DEE: LitI4 0
  loc_661DF3: FnInStr4
  loc_661DF5: ILdRf arg_C
  loc_661DF8: CVarRef
  loc_661DFD: FLdRfVar var_E8
  loc_661E00: ImpAdCallFPR4  = Mid(, , )
  loc_661E05: FLdRfVar var_E8
  loc_661E08: FStVar var_F8
  loc_661E0C: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_661E1B: FFree1Var var_D8 = ""
  loc_661E1E: FLdRfVar var_F8
  loc_661E21: LitVarStr var_B8, "<1>"
  loc_661E26: HardType
  loc_661E27: EqVarBool
  loc_661E29: BranchF loc_661E3F
  loc_661E2C: LitI2_Byte 1
  loc_661E2E: CUI1I2
  loc_661E30: LitI4 1
  loc_661E35: FMemLdRf unk_4067C5
  loc_661E3A: Ary1StUI1
  loc_661E3C: Branch loc_66206D
  loc_661E3F: FLdRfVar var_F8
  loc_661E42: LitVarStr var_B8, "<2>"
  loc_661E47: HardType
  loc_661E48: EqVarBool
  loc_661E4A: BranchF loc_661E60
  loc_661E4D: LitI2_Byte 1
  loc_661E4F: CUI1I2
  loc_661E51: LitI4 2
  loc_661E56: FMemLdRf unk_4067C5
  loc_661E5B: Ary1StUI1
  loc_661E5D: Branch loc_66206D
  loc_661E60: FLdRfVar var_F8
  loc_661E63: LitVarStr var_B8, "<3>"
  loc_661E68: HardType
  loc_661E69: EqVarBool
  loc_661E6B: BranchF loc_661E81
  loc_661E6E: LitI2_Byte 1
  loc_661E70: CUI1I2
  loc_661E72: LitI4 3
  loc_661E77: FMemLdRf unk_4067C5
  loc_661E7C: Ary1StUI1
  loc_661E7E: Branch loc_66206D
  loc_661E81: FLdRfVar var_F8
  loc_661E84: LitVarStr var_B8, "<4>"
  loc_661E89: HardType
  loc_661E8A: EqVarBool
  loc_661E8C: BranchF loc_661EA2
  loc_661E8F: LitI2_Byte 1
  loc_661E91: CUI1I2
  loc_661E93: LitI4 4
  loc_661E98: FMemLdRf unk_4067C5
  loc_661E9D: Ary1StUI1
  loc_661E9F: Branch loc_66206D
  loc_661EA2: FLdRfVar var_F8
  loc_661EA5: LitVarStr var_B8, "<5>"
  loc_661EAA: HardType
  loc_661EAB: EqVarBool
  loc_661EAD: BranchF loc_661EC3
  loc_661EB0: LitI2_Byte 1
  loc_661EB2: CUI1I2
  loc_661EB4: LitI4 5
  loc_661EB9: FMemLdRf unk_4067C5
  loc_661EBE: Ary1StUI1
  loc_661EC0: Branch loc_66206D
  loc_661EC3: FLdRfVar var_F8
  loc_661EC6: LitVarStr var_B8, "<6>"
  loc_661ECB: HardType
  loc_661ECC: EqVarBool
  loc_661ECE: BranchF loc_661EE4
  loc_661ED1: LitI2_Byte 1
  loc_661ED3: CUI1I2
  loc_661ED5: LitI4 6
  loc_661EDA: FMemLdRf unk_4067C5
  loc_661EDF: Ary1StUI1
  loc_661EE1: Branch loc_66206D
  loc_661EE4: FLdRfVar var_F8
  loc_661EE7: LitVarStr var_B8, "<7>"
  loc_661EEC: HardType
  loc_661EED: EqVarBool
  loc_661EEF: BranchF loc_661F05
  loc_661EF2: LitI2_Byte 1
  loc_661EF4: CUI1I2
  loc_661EF6: LitI4 &H13
  loc_661EFB: FMemLdRf unk_4067C5
  loc_661F00: Ary1StUI1
  loc_661F02: Branch loc_66206D
  loc_661F05: FLdRfVar var_F8
  loc_661F08: LitVarStr var_B8, "<8>"
  loc_661F0D: HardType
  loc_661F0E: EqVarBool
  loc_661F10: BranchF loc_661F26
  loc_661F13: LitI2_Byte 1
  loc_661F15: CUI1I2
  loc_661F17: LitI4 7
  loc_661F1C: FMemLdRf unk_4067C5
  loc_661F21: Ary1StUI1
  loc_661F23: Branch loc_66206D
  loc_661F26: FLdRfVar var_F8
  loc_661F29: LitVarStr var_B8, "<9>"
  loc_661F2E: HardType
  loc_661F2F: EqVarBool
  loc_661F31: BranchF loc_661F47
  loc_661F34: LitI2_Byte 1
  loc_661F36: CUI1I2
  loc_661F38: LitI4 8
  loc_661F3D: FMemLdRf unk_4067C5
  loc_661F42: Ary1StUI1
  loc_661F44: Branch loc_66206D
  loc_661F47: FLdRfVar var_F8
  loc_661F4A: LitVarStr var_B8, "<10>"
  loc_661F4F: HardType
  loc_661F50: EqVarBool
  loc_661F52: BranchF loc_661F68
  loc_661F55: LitI2_Byte 1
  loc_661F57: CUI1I2
  loc_661F59: LitI4 9
  loc_661F5E: FMemLdRf unk_4067C5
  loc_661F63: Ary1StUI1
  loc_661F65: Branch loc_66206D
  loc_661F68: FLdRfVar var_F8
  loc_661F6B: LitVarStr var_B8, "<11>"
  loc_661F70: HardType
  loc_661F71: EqVarBool
  loc_661F73: BranchF loc_661F89
  loc_661F76: LitI2_Byte 1
  loc_661F78: CUI1I2
  loc_661F7A: LitI4 &H14
  loc_661F7F: FMemLdRf unk_4067C5
  loc_661F84: Ary1StUI1
  loc_661F86: Branch loc_66206D
  loc_661F89: FLdRfVar var_F8
  loc_661F8C: LitVarStr var_B8, "<12>"
  loc_661F91: HardType
  loc_661F92: EqVarBool
  loc_661F94: BranchF loc_661FAA
  loc_661F97: LitI2_Byte 1
  loc_661F99: CUI1I2
  loc_661F9B: LitI4 &HA
  loc_661FA0: FMemLdRf unk_4067C5
  loc_661FA5: Ary1StUI1
  loc_661FA7: Branch loc_66206D
  loc_661FAA: FLdRfVar var_F8
  loc_661FAD: LitVarStr var_B8, "<13>"
  loc_661FB2: HardType
  loc_661FB3: EqVarBool
  loc_661FB5: BranchF loc_661FCB
  loc_661FB8: LitI2_Byte 1
  loc_661FBA: CUI1I2
  loc_661FBC: LitI4 &H10
  loc_661FC1: FMemLdRf unk_4067C5
  loc_661FC6: Ary1StUI1
  loc_661FC8: Branch loc_66206D
  loc_661FCB: FLdRfVar var_F8
  loc_661FCE: LitVarStr var_B8, "<14>"
  loc_661FD3: HardType
  loc_661FD4: EqVarBool
  loc_661FD6: BranchF loc_661FEC
  loc_661FD9: LitI2_Byte 1
  loc_661FDB: CUI1I2
  loc_661FDD: LitI4 &H11
  loc_661FE2: FMemLdRf unk_4067C5
  loc_661FE7: Ary1StUI1
  loc_661FE9: Branch loc_66206D
  loc_661FEC: FLdRfVar var_F8
  loc_661FEF: LitVarStr var_B8, "<15>"
  loc_661FF4: HardType
  loc_661FF5: EqVarBool
  loc_661FF7: BranchF loc_66200D
  loc_661FFA: LitI2_Byte 1
  loc_661FFC: CUI1I2
  loc_661FFE: LitI4 &HB
  loc_662003: FMemLdRf unk_4067C5
  loc_662008: Ary1StUI1
  loc_66200A: Branch loc_66206D
  loc_66200D: FLdRfVar var_F8
  loc_662010: LitVarStr var_B8, "<16>"
  loc_662015: HardType
  loc_662016: EqVarBool
  loc_662018: BranchF loc_66202E
  loc_66201B: LitI2_Byte 1
  loc_66201D: CUI1I2
  loc_66201F: LitI4 &HC
  loc_662024: FMemLdRf unk_4067C5
  loc_662029: Ary1StUI1
  loc_66202B: Branch loc_66206D
  loc_66202E: FLdRfVar var_F8
  loc_662031: LitVarStr var_B8, "<20>"
  loc_662036: HardType
  loc_662037: EqVarBool
  loc_662039: BranchF loc_66204F
  loc_66203C: LitI2_Byte 1
  loc_66203E: CUI1I2
  loc_662040: LitI4 &HD
  loc_662045: FMemLdRf unk_4067C5
  loc_66204A: Ary1StUI1
  loc_66204C: Branch loc_66206D
  loc_66204F: FLdRfVar var_F8
  loc_662052: LitVarStr var_B8, "<17>"
  loc_662057: HardType
  loc_662058: EqVarBool
  loc_66205A: BranchF loc_66206D
  loc_66205D: LitI2_Byte 1
  loc_66205F: CUI1I2
  loc_662061: LitI4 &H12
  loc_662066: FMemLdRf unk_4067C5
  loc_66206B: Ary1StUI1
  loc_66206D: Branch loc_66208B
  loc_662070: ILdI4 arg_C
  loc_662073: LitStr vbNullString
  loc_662076: EqStr
  loc_662078: BranchF loc_66208B
  loc_66207B: LitI2_Byte 1
  loc_66207D: CUI1I2
  loc_66207F: FLdUI1
  loc_662083: CI4UI1
  loc_662084: FMemLdRf unk_4067C5
  loc_662089: Ary1StUI1
  loc_66208B: FLdRfVar var_86
  loc_66208E: NextUI1
  loc_662094: ExitProc
  loc_662095: CStrUI1
End Function

Private Function Proc_101_4_627688(arg_10) '627688
  'Data Table: 4067BC
  loc_627510: FLdRfVar var_9E
  loc_627513: FLdRfVar var_9C
  loc_627516: ImpAdLdRf MemVar_74C760
  loc_627519: NewIfNullPr Formx
  loc_62751C: VCallAd Control_ID_Data1
  loc_62751F: FStAdFunc var_98
  loc_627522: FLdPr var_98
  loc_627525:  = Formx.Data.Recordset
  loc_62752A: FLdPr var_9C
  loc_62752D:  = Me.BOF
  loc_627532: FLdI2 var_9E
  loc_627535: LitI2_Byte 0
  loc_627537: EqI2
  loc_627538: FFreeAd var_98 = ""
  loc_62753F: BranchF loc_62756B
  loc_627542: FLdRfVar var_9C
  loc_627545: ImpAdLdRf MemVar_74C760
  loc_627548: NewIfNullPr Formx
  loc_62754B: VCallAd Control_ID_Data1
  loc_62754E: FStAdFunc var_98
  loc_627551: FLdPr var_98
  loc_627554:  = Formx.Data.Recordset
  loc_627559: FLdPr var_9C
  loc_62755C: Me.Edit
  loc_627561: FFreeAd var_98 = ""
  loc_627568: Branch loc_627591
  loc_62756B: FLdRfVar var_9C
  loc_62756E: ImpAdLdRf MemVar_74C760
  loc_627571: NewIfNullPr Formx
  loc_627574: VCallAd Control_ID_Data1
  loc_627577: FStAdFunc var_98
  loc_62757A: FLdPr var_98
  loc_62757D:  = Formx.Data.Recordset
  loc_627582: FLdPr var_9C
  loc_627585: Me.AddNew
  loc_62758A: FFreeAd var_98 = ""
  loc_627591: LitStr "imagen"
  loc_627594: ImpAdLdRf MemVar_74C760
  loc_627597: NewIfNullPr Formx
  loc_62759A: VCallAd Control_ID_Image2
  loc_62759D: FStAdFunc var_98
  loc_6275A0: FLdPr var_98
  loc_6275A3: Formx.Image.DataField = from_stack_1
  loc_6275A8: FFree1Ad var_98
  loc_6275AB: FLdRfVar var_9C
  loc_6275AE: FLdRfVar var_A4
  loc_6275B1: FLdRfVar var_98
  loc_6275B4: ImpAdLdRf MemVar_7520D4
  loc_6275B7: NewIfNullPr Global
  loc_6275BA:  = Global.App
  loc_6275BF: FLdPr var_98
  loc_6275C2:  = App.Path
  loc_6275C7: ILdRf var_A4
  loc_6275CA: LitStr "\logo_compania.bmp"
  loc_6275CD: ConcatStr
  loc_6275CE: CVarStr var_B4
  loc_6275D1: PopAdLdVar
  loc_6275D2: ImpAdLdRf MemVar_7520D4
  loc_6275D5: NewIfNullPr Global
  loc_6275D8: Global.LoadPictureOld from_stack_1
  loc_6275DD: FLdZeroAd var_9C
  loc_6275E0: FStAdFuncNoPop
  loc_6275E3: ImpAdLdRf MemVar_74C760
  loc_6275E6: NewIfNullPr Formx
  loc_6275E9: VCallAd Control_ID_Image2
  loc_6275EC: FStAdFunc var_BC
  loc_6275EF: FLdPr var_BC
  loc_6275F2: Formx.Image.Picture = from_stack_1
  loc_6275F7: FFree1Str var_A4
  loc_6275FA: FFreeAd var_98 = "": var_B8 = ""
  loc_627603: FFree1Var var_B4 = ""
  loc_627606: ILdI2 arg_10
  loc_627609: CVarI2 var_DC
  loc_62760C: PopAdLdVar
  loc_62760D: FLdRfVar var_BC
  loc_627610: LitVarStr var_CC, "id"
  loc_627615: PopAdLdVar
  loc_627616: FLdRfVar var_B8
  loc_627619: FLdRfVar var_9C
  loc_62761C: ImpAdLdRf MemVar_74C760
  loc_62761F: NewIfNullPr Formx
  loc_627622: VCallAd Control_ID_Data1
  loc_627625: FStAdFunc var_98
  loc_627628: FLdPr var_98
  loc_62762B:  = Formx.Data.Recordset
  loc_627630: FLdPr var_9C
  loc_627633:  = Me.Fields
  loc_627638: FLdPr var_B8
  loc_62763B: from_stack_2 = Me.Item(from_stack_1)
  loc_627640: FLdPr var_BC
  loc_627643: Me.Value = from_stack_1
  loc_627648: FFreeAd var_98 = "": var_9C = "": var_B8 = ""
  loc_627653: LitI2_Byte 0
  loc_627655: LitI4 1
  loc_62765A: FLdRfVar var_9C
  loc_62765D: ImpAdLdRf MemVar_74C760
  loc_627660: NewIfNullPr Formx
  loc_627663: VCallAd Control_ID_Data1
  loc_627666: FStAdFunc var_98
  loc_627669: FLdPr var_98
  loc_62766C:  = Formx.Data.Recordset
  loc_627671: FLdPr var_9C
  loc_627674: Me.Update from_stack_1, from_stack_2b
  loc_627679: FFreeAd var_98 = ""
  loc_627680: ExitProcCb
  loc_627684: ExitProcCb
End Function

Private Function Proc_101_5_666330() '666330
  'Data Table: 4067BC
  loc_666040: OnErrorGoto loc_6662FB
  loc_666043: ImpAdCallI2 Proc_101_9_5CD870()
  loc_666048: FStStr var_C8
  loc_66604B: ImpAdCallI2 Proc_101_10_5CCE70()
  loc_666050: FStStr var_CC
  loc_666053: FLdRfVar var_C2
  loc_666056: FLdRfVar var_AC
  loc_666059: FLdZeroAd var_C8
  loc_66605C: FStStrNoPop var_B4
  loc_66605F: FLdZeroAd var_CC
  loc_666062: FStStrNoPop var_B8
  loc_666065: ConcatStr
  loc_666066: FStStrNoPop var_C0
  loc_666069: FLdRfVar var_BC
  loc_66606C: ImpAdLdRf MemVar_74C760
  loc_66606F: NewIfNullPr Formx
  loc_666072: from_stack_1v = Formx.global_4589716Get()
  loc_666077: FLdPr var_BC
  loc_66607A: Call 0.Method_arg_364 ()
  loc_66607F: FLdI2 var_C2
  loc_666082: NotI4
  loc_666083: FFreeStr var_B4 = "": var_B8 = "": var_C0 = "": var_C8 = ""
  loc_666090: FFree1Ad var_BC
  loc_666093: BranchF loc_6660AD
  loc_666096: FLdRfVar var_DC
  loc_666099: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66609E: FLdRfVar var_DC
  loc_6660A1: CBoolVarNull
  loc_6660A3: FFree1Var var_DC = ""
  loc_6660A6: BranchF loc_6660AA
  loc_6660A9: ExitProc
  loc_6660AA: Branch loc_666043
  loc_6660AD: FLdRfVar var_128
  loc_6660B0: LitVar_Missing var_124
  loc_6660B3: PopAdLdVar
  loc_6660B4: LitVar_Missing var_114
  loc_6660B7: PopAdLdVar
  loc_6660B8: LitVar_Missing var_104
  loc_6660BB: PopAdLdVar
  loc_6660BC: FLdRfVar var_B4
  loc_6660BF: FLdRfVar var_BC
  loc_6660C2: ImpAdLdRf MemVar_7520D4
  loc_6660C5: NewIfNullPr Global
  loc_6660C8:  = Global.App
  loc_6660CD: FLdPr var_BC
  loc_6660D0:  = App.Path
  loc_6660D5: ILdRf var_B4
  loc_6660D8: LitStr "\reporte.mdb"
  loc_6660DB: ConcatStr
  loc_6660DC: FStStrNoPop var_B8
  loc_6660DF: FLdRfVar var_F4
  loc_6660E2: LitVarI2 var_F0, 0
  loc_6660E7: PopAdLdVar
  loc_6660E8: FLdRfVar var_E0
  loc_6660EB: ImpAdLdRf MemVar_752164
  loc_6660EE: NewIfNullPr Me
  loc_6660F1:  = Me.DBEngine.Workspaces
  loc_6660F6: FLdPr var_E0
  loc_6660F9: from_stack_2 = Me.Item(from_stack_1)
  loc_6660FE: FLdPr var_F4
  loc_666101: Me.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_666106: FLdZeroAd var_128
  loc_666109: FStAdFunc var_88
  loc_66610C: FFreeStr var_B4 = ""
  loc_666113: FFreeAd var_BC = "": var_E0 = ""
  loc_66611C: LitVar_Missing var_F0
  loc_66611F: PopAdLdVar
  loc_666120: LitStr "DELETE * FROM TC_SALES"
  loc_666123: FLdPr var_88
  loc_666126: Me.Execute from_stack_1, from_stack_2
  loc_66612B: LitI2_Byte 1
  loc_66612D: FStI2 var_8A
  loc_666130: FLdI2 var_8A
  loc_666133: CI4UI1
  loc_666134: ILdRf var_AC
  loc_666137: FnLenStr
  loc_666138: LeI4
  loc_666139: BranchF loc_6662EA
  loc_66613C: LitI4 2
  loc_666141: FLdRfVar var_DC
  loc_666144: ImpAdCallFPR4  = Chr()
  loc_666149: FLdRfVar var_DC
  loc_66614C: LitI4 6
  loc_666151: FLdRfVar var_138
  loc_666154: ImpAdCallFPR4  = Chr()
  loc_666159: FLdRfVar var_138
  loc_66615C: ConcatVar var_148
  loc_666160: LitI4 &HE
  loc_666165: FLdRfVar var_158
  loc_666168: ImpAdCallFPR4  = Chr()
  loc_66616D: FLdRfVar var_158
  loc_666170: ConcatVar var_168
  loc_666174: LitI4 &HD
  loc_666179: FLdRfVar var_178
  loc_66617C: ImpAdCallFPR4  = Chr()
  loc_666181: FLdRfVar var_178
  loc_666184: ConcatVar var_188
  loc_666188: LitI4 &HE
  loc_66618D: FLdRfVar var_198
  loc_666190: ImpAdCallFPR4  = Chr()
  loc_666195: FLdRfVar var_198
  loc_666198: ConcatVar var_1A8
  loc_66619C: CStrVarTmp
  loc_66619D: FStStr var_90
  loc_6661A0: FFreeVar var_DC = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = ""
  loc_6661B5: LitVar_Missing var_DC
  loc_6661B8: FLdI2 var_8A
  loc_6661BB: CI4UI1
  loc_6661BC: FLdRfVar var_AC
  loc_6661BF: CVarRef
  loc_6661C4: FLdRfVar var_138
  loc_6661C7: ImpAdCallFPR4  = Mid(, , )
  loc_6661CC: FLdI2 var_8A
  loc_6661CF: LitI2_Byte 5
  loc_6661D1: PopTmpLdAd2 var_C2
  loc_6661D4: FLdRfVar var_90
  loc_6661D7: FLdRfVar var_A8
  loc_6661DA: PopTmpLdAdStr var_1AC
  loc_6661DD: FLdRfVar var_138
  loc_6661E0: CStrVarTmp
  loc_6661E1: PopTmpLdAdStr
  loc_6661E5: ImpAdCallI2 Proc_87_24_61B1C0(, , , )
  loc_6661EA: AddI2
  loc_6661EB: FStI2 var_8A
  loc_6661EE: FFree1Str var_B4
  loc_6661F1: FFreeVar var_DC = ""
  loc_6661F8: LitI4 1
  loc_6661FD: FLdRfVar var_A8
  loc_666200: Ary1LdI4
  loc_666201: ImpAdCallFPR4 push Val()
  loc_666206: FStFPR8 var_1DC
  loc_666209: LitStr "INSERT INTO TC_SALES(Cant, Descripcion, Importe, ImporteTC, Volumen, Porcentaje) VALUES("
  loc_66620C: LitI4 2
  loc_666211: FLdRfVar var_A8
  loc_666214: Ary1LdI4
  loc_666215: ConcatStr
  loc_666216: FStStrNoPop var_B4
  loc_666219: LitStr ", '"
  loc_66621C: ConcatStr
  loc_66621D: FStStrNoPop var_B8
  loc_666220: LitI4 1
  loc_666225: FLdRfVar var_A8
  loc_666228: Ary1LdI4
  loc_666229: ConcatStr
  loc_66622A: FStStrNoPop var_C0
  loc_66622D: LitStr " "
  loc_666230: ConcatStr
  loc_666231: FStStrNoPop var_CC
  loc_666234: FLdRfVar var_C8
  loc_666237: FLdFPR8 var_1DC
  loc_66623A: CI2R8
  loc_66623B: ImpAdLdRf MemVar_74A220
  loc_66623E: NewIfNullPr clsProducts
  loc_666246: ILdRf var_C8
  loc_666249: ConcatStr
  loc_66624A: FStStrNoPop var_1B0
  loc_66624D: LitStr "', "
  loc_666250: ConcatStr
  loc_666251: FStStrNoPop var_1B4
  loc_666254: LitI4 3
  loc_666259: FLdRfVar var_A8
  loc_66625C: Ary1LdI4
  loc_66625D: ConcatStr
  loc_66625E: FStStrNoPop var_1B8
  loc_666261: LitStr ", "
  loc_666264: ConcatStr
  loc_666265: FStStrNoPop var_1BC
  loc_666268: LitI4 4
  loc_66626D: FLdRfVar var_A8
  loc_666270: Ary1LdI4
  loc_666271: ConcatStr
  loc_666272: FStStrNoPop var_1C0
  loc_666275: LitStr ", "
  loc_666278: ConcatStr
  loc_666279: FStStrNoPop var_1C4
  loc_66627C: LitI4 5
  loc_666281: FLdRfVar var_A8
  loc_666284: Ary1LdI4
  loc_666285: ConcatStr
  loc_666286: FStStrNoPop var_1C8
  loc_666289: LitStr ", "
  loc_66628C: ConcatStr
  loc_66628D: FStStrNoPop var_1CC
  loc_666290: LitI4 2
  loc_666295: FLdRfVar var_A8
  loc_666298: Ary1LdI4
  loc_666299: ImpAdCallFPR4 push Val()
  loc_66629E: CI2R8
  loc_66629F: PopTmpLdAd2 var_C2
  loc_6662A2: ImpAdCallFPR4 Proc_101_11_5D0234()
  loc_6662A7: CStrR8
  loc_6662A9: FStStrNoPop var_1D0
  loc_6662AC: ConcatStr
  loc_6662AD: FStStrNoPop var_1D4
  loc_6662B0: LitStr ")"
  loc_6662B3: ConcatStr
  loc_6662B4: FStStr var_B0
  loc_6662B7: FFreeStr var_B4 = "": var_B8 = "": var_C0 = "": var_CC = "": var_C8 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_6662D8: LitVar_Missing var_F0
  loc_6662DB: PopAdLdVar
  loc_6662DC: ILdRf var_B0
  loc_6662DF: FLdPr var_88
  loc_6662E2: Me.Execute from_stack_1, from_stack_2
  loc_6662E7: Branch loc_666130
  loc_6662EA: FLdPr var_88
  loc_6662ED: Me.Close
  loc_6662F2: LitNothing
  loc_6662F4: CastAd
  loc_6662F7: FStAdFunc var_88
  loc_6662FA: ExitProc
  loc_6662FB: LitVar_Missing var_158
  loc_6662FE: LitVar_Missing var_148
  loc_666301: LitVarStr var_104, "Error"
  loc_666306: FStVarCopyObj var_138
  loc_666309: FLdRfVar var_138
  loc_66630C: LitI4 &H10
  loc_666311: LitVarStr var_F0, "No se puede obtener el reporte de TC"
  loc_666316: FStVarCopyObj var_DC
  loc_666319: FLdRfVar var_DC
  loc_66631C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_666321: FFreeVar var_DC = "": var_138 = "": var_148 = ""
  loc_66632C: ExitProc
End Function

Private Function Proc_101_6_605CF0(arg_C) '605CF0
  'Data Table: 4067BC
  loc_605C18: LitI4 1
  loc_605C1D: ILdI4 arg_C
  loc_605C20: LitStr "/"
  loc_605C23: LitI4 0
  loc_605C28: FnInStr4
  loc_605C2A: CBoolI4
  loc_605C2C: BranchF loc_605C87
  loc_605C2F: ILdI4 arg_C
  loc_605C32: FnLenStr
  loc_605C33: LitI4 2
  loc_605C38: SubI4
  loc_605C39: CVarI4
  loc_605C3D: LitI4 2
  loc_605C42: ILdRf arg_C
  loc_605C45: CVarRef
  loc_605C4A: FLdRfVar var_CC
  loc_605C4D: ImpAdCallFPR4  = Mid(, , )
  loc_605C52: LitStr "/"
  loc_605C55: FStStrCopy var_D4
  loc_605C58: FLdRfVar var_D4
  loc_605C5B: FLdRfVar var_CC
  loc_605C5E: CStrVarTmp
  loc_605C5F: PopTmpLdAdStr
  loc_605C63: ImpAdCallI2 Proc_101_7_5F029C(, )
  loc_605C68: FStStr var_8C
  loc_605C6B: FFreeStr var_D0 = ""
  loc_605C72: FFreeVar var_BC = ""
  loc_605C79: FLdRfVar var_8C
  loc_605C7C: ImpAdCallI2 Proc_101_8_5EE7B0()
  loc_605C81: FStStr var_8C
  loc_605C84: Branch loc_605CE8
  loc_605C87: LitI4 1
  loc_605C8C: ILdI4 arg_C
  loc_605C8F: LitStr ":"
  loc_605C92: LitI4 0
  loc_605C97: FnInStr4
  loc_605C99: CBoolI4
  loc_605C9B: BranchF loc_605CE8
  loc_605C9E: ILdI4 arg_C
  loc_605CA1: FnLenStr
  loc_605CA2: LitI4 2
  loc_605CA7: SubI4
  loc_605CA8: CVarI4
  loc_605CAC: LitI4 2
  loc_605CB1: ILdRf arg_C
  loc_605CB4: CVarRef
  loc_605CB9: FLdRfVar var_CC
  loc_605CBC: ImpAdCallFPR4  = Mid(, , )
  loc_605CC1: LitStr ":"
  loc_605CC4: FStStrCopy var_D4
  loc_605CC7: FLdRfVar var_D4
  loc_605CCA: FLdRfVar var_CC
  loc_605CCD: CStrVarTmp
  loc_605CCE: PopTmpLdAdStr
  loc_605CD2: ImpAdCallI2 Proc_101_7_5F029C(, )
  loc_605CD7: FStStr var_8C
  loc_605CDA: FFreeStr var_D0 = ""
  loc_605CE1: FFreeVar var_BC = ""
  loc_605CE8: ILdRf var_8C
  loc_605CEB: FStStrCopy var_88
  loc_605CEE: ExitProc
End Function

Private Function Proc_101_7_5F029C(arg_C, arg_10) '5F029C
  'Data Table: 409184
  loc_5F0210: LitI2_Byte 1
  loc_5F0212: FLdRfVar var_8A
  loc_5F0215: ILdI4 arg_C
  loc_5F0218: FnLenStr
  loc_5F0219: CI2I4
  loc_5F021A: ForI2 var_94
  loc_5F0220: LitVarI2 var_C4, 1
  loc_5F0225: FLdI2 var_8A
  loc_5F0228: CI4UI1
  loc_5F0229: ILdRf arg_C
  loc_5F022C: CVarRef
  loc_5F0231: FLdRfVar var_D4
  loc_5F0234: ImpAdCallFPR4  = Mid(, , )
  loc_5F0239: FLdRfVar var_D4
  loc_5F023C: ILdI4 arg_10
  loc_5F023F: CVarStr var_E4
  loc_5F0242: HardType
  loc_5F0243: EqVar var_F4
  loc_5F0247: NotVar var_104
  loc_5F024B: CBoolVarNull
  loc_5F024D: FFreeVar var_C4 = ""
  loc_5F0254: BranchF loc_5F028A
  loc_5F0257: ILdRf var_90
  loc_5F025A: CVarStr var_E4
  loc_5F025D: LitVarI2 var_C4, 1
  loc_5F0262: FLdI2 var_8A
  loc_5F0265: CI4UI1
  loc_5F0266: ILdRf arg_C
  loc_5F0269: CVarRef
  loc_5F026E: FLdRfVar var_D4
  loc_5F0271: ImpAdCallFPR4  = Mid(, , )
  loc_5F0276: FLdRfVar var_D4
  loc_5F0279: ConcatVar var_F4
  loc_5F027D: CStrVarTmp
  loc_5F027E: FStStr var_90
  loc_5F0281: FFreeVar var_C4 = "": var_D4 = ""
  loc_5F028A: FLdRfVar var_8A
  loc_5F028D: NextI2 var_94, loc_5F0220
  loc_5F0292: ILdRf var_90
  loc_5F0295: FStStrCopy var_88
  loc_5F0298: ExitProc
End Function

Private Function Proc_101_8_5EE7B0(arg_C) '5EE7B0
  'Data Table: 4067BC
  loc_5EE738: LitVarI2 var_B8, 4
  loc_5EE73D: LitI4 5
  loc_5EE742: ILdRf arg_C
  loc_5EE745: CVarRef
  loc_5EE74A: FLdRfVar var_C8
  loc_5EE74D: ImpAdCallFPR4  = Mid(, , )
  loc_5EE752: FLdRfVar var_C8
  loc_5EE755: LitVarI2 var_F8, 2
  loc_5EE75A: LitI4 3
  loc_5EE75F: ILdRf arg_C
  loc_5EE762: CVarRef
  loc_5EE767: FLdRfVar var_108
  loc_5EE76A: ImpAdCallFPR4  = Mid(, , )
  loc_5EE76F: FLdRfVar var_108
  loc_5EE772: ConcatVar var_118
  loc_5EE776: LitVarI2 var_148, 2
  loc_5EE77B: LitI4 1
  loc_5EE780: ILdRf arg_C
  loc_5EE783: CVarRef
  loc_5EE788: FLdRfVar var_158
  loc_5EE78B: ImpAdCallFPR4  = Mid(, , )
  loc_5EE790: FLdRfVar var_158
  loc_5EE793: ConcatVar var_168
  loc_5EE797: CStrVarTmp
  loc_5EE798: FStStr var_88
  loc_5EE79B: FFreeVar var_B8 = "": var_F8 = "": var_C8 = "": var_108 = "": var_148 = "": var_118 = "": var_158 = ""
  loc_5EE7AE: ExitProc
End Function

Private Function Proc_101_9_5CD870() '5CD870
  'Data Table: 4067BC
  loc_5CD864: FMemLdR4 arg_8(36)
  loc_5CD869: FStStrCopy var_88
  loc_5CD86C: ExitProc
End Function

Private Function Proc_101_10_5CCE70() '5CCE70
  'Data Table: 4067BC
  loc_5CCE64: FMemLdR4 arg_8(32)
  loc_5CCE69: FStStrCopy var_88
  loc_5CCE6C: ExitProc
End Function

Private Function Proc_101_11_5D0234(arg_C) '5D0234
  'Data Table: 4067BC
  loc_5D021C: ImpAdCallI2 Proc_101_12_5C9770()
  loc_5D0221: FStR4 var_90
  loc_5D0224: ILdI2 arg_C
  loc_5D0227: LitI2_Byte &H64
  loc_5D0229: MulI2
  loc_5D022A: CR8I2
  loc_5D022B: ILdRf var_90
  loc_5D022E: CR8I4
  loc_5D022F: DivR8
  loc_5D0230: FStFPR8 var_8C
  loc_5D0233: ExitProcR8
End Function

Private Function Proc_101_12_5C9770() '5C9770
  'Data Table: 4067BC
  loc_5C9764: FMemLdR4 arg_8(28)
  loc_5C9769: FStR4 var_88
  loc_5C976C: ExitProc
  loc_5C976D: EqStr
End Function

Private Function Proc_101_13_60A30C() '60A30C
  'Data Table: 4067BC
  loc_60A220: OnErrorGoto loc_60A308
  loc_60A223: FLdRfVar var_88
  loc_60A226: ImpAdLdRf MemVar_7520D4
  loc_60A229: NewIfNullPr Global
  loc_60A22C:  = Global.Printers
  loc_60A231: FLdPr var_88
  loc_60A234: LateMemLdVar
  loc_60A239: LitVarI2 var_98, 0
  loc_60A23E: HardType
  loc_60A23F: NeVarBool
  loc_60A241: FFree1Ad var_88
  loc_60A244: FFree1Var var_A8 = ""
  loc_60A247: BranchF loc_60A307
  loc_60A24A: FLdRfVar var_88
  loc_60A24D: ImpAdLdRf MemVar_7520D4
  loc_60A250: NewIfNullPr Global
  loc_60A253:  = Global.Printer
  loc_60A258: FLdPr var_88
  loc_60A25B: LateIdLdVar var_A8 DispID_29 1
  loc_60A262: CStrVarTmp
  loc_60A263: CVarStr var_B8
  loc_60A266: PopAdLdVar
  loc_60A267: ImpAdLdRf MemVar_74C760
  loc_60A26A: NewIfNullPr Formx
  loc_60A26D: VCallAd Control_ID_CrystalReport1
  loc_60A270: FStAdFunc var_BC
  loc_60A273: FLdPr var_BC
  loc_60A276: LateIdSt
  loc_60A27B: FFreeAd var_88 = ""
  loc_60A282: FFreeVar var_A8 = ""
  loc_60A289: FLdRfVar var_88
  loc_60A28C: ImpAdLdRf MemVar_7520D4
  loc_60A28F: NewIfNullPr Global
  loc_60A292:  = Global.Printer
  loc_60A297: FLdPr var_88
  loc_60A29A: LateIdLdVar var_A8 DispID_28 1
  loc_60A2A1: CStrVarTmp
  loc_60A2A2: CVarStr var_B8
  loc_60A2A5: PopAdLdVar
  loc_60A2A6: ImpAdLdRf MemVar_74C760
  loc_60A2A9: NewIfNullPr Formx
  loc_60A2AC: VCallAd Control_ID_CrystalReport1
  loc_60A2AF: FStAdFunc var_BC
  loc_60A2B2: FLdPr var_BC
  loc_60A2B5: LateIdSt
  loc_60A2BA: FFreeAd var_88 = ""
  loc_60A2C1: FFreeVar var_A8 = ""
  loc_60A2C8: FLdRfVar var_88
  loc_60A2CB: ImpAdLdRf MemVar_7520D4
  loc_60A2CE: NewIfNullPr Global
  loc_60A2D1:  = Global.Printer
  loc_60A2D6: FLdPr var_88
  loc_60A2D9: LateIdLdVar var_A8 DispID_30 1
  loc_60A2E0: CStrVarTmp
  loc_60A2E1: CVarStr var_B8
  loc_60A2E4: PopAdLdVar
  loc_60A2E5: ImpAdLdRf MemVar_74C760
  loc_60A2E8: NewIfNullPr Formx
  loc_60A2EB: VCallAd Control_ID_CrystalReport1
  loc_60A2EE: FStAdFunc var_BC
  loc_60A2F1: FLdPr var_BC
  loc_60A2F4: LateIdSt
  loc_60A2F9: FFreeAd var_88 = ""
  loc_60A300: FFreeVar var_A8 = ""
  loc_60A307: ExitProc
  loc_60A308: ExitProc
  loc_60A309: FLdRfVar var_2
End Function

Private Function Proc_101_14_6180C4() '6180C4
  'Data Table: 43B664
  loc_617FB0: FLdRfVar var_A0
  loc_617FB3: FLdRfVar var_88
  loc_617FB6: FLdRfVar var_90
  loc_617FB9: ImpAdLdRf MemVar_74C760
  loc_617FBC: NewIfNullPr Formx
  loc_617FBF: from_stack_1v = Formx.global_4589716Get()
  loc_617FC4: FLdPr var_90
  loc_617FC7: Formx.WhatsThisMode
  loc_617FCC: FLdRfVar var_A0
  loc_617FCF: NotVar var_B0
  loc_617FD3: CBoolVarNull
  loc_617FD5: FFree1Ad var_90
  loc_617FD8: FFree1Var var_A0 = ""
  loc_617FDB: BranchF loc_617FF5
  loc_617FDE: FLdRfVar var_A0
  loc_617FE1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_617FE6: FLdRfVar var_A0
  loc_617FE9: CBoolVarNull
  loc_617FEB: FFree1Var var_A0 = ""
  loc_617FEE: BranchF loc_617FF2
  loc_617FF1: ExitProc
  loc_617FF2: Branch loc_617FB0
  loc_617FF5: LitI2_Byte 0
  loc_617FF7: FMemStI2 arg_8(112)
  loc_617FFC: LitI2_Byte 1
  loc_617FFE: FLdRfVar var_8A
  loc_618001: FLdRfVar var_B2
  loc_618004: ImpAdLdRf MemVar_74A220
  loc_618007: NewIfNullPr clsProducts
  loc_61800A: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61800F: FLdI2 var_B2
  loc_618012: ForI2 var_B6
  loc_618018: LitVarI2 var_A0, 1
  loc_61801D: FLdI2 var_8A
  loc_618020: CI4UI1
  loc_618021: FLdRfVar var_88
  loc_618024: CVarRef
  loc_618029: FLdRfVar var_B0
  loc_61802C: ImpAdCallFPR4  = Mid(, , )
  loc_618031: FLdRfVar var_B0
  loc_618034: LitVarStr var_E8, "2"
  loc_618039: HardType
  loc_61803A: EqVar var_F8
  loc_61803E: LitVarI2 var_128, 1
  loc_618043: FLdI2 var_8A
  loc_618046: CI4UI1
  loc_618047: FLdRfVar var_88
  loc_61804A: CVarRef
  loc_61804F: FLdRfVar var_138
  loc_618052: ImpAdCallFPR4  = Mid(, , )
  loc_618057: FLdRfVar var_138
  loc_61805A: LitVarStr var_148, "3"
  loc_61805F: HardType
  loc_618060: EqVar var_158
  loc_618064: OrVar var_168
  loc_618068: CBoolVarNull
  loc_61806A: FFreeVar var_A0 = "": var_B0 = "": var_128 = ""
  loc_618075: BranchF loc_618085
  loc_618078: FMemLdI2 arg_8(112)
  loc_61807D: LitI2_Byte 1
  loc_61807F: AddI2
  loc_618080: FMemStI2 arg_8(112)
  loc_618085: LitVarI2 var_A0, 1
  loc_61808A: FLdI2 var_8A
  loc_61808D: CI4UI1
  loc_61808E: FLdRfVar var_88
  loc_618091: CVarRef
  loc_618096: FLdRfVar var_B0
  loc_618099: ImpAdCallFPR4  = Mid(, , )
  loc_61809E: FLdRfVar var_B0
  loc_6180A1: CStrVarTmp
  loc_6180A2: FStStrNoPop var_16C
  loc_6180A5: FLdI2 var_8A
  loc_6180A8: CI4UI1
  loc_6180A9: FMemLdRf unk_43B66D
  loc_6180AE: Ary1StStrCopy
  loc_6180AF: FFree1Str var_16C
  loc_6180B2: FFreeVar var_A0 = ""
  loc_6180B9: FLdRfVar var_8A
  loc_6180BC: NextI2 var_B6, loc_618018
  loc_6180C1: ExitProc
End Function

Private Function Proc_101_15_5D3FAC() '5D3FAC
  'Data Table: 40376C
  loc_5D3F94: LitStr "sDecimal"
  loc_5D3F97: FStStrCopy var_8C
  loc_5D3F9A: FLdRfVar var_8C
  loc_5D3F9D: ImpAdCallI2 Proc_87_8_628F70()
  loc_5D3FA2: FStStr var_88
  loc_5D3FA5: FFree1Str var_8C
  loc_5D3FA8: ExitProc
End Function

Private Function Proc_101_16_6179AC(arg_C) '6179AC
  'Data Table: 43B664
  loc_617894: OnErrorGoto loc_617968
  loc_617897: ILdRf arg_C
  loc_61789A: ImpAdCallI2 push VarType()
  loc_61789F: LitI4 8
  loc_6178A4: EqI4
  loc_6178A5: BranchF loc_6178FD
  loc_6178A8: LitVarI2 var_C8, 1
  loc_6178AD: FLdRfVar var_98
  loc_6178B0: LitVarI2 var_B8, 10
  loc_6178B5: ForVar var_E8
  loc_6178BB: FLdRfVar var_EC
  loc_6178BE: FLdRfVar var_98
  loc_6178C1: CI2Var
  loc_6178C2: ImpAdLdRf MemVar_74A220
  loc_6178C5: NewIfNullPr clsProducts
  loc_6178CD: FLdZeroAd var_EC
  loc_6178D0: CVarStr var_10C
  loc_6178D3: HardType
  loc_6178D4: ILdRf arg_C
  loc_6178D7: FLdRfVar var_FC
  loc_6178DA: ImpAdCallFPR4  = Trim()
  loc_6178DF: FLdRfVar var_FC
  loc_6178E2: EqVarBool
  loc_6178E4: FFreeVar var_10C = ""
  loc_6178EB: BranchF loc_6178F1
  loc_6178EE: Branch loc_6178FA
  loc_6178F1: FLdRfVar var_98
  loc_6178F4: NextStepVar var_E8
  loc_6178FA: Branch loc_617936
  loc_6178FD: ILdRf arg_C
  loc_617900: ImpAdCallI2 push VarType()
  loc_617905: LitI4 &H11
  loc_61790A: EqI4
  loc_61790B: ILdRf arg_C
  loc_61790E: ImpAdCallI2 push VarType()
  loc_617913: LitI4 2
  loc_617918: EqI4
  loc_617919: OrI4
  loc_61791A: ILdRf arg_C
  loc_61791D: ImpAdCallI2 push VarType()
  loc_617922: LitI4 3
  loc_617927: EqI4
  loc_617928: OrI4
  loc_617929: BranchF loc_617936
  loc_61792C: ILdRfDarg arg_C
  loc_617932: FStVarCopy
  loc_617936: FLdRfVar var_98
  loc_617939: CI4Var
  loc_61793B: FMemLdRf unk_43B66D
  loc_617940: Ary1LdI4
  loc_617941: LitStr "2"
  loc_617944: EqStr
  loc_617946: FLdRfVar var_98
  loc_617949: CI4Var
  loc_61794B: FMemLdRf unk_43B66D
  loc_617950: Ary1LdI4
  loc_617951: LitStr "3"
  loc_617954: EqStr
  loc_617956: OrI4
  loc_617957: BranchF loc_617962
  loc_61795A: LitI2_Byte &HFF
  loc_61795C: FStI2 var_86
  loc_61795F: Branch loc_617967
  loc_617962: LitI2_Byte 0
  loc_617964: FStI2 var_86
  loc_617967: ExitProcI2
  loc_617968: LitVar_Missing var_130
  loc_61796B: LitVar_Missing var_11C
  loc_61796E: LitVar_Missing var_10C
  loc_617971: LitI4 0
  loc_617976: LitStr "No se encuentra el producto "
  loc_617979: FLdRfVar var_EC
  loc_61797C: ImpAdCallI2 Err 'rtcErrObj
  loc_617981: FStAdFunc var_120
  loc_617984: FLdPr var_120
  loc_617987:  = Err.Description
  loc_61798C: ILdRf var_EC
  loc_61798F: ConcatStr
  loc_617990: CVarStr var_FC
  loc_617993: ImpAdCallFPR4 MsgBox(, , , , )
  loc_617998: FFree1Str var_EC
  loc_61799B: FFree1Ad var_120
  loc_61799E: FFreeVar var_FC = "": var_10C = "": var_11C = ""
  loc_6179A9: ExitProcI2
End Function

Private Function Proc_101_17_612750(arg_C, arg_10) '612750
  'Data Table: 4027E4
  loc_612644: LitI4 1
  loc_612649: FLdRfVar var_88
  loc_61264C: ILdI4 arg_C
  loc_61264F: FnLenStr
  loc_612650: ForI4 var_98
  loc_612656: LitVarI2 var_C8, 1
  loc_61265B: ILdRf var_88
  loc_61265E: ILdRf arg_C
  loc_612661: CVarRef
  loc_612666: FLdRfVar var_D8
  loc_612669: ImpAdCallFPR4  = Mid(, , )
  loc_61266E: FLdRfVar var_D8
  loc_612671: LitI4 &HD
  loc_612676: FLdRfVar var_E8
  loc_612679: ImpAdCallFPR4  = Chr()
  loc_61267E: FLdRfVar var_E8
  loc_612681: EqVarBool
  loc_612683: FFreeVar var_C8 = "": var_D8 = ""
  loc_61268C: BranchF loc_6126CF
  loc_61268F: LitI4 0
  loc_612694: ILdRf var_8C
  loc_612697: ILdRf arg_10
  loc_61269A: RedimPreserve
  loc_6126A4: ILdRf var_90
  loc_6126A7: ILdRf var_8C
  loc_6126AA: ILdI4 arg_10
  loc_6126AD: Ary1StStrCopy
  loc_6126AE: ILdRf var_8C
  loc_6126B1: LitI4 1
  loc_6126B6: AddI4
  loc_6126B7: FStR4 var_8C
  loc_6126BA: ILdRf var_88
  loc_6126BD: LitI4 1
  loc_6126C2: AddI4
  loc_6126C3: FStR4 var_88
  loc_6126C6: LitStr vbNullString
  loc_6126C9: FStStrCopy var_90
  loc_6126CC: Branch loc_612701
  loc_6126CF: ILdRf var_90
  loc_6126D2: CVarStr var_108
  loc_6126D5: LitVarI2 var_C8, 1
  loc_6126DA: ILdRf var_88
  loc_6126DD: ILdRf arg_C
  loc_6126E0: CVarRef
  loc_6126E5: FLdRfVar var_D8
  loc_6126E8: ImpAdCallFPR4  = Mid(, , )
  loc_6126ED: FLdRfVar var_D8
  loc_6126F0: ConcatVar var_E8
  loc_6126F4: CStrVarTmp
  loc_6126F5: FStStr var_90
  loc_6126F8: FFreeVar var_C8 = "": var_D8 = ""
  loc_612701: FLdRfVar var_88
  loc_612704: NextI4 var_98, loc_612656
  loc_612709: FLdRfVar var_90
  loc_61270C: CVarRef
  loc_612711: FLdRfVar var_C8
  loc_612714: ImpAdCallFPR4  = Trim()
  loc_612719: FLdRfVar var_C8
  loc_61271C: FnLenVar var_D8
  loc_612720: LitVarI2 var_B8, 0
  loc_612725: HardType
  loc_612726: NeVarBool
  loc_612728: FFree1Var var_C8 = ""
  loc_61272B: BranchF loc_61274D
  loc_61272E: LitI4 0
  loc_612733: ILdRf var_8C
  loc_612736: ILdRf arg_10
  loc_612739: RedimPreserve
  loc_612743: ILdRf var_90
  loc_612746: ILdRf var_8C
  loc_612749: ILdI4 arg_10
  loc_61274C: Ary1StStrCopy
  loc_61274D: ExitProc
End Function

Private Function Proc_101_18_6C556C(arg_C, arg_10, arg_14, arg_18) '6C556C
  'Data Table: 4067BC
  loc_6C4CD8: OnErrorGoto loc_6C5526
  loc_6C4CDB: ILdI4 arg_C
  loc_6C4CDE: LitStr "D"
  loc_6C4CE1: EqStr
  loc_6C4CE3: BranchF loc_6C4CEF
  loc_6C4CE6: ImpAdLdI4 MemVar_74BEB4
  loc_6C4CE9: FStStrCopy var_9C
  loc_6C4CEC: Branch loc_6C4D09
  loc_6C4CEF: ILdI4 arg_C
  loc_6C4CF2: LitStr "M"
  loc_6C4CF5: EqStr
  loc_6C4CF7: BranchF loc_6C4D03
  loc_6C4CFA: ImpAdLdI4 MemVar_74BEB8
  loc_6C4CFD: FStStrCopy var_9C
  loc_6C4D00: Branch loc_6C4D09
  loc_6C4D03: ImpAdLdI4 MemVar_74BEB0
  loc_6C4D06: FStStrCopy var_9C
  loc_6C4D09: FLdRfVar var_104
  loc_6C4D0C: LitVar_Missing var_100
  loc_6C4D0F: PopAdLdVar
  loc_6C4D10: LitVar_Missing var_F0
  loc_6C4D13: PopAdLdVar
  loc_6C4D14: LitVar_TRUE var_E0
  loc_6C4D17: PopAdLdVar
  loc_6C4D18: ILdI4 arg_14
  loc_6C4D1B: ImpAdLdRf MemVar_752164
  loc_6C4D1E: NewIfNullPr Me
  loc_6C4D21: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C4D26: FLdZeroAd var_104
  loc_6C4D29: FStAdFunc var_8C
  loc_6C4D2C: LitStr vbNullString
  loc_6C4D2F: FMemStStrCopy
  loc_6C4D34: ILdI2 arg_18
  loc_6C4D37: FStI2 var_106
  loc_6C4D3A: FLdI2 var_106
  loc_6C4D3D: LitI2_Byte &HFF
  loc_6C4D3F: EqI2
  loc_6C4D40: BranchF loc_6C4FF4
  loc_6C4D43: LitVar_Missing var_E0
  loc_6C4D46: PopAdLdVar
  loc_6C4D47: LitStr "delete * from Detalle"
  loc_6C4D4A: FLdPr var_8C
  loc_6C4D4D: Me.Execute from_stack_1, from_stack_2
  loc_6C4D52: LitI2_Byte 0
  loc_6C4D54: LitI4 1
  loc_6C4D59: FLdRfVar var_C0
  loc_6C4D5C: Ary1StI2
  loc_6C4D5D: LitI2_Byte 0
  loc_6C4D5F: LitI4 2
  loc_6C4D64: FLdRfVar var_C0
  loc_6C4D67: Ary1StI2
  loc_6C4D68: LitI2_Byte 0
  loc_6C4D6A: LitI4 3
  loc_6C4D6F: FLdRfVar var_C0
  loc_6C4D72: Ary1StI2
  loc_6C4D73: LitI2_Byte &HFF
  loc_6C4D75: LitI4 4
  loc_6C4D7A: FLdRfVar var_C0
  loc_6C4D7D: Ary1StI2
  loc_6C4D7E: LitI2_Byte &HFF
  loc_6C4D80: LitI4 5
  loc_6C4D85: FLdRfVar var_C0
  loc_6C4D88: Ary1StI2
  loc_6C4D89: LitI2_Byte &HFF
  loc_6C4D8B: LitI4 6
  loc_6C4D90: FLdRfVar var_C0
  loc_6C4D93: Ary1StI2
  loc_6C4D94: LitI2_Byte 0
  loc_6C4D96: LitI4 7
  loc_6C4D9B: FLdRfVar var_C0
  loc_6C4D9E: Ary1StI2
  loc_6C4D9F: LitI2_Byte 0
  loc_6C4DA1: LitI4 8
  loc_6C4DA6: FLdRfVar var_C0
  loc_6C4DA9: Ary1StI2
  loc_6C4DAA: LitI2_Byte 0
  loc_6C4DAC: LitI4 9
  loc_6C4DB1: FLdRfVar var_C0
  loc_6C4DB4: Ary1StI2
  loc_6C4DB5: LitI2_Byte 0
  loc_6C4DB7: LitI4 &HA
  loc_6C4DBC: FLdRfVar var_C0
  loc_6C4DBF: Ary1StI2
  loc_6C4DC0: LitI2_Byte 1
  loc_6C4DC2: FLdRfVar var_C2
  loc_6C4DC5: ILdI4 arg_10
  loc_6C4DC8: LitI2_Byte 1
  loc_6C4DCA: FnUBound
  loc_6C4DCC: CI2I4
  loc_6C4DCD: ForI2 var_10A
  loc_6C4DD3: FLdI2 var_C2
  loc_6C4DD6: CI4UI1
  loc_6C4DD7: ILdI4 arg_10
  loc_6C4DDA: Ary1LdI4
  loc_6C4DDB: LitStr vbNullString
  loc_6C4DDE: NeStr
  loc_6C4DE0: BranchF loc_6C4E35
  loc_6C4DE3: LitI4 1
  loc_6C4DE8: FLdI2 var_C2
  loc_6C4DEB: CI4UI1
  loc_6C4DEC: ILdI4 arg_10
  loc_6C4DEF: Ary1LdI4
  loc_6C4DF0: LitStr ";"
  loc_6C4DF3: LitI4 0
  loc_6C4DF8: FnInStr4
  loc_6C4DFA: LitI4 1
  loc_6C4DFF: SubI4
  loc_6C4E00: CVarI4
  loc_6C4E04: LitI4 1
  loc_6C4E09: FLdI2 var_C2
  loc_6C4E0C: CI4UI1
  loc_6C4E0D: ILdI4 arg_10
  loc_6C4E10: AryLock
  loc_6C4E13: Ary1LdRf
  loc_6C4E14: CVarRef
  loc_6C4E19: FLdRfVar var_130
  loc_6C4E1C: ImpAdCallFPR4  = Mid(, , )
  loc_6C4E21: AryUnlock
  loc_6C4E24: FLdRfVar var_130
  loc_6C4E27: CStrVarTmp
  loc_6C4E28: FStStr var_98
  loc_6C4E2B: FFreeVar var_120 = ""
  loc_6C4E32: Branch loc_6C4E3B
  loc_6C4E35: LitStr "JEC"
  loc_6C4E38: FStStrCopy var_98
  loc_6C4E3B: ILdRf var_9C
  loc_6C4E3E: LitStr vbNullString
  loc_6C4E41: EqStr
  loc_6C4E43: LitI4 1
  loc_6C4E48: ILdRf var_9C
  loc_6C4E4B: LitStr "<"
  loc_6C4E4E: ILdRf var_98
  loc_6C4E51: ConcatStr
  loc_6C4E52: FStStrNoPop var_134
  loc_6C4E55: LitStr ">"
  loc_6C4E58: ConcatStr
  loc_6C4E59: FStStrNoPop var_138
  loc_6C4E5C: LitI4 0
  loc_6C4E61: FnInStr4
  loc_6C4E63: LitI4 0
  loc_6C4E68: GtI4
  loc_6C4E69: OrI4
  loc_6C4E6A: FFreeStr var_134 = ""
  loc_6C4E71: BranchF loc_6C4FE9
  loc_6C4E74: LitStr "INSERT INTO Detalle (Seccion , Grupo,"
  loc_6C4E77: FStStrCopy var_94
  loc_6C4E7A: ILdRf var_94
  loc_6C4E7D: LitStr " OrderKey, Col1, Col2, Col3, col4, col5, col6, col7 )"
  loc_6C4E80: ConcatStr
  loc_6C4E81: FStStr var_94
  loc_6C4E84: ILdRf var_94
  loc_6C4E87: LitStr " VALUES ("
  loc_6C4E8A: ConcatStr
  loc_6C4E8B: FStStr var_94
  loc_6C4E8E: LitI2_Byte 1
  loc_6C4E90: FStI2 var_A2
  loc_6C4E93: LitI2_Byte 1
  loc_6C4E95: FLdRfVar var_A4
  loc_6C4E98: LitI2_Byte &HA
  loc_6C4E9A: ForI2 var_13C
  loc_6C4EA0: FLdI2 var_A2
  loc_6C4EA3: FStI2 var_A6
  loc_6C4EA6: FLdI2 var_A6
  loc_6C4EA9: CI4UI1
  loc_6C4EAA: FLdI2 var_C2
  loc_6C4EAD: CI4UI1
  loc_6C4EAE: ILdI4 arg_10
  loc_6C4EB1: Ary1LdI4
  loc_6C4EB2: FnLenStr
  loc_6C4EB3: LeI4
  loc_6C4EB4: BranchF loc_6C4F02
  loc_6C4EB7: LitVarI2 var_120, 1
  loc_6C4EBC: FLdI2 var_A6
  loc_6C4EBF: CI4UI1
  loc_6C4EC0: FLdI2 var_C2
  loc_6C4EC3: CI4UI1
  loc_6C4EC4: ILdI4 arg_10
  loc_6C4EC7: AryLock
  loc_6C4ECA: Ary1LdRf
  loc_6C4ECB: CVarRef
  loc_6C4ED0: FLdRfVar var_130
  loc_6C4ED3: ImpAdCallFPR4  = Mid(, , )
  loc_6C4ED8: AryUnlock
  loc_6C4EDB: FLdRfVar var_130
  loc_6C4EDE: LitVarStr var_100, ";"
  loc_6C4EE3: HardType
  loc_6C4EE4: EqVarBool
  loc_6C4EE6: FFreeVar var_120 = ""
  loc_6C4EED: BranchF loc_6C4EF6
  loc_6C4EF0: Branch loc_6C4F02
  loc_6C4EF3: Branch loc_6C4EFF
  loc_6C4EF6: FLdI2 var_A6
  loc_6C4EF9: LitI2_Byte 1
  loc_6C4EFB: AddI2
  loc_6C4EFC: FStI2 var_A6
  loc_6C4EFF: Branch loc_6C4EA6
  loc_6C4F02: FLdI2 var_A6
  loc_6C4F05: FLdI2 var_A2
  loc_6C4F08: EqI2
  loc_6C4F09: BranchF loc_6C4F64
  loc_6C4F0C: FLdI2 var_A4
  loc_6C4F0F: CI4UI1
  loc_6C4F10: FLdRfVar var_C0
  loc_6C4F13: Ary1LdI2
  loc_6C4F14: BranchF loc_6C4F57
  loc_6C4F17: ILdRf var_94
  loc_6C4F1A: CVarStr var_E0
  loc_6C4F1D: LitI4 &H22
  loc_6C4F22: FLdRfVar var_120
  loc_6C4F25: ImpAdCallFPR4  = Chr()
  loc_6C4F2A: FLdRfVar var_120
  loc_6C4F2D: ConcatVar var_130
  loc_6C4F31: LitI4 &H22
  loc_6C4F36: FLdRfVar var_14C
  loc_6C4F39: ImpAdCallFPR4  = Chr()
  loc_6C4F3E: FLdRfVar var_14C
  loc_6C4F41: ConcatVar var_15C
  loc_6C4F45: CStrVarTmp
  loc_6C4F46: FStStr var_94
  loc_6C4F49: FFreeVar var_120 = "": var_130 = "": var_14C = ""
  loc_6C4F54: Branch loc_6C4F61
  loc_6C4F57: ILdRf var_94
  loc_6C4F5A: LitStr "NULL"
  loc_6C4F5D: ConcatStr
  loc_6C4F5E: FStStr var_94
  loc_6C4F61: Branch loc_6C4FA7
  loc_6C4F64: ILdRf var_94
  loc_6C4F67: CVarStr var_100
  loc_6C4F6A: FLdI2 var_A6
  loc_6C4F6D: FLdI2 var_A2
  loc_6C4F70: SubI2
  loc_6C4F71: CVarI2 var_120
  loc_6C4F74: FLdI2 var_A2
  loc_6C4F77: CI4UI1
  loc_6C4F78: FLdI2 var_C2
  loc_6C4F7B: CI4UI1
  loc_6C4F7C: ILdI4 arg_10
  loc_6C4F7F: AryLock
  loc_6C4F82: Ary1LdRf
  loc_6C4F83: CVarRef
  loc_6C4F88: FLdRfVar var_130
  loc_6C4F8B: ImpAdCallFPR4  = Mid(, , )
  loc_6C4F90: AryUnlock
  loc_6C4F93: FLdRfVar var_130
  loc_6C4F96: ConcatVar var_14C
  loc_6C4F9A: CStrVarTmp
  loc_6C4F9B: FStStr var_94
  loc_6C4F9E: FFreeVar var_120 = "": var_130 = ""
  loc_6C4FA7: FLdI2 var_A4
  loc_6C4FAA: LitI2_Byte &HA
  loc_6C4FAC: LtI2
  loc_6C4FAD: BranchF loc_6C4FBA
  loc_6C4FB0: ILdRf var_94
  loc_6C4FB3: LitStr ", "
  loc_6C4FB6: ConcatStr
  loc_6C4FB7: FStStr var_94
  loc_6C4FBA: FLdI2 var_A6
  loc_6C4FBD: LitI2_Byte 1
  loc_6C4FBF: AddI2
  loc_6C4FC0: FStI2 var_A2
  loc_6C4FC3: FLdRfVar var_A4
  loc_6C4FC6: NextI2 var_13C, loc_6C4EA0
  loc_6C4FCB: ILdRf var_94
  loc_6C4FCE: LitStr ")"
  loc_6C4FD1: ConcatStr
  loc_6C4FD2: FStStr var_94
  loc_6C4FD5: LitVarI4
  loc_6C4FDD: PopAdLdVar
  loc_6C4FDE: ILdRf var_94
  loc_6C4FE1: FLdPr var_8C
  loc_6C4FE4: Me.Execute from_stack_1, from_stack_2
  loc_6C4FE9: FLdRfVar var_C2
  loc_6C4FEC: NextI2 var_10A, loc_6C4DD3
  loc_6C4FF1: Branch loc_6C5510
  loc_6C4FF4: FLdI2 var_106
  loc_6C4FF7: LitI2_Byte 0
  loc_6C4FF9: EqI2
  loc_6C4FFA: BranchF loc_6C5510
  loc_6C4FFD: ILdRf arg_C
  loc_6C5000: CVarRef
  loc_6C5005: FLdRfVar var_120
  loc_6C5008: ImpAdCallFPR4  = Trim()
  loc_6C500D: FLdRfVar var_120
  loc_6C5010: CStrVarTmp
  loc_6C5011: PopTmpLdAdStr
  loc_6C5015: ImpAdCallFPR4 Proc_101_0_5C9B30()
  loc_6C501A: FFree1Str var_134
  loc_6C501D: FFree1Var var_120 = ""
  loc_6C5020: LitVar_Missing var_E0
  loc_6C5023: PopAdLdVar
  loc_6C5024: LitStr "delete * from Header "
  loc_6C5027: FLdPr var_8C
  loc_6C502A: Me.Execute from_stack_1, from_stack_2
  loc_6C502F: LitI2_Byte 0
  loc_6C5031: LitI4 1
  loc_6C5036: FLdRfVar var_C0
  loc_6C5039: Ary1StI2
  loc_6C503A: LitI2_Byte 0
  loc_6C503C: LitI4 2
  loc_6C5041: FLdRfVar var_C0
  loc_6C5044: Ary1StI2
  loc_6C5045: LitI2_Byte &HFF
  loc_6C5047: LitI4 3
  loc_6C504C: FLdRfVar var_C0
  loc_6C504F: Ary1StI2
  loc_6C5050: LitI2_Byte &HFF
  loc_6C5052: LitI4 4
  loc_6C5057: FLdRfVar var_C0
  loc_6C505A: Ary1StI2
  loc_6C505B: LitI2_Byte &HFF
  loc_6C505D: LitI4 5
  loc_6C5062: FLdRfVar var_C0
  loc_6C5065: Ary1StI2
  loc_6C5066: LitI2_Byte &HFF
  loc_6C5068: LitI4 6
  loc_6C506D: FLdRfVar var_C0
  loc_6C5070: Ary1StI2
  loc_6C5071: LitI2_Byte 0
  loc_6C5073: LitI4 7
  loc_6C5078: FLdRfVar var_C0
  loc_6C507B: Ary1StI2
  loc_6C507C: LitI2_Byte 0
  loc_6C507E: LitI4 8
  loc_6C5083: FLdRfVar var_C0
  loc_6C5086: Ary1StI2
  loc_6C5087: LitI2_Byte &HFF
  loc_6C5089: LitI4 9
  loc_6C508E: FLdRfVar var_C0
  loc_6C5091: Ary1StI2
  loc_6C5092: LitI2_Byte 0
  loc_6C5094: LitI4 &HA
  loc_6C5099: FLdRfVar var_C0
  loc_6C509C: Ary1StI2
  loc_6C509D: LitI2_Byte &HFF
  loc_6C509F: LitI4 &HB
  loc_6C50A4: FLdRfVar var_C0
  loc_6C50A7: Ary1StI2
  loc_6C50A8: LitI2_Byte &HFF
  loc_6C50AA: LitI4 &HC
  loc_6C50AF: FLdRfVar var_C0
  loc_6C50B2: Ary1StI2
  loc_6C50B3: LitI2_Byte &HFF
  loc_6C50B5: LitI4 &HD
  loc_6C50BA: FLdRfVar var_C0
  loc_6C50BD: Ary1StI2
  loc_6C50BE: LitI2_Byte &HFF
  loc_6C50C0: LitI4 &HE
  loc_6C50C5: FLdRfVar var_C0
  loc_6C50C8: Ary1StI2
  loc_6C50C9: LitI2_Byte 0
  loc_6C50CB: LitI4 &HF
  loc_6C50D0: FLdRfVar var_C0
  loc_6C50D3: Ary1StI2
  loc_6C50D4: LitStr "INSERT INTO Header (ReportNr, ShiftNr, DateOpen, TimeOpen, DateClose, TimeClose,"
  loc_6C50D7: FStStrCopy var_94
  loc_6C50DA: ILdRf var_94
  loc_6C50DD: LitStr "StationNr,DispatchsQty, ReportType, PPUMult, RazonSocial, ExtraData, Surtidor, ReportVer, DivMonto ) "
  loc_6C50E0: ConcatStr
  loc_6C50E1: FStStr var_94
  loc_6C50E4: ILdRf var_94
  loc_6C50E7: LitStr "VALUES ("
  loc_6C50EA: ConcatStr
  loc_6C50EB: FStStr var_94
  loc_6C50EE: LitI2_Byte 1
  loc_6C50F0: FStI2 var_A2
  loc_6C50F3: LitI2_Byte 1
  loc_6C50F5: FLdRfVar var_A4
  loc_6C50F8: LitI2_Byte &HF
  loc_6C50FA: ForI2 var_160
  loc_6C5100: FLdI2 var_A2
  loc_6C5103: FStI2 var_A6
  loc_6C5106: FLdI2 var_A6
  loc_6C5109: CI4UI1
  loc_6C510A: LitI4 1
  loc_6C510F: ILdI4 arg_10
  loc_6C5112: Ary1LdI4
  loc_6C5113: FnLenStr
  loc_6C5114: LeI4
  loc_6C5115: BranchF loc_6C5164
  loc_6C5118: LitVarI2 var_120, 1
  loc_6C511D: FLdI2 var_A6
  loc_6C5120: CI4UI1
  loc_6C5121: LitI4 1
  loc_6C5126: ILdI4 arg_10
  loc_6C5129: AryLock
  loc_6C512C: Ary1LdRf
  loc_6C512D: CVarRef
  loc_6C5132: FLdRfVar var_130
  loc_6C5135: ImpAdCallFPR4  = Mid(, , )
  loc_6C513A: AryUnlock
  loc_6C513D: FLdRfVar var_130
  loc_6C5140: LitVarStr var_100, ";"
  loc_6C5145: HardType
  loc_6C5146: EqVarBool
  loc_6C5148: FFreeVar var_120 = ""
  loc_6C514F: BranchF loc_6C5158
  loc_6C5152: Branch loc_6C5164
  loc_6C5155: Branch loc_6C5161
  loc_6C5158: FLdI2 var_A6
  loc_6C515B: LitI2_Byte 1
  loc_6C515D: AddI2
  loc_6C515E: FStI2 var_A6
  loc_6C5161: Branch loc_6C5106
  loc_6C5164: FLdI2 var_A6
  loc_6C5167: FLdI2 var_A2
  loc_6C516A: EqI2
  loc_6C516B: BranchF loc_6C51FA
  loc_6C516E: FLdI2 var_A4
  loc_6C5171: CI4UI1
  loc_6C5172: FLdRfVar var_C0
  loc_6C5175: Ary1LdI2
  loc_6C5176: BranchF loc_6C51B9
  loc_6C5179: ILdRf var_94
  loc_6C517C: CVarStr var_E0
  loc_6C517F: LitI4 &H22
  loc_6C5184: FLdRfVar var_120
  loc_6C5187: ImpAdCallFPR4  = Chr()
  loc_6C518C: FLdRfVar var_120
  loc_6C518F: ConcatVar var_130
  loc_6C5193: LitI4 &H22
  loc_6C5198: FLdRfVar var_14C
  loc_6C519B: ImpAdCallFPR4  = Chr()
  loc_6C51A0: FLdRfVar var_14C
  loc_6C51A3: ConcatVar var_15C
  loc_6C51A7: CStrVarTmp
  loc_6C51A8: FStStr var_94
  loc_6C51AB: FFreeVar var_120 = "": var_130 = "": var_14C = ""
  loc_6C51B6: Branch loc_6C51F7
  loc_6C51B9: FLdI2 var_A4
  loc_6C51BC: LitI2_Byte &HF
  loc_6C51BE: EqI2
  loc_6C51BF: BranchF loc_6C51ED
  loc_6C51C2: LitI2_Byte &H64
  loc_6C51C4: CR8I2
  loc_6C51C5: LitI2_Byte &HA
  loc_6C51C7: CR8I2
  loc_6C51C8: ImpAdLdUI1
  loc_6C51CC: CI2UI1
  loc_6C51CE: LitI2_Byte 1
  loc_6C51D0: SubI2
  loc_6C51D1: CR8I2
  loc_6C51D2: PwrR8R8
  loc_6C51D4: DivR8
  loc_6C51D5: FStFPR8 var_D0
  loc_6C51D8: ILdRf var_94
  loc_6C51DB: FLdFPR8 var_D0
  loc_6C51DE: CStrR8
  loc_6C51E0: FStStrNoPop var_134
  loc_6C51E3: ConcatStr
  loc_6C51E4: FStStr var_94
  loc_6C51E7: FFree1Str var_134
  loc_6C51EA: Branch loc_6C51F7
  loc_6C51ED: ILdRf var_94
  loc_6C51F0: LitStr "0"
  loc_6C51F3: ConcatStr
  loc_6C51F4: FStStr var_94
  loc_6C51F7: Branch loc_6C53DB
  loc_6C51FA: FLdI2 var_A4
  loc_6C51FD: LitI2_Byte &HB
  loc_6C51FF: EqI2
  loc_6C5200: FLdI2 var_A4
  loc_6C5203: LitI2_Byte &HC
  loc_6C5205: EqI2
  loc_6C5206: OrI4
  loc_6C5207: BranchF loc_6C52B2
  loc_6C520A: FLdI2 var_A6
  loc_6C520D: FLdI2 var_A2
  loc_6C5210: SubI2
  loc_6C5211: CVarI2 var_120
  loc_6C5214: FLdI2 var_A2
  loc_6C5217: CI4UI1
  loc_6C5218: LitI4 1
  loc_6C521D: ILdI4 arg_10
  loc_6C5220: AryLock
  loc_6C5223: Ary1LdRf
  loc_6C5224: CVarRef
  loc_6C5229: FLdRfVar var_130
  loc_6C522C: ImpAdCallFPR4  = Mid(, , )
  loc_6C5231: AryUnlock
  loc_6C5234: FLdRfVar var_130
  loc_6C5237: CStrVarTmp
  loc_6C5238: FStStr var_C8
  loc_6C523B: FFreeVar var_120 = ""
  loc_6C5242: ILdRf var_C8
  loc_6C5245: FnLenStr
  loc_6C5246: LitI4 2
  loc_6C524B: SubI4
  loc_6C524C: CVarI4
  loc_6C5250: LitI4 2
  loc_6C5255: FLdRfVar var_C8
  loc_6C5258: CVarRef
  loc_6C525D: FLdRfVar var_130
  loc_6C5260: ImpAdCallFPR4  = Mid(, , )
  loc_6C5265: FLdRfVar var_130
  loc_6C5268: CStrVarTmp
  loc_6C5269: FStStr var_C8
  loc_6C526C: FFreeVar var_120 = ""
  loc_6C5273: LitVarStr var_F0, "'"
  loc_6C5278: FLdRfVar var_C8
  loc_6C527B: CVarRef
  loc_6C5280: FLdRfVar var_120
  loc_6C5283: ImpAdCallFPR4  = Trim()
  loc_6C5288: FLdRfVar var_120
  loc_6C528B: ConcatVar var_130
  loc_6C528F: LitVarStr var_100, "'"
  loc_6C5294: ConcatVar var_14C
  loc_6C5298: CStrVarTmp
  loc_6C5299: FStStr var_C8
  loc_6C529C: FFreeVar var_120 = "": var_130 = ""
  loc_6C52A5: ILdRf var_94
  loc_6C52A8: ILdRf var_C8
  loc_6C52AB: ConcatStr
  loc_6C52AC: FStStr var_94
  loc_6C52AF: Branch loc_6C53DB
  loc_6C52B2: LitVarI2 var_120, 1
  loc_6C52B7: LitI4 4
  loc_6C52BC: ImpAdLdRf MemVar_74BEAC
  loc_6C52BF: CVarRef
  loc_6C52C4: FLdRfVar var_130
  loc_6C52C7: ImpAdCallFPR4  = Mid(, , )
  loc_6C52CC: FLdRfVar var_130
  loc_6C52CF: LitVarStr var_100, "1"
  loc_6C52D4: HardType
  loc_6C52D5: EqVarBool
  loc_6C52D7: FFreeVar var_120 = ""
  loc_6C52DE: BranchF loc_6C5397
  loc_6C52E1: FLdI2 var_A4
  loc_6C52E4: LitI2_Byte 8
  loc_6C52E6: EqI2
  loc_6C52E7: BranchF loc_6C5338
  loc_6C52EA: FLdI2 var_A6
  loc_6C52ED: FLdI2 var_A2
  loc_6C52F0: SubI2
  loc_6C52F1: CVarI2 var_120
  loc_6C52F4: FLdI2 var_A2
  loc_6C52F7: CI4UI1
  loc_6C52F8: LitI4 1
  loc_6C52FD: ILdI4 arg_10
  loc_6C5300: AryLock
  loc_6C5303: Ary1LdRf
  loc_6C5304: CVarRef
  loc_6C5309: FLdRfVar var_130
  loc_6C530C: ImpAdCallFPR4  = Mid(, , )
  loc_6C5311: AryUnlock
  loc_6C5314: FLdRfVar var_130
  loc_6C5317: CStrVarVal var_134
  loc_6C531B: ImpAdCallFPR4 push Val()
  loc_6C5320: FnIntR8
  loc_6C5322: CI4R8
  loc_6C5323: PopTmpLdAdStr var_164
  loc_6C5326: ImpAdCallFPR4 Proc_101_1_5D2D14()
  loc_6C532B: FFree1Str var_134
  loc_6C532E: FFreeVar var_120 = ""
  loc_6C5335: Branch loc_6C5397
  loc_6C5338: FLdI2 var_A4
  loc_6C533B: LitI2_Byte 3
  loc_6C533D: EqI2
  loc_6C533E: FLdI2 var_A4
  loc_6C5341: LitI2_Byte 4
  loc_6C5343: EqI2
  loc_6C5344: OrI4
  loc_6C5345: FLdI2 var_A4
  loc_6C5348: LitI2_Byte 5
  loc_6C534A: EqI2
  loc_6C534B: OrI4
  loc_6C534C: FLdI2 var_A4
  loc_6C534F: LitI2_Byte 6
  loc_6C5351: EqI2
  loc_6C5352: OrI4
  loc_6C5353: BranchF loc_6C5397
  loc_6C5356: FLdI2 var_A6
  loc_6C5359: FLdI2 var_A2
  loc_6C535C: SubI2
  loc_6C535D: CVarI2 var_120
  loc_6C5360: FLdI2 var_A2
  loc_6C5363: CI4UI1
  loc_6C5364: LitI4 1
  loc_6C5369: ILdI4 arg_10
  loc_6C536C: AryLock
  loc_6C536F: Ary1LdRf
  loc_6C5370: CVarRef
  loc_6C5375: FLdRfVar var_130
  loc_6C5378: ImpAdCallFPR4  = Mid(, , )
  loc_6C537D: AryUnlock
  loc_6C5380: FLdRfVar var_130
  loc_6C5383: CStrVarTmp
  loc_6C5384: PopTmpLdAdStr
  loc_6C5388: ImpAdCallFPR4 Proc_101_2_5D3D30()
  loc_6C538D: FFree1Str var_134
  loc_6C5390: FFreeVar var_120 = ""
  loc_6C5397: ILdRf var_94
  loc_6C539A: CVarStr var_100
  loc_6C539D: FLdI2 var_A6
  loc_6C53A0: FLdI2 var_A2
  loc_6C53A3: SubI2
  loc_6C53A4: CVarI2 var_120
  loc_6C53A7: FLdI2 var_A2
  loc_6C53AA: CI4UI1
  loc_6C53AB: LitI4 1
  loc_6C53B0: ILdI4 arg_10
  loc_6C53B3: AryLock
  loc_6C53B6: Ary1LdRf
  loc_6C53B7: CVarRef
  loc_6C53BC: FLdRfVar var_130
  loc_6C53BF: ImpAdCallFPR4  = Mid(, , )
  loc_6C53C4: AryUnlock
  loc_6C53C7: FLdRfVar var_130
  loc_6C53CA: ConcatVar var_14C
  loc_6C53CE: CStrVarTmp
  loc_6C53CF: FStStr var_94
  loc_6C53D2: FFreeVar var_120 = "": var_130 = ""
  loc_6C53DB: FLdI2 var_A4
  loc_6C53DE: LitI2_Byte 1
  loc_6C53E0: EqI2
  loc_6C53E1: BranchF loc_6C5425
  loc_6C53E4: FLdI2 var_A6
  loc_6C53E7: FLdI2 var_A2
  loc_6C53EA: SubI2
  loc_6C53EB: CVarI2 var_120
  loc_6C53EE: FLdI2 var_A2
  loc_6C53F1: CI4UI1
  loc_6C53F2: LitI4 1
  loc_6C53F7: ILdI4 arg_10
  loc_6C53FA: AryLock
  loc_6C53FD: Ary1LdRf
  loc_6C53FE: CVarRef
  loc_6C5403: FLdRfVar var_130
  loc_6C5406: ImpAdCallFPR4  = Mid(, , )
  loc_6C540B: AryUnlock
  loc_6C540E: FLdRfVar var_130
  loc_6C5411: CStrVarTmp
  loc_6C5412: PopTmpLdAdStr
  loc_6C5416: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6C541B: FFree1Str var_134
  loc_6C541E: FFreeVar var_120 = ""
  loc_6C5425: FLdI2 var_A4
  loc_6C5428: LitI2_Byte &HF
  loc_6C542A: LtI2
  loc_6C542B: BranchF loc_6C5438
  loc_6C542E: ILdRf var_94
  loc_6C5431: LitStr ", "
  loc_6C5434: ConcatStr
  loc_6C5435: FStStr var_94
  loc_6C5438: FLdI2 var_A6
  loc_6C543B: LitI2_Byte 1
  loc_6C543D: AddI2
  loc_6C543E: FStI2 var_A2
  loc_6C5441: FLdRfVar var_A4
  loc_6C5444: NextI2 var_160, loc_6C5100
  loc_6C5449: ILdRf var_94
  loc_6C544C: LitStr ")"
  loc_6C544F: ConcatStr
  loc_6C5450: FStStr var_94
  loc_6C5453: LitVarI4
  loc_6C545B: PopAdLdVar
  loc_6C545C: ILdRf var_94
  loc_6C545F: FLdPr var_8C
  loc_6C5462: Me.Execute from_stack_1, from_stack_2
  loc_6C5467: FLdRfVar var_104
  loc_6C546A: LitVar_Missing var_100
  loc_6C546D: PopAdLdVar
  loc_6C546E: LitVar_Missing var_F0
  loc_6C5471: PopAdLdVar
  loc_6C5472: LitVar_Missing var_E0
  loc_6C5475: PopAdLdVar
  loc_6C5476: LitStr "SELECT id FROM Header"
  loc_6C5479: FLdPr var_8C
  loc_6C547C: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C5481: FLdZeroAd var_104
  loc_6C5484: FStAdFunc var_90
  loc_6C5487: FLdPr var_90
  loc_6C548A: Me.MoveFirst
  loc_6C548F: FLdRfVar var_120
  loc_6C5492: FLdRfVar var_168
  loc_6C5495: LitVarStr var_E0, "id"
  loc_6C549A: PopAdLdVar
  loc_6C549B: FLdRfVar var_104
  loc_6C549E: FLdPr var_90
  loc_6C54A1:  = Me.Fields
  loc_6C54A6: FLdPr var_104
  loc_6C54A9: from_stack_2 = Me.Item(from_stack_1)
  loc_6C54AE: FLdPr var_168
  loc_6C54B1:  = Me.Value
  loc_6C54B6: FLdRfVar var_120
  loc_6C54B9: CI2Var
  loc_6C54BA: FMemStI2 arg_8(24)
  loc_6C54BF: FFreeAd var_104 = ""
  loc_6C54C6: FFree1Var var_120 = ""
  loc_6C54C9: FMemLdI2 arg_8(24)
  loc_6C54CE: PopTmpLdAd2 var_16A
  loc_6C54D1: FLdRfVar var_120
  loc_6C54D4: ImpAdCallFPR4  = Proc_101_4_627688()
  loc_6C54D9: FFree1Var var_120 = ""
  loc_6C54DC: LitVarI2 var_120, 1
  loc_6C54E1: LitI4 4
  loc_6C54E6: ImpAdLdRf MemVar_74BEAC
  loc_6C54E9: CVarRef
  loc_6C54EE: FLdRfVar var_130
  loc_6C54F1: ImpAdCallFPR4  = Mid(, , )
  loc_6C54F6: FLdRfVar var_130
  loc_6C54F9: LitVarStr var_100, "1"
  loc_6C54FE: HardType
  loc_6C54FF: EqVarBool
  loc_6C5501: FFreeVar var_120 = ""
  loc_6C5508: BranchF loc_6C5510
  loc_6C550B: ImpAdCallFPR4 Proc_101_5_666330()
  loc_6C5510: FLdPr var_8C
  loc_6C5513: Me.Close
  loc_6C5518: FLdRfVar var_9C
  loc_6C551B: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6C5520: LitI2_Byte &HFF
  loc_6C5522: FStI2 var_86
  loc_6C5525: ExitProcI2
  loc_6C5526: ImpAdCallFPR4 Reset()
  loc_6C552B: FLdRfVar var_134
  loc_6C552E: ImpAdCallI2 Err 'rtcErrObj
  loc_6C5533: FStAdFunc var_104
  loc_6C5536: FLdPr var_104
  loc_6C5539:  = Err.Description
  loc_6C553E: FLdZeroAd var_134
  loc_6C5541: IStStr
  loc_6C5545: FFree1Ad var_104
  loc_6C5548: FLdRfVar var_164
  loc_6C554B: ImpAdCallI2 Err 'rtcErrObj
  loc_6C5550: FStAdFunc var_104
  loc_6C5553: FLdPr var_104
  loc_6C5556:  = Err.Number
  loc_6C555B: ILdRf var_164
  loc_6C555E: IStI4 arg_20
  loc_6C5561: FFree1Ad var_104
  loc_6C5564: LitI2_Byte 0
  loc_6C5566: FStI2 var_86
  loc_6C5569: ExitProcI2
  loc_6C556A: ExitProcI2
End Function

Private Function Proc_101_19_61BD94() '61BD94
  'Data Table: 4067BC
  loc_61BC78: FLdRfVar var_F8
  loc_61BC7B: LitVar_Missing var_F4
  loc_61BC7E: PopAdLdVar
  loc_61BC7F: LitVar_Missing var_E4
  loc_61BC82: PopAdLdVar
  loc_61BC83: LitVar_Missing var_D4
  loc_61BC86: PopAdLdVar
  loc_61BC87: FLdRfVar var_A8
  loc_61BC8A: FLdRfVar var_A4
  loc_61BC8D: ImpAdLdRf MemVar_7520D4
  loc_61BC90: NewIfNullPr Global
  loc_61BC93:  = Global.App
  loc_61BC98: FLdPr var_A4
  loc_61BC9B:  = App.Path
  loc_61BCA0: ILdRf var_A8
  loc_61BCA3: LitStr "\reporte.mdb"
  loc_61BCA6: ConcatStr
  loc_61BCA7: FStStrNoPop var_C4
  loc_61BCAA: FLdRfVar var_C0
  loc_61BCAD: LitVarI2 var_BC, 0
  loc_61BCB2: PopAdLdVar
  loc_61BCB3: FLdRfVar var_AC
  loc_61BCB6: ImpAdLdRf MemVar_752164
  loc_61BCB9: NewIfNullPr Me
  loc_61BCBC:  = Me.DBEngine.Workspaces
  loc_61BCC1: FLdPr var_AC
  loc_61BCC4: from_stack_2 = Me.Item(from_stack_1)
  loc_61BCC9: FLdPr var_C0
  loc_61BCCC: Me.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_61BCD1: FLdZeroAd var_F8
  loc_61BCD4: FStAdFunc var_9C
  loc_61BCD7: FFreeStr var_A8 = ""
  loc_61BCDE: FFreeAd var_A4 = "": var_AC = ""
  loc_61BCE7: FLdRfVar var_A4
  loc_61BCEA: LitVar_Missing var_E4
  loc_61BCED: PopAdLdVar
  loc_61BCEE: LitVar_Missing var_D4
  loc_61BCF1: PopAdLdVar
  loc_61BCF2: LitVar_Missing var_BC
  loc_61BCF5: PopAdLdVar
  loc_61BCF6: LitStr "select ReportVer from header"
  loc_61BCF9: FLdPr var_9C
  loc_61BCFC: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_61BD01: FLdZeroAd var_A4
  loc_61BD04: FStAdFunc var_98
  loc_61BD07: FLdRfVar var_108
  loc_61BD0A: FLdRfVar var_AC
  loc_61BD0D: LitVarStr var_BC, "ReportVer"
  loc_61BD12: PopAdLdVar
  loc_61BD13: FLdRfVar var_A4
  loc_61BD16: FLdPr var_98
  loc_61BD19:  = Me.Fields
  loc_61BD1E: FLdPr var_A4
  loc_61BD21: from_stack_2 = Me.Item(from_stack_1)
  loc_61BD26: FLdPr var_AC
  loc_61BD29:  = Me.Value
  loc_61BD2E: FLdRfVar var_108
  loc_61BD31: LitVarStr var_D4, vbNullString
  loc_61BD36: ConcatVar var_118
  loc_61BD3A: CStrVarTmp
  loc_61BD3B: FStStr var_A0
  loc_61BD3E: FFreeAd var_A4 = ""
  loc_61BD45: FFreeVar var_108 = ""
  loc_61BD4C: FLdPr var_98
  loc_61BD4F: Me.Close
  loc_61BD54: LitNothing
  loc_61BD56: CastAd
  loc_61BD59: FStAdFunc var_98
  loc_61BD5C: FLdPr var_9C
  loc_61BD5F: Me.Close
  loc_61BD64: LitNothing
  loc_61BD66: CastAd
  loc_61BD69: FStAdFunc var_9C
  loc_61BD6C: ILdRf var_A0
  loc_61BD6F: LitStr vbNullString
  loc_61BD72: EqStr
  loc_61BD74: BranchF loc_61BD83
  loc_61BD77: LitVarStr var_BC, "repo1.rpt"
  loc_61BD7C: FStVarCopy
  loc_61BD80: Branch loc_61BD8D
  loc_61BD83: ILdRf var_A0
  loc_61BD86: CVarStr var_BC
  loc_61BD89: FStVarCopy
  loc_61BD8D: ExitProcCb
End Function

Private Function Proc_101_20_6ED7EC() '6ED7EC
  'Data Table: 4067BC
  loc_6ECA18: LitI4 1
  loc_6ECA1D: FMemLdRf unk_4067C5
  loc_6ECA22: Ary1LdUI1
  loc_6ECA24: CI2UI1
  loc_6ECA26: LitI2_Byte 1
  loc_6ECA28: EqI2
  loc_6ECA29: BranchF loc_6ECA6F
  loc_6ECA2C: LitVarI2 var_A4, 0
  loc_6ECA31: PopAdLdVar
  loc_6ECA32: LitStr "VenporTipodePago;"
  loc_6ECA35: LitI2_Byte 1
  loc_6ECA37: CStrUI1
  loc_6ECA39: FStStrNoPop var_90
  loc_6ECA3C: ConcatStr
  loc_6ECA3D: FStStrNoPop var_94
  loc_6ECA40: LitStr ";true"
  loc_6ECA43: ConcatStr
  loc_6ECA44: CVarStr var_B4
  loc_6ECA47: PopAdLdVar
  loc_6ECA48: ImpAdLdRf MemVar_74C760
  loc_6ECA4B: NewIfNullPr Formx
  loc_6ECA4E: VCallAd Control_ID_CrystalReport1
  loc_6ECA51: FStAdFunc var_B8
  loc_6ECA54: FLdPr var_B8
  loc_6ECA57: LateIdCallSt
  loc_6ECA5F: FFreeStr var_90 = ""
  loc_6ECA66: FFree1Ad var_B8
  loc_6ECA69: FFree1Var var_B4 = ""
  loc_6ECA6C: Branch loc_6ECAAF
  loc_6ECA6F: LitVarI2 var_A4, 0
  loc_6ECA74: PopAdLdVar
  loc_6ECA75: LitStr "VenporTipodePago;"
  loc_6ECA78: LitI2_Byte 0
  loc_6ECA7A: CStrUI1
  loc_6ECA7C: FStStrNoPop var_90
  loc_6ECA7F: ConcatStr
  loc_6ECA80: FStStrNoPop var_94
  loc_6ECA83: LitStr ";true"
  loc_6ECA86: ConcatStr
  loc_6ECA87: CVarStr var_B4
  loc_6ECA8A: PopAdLdVar
  loc_6ECA8B: ImpAdLdRf MemVar_74C760
  loc_6ECA8E: NewIfNullPr Formx
  loc_6ECA91: VCallAd Control_ID_CrystalReport1
  loc_6ECA94: FStAdFunc var_B8
  loc_6ECA97: FLdPr var_B8
  loc_6ECA9A: LateIdCallSt
  loc_6ECAA2: FFreeStr var_90 = ""
  loc_6ECAA9: FFree1Ad var_B8
  loc_6ECAAC: FFree1Var var_B4 = ""
  loc_6ECAAF: LitI4 2
  loc_6ECAB4: FMemLdRf unk_4067C5
  loc_6ECAB9: Ary1LdUI1
  loc_6ECABB: CI2UI1
  loc_6ECABD: LitI2_Byte 1
  loc_6ECABF: EqI2
  loc_6ECAC0: BranchF loc_6ECB06
  loc_6ECAC3: LitVarI2 var_A4, 1
  loc_6ECAC8: PopAdLdVar
  loc_6ECAC9: LitStr "VentasTipodePago;"
  loc_6ECACC: LitI2_Byte 1
  loc_6ECACE: CStrUI1
  loc_6ECAD0: FStStrNoPop var_90
  loc_6ECAD3: ConcatStr
  loc_6ECAD4: FStStrNoPop var_94
  loc_6ECAD7: LitStr ";true"
  loc_6ECADA: ConcatStr
  loc_6ECADB: CVarStr var_B4
  loc_6ECADE: PopAdLdVar
  loc_6ECADF: ImpAdLdRf MemVar_74C760
  loc_6ECAE2: NewIfNullPr Formx
  loc_6ECAE5: VCallAd Control_ID_CrystalReport1
  loc_6ECAE8: FStAdFunc var_B8
  loc_6ECAEB: FLdPr var_B8
  loc_6ECAEE: LateIdCallSt
  loc_6ECAF6: FFreeStr var_90 = ""
  loc_6ECAFD: FFree1Ad var_B8
  loc_6ECB00: FFree1Var var_B4 = ""
  loc_6ECB03: Branch loc_6ECB46
  loc_6ECB06: LitVarI2 var_A4, 1
  loc_6ECB0B: PopAdLdVar
  loc_6ECB0C: LitStr "VentasTipodePago;"
  loc_6ECB0F: LitI2_Byte 0
  loc_6ECB11: CStrUI1
  loc_6ECB13: FStStrNoPop var_90
  loc_6ECB16: ConcatStr
  loc_6ECB17: FStStrNoPop var_94
  loc_6ECB1A: LitStr ";true"
  loc_6ECB1D: ConcatStr
  loc_6ECB1E: CVarStr var_B4
  loc_6ECB21: PopAdLdVar
  loc_6ECB22: ImpAdLdRf MemVar_74C760
  loc_6ECB25: NewIfNullPr Formx
  loc_6ECB28: VCallAd Control_ID_CrystalReport1
  loc_6ECB2B: FStAdFunc var_B8
  loc_6ECB2E: FLdPr var_B8
  loc_6ECB31: LateIdCallSt
  loc_6ECB39: FFreeStr var_90 = ""
  loc_6ECB40: FFree1Ad var_B8
  loc_6ECB43: FFree1Var var_B4 = ""
  loc_6ECB46: LitI4 3
  loc_6ECB4B: FMemLdRf unk_4067C5
  loc_6ECB50: Ary1LdUI1
  loc_6ECB52: CI2UI1
  loc_6ECB54: LitI2_Byte 1
  loc_6ECB56: EqI2
  loc_6ECB57: BranchF loc_6ECB9D
  loc_6ECB5A: LitVarI2 var_A4, 2
  loc_6ECB5F: PopAdLdVar
  loc_6ECB60: LitStr "VentastotSurt;"
  loc_6ECB63: LitI2_Byte 1
  loc_6ECB65: CStrUI1
  loc_6ECB67: FStStrNoPop var_90
  loc_6ECB6A: ConcatStr
  loc_6ECB6B: FStStrNoPop var_94
  loc_6ECB6E: LitStr ";true"
  loc_6ECB71: ConcatStr
  loc_6ECB72: CVarStr var_B4
  loc_6ECB75: PopAdLdVar
  loc_6ECB76: ImpAdLdRf MemVar_74C760
  loc_6ECB79: NewIfNullPr Formx
  loc_6ECB7C: VCallAd Control_ID_CrystalReport1
  loc_6ECB7F: FStAdFunc var_B8
  loc_6ECB82: FLdPr var_B8
  loc_6ECB85: LateIdCallSt
  loc_6ECB8D: FFreeStr var_90 = ""
  loc_6ECB94: FFree1Ad var_B8
  loc_6ECB97: FFree1Var var_B4 = ""
  loc_6ECB9A: Branch loc_6ECBDD
  loc_6ECB9D: LitVarI2 var_A4, 2
  loc_6ECBA2: PopAdLdVar
  loc_6ECBA3: LitStr "VentastotSurt;"
  loc_6ECBA6: LitI2_Byte 0
  loc_6ECBA8: CStrUI1
  loc_6ECBAA: FStStrNoPop var_90
  loc_6ECBAD: ConcatStr
  loc_6ECBAE: FStStrNoPop var_94
  loc_6ECBB1: LitStr ";true"
  loc_6ECBB4: ConcatStr
  loc_6ECBB5: CVarStr var_B4
  loc_6ECBB8: PopAdLdVar
  loc_6ECBB9: ImpAdLdRf MemVar_74C760
  loc_6ECBBC: NewIfNullPr Formx
  loc_6ECBBF: VCallAd Control_ID_CrystalReport1
  loc_6ECBC2: FStAdFunc var_B8
  loc_6ECBC5: FLdPr var_B8
  loc_6ECBC8: LateIdCallSt
  loc_6ECBD0: FFreeStr var_90 = ""
  loc_6ECBD7: FFree1Ad var_B8
  loc_6ECBDA: FFree1Var var_B4 = ""
  loc_6ECBDD: LitI4 4
  loc_6ECBE2: FMemLdRf unk_4067C5
  loc_6ECBE7: Ary1LdUI1
  loc_6ECBE9: CI2UI1
  loc_6ECBEB: LitI2_Byte 1
  loc_6ECBED: EqI2
  loc_6ECBEE: BranchF loc_6ECC34
  loc_6ECBF1: LitVarI2 var_A4, 3
  loc_6ECBF6: PopAdLdVar
  loc_6ECBF7: LitStr "VentastotSurtContado;"
  loc_6ECBFA: LitI2_Byte 1
  loc_6ECBFC: CStrUI1
  loc_6ECBFE: FStStrNoPop var_90
  loc_6ECC01: ConcatStr
  loc_6ECC02: FStStrNoPop var_94
  loc_6ECC05: LitStr ";true"
  loc_6ECC08: ConcatStr
  loc_6ECC09: CVarStr var_B4
  loc_6ECC0C: PopAdLdVar
  loc_6ECC0D: ImpAdLdRf MemVar_74C760
  loc_6ECC10: NewIfNullPr Formx
  loc_6ECC13: VCallAd Control_ID_CrystalReport1
  loc_6ECC16: FStAdFunc var_B8
  loc_6ECC19: FLdPr var_B8
  loc_6ECC1C: LateIdCallSt
  loc_6ECC24: FFreeStr var_90 = ""
  loc_6ECC2B: FFree1Ad var_B8
  loc_6ECC2E: FFree1Var var_B4 = ""
  loc_6ECC31: Branch loc_6ECC74
  loc_6ECC34: LitVarI2 var_A4, 3
  loc_6ECC39: PopAdLdVar
  loc_6ECC3A: LitStr "VentastotSurtContado;"
  loc_6ECC3D: LitI2_Byte 0
  loc_6ECC3F: CStrUI1
  loc_6ECC41: FStStrNoPop var_90
  loc_6ECC44: ConcatStr
  loc_6ECC45: FStStrNoPop var_94
  loc_6ECC48: LitStr ";true"
  loc_6ECC4B: ConcatStr
  loc_6ECC4C: CVarStr var_B4
  loc_6ECC4F: PopAdLdVar
  loc_6ECC50: ImpAdLdRf MemVar_74C760
  loc_6ECC53: NewIfNullPr Formx
  loc_6ECC56: VCallAd Control_ID_CrystalReport1
  loc_6ECC59: FStAdFunc var_B8
  loc_6ECC5C: FLdPr var_B8
  loc_6ECC5F: LateIdCallSt
  loc_6ECC67: FFreeStr var_90 = ""
  loc_6ECC6E: FFree1Ad var_B8
  loc_6ECC71: FFree1Var var_B4 = ""
  loc_6ECC74: LitI4 5
  loc_6ECC79: FMemLdRf unk_4067C5
  loc_6ECC7E: Ary1LdUI1
  loc_6ECC80: CI2UI1
  loc_6ECC82: LitI2_Byte 1
  loc_6ECC84: EqI2
  loc_6ECC85: BranchF loc_6ECCCB
  loc_6ECC88: LitVarI2 var_A4, 4
  loc_6ECC8D: PopAdLdVar
  loc_6ECC8E: LitStr "VentastotPSurt;"
  loc_6ECC91: LitI2_Byte 1
  loc_6ECC93: CStrUI1
  loc_6ECC95: FStStrNoPop var_90
  loc_6ECC98: ConcatStr
  loc_6ECC99: FStStrNoPop var_94
  loc_6ECC9C: LitStr ";true"
  loc_6ECC9F: ConcatStr
  loc_6ECCA0: CVarStr var_B4
  loc_6ECCA3: PopAdLdVar
  loc_6ECCA4: ImpAdLdRf MemVar_74C760
  loc_6ECCA7: NewIfNullPr Formx
  loc_6ECCAA: VCallAd Control_ID_CrystalReport1
  loc_6ECCAD: FStAdFunc var_B8
  loc_6ECCB0: FLdPr var_B8
  loc_6ECCB3: LateIdCallSt
  loc_6ECCBB: FFreeStr var_90 = ""
  loc_6ECCC2: FFree1Ad var_B8
  loc_6ECCC5: FFree1Var var_B4 = ""
  loc_6ECCC8: Branch loc_6ECD0B
  loc_6ECCCB: LitVarI2 var_A4, 4
  loc_6ECCD0: PopAdLdVar
  loc_6ECCD1: LitStr "VentastotPSurt;"
  loc_6ECCD4: LitI2_Byte 0
  loc_6ECCD6: CStrUI1
  loc_6ECCD8: FStStrNoPop var_90
  loc_6ECCDB: ConcatStr
  loc_6ECCDC: FStStrNoPop var_94
  loc_6ECCDF: LitStr ";true"
  loc_6ECCE2: ConcatStr
  loc_6ECCE3: CVarStr var_B4
  loc_6ECCE6: PopAdLdVar
  loc_6ECCE7: ImpAdLdRf MemVar_74C760
  loc_6ECCEA: NewIfNullPr Formx
  loc_6ECCED: VCallAd Control_ID_CrystalReport1
  loc_6ECCF0: FStAdFunc var_B8
  loc_6ECCF3: FLdPr var_B8
  loc_6ECCF6: LateIdCallSt
  loc_6ECCFE: FFreeStr var_90 = ""
  loc_6ECD05: FFree1Ad var_B8
  loc_6ECD08: FFree1Var var_B4 = ""
  loc_6ECD0B: LitI4 6
  loc_6ECD10: FMemLdRf unk_4067C5
  loc_6ECD15: Ary1LdUI1
  loc_6ECD17: CI2UI1
  loc_6ECD19: LitI2_Byte 1
  loc_6ECD1B: EqI2
  loc_6ECD1C: BranchF loc_6ECD62
  loc_6ECD1F: LitVarI2 var_A4, 5
  loc_6ECD24: PopAdLdVar
  loc_6ECD25: LitStr "VentastotPSSinRet;"
  loc_6ECD28: LitI2_Byte 1
  loc_6ECD2A: CStrUI1
  loc_6ECD2C: FStStrNoPop var_90
  loc_6ECD2F: ConcatStr
  loc_6ECD30: FStStrNoPop var_94
  loc_6ECD33: LitStr ";true"
  loc_6ECD36: ConcatStr
  loc_6ECD37: CVarStr var_B4
  loc_6ECD3A: PopAdLdVar
  loc_6ECD3B: ImpAdLdRf MemVar_74C760
  loc_6ECD3E: NewIfNullPr Formx
  loc_6ECD41: VCallAd Control_ID_CrystalReport1
  loc_6ECD44: FStAdFunc var_B8
  loc_6ECD47: FLdPr var_B8
  loc_6ECD4A: LateIdCallSt
  loc_6ECD52: FFreeStr var_90 = ""
  loc_6ECD59: FFree1Ad var_B8
  loc_6ECD5C: FFree1Var var_B4 = ""
  loc_6ECD5F: Branch loc_6ECDA2
  loc_6ECD62: LitVarI2 var_A4, 5
  loc_6ECD67: PopAdLdVar
  loc_6ECD68: LitStr "VentastotPSSinRet;"
  loc_6ECD6B: LitI2_Byte 0
  loc_6ECD6D: CStrUI1
  loc_6ECD6F: FStStrNoPop var_90
  loc_6ECD72: ConcatStr
  loc_6ECD73: FStStrNoPop var_94
  loc_6ECD76: LitStr ";true"
  loc_6ECD79: ConcatStr
  loc_6ECD7A: CVarStr var_B4
  loc_6ECD7D: PopAdLdVar
  loc_6ECD7E: ImpAdLdRf MemVar_74C760
  loc_6ECD81: NewIfNullPr Formx
  loc_6ECD84: VCallAd Control_ID_CrystalReport1
  loc_6ECD87: FStAdFunc var_B8
  loc_6ECD8A: FLdPr var_B8
  loc_6ECD8D: LateIdCallSt
  loc_6ECD95: FFreeStr var_90 = ""
  loc_6ECD9C: FFree1Ad var_B8
  loc_6ECD9F: FFree1Var var_B4 = ""
  loc_6ECDA2: LitI4 7
  loc_6ECDA7: FMemLdRf unk_4067C5
  loc_6ECDAC: Ary1LdUI1
  loc_6ECDAE: CI2UI1
  loc_6ECDB0: LitI2_Byte 1
  loc_6ECDB2: EqI2
  loc_6ECDB3: BranchF loc_6ECDF9
  loc_6ECDB6: LitVarI2 var_A4, 6
  loc_6ECDBB: PopAdLdVar
  loc_6ECDBC: LitStr "VentastotSSinControl;"
  loc_6ECDBF: LitI2_Byte 1
  loc_6ECDC1: CStrUI1
  loc_6ECDC3: FStStrNoPop var_90
  loc_6ECDC6: ConcatStr
  loc_6ECDC7: FStStrNoPop var_94
  loc_6ECDCA: LitStr ";true"
  loc_6ECDCD: ConcatStr
  loc_6ECDCE: CVarStr var_B4
  loc_6ECDD1: PopAdLdVar
  loc_6ECDD2: ImpAdLdRf MemVar_74C760
  loc_6ECDD5: NewIfNullPr Formx
  loc_6ECDD8: VCallAd Control_ID_CrystalReport1
  loc_6ECDDB: FStAdFunc var_B8
  loc_6ECDDE: FLdPr var_B8
  loc_6ECDE1: LateIdCallSt
  loc_6ECDE9: FFreeStr var_90 = ""
  loc_6ECDF0: FFree1Ad var_B8
  loc_6ECDF3: FFree1Var var_B4 = ""
  loc_6ECDF6: Branch loc_6ECE39
  loc_6ECDF9: LitVarI2 var_A4, 6
  loc_6ECDFE: PopAdLdVar
  loc_6ECDFF: LitStr "VentastotSSinControl;"
  loc_6ECE02: LitI2_Byte 0
  loc_6ECE04: CStrUI1
  loc_6ECE06: FStStrNoPop var_90
  loc_6ECE09: ConcatStr
  loc_6ECE0A: FStStrNoPop var_94
  loc_6ECE0D: LitStr ";true"
  loc_6ECE10: ConcatStr
  loc_6ECE11: CVarStr var_B4
  loc_6ECE14: PopAdLdVar
  loc_6ECE15: ImpAdLdRf MemVar_74C760
  loc_6ECE18: NewIfNullPr Formx
  loc_6ECE1B: VCallAd Control_ID_CrystalReport1
  loc_6ECE1E: FStAdFunc var_B8
  loc_6ECE21: FLdPr var_B8
  loc_6ECE24: LateIdCallSt
  loc_6ECE2C: FFreeStr var_90 = ""
  loc_6ECE33: FFree1Ad var_B8
  loc_6ECE36: FFree1Var var_B4 = ""
  loc_6ECE39: LitI4 8
  loc_6ECE3E: FMemLdRf unk_4067C5
  loc_6ECE43: Ary1LdUI1
  loc_6ECE45: CI2UI1
  loc_6ECE47: LitI2_Byte 1
  loc_6ECE49: EqI2
  loc_6ECE4A: BranchF loc_6ECE90
  loc_6ECE4D: LitVarI2 var_A4, 7
  loc_6ECE52: PopAdLdVar
  loc_6ECE53: LitStr "TotElecSurt;"
  loc_6ECE56: LitI2_Byte 1
  loc_6ECE58: CStrUI1
  loc_6ECE5A: FStStrNoPop var_90
  loc_6ECE5D: ConcatStr
  loc_6ECE5E: FStStrNoPop var_94
  loc_6ECE61: LitStr ";true"
  loc_6ECE64: ConcatStr
  loc_6ECE65: CVarStr var_B4
  loc_6ECE68: PopAdLdVar
  loc_6ECE69: ImpAdLdRf MemVar_74C760
  loc_6ECE6C: NewIfNullPr Formx
  loc_6ECE6F: VCallAd Control_ID_CrystalReport1
  loc_6ECE72: FStAdFunc var_B8
  loc_6ECE75: FLdPr var_B8
  loc_6ECE78: LateIdCallSt
  loc_6ECE80: FFreeStr var_90 = ""
  loc_6ECE87: FFree1Ad var_B8
  loc_6ECE8A: FFree1Var var_B4 = ""
  loc_6ECE8D: Branch loc_6ECED0
  loc_6ECE90: LitVarI2 var_A4, 7
  loc_6ECE95: PopAdLdVar
  loc_6ECE96: LitStr "TotElecSurt;"
  loc_6ECE99: LitI2_Byte 0
  loc_6ECE9B: CStrUI1
  loc_6ECE9D: FStStrNoPop var_90
  loc_6ECEA0: ConcatStr
  loc_6ECEA1: FStStrNoPop var_94
  loc_6ECEA4: LitStr ";true"
  loc_6ECEA7: ConcatStr
  loc_6ECEA8: CVarStr var_B4
  loc_6ECEAB: PopAdLdVar
  loc_6ECEAC: ImpAdLdRf MemVar_74C760
  loc_6ECEAF: NewIfNullPr Formx
  loc_6ECEB2: VCallAd Control_ID_CrystalReport1
  loc_6ECEB5: FStAdFunc var_B8
  loc_6ECEB8: FLdPr var_B8
  loc_6ECEBB: LateIdCallSt
  loc_6ECEC3: FFreeStr var_90 = ""
  loc_6ECECA: FFree1Ad var_B8
  loc_6ECECD: FFree1Var var_B4 = ""
  loc_6ECED0: LitI4 9
  loc_6ECED5: FMemLdRf unk_4067C5
  loc_6ECEDA: Ary1LdUI1
  loc_6ECEDC: CI2UI1
  loc_6ECEDE: LitI2_Byte 1
  loc_6ECEE0: EqI2
  loc_6ECEE1: BranchF loc_6ECF27
  loc_6ECEE4: LitVarI2 var_A4, 8
  loc_6ECEE9: PopAdLdVar
  loc_6ECEEA: LitStr "StockTanques;"
  loc_6ECEED: LitI2_Byte 1
  loc_6ECEEF: CStrUI1
  loc_6ECEF1: FStStrNoPop var_90
  loc_6ECEF4: ConcatStr
  loc_6ECEF5: FStStrNoPop var_94
  loc_6ECEF8: LitStr ";true"
  loc_6ECEFB: ConcatStr
  loc_6ECEFC: CVarStr var_B4
  loc_6ECEFF: PopAdLdVar
  loc_6ECF00: ImpAdLdRf MemVar_74C760
  loc_6ECF03: NewIfNullPr Formx
  loc_6ECF06: VCallAd Control_ID_CrystalReport1
  loc_6ECF09: FStAdFunc var_B8
  loc_6ECF0C: FLdPr var_B8
  loc_6ECF0F: LateIdCallSt
  loc_6ECF17: FFreeStr var_90 = ""
  loc_6ECF1E: FFree1Ad var_B8
  loc_6ECF21: FFree1Var var_B4 = ""
  loc_6ECF24: Branch loc_6ECF67
  loc_6ECF27: LitVarI2 var_A4, 8
  loc_6ECF2C: PopAdLdVar
  loc_6ECF2D: LitStr "StockTanques;"
  loc_6ECF30: LitI2_Byte 0
  loc_6ECF32: CStrUI1
  loc_6ECF34: FStStrNoPop var_90
  loc_6ECF37: ConcatStr
  loc_6ECF38: FStStrNoPop var_94
  loc_6ECF3B: LitStr ";true"
  loc_6ECF3E: ConcatStr
  loc_6ECF3F: CVarStr var_B4
  loc_6ECF42: PopAdLdVar
  loc_6ECF43: ImpAdLdRf MemVar_74C760
  loc_6ECF46: NewIfNullPr Formx
  loc_6ECF49: VCallAd Control_ID_CrystalReport1
  loc_6ECF4C: FStAdFunc var_B8
  loc_6ECF4F: FLdPr var_B8
  loc_6ECF52: LateIdCallSt
  loc_6ECF5A: FFreeStr var_90 = ""
  loc_6ECF61: FFree1Ad var_B8
  loc_6ECF64: FFree1Var var_B4 = ""
  loc_6ECF67: LitI4 &HA
  loc_6ECF6C: FMemLdRf unk_4067C5
  loc_6ECF71: Ary1LdUI1
  loc_6ECF73: CI2UI1
  loc_6ECF75: LitI2_Byte 1
  loc_6ECF77: EqI2
  loc_6ECF78: BranchF loc_6ECFBE
  loc_6ECF7B: LitVarI2 var_A4, 9
  loc_6ECF80: PopAdLdVar
  loc_6ECF81: LitStr "StockProducto;"
  loc_6ECF84: LitI2_Byte 1
  loc_6ECF86: CStrUI1
  loc_6ECF88: FStStrNoPop var_90
  loc_6ECF8B: ConcatStr
  loc_6ECF8C: FStStrNoPop var_94
  loc_6ECF8F: LitStr ";true"
  loc_6ECF92: ConcatStr
  loc_6ECF93: CVarStr var_B4
  loc_6ECF96: PopAdLdVar
  loc_6ECF97: ImpAdLdRf MemVar_74C760
  loc_6ECF9A: NewIfNullPr Formx
  loc_6ECF9D: VCallAd Control_ID_CrystalReport1
  loc_6ECFA0: FStAdFunc var_B8
  loc_6ECFA3: FLdPr var_B8
  loc_6ECFA6: LateIdCallSt
  loc_6ECFAE: FFreeStr var_90 = ""
  loc_6ECFB5: FFree1Ad var_B8
  loc_6ECFB8: FFree1Var var_B4 = ""
  loc_6ECFBB: Branch loc_6ECFFE
  loc_6ECFBE: LitVarI2 var_A4, 9
  loc_6ECFC3: PopAdLdVar
  loc_6ECFC4: LitStr "StockProducto;"
  loc_6ECFC7: LitI2_Byte 0
  loc_6ECFC9: CStrUI1
  loc_6ECFCB: FStStrNoPop var_90
  loc_6ECFCE: ConcatStr
  loc_6ECFCF: FStStrNoPop var_94
  loc_6ECFD2: LitStr ";true"
  loc_6ECFD5: ConcatStr
  loc_6ECFD6: CVarStr var_B4
  loc_6ECFD9: PopAdLdVar
  loc_6ECFDA: ImpAdLdRf MemVar_74C760
  loc_6ECFDD: NewIfNullPr Formx
  loc_6ECFE0: VCallAd Control_ID_CrystalReport1
  loc_6ECFE3: FStAdFunc var_B8
  loc_6ECFE6: FLdPr var_B8
  loc_6ECFE9: LateIdCallSt
  loc_6ECFF1: FFreeStr var_90 = ""
  loc_6ECFF8: FFree1Ad var_B8
  loc_6ECFFB: FFree1Var var_B4 = ""
  loc_6ECFFE: LitI4 &HB
  loc_6ED003: FMemLdRf unk_4067C5
  loc_6ED008: Ary1LdUI1
  loc_6ED00A: CI2UI1
  loc_6ED00C: LitI2_Byte 1
  loc_6ED00E: EqI2
  loc_6ED00F: BranchF loc_6ED055
  loc_6ED012: LitVarI2 var_A4, 10
  loc_6ED017: PopAdLdVar
  loc_6ED018: LitStr "TotalTanques;"
  loc_6ED01B: LitI2_Byte 1
  loc_6ED01D: CStrUI1
  loc_6ED01F: FStStrNoPop var_90
  loc_6ED022: ConcatStr
  loc_6ED023: FStStrNoPop var_94
  loc_6ED026: LitStr ";true"
  loc_6ED029: ConcatStr
  loc_6ED02A: CVarStr var_B4
  loc_6ED02D: PopAdLdVar
  loc_6ED02E: ImpAdLdRf MemVar_74C760
  loc_6ED031: NewIfNullPr Formx
  loc_6ED034: VCallAd Control_ID_CrystalReport1
  loc_6ED037: FStAdFunc var_B8
  loc_6ED03A: FLdPr var_B8
  loc_6ED03D: LateIdCallSt
  loc_6ED045: FFreeStr var_90 = ""
  loc_6ED04C: FFree1Ad var_B8
  loc_6ED04F: FFree1Var var_B4 = ""
  loc_6ED052: Branch loc_6ED095
  loc_6ED055: LitVarI2 var_A4, 10
  loc_6ED05A: PopAdLdVar
  loc_6ED05B: LitStr "TotalTanques;"
  loc_6ED05E: LitI2_Byte 0
  loc_6ED060: CStrUI1
  loc_6ED062: FStStrNoPop var_90
  loc_6ED065: ConcatStr
  loc_6ED066: FStStrNoPop var_94
  loc_6ED069: LitStr ";true"
  loc_6ED06C: ConcatStr
  loc_6ED06D: CVarStr var_B4
  loc_6ED070: PopAdLdVar
  loc_6ED071: ImpAdLdRf MemVar_74C760
  loc_6ED074: NewIfNullPr Formx
  loc_6ED077: VCallAd Control_ID_CrystalReport1
  loc_6ED07A: FStAdFunc var_B8
  loc_6ED07D: FLdPr var_B8
  loc_6ED080: LateIdCallSt
  loc_6ED088: FFreeStr var_90 = ""
  loc_6ED08F: FFree1Ad var_B8
  loc_6ED092: FFree1Var var_B4 = ""
  loc_6ED095: LitI4 &HC
  loc_6ED09A: FMemLdRf unk_4067C5
  loc_6ED09F: Ary1LdUI1
  loc_6ED0A1: CI2UI1
  loc_6ED0A3: LitI2_Byte 1
  loc_6ED0A5: EqI2
  loc_6ED0A6: BranchF loc_6ED0EC
  loc_6ED0A9: LitVarI2 var_A4, 11
  loc_6ED0AE: PopAdLdVar
  loc_6ED0AF: LitStr "TotalProducto;"
  loc_6ED0B2: LitI2_Byte 1
  loc_6ED0B4: CStrUI1
  loc_6ED0B6: FStStrNoPop var_90
  loc_6ED0B9: ConcatStr
  loc_6ED0BA: FStStrNoPop var_94
  loc_6ED0BD: LitStr ";true"
  loc_6ED0C0: ConcatStr
  loc_6ED0C1: CVarStr var_B4
  loc_6ED0C4: PopAdLdVar
  loc_6ED0C5: ImpAdLdRf MemVar_74C760
  loc_6ED0C8: NewIfNullPr Formx
  loc_6ED0CB: VCallAd Control_ID_CrystalReport1
  loc_6ED0CE: FStAdFunc var_B8
  loc_6ED0D1: FLdPr var_B8
  loc_6ED0D4: LateIdCallSt
  loc_6ED0DC: FFreeStr var_90 = ""
  loc_6ED0E3: FFree1Ad var_B8
  loc_6ED0E6: FFree1Var var_B4 = ""
  loc_6ED0E9: Branch loc_6ED12C
  loc_6ED0EC: LitVarI2 var_A4, 11
  loc_6ED0F1: PopAdLdVar
  loc_6ED0F2: LitStr "TotalProducto;"
  loc_6ED0F5: LitI2_Byte 0
  loc_6ED0F7: CStrUI1
  loc_6ED0F9: FStStrNoPop var_90
  loc_6ED0FC: ConcatStr
  loc_6ED0FD: FStStrNoPop var_94
  loc_6ED100: LitStr ";true"
  loc_6ED103: ConcatStr
  loc_6ED104: CVarStr var_B4
  loc_6ED107: PopAdLdVar
  loc_6ED108: ImpAdLdRf MemVar_74C760
  loc_6ED10B: NewIfNullPr Formx
  loc_6ED10E: VCallAd Control_ID_CrystalReport1
  loc_6ED111: FStAdFunc var_B8
  loc_6ED114: FLdPr var_B8
  loc_6ED117: LateIdCallSt
  loc_6ED11F: FFreeStr var_90 = ""
  loc_6ED126: FFree1Ad var_B8
  loc_6ED129: FFree1Var var_B4 = ""
  loc_6ED12C: LitI4 &HD
  loc_6ED131: FMemLdRf unk_4067C5
  loc_6ED136: Ary1LdUI1
  loc_6ED138: CI2UI1
  loc_6ED13A: LitI2_Byte 1
  loc_6ED13C: EqI2
  loc_6ED13D: BranchF loc_6ED183
  loc_6ED140: LitVarI2 var_A4, 12
  loc_6ED145: PopAdLdVar
  loc_6ED146: LitStr "Eventos;"
  loc_6ED149: LitI2_Byte 1
  loc_6ED14B: CStrUI1
  loc_6ED14D: FStStrNoPop var_90
  loc_6ED150: ConcatStr
  loc_6ED151: FStStrNoPop var_94
  loc_6ED154: LitStr ";true"
  loc_6ED157: ConcatStr
  loc_6ED158: CVarStr var_B4
  loc_6ED15B: PopAdLdVar
  loc_6ED15C: ImpAdLdRf MemVar_74C760
  loc_6ED15F: NewIfNullPr Formx
  loc_6ED162: VCallAd Control_ID_CrystalReport1
  loc_6ED165: FStAdFunc var_B8
  loc_6ED168: FLdPr var_B8
  loc_6ED16B: LateIdCallSt
  loc_6ED173: FFreeStr var_90 = ""
  loc_6ED17A: FFree1Ad var_B8
  loc_6ED17D: FFree1Var var_B4 = ""
  loc_6ED180: Branch loc_6ED1C3
  loc_6ED183: LitVarI2 var_A4, 12
  loc_6ED188: PopAdLdVar
  loc_6ED189: LitStr "Eventos;"
  loc_6ED18C: LitI2_Byte 0
  loc_6ED18E: CStrUI1
  loc_6ED190: FStStrNoPop var_90
  loc_6ED193: ConcatStr
  loc_6ED194: FStStrNoPop var_94
  loc_6ED197: LitStr ";true"
  loc_6ED19A: ConcatStr
  loc_6ED19B: CVarStr var_B4
  loc_6ED19E: PopAdLdVar
  loc_6ED19F: ImpAdLdRf MemVar_74C760
  loc_6ED1A2: NewIfNullPr Formx
  loc_6ED1A5: VCallAd Control_ID_CrystalReport1
  loc_6ED1A8: FStAdFunc var_B8
  loc_6ED1AB: FLdPr var_B8
  loc_6ED1AE: LateIdCallSt
  loc_6ED1B6: FFreeStr var_90 = ""
  loc_6ED1BD: FFree1Ad var_B8
  loc_6ED1C0: FFree1Var var_B4 = ""
  loc_6ED1C3: FLdRfVar var_90
  loc_6ED1C6: FLdRfVar var_B8
  loc_6ED1C9: ImpAdLdRf MemVar_7520D4
  loc_6ED1CC: NewIfNullPr Global
  loc_6ED1CF:  = Global.App
  loc_6ED1D4: FLdPr var_B8
  loc_6ED1D7:  = App.Path
  loc_6ED1DC: FLdRfVar var_DC
  loc_6ED1DF: LitVar_Missing var_D8
  loc_6ED1E2: PopAdLdVar
  loc_6ED1E3: LitVar_Missing var_C8
  loc_6ED1E6: PopAdLdVar
  loc_6ED1E7: LitVar_TRUE var_A4
  loc_6ED1EA: PopAdLdVar
  loc_6ED1EB: ILdRf var_90
  loc_6ED1EE: LitStr "\reporte.mdb"
  loc_6ED1F1: ConcatStr
  loc_6ED1F2: FStStrNoPop var_94
  loc_6ED1F5: ImpAdLdRf MemVar_752164
  loc_6ED1F8: NewIfNullPr Me
  loc_6ED1FB: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6ED200: FLdZeroAd var_DC
  loc_6ED203: FStAdFunc var_88
  loc_6ED206: FFreeStr var_90 = ""
  loc_6ED20D: FFree1Ad var_B8
  loc_6ED210: FLdRfVar var_B8
  loc_6ED213: LitVar_Missing var_D8
  loc_6ED216: PopAdLdVar
  loc_6ED217: LitVar_Missing var_C8
  loc_6ED21A: PopAdLdVar
  loc_6ED21B: LitVar_Missing var_A4
  loc_6ED21E: PopAdLdVar
  loc_6ED21F: LitStr "SELECT PPUMult, DivMonto FROM Header"
  loc_6ED222: FLdPr var_88
  loc_6ED225: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6ED22A: FLdZeroAd var_B8
  loc_6ED22D: FStAdFunc var_8C
  loc_6ED230: FLdPr var_8C
  loc_6ED233: Me.MoveFirst
  loc_6ED238: LitVarI2 var_10C, 13
  loc_6ED23D: PopAdLdVar
  loc_6ED23E: LitVarStr var_C8, "nDivPPU;"
  loc_6ED243: FLdRfVar var_B4
  loc_6ED246: FLdRfVar var_DC
  loc_6ED249: LitVarI2 var_A4, 0
  loc_6ED24E: PopAdLdVar
  loc_6ED24F: FLdRfVar var_B8
  loc_6ED252: FLdPr var_8C
  loc_6ED255:  = Me.Fields
  loc_6ED25A: FLdPr var_B8
  loc_6ED25D: from_stack_2 = Me.Item(from_stack_1)
  loc_6ED262: FLdPr var_DC
  loc_6ED265:  = Me.Value
  loc_6ED26A: FLdRfVar var_B4
  loc_6ED26D: ConcatVar var_EC
  loc_6ED271: LitVarStr var_D8, ";true"
  loc_6ED276: ConcatVar var_FC
  loc_6ED27A: CStrVarTmp
  loc_6ED27B: CVarStr var_11C
  loc_6ED27E: PopAdLdVar
  loc_6ED27F: ImpAdLdRf MemVar_74C760
  loc_6ED282: NewIfNullPr Formx
  loc_6ED285: VCallAd Control_ID_CrystalReport1
  loc_6ED288: FStAdFunc var_120
  loc_6ED28B: FLdPr var_120
  loc_6ED28E: LateIdCallSt
  loc_6ED296: FFreeAd var_B8 = "": var_DC = ""
  loc_6ED29F: FFreeVar var_B4 = "": var_EC = "": var_FC = ""
  loc_6ED2AA: LitVarI2 var_10C, 14
  loc_6ED2AF: PopAdLdVar
  loc_6ED2B0: LitVarStr var_C8, "nDivMonto;"
  loc_6ED2B5: FLdRfVar var_B4
  loc_6ED2B8: FLdRfVar var_DC
  loc_6ED2BB: LitVarI2 var_A4, 1
  loc_6ED2C0: PopAdLdVar
  loc_6ED2C1: FLdRfVar var_B8
  loc_6ED2C4: FLdPr var_8C
  loc_6ED2C7:  = Formx.Recordset.Fields
  loc_6ED2CC: FLdPr var_B8
  loc_6ED2CF: from_stack_2 = Me.Item(from_stack_1)
  loc_6ED2D4: FLdPr var_DC
  loc_6ED2D7:  = Me.Value
  loc_6ED2DC: FLdRfVar var_B4
  loc_6ED2DF: ConcatVar var_EC
  loc_6ED2E3: LitVarStr var_D8, ";true"
  loc_6ED2E8: ConcatVar var_FC
  loc_6ED2EC: CStrVarTmp
  loc_6ED2ED: CVarStr var_11C
  loc_6ED2F0: PopAdLdVar
  loc_6ED2F1: ImpAdLdRf MemVar_74C760
  loc_6ED2F4: NewIfNullPr Formx
  loc_6ED2F7: VCallAd Control_ID_CrystalReport1
  loc_6ED2FA: FStAdFunc var_120
  loc_6ED2FD: FLdPr var_120
  loc_6ED300: LateIdCallSt
  loc_6ED308: FFreeAd var_B8 = "": var_DC = ""
  loc_6ED311: FFreeVar var_B4 = "": var_EC = "": var_FC = ""
  loc_6ED31C: FLdPr var_8C
  loc_6ED31F: Formx.Recordset.Close
  loc_6ED324: FLdPr var_88
  loc_6ED327: Me.Close
  loc_6ED32C: LitI4 &H10
  loc_6ED331: FMemLdRf unk_4067C5
  loc_6ED336: Ary1LdUI1
  loc_6ED338: CI2UI1
  loc_6ED33A: LitI2_Byte 1
  loc_6ED33C: EqI2
  loc_6ED33D: BranchF loc_6ED383
  loc_6ED340: LitVarI2 var_A4, 15
  loc_6ED345: PopAdLdVar
  loc_6ED346: LitStr "RBajaTanques;"
  loc_6ED349: LitI2_Byte 1
  loc_6ED34B: CStrUI1
  loc_6ED34D: FStStrNoPop var_90
  loc_6ED350: ConcatStr
  loc_6ED351: FStStrNoPop var_94
  loc_6ED354: LitStr ";true"
  loc_6ED357: ConcatStr
  loc_6ED358: CVarStr var_B4
  loc_6ED35B: PopAdLdVar
  loc_6ED35C: ImpAdLdRf MemVar_74C760
  loc_6ED35F: NewIfNullPr Formx
  loc_6ED362: VCallAd Control_ID_CrystalReport1
  loc_6ED365: FStAdFunc var_B8
  loc_6ED368: FLdPr var_B8
  loc_6ED36B: LateIdCallSt
  loc_6ED373: FFreeStr var_90 = ""
  loc_6ED37A: FFree1Ad var_B8
  loc_6ED37D: FFree1Var var_B4 = ""
  loc_6ED380: Branch loc_6ED3C3
  loc_6ED383: LitVarI2 var_A4, 15
  loc_6ED388: PopAdLdVar
  loc_6ED389: LitStr "RBajaTanques;"
  loc_6ED38C: LitI2_Byte 0
  loc_6ED38E: CStrUI1
  loc_6ED390: FStStrNoPop var_90
  loc_6ED393: ConcatStr
  loc_6ED394: FStStrNoPop var_94
  loc_6ED397: LitStr ";true"
  loc_6ED39A: ConcatStr
  loc_6ED39B: CVarStr var_B4
  loc_6ED39E: PopAdLdVar
  loc_6ED39F: ImpAdLdRf MemVar_74C760
  loc_6ED3A2: NewIfNullPr Formx
  loc_6ED3A5: VCallAd Control_ID_CrystalReport1
  loc_6ED3A8: FStAdFunc var_B8
  loc_6ED3AB: FLdPr var_B8
  loc_6ED3AE: LateIdCallSt
  loc_6ED3B6: FFreeStr var_90 = ""
  loc_6ED3BD: FFree1Ad var_B8
  loc_6ED3C0: FFree1Var var_B4 = ""
  loc_6ED3C3: LitI4 &H11
  loc_6ED3C8: FMemLdRf unk_4067C5
  loc_6ED3CD: Ary1LdUI1
  loc_6ED3CF: CI2UI1
  loc_6ED3D1: LitI2_Byte 1
  loc_6ED3D3: EqI2
  loc_6ED3D4: BranchF loc_6ED41A
  loc_6ED3D7: LitVarI2 var_A4, 16
  loc_6ED3DC: PopAdLdVar
  loc_6ED3DD: LitStr "RBajaProductos;"
  loc_6ED3E0: LitI2_Byte 1
  loc_6ED3E2: CStrUI1
  loc_6ED3E4: FStStrNoPop var_90
  loc_6ED3E7: ConcatStr
  loc_6ED3E8: FStStrNoPop var_94
  loc_6ED3EB: LitStr ";true"
  loc_6ED3EE: ConcatStr
  loc_6ED3EF: CVarStr var_B4
  loc_6ED3F2: PopAdLdVar
  loc_6ED3F3: ImpAdLdRf MemVar_74C760
  loc_6ED3F6: NewIfNullPr Formx
  loc_6ED3F9: VCallAd Control_ID_CrystalReport1
  loc_6ED3FC: FStAdFunc var_B8
  loc_6ED3FF: FLdPr var_B8
  loc_6ED402: LateIdCallSt
  loc_6ED40A: FFreeStr var_90 = ""
  loc_6ED411: FFree1Ad var_B8
  loc_6ED414: FFree1Var var_B4 = ""
  loc_6ED417: Branch loc_6ED45A
  loc_6ED41A: LitVarI2 var_A4, 16
  loc_6ED41F: PopAdLdVar
  loc_6ED420: LitStr "RBajaProductos;"
  loc_6ED423: LitI2_Byte 0
  loc_6ED425: CStrUI1
  loc_6ED427: FStStrNoPop var_90
  loc_6ED42A: ConcatStr
  loc_6ED42B: FStStrNoPop var_94
  loc_6ED42E: LitStr ";true"
  loc_6ED431: ConcatStr
  loc_6ED432: CVarStr var_B4
  loc_6ED435: PopAdLdVar
  loc_6ED436: ImpAdLdRf MemVar_74C760
  loc_6ED439: NewIfNullPr Formx
  loc_6ED43C: VCallAd Control_ID_CrystalReport1
  loc_6ED43F: FStAdFunc var_B8
  loc_6ED442: FLdPr var_B8
  loc_6ED445: LateIdCallSt
  loc_6ED44D: FFreeStr var_90 = ""
  loc_6ED454: FFree1Ad var_B8
  loc_6ED457: FFree1Var var_B4 = ""
  loc_6ED45A: LitVarI2 var_B4, 1
  loc_6ED45F: LitI4 4
  loc_6ED464: ImpAdLdRf MemVar_74BEAC
  loc_6ED467: CVarRef
  loc_6ED46C: FLdRfVar var_EC
  loc_6ED46F: ImpAdCallFPR4  = Mid(, , )
  loc_6ED474: FLdRfVar var_EC
  loc_6ED477: LitVarStr var_D8, "1"
  loc_6ED47C: HardType
  loc_6ED47D: EqVarBool
  loc_6ED47F: FFreeVar var_B4 = ""
  loc_6ED486: BranchF loc_6ED523
  loc_6ED489: LitI4 &H12
  loc_6ED48E: FMemLdRf unk_4067C5
  loc_6ED493: Ary1LdUI1
  loc_6ED495: CI2UI1
  loc_6ED497: LitI2_Byte 1
  loc_6ED499: EqI2
  loc_6ED49A: BranchF loc_6ED4E0
  loc_6ED49D: LitVarI2 var_A4, 17
  loc_6ED4A2: PopAdLdVar
  loc_6ED4A3: LitStr "TCSales;"
  loc_6ED4A6: LitI2_Byte 1
  loc_6ED4A8: CStrUI1
  loc_6ED4AA: FStStrNoPop var_90
  loc_6ED4AD: ConcatStr
  loc_6ED4AE: FStStrNoPop var_94
  loc_6ED4B1: LitStr ";true"
  loc_6ED4B4: ConcatStr
  loc_6ED4B5: CVarStr var_B4
  loc_6ED4B8: PopAdLdVar
  loc_6ED4B9: ImpAdLdRf MemVar_74C760
  loc_6ED4BC: NewIfNullPr Formx
  loc_6ED4BF: VCallAd Control_ID_CrystalReport1
  loc_6ED4C2: FStAdFunc var_B8
  loc_6ED4C5: FLdPr var_B8
  loc_6ED4C8: LateIdCallSt
  loc_6ED4D0: FFreeStr var_90 = ""
  loc_6ED4D7: FFree1Ad var_B8
  loc_6ED4DA: FFree1Var var_B4 = ""
  loc_6ED4DD: Branch loc_6ED520
  loc_6ED4E0: LitVarI2 var_A4, 17
  loc_6ED4E5: PopAdLdVar
  loc_6ED4E6: LitStr "TCSales;"
  loc_6ED4E9: LitI2_Byte 0
  loc_6ED4EB: CStrUI1
  loc_6ED4ED: FStStrNoPop var_90
  loc_6ED4F0: ConcatStr
  loc_6ED4F1: FStStrNoPop var_94
  loc_6ED4F4: LitStr ";true"
  loc_6ED4F7: ConcatStr
  loc_6ED4F8: CVarStr var_B4
  loc_6ED4FB: PopAdLdVar
  loc_6ED4FC: ImpAdLdRf MemVar_74C760
  loc_6ED4FF: NewIfNullPr Formx
  loc_6ED502: VCallAd Control_ID_CrystalReport1
  loc_6ED505: FStAdFunc var_B8
  loc_6ED508: FLdPr var_B8
  loc_6ED50B: LateIdCallSt
  loc_6ED513: FFreeStr var_90 = ""
  loc_6ED51A: FFree1Ad var_B8
  loc_6ED51D: FFree1Var var_B4 = ""
  loc_6ED520: Branch loc_6ED563
  loc_6ED523: LitVarI2 var_A4, 17
  loc_6ED528: PopAdLdVar
  loc_6ED529: LitStr "TCSales;"
  loc_6ED52C: LitI2_Byte 0
  loc_6ED52E: CStrUI1
  loc_6ED530: FStStrNoPop var_90
  loc_6ED533: ConcatStr
  loc_6ED534: FStStrNoPop var_94
  loc_6ED537: LitStr ";true"
  loc_6ED53A: ConcatStr
  loc_6ED53B: CVarStr var_B4
  loc_6ED53E: PopAdLdVar
  loc_6ED53F: ImpAdLdRf MemVar_74C760
  loc_6ED542: NewIfNullPr Formx
  loc_6ED545: VCallAd Control_ID_CrystalReport1
  loc_6ED548: FStAdFunc var_B8
  loc_6ED54B: FLdPr var_B8
  loc_6ED54E: LateIdCallSt
  loc_6ED556: FFreeStr var_90 = ""
  loc_6ED55D: FFree1Ad var_B8
  loc_6ED560: FFree1Var var_B4 = ""
  loc_6ED563: LitI4 &H13
  loc_6ED568: FMemLdRf unk_4067C5
  loc_6ED56D: Ary1LdUI1
  loc_6ED56F: CI2UI1
  loc_6ED571: LitI2_Byte 1
  loc_6ED573: EqI2
  loc_6ED574: BranchF loc_6ED5BA
  loc_6ED577: LitVarI2 var_A4, 18
  loc_6ED57C: PopAdLdVar
  loc_6ED57D: LitStr "VentasTotBonificacion;"
  loc_6ED580: LitI2_Byte 1
  loc_6ED582: CStrUI1
  loc_6ED584: FStStrNoPop var_90
  loc_6ED587: ConcatStr
  loc_6ED588: FStStrNoPop var_94
  loc_6ED58B: LitStr ";true"
  loc_6ED58E: ConcatStr
  loc_6ED58F: CVarStr var_B4
  loc_6ED592: PopAdLdVar
  loc_6ED593: ImpAdLdRf MemVar_74C760
  loc_6ED596: NewIfNullPr Formx
  loc_6ED599: VCallAd Control_ID_CrystalReport1
  loc_6ED59C: FStAdFunc var_B8
  loc_6ED59F: FLdPr var_B8
  loc_6ED5A2: LateIdCallSt
  loc_6ED5AA: FFreeStr var_90 = ""
  loc_6ED5B1: FFree1Ad var_B8
  loc_6ED5B4: FFree1Var var_B4 = ""
  loc_6ED5B7: Branch loc_6ED5FA
  loc_6ED5BA: LitVarI2 var_A4, 18
  loc_6ED5BF: PopAdLdVar
  loc_6ED5C0: LitStr "VentasTotBonificacion;"
  loc_6ED5C3: LitI2_Byte 0
  loc_6ED5C5: CStrUI1
  loc_6ED5C7: FStStrNoPop var_90
  loc_6ED5CA: ConcatStr
  loc_6ED5CB: FStStrNoPop var_94
  loc_6ED5CE: LitStr ";true"
  loc_6ED5D1: ConcatStr
  loc_6ED5D2: CVarStr var_B4
  loc_6ED5D5: PopAdLdVar
  loc_6ED5D6: ImpAdLdRf MemVar_74C760
  loc_6ED5D9: NewIfNullPr Formx
  loc_6ED5DC: VCallAd Control_ID_CrystalReport1
  loc_6ED5DF: FStAdFunc var_B8
  loc_6ED5E2: FLdPr var_B8
  loc_6ED5E5: LateIdCallSt
  loc_6ED5ED: FFreeStr var_90 = ""
  loc_6ED5F4: FFree1Ad var_B8
  loc_6ED5F7: FFree1Var var_B4 = ""
  loc_6ED5FA: LitI4 &H14
  loc_6ED5FF: FMemLdRf unk_4067C5
  loc_6ED604: Ary1LdUI1
  loc_6ED606: CI2UI1
  loc_6ED608: LitI2_Byte 1
  loc_6ED60A: EqI2
  loc_6ED60B: BranchF loc_6ED651
  loc_6ED60E: LitVarI2 var_A4, 19
  loc_6ED613: PopAdLdVar
  loc_6ED614: LitStr "StockTanquesPar;"
  loc_6ED617: LitI2_Byte 1
  loc_6ED619: CStrUI1
  loc_6ED61B: FStStrNoPop var_90
  loc_6ED61E: ConcatStr
  loc_6ED61F: FStStrNoPop var_94
  loc_6ED622: LitStr ";true"
  loc_6ED625: ConcatStr
  loc_6ED626: CVarStr var_B4
  loc_6ED629: PopAdLdVar
  loc_6ED62A: ImpAdLdRf MemVar_74C760
  loc_6ED62D: NewIfNullPr Formx
  loc_6ED630: VCallAd Control_ID_CrystalReport1
  loc_6ED633: FStAdFunc var_B8
  loc_6ED636: FLdPr var_B8
  loc_6ED639: LateIdCallSt
  loc_6ED641: FFreeStr var_90 = ""
  loc_6ED648: FFree1Ad var_B8
  loc_6ED64B: FFree1Var var_B4 = ""
  loc_6ED64E: Branch loc_6ED691
  loc_6ED651: LitVarI2 var_A4, 19
  loc_6ED656: PopAdLdVar
  loc_6ED657: LitStr "StockTanquesPar;"
  loc_6ED65A: LitI2_Byte 0
  loc_6ED65C: CStrUI1
  loc_6ED65E: FStStrNoPop var_90
  loc_6ED661: ConcatStr
  loc_6ED662: FStStrNoPop var_94
  loc_6ED665: LitStr ";true"
  loc_6ED668: ConcatStr
  loc_6ED669: CVarStr var_B4
  loc_6ED66C: PopAdLdVar
  loc_6ED66D: ImpAdLdRf MemVar_74C760
  loc_6ED670: NewIfNullPr Formx
  loc_6ED673: VCallAd Control_ID_CrystalReport1
  loc_6ED676: FStAdFunc var_B8
  loc_6ED679: FLdPr var_B8
  loc_6ED67C: LateIdCallSt
  loc_6ED684: FFreeStr var_90 = ""
  loc_6ED68B: FFree1Ad var_B8
  loc_6ED68E: FFree1Var var_B4 = ""
  loc_6ED691: ImpAdLdUI1
  loc_6ED695: CI2UI1
  loc_6ED697: LitI2_Byte 4
  loc_6ED699: EqI2
  loc_6ED69A: ImpAdLdUI1
  loc_6ED69E: CI2UI1
  loc_6ED6A0: LitI2_Byte 5
  loc_6ED6A2: EqI2
  loc_6ED6A3: OrI4
  loc_6ED6A4: BranchF loc_6ED6D0
  loc_6ED6A7: LitVarI2 var_A4, 20
  loc_6ED6AC: PopAdLdVar
  loc_6ED6AD: LitVarStr var_C8, "isGNC;true;true"
  loc_6ED6B2: PopAdLdVar
  loc_6ED6B3: ImpAdLdRf MemVar_74C760
  loc_6ED6B6: NewIfNullPr Formx
  loc_6ED6B9: VCallAd Control_ID_CrystalReport1
  loc_6ED6BC: FStAdFunc var_B8
  loc_6ED6BF: FLdPr var_B8
  loc_6ED6C2: LateIdCallSt
  loc_6ED6CA: FFree1Ad var_B8
  loc_6ED6CD: Branch loc_6ED6F6
  loc_6ED6D0: LitVarI2 var_A4, 20
  loc_6ED6D5: PopAdLdVar
  loc_6ED6D6: LitVarStr var_C8, "isGNC;false;true"
  loc_6ED6DB: PopAdLdVar
  loc_6ED6DC: ImpAdLdRf MemVar_74C760
  loc_6ED6DF: NewIfNullPr Formx
  loc_6ED6E2: VCallAd Control_ID_CrystalReport1
  loc_6ED6E5: FStAdFunc var_B8
  loc_6ED6E8: FLdPr var_B8
  loc_6ED6EB: LateIdCallSt
  loc_6ED6F3: FFree1Ad var_B8
  loc_6ED6F6: ImpAdLdUI1
  loc_6ED6FA: CI2UI1
  loc_6ED6FC: LitI2_Byte 4
  loc_6ED6FE: EqI2
  loc_6ED6FF: ImpAdLdUI1
  loc_6ED703: CI2UI1
  loc_6ED705: LitI2_Byte 0
  loc_6ED707: EqI2
  loc_6ED708: ImpAdLdUI1
  loc_6ED70C: CI2UI1
  loc_6ED70E: LitI2_Byte 5
  loc_6ED710: EqI2
  loc_6ED711: OrI4
  loc_6ED712: AndI4
  loc_6ED713: BranchF loc_6ED73F
  loc_6ED716: LitVarI2 var_A4, 21
  loc_6ED71B: PopAdLdVar
  loc_6ED71C: LitVarStr var_C8, "AllpumpGnc;true;true"
  loc_6ED721: PopAdLdVar
  loc_6ED722: ImpAdLdRf MemVar_74C760
  loc_6ED725: NewIfNullPr Formx
  loc_6ED728: VCallAd Control_ID_CrystalReport1
  loc_6ED72B: FStAdFunc var_B8
  loc_6ED72E: FLdPr var_B8
  loc_6ED731: LateIdCallSt
  loc_6ED739: FFree1Ad var_B8
  loc_6ED73C: Branch loc_6ED765
  loc_6ED73F: LitVarI2 var_A4, 21
  loc_6ED744: PopAdLdVar
  loc_6ED745: LitVarStr var_C8, "AllpumpGnc;false;true"
  loc_6ED74A: PopAdLdVar
  loc_6ED74B: ImpAdLdRf MemVar_74C760
  loc_6ED74E: NewIfNullPr Formx
  loc_6ED751: VCallAd Control_ID_CrystalReport1
  loc_6ED754: FStAdFunc var_B8
  loc_6ED757: FLdPr var_B8
  loc_6ED75A: LateIdCallSt
  loc_6ED762: FFree1Ad var_B8
  loc_6ED765: LitStr "CEM44.INI"
  loc_6ED768: FStStrCopy var_124
  loc_6ED76B: FLdRfVar var_124
  loc_6ED76E: LitStr "papel_continuo"
  loc_6ED771: FStStrCopy var_94
  loc_6ED774: FLdRfVar var_94
  loc_6ED777: LitStr "GENERAL"
  loc_6ED77A: FStStrCopy var_90
  loc_6ED77D: FLdRfVar var_90
  loc_6ED780: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6ED785: FStStrNoPop var_128
  loc_6ED788: LitStr "1"
  loc_6ED78B: EqStr
  loc_6ED78D: FFreeStr var_90 = "": var_94 = "": var_124 = ""
  loc_6ED798: BranchF loc_6ED7C4
  loc_6ED79B: LitVarI2 var_A4, 22
  loc_6ED7A0: PopAdLdVar
  loc_6ED7A1: LitVarStr var_C8, "PapelContinuo;true;true"
  loc_6ED7A6: PopAdLdVar
  loc_6ED7A7: ImpAdLdRf MemVar_74C760
  loc_6ED7AA: NewIfNullPr Formx
  loc_6ED7AD: VCallAd Control_ID_CrystalReport1
  loc_6ED7B0: FStAdFunc var_B8
  loc_6ED7B3: FLdPr var_B8
  loc_6ED7B6: LateIdCallSt
  loc_6ED7BE: FFree1Ad var_B8
  loc_6ED7C1: Branch loc_6ED7EA
  loc_6ED7C4: LitVarI2 var_A4, 22
  loc_6ED7C9: PopAdLdVar
  loc_6ED7CA: LitVarStr var_C8, "PapelContinuo;false;true"
  loc_6ED7CF: PopAdLdVar
  loc_6ED7D0: ImpAdLdRf MemVar_74C760
  loc_6ED7D3: NewIfNullPr Formx
  loc_6ED7D6: VCallAd Control_ID_CrystalReport1
  loc_6ED7D9: FStAdFunc var_B8
  loc_6ED7DC: FLdPr var_B8
  loc_6ED7DF: LateIdCallSt
  loc_6ED7E7: FFree1Ad var_B8
  loc_6ED7EA: ExitProc
End Function

Private Function Proc_101_21_5E9870(arg_C) '5E9870
  'Data Table: 409184
  loc_5E97EC: ILdFPR8 arg_C
  loc_5E97EF: LitI2_Byte 1
  loc_5E97F1: CR8I2
  loc_5E97F2: GeR8
  loc_5E97F3: BranchF loc_5E982D
  loc_5E97F6: LitI4 1
  loc_5E97FB: LitI4 1
  loc_5E9800: LitVarStr var_A8, "###,###,###,###,###"
  loc_5E9805: FStVarCopyObj var_B8
  loc_5E9808: FLdRfVar var_B8
  loc_5E980B: ILdRf arg_C
  loc_5E980E: CVarRef
  loc_5E9813: FLdRfVar var_C8
  loc_5E9816: ImpAdCallFPR4  = Format(, )
  loc_5E981B: FLdRfVar var_C8
  loc_5E981E: FnCDblVar
  loc_5E9820: CI4R8
  loc_5E9821: FStR4 var_88
  loc_5E9824: FFreeVar var_B8 = "": var_C8 = ""
  loc_5E982D: ILdFPR8 arg_C
  loc_5E9830: LitDate 0.5
  loc_5E9839: GeR8
  loc_5E983A: ILdFPR8 arg_C
  loc_5E983D: LitI2_Byte 1
  loc_5E983F: CR8I2
  loc_5E9840: LtR8
  loc_5E9841: AndI4
  loc_5E9842: BranchF loc_5E984D
  loc_5E9845: LitI4 1
  loc_5E984A: FStR4 var_88
  loc_5E984D: ILdFPR8 arg_C
  loc_5E9850: LitI2_Byte 0
  loc_5E9852: CR8I2
  loc_5E9853: GtR4
  loc_5E9854: ILdFPR8 arg_C
  loc_5E9857: LitDate 0.5
  loc_5E9860: LtR8
  loc_5E9861: AndI4
  loc_5E9862: BranchF loc_5E986D
  loc_5E9865: LitI4 0
  loc_5E986A: FStR4 var_88
  loc_5E986D: ExitProc
End Function
