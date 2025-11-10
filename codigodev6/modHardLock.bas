
Private Function Proc_158_0_5ED660() '5ED660
  'Data Table: 40B4F8
  loc_5ED5D4: FLdRfVar var_88
  loc_5ED5D7: ImpAdCallI2  = Proc_142_11_5FA0B0()
  loc_5ED5DC: NotI4
  loc_5ED5DD: BranchF loc_5ED5F7
  loc_5ED5E0: FLdRfVar var_98
  loc_5ED5E3: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5ED5E8: FLdRfVar var_98
  loc_5ED5EB: CBoolVarNull
  loc_5ED5ED: FFree1Var var_98 = ""
  loc_5ED5F0: BranchF loc_5ED5F4
  loc_5ED5F3: ExitProc
  loc_5ED5F4: Branch loc_5ED5D4
  loc_5ED5F7: FLdRfVar var_88
  loc_5ED5FA: CVarRef
  loc_5ED5FF: FLdRfVar var_98
  loc_5ED602: ImpAdCallFPR4  = Trim()
  loc_5ED607: LitI4 1
  loc_5ED60C: LitI4 1
  loc_5ED611: LitVarStr var_B8, "0000000000"
  loc_5ED616: FStVarCopyObj var_C8
  loc_5ED619: FLdRfVar var_C8
  loc_5ED61C: FLdRfVar var_98
  loc_5ED61F: ImpAdCallI2 Format$(, )
  loc_5ED624: FStStr var_88
  loc_5ED627: FFreeVar var_98 = ""
  loc_5ED62E: LitI4 9
  loc_5ED633: ILdRf var_88
  loc_5ED636: ImpAdCallI2 Right$(, )
  loc_5ED63B: IStStr
  loc_5ED63F: LitI4 1
  loc_5ED644: FLdRfVar var_88
  loc_5ED647: CVarRef
  loc_5ED64C: FLdRfVar var_98
  loc_5ED64F: ImpAdCallFPR4  = Left(, )
  loc_5ED654: FLdRfVar var_98
  loc_5ED657: CStrVarTmp
  loc_5ED658: IStStr
  loc_5ED65C: FFree1Var var_98 = ""
  loc_5ED65F: ExitProc
End Function

Private Function Proc_158_1_6279F8(arg_10) '6279F8
  'Data Table: 43B664
  loc_627898: FLdRfVar var_1E4
  loc_62789B: LitVar_Missing var_1E0
  loc_62789E: LitVar_Missing var_1C0
  loc_6278A1: LitVar_Missing var_1A0
  loc_6278A4: LitVar_Missing var_180
  loc_6278A7: LitVar_Missing var_160
  loc_6278AA: LitVar_Missing var_140
  loc_6278AD: LitVar_Missing var_120
  loc_6278B0: LitVar_Missing var_100
  loc_6278B3: LitVar_Missing var_E0
  loc_6278B6: LitVar_Missing var_C0
  loc_6278B9: LitStr "Debe ingresar el número de tarjeta."
  loc_6278BC: FStStrCopy var_A0
  loc_6278BF: FLdRfVar var_A0
  loc_6278C2: LitI4 &H7B
  loc_6278C7: PopTmpLdAdStr var_9C
  loc_6278CA: LitI2_Byte 9
  loc_6278CC: PopTmpLdAd2 var_96
  loc_6278CF: ImpAdLdRf MemVar_74C7D0
  loc_6278D2: NewIfNullPr clsMsg
  loc_6278D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6278DA: FLdZeroAd var_1E4
  loc_6278DD: FMemStStr arg_8(1628)
  loc_6278E3: FFree1Str var_A0
  loc_6278E6: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6278FD: FLdRfVar var_1E4
  loc_627900: LitVar_Missing var_1E0
  loc_627903: LitVar_Missing var_1C0
  loc_627906: LitVar_Missing var_1A0
  loc_627909: LitVar_Missing var_180
  loc_62790C: LitVar_Missing var_160
  loc_62790F: LitVar_Missing var_140
  loc_627912: LitVar_Missing var_120
  loc_627915: LitVar_Missing var_100
  loc_627918: LitVar_Missing var_E0
  loc_62791B: LitVar_Missing var_C0
  loc_62791E: LitStr "Número de Tarjeta"
  loc_627921: FStStrCopy var_A0
  loc_627924: FLdRfVar var_A0
  loc_627927: LitI4 &H7C
  loc_62792C: PopTmpLdAdStr var_9C
  loc_62792F: LitI2_Byte 9
  loc_627931: PopTmpLdAd2 var_96
  loc_627934: ImpAdLdRf MemVar_74C7D0
  loc_627937: NewIfNullPr clsMsg
  loc_62793A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62793F: FLdZeroAd var_1E4
  loc_627942: FMemStStr arg_8(1632)
  loc_627948: FFree1Str var_A0
  loc_62794B: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_627962: ILdI2 arg_10
  loc_627965: LitI2_Byte &HFF
  loc_627967: EqI2
  loc_627968: BranchF loc_6279EC
  loc_62796B: FLdRfVar var_A0
  loc_62796E: ImpAdLdRf MemVar_74E128
  loc_627971: NewIfNullPr FormadePago
  loc_627974: VCallAd Control_ID_NumeroTarjeta
  loc_627977: FStAdFunc var_1E8
  loc_62797A: FLdPr var_1E8
  loc_62797D:  = FormadePago.TextBox.Text
  loc_627982: FLdZeroAd var_A0
  loc_627985: CVarStr var_C0
  loc_627988: FLdRfVar var_E0
  loc_62798B: ImpAdCallFPR4  = Trim()
  loc_627990: FLdRfVar var_E0
  loc_627993: FnLenVar var_100
  loc_627997: LitVarI2 var_B0, 13
  loc_62799C: HardType
  loc_62799D: LtVarBool
  loc_62799F: FFree1Ad var_1E8
  loc_6279A2: FFreeVar var_C0 = ""
  loc_6279A9: BranchF loc_6279E2
  loc_6279AC: LitVar_Missing var_E0
  loc_6279AF: LitVar_Missing var_C0
  loc_6279B2: FMemLdRf unk_43B66D
  loc_6279B7: CVarRef
  loc_6279BC: LitI4 &H40
  loc_6279C1: FMemLdRf unk_43B66D
  loc_6279C6: CVarRef
  loc_6279CB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6279D0: FFreeVar var_C0 = ""
  loc_6279D7: LitVar_FALSE
  loc_6279DB: FStVar var_94
  loc_6279DF: Branch loc_6279E9
  loc_6279E2: LitVar_TRUE var_B0
  loc_6279E5: FStVar var_94
  loc_6279E9: Branch loc_6279F3
  loc_6279EC: LitVar_TRUE var_B0
  loc_6279EF: FStVar var_94
  loc_6279F3: ExitProcCb
End Function

Private Function Proc_158_2_607130(arg_C) '607130
  'Data Table: 4025A8
  loc_60705C: OnErrorGoto loc_607129
  loc_60705F: FLdRfVar var_9C
  loc_607062: FLdRfVar var_98
  loc_607065: ImpAdLdRf MemVar_7520D4
  loc_607068: NewIfNullPr Global
  loc_60706B:  = Global.App
  loc_607070: FLdPr var_98
  loc_607073:  = App.Path
  loc_607078: FLdZeroAd var_9C
  loc_60707B: FStStr var_94
  loc_60707E: FFree1Ad var_98
  loc_607081: FLdRfVar var_94
  loc_607084: CVarRef
  loc_607089: FLdRfVar var_BC
  loc_60708C: ImpAdCallFPR4  = Trim()
  loc_607091: LitI4 1
  loc_607096: FLdRfVar var_BC
  loc_607099: FLdRfVar var_CC
  loc_60709C: ImpAdCallFPR4  = Right(, )
  loc_6070A1: FLdRfVar var_CC
  loc_6070A4: LitVarStr var_DC, "\"
  loc_6070A9: HardType
  loc_6070AA: NeVarBool
  loc_6070AC: FFreeVar var_BC = ""
  loc_6070B3: BranchF loc_6070C0
  loc_6070B6: ILdRf var_94
  loc_6070B9: LitStr "\"
  loc_6070BC: ConcatStr
  loc_6070BD: FStStr var_94
  loc_6070C0: ILdRf var_94
  loc_6070C3: LitStr "Modules\"
  loc_6070C6: ConcatStr
  loc_6070C7: FStStrNoPop var_9C
  loc_6070CA: ILdI4 arg_C
  loc_6070CD: ConcatStr
  loc_6070CE: FStStrNoPop var_F0
  loc_6070D1: LitStr ".dll"
  loc_6070D4: ConcatStr
  loc_6070D5: FStStr var_94
  loc_6070D8: FFreeStr var_9C = ""
  loc_6070DF: LitI2_Byte 0
  loc_6070E1: FStI2 var_86
  loc_6070E4: LitI4 0
  loc_6070E9: FLdRfVar var_94
  loc_6070EC: CVarRef
  loc_6070F1: ImpAdCallI2 push Dir(, )
  loc_6070F6: FStStr var_8C
  loc_6070F9: FLdRfVar var_8C
  loc_6070FC: CVarRef
  loc_607101: FLdRfVar var_BC
  loc_607104: ImpAdCallFPR4  = Trim()
  loc_607109: FLdRfVar var_BC
  loc_60710C: ILdI4 arg_C
  loc_60710F: LitStr ".dll"
  loc_607112: ConcatStr
  loc_607113: CVarStr var_CC
  loc_607116: HardType
  loc_607117: EqVarBool
  loc_607119: FFreeVar var_BC = ""
  loc_607120: BranchF loc_607128
  loc_607123: LitI2_Byte &HFF
  loc_607125: FStI2 var_86
  loc_607128: ExitProcI2
  loc_607129: LitI2_Byte 0
  loc_60712B: FStI2 var_86
  loc_60712E: ExitProcI2
End Function

Private Function Proc_158_3_68A238(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '68A238
  'Data Table: 40B4F8
  loc_689D0C: FLdRfVar var_B4
  loc_689D0F: FLdRfVar var_B0
  loc_689D12: FLdRfVar var_AC
  loc_689D15: ImpAdLdRf MemVar_7520D4
  loc_689D18: NewIfNullPr Global
  loc_689D1B:  = Global.Screen
  loc_689D20: FLdPr var_AC
  loc_689D23:  = Screen.ActiveForm
  loc_689D28: FLdPr var_B0
  loc_689D2B:  = Form.Name
  loc_689D30: ILdRf var_B4
  loc_689D33: LitStr "frmListaDeSeleccion"
  loc_689D36: EqStr
  loc_689D38: FFree1Str var_B4
  loc_689D3B: FFreeAd var_AC = ""
  loc_689D42: BranchF loc_689D46
  loc_689D45: ExitProc
  loc_689D46: ImpAdCallI2 Proc_142_2_5CEBB4()
  loc_689D4B: NotI4
  loc_689D4C: BranchF loc_689D50
  loc_689D4F: ExitProc
  loc_689D50: ILdI2 arg_C
  loc_689D53: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_689D58: AndI4
  loc_689D59: ImpAdCallI2 Proc_142_4_5D8194()
  loc_689D5E: AndI4
  loc_689D5F: BranchF loc_689D8C
  loc_689D62: LitVar_Missing var_134
  loc_689D65: LitVar_Missing var_114
  loc_689D68: LitVar_Missing var_F4
  loc_689D6B: LitI4 &H10
  loc_689D70: LitVarStr var_C4, "No se puede reimprimir un ticket. Verifique por favor."
  loc_689D75: FStVarCopyObj var_D4
  loc_689D78: FLdRfVar var_D4
  loc_689D7B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_689D80: FFreeVar var_D4 = "": var_F4 = "": var_114 = ""
  loc_689D8B: ExitProc
  loc_689D8C: LitStr vbNullString
  loc_689D8F: FStStrCopy var_88
  loc_689D92: LitI2_Byte 1
  loc_689D94: FStI2 var_8A
  loc_689D97: FLdRfVar var_136
  loc_689D9A: FLdRfVar var_88
  loc_689D9D: FLdRfVar var_AC
  loc_689DA0: ImpAdLdRf MemVar_74C760
  loc_689DA3: NewIfNullPr Formx
  loc_689DA6: from_stack_1v = Formx.global_4589716Get()
  loc_689DAB: FLdPr var_AC
  loc_689DAE: Formx.Font = from_stack_1
  loc_689DB3: FLdI2 var_136
  loc_689DB6: NotI4
  loc_689DB7: FLdI2 var_8A
  loc_689DBA: LitI2_Byte 5
  loc_689DBC: LtI2
  loc_689DBD: AndI4
  loc_689DBE: FFree1Ad var_AC
  loc_689DC1: BranchF loc_689DE3
  loc_689DC4: FLdRfVar var_D4
  loc_689DC7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_689DCC: FLdRfVar var_D4
  loc_689DCF: CBoolVarNull
  loc_689DD1: FFree1Var var_D4 = ""
  loc_689DD4: BranchF loc_689DE0
  loc_689DD7: FLdI2 var_8A
  loc_689DDA: LitI2_Byte 1
  loc_689DDC: AddI2
  loc_689DDD: FStI2 var_8A
  loc_689DE0: Branch loc_689D97
  loc_689DE3: FLdRfVar var_88
  loc_689DE6: CVarRef
  loc_689DEB: FLdRfVar var_D4
  loc_689DEE: ImpAdCallFPR4  = Trim()
  loc_689DF3: FLdRfVar var_D4
  loc_689DF6: CStrVarTmp
  loc_689DF7: FStStr var_88
  loc_689DFA: FFree1Var var_D4 = ""
  loc_689DFD: ILdRf var_88
  loc_689E00: FnLenStr
  loc_689E01: LitI4 1
  loc_689E06: GtI4
  loc_689E07: BranchF loc_689E5A
  loc_689E0A: LitStr "Tipos de Tickets"
  loc_689E0D: ImpAdLdRf MemVar_74CA9C
  loc_689E10: NewIfNullPr frmListaDeSeleccion
  loc_689E13: Call frmListaDeSeleccion.sTituloPut(from_stack_1v)
  loc_689E18: LitStr "Seleccione el tipo de ticket que desea imprimir"
  loc_689E1B: ImpAdLdRf MemVar_74CA9C
  loc_689E1E: NewIfNullPr frmListaDeSeleccion
  loc_689E21: Call frmListaDeSeleccion.sMensajePut(from_stack_1v)
  loc_689E26: LitStr ";"
  loc_689E29: ImpAdLdRf MemVar_74CA9C
  loc_689E2C: NewIfNullPr frmListaDeSeleccion
  loc_689E2F: Call frmListaDeSeleccion.sSeparadorPut(from_stack_1v)
  loc_689E34: ILdRf var_88
  loc_689E37: ImpAdLdRf MemVar_74CA9C
  loc_689E3A: NewIfNullPr frmListaDeSeleccion
  loc_689E3D: Call frmListaDeSeleccion.sListaOpcionesPut(from_stack_1v)
  loc_689E42: LitVar_Missing var_E4
  loc_689E45: PopAdLdVar
  loc_689E46: LitVarI4
  loc_689E4E: PopAdLdVar
  loc_689E4F: ImpAdLdRf MemVar_74CA9C
  loc_689E52: NewIfNullPr frmListaDeSeleccion
  loc_689E55: frmListaDeSeleccion.Show from_stack_1, from_stack_2
  loc_689E5A: FLdRfVar var_B4
  loc_689E5D: ImpAdLdRf MemVar_74CA9C
  loc_689E60: NewIfNullPr frmListaDeSeleccion
  loc_689E63: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_689E68: FLdZeroAd var_B4
  loc_689E6B: PopTmpLdAdStr
  loc_689E6F: ImpAdCallI2 Proc_142_5_5F7928()
  loc_689E74: PopTmpLdAdStr
  loc_689E78: ImpAdCallI2 Proc_142_6_6093E8()
  loc_689E7D: FFreeStr var_13C = ""
  loc_689E84: BranchF loc_68A090
  loc_689E87: FLdRfVar var_B4
  loc_689E8A: FLdRfVar var_B0
  loc_689E8D: FLdRfVar var_AC
  loc_689E90: ImpAdLdRf MemVar_7520D4
  loc_689E93: NewIfNullPr Global
  loc_689E96:  = Global.Screen
  loc_689E9B: FLdPr var_AC
  loc_689E9E:  = Screen.ActiveForm
  loc_689EA3: FLdPr var_B0
  loc_689EA6:  = Form.Name
  loc_689EAB: ILdRf var_B4
  loc_689EAE: LitStr "frmChooseClient"
  loc_689EB1: EqStr
  loc_689EB3: FFree1Str var_B4
  loc_689EB6: FFreeAd var_AC = ""
  loc_689EBD: BranchF loc_689EC1
  loc_689EC0: ExitProc
  loc_689EC1: LitI2_Byte 0
  loc_689EC3: ImpAdStI2 MemVar_74C37E
  loc_689EC6: LitStr vbNullString
  loc_689EC9: FStStrCopy var_90
  loc_689ECC: LitStr vbNullString
  loc_689ECF: FStStrCopy var_94
  loc_689ED2: LitStr vbNullString
  loc_689ED5: FStStrCopy var_98
  loc_689ED8: LitStr vbNullString
  loc_689EDB: FStStrCopy var_9C
  loc_689EDE: LitStr vbNullString
  loc_689EE1: FStStrCopy var_A0
  loc_689EE4: LitStr vbNullString
  loc_689EE7: FStStrCopy var_A4
  loc_689EEA: LitStr vbNullString
  loc_689EED: FStStrCopy var_A8
  loc_689EF0: LitVar_Missing var_E4
  loc_689EF3: PopAdLdVar
  loc_689EF4: LitVarI4
  loc_689EFC: PopAdLdVar
  loc_689EFD: ImpAdLdRf MemVar_74D888
  loc_689F00: NewIfNullPr frmChooseClient
  loc_689F03: frmChooseClient.Show from_stack_1, from_stack_2
  loc_689F08: ImpAdLdI2 MemVar_74C37E
  loc_689F0B: BranchF loc_689F0F
  loc_689F0E: ExitProc
  loc_689F0F: FLdRfVar var_B4
  loc_689F12: ImpAdLdRf MemVar_74D888
  loc_689F15: NewIfNullPr frmChooseClient
  loc_689F18: from_stack_1v = frmChooseClient.sNroClienteGet()
  loc_689F1D: FLdZeroAd var_B4
  loc_689F20: FStStr var_90
  loc_689F23: FLdRfVar var_B4
  loc_689F26: ImpAdLdRf MemVar_74D888
  loc_689F29: NewIfNullPr frmChooseClient
  loc_689F2C: from_stack_1v = frmChooseClient.sRazonSocialGet()
  loc_689F31: FLdZeroAd var_B4
  loc_689F34: FStStr var_94
  loc_689F37: FLdRfVar var_B4
  loc_689F3A: ImpAdLdRf MemVar_74D888
  loc_689F3D: NewIfNullPr frmChooseClient
  loc_689F40: from_stack_1v = frmChooseClient.sDomicilioGet()
  loc_689F45: FLdZeroAd var_B4
  loc_689F48: FStStr var_98
  loc_689F4B: FLdRfVar var_B4
  loc_689F4E: ImpAdLdRf MemVar_74D888
  loc_689F51: NewIfNullPr frmChooseClient
  loc_689F54: from_stack_1v = frmChooseClient.sTelefonoGet()
  loc_689F59: FLdZeroAd var_B4
  loc_689F5C: FStStr var_9C
  loc_689F5F: FLdRfVar var_B4
  loc_689F62: ImpAdLdRf MemVar_74D888
  loc_689F65: NewIfNullPr frmChooseClient
  loc_689F68: from_stack_1v = frmChooseClient.sCUITGet()
  loc_689F6D: FLdZeroAd var_B4
  loc_689F70: FStStr var_A0
  loc_689F73: FLdRfVar var_B4
  loc_689F76: ImpAdLdRf MemVar_74D888
  loc_689F79: NewIfNullPr frmChooseClient
  loc_689F7C: from_stack_1v = frmChooseClient.sCuentaCorrienteGet()
  loc_689F81: FLdZeroAd var_B4
  loc_689F84: FStStr var_A4
  loc_689F87: FLdRfVar var_B4
  loc_689F8A: ImpAdLdRf MemVar_74D888
  loc_689F8D: NewIfNullPr frmChooseClient
  loc_689F90: from_stack_1v = frmChooseClient.sIVAGet()
  loc_689F95: FLdZeroAd var_B4
  loc_689F98: FStStr var_A8
  loc_689F9B: FLdRfVar var_B4
  loc_689F9E: ImpAdLdRf MemVar_74CA9C
  loc_689FA1: NewIfNullPr frmListaDeSeleccion
  loc_689FA4: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_689FA9: FLdRfVar var_136
  loc_689FAC: ImpAdLdRf MemVar_74D8B0
  loc_689FAF: NewIfNullPr Consola
  loc_689FB2: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_689FB7: LitI4 1
  loc_689FBC: LitI4 1
  loc_689FC1: LitVarStr var_E4, "00"
  loc_689FC6: FStVarCopyObj var_F4
  loc_689FC9: FLdRfVar var_F4
  loc_689FCC: FLdUI1
  loc_689FD0: CVarUI1
  loc_689FD4: ImpAdCallI2 Format$(, )
  loc_689FD9: FStStr var_1C4
  loc_689FDC: LitI4 1
  loc_689FE1: LitI4 1
  loc_689FE6: LitVarStr var_124, "00000000"
  loc_689FEB: FStVarCopyObj var_114
  loc_689FEE: FLdRfVar var_114
  loc_689FF1: ILdRf arg_10
  loc_689FF4: CVarRef
  loc_689FF9: ImpAdCallI2 Format$(, )
  loc_689FFE: FStStr var_1C8
  loc_68A001: LitI4 0
  loc_68A006: FStStrCopy var_1C0
  loc_68A009: FLdRfVar var_1C0
  loc_68A00C: LitI4 0
  loc_68A011: FStStrCopy var_1BC
  loc_68A014: FLdRfVar var_1BC
  loc_68A017: LitI2_Byte 0
  loc_68A019: PopTmpLdAd1
  loc_68A01D: FLdRfVar var_A8
  loc_68A020: CVarRef
  loc_68A025: FLdRfVar var_A4
  loc_68A028: CVarRef
  loc_68A02D: FLdRfVar var_A0
  loc_68A030: CVarRef
  loc_68A035: FLdRfVar var_9C
  loc_68A038: CVarRef
  loc_68A03D: FLdRfVar var_98
  loc_68A040: CVarRef
  loc_68A045: FLdRfVar var_94
  loc_68A048: CVarRef
  loc_68A04D: FLdRfVar var_90
  loc_68A050: CVarRef
  loc_68A055: FLdZeroAd var_1C4
  loc_68A058: FStStrNoPop var_13C
  loc_68A05B: FLdZeroAd var_1C8
  loc_68A05E: FStStrNoPop var_140
  loc_68A061: ConcatStr
  loc_68A062: CVarStr var_134
  loc_68A065: FLdZeroAd var_B4
  loc_68A068: PopTmpLdAdStr
  loc_68A06C: ImpAdCallFPR4  = Proc_142_7_708724(, , , , , , , , , , )
  loc_68A071: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_68A082: FFreeVar var_D4 = "": var_F4 = "": var_114 = ""
  loc_68A08D: Branch loc_68A237
  loc_68A090: ILdUI1 arg_1C
  loc_68A094: CI2UI1
  loc_68A096: LitI2_Byte 1
  loc_68A098: EqI2
  loc_68A099: BranchF loc_68A0F5
  loc_68A09C: FLdRfVar var_B4
  loc_68A09F: ImpAdLdRf MemVar_74CA9C
  loc_68A0A2: NewIfNullPr frmListaDeSeleccion
  loc_68A0A5: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_68A0AA: ILdRf arg_18
  loc_68A0AD: ILdRf arg_14
  loc_68A0B0: LitI2_Byte 1
  loc_68A0B2: CUI1I2
  loc_68A0B4: PopTmpLdAd1
  loc_68A0B8: LitVar_Missing var_208
  loc_68A0BB: LitVar_Missing var_1F8
  loc_68A0BE: LitVar_Missing var_1E8
  loc_68A0C1: LitVar_Missing var_1D8
  loc_68A0C4: LitVar_Missing var_134
  loc_68A0C7: LitVar_Missing var_114
  loc_68A0CA: LitVar_Missing var_F4
  loc_68A0CD: LitVar_Missing var_D4
  loc_68A0D0: FLdZeroAd var_B4
  loc_68A0D3: PopTmpLdAdStr
  loc_68A0D7: ImpAdCallFPR4  = Proc_142_7_708724(, , , , , , , , , , )
  loc_68A0DC: FFree1Str var_13C
  loc_68A0DF: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_1D8 = "": var_1E8 = "": var_1F8 = ""
  loc_68A0F2: Branch loc_68A237
  loc_68A0F5: ILdUI1 arg_20
  loc_68A0F9: CI2UI1
  loc_68A0FB: LitI2_Byte 1
  loc_68A0FD: EqI2
  loc_68A0FE: BranchF loc_68A15A
  loc_68A101: FLdRfVar var_B4
  loc_68A104: ImpAdLdRf MemVar_74CA9C
  loc_68A107: NewIfNullPr frmListaDeSeleccion
  loc_68A10A: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_68A10F: ILdRf arg_18
  loc_68A112: ILdRf arg_14
  loc_68A115: LitI2_Byte 0
  loc_68A117: CUI1I2
  loc_68A119: PopTmpLdAd1
  loc_68A11D: LitVar_Missing var_208
  loc_68A120: LitVar_Missing var_1F8
  loc_68A123: LitVar_Missing var_1E8
  loc_68A126: LitVar_Missing var_1D8
  loc_68A129: LitVar_Missing var_134
  loc_68A12C: LitVar_Missing var_114
  loc_68A12F: LitVar_Missing var_F4
  loc_68A132: LitVar_Missing var_D4
  loc_68A135: FLdZeroAd var_B4
  loc_68A138: PopTmpLdAdStr
  loc_68A13C: ImpAdCallFPR4  = Proc_142_7_708724(, , , , , , , , , , )
  loc_68A141: FFree1Str var_13C
  loc_68A144: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_1D8 = "": var_1E8 = "": var_1F8 = ""
  loc_68A157: Branch loc_68A237
  loc_68A15A: FLdRfVar var_B4
  loc_68A15D: ImpAdLdRf MemVar_74CA9C
  loc_68A160: NewIfNullPr frmListaDeSeleccion
  loc_68A163: from_stack_1v = frmListaDeSeleccion.sSeleccionGet()
  loc_68A168: FLdRfVar var_136
  loc_68A16B: ImpAdLdRf MemVar_74D8B0
  loc_68A16E: NewIfNullPr Consola
  loc_68A171: from_stack_1v = Consola.Surtidor_ActualGet()
  loc_68A176: LitI4 1
  loc_68A17B: LitI4 1
  loc_68A180: LitVarStr var_E4, "00"
  loc_68A185: FStVarCopyObj var_F4
  loc_68A188: FLdRfVar var_F4
  loc_68A18B: FLdUI1
  loc_68A18F: CVarUI1
  loc_68A193: ImpAdCallI2 Format$(, )
  loc_68A198: FStStr var_1C4
  loc_68A19B: LitI4 1
  loc_68A1A0: LitI4 1
  loc_68A1A5: LitVarStr var_124, "00000000"
  loc_68A1AA: FStVarCopyObj var_114
  loc_68A1AD: FLdRfVar var_114
  loc_68A1B0: ILdRf arg_10
  loc_68A1B3: CVarRef
  loc_68A1B8: ImpAdCallI2 Format$(, )
  loc_68A1BD: FStStr var_1C8
  loc_68A1C0: LitI4 0
  loc_68A1C5: FStStrCopy var_1C0
  loc_68A1C8: FLdRfVar var_1C0
  loc_68A1CB: LitI4 0
  loc_68A1D0: FStStrCopy var_1BC
  loc_68A1D3: FLdRfVar var_1BC
  loc_68A1D6: LitI2_Byte 0
  loc_68A1D8: PopTmpLdAd1
  loc_68A1DC: LitVar_Missing var_238
  loc_68A1DF: LitVar_Missing var_228
  loc_68A1E2: LitVar_Missing var_218
  loc_68A1E5: LitVar_Missing var_208
  loc_68A1E8: LitVar_Missing var_1F8
  loc_68A1EB: LitVar_Missing var_1E8
  loc_68A1EE: LitVar_Missing var_1D8
  loc_68A1F1: FLdZeroAd var_1C4
  loc_68A1F4: FStStrNoPop var_13C
  loc_68A1F7: FLdZeroAd var_1C8
  loc_68A1FA: FStStrNoPop var_140
  loc_68A1FD: ConcatStr
  loc_68A1FE: CVarStr var_134
  loc_68A201: FLdZeroAd var_B4
  loc_68A204: PopTmpLdAdStr
  loc_68A208: ImpAdCallFPR4  = Proc_142_7_708724(, , , , , , , , , , )
  loc_68A20D: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_68A21E: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = ""
  loc_68A237: ExitProc
End Function

Private Function Proc_158_4_5E0CD0(arg_C) '5E0CD0
  'Data Table: 43B664
  loc_5E0C74: LitI2_Byte 0
  loc_5E0C76: FStI2 var_88
  loc_5E0C79: LitI2_Byte 0
  loc_5E0C7B: FLdRfVar var_88
  loc_5E0C7E: FLdRfVar var_8A
  loc_5E0C81: ILdPr
  loc_5E0C84:  = Me.ListCount
  loc_5E0C89: FLdI2 var_8A
  loc_5E0C8C: LitI2_Byte 1
  loc_5E0C8E: SubI2
  loc_5E0C8F: ForI2 var_8E
  loc_5E0C95: FLdI2 var_88
  loc_5E0C98: ILdPr
  loc_5E0C9B: Me.ListIndex = from_stack_1
  loc_5E0CA0: FLdRfVar var_94
  loc_5E0CA3: ILdPr
  loc_5E0CA6:  = Me.Text
  loc_5E0CAB: ILdRf var_94
  loc_5E0CAE: ILdI4 arg_C
  loc_5E0CB1: EqStr
  loc_5E0CB3: FFree1Str var_94
  loc_5E0CB6: BranchF loc_5E0CC0
  loc_5E0CB9: FLdI2 var_88
  loc_5E0CBC: FStI2 var_86
  loc_5E0CBF: ExitProcI2
  loc_5E0CC0: FLdRfVar var_88
  loc_5E0CC3: NextI2 var_8E, loc_5E0C95
  loc_5E0CC8: LitI2_Byte 0
  loc_5E0CCA: FStI2 var_86
  loc_5E0CCD: ExitProcI2
End Function

Private Function Proc_158_5_604120(arg_C) '604120
  'Data Table: 43B664
  loc_604050: ILdI4 arg_C
  loc_604053: FnLenStr
  loc_604054: LitI4 3
  loc_604059: LtI4
  loc_60405A: BranchF loc_60406B
  loc_60405D: ILdI4 arg_C
  loc_604060: LitStr "-0-0"
  loc_604063: ConcatStr
  loc_604064: IStStr
  loc_604068: Branch loc_604083
  loc_60406B: ILdI4 arg_C
  loc_60406E: FnLenStr
  loc_60406F: LitI4 5
  loc_604074: LtI4
  loc_604075: BranchF loc_604083
  loc_604078: ILdI4 arg_C
  loc_60407B: LitStr "-0"
  loc_60407E: ConcatStr
  loc_60407F: IStStr
  loc_604083: LitI2_Byte 0
  loc_604085: FLdRfVar var_88
  loc_604088: LitI2_Byte &H1F
  loc_60408A: ForI2 var_90
  loc_604090: FLdI2 var_88
  loc_604093: CI4UI1
  loc_604094: LitI4 0
  loc_604099: FMemLdRf unk_43B66D
  loc_60409E: AryLdPr
  loc_6040A1: MemLdUI1 global_0
  loc_6040A5: CStrI2
  loc_6040A7: FStStrNoPop var_94
  loc_6040AA: LitStr "-"
  loc_6040AD: ConcatStr
  loc_6040AE: FStStrNoPop var_98
  loc_6040B1: FLdI2 var_88
  loc_6040B4: CI4UI1
  loc_6040B5: LitI4 1
  loc_6040BA: FMemLdRf unk_43B66D
  loc_6040BF: AryLdPr
  loc_6040C2: MemLdUI1 global_0
  loc_6040C6: CStrI2
  loc_6040C8: FStStrNoPop var_9C
  loc_6040CB: ConcatStr
  loc_6040CC: FStStrNoPop var_A0
  loc_6040CF: LitStr "-"
  loc_6040D2: ConcatStr
  loc_6040D3: FStStrNoPop var_A4
  loc_6040D6: FLdI2 var_88
  loc_6040D9: CI4UI1
  loc_6040DA: LitI4 2
  loc_6040DF: FMemLdRf unk_43B66D
  loc_6040E4: AryLdPr
  loc_6040E7: MemLdUI1 global_0
  loc_6040EB: CStrI2
  loc_6040ED: FStStrNoPop var_A8
  loc_6040F0: ConcatStr
  loc_6040F1: FStStr var_8C
  loc_6040F4: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_604103: ILdI4 arg_C
  loc_604106: ILdRf var_8C
  loc_604109: EqStr
  loc_60410B: BranchF loc_604115
  loc_60410E: FLdI2 var_88
  loc_604111: FStI2 var_86
  loc_604114: ExitProcI2
  loc_604115: FLdRfVar var_88
  loc_604118: NextI2 var_90, loc_604090
  loc_60411D: ExitProcI2
End Function

Private Function Proc_158_6_5F9CB0() '5F9CB0
  'Data Table: 409184
  loc_5F9BFC: FLdRfVar var_8C
  loc_5F9BFF: ILdPr
  loc_5F9C02:  = Me.Text
  loc_5F9C07: ILdRf var_8C
  loc_5F9C0A: LitStr vbNullString
  loc_5F9C0D: EqStr
  loc_5F9C0F: FFree1Str var_8C
  loc_5F9C12: BranchF loc_5F9C17
  loc_5F9C15: ExitProcUI1
  loc_5F9C17: LitI2_Byte 0
  loc_5F9C19: FLdRfVar var_88
  loc_5F9C1C: FLdRfVar var_8E
  loc_5F9C1F: ILdPr
  loc_5F9C22:  = Me.ListCount
  loc_5F9C27: FLdI2 var_8E
  loc_5F9C2A: LitI2_Byte 1
  loc_5F9C2C: SubI2
  loc_5F9C2D: ForI2 var_92
  loc_5F9C33: FLdRfVar var_B8
  loc_5F9C36: ILdPr
  loc_5F9C39:  = Me.Text
  loc_5F9C3E: ILdRf var_B8
  loc_5F9C41: ImpAdCallFPR4 push Val()
  loc_5F9C46: FStFPR8 var_E4
  loc_5F9C49: FLdRfVar var_8C
  loc_5F9C4C: FLdI2 var_88
  loc_5F9C4F: ILdPr
  loc_5F9C52: from_stack_2 = Me.List(from_stack_1)
  loc_5F9C57: FLdZeroAd var_8C
  loc_5F9C5A: CVarStr var_A4
  loc_5F9C5D: FLdRfVar var_B4
  loc_5F9C60: ImpAdCallFPR4  = Trim()
  loc_5F9C65: FLdRfVar var_B4
  loc_5F9C68: FLdRfVar var_BC
  loc_5F9C6B: FLdFPR8 var_E4
  loc_5F9C6E: CI4R8
  loc_5F9C6F: ImpAdLdRf MemVar_74C1D8
  loc_5F9C72: Ary1LdUI1
  loc_5F9C74: CI2UI1
  loc_5F9C76: ImpAdLdRf MemVar_74A220
  loc_5F9C79: NewIfNullPr clsProducts
  loc_5F9C81: FLdZeroAd var_BC
  loc_5F9C84: CVarStr var_CC
  loc_5F9C87: HardType
  loc_5F9C88: EqVarBool
  loc_5F9C8A: FFree1Str var_B8
  loc_5F9C8D: FFreeVar var_A4 = "": var_B4 = ""
  loc_5F9C96: BranchF loc_5F9CA4
  loc_5F9C99: FLdI2 var_88
  loc_5F9C9C: CUI1I2
  loc_5F9C9E: FStUI1 var_86
  loc_5F9CA2: ExitProcUI1
  loc_5F9CA4: FLdRfVar var_88
  loc_5F9CA7: NextI2 var_92, loc_5F9C33
  loc_5F9CAC: ExitProcUI1
End Function

Private Function Proc_158_7_5DA158(arg_C) '5DA158
  'Data Table: 4028D8
  loc_5DA11C: ImpAdCallI2 Proc_166_14_5D4888()
  loc_5DA121: NotI4
  loc_5DA122: BranchF loc_5DA12B
  loc_5DA125: LitI2_Byte 0
  loc_5DA127: FStI2 var_86
  loc_5DA12A: ExitProcI2
  loc_5DA12B: FLdRfVar var_88
  loc_5DA12E: FLdI2 arg_C
  loc_5DA131: CI4UI1
  loc_5DA132: ImpAdLdRf MemVar_74C1D8
  loc_5DA135: Ary1LdUI1
  loc_5DA137: CI2UI1
  loc_5DA139: ImpAdLdRf MemVar_74A220
  loc_5DA13C: NewIfNullPr clsProducts
  loc_5DA13F:  = clsProducts.hWnd
  loc_5DA144: FLdI2 var_88
  loc_5DA147: BranchF loc_5DA150
  loc_5DA14A: LitI2_Byte &HFF
  loc_5DA14C: FStI2 var_86
  loc_5DA14F: ExitProcI2
  loc_5DA150: LitI2_Byte 0
  loc_5DA152: FStI2 var_86
  loc_5DA155: ExitProcI2
  loc_5DA156: Ary1LdI2
End Function

Private Function Proc_158_8_5EFE74(arg_C, arg_10) '5EFE74
  'Data Table: 40376C
  loc_5EFDEC: LitStr "1"
  loc_5EFDEF: LitStr "/"
  loc_5EFDF2: ConcatStr
  loc_5EFDF3: FStStrNoPop var_98
  loc_5EFDF6: FLdI2 arg_C
  loc_5EFDF9: CStrUI1
  loc_5EFDFB: FStStrNoPop var_9C
  loc_5EFDFE: ConcatStr
  loc_5EFDFF: FStStrNoPop var_A0
  loc_5EFE02: LitStr "/"
  loc_5EFE05: ConcatStr
  loc_5EFE06: FStStrNoPop var_A4
  loc_5EFE09: FLdI2 arg_10
  loc_5EFE0C: CStrUI1
  loc_5EFE0E: FStStrNoPop var_A8
  loc_5EFE11: ConcatStr
  loc_5EFE12: FStStrNoPop var_AC
  loc_5EFE15: CDateStr
  loc_5EFE17: FStFPR8 var_94
  loc_5EFE1A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_5EFE29: FLdRfVar var_94
  loc_5EFE2C: CVarRef
  loc_5EFE31: LitI2_Byte 1
  loc_5EFE33: CR8I2
  loc_5EFE34: PopFPR8
  loc_5EFE35: LitStr "m"
  loc_5EFE38: FLdRfVar var_CC
  loc_5EFE3B: ImpAdCallFPR4  = DateAdd(, , )
  loc_5EFE40: FLdRfVar var_CC
  loc_5EFE43: FnCDateVar
  loc_5EFE45: FStFPR8 var_94
  loc_5EFE48: FFree1Var var_CC = ""
  loc_5EFE4B: FLdRfVar var_94
  loc_5EFE4E: CVarRef
  loc_5EFE53: LitI2_Byte &HFF
  loc_5EFE55: CR8I2
  loc_5EFE56: PopFPR8
  loc_5EFE57: LitStr "d"
  loc_5EFE5A: FLdRfVar var_CC
  loc_5EFE5D: ImpAdCallFPR4  = DateAdd(, , )
  loc_5EFE62: FLdRfVar var_CC
  loc_5EFE65: FnCDateVar
  loc_5EFE67: FStFPR8 var_94
  loc_5EFE6A: FFree1Var var_CC = ""
  loc_5EFE6D: FLdFPR8 var_94
  loc_5EFE70: FStFPR8 var_8C
  loc_5EFE73: ExitProcR8
End Function

Private Function Proc_158_9_6A0BFC(arg_C) '6A0BFC
  'Data Table: 40898C
  loc_6A05AC: FLdRfVar var_9C
  loc_6A05AF: NewIfNullAd
  loc_6A05B2: FStAd var_A0 
  loc_6A05B6: LitI2_Byte &HFF
  loc_6A05B8: FLdPr var_A0
  loc_6A05C0: LitStr "Courier New"
  loc_6A05C3: FLdPr var_A0
  loc_6A05C6: Reset
  loc_6A05CB: LitI2_Byte &H16
  loc_6A05CD: CR8I2
  loc_6A05CE: PopFPR4
  loc_6A05CF: FLdPr var_A0
  loc_6A05D7: LitNothing
  loc_6A05D9: FStAd var_A0 
  loc_6A05DD: FLdRfVar var_1F0
  loc_6A05E0: LitVar_Missing var_1EC
  loc_6A05E3: LitVar_Missing var_1CC
  loc_6A05E6: LitVar_Missing var_1AC
  loc_6A05E9: LitVar_Missing var_18C
  loc_6A05EC: LitVar_Missing var_16C
  loc_6A05EF: LitVar_Missing var_14C
  loc_6A05F2: LitVar_Missing var_12C
  loc_6A05F5: LitVar_Missing var_10C
  loc_6A05F8: LitVar_Missing var_EC
  loc_6A05FB: LitVar_Missing var_CC
  loc_6A05FE: LitStr "Totales CDFP"
  loc_6A0601: FStStrCopy var_AC
  loc_6A0604: FLdRfVar var_AC
  loc_6A0607: LitI4 &H18
  loc_6A060C: PopTmpLdAdStr var_A8
  loc_6A060F: LitI2_Byte &H23
  loc_6A0611: PopTmpLdAd2 var_A2
  loc_6A0614: ImpAdLdRf MemVar_74C7D0
  loc_6A0617: NewIfNullPr clsMsg
  loc_6A061A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A061F: FLdRfVar var_1F6
  loc_6A0622: FLdRfVar var_9C
  loc_6A0625: NewIfNullRf
  loc_6A0629: FLdZeroAd var_1F0
  loc_6A062C: PopTmpLdAdStr
  loc_6A0630: FLdRfVar var_98
  loc_6A0633: NewIfNullPr CReporte
  loc_6A0636:  = CReporte.BackColor
  loc_6A063B: FFreeStr var_AC = ""
  loc_6A0642: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6A0659: FLdRfVar var_A2
  loc_6A065C: FLdRfVar var_9C
  loc_6A065F: NewIfNullRf
  loc_6A0663: LitStr vbNullString
  loc_6A0666: FStStrCopy var_AC
  loc_6A0669: FLdRfVar var_AC
  loc_6A066C: FLdRfVar var_98
  loc_6A066F: NewIfNullPr CReporte
  loc_6A0672: Call 0.Method_arg_5C ()
  loc_6A0677: FFree1Str var_AC
  loc_6A067A: LitI2_Byte 0
  loc_6A067C: FLdRfVar var_9C
  loc_6A067F: NewIfNullPr CFuente
  loc_6A0687: LitI2_Byte 8
  loc_6A0689: CR8I2
  loc_6A068A: PopFPR4
  loc_6A068B: FLdRfVar var_9C
  loc_6A068E: NewIfNullPr CFuente
  loc_6A0696: FLdRfVar var_1F0
  loc_6A0699: LitVar_Missing var_1EC
  loc_6A069C: LitVar_Missing var_1CC
  loc_6A069F: LitVar_Missing var_1AC
  loc_6A06A2: LitVar_Missing var_18C
  loc_6A06A5: LitVar_Missing var_16C
  loc_6A06A8: LitVar_Missing var_14C
  loc_6A06AB: LitVar_Missing var_12C
  loc_6A06AE: LitVar_Missing var_10C
  loc_6A06B1: LitVar_Missing var_EC
  loc_6A06B4: LitVar_Missing var_CC
  loc_6A06B7: LitStr "Fecha:"
  loc_6A06BA: FStStrCopy var_AC
  loc_6A06BD: FLdRfVar var_AC
  loc_6A06C0: LitI4 &H16
  loc_6A06C5: PopTmpLdAdStr var_A8
  loc_6A06C8: LitI2_Byte &H23
  loc_6A06CA: PopTmpLdAd2 var_A2
  loc_6A06CD: ImpAdLdRf MemVar_74C7D0
  loc_6A06D0: NewIfNullPr clsMsg
  loc_6A06D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A06D8: FLdRfVar var_208
  loc_6A06DB: ImpAdCallFPR4  = Date
  loc_6A06E0: LitI4 1
  loc_6A06E5: LitI4 1
  loc_6A06EA: LitVarStr var_218, "dd/mm/yyyy"
  loc_6A06EF: FStVarCopyObj var_228
  loc_6A06F2: FLdRfVar var_228
  loc_6A06F5: FLdRfVar var_208
  loc_6A06F8: ImpAdCallI2 Format$(, )
  loc_6A06FD: FStStr var_3C8
  loc_6A0700: FLdRfVar var_37C
  loc_6A0703: LitVar_Missing var_378
  loc_6A0706: LitVar_Missing var_358
  loc_6A0709: LitVar_Missing var_338
  loc_6A070C: LitVar_Missing var_318
  loc_6A070F: LitVar_Missing var_2F8
  loc_6A0712: LitVar_Missing var_2D8
  loc_6A0715: LitVar_Missing var_2B8
  loc_6A0718: LitVar_Missing var_298
  loc_6A071B: LitVar_Missing var_278
  loc_6A071E: LitVar_Missing var_258
  loc_6A0721: LitStr "Hora:"
  loc_6A0724: FStStrCopy var_238
  loc_6A0727: FLdRfVar var_238
  loc_6A072A: LitI4 &H17
  loc_6A072F: PopTmpLdAdStr var_234
  loc_6A0732: LitI2_Byte &H23
  loc_6A0734: PopTmpLdAd2 var_1F6
  loc_6A0737: ImpAdLdRf MemVar_74C7D0
  loc_6A073A: NewIfNullPr clsMsg
  loc_6A073D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0742: FLdRfVar var_394
  loc_6A0745: ImpAdCallFPR4  = Now
  loc_6A074A: LitI4 1
  loc_6A074F: LitI4 1
  loc_6A0754: LitVarStr var_3A4, "hh:mm:ss"
  loc_6A0759: FStVarCopyObj var_3B4
  loc_6A075C: FLdRfVar var_3B4
  loc_6A075F: FLdRfVar var_394
  loc_6A0762: ImpAdCallI2 Format$(, )
  loc_6A0767: FStStr var_3CC
  loc_6A076A: FLdRfVar var_3C2
  loc_6A076D: FLdRfVar var_9C
  loc_6A0770: NewIfNullRf
  loc_6A0774: ILdRf var_1F0
  loc_6A0777: LitStr " "
  loc_6A077A: ConcatStr
  loc_6A077B: FStStrNoPop var_1F4
  loc_6A077E: FLdZeroAd var_3C8
  loc_6A0781: FStStrNoPop var_22C
  loc_6A0784: ConcatStr
  loc_6A0785: FStStrNoPop var_230
  loc_6A0788: LitStr "  -  "
  loc_6A078B: ConcatStr
  loc_6A078C: FStStrNoPop var_380
  loc_6A078F: ILdRf var_37C
  loc_6A0792: ConcatStr
  loc_6A0793: FStStrNoPop var_384
  loc_6A0796: LitStr " "
  loc_6A0799: ConcatStr
  loc_6A079A: FStStrNoPop var_3B8
  loc_6A079D: FLdZeroAd var_3CC
  loc_6A07A0: FStStrNoPop var_3BC
  loc_6A07A3: ConcatStr
  loc_6A07A4: PopTmpLdAdStr
  loc_6A07A8: FLdRfVar var_98
  loc_6A07AB: NewIfNullPr CReporte
  loc_6A07AE:  = CReporte.hWnd
  loc_6A07B3: FFreeStr var_AC = "": var_1F0 = "": var_1F4 = "": var_22C = "": var_230 = "": var_238 = "": var_380 = "": var_37C = "": var_384 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C8 = ""
  loc_6A07D2: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_208 = "": var_228 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_394 = ""
  loc_6A0805: LitI2_Byte &HFF
  loc_6A0807: FLdRfVar var_9C
  loc_6A080A: NewIfNullPr CFuente
  loc_6A0812: LitI2_Byte &HC
  loc_6A0814: CR8I2
  loc_6A0815: PopFPR4
  loc_6A0816: FLdRfVar var_9C
  loc_6A0819: NewIfNullPr CFuente
  loc_6A0821: LitI2_Byte &HFF
  loc_6A0823: FLdRfVar var_9C
  loc_6A0826: NewIfNullPr CFuente
  loc_6A0829: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A082E: FLdRfVar var_1F0
  loc_6A0831: LitVar_Missing var_1EC
  loc_6A0834: LitVar_Missing var_1CC
  loc_6A0837: LitVar_Missing var_1AC
  loc_6A083A: LitVar_Missing var_18C
  loc_6A083D: LitVar_Missing var_16C
  loc_6A0840: LitVar_Missing var_14C
  loc_6A0843: LitVar_Missing var_12C
  loc_6A0846: LitVar_Missing var_10C
  loc_6A0849: LitVar_Missing var_EC
  loc_6A084C: LitVar_Missing var_CC
  loc_6A084F: LitStr "Playero"
  loc_6A0852: FStStrCopy var_AC
  loc_6A0855: FLdRfVar var_AC
  loc_6A0858: LitI4 &H19
  loc_6A085D: PopTmpLdAdStr var_A8
  loc_6A0860: LitI2_Byte &H23
  loc_6A0862: PopTmpLdAd2 var_A2
  loc_6A0865: ImpAdLdRf MemVar_74C7D0
  loc_6A0868: NewIfNullPr clsMsg
  loc_6A086B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0870: FLdRfVar var_22C
  loc_6A0873: LitVar_Missing var_338
  loc_6A0876: LitVar_Missing var_318
  loc_6A0879: LitVar_Missing var_2F8
  loc_6A087C: LitVar_Missing var_2D8
  loc_6A087F: LitVar_Missing var_2B8
  loc_6A0882: LitVar_Missing var_298
  loc_6A0885: LitVar_Missing var_278
  loc_6A0888: LitVar_Missing var_258
  loc_6A088B: LitVar_Missing var_228
  loc_6A088E: LitVar_Missing var_208
  loc_6A0891: LitStr "Monto"
  loc_6A0894: FStStrCopy var_1F4
  loc_6A0897: FLdRfVar var_1F4
  loc_6A089A: LitI4 &H1A
  loc_6A089F: PopTmpLdAdStr var_234
  loc_6A08A2: LitI2_Byte &H23
  loc_6A08A4: PopTmpLdAd2 var_1F6
  loc_6A08A7: ImpAdLdRf MemVar_74C7D0
  loc_6A08AA: NewIfNullPr clsMsg
  loc_6A08AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A08B2: FLdRfVar var_3C2
  loc_6A08B5: FLdRfVar var_9C
  loc_6A08B8: NewIfNullRf
  loc_6A08BC: ILdRf var_1F0
  loc_6A08BF: LitStr "                  "
  loc_6A08C2: ConcatStr
  loc_6A08C3: FStStrNoPop var_230
  loc_6A08C6: ILdRf var_22C
  loc_6A08C9: ConcatStr
  loc_6A08CA: PopTmpLdAdStr
  loc_6A08CE: FLdRfVar var_98
  loc_6A08D1: NewIfNullPr CReporte
  loc_6A08D4: Call 0.Method_arg_5C ()
  loc_6A08D9: FFreeStr var_AC = "": var_1F0 = "": var_1F4 = "": var_230 = "": var_22C = ""
  loc_6A08E8: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_208 = "": var_228 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = ""
  loc_6A0913: LitI2_Byte 0
  loc_6A0915: FLdRfVar var_9C
  loc_6A0918: NewIfNullPr CFuente
  loc_6A091B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A0920: LitI2_Byte &HA
  loc_6A0922: CR8I2
  loc_6A0923: PopFPR4
  loc_6A0924: FLdRfVar var_9C
  loc_6A0927: NewIfNullPr CFuente
  loc_6A092F: LitI2_Byte 1
  loc_6A0931: FStI2 var_8E
  loc_6A0934: FLdI2 var_8E
  loc_6A0937: CI4UI1
  loc_6A0938: ILdI4 arg_C
  loc_6A093B: FnLenStr
  loc_6A093C: LeI4
  loc_6A093D: BranchF loc_6A0BDC
  loc_6A0940: LitVarI2 var_CC, 3
  loc_6A0945: FLdI2 var_8E
  loc_6A0948: CI4UI1
  loc_6A0949: ILdI4 arg_C
  loc_6A094C: ImpAdCallI2 Mid$(, , )
  loc_6A0951: FStStrNoPop var_AC
  loc_6A0954: CI2Str
  loc_6A0956: FStI2 var_8A
  loc_6A0959: FFree1Str var_AC
  loc_6A095C: FFree1Var var_CC = ""
  loc_6A095F: FLdI2 var_8E
  loc_6A0962: LitI2_Byte 3
  loc_6A0964: AddI2
  loc_6A0965: FStI2 var_8E
  loc_6A0968: LitVarI2 var_CC, 4
  loc_6A096D: FLdI2 var_8E
  loc_6A0970: CI4UI1
  loc_6A0971: ILdI4 arg_C
  loc_6A0974: ImpAdCallI2 Mid$(, , )
  loc_6A0979: FStStrNoPop var_AC
  loc_6A097C: CI2Str
  loc_6A097E: FStI2 var_8C
  loc_6A0981: FFree1Str var_AC
  loc_6A0984: FFree1Var var_CC = ""
  loc_6A0987: FLdI2 var_8E
  loc_6A098A: LitI2_Byte 4
  loc_6A098C: AddI2
  loc_6A098D: FStI2 var_8E
  loc_6A0990: LitVarI2 var_CC, 10
  loc_6A0995: FLdI2 var_8E
  loc_6A0998: CI4UI1
  loc_6A0999: ILdI4 arg_C
  loc_6A099C: ImpAdCallI2 Mid$(, , )
  loc_6A09A1: FStStrNoPop var_AC
  loc_6A09A4: CR8Str
  loc_6A09A6: ImpAdLdFPR4 MemVar_74C2E0
  loc_6A09A9: DivR8
  loc_6A09AA: FStFPR4 var_94
  loc_6A09AD: FFree1Str var_AC
  loc_6A09B0: FFree1Var var_CC = ""
  loc_6A09B3: FLdI2 var_8E
  loc_6A09B6: LitI2_Byte &HA
  loc_6A09B8: AddI2
  loc_6A09B9: FStI2 var_8E
  loc_6A09BC: FLdI2 var_8C
  loc_6A09BF: ImpAdCallI2 Proc_158_10_5F0448()
  loc_6A09C4: FStStr var_88
  loc_6A09C7: ILdRf var_88
  loc_6A09CA: LitStr vbNullString
  loc_6A09CD: EqStr
  loc_6A09CF: BranchF loc_6A0AE4
  loc_6A09D2: LitI4 1
  loc_6A09D7: LitI4 1
  loc_6A09DC: LitVarStr var_DC, "@@@"
  loc_6A09E1: FStVarCopyObj var_CC
  loc_6A09E4: FLdRfVar var_CC
  loc_6A09E7: FLdRfVar var_8A
  loc_6A09EA: CVarRef
  loc_6A09EF: ImpAdCallI2 Format$(, )
  loc_6A09F4: FStStr var_238
  loc_6A09F7: LitI4 1
  loc_6A09FC: LitI4 1
  loc_6A0A01: LitVarStr var_11C, "@@@@"
  loc_6A0A06: FStVarCopyObj var_EC
  loc_6A0A09: FLdRfVar var_EC
  loc_6A0A0C: FLdRfVar var_8C
  loc_6A0A0F: CVarRef
  loc_6A0A14: ImpAdCallI2 Format$(, )
  loc_6A0A19: FStStr var_37C
  loc_6A0A1C: LitI4 9
  loc_6A0A21: FLdRfVar var_10C
  loc_6A0A24: ImpAdCallFPR4  = Space()
  loc_6A0A29: LitI4 1
  loc_6A0A2E: LitI4 1
  loc_6A0A33: ImpAdLdRf MemVar_74C364
  loc_6A0A36: CVarRef
  loc_6A0A3B: FLdRfVar var_94
  loc_6A0A3E: CVarRef
  loc_6A0A43: ImpAdCallI2 Format$(, )
  loc_6A0A48: FStStr var_380
  loc_6A0A4B: LitI4 1
  loc_6A0A50: LitI4 1
  loc_6A0A55: LitVarStr var_17C, "@@@@@@@@@@@"
  loc_6A0A5A: FStVarCopyObj var_18C
  loc_6A0A5D: FLdRfVar var_18C
  loc_6A0A60: FLdZeroAd var_380
  loc_6A0A63: CVarStr var_16C
  loc_6A0A66: ImpAdCallI2 Format$(, )
  loc_6A0A6B: FStStr var_384
  loc_6A0A6E: FLdRfVar var_A2
  loc_6A0A71: FLdRfVar var_9C
  loc_6A0A74: NewIfNullRf
  loc_6A0A78: LitStr "G: "
  loc_6A0A7B: FLdZeroAd var_238
  loc_6A0A7E: FStStrNoPop var_AC
  loc_6A0A81: ConcatStr
  loc_6A0A82: FStStrNoPop var_1F0
  loc_6A0A85: LitStr " - U: "
  loc_6A0A88: ConcatStr
  loc_6A0A89: FStStrNoPop var_1F4
  loc_6A0A8C: FLdZeroAd var_37C
  loc_6A0A8F: FStStrNoPop var_22C
  loc_6A0A92: ConcatStr
  loc_6A0A93: CVarStr var_12C
  loc_6A0A96: FLdRfVar var_10C
  loc_6A0A99: ConcatVar var_14C
  loc_6A0A9D: FLdZeroAd var_384
  loc_6A0AA0: CVarStr var_1AC
  loc_6A0AA3: ConcatVar var_1CC
  loc_6A0AA7: CStrVarTmp
  loc_6A0AA8: PopTmpLdAdStr
  loc_6A0AAC: FLdRfVar var_98
  loc_6A0AAF: NewIfNullPr CReporte
  loc_6A0AB2:  = CReporte.ForeColor
  loc_6A0AB7: FFreeStr var_AC = "": var_1F0 = "": var_1F4 = "": var_22C = "": var_230 = "": var_238 = "": var_37C = "": var_380 = ""
  loc_6A0ACC: FFreeVar var_CC = "": var_EC = "": var_12C = "": var_10C = "": var_16C = "": var_18C = "": var_14C = "": var_1AC = ""
  loc_6A0AE1: Branch loc_6A0BD9
  loc_6A0AE4: LitI4 &HF
  loc_6A0AE9: ILdRf var_88
  loc_6A0AEC: ImpAdCallI2 Left$(, )
  loc_6A0AF1: FStStr var_1F0
  loc_6A0AF4: LitVarStr var_BC, "@"
  loc_6A0AF9: FStVarCopyObj var_CC
  loc_6A0AFC: FLdRfVar var_CC
  loc_6A0AFF: LitI4 &HF
  loc_6A0B04: FLdRfVar var_EC
  loc_6A0B07: ImpAdCallFPR4  = String(, )
  loc_6A0B0C: LitI4 1
  loc_6A0B11: LitI4 1
  loc_6A0B16: LitVarStr var_DC, "!"
  loc_6A0B1B: FLdRfVar var_EC
  loc_6A0B1E: ConcatVar var_10C
  loc_6A0B22: FLdZeroAd var_1F0
  loc_6A0B25: CVarStr var_12C
  loc_6A0B28: ImpAdCallI2 Format$(, )
  loc_6A0B2D: FStStr var_1F4
  loc_6A0B30: LitI4 &HA
  loc_6A0B35: FLdRfVar var_14C
  loc_6A0B38: ImpAdCallFPR4  = Space()
  loc_6A0B3D: LitI4 1
  loc_6A0B42: LitI4 1
  loc_6A0B47: ImpAdLdRf MemVar_74C364
  loc_6A0B4A: CVarRef
  loc_6A0B4F: FLdRfVar var_94
  loc_6A0B52: CVarRef
  loc_6A0B57: ImpAdCallI2 Format$(, )
  loc_6A0B5C: FStStr var_22C
  loc_6A0B5F: LitI4 1
  loc_6A0B64: LitI4 1
  loc_6A0B69: LitVarStr var_13C, "@@@@@@@@@@@"
  loc_6A0B6E: FStVarCopyObj var_1CC
  loc_6A0B71: FLdRfVar var_1CC
  loc_6A0B74: FLdZeroAd var_22C
  loc_6A0B77: CVarStr var_1AC
  loc_6A0B7A: ImpAdCallI2 Format$(, )
  loc_6A0B7F: FStStr var_230
  loc_6A0B82: FLdRfVar var_A2
  loc_6A0B85: FLdRfVar var_9C
  loc_6A0B88: NewIfNullRf
  loc_6A0B8C: FLdZeroAd var_1F4
  loc_6A0B8F: CVarStr var_16C
  loc_6A0B92: FLdRfVar var_14C
  loc_6A0B95: ConcatVar var_18C
  loc_6A0B99: FLdZeroAd var_230
  loc_6A0B9C: CVarStr var_1EC
  loc_6A0B9F: ConcatVar var_208
  loc_6A0BA3: CStrVarTmp
  loc_6A0BA4: PopTmpLdAdStr
  loc_6A0BA8: FLdRfVar var_98
  loc_6A0BAB: NewIfNullPr CReporte
  loc_6A0BAE:  = CReporte.ForeColor
  loc_6A0BB3: FFreeStr var_AC = "": var_1F0 = "": var_1F4 = "": var_22C = ""
  loc_6A0BC0: FFreeVar var_CC = "": var_EC = "": var_12C = "": var_10C = "": var_16C = "": var_14C = "": var_1AC = "": var_1CC = "": var_18C = "": var_1EC = ""
  loc_6A0BD9: Branch loc_6A0934
  loc_6A0BDC: FLdRfVar var_A2
  loc_6A0BDF: FLdRfVar var_98
  loc_6A0BE2: NewIfNullPr CReporte
  loc_6A0BE5: CReporte.ForeColor = from_stack_1
  loc_6A0BEA: LitNothing
  loc_6A0BEC: CastAd
  loc_6A0BEF: FStAdFunc var_98
  loc_6A0BF2: LitNothing
  loc_6A0BF4: CastAd
  loc_6A0BF7: FStAdFunc var_9C
  loc_6A0BFA: ExitProc
End Function

Private Function Proc_158_10_5F0448(arg_C) '5F0448
  'Data Table: 40898C
  loc_5F03B8: LitI2_Byte 1
  loc_5F03BA: FStI2 var_8A
  loc_5F03BD: LitI4 1
  loc_5F03C2: LitI4 1
  loc_5F03C7: LitVarStr var_AC, "0000"
  loc_5F03CC: FStVarCopyObj var_BC
  loc_5F03CF: FLdRfVar var_BC
  loc_5F03D2: FLdRfVar arg_C
  loc_5F03D5: CVarRef
  loc_5F03DA: ImpAdCallI2 Format$(, )
  loc_5F03DF: FStStr var_CC
  loc_5F03E2: FLdRfVar var_C6
  loc_5F03E5: FLdRfVar var_88
  loc_5F03E8: FLdZeroAd var_CC
  loc_5F03EB: FStStrNoPop var_C4
  loc_5F03EE: FLdRfVar var_C0
  loc_5F03F1: ImpAdLdRf MemVar_74C760
  loc_5F03F4: NewIfNullPr Formx
  loc_5F03F7: from_stack_1v = Formx.global_4589716Get()
  loc_5F03FC: FLdPr var_C0
  loc_5F03FF: Call 0.Method_arg_26C ()
  loc_5F0404: FLdI2 var_C6
  loc_5F0407: NotI4
  loc_5F0408: FLdI2 var_8A
  loc_5F040B: LitI2_Byte 3
  loc_5F040D: LeI2
  loc_5F040E: AndI4
  loc_5F040F: FFreeStr var_C4 = ""
  loc_5F0416: FFree1Ad var_C0
  loc_5F0419: FFree1Var var_BC = ""
  loc_5F041C: BranchF loc_5F042B
  loc_5F041F: FLdI2 var_8A
  loc_5F0422: LitI2_Byte 1
  loc_5F0424: AddI2
  loc_5F0425: FStI2 var_8A
  loc_5F0428: Branch loc_5F03BD
  loc_5F042B: FLdI2 var_8A
  loc_5F042E: LitI2_Byte 3
  loc_5F0430: GtI2
  loc_5F0431: ILdRf var_88
  loc_5F0434: FnLenStr
  loc_5F0435: LitI4 2
  loc_5F043A: LtI4
  loc_5F043B: OrI4
  loc_5F043C: BranchF loc_5F0445
  loc_5F043F: LitStr vbNullString
  loc_5F0442: FStStrCopy var_88
  loc_5F0445: ExitProc
End Function

Private Function Proc_158_11_660378(arg_C, arg_10, arg_14, arg_18) '660378
  'Data Table: 402FF4
  loc_660058: ILdRf arg_C
  loc_66005B: FStStrCopy var_88
  loc_66005E: ILdRf arg_10
  loc_660061: FStStrCopy var_8C
  loc_660064: ILdRf arg_18
  loc_660067: FStStrCopy var_90
  loc_66006A: LitI4 0
  loc_66006F: LitI4 1
  loc_660074: FMemLdRf unk_402FFD
  loc_660079: Redim
  loc_660083: LitStr vbNullString
  loc_660086: LitI4 1
  loc_66008B: FMemLdR4 arg_8(68)
  loc_660090: Ary1StStrCopy
  loc_660091: LitStr vbNullString
  loc_660094: FStStrCopy var_98
  loc_660097: ILdRf var_88
  loc_66009A: FStStrCopy var_A0
  loc_66009D: ImpAdCallFPR4 Proc_166_17_5DBC20()
  loc_6600A2: ILdRf var_98
  loc_6600A5: ILdRf var_8C
  loc_6600A8: NeStr
  loc_6600AA: BranchF loc_660375
  loc_6600AD: FLdRfVar var_B8
  loc_6600B0: FLdRfVar var_98
  loc_6600B3: FLdRfVar var_A4
  loc_6600B6: ILdRf var_90
  loc_6600B9: FLdI2 arg_14
  loc_6600BC: ILdRf var_8C
  loc_6600BF: ILdRf var_A0
  loc_6600C2: FLdRfVar var_A8
  loc_6600C5: ImpAdLdRf MemVar_74C760
  loc_6600C8: NewIfNullPr Formx
  loc_6600CB: from_stack_1v = Formx.global_4589716Get()
  loc_6600D0: FLdPr var_A8
  loc_6600D3: Formx.ScaleLeft = from_stack_1s
  loc_6600D8: FLdRfVar var_B8
  loc_6600DB: NotVar var_C8
  loc_6600DF: CBoolVarNull
  loc_6600E1: FFree1Ad var_A8
  loc_6600E4: FFree1Var var_B8 = ""
  loc_6600E7: BranchF loc_660101
  loc_6600EA: FLdRfVar var_B8
  loc_6600ED: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6600F2: FLdRfVar var_B8
  loc_6600F5: CBoolVarNull
  loc_6600F7: FFree1Var var_B8 = ""
  loc_6600FA: BranchF loc_6600FE
  loc_6600FD: ExitProc
  loc_6600FE: Branch loc_6600AD
  loc_660101: ILdRf var_A4
  loc_660104: LitI4 0
  loc_660109: EqI4
  loc_66010A: BranchF loc_660110
  loc_66010D: Branch loc_660375
  loc_660110: FLdRfVar var_B8
  loc_660113: FLdRfVar var_94
  loc_660116: ILdRf var_A4
  loc_660119: FLdRfVar var_A8
  loc_66011C: ImpAdLdRf MemVar_74C760
  loc_66011F: NewIfNullPr Formx
  loc_660122: from_stack_1v = Formx.global_4589716Get()
  loc_660127: FLdPr var_A8
  loc_66012A:  = Formx.ScaleTop
  loc_66012F: FLdRfVar var_B8
  loc_660132: NotVar var_C8
  loc_660136: CBoolVarNull
  loc_660138: FFree1Ad var_A8
  loc_66013B: FFree1Var var_B8 = ""
  loc_66013E: BranchF loc_660158
  loc_660141: FLdRfVar var_B8
  loc_660144: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_660149: FLdRfVar var_B8
  loc_66014C: CBoolVarNull
  loc_66014E: FFree1Var var_B8 = ""
  loc_660151: BranchF loc_660155
  loc_660154: ExitProc
  loc_660155: Branch loc_660110
  loc_660158: ILdRf var_94
  loc_66015B: FnLenStr
  loc_66015C: FMemLdUI1 arg_8(0)
  loc_660162: CI4UI1
  loc_660163: LtI4
  loc_660164: BranchF loc_660168
  loc_660167: ExitProc
  loc_660168: ILdRf var_98
  loc_66016B: ILdRf var_8C
  loc_66016E: NeStr
  loc_660170: BranchF loc_6601B3
  loc_660173: FLdI2 arg_14
  loc_660176: BranchF loc_6601AA
  loc_660179: LitI4 6
  loc_66017E: FLdRfVar var_8C
  loc_660181: CVarRef
  loc_660186: FLdRfVar var_B8
  loc_660189: ImpAdCallFPR4  = Right(, )
  loc_66018E: FLdRfVar var_B8
  loc_660191: CStrVarTmp
  loc_660192: PopTmpLdAdStr
  loc_660196: ILdRf var_98
  loc_660199: ImpAdCallI2 Proc_166_18_621DF4(, )
  loc_66019E: FStStr var_9C
  loc_6601A1: FFree1Str var_DC
  loc_6601A4: FFree1Var var_B8 = ""
  loc_6601A7: Branch loc_6601B0
  loc_6601AA: ILdRf var_98
  loc_6601AD: FStStrCopy var_9C
  loc_6601B0: Branch loc_6601B9
  loc_6601B3: ILdRf var_98
  loc_6601B6: FStStrCopy var_9C
  loc_6601B9: FMemLdR4 arg_8(68)
  loc_6601BE: LitI2_Byte 1
  loc_6601C0: FnUBound
  loc_6601C2: LitI4 1
  loc_6601C7: EqI4
  loc_6601C8: LitI4 1
  loc_6601CD: FMemLdR4 arg_8(68)
  loc_6601D2: Ary1LdI4
  loc_6601D3: LitStr vbNullString
  loc_6601D6: EqStr
  loc_6601D8: AndI4
  loc_6601D9: BranchF loc_660260
  loc_6601DC: ILdRf var_A0
  loc_6601DF: LitStr ";"
  loc_6601E2: ConcatStr
  loc_6601E3: FStStrNoPop var_DC
  loc_6601E6: ILdRf var_9C
  loc_6601E9: ConcatStr
  loc_6601EA: FStStrNoPop var_E0
  loc_6601ED: LitStr ";"
  loc_6601F0: ConcatStr
  loc_6601F1: CVarStr var_120
  loc_6601F4: LitVarStr var_100, "0"
  loc_6601F9: FStVarCopyObj var_C8
  loc_6601FC: FLdRfVar var_C8
  loc_6601FF: LitVarStr var_F0, "1"
  loc_660204: FStVarCopyObj var_B8
  loc_660207: FLdRfVar var_B8
  loc_66020A: FLdRfVar arg_14
  loc_66020D: CVarRef
  loc_660212: FLdRfVar var_110
  loc_660215: ImpAdCallFPR4  = IIf(, , )
  loc_66021A: FLdRfVar var_110
  loc_66021D: ConcatVar var_130
  loc_660221: LitVarStr var_140, ";"
  loc_660226: ConcatVar var_150
  loc_66022A: ILdRf var_90
  loc_66022D: CVarStr var_160
  loc_660230: ConcatVar var_170
  loc_660234: CStrVarTmp
  loc_660235: FStStrNoPop var_174
  loc_660238: LitI4 1
  loc_66023D: FMemLdR4 arg_8(68)
  loc_660242: Ary1StStrCopy
  loc_660243: FFreeStr var_DC = "": var_E0 = ""
  loc_66024C: FFreeVar var_B8 = "": var_C8 = "": var_120 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_66025D: Branch loc_660308
  loc_660260: LitI4 0
  loc_660265: FMemLdR4 arg_8(68)
  loc_66026A: LitI2_Byte 1
  loc_66026C: FnUBound
  loc_66026E: LitI4 1
  loc_660273: AddI4
  loc_660274: FMemLdRf unk_402FFD
  loc_660279: RedimPreserve
  loc_660283: ILdRf var_A0
  loc_660286: LitStr ";"
  loc_660289: ConcatStr
  loc_66028A: FStStrNoPop var_DC
  loc_66028D: ILdRf var_9C
  loc_660290: ConcatStr
  loc_660291: FStStrNoPop var_E0
  loc_660294: LitStr ";"
  loc_660297: ConcatStr
  loc_660298: CVarStr var_120
  loc_66029B: LitVarStr var_100, "0"
  loc_6602A0: FStVarCopyObj var_C8
  loc_6602A3: FLdRfVar var_C8
  loc_6602A6: LitVarStr var_F0, "1"
  loc_6602AB: FStVarCopyObj var_B8
  loc_6602AE: FLdRfVar var_B8
  loc_6602B1: FLdRfVar arg_14
  loc_6602B4: CVarRef
  loc_6602B9: FLdRfVar var_110
  loc_6602BC: ImpAdCallFPR4  = IIf(, , )
  loc_6602C1: FLdRfVar var_110
  loc_6602C4: ConcatVar var_130
  loc_6602C8: LitVarStr var_140, ";"
  loc_6602CD: ConcatVar var_150
  loc_6602D1: ILdRf var_90
  loc_6602D4: CVarStr var_160
  loc_6602D7: ConcatVar var_170
  loc_6602DB: CStrVarTmp
  loc_6602DC: FStStrNoPop var_174
  loc_6602DF: FMemLdR4 arg_8(68)
  loc_6602E4: LitI2_Byte 1
  loc_6602E6: FnUBound
  loc_6602E8: FMemLdR4 arg_8(68)
  loc_6602ED: Ary1StStrCopy
  loc_6602EE: FFreeStr var_DC = "": var_E0 = ""
  loc_6602F7: FFreeVar var_B8 = "": var_C8 = "": var_120 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_660308: LitI2_Byte 3
  loc_66030A: ILdRf var_9C
  loc_66030D: FLdI2 arg_14
  loc_660310: FLdRfVar var_94
  loc_660313: ImpAdCallFPR4 Proc_166_19_67A5A0(, , , )
  loc_660318: ImpAdCallFPR4 DoEvents()
  loc_66031D: FLdI2 arg_14
  loc_660320: BranchF loc_660367
  loc_660323: LitI4 8
  loc_660328: FLdRfVar var_98
  loc_66032B: CVarRef
  loc_660330: FLdRfVar var_B8
  loc_660333: ImpAdCallFPR4  = Left(, )
  loc_660338: FLdRfVar var_B8
  loc_66033B: LitI4 6
  loc_660340: FLdRfVar var_88
  loc_660343: CVarRef
  loc_660348: FLdRfVar var_C8
  loc_66034B: ImpAdCallFPR4  = Right(, )
  loc_660350: FLdRfVar var_C8
  loc_660353: ConcatVar var_110
  loc_660357: CStrVarTmp
  loc_660358: FStStr var_A0
  loc_66035B: FFreeVar var_B8 = "": var_C8 = ""
  loc_660364: Branch loc_660372
  loc_660367: FLdRfVar var_9C
  loc_66036A: ImpAdCallI2 Proc_166_20_632200()
  loc_66036F: FStStr var_A0
  loc_660372: Branch loc_6600A2
  loc_660375: ExitProc
End Function

Private Function Proc_158_12_6C96C0(arg_C) '6C96C0
  'Data Table: 43B664
  loc_6C8DB4: FLdRfVar var_1D8
  loc_6C8DB7: LitVar_Missing var_1D4
  loc_6C8DBA: LitVar_Missing var_1B4
  loc_6C8DBD: LitVar_Missing var_194
  loc_6C8DC0: LitVar_Missing var_174
  loc_6C8DC3: LitVar_Missing var_154
  loc_6C8DC6: LitVar_Missing var_134
  loc_6C8DC9: LitVar_Missing var_114
  loc_6C8DCC: LitVar_Missing var_F4
  loc_6C8DCF: LitVar_Missing var_D4
  loc_6C8DD2: LitVar_Missing var_B4
  loc_6C8DD5: LitStr "Impago"
  loc_6C8DD8: FStStrCopy var_94
  loc_6C8DDB: FLdRfVar var_94
  loc_6C8DDE: LitI4 &H50
  loc_6C8DE3: PopTmpLdAdStr var_90
  loc_6C8DE6: LitI2_Byte 9
  loc_6C8DE8: PopTmpLdAd2 var_8A
  loc_6C8DEB: ImpAdLdRf MemVar_74C7D0
  loc_6C8DEE: NewIfNullPr clsMsg
  loc_6C8DF1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8DF6: FLdZeroAd var_1D8
  loc_6C8DF9: FMemStStr arg_8(1456)
  loc_6C8DFF: FFree1Str var_94
  loc_6C8E02: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C8E19: FLdRfVar var_1D8
  loc_6C8E1C: LitVar_Missing var_1D4
  loc_6C8E1F: LitVar_Missing var_1B4
  loc_6C8E22: LitVar_Missing var_194
  loc_6C8E25: LitVar_Missing var_174
  loc_6C8E28: LitVar_Missing var_154
  loc_6C8E2B: LitVar_Missing var_134
  loc_6C8E2E: LitVar_Missing var_114
  loc_6C8E31: LitVar_Missing var_F4
  loc_6C8E34: LitVar_Missing var_D4
  loc_6C8E37: LitVar_Missing var_B4
  loc_6C8E3A: LitStr "Controlador"
  loc_6C8E3D: FStStrCopy var_94
  loc_6C8E40: FLdRfVar var_94
  loc_6C8E43: LitI4 &H51
  loc_6C8E48: PopTmpLdAdStr var_90
  loc_6C8E4B: LitI2_Byte 9
  loc_6C8E4D: PopTmpLdAd2 var_8A
  loc_6C8E50: ImpAdLdRf MemVar_74C7D0
  loc_6C8E53: NewIfNullPr clsMsg
  loc_6C8E56: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8E5B: FLdZeroAd var_1D8
  loc_6C8E5E: FMemStStr arg_8(1460)
  loc_6C8E64: FFree1Str var_94
  loc_6C8E67: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C8E7E: FLdRfVar var_1D8
  loc_6C8E81: LitVar_Missing var_1D4
  loc_6C8E84: LitVar_Missing var_1B4
  loc_6C8E87: LitVar_Missing var_194
  loc_6C8E8A: LitVar_Missing var_174
  loc_6C8E8D: LitVar_Missing var_154
  loc_6C8E90: LitVar_Missing var_134
  loc_6C8E93: LitVar_Missing var_114
  loc_6C8E96: LitVar_Missing var_F4
  loc_6C8E99: LitVar_Missing var_D4
  loc_6C8E9C: LitVar_Missing var_B4
  loc_6C8E9F: LitStr "Prueba de surtidor"
  loc_6C8EA2: FStStrCopy var_94
  loc_6C8EA5: FLdRfVar var_94
  loc_6C8EA8: LitI4 &H52
  loc_6C8EAD: PopTmpLdAdStr var_90
  loc_6C8EB0: LitI2_Byte 9
  loc_6C8EB2: PopTmpLdAd2 var_8A
  loc_6C8EB5: ImpAdLdRf MemVar_74C7D0
  loc_6C8EB8: NewIfNullPr clsMsg
  loc_6C8EBB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8EC0: FLdZeroAd var_1D8
  loc_6C8EC3: FMemStStr arg_8(1464)
  loc_6C8EC9: FFree1Str var_94
  loc_6C8ECC: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C8EE3: FLdRfVar var_1D8
  loc_6C8EE6: LitVar_Missing var_1D4
  loc_6C8EE9: LitVar_Missing var_1B4
  loc_6C8EEC: LitVar_Missing var_194
  loc_6C8EEF: LitVar_Missing var_174
  loc_6C8EF2: LitVar_Missing var_154
  loc_6C8EF5: LitVar_Missing var_134
  loc_6C8EF8: LitVar_Missing var_114
  loc_6C8EFB: LitVar_Missing var_F4
  loc_6C8EFE: LitVar_Missing var_D4
  loc_6C8F01: LitVar_Missing var_B4
  loc_6C8F04: LitStr "Prueba sin retorno"
  loc_6C8F07: FStStrCopy var_94
  loc_6C8F0A: FLdRfVar var_94
  loc_6C8F0D: LitI4 &H53
  loc_6C8F12: PopTmpLdAdStr var_90
  loc_6C8F15: LitI2_Byte 9
  loc_6C8F17: PopTmpLdAd2 var_8A
  loc_6C8F1A: ImpAdLdRf MemVar_74C7D0
  loc_6C8F1D: NewIfNullPr clsMsg
  loc_6C8F20: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8F25: FLdZeroAd var_1D8
  loc_6C8F28: FMemStStr arg_8(1468)
  loc_6C8F2E: FFree1Str var_94
  loc_6C8F31: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C8F48: FLdRfVar var_1D8
  loc_6C8F4B: LitVar_Missing var_1D4
  loc_6C8F4E: LitVar_Missing var_1B4
  loc_6C8F51: LitVar_Missing var_194
  loc_6C8F54: LitVar_Missing var_174
  loc_6C8F57: LitVar_Missing var_154
  loc_6C8F5A: LitVar_Missing var_134
  loc_6C8F5D: LitVar_Missing var_114
  loc_6C8F60: LitVar_Missing var_F4
  loc_6C8F63: LitVar_Missing var_D4
  loc_6C8F66: LitVar_Missing var_B4
  loc_6C8F69: LitStr "Incobrable"
  loc_6C8F6C: FStStrCopy var_94
  loc_6C8F6F: FLdRfVar var_94
  loc_6C8F72: LitI4 &H54
  loc_6C8F77: PopTmpLdAdStr var_90
  loc_6C8F7A: LitI2_Byte 9
  loc_6C8F7C: PopTmpLdAd2 var_8A
  loc_6C8F7F: ImpAdLdRf MemVar_74C7D0
  loc_6C8F82: NewIfNullPr clsMsg
  loc_6C8F85: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8F8A: FLdZeroAd var_1D8
  loc_6C8F8D: FMemStStr arg_8(1472)
  loc_6C8F93: FFree1Str var_94
  loc_6C8F96: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C8FAD: FLdRfVar var_1D8
  loc_6C8FB0: LitVar_Missing var_1D4
  loc_6C8FB3: LitVar_Missing var_1B4
  loc_6C8FB6: LitVar_Missing var_194
  loc_6C8FB9: LitVar_Missing var_174
  loc_6C8FBC: LitVar_Missing var_154
  loc_6C8FBF: LitVar_Missing var_134
  loc_6C8FC2: LitVar_Missing var_114
  loc_6C8FC5: LitVar_Missing var_F4
  loc_6C8FC8: LitVar_Missing var_D4
  loc_6C8FCB: LitVar_Missing var_B4
  loc_6C8FCE: LitStr "Venta sin control"
  loc_6C8FD1: FStStrCopy var_94
  loc_6C8FD4: FLdRfVar var_94
  loc_6C8FD7: LitI4 &H55
  loc_6C8FDC: PopTmpLdAdStr var_90
  loc_6C8FDF: LitI2_Byte 9
  loc_6C8FE1: PopTmpLdAd2 var_8A
  loc_6C8FE4: ImpAdLdRf MemVar_74C7D0
  loc_6C8FE7: NewIfNullPr clsMsg
  loc_6C8FEA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C8FEF: FLdZeroAd var_1D8
  loc_6C8FF2: FMemStStr arg_8(1476)
  loc_6C8FF8: FFree1Str var_94
  loc_6C8FFB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9012: FLdRfVar var_1D8
  loc_6C9015: LitVar_Missing var_1D4
  loc_6C9018: LitVar_Missing var_1B4
  loc_6C901B: LitVar_Missing var_194
  loc_6C901E: LitVar_Missing var_174
  loc_6C9021: LitVar_Missing var_154
  loc_6C9024: LitVar_Missing var_134
  loc_6C9027: LitVar_Missing var_114
  loc_6C902A: LitVar_Missing var_F4
  loc_6C902D: LitVar_Missing var_D4
  loc_6C9030: LitVar_Missing var_B4
  loc_6C9033: LitStr "Pago CTF - Local"
  loc_6C9036: FStStrCopy var_94
  loc_6C9039: FLdRfVar var_94
  loc_6C903C: LitI4 &H56
  loc_6C9041: PopTmpLdAdStr var_90
  loc_6C9044: LitI2_Byte 9
  loc_6C9046: PopTmpLdAd2 var_8A
  loc_6C9049: ImpAdLdRf MemVar_74C7D0
  loc_6C904C: NewIfNullPr clsMsg
  loc_6C904F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9054: FLdZeroAd var_1D8
  loc_6C9057: FMemStStr arg_8(1480)
  loc_6C905D: FFree1Str var_94
  loc_6C9060: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9077: FLdRfVar var_1D8
  loc_6C907A: LitVar_Missing var_1D4
  loc_6C907D: LitVar_Missing var_1B4
  loc_6C9080: LitVar_Missing var_194
  loc_6C9083: LitVar_Missing var_174
  loc_6C9086: LitVar_Missing var_154
  loc_6C9089: LitVar_Missing var_134
  loc_6C908C: LitVar_Missing var_114
  loc_6C908F: LitVar_Missing var_F4
  loc_6C9092: LitVar_Missing var_D4
  loc_6C9095: LitVar_Missing var_B4
  loc_6C9098: LitStr "Pago CTF - Red"
  loc_6C909B: FStStrCopy var_94
  loc_6C909E: FLdRfVar var_94
  loc_6C90A1: LitI4 &H57
  loc_6C90A6: PopTmpLdAdStr var_90
  loc_6C90A9: LitI2_Byte 9
  loc_6C90AB: PopTmpLdAd2 var_8A
  loc_6C90AE: ImpAdLdRf MemVar_74C7D0
  loc_6C90B1: NewIfNullPr clsMsg
  loc_6C90B4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C90B9: FLdZeroAd var_1D8
  loc_6C90BC: FMemStStr arg_8(1484)
  loc_6C90C2: FFree1Str var_94
  loc_6C90C5: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C90DC: FLdRfVar var_1D8
  loc_6C90DF: LitVar_Missing var_1D4
  loc_6C90E2: LitVar_Missing var_1B4
  loc_6C90E5: LitVar_Missing var_194
  loc_6C90E8: LitVar_Missing var_174
  loc_6C90EB: LitVar_Missing var_154
  loc_6C90EE: LitVar_Missing var_134
  loc_6C90F1: LitVar_Missing var_114
  loc_6C90F4: LitVar_Missing var_F4
  loc_6C90F7: LitVar_Missing var_D4
  loc_6C90FA: LitVar_Missing var_B4
  loc_6C90FD: LitStr "Consola"
  loc_6C9100: FStStrCopy var_94
  loc_6C9103: FLdRfVar var_94
  loc_6C9106: LitI4 &H58
  loc_6C910B: PopTmpLdAdStr var_90
  loc_6C910E: LitI2_Byte 9
  loc_6C9110: PopTmpLdAd2 var_8A
  loc_6C9113: ImpAdLdRf MemVar_74C7D0
  loc_6C9116: NewIfNullPr clsMsg
  loc_6C9119: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C911E: FLdZeroAd var_1D8
  loc_6C9121: FMemStStr arg_8(1488)
  loc_6C9127: FFree1Str var_94
  loc_6C912A: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9141: FLdRfVar var_1D8
  loc_6C9144: LitVar_Missing var_1D4
  loc_6C9147: LitVar_Missing var_1B4
  loc_6C914A: LitVar_Missing var_194
  loc_6C914D: LitVar_Missing var_174
  loc_6C9150: LitVar_Missing var_154
  loc_6C9153: LitVar_Missing var_134
  loc_6C9156: LitVar_Missing var_114
  loc_6C9159: LitVar_Missing var_F4
  loc_6C915C: LitVar_Missing var_D4
  loc_6C915F: LitVar_Missing var_B4
  loc_6C9162: LitStr "CRIND Efectivo"
  loc_6C9165: FStStrCopy var_94
  loc_6C9168: FLdRfVar var_94
  loc_6C916B: LitI4 &H59
  loc_6C9170: PopTmpLdAdStr var_90
  loc_6C9173: LitI2_Byte 9
  loc_6C9175: PopTmpLdAd2 var_8A
  loc_6C9178: ImpAdLdRf MemVar_74C7D0
  loc_6C917B: NewIfNullPr clsMsg
  loc_6C917E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9183: FLdZeroAd var_1D8
  loc_6C9186: FMemStStr arg_8(1492)
  loc_6C918C: FFree1Str var_94
  loc_6C918F: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C91A6: FLdRfVar var_1D8
  loc_6C91A9: LitVar_Missing var_1D4
  loc_6C91AC: LitVar_Missing var_1B4
  loc_6C91AF: LitVar_Missing var_194
  loc_6C91B2: LitVar_Missing var_174
  loc_6C91B5: LitVar_Missing var_154
  loc_6C91B8: LitVar_Missing var_134
  loc_6C91BB: LitVar_Missing var_114
  loc_6C91BE: LitVar_Missing var_F4
  loc_6C91C1: LitVar_Missing var_D4
  loc_6C91C4: LitVar_Missing var_B4
  loc_6C91C7: LitStr "CRIND Tarjeta"
  loc_6C91CA: FStStrCopy var_94
  loc_6C91CD: FLdRfVar var_94
  loc_6C91D0: LitI4 &H5A
  loc_6C91D5: PopTmpLdAdStr var_90
  loc_6C91D8: LitI2_Byte 9
  loc_6C91DA: PopTmpLdAd2 var_8A
  loc_6C91DD: ImpAdLdRf MemVar_74C7D0
  loc_6C91E0: NewIfNullPr clsMsg
  loc_6C91E3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C91E8: FLdZeroAd var_1D8
  loc_6C91EB: FMemStStr arg_8(1496)
  loc_6C91F1: FFree1Str var_94
  loc_6C91F4: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C920B: FLdRfVar var_1D8
  loc_6C920E: LitVar_Missing var_1D4
  loc_6C9211: LitVar_Missing var_1B4
  loc_6C9214: LitVar_Missing var_194
  loc_6C9217: LitVar_Missing var_174
  loc_6C921A: LitVar_Missing var_154
  loc_6C921D: LitVar_Missing var_134
  loc_6C9220: LitVar_Missing var_114
  loc_6C9223: LitVar_Missing var_F4
  loc_6C9226: LitVar_Missing var_D4
  loc_6C9229: LitVar_Missing var_B4
  loc_6C922C: LitStr "CRIND Efec. FACT"
  loc_6C922F: FStStrCopy var_94
  loc_6C9232: FLdRfVar var_94
  loc_6C9235: LitI4 &H5B
  loc_6C923A: PopTmpLdAdStr var_90
  loc_6C923D: LitI2_Byte 9
  loc_6C923F: PopTmpLdAd2 var_8A
  loc_6C9242: ImpAdLdRf MemVar_74C7D0
  loc_6C9245: NewIfNullPr clsMsg
  loc_6C9248: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C924D: FLdZeroAd var_1D8
  loc_6C9250: FMemStStr arg_8(1500)
  loc_6C9256: FFree1Str var_94
  loc_6C9259: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9270: FLdRfVar var_1D8
  loc_6C9273: LitVar_Missing var_1D4
  loc_6C9276: LitVar_Missing var_1B4
  loc_6C9279: LitVar_Missing var_194
  loc_6C927C: LitVar_Missing var_174
  loc_6C927F: LitVar_Missing var_154
  loc_6C9282: LitVar_Missing var_134
  loc_6C9285: LitVar_Missing var_114
  loc_6C9288: LitVar_Missing var_F4
  loc_6C928B: LitVar_Missing var_D4
  loc_6C928E: LitVar_Missing var_B4
  loc_6C9291: LitStr "CRIND Tarj. FACT"
  loc_6C9294: FStStrCopy var_94
  loc_6C9297: FLdRfVar var_94
  loc_6C929A: LitI4 &H5C
  loc_6C929F: PopTmpLdAdStr var_90
  loc_6C92A2: LitI2_Byte 9
  loc_6C92A4: PopTmpLdAd2 var_8A
  loc_6C92A7: ImpAdLdRf MemVar_74C7D0
  loc_6C92AA: NewIfNullPr clsMsg
  loc_6C92AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C92B2: FLdZeroAd var_1D8
  loc_6C92B5: FMemStStr arg_8(1504)
  loc_6C92BB: FFree1Str var_94
  loc_6C92BE: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C92D5: FLdRfVar var_1D8
  loc_6C92D8: LitVar_Missing var_1D4
  loc_6C92DB: LitVar_Missing var_1B4
  loc_6C92DE: LitVar_Missing var_194
  loc_6C92E1: LitVar_Missing var_174
  loc_6C92E4: LitVar_Missing var_154
  loc_6C92E7: LitVar_Missing var_134
  loc_6C92EA: LitVar_Missing var_114
  loc_6C92ED: LitVar_Missing var_F4
  loc_6C92F0: LitVar_Missing var_D4
  loc_6C92F3: LitVar_Missing var_B4
  loc_6C92F6: LitStr "Pago externo"
  loc_6C92F9: FStStrCopy var_94
  loc_6C92FC: FLdRfVar var_94
  loc_6C92FF: LitI4 &H5D
  loc_6C9304: PopTmpLdAdStr var_90
  loc_6C9307: LitI2_Byte 9
  loc_6C9309: PopTmpLdAd2 var_8A
  loc_6C930C: ImpAdLdRf MemVar_74C7D0
  loc_6C930F: NewIfNullPr clsMsg
  loc_6C9312: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9317: FLdZeroAd var_1D8
  loc_6C931A: FMemStStr arg_8(1508)
  loc_6C9320: FFree1Str var_94
  loc_6C9323: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C933A: FLdRfVar var_1D8
  loc_6C933D: LitVar_Missing var_1D4
  loc_6C9340: LitVar_Missing var_1B4
  loc_6C9343: LitVar_Missing var_194
  loc_6C9346: LitVar_Missing var_174
  loc_6C9349: LitVar_Missing var_154
  loc_6C934C: LitVar_Missing var_134
  loc_6C934F: LitVar_Missing var_114
  loc_6C9352: LitVar_Missing var_F4
  loc_6C9355: LitVar_Missing var_D4
  loc_6C9358: LitVar_Missing var_B4
  loc_6C935B: LitStr "Facturado Consola"
  loc_6C935E: FStStrCopy var_94
  loc_6C9361: FLdRfVar var_94
  loc_6C9364: LitI4 &H5E
  loc_6C9369: PopTmpLdAdStr var_90
  loc_6C936C: LitI2_Byte 9
  loc_6C936E: PopTmpLdAd2 var_8A
  loc_6C9371: ImpAdLdRf MemVar_74C7D0
  loc_6C9374: NewIfNullPr clsMsg
  loc_6C9377: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C937C: FLdZeroAd var_1D8
  loc_6C937F: FMemStStr arg_8(1512)
  loc_6C9385: FFree1Str var_94
  loc_6C9388: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C939F: FLdRfVar var_1D8
  loc_6C93A2: LitVar_Missing var_1D4
  loc_6C93A5: LitVar_Missing var_1B4
  loc_6C93A8: LitVar_Missing var_194
  loc_6C93AB: LitVar_Missing var_174
  loc_6C93AE: LitVar_Missing var_154
  loc_6C93B1: LitVar_Missing var_134
  loc_6C93B4: LitVar_Missing var_114
  loc_6C93B7: LitVar_Missing var_F4
  loc_6C93BA: LitVar_Missing var_D4
  loc_6C93BD: LitVar_Missing var_B4
  loc_6C93C0: LitStr "Facturado POS"
  loc_6C93C3: FStStrCopy var_94
  loc_6C93C6: FLdRfVar var_94
  loc_6C93C9: LitI4 &H5F
  loc_6C93CE: PopTmpLdAdStr var_90
  loc_6C93D1: LitI2_Byte 9
  loc_6C93D3: PopTmpLdAd2 var_8A
  loc_6C93D6: ImpAdLdRf MemVar_74C7D0
  loc_6C93D9: NewIfNullPr clsMsg
  loc_6C93DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C93E1: FLdZeroAd var_1D8
  loc_6C93E4: FMemStStr arg_8(1516)
  loc_6C93EA: FFree1Str var_94
  loc_6C93ED: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9404: FLdRfVar var_1D8
  loc_6C9407: LitVar_Missing var_1D4
  loc_6C940A: LitVar_Missing var_1B4
  loc_6C940D: LitVar_Missing var_194
  loc_6C9410: LitVar_Missing var_174
  loc_6C9413: LitVar_Missing var_154
  loc_6C9416: LitVar_Missing var_134
  loc_6C9419: LitVar_Missing var_114
  loc_6C941C: LitVar_Missing var_F4
  loc_6C941F: LitVar_Missing var_D4
  loc_6C9422: LitVar_Missing var_B4
  loc_6C9425: LitStr "Facturado Tarjeta"
  loc_6C9428: FStStrCopy var_94
  loc_6C942B: FLdRfVar var_94
  loc_6C942E: LitI4 &H60
  loc_6C9433: PopTmpLdAdStr var_90
  loc_6C9436: LitI2_Byte 9
  loc_6C9438: PopTmpLdAd2 var_8A
  loc_6C943B: ImpAdLdRf MemVar_74C7D0
  loc_6C943E: NewIfNullPr clsMsg
  loc_6C9441: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C9446: FLdZeroAd var_1D8
  loc_6C9449: FMemStStr arg_8(1520)
  loc_6C944F: FFree1Str var_94
  loc_6C9452: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C9469: FLdRfVar var_1D8
  loc_6C946C: LitVar_Missing var_1D4
  loc_6C946F: LitVar_Missing var_1B4
  loc_6C9472: LitVar_Missing var_194
  loc_6C9475: LitVar_Missing var_174
  loc_6C9478: LitVar_Missing var_154
  loc_6C947B: LitVar_Missing var_134
  loc_6C947E: LitVar_Missing var_114
  loc_6C9481: LitVar_Missing var_F4
  loc_6C9484: LitVar_Missing var_D4
  loc_6C9487: LitVar_Missing var_B4
  loc_6C948A: LitStr "Tarjeta"
  loc_6C948D: FStStrCopy var_94
  loc_6C9490: FLdRfVar var_94
  loc_6C9493: LitI4 &H61
  loc_6C9498: PopTmpLdAdStr var_90
  loc_6C949B: LitI2_Byte 9
  loc_6C949D: PopTmpLdAd2 var_8A
  loc_6C94A0: ImpAdLdRf MemVar_74C7D0
  loc_6C94A3: NewIfNullPr clsMsg
  loc_6C94A6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C94AB: FLdZeroAd var_1D8
  loc_6C94AE: FMemStStr arg_8(1524)
  loc_6C94B4: FFree1Str var_94
  loc_6C94B7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6C94CE: ILdI2 arg_C
  loc_6C94D1: FStI2 var_1DA
  loc_6C94D4: FLdI2 var_1DA
  loc_6C94D7: LitI2_Byte 0
  loc_6C94D9: EqI2
  loc_6C94DA: BranchF loc_6C94E8
  loc_6C94DD: FMemLdR4 arg_8(1456)
  loc_6C94E2: FStStrCopy var_88
  loc_6C94E5: Branch loc_6C96BE
  loc_6C94E8: FLdI2 var_1DA
  loc_6C94EB: LitI2_Byte 1
  loc_6C94ED: EqI2
  loc_6C94EE: BranchF loc_6C94FC
  loc_6C94F1: FMemLdR4 arg_8(1460)
  loc_6C94F6: FStStrCopy var_88
  loc_6C94F9: Branch loc_6C96BE
  loc_6C94FC: FLdI2 var_1DA
  loc_6C94FF: LitI2_Byte 2
  loc_6C9501: EqI2
  loc_6C9502: BranchF loc_6C9510
  loc_6C9505: FMemLdR4 arg_8(1464)
  loc_6C950A: FStStrCopy var_88
  loc_6C950D: Branch loc_6C96BE
  loc_6C9510: FLdI2 var_1DA
  loc_6C9513: LitI2_Byte 3
  loc_6C9515: EqI2
  loc_6C9516: BranchF loc_6C9524
  loc_6C9519: FMemLdR4 arg_8(1468)
  loc_6C951E: FStStrCopy var_88
  loc_6C9521: Branch loc_6C96BE
  loc_6C9524: FLdI2 var_1DA
  loc_6C9527: LitI2_Byte 4
  loc_6C9529: EqI2
  loc_6C952A: BranchF loc_6C9538
  loc_6C952D: FMemLdR4 arg_8(1472)
  loc_6C9532: FStStrCopy var_88
  loc_6C9535: Branch loc_6C96BE
  loc_6C9538: FLdI2 var_1DA
  loc_6C953B: LitI2_Byte 5
  loc_6C953D: EqI2
  loc_6C953E: BranchF loc_6C954C
  loc_6C9541: FMemLdR4 arg_8(1476)
  loc_6C9546: FStStrCopy var_88
  loc_6C9549: Branch loc_6C96BE
  loc_6C954C: FLdI2 var_1DA
  loc_6C954F: LitI2_Byte &HA
  loc_6C9551: EqI2
  loc_6C9552: BranchF loc_6C9560
  loc_6C9555: FMemLdR4 arg_8(1480)
  loc_6C955A: FStStrCopy var_88
  loc_6C955D: Branch loc_6C96BE
  loc_6C9560: FLdI2 var_1DA
  loc_6C9563: LitI2_Byte &HB
  loc_6C9565: EqI2
  loc_6C9566: BranchF loc_6C9574
  loc_6C9569: FMemLdR4 arg_8(1484)
  loc_6C956E: FStStrCopy var_88
  loc_6C9571: Branch loc_6C96BE
  loc_6C9574: FLdI2 var_1DA
  loc_6C9577: LitI2_Byte &H10
  loc_6C9579: EqI2
  loc_6C957A: BranchF loc_6C9588
  loc_6C957D: FMemLdR4 arg_8(1488)
  loc_6C9582: FStStrCopy var_88
  loc_6C9585: Branch loc_6C96BE
  loc_6C9588: FLdI2 var_1DA
  loc_6C958B: LitI2_Byte &H12
  loc_6C958D: EqI2
  loc_6C958E: BranchF loc_6C959C
  loc_6C9591: FMemLdR4 arg_8(1492)
  loc_6C9596: FStStrCopy var_88
  loc_6C9599: Branch loc_6C96BE
  loc_6C959C: FLdI2 var_1DA
  loc_6C959F: LitI2_Byte &H13
  loc_6C95A1: EqI2
  loc_6C95A2: BranchF loc_6C95B0
  loc_6C95A5: FMemLdR4 arg_8(1496)
  loc_6C95AA: FStStrCopy var_88
  loc_6C95AD: Branch loc_6C96BE
  loc_6C95B0: FLdI2 var_1DA
  loc_6C95B3: LitI2_Byte &H2D
  loc_6C95B5: EqI2
  loc_6C95B6: BranchF loc_6C95C4
  loc_6C95B9: FMemLdR4 arg_8(1500)
  loc_6C95BE: FStStrCopy var_88
  loc_6C95C1: Branch loc_6C96BE
  loc_6C95C4: FLdI2 var_1DA
  loc_6C95C7: LitI2_Byte &H2E
  loc_6C95C9: EqI2
  loc_6C95CA: BranchF loc_6C95D8
  loc_6C95CD: FMemLdR4 arg_8(1504)
  loc_6C95D2: FStStrCopy var_88
  loc_6C95D5: Branch loc_6C96BE
  loc_6C95D8: FLdI2 var_1DA
  loc_6C95DB: LitI2_Byte &H11
  loc_6C95DD: EqI2
  loc_6C95DE: BranchT loc_6C95ED
  loc_6C95E1: FLdI2 var_1DA
  loc_6C95E4: LitI2_Byte &H16
  loc_6C95E6: LitI2_Byte &H1F
  loc_6C95E8: BetweenI2
  loc_6C95EA: BranchF loc_6C95F8
  loc_6C95ED: FMemLdR4 arg_8(1508)
  loc_6C95F2: FStStrCopy var_88
  loc_6C95F5: Branch loc_6C96BE
  loc_6C95F8: FLdI2 var_1DA
  loc_6C95FB: LitI2_Byte &H20
  loc_6C95FD: EqI2
  loc_6C95FE: BranchF loc_6C960C
  loc_6C9601: FMemLdR4 arg_8(1512)
  loc_6C9606: FStStrCopy var_88
  loc_6C9609: Branch loc_6C96BE
  loc_6C960C: FLdI2 var_1DA
  loc_6C960F: LitI2_Byte &H21
  loc_6C9611: LitI2_Byte &H2F
  loc_6C9613: BetweenI2
  loc_6C9615: BranchF loc_6C9623
  loc_6C9618: FMemLdR4 arg_8(1516)
  loc_6C961D: FStStrCopy var_88
  loc_6C9620: Branch loc_6C96BE
  loc_6C9623: FLdI2 var_1DA
  loc_6C9626: LitI2_Byte &H30
  loc_6C9628: LitI2_Byte &H4F
  loc_6C962A: BetweenI2
  loc_6C962C: BranchF loc_6C9674
  loc_6C962F: ILdI2 arg_C
  loc_6C9632: LitI2_Byte &H2F
  loc_6C9634: SubI2
  loc_6C9635: CI4UI1
  loc_6C9636: ImpAdLdRf MemVar_74A008
  loc_6C9639: Ary1LdRf
  loc_6C963A: CVarRef
  loc_6C963F: FLdRfVar var_B4
  loc_6C9642: ImpAdCallFPR4  = Trim()
  loc_6C9647: FLdRfVar var_B4
  loc_6C964A: LitVarStr var_C4, " (F)"
  loc_6C964F: ConcatVar var_D4
  loc_6C9653: CStrVarTmp
  loc_6C9654: FStStr var_88
  loc_6C9657: FFreeVar var_B4 = ""
  loc_6C965E: ILdRf var_88
  loc_6C9661: LitStr " (F)"
  loc_6C9664: EqStr
  loc_6C9666: BranchF loc_6C9671
  loc_6C9669: FMemLdR4 arg_8(1520)
  loc_6C966E: FStStrCopy var_88
  loc_6C9671: Branch loc_6C96BE
  loc_6C9674: FLdI2 var_1DA
  loc_6C9677: LitI2_Byte &H50
  loc_6C9679: LitI2_Byte &H6F
  loc_6C967B: BetweenI2
  loc_6C967D: BranchF loc_6C96B8
  loc_6C9680: ILdI2 arg_C
  loc_6C9683: LitI2_Byte &H4F
  loc_6C9685: SubI2
  loc_6C9686: CI4UI1
  loc_6C9687: ImpAdLdRf MemVar_74A008
  loc_6C968A: Ary1LdRf
  loc_6C968B: CVarRef
  loc_6C9690: FLdRfVar var_B4
  loc_6C9693: ImpAdCallFPR4  = Trim()
  loc_6C9698: FLdRfVar var_B4
  loc_6C969B: CStrVarTmp
  loc_6C969C: FStStr var_88
  loc_6C969F: FFree1Var var_B4 = ""
  loc_6C96A2: ILdRf var_88
  loc_6C96A5: LitStr vbNullString
  loc_6C96A8: EqStr
  loc_6C96AA: BranchF loc_6C96B5
  loc_6C96AD: FMemLdR4 arg_8(1524)
  loc_6C96B2: FStStrCopy var_88
  loc_6C96B5: Branch loc_6C96BE
  loc_6C96B8: LitStr vbNullString
  loc_6C96BB: FStStrCopy var_88
  loc_6C96BE: ExitProc
End Function

Private Function Proc_158_13_618ED0(arg_C) '618ED0
  'Data Table: 40376C
  loc_618DE8: LitVarI2 var_A8, 2
  loc_618DED: LitI4 7
  loc_618DF2: ILdI4 arg_C
  loc_618DF5: ImpAdCallI2 Mid$(, , )
  loc_618DFA: FStStrNoPop var_AC
  loc_618DFD: LitStr "/"
  loc_618E00: ConcatStr
  loc_618E01: FStStrNoPop var_D0
  loc_618E04: LitVarI2 var_CC, 2
  loc_618E09: LitI4 5
  loc_618E0E: ILdI4 arg_C
  loc_618E11: ImpAdCallI2 Mid$(, , )
  loc_618E16: FStStrNoPop var_D4
  loc_618E19: ConcatStr
  loc_618E1A: FStStrNoPop var_D8
  loc_618E1D: LitStr "/"
  loc_618E20: ConcatStr
  loc_618E21: FStStrNoPop var_FC
  loc_618E24: LitVarI2 var_F8, 4
  loc_618E29: LitI4 1
  loc_618E2E: ILdI4 arg_C
  loc_618E31: ImpAdCallI2 Mid$(, , )
  loc_618E36: FStStrNoPop var_100
  loc_618E39: ConcatStr
  loc_618E3A: FStStrNoPop var_104
  loc_618E3D: LitStr " "
  loc_618E40: ConcatStr
  loc_618E41: FStStrNoPop var_128
  loc_618E44: LitVarI2 var_124, 2
  loc_618E49: LitI4 9
  loc_618E4E: ILdI4 arg_C
  loc_618E51: ImpAdCallI2 Mid$(, , )
  loc_618E56: FStStrNoPop var_12C
  loc_618E59: ConcatStr
  loc_618E5A: FStStrNoPop var_130
  loc_618E5D: LitStr ":"
  loc_618E60: ConcatStr
  loc_618E61: FStStrNoPop var_154
  loc_618E64: LitVarI2 var_150, 2
  loc_618E69: LitI4 &HB
  loc_618E6E: ILdI4 arg_C
  loc_618E71: ImpAdCallI2 Mid$(, , )
  loc_618E76: FStStrNoPop var_158
  loc_618E79: ConcatStr
  loc_618E7A: FStStrNoPop var_15C
  loc_618E7D: LitStr ":"
  loc_618E80: ConcatStr
  loc_618E81: FStStrNoPop var_180
  loc_618E84: LitVarI2 var_17C, 2
  loc_618E89: LitI4 &HD
  loc_618E8E: ILdI4 arg_C
  loc_618E91: ImpAdCallI2 Mid$(, , )
  loc_618E96: FStStrNoPop var_184
  loc_618E99: ConcatStr
  loc_618E9A: FStStr var_88
  loc_618E9D: FFreeStr var_AC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_FC = "": var_100 = "": var_104 = "": var_128 = "": var_12C = "": var_130 = "": var_154 = "": var_158 = "": var_15C = "": var_180 = ""
  loc_618EBE: FFreeVar var_A8 = "": var_CC = "": var_F8 = "": var_124 = "": var_150 = ""
  loc_618ECD: ExitProc
  loc_618ECE: CRec2Uni arg_3400
End Function

Private Function Proc_158_14_615544(arg_C, arg_10, arg_14, arg_18) '615544
  'Data Table: 402FF4
  loc_615440: ILdRf arg_C
  loc_615443: FStStrCopy var_88
  loc_615446: ILdRf arg_10
  loc_615449: FStStrCopy var_8C
  loc_61544C: ILdRf arg_18
  loc_61544F: FStStrCopy var_90
  loc_615452: ImpAdCallFPR4 Proc_166_15_5DE00C()
  loc_615457: LitI2_Byte 1
  loc_615459: FLdRfVar var_92
  loc_61545C: FLdRfVar var_9A
  loc_61545F: ImpAdLdRf MemVar_74A220
  loc_615462: NewIfNullPr clsProducts
  loc_615465: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61546A: FLdI2 var_9A
  loc_61546D: ForI2 var_9E
  loc_615473: LitVarI2 var_D0, 1
  loc_615478: FLdI2 var_92
  loc_61547B: CI4UI1
  loc_61547C: FLdRfVar var_90
  loc_61547F: CVarRef
  loc_615484: FLdRfVar var_E0
  loc_615487: ImpAdCallFPR4  = Mid(, , )
  loc_61548C: FLdRfVar var_E0
  loc_61548F: LitVarStr var_F0, "1"
  loc_615494: HardType
  loc_615495: EqVarBool
  loc_615497: FFreeVar var_D0 = ""
  loc_61549E: BranchF loc_61553B
  loc_6154A1: FLdI2 arg_14
  loc_6154A4: NotI4
  loc_6154A5: BranchF loc_61553B
  loc_6154A8: FLdRfVar var_92
  loc_6154AB: ImpAdCallI2 Proc_166_16_5E94AC()
  loc_6154B0: FStStr var_110
  loc_6154B3: FLdRfVar var_9A
  loc_6154B6: FLdI2 var_92
  loc_6154B9: ImpAdLdRf MemVar_74A220
  loc_6154BC: NewIfNullPr clsProducts
  loc_6154BF:  = clsProducts.hWnd
  loc_6154C4: FLdI2 var_9A
  loc_6154C7: LitStr "11111111111111111111111111111111"
  loc_6154CA: FLdZeroAd var_110
  loc_6154CD: FStStrNoPop var_104
  loc_6154D0: ConcatStr
  loc_6154D1: FStStrNoPop var_108
  loc_6154D4: LitStr "1111111"
  loc_6154D7: ConcatStr
  loc_6154D8: FStStrNoPop var_10C
  loc_6154DB: LitI2_Byte 0
  loc_6154DD: ILdRf var_8C
  loc_6154E0: ILdRf var_88
  loc_6154E3: ImpAdCallFPR4  = Proc_158_11_660378(, , , )
  loc_6154E8: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_6154F3: FMemLdFPR8 arg_8(28)
  loc_6154F8: FLdI2 var_92
  loc_6154FB: CI4UI1
  loc_6154FC: FMemLdRf unk_402FFD
  loc_615501: Ary1LdPr
  loc_615502: MemStFPR8 global_0
  loc_615505: FMemLdFPR8 arg_8(36)
  loc_61550A: FLdI2 var_92
  loc_61550D: CI4UI1
  loc_61550E: FMemLdRf unk_402FFD
  loc_615513: Ary1LdPr
  loc_615514: MemStFPR8 global_8
  loc_615517: FMemLdR4 arg_8(44)
  loc_61551C: FLdI2 var_92
  loc_61551F: CI4UI1
  loc_615520: FMemLdRf unk_402FFD
  loc_615525: Ary1LdPr
  loc_615526: MemStI4 global_16
  loc_615529: FMemLdFPR8 arg_8(48)
  loc_61552E: FLdI2 var_92
  loc_615531: CI4UI1
  loc_615532: FMemLdRf unk_402FFD
  loc_615537: Ary1LdPr
  loc_615538: MemStFPR8 global_20
  loc_61553B: FLdRfVar var_92
  loc_61553E: NextI2 var_9E, loc_615473
  loc_615543: ExitProc
End Function

Private Function Proc_158_15_6247B0(arg_10, arg_14, arg_18) '6247B0
  'Data Table: 409184
  loc_624644: ILdRf arg_14
  loc_624647: FStStrCopy var_98
  loc_62464A: LitI4 0
  loc_62464F: FStR4 var_A8
  loc_624652: LitI4 1
  loc_624657: FStR4 var_9C
  loc_62465A: LitI4 0
  loc_62465F: LitI4 &H63
  loc_624664: FLdRfVar var_AC
  loc_624667: Redim
  loc_624671: LitI4 1
  loc_624676: ILdI4 arg_10
  loc_624679: ILdRf var_98
  loc_62467C: LitI4 0
  loc_624681: FnInStr4
  loc_624683: FStR4 var_A0
  loc_624686: ILdRf var_A0
  loc_624689: LitI4 0
  loc_62468E: GtI4
  loc_62468F: ILdRf var_A8
  loc_624692: ILdRf arg_18
  loc_624695: LeI4
  loc_624696: ILdRf arg_18
  loc_624699: LitI4 -1
  loc_62469E: EqI4
  loc_62469F: OrI4
  loc_6246A0: AndI4
  loc_6246A1: BranchF loc_624728
  loc_6246A4: ILdRf var_A0
  loc_6246A7: ILdRf var_9C
  loc_6246AA: SubI4
  loc_6246AB: CVarI4
  loc_6246AF: ILdRf var_9C
  loc_6246B2: ILdI4 arg_10
  loc_6246B5: ImpAdCallI2 Mid$(, , )
  loc_6246BA: FStStrNoPop var_D0
  loc_6246BD: ILdRf var_A8
  loc_6246C0: ILdRf var_AC
  loc_6246C3: Ary1StStrCopy
  loc_6246C4: FFree1Str var_D0
  loc_6246C7: FFree1Var var_CC = ""
  loc_6246CA: ILdRf var_A8
  loc_6246CD: LitI4 1
  loc_6246D2: AddI4
  loc_6246D3: FStR4 var_A8
  loc_6246D6: ILdRf var_A8
  loc_6246D9: LitI4 &H64
  loc_6246DE: ModI4
  loc_6246DF: LitI4 0
  loc_6246E4: EqI4
  loc_6246E5: BranchF loc_624707
  loc_6246E8: LitI4 0
  loc_6246ED: ILdRf var_AC
  loc_6246F0: LitI2_Byte 1
  loc_6246F2: FnUBound
  loc_6246F4: LitI4 &H64
  loc_6246F9: AddI4
  loc_6246FA: FLdRfVar var_AC
  loc_6246FD: RedimPreserve
  loc_624707: ILdRf var_A0
  loc_62470A: ILdRf var_98
  loc_62470D: FnLenStr
  loc_62470E: AddI4
  loc_62470F: FStR4 var_9C
  loc_624712: ILdRf var_9C
  loc_624715: ILdI4 arg_10
  loc_624718: ILdRf var_98
  loc_62471B: LitI4 0
  loc_624720: FnInStr4
  loc_624722: FStR4 var_A0
  loc_624725: Branch loc_624686
  loc_624728: ILdRf var_9C
  loc_62472B: ILdI4 arg_10
  loc_62472E: FnLenStr
  loc_62472F: LtI4
  loc_624730: BranchF loc_62475D
  loc_624733: LitVar_Missing var_CC
  loc_624736: ILdRf var_9C
  loc_624739: ILdI4 arg_10
  loc_62473C: ImpAdCallI2 Mid$(, , )
  loc_624741: FStStrNoPop var_D0
  loc_624744: ILdRf var_A8
  loc_624747: ILdRf var_AC
  loc_62474A: Ary1StStrCopy
  loc_62474B: FFree1Str var_D0
  loc_62474E: FFree1Var var_CC = ""
  loc_624751: ILdRf var_A8
  loc_624754: LitI4 1
  loc_624759: AddI4
  loc_62475A: FStR4 var_A8
  loc_62475D: ILdRf var_A8
  loc_624760: LitI4 0
  loc_624765: GtI4
  loc_624766: BranchF loc_624787
  loc_624769: LitI4 0
  loc_62476E: ILdRf var_A8
  loc_624771: LitI4 1
  loc_624776: SubI4
  loc_624777: FLdRfVar var_AC
  loc_62477A: RedimPreserve
  loc_624784: Branch loc_62479E
  loc_624787: LitI4 -1
  loc_62478C: LitI4 -1
  loc_624791: FLdRfVar var_AC
  loc_624794: Redim
  loc_62479E: ILdRf var_AC
  loc_6247A1: CVarRef
  loc_6247A6: FStVarCopy
  loc_6247AA: ExitProcCb
End Function
