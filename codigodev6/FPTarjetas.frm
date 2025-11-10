VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form FPTarjetas
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 4005
  ClientTop = 2445
  ClientWidth = 7350
  ClientHeight = 3090
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin Threed.SSPanel SSPanel1
    Left = 0
    Top = 0
    Width = 7335
    Height = 3075
    TabIndex = 10
    OleObjectBlob = "FPTarjetas.frx":0000
    Begin Threed.SSCommand SSCommand1
      Index = 0
      Left = 120
      Top = 540
      Width = 3495
      Height = 435
      TabIndex = 0
      OleObjectBlob = "FPTarjetas.frx":0079
    End
    Begin Threed.SSCommand SSCommand1
      Index = 1
      Left = 120
      Top = 1020
      Width = 3495
      Height = 435
      TabIndex = 1
      OleObjectBlob = "FPTarjetas.frx":00DF
    End
    Begin Threed.SSCommand SSCommand1
      Index = 2
      Left = 120
      Top = 1500
      Width = 3495
      Height = 435
      TabIndex = 2
      OleObjectBlob = "FPTarjetas.frx":0145
    End
    Begin Threed.SSCommand SSCommand1
      Index = 3
      Left = 120
      Top = 1980
      Width = 3495
      Height = 435
      TabIndex = 3
      OleObjectBlob = "FPTarjetas.frx":01AB
    End
    Begin Threed.SSCommand SSCommand1
      Index = 4
      Left = 120
      Top = 2460
      Width = 3495
      Height = 435
      TabIndex = 4
      OleObjectBlob = "FPTarjetas.frx":0211
    End
    Begin Threed.SSCommand SSCommand1
      Index = 5
      Left = 3720
      Top = 540
      Width = 3495
      Height = 435
      TabIndex = 5
      OleObjectBlob = "FPTarjetas.frx":0277
    End
    Begin Threed.SSCommand SSCommand1
      Index = 6
      Left = 3720
      Top = 1020
      Width = 3495
      Height = 435
      TabIndex = 6
      OleObjectBlob = "FPTarjetas.frx":02DD
    End
    Begin Threed.SSCommand SSCommand1
      Index = 7
      Left = 3720
      Top = 1500
      Width = 3495
      Height = 435
      TabIndex = 7
      OleObjectBlob = "FPTarjetas.frx":0343
    End
    Begin Threed.SSCommand SSCommand1
      Index = 8
      Left = 3720
      Top = 1980
      Width = 3495
      Height = 435
      TabIndex = 8
      OleObjectBlob = "FPTarjetas.frx":03A9
    End
    Begin Threed.SSCommand SSCommand1
      Index = 9
      Left = 3720
      Top = 2460
      Width = 3495
      Height = 435
      TabIndex = 9
      OleObjectBlob = "FPTarjetas.frx":040F
    End
    Begin VB.Label Label1
      Caption = "Tarjetas de Crédito"
      ForeColor = &H404040&
      Left = 1080
      Top = 120
      Width = 5295
      Height = 375
      TabIndex = 11
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
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
  End
End

Attribute VB_Name = "FPTarjetas"

Public bOK As Boolean


Private Function SSCommand1_UnknownEvent_0(arg_C) '5E153C
  'Data Table: 407684
  loc_5E14E4: LitVarI2 var_9C, 3
  loc_5E14E9: PopAdLdVar
  loc_5E14EA: FLdRfVar var_8C
  loc_5E14ED: ILdI2 arg_C
  loc_5E14F0: FLdPrThis
  loc_5E14F1: VCallAd Control_ID_SSCommand1
  loc_5E14F4: FStAdFunc var_88
  loc_5E14F7: FLdPr var_88
  loc_5E14FA: Set from_stack_2 = Me(from_stack_1)
  loc_5E14FF: FLdPr var_8C
  loc_5E1502: LateIdSt
  loc_5E1507: FFreeAd var_88 = ""
  loc_5E150E: LitVarI4
  loc_5E1516: PopAdLdVar
  loc_5E1517: FLdRfVar var_8C
  loc_5E151A: ILdI2 arg_C
  loc_5E151D: FLdPrThis
  loc_5E151E: VCallAd Control_ID_SSCommand1
  loc_5E1521: FStAdFunc var_88
  loc_5E1524: FLdPr var_88
  loc_5E1527: Set from_stack_2 = Me(from_stack_1)
  loc_5E152C: FLdPr var_8C
  loc_5E152F: LateIdSt
  loc_5E1534: FFreeAd var_88 = ""
  loc_5E153B: ExitProcHresult
End Function

Private Function SSCommand1_UnknownEvent_1(arg_C) '5E15CC
  'Data Table: 407684
  loc_5E1574: LitVarI2 var_9C, 0
  loc_5E1579: PopAdLdVar
  loc_5E157A: FLdRfVar var_8C
  loc_5E157D: ILdI2 arg_C
  loc_5E1580: FLdPrThis
  loc_5E1581: VCallAd Control_ID_SSCommand1
  loc_5E1584: FStAdFunc var_88
  loc_5E1587: FLdPr var_88
  loc_5E158A: Set from_stack_2 = Me(from_stack_1)
  loc_5E158F: FLdPr var_8C
  loc_5E1592: LateIdSt
  loc_5E1597: FFreeAd var_88 = ""
  loc_5E159E: LitVarI4
  loc_5E15A6: PopAdLdVar
  loc_5E15A7: FLdRfVar var_8C
  loc_5E15AA: ILdI2 arg_C
  loc_5E15AD: FLdPrThis
  loc_5E15AE: VCallAd Control_ID_SSCommand1
  loc_5E15B1: FStAdFunc var_88
  loc_5E15B4: FLdPr var_88
  loc_5E15B7: Set from_stack_2 = Me(from_stack_1)
  loc_5E15BC: FLdPr var_8C
  loc_5E15BF: LateIdSt
  loc_5E15C4: FFreeAd var_88 = ""
  loc_5E15CB: ExitProcHresult
End Function

Private Function SSCommand1_UnknownEvent_8(arg_C) '5DB0D0
  'Data Table: 407684
  loc_5DB094: FLdPr Me
  loc_5DB097: MemLdI2 bOK
  loc_5DB09A: NotI4
  loc_5DB09B: BranchF loc_5DB09F
  loc_5DB09E: ExitProcHresult
  loc_5DB09F: ILdI2 arg_C
  loc_5DB0A2: FLdPr Me
  loc_5DB0A5: MemLdUI1 global_54
  loc_5DB0A9: CI2UI1
  loc_5DB0AB: GeI2
  loc_5DB0AC: BranchF loc_5DB0B0
  loc_5DB0AF: ExitProcHresult
  loc_5DB0B0: ILdI2 arg_C
  loc_5DB0B3: LitI2_Byte 1
  loc_5DB0B5: AddI2
  loc_5DB0B6: ImpAdStI2 MemVar_74BEFC
  loc_5DB0B9: ILdRf Me
  loc_5DB0BC: FStAdNoPop
  loc_5DB0C0: ImpAdLdRf MemVar_7520D4
  loc_5DB0C3: NewIfNullPr Global
  loc_5DB0C6: Global.Unload from_stack_1
  loc_5DB0CB: FFree1Ad var_88
  loc_5DB0CE: ExitProcHresult
End Function

Private Sub Form_Load() '635CFC
  'Data Table: 407684
  loc_635B0C: LitI2_Byte 0
  loc_635B0E: FLdPr Me
  loc_635B11: MemStI2 bOK
  loc_635B14: LitI2_Byte 0
  loc_635B16: ImpAdStI2 MemVar_74BEFC
  loc_635B19: LitI2_Byte 0
  loc_635B1B: CUI1I2
  loc_635B1D: FLdPr Me
  loc_635B20: MemStUI1
  loc_635B24: LitI2_Byte 1
  loc_635B26: CUI1I2
  loc_635B28: FLdRfVar var_86
  loc_635B2B: LitI2_Byte &HA
  loc_635B2D: CUI1I2
  loc_635B2F: ForUI1 var_8A
  loc_635B35: FLdUI1
  loc_635B39: CI4UI1
  loc_635B3A: ImpAdLdRf MemVar_74A008
  loc_635B3D: Ary1LdRf
  loc_635B3E: CVarRef
  loc_635B43: FLdRfVar var_AC
  loc_635B46: ImpAdCallFPR4  = Trim()
  loc_635B4B: FLdRfVar var_AC
  loc_635B4E: LitVarStr var_BC, vbNullString
  loc_635B53: HardType
  loc_635B54: NeVarBool
  loc_635B56: FFree1Var var_AC = ""
  loc_635B59: BranchF loc_635C0D
  loc_635B5C: FLdUI1
  loc_635B60: CI2UI1
  loc_635B62: LitI2_Byte 1
  loc_635B64: SubI2
  loc_635B65: CVarI2 var_AC
  loc_635B68: FLdRfVar var_CC
  loc_635B6B: ImpAdCallFPR4  = Str()
  loc_635B70: FLdRfVar var_CC
  loc_635B73: LitVarStr var_BC, " - "
  loc_635B78: ConcatVar var_DC
  loc_635B7C: FLdUI1
  loc_635B80: CI4UI1
  loc_635B81: ImpAdLdRf MemVar_74A008
  loc_635B84: Ary1LdRf
  loc_635B85: CVarRef
  loc_635B8A: FLdRfVar var_FC
  loc_635B8D: ImpAdCallFPR4  = Trim()
  loc_635B92: FLdRfVar var_FC
  loc_635B95: ConcatVar var_10C
  loc_635B99: PopAdLdVar
  loc_635B9A: FLdRfVar var_114
  loc_635B9D: FLdUI1
  loc_635BA1: CI2UI1
  loc_635BA3: LitI2_Byte 1
  loc_635BA5: SubI2
  loc_635BA6: FLdPrThis
  loc_635BA7: VCallAd Control_ID_SSCommand1
  loc_635BAA: FStAdFunc var_110
  loc_635BAD: FLdPr var_110
  loc_635BB0: Set from_stack_2 = Me(from_stack_1)
  loc_635BB5: FLdPr var_114
  loc_635BB8: LateIdSt
  loc_635BBD: FFreeAd var_110 = ""
  loc_635BC4: FFreeVar var_AC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_635BD1: LitVar_TRUE var_9C
  loc_635BD4: PopAdLdVar
  loc_635BD5: FLdRfVar var_114
  loc_635BD8: FLdUI1
  loc_635BDC: CI2UI1
  loc_635BDE: LitI2_Byte 1
  loc_635BE0: SubI2
  loc_635BE1: FLdPrThis
  loc_635BE2: VCallAd Control_ID_SSCommand1
  loc_635BE5: FStAdFunc var_110
  loc_635BE8: FLdPr var_110
  loc_635BEB: Set from_stack_2 = Me(from_stack_1)
  loc_635BF0: FLdPr var_114
  loc_635BF3: LateIdSt
  loc_635BF8: FFreeAd var_110 = ""
  loc_635BFF: FLdUI1
  loc_635C03: FLdPr Me
  loc_635C06: MemStUI1
  loc_635C0A: Branch loc_635C3C
  loc_635C0D: LitVar_FALSE
  loc_635C11: PopAdLdVar
  loc_635C12: FLdRfVar var_114
  loc_635C15: FLdUI1
  loc_635C19: CI2UI1
  loc_635C1B: LitI2_Byte 1
  loc_635C1D: SubI2
  loc_635C1E: FLdPrThis
  loc_635C1F: VCallAd Control_ID_SSCommand1
  loc_635C22: FStAdFunc var_110
  loc_635C25: FLdPr var_110
  loc_635C28: Set from_stack_2 = Me(from_stack_1)
  loc_635C2D: FLdPr var_114
  loc_635C30: LateIdSt
  loc_635C35: FFreeAd var_110 = ""
  loc_635C3C: FLdRfVar var_86
  loc_635C3F: NextUI1
  loc_635C45: FLdRfVar var_118
  loc_635C48: ImpAdLdRf MemVar_74C760
  loc_635C4B: NewIfNullPr Formx
  loc_635C4E: from_stack_1v = Formx.sFlotasEXEGet()
  loc_635C53: ILdRf var_118
  loc_635C56: LitStr vbNullString
  loc_635C59: NeStr
  loc_635C5B: FLdRfVar var_11A
  loc_635C5E: ImpAdLdRf MemVar_74C760
  loc_635C61: NewIfNullPr Formx
  loc_635C64: from_stack_1v = Formx.nMedioPagoFlotaGet()
  loc_635C69: FLdI2 var_11A
  loc_635C6C: LitI2_Byte 0
  loc_635C6E: GtI2
  loc_635C6F: AndI4
  loc_635C70: FFree1Str var_118
  loc_635C73: BranchF loc_635CBA
  loc_635C76: LitVar_FALSE
  loc_635C7A: PopAdLdVar
  loc_635C7B: FLdRfVar var_114
  loc_635C7E: LitI2_Byte 0
  loc_635C80: FLdPrThis
  loc_635C81: VCallAd Control_ID_Text3
  loc_635C84: FStAdFunc var_110
  loc_635C87: FLdPr var_110
  loc_635C8A: Set from_stack_2 = Formx(from_stack_1)
  loc_635C8F: FLdPr var_114
  loc_635C92: LateIdSt
  loc_635C97: FFreeAd var_110 = ""
  loc_635C9E: FLdPr Me
  loc_635CA1: MemLdUI1 global_54
  loc_635CA5: CI2UI1
  loc_635CA7: LitI2_Byte 0
  loc_635CA9: GtI2
  loc_635CAA: BranchF loc_635CB7
  loc_635CAD: LitI2_Byte 1
  loc_635CAF: PopTmpLdAd2 var_11A
  loc_635CB2: from_stack_2v = SSCommand1_UnknownEvent_8(from_stack_1v)
  loc_635CB7: Branch loc_635CEB
  loc_635CBA: LitVar_TRUE var_9C
  loc_635CBD: PopAdLdVar
  loc_635CBE: FLdRfVar var_114
  loc_635CC1: LitI2_Byte 0
  loc_635CC3: FLdPrThis
  loc_635CC4: VCallAd Control_ID_SSCommand1
  loc_635CC7: FStAdFunc var_110
  loc_635CCA: FLdPr var_110
  loc_635CCD: Set from_stack_2 = Me(from_stack_1)
  loc_635CD2: FLdPr var_114
  loc_635CD5: LateIdSt
  loc_635CDA: FFreeAd var_110 = ""
  loc_635CE1: LitI2_Byte 0
  loc_635CE3: PopTmpLdAd2 var_11A
  loc_635CE6: from_stack_2v = SSCommand1_UnknownEvent_8(from_stack_1v)
  loc_635CEB: LitI2_Byte &HFF
  loc_635CED: FLdPr Me
  loc_635CF0: MemStI2 bOK
  loc_635CF3: ImpAdCallFPR4 DoEvents()
  loc_635CF8: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D7000
  'Data Table: 407684
  loc_5D6FD4: FLdRfVar var_86
  loc_5D6FD7: from_stack_1v = Proc_8_8_5FA1B4()
  loc_5D6FDC: FLdI2 var_86
  loc_5D6FDF: NotI4
  loc_5D6FE0: FLdPr Me
  loc_5D6FE3: MemLdI2 bOK
  loc_5D6FE6: AndI4
  loc_5D6FE7: BranchF loc_5D6FFF
  loc_5D6FEA: ILdRf Me
  loc_5D6FED: FStAdNoPop
  loc_5D6FF1: ImpAdLdRf MemVar_7520D4
  loc_5D6FF4: NewIfNullPr Global
  loc_5D6FF7: Global.Unload from_stack_1
  loc_5D6FFC: FFree1Ad var_8C
  loc_5D6FFF: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5E8240
  'Data Table: 407684
  loc_5E81C0: ILdI2 KeyCode
  loc_5E81C3: FStI2 var_86
  loc_5E81C6: FLdI2 var_86
  loc_5E81C9: LitI4 &H30
  loc_5E81CE: CI2I4
  loc_5E81CF: LitI4 &H39
  loc_5E81D4: CI2I4
  loc_5E81D5: BetweenI2
  loc_5E81D7: BranchF loc_5E81EB
  loc_5E81DA: ILdI2 KeyCode
  loc_5E81DD: LitI2_Byte &H30
  loc_5E81DF: SubI2
  loc_5E81E0: PopTmpLdAd2 var_88
  loc_5E81E3: from_stack_2v = SSCommand1_UnknownEvent_8(from_stack_1v)
  loc_5E81E8: Branch loc_5E823C
  loc_5E81EB: FLdI2 var_86
  loc_5E81EE: LitI4 &H60
  loc_5E81F3: CI2I4
  loc_5E81F4: LitI4 &H69
  loc_5E81F9: CI2I4
  loc_5E81FA: BetweenI2
  loc_5E81FC: BranchF loc_5E8210
  loc_5E81FF: ILdI2 KeyCode
  loc_5E8202: LitI2_Byte &H60
  loc_5E8204: SubI2
  loc_5E8205: PopTmpLdAd2 var_88
  loc_5E8208: from_stack_2v = SSCommand1_UnknownEvent_8(from_stack_1v)
  loc_5E820D: Branch loc_5E823C
  loc_5E8210: FLdI2 var_86
  loc_5E8213: LitI4 &H1B
  loc_5E8218: CI2I4
  loc_5E8219: EqI2
  loc_5E821A: BranchF loc_5E823C
  loc_5E821D: LitI2_Byte 0
  loc_5E821F: ImpAdStI2 MemVar_74BEFC
  loc_5E8222: LitI2_Byte &HFF
  loc_5E8224: ImpAdStI2 MemVar_74C37E
  loc_5E8227: ILdRf Me
  loc_5E822A: FStAdNoPop
  loc_5E822E: ImpAdLdRf MemVar_7520D4
  loc_5E8231: NewIfNullPr Global
  loc_5E8234: Global.Unload from_stack_1
  loc_5E8239: FFree1Ad var_8C
  loc_5E823C: ExitProcHresult
End Sub

Public Function bOKGet() '407930
  bOKGet = bOK
End Function

Public Sub bOKPut(Value) '40793F
  bOK = Value
End Sub

Private Function Proc_8_8_5FA1B4() '5FA1B4
  'Data Table: 407684
  loc_5FA0FC: LitI2_Byte 0
  loc_5FA0FE: FStI2 var_86
  loc_5FA101: FLdPr Me
  loc_5FA104: MemLdUI1 global_54
  loc_5FA108: CI2UI1
  loc_5FA10A: LitI2_Byte 0
  loc_5FA10C: EqI2
  loc_5FA10D: BranchF loc_5FA13F
  loc_5FA110: LitVar_Missing var_108
  loc_5FA113: LitVar_Missing var_E8
  loc_5FA116: LitVar_Missing var_C8
  loc_5FA119: LitI4 0
  loc_5FA11E: LitVarStr var_98, "No existen tarjetas definidas"
  loc_5FA123: FStVarCopyObj var_A8
  loc_5FA126: FLdRfVar var_A8
  loc_5FA129: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FA12E: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5FA139: ExitProcCbHresult
  loc_5FA13F: FLdPr Me
  loc_5FA142: MemLdUI1 global_54
  loc_5FA146: CI2UI1
  loc_5FA148: LitI2_Byte 1
  loc_5FA14A: EqI2
  loc_5FA14B: FLdRfVar var_110
  loc_5FA14E: LitI2_Byte 0
  loc_5FA150: FLdPrThis
  loc_5FA151: VCallAd Control_ID_SSCommand1
  loc_5FA154: FStAdFunc var_10C
  loc_5FA157: FLdPr var_10C
  loc_5FA15A: Set from_stack_2 = Me(from_stack_1)
  loc_5FA15F: FLdPr var_110
  loc_5FA162: LateIdLdVar var_A8 DispID_13 -32767
  loc_5FA169: CBoolVar
  loc_5FA16B: NotI4
  loc_5FA16C: AndI4
  loc_5FA16D: FFreeAd var_10C = ""
  loc_5FA174: FFree1Var var_A8 = ""
  loc_5FA177: BranchF loc_5FA1A9
  loc_5FA17A: LitVar_Missing var_108
  loc_5FA17D: LitVar_Missing var_E8
  loc_5FA180: LitVar_Missing var_C8
  loc_5FA183: LitI4 0
  loc_5FA188: LitVarStr var_98, "No existen tarjetas posibles a elegir"
  loc_5FA18D: FStVarCopyObj var_A8
  loc_5FA190: FLdRfVar var_A8
  loc_5FA193: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FA198: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5FA1A3: ExitProcCbHresult
  loc_5FA1A9: LitI2_Byte &HFF
  loc_5FA1AB: FStI2 var_86
  loc_5FA1AE: ExitProcCbHresult
End Function
