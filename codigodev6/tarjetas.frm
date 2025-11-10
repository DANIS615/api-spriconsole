
Private Sub SSCommand1_UnknownEvent_8 '5D25F4
  'Data Table: 40C348
  loc_5D25DC: ILdRf Me
  loc_5D25DF: FStAdNoPop
  loc_5D25E3: ImpAdLdRf MemVar_7520D4
  loc_5D25E6: NewIfNullPr Global
  loc_5D25E9: Global.Unload from_stack_1
  loc_5D25EE: FFree1Ad var_88
  loc_5D25F1: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '6AE678
  'Data Table: 40C348
  loc_6ADF3C: OnErrorGoto loc_6AE63B
  loc_6ADF3F: LitVarStr var_AC, "@"
  loc_6ADF44: FStVarCopyObj var_BC
  loc_6ADF47: FLdRfVar var_BC
  loc_6ADF4A: LitI4 &H1E
  loc_6ADF4F: FLdRfVar var_CC
  loc_6ADF52: ImpAdCallFPR4  = String(, )
  loc_6ADF57: FLdRfVar var_CC
  loc_6ADF5A: CStrVarTmp
  loc_6ADF5B: FStStr var_8C
  loc_6ADF5E: FFreeVar var_BC = ""
  loc_6ADF65: LitStr "!"
  loc_6ADF68: ILdRf var_8C
  loc_6ADF6B: ConcatStr
  loc_6ADF6C: FStStr var_8C
  loc_6ADF6F: LitStr vbNullString
  loc_6ADF72: FStStrCopy var_90
  loc_6ADF75: LitI2_Byte 1
  loc_6ADF77: CUI1I2
  loc_6ADF79: FLdRfVar var_86
  loc_6ADF7C: LitI2_Byte &HA
  loc_6ADF7E: CUI1I2
  loc_6ADF80: ForUI1 var_D0
  loc_6ADF86: FLdRfVar var_DC
  loc_6ADF89: FLdRfVar var_D8
  loc_6ADF8C: FLdUI1
  loc_6ADF90: CI2UI1
  loc_6ADF92: FLdPrThis
  loc_6ADF93: VCallAd Control_ID_
  loc_6ADF96: FStAdFunc var_D4
  loc_6ADF99: FLdPr var_D4
  loc_6ADF9C: Set from_stack_2 = Me(from_stack_1)
  loc_6ADFA1: FLdPr var_D8
  loc_6ADFA4:  = Me.Text
  loc_6ADFA9: FLdZeroAd var_DC
  loc_6ADFAC: CVarStr var_BC
  loc_6ADFAF: FLdRfVar var_CC
  loc_6ADFB2: ImpAdCallFPR4  = Trim()
  loc_6ADFB7: FLdRfVar var_CC
  loc_6ADFBA: LitVarStr var_AC, vbNullString
  loc_6ADFBF: HardType
  loc_6ADFC0: EqVarBool
  loc_6ADFC2: FFreeAd var_D4 = ""
  loc_6ADFC9: FFreeVar var_BC = ""
  loc_6ADFD0: BranchF loc_6AE008
  loc_6ADFD3: ILdRf var_90
  loc_6ADFD6: CVarStr var_FC
  loc_6ADFD9: LitVarStr var_AC, " "
  loc_6ADFDE: FStVarCopyObj var_BC
  loc_6ADFE1: FLdRfVar var_BC
  loc_6ADFE4: LitI4 &H1E
  loc_6ADFE9: FLdRfVar var_CC
  loc_6ADFEC: ImpAdCallFPR4  = String(, )
  loc_6ADFF1: FLdRfVar var_CC
  loc_6ADFF4: ConcatVar var_EC
  loc_6ADFF8: CStrVarTmp
  loc_6ADFF9: FStStr var_90
  loc_6ADFFC: FFreeVar var_BC = "": var_CC = ""
  loc_6AE005: Branch loc_6AE079
  loc_6AE008: FLdRfVar var_DC
  loc_6AE00B: FLdRfVar var_D8
  loc_6AE00E: FLdUI1
  loc_6AE012: CI2UI1
  loc_6AE014: FLdPrThis
  loc_6AE015: VCallAd Control_ID_
  loc_6AE018: FStAdFunc var_D4
  loc_6AE01B: FLdPr var_D4
  loc_6AE01E: Set from_stack_2 = Me(from_stack_1)
  loc_6AE023: FLdPr var_D8
  loc_6AE026:  = Me.Text
  loc_6AE02B: FLdZeroAd var_DC
  loc_6AE02E: CVarStr var_BC
  loc_6AE031: FLdRfVar var_CC
  loc_6AE034: ImpAdCallFPR4  = Trim()
  loc_6AE039: ILdRf var_90
  loc_6AE03C: CVarStr var_FC
  loc_6AE03F: LitI4 1
  loc_6AE044: LitI4 1
  loc_6AE049: FLdRfVar var_8C
  loc_6AE04C: CVarRef
  loc_6AE051: FLdRfVar var_CC
  loc_6AE054: FLdRfVar var_EC
  loc_6AE057: ImpAdCallFPR4  = Format(, )
  loc_6AE05C: FLdRfVar var_EC
  loc_6AE05F: ConcatVar var_10C
  loc_6AE063: CStrVarTmp
  loc_6AE064: FStStr var_90
  loc_6AE067: FFreeAd var_D4 = ""
  loc_6AE06E: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6AE079: FLdRfVar var_86
  loc_6AE07C: NextUI1
  loc_6AE082: ILdRf var_90
  loc_6AE085: CVarStr var_FC
  loc_6AE088: LitVarStr var_AC, " "
  loc_6AE08D: FStVarCopyObj var_BC
  loc_6AE090: FLdRfVar var_BC
  loc_6AE093: LitI4 &H294
  loc_6AE098: FLdRfVar var_CC
  loc_6AE09B: ImpAdCallFPR4  = String(, )
  loc_6AE0A0: FLdRfVar var_CC
  loc_6AE0A3: ConcatVar var_EC
  loc_6AE0A7: CStrVarTmp
  loc_6AE0A8: FStStr var_90
  loc_6AE0AB: FFreeVar var_BC = "": var_CC = ""
  loc_6AE0B4: FLdRfVar var_10E
  loc_6AE0B7: FLdRfVar var_98
  loc_6AE0BA: CVarRef
  loc_6AE0BF: ILdRf var_90
  loc_6AE0C2: FLdRfVar var_D4
  loc_6AE0C5: ImpAdLdRf MemVar_74C760
  loc_6AE0C8: NewIfNullPr Formx
  loc_6AE0CB: from_stack_1v = Formx.global_4589716Get()
  loc_6AE0D0: FLdPr var_D4
  loc_6AE0D3: Formx.FillStyle = from_stack_1
  loc_6AE0D8: FLdI2 var_10E
  loc_6AE0DB: NotI4
  loc_6AE0DC: FFree1Ad var_D4
  loc_6AE0DF: BranchF loc_6AE0F9
  loc_6AE0E2: FLdRfVar var_BC
  loc_6AE0E5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6AE0EA: FLdRfVar var_BC
  loc_6AE0ED: CBoolVarNull
  loc_6AE0EF: FFree1Var var_BC = ""
  loc_6AE0F2: BranchF loc_6AE0F6
  loc_6AE0F5: ExitProcHresult
  loc_6AE0F6: Branch loc_6AE0B4
  loc_6AE0F9: ImpAdLdRf MemVar_74C760
  loc_6AE0FC: NewIfNullPr Formx
  loc_6AE0FF: Call Formx.LOADCREDITCARDS()
  loc_6AE104: LitVarI2 var_BC, 1
  loc_6AE109: FLdUI1
  loc_6AE10D: CI4UI1
  loc_6AE10E: FLdRfVar var_98
  loc_6AE111: CVarRef
  loc_6AE116: FLdRfVar var_CC
  loc_6AE119: ImpAdCallFPR4  = Mid(, , )
  loc_6AE11E: FLdRfVar var_CC
  loc_6AE121: LitVarStr var_120, "1"
  loc_6AE126: HardType
  loc_6AE127: EqVarBool
  loc_6AE129: FFreeVar var_BC = ""
  loc_6AE130: BranchF loc_6AE1BC
  loc_6AE133: FLdRfVar var_1F8
  loc_6AE136: LitVar_Missing var_1F4
  loc_6AE139: LitVar_Missing var_1D4
  loc_6AE13C: LitVar_Missing var_1B4
  loc_6AE13F: LitVar_Missing var_194
  loc_6AE142: LitVar_Missing var_174
  loc_6AE145: LitVar_Missing var_154
  loc_6AE148: LitVar_Missing var_10C
  loc_6AE14B: LitVar_Missing var_EC
  loc_6AE14E: LitVar_Missing var_CC
  loc_6AE151: LitVar_Missing var_BC
  loc_6AE154: LitStr "Hubo un error al guardar las tarjetas"
  loc_6AE157: FStStrCopy var_DC
  loc_6AE15A: FLdRfVar var_DC
  loc_6AE15D: LitI4 5
  loc_6AE162: PopTmpLdAdStr var_124
  loc_6AE165: LitI2_Byte &H45
  loc_6AE167: PopTmpLdAd2 var_10E
  loc_6AE16A: ImpAdLdRf MemVar_74C7D0
  loc_6AE16D: NewIfNullPr clsMsg
  loc_6AE170: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE175: FLdZeroAd var_1F8
  loc_6AE178: FStStr var_94
  loc_6AE17B: FFree1Str var_DC
  loc_6AE17E: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6AE195: LitVar_Missing var_EC
  loc_6AE198: LitVar_Missing var_CC
  loc_6AE19B: LitVar_Missing var_BC
  loc_6AE19E: LitI4 &H10
  loc_6AE1A3: FLdRfVar var_94
  loc_6AE1A6: CVarRef
  loc_6AE1AB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AE1B0: FFreeVar var_BC = "": var_CC = ""
  loc_6AE1B9: Branch loc_6AE625
  loc_6AE1BC: LitStr vbNullString
  loc_6AE1BF: FStStrCopy var_94
  loc_6AE1C2: LitI2_Byte 1
  loc_6AE1C4: CUI1I2
  loc_6AE1C6: FLdRfVar var_86
  loc_6AE1C9: LitI2_Byte &HA
  loc_6AE1CB: CUI1I2
  loc_6AE1CD: ForUI1 var_1FC
  loc_6AE1D3: LitVarI2 var_BC, 1
  loc_6AE1D8: FLdUI1
  loc_6AE1DC: CI4UI1
  loc_6AE1DD: FLdRfVar var_98
  loc_6AE1E0: CVarRef
  loc_6AE1E5: FLdRfVar var_CC
  loc_6AE1E8: ImpAdCallFPR4  = Mid(, , )
  loc_6AE1ED: FLdRfVar var_CC
  loc_6AE1F0: LitVarStr var_120, "2"
  loc_6AE1F5: HardType
  loc_6AE1F6: EqVar var_EC
  loc_6AE1FA: LitVarI2 var_10C, 1
  loc_6AE1FF: FLdUI1
  loc_6AE203: CI4UI1
  loc_6AE204: FLdRfVar var_98
  loc_6AE207: CVarRef
  loc_6AE20C: FLdRfVar var_154
  loc_6AE20F: ImpAdCallFPR4  = Mid(, , )
  loc_6AE214: FLdRfVar var_154
  loc_6AE217: LitVarStr var_164, "3"
  loc_6AE21C: HardType
  loc_6AE21D: EqVar var_174
  loc_6AE221: OrVar var_194
  loc_6AE225: LitVarI2 var_1B4, 1
  loc_6AE22A: FLdUI1
  loc_6AE22E: CI4UI1
  loc_6AE22F: FLdRfVar var_98
  loc_6AE232: CVarRef
  loc_6AE237: FLdRfVar var_1D4
  loc_6AE23A: ImpAdCallFPR4  = Mid(, , )
  loc_6AE23F: FLdRfVar var_1D4
  loc_6AE242: LitVarStr var_1C4, "4"
  loc_6AE247: HardType
  loc_6AE248: EqVar var_1F4
  loc_6AE24C: OrVar var_20C
  loc_6AE250: CBoolVarNull
  loc_6AE252: FFreeVar var_BC = "": var_CC = "": var_10C = "": var_154 = "": var_1B4 = ""
  loc_6AE261: BranchF loc_6AE5F2
  loc_6AE264: ILdRf var_94
  loc_6AE267: FLdRfVar var_1F8
  loc_6AE26A: LitVar_Missing var_1F4
  loc_6AE26D: LitVar_Missing var_1D4
  loc_6AE270: LitVar_Missing var_1B4
  loc_6AE273: LitVar_Missing var_194
  loc_6AE276: LitVar_Missing var_174
  loc_6AE279: LitVar_Missing var_154
  loc_6AE27C: LitVar_Missing var_10C
  loc_6AE27F: LitVar_Missing var_EC
  loc_6AE282: LitVar_Missing var_CC
  loc_6AE285: LitVar_Missing var_BC
  loc_6AE288: LitStr "Si desea modificar la tarjeta"
  loc_6AE28B: FStStrCopy var_DC
  loc_6AE28E: FLdRfVar var_DC
  loc_6AE291: LitI4 6
  loc_6AE296: PopTmpLdAdStr var_124
  loc_6AE299: LitI2_Byte &H45
  loc_6AE29B: PopTmpLdAd2 var_10E
  loc_6AE29E: ImpAdLdRf MemVar_74C7D0
  loc_6AE2A1: NewIfNullPr clsMsg
  loc_6AE2A4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE2A9: ILdRf var_1F8
  loc_6AE2AC: ConcatStr
  loc_6AE2AD: FStStrNoPop var_210
  loc_6AE2B0: LitStr " "
  loc_6AE2B3: ConcatStr
  loc_6AE2B4: CVarStr var_230
  loc_6AE2B7: FLdUI1
  loc_6AE2BB: CI4UI1
  loc_6AE2BC: ImpAdLdRf MemVar_74A008
  loc_6AE2BF: Ary1LdRf
  loc_6AE2C0: CVarRef
  loc_6AE2C5: FLdRfVar var_20C
  loc_6AE2C8: ImpAdCallFPR4  = Trim()
  loc_6AE2CD: FLdRfVar var_20C
  loc_6AE2D0: ConcatVar var_240
  loc_6AE2D4: CStrVarTmp
  loc_6AE2D5: FStStr var_94
  loc_6AE2D8: FFreeStr var_DC = "": var_1F8 = ""
  loc_6AE2E1: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_230 = "": var_20C = ""
  loc_6AE2FE: ILdRf var_94
  loc_6AE301: LitStr " "
  loc_6AE304: ConcatStr
  loc_6AE305: FStStrNoPop var_210
  loc_6AE308: FLdRfVar var_1F8
  loc_6AE30B: LitVar_Missing var_1F4
  loc_6AE30E: LitVar_Missing var_1D4
  loc_6AE311: LitVar_Missing var_1B4
  loc_6AE314: LitVar_Missing var_194
  loc_6AE317: LitVar_Missing var_174
  loc_6AE31A: LitVar_Missing var_154
  loc_6AE31D: LitVar_Missing var_10C
  loc_6AE320: LitVar_Missing var_EC
  loc_6AE323: LitVar_Missing var_CC
  loc_6AE326: LitVar_Missing var_BC
  loc_6AE329: LitStr "debe hacer un cierre de"
  loc_6AE32C: FStStrCopy var_DC
  loc_6AE32F: FLdRfVar var_DC
  loc_6AE332: LitI4 7
  loc_6AE337: PopTmpLdAdStr var_124
  loc_6AE33A: LitI2_Byte &H45
  loc_6AE33C: PopTmpLdAd2 var_10E
  loc_6AE33F: ImpAdLdRf MemVar_74C7D0
  loc_6AE342: NewIfNullPr clsMsg
  loc_6AE345: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE34A: ILdRf var_1F8
  loc_6AE34D: ConcatStr
  loc_6AE34E: FStStrNoPop var_244
  loc_6AE351: LitStr " "
  loc_6AE354: ConcatStr
  loc_6AE355: FStStr var_94
  loc_6AE358: FFreeStr var_DC = "": var_210 = "": var_1F8 = ""
  loc_6AE363: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6AE37A: LitVarI2 var_BC, 1
  loc_6AE37F: FLdUI1
  loc_6AE383: CI4UI1
  loc_6AE384: FLdRfVar var_98
  loc_6AE387: CVarRef
  loc_6AE38C: FLdRfVar var_CC
  loc_6AE38F: ImpAdCallFPR4  = Mid(, , )
  loc_6AE394: FLdRfVar var_CC
  loc_6AE397: LitVarStr var_120, "2"
  loc_6AE39C: HardType
  loc_6AE39D: EqVarBool
  loc_6AE39F: FFreeVar var_BC = ""
  loc_6AE3A6: BranchF loc_6AE44C
  loc_6AE3A9: ILdRf var_94
  loc_6AE3AC: FLdRfVar var_1F8
  loc_6AE3AF: LitVar_Missing var_1F4
  loc_6AE3B2: LitVar_Missing var_1D4
  loc_6AE3B5: LitVar_Missing var_1B4
  loc_6AE3B8: LitVar_Missing var_194
  loc_6AE3BB: LitVar_Missing var_174
  loc_6AE3BE: LitVar_Missing var_154
  loc_6AE3C1: LitVar_Missing var_10C
  loc_6AE3C4: LitVar_Missing var_EC
  loc_6AE3C7: LitVar_Missing var_CC
  loc_6AE3CA: LitVar_Missing var_BC
  loc_6AE3CD: LitStr "turno, dia y mes."
  loc_6AE3D0: FStStrCopy var_DC
  loc_6AE3D3: FLdRfVar var_DC
  loc_6AE3D6: LitI4 8
  loc_6AE3DB: PopTmpLdAdStr var_124
  loc_6AE3DE: LitI2_Byte &H45
  loc_6AE3E0: PopTmpLdAd2 var_10E
  loc_6AE3E3: ImpAdLdRf MemVar_74C7D0
  loc_6AE3E6: NewIfNullPr clsMsg
  loc_6AE3E9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE3EE: ILdRf var_1F8
  loc_6AE3F1: ConcatStr
  loc_6AE3F2: CVarStr var_230
  loc_6AE3F5: LitI4 &HD
  loc_6AE3FA: FLdRfVar var_20C
  loc_6AE3FD: ImpAdCallFPR4  = Chr()
  loc_6AE402: FLdRfVar var_20C
  loc_6AE405: ConcatVar var_240
  loc_6AE409: LitI4 &HA
  loc_6AE40E: FLdRfVar var_254
  loc_6AE411: ImpAdCallFPR4  = Chr()
  loc_6AE416: FLdRfVar var_254
  loc_6AE419: ConcatVar var_264
  loc_6AE41D: CStrVarTmp
  loc_6AE41E: FStStr var_94
  loc_6AE421: FFreeStr var_DC = ""
  loc_6AE428: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_230 = "": var_20C = "": var_240 = "": var_254 = ""
  loc_6AE449: Branch loc_6AE5ED
  loc_6AE44C: LitVarI2 var_BC, 1
  loc_6AE451: FLdUI1
  loc_6AE455: CI4UI1
  loc_6AE456: FLdRfVar var_98
  loc_6AE459: CVarRef
  loc_6AE45E: FLdRfVar var_CC
  loc_6AE461: ImpAdCallFPR4  = Mid(, , )
  loc_6AE466: FLdRfVar var_CC
  loc_6AE469: LitVarStr var_120, "3"
  loc_6AE46E: HardType
  loc_6AE46F: EqVarBool
  loc_6AE471: FFreeVar var_BC = ""
  loc_6AE478: BranchF loc_6AE51E
  loc_6AE47B: ILdRf var_94
  loc_6AE47E: FLdRfVar var_1F8
  loc_6AE481: LitVar_Missing var_1F4
  loc_6AE484: LitVar_Missing var_1D4
  loc_6AE487: LitVar_Missing var_1B4
  loc_6AE48A: LitVar_Missing var_194
  loc_6AE48D: LitVar_Missing var_174
  loc_6AE490: LitVar_Missing var_154
  loc_6AE493: LitVar_Missing var_10C
  loc_6AE496: LitVar_Missing var_EC
  loc_6AE499: LitVar_Missing var_CC
  loc_6AE49C: LitVar_Missing var_BC
  loc_6AE49F: LitStr "dia y mes."
  loc_6AE4A2: FStStrCopy var_DC
  loc_6AE4A5: FLdRfVar var_DC
  loc_6AE4A8: LitI4 9
  loc_6AE4AD: PopTmpLdAdStr var_124
  loc_6AE4B0: LitI2_Byte &H45
  loc_6AE4B2: PopTmpLdAd2 var_10E
  loc_6AE4B5: ImpAdLdRf MemVar_74C7D0
  loc_6AE4B8: NewIfNullPr clsMsg
  loc_6AE4BB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE4C0: ILdRf var_1F8
  loc_6AE4C3: ConcatStr
  loc_6AE4C4: CVarStr var_230
  loc_6AE4C7: LitI4 &HD
  loc_6AE4CC: FLdRfVar var_20C
  loc_6AE4CF: ImpAdCallFPR4  = Chr()
  loc_6AE4D4: FLdRfVar var_20C
  loc_6AE4D7: ConcatVar var_240
  loc_6AE4DB: LitI4 &HA
  loc_6AE4E0: FLdRfVar var_254
  loc_6AE4E3: ImpAdCallFPR4  = Chr()
  loc_6AE4E8: FLdRfVar var_254
  loc_6AE4EB: ConcatVar var_264
  loc_6AE4EF: CStrVarTmp
  loc_6AE4F0: FStStr var_94
  loc_6AE4F3: FFreeStr var_DC = ""
  loc_6AE4FA: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_230 = "": var_20C = "": var_240 = "": var_254 = ""
  loc_6AE51B: Branch loc_6AE5ED
  loc_6AE51E: LitVarI2 var_BC, 1
  loc_6AE523: FLdUI1
  loc_6AE527: CI4UI1
  loc_6AE528: FLdRfVar var_98
  loc_6AE52B: CVarRef
  loc_6AE530: FLdRfVar var_CC
  loc_6AE533: ImpAdCallFPR4  = Mid(, , )
  loc_6AE538: FLdRfVar var_CC
  loc_6AE53B: LitVarStr var_120, "4"
  loc_6AE540: HardType
  loc_6AE541: EqVarBool
  loc_6AE543: FFreeVar var_BC = ""
  loc_6AE54A: BranchF loc_6AE5ED
  loc_6AE54D: ILdRf var_94
  loc_6AE550: FLdRfVar var_1F8
  loc_6AE553: LitVar_Missing var_1F4
  loc_6AE556: LitVar_Missing var_1D4
  loc_6AE559: LitVar_Missing var_1B4
  loc_6AE55C: LitVar_Missing var_194
  loc_6AE55F: LitVar_Missing var_174
  loc_6AE562: LitVar_Missing var_154
  loc_6AE565: LitVar_Missing var_10C
  loc_6AE568: LitVar_Missing var_EC
  loc_6AE56B: LitVar_Missing var_CC
  loc_6AE56E: LitVar_Missing var_BC
  loc_6AE571: LitStr "mes."
  loc_6AE574: FStStrCopy var_DC
  loc_6AE577: FLdRfVar var_DC
  loc_6AE57A: LitI4 &HA
  loc_6AE57F: PopTmpLdAdStr var_124
  loc_6AE582: LitI2_Byte &H45
  loc_6AE584: PopTmpLdAd2 var_10E
  loc_6AE587: ImpAdLdRf MemVar_74C7D0
  loc_6AE58A: NewIfNullPr clsMsg
  loc_6AE58D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AE592: ILdRf var_1F8
  loc_6AE595: ConcatStr
  loc_6AE596: CVarStr var_230
  loc_6AE599: LitI4 &HD
  loc_6AE59E: FLdRfVar var_20C
  loc_6AE5A1: ImpAdCallFPR4  = Chr()
  loc_6AE5A6: FLdRfVar var_20C
  loc_6AE5A9: ConcatVar var_240
  loc_6AE5AD: LitI4 &HA
  loc_6AE5B2: FLdRfVar var_254
  loc_6AE5B5: ImpAdCallFPR4  = Chr()
  loc_6AE5BA: FLdRfVar var_254
  loc_6AE5BD: ConcatVar var_264
  loc_6AE5C1: CStrVarTmp
  loc_6AE5C2: FStStr var_94
  loc_6AE5C5: FFreeStr var_DC = ""
  loc_6AE5CC: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_230 = "": var_20C = "": var_240 = "": var_254 = ""
  loc_6AE5ED: LitI2_Byte &HFF
  loc_6AE5EF: FStI2 var_9A
  loc_6AE5F2: FLdRfVar var_86
  loc_6AE5F5: NextUI1
  loc_6AE5FB: FLdI2 var_9A
  loc_6AE5FE: BranchF loc_6AE625
  loc_6AE601: LitVar_Missing var_EC
  loc_6AE604: LitVar_Missing var_CC
  loc_6AE607: LitVar_Missing var_BC
  loc_6AE60A: LitI4 0
  loc_6AE60F: FLdRfVar var_94
  loc_6AE612: CVarRef
  loc_6AE617: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AE61C: FFreeVar var_BC = "": var_CC = ""
  loc_6AE625: ILdRf Me
  loc_6AE628: FStAdNoPop
  loc_6AE62C: ImpAdLdRf MemVar_7520D4
  loc_6AE62F: NewIfNullPr Global
  loc_6AE632: Global.Unload from_stack_1
  loc_6AE637: FFree1Ad var_D4
  loc_6AE63A: ExitProcHresult
  loc_6AE63B: FLdRfVar var_DC
  loc_6AE63E: ImpAdCallI2 Err 'rtcErrObj
  loc_6AE643: FStAdFunc var_D4
  loc_6AE646: FLdPr var_D4
  loc_6AE649:  = Err.Description
  loc_6AE64E: LitVar_Missing var_10C
  loc_6AE651: LitVar_Missing var_EC
  loc_6AE654: LitVar_Missing var_CC
  loc_6AE657: LitI4 &H10
  loc_6AE65C: FLdZeroAd var_DC
  loc_6AE65F: CVarStr var_BC
  loc_6AE662: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AE667: FFree1Ad var_D4
  loc_6AE66A: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_6AE675: ExitProcHresult
  loc_6AE676: ExitProcI2
End Sub

Private Sub Form_Load() '65074C
  'Data Table: 40C348
  loc_6504B8: LitI2_Byte 1
  loc_6504BA: CUI1I2
  loc_6504BC: FLdRfVar var_86
  loc_6504BF: LitI2_Byte &HA
  loc_6504C1: CUI1I2
  loc_6504C3: ForUI1 var_8A
  loc_6504C9: FLdUI1
  loc_6504CD: CI4UI1
  loc_6504CE: ImpAdLdRf MemVar_74A008
  loc_6504D1: Ary1LdRf
  loc_6504D2: CVarRef
  loc_6504D7: FLdRfVar var_AC
  loc_6504DA: ImpAdCallFPR4  = Trim()
  loc_6504DF: FLdRfVar var_AC
  loc_6504E2: CStrVarVal var_B8
  loc_6504E6: FLdRfVar var_B4
  loc_6504E9: FLdUI1
  loc_6504ED: CI2UI1
  loc_6504EF: FLdPrThis
  loc_6504F0: VCallAd Control_ID_
  loc_6504F3: FStAdFunc var_B0
  loc_6504F6: FLdPr var_B0
  loc_6504F9: Set from_stack_2 = Me(from_stack_1)
  loc_6504FE: FLdPr var_B4
  loc_650501: Me.Text = from_stack_1
  loc_650506: FFree1Str var_B8
  loc_650509: FFreeAd var_B0 = ""
  loc_650510: FFree1Var var_AC = ""
  loc_650513: FLdRfVar var_86
  loc_650516: NextUI1
  loc_65051C: FLdRfVar var_1E4
  loc_65051F: LitVar_Missing var_1E0
  loc_650522: LitVar_Missing var_1C0
  loc_650525: LitVar_Missing var_1A0
  loc_650528: LitVar_Missing var_180
  loc_65052B: LitVar_Missing var_160
  loc_65052E: LitVar_Missing var_140
  loc_650531: LitVar_Missing var_120
  loc_650534: LitVar_Missing var_100
  loc_650537: LitVar_Missing var_E0
  loc_65053A: LitVar_Missing var_AC
  loc_65053D: LitStr "Tarjeta de Credito"
  loc_650540: FStStrCopy var_B8
  loc_650543: FLdRfVar var_B8
  loc_650546: LitI4 1
  loc_65054B: PopTmpLdAdStr var_C0
  loc_65054E: LitI2_Byte &H45
  loc_650550: PopTmpLdAd2 var_BA
  loc_650553: ImpAdLdRf MemVar_74C7D0
  loc_650556: NewIfNullPr clsMsg
  loc_650559: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65055E: ILdRf var_1E4
  loc_650561: ImpAdLdRf MemVar_74DAF0
  loc_650564: NewIfNullPr tarjetas
  loc_650567: tarjetas.Caption = from_stack_1
  loc_65056C: FFreeStr var_B8 = ""
  loc_650573: FFreeVar var_AC = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_65058A: FLdRfVar var_1E4
  loc_65058D: LitVar_Missing var_1E0
  loc_650590: LitVar_Missing var_1C0
  loc_650593: LitVar_Missing var_1A0
  loc_650596: LitVar_Missing var_180
  loc_650599: LitVar_Missing var_160
  loc_65059C: LitVar_Missing var_140
  loc_65059F: LitVar_Missing var_120
  loc_6505A2: LitVar_Missing var_100
  loc_6505A5: LitVar_Missing var_E0
  loc_6505A8: LitVar_Missing var_AC
  loc_6505AB: LitStr "Nombre Tarjeta"
  loc_6505AE: FStStrCopy var_B8
  loc_6505B1: FLdRfVar var_B8
  loc_6505B4: LitI4 2
  loc_6505B9: PopTmpLdAdStr var_C0
  loc_6505BC: LitI2_Byte &H45
  loc_6505BE: PopTmpLdAd2 var_BA
  loc_6505C1: ImpAdLdRf MemVar_74C7D0
  loc_6505C4: NewIfNullPr clsMsg
  loc_6505C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6505CC: ILdRf var_1E4
  loc_6505CF: FLdRfVar var_B4
  loc_6505D2: LitI2_Byte 0
  loc_6505D4: FLdPrThis
  loc_6505D5: VCallAd Control_ID_
  loc_6505D8: FStAdFunc var_B0
  loc_6505DB: FLdPr var_B0
  loc_6505DE: Set from_stack_2 = Me(from_stack_1)
  loc_6505E3: FLdPr var_B4
  loc_6505E6: Me.Caption = from_stack_1
  loc_6505EB: FFreeStr var_B8 = ""
  loc_6505F2: FFreeAd var_B0 = ""
  loc_6505F9: FFreeVar var_AC = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_650610: FLdRfVar var_B8
  loc_650613: FLdRfVar var_B4
  loc_650616: LitI2_Byte 0
  loc_650618: FLdPrThis
  loc_650619: VCallAd Control_ID_
  loc_65061C: FStAdFunc var_B0
  loc_65061F: FLdPr var_B0
  loc_650622: Set from_stack_2 = Me(from_stack_1)
  loc_650627: FLdPr var_B4
  loc_65062A:  = Me.Caption
  loc_65062F: ILdRf var_B8
  loc_650632: FLdRfVar var_1EC
  loc_650635: LitI2_Byte 1
  loc_650637: FLdPrThis
  loc_650638: VCallAd Control_ID_
  loc_65063B: FStAdFunc var_1E8
  loc_65063E: FLdPr var_1E8
  loc_650641: Set from_stack_2 = Me(from_stack_1)
  loc_650646: FLdPr var_1EC
  loc_650649: Me.Caption = from_stack_1
  loc_65064E: FFree1Str var_B8
  loc_650651: FFreeAd var_B0 = "": var_B4 = "": var_1E8 = ""
  loc_65065C: FLdRfVar var_1E4
  loc_65065F: LitVar_Missing var_1E0
  loc_650662: LitVar_Missing var_1C0
  loc_650665: LitVar_Missing var_1A0
  loc_650668: LitVar_Missing var_180
  loc_65066B: LitVar_Missing var_160
  loc_65066E: LitVar_Missing var_140
  loc_650671: LitVar_Missing var_120
  loc_650674: LitVar_Missing var_100
  loc_650677: LitVar_Missing var_E0
  loc_65067A: LitVar_Missing var_AC
  loc_65067D: LitStr "CANCELAR"
  loc_650680: FStStrCopy var_B8
  loc_650683: FLdRfVar var_B8
  loc_650686: LitI4 3
  loc_65068B: PopTmpLdAdStr var_C0
  loc_65068E: LitI2_Byte &H45
  loc_650690: PopTmpLdAd2 var_BA
  loc_650693: ImpAdLdRf MemVar_74C7D0
  loc_650696: NewIfNullPr clsMsg
  loc_650699: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65069E: FLdZeroAd var_1E4
  loc_6506A1: CVarStr var_1FC
  loc_6506A4: PopAdLdVar
  loc_6506A5: FLdPrThis
  loc_6506A6: VCallAd Control_ID_
  loc_6506A9: FStAdFunc var_B0
  loc_6506AC: FLdPr var_B0
  loc_6506AF: LateIdSt
  loc_6506B4: FFree1Str var_B8
  loc_6506B7: FFree1Ad var_B0
  loc_6506BA: FFreeVar var_AC = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = ""
  loc_6506D3: FLdRfVar var_1E4
  loc_6506D6: LitVar_Missing var_1E0
  loc_6506D9: LitVar_Missing var_1C0
  loc_6506DC: LitVar_Missing var_1A0
  loc_6506DF: LitVar_Missing var_180
  loc_6506E2: LitVar_Missing var_160
  loc_6506E5: LitVar_Missing var_140
  loc_6506E8: LitVar_Missing var_120
  loc_6506EB: LitVar_Missing var_100
  loc_6506EE: LitVar_Missing var_E0
  loc_6506F1: LitVar_Missing var_AC
  loc_6506F4: LitStr "CONTINUAR"
  loc_6506F7: FStStrCopy var_B8
  loc_6506FA: FLdRfVar var_B8
  loc_6506FD: LitI4 4
  loc_650702: PopTmpLdAdStr var_C0
  loc_650705: LitI2_Byte &H45
  loc_650707: PopTmpLdAd2 var_BA
  loc_65070A: ImpAdLdRf MemVar_74C7D0
  loc_65070D: NewIfNullPr clsMsg
  loc_650710: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_650715: FLdZeroAd var_1E4
  loc_650718: CVarStr var_1FC
  loc_65071B: PopAdLdVar
  loc_65071C: FLdPrThis
  loc_65071D: VCallAd Control_ID_
  loc_650720: FStAdFunc var_B0
  loc_650723: FLdPr var_B0
  loc_650726: LateIdSt
  loc_65072B: FFree1Str var_B8
  loc_65072E: FFree1Ad var_B0
  loc_650731: FFreeVar var_AC = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = ""
  loc_65074A: ExitProcHresult
End Sub
