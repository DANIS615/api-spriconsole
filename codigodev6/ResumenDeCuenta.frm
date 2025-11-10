VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form ResumenDeCuenta
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 105
  ClientWidth = 11910
  ClientHeight = 8910
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin MSFlexGridLib.MSFlexGrid Grid1
    Left = 360
    Top = 2040
    Width = 11115
    Height = 5295
    TabIndex = 2
    OleObjectBlob = "ResumenDeCuenta.frx":0000
  End
  Begin VB.TextBox NroCliente
    ForeColor = &H0&
    Left = 6000
    Top = 1320
    Width = 1455
    Height = 435
    TabIndex = 1
    MultiLine = -1  'True
    TabStop = 0   'False
    Alignment = 1 'Right Justify
    MaxLength = 4
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand cmdConsultar
    Left = 3120
    Top = 7800
    Width = 1695
    Height = 735
    TabIndex = 3
    OleObjectBlob = "ResumenDeCuenta.frx":00EC
  End
  Begin Threed.SSCommand cmdSalir
    Left = 9600
    Top = 7800
    Width = 1695
    Height = 735
    TabIndex = 4
    OleObjectBlob = "ResumenDeCuenta.frx":0152
  End
  Begin Threed.SSCommand cmdRecibos
    Left = 7440
    Top = 7800
    Width = 1695
    Height = 735
    TabIndex = 5
    OleObjectBlob = "ResumenDeCuenta.frx":01B6
  End
  Begin Threed.SSCommand cmdImprimir
    Left = 5280
    Top = 7800
    Width = 1695
    Height = 735
    TabIndex = 7
    OleObjectBlob = "ResumenDeCuenta.frx":021A
  End
  Begin VB.Label Label2
    Caption = "Resumen de Cuenta"
    Left = 2280
    Top = 240
    Width = 7335
    Height = 735
    TabIndex = 6
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 26.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Cliente Nº :"
    Left = 4200
    Top = 1320
    Width = 1695
    Height = 375
    TabIndex = 0
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "ResumenDeCuenta"

Private Type UDT_1_0046FB84
  bStruc(116) As Byte ' String fields: 8
End Type


Private Sub cmdRecibos_UnknownEvent_8 '5D06B4
  'Data Table: 41BC2C
  loc_5D069C: LitVar_Missing var_A4
  loc_5D069F: PopAdLdVar
  loc_5D06A0: LitVarI2 var_94, 1
  loc_5D06A5: PopAdLdVar
  loc_5D06A6: ImpAdLdRf MemVar_74DAC8
  loc_5D06A9: NewIfNullPr IngresoRecibos
  loc_5D06AC: IngresoRecibos.Show from_stack_1, from_stack_2
  loc_5D06B1: ExitProcHresult
  loc_5D06B2: BranchT loc_5DBA9C
End Sub

Private Sub cmdConsultar_UnknownEvent_8 '63FD14
  'Data Table: 41BC2C
  loc_63FAD8: FLdRfVar var_94
  loc_63FADB: FLdPrThis
  loc_63FADC: VCallAd Control_ID_NroCliente
  loc_63FADF: FStAdFunc var_90
  loc_63FAE2: FLdPr var_90
  loc_63FAE5:  = Me.Text
  loc_63FAEA: ILdRf var_94
  loc_63FAED: ImpAdCallFPR4 push Val()
  loc_63FAF2: CI2R8
  loc_63FAF3: FLdPr Me
  loc_63FAF6: MemStI2 global_52
  loc_63FAF9: FFree1Str var_94
  loc_63FAFC: FFree1Ad var_90
  loc_63FAFF: FLdRfVar var_A4
  loc_63FB02: FLdPr Me
  loc_63FB05: MemLdRfVar from_stack_1.global_52
  loc_63FB08: from_stack_2v = Proc_50_11_65458C(from_stack_1v)
  loc_63FB0D: FLdRfVar var_A4
  loc_63FB10: NotVar var_B4
  loc_63FB14: CBoolVarNull
  loc_63FB16: FFree1Var var_A4 = ""
  loc_63FB19: BranchF loc_63FB60
  loc_63FB1C: LitVar_Missing var_114
  loc_63FB1F: LitVar_Missing var_F4
  loc_63FB22: LitVarStr var_D4, "Cliente no encontrado"
  loc_63FB27: FStVarCopyObj var_B4
  loc_63FB2A: FLdRfVar var_B4
  loc_63FB2D: LitI4 &H40
  loc_63FB32: LitVarStr var_C4, "No se ha podido encontrar los datos de ese cliente."
  loc_63FB37: FStVarCopyObj var_A4
  loc_63FB3A: FLdRfVar var_A4
  loc_63FB3D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63FB42: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_63FB4D: FLdPrThis
  loc_63FB4E: VCallAd Control_ID_NroCliente
  loc_63FB51: FStAdFunc var_90
  loc_63FB54: FLdPr var_90
  loc_63FB57: Me.SetFocus
  loc_63FB5C: FFree1Ad var_90
  loc_63FB5F: ExitProcHresult
  loc_63FB60: FLdPr Me
  loc_63FB63: MemLdI2 global_140
  loc_63FB66: LitI2_Byte 0
  loc_63FB68: EqI2
  loc_63FB69: BranchF loc_63FBB0
  loc_63FB6C: LitVar_Missing var_114
  loc_63FB6F: LitVar_Missing var_F4
  loc_63FB72: LitVarStr var_D4, "Cliente sin cuenta corriente"
  loc_63FB77: FStVarCopyObj var_B4
  loc_63FB7A: FLdRfVar var_B4
  loc_63FB7D: LitI4 &H40
  loc_63FB82: LitVarStr var_C4, "Este cliente no posee una cuenta corriente."
  loc_63FB87: FStVarCopyObj var_A4
  loc_63FB8A: FLdRfVar var_A4
  loc_63FB8D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63FB92: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_63FB9D: FLdPrThis
  loc_63FB9E: VCallAd Control_ID_NroCliente
  loc_63FBA1: FStAdFunc var_90
  loc_63FBA4: FLdPr var_90
  loc_63FBA7: Me.SetFocus
  loc_63FBAC: FFree1Ad var_90
  loc_63FBAF: ExitProcHresult
  loc_63FBB0: Call InicioGrilla()
  loc_63FBB5: LitVar_TRUE var_C4
  loc_63FBB8: PopAdLdVar
  loc_63FBB9: FLdPrThis
  loc_63FBBA: VCallAd Control_ID_Grid1
  loc_63FBBD: FStAdFunc var_90
  loc_63FBC0: FLdPr var_90
  loc_63FBC3: LateIdSt
  loc_63FBC8: FFree1Ad var_90
  loc_63FBCB: FLdRfVar var_94
  loc_63FBCE: FLdPrThis
  loc_63FBCF: VCallAd Control_ID_NroCliente
  loc_63FBD2: FStAdFunc var_90
  loc_63FBD5: FLdPr var_90
  loc_63FBD8:  = Me.Text
  loc_63FBDD: FLdRfVar var_A4
  loc_63FBE0: FLdRfVar var_88
  loc_63FBE3: ILdRf var_94
  loc_63FBE6: FLdRfVar var_118
  loc_63FBE9: ImpAdLdRf MemVar_74C760
  loc_63FBEC: NewIfNullPr Formx
  loc_63FBEF: from_stack_1v = Formx.global_4589716Get()
  loc_63FBF4: FLdPr var_118
  loc_63FBF7:  = Formx.ScaleWidth
  loc_63FBFC: FLdRfVar var_A4
  loc_63FBFF: NotVar var_B4
  loc_63FC03: CBoolVarNull
  loc_63FC05: FFree1Str var_94
  loc_63FC08: FFreeAd var_90 = ""
  loc_63FC0F: FFree1Var var_A4 = ""
  loc_63FC12: BranchF loc_63FC41
  loc_63FC15: FLdRfVar var_A4
  loc_63FC18: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63FC1D: FLdRfVar var_A4
  loc_63FC20: CBoolVarNull
  loc_63FC22: FFree1Var var_A4 = ""
  loc_63FC25: BranchF loc_63FC3E
  loc_63FC28: ILdRf Me
  loc_63FC2B: FStAdNoPop
  loc_63FC2F: ImpAdLdRf MemVar_7520D4
  loc_63FC32: NewIfNullPr Global
  loc_63FC35: Global.Unload from_stack_1
  loc_63FC3A: FFree1Ad var_90
  loc_63FC3D: ExitProcHresult
  loc_63FC3E: Branch loc_63FBCB
  loc_63FC41: ILdRf var_88
  loc_63FC44: LitI4 0
  loc_63FC49: GtI4
  loc_63FC4A: BranchF loc_63FCC9
  loc_63FC4D: FLdRfVar var_94
  loc_63FC50: FLdPrThis
  loc_63FC51: VCallAd Control_ID_NroCliente
  loc_63FC54: FStAdFunc var_90
  loc_63FC57: FLdPr var_90
  loc_63FC5A:  = Me.Text
  loc_63FC5F: FLdRfVar var_A4
  loc_63FC62: FLdRfVar var_8C
  loc_63FC65: ILdRf var_88
  loc_63FC68: ILdRf var_94
  loc_63FC6B: FLdRfVar var_118
  loc_63FC6E: ImpAdLdRf MemVar_74C760
  loc_63FC71: NewIfNullPr Formx
  loc_63FC74: from_stack_1v = Formx.global_4589716Get()
  loc_63FC79: FLdPr var_118
  loc_63FC7C: Formx.ScaleWidth = from_stack_1s
  loc_63FC81: FLdRfVar var_A4
  loc_63FC84: NotVar var_B4
  loc_63FC88: CBoolVarNull
  loc_63FC8A: FFree1Str var_94
  loc_63FC8D: FFreeAd var_90 = ""
  loc_63FC94: FFree1Var var_A4 = ""
  loc_63FC97: BranchF loc_63FCC6
  loc_63FC9A: FLdRfVar var_A4
  loc_63FC9D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63FCA2: FLdRfVar var_A4
  loc_63FCA5: CBoolVarNull
  loc_63FCA7: FFree1Var var_A4 = ""
  loc_63FCAA: BranchF loc_63FCC3
  loc_63FCAD: ILdRf Me
  loc_63FCB0: FStAdNoPop
  loc_63FCB4: ImpAdLdRf MemVar_7520D4
  loc_63FCB7: NewIfNullPr Global
  loc_63FCBA: Global.Unload from_stack_1
  loc_63FCBF: FFree1Ad var_90
  loc_63FCC2: ExitProcHresult
  loc_63FCC3: Branch loc_63FC4D
  loc_63FCC6: Branch loc_63FD05
  loc_63FCC9: LitVar_Missing var_114
  loc_63FCCC: LitVar_Missing var_F4
  loc_63FCCF: LitVar_Missing var_B4
  loc_63FCD2: LitI4 0
  loc_63FCD7: LitVarStr var_C4, "No existen comprobantes correspondientes a ese cliente"
  loc_63FCDC: FStVarCopyObj var_A4
  loc_63FCDF: FLdRfVar var_A4
  loc_63FCE2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63FCE7: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_63FCF2: ExitProcHresult
  loc_63FCF3: FLdPrThis
  loc_63FCF4: VCallAd Control_ID_NroCliente
  loc_63FCF7: FStAdFunc var_90
  loc_63FCFA: FLdPr var_90
  loc_63FCFD: Me.SetFocus
  loc_63FD02: FFree1Ad var_90
  loc_63FD05: LitI2_Byte 0
  loc_63FD07: PopTmpLdAd2 var_11A
  loc_63FD0A: ILdRf var_8C
  loc_63FD0D: Call CargaResumen(from_stack_1v, from_stack_2v)
  loc_63FD12: ExitProcHresult
End Sub

Private Sub cmdSalir_UnknownEvent_8 '5D2478
  'Data Table: 41BC2C
  loc_5D2460: ILdRf Me
  loc_5D2463: FStAdNoPop
  loc_5D2467: ImpAdLdRf MemVar_7520D4
  loc_5D246A: NewIfNullPr Global
  loc_5D246D: Global.Unload from_stack_1
  loc_5D2472: FFree1Ad var_88
  loc_5D2475: ExitProcHresult
End Sub

Private Sub cmdImprimir_UnknownEvent_8 '6409D0
  'Data Table: 41BC2C
  loc_640794: FLdRfVar var_94
  loc_640797: FLdPrThis
  loc_640798: VCallAd Control_ID_NroCliente
  loc_64079B: FStAdFunc var_90
  loc_64079E: FLdPr var_90
  loc_6407A1:  = Me.Text
  loc_6407A6: ILdRf var_94
  loc_6407A9: ImpAdCallFPR4 push Val()
  loc_6407AE: CI2R8
  loc_6407AF: FLdPr Me
  loc_6407B2: MemStI2 global_52
  loc_6407B5: FFree1Str var_94
  loc_6407B8: FFree1Ad var_90
  loc_6407BB: FLdRfVar var_A4
  loc_6407BE: FLdPr Me
  loc_6407C1: MemLdRfVar from_stack_1.global_52
  loc_6407C4: from_stack_2v = Proc_50_11_65458C(from_stack_1v)
  loc_6407C9: FLdRfVar var_A4
  loc_6407CC: NotVar var_B4
  loc_6407D0: CBoolVarNull
  loc_6407D2: FFree1Var var_A4 = ""
  loc_6407D5: BranchF loc_64081C
  loc_6407D8: LitVar_Missing var_114
  loc_6407DB: LitVar_Missing var_F4
  loc_6407DE: LitVarStr var_D4, "Cliente no encontrado"
  loc_6407E3: FStVarCopyObj var_B4
  loc_6407E6: FLdRfVar var_B4
  loc_6407E9: LitI4 &H40
  loc_6407EE: LitVarStr var_C4, "No se ha podido encontrar los datos de ese cliente."
  loc_6407F3: FStVarCopyObj var_A4
  loc_6407F6: FLdRfVar var_A4
  loc_6407F9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6407FE: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_640809: FLdPrThis
  loc_64080A: VCallAd Control_ID_NroCliente
  loc_64080D: FStAdFunc var_90
  loc_640810: FLdPr var_90
  loc_640813: Me.SetFocus
  loc_640818: FFree1Ad var_90
  loc_64081B: ExitProcHresult
  loc_64081C: FLdPr Me
  loc_64081F: MemLdI2 global_140
  loc_640822: LitI2_Byte 0
  loc_640824: EqI2
  loc_640825: BranchF loc_64086C
  loc_640828: LitVar_Missing var_114
  loc_64082B: LitVar_Missing var_F4
  loc_64082E: LitVarStr var_D4, "Cliente sin cuenta corriente"
  loc_640833: FStVarCopyObj var_B4
  loc_640836: FLdRfVar var_B4
  loc_640839: LitI4 &H40
  loc_64083E: LitVarStr var_C4, "Este cliente no posee una cuenta corriente."
  loc_640843: FStVarCopyObj var_A4
  loc_640846: FLdRfVar var_A4
  loc_640849: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64084E: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_640859: FLdPrThis
  loc_64085A: VCallAd Control_ID_NroCliente
  loc_64085D: FStAdFunc var_90
  loc_640860: FLdPr var_90
  loc_640863: Me.SetFocus
  loc_640868: FFree1Ad var_90
  loc_64086B: ExitProcHresult
  loc_64086C: Call InicioGrilla()
  loc_640871: LitVar_TRUE var_C4
  loc_640874: PopAdLdVar
  loc_640875: FLdPrThis
  loc_640876: VCallAd Control_ID_Grid1
  loc_640879: FStAdFunc var_90
  loc_64087C: FLdPr var_90
  loc_64087F: LateIdSt
  loc_640884: FFree1Ad var_90
  loc_640887: FLdRfVar var_94
  loc_64088A: FLdPrThis
  loc_64088B: VCallAd Control_ID_NroCliente
  loc_64088E: FStAdFunc var_90
  loc_640891: FLdPr var_90
  loc_640894:  = Me.Text
  loc_640899: FLdRfVar var_A4
  loc_64089C: FLdRfVar var_88
  loc_64089F: ILdRf var_94
  loc_6408A2: FLdRfVar var_118
  loc_6408A5: ImpAdLdRf MemVar_74C760
  loc_6408A8: NewIfNullPr Formx
  loc_6408AB: from_stack_1v = Formx.global_4589716Get()
  loc_6408B0: FLdPr var_118
  loc_6408B3:  = Formx.ScaleWidth
  loc_6408B8: FLdRfVar var_A4
  loc_6408BB: NotVar var_B4
  loc_6408BF: CBoolVarNull
  loc_6408C1: FFree1Str var_94
  loc_6408C4: FFreeAd var_90 = ""
  loc_6408CB: FFree1Var var_A4 = ""
  loc_6408CE: BranchF loc_6408FD
  loc_6408D1: FLdRfVar var_A4
  loc_6408D4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6408D9: FLdRfVar var_A4
  loc_6408DC: CBoolVarNull
  loc_6408DE: FFree1Var var_A4 = ""
  loc_6408E1: BranchF loc_6408FA
  loc_6408E4: ILdRf Me
  loc_6408E7: FStAdNoPop
  loc_6408EB: ImpAdLdRf MemVar_7520D4
  loc_6408EE: NewIfNullPr Global
  loc_6408F1: Global.Unload from_stack_1
  loc_6408F6: FFree1Ad var_90
  loc_6408F9: ExitProcHresult
  loc_6408FA: Branch loc_640887
  loc_6408FD: ILdRf var_88
  loc_640900: LitI4 0
  loc_640905: GtI4
  loc_640906: BranchF loc_640985
  loc_640909: FLdRfVar var_94
  loc_64090C: FLdPrThis
  loc_64090D: VCallAd Control_ID_NroCliente
  loc_640910: FStAdFunc var_90
  loc_640913: FLdPr var_90
  loc_640916:  = Me.Text
  loc_64091B: FLdRfVar var_A4
  loc_64091E: FLdRfVar var_8C
  loc_640921: ILdRf var_88
  loc_640924: ILdRf var_94
  loc_640927: FLdRfVar var_118
  loc_64092A: ImpAdLdRf MemVar_74C760
  loc_64092D: NewIfNullPr Formx
  loc_640930: from_stack_1v = Formx.global_4589716Get()
  loc_640935: FLdPr var_118
  loc_640938: Formx.ScaleWidth = from_stack_1s
  loc_64093D: FLdRfVar var_A4
  loc_640940: NotVar var_B4
  loc_640944: CBoolVarNull
  loc_640946: FFree1Str var_94
  loc_640949: FFreeAd var_90 = ""
  loc_640950: FFree1Var var_A4 = ""
  loc_640953: BranchF loc_640982
  loc_640956: FLdRfVar var_A4
  loc_640959: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64095E: FLdRfVar var_A4
  loc_640961: CBoolVarNull
  loc_640963: FFree1Var var_A4 = ""
  loc_640966: BranchF loc_64097F
  loc_640969: ILdRf Me
  loc_64096C: FStAdNoPop
  loc_640970: ImpAdLdRf MemVar_7520D4
  loc_640973: NewIfNullPr Global
  loc_640976: Global.Unload from_stack_1
  loc_64097B: FFree1Ad var_90
  loc_64097E: ExitProcHresult
  loc_64097F: Branch loc_640909
  loc_640982: Branch loc_6409C1
  loc_640985: LitVar_Missing var_114
  loc_640988: LitVar_Missing var_F4
  loc_64098B: LitVar_Missing var_B4
  loc_64098E: LitI4 0
  loc_640993: LitVarStr var_C4, "No existen comprobantes correspondientes a ese cliente"
  loc_640998: FStVarCopyObj var_A4
  loc_64099B: FLdRfVar var_A4
  loc_64099E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6409A3: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_6409AE: ExitProcHresult
  loc_6409AF: FLdPrThis
  loc_6409B0: VCallAd Control_ID_NroCliente
  loc_6409B3: FStAdFunc var_90
  loc_6409B6: FLdPr var_90
  loc_6409B9: Me.SetFocus
  loc_6409BE: FFree1Ad var_90
  loc_6409C1: LitI2_Byte &HFF
  loc_6409C3: PopTmpLdAd2 var_11A
  loc_6409C6: ILdRf var_8C
  loc_6409C9: Call CargaResumen(from_stack_1v, from_stack_2v)
  loc_6409CE: ExitProcHresult
End Sub

Private Sub Form_Load() '5E5EA0
  'Data Table: 41BC2C
  loc_5E5E28: LitI2_Byte 0
  loc_5E5E2A: CR8I2
  loc_5E5E2B: PopFPR4
  loc_5E5E2C: FLdPr Me
  loc_5E5E2F: Me.Top = from_stack_1s
  loc_5E5E34: LitI2_Byte 0
  loc_5E5E36: CR8I2
  loc_5E5E37: PopFPR4
  loc_5E5E38: FLdPr Me
  loc_5E5E3B: Me.Left = from_stack_1s
  loc_5E5E40: FLdRfVar var_8C
  loc_5E5E43: FLdRfVar var_88
  loc_5E5E46: ImpAdLdRf MemVar_7520D4
  loc_5E5E49: NewIfNullPr Global
  loc_5E5E4C:  = Global.Screen
  loc_5E5E51: FLdPr var_88
  loc_5E5E54:  = Screen.TwipsPerPixelY
  loc_5E5E59: FLdFPR4 var_8C
  loc_5E5E5C: LitI2 600
  loc_5E5E5F: CR8I2
  loc_5E5E60: MulR8
  loc_5E5E61: PopFPR4
  loc_5E5E62: FLdPr Me
  loc_5E5E65: Me.Height = from_stack_1s
  loc_5E5E6A: FFree1Ad var_88
  loc_5E5E6D: FLdRfVar var_8C
  loc_5E5E70: FLdRfVar var_88
  loc_5E5E73: ImpAdLdRf MemVar_7520D4
  loc_5E5E76: NewIfNullPr Global
  loc_5E5E79:  = Global.Screen
  loc_5E5E7E: FLdPr var_88
  loc_5E5E81:  = Screen.TwipsPerPixelX
  loc_5E5E86: FLdFPR4 var_8C
  loc_5E5E89: LitI2 800
  loc_5E5E8C: CR8I2
  loc_5E5E8D: MulR8
  loc_5E5E8E: PopFPR4
  loc_5E5E8F: FLdPr Me
  loc_5E5E92: Me.Width = from_stack_1s
  loc_5E5E97: FFree1Ad var_88
  loc_5E5E9A: Call InicioGrilla()
  loc_5E5E9F: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D06F8
  'Data Table: 41BC2C
  loc_5D06E4: FLdPrThis
  loc_5D06E5: VCallAd Control_ID_NroCliente
  loc_5D06E8: FStAdFunc var_88
  loc_5D06EB: FLdPr var_88
  loc_5D06EE: Me.SetFocus
  loc_5D06F3: FFree1Ad var_88
  loc_5D06F6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5EB588
  'Data Table: 41BC2C
  loc_5EB4FC: ILdI2 KeyAscii
  loc_5EB4FF: FStI2 var_86
  loc_5EB502: FLdI2 var_86
  loc_5EB505: LitI4 &HD
  loc_5EB50A: CI2I4
  loc_5EB50B: EqI2
  loc_5EB50C: BranchF loc_5EB531
  loc_5EB50F: FLdPrThis
  loc_5EB510: VCallAd Control_ID_cmdConsultar
  loc_5EB513: FStAdFunc var_8C
  loc_5EB516: FLdPr var_8C
  loc_5EB519: LateIdCall
  loc_5EB521: FFree1Ad var_8C
  loc_5EB524: Call cmdConsultar_UnknownEvent_8()
  loc_5EB529: LitI2_Byte 0
  loc_5EB52B: IStI2 KeyAscii
  loc_5EB52E: Branch loc_5EB587
  loc_5EB531: FLdI2 var_86
  loc_5EB534: LitI4 &H41
  loc_5EB539: CI2I4
  loc_5EB53A: LitI4 &H5A
  loc_5EB53F: CI2I4
  loc_5EB540: BetweenI2
  loc_5EB542: BranchT loc_5EB559
  loc_5EB545: FLdI2 var_86
  loc_5EB548: LitI4 &H61
  loc_5EB54D: CI2I4
  loc_5EB54E: LitI4 &H7A
  loc_5EB553: CI2I4
  loc_5EB554: BetweenI2
  loc_5EB556: BranchF loc_5EB574
  loc_5EB559: ILdI2 KeyAscii
  loc_5EB55C: ImpAdLdRf MemVar_74D874
  loc_5EB55F: NewIfNullPr BrowseCli
  loc_5EB562: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5EB567: from_stack_1v = Proc_50_10_5DEBDC()
  loc_5EB56C: LitI2_Byte 0
  loc_5EB56E: IStI2 KeyAscii
  loc_5EB571: Branch loc_5EB587
  loc_5EB574: FLdI2 var_86
  loc_5EB577: LitI2_Byte &H1B
  loc_5EB579: EqI2
  loc_5EB57A: BranchF loc_5EB587
  loc_5EB57D: Call cmdSalir_UnknownEvent_8()
  loc_5EB582: LitI2_Byte 0
  loc_5EB584: IStI2 KeyAscii
  loc_5EB587: ExitProcHresult
End Sub

Private Sub NroCliente_GotFocus() '5D8AF8
  'Data Table: 41BC2C
  loc_5D8AC8: LitI4 0
  loc_5D8ACD: FLdPrThis
  loc_5D8ACE: VCallAd Control_ID_NroCliente
  loc_5D8AD1: FStAdFunc var_88
  loc_5D8AD4: FLdPr var_88
  loc_5D8AD7: Me.SelStart = from_stack_1
  loc_5D8ADC: FFree1Ad var_88
  loc_5D8ADF: LitI4 &H3E7
  loc_5D8AE4: FLdPrThis
  loc_5D8AE5: VCallAd Control_ID_NroCliente
  loc_5D8AE8: FStAdFunc var_88
  loc_5D8AEB: FLdPr var_88
  loc_5D8AEE: Me.SelLength = from_stack_1
  loc_5D8AF3: FFree1Ad var_88
  loc_5D8AF6: ExitProcHresult
End Sub

Public Sub CargaResumen(resumen, Imprimir) '6CCFD8
  'Data Table: 41BC2C
  loc_6CC70A: ILdRf resumen
  loc_6CC70D: FStStrCopy var_88
  loc_6CC712: ILdI2 Imprimir
  loc_6CC715: BranchF loc_6CC946
  loc_6CC71A: OnErrorGoto loc_6CCEBD
  loc_6CC71F: FLdRfVar var_C4
  loc_6CC722: ImpAdLdRf MemVar_7520D4
  loc_6CC725: NewIfNullPr Global
  loc_6CC728:  = Global.Printer
  loc_6CC72D: FLdZeroAd var_C4
  loc_6CC730: FStAdFunc var_C0
  loc_6CC735: LitVarStr var_E4, "Courier New"
  loc_6CC73A: PopAdLdVar
  loc_6CC73B: FLdPr var_C0
  loc_6CC73E: LateIdLdVar var_D4 DispID_40 1
  loc_6CC745: CastAdVar Me
  loc_6CC749: FStAdFunc var_C4
  loc_6CC74C: FLdPr var_C4
  loc_6CC74F: LateIdSt
  loc_6CC754: FFree1Ad var_C4
  loc_6CC757: FFree1Var var_D4 = ""
  loc_6CC75C: LitVarI2 var_E4, 11
  loc_6CC761: PopAdLdVar
  loc_6CC762: FLdPr var_C0
  loc_6CC765: LateIdLdVar var_D4 DispID_40 1
  loc_6CC76C: CastAdVar Me
  loc_6CC770: FStAdFunc var_C4
  loc_6CC773: FLdPr var_C4
  loc_6CC776: LateIdSt
  loc_6CC77B: FFree1Ad var_C4
  loc_6CC77E: FFree1Var var_D4 = ""
  loc_6CC783: FLdRfVar var_D4
  loc_6CC786: ImpAdCallFPR4  = Date
  loc_6CC78B: LitI4 1
  loc_6CC790: LitI4 1
  loc_6CC795: LitVarStr var_E4, "dd/mm/yyyy"
  loc_6CC79A: FStVarCopyObj var_F4
  loc_6CC79D: FLdRfVar var_F4
  loc_6CC7A0: FLdRfVar var_D4
  loc_6CC7A3: ImpAdCallI2 Format$(, )
  loc_6CC7A8: FStStr var_140
  loc_6CC7AB: LitI4 &H32
  loc_6CC7B0: FLdRfVar var_108
  loc_6CC7B3: ImpAdCallFPR4  = Space()
  loc_6CC7B8: FLdRfVar var_118
  loc_6CC7BB: ImpAdCallFPR4  = Time
  loc_6CC7C0: LitI4 1
  loc_6CC7C5: LitI4 1
  loc_6CC7CA: LitVarStr var_128, "hh:mm:ss"
  loc_6CC7CF: FStVarCopyObj var_138
  loc_6CC7D2: FLdRfVar var_138
  loc_6CC7D5: FLdRfVar var_118
  loc_6CC7D8: ImpAdCallI2 Format$(, )
  loc_6CC7DD: FStStr var_144
  loc_6CC7E0: FLdZeroAd var_144
  loc_6CC7E3: FStStrNoPop var_13C
  loc_6CC7E6: LitStr "Hora: "
  loc_6CC7E9: FLdRfVar var_108
  loc_6CC7EC: FLdZeroAd var_140
  loc_6CC7EF: FStStrNoPop var_F8
  loc_6CC7F2: LitStr "Fecha: "
  loc_6CC7F5: ILdRf var_C0
  loc_6CC7F8: PrintObject
  loc_6CC7FE: FFreeStr var_F8 = "": var_13C = "": var_140 = ""
  loc_6CC809: FFreeVar var_D4 = "": var_F4 = "": var_108 = "": var_118 = ""
  loc_6CC818: LitStr vbNullString
  loc_6CC81B: ILdRf var_C0
  loc_6CC81E: PrintObject
  loc_6CC826: LitI2_Byte &H50
  loc_6CC828: LitStr "Resumen de Cuenta"
  loc_6CC82B: FLdRfVar var_D4
  loc_6CC82E: ImpAdCallFPR4  = Proc_87_3_5DC0AC(, )
  loc_6CC833: FLdRfVar var_D4
  loc_6CC836: ILdRf var_C0
  loc_6CC839: PrintObject
  loc_6CC83F: FFree1Var var_D4 = ""
  loc_6CC844: LitStr vbNullString
  loc_6CC847: ILdRf var_C0
  loc_6CC84A: PrintObject
  loc_6CC852: FLdRfVar var_F8
  loc_6CC855: FLdPrThis
  loc_6CC856: VCallAd Control_ID_NroCliente
  loc_6CC859: FStAdFunc var_C4
  loc_6CC85C: FLdPr var_C4
  loc_6CC85F:  = Me.TextBox.Text
  loc_6CC864: FLdZeroAd var_F8
  loc_6CC867: CVarStr var_D4
  loc_6CC86A: FLdRfVar var_F4
  loc_6CC86D: ImpAdCallFPR4  = Trim()
  loc_6CC872: FLdRfVar var_F4
  loc_6CC875: LitStr "Cliente Número: "
  loc_6CC878: ILdRf var_C0
  loc_6CC87B: PrintObject
  loc_6CC881: FFree1Ad var_C4
  loc_6CC884: FFreeVar var_D4 = ""
  loc_6CC88D: LitStr vbNullString
  loc_6CC890: ILdRf var_C0
  loc_6CC893: PrintObject
  loc_6CC89B: LitStr vbNullString
  loc_6CC89E: ILdRf var_C0
  loc_6CC8A1: PrintObject
  loc_6CC8A9: LitI4 &HA
  loc_6CC8AE: FLdRfVar var_D4
  loc_6CC8B1: ImpAdCallFPR4  = Space()
  loc_6CC8B6: LitI4 &HA
  loc_6CC8BB: FLdRfVar var_118
  loc_6CC8BE: ImpAdCallFPR4  = Space()
  loc_6CC8C3: LitI4 &HA
  loc_6CC8C8: FLdRfVar var_174
  loc_6CC8CB: ImpAdCallFPR4  = Space()
  loc_6CC8D0: LitI4 &HA
  loc_6CC8D5: FLdRfVar var_1B4
  loc_6CC8D8: ImpAdCallFPR4  = Space()
  loc_6CC8DD: LitVarStr var_E4, "Fecha"
  loc_6CC8E2: FLdRfVar var_D4
  loc_6CC8E5: ConcatVar var_F4
  loc_6CC8E9: LitVarStr var_128, "Comprobante"
  loc_6CC8EE: ConcatVar var_108
  loc_6CC8F2: FLdRfVar var_118
  loc_6CC8F5: ConcatVar var_138
  loc_6CC8F9: LitVarStr var_154, "Debe"
  loc_6CC8FE: ConcatVar var_164
  loc_6CC902: FLdRfVar var_174
  loc_6CC905: ConcatVar var_184
  loc_6CC909: LitVarStr var_194, "Haber"
  loc_6CC90E: ConcatVar var_1A4
  loc_6CC912: FLdRfVar var_1B4
  loc_6CC915: ConcatVar var_1C4
  loc_6CC919: LitVarStr var_1D4, "Saldo"
  loc_6CC91E: ConcatVar var_1E4
  loc_6CC922: ILdRf var_C0
  loc_6CC925: PrintObject
  loc_6CC92B: FFreeVar var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_164 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1B4 = "": var_1C4 = ""
  loc_6CC94A: LitI4 0
  loc_6CC94F: FStR4 var_98
  loc_6CC954: LitI2_Byte &H24
  loc_6CC956: CUI1I2
  loc_6CC958: FStUI1 var_9A
  loc_6CC95E: ILdRf var_98
  loc_6CC961: FLdUI1
  loc_6CC965: CI4UI1
  loc_6CC966: AddI4
  loc_6CC967: ILdRf var_88
  loc_6CC96A: FnLenStr
  loc_6CC96B: LeI4
  loc_6CC96C: BranchF loc_6CCE6E
  loc_6CC971: LitVarI2 var_D4, 2
  loc_6CC976: ILdRf var_98
  loc_6CC979: LitI4 &H1D
  loc_6CC97E: AddI4
  loc_6CC97F: FLdRfVar var_88
  loc_6CC982: CVarRef
  loc_6CC987: FLdRfVar var_F4
  loc_6CC98A: ImpAdCallFPR4  = Mid(, , )
  loc_6CC98F: FLdRfVar var_F4
  loc_6CC992: LitVarStr var_154, "/"
  loc_6CC997: ConcatVar var_108
  loc_6CC99B: LitVarI2 var_118, 2
  loc_6CC9A0: ILdRf var_98
  loc_6CC9A3: LitI4 &H1B
  loc_6CC9A8: AddI4
  loc_6CC9A9: FLdRfVar var_88
  loc_6CC9AC: CVarRef
  loc_6CC9B1: FLdRfVar var_138
  loc_6CC9B4: ImpAdCallFPR4  = Mid(, , )
  loc_6CC9B9: FLdRfVar var_138
  loc_6CC9BC: ConcatVar var_164
  loc_6CC9C0: LitVarStr var_1F4, "/"
  loc_6CC9C5: ConcatVar var_174
  loc_6CC9C9: LitVarI2 var_184, 4
  loc_6CC9CE: ILdRf var_98
  loc_6CC9D1: LitI4 &H17
  loc_6CC9D6: AddI4
  loc_6CC9D7: FLdRfVar var_88
  loc_6CC9DA: CVarRef
  loc_6CC9DF: FLdRfVar var_1A4
  loc_6CC9E2: ImpAdCallFPR4  = Mid(, , )
  loc_6CC9E7: FLdRfVar var_1A4
  loc_6CC9EA: ConcatVar var_1B4
  loc_6CC9EE: CStrVarTmp
  loc_6CC9EF: FStStr var_90
  loc_6CC9F2: FFreeVar var_D4 = "": var_F4 = "": var_118 = "": var_108 = "": var_138 = "": var_164 = "": var_184 = "": var_174 = "": var_1A4 = ""
  loc_6CCA0B: LitVarI2 var_D4, 1
  loc_6CCA10: ILdRf var_98
  loc_6CCA13: LitI4 5
  loc_6CCA18: AddI4
  loc_6CCA19: FLdRfVar var_88
  loc_6CCA1C: CVarRef
  loc_6CCA21: FLdRfVar var_F4
  loc_6CCA24: ImpAdCallFPR4  = Mid(, , )
  loc_6CCA29: LitVarStr var_1D4, "FC"
  loc_6CCA2E: FStVarCopyObj var_164
  loc_6CCA31: FLdRfVar var_164
  loc_6CCA34: LitVarStr var_194, "RC"
  loc_6CCA39: FStVarCopyObj var_138
  loc_6CCA3C: FLdRfVar var_138
  loc_6CCA3F: FLdRfVar var_F4
  loc_6CCA42: LitVarStr var_154, "R"
  loc_6CCA47: HardType
  loc_6CCA48: EqVar var_108
  loc_6CCA4C: FStVar var_118
  loc_6CCA50: FLdRfVar var_118
  loc_6CCA53: FLdRfVar var_174
  loc_6CCA56: ImpAdCallFPR4  = IIf(, , )
  loc_6CCA5B: FLdRfVar var_174
  loc_6CCA5E: LitVarStr var_1F4, " "
  loc_6CCA63: ConcatVar var_184
  loc_6CCA67: LitVarI2 var_1A4, 4
  loc_6CCA6C: ILdRf var_98
  loc_6CCA6F: LitI4 1
  loc_6CCA74: AddI4
  loc_6CCA75: FLdRfVar var_88
  loc_6CCA78: CVarRef
  loc_6CCA7D: FLdRfVar var_1B4
  loc_6CCA80: ImpAdCallFPR4  = Mid(, , )
  loc_6CCA85: FLdRfVar var_1B4
  loc_6CCA88: ConcatVar var_1C4
  loc_6CCA8C: LitVarStr var_224, "-"
  loc_6CCA91: ConcatVar var_1E4
  loc_6CCA95: LitVarI2 var_254, 8
  loc_6CCA9A: ILdRf var_98
  loc_6CCA9D: LitI4 6
  loc_6CCAA2: AddI4
  loc_6CCAA3: FLdRfVar var_88
  loc_6CCAA6: CVarRef
  loc_6CCAAB: FLdRfVar var_264
  loc_6CCAAE: ImpAdCallFPR4  = Mid(, , )
  loc_6CCAB3: FLdRfVar var_264
  loc_6CCAB6: ConcatVar var_274
  loc_6CCABA: CStrVarTmp
  loc_6CCABB: FStStr var_94
  loc_6CCABE: FFreeVar var_D4 = "": var_F4 = "": var_118 = "": var_138 = "": var_164 = "": var_174 = "": var_1A4 = "": var_184 = "": var_1B4 = "": var_1C4 = "": var_254 = "": var_1E4 = "": var_264 = ""
  loc_6CCADF: LitVarI2 var_108, 1
  loc_6CCAE4: ILdRf var_98
  loc_6CCAE7: LitI4 &H16
  loc_6CCAEC: AddI4
  loc_6CCAED: FLdRfVar var_88
  loc_6CCAF0: CVarRef
  loc_6CCAF5: FLdRfVar var_118
  loc_6CCAF8: ImpAdCallFPR4  = Mid(, , )
  loc_6CCAFD: FLdRfVar var_118
  loc_6CCB00: CStrVarVal var_F8
  loc_6CCB04: ImpAdCallFPR4 push Val()
  loc_6CCB09: FStFPR8 var_27C
  loc_6CCB0C: LitVarI2 var_D4, 8
  loc_6CCB11: ILdRf var_98
  loc_6CCB14: LitI4 &HE
  loc_6CCB19: AddI4
  loc_6CCB1A: FLdRfVar var_88
  loc_6CCB1D: CVarRef
  loc_6CCB22: FLdRfVar var_F4
  loc_6CCB25: ImpAdCallFPR4  = Mid(, , )
  loc_6CCB2A: FLdRfVar var_F4
  loc_6CCB2D: FnCLngVar
  loc_6CCB2F: CR8I4
  loc_6CCB30: LitI2_Byte &H64
  loc_6CCB32: CR8I2
  loc_6CCB33: DivR8
  loc_6CCB34: FLdFPR8 var_27C
  loc_6CCB37: MulR8
  loc_6CCB38: CCyR4
  loc_6CCB39: FStR8 var_AC
  loc_6CCB3C: FFree1Str var_F8
  loc_6CCB3F: FFreeVar var_D4 = "": var_F4 = "": var_F4 = "": var_108 = ""
  loc_6CCB4E: LitVarI2 var_D4, 1
  loc_6CCB53: ILdRf var_98
  loc_6CCB56: LitI4 5
  loc_6CCB5B: AddI4
  loc_6CCB5C: FLdRfVar var_88
  loc_6CCB5F: CVarRef
  loc_6CCB64: FLdRfVar var_F4
  loc_6CCB67: ImpAdCallFPR4  = Mid(, , )
  loc_6CCB6C: FLdRfVar var_F4
  loc_6CCB6F: LitVarStr var_154, "R"
  loc_6CCB74: HardType
  loc_6CCB75: EqVarBool
  loc_6CCB77: FFreeVar var_D4 = ""
  loc_6CCB7E: BranchF loc_6CCBA0
  loc_6CCB83: FLdR8 var_A4
  loc_6CCB86: FLdR8 var_AC
  loc_6CCB89: SubCy
  loc_6CCB8A: FStR8 var_A4
  loc_6CCB8F: LitI2_Byte 0
  loc_6CCB91: CCyI2
  loc_6CCB92: FStR8 var_B4
  loc_6CCB97: FLdR8 var_AC
  loc_6CCB9A: FStR8 var_BC
  loc_6CCB9D: Branch loc_6CCBBE
  loc_6CCBA4: FLdR8 var_A4
  loc_6CCBA7: FLdR8 var_AC
  loc_6CCBAA: AddCy
  loc_6CCBAB: FStR8 var_A4
  loc_6CCBB0: FLdR8 var_AC
  loc_6CCBB3: FStR8 var_B4
  loc_6CCBB8: LitI2_Byte 0
  loc_6CCBBA: CCyI2
  loc_6CCBBB: FStR8 var_BC
  loc_6CCBC2: ILdI2 Imprimir
  loc_6CCBC5: BranchF loc_6CCD5F
  loc_6CCBCA: LitI4 5
  loc_6CCBCF: FLdRfVar var_D4
  loc_6CCBD2: ImpAdCallFPR4  = Space()
  loc_6CCBD7: LitI4 5
  loc_6CCBDC: FLdRfVar var_118
  loc_6CCBDF: ImpAdCallFPR4  = Space()
  loc_6CCBE4: LitI4 1
  loc_6CCBE9: LitI4 1
  loc_6CCBEE: ImpAdLdRf MemVar_74C364
  loc_6CCBF1: CVarRef
  loc_6CCBF6: FLdRfVar var_B4
  loc_6CCBF9: CVarRef
  loc_6CCBFE: ImpAdCallI2 Format$(, )
  loc_6CCC03: FStStr var_F8
  loc_6CCC06: LitI4 1
  loc_6CCC0B: LitI4 1
  loc_6CCC10: LitVarStr var_1D4, "@@@@@@@@@@"
  loc_6CCC15: FStVarCopyObj var_174
  loc_6CCC18: FLdRfVar var_174
  loc_6CCC1B: FLdZeroAd var_F8
  loc_6CCC1E: CVarStr var_164
  loc_6CCC21: ImpAdCallI2 Format$(, )
  loc_6CCC26: FStStr var_13C
  loc_6CCC29: LitI4 5
  loc_6CCC2E: FLdRfVar var_1B4
  loc_6CCC31: ImpAdCallFPR4  = Space()
  loc_6CCC36: LitI4 1
  loc_6CCC3B: LitI4 1
  loc_6CCC40: ImpAdLdRf MemVar_74C364
  loc_6CCC43: CVarRef
  loc_6CCC48: FLdRfVar var_BC
  loc_6CCC4B: CVarRef
  loc_6CCC50: ImpAdCallI2 Format$(, )
  loc_6CCC55: FStStr var_140
  loc_6CCC58: LitI4 1
  loc_6CCC5D: LitI4 1
  loc_6CCC62: LitVarStr var_214, "@@@@@@@@@@"
  loc_6CCC67: FStVarCopyObj var_254
  loc_6CCC6A: FLdRfVar var_254
  loc_6CCC6D: FLdZeroAd var_140
  loc_6CCC70: CVarStr var_1E4
  loc_6CCC73: ImpAdCallI2 Format$(, )
  loc_6CCC78: FStStr var_144
  loc_6CCC7B: LitI4 5
  loc_6CCC80: FLdRfVar var_28C
  loc_6CCC83: ImpAdCallFPR4  = Space()
  loc_6CCC88: LitI4 1
  loc_6CCC8D: LitI4 1
  loc_6CCC92: ImpAdLdRf MemVar_74C364
  loc_6CCC95: CVarRef
  loc_6CCC9A: FLdRfVar var_A4
  loc_6CCC9D: CVarRef
  loc_6CCCA2: ImpAdCallI2 Format$(, )
  loc_6CCCA7: FStStr var_2E0
  loc_6CCCAA: LitI4 1
  loc_6CCCAF: LitI4 1
  loc_6CCCB4: LitVarStr var_244, "@@@@@@@@@@"
  loc_6CCCB9: FStVarCopyObj var_2BC
  loc_6CCCBC: FLdRfVar var_2BC
  loc_6CCCBF: FLdZeroAd var_2E0
  loc_6CCCC2: CVarStr var_2AC
  loc_6CCCC5: ImpAdCallI2 Format$(, )
  loc_6CCCCA: FStStr var_2E4
  loc_6CCCCD: ILdRf var_90
  loc_6CCCD0: CVarStr var_E4
  loc_6CCCD3: FLdRfVar var_D4
  loc_6CCCD6: ConcatVar var_F4
  loc_6CCCDA: ILdRf var_94
  loc_6CCCDD: CVarStr var_128
  loc_6CCCE0: ConcatVar var_108
  loc_6CCCE4: FLdRfVar var_118
  loc_6CCCE7: ConcatVar var_138
  loc_6CCCEB: FLdZeroAd var_13C
  loc_6CCCEE: CVarStr var_184
  loc_6CCCF1: ConcatVar var_1A4
  loc_6CCCF5: FLdRfVar var_1B4
  loc_6CCCF8: ConcatVar var_1C4
  loc_6CCCFC: FLdZeroAd var_144
  loc_6CCCFF: CVarStr var_264
  loc_6CCD02: ConcatVar var_274
  loc_6CCD06: FLdRfVar var_28C
  loc_6CCD09: ConcatVar var_29C
  loc_6CCD0D: FLdZeroAd var_2E4
  loc_6CCD10: CVarStr var_2CC
  loc_6CCD13: ConcatVar var_2DC
  loc_6CCD17: ILdRf var_8C
  loc_6CCD1A: ILdRf var_C0
  loc_6CCD1D: PrintObject
  loc_6CCD23: FFreeStr var_F8 = "": var_13C = "": var_140 = "": var_144 = "": var_2E0 = ""
  loc_6CCD32: FFreeVar var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_164 = "": var_174 = "": var_138 = "": var_184 = "": var_1A4 = "": var_1B4 = "": var_1E4 = "": var_254 = "": var_1C4 = "": var_264 = "": var_274 = "": var_28C = "": var_2AC = "": var_2BC = "": var_29C = "": var_2CC = ""
  loc_6CCD63: ILdRf var_90
  loc_6CCD66: LitI4 9
  loc_6CCD6B: ImpAdCallI2 Chr$()
  loc_6CCD70: FStStrNoPop var_F8
  loc_6CCD73: ConcatStr
  loc_6CCD74: FStStrNoPop var_13C
  loc_6CCD77: ILdRf var_94
  loc_6CCD7A: ConcatStr
  loc_6CCD7B: FStStrNoPop var_140
  loc_6CCD7E: LitI4 9
  loc_6CCD83: ImpAdCallI2 Chr$()
  loc_6CCD88: FStStrNoPop var_144
  loc_6CCD8B: ConcatStr
  loc_6CCD8C: FStStrNoPop var_2E0
  loc_6CCD8F: LitI4 1
  loc_6CCD94: LitI4 1
  loc_6CCD99: ImpAdLdRf MemVar_74C364
  loc_6CCD9C: CVarRef
  loc_6CCDA1: FLdRfVar var_B4
  loc_6CCDA4: CVarRef
  loc_6CCDA9: ImpAdCallI2 Format$(, )
  loc_6CCDAE: FStStrNoPop var_2E4
  loc_6CCDB1: ConcatStr
  loc_6CCDB2: FStStrNoPop var_2E8
  loc_6CCDB5: LitI4 9
  loc_6CCDBA: ImpAdCallI2 Chr$()
  loc_6CCDBF: FStStrNoPop var_2EC
  loc_6CCDC2: ConcatStr
  loc_6CCDC3: FStStrNoPop var_2F0
  loc_6CCDC6: LitI4 1
  loc_6CCDCB: LitI4 1
  loc_6CCDD0: ImpAdLdRf MemVar_74C364
  loc_6CCDD3: CVarRef
  loc_6CCDD8: FLdRfVar var_BC
  loc_6CCDDB: CVarRef
  loc_6CCDE0: ImpAdCallI2 Format$(, )
  loc_6CCDE5: FStStrNoPop var_2F4
  loc_6CCDE8: ConcatStr
  loc_6CCDE9: FStStrNoPop var_2F8
  loc_6CCDEC: LitI4 9
  loc_6CCDF1: ImpAdCallI2 Chr$()
  loc_6CCDF6: FStStrNoPop var_2FC
  loc_6CCDF9: ConcatStr
  loc_6CCDFA: FStStrNoPop var_300
  loc_6CCDFD: LitI4 1
  loc_6CCE02: LitI4 1
  loc_6CCE07: ImpAdLdRf MemVar_74C364
  loc_6CCE0A: CVarRef
  loc_6CCE0F: FLdRfVar var_A4
  loc_6CCE12: CVarRef
  loc_6CCE17: ImpAdCallI2 Format$(, )
  loc_6CCE1C: FStStrNoPop var_304
  loc_6CCE1F: ConcatStr
  loc_6CCE20: CVarStr var_D4
  loc_6CCE23: PopAdLdVar
  loc_6CCE24: FLdPrThis
  loc_6CCE25: VCallAd Control_ID_Grid1
  loc_6CCE28: FStAdFunc var_C4
  loc_6CCE2B: FLdPr var_C4
  loc_6CCE2E: LateIdCall
  loc_6CCE36: FFreeStr var_F8 = "": var_13C = "": var_140 = "": var_144 = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = ""
  loc_6CCE55: FFree1Ad var_C4
  loc_6CCE58: FFree1Var var_D4 = ""
  loc_6CCE5D: ILdRf var_98
  loc_6CCE60: FLdUI1
  loc_6CCE64: CI4UI1
  loc_6CCE65: AddI4
  loc_6CCE66: FStR4 var_98
  loc_6CCE6B: Branch loc_6CC95C
  loc_6CCE70: LitI4 0
  loc_6CCE75: FStR4 var_98
  loc_6CCE7A: ILdI2 Imprimir
  loc_6CCE7D: BranchF loc_6CCEB8
  loc_6CCE82: FLdPr var_C0
  loc_6CCE85: LateIdCall
  loc_6CCE8F: LitVar_Missing var_118
  loc_6CCE92: LitVar_Missing var_108
  loc_6CCE95: LitVar_Missing var_F4
  loc_6CCE98: LitI4 &H40
  loc_6CCE9D: LitVarStr var_E4, "Impresión completa."
  loc_6CCEA2: FStVarCopyObj var_D4
  loc_6CCEA5: FLdRfVar var_D4
  loc_6CCEA8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CCEAD: FFreeVar var_D4 = "": var_F4 = "": var_108 = ""
  loc_6CCEBC: ExitProcHresult
  loc_6CCEBF: LitI4 &HD
  loc_6CCEC4: ImpAdCallI2 Chr$()
  loc_6CCEC9: FStStr var_2FC
  loc_6CCECC: LitI4 &HD
  loc_6CCED1: ImpAdCallI2 Chr$()
  loc_6CCED6: FStStr var_300
  loc_6CCED9: FLdRfVar var_308
  loc_6CCEDC: ImpAdCallI2 Err 'rtcErrObj
  loc_6CCEE1: FStAdFunc var_C4
  loc_6CCEE4: FLdPr var_C4
  loc_6CCEE7:  = Err.Number
  loc_6CCEEC: LitI4 &HD
  loc_6CCEF1: ImpAdCallI2 Chr$()
  loc_6CCEF6: FStStr var_304
  loc_6CCEF9: FLdRfVar var_2F4
  loc_6CCEFC: ImpAdCallI2 Err 'rtcErrObj
  loc_6CCF01: FStAdFunc var_30C
  loc_6CCF04: FLdPr var_30C
  loc_6CCF07:  = Err.Description
  loc_6CCF0C: LitVar_Missing var_118
  loc_6CCF0F: LitVar_Missing var_108
  loc_6CCF12: LitVarStr var_E4, "Error en la impresora"
  loc_6CCF17: FStVarCopyObj var_F4
  loc_6CCF1A: FLdRfVar var_F4
  loc_6CCF1D: LitI4 &H45
  loc_6CCF22: LitStr "Error en impresora. Verifique por favor que haya papel en la impresora y este en READY."
  loc_6CCF25: FLdZeroAd var_2FC
  loc_6CCF28: FStStrNoPop var_F8
  loc_6CCF2B: ConcatStr
  loc_6CCF2C: FStStrNoPop var_13C
  loc_6CCF2F: FLdZeroAd var_300
  loc_6CCF32: FStStrNoPop var_140
  loc_6CCF35: ConcatStr
  loc_6CCF36: FStStrNoPop var_144
  loc_6CCF39: LitStr "Error Número: "
  loc_6CCF3C: ConcatStr
  loc_6CCF3D: FStStrNoPop var_2E0
  loc_6CCF40: ILdRf var_308
  loc_6CCF43: CStrI4
  loc_6CCF45: FStStrNoPop var_2E4
  loc_6CCF48: ConcatStr
  loc_6CCF49: FStStrNoPop var_2E8
  loc_6CCF4C: FLdZeroAd var_304
  loc_6CCF4F: FStStrNoPop var_2EC
  loc_6CCF52: ConcatStr
  loc_6CCF53: FStStrNoPop var_2F0
  loc_6CCF56: LitStr "Descripción: "
  loc_6CCF59: ConcatStr
  loc_6CCF5A: FStStrNoPop var_2F8
  loc_6CCF5D: ILdRf var_2F4
  loc_6CCF60: ConcatStr
  loc_6CCF61: CVarStr var_D4
  loc_6CCF64: ImpAdCallI2 MsgBox(, , , , )
  loc_6CCF69: LitI4 4
  loc_6CCF6E: EqI4
  loc_6CCF6F: FFreeStr var_F8 = "": var_13C = "": var_140 = "": var_144 = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2F4 = "": var_2FC = "": var_300 = ""
  loc_6CCF8E: FFreeAd var_C4 = ""
  loc_6CCF95: FFreeVar var_D4 = "": var_F4 = "": var_108 = ""
  loc_6CCFA0: BranchF loc_6CCFAC
  loc_6CCFA5: Resume
  loc_6CCFA9: Branch loc_6CCFD2
  loc_6CCFB0: On Error Resume Next
  loc_6CCFB5: FLdPr var_C0
  loc_6CCFB8: LateIdCall
  loc_6CCFC2: FLdPr var_C0
  loc_6CCFC5: LateIdCall
  loc_6CCFCF: On Error GoTo 0
  loc_6CCFD6: ExitProcHresult
End Sub

Public Sub InicioGrilla() '622B30
  'Data Table: 41BC2C
  loc_6229C4: LitVarI4
  loc_6229CC: PopAdLdVar
  loc_6229CD: FLdPrThis
  loc_6229CE: VCallAd Control_ID_Grid1
  loc_6229D1: FStAdFunc var_98
  loc_6229D4: FLdPr var_98
  loc_6229D7: LateIdSt
  loc_6229DC: FFree1Ad var_98
  loc_6229DF: LitVarI4
  loc_6229E7: PopAdLdVar
  loc_6229E8: FLdPrThis
  loc_6229E9: VCallAd Control_ID_Grid1
  loc_6229EC: FStAdFunc var_98
  loc_6229EF: FLdPr var_98
  loc_6229F2: LateIdSt
  loc_6229F7: FFree1Ad var_98
  loc_6229FA: LitVarStr var_94, "Arial"
  loc_6229FF: PopAdLdVar
  loc_622A00: FLdPrThis
  loc_622A01: VCallAd Control_ID_Grid1
  loc_622A04: FStAdFunc var_98
  loc_622A07: FLdPr var_98
  loc_622A0A: LateIdLdVar var_A8 DispID_-512 -1
  loc_622A11: CastAdVar Me
  loc_622A15: FStAdFunc var_AC
  loc_622A18: FLdPr var_AC
  loc_622A1B: LateIdSt
  loc_622A20: FFreeAd var_98 = ""
  loc_622A27: FFree1Var var_A8 = ""
  loc_622A2A: LitI2_Byte &HE
  loc_622A2C: CR8I2
  loc_622A2D: CVarR4
  loc_622A31: PopAdLdVar
  loc_622A32: FLdPrThis
  loc_622A33: VCallAd Control_ID_Grid1
  loc_622A36: FStAdFunc var_98
  loc_622A39: FLdPr var_98
  loc_622A3C: LateIdSt
  loc_622A41: FFree1Ad var_98
  loc_622A44: FLdPrThis
  loc_622A45: VCallAd Control_ID_Grid1
  loc_622A48: FStAdFunc var_98
  loc_622A4B: FLdPr var_98
  loc_622A4E: LateIdCall
  loc_622A56: FFree1Ad var_98
  loc_622A59: LitVar_FALSE
  loc_622A5D: PopAdLdVar
  loc_622A5E: FLdPrThis
  loc_622A5F: VCallAd Control_ID_Grid1
  loc_622A62: FStAdFunc var_98
  loc_622A65: FLdPr var_98
  loc_622A68: LateIdSt
  loc_622A6D: FFree1Ad var_98
  loc_622A70: LitVarStr var_94, "<    FECHA        |^COMPROBANTE               |<DEBE             |<HABER         |<SALDO         "
  loc_622A75: PopAdLdVar
  loc_622A76: FLdPrThis
  loc_622A77: VCallAd Control_ID_Grid1
  loc_622A7A: FStAdFunc var_98
  loc_622A7D: FLdPr var_98
  loc_622A80: LateIdSt
  loc_622A85: FFree1Ad var_98
  loc_622A88: LitVarI4
  loc_622A90: PopAdLdVar
  loc_622A91: LitI4 7
  loc_622A96: CI2I4
  loc_622A97: CVarI2 var_BC
  loc_622A9A: PopAdLdVar
  loc_622A9B: FLdPrThis
  loc_622A9C: VCallAd Control_ID_Grid1
  loc_622A9F: FStAdFunc var_98
  loc_622AA2: FLdPr var_98
  loc_622AA5: LateIdCallSt
  loc_622AAD: FFree1Ad var_98
  loc_622AB0: LitVarI4
  loc_622AB8: PopAdLdVar
  loc_622AB9: LitI4 7
  loc_622ABE: CI2I4
  loc_622ABF: CVarI2 var_BC
  loc_622AC2: PopAdLdVar
  loc_622AC3: FLdPrThis
  loc_622AC4: VCallAd Control_ID_Grid1
  loc_622AC7: FStAdFunc var_98
  loc_622ACA: FLdPr var_98
  loc_622ACD: LateIdCallSt
  loc_622AD5: FFree1Ad var_98
  loc_622AD8: LitVarI4
  loc_622AE0: PopAdLdVar
  loc_622AE1: LitI4 7
  loc_622AE6: CI2I4
  loc_622AE7: CVarI2 var_BC
  loc_622AEA: PopAdLdVar
  loc_622AEB: FLdPrThis
  loc_622AEC: VCallAd Control_ID_Grid1
  loc_622AEF: FStAdFunc var_98
  loc_622AF2: FLdPr var_98
  loc_622AF5: LateIdCallSt
  loc_622AFD: FFree1Ad var_98
  loc_622B00: LitVar_TRUE var_94
  loc_622B03: PopAdLdVar
  loc_622B04: FLdPrThis
  loc_622B05: VCallAd Control_ID_Grid1
  loc_622B08: FStAdFunc var_98
  loc_622B0B: FLdPr var_98
  loc_622B0E: LateIdSt
  loc_622B13: FFree1Ad var_98
  loc_622B16: LitVar_FALSE
  loc_622B1A: PopAdLdVar
  loc_622B1B: FLdPrThis
  loc_622B1C: VCallAd Control_ID_Grid1
  loc_622B1F: FStAdFunc var_98
  loc_622B22: FLdPr var_98
  loc_622B25: LateIdSt
  loc_622B2A: FFree1Ad var_98
  loc_622B2D: ExitProcHresult
End Sub

Private Function Proc_50_10_5DEBDC() '5DEBDC
  'Data Table: 41BC2C
  loc_5DEB90: LitVar_Missing var_A4
  loc_5DEB93: PopAdLdVar
  loc_5DEB94: LitVarI2 var_94, 1
  loc_5DEB99: PopAdLdVar
  loc_5DEB9A: ImpAdLdRf MemVar_74D874
  loc_5DEB9D: NewIfNullPr BrowseCli
  loc_5DEBA0: BrowseCli.Show from_stack_1, from_stack_2
  loc_5DEBA5: LitI2_Byte 0
  loc_5DEBA7: ImpAdLdRf MemVar_74D874
  loc_5DEBAA: NewIfNullPr BrowseCli
  loc_5DEBAD: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5DEBB2: ImpAdLdI2 MemVar_74C37E
  loc_5DEBB5: NotI4
  loc_5DEBB6: BranchF loc_5DEBDB
  loc_5DEBB9: ImpAdLdI2 MemVar_74C384
  loc_5DEBBC: CStrUI1
  loc_5DEBBE: FStStrNoPop var_A8
  loc_5DEBC1: FLdPrThis
  loc_5DEBC2: VCallAd Control_ID_Cancelar
  loc_5DEBC5: FStAdFunc var_AC
  loc_5DEBC8: FLdPr var_AC
  loc_5DEBCB: BrowseCli.TextBox.Text = from_stack_1
  loc_5DEBD0: FFree1Str var_A8
  loc_5DEBD3: FFree1Ad var_AC
  loc_5DEBD6: Call cmdConsultar_UnknownEvent_8()
  loc_5DEBDB: ExitProcHresult
End Function

Private Function Proc_50_11_65458C(arg_C) '65458C
  'Data Table: 41BC2C
  loc_6542B8: ZeroRetValVar
  loc_6542BA: OnErrorGoto loc_6544A0
  loc_6542BD: FMemLdI2 arg_C(0)
  loc_6542C2: LitI2_Byte 0
  loc_6542C4: EqI2
  loc_6542C5: BranchF loc_6542F7
  loc_6542C8: LitStr "Consumidor Final"
  loc_6542CB: FMemStStrCopy
  loc_6542D0: LitI2_Byte 1
  loc_6542D2: FMemStI2 arg_C(108)
  loc_6542D7: LitVarStr var_B4, vbNullString
  loc_6542DC: FMemStVarCopy arg_C(92)
  loc_6542E2: LitVarStr var_B4, vbNullString
  loc_6542E7: FMemStVarCopy arg_C(8)
  loc_6542ED: LitI2_Byte 0
  loc_6542EF: FMemStI2 arg_C(88)
  loc_6542F4: Branch loc_654475
  loc_6542F7: LitI4 1
  loc_6542FC: LitI4 1
  loc_654301: LitVarStr var_C4, "0000"
  loc_654306: FStVarCopyObj var_D4
  loc_654309: FLdRfVar var_D4
  loc_65430C: FMemLdRf Proc_6_0_5DBEC8()
  loc_654311: CVarRef
  loc_654316: FLdRfVar var_E4
  loc_654319: ImpAdCallFPR4  = Format(, )
  loc_65431E: FLdRfVar var_EA
  loc_654321: FLdRfVar var_A2
  loc_654324: FLdRfVar var_9C
  loc_654327: FLdVar var_E4
  loc_65432B: FLdRfVar var_E8
  loc_65432E: ImpAdLdRf MemVar_74C760
  loc_654331: NewIfNullPr Formx
  loc_654334: from_stack_1v = Formx.global_4589716Get()
  loc_654339: FLdPr var_E8
  loc_65433C: Call 0.Method_arg_DC ()
  loc_654341: FLdI2 var_EA
  loc_654344: NotI4
  loc_654345: FFree1Ad var_E8
  loc_654348: FFreeVar var_D4 = ""
  loc_65434F: BranchF loc_65438B
  loc_654352: FLdRfVar var_D4
  loc_654355: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65435A: FLdRfVar var_D4
  loc_65435D: CBoolVarNull
  loc_65435F: FFree1Var var_D4 = ""
  loc_654362: BranchF loc_654388
  loc_654365: ILdRf Me
  loc_654368: FStAdNoPop
  loc_65436C: ImpAdLdRf MemVar_7520D4
  loc_65436F: NewIfNullPr Global
  loc_654372: Global.Unload from_stack_1
  loc_654377: FFree1Ad var_E8
  loc_65437A: LitVar_FALSE
  loc_65437E: FStVar var_94
  loc_654382: ExitProcCbHresult
  loc_654388: Branch loc_6542F7
  loc_65438B: FLdI2 var_A2
  loc_65438E: BranchF loc_654397
  loc_654391: ExitProcCbHresult
  loc_654397: LitVarI2 var_D4, 25
  loc_65439C: LitI4 5
  loc_6543A1: FLdRfVar var_9C
  loc_6543A4: CVarRef
  loc_6543A9: FLdRfVar var_E4
  loc_6543AC: ImpAdCallFPR4  = Mid(, , )
  loc_6543B1: FLdRfVar var_E4
  loc_6543B4: CStrVarTmp
  loc_6543B5: FStStrNoPop var_F0
  loc_6543B8: FMemStStrCopy
  loc_6543BD: FFree1Str var_F0
  loc_6543C0: FFreeVar var_D4 = ""
  loc_6543C7: LitVarI2 var_D4, 13
  loc_6543CC: LitI4 &H55
  loc_6543D1: FLdRfVar var_9C
  loc_6543D4: CVarRef
  loc_6543D9: FLdRfVar var_E4
  loc_6543DC: ImpAdCallFPR4  = Mid(, , )
  loc_6543E1: FLdRfVar var_E4
  loc_6543E4: FMemStVar arg_C(92)
  loc_6543EA: FFreeVar var_D4 = ""
  loc_6543F1: LitVarI2 var_D4, 40
  loc_6543F6: LitI4 &H1E
  loc_6543FB: FLdRfVar var_9C
  loc_6543FE: CVarRef
  loc_654403: FLdRfVar var_E4
  loc_654406: ImpAdCallFPR4  = Mid(, , )
  loc_65440B: FLdRfVar var_E4
  loc_65440E: FMemStVar arg_C(8)
  loc_654414: FFreeVar var_D4 = ""
  loc_65441B: LitVarI2 var_D4, 1
  loc_654420: LitI4 &H63
  loc_654425: FLdRfVar var_9C
  loc_654428: CVarRef
  loc_65442D: FLdRfVar var_E4
  loc_654430: ImpAdCallFPR4  = Mid(, , )
  loc_654435: FLdRfVar var_E4
  loc_654438: FnCBoolVar
  loc_65443A: FMemStI2 arg_C(88)
  loc_65443F: FFreeVar var_D4 = "": var_E4 = ""
  loc_654448: LitVarI2 var_D4, 1
  loc_65444D: LitI4 &H62
  loc_654452: FLdRfVar var_9C
  loc_654455: CVarRef
  loc_65445A: FLdRfVar var_E4
  loc_65445D: ImpAdCallFPR4  = Mid(, , )
  loc_654462: FLdRfVar var_E4
  loc_654465: FnCIntVar
  loc_654467: FMemStI2 arg_C(108)
  loc_65446C: FFreeVar var_D4 = "": var_E4 = ""
  loc_654475: FMemLdI2 arg_C(108)
  loc_65447A: LitI2_Byte 4
  loc_65447C: GeI2
  loc_65447D: BranchF loc_65448B
  loc_654480: LitStr "FA"
  loc_654483: FMemStStrCopy
  loc_654488: Branch loc_654493
  loc_65448B: LitStr "FB"
  loc_65448E: FMemStStrCopy
  loc_654493: LitVar_TRUE var_B4
  loc_654496: FStVar var_94
  loc_65449A: ExitProcCbHresult
  loc_6544A0: LitVarStr var_B4, "Ha ocurrido un error inesperado al intentar buscar un cliente."
  loc_6544A5: LitI4 &HD
  loc_6544AA: FLdRfVar var_D4
  loc_6544AD: ImpAdCallFPR4  = Chr()
  loc_6544B2: FLdRfVar var_D4
  loc_6544B5: ConcatVar var_E4
  loc_6544B9: LitI4 &HD
  loc_6544BE: FLdRfVar var_100
  loc_6544C1: ImpAdCallFPR4  = Chr()
  loc_6544C6: FLdRfVar var_100
  loc_6544C9: ConcatVar var_110
  loc_6544CD: CStrVarTmp
  loc_6544CE: FStStr var_A0
  loc_6544D1: FFreeVar var_D4 = "": var_E4 = "": var_100 = ""
  loc_6544DC: ILdRf var_A0
  loc_6544DF: LitStr "             Código: "
  loc_6544E2: ConcatStr
  loc_6544E3: FStStrNoPop var_F0
  loc_6544E6: FLdRfVar var_114
  loc_6544E9: ImpAdCallI2 Err 'rtcErrObj
  loc_6544EE: FStAdFunc var_E8
  loc_6544F1: FLdPr var_E8
  loc_6544F4:  = Err.Number
  loc_6544F9: ILdRf var_114
  loc_6544FC: CStrI4
  loc_6544FE: FStStrNoPop var_118
  loc_654501: ConcatStr
  loc_654502: CVarStr var_E4
  loc_654505: LitI4 &HD
  loc_65450A: FLdRfVar var_D4
  loc_65450D: ImpAdCallFPR4  = Chr()
  loc_654512: FLdRfVar var_D4
  loc_654515: ConcatVar var_100
  loc_654519: CStrVarTmp
  loc_65451A: FStStr var_A0
  loc_65451D: FFreeStr var_F0 = ""
  loc_654524: FFree1Ad var_E8
  loc_654527: FFreeVar var_E4 = "": var_D4 = ""
  loc_654530: ILdRf var_A0
  loc_654533: LitStr "             Descripción: "
  loc_654536: ConcatStr
  loc_654537: CVarStr var_D4
  loc_65453A: FLdI2 var_A2
  loc_65453D: CVarBoolI2 var_B4
  loc_654541: ConcatVar var_E4
  loc_654545: CStrVarTmp
  loc_654546: FStStr var_A0
  loc_654549: FFreeVar var_D4 = "": var_B4 = ""
  loc_654552: LitVar_Missing var_100
  loc_654555: LitVar_Missing var_E4
  loc_654558: LitVarStr var_C4, "Error inesperado"
  loc_65455D: FStVarCopyObj var_D4
  loc_654560: FLdRfVar var_D4
  loc_654563: LitI4 &H10
  loc_654568: FLdRfVar var_A0
  loc_65456B: CVarRef
  loc_654570: ImpAdCallFPR4 MsgBox(, , , , )
  loc_654575: FFreeVar var_D4 = "": var_E4 = ""
  loc_65457E: ExitProcCbHresult
  loc_654584: ExitProcCbHresult
End Function
