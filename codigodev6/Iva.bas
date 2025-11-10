
Private Function Proc_6_0_5DBEC8() '5DBEC8
  'Data Table: 43B664
  loc_5DBE94: FMemLdI2 arg_8(164)
  loc_5DBE99: BranchF loc_5DBE9E
  loc_5DBE9C: End
  loc_5DBE9E: New Me
  loc_5DBEA2: FStAdFuncNoPop
  loc_5DBEA5: CastAd
  loc_5DBEA8: FStAdFunc var_B8
  loc_5DBEAB: FFree1Ad var_BC
  loc_5DBEAE: LitVar_FALSE
  loc_5DBEB2: PopAdLdVar
  loc_5DBEB3: FLdPr var_B8
  loc_5DBEB6: LateMemCall
  loc_5DBEBC: LitVar_FALSE
  loc_5DBEC0: FStVar var_94
  loc_5DBEC4: ExitProcCb
End Function

Private Function Proc_6_1_68D6FC(arg_C, arg_10) '68D6FC
  'Data Table: 4067BC
  loc_68D1C0: On Error GoTo 0
  loc_68D1C3: FLdRfVar var_F8
  loc_68D1C6: LitVar_Missing var_F4
  loc_68D1C9: PopAdLdVar
  loc_68D1CA: LitVar_Missing var_E4
  loc_68D1CD: PopAdLdVar
  loc_68D1CE: LitVar_TRUE var_D4
  loc_68D1D1: PopAdLdVar
  loc_68D1D2: ILdI4 arg_10
  loc_68D1D5: ImpAdLdRf MemVar_752164
  loc_68D1D8: NewIfNullPr Me
  loc_68D1DB: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_68D1E0: FLdZeroAd var_F8
  loc_68D1E3: FStAdFunc var_8C
  loc_68D1E6: LitVar_Missing var_108
  loc_68D1E9: ImpAdCallI2 FreeFile()
  loc_68D1EE: FStI2 var_92
  loc_68D1F1: FFree1Var var_108 = ""
  loc_68D1F4: ILdI4 arg_C
  loc_68D1F7: FLdI2 var_92
  loc_68D1FA: LitI2_Byte &HFF
  loc_68D1FC: OpenFile
  loc_68D200: FLdI2 var_92
  loc_68D203: FLdRfVar var_98
  loc_68D206: LineInputStr
  loc_68D208: LitVarI4
  loc_68D210: PopAdLdVar
  loc_68D211: LitStr "delete * from AnexoIII"
  loc_68D214: FLdPr var_8C
  loc_68D217: Me.Execute from_stack_1, from_stack_2
  loc_68D21C: LitI2_Byte &HFF
  loc_68D21E: LitI4 1
  loc_68D223: FLdRfVar var_B8
  loc_68D226: Ary1StI2
  loc_68D227: LitI2_Byte &HFF
  loc_68D229: LitI4 2
  loc_68D22E: FLdRfVar var_B8
  loc_68D231: Ary1StI2
  loc_68D232: LitI2_Byte &HFF
  loc_68D234: LitI4 3
  loc_68D239: FLdRfVar var_B8
  loc_68D23C: Ary1StI2
  loc_68D23D: LitI2_Byte &HFF
  loc_68D23F: LitI4 4
  loc_68D244: FLdRfVar var_B8
  loc_68D247: Ary1StI2
  loc_68D248: LitI2_Byte 0
  loc_68D24A: LitI4 5
  loc_68D24F: FLdRfVar var_B8
  loc_68D252: Ary1StI2
  loc_68D253: LitI2_Byte 0
  loc_68D255: LitI4 6
  loc_68D25A: FLdRfVar var_B8
  loc_68D25D: Ary1StI2
  loc_68D25E: LitI2_Byte 0
  loc_68D260: LitI4 7
  loc_68D265: FLdRfVar var_B8
  loc_68D268: Ary1StI2
  loc_68D269: LitI2_Byte 0
  loc_68D26B: LitI4 8
  loc_68D270: FLdRfVar var_B8
  loc_68D273: Ary1StI2
  loc_68D274: LitI2_Byte 0
  loc_68D276: LitI4 9
  loc_68D27B: FLdRfVar var_B8
  loc_68D27E: Ary1StI2
  loc_68D27F: LitI2_Byte 0
  loc_68D281: LitI4 &HA
  loc_68D286: FLdRfVar var_B8
  loc_68D289: Ary1StI2
  loc_68D28A: FLdI2 var_92
  loc_68D28D: ImpAdCallI2 push EOF()
  loc_68D292: NotI4
  loc_68D293: BranchF loc_68D485
  loc_68D296: LitStr "INSERT INTO AnexoIII (Producto , descripcion,"
  loc_68D299: FStStrCopy var_90
  loc_68D29C: ILdRf var_90
  loc_68D29F: LitStr " Fecha, Hora, ExistenciaInicial, TransferenciaPlanta,"
  loc_68D2A2: ConcatStr
  loc_68D2A3: FStStr var_90
  loc_68D2A6: ILdRf var_90
  loc_68D2A9: LitStr " ExistenciaFinal, VentaTotalizadores , DeclaradoCLP,"
  loc_68D2AC: ConcatStr
  loc_68D2AD: FStStr var_90
  loc_68D2B0: ILdRf var_90
  loc_68D2B3: LitStr " SalidasVarias )"
  loc_68D2B6: ConcatStr
  loc_68D2B7: FStStr var_90
  loc_68D2BA: ILdRf var_90
  loc_68D2BD: LitStr " VALUES ("
  loc_68D2C0: ConcatStr
  loc_68D2C1: FStStr var_90
  loc_68D2C4: FLdI2 var_92
  loc_68D2C7: FLdRfVar var_98
  loc_68D2CA: LineInputStr
  loc_68D2CC: LitI2_Byte 1
  loc_68D2CE: FStI2 var_9A
  loc_68D2D1: LitI2_Byte 1
  loc_68D2D3: FLdRfVar var_9C
  loc_68D2D6: LitI2_Byte &HA
  loc_68D2D8: ForI2 var_10C
  loc_68D2DE: FLdI2 var_9A
  loc_68D2E1: FStI2 var_9E
  loc_68D2E4: FLdI2 var_9E
  loc_68D2E7: CI4UI1
  loc_68D2E8: ILdRf var_98
  loc_68D2EB: FnLenStr
  loc_68D2EC: LeI4
  loc_68D2ED: BranchF loc_68D330
  loc_68D2F0: LitVarI2 var_108, 1
  loc_68D2F5: FLdI2 var_9E
  loc_68D2F8: CI4UI1
  loc_68D2F9: FLdRfVar var_98
  loc_68D2FC: CVarRef
  loc_68D301: FLdRfVar var_11C
  loc_68D304: ImpAdCallFPR4  = Mid(, , )
  loc_68D309: FLdRfVar var_11C
  loc_68D30C: LitVarStr var_F4, ";"
  loc_68D311: HardType
  loc_68D312: EqVarBool
  loc_68D314: FFreeVar var_108 = ""
  loc_68D31B: BranchF loc_68D324
  loc_68D31E: Branch loc_68D330
  loc_68D321: Branch loc_68D32D
  loc_68D324: FLdI2 var_9E
  loc_68D327: LitI2_Byte 1
  loc_68D329: AddI2
  loc_68D32A: FStI2 var_9E
  loc_68D32D: Branch loc_68D2E4
  loc_68D330: FLdI2 var_9E
  loc_68D333: FLdI2 var_9A
  loc_68D336: EqI2
  loc_68D337: BranchF loc_68D392
  loc_68D33A: FLdI2 var_9C
  loc_68D33D: CI4UI1
  loc_68D33E: FLdRfVar var_B8
  loc_68D341: Ary1LdI2
  loc_68D342: BranchF loc_68D385
  loc_68D345: ILdRf var_90
  loc_68D348: CVarStr var_D4
  loc_68D34B: LitI4 &H22
  loc_68D350: FLdRfVar var_108
  loc_68D353: ImpAdCallFPR4  = Chr()
  loc_68D358: FLdRfVar var_108
  loc_68D35B: ConcatVar var_11C
  loc_68D35F: LitI4 &H22
  loc_68D364: FLdRfVar var_12C
  loc_68D367: ImpAdCallFPR4  = Chr()
  loc_68D36C: FLdRfVar var_12C
  loc_68D36F: ConcatVar var_13C
  loc_68D373: CStrVarTmp
  loc_68D374: FStStr var_90
  loc_68D377: FFreeVar var_108 = "": var_11C = "": var_12C = ""
  loc_68D382: Branch loc_68D38F
  loc_68D385: ILdRf var_90
  loc_68D388: LitStr "NULL"
  loc_68D38B: ConcatStr
  loc_68D38C: FStStr var_90
  loc_68D38F: Branch loc_68D440
  loc_68D392: FLdI2 var_9C
  loc_68D395: CI4UI1
  loc_68D396: FLdRfVar var_B8
  loc_68D399: Ary1LdI2
  loc_68D39A: BranchF loc_68D408
  loc_68D39D: ILdRf var_90
  loc_68D3A0: CVarStr var_D4
  loc_68D3A3: LitI4 &H22
  loc_68D3A8: FLdRfVar var_108
  loc_68D3AB: ImpAdCallFPR4  = Chr()
  loc_68D3B0: FLdRfVar var_108
  loc_68D3B3: ConcatVar var_11C
  loc_68D3B7: FLdI2 var_9E
  loc_68D3BA: FLdI2 var_9A
  loc_68D3BD: SubI2
  loc_68D3BE: CVarI2 var_12C
  loc_68D3C1: FLdI2 var_9A
  loc_68D3C4: CI4UI1
  loc_68D3C5: FLdRfVar var_98
  loc_68D3C8: CVarRef
  loc_68D3CD: FLdRfVar var_13C
  loc_68D3D0: ImpAdCallFPR4  = Mid(, , )
  loc_68D3D5: FLdRfVar var_13C
  loc_68D3D8: ConcatVar var_14C
  loc_68D3DC: LitI4 &H22
  loc_68D3E1: FLdRfVar var_15C
  loc_68D3E4: ImpAdCallFPR4  = Chr()
  loc_68D3E9: FLdRfVar var_15C
  loc_68D3EC: ConcatVar var_16C
  loc_68D3F0: CStrVarTmp
  loc_68D3F1: FStStr var_90
  loc_68D3F4: FFreeVar var_108 = "": var_12C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_68D405: Branch loc_68D440
  loc_68D408: ILdRf var_90
  loc_68D40B: CVarStr var_F4
  loc_68D40E: FLdI2 var_9E
  loc_68D411: FLdI2 var_9A
  loc_68D414: SubI2
  loc_68D415: CVarI2 var_108
  loc_68D418: FLdI2 var_9A
  loc_68D41B: CI4UI1
  loc_68D41C: FLdRfVar var_98
  loc_68D41F: CVarRef
  loc_68D424: FLdRfVar var_11C
  loc_68D427: ImpAdCallFPR4  = Mid(, , )
  loc_68D42C: FLdRfVar var_11C
  loc_68D42F: ConcatVar var_12C
  loc_68D433: CStrVarTmp
  loc_68D434: FStStr var_90
  loc_68D437: FFreeVar var_108 = "": var_11C = ""
  loc_68D440: FLdI2 var_9C
  loc_68D443: LitI2_Byte &HA
  loc_68D445: LtI2
  loc_68D446: BranchF loc_68D453
  loc_68D449: ILdRf var_90
  loc_68D44C: LitStr ", "
  loc_68D44F: ConcatStr
  loc_68D450: FStStr var_90
  loc_68D453: FLdI2 var_9E
  loc_68D456: LitI2_Byte 1
  loc_68D458: AddI2
  loc_68D459: FStI2 var_9A
  loc_68D45C: FLdRfVar var_9C
  loc_68D45F: NextI2 var_10C, loc_68D2DE
  loc_68D464: ILdRf var_90
  loc_68D467: LitStr ")"
  loc_68D46A: ConcatStr
  loc_68D46B: FStStr var_90
  loc_68D46E: LitVarI4
  loc_68D476: PopAdLdVar
  loc_68D477: ILdRf var_90
  loc_68D47A: FLdPr var_8C
  loc_68D47D: Me.Execute from_stack_1, from_stack_2
  loc_68D482: Branch loc_68D28A
  loc_68D485: LitStr vbNullString
  loc_68D488: FStStrCopy var_C4
  loc_68D48B: FLdRfVar var_F8
  loc_68D48E: LitVar_Missing var_F4
  loc_68D491: PopAdLdVar
  loc_68D492: LitVar_Missing var_E4
  loc_68D495: PopAdLdVar
  loc_68D496: LitVarI4
  loc_68D49E: PopAdLdVar
  loc_68D49F: LitStr "select * from anexoiii order by producto,fecha,hora"
  loc_68D4A2: FLdPr var_8C
  loc_68D4A5: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_68D4AA: FLdZeroAd var_F8
  loc_68D4AD: FStAdFunc var_BC
  loc_68D4B0: FLdRfVar var_16E
  loc_68D4B3: FLdPr var_BC
  loc_68D4B6:  = Me.EOF
  loc_68D4BB: FLdI2 var_16E
  loc_68D4BE: NotI4
  loc_68D4BF: BranchF loc_68D6B0
  loc_68D4C2: FLdPr var_BC
  loc_68D4C5: Me.MoveFirst
  loc_68D4CA: FLdRfVar var_16E
  loc_68D4CD: FLdPr var_BC
  loc_68D4D0:  = Me.EOF
  loc_68D4D5: FLdI2 var_16E
  loc_68D4D8: NotI4
  loc_68D4D9: BranchF loc_68D6B0
  loc_68D4DC: ILdRf var_C4
  loc_68D4DF: CVarStr var_E4
  loc_68D4E2: HardType
  loc_68D4E3: FLdRfVar var_108
  loc_68D4E6: FLdRfVar var_174
  loc_68D4E9: LitVarStr var_D4, "Producto"
  loc_68D4EE: PopAdLdVar
  loc_68D4EF: FLdRfVar var_F8
  loc_68D4F2: FLdPr var_BC
  loc_68D4F5:  = Me.Fields
  loc_68D4FA: FLdPr var_F8
  loc_68D4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_68D502: FLdPr var_174
  loc_68D505:  = Me.Value
  loc_68D50A: FLdRfVar var_108
  loc_68D50D: NeVarBool
  loc_68D50F: FFreeAd var_F8 = ""
  loc_68D516: FFree1Var var_108 = ""
  loc_68D519: BranchF loc_68D55C
  loc_68D51C: LitI4 0
  loc_68D521: FStR4 var_C0
  loc_68D524: FLdRfVar var_108
  loc_68D527: FLdRfVar var_174
  loc_68D52A: LitVarStr var_D4, "Producto"
  loc_68D52F: PopAdLdVar
  loc_68D530: FLdRfVar var_F8
  loc_68D533: FLdPr var_BC
  loc_68D536:  = Me.Fields
  loc_68D53B: FLdPr var_F8
  loc_68D53E: from_stack_2 = Me.Item(from_stack_1)
  loc_68D543: FLdPr var_174
  loc_68D546:  = Me.Value
  loc_68D54B: FLdRfVar var_108
  loc_68D54E: CStrVarTmp
  loc_68D54F: FStStr var_C4
  loc_68D552: FFreeAd var_F8 = ""
  loc_68D559: FFree1Var var_108 = ""
  loc_68D55C: ILdRf var_C0
  loc_68D55F: CVarI4
  loc_68D563: FLdRfVar var_108
  loc_68D566: FLdRfVar var_174
  loc_68D569: LitVarStr var_D4, "VentaTotalizadores"
  loc_68D56E: PopAdLdVar
  loc_68D56F: FLdRfVar var_F8
  loc_68D572: FLdPr var_BC
  loc_68D575:  = Me.Fields
  loc_68D57A: FLdPr var_F8
  loc_68D57D: from_stack_2 = Me.Item(from_stack_1)
  loc_68D582: FLdPr var_174
  loc_68D585:  = Me.Value
  loc_68D58A: FLdRfVar var_108
  loc_68D58D: AddVar var_11C
  loc_68D591: FLdRfVar var_12C
  loc_68D594: FLdRfVar var_17C
  loc_68D597: LitVarStr var_F4, "SalidasVarias"
  loc_68D59C: PopAdLdVar
  loc_68D59D: FLdRfVar var_178
  loc_68D5A0: FLdPr var_BC
  loc_68D5A3:  = Me.Fields
  loc_68D5A8: FLdPr var_178
  loc_68D5AB: from_stack_2 = Me.Item(from_stack_1)
  loc_68D5B0: FLdPr var_17C
  loc_68D5B3:  = Me.Value
  loc_68D5B8: FLdRfVar var_12C
  loc_68D5BB: AddVar var_13C
  loc_68D5BF: FLdRfVar var_15C
  loc_68D5C2: FLdRfVar var_194
  loc_68D5C5: LitVarStr var_190, "ExistenciaInicial"
  loc_68D5CA: PopAdLdVar
  loc_68D5CB: FLdRfVar var_180
  loc_68D5CE: FLdPr var_BC
  loc_68D5D1:  = Me.Fields
  loc_68D5D6: FLdPr var_180
  loc_68D5D9: from_stack_2 = Me.Item(from_stack_1)
  loc_68D5DE: FLdPr var_194
  loc_68D5E1:  = Me.Value
  loc_68D5E6: FLdRfVar var_15C
  loc_68D5E9: FLdRfVar var_14C
  loc_68D5EC: FLdRfVar var_1AC
  loc_68D5EF: LitVarStr var_1A8, "TransferenciaPlanta"
  loc_68D5F4: PopAdLdVar
  loc_68D5F5: FLdRfVar var_198
  loc_68D5F8: FLdPr var_BC
  loc_68D5FB:  = Me.Fields
  loc_68D600: FLdPr var_198
  loc_68D603: from_stack_2 = Me.Item(from_stack_1)
  loc_68D608: FLdPr var_1AC
  loc_68D60B:  = Me.Value
  loc_68D610: FLdRfVar var_14C
  loc_68D613: AddVar var_16C
  loc_68D617: FLdRfVar var_1D4
  loc_68D61A: FLdRfVar var_1C4
  loc_68D61D: LitVarStr var_1C0, "ExistenciaFinal"
  loc_68D622: PopAdLdVar
  loc_68D623: FLdRfVar var_1B0
  loc_68D626: FLdPr var_BC
  loc_68D629:  = Me.Fields
  loc_68D62E: FLdPr var_1B0
  loc_68D631: from_stack_2 = Me.Item(from_stack_1)
  loc_68D636: FLdPr var_1C4
  loc_68D639:  = Me.Value
  loc_68D63E: FLdRfVar var_1D4
  loc_68D641: SubVar var_1E4
  loc_68D645: SubVar var_1F4
  loc_68D649: CI4Var
  loc_68D64B: FStR4 var_C0
  loc_68D64E: FFreeAd var_F8 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_198 = "": var_1AC = "": var_194 = "": var_1B0 = ""
  loc_68D665: FFreeVar var_108 = "": var_11C = "": var_12C = "": var_15C = "": var_14C = "": var_16C = "": var_1D4 = ""
  loc_68D678: FLdPr var_BC
  loc_68D67B: Me.Edit
  loc_68D680: ILdRf var_C0
  loc_68D683: CVarI4
  loc_68D687: PopAdLdVar
  loc_68D688: LitVarStr var_D4, "DiferenciaAcum"
  loc_68D68D: PopAdLdVar
  loc_68D68E: FLdPr var_BC
  loc_68D691: Me.Collect = from_stack_1
  loc_68D696: LitI2_Byte 0
  loc_68D698: LitI4 1
  loc_68D69D: FLdPr var_BC
  loc_68D6A0: Me.Update from_stack_1, from_stack_2b
  loc_68D6A5: FLdPr var_BC
  loc_68D6A8: Me.MoveNext
  loc_68D6AD: Branch loc_68D4CA
  loc_68D6B0: LitI2_Byte &HFF
  loc_68D6B2: FStI2 var_86
  loc_68D6B5: ExitProcI2
  loc_68D6B6: ImpAdCallFPR4 Reset()
  loc_68D6BB: FLdRfVar var_1F8
  loc_68D6BE: ImpAdCallI2 Err 'rtcErrObj
  loc_68D6C3: FStAdFunc var_F8
  loc_68D6C6: FLdPr var_F8
  loc_68D6C9:  = Err.Description
  loc_68D6CE: FLdZeroAd var_1F8
  loc_68D6D1: IStStr
  loc_68D6D5: FFree1Ad var_F8
  loc_68D6D8: FLdRfVar var_1FC
  loc_68D6DB: ImpAdCallI2 Err 'rtcErrObj
  loc_68D6E0: FStAdFunc var_F8
  loc_68D6E3: FLdPr var_F8
  loc_68D6E6:  = Err.Number
  loc_68D6EB: ILdRf var_1FC
  loc_68D6EE: IStI4 arg_18
  loc_68D6F1: FFree1Ad var_F8
  loc_68D6F4: LitI2_Byte 0
  loc_68D6F6: FStI2 var_86
  loc_68D6F9: ExitProcI2
  loc_68D6FA: ExitProcI2
End Function

Private Function Proc_6_2_5DC8C4() '5DC8C4
  'Data Table: 409184
  loc_5DC87C: LitI2_Byte 0
  loc_5DC87E: CUI1I2
  loc_5DC880: FLdRfVar var_86
  loc_5DC883: LitI2_Byte &H32
  loc_5DC885: CUI1I2
  loc_5DC887: ForUI1 var_8A
  loc_5DC88D: FLdUI1
  loc_5DC891: CI2UI1
  loc_5DC893: CVarI2 var_9C
  loc_5DC896: PopAdLdVar
  loc_5DC897: LitVarStr var_AC, vbNullString
  loc_5DC89C: PopAdLdVar
  loc_5DC89D: ImpAdLdRf MemVar_74C760
  loc_5DC8A0: NewIfNullPr Formx
  loc_5DC8A3: VCallAd Control_ID_CrystalReport1
  loc_5DC8A6: FStAdFunc var_B0
  loc_5DC8A9: FLdPr var_B0
  loc_5DC8AC: LateIdCallSt
  loc_5DC8B4: FFree1Ad var_B0
  loc_5DC8B7: FLdRfVar var_86
  loc_5DC8BA: NextUI1
  loc_5DC8C0: ExitProc
  loc_5DC8C1: CStrVarTmp
End Function

Private Function Proc_6_3_615F1C() '615F1C
  'Data Table: 4067BC
  loc_615DF8: LitStr "CEM44.INI"
  loc_615DFB: FLdRfVar var_94
  loc_615DFE: CStr2Ansi
  loc_615DFF: ILdRf var_94
  loc_615E02: LitI4 0
  loc_615E07: LitStr "REPORTTOFILE"
  loc_615E0A: FLdRfVar var_90
  loc_615E0D: CStr2Ansi
  loc_615E0E: ILdRf var_90
  loc_615E11: LitStr "GENERAL"
  loc_615E14: FLdRfVar var_8C
  loc_615E17: CStr2Ansi
  loc_615E18: ILdRf var_8C
  loc_615E1B: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_615E20: FStR4 var_98
  loc_615E23: SetLastSystemError
  loc_615E24: ILdRf var_98
  loc_615E27: LitI4 1
  loc_615E2C: EqI4
  loc_615E2D: FFreeStr var_8C = "": var_90 = ""
  loc_615E36: BranchF loc_615EDB
  loc_615E39: LitVarI4
  loc_615E41: PopAdLdVar
  loc_615E42: ImpAdLdRf MemVar_74C760
  loc_615E45: NewIfNullPr Formx
  loc_615E48: VCallAd Control_ID_CrystalReport1
  loc_615E4B: FStAdFunc var_B0
  loc_615E4E: FLdPr var_B0
  loc_615E51: LateIdSt
  loc_615E56: FFree1Ad var_B0
  loc_615E59: LitStr "CEM44.INI"
  loc_615E5C: FLdRfVar var_94
  loc_615E5F: CStr2Ansi
  loc_615E60: ILdRf var_94
  loc_615E63: LitI4 &H11
  loc_615E68: LitStr "REPORTTOFILETYPE"
  loc_615E6B: FLdRfVar var_90
  loc_615E6E: CStr2Ansi
  loc_615E6F: ILdRf var_90
  loc_615E72: LitStr "GENERAL"
  loc_615E75: FLdRfVar var_8C
  loc_615E78: CStr2Ansi
  loc_615E79: ILdRf var_8C
  loc_615E7C: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_615E81: FStR4 var_98
  loc_615E84: SetLastSystemError
  loc_615E85: ILdRf var_98
  loc_615E88: CUI1I4
  loc_615E8A: FStUI1 var_9A
  loc_615E8E: FFreeStr var_8C = "": var_90 = ""
  loc_615E97: FLdUI1
  loc_615E9B: CI4UI1
  loc_615E9C: CVarI4
  loc_615EA0: PopAdLdVar
  loc_615EA1: ImpAdLdRf MemVar_74C760
  loc_615EA4: NewIfNullPr Formx
  loc_615EA7: VCallAd Control_ID_CrystalReport1
  loc_615EAA: FStAdFunc var_B0
  loc_615EAD: FLdPr var_B0
  loc_615EB0: LateIdSt
  loc_615EB5: FFree1Ad var_B0
  loc_615EB8: LitVarI4
  loc_615EC0: PopAdLdVar
  loc_615EC1: ImpAdLdRf MemVar_74C760
  loc_615EC4: NewIfNullPr Formx
  loc_615EC7: VCallAd Control_ID_CrystalReport1
  loc_615ECA: FStAdFunc var_B0
  loc_615ECD: FLdPr var_B0
  loc_615ED0: LateIdSt
  loc_615ED5: FFree1Ad var_B0
  loc_615ED8: Branch loc_615EE0
  loc_615EDB: ImpAdCallFPR4 Proc_101_13_60A30C()
  loc_615EE0: LitVarI2 var_AC, 1
  loc_615EE5: PopAdLdVar
  loc_615EE6: ImpAdLdRf MemVar_74C760
  loc_615EE9: NewIfNullPr Formx
  loc_615EEC: VCallAd Control_ID_CrystalReport1
  loc_615EEF: FStAdFunc var_B0
  loc_615EF2: FLdPr var_B0
  loc_615EF5: LateIdSt
  loc_615EFA: FFree1Ad var_B0
  loc_615EFD: LitVar_FALSE
  loc_615F01: PopAdLdVar
  loc_615F02: ImpAdLdRf MemVar_74C760
  loc_615F05: NewIfNullPr Formx
  loc_615F08: VCallAd Control_ID_CrystalReport1
  loc_615F0B: FStAdFunc var_B0
  loc_615F0E: FLdPr var_B0
  loc_615F11: LateIdSt
  loc_615F16: FFree1Ad var_B0
  loc_615F19: ExitProcI2
End Function

Private Function Proc_6_4_6134A8(arg_C, arg_10, arg_14, arg_18) '6134A8
  'Data Table: 43B664
  loc_613390: ILdI2 arg_18
  loc_613393: BranchF loc_6133EC
  loc_613396: ILdI4 arg_C
  loc_613399: CVarStr var_C0
  loc_61339C: ILdRf arg_10
  loc_61339F: CVarRef
  loc_6133A4: ILdI2 arg_14
  loc_6133A7: CI4UI1
  loc_6133A8: FLdRfVar var_B0
  loc_6133AB: ImpAdCallFPR4  = String(, )
  loc_6133B0: FLdRfVar var_B0
  loc_6133B3: AddVar var_D0
  loc_6133B7: CStrVarTmp
  loc_6133B8: FStStr var_8C
  loc_6133BB: FFreeVar var_B0 = ""
  loc_6133C2: ILdRf arg_14
  loc_6133C5: CVarRef
  loc_6133CA: LitI4 1
  loc_6133CF: FLdRfVar var_8C
  loc_6133D2: CVarRef
  loc_6133D7: FLdRfVar var_B0
  loc_6133DA: ImpAdCallFPR4  = Mid(, , )
  loc_6133DF: FLdRfVar var_B0
  loc_6133E2: CStrVarTmp
  loc_6133E3: FStStr var_88
  loc_6133E6: FFree1Var var_B0 = ""
  loc_6133E9: Branch loc_6134A6
  loc_6133EC: LitI4 1
  loc_6133F1: ILdI4 arg_C
  loc_6133F4: LitStr "-"
  loc_6133F7: LitI4 0
  loc_6133FC: FnInStr4
  loc_6133FE: LitI4 0
  loc_613403: NeI4
  loc_613404: BranchF loc_613441
  loc_613407: LitVar_Missing var_B0
  loc_61340A: LitI4 1
  loc_61340F: ILdI4 arg_C
  loc_613412: LitStr "-"
  loc_613415: LitI4 0
  loc_61341A: FnInStr4
  loc_61341C: LitI4 1
  loc_613421: AddI4
  loc_613422: ILdRf arg_C
  loc_613425: CVarRef
  loc_61342A: FLdRfVar var_D0
  loc_61342D: ImpAdCallFPR4  = Mid(, , )
  loc_613432: FLdRfVar var_D0
  loc_613435: CStrVarTmp
  loc_613436: IStStr
  loc_61343A: FFreeVar var_B0 = ""
  loc_613441: ILdRf arg_10
  loc_613444: CVarRef
  loc_613449: ILdI2 arg_14
  loc_61344C: CI4UI1
  loc_61344D: FLdRfVar var_B0
  loc_613450: ImpAdCallFPR4  = String(, )
  loc_613455: FLdRfVar var_B0
  loc_613458: ILdI4 arg_C
  loc_61345B: CVarStr var_C0
  loc_61345E: AddVar var_D0
  loc_613462: CStrVarTmp
  loc_613463: FStStr var_8C
  loc_613466: FFreeVar var_B0 = ""
  loc_61346D: ILdRf var_8C
  loc_613470: FnLenStr
  loc_613471: ILdI2 arg_14
  loc_613474: CI4UI1
  loc_613475: SubI4
  loc_613476: LitI4 1
  loc_61347B: AddI4
  loc_61347C: CI2I4
  loc_61347D: FStI2 var_8E
  loc_613480: ILdRf arg_14
  loc_613483: CVarRef
  loc_613488: FLdI2 var_8E
  loc_61348B: CI4UI1
  loc_61348C: FLdRfVar var_8C
  loc_61348F: CVarRef
  loc_613494: FLdRfVar var_B0
  loc_613497: ImpAdCallFPR4  = Mid(, , )
  loc_61349C: FLdRfVar var_B0
  loc_61349F: CStrVarTmp
  loc_6134A0: FStStr var_88
  loc_6134A3: FFree1Var var_B0 = ""
  loc_6134A6: ExitProc
End Function

Private Function Proc_6_5_623BB4(arg_C) '623BB4
  'Data Table: 409184
  loc_623A70: LitI2_Byte 0
  loc_623A72: FStI2 var_86
  loc_623A75: LitStr "CEM44.INI"
  loc_623A78: FStStrCopy var_A4
  loc_623A7B: FLdRfVar var_A4
  loc_623A7E: LitStr "CENTRAL_TURNOFF_DATE"
  loc_623A81: FStStrCopy var_A0
  loc_623A84: FLdRfVar var_A0
  loc_623A87: LitStr "GENERAL"
  loc_623A8A: FStStrCopy var_9C
  loc_623A8D: FLdRfVar var_9C
  loc_623A90: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_623A95: FStStr var_8C
  loc_623A98: FFreeStr var_9C = "": var_A0 = ""
  loc_623AA1: FLdRfVar var_8C
  loc_623AA4: CVarRef
  loc_623AA9: FLdRfVar var_C4
  loc_623AAC: ImpAdCallFPR4  = Trim()
  loc_623AB1: FLdRfVar var_C4
  loc_623AB4: CStrVarTmp
  loc_623AB5: FStStr var_8C
  loc_623AB8: FFree1Var var_C4 = ""
  loc_623ABB: ILdRf var_8C
  loc_623ABE: FnLenStr
  loc_623ABF: LitI4 0
  loc_623AC4: NeI4
  loc_623AC5: BranchF loc_623BB3
  loc_623AC8: LitVarI2 var_C4, 4
  loc_623ACD: LitI4 1
  loc_623AD2: FLdRfVar var_8C
  loc_623AD5: CVarRef
  loc_623ADA: FLdRfVar var_E4
  loc_623ADD: ImpAdCallFPR4  = Mid(, , )
  loc_623AE2: FLdRfVar var_E4
  loc_623AE5: LitVarStr var_F4, "/"
  loc_623AEA: ConcatVar var_104
  loc_623AEE: LitVarI2 var_134, 2
  loc_623AF3: LitI4 5
  loc_623AF8: FLdRfVar var_8C
  loc_623AFB: CVarRef
  loc_623B00: FLdRfVar var_144
  loc_623B03: ImpAdCallFPR4  = Mid(, , )
  loc_623B08: FLdRfVar var_144
  loc_623B0B: ConcatVar var_154
  loc_623B0F: LitVarStr var_164, "/"
  loc_623B14: ConcatVar var_174
  loc_623B18: LitVarI2 var_1A4, 2
  loc_623B1D: LitI4 7
  loc_623B22: FLdRfVar var_8C
  loc_623B25: CVarRef
  loc_623B2A: FLdRfVar var_1B4
  loc_623B2D: ImpAdCallFPR4  = Mid(, , )
  loc_623B32: FLdRfVar var_1B4
  loc_623B35: ConcatVar var_1C4
  loc_623B39: CStrVarTmp
  loc_623B3A: FStStr var_90
  loc_623B3D: FFreeVar var_C4 = "": var_E4 = "": var_134 = "": var_104 = "": var_144 = "": var_154 = "": var_1A4 = "": var_174 = "": var_1B4 = ""
  loc_623B54: ILdRf var_90
  loc_623B57: CDateStr
  loc_623B59: FStFPR8 var_98
  loc_623B5C: FLdRfVar var_C4
  loc_623B5F: ImpAdCallFPR4  = Now
  loc_623B64: FLdRfVar var_C4
  loc_623B67: FLdFPR8 var_98
  loc_623B6A: CVarDate var_B4
  loc_623B6E: HardType
  loc_623B6F: GtVarBool
  loc_623B71: FFree1Var var_C4 = ""
  loc_623B74: BranchF loc_623BB3
  loc_623B77: ILdI2 arg_C
  loc_623B7A: BranchF loc_623BAE
  loc_623B7D: LitVar_Missing var_134
  loc_623B80: LitVar_Missing var_104
  loc_623B83: LitVarStr var_D4, "CEM44"
  loc_623B88: FStVarCopyObj var_E4
  loc_623B8B: FLdRfVar var_E4
  loc_623B8E: LitI4 &H40
  loc_623B93: LitVarStr var_B4, "Funcionalidad en desuso"
  loc_623B98: FStVarCopyObj var_C4
  loc_623B9B: FLdRfVar var_C4
  loc_623B9E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623BA3: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_623BAE: LitI2_Byte &HFF
  loc_623BB0: FStI2 var_86
  loc_623BB3: ExitProcI2
End Function

Private Function Proc_6_6_5D404C() '5D404C
  'Data Table: 40376C
  loc_5D4034: LitStr "sShortDate"
  loc_5D4037: FStStrCopy var_8C
  loc_5D403A: FLdRfVar var_8C
  loc_5D403D: ImpAdCallI2 Proc_87_8_628F70()
  loc_5D4042: FStStr var_88
  loc_5D4045: FFree1Str var_8C
  loc_5D4048: ExitProc
  loc_5D4049: Ary1StFPR8
  loc_5D404A: BranchF loc_5D7436
End Function
